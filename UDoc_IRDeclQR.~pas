unit UDoc_IRDeclQR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, QrAngLbl, Db,
  IBCustomDataSet, IBQuery, ECC_Extenso, ECC_Justifica, jpeg;

type
  TDoc_IRDeclQR = class(TQuickRep)
    QRBand1: TQRBand;
    QRLabel33: TQRLabel;
    QRLabel1: TQRLabel;
    QRImage1: TQRImage;
    Texto: TQRMemo;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    Titulo: TQRLabel;
    QRShape1: TQRShape;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    DataExt: TQRECC_DataExtenso;
    Total: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRShape2: TQRShape;
    QRLabel6: TQRLabel;
    ValorExt: TQRECC_ValorExtenso;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    ValorJan: TQRLabel;
    ibqryIqCursinho: TIBQuery;
    intgrfldIqCursinhoCursinho: TIntegerField;
    dsCursinho: TDataSource;
    QRLabel9: TQRLabel;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  Doc_IRDeclQR: TDoc_IRDeclQR;
  Tot0, Tot1 : currency;

implementation

uses UDM, UCad_Alunos, UMenu;

{$R *.DFM}

procedure TDoc_IRDeclQR.QRBand1BeforePrint(Sender: TQRCustomBand;  var PrintBand: Boolean);
var Txt0 : String;
    dia, mes, ano, diaatual, mesatual, anoatual :word;

begin
  Tot0 := 0;

  ibqryIqCursinho.Close; //Busca para ver se o aluno é do cursinho ou não
  ibqryIqCursinho.ParamByName('rgm').Value := dm.AlunosCODIGO.Value;
  ibqryIqCursinho.Open;
  Txt0 := Texto.Lines.Text;
  DecodeDate(DM.AlunosDATA_MATRICULA.Value, ano, mes, dia);
  DecodeDate(Now, anoatual, mesatual, anoatual);
  if (intgrfldIqCursinhoCursinho.Value <> 1) then
  begin
      Txt0 := Texto.Lines.Text;
      Txt0 := StringReplace(Txt0, '{CURSO}', 'escolares', [rfReplaceAll]);
  end else   Txt0 := StringReplace(Txt0, '{CURSO}', 'do curso extensivo', [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{SACADO}', DM.AlunosSACADO.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{ANO}', DM.AlunosANO.Text, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{CPF}', DM.AlunosSACADO_CPF.Text, [rfReplaceAll]);
  Texto.Lines.Text := Txt0;
  DecodeDate(DM.AlunosDATA_MATRICULA.Value, ano, mes, dia);
  DecodeDate(Now, anoatual, mesatual, anoatual);
  Txt0 := Texto.Lines.Text;
  Txt0 := StringReplace(Txt0, '{SACADO}', DM.AlunosSACADO.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{ANO}', DM.AlunosANO.Text, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{CPF}', DM.AlunosSACADO_CPF.Text, [rfReplaceAll]);
  Texto.Lines.Text := Txt0;
  DataExt.Data := Cad_Alunos.DataDoc.Date;
  begin
    case DM.AlunosSERIE.Value of
      1 : Tot0 := DM.ParametrosMENSALIDADE_1.Value;
      2 : Tot0 := DM.ParametrosMENSALIDADE_2.Value;
      3 : Tot0 := DM.ParametrosMENSALIDADE_3.Value;
    end;
    if (mes < 3) or (ano < StrToInt(Principal.Ano.Caption)) then
     ValorJan.Caption := FormatFloat('R$ ,.00',Tot0)
    else
     begin
      ValorJan.Enabled := False;
     end;
//  QRImage1.Picture.LoadFromFile(dm.ParametrosCaminho.Value);
end;
end;

procedure TDoc_IRDeclQR.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
      Tot0 := Tot0 + DM.BloquetosQVALOR_PAGO.Value;
end;

procedure TDoc_IRDeclQR.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Total.Caption := FormatFloat('R$ ,.00',Tot0);
  ValorExt.Valor := Tot0;
end;

end.
