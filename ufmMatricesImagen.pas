unit ufmMatricesImagen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvExButtons, JvBitBtn, JvFooter, ExtCtrls,
  JvExExtCtrls, JvComponent, Grids, JvExGrids, JvStringGrid, ComCtrls,
  JvExComCtrls, JvComCtrls, JvExStdCtrls, JvButton, JvCtrls;

type
  TfmMatricesImagen = class(TForm)
    StatusBar1: TStatusBar;
    Paginas: TJvPageControl;
    tsMatrizDatos: TTabSheet;
    tsMatrizPaleta: TTabSheet;
    MatrizGrid: TJvStringGrid;
    JvFooter1: TJvFooter;
    btGuardarDatos: TJvFooterBtn;
    btCerrar1: TJvFooterBtn;
    JvFooter2: TJvFooter;
    btGuardarPaleta: TJvFooterBtn;
    btCerrar2: TJvFooterBtn;
    MatrizPaleta: TJvStringGrid;
    imagMatSave: TSaveDialog;
    procedure btCerrar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btGuardarDatosClick(Sender: TObject);
    procedure btGuardarPaletaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMatricesImagen: TfmMatricesImagen;

implementation

{$R *.dfm}

procedure TfmMatricesImagen.btCerrar1Click(Sender: TObject);
begin
  self.Release;
end;

procedure TfmMatricesImagen.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  self.Release;
end;

procedure TfmMatricesImagen.btGuardarDatosClick(Sender: TObject);
var
  archivo: TextFile;
  x,y:integer;
begin
  if imagMatSave.Execute then
    begin
      AssignFile(archivo,imagMatSave.FileName);
      Rewrite(archivo);
      Writeln(archivo,'<?xml version="1.0" encoding="UTF-8"?>');
      writeln(archivo,'<Matriz tipoDato="numeroentero" valorInicial="1">');
      for x:= 1 to MatrizGrid.RowCount-1 do
      begin
        writeln(archivo,'<Fila>');
          for y:= 1 to MatrizGrid.ColCount-1 do
          begin
            write(archivo,'<numeroEntero>');
            write(archivo,MatrizGrid.Cells[y,x]);
            writeln(archivo,'</numeroEntero>');
          end;
        writeln(archivo,'</Fila>');
      end;
      writeln(archivo,'</Matriz>');
      CloseFile(archivo);
    end;
  // DONE: Generar el XML de Datos que se pueda levantar como matriz de ARPI
end;

procedure TfmMatricesImagen.btGuardarPaletaClick(Sender: TObject);
var
  archivo: TextFile;
  x,y:integer;
begin
  if imagMatSave.Execute then
    begin
      AssignFile(archivo,imagMatSave.FileName);
      Rewrite(archivo);
      Writeln(archivo,'<?xml version="1.0" encoding="UTF-8"?>');
      writeln(archivo,'<matriz tipoDato="numeroentero" valorInicial="1">');
      for x:= 1 to MatrizPaleta.RowCount-1 do
      begin
        writeln(archivo,'<fila>');
          for y:= 1 to MatrizPaleta.ColCount-1 do
          begin
            write(archivo,'<numeroEntero>');
            write(archivo,MatrizPaleta.Cells[y,x]);
            writeln(archivo,'</numeroEntero>');
          end;
        writeln(archivo,'</fila>');
      end;
      writeln(archivo,'</matriz>');
      CloseFile(archivo);
    end;
  // Done: Generar el XML de Paleta que se pueda levantar como matriz de ARPI
end;

end.
