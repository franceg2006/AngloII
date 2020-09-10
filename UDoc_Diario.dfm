object Doc_Diario: TDoc_Diario
  Left = 465
  Top = 234
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Di�rio de Classe / Colecionador de Canhotos'
  ClientHeight = 201
  ClientWidth = 478
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
    Left = 12
    Top = 16
    Width = 88
    Height = 13
    Alignment = taRightJustify
    Caption = 'S�rie / Turma :'
  end
  object Label3: TLabel
    Left = 37
    Top = 40
    Width = 63
    Height = 13
    Alignment = taRightJustify
    Caption = 'Disciplina :'
  end
  object Label4: TLabel
    Left = 40
    Top = 100
    Width = 60
    Height = 13
    Alignment = taRightJustify
    Caption = 'Bimestre :'
  end
  object Label1: TLabel
    Left = 4
    Top = 72
    Width = 96
    Height = 13
    Alignment = taRightJustify
    Caption = 'Aulas Previstas :'
  end
  object Label5: TLabel
    Left = 67
    Top = 132
    Width = 33
    Height = 13
    Alignment = taRightJustify
    Caption = 'Tipo :'
  end
  object Bimestre: TRadioGroup
    Left = 107
    Top = 87
    Width = 318
    Height = 30
    Columns = 5
    ItemIndex = 0
    Items.Strings = (
      '1�'
      '2�'
      '3�'
      '4�'
      'Exame')
    TabOrder = 4
  end
  object Fecha: TBitBtn
    Left = 342
    Top = 168
    Width = 89
    Height = 25
    Caption = '&Fecha'
    TabOrder = 0
    Kind = bkClose
    Layout = blGlyphRight
  end
  object Imprime: TBitBtn
    Tag = 2
    Left = 240
    Top = 168
    Width = 89
    Height = 25
    Caption = '&Imprime'
    Enabled = False
    TabOrder = 6
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
    Left = 106
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
  object Disciplina: TRxDBLookupCombo
    Left = 106
    Top = 35
    Width = 320
    Height = 21
    DropDownCount = 20
    DisplayAllFields = True
    DisplayEmpty = '<< Selecione a Disciplina >>'
    EmptyItemColor = clMenu
    LookupField = 'CODIGO'
    LookupDisplay = 'CODIGO;NOME'
    LookupSource = DM.dsDisciplinas
    TabOrder = 2
    OnChange = TurmaChange
  end
  object AulasPrev: TCurrencyEdit
    Left = 106
    Top = 67
    Width = 33
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '000;- 000'
    TabOrder = 3
  end
  object Visualiza: TBitBtn
    Tag = 1
    Left = 144
    Top = 168
    Width = 89
    Height = 25
    Caption = '&Visualiza'
    Enabled = False
    TabOrder = 5
    OnClick = ImprimeClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333FFFFFFFFFFFFFFF000000000000000077777777777777770FFFFFFFFFFF
      FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
      FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
      FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
      FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
      FFF07FFFFFFFFFFFFFF70CCCCCCCCCCCCCC07777777777777777088CCCCCCCCC
      C8807FF7777777777FF700000000000000007777777777777777333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
  end
  object Tipo: TRadioGroup
    Left = 107
    Top = 119
    Width = 318
    Height = 30
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Di�rio de Classe'
      'Colec.Canhotos')
    TabOrder = 7
    OnClick = TipoClick
  end
  object FS1: TFormStorage
    StoredValues = <>
    Left = 48
    Top = 152
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
      '           G.TIPO <> '#39'NO'#39)
    Left = 93
    Top = 152
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
      DisplayWidth = 10
      FieldName = 'CH_OFICIAL'
      Origin = 'GRADE.CH_OFICIAL'
    end
  end
  object Grade: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * '
      'from GRADE'
      'where DISCIPLINA = :disciplina and SERIE = :serie')
    Left = 13
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'disciplina'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'serie'
        ParamType = ptUnknown
      end>
    object GradeSERIE: TSmallintField
      FieldName = 'SERIE'
      Origin = 'GRADE.SERIE'
      Required = True
    end
    object GradeDISCIPLINA: TIntegerField
      FieldName = 'DISCIPLINA'
      Origin = 'GRADE.DISCIPLINA'
      Required = True
    end
    object GradeSEQUENCIA: TSmallintField
      FieldName = 'SEQUENCIA'
      Origin = 'GRADE.SEQUENCIA'
      Required = True
    end
    object GradeCH_SEMANAL: TIntegerField
      FieldName = 'CH_SEMANAL'
      Origin = 'GRADE.CH_SEMANAL'
    end
    object GradeCH_OFICIAL: TIntegerField
      FieldName = 'CH_OFICIAL'
      Origin = 'GRADE.CH_OFICIAL'
    end
    object GradeCH_N_OFICIAL: TIntegerField
      FieldName = 'CH_N_OFICIAL'
      Origin = 'GRADE.CH_N_OFICIAL'
    end
    object GradeTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = 'GRADE.TIPO'
      FixedChar = True
      Size = 2
    end
  end
end
