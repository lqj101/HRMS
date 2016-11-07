object DinnerDataExportFrm: TDinnerDataExportFrm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #29992#39184#25968#25454#23548#20837
  ClientHeight = 519
  ClientWidth = 628
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
  object Label1: TLabel
    Left = 239
    Top = 484
    Width = 165
    Height = 22
    AutoSize = False
  end
  object Gauge1: TGauge
    Left = 380
    Top = 55
    Width = 33
    Height = 420
    ForeColor = clPurple
    Kind = gkVerticalBar
    Progress = 0
  end
  object Label2: TLabel
    Left = 8
    Top = 21
    Width = 65
    Height = 16
    AutoSize = False
    Caption = #24037#20316#21608#26399#65306
  end
  object Label3: TLabel
    Left = 71
    Top = 22
    Width = 77
    Height = 20
    AutoSize = False
  end
  object Label4: TLabel
    Left = 432
    Top = 74
    Width = 182
    Height = 401
    AutoSize = False
    Caption = 
      #27880#24847#20107#39033#65306#13#13'     '#27492#23548#20837#21151#33021#36866#29992#20110'26'#26085#20026#32467#36716#13#13#26085#26399#30340#32479#35745#26041#27861#12290#13#13'     '#20026#20102#31934#30830#32479#35745#21608#26399#20869#29992#39184#25968#25454#65292#13#13#35831#22312#36328#21608#26399 +
      #23548#20837#30340#25968#25454#30340#26102#20505#65292#20808#13#13#36827#34892#25968#25454#32467#36716#12290#13#13'      '#20363#22914' '#65306' '#26576#21608#26399'26'#26085#19979#36733#29992#39184#13#13#25968#25454#21518#65292#25968#25454#20013#21487#33021#23384#22312#19978#21608#26399#13#13'25'#26085#30340 +
      #25968#25454#21644#26412#21608#26399'26'#26085#30340#25968#25454#65292#13#13#20026#20102#33021#27491#24120#35782#21035#21608#26399#65292#35831#20808#26032#24314#13#13'26'#26085#25152#22312#30340#21608#26399#24182#36827#34892#25968#25454#32467#36716#65292#13#13#21542#21017'26'#26085#30340#25968#25454#21487#33021#26080#27861#27491#30830#34987 +
      #13#13#24402#20837#21608#26399#20869#12290' '#20854#20182#26102#38388#27573#23548#20837#25968#13#13#25454#30452#25509#23548#20837#21363#21487#12290#13#13'                  '#35831#29305#21035#27880#24847#65281
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object btnExport: TButton
    Left = 136
    Top = 482
    Width = 89
    Height = 25
    Caption = #23548#20837#21407#22987#25968#25454
    Enabled = False
    TabOrder = 0
    OnClick = btnExportClick
  end
  object btnSelectFile: TButton
    Left = 32
    Top = 482
    Width = 89
    Height = 25
    Caption = #36873#25321#25968#25454#25991#20214
    TabOrder = 1
    OnClick = btnSelectFileClick
  end
  object ListBox1: TListBox
    Left = 8
    Top = 56
    Width = 361
    Height = 420
    ItemHeight = 13
    TabOrder = 2
  end
  object OpDlg: TOpenDialog
    Filter = '.txt|*.txt'
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 360
    Top = 2
  end
  object ADOQryInsert: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from person')
    Left = 179
    Top = 8
  end
  object ADOQrySouData: TADOQuery
    Parameters = <>
    Left = 211
    Top = 8
  end
  object ADOQryBcard: TADOQuery
    Parameters = <>
    Left = 299
    Top = 8
  end
end
