unit Ufremessa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Grids, DBGrids, RXDBCtrl, RxLookup, Db, DateUtil,
  IBCustomDataSet, IBQuery, FileCtrl, Buttons, Mask, ToolEdit, ComCtrls,
  RxMemDS;

type
  Tfremesa = class(TForm)
    rgSL: TRadioGroup;                                                            
    lkComboNm: TRxDBLookupCombo;
    edtCD: TEdit;
    lbl1: TLabel;
    Label1: TLabel;
    Lista: TRxDBGrid;
    Label2: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dlgSave1: TSaveDialog;
    btn4: TBitBtn;
    edtFile1: TFilenameEdit;
    redt1: TRichEdit;
    procedure btn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lkComboNmChange(Sender: TObject);
    procedure ListaDblClick(Sender: TObject);
    procedure edtCDChange(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fremesa: Tfremesa;
  Qtdade : integer;
  Total : currency;
  descontoC : currency;

implementation

uses UDM, UDM2;

{$R *.DFM}


function RemoveAcento(Str: string): string;
const
  ComAcento = 'àâêôûãõáéíóúçüÀÂÊÔÛÃÕÁÉÍÓÚÇÜ';

  SemAcento = 'aaeouaoaeioucuAAEOUAOAEIOUCU';
var
   x: Integer;
begin;
  for x := 1 to Length(Str) do
  if Pos(Str[x],ComAcento) <> 0 then
    Str[x] := SemAcento[Pos(Str[x], ComAcento)];
  Result := Str;
end;





function inEspaco(str: string; tam: integer): string;
var x:integer;
begin
  for x:=0 to tam-(length(str)+1) do
  begin
    insert(' ',str,length(str)+1);
  end;
  inEspaco:=str;
end;


function DvMod11(var str0:string) : string;
const
   multiplicador : array [1..25] of integer = (2,3,4,5,6,7,8,9,2,3,4,5,6,7,8,9,2,3,4,5,6,7,8,9,0);
var
   soma,i  : integer;
begin
   soma := 0;
   str0 := Trim(str0); //Remove os espaços em branco
   For i := 1 To Length(str0) Do
    soma := soma + (multiplicador[i]*StrToInt(str0[Length(str0)+1-i]));
    soma := 11 - (soma mod 11);//Acha o digito verificador
   if soma > 9 then soma := 0;
   result := IntToStr(soma);
end;


function cod_mes(dataatual : TDate): string;
var _ano,_mes,_dia :Word;
    i_mes          :Integer;
    i_dia          :string;
begin
  DecodeDate(Now,_ano,_mes,_dia);
  i_mes := _mes;
  i_dia := FormatFloat('00',_dia);
  case i_mes of
     1 : Result := '1'+i_dia;
     2 : Result := '2'+i_dia;
     3 : Result := '3'+i_dia;
     4 : Result := '4'+i_dia;
     5 : Result := '5'+i_dia;
     6 : Result := '6'+i_dia;
     7 : Result := '7'+i_dia;
     8 : Result := '8'+i_dia;
     9 : Result := '9'+i_dia;
     10 : Result :='O'+i_dia;
     11 : Result := 'N'+i_dia;
     12 : Result := 'D'+i_dia;
  end;
end;


procedure Tfremesa.btn2Click(Sender: TObject);
begin
  Close;
end;

procedure Tfremesa.FormShow(Sender: TObject);
var sql2 :string;
begin
  dm.Alunos.SelectSQL.Strings[3] := 'order by nome';
  dm.Alunos.Open;


sql2 := 'select Blq.*, Alu.CODIGO, Alu.NOME, Alu.FONE,';
sql2 := sql2 + 'Alu.SERIE, Alu.TURMA, Alu.BOLSA, Alu.BOLSA_AD, Alu.sacado_cpf,';
sql2 := sql2 + 'Alu.cep, Alu.sacado, Alu.endereco';
sql2 := sql2 + ' from BLOQUETOS Blq join ALUNOS Alu on Blq.Aluno=Alu.codigo';
sql2 := sql2 + ' where Alu.CODIGO = :baluno';
//sql2 := sql2 + 'where blq.nosso_numero is not null';
//sql2 := sq2 +  'where Blq.st = ''S''';

dm.BloquetosQ.Close;
dm.BloquetosQ.SQL.Clear;
dm.BloquetosQ.SQL.Add(sql2);
dm.BloquetosQ.Open;



end;

procedure Tfremesa.lkComboNmChange(Sender: TObject);
begin
  dm.BloquetosQ.Close;
  dm.BloquetosQ.Params[0].Value := dm.AlunosCODIGO.Value;
  dm.BloquetosQ.Open;
end;

procedure Tfremesa.ListaDblClick(Sender: TObject);
begin
  dm.Bloquetos.Close;
  dm.Bloquetos.SelectSQL.Strings[2] := 'where NOSSO_NUMERO = :bbloqueto';
  dm.Bloquetos.Params[0].Value := dm.BloquetosQNOSSO_NUMERO.Value;
  dm.Bloquetos.Open;
  if not (dm.BloquetosNOSSO_NUMERO.IsNull) then
  begin
    dm.Bloquetos.Edit;
    dm.BloquetosST.Value := 'S';
    dm.Bloquetos.Post;
    dm.Bloquetos.Close;
    dm.Bloquetos.SelectSQL.Strings[2] := 'where NOSSO_NUMERO > 0';
  end;
  ShowMessage('O boleto '+ dm.BloquetosQNOSSO_NUMERO.AsString +' foi selecionado para envio');
end;

procedure Tfremesa.edtCDChange(Sender: TObject);
begin
  dm.BloquetosQ.Close;
  dm.BloquetosQ.Params[0].Value := edtCD.Text;
  dm.BloquetosQ.Open;
end;

procedure Tfremesa.btn3Click(Sender: TObject);
var i, u_dia :Integer;
    arq :TextFile;
    nomeArq, aux, _aux, _aux2, _aux3, _aux4, desconto, NossoNumX, datalimite     :string;
    sql1, sql2, NossoNumXCompleto, cpf, w_emissao, w_valor :string;
    y_valor, w_tipo, w_st, w_cep, w_inst, v_juros  :string;
    ano, mes, dia, r_ano, r_mes, r_dia, edia, emes, eano, ldia, lmes, lano :Word;
    vano, vmes, vdia :word;
begin
w_inst := ' ';
sql1 := 'where (Blq.ALUNO = Alu.CODIGO) ';
sql1 := sql1 + '   and (Blq.PARCELA >= :Parc1) and (Blq.PARCELA <= :Parc2) ';
sql1 := sql1 + '   and (Blq.NOSSO_NUMERO >= :Bloq1) ';

sql1 := sql1 + '   and (Blq.NOSSO_NUMERO <= :Bloq2)';
sql1 := sql1 + '   and (Blq.ALUNO = :Aluno)';
sql1 := sql1 + '   and (Alu.SERIE = :Serie)';
sql1 := sql1 + '   and (Alu.TURMA = :Turma)   ';

dm.Bloquetosq.SQL.Clear;





if (rgSL.ItemIndex = 0) then
begin
  sql2 := 'select Blq.*, Alu.CODIGO, Alu.NOME, Alu.FONE,';
  sql2 := sql2 + 'Alu.SERIE, Alu.TURMA, Alu.BOLSA, Alu.BOLSA_AD, Alu.sacado_cpf,';
  sql2 := sql2 + 'Alu.cep, Alu.sacado, Alu.endereco';
  sql2 := sql2 + ' from BLOQUETOS Blq join ALUNOS Alu on Blq.Aluno=Alu.codigo';
  sql2 := sql2 +  ' where Blq.ST = ''S''';
  sql2 := sql2 + 'order by Alu.CODIGO, Blq.PARCELA';

  dm.BloquetosQ.Close;
  dm.BloquetosQ.SQL.Add(sql2);
  dm.BloquetosQ.Open;


  w_tipo := '01';
//  w_st := 'E';
end;

if (rgSL.ItemIndex = 1) then
begin
  sql2 := 'select Blq.*, Alu.CODIGO, Alu.NOME, Alu.FONE,';
  sql2 := sql2 + 'Alu.SERIE, Alu.TURMA, Alu.BOLSA, Alu.BOLSA_AD, Alu.sacado_cpf,';
  sql2 := sql2 + 'Alu.cep, Alu.sacado, Alu.endereco';
  sql2 := sql2 + ' from BLOQUETOS Blq join ALUNOS Alu on Blq.Aluno=Alu.codigo';
  sql2 := sql2 +  ' where Blq.ST = ''B''';
  sql2 := sql2 + 'order by Alu.CODIGO, Blq.PARCELA';

  dm.BloquetosQ.Close;
  dm.BloquetosQ.SQL.Add(sql2);
  dm.BloquetosQ.Open;

   w_tipo := '02';
  // w_st := 'B';
end;

if (rgSL.ItemIndex = 2) then w_tipo := '06';
if (rgSL.ItemIndex = 3) then  w_tipo := '05';

if (rgSL.ItemIndex = 4) then
begin
 w_tipo := '31';
 w_inst :=  InputBox('Instrução','Digite a instrução que deseja alterar.','Instrução.');
end;


if not (dm.BloquetosQNOSSO_NUMERO.IsNull) Then
Begin
  DecodeDate(Now, ano, mes, dia);
  DM2.iqParametros_B.Open;
  DecodeDate(dm2.iqParametros_BDATA_REMESSA.Value, r_ano, r_mes, r_dia);
  begin
    if (((ano<>r_ano) or (mes<>r_mes) or (dia<>r_dia)) or (dm2.iqParametros_BDATA_REMESSA.IsNull)) then
    Begin
      dm2.iqParametros_B.Edit;
      dm2.iqParametros_BDATA_REMESSA.Value := Now;
      dm2.iqParametros_BCONT_ARQ.Value := 1;
      DM2.iqParametros_BCONT_REMESSA.Value := DM2.iqParametros_BCONT_REMESSA.Value + 1;
      dm2.iqParametros_B.Post;
    end
    else if (((ano=r_ano) or (mes=r_mes) or (dia=r_dia)) and (not dm2.iqParametros_BDATA_REMESSA.IsNull)) then
      begin
        dm2.iqParametros_B.Edit;
        dm2.iqParametros_BCONT_ARQ.Value := dm2.iqParametros_BCONT_ARQ.Value + 1;
        DM2.iqParametros_BCONT_REMESSA.Value := DM2.iqParametros_BCONT_REMESSA.Value + 1;
        dm2.iqParametros_B.Post;
      end;


      i := 2;
    if not DirectoryExists('C:\Anglo\Remessa\'+IntToStr(ano)) then
      Begin
       ForceDirectories('C:\Anglo\Remessa\'+IntToStr(ano));
       ShowMessage('Pasta C:\Anglo\Remessa\'+IntToStr(ano)+ ' criada com sucesso.');
      end;


      if (dm2.iqParametros_BCONT_ARQ.Value = 1) then  nomeArq := '26431'+ cod_mes(Now)+'.CRM'
      Else nomeArq := '26431'+ cod_mes(Now)+'.RM'+ dm2.iqParametros_BCONT_ARQ.AsString;

      dlgSave1.FileName := nomeArq;
      dlgSave1.InitialDir := 'C:\Anglo\Remessa'+IntToStr(ano);
      dlgSave1.Execute;


      AssignFile(arq, nomeArq);
      Rewrite(arq);
  //Header Label
      aux := '01REMESSA01COBRANCA       2643103361110000177                               748SICREDI        ';
      _aux := FormatDateTime('YYYYMMDD',Now);
      aux := aux + _aux + '        '+FormatFloat('0000000',dm2.iqParametros_BCONT_REMESSA.Value);
      aux := aux+'                                                                                           '; //91
      aux := aux+'                                                                                           '; //91
      aux := aux+'                                                                                           '; //91
      aux := aux + '2.00000001';
      Writeln(arq,aux);
  //fim Header Label

  //Inicio Detalhe ******************************************************************************************************

      begin
        dm.BloquetosQ.Open;
        dm.BloquetosQ.First;
        while (not dm.BloquetosQ.Eof)  do
//        if (dm.BloquetosQST.Value = 'S') then
        begin
            _aux2 := FormatDateTime('YYYYMMDD',Now);

            NossoNumX := DM.BloquetosQANO_DV.Value+'2'+FormatFloat('00000',DM.BloquetosQNOSSO_NUMERO.Value);
            NossoNumXCompleto := '0903'+'02'+'26431'+NossoNumX;
            NossoNumX := NossoNumX+DvMod11(NossoNumXCompleto);

            DecodeDate(dm.BloquetosQDATA_LIMITE.Value, lano,lmes, ldia);
            DecodeDate(dm.BloquetosQVENCIMENTO.Value, vano, vmes, vdia);
            u_dia := DaysPerMonth(ano,mes);   //pega o total de dias do mês
  //          _aux3:= IntToStr(dia)+FormatFloat('00',mes)+ Copy(IntToStr(ano),3,2);
            // if (mes = 2) then //se o mês for fevereiro a concessão de desconto vai para o dia 20
           //      _aux3:= '20'+FormatFloat('00',mes)+ Copy(IntToStr(ano),3,2)
              //   else
                 if (dm.AlunosVENCIMENTO.IsNull) then
                     _aux3 :=   FormatFloat('00',ldia) + FormatFloat('00',lmes)+ Copy(intTostr(lano),3,2)
                     else _aux3:= dm.AlunosVENCIMENTO.AsString + FormatFloat('00',mes)+ Copy(IntToStr(ano),3,2);

                       datalimite := StringReplace (_aux3, '/','',[rfReplaceAll]);

                       if dm.BloquetosQDATA_LIMITE.IsNull then
                          datalimite := '000000';





          {  descontoC := dm.BloquetosQDESCONTO.Value;

            if not (dm.BloquetosQDESCONTO.IsNull) or not (dm.BloquetosQNEGOCIACAO.IsNull) Then
            begin
            desconto := FloatToStrf(descontoC,ffCurrency,9,2);
            desconto := FormatFloat('#,,0.00',descontoC);
            desconto := StringReplace(desconto, ',','',[rfReplaceAll]);
            desconto := StringReplace(desconto, '-','',[rfReplaceAll]);
            desconto := FormatFloat('0000000000000',StrToInt(desconto)); end
            else if dm.BloquetosQNegociacao.isnull then
             desconto := FloatToStr((dm.BloquetosQVALOR.Value * dm.ParametrosREAJUSTE_3.Value)/100);}




            _aux4 := FormatFloat('00',vdia) + FormatFloat('00',vmes)+ Copy(intTostr(vano),3,2);
            //IntToStr(u_dia)+FormatFloat('00',mes)+ Copy(IntToStr(ano),3,2);


            DecodeDate(dm.BloquetosQEMISSAO.Value,eano,emes,edia);
            w_emissao := FormatFloat('00',edia)+FormatFloat('00',(emes))+Copy(IntTostr(eano),3,2);
            _aux := Copy(IntToStr(ano),3,2);



            aux := '1AAA            AAA                            ';
            //01 a 047

            aux := aux+NossoNumX;
            //048 a 056 Nosso número





            w_cep := dm.BloquetosQCEP.AsString;
            if dm.BloquetosQCEP.Value = '' then      w_cep := '79824900';
            w_cep := StringReplace(w_cep,'.','',[rfReplaceAll]);
            w_cep := StringReplace(w_cep,'-','',[rfReplaceAll]);
            w_cep := StringReplace(w_cep,' ','',[rfReplaceAll]);
            w_cep := Copy (w_cep,1,8);
            w_cep := FormatFloat('00000000',StrToFloat(w_cep));



            cpf:= dm.BloquetosQSACADO_CPF.AsString;
            cpf := StringReplace(cpf,'.','',[rfReplaceAll]);
            cpf := StringReplace(cpf,'-','',[rfReplaceAll]);
            cpf := StringReplace(cpf,' ','',[rfReplaceAll]);
            cpf := FormatFloat('00000000000000',StrToFloat(cpf));

            total := (dm.BloquetosQVALOR.Value);

            w_valor := FloatToStrf(total,ffCurrency,9,2);
            w_valor := StringReplace(w_valor,'.','',[rfReplaceAll]);
            w_valor := StringReplace(w_valor, ',','',[rfReplaceAll]);
            w_valor := StringReplace(w_valor, 'R$','',[rfReplaceAll]);
            w_valor := FormatFloat('0000000000000',StrToInt(w_valor));

            v_juros := FloatToStrf(dm.BloquetosQDESCONTO_ANT.Value,ffCurrency,9,2);
            v_juros := StringReplace(v_juros, ',','',[rfReplaceAll]);
            v_juros := StringReplace(v_juros, '.','',[rfReplaceAll]);
            v_juros := StringReplace(v_juros, 'R$','',[rfReplaceAll]);
            v_juros := FormatFloat('0000000000000',StrToInt(v_juros));


            {y_valor := dm.BloquetosQVALOR_ANT.AsString;
            y_valor := StringReplace(y_valor, ',','',[rfReplaceAll]);
            y_valor := FormatFloat('0000000000',StrToInt(y_valor));}
            y_valor := '0000000000';

           { if (dm.BloquetosQDESCONTO_ANT.IsNull) then
             w_desconto_ant := '0000000000000'
             else
              begin
              w_desconto_ant := FormatFloat('#,,0.00',dm.BloquetosQDESCONTO_ANT.Value);
              w_desconto_ant := StringReplace(w_desconto_ant, ',','',[rfReplaceAll]);
              w_desconto_ant := StringReplace(w_desconto_ant, '-','',[rfReplaceAll]);
              w_desconto_ant := FormatFloat('0000000000000',StrToInt(w_desconto_ant));
              end;}


            aux := aux + '      ';
            //Filler 057 a 062

            aux:= aux + _aux2;
            //Data da instrução 063 a 070

            aux:= aux + w_inst;
            //campo alterado quando instrução 31

            aux := aux + 'N B';
            //072 a 074

            aux := aux + FormatFloat('00',dm.BloquetosPARCELA.Value);
            //075 a 076 número da parcela do carnê

            aux := aux + FormatFloat('00',dm.BloquetosTP.Value);
            //077 a 078 Número total de parcelas do carnê

            aux := aux +'    ';
            //079 a 082 Filler

            aux := aux + y_valor;
            //083 a 092 Valor de desconto por dia de antecipação

            aux := aux + '0200            ';
            //093 a 096 % multa por pagamento em atraso
            //097 a 108 Filler

            aux := aux + w_tipo;
            //109 a 110 Instrução

            aux := aux +FormatFloat('0000000000',dm.BloquetosQNOSSO_NUMERO.Value);
            //111 a 120 Seu número

            aux := aux + _aux4;  //u_dia ultimo dia do mês
            //121 a 126 Data de vencimento

            aux := aux + w_valor;
            //127 a 139 Valor do titulo

            aux := aux+'         KS';
            //140 a 148 Filler; 149 a 149 espécie do documento; 150 a 150 Aceite do título

            aux := aux+w_emissao;
            //151 a 156 Data da emissão

            aux := aux + '0000';
            //157 a 158 Instrução de protesto automáticao; 159 a 160 Número de dias protesto automático
            aux := aux + v_juros;
            //161 a 173 Valor de juros por dias de atraso

            aux := aux + datalimite;
            //174 a 179 Data limite para concessão de desconto

            //***********************************************************************************************
            if not (dm.BloquetosQVALOR_ANT.IsNull) then
            desconto := FloatToStr(dm.BloquetosQVALOR.Value - dm.BloquetosQVALOR_ANT.Value)  //Valor do abatimento
            else desconto := '0000000000000';

            desconto := FormatFloat('#,,00.00',StrToFloat(desconto));
            desconto := StringReplace(desconto, ',','',[rfReplaceAll]);
            desconto := StringReplace(desconto, '.','',[rfReplaceAll]);
            desconto := FormatFloat('0000000000000',StrToInt(desconto));
            //************************************************************************************************

            aux := aux + desconto +'0000000000000';
            //180 a 192 Valor do desconto  coloque o campo desconto_ant que é o desconto para pagar até o dia 10
            //193 a 205 Filler

            aux := aux + '0000000000000' + '1';
            //206 a 218 Valor do abatimento
            //219 a 219 Tipo de pessoa do pagador 1-PJ ou 2-PF


            aux := aux +'0';
            //220 a 220 Filler

            aux := aux + cpf;
            //221 a 234 cpf ou cnpj do pagador

            aux := aux+RemoveAcento(inEspaco(DM.BloquetosQSACADO.AsString,40));
            //235 a 274 Nome do pagador


            aux := aux+RemoveAcento(inEspaco(dm.BloquetosQENDERECO.Value,40));
            //275 a 314 Endereço do pagador

            aux := aux+'00000000000 79824900';
            //+w_cep; desativei e coloquei o cep da instituição
            //315 a 319 Código fo pagador na cooperativa beneficiário
            //320 a 325 Filler
            //326 a 326 Filler
            //327 a 334 CEP do pagador

            aux := aux + '00000';
            //335 a 339 código do pagador junto ao cliente

            aux := aux+inEspaco('',55);
            //340 a 353 CPF ou CNPJ do avalista
            //354 a 394 Nome do sacador avalista

            aux:=aux+formatfloat('000000',i);
            //395 a 340 Número sequencial do registro

            dm.Bloquetos.Close;
            dm.Bloquetos.SelectSQL[2] := 'where nosso_numero = :bnossonumero';
            dm.Bloquetos.Params[0].Value := dm.BloquetosQNosso_Numero.value;
            dm.Bloquetos.Open;
            if not (dm.BloquetosNOSSO_NUMERO.IsNull) then
            begin
              dm.Bloquetos.Edit;
              dm.BloquetosST.Value := 'E';
              dm.Bloquetos.Post;
            end;
            writeln(arq,aux);
            inc(i);
            dm.BloquetosQ.Next;
          end;
//          else //Fim se igual a S
          dm.BloquetosQ.Next;
        end;
          aux := '9174826431';
          aux := aux + '                                                   ';
          aux := aux + '                                                   ';
          aux := aux + '                                                   ';
          aux := aux + '                                                   ';
          aux := aux + '                                                   ';
          aux := aux + '                                                   ';
          aux := aux + '                                                                              ';
          aux := aux + FormatFloat('000000',i);
          Writeln(arq,aux);
          CloseFile(arq);
  end; //Fim item index


//Fim Detalhe ***********************************************************
dM2.iqParametros_B.Close;

{  01 Cadastro de titulos
   02 Pedido de baixa
   04 Concessão de Abatimento
   05 Cancelamento de Abatimento Concedido
   06 Alteração de Venciento
   09 Pedido de Protesto
   18 Sustar protesto e baixar titulo
   19 Sustar em protesto e manter em carteira
   31 Alteração de outros dados}

 end
  else
   ShowMessage ('Não há boletos a serem enviados.');
End;


procedure Tfremesa.btn1Click(Sender: TObject);
var sql, sql2 :string;
begin
  sql2 := dm.Bloquetos.SelectSQL.CommaText;
  sql := 'select * from bloquetos';
  sql := sql + ' where ALUNO = :baluno';
  sql := sql + ' order by NOSSO_NUMERO';
  if (lkComboNm.KeyValue <> null) then
  begin
    dm.Bloquetos.Close;
    dm.Bloquetos.SelectSQL.Clear;
    dm.Bloquetos.SelectSQL.CommaText := sql;
    dm.Bloquetos.Params[0].Value := dm.AlunosCODIGO.Value;
  end;
  dm.Bloquetos.Open;

  while (not dm.Bloquetos.Eof) do
  begin
    dm.Bloquetos.Edit;
    dm.BloquetosST.Value := 'S';       {'S' Selecionado}
    dm.Bloquetos.Post;                 {'E' Enviado}
                                       {'B' Baixar'}
    dm.Bloquetos.Next;
  end;
  dm.Bloquetos.Close;
  dm.Bloquetos.SelectSQL.CommaText := sql2;  
end;

procedure Tfremesa.btn4Click(Sender: TObject);
var NLinhas,i : Integer;
    Linha,  T: String;
begin
  redt1.Clear;
  redt1.Lines.LoadFromFile(edtFile1.FileName);
  NLinhas := redt1.Lines.Count;
  dm.ibRetornoMotivo.Open;
  Total := 0;
  Qtdade  := 0;
  for i := 0 to NLinhas do begin
      Linha := redt1.Lines[i];
      if Copy(linha,14,12) = 'A00000000002' then
      begin
        dm.ibRetornoMotivo.Insert;
        dm.ibRetornoMotivoNOSSO_NUMERO.Value := StrToInt(Copy(Linha,51,5));
        dm.ibRetornoMotivoCOD_MOTIVO.Value := Copy(Linha,319,10);
        if Copy(Linha,319,10) = '3400000000' then
           dm.ibRetornoMotivoMOTIVO.Value := 'Valor do abatimento maior/igual ao valor do título';
        if Copy(Linha,319,10) = '4800000000' then
           dm.ibRetornoMotivoMOTIVO.Value := 'CEP irregular';
        if Copy(Linha,319,10) = '4600000000' then
           dm.ibRetornoMotivoMOTIVO.Value := 'Tipo/número de instrução do pagador inválidos';
        if Copy(Linha,319,10) = '1700000000' then
           dm.ibRetornoMotivoMOTIVO.Value := 'Liquidação após baixa.';
        if Copy(Linha,319,10) = '2400000000' then
           dm.ibRetornoMotivoMOTIVO.Value := 'Data de emissão inválida.'; 
        dm.ibRetornoMotivo.Post;
        inc(Qtdade);
      end;
  end;
      ShowMessage('Arquivo terminou');
end;

end.
