object ADM_Sincroniza: TADM_Sincroniza
  Left = 338
  Top = 268
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Sincroniza Metadatas'
  ClientHeight = 364
  ClientWidth = 640
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Status: TLabel
    Left = 5
    Top = 307
    Width = 41
    Height = 13
    Caption = 'Status'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Bevel1: TBevel
    Left = 0
    Top = 304
    Width = 641
    Height = 21
  end
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 640
    Height = 305
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object Executa: TBitBtn
    Left = 417
    Top = 333
    Width = 97
    Height = 25
    Caption = '&Executa'
    TabOrder = 1
    OnClick = ExecutaClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00344446333334
      44433333FFFF333333FFFF33000033AAA43333332A4333338833F33333883F33
      00003332A46333332A4333333383F33333383F3300003332A2433336A6633333
      33833F333383F33300003333AA463362A433333333383F333833F33300003333
      6AA4462A46333333333833FF833F33330000333332AA22246333333333338333
      33F3333300003333336AAA22646333333333383333F8FF33000033444466AA43
      6A43333338FFF8833F383F330000336AA246A2436A43333338833F833F383F33
      000033336A24AA442A433333333833F33FF83F330000333333A2AA2AA4333333
      333383333333F3330000333333322AAA4333333333333833333F333300003333
      333322A4333333333333338333F333330000333333344A433333333333333338
      3F333333000033333336A24333333333333333833F333333000033333336AA43
      33333333333333833F3333330000333333336663333333333333333888333333
      0000}
    NumGlyphs = 2
  end
  object Fecha: TBitBtn
    Left = 529
    Top = 333
    Width = 105
    Height = 25
    Caption = '&Fecha'
    TabOrder = 2
    Kind = bkClose
    Layout = blGlyphRight
  end
  object FS1: TFormStorage
    StoredValues = <>
    Left = 584
    Top = 8
  end
  object IBScript1: TIBScript
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    Terminator = ';'
    OnParseError = IBScript1ParseError
    OnExecuteError = IBScript1ExecuteError
    Left = 408
    Top = 208
  end
  object IBDInfo: TIBDatabaseInfo
    Database = DM.DB_ANGLO
    Left = 464
    Top = 208
  end
end
