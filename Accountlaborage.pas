unit Accountlaborage;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, msg, UGlobal, DM, DBGridEhImpExp,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel, DBGridEhGrouping,
  ToolCtrlsEh, DBGridToExcel, Data.DB,
  DBGridEhToolCtrls, DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls,
  Data.Win.ADODB, frxClass, frxDBSet, frxOLE, RzStatus, EhLibVCL;

type
  TAccountlaborageFrm = class(TForm)
    RzStatusBar1: TRzStatusBar;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    btnModify: TButton;
    btnDelete: TButton;
    btnCopy: TButton;
    btnInsert: TButton;
    Panel3: TPanel;
    edt_lastPay: TEdit;
    edt_lastWEpay: TEdit;
    edt_lasthousePay: TEdit;
    edt_lastdinnerPay: TEdit;
    edt_lastYBpay: TEdit;
    edt_lastHZpay: TEdit;
    edt_CurrentPay: TEdit;
    edt_CurrentWEpay: TEdit;
    edt_CurrenthousePay: TEdit;
    edt_CurrentdinnerPay: TEdit;
    edt_CurrentYBpay: TEdit;
    edt_CurrentHZpay: TEdit;
    edt_WkCrdRepay: TEdit;
    edt_othrPay: TEdit;
    edt_CutLoan: TEdit;
    edt_WYCutpay: TEdit;
    edt_Tax: TEdit;
    edt_CHCutPay: TEdit;
    edt_OthrCutPay: TEdit;
    edt_fine: TEdit;
    edt_THPay: TEdit;
    Label5: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DS: TDataSource;
    ADOQry: TADOQuery;
    lblCount: TLabel;
    ckb_hint: TCheckBox;
    pnl_Ok_C: TPanel;
    btnOK: TButton;
    btnCancel: TButton;
    ADOQrySerch: TADOQuery;
    frDS: TfrxDBDataset;
    butRpt: TButton;
    frxRprt: TfrxReport;
    RzStatusPane1: TRzStatusPane;
    RzPs: TRzProgressStatus;
    Button2: TButton;
    SD1: TSaveDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure ckb_hintClick(Sender: TObject);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure btnOKClick(Sender: TObject);
    procedure btnModifyClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure butRptClick(Sender: TObject);
    function frxRprtUserFunction(const MethodName: string;
      var Params: Variant): Variant;
    procedure frxRprtGetValue(const VarName: string; var Value: Variant);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    FBrkfstPrice: Double;
    FLunchPrice: Double;
    FDinnerPrice: Double;
    FSupperPrice: Double;
    FCurrentSelectPrs: String;
    procedure CleanPrintFlag;
    procedure SetProgress(const Position: Integer);
    function SelectOutPrsCalcData(Columu: string; LocateStr: Variant;
      IsFiltered: Boolean): Boolean;
    function InsertOutPrsAndDinnerData: Boolean;

  public
    { Public declarations }
  end;

var
  AccountlaborageFrm: TAccountlaborageFrm;

implementation

{$R *.dfm}

procedure TAccountlaborageFrm.btnCancelClick(Sender: TObject);
begin
  pnl_Ok_C.Visible := False;
  DBGridEh1.Enabled := True;

  SelectOutPrsCalcData('', '', False);
end;

procedure TAccountlaborageFrm.btnModifyClick(Sender: TObject);
begin
  Panel3.Enabled := True;
  DBGridEh1.Enabled := False;
  pnl_Ok_C.Visible := True;

  btnOK.Tag := 3;
end;

procedure TAccountlaborageFrm.btnOKClick(Sender: TObject);
var
  sSql: String;
  lastPay, lastWEpay, lasthousePay, lastdinnerPay, lastYBpay, lastHZpay,
    CurrentPay, CurrentWEpay, CurrenthousePay, CurrentdinnerPay, CurrentYBpay,
    CurrentHZpay, WkCrdRepay, othrPay, CutLoan, WYCutpay, Tax, CHCutPay,
    OthrCutPay, fine: Double;
begin
  lastPay := StrToFloat(Trim(edt_lastPay.Text));
  lastWEpay := StrToFloat(Trim(edt_lastWEpay.Text));
  lasthousePay := StrToFloat(Trim(edt_lasthousePay.Text));
  lastdinnerPay := StrToFloat(Trim(edt_lastdinnerPay.Text));
  lastYBpay := StrToFloat(Trim(edt_lastYBpay.Text));
  lastHZpay := StrToFloat(Trim(edt_lastHZpay.Text));
  CurrentPay := StrToFloat(Trim(edt_CurrentPay.Text));
  CurrentWEpay := StrToFloat(Trim(edt_CurrentWEpay.Text));
  CurrenthousePay := StrToFloat(Trim(edt_CurrenthousePay.Text));
  CurrentdinnerPay := StrToFloat(Trim(edt_CurrentdinnerPay.Text));
  CurrentYBpay := StrToFloat(Trim(edt_CurrentYBpay.Text));
  CurrentHZpay := StrToFloat(Trim(edt_CurrentHZpay.Text));
  WkCrdRepay := StrToFloat(Trim(edt_WkCrdRepay.Text));
  othrPay := StrToFloat(Trim(edt_othrPay.Text));
  CutLoan := StrToFloat(Trim(edt_CutLoan.Text));
  WYCutpay := StrToFloat(Trim(edt_WYCutpay.Text));
  Tax := StrToFloat(Trim(edt_Tax.Text));
  CHCutPay := StrToFloat(Trim(edt_CHCutPay.Text));
  OthrCutPay := StrToFloat(Trim(edt_OthrCutPay.Text));
  fine := StrToFloat(Trim(edt_fine.Text));

  with ADOQry do
  begin
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
          Close;
          SQL.Clear;
          sSql := Format
            ('update OutCalc set Oc_Bs01=%f,Oc_Bs02=%f,Oc_Bs03=%f,Oc_Bs04=%f,Oc_Bs05=%f ,Oc_Bs06=%f,'
            + 'Oc_Bs07=%f,Oc_Bs08=%f ,Oc_Bs09=%f ,Oc_Bs10=%f,Oc_Bs11=%f ,Oc_Bs12=%f,Oc_Bs13=%f, '
            + 'Oc_Bs14=%f,Oc_As01=%f,Oc_As03=%f,Oc_As04=%f,Oc_As05=%f,Oc_As06=%f,Oc_As07=%f  where  '
            + ' Oc_Perdid =''%s'' and Oc_Number=''%s'' ',
            [CurrentPay, CutLoan, CurrentWEpay, CurrenthousePay,
            CurrentdinnerPay, CurrentYBpay, CurrentHZpay, WYCutpay, Tax,
            CHCutPay, OthrCutPay, WkCrdRepay, fine, othrPay, lastPay, lastWEpay,
            lasthousePay, lastdinnerPay, lastYBpay, lastHZpay, User.WorkPeriod,
            FCurrentSelectPrs]);
          SQL.Add(sSql);
          ExecSQL;

          SelectOutPrsCalcData('Oc_Number', FCurrentSelectPrs, False);
        end;
    end;
  end;

  btnCancel.Click;
end;

procedure TAccountlaborageFrm.frxRprtGetValue(const VarName: string;
  var Value: Variant);
var
  theMonth, lastMonth: Integer;
begin
  if not TryStrToInt(Copy(User.WorkPeriod, 5, 2), theMonth) then
    Exit;

  if theMonth = 1 then
    lastMonth := 12
  else
    lastMonth := theMonth - 1;

  if VarName = 'm2' then
    Value := Copy(User.WorkPeriod, 5, 2) + '月';

  if VarName = 'm1' then
    Value := Format('%.2d', [lastMonth]) + '月';

end;

procedure TAccountlaborageFrm.FormCreate(Sender: TObject);
begin
  if DMfrm.DoDBConnect then
  begin
    ADOQry.Connection := DMfrm.ADOCon;
    ADOQrySerch.Connection := DMfrm.ADOCon;

    if InsertOutPrsAndDinnerData then
      SelectOutPrsCalcData('', '', False);
  end;

  frxRprt.AddFunction('function UpperMoney(small: Double):String;',
    'Myfunc', '');
end;

function TAccountlaborageFrm.frxRprtUserFunction(const MethodName: string;
  var Params: Variant): Variant;
begin
  if CompareText(MethodName, 'UpperMoney') = 0 then
    Result := UpperMoney(Params[0]);
end;

procedure TAccountlaborageFrm.butRptClick(Sender: TObject);
var
  tmpFilter: String;
begin
  tmpFilter := ADOQry.Filter;

  if Trim(tmpFilter) <> '' then
  begin
    ADOQry.Filter := tmpFilter + ' and Oc_Print=1'
  end
  else
    ADOQry.Filter := ' Oc_Print=1 ';

  ADOQry.Filtered := True;

  frxRprt.LoadFromFile(AppPath + '\rpt\OutCalc.fr3');
  if frxRprt.PrepareReport then
  begin
    frxRprt.ShowPreparedReport;

    CleanPrintFlag;
    ADOQry.Filter := tmpFilter;
    ADOQry.Filtered := True;
    SelectOutPrsCalcData('Oc_Number', FCurrentSelectPrs, True);
  end;
end;

procedure TAccountlaborageFrm.Button2Click(Sender: TObject);
begin
  DBGridToExcel_A(DBGridEh1, SD1.FileName, Self.Caption, SetProgress);
end;

procedure TAccountlaborageFrm.ckb_hintClick(Sender: TObject);
begin
  ADOQry.Filter := '';
  ADOQry.Filtered := False;
  if ckb_hint.Checked then
  begin
    ADOQry.Filter := 'Oc_Pass=0 ';
    ADOQry.Filtered := True;
  end;
end;

procedure TAccountlaborageFrm.CleanPrintFlag;
var
  sSql: String;
begin
  with ADOQrySerch do
  begin
    Close;
    SQL.Clear;
    sSql := Format('Update OutCalc set Oc_Print = 0  where Oc_Perdid = ''%s'' ',
      [User.WorkPeriod]);
    SQL.Add(sSql);
    ExecSQL;
  end;
end;

procedure TAccountlaborageFrm.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if DBGridEh1.Fields[27].Value = True then
    (Sender as TDBGridEh).Canvas.Font.Color := clRed;

  if DBGridEh1.Fields[29].Value = True then
    (Sender as TDBGridEh).Canvas.Font.Color := clLime;

  if gdSelected in State then
    DBGridEh1.Canvas.Brush.Color := clMoneyGreen;

  (Sender as TDBGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TAccountlaborageFrm.DBGridEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  sSql, S: string;
begin
  if not(Key in [VK_F2 .. VK_F5, VK_ESCAPE]) then
    Exit;

  if Key = VK_ESCAPE then
  begin
    SelectOutPrsCalcData('Oc_Number', FCurrentSelectPrs, True);
    Exit;
  end;

  try
    if Key = VK_F3 then
    begin
      sSql := Format
        ('Update OutCalc set Oc_Pass = 1 where Oc_Perdid = ''%s'' and Oc_Number=''%s'' ',
        [User.WorkPeriod, FCurrentSelectPrs]);
    end;

    if Key = VK_F4 then
    begin
      sSql := Format
        ('Update OutCalc set Oc_Pass = 0  where Oc_Perdid = ''%s'' and Oc_Number=''%s'' ',
        [User.WorkPeriod, FCurrentSelectPrs]);
    end;

    if Key = VK_F5 then
    begin
      sSql := Format
        ('Update OutCalc set Oc_Print = 1  where Oc_Perdid = ''%s'' and Oc_Number=''%s'' ',
        [User.WorkPeriod, FCurrentSelectPrs]);
    end;

    with ADOQry do
    begin
      Close;
      SQL.Clear;
      SQL.Add(sSql);
      ExecSQL;
      SelectOutPrsCalcData('Oc_Number', FCurrentSelectPrs, True);
    end;
  except
  end;
end;

procedure TAccountlaborageFrm.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  //
end;

procedure TAccountlaborageFrm.DSDataChange(Sender: TObject; Field: TField);
begin
  if ADOQry.Active then
    try
      with ADOQry do
      begin
        edt_lastPay.Text := FieldByName('Oc_As01').AsString;
        edt_lastWEpay.Text := FieldByName('Oc_As03').AsString;
        edt_lasthousePay.Text := FieldByName('Oc_As04').AsString;
        edt_lastdinnerPay.Text := FieldByName('Oc_As05').AsString;
        edt_lastYBpay.Text := FieldByName('Oc_As06').AsString;
        edt_lastHZpay.Text := FieldByName('Oc_As07').AsString;
        edt_CurrentPay.Text := FieldByName('Oc_Bs01').AsString;
        edt_CurrentWEpay.Text := FieldByName('Oc_Bs03').AsString;
        edt_CurrenthousePay.Text := FieldByName('Oc_Bs04').AsString;
        edt_CurrentdinnerPay.Text := FieldByName('Oc_Bs05').AsString;
        edt_CurrentYBpay.Text := FieldByName('Oc_Bs06').AsString;
        edt_CurrentHZpay.Text := FieldByName('Oc_Bs07').AsString;
        edt_WkCrdRepay.Text := FieldByName('Oc_Bs12').AsString;
        edt_othrPay.Text := FieldByName('Oc_Bs11').AsString;
        edt_CutLoan.Text := FieldByName('Oc_Bs02').AsString;
        edt_WYCutpay.Text := FieldByName('Oc_Bs08').AsString;
        edt_Tax.Text := FieldByName('Oc_Bs09').AsString;
        edt_CHCutPay.Text := FieldByName('Oc_Bs10').AsString;
        edt_OthrCutPay.Text := FieldByName('Oc_Bs11').AsString;
        edt_fine.Text := FieldByName('Oc_Bs13').AsString;

        edt_othrPay.Text := FieldByName('Oc_Bs14').AsString;
        edt_THPay.Text := FieldByName('oc_Total').AsString;

        FCurrentSelectPrs := FieldByName('Oc_Number').AsString;
      end;
    except
    end;
end;

procedure TAccountlaborageFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

function TAccountlaborageFrm.InsertOutPrsAndDinnerData: Boolean;
var
  sSql, OutDtStart, OutDtEnd, tmpNumber: String;
begin
  Result := True;
  OutDtStart := FormatDateTime('YYYY-MM-DD', User.WrkStarT);
  OutDtEnd := FormatDateTime('YYYY-MM-DD', User.WrkEndT);
  try
    // ---------核对离职人员
    with ADOQrySerch do
    begin
      Close;
      SQL.Clear;
      sSql := Format
        ('Select per_number from Person Where Per_Perdid=''%s'' and per_outdt>=''%s'' and per_outdt<= ''%s'' ',
        [User.WorkPeriod, OutDtStart, OutDtEnd]);
      SQL.Add(sSql);
      Open;
      First;
      while not eof do
      begin
        tmpNumber := ADOQrySerch.FieldByName('per_number').AsString;
        with ADOQry do
        begin
          Close;
          SQL.Clear;
          sSql := Format
            ('if not exists(Select Oc_Number from OutCalc where Oc_Number =''%s'' and Oc_Perdid=''%s'') '
            + 'insert into OutCalc Values (''%s'', ''%s'', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ) ',
            [tmpNumber, User.WorkPeriod, User.WorkPeriod, tmpNumber]);
          SQL.Add(sSql);
          ExecSQL;
        end;
        ADOQrySerch.Next;
      end;
    end;

    // ---------更新餐费
    with ADOQry do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Select * from meal order by ml_code');
      Open;
      First;

      while Not eof do
      begin
        if Trim(FieldByName('ml_code').AsString) = '01' then
          FBrkfstPrice := FieldByName('ml_afee').AsFloat;
        if Trim(FieldByName('ml_code').AsString) = '02' then
          FLunchPrice := FieldByName('ml_afee').AsFloat;
        if Trim(FieldByName('ml_code').AsString) = '03' then
          FDinnerPrice := FieldByName('ml_afee').AsFloat;
        if Trim(FieldByName('ml_code').AsString) = '04' then
          FSupperPrice := FieldByName('ml_afee').AsFloat;

        Next;
      end;
      Close;
    end;

    with ADOQrySerch do
    begin
      Parameters.Clear;
      SQL.Clear;
      SQL.Add('Exec DinnerStatistics :A, :B, :C, :D, :E ');

      Parameters.Items[0].Value := User.WorkPeriod;
      Parameters.Items[1].Value := FBrkfstPrice;
      Parameters.Items[2].Value := FLunchPrice;
      Parameters.Items[3].Value := FDinnerPrice;
      Parameters.Items[4].Value := FSupperPrice;

      Prepared := True;
      ExecSQL;
    end;

  except
    Result := False;
  end;
end;

function TAccountlaborageFrm.SelectOutPrsCalcData(Columu: string;
  LocateStr: Variant; IsFiltered: Boolean): Boolean;
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
        ('Select OutCalc.*, (Oc_Bs01+Oc_Bs12+Oc_Bs14+Oc_As01-Oc_Bs02-Oc_Bs03-Oc_Bs04-Oc_Bs05-Oc_Bs06-Oc_Bs07-Oc_Bs08-Oc_Bs09-Oc_Bs10-Oc_Bs11-Oc_Bs13-Oc_As03-Oc_As04-Oc_As05-Oc_As06-Oc_As07) as oc_Total, '
        + ' Dept_Name,Grou_Name,Per_Code,Per_Cardcd,Per_Name,Post_Name,Per_Dept,Per_Group,Per_Ssort,'
        + ' Per_Id,Per_Poff,Per_Indt,Per_OutDt,Per_OffDt From OutCalc Left Join Person '
        + ' On Oc_Number=Per_Number Left Join Depart  On Per_Dept =Dept_No Left Join Wkgrou  '
        + ' On Per_Dept =Grou_Dept And Per_Group=Grou_No Left Join Postion On Per_Post =Post_No  '
        + ' Where Per_Perdid=''%s''  And Oc_Perdid=''%s''  And Per_OutDt>=Per_Indt Order By Per_Dept,Per_Group,Per_Code',
        [User.WorkPeriod, User.WorkPeriod]);

      SQL.Add(sSql);
      Open;

      if (VarToStr(LocateStr) = 'First') or (VarToStr(LocateStr) = '') then
        First
      else if VarToStr(LocateStr) = 'Last' then
        Last
      else
        Locate(Columu, LocateStr, []);

      lblCount.Caption := Format(RecordCountShow, [RecordCount]);
      DS.OnDataChange(nil, nil);
    end;
  except
    Result := False;
  end;
end;

procedure TAccountlaborageFrm.SetProgress(const Position: Integer);
begin
  RzPs.percent := Position;
end;

end.
