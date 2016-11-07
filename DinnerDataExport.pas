unit DinnerDataExport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, UGlobal, Dm, msg, System.StrUtils,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Samples.Gauges, Vcl.StdCtrls,
  Data.DB, Data.Win.ADODB;

type
  TDinnerDataExportFrm = class(TForm)
    Label1: TLabel;
    OpDlg: TOpenDialog;
    btnExport: TButton;
    btnSelectFile: TButton;
    Gauge1: TGauge;
    ListBox1: TListBox;
    Label2: TLabel;
    ADOQryInsert: TADOQuery;
    ADOQrySouData: TADOQuery;
    ADOQryBcard: TADOQuery;
    Label3: TLabel;
    Label4: TLabel;
    procedure btnSelectFileClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    procedure RemoveDuplicates(const stringList: TStringList);
    procedure ChangeDataFrmt(const stringList: TStringList);
  public
    { Public declarations }
  end;

var
  DinnerDataExportFrm: TDinnerDataExportFrm;

implementation

{$R *.dfm}

procedure TDinnerDataExportFrm.btnExportClick(Sender: TObject);
var
  tmpFile, txtFile: TStringList;
  i, j: integer;
  McID, DateTimeStr, UserCardID, ExpensedPeriod, UserNo: string;
  dtYear, dtMonth, dtDay, dtHours, dtMinute, dtSecond: string;
  sSql, SearchPeriod: string;
begin
  SearchPeriod := '';
  try
    Label1.Caption := '正在准备数据请稍后.....';
    tmpFile := TStringList.Create;
    txtFile := TStringList.Create;
    try
      for i := 0 to ListBox1.Items.Count - 1 do
      begin
        txtFile.LoadFromFile(ListBox1.Items[i]);
        tmpFile.AddStrings(txtFile);
      end;

      //
      ChangeDataFrmt(tmpFile);
      RemoveDuplicates(tmpFile);

      with ADOQryInsert do //
      begin
        Close;
        SQL.Clear;
        SQL.Text :=
          'insert into fsource (sou_perdid, sou_number, sou_cardcd, sou_date, sou_machid)'
          + 'values(:perdid, :userNo, :userCardID, :DateStr, :McNO)';
        Prepared;
      end;

      Label1.Caption := '正在写入数据请稍后.....';
      for j := 0 to tmpFile.Count - 1 do
      begin
        Application.ProcessMessages;
        if length(Trim(tmpFile.Strings[j])) <> 32 then
          Continue;

        ExpensedPeriod := Copy(tmpFile.Strings[j], 1, 6);

        McID := Copy(tmpFile.Strings[j], 7, 2); // [sou_machid]
        dtYear := Copy(tmpFile.Strings[j], 9, 4);
        dtMonth := Copy(tmpFile.Strings[j], 13, 2);
        dtDay := Copy(tmpFile.Strings[j], 15, 2);
        dtHours := Copy(tmpFile.Strings[j], 17, 2);
        dtMinute := Copy(tmpFile.Strings[j], 19, 2);
        dtSecond := Copy(tmpFile.Strings[j], 21, 2);

        DateTimeStr := dtYear + '-' + dtMonth + '-' + dtDay + ' ' + dtHours +
          ':' + dtMinute + ':' + dtSecond;

        UserCardID := RightStr(Trim(tmpFile.Strings[j]), 10); // [sou_cardcd]

        if ExpensedPeriod <> SearchPeriod then // 准备已入库数据
        begin
          with ADOQrySouData do
          begin
            Close;
            SQL.Clear; //
            SQL.Add(Format
              ('Select sou_cardcd, sou_date, sou_machid from  fsource where sou_perdid =''%s'' ',
              [ExpensedPeriod]));
            Open;
            First;
          end;

          with ADOQryBcard do
          begin
            Close;
            SQL.Clear;
            SQL.Add(Format
              ('Select  bc_number, bc_newcard, bc_trxdt from bcard where bc_perdid=''%s''  order by  bc_newcard, bc_trxdt',
              [ExpensedPeriod]));
            Open;
            First;
          end;
        end;

        SearchPeriod := ExpensedPeriod;

        if ADOQrySouData.Locate('sou_cardcd;sou_date;sou_machid',
          VarArrayOf([UserCardID, StrToDateTime(DateTimeStr), McID]), []) then
        begin
          Label1.Caption := '重复数据，略过~';
          Continue;
        end;

        if ADOQryBcard.Locate('bc_newcard', UserCardID, []) then
          UserNo := ADOQryBcard.FieldByName('bc_number').AsString
        else
          UserNo := '';

        with ADOQryInsert do
        begin
          Parameters.ParamByName('perdid').Value := ExpensedPeriod;
          Parameters.ParamByName('userNo').Value := UserNo;
          Parameters.ParamByName('userCardID').Value := UserCardID;
          Parameters.ParamByName('DateStr').Value := DateTimeStr;
          Parameters.ParamByName('McNO').Value := McID;
          ExecSQL;
        end;

        Gauge1.Progress := Round((j + 1) / tmpFile.Count * 100);
      end;

    except
    end;
    Label1.Caption := '数据导入完毕！';
  finally
    txtFile.Free;
    tmpFile.Free;
    Gauge1.Progress := 0;
  end;
end;

procedure TDinnerDataExportFrm.btnSelectFileClick(Sender: TObject);
begin
  ListBox1.Items.Clear;
  if OpDlg.Execute then
  begin
    ListBox1.Items.Assign(OpDlg.Files);
    btnExport.Enabled := True;
  end;
end;

procedure TDinnerDataExportFrm.ChangeDataFrmt(const stringList: TStringList);
var
  Buffer: TStringList;
  cnt: integer;
  EventYear, EventMonth, EventDay: string;
  EventYearAndMonth: TDateTime;
begin
  Buffer := TStringList.Create;
  try
    for cnt := 0 to stringList.Count - 1 do
    begin
      if length(stringList[cnt]) <> 26 then
        Continue;

      EventYear := Copy(stringList[cnt], 3, 4);
      EventMonth := Copy(stringList[cnt], 7, 2);
      EventDay := Copy(stringList[cnt], 9, 2);
      EventYearAndMonth := StrToDate(EventYear + '-' + EventMonth + '-' +
        EventDay);

      if StrToInt(EventDay) > 25 then
        EventYearAndMonth := IncMonth(EventYearAndMonth, 1);

      Buffer.Add(FormatDateTime('YYYYMM', EventYearAndMonth) + stringList[cnt]);
    end;
    stringList.Assign(Buffer);
  finally
    FreeandNil(Buffer);
  end;
end;

procedure TDinnerDataExportFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TDinnerDataExportFrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  ADOQryInsert.Close;
  ADOQrySouData.Close;
  ADOQryBcard.Close;
end;

procedure TDinnerDataExportFrm.FormCreate(Sender: TObject);
begin
  if Dm.DMfrm.DoDBConnect then
  begin
    ADOQryInsert.Connection := DMfrm.ADOCon;
    ADOQrySouData.Connection := DMfrm.ADOCon;
    ADOQryBcard.Connection := DMfrm.ADOCon;
    Label3.Caption := User.WorkPeriod;
  end;
end;

procedure TDinnerDataExportFrm.RemoveDuplicates(const stringList: TStringList);
var
  Buffer: TStringList;
  cnt: integer;
begin
  stringList.Sort;
  Buffer := TStringList.Create;
  try
    Buffer.Sorted := True;
    Buffer.Duplicates := dupIgnore;
    Buffer.BeginUpdate;
    for cnt := 0 to stringList.Count - 1 do
      Buffer.Add(stringList[cnt]);
    Buffer.EndUpdate;
    stringList.Assign(Buffer);
  finally
    FreeandNil(Buffer);
  end;
end;

end.
