object ArchivesFrm: TArchivesFrm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = #20154#20107#26723#26696#35814#32454
  ClientHeight = 675
  ClientWidth = 1167
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
    Top = 324
    Width = 1167
    Height = 332
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 1165
      Height = 330
      Align = alClient
      Color = 7787208
      DataSource = DS
      DynProps = <>
      ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghFooter3D, dghClearSelection, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
      ParentShowHint = False
      PopupMenu = PM
      RowDetailPanel.Color = clWhite
      ShowHint = True
      SortLocal = True
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
          Title.Caption = #27665#26063
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
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_wrkage'
          Footers = <>
          Title.Caption = #21378#40836
          Width = 31
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
          FieldName = 'per_house'
          Footers = <>
          Title.Caption = #20303#25151#21495
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
          Title.Caption = #22312#32844#29366#24577
          Width = 67
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_trpos'
          Footers = <>
          Title.Caption = #36716#27491#29366#24577
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
          FieldName = 'per_memo'
          Footers = <>
          Title.Caption = #22791#27880
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1167
    Height = 324
    Align = alTop
    TabOrder = 1
    object lblCount: TLabel
      Left = 11
      Top = 243
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
    object lblCountin: TLabel
      Left = 12
      Top = 182
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
    object lblCountout: TLabel
      Left = 12
      Top = 201
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
    object lblCountOC: TLabel
      Left = 12
      Top = 221
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
    object pnl_Edite: TPanel
      Left = 135
      Top = 9
      Width = 902
      Height = 305
      Enabled = False
      TabOrder = 0
      DesignSize = (
        902
        305)
      object Label1: TLabel
        Left = 24
        Top = 16
        Width = 41
        Height = 13
        AutoSize = False
        Caption = #20844'   '#21496#65306
      end
      object Label2: TLabel
        Left = 23
        Top = 38
        Width = 46
        Height = 13
        AutoSize = False
        Caption = #37096'   '#38376#65306
      end
      object Label3: TLabel
        Left = 23
        Top = 61
        Width = 49
        Height = 13
        AutoSize = False
        Caption = #29677'   '#32452#65306
      end
      object Label4: TLabel
        Left = 23
        Top = 86
        Width = 44
        Height = 13
        AutoSize = False
        Caption = #31821'   '#36143#65306
      end
      object Label5: TLabel
        Left = 24
        Top = 109
        Width = 46
        Height = 13
        AutoSize = False
        Caption = #27665'   '#26063#65306#13' '
      end
      object Label6: TLabel
        Left = 24
        Top = 135
        Width = 43
        Height = 13
        AutoSize = False
        Caption = #32844'   '#20301#65306
      end
      object Label7: TLabel
        Left = 24
        Top = 158
        Width = 44
        Height = 13
        AutoSize = False
        Caption = #23398'   '#21382#65306
      end
      object Label8: TLabel
        Left = 212
        Top = 18
        Width = 59
        Height = 13
        AutoSize = False
        Caption = #22995'        '#21517#65306
      end
      object Label9: TLabel
        Left = 368
        Top = 14
        Width = 39
        Height = 13
        AutoSize = False
        Caption = #24037'  '#21495#65306
      end
      object Label10: TLabel
        Left = 368
        Top = 38
        Width = 39
        Height = 13
        AutoSize = False
        Caption = #21345'  '#21495#65306
      end
      object Label11: TLabel
        Left = 212
        Top = 88
        Width = 60
        Height = 13
        AutoSize = False
        Caption = #20986#29983#26085#26399#65306
      end
      object Label12: TLabel
        Left = 447
        Top = 158
        Width = 61
        Height = 13
        AutoSize = False
        Caption = #26377#25928#26399#27490#65306
      end
      object Label13: TLabel
        Left = 447
        Top = 189
        Width = 61
        Height = 13
        AutoSize = False
        Caption = #20837#32844#26085#26399#65306
      end
      object Label14: TLabel
        Left = 447
        Top = 212
        Width = 62
        Height = 13
        AutoSize = False
        Caption = #21512#21516#22987#26399#65306
      end
      object Label15: TLabel
        Left = 594
        Top = 234
        Width = 69
        Height = 12
        AutoSize = False
        Caption = #21512#21516#27490#26399#65306
      end
      object Label16: TLabel
        Left = 497
        Top = 15
        Width = 42
        Height = 13
        AutoSize = False
        Caption = #29366'    '#24577#65306
      end
      object Label17: TLabel
        Left = 212
        Top = 40
        Width = 60
        Height = 13
        AutoSize = False
        Caption = #24615'        '#21035#65306
      end
      object Label18: TLabel
        Left = 212
        Top = 64
        Width = 60
        Height = 13
        AutoSize = False
        Caption = #23130'        '#23035#65306
      end
      object Label19: TLabel
        Left = 594
        Top = 210
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #36716#27491#26085#26399#65306
      end
      object Label20: TLabel
        Left = 447
        Top = 258
        Width = 59
        Height = 13
        AutoSize = False
        Caption = #31163#32844#26085#26399#65306
      end
      object Label21: TLabel
        Left = 368
        Top = 63
        Width = 45
        Height = 13
        AutoSize = False
        Caption = #34218'  '#31867#65306
      end
      object Label22: TLabel
        Left = 367
        Top = 85
        Width = 44
        Height = 13
        AutoSize = False
        Caption = #39184'  '#31867#65306
      end
      object Label23: TLabel
        Left = 495
        Top = 89
        Width = 49
        Height = 13
        AutoSize = False
        Caption = #35797#29992#26399#65306
      end
      object Label25: TLabel
        Left = 15
        Top = 214
        Width = 60
        Height = 13
        AutoSize = False
        Caption = #23478#24237#20303#22336#65306
      end
      object Label26: TLabel
        Left = 15
        Top = 237
        Width = 60
        Height = 13
        AutoSize = False
        Caption = #29616#23621#22320#22336#65306
      end
      object Label27: TLabel
        Left = 211
        Top = 159
        Width = 60
        Height = 13
        AutoSize = False
        Caption = #21457#35777#26426#20851#65306
      end
      object Label28: TLabel
        Left = 215
        Top = 138
        Width = 52
        Height = 13
        AutoSize = False
        Caption = #35777'  '#20214' '#21495#65306
      end
      object Label29: TLabel
        Left = 302
        Top = 189
        Width = 41
        Height = 13
        AutoSize = False
        Caption = #19987'   '#19994#65306
      end
      object Label30: TLabel
        Left = 302
        Top = 234
        Width = 44
        Height = 13
        AutoSize = False
        Caption = #30005'   '#35805#65306
      end
      object Label32: TLabel
        Left = 14
        Top = 260
        Width = 59
        Height = 13
        AutoSize = False
        Caption = #32852'  '#32476'  '#20154#65306
      end
      object Label33: TLabel
        Left = 299
        Top = 212
        Width = 46
        Height = 13
        AutoSize = False
        Caption = #25285#20445#20154#65306
      end
      object Label34: TLabel
        Left = 448
        Top = 237
        Width = 58
        Height = 13
        AutoSize = False
        Caption = #31163#32844#31867#22411#65306
      end
      object Label35: TLabel
        Left = 599
        Top = 88
        Width = 17
        Height = 18
        AutoSize = False
        Caption = #26376
      end
      object Label36: TLabel
        Left = 16
        Top = 187
        Width = 57
        Height = 13
        AutoSize = False
        Caption = #27605#19994#23398#26657#65306
      end
      object Label37: TLabel
        Left = 302
        Top = 257
        Width = 44
        Height = 13
        AutoSize = False
        Caption = #30005'   '#35805#65306
      end
      object Label24: TLabel
        Left = 212
        Top = 112
        Width = 60
        Height = 15
        AutoSize = False
        Caption = #25143#21475#22312#22320#65306
      end
      object Label38: TLabel
        Left = 366
        Top = 111
        Width = 46
        Height = 13
        AutoSize = False
        Caption = #24180'  '#40836#65306
      end
      object Label39: TLabel
        Left = 447
        Top = 134
        Width = 61
        Height = 13
        AutoSize = False
        Caption = #26377#25928#26399#36215#65306
      end
      object Label40: TLabel
        Left = 499
        Top = 64
        Width = 44
        Height = 13
        AutoSize = False
        Caption = #24037'  '#40836#65306
      end
      object Label41: TLabel
        Left = 471
        Top = 110
        Width = 17
        Height = 18
        AutoSize = False
        Caption = #23681
      end
      object Label42: TLabel
        Left = 600
        Top = 63
        Width = 17
        Height = 18
        AutoSize = False
        Caption = #24180
      end
      object Label43: TLabel
        Left = 498
        Top = 40
        Width = 42
        Height = 13
        AutoSize = False
        Caption = #25151#38388#21495#65306#65306
      end
      object Label44: TLabel
        Left = 594
        Top = 259
        Width = 58
        Height = 13
        AutoSize = False
        Caption = #31163#21378#26085#26399#65306
      end
      object Label45: TLabel
        Left = 596
        Top = 189
        Width = 56
        Height = 13
        AutoSize = False
        Caption = #35797'       '#29992#65306
      end
      object Image1: TImage
        Left = 622
        Top = 10
        Width = 103
        Height = 106
        Anchors = [akLeft, akTop, akRight, akBottom]
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000640000
          00640802000000FF800203000000097048597300000B1300000B1301009A9C18
          00000A4D6943435050686F746F73686F70204943432070726F66696C65000078
          DA9D53775893F7163EDFF7650F5642D8F0B1976C81002223AC08C81059A21092
          006184101240C585880A561415119C4855C482D50A489D88E2A028B867418A88
          5A8B555C38EE1FDCA7B57D7AEFEDEDFBD7FBBCE79CE7FCCE79CF0F8011122691
          E6A26A003952853C3AD81F8F4F48C4C9BD80021548E0042010E6CBC26705C500
          00F00379787E74B03FFC01AF6F00020070D52E2412C7E1FF83BA502657002091
          00E02212E70B01905200C82E54C81400C81800B053B3640A009400006C797C42
          2200AA0D00ECF4493E0500D8A993DC1700D8A21CA908008D0100992847240240
          BB00605581522C02C0C200A0AC40222E04C0AE018059B632470280BD0500768E
          58900F4060008099422CCC0020380200431E13CD03204C03A030D2BFE0A95F70
          85B8480100C0CB95CD974BD23314B895D01A77F2F0E0E221E2C26CB142611729
          106609E4229C979B231348E7034CCE0C00001AF9D1C1FE383F90E7E6E4E1E666
          E76CEFF4C5A2FE6BF06F223E21F1DFFEBC8C020400104ECFEFDA5FE5E5D60370
          C701B075BF6BA95B00DA560068DFF95D33DB09A05A0AD07AF98B7938FC401E9E
          A150C83C1D1C0A0B0BED2562A1BD30E38B3EFF33E16FE08B7EF6FC401EFEDB7A
          F000719A4099ADC0A383FD71616E76AE528EE7CB0442316EF7E723FEC7857FFD
          8E29D1E234B15C2C158AF15889B850224DC779B952914421C995E212E97F32F1
          1F96FD0993770D00AC864FC04EB607B5CB6CC07EEE01028B0E58D27600407EF3
          2D8C1A0B91001067343279F7000093BFF98F402B0100CD97A4E30000BCE8185C
          A894174CC608000044A0812AB041070CC114ACC00E9CC11DBCC0170261064440
          0C24C03C104206E4801C0AA11896411954C03AD804B5B0031AA0119AE110B4C1
          31380DE7E0125C81EB70170660189EC218BC86090441C8081361213A8811628E
          D822CE0817998E04226148349280A420E988145122C5C872A402A9426A915D48
          23F22D7214398D5C40FA90DBC820328AFC8ABC47319481B25103D4027540B9A8
          1F1A8AC6A073D174340F5D8096A26BD11AB41E3D80B6A2A7D14BE87574007D8A
          8E6380D1310E668CD9615C8C87456089581A26C71663E55835568F35631D5837
          76151BC09E61EF0824028B8013EC085E8410C26C82909047584C5843A825EC23
          B412BA085709838431C2272293A84FB4257A12F9C478623AB1905846AC26EE21
          1E219E255E270E135F9348240EC992E44E0A21259032490B496B48DB482DA453
          A43ED210699C4C26EB906DC9DEE408B280AC209791B7900F904F92FBC9C3E4B7
          143AC588E24C09A22452A494124A35653FE504A59F324299A0AA51CDA99ED408
          AA883A9F5A496DA076502F5387A91334759A25CD9B1643CBA42DA3D5D09A6967
          69F7682FE974BA09DD831E4597D097D26BE807E9E7E983F4770C0D860D83C748
          6228196B197B19A718B7192F994CA605D39799C85430D7321B9967980F986F55
          582AF62A7C1591CA12953A9556957E95E7AA545573553FD579AA0B54AB550FAB
          5E567DA64655B350E3A909D416ABD5A91D55BBA936AECE5277528F50CF515FA3
          BE5FFD82FA630DB2868546A08648A35463B7C6198D2116C63265F15842D67256
          03EB2C6B984D625BB2F9EC4C7605FB1B762F7B4C534373AA66AC6691669DE671
          CD010EC6B1E0F039D99C4ACE21CE0DCE7B2D032D3F2DB1D66AAD66AD7EAD37DA
          7ADABEDA62ED72ED16EDEBDAEF75709D409D2C9DF53A6D3AF77509BA36BA51BA
          85BADB75CFEA3ED363EB79E909F5CAF50EE9DDD147F56DF4A3F517EAEFD6EFD1
          1F373034083690196C313863F0CC9063E86B9869B8D1F084E1A811CB68BA91C4
          68A3D149A327B826EE8767E33578173E66AC6F1C62AC34DE65DC6B3C61626932
          DBA4C4A4C5E4BE29CD946B9A66BAD1B4D374CCCCC82CDCACD8ACC9EC8E39D59C
          6B9E61BED9BCDBFC8D85A5459CC54A8B368BC796DA967CCB05964D96F7AC9856
          3E567956F556D7AC49D65CEB2CEB6DD6576C501B579B0C9B3A9BCBB6A8AD9BAD
          C4769B6DDF14E2148F29D229F5536EDA31ECFCEC0AEC9AEC06ED39F661F625F6
          6DF6CF1DCC1C121DD63B743B7C727475CC766C70BCEBA4E134C3A9C4A9C3E957
          671B67A1739DF33517A64B90CB1297769717536DA78AA76E9F7ACB95E51AEEBA
          D2B5D3F5A39BBB9BDCADD96DD4DDCC3DC57DABFB4D2E9B1BC95DC33DEF41F4F0
          F758E271CCE39DA79BA7C2F390E72F5E765E595EFBBD1E4FB39C269ED6306DC8
          DBC45BE0BDCB7B603A3E3D65FACEE9033EC63E029F7A9F87BEA6BE22DF3DBE23
          7ED67E997E07FC9EFB3BFACBFD8FF8BFE179F216F14E056001C101E501BD811A
          81B3036B031F049904A50735058D05BB062F0C3E15420C090D591F72936FC017
          F21BF96333DC672C9AD115CA089D155A1BFA30CC264C1ED6118E86CF08DF107E
          6FA6F94CE9CCB60888E0476C88B81F69199917F97D14292A32AA2EEA51B45374
          7174F72CD6ACE459FB67BD8EF18FA98CB93BDB6AB6727667AC6A6C526C63EC9B
          B880B8AAB8817887F845F1971274132409ED89E4C4D8C43D89E37302E76C9A33
          9CE49A54967463AEE5DCA2B917E6E9CECB9E773C593559907C3885981297B23F
          E5832042502F184FE5A76E4D1D13F2849B854F45BEA28DA251B1B7B84A3C92E6
          9D5695F638DD3B7D43FA68864F4675C633094F522B79911992B923F34D5644D6
          DEACCFD971D92D39949C949CA3520D6996B42BD730B728B74F662B2B930DE479
          E66DCA1B9387CAF7E423F973F3DB156C854CD1A3B452AE500E164C2FA82B785B
          185B78B848BD485AD433DF66FEEAF9230B82167CBD90B050B8B0B3D8B87859F1
          E022BF45BB16238B5317772E315D52BA647869F0D27DCB68CBB296FD50E25852
          55F26A79DCF28E5283D2A5A5432B82573495A994C9CB6EAEF45AB96315619564
          55EF6A97D55B567F2A17955FAC70ACA8AEF8B046B8E6E2574E5FD57CF5796DDA
          DADE4AB7CAEDEB48EBA4EB6EACF759BFAF4ABD6A41D5D086F00DAD1BF18DE51B
          5F6D4ADE74A17A6AF58ECDB4CDCACD03356135ED5BCCB6ACDBF2A136A3F67A9D
          7F5DCB56FDADABB7BED926DAD6BFDD777BF30E831D153BDEEF94ECBCB52B7857
          6BBD457DF56ED2EE82DD8F1A621BBABFE67EDDB847774FC59E8F7BA57B07F645
          EFEB6A746F6CDCAFBFBFB2096D52368D1E483A70E59B806FDA9BED9A77B5705A
          2A0EC241E5C127DFA67C7BE350E8A1CEC3DCC3CDDF997FB7F508EB48792BD23A
          BF75AC2DA36DA03DA1BDEFE88CA39D1D5E1D47BEB7FF7EEF31E36375C7358F57
          9EA09D283DF1F9E48293E3A764A79E9D4E3F3DD499DC79F74CFC996B5D515DBD
          6743CF9E3F1774EE4CB75FF7C9F3DEE78F5DF0BC70F422F762DB25B74BAD3DAE
          3D477E70FDE148AF5B6FEB65F7CBED573CAE74F44DEB3BD1EFD37FFA6AC0D573
          D7F8D72E5D9F79BDEFC6EC1BB76E26DD1CB825BAF5F876F6ED17770AEE4CDC5D
          7A8F78AFFCBEDAFDEA07FA0FEA7FB4FEB165C06DE0F860C060CFC3590FEF0E09
          879EFE94FFD387E1D247CC47D52346238D8F9D1F1F1B0D1ABDF264CE93E1A7B2
          A713CFCA7E56FF79EB73ABE7DFFDE2FB4BCF58FCD8F00BF98BCFBFAE79A9F372
          EFABA9AF3AC723C71FBCCE793DF1A6FCADCEDB7DEFB8EFBADFC7BD1F9928FC40
          FE50F3D1FA63C7A7D04FF73EE77CFEFC2FF784F3FB25D29F3300001CD6494441
          5478DAED9DD76F5C5517C5C77DDC1DDB718B7B8D7B42020144229A0810402882
          8708211EF85FF8037805F1469500D18340A1841E489CC47DDCC6BD77C78EEBF7
          9BB398CB30331E8FED9984F07114AC2977EE3D67EDB5D7DEFB9C732F11BDBD7D
          9B9B5BB6FF5A102DA2BBBB776BEB3FB0826AFF81B58BF6EF04CB6B4411117CC2
          DF887D9EF65F02D696478B8888142C163A88B2C16BCBFA30C2B4FF2FB0E8F9A6
          AB6D454747D1222323A35D2DCA40C1EB4806C8B71B1BEB1CBCB1B1B9BEBEC6DB
          F5F5755EF3D348D3FE2FC062CC0C352E2ECE6E8F8D8D8D8B713517666ECA4418
          1C22CCE85C7FF807AE826C7575F5A669ABAB6B1CC4AFFEB5603166604A4E4E4C
          4848002CB8B45B9F12706B6B2EC816176FD00CB83B9CE48E042B252505A48069
          FF9A6D733174636565656E6EEEC68D95C078DD4960D14FFC2D3333C36E8FDB95
          D604D3D0B2C5C585A9A91918B7DD31770658D29DE4E4649092BE2C2C2C747575
          959696E289333333696969E068C6BC69453D3E9F9898C8CECE4E4D4DB53E14CA
          F81D47262525E1869C2A3131D16EB7730C223639392921BB53C16260A9A92095
          6911AAB3B3F3B5D75E7BF9E59771C9F7DF7FFFC48913C78F1FE7DB4B972E2D2F
          2F4799363030D0DBDB5B5151919B9BBB81B06F6E02F791234700E8FCF9F300F7
          E4934F7EF3CD373FFEF8637D7D7D5E5E1EA7ADAF6F888B8B1D1E1E2502F892F7
          9F0E9652271081535D5D8EF1F1717D0E65AE5FBF5E575777F0E0C1E6E6663E01
          AF86860646CE57FA1532343D3D9D9191C1CF39803890939373FFFDF7CFCECE7E
          F0C10720C8E7BFFDF61B1FC2ACB6B6B6A5A5A5975E7AA9A8A808151B1D1D53B4
          BD93C0820ED1D131870EE5E0655F7CF1454B4B0BBACE30D6D6D6200B1F922FE0
          892834A03CF1C413F8E3EFBFFF0EA6300B871A1D1D3D74E8105F41377C16706D
          8695EFBDF71E6C1A1E1E8665478F1EE584FDFDFDB0899F1F3E7CB8B1B1716666
          8E9F7BE5AEA1044B399ECE66E5D3FB3C2727484D8556E9741ACBFFF2CB2F0C3E
          3F3FDFE17030E0A79E7AEAAEBBEE9A9F9FFFF9E79F0B0A0A70317EF2FAEBAF43
          AECACA4AF8029BC09403200EFEF8DC73CFD1C3CF3EFB0C563EF6D8634EA71380
          6A6B6BBFFAEA2B08059A3FFCF0435555D59933673006E45A5E5EF14CC1420316
          23E124B2769447E3738CB6E7F32B9FCACE3E8812EB934F3EF9043A3CFDF4D3F0
          EB95575E79F0C107EFBDF75E46FEEBAFBF224030829FBCF5D65B781F04A10386
          98D1D0AABDBDBDB8B8187091F6575F7D154A3EFFFCF31C86DB7272888933422B
          F805E218803E4F4C4CCDCECE914C58E40A19B31815061C1A1AA27F71A6115F12
          4CA3BB2675DED803580C383737273EDEAEB704385486DE33DA6FBFFD96BF070E
          1CE02FEC0029A8846DDE7EFB6DD48A01F3396FF1532879F9F265F8F8CC33CF00
          1CD4E30C308873C250908A8F8F47CBA6A6A600EBF4E9D3B08CAF666666A7A6A6
          6D1E3566C8C012B9108BC1C141BA68D8CB906218408A6960C731BB82CC0B2C1A
          03C3E3502E48C108112388565858F8E28B2F5A437AF3CD37912AA09191B02294
          C7E34007B0E8645353D3C58B17F91559C5D8D818C7E0B64A41F0C4871E7A88A0
          0924C48170812572715EC8C50018646222BA4B31B18885410ABCD2D3D3E953F0
          27A463C60DB338156F490B1827ACA9A9A981B9DF7FFF3D1A8461C803102C5207
          C68FA92E5CB8007D4A4A4A24A0F40415EFE9E9216E720C1A3F3232F2CE3BEFE0
          9526B1BA494682A2D94C61403B7BF6ACB9F4E6E4E434326F06E5264468A321A7
          C65090194AA7A71FA0F768C4D8D83856E22A780446CBCA62F0894182C5DFB4B4
          D48C0C97C023C36071EAD429F4050D22BD3A77EE1C838726A44B44B793274F12
          0A8962FA2DCCE242E49C623A7DC354CF3EFB2CE67CF7DD77715B9255CE136DA6
          2CF8104E7DF7DD77C78E1D7BE08107D6D6D6A1675804DEB3312A424C7777372E
          5354545852524C5F91B391913154806A9F4EA79BC648A4C101CE661430167241
          2558C0C03A3A3A3EFFFC734E0E0B085B656565F49F0FF14A6CC398611FDCC148
          C81023C76D9139541C06F156EC43D7202367C30D49B8B025D78253040AAE480A
          3237373F39396566C7C2933A78E2053A301F5C6A6A0ED34BF0E2438C3C32320A
          64282E2C3B681A28089400E4A2702629558A881B42313E4783C842BD8E87D43F
          FDF413E32F2F2F27C9B099991C10A1337C45E2CAE7500F32A27708390623A7E5
          2B70ACAEAEA61BA6AB91FC040DF19ABA0963528A720D0D0D82545D5D4D4C4CAC
          5BF56DF3F373C3C363F418E363700646449318FBED89C131223D3D0DBF0EC934
          43E08603A21BA8DE2D2D774087C04C297FF87015E457C2C568E57AD3D3334482
          8989716A0B3488C0A464CAA29867AF88A1A00458A442414ED4EDADE1E944C0C5
          C51B489CEFB761040B5C08F0E09592925A5F5F03168470EB2BA844894FCC26A8
          E398B80322826B58F6D40BE1CB5F53096F2527278297DD1E17F2DE62A4A5A51B
          640FF46ABBF99FF082059B100B226375F5E1C2C2023363FED7B5A2A2A2E10B42
          363080E60ED10D0225982A3942D4F80B8F5CB3C5D19A2F268A930A4427252526
          24C44BECF6DFB82E518F6E00162609305316DE429A0B8394C3D1959171A0A6A6
          9ADC12A7F3021414E8E2F8F8445F9F13F1D6877246BE8A350D5C94ACD9EDF17A
          919060D7C7BCF6EB32C1B49B37D7F03BE409F5C4AE36379D6F0358F235FA415C
          A72B478E34E041EA932FA68A957801F5251C42658175CDB5B0B08AD91992E8A6
          2A8A2C4185017FB54811FB678BD9710615C3B896295C6DCD2C58ACCA30C14CBD
          860B2CAEAD896DC63F3FBF40EC278720114779B64356DA6489149DDAD87041A6
          09991B379641937A00223060CC006AA4B8AA0A34E181531F38909E94F4B72261
          D9D556CCDCDF86567738AD79BBE979F5A0CC1F8EA4143621ED647AD88D814181
          F2F252681538FFF4DB6DEB3D9D34EB7D1B8B8B4B24717837C099C5C168127112
          141552F9F9873CE59F2309BBB29035CC3DE71FA19C75E03CB089040AA4E002C3
          4089493BC927F190D09A84F343B4D1D1B1D9D9397C165669DE2E2F2F470E8561
          0C52B3BC0855761602B0B40A0089B036892F728991E93A3051D3A95AF4FA8959
          49768DC83D3FE8B53521C23280397784DF1ECA73A94BB828F181634E9D3A8961
          0C94EB727FDB3E78147AB044286C48BE0EE17101986426D25215E63C21B29915
          273E34EBC3C269CBCADB352AADDCB9A7732305A882268D237580D567920A5E4E
          4F4F252525530C40378043BCE1B2A6494385D47EC10229555EE4E2442EA8949F
          9F0F9FE8A53541AAA19A6CC085955659946D4983905B410389045674B46B255E
          6FADBE695B83D9CD10656DEEB00202D9192112AD6C6FEFE01F41939A81FE80AF
          DFF87B4BC192EBD139AA7CC052C59F97974BAE68C6FFA73DDD7470CD38E31A84
          6AD74AF98D25FE73856E330DAD1ADBD30056228A3B279B6625A84A740199DC4A
          6F85A0748A731234A90A4871393996A39696E56E275874CE64DE03542A9999E9
          A5A5A5A6CA85686B164C9AA234E8DC50D45F5A5A623C66B4EB16E37C3545814F
          EBCFD186661823D5345E981CD56E405ED7B6199BBBA2E4541C4C1F2626261D8E
          9E85857904A1B8B858F3CBB7072CFA47BCEBEF1F802398AEA4A430212149598C
          662635ED8D906164849610B929DF3300B973A2BF49CF5F1D3264015F5EE04DD6
          12917E02D7CC1A622674232385AD78A7368658A7D2F989921D1D0E4233457A51
          5111A7DA6E56235C60496849A0FAFAFAF0293A51507008BB59FDA04F8C932EE2
          9BB00998AC1F06B93B41F90734E45426418F116BE4DABA0A57E42B24293B3B9B
          900259E5A35EFDC4609D9D8E9191510E835FD6A96E1158D810087A7B7BC90FCA
          CA4AF3F2F2340F65337EC778A01261114E698261571BECC429D26D7ECBD84647
          47410D2A19B18FF0547A61275103889C9C5C432EEF9205DDA336EEE8E81C1D1D
          474F0B0A0A24A0B7022CD90A4E8157595909F2A96B0B113E743A9D8065E69E76
          BD0951CAAD52A6B6B696F4124FBF74E912B8AB90F6D8A5E6420AEDE3D280C5E7
          D43DC5C545143A9EC758D625DB223E52780116C8EE27ED0A162CD57A208506E1
          7D740EBB69F585AE0F0E0E4237DFCD014136ADB2307E465B53535359592919C2
          1929C2FBFBFB55485B32C7611C70E0C081868606BCBEADAD8D6F514F988E7B7A
          0D0762922DB7B5B5137E4B4A4AC896C30B96B5F446AA4C38AEAC2C97FF0B4160
          022CBD956D83A4AAA6F48058A57F464646636323C6B7B97D4D52CD50393F4249
          1FA47D0C188DE7486D33C27E9D9D9D2323237C5E515121383C2B4190EDEB7376
          77F7C0C1F2F272C58DB080A5C16BCE9FFCA0AEAE3621217173D335AB2FCBD357
          C3F679862D46586BF70A619E74D3D2B467E35B38429A06618971BECBFDE291E4
          1210121393145BAD23B11C38623320334B243568BFE74E0B53726DE08C885756
          5616170A23580285D720959D9DA5A5074CDDDCDCCC5775757584730C8BCA009C
          A2BE358167C1EDCB5614273D3D1DDF211B022F4DC56CD78DD8D898818121880C
          B57DA7E165243264BAA4BD1E62A8D507F27EAAC8EBD75BB84A595919ECDB4325
          B403585A70C768300B2941D7A553E8E5F5EBD7D1E3FAFA7A2217C456FEC92704
          8105D3F884B7740EC5110A0C9223294D482F41071E81975486630277342E2ED6
          E9EC1F1818ACAEAE4E4A4AF4DB55201B1F1F6F6A6A02533A868A715D0B2FAEDE
          DDDDDDD7D78F85C8A283978B5D8065E6851DA9A9698D8D758C8D8381E3DAB56B
          C071E4C811DC4709B77B0FBA2B9F960CE182A45FEAAE9561EB30B30D3BC65DBB
          AC7BAD65FA6DFC10405B5A5A3332D27551BF877172B2BC3FFEF8031BA380F823
          E7B7AECE198092BC0CA547F50210792F6071A5AEAEAEC5C585AAAAAAC2C2027D
          02D5713A4CC7256D7F5F1FB57274E3861B147F548BB6BFCFE16DBA5B301879E1
          4581353636515B5B4DDDB35D86A975E6DF7FFF1D2A1D3D7A148FF35C5582598C
          0827855CB6ED1777F70216320475E16D5D1DFD4BD06A0D4423A6E00E0198CCE7
          64A7F8656D6D8D7222DBBEA796F839C36E6FEFB4DB634989D17DBF43550C2576
          5FB972451116165B0AB5B4B47CF5EA555EA05CA8C1AE6AC6406071018C801255
          54941515156E6C6C42281C1002DF75D75DAAB6B63BEFDADA6A7BBB83028E58BE
          5BB607C68BB0DBD5D5939C9C8433C6C7C7794EEA2BE9E372A4141CD9D2D282A5
          915A482446DB0C951C8E6E42013F47D4ACCFF70B16DD8244C9C929F5F535C830
          6A2DED04292C16E01A749A8C6C7070A8BCBC14EBEDB322F36D3333B394F1D014
          494A4949562161D681960979D80920B028911AF1221691BB72A4E5F8F4ADB5B5
          8D8E0122B0061F16B7058B01E371A4025409308B33769B462182AD02EC173519
          EC6A6B6B3BF896941487697702523D3EEE9AD28059A471E4769A8925BA9A55FE
          54E57A14988817C0211A68994239A1A9B9B9150784F5243DC17BE2B660D11B7C
          106B905B11E6E7E7E72E5FBE42897FCF3DF7485CFD0A96021CE93256ADAAAA0C
          D5A2F1765681E6263BD92098C4C4C4124CE480EA9818876EA05F908B6C4E75EB
          DADA7A67A70349052C72D4E0A76EFC83C565485828CA001EB048087B7ABA71F5
          8686FAF2F2B29595D5D9D9396AC3F878BB3200D33FE46003811B1C1C06A99292
          622C1CD64DE3BAAE16013CB7487B1E83B518C8CF3FFF0C28DA926B7E68733A07
          0814454505870EE5DBFC4DABED022C4593C9C9097C90B80304A4A008E77DF7DD
          87AB83456F6FDFF2F20AFAAAA94B8A42DCC148C62C03305B3CD2C387940A2031
          42B16FCD2C61FBBABC76EC687BDBB163C7745F8A24B5B9B985E491D159B34C7B
          014B593B3EB8B4B448E0471A612C60415ACA2E850F7099999923FF32F3014A0B
          80380AB9CDC9C9C61DBCF63484B0A9B2812FF48A9E9027C31A921B9B594CF43A
          58D3385420283DA9627E7EBEC888EAA3F11B1B5B6805F60E52E3FD808535A092
          04EBD8B1A368415797A3AFAFEFD4A953740B99702F1090B86F686AC5DCAC17A9
          6D1A40666E180DD9D2A6671389AE98A68C9CB798930C19555245ED05169E4858
          FFEDB7DF7881B1A51BFCB0ADAD9DD0896F06AFF17EC0C2744419D041CE1B1B1B
          5657D7DADA5AE9C4BDF7DE6BA6BDFFCA86AD493EFEE019E64691B595959BBAC3
          0A5843EE898075F1E245349BEABDA8A808824019421EF43979F224E597758BC7
          5F233435E3E5CB97C9AD4E9C38A1557ED0E9E8E89C989824B2075F54FB010B0D
          A25C00ACCCCC0CA8BBB8387FEDDA754209D6F39C4BF0EC0DE6D2CC043F14F321
          3C59CCFED708BC3AD6D9D9F9F5D75F83D4A38F3EAA604726F8E9A79F52C04290
          679F7D963CD36BE4EA4F7B7B3B4A029AA411D299EEEE1E502E292955CE184C3F
          FD8385111078B276AC473F9A9AAE8014C0F9CE0DC86E838383DF7FFF3D3A02A7
          9033DDCA473D4140085E11766C9CEAA38F3E22D77BE9A597727373F52149D387
          1F7E484AC85520D7DD77DFED3B5BCB881038AA1CA02C2E2E764FA5F40D0F8FF0
          16F8F605164903E3AFACAC40ADB94C5B5B1BE915E7D55C95E7C19A15F9F2CB2F
          39C9638F3DC618B49B9833607928F0D0430F85845FDA33012EC4B5B367CFEA66
          129BD951C4D5610DDF22405C4E22E0D5C9D9D9593C11132A8100AC9E9EDE9191
          D1108005ADA8EF6B6AAAF1445EF0168B61167AF6B77DE1E6F50F3FFC807C9E3B
          77CE1A00D1E7E38F3FC6E674EEE1871FA67FBE28EF192CAC486A72E6CC19F200
          3E87F8ADADADA8183A5B5B5BFBE0830FFA82A5A51652798686FDB4A6EF707451
          03407F22E9BE34CB028B13399D7DF836606567677BB9A16E6EFAE28B2F60D30B
          2FBC80AEE97382C01B6FBCA13B1D2824D117737BFB7E1B6E883CE9D611420D15
          4C5E5E1E9DA77BD4CC5C0E5A1D3F7EDCD72A8AA1589483912DB3F7F726051965
          4965651562B72FB0E4865555E5191999669D628C4EF8050BC38A44CF3CF30CBA
          A6CF31F2850B1710630C88254F9F3EADFD20FB048B304267CE9F3FCFE5B43842
          182196A1B0F49604823EF0D777E41229C0A23F180FB008472D2DEDD4B07803F2
          BF2FB0064C2B2929862CFDFDCE00CC0217248331E01AE4169A0C41E6B0F34F3F
          FDC4F158F2F1C71FC77F4371A3A6EBEE9F4B972EE15050552B435A55C225E12F
          19A6E78C8DE7828517B3B07173735B4282BDACCCB5D8B32FB01051C805528585
          F98A8C083C9A652DC77B7602CDA2F84229180960811A9F8317CCE298471E7904
          639A2D8D21C8517512022222353D3DAD9E535A3534349A351B577D6A2D29593B
          E9E120D60265606A6C6CE4EDE0E0504B4B5B5E5E4E4141E18EF70F05024BC003
          505252222C9D98184741010B209049DF6808079112C28DA6037104809B9898E0
          60A41D5AED6ACE68C7A6C270C1DDCC3DD289C819F9B01271A5CAD61666FD040F
          207DD5564AC60BDC3D3DCEF2F232C277F0F37FFECB1D3AC1E9A2A22291215450
          F7B973192F66D9DC3BA2C90CE117D2A6B7BAF9170126CFC279A987425BFA980D
          36B1D4CED8C366263F29BABCF65AAA6F984DB7D5E22890B1A4A404E2AFAC2C37
          37B72E2DDDA0DAD5125CB0D7F5054BCE456D083404447027005115029CEF0651
          23B4AE8709E177648648153AA5DB97CACBCB0934219C53F66C8C10A43C97267D
          8F910312379393930997CDCDCD282FF17D7A7A06E0E023790368EE77A6D4AC82
          F4210A2525C568A7C3D1093BD06F060F167FDFA0B16E56A72384E38D1B4B9C8C
          CEE1C27A384E98266AB45B39F0D60A81459F715B7C10E2DF7DF73D50CDE9EC27
          23C59CB06C57AB87DB4EFEA1F190C5AC4716A34ABA590F8D5740D4D2A9574210
          E1D12CBD08535B5FDF585A5A0C304E4DB76BA3257A8ABAE38CB5B57574B9B5B5
          6571710997445E7745FC6D27FF885F46B6A2902A6A69C8555858545353A3C842
          E4DED120DA8A163EBC18A7F614FAEDBF044B376230902B57AE3010F2328402C1
          DAC36A852DF08205B11FEB1192092258033621D8B05A1B5A763C755C9CDDBA6B
          3E4C8D8E9BADBD6B9A52B6B9F7FC596BE3580B01C1078986478F1EC57ED7AE5D
          9F9D75EDD522FB379BCC77A11281C022FCA35CE9E969D4044343C3BDBDDDD5D5
          87CBCB2B209DA772F90CE0CFDD427A604758C1B2BA6A3331D1F306207D85EBA1
          27BFFCF20BD0C0AC898929941EC744DAB5BB735717DA6191B5BDBD9DFC855323
          D957AF36A1E3904B738FDB5D49626FB7C713DDC3BA60B163D3A66ECD0E52AEE1
          7A57AE5CA5E7A2D51EF62F0702CBAC478EF5F6F66567675554940F0F0FE198D8
          07E5D20E19F796058EDDB2D65AB4855D8B74FB1CED763B9A83FC2D3DC133000B
          A9224F244699A56C17ADF6B61977E78D2100848E565656A4A5A5929E90DD402E
          DD50EFDEE161D3931949B8ACAD6B414D0F050CDB5E6EEE3B591CF82A78197241
          1D462CA2C3F4AEA9E92A065622BAB78A62E72D47840F12D4CCCCF48A8A2AB2F9
          6BD7AE666464904678ED75B0B6C404B943D5D263BF8BDBDAB5A0E9330535CFA8
          A7DB60F4F015BFD2A9720FD312071B1A1AF2F30B5A5BDBC8844CB55BB8079882
          05CBBACF99589B97973B38D88F6392A4D4D6D6EEAD88D1E28A1E24A7CDEEBE14
          E35B782144408A104CC6645DCE2C50CE692F9C5F4BF017076C6A6A429B1A1AEA
          878646DADB3B389E21EC7943E9CE60D9DC337C98085FC319B92444836E84450A
          D11DF152996AB9A7365D32542D0E0307FE0255C51DD9064FE718BB79FCE896EB
          6E6FD7CE7854468FFE21154016183309F37619FCE0E020F5AC599D3A4A0949A1
          034FB5B321BCFBE0A5DC04146C25758C8E8EEAEA723DB001BCB4252CC06F191B
          390EAF09467A941548C126EA47BEE52D96B0995950E1A5745754726F8ADBD406
          4CAD392BDBE40CDB21A59DA55A258C8C8C6E6DA5665E225BA4A4BF15B7A34841
          287A800C1690CA33046DDDC21FB198DF3B302D66314EEA386DCAB099CC1EA42C
          A281263C522EAE7915DD06E67B1EEB7604BF304907E1941E7557557598BFADAD
          ED7373B344432A41DF25C5B080653392C9A89C4E27E285890E1DCAE547DDDD5D
          A0806456555569BED1EFA934ABAB8DFF7A4A9FEF31FAADEE25DBF5BE58031FBC
          C39C2486DAEC1E1313D7D1E1BAB1E29069C1CFF085002CE10547C8566666A60D
          5E79FCDCE9EC1B1F1FA72285F38888ECBF5D4960DBE51ECE207B45839B0E87A3
          B7B7F7C081B4D2D23288D8D6E6A084D52D873EF7D4861F2CF5CC7D53CA744646
          6641413E223A3030D8D7D78BC4A852551911DAFB6DFD366D7C360FD0186F6B6B
          4319897D64E7E85B67A7637D7DA3B0B040DE17AACEECFA7E438934004D4E4E20
          2EC5C585C9C929BCEEEDED595E5EA173440052560D231C9059F7EEE8FEFA9E9E
          5E4C45CC292B2B4F49491D1F9F181A1A8C8A8A292A2A445EFDEE37B87560D90C
          BF88E5BAE1975EC2F39C9C6C3EE9EB738E8FEB937C2C6C9EB0630F7EA77B300D
          9AC05CCDFCA1E568A81E04A9E7D73A9DFDD3D333180FCAA309D6FEFBDB0996CD
          1D1FC9B6800CE1C786E4AB8989091A83D2283DE889AF20A0CD4C3FED99682AF4
          B828A49E9E9EC6EF88CB5CCBDCCD921B1F9F30353543828E55B2B2B2B8A81E93
          17727DDCFBDDF70A5BE6616B238448C42B33F36076F6C1E8E898858579C60364
          F43E3333232DCDF5DC2B0646C660DD3410600BAF757E4D4E09A31977E35AFC90
          AC2D2BEB20216F6161914FF04700825F5C45BB6BC231E1B1AF4715C8B3A00CD6
          C6D42407F1F176BC008034EB669E6E3C453AC65B0643E609CB1827AFF5081E8D
          4AE5CE5F4FB874DFA8A91BADB187EE4AE7FC4AF7B549687E7E11ECCC63A7A35D
          8F25C9CCE4FCB6BDCE52841D2C4FC8E8F494697AB00A7010C5957C3248C63C3B
          3BA39534BEB55863760A46CACBAC80C061D69486A6F9F5E44E3DEDCE3CC16751
          7716EB598B7A104D80C4F81F0496675371639E6FF6670A9A96969A9292AC870E
          E07C376FAEC017EBB90ED626639BC79C8C85636C6C9CF8C8F7376F52182D8011
          BFD3A63018AA05DD3DDCDFF58F00CBE65E7634549AB51EE4200734CB9DB166CA
          C5F598356DFD41C44C2ABBA9D29AB77A089B0A66F330B01583D12AECD37DF7BA
          092F84DBE46E1B58368FFAC3F57410C323AB1256EC378912FF62345F6838C5BF
          2D3DE50AEE984D1F6B2291996F00193B18E16E56C97DEBE7ACC3FB6436E991A6
          F1F47F6F713DF8CB4892144AFFFB201144CCD25E2255D4E00215353923755330
          BD5D53FBB7E2E1F95606B0E57E0CBAD0317ABCE5FE5FE3FC396B2A7CAD152D21
          68651BB705A35B0A9667B3B0B06DBF41C1F36FB803DCAEDA3FFD7FCBF08F6AFF
          81B58BF61F58BB68115D5D3DB7BB0F774CFB1F97281068CB2100DE0000000049
          454E44AE426082}
        Stretch = True
      end
      object Label46: TLabel
        Left = 14
        Top = 281
        Width = 59
        Height = 13
        AutoSize = False
        Caption = #24037'  '#36164' '#21345' '#65306#13' '
      end
      object Label47: TLabel
        Left = 299
        Top = 280
        Width = 47
        Height = 13
        AutoSize = False
        Caption = #31038#20445#21345#65306
      end
      object Label31: TLabel
        Left = 740
        Top = 114
        Width = 56
        Height = 13
        AutoSize = False
        Caption = #22791'    '#27880#65306
      end
      object cmbCompany: TComboBox
        Left = 73
        Top = 10
        Width = 123
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 0
        OnChange = cmbCompanyChange
        OnKeyPress = cmbCompanyKeyPress
      end
      object cmbDepart: TComboBox
        Left = 73
        Top = 34
        Width = 123
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 1
        OnChange = cmbDepartChange
        OnKeyPress = cmbCompanyKeyPress
      end
      object cmbGroup: TComboBox
        Left = 73
        Top = 58
        Width = 123
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 2
        OnChange = cmbGroupChange
        OnKeyPress = cmbCompanyKeyPress
      end
      object cmbNation: TComboBox
        Left = 73
        Top = 82
        Width = 123
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 3
        OnChange = cmbNationChange
        OnKeyPress = cmbCompanyKeyPress
      end
      object cmbPostion: TComboBox
        Left = 73
        Top = 131
        Width = 123
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 5
        OnChange = cmbPostionChange
        OnKeyPress = cmbCompanyKeyPress
      end
      object CmbDegree: TComboBox
        Left = 73
        Top = 155
        Width = 123
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 6
        OnChange = CmbDegreeChange
        OnKeyPress = cmbCompanyKeyPress
      end
      object cmbEthnic: TComboBox
        Left = 73
        Top = 107
        Width = 123
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 4
        OnChange = cmbEthnicChange
        OnKeyPress = cmbCompanyKeyPress
      end
      object edt_Name: TEdit
        Left = 276
        Top = 10
        Width = 79
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 9
      end
      object edt_WorkNo: TEdit
        Left = 412
        Top = 10
        Width = 71
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        ReadOnly = True
        TabOrder = 15
      end
      object edt_CardNo: TEdit
        Left = 412
        Top = 34
        Width = 71
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 16
      end
      object dtpk_IdtyEnd: TDateTimePicker
        Left = 507
        Top = 155
        Width = 79
        Height = 21
        Date = 2.726847685182292000
        Time = 2.726847685182292000
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 17
      end
      object dtpk_EntryWrkDay: TDateTimePicker
        Left = 507
        Top = 184
        Width = 79
        Height = 21
        Date = 2.726847685182292000
        Time = 2.726847685182292000
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 18
      end
      object dtpk_ContractStartDay: TDateTimePicker
        Left = 507
        Top = 207
        Width = 79
        Height = 21
        Date = 2.726847685182292000
        Time = 2.726847685182292000
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 19
      end
      object dtpk_ContractEndDay: TDateTimePicker
        Left = 652
        Top = 230
        Width = 79
        Height = 21
        Date = 2.726847685182292000
        Time = 2.726847685182292000
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 20
      end
      object cmbMarry: TComboBox
        Left = 276
        Top = 58
        Width = 79
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 8
        Items.Strings = (
          #26410#23130
          #24050#23130
          #31163#24322
          #20007#20598)
      end
      object cmbSex: TComboBox
        Left = 276
        Top = 34
        Width = 79
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 21
        Items.Strings = (
          #30007
          #22899)
      end
      object dtpk_Bregular: TDateTimePicker
        Left = 652
        Top = 207
        Width = 79
        Height = 21
        Date = 2.726847685182292000
        Time = 2.726847685182292000
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 22
      end
      object dtpk_leaveofficeDay: TDateTimePicker
        Left = 507
        Top = 253
        Width = 79
        Height = 21
        Date = 2.726847685182292000
        Time = 2.726847685182292000
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 23
      end
      object cmbPayType: TComboBox
        Left = 412
        Top = 58
        Width = 71
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 13
        Items.Strings = (
          #35745#26102
          #35745#20214
          #26085#34218
          #26376#34218
          #20854#20182)
      end
      object cmbDinner: TComboBox
        Left = 412
        Top = 82
        Width = 71
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 24
        Items.Strings = (
          'A'#39184
          'B'#39184
          'C'#39184)
      end
      object edt_eml: TEdit
        Left = 276
        Top = 107
        Width = 79
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 14
      end
      object edt_hmAdrs: TEdit
        Left = 73
        Top = 207
        Width = 221
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 25
      end
      object edt_currtAdrs: TEdit
        Left = 73
        Top = 230
        Width = 221
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 26
      end
      object edt_findAdrs: TEdit
        Left = 276
        Top = 155
        Width = 165
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 27
      end
      object edt_identityCard: TEdit
        Left = 276
        Top = 131
        Width = 165
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 28
      end
      object edt_Major: TEdit
        Left = 347
        Top = 184
        Width = 94
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 10
      end
      object edt_Tel1: TEdit
        Left = 347
        Top = 230
        Width = 94
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 12
      end
      object edt_liaisons: TEdit
        Left = 73
        Top = 253
        Width = 221
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 29
      end
      object edt_Guarantee: TEdit
        Left = 347
        Top = 207
        Width = 94
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 11
      end
      object mm_Remark: TMemo
        Left = 740
        Top = 131
        Width = 156
        Height = 168
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        ScrollBars = ssVertical
        TabOrder = 30
      end
      object cmbPostoff: TComboBox
        Left = 507
        Top = 230
        Width = 80
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 31
        OnKeyPress = cmbCompanyKeyPress
      end
      object edt_Company: TEdit
        Left = 103
        Top = 10
        Width = 76
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        ReadOnly = True
        TabOrder = 32
      end
      object edt_Depart: TEdit
        Left = 103
        Top = 34
        Width = 76
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        ReadOnly = True
        TabOrder = 33
      end
      object edt_Group: TEdit
        Left = 103
        Top = 58
        Width = 76
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        ReadOnly = True
        TabOrder = 34
      end
      object edt_Nation: TEdit
        Left = 103
        Top = 82
        Width = 76
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        ReadOnly = True
        TabOrder = 35
      end
      object edt_Ethnic: TEdit
        Left = 103
        Top = 107
        Width = 76
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        ReadOnly = True
        TabOrder = 36
      end
      object edt_Postion: TEdit
        Left = 103
        Top = 131
        Width = 76
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        ReadOnly = True
        TabOrder = 37
      end
      object edt_Degree: TEdit
        Left = 103
        Top = 155
        Width = 76
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        ReadOnly = True
        TabOrder = 38
      end
      object edt_Probation: TEdit
        Left = 545
        Top = 82
        Width = 53
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 39
      end
      object edt_School: TEdit
        Left = 73
        Top = 184
        Width = 221
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        ParentFont = False
        TabOrder = 7
      end
      object edt_Tel3: TEdit
        Left = 347
        Top = 253
        Width = 95
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 40
      end
      object edt_Age: TEdit
        Left = 412
        Top = 106
        Width = 55
        Height = 21
        BevelOuter = bvNone
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        ReadOnly = True
        TabOrder = 41
      end
      object dtpk_IdtyStar: TDateTimePicker
        Left = 507
        Top = 131
        Width = 79
        Height = 21
        Date = 2.000000000000000000
        Time = 2.000000000000000000
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 42
      end
      object edt_wrkStaus: TEdit
        Left = 545
        Top = 10
        Width = 53
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 43
      end
      object edt_WrkAge: TEdit
        Left = 545
        Top = 58
        Width = 53
        Height = 21
        BevelOuter = bvNone
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        ReadOnly = True
        TabOrder = 44
      end
      object ckb_stay: TCheckBox
        Left = 740
        Top = 47
        Width = 94
        Height = 17
        Caption = #26159#21542#23433#25490#20869#23487
        TabOrder = 45
      end
      object ckb_Clock: TCheckBox
        Left = 740
        Top = 30
        Width = 94
        Height = 14
        Caption = #26159#21542#24517#38656#25171#21345
        TabOrder = 46
      end
      object dtpk_BirthDay: TDateTimePicker
        Left = 276
        Top = 82
        Width = 79
        Height = 21
        Date = 2.703352141201322000
        Time = 2.703352141201322000
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 47
      end
      object edt_House: TEdit
        Left = 545
        Top = 34
        Width = 53
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 48
      end
      object BitBtn1: TBitBtn
        Left = 507
        Top = 109
        Width = 78
        Height = 20
        Caption = #35835#21462#35777#20214#20449#24687
        TabOrder = 49
        OnClick = BitBtn1Click
      end
      object dtpk_levefacDate: TDateTimePicker
        Left = 652
        Top = 254
        Width = 79
        Height = 21
        Date = 2.726847685182292000
        Time = 2.726847685182292000
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 50
      end
      object cmbTrial: TComboBox
        Left = 652
        Top = 184
        Width = 79
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 51
        Items.Strings = (
          #22312#35797#29992
          #24050#36716#27491)
      end
      object ckb_cardBck: TCheckBox
        Left = 740
        Top = 69
        Width = 91
        Height = 14
        Caption = #39277#21345#26159#21542#22238#25910
        TabOrder = 52
      end
      object edt_GZCard: TEdit
        Left = 73
        Top = 276
        Width = 221
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 53
      end
      object edt_SBCard: TEdit
        Left = 347
        Top = 276
        Width = 239
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 54
      end
      object ckb_blacklist: TCheckBox
        Left = 740
        Top = 89
        Width = 111
        Height = 14
        Caption = #26159#21542#21015#20837#40657#21517#21333
        TabOrder = 55
      end
    end
    object btnDelete: TButton
      Left = 66
      Top = 15
      Width = 58
      Height = 26
      Caption = #21024#38500
      TabOrder = 1
      OnClick = btnDeleteClick
    end
    object btnInsert: TButton
      Left = 7
      Top = 16
      Width = 58
      Height = 25
      Caption = #22686#21152
      TabOrder = 2
      OnClick = btnInsertClick
    end
    object btnModify: TButton
      Left = 7
      Top = 42
      Width = 58
      Height = 25
      Caption = #20462#25913
      TabOrder = 3
      OnClick = btnModifyClick
    end
    object pnl_Ok_C: TPanel
      Left = 8
      Top = 76
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
    object btnSelect: TButton
      Left = 1052
      Top = 55
      Width = 72
      Height = 25
      Caption = #26465#20214#26597#35810
      TabOrder = 5
      OnClick = btnSelectClick
    end
    object Button2: TButton
      Left = 1052
      Top = 81
      Width = 72
      Height = 25
      Caption = #23548#20986'EXCEL'
      TabOrder = 6
      OnClick = Button2Click
    end
    object btnCopy: TButton
      Left = 66
      Top = 42
      Width = 58
      Height = 25
      Caption = #22797#21046
      TabOrder = 7
      OnClick = btnCopyClick
    end
    object btnRefrash: TButton
      Left = 1052
      Top = 29
      Width = 72
      Height = 25
      Caption = #21047#26032#25968#25454
      TabOrder = 8
      TabStop = False
      OnClick = btnRefrashClick
    end
    object btn_importAttend: TButton
      Left = 1052
      Top = 108
      Width = 72
      Height = 27
      Cancel = True
      Caption = #23548#20837#32771#21220
      TabOrder = 9
      TabStop = False
      OnClick = btn_importAttendClick
    end
    object btnClose: TButton
      Left = 1052
      Top = 136
      Width = 72
      Height = 25
      Caption = #36864'    '#20986
      TabOrder = 10
      OnClick = btnCloseClick
    end
  end
  object RzStatusBar1: TRzStatusBar
    Left = 0
    Top = 656
    Width = 1167
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
  object ADOQry: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from person')
    Left = 897
    Top = 400
  end
  object DS: TDataSource
    DataSet = ADOQry
    OnDataChange = DSDataChange
    Left = 849
    Top = 392
  end
  object ADOQrySerch: TADOQuery
    Parameters = <>
    Left = 961
    Top = 392
  end
  object SD1: TSaveDialog
    Left = 1096
    Top = 280
  end
  object PM: TPopupMenu
    AutoHotkeys = maManual
    Left = 624
    Top = 436
    object N1: TMenuItem
      Caption = #35843#32844#35843#23703
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #22521#35757#30331#35760
    end
  end
end
