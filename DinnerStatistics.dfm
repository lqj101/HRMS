object DinnerStatisticsFrm: TDinnerStatisticsFrm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #23601#39184#25968#25454#32479#35745
  ClientHeight = 655
  ClientWidth = 1116
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
    Width = 1116
    Height = 118
    Align = alTop
    TabOrder = 0
    object Label8: TLabel
      Left = 154
      Top = 65
      Width = 59
      Height = 13
      AutoSize = False
      Caption = #22995'        '#21517#65306
    end
    object Label2: TLabel
      Left = 152
      Top = 38
      Width = 59
      Height = 13
      AutoSize = False
      Caption = #37096'        '#38376#65306
    end
    object Label1: TLabel
      Left = 346
      Top = 65
      Width = 62
      Height = 13
      AutoSize = False
      Caption = #26089#39184#37329#39069#65306
    end
    object Label3: TLabel
      Left = 346
      Top = 40
      Width = 62
      Height = 13
      AutoSize = False
      Caption = #26089#39184#27425#25968#65306
    end
    object Label4: TLabel
      Left = 478
      Top = 65
      Width = 62
      Height = 13
      AutoSize = False
      Caption = #21320#39184#37329#39069#65306
    end
    object Label5: TLabel
      Left = 478
      Top = 40
      Width = 62
      Height = 13
      AutoSize = False
      Caption = #21320#39184#27425#25968#65306
    end
    object Label6: TLabel
      Left = 608
      Top = 65
      Width = 62
      Height = 13
      AutoSize = False
      Caption = #26202#39184#37329#39069#65306
    end
    object Label7: TLabel
      Left = 608
      Top = 38
      Width = 62
      Height = 13
      AutoSize = False
      Caption = #26202#39184#27425#25968#65306
    end
    object Label9: TLabel
      Left = 737
      Top = 38
      Width = 62
      Height = 13
      AutoSize = False
      Caption = #22812#23477#27425#25968#65306
    end
    object Label10: TLabel
      Left = 737
      Top = 65
      Width = 62
      Height = 13
      AutoSize = False
      Caption = #22812#23477#37329#39069#65306
    end
    object Label11: TLabel
      Left = 860
      Top = 52
      Width = 38
      Height = 13
      AutoSize = False
      Caption = #21512#35745#65306
    end
    object lblCount: TLabel
      Left = 15
      Top = 81
      Width = 98
      Height = 16
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edt_Name: TEdit
      Left = 218
      Top = 59
      Width = 110
      Height = 21
      TabOrder = 0
    end
    object edt_Depart: TEdit
      Left = 218
      Top = 32
      Width = 110
      Height = 21
      TabOrder = 1
    end
    object btnRefrash: TButton
      Left = 1000
      Top = 14
      Width = 72
      Height = 25
      Caption = #32479#35745#25968#25454
      TabOrder = 2
      TabStop = False
      OnClick = btnRefrashClick
    end
    object edt_BrkfstTotal: TEdit
      Left = 410
      Top = 59
      Width = 53
      Height = 21
      TabOrder = 3
    end
    object edt_BrkfstTime: TEdit
      Left = 410
      Top = 32
      Width = 53
      Height = 21
      TabOrder = 4
    end
    object edt_LunchTime: TEdit
      Left = 539
      Top = 32
      Width = 53
      Height = 21
      TabOrder = 5
    end
    object edt_lunchTotal: TEdit
      Left = 539
      Top = 59
      Width = 53
      Height = 21
      TabOrder = 6
    end
    object edt_DinnerTime: TEdit
      Left = 667
      Top = 32
      Width = 53
      Height = 21
      TabOrder = 7
    end
    object edt_dinnerTotal: TEdit
      Left = 667
      Top = 59
      Width = 53
      Height = 21
      TabOrder = 8
    end
    object edt_suprTotal: TEdit
      Left = 796
      Top = 59
      Width = 53
      Height = 21
      TabOrder = 9
    end
    object edt_sprtime: TEdit
      Left = 796
      Top = 32
      Width = 53
      Height = 21
      TabOrder = 10
    end
    object edt_Total: TEdit
      Left = 901
      Top = 47
      Width = 59
      Height = 21
      TabOrder = 11
    end
    object Button1: TButton
      Left = 1000
      Top = 45
      Width = 72
      Height = 25
      Caption = #23548#20986#25253#34920
      TabOrder = 12
      TabStop = False
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 118
    Width = 1116
    Height = 518
    Align = alClient
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 1114
      Height = 516
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
          FieldName = 'V_dept_name'
          Footers = <>
          Title.Caption = #37096#38376
          Width = 72
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'V_per_name'
          Footers = <>
          Title.Caption = #22995#21517
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'V_per_Code'
          Footers = <>
          Title.Caption = #24037#21495
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'V_BrkfstTime'
          Footers = <>
          Title.Caption = #26089#39184#27425#25968
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'V_BrkfstUPrice'
          Footers = <>
          Title.Caption = #26089#39184#21333#20215
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'V_BrkfstSum'
          Footers = <>
          Title.Caption = #26089#39184#21512#35745
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'V_LunchTime'
          Footers = <>
          Title.Caption = #21320#39184#27425#25968
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'V_LunchUPrice'
          Footers = <>
          Title.Caption = #21320#39184#21333#20215
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'V_LunchSum'
          Footers = <>
          Title.Caption = #21320#39184#21512#35745
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'V_DinnerTime'
          Footers = <>
          Title.Caption = #26202#39184#27425#25968
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'V_DinnerUPrice'
          Footers = <>
          Title.Caption = #26202#39184#21333#20215
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'V_DinnerSum'
          Footers = <>
          Title.Caption = #26202#39184#21512#35745
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'V_SupperTime'
          Footers = <>
          Title.Caption = #22812#23477#27425#25968
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'V_SupperUPrice'
          Footers = <>
          Title.Caption = #22812#23477#21333#20215
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'V_SupperSum'
          Footers = <>
          Title.Caption = #22812#23477#21512#35745
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'V_Sum'
          Footers = <>
          Title.Caption = #29992#39184#24635#39069'('#20803')'
          Width = 78
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object RzStatusBar1: TRzStatusBar
    Left = 0
    Top = 636
    Width = 1116
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
    Left = 1064
    Top = 72
  end
end
