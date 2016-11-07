unit Logistics;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, dm, msg, UGlobal, DBGridToExcel,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, Data.DB,
  Data.Win.ADODB, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ComCtrls, RzStatus,
  RzPanel, Vcl.Mask, DBCtrlsEh, DBLookupEh;

type
  TLogisticsFrm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    DS: TDataSource;
    ADOQry: TADOQuery;
    ADOQrySerch: TADOQuery;
    Panel3: TPanel;
    edt_Depart: TEdit;
    edt_Group: TEdit;
    edt_Name: TEdit;
    edt_WorkNo: TEdit;
    edt_CardNo: TEdit;
    cmbHouse: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edt_Sex: TEdit;
    Label7: TLabel;
    Label13: TLabel;
    dtpk_EntryWrkDay: TDateTimePicker;
    Label8: TLabel;
    edt_Nation: TEdit;
    ckb_Mng: TCheckBox;
    RzStatusBar1: TRzStatusBar;
    RzPs: TRzProgressStatus;
    btnInsert: TButton;
    btnModify: TButton;
    btnDelete: TButton;
    btnCopy: TButton;
    pnl_Ok_C: TPanel;
    btnOK: TButton;
    btnCancel: TButton;
    ckb_hint: TCheckBox;
    Button2: TButton;
    SD1: TSaveDialog;
    CheckBox1: TCheckBox;
    edt_Adress: TEdit;
    Label9: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure btnModifyClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure ckb_hintClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
    CurrentPrsn: string;
    function SelectLogisticsData(Columu, LocateStr: string;
      IsFiltered: Boolean): Boolean;
    function SelectHouseList: Boolean;
    procedure SetProgress(const Position: Integer);
  public
    { Public declarations }
  end;

var
  LogisticsFrm: TLogisticsFrm;

implementation

{$R *.dfm}

procedure TLogisticsFrm.btnCancelClick(Sender: TObject);
begin
  Panel2.Enabled := True;
  Panel3.Enabled := False;
  pnl_Ok_C.Visible := False;

  SelectLogisticsData('per_code', CurrentPrsn, False);
end;

procedure TLogisticsFrm.btnModifyClick(Sender: TObject);
begin
  Panel2.Enabled := False;
  Panel3.Enabled := True;
  pnl_Ok_C.Visible := True;

  btnOK.Tag := 3;
end;

procedure TLogisticsFrm.btnOKClick(Sender: TObject);
var
  sSql, houseNo, IsMng, CurrentAddress: String;
begin
  houseNo := Trim(cmbHouse.Text);
  IsMng := BoolToStr(ckb_Mng.Checked);
  CurrentAddress := Trim(edt_Adress.Text);

  try
    case btnOK.Tag of
      1:
        begin
          //
        end;
      2:
        begin
          //
        end;
      3:
        begin
          with ADOQry do
          begin
            Close;
            SQL.Clear;
            sSql := Format
              ('update person set per_house=''%s'', per_cdre=''%s'', per_hmmag=%s where per_code=''%s'' and per_perdid=''%s'' ',
              [houseNo, CurrentAddress, IsMng, CurrentPrsn, user.WorkPeriod]);
            SQL.Add(sSql);
            ExecSQL;
          end;
        end;
    end;
  except

  end;
  btnCancel.Click;
end;

procedure TLogisticsFrm.Button2Click(Sender: TObject);
begin
  DBGridToExcel_A(DBGridEh1, SD1.FileName, Self.Caption + '(' + user.WorkPeriod
    + ')', SetProgress);
end;

procedure TLogisticsFrm.CheckBox1Click(Sender: TObject);
begin
  ADOQry.Filter := '';
  ADOQry.Filtered := False;
  if CheckBox1.Checked then
  begin
    ckb_hint.Checked := False;
    ADOQry.Filter := 'per_poff <> '''' ';
    ADOQry.Filtered := True;
  end;
end;

procedure TLogisticsFrm.ckb_hintClick(Sender: TObject);
begin
  ADOQry.Filter := '';
  ADOQry.Filtered := False;
  if ckb_hint.Checked then
  begin
    CheckBox1.Checked := False;
    ADOQry.Filter := 'per_house <> '''' ';
    ADOQry.Filtered := True;
  end;
end;

procedure TLogisticsFrm.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if gdSelected in State then
    DBGridEh1.Canvas.Brush.Color := clMoneyGreen;

  if Trim(DBGridEh1.Fields[8].Text) = '' then
    (Sender as TDBGridEh).Canvas.Font.Color := clRed;

  (Sender as TDBGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TLogisticsFrm.DSDataChange(Sender: TObject; Field: TField);
begin
  if ADOQry.Active then
    try
      with ADOQry do
      begin
        edt_Depart.Text := Trim(FieldByName('Dept_Name').AsString);
        edt_Group.Text := Trim(FieldByName('Grou_Name').AsString);
        edt_Name.Text := Trim(FieldByName('per_name').AsString);
        edt_WorkNo.Text := Trim(FieldByName('per_code').AsString);
        edt_CardNo.Text := Trim(FieldByName('per_cardcd').AsString);
        edt_Nation.Text := Trim(FieldByName('Nat_Priv').AsString);
        edt_Sex.Text := Trim(FieldByName('per_sex').AsString);
        ckb_Mng.Checked := FieldByName('per_hmmag').AsBoolean;
        cmbHouse.Text := FieldByName('per_house').AsString;
        dtpk_EntryWrkDay.DateTime := FieldByName('per_indt').AsDateTime;
        edt_Adress.Text := FieldByName('per_cdre').AsString;

        CurrentPrsn := Trim(FieldByName('per_code').AsString);
      end;
    except
    end;
end;

procedure TLogisticsFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TLogisticsFrm.FormCreate(Sender: TObject);
begin
  if DMfrm.DoDBConnect then
  begin
    ADOQry.Connection := DMfrm.ADOCon;
    ADOQrySerch.Connection := DMfrm.ADOCon;
    SelectLogisticsData('', '', False);
    SelectHouseList;
  end;
end;

function TLogisticsFrm.SelectHouseList: Boolean;
begin
  Result := True;
  try
    with ADOQrySerch do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select hou_no, hou_name, hou_sex from house order by hou_no');
      Open;
      First;

      while not eof do
      begin
        cmbHouse.Items.Add(Trim(FieldByName('hou_no').AsString));
        Next;
      end;
    end;
  except
    Result := False;
  end;
end;

function TLogisticsFrm.SelectLogisticsData(Columu, LocateStr: string;
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
      sSql := Format('Select Person.*,Dept_Name,Grou_Name,Nat_Priv,Fami_Name,' +
        'Post_Name,Post_Level,Pl_Name,Degr_Name,hou_tel From Person ' +
        ' Left joIn Depart  On Per_Dept= Dept_No Left joIn WkGrou  On Per_Dept  = Grou_Dept And Per_Group=Grou_No '
        + 'Left joIn Family  On Per_Family= Fami_No Left joIn Nation  On Per_Nati  = Nat_No  Left joIn Degree '
        + 'On Per_Degree= Degr_Id Left joIn Postion On Per_Post  = Post_No Left joIn Postlve  On Per_Post  = Pl_PostNo And Per_Plevel=Pl_No '
        + 'Left joIn House   On Per_House = Hou_No Where Per_Perdid=''%s''  And Depart.Hide<1 Order By Per_Fact,Per_Dept,Per_Group,Per_Code',
        [user.WorkPeriod]);
      SQL.Add(sSql);
      Open;
      if (LocateStr = 'First') or (LocateStr = '') then
        First
      else if LocateStr = 'Last' then
        Last
      else
        Locate(Columu, LocateStr, []);

      DS.Enabled := True;
      DS.OnDataChange(nil, nil);
    end;
  except
    Result := False;
  end;
end;

procedure TLogisticsFrm.SetProgress(const Position: Integer);
begin
  RzPs.percent := Position;
end;

end.
