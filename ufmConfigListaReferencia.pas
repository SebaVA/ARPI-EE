unit ufmConfigListaReferencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvEdit, JvValidateEdit, JvDialogs;

type
  TfmConfigListaReferencia = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    ENroElementos: TJvValidateEdit;
    Label2: TLabel;
    EValorInicial: TJvValidateEdit;
    btnBrowse: TButton;
    JvOpenDialog1: TJvOpenDialog;
    Label3: TLabel;
    Label4: TLabel;
    procedure ComboBox1Select(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnBrowseClick(Sender: TObject);
  private
    FTipoDato: string;
//    FTipoDato: string;
//    FNroElementos: integer;
    function getNroElementos(): integer;
    function getValorInicial():string;
    { Private declarations }
  public
//      Constructor create(tipo: string); overload;
      procedure fijarTipo(tipo: string);
      function Execute(): boolean;
      property NroElementos: integer read getNroElementos;
      property TipoDato: string read FTipoDato;
      property ValorInicial: string read getValorInicial;
    { Public declarations }
  end;

   pString = ^string;
var
  fmConfigListaReferencia: TfmConfigListaReferencia;

implementation

{$R *.dfm}

procedure TfmConfigListaReferencia.ComboBox1Select(Sender: TObject);
begin
   btnBrowse.Enabled := false;
   EValorInicial.DecimalPlaces := 0;
   if pString(ComboBox1.Items.Objects[ComboBox1.itemindex])^ = 'referenciaarchivoimagen' then
   begin
      EValorInicial.DisplayFormat := dfNone;
      EValorInicial.Value := '';
      EValorInicial.MaxLength := 0;
      btnBrowse.Enabled := true;
      JvOpenDialog1.Filter := 'imágenes|*.jpg';
   end;
   if pString(ComboBox1.Items.Objects[ComboBox1.itemindex])^ = 'referenciaarchivomatriz' then
   begin
      EValorInicial.DisplayFormat := dfNone;
      EValorInicial.Value := '';
      EValorInicial.MaxLength := 0;
      btnBrowse.Enabled := true;
      JvOpenDialog1.Filter := 'Matriz ARPI (*.amt)|*.amt';
   end;
   if pString(ComboBox1.Items.Objects[ComboBox1.itemindex])^ = 'texto' then
   begin
      EValorInicial.DisplayFormat := dfNone;
      EValorInicial.Value := '';
      EValorInicial.MaxLength := 0;
   end;
   if pString(ComboBox1.Items.Objects[ComboBox1.itemindex])^ = 'complejo' then
   begin
      EValorInicial.DisplayFormat := dfInteger;
      EValorInicial.Value := 0;
      EValorInicial.MaxLength := 0;
   end;
   if pString(ComboBox1.Items.Objects[ComboBox1.itemindex])^ = 'letra' then
   begin
      EValorInicial.DisplayFormat := dfAlphaNumeric;
      EValorInicial.Value := 'a';
      EValorInicial.MaxLength := 1;
   end;
   if pString(ComboBox1.Items.Objects[ComboBox1.itemindex])^ = 'numero' then
   begin
      EValorInicial.DisplayFormat := dfFloat;
      EValorInicial.MaxLength := 0;
      EValorInicial.DecimalPlaces := 9;
      EValorInicial.Value := '0';
   end;
   if pString(ComboBox1.Items.Objects[ComboBox1.itemindex])^ = 'numeroentero' then
   begin
      EValorInicial.DisplayFormat := dfInteger;
      EValorInicial.Value := '0';
      EValorInicial.MaxLength := 0;
   end;

end;

function TfmConfigListaReferencia.Execute: boolean;
begin
  result := self.ShowModal = mrOk;
end;


function TfmConfigListaReferencia.getNroElementos: integer;
begin
   result := StrToInt(ENroElementos.Text);
end;


procedure TfmConfigListaReferencia.FormCreate(Sender: TObject);
var
   pDesc : pString;
begin
   ComboBox1.Items.Clear;

   new (pDesc);
   pDesc^ := 'referenciaarchivoimagen';
   ComboBox1.Items.AddObject('Imagen',pointer(pDesc));

   new (pDesc);
   pDesc^ := 'referenciaarchivomatriz';
   ComboBox1.Items.AddObject('Matriz',pointer(pDesc));

   new (pDesc);
   pDesc^ := 'texto';
   ComboBox1.Items.AddObject('Texto',pointer(pDesc));

   new (pDesc);
   pDesc^ := 'complejo';
   ComboBox1.Items.AddObject('Complejo',pointer(pDesc));

   new (pDesc);
   pDesc^ := 'letra';
   ComboBox1.Items.AddObject('Letra',pointer(pDesc));

   new (pDesc);
   pDesc^ := 'numero';
   ComboBox1.Items.AddObject('Número',pointer(pDesc));
   
   new (pDesc);
   pDesc^ := 'numeroentero';
   ComboBox1.Items.AddObject('Número Entero',pointer(pDesc));

   ComboBox1.ItemIndex := 0;
   ComboBox1Select(nil); //actualiza los parametros de los dialogs etc
 {
   'imagen'
   'matriz'
   'texto'
   'complejo'
   'letra'
   'numero'
   'numeroentero'
   'referenciaarchivoimagen'
   'referenciaarchivovector'
   'referenciaarchivomatriz'
   'referenciaestructuraimagen'
   'referenciaestructuravector'
   'referenciaestructuramatriz'
   'referenciacomponente'

}

end;

procedure TfmConfigListaReferencia.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
   i : integer;
   pDesc : pString;
begin
   pDesc := pString(ComboBox1.Items.Objects[ComboBox1.itemindex]);
   FTipoDato := pDesc^;
   for i := 0 to ComboBox1.Items.Count-1 do
      if ComboBox1.Items.Objects[i] <> nil then
         Dispose(pString(ComboBox1.Items.Objects[i]));
end;

function TfmConfigListaReferencia.getValorInicial: string;
begin
   result := EValorInicial.Value;
end;

procedure TfmConfigListaReferencia.btnBrowseClick(Sender: TObject);
begin
   if JvOpenDialog1.Execute then
   begin
      EValorInicial.Text := JvOpenDialog1.FileName;      
   end;
end;

procedure TfmConfigListaReferencia.fijarTipo(tipo: string);
var
   i : integer;
   pDesc : pString;
begin
   i := 0;
   if lowercase(tipo) = 'imagen' then
     tipo := 'referenciaarchivoimagen'
   else
   if lowercase(tipo) = 'matriz' then
     tipo := 'referenciaarchivomatriz';
   while (i < ComboBox1.Items.Count) and (pString(ComboBox1.Items.Objects[i])^ <> lowercase(tipo)) do
      inc(i);

   if (i < ComboBox1.Items.Count) then
   begin
      ComboBox1.ItemIndex := i;
      ComboBox1.Enabled := false;
      ComboBox1Select(nil);
    end;
end;

end.
