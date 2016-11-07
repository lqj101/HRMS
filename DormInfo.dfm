object DormInfofrm: TDormInfofrm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #23487#33293#32508#21512#20449#24687
  ClientHeight = 579
  ClientWidth = 994
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
    Width = 761
    Height = 579
    Align = alLeft
    TabOrder = 0
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 759
      Height = 577
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
          FieldName = 'hou_no'
          Footers = <>
          Title.Caption = #25151#38388#21495
          Width = 49
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'hou_sex'
          Footers = <>
          Title.Caption = #30007'.'#22899
          Width = 38
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'hou_name'
          Footers = <>
          Title.Caption = #25151#38388#31867#22411
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'hou_number'
          Footers = <>
          Title.Caption = #21487#20303#20154#25968
          Width = 52
        end
        item
          Alignment = taCenter
          DynProps = <>
          EditButtons = <>
          FieldName = 'hou_fee'
          Footers = <>
          Title.Caption = #24050#20303#20154#25968
          Width = 53
        end
        item
          DynProps = <>
          EditButtons = <>
          Footers = <>
          Title.Caption = #31354#20301#25968
          Width = 40
        end
        item
          DynProps = <>
          EditButtons = <>
          EditMask = 'hou_tel'
          Footers = <>
          Title.Caption = #23487#33293#30005#35805
          Width = 51
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'hou_mag'
          Footers = <>
          Title.Caption = #23487#33293#38271
          Width = 41
        end
        item
          DynProps = <>
          EditButtons = <>
          Footers = <>
          Title.Caption = #32467#26500
          Width = 33
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'hou_space'
          Footers = <>
          Title.Caption = #38754#31215
          Width = 37
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'hou_marny'
          Footers = <>
          Title.Caption = #31199#37329
          Width = 36
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'hou_station'
          Footers = <>
          Title.Caption = #23487#33293#29366#20917
          Width = 126
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'hou_area'
          Footers = <>
          Title.Caption = #22352#33853#21306#22495
          Width = 82
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object Panel2: TPanel
    Left = 761
    Top = 0
    Width = 233
    Height = 579
    Align = alClient
    TabOrder = 1
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 231
      Height = 280
      Align = alTop
      Enabled = False
      TabOrder = 0
      object Label9: TLabel
        Left = 11
        Top = 22
        Width = 49
        Height = 13
        AutoSize = False
        Caption = #25151' '#38388' '#21495#65306
      end
      object Label10: TLabel
        Left = 8
        Top = 46
        Width = 56
        Height = 13
        AutoSize = False
        Caption = #25151#38388#31867#22411#65306
      end
      object Label1: TLabel
        Left = 8
        Top = 97
        Width = 56
        Height = 13
        AutoSize = False
        Caption = #23487#33293#30005#35805#65306
      end
      object Label2: TLabel
        Left = 8
        Top = 73
        Width = 56
        Height = 13
        AutoSize = False
        Caption = #21487#20303#20154#25968#65306
      end
      object Label3: TLabel
        Left = 8
        Top = 148
        Width = 56
        Height = 13
        AutoSize = False
        Caption = #25151#38388#32467#26500#65306
      end
      object Label4: TLabel
        Left = 9
        Top = 124
        Width = 56
        Height = 13
        AutoSize = False
        Caption = #23487' '#33293' '#38271#65306
      end
      object Label5: TLabel
        Left = 8
        Top = 199
        Width = 56
        Height = 13
        AutoSize = False
        Caption = #27599#26376#31199#37329#65306
      end
      object Label6: TLabel
        Left = 8
        Top = 175
        Width = 56
        Height = 13
        AutoSize = False
        Caption = #25151#38388#38754#31215#65306
      end
      object Label7: TLabel
        Left = 8
        Top = 250
        Width = 61
        Height = 13
        AutoSize = False
        Caption = #22352#33853#21306#22495#65306
      end
      object Label8: TLabel
        Left = 8
        Top = 226
        Width = 100
        Height = 13
        AutoSize = False
        Caption = #23487#33293#29366#20917#65306
      end
      object edt_housetype: TEdit
        Left = 74
        Top = 43
        Width = 70
        Height = 21
        TabOrder = 0
      end
      object edt_houseNo: TEdit
        Left = 74
        Top = 19
        Width = 115
        Height = 21
        ReadOnly = True
        TabOrder = 1
      end
      object edt_houseCap: TEdit
        Left = 74
        Top = 70
        Width = 115
        Height = 21
        ReadOnly = True
        TabOrder = 2
      end
      object edt_houseTel: TEdit
        Left = 74
        Top = 94
        Width = 115
        Height = 21
        TabOrder = 3
      end
      object edt_houseMng: TEdit
        Left = 74
        Top = 121
        Width = 115
        Height = 21
        ReadOnly = True
        TabOrder = 4
      end
      object edt_houseStru: TEdit
        Left = 74
        Top = 145
        Width = 115
        Height = 21
        TabOrder = 5
      end
      object edt_houseAcreage: TEdit
        Left = 74
        Top = 172
        Width = 115
        Height = 21
        ReadOnly = True
        TabOrder = 6
      end
      object edt_houseRental: TEdit
        Left = 74
        Top = 196
        Width = 115
        Height = 21
        TabOrder = 7
      end
      object edt_houseStat: TEdit
        Left = 74
        Top = 223
        Width = 115
        Height = 21
        ReadOnly = True
        TabOrder = 8
      end
      object edt_houseArea: TEdit
        Left = 74
        Top = 247
        Width = 115
        Height = 21
        TabOrder = 9
      end
      object cmbSex: TComboBox
        Left = 146
        Top = 43
        Width = 44
        Height = 21
        TabOrder = 10
        Items.Strings = (
          #30007
          #22899)
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 281
      Width = 231
      Height = 297
      Align = alClient
      TabOrder = 1
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 229
        Height = 37
        Align = alTop
        TabOrder = 0
        object btnInsert: TButton
          Left = 27
          Top = 5
          Width = 58
          Height = 25
          Caption = #22686#21152
          TabOrder = 0
          OnClick = btnInsertClick
        end
        object btnDelete: TButton
          Left = 89
          Top = 4
          Width = 58
          Height = 26
          Caption = #21024#38500
          TabOrder = 1
        end
        object btnModify: TButton
          Left = 153
          Top = 5
          Width = 58
          Height = 25
          Caption = #20462#25913
          TabOrder = 2
          OnClick = btnModifyClick
        end
      end
      object pnl_Ok_C: TPanel
        Left = 1
        Top = 38
        Width = 229
        Height = 31
        Align = alTop
        TabOrder = 1
        Visible = False
        object btnOK: TButton
          Left = 71
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
          Left = 135
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
    end
  end
  object DS: TDataSource
    DataSet = ADOQry
    OnDataChange = DSDataChange
    Left = 593
    Top = 496
  end
  object ADOQry: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from person')
    Left = 481
    Top = 408
  end
  object ADOQrySerch: TADOQuery
    Parameters = <>
    Left = 649
    Top = 424
  end
end
