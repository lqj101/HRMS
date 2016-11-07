unit ArchivesFrm_hs1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Dm, msg, UGlobal,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Archives, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.Menus, Data.DB, Data.Win.ADODB, RzStatus,
  RzPanel, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TArchivesFrm_hs = class(TArchivesFrm)
    cmbxPeriod: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btnRefrashClick(Sender: TObject);
  private
    { Private declarations }
    FPeriodStrar: TDateTime;
    FPeriodEnd: TDateTime;
    procedure IntPeriod;
    function SelectHRData(Columu, LocateStr: string;
      IsFiltered: Boolean): Boolean;
    procedure StatisticsWorkerInfo(FilterType: Integer; var OutCount: Integer;
      IsFiltered: Boolean);
  public
    { Public declarations }
  end;

var
  ArchivesFrm_hs: TArchivesFrm_hs;

implementation

{$R *.dfm}

procedure TArchivesFrm_hs.btnRefrashClick(Sender: TObject);
var
  sSql: String;
  Values: Integer;
begin
  with ADOQrySerch do
  begin
    Close;
    sql.Clear;
    sSql := Format('Select * From period where cyl_code=''%s''  ',
      [cmbxPeriod.Text]);
    sql.Add(sSql);
    Open;
    First;

    FPeriodStrar := FieldbyName('cyl_frdate').AsDateTime;
    FPeriodEnd := FieldbyName('cyl_todate').AsDateTime;
  end;

  SelectHRData('', '', False);

  StatisticsWorkerInfo(1, Values, False);
  lblCountout.Caption := '本期离职: ' + IntToStr(Values);
  { StatisticsWorkerInfo(2, Values, False);
    lblCountOC.Caption := '合同逾期: ' + IntToStr(Values); }
  StatisticsWorkerInfo(3, Values, False);
  lblCountin.Caption := '本期入职: ' + IntToStr(Values);
end;

procedure TArchivesFrm_hs.FormCreate(Sender: TObject);
begin
  if DMfrm.DoDBConnect then
  begin
    ADOQry.Connection := DMfrm.ADOCon;
    ADOQrySerch.Connection := DMfrm.ADOCon;
  end;

  btnInsert.Enabled := False;
  btnDelete.Enabled := False;
  btnModify.Enabled := False;
  btnCopy.Enabled := False;

  IntPeriod;
end;

procedure TArchivesFrm_hs.IntPeriod;
var
  sSql: string;
begin
  cmbxPeriod.Items.Clear;
  with ADOQrySerch do
  begin
    Close;
    sql.Clear;
    sSql := Format
      ('Select [cyl_code]  From period where cyl_close = 2 order by cyl_code Desc',
      []);
    sql.Add(sSql);
    Open;
    First;
    while not eof do
    begin
      cmbxPeriod.Items.Add(Trim(FieldbyName('cyl_code').AsString));
      Next;
    end;
  end;
  cmbxPeriod.ItemIndex := 0;
end;

function TArchivesFrm_hs.SelectHRData(Columu, LocateStr: string;
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
      sql.Clear;
      sSql := Format
        ('Select personp.*,FLOOR(datediff(DY,per_birth,getdate())/365.25) as per_age, FLOOR(datediff(DY,per_indt,getdate())/365.25) as per_wrkage,'
        + 'Dept_Name,Grou_Name,Nat_Priv,Fami_Name,Post_Name,Post_Level,Pl_Name,Degr_Name,hou_tel From personp '
        + ' Left joIn Depart  On Per_Dept= Dept_No Left joIn WkGrou  On Per_Dept  = Grou_Dept And Per_Group=Grou_No '
        + 'Left joIn Family  On Per_Family= Fami_No Left joIn Nation  On Per_Nati  = Nat_No  Left joIn Degree '
        + 'On Per_Degree= Degr_Id Left joIn Postion On Per_Post  = Post_No Left joIn Postlve  On Per_Post  = Pl_PostNo And Per_Plevel=Pl_No '
        + 'Left joIn House   On Per_House = Hou_No  Where Per_Perdid=''%s''  Order By Per_Fact,Per_Dept,Per_Group,Per_Code',
        [Trim(cmbxPeriod.Text)]);

      sql.Add(sSql);
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

procedure TArchivesFrm_hs.StatisticsWorkerInfo(FilterType: Integer;
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
      sql.Clear;
      case FilterType of

        1: // 离职
          begin
            OutDtStart := FormatDateTime('YYYY-MM-DD', FPeriodStrar);
            OutDtEnd := FormatDateTime('YYYY-MM-DD', FPeriodEnd);

            sSql := Format
              ('Select PersonP.*,FLOOR(datediff(DY,per_birth,getdate())/365.25) as per_age, FLOOR(datediff(DY,per_indt,getdate())/365.25) as per_wrkage,'
              + 'Dept_Name,Grou_Name,Nat_Priv,Fami_Name,Post_Name,Post_Level,Pl_Name,Degr_Name,hou_tel From PersonP '
              + ' Left joIn Depart  On Per_Dept= Dept_No Left joIn WkGrou  On Per_Dept  = Grou_Dept And Per_Group=Grou_No '
              + 'Left joIn Family  On Per_Family= Fami_No Left joIn Nation  On Per_Nati  = Nat_No  Left joIn Degree '
              + 'On Per_Degree= Degr_Id Left joIn Postion On Per_Post  = Post_No Left joIn Postlve  On Per_Post  = Pl_PostNo And Per_Plevel=Pl_No '
              + 'Left joIn House   On Per_House = Hou_No Where Per_Perdid=''%s''  And Depart.Hide<1 and per_outdt>=''%s'' and per_outdt<= ''%s'' '
              + ' Order By Per_Fact,Per_Dept,Per_Group,Per_Code',
              [Trim(cmbxPeriod.Text), OutDtStart, OutDtEnd]);
          end;

        2: // 合同到期
          begin
            Htdtend := FormatDateTime('YYYY-MM-DD', FPeriodStrar);
            sSql := Format
              ('Select PersonP.*,FLOOR(datediff(DY,per_birth,getdate())/365.25) as per_age, FLOOR(datediff(DY,per_indt,getdate())/365.25) as per_wrkage,'
              + 'Dept_Name,Grou_Name,Nat_Priv,Fami_Name,Post_Name,Post_Level,Pl_Name,Degr_Name,hou_tel From PersonP '
              + ' Left joIn Depart  On Per_Dept= Dept_No Left joIn WkGrou  On Per_Dept  = Grou_Dept And Per_Group=Grou_No '
              + 'Left joIn Family  On Per_Family= Fami_No Left joIn Nation  On Per_Nati  = Nat_No  Left joIn Degree '
              + 'On Per_Degree= Degr_Id Left joIn Postion On Per_Post  = Post_No Left joIn Postlve  On Per_Post  = Pl_PostNo And Per_Plevel=Pl_No '
              + 'Left joIn House   On Per_House = Hou_No Where Per_Perdid=''%s''  And Depart.Hide<1 and per_httodt<=''%s'' and per_httodt>1900-01-01 '
              + ' Order By Per_Fact,Per_Dept,Per_Group,Per_Code',
              [Trim(cmbxPeriod.Text), Htdtend]);
          end;

        3:
          begin
            InDtStart := FormatDateTime('YYYY-MM-DD', FPeriodStrar);
            InDtEnd := FormatDateTime('YYYY-MM-DD', FPeriodEnd);

            sSql := Format
              ('Select PersonP.*,FLOOR(datediff(DY,per_birth,getdate())/365.25) as per_age, FLOOR(datediff(DY,per_indt,getdate())/365.25) as per_wrkage,'
              + 'Dept_Name,Grou_Name,Nat_Priv,Fami_Name,Post_Name,Post_Level,Pl_Name,Degr_Name,hou_tel From PersonP '
              + ' Left joIn Depart  On Per_Dept= Dept_No Left joIn WkGrou  On Per_Dept  = Grou_Dept And Per_Group=Grou_No '
              + 'Left joIn Family  On Per_Family= Fami_No Left joIn Nation  On Per_Nati  = Nat_No  Left joIn Degree '
              + 'On Per_Degree= Degr_Id Left joIn Postion On Per_Post  = Post_No Left joIn Postlve  On Per_Post  = Pl_PostNo And Per_Plevel=Pl_No '
              + 'Left joIn House   On Per_House = Hou_No Where Per_Perdid=''%s''  And Depart.Hide<1 and per_indt>=''%s'' and per_indt<= ''%s'' '
              + ' Order By Per_Fact,Per_Dept,Per_Group,Per_Code',
              [Trim(cmbxPeriod.Text), InDtStart, InDtEnd]);
          end;
      end;
      sql.Add(sSql);
      Open;

      OutCount := RecordCount;
    end;
  except

  end;
end;

end.
