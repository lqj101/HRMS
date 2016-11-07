unit Mkask;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, DM, MSG,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, Data.Win.ADODB, Vcl.ComCtrls;

type
  TMkaskFrm = class(TForm)
    Panel1: TPanel;
    lblCount: TLabel;
    btnModify: TButton;
    btnCopy: TButton;
    btnDelete: TButton;
    btnInsert: TButton;
    pnl_Ok_C: TPanel;
    btnOK: TButton;
    btnCancel: TButton;
    Panel3: TPanel;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    ADOQry: TADOQuery;
    DS: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    edt_askno: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    edt_anode: TEdit;
    Label13: TLabel;
    edt_htno: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    edt_pver: TEdit;
    Label5: TLabel;
    edt_batch: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    edt_cathode: TEdit;
    Label8: TLabel;
    edt_an_ca: TEdit;
    Label11: TLabel;
    edt_catdro: TEdit;
    Label12: TLabel;
    edt_anodro: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    edt_client: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    edt_memo: TEdit;
    cmb_prdxh: TComboBox;
    cmb_mttype: TComboBox;
    dtpk_mixdt: TDateTimePicker;
    dpk_coatdt: TDateTimePicker;
    dtpk_outdt: TDateTimePicker;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    function SelectMkaskData(Columu, LocateStr: Variant;
      IsFiltered: Boolean): Boolean;
  public
    { Public declarations }
  end;

var
  MkaskFrm: TMkaskFrm;

implementation

{$R *.dfm}

procedure TMkaskFrm.DSDataChange(Sender: TObject; Field: TField);
begin
  if ADOQry.Active then
    try
      with ADOQry do
      begin
        edt_askno.Text := Trim(FieldByName('mk_askno').AsString);
        cmb_prdxh.Text := Trim(FieldByName('mk_prdxh').AsString);
        edt_pver.Text := Trim(FieldByName('mk_pver').AsString);
        edt_batch.Text := Trim(FieldByName('mk_batch').AsString);

        edt_cathode.Text := Trim(FieldByName('mk_coatdt').AsString);
        edt_an_ca.Text := Trim(FieldByName('mk_an_ca').AsString);
        edt_anode.Text := Trim(FieldByName('mk_anode').AsString);
        edt_catdro.Text := Trim(FieldByName('mk_catdro').AsString);
        edt_anodro.Text := Trim(FieldByName('mk_anodro').AsString);
        cmb_mttype.Text := Trim(FieldByName('mk_mtype').AsString);
        edt_htno.Text := Trim(FieldByName('mk_htno').AsString);
        edt_client.Text := Trim(FieldByName('mk_client').AsString);

        dpk_coatdt.DateTime := FieldByName('mk_coatdt').AsDateTime;
        dtpk_mixdt.DateTime := FieldByName('mk_mixdt').AsDateTime;
        dtpk_outdt.DateTime := FieldByName('mk_outdt').AsDateTime;

        edt_memo.Text := Trim(FieldByName('wd_memo').AsString);
      end;
    except
    end;
end;

procedure TMkaskFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  Action := caFree;
end;

procedure TMkaskFrm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  DBGridEh1.SumList.Active := False;
end;

procedure TMkaskFrm.FormCreate(Sender: TObject);
begin
  if DMfrm.DoDBConnect then
  begin
    ADOQry.Connection := DMfrm.ADOCon;
    SelectMkaskData('', '', False);
  end;
end;

function TMkaskFrm.SelectMkaskData(Columu, LocateStr: Variant;
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
      sSql := format('Select * From Mkask Order By MK_MIXDT', []);
      SQL.Add(sSql);
      Open;

      if (VarToStr(LocateStr) = 'First') or (VarToStr(LocateStr) = '') then
        First
      else if VarToStr(LocateStr) = 'Last' then
        Last
      else
        Locate(Columu, LocateStr, []);

      lblCount.Caption := format(RecordCountShow, [RecordCount]);

    end;
  except
    Result := False;
  end;
end;

end.
