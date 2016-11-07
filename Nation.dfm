object Nationfrm: TNationfrm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #31821#36143#20195#30721#35774#23450
  ClientHeight = 290
  ClientWidth = 357
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 181
    Height = 290
    Align = alClient
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 179
      Height = 288
      Align = alClient
      Color = 8048060
      DataSource = DS
      DrawingStyle = gdsClassic
      GradientEndColor = clGray
      GradientStartColor = clOlive
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'nat_no'
          Title.Alignment = taCenter
          Title.Caption = #24207#21495
          Width = 54
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'nat_priv'
          Title.Alignment = taCenter
          Title.Caption = #31821#36143
          Width = 87
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 181
    Top = 0
    Width = 176
    Height = 290
    Align = alRight
    TabOrder = 1
    object btnInsert: TButton
      Left = 12
      Top = 27
      Width = 75
      Height = 30
      Caption = #22686#21152
      TabOrder = 0
      OnClick = btnInsertClick
    end
    object btnModify: TButton
      Left = 88
      Top = 27
      Width = 75
      Height = 30
      Caption = #20462#25913
      TabOrder = 1
      OnClick = btnModifyClick
    end
    object btnDelete: TButton
      Left = 12
      Top = 58
      Width = 75
      Height = 30
      Caption = #21024#38500
      TabOrder = 2
    end
    object btnClose: TButton
      Left = 88
      Top = 58
      Width = 75
      Height = 30
      Caption = #36864#20986
      TabOrder = 3
      OnClick = btnCloseClick
    end
    object Panel3: TPanel
      Left = 1
      Top = 114
      Width = 174
      Height = 175
      Align = alBottom
      TabOrder = 4
      Visible = False
      object Label1: TLabel
        Left = 11
        Top = 21
        Width = 31
        Height = 13
        AutoSize = False
        Caption = #24207#21495#65306'     '
      end
      object Label2: TLabel
        Left = 11
        Top = 61
        Width = 36
        Height = 13
        AutoSize = False
        Caption = #31821#36143#65306'     '
      end
      object edtNO: TEdit
        Left = 48
        Top = 18
        Width = 49
        Height = 21
        TabOrder = 0
      end
      object edtNation: TEdit
        Left = 48
        Top = 53
        Width = 102
        Height = 21
        TabOrder = 1
      end
      object btnOK: TButton
        Left = 8
        Top = 120
        Width = 73
        Height = 25
        Caption = #30830#23450
        TabOrder = 2
        OnClick = btnOKClick
      end
      object btnCancel: TButton
        Left = 87
        Top = 120
        Width = 73
        Height = 25
        Caption = #21462#28040
        TabOrder = 3
        OnClick = btnCancelClick
      end
    end
  end
  object ADOQry: TADOQuery
    Parameters = <>
    Left = 113
    Top = 40
  end
  object DS: TDataSource
    DataSet = ADOQry
    OnDataChange = DSDataChange
    Left = 81
    Top = 40
  end
end
