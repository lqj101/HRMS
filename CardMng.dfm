object CardMngFrm: TCardMngFrm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #34917#21150#21457#21345
  ClientHeight = 611
  ClientWidth = 948
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
    Width = 948
    Height = 157
    Align = alTop
    TabOrder = 0
    object lblCount: TLabel
      Left = 820
      Top = 117
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
    object Panel3: TPanel
      Left = 193
      Top = 4
      Width = 600
      Height = 141
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 40
        Width = 36
        Height = 13
        Caption = #22995#21517#65306
      end
      object Label2: TLabel
        Left = 16
        Top = 18
        Width = 36
        Height = 13
        Caption = #24037#21495#65306
      end
      object Label3: TLabel
        Left = 216
        Top = 18
        Width = 60
        Height = 13
        Caption = #26032#21345#21345#21495#65306
      end
      object Label4: TLabel
        Left = 216
        Top = 38
        Width = 60
        Height = 13
        Caption = #26087#21345#21345#21495#65306
      end
      object Label5: TLabel
        Left = 192
        Top = 67
        Width = 84
        Height = 13
        Caption = #26032#21345#29983#25928#26102#38388#65306
      end
      object Label6: TLabel
        Left = 192
        Top = 92
        Width = 84
        Height = 13
        Caption = #26087#21345#22833#25928#26102#38388#65306
      end
      object Label7: TLabel
        Left = 16
        Top = 66
        Width = 36
        Height = 13
        Caption = #37096#38376#65306
      end
      object Label8: TLabel
        Left = 16
        Top = 88
        Width = 36
        Height = 13
        Caption = #29677#32452#65306
      end
      object Label9: TLabel
        Left = 16
        Top = 113
        Width = 36
        Height = 13
        Caption = #32844#20301#65306
      end
      object edt_name: TEdit
        Left = 58
        Top = 35
        Width = 121
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 0
      end
      object edt_WorkNo: TEdit
        Left = 58
        Top = 10
        Width = 121
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 1
        OnKeyPress = edt_WorkNoKeyPress
      end
      object edt_oldCard: TEdit
        Left = 282
        Top = 36
        Width = 151
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        ReadOnly = True
        TabOrder = 2
      end
      object edt_NewCard: TEdit
        Left = 282
        Top = 10
        Width = 151
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 3
      end
      object dtpk_newCardStar: TDateTimePicker
        Left = 282
        Top = 61
        Width = 151
        Height = 21
        Date = 2.000000000000000000
        Format = 'yyyy-MM-dd HH'#65306'mm'#65306'ss'
        Time = 2.000000000000000000
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 4
      end
      object dtpk_OldCardEnd: TDateTimePicker
        Left = 282
        Top = 88
        Width = 151
        Height = 21
        Date = 2.726847685182292000
        Format = 'yyyy-MM-dd HH'#65306'mm'#65306'ss'
        Time = 2.726847685182292000
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 5
      end
      object edt_dprt: TEdit
        Left = 58
        Top = 60
        Width = 121
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 6
      end
      object edt_Group: TEdit
        Left = 58
        Top = 85
        Width = 121
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 7
      end
      object edt_postion: TEdit
        Left = 58
        Top = 110
        Width = 121
        Height = 21
        ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
        TabOrder = 8
      end
      object Button1: TButton
        Left = 446
        Top = 71
        Width = 60
        Height = 25
        Caption = #21363#26102#29983#25928
        TabOrder = 9
        OnClick = Button1Click
      end
    end
    object btnInsert: TButton
      Left = 6
      Top = 10
      Width = 62
      Height = 24
      Caption = #22686#21152
      TabOrder = 1
      OnClick = btnInsertClick
    end
    object btnDelete: TButton
      Left = 6
      Top = 36
      Width = 62
      Height = 24
      Caption = #21024#38500
      TabOrder = 2
    end
    object btnCopy: TButton
      Left = 69
      Top = 36
      Width = 62
      Height = 24
      Caption = #22797#21046
      TabOrder = 3
    end
    object btnModify: TButton
      Left = 69
      Top = 10
      Width = 62
      Height = 24
      Caption = #20462#25913
      TabOrder = 4
      OnClick = btnModifyClick
    end
    object pnl_Ok_C: TPanel
      Left = 12
      Top = 86
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
        Left = 64
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
  object Panel2: TPanel
    Left = 0
    Top = 157
    Width = 948
    Height = 435
    Align = alClient
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 946
      Height = 433
      Align = alClient
      Color = 7787208
      DataSource = DS
      DynProps = <>
      ImeName = #20013#25991'('#31616#20307') - '#25163#24515#36755#20837#27861
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      Columns = <
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'Dept_Name'
          Footers = <>
          Title.Caption = #37096#38376
          Width = 85
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'grou_name'
          Footers = <>
          Title.Caption = #29677#32452
          Width = 93
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_code'
          Footers = <>
          Title.Caption = #24037#21495
          Width = 87
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'per_Name'
          Footers = <>
          Title.Caption = #22995#21517
          Width = 75
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'Post_Name'
          Footers = <>
          Title.Caption = #32844#20301
          Width = 88
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'bc_oldcard'
          Footers = <>
          Title.Caption = #26087#21345#21495
          Width = 98
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'bc_etrxdt'
          Footers = <>
          Title.Caption = #22833#25928#26102#38388
          Width = 123
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'bc_newcard'
          Footers = <>
          Title.Caption = #26032#21345#21495
          Width = 130
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'bc_trxdt'
          Footers = <>
          Title.Caption = #29983#25928#26102#38388
          Width = 110
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object RzStatusBar1: TRzStatusBar
    Left = 0
    Top = 592
    Width = 948
    Height = 19
    BorderInner = fsNone
    BorderOuter = fsNone
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 0
    TabOrder = 2
  end
  object DS: TDataSource
    DataSet = ADOQry
    OnDataChange = DSDataChange
    Left = 761
    Top = 320
  end
  object ADOQry: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from person')
    Left = 809
    Top = 320
  end
  object ADOQrySerch: TADOQuery
    Parameters = <>
    Left = 779
    Top = 264
  end
end
