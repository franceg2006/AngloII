object Fin_Proc_Bloq: TFin_Proc_Bloq
  Left = 504
  Top = 232
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Processa Bloquetos'
  ClientHeight = 400
  ClientWidth = 488
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
  object Label1: TLabel
    Left = 29
    Top = 52
    Width = 217
    Height = 18
    Caption = 'Aguarde... Processando!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Gauge1: TGauge
    Left = 18
    Top = 71
    Width = 238
    Height = 17
    Progress = 0
    Visible = False
  end
  object Label2: TLabel
    Left = 8
    Top = 5
    Width = 314
    Height = 39
    Caption = 
      'Este procedimento criar� novos bloquetos no sistema. '#13#10'Esta a��o' +
      ' � irrevers�vel. Portanto FA�A C�pias '#13#10'de Seguran�a do Sistema ' +
      'antes de execut�-lo!!!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 14
    Top = 89
    Width = 247
    Height = 13
    Caption = 'Adicionados Bloquetos de 000 Alunos!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label4: TLabel
    Left = 22
    Top = 105
    Width = 231
    Height = 13
    Caption = 'Alterados Bloquetos de 000 Alunos!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object BitBtn1: TBitBtn
    Left = 389
    Top = 62
    Width = 89
    Height = 25
    Caption = 'Fechar'
    TabOrder = 0
    Kind = bkCancel
  end
  object BitBtn2: TBitBtn
    Left = 389
    Top = 36
    Width = 89
    Height = 25
    Caption = 'Processa'
    TabOrder = 1
    OnClick = BitBtn2Click
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 136
    Width = 488
    Height = 264
    Align = alBottom
    DataSource = DM.dsBloquetos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NOSSO_NUMERO'
        Title.Caption = 'Nosso N�'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALUNO'
        Title.Caption = 'Aluno'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARCELA'
        Title.Caption = 'Parc.N�'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMISSAO'
        Title.Caption = 'Dt.Emiss�o'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Dt.Vcto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Alignment = taCenter
        Title.Caption = 'Valor'
        Width = 96
        Visible = True
      end>
  end
  object btnRemessa: TBitBtn
    Left = 390
    Top = 8
    Width = 85
    Height = 25
    Caption = '&Remessa'
    Enabled = False
    TabOrder = 3
    Visible = False
    OnClick = btnRemessaClick
    Kind = bkIgnore
  end
  object FS1: TFormStorage
    UseRegistry = True
    StoredValues = <>
    Left = 176
  end
  object Dsserie: TDataSource
    DataSet = Qserie
    Left = 216
  end
  object Qserie: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select '
      '    a.turma,'
      '    a.serie,'
      '    t.turma,'
      '    t.serie'
      'from alunos a, turmas t'
      'where '
      '   ('
      '      (a.turma = t.turma)'
      '   and '
      '      (t.cursinho = 1)'
      '   and '
      '      (a.serie = 3)'
      '   )')
    Left = 256
    object QserieTURMA: TIBStringField
      FieldName = 'TURMA'
      Origin = '"ALUNOS"."TURMA"'
      FixedChar = True
      Size = 1
    end
    object QserieSERIE: TSmallintField
      FieldName = 'SERIE'
      Origin = '"ALUNOS"."SERIE"'
    end
    object QserieTURMA1: TIBStringField
      FieldName = 'TURMA1'
      Origin = '"TURMAS"."TURMA"'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QserieSERIE1: TSmallintField
      FieldName = 'SERIE1'
      Origin = '"TURMAS"."SERIE"'
      Required = True
    end
  end
  object dsCursinho: TDataSource
    DataSet = IqCursinho
    Left = 368
    Top = 104
  end
  object IqCursinho: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  t.cursinho'
      
        'from (alunos a join turmas t on a.turma=t.turma and a.serie = t.' +
        'serie)'
      'where a.codigo = :rgm')
    Left = 432
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rgm'
        ParamType = ptUnknown
      end>
    object IqCursinhoCursinho: TIntegerField
      FieldName = 'Cursinho'
    end
  end
  object dlgSave1: TSaveDialog
    Left = 320
    Top = 32
  end
  object DsUltimaParcela: TDataSource
    DataSet = UltimaParcela
    Left = 280
    Top = 192
  end
  object UltimaParcela: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(parcela) as total'
      'from bloquetos'
      'where aluno = :codigo')
    Left = 368
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object UltimaParcelaTOTAL: TSmallintField
      FieldName = 'TOTAL'
    end
  end
  object BuscaBoleto: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select a.bloqueto_1sem, b.*'
      'from alunos a join bloquetos b on a.codigo=b.aluno'
      'where a.bloqueto_1sem = 1 and b.pagamento is null')
    Left = 368
    Top = 248
    object BuscaBoletoBLOQUETO_1SEM: TSmallintField
      FieldName = 'BLOQUETO_1SEM'
      Origin = '"ALUNOS"."BLOQUETO_1SEM"'
    end
    object BuscaBoletoNOSSO_NUMERO: TIntegerField
      FieldName = 'NOSSO_NUMERO'
      Origin = '"BLOQUETOS"."NOSSO_NUMERO"'
      Required = True
    end
    object BuscaBoletoALUNO: TIntegerField
      FieldName = 'ALUNO'
      Origin = '"BLOQUETOS"."ALUNO"'
    end
    object BuscaBoletoPARCELA: TSmallintField
      FieldName = 'PARCELA'
      Origin = '"BLOQUETOS"."PARCELA"'
    end
    object BuscaBoletoEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = '"BLOQUETOS"."EMISSAO"'
    end
    object BuscaBoletoVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = '"BLOQUETOS"."VENCIMENTO"'
    end
    object BuscaBoletoVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"BLOQUETOS"."VALOR"'
      Precision = 9
      Size = 2
    end
    object BuscaBoletoPAGAMENTO: TDateField
      FieldName = 'PAGAMENTO'
      Origin = '"BLOQUETOS"."PAGAMENTO"'
    end
    object BuscaBoletoVALOR_PAGO: TIBBCDField
      FieldName = 'VALOR_PAGO'
      Origin = '"BLOQUETOS"."VALOR_PAGO"'
      Precision = 9
      Size = 2
    end
    object BuscaBoletoMENSALIDADE: TIBBCDField
      FieldName = 'MENSALIDADE'
      Origin = '"BLOQUETOS"."MENSALIDADE"'
      Precision = 9
      Size = 2
    end
    object BuscaBoletoMATERIAL: TIBBCDField
      FieldName = 'MATERIAL'
      Origin = '"BLOQUETOS"."MATERIAL"'
      Precision = 9
      Size = 2
    end
    object BuscaBoletoDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"BLOQUETOS"."DESCONTO"'
      Precision = 9
      Size = 2
    end
    object BuscaBoletoTIPO_PG: TSmallintField
      FieldName = 'TIPO_PG'
      Origin = '"BLOQUETOS"."TIPO_PG"'
    end
    object BuscaBoletoANO_DV: TIBStringField
      FieldName = 'ANO_DV'
      Origin = '"BLOQUETOS"."ANO_DV"'
      FixedChar = True
      Size = 2
    end
    object BuscaBoletoDESCONTO_ANT: TIBBCDField
      FieldName = 'DESCONTO_ANT'
      Origin = '"BLOQUETOS"."DESCONTO_ANT"'
      Precision = 9
      Size = 2
    end
    object BuscaBoletoMENSALIDADE_ANT: TIBBCDField
      FieldName = 'MENSALIDADE_ANT'
      Origin = '"BLOQUETOS"."MENSALIDADE_ANT"'
      Precision = 9
      Size = 2
    end
    object BuscaBoletoVALOR_ANT: TIBBCDField
      FieldName = 'VALOR_ANT'
      Origin = '"BLOQUETOS"."VALOR_ANT"'
      Precision = 9
      Size = 2
    end
    object BuscaBoletoBAULA_AD: TIBStringField
      FieldName = 'BAULA_AD'
      Origin = '"BLOQUETOS"."BAULA_AD"'
      FixedChar = True
      Size = 1
    end
    object BuscaBoletoST: TIBStringField
      FieldName = 'ST'
      Origin = '"BLOQUETOS"."ST"'
      FixedChar = True
      Size = 1
    end
    object BuscaBoletoTP: TIntegerField
      FieldName = 'TP'
      Origin = '"BLOQUETOS"."TP"'
    end
    object BuscaBoletoMOTIVO: TIBStringField
      FieldName = 'MOTIVO'
      Origin = '"BLOQUETOS"."MOTIVO"'
      Size = 150
    end
    object BuscaBoletoDATA_LIMITE: TDateField
      FieldName = 'DATA_LIMITE'
      Origin = '"BLOQUETOS"."DATA_LIMITE"'
    end
  end
  object DsBuscaBoleto: TDataSource
    DataSet = BuscaBoleto
    Left = 280
    Top = 248
  end
  object DeleteBoleto: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'delete from BLOQUETOS'
      'where pagamento is null and st <> '#39'N'#39
      'and exists (select codigo from alunos'
      '             where bloqueto_1sem = 1'
      '             and bloquetos.aluno=alunos.codigo)'
      #9#9#9' ')
    Left = 376
    Top = 304
  end
  object DsDeleteBoleto: TDataSource
    DataSet = DeleteBoleto
    Left = 280
    Top = 304
  end
end
