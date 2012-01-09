unit ufmListaDePasos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvListBox, JvPlaylist, JvLookOut,
  JvOutlookBar, JvExControls, JvComponent, JvTextListBox, JvgListBox,
  Grids, JvExGrids, JvStringGrid, uEntornoEjecucion, ActnList, Menus,
  ComCtrls, ToolWin, ExtCtrls, ImgList, JvDialogs, uConsts;

type
  TfmListaDePasos = class (TForm)
    abrirListadePasos: TAction;
    ActionList1: TActionList;
    agregarAListaDePasos: TAction;
    duplicarPaso: TAction;
    DuplicarPaso1: TMenuItem;
    EditarDescripcin1: TMenuItem;
    editarDescripcion: TAction;
    eliminarPaso: TAction;
    EliminarPaso1: TMenuItem;
    aGuardarListaDePasos: TAction;
    ImageList1: TImageList;
    JvOpenDialog1: TJvOpenDialog;
    JvSaveDialog1: TJvSaveDialog;
    JvStringGrid1: TJvStringGrid;
    N1: TMenuItem;
    PopupMenu1: TPopupMenu;
    StatusBar1: TStatusBar;
    aGuardarComoListaDePasos: TAction;
    pmReferencias: TPopupMenu;
    miAgregarVinculo: TMenuItem;
    miCrearListaReferencias: TMenuItem;
    miAbrirListaReferencias: TMenuItem;
    aAgregarVinculoResultado: TAction;
    aQuitarVinculoResultado: TAction;
    aAbrirListaReferencias: TAction;
    aCrearListaReferencias: TAction;
    aQuitarListaReferencias: TAction;
    QuitarVinculacinconResultado1: TMenuItem;
    QuitarunaListadeReferencias1: TMenuItem;
    aMoverAlPrincipio: TAction;
    aMoverAlFinal: TAction;
    aMoverAbajo: TAction;
    aMoverArriba: TAction;
    N2: TMenuItem;
    Moverpasohaciaabajo1: TMenuItem;
    Moverpasohaciaarriba1: TMenuItem;
    Moverpasoalprincipiodelalista1: TMenuItem;
    Moverpasoalprincipiodelalista2: TMenuItem;
    procedure abrirListadePasosExecute(Sender: TObject);
    procedure agregarAListaDePasosExecute(Sender: TObject);
    procedure duplicarPasoExecute(Sender: TObject);
    procedure duplicarPasoUpdate(Sender: TObject);
    procedure editarDescripcionExecute(Sender: TObject);
    procedure eliminarPasoExecute(Sender: TObject);
    procedure eliminarPasoUpdate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure aGuardarListaDePasosExecute(Sender: TObject);
    procedure aGuardarListaDePasosUpdate(Sender: TObject);
    procedure JvStringGrid1DblClick(Sender: TObject);
    procedure JvStringGrid1DragOver(Sender, Source: TObject; X, Y: Integer;
            State: TDragState; var Accept: Boolean);
    procedure JvStringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer; Rect:
            TRect; State: TGridDrawState);
    procedure JvStringGrid1EndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure JvStringGrid1GetEditText(Sender: TObject; ACol, ARow: Integer;
            var Value: String);
    procedure aGuardarComoListaDePasosExecute(Sender: TObject);
    procedure reabrirListaDePasos(ID: string); overload;
    procedure AgregarVinculacionResultado(Sender: TObject);
    procedure CrearListaReferencias(Sender: TObject);
    procedure AbrirListaReferencias(Sender: TObject);
    procedure editarDescripcionUpdate(Sender: TObject);
    procedure QuitarListaReferencias(Sender: TObject);
    procedure QuitarVinculoResultado(Sender: TObject);
    procedure esComponente(Sender: TObject);
    procedure esReferencia(Sender: TObject);
    procedure esListaReferencia(Sender: TObject);
    procedure aMoverAlPrincipioExecute(Sender: TObject);
    procedure aMoverAlFinalExecute(Sender: TObject);
    procedure aMoverAbajoExecute(Sender: TObject);
    procedure aMoverArribaExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    entorno: TEntornoEjecucion;
    cambio: boolean;
    FArchivoListaPasos: string;
    procedure GuardarPaso(Sender: TObject);
    procedure SetArchivoListaPasos(const Value: string);
    procedure SetTitulo(const Value: string);
    procedure mostrarReferencia(Sender: TObject);
    procedure mostrarVinculacion(Sender: TObject);
  public
    procedure refrescarListaPasos;
    procedure crearNuevaListaPasos;
    function enEjecucion(): boolean;
    property ArchivoListaPasos: string read FArchivoListaPasos write
            SetArchivoListaPasos;
    property Titulo: string write SetTitulo;
  end;
  
var
  fmListaDePasos: TfmListaDePasos;

implementation

uses uShrinkPanel, udmEntorno, gnugettext, ufmListaReferencias,
  ufmListaResultados, uComponentesARPI;

{$R *.dfm}
type
  TString = class (TObject)
  private
    Fvalor: string;
  public
    constructor create(unvalor:string); overload;
  published
    property valor: string read Fvalor write Fvalor;
  end;
  
{
******************************* TfmListaDePasos ********************************
}
procedure TfmListaDePasos.abrirListadePasosExecute(Sender: TObject);
begin
  if JvOpenDialog1.Execute then
    if FileExists(JvOpenDialog1.FileName)then
    begin
      Show;
      name := entorno.abrirListaPasos(JvOpenDialog1.FileName);
      ArchivoListaPasos := JvOpenDialog1.FileName;
      refrescarListaPasos;
      cambio := true;
    end
    else
      raise Exception.CreateFmt(_('No se pudo encontrar el archivo %s'), [JvOpenDialog1.FileName])
  else
    close;
end;

procedure TfmListaDePasos.agregarAListaDePasosExecute(Sender: TObject);
begin
  if JvOpenDialog1.Execute then
  begin
    entorno.agregarListaPasos(self.name,JvOpenDialog1.FileName);
    ArchivoListaPasos := JvOpenDialog1.FileName;
    refrescarListaPasos;
    cambio := true;
  end;
end;

procedure TfmListaDePasos.duplicarPasoExecute(Sender: TObject);
begin
  entorno.duplicarPasoPosicion(self.name,JvStringGrid1.Selection.Top);
  refrescarListaPasos;
  cambio := true;
end;

procedure TfmListaDePasos.duplicarPasoUpdate(Sender: TObject);
begin
  duplicarPaso.Enabled := entorno.getDescListaPasos(self.name).Count >= 1;
end;

procedure TfmListaDePasos.editarDescripcionExecute(Sender: TObject);
var
  unComentario: string;
begin
  unComentario := entorno.getComentarioPasoPosicion(self.name,JvStringGrid1.Selection.Top);
  if InputQuery(_('Editar Comentario'), _('Ingrese el comentario'), unComentario) then
  begin
    entorno.setComentarioPasoPosicion(self.name,JvStringGrid1.Selection.Top,unComentario);
    refrescarListaPasos;
    cambio := true;
  end;
end;

procedure TfmListaDePasos.eliminarPasoExecute(Sender: TObject);
begin
  entorno.eliminarPasoPosicion(self.name,JvStringGrid1.Selection.Top);
  refrescarListaPasos;
  cambio := true;
end;

procedure TfmListaDePasos.eliminarPasoUpdate(Sender: TObject);
begin
  eliminarPaso.Enabled := entorno.getDescListaPasos(self.name).Count >= 1;
end;

procedure TfmListaDePasos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    self.free;
end;

procedure TfmListaDePasos.FormCreate(Sender: TObject);
begin
  entorno := TEntornoEjecucion.Instance;
  JvStringGrid1.ColWidths[0] := JvStringGrid1.Width - 5;
  JvStringGrid1.PopupMenu := PopupMenu1;
  cambio := false;
  Titulo := 'Sin Título';
//  self.name := entorno.nuevaListaPasos();
//  refrescarListaPasos;
  JvOpenDialog1.Filter := 'Lista de Pasos (*'+EXTENSION_LISTA_DE_PASOS+')|'+ '*'+ EXTENSION_LISTA_DE_PASOS;
  JvSaveDialog1.Filter := 'Lista de Pasos (*'+EXTENSION_LISTA_DE_PASOS+')|'+ '*'+ EXTENSION_LISTA_DE_PASOS;
  TranslateComponent(self);
end;

procedure TfmListaDePasos.FormResize(Sender: TObject);
begin
  JvStringGrid1.DefaultColWidth :=JvStringGrid1.Width - 4;
end;

procedure TfmListaDePasos.aGuardarListaDePasosExecute(Sender: TObject);
begin
  if ArchivoListaPasos <> '' then
  begin
      entorno.guardarListaPasos(self.name,ArchivoListaPasos);
      cambio := false;
  end
  else
      aGuardarComoListaDePasos.Execute;
end;

procedure TfmListaDePasos.aGuardarListaDePasosUpdate(Sender: TObject);
begin
  aGuardarListaDePasos.Enabled := JvStringGrid1.Enabled;
end;

procedure TfmListaDePasos.GuardarPaso(Sender: TObject);
begin
  entorno.actualizarPaso(self.name,(Sender as TControl).name, (Sender as TControl).Hint);
end;

procedure TfmListaDePasos.JvStringGrid1DblClick(Sender: TObject);
var
  sk: TShrinkPanel;
  nombreAlgoritmo: string;
  captionAlgoritmo: string;
begin
  nombreAlgoritmo := TString(JvStringGrid1.Rows[JvStringGrid1.Row].Objects[0]).valor;
  captionAlgoritmo := copy(JvStringGrid1.Cells[0,JvStringGrid1.Row], pos('|', JvStringGrid1.Cells[0,JvStringGrid1.Row]) + 1, MaxInt);
  if nombreAlgoritmo <> '' then
  begin
    sk := TShrinkPanel.Create(Self);
    try
      with sk do
      begin
        Parent := Self;
        Hint := nombreAlgoritmo;
        Name := entorno.abrirPaso(self.Name,nombreAlgoritmo);
        formulario := entorno.mostrarFormularioAlgoritmo(Name);
        Caption := captionAlgoritmo;//entorno.getDescAlgoritmo(Name);//'esp='+captionAlgoritmo+'|eng='+captionAlgoritmo;
        onGuardarPaso := GuardarPaso;
        mostrarIdiomas(entorno.getListaIdiomasAlgoritmo(Name));
        DragKind := dkDock;
        DragMode := dmAutomatic;
        Loaded;
        AsignarPopup(pmReferencias);
        AsignarListaReferencias(mostrarReferencia);
        AsignarVinculoResultados(mostrarVinculacion);
        ManualFloat(BoundsRect);
      end;
      TranslateComponent(sk);
    except
      Freeandnil(sk);
      raise;
    end;
  end;
end;

procedure TfmListaDePasos.JvStringGrid1DragOver(Sender, Source: TObject; X, Y: 
        Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := Sender is TJvStringGrid;
end;

procedure TfmListaDePasos.JvStringGrid1DrawCell(Sender: TObject; ACol, ARow: 
        Integer; Rect: TRect; State: TGridDrawState);
var
  Sentence, CurWord: string;
  SpacePos, CurX, CurY: Integer;
  EndOfSentence: Boolean;
  LineBreak: Boolean;
begin
  with JvStringGrid1 do begin
    { Initialize the font to be the control's font }
    Canvas.Font := Font;
  
    with Canvas do begin
      {If this is a fixed cell, then use the fixed color}
      if gdFixed in State then begin
         Pen.Color   := FixedColor;
         Brush.Color := FixedColor;
      end
      {else use the normal color}
      else
        if (ACol >= Selection.Left) and (ACol <= Selection.Right) and
        (ARow >= Selection.Top) and (ARow <= Selection.Bottom)then
        begin
          Pen.Color   := clHighlight;
          Brush.Color := clHighlight;
          Canvas.Font.Color := clHighlightText;
        end
        else
        begin
          Pen.Color   := Color;
          Brush.Color := Color;
        end;
  
      {Prepaint cell in cell color}
      Rectangle(Rect.Left, Rect.Top, Rect.Right, Rect.Bottom);
   end;
  
   { Start the drawing in the upper left corner of the cell }
   CurX := Rect.Left;
   CurY := Rect.Top;
  
   { Here we get the contents of the cell }
   Sentence := Cells[ACol, ARow];
  
   { for each word in the cell }
   EndOfSentence := FALSE;
   while (not EndOfSentence) do begin
      { to get the next word, we search for a space }
      SpacePos := Pos(' ', Sentence);
      LineBreak := ((Pos('|', Sentence) < SpacePos) and (Pos('|', Sentence)>0)) or ((Pos('|', Sentence)>0) and (SpacePos = 0));
      if LineBreak then
        SpacePos := Pos('|', Sentence);
      if SpacePos > 0 then begin
         { get the current word plus the space }
         if LineBreak then
         begin
           CurWord := Copy(Sentence, 0, SpacePos - 1);
           { get the rest of the sentence }
           Sentence := Copy(Sentence, SpacePos +1, Length(Sentence) - SpacePos);
         end
         else
         begin
           CurWord := Copy(Sentence, 0, SpacePos);
           { get the rest of the sentence }
           Sentence := Copy(Sentence, SpacePos + 1, Length(Sentence) - SpacePos);
         end;
      end
      else begin
         { this is the last word in the sentence }
         EndOfSentence := TRUE;
         CurWord := Sentence;
      end;

      with Canvas do begin
         { if the text goes outside the boundary of the cell }
         if (TextWidth(CurWord) + CurX) > Rect.Right then begin
            { wrap to the next line }
            CurY := CurY + TextHeight('W');
            CurX := Rect.Left;
         end;
         { write out the word }
         TextOut(CurX, CurY, CurWord);
         { increment the x position of the cursor }
         if LineBreak then
         begin
            { wrap to the next line }
            CurY := CurY + TextHeight('W');
            CurX := Rect.Left;
         end else
           CurX := CurX + TextWidth(CurWord);
      end;
   end;
      if JvStringGrid1.RowHeights[ARow] < CurY - Rect.Top + JvStringGrid1.Canvas.TextHeight('W')+2 then
        JvStringGrid1.RowHeights[ARow]:= CurY - Rect.Top + JvStringGrid1.Canvas.TextHeight('W')+2;
  end;
end;

procedure TfmListaDePasos.JvStringGrid1EndDrag(Sender, Target: TObject; X, Y: 
        Integer);
begin
  //  (sender as TJvStringGrid).Selection.Top
end;

procedure TfmListaDePasos.JvStringGrid1GetEditText(Sender: TObject; ACol, ARow: 
        Integer; var Value: String);
begin
  if (Acol=0) and (Arow=0) then
    value := 'W';
end;

procedure TfmListaDePasos.refrescarListaPasos;
var
   lista: TStringList;
   i: Integer;
begin
   lista := entorno.getDescListaPasos(self.name);
   if lista.Count = 0 then
   begin
      JvStringGrid1.RowCount := 1;
      JvStringGrid1.Cells[0,0] := '';
   end
   else
   begin
      JvStringGrid1.Clear;
      //JvStringGrid1.Enabled := lista.Count >=1;
      JvStringGrid1.RowCount := lista.Count;
      for i := 0 to lista.Count-1 do
         JvStringGrid1.Rows[i].AddObject(copy(lista.strings[i], pos('|',lista.strings[i])+1, maxint), TString.Create(copy(lista.strings[i], 0, pos('|',lista.strings[i])-1)));
   end;
end;

procedure TfmListaDePasos.SetArchivoListaPasos(const Value: string);
begin
  FArchivoListaPasos := Value;
  Titulo := Value;
end;

{ TString }

{
*********************************** TString ************************************
}
constructor TString.create(unvalor:string);
begin
  valor:= unvalor;
end;

procedure TfmListaDePasos.AgregarVinculacionResultado(Sender: TObject);
var
  f: TfmListaResultados;
  referencia: TButton;
  nombre: string;
begin
  f:=TfmListaResultados.Create(self);
  try
    if f.Execute(name,
          TControl(pmReferencias.PopupComponent).parent.parent.parent.hint,
          entorno.getTipoDatoParametro(
          TControl(pmReferencias.PopupComponent).parent.parent.parent.name,
          pmReferencias.PopupComponent.Name)) and (f.seleccionado <> '') then
    begin
      entorno.agregarVinculacionAParametro(name,
          TControl(pmReferencias.PopupComponent).parent.parent.parent.hint,
          pmReferencias.PopupComponent.Name,
          f.seleccionado);
      referencia := TARPIReferencia.Create(TControl(pmReferencias.PopupComponent).Parent);
      referencia.parent := TControl(pmReferencias.PopupComponent).Parent;
      referencia.Hint := f.seleccionado;
      referencia.BoundsRect := TControl(pmReferencias.PopupComponent).BoundsRect;
      nombre := TControl(pmReferencias.PopupComponent).Name;
      TControl(pmReferencias.PopupComponent).Free;
      referencia.Name := nombre;
      referencia.Caption := _('Resultado Anterior');
      referencia.PopupMenu := pmReferencias;
      referencia.OnClick := mostrarVinculacion;
    end;
  finally
    Freeandnil(f);
  end;
end;

procedure TfmListaDePasos.CrearListaReferencias(Sender: TObject);
var
  f: TfmListaReferencias;
  referencia: TButton;
begin
  referencia := TARPIListaReferencias.Create(TControl(pmReferencias.PopupComponent).Parent);
  f := TfmListaReferencias.Create(referencia);
  if f.crearNuevaListaReferencia(entorno.getTipoDatoParametro(
    TControl(pmReferencias.PopupComponent).parent.parent.parent.name,
    pmReferencias.PopupComponent.Name)) then
  begin
    referencia.parent := TControl(pmReferencias.PopupComponent).Parent;
    referencia.BoundsRect := TControl(pmReferencias.PopupComponent).BoundsRect;
    referencia.Name := f.Name;
    referencia.Hint := pmReferencias.PopupComponent.Name;
    referencia.Caption := _('Lista de Referencias');
    entorno.agregarListaReferencias(name,
        TControl(pmReferencias.PopupComponent).parent.parent.parent.hint,
        pmReferencias.PopupComponent.Name,
        f.Name);
    referencia.OnClick := mostrarReferencia;
    referencia.PopupMenu := pmReferencias;
  end
  else
    Freeandnil(referencia);
end;

procedure TfmListaDePasos.AbrirListaReferencias(Sender: TObject);
var
  f: TfmListaReferencias;
  referencia: TButton;
begin
  referencia := TARPIListaReferencias.Create(pmReferencias.PopupComponent);
  f := TfmListaReferencias.Create(referencia);
  if f.abrirListaReferencia then
  begin
    referencia.parent := TControl(pmReferencias.PopupComponent).Parent;
    referencia.BoundsRect := TControl(pmReferencias.PopupComponent).BoundsRect;
    referencia.Name := f.Name;
    referencia.Caption := _('Lista de Referencias');
    referencia.OnClick := mostrarReferencia;
    referencia.PopupMenu := pmReferencias;
    entorno.agregarListaReferencias(name,
        referencia.parent.parent.parent.hint,
        pmReferencias.PopupComponent.Name,
        f.Name);
  end
  else
    Freeandnil(referencia);
end;

procedure TfmListaDePasos.aGuardarComoListaDePasosExecute(Sender: TObject);
begin
  if JvSaveDialog1.Execute then
  begin
    ArchivoListaPasos := ChangeFileExt(JvSaveDialog1.FileName, EXTENSION_LISTA_DE_PASOS);
    entorno.guardarListaPasos(self.name,ArchivoListaPasos);
    cambio := false;
  end;
end;

procedure TfmListaDePasos.editarDescripcionUpdate(Sender: TObject);
begin
   editarDescripcion.Enabled := entorno.getDescListaPasos(self.name).Count >= 1;
end;

procedure TfmListaDePasos.reabrirListaDePasos(ID: string);
begin
   name := ID;
   refrescarListaPasos;
end;

procedure TfmListaDePasos.crearNuevaListaPasos;
begin
   self.name := entorno.nuevaListaPasos();
   refrescarListaPasos;
end;

procedure TfmListaDePasos.SetTitulo(const Value: string);
begin
   Caption := 'Lista de Pasos: ' + Value;
end;

procedure TfmListaDePasos.mostrarReferencia(Sender: TObject);
var
  f: TfmListaReferencias;
  i: integer;
begin
  if (Sender is TButton) then
  begin
    i:=0;
    while (i < TButton(Sender).ComponentCount) and not (TButton(Sender).Components[i].InheritsFrom(TForm)) do
      inc(i);
    if (i < TButton(Sender).ComponentCount) then
      TForm(TButton(Sender).Components[i]).Show
    else
    begin
      f := TfmListaReferencias.Create(TButton(Sender));
      f.abrirListaReferencia(TButton(Sender).Name);
    end;
  end;
end;

procedure TfmListaDePasos.mostrarVinculacion(Sender: TObject);
var
  f: TfmListaResultados;
begin
  if (Sender is TButton) then
  begin
    f := TfmListaResultados.Create(TButton(Sender));
    if f.Execute(name,
        TControl(Sender).parent.parent.parent.hint,
        entorno.getTipoDatoParametro(
        TControl(Sender).parent.parent.parent.name,
        TControl(Sender).Name),
        TControl(Sender).Hint) and (f.seleccionado <> '') then
    begin
      entorno.modificarVinculacionAParametro(name,
          TButton(Sender).parent.parent.parent.hint,
          TButton(Sender).Name,
          f.seleccionado);
      TButton(Sender).Hint := f.seleccionado;
    end;
    FreeAndNil(f);
  end;
end;

procedure TfmListaDePasos.QuitarListaReferencias(Sender: TObject);
begin
  entorno.quitarListaReferencias(name,
    TControl(pmReferencias.PopupComponent).parent.parent.parent.hint,
    TControl(pmReferencias.PopupComponent).hint,
    TControl(pmReferencias.PopupComponent).name);
  TControl(pmReferencias.PopupComponent).Hide;
end;

procedure TfmListaDePasos.QuitarVinculoResultado(Sender: TObject);
var
  idioma: TStringList;
begin
  entorno.quitarVinculacionAParametro(name,
    TControl(pmReferencias.PopupComponent).parent.parent.parent.hint,
    TControl(pmReferencias.PopupComponent).Name);
  with TShrinkPanel(TControl(pmReferencias.PopupComponent).parent.parent.parent) do
  begin
    idioma := entorno.getListaIdiomasAlgoritmo(TControl(pmReferencias.PopupComponent).Parent.Parent.Parent.Name);
    formulario := entorno.mostrarFormularioAlgoritmo(TControl(pmReferencias.PopupComponent).Parent.Parent.Parent.Name);
    mostrarIdiomas(idioma);
    Loaded;
    AsignarPopup(pmReferencias);
    AsignarListaReferencias(mostrarReferencia);
    AsignarVinculoResultados(mostrarVinculacion);
  end;
end;

procedure TfmListaDePasos.esComponente(Sender: TObject);
begin
  if (Sender is TAction) then
    TAction(Sender).Enabled := Screen.ActiveCustomForm.InheritsFrom(TDockForm) and
      not (pmReferencias.PopupComponent is TARPIReferencia)and
      not (pmReferencias.PopupComponent is TARPIListaReferencias);
end;

procedure TfmListaDePasos.esReferencia(Sender: TObject);
begin
  if (Sender is TAction) then
    TAction(Sender).Enabled := Screen.ActiveCustomForm.InheritsFrom(TDockForm) and
      (pmReferencias.PopupComponent is TARPIReferencia);
end;

procedure TfmListaDePasos.esListaReferencia(Sender: TObject);
begin
  if (Sender is TAction) then
    TAction(Sender).Enabled := Screen.ActiveCustomForm.InheritsFrom(TDockForm) and
      (pmReferencias.PopupComponent is TARPIListaReferencias);
end;

function TfmListaDePasos.enEjecucion: boolean;
begin
  result := entorno.listaPasoEnEjecucion(self.Name);
end;

procedure TfmListaDePasos.aMoverAlPrincipioExecute(Sender: TObject);
var
  sel: TGridRect;
begin
  entorno.moverPaso(self.name,JvStringGrid1.Selection.Top,0);
  sel := JvStringGrid1.Selection;
  sel.Top := 0;
  sel.Bottom := 0;
  JvStringGrid1.Selection := sel;
  refrescarListaPasos;
  cambio := true;
end;

procedure TfmListaDePasos.aMoverAlFinalExecute(Sender: TObject);
var
  sel: TGridRect;
begin
  entorno.moverPaso(self.name,JvStringGrid1.Selection.Top,JvStringGrid1.RowCount-1);
  sel := JvStringGrid1.Selection;
  sel.Top := JvStringGrid1.RowCount-1;
  sel.Bottom := JvStringGrid1.RowCount-1;
  JvStringGrid1.Selection := sel;
  refrescarListaPasos;
  cambio := true;
end;

procedure TfmListaDePasos.aMoverAbajoExecute(Sender: TObject);
var
  sel: TGridRect;
begin
  sel := JvStringGrid1.Selection;
  if JvStringGrid1.RowCount > sel.Top+1 then
  begin
    entorno.moverPaso(self.name,JvStringGrid1.Selection.Top,JvStringGrid1.Selection.Top+1);
    sel.Top := sel.Top+1;
    sel.Bottom := sel.Bottom+1;
    JvStringGrid1.Selection := sel;
    refrescarListaPasos;
    cambio := true;
  end;
end;

procedure TfmListaDePasos.aMoverArribaExecute(Sender: TObject);
var
  sel: TGridRect;
begin
  sel := JvStringGrid1.Selection;
  if sel.Top-1 >= 0 then
  begin
    entorno.moverPaso(self.name,JvStringGrid1.Selection.Top,JvStringGrid1.Selection.Top-1);
    sel.Top := sel.Top-1;
    sel.Bottom := sel.Bottom-1;
    JvStringGrid1.Selection := sel;
    refrescarListaPasos;
    cambio := true;
  end;
end;

procedure TfmListaDePasos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := entorno.cerrarListaDePasos(name);
end;

end.

