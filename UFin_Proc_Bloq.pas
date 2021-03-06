unit UFin_Proc_Bloq;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Placemnt, Gauges, Grids, DBGrids, Db,
  RxMemDS, IBCustomDataSet, IBQuery, FileCtrl, DateUtil;

type
  TFin_Proc_Bloq = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Gauge1: TGauge;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    FS1: TFormStorage;
    Dsserie: TDataSource;
    Qserie: TIBQuery;
    QserieTURMA: TIBStringField;
    QserieSERIE: TSmallintField;
    QserieTURMA1: TIBStringField;
    QserieSERIE1: TSmallintField;
    dsCursinho: TDataSource;
    IqCursinho: TIBQuery;
    IqCursinhoCursinho: TIntegerField;
    btnRemessa: TBitBtn;
    dlgSave1: TSaveDialog;
    DsUltimaParcela: TDataSource;
    UltimaParcela: TIBQuery;
    UltimaParcelaTOTAL: TSmallintField;
    BuscaBoleto: TIBQuery;
    DsBuscaBoleto: TDataSource;
    BuscaBoletoBLOQUETO_1SEM: TSmallintField;
    BuscaBoletoNOSSO_NUMERO: TIntegerField;
    BuscaBoletoALUNO: TIntegerField;
    BuscaBoletoPARCELA: TSmallintField;
    BuscaBoletoEMISSAO: TDateField;
    BuscaBoletoVENCIMENTO: TDateField;
    BuscaBoletoVALOR: TIBBCDField;
    BuscaBoletoPAGAMENTO: TDateField;
    BuscaBoletoVALOR_PAGO: TIBBCDField;
    BuscaBoletoMENSALIDADE: TIBBCDField;
    BuscaBoletoMATERIAL: TIBBCDField;
    BuscaBoletoDESCONTO: TIBBCDField;
    BuscaBoletoTIPO_PG: TSmallintField;
    BuscaBoletoANO_DV: TIBStringField;
    BuscaBoletoDESCONTO_ANT: TIBBCDField;
    BuscaBoletoMENSALIDADE_ANT: TIBBCDField;
    BuscaBoletoVALOR_ANT: TIBBCDField;
    BuscaBoletoBAULA_AD: TIBStringField;
    BuscaBoletoST: TIBStringField;
    BuscaBoletoTP: TIntegerField;
    BuscaBoletoMOTIVO: TIBStringField;
    BuscaBoletoDATA_LIMITE: TDateField;
    DeleteBoleto: TIBQuery;
    DsDeleteBoleto: TDataSource;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnRemessaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fin_Proc_Bloq: TFin_Proc_Bloq;

implementation

uses UDM, UMenu, UBloqueto, UDM2;

{$R *.DFM}

function RemoveAcento(Str: string): string;
const
  ComAcento = '����������������������������';

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
   str0 := Trim(str0); //Remove os espa�os em branco
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


Procedure copiaBoleto;
Begin
   Fin_Proc_Bloq.BuscaBoleto.Close;
   Fin_Proc_Bloq.BuscaBoleto.Open;
   Fin_Proc_Bloq.BuscaBoleto.First;
   while not Fin_Proc_Bloq.BuscaBoleto.Eof do
       Begin
         dm.Bloquetos_Delete.Open;
         dm.Bloquetos_Delete.Insert;
         dm.Bloquetos_DeleteNOSSO_NUMERO.Value := Fin_Proc_Bloq.BuscaBoletoNOSSO_NUMERO.Value;
         dm.Bloquetos_DeleteALUNO.Value   := Fin_Proc_Bloq.BuscaBoletoALUNO.Value;
         dm.Bloquetos_DeletePARCELA.Value := Fin_Proc_Bloq.BuscaBoletoPARCELA.Value;
         dm.Bloquetos_DeleteEMISSAO.Value := Fin_Proc_Bloq.BuscaBoletoEMISSAO.Value;
         dm.Bloquetos_DeleteVENCIMENTO.Value := Fin_Proc_Bloq.BuscaBoletoVENCIMENTO.Value;
         dm.Bloquetos_DeleteVALOR.Value  := Fin_Proc_Bloq.BuscaBoletoVALOR.Value;
         dm.Bloquetos_DeleteMENSALIDADE.Value  := Fin_Proc_Bloq.BuscaBoletoMENSALIDADE.Value;
         dm.Bloquetos_DeleteMATERIAL.Value := Fin_Proc_Bloq.BuscaBoletoMATERIAL.Value;
         dm.Bloquetos_DeleteDESCONTO.Value := Fin_Proc_Bloq.BuscaBoletoDESCONTO.Value;
         dm.Bloquetos_DeleteANO_DV.Value  := Fin_Proc_Bloq.BuscaBoletoANO_DV.Value;
         dm.Bloquetos_DeleteDESCONTO_ANT.Value := Fin_Proc_Bloq.BuscaBoletoDESCONTO_ANT.Value;
         dm.Bloquetos_DeleteMENSALIDADE_ANT.Value := Fin_Proc_Bloq.BuscaBoletoMENSALIDADE_ANT.Value;
         dm.Bloquetos_DeleteVALOR_ANT.Value := Fin_Proc_Bloq.BuscaBoletoVALOR_ANT.Value;
         dm.Bloquetos_DeleteBAULA_AD.Value := Fin_Proc_Bloq.BuscaBoletoBAULA_AD.Value;
         dm.Bloquetos_DeleteST.Value := Fin_Proc_Bloq.BuscaBoletoST.Value;
         dm.Bloquetos_DeleteMOTIVO.Value  := Fin_Proc_Bloq.BuscaBoletoMOTIVO.Value;
         dm.Bloquetos_DeleteDATA_LIMITE.Value := Fin_Proc_Bloq.BuscaBoletoDATA_LIMITE.Value;
         Fin_Proc_Bloq.BuscaBoleto.Next;
       end;
       if dm.Bloquetos_delete.state in [dsInsert, dsEdit] then
       dm.Bloquetos_Delete.Post;
end;

procedure TFin_Proc_Bloq.FormShow(Sender: TObject);
begin
  DM.Alunos.SelectSQL.Strings[3] := 'order by serie,turma,nome';
  DM.Alunos.Open;
  DM.Bloquetos.Open;
  case DM2.qy_usuarioCODIGO.Value of
      11:BitBtn2.Enabled := True;
      6:BitBtn2.Enabled := True;
      9:BitBtn2.Enabled := True;
      23:BitBtn2.Enabled := True;
  end
end;

procedure TFin_Proc_Bloq.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.Alunos.Close;
  DM.Bloquetos.Close;
end;

procedure TFin_Proc_Bloq.BitBtn2Click(Sender: TObject);
var cont_adic,cont_alt,i, diavenc, diavencfev, totparcelas, mes_mat, inicial, final : integer;
    mensalidade, mensalidade_ant, desconto, desconto_ant :Real;
    valor_ant, desconto_pon : real;
    ano, mes, dia, agoraano, agorames, agoradia, d_dia  : Word;
begin
  Label1.Caption := 'Aguarde ... Processando';
  Label1.Show;
  DBGrid1.Enabled := false;
  DBGrid1.Hide;
  ano := 0; mes := 0; dia := 0;
  agoraano := 0; agorames := 0; agoradia := 0;



// Prepara Processamento
  Gauge1.Progress := 0;
  DM.ContaAlunosQ.Open;
  Gauge1.MaxValue := 100;//DM.ContaAlunosQTOTALALUNOS.AsInteger;
  DM.ContaAlunosQ.Close;
  Gauge1.Show;
  cont_adic := 0;
  cont_alt := 0;
  mensalidade := 0;  //Inicia as vari�veis


While not DM.Alunos.Eof Do
Begin
    DecodeDate(dm.AlunosDATA_MATRICULA.Value, ano, mes, dia); //Decodifica a data da matricula do aluno.
    DecodeDate(Now, agoraano, agorames, agoradia); //Decodifica a data atual
    inicial := agorames;
    if dm.AlunosMESFINAL.IsNull then    //se o m�s final for diferente de 12
    final := 12 else
    final := dm.AlunosMESFINAL.AsInteger;

    if ((DM.AlunosSTATUS.Value = 'A') and (DM.AlunosBLOQUETO_1SEM.Value = 0) and (dm.AlunosBOLSA.Value <> 100)) then
    begin

      //*********************Busca para ver se o aluno � do cursinho ou n�o*******
       IqCursinho.Close;
       IqCursinho.ParamByName('rgm').Value := dm.AlunosCODIGO.Value;
       IqCursinho.Open;
      //***************************************************************************
       if  (IqCursinhoCursinho.Value = 1) and (DM.AlunosBLOQUETO_1SEM.Value = 2) then
       begin
          UltimaParcela.Close;
          UltimaParcela.Params[0].Value := dm.AlunosCODIGO.Value;
          UltimaParcela.Open;

          copiaBoleto;
          DeleteBoleto.Close;
          DeleteBoleto.Open;
          inicial :=  UltimaParcelaTOTAL.Value + 1;
          final := 12;
       end else

       if  (IqCursinhoCursinho.Value = 1) and (DM.AlunosBLOQUETO_1SEM.Value = 1) then
       begin
          UltimaParcela.Close;
          UltimaParcela.Params[0].Value := dm.AlunosCODIGO.Value;
          UltimaParcela.Open;
          inicial :=  UltimaParcelaTOTAL.Value + 1;
          final := 12;
      end;


          case DM.AlunosSERIE.Value of
        1 : begin
                  mensalidade := DM.ParametrosMENSALIDADE_1.Value;
            end; //Caso for do 2� ano pega esses valores para calcular a mensalidade de material

        2 : begin
                  mensalidade := DM.ParametrosMENSALIDADE_2.Value;
            end;
        3 : begin // se for 3 s�rie
                If (IqCursinhoCursinho.value <> 1) Then  //se n�o for do cursinho
                Begin
                  mensalidade := DM.ParametrosMENSALIDADE_3.Value;
                end Else
                begin
                  mensalidade := dm.ParametrosMENSALIDADE_4.Value;
                end;
             end;
        end;
        if ((not (dm.AlunosBOLSA.IsNull)) and (dm.AlunosBOLSA.Value > 0)) then
         desconto := ((mensalidade * DM.AlunosBOLSA.Value)/100) //Aqui calcula o valor de desconto que o aluno obteve
          else desconto := ((mensalidade * dm.ParametrosREAJUSTE_3.Value)/100);

      if DM.AlunosBLOQUETO_1SEM.Value = 0 then inc(cont_adic); //para contar quantos boletos foram adicionados
      if dm.AlunosBLOQUETO_1SEM.Value = 1 then inc(cont_adic);  //para contar quantos boletos foram alterados
      if dm.AlunosBLOQUETO_1SEM.Value = 2 then inc(cont_alt);  //para contar quantos boletos foram alterados
  
      for i := inicial to final do //Pega o m�s inicia que pode ser 2 ou o m�s que o aluno fez a matricula, o m�s fim � 12
      begin

              dm2.sql_gen.Active := True;
              dm2.sql_gen.Open;
              DM.Bloquetos.Insert;
              DM.BloquetosNOSSO_NUMERO.AsInteger := dm2.sql_genCONTADOR.Value;
              dm2.sql_gen.Close;
              DM.BloquetosALUNO.AsInteger := DM.AlunosCODIGO.AsInteger;
              DM.BloquetosPARCELA.AsInteger := i;



              d_dia := (DaysPerMonth(agoraano, i));
              DM.BloquetosVENCIMENTO.Value := StrToDate(IntToStr(d_dia)+'/'+IntToStr(i)+'/'+Principal.Ano.Caption);  //Para data do vencimento �ltimo dia do m�s


            Begin
              if (i = 2) then
                DM.BloquetosDATA_LIMITE.Value := EncodeDate(agoraano, i,20) //Data limite para pagamento de pontualidade do m�s de fevereiro
                else DM.BloquetosDATA_LIMITE.Value := EncodeDate(agoraano, i,10); //Data limite para pagamento de pontualidade demais meses.
            end;


          if (dm.Bloquetos.State in [dsInsert, dsEdit]) then //Se a tabela de bloqueto estiver no modo de inser��o ou edi��o
          begin
            DM.BloquetosEMISSAO.Value := now;//d_emissao;
            DM.BloquetosANO_DV.Value := Copy(IntToStr(agoraano),3,2);
            DM.BloquetosMENSALIDADE.Value := mensalidade;
            DM.BloquetosDESCONTO.Value := desconto;   //Valor do desconto do boleto
            DM.BloquetosMENSALIDADE_ANT.Value := 0;   //Campo inutilizado
            DM.BloquetosDESCONTO_ANT.Value := (mensalidade - desconto); //Corresponde ao valor que � dado de desconto, por pagamento antecipado
            DM.BloquetosVALOR.Value := mensalidade;      //Valor normal mais o material menos o desconto
            DM.BloquetosVALOR_ANT.Value := (mensalidade - desconto);  //Valor com a pontualidade mais o material
            DM.BloquetosTP.Value := (final - inicial+1);  //Total de parcelas
            DM.BloquetosST.Value := 'S'; //Coloca a situa��o ST sento S, para os bloquetos criados
            dm.Alunos.Open;
        end;    // do for - Parcelas
         DM.Bloquetos.Post;
         DM2.TSUsuario.CommitRetaining;
    end;     // do if Status = 'A'
    //*******************************************************************************************************************************

//Para mudar o 1 para 10 no fim da altera��o no campo BLOQUETO_1SEM ou BLOQUETO_2SEM
        DM.Alunos.Edit;
        DM.AlunosBLOQUETO_1SEM.Value := 10;
        DM.Alunos.Post;
//*****************************************************************************************

  end;
  Label1.Caption := 'Terminado !!';
  Label3.Caption := 'Adicionados Bloquetos de '+inttostr(cont_adic)+' Alunos!';
  Label3.Show;
  Label4.Caption := 'Alterados Bloquetos de '+inttostr(cont_alt)+' Alunos!';
  Gauge1.Progress := 100;
  Label4.Show;
  DBGrid1.Enabled := true;
  DBGrid1.Show;
  BitBtn2.Enabled := false;
  BitBtn1.Kind := bkClose;
  BitBtn1.Caption := '&Fecha';
  Gauge1.Progress := Gauge1.Progress + 1;
  dm.Alunos.Next;
 end;
end;


procedure TFin_Proc_Bloq.btnRemessaClick(Sender: TObject);
var i, u_dia :Integer;
    arq :TextFile;
    nomeArq, aux, _aux, _aux2, _aux3, _aux4, NossoNumX     :string;
    sql1, sql2, NossoNumXCompleto, cpf, w_emissao, w_valor :string;
    y_valor, w_tipo, w_st, w_cep, w_desconto,w_desconto_ant, w_inst :string;
    ano, mes, dia, r_ano, r_mes, r_dia, edia, emes, eano :Word;
begin
sql1 := 'where (Blq.ALUNO = Alu.CODIGO) ';
sql1 := sql1 + '   and (Blq.PARCELA >= :Parc1) and (Blq.PARCELA <= :Parc2) ';
sql1 := sql1 + '   and (Blq.NOSSO_NUMERO >= :Bloq1) ';
sql1 := sql1 + '   and (Blq.NOSSO_NUMERO <= :Bloq2)';
sql1 := sql1 + '   and (Blq.ALUNO = :Aluno)';
sql1 := sql1 + '   and (Alu.SERIE = :Serie)';
sql1 := sql1 + '   and (Alu.TURMA = :Turma)   ';

dm.Bloquetosq.SQL.Clear;

sql2 := 'select Blq.*, Alu.CODIGO, Alu.NOME, Alu.FONE,';
sql2 := sql2 + 'Alu.SERIE, Alu.TURMA, Alu.BOLSA, Alu.BOLSA_AD, Alu.sacado_cpf,';
sql2 := sql2 + 'Alu.cep, Alu.sacado, Alu.endereco';
sql2 := sql2 + ' from BLOQUETOS Blq join ALUNOS Alu on Blq.Aluno=Alu.codigo';
sql2 := sql2 +  ' where Blq.ST = ''S''';
sql2 := sql2 + 'order by Alu.CODIGO, Blq.PARCELA';

dm.BloquetosQ.Close;
dm.BloquetosQ.SQL.Add(sql2);
dm.BloquetosQ.Open;

w_tipo := '1';
w_st := 'E';


DecodeDate(Now, ano, mes, dia);
DM2.iqParametros_B.Open;
DecodeDate(dm2.iqParametros_BDATA_REMESSA.Value, r_ano, r_mes, r_dia);

begin
  if ((ano<>r_ano) or (mes<>r_mes) or (dia<>r_dia)) or (dm2.iqParametros_BDATA_REMESSA.IsNull) then
  Begin
    dm2.iqParametros_B.Open;
    dm2.iqParametros_B.Edit;
    dm2.iqParametros_BDATA_REMESSA.Value := Now;
    dm2.iqParametros_BCONT_ARQ.Value := 1;
    dm2.iqParametros_B.Post;
  end
  else  if (((ano=r_ano) or (mes=r_mes) or (dia=r_dia)) and (not dm2.iqParametros_BDATA_REMESSA.IsNull)) then
    begin
//      dm2.iqParametros_B.Open;
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
    aux := '0'+w_tipo+'REMESSA01COBRANCA       2643103361110000177                               748SICREDI        ';
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
      if (dm.BloquetosQST.Value = 'S') then
      begin
          _aux2 := FormatDateTime('YYYYMMDD',Now);

          NossoNumX := DM.BloquetosQANO_DV.Value+'2'+FormatFloat('00000',DM.BloquetosQNOSSO_NUMERO.Value);
          NossoNumXCompleto := '0903'+'02'+'26431'+NossoNumX;
          NossoNumX := NossoNumX+DvMod11(NossoNumXCompleto);



          DecodeDate(dm.BloquetosQVENCIMENTO.Value,ano,mes,dia);
          u_dia := DaysPerMonth(ano,mes);
//          _aux3:= IntToStr(u_dia)+FormatFloat('00',mes)+ Copy(IntToStr(ano),3,2);
           if (mes = 2) then //se o m�s for fevereiro a concess�o de desconto vai para o dia 20
               _aux3:= '20'+FormatFloat('00',mes)+ Copy(IntToStr(ano),3,2)
               else
                   _aux3:= '10'+FormatFloat('00',mes)+ Copy(IntToStr(ano),3,2);


          _aux4 := IntToStr(dia)+FormatFloat('00',mes)+ Copy(IntToStr(ano),3,2);

          DecodeDate(dm.BloquetosQEMISSAO.Value,eano,emes,edia);
          w_emissao := FormatFloat('00',edia)+FormatFloat('00',(mes))+Copy(IntTostr(eano),3,2);
          _aux := Copy(IntToStr(ano),3,2);



          aux := '1AAA            AAB                            ';
          //01 a 047

          aux := aux+NossoNumX;
          //048 a 056 Nosso n�mero

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


          w_valor := FloatToStrf(dm.BloquetosQVALOR.Value,ffCurrency,9,2);
          w_valor := StringReplace(w_valor,'.','',[rfReplaceAll]);
          w_valor := StringReplace(w_valor, ',','',[rfReplaceAll]);
          w_valor := StringReplace(w_valor, '.','',[rfReplaceAll]);
          w_valor := StringReplace(w_valor, 'R$','',[rfReplaceAll]);
          w_valor := FormatFloat('0000000000000',StrToInt(w_valor));

           {  w_desconto := FloatToStrf(dm.BloquetosQDESCONTO.Value,ffCurrency,9,2); //Pega o valor da bolsa mas se a bolsa for de 100% w_desconto fica 0(zero)
          w_desconto := StringReplace(w_desconto,'.','',[rfReplaceAll]);
          w_desconto := StringReplace(w_desconto, ',','',[rfReplaceAll]);
          w_desconto := StringReplace(w_desconto, 'R$','',[rfReplaceAll]);
          w_desconto := FormatFloat('0000000000000',StrToInt(w_desconto));

          if ((dm.AlunosBOLSA.Value = 100) or (w_desconto > w_valor)) then //Se a bolsa for integral, o valor do desconto para o banco � 0(zero)}
//              w_desconto := '0000000000000'; {N�o manda com desconto, pq se n�o ele ainda rezur sobre o valor na rede sicredi}



{          y_valor := dm.BloquetosQVALOR_ANT.AsString;
          y_valor := StringReplace(y_valor, ',','',[rfReplaceAll]);
          y_valor := FormatFloat('0000000000',StrToInt(y_valor));}
          y_valor := '0000000000';


          w_desconto_ant := FormatFloat('#,,0.00',dm.BloquetosQDESCONTO_ANT.Value);
          w_desconto_ant := StringReplace(w_desconto_ant, ',','',[rfReplaceAll]);
          w_desconto_ant := FormatFloat('0000000000000',StrToInt(w_desconto_ant));




          aux := aux + '      ';
          //Filler 057 a 062

          aux:= aux + _aux2;
          //Data da instru��o 063 a 070

          aux:= aux + w_inst;
          //campo alterado quando instru��o 31

          aux := aux + 'N B';
          //072 a 074

          aux := aux + FormatFloat('00',dm.BloquetosPARCELA.Value);
          //075 a 076 n�mero da parcela do carn�

          aux := aux + FormatFloat('00',dm.BloquetosTP.Value);
          //077 a 078 N�mero total de parcelas do carn�

          aux := aux +'    ';
          //079 a 082 Filler

          aux := aux + y_valor;
          //083 a 092 Valor de desconto por dia de antecipa��o

          aux := aux + '0002            ';
          //093 a 096 % multa por pagamento em atraso
          //097 a 108 Filler

          aux := aux + w_tipo;
          //109 a 110 Instru��o

          aux := aux +FormatFloat('0000000000',dm.BloquetosQNOSSO_NUMERO.Value);
          //111 a 120 Seu n�mero

          aux := aux + _aux4;
          //121 a 126 Data de vencimento

          aux := aux + w_valor;
          //127 a 139 Valor do titulo

          aux := aux+'         KS';
          //140 a 148 Filler; 149 a 149 esp�cie do documento; 150 a 150 Aceite do t�tulo

          aux := aux+w_emissao;
          //151 a 156 Data da emiss�o

          aux := aux + '00000000000000001';
          //157 a 158 Instru��o de protesto autom�ticao; 159 a 160 N�mero de dias protesto autom�tico
          //161 a 173 Valor de juros por dias de atraso

          aux := aux +_aux3;
          //174 a 179 Data limite para concess�o de desconto

          aux := aux + w_desconto_ant +'0000000000000';
          //180 a 192 Valor do desconto
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
          //275 a 314 Endere�o do pagador

          aux := aux+'00000000000 '+w_cep;
          //315 a 319 C�digo fo pagador na cooperativa benefici�rio
          //320 a 325 Filler
          //326 a 326 Filler
          //327 a 334 CEP do pagador

          aux := aux + '00000';
          //335 a 339 c�digo do pagador junto ao cliente

          aux := aux+inEspaco('',55);
          //340 a 353 CPF ou CNPJ do avalista
          //354 a 394 Nome do sacador avalista

          aux:=aux+formatfloat('000000',i);
          //395 a 340 N�mero sequencial do registro

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
        end
        else //Fim se igua a S
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
{  01 Cadastro de titulos
   02 Pedido de baixa
   04 Concess�o de Abatimento
   05 Cancelamento de Abatimento Concedido
   06 Altera��o de Venciento
   09 Pedido de Protesto
   18 Sustar protesto e baixar titulo
   19 Sustar em protesto e manter em carteira
   31 Altera��o de outros dados}
   ShowMessage('Arquivo gerado com sucesso.');
end;
end.
