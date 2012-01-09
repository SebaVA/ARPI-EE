unit ufmListaReferencias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvListBox, JvPlaylist, uEntornoEjecucion,
  Grids, JvExGrids, JvGrids, JvTextListBox, Buttons, Menus, JvgListBox,
  JvgStringGrid, JvgInspectorGrid, JvComboListBox, JvHtControls,
  JvStringGrid, JvDialogs, ActnList, ComCtrls, ufmConfigListaReferencia, uTipos,
  AppEvnts, ExtCtrls, JvExExtCtrls, JvBaseThumbnail, JvThumbImage,
  JvThumbnails, jpeg, JvExControls, JvComponent, JvEmbeddedForms, uConsts;

type
  TfmListaReferencias = class(TForm)
    StatusBar1: TStatusBar;
    N3: TMenuItem;
    Abrir1: TMenuItem;
    aAbrirItemReferencia: TAction;
    procedure aAbrirItemReferenciaExecute(Sender: TObject);
    procedure aAbrirItemReferenciaUpdate(Sender: TObject);
  private
    entorno : TEntornoEjecucion;
    FArchivoListaRef: string;
    cambio : boolean;
    procedure actualizarEstado();
//    procedure WMSize(var M : TWMSIZE); Message WM_Size;
    procedure SetarchivoListaRef(const Value: string);
  published
    pmReferencias: TPopupMenu;
    AgregarReferencia1: TMenuItem;
    AgregarReferencia2: TMenuItem;
    jvLista: TJvStringGrid;
    JvOpenDialog1: TJvOpenDialog;
    JvSaveDialog1: TJvSaveDialog;
    N1: TMenuItem;
    Mover1: TMenuItem;
    Arriba1: TMenuItem;
    Abajo1: TMenuItem;
    N2: TMenuItem;
    Principiodetodo1: TMenuItem;
    Finaldetodo1: TMenuItem;
    ActionList1: TActionList;
    aMoverArriba: TAction;
    aMoverAbajo: TAction;
    aMoverPrincipioDeTodo: TAction;
    aMoverFinalDeTodo: TAction;
    aAgregarReferencia: TAction;
    aAbrirReferencia: TAction;
    aBorrarReferencia: TAction;
    aGuardar: TAction;
    aGuardarComo: TAction;
    aAgregarListaDeReferencia: TAction;
    AgregarListaDeReferencia1: TMenuItem;
    aEditarReferencia: TAction;
    JvOpenDialog2: TJvOpenDialog;
    EditarReferencia1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure aMoverArribaExecute(Sender: TObject);
    procedure aMoverAbajoExecute(Sender: TObject);
    procedure aMoverPrincipioDeTodoExecute(Sender: TObject);
    procedure aMoverFinalDeTodoExecute(Sender: TObject);
    procedure aAgregarReferenciaExecute(Sender: TObject);
    procedure aAbrirReferenciaExecute(Sender: TObject);
    procedure aBorrarReferenciaExecute(Sender: TObject);
    procedure refrescar();
    procedure aGuardarExecute(Sender: TObject);
    procedure jvListaExitCell(Sender: TJvStringGrid; AColumn,
      ARow: Integer; const EditText: String);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure aGuardarComoExecute(Sender: TObject);
    procedure aAgregarListaDeReferenciaExecute(Sender: TObject);
    procedure jvListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure jvListaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure aEditarReferenciaExecute(Sender: TObject);
    property archivoListaRef: string read FarchivoListaRef write SetarchivoListaRef;
  public
    function crearNuevaListaReferencia(): boolean; overload;
    function crearNuevaListaReferencia(tipo: String): boolean; overload;
    function abrirListaReferencia: boolean; overload;
    procedure abrirListaReferencia(IDListaR: string); overload;
    { Public declarations }
  end;

var
  fmListaReferencias: TfmListaReferencias;

implementation

{$R *.dfm}

procedure TfmListaReferencias.FormCreate(Sender: TObject);
begin
    entorno := TEntornoEjecucion.Instance;
    archivoListaRef :='';
    cambio := false;
    jvLista.ColWidths[0]:= jvLista.Width-7;
//    esNueva := true;
//    WindowState := wsMinimized;
end;

procedure TfmListaReferencias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (Owner is TForm) then
    entorno.cerrarListaDeReferencias(Name);
  Action := caFree;
end;

procedure TfmListaReferencias.aMoverArribaExecute(Sender: TObject);
var
  sel: TGridRect;
begin
  sel := jvLista.Selection;
  if jvLista.Selection.Top <> 0 then
  begin
    entorno.moverReferenciaDeLista(name,jvLista.Selection.Top, jvLista.Selection.Top-1);
    sel.Top := sel.Top-1;
    sel.Bottom := sel.Bottom-1;
    jvLista.Selection := sel;
    refrescar;
    cambio := true;
  end;
end;

procedure TfmListaReferencias.aMoverAbajoExecute(Sender: TObject);
var
  sel: TGridRect;
begin
  sel := jvLista.Selection;
  if jvLista.Selection.Top <> jvLista.RowCount-1 then
  begin
    entorno.moverReferenciaDeLista(name,jvLista.Selection.Top, jvLista.Selection.Top+1);
    sel.Top := sel.Top+1;
    sel.Bottom := sel.Bottom+1;
    jvLista.Selection := sel;
    refrescar;
    cambio := true;
  end;
end;

procedure TfmListaReferencias.aMoverPrincipioDeTodoExecute(
  Sender: TObject);
var
  sel: TGridRect;
begin
  sel := jvLista.Selection;
  entorno.moverReferenciaDeLista(name,jvLista.Selection.Top,0);
  sel := jvLista.Selection;
  sel.Top := 0;
  sel.Bottom := 0;
  jvLista.Selection := sel;
  refrescar;
  cambio := true;
end;

procedure TfmListaReferencias.aMoverFinalDeTodoExecute(Sender: TObject);
var
  sel: TGridRect;
begin
  sel := jvLista.Selection;
  entorno.moverReferenciaDeLista(name,jvLista.Selection.Top,jvLista.RowCount-1);
  sel.Top := jvLista.RowCount-1;
  sel.Bottom := jvLista.RowCount-1;
  jvLista.Selection := sel;
  refrescar;
  cambio := true;
end;

procedure TfmListaReferencias.aAbrirReferenciaExecute(Sender: TObject);
begin
   if JvOpenDialog1.Execute then
   begin
      if archivoListaRef = '' then //se abre recien creado
        cambio := false
      else
        cambio := true;
      archivoListaRef := JvOpenDialog1.FileName;
      WindowState := wsNormal;
      name := entorno.abrirListaReferencias(archivoListaRef);
      refrescar;
//      cambio := true;
   end
   else
      self.Close;
end;

procedure TfmListaReferencias.aBorrarReferenciaExecute(Sender: TObject);
begin
//   entorno.removerReferenciaDeListaRef(name, jvLista.Selection.Top);
   entorno.removerReferenciaDeListaRef(name, jvLista.Selection.Top, jvLista.Selection.Bottom);
   refrescar;
   cambio := true;
end;

procedure TfmListaReferencias.actualizarEstado;
begin
   StatusBar1.Panels[0].Text := 'Cantidad de elementos: ' + intToStr(jvLista.RowCount);
end;

function TfmListaReferencias.crearNuevaListaReferencia: boolean;
var
   fc : TfmConfigListaReferencia;
begin
//   IDListaRef := '';
   fc := TfmConfigListaReferencia.Create(self);
   result := fc.Execute;
//   cambio := false;
   if result then
   begin
      name := entorno.crearListaReferencias(fc.NroElementos,fc.TipoDato,fc.ValorInicial);
      Caption := 'Lista de referencias: sin nombre';
      refrescar();
      cambio := true;
      WindowState := wsNormal;
      //refrescar contenido
   end
   else
      self.Close;
end;


procedure TfmListaReferencias.refrescar;
var
   datos: TListaRefString;
   i : integer;
begin
   datos := entorno.getListaReferencia(name);
   if high(datos) = -1 then
   begin
      jvLista.RowCount := 1;
      jvLista.Cells[0,0] := '';
   end
   else
   begin
      jvLista.RowCount := high(datos)+1;
      for i := 0 to high(datos) do
         jvLista.Cells[0,i] := datos[i];
   end;
   actualizarEstado;
end;

procedure TfmListaReferencias.aGuardarExecute(Sender: TObject);
begin
   if archivoListaRef <> '' then
   begin
      entorno.almacenarListaReferencias(name,archivoListaRef);
      cambio := false;
   end
   else
      aGuardarComo.Execute;
end;

function TfmListaReferencias.abrirListaReferencia: boolean;
begin
  result := JvOpenDialog1.Execute;
  if result then
  begin
    name := entorno.abrirListaReferencias(JvOpenDialog1.FileName);
    archivoListaRef := JvOpenDialog1.FileName;
    refrescar;
    cambio := true;
  end;
end;

procedure TfmListaReferencias.jvListaExitCell(Sender: TJvStringGrid;
  AColumn, ARow: Integer; const EditText: String);
begin
{
  try
}
//    entorno.modificarValorReferencia(IDListaRef, ARow, EditText);
//    cambio := true;

  if (jvLista.Cells[AColumn,ARow] <> '')  and (EditText <> '') then// (StringGrid1.Cells[ACol,ARow] <> EditText) then
  begin
    entorno.modificarValorReferencia(name, ARow, EditText);
    cambio := true;
  end;


{ TODO: Manejar los errores, reactivar la ventana si quiere salir y reeditar la celda}
{
  except
    jvLista.Options :=  jvLista.Options + [goEditing];
  end;
}
end;

procedure TfmListaReferencias.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (cambio) and (Owner is TForm) then
  begin
     if MessageDlg('El contenido de la lista de referencias ha cambiado,'+#13+'¿Desea almacenarlo?',mtWarning, [mbYes, mbNo],0) = mrYes then
     begin
        aGuardar.Execute;
     end;
  end;
end;

procedure TfmListaReferencias.aGuardarComoExecute(Sender: TObject);
begin
   if JvSaveDialog1.Execute then
      begin
         archivoListaRef := ChangeFileExt(JvSaveDialog1.FileName, EXTENSION_LISTA_REFERENCIA);
         entorno.almacenarListaReferencias(name, archivoListaRef); //guardar es para asociar la lista a un paso :(
         cambio := false;
      end;
end;


procedure TfmListaReferencias.aAgregarListaDeReferenciaExecute(
  Sender: TObject);
begin
   if JvOpenDialog1.Execute then
   begin
      entorno.agregarListaReferencias(name,JvOpenDialog1.FileName);
      refrescar;
      cambio := true;
   end;
end;


procedure TfmListaReferencias.jvListaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key > 32 then
  begin
    jvLista.Options := jvLista.Options + [goEditing];
    cambio := true;
  end;
end;

procedure TfmListaReferencias.jvListaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  jvLista.Options := jvLista.Options - [goEditing];
end;

procedure TfmListaReferencias.aEditarReferenciaExecute(Sender: TObject);
begin
   if entorno.getTipoListaReferencia(name) = 'referenciaarchivoimagen' then
   begin
      JvOpenDialog2.Filter := 'Imágenes|*.bmp;*.jpg;*.jpeg|Jpeg|*.jpg;*.jpeg|Windows Bitmap|*.bmp'
   end;
   if entorno.getTipoListaReferencia(name) = 'referenciaarchivomatriz' then
   begin
      JvOpenDialog2.Filter := 'ARPI Matriz (*.amt)|' + EXTENSION_MATRIZ;
   end;
   if JvOpenDialog2.Execute then
   begin
      entorno.modificarValorReferencia(name, jvLista.Selection.Top, JvOpenDialog2.FileName);
      refrescar;
      cambio := true;
   end
end;

procedure TfmListaReferencias.aAgregarReferenciaExecute(Sender: TObject);
begin
   entorno.insertarNuevaReferenciaAListaRef(name,jvLista.RowCount);
   refrescar;
   cambio := true;
end;

{procedure TfmListaReferencias.WMSize(var M: TWMSIZE);
begin
 if (M.SizeType=Size_Minimized)then
  ShowWindow(Handle,Sw_Hide);
end;
}
procedure TfmListaReferencias.SetarchivoListaRef(const Value: string);
begin
  FarchivoListaRef := Value;
  Caption := 'Lista de referencias: '+ ExtractFileName(archivoListaRef);
end;

function TfmListaReferencias.crearNuevaListaReferencia(tipo: String): boolean;
var
   fc : TfmConfigListaReferencia;
begin
   fc := TfmConfigListaReferencia.Create(self);
   fc.fijarTipo(tipo);
   result := fc.Execute;
   if result then
   begin
      name := entorno.crearListaReferencias(fc.NroElementos,fc.TipoDato,fc.ValorInicial);
      Caption := 'Lista de referencias: sin nombre';
      refrescar();
      cambio := true;
   end
   else
      self.Close;
end;

procedure TfmListaReferencias.abrirListaReferencia(IDListaR: string);
begin
   name := IDListaR;
   refrescar();
end;

procedure TfmListaReferencias.aAbrirItemReferenciaExecute(Sender: TObject);
begin
  entorno.abrirReferencia(name, jvLista.Selection.Top);
end;

procedure TfmListaReferencias.aAbrirItemReferenciaUpdate(Sender: TObject);
begin
  TAction(Sender).Enabled := (LowerCase(entorno.getTipoListaReferencia(name)) = 'referenciaarchivoimagen') or
  (LowerCase(entorno.getTipoListaReferencia(name)) = 'referenciaarchivomatriz');
end;

end.
