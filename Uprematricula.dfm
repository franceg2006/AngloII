object fprematricula: Tfprematricula
  Left = 314
  Top = 161
  Width = 916
  Height = 563
  VertScrollBar.Position = 129
  Caption = 'Declaração de pré matricula.'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = -8
    Top = -129
    Width = 794
    Height = 1123
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 737
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      BeforePrint = RLBand1BeforePrint
      object RLLabel2: TRLLabel
        Left = 16
        Top = 40
        Width = 317
        Height = 27
        Caption = 'Declaração de Pré Matricula'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw2: TRLDraw
        Left = 38
        Top = 638
        Width = 289
        Height = 6
        DrawKind = dkLine
      end
      object RLLabel5: TRLLabel
        Left = 504
        Top = 645
        Width = 156
        Height = 16
        Caption = 'Assinatura do responsável'
      end
      object RLDraw1: TRLDraw
        Left = 429
        Top = 638
        Width = 289
        Height = 6
        DrawKind = dkLine
      end
      object RLMemo1: TRLMemo
        Left = 21
        Top = 176
        Width = 689
        Height = 64
        Alignment = taJustify
        Lines.Strings = (
          
            #9'Eu: {sacado} Declaro estar ciente de estar fazendo a pré-matríc' +
            'ula do(a) aluno(a): {nomealuno}, na {serie} série do ensino médi' +
            'o e de que (o)(a) só estará devidamente matriculado(a) na referi' +
            'da série se apresentar o documento de comprovação de APROVAÇÃO n' +
            'a série antecedente.'
          
            #9'Declaro, ainda, que a matrícula deverá ser devidamente finaliza' +
            'da até o dia 22 de dezembro de 2017.')
      end
      object RLLabel1: TRLLabel
        Left = 24
        Top = 337
        Width = 321
        Height = 16
        Caption = 'Por ser expressão de verdade, dato e firmo a presente.'
      end
      object RLLabel3: TRLLabel
        Left = 24
        Top = 457
        Width = 296
        Height = 16
        Caption = 'Dourados-MS.,______ de _______________ 2017.'
      end
      object RLDraw3: TRLDraw
        Left = 2
        Top = 91
        Width = 714
        Height = 7
        DrawKind = dkLine
      end
    end
  end
end
