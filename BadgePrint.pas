unit BadgePrint;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, UGlobal, Dm,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, Vcl.StdCtrls, frxDBSet,
  Data.DB, Data.Win.ADODB, frxOLE, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh, EhLibVCL;

type
  TBadgePrintFrm = class(TForm)
    btnPrint: TButton;
    frxReport1: TfrxReport;
    ADOQry: TADOQuery;
    frxDBDataset1: TfrxDBDataset;
    frxOLEObject1: TfrxOLEObject;
    DBGridEh1: TDBGridEh;
    DS: TDataSource;
    edt_name: TEdit;
    Label1: TLabel;
    cmbDepart: TComboBox;
    Label2: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    ListBox: TListBox;
    btnSelected: TButton;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPrintClick(Sender: TObject);
    procedure btnSelectedClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    procedure intDprt;
  public
    { Public declarations }
    function SelectHRData(Columu, LocateStr: string;
      IsFiltered: Boolean): Boolean;

  end;

var
  BadgePrintFrm: TBadgePrintFrm;

implementation

{$R *.dfm}

procedure TBadgePrintFrm.btnPrintClick(Sender: TObject);
begin
  frxReport1.LoadFromFile(AppPath + '\rpt\z.fr3');
  if frxReport1.PrepareReport then
    frxReport1.ShowPreparedReport;
end;

procedure TBadgePrintFrm.Button1Click(Sender: TObject);
begin
  if ADOQry.Active then
  begin
    ADOQry.Filter := '';
    ADOQry.Filtered := False;
  end;
end;

procedure TBadgePrintFrm.Button2Click(Sender: TObject);
var
  tmpFilter: String;
begin
  tmpFilter := '';
  if cmbDepart.Text <> '' then
    tmpFilter := Format('Dept_Name=''%s'' ', [Trim(cmbDepart.Text)]);

  if (edt_name.Text <> '') and (tmpFilter = '') then
    tmpFilter := Format('per_name=''%s'' ', [Trim(cmbDepart.Text)]);

  if (edt_name.Text <> '') and (tmpFilter <> '') then
  begin
    tmpFilter := tmpFilter + ' And ' + Format('per_name=''%s'' ',
      [Trim(edt_name.Text)]);
  end;

  if tmpFilter <> '' then
  begin
    ADOQry.Filter := tmpFilter;
    ADOQry.Filtered := True;
  end;
end;

procedure TBadgePrintFrm.Button3Click(Sender: TObject);
var
  lsbxStr: String;
  I: Integer;
begin
  btnPrint.Enabled := False;
  lsbxStr := '';
  lsbxStr := Trim(ADOQry.FieldByName('per_code').AsString);
  lsbxStr := lsbxStr + ' | ' + Trim(ADOQry.FieldByName('per_name').AsString);
  lsbxStr := lsbxStr + ' | ' + Trim(ADOQry.FieldByName('Dept_Name').AsString);

  for I := 0 to ListBox.Items.Count - 1 do
  begin
    if ListBox.Items[I] = lsbxStr then
      Exit;
  end;

  ListBox.Items.Add(lsbxStr);
end;

procedure TBadgePrintFrm.Button4Click(Sender: TObject);
var
  lsbxStr: String;
begin
  btnPrint.Enabled := False;
  with ADOQry do
  begin
    First;

    while not eof do
    begin
      lsbxStr := '';
      lsbxStr := Trim(ADOQry.FieldByName('per_code').AsString);
      lsbxStr := lsbxStr + ' | ' + Trim(ADOQry.FieldByName('per_name')
        .AsString);
      lsbxStr := lsbxStr + ' | ' + Trim(ADOQry.FieldByName('Dept_Name')
        .AsString);
      ListBox.Items.Add(lsbxStr);
      Next;
    end;
  end;
end;

procedure TBadgePrintFrm.Button5Click(Sender: TObject);
begin
  ListBox.DeleteSelected;
  btnPrint.Enabled := False;
end;

procedure TBadgePrintFrm.Button6Click(Sender: TObject);
begin
  ListBox.Items.Clear;
  btnPrint.Enabled := False;
end;

procedure TBadgePrintFrm.btnSelectedClick(Sender: TObject);
var
  str: WideString;
  tmpCode: String;
  I: Integer;
begin
  if ListBox.Items.Count = 0 then
    Exit;

  str := Format('per_code =''%s''', [Copy(ListBox.Items[0], 1, 7)]);
  for I := 1 to ListBox.Items.Count - 1 do
  begin
    if ListBox.Items[I] <> '' then
      str := str + ' or ' + Format('per_code =''%s''',
        [Copy(ListBox.Items[I], 1, 7)])
    else
      Break;
  end;

  if ADOQry.Active then
  begin
    ADOQry.Filter := str;
    ADOQry.Filtered := True;
  end;
  btnPrint.Enabled := True;
end;

procedure TBadgePrintFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TBadgePrintFrm.FormCreate(Sender: TObject);
begin
  if DMfrm.DoDBConnect then
  begin
    ADOQry.Connection := DMfrm.ADOCon;
    intDprt;
    SelectHRData('', '', False);
  end;
end;

procedure TBadgePrintFrm.intDprt;
var
  sSql, tmpName: String;
begin
  with ADOQry do
  begin
    Close;
    SQL.Clear; // ≤ø√≈√˚
    sSql := 'Select dept_name From Depart Where Depart.Hide<1  Order By Dept_Fact,Dept_no';
    SQL.Add(sSql);
    Open;
    First;
    while not eof do
    begin
      tmpName := Trim(FieldByName('dept_name').AsString);
      cmbDepart.Items.Add(tmpName);
      next;
    end;
  end;
end;

function TBadgePrintFrm.SelectHRData(Columu, LocateStr: string;
  IsFiltered: Boolean): Boolean;
var
  sSql: String;
begin
  Result := True;
  try
    with ADOQry do
    begin
      Close;
      Filtered := IsFiltered;
      SQL.Clear;
      sSql := Format
        ('Select per_dept, per_code, per_cardcd, per_name , Dept_Name, Post_Name , per_indt From Person'
        + ' Left joIn Depart  On Per_Dept  = Dept_No  Left joIn Postion On Per_Post  = Post_No '
        + ' Where Per_Perdid=''%s''  And Depart.Hide<1 Order By Per_Fact,Per_Dept,Per_Group,Per_Code',
        [User.WorkPeriod]);

      SQL.Add(sSql);
      Open;

      if (LocateStr = 'First') or (LocateStr = '') then
        First
      else if LocateStr = 'Last' then
        Last
      else
        Locate(Columu, LocateStr, []);
    end;
  except
    Result := False;
  end;
end;

end.
