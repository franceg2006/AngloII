unit Uprematricula;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport;

type
  Tfprematricula = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel2: TRLLabel;
    RLDraw2: TRLDraw;
    RLLabel5: TRLLabel;
    RLDraw1: TRLDraw;
    RLMemo1: TRLMemo;
    RLLabel1: TRLLabel;
    RLLabel3: TRLLabel;
    RLDraw3: TRLDraw;
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fprematricula: Tfprematricula;


implementation

uses UDM;

{$R *.DFM}

procedure Tfprematricula.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
  var txt0, txt1, txt2, txt3, txt4 :string;
begin
  if (dm.AlunosCODIGO.Value > 30197) then
   begin
    txt0 :=  'Eu: {sacado} Declaro estar ciente de estar fazendo a pr�-matr�cula do(a) aluno(a): {nomealuno},';
    txt1 :=  ' na {serie} s�rie do ensino m�dio e de que (o)(a) s� estar� devidamente matriculado(a) na referida';
    txt2 :=  '  s�rie se apresentar o documento de comprova��o de APROVA��O na s�rie antecedente.';
    txt3 :=	 'Declaro, ainda, que a matr�cula dever� ser devidamente finalizada at� o dia 22 de dezembro de 2017.';
    txt0 := txt0 + txt1 + txt2 + txt3;
    txt0 := StringReplace(txt0, '{sacado}', dm.AlunosSACADO.Value , [rfReplaceAll]);
    txt0 := StringReplace(txt0, '{nomealuno}', dm.AlunosNOME.Value , [rfReplaceAll]);
    txt0 := StringReplace(txt0, '{serie}', dm.AlunosSERIE.AsString+'�' , [rfReplaceAll]);
    RLMemo1.Lines.Text := txt0;
    end else
    begin
      txt0 :=  'Eu: {sacado} Declaro estar ciente de estar fazendo a pr�-matr�cula do(a) aluno(a): {nomealuno},';
      txt1 :=  ' na {serie} s�rie do ensino m�dio e de que (o)(a) s� estar� devidamente matriculado(a) na referida';
      txt2 :=  '  s�rie se apresentar o documento de comprova��o de APROVA��O na s�rie antecedente.';
      txt3 :=  'Declaro, ainda, que a matr�cula dever� ser devidamente finalizada at� o dia 22 de dezembro de 2017';
      txt4 :=  ' e que as mensalidades referentes ao ano de 2017 dever�o estar devidamente quitadas.';
      txt0 := txt0 + txt1 + txt2 + txt3 + txt4;
      txt0 := StringReplace(txt0, '{sacado}', dm.AlunosSACADO.Value , [rfReplaceAll]);
      txt0 := StringReplace(txt0, '{nomealuno}', dm.AlunosNOME.Value , [rfReplaceAll]);
      txt0 := StringReplace(txt0, '{serie}', dm.AlunosSERIE.AsString+'�' , [rfReplaceAll]);
      RLMemo1.Lines.Text := txt0;
    end;
end;

end.
