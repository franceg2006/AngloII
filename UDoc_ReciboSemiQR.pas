unit UDoc_ReciboSemiQR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, ECC_Extenso, jpeg;

type
  TDoc_ReciboSemiQR = class(TQuickRep)
    TitleBand1: TQRBand;
    QRShape2: TQRShape;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    Ano: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabelExtenso: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel4: TQRLabel;
    QRECC_DataExtenso1: TQRECC_DataExtenso;
    QRLabel5: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRImage2: TQRImage;
    QRShape5: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    ValorExtenso: TQRECC_ValorExtenso;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabelExtenso2: TQRLabel;
    QRLabel15: TQRLabel;
    QRECC_DataExtenso2: TQRECC_DataExtenso;
    qrlblreferencia1: TQRLabel;
    qrlblreferencia2: TQRLabel;
    QRShape6: TQRShape;
    QRLabel14: TQRLabel;
    QRShape7: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  Doc_ReciboSemiQR: TDoc_ReciboSemiQR;

implementation

uses UMenu, UDM;

{$R *.DFM}

procedure TDoc_ReciboSemiQR.TitleBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   Ano.Caption := 'Ano: '+Principal.Ano.Caption;
   QRLabel10.Caption := 'Ano: '+Principal.Ano.Caption;
//  ValorExtenso.Valor := DM.Bloquetos_SemiVALOR.Value;
  QRLabelExtenso.Caption := '('+ValorExtenso.Caption+')';
  QRLabelExtenso2.Caption := '('+ValorExtenso.Caption+')';
  QRECC_DataExtenso1.Data := Now;
  QRECC_DataExtenso2.Data := Now;
end;

procedure TDoc_ReciboSemiQR.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  ValorExtenso.Valor := dm.ParametrosMENSALIDADE_5.Value;
end;

end.
