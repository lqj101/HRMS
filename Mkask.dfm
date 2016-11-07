object MkaskFrm: TMkaskFrm
  Left = 0
  Top = 0
  Caption = #29983#20135#21046#36896#20196
  ClientHeight = 640
  ClientWidth = 1208
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
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1208
    Height = 161
    Align = alTop
    TabOrder = 0
    object lblCount: TLabel
      Left = 10
      Top = 142
      Width = 93
      Height = 13
      AutoSize = False
    end
    object Label1: TLabel
      Left = 10
      Top = 133
      Width = 112
      Height = 13
      AutoSize = False
    end
    object btnModify: TButton
      Left = 14
      Top = 58
      Width = 58
      Height = 25
      Caption = #20462#25913
      TabOrder = 0
    end
    object btnCopy: TButton
      Left = 73
      Top = 58
      Width = 58
      Height = 25
      Caption = #22797#21046
      TabOrder = 1
    end
    object btnDelete: TButton
      Left = 73
      Top = 31
      Width = 58
      Height = 26
      Caption = #21024#38500
      TabOrder = 2
    end
    object btnInsert: TButton
      Left = 14
      Top = 32
      Width = 58
      Height = 25
      Caption = #22686#21152
      TabOrder = 3
    end
    object pnl_Ok_C: TPanel
      Left = 15
      Top = 92
      Width = 119
      Height = 31
      TabOrder = 4
      Visible = False
      object btnOK: TButton
        Left = 0
        Top = 6
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
      end
    end
    object Panel3: TPanel
      Left = 204
      Top = 11
      Width = 765
      Height = 136
      TabOrder = 5
      object Label2: TLabel
        Left = 8
        Top = 18
        Width = 60
        Height = 13
        Caption = #21046#36896#20196#21495#65306
      end
      object Label9: TLabel
        Left = 195
        Top = 18
        Width = 60
        Height = 13
        Caption = #37197#26009#26085#26399#65306
      end
      object Label10: TLabel
        Left = 368
        Top = 18
        Width = 60
        Height = 13
        Caption = #36127#26497#25237#37327#65306
      end
      object Label13: TLabel
        Left = 551
        Top = 18
        Width = 60
        Height = 13
        Caption = #35746#21333#32534#21495#65306
      end
      object Label3: TLabel
        Left = 8
        Top = 45
        Width = 60
        Height = 13
        Caption = #20135#21697#22411#21495#65306
      end
      object Label4: TLabel
        Left = 8
        Top = 72
        Width = 60
        Height = 13
        Caption = #24037#33402#29256#27425#65306
      end
      object Label5: TLabel
        Left = 8
        Top = 95
        Width = 60
        Height = 13
        Caption = #29983#20135#25209#21495#65306
      end
      object Label6: TLabel
        Left = 195
        Top = 45
        Width = 60
        Height = 13
        Caption = #21046#29255#26085#26399#65306
      end
      object Label7: TLabel
        Left = 195
        Top = 72
        Width = 60
        Height = 13
        Caption = #27491#26497#25237#37327#65306
      end
      object Label8: TLabel
        Left = 195
        Top = 99
        Width = 60
        Height = 13
        Caption = #36127#26497#27604#29575#65306
      end
      object Label11: TLabel
        Left = 368
        Top = 45
        Width = 60
        Height = 13
        Caption = #27491#26497#24178#31881#65306
      end
      object Label12: TLabel
        Left = 368
        Top = 72
        Width = 60
        Height = 13
        Caption = #36127#26497#24178#31881#65306
      end
      object Label14: TLabel
        Left = 368
        Top = 99
        Width = 60
        Height = 13
        Caption = #21046#21697#31867#22411#65306
      end
      object Label15: TLabel
        Left = 551
        Top = 45
        Width = 60
        Height = 13
        Caption = #23458#25143#21517#31216#65306
      end
      object Label16: TLabel
        Left = 551
        Top = 72
        Width = 60
        Height = 13
        Caption = #20132#36135#26085#26399#65306
      end
      object Label17: TLabel
        Left = 558
        Top = 99
        Width = 51
        Height = 13
        Caption = #22791'     '#27880#65306
      end
      object edt_askno: TEdit
        Left = 67
        Top = 14
        Width = 113
        Height = 21
        TabOrder = 0
      end
      object edt_anode: TEdit
        Left = 434
        Top = 14
        Width = 105
        Height = 21
        TabOrder = 1
      end
      object edt_htno: TEdit
        Left = 617
        Top = 14
        Width = 132
        Height = 21
        TabOrder = 2
      end
      object edt_pver: TEdit
        Left = 67
        Top = 68
        Width = 113
        Height = 21
        TabOrder = 3
      end
      object edt_batch: TEdit
        Left = 67
        Top = 96
        Width = 113
        Height = 21
        TabOrder = 4
      end
      object edt_cathode: TEdit
        Left = 253
        Top = 68
        Width = 105
        Height = 21
        TabOrder = 5
      end
      object edt_an_ca: TEdit
        Left = 253
        Top = 95
        Width = 105
        Height = 21
        TabOrder = 6
      end
      object edt_catdro: TEdit
        Left = 434
        Top = 41
        Width = 105
        Height = 21
        TabOrder = 7
      end
      object edt_anodro: TEdit
        Left = 434
        Top = 68
        Width = 105
        Height = 21
        TabOrder = 8
      end
      object edt_client: TEdit
        Left = 617
        Top = 41
        Width = 132
        Height = 21
        TabOrder = 9
      end
      object edt_memo: TEdit
        Left = 617
        Top = 95
        Width = 132
        Height = 21
        TabOrder = 10
      end
      object cmb_prdxh: TComboBox
        Left = 67
        Top = 39
        Width = 110
        Height = 21
        TabOrder = 11
      end
      object cmb_mttype: TComboBox
        Left = 434
        Top = 95
        Width = 105
        Height = 21
        TabOrder = 12
      end
      object dtpk_mixdt: TDateTimePicker
        Left = 253
        Top = 14
        Width = 103
        Height = 21
        Date = 2.000000000000000000
        Format = 'yyyy-MM-dd'
        Time = 2.000000000000000000
        TabOrder = 13
      end
      object dpk_coatdt: TDateTimePicker
        Left = 254
        Top = 41
        Width = 103
        Height = 21
        Date = 2.000000000000000000
        Format = 'yyyy-MM-dd'
        Time = 2.000000000000000000
        TabOrder = 14
      end
      object dtpk_outdt: TDateTimePicker
        Left = 617
        Top = 68
        Width = 130
        Height = 21
        Date = 2.000000000000000000
        Format = 'yyyy-MM-dd'
        Time = 2.000000000000000000
        TabOrder = 15
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 161
    Width = 1208
    Height = 479
    Align = alClient
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 1206
      Height = 477
      Align = alClient
      Color = 7787208
      DataSource = DS
      DynProps = <>
      EvenRowColor = 7787208
      FooterRowCount = 1
      FooterParams.FillStyle = cfstGradientEh
      OddRowColor = 7787208
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghFooter3D, dghClearSelection, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
      ParentShowHint = False
      RowDetailPanel.Color = clWhite
      ShowHint = False
      SumList.Active = True
      TabOrder = 0
      Columns = <
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'mk_askno'
          Footer.Alignment = taCenter
          Footer.Color = clOlive
          Footer.Value = #21512#35745#65306
          Footer.ValueType = fvtStaticText
          Footers = <>
          Title.Caption = #21046#36896#20196#21495
          Width = 73
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'mk_prdxh'
          Footer.Alignment = taCenter
          Footer.Color = clOlive
          Footers = <>
          Title.Caption = #20135#21697#22411#21495
          Width = 86
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'mk_pver'
          Footer.Alignment = taCenter
          Footer.Color = clOlive
          Footers = <>
          Title.Caption = #24037#33402#29256
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'mk_batch'
          Footer.Alignment = taCenter
          Footer.Color = clOlive
          Footers = <>
          Title.Caption = #29983#20135#25209#21495
          Width = 58
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'mk_mixdt'
          Footer.Alignment = taCenter
          Footer.Color = clOlive
          Footers = <>
          Title.Caption = #37197#26009#26085#26399
          Width = 64
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'mk_coatdt'
          Footer.Alignment = taCenter
          Footer.Color = clOlive
          Footers = <>
          Title.Caption = #21046#29255#26085#26399
          Width = 71
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'mk_cathode'
          Footer.Alignment = taCenter
          Footer.Color = clOlive
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = #27491#26497#25237#37327
          Width = 61
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'mk_an_ca'
          Footer.Alignment = taCenter
          Footer.Color = clOlive
          Footers = <>
          Title.Caption = #36127#26497#27604#29575
          Width = 86
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'mk_anode'
          Footer.Alignment = taCenter
          Footer.Color = clOlive
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = #36127#26497#25237#37327
          Width = 71
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'mk_catdro'
          Footer.Alignment = taCenter
          Footer.Color = clOlive
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = #27491#26497#24178#31881
          Width = 71
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'mk_anodro'
          Footer.Alignment = taCenter
          Footer.Color = clOlive
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = #36127#26497#24178#31881
          Width = 71
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'mk_mtype'
          Footer.Alignment = taCenter
          Footer.Color = clOlive
          Footers = <>
          Title.Caption = #21046#29255#31867#22411
          Width = 58
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'mk_client'
          Footer.Alignment = taCenter
          Footer.Color = clOlive
          Footers = <>
          Title.Caption = #23458#25143#21517#31216
          Width = 97
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'mk_htno'
          Footer.Alignment = taCenter
          Footer.Color = clOlive
          Footers = <>
          Title.Caption = #35746#21333#32534#21495
          Width = 69
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'mk_outdt'
          Footer.Alignment = taCenter
          Footer.Color = clOlive
          Footers = <>
          Title.Caption = #20132#36135#26399
          Width = 93
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'mk_period'
          Footer.Alignment = taCenter
          Footer.Color = clOlive
          Footers = <>
          Title.Caption = #21608#26399
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'mk_pass'
          Footer.Alignment = taCenter
          Footer.Color = clOlive
          Footers = <>
          ReadOnly = True
          Title.Caption = #23457#26680
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'mk_memo'
          Footer.Alignment = taCenter
          Footer.Color = clOlive
          Footers = <>
          Title.Caption = #22791#27880
          Width = 39
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object ADOQry: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from person')
    Left = 881
    Top = 544
  end
  object DS: TDataSource
    DataSet = ADOQry
    OnDataChange = DSDataChange
    Left = 912
    Top = 544
  end
end
