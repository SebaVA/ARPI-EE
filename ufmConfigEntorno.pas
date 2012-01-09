unit ufmConfigEntorno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, uEntornoEjecucion, JvBaseDlg,
  JvSelectDirectory, JvComponent, JvBrowseFolder, Mask, JvExMask,
  JvToolEdit, ComCtrls, JvExStdCtrls, JvEdit, JvValidateEdit, JvExControls,
  JvComCtrls, JvListComb, ActnList;

type
  TfmConfigEntorno = class (TForm)
    Button1: TButton;
    Button2: TButton;
    btnAgregar: TButton;
    btnComprobar: TButton;
    btnQuitar: TButton;
    btnBuscar: TButton;
    cbSoloLocal: TCheckBox;
    ECantidadProcesadores: TJvValidateEdit;
    EIP: TJvIPAddress;
    EIPDesde: TJvIPAddress;
    EIPHasta: TJvIPAddress;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    lvIdiomasDisponibles: TJvImageListBox;
    lbIdiomaEntorno: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    leDirAlg: TJvDirectoryEdit;
    leDirTrabajo: TJvDirectoryEdit;
    listaSatelites: TListBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    EditNuevoFormato: TEdit;
    lformatos: TListBox;
    Button7: TButton;
    Button8: TButton;
    acciones: TActionList;
    aBuscar: TAction;
    aAgregar: TAction;
    aQuitar: TAction;
    aComprobar: TAction;
    Label11: TLabel;
    Label12: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure aAgregarExecute(Sender: TObject);
    procedure siSateliteSeleccionado(Sender: TObject);
    procedure aQuitarExecute(Sender: TObject);
    procedure aBuscarExecute(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    QuieroCerrar : boolean;
    procedure IpEncontrado(ip: string; termino: boolean);
  public
    function Execute: Boolean;
  end;

var
  fmConfigEntorno: TfmConfigEntorno;

implementation

uses udmEntorno, gnugettext, Math, StrUtils;

{$R *.dfm}

{ TForm4 }


{
****************************** TfrmConfigEntorno *******************************
}
function TfmConfigEntorno.Execute: Boolean;
var
  entorno: TEntornoEjecucion;
  aux: TStringList;
  item : TJvImageItem;
  i: integer;
begin
  entorno := TEntornoEjecucion.Instance;
  //Cargo los directorios de trabajo y de algoritmos
  leDirAlg.Text := entorno.getDirectorioAlgoritmos;
  if not DirectoryExists(leDirAlg.Text) then
    leDirAlg.InitialDir := ExtractFilePath(Application.ExeName);
  leDirTrabajo.Text := entorno.getDirectorioTrabajo;
  if not DirectoryExists(leDirTrabajo.Text) then
    leDirTrabajo.InitialDir := ExtractFilePath(Application.ExeName);
  ECantidadProcesadores.Text := intToStr(entorno.cantidadProcesadoresLocales); 
  result := false;
  lformatos.Items := entorno.getFormatosSalida;

  //Cargo el idioma del entorno
  lvIdiomasDisponibles.Items.Clear;
  aux:= TStringList.Create;
  DefaultInstance.GetListOfLanguages('default', aux);
  for i:= 0 to aux.Count -1 do
  begin
    item := lvIdiomasDisponibles.Items.Add;
    item.Text := strIdiomas[buscarCodIdioma(aux.Strings[i])];
    item.ImageIndex := buscarIdxIdioma(aux.Strings[i]);
  end;

  i := lvIdiomasDisponibles.items.Count -1;
  while (i>=0) and (lvIdiomasDisponibles.items.Items[i].Text <> strIdiomas[buscarCodIdioma(entorno.mostrarIdiomaEjecucion)]) do
    dec(i);
  lvIdiomasDisponibles.ItemIndex:= i;

  listaSatelites.Items := entorno.getlistaSatelites;

  cbSoloLocal.Checked := entorno.getEjecutarLocal;
  
  QuieroCerrar := false;

  if Self.ShowModal = mrOk then
  begin
    entorno.configurarDirectorioTrabajoEjecucion(leDirTrabajo.Text);
    entorno.configurarDirectorioAlgoritmos(leDirAlg.Text);
    entorno.configurarCantidadProcesadoresLocales(strToInt(ECantidadProcesadores.Text));
    entorno.cambiarIdiomaEjecucion(codIdiomas[buscarStrIdioma(lvIdiomasDisponibles.Items.Items[lvIdiomasDisponibles.Itemindex].Text)]);
    entorno.setFormatosSalida(lformatos.Items);
    UseLanguage(codIdiomas[buscarStrIdioma(lvIdiomasDisponibles.Items.Items[lvIdiomasDisponibles.Itemindex].Text)]);

    entorno.eliminarSatelites;
    for i:= 0 to listaSatelites.Items.Count - 1 do
      entorno.agregarSatelite(listaSatelites.Items.Strings[i], listaSatelites.Items.Strings[i]);
    result := true;

    entorno.setEjecutarLocal(cbSoloLocal.Checked);
  end;
  close;
end;

procedure TfmConfigEntorno.FormCreate(Sender: TObject);
begin
  TranslateComponent(self);
end;

procedure TfmConfigEntorno.Button7Click(Sender: TObject);
function TestFilename(Filename: String) : Boolean;
var
  I: integer;
begin
  Result := Filename <> '';
  for I := 1 to Length(Filename) do
    Result := Result and not (Filename[I] in ['<', '>', '|', '"', '\', '/',':','*','?']);
end;
var
  s: string;
begin
  s := EditNuevoFormato.Text;
  s := StringReplace(s,'%n','%N',[]);
  s := StringReplace(s,'%p','%P',[]);
  s := StringReplace(s,'%a','%A',[]);
  s := StringReplace(s,'%s','%S',[]);
  if TestFilename(s) and
  (Pos('%N',s)<>0) and
  (pos('%P',s)<>0) and
  (pos('%A',s)<>0) and
  (pos('%S',s)<>0) then
  begin
    lformatos.Items.Add(s);
    EditNuevoFormato.Text := '';
  end
  else
    ShowMessage('El formato no cumple con el formato requerido');
//  TEntornoEjecucion.Instance.setFormatosSalida(lformatos.Items);
end;

procedure TfmConfigEntorno.Button8Click(Sender: TObject);
begin
  if lformatos.Items.Count > 1 then
    lformatos.DeleteSelected
  else
    ShowMessage('Necesita haber al menos un formato definido, no puede eliminarse');
end;

procedure TfmConfigEntorno.aAgregarExecute(Sender: TObject);
begin
  listaSatelites.AddItem(Eip.Text, nil);
end;

procedure TfmConfigEntorno.siSateliteSeleccionado(Sender: TObject);
begin
  if Sender is TAction then
    (Sender as TAction).Enabled := listaSatelites.SelCount > 0;
end;

procedure TfmConfigEntorno.aQuitarExecute(Sender: TObject);
var
  i:integer;
begin
  for i := listaSatelites.Items.Count - 1 downto 0 do
    if listaSatelites.Selected[i] then
      listaSatelites.Items.Delete(i);
end;

procedure TfmConfigEntorno.aBuscarExecute(Sender: TObject);
begin
  if aBuscar.Caption = _('&Buscar') then
  begin
    TEntornoEjecucion.Instance.onEncuentro:= IpEncontrado;
    TEntornoEjecucion.Instance.buscarSatelites(EIPDesde.Text, EIPHasta.Text);
    aBuscar.Caption := _('&Detener');
  end
  else
  begin
    TEntornoEjecucion.Instance.detenerBusqueda;
    aBuscar.Caption := _('&Buscar');
  end;
end;

procedure TfmConfigEntorno.IpEncontrado(ip: string; termino: boolean);
begin
  if not termino then
  begin
    if listaSatelites.Items.IndexOf(ip) = -1 then
      listaSatelites.AddItem(ip, nil);
  end
  else
    aBuscar.Caption := _('&Buscar');
  if QuieroCerrar then Close;
end;

procedure TfmConfigEntorno.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := aBuscar.Caption = _('&Buscar');
  if not CanClose then
    if MessageDlg('Actualmente se está buscando satélites. ¿Desea detener la búsqueda?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      TEntornoEjecucion.Instance.detenerBusqueda;
      QuieroCerrar := true;
    end;
end;

end.

