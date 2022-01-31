object fescola: Tfescola
  Left = 438
  Top = 328
  BorderStyle = bsSingle
  Caption = 'Cadastro de escolas'
  ClientHeight = 226
  ClientWidth = 718
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 16
    Width = 70
    Height = 13
    Caption = 'Código escola:'
  end
  object Label2: TLabel
    Left = 32
    Top = 64
    Width = 63
    Height = 13
    Caption = 'Nome Escola'
  end
  object Label3: TLabel
    Left = 176
    Top = 32
    Width = 181
    Height = 25
    Caption = 'Cadastro de Escolas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 32
    Top = 80
    Width = 601
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ESCOLA'
    DataSource = DM2.DsEscola
    TabOrder = 0
  end
  object DBNavigator1: TDBNavigator
    Left = 32
    Top = 168
    Width = 240
    Height = 25
    DataSource = DM2.DsEscola
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 32
    Top = 32
    Width = 121
    Height = 21
    DataField = 'ID_ESCOLA'
    DataSource = DM2.DsEscola
    TabOrder = 2
  end
  object DBRadioGroup1: TDBRadioGroup
    Left = 32
    Top = 112
    Width = 417
    Height = 41
    Caption = 'Tipo Escola'
    Columns = 2
    DataField = 'TIPO'
    DataSource = DM2.DsEscola
    Items.Strings = (
      'Publica'
      'Privado')
    TabOrder = 3
    Values.Strings = (
      'PU'
      'PR')
  end
end
