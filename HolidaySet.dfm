object HolidaySetFrm: THolidaySetFrm
  AlignWithMargins = True
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #33410#20551#26085#35774#32622
  ClientHeight = 420
  ClientWidth = 480
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 480
    Height = 114
    Align = alTop
    TabOrder = 0
    object lblCount: TLabel
      Left = 6
      Top = 93
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
    object btnInsert: TButton
      Left = 7
      Top = 11
      Width = 68
      Height = 25
      Caption = #22686#21152
      TabOrder = 0
      OnClick = btnInsertClick
    end
    object btnModify: TButton
      Left = 7
      Top = 35
      Width = 68
      Height = 25
      Caption = #20462#25913
      TabOrder = 1
      OnClick = btnModifyClick
    end
    object btnDelete: TButton
      Left = 7
      Top = 59
      Width = 68
      Height = 26
      Caption = #21024#38500
      TabOrder = 2
      OnClick = btnDeleteClick
    end
    object pnl_Ok_C: TPanel
      Left = 89
      Top = 6
      Width = 383
      Height = 79
      TabOrder = 3
      Visible = False
      object Label1: TLabel
        Left = 17
        Top = 15
        Width = 40
        Height = 13
        AutoSize = False
        Caption = #26085#26399#65306
      end
      object Label2: TLabel
        Left = 17
        Top = 42
        Width = 36
        Height = 13
        AutoSize = False
        Caption = #21517#31216#65306
      end
      object btnOK: TButton
        Left = 307
        Top = 10
        Width = 66
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
        Left = 307
        Top = 38
        Width = 66
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
      object dtpk_Holiday: TDateTimePicker
        Left = 54
        Top = 11
        Width = 88
        Height = 21
        Date = 2.726847685182292000
        Time = 2.726847685182292000
        TabOrder = 2
      end
      object edt_HldName: TEdit
        Left = 54
        Top = 38
        Width = 88
        Height = 21
        TabOrder = 3
      end
      object RdG_hldType: TRadioGroup
        Left = 156
        Top = 17
        Width = 137
        Height = 35
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          #20551#26085
          #33410#26085)
        TabOrder = 4
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 114
    Width = 480
    Height = 306
    Align = alClient
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 478
      Height = 304
      Align = alClient
      Color = 7787208
      DataSource = DS
      DynProps = <>
      IndicatorOptions = [gioShowRowIndicatorEh]
      OddRowColor = 7787208
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghFooter3D, dghClearSelection, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
      TabOrder = 0
      OnDrawColumnCell = DBGridEh1DrawColumnCell
      Columns = <
        item
          DisplayFormat = 'YYYY-MM-DD'
          DynProps = <>
          EditButtons = <>
          FieldName = 'hol_date'
          Footers = <>
          Title.Caption = #26085#26399
          Width = 105
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'hol_name'
          Footers = <>
          Title.Caption = #21517#31216
          Width = 149
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'hol_sort'
          Footers = <>
          Title.Caption = #33410'/'#20551
          Width = 120
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
    Left = 444
    Top = 384
  end
  object DS: TDataSource
    DataSet = ADOQry
    OnDataChange = DSDataChange
    Left = 412
    Top = 380
  end
end
