unit UCad_Calendario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Placemnt, StdCtrls, Buttons, Grids, DBGrids, RXDBCtrl, DB;

type
  TCad_Calendario = class(TForm)
    BitBtn1: TBitBtn;
    FS1: TFormStorage;
    RxDBGrid1: TRxDBGrid;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure RxDBGrid1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cad_Calendario: TCad_Calendario;

implementation

uses UDM;

{$R *.DFM}

procedure TCad_Calendario.FormShow(Sender: TObject);
begin
  DM.Bimestres.Open;
end;

procedure TCad_Calendario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if dm.Bimestres.State in [dsEdit] then
    dm.Bimestres.Post;
  DM.Bimestres.Close;
end;

procedure TCad_Calendario.RxDBGrid1Enter(Sender: TObject);
begin
 dm.Bimestres.Edit;
end;

end.
