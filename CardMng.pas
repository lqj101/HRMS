unit CardMng;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, dm, UGlobal, DateUtils, msg,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ExtCtrls,
  Vcl.StdCtrls, Data.DB, Data.Win.ADODB, Vcl.ComCtrls, RzPanel, EhLibVCL;

type
  TCardMngFrm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    btnInsert: TButton;
    btnDelete: TButton;
    btnCopy: TButton;
    btnModify: TButton;
    DS: TDataSource;
    ADOQry: TADOQuery;
    ADOQrySerch: TADOQuery;
    Label1: TLabel;
    Label2: TLabel;
    edt_name: TEdit;
    edt_WorkNo: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    edt_oldCard: TEdit;
    edt_NewCard: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    dtpk_newCardStar: TDateTimePicker;
    dtpk_OldCardEnd: TDateTimePicker;
    Label7: TLabel;
    edt_dprt: TEdit;
    Label8: TLabel;
    edt_Group: TEdit;
    Label9: TLabel;
    edt_postion: TEdit;
    Button1: TButton;
    pnl_Ok_C: TPanel;
    btnOK: TButton;
    btnCancel: TButton;
    RzStatusBar1: TRzStatusBar;
    lblCount: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure Button1Click(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure edt_WorkNoKeyPress(Sender: TObject; var Key: Char);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnModifyClick(Sender: TObject);
  private
    { Private declarations }
    CurrentSelectUserId: string;
    CurrentSelectCard: String;
    function SelectCardMngData(Columu, LocateStr: string;
      IsFiltered: Boolean): Boolean;
    function SelectPrsnData: Boolean;
  public
    { Public declarations }
  end;

var
  CardMngFrm: TCardMngFrm;

implementation

{$R *.dfm}

procedure TCardMngFrm.btnCancelClick(Sender: TObject);
begin
  btnInsert.Enabled := False;
  pnl_Ok_C.Visible := False;
  Panel2.Enabled := True;
  Panel3.Enabled := False;

  SelectCardMngData('bc_newcard', CurrentSelectCard, False);
  DBGridEh1.SetFocus;
end;

procedure TCardMngFrm.btnInsertClick(Sender: TObject);
begin
  Panel3.Enabled := True;
  Panel2.Enabled := False;
  pnl_Ok_C.Visible := True;

  edt_WorkNo.Text := '';
  edt_name.Text := '';
  edt_dprt.Text := '';
  edt_Group.Text := '';
  edt_postion.Text := '';
  edt_NewCard.Text := '';
  edt_oldCard.Text := '';
  dtpk_newCardStar.DateTime := Now;
  dtpk_OldCardEnd.DateTime := Now;
  CurrentSelectUserId := '';

  btnOK.Tag := 1;
end;

procedure TCardMngFrm.btnModifyClick(Sender: TObject);
begin
  btnInsert.Enabled := False;
  Panel3.Enabled := True;
  Panel2.Enabled := False;
  pnl_Ok_C.Visible := True;

  btnOK.Tag := 3;
end;

procedure TCardMngFrm.edt_WorkNoKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and (ADOQrySerch.Active) then
  begin
    With ADOQrySerch do
    begin
      if Locate('Per_Code', Trim(edt_WorkNo.Text), []) then
      begin
        edt_name.Text := Trim(FieldByName('Per_Name').AsString);
        edt_dprt.Text := Trim(FieldByName('Dept_Name').AsString);
        edt_Group.Text := Trim(FieldByName('Grou_Name').AsString);
        edt_postion.Text := Trim(FieldByName('Post_Name').AsString);
        edt_oldCard.Text := Trim(FieldByName('NewCard').AsString);
        dtpk_newCardStar.DateTime := Now;
        dtpk_OldCardEnd.DateTime := Now - 1;
        CurrentSelectUserId := Trim(FieldByName('per_number').AsString);
      end;
    end;
  end;
end;

procedure TCardMngFrm.btnOKClick(Sender: TObject);
var
  sSql: String;
  perd, number, oldCard, newCard, trxdt, etrxdt: string;
begin
  perd := User.WorkPeriod;
  number := CurrentSelectUserId;
  oldCard := Trim(edt_oldCard.Text);
  newCard := Trim(edt_NewCard.Text);
  trxdt := DateTimeToStr(dtpk_newCardStar.DateTime);
  etrxdt := DateTimeToStr(dtpk_OldCardEnd.DateTime);

  if newCard = '' then
  begin
    MessageDlg(NewCardNotNull, mtError, [mbOK], 0);
    Exit;
  end;

  if newCard = oldCard then
  begin
    MessageDlg(CardNoCanntSame, mtError, [mbOK], 0);
    Exit;
  end;

  if dtpk_newCardStar.DateTime < dtpk_OldCardEnd.DateTime then
  begin
    MessageDlg(NewCardDateError, mtError, [mbOK], 0);
    Exit;
  end;

  case btnOK.Tag of
    1:
      begin
        with ADOQry do
        begin
          Close;
          SQL.Clear;
          sSql := Format
            ('select bc_oldcard from Bcard where bc_perdid=''%s'' and bc_oldcard=''%s'' ',
            [perd, newCard]);
          SQL.Add(sSql);
          Open;

          if RecordCount > 0 then
          begin
            MessageDlg(CardNoIsExisit, mtError, [mbOK], 0);
            Exit;
          end;

          Close;
          SQL.Clear;
          sSql := Format
            ('select bc_newcard from Bcard where bc_perdid=''%s'' and bc_newcard=''%s'' ',
            [perd, newCard]);
          SQL.Add(sSql);
          Open;

          if RecordCount > 0 then
          begin
            MessageDlg(CardNoIsExisit, mtError, [mbOK], 0);
            Exit;
          end;
        end;
        // ----- ------------
        with ADOQry do
        begin
          Close;
          SQL.Clear;
          sSql := Format
            ('INSERT INTO Bcard (Bc_perdid,Bc_Number,Bc_Oldcard,Bc_Newcard,Bc_trxdt,Bc_etrxdt) '
            + ' VALUES (''%s'',''%s'',''%s'',''%s'',''%s'',''%s'')',
            [perd, number, oldCard, newCard, trxdt, etrxdt]);
          SQL.Add(sSql);
          ExecSQL;

          Close;
          SQL.Clear;
          sSql := Format
            ('UPDATE Person SET Per_Cardcd=''%s'',NEWCard=''%s'' WHERE Per_Number=''%s'' AND Per_Perdid=''%s'' ',
            [newCard, newCard, number, perd]);
          SQL.Add(sSql);
          ExecSQL;

          CurrentSelectCard := newCard;
        end;
      end;

    2:
      begin

      end;

    3:
      begin
        with ADOQry do
        begin
          Close;
          SQL.Clear;
          sSql := Format
            ('UPDATE Bcard SET Bc_Newcard=''%s'', Bc_trxdt=''%s'',Bc_etrxdt=''%s''  '
            + ' WHERE Bc_perdid=''%s'' AND Bc_Number=''%s'' AND Bc_Newcard=''%s'' ',
            [newCard, trxdt, etrxdt, perd, number, CurrentSelectCard]);
          SQL.Add(sSql);
          ExecSQL;

          Close;
          SQL.Clear;
          sSql := Format
            ('UPDATE Person SET Per_Cardcd=''%s'',NEWCard=''%s'' WHERE Per_Number=''%s'' AND Per_Perdid=''%s'' ',
            [newCard, newCard, number, perd]);
          SQL.Add(sSql);
          ExecSQL;

          CurrentSelectCard := newCard;
        end;
      end;
  end;
  btnCancel.Click;
end;

procedure TCardMngFrm.Button1Click(Sender: TObject);
begin
  dtpk_newCardStar.DateTime := Now;
  dtpk_OldCardEnd.DateTime := Now;
end;

procedure TCardMngFrm.DSDataChange(Sender: TObject; Field: TField);
begin
  if ADOQry.Active then
    try
      with ADOQry do
      begin
        edt_WorkNo.Text := Trim(FieldByName('Per_Code').AsString);
        edt_name.Text := Trim(FieldByName('Per_Name').AsString);
        edt_dprt.Text := Trim(FieldByName('Dept_Name').AsString);
        edt_Group.Text := Trim(FieldByName('Grou_Name').AsString);
        edt_postion.Text := Trim(FieldByName('Post_Name').AsString);
        edt_NewCard.Text := Trim(FieldByName('bc_newcard').AsString);
        edt_oldCard.Text := Trim(FieldByName('bc_oldcard').AsString);

        dtpk_newCardStar.DateTime := FieldByName('bc_trxdt').AsDateTime;
        dtpk_OldCardEnd.DateTime := FieldByName('bc_etrxdt').AsDateTime;

        CurrentSelectUserId := Trim(FieldByName('bc_number').AsString);
        CurrentSelectCard := Trim(FieldByName('bc_newcard').AsString);

        if (dtpk_newCardStar.DateTime > User.WrkEndT) or
          (dtpk_newCardStar.DateTime < User.WrkStarT) then
        begin
          btnInsert.Enabled := True;
          btnModify.Enabled := False;
          btnDelete.Enabled := False;
          btnCopy.Enabled := False;
        end
        else
        begin
          btnInsert.Enabled := True;
          btnModify.Enabled := True;
        end;
      end;
    except
    end;
end;

procedure TCardMngFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TCardMngFrm.FormCreate(Sender: TObject);
begin
  if DMfrm.DoDBConnect then
  begin
    ADOQry.Connection := DMfrm.ADOCon;
    ADOQrySerch.Connection := DMfrm.ADOCon;
    SelectCardMngData('', '', False);
    SelectPrsnData;
  end;
end;

function TCardMngFrm.SelectCardMngData(Columu, LocateStr: string;
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
      sSql := Format
        ('Select Bcard.*,Dept_Name,Grou_Name,Per_Code,Per_Name,Post_Name,Per_Dept,Per_Group,Per_Indt From Bcard '
        + ' Left Join Person  On Bc_Number=Per_Number Left Join Depart  On Per_Dept =Dept_No  '
        + 'Left Join Wkgrou  On Per_Dept =Grou_Dept And Per_Group=Grou_No Left Join Postion On Per_Post =Post_No '
        + 'Where Per_Perdid=''%s''  And Bc_Perdid=''%s'' Order By Per_Dept,Per_Group,Per_Code,Bc_trxdt',
        [User.WorkPeriod, User.WorkPeriod]);

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

function TCardMngFrm.SelectPrsnData: Boolean;
var
  sSql: String;
begin
  Result := True;
  try
    with ADOQrySerch do
    begin
      Close;
      SQL.Clear;
      sSql := Format
        ('Select  Per_Code, per_Cardcd , per_name , Dept_Name, Grou_Name, Post_Name, per_number , NewCard From Person '
        + ' Left joIn Depart  On Per_Dept  = Dept_No Left joIn WkGrou  On Per_Dept  = Grou_Dept And Per_Group=Grou_No '
        + ' Left joIn Postion On Per_Post  = Post_No Where Per_Perdid=''%s'' Order By Per_Fact,Per_Dept,Per_Group,Per_Code',
        [User.WorkPeriod]);
      SQL.Add(sSql);
      Open;
      First;
    end;
  except
    Result := False;
  end;
end;

end.
