unit ArchivesSimple;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Dm, UGlobal, DBGridToExcel, msg,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, RzStatus, RzPanel, Data.DB, Data.Win.ADODB,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ExtCtrls, Vcl.StdCtrls, EhLibVCL;

type
  TArchivesSimpleFrm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    DS: TDataSource;
    ADOQry: TADOQuery;
    RzStatusBar1: TRzStatusBar;
    RzPs: TRzProgressStatus;
    RGp: TRadioGroup;
    Button1: TButton;
    Button2: TButton;
    SD1: TSaveDialog;
    lblCount: TLabel;
    cmbMth: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure RGpClick(Sender: TObject);
  private
    { Private declarations }
    function SelectHRData(Columu, LocateStr: string; FilterType: Integer;
      IsFiltered: Boolean): Boolean;
    procedure SetProgress(const Position: Integer);
  public
    { Public declarations }
  end;

var
  ArchivesSimpleFrm: TArchivesSimpleFrm;

implementation

{$R *.dfm}

procedure TArchivesSimpleFrm.Button1Click(Sender: TObject);
begin
  SelectHRData('', '', RGp.ItemIndex, False);
end;

procedure TArchivesSimpleFrm.Button2Click(Sender: TObject);
begin
  DBGridToExcel_A(DBGridEh1, SD1.FileName, RGp.Items[RGp.ItemIndex] + '(' +
    User.WorkPeriod + ')', SetProgress);
end;

procedure TArchivesSimpleFrm.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if gdSelected in State then
    DBGridEh1.Canvas.Brush.Color := clMoneyGreen;

  (Sender as TDBGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TArchivesSimpleFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TArchivesSimpleFrm.FormCreate(Sender: TObject);
begin
  if DMfrm.DoDBConnect then
    ADOQry.Connection := DMfrm.ADOCon;
end;

procedure TArchivesSimpleFrm.RGpClick(Sender: TObject);
begin
  if RGp.ItemIndex = 2 then
    cmbMth.Enabled := True
  else
    cmbMth.Enabled := False;
end;

function TArchivesSimpleFrm.SelectHRData(Columu, LocateStr: string;
  FilterType: Integer; IsFiltered: Boolean): Boolean;
var
  sSql, OutDtStart, OutDtEnd, InDtStart, InDtEnd: String;
  MonthValue: Integer;
begin
  Result := True;
  try
    with ADOQry do
    begin
      Close;
      Filtered := IsFiltered;
      SQL.Clear;
      case FilterType of

        0: // 生日
          begin
            MonthValue := StrToInt(Copy(User.WorkPeriod, 5, 2));
            sSql := Format
              ('Select Person.*,FLOOR(datediff(DY,per_birth,getdate())/365.25) as per_age, FLOOR(datediff(DY,per_indt,getdate())/365.25) as per_wrkage,'
              + 'Dept_Name,Grou_Name,Nat_Priv,Fami_Name,Post_Name,Post_Level,Pl_Name,Degr_Name,hou_tel From Person '
              + ' Left joIn Depart  On Per_Dept= Dept_No Left joIn WkGrou  On Per_Dept  = Grou_Dept And Per_Group=Grou_No '
              + 'Left joIn Family  On Per_Family= Fami_No Left joIn Nation  On Per_Nati  = Nat_No  Left joIn Degree '
              + 'On Per_Degree= Degr_Id Left joIn Postion On Per_Post  = Post_No Left joIn Postlve  On Per_Post  = Pl_PostNo And Per_Plevel=Pl_No '
              + 'Left joIn House   On Per_House = Hou_No Where Per_Perdid=''%s'' And Depart.Hide<1 and DATEPART(mm, per_birth)=%d '
              + ' Order By Per_Fact,Per_Dept,Per_Group,Per_Code',
              [User.WorkPeriod, MonthValue]);
          end;

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
            MonthValue := StrToInt(cmbMth.Text);
            sSql := Format
              ('Select Person.*,FLOOR(datediff(DY,per_birth,getdate())/365.25) as per_age, FLOOR(datediff(DY,per_indt,getdate())/365.25) as per_wrkage,'
              + 'Dept_Name,Grou_Name,Nat_Priv,Fami_Name,Post_Name,Post_Level,Pl_Name,Degr_Name,hou_tel From Person '
              + ' Left joIn Depart  On Per_Dept= Dept_No Left joIn WkGrou  On Per_Dept  = Grou_Dept And Per_Group=Grou_No '
              + 'Left joIn Family  On Per_Family= Fami_No Left joIn Nation  On Per_Nati  = Nat_No  Left joIn Degree '
              + 'On Per_Degree= Degr_Id Left joIn Postion On Per_Post  = Post_No Left joIn Postlve  On Per_Post  = Pl_PostNo And Per_Plevel=Pl_No '
              + 'Left joIn House   On Per_House = Hou_No Where Per_Perdid=''%s''  And Depart.Hide<1 and per_httodt<=Dateadd(month, %d, getdate())'
              + ' and per_httodt>1900-01-01 Order By Per_Fact,Per_Dept,Per_Group,Per_Code',
              [User.WorkPeriod, MonthValue]);
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

        4: // 逾期未转正或者一月之内将转
          begin
            InDtStart := FormatDateTime('YYYY-MM-DD', User.WrkStarT);
            InDtEnd := FormatDateTime('YYYY-MM-DD', User.WrkEndT);

            sSql := Format
              ('Select Person.*,FLOOR(datediff(DY,per_birth,getdate())/365.25) as per_age, FLOOR(datediff(DY,per_indt,getdate())/365.25) as per_wrkage,'
              + 'Dept_Name,Grou_Name,Nat_Priv,Fami_Name,Post_Name,Post_Level,Pl_Name,Degr_Name,hou_tel From Person '
              + ' Left joIn Depart  On Per_Dept= Dept_No Left joIn WkGrou  On Per_Dept  = Grou_Dept And Per_Group=Grou_No '
              + 'Left joIn Family  On Per_Family= Fami_No Left joIn Nation  On Per_Nati  = Nat_No  Left joIn Degree '
              + 'On Per_Degree= Degr_Id Left joIn Postion On Per_Post  = Post_No Left joIn Postlve  On Per_Post  = Pl_PostNo And Per_Plevel=Pl_No '
              + 'Left joIn House   On Per_House = Hou_No Where Per_Perdid=''%s''  And Depart.Hide<1 and  (DATEADD(month, per_trper , per_indt) < dateadd(month,1,getdate())) '
              + 'and per_trpos=''在试用'' and per_poff=''''  Order By Per_Fact,Per_Dept,Per_Group,Per_Code',
              [User.WorkPeriod]);
          end;
      end;
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

procedure TArchivesSimpleFrm.SetProgress(const Position: Integer);
begin
  RzPs.percent := Position;
end;

end.
