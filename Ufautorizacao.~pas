unit Ufautorizacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RXSpin, ToolEdit, RXDBCtrl, StdCtrls, Mask, DBCtrls, Db, IBCustomDataSet,
  IBQuery, Grids, DBGrids, Placemnt, Buttons, ExtCtrls;

type
  Tfautorizacao = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    Contador: TRxSpinButton;
    RxDBGrid1: TRxDBGrid;
    Label6: TLabel;
    ds_autorizacoes: TDataSource;
    qautorizacao: TIBQuery;
    FormStyle: TFormPlacement;
    qautorizacaoALUNOS: TIntegerField;
    qautorizacaoAUTORIZACAO: TIBStringField;
    qautorizacaoNOME_TITULAR: TIBStringField;
    qautorizacaoPARCELAS: TIntegerField;
    qautorizacaoDATA_PAGAMENTO: TDateField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBRformas: TDBRadioGroup;
    qautorizacaoFORMAP: TIBStringField;
    qautorizacaoVALORP: TIBBCDField;
    qautorizacaoMEMOBS: TIBStringField;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    DBMemo1: TDBMemo;
    Label8: TLabel;
    BitBtn4: TBitBtn;
    Button1: TButton;
    procedure ContadorBottomClick(Sender: TObject);
    procedure ContadorTopClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fautorizacao: Tfautorizacao;

implementation

uses UDM, URel_Autoriza;

{$R *.DFM}

procedure Tfautorizacao.ContadorBottomClick(Sender: TObject);
begin
    if dm.AutorizacaoPARCELAS.Value > 0 then
      dm.AutorizacaoPARCELAS.Value := dm.AutorizacaoPARCELAS.Value - 1 else
      ShowMessage('Valor meno que zero');
end;

procedure Tfautorizacao.ContadorTopClick(Sender: TObject);
begin
   dm.AutorizacaoPARCELAS.Value := dm.AutorizacaoPARCELAS.Value + 1;
end;

procedure Tfautorizacao.FormShow(Sender: TObject);
begin
 qautorizacao.Close;
 qautorizacao.ParamByName('baluno').Value := dm.AlunosCODIGO.Value;
 qautorizacao.Open;
end;

procedure Tfautorizacao.BitBtn2Click(Sender: TObject);
begin
 dm.Autorizacao.Post;
 qautorizacao.Close;
 qautorizacao.ParamByName('baluno').Value := dm.AlunosCODIGO.Value;
 qautorizacao.Open;
 BitBtn3.Enabled := True;
 BitBtn1.Enabled := True;
 BitBtn2.Enabled := False;
 DBEdit1.Enabled := False;
 DBEdit2.Enabled := False;
 DBDateEdit1.Enabled := False;
 DBEdit4.Enabled := False;
 Contador.Enabled := False;
 DBRformas.Enabled := False;
 DBEdit3.Enabled := False;
 DBMemo1.Enabled := False;

end;

procedure Tfautorizacao.BitBtn3Click(Sender: TObject);
begin
  dm.Autorizacao.Append;
  BitBtn2.Enabled := True;
  BitBtn3.Enabled := False;
  BitBtn1.Enabled := False;
  DBEdit1.Enabled := True;
  DBEdit2.Enabled := True;
  DBDateEdit1.Enabled := True;
  DBEdit4.Enabled := True;
  Contador.Enabled := True;
  DBRformas.Enabled := True;
  DBEdit3.Enabled := True;
  DBMemo1.Enabled := True;
  BitBtn2.Enabled := True;
  DBEdit1.SetFocus;
end;

procedure Tfautorizacao.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure Tfautorizacao.BitBtn4Click(Sender: TObject);
begin
   dm.Autorizacao.CancelUpdates;
   BitBtn3.Enabled := True;
   BitBtn1.Enabled := True;
   BitBtn2.Enabled := False;
   DBEdit1.Enabled := False;
   DBEdit2.Enabled := False;
   DBDateEdit1.Enabled := False;
   DBEdit4.Enabled := False;
   Contador.Enabled := False;
   DBRformas.Enabled := False;
   DBEdit3.Enabled := False;
   DBMemo1.Enabled := False;
   BitBtn2.Enabled := False;   
end;

procedure Tfautorizacao.Button1Click(Sender: TObject);
begin
    Try
      Application.CreateForm(TRel_autoriza, Rel_autoriza);
      Rel_autoriza.Q_RelAut.Close;
      Rel_autoriza.Q_RelAut.Open;
      Rel_autoriza.Rel_autorizacao.Preview;
    Finally
      Rel_autoriza.Rel_autorizacao.Free;
    End;
end;

end.
