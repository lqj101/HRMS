object BadgePrintFrm: TBadgePrintFrm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #21378#29260#25171#21360
  ClientHeight = 505
  ClientWidth = 661
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
  object Label1: TLabel
    Left = 48
    Top = 70
    Width = 36
    Height = 13
    Caption = #22995#21517#65306
  end
  object Label2: TLabel
    Left = 48
    Top = 48
    Width = 36
    Height = 13
    Caption = #37096#38376#65306
  end
  object btnPrint: TButton
    Left = 313
    Top = 65
    Width = 75
    Height = 25
    Caption = #25171' '#21360
    Enabled = False
    TabOrder = 0
    OnClick = btnPrintClick
  end
  object DBGridEh1: TDBGridEh
    Left = 16
    Top = 152
    Width = 299
    Height = 329
    DataSource = DS
    DynProps = <>
    ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    Columns = <
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'per_dept'
        Footers = <>
        Title.Caption = #37096#38376#21495
        Width = 45
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'per_code'
        Footers = <>
        Title.Caption = #24037#21495
        Width = 57
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'per_name'
        Footers = <>
        Title.Caption = #22995#21517
        Width = 69
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'Dept_Name'
        Footers = <>
        Title.Caption = #37096#38376
        Width = 88
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object edt_name: TEdit
    Left = 90
    Top = 67
    Width = 121
    Height = 21
    ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
    TabOrder = 2
  end
  object cmbDepart: TComboBox
    Left = 90
    Top = 40
    Width = 121
    Height = 21
    ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
    TabOrder = 3
  end
  object Button2: TButton
    Left = 232
    Top = 65
    Width = 75
    Height = 25
    Caption = #31579#36873#21517#21333
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 328
    Top = 232
    Width = 53
    Height = 25
    Caption = '>'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 328
    Top = 274
    Width = 53
    Height = 25
    Caption = '>>'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 328
    Top = 318
    Width = 53
    Height = 25
    Caption = '<'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 328
    Top = 360
    Width = 53
    Height = 25
    Caption = '<<'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = Button6Click
  end
  object ListBox: TListBox
    Left = 400
    Top = 152
    Width = 249
    Height = 329
    ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
    ItemHeight = 13
    TabOrder = 9
  end
  object btnSelected: TButton
    Left = 313
    Top = 34
    Width = 75
    Height = 25
    Caption = #36873#23450
    TabOrder = 10
    OnClick = btnSelectedClick
  end
  object Button1: TButton
    Left = 232
    Top = 34
    Width = 75
    Height = 25
    Caption = #21047#26032#21517#21333
    TabOrder = 11
    OnClick = Button1Click
  end
  object frxReport1: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41684.498850185200000000
    ReportOptions.LastChange = 42349.375015914360000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 600
    Top = 16
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      Frame.Typ = [ftRight]
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 207.874150000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        Columns = 2
        ColumnWidth = 340.157480314961000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 143.070965000000000000
          Top = 63.692950000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          DataField = 'per_name'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."per_name"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 150.070965000000000000
          Top = 87.267780000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          DataField = 'Dept_Name'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."Dept_Name"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 143.070965000000000000
          Top = 110.165430000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          DataField = 'Post_Name'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."Post_Name"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 133.173315000000000000
          Top = 133.740260000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          DataField = 'per_cardcd'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."per_cardcd"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 137.173315000000000000
          Top = 156.858380000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          DataField = 'per_indt'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."per_indt"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 124.173315000000000000
          Top = 178.535560000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          DataField = 'per_code'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."per_code"]')
          ParentFont = False
        end
      end
    end
  end
  object ADOQry: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    Left = 262
    Top = 448
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'per_dept=per_dept'
      'per_code=per_code'
      'per_cardcd=per_cardcd'
      'per_name=per_name'
      'Dept_Name=Dept_Name'
      'Post_Name=Post_Name'
      'per_indt=per_indt')
    DataSet = ADOQry
    BCDToCurrency = False
    Left = 536
    Top = 16
  end
  object frxOLEObject1: TfrxOLEObject
    Left = 472
    Top = 16
  end
  object DS: TDataSource
    DataSet = ADOQry
    Left = 234
    Top = 448
  end
end
