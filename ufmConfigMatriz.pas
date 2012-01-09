unit ufmConfigMatriz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, JvExStdCtrls, JvEdit,
  JvValidateEdit;

type
  TfmPropiedadesMatriz = class (TForm)
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    EColumnas: TLabeledEdit;
    EFilas: TLabeledEdit;
    Label1: TLabel;
    EValorInicial: TJvValidateEdit;
    Label2: TLabel;
    procedure EValorInicialOldChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EValorInicialChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FColumnas: Integer;
    FTipoDato: string;
    FValorInicial: string;
    function GetColumnas: Integer;
    function GetFilas: Integer;
    procedure SetColumnas(const Value: Integer);
    procedure SetFilas(const Value: Integer);
    procedure SetTipoDato(const Value: string);
    procedure SetValorInicial(const Value: string);
  public
    function execute: Boolean;
    property Columnas: Integer read GetColumnas write SetColumnas;
    property Filas: Integer read GetFilas write SetFilas;
    property TipoDato: string read FTipoDato write SetTipoDato;
    property ValorInicial: string read FValorInicial write SetValorInicial;
  end;

   pString = ^string;  

var
  fmPropiedadesMatriz: TfmPropiedadesMatriz;

implementation

uses Math, gnugettext;

{$R *.dfm}

{
***************************** TfmPropiedadesMatriz *****************************
}
procedure TfmPropiedadesMatriz.EValorInicialOldChange(Sender: TObject);
begin
  ValorInicial := EValorInicial.Text;
end;

function TfmPropiedadesMatriz.execute: Boolean;
begin
  result := ShowModal = mrOk;
end;

function TfmPropiedadesMatriz.GetColumnas: Integer;
begin
  Result := strToInt(EColumnas.Text);
end;

function TfmPropiedadesMatriz.GetFilas: Integer;
begin
  Result := strToInt(EFilas.text);
end;

procedure TfmPropiedadesMatriz.SetColumnas(const Value: Integer);
begin
  EColumnas.Text := intToStr(value);
end;

procedure TfmPropiedadesMatriz.SetFilas(const Value: Integer);
begin
  EFilas.Text := intTostr(value);
end;

procedure TfmPropiedadesMatriz.SetTipoDato(const Value: string);
var
   i: integer;
begin
  FTipoDato := Value;

  for i := 0 to ComboBox1.Items.Count-1 do
    if pString(ComboBox1.Items.Objects[i])^ = LowerCase(Value) then
    begin
       ComboBox1.ItemIndex := i;
       break;
    end;
end;

procedure TfmPropiedadesMatriz.SetValorInicial(const Value: string);
begin
  ComboBox1Select(nil);
  FValorInicial := Value;
  EValorInicial.Text := Value;

end;

procedure TfmPropiedadesMatriz.FormCreate(Sender: TObject);
var
   pDesc : pString;
begin
   ComboBox1.Items.Clear;
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


  TranslateComponent(self);
end;

procedure TfmPropiedadesMatriz.ComboBox1Select(Sender: TObject);
begin
   EValorInicial.DecimalPlaces := 0;
   if pString(ComboBox1.Items.Objects[ComboBox1.itemindex])^ = 'texto' then
   begin
      EValorInicial.DisplayFormat := dfNone;
      EValorInicial.Value := 'abc';
      EValorInicial.MaxLength := 0;
      tipoDato := 'texto';
   end;
   if pString(ComboBox1.Items.Objects[ComboBox1.itemindex])^ = 'complejo' then
   begin
      EValorInicial.DisplayFormat := dfInteger;
      EValorInicial.Value := 0;
      EValorInicial.MaxLength := 0;
      tipoDato := 'complejo';
   end;
   if pString(ComboBox1.Items.Objects[ComboBox1.itemindex])^ = 'letra' then
   begin
      EValorInicial.DisplayFormat := dfAlphaNumeric;
      EValorInicial.Value := 'a';
      EValorInicial.MaxLength := 1;
      tipoDato := 'letra';
   end;
   if pString(ComboBox1.Items.Objects[ComboBox1.itemindex])^ = 'numero' then
   begin
      EValorInicial.DisplayFormat := dfFloat;
      EValorInicial.MaxLength := 0;
      EValorInicial.DecimalPlaces := 9;
      EValorInicial.Value := '0';
      tipoDato := 'numero';
   end;
   if pString(ComboBox1.Items.Objects[ComboBox1.itemindex])^ = 'numeroentero' then
   begin
      EValorInicial.DisplayFormat := dfInteger;
      EValorInicial.Value := '0';
      EValorInicial.MaxLength := 0;
      tipoDato := 'numeroentero';
   end;
end;

procedure TfmPropiedadesMatriz.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
   i : integer;
   pDesc : pString;
begin
   pDesc := pString(ComboBox1.Items.Objects[ComboBox1.itemindex]);
   TipoDato := pDesc^;
end;

procedure TfmPropiedadesMatriz.EValorInicialChange(Sender: TObject);
begin
   FValorInicial := EValorInicial.Text;
end;

procedure TfmPropiedadesMatriz.FormDestroy(Sender: TObject);
var
   i : integer;
   pDesc : pString;
begin
   if ComboBox1.ItemIndex <> -1 then
   begin
     pDesc := pString(ComboBox1.Items.Objects[ComboBox1.itemindex]);
     TipoDato := pDesc^;
     for i := 0 to ComboBox1.Items.Count-1 do
        if ComboBox1.Items.Objects[i] <> nil then
           Dispose(pString(ComboBox1.Items.Objects[i]));
   end;
end;

end.
