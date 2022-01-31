unit USelecAno;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DBTables, MemTable, Db, RxMemDS, Grids, DBGrids,
  RXDBCtrl, Placemnt, Mask, ToolEdit, FileCtrl, RXCtrls, Menus, IniFiles;

type
  TSelecAno = class(TForm)
    OK: TBitBtn;
    dsAnos: TDataSource;
    Grid1: TRxDBGrid;
    FS1: TFormStorage;
    Bases: TFileListBox;
    Pop1: TPopupMenu;
    Sincroniza1: TMenuItem;
    Anos: TRxMemoryData;
    AnosAno: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OKClick(Sender: TObject);
    procedure Sincroniza1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SelecAno: TSelecAno;
  w_anos  :string;

implementation

uses UMenu, UDM, UADM_Sincroniza, UDM2;

{$R *.DFM}

procedure TSelecAno.FormShow(Sender: TObject);
var i : Integer;
begin
  Anos.Open;
  w_anos := Principal.Ano.Caption;
  y_anos := Principal.Ano.Caption;
  //tem qua pegar o valor do ano que está sendo selecionado e coloca-lo aqui para pegar colocar na tela no conecta basse

  Bases.Items.Clear;
  Bases.Items.Add ('Anglo_2015II.gdb');
  Bases.Items.Add ('Anglo_2016II.gdb');
  Bases.Items.Add ('Anglo_2017II.gdb');
  Bases.Items.Add ('Anglo_2018II.gdb');
  Bases.Items.Add ('Anglo_2019II.gdb');
  Bases.Items.Add ('Anglo_2020II.gdb');
  Bases.Items.Add ('Anglo_2021II.gdb');
  Bases.Items.Add ('Anglo_2022II.gdb');  
 for i := 0 to Bases.Items.Count-1 do begin
    Anos.Append;
    AnosANO.Value := StrToInt(Copy(Bases.Items.Strings[i],7,4));
    Anos.Post;
  end;
  Anos.Locate('ANO', Principal.Ano.Caption, [loPartialKey]);
end;

procedure TSelecAno.FormClose(Sender: TObject; var Action: TCloseAction);
var config  : TIniFile;
    x_ano :string;
begin
  Anos.Open;
  //tem qua pegar o valor do ano que está sendo selecionado e coloca-lo aqui para pegar colocar por causa do conecta basse
  Principal.Ano.Caption := AnosAno.AsString;
  x_ano := AnosAno.AsString;
if (dm.DB_ANGLO.DatabaseName = 'servidor:g:/Anglo/Anglo_'+w_anos+'.gdb') then
  config := TIniFile.Create('c:/ini/AngloII.ini')
  else
  config := TIniFile.Create ('c:/ini/AngloII.ini');
  config.WriteString('TPrincipal','Ano_Caption',Principal.Ano.Caption);
  config.Free;

  Principal.Ano.Caption := IntToStr(AnosANO.Value);
  Anos.Close;
  dm2.qy_usuario.Close;
  dm2.qy_usuario.SQL[2] := 'Where codigo = :bcodigo';
  dm2.qy_usuario.Params[0].Value := codigouser;
  dm2.qy_usuario.Open;
  Principal.Caption := ':.Sistema de Controle de Alunos da Escola Anglo UNIGRAN.: - Usuário: '+dm2.qy_usuarioLOGIN.Value;
end;

procedure TSelecAno.OKClick(Sender: TObject);
begin
  Close;
end;

procedure TSelecAno.Sincroniza1Click(Sender: TObject);
begin
   Application.CreateForm(TADM_Sincroniza, ADM_Sincroniza);
  Try
   ADM_Sincroniza.ShowModal;
  Finally
   ADM_Sincroniza.Free;
  End;
end;

end.
