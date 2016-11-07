unit Department;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dm, msg, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB, Data.Win.ADODB, DBGridEhGrouping,
  ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh, EhLibVCL;

type
  TDeprtfrm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid3: TDBGrid;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Panel3: TPanel;
    btnModify: TButton;
    btnDelete: TButton;
    btnInsert: TButton;
    DS1: TDataSource;
    ADOQry1: TADOQuery;
    DS2: TDataSource;
    ADOQry2: TADOQuery;
    DS3: TDataSource;
    ADOQry3: TADOQuery;
    pnl_Ok_C: TPanel;
    btnOK: TButton;
    btnCancel: TButton;
    pnl_Fac: TPanel;
    pnl_Dprt: TPanel;
    pnl_Grp: TPanel;
    edt_FacNO: TEdit;
    edt_FacName: TEdit;
    edt_FacPrsn: TEdit;
    edt_DeprtNO: TEdit;
    edt_DeprtName: TEdit;
    edt_DeprtPrsn: TEdit;
    edt_GroupNO: TEdit;
    edt_GroupName: TEdit;
    edt_GroupPrsn: TEdit;
    ckb_Show_hint: TCheckBox;
    DBGrid2: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid3MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure DBGrid1MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure DS2DataChange(Sender: TObject; Field: TField);
    procedure DBGrid21DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DS1DataChange(Sender: TObject; Field: TField);
    procedure DS3DataChange(Sender: TObject; Field: TField);
    procedure btnInsertClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnModifyClick(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGrid2MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
  private
    PostionFlag: Byte;
    LockFlag: Boolean;
    CurentFacNo: String;
    CurentDptNo: String;
    CurentGrpNo: String;
    { Private declarations }
    function SelectFactoryData(Columu, LocateStr: string;
      IsFiltered: Boolean): Boolean;
    function SelectDepartData(Columu, LocateStr: string;
      IsFiltered: Boolean): Boolean;
    function SelectWkgrouData(Columu, LocateStr1, LocateStr2: string;
      IsFiltered: Boolean): Boolean;
  public
    { Public declarations }
  end;

var
  Deprtfrm: TDeprtfrm;

implementation

{$R *.dfm}

procedure TDeprtfrm.btnCopyClick(Sender: TObject);
begin
  LockFlag := True;
  pnl_Ok_C.Visible := True;
  btnDelete.Enabled := False;
  btnModify.Enabled := False;

  case PostionFlag of
    1:
      begin
        pnl_Fac.Enabled := True;
        pnl_Dprt.Enabled := False;
        pnl_Grp.Enabled := False;
      end;

    2:
      begin
        ckb_Show_hint.Checked := False;
        pnl_Fac.Enabled := False;
        pnl_Dprt.Enabled := True;
        pnl_Grp.Enabled := False;
      end;

    3:
      begin
        pnl_Fac.Enabled := False;
        pnl_Dprt.Enabled := False;
        pnl_Grp.Enabled := True;
      end;
  end;
end;

procedure TDeprtfrm.btnDeleteClick(Sender: TObject);
begin
  case PostionFlag of
    1:
      begin
        with ADOQry1 do
        begin
          Close;
          SQL.Clear;
          SQL.Add(Format('delete from factory where fact_code=''%s''',
            [CurentFacNo]));
          ExecSQL;
          SelectFactoryData('', '', False)
        end;

      end;
    2:
      begin
        with ADOQry2 do
        begin
          Close;
          SQL.Clear;
          SQL.Add(Format
            ('delete from depart where dept_factory=''%s'' and dept_no =''%s''',
            [CurentFacNo, CurentDptNo]));
          ExecSQL;
          SelectDepartData('', '', False);
        end;
      end;

    3:
      begin
        with ADOQry3 do
        begin
          Close;
          SQL.Clear;
          SQL.Add(Format
            ('delete from wkgrou where grou_factory=''%s'' and grou_dept =''%s'' and grou_no =''%s'' ',
            [CurentFacNo, CurentDptNo, CurentGrpNo]));
          ExecSQL;
          SelectDepartData('', '', False);
        end;
      end;
  end;
end;

procedure TDeprtfrm.btnInsertClick(Sender: TObject);
begin
  LockFlag := True;
  pnl_Ok_C.Visible := True;
  btnDelete.Enabled := False;
  btnModify.Enabled := False;

  case PostionFlag of
    1:
      begin
        edt_FacNO.Text := '';
        edt_FacName.Text := '';
        edt_FacPrsn.Text := '';

        pnl_Fac.Enabled := True;
        pnl_Dprt.Enabled := False;
        pnl_Grp.Enabled := False;
      end;
    2:
      begin
        edt_DeprtNO.Text := '';
        edt_DeprtName.Text := '';
        edt_DeprtPrsn.Text := '';
        ckb_Show_hint.Checked := False;

        pnl_Fac.Enabled := False;
        pnl_Dprt.Enabled := True;
        pnl_Grp.Enabled := False;
      end;
    3:
      begin
        edt_GroupNO.Text := '';
        edt_GroupName.Text := '';
        edt_GroupPrsn.Text := '';

        pnl_Fac.Enabled := False;
        pnl_Dprt.Enabled := False;
        pnl_Grp.Enabled := True;
      end;
  end;
  btnOK.Tag := 1;
end;

procedure TDeprtfrm.btnModifyClick(Sender: TObject);
begin
  LockFlag := True;
  pnl_Ok_C.Visible := True;
  btnDelete.Enabled := False;
  btnModify.Enabled := False;

  case PostionFlag of
    1:
      begin
        pnl_Fac.Enabled := True;
        pnl_Dprt.Enabled := False;
        pnl_Grp.Enabled := False;
      end;

    2:
      begin
        ckb_Show_hint.Checked := False;
        pnl_Fac.Enabled := False;
        pnl_Dprt.Enabled := True;
        pnl_Grp.Enabled := False;
      end;

    3:
      begin
        pnl_Fac.Enabled := False;
        pnl_Dprt.Enabled := False;
        pnl_Grp.Enabled := True;
      end;
  end;
  btnOK.Tag := 3;
end;

procedure TDeprtfrm.btnOKClick(Sender: TObject);
var
  sSql: String;
  Fac_Code, Fac_name, Fac_prsn: String;
  dpt_Code, dpt_name, dpt_prsn: String;
  dpt_hint: String;
  grp_Code, grp_name, grp_prsn: String;

begin
  LockFlag := False;
  try
    case PostionFlag of
      1: // fac
        begin
          Fac_Code := Trim(edt_FacNO.Text);
          Fac_name := Trim(edt_FacName.Text);
          Fac_prsn := Trim(edt_FacPrsn.Text);

          case btnOK.Tag of
            1:
              begin
                with ADOQry1 do
                begin
                  Close;
                  SQL.Clear;
                  sSql := Format
                    ('insert into factory (fact_code, fact_sname, fact_mag) values(''%s'',''%s'',''%s'')',
                    [Fac_Code, Fac_name, Fac_prsn]);
                  SQL.Add(sSql);
                  ExecSQL;
                end;
              end;

            2:
              begin

              end;

            3:
              begin
                with ADOQry1 do
                begin
                  Close;
                  SQL.Clear;
                  sSql := Format
                    ('update  factory set  fact_code =''%s'', fact_sname=''%s'', fact_mag=''%s'' where  fact_code = ''%s'' ',
                    [Fac_Code, Fac_name, Fac_prsn, CurentFacNo]);
                  SQL.Add(sSql);
                  ExecSQL;
                end;

              end;

          end;
          SelectFactoryData('', '', False);
        end;

      2: // dprt
        begin
          dpt_Code := Trim(edt_DeprtNO.Text);
          dpt_name := Trim(edt_DeprtName.Text);
          dpt_prsn := Trim(edt_DeprtPrsn.Text);
          dpt_hint := IntToStr(ord(ckb_Show_hint.Checked));

          if (dpt_Code = '') or (dpt_name = '') then
            Exit;

          case btnOK.Tag of
            1:
              begin
                with ADOQry2 do
                begin
                  Close;
                  SQL.Clear;
                  sSql := Format
                    ('insert into depart (dept_fact, dept_factory, dept_no, dept_name, dept_mag, hide) values (''%s'',''%s'',''%s'',''%s'',''%s'', %s)',
                    [CurentFacNo, CurentFacNo, dpt_Code, dpt_name, dpt_prsn,
                    dpt_hint]);
                  SQL.Add(sSql);
                  ExecSQL;
                end;

              end;
            3:
              begin
                with ADOQry2 do
                begin
                  Close;
                  SQL.Clear;
                  sSql := Format
                    ('update depart set dept_no=''%s'', dept_name=''%s'', dept_mag=''%s'', hide=%s  where dept_factory=''%s'' and dept_no=''%s'' ',
                    [dpt_Code, dpt_name, dpt_prsn, dpt_hint, CurentFacNo,
                    CurentDptNo]);
                  SQL.Add(sSql);
                  ExecSQL;
                end;

              end;
          end;
          SelectDepartData('dept_no',  dpt_Code, False);
        end;

      3: // group
        begin
          grp_Code := Trim(edt_GroupNO.Text);
          grp_name := Trim(edt_GroupName.Text);
          grp_prsn := Trim(edt_GroupPrsn.Text);

          case btnOK.Tag of
            1:
              begin
                with ADOQry3 do
                begin
                  Close;
                  SQL.Clear;
                  sSql := Format
                    ('insert into wkgrou (grou_factory, grou_dept, grou_no, grou_name, grou_mag) values(''%s'',''%s'',''%s'',''%s'',''%s'')',
                    [CurentFacNo, CurentDptNo, grp_Code, grp_name, grp_prsn]);

                  SQL.Add(sSql);
                  ExecSQL;
                end;
              end;

            3:
              begin
                with ADOQry3 do
                begin
                  Close;
                  SQL.Clear;
                  sSql := Format
                    ('update wkgrou set grou_no=''%s'', grou_name=''%s'', grou_mag=''%s'' where  grou_factory=''%s'' and grou_dept=''%s'' and grou_no=''%s'' ',
                    [grp_Code, grp_name, grp_prsn, CurentFacNo, CurentDptNo,
                    CurentGrpNo]);

                  SQL.Add(sSql);
                  ExecSQL;

                end;
              end;
          end;
          SelectWkgrouData('', CurentFacNo, CurentDptNo, False);
        end;
    end;
  except

  end;
  btnCancel.Click;
  pnl_Ok_C.Visible := False;
end;

procedure TDeprtfrm.btnCancelClick(Sender: TObject);
begin
  LockFlag := False;
  pnl_Ok_C.Visible := False;

  btnInsert.Enabled := True;
  btnDelete.Enabled := True;
  btnModify.Enabled := True;

  pnl_Fac.Enabled := False;
  pnl_Dprt.Enabled := False;
  pnl_Grp.Enabled := False;

  SelectFactoryData('', '', False);
  SelectDepartData('', '', False);
end;

procedure TDeprtfrm.DBGrid1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if not LockFlag then
  begin
    Panel3.Left := DBGrid1.Left;
    PostionFlag := 1;
  end;
end;

procedure TDeprtfrm.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin

  if DBGrid2.Fields[4].Value = True then
    (Sender as TDBGridEh).Canvas.Font.Color := clRed;

  (Sender as TDBGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TDeprtfrm.DBGrid2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if not LockFlag then
  begin
    Panel3.Left := DBGrid2.Left;
    PostionFlag := 2;
  end;
end;

procedure TDeprtfrm.DBGrid3MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if not LockFlag then
  begin
    Panel3.Left := DBGrid3.Left;
    PostionFlag := 3;
  end;
end;

procedure TDeprtfrm.DBGrid21DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  //
end;

procedure TDeprtfrm.DS1DataChange(Sender: TObject; Field: TField);
begin
  with ADOQry1 do
    try
      if Active then
      begin
        edt_FacNO.Text := Trim(Fieldbyname('fact_code').AsString);
        edt_FacName.Text := Trim(Fieldbyname('fact_sname').AsString);
        edt_FacPrsn.Text := Trim(Fieldbyname('fact_mag').AsString);

        CurentFacNo := Trim(Fieldbyname('fact_code').AsString);
      end;
    except
    end;
end;

procedure TDeprtfrm.DS2DataChange(Sender: TObject; Field: TField);
var
  tmpFac, tmpDprt: String;
begin
  with ADOQry2 do
    try
      if Active then
      begin
        tmpFac := Trim(Fieldbyname('dept_factory').AsString);
        tmpDprt := Trim(Fieldbyname('dept_no').AsString);

        edt_DeprtName.Text := Trim(Fieldbyname('dept_name').AsString);
        edt_DeprtPrsn.Text := Trim(Fieldbyname('dept_mag').AsString);
        ckb_Show_hint.Checked := Fieldbyname('hide').AsBoolean;
        edt_DeprtNO.Text := tmpDprt;

        CurentDptNo := tmpDprt;
        SelectWkgrouData('', tmpFac, tmpDprt, False);
      end;
    except
    end;
end;

procedure TDeprtfrm.DS3DataChange(Sender: TObject; Field: TField);
begin
  with ADOQry3 do
    try
      if Active then
      begin
        edt_GroupNO.Text := Trim(Fieldbyname('grou_no').AsString);
        edt_GroupName.Text := Trim(Fieldbyname('grou_name').AsString);
        edt_GroupPrsn.Text := Trim(Fieldbyname('grou_mag').AsString);

        CurentGrpNo := Trim(Fieldbyname('grou_no').AsString);
      end;
    except
    end;
end;

procedure TDeprtfrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TDeprtfrm.FormCreate(Sender: TObject);
begin
  if dm.DMfrm.DoDBConnect then
  begin
    ADOQry1.Connection := DMfrm.ADOCon;
    ADOQry2.Connection := DMfrm.ADOCon;
    ADOQry3.Connection := DMfrm.ADOCon;

    SelectFactoryData('', '', False);
    SelectDepartData('', '', False);
  end;
  LockFlag := False;
end;

function TDeprtfrm.SelectFactoryData(Columu, LocateStr: string;
  IsFiltered: Boolean): Boolean;
begin
  Result := True;
  try
    with ADOQry1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Select * From Factory Order By Fact_code');
      Open;

      if (LocateStr = 'First') or (LocateStr = '') then
        First
      else if LocateStr = 'Last' then
        Last
      else
        Locate(Columu, LocateStr, []);

      DS1.Enabled := True;
      DS1.OnDataChange(nil, nil);
    end;
  except
    Result := False;
  end;
end;

function TDeprtfrm.SelectDepartData(Columu, LocateStr: string;
  IsFiltered: Boolean): Boolean;
begin
  Result := True;
  try
    with ADOQry2 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Select * From Depart Order By Dept_Fact,Dept_No');
      Open;

      if (LocateStr = 'First') or (LocateStr = '') then
        First
      else if LocateStr = 'Last' then
        Last
      else
        Locate(Columu, LocateStr, []);

      DS2.Enabled := True;
      DS2.OnDataChange(nil, nil);
    end;
  except
    Result := False;
  end;
end;

function TDeprtfrm.SelectWkgrouData(Columu, LocateStr1, LocateStr2: string;
  IsFiltered: Boolean): Boolean;
var
  sSql: string;
begin
  Result := True;
  try
    with ADOQry3 do
    begin
      Close;
      SQL.Clear;
      sSql := Format
        ('Select * From Wkgrou where grou_factory=''%s'' AND grou_dept=''%s'' Order By Grou_Factory,Grou_dept,Grou_No',
        [LocateStr1, LocateStr2]);
      SQL.Add(sSql);
      Open;

      if (LocateStr2 = 'First') or (LocateStr2 = '') then
        First
      else if LocateStr2 = 'Last' then
        Last
      else
        Locate(Columu, LocateStr2, []);

      DS3.Enabled := True;
      DS3.OnDataChange(nil, nil);
    end;
  except
    Result := False;
  end;
end;

end.
