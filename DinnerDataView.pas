unit DinnerDataView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, UGlobal, dm, DBGridToExcel,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ExtCtrls,
  Data.DB, Data.Win.ADODB, Vcl.ComCtrls, Vcl.StdCtrls, RzStatus, RzPanel,
  EhLibVCL;

type
  TDinnerDataViewFrm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    DS: TDataSource;
    ADOQry: TADOQuery;
    edt_WorkNo: TEdit;
    edt_CardNo: TEdit;
    Label10: TLabel;
    Label9: TLabel;
    edt_Name: TEdit;
    Label8: TLabel;
    Label13: TLabel;
    Label1: TLabel;
    edt_DeviceNo: TEdit;
    dtpk_CardStar: TDateTimePicker;
    edt_Depart: TEdit;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    SD1: TSaveDialog;
    RzStatusBar1: TRzStatusBar;
    RzPs: TRzProgressStatus;
    CheckBox1: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure edt_NameKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    FSecletCondition: string;
    procedure SetProgress(const Position: Integer);
    function SelectDinnerData(Columu, LocateStr: string;
      IsFiltered: Boolean): Boolean;
  public
    { Public declarations }
  end;

var
  DinnerDataViewFrm: TDinnerDataViewFrm;

implementation

{$R *.dfm}

procedure TDinnerDataViewFrm.Button1Click(Sender: TObject);
begin
  if not CheckBox1.Checked then
  begin
    FSecletCondition := '';
    SelectDinnerData('', '', False);
  end
  else
  begin
    FSecletCondition := Format(' and Per_Name=''%s''  ', [Trim(edt_Name.Text)]);
    SelectDinnerData('', '', False);
  end;
end;

procedure TDinnerDataViewFrm.Button2Click(Sender: TObject);
begin
  DBGridToExcel_A(DBGridEh1, SD1.FileName, Self.Caption + '(' + User.WorkPeriod
    + ')', SetProgress);
end;

procedure TDinnerDataViewFrm.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if gdSelected in State then
    DBGridEh1.Canvas.Brush.Color := clMoneyGreen;

  (Sender as TDBGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TDinnerDataViewFrm.DSDataChange(Sender: TObject; Field: TField);
begin
  if ADOQry.Active then
    try
      with ADOQry do
      begin
        edt_Depart.Text := Trim(FieldByName('Dept_Name').AsString);
        edt_Name.Text := Trim(FieldByName('per_name').AsString);
        edt_WorkNo.Text := Trim(FieldByName('per_code').AsString);
        edt_CardNo.Text := Trim(FieldByName('per_cardcd').AsString);
        dtpk_CardStar.DateTime := FieldByName('sou_date').AsDateTime;
        edt_DeviceNo.Text := Trim(FieldByName('sou_machid').AsString);
      end;
    except

    end;
end;

procedure TDinnerDataViewFrm.edt_NameKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    SelectDinnerData('Per_Name', Trim(edt_Name.Text), True);
  end;
end;

procedure TDinnerDataViewFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TDinnerDataViewFrm.FormCreate(Sender: TObject);
begin
  if DMfrm.DoDBConnect then
  begin
    ADOQry.Connection := DMfrm.ADOCon;
    FSecletCondition := '';
    SelectDinnerData('', '', False);
  end;
end;

function TDinnerDataViewFrm.SelectDinnerData(Columu, LocateStr: string;
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
        ('Select FSource.*,Per_Dept,Per_Name,Per_Code,Per_Cardcd,Fact_Sname,Dept_Name,Grou_Name From FSource '
        + 'Left Outer Join Person  On Per_Number= Sou_Number And Sou_Perdid=Per_Perdid '
        + 'Left Outer Join Factory On Per_Fact  = Fact_Code Left Outer Join Depart  On Per_Dept  = Dept_No '
        + 'Left Outer Join Wkgrou  On Per_Dept  = Grou_Dept And Per_Group  =Grou_No '
        + 'Where Sou_Perdid=''%s''  %s  Order By Per_Dept,Sou_Cardcd,Sou_Date',
        [User.WorkPeriod, FSecletCondition]);

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

procedure TDinnerDataViewFrm.SetProgress(const Position: Integer);
begin
  RzPs.percent := Position;
end;

end.
