object DinnerDataViewFrm: TDinnerDataViewFrm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #23601#39184#21407#22987#35760#24405
  ClientHeight = 607
  ClientWidth = 871
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
    Width = 871
    Height = 118
    Align = alTop
    TabOrder = 0
    object Label10: TLabel
      Left = 77
      Top = 70
      Width = 59
      Height = 13
      AutoSize = False
      Caption = #21345'         '#21495#65306
    end
    object Label9: TLabel
      Left = 77
      Top = 46
      Width = 59
      Height = 13
      AutoSize = False
      Caption = #24037'         '#21495#65306
    end
    object Label8: TLabel
      Left = 78
      Top = 18
      Width = 59
      Height = 13
      AutoSize = False
      Caption = #22995'        '#21517#65306
    end
    object Label13: TLabel
      Left = 306
      Top = 41
      Width = 61
      Height = 13
      AutoSize = False
      Caption = #21047#21345#26102#38388#65306
    end
    object Label1: TLabel
      Left = 305
      Top = 73
      Width = 64
      Height = 13
      AutoSize = False
      Caption = #21047#21345#26426#21495#65306
    end
    object Label2: TLabel
      Left = 307
      Top = 15
      Width = 59
      Height = 13
      AutoSize = False
      Caption = #37096'      '#38376#65306
    end
    object edt_WorkNo: TEdit
      Left = 142
      Top = 37
      Width = 127
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
    object edt_CardNo: TEdit
      Left = 142
      Top = 65
      Width = 127
      Height = 21
      TabOrder = 1
    end
    object edt_Name: TEdit
      Left = 142
      Top = 10
      Width = 126
      Height = 21
      TabOrder = 2
      OnKeyPress = edt_NameKeyPress
    end
    object edt_DeviceNo: TEdit
      Left = 373
      Top = 65
      Width = 149
      Height = 21
      TabOrder = 3
    end
    object dtpk_CardStar: TDateTimePicker
      Left = 373
      Top = 38
      Width = 149
      Height = 21
      Date = 2.000000000000000000
      Format = 'yyyy-MM-dd HH'#65306'mm'#65306'ss'
      Time = 2.000000000000000000
      TabOrder = 4
    end
    object edt_Depart: TEdit
      Left = 373
      Top = 11
      Width = 149
      Height = 21
      TabOrder = 5
    end
    object Button1: TButton
      Left = 584
      Top = 9
      Width = 75
      Height = 25
      Caption = #21047#26032#25968#25454
      TabOrder = 6
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 584
      Top = 40
      Width = 75
      Height = 25
      Caption = #23548#20986'EXCEL'
      TabOrder = 7
      OnClick = Button2Click
    end
    object CheckBox1: TCheckBox
      Left = 585
      Top = 73
      Width = 74
      Height = 17
      Caption = #31579#36873
      TabOrder = 8
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 118
    Width = 871
    Height = 470
    Align = alClient
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 869
      Height = 468
      Align = alClient
      Color = 7787208
      DataSource = DS
      DynProps = <>
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghFooter3D, dghClearSelection, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
      ParentShowHint = False
      RowDetailPanel.Color = clWhite
      ShowHint = False
      TabOrder = 0
      OnDrawColumnCell = DBGridEh1DrawColumnCell
      Columns = <
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'Dept_Name'
          Footers = <>
          Title.Caption = #37096#38376
          Width = 141
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_name'
          Footers = <>
          Title.Caption = #22995#21517
          Width = 81
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'sou_date'
          Footers = <>
          Title.Caption = #21047#21345#26085#26399
          Width = 135
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'sou_cardcd'
          Footers = <>
          Title.Caption = #21047#21345#21345#21495
          Width = 213
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'sou_machid'
          Footers = <>
          Title.Caption = #21047#21345#26426#21495
          Width = 66
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object RzStatusBar1: TRzStatusBar
    Left = 0
    Top = 588
    Width = 871
    Height = 19
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 0
    TabOrder = 2
    object RzPs: TRzProgressStatus
      Left = 0
      Top = 0
      Width = 169
      Height = 19
      Align = alLeft
      ParentShowHint = False
      PartsComplete = 0
      Percent = 0
      TotalParts = 0
    end
  end
  object DS: TDataSource
    DataSet = ADOQry
    OnDataChange = DSDataChange
    Left = 511
    Top = 464
  end
  object ADOQry: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from person')
    Left = 559
    Top = 464
  end
  object SD1: TSaveDialog
    Left = 542
    Top = 8
  end
end
