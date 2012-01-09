unit ufmListaResultados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TfmListaResultados = class(TForm)
    btAceptar: TButton;
    btCancelar: TButton;
    tvListaResultados: TTreeView;
    procedure tvListaResultadosChanging(Sender: TObject; Node: TTreeNode;
      var AllowChange: Boolean);
  private
    function getSeleccionado: string;
    { Private declarations }
  public
    function Execute(unaListaDePasos, unPaso, unTipo:string; seleccion:
      string = ''): boolean;
  published
    property seleccionado: string read getSeleccionado;
  end;

var
  fmListaResultados: TfmListaResultados;

implementation

{$R *.dfm}
uses uEntornoEjecucion;

{ TfmListaResultados }

function TfmListaResultados.Execute(unaListaDePasos, unPaso, unTipo:string;
    seleccion: string = ''): boolean;
var
  i, j: integer;
  resultados, aux : TStrings;
  nombrePaso: string;
  nodo, sel : TTreeNode;
begin
  try
    aux := TStringList.Create;
    aux.Delimiter := '%';
    resultados := TEntornoEjecucion.Instance.getResultados(unaListaDePasos, unPaso, unTipo);
    nodo := nil;
    for i := 0 to resultados.Count - 1 do
    begin
      aux.DelimitedText := resultados.Strings[i];

      nombrePaso := aux.Strings[2];
      if aux.Count >=4 then
        for j := 3 to aux.Count -1 do
          nombrePaso := nombrePaso +' '+ aux.Strings[j];

      if not Assigned(nodo) or (StrPas(nodo.data)<>aux.Strings[0]) then//(nodo.Text <> nombrePaso) then
        nodo := tvListaResultados.Items.AddObject(nil, nombrePaso, StrNew(PChar(aux.Strings[0])));
      sel := tvListaResultados.Items.AddChildObject(nodo, aux.Strings[1], StrNew(PChar(aux.Strings[0]+'%'+aux.Strings[1])));
      sel.Selected := aux.Strings[0]+'%'+aux.Strings[1] = seleccion ;
    end;
    for i:= 0 to tvListaResultados.Items.Count -1 do
      tvListaResultados.Items[i].Expand(true);
    result := ShowModal = mrOk;
  finally
    FreeAndNil(aux);
  end;
end;

function TfmListaResultados.getSeleccionado: string;
begin
  result := '';
  if Assigned(tvListaResultados.Selected) then
    result := StrPas(tvListaResultados.Selected.data);
end;

procedure TfmListaResultados.tvListaResultadosChanging(Sender: TObject;
  Node: TTreeNode; var AllowChange: Boolean);
begin
  AllowChange := not node.HasChildren;
end;

end.


