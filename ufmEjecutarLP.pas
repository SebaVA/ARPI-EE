unit ufmEjecutarLP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvToolEdit, JvExStdCtrls, JvEdit, JvValidateEdit, StdCtrls,
  Mask, JvExMask, ExtCtrls;

type
  TfmEjecutarLP = class(TForm)
    btnOK: TButton;
    btnCancel: TButton;
    EditDirectorioSalida: TJvDirectoryEdit;
    EditFormatoSalida: TJvValidateEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    rbLocales: TRadioButton;
    rbRemotos: TRadioButton;
    rbCualquiera: TRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    function getFormatoSalida: string;
    function getDirectorioSalida: string;
    function getFormatoArchivo: string;
    { Private declarations }
  public
    function seleccionado: integer;
    property formatoSalida: string read getFormatoSalida;
    property directorioSalida: string read getDirectorioSalida;
    property getFormato: string read getFormatoArchivo;

    { Public declarations }
  end;

var
  fmEjecutarLP: TfmEjecutarLP;

implementation

uses uEntornoEjecucion, Math, gnugettext;

{$R *.dfm}

{ TfmEjecutarLP }


function TfmEjecutarLP.getDirectorioSalida: string;
begin
  result := EditDirectorioSalida.Text;
end;

function TfmEjecutarLP.getFormatoSalida: string;
begin
  result := StringReplace(ComboBox1.Text,'%N',EditFormatoSalida.Text, [rfReplaceAll]);
end;


procedure TfmEjecutarLP.FormCreate(Sender: TObject);
begin
  EditDirectorioSalida.InitialDir := ExtractFilePath(Application.ExeName);
  EditDirectorioSalida.Text := ExtractFilePath(Application.ExeName);
  ComboBox1.Items := TEntornoEjecucion.Instance.getFormatosSalida;
  rbLocales.Enabled := TEntornoEjecucion.Instance.cantidadProcesadoresLocales > 0;
  rbRemotos.Enabled := TEntornoEjecucion.Instance.getListaSatelites.Count > 0;
  rbCualquiera.Enabled := rbLocales.Enabled and rbRemotos.Enabled;
  btnOk.Enabled := rbLocales.Enabled or rbRemotos.Enabled;
end;

function TfmEjecutarLP.getFormatoArchivo: string;
begin
  result := ComboBox1.Items.Text;
end;

function TfmEjecutarLP.seleccionado: integer;
begin
  result := IfThen(rbLocales.Checked, rbLocales.tag, 0)+
    IfThen(rbRemotos.Checked, rbRemotos.tag, 0) +
    IfThen(rbCualquiera.Checked, rbCualquiera.tag, 0)
end;

procedure TfmEjecutarLP.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;
  if ModalResult = mrOK then
  begin
    CanClose := DirectoryExists(directorioSalida);
    if not CanClose then
      raise Exception.CreateFmt(_('El directorio %s no es válido'), [directorioSalida]);
  end;
end;

end.
