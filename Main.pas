unit MAIN;

interface

uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.Controls, Vcl.Menus, Vcl.StdCtrls, Vcl.Dialogs, Vcl.Buttons, postoff,
  Punish, UGlobal, System.Variants, BadgePrint, CardMng, Logistics, IniFiles,
  DinnerDataExport, ArchivesSimple, Period, PSWChge, Login, ShellAPI,
  HolidaySet, Pertrain, TrainCode, Wages, Product, wkorder, Mkask, WkTimeInput,
  Winapi.Messages, Archives, Nation, ethnic, Department, PostionMng, Rewards,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdActns, Vcl.ActnList, Vcl.ToolWin,
  DinnerDataView, PostionChange, Archives_Out, ArchivesFrm_hs1, DormInfo,
  Vcl.ImgList, System.Actions, RzStatus, RzPanel, RzGroupBar, Spcorder,
  DinnerCode, msg, Accountlaborage, dm, Vcl.Imaging.jpeg, Vcl.Grids,
  Vcl.DBGrids, DinnerStatistics, RzTray, System.ImageList, sSkinManager;

type
  TMainForm = class(TForm)
    OpenDialog: TOpenDialog;
    ActLst1: TActionList;
    ImageList1: TImageList;
    MainMenu1: TMainMenu;
    N11: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    N41: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N32: TMenuItem;
    N42: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    actNation: TAction;
    actEthnic: TAction;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    actDeprtm: TAction;
    actPostion: TAction;
    N14: TMenuItem;
    actPostOff: TAction;
    N15: TMenuItem;
    N16: TMenuItem;
    actRewards: TAction;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N27: TMenuItem;
    actPunish: TAction;
    actHrDtail: TAction;
    N20: TMenuItem;
    z1: TMenuItem;
    c1: TMenuItem;
    N22: TMenuItem;
    actBadgePrint: TAction;
    actCardMng: TAction;
    N23: TMenuItem;
    N24: TMenuItem;
    actLogistics: TAction;
    N25: TMenuItem;
    N26: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    actDinnerData: TAction;
    actDinnerDataView: TAction;
    N35: TMenuItem;
    N36: TMenuItem;
    N37: TMenuItem;
    N38: TMenuItem;
    actDinnerStatistics: TAction;
    actDinnerCode: TAction;
    actArchivesSimple: TAction;
    N39: TMenuItem;
    r1: TMenuItem;
    N40: TMenuItem;
    N43: TMenuItem;
    actPeriod: TAction;
    N44: TMenuItem;
    actPswChange: TAction;
    actPostionChge: TAction;
    N45: TMenuItem;
    j1: TMenuItem;
    N46: TMenuItem;
    actArchives_Out: TAction;
    N47: TMenuItem;
    N48: TMenuItem;
    actArchives_hs: TAction;
    N49: TMenuItem;
    Image1: TImage;
    OpenDialog_A: TOpenDialog;
    RzStatusBar1: TRzStatusBar;
    RzSPinfo: TRzStatusPane;
    RzPgStatus: TRzProgressStatus;
    RzCS: TRzClockStatus;
    RzSPUser: TRzStatusPane;
    RzSPperiod: TRzStatusPane;
    N50: TMenuItem;
    RzTrayIcon1: TRzTrayIcon;
    actAccountlaborage: TAction;
    actDormInfo: TAction;
    N51: TMenuItem;
    N52: TMenuItem;
    actHolidaySet: TAction;
    actPerTrain: TAction;
    acttrainCode: TAction;
    sSkinManager1: TsSkinManager;
    N53: TMenuItem;
    N54: TMenuItem;
    N55: TMenuItem;
    N58: TMenuItem;
    N59: TMenuItem;
    N60: TMenuItem;
    N61: TMenuItem;
    N62: TMenuItem;
    N63: TMenuItem;
    N64: TMenuItem;
    N65: TMenuItem;
    actWages: TAction;
    actProduct: TAction;
    actwkorder: TAction;
    actmkask: TAction;
    actSpcorder: TAction;
    actWkTime: TAction;
    Action8: TAction;
    Action9: TAction;
    N67: TMenuItem;
    N66: TMenuItem;
    N68: TMenuItem;
    N69: TMenuItem;
    procedure FileNew1Execute(Sender: TObject);
    procedure FileOpen1Execute(Sender: TObject);
    procedure HelpAbout1Execute(Sender: TObject);
    procedure FileExit1Execute(Sender: TObject);
    procedure actNationExecute(Sender: TObject);
    procedure actEthnicExecute(Sender: TObject);
    procedure actDeprtmExecute(Sender: TObject);
    procedure actPostionExecute(Sender: TObject);
    procedure actPostOffExecute(Sender: TObject);
    procedure actRewardsExecute(Sender: TObject);
    procedure actPunishExecute(Sender: TObject);
    procedure actHrDtailExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actBadgePrintExecute(Sender: TObject);
    procedure actCardMngExecute(Sender: TObject);
    procedure actLogisticsExecute(Sender: TObject);
    procedure actDinnerDataExecute(Sender: TObject);
    procedure actDinnerDataViewExecute(Sender: TObject);
    procedure actDinnerStatisticsExecute(Sender: TObject);
    procedure actDinnerCodeExecute(Sender: TObject);
    procedure actArchivesSimpleExecute(Sender: TObject);
    procedure actPeriodExecute(Sender: TObject);
    procedure actPswChangeExecute(Sender: TObject);
    procedure actPostionChgeExecute(Sender: TObject);
    procedure N40Click(Sender: TObject);
    procedure actArchives_OutExecute(Sender: TObject);
    procedure N47Click(Sender: TObject);
    procedure N48Click(Sender: TObject);
    procedure actArchives_hsExecute(Sender: TObject);
    procedure N36Click(Sender: TObject);
    procedure N38Click(Sender: TObject);
    procedure N37Click(Sender: TObject);
    procedure N49Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N50Click(Sender: TObject);
    procedure actAccountlaborageExecute(Sender: TObject);
    procedure actDormInfoExecute(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure actHolidaySetExecute(Sender: TObject);
    procedure actPerTrainExecute(Sender: TObject);
    procedure acttrainCodeExecute(Sender: TObject);
    procedure actWagesExecute(Sender: TObject);
    procedure actProductExecute(Sender: TObject);
    procedure actwkorderExecute(Sender: TObject);
    procedure actmkaskExecute(Sender: TObject);
    procedure actSpcorderExecute(Sender: TObject);
    procedure actWkTimeExecute(Sender: TObject);
  private
    { Private declarations }
    procedure CreateMDIChild(const Name: string);
    procedure IntDll;
    procedure IntIniFiles;
    procedure ShowLogin;
    procedure IntSysUI;
    procedure DispathUserRight(UserId: String);
    function FindForm(Caption: string): Boolean;
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses CHILDWIN, About;

function TMainForm.FindForm(Caption: string): Boolean;
var
  i: integer;
begin
  Result := True;
  for i := 0 to Self.MDIChildCount do
  begin
    if Self.MDIChildren[i].Caption = Caption then
    begin
      SendMessage(MDIChildren[i].Handle, WM_SYSCOMMAND, SC_RESTORE, 0);
      MDIChildren[i].Enabled := True;
      MDIChildren[i].Show;
      MDIChildren[i].SetFocus;
      MDIChildren[i].BringToFront;
      Result := True;
      Break;
    end
    else
      Result := False;
  end
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DLLHandle <> null then
    freeLibrary(DLLHandle);
end;

procedure TMainForm.IntDll;
var
  DLLPath: string;
begin
  try
    DLLPath := AppPath + '\termb.dll';
    DLLHandle := LoadLibrary(Pchar(DLLPath));
    @mInitComm := GetProcAddress(DLLHandle, 'InitComm');
    @mCloseComm := GetProcAddress(DLLHandle, 'CloseComm');
    @mAuthenticate := GetProcAddress(DLLHandle, 'Authenticate');
    @mRead_Content := GetProcAddress(DLLHandle, 'Read_Content');
    @GetName := GetProcAddress(DLLHandle, 'GetPeopleName');
    @GetSex := GetProcAddress(DLLHandle, 'GetPeopleSex');
    @GetNation := GetProcAddress(DLLHandle, 'GetPeopleNation');
    @GetAddress := GetProcAddress(DLLHandle, 'GetPeopleAddress');
    @GetBirthday := GetProcAddress(DLLHandle, 'GetPeopleBirthday');
    @GetCode := GetProcAddress(DLLHandle, 'GetPeopleIDCode');
    @GetDepartment := GetProcAddress(DLLHandle, 'GetDepartment');
    @GetStartDate := GetProcAddress(DLLHandle, 'GetStartDate');
    @GetEndDate := GetProcAddress(DLLHandle, 'GetEndDate');
    @GetReserve := GetProcAddress(DLLHandle, 'GetReserve');
    @GetPhotoBMP := GetProcAddress(DLLHandle, 'GetPhotoBMP');
    @SetBaseData := GetProcAddress(DLLHandle, 'SetBaseData');
    @SetPhotoData := GetProcAddress(DLLHandle, 'SetPhotoData');
  except
    Application.Terminate;
  end;
end;

procedure TMainForm.IntIniFiles;
var
  FPath: String;
  tmpIniFiles: TIniFile;
begin
  FPath := ExtractFilePath(Paramstr(0));
  if not Fileexists(FPath + 'Sys.ini') then
  begin
    tmpIniFiles := TIniFile.Create(ExtractFilePath(Paramstr(0)) + 'Sys.ini');
    tmpIniFiles.WriteString('Server', 'IP', '192.168.20.243');
  end
  else
  begin
    tmpIniFiles := TIniFile.Create(ExtractFilePath(Paramstr(0)) + 'Sys.ini');
    ServerName := tmpIniFiles.ReadString('Server', 'IP', '');
  end;
  tmpIniFiles.Free;
end;

procedure TMainForm.IntSysUI;
begin
  RzSPperiod.Caption := Format(UI_Period + User.WorkPeriod + ' （' +
    FormatdateTime('YYYY-MM-DD', User.WrkStarT) + '---' +
    FormatdateTime('YYYY-MM-DD', User.WrkEndT) + '）', []);
  RzSPUser.Caption := Format(UI_USerName + User.userName, []);
end;

procedure TMainForm.N13Click(Sender: TObject);
begin
  //
end;

procedure TMainForm.N36Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'Calc.exe', nil, nil, SW_SHOWNORMAL);
end;

procedure TMainForm.N37Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'mspaint.exe', nil, nil, SW_SHOWNORMAL);
end;

procedure TMainForm.N38Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'notepad.exe', nil, nil, SW_SHOWNORMAL);
end;

procedure TMainForm.N3Click(Sender: TObject);
begin
  AboutBox.ShowModal;
end;

procedure TMainForm.N40Click(Sender: TObject);
begin
  //
end;

procedure TMainForm.N47Click(Sender: TObject);
begin
  ShowLogin;
end;

procedure TMainForm.N48Click(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to Self.MDIChildCount do
  begin
    if MDIChildren[i] <> nil then
      MDIChildren[i].Close;
  end;
  FillChar(User, sizeof(User), 0);

  for i := 0 to ActLst1.ActionCount - 1 do
    TAction(ActLst1.Actions[i]).Enabled := False;

  ShowLogin;
end;

procedure TMainForm.N49Click(Sender: TObject);
var
  tmpIniFiles: TIniFile;
begin
  if OpenDialog_A.Execute then
  begin
    Image1.picture.Assign(nil);
    Image1.picture.LoadFromFile(OpenDialog_A.FileName);
    Application.processMessages;

    tmpIniFiles := TIniFile.Create(ExtractFilePath(Paramstr(0)) + 'Sys.ini');
    tmpIniFiles.WriteString('WallPaper', 'Path', OpenDialog_A.FileName);
    tmpIniFiles.Free;
  end;
end;

procedure TMainForm.N50Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TMainForm.DispathUserRight(UserId: String);
var
  i: integer;
begin
  for i := 0 to ActLst1.ActionCount - 1 do
    TAction(ActLst1.Actions[i]).Enabled := False;

  with DMfrm.ADOQry2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add(Format('Select menu_id from userright where user_id =''%s'' ',
      [UserId]));
    Open;
    First;

    for i := 0 to ActLst1.ActionCount - 1 do
    begin
      if Locate('menu_id', TAction(ActLst1.Actions[i]).Category, []) then
        TAction(ActLst1.Actions[i]).Enabled := True;
    end;
    Close;
  end;
  N48.Enabled := True;
end;

procedure TMainForm.ShowLogin;
var
  LoginForm: TLoginFrm;

begin
  LoginForm := TLoginFrm.Create(nil);
  if LoginForm.ShowModal = MrOk then
  begin
    IntSysUI;
    DispathUserRight(User.UserId);
  end;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  AppPath := ExtractFiledir(Application.exeName);
  IntDll;
  IntIniFiles;
end;

procedure TMainForm.actAccountlaborageExecute(Sender: TObject);
var
  ChdFrm: TAccountlaborageFrm;
begin
  if FindForm('离职工资结算') = False then
  begin
    ChdFrm := TAccountlaborageFrm.Create(Application);
    ChdFrm.WindowState := wsNormal;
  end;
end;

procedure TMainForm.actArchivesSimpleExecute(Sender: TObject);
var
  ChdFrm: TArchivesSimpleFrm;
begin
  if FindForm('人事档案查询') = False then
  begin
    ChdFrm := TArchivesSimpleFrm.Create(Application);
    ChdFrm.WindowState := wsNormal;
  end;
end;

procedure TMainForm.actArchives_hsExecute(Sender: TObject);
var
  ChdFrm: TArchivesFrm_hs;
begin
  if FindForm('人事档案历史') = False then
  begin
    ChdFrm := TArchivesFrm_hs.Create(Application);
    ChdFrm.WindowState := wsNormal;
  end;
end;

procedure TMainForm.actArchives_OutExecute(Sender: TObject);
var
  ChdFrm: TArchives_Outfrm;
begin
  if FindForm('离职员工汇总') = False then
  begin
    ChdFrm := TArchives_Outfrm.Create(Application);
    ChdFrm.WindowState := wsNormal;
  end;
end;

procedure TMainForm.actBadgePrintExecute(Sender: TObject);
var
  ChdFrm: TBadgePrintFrm;
begin
  if FindForm('厂牌打印') = False then
  begin
    ChdFrm := TBadgePrintFrm.Create(Application);
    ChdFrm.WindowState := wsNormal;
  end;
end;

procedure TMainForm.actCardMngExecute(Sender: TObject);
var
  ChdFrm: TCardMngFrm;
begin
  if FindForm('补办发卡') = False then
  begin
    ChdFrm := TCardMngFrm.Create(Application);
    ChdFrm.WindowState := wsNormal;
  end;
end;

procedure TMainForm.actDeprtmExecute(Sender: TObject);
var
  ChdFrm: TDeprtfrm;
begin
  if FindForm('组织结构代码') = False then
  begin
    ChdFrm := TDeprtfrm.Create(Application);
    ChdFrm.WindowState := wsNormal;
  end;

end;

procedure TMainForm.actDinnerCodeExecute(Sender: TObject);
var
  ChdFrm: TDinnerCodeFrm;
begin
  if FindForm('餐类代码管理') = False then
  begin
    ChdFrm := TDinnerCodeFrm.Create(Application);
    ChdFrm.WindowState := wsNormal;
  end;
end;

procedure TMainForm.actDinnerDataExecute(Sender: TObject);
var
  ChdFrm: TDinnerDataExportFrm;
begin
  if FindForm('用餐数据读入') = False then
  begin
    ChdFrm := TDinnerDataExportFrm.Create(Application);
    ChdFrm.WindowState := wsNormal;
  end;
end;

procedure TMainForm.actDinnerDataViewExecute(Sender: TObject);
var
  ChdFrm: TDinnerDataViewFrm;
begin
  if FindForm('就餐原始记录') = False then
  begin
    ChdFrm := TDinnerDataViewFrm.Create(Application);
    ChdFrm.WindowState := wsNormal;
  end;

end;

procedure TMainForm.actDinnerStatisticsExecute(Sender: TObject);
var
  ChdFrm: TDinnerStatisticsFrm;
begin
  if FindForm('就餐数据统计') = False then
  begin
    ChdFrm := TDinnerStatisticsFrm.Create(Application);
    ChdFrm.WindowState := wsNormal;
  end;
end;

procedure TMainForm.actDormInfoExecute(Sender: TObject);
var
  ChdFrm: TDormInfofrm;
begin
  if FindForm('宿舍综合信息') = False then
  begin
    ChdFrm := TDormInfofrm.Create(Application);
    ChdFrm.WindowState := wsNormal;
  end;
end;

procedure TMainForm.actEthnicExecute(Sender: TObject);
var
  ChdFrm: TEthnicfrm;
begin
  if FindForm('民族代码设置') = False then
  begin
    ChdFrm := TEthnicfrm.Create(Application);
    ChdFrm.WindowState := wsNormal;
  end;
end;

procedure TMainForm.actHolidaySetExecute(Sender: TObject);
var
  ChdFrm: THolidaySetFrm;
begin
  if FindForm('节假日设置') = False then
  begin
    ChdFrm := THolidaySetFrm.Create(Application);
    ChdFrm.WindowState := wsNormal;
  end;
end;

procedure TMainForm.actHrDtailExecute(Sender: TObject);
var
  ChdFrm: TArchivesFrm;
begin
  if FindForm('人事档案详细') = False then
  begin
    ChdFrm := TArchivesFrm.Create(Application);
    ChdFrm.WindowState := wsNormal;
  end;
end;

procedure TMainForm.actLogisticsExecute(Sender: TObject);
var
  ChdFrm: TLogisticsFrm;
begin
  if FindForm('人事档案后勤') = False then
  begin
    ChdFrm := TLogisticsFrm.Create(Application);
    ChdFrm.WindowState := wsNormal;
  end;
end;

procedure TMainForm.actmkaskExecute(Sender: TObject);
var
  ChdFrm: TMkaskFrm;
begin
  if FindForm('生产制造令') = False then
  begin
    ChdFrm := TMkaskFrm.Create(Application);
    ChdFrm.WindowState := wsNormal;
  end;
end;

procedure TMainForm.actNationExecute(Sender: TObject);
var
  ChdFrm: TNationfrm;
begin
  if FindForm('籍贯代码设置') = False then
  begin
    ChdFrm := TNationfrm.Create(Application);
    ChdFrm.WindowState := wsNormal;
  end;
end;

procedure TMainForm.actPeriodExecute(Sender: TObject);
var
  ChdFrm: TPeriodFrm;
begin
  if FindForm('周期管理') = False then
  begin
    ChdFrm := TPeriodFrm.Create(Application);
    ChdFrm.WindowState := wsNormal;
  end;
end;

procedure TMainForm.actPerTrainExecute(Sender: TObject);
var
  ChdFrm: TPertrainfrm;
begin
  if FindForm('员工培训记录') = False then
  begin
    ChdFrm := TPertrainfrm.Create(Application);
    ChdFrm.WindowState := wsNormal;
  end;
end;

procedure TMainForm.actPostionChgeExecute(Sender: TObject);
var
  ChdFrm: TPostionChangeFrm;
begin
  if FindForm('调职调岗') = False then
  begin
    ChdFrm := TPostionChangeFrm.Create('0', '0', '0', '0', '0');
    ChdFrm.WindowState := wsNormal;
  end;
end;

procedure TMainForm.actPostionExecute(Sender: TObject);
var
  ChdFrm: TPostionFrm;
begin
  if FindForm('职位代码设置') = False then
  begin
    ChdFrm := TPostionFrm.Create(Application);
    ChdFrm.WindowState := wsNormal;
  end;
end;

procedure TMainForm.actPostOffExecute(Sender: TObject);
var
  ChdFrm: TPostofffrm;
begin
  if FindForm('离职类别定义') = False then
  begin
    ChdFrm := TPostofffrm.Create(Application);
    ChdFrm.WindowState := wsNormal;
  end;
end;

procedure TMainForm.actProductExecute(Sender: TObject);
var
  ChdFrm: TProductFrm;
begin
  if FindForm('计件产品代码') = False then
  begin
    ChdFrm := TProductFrm.Create(Application);
    ChdFrm.WindowState := wsNormal;
  end;
end;

procedure TMainForm.actPswChangeExecute(Sender: TObject);
var
  ChdFrm: TpswFrm;
begin
  if FindForm('密码更改') = False then
  begin
    ChdFrm := TpswFrm.Create(Application);
    ChdFrm.WindowState := wsNormal;
  end;
end;

procedure TMainForm.actPunishExecute(Sender: TObject);
var
  ChdFrm: TPunishFrm;
begin
  if FindForm('惩罚类别定义') = False then
  begin
    ChdFrm := TPunishFrm.Create(Application);
    ChdFrm.WindowState := wsNormal;
  end;
end;

procedure TMainForm.actRewardsExecute(Sender: TObject);
var
  ChdFrm: TRewardsFrm;
begin
  if FindForm('奖励类别定义') = False then
  begin
    ChdFrm := TRewardsFrm.Create(Application);
    ChdFrm.WindowState := wsNormal;
  end;
end;

procedure TMainForm.actSpcorderExecute(Sender: TObject);
var
  ChdFrm: TSpcorderFrm;
begin
  if FindForm('特型产品工序定额') = False then
  begin
    ChdFrm := TSpcorderFrm.Create(Application);
    ChdFrm.WindowState := wsNormal;
  end;
  // 323 Spcorder
end;

procedure TMainForm.acttrainCodeExecute(Sender: TObject);
var
  ChdFrm: Ttrainfrm;
begin
  if FindForm('培训课程代码') = False then
  begin
    ChdFrm := Ttrainfrm.Create(Application);
    ChdFrm.WindowState := wsNormal;
  end;
end;

procedure TMainForm.actWagesExecute(Sender: TObject);
var
  ChdFrm: TWagesFrm;
begin
  if FindForm('计件工价设定') = False then
  begin
    ChdFrm := TWagesFrm.Create(Application);
    ChdFrm.WindowState := wsNormal;
  end;
end;

procedure TMainForm.actwkorderExecute(Sender: TObject);
var
  ChdFrm: TwkorderFrm;
begin
  if FindForm('产品工序定额') = False then
  begin
    ChdFrm := TwkorderFrm.Create(Application);
    ChdFrm.WindowState := wsNormal;
  end;
end;

procedure TMainForm.actWkTimeExecute(Sender: TObject);
var
  ChdFrm: TWkTimeInputFrm;
begin
  if FindForm('计件数据录入') = False then
  begin
    ChdFrm := TWkTimeInputFrm.Create(Application);
    ChdFrm.WindowState := wsNormal;
  end;
end;

procedure TMainForm.CreateMDIChild(const Name: string);
begin
  //
end;

procedure TMainForm.FileNew1Execute(Sender: TObject);
begin
  CreateMDIChild('NONAME' + IntToStr(MDIChildCount + 1));
end;

procedure TMainForm.FileOpen1Execute(Sender: TObject);
begin
  if OpenDialog.Execute then
    CreateMDIChild(OpenDialog.FileName);
end;

procedure TMainForm.HelpAbout1Execute(Sender: TObject);
begin
  AboutBox.ShowModal;
end;

procedure TMainForm.FileExit1Execute(Sender: TObject);
begin
  Close;
end;

end.
