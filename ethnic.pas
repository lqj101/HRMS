unit ethnic;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, DM, msg,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Data.DB, Data.Win.ADODB;

type
  TEthnicfrm = class(TForm)
    Panel1: TPanel;
    btnInsert: TButton;
    btnModify: TButton;
    btnDelete: TButton;
    btnClose: TButton;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtNO: TEdit;
    edtEthnic: TEdit;
    btnOK: TButton;
    btnCancel: TButton;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DS: TDataSource;
    ADOQry: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure btnOKClick(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnModifyClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
    CurrentSelectFlag: String;
    function SelectEthnicData(Columu, LocateStr: string;
      IsFiltered: Boolean): Boolean;
    procedure RefrushUIData;
  public
    { Public declarations }
  end;

var
  Ethnicfrm: TEthnicfrm;

implementation

{$R *.dfm}

procedure TEthnicfrm.btnCancelClick(Sender: TObject);
begin
  Panel3.Visible := False;
  btnInsert.Enabled := True;
  btnModify.Enabled := True;
  btnDelete.Enabled := True;
  btnClose.Enabled := True;
  DBGrid1.SetFocus;
end;

procedure TEthnicfrm.btnCloseClick(Sender: TObject);
begin
  Close
end;

procedure TEthnicfrm.btnDeleteClick(Sender: TObject);
begin
  btnOK.Tag := 2;
  Panel3.Visible := True;

end;

procedure TEthnicfrm.btnInsertClick(Sender: TObject);
begin
  Panel3.Visible := True;
  btnModify.Enabled := False;
  btnDelete.Enabled := False;
  btnClose.Enabled := False;

  edtNO.Text := '';
  edtEthnic.Text := '';

  btnOK.Tag := 1;
end;

procedure TEthnicfrm.btnModifyClick(Sender: TObject);
begin
  Panel3.Visible := True;
  btnInsert.Enabled := False;
  btnDelete.Enabled := False;
  btnClose.Enabled := False;

  btnOK.Tag := 3;
end;

procedure TEthnicfrm.btnOKClick(Sender: TObject);
var
  tmpNO, tmpEthnic, sSql: String;
begin
  tmpNO := Trim(edtNO.Text);
  tmpEthnic := Trim(edtEthnic.Text);

  if (tmpNO = '') or (tmpEthnic = '') then
  begin
    ShowMessageFmt(InformationMiss, []);
    Exit;
  end;

  with ADOQry do
  begin
    case btnOK.Tag of
      1:
        begin
          if Locate('fami_no', tmpNO, []) then
          begin
            Exit;
          end;
          if Locate('fami_name', tmpEthnic, []) then
          begin
            Exit;
          end;

          Close;
          SQL.Clear;
          sSql := Format
            ('insert into family (fami_no, fami_name) values(''%s'', ''%s'') ',
            [tmpNO, tmpEthnic]);
          SQL.Add(sSql);
          ExecSQL;

          SelectEthnicData('fami_no', tmpNO, False);
        end;

      2:
        begin
          Close;
          SQL.Clear;
          sSql := Format('delete from family where fami_no=''%s'' ', [tmpNO]);
          SQL.Add(sSql);
          ExecSQL;

          SelectEthnicData('', '', False);
        end;

      3:
        begin
          Close;
          SQL.Clear;
          sSql := Format
            ('update family set fami_no=''%s'', fami_name=''%s'' where fami_no=''%s'' ',
            [tmpNO, tmpEthnic, CurrentSelectFlag]);
          SQL.Add(sSql);
          ExecSQL;

          SelectEthnicData('fami_no', tmpNO, False);
        end;
    end;
  end;

  btnCancel.Click;
end;

procedure TEthnicfrm.DBGrid1CellClick(Column: TColumn);
begin
  RefrushUIData;
end;

procedure TEthnicfrm.DSDataChange(Sender: TObject; Field: TField);
begin
  RefrushUIData;
end;

procedure TEthnicfrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TEthnicfrm.FormCreate(Sender: TObject);
begin
  if DM.DMfrm.DoDBConnect then
  begin
    ADOQry.Connection := DMfrm.ADOCon;
    SelectEthnicData('', '', False);
  end;
end;

procedure TEthnicfrm.RefrushUIData;
begin
  with ADOQry do
    try
      if Active then
      begin
        edtNO.Text := Trim(Fieldbyname('fami_no').AsString);
        edtEthnic.Text := Trim(Fieldbyname('fami_name').AsString);

        CurrentSelectFlag := Trim(Fieldbyname('fami_no').AsString);
      end;
    except
    end;
end;

function TEthnicfrm.SelectEthnicData(Columu, LocateStr: string;
  IsFiltered: Boolean): Boolean;
begin
  Result := True;
  try
    with ADOQry do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Select fami_no, fami_name from family order by fami_no');
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

end.
