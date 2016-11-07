object DinnerCodeFrm: TDinnerCodeFrm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #39184#31867#20195#30721#31649#29702
  ClientHeight = 426
  ClientWidth = 652
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 652
    Height = 41
    Align = alTop
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 652
    Height = 385
    Align = alClient
    TabOrder = 1
    ExplicitLeft = -63
    ExplicitTop = -63
    ExplicitWidth = 698
    ExplicitHeight = 489
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 650
      Height = 383
      Align = alClient
      Color = 7787208
      DataSource = DS
      DynProps = <>
      IndicatorOptions = [gioShowRowIndicatorEh]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghFooter3D, dghClearSelection, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
      ParentShowHint = False
      RowDetailPanel.Color = clWhite
      ShowHint = False
      TabOrder = 0
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object DS: TDataSource
    DataSet = ADOQry
    Left = 536
    Top = 328
  end
  object ADOQry: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from person')
    Left = 488
    Top = 320
  end
end
