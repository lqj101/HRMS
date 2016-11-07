unit DormInfo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, DBGridEhGrouping,
  ToolCtrlsEh, DM, MSG,
  DBGridEhToolCtrls, DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh, Data.DB,
  Data.Win.ADODB, Vcl.StdCtrls, EhLibVCL;

type
  TDormInfofrm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGridEh1: TDBGridEh;
    DS: TDataSource;
    ADOQry: TADOQuery;
    ADOQrySerch: TADOQuery;
    Label9: TLabel;
    Label10: TLabel;
    edt_housetype: TEdit;
    edt_houseNo: TEdit;
    edt_houseCap: TEdit;
    edt_houseTel: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edt_houseMng: TEdit;
    edt_houseStru: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    edt_houseAcreage: TEdit;
    edt_houseRental: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    edt_houseStat: TEdit;
    edt_houseArea: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    cmbSex: TComboBox;
    Panel5: TPanel;
    btnInsert: TButton;
    btnDelete: TButton;
    btnModify: TButton;
    pnl_Ok_C: TPanel;
    btnOK: TButton;
    btnCancel: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure btnInsertClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnModifyClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
    function SelectHouseData(Columu, LocateStr: Variant;
      IsFiltered: Boolean): Boolean;
  public
    { Public declarations }
  end;

var
  DormInfofrm: TDormInfofrm;

implementation

{$R *.dfm}

procedure TDormInfofrm.btnCancelClick(Sender: TObject);
begin
  Panel3.Enabled := False;
  btnInsert.Enabled := True;
  btnDelete.Enabled := True;
  btnModify.Enabled := True;

  pnl_Ok_C.Visible := False;

  SelectHouseData('', '', False);
end;

procedure TDormInfofrm.btnInsertClick(Sender: TObject);
begin
  Panel3.Enabled := True;
  edt_houseNo.Text := '';
  edt_housetype.Text := '';
  cmbSex.Text := '';
  edt_houseTel.Text := '';
  edt_houseMng.Text := '';
  edt_houseStru.Text := '';
  edt_houseCap.Text := '';
  edt_houseAcreage.Text := '';
  edt_houseRental.Text := '';
  edt_houseStat.Text := '';
  edt_houseArea.Text := '';

  btnDelete.Enabled := False;
  btnModify.Enabled := False;
  pnl_Ok_C.Visible := True;
  btnOK.Tag := 1;
end;

procedure TDormInfofrm.btnModifyClick(Sender: TObject);
begin
  Panel3.Enabled := True;
  btnInsert.Enabled := False;
  btnDelete.Enabled := False;

  pnl_Ok_C.Visible := True;
  btnOK.Tag := 3;
end;

procedure TDormInfofrm.btnOKClick(Sender: TObject);
var
  sSql: String;
begin
  try
 {   case btnOK.Tag of
      1:
        begin
          with ADOQry do
          begin
            Close;
            SQL.Clear;
            sSql := format
              ('insert into postion (post_no, post_name, post_level, post_nfee, post_hfee, post_ffee, post_bsgz, post_pass) Values (''%s'', ''%s'', ''%s'', %f, %f, %f, %f , 0)',
              []);
            SQL.Add(sSql);
            ExecSQL;

            // SelectHouseData('post_no', tmpPsCode, False);
          end;
        end;

      3:
        begin
          with ADOQry do
          begin
            Close;
            SQL.Clear;
            sSql := format
              ('update postion set post_no=''%s'', post_name=''%s'', post_level=''%s'', post_nfee=%f, post_hfee=%f, post_ffee=%f, post_bsgz=%f where post_no=''%s'' ',
              []);
            SQL.Add(sSql);
            ExecSQL;

            // SelectHouseData('post_no', tmpPsCode, False);
          end;
        end;
    end;
    btnCancel.Click;     }
  except
  end;
end;

procedure TDormInfofrm.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if gdSelected in State then
    DBGridEh1.Canvas.Brush.Color := clMoneyGreen;

  (Sender as TDBGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TDormInfofrm.DSDataChange(Sender: TObject; Field: TField);
begin
  with ADOQry do
    try
      if Active then
      begin
        edt_houseNo.Text := Trim(FieldByName('hou_no').AsString);
        edt_housetype.Text := Trim(FieldByName('hou_name').AsString);
        cmbSex.Text := Trim(FieldByName('hou_sex').AsString);

        edt_houseTel.Text := Trim(FieldByName('hou_tel').AsString);
        edt_houseMng.Text := Trim(FieldByName('hou_mag').AsString);
        edt_houseStru.Text := Trim(FieldByName('hou_stru').AsString);
        edt_houseCap.Text := Trim(FieldByName('hou_number').AsString);

        edt_houseAcreage.Text := Trim(FieldByName('hou_space').AsString);
        edt_houseRental.Text := Trim(FieldByName('hou_marny').AsString);
        edt_houseStat.Text := Trim(FieldByName('hou_station').AsString);
        edt_houseArea.Text := Trim(FieldByName('hou_area').AsString);
      end;
    except
    end;
end;

procedure TDormInfofrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TDormInfofrm.FormCreate(Sender: TObject);
begin
  if DMfrm.DoDBConnect then
  begin
    ADOQry.Connection := DMfrm.ADOCon;
    ADOQrySerch.Connection := DMfrm.ADOCon;

    SelectHouseData('', '', False);
  end;
end;

function TDormInfofrm.SelectHouseData(Columu, LocateStr: Variant;
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
      sSql := format('Select House.* From House Order By Hou_No', []);
      SQL.Add(sSql);
      Open;

      if (VarToStr(LocateStr) = 'First') or (VarToStr(LocateStr) = '') then
        First
      else if VarToStr(LocateStr) = 'Last' then
        Last
      else
        Locate(Columu, LocateStr, []);
    end;
  except
    Result := False;
  end;
end;

end.
