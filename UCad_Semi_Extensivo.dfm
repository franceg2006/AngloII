object Cad_Semi_Extensivo: TCad_Semi_Extensivo
  Left = 438
  Top = 111
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Cursinho'
  ClientHeight = 649
  ClientWidth = 673
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 567
    Top = 595
    Width = 90
    Height = 25
    Caption = '&Fecha'
    TabOrder = 3
    Kind = bkClose
    Layout = blGlyphRight
  end
  object DBNavigator1: TDBNavigator
    Left = 3
    Top = 595
    Width = 252
    Height = 25
    DataSource = DM.dsSemi
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    Hints.Strings = (
      'Primeiro'
      'Anterior'
      'Pr�ximo'
      '�ltimo'
      'Inserir'
      'Apagar'
      'Alterar'
      'Gravar'
      'Cancelar'
      'Atualizar')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = DBNavigator1Click
  end
  object Ordem: TRadioGroup
    Left = 273
    Top = 591
    Width = 89
    Height = 53
    Caption = 'Ordem'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ItemIndex = 1
    Items.Strings = (
      'p/ C�digo'
      'p/ Nome')
    ParentFont = False
    TabOrder = 2
    OnClick = OrdemClick
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 673
    Height = 585
    ActivePage = TabSheet1
    Align = alTop
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Cadastro'
      OnShow = TabSheet1Show
      object Label1: TLabel
        Left = 63
        Top = 16
        Width = 49
        Height = 13
        Alignment = taRightJustify
        Caption = 'C�digo :'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 70
        Top = 40
        Width = 42
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome :'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 50
        Top = 64
        Width = 62
        Height = 13
        Alignment = taRightJustify
        Caption = 'Endere�o :'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 23
        Top = 88
        Width = 89
        Height = 13
        Alignment = taRightJustify
        Caption = 'Complemento :'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 68
        Top = 112
        Width = 44
        Height = 13
        Alignment = taRightJustify
        Caption = 'Bairro :'
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 16
        Top = 136
        Width = 96
        Height = 13
        Alignment = taRightJustify
        Caption = 'CEP/Cidade/UF :'
        FocusControl = DBEdit6
      end
      object Label9: TLabel
        Left = 86
        Top = 160
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = 'RG :'
      end
      object Label13: TLabel
        Left = 322
        Top = 160
        Width = 38
        Height = 13
        Alignment = taRightJustify
        Caption = 'Sexo :'
      end
      object Label10: TLabel
        Left = 41
        Top = 210
        Width = 71
        Height = 13
        Alignment = taRightJustify
        Caption = 'Data Nasc. :'
        FocusControl = DBEdit10
      end
      object Label11: TLabel
        Left = 28
        Top = 234
        Width = 84
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cidade Nasc. :'
        FocusControl = DBEdit11
      end
      object Label14: TLabel
        Left = 49
        Top = 258
        Width = 63
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome Pai :'
        FocusControl = DBEdit14
      end
      object Label17: TLabel
        Left = 43
        Top = 330
        Width = 69
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome M�e :'
        FocusControl = DBEdit17
      end
      object Label20: TLabel
        Left = 76
        Top = 409
        Width = 36
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fone :'
        FocusControl = DBEdit20
      end
      object Label25: TLabel
        Left = 68
        Top = 433
        Width = 45
        Height = 13
        Alignment = taRightJustify
        Caption = 'Status :'
      end
      object Label26: TLabel
        Left = 41
        Top = 457
        Width = 72
        Height = 13
        Alignment = taRightJustify
        Caption = 'Data Sa�da :'
        FocusControl = DBEdit28
      end
      object Label27: TLabel
        Left = 73
        Top = 481
        Width = 40
        Height = 13
        Alignment = taRightJustify
        Caption = 'Bolsa :'
        FocusControl = DBEdit29
      end
      object Label70: TLabel
        Left = 1
        Top = 505
        Width = 112
        Height = 13
        Alignment = taRightJustify
        Caption = 'Observa��o Bolsa :'
        FocusControl = DBEdit29
      end
      object Label31: TLabel
        Left = 304
        Top = 426
        Width = 54
        Height = 13
        Alignment = taRightJustify
        Caption = 'Material :'
      end
      object Label32: TLabel
        Left = 324
        Top = 474
        Width = 98
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vencimento Dia :'
        FocusControl = DBEdit33
      end
      object Label7: TLabel
        Left = 335
        Top = 450
        Width = 87
        Height = 13
        Alignment = taRightJustify
        Caption = 'Data Matr�cula:'
        FocusControl = DBEdit21
      end
      object Label21: TLabel
        Left = 406
        Top = 505
        Width = 39
        Height = 13
        Caption = 'Curso:'
      end
      object Label15: TLabel
        Left = 406
        Top = 533
        Width = 37
        Height = 13
        Caption = 'Turno:'
      end
      object Label12: TLabel
        Left = 326
        Top = 237
        Width = 19
        Height = 13
        Caption = 'UF:'
        OnClick = BImprimirClick
      end
      object Label16: TLabel
        Left = 78
        Top = 184
        Width = 35
        Height = 13
        Caption = 'CPF  :'
      end
      object Label18: TLabel
        Left = 60
        Top = 282
        Width = 51
        Height = 13
        Caption = 'RG Pai  :'
      end
      object Label19: TLabel
        Left = 50
        Top = 307
        Width = 60
        Height = 13
        Caption = 'CPF Pai   :'
      end
      object Label22: TLabel
        Left = 54
        Top = 356
        Width = 57
        Height = 13
        Caption = 'RG M�e  :'
      end
      object Label24: TLabel
        Left = 48
        Top = 382
        Width = 62
        Height = 13
        Caption = 'CPF M�e  :'
      end
      object Label28: TLabel
        Left = 480
        Top = 344
        Width = 60
        Height = 13
        Caption = 'Semestre:'
      end
      object GroupBox1: TGroupBox
        Left = 477
        Top = 96
        Width = 145
        Height = 185
        Caption = 'Documentos'
        TabOrder = 35
        object Label23: TLabel
          Left = 21
          Top = 132
          Width = 96
          Height = 13
          Caption = 'Data Documento'
          FocusControl = DBEdit1
        end
      end
      object DBEdit1: TDBEdit
        Left = 118
        Top = 11
        Width = 74
        Height = 21
        Color = clSilver
        DataField = 'CODIGO'
        DataSource = DM.dsSemi
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 118
        Top = 35
        Width = 424
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOME'
        DataSource = DM.dsSemi
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 118
        Top = 59
        Width = 281
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ENDERECO'
        DataSource = DM.dsSemi
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 118
        Top = 83
        Width = 144
        Height = 21
        CharCase = ecUpperCase
        DataField = 'COMPLEMENTO'
        DataSource = DM.dsSemi
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 118
        Top = 107
        Width = 144
        Height = 21
        CharCase = ecUpperCase
        DataField = 'BAIRRO'
        DataSource = DM.dsSemi
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 190
        Top = 131
        Width = 251
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CIDADE'
        DataSource = DM.dsSemi
        TabOrder = 6
      end
      object DBEdit7: TDBEdit
        Left = 446
        Top = 131
        Width = 25
        Height = 21
        CharCase = ecUpperCase
        DataField = 'UF'
        DataSource = DM.dsSemi
        TabOrder = 7
      end
      object DBEdit8: TDBEdit
        Left = 118
        Top = 131
        Width = 67
        Height = 21
        DataField = 'CEP'
        DataSource = DM.dsSemi
        TabOrder = 5
      end
      object RxDBComboBox2: TRxDBComboBox
        Left = 366
        Top = 155
        Width = 105
        Height = 21
        Style = csDropDownList
        DataField = 'SEXO'
        DataSource = DM.dsSemi
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'Feminino'
          'Masculino')
        TabOrder = 9
        Values.Strings = (
          'F'
          'M')
      end
      object DBEdit10: TDBEdit
        Left = 118
        Top = 205
        Width = 74
        Height = 21
        DataField = 'NASC_DATA'
        DataSource = DM.dsSemi
        TabOrder = 11
      end
      object DBEdit11: TDBEdit
        Left = 118
        Top = 229
        Width = 202
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NASC_CIDADE'
        DataSource = DM.dsSemi
        TabOrder = 12
      end
      object DBEdit12: TDBEdit
        Left = 358
        Top = 230
        Width = 25
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NASC_UF'
        DataSource = DM.dsSemi
        TabOrder = 13
      end
      object DBEdit14: TDBEdit
        Left = 118
        Top = 253
        Width = 354
        Height = 21
        CharCase = ecUpperCase
        DataField = 'PAI_NOME'
        DataSource = DM.dsSemi
        TabOrder = 14
      end
      object DBEdit17: TDBEdit
        Left = 118
        Top = 325
        Width = 354
        Height = 21
        CharCase = ecUpperCase
        DataField = 'MAE_NOME'
        DataSource = DM.dsSemi
        TabOrder = 17
      end
      object DBEdit20: TDBEdit
        Left = 118
        Top = 404
        Width = 214
        Height = 21
        DataField = 'FONE'
        DataSource = DM.dsSemi
        TabOrder = 20
      end
      object ComboStatus: TRxDBComboBox
        Left = 118
        Top = 428
        Width = 97
        Height = 21
        Style = csDropDownList
        DataField = 'STATUS'
        DataSource = DM.dsSemi
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'Ativo'
          'Desistente'
          'Transferido'
          'Outros')
        TabOrder = 21
        Values.Strings = (
          'A'
          'D'
          'T'
          'O')
      end
      object DBEdit28: TDBEdit
        Left = 118
        Top = 452
        Width = 74
        Height = 21
        DataField = 'DATA_SAIDA'
        DataSource = DM.dsSemi
        TabOrder = 22
      end
      object DBEdit29: TDBEdit
        Left = 118
        Top = 476
        Width = 41
        Height = 21
        DataField = 'BOLSA'
        DataSource = DM.dsSemi
        TabOrder = 25
      end
      object DBEdit13: TDBEdit
        Left = 118
        Top = 500
        Width = 284
        Height = 21
        DataField = 'BOLSA_OBS'
        DataSource = DM.dsSemi
        TabOrder = 27
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 363
        Top = 413
        Width = 105
        Height = 29
        Columns = 2
        DataField = 'MATERIAL'
        DataSource = DM.dsSemi
        Items.Strings = (
          'Sim'
          'N�o')
        TabOrder = 23
        TabStop = True
        Values.Strings = (
          '1'
          '0')
      end
      object DBEdit33: TDBEdit
        Left = 427
        Top = 476
        Width = 33
        Height = 21
        DataField = 'VENCIMENTO'
        DataSource = DM.dsSemi
        TabOrder = 26
      end
      object DBEdit21: TDBEdit
        Left = 427
        Top = 452
        Width = 74
        Height = 21
        DataField = 'DATA_MATRICULA'
        DataSource = DM.dsSemi
        TabOrder = 24
      end
      object PesqAluno: TRxDBLookupCombo
        Left = 212
        Top = 11
        Width = 330
        Height = 21
        DropDownCount = 25
        DisplayEmpty = 'Pesquisa por Nome'
        EmptyValue = '0'
        EmptyItemColor = clSilver
        LookupField = 'CODIGO'
        LookupDisplay = 'NOME'
        LookupSource = DM.dsSemi
        TabOrder = 31
      end
      object PuxaDados: TBitBtn
        Left = 476
        Top = 66
        Width = 134
        Height = 27
        Caption = '&Puxa dados'
        TabOrder = 32
        OnClick = PuxaDadosClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
          00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
          00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
          F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
          F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
          F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
          FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
          0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
          0033333337FFFFFF773333333000000003333333377777777333}
        NumGlyphs = 2
      end
      object Requerimento: TBitBtn
        Left = 483
        Top = 143
        Width = 133
        Height = 26
        Caption = 'Requerimento'
        TabOrder = 34
        OnClick = RequerimentoClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          00033FFFFFFFFFFFFFFF0777777777777770888888888888888F077777777777
          7770888888888888888F0000000000000000FFFFFFFFFFFFFFFF0F7F7F7F7F7F
          7F70888888888888888F07F7F7F7F7F7F9F0888888888888888F0F7F7F7F7F7F
          7F708888888888888F8F0000000000000000888888888888888F3330FFFFFFFF
          03333338F3FFFF3F8F333330F0000F0F03333338F88883838F333330FFFFFFFF
          03333338F3FF3FFF8F333330F00F000003333338F883888883333330FFFF0FF0
          33333338F3FF8F3833333330F07F0F0333333338F8838F8333333330FFFF0033
          33333338FFFF8833333333300000033333333338888883333333}
        NumGlyphs = 2
      end
      object Contrato: TBitBtn
        Left = 483
        Top = 114
        Width = 133
        Height = 26
        Caption = 'Contrato'
        TabOrder = 33
        OnClick = ContratoClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          00033FFFFFFFFFFFFFFF0777777777777770888888888888888F077777777777
          7770888888888888888F0000000000000000FFFFFFFFFFFFFFFF0F7F7F7F7F7F
          7F70888888888888888F07F7F7F7F7F7F9F0888888888888888F0F7F7F7F7F7F
          7F708888888888888F8F0000000000000000888888888888888F3330FFFFFFFF
          03333338F3FFFF3F8F333330F0000F0F03333338F88883838F333330FFFFFFFF
          03333338F3FF3FFF8F333330F00F000003333338F883888883333330FFFF0FF0
          33333338F3FF8F3833333330F07F0F0333333338F8838F8333333330FFFF0033
          33333338FFFF8833333333300000033333333338888883333333}
        NumGlyphs = 2
      end
      object Ddocumento: TDateEdit
        Left = 499
        Top = 250
        Width = 100
        Height = 21
        NumGlyphs = 2
        TabOrder = 30
      end
      object DBComboBox1: TDBComboBox
        Left = 446
        Top = 500
        Width = 81
        Height = 21
        DataField = 'CURSO'
        DataSource = DM.dsSemi
        ItemHeight = 13
        Items.Strings = (
          'SEMI'
          'INTE')
        TabOrder = 28
      end
      object ComboTurno: TRxDBComboBox
        Left = 446
        Top = 527
        Width = 81
        Height = 21
        Style = csDropDownList
        DataField = 'TURNO'
        DataSource = DM.dsSemi
        DropDownCount = 2
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'Diurno'
          'Noturno')
        TabOrder = 29
        Values.Strings = (
          'D'
          'N')
      end
      object rgresp: TRadioGroup
        Left = 478
        Top = 288
        Width = 167
        Height = 48
        Caption = 'Nome/Resp.Contrato'
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'Aluno'
          'Pai'
          'M�e')
        TabOrder = 36
      end
      object dbedtrg: TDBEdit
        Left = 118
        Top = 155
        Width = 195
        Height = 21
        DataField = 'RG'
        DataSource = DM.dsSemi
        TabOrder = 8
      end
      object dbedt1: TDBEdit
        Left = 119
        Top = 179
        Width = 195
        Height = 21
        DataField = 'SACADO_CPF'
        DataSource = DM.dsSemi
        TabOrder = 10
      end
      object btn1: TButton
        Left = 483
        Top = 176
        Width = 134
        Height = 25
        Cursor = crHandPoint
        Caption = 'Recibo'
        TabOrder = 37
        OnClick = btn1Click
      end
      object DBEdit9: TDBEdit
        Left = 118
        Top = 277
        Width = 267
        Height = 21
        DataField = 'RG_PAI'
        DataSource = DM.dsSemi
        TabOrder = 15
      end
      object DBEdit15: TDBEdit
        Left = 118
        Top = 302
        Width = 265
        Height = 21
        DataField = 'CPF_PAI'
        DataSource = DM.dsSemi
        TabOrder = 16
      end
      object DBEdit16: TDBEdit
        Left = 118
        Top = 351
        Width = 267
        Height = 21
        DataField = 'RG_MAE'
        DataSource = DM.dsSemi
        TabOrder = 18
      end
      object DBEdit18: TDBEdit
        Left = 119
        Top = 378
        Width = 266
        Height = 21
        DataField = 'CPF_MAE'
        DataSource = DM.dsSemi
        TabOrder = 19
      end
      object CSemestre: TComboBox
        Left = 480
        Top = 360
        Width = 145
        Height = 21
        ItemHeight = 13
        TabOrder = 38
        Text = '2� Semestre'
        OnChange = CSemestreChange
        Items.Strings = (
          '1� Semestre'
          '2� Semestre')
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      OnShow = TabSheet2Show
      object Panel1: TPanel
        Left = 4
        Top = 4
        Width = 581
        Height = 33
        BevelOuter = bvNone
        Color = clGray
        TabOrder = 0
        object Label35: TLabel
          Left = 13
          Top = 8
          Width = 49
          Height = 13
          Caption = 'C�digo :'
        end
        object Label36: TLabel
          Left = 208
          Top = 8
          Width = 42
          Height = 13
          Caption = 'Nome :'
        end
        object Nome: TEdit
          Left = 256
          Top = 5
          Width = 241
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          OnChange = NomeChange
        end
        object Pesquisa: TBitBtn
          Left = 505
          Top = 6
          Width = 71
          Height = 20
          Caption = 'Pesquisa'
          TabOrder = 1
          OnClick = PesquisaClick
        end
        object Codigo: TCurrencyEdit
          Left = 67
          Top = 5
          Width = 57
          Height = 21
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '0;- 0'
          TabOrder = 2
          OnChange = CodigoChange
        end
      end
      object DBGrid1: TDBGrid
        Left = 3
        Top = 40
        Width = 582
        Height = 353
        DataSource = DM.dsSemi
        Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Caption = 'C�digo'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Width = 471
            Visible = True
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Relat�rios'
      ImageIndex = 2
      object Label8: TLabel
        Left = 16
        Top = 24
        Width = 155
        Height = 13
        Caption = 'Selecione o m�s referente.'
      end
      object BImprimir: TBitBtn
        Left = 13
        Top = 138
        Width = 89
        Height = 20
        Caption = '&Imprimir'
        TabOrder = 0
        OnClick = BImprimirClick
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
      object CMes: TComboBox
        Left = 16
        Top = 41
        Width = 161
        Height = 21
        ItemHeight = 13
        TabOrder = 1
        Text = '<<Selecione o M�s>>'
        Items.Strings = (
          'Agosto'
          'Setembro'
          'Outubro'
          'Novembro'
          'Dezembro')
      end
      object Rordem: TRadioGroup
        Left = 16
        Top = 72
        Width = 161
        Height = 57
        Caption = 'Ordem'
        ItemIndex = 0
        Items.Strings = (
          'Nome'
          'C�digo')
        TabOrder = 2
      end
      object RadioSemi: TRadioGroup
        Left = 180
        Top = 73
        Width = 153
        Height = 54
        Caption = 'Semestre'
        ItemIndex = 0
        Items.Strings = (
          'Primeiro Semestre.'
          'Segundo Semestre.')
        TabOrder = 3
      end
    end
  end
  object FS: TFormStorage
    StoredValues = <>
    Left = 384
    Top = 600
  end
end
