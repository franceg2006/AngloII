unit ULst_EnderecosAlunos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, Db, IBCustomDataSet, IBQuery, RLPDFFilter, RLFilters,
  RLRichFilter, jpeg;

type
  TLst_endereco = class(TForm)
    Lst_EnderecosAlunos: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel11: TRLLabel;
    RLImage1: TRLImage;
    DsEndereco: TDataSource;
    Enderecos: TIBQuery;
    EnderecosCODIGO: TIntegerField;
    EnderecosCODIGO_ESCOLA: TIntegerField;
    EnderecosNOME: TIBStringField;
    EnderecosTIPO_LOGADOURO: TIntegerField;
    EnderecosNUMERO: TSmallintField;
    EnderecosCOMPLEMENTO: TIBStringField;
    EnderecosBAIRRO: TIBStringField;
    EnderecosENDERECO: TIBStringField;
    EnderecosCIDADE: TIBStringField;
    EnderecosUF: TIBStringField;
    EnderecosCEP: TIBStringField;
    EnderecosRG: TIBStringField;
    EnderecosCOMPLEMENTO_RG: TSmallintField;
    EnderecosDATA_EXP_IDENT: TDateField;
    EnderecosUF_IDENTIDADE: TIntegerField;
    EnderecosORGAO_EMIS_IDE: TIntegerField;
    EnderecosNASC_DATA: TDateField;
    EnderecosNACIONALIDADE: TIntegerField;
    EnderecosDATA_ENTR_PAIS: TDateField;
    EnderecosMUNICIPIO_NAS: TSmallintField;
    EnderecosNASC_UF: TIBStringField;
    EnderecosCERTIDAO_CIVIL: TSmallintField;
    EnderecosDATA_EMI_CERT: TDateField;
    EnderecosNOME_CART_EXP: TIBStringField;
    EnderecosCPF: TSmallintField;
    EnderecosSEXO: TIBStringField;
    EnderecosPAI_NOME: TIBStringField;
    EnderecosPAI_PROFISSAO: TIBStringField;
    EnderecosPAI_NASCIMENTO: TDateField;
    EnderecosMAE_NOME: TIBStringField;
    EnderecosMAE_PROFISSAO: TIBStringField;
    EnderecosMAE_NASCIMENTO: TDateField;
    EnderecosFONE: TIBStringField;
    EnderecosDATA_MATRICULA: TDateField;
    EnderecosBIMESTRE: TSmallintField;
    EnderecosCURSO: TIntegerField;
    EnderecosSERIE: TSmallintField;
    EnderecosTURMA: TIBStringField;
    EnderecosCHAMADA: TSmallintField;
    EnderecosSTATUS: TIBStringField;
    EnderecosDATA_SAIDA: TDateField;
    EnderecosBOLSA: TIBBCDField;
    EnderecosOBS_HIST: TMemoField;
    EnderecosSACADO: TIBStringField;
    EnderecosFINAL: TIBStringField;
    EnderecosMATERIAL: TSmallintField;
    EnderecosVENCIMENTO: TSmallintField;
    EnderecosANO: TSmallintField;
    EnderecosBLOQUETO_1SEM: TSmallintField;
    EnderecosBLOQUETO_2SEM: TSmallintField;
    EnderecosMES_MATERIAL: TSmallintField;
    EnderecosSENHA: TIBStringField;
    EnderecosSACADO_RG: TIBStringField;
    EnderecosSACADO_CPF: TIBStringField;
    EnderecosMOD_ESPORTIVA: TIBStringField;
    EnderecosH_ANO1: TIntegerField;
    EnderecosH_ESCOLA1: TIBStringField;
    EnderecosH_CIDADE1: TIBStringField;
    EnderecosH_UF1: TIBStringField;
    EnderecosH_ANO2: TIntegerField;
    EnderecosH_ESCOLA2: TIBStringField;
    EnderecosH_CIDADE2: TIBStringField;
    EnderecosH_UF2: TIBStringField;
    EnderecosH_ANO3: TIntegerField;
    EnderecosH_ESCOLA3: TIBStringField;
    EnderecosH_CIDADE3: TIBStringField;
    EnderecosH_UF3: TIBStringField;
    EnderecosBOLSA_OBS: TIBStringField;
    EnderecosCODIGO_SP: TIBStringField;
    EnderecosCURSINHO: TSmallintField;
    EnderecosCONT_TOL: TIntegerField;
    EnderecosCOR: TIntegerField;
    EnderecosEDU_ESPECIAL: TIBStringField;
    EnderecosTIPO_EDU_ESP: TSmallintField;
    EnderecosINC_CLASSE_COMU: TSmallintField;
    EnderecosAPOIO_PED_ESPE: TSmallintField;
    EnderecosCONDIC_ALUNO: TSmallintField;
    EnderecosCORR_FLUXO: TSmallintField;
    EnderecosBOLSA_FAMILIA: TSmallintField;
    EnderecosTRANSP_PUBLICO: TSmallintField;
    EnderecosTRANSP_PUB_OFER: TSmallintField;
    EnderecosZONA_RESID: TSmallintField;
    EnderecosCONCLUINTE: TSmallintField;
    EnderecosADMI_APOS_CENSO: TSmallintField;
    EnderecosMOV_REND_ESCOL: TSmallintField;
    EnderecosAT_ED_ESPECIALI: TSmallintField;
    EnderecosDATA_IGRESSO: TDateField;
    EnderecosCURSO_NOR_NM: TSmallintField;
    EnderecosNASC_CIDADE: TIBStringField;
    EnderecosUF_MEC: TIntegerField;
    EnderecosORGAO_EMISSOR: TIntegerField;
    EnderecosSEXO_E: TIntegerField;
    EnderecosTIPOCERTIDAO: TIntegerField;
    EnderecosUFCARTORIO: TIntegerField;
    EnderecosNUMERO_TERMO: TIntegerField;
    EnderecosFOLHA: TIBStringField;
    EnderecosLIVRO: TIBStringField;
    EnderecosCARTORIO_UF: TIntegerField;
    EnderecosPASENHA: TIBStringField;
    EnderecosTIPOSANGUINEO: TIntegerField;
    EnderecosSITUACAO: TIBStringField;
    EnderecosRECLASS_INGR: TSmallintField;
    EnderecosRECLASS_DEST: TSmallintField;
    EnderecosPALOGIN: TIBStringField;
    EnderecosUSUARIO: TIntegerField;
    EnderecosOPCAO_ESPANHOL: TIBStringField;
    EnderecosCELULAR: TIBStringField;
    EnderecosTEL_RESIDENCIAL: TIBStringField;
    EnderecosTEL_CONTATO: TIBStringField;
    EnderecosE_MAIL: TIBStringField;
    EnderecosFORMATURA: TIBStringField;
    NomeTurma: TRLLabel;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RPF: TRLRichFilter;
    PDF: TRLPDFFilter;
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Lst_endereco: TLst_endereco;

implementation

uses UDM;

{$R *.DFM}

procedure TLst_endereco.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if RLBand2.Color = clWhite then
    RLBand2.Color := clSilver
    Else
    RLBand2.Color := clWhite;
end;

end.
