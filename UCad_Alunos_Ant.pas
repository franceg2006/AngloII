unit UCad_Alunos_Ant;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Placemnt, Grids, DBGrids, Mask, ToolEdit, CurrEdit, StdCtrls, Buttons,
  ExtCtrls, Db, IBCustomDataSet, IBQuery;

type
  TCad_Alunos_Ant = class(TForm)
    FS1: TFormStorage;
    AlunosAnt: TIBQuery;
    Panel1: TPanel;
    Label35: TLabel;
    Label36: TLabel;
    Nome: TEdit;
    Pesquisa: TBitBtn;
    Codigo: TCurrencyEdit;
    DBGrid1: TDBGrid;
    Cancela: TBitBtn;
    DSAlunosAnt: TDataSource;
    AlunosAntCODIGO: TIntegerField;
    AlunosAntNOME: TIBStringField;
    AlunosAntSERIE: TSmallintField;
    AlunosAntTURMA: TIBStringField;
    AlunosAntSerieX: TStringField;
    OK: TBitBtn;
    ConsAluno: TIBQuery;
    ConsAlunoCODIGO: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CodigoChange(Sender: TObject);
    procedure NomeChange(Sender: TObject);
    procedure AlunosAntCalcFields(DataSet: TDataSet);
    procedure PesquisaClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure OKClick(Sender: TObject);
    procedure CancelaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cad_Alunos_Ant: TCad_Alunos_Ant;
  canc : boolean;

implementation

uses UCad_Alunos, UMenu, UDM;

{$R *.DFM}



procedure TCad_Alunos_Ant.FormShow(Sender: TObject);
begin
  AlunosAnt.Open;
  Caption := 'Puxa Dados de '+IntToStr((StrToInt(Principal.Ano.Caption)-1));
  canc := false;
end;

procedure TCad_Alunos_Ant.FormClose(Sender: TObject; var Action: TCloseAction);
var teste :string;
begin
  if (not canc) then begin
    ConsAluno.Close;
    ConsAluno.ParamByName('codigo').Value := AlunosAntCODIGO.Value;
    ConsAluno.Open;
    if not ConsAlunoCODIGO.IsNull then begin
      MessageDlg('Aluno já cadastrado!',mtWarning,[mbOK],0);
      abort; end
     else begin
      Cad_Alunos.AlunosAnt.Close;
      Cad_Alunos.AlunosAnt.ParamByName('codigo').Value := AlunosAntCODIGO.Value;
      Cad_Alunos.AlunosAnt.Open;
      if MessageDlg('Puxa dados do aluno '+Cad_Alunos.AlunosAntNOME.Value+#10+#13+
        'referentes ao ano '+IntToStr((StrToInt(Principal.Ano.Caption)-1))+' ?',
        mtConfirmation, mbOKCancel, 0) = mrOK then begin
        DM.Alunos.Insert;
        DM.AlunosCODIGO.Value := Cad_Alunos.AlunosAntCODIGO.Value;
        DM.AlunosNOME.Value := Cad_Alunos.AlunosAntNOME.Value;
        DM.AlunosENDERECO.Value := Cad_Alunos.AlunosAntENDERECO.Value;
        DM.AlunosNUMERO.Value := Cad_Alunos.AlunosAntNUMERO.Value;
        DM.AlunosCOMPLEMENTO.Value := Cad_Alunos.AlunosAntCOMPLEMENTO.Value;
        DM.AlunosBAIRRO.Value := Cad_Alunos.AlunosAntBAIRRO.Value;
        DM.AlunosCIDADE.Value := Cad_Alunos.AlunosAntCIDADE.Value;
        DM.AlunosUF.Value := Cad_Alunos.AlunosAntUF.Value;
        DM.AlunosTIPO_LOGADOURO.Value := Cad_Alunos.AlunosAntTIPO_LOGADOURO.Value;
//        Cad_Alunos.RxDBLookupCombo2.DisplayValues[6];// := Cad_Alunos.AlunosAntTIPO_LOGADOURO.AsInteger;
//Falta colocar o logradouro.
        DM.AlunosCEP.Value := Cad_Alunos.AlunosAntCEP.Value;
        DM.AlunosRG.Value := Cad_Alunos.AlunosAntRG.Value;
        DM.AlunosNACIONALIDADE.Value := Cad_Alunos.AlunosAntNACIONALIDADE.Value;
        DM.AlunosNASC_DATA.Value := Cad_Alunos.AlunosAntNASC_DATA.Value;
        DM.AlunosTIPOSANGUINEO.Value := Cad_Alunos.AlunosAntTIPOSANGUINEO.Value;
        if DM.AlunosNASC_DATA.Value = 0 then DM.AlunosNASC_DATA.Clear;
        DM.AlunosNASC_CIDADE.Value := Cad_Alunos.AlunosAntNASC_CIDADE.Value;
        DM.AlunosNASC_UF.Value := Cad_Alunos.AlunosAntNASC_UF.Value;
        DM.AlunosSEXO.Value := Cad_Alunos.AlunosAntSEXO.Value;
        DM.AlunosPAI_NOME.Value := Cad_Alunos.AlunosAntPAI_NOME.Value;
        DM.AlunosPAI_PROFISSAO.Value := Cad_Alunos.AlunosAntPAI_PROFISSAO.Value;
        DM.AlunosPAI_NASCIMENTO.Value := Cad_Alunos.AlunosAntPAI_NASCIMENTO.Value;
        if DM.AlunosPAI_NASCIMENTO.Value = 0 then DM.AlunosPAI_NASCIMENTO.Clear;
        DM.AlunosMAE_NOME.Value := Cad_Alunos.AlunosAntMAE_NOME.Value;
        DM.AlunosMAE_PROFISSAO.Value := Cad_Alunos.AlunosAntMAE_PROFISSAO.Value;
        DM.AlunosMAE_NASCIMENTO.Value := Cad_Alunos.AlunosAntMAE_NASCIMENTO.Value;
        if DM.AlunosMAE_NASCIMENTO.Value = 0 then DM.AlunosMAE_NASCIMENTO.Clear;
        DM.AlunosFONE.Value := Cad_Alunos.AlunosAntFONE.Value;
        DM.AlunosOBS_HIST.Value := Cad_Alunos.AlunosAntOBS_HIST.Value;
        DM.AlunosSACADO.Value := Cad_Alunos.AlunosAntSACADO.Value;
        DM.AlunosSACADO_RG.Value := Cad_Alunos.AlunosAntSACADO_RG.Value;
        DM.AlunosSACADO_CPF.Value := Cad_Alunos.AlunosAntSACADO_CPF.Value;
        DM.AlunosSENHA.Value := Cad_Alunos.AlunosAntSENHA.Value;
        DM.AlunosBOLSA.Value := Cad_Alunos.AlunosAntBOLSA.Value;
        DM.AlunosDATA_IGRESSO.Value := Cad_Alunos.AlunosAntDATA_MATRICULA.Value;
        DM.AlunosTIPOCERTIDAO.Value := Cad_Alunos.AlunosAntTIPOCERTIDAO.Value;
        DM.AlunosNUMERO_TERMO.Value := Cad_Alunos.AlunosAntNUMERO_TERMO.Value;
        DM.AlunosFOLHA.Value := Cad_Alunos.AlunosAntFOLHA.Value;
        DM.AlunosLIVRO.Value := Cad_Alunos.AlunosAntLIVRO.Value;
        DM.AlunosDATA_EMI_CERT.Value := Cad_Alunos.AlunosAntDATA_EMI_CERT.Value;
        DM.AlunosUFCARTORIO.Value := Cad_Alunos.AlunosAntUFCARTORIO.Value;
        DM.AlunosNOME_CART_EXP.Value := Cad_Alunos.AlunosAntNOME_CART_EXP.Value;
        DM.AlunosCOR.Value := Cad_Alunos.AlunosAntCOR.Value;  //Este campo é estrangeiro.
        DM.AlunosEDU_ESPECIAL.Value := Cad_Alunos.AlunosAntEDU_ESPECIAL.Value;
        DM.AlunosDATA_IGRESSO.Value := Cad_Alunos.AlunosAntDATA_IGRESSO.Value;
        DM.AlunosDATA_MATRICULA.Value := now;
        DM.AlunosTEL_RESIDENCIAL.Value := Cad_Alunos.AlunosAntTEL_RESIDENCIAL.Value;
//        DM.AlunosCELULAR.Value := Cad_Alunos.AlunosAntCELULAR.AsString;
//        DM.AlunosTEL_CONTATO.Value := Cad_Alunos.AlunosAntTEL_CONTATO.Value;
        DM.AlunosMOD_ESPORTIVA.Value := Cad_Alunos.AlunosAntMOD_ESPORTIVA.Value;
        DM.AlunosBOLSA_OBS.Value := Cad_Alunos.AlunosAntBOLSA_OBS.Value;
        DM.AlunosCOR.Value := Cad_Alunos.AlunosAntCOR.Value;
        DM.AlunosAULA_AD.Value := 'A';
        DM.Alunos.Post;
      end;        // do if puxa alunos
    end;          // do if já cadastrado
  end;            // do if not canc
  AlunosAnt.Close;
  ConsAluno.Close;
end;

procedure TCad_Alunos_Ant.CodigoChange(Sender: TObject);
begin
  if Codigo.Text <> '' then begin
    Nome.Clear;
    AlunosAnt.Close;
    AlunosAnt.SQL.Strings[2] := 'where CODIGO = :codigo';
    AlunosAnt.ParamByName('codigo').AsInteger := StrToInt(Codigo.Text);
    AlunosAnt.Open;
  end;
end;

procedure TCad_Alunos_Ant.NomeChange(Sender: TObject);
begin
  if Nome.Text <> '' then begin
    Codigo.Clear;
    AlunosAnt.Close;
    AlunosAnt.SQL.Strings[2] := 'where NOME starting with :nome';
    AlunosAnt.ParamByName('nome').AsString := Nome.Text;
    AlunosAnt.Open;
  end;
end;

procedure TCad_Alunos_Ant.AlunosAntCalcFields(DataSet: TDataSet);
begin
  AlunosAntSerieX.Value := IntToStr(AlunosAntSERIE.Value)+'ª Série '+AlunosAntTURMA.Value;
end;

procedure TCad_Alunos_Ant.PesquisaClick(Sender: TObject);
begin
  Codigo.Clear;
  AlunosAnt.Close;
  AlunosAnt.SQL.Strings[2] := 'where upper(NOME) like upper(:nome)';
  AlunosAnt.ParamByName('nome').AsString := '%'+Nome.Text+'%';
  AlunosAnt.Open;
end;

procedure TCad_Alunos_Ant.DBGrid1DblClick(Sender: TObject);
begin
  Close;
end;

procedure TCad_Alunos_Ant.OKClick(Sender: TObject);
begin
  Close;
end;

procedure TCad_Alunos_Ant.CancelaClick(Sender: TObject);
begin
  canc := true;
  Close;
end;

end.
