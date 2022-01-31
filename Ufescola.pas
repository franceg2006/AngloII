unit Ufescola;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBCtrls, Mask;

type
  Tfescola = class(TForm)
    DBEdit1: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBEdit2: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fescola: Tfescola;

implementation

uses UDM2, UDM;

{$R *.DFM}

end.
