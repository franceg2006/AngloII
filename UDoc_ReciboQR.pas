unit UDoc_ReciboQR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, IBCustomDataSet,
  IBQuery, QrAngLbl, Placemnt, ECC_Extenso, ECC_Justifica, jpeg;

type
  TDoc_ReciboQR = class(TQuickRep)
    Rodape: TQRBand;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    Ano: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText8: TQRDBText;
    DataExt: TQRECC_DataExtenso;
    QRImage1: TQRImage;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    ValorExt: TQRECC_ValorExtenso;
    ValorX: TQRLabel;
    Valor: TQRLabel;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    DataExt2: TQRECC_DataExtenso;
    ValorX2: TQRLabel;
    Valor2: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText7: TQRDBText;
    QRShape4: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    Ano2: TQRLabel;
    QRImage2: TQRImage;
    QRLabel5: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel7: TQRLabel;
    numerodorecibo1: TQRLabel;
    numerodorecibo2: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    qrlbl1: TQRLabel;
    qrlbl2: TQRLabel;
    qrlbl3: TQRLabel;
    qrlbl4: TQRLabel;
    procedure RodapeBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  Doc_ReciboQR: TDoc_ReciboQR;

implementation

uses UDM, UcadParametros, UCad_Alunos, UMenu;

{$R *.DFM}

procedure TDoc_ReciboQR.RodapeBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Ano.Caption := 'Ano: '+Principal.Ano.Caption;
  Ano2.Caption := 'Ano: '+Principal.Ano.Caption;
  DataExt.Data := Cad_Alunos.DataDoc.Date;
  DataExt2.Data := Cad_Alunos.DataDoc.Date;
  case DM.AlunosSERIE.Value of
    1 : begin //Não tem primeiro ano
         // Valor.Caption := DM.ParametrosMENSALIDADE_1.DisplayText;
         // ValorExt.Valor := DM.ParametrosMENSALIDADE_1.Value;
        end;
    2 : begin
         // Valor.Caption := DM.ParametrosMENSALIDADE_2.DisplayText;
         // ValorExt.Valor := DM.ParametrosMENSALIDADE_2.Value;
        end;
    3 : begin
          Valor.Caption := FormatCurr('###,##0.00',dm.ReciboVALOR.Value + dm.ParametrosMATERIAL_3.Value);
          ValorExt.Valor := (DM.ReciboVALOR.AsCurrency + dm.ParametrosMATERIAL_3.Value);
          if (Cad_Alunos.ConsTurmaCURSINHO.Value = 1) then
          begin
            Valor.Caption := FormatCurr('###,##0.00',dm.ReciboVALOR.Value + dm.ParametrosMATERIAL_4.CurValue);
            ValorExt.Valor := DM.ReciboVALOR.AsCurrency + dm.ParametrosMATERIAL_4.Value;
            QRDBText4.Enabled := False;
            QRDBText5.Enabled := False;
            QRLabel10.Caption := 'Cursinho. ';
            QRLabel12.Caption := 'Cursinho.';
          end;

        end;
  end;
  ValorX.Caption := '('+ValorExt.Caption+')';
  Valor2.Caption := Valor.Caption;
  ValorX2.Caption := '('+ValorExt.Caption+')';
  numerodorecibo1.Caption := dm.ReciboN_RECIBO.AsString;
  numerodorecibo2.Caption := dm.ReciboN_RECIBO.AsString;  
end;

procedure TDoc_ReciboQR.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
  var dia, mes, ano :word;
begin
DecodeDate(now, ano, mes, dia);
if (ano = 2017) and (dia >= 01) and (dia <= 30) and ((mes = 11) or (mes = 12)) then
begin
  QRLabel33.Caption := 'Recibo de Pré-Matrícula';
  QRLabel15.Caption := 'Recibo de Pré-Matricula';
end;
end;

end.
