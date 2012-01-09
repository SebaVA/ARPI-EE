unit ufmSeleccionListaPasos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, uEntornoEjecucion, uTipos;

type
  TfmSeleccionListaPaso = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    ListBox1: TListBox;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    entorno : TEntornoEjecucion;
//    FListaSeleccionada: string;
    function getListaSeleccionada: string;
    function getComentario: string;
    { Private declarations }
  public
      function execute(): boolean;
      property ListaSeleccionada: string read getListaSeleccionada;
      property comentario: string read getComentario;
    { Public declarations }
  end;

var
  fmSeleccionListaPaso: TfmSeleccionListaPaso;

implementation

uses uConsts;
{$R *.dfm}

function TfmSeleccionListaPaso.execute: boolean;
begin
  result := ShowModal = mrOk;
end;

procedure TfmSeleccionListaPaso.FormCreate(Sender: TObject);
begin
   entorno := TEntornoEjecucion.Instance;
end;

procedure TfmSeleccionListaPaso.FormShow(Sender: TObject);
var
   datos: TListaRefString;
   i : integer;
begin
  datos := entorno.getTodasLasListasDePaso();
  ListBox1.Clear;
  for i := 0 to High(datos) do
    ListBox1.AddItem(datos[i],nil);
  ListBox1.AddItem(SNuevaListadePasos, nil);
  ListBox1.ItemIndex := 0;
end;


function TfmSeleccionListaPaso.getComentario: string;
begin
   result := Edit1.Text;
end;

function TfmSeleccionListaPaso.getListaSeleccionada: string;
var
   s: string;
begin
   result := ListBox1.Items.Strings[ListBox1.itemindex];
end;

end.
