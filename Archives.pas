unit Archives;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, UGlobal, Dm, msg, DBGridToExcel, SelectConditon,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, RzPanel, Data.DB, Data.Win.ADODB,
  Vcl.Mask, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  DateUtils, PostionChange, Vcl.Menus, DinnerDataExport,
  GridsEh, DBAxisGridsEh, DBGridEh, DBCtrlsEh, Vcl.Imaging.pngimage, RzStatus,
  EhLibVCL;

type
  TArchivesFrm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    pnl_Edite: TPanel;
    cmbCompany: TComboBox;
    cmbDepart: TComboBox;
    cmbGroup: TComboBox;
    cmbNation: TComboBox;
    cmbPostion: TComboBox;
    CmbDegree: TComboBox;
    cmbEthnic: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edt_Name: TEdit;
    edt_WorkNo: TEdit;
    edt_CardNo: TEdit;
    dtpk_IdtyEnd: TDateTimePicker;
    dtpk_EntryWrkDay: TDateTimePicker;
    dtpk_ContractStartDay: TDateTimePicker;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    dtpk_ContractEndDay: TDateTimePicker;
    cmbMarry: TComboBox;
    cmbSex: TComboBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    dtpk_Bregular: TDateTimePicker;
    Label19: TLabel;
    Label20: TLabel;
    dtpk_leaveofficeDay: TDateTimePicker;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    cmbPayType: TComboBox;
    cmbDinner: TComboBox;
    edt_eml: TEdit;
    Label25: TLabel;
    edt_hmAdrs: TEdit;
    Label26: TLabel;
    edt_currtAdrs: TEdit;
    Label27: TLabel;
    edt_findAdrs: TEdit;
    Label28: TLabel;
    edt_identityCard: TEdit;
    Label29: TLabel;
    edt_Major: TEdit;
    Label30: TLabel;
    edt_Tel1: TEdit;
    Label32: TLabel;
    edt_liaisons: TEdit;
    Label33: TLabel;
    edt_Guarantee: TEdit;
    mm_Remark: TMemo;
    RzStatusBar1: TRzStatusBar;
    ADOQry: TADOQuery;
    DS: TDataSource;
    btnDelete: TButton;
    btnInsert: TButton;
    btnModify: TButton;
    ADOQrySerch: TADOQuery;
    cmbPostoff: TComboBox;
    Label34: TLabel;
    edt_Company: TEdit;
    edt_Depart: TEdit;
    edt_Group: TEdit;
    edt_Nation: TEdit;
    edt_Ethnic: TEdit;
    edt_Postion: TEdit;
    edt_Degree: TEdit;
    Label35: TLabel;
    edt_Probation: TEdit;
    Label36: TLabel;
    edt_School: TEdit;
    Label37: TLabel;
    edt_Tel3: TEdit;
    Label24: TLabel;
    Label38: TLabel;
    edt_Age: TEdit;
    Label39: TLabel;
    dtpk_IdtyStar: TDateTimePicker;
    edt_wrkStaus: TEdit;
    Label40: TLabel;
    edt_WrkAge: TEdit;
    ckb_stay: TCheckBox;
    ckb_Clock: TCheckBox;
    Label41: TLabel;
    Label42: TLabel;
    dtpk_BirthDay: TDateTimePicker;
    DBGridEh1: TDBGridEh;
    Label43: TLabel;
    edt_House: TEdit;
    BitBtn1: TBitBtn;
    Label44: TLabel;
    dtpk_levefacDate: TDateTimePicker;
    pnl_Ok_C: TPanel;
    btnOK: TButton;
    btnCancel: TButton;
    Label45: TLabel;
    cmbTrial: TComboBox;
    ckb_cardBck: TCheckBox;
    Image1: TImage;
    btnSelect: TButton;
    Label46: TLabel;
    Label47: TLabel;
    edt_GZCard: TEdit;
    edt_SBCard: TEdit;
    ckb_blacklist: TCheckBox;
    Label31: TLabel;
    Button2: TButton;
    btnCopy: TButton;
    RzPs: TRzProgressStatus;
    SD1: TSaveDialog;
    btnRefrash: TButton;
    PM: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    btn_importAttend: TButton;
    lblCount: TLabel;
    lblCountin: TLabel;
    lblCountout: TLabel;
    lblCountOC: TLabel;
    btnClose: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure cmbDepartChange(Sender: TObject);
    procedure cmbCompanyChange(Sender: TObject);
    procedure cmbGroupChange(Sender: TObject);
    procedure cmbNationChange(Sender: TObject);
    procedure cmbEthnicChange(Sender: TObject);
    procedure cmbPostionChange(Sender: TObject);
    procedure CmbDegreeChange(Sender: TObject);
    procedure cmbCompanyKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnModifyClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure btnCopyClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
    procedure btnRefrashClick(Sender: TObject);
    procedure btn_importAttendClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
    CurrentSelectPrsn: String;
    CurrentSelectNumber: string;
    function SelectHRData(Columu, LocateStr: string;
      IsFiltered: Boolean): Boolean;

    function IntBaseInfro: Boolean;
    function CreateRadomNO(var StrNO: string; Len: Integer): Boolean;
    procedure CheckDataIntegrality(ID: String);
    procedure SetProgress(const Position: Integer);
    procedure StatisticsWorkerInfo(FilterType: Integer; var OutCount: Integer;
      IsFiltered: Boolean);
  public
    FSelectPeriod: String;
    { Public declarations }
  end;

var
  ArchivesFrm: TArchivesFrm;

implementation

{$R *.dfm}

procedure TArchivesFrm.BitBtn1Click(Sender: TObject);
var
  info: array [1 .. 100] of AnsiChar;
  photo: array [1 .. 102400] of AnsiChar;
  fileHandle: THandle;
  Len: Integer;
  tmpDateStr: String;
begin
  try
    mInitComm(1001);
    sleep(500);
    mAuthenticate;
    sleep(800);
    mRead_Content(1);
    sleep(800);

    fillchar(info, 100, #0);
    GetName(@info[1], 100); // 姓名
    edt_Name.Text := info;

    fillchar(info, 100, #0);
    GetSex(@info[1], 100); // 性别
    cmbSex.Text := info;

    fillchar(info, 100, #0);
    GetNation(@info[1], 100); // 名族
    edt_Ethnic.Text := info;

    fillchar(info, 100, #0);
    GetAddress(@info[1], 100); // 地址
    edt_hmAdrs.Text := info;

    fillchar(info, 100, #0); // 出生日期
    GetBirthday(@info[1], 100);
    tmpDateStr := info[1] + info[2] + info[3] + info[4] + '-' + info[5] +
      info[6] + '-' + info[7] + info[8];
    dtpk_BirthDay.Date := StrToDate(tmpDateStr);

    fillchar(info, 100, #0);
    GetCode(@info[1], 100); // 身份证号
    edt_identityCard.Text := info;

    fillchar(info, 100, #0);
    GetDepartment(@info[1], 100); // 发证机关
    edt_findAdrs.Text := info;

    fillchar(info, 100, #0);
    GetStartDate(@info[1], 100); // 证件有效期起
    tmpDateStr := info[1] + info[2] + info[3] + info[4] + '-' + info[5] +
      info[6] + '-' + info[7] + info[8];
    dtpk_IdtyStar.Date := StrToDate(tmpDateStr);

    fillchar(info, 100, #0);
    GetEndDate(@info[1], 100); // 证件有效期止
    tmpDateStr := info[1] + info[2] + info[3] + info[4] + '-' + info[5] +
      info[6] + '-' + info[7] + info[8];
    dtpk_IdtyEnd.Date := StrToDate(tmpDateStr);

    fillchar(photo, 100, #0);
    Len := GetPhotoBMP(@photo[1], 100 * 1024);
    fileHandle := FileCreate('C:\bin\photo.bmp');
    if fileHandle <> 0 then
    begin
      FileWrite(fileHandle, photo, Len);
      FileClose(fileHandle);
      Image1.Picture.LoadFromFile('C:\bin\photo.bmp');
    end;

    Application.ProcessMessages;
    mRead_Content(2);
    sleep(800);
    mRead_Content(3);
    sleep(500);
    mRead_Content(5);
    sleep(500);
    mCloseComm;
  except

  end;
end;

procedure TArchivesFrm.btnCancelClick(Sender: TObject);
begin
  pnl_Ok_C.Visible := False;
  pnl_Edite.Enabled := False;
  Panel1.Enabled := True;

  SelectHRData('per_id', CurrentSelectPrsn, False);
end;

procedure TArchivesFrm.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TArchivesFrm.btnCopyClick(Sender: TObject);
var
  S: String;
begin
  pnl_Ok_C.Visible := True;
  pnl_Edite.Enabled := True;
  Panel1.Enabled := False;

  CreateRadomNO(S, 7);
  edt_WorkNo.Text := S;

  btnOK.Tag := 1;
end;

procedure TArchivesFrm.btnModifyClick(Sender: TObject);
begin
  pnl_Ok_C.Visible := True;
  pnl_Edite.Enabled := True;
  Panel1.Enabled := False;

  btnOK.Tag := 3;
end;

procedure TArchivesFrm.btnDeleteClick(Sender: TObject);
begin
  Panel1.Enabled := False;
  pnl_Ok_C.Visible := True;
  btnOK.Tag := 2;

end;

procedure TArchivesFrm.btnInsertClick(Sender: TObject);
var
  S: String;
begin
  pnl_Ok_C.Visible := True;
  pnl_Edite.Enabled := True;
  Panel1.Enabled := False;

  CreateRadomNO(S, 7);
  edt_WorkNo.Text := S;

  edt_Company.Text := '';
  cmbCompany.Text := '';

  edt_Depart.Text := '';
  cmbDepart.Text := '';

  edt_Group.Text := '';
  cmbGroup.Text := '';

  edt_Nation.Text := '';
  cmbNation.Text := '';

  edt_Ethnic.Text := '';
  cmbEthnic.Text := '';

  edt_Postion.Text := '';
  cmbPostion.Text := '';

  edt_Degree.Text := '';
  CmbDegree.Text := '';

  edt_School.Text := '';
  edt_hmAdrs.Text := '';
  edt_currtAdrs.Text := '';
  edt_liaisons.Text := '';
  edt_Major.Text := '';
  edt_Guarantee.Text := '';
  edt_Tel1.Text := '';
  edt_Tel3.Text := '';

  edt_Name.Text := '';
  cmbSex.Text := '';
  edt_Age.Text := '';
  cmbMarry.Text := '';
  edt_CardNo.Text := '';
  edt_WrkAge.Text := '';
  cmbPayType.Text := '';
  edt_eml.Text := '';

  edt_identityCard.Text := '';
  edt_findAdrs.Text := '';

  cmbTrial.Text := '';
  cmbPostoff.Text := '';
  mm_Remark.Text := '';

  dtpk_BirthDay.DateTime := 2;
  dtpk_IdtyStar.DateTime := 2;
  dtpk_IdtyEnd.DateTime := 2;

  dtpk_EntryWrkDay.DateTime := Now;
  dtpk_Bregular.DateTime := 2;
  dtpk_ContractStartDay.DateTime := 2;
  dtpk_ContractEndDay.DateTime := 2;
  dtpk_leaveofficeDay.DateTime := 2;
  dtpk_levefacDate.DateTime := 2;

  btnOK.Tag := 1;
end;

procedure TArchivesFrm.btnOKClick(Sender: TObject);
var
  sSql: String;
  cmpNO, dprtNO, grpNO, natNO, etnNo, pstNO, dgeNo: String;
  UsName, Sex, Marry, identityCard, Police, Postoff: string;
  Birthday, ContractEndDay, leaveofficeDay, Bregular: String;
  workNO, cardNo, payType, houseNo, dinner, Trial, stay, Clock, PstStat: string;
  Shool, Major, homeAdrs, NowAdrs, Guarantee, liaisons, Tel1, Tel2: String;
  IdtyEnd, IdtyStar, EntryWrkDay, ContractStartDay, levefacDate: String;
  Remark, photoPath, UserId, period, GZCard, BxCard, emptStr: String;
  CardBack, Domicileplace, Blacklist: String;
  Probation: Integer;
begin
  period := User.WorkPeriod;
  cmpNO := Trim(Copy(cmbCompany.Text, 1, 2));
  dprtNO := Trim(Copy(cmbDepart.Text, 1, 2));
  grpNO := Trim(Copy(cmbGroup.Text, 1, 2));
  natNO := Trim(Copy(cmbNation.Text, 1, 3));
  etnNo := Trim(Copy(cmbEthnic.Text, 1, 2));
  pstNO := Trim(Copy(cmbPostion.Text, 1, 4));
  dgeNo := Trim(Copy(CmbDegree.Text, 1, 2));

  UsName := Trim(edt_Name.Text);
  Sex := Trim(cmbSex.Text);
  Marry := Trim(cmbMarry.Text);
  Birthday := DateToStr(dtpk_BirthDay.Date);
  identityCard := Trim(edt_identityCard.Text);
  Police := Trim(edt_findAdrs.Text);

  workNO := Trim(edt_WorkNo.Text);
  cardNo := Trim(edt_CardNo.Text);
  payType := Trim(cmbPayType.Text);
  houseNo := Trim(edt_House.Text);
  dinner := Trim(cmbDinner.Text);
  Probation := StrToInt(edt_Probation.Text);
  Domicileplace := Trim(edt_eml.Text);

  Shool := Trim(edt_School.Text);
  Major := Trim(edt_Major.Text);
  homeAdrs := Trim(edt_hmAdrs.Text);
  NowAdrs := Trim(edt_currtAdrs.Text);
  Guarantee := Trim(edt_Guarantee.Text);
  liaisons := Trim(edt_liaisons.Text);
  Tel1 := Trim(edt_Tel1.Text);
  Tel2 := Trim(edt_Tel3.Text);

  IdtyStar := DateToStr(dtpk_IdtyStar.Date);
  IdtyEnd := DateToStr(dtpk_IdtyEnd.Date);
  EntryWrkDay := DateToStr(dtpk_EntryWrkDay.Date);
  ContractStartDay := DateToStr(dtpk_ContractStartDay.Date);
  levefacDate := DateToStr(dtpk_levefacDate.Date);
  ContractEndDay := DateToStr(dtpk_ContractEndDay.Date);
  leaveofficeDay := DateToStr(dtpk_leaveofficeDay.Date);
  Bregular := DateToStr(dtpk_Bregular.Date);
  Trial := Trim(cmbTrial.Text);
  photoPath := '';

  stay := BoolToStr(ckb_stay.Checked);
  Clock := BoolToStr(ckb_Clock.Checked);
  CardBack := BoolToStr(ckb_cardBck.Checked);
  Blacklist := BoolToStr(ckb_blacklist.Checked);

  Postoff := Trim(cmbPostoff.Text);

  if Postoff <> '' then
    PstStat := '已离职'
  else
    PstStat := '尚在职';

  GZCard := Trim(edt_GZCard.Text);
  BxCard := Trim(edt_SBCard.Text);
  Remark := mm_Remark.Text;

  emptStr := '';

  if length(identityCard) <> 18 then // 证件号验证
  begin
    if MessageDlg(identityCardError, mtWarning, [mbYes, mbNo], 0) = mrNone then
      Exit;
  end;

  if (dtpk_EntryWrkDay.Date > User.WrkEndT) and
    (dtpk_EntryWrkDay.Date < User.WrkStarT) then // 校验入职职日期
  begin
    MessageDlg(EntryWrkDayError, mtError, [mbOK], 0);
    Exit;
  end;

  if (dtpk_leaveofficeDay.Date > User.WrkEndT) and // 校验离职日期
    (dtpk_leaveofficeDay.Date < User.WrkStarT) then
  begin
    MessageDlg(leaveofficeDayError, mtError, [mbOK], 0);
    Exit;
  end;

  if (Copy(identityCard, 7, 8) <> FormatDateTime('YYYYMMDD', dtpk_BirthDay.Date)
    ) and (length(identityCard) = 18) then
  begin
    MessageDlg(BirthdayError, mtError, [mbOK], 0);
    Exit;
  end;

  if YearsBetween(Now, dtpk_BirthDay.Date) < 16 then // 验证 年龄
  begin
    MessageDlg(AgeIsTooYoung, mtError, [mbOK], 0);
    Exit;
  end;

  if (UsName = '') or (Sex = '') or (workNO = '') then // 基础信息
  begin
    MessageDlg(InformationMiss, mtError, [mbOK], 0);
    Exit;
  end;
  try
    case btnOK.Tag of
      1:
        begin

          CreateRadomNO(UserId, 8);
          with ADOQry do
          begin
            Close;
            SQL.Clear;
            sSql := Format
              ('Select per_id from person  where  per_id=''%s'' and  per_perdid=''%s'' ',
              [identityCard, period]);
            SQL.Add(sSql);
            Open;
            if RecordCount > 0 then
            begin
              MessageDlg(ReIdentityCard, mtError, [mbOK], 0);
              Exit;
            end;

            Close;
            SQL.Clear;
            sSql := Format
              ('insert into Person(per_fact, per_dept, per_group, per_code, per_cardcd, per_name, per_sex,'
              + 'per_marr, per_birth, per_nati, per_family, per_id, per_degree, per_speci, per_school, per_post,'
              + 'per_plevel, per_comdt, per_indt, per_ssort,per_trper, per_trpos, per_trdt, per_attend, per_hdre, '
              + 'per_htel, per_cdre, per_ctel, per_lman, per_ldre, per_ltel, per_lemail, per_inin, per_house,'
              + 'per_badno, per_bman, per_meal, per_htfrdt, per_httodt, per_outdt, per_offdt, per_poff, per_stat,'
              + 'per_memo, per_photo, per_kexcel, per_number, per_perdid, per_no, per_cardbk, per_black, per_hmmag,'
              + 'per_gzcard, per_BXcard, lzstat, Per_Jobdt)' +
              'Values(''%s'', ''%s'', ''%s'', ''%s'', ''%s'', ''%s'', ''%s'',' +
              ' ''%s'', ''%s'', ''%s'', ''%s'', ''%s'', ''%s'', ''%s'', ''%s'', ''%s'','
              + ' ''%s'', ''%s'', ''%s'', ''%s'',   %d,  ''%s'',   ''%s'',   %s,  ''%s'', '
              + ' ''%s'', ''%s'', ''%s'', ''%s'', ''%s'', ''%s'', ''%s'',   %s,   ''%s'','
              + ' ''%s'', ''%s'', ''%s'', ''%s'', ''%s'', ''%s'', ''%s'', ''%s'', ''%s'','
              + ' ''%s'', ''%s'', ''%s'', ''%s'', ''%s'', ''%s'',   %s,     %s,     %s, '
              + ' ''%s'', ''%s'',   %d,   ''%s'')',
              [cmpNO, dprtNO, grpNO, workNO, cardNo, UsName, Sex, Marry,
              Birthday, natNO, etnNo, identityCard, dgeNo, Major, Shool, pstNO,
              emptStr, IdtyStar, EntryWrkDay, payType, Probation, Trial,
              Bregular, Clock, homeAdrs, Tel1, NowAdrs, emptStr, liaisons,
              Police, Tel2, Domicileplace, '1', houseNo, emptStr, Guarantee,
              dinner, ContractStartDay, ContractEndDay, leaveofficeDay,
              levefacDate, Postoff, PstStat, Remark, photoPath, emptStr, UserId,
              period, emptStr, CardBack, Blacklist, '0', GZCard, BxCard, 0,
              IdtyEnd]);
            SQL.Add(sSql);
            ExecSQL;
          end;

        end;

      2:
        begin
          if MessageDlg(DeleteStaffWarning, mtWarning, [mbOK, mbNo], 0) = mrOk
          then
          begin
            with ADOQry do
            begin
              Close;
              SQL.Clear;
              sSql := Format
                ('delete from person where   per_id=''%s'' and  per_perdid=''%s'' ',
                [CurrentSelectPrsn, period]);
              SQL.Add(sSql);
              ExecSQL;
            end;
          end;
        end;

      3:
        begin
          with ADOQry do
          begin
            Close;
            SQL.Clear;
            sSql := Format
              ('Update Person set per_fact=''%s'', per_dept=''%s'', per_group=''%s'', per_code=''%s'', per_cardcd=''%s'', per_name=''%s'', per_sex=''%s'', '
              + 'per_marr=''%s'', per_birth=''%s'', per_nati=''%s'', per_family=''%s'', per_id=''%s'', per_degree=''%s'', per_speci=''%s'', per_school=''%s'', per_post=''%s'', '
              + 'per_plevel=''%s'', per_comdt=''%s'', per_indt=''%s'', per_ssort=''%s'', per_trper=%d, per_trpos=''%s'', per_trdt=''%s'', per_attend=%s, per_hdre=''%s'', '
              + 'per_htel=''%s'', per_cdre=''%s'', per_ctel=''%s'', per_lman=''%s'', per_ldre=''%s'', per_ltel=''%s'', per_lemail=''%s'', per_inin=%s, per_house=''%s'', '
              + 'per_badno=''%s'', per_bman=''%s'', per_meal=''%s'', per_htfrdt=''%s'', per_httodt=''%s'', per_outdt=''%s'', per_offdt=''%s'', per_poff=''%s'', per_stat=''%s'', '
              + 'per_memo=''%s'', per_photo=''%s'', per_kexcel=''%s'', per_perdid=''%s'', per_no=''%s'', per_cardbk=%s, per_black=%s, per_hmmag=%s,'
              + 'per_gzcard=''%s'', per_BXcard=''%s'',  lzstat=%d, Per_Jobdt=''%s''  where  per_id=''%s'' and  per_perdid=''%s'' ',
              [cmpNO, dprtNO, grpNO, workNO, cardNo, UsName, Sex, Marry,
              Birthday, natNO, etnNo, identityCard, dgeNo, Major, Shool, pstNO,
              emptStr, IdtyStar, EntryWrkDay, payType, Probation, Trial,
              Bregular, Clock, homeAdrs, Tel1, NowAdrs, emptStr, liaisons,
              Police, Tel2, Domicileplace, '1', houseNo, emptStr, Guarantee,
              dinner, ContractStartDay, ContractEndDay, leaveofficeDay,
              levefacDate, Postoff, PstStat, Remark, photoPath, emptStr, period,
              emptStr, CardBack, Blacklist, '0', GZCard, BxCard, 0, IdtyEnd,
              CurrentSelectPrsn, period]);
            SQL.Add(sSql);
            ExecSQL;
          end;
        end;
    end;
  finally
    CurrentSelectPrsn := identityCard;
    btnCancel.Click;
  end;
end;

procedure TArchivesFrm.btnRefrashClick(Sender: TObject);
begin
  SelectHRData('per_id', CurrentSelectPrsn, False);

  with ADOQrySerch do
  begin
    Close;
    Parameters.Clear;
    SQL.Clear;
    SQL.Add('Exec kill_Tr');
    ExecSQL;
  end;
end;

procedure TArchivesFrm.btnSelectClick(Sender: TObject);
var
  SelectCdtFrm: TfrmSlectCdt_Ach;
begin
  SelectCdtFrm := TfrmSlectCdt_Ach.Create(User.WorkPeriod);
  if SelectCdtFrm.ShowModal = mrOk then
  begin
    ADOQry.Filter := SelectCdtFrm.FCondition;
    if ADOQry.Active then
      ADOQry.Filtered := True;
  end;
end;

procedure TArchivesFrm.btn_importAttendClick(Sender: TObject);
begin
  with ADOQrySerch do
  begin
    Close;
    Parameters.Clear;
    SQL.Clear;
    SQL.Add('Exec PerToZk :A ');

    Parameters.Items[0].Value := User.WorkPeriod;
    Prepared := True;

    if ExecSQL > 0 then
      ShowMessage('导入成功！');
  end;
end;

procedure TArchivesFrm.Button2Click(Sender: TObject);
begin
  DBGridEh1.Fields[40].Visible := False;
  DBGridToExcel_A(DBGridEh1, SD1.FileName, Self.Caption + '(' + User.WorkPeriod
    + ')', SetProgress);

  DBGridEh1.Fields[40].Visible := True;
end;

procedure TArchivesFrm.CheckDataIntegrality(ID: String);
begin
  //
end;

procedure TArchivesFrm.cmbCompanyChange(Sender: TObject);
begin
  edt_Company.Text := Trim(Copy(cmbCompany.Text, 4,
    length(cmbCompany.Text) - 3));
  edt_Company.SetFocus;
end;

procedure TArchivesFrm.cmbCompanyKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #8) or (Key = #46) then
    TComboBox(Sender).Text := '';

  TComboBox(Sender).SetFocus;
end;

procedure TArchivesFrm.CmbDegreeChange(Sender: TObject);
begin
  edt_Degree.Text := Trim(Copy(CmbDegree.Text, 4, length(CmbDegree.Text) - 3));
  edt_Degree.SetFocus;
end;

procedure TArchivesFrm.cmbDepartChange(Sender: TObject);
var
  sSql, tmpDprtNo, tmpNO, tmpName: string;
begin
  cmbGroup.Items.Clear;
  tmpDprtNo := Copy(cmbDepart.Text, 1, 2);
  edt_Depart.Text := Trim(Copy(cmbDepart.Text, 4, length(cmbDepart.Text) - 3));
  edt_Depart.SetFocus;
  with ADOQrySerch do
  begin
    Close;
    SQL.Clear; // 组名
    sSql := Format
      ('Select * From Wkgrou where  grou_dept=''%s'' Order By Grou_Factory,Grou_dept,Grou_No',
      [tmpDprtNo]);
    SQL.Add(sSql);
    Open;
    First;
    while not Eof do
    begin
      tmpNO := Trim(FieldByName('grou_no').AsString);
      tmpName := Trim(FieldByName('grou_name').AsString);
      cmbGroup.Items.Add(tmpNO + '     ' + tmpName);
      Next;
    end;
  end;
end;

procedure TArchivesFrm.cmbEthnicChange(Sender: TObject);
begin
  edt_Ethnic.Text := Trim(Copy(cmbEthnic.Text, 4, length(cmbEthnic.Text) - 3));
  edt_Ethnic.SetFocus;
end;

procedure TArchivesFrm.cmbGroupChange(Sender: TObject);
begin
  edt_Group.Text := Trim(Copy(cmbGroup.Text, 4, length(cmbGroup.Text) - 3));
  edt_Group.SetFocus;
end;

procedure TArchivesFrm.cmbNationChange(Sender: TObject);
begin
  edt_Nation.Text := Trim(Copy(cmbNation.Text, 4, length(cmbNation.Text) - 3));
  edt_Nation.SetFocus;
end;

procedure TArchivesFrm.cmbPostionChange(Sender: TObject);
begin
  edt_Postion.Text := Trim(Copy(cmbPostion.Text, 5,
    length(cmbPostion.Text) - 4));
  edt_Postion.SetFocus;
end;

function TArchivesFrm.CreateRadomNO(var StrNO: string; Len: Integer): Boolean;
var
  RadomNo, sSql: String;
  i: Integer;
begin
  Result := True;
  Try
    RadomNo := IntToStr(Random(65535));
    StrNO := StringOfChar('0', Len - length(RadomNo)) + RadomNo;
    case Len of
      7:
        sSql := Format
          ('Select per_code from person where per_code= ''%s''', [StrNO]);
      8:
        sSql := Format
          ('Select per_number from person where per_number= ''%s''', [StrNO]);
    else
      Exit;
    end;

    Repeat
      Application.ProcessMessages;
      with ADOQrySerch do
      begin
        Close;
        SQL.Clear;
        SQL.Add(sSql);
        Open;
        i := RecordCount;
      end;
    until (i = 0);

  except
    Result := False;
  End;

end;

procedure TArchivesFrm.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if DBGridEh1.Fields[37].Text = '在试用' then
    (Sender as TDBGridEh).Canvas.Font.Color := clGreen;

  if Trim(DBGridEh1.Fields[24].Text) <> '' then
    (Sender as TDBGridEh).Canvas.Font.Color := clRed;

  if gdSelected in State then
    DBGridEh1.Canvas.Brush.Color := clMoneyGreen;

  (Sender as TDBGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TArchivesFrm.DSDataChange(Sender: TObject; Field: TField);
begin
  if ADOQry.Active then
    try
      with ADOQry do
      begin
        CurrentSelectPrsn := Trim(FieldByName('per_id').AsString);
        CurrentSelectNumber := Trim(FieldByName('per_number').AsString);
        cmbCompany.Text := '01';
        edt_Company.Text := '华粤宝';

        cmbDepart.Text := Trim(FieldByName('per_dept').AsString);
        edt_Depart.Text := Trim(FieldByName('Dept_Name').AsString);

        cmbGroup.Text := Trim(FieldByName('per_group').AsString);
        edt_Group.Text := Trim(FieldByName('Grou_Name').AsString);
        cmbNation.Text := Trim(FieldByName('per_nati').AsString);
        edt_Nation.Text := Trim(FieldByName('Nat_Priv').AsString);

        cmbEthnic.Text := Trim(FieldByName('per_family').AsString);
        edt_Ethnic.Text := Trim(FieldByName('Fami_Name').AsString);
        cmbPostion.Text := Trim(FieldByName('per_post').AsString);
        edt_Postion.Text := Trim(FieldByName('Post_Name').AsString);

        CmbDegree.Text := Trim(FieldByName('per_degree').AsString);
        edt_Degree.Text := Trim(FieldByName('Degr_Name').AsString);
        edt_Name.Text := Trim(FieldByName('per_name').AsString);
        edt_WorkNo.Text := Trim(FieldByName('per_code').AsString);
        edt_CardNo.Text := Trim(FieldByName('per_cardcd').AsString);

        edt_liaisons.Text := Trim(FieldByName('per_lman').AsString);
        edt_Tel1.Text := Trim(FieldByName('per_htel').AsString);
        edt_Tel3.Text := Trim(FieldByName('per_ltel').AsString);
        edt_Probation.Text := Trim(FieldByName('per_trper').AsString);
        edt_findAdrs.Text := Trim(FieldByName('per_ldre').AsString);

        cmbMarry.Text := Trim(FieldByName('per_marr').AsString);
        cmbSex.Text := Trim(FieldByName('per_sex').AsString);

        edt_identityCard.Text := Trim(FieldByName('per_id').AsString);
        edt_eml.Text := Trim(FieldByName('per_lemail').AsString);
        edt_School.Text := Trim(FieldByName('per_school').AsString);
        edt_Major.Text := Trim(FieldByName('per_speci').AsString);
        cmbPayType.Text := Trim(FieldByName('per_ssort').AsString);
        cmbDinner.Text := Trim(FieldByName('per_meal').AsString);
        edt_hmAdrs.Text := Trim(FieldByName('per_hdre').AsString);
        edt_Age.Text := Trim(FieldByName('per_age').AsString);
        edt_WrkAge.Text := Trim(FieldByName('per_wrkage').AsString);
        ckb_Clock.Checked := FieldByName('per_attend').AsBoolean;
        edt_wrkStaus.Text := FieldByName('per_stat').AsString;
        edt_House.Text := FieldByName('per_house').AsString;
        cmbTrial.Text := FieldByName('per_trpos').AsString;
        edt_currtAdrs.Text := FieldByName('per_cdre').AsString;
        ckb_cardBck.Checked := FieldByName('per_cardbk').AsBoolean;

        cmbPostoff.Text := Trim(FieldByName('per_poff').AsString);

        edt_Guarantee.Text := FieldByName('per_bman').AsString;

        edt_GZCard.Text := FieldByName('per_gzcard').AsString;
        edt_SBCard.Text := FieldByName('per_BXcard').AsString;

        mm_Remark.Text := Trim(FieldByName('per_memo').AsString);

        if not FieldByName('per_comdt').isnull then
          dtpk_IdtyStar.Date := FieldByName('per_comdt').AsDateTime;

        if not FieldByName('Per_Jobdt').isnull then
          dtpk_IdtyEnd.Date := FieldByName('Per_Jobdt').AsDateTime;

        if not FieldByName('per_trdt').isnull then
          dtpk_Bregular.Date := FieldByName('per_trdt').AsDateTime;

        if not FieldByName('per_outdt').isnull then
          dtpk_leaveofficeDay.Date := FieldByName('per_outdt').AsDateTime;

        if not FieldByName('per_birth').isnull then
          dtpk_BirthDay.Date := FieldByName('per_birth').AsDateTime;

        if not FieldByName('per_indt').isnull then
          dtpk_EntryWrkDay.Date := FieldByName('per_indt').AsDateTime;

        if not FieldByName('per_htfrdt').isnull then
          dtpk_ContractStartDay.Date := FieldByName('per_htfrdt').AsDateTime;

        if not FieldByName('per_httodt').isnull then
          dtpk_ContractEndDay.Date := FieldByName('per_httodt').AsDateTime;

        if not FieldByName('per_offdt').isnull then
          dtpk_levefacDate.Date := FieldByName('per_offdt').AsDateTime;

        if not FileExists(Trim(FieldByName('per_photo').AsString)) then
          Image1.Picture.LoadFromFile(AppPath + '\pic\no-pic.png')
        else
          Image1.Picture.LoadFromFile(Trim(FieldByName('per_photo').AsString));
      end;
    except

    end;
end;

procedure TArchivesFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TArchivesFrm.FormCreate(Sender: TObject);
var
  Values: Integer;
begin
  if DMfrm.DoDBConnect then
  begin
    ADOQry.Connection := DMfrm.ADOCon;
    ADOQrySerch.Connection := DMfrm.ADOCon;

    FSelectPeriod := User.WorkPeriod;
    SelectHRData('', '', False);
    IntBaseInfro;

    StatisticsWorkerInfo(1, Values, False);
    lblCountout.Caption := '本期离职: ' + IntToStr(Values);
    StatisticsWorkerInfo(2, Values, False);
    lblCountOC.Caption := '合同逾期: ' + IntToStr(Values);
    StatisticsWorkerInfo(3, Values, False);
    lblCountin.Caption := '本期入职: ' + IntToStr(Values);

  end;
end;

function TArchivesFrm.IntBaseInfro: Boolean;
var
  sSql: String;
  tmpNO, tmpName: string;
begin
  Result := False;
  try
    with ADOQrySerch do
    begin
      Close;
      SQL.Clear;
      sSql := 'Select * From Factory Order By fact_Code'; // 厂名
      SQL.Add(sSql);
      Open;
      First;
      while not Eof do
      begin
        tmpNO := Trim(FieldByName('fact_code').AsString);
        tmpName := Trim(FieldByName('fact_sname').AsString);
        cmbCompany.Items.Add(tmpNO + '     ' + tmpName);
        Next;
      end;

      Close;
      SQL.Clear; // 部门名
      sSql := 'Select * From Depart Where Depart.Hide<1  Order By Dept_Fact,Dept_no';
      SQL.Add(sSql);
      Open;
      First;
      while not Eof do
      begin
        tmpNO := Trim(FieldByName('dept_no').AsString);
        tmpName := Trim(FieldByName('dept_name').AsString);
        cmbDepart.Items.Add(tmpNO + '     ' + tmpName);
        Next;
      end;

      Close;
      SQL.Clear; // 籍贯
      sSql := 'Select * From Nation Order By Nat_no';
      SQL.Add(sSql);
      Open;
      First;
      while not Eof do
      begin
        tmpNO := Trim(FieldByName('nat_no').AsString);
        tmpName := Trim(FieldByName('nat_priv').AsString);
        cmbNation.Items.Add(tmpNO + '     ' + tmpName);
        Next;
      end;

      Close;
      SQL.Clear; // 名族
      sSql := 'Select * From Family Order By fami_no';
      SQL.Add(sSql);
      Open;
      First;
      while not Eof do
      begin
        tmpNO := Trim(FieldByName('fami_no').AsString);
        tmpName := Trim(FieldByName('fami_name').AsString);
        cmbEthnic.Items.Add(tmpNO + '     ' + tmpName);
        Next;
      end;

      Close;
      SQL.Clear; // 职位
      sSql := 'Select * From Postion Order By post_no';
      SQL.Add(sSql);
      Open;
      First;
      while not Eof do
      begin
        tmpNO := Trim(FieldByName('post_no').AsString);
        tmpName := Trim(FieldByName('post_name').AsString);
        cmbPostion.Items.Add(tmpNO + '    ' + tmpName);
        Next;
      end;

      Close;
      SQL.Clear; // 离职类型
      sSql := 'Select * From Postoff Order By pt_Name';
      SQL.Add(sSql);
      Open;
      First;
      while not Eof do
      begin
        tmpName := Trim(FieldByName('pt_name').AsString);
        cmbPostoff.Items.Add(tmpName);
        Next;
      end;

      Close;
      SQL.Clear; // 学历
      sSql := 'Select * From Degree Order By Degr_Id';
      SQL.Add(sSql);
      Open;
      First;
      while not Eof do
      begin
        tmpNO := Trim(FieldByName('degr_id').AsString);
        tmpName := Trim(FieldByName('degr_name').AsString);
        CmbDegree.Items.Add(tmpNO + '     ' + tmpName);
        Next;
      end;
    end;
  except
  end;
end;

procedure TArchivesFrm.N1Click(Sender: TObject);
var
  tmpChgPstFrm: TPostionChangeFrm;
begin
  tmpChgPstFrm := TPostionChangeFrm.Create(CurrentSelectNumber,
    Trim(edt_WorkNo.Text), Trim(cmbDepart.Text), Trim(cmbGroup.Text),
    Trim(cmbPostion.Text));
end;

function TArchivesFrm.SelectHRData(Columu, LocateStr: string;
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
        ('Select Person.*,FLOOR(datediff(DY,per_birth,getdate())/365.25) as per_age, Round(datediff(DY,per_indt,getdate())/365.25, 1) as per_wrkage,'
        + 'Dept_Name,Grou_Name,Nat_Priv,Fami_Name,Post_Name,Post_Level,Pl_Name,Degr_Name,hou_tel From Person '
        + ' Left joIn Depart  On Per_Dept= Dept_No Left joIn WkGrou  On Per_Dept  = Grou_Dept And Per_Group=Grou_No '
        + 'Left joIn Family  On Per_Family= Fami_No Left joIn Nation  On Per_Nati  = Nat_No  Left joIn Degree '
        + 'On Per_Degree= Degr_Id Left joIn Postion On Per_Post  = Post_No Left joIn Postlve  On Per_Post  = Pl_PostNo And Per_Plevel=Pl_No '
        + 'Left joIn House   On Per_House = Hou_No Where Per_Perdid=''%s''  And Depart.Hide<1 Order By Per_Fact,Per_Dept,Per_Group,Per_Code',
        [User.WorkPeriod]);

      SQL.Add(sSql);
      Open;

      if (LocateStr = 'First') or (LocateStr = '') then
        First
      else if LocateStr = 'Last' then
        Last
      else
        Locate(Columu, LocateStr, []);

      DS.Enabled := True;

      lblCount.Caption := Format(RecordCountShow, [RecordCount]);
      DS.OnDataChange(nil, nil);
    end;
  except
    Result := False;
  end;
end;

procedure TArchivesFrm.SetProgress(const Position: Integer);
begin
  RzPs.percent := Position;
end;

procedure TArchivesFrm.StatisticsWorkerInfo(FilterType: Integer;
  var OutCount: Integer; IsFiltered: Boolean);
var
  sSql, OutDtStart, OutDtEnd, Htdtend, InDtStart, InDtEnd: String;
  MonthValue: Integer;
begin
  try
    with ADOQrySerch do
    begin
      Close;
      Filtered := IsFiltered;
      SQL.Clear;
      case FilterType of

        1: // 离职
          begin
            OutDtStart := FormatDateTime('YYYY-MM-DD', User.WrkStarT);
            OutDtEnd := FormatDateTime('YYYY-MM-DD', User.WrkEndT);

            sSql := Format
              ('Select Person.*,FLOOR(datediff(DY,per_birth,getdate())/365.25) as per_age, FLOOR(datediff(DY,per_indt,getdate())/365.25) as per_wrkage,'
              + 'Dept_Name,Grou_Name,Nat_Priv,Fami_Name,Post_Name,Post_Level,Pl_Name,Degr_Name,hou_tel From Person '
              + ' Left joIn Depart  On Per_Dept= Dept_No Left joIn WkGrou  On Per_Dept  = Grou_Dept And Per_Group=Grou_No '
              + 'Left joIn Family  On Per_Family= Fami_No Left joIn Nation  On Per_Nati  = Nat_No  Left joIn Degree '
              + 'On Per_Degree= Degr_Id Left joIn Postion On Per_Post  = Post_No Left joIn Postlve  On Per_Post  = Pl_PostNo And Per_Plevel=Pl_No '
              + 'Left joIn House   On Per_House = Hou_No Where Per_Perdid=''%s''  And Depart.Hide<1 and per_outdt>=''%s'' and per_outdt<= ''%s'' '
              + ' Order By Per_Fact,Per_Dept,Per_Group,Per_Code',
              [User.WorkPeriod, OutDtStart, OutDtEnd]);
          end;

        2: // 合同到期
          begin
            Htdtend := FormatDateTime('YYYY-MM-DD', User.WrkEndT);
            sSql := Format
              ('Select Person.*,FLOOR(datediff(DY,per_birth,getdate())/365.25) as per_age, FLOOR(datediff(DY,per_indt,getdate())/365.25) as per_wrkage,'
              + 'Dept_Name,Grou_Name,Nat_Priv,Fami_Name,Post_Name,Post_Level,Pl_Name,Degr_Name,hou_tel From Person '
              + ' Left joIn Depart  On Per_Dept= Dept_No Left joIn WkGrou  On Per_Dept  = Grou_Dept And Per_Group=Grou_No '
              + 'Left joIn Family  On Per_Family= Fami_No Left joIn Nation  On Per_Nati  = Nat_No  Left joIn Degree '
              + 'On Per_Degree= Degr_Id Left joIn Postion On Per_Post  = Post_No Left joIn Postlve  On Per_Post  = Pl_PostNo And Per_Plevel=Pl_No '
              + 'Left joIn House   On Per_House = Hou_No Where Per_Perdid=''%s''  And Depart.Hide<1 and per_httodt<=''%s'' and per_httodt>1900-01-01 '
              + ' Order By Per_Fact,Per_Dept,Per_Group,Per_Code',
              [User.WorkPeriod, Htdtend]);
          end;

        3: // 入职
          begin
            InDtStart := FormatDateTime('YYYY-MM-DD', User.WrkStarT);
            InDtEnd := FormatDateTime('YYYY-MM-DD', User.WrkEndT);

            sSql := Format
              ('Select Person.*,FLOOR(datediff(DY,per_birth,getdate())/365.25) as per_age, FLOOR(datediff(DY,per_indt,getdate())/365.25) as per_wrkage,'
              + 'Dept_Name,Grou_Name,Nat_Priv,Fami_Name,Post_Name,Post_Level,Pl_Name,Degr_Name,hou_tel From Person '
              + ' Left joIn Depart  On Per_Dept= Dept_No Left joIn WkGrou  On Per_Dept  = Grou_Dept And Per_Group=Grou_No '
              + 'Left joIn Family  On Per_Family= Fami_No Left joIn Nation  On Per_Nati  = Nat_No  Left joIn Degree '
              + 'On Per_Degree= Degr_Id Left joIn Postion On Per_Post  = Post_No Left joIn Postlve  On Per_Post  = Pl_PostNo And Per_Plevel=Pl_No '
              + 'Left joIn House   On Per_House = Hou_No Where Per_Perdid=''%s''  And Depart.Hide<1 and per_indt>=''%s'' and per_indt<= ''%s'' '
              + ' Order By Per_Fact,Per_Dept,Per_Group,Per_Code',
              [User.WorkPeriod, InDtStart, InDtEnd]);
          end;
      end;
      SQL.Add(sSql);
      Open;

      OutCount := RecordCount;
    end;
  except

  end;
end;

end.
