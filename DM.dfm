object DMfrm: TDMfrm
  OldCreateOrder = False
  Height = 237
  Width = 273
  object ADOCon: TADOConnection
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 40
    Top = 40
  end
  object ADOQry1: TADOQuery
    Connection = ADOCon
    Parameters = <>
    Left = 168
    Top = 64
  end
  object ADOQry2: TADOQuery
    Connection = ADOCon
    Parameters = <>
    Left = 160
    Top = 136
  end
end
