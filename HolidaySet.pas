unit HolidaySet;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, msg, dm, UGlobal,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, Vcl.ComCtrls,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ExtCtrls, Data.DB, Data.Win.ADODB;

type
  THolidaySetFrm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    btnInsert: TButton;
    btnModify: TButton;
    btnDelete: TButton;
    pnl_Ok_C: TPanel;
    btnOK: TButton;
    btnCancel: TButton;
    dtpk_Holiday: TDateTimePicker;
    edt_HldName: TEdit;
    RdG_hldType: TRadioGroup;
    Label1: TLabel;
    Label2: TLabel;
    ADOQry: TADOQuery;
    DS: TDataSource;
    lblCount: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnInsertClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnModifyClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure btnOKClick(Sender: TObject);
    procedure DSDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    CurrentSelectDate: string;
    function SelectHolidayData(Columu: string; LocateStr: Variant;
      IsFiltered: Boolean): Boolean;
  public
    { Public declarations }
  end;

var
  HolidaySetFrm: THolidaySetFrm;

implementation

{$R *.dfm}

procedure THolidaySetFrm.btnCancelClick(Sender: TObject);
begin
  btnInsert.Enabled := True;
  btnModify.Enabled := True;
  btnDelete.Enabled := True;
  pnl_Ok_C.Visible := False;
  DBGridEh1.Enabled := True;

  SelectHolidayData('', '', False);
end;

procedure THolidaySetFrm.btnDeleteClick(Sender: TObject);
begin
  DBGridEh1.Enabled := False;
  btnModify.Enabled := False;
  btnInsert.Enabled := False;
  pnl_Ok_C.Visible := True;

  btnOK.Tag := 2;
end;

procedure THolidaySetFrm.btnInsertClick(Sender: TObject);
begin
  DBGridEh1.Enabled := False;
  btnModify.Enabled := False;
  btnDelete.Enabled := False;
  pnl_Ok_C.Visible := True;

  dtpk_Holiday.DateTime := now;

  btnOK.Tag := 1;
end;

procedure THolidaySetFrm.btnModifyClick(Sender: TObject);
begin
  DBGridEh1.Enabled := False;
  btnInsert.Enabled := False;
  btnDelete.Enabled := False;
  pnl_Ok_C.Visible := True;

  btnOK.Tag := 3;
end;

procedure THolidaySetFrm.btnOKClick(Sender: TObject);
var
  sSql, HolidayName, holidayDate: String;
  holidayType: Integer;
begin
  HolidayName := Trim(edt_HldName.Text);
  holidayDate := FormatDateTime('YYYY-MM-DD ', dtpk_Holiday.Date);
  holidayType := RdG_hldType.ItemIndex + 1;
  case btnOK.Tag of
    1:
      begin
        with ADOQry do
        begin
          Close;
          SQL.Clear;
          sSql := Format
            ('insert into holiday values (''%s'', ''%s'', %d, ''%s'') ',
            [User.WorkPeriod, holidayDate, holidayType, HolidayName]);
          SQL.Add(sSql);
          ExecSQL;
        end;
      end;

    2:
      begin
        with ADOQry do
        begin
          Close;
          SQL.Clear;
          sSql := Format
            ('delete from holiday  where  hol_date=''%s'' and hol_perdid=''%s'' ',
            [CurrentSelectDate, User.WorkPeriod]);
          SQL.Add(sSql);
          ExecSQL;
        end;
      end;

    3:
      begin
        with ADOQry do
        begin
          Close;
          SQL.Clear;
          sSql := Format
            ('Update holiday Set hol_sort=%d, hol_name=''%s'' where  hol_date=''%s'' and hol_perdid=''%s''  ',
            [holidayType, HolidayName, CurrentSelectDate, User.WorkPeriod]);
          SQL.Add(sSql);
          ExecSQL;
        end;
      end;
  end;
  btnCancel.Click;
end;

procedure THolidaySetFrm.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if gdSelected in State then
    DBGridEh1.Canvas.Brush.Color := clMoneyGreen;

  (Sender as TDBGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure THolidaySetFrm.DSDataChange(Sender: TObject; Field: TField);
begin
  if ADOQry.Active then
    try
      with ADOQry do
      begin
        dtpk_Holiday.DateTime := FieldByName('hol_date').AsDateTime;
        edt_HldName.Text := FieldByName('hol_name').AsString;
        RdG_hldType.ItemIndex :=   FieldByName('hol_sort').AsInteger -1;

        CurrentSelectDate := FormatDateTime('YYYY-MM-DD hh:mm:ss',
          dtpk_Holiday.DateTime);
      end;
    except
    end;
end;

procedure THolidaySetFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure THolidaySetFrm.FormCreate(Sender: TObject);
begin
  if DMfrm.DoDBConnect then
  begin
    ADOQry.Connection := DMfrm.ADOCon;
    SelectHolidayData('', '', False);
  end;
end;

function THolidaySetFrm.SelectHolidayData(Columu: string; LocateStr: Variant;
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
      sSql := Format('Select * FROM holiday where hol_perdid =''%s'' ',
        [User.WorkPeriod]);
      SQL.Add(sSql);
      Open;

      if (VarToStr(LocateStr) = 'First') or (VarToStr(LocateStr) = '') then
        First
      else if VarToStr(LocateStr) = 'Last' then
        Last
      else
        Locate(Columu, LocateStr, []);

      lblCount.Caption := Format(RecordCountShow, [RecordCount]);
      DS.OnDataChange(nil, nil);
    end;
  except
    Result := False;
  end;
end;

end.
