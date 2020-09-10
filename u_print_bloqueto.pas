unit u_print_bloqueto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLBarcode, RxGIF, DB, IBCustomDataSet, IBQuery,
  RLFilters, RLPDFFilter, jpeg;

type
  TfPrintBloqueto = class(TForm)
    RLReport1: TRLReport;
    RLBand3: TRLBand;
    RLDraw50: TRLDraw;
    RLDraw49: TRLDraw;
    RLDraw48: TRLDraw;
    RLDraw47: TRLDraw;
    RLDraw46: TRLDraw;
    RLDraw45: TRLDraw;
    RLDraw44: TRLDraw;
    RLDraw43: TRLDraw;
    RLDraw42: TRLDraw;
    RLDraw41: TRLDraw;
    RLDraw40: TRLDraw;
    RLDraw36: TRLDraw;
    RLDraw35: TRLDraw;
    RLDraw33: TRLDraw;
    imgBanco3: TRLImage;
    RLDraw81: TRLDraw;
    RLDraw82: TRLDraw;
    txtNumeroBanco3: TRLLabel;
    RLLabel145: TRLLabel;
    txtLocalPagamento3: TRLLabel;
    RLLabel146: TRLLabel;
    RLDraw83: TRLDraw;
    RLLabel147: TRLLabel;
    txtNomeCedente3: TRLLabel;
    RLLabel148: TRLLabel;
    txtCodigoCedente3: TRLLabel;
    RLLabel149: TRLLabel;
    RLLabel150: TRLLabel;
    RLLabel151: TRLLabel;
    txtEspecieDoc3: TRLLabel;
    RLLabel152: TRLLabel;
    txtAceite3: TRLLabel;
    RLLabel153: TRLLabel;
    RLLabel154: TRLLabel;
    RLLabel155: TRLLabel;
    RLLabel156: TRLLabel;
    txtCarteira3: TRLLabel;
    RLLabel157: TRLLabel;
    txtEspecie3: TRLLabel;
    RLLabel158: TRLLabel;
    RLLabel159: TRLLabel;
    RLLabel160: TRLLabel;
    RLLabel161: TRLLabel;
    RLLabel162: TRLLabel;
    RLLabel163: TRLLabel;
    RLLabel164: TRLLabel;
    RLLabel165: TRLLabel;
    RLLabel168: TRLLabel;
    RLLabel170: TRLLabel;
    RLLabel175: TRLLabel;
    RLDraw1: TRLDraw;
    RLImage1: TRLImage;
    RLDraw2: TRLDraw;
    RLLabel1: TRLLabel;
    RLDraw3: TRLDraw;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLDraw7: TRLDraw;
    RLDraw8: TRLDraw;
    RLDraw9: TRLDraw;
    RLDraw10: TRLDraw;
    RLDraw11: TRLDraw;
    RLDraw12: TRLDraw;
    RLDraw13: TRLDraw;
    RLDraw14: TRLDraw;
    RLDraw16: TRLDraw;
    RLDraw17: TRLDraw;
    RLLabel4: TRLLabel;
    RLDBText1: TRLDBText;
    RLDraw18: TRLDraw;
    RLLabel5: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDraw19: TRLDraw;
    RLDBText6: TRLDBText;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBText9: TRLDBText;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel20: TRLLabel;
    RLDraw15: TRLDraw;
    RLDraw20: TRLDraw;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLDraw21: TRLDraw;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    RLDBText23: TRLDBText;
    RLDraw22: TRLDraw;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLDraw23: TRLDraw;
    RLDBBarcode1: TRLDBBarcode;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText24: TRLDBText;
    RLPDFFilter1: TRLPDFFilter;
    RLLabel17: TRLLabel;
    RLDBText13: TRLDBText;
    MENSAGEM1: TRLLabel;
    MENSAGEM2: TRLLabel;
    MENSAGEM3: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText14: TRLDBText;
    RLLabel18: TRLLabel;
    RLDBText25: TRLDBText;
    RLLabel19: TRLLabel;
    RLLabel23: TRLLabel;
    RLDBText26: TRLDBText;
    RLLabel24: TRLLabel;
    porcentagem: TRLLabel;
    RLDBText28: TRLDBText;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLDraw24: TRLDraw;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel25: TRLLabel;
    RLDraw25: TRLDraw;
    RLDBText33: TRLDBText;
    RLLabel37: TRLLabel;
    RLDBText34: TRLDBText;
    RLDBText27: TRLDBText;
    RLDBText20: TRLDBText;
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrintBloqueto: TfPrintBloqueto;

implementation

uses UDM, UMenu;

{$R *.dfm}

procedure TfPrintBloqueto.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
  Var ano, mes, dia, a_ano, a_mes, a_dia, l_ano, l_mes, l_dia :word;
  mzero, nzero  :string;
begin
  MENSAGEM2.Visible := True;
  MENSAGEM3.Visible := True;
  RLDBText27.Visible := True;
  RLDBText14.Visible := True;
  RLDBText1.Visible := True;
  RLLabel24.Visible := True;
  porcentagem.Visible := True;
  RLLabel27.Visible := True;
  if (((principal.Ano.Caption = '2012') or (principal.Ano.Caption = '2013') or (Principal.Ano.Caption = '2014') or (Principal.Ano.Caption = '2015') or (Principal.Ano.Caption = '2016') or (Principal.Ano.Caption = '2017') or (Principal.Ano.Caption = '2018') or (Principal.Ano.Caption = '2019') or (Principal.Ano.Caption = '2020'))) then
   Begin
    Decodedate(dm.BloquetosQVENCIMENTO.Value, ano, mes, dia);
    DecodeDate(dm.BloquetosQDATA_LIMITE.Value, l_ano, l_mes, l_dia);
    Decodedate(now, a_ano, a_mes, a_dia);
    if l_mes < 10 then
       mzero := '0' + InttoStr(l_mes)
       else
       mzero := IntToStr(l_mes);

      if l_dia < 10 then
       nzero := '0' + InttoStr(l_dia)
       else
       nzero := IntToStr(l_dia);

    {if a_mes = 2 then
     Begin
          MENSAGEM1.Caption := DM.ParametrosMENSAGEM1.Value +' '+ dm.ParametrosVCTOFEVEREIRO.AsString + '/'+ mzero + '/' + IntToStr(ano) + '     R$ ' +  FormatFloat('#,,0.00',DM.BloquetosQVALOR_ANT.Value);
          MENSAGEM2.Caption := DM.ParametrosMENSAGEM2.Value + '  ' + FormatDateTime('dd/mm/yyyy',DM.BloquetosQVENCIMENTO.Value) + '     R$ ' + FormatFloat('#,,0.00',dm.BloquetosQVALOR.Value);
          MENSAGEM3.Caption := DM.ParametrosMENSAGEM3.Value + ' ' + FormatDateTime('dd/mm/yyyy',DM.BloquetosQVENCIMENTO.Value) + '     R$ ' + FormatFloat('#,,0.00',dm.BloquetosQVALOR.Value) + ' + MULTA DE 2% +';
     End
    Else}
    if (dm.AlunosVENCIMENTO.IsNull) then
      Begin
        MENSAGEM1.Caption := DM.ParametrosMENSAGEM1.Value + nzero +'/'+ mzero + '/' + IntToStr(ano) + '    R$ ' +  FormatFloat('#,,0.00',DM.BloquetosQVALOR_ANT.Value);
        MENSAGEM2.Caption := DM.ParametrosMENSAGEM2.Value + '  ' + FormatDateTime('dd/mm/yyyy',DM.BloquetosQVENCIMENTO.Value) + '     R$ ' + FormatFloat('#,,0.00',dm.BloquetosQVALOR.Value);
        MENSAGEM3.Caption := DM.ParametrosMENSAGEM3.Value + ' ' + FormatDateTime('dd/mm/yyyy', DM.BloquetosQVENCIMENTO.Value) + '     R$ ' + FormatFloat('#,,0.00',dm.BloquetosQVALOR.Value) + ' + MULTA DE 2% +';
      end else
      Begin
        MENSAGEM1.Caption := DM.ParametrosMENSAGEM1.Value + dm.AlunosVencimento.asString + '/'+ mzero + '/' + IntToStr(ano) + '    R$ ' +  FormatFloat('#,,0.00',DM.BloquetosQVALOR_ANT.Value);
        MENSAGEM2.Caption := DM.ParametrosMENSAGEM2.Value + '  ' + FormatDateTime('dd/mm/yyyy',DM.BloquetosQVENCIMENTO.Value) + '     R$ ' + FormatFloat('#,,0.00',dm.BloquetosQVALOR.Value);
        MENSAGEM3.Caption := DM.ParametrosMENSAGEM3.Value + ' ' + FormatDateTime('dd/mm/yyyy', DM.BloquetosQVENCIMENTO.Value) + '     R$ ' + FormatFloat('#,,0.00',dm.BloquetosQVALOR.Value) + ' + MULTA DE 2% +';
      end;
   end;

      if ((principal.Ano.Caption = '2019') and (dm.BloquetosQPARCELA.Value = 1))  then
       Begin
        MENSAGEM1.Caption := '  PAGAMENTO REFERENTE A MATRICULA-2019';
        MENSAGEM2.Visible := False;
        MENSAGEM3.Visible := False;
        RLDBText27.Visible := False;
        RLDBText14.Visible := False;
        RLDBText1.Visible := False;
        RLLabel24.Visible := False;
        porcentagem.Visible := False;
        RLLabel27.Visible := False;
        RLLabel18.Caption := 'Matricula';
       End;


   end;
end.
