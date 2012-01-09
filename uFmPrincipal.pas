unit ufmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, JvLabel, Menus, ToolWin, ImgList,
  uShrinkPanel, uEntornoEjecucion, ExtDlgs, DelphiTwain, JvExControls,
  JvComponent, JvXPCore, JvXPButtons, JvXPBar, JvNavigationPane, ActnList,
  JvDialogs, ufmMatriz, StdActns, ufmListaDePasos, JvExComCtrls, JvComCtrls,
  JvListView, DynToolBar, Buttons, JvSpeedButton, ufmthreads, Clipbrd,
  JvExExtCtrls, JvControlBar,ufmListaReferencias, AppEvnts, JvExStdCtrls,
  JvCombobox, IdBaseComponent, IdComponent, IdTCPServer, IdFTPServer, XMLIntf,
  uAlgoritmo, HH, HH_FUNCS;

type
  TfmPrincipal = class (TForm)
    ToolButton38: TToolButton;
    aEjecutarListaPasos: TAction;
    aMoverPasoAlPrincipio: TAction;
    aMoverPasoAlFinal: TAction;
    ToolButton39: TToolButton;
    ToolButton40: TToolButton;
    aMoverPasoAbajo: TAction;
    aMoverPasoArriba: TAction;
    ToolButton43: TToolButton;
    ToolButton48: TToolButton;
    aPausarLP: TAction;
    aPararLP: TAction;
    ToolButton49: TToolButton;
    ToolButton50: TToolButton;
    ToolButton51: TToolButton;
    ToolButton52: TToolButton;
    N2: TMenuItem;
    MoverArriba1: TMenuItem;
    MoverAbajo1: TMenuItem;
    Moveralcomienzodelalista1: TMenuItem;
    Moveralfinaldelalista1: TMenuItem;
    N5: TMenuItem;
    BorrarReferencia1: TMenuItem;
    aAgregarReferencia: TAction;
    ToolButton53: TToolButton;
    Agregarnuevareferencia1: TMenuItem;
    N6: TMenuItem;
    EjecutarListadePasos1: TMenuItem;
    Pausarlistadepasos1: TMenuItem;
    Detenerlistadepasos1: TMenuItem;
    N13: TMenuItem;
    Moverhaciaarriba1: TMenuItem;
    Moverhaciaabajo1: TMenuItem;
    Moveralprincipiodelalista1: TMenuItem;
    Moveralfinaldelalista2: TMenuItem;
    N14: TMenuItem;
    DuplicarPaso1: TMenuItem;
    aEliminarPaso1: TMenuItem;
    aEditarDescripcion1: TMenuItem;
    ToolButton54: TToolButton;
    ToolButton55: TToolButton;
    ToolButton56: TToolButton;
    ToolButton57: TToolButton;
    ToolButton58: TToolButton;
    ToolButton59: TToolButton;
    ToolButton60: TToolButton;
    Pegar1: TMenuItem;
    N15: TMenuItem;
    Deshacer1: TMenuItem;
    EliminarFila1: TMenuItem;
    Hilosdeejecucin1: TMenuItem;
    aVerHilos: TAction;
    N16: TMenuItem;
    ConvertirImagenenMatriz1: TMenuItem;
//    GuardarComo1: TMenuItem;
    procedure Acercade2Click(Sender: TObject);
    procedure PuedeDeshacerImagen(Sender: TObject);
    procedure PuedeRehacerImagen(Sender: TObject);
    procedure BarradeHerramientasDockOver(Sender: TObject;
      Source: TDragDockObject; X, Y: Integer; State: TDragState;
      var Accept: Boolean);
    procedure aEjecutarListaPasosExecute(Sender: TObject);
    procedure resultadoFTPStoreFile(ASender: TIdFTPServerThread;
      const AFileName: String; AAppend: Boolean; var VStream: TStream);
    procedure resultadoFTPDisconnect(AThread: TIdPeerThread);
    procedure aMoverPasoAlPrincipioExecute(Sender: TObject);
    procedure aMoverPasoAlFinalExecute(Sender: TObject);
    procedure aMoverPasoAbajoExecute(Sender: TObject);
    procedure aMoverPasoArribaExecute(Sender: TObject);
    procedure TerminoSecuencia(var Msg: TMessage); message WM_MiMSG;
    procedure aPausarLPExecute(Sender: TObject);
    procedure aPararLPExecute(Sender: TObject);
    procedure aPausarLPUpdate(Sender: TObject);
    procedure aPararLPUpdate(Sender: TObject);
    procedure aAgregarReferenciaExecute(Sender: TObject);
    procedure aImprimirMatrizExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure aAyudaExecute(Sender: TObject);
    function FormHelp(Command: Word; Data: Integer;
      var CallHelp: Boolean): Boolean;
    procedure aVerHilosExecute(Sender: TObject);
    procedure aAyudaPaginaExecute(Sender: TObject);
    procedure aCortarMatrizExecute(Sender: TObject);
    procedure CargarHintsLista(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure CargarHintArbol(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  published
    resultadoFTP: TIdFTPServer;
    AbrirDlg: TJvOpenDialog;
    aAbrirImagen: TAction;
    mAbrirImagen: TMenuItem;
    mAbrirListadePasos: TMenuItem;
    mAbrirListadeReferencias: TMenuItem;
    aAbrirMatriz: TAction;
    mAbrirMatriz: TMenuItem;
    AcercaDe1: TMenuItem;
    listaAcciones: TActionList;
    aAdquirirImagen: TAction;
    AgregarCategora1: TMenuItem;
    AgregarCategora2: TMenuItem;
    agregarCategoria: TAction;
    agregarSubcategoria: TAction;
    arbolCategorias: TJvTreeView;
    mArchivo: TMenuItem;
    Ayuda1: TMenuItem;
    Ayuda2: TMenuItem;
    mBarradeImagenes: TMenuItem;
    mBarradeMatrices: TMenuItem;
    mBarradePasos: TMenuItem;
    Bevel1: TBevel;
    mCascada: TMenuItem;
    aCerrarImagen: TAction;
    mCerrarImagen: TMenuItem;
    mCerrarListadePasos: TMenuItem;
    mCerrarListadeReferecias: TMenuItem;
    mCerrarMatriz: TMenuItem;
    aCerrarTodasLasImagenes: TAction;
    Como1: TMenuItem;
    mConfiguraciondelEntorno: TMenuItem;
    CopiarCeldas2: TMenuItem;
    mCopiarSeleccionImagen: TMenuItem;
    CortarCeldas2: TMenuItem;
    mCortarSeleccionImagen: TMenuItem;
    aNuevaMatriz: TAction;
    mDeshacerModificacionImagen: TMenuItem;
    mEliminarColumna: TMenuItem;
    DynToolBar1: TDynToolBar;
    EliminarCategora1: TMenuItem;
    eliminarCategoria: TAction;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    mGuardarComoImagen: TMenuItem;
    aGuardarImagen: TAction;
    aGuardarImagenComo: TAction;
    mGuardarImagen: TMenuItem;
    mGuardarListadePasos: TMenuItem;
    mGuardarListadePasosComo: TMenuItem;
    mGuardarListadeReferenciasComo: TMenuItem;
    aGuardarMatrizComo: TMenuItem;
    mInsertarColumnaMatriz: TMenuItem;
    mGusradarListadeReferencias: TMenuItem;
    ImagenesCategorias: TImageList;
    imagenesEntorno16: TImageList;
    mImagen: TMenuItem;
    mAdquirirImagen: TMenuItem;
    mImportarListadePasos: TMenuItem;
    mImportarListadeReferencias: TMenuItem;
    aImprimirImagen: TAction;
    mImprimirImagen: TMenuItem;
    mImprimirMatriz: TMenuItem;
    JvAngleLabel1: TJvLabel;
    JvOpenDMatriz: TJvOpenDialog;
    ListadePasos1: TMenuItem;
    MainMenu1: TMainMenu;
    mMinimizarTodo: TMenuItem;
    mMosaicoHorizontal: TMenuItem;
    mMosaicoVertical: TMenuItem;
    mListadeReferencias: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    mMatriz: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    mNuevaListadePasos: TMenuItem;
    mNuevaListadeReferencias: TMenuItem;
    aNuevaListaPasos: TAction;
    mNuevaMatriz: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    Panel1: TPanel;
    PegarCeldas2: TMenuItem;
    mPegarComoImagenNueva: TMenuItem;
    mPegarSeleccionImagen: TMenuItem;
    PopupCategorias: TPopupMenu;
    quitarAlgoritmo: TAction;
    QuitarAlgoritmo1: TMenuItem;
    mRehacerModificacionImagen: TMenuItem;
    RehacerModificacin3: TMenuItem;
    renombrarCategoria: TAction;
    RenombrarCategoria1: TMenuItem;
    aSalir: TAction;
    mSalir: TMenuItem;
    SavePictureDialog1: TSavePictureDialog;
    ScrollBox1: TScrollBox;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    StatusBar1: TStatusBar;
    Ventanas1: TMenuItem;
    mVer: TMenuItem;
    aVentanaCascada: TWindowCascade;
    aVentanaMinimizarTodo: TWindowMinimizeAll;
    aVentanaMosaicoHorizontal: TWindowTileHorizontal;
    aVentanaMosaicoVertical: TWindowTileVertical;
    popSelect: TPopupMenu;
    mSeleccionCuadrada: TMenuItem;
    mSelccionCircular: TMenuItem;
    mSeleccionPoligono: TMenuItem;
    DDMZoom: TPopupMenu;
    N111: TMenuItem;
    N211: TMenuItem;
    N121: TMenuItem;
    MenuItem1: TMenuItem;
    Otro1: TMenuItem;
    mRefrescarThreads: TMenuItem;
    aConfiguraciondelEntorno: TAction;
    aDeshacerImagen: TAction;
    aRehacerImagen: TAction;
    aCopiarImagen: TAction;
    aCortarImagen: TAction;
    aPegarImagen: TAction;
    aPegarImagenNueva: TAction;
    aAbrirListaPasos: TAction;
    aGuardarListaPasos: TAction;
    aGuardarComoListaPasos: TAction;
    aCerrarListaPasos: TAction;
    aGuardarMatriz: TAction;
    aGuardarComoMatriz: TAction;
    aImprimirMatriz: TAction;
    aCerrarMatriz: TAction;
    aImagenSelNo: TAction;
    aImagenSelRect: TAction;
    aImagenSelCirc: TAction;
    aImagenSelPoli: TAction;
    aAyuda: TAction;
    aAyudaContenido: TAction;
    aAyudaPagina: TAction;
    N1: TMenuItem;
    Acercade2: TMenuItem;
    aConfigurarPropiedadesMatriz: TAction;
    aInsertarFila: TAction;
    aInsertarColumna: TAction;
    aEliminarFila: TAction;
    aEliminarColumna: TAction;
    aCopiarMatriz: TAction;
    aCortarMatriz: TAction;
    aPegarMatriz: TAction;
    aDeshacerMatriz: TAction;
    aRehacerMatriz: TAction;
    aImagenAMatriz: TAction;
    aAbrirListaReferencias: TAction;
    odListaPasos: TJvOpenDialog;
    aNuevaListaReferencias: TAction;
    aCerrarListaReferencias: TAction;
    aBorrarReferencia: TAction;
    aVerBarradeAlgoritmos: TAction;
    aVerBarradeImagenes: TAction;
    aVerBarradeMatrices: TAction;
    aVerBarradePasos: TAction;
    aVerBarradeReferencias: TAction;
    mBarradeReferencias: TMenuItem;
    pmVerBarras: TPopupMenu;
    BarradeAlgoritmos1: TMenuItem;
    BarradeImgenes1: TMenuItem;
    BarradeMatrices1: TMenuItem;
    BarradePasos1: TMenuItem;
    BarradeReferencias1: TMenuItem;
    listaAlgoritmos: TJvListView;
    BarradeHerramientas: TControlBar;
    tbMatrices: TToolBar;
    ToolButton6: TToolButton;
    ToolButton12: TToolButton;
    ToolButton5: TToolButton;
    ToolButton10: TToolButton;
    ToolButton14: TToolButton;
    ToolButton21: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    ToolButton20: TToolButton;
    ToolButton22: TToolButton;
    ToolButton23: TToolButton;
    ToolButton24: TToolButton;
    tbImagenes: TToolBar;
    ToolButton2: TToolButton;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    tbCerrarImagen: TToolButton;
    ToolButton7: TToolButton;
    tbNoSelect: TToolButton;
    tbSelect: TToolButton;
    ToolButton8: TToolButton;
    tbCopy: TToolButton;
    tbCut: TToolButton;
    tbPaste: TToolButton;
    tbPegarNuevaImagen: TToolButton;
    ToolButton9: TToolButton;
    tbUndo: TToolButton;
    tbRedo: TToolButton;
    ToolButton13: TToolButton;
    tbImgToMtrx: TToolButton;
    ImagenesEntorno24: TImageList;
    ToolButton15: TToolButton;
    ToolButton11: TToolButton;
    JvOpenDListaReferencias: TJvOpenDialog;
    ToolButton25: TToolButton;
    ToolButton26: TToolButton;
    ToolButton27: TToolButton;
    tbListaReferencias: TToolBar;
    ToolButton28: TToolButton;
    ToolButton29: TToolButton;
    ToolButton30: TToolButton;
    ToolButton31: TToolButton;
    ToolButton32: TToolButton;
    ToolButton33: TToolButton;
    aMoverReferenciaArriba: TAction;
    aMoverReferenciaAbajo: TAction;
    aMoverReferenciaAPrincipio: TAction;
    aMoverReferenciaAFinal: TAction;
    aGuardarComoListaReferencias: TAction;
    aAgregarListaDeReferencia: TAction;
    aEliminarPaso: TAction;
    aDuplicarPaso: TAction;
    aEditarDescripcion: TAction;
    aAgregarListaPasos: TAction;
    tbListaPasos: TToolBar;
    ToolButton42: TToolButton;
    ToolButton41: TToolButton;
    ToolButton44: TToolButton;
    ToolButton45: TToolButton;
    ToolButton47: TToolButton;
    ToolButton46: TToolButton;
    ToolButton34: TToolButton;
    ToolButton35: TToolButton;
    ToolButton36: TToolButton;
    ToolButton37: TToolButton;
    eventos: TApplicationEvents;
    procedure abrirImagen(Sender: TObject);
    procedure abrirArchivoImagen(archivo: string);
    procedure abrirArchivoMatriz(archivo: string);
    procedure aAbrirMatrizExecute(Sender: TObject);
    procedure ActualizarAlgoritmo(algoritmo: string; conError: boolean);
    procedure adquirirImagen(Sender: TObject);
    procedure agregarCategoriaExecute(Sender: TObject);
    procedure agregarCategoriaUpdate(Sender: TObject);
    procedure agregarSubcategoriaExecute(Sender: TObject);
    procedure agregarSubcategoriaUpdate(Sender: TObject);
    procedure arbolCategoriasDblClick(Sender: TObject);
    procedure arbolCategoriasDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure arbolCategoriasDragOver(Sender, Source: TObject; X, Y: Integer;
            State: TDragState; var Accept: Boolean);
    procedure arbolCategoriasGetImageIndex(Sender: TObject; Node: TTreeNode);
    procedure CerrarVentana(Sender: TObject);
    procedure configuraciondelEntorno(Sender: TObject);
    procedure aNuevaMatrizExecute(Sender: TObject);
    procedure DelphiTwain1TwainAcquire(Sender: TObject; const Index: Integer;
            Image: TBitmap; var Cancel: Boolean);
    procedure DynToolBar2MouseMove(Sender: TObject; Shift: TShiftState; X, Y:
            Integer);
    procedure eliminarCategoriaExecute(Sender: TObject);
    procedure eliminarCategoriaUpdate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDragOver(Sender, Source: TObject; X, Y: Integer; State:
            TDragState; var Accept: Boolean);
    procedure guardarImagenComo(Sender: TObject);
    procedure guardarImagen(Sender: TObject);
    procedure ImportarImagen1Click(Sender: TObject);
    procedure JvAngleLabel1DblClick(Sender: TObject);
    procedure MostrarVentanaThreads(msg: string);
    procedure aNuevaListaPasosExecute(Sender: TObject);
    procedure Panel1Enter(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure quitarAlgoritmoExecute(Sender: TObject);
    procedure quitarAlgoritmoUpdate(Sender: TObject);
    procedure renombrarCategoriaExecute(Sender: TObject);
    procedure renombrarCategoriaUpdate(Sender: TObject);
    procedure aSalirExecute(Sender: TObject);
    procedure verDATA1Click(Sender: TObject);
    procedure aVentanaCascadaExecute(Sender: TObject);
    procedure aVentanaMinimizarTodoExecute(Sender: TObject);
    procedure aVentanaMosaicoHorizontalExecute(Sender: TObject);
    procedure aVentanaMosaicoVerticalExecute(Sender: TObject);
    procedure tbNoSelectClick(Sender: TObject);
    procedure cambioSeleccion(Sender: TObject);
    procedure cortarImagen(Sender: TObject);
    procedure tbSelectClick(Sender: TObject);
    procedure copiarImagen(Sender: TObject);
    procedure pegarImagen(Sender: TObject);
    procedure tbZoomClick(Sender: TObject);
    procedure N211Click(Sender: TObject);
    procedure N121Click(Sender: TObject);
    procedure Otro1Click(Sender: TObject);
    procedure popSelectPopup(Sender: TObject);
    procedure mRefrescarThreadsClick(Sender: TObject);
    procedure deshacerImagen(Sender: TObject);
    procedure rehacerImagen(Sender: TObject);
    procedure ImprimirImagen(Sender: TObject);
    procedure aConfigurarPropiedadesMatrizExecute(Sender: TObject);
    procedure aInsertarFilaExecute(Sender: TObject);
    procedure aGuardarComoMatrizExecute(Sender: TObject);
    procedure aGuardarMatrizExecute(Sender: TObject);
    procedure aInsertarColumnaExecute(Sender: TObject);
    procedure aCopiarMatrizExecute(Sender: TObject);
    procedure aPegarMatrizExecute(Sender: TObject);
    procedure aDeshacerMatrizExecute(Sender: TObject);
    procedure aRehacerMatrizExecute(Sender: TObject);
    procedure aEliminarColumnaExecute(Sender: TObject);
    procedure aEliminarFilaExecute(Sender: TObject);
    procedure aCerrarMatrizExecute(Sender: TObject);
    procedure PuedeDeshacerMatriz(Sender: TObject);
    procedure PuedeRehacerMatriz(Sender: TObject);
    procedure PuedePegarMatriz(Sender: TObject);
    procedure arbolCategoriasEdited(Sender: TObject; Node: TTreeNode;
      var S: String);
    procedure tbSelectMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure mSeleccionCuadradaClick(Sender: TObject);
    procedure pegarImagenNueva(Sender: TObject);
    procedure aImagenAMatrizExecute(Sender: TObject);
    procedure aCerrarImagenExecute(Sender: TObject);
    procedure aAbrirListaReferenciasExecute(Sender: TObject);
    procedure aAbrirListaPasosExecute(Sender: TObject);
    procedure aNuevaListaReferenciasExecute(Sender: TObject);
    procedure aCerrarListaReferenciasExecute(Sender: TObject);
    procedure verBarra(Sender: TObject);
    procedure aBorrarReferenciaExecute(Sender: TObject);
    procedure aGuardarListaReferenciasExecute(Sender: TObject);
    procedure esListaReferencias(Sender: TObject);
    procedure esListaPasos(Sender: TObject);
    procedure esListaPasosNoEjecucion(Sender: TObject);
    procedure esImagen(Sender: TObject);
    procedure esMatriz(Sender: TObject);
    procedure esFilaoCol(Sender: TObject);
    procedure aMoverReferenciaArribaExecute(Sender: TObject);
    procedure aMoverReferenciaAbajoExecute(Sender: TObject);
    procedure aMoverReferenciaAPrincipioExecute(Sender: TObject);
    procedure aMoverReferenciaAFinalExecute(Sender: TObject);
    procedure aGuardarComoListaReferenciasExecute(Sender: TObject);
    procedure aAgregarListaDeReferenciaExecute(Sender: TObject);
    procedure aGuardarListaPasosExecute(Sender: TObject);
    procedure aCerrarListaPasosExecute(Sender: TObject);
    procedure aEliminarPasoExecute(Sender: TObject);
    procedure aDuplicarPasoExecute(Sender: TObject);
    procedure aEditarDescripcionExecute(Sender: TObject);
    procedure aAgregarListaPasosExecute(Sender: TObject);
    procedure aGuardarComoListaPasosExecute(Sender: TObject);
    procedure eventosHint(Sender: TObject);
  private
    FAyuda: string;
    Ftimer: TTimer;
    listaAlgoritmosAbiertos: TStringList;
    archivosResultado: TStringList;
    resultados: string;
    procedure SetAyuda(const Value: string);
    procedure CerrarVentanaPaso(Sender: TObject; var Action: TCloseAction);
    procedure EjecutarAlgoritmo(Sender: TObject);
    procedure GuardarPaso(Sender: TObject);
    procedure mostrarListaPasos(nombre: string);
    function noExisteHijo(texto: string; nodo: TTreeNode):boolean;
    function noExisteHermano(texto: string; nodo: TTreeNode):boolean;
    procedure MostrarImagen(const unaImagen:String);
    procedure MostrarMatriz(const unaMatriz:String);
    procedure CambiarIdioma(Sender: TObject; unIdioma: string);
    procedure devolverResultados;
  public
    property Ayuda: string read FAyuda write SetAyuda;
  end;

var
  fmPrincipal: TfmPrincipal;
  entorno : TEntornoEjecucion;
  fmListaDePasos: TfmListaDePasos;
  mHHelp: THookHelpSystem;

implementation
uses StrUtils, ufmimagen, ufmConfigEntorno, GR32, ufmzoomimg, gnugettext,
  uConsts, ufmAcerca, ufmSeleccionListaPasos, ufmEjecutarLP, XMLDoc, ComObj,
  ActiveX, ufmImprimirImagen, ShellApi;

{$R *.dfm}

{
********************************* Tfmprincipal *********************************
}
procedure Tfmprincipal.abrirImagen(Sender: TObject);
var
  formulario: TfmImagen;
begin
  OpenPictureDialog1.FileName := '';
  OpenPictureDialog1.DefaultExt := GraphicExtension(TBitmap);
  OpenPictureDialog1.Filter := GraphicFilter(TGraphic);
  if OpenPictureDialog1.Execute then
  begin
    formulario:= TfmImagen.Create(Self);
    formulario.name := entorno.abrirImagen(OpenPictureDialog1.FileName, true);
    formulario.nombreArchivo := OpenPictureDialog1.FileName;
    formulario.image1.Bitmap := entorno.getValorImagen(formulario.name);
    formulario.BitmapList.Bitmaps[0].Bitmap := formulario.image1.Bitmap;
    formulario.Image1.Width := formulario.image1.Bitmap.Width+20;
    formulario.Image1.Height := formulario.image1.Bitmap.Height+20;
    formulario.Height := formulario.image1.Bitmap.Height+54+formulario.StBarImg.Height;
    formulario.Width := formulario.image1.Bitmap.Width+28;
    formulario.Caption :=  _('Imagen: ') + ExtractFileName(OpenPictureDialog1.FileName);
    formulario.StBarImg.SimpleText := formulario.Name;
    formulario.Show;
    tbNoSelect.Down := true;
    tbUndo.Enabled :=false;
    tbRedo.Enabled :=false;
    tbCerrarImagen.Enabled := true;
  end;
end;

procedure Tfmprincipal.aAbrirMatrizExecute(Sender: TObject);
var
  formulario: TfmMatriz;
begin
  if JvOpenDMatriz.Execute then
  begin
    formulario := TfmMatriz.Create(self);
    formulario.crearAbriendoMatriz(JvOpenDMatriz.FileName)//abrirMatrizExecute(self);
  end;
end;

procedure Tfmprincipal.ActualizarAlgoritmo(algoritmo: string; conError:boolean);
var
  sk: TShrinkPanel;
  index: Integer;
begin
  index:=listaAlgoritmosAbiertos.IndexOf(algoritmo);
  sk := TShrinkPanel(listaAlgoritmosAbiertos.Objects[index]);
  sk.FinEjecutar(conError);
end;

procedure Tfmprincipal.adquirirImagen(Sender: TObject);
var
  DelphiTwain1: TDelphiTwain;
  SourceIndex: Integer;
  Source: TTwainSource;
begin
  //Make sure that the library and Source Manager
  //are loaded
  DelphiTwain1 := TDelphiTwain.Create(nil);
  DelphiTwain1.LoadLibrary;
  DelphiTwain1.TransferMode:= ttmNative;

  DelphiTwain1.OnTwainAcquire := DelphiTwain1TwainAcquire;
  DelphiTwain1.LoadSourceManager;
  //SelectSource method displays a common Twain dialog
  //to allow the user to select one of the avaliable
  //sources and returns it's index or -1 if either
  //the user pressed Cancel or if there were no sources
  SourceIndex := DelphiTwain1.SelectSource();
  if (SourceIndex <> -1) then
  begin
     //Now that we know the index of the source, we'll
     //get the object for this source
     Source := DelphiTwain1.Source[SourceIndex];
     //Load source and acquire image
     Source.LoadSource;
     Source.Enabled := TRUE;
    while DelphiTwain1.Source[SourceIndex].Enabled do
      Application.ProcessMessages;
    {Unload library}
    DelphiTwain1.UnloadLibrary;
  end //if (SourceIndex <> -1)
end;

procedure Tfmprincipal.agregarCategoriaExecute(Sender: TObject);
var
  nodo: TTreeNode;
  i: integer;
  insertado : boolean;
begin
  if arbolCategorias.Selected.Parent = nil then
  begin
      if noExisteHermano('Nueva Categoría',arbolCategorias.Items.GetFirstNode) then
      begin
  nodo := arbolCategorias.Items.Add(arbolCategorias.Selected, _('Nueva Categoría'));
      end
      else
      begin
       i := 1;
       insertado := false;
       while not insertado do //noExisteHijo('Nueva Categoría '+ IntToStr(i),arbolCategorias.Selected) do
         if noExisteHermano('Nueva Categoría '+ IntToStr(i),arbolCategorias.Items.GetFirstNode) then
         begin
            nodo := arbolCategorias.Items.Add(arbolCategorias.Selected, _('Nueva Categoría ') + IntToStr(i));
            insertado := true;
         end
         else
            inc(i);
      end;
  nodo.Data := nil;
  end
  else
  begin
    if noExisteHijo('Nueva Categoría',arbolCategorias.Selected.Parent) then
    begin
      nodo := arbolCategorias.Items.Add(arbolCategorias.Selected, _('Nueva Categoría'));
    end
    else
    begin
       i := 1;
       insertado := false;
       while not insertado do //noExisteHijo('Nueva Categoría '+ IntToStr(i),arbolCategorias.Selected) do
         if noExisteHijo('Nueva Categoría '+ IntToStr(i),arbolCategorias.Selected.Parent) then
         begin
            nodo := arbolCategorias.Items.Add(arbolCategorias.Selected, _('Nueva Categoría ') + IntToStr(i));
            insertado := true;
         end
         else
            inc(i);
    end;
    nodo.Data := nil;
  end
//    nodo := arbolCategorias.Items.Add(arbolCategorias.Selected, _('Nueva Categoría'));
//  nodo.Data := nil;
end;

procedure Tfmprincipal.agregarCategoriaUpdate(Sender: TObject);
begin
  //  agregarCategoria.Enabled := Assigned(arbolCategorias.Selected) and (arbolCategorias.Selected.Data=nil);
  agregarCategoria.Enabled := true;
end;

procedure Tfmprincipal.agregarSubcategoriaExecute(Sender: TObject);
var
  nodo: TTreeNode;
  i: integer;
  insertado : boolean;
begin
  if noExisteHijo('Nueva Categoría',arbolCategorias.Selected) then
  begin
  nodo := arbolCategorias.Items.AddChild(arbolCategorias.Selected, _('Nueva Categoría'));
//    nodo.Data := nil; //pone nil xq es categoria
  end
  else
  begin
     i := 1;
     insertado := false;
     while not insertado do //noExisteHijo('Nueva Categoría '+ IntToStr(i),arbolCategorias.Selected) do
       if noExisteHijo('Nueva Categoría '+ IntToStr(i),arbolCategorias.Selected) then
       begin
          nodo := arbolCategorias.Items.AddChild(arbolCategorias.Selected, _('Nueva Categoría ') + IntToStr(i));
          insertado := true;
       end
       else
          inc(i);
  end;
  nodo.Data := nil;
end;

procedure Tfmprincipal.agregarSubcategoriaUpdate(Sender: TObject);
begin
  agregarSubcategoria.Enabled := Assigned(arbolCategorias.Selected) and (arbolCategorias.Selected.Data = nil);//Assigned(arbolCategorias.Selected.Data);
end;

procedure Tfmprincipal.arbolCategoriasDblClick(Sender: TObject);
var
  sk: TShrinkPanel;
  nombreAlgoritmo: string;
  captionAlgoritmo: string;
begin
  if (Sender is TTreeview) or (Sender is TListView) then
  begin
    nombreAlgoritmo := '';

    if (Sender is TListView) then
    begin
      if assigned((Sender as TListView).ItemFocused) and Assigned((Sender as TListView).ItemFocused.Data) then
      begin
        nombreAlgoritmo := string((Sender as TListView).ItemFocused.Data^);
        captionAlgoritmo := TListView(Sender).ItemFocused.Caption;
      end
    end
    else
      if Assigned((Sender as TTreeView).Selected) and Assigned((Sender as TTreeView).Selected.Data) then
      begin
        nombreAlgoritmo := string((Sender as TTreeView).Selected.Data^);
        captionAlgoritmo := TTreeView(Sender).Selected.Text;
      end;
    if nombreAlgoritmo <> '' then
    begin
      sk := TShrinkPanel.Create(Self);
      try
        with sk do
        begin
          Parent := Self;
          Name := entorno.abrirAlgoritmo(nombreAlgoritmo);
          formulario := entorno.mostrarFormularioAlgoritmo(Name);
          Caption := captionAlgoritmo;//entorno.getDescAlgoritmo(Name);//'esp='+captionAlgoritmo+'|eng='+captionAlgoritmo;
          mostrarIdiomas(entorno.getListaIdiomasAlgoritmo(Name));
          onGuardarPaso := GuardarPaso;
          onEjecutar := EjecutarAlgoritmo;
          onActualizarImagen := MostrarImagen;
          onActualizarMatriz := MostrarMatriz;
          onCambiarIdioma := CambiarIdioma;

          DragKind := dkDock;
          DragMode := dmAutomatic;
          Loaded;
          ManualFloat(BoundsRect);
          listaAlgoritmosAbiertos.AddObject(Name, sk);
        end;
        TranslateComponent(sk);
      except
        sk.Free;
        raise;
      end;
    end;
  end;
end;

function Tfmprincipal.noExisteHijo(texto: string; nodo: TTreeNode):boolean;
var
  encontro: boolean;
  i : integer;
begin
  result := true;
  if nodo <> nil then
  begin
   encontro := false;
   i := 0;
   while (not encontro) and (i <= nodo.Count-1) do
   begin
       if nodo.Item[i].Text = texto then
       begin
          encontro := true;
          result := false;
       end
       else
          inc(i);
   end;
  end;
end;

function Tfmprincipal.noExisteHermano(texto: string; nodo: TTreeNode):boolean;
var
  encontro: boolean;
begin
  result := true;
  encontro := false;
  while (not encontro) and (Assigned(nodo)) do
  begin
       if nodo.Text = texto then
       begin
          encontro := true;
          result := false;
       end
       else
          nodo := nodo.getNextSibling;
   end;
end;



procedure Tfmprincipal.arbolCategoriasDragDrop(Sender, Source: TObject; X, Y:
        Integer);
var
  nodo: TTreeNode;
  aux: ^string;
begin
  if (Sender is TTreeView) and (Source is TTreeView) then
  begin
    if (Source as TTreeView).GetNodeAt(x,y).Data = nil then //es categoria
    begin
       if noExisteHijo((Sender as TTreeView).Selected.Text, (Source as TTreeview).GetNodeAt(x,y)) then
       begin
        (Sender as TTreeView).Selected.MoveTo((Source as TTreeView).GetNodeAt(x,y),naAddChild)
       end
       else
       begin
        raise Exception.CreateFmt(_('Ya existe la categoría ''%s'' en esta categoría'), [(Sender as TTreeView).Selected.Text])
       end;
    end
    else //es otro algoritmo, poner como hermano
    if noExisteHijo((Sender as TTreeView).Selected.Text, (Source as TTreeview).GetNodeAt(x,y).Parent) then
    begin
        (Sender as TTreeView).Selected.MoveTo((Source as TTreeView).GetNodeAt(x,y), naAdd)
    end
    else
    begin
          raise Exception.CreateFmt(_('Ya existe el algoritmo ''%s'' en esta categoría'), [(Sender as TTreeView).Selected.Text])
    end;
  end
  else
    {begin
      nodo := (Sender as TTreeView).GetNodeAt(x,y);
      i := 0;
      cant := nodo.Count;
      while Assigned(nodo) and (i<cant) and
            (not Assigned(nodo.Item[i].Data) or
            (string(nodo.Item[i].data^) <> string((Source as TTreeView).Selected.Data^))) do
        inc(i);
      if i=cant then
        (Sender as TTreeView).Selected.MoveTo(nodo, naAddChild)
      else
        raise Exception.CreateFmt(_('Ya existe el algoritmo ''%s'' en esta categoría'), [(Sender as TTreeView).Selected.Text]);
    end }
  if (Source is TListView) then
  begin
  if (Sender as TTreeView).GetNodeAt(x,y).Data = nil then
      if noExisteHijo((Source as TListView).Selected.Caption, (Sender as TTreeView).GetNodeAt(x,y)) then
        nodo := (sender as TTreeView).Items.AddChild((Sender as TTreeView).GetNodeAt(x,y),(Source as TListView).Selected.Caption)
      else
      begin
         raise Exception.CreateFmt(_('Ya existe el algoritmo ''%s'' en esta categoría'), [(Source as TListView).Selected.Caption])
      end
    else {poner en el padre}
      if noExisteHijo((Source as TListView).Selected.Caption, (Sender as TTreeview).GetNodeAt(x,y).Parent) then
      begin
         nodo := (sender as TTreeView).Items.AddChild((Sender as TTreeView).GetNodeAt(x,y).Parent,(Source as TListView).Selected.Caption)
      end
      else
      begin
         raise Exception.CreateFmt(_('Ya existe el algoritmo ''%s'' en esta categoría'), [(Source as TListView).Selected.Caption])
      end;
    new (aux);
    aux^ := string((source as TListView).Selected.data^);
    nodo.data := aux
    {nodo := (Sender as TTreeView).GetNodeAt(x,y);
    i := 0;
    cant := nodo.Count;
    while Assigned(nodo) and (i<cant) and
          (not Assigned(nodo.Item[i].Data) or
          (string(nodo.Item[i].Data^) <> string((Source as TListView).Selected.Data^))) do
      inc(i);
    if i = cant then
    begin
      if nodo.Data = nil then
        nodo := (Sender as TTreeView).Items.AddChild(nodo, (Source as TListView).Selected.Caption)
      else }{poner en el padre}
{        nodo := (Sender as TTreeView).Items.AddChild(nodo.Parent, (Source as TListView).Selected.Caption);
      new (aux);
      aux^ := string((Source as TListView).Selected.data^);
      nodo.data := aux;
    end
    else
      raise Exception.CreateFmt(_('Ya existe el algoritmo ''%s'' en esta categoría'), [(Source as TListView).Selected.Caption]);}
  end;
  Panel1.Refresh;
end;

procedure Tfmprincipal.arbolCategoriasDragOver(Sender, Source: TObject; X, Y: 
        Integer; State: TDragState; var Accept: Boolean);
var
  nodo: TTreeNode;
begin
  nodo := TTreeView(Sender).GetNodeAt(X,Y);
  Accept := false;
  if ((Source is TListView) and (Sender is TTreeView) and (nodo <> nil))
//  OR ((Source is TTreeView) and (Sender is TTreeView) and not (Sender as TTreeView).GetNodeAt(x,y).HasAsParent((Source as TTreeView).Selected)) then
OR ((Source is TTreeView) and (Sender is TTreeView) and Assigned((Sender as TTreeView).GetNodeAt(x,y)) and not(Sender as TTreeView).GetNodeAt(x,y).HasAsParent((Source as TTreeView).Selected)) then
    Accept := true;
{  if Assigned(nodo) and (((Source is TListView) and (Sender is TTreeView)) or
     ((Source is TTreeView) and (Sender is TTreeView) and
      not (Sender as TTreeView).GetNodeAt(x,y).HasAsParent((Source as TTreeView).Selected))) then
    Accept := nodo.Data = nil;}
end;

procedure Tfmprincipal.arbolCategoriasGetImageIndex(Sender: TObject; Node: 
        TTreeNode);
begin
  if Node.Data <> nil then
    node.ImageIndex := 0   //algoritmo
  else
    if Node.Expanded then
      Node.ImageIndex := 1 //categoria abierta
    else
      Node.ImageIndex := 2; //categoria cerrada
  if Node.Selected then
    Node.SelectedIndex := Node.ImageIndex;
end;

procedure Tfmprincipal.CerrarVentana(Sender: TObject);
begin
  if sender is TTimer then
  begin
    if TControl(Sender).Name = 'Timer1' then
      JvAngleLabel1DblClick(Sender);
    TTimer(Sender).Enabled := False;
  end;
  
end;

procedure Tfmprincipal.CerrarVentanaPaso(Sender: TObject; var Action: 
        TCloseAction);
begin
  Action := caFree;
//  fmListaDePasos := nil;
end;

procedure Tfmprincipal.configuraciondelEntorno(Sender: TObject);
var
  i: integer;
begin
  if entorno.puedeTerminar then
  begin
    fmConfigEntorno := TfmConfigEntorno.Create(self);
    entorno.actualizarListaCategorias(arbolCategorias.Items);
    if fmConfigEntorno.Execute then
    begin
      entorno.getListaAlgoritmos(listaAlgoritmos.Items);
      arbolCategorias.Items.Clear;
      entorno.getArbol(arbolCategorias.Items);
      entorno.actualizarSegunConfiguracion;
      for i := 0 to arbolCategorias.Items.Count - 1 do
        arbolCategorias.Items.Item[i].Expand(true);
      RetranslateComponent(self);
      Application.Title := Caption;
    end;
    fmConfigEntorno.Free;
  end
  else
     MessageDlg('No se puede cambiar la configuración si existen tareas en ejecución', mtWarning,[mbOk], 0);
end;

procedure Tfmprincipal.aNuevaMatrizExecute(Sender: TObject);
var
  formulario: TfmMatriz;
begin
  formulario:= TfmMatriz.Create(self);
  if formulario.CrearNuevaMatriz then
    formulario.Titulo := SSinTitulo;
  //  formulario:= TfmMatriz.CrearMatriz(Form1);
  //  formulario.Show;
end;

procedure Tfmprincipal.DelphiTwain1TwainAcquire(Sender: TObject; const Index:
        Integer; Image: TBitmap; var Cancel: Boolean);
var
  formulario: TfmImagen;
  imagen32: Tbitmap32;
begin
  try
    formulario:= TfmImagen.Create(Self);
    imagen32 := TBitmap32.Create;
    imagen32.Assign(image);
    formulario.Name := entorno.adquirirImagen(imagen32);
    formulario.nombreArchivo := '';
    formulario.image1.Bitmap.Assign(Image);
    formulario.Image1.Width := formulario.image1.Bitmap.Width+20;
    formulario.Image1.Height := formulario.image1.Bitmap.Height+20;
    formulario.Height := formulario.image1.Bitmap.Height+54+formulario.StBarImg.Height;
    formulario.Width := formulario.image1.Bitmap.Width+28;
    formulario.Caption :=  SImagenSinNombre;
    formulario.StBarImg.SimpleText := formulario.Name;
    formulario.Show;
    tbNoSelect.Down := true;
    tbCerrarImagen.Enabled := true;
    Cancel := TRUE;
  except
    formulario.Free;
    raise;
  end;
end;

procedure Tfmprincipal.DynToolBar2MouseMove(Sender: TObject; Shift: TShiftState;
        X, Y: Integer);
begin
  StatusBar1.Panels.Items[0].Text := ControlAtPos(Point(x,y),true, true).ClassName;
end;

procedure Tfmprincipal.EjecutarAlgoritmo(Sender: TObject);
begin
  if Sender is TControl then
    entorno.ejecutarAlgoritmo((Sender as TControl).name);
end;

procedure Tfmprincipal.eliminarCategoriaExecute(Sender: TObject);
begin
  arbolCategorias.Items.Delete(arbolCategorias.Selected);
end;

procedure Tfmprincipal.eliminarCategoriaUpdate(Sender: TObject);
begin
  eliminarCategoria.Enabled := Assigned(arbolCategorias.Selected) and (arbolCategorias.Selected.Data=nil);//Assigned(arbolCategorias.Selected.Data);
end;

procedure Tfmprincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  aSalir.Execute();
end;

procedure Tfmprincipal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if not entorno.puedeTerminar then
  begin
    if MessageDlg('Existen Threads ejecutandose. ¿Desea Cerrar?'#13'Si acepta puede afectar la estabilidad del sistema.', mtWarning,
    [mbOk, mbCancel], 0) = mrCancel then
      CanClose := False;
  end;
end;

procedure Tfmprincipal.FormCreate(Sender: TObject);
var
  i:integer;
begin
  TranslateComponent(self);
  mHHelp := THookHelpSystem.Create(ExtractFilePath(Application.ExeName)+ 'entornoejecucionhlp.chm', '', htHHAPI);
//  Application.HelpFile :=ExtractFilePath(Application.ExeName)+ 'entornoejecucionhlp.chm';
  archivosResultado := TStringList.Create;
  entorno := TEntornoEjecucion.Instance;
  entorno.onCambioEstadoProcesador := MostrarVentanaThreads;
  entorno.onAbrirArchivoImagen := abrirArchivoImagen;
  entorno.onAbrirArchivoMatriz := abrirArchivoMatriz;

  entorno.getListaAlgoritmos(listaAlgoritmos.Items);
  i := 0;
  while i< listaAlgoritmos.Items.Count do
    if not Assigned(listaAlgoritmos.Items.Item[i].Data) then
      listaAlgoritmos.Items.Item[i].Delete
    else
      inc(i);
  entorno.getArbol(arbolCategorias.Items);
  for i := 0 to arbolCategorias.Items.Count - 1 do
    arbolCategorias.Items.Item[i].Expand(true);
  entorno.onRefresh := ActualizarAlgoritmo;
  listaAlgoritmosAbiertos := TStringList.Create;
  UseLanguage(entorno.mostrarIdiomaEjecucion);
  RetranslateComponent(Self);
  try
    resultadoFTP.Active := true;
  except on E:Exception do
    ShowMessage(_('No se puede habilitar el receptor para recibir trabajos remotos.')+chr(10)+E.Message);
  end;
  Application.Title := Caption;
end;

procedure Tfmprincipal.FormDragOver(Sender, Source: TObject; X, Y: Integer; 
        State: TDragState; var Accept: Boolean);
var
  nodo: TTreeNode;
begin
  nodo := TTreeView(Sender).GetNodeAt(X,Y);
  Accept := (Sender is TTreeView) and (Source is TTreeView) and Assigned(nodo) and not Assigned(nodo.Data);
end;

procedure Tfmprincipal.guardarImagenComo(Sender: TObject);
var
  aux : TfmImagen;
begin
  aux := TfmImagen(ActiveMDIChild);
  if SavePictureDialog1.Execute then
  begin
    entorno.guardarImagen(aux.Name, SavePictureDialog1.FileName);
    aux.Caption := _('Imagen: ') + SavePictureDialog1.FileName;
    aux.StBarImg.SimpleText := SavePictureDialog1.FileName;
  end;
end;

procedure Tfmprincipal.guardarImagen(Sender: TObject);
var
  aux : TfmImagen;
begin
  aux := TfmImagen(ActiveMDIChild);
  if aux.nombreArchivo <> '' then
  begin
    entorno.guardarImagen(aux.Name, aux.nombreArchivo);
    aux.Caption := SImagen + aux.nombreArchivo;
    aux.StBarImg.SimpleText := aux.nombreArchivo;
  end
  else
    guardarImagenComo(Sender);  
end;

procedure Tfmprincipal.GuardarPaso(Sender: TObject);
var
  unComentario: string;
  fmlp: TfmSeleccionListaPaso;
  aux: string;
begin
//  if InputQuery(_('Almacenar Paso - Ingresar Comentario'), _('Ingrese el comentario para el paso a almacenar'), unComentario) then
   fmlp := TfmSeleccionListaPaso.Create(self);
   if fmlp.execute then
   begin
      aux := fmlp.ListaSeleccionada;
      if  aux = SNuevaListadePasos then
        aux := entorno.nuevaListaPasos;
      entorno.almacenarPaso(aux, (Sender as TControl).name, fmlp.comentario);
      mostrarListaPasos(aux);
//      fmListaDePasos.refrescarListaPasos;
//      fmListaDePasos.reabrirListaDePasos(fmlp.ListaSeleccionada);
   end;
end;

procedure Tfmprincipal.ImportarImagen1Click(Sender: TObject);
var
  DelphiTwain1: TDelphiTwain;
  SourceIndex: Integer;
  Source: TTwainSource;
begin
  //Make sure that the library and Source Manager
  //are loaded
  DelphiTwain1:=TDelphiTwain.Create(nil);
  DelphiTwain1.LibraryLoaded := TRUE;
  DelphiTwain1.TransferMode:= ttmNative;
  
  DelphiTwain1.OnTwainAcquire := fmprincipal.DelphiTwain1TwainAcquire;
  DelphiTwain1.SourceManagerLoaded := TRUE;
  //SelectSource method displays a common Twain dialog
  //to allow the user to select one of the avaliable
  //sources and returns it's index or -1 if either
  //the user pressed Cancel or if there were no sources
  SourceIndex := DelphiTwain1.SelectSource();
  if (SourceIndex <> -1) then
  begin
     //Now that we know the index of the source, we'll
     //get the object for this source
     Source := DelphiTwain1.Source[SourceIndex];
     //Load source and acquire image
     Source.Loaded := TRUE;
     Source.Enabled := TRUE;
  end //if (SourceIndex <> -1)
end;

procedure Tfmprincipal.JvAngleLabel1DblClick(Sender: TObject);
begin
  Panel1.AutoSize := not Panel1.AutoSize;
  ScrollBox1.Visible := not ScrollBox1.Visible;
  Panel1.Width := 160;
  Splitter2.Visible := not Splitter2.Visible;
end;

procedure Tfmprincipal.mostrarListaPasos(nombre: string);
var
   i : integer;
   f : TfmListaDePasos;
begin
//   result := nil;
   f := nil;
   for i := 0 to MDIChildCount-1 do
      if MDIChildren[i].Name = nombre then
      begin
         f := TfmListaDePasos(MDIChildren[i]);
         f.refrescarListaPasos;
      end;
   if f = nil then
   begin
      f := TfmListaDePasos.Create(self);
      f.reabrirListaDePasos(nombre);
   end;
end;

procedure Tfmprincipal.MostrarVentanaThreads(msg: string);
begin
  if Assigned(fmThreads) then
    fmThreads.AgregarSuceso(msg);
end;

procedure Tfmprincipal.aNuevaListaPasosExecute(Sender: TObject);
var
   fmListaDePasos :TfmListaDePasos;
begin
//  entorno.nuevaListaPasos;
    fmListaDePasos := TFmListaDePasos.Create(self);
    fmListaDePasos.crearNuevaListaPasos;
    fmListaDePasos.Show;
//  mostrarListaPasos;
end;

procedure Tfmprincipal.Panel1Enter(Sender: TObject);
var
  aux: TComponent;
begin
  aux:=TControl(Sender).FindComponent('Timer');
  if assigned(aux) then
    TTimer(aux).Enabled := False;
end;

procedure Tfmprincipal.Panel1Exit(Sender: TObject);
begin
  FTimer:=TTimer(TControl(Sender).FindComponent('Timer'));
  if not Assigned(FTimer) then
    FTimer:=TTimer.Create(self);
  With Ftimer do
  begin
    Interval := 100;
    OnTimer := CerrarVentana;
    Enabled := true;
  end;
end;

procedure Tfmprincipal.quitarAlgoritmoExecute(Sender: TObject);
begin
  arbolCategorias.Items.Delete(arbolCategorias.Selected);
end;

procedure Tfmprincipal.quitarAlgoritmoUpdate(Sender: TObject);
begin
  quitarAlgoritmo.Enabled := Assigned(arbolCategorias.Selected) and Assigned(arbolCategorias.Selected.Data);
end;

procedure Tfmprincipal.renombrarCategoriaExecute(Sender: TObject);
begin
  //if (Sender is TTreeView) then
  arbolCategorias.Selected.EditText;
//  if noExisteHijo(arbolCategorias.Selected.Text, arbolCategorias.Selected.Parent)
end;

procedure Tfmprincipal.renombrarCategoriaUpdate(Sender: TObject);
begin
  //  renombrarCategoria.Enabled := Assigned(arbolCategorias.Selected) and Assigned(arbolCategorias.Selected.Data);
  renombrarCategoria.Enabled := Assigned(arbolCategorias.Selected) and (arbolCategorias.Selected.Data = nil);
end;

procedure Tfmprincipal.aSalirExecute(Sender: TObject);
var i : integer;
begin
  //actualizar la lista de categorias
  try
    entorno.actualizarListaCategorias(arbolCategorias.Items);
  except
    Showmessage(_('No se ha podido almacenar correctamente el arbol de categorías'));
  end;
  //desactivar el FTP
  resultadoFTP.Active := False;
  //liberar entorno
  try
    for i := MDIChildCount - 1 downto 0 do
      MDIChildren[i].Destroy;
    FreeAndNil(archivosResultado);
    FreeAndNil(entorno);
    CoUnInitialize;
  except
    Showmessage(_('No se ha podido cerrar correctamente el entorno'));
  end;
  Application.Terminate;
end;

procedure Tfmprincipal.verDATA1Click(Sender: TObject);
begin
  Showmessage(strPas(arbolCategorias.Selected.data))
end;

procedure Tfmprincipal.aVentanaCascadaExecute(Sender: TObject);
begin
  Cascade;
end;

procedure Tfmprincipal.aVentanaMinimizarTodoExecute(Sender: TObject);
var
  min: TWindowMinimizeAll;
begin
  min := TWindowMinimizeAll.Create(self);
  min.Execute;
end;

procedure Tfmprincipal.aVentanaMosaicoHorizontalExecute(Sender: TObject);
begin
  TileMode := tbHorizontal;
  Tile;
end;

procedure Tfmprincipal.aVentanaMosaicoVerticalExecute(Sender: TObject);
begin
  TileMode := tbVertical;
  Tile;
end;

    { TDockForm }

procedure Tfmprincipal.tbNoSelectClick(Sender: TObject);
begin
  if  ActiveMDIChild is TfmImagen then
  begin
    TfmImagen(ActiveMDIChild).Tseleccion:= 0;
    tbSelect.Down:= False;
    tbNoSelect.Down:= true;
    TfmImagen(ActiveMDIChild).Image1.Invalidate;
    TfmImagen(ActiveMDIChild).Image1.Bitmap.Assign(entorno.getValorImagen(TfmImagen(ActiveMDIChild).name));
    entorno.limpiarSeleccionImagen(TfmImagen(ActiveMDIChild).name);//.limpiarseleccion;
  end;
end;

procedure Tfmprincipal.cambioSeleccion(Sender: TObject);
begin
  if (ActiveMDIChild is TfmImagen) and (Sender.InheritsFrom(TComponent)) then
  begin
    tbSelect.Down:= true;
    TfmImagen(ActiveMDIChild).TSeleccion := TComponent(Sender).Tag;
    if (Sender is TAction) then
    begin
      tbSelect.Tag := TAction(Sender).Tag;
      tbSelect.ImageIndex := TAction(Sender).ImageIndex;
      if TfmImagen(ActiveMDIChild).TSeleccion < 3 then
        TfmImagen(ActiveMDIChild).BorrarSelecPol;
    end
  end;
end;

procedure Tfmprincipal.cortarImagen(Sender: TObject);
begin
  if (ActiveMDIChild is TfmImagen) then
  begin
    aDeshacerImagen.Enabled := entorno.cortarImagen(TfmImagen(ActiveMDIChild).name);
    TfmImagen(ActiveMDIChild).Image1.Bitmap := entorno.getValorImagen(TfmImagen(ActiveMDIChild).Name);
    if pos('*',TfmImagen(ActiveMDIChild).Caption) = 0 then
      TfmImagen(ActiveMDIChild).Caption := TfmImagen(ActiveMDIChild).Caption + ' *'
  end;
end;

procedure Tfmprincipal.tbSelectClick(Sender: TObject);
begin
  if (ActiveMDIChild is TfmImagen) then
  begin
    tbNoSelect.Down:= false;
    tbSelect.Down := true;
  end;
end;

procedure Tfmprincipal.copiarImagen(Sender: TObject);
begin
 if ActiveMDIChild is TfmImagen then
   entorno.copiarImagen(TfmImagen(ActiveMDIChild).Name);
end;

procedure Tfmprincipal.pegarImagen(Sender: TObject);
begin
  if  ActiveMDIChild is TfmImagen and Clipboard.HasFormat(CF_BITMAP) then
  begin
    tbPaste.Enabled:= False;
    TfmImagen(ActiveMDIChild).ToolButton5Click(Sender);
    if pos('*',TfmImagen(ActiveMDIChild).Caption) = 0 then
      TfmImagen(ActiveMDIChild).Caption := TfmImagen(ActiveMDIChild).Caption + ' *';
  end;
end;

procedure Tfmprincipal.tbZoomClick(Sender: TObject);
begin
  if  ActiveMDIChild is TfmImagen then
  begin
    with TfmImagen(ActiveMDIChild) do
    begin
      image1.Scale:= 1;
      image1.Height:= image1.Bitmap.Height;
      image1.Width:= image1.Bitmap.Width;
    end;
  end;
end;

procedure Tfmprincipal.N211Click(Sender: TObject);
begin
  if  ActiveMDIChild is TfmImagen then
  begin
    with TfmImagen(ActiveMDIChild) do
    begin
      image1.Scale:= 2;
      image1.Height:= image1.Bitmap.Height*2;
      image1.Width:= image1.Bitmap.Width*2;
    end;
  end;
end;

procedure Tfmprincipal.N121Click(Sender: TObject);
begin
  if  ActiveMDIChild is TfmImagen then
  begin
    with TfmImagen(ActiveMDIChild) do
    begin
      image1.Scale:= 1/2;
      image1.Height:= image1.Bitmap.Height div 2;
      image1.Width:= image1.Bitmap.Width div 2;
    end;
  end;
end;

procedure Tfmprincipal.Otro1Click(Sender: TObject);
begin
    if  ActiveMDIChild is TfmImagen then
    begin
      fmZoomImg.Top:= mouse.CursorPos.Y;
      fmZoomImg.Left:= mouse.CursorPos.X;
      fmZoomImg.showmodal;
      with TfmImagen(ActiveMDIChild) do
      begin
        image1.Scale:= fmzoomimg.VEditZoom.Value / 100;
        image1.Height:= trunc(image1.Bitmap.Height * (fmzoomimg.VEditZoom.Value /100)) ;
        image1.Width:= trunc(image1.Bitmap.Width * (fmzoomimg.VEditZoom.Value /100)) ;
      end;
  end;
end;

procedure Tfmprincipal.popSelectPopup(Sender: TObject);
begin
  tbNoSelect.Down:= False;
end;

procedure Tfmprincipal.mRefrescarThreadsClick(Sender: TObject);
var
  l : TStrings;
  i : integer;
begin
  //MostrarVentanaThreads('')//
  l := entorno.getEstadoProcesadores;//refrescarEstadoProcesadores;
  for i := 0 to l.Count -1 do
    fmThreads.AgregarSuceso(l.Strings[i]);

end;

procedure Tfmprincipal.deshacerImagen(Sender: TObject);
var
  captionstrg:string;
begin
  if ActiveMDIChild is TfmImagen then
  begin
    entorno.deshacerImagen(TfmImagen(ActiveMDIChild).Name);
    TfmImagen(ActiveMDIChild).Image1.Bitmap:=entorno.getValorImagen(TfmImagen(ActiveMDIChild).Name);
    aRehacerImagen.Enabled:= true;
    if entorno.consultaHistorialImagen(TfmImagen(ActiveMDIChild).Name,1) then
    begin
      aDeshacerImagen.Enabled:= False;
      if pos('*',TfmImagen(ActiveMDIChild).Caption) <> 0 then
      begin
        captionstrg:=TfmImagen(ActiveMDIChild).Caption;
        SetLength(captionstrg,pos('*',TfmImagen(ActiveMDIChild).Caption)-1);
        TfmImagen(ActiveMDIChild).Caption := captionstrg;
      end;
    end;
  end;
end;

procedure Tfmprincipal.rehacerImagen(Sender: TObject);
begin
  if ActiveMDIChild is TfmImagen then
  begin
    entorno.rehacerImagen(TfmImagen(ActiveMDIChild).Name);
    TfmImagen(ActiveMDIChild).Image1.Bitmap:=entorno.getValorImagen(TfmImagen(ActiveMDIChild).Name);
    aDeshacerImagen.Enabled:= true;
    if pos('*',TfmImagen(ActiveMDIChild).Caption) = 0 then
      TfmImagen(ActiveMDIChild).Caption := TfmImagen(ActiveMDIChild).Caption + ' *';
    if entorno.consultaHistorialImagen(TfmImagen(ActiveMDIChild).Name,2) then
      aRehacerImagen.Enabled:= False;
  end;
end;

procedure Tfmprincipal.ImprimirImagen(Sender: TObject);
var
  PrintBitMap : TBitmap32;
begin
  PrintBitMap := TfmImagen(ActiveMDIChild).Image1.Bitmap;
  with TfmImprimirImagen.Create(self) do
  begin
    with JvPreviewRenderGraphics1.Images.Add do
      Picture.Bitmap.Assign(PrintBitMap);
    Execute;
    Destroy;
  end;
end;

procedure Tfmprincipal.tbSelectMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if ActiveMDIChild is TfmImagen then
  begin
    if button = mbright then
      popSelect.Popup(mouse.CursorPos.X,mouse.CursorPos.y)
    else // si o si boton izq
    begin
      if tbSelect.ImageIndex = mSeleccionCuadrada.ImageIndex then
      begin
        TfmImagen(ActiveMDIChild).TSeleccion:= 1;
        TfmImagen(ActiveMDIChild).BorrarSelecPol;
      end
      else
      if tbSelect.ImageIndex = mSelccionCircular.ImageIndex then
      begin
        TfmImagen(ActiveMDIChild).TSeleccion:= 2;
        TfmImagen(ActiveMDIChild).BorrarSelecPol;
      end
      else
        TfmImagen(ActiveMDIChild).TSeleccion:= 3;
    end;
  end;
end;

procedure Tfmprincipal.mSeleccionCuadradaClick(Sender: TObject);
begin
  TfmImagen(ActiveMDIChild).TSeleccion:= tmenuitem(sender).Tag;
  tbSelect.ImageIndex:= tmenuitem(Sender).ImageIndex;
  tbSelect.Down:= true;
end;

procedure Tfmprincipal.pegarImagenNueva(Sender: TObject);
var
  formulario: TfmImagen;
begin
    if Clipboard.HasFormat(CF_BITMAP) then
    begin
      try
      formulario := TfmImagen.Create(Self);
      formulario.Name := entorno.pegarComoImagen;
      formulario.image1.Bitmap := entorno.getValorImagen(formulario.Name);
      formulario.Caption := SImagenSinNombre;
      formulario.StBarImg.SimpleText := SSinTitulo;
      formulario.Image1.Width := formulario.image1.Bitmap.Width + 20;
      formulario.Image1.Height := formulario.image1.Bitmap.Height + 20;
      formulario.Height := formulario.image1.Bitmap.Height + 54 + formulario.StBarImg.Height;
      formulario.Width := formulario.image1.Bitmap.Width+28;
      formulario.StBarImg.SimpleText := formulario.Name;
      formulario.Show;
      tbNoSelect.Down := true;
    except
      formulario.Free;
      raise;
    end;
  end;
end;

procedure Tfmprincipal.aConfigurarPropiedadesMatrizExecute(Sender: TObject);
begin
  if ActiveMDIChild is TfmMatriz then
     TfmMatriz(ActiveMDIChild).configurarPropiedades;
end;

procedure Tfmprincipal.aInsertarFilaExecute(Sender: TObject);
begin
  if ActiveMDIChild is TfmMatriz then
     TfmMatriz(ActiveMDIChild).insertarFila;
end;

procedure Tfmprincipal.aGuardarComoMatrizExecute(Sender: TObject);
begin
  if ActiveMDIChild is TfmMatriz then
     TfmMatriz(ActiveMDIChild).guardarMatrizComo;
end;

procedure Tfmprincipal.aGuardarMatrizExecute(Sender: TObject);
begin
  if ActiveMDIChild is TfmMatriz then
     TfmMatriz(ActiveMDIChild).guardarMatriz;
end;

procedure Tfmprincipal.aInsertarColumnaExecute(Sender: TObject);
begin
  if ActiveMDIChild is TfmMatriz then
     TfmMatriz(ActiveMDIChild).insertarColumna;
end;

procedure Tfmprincipal.aCopiarMatrizExecute(Sender: TObject);
begin
  if ActiveMDIChild is TfmMatriz then
     TfmMatriz(ActiveMDIChild).copiar;
end;

procedure Tfmprincipal.aPegarMatrizExecute(Sender: TObject);
begin
  if ActiveMDIChild is TfmMatriz then
     TfmMatriz(ActiveMDIChild).pegar;
end;

procedure Tfmprincipal.aDeshacerMatrizExecute(Sender: TObject);
begin
  if ActiveMDIChild is TfmMatriz then
     TfmMatriz(ActiveMDIChild).deshacer;
end;

procedure Tfmprincipal.aRehacerMatrizExecute(Sender: TObject);
begin
  if ActiveMDIChild is TfmMatriz then
     TfmMatriz(ActiveMDIChild).rehacer;
end;

procedure Tfmprincipal.aEliminarColumnaExecute(Sender: TObject);
begin
  if ActiveMDIChild is TfmMatriz then
     TfmMatriz(ActiveMDIChild).eliminarColumna;
end;

procedure Tfmprincipal.aEliminarFilaExecute(Sender: TObject);
begin
  if ActiveMDIChild is TfmMatriz then
     TfmMatriz(ActiveMDIChild).eliminarFila;
end;

procedure Tfmprincipal.aCerrarMatrizExecute(Sender: TObject);
begin
  if ActiveMDIChild is TfmMatriz then
     TfmMatriz(ActiveMDIChild).Close;
end;

procedure Tfmprincipal.PuedeDeshacerMatriz(Sender: TObject);
begin
  if Sender is TAction then
    TAction(Sender).Enabled := (ActiveMDIChild is TfmMatriz) and TfmMatriz(ActiveMDIChild).tieneDeshacer();
end;

procedure Tfmprincipal.PuedeRehacerMatriz(Sender: TObject);
begin
  if Sender is TAction then
    TAction(Sender).Enabled := (ActiveMDIChild is TfmMatriz) and TfmMatriz(ActiveMDIChild).tieneRehacer();
end;

procedure Tfmprincipal.PuedePegarMatriz(Sender: TObject);
begin
  if Sender is TAction then
    TAction(Sender).Enabled := (ActiveMDIChild is TfmMatriz) and Clipboard.HasFormat(CF_TEXT);
end;

procedure Tfmprincipal.arbolCategoriasEdited(Sender: TObject;
  Node: TTreeNode; var S: String);
begin
   if noExisteHijo(s,Node.Parent) then
      node.Text := s
   else
      raise Exception.CreateFmt(_('Ya existe el algoritmo ''%s'' en esta categoría'), [s])
 //Controlar que no existe el nombre
end;

procedure Tfmprincipal.aImagenAMatrizExecute(Sender: TObject);
begin
  if ActiveMDIChild is TfmImagen then
  begin
   TfmImagen(ActiveMDIChild).MostrarMatrices;
  end;
end;

procedure Tfmprincipal.aCerrarImagenExecute(Sender: TObject);
begin
  if ActiveMDIChild is TfmImagen then
    ActiveMDIChild.Close;
end;

procedure Tfmprincipal.verBarra(Sender: TObject);
begin
  if (Sender is TAction) and ((Sender as TAction).tag >= 0) then
  begin
    (Sender as TAction).Checked := not (Sender as TAction).Checked;
    BarradeHerramientas.Controls[(Sender as TAction).tag].Visible := (Sender as TAction).Checked;
  end;
end;

procedure Tfmprincipal.aAbrirListaReferenciasExecute(Sender: TObject);
var
   f: TfmListaReferencias;
begin
//   if JvOpenDListaReferencias.Execute then
//   begin
   f := TfmListaReferencias.Create(self);
   f.aAbrirReferencia.Execute;
//   end;
end;

procedure Tfmprincipal.aAbrirListaPasosExecute(Sender: TObject);
var
  f: TfmListaDePasos;
begin
  f := TfmListaDePasos.Create(self);
  try
    f.abrirListadePasosExecute(self);
  except
    on E: Exception do
    begin
      Application.ShowException(E);
      FreeAndNil(f);
    end;
  end;
end;

procedure Tfmprincipal.aNuevaListaReferenciasExecute(Sender: TObject);
var
  f: TfmListaReferencias;
begin
  f := TfmListaReferencias.Create(self);
  f.crearNuevaListaReferencia();
end;

procedure Tfmprincipal.aCerrarListaReferenciasExecute(Sender: TObject);
begin
  if ActiveMDIChild is TfmListaReferencias then
    TfmListaReferencias(ActiveMDIChild).Close;
end;

procedure Tfmprincipal.MostrarImagen(const unaImagen: String);
var
  i:integer;
  aux : TfmImagen;
begin
  i:=0;
  while ( i < MDIChildcount)and (not(MDIChildren[i] is TfmImagen) or ((MDIChildren[i] is TfmImagen) and (TfmImagen(MDIChildren[i]).name <> unaImagen))) do
    inc(i);
  if ( i < MDIChildcount) then
  begin
    aux := TfmImagen(MDIChildren[i]);
    aux.image1.Bitmap := entorno.getValorImagen(aux.name);
    if pos('*',TfmImagen(ActiveMDIChild).Caption) = 0 then
    aux.Caption := aux.Caption + ' *';
  end
  else {nueva imagen}
  begin
    aux := TfmImagen.Create(Self);
    aux.Name := unaImagen;
    aux.image1.Bitmap := entorno.getValorImagen(aux.name);
    aux.BitmapList.Bitmaps[0].Bitmap := aux.image1.Bitmap;
    aux.Image1.Width := aux.image1.Bitmap.Width+20;
    aux.Image1.Height := aux.image1.Bitmap.Height+20;
    aux.Height := aux.image1.Bitmap.Height+54+aux.StBarImg.Height;
    aux.Width := aux.image1.Bitmap.Width+28;
    aux.Caption := SImagenSinNombre;
    aux.StBarImg.SimpleText := SSinTitulo;
  end;
  aux.Show;
end;

procedure Tfmprincipal.MostrarMatriz(const unaMatriz: String);
var
  i:integer;
  aux : TfmMatriz;
begin
  i:=0;
  while ( i < MDIChildcount) and (not(MDIChildren[i] is TfmMatriz) or ((MDIChildren[i] is TfmMatriz) and (TfmMatriz(MDIChildren[i]).name <> unaMatriz))) do
    inc(i);
  if ( i < MDIChildcount) then
    aux := TfmMatriz(MDIChildren[i])
  else {nueva matriz}
  begin
    aux := TfmMatriz.Create(self);
    aux.ArchivoMatriz := unaMatriz;
    aux.Titulo := unaMatriz;
    aux.Name := unaMatriz;
    aux.Caption := SMatrizSinNombre;
  end;
  aux.refrescarMatriz();
  {TODO: Avisar del cambio para la *}
end;

procedure Tfmprincipal.aBorrarReferenciaExecute(Sender: TObject);
begin
  if ActiveMDIChild is TfmListaReferencias then
    TfmListaReferencias(ActiveMDIChild).aBorrarReferencia.Execute;
end;

procedure Tfmprincipal.aGuardarListaReferenciasExecute(Sender: TObject);
begin
   if ActiveMDIChild is TfmListaReferencias then
      TfmListaReferencias(ActiveMDIChild).aGuardar.Execute;
end;

procedure Tfmprincipal.esListaReferencias(Sender: TObject);
begin
  if Sender is TAction then
    TAction(Sender).Enabled := ActiveMDIChild is TfmListaReferencias;
end;

procedure Tfmprincipal.esListaPasos(Sender: TObject);
begin
  if Sender is TAction then
    TAction(Sender).Enabled := ActiveMDIChild is TfmListaDePasos;
end;

procedure Tfmprincipal.esListaPasosNoEjecucion(Sender: TObject);
begin
  if Sender is TAction then
    TAction(Sender).Enabled := (ActiveMDIChild is TfmListaDePasos) AND (not TfmListaDePasos(ActiveMDIChild).enEjecucion) ;
end;

procedure Tfmprincipal.esImagen(Sender: TObject);
begin
  if Sender is TAction then
    TAction(Sender).Enabled := ActiveMDIChild is TfmImagen;
end;

procedure Tfmprincipal.esMatriz(Sender: TObject);
begin
  if Sender is TAction then
    TAction(Sender).Enabled := ActiveMDIChild is TfmMatriz;
end;

procedure Tfmprincipal.esFilaoCol(Sender: TObject);
begin
  if Sender is TAction then
    TAction(Sender).Enabled := ((ActiveMDIChild is TfmMatriz) and
    ( TfmMatriz (ActiveMDIChild).estaSeleccionadoFilaoCol));
end;

procedure Tfmprincipal.aMoverReferenciaArribaExecute(Sender: TObject);
begin
  if ActiveMDIChild is TfmListaReferencias then
    TfmListaReferencias(ActiveMDIChild).aMoverArriba.Execute;
end;

procedure Tfmprincipal.aMoverReferenciaAbajoExecute(Sender: TObject);
begin
  if ActiveMDIChild is TfmListaReferencias then
    TfmListaReferencias(ActiveMDIChild).aMoverAbajo.Execute;
end;

procedure Tfmprincipal.aMoverReferenciaAPrincipioExecute(Sender: TObject);
begin
  if ActiveMDIChild is TfmListaReferencias then
    TfmListaReferencias(ActiveMDIChild).aMoverPrincipioDeTodo.Execute;
end;

procedure Tfmprincipal.aMoverReferenciaAFinalExecute(Sender: TObject);
begin
  if ActiveMDIChild is TfmListaReferencias then
    TfmListaReferencias(ActiveMDIChild).aMoverFinalDeTodo.Execute;
end;

procedure Tfmprincipal.aGuardarComoListaReferenciasExecute(
  Sender: TObject);
begin
  if ActiveMDIChild is TfmListaReferencias then
    TfmListaReferencias(ActiveMDIChild).aGuardarComo.Execute;
end;

procedure Tfmprincipal.aAgregarListaDeReferenciaExecute(Sender: TObject);
begin
  if ActiveMDIChild is TfmListaReferencias then
    TfmListaReferencias(ActiveMDIChild).aAgregarListaDeReferencia.Execute;
end;

procedure Tfmprincipal.aGuardarListaPasosExecute(Sender: TObject);
begin
  if ActiveMDIChild is TfmListaDePasos  then
    TfmListaDePasos(ActiveMDIChild).aGuardarListaDePasosExecute(Sender);
end;

procedure Tfmprincipal.aCerrarListaPasosExecute(Sender: TObject);
begin
  if ActiveMDIChild is TfmListaDePasos  then
    TfmListaDePasos(ActiveMDIChild).Close;
end;

procedure Tfmprincipal.aEliminarPasoExecute(Sender: TObject);
begin
  if ActiveMDIChild is TfmListaDePasos  then
    TfmListaDePasos(ActiveMDIChild).eliminarPaso.Execute;
end;

procedure Tfmprincipal.aDuplicarPasoExecute(Sender: TObject);
begin
  if ActiveMDIChild is TfmListaDePasos  then
    TfmListaDePasos(ActiveMDIChild).duplicarPaso.Execute;
end;

procedure Tfmprincipal.aEditarDescripcionExecute(Sender: TObject);
begin
  if ActiveMDIChild is TfmListaDePasos  then
    TfmListaDePasos(ActiveMDIChild).editarDescripcion.Execute;
end;

procedure Tfmprincipal.aAgregarListaPasosExecute(Sender: TObject);
begin
  if ActiveMDIChild is TfmListaDePasos  then
    TfmListaDePasos(ActiveMDIChild).agregarAListaDePasosExecute(sender);
end;

procedure Tfmprincipal.aGuardarComoListaPasosExecute(Sender: TObject);
begin
  if ActiveMDIChild is TfmListaDePasos  then
    TfmListaDePasos(ActiveMDIChild).aGuardarComoListaDePasosExecute(Sender);
end;

procedure Tfmprincipal.eventosHint(Sender: TObject);
begin
  Ayuda := Application.Hint;
end;

procedure Tfmprincipal.SetAyuda(const Value: string);
begin
  FAyuda := Value;
  StatusBar1.Panels[0].Text := Value;
end;

procedure Tfmprincipal.Acercade2Click(Sender: TObject);
var
   f: TfmAcerca;
begin
   f:= TfmAcerca.Create(self);
   f.ShowModal;
end;

procedure Tfmprincipal.PuedeDeshacerImagen(Sender: TObject);
begin
  if Sender is TAction then
    TAction(Sender).Enabled := (ActiveMDIChild is TfmImagen) and not (entorno.consultaHistorialImagen(TfmImagen(ActiveMDIChild).Name,1));
end;

procedure Tfmprincipal.PuedeRehacerImagen(Sender: TObject);
begin
  if Sender is TAction then
    TAction(Sender).Enabled := (ActiveMDIChild is TfmImagen) and not (entorno.consultaHistorialImagen(TfmImagen(ActiveMDIChild).Name,2));
end;

procedure Tfmprincipal.BarradeHerramientasDockOver(Sender: TObject;
  Source: TDragDockObject; X, Y: Integer; State: TDragState;
  var Accept: Boolean);
begin
  Accept := not (source.Control is TShrinkPanel);
end;

procedure Tfmprincipal.CambiarIdioma(Sender: TObject; unIdioma: string);
begin
  if Sender is TControl then
    entorno.cambiarIdiomaAlgoritmo((Sender as TControl).name, unIdioma);
end;

procedure Tfmprincipal.aEjecutarListaPasosExecute(Sender: TObject);
var
  f: TfmEjecutarLP;
const
  tipoEjecucion : array [0..2] of string = ('tipoLocal', 'tipoRemoto', 'tipoMixto');
begin
  if ActiveMDIChild is TfmListaDePasos then
  begin
    f := TfmEjecutarLP.Create(self);
    if f.ShowModal = mrOK then
      entorno.ejecutarListaPasos(TfmListaDePasos(ActiveMDIChild).Name, tipoEjecucion[f.seleccionado], f.directorioSalida, f.formatoSalida);
    f.Destroy;
  end;
end;

procedure Tfmprincipal.abrirArchivoImagen(archivo: string);
var
  formulario: TfmImagen;
begin
  formulario:= TfmImagen.Create(Self);
  formulario.name := entorno.abrirImagen(archivo, true);
  formulario.nombreArchivo := archivo;
  formulario.image1.Bitmap := entorno.getValorImagen(formulario.name);
  formulario.BitmapList.Bitmaps[0].Bitmap := formulario.image1.Bitmap;
  formulario.Image1.Width := formulario.image1.Bitmap.Width+20;
  formulario.Image1.Height := formulario.image1.Bitmap.Height+20;
  formulario.Height := formulario.image1.Bitmap.Height+54+formulario.StBarImg.Height;
  formulario.Width := formulario.image1.Bitmap.Width+28;
  formulario.Caption :=  _('Imagen: ') + ExtractFileName(archivo);
  formulario.StBarImg.SimpleText := ExtractFileName(archivo);
  formulario.Show;
  tbNoSelect.Down := true;
  tbUndo.Enabled :=false;
  tbRedo.Enabled :=false;
  tbCerrarImagen.Enabled := true;
end;

procedure Tfmprincipal.abrirArchivoMatriz(archivo: string);
var
  formulario: TfmMatriz;
begin
  formulario := TfmMatriz.Create(self);
  formulario.crearAbriendoMatriz(archivo);
end;

procedure Tfmprincipal.aMoverPasoAlPrincipioExecute(Sender: TObject);
begin
  if ActiveMDIChild is TfmListaDePasos  then
    TfmListaDePasos(ActiveMDIChild).aMoverAlPrincipio.Execute;
end;

procedure Tfmprincipal.aMoverPasoAlFinalExecute(Sender: TObject);
begin
  if ActiveMDIChild is TfmListaDePasos  then
    TfmListaDePasos(ActiveMDIChild).aMoverAlFinal.Execute;
end;

procedure Tfmprincipal.aMoverPasoAbajoExecute(Sender: TObject);
begin
  if ActiveMDIChild is TfmListaDePasos  then
    TfmListaDePasos(ActiveMDIChild).aMoverAbajo.Execute;
end;

procedure Tfmprincipal.aMoverPasoArribaExecute(Sender: TObject);
begin
  if ActiveMDIChild is TfmListaDePasos  then
    TfmListaDePasos(ActiveMDIChild).aMoverArriba.Execute;
end;

procedure Tfmprincipal.resultadoFTPStoreFile(ASender: TIdFTPServerThread;
  const AFileName: String; AAppend: Boolean; var VStream: TStream);
var
  nombreArchivo: string;
begin
  MostrarVentanaThreads('Recibiendo resultados...');
  nombreArchivo := TEntornoEjecucion.instance.getDirectorioTrabajo + '\' + AFileName;
  VStream := TFileStream.Create(nombreArchivo, fmCreate or fmShareExclusive);

  archivosResultado.Values[Asender.Password] := nombreArchivo;
end;

procedure Tfmprincipal.resultadoFTPDisconnect(AThread: TIdPeerThread);
begin
  try
    if (AThread is TIdFTPServerThread) then
    begin
      while resultados <> '' do;
      resultados := archivosResultado.Values[TIdFTPServerThread(AThread).Password];
      AThread.Synchronize(devolverResultados);
      MostrarVentanaThreads('Resultados recibidos!');
      archivosResultado.Values[TIdFTPServerThread(AThread).Password] := '';
    end;
  except on E:Exception do
    MostrarVentanaThreads(E.Message);
  end;
  resultados := '';
end;

procedure TfmPrincipal.devolverResultados;
var
  XMLDoc: IXMLDocument;
begin
  XMLDoc := LoadXMLDocument(resultados);
  entorno.devolverResultados(XMLDoc.DocumentElement);
end;

procedure TfmPrincipal.TerminoSecuencia(var Msg: TMessage);
begin
  TEntornoEjecucion.Instance.terminoSecuencia;
end;

procedure TfmPrincipal.aPausarLPExecute(Sender: TObject);
begin
  if TEntornoEjecucion.Instance.estaEjecutando then
    TEntornoEjecucion.Instance.interrumpirEjecucion;
end;

procedure TfmPrincipal.aPararLPExecute(Sender: TObject);
begin
  if TEntornoEjecucion.Instance.estaEjecutando then
    TEntornoEjecucion.Instance.detenerEjecucion
end;

procedure TfmPrincipal.aPausarLPUpdate(Sender: TObject);
begin
  if Sender is TAction then
    TAction(Sender).Enabled := TEntornoEjecucion.Instance.estaEjecutando;
end;

procedure TfmPrincipal.aPararLPUpdate(Sender: TObject);
begin
  if Sender is TAction then
    TAction(Sender).Enabled := TEntornoEjecucion.Instance.puedeHacerStop;
end;

procedure TfmPrincipal.aAgregarReferenciaExecute(Sender: TObject);
begin
  if ActiveMDIChild is TfmListaReferencias then
    TfmListaReferencias(ActiveMDIChild).aAgregarReferencia.Execute;
end;

procedure TfmPrincipal.aImprimirMatrizExecute(Sender: TObject);
begin
  if ActiveMDIChild is TfmMatriz then
     TfmMatriz(ActiveMDIChild).imprimir;
end;

procedure TfmPrincipal.FormDestroy(Sender: TObject);
begin
  mHHelp.Free;
  HHCloseAll;
end;

procedure TfmPrincipal.aAyudaExecute(Sender: TObject);
begin
  mHHelp.HelpContext(1001);
//  Application.HelpContext(1001);
end;

function TfmPrincipal.FormHelp(Command: Word; Data: Integer;
  var CallHelp: Boolean): Boolean;
begin
  mHHelp.HelpContext(0);
end;

procedure TfmPrincipal.aVerHilosExecute(Sender: TObject);
begin
  if (Sender is TAction) then
  begin
    (Sender as TAction).Checked := not (Sender as TAction).Checked;
    fmThreads.Visible := (Sender as TAction).Checked;
  end;
end;

procedure TfmPrincipal.aAyudaPaginaExecute(Sender: TObject);
begin
  ShellExecute(Handle,
              'open',
              PChar('http://www.southernbytes.com.ar'),
              nil,
              nil,
              SW_SHOWNORMAL);
end;

procedure TfmPrincipal.aCortarMatrizExecute(Sender: TObject);
begin
  if ActiveMDIChild is TfmMatriz then
  begin
     TfmMatriz(ActiveMDIChild).copiar;
     TfmMatriz(ActiveMDIChild).cortar;
  end;
end;

procedure TfmPrincipal.CargarHintsLista(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
  aux: TListItem;
begin
  aux := listaAlgoritmos.GetItemAt(X,Y);
  if assigned(aux) and assigned(aux.data) then
    listaAlgoritmos.Hint := aux.Caption + ' - ' + entorno.getDescipcionAlgoritmo(string(aux.data^));
end;

procedure TfmPrincipal.CargarHintArbol(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var
  aux: TTreeNode;
begin
  aux := arbolCategorias.GetNodeAt(X,Y);
  if assigned(aux) and assigned(aux.data) then
    arbolCategorias.Hint := aux.Text + ' - ' + entorno.getDescipcionAlgoritmo(string(aux.Data^));
end;

end.




