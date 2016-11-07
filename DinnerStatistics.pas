unit DinnerStatistics;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, DM, msg, DBGridToExcel, UGlobal,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Data.Win.ADODB, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, RzStatus, RzPanel,
  EhLibVCL;

type
  TDinnerStatisticsFrm = class(TForm)
    Panel1: TPanel;
    Label8: TLabel;
    Label2: TLabel;
    edt_Name: TEdit;
    edt_Depart: TEdit;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    DS: TDataSource;
    ADOQry: TADOQuery;
    btnRefrash: TButton;
    edt_BrkfstTotal: TEdit;
    edt_BrkfstTime: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    edt_LunchTime: TEdit;
    edt_lunchTotal: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    edt_DinnerTime: TEdit;
    edt_dinnerTotal: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    edt_suprTotal: TEdit;
    edt_sprtime: TEdit;
    Label11: TLabel;
    edt_Total: TEdit;
    Button1: TButton;
    lblCount: TLabel;
    SD1: TSaveDialog;
    RzStatusBar1: TRzStatusBar;
    RzPs: TRzProgressStatus;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnRefrashClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    FBrkfstPrice: Double;
    FLunchPrice: Double;
    FDinnerPrice: Double;
    FSupperPrice: Double;
    procedure SetProgress(const Position: Integer);
    procedure IntMealData;
  public
    { Public declarations }
  end;

var
  DinnerStatisticsFrm: TDinnerStatisticsFrm;

implementation

{$R *.dfm}

procedure TDinnerStatisticsFrm.btnRefrashClick(Sender: TObject);
begin
  with ADOQry do
  begin
    Close;
    Parameters.Clear;
    SQL.Clear;
    SQL.Add('Exec DinnerStatistics :A, :B, :C, :D, :E ');

    Parameters.Items[0].Value := User.WorkPeriod;
    Parameters.Items[1].Value := FBrkfstPrice;
    Parameters.Items[2].Value := FLunchPrice;
    Parameters.Items[3].Value := FDinnerPrice;
    Parameters.Items[4].Value := FSupperPrice;

    Prepared := true;
    Open;

    DS.Enabled := true;

    lblCount.Caption := Format(RecordCountShow, [RecordCount]);
  end;
end;

procedure TDinnerStatisticsFrm.Button1Click(Sender: TObject);
begin
  DBGridToExcel_A(DBGridEh1, SD1.FileName, Self.Caption, SetProgress);
end;

procedure TDinnerStatisticsFrm.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if gdSelected in State then
    DBGridEh1.Canvas.Brush.Color := clMoneyGreen;

  (Sender as TDBGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TDinnerStatisticsFrm.DSDataChange(Sender: TObject; Field: TField);
begin
  if ADOQry.Active then
    try
      with ADOQry do
      begin
        edt_Depart.Text := Trim(FieldByName('V_dept_name').AsString);
        edt_Name.Text := Trim(FieldByName('V_per_name').AsString);

        edt_BrkfstTime.Text := FieldByName('V_BrkfstTime').AsString;
        edt_BrkfstTotal.Text := FieldByName('V_BrkfstSum').AsString;

        edt_LunchTime.Text := FieldByName('V_LunchTime').AsString;
        edt_lunchTotal.Text := FieldByName('V_LunchSum').AsString;

        edt_DinnerTime.Text := FieldByName('V_DinnerTime').AsString;
        edt_dinnerTotal.Text := FieldByName('V_DinnerSum').AsString;

        edt_sprtime.Text := FieldByName('V_SupperTime').AsString;
        edt_suprTotal.Text := FieldByName('V_SupperSum').AsString;

        edt_Total.Text := FieldByName('V_Sum').AsString;
      end;
    except

    end;
end;

procedure TDinnerStatisticsFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TDinnerStatisticsFrm.FormCreate(Sender: TObject);
begin
  if DMfrm.DoDBConnect then
  begin
    ADOQry.Connection := DMfrm.ADOCon;
    IntMealData;
  end;
end;

procedure TDinnerStatisticsFrm.IntMealData;
begin
  with ADOQry do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select * from meal order by ml_code');
    Open;
    First;

    while Not Eof do
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
end;

procedure TDinnerStatisticsFrm.SetProgress(const Position: Integer);
begin
  RzPs.percent := Position;
end;

end.
