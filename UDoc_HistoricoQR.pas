unit UDoc_HistoricoQR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, QrAngLbl, Db,
  IBCustomDataSet, IBQuery, ECC_Extenso, ECC_Justifica, jpeg;

type
  TDoc_HistoricoQR = class(TQuickRep)
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    DataExt: TQRECC_DataExtenso;
    QRDBText1: TQRDBText;
    QRDBText8: TQRDBText;
    QRShape8: TQRShape;
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
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
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
    QRLabel5: TQRLabel;
    QRShape28: TQRShape;
    QRShape30: TQRShape;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    N1: TQRLabel;
    N2: TQRLabel;
    N3: TQRLabel;
    Ch1: TQRLabel;
    Ch3: TQRLabel;
    Ch2: TQRLabel;
    QRLabel6: TQRLabel;
    QRes1: TQRLabel;
    QRes2: TQRLabel;
    QRes3: TQRLabel;
    QRShape32: TQRShape;
    QRExpr3: TQRExpr;
    QRBand1: TQRBand;
    Texto: TQRMemo;
    QRLabel2: TQRLabel;
    NascExt: TQRECC_DataExtenso;
    Titulo: TQRLabel;
    QRShape1: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel14: TQRLabel;
    QRShape7: TQRShape;
    QRLabel24: TQRLabel;
    QRShape5: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape6: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel25: TQRLabel;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRLabel1: TQRLabel;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private

  public

  end;

var
  Doc_HistoricoQR: TDoc_HistoricoQR;
  CursX : Array[1..20] of String;
  CursY : Array[1..20] of String;
  CursZ : Array[1..20] of String;  
  i : integer;

implementation

uses UDM, UCad_Alunos, UMenu;

{$R *.DFM}

procedure TDoc_HistoricoQR.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  CursX[1] := 'C  ';
  CursX[2] := 'U  ';
  CursX[3] := 'R  ';
  CursX[4] := 'S  ';
  CursX[5] := 'A  ';
  CursX[6] := 'N  ';
  CursX[7] := 'D  ';
  CursX[8] := 'O  ';
  CursX[9] := '-  ';
  CursX[10] := '-  ';
  CursX[11] := '-  ';
  CursX[12] := '-  ';
  CursX[13] := '-  ';
  CursX[14] := '-  ';
  CursX[15] := '-  ';
  CursX[16] := '-  ';
  CursX[17] := '-  ';
  CursX[18] := '-  ';
  CursX[19] := '-  ';
  CursX[20] := '-  ';
  i := 1;
  CursY[1] := 'A  ';
  CursY[2] := 'N  ';
  CursY[3] := 'E  ';
  CursY[4] := 'X  ';
  CursY[5] := 'O  ';
  CursY[6] := 'S  ';
  CursY[7] := '-  ';
  CursY[8] := '-  ';
  CursY[9] := '-  ';
  CursY[10] := '-  ';
  CursY[11] := '-  ';
  CursY[12] := '-  ';
  CursY[13] := '-  ';
  CursY[14] := '-  ';
  CursY[15] := '-  ';
  CursY[16] := '-  ';
  CursY[17] := '-  ';
  CursY[18] := '-  ';
  CursY[19] := '-  ';
  CursY[20] := '-  ';
  i := 1;
  CursZ[1] := 'M  ';
  CursZ[2] := 'A  ';
  CursZ[3] := 'T  ';
  CursZ[4] := 'R  ';
  CursZ[5] := 'I  ';
  CursZ[6] := 'C  ';
  CursZ[7] := 'U  ';
  CursZ[8] := 'L  ';
  CursZ[9] := 'A  ';
  CursZ[10] :='D  ';
  CursZ[11] :='O  ';
  CursZ[12] := '-  ';
  CursZ[13] := '-  ';
  CursZ[14] := '-  ';
  CursZ[15] := '-  ';
  CursZ[16] := '-  ';
  CursZ[17] := '-  ';
  CursZ[18] := '-  ';
  CursZ[19] := '-  ';
  CursZ[20] := '-  ';
  i := 1;


end;

procedure TDoc_HistoricoQR.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var Txt0,Txt1,Txt2,Txt3, Resultado : String;
begin
  Txt1 := 'Certificamos que {NOME} ID:{ID}, filh{AO} de {PAI_NOME} e de {MAE_NOME}, natural de {NASC_CIDADE}, nascid{AO} em {DATA_EXTENSO}, ';
  Txt2:= 'foi considerad{AO} {RESULTADO} na {SERIE_EXT} Série do Ensino Médio, nos termos da Lei nº 7.044 de 18/10/1982 e Lei nº 9.394 ';
  Txt3 := 'de 20/12/1996, conforme os resultados constantes no Histórico Escolar abaixo:';
  Txt0 := DM.ParametrosTEXTO_HISTORICO.Value;
  if  (Doc_HistoricoQR.Titulo.Caption = 'Guia de Transferência') then
         Txt0 :=  Txt1 + Txt2 + Txt3;
  NascExt.Data := DM.AlunosNASC_DATA.Value;
  if DM.AlunosSEXO.Value = 'M' then
    case Cad_Alunos.RadioGroup2.ItemIndex of
      0 : Resultado := 'APROVADO';
      1 : Resultado := 'REPROVADO';
      2 : Resultado := 'CURSANDO';
      3 : Resultado := 'DESISTENTE';
      5 : Resultado := 'MATRICULADO';
    end
   else
    case Cad_Alunos.RadioGroup2.ItemIndex of
      0 : Resultado := 'APROVADA';
      1 : Resultado := 'REPROVADA';
      2 : Resultado := 'CURSANDO';
      3 : Resultado := 'DESISTENTE';
      5 : Resultado := 'MATRICULADA';      
    end;
  Txt0 := StringReplace(Txt0, '{NOME}', DM.AlunosNOME.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{ID}', DM.AlunosID.AsString, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{PAI_NOME}', DM.AlunosPAI_NOME.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{MAE_NOME}', DM.AlunosMAE_NOME.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{NASC_CIDADE}',
     DM.AlunosNASC_CIDADE.Value+'-'+DM.AlunosNASC_UF.Value, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{DATA_EXTENSO}', NascExt.Caption, [rfReplaceAll]);
  Txt0 := StringReplace(Txt0, '{RESULTADO}', Resultado, [rfReplaceAll]);
  if DM.AlunosSEXO.Value = 'M' then
    Txt0 := StringReplace(Txt0, '{AO}', 'o', [rfReplaceAll])
   else
    Txt0 := StringReplace(Txt0, '{AO}', 'a', [rfReplaceAll]);
    Txt0 := StringReplace(Txt0, '{SERIE_EXT}', DM.AlunosSERIE.AsString+'ª', [rfReplaceAll]);
    Txt0 := StringReplace(Txt0, '01º', '1º', [rfReplaceAll]);
    Texto.Lines.Text := Txt0;
    DataExt.Data := Cad_Alunos.DataHist.Date;
end;

procedure TDoc_HistoricoQR.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if (DM.HistNotasNOTA1.IsNull) then N1.Caption := '---'
    else N1.Caption := DM.HistNotasNOTA1.DisplayText;
  if (DM.HistNotasNOTA2.IsNull) then  N2.Caption := '---'
    else N2.Caption := DM.HistNotasNOTA2.DisplayText;
  if (DM.HistNotasNOTA3.IsNull) then N3.Caption := '---'
    else N3.Caption := DM.HistNotasNOTA3.DisplayText;


  dm.Alunos.close;
  dm.Alunos.SelectSQL.Strings[2] := 'where Codigo = :Bcodigo';
  dm.Alunos.ParamByName('Bcodigo').Value := dm.HistNotasCODIGO.Value;
  dm.Alunos.Open;


  if ((dm.AlunosMOD_ESPORTIVA.Value = 'DME') and (dm.HistNotasDISCIPLINA.Value = 10)) then
  Begin
    if DM.HistNotasDISCIPLINA.Value = 10 then
       Begin
       if not dm.HistNotasNOTA1.IsNull then  N1.Caption := 'DM';
       if not dm.HistNotasNOTA2.IsNull then  N2.Caption := 'DM';
       if not dm.HistNotasNOTA3.IsNull then  N3.Caption := 'DM';
    end;
  End
  Else
    Begin
    if DM.HistNotasCH1.IsNull then
    Begin
     Ch1.Caption := '---';
    // QRExpr1.Enabled:=False;
    end
    else Ch1.Caption := DM.HistNotasCH1.DisplayText;
    if DM.HistNotasCH2.IsNull then
    Begin
       Ch2.Caption := '---';
      // QRExpr2.Enabled:=False;
    end
      else Ch2.Caption := DM.HistNotasCH2.DisplayText;
    if DM.HistNotasCH3.IsNull then
    Begin
       Ch3.Caption := '---';
  //     QRExpr3.Enabled:=False;
    end
      else Ch3.Caption := DM.HistNotasCH3.DisplayText;
    if Cad_Alunos.RadioGroup2.ItemIndex = 2 then begin
      if DM.AlunosSERIE.Value = 1 then N1.Caption := CursX[i];
      if DM.AlunosSERIE.Value = 2 then N2.Caption := CursX[i];
      if DM.AlunosSERIE.Value = 3 then N3.Caption := CursX[i];
      Inc(i); end;
    if Cad_Alunos.RadioGroup2.ItemIndex = 4 then begin
      if DM.AlunosSERIE.Value = 1 then N1.Caption := CursY[i];
      if DM.AlunosSERIE.Value = 2 then N2.Caption := CursY[i];
      if DM.AlunosSERIE.Value = 3 then N3.Caption := CursY[i];
      Inc(i); end;
    if Cad_Alunos.RadioGroup2.ItemIndex = 5 then begin
      if DM.AlunosSERIE.Value = 1 then N1.Caption := CursZ[i];
      if DM.AlunosSERIE.Value = 2 then N2.Caption := CursZ[i];
      if DM.AlunosSERIE.Value = 3 then N3.Caption := CursZ[i];
      Inc(i); end;
    If Cad_Alunos.CheckBox1.Checked = True Then
      begin
        If (DM.HistNotasNOTA1.Value <= 5) Then
          N1.Caption := 'D'; //Insufisiente
        if (DM.HistNotasNOTA1.Value > 5) and (DM.HistNotasNOTA1.Value <= 6.5) then
            N1.Caption := 'C';
        if (DM.HistNotasNOTA1.Value > 6.5) and (DM.HistNotasNOTA1.Value <= 7) then
           N1.Caption := 'S';//Mudar para B depois da Deja terminar 27/09/2005
        If (DM.HistNotasNOTA1.Value > 7) Then
            N1.Caption := 'MB';
        if (DM.HistNotasNOTA1.IsNull) then
           N1.Caption := '---';
       end;
    If Cad_Alunos.CheckBox2.Checked = True Then
      begin
        If (DM.HistNotasNOTA2.Value <= 5) Then
          N2.Caption := 'D';
        if (DM.HistNotasNOTA2.Value > 5) and (DM.HistNotasNOTA2.Value <= 6.5) then
            N2.Caption := 'C';
        if (DM.HistNotasNOTA2.Value > 6.5) and (DM.HistNotasNOTA2.Value <= 7) then
           N2.Caption := 'B';
        If (DM.HistNotasNOTA2.Value > 7) Then
            N2.Caption := 'MB';
        if (DM.HistNotasNOTA2.IsNull) then
           N2.Caption := '---';
       end;
    If Cad_Alunos.CheckBox3.Checked = True Then
      begin
        If (DM.HistNotasNOTA3.Value <= 5) Then
          N3.Caption := 'D';
        if (DM.HistNotasNOTA3.Value > 5) and (DM.HistNotasNOTA3.Value <= 6.5) then
            N1.Caption := 'C';
        if (DM.HistNotasNOTA3.Value > 6.5) and (DM.HistNotasNOTA3.Value <= 7) then
           N3.Caption := 'B';
        If (DM.HistNotasNOTA3.Value > 7) Then
            N3.Caption := 'MB';
        if (DM.HistNotasNOTA3.IsNull) then
           N3.Caption := '---';
       end;
      if DM.AlunosSEXO.Value = 'M' then
      case Cad_Alunos.Resultado1.ItemIndex of
        0 : QRes1.Caption := ''  ;
        1 : QRes1.Caption := 'Aprovado';
        2 : QRes1.Caption := 'Reprovado ';
        3 : QRes1.Caption := 'Cursando';
        4 : QRes1.Caption := 'Matriculado';
      end
      else
      case Cad_Alunos.Resultado1.ItemIndex of
        0 : QRes1.Caption := '';
        1 : QRes1.Caption := 'Aprovada';
        2 : QRes1.Caption := 'Reprovada';
        3 : QRes1.Caption := 'Cursando';
        4 : QRes1.Caption := 'Matriculado';
      end;
      if DM.AlunosSEXO.Value = 'M' then
      case Cad_Alunos.Resultado2.ItemIndex of
        0 : QRes2.Caption := '' ;
        1 : QRes2.Caption := 'Aprovado';
        2 : QRes2.Caption := 'Reprovado';
        3 : QRes2.Caption := 'Cursando';
        4 : QRes2.Caption := 'Matriculado';
      end
      else
      case Cad_Alunos.Resultado2.ItemIndex of
        0 : QRes2.Caption := '';
        1 : QRes2.Caption := 'Aprovada';
        2 : QRes2.Caption := 'Reprovada';
        3 : QRes2.Caption := 'Cursando';
        4 : QRes2.Caption := 'Matriculado';
      end;
      if DM.AlunosSEXO.Value = 'M' then
      case Cad_Alunos.Resultado3.ItemIndex of
        0 : QRes3.Caption := ''  ;
        1 : QRes3.Caption := 'Aprovado';
        2 : QRes3.Caption := 'Reprovado';
        3 : QRes3.Caption := 'Cursando';
        4 : QRes3.Caption := 'Matriculado';
      end
      else
      case Cad_Alunos.Resultado3.ItemIndex of
        0 : QRes3.Caption := '';
        1 : QRes3.Caption := 'Aprovada';
        2 : QRes3.Caption := 'Reprovada';
        3 : QRes3.Caption := 'Cursando';
        4 : QRes3.Caption := 'Matriculado';
      end;
     End;
end;
procedure TDoc_HistoricoQR.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  if QRBand2.Color = clWhite Then
     QRBand2.Color := clSilver
     Else
     QRBand2.Color := clWhite;
end;

end.

