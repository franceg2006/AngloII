unit UcomunicadoQ;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, RxGIF, jpeg;

type
  TcomunicadoQ = class(TQuickRep)
    TitleBand1: TQRBand;
    Titulo: TQRLabel;
    QRLabel3: TQRLabel;
    QRBand1: TQRBand;
    QRMemo1: TQRMemo;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QRImage2: TQRImage;
    QRDBText3: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText5: TQRDBText;
    img1: TQRImage;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  comunicadoQ: TcomunicadoQ;

implementation

uses UDM;

{$R *.DFM}

procedure TcomunicadoQ.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
//   img1.Picture.LoadFromFile(dm.ParametrosCaminho.Value);

end;

end.
