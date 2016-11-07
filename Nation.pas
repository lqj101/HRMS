unit Nation;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, msg,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  DM, Vcl.DBGrids, Data.DB, Data.Win.ADODB;

type
  TNationfrm = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    btnInsert: TButton;
    btnModify: TButton;
    btnDelete: TButton;
    btnClose: TButton;
    DBGrid1: TDBGrid;
    ADOQry: TADOQuery;
    DS: TDataSource;
    Panel3: TPanel;
    edtNO: TEdit;
    edtNation: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnOK: TButton;
    btnCancel: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure RefrushUIData;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure btnInsertClick(Sender: TObject);
    procedure btnModifyClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
    CurrentSelectFlag: String;
    function SelectNationData(Columu, LocateStr: string;
      IsFiltered: Boolean): Boolean;
  public
    { Public declarations }

  end;

var
  Nationfrm: TNationfrm;

implementation

{$R *.dfm}

procedure TNationfrm.btnCancelClick(Sender: TObject);
begin
  Panel3.Visible := False;
  btnInsert.Enabled := True;
  btnModify.Enabled := True;
  btnDelete.Enabled := True;
  btnClose.Enabled := True;
  DBGrid1.SetFocus;
end;

procedure TNationfrm.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TNationfrm.btnInsertClick(Sender: TObject);
begin
  Panel3.Visible := True;
  btnModify.Enabled := False;
  btnDelete.Enabled := False;
  btnClose.Enabled := False;

  btnOK.Tag := 1;
end;

procedure TNationfrm.btnModifyClick(Sender: TObject);
begin
  Panel3.Visible := True;
  btnInsert.Enabled := False;
  btnDelete.Enabled := False;
  btnClose.Enabled := False;

  btnOK.Tag := 3;
end;

procedure TNationfrm.btnOKClick(Sender: TObject);
var
  tmpNO, tmpEthnic, sSql: String;
begin
  tmpNO := Trim(edtNO.Text);
  tmpEthnic := Trim(edtNation.Text);

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
          if Locate('nat_no', tmpNO, []) then
          begin
            Exit;
          end;
          if Locate('[nat_priv]', tmpEthnic, []) then
          begin
            Exit;
          end;

          Close;
          SQL.Clear;
          sSql := Format
            ('insert into nation (nat_no, nat_priv) values(''%s'', ''%s'') ',
            [tmpNO, tmpEthnic]);
          SQL.Add(sSql);
          ExecSQL;

          SelectNationData('nat_no', tmpNO, False);
        end;

      2:
        begin
          Close;
          SQL.Clear;
          sSql := Format('delete from nation where nat_no=''%s'' ', [tmpNO]);
          SQL.Add(sSql);
          ExecSQL;

          SelectNationData('', '', False);
        end;

      3:
        begin
          Close;
          SQL.Clear;
          sSql := Format
            ('update nation set nat_no=''%s'', nat_priv=''%s'' where nat_no=''%s'' ',
            [tmpNO, tmpEthnic, CurrentSelectFlag]);
          SQL.Add(sSql);
          ExecSQL;
          SelectNationData('nat_no', tmpNO, False);
        end;
    end;
  end;

  btnCancel.Click;
end;

procedure TNationfrm.DBGrid1CellClick(Column: TColumn);
begin
  RefrushUIData;
end;

procedure TNationfrm.DSDataChange(Sender: TObject; Field: TField);
begin
  RefrushUIData;
end;

procedure TNationfrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TNationfrm.FormCreate(Sender: TObject);
begin
  if DM.DMfrm.DoDBConnect then
  begin
    ADOQry.Connection := DMfrm.ADOCon;
    SelectNationData('', '', False);
  end;
end;

procedure TNationfrm.RefrushUIData;
begin
  with ADOQry do
    try
      if Active then
      begin
        edtNO.Text := Trim(Fieldbyname('nat_no').AsString);
        edtNation.Text := Trim(Fieldbyname('nat_priv').AsString);

        CurrentSelectFlag := Trim(Fieldbyname('nat_no').AsString);
      end;
    except
    end;
end;

function TNationfrm.SelectNationData(Columu, LocateStr: string;
  IsFiltered: Boolean): Boolean;
begin
  Result := True;
  try
    with ADOQry do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Select nat_no, nat_priv from nation order by nat_no');
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
