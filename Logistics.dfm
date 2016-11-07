object LogisticsFrm: TLogisticsFrm
  Left = 0
  Top = 0
  Caption = #20154#20107#26723#26696#21518#21220
  ClientHeight = 620
  ClientWidth = 1055
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
    Width = 1055
    Height = 177
    Align = alTop
    TabOrder = 0
    object Panel3: TPanel
      Left = 207
      Top = 7
      Width = 633
      Height = 161
      TabOrder = 0
      object Label1: TLabel
        Left = 66
        Top = 22
        Width = 39
        Height = 13
        AutoSize = False
        Caption = #37096#38376#65306
      end
      object Label2: TLabel
        Left = 66
        Top = 46
        Width = 39
        Height = 13
        AutoSize = False
        Caption = #29677#32452#65306
      end
      object Label3: TLabel
        Left = 257
        Top = 43
        Width = 44
        Height = 13
        AutoSize = False
        Caption = #24037'  '#21495#65306
      end
      object Label4: TLabel
        Left = 257
        Top = 19
        Width = 44
        Height = 13
        AutoSize = False
        Caption = #22995'  '#21517#65306
      end
      object Label5: TLabel
        Left = 257
        Top = 70
        Width = 44
        Height = 13
        AutoSize = False
        Caption = #21345'  '#21495#65306
      end
      object Label6: TLabel
        Left = 257
        Top = 97
        Width = 44
        Height = 13
        AutoSize = False
        Caption = #24615'  '#21035#65306
      end
      object Label7: TLabel
        Left = 55
        Top = 128
        Width = 47
        Height = 13
        AutoSize = False
        Caption = #25151#38388#21495#65306
      end
      object Label13: TLabel
        Left = 44
        Top = 73
        Width = 61
        Height = 13
        AutoSize = False
        Caption = #20837#32844#26085#26399#65306
      end
      object Label8: TLabel
        Left = 59
        Top = 101
        Width = 44
        Height = 13
        AutoSize = False
        Caption = #31821'   '#36143#65306
      end
      object Label9: TLabel
        Left = 253
        Top = 125
        Width = 44
        Height = 13
        AutoSize = False
        Caption = #29616#20303#22336#65306
      end
      object edt_Depart: TEdit
        Left = 110
        Top = 16
        Width = 121
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        ReadOnly = True
        TabOrder = 0
      end
      object edt_Group: TEdit
        Left = 110
        Top = 43
        Width = 121
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        ReadOnly = True
        TabOrder = 1
      end
      object edt_Name: TEdit
        Left = 302
        Top = 16
        Width = 121
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        ReadOnly = True
        TabOrder = 2
      end
      object edt_WorkNo: TEdit
        Left = 302
        Top = 43
        Width = 121
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        ReadOnly = True
        TabOrder = 3
      end
      object edt_CardNo: TEdit
        Left = 302
        Top = 71
        Width = 121
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        ReadOnly = True
        TabOrder = 4
      end
      object cmbHouse: TComboBox
        Left = 110
        Top = 124
        Width = 123
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 5
      end
      object edt_Sex: TEdit
        Left = 302
        Top = 98
        Width = 121
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        ReadOnly = True
        TabOrder = 6
      end
      object dtpk_EntryWrkDay: TDateTimePicker
        Left = 111
        Top = 70
        Width = 120
        Height = 21
        Date = 2.726847685182292000
        Time = 2.726847685182292000
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 7
      end
      object edt_Nation: TEdit
        Left = 110
        Top = 97
        Width = 121
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        ReadOnly = True
        TabOrder = 8
      end
      object ckb_Mng: TCheckBox
        Left = 429
        Top = 20
        Width = 56
        Height = 14
        Caption = #23487#33293#38271
        TabOrder = 9
      end
      object edt_Adress: TEdit
        Left = 302
        Top = 125
        Width = 307
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 10
      end
    end
    object btnInsert: TButton
      Left = 7
      Top = 16
      Width = 58
      Height = 25
      Caption = #22686#21152
      Enabled = False
      TabOrder = 1
    end
    object btnModify: TButton
      Left = 7
      Top = 42
      Width = 58
      Height = 25
      Caption = #20462#25913
      TabOrder = 2
      OnClick = btnModifyClick
    end
    object btnDelete: TButton
      Left = 66
      Top = 15
      Width = 58
      Height = 26
      Caption = #21024#38500
      Enabled = False
      TabOrder = 3
    end
    object btnCopy: TButton
      Left = 66
      Top = 42
      Width = 58
      Height = 25
      Caption = #22797#21046
      Enabled = False
      TabOrder = 4
    end
    object pnl_Ok_C: TPanel
      Left = 8
      Top = 76
      Width = 119
      Height = 31
      TabOrder = 5
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
        Left = 60
        Top = 5
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
    object ckb_hint: TCheckBox
      Left = 859
      Top = 21
      Width = 120
      Height = 14
      Caption = #26174#31034'/'#38544#34255#22806#23487#21517#21333
      TabOrder = 6
      OnClick = ckb_hintClick
    end
    object Button2: TButton
      Left = 875
      Top = 65
      Width = 72
      Height = 25
      Caption = #23548#20986'EXCEL'
      TabOrder = 7
      OnClick = Button2Click
    end
    object CheckBox1: TCheckBox
      Left = 859
      Top = 41
      Width = 120
      Height = 14
      Caption = #26174#31034'/'#38544#34255#22312#32844#21517#21333
      TabOrder = 8
      OnClick = CheckBox1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 177
    Width = 1055
    Height = 424
    Align = alClient
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 1053
      Height = 422
      Align = alClient
      Color = 7787208
      DataSource = DS
      DynProps = <>
      ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
      IndicatorOptions = [gioShowRowIndicatorEh]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
          Width = 83
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'Grou_Name'
          Footers = <>
          Title.Caption = #29677#32452
          Width = 109
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_name'
          Footers = <>
          Title.Caption = #22995#21517
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_cardcd'
          Footers = <>
          Title.Caption = #21345#21495
          Width = 80
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'Nat_Priv'
          Footers = <>
          Title.Caption = #31821#36143
          Width = 59
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'Fami_Name'
          Footers = <>
          Title.Caption = #21517#26063
          Width = 49
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_indt'
          Footers = <>
          Title.Caption = #20837#32844#26085#26399
          Width = 65
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_sex'
          Footers = <>
          Title.Caption = #24615#21035
          Width = 35
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_house'
          Footers = <>
          Title.Caption = #23487#33293#21495
          Width = 76
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_code'
          Footers = <>
          Title.Caption = #24037#21495
          Width = 72
        end
        item
          Checkboxes = True
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_hmmag'
          Footers = <>
          ReadOnly = True
          Title.Caption = #23487#33293#38271
          Width = 45
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_cdre'
          Footers = <>
          Title.Caption = #30446#21069#20303#22336
          Width = 122
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_poff'
          Footers = <>
          Title.Caption = #31163#32844#31867
          Width = 53
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_stat'
          Footers = <>
          Title.Caption = #22312#32844#29366#24577
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object RzStatusBar1: TRzStatusBar
    Left = 0
    Top = 601
    Width = 1055
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
    Left = 489
    Top = 512
  end
  object ADOQry: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from person')
    Left = 525
    Top = 512
  end
  object ADOQrySerch: TADOQuery
    ConnectionString = 
      'Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initi' +
      'al Catalog=hrdata;Data Source=HYB-SQLSERVER'
    CursorType = ctStatic
    Parameters = <>
    Left = 589
    Top = 520
  end
  object SD1: TSaveDialog
    Left = 932
    Top = 112
  end
end
