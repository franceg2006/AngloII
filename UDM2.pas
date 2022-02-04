unit UDM2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery, IBDatabase, Halcn6DB, IBServices,
  IBUpdateSQL;

type
  TDM2 = class(TDataModule)
    DsBolsas: TDataSource;
    Bolsas: TIBQuery;
    BolsasNOME: TIBStringField;
    BolsasENDERECO: TIBStringField;
    BolsasFONE: TIBStringField;
    BolsasBOLSA: TIBBCDField;
    BolsasBOLSA_OBS: TIBStringField;
    IOcorrencia: TIBQuery;
    IOcorrenciaCODIGO: TIntegerField;
    IOcorrenciaNOME: TIBStringField;
    IOcorrenciaENDERECO: TIBStringField;
    IOcorrenciaCOMPLEMENTO: TIBStringField;
    IOcorrenciaBAIRRO: TIBStringField;
    IOcorrenciaCIDADE: TIBStringField;
    IOcorrenciaUF: TIBStringField;
    IOcorrenciaCEP: TIBStringField;
    IOcorrenciaRG: TIBStringField;
    IOcorrenciaNASC_DATA: TDateField;
    IOcorrenciaNASC_CIDADE: TIBStringField;
    IOcorrenciaNASC_UF: TIBStringField;
    IOcorrenciaSEXO: TIBStringField;
    IOcorrenciaPAI_NOME: TIBStringField;
    IOcorrenciaPAI_PROFISSAO: TIBStringField;
    IOcorrenciaPAI_NASCIMENTO: TDateField;
    IOcorrenciaMAE_NOME: TIBStringField;
    IOcorrenciaMAE_PROFISSAO: TIBStringField;
    IOcorrenciaMAE_NASCIMENTO: TDateField;
    IOcorrenciaFONE: TIBStringField;
    IOcorrenciaDATA_MATRICULA: TDateField;
    IOcorrenciaBIMESTRE: TSmallintField;
    IOcorrenciaCURSO: TIntegerField;
    IOcorrenciaSERIE: TSmallintField;
    IOcorrenciaTURMA: TIBStringField;
    IOcorrenciaCHAMADA: TSmallintField;
    IOcorrenciaSTATUS: TIBStringField;
    IOcorrenciaDATA_SAIDA: TDateField;
    IOcorrenciaBOLSA: TIBBCDField;
    IOcorrenciaOBS_HIST: TMemoField;
    IOcorrenciaSACADO: TIBStringField;
    IOcorrenciaFINAL: TIBStringField;
    IOcorrenciaMATERIAL: TSmallintField;
    IOcorrenciaVENCIMENTO: TSmallintField;
    IOcorrenciaANO: TSmallintField;
    IOcorrenciaBLOQUETO_1SEM: TSmallintField;
    IOcorrenciaBLOQUETO_2SEM: TSmallintField;
    IOcorrenciaMES_MATERIAL: TSmallintField;
    IOcorrenciaSENHA: TIBStringField;
    IOcorrenciaSACADO_RG: TIBStringField;
    IOcorrenciaSACADO_CPF: TIBStringField;
    IOcorrenciaMOD_ESPORTIVA: TIBStringField;
    IOcorrenciaH_ANO1: TIntegerField;
    IOcorrenciaH_ESCOLA1: TIBStringField;
    IOcorrenciaH_CIDADE1: TIBStringField;
    IOcorrenciaH_UF1: TIBStringField;
    IOcorrenciaH_ANO2: TIntegerField;
    IOcorrenciaH_ESCOLA2: TIBStringField;
    IOcorrenciaH_CIDADE2: TIBStringField;
    IOcorrenciaH_UF2: TIBStringField;
    IOcorrenciaH_ANO3: TIntegerField;
    IOcorrenciaH_ESCOLA3: TIBStringField;
    IOcorrenciaH_CIDADE3: TIBStringField;
    IOcorrenciaH_UF3: TIBStringField;
    IOcorrenciaBOLSA_OBS: TIBStringField;
    IOcorrenciaCODIGO_SP: TIBStringField;
    DIOcorrencia: TDataSource;
    IBNotas_Alu: TIBQuery;
    dsNotas_Alu: TDataSource;
    IBNotas_AluCODIGO: TIntegerField;
    IBNotas_AluNOME: TIBStringField;
    IBNotas_AluSERIER: TSmallintField;
    IBNotas_AluTURMAR: TIBStringField;
    IBNotas_AluDISCIPLINAR: TIntegerField;
    IBNotas_AluNOTA1: TIBBCDField;
    IBNotas_AluNOTA2: TIBBCDField;
    IBNotas_AluNOTA3: TIBBCDField;
    IBNotas_AluNOTA4: TIBBCDField;
    DsBolsaM: TDataSource;
    BolsaM: TIBQuery;
    BolsaMTOTALB: TIntegerField;
    BolsaMCONTP0: TIntegerField;
    BolsaMCONTP1: TIntegerField;
    BolsaMCONTP2: TIntegerField;
    BolsaMCONTP3: TIntegerField;
    BolsaMCONTP4: TIntegerField;
    BolsaMCONTP5: TIntegerField;
    BolsaMCONTP6: TIntegerField;
    BolsaMCONTP7: TIntegerField;
    BolsaMCONTP8: TIntegerField;
    BolsaMCONTP9: TIntegerField;
    BolsaMCONTP10: TIntegerField;
    BolsaMCONTP11: TIntegerField;
    BolsaMCONTP12: TIntegerField;
    BolsaMCONTP13: TIntegerField;
    BolsaMCONTP14: TIntegerField;
    BolsaMCONTP15: TIntegerField;
    BolsaMCONTP16: TIntegerField;
    BolsaMCONTP17: TIntegerField;
    BolsaMCONTP18: TIntegerField;
    BolsaMCONTP19: TIntegerField;
    BolsaMCONTP20: TIntegerField;
    BolsaMCONTP21: TIntegerField;
    BolsaMCONTP22: TIntegerField;
    BolsaMCONTP23: TIntegerField;
    BolsaMCONTP24: TIntegerField;
    BolsaMCONTP25: TIntegerField;
    BolsaMCONTP26: TIntegerField;
    BolsaMCONTP27: TIntegerField;
    BolsaMCONTP28: TIntegerField;
    BolsaMCONTP29: TIntegerField;
    BolsaMCONTP30: TIntegerField;
    BolsaMCONTP31: TIntegerField;
    BolsaMCONTP32: TIntegerField;
    BolsaMCONTP33: TIntegerField;
    BolsaMCONTP34: TIntegerField;
    BolsaMCONTP35: TIntegerField;
    BolsaMCONTP36: TIntegerField;
    BolsaMCONTP37: TIntegerField;
    BolsaMCONTP38: TIntegerField;
    BolsaMCONTP39: TIntegerField;
    BolsaMCONTP40: TIntegerField;
    BolsaMCONTP41: TIntegerField;
    BolsaMCONTP42: TIntegerField;
    BolsaMCONTP43: TIntegerField;
    BolsaMCONTP44: TIntegerField;
    BolsaMCONTP45: TIntegerField;
    BolsaMCONTP46: TIntegerField;
    BolsaMCONTP47: TIntegerField;
    BolsaMCONTP48: TIntegerField;
    BolsaMCONTP49: TIntegerField;
    BolsaMCONTP50: TIntegerField;
    BolsaMCONTP51: TIntegerField;
    BolsaMCONTP52: TIntegerField;
    BolsaMCONTP53: TIntegerField;
    BolsaMCONTP54: TIntegerField;
    BolsaMCONTP55: TIntegerField;
    BolsaMCONTP56: TIntegerField;
    BolsaMCONTP57: TIntegerField;
    BolsaMCONTP58: TIntegerField;
    BolsaMCONTP59: TIntegerField;
    BolsaMCONTP60: TIntegerField;
    BolsaMCONTP61: TIntegerField;
    BolsaMCONTP62: TIntegerField;
    BolsaMCONTP63: TIntegerField;
    BolsaMCONTP64: TIntegerField;
    BolsaMCONTP65: TIntegerField;
    BolsaMCONTP66: TIntegerField;
    BolsaMCONTP67: TIntegerField;
    BolsaMCONTP68: TIntegerField;
    BolsaMCONTP69: TIntegerField;
    BolsaMCONTP70: TIntegerField;
    BolsaMCONTP71: TIntegerField;
    BolsaMCONTP72: TIntegerField;
    BolsaMCONTP73: TIntegerField;
    BolsaMCONTP74: TIntegerField;
    BolsaMCONTP75: TIntegerField;
    BolsaMCONTP76: TIntegerField;
    BolsaMCONTP77: TIntegerField;
    BolsaMCONTP78: TIntegerField;
    BolsaMCONTP79: TIntegerField;
    BolsaMCONTP80: TIntegerField;
    BolsaMCONTP81: TIntegerField;
    BolsaMCONTP82: TIntegerField;
    BolsaMCONTP83: TIntegerField;
    BolsaMCONTP84: TIntegerField;
    BolsaMCONTP85: TIntegerField;
    BolsaMCONTP86: TIntegerField;
    BolsaMCONTP87: TIntegerField;
    BolsaMCONTP88: TIntegerField;
    BolsaMCONTP89: TIntegerField;
    BolsaMCONTP90: TIntegerField;
    BolsaMCONTP91: TIntegerField;
    BolsaMCONTP92: TIntegerField;
    BolsaMCONTP93: TIntegerField;
    BolsaMCONTP94: TIntegerField;
    BolsaMCONTP95: TIntegerField;
    BolsaMCONTP96: TIntegerField;
    BolsaMCONTP97: TIntegerField;
    BolsaMCONTP98: TIntegerField;
    BolsaMCONTP99: TIntegerField;
    BolsaMCONTP100: TIntegerField;
    BolsaMCONTS0: TIntegerField;
    BolsaMCONTS1: TIntegerField;
    BolsaMCONTS2: TIntegerField;
    BolsaMCONTS3: TIntegerField;
    BolsaMCONTS4: TIntegerField;
    BolsaMCONTS5: TIntegerField;
    BolsaMCONTS6: TIntegerField;
    BolsaMCONTS7: TIntegerField;
    BolsaMCONTS8: TIntegerField;
    BolsaMCONTS9: TIntegerField;
    BolsaMCONTS10: TIntegerField;
    BolsaMCONTS11: TIntegerField;
    BolsaMCONTS12: TIntegerField;
    BolsaMCONTS13: TIntegerField;
    BolsaMCONTS14: TIntegerField;
    BolsaMCONTS15: TIntegerField;
    BolsaMCONTS16: TIntegerField;
    BolsaMCONTS17: TIntegerField;
    BolsaMCONTS18: TIntegerField;
    BolsaMCONTS19: TIntegerField;
    BolsaMCONTS20: TIntegerField;
    BolsaMCONTS21: TIntegerField;
    BolsaMCONTS22: TIntegerField;
    BolsaMCONTS23: TIntegerField;
    BolsaMCONTS24: TIntegerField;
    BolsaMCONTS25: TIntegerField;
    BolsaMCONTS26: TIntegerField;
    BolsaMCONTS27: TIntegerField;
    BolsaMCONTS28: TIntegerField;
    BolsaMCONTS29: TIntegerField;
    BolsaMCONTS30: TIntegerField;
    BolsaMCONTS31: TIntegerField;
    BolsaMCONTS32: TIntegerField;
    BolsaMCONTS33: TIntegerField;
    BolsaMCONTS34: TIntegerField;
    BolsaMCONTS35: TIntegerField;
    BolsaMCONTS36: TIntegerField;
    BolsaMCONTS37: TIntegerField;
    BolsaMCONTS38: TIntegerField;
    BolsaMCONTS39: TIntegerField;
    BolsaMCONTS40: TIntegerField;
    BolsaMCONTS41: TIntegerField;
    BolsaMCONTS42: TIntegerField;
    BolsaMCONTS43: TIntegerField;
    BolsaMCONTS44: TIntegerField;
    BolsaMCONTS45: TIntegerField;
    BolsaMCONTS46: TIntegerField;
    BolsaMCONTS47: TIntegerField;
    BolsaMCONTS48: TIntegerField;
    BolsaMCONTS49: TIntegerField;
    BolsaMCONTS50: TIntegerField;
    BolsaMCONTS51: TIntegerField;
    BolsaMCONTS52: TIntegerField;
    BolsaMCONTS53: TIntegerField;
    BolsaMCONTS54: TIntegerField;
    BolsaMCONTS55: TIntegerField;
    BolsaMCONTS56: TIntegerField;
    BolsaMCONTS57: TIntegerField;
    BolsaMCONTS58: TIntegerField;
    BolsaMCONTS59: TIntegerField;
    BolsaMCONTS60: TIntegerField;
    BolsaMCONTS61: TIntegerField;
    BolsaMCONTS62: TIntegerField;
    BolsaMCONTS63: TIntegerField;
    BolsaMCONTS64: TIntegerField;
    BolsaMCONTS65: TIntegerField;
    BolsaMCONTS66: TIntegerField;
    BolsaMCONTS67: TIntegerField;
    BolsaMCONTS68: TIntegerField;
    BolsaMCONTS69: TIntegerField;
    BolsaMCONTS70: TIntegerField;
    BolsaMCONTS71: TIntegerField;
    BolsaMCONTS72: TIntegerField;
    BolsaMCONTS73: TIntegerField;
    BolsaMCONTS74: TIntegerField;
    BolsaMCONTS75: TIntegerField;
    BolsaMCONTS76: TIntegerField;
    BolsaMCONTS77: TIntegerField;
    BolsaMCONTS78: TIntegerField;
    BolsaMCONTS79: TIntegerField;
    BolsaMCONTS80: TIntegerField;
    BolsaMCONTS81: TIntegerField;
    BolsaMCONTS82: TIntegerField;
    BolsaMCONTS83: TIntegerField;
    BolsaMCONTS84: TIntegerField;
    BolsaMCONTS85: TIntegerField;
    BolsaMCONTS86: TIntegerField;
    BolsaMCONTS87: TIntegerField;
    BolsaMCONTS88: TIntegerField;
    BolsaMCONTS89: TIntegerField;
    BolsaMCONTS90: TIntegerField;
    BolsaMCONTS91: TIntegerField;
    BolsaMCONTS92: TIntegerField;
    BolsaMCONTS93: TIntegerField;
    BolsaMCONTS94: TIntegerField;
    BolsaMCONTS95: TIntegerField;
    BolsaMCONTS96: TIntegerField;
    BolsaMCONTS97: TIntegerField;
    BolsaMCONTS98: TIntegerField;
    BolsaMCONTS99: TIntegerField;
    BolsaMCONTS100: TIntegerField;
    BolsaMCONTT0: TIntegerField;
    BolsaMCONTT1: TIntegerField;
    BolsaMCONTT2: TIntegerField;
    BolsaMCONTT3: TIntegerField;
    BolsaMCONTT4: TIntegerField;
    BolsaMCONTT5: TIntegerField;
    BolsaMCONTT6: TIntegerField;
    BolsaMCONTT7: TIntegerField;
    BolsaMCONTT8: TIntegerField;
    BolsaMCONTT9: TIntegerField;
    BolsaMCONTT10: TIntegerField;
    BolsaMCONTT11: TIntegerField;
    BolsaMCONTT12: TIntegerField;
    BolsaMCONTT13: TIntegerField;
    BolsaMCONTT14: TIntegerField;
    BolsaMCONTT15: TIntegerField;
    BolsaMCONTT16: TIntegerField;
    BolsaMCONTT17: TIntegerField;
    BolsaMCONTT18: TIntegerField;
    BolsaMCONTT19: TIntegerField;
    BolsaMCONTT20: TIntegerField;
    BolsaMCONTT21: TIntegerField;
    BolsaMCONTT22: TIntegerField;
    BolsaMCONTT23: TIntegerField;
    BolsaMCONTT24: TIntegerField;
    BolsaMCONTT25: TIntegerField;
    BolsaMCONTT26: TIntegerField;
    BolsaMCONTT27: TIntegerField;
    BolsaMCONTT28: TIntegerField;
    BolsaMCONTT29: TIntegerField;
    BolsaMCONTT30: TIntegerField;
    BolsaMCONTT31: TIntegerField;
    BolsaMCONTT32: TIntegerField;
    BolsaMCONTT33: TIntegerField;
    BolsaMCONTT34: TIntegerField;
    BolsaMCONTT35: TIntegerField;
    BolsaMCONTT36: TIntegerField;
    BolsaMCONTT37: TIntegerField;
    BolsaMCONTT38: TIntegerField;
    BolsaMCONTT39: TIntegerField;
    BolsaMCONTT40: TIntegerField;
    BolsaMCONTT41: TIntegerField;
    BolsaMCONTT42: TIntegerField;
    BolsaMCONTT43: TIntegerField;
    BolsaMCONTT44: TIntegerField;
    BolsaMCONTT45: TIntegerField;
    BolsaMCONTT46: TIntegerField;
    BolsaMCONTT47: TIntegerField;
    BolsaMCONTT48: TIntegerField;
    BolsaMCONTT49: TIntegerField;
    BolsaMCONTT50: TIntegerField;
    BolsaMCONTT51: TIntegerField;
    BolsaMCONTT52: TIntegerField;
    BolsaMCONTT53: TIntegerField;
    BolsaMCONTT54: TIntegerField;
    BolsaMCONTT55: TIntegerField;
    BolsaMCONTT56: TIntegerField;
    BolsaMCONTT57: TIntegerField;
    BolsaMCONTT58: TIntegerField;
    BolsaMCONTT59: TIntegerField;
    BolsaMCONTT60: TIntegerField;
    BolsaMCONTT61: TIntegerField;
    BolsaMCONTT62: TIntegerField;
    BolsaMCONTT63: TIntegerField;
    BolsaMCONTT64: TIntegerField;
    BolsaMCONTT65: TIntegerField;
    BolsaMCONTT66: TIntegerField;
    BolsaMCONTT67: TIntegerField;
    BolsaMCONTT68: TIntegerField;
    BolsaMCONTT69: TIntegerField;
    BolsaMCONTT70: TIntegerField;
    BolsaMCONTT71: TIntegerField;
    BolsaMCONTT72: TIntegerField;
    BolsaMCONTT73: TIntegerField;
    BolsaMCONTT74: TIntegerField;
    BolsaMCONTT75: TIntegerField;
    BolsaMCONTT76: TIntegerField;
    BolsaMCONTT77: TIntegerField;
    BolsaMCONTT78: TIntegerField;
    BolsaMCONTT79: TIntegerField;
    BolsaMCONTT80: TIntegerField;
    BolsaMCONTT81: TIntegerField;
    BolsaMCONTT82: TIntegerField;
    BolsaMCONTT83: TIntegerField;
    BolsaMCONTT84: TIntegerField;
    BolsaMCONTT85: TIntegerField;
    BolsaMCONTT86: TIntegerField;
    BolsaMCONTT87: TIntegerField;
    BolsaMCONTT88: TIntegerField;
    BolsaMCONTT89: TIntegerField;
    BolsaMCONTT90: TIntegerField;
    BolsaMCONTT91: TIntegerField;
    BolsaMCONTT92: TIntegerField;
    BolsaMCONTT93: TIntegerField;
    BolsaMCONTT94: TIntegerField;
    BolsaMCONTT95: TIntegerField;
    BolsaMCONTT96: TIntegerField;
    BolsaMCONTT97: TIntegerField;
    BolsaMCONTT98: TIntegerField;
    BolsaMCONTT99: TIntegerField;
    BolsaMCONTT100: TIntegerField;
    DsAReceberRes: TDataSource;
    AReceberRes: TIBQuery;
    AReceberResMENSALIDADE: TIBBCDField;
    AReceberResMATERIAL: TIBBCDField;
    AReceberResTOTAL: TIBBCDField;
    dsetiqueta: TDataSource;
    etiqueta: TIBDataSet;
    etiquetaCOD_PROP: TIntegerField;
    etiquetaESCOLA: TIBStringField;
    etiquetaMENSAGEN: TIBStringField;
    etiquetaTELEFONE: TIBStringField;
    Alu_3_Rec: TIBQuery;
    dsAlu_3_Rec: TDataSource;
    Alu_3_RecALU_COD: TIntegerField;
    Alu_3_RecALU_CHAMADA: TSmallintField;
    Alu_3_RecALU_NOME: TIBStringField;
    Alu_3_RecN_01: TIBStringField;
    Alu_3_RecN_02: TIBStringField;
    Alu_3_RecN_03: TIBStringField;
    Alu_3_RecN_04: TIBStringField;
    Alu_3_RecN_05: TIBStringField;
    Alu_3_RecN_06: TIBStringField;
    Alu_3_RecN_07: TIBStringField;
    Alu_3_RecN_08: TIBStringField;
    Alu_3_RecN_09: TIBStringField;
    Alu_3_RecN_10: TIBStringField;
    Alu_3_RecN_11: TIBStringField;
    Alu_3_RecN_12: TIBStringField;
    Alu_3_RecN_13: TIBStringField;
    Alu_3_RecN_14: TIBStringField;
    Alu_3_RecN_15: TIBStringField;
    Alu_3_RecN_16: TIBStringField;
    Alu_3_RecN_17: TIBStringField;
    Alu_3_RecN_18: TIBStringField;
    Alu_3_RecN_19: TIBStringField;
    Alu_3_RecN_20: TIBStringField;
    iqpresenca: TIBQuery;
    uppresenca: TIBUpdateSQL;
    Dspresenca: TDataSource;
    iqpresencaALU_PRESENCA: TIntegerField;
    iqpresencaDATA: TDateField;
    iqpresencaHORA: TTimeField;
    Dsdatanotas: TDataSource;
    updatasnotas: TIBUpdateSQL;
    iqdatasnotas: TIBQuery;
    iqdatasnotasCODIGO: TSmallintField;
    iqdatasnotasDESCRICAO: TIBStringField;
    iqdatasnotasINICIO: TDateField;
    iqdatasnotasFIM: TDateField;
    iqdatasnotasINICIO_NOTA: TDateField;
    iqdatasnotasFIM_NOTA: TDateField;
    TSUsuario: TIBTransaction;
    qy_usuario: TIBQuery;
    up_usuario: TIBUpdateSQL;
    ds_usuario: TDataSource;
    qy_usuarioCODIGO: TIntegerField;
    qy_usuarioLOGIN: TIBStringField;
    qy_usuarioSENHA: TIBStringField;
    Iqconta: TIBQuery;
    ibpdtsqlconta1: TIBUpdateSQL;
    ds_conta: TDataSource;
    dsParametros_B: TDataSource;
    iqParametros_B: TIBQuery;
    upParametros_B: TIBUpdateSQL;
    iqParametros_BCONT_ARQ: TIntegerField;
    iqParametros_BCONT_REMESSA: TIntegerField;
    iqParametros_BDATA_REMESSA: TDateField;
    IqEscola: TIBQuery;
    UpEscola: TIBUpdateSQL;
    DsEscola: TDataSource;
    IqEscolaID_ESCOLA: TIntegerField;
    IqEscolaESCOLA: TIBStringField;
    IqEscolaTIPO: TIBStringField;
    dsNaopagantes: TDataSource;
    ibNaopagantes: TIBQuery;
    ibNaopagantesVENCIMENTO: TDateField;
    ibNaopagantesNOME: TIBStringField;
    ibNaopagantesVALOR: TIBBCDField;
    ibNaopagantesPARCELA: TIntegerField;
    iqParametros_BPROXIMO_BLOQUETO_I: TIntegerField;
    iqParametros_BPROXIMO_BLOQUETO_II: TIntegerField;
    dsgen: TDataSource;
    sql_gen: TIBQuery;
    sql_genCONTADOR: TLargeintField;
    DBUsuario: TIBDatabase;
    DsRequerimento: TDataSource;
    iqRequerimento: TIBQuery;
    iqRequerimentoCODIGO: TIntegerField;
    iqRequerimentoNOME: TIBStringField;
    iqRequerimentoPAI_NOME: TIBStringField;
    iqRequerimentoPAI_PROFISSAO: TIBStringField;
    iqRequerimentoMAE_NOME: TIBStringField;
    iqRequerimentoMAE_PROFISSAO: TIBStringField;
    iqRequerimentoNASC_DATA: TDateField;
    iqRequerimentoNASC_CIDADE: TIBStringField;
    iqRequerimentoNASC_UF: TIBStringField;
    iqRequerimentoCIDADE: TIBStringField;
    iqRequerimentoENDERECO: TIBStringField;
    iqRequerimentoNUMERO: TSmallintField;
    iqRequerimentoBAIRRO: TIBStringField;
    iqRequerimentoUF: TIBStringField;
    iqRequerimentoFONE: TIBStringField;
    iqRequerimentoCELULAR: TIBStringField;
    iqRequerimentoTEL_RESIDENCIAL: TIBStringField;
    iqRequerimentoRG: TIBStringField;
    iqRequerimentoSERIE: TSmallintField;
    iqRequerimentoNOME_LOGADOURO: TIBStringField;
    iqRequerimentoCEP: TIBStringField;
    QBoletosReprocesso: TIBQuery;
    DsBoletosReprocesso: TDataSource;
    QBoletosReprocessoNOSSO_NUMERO: TIntegerField;
    QBoletosReprocessoALUNO: TIntegerField;
    QBoletosReprocessoPARCELA: TSmallintField;
    QBoletosReprocessoEMISSAO: TDateField;
    QBoletosReprocessoVENCIMENTO: TDateField;
    QBoletosReprocessoVALOR: TIBBCDField;
    QBoletosReprocessoPAGAMENTO: TDateField;
    QBoletosReprocessoVALOR_PAGO: TIBBCDField;
    QBoletosReprocessoMENSALIDADE: TIBBCDField;
    QBoletosReprocessoMATERIAL: TIBBCDField;
    QBoletosReprocessoDESCONTO: TIBBCDField;
    QBoletosReprocessoTIPO_PG: TSmallintField;
    QBoletosReprocessoANO_DV: TIBStringField;
    QBoletosReprocessoDESCONTO_ANT: TIBBCDField;
    QBoletosReprocessoMENSALIDADE_ANT: TIBBCDField;
    QBoletosReprocessoVALOR_ANT: TIBBCDField;
    QBoletosReprocessoBAULA_AD: TIBStringField;
    QBoletosReprocessoST: TIBStringField;
    QBoletosReprocessoTP: TIntegerField;
    QBoletosReprocessoMOTIVO: TIBStringField;
    QBoletosReprocessoDATA_LIMITE: TDateField;
    QBoletosReprocessoNEGOCIACAO: TIntegerField;
    procedure DBUsuarioAfterConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM2: TDM2;

implementation

uses UDM;

{$R *.DFM}

procedure TDM2.DBUsuarioAfterConnect(Sender: TObject);
begin
//-/home/francebd/Anglo/Usuarios.gdb
//bjiml_lv

//-dioem83t
//-/Usuarios Local
//-/Anglo/Usuarios.gdb
//masterkey


end;

procedure TDM2.DataModuleCreate(Sender: TObject);
begin
//***********************Para conex�o com o servidor****************************
  {
  DBUsuario.Close;
  DBUsuario.Params.Clear;
  DBUsuario.Params.Add('user_name=SYSDBA');
  DBUsuario.Params.Add('lc_ctype=WIN1252');
  DBUsuario.Params.Add('password=plkh%321');
  DBUsuario.DatabaseName := ('anglo:/bds/Anglo/Usuarios.gdb');
  DBUsuario.Open;
  DBUsuario.Connected := True;
  TSUsuario.Active := True;
  }
//***************************Para conex�o com o banco de dados LOCAL************

  DBUsuario.Close;
  DBUsuario.Params.Clear;
  DBUsuario.Params.Add('user_name=SYSDBA');
  DBUsuario.Params.Add('lc_ctype=WIN1252');
  DBUsuario.Params.Add('password=masterkey');
  DBUsuario.DatabaseName := ('c:/Anglo/Usuarios.gdb');
  DBUsuario.Open;
  DBUsuario.Connected := True;
  TSUsuario.Active := True;
  
end;
end.
