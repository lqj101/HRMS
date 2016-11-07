object AccountlaborageFrm: TAccountlaborageFrm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #31163#32844#24037#36164#32467#31639
  ClientHeight = 650
  ClientWidth = 1132
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
  object RzStatusBar1: TRzStatusBar
    Left = 0
    Top = 631
    Width = 1132
    Height = 19
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 0
    TabOrder = 0
    object RzStatusPane1: TRzStatusPane
      Left = 105
      Top = 0
      Width = 606
      Height = 19
      Align = alLeft
      Caption = 'Tips: Ctrl+F, '#26597#25214#65307' F3'#65292' '#26631#35760#24050#32467#65307' F4 '#65292#26631#35760#26410#32467#65307' F5'#65292#25171#21360'.'
      ExplicitLeft = 152
      ExplicitTop = 5
    end
    object RzPs: TRzProgressStatus
      Left = 0
      Top = 0
      Width = 105
      Height = 19
      Align = alLeft
      ParentShowHint = False
      PartsComplete = 0
      Percent = 0
      TotalParts = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1132
    Height = 209
    Align = alTop
    TabOrder = 1
    object lblCount: TLabel
      Left = 9
      Top = 172
      Width = 77
      Height = 13
      AutoSize = False
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btnModify: TButton
      Left = 81
      Top = 72
      Width = 62
      Height = 24
      Caption = #20462#25913
      TabOrder = 0
      OnClick = btnModifyClick
    end
    object btnDelete: TButton
      Left = 18
      Top = 97
      Width = 62
      Height = 24
      Caption = #21024#38500
      Enabled = False
      TabOrder = 1
    end
    object btnCopy: TButton
      Left = 81
      Top = 97
      Width = 62
      Height = 24
      Caption = #22797#21046
      Enabled = False
      TabOrder = 2
    end
    object btnInsert: TButton
      Left = 18
      Top = 72
      Width = 62
      Height = 24
      Caption = #22686#21152
      Enabled = False
      TabOrder = 3
    end
    object Panel3: TPanel
      Left = 175
      Top = 5
      Width = 682
      Height = 199
      TabOrder = 4
      object Label5: TLabel
        Left = 11
        Top = 30
        Width = 60
        Height = 13
        Caption = #19978#26376#24212#21457#65306
      end
      object Label1: TLabel
        Left = 11
        Top = 57
        Width = 60
        Height = 13
        Caption = #19978#26376#27700#30005#65306
      end
      object Label2: TLabel
        Left = 11
        Top = 86
        Width = 60
        Height = 13
        Caption = #19978#26376#20303#23487#65306
      end
      object Label3: TLabel
        Left = 11
        Top = 110
        Width = 60
        Height = 13
        Caption = #19978#26376#39184#36153#65306
      end
      object Label4: TLabel
        Left = 11
        Top = 137
        Width = 60
        Height = 13
        Caption = #19978#26376#21307#20445#65306
      end
      object Label6: TLabel
        Left = 11
        Top = 167
        Width = 60
        Height = 13
        Caption = #19978#26376#20114#21161#65306
      end
      object Label7: TLabel
        Left = 187
        Top = 33
        Width = 60
        Height = 13
        Caption = #24403#26376#24212#21457#65306
      end
      object Label8: TLabel
        Left = 187
        Top = 59
        Width = 60
        Height = 13
        Caption = #24403#26376#27700#30005#65306
      end
      object Label9: TLabel
        Left = 187
        Top = 87
        Width = 60
        Height = 13
        Caption = #24403#26376#20303#23487#65306
      end
      object Label10: TLabel
        Left = 187
        Top = 114
        Width = 60
        Height = 13
        Caption = #24403#26376#39184#36153#65306
      end
      object Label11: TLabel
        Left = 187
        Top = 140
        Width = 60
        Height = 13
        Caption = #24403#26376#21307#20445#65306
      end
      object Label12: TLabel
        Left = 187
        Top = 167
        Width = 60
        Height = 13
        Caption = #24403#26376#20114#21161#65306
      end
      object Label13: TLabel
        Left = 363
        Top = 28
        Width = 60
        Height = 13
        Caption = #24037#21345#36864#27454#65306
      end
      object Label14: TLabel
        Left = 363
        Top = 59
        Width = 60
        Height = 13
        Caption = #20854#20182#34917#27454#65306
      end
      object Label15: TLabel
        Left = 363
        Top = 87
        Width = 60
        Height = 13
        Caption = #25187#20511#25903#27454#65306
      end
      object Label16: TLabel
        Left = 363
        Top = 114
        Width = 60
        Height = 13
        Caption = #24613#36766#25187#27454#65306
      end
      object Label17: TLabel
        Left = 363
        Top = 139
        Width = 60
        Height = 13
        Caption = #20195#25187#31246#37329#65306
      end
      object Label18: TLabel
        Left = 363
        Top = 167
        Width = 60
        Height = 13
        Caption = #36180#34915#38795#24125#65306
      end
      object Label19: TLabel
        Left = 523
        Top = 33
        Width = 60
        Height = 13
        Caption = #20854#20182#25187#27454#65306
      end
      object Label20: TLabel
        Left = 523
        Top = 58
        Width = 60
        Height = 13
        Caption = #32602'        '#27454#65306
      end
      object Label21: TLabel
        Left = 523
        Top = 167
        Width = 60
        Height = 13
        Caption = #23454#24471#24037#36164#65306
      end
      object edt_lastPay: TEdit
        Left = 77
        Top = 25
        Width = 74
        Height = 21
        TabOrder = 0
        Text = '0.0'
      end
      object edt_lastWEpay: TEdit
        Left = 77
        Top = 52
        Width = 74
        Height = 21
        TabOrder = 1
        Text = '0.0'
      end
      object edt_lasthousePay: TEdit
        Left = 77
        Top = 81
        Width = 74
        Height = 21
        TabOrder = 2
        Text = '0.0'
      end
      object edt_lastdinnerPay: TEdit
        Left = 77
        Top = 108
        Width = 74
        Height = 21
        TabOrder = 3
        Text = '0.0'
      end
      object edt_lastYBpay: TEdit
        Left = 77
        Top = 135
        Width = 74
        Height = 21
        TabOrder = 4
        Text = '0.0'
      end
      object edt_lastHZpay: TEdit
        Left = 77
        Top = 164
        Width = 74
        Height = 21
        TabOrder = 5
        Text = '0.0'
      end
      object edt_CurrentPay: TEdit
        Left = 253
        Top = 25
        Width = 74
        Height = 21
        TabOrder = 6
        Text = '0.0'
      end
      object edt_CurrentWEpay: TEdit
        Left = 253
        Top = 52
        Width = 74
        Height = 21
        TabOrder = 7
        Text = '0.0'
      end
      object edt_CurrenthousePay: TEdit
        Left = 253
        Top = 81
        Width = 74
        Height = 21
        TabOrder = 8
        Text = '0.0'
      end
      object edt_CurrentdinnerPay: TEdit
        Left = 253
        Top = 108
        Width = 74
        Height = 21
        ReadOnly = True
        TabOrder = 9
        Text = '0.0'
      end
      object edt_CurrentYBpay: TEdit
        Left = 253
        Top = 135
        Width = 74
        Height = 21
        TabOrder = 10
        Text = '0.0'
      end
      object edt_CurrentHZpay: TEdit
        Left = 253
        Top = 164
        Width = 74
        Height = 21
        TabOrder = 11
        Text = '0.0'
      end
      object edt_WkCrdRepay: TEdit
        Left = 429
        Top = 25
        Width = 74
        Height = 21
        TabOrder = 12
        Text = '0.0'
      end
      object edt_othrPay: TEdit
        Left = 429
        Top = 52
        Width = 74
        Height = 21
        TabOrder = 13
        Text = '0.0'
      end
      object edt_CutLoan: TEdit
        Left = 429
        Top = 81
        Width = 74
        Height = 21
        TabOrder = 14
        Text = '0.0'
      end
      object edt_WYCutpay: TEdit
        Left = 429
        Top = 108
        Width = 74
        Height = 21
        TabOrder = 15
        Text = '0.0'
      end
      object edt_Tax: TEdit
        Left = 429
        Top = 136
        Width = 74
        Height = 21
        TabOrder = 16
        Text = '0.0'
      end
      object edt_CHCutPay: TEdit
        Left = 429
        Top = 164
        Width = 74
        Height = 21
        TabOrder = 17
        Text = '0.0'
      end
      object edt_OthrCutPay: TEdit
        Left = 589
        Top = 25
        Width = 74
        Height = 21
        TabOrder = 18
        Text = '0.0'
      end
      object edt_fine: TEdit
        Left = 589
        Top = 52
        Width = 74
        Height = 21
        TabOrder = 19
        Text = '0.0'
      end
      object edt_THPay: TEdit
        Left = 589
        Top = 164
        Width = 74
        Height = 21
        ReadOnly = True
        TabOrder = 20
        Text = '0.0'
      end
    end
    object ckb_hint: TCheckBox
      Left = 17
      Top = 13
      Width = 138
      Height = 14
      Caption = #26174#31034'/'#38544#34255#24050#32467#31639#21517#21333
      TabOrder = 5
      OnClick = ckb_hintClick
    end
    object pnl_Ok_C: TPanel
      Left = 20
      Top = 126
      Width = 119
      Height = 30
      TabOrder = 6
      Visible = False
      object btnOK: TButton
        Left = 4
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
        Left = 61
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
    object butRpt: TButton
      Left = 1032
      Top = 167
      Width = 75
      Height = 25
      Caption = #25171#21360#32467#31639#21333
      TabOrder = 7
      OnClick = butRptClick
    end
    object Button2: TButton
      Left = 1032
      Top = 138
      Width = 72
      Height = 25
      Caption = #23548#20986'EXCEL'
      TabOrder = 8
      OnClick = Button2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 209
    Width = 1132
    Height = 422
    Align = alClient
    TabOrder = 2
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 1130
      Height = 420
      Align = alClient
      Color = 7787208
      DataSource = DS
      DynProps = <>
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghFooter3D, dghClearSelection, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      OnDrawColumnCell = DBGridEh1DrawColumnCell
      OnKeyDown = DBGridEh1KeyDown
      Columns = <
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'Dept_Name'
          Footers = <>
          Title.Caption = #37096#38376
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'Grou_Name'
          Footers = <>
          Title.Caption = #29677#32452
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'Per_Name'
          Footers = <>
          Title.Caption = #22995#21517
          Width = 69
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'Per_Cardcd'
          Footers = <>
          Title.Caption = #21345#21495
          Width = 72
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'Per_Ssort'
          Footers = <>
          Title.Caption = #34218#36164#31867#22411
          Width = 38
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'Post_Name'
          Footers = <>
          Title.Caption = #32844#20301
          Width = 89
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'Oc_As01'
          Footers = <>
          Title.Caption = #19978#26376#24212#21457
          Width = 55
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'Oc_Bs01'
          Footers = <>
          Title.Caption = #24403#26376#24212#21457
          Width = 54
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'Oc_Bs02'
          Footers = <>
          Title.Caption = #25187#20511#25903#27454
          Width = 51
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'Oc_As03'
          Footers = <>
          Title.Caption = #19978#26376#27700#30005
          Width = 56
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'Oc_Bs03'
          Footers = <>
          Title.Caption = #24403#26376#27700#30005
          Width = 52
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'Oc_As04'
          Footers = <>
          Title.Caption = #19978#26376#20303#23487
          Width = 52
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'Oc_Bs04'
          Footers = <>
          Title.Caption = #24403#26376#20303#23487
          Width = 52
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'Oc_As05'
          Footers = <>
          Title.Caption = #19978#26376#39184#36153
          Width = 52
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'Oc_Bs05'
          Footers = <>
          Title.Caption = #24403#26376#39184#36153
          Width = 53
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'Oc_As06'
          Footers = <>
          Title.Caption = #19978#26376#21307#20445
          Width = 55
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'Oc_Bs06'
          Footers = <>
          Title.Caption = #24403#26376#21307#20445
          Width = 54
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'Oc_As07'
          Footers = <>
          Title.Caption = #19978#26376#20114#21161#37329
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'Oc_Bs07'
          Footers = <>
          Title.Caption = #26412#26376#20114#21161#37329
          Width = 68
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'Oc_Bs08'
          Footers = <>
          Title.Caption = #24613#36766#20195#25187#27454
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'Oc_Bs09'
          Footers = <>
          Title.Caption = #20195#25187#31246#37329
          Width = 51
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'Oc_Bs10'
          Footers = <>
          Title.Caption = #36180#34915#38795#24125
          Width = 54
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'Oc_Bs11'
          Footers = <>
          Title.Caption = #20854#20182#25187#27454
          Width = 52
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'Oc_Bs14'
          Footers = <>
          Title.Caption = #20854#20182#34917#27454
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'Oc_Bs12'
          Footers = <>
          Title.Caption = #24037#21345#36864#27454
          Width = 53
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'Oc_Bs13'
          Footers = <>
          Title.Caption = #32602#27454
          Width = 34
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'oc_Total'
          Footers = <>
          Title.Caption = #23454#24471#24037#36164
          Width = 58
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'Oc_Pass'
          Footers = <>
          ReadOnly = True
          Title.Caption = #26159#21542#32467#31639
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'Oc_Perdid'
          Footers = <>
          Title.Caption = #21608#26399
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'Oc_Print'
          Footers = <>
          Visible = False
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object DS: TDataSource
    DataSet = ADOQry
    OnDataChange = DSDataChange
    Left = 510
    Top = 379
  end
  object ADOQry: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        '        Select OutCalc.*, (Oc_Bs01+Oc_Bs12+Oc_Bs14+Oc_As01-Oc_Bs' +
        '02-Oc_Bs03-Oc_Bs04-Oc_Bs05-Oc_Bs06-Oc_Bs07-Oc_Bs08-Oc_Bs09-Oc_Bs' +
        '10-Oc_Bs11-Oc_Bs13-Oc_As03-Oc_As04-Oc_As05-Oc_As06-Oc_As07) as o' +
        'c_Total, '
      
        '         Dept_Name,Grou_Name,Per_Code,Per_Cardcd,Per_Name,Post_N' +
        'ame,Per_Dept,Per_Group,Per_Ssort,'
      
        '         Per_Id,Per_Poff,Per_Indt,Per_OutDt,Per_OffDt From OutCa' +
        'lc Left Join Person '
      
        '         On Oc_Number=Per_Number Left Join Depart  On Per_Dept =' +
        'Dept_No Left Join Wkgrou  '
      
        '        On Per_Dept =Grou_Dept And Per_Group=Grou_No Left Join P' +
        'ostion On Per_Post =Post_No  '
      
        '         Where Per_Perdid='#39'201510'#39'  And Oc_Perdid='#39'201510'#39'  And ' +
        'Per_OutDt>=Per_Indt Order By Per_Dept,Per_Group,Per_Code')
    Left = 509
    Top = 408
  end
  object ADOQrySerch: TADOQuery
    Parameters = <>
    Left = 961
    Top = 392
  end
  object frDS: TfrxDBDataset
    UserName = 'frDS'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Oc_Perdid=Oc_Perdid'
      'Oc_Number=Oc_Number'
      'Oc_Bs01=Oc_Bs01'
      'Oc_Bs02=Oc_Bs02'
      'Oc_Bs03=Oc_Bs03'
      'Oc_Bs04=Oc_Bs04'
      'Oc_Bs05=Oc_Bs05'
      'Oc_Bs06=Oc_Bs06'
      'Oc_Bs07=Oc_Bs07'
      'Oc_Bs08=Oc_Bs08'
      'Oc_Bs09=Oc_Bs09'
      'Oc_Bs10=Oc_Bs10'
      'Oc_Bs11=Oc_Bs11'
      'Oc_Bs12=Oc_Bs12'
      'Oc_Bs13=Oc_Bs13'
      'Oc_Bs14=Oc_Bs14'
      'Oc_As01=Oc_As01'
      'Oc_As03=Oc_As03'
      'Oc_As04=Oc_As04'
      'Oc_As05=Oc_As05'
      'Oc_As06=Oc_As06'
      'Oc_As07=Oc_As07'
      'Oc_Pass=Oc_Pass'
      'Oc_Print=Oc_Print'
      'oc_Total=oc_Total'
      'Dept_Name=Dept_Name'
      'Grou_Name=Grou_Name'
      'Per_Code=Per_Code'
      'Per_Cardcd=Per_Cardcd'
      'Per_Name=Per_Name'
      'Post_Name=Post_Name'
      'Per_Dept=Per_Dept'
      'Per_Group=Per_Group'
      'Per_Ssort=Per_Ssort'
      'Per_Id=Per_Id'
      'Per_Poff=Per_Poff'
      'Per_Indt=Per_Indt'
      'Per_OutDt=Per_OutDt'
      'Per_OffDt=Per_OffDt')
    DataSet = ADOQry
    BCDToCurrency = False
    Left = 1064
    Top = 8
  end
  object frxRprt: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41684.498850185200000000
    ReportOptions.LastChange = 42306.406902523150000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxRprtGetValue
    OnUserFunction = frxRprtUserFunction
    Left = 1064
    Top = 50
    Datasets = <
      item
        DataSet = frDS
        DataSetName = 'frDS'
      end>
    Variables = <
      item
        Name = ' var'
        Value = Null
      end
      item
        Name = 'm1'
        Value = ''
      end
      item
        Name = 'm2'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      Frame.Style = fsDot
      Frame.Typ = [ftRight]
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 555.590910000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 793.701299999999900000
        Columns = 1
        ColumnWidth = 340.157480314961000000
        DataSet = frDS
        DataSetName = 'frDS'
        RowCount = 0
        object Shape2: TfrxShapeView
          Left = 35.795300000000000000
          Top = 154.078850000000000000
          Width = 737.008350000000000000
          Height = 219.212740000000000000
        end
        object Memo1: TfrxMemoView
          Left = 117.614255000000000000
          Top = 188.637910000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'Oc_As03'
          DataSet = frDS
          DataSetName = 'frDS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDS."Oc_As03"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 123.055195000000000000
          Top = 344.275820000000000000
          Width = 94.488249999999990000
          Height = 18.897650000000000000
          DataField = 'oc_Total'
          DataSet = frDS
          DataSetName = 'frDS'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDS."oc_Total"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 119.606370000000000000
          Top = 161.976500000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          DataField = 'Oc_As01'
          DataSet = frDS
          DataSetName = 'frDS'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDS."Oc_As01"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 310.700990000000000000
          Top = 15.338590000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #28145#22323#21326#31908#23453#30005#27744#26377#38480#20844#21496)
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 298.023810000000000000
          Top = 32.677180000000000000
          Width = 177.637910000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            #21592#24037#31163#32844#32467#31639#21333)
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 298.582870000000000000
          Top = 65.811070000000000000
          Width = 177.637910000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Shape1: TfrxShapeView
          Left = 36.236240000000000000
          Top = 74.913420000000000000
          Width = 737.008350000000000000
          Height = 75.590600000000000000
        end
        object Line2: TfrxLineView
          Left = 22.677180000000000000
          Top = 551.252320000000100000
          Width = 752.126470000000000000
          Color = clBlack
          Frame.Style = fsDashDotDot
          Diagonal = True
        end
        object Line4: TfrxLineView
          Left = 35.795300000000000000
          Top = 102.488250000000000000
          Width = 737.008350000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line5: TfrxLineView
          Left = 35.795300000000000000
          Top = 126.283550000000000000
          Width = 737.008350000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line3: TfrxLineView
          Left = 113.708720000000000000
          Top = 75.590599999999990000
          Height = 389.291590000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line6: TfrxLineView
          Left = 222.858380000000000000
          Top = 74.811070000000000000
          Height = 298.582870000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line7: TfrxLineView
          Left = 283.330860000000000000
          Top = 75.590599999999990000
          Height = 75.590600000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line8: TfrxLineView
          Left = 389.362400000000000000
          Top = 74.370130000000000000
          Height = 79.370130000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line9: TfrxLineView
          Left = 454.409710000000000000
          Top = 76.370130000000000000
          Height = 253.228510000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line10: TfrxLineView
          Left = 601.134200000000000000
          Top = 75.370130000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line11: TfrxLineView
          Left = 680.315400000000000000
          Top = 75.590599999999990000
          Height = 26.456710000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line12: TfrxLineView
          Left = 601.913730000000000000
          Top = 127.842610000000000000
          Height = 139.842610000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line13: TfrxLineView
          Left = 681.874460000000000000
          Top = 128.063080000000000000
          Height = 139.842610000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line14: TfrxLineView
          Left = 36.795300000000000000
          Top = 180.094620000000000000
          Width = 737.008350000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line15: TfrxLineView
          Left = 36.574830000000000000
          Top = 207.330860000000000000
          Width = 737.008350000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line16: TfrxLineView
          Left = 37.015770000000000000
          Top = 236.685220000000000000
          Width = 737.008350000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line17: TfrxLineView
          Left = 36.795300000000000000
          Top = 268.480520000000000000
          Width = 737.008350000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line18: TfrxLineView
          Left = 36.354360000000000000
          Top = 296.937230000000000000
          Width = 419.527830000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line19: TfrxLineView
          Left = 36.354360000000000000
          Top = 328.291590000000000000
          Width = 737.008350000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line20: TfrxLineView
          Left = 303.700990000000000000
          Top = 154.740260000000000000
          Height = 173.858380000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line21: TfrxLineView
          Left = 518.354670000000000000
          Top = 154.740260000000000000
          Height = 113.385900000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line22: TfrxLineView
          Left = 486.897960000000000000
          Top = 268.346630000000000000
          Height = 60.472480000000000000
          Color = clBlack
          Diagonal = True
        end
        object Shape3: TfrxShapeView
          Left = 35.795300000000000000
          Top = 376.732530000000000000
          Width = 737.008350000000000000
          Height = 86.929190000000010000
        end
        object Line23: TfrxLineView
          Left = 38.574830000000000000
          Top = 422.189240000000000000
          Width = 733.228820000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line24: TfrxLineView
          Left = 366.614410000000000000
          Top = 375.953000000000000000
          Height = 86.929190000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line25: TfrxLineView
          Left = 453.543600000000000000
          Top = 376.732530000000000000
          Height = 86.929190000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo9: TfrxMemoView
          Left = 47.795300000000000000
          Top = 389.291590000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #32463#21150#20154)
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 38.795300000000000000
          Top = 436.086890000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #36130#21153#37096#32463#21150)
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 382.291590000000000000
          Top = 385.512060000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #23457'    '#26680)
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 382.291590000000000000
          Top = 430.866420000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #25209'    '#20934)
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 44.354360000000000000
          Top = 82.370130000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #22995'    '#21517)
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 44.913420000000000000
          Top = 105.826840000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #24037'    '#21495)
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 43.913420000000000000
          Top = 128.504020000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #36827#21378#26085)
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 225.874150000000000000
          Top = 79.370130000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #37096'     '#38376)
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 226.433210000000000000
          Top = 105.826840000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #21345'     '#21495)
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 224.212740000000000000
          Top = 133.283550000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #31163' '#32844' '#26085)
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 394.630180000000000000
          Top = 81.370130000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #29677'      '#32452)
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 394.291590000000000000
          Top = 107.606370000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #36523#20221#35777#21495)
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 395.071120000000000000
          Top = 132.283550000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #31163#21378#26085#26399)
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 608.504330000000000000
          Top = 79.370130000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #34218#36164#31867#21035)
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 608.504330000000000000
          Top = 128.504020000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #31163#32844#31867#22411)
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 456.441250000000000000
          Top = 158.740260000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #24037#21345#36864#27454)
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 460.220780000000000000
          Top = 185.196970000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #20195#25187#31246#37329)
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 460.220780000000000000
          Top = 211.653680000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #36180#34915#38795#24125)
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 464.000310000000000000
          Top = 241.889920000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #32602'    '#27454)
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 612.283860000000000000
          Top = 158.740260000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #20854#20182#34917#27454)
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 616.063390000000000000
          Top = 185.196970000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #25187#20511#25903#27454)
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 612.283860000000000000
          Top = 211.653680000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #20854#20182#25187#27454)
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 612.283860000000000000
          Top = 241.889920000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #24613#36766#25187#27454)
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 462.441250000000000000
          Top = 279.905690000000000000
          Width = 15.118120000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #22791
            ''
            #27880)
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 41.354360000000000000
          Top = 343.937230000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #23454#24471#24037#36164)
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 231.212740000000000000
          Top = 343.937230000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #23454#24471#24037#36164'('#22823#20889')  '#65306)
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 40.354360000000000000
          Top = 162.519790000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #34218#37329'([m1])')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 40.354360000000000000
          Top = 188.976500000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #27700#30005'([m1])')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 40.354360000000000000
          Top = 218.433210000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #20303#23487'([m1])')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 40.354360000000000000
          Top = 249.889920000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #39184#36153'([m1])')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 41.574830000000000000
          Top = 278.905690000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #21307#20445'([m1])')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 41.574830000000000000
          Top = 310.362400000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #20114#21161'([m1])')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 232.110390000000000000
          Top = 162.519790000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #34218#37329'([m2])')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 232.110390000000000000
          Top = 188.976500000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #27700#30005'([m2])')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 232.110390000000000000
          Top = 218.433210000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #20303#23487'([m2])')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 232.110390000000000000
          Top = 249.889920000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #39184#36153'([m2])')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 233.330860000000000000
          Top = 278.905690000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #21307#20445'([m2])')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 233.330860000000000000
          Top = 310.362400000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #20114#21161'([m2])')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 119.385900000000000000
          Top = 82.370130000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'Per_Name'
          DataSet = frDS
          DataSetName = 'frDS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDS."Per_Name"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 292.685220000000000000
          Top = 83.149660000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'Dept_Name'
          DataSet = frDS
          DataSetName = 'frDS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDS."Dept_Name"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 474.000310000000000000
          Top = 83.149660000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'Grou_Name'
          DataSet = frDS
          DataSetName = 'frDS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDS."Grou_Name"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 118.606370000000000000
          Top = 107.606370000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'Per_Code'
          DataSet = frDS
          DataSetName = 'frDS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDS."Per_Code"]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 288.905690000000000000
          Top = 106.826840000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'Per_Cardcd'
          DataSet = frDS
          DataSetName = 'frDS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDS."Per_Cardcd"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 476.000310000000000000
          Top = 107.606370000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DataField = 'Per_Id'
          DataSet = frDS
          DataSetName = 'frDS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDS."Per_Id"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 682.094930000000000000
          Top = 83.149660000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'Per_Ssort'
          DataSet = frDS
          DataSetName = 'frDS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDS."Per_Ssort"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 118.385900000000000000
          Top = 132.283550000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'Per_Indt'
          DataSet = frDS
          DataSetName = 'frDS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDS."Per_Indt"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 288.905690000000000000
          Top = 132.283550000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'Per_OutDt'
          DataSet = frDS
          DataSetName = 'frDS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDS."Per_OutDt"]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 476.000310000000000000
          Top = 132.283550000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'Per_OffDt'
          DataSet = frDS
          DataSetName = 'frDS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDS."Per_OffDt"]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 683.874460000000000000
          Top = 130.283550000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'Per_Poff'
          DataSet = frDS
          DataSetName = 'frDS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDS."Per_Poff"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 120.165430000000000000
          Top = 217.653680000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          DataField = 'Oc_As04'
          DataSet = frDS
          DataSetName = 'frDS'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDS."Oc_As04"]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 120.165430000000000000
          Top = 245.669450000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          DataField = 'Oc_As05'
          DataSet = frDS
          DataSetName = 'frDS'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDS."Oc_As05"]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 121.165430000000000000
          Top = 275.905690000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          DataField = 'Oc_As06'
          DataSet = frDS
          DataSetName = 'frDS'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDS."Oc_As06"]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 120.385900000000000000
          Top = 306.141930000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          DataField = 'Oc_As07'
          DataSet = frDS
          DataSetName = 'frDS'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDS."Oc_As07"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 332.496290000000000000
          Top = 158.740260000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          DataField = 'Oc_Bs01'
          DataSet = frDS
          DataSetName = 'frDS'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDS."Oc_Bs01"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 332.496290000000000000
          Top = 188.976500000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          DataField = 'Oc_Bs03'
          DataSet = frDS
          DataSetName = 'frDS'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDS."Oc_Bs03"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 330.716760000000000000
          Top = 216.653680000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          DataField = 'Oc_Bs04'
          DataSet = frDS
          DataSetName = 'frDS'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDS."Oc_Bs04"]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 328.716760000000000000
          Top = 245.669450000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          DataField = 'Oc_Bs05'
          DataSet = frDS
          DataSetName = 'frDS'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDS."Oc_Bs05"]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 324.937230000000000000
          Top = 275.905690000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          DataField = 'Oc_Bs06'
          DataSet = frDS
          DataSetName = 'frDS'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDS."Oc_Bs06"]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 324.937230000000000000
          Top = 306.141930000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          DataField = 'Oc_Bs07'
          DataSet = frDS
          DataSetName = 'frDS'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDS."Oc_Bs07"]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 518.913730000000000000
          Top = 161.519790000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          DataField = 'Oc_Bs12'
          DataSet = frDS
          DataSetName = 'frDS'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDS."Oc_Bs12"]')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 519.693260000000000000
          Top = 188.976500000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          DataField = 'Oc_Bs09'
          DataSet = frDS
          DataSetName = 'frDS'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDS."Oc_Bs09"]')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 518.913730000000000000
          Top = 214.653680000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          DataField = 'Oc_Bs10'
          DataSet = frDS
          DataSetName = 'frDS'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDS."Oc_Bs10"]')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 519.472790000000000000
          Top = 245.669450000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          DataField = 'Oc_Bs13'
          DataSet = frDS
          DataSetName = 'frDS'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDS."Oc_Bs13"]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 683.874460000000000000
          Top = 245.889920000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          DataField = 'Oc_Bs08'
          DataSet = frDS
          DataSetName = 'frDS'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDS."Oc_Bs08"]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 682.874460000000000000
          Top = 215.433210000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          DataField = 'Oc_Bs11'
          DataSet = frDS
          DataSetName = 'frDS'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDS."Oc_Bs11"]')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 683.094930000000000000
          Top = 187.196970000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          DataField = 'Oc_Bs02'
          DataSet = frDS
          DataSetName = 'frDS'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDS."Oc_Bs02"]')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 684.094930000000000000
          Top = 159.740260000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          DataField = 'Oc_Bs14'
          DataSet = frDS
          DataSetName = 'frDS'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frDS."Oc_Bs14"]')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Left = 120.944960000000000000
          Top = 498.897960000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #31163#32844#20154#21592#30830#35748' '#65306)
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 423.323130000000000000
          Top = 497.118430000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #39046#27454#26085#26399' '#65306)
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 37.795300000000000000
          Top = 57.913420000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #25171#21360#26085#26399#65306)
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 98.267780000000000000
          Top = 56.692950000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = 'yyyy-mm-dd'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[date]')
          ParentFont = False
        end
        object mmCpsSum: TfrxMemoView
          Left = 354.834880000000000000
          Top = 339.937230000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataSet = frDS
          DataSetName = 'frDS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8W = (
            '[UpperMoney(<frDS."oc_Total">)]')
          ParentFont = False
        end
      end
    end
  end
  object SD1: TSaveDialog
    Left = 1064
    Top = 93
  end
end
