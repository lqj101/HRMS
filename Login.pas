unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Inifiles,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, DM, UGlobal,
  msg;

type
  TLoginFrm = class(TForm)
    Gb1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Label3: TLabel;
    lblDateTips: TLabel;
    lblWrkDt: TLabel;
    CmbUser: TComboBox;
    edtPsw: TEdit;
    CmbPeriod: TComboBox;
    btnLogin: TButton;
    btnCancel: TButton;
    procedure FormCreate(Sender: TObject);
    procedure CmbPeriodChange(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure edtPswKeyPress(Sender: TObject; var Key: Char);

  private
    FUserinfo: TUserWorkInfo;

  public
    { Public declarations }
    function CheckLogin(UserNM, PasW: string): Integer;
  end;

var
  LoginFrm: TLoginFrm;

implementation

{$R *.dfm}

procedure TLoginFrm.FormCreate(Sender: TObject);
var
  sSql: string;
begin
  CmbUser.Items.Clear;
  CmbPeriod.Items.Clear;
  if DMFrm.DoDBConnect then
  begin
    Gb1.Caption := ServerConnectOK;
    with DMFrm.ADOQry1 do
    begin
      Close;
      sql.Clear;
      sSql := Format
        ('select [user_id],[user_name] From login order by user_id Asc', []);
      sql.Add(sSql);
      Open;
      First;
      while not eof do
      begin
        CmbUser.Items.Add(Trim(FieldbyName('user_name').AsString));
        Next;
      end;

      Close;
      sql.Clear;
      sSql := Format
        ('Select [cyl_code] ,[cyl_frdate] ,[cyl_todate], getdate() as SysDate From period where cyl_close = 1 order by cyl_code Desc',
        []);
      sql.Add(sSql);
      Open;
      First;
      while not eof do
      begin
        CmbPeriod.Items.Add(Trim(FieldbyName('cyl_code').AsString));
        User.WrkDate := FieldbyName('SysDate').AsDateTime;
        Next;
      end;
      ServerDate := User.WrkDate;
      CmbPeriod.ItemIndex := 0;
      CmbPeriodChange(nil);
    end;
  end
  else
  begin
    Gb1.Caption := ServerConnectError;
    Gb1.Font.Color := clRed;
  end;
end;

procedure TLoginFrm.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TLoginFrm.btnLoginClick(Sender: TObject);
var
  Rvalue: Integer;
begin
  ModalResult := mrNone;
  FUserinfo.userName := Trim(CmbUser.Text);
  FUserinfo.password := Enc(Trim(edtPsw.Text));
  FUserinfo.WorkPeriod := Trim(CmbPeriod.Text);
  FUserinfo.WrkDate := User.WrkDate;

  Rvalue := { 1;// } CheckLogin(FUserinfo.userName, FUserinfo.password);
  case Rvalue of
    0:
      begin
        MessageBox(0, '用户登陆失败！', '提示', MB_OK);
        edtPsw.SetFocus;
        Exit;
      end;
    1:
      begin
        FUserinfo.Login := True;
        User := FUserinfo;
        ModalResult := mrOk;
      end;
  end;
end;

function TLoginFrm.CheckLogin(UserNM, PasW: string): Integer;
begin
  with DMFrm.ADOQry2 do
  begin
    Close;
    sql.Clear;
    sql.Add(Format
      ('select *  from  login where [user_name] =''%s''  and  [password2] = ''%s'' ',
      [UserNM, PasW]));
    Open;
    First;
    if RecordCount < 1 then
    begin
      Result := 0;
      Exit;
    end
    else
    begin
      Result := 1;
      FUserinfo.userId := Trim(FieldbyName('user_id').AsString);

      { sql.Clear;
        sql.Add(Format('select *  from  sysman where [sys_name] =''%s'' ',
        [UserNM]));
        Open;
        First;
        FUserinfo.power := Trim(FieldbyName('sys_work').AsString); }
    end;
  end;
end;

procedure TLoginFrm.CmbPeriodChange(Sender: TObject);
var
  StDate, EndDate: string;
begin
  User.WrkDate := ServerDate;
  with DMFrm.ADOQry1 do
  begin
    if Locate('cyl_code', Trim(CmbPeriod.Text), []) then
    begin
      FUserinfo.WrkStarT := FieldbyName('cyl_frdate').AsDateTime;
      FUserinfo.WrkEndT := FieldbyName('cyl_todate').AsDateTime;

      StDate := DateToStr(FUserinfo.WrkStarT);
      EndDate := DateToStr(FUserinfo.WrkEndT);
      lblDateTips.Caption := StDate + '  -  ' + EndDate;

      if not((User.WrkDate >= FUserinfo.WrkStarT) and
        (User.WrkDate <= FUserinfo.WrkEndT)) then
        User.WrkDate := FUserinfo.WrkEndT;

      lblWrkDt.Caption := DateToStr(User.WrkDate);
    end;
  end;
end;

procedure TLoginFrm.edtPswKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btnLogin.Click;
end;

end.
