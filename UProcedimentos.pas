unit UProcedimentos;


interface


uses
  SysUtils, DB, UDM, UDM2;


Procedure BCopia;
Procedure RBoletos;


implementation




Procedure BCopia;
Begin
     DM2.QBoletosReprocesso.Close;
     DM2.QBoletosReprocesso.Open;
     DM2.QBoletosReprocesso.First;
     while not DM2.QBoletosReprocesso.Eof do
     Begin
       dm.Bloquetos_Delete.Open;
       dm.Bloquetos_Delete.Insert;
       dm.Bloquetos_DeleteNOSSO_NUMERO.Value := dm2.QBoletosReprocessoNOSSO_NUMERO.Value;
       dm.Bloquetos_DeleteALUNO.Value   := dm2.QBoletosReprocessoALUNO.Value;
       dm.Bloquetos_DeletePARCELA.Value := dm2.QBoletosReprocessoPARCELA.Value;
       dm.Bloquetos_DeleteEMISSAO.Value := dm2.QBoletosReprocessoEMISSAO.Value;
       dm.Bloquetos_DeleteVENCIMENTO.Value := dm2.QBoletosReprocessoVENCIMENTO.Value;
       dm.Bloquetos_DeleteVALOR.Value  := dm2.QBoletosReprocessoVALOR.Value;
       dm.Bloquetos_DeletePAGAMENTO.Value := dm2.QBoletosReprocessoPAGAMENTO.Value;
       dm.Bloquetos_DeleteVALOR_PAGO.Value := dm2.QBoletosReprocessoVALOR_PAGO.Value;
       dm.Bloquetos_DeleteMENSALIDADE.Value  := dm2.QBoletosReprocessoMENSALIDADE.Value;
       dm.Bloquetos_DeleteMATERIAL.Value := dm2.QBoletosReprocessoMATERIAL.Value;
       dm.Bloquetos_DeleteDESCONTO.Value := dm2.QBoletosReprocessoDESCONTO.Value;
       dm.Bloquetos_DeleteTIPO_PG.Value  := dm2.QBoletosReprocessoTIPO_PG.Value;
       dm.Bloquetos_DeleteANO_DV.Value  := dm2.QBoletosReprocessoANO_DV.Value;
       dm.Bloquetos_DeleteDESCONTO_ANT.Value := dm2.QBoletosReprocessoDESCONTO_ANT.Value;
       dm.Bloquetos_DeleteMENSALIDADE_ANT.Value := dm2.QBoletosReprocessoMENSALIDADE_ANT.Value;
       dm.Bloquetos_DeleteVALOR_ANT.Value := dm2.QBoletosReprocessoVALOR_ANT.Value;
       dm.Bloquetos_DeleteBAULA_AD.Value := dm2.QBoletosReprocessoBAULA_AD.Value;
       dm.Bloquetos_DeleteST.Value := 'D';
       dm.Bloquetos_DeleteTP.Value := dm2.QBoletosReprocessoTP.Value;
       dm.Bloquetos_DeleteMOTIVO.Value  := dm2.QBoletosReprocessoMOTIVO.Value;
       dm.Bloquetos_DeleteDATA_LIMITE.Value := dm2.QBoletosReprocessoDATA_LIMITE.Value;
       DM2.QBoletosReprocesso.Next;
   end;
   if dm.Bloquetos_Delete.State in [dsEdit, dsInsert] then
   dm.Bloquetos_Delete.Post;
End;


function buscaaluno(bcodigo: Integer): integer;
var sql1, sql2, sql3, sql :string;
begin
   sql := dm.Alunos.SelectSQL.Text;
   dm.Alunos.SelectSQL.Clear;
   dm.Alunos.Close;
   sql1 := 'select * ';
   sql2 := 'from alunos ';
   sql3 := 'where codigo = :bcodigo';
   dm.Alunos.SelectSQL.Text := sql1 + sql2 +sql3;
   dm.Alunos.Params[0].value := bcodigo;
   dm.Alunos.Open;
   result := dm.AlunosBOLSA.AsInteger;
end;



Procedure RBoletos;
var sql1, sql2, sql3, sql :string;
    bolsa :integer;
Begin
   sql := DM.Bloquetos.SelectSQL.Text;
   DM.Bloquetos.SelectSQL.Clear;
   sql1 := 'Select * ';
   sql2 := 'From bloquetos ';
   sql3 := 'Where ST = ''R'' and aluno = :baluno and parcela = :bparcela ';
   DM.Bloquetos.SelectSQL.Text := sql1 + sql2 + sql3;
   DM2.QBoletosReprocesso.First;
   while not DM2.QBoletosReprocesso.Eof do
   Begin
     dm.Bloquetos.Close;
     dm.Bloquetos.Params[0].Value := dm2.QBoletosReprocessoALUNO.Value;
     dm.Bloquetos.Params[1].Value := dm2.QBoletosReprocessoPARCELA.Value;
     dm.Bloquetos.Open;
     if ((dm.BloquetosPARCELA.Value = dm2.QBoletosReprocessoPARCELA.Value) and
          (dm.BloquetosALUNO.Value = dm2.QBoletosReprocessoALUNO.Value)) then
          Begin
              dm.Bloquetos.Edit;
              dm2.sql_gen.Open;
              DM.BloquetosNOSSO_NUMERO.AsInteger := DM2.sql_genCONTADOR.Value;
              dm2.sql_gen.Close;
              dm.BloquetosST.Value := 'G';
              bolsa := buscaaluno(DM.AlunosCODIGO.Value);
              dm.Bloquetos.Post;
          End;
   DM2.QBoletosReprocesso.Next;
   end;
End;





end.
