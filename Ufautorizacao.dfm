object fautorizacao: Tfautorizacao
  Left = 473
  Top = 149
  Width = 694
  Height = 549
  Caption = 'Cadastro de autorização.'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 530
    Height = 29
    Caption = 'Cadastro do titular da autorização  de pagamento.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 79
    Width = 110
    Height = 13
    Caption = 'Número da autorização'
    FocusControl = DBEdit1
  end
  object Label3: TLabel
    Left = 24
    Top = 127
    Width = 122
    Height = 13
    Caption = 'Nome do titular do cartão:'
    FocusControl = DBEdit2
  end
  object Label4: TLabel
    Left = 373
    Top = 127
    Width = 97
    Height = 13
    Caption = 'Data do pagamento.'
  end
  object Label5: TLabel
    Left = 549
    Top = 126
    Width = 113
    Height = 13
    Caption = 'Quantidade de parcelas'
    FocusControl = DBEdit4
  end
  object Contador: TRxSpinButton
    Left = 622
    Top = 143
    Width = 20
    Height = 20
    Enabled = False
    DownGlyph.Data = {
      56000000424D56000000000000003E0000002800000006000000060000000100
      010000000000180000000000000000000000020000000200000000000000FFFF
      FF00CC0000008400000000000000CC000000CC000000CC000000}
    UpGlyph.Data = {
      56000000424D56000000000000003E0000002800000006000000060000000100
      010000000000180000000000000000000000020000000200000000000000FFFF
      FF00CC000000CC000000CC0000000000000084000000CC000000}
    OnBottomClick = ContadorBottomClick
    OnTopClick = ContadorTopClick
  end
  object Label6: TLabel
    Left = 27
    Top = 304
    Width = 64
    Height = 13
    Caption = 'Autorizações:'
  end
  object Label7: TLabel
    Left = 384
    Top = 80
    Width = 27
    Height = 13
    Caption = 'Valor:'
  end
  object Label8: TLabel
    Left = 24
    Top = 176
    Width = 61
    Height = 13
    Caption = 'Observação:'
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 95
    Width = 345
    Height = 21
    CharCase = ecUpperCase
    DataField = 'AUTORIZACAO'
    DataSource = DM.DsAutorizacao
    Enabled = False
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 143
    Width = 304
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME_TITULAR'
    DataSource = DM.DsAutorizacao
    Enabled = False
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 550
    Top = 143
    Width = 64
    Height = 21
    DataField = 'PARCELAS'
    DataSource = DM.DsAutorizacao
    Enabled = False
    TabOrder = 6
  end
  object DBDateEdit1: TDBDateEdit
    Left = 373
    Top = 143
    Width = 121
    Height = 21
    DataField = 'DATA_PAGAMENTO'
    DataSource = DM.DsAutorizacao
    DefaultToday = True
    DialogTitle = 'Sel. uma data'
    Enabled = False
    NumGlyphs = 2
    TabOrder = 4
  end
  object RxDBGrid1: TRxDBGrid
    Left = 25
    Top = 320
    Width = 632
    Height = 129
    DataSource = ds_autorizacoes
    Options = [dgTitles, dgColLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'AUTORIZACAO'
        Title.Caption = 'Autorização'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_TITULAR'
        Title.Caption = 'Titular'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_PAGAMENTO'
        Title.Caption = 'Pagamento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARCELAS'
        Title.Caption = 'Total parcelas'
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 576
    Top = 456
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = '&Fechar'
    TabOrder = 8
    OnClick = BitBtn1Click
    Kind = bkClose
  end
  object BitBtn2: TBitBtn
    Left = 112
    Top = 456
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = '&Salvar'
    Default = True
    Enabled = False
    TabOrder = 9
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
  object BitBtn3: TBitBtn
    Left = 24
    Top = 456
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = '&Inserir'
    TabOrder = 10
    OnClick = BitBtn3Click
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
  object DBRformas: TDBRadioGroup
    Left = 24
    Top = 40
    Width = 421
    Height = 35
    Caption = 'Formas de pagamento.'
    Columns = 4
    DataField = 'FORMAP'
    DataSource = DM.DsAutorizacao
    Enabled = False
    Items.Strings = (
      'Crédito'
      'Débito'
      'Dinheiro'
      'Cheque')
    TabOrder = 0
    Values.Strings = (
      'CD'
      'DB'
      'DN'
      'CH')
  end
  object DBEdit3: TDBEdit
    Left = 384
    Top = 96
    Width = 73
    Height = 21
    DataField = 'VALORP'
    DataSource = DM.DsAutorizacao
    Enabled = False
    TabOrder = 2
  end
  object DBMemo1: TDBMemo
    Left = 24
    Top = 192
    Width = 633
    Height = 97
    DataField = 'MEMOBS'
    DataSource = DM.DsAutorizacao
    Enabled = False
    TabOrder = 5
  end
  object BitBtn4: TBitBtn
    Left = 200
    Top = 456
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'Cancelar'
    Enabled = False
    TabOrder = 11
    OnClick = BitBtn4Click
  end
  object Button1: TButton
    Left = 498
    Top = 456
    Width = 70
    Height = 23
    Cursor = crHandPoint
    Caption = 'Relatório'
    TabOrder = 12
    OnClick = Button1Click
  end
  object ds_autorizacoes: TDataSource
    DataSet = qautorizacao
    Left = 616
    Top = 39
  end
  object qautorizacao: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *'
      'from AUTO_CARTAO'
      'where alunos = :baluno')
    Left = 552
    Top = 39
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'baluno'
        ParamType = ptUnknown
      end>
    object qautorizacaoALUNOS: TIntegerField
      FieldName = 'ALUNOS'
      Origin = '"AUTO_CARTAO"."ALUNOS"'
      Required = True
    end
    object qautorizacaoAUTORIZACAO: TIBStringField
      FieldName = 'AUTORIZACAO'
      Origin = '"AUTO_CARTAO"."AUTORIZACAO"'
      Required = True
      Size = 25
    end
    object qautorizacaoNOME_TITULAR: TIBStringField
      FieldName = 'NOME_TITULAR'
      Origin = '"AUTO_CARTAO"."NOME_TITULAR"'
      Size = 50
    end
    object qautorizacaoPARCELAS: TIntegerField
      Alignment = taCenter
      FieldName = 'PARCELAS'
      Origin = '"AUTO_CARTAO"."PARCELAS"'
    end
    object qautorizacaoDATA_PAGAMENTO: TDateField
      FieldName = 'DATA_PAGAMENTO'
      Origin = '"AUTO_CARTAO"."DATA_PAGAMENTO"'
    end
    object qautorizacaoFORMAP: TIBStringField
      FieldName = 'FORMAP'
      Origin = '"AUTO_CARTAO"."FORMAP"'
      FixedChar = True
      Size = 2
    end
    object qautorizacaoVALORP: TIBBCDField
      FieldName = 'VALORP'
      Origin = '"AUTO_CARTAO"."VALORP"'
      Precision = 9
      Size = 2
    end
    object qautorizacaoMEMOBS: TIBStringField
      FieldName = 'MEMOBS'
      Origin = '"AUTO_CARTAO"."MEMOBS"'
      Size = 250
    end
  end
  object FormStyle: TFormPlacement
    Left = 584
    Top = 8
  end
end
