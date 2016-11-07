object Deprtfrm: TDeprtfrm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #32452#32455#26426#26500#20195#30721
  ClientHeight = 526
  ClientWidth = 834
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
    Width = 834
    Height = 159
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 85
      Width = 60
      Height = 13
      Caption = #24037#21378#32534#30721#65306
    end
    object Label2: TLabel
      Left = 12
      Top = 109
      Width = 60
      Height = 13
      Caption = #24037#21378#21517#31216#65306
    end
    object Label3: TLabel
      Left = 22
      Top = 135
      Width = 48
      Height = 13
      Caption = #36127#36131#20154#65306
    end
    object Label4: TLabel
      Left = 568
      Top = 90
      Width = 60
      Height = 13
      Caption = #29677#32452#32534#30721#65306
    end
    object Label5: TLabel
      Left = 568
      Top = 113
      Width = 60
      Height = 13
      Caption = #29677#32452#21517#31216#65306
    end
    object Label6: TLabel
      Left = 580
      Top = 136
      Width = 48
      Height = 13
      Caption = #36127#36131#20154#65306
    end
    object Label7: TLabel
      Left = 284
      Top = 112
      Width = 60
      Height = 13
      Caption = #37096#38376#21517#31216#65306
    end
    object Label8: TLabel
      Left = 294
      Top = 138
      Width = 48
      Height = 13
      Caption = #36127#36131#20154#65306
    end
    object Label9: TLabel
      Left = 283
      Top = 88
      Width = 60
      Height = 13
      Caption = #37096#38376#32534#30721#65306
    end
    object Panel3: TPanel
      Left = 5
      Top = 2
      Width = 225
      Height = 70
      BevelOuter = bvNone
      TabOrder = 0
      object btnModify: TButton
        Left = 151
        Top = 5
        Width = 63
        Height = 25
        Caption = #20462#25913
        TabOrder = 0
        OnClick = btnModifyClick
      end
      object btnDelete: TButton
        Left = 87
        Top = 4
        Width = 58
        Height = 26
        Caption = #21024#38500
        TabOrder = 1
        OnClick = btnDeleteClick
      end
      object btnInsert: TButton
        Left = 17
        Top = 5
        Width = 58
        Height = 25
        Caption = #22686#21152
        TabOrder = 2
        OnClick = btnInsertClick
      end
      object pnl_Ok_C: TPanel
        Left = 55
        Top = 36
        Width = 115
        Height = 29
        TabOrder = 3
        Visible = False
        object btnOK: TButton
          Left = 2
          Top = 4
          Width = 54
          Height = 22
          Caption = #30830#23450
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = btnOKClick
        end
        object btnCancel: TButton
          Left = 58
          Top = 4
          Width = 54
          Height = 22
          Caption = #21462#28040
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = btnCancelClick
        end
      end
    end
    object pnl_Fac: TPanel
      Left = 72
      Top = 71
      Width = 142
      Height = 84
      BevelOuter = bvNone
      Enabled = False
      TabOrder = 1
      OnMouseMove = DBGrid1MouseMove
      object edt_FacNO: TEdit
        Left = 12
        Top = 7
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object edt_FacName: TEdit
        Left = 12
        Top = 33
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object edt_FacPrsn: TEdit
        Left = 12
        Top = 59
        Width = 121
        Height = 21
        TabOrder = 2
      end
    end
    object pnl_Dprt: TPanel
      Left = 350
      Top = 63
      Width = 181
      Height = 93
      BevelOuter = bvNone
      Enabled = False
      TabOrder = 2
      object edt_DeprtNO: TEdit
        Left = 3
        Top = 14
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object edt_DeprtName: TEdit
        Left = 3
        Top = 42
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object edt_DeprtPrsn: TEdit
        Left = 3
        Top = 68
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object ckb_Show_hint: TCheckBox
        Left = 132
        Top = 72
        Width = 97
        Height = 17
        Caption = #26174'/'#38544
        TabOrder = 3
      end
    end
    object pnl_Grp: TPanel
      Left = 626
      Top = 76
      Width = 159
      Height = 81
      BevelOuter = bvNone
      Enabled = False
      TabOrder = 3
      OnMouseMove = DBGrid3MouseMove
      object edt_GroupNO: TEdit
        Left = 4
        Top = 3
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object edt_GroupName: TEdit
        Left = 4
        Top = 31
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object edt_GroupPrsn: TEdit
        Left = 4
        Top = 57
        Width = 121
        Height = 21
        TabOrder = 2
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 159
    Width = 834
    Height = 367
    Align = alClient
    TabOrder = 1
    object DBGrid3: TDBGrid
      Left = 552
      Top = 1
      Width = 281
      Height = 365
      Align = alRight
      Color = 8048060
      DataSource = DS3
      DrawingStyle = gdsClassic
      GradientEndColor = clGray
      GradientStartColor = clOlive
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnMouseMove = DBGrid3MouseMove
      Columns = <
        item
          Expanded = False
          FieldName = 'grou_factory'
          Title.Alignment = taCenter
          Title.Caption = #24037#21378
          Width = 37
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'grou_dept'
          Title.Alignment = taCenter
          Title.Caption = #37096#38376
          Width = 41
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'grou_no'
          Title.Caption = #29677#32452#30721
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'grou_name'
          Title.Caption = #29677#32452#21517#31216
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'grou_mag'
          Title.Caption = #36127#36131#20154
          Width = 40
          Visible = True
        end>
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 232
      Height = 365
      Align = alLeft
      Color = 8048060
      DataSource = DS1
      DrawingStyle = gdsClassic
      GradientEndColor = clGray
      GradientStartColor = clOlive
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnMouseMove = DBGrid1MouseMove
      Columns = <
        item
          Expanded = False
          FieldName = 'fact_code'
          Title.Alignment = taCenter
          Title.Caption = #24037#21378#30721
          Width = 54
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'fact_sname'
          Title.Alignment = taCenter
          Title.Caption = #24037#21378#21517#31216
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fact_mag'
          Title.Caption = #36127#36131#20154
          Visible = True
        end>
    end
    object DBGrid2: TDBGridEh
      Left = 233
      Top = 1
      Width = 319
      Height = 365
      Align = alClient
      Color = 8048060
      DataSource = DS2
      DynProps = <>
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 2
      OnDrawColumnCell = DBGrid2DrawColumnCell
      OnMouseMove = DBGrid2MouseMove
      Columns = <
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'dept_factory'
          Footers = <>
          Title.Caption = #24037#21378
          Width = 28
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'dept_no'
          Footers = <>
          Title.Caption = #37096#38376#20195#30721
          Width = 55
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'dept_name'
          Footers = <>
          Title.Caption = #37096#38376#21517#31216
          Width = 106
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'dept_mag'
          Footers = <>
          Title.Caption = #36127#36131#20154
          Width = 55
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'hide'
          Footers = <>
          Title.Caption = #26174'/'#38544
          Width = 36
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object DS1: TDataSource
    DataSet = ADOQry1
    OnDataChange = DS1DataChange
    Left = 33
    Top = 224
  end
  object ADOQry1: TADOQuery
    Parameters = <>
    Left = 73
    Top = 240
  end
  object DS2: TDataSource
    DataSet = ADOQry2
    OnDataChange = DS2DataChange
    Left = 345
    Top = 240
  end
  object ADOQry2: TADOQuery
    Parameters = <>
    Left = 397
    Top = 256
  end
  object DS3: TDataSource
    DataSet = ADOQry3
    OnDataChange = DS3DataChange
    Left = 625
    Top = 272
  end
  object ADOQry3: TADOQuery
    Parameters = <>
    Left = 657
    Top = 280
  end
end
