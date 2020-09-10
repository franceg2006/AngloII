unit UDoc_AluRecupQR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, IBCustomDataSet,
  IBQuery, Placemnt, QrAngLbl, jpeg;

type
  TDoc_AluRecupQR = class(TQuickRep)
    TitleBand1: TQRBand;
    Bimestre: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRSysData2: TQRSysData;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    Titulo: TQRLabel;
    QRSysData1: TQRSysData;
    QRImage1: TQRImage;
    QRLabel12: TQRLabel;
    DetNota: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    NomeTurma: TQRLabel;
    QRBand2: TQRBand;
    QRLabel10: TQRLabel;
    QRExpr1: TQRExpr;
    QRDBText1: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    qrcont1: TQRDBText;
    qrcont2: TQRDBText;
    qrcont3: TQRDBText;
    qrcont4: TQRDBText;
    qrcont5: TQRDBText;
    qrcont6: TQRDBText;
    qrcont7: TQRDBText;
    qrcont8: TQRDBText;
    qrcont9: TQRDBText;
    qrcont10: TQRDBText;
    qrcont11: TQRDBText;
    qrcont12: TQRDBText;
    qrcont13: TQRDBText;
    qrcont14: TQRDBText;
    qrcont15: TQRDBText;
    qrcont16: TQRDBText;
    qrcont17: TQRDBText;
    qrcont18: TQRDBText;
    qrcont21: TQRDBText;
    qrcont20: TQRDBText;
    qrcont19: TQRDBText;
    qrcont22: TQRDBText;
    qrcont23: TQRDBText;
    qrcont24: TQRDBText;
    qrcont25: TQRDBText;
    qrcont26: TQRDBText;
    qrcont27: TQRDBText;
    qrcont28: TQRDBText;
    qrcont29: TQRDBText;
    qrcont30: TQRDBText;
    qrcont31: TQRDBText;
    qrcont32: TQRDBText;
    qrcont33: TQRDBText;
    qrcont34: TQRDBText;
    qrcont35: TQRDBText;
    qrcont36: TQRDBText;
    qrcont37: TQRDBText;
    qrcont38: TQRDBText;
    qrcont39: TQRDBText;
    qrcont40: TQRDBText;
    qrcont41: TQRDBText;
    qrcont42: TQRDBText;
    qrcont43: TQRDBText;
    qrcont44: TQRDBText;
    qrcont45: TQRDBText;
    qrlbl1: TQRLabel;
    qrlbl2: TQRLabel;
    qrlbl3: TQRLabel;
    qrshp1: TQRShape;
    qrshp2: TQRShape;
    D01: TQRLabel;
    D02: TQRLabel;
    D03: TQRLabel;
    D04: TQRLabel;
    D05: TQRLabel;
    D06: TQRLabel;
    D07: TQRLabel;
    D08: TQRLabel;
    D09: TQRLabel;
    D10: TQRLabel;
    D11: TQRLabel;
    D12: TQRLabel;
    D13: TQRLabel;
    D14: TQRLabel;
    D15: TQRLabel;
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetNotaBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  Doc_AluRecupQR: TDoc_AluRecupQR;
 
implementation

uses UDM, UcadParametros;

{$R *.DFM}

procedure TDoc_AluRecupQR.TitleBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  DetNota.Color := DM.ParametrosCOR_ZEBRADO.Value;
end;

procedure TDoc_AluRecupQR.DetNotaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if DetNota.Color = clWhite then  DetNota.Color := DM.ParametrosCOR_ZEBRADO.Value
   else  DetNota.Color := clWhite;
end;

procedure TDoc_AluRecupQR.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  dm.DocAlunos.Open;
end;

end.
