object Doc_Medias_Anuais: TDoc_Medias_Anuais
  Left = 496
  Top = 266
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'M�dias Anuais'
  ClientHeight = 100
  ClientWidth = 402
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 6
    Top = 16
    Width = 89
    Height = 13
    Alignment = taRightJustify
    Caption = 'S�rie / Turma :'
  end
  object Fecha: TBitBtn
    Left = 304
    Top = 66
    Width = 89
    Height = 25
    Caption = '&Fecha'
    TabOrder = 0
    Kind = bkClose
    Layout = blGlyphRight
  end
  object Imprime: TBitBtn
    Left = 205
    Top = 66
    Width = 89
    Height = 25
    Caption = '&Imprime'
    Enabled = False
    TabOrder = 3
    OnClick = ImprimeClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
      8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
      8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
      8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
  object Turma: TRxDBLookupCombo
    Left = 101
    Top = 11
    Width = 284
    Height = 21
    DropDownCount = 15
    DisplayAllFields = True
    DisplayEmpty = '<< Selecione a Turma >>'
    EmptyItemColor = clMenu
    LookupField = 'Nome'
    LookupDisplay = 'Nome'
    LookupSource = DM.dsTurmas
    TabOrder = 1
    OnChange = TurmaChange
  end
  object Tipo: TRadioGroup
    Left = 12
    Top = 40
    Width = 157
    Height = 51
    Caption = 'Tipo / Relat�rio'
    ItemIndex = 0
    Items.Strings = (
      'M�dias Anuais'
      'Alunos em Exame')
    TabOrder = 2
  end
  object FS1: TFormStorage
    StoredValues = <>
    Left = 352
    Top = 65512
  end
  object Disc: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select D.NOME_RES, G.CH_OFICIAL'
      'from GRADE G'
      'join DISCIPLINAS D on G.DISCIPLINA = D.CODIGO'
      'where G.SEQUENCIA = :seq and'
      '           G.SERIE = :ser and'
      '           G.TIPO <> '#39'OF'#39)
    Left = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'seq'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ser'
        ParamType = ptUnknown
      end>
    object DiscNOME_RES: TIBStringField
      FieldName = 'NOME_RES'
      Origin = 'DISCIPLINAS.NOME_RES'
      FixedChar = True
      Size = 4
    end
    object DiscCH_OFICIAL: TIntegerField
      FieldName = 'CH_OFICIAL'
      Origin = 'GRADE.CH_OFICIAL'
    end
  end
end
