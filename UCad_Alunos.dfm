object Cad_Alunos: TCad_Alunos
  Left = 246
  Top = 133
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'ALUNOS'
  ClientHeight = 665
  ClientWidth = 1012
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TBevel
    Left = 350
    Top = 68
    Width = 81
    Height = 15
  end
  object PageControl1: TPageControl
    Left = 7
    Top = 0
    Width = 970
    Height = 657
    ActivePage = Tab4
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 1
    object Tab1: TTabSheet
      Caption = 'Dados Pessoais'
      OnShow = Tab1Show
      object Label1: TLabel
        Left = 49
        Top = 8
        Width = 49
        Height = 13
        Alignment = taRightJustify
        Caption = 'Código :'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 56
        Top = 32
        Width = 42
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome :'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 250
        Top = 56
        Width = 62
        Height = 13
        Alignment = taRightJustify
        Caption = 'Endereço :'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 9
        Top = 80
        Width = 89
        Height = 13
        Alignment = taRightJustify
        Caption = 'Complemento :'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 54
        Top = 104
        Width = 44
        Height = 13
        Alignment = taRightJustify
        Caption = 'Bairro :'
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 22
        Top = 128
        Width = 76
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cidade / UF :'
        FocusControl = DBEdit6
      end
      object Label8: TLabel
        Left = 346
        Top = 128
        Width = 32
        Height = 13
        Alignment = taRightJustify
        Caption = 'CEP :'
        FocusControl = DBEdit8
      end
      object Label9: TLabel
        Left = 72
        Top = 153
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = 'RG :'
        FocusControl = DBEdit9
      end
      object Label10: TLabel
        Left = 27
        Top = 238
        Width = 71
        Height = 13
        Alignment = taRightJustify
        Caption = 'Data Nasc. :'
        FocusControl = DBEdit10
      end
      object Label11: TLabel
        Left = 16
        Top = 263
        Width = 84
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cidade Nasc. :'
        FocusControl = DBEdit11
      end
      object Label13: TLabel
        Left = 185
        Top = 238
        Width = 38
        Height = 13
        Alignment = taRightJustify
        Caption = 'Sexo :'
      end
      object Label19: TLabel
        Left = 343
        Top = 379
        Width = 67
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nasc. Mãe :'
        FocusControl = DBEdit19
        Visible = False
      end
      object Label18: TLabel
        Left = 10
        Top = 382
        Width = 88
        Height = 13
        Alignment = taRightJustify
        Caption = 'Profissão Mãe :'
        FocusControl = DBEdit18
      end
      object Label17: TLabel
        Left = 29
        Top = 334
        Width = 69
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome Mãe :'
        FocusControl = DBEdit17
      end
      object Label16: TLabel
        Left = 317
        Top = 310
        Width = 61
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nasc. Pai :'
        FocusControl = DBEdit16
        Visible = False
      end
      object Label15: TLabel
        Left = 16
        Top = 310
        Width = 82
        Height = 13
        Alignment = taRightJustify
        Caption = 'Profissão Pai :'
        FocusControl = DBEdit15
      end
      object Label14: TLabel
        Left = 35
        Top = 286
        Width = 63
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome Pai :'
        FocusControl = DBEdit14
      end
      object Label48: TLabel
        Left = 612
        Top = 108
        Width = 51
        Height = 13
        Caption = 'Procura'
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText8: TDBText
        Left = 104
        Top = 478
        Width = 54
        Height = 13
        AutoSize = True
        DataField = 'SerieX'
        DataSource = DM.dsAlunos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label53: TLabel
        Left = 10
        Top = 478
        Width = 88
        Height = 13
        Alignment = taRightJustify
        Caption = 'Série / Turma :'
        FocusControl = DBEdit2
      end
      object Label56: TLabel
        Left = 600
        Top = 422
        Width = 95
        Height = 13
        Alignment = taRightJustify
        Caption = 'Alunos ATIVOS :'
        FocusControl = DBEdit2
      end
      object DBText11: TDBText
        Left = 701
        Top = 422
        Width = 62
        Height = 13
        AutoSize = True
        DataField = 'TOTAL'
        DataSource = DM.dsTotAl
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label72: TLabel
        Left = 217
        Top = 478
        Width = 64
        Height = 13
        Alignment = taRightJustify
        Caption = 'Código SP:'
        FocusControl = DBEdit2
      end
      object DBText14: TDBText
        Left = 288
        Top = 478
        Width = 62
        Height = 13
        AutoSize = True
        DataField = 'CODIGO_SP'
        DataSource = DM.dsAlunos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label73: TLabel
        Left = 645
        Top = 392
        Width = 72
        Height = 24
        Alignment = taCenter
        Caption = 'Clique na foto '#13#10'para ampliar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label78: TLabel
        Left = 1
        Top = 56
        Width = 97
        Height = 13
        Caption = 'Tipo Logadouro :'
      end
      object Label79: TLabel
        Left = 604
        Top = 54
        Width = 54
        Height = 13
        Caption = 'Número :'
      end
      object Label80: TLabel
        Left = 243
        Top = 153
        Width = 71
        Height = 13
        Caption = 'Compl. RG :'
      end
      object Label81: TLabel
        Left = 384
        Top = 153
        Width = 87
        Height = 13
        Caption = 'Data emissão :'
      end
      object Label82: TLabel
        Left = 47
        Top = 177
        Width = 52
        Height = 13
        Caption = 'UF Ident.'
      end
      object Label83: TLabel
        Left = 531
        Top = 32
        Width = 30
        Height = 13
        Caption = 'Nac.:'
      end
      object Label85: TLabel
        Left = 155
        Top = 176
        Width = 93
        Height = 13
        Caption = 'Orgão emissor :'
      end
      object Label86: TLabel
        Left = 320
        Top = 262
        Width = 23
        Height = 13
        Caption = 'UF :'
      end
      object RxLabel1: TRxLabel
        Left = 413
        Top = 449
        Width = 189
        Height = 18
        Cursor = crHandPoint
        Caption = 'Endereço para cobrança.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clHighlight
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic, fsUnderline]
        ParentFont = False
        ShadowColor = clInactiveBorder
        OnClick = RxLabel1Click
      end
      object SpeedButton1: TSpeedButton
        Left = 712
        Top = 26
        Width = 33
        Height = 20
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777700000007777777777777777700000007000000000000077700000007088
          888888888077700000007088888888888077700000007088888B888878777000
          00007088888888887877B0000000708888888B88788B800000007088888888B8
          78B870000000700000000007778BB00000007708888807777788700000007770
          000077B878B870000000777777777B87787B8000000077777777777778777000
          0000777777777777787770000000777777777777777770000000777777777777
          777770000000}
        OnClick = SpeedButton1Click
      end
      object Label76: TLabel
        Left = 52
        Top = 410
        Width = 46
        Height = 13
        Caption = 'Celular:'
      end
      object Label94: TLabel
        Left = 48
        Top = 434
        Width = 49
        Height = 13
        Caption = 'Tel. Res.'
      end
      object Label95: TLabel
        Left = 23
        Top = 454
        Width = 74
        Height = 13
        Caption = 'Tel. Contato:'
      end
      object lb1: TLabel
        Left = 536
        Top = 8
        Width = 27
        Height = 13
        Caption = 'ID  :'
      end
      object Label98: TLabel
        Left = 71
        Top = 209
        Width = 24
        Height = 13
        Caption = 'CPF.'
      end
      object Label97: TLabel
        Left = 50
        Top = 356
        Width = 47
        Height = 13
        Caption = 'E-Mail  :'
      end
      object Label20: TLabel
        Left = 242
        Top = 432
        Width = 51
        Height = 13
        Caption = 'Obs. Tel:'
      end
      object DBEdit1: TDBEdit
        Left = 104
        Top = 3
        Width = 74
        Height = 21
        Color = clMenu
        DataField = 'CODIGO'
        DataSource = DM.dsAlunos
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 104
        Top = 27
        Width = 424
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOME'
        DataSource = DM.dsAlunos
        Enabled = False
        TabOrder = 3
      end
      object DBEdit3: TDBEdit
        Left = 318
        Top = 51
        Width = 281
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ENDERECO'
        DataSource = DM.dsAlunos
        TabOrder = 6
      end
      object DBEdit4: TDBEdit
        Left = 104
        Top = 75
        Width = 273
        Height = 21
        CharCase = ecUpperCase
        DataField = 'COMPLEMENTO'
        DataSource = DM.dsAlunos
        TabOrder = 8
      end
      object DBEdit5: TDBEdit
        Left = 104
        Top = 99
        Width = 144
        Height = 21
        CharCase = ecUpperCase
        DataField = 'BAIRRO'
        DataSource = DM.dsAlunos
        TabOrder = 9
      end
      object DBEdit6: TDBEdit
        Left = 104
        Top = 123
        Width = 202
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CIDADE'
        DataSource = DM.dsAlunos
        TabOrder = 10
      end
      object DBEdit7: TDBEdit
        Left = 312
        Top = 123
        Width = 25
        Height = 21
        DataField = 'UF'
        DataSource = DM.dsAlunos
        TabOrder = 11
      end
      object DBEdit8: TDBEdit
        Left = 384
        Top = 123
        Width = 67
        Height = 21
        DataField = 'CEP'
        DataSource = DM.dsAlunos
        TabOrder = 12
      end
      object DBEdit9: TDBEdit
        Left = 104
        Top = 148
        Width = 137
        Height = 21
        DataField = 'RG'
        DataSource = DM.dsAlunos
        TabOrder = 13
      end
      object DBEdit10: TDBEdit
        Left = 104
        Top = 233
        Width = 74
        Height = 21
        DataField = 'NASC_DATA'
        DataSource = DM.dsAlunos
        TabOrder = 19
      end
      object DBEdit11: TDBEdit
        Left = 104
        Top = 258
        Width = 202
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NASC_CIDADE'
        DataSource = DM.dsAlunos
        TabOrder = 21
      end
      object DBEdit12: TDBEdit
        Left = 344
        Top = 257
        Width = 25
        Height = 21
        DataField = 'NASC_UF'
        DataSource = DM.dsAlunos
        TabOrder = 22
      end
      object DBEdit19: TDBEdit
        Left = 416
        Top = 375
        Width = 74
        Height = 21
        DataField = 'MAE_NASCIMENTO'
        DataSource = DM.dsAlunos
        TabOrder = 29
        Visible = False
      end
      object DBEdit18: TDBEdit
        Left = 104
        Top = 377
        Width = 144
        Height = 21
        CharCase = ecUpperCase
        DataField = 'MAE_PROFISSAO'
        DataSource = DM.dsAlunos
        TabOrder = 28
      end
      object DBEdit17: TDBEdit
        Left = 104
        Top = 329
        Width = 354
        Height = 21
        CharCase = ecUpperCase
        DataField = 'MAE_NOME'
        DataSource = DM.dsAlunos
        TabOrder = 26
      end
      object DBEdit16: TDBEdit
        Left = 384
        Top = 305
        Width = 74
        Height = 21
        DataField = 'PAI_NASCIMENTO'
        DataSource = DM.dsAlunos
        TabOrder = 25
        Visible = False
      end
      object DBEdit15: TDBEdit
        Left = 104
        Top = 305
        Width = 161
        Height = 21
        CharCase = ecUpperCase
        DataField = 'PAI_PROFISSAO'
        DataSource = DM.dsAlunos
        TabOrder = 24
      end
      object DBEdit14: TDBEdit
        Left = 104
        Top = 281
        Width = 354
        Height = 21
        CharCase = ecUpperCase
        DataField = 'PAI_NOME'
        DataSource = DM.dsAlunos
        TabOrder = 23
      end
      object PesqAluno: TRxDBLookupCombo
        Left = 188
        Top = 3
        Width = 341
        Height = 21
        DropDownCount = 25
        DisplayEmpty = 'Pesquisa por Nome'
        EmptyValue = '0'
        EmptyItemColor = clSilver
        LookupField = 'CODIGO'
        LookupDisplay = 'NOME'
        LookupSource = DM.dsAlunos
        TabOrder = 1
        OnChange = PesqAlunoChange
        OnCloseUp = PesqAlunoCloseUp
      end
      object Panel2: TPanel
        Left = 613
        Top = 121
        Width = 134
        Height = 33
        BevelOuter = bvNone
        Color = clGray
        TabOrder = 34
        object Label47: TLabel
          Left = 13
          Top = 8
          Width = 49
          Height = 13
          Caption = 'Código :'
        end
        object Codigo2: TCurrencyEdit
          Left = 67
          Top = 5
          Width = 57
          Height = 21
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '0;- 0'
          TabOrder = 0
          OnChange = Codigo2Change
          OnExit = Codigo2Exit
        end
      end
      object RxDBComboBox2: TRxDBComboBox
        Left = 229
        Top = 233
        Width = 105
        Height = 21
        Style = csDropDownList
        DataField = 'SEXO'
        DataSource = DM.dsAlunos
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'Feminino'
          'Masculino')
        TabOrder = 20
        Values.Strings = (
          'F'
          'M')
      end
      object PuxaDados: TBitBtn
        Left = 613
        Top = 76
        Width = 134
        Height = 27
        Caption = '&Puxa dados'
        TabOrder = 33
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
      object Estatistica: TBitBtn
        Left = 613
        Top = 162
        Width = 134
        Height = 27
        Caption = '&Estatística'
        TabOrder = 35
        OnClick = EstatisticaClick
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
      object EstatTur: TBitBtn
        Left = 613
        Top = 232
        Width = 134
        Height = 27
        Caption = 'E&stat.p/Turma'
        TabOrder = 36
        OnClick = EstatTurClick
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
      object Panel3: TPanel
        Left = 635
        Top = 272
        Width = 90
        Height = 120
        BevelWidth = 5
        TabOrder = 37
        object Foto: TImage
          Left = 5
          Top = 5
          Width = 80
          Height = 110
          Align = alClient
          Stretch = True
          OnClick = FotoClick
        end
      end
      object RxDBLookupCombo2: TRxDBLookupCombo
        Left = 104
        Top = 52
        Width = 139
        Height = 21
        DropDownCount = 10
        DataField = 'TIPO_LOGADOURO'
        DataSource = DM.dsAlunos
        DisplayEmpty = '<<Selecione>>'
        LookupField = 'COD_LOGADOURO'
        LookupDisplay = 'NOME_LOGADOURO'
        LookupSource = DM.dslogadouro
        TabOrder = 5
      end
      object DBEdit44: TDBEdit
        Left = 659
        Top = 50
        Width = 94
        Height = 21
        DataField = 'NUMERO'
        DataSource = DM.dsAlunos
        TabOrder = 7
      end
      object DBEdit45: TDBEdit
        Left = 315
        Top = 148
        Width = 65
        Height = 21
        DataField = 'COMPLEMENTO_RG'
        DataSource = DM.dsAlunos
        TabOrder = 14
      end
      object DBDateEdit2: TDBDateEdit
        Left = 472
        Top = 148
        Width = 113
        Height = 21
        DataField = 'DATA_EXP_IDENT'
        DataSource = DM.dsAlunos
        NumGlyphs = 2
        TabOrder = 15
      end
      object RxDBLookupCombo3: TRxDBLookupCombo
        Left = 104
        Top = 172
        Width = 49
        Height = 21
        DropDownCount = 8
        DataField = 'UF_IDENTIDADE'
        DataSource = DM.dsAlunos
        LookupField = 'COD_UF'
        LookupDisplay = 'UF'
        LookupSource = DM.saEstado
        TabOrder = 16
      end
      object RxDBLookupCombo4: TRxDBLookupCombo
        Left = 567
        Top = 27
        Width = 142
        Height = 21
        DropDownCount = 8
        DataField = 'NACIONALIDADE'
        DataSource = DM.dsAlunos
        LookupField = 'COD_PAIS'
        LookupDisplay = 'NOME_PAIS'
        LookupSource = DM.dspais
        TabOrder = 4
      end
      object RxDBLookupCombo6: TRxDBLookupCombo
        Left = 251
        Top = 171
        Width = 326
        Height = 21
        DropDownCount = 8
        DataField = 'ORGAO_EMIS_IDE'
        DataSource = DM.dsAlunos
        LookupField = 'COD_ORGAO'
        LookupDisplay = 'NOME'
        LookupSource = DM.dsorgao
        TabOrder = 17
      end
      object DBEdit50: TDBEdit
        Left = 104
        Top = 402
        Width = 121
        Height = 21
        DataField = 'CELULAR'
        DataSource = DM.dsAlunos
        TabOrder = 30
      end
      object DBEdit51: TDBEdit
        Left = 104
        Top = 426
        Width = 121
        Height = 21
        DataField = 'TEL_RESIDENCIAL'
        DataSource = DM.dsAlunos
        TabOrder = 31
      end
      object DBEdit52: TDBEdit
        Left = 105
        Top = 448
        Width = 121
        Height = 21
        DataField = 'TEL_CONTATO'
        DataSource = DM.dsAlunos
        TabOrder = 32
      end
      object DBRadioGroup5: TDBRadioGroup
        Left = 416
        Top = 397
        Width = 185
        Height = 33
        Caption = 'Participante da formatura?'
        Columns = 2
        DataField = 'FORMATURA'
        DataSource = DM.dsAlunos
        Items.Strings = (
          'Sim'
          'Não')
        TabOrder = 38
        Values.Strings = (
          'P'
          'N')
      end
      object dbedtID: TDBEdit
        Left = 566
        Top = 1
        Width = 141
        Height = 21
        DataField = 'ID'
        DataSource = DM.dsAlunos
        TabOrder = 2
      end
      object DBEdit20: TDBEdit
        Left = 104
        Top = 202
        Width = 297
        Height = 21
        DataField = 'CPF'
        DataSource = DM.dsAlunos
        TabOrder = 18
      end
      object DBEdit55: TDBEdit
        Left = 104
        Top = 352
        Width = 354
        Height = 21
        DataField = 'E_MAIL'
        DataSource = DM.dsAlunos
        TabOrder = 27
      end
      object DBEdit56: TDBEdit
        Left = 240
        Top = 448
        Width = 137
        Height = 21
        DataField = 'OBS_TEL'
        DataSource = DM.dsAlunos
        TabOrder = 39
      end
    end
    object Tab2: TTabSheet
      Caption = 'Dados Controle'
      ImageIndex = 1
      OnShow = Tab2Show
      object bvl2: TBevel
        Left = 261
        Top = 104
        Width = 169
        Height = 101
      end
      object Label7: TLabel
        Left = 63
        Top = 16
        Width = 91
        Height = 13
        Alignment = taRightJustify
        Caption = 'Data Matrícula :'
        FocusControl = DBEdit21
      end
      object Label12: TLabel
        Left = 94
        Top = 40
        Width = 60
        Height = 13
        Alignment = taRightJustify
        Caption = 'Bimestre :'
        FocusControl = DBEdit22
      end
      object Label22: TLabel
        Left = 115
        Top = 64
        Width = 39
        Height = 13
        Alignment = taRightJustify
        Caption = 'Série :'
        FocusControl = DBESerie
      end
      object Label24: TLabel
        Left = 90
        Top = 112
        Width = 64
        Height = 13
        Alignment = taRightJustify
        Caption = 'Chamada :'
        FocusControl = DBEdit26
      end
      object Label25: TLabel
        Left = 109
        Top = 136
        Width = 45
        Height = 13
        Alignment = taRightJustify
        Caption = 'Status :'
      end
      object Label26: TLabel
        Left = 82
        Top = 160
        Width = 72
        Height = 13
        Alignment = taRightJustify
        Caption = 'Data Saída :'
        FocusControl = DBEdit28
      end
      object Label27: TLabel
        Left = 114
        Top = 184
        Width = 40
        Height = 13
        Alignment = taRightJustify
        Caption = 'Bolsa :'
        FocusControl = DBEdit29
      end
      object Label29: TLabel
        Left = 103
        Top = 263
        Width = 51
        Height = 13
        Alignment = taRightJustify
        Caption = 'Sacado :'
        FocusControl = DBEdit30
      end
      object Label31: TLabel
        Left = 100
        Top = 239
        Width = 54
        Height = 13
        Alignment = taRightJustify
        Caption = 'Material :'
      end
      object Label32: TLabel
        Left = 200
        Top = 333
        Width = 98
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vencimento Dia :'
        FocusControl = DBEdit33
      end
      object Label33: TLabel
        Left = 123
        Top = 361
        Width = 31
        Height = 13
        Alignment = taRightJustify
        Caption = 'Ano :'
        FocusControl = DBEdit34
      end
      object Label40: TLabel
        Left = 76
        Top = 335
        Width = 78
        Height = 13
        Alignment = taRightJustify
        Caption = 'Mês material:'
        FocusControl = DBEdit21
      end
      object Label39: TLabel
        Left = 182
        Top = 36
        Width = 6
        Height = 13
        Caption = 'º'
        FocusControl = DBEdit22
      end
      object Label42: TLabel
        Left = 203
        Top = 184
        Width = 12
        Height = 13
        Alignment = taRightJustify
        Caption = '%'
        FocusControl = DBEdit29
      end
      object Label44: TLabel
        Left = 245
        Top = 31
        Width = 65
        Height = 13
        Alignment = taRightJustify
        Caption = 'Código.... :'
        FocusControl = DBEdit1
      end
      object DBText4: TDBText
        Left = 311
        Top = 33
        Width = 54
        Height = 13
        AutoSize = True
        DataField = 'CODIGO'
        DataSource = DM.dsAlunos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label45: TLabel
        Left = 245
        Top = 47
        Width = 66
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome...... :'
        FocusControl = DBEdit2
      end
      object DBText5: TDBText
        Left = 311
        Top = 49
        Width = 54
        Height = 13
        AutoSize = True
        DataField = 'NOME'
        DataSource = DM.dsAlunos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label46: TLabel
        Left = 751
        Top = 44
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = 'Aluno:'
        FocusControl = DBEdit1
        OnDblClick = Label46DblClick
      end
      object DBText6: TDBText
        Left = 795
        Top = 44
        Width = 54
        Height = 13
        AutoSize = True
        DataField = 'SENHA'
        DataSource = DM.dsAlunos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Gauge2: TGauge
        Left = 744
        Top = 3
        Width = 141
        Height = 16
        Progress = 0
        Visible = False
      end
      object Label21: TLabel
        Left = 109
        Top = 87
        Width = 45
        Height = 13
        Alignment = taRightJustify
        Caption = 'Turma :'
        FocusControl = DBESerie
      end
      object Label41: TLabel
        Left = 123
        Top = 286
        Width = 31
        Height = 13
        Alignment = taRightJustify
        Caption = 'CPF :'
        FocusControl = DBEdit30
      end
      object Label49: TLabel
        Left = 290
        Top = 281
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = 'RG :'
        FocusControl = DBEdit30
      end
      object Label51: TLabel
        Left = 182
        Top = 60
        Width = 6
        Height = 13
        Caption = 'ª'
        FocusControl = DBEdit22
      end
      object TrocaSenha: TSpeedButton
        Left = 859
        Top = 39
        Width = 23
        Height = 22
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
          333333333337FF3333333333330003333333333333777F333333333333080333
          3333333F33777FF33F3333B33B000B33B3333373F777773F7333333BBB0B0BBB
          33333337737F7F77F333333BBB0F0BBB33333337337373F73F3333BBB0F7F0BB
          B333337F3737F73F7F3333BB0FB7BF0BB3333F737F37F37F73FFBBBB0BF7FB0B
          BBB3773F7F37337F377333BB0FBFBF0BB333337F73F333737F3333BBB0FBF0BB
          B3333373F73FF7337333333BBB000BBB33333337FF777337F333333BBBBBBBBB
          3333333773FF3F773F3333B33BBBBB33B33333733773773373333333333B3333
          333333333337F33333333333333B333333333333333733333333}
        NumGlyphs = 2
        OnClick = TrocaSenhaClick
      end
      object Pai: TSpeedButton
        Left = 479
        Top = 255
        Width = 22
        Height = 12
        Caption = 'Pai'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = PaiClick
      end
      object Mae: TSpeedButton
        Left = 479
        Top = 267
        Width = 22
        Height = 12
        Caption = 'Mãe'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = MaeClick
      end
      object Label58: TLabel
        Left = 61
        Top = 310
        Width = 93
        Height = 13
        Alignment = taRightJustify
        Caption = 'Mod. Esportiva :'
      end
      object Label70: TLabel
        Left = 42
        Top = 213
        Width = 112
        Height = 13
        Alignment = taRightJustify
        Caption = 'Observação Bolsa :'
        FocusControl = DBEdit29
      end
      object Label71: TLabel
        Left = 246
        Top = 63
        Width = 64
        Height = 13
        Alignment = taRightJustify
        Caption = 'Código SP:'
        FocusControl = DBEdit2
      end
      object DBText13: TDBText
        Left = 311
        Top = 63
        Width = 62
        Height = 13
        AutoSize = True
        DataField = 'CODIGO_SP'
        DataSource = DM.dsAlunos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label75: TLabel
        Left = 225
        Top = 87
        Width = 26
        Height = 13
        Caption = 'Cor:'
      end
      object Label77: TLabel
        Left = 244
        Top = 16
        Width = 102
        Height = 13
        Caption = 'Data de ingresso:'
      end
      object Label84: TLabel
        Left = 562
        Top = 130
        Width = 101
        Height = 13
        Caption = 'Número do termo'
      end
      object Label87: TLabel
        Left = 562
        Top = 171
        Width = 30
        Height = 13
        Caption = 'Folha'
      end
      object Label88: TLabel
        Left = 562
        Top = 209
        Width = 28
        Height = 13
        Caption = 'Livro'
      end
      object Label89: TLabel
        Left = 562
        Top = 243
        Width = 144
        Height = 13
        Caption = 'Data da emissão da cert.'
      end
      object Label90: TLabel
        Left = 562
        Top = 279
        Width = 65
        Height = 13
        Caption = 'UF Cartório'
      end
      object Label91: TLabel
        Left = 562
        Top = 315
        Width = 99
        Height = 13
        Caption = 'Nome do cartório'
      end
      object Label92: TLabel
        Left = 751
        Top = 71
        Width = 28
        Height = 13
        Caption = 'Pais:'
      end
      object senhapais: TDBText
        Left = 789
        Top = 71
        Width = 65
        Height = 17
        DataField = 'PASENHA'
        DataSource = DM.dsAlunos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label93: TLabel
        Left = 383
        Top = 64
        Width = 92
        Height = 13
        Caption = 'Tipo Sanguineo.'
      end
      object SpeedButton2: TSpeedButton
        Left = 859
        Top = 67
        Width = 23
        Height = 20
        Cursor = crHandPoint
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
          333333333337FF3333333333330003333333333333777F333333333333080333
          3333333F33777FF33F3333B33B000B33B3333373F777773F7333333BBB0B0BBB
          33333337737F7F77F333333BBB0F0BBB33333337337373F73F3333BBB0F7F0BB
          B333337F3737F73F7F3333BB0FB7BF0BB3333F737F37F37F73FFBBBB0BF7FB0B
          BBB3773F7F37337F377333BB0FBFBF0BB333337F73F333737F3333BBB0FBF0BB
          B3333373F73FF7337333333BBB000BBB33333337FF777337F333333BBBBBBBBB
          3333333773FF3F773F3333B33BBBBB33B33333733773773373333333333B3333
          333333333337F33333333333333B333333333333333733333333}
        NumGlyphs = 2
        OnClick = SpeedButton2Click
      end
      object lbl3: TLabel
        Left = 264
        Top = 106
        Width = 155
        Height = 65
        Caption = 
          'Estudante com deficiência,'#13#10'transtorno   global         de'#13#10'dese' +
          'nvolvimento,      altas'#13#10'habilidades ou superdota-'#13#10'ção.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object lbl4: TLabel
        Left = 747
        Top = 22
        Width = 121
        Height = 13
        Caption = 'Alteração de senhas:'
      end
      object lbl5: TLabel
        Left = 514
        Top = 362
        Width = 157
        Height = 39
        Caption = 
          'O estudante é optante  em '#13#10'cursar a disciplina   de Lin-'#13#10'gua  ' +
          ' estrangeira espanhol.'
        Visible = False
      end
      object lbl1: TLabel
        Left = 207
        Top = 361
        Width = 112
        Height = 13
        Caption = 'Quant. de parcelas.'
      end
      object Label30: TLabel
        Left = 51
        Top = 520
        Width = 103
        Height = 13
        Caption = 'Escola de origem:'
      end
      object Label96: TLabel
        Left = 16
        Top = 416
        Width = 138
        Height = 13
        Caption = 'Número da autorização:'
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 159
        Top = 227
        Width = 105
        Height = 29
        Columns = 2
        DataField = 'MATERIAL'
        DataSource = DM.dsAlunos
        Items.Strings = (
          'Sim'
          'Não')
        TabOrder = 21
        Values.Strings = (
          '1'
          '0')
      end
      object DBEdit21: TDBEdit
        Left = 159
        Top = 11
        Width = 74
        Height = 21
        DataField = 'DATA_MATRICULA'
        DataSource = DM.dsAlunos
        TabOrder = 0
      end
      object DBEdit22: TDBEdit
        Left = 159
        Top = 35
        Width = 20
        Height = 21
        DataField = 'BIMESTRE'
        DataSource = DM.dsAlunos
        TabOrder = 2
        OnExit = DBEdit22Exit
      end
      object DBESerie: TDBEdit
        Left = 159
        Top = 59
        Width = 20
        Height = 21
        DataField = 'SERIE'
        DataSource = DM.dsAlunos
        TabOrder = 3
        OnExit = DBESerieExit
      end
      object DBETurma: TDBEdit
        Left = 159
        Top = 82
        Width = 20
        Height = 21
        CharCase = ecUpperCase
        DataField = 'TURMA'
        DataSource = DM.dsAlunos
        TabOrder = 4
        OnExit = DBETurmaExit
      end
      object DBEdit26: TDBEdit
        Left = 159
        Top = 107
        Width = 33
        Height = 21
        DataField = 'CHAMADA'
        DataSource = DM.dsAlunos
        TabOrder = 7
      end
      object DBEdit28: TDBEdit
        Left = 159
        Top = 155
        Width = 74
        Height = 21
        DataField = 'DATA_SAIDA'
        DataSource = DM.dsAlunos
        TabOrder = 10
      end
      object DBEdit29: TDBEdit
        Left = 159
        Top = 179
        Width = 41
        Height = 21
        DataField = 'BOLSA'
        DataSource = DM.dsAlunos
        Enabled = False
        TabOrder = 11
      end
      object DBEdit30: TDBEdit
        Left = 159
        Top = 258
        Width = 308
        Height = 21
        CharCase = ecUpperCase
        DataField = 'SACADO'
        DataSource = DM.dsAlunos
        TabOrder = 13
      end
      object DBEdit33: TDBEdit
        Left = 303
        Top = 328
        Width = 36
        Height = 21
        DataField = 'VENCIMENTO'
        DataSource = DM.dsAlunos
        TabOrder = 18
      end
      object DBEdit34: TDBEdit
        Left = 159
        Top = 354
        Width = 41
        Height = 21
        DataField = 'ANO'
        DataSource = DM.dsAlunos
        Enabled = False
        TabOrder = 19
      end
      object DBEdit36: TDBEdit
        Left = 159
        Top = 330
        Width = 25
        Height = 21
        DataField = 'MES_MATERIAL'
        DataSource = DM.dsAlunos
        TabOrder = 17
        OnExit = DBEdit36Exit
      end
      object ComboStatus: TRxDBComboBox
        Left = 159
        Top = 131
        Width = 97
        Height = 21
        Style = csDropDownList
        DataField = 'STATUS'
        DataSource = DM.dsAlunos
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'Ativo'
          'Pré matricula'
          'Desistente'
          'Transferido'
          'Reclassificados'
          'Outros')
        TabOrder = 8
        Values.Strings = (
          'A'
          'P'
          'D'
          'T'
          'R'
          'O')
      end
      object GroupBox1: TGroupBox
        Left = 755
        Top = 95
        Width = 139
        Height = 466
        Caption = 'Documentos'
        TabOrder = 29
        object Label23: TLabel
          Left = 21
          Top = 416
          Width = 96
          Height = 13
          Caption = 'Data Documento'
          FocusControl = DBEdit1
          OnDblClick = Label46DblClick
        end
        object FichaOcorr: TBitBtn
          Left = 5
          Top = 18
          Width = 129
          Height = 25
          Cursor = crHandPoint
          Caption = 'Ficha/Ocorrência'
          TabOrder = 0
          OnClick = FichaOcorrClick
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
          Left = 5
          Top = 46
          Width = 129
          Height = 25
          Cursor = crHandPoint
          Caption = 'Contrato'
          TabOrder = 1
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
        object Requerimento: TBitBtn
          Left = 5
          Top = 74
          Width = 129
          Height = 25
          Cursor = crHandPoint
          Caption = 'Requerimento'
          TabOrder = 2
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
        object Recibo: TBitBtn
          Left = 5
          Top = 102
          Width = 129
          Height = 25
          Cursor = crHandPoint
          Caption = 'Boleto Matricula'
          TabOrder = 3
          OnClick = ReciboClick
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
        object DataDoc: TDateEdit
          Left = 21
          Top = 432
          Width = 97
          Height = 21
          DefaultToday = True
          NumGlyphs = 2
          TabOrder = 4
        end
        object IRDecl: TBitBtn
          Left = 5
          Top = 130
          Width = 129
          Height = 25
          Cursor = crHandPoint
          Caption = 'Declaração IR'
          TabOrder = 5
          OnClick = IRDeclClick
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
        object EtAvulsa: TBitBtn
          Left = 5
          Top = 158
          Width = 129
          Height = 25
          Cursor = crHandPoint
          Caption = 'Etiqueta Avulsa'
          TabOrder = 6
          OnClick = EtAvulsaClick
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
        object btntermo: TBitBtn
          Left = 8
          Top = 186
          Width = 126
          Height = 23
          Cursor = crHandPoint
          Caption = 'Termo'
          TabOrder = 7
          OnClick = btntermoClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            0400000000000001000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
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
        object btn1: TBitBtn
          Left = 8
          Top = 260
          Width = 124
          Height = 25
          Caption = 'Conectar'
          TabOrder = 8
          Visible = False
          OnClick = btn1Click
        end
        object btn2: TBitBtn
          Left = 8
          Top = 291
          Width = 121
          Height = 25
          Caption = 'Desconectar'
          TabOrder = 9
          Visible = False
          OnClick = btn2Click
        end
        object btn3: TBitBtn
          Left = 8
          Top = 321
          Width = 121
          Height = 25
          Caption = 'Cadastra aluno'
          TabOrder = 10
          Visible = False
          OnClick = btn3Click
        end
        object btn4: TBitBtn
          Left = 8
          Top = 350
          Width = 121
          Height = 25
          Caption = 'Cadastrar Digital'
          TabOrder = 11
          OnClick = btn4Click
        end
        object BtermoResp: TBitBtn
          Left = 8
          Top = 216
          Width = 126
          Height = 25
          Cursor = crHandPoint
          Caption = 'Term. Resp.'
          TabOrder = 12
          OnClick = BtermoRespClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            0400000000000001000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
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
      end
      object DBEdit23: TDBEdit
        Left = 321
        Top = 281
        Width = 149
        Height = 21
        DataField = 'SACADO_RG'
        DataSource = DM.dsAlunos
        TabOrder = 15
      end
      object ModEspCombo: TRxDBComboBox
        Left = 159
        Top = 305
        Width = 153
        Height = 21
        Style = csDropDownList
        DataField = 'MOD_ESPORTIVA'
        DataSource = DM.dsAlunos
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'Educação Física'
          'Natação'
          'Voleibol'
          'Handebol'
          'Fut-Sal'
          'Musculação'
          'Basquetebol'
          'Tênis de Mesa'
          'Xadrez'
          'Atletismo'
          'Dispensa Médica')
        TabOrder = 16
        Values.Strings = (
          'EDF'
          'NAT'
          'VOL'
          'HAN'
          'FTS'
          'MUS'
          'BAS'
          'TME'
          'XDZ'
          'ATL'
          'DME')
      end
      object DBEdit13: TDBEdit
        Left = 159
        Top = 207
        Width = 284
        Height = 21
        DataField = 'BOLSA_OBS'
        DataSource = DM.dsAlunos
        Enabled = False
        TabOrder = 12
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 257
        Top = 82
        Width = 78
        Height = 21
        DropDownCount = 8
        DataField = 'COR'
        DataSource = DM.dsAlunos
        DisplayEmpty = 'Cor'
        LookupField = 'CODIGO_COR'
        LookupDisplay = 'COR'
        LookupSource = DM.DsCores
        TabOrder = 5
      end
      object Bcores: TBitBtn
        Left = 340
        Top = 82
        Width = 34
        Height = 19
        TabOrder = 30
        OnClick = BcoresClick
        Glyph.Data = {
          E6000000424DE60000000000000076000000280000000F0000000E0000000100
          04000000000070000000130B0000130B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8880888888888888888088888888888888808888880008888880888888070888
          8880888888070888888088800007000088808880777777708880888000070000
          8880888888070888888088888807088888808888880008888880888888888888
          88808888888888888880}
      end
      object DBRadioGroup2: TDBRadioGroup
        Left = 266
        Top = 170
        Width = 156
        Height = 32
        Columns = 2
        DataField = 'EDU_ESPECIAL'
        DataSource = DM.dsAlunos
        Items.Strings = (
          'Sim'
          'Não')
        TabOrder = 9
        Values.Strings = (
          'S'
          'N')
      end
      object DBDateEdit1: TDBDateEdit
        Left = 348
        Top = 8
        Width = 97
        Height = 21
        DataField = 'DATA_IGRESSO'
        DataSource = DM.dsAlunos
        NumGlyphs = 2
        TabOrder = 1
      end
      object DBRadioGroup3: TDBRadioGroup
        Left = 562
        Top = 76
        Width = 113
        Height = 49
        Caption = 'Tipo de Certidão'
        DataField = 'TIPOCERTIDAO'
        DataSource = DM.dsAlunos
        Items.Strings = (
          'Nascimento'
          'Casamento')
        TabOrder = 22
        Values.Strings = (
          '1'
          '2')
      end
      object DBEdit46: TDBEdit
        Left = 562
        Top = 147
        Width = 121
        Height = 21
        DataField = 'NUMERO_TERMO'
        DataSource = DM.dsAlunos
        TabOrder = 23
      end
      object DBEdit47: TDBEdit
        Left = 563
        Top = 186
        Width = 121
        Height = 21
        DataField = 'FOLHA'
        DataSource = DM.dsAlunos
        TabOrder = 24
      end
      object DBEdit48: TDBEdit
        Left = 563
        Top = 223
        Width = 121
        Height = 21
        DataField = 'LIVRO'
        DataSource = DM.dsAlunos
        TabOrder = 25
      end
      object DBDateEdit3: TDBDateEdit
        Left = 562
        Top = 256
        Width = 121
        Height = 21
        DataField = 'DATA_EMI_CERT'
        DataSource = DM.dsAlunos
        NumGlyphs = 2
        TabOrder = 26
      end
      object DBEdit49: TDBEdit
        Left = 564
        Top = 330
        Width = 145
        Height = 21
        DataField = 'NOME_CART_EXP'
        DataSource = DM.dsAlunos
        TabOrder = 28
      end
      object UFCartorio: TRxDBLookupCombo
        Left = 562
        Top = 293
        Width = 40
        Height = 21
        DropDownCount = 8
        DataField = 'UFCARTORIO'
        DataSource = DM.dsAlunos
        DisplayEmpty = 'UF'
        LookupField = 'COD_MUNICIPIO'
        LookupDisplay = 'UF'
        LookupSource = DM.dsMunicipio
        TabOrder = 27
      end
      object Button2: TButton
        Left = 758
        Top = 473
        Width = 129
        Height = 27
        Cursor = crHandPoint
        Caption = 'Relação Senha dos pais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 31
        OnClick = Button2Click
      end
      object tiposanguineo: TRxDBLookupCombo
        Left = 383
        Top = 81
        Width = 49
        Height = 21
        DropDownCount = 8
        DataField = 'TIPOSANGUINEO'
        DataSource = DM.dsAlunos
        LookupField = 'ID_SANGUE'
        LookupDisplay = 'SANGUE'
        LookupSource = DM.dstiposanguineo
        TabOrder = 6
      end
      object situacao: TDBRadioGroup
        Left = 155
        Top = 375
        Width = 185
        Height = 33
        Caption = 'Situação'
        Columns = 2
        DataField = 'SITUACAO'
        DataSource = DM.dsAlunos
        Items.Strings = (
          'Transferido'
          'Normal')
        TabOrder = 32
        Values.Strings = (
          'B'
          'A')
      end
      object DBRadioGroup4: TDBRadioGroup
        Left = 519
        Top = 402
        Width = 159
        Height = 32
        Columns = 2
        DataField = 'OPCAO_ESPANHOL'
        DataSource = DM.dsAlunos
        Items.Strings = (
          'Sim'
          'Não')
        TabOrder = 33
        Values.Strings = (
          'S'
          'N')
        Visible = False
      end
      object dbedtCPF: TDBEdit
        Left = 159
        Top = 281
        Width = 121
        Height = 21
        DataField = 'SACADO_CPF'
        DataSource = DM.dsAlunos
        TabOrder = 14
      end
      object dbedtPAR_FINAL: TDBEdit
        Left = 320
        Top = 354
        Width = 31
        Height = 21
        DataField = 'PAR_FINAL'
        DataSource = DM.dsAlunos
        TabOrder = 20
      end
      object RxDBLookupCombo5: TRxDBLookupCombo
        Left = 156
        Top = 512
        Width = 321
        Height = 21
        DropDownCount = 10
        DataField = 'ORIUNDO_ESCOLA'
        DataSource = DM.dsAlunos
        DisplayEmpty = '<< Selecione uma escola de origem. >>'
        LookupField = 'ID_ESCOLA'
        LookupDisplay = 'ESCOLA'
        LookupSource = DM2.DsEscola
        TabOrder = 34
      end
      object Button3: TButton
        Left = 544
        Top = 460
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = 'Escola'
        TabOrder = 35
        OnClick = Button3Click
      end
      object BitBtn8: TBitBtn
        Left = 156
        Top = 413
        Width = 181
        Height = 25
        Cursor = crHandPoint
        Caption = 'Dados do cartão'
        TabOrder = 36
        OnClick = BitBtn8Click
      end
      object DBRadioGroup6: TDBRadioGroup
        Left = 157
        Top = 443
        Width = 180
        Height = 63
        Caption = 'Intinerário:'
        DataField = 'INTINERARIO'
        DataSource = DM.dsAlunos
        Items.Strings = (
          'Núcleo 1'
          'Núcleo 2')
        TabOrder = 37
        Values.Strings = (
          '1'
          '2')
      end
    end
    object Tab3: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 2
      object Shape1: TShape
        Left = 776
        Top = 369
        Width = 161
        Height = 120
      end
      object Label108: TLabel
        Left = 784
        Top = 372
        Width = 98
        Height = 13
        Caption = 'Legenda Boletos.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsUnderline]
        ParentFont = False
        Transparent = True
      end
      object Label109: TLabel
        Left = 784
        Top = 388
        Width = 145
        Height = 13
        Caption = '1 - Gerar ou reprocessar.'
        Transparent = True
      end
      object Label110: TLabel
        Left = 784
        Top = 406
        Width = 102
        Height = 13
        Caption = '2 - Bolsa integral.'
        Transparent = True
      end
      object Label111: TLabel
        Left = 784
        Top = 423
        Width = 130
        Height = 13
        Caption = '3 - Negociado integral.'
        Transparent = True
      end
      object Label112: TLabel
        Left = 784
        Top = 441
        Width = 143
        Height = 13
        Caption = '9 - Somente a matrícula.'
        Transparent = True
      end
      object Label113: TLabel
        Left = 784
        Top = 458
        Width = 96
        Height = 13
        Caption = '10 - Processado.'
        Transparent = True
      end
      object DBGrid1: TDBGrid
        Left = 73
        Top = 48
        Width = 696
        Height = 449
        DataSource = DM.dsAlunos
        Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Caption = 'Código'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Width = 421
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BLOQUETO_1SEM'
            Title.Alignment = taCenter
            Title.Caption = 'Situação'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BLOQUETO_2SEM'
            Title.Caption = 'B2'
            Visible = False
          end>
      end
      object BitBtn4: TBitBtn
        Left = 517
        Top = 572
        Width = 217
        Height = 19
        Caption = 'Gerar boletos(coletivo)'
        Enabled = False
        TabOrder = 2
        Visible = False
        OnClick = BitBtn4Click
      end
      object Panel1: TPanel
        Left = 75
        Top = 4
        Width = 590
        Height = 33
        BevelOuter = bvNone
        Color = clGray
        TabOrder = 0
        object Label35: TLabel
          Left = 6
          Top = 8
          Width = 49
          Height = 13
          Caption = 'Código :'
        end
        object Label36: TLabel
          Left = 201
          Top = 8
          Width = 42
          Height = 13
          Caption = 'Nome :'
        end
        object Nome: TEdit
          Left = 249
          Top = 5
          Width = 241
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          OnChange = NomeChange
        end
        object Pesquisa: TBitBtn
          Left = 498
          Top = 6
          Width = 71
          Height = 20
          Caption = 'Pesquisa'
          TabOrder = 2
          OnClick = PesquisaClick
        end
        object Codigo: TCurrencyEdit
          Left = 60
          Top = 5
          Width = 57
          Height = 21
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '0;- 0'
          TabOrder = 0
          OnChange = CodigoChange
        end
      end
      object EtiqSP: TBitBtn
        Left = 85
        Top = 506
        Width = 116
        Height = 19
        Caption = 'Imprime Etiq SP'
        TabOrder = 3
        Glyph.Data = {
          76030000424D7603000000000000360000002800000011000000100000000100
          18000000000040030000C30E0000C30E00000000000000000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000000000000000000000
          00000000000000BFBFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBF7F0000BFBFBF
          BFBFBFBFBFBF000000000000000000000000000000000000000000000000BFBF
          BF00BFBFBFBFBFBFBFBFBFBFBFBF7F00007F0000BFBFBFBFBFBF000000007F7F
          007F7F007F7F007F7F007F7F00000000000000000000BFBFBF7F00007F00007F
          00007F00007F00007F0000BFBFBF000000000000000000000000000000000000
          000000007F7F00000000BFBFBFBFBFBFBFBFBFBFBFBF7F00007F0000BFBFBFBF
          BFBF000000FFFFFFBFBFBFFFFFFFBFBFBFFFFFFFBFBFBF00000000000000BFBF
          BFBFBFBFBFBFBFBFBFBF7F0000BFBFBFBFBFBFBFBFBF00000000000000000000
          0000000000000000BFBFBF7F7F7F00000000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF00000000
          0000BFBFBF00BFBFBFBFBFBFBFBFBF000000000000000000000000000000BFBF
          BF000000FFFFFF7F7F7F7F7F7FFFFFFF000000BFBFBFBFBFBF00BFBFBFBFBFBF
          BFBFBF000000FFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF000000FFFFFFFFFF
          FFFFFFFFFFFFFF000000BFBFBF00BFBFBF000000000000000000000000000000
          FFFFFF000000BFBFBFBFBFBFBFBFBF000000000000000000000000000000BFBF
          BF00BFBFBF000000FFFFFFFFFFFFFFFFFF000000FFFFFF000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBF000000FFFFFF7F
          7F7FFFFFFF000000000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBF00BFBFBF000000FFFFFF7F7F7FFFFFFF000000000000BF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBF
          BF000000FFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBF0000000000000000000000
          00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00}
      end
      object BitBtn2: TBitBtn
        Left = 205
        Top = 506
        Width = 180
        Height = 20
        Cursor = crHandPoint
        Caption = 'Gera Arquivo para INEP'
        TabOrder = 4
        Visible = False
        OnClick = BitBtn2Click
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADADADADADADDADA4A4A4A4A4ADAADAD4DADADADADADDAD444DADADA
          4ADAADAD4DADADADADADDADADADADADA4ADAAD000000AD000000000FBFB0000F
          BFB00F0000000F0000000FFFFF0A0FFFFF0A0F777F0D0F777F0D0FFFFF0A0FFF
          FF0A0F777F0D0F777F0D0FFFFF0A0FFFFF0A0000000D0000000D}
      end
      object BitBtn7: TBitBtn
        Left = 528
        Top = 517
        Width = 213
        Height = 17
        Cursor = crHandPoint
        Caption = 'Reprocessa Bloqueto(Parcela)'
        TabOrder = 5
        Visible = False
        OnClick = BitBtn7Click
      end
    end
    object Tab4: TTabSheet
      Caption = 'Situação Financeira'
      ImageIndex = 3
      OnShow = Tab4Show
      object Label37: TLabel
        Left = 128
        Top = 40
        Width = 42
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome :'
        FocusControl = DBEdit2
      end
      object Label38: TLabel
        Left = 121
        Top = 16
        Width = 49
        Height = 13
        Alignment = taRightJustify
        Caption = 'Código :'
        FocusControl = DBEdit1
      end
      object DBText1: TDBText
        Left = 176
        Top = 16
        Width = 54
        Height = 13
        AutoSize = True
        DataField = 'CODIGO'
        DataSource = DM.dsAlunos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 176
        Top = 40
        Width = 54
        Height = 13
        AutoSize = True
        DataField = 'NOME'
        DataSource = DM.dsAlunos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label43: TLabel
        Left = 82
        Top = 64
        Width = 88
        Height = 13
        Alignment = taRightJustify
        Caption = 'Série / Turma :'
        FocusControl = DBEdit2
      end
      object DBText3: TDBText
        Left = 176
        Top = 64
        Width = 54
        Height = 13
        AutoSize = True
        DataField = 'SerieX'
        DataSource = DM.dsAlunos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label55: TLabel
        Left = 81
        Top = 528
        Width = 59
        Height = 13
        Alignment = taRightJustify
        Caption = 'Pesquisa :'
      end
      object RxDBGrid1: TRxDBGrid
        Left = 48
        Top = 88
        Width = 857
        Height = 401
        Cursor = crHandPoint
        DataSource = DM.dsBloquetosQ
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        OnDrawColumnCell = RxDBGrid1DrawColumnCell
        OnDblClick = RxDBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'NossoNum'
            Title.Alignment = taCenter
            Title.Caption = 'Nosso Nº'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PARCELA'
            Title.Alignment = taCenter
            Title.Caption = 'Parc'
            Width = 41
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VENCIMENTO'
            Title.Alignment = taCenter
            Title.Caption = 'Vencimento'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Title.Alignment = taCenter
            Title.Caption = 'Valor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCONTO'
            Title.Alignment = taCenter
            Title.Caption = 'Desconto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_LIMITE'
            Title.Caption = 'Dt. Limite'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_PAGO'
            Title.Alignment = taCenter
            Title.Caption = 'Valor PG.'
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_ANT'
            Title.Alignment = taCenter
            Title.Caption = 'Valor-Desc.'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PAGAMENTO'
            Title.Alignment = taCenter
            Title.Caption = 'Dt.Pgto'
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tipo_Pg_X'
            Title.Caption = 'Local Pagto'
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ST'
            Title.Alignment = taCenter
            Title.Caption = 'Situação'
            Visible = True
          end>
      end
      object PesqAluno2: TRxDBLookupCombo
        Left = 146
        Top = 522
        Width = 330
        Height = 21
        DropDownCount = 25
        DisplayEmpty = 'Pesquisa por Nome'
        EmptyValue = '0'
        EmptyItemColor = clSilver
        LookupField = 'CODIGO'
        LookupDisplay = 'NOME'
        LookupSource = DM.dsAlunos
        TabOrder = 1
        OnChange = PesqAluno2Change
      end
      object Reprocessa: TBitBtn
        Left = 776
        Top = 496
        Width = 131
        Height = 27
        Cursor = crHandPoint
        Caption = 'Reprocessa Boletos'
        TabOrder = 2
        OnClick = ReprocessaClick
      end
    end
    object Tab5: TTabSheet
      Caption = 'Turmas'
      ImageIndex = 4
      OnExit = Tab5Exit
      OnShow = Tab5Show
      object Label50: TLabel
        Left = 53
        Top = 19
        Width = 45
        Height = 13
        Alignment = taRightJustify
        Caption = 'Turma :'
      end
      object Label34: TLabel
        Left = 687
        Top = 370
        Width = 72
        Height = 24
        Alignment = taCenter
        Caption = 'Clique na foto '#13#10'para ampliar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object RxDBGrid2: TRxDBGrid
        Left = 46
        Top = 52
        Width = 612
        Height = 334
        DataSource = DM.dsAlunosT
        Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        OnCellClick = RxDBGrid2CellClick
        OnColEnter = RxDBGrid2ColEnter
        OnColumnMoved = RxDBGrid2ColumnMoved
        OnDragDrop = RxDBGrid2DragDrop
        OnEnter = RxDBGrid2Enter
        OnExit = RxDBGrid2Exit
        OnKeyDown = RxDBGrid2KeyDown
        OnKeyPress = RxDBGrid2KeyPress
        OnKeyUp = RxDBGrid2KeyUp
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            ReadOnly = True
            Title.Caption = 'Código'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHAMADA'
            Title.Alignment = taCenter
            Title.Caption = 'Nº'
            Width = 36
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            ReadOnly = True
            Title.Caption = 'Nome'
            Width = 389
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_MATRICULA'
            ReadOnly = True
            Title.Caption = 'Matrícula'
            Visible = True
          end>
      end
      object Turma2: TRxDBLookupCombo
        Left = 104
        Top = 14
        Width = 225
        Height = 21
        DropDownCount = 15
        DisplayAllFields = True
        DisplayEmpty = '<< Selecione a Turma >>'
        EmptyItemColor = clMenu
        LookupField = 'Nome'
        LookupDisplay = 'Nome'
        LookupSource = DM.dsTurmas
        TabOrder = 0
        OnChange = Turma2Change
      end
      object Atualiza: TBitBtn
        Left = 535
        Top = 12
        Width = 104
        Height = 25
        Caption = '&Atualiza'
        TabOrder = 1
        OnClick = AtualizaClick
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
          33333333333F8888883F33330000324334222222443333388F3833333388F333
          000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
          F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
          223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
          3338888300003AAAAAAA33333333333888888833333333330000333333333333
          333333333333333333FFFFFF000033333333333344444433FFFF333333888888
          00003A444333333A22222438888F333338F3333800003A2243333333A2222438
          F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
          22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
          33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
          3333333333338888883333330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
      object Panel4: TPanel
        Left = 677
        Top = 250
        Width = 90
        Height = 120
        BevelWidth = 5
        TabOrder = 3
        object ImageT: TImage
          Left = 5
          Top = 5
          Width = 80
          Height = 110
          Align = alClient
          Stretch = True
          OnClick = ImageTClick
        end
      end
    end
    object Tab6: TTabSheet
      Caption = 'Histórico/Transferência'
      ImageIndex = 5
      OnShow = Tab6Show
      object Bevel1: TBevel
        Left = 444
        Top = 48
        Width = 81
        Height = 15
      end
      object Label52: TLabel
        Left = 136
        Top = 0
        Width = 88
        Height = 13
        Alignment = taRightJustify
        Caption = 'Série / Turma :'
        FocusControl = DBEdit2
      end
      object DBText7: TDBText
        Left = 230
        Top = 0
        Width = 54
        Height = 13
        AutoSize = True
        DataField = 'SerieX'
        DataSource = DM.dsAlunos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label54: TLabel
        Left = 7
        Top = 0
        Width = 49
        Height = 13
        Alignment = taRightJustify
        Caption = 'Código :'
        FocusControl = DBEdit1
      end
      object DBText9: TDBText
        Left = 62
        Top = 0
        Width = 54
        Height = 13
        AutoSize = True
        DataField = 'CODIGO'
        DataSource = DM.dsAlunos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText10: TDBText
        Left = 62
        Top = 13
        Width = 259
        Height = 13
        DataField = 'NOME'
        DataSource = DM.dsAlunos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label28: TLabel
        Left = 106
        Top = 334
        Width = 86
        Height = 13
        Alignment = taRightJustify
        Caption = 'Obs.Histórico'
        FocusControl = DBMemo1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label59: TLabel
        Left = 172
        Top = 261
        Width = 25
        Height = 13
        Caption = 'Ano'
        FocusControl = DBEdit24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label63: TLabel
        Left = 107
        Top = 279
        Width = 53
        Height = 13
        Caption = '1ª Série'
        FocusControl = DBEdit24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label60: TLabel
        Left = 211
        Top = 261
        Width = 42
        Height = 13
        Caption = 'Escola'
        FocusControl = DBEdit24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label61: TLabel
        Left = 485
        Top = 260
        Width = 44
        Height = 13
        Caption = 'Cidade'
        FocusControl = DBEdit24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label62: TLabel
        Left = 691
        Top = 260
        Width = 17
        Height = 13
        Caption = 'UF'
        FocusControl = DBEdit24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label64: TLabel
        Left = 107
        Top = 299
        Width = 53
        Height = 13
        Caption = '2ª Série'
        FocusControl = DBEdit35
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label65: TLabel
        Left = 107
        Top = 319
        Width = 53
        Height = 13
        Caption = '3ª Série'
        FocusControl = DBEdit40
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label66: TLabel
        Left = 381
        Top = 6
        Width = 36
        Height = 13
        Alignment = taRightJustify
        Caption = 'Data :'
        FocusControl = DBEdit1
        OnDblClick = Label46DblClick
      end
      object Label67: TLabel
        Left = 461
        Top = 50
        Width = 53
        Height = 13
        Caption = '1ª Série'
        FocusControl = DBEdit24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Bevel2: TBevel
        Left = 525
        Top = 48
        Width = 83
        Height = 15
      end
      object Bevel3: TBevel
        Left = 609
        Top = 48
        Width = 85
        Height = 15
      end
      object Label68: TLabel
        Left = 540
        Top = 50
        Width = 53
        Height = 13
        Caption = '2ª Série'
        FocusControl = DBEdit24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label69: TLabel
        Left = 622
        Top = 50
        Width = 53
        Height = 13
        Caption = '3ª Série'
        FocusControl = DBEdit24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label57: TLabel
        Left = 14
        Top = 13
        Width = 42
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome :'
        FocusControl = DBEdit2
      end
      object Label74: TLabel
        Left = 298
        Top = 237
        Width = 131
        Height = 13
        Caption = 'Resultado Final..........:'
      end
      object RadioGroup1: TRadioGroup
        Left = 117
        Top = 31
        Width = 310
        Height = 30
        Caption = 'Tipo documento'
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'Histórico'
          'Transferencia'
          'Certificado')
        TabOrder = 16
      end
      object RxDBGrid3: TRxDBGrid
        Left = 116
        Top = 64
        Width = 606
        Height = 169
        DataSource = DM.dsHistNotas
        Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        OnKeyPress = RxDBGrid3KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'DisciplinaX'
            Title.Caption = 'Disciplina'
            Width = 314
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOTA1'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CH1'
            Title.Alignment = taCenter
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOTA2'
            Title.Alignment = taCenter
            Width = 38
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CH2'
            Title.Alignment = taCenter
            Width = 41
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOTA3'
            Title.Alignment = taCenter
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CH3'
            Title.Alignment = taCenter
            Width = 40
            Visible = True
          end>
      end
      object DBMemo1: TDBMemo
        Left = 105
        Top = 350
        Width = 608
        Height = 72
        DataField = 'OBS_HIST'
        DataSource = DM.dsAlunos
        TabOrder = 13
      end
      object DBEdit24: TDBEdit
        Left = 163
        Top = 274
        Width = 40
        Height = 21
        DataField = 'H_ANO1'
        DataSource = DM.dsAlunos
        TabOrder = 1
      end
      object DBEdit25: TDBEdit
        Left = 208
        Top = 274
        Width = 269
        Height = 21
        DataField = 'H_ESCOLA1'
        DataSource = DM.dsAlunos
        TabOrder = 2
      end
      object DBEdit27: TDBEdit
        Left = 483
        Top = 274
        Width = 179
        Height = 21
        DataField = 'H_CIDADE1'
        DataSource = DM.dsAlunos
        TabOrder = 3
      end
      object DBEdit32: TDBEdit
        Left = 688
        Top = 274
        Width = 25
        Height = 21
        DataField = 'H_UF1'
        DataSource = DM.dsAlunos
        TabOrder = 4
      end
      object DBEdit35: TDBEdit
        Left = 163
        Top = 293
        Width = 40
        Height = 21
        DataField = 'H_ANO2'
        DataSource = DM.dsAlunos
        TabOrder = 5
      end
      object DBEdit37: TDBEdit
        Left = 208
        Top = 293
        Width = 269
        Height = 21
        DataField = 'H_ESCOLA2'
        DataSource = DM.dsAlunos
        TabOrder = 6
      end
      object DBEdit38: TDBEdit
        Left = 483
        Top = 293
        Width = 179
        Height = 21
        DataField = 'H_CIDADE2'
        DataSource = DM.dsAlunos
        TabOrder = 7
      end
      object DBEdit39: TDBEdit
        Left = 688
        Top = 293
        Width = 25
        Height = 21
        DataField = 'H_UF2'
        DataSource = DM.dsAlunos
        TabOrder = 8
      end
      object DBEdit40: TDBEdit
        Left = 163
        Top = 313
        Width = 40
        Height = 21
        DataField = 'H_ANO3'
        DataSource = DM.dsAlunos
        TabOrder = 9
      end
      object DBEdit41: TDBEdit
        Left = 208
        Top = 313
        Width = 269
        Height = 21
        DataField = 'H_ESCOLA3'
        DataSource = DM.dsAlunos
        TabOrder = 10
      end
      object DBEdit42: TDBEdit
        Left = 483
        Top = 313
        Width = 179
        Height = 21
        DataField = 'H_CIDADE3'
        DataSource = DM.dsAlunos
        TabOrder = 11
      end
      object DBEdit43: TDBEdit
        Left = 688
        Top = 313
        Width = 25
        Height = 21
        DataField = 'H_UF3'
        DataSource = DM.dsAlunos
        TabOrder = 12
      end
      object ImpHistorico: TBitBtn
        Left = 529
        Top = 0
        Width = 102
        Height = 25
        Caption = 'Imprime'
        TabOrder = 14
        OnClick = ImpHistoricoClick
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
      object DataHist: TDateEdit
        Left = 423
        Top = 2
        Width = 97
        Height = 21
        DefaultToday = True
        NumGlyphs = 2
        TabOrder = 15
      end
      object RadioGroup2: TRadioGroup
        Left = 2
        Top = 59
        Width = 110
        Height = 150
        Caption = 'Resultado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ItemIndex = 0
        Items.Strings = (
          'Aprovado'
          'Reprovado(a)'
          'Cursando'
          'Desistente'
          'Anexo'
          'Matriculado(a)')
        ParentFont = False
        TabOrder = 17
      end
      object Button1: TButton
        Left = 115
        Top = 240
        Width = 75
        Height = 17
        Cursor = crHandPoint
        Caption = 'Puxa Notas'
        TabOrder = 18
        OnClick = Button1Click
      end
      object CheckBox1: TCheckBox
        Left = 444
        Top = 29
        Width = 78
        Height = 17
        Caption = 'Mensão 1'
        TabOrder = 19
      end
      object CheckBox2: TCheckBox
        Left = 526
        Top = 30
        Width = 78
        Height = 17
        Caption = 'Mensão 2'
        TabOrder = 20
      end
      object CheckBox3: TCheckBox
        Left = 608
        Top = 30
        Width = 78
        Height = 17
        Caption = 'Mensão 3'
        TabOrder = 21
      end
      object Resultado1: TComboBox
        Left = 433
        Top = 237
        Width = 96
        Height = 21
        ItemHeight = 13
        TabOrder = 22
        Text = '<<Resultado>>'
        Items.Strings = (
          ''
          'Aprovado'
          'Reprovado'
          'Cursando'
          'Matriculado')
      end
      object Resultado2: TComboBox
        Left = 530
        Top = 237
        Width = 92
        Height = 21
        ItemHeight = 13
        TabOrder = 23
        Text = '<<Resultado>>'
        Items.Strings = (
          ''
          'Aprovado'
          'Reprovado'
          'Cursando'
          'Matriculado')
      end
      object Resultado3: TComboBox
        Left = 626
        Top = 237
        Width = 94
        Height = 21
        ItemHeight = 13
        TabOrder = 24
        Text = '<<Resultado>>'
        Items.Strings = (
          ''
          'Aprovado'
          'Reprovado'
          'Cursando'
          'Matriculado')
      end
    end
    object Tab8: TTabSheet
      Caption = 'Boletos avulsos'
      ImageIndex = 7
      object Label101: TLabel
        Left = 24
        Top = 24
        Width = 387
        Height = 29
        Caption = 'Geração de boletos diversos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label102: TLabel
        Left = 64
        Top = 120
        Width = 91
        Height = 13
        Caption = 'Valor do boleto:'
      end
      object Label103: TLabel
        Left = 24
        Top = 72
        Width = 91
        Height = 13
        Caption = 'Nome do aluno:'
      end
      object Label104: TLabel
        Left = 22
        Top = 152
        Width = 133
        Height = 13
        Caption = 'Quantidade de boletos:'
      end
      object Label105: TLabel
        Left = 7
        Top = 186
        Width = 148
        Height = 13
        Caption = 'Data da primeira parcela:'
      end
      object Label106: TLabel
        Left = 53
        Top = 222
        Width = 102
        Height = 13
        Caption = 'Dias decorrentes:'
      end
      object DBText12: TDBText
        Left = 168
        Top = 67
        Width = 513
        Height = 17
        DataField = 'NOME'
        DataSource = DM.dsAlunos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label107: TLabel
        Left = 88
        Top = 251
        Width = 64
        Height = 13
        Caption = 'Anotações:'
      end
      object DBEdit31: TDBEdit
        Left = 168
        Top = 112
        Width = 121
        Height = 21
        DataField = 'VALOR'
        DataSource = DM.DsNegociacao
        Enabled = False
        TabOrder = 0
      end
      object DBEdit53: TDBEdit
        Left = 168
        Top = 144
        Width = 121
        Height = 21
        DataField = 'QUANT'
        DataSource = DM.DsNegociacao
        Enabled = False
        TabOrder = 1
      end
      object DBDateEdit4: TDBDateEdit
        Left = 168
        Top = 178
        Width = 121
        Height = 21
        DataField = 'DATA'
        DataSource = DM.DsNegociacao
        Enabled = False
        NumGlyphs = 2
        TabOrder = 2
      end
      object DBEdit54: TDBEdit
        Left = 168
        Top = 214
        Width = 121
        Height = 21
        DataField = 'DIAS'
        DataSource = DM.DsNegociacao
        Enabled = False
        TabOrder = 3
      end
      object Button4: TButton
        Left = 168
        Top = 349
        Width = 145
        Height = 23
        Cursor = crHandPoint
        Caption = 'Inserir'
        TabOrder = 4
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 319
        Top = 349
        Width = 145
        Height = 23
        Cursor = crHandPoint
        Caption = 'Salvar'
        Enabled = False
        TabOrder = 5
        OnClick = Button5Click
      end
      object Button6: TButton
        Left = 472
        Top = 349
        Width = 145
        Height = 23
        Cursor = crHandPoint
        Caption = 'Gerar Boletos'
        Enabled = False
        TabOrder = 6
        OnClick = Button6Click
      end
      object DBMemo2: TDBMemo
        Left = 168
        Top = 248
        Width = 601
        Height = 89
        DataField = 'ANOTACAO'
        DataSource = DM.DsNegociacao
        TabOrder = 8
      end
      object Button7: TButton
        Left = 624
        Top = 348
        Width = 145
        Height = 23
        Caption = 'Cancelar'
        Enabled = False
        TabOrder = 7
        OnClick = Button7Click
      end
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 91
    Top = 585
    Width = 256
    Height = 25
    DataSource = DM.dsAlunos
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel]
    Hints.Strings = (
      'Primeiro'
      'Anterior'
      'Próximo'
      'Último'
      'Inserir'
      'Apagar'
      'Alterar'
      'Gravar'
      'Cancelar'
      'Atualizar')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = DBNavigator1Click
  end
  object BitBtn1: TBitBtn
    Left = 790
    Top = 597
    Width = 129
    Height = 25
    Cursor = crHandPoint
    Caption = '&Fecha'
    TabOrder = 0
    Kind = bkClose
    Layout = blGlyphRight
  end
  object Filtro: TRxSwitch
    Left = 542
    Top = 596
    Width = 39
    Height = 56
    Caption = 'Filtro'
    GlyphOn.Data = {
      36180000424D3618000000000000360000002800000020000000300000000100
      2000000000000018000000000000000000000000000000000000FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF000000000000000000808080808080
      8000808080808080800080808080808080008080808080808000808080808080
      8000808080808080800080808080808080008080808080808000000000000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF000000008080808000808080808080
      8000808080808080800080808080808080008080808080808000808080808080
      8000808080808080800080808080808080008080800000000000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000008080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF00000000FFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF000000008080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF00000000FFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF000000008080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF00000000FFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF000000008080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF00000000FFFFFFFF00FFFFFFFFFFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000FFFFFFFF00FFFFFFFFFFFFFF000000008080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF00000000FFFFFFFF00FFFFFFFFFFFF
      FF00000000000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000FFFFFFFF00FFFFFFFFFFFFFF000000008080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF00000000FFFFFFFF00FFFFFFFFFFFF
      FF00000000000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000FFFFFFFF00FFFFFFFFFFFFFF000000008080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF00000000FFFFFFFF00FFFFFFFFFFFF
      FF00000000000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000FFFFFFFF00FFFFFFFFFFFFFF000000008080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF00000000FFFFFFFF00FFFFFFFFFFFF
      FF00000000000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000FFFFFFFF00FFFFFFFFFFFFFF000000008080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF00000000FFFFFFFF00FFFFFFFFFFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000FFFFFFFF00FFFFFFFFFFFFFF000000008080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF00000000FFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF000000008080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF00000000FFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF000000008080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF00000000FFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF000000008080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000008080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF00000000FFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF000000008080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF00000000FFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF000000008080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF000000000000000000FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFF00000000008080808080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF000000000000000000FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFF00000000008080808080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF0000000080808080008080808080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF0000000080808080008080808080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FF0000000000FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFF000000000080808080808080008080808080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FF0000000000FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFF000000000080808080808080008080808080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00000000FFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00000000808080800080808080808080008080808080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000808080800080808080808080008080808080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00000000FFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00000000808080800080808080808080008080808080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FF0000000000FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFF000000000080808080808080008080808080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF0000000080808080008080808080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF000000000000000000FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFF00000000008080808080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF00000000FFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF000000008080808000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF000000000000000000FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFF0000000000808080000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00000000FFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFF
      FF00FFFFFF0000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00
      FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFFFF00FF00}
    TabOrder = 3
    TextPosition = tpAbove
    OnOff = FiltroOff
    Data = {02}
  end
  object Ordem: TRadioGroup
    Left = 440
    Top = 595
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
      'p/ Código'
      'p/ Nome')
    ParentFont = False
    TabOrder = 4
    OnClick = OrdemClick
  end
  object BitBtn5: TBitBtn
    Left = 791
    Top = 622
    Width = 128
    Height = 24
    Caption = 'Gerar senha pais'
    Enabled = False
    TabOrder = 5
    Visible = False
    OnClick = BitBtn5Click
  end
  object dsAluOrig: TDataSource
    DataSet = AluOrig
    Left = 616
    Top = 600
  end
  object AluOrig: TTable
    TableName = 'C:\sistemas\anglo\2000\scaaluno.dbf'
    Left = 664
    Top = 600
    object AluOrigALU_COD: TFloatField
      FieldName = 'ALU_COD'
    end
    object AluOrigALU_NOME: TStringField
      FieldName = 'ALU_NOME'
      Size = 50
    end
    object AluOrigALU_NOMEX: TStringField
      FieldName = 'ALU_NOMEX'
      Size = 50
    end
    object AluOrigALU_RUA: TStringField
      FieldName = 'ALU_RUA'
      Size = 30
    end
    object AluOrigALU_NUMERO: TFloatField
      FieldName = 'ALU_NUMERO'
    end
    object AluOrigALU_BAIRRO: TStringField
      FieldName = 'ALU_BAIRRO'
    end
    object AluOrigALU_COMPLE: TStringField
      FieldName = 'ALU_COMPLE'
    end
    object AluOrigALU_CIDADE: TStringField
      FieldName = 'ALU_CIDADE'
      Size = 25
    end
    object AluOrigALU_ESTADO: TStringField
      FieldName = 'ALU_ESTADO'
      Size = 2
    end
    object AluOrigALU_CEP: TStringField
      FieldName = 'ALU_CEP'
      Size = 8
    end
    object AluOrigALU_RG: TStringField
      FieldName = 'ALU_RG'
      Size = 15
    end
    object AluOrigALU_DTNASC: TDateField
      FieldName = 'ALU_DTNASC'
    end
    object AluOrigALU_CDNASC: TStringField
      FieldName = 'ALU_CDNASC'
      Size = 25
    end
    object AluOrigALU_UFNASC: TStringField
      FieldName = 'ALU_UFNASC'
      Size = 2
    end
    object AluOrigALU_SEXO: TStringField
      FieldName = 'ALU_SEXO'
      Size = 1
    end
    object AluOrigALU_PAI: TStringField
      FieldName = 'ALU_PAI'
      Size = 50
    end
    object AluOrigALU_PAIPRO: TStringField
      FieldName = 'ALU_PAIPRO'
    end
    object AluOrigALU_PAIDTN: TDateField
      FieldName = 'ALU_PAIDTN'
    end
    object AluOrigALU_MAE: TStringField
      FieldName = 'ALU_MAE'
      Size = 50
    end
    object AluOrigALU_MAEPRO: TStringField
      FieldName = 'ALU_MAEPRO'
    end
    object AluOrigALU_MAEDTN: TDateField
      FieldName = 'ALU_MAEDTN'
    end
    object AluOrigALU_FONE: TStringField
      FieldName = 'ALU_FONE'
      Size = 30
    end
    object AluOrigALU_DATMAT: TDateField
      FieldName = 'ALU_DATMAT'
    end
    object AluOrigALU_BIMEST: TSmallintField
      FieldName = 'ALU_BIMEST'
    end
    object AluOrigCUR_COD: TSmallintField
      FieldName = 'CUR_COD'
    end
    object AluOrigSER_NUMERO: TSmallintField
      FieldName = 'SER_NUMERO'
    end
    object AluOrigTUR_TURMA: TStringField
      FieldName = 'TUR_TURMA'
      Size = 2
    end
    object AluOrigALU_CHAMAD: TSmallintField
      FieldName = 'ALU_CHAMAD'
    end
    object AluOrigALU_STATUS: TStringField
      FieldName = 'ALU_STATUS'
      Size = 1
    end
    object AluOrigALU_DATSAI: TDateField
      FieldName = 'ALU_DATSAI'
    end
    object AluOrigALU_BOLSA: TFloatField
      FieldName = 'ALU_BOLSA'
    end
    object AluOrigALU_OBSHIS: TMemoField
      FieldName = 'ALU_OBSHIS'
      BlobType = ftMemo
      Size = 1
    end
    object AluOrigALU_SACADO: TStringField
      FieldName = 'ALU_SACADO'
      Size = 40
    end
    object AluOrigALU_FINAL: TStringField
      FieldName = 'ALU_FINAL'
      Size = 1
    end
    object AluOrigALU_MATERI: TStringField
      FieldName = 'ALU_MATERI'
      Size = 1
    end
    object AluOrigALU_VENCTO: TSmallintField
      FieldName = 'ALU_VENCTO'
    end
    object AluOrigALU_ANO: TSmallintField
      FieldName = 'ALU_ANO'
    end
    object AluOrigALU_CURSIN: TStringField
      FieldName = 'ALU_CURSIN'
      Size = 1
    end
  end
  object FS1: TFormStorage
    UseRegistry = True
    StoredProps.Strings = (
      'RadioGroup1.ItemIndex')
    StoredValues = <>
    Left = 324
    Top = 616
  end
  object IBSQL1: TIBSQL
    Database = DM.DB_ANGLO
    ParamCheck = True
    Transaction = DM.IBTr_ANGLO
    Left = 224
    Top = 616
  end
  object AlunosSP: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select CODIGO_SP'
      'from ALUNOS'
      'where CODIGO_SP is not null'
      'order by CODIGO_SP')
    Left = 280
    Top = 616
    object AlunosSPCODIGO_SP: TIBStringField
      FieldName = 'CODIGO_SP'
      Origin = 'ALUNOS.CODIGO_SP'
      FixedChar = True
      Size = 8
    end
  end
  object ConsTurma: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select CURSINHO,PERIODO'
      'from TURMAS'
      'where SERIE = :serie and TURMA = :turma')
    Left = 464
    Top = 448
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'serie'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'turma'
        ParamType = ptUnknown
      end>
    object ConsTurmaCURSINHO: TSmallintField
      FieldName = 'CURSINHO'
      Origin = 'TURMAS.CURSINHO'
    end
    object ConsTurmaPERIODO: TSmallintField
      FieldName = 'PERIODO'
      Origin = 'TURMAS.PERIODO'
    end
  end
  object Save1: TSaveDialog
    Filter = '*.mec|*.mec'
    Title = 'Salve'
    Left = 376
    Top = 616
  end
  object IBEtiq_SP: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select CODIGO_SP '
      'from ALUNOS'
      'where CODIGO_SP is not null')
    Left = 256
    Top = 552
    object IBEtiq_SPCODIGO_SP: TIBStringField
      FieldName = 'CODIGO_SP'
      Origin = '"ALUNOS"."CODIGO_SP"'
      FixedChar = True
      Size = 8
    end
  end
  object DsIBEtiq_SP: TDataSource
    DataSet = IBEtiq_SP
    Left = 352
    Top = 560
  end
  object up_st: TIBSQL
    Database = DM.DB_ANGLO
    ParamCheck = True
    Transaction = DM.IBTr_ANGLO
    Left = 692
    Top = 432
  end
  object DsBuscaBoleto: TDataSource
    DataSet = QBuscaBoleto
    Left = 708
    Top = 344
  end
  object QBuscaBoleto: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *'
      'from bloquetos'
      'where aluno = :baluno and PAGAMENTO is null')
    Left = 612
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'baluno'
        ParamType = ptUnknown
      end>
    object QBuscaBoletoNOSSO_NUMERO: TIntegerField
      FieldName = 'NOSSO_NUMERO'
      Origin = '"BLOQUETOS"."NOSSO_NUMERO"'
      Required = True
    end
    object QBuscaBoletoALUNO: TIntegerField
      FieldName = 'ALUNO'
      Origin = '"BLOQUETOS"."ALUNO"'
    end
    object QBuscaBoletoPARCELA: TSmallintField
      FieldName = 'PARCELA'
      Origin = '"BLOQUETOS"."PARCELA"'
    end
    object QBuscaBoletoEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = '"BLOQUETOS"."EMISSAO"'
    end
    object QBuscaBoletoVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = '"BLOQUETOS"."VENCIMENTO"'
    end
    object QBuscaBoletoVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"BLOQUETOS"."VALOR"'
      Precision = 9
      Size = 2
    end
    object QBuscaBoletoPAGAMENTO: TDateField
      FieldName = 'PAGAMENTO'
      Origin = '"BLOQUETOS"."PAGAMENTO"'
    end
    object QBuscaBoletoVALOR_PAGO: TIBBCDField
      FieldName = 'VALOR_PAGO'
      Origin = '"BLOQUETOS"."VALOR_PAGO"'
      Precision = 9
      Size = 2
    end
    object QBuscaBoletoMENSALIDADE: TIBBCDField
      FieldName = 'MENSALIDADE'
      Origin = '"BLOQUETOS"."MENSALIDADE"'
      Precision = 9
      Size = 2
    end
    object QBuscaBoletoMATERIAL: TIBBCDField
      FieldName = 'MATERIAL'
      Origin = '"BLOQUETOS"."MATERIAL"'
      Precision = 9
      Size = 2
    end
    object QBuscaBoletoDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"BLOQUETOS"."DESCONTO"'
      Precision = 9
      Size = 2
    end
    object QBuscaBoletoTIPO_PG: TSmallintField
      FieldName = 'TIPO_PG'
      Origin = '"BLOQUETOS"."TIPO_PG"'
    end
    object QBuscaBoletoANO_DV: TIBStringField
      FieldName = 'ANO_DV'
      Origin = '"BLOQUETOS"."ANO_DV"'
      FixedChar = True
      Size = 2
    end
    object QBuscaBoletoDESCONTO_ANT: TIBBCDField
      FieldName = 'DESCONTO_ANT'
      Origin = '"BLOQUETOS"."DESCONTO_ANT"'
      Precision = 9
      Size = 2
    end
    object QBuscaBoletoMENSALIDADE_ANT: TIBBCDField
      FieldName = 'MENSALIDADE_ANT'
      Origin = '"BLOQUETOS"."MENSALIDADE_ANT"'
      Precision = 9
      Size = 2
    end
    object QBuscaBoletoVALOR_ANT: TIBBCDField
      FieldName = 'VALOR_ANT'
      Origin = '"BLOQUETOS"."VALOR_ANT"'
      Precision = 9
      Size = 2
    end
    object QBuscaBoletoBAULA_AD: TIBStringField
      FieldName = 'BAULA_AD'
      Origin = '"BLOQUETOS"."BAULA_AD"'
      FixedChar = True
      Size = 1
    end
    object QBuscaBoletoST: TIBStringField
      FieldName = 'ST'
      Origin = '"BLOQUETOS"."ST"'
      FixedChar = True
      Size = 1
    end
    object QBuscaBoletoTP: TIntegerField
      FieldName = 'TP'
      Origin = '"BLOQUETOS"."TP"'
    end
    object QBuscaBoletoMOTIVO: TIBStringField
      FieldName = 'MOTIVO'
      Origin = '"BLOQUETOS"."MOTIVO"'
      Size = 150
    end
    object QBuscaBoletoDATA_LIMITE: TDateField
      FieldName = 'DATA_LIMITE'
      Origin = '"BLOQUETOS"."DATA_LIMITE"'
    end
  end
  object Delete_Boleto: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'delete'
      'from Bloquetos'
      'where Aluno = :baluno and PAGAMENTO IS NULL and ST = :bst')
    Left = 748
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'baluno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bst'
        ParamType = ptUnknown
      end>
  end
  object Ds_Delete_Boleto: TDataSource
    DataSet = Delete_Boleto
    Left = 652
    Top = 192
  end
  object Ds_UpNegociacao: TDataSource
    DataSet = UP_Negociacao
    Left = 492
    Top = 200
  end
  object UP_Negociacao: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'update BLOQUETOS'
      'set NEGOCIACAO = :codigo'
      
        'where aluno = :baluno and PAGAMENTO is null and ST = '#39'N'#39' and NEG' +
        'OCIACAO is null')
    Left = 484
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'baluno'
        ParamType = ptUnknown
      end>
  end
  object UltimoBoleto: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select max(parcela) as total'
      'from bloquetos'
      'where aluno = :codigo')
    Left = 780
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object UltimoBoletoTOTAL: TSmallintField
      FieldName = 'TOTAL'
    end
  end
  object DsUltimoBoleto: TDataSource
    DataSet = UltimoBoleto
    Left = 876
    Top = 400
  end
  object AlunosAnt: TIBQuery
    Database = DM.DB_ANGLO
    Transaction = DM.IBTr_ANGLO
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * '
      'from ALUNOS_ANT'
      'where CODIGO = :codigo')
    Left = 35
    Top = 536
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object AlunosAntCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"ALUNOS_ANT"."CODIGO"'
      Required = True
    end
    object AlunosAntNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"ALUNOS_ANT"."NOME"'
      Required = True
      Size = 60
    end
    object AlunosAntCODIGO_ESCOLA: TIntegerField
      FieldName = 'CODIGO_ESCOLA'
      Origin = '"ALUNOS_ANT"."CODIGO_ESCOLA"'
    end
    object AlunosAntENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"ALUNOS_ANT"."ENDERECO"'
      Size = 40
    end
    object AlunosAntCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"ALUNOS_ANT"."COMPLEMENTO"'
    end
    object AlunosAntBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"ALUNOS_ANT"."BAIRRO"'
    end
    object AlunosAntCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"ALUNOS_ANT"."CIDADE"'
      Size = 35
    end
    object AlunosAntUF: TIBStringField
      FieldName = 'UF'
      Origin = '"ALUNOS_ANT"."UF"'
      FixedChar = True
      Size = 2
    end
    object AlunosAntRG: TIBStringField
      FieldName = 'RG'
      Origin = '"ALUNOS_ANT"."RG"'
      Size = 25
    end
    object AlunosAntNASC_DATA: TDateField
      FieldName = 'NASC_DATA'
      Origin = '"ALUNOS_ANT"."NASC_DATA"'
    end
    object AlunosAntNASC_CIDADE: TIBStringField
      FieldName = 'NASC_CIDADE'
      Origin = '"ALUNOS_ANT"."NASC_CIDADE"'
      Size = 25
    end
    object AlunosAntNASC_UF: TIBStringField
      FieldName = 'NASC_UF'
      Origin = '"ALUNOS_ANT"."NASC_UF"'
      FixedChar = True
      Size = 2
    end
    object AlunosAntSEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = '"ALUNOS_ANT"."SEXO"'
      FixedChar = True
      Size = 1
    end
    object AlunosAntPAI_NOME: TIBStringField
      FieldName = 'PAI_NOME'
      Origin = '"ALUNOS_ANT"."PAI_NOME"'
      Size = 50
    end
    object AlunosAntPAI_PROFISSAO: TIBStringField
      FieldName = 'PAI_PROFISSAO'
      Origin = '"ALUNOS_ANT"."PAI_PROFISSAO"'
    end
    object AlunosAntPAI_NASCIMENTO: TDateField
      FieldName = 'PAI_NASCIMENTO'
      Origin = '"ALUNOS_ANT"."PAI_NASCIMENTO"'
    end
    object AlunosAntMAE_NOME: TIBStringField
      FieldName = 'MAE_NOME'
      Origin = '"ALUNOS_ANT"."MAE_NOME"'
      Size = 50
    end
    object AlunosAntMAE_PROFISSAO: TIBStringField
      FieldName = 'MAE_PROFISSAO'
      Origin = '"ALUNOS_ANT"."MAE_PROFISSAO"'
    end
    object AlunosAntMAE_NASCIMENTO: TDateField
      FieldName = 'MAE_NASCIMENTO'
      Origin = '"ALUNOS_ANT"."MAE_NASCIMENTO"'
    end
    object AlunosAntFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"ALUNOS_ANT"."FONE"'
      Size = 30
    end
    object AlunosAntDATA_MATRICULA: TDateField
      FieldName = 'DATA_MATRICULA'
      Origin = '"ALUNOS_ANT"."DATA_MATRICULA"'
    end
    object AlunosAntBIMESTRE: TSmallintField
      FieldName = 'BIMESTRE'
      Origin = '"ALUNOS_ANT"."BIMESTRE"'
    end
    object AlunosAntCURSO: TIntegerField
      FieldName = 'CURSO'
      Origin = '"ALUNOS_ANT"."CURSO"'
    end
    object AlunosAntSERIE: TSmallintField
      FieldName = 'SERIE'
      Origin = '"ALUNOS_ANT"."SERIE"'
    end
    object AlunosAntTURMA: TIBStringField
      FieldName = 'TURMA'
      Origin = '"ALUNOS_ANT"."TURMA"'
      FixedChar = True
      Size = 1
    end
    object AlunosAntCHAMADA: TSmallintField
      FieldName = 'CHAMADA'
      Origin = '"ALUNOS_ANT"."CHAMADA"'
    end
    object AlunosAntSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"ALUNOS_ANT"."STATUS"'
      FixedChar = True
      Size = 1
    end
    object AlunosAntDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
      Origin = '"ALUNOS_ANT"."DATA_SAIDA"'
    end
    object AlunosAntBOLSA: TIBBCDField
      FieldName = 'BOLSA'
      Origin = '"ALUNOS_ANT"."BOLSA"'
      Precision = 9
      Size = 2
    end
    object AlunosAntOBS_HIST: TMemoField
      FieldName = 'OBS_HIST'
      Origin = '"ALUNOS_ANT"."OBS_HIST"'
      BlobType = ftMemo
      Size = 8
    end
    object AlunosAntSACADO: TIBStringField
      FieldName = 'SACADO'
      Origin = '"ALUNOS_ANT"."SACADO"'
      Size = 40
    end
    object AlunosAntFINAL: TIBStringField
      FieldName = 'FINAL'
      Origin = '"ALUNOS_ANT"."FINAL"'
      FixedChar = True
      Size = 1
    end
    object AlunosAntMATERIAL: TSmallintField
      FieldName = 'MATERIAL'
      Origin = '"ALUNOS_ANT"."MATERIAL"'
    end
    object AlunosAntVENCIMENTO: TSmallintField
      FieldName = 'VENCIMENTO'
      Origin = '"ALUNOS_ANT"."VENCIMENTO"'
    end
    object AlunosAntANO: TSmallintField
      FieldName = 'ANO'
      Origin = '"ALUNOS_ANT"."ANO"'
    end
    object AlunosAntCURSINHO: TSmallintField
      FieldName = 'CURSINHO'
      Origin = '"ALUNOS_ANT"."CURSINHO"'
    end
    object AlunosAntBLOQUETO_1SEM: TSmallintField
      FieldName = 'BLOQUETO_1SEM'
      Origin = '"ALUNOS_ANT"."BLOQUETO_1SEM"'
    end
    object AlunosAntBLOQUETO_2SEM: TSmallintField
      FieldName = 'BLOQUETO_2SEM'
      Origin = '"ALUNOS_ANT"."BLOQUETO_2SEM"'
    end
    object AlunosAntMES_MATERIAL: TSmallintField
      FieldName = 'MES_MATERIAL'
      Origin = '"ALUNOS_ANT"."MES_MATERIAL"'
    end
    object AlunosAntSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = '"ALUNOS_ANT"."SENHA"'
      Size = 10
    end
    object AlunosAntSACADO_RG: TIBStringField
      FieldName = 'SACADO_RG'
      Origin = '"ALUNOS_ANT"."SACADO_RG"'
    end
    object AlunosAntSACADO_CPF: TIBStringField
      FieldName = 'SACADO_CPF'
      Origin = '"ALUNOS_ANT"."SACADO_CPF"'
      FixedChar = True
      Size = 15
    end
    object AlunosAntMOD_ESPORTIVA: TIBStringField
      FieldName = 'MOD_ESPORTIVA'
      Origin = '"ALUNOS_ANT"."MOD_ESPORTIVA"'
      FixedChar = True
      Size = 3
    end
    object AlunosAntH_ANO1: TIntegerField
      FieldName = 'H_ANO1'
      Origin = '"ALUNOS_ANT"."H_ANO1"'
    end
    object AlunosAntH_ESCOLA1: TIBStringField
      FieldName = 'H_ESCOLA1'
      Origin = '"ALUNOS_ANT"."H_ESCOLA1"'
      Size = 40
    end
    object AlunosAntH_CIDADE1: TIBStringField
      FieldName = 'H_CIDADE1'
      Origin = '"ALUNOS_ANT"."H_CIDADE1"'
      Size = 25
    end
    object AlunosAntH_UF1: TIBStringField
      FieldName = 'H_UF1'
      Origin = '"ALUNOS_ANT"."H_UF1"'
      FixedChar = True
      Size = 2
    end
    object AlunosAntH_ANO2: TIntegerField
      FieldName = 'H_ANO2'
      Origin = '"ALUNOS_ANT"."H_ANO2"'
    end
    object AlunosAntH_ESCOLA2: TIBStringField
      FieldName = 'H_ESCOLA2'
      Origin = '"ALUNOS_ANT"."H_ESCOLA2"'
      Size = 40
    end
    object AlunosAntH_CIDADE2: TIBStringField
      FieldName = 'H_CIDADE2'
      Origin = '"ALUNOS_ANT"."H_CIDADE2"'
      Size = 25
    end
    object AlunosAntH_UF2: TIBStringField
      FieldName = 'H_UF2'
      Origin = '"ALUNOS_ANT"."H_UF2"'
      FixedChar = True
      Size = 2
    end
    object AlunosAntH_ANO3: TIntegerField
      FieldName = 'H_ANO3'
      Origin = '"ALUNOS_ANT"."H_ANO3"'
    end
    object AlunosAntH_ESCOLA3: TIBStringField
      FieldName = 'H_ESCOLA3'
      Origin = '"ALUNOS_ANT"."H_ESCOLA3"'
      Size = 40
    end
    object AlunosAntH_CIDADE3: TIBStringField
      FieldName = 'H_CIDADE3'
      Origin = '"ALUNOS_ANT"."H_CIDADE3"'
      Size = 25
    end
    object AlunosAntH_UF3: TIBStringField
      FieldName = 'H_UF3'
      Origin = '"ALUNOS_ANT"."H_UF3"'
      FixedChar = True
      Size = 2
    end
    object AlunosAntBOLSA_OBS: TIBStringField
      FieldName = 'BOLSA_OBS'
      Origin = '"ALUNOS_ANT"."BOLSA_OBS"'
      Size = 50
    end
    object AlunosAntCODIGO_SP: TIBStringField
      FieldName = 'CODIGO_SP'
      Origin = '"ALUNOS_ANT"."CODIGO_SP"'
      FixedChar = True
      Size = 8
    end
    object AlunosAntCONT_TOL: TIntegerField
      FieldName = 'CONT_TOL'
      Origin = '"ALUNOS_ANT"."CONT_TOL"'
    end
    object AlunosAntTIPO_LOGADOURO: TIntegerField
      FieldName = 'TIPO_LOGADOURO'
      Origin = '"ALUNOS_ANT"."TIPO_LOGADOURO"'
    end
    object AlunosAntNUMERO: TSmallintField
      FieldName = 'NUMERO'
      Origin = '"ALUNOS_ANT"."NUMERO"'
    end
    object AlunosAntCOMPLEMENTO_RG: TSmallintField
      FieldName = 'COMPLEMENTO_RG'
      Origin = '"ALUNOS_ANT"."COMPLEMENTO_RG"'
    end
    object AlunosAntDATA_EXP_IDENT: TDateField
      FieldName = 'DATA_EXP_IDENT'
      Origin = '"ALUNOS_ANT"."DATA_EXP_IDENT"'
    end
    object AlunosAntUF_IDENTIDADE: TIntegerField
      FieldName = 'UF_IDENTIDADE'
      Origin = '"ALUNOS_ANT"."UF_IDENTIDADE"'
    end
    object AlunosAntORGAO_EMIS_IDE: TIntegerField
      FieldName = 'ORGAO_EMIS_IDE'
      Origin = '"ALUNOS_ANT"."ORGAO_EMIS_IDE"'
    end
    object AlunosAntNACIONALIDADE: TIntegerField
      FieldName = 'NACIONALIDADE'
      Origin = '"ALUNOS_ANT"."NACIONALIDADE"'
    end
    object AlunosAntDATA_ENTR_PAIS: TDateField
      FieldName = 'DATA_ENTR_PAIS'
      Origin = '"ALUNOS_ANT"."DATA_ENTR_PAIS"'
    end
    object AlunosAntMUNICIPIO_NAS: TSmallintField
      FieldName = 'MUNICIPIO_NAS'
      Origin = '"ALUNOS_ANT"."MUNICIPIO_NAS"'
    end
    object AlunosAntCERTIDAO_CIVIL: TSmallintField
      FieldName = 'CERTIDAO_CIVIL'
      Origin = '"ALUNOS_ANT"."CERTIDAO_CIVIL"'
    end
    object AlunosAntDATA_EMI_CERT: TDateField
      FieldName = 'DATA_EMI_CERT'
      Origin = '"ALUNOS_ANT"."DATA_EMI_CERT"'
    end
    object AlunosAntNOME_CART_EXP: TIBStringField
      FieldName = 'NOME_CART_EXP'
      Origin = '"ALUNOS_ANT"."NOME_CART_EXP"'
    end
    object AlunosAntCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"ALUNOS_ANT"."CPF"'
      Size = 16
    end
    object AlunosAntCOR: TIntegerField
      FieldName = 'COR'
      Origin = '"ALUNOS_ANT"."COR"'
    end
    object AlunosAntEDU_ESPECIAL: TIBStringField
      FieldName = 'EDU_ESPECIAL'
      Origin = '"ALUNOS_ANT"."EDU_ESPECIAL"'
      FixedChar = True
      Size = 1
    end
    object AlunosAntTIPO_EDU_ESP: TSmallintField
      FieldName = 'TIPO_EDU_ESP'
      Origin = '"ALUNOS_ANT"."TIPO_EDU_ESP"'
    end
    object AlunosAntINC_CLASSE_COMU: TSmallintField
      FieldName = 'INC_CLASSE_COMU'
      Origin = '"ALUNOS_ANT"."INC_CLASSE_COMU"'
    end
    object AlunosAntAPOIO_PED_ESPE: TSmallintField
      FieldName = 'APOIO_PED_ESPE'
      Origin = '"ALUNOS_ANT"."APOIO_PED_ESPE"'
    end
    object AlunosAntCONDIC_ALUNO: TSmallintField
      FieldName = 'CONDIC_ALUNO'
      Origin = '"ALUNOS_ANT"."CONDIC_ALUNO"'
    end
    object AlunosAntCORR_FLUXO: TSmallintField
      FieldName = 'CORR_FLUXO'
      Origin = '"ALUNOS_ANT"."CORR_FLUXO"'
    end
    object AlunosAntBOLSA_FAMILIA: TSmallintField
      FieldName = 'BOLSA_FAMILIA'
      Origin = '"ALUNOS_ANT"."BOLSA_FAMILIA"'
    end
    object AlunosAntTRANSP_PUBLICO: TSmallintField
      FieldName = 'TRANSP_PUBLICO'
      Origin = '"ALUNOS_ANT"."TRANSP_PUBLICO"'
    end
    object AlunosAntZONA_RESID: TSmallintField
      FieldName = 'ZONA_RESID'
      Origin = '"ALUNOS_ANT"."ZONA_RESID"'
    end
    object AlunosAntCONCLUINTE: TSmallintField
      FieldName = 'CONCLUINTE'
      Origin = '"ALUNOS_ANT"."CONCLUINTE"'
    end
    object AlunosAntRECLASS_INGR: TSmallintField
      FieldName = 'RECLASS_INGR'
      Origin = '"ALUNOS_ANT"."RECLASS_INGR"'
    end
    object AlunosAntTRANSP_PUB_OFER: TSmallintField
      FieldName = 'TRANSP_PUB_OFER'
      Origin = '"ALUNOS_ANT"."TRANSP_PUB_OFER"'
    end
    object AlunosAntRECLASS_DEST: TSmallintField
      FieldName = 'RECLASS_DEST'
      Origin = '"ALUNOS_ANT"."RECLASS_DEST"'
    end
    object AlunosAntADMI_APOS_CENSO: TSmallintField
      FieldName = 'ADMI_APOS_CENSO'
      Origin = '"ALUNOS_ANT"."ADMI_APOS_CENSO"'
    end
    object AlunosAntMOV_REND_ESCOL: TSmallintField
      FieldName = 'MOV_REND_ESCOL'
      Origin = '"ALUNOS_ANT"."MOV_REND_ESCOL"'
    end
    object AlunosAntAT_ED_ESPECIALI: TSmallintField
      FieldName = 'AT_ED_ESPECIALI'
      Origin = '"ALUNOS_ANT"."AT_ED_ESPECIALI"'
    end
    object AlunosAntDATA_IGRESSO: TDateField
      FieldName = 'DATA_IGRESSO'
      Origin = '"ALUNOS_ANT"."DATA_IGRESSO"'
    end
    object AlunosAntCURSO_NOR_NM: TSmallintField
      FieldName = 'CURSO_NOR_NM'
      Origin = '"ALUNOS_ANT"."CURSO_NOR_NM"'
    end
    object AlunosAntUF_MEC: TIntegerField
      FieldName = 'UF_MEC'
      Origin = '"ALUNOS_ANT"."UF_MEC"'
    end
    object AlunosAntORGAO_EMISSOR: TIntegerField
      FieldName = 'ORGAO_EMISSOR'
      Origin = '"ALUNOS_ANT"."ORGAO_EMISSOR"'
    end
    object AlunosAntSEXO_E: TIntegerField
      FieldName = 'SEXO_E'
      Origin = '"ALUNOS_ANT"."SEXO_E"'
    end
    object AlunosAntTIPOCERTIDAO: TIntegerField
      FieldName = 'TIPOCERTIDAO'
      Origin = '"ALUNOS_ANT"."TIPOCERTIDAO"'
    end
    object AlunosAntUFCARTORIO: TIntegerField
      FieldName = 'UFCARTORIO'
      Origin = '"ALUNOS_ANT"."UFCARTORIO"'
    end
    object AlunosAntNUMERO_TERMO: TIntegerField
      FieldName = 'NUMERO_TERMO'
      Origin = '"ALUNOS_ANT"."NUMERO_TERMO"'
    end
    object AlunosAntFOLHA: TIBStringField
      FieldName = 'FOLHA'
      Origin = '"ALUNOS_ANT"."FOLHA"'
      Size = 4
    end
    object AlunosAntLIVRO: TIBStringField
      FieldName = 'LIVRO'
      Origin = '"ALUNOS_ANT"."LIVRO"'
      Size = 8
    end
    object AlunosAntCARTORIO_UF: TIntegerField
      FieldName = 'CARTORIO_UF'
      Origin = '"ALUNOS_ANT"."CARTORIO_UF"'
    end
    object AlunosAntPALOGIN: TIBStringField
      FieldName = 'PALOGIN'
      Origin = '"ALUNOS_ANT"."PALOGIN"'
      Size = 10
    end
    object AlunosAntPASENHA: TIBStringField
      FieldName = 'PASENHA'
      Origin = '"ALUNOS_ANT"."PASENHA"'
      Size = 10
    end
    object AlunosAntTIPOSANGUINEO: TIntegerField
      FieldName = 'TIPOSANGUINEO'
      Origin = '"ALUNOS_ANT"."TIPOSANGUINEO"'
    end
    object AlunosAntSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Origin = '"ALUNOS_ANT"."SITUACAO"'
      FixedChar = True
      Size = 1
    end
    object AlunosAntUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"ALUNOS_ANT"."USUARIO"'
    end
    object AlunosAntOPCAO_ESPANHOL: TIBStringField
      FieldName = 'OPCAO_ESPANHOL'
      Origin = '"ALUNOS_ANT"."OPCAO_ESPANHOL"'
      FixedChar = True
      Size = 1
    end
    object AlunosAntCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = '"ALUNOS_ANT"."CELULAR"'
      Size = 13
    end
    object AlunosAntTEL_RESIDENCIAL: TIBStringField
      FieldName = 'TEL_RESIDENCIAL'
      Origin = '"ALUNOS_ANT"."TEL_RESIDENCIAL"'
      Size = 13
    end
    object AlunosAntTEL_CONTATO: TIBStringField
      FieldName = 'TEL_CONTATO'
      Origin = '"ALUNOS_ANT"."TEL_CONTATO"'
      Size = 13
    end
    object AlunosAntE_MAIL: TIBStringField
      FieldName = 'E_MAIL'
      Origin = '"ALUNOS_ANT"."E_MAIL"'
      Size = 30
    end
    object AlunosAntFORMATURA: TIBStringField
      FieldName = 'FORMATURA'
      Origin = '"ALUNOS_ANT"."FORMATURA"'
      FixedChar = True
      Size = 1
    end
    object AlunosAntBOLSA_AD: TIBBCDField
      FieldName = 'BOLSA_AD'
      Origin = '"ALUNOS_ANT"."BOLSA_AD"'
      Precision = 9
      Size = 2
    end
    object AlunosAntAULA_AD: TIBStringField
      FieldName = 'AULA_AD'
      Origin = '"ALUNOS_ANT"."AULA_AD"'
      FixedChar = True
      Size = 1
    end
    object AlunosAntID: TIBStringField
      FieldName = 'ID'
      Origin = '"ALUNOS_ANT"."ID"'
      Size = 12
    end
    object AlunosAntCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"ALUNOS_ANT"."CEP"'
      FixedChar = True
      Size = 15
    end
  end
end
