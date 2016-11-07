unit Archives_Out;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, msg, SelectConditon_OUT, DBGridToExcel,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh, UGlobal,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Data.Win.ADODB, RzStatus, RzPanel, dm,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  GridsEh, DBAxisGridsEh, DBGridEh, EhLibVCL;

type
  TArchives_Outfrm = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    pnl_Edite: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
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
    Label22: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label24: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Image1: TImage;
    Label46: TLabel;
    Label47: TLabel;
    Label31: TLabel;
    cmbCompany: TComboBox;
    cmbDepart: TComboBox;
    cmbGroup: TComboBox;
    cmbNation: TComboBox;
    cmbPostion: TComboBox;
    CmbDegree: TComboBox;
    cmbEthnic: TComboBox;
    edt_Name: TEdit;
    edt_WorkNo: TEdit;
    edt_CardNo: TEdit;
    dtpk_IdtyEnd: TDateTimePicker;
    dtpk_EntryWrkDay: TDateTimePicker;
    dtpk_ContractStartDay: TDateTimePicker;
    dtpk_ContractEndDay: TDateTimePicker;
    cmbMarry: TComboBox;
    cmbSex: TComboBox;
    dtpk_Bregular: TDateTimePicker;
    dtpk_leaveofficeDay: TDateTimePicker;
    cmbPayType: TComboBox;
    cmbDinner: TComboBox;
    edt_eml: TEdit;
    edt_hmAdrs: TEdit;
    edt_currtAdrs: TEdit;
    edt_findAdrs: TEdit;
    edt_identityCard: TEdit;
    edt_Major: TEdit;
    edt_Tel1: TEdit;
    edt_liaisons: TEdit;
    edt_Guarantee: TEdit;
    mm_Remark: TMemo;
    cmbPostoff: TComboBox;
    edt_Company: TEdit;
    edt_Depart: TEdit;
    edt_Group: TEdit;
    edt_Nation: TEdit;
    edt_Ethnic: TEdit;
    edt_Postion: TEdit;
    edt_Degree: TEdit;
    edt_Probation: TEdit;
    edt_School: TEdit;
    edt_Tel3: TEdit;
    edt_Age: TEdit;
    dtpk_IdtyStar: TDateTimePicker;
    edt_wrkStaus: TEdit;
    edt_WrkAge: TEdit;
    ckb_stay: TCheckBox;
    ckb_Clock: TCheckBox;
    dtpk_BirthDay: TDateTimePicker;
    edt_House: TEdit;
    BitBtn1: TBitBtn;
    dtpk_levefacDate: TDateTimePicker;
    cmbTrial: TComboBox;
    ckb_cardBck: TCheckBox;
    edt_GZCard: TEdit;
    edt_SBCard: TEdit;
    ckb_blacklist: TCheckBox;
    btnDelete: TButton;
    btnInsert: TButton;
    btnModify: TButton;
    pnl_Ok_C: TPanel;
    btnOK: TButton;
    btnCancel: TButton;
    btnSelect: TButton;
    Button2: TButton;
    btnCopy: TButton;
    btnRefrash: TButton;
    btn_importAttend: TButton;
    RzStatusBar1: TRzStatusBar;
    RzPs: TRzProgressStatus;
    SD1: TSaveDialog;
    DS: TDataSource;
    ADOQry: TADOQuery;
    ADOQrySerch: TADOQuery;
    lblCount: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure btnSelectClick(Sender: TObject);
    procedure btnRefrashClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    FSelectCondition: String;
     procedure SetProgress(const Position: Integer);
    function SelectHRData(Columu, LocateStr: string;
      IsFiltered: Boolean): Boolean;
  public
    { Public declarations }
  end;

var
  Archives_Outfrm: TArchives_Outfrm;

implementation

{$R *.dfm}

procedure TArchives_Outfrm.btnRefrashClick(Sender: TObject);
begin
  FSelectCondition := '';
  SelectHRData('', '', False);
end;

procedure TArchives_Outfrm.btnSelectClick(Sender: TObject);
var
  SelectCdtFrm: TSelectConditonfrm_OUT;
begin
  SelectCdtFrm := TSelectConditonfrm_OUT.Create(nil);
  if SelectCdtFrm.ShowModal = mrOk then
  begin
    FSelectCondition := SelectCdtFrm.FCondition;
    SelectHRData('', '', False);
  end;
end;

procedure TArchives_Outfrm.Button2Click(Sender: TObject);
begin
    DBGridToExcel_A(DBGridEh1, SD1.FileName, Self.Caption, SetProgress);
end;

procedure TArchives_Outfrm.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if DBGridEh1.Fields[37].Text = '‘⁄ ‘”√' then
    (Sender as TDBGridEh).Canvas.Font.Color := clGreen;

  if Trim(DBGridEh1.Fields[24].Text) <> '' then
    (Sender as TDBGridEh).Canvas.Font.Color := clRed;

  if gdSelected in State then
    DBGridEh1.Canvas.Brush.Color := clMoneyGreen;

  (Sender as TDBGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TArchives_Outfrm.DSDataChange(Sender: TObject; Field: TField);
begin
  if ADOQry.Active then
    try
      with ADOQry do
      begin
        // CurrentSelectPrsn := Trim(FieldByName('per_id').AsString);
        // CurrentSelectNumber := Trim(FieldByName('per_number').AsString);
        cmbCompany.Text := '01';
        edt_Company.Text := 'ª™‘¡±¶';

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
        // edt_WrkAge.Text := Trim(FieldByName('per_wrkage').AsString);
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

        if not FileExists(Trim(FieldByName('per_photo').AsString)) then
          Image1.Picture.LoadFromFile(AppPath + '\pic\no-pic.png')
        else
          Image1.Picture.LoadFromFile(Trim(FieldByName('per_photo').AsString));

        if not FieldByName('per_indt').isnull then
          dtpk_EntryWrkDay.Date := FieldByName('per_indt').AsDateTime;

        if not FieldByName('per_outdt').isnull then
          dtpk_leaveofficeDay.Date := FieldByName('per_outdt').AsDateTime;

        if not FieldByName('per_comdt').isnull then
          dtpk_IdtyStar.Date := FieldByName('per_comdt').AsDateTime;

        if not FieldByName('per_birth').isnull then
          dtpk_BirthDay.Date := FieldByName('per_birth').AsDateTime;

        if not FieldByName('per_htfrdt').isnull then
          dtpk_ContractStartDay.Date := FieldByName('per_htfrdt').AsDateTime;

        if not FieldByName('per_httodt').isnull then
          dtpk_ContractEndDay.Date := FieldByName('per_httodt').AsDateTime;

        if not FieldByName('per_trdt').isnull then
          dtpk_Bregular.Date := FieldByName('per_trdt').AsDateTime;

        if not FieldByName('Per_Jobdt').isnull then
          dtpk_IdtyEnd.Date := FieldByName('Per_Jobdt').AsDateTime;
      end;
    except

    end;
end;

procedure TArchives_Outfrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TArchives_Outfrm.FormCreate(Sender: TObject);
begin
  if DMfrm.DoDBConnect then
  begin
    ADOQry.Connection := DMfrm.ADOCon;
    ADOQrySerch.Connection := DMfrm.ADOCon;
    FSelectCondition := '';
    SelectHRData('', '', False);
  end;
end;

function TArchives_Outfrm.SelectHRData(Columu, LocateStr: string;
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
        ('Select perout.*,FLOOR(datediff(DY,per_birth,getdate())/365.25) as per_age,'
        + 'Dept_Name,Grou_Name,Nat_Priv,Fami_Name,Post_Name,Post_Level,Pl_Name,Degr_Name,hou_tel From perout '
        + ' Left joIn Depart  On Per_Dept= Dept_No Left joIn WkGrou  On Per_Dept  = Grou_Dept And Per_Group=Grou_No '
        + 'Left joIn Family  On Per_Family= Fami_No Left joIn Nation  On Per_Nati  = Nat_No  Left joIn Degree '
        + 'On Per_Degree= Degr_Id Left joIn Postion On Per_Post  = Post_No Left joIn Postlve  On Per_Post  = Pl_PostNo And Per_Plevel=Pl_No '
        + 'Left joIn House   On Per_House = Hou_No  %s Order By Per_Fact,Per_Dept,Per_Group,Per_Code',
        [FSelectCondition]);

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

procedure TArchives_Outfrm.SetProgress(const Position: Integer);
begin
   RzPs.percent := Position;
end;

end.
