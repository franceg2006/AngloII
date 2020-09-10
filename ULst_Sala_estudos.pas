unit ULst_Sala_estudos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, jpeg, Db, IBCustomDataSet, IBQuery;

type
  TLst_Sala_Estudos = class(TForm)
    rlSl: TRLReport;
    rlb1: TRLBand;
    img1: TRLImage;
    rlb2: TRLLabel;
    rlb3: TRLLabel;
    rlb4: TRLBand;
    rlb5: TRLLabel;
    rldNOME: TRLDBText;
    rldrw1: TRLDraw;
    IqSalaEstudos: TIBQuery;
    IqSalaEstudosCODIGO: TIntegerField;
    IqSalaEstudosCODIGO_ESCOLA: TIntegerField;
    IqSalaEstudosNOME: TIBStringField;
    IqSalaEstudosTIPO_LOGADOURO: TIntegerField;
    smlntfldIqSalaEstudosNUMERO: TSmallintField;
    IqSalaEstudosCOMPLEMENTO: TIBStringField;
    IqSalaEstudosBAIRRO: TIBStringField;
    IqSalaEstudosENDERECO: TIBStringField;
    IqSalaEstudosCIDADE: TIBStringField;
    IqSalaEstudosUF: TIBStringField;
    IqSalaEstudosCEP: TIBStringField;
    IqSalaEstudosRG: TIBStringField;
    smlntfldIqSalaEstudosCOMPLEMENTO_RG: TSmallintField;
    dtfldfiliadosIqSalaEstudosDATA_EXP_IDENT: TDateField;
    IqSalaEstudosUF_IDENTIDADE: TIntegerField;
    IqSalaEstudosORGAO_EMIS_IDE: TIntegerField;
    dtfldfiliadosIqSalaEstudosNASC_DATA: TDateField;
    IqSalaEstudosNACIONALIDADE: TIntegerField;
    dtfldfiliadosIqSalaEstudosDATA_ENTR_PAIS: TDateField;
    smlntfldIqSalaEstudosMUNICIPIO_NAS: TSmallintField;
    IqSalaEstudosNASC_UF: TIBStringField;
    smlntfldIqSalaEstudosCERTIDAO_CIVIL: TSmallintField;
    dtfldfiliadosIqSalaEstudosDATA_EMI_CERT: TDateField;
    IqSalaEstudosNOME_CART_EXP: TIBStringField;
    smlntfldIqSalaEstudosCPF: TSmallintField;
    IqSalaEstudosSEXO: TIBStringField;
    IqSalaEstudosPAI_NOME: TIBStringField;
    IqSalaEstudosPAI_PROFISSAO: TIBStringField;
    dtfldfiliadosIqSalaEstudosPAI_NASCIMENTO: TDateField;
    IqSalaEstudosMAE_NOME: TIBStringField;
    IqSalaEstudosMAE_PROFISSAO: TIBStringField;
    dtfldfiliadosIqSalaEstudosMAE_NASCIMENTO: TDateField;
    IqSalaEstudosFONE: TIBStringField;
    dtfldfiliadosIqSalaEstudosDATA_MATRICULA: TDateField;
    smlntfldIqSalaEstudosBIMESTRE: TSmallintField;
    IqSalaEstudosCURSO: TIntegerField;
    smlntfldIqSalaEstudosSERIE: TSmallintField;
    IqSalaEstudosTURMA: TIBStringField;
    smlntfldIqSalaEstudosCHAMADA: TSmallintField;
    IqSalaEstudosSTATUS: TIBStringField;
    dtfldfiliadosIqSalaEstudosDATA_SAIDA: TDateField;
    IqSalaEstudosBOLSA: TIBBCDField;
    mfldIqSalaEstudosOBS_HIST: TMemoField;
    IqSalaEstudosSACADO: TIBStringField;
    IqSalaEstudosFINAL: TIBStringField;
    smlntfldIqSalaEstudosMATERIAL: TSmallintField;
    smlntfldIqSalaEstudosVENCIMENTO: TSmallintField;
    smlntfldIqSalaEstudosANO: TSmallintField;
    smlntfldIqSalaEstudosBLOQUETO_1SEM: TSmallintField;
    smlntfldIqSalaEstudosBLOQUETO_2SEM: TSmallintField;
    smlntfldIqSalaEstudosMES_MATERIAL: TSmallintField;
    IqSalaEstudosSENHA: TIBStringField;
    IqSalaEstudosSACADO_RG: TIBStringField;
    IqSalaEstudosSACADO_CPF: TIBStringField;
    IqSalaEstudosMOD_ESPORTIVA: TIBStringField;
    IqSalaEstudosH_ANO1: TIntegerField;
    IqSalaEstudosH_ESCOLA1: TIBStringField;
    IqSalaEstudosH_CIDADE1: TIBStringField;
    IqSalaEstudosH_UF1: TIBStringField;
    IqSalaEstudosH_ANO2: TIntegerField;
    IqSalaEstudosH_ESCOLA2: TIBStringField;
    IqSalaEstudosH_CIDADE2: TIBStringField;
    IqSalaEstudosH_UF2: TIBStringField;
    IqSalaEstudosH_ANO3: TIntegerField;
    IqSalaEstudosH_ESCOLA3: TIBStringField;
    IqSalaEstudosH_CIDADE3: TIBStringField;
    IqSalaEstudosH_UF3: TIBStringField;
    IqSalaEstudosBOLSA_OBS: TIBStringField;
    IqSalaEstudosCODIGO_SP: TIBStringField;
    smlntfldIqSalaEstudosCURSINHO: TSmallintField;
    IqSalaEstudosCONT_TOL: TIntegerField;
    IqSalaEstudosCOR: TIntegerField;
    IqSalaEstudosEDU_ESPECIAL: TIBStringField;
    smlntfldIqSalaEstudosTIPO_EDU_ESP: TSmallintField;
    smlntfldIqSalaEstudosINC_CLASSE_COMU: TSmallintField;
    smlntfldIqSalaEstudosAPOIO_PED_ESPE: TSmallintField;
    smlntfldIqSalaEstudosCONDIC_ALUNO: TSmallintField;
    smlntfldIqSalaEstudosCORR_FLUXO: TSmallintField;
    smlntfldIqSalaEstudosBOLSA_FAMILIA: TSmallintField;
    smlntfldIqSalaEstudosTRANSP_PUBLICO: TSmallintField;
    smlntfldIqSalaEstudosTRANSP_PUB_OFER: TSmallintField;
    smlntfldIqSalaEstudosZONA_RESID: TSmallintField;
    smlntfldIqSalaEstudosCONCLUINTE: TSmallintField;
    smlntfldIqSalaEstudosADMI_APOS_CENSO: TSmallintField;
    smlntfldIqSalaEstudosMOV_REND_ESCOL: TSmallintField;
    smlntfldIqSalaEstudosAT_ED_ESPECIALI: TSmallintField;
    dtfldfiliadosIqSalaEstudosDATA_IGRESSO: TDateField;
    smlntfldIqSalaEstudosCURSO_NOR_NM: TSmallintField;
    IqSalaEstudosNASC_CIDADE: TIBStringField;
    IqSalaEstudosUF_MEC: TIntegerField;
    IqSalaEstudosORGAO_EMISSOR: TIntegerField;
    IqSalaEstudosSEXO_E: TIntegerField;
    IqSalaEstudosTIPOCERTIDAO: TIntegerField;
    IqSalaEstudosUFCARTORIO: TIntegerField;
    IqSalaEstudosNUMERO_TERMO: TIntegerField;
    IqSalaEstudosFOLHA: TIBStringField;
    IqSalaEstudosLIVRO: TIBStringField;
    IqSalaEstudosCARTORIO_UF: TIntegerField;
    IqSalaEstudosPASENHA: TIBStringField;
    IqSalaEstudosTIPOSANGUINEO: TIntegerField;
    IqSalaEstudosSITUACAO: TIBStringField;
    smlntfldIqSalaEstudosRECLASS_INGR: TSmallintField;
    smlntfldIqSalaEstudosRECLASS_DEST: TSmallintField;
    IqSalaEstudosPALOGIN: TIBStringField;
    IqSalaEstudosUSUARIO: TIntegerField;
    IqSalaEstudosOPCAO_ESPANHOL: TIBStringField;
    IqSalaEstudosCELULAR: TIBStringField;
    IqSalaEstudosTEL_RESIDENCIAL: TIBStringField;
    IqSalaEstudosTEL_CONTATO: TIBStringField;
    IqSalaEstudosE_MAIL: TIBStringField;
    IqSalaEstudosFORMATURA: TIBStringField;
    IqSalaEstudosBOLSA_AD: TIBBCDField;
    IqSalaEstudosAULA_AD: TIBStringField;
    dSSala: TDataSource;
    rlb6: TRLBand;
    rlb7: TRLLabel;
    rldbrsltNOME: TRLDBResult;
    procedure rlb4BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Lst_Sala_Estudos: TLst_Sala_Estudos;

implementation

uses UDM;

{$R *.DFM}

procedure TLst_Sala_Estudos.rlb4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if rlb4.Color = clWhite then
     rlb4.Color := clSilver Else
     rlb4.Color := clWhite;
end;

end.
