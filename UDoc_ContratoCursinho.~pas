unit UDoc_ContratoCursinho;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, IBCustomDataSet,
  IBQuery, QrAngLbl, Placemnt, ECC_Extenso, ECC_Justifica, jpeg;

type
  TDoc_ContratoCursinho = class(TQuickRep)
    Rodape: TQRBand;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    Ano: TQRLabel;
    QRRichText1: TQRRichText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRImage1: TQRImage;
    QRDBText9: TQRDBText;
    QRMemo1: TQRMemo;
    QRLabel3: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape1: TQRShape;
    QRDBText13: TQRDBText;
    QRLabel10: TQRLabel;
    DataExt: TQRECC_DataExtenso;
    procedure RodapeBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  Doc_ContratoCursinho: TDoc_ContratoCursinho;

implementation

uses UDM, UcadParametros, UCad_Alunos, UMenu;

{$R *.DFM}

procedure TDoc_ContratoCursinho.RodapeBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Ano.Caption := 'Ano: '+Principal.Ano.Caption;
  DataExt.Data := Cad_Alunos.DataDoc.Date;
end;

procedure TDoc_ContratoCursinho.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
//var Txt0 : string;
begin
//       Txt0 := Doc_ContratoQR.QRMemo1.Lines.Text;
//       if dm.AlunosAULA_AD.Value = 'S' then
{         Txt0 := StringReplace(Txt0, '{optante}//', 'Aluno OPTANTE a sala de estudo individual.', [rfReplaceAll])  }
 {      else
         Txt0 := StringReplace(Txt0, '{optante}//', 'Aluno NÃO OPTANTE a sala de estudo individual.', [rfReplaceAll]);}

 //      Doc_ContratoQR.QRMemo1.Lines.Text := Txt0;
end;

end.
