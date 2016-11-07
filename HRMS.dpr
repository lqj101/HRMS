program HRMS;

uses
  Forms,
  MAIN in 'MAIN.PAS' {MainForm} ,
  CHILDWIN in 'CHILDWIN.PAS' {MDIChild} ,
  about in 'about.pas' {AboutBox} ,
  Archives in 'Archives.pas' {ArchivesFrm} ,
  Nation in 'Nation.pas' {Nationfrm} ,
  DM in 'DM.pas' {DMfrm: TDataModule} ,
  UGlobal in 'UGlobal.pas',
  Msg in 'Msg.pas',
  ethnic in 'ethnic.pas' {Ethnicfrm} ,
  Department in 'Department.pas' {Deprtfrm} ,
  PostionMng in 'PostionMng.pas' {PostionFrm} ,
  postoff in 'postoff.pas' {Postofffrm} ,
  Rewards in 'Rewards.pas' {RewardsFrm} ,
  Punish in 'Punish.pas' {PunishFrm} ,
  uShareFunc in 'uShareFunc.pas',
  uExcel in 'uExcel.pas',
  DBGridToExcel in 'DBGridToExcel.pas',
  SelectConditon in 'SelectConditon.pas' {frmSlectCdt_Ach} ,
  BadgePrint in 'BadgePrint.pas' {BadgePrintFrm} ,
  CardMng in 'CardMng.pas' {CardMngFrm} ,
  Logistics in 'Logistics.pas' {LogisticsFrm} ,
  DinnerDataExport in 'DinnerDataExport.pas' {DinnerDataExportFrm} ,
  DinnerDataView in 'DinnerDataView.pas' {DinnerDataViewFrm} ,
  DinnerStatistics in 'DinnerStatistics.pas' {DinnerStatisticsFrm} ,
  DinnerCode in 'DinnerCode.pas' {DinnerCodeFrm} ,
  ArchivesSimple in 'ArchivesSimple.pas' {ArchivesSimpleFrm} ,
  Period in 'Period.pas' {PeriodFrm} ,
  PSWChge in 'PSWChge.pas' {pswFrm} ,
  PostionChange in 'PostionChange.pas' {PostionChangeFrm} ,
  Archives_Out in 'Archives_Out.pas' {Archives_Outfrm} ,
  Login in 'Login.pas' {LoginFrm} ,
  ArchivesFrm_hs1 in 'ArchivesFrm_hs1.pas' {ArchivesFrm_hs} ,
  WDRunOnce in 'WDRunOnce.pas',
  SelectConditon_OUT in 'SelectConditon_OUT.pas' {SelectConditonfrm_OUT} ,
  Accountlaborage in 'Accountlaborage.pas' {AccountlaborageFrm} ,
  DormInfo in 'DormInfo.pas' {DormInfofrm} ,
  HolidaySet in 'HolidaySet.pas' {HolidaySetFrm} ,
  Pertrain in 'Pertrain.pas' {Pertrainfrm} ,
  TrainCode in 'TrainCode.pas' {trainfrm} ,
  Product in 'Product.pas' {ProductFrm} ,
  wkorder in 'wkorder.pas' {wkorderFrm} ,
  Mkask in 'Mkask.pas' {MkaskFrm} ,
  Wages in 'Wages.pas' {WagesFrm} ,
  WKPersonal in 'WKPersonal.pas' {WKPersonalFrm} ,
  WkTimeInput in 'WkTimeInput.pas' {WkTimeInputFrm} ,
  Spcorder in 'Spcorder.pas' {SpcorderFrm};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := '人事管理系统';
  if not AppHasRun(Application.Handle) then
  begin
    Application.CreateForm(TMainForm, MainForm);
    Application.CreateForm(TDMfrm, DMfrm);
    Application.CreateForm(TAboutBox, AboutBox);

    Application.Run;
  end;

end.
