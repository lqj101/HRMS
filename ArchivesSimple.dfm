object ArchivesSimpleFrm: TArchivesSimpleFrm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #20154#20107#26723#26696#26597#35810
  ClientHeight = 593
  ClientWidth = 1020
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
    Width = 1020
    Height = 123
    Align = alTop
    TabOrder = 0
    object lblCount: TLabel
      Left = 11
      Top = 68
      Width = 77
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RGp: TRadioGroup
      Left = 128
      Top = 8
      Width = 313
      Height = 97
      Caption = #26597#35810#31867#22411
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #26412#21608#26399#29983#26085#21592#24037
        #26412#21608#26399#31163#32844#21592#24037
        #21512#21516#21363#23558#36926#26399#21592#24037
        #26412#21608#26399#20837#32844#21592#24037
        #36926#26399#26410#36716#27491#25110#23558#36716#27491)
      TabOrder = 0
      OnClick = RGpClick
    end
    object Button1: TButton
      Left = 808
      Top = 8
      Width = 75
      Height = 25
      Caption = #21047#26032#25968#25454
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 808
      Top = 39
      Width = 75
      Height = 25
      Caption = #23548#20986'Excel'
      TabOrder = 2
      OnClick = Button2Click
    end
    object cmbMth: TComboBox
      Left = 250
      Top = 75
      Width = 32
      Height = 21
      Style = csDropDownList
      Enabled = False
      ItemIndex = 0
      TabOrder = 3
      Text = '1'
      Items.Strings = (
        '1'
        '2'
        '3')
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 123
    Width = 1020
    Height = 451
    Align = alClient
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 1018
      Height = 449
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
          FieldName = 'per_sex'
          Footers = <>
          Title.Caption = #24615#21035
          Width = 35
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_age'
          Footers = <>
          Title.Caption = #24180#40836
          Width = 35
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_birth'
          Footers = <>
          Title.Caption = #20986#29983#26085#26399
          Width = 68
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
          FieldName = 'Degr_Name'
          Footers = <>
          Title.Caption = #25991#21270#31243#24230
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_marr'
          Footers = <>
          Title.Caption = #23130#23035#29366#20917
          Width = 54
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
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_trper'
          Footers = <>
          Title.Caption = #35797#29992#26399
          Width = 44
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_wrkage'
          Footers = <>
          Title.Caption = #21378#40836
          Width = 41
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
          FieldName = 'Post_Name'
          Footers = <>
          Title.Caption = #32844#20301
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'Post_Level'
          Footers = <>
          Title.Caption = #32844#32423
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_meal'
          Footers = <>
          Title.Caption = #39184#31867
          Width = 46
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_ssort'
          Footers = <>
          Title.Caption = #34218#31867
          Width = 51
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_htfrdt'
          Footers = <>
          Title.Caption = #21512#21516#22987#26085
          Width = 70
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_httodt'
          Footers = <>
          Title.Caption = #21512#21516#27490#26085
          Width = 67
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_trdt'
          Footers = <>
          Title.Caption = #36716#27491#26399
          Width = 66
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_outdt'
          Footers = <>
          Title.Caption = #31163#32844#26399
          Width = 73
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_poff'
          Footers = <>
          Title.Caption = #31163#32844#31867
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_id'
          Footers = <>
          Title.Caption = #36523#20221#35777#21495
          Width = 119
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_lemail'
          Footers = <>
          Title.Caption = #25143#21475#25152#22312#22320
          Width = 70
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_school'
          Footers = <>
          Title.Caption = #27605#19994#38498#26657
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_speci'
          Footers = <>
          Title.Caption = #20027#20462#19987#19994
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_hdre'
          Footers = <>
          Title.Caption = #23478#24237#20303#22336
          Width = 224
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_htel'
          Footers = <>
          Title.Caption = #23478#24237#30005#35805
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_cdre'
          Footers = <>
          Title.Caption = #29616#22312#20303#22336
          Width = 171
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_htel'
          Footers = <>
          Title.Caption = #32852#31995#30005#35805
          Width = 75
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_bman'
          Footers = <>
          Title.Caption = #25285#20445#20154
          Width = 68
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_ltel'
          Footers = <>
          Title.Caption = #32852#31995#30005#35805
          Width = 75
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_lman'
          Footers = <>
          Title.Caption = #32852#32476#20154
          Width = 58
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_stat'
          Footers = <>
          Title.Caption = #36716#27491#29366#24577
          Width = 67
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_trpos'
          Footers = <>
          Title.Caption = #22312#32844#29366#24577
          Width = 59
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_number'
          Footers = <>
          Title.Caption = #20869#37096#21495
          Width = 60
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_perdid'
          Footers = <>
          Title.Caption = #21608#26399
          Width = 59
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_ldre'
          Footers = <>
          Title.Caption = #21457#35777#26426#20851
          Width = 159
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_comdt'
          Footers = <>
          Title.Caption = #35777#20214#26377#25928#26399#36215
          Width = 79
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'Per_Jobdt'
          Footers = <>
          Title.Caption = #35777#20214#26377#25928#26399#27490
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_gzcard'
          Footers = <>
          Title.Caption = #24037#36164#21345
          Width = 86
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_BXcard'
          Footers = <>
          Title.Caption = #31038#20445#21345
          Width = 67
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object RzStatusBar1: TRzStatusBar
    Left = 0
    Top = 574
    Width = 1020
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
    Left = 489
    Top = 448
  end
  object ADOQry: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from person')
    Left = 525
    Top = 448
  end
  object SD1: TSaveDialog
    Left = 904
    Top = 32
  end
end
