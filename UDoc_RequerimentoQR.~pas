unit UDoc_RequerimentoQR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, QrAngLbl, Db,
  IBCustomDataSet, IBQuery, ECC_Extenso, ECC_Justifica, jpeg;

type
  TDoc_RequerimentoQR = class(TQuickRep)
    QRBand1: TQRBand;
    QRLabel33: TQRLabel;
    QRLabel1: TQRLabel;
    Ano: TQRLabel;
    QRShape2: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText1: TQRDBText;
    DataExt: TQRECC_DataExtenso;
    QRImage1: TQRImage;
    Texto: TQRMemo;
    QRLabel7: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape1: TQRShape;
    educacionais: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    QRShape3: TQRShape;
    QRLabel8: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel9: TQRLabel;
    qrlblEx: TQRLabel;
    qrID: TQRDBText;
    qrm1: TQRMemo;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  Doc_RequerimentoQR: TDoc_RequerimentoQR;

implementation

uses UDM, UCad_Alunos, UMenu;

{$R *.DFM}

procedure TDoc_RequerimentoQR.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var Txt0,PeriodoX : String;
begin
  case Cad_Alunos.ConsTurmaPERIODO.Value of
    1 : PeriodoX := 'Matutino';
    2 : PeriodoX := 'Vespertino';
    3 : PeriodoX := 'Noturno';
  end;
  Ano.Caption := 'Ano: '+Principal.Ano.Caption;
  Txt0 := DM.ParametrosTEXTO_REQUERIMENTO.Value;
  if DM.AlunosSEXO.Value = 'M' then Txt0 := StringReplace(Txt0, '{ALUNO}', 'O aluno ', []);
  if DM.AlunosSEXO.Value = 'F' then Txt0 := StringReplace(Txt0, '{ALUNO}', 'A aluna ', []);
  Txt0 := StringReplace(Txt0, '{NOME}', DM.AlunosNOME.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{NUMERO}', DM.AlunosCODIGO.AsString, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{PAI_NOME}', DM.AlunosPAI_NOME.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{PAI_PROFISSAO}', DM.AlunosPAI_PROFISSAO.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{MAE_NOME}', DM.AlunosMAE_NOME.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{MAE_PROFISSAO}', DM.AlunosMAE_PROFISSAO.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{NASC_DATA}', DM.DataExtS(DM.AlunosNASC_DATA.Value), [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{NASC_CIDADE}', DM.AlunosNASC_CIDADE.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{NASC_UF}', DM.AlunosNASC_UF.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{CIDADE}', DM.AlunosCIDADE.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{ENDERECO}', DM.AlunosENDERECO.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{NUMERO_CASA}', DM.AlunosNUMERO.Text, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{BAIRRO}', DM.AlunosBAIRRO.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{UF}', DM.AlunosUF.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{CEP}', DM.AlunosCEP.DisplayText, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{FONE}', DM.AlunosTEL_RESIDENCIAL.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{RG}', DM.AlunosRG.Value, [rfReplaceAll]);
  if Cad_Alunos.ConsTurmaCURSINHO.Value = 0 then
  begin
    Txt0 := StringReplace(Txt0, '{SERIE_EXT}', 'na '+DM.AlunosSERIE.AsString+'ª série do Ensino Médio', [rfReplaceAll]);
    qrlblEx.Enabled := False;
  end
   else
   begin
    Txt0 := StringReplace(Txt0, '{SERIE_EXT}', 'no Extensivo', [rfReplaceAll]);
    qrlblEx.Enabled := True;
   end;
  Txt0 := StringReplace(Txt0, '{TURNO}', PeriodoX, [rfReplaceAll]);
  Texto.Lines.Text := Txt0;
  DataExt.Data := Cad_Alunos.DataDoc.Date;
  if dm.AlunosEDU_ESPECIAL.Value ='S' Then
     educacionais.Caption := '(X) SIM     ( ) NÃO'
     Else
     educacionais.Caption := '( ) SIM     (X) NÃO';
  {if dm.AlunosOPCAO_ESPANHOL.Value = 'S' Then
     Espanhol.Caption := 'Sim (X)  Não ( )'
     Else
      Espanhol.Caption := 'Sim ( )  Não (X)';}
end;

end.
