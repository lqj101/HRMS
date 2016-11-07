unit DM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, UGlobal;

type
  TDMfrm = class(TDataModule)
    ADOCon: TADOConnection;
    ADOQry1: TADOQuery;
    ADOQry2: TADOQuery;
  private
    { Private declarations }
    function CheckConnectStatus: Boolean;
    property FConnectStatus: Boolean read CheckConnectStatus;
  public
    { Public declarations }
    function DoDBConnect: Boolean;
  end;

var
  DMfrm: TDMfrm;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}
{ TDMfrm }

function TDMfrm.CheckConnectStatus: Boolean;
var
  ErrorsStr: String;
  i: Integer;
begin
  i := 0;
  Result := True;
  try
    ErrorsStr := ADOCon.Errors.Item[0].SQLState;
    if Pos('08S0', ErrorsStr, 0) > 0 then
      inc(i);
    ErrorsStr := ADOCon.Errors.Item[0].SQLState;
    if Pos('08S01', ErrorsStr, 0) > 0 then
      inc(i);

    ErrorsStr := ADOCon.Errors.Item[0].SQLState;
    if Pos('08S001', ErrorsStr, 0) > 0 then
      inc(i);

    if i > 0 then
      Result := False;
  except
  end;
end;

function TDMfrm.DoDBConnect: Boolean;
begin
  Result := False;
  try
    if not ADOCon.Connected then
    begin
      ADOCon.ConnectionString := Format(AdoConnectionStr, [ServerName]);
      ADOCon.Open;
      if ADOCon.Connected then
        Result := True
      else
        Result := False;
    end
    else
    begin
      Result := True;
    end;
  except
    Result := False;
  end;
end;

end.
