unit ufmMatriz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uTipos, ComCtrls, ToolWin, StdCtrls, ExtCtrls, Menus,
  ActnList, ufmConfigMatriz, JvDialogs, ImgList, AppEvnts, uEntornoEjecucion, Clipbrd,
  StdActns, JvExGrids, JvStringGrid, Grids;

type
  TfmMatriz = class (TForm)
    JvOpenDMatriz: TJvOpenDialog;
    JvSaveDialog1: TJvSaveDialog;
    ImageList1: TImageList;
    procedure abrirMatriz();
    procedure copiar();
    procedure cortar();
    procedure deshacer();
    procedure guardarMatrizComo();
    procedure guardarMatriz();
    procedure pegar();
    procedure rehacer();
    procedure StringGrid1ExitCell(Sender: TJvStringGrid; AColumn, ARow: Integer;
            const EditText: String);
    procedure ConfigurarPropiedades1Click(Sender: TObject);
    procedure EliminarColumna1Click(Sender: TObject);
    procedure EliminarFila1Click(Sender: TObject);
    procedure Hola1Click(Sender: TObject);
    procedure InsertarFila1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure StringGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure StringGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure refrescarMatriz;
  private
    FCambio: boolean;
    editando: boolean;
    entorno: TEntornoEjecucion;
    FArchivoMatriz: string;
    FColumnaActual: Integer;
    FEstadoMatriz: string;
    FFilaActual: Integer;
    fmConfigMatriz: TfmPropiedadesMatriz;
    procedure SetArchivoMatriz(const Value: string);

    procedure SetCambio(const Value: boolean);
    procedure SetColumnaActual(const Value: Integer);
    procedure SetEstadoMatriz(const Value: string);
    procedure SetFilaActual(const Value: Integer);
    procedure SetTitulo(const Value: string);
    property cambio: boolean read FCambio write SetCambio;
  public
    procedure crearAbriendoMatriz(archivo:string);
    procedure configurarPropiedades();
    function tieneRehacer(): boolean;
    function tieneDeshacer(): boolean;
    function crearNuevaMatriz: Boolean;
    property ArchivoMatriz: string read FArchivoMatriz write SetArchivoMatriz;
    function estaSeleccionadoFilaoCol:boolean;

    property ColumnaActual: Integer read FColumnaActual write SetColumnaActual;
    property EstadoMatriz: string read FEstadoMatriz write SetEstadoMatriz;
    property FilaActual: Integer read FFilaActual write SetFilaActual;
    property Titulo: string write SetTitulo;
  published
    ConfigurarPropiedades1: TMenuItem;
    EliminarColumna1: TMenuItem;
    EliminarFila1: TMenuItem;
    Hola1: TMenuItem;
    InsertarFila1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Panel1: TPanel;
    popMenuMatriz: TPopupMenu;
    StatusBar1: TStatusBar;
    StringGrid1: TjvStringGrid;
    procedure eliminarColumna();
    procedure eliminarFila();
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure insertarColumna();
    procedure insertarFila();
    procedure imprimir();
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer; var 
            CanSelect: Boolean);
    procedure StringGrid1SetEditText(Sender: TObject; ACol, ARow: Integer; 
            const Value: String);
  end;
  
var
  fmMatriz: TfmMatriz;

Const
  EXTENSION_MATRIZ = '.amt';

implementation

uses gnugettext, Types, uConsts, printers;

{$R *.dfm}

{
********************************** TfmMatriz ***********************************
}
procedure TfmMatriz.abrirMatriz();
begin
  if JvOpenDMatriz.Execute then
  begin
    if name <> '' then
      entorno.cerrarEstructura(name);
    name := entorno.abrirMatriz(JvOpenDMatriz.FileName);
    ArchivoMatriz := JvOpenDMatriz.FileName;
    Titulo := ArchivoMatriz;
    refrescarMatriz();
    cambio := false;
  end;
end;

procedure TfmMatriz.configurarPropiedades;
begin
  fmConfigMatriz.Filas := StringGrid1.RowCount;
  fmConfigMatriz.Columnas:= StringGrid1.ColCount;
  fmConfigMatriz.TipoDato := entorno.getTipoDatoMatriz(name);// getTipoDato;
  fmConfigMatriz.ValorInicial := entorno.getValorInicialMatriz(name);//Matriz.getValorInicial;
  if fmConfigMatriz.ShowModal = mrOk then
  begin
    entorno.reinicializarMatriz (name, fmConfigMatriz.Filas, fmConfigMatriz.Columnas,fmConfigMatriz.TipoDato,fmConfigMatriz.ValorInicial);
    refrescarMatriz();
    cambio := true;
  end;
end;

procedure TfmMatriz.copiar();
var
  texto: string;
  GRect: TGridRect;
  i, j: Integer;
begin
  GRect := StringGrid1.Selection;
  texto := '';
  for j := GRect.Top to GRect.Bottom do
  begin
    for i := GRect.Left to GRect.Right do
    begin
      if i = GRect.Right then
        texto := texto + StringGrid1.Cells[i,j]
      else
        texto := texto + StringGrid1.Cells[i,j] + #9;
    end;
    texto := texto + #13#10
  end;
  Clipboard.AsText := texto;
end;

procedure TfmMatriz.crearAbriendoMatriz(archivo:string);
begin
  ArchivoMatriz := archivo;
  name := entorno.abrirMatriz(ArchivoMatriz, true);
  refrescarMatriz();
  cambio := false;
  Titulo := ArchivoMatriz;
end;

function TfmMatriz.crearNuevaMatriz: Boolean;
begin
  fmConfigMatriz.Filas := 5;
  fmConfigMatriz.Columnas:= 5;
  fmConfigMatriz.TipoDato := 'letra';// getTipoDato;
  fmConfigMatriz.ValorInicial := 'a';//Matriz.getValorInicial;
  result := fmConfigMatriz.Execute;
  if result then
  begin
    name := entorno.crearMatriz(fmConfigMatriz.Filas, fmConfigMatriz.Columnas,fmConfigMatriz.TipoDato,fmConfigMatriz.ValorInicial, true);
    refrescarMatriz();
    cambio := true;
    self.Visible := true;
  end
  else
    self.Close;
end;

procedure TfmMatriz.deshacer();
begin
  entorno.deshacerMatriz(name);
  refrescarMatriz;
  cambio := true;
end;

procedure TfmMatriz.eliminarColumna();
begin
  entorno.eliminarColumnas(name, StringGrid1.Selection.Left+1,StringGrid1.Selection.Right+1);
  refrescarMatriz();
  cambio := true;
end;

procedure TfmMatriz.eliminarFila();
begin
  entorno.eliminarFilas(name, StringGrid1.Selection.Top+1,StringGrid1.Selection.Bottom+1);
  refrescarMatriz();
  cambio := true;
end;

procedure TfmMatriz.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//   lo saca de la lista de estructuras en el metodo destroy
   self.Free;
end;

procedure TfmMatriz.FormCreate(Sender: TObject);
var
  i,
  cols,
  filas: integer;
begin
  TranslateComponent(self);
  ArchivoMatriz:='';
  cambio:= false;
  entorno := TEntornoEjecucion.Instance;
  fmConfigMatriz := TfmPropiedadesMatriz.Create(self);
end;

procedure TfmMatriz.guardarMatrizComo();
begin
  if JvSaveDialog1.Execute then
  begin
    entorno.guardarMatriz(name, JvSaveDialog1.FileName);
    ArchivoMatriz := JvSaveDialog1.FileName;
    Titulo := ArchivoMatriz;
  end
end;

procedure TfmMatriz.guardarMatriz();
begin
  if ArchivoMatriz <> '' then
  begin
     entorno.guardarMatriz(name, ArchivoMatriz);
     cambio := false;
  end
  else
  begin
     if JvSaveDialog1.Execute then
     begin
       ArchivoMatriz := ChangeFileExt(JvSaveDialog1.FileName, EXTENSION_MATRIZ);
       entorno.guardarMatriz(name, ArchivoMatriz);
       Titulo := ArchivoMatriz;
       cambio := false;
     end
  end;
end;

procedure TfmMatriz.insertarColumna();
begin
  entorno.insertarColumnas(name, StringGrid1.Col+1,1);
  refrescarMatriz();
  cambio := true;
end;

procedure TfmMatriz.insertarFila();
begin
  entorno.insertarFilas(name, StringGrid1.Row+1,1);
  refrescarMatriz();
  cambio := true;
end;

procedure TfmMatriz.pegar();
var
  GRect: TGridRect;
  I, F, C: Byte;
  texto, cs, resS: string;
begin
  GRect := StringGrid1.Selection;
  I := GRect.Left;
  F := GRect.Top;
  texto := clipboard.AsText;
  F := F-1;
  while pos (#13,texto)>0 do
  begin
    F := F+1;
    C := I-1;
    CS := copy(texto, 1,pos(#13,texto));
    while pos(#9,CS) >0 do
    begin
      C := C+1;
  //      if (C <= StringGrid1.ColCount-1) and (F <= StringGrid1.RowCount-1) then
      if (C <= entorno.cantidadColumnasMatriz(name) -1) and (F <= entorno.cantidadFilasMatriz(name) - 1) then
      begin
          //StringGrid1.Cells[C,F] := Copy(CS,1,Pos(#9,CS)-1);
        entorno.modificarCeldaMatriz(name, F+1, C+1, Copy(CS,1,Pos(#9,CS)-1));
      end;
      resS := copy(CS,1,pos(#9,CS)-1);
      Delete(CS,1,Pos(#9,CS));
    end;
  //    if (C <= StringGrid1.ColCount -1) and (F <= StringGrid1.RowCount -1) then
    if (C < entorno.cantidadColumnasMatriz(name) -1) and (F <= entorno.cantidadFilasMatriz(name) - 1) then
    begin
      if copy (CS,1,pos(#13,CS)-1) <>'' then
      begin
          //StringGrid1.Cells[C+1,F] := copy (CS,1,pos(#13,CS)-1);
        entorno.modificarCeldaMatriz(name, F+1,C+2,copy (CS,1,pos(#13,CS)-1))
      end;
    end;
    Delete(texto,1,Pos(#13,texto));
    if Copy(texto,1,1)=#10 then
      Delete(texto,1,1);
  end;
  refrescarMatriz;
  cambio := true;
end;

procedure TfmMatriz.refrescarMatriz;
var
  i, j: Integer;
  mat: TMString;
begin
  StatusBar1.Panels[3].Text := 'ID: ' + name;
  mat := entorno.getMatriz(name);
  StringGrid1.ColCount := high(mat[0])+1;
  StringGrid1.RowCount:= high(mat)+1;
  for i := 0 to high(mat) do
    for j := 0 to high(mat[0]) do
      StringGrid1.Cells[j,i] := mat[i,j];
  EstadoMatriz:='Tamaño: '+intToStr(StringGrid1.RowCount)+' x '+intToStr(StringGrid1.ColCount);
end;

procedure TfmMatriz.rehacer();
begin
  entorno.rehacerMatriz(name);
  refrescarMatriz;
  cambio := true;
end;

procedure TfmMatriz.SetArchivoMatriz(const Value: string);
begin
  FArchivoMatriz := Value;
  Titulo := ExtractFileName(Value);
end;


procedure TfmMatriz.SetColumnaActual(const Value: Integer);
begin
  FColumnaActual := Value;
  StatusBar1.Panels[1].Text:= 'Columnas: ' + intToStr(Value);
end;

procedure TfmMatriz.SetEstadoMatriz(const Value: string);
begin
  FEstadoMatriz := Value;
  StatusBar1.Panels[2].Text := Value;
end;

procedure TfmMatriz.SetFilaActual(const Value: Integer);
begin
  FFilaActual := Value;
  StatusBar1.Panels[0].Text := 'Fila: ' + intToStr(Value);
end;

procedure TfmMatriz.SetTitulo(const Value: string);
begin
  Caption := SMatriz + ': ' + Value;
end;

procedure TfmMatriz.StringGrid1ExitCell(Sender: TJvStringGrid; AColumn, ARow: 
        Integer; const EditText: String);
begin
{ -- Intento de mejora por Ezequiel
  //  ShowMessage(StringGrid1.Cells[AColumn,ARow]+' '+EditText);
  if (StringGrid1.Cells[AColumn,ARow] <> '')  and (EditText <> '') then// (StringGrid1.Cells[ACol,ARow] <> EditText) then
  begin
    entorno.modificarCeldaMatriz(name, ARow+1, AColumn+1, EditText);
    refrescarMatriz;
  end;
}
end;

procedure TfmMatriz.StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer; 
        var CanSelect: Boolean);
begin
  FilaActual := ARow;
  ColumnaActual := ACol;
end;

procedure TfmMatriz.StringGrid1SetEditText(Sender: TObject; ACol, ARow: Integer;
        const Value: String);
begin
  {  if (StringGrid1.Cells[ACol,ARow] <> '')  and (value <> '') then// (StringGrid1.Cells[ACol,ARow] <> value) then
    begin
      entorno.modificarCeldaMatriz(name,ARow+1, ACol+1, StringGrid1.Cells[ACol,ARow]);
    end;
    StringGrid1.Options := StringGrid1.Options - [goEditing];}
  if not editando then
  try
    entorno.modificarCeldaMatriz(name, ARow+1, ACol+1, Value);
    cambio := true;
  finally
    refrescarMatriz;
  end;
end;

procedure TfmMatriz.ConfigurarPropiedades1Click(Sender: TObject);
begin
  configurarPropiedades;
end;

procedure TfmMatriz.EliminarColumna1Click(Sender: TObject);
begin
  eliminarColumna;
end;

procedure TfmMatriz.EliminarFila1Click(Sender: TObject);
begin
  eliminarFila;
end;

procedure TfmMatriz.Hola1Click(Sender: TObject);
begin
  insertarColumna;
end;

procedure TfmMatriz.InsertarFila1Click(Sender: TObject);
begin
  insertarFila;
end;

procedure TfmMatriz.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if cambio then
  begin
     if MessageDlg('El contenido de la matriz ha cambiado,'+#13+'¿Desea almacenarlo?',mtWarning, [mbYes, mbNo],0) = mrYes then
     begin
        guardarMatriz;
     end;
  end;
end;

function TfmMatriz.tieneRehacer: boolean;
begin
   result := (name <> '') and (entorno.tieneRehacerMatriz(name));
end;

function TfmMatriz.tieneDeshacer: boolean;
begin
   result := (name <> '') and (entorno.tieneDeshacerMatriz(name));
end;

procedure TfmMatriz.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
var
  i,
  cols,
  filas: integer;
begin
//   cols := 0;
//   for i := 0 to StringGrid1.ColCount do
//      cols := cols + StringGrid1.ColWidths[i];

//   if (cols >= NewWidth+90) then
//      Resize := True
//   else
//     Resize := false;

// StringGrid1.ClientHeight :=  StringGrid1.GridHeight;
// StringGrid1.ClientWidth := StringGrid1.GridWidth;
//   if NewWidth < StringGrid1.GridWidth then
//      Resize := true
//   else
//      Resize := False;

end;

procedure TfmMatriz.StringGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  editando := true and ((key > 47) or (key = 32) or (key = 8));
{ -- Intento de mejora por Ezequiel
  if key > 32 then
  begin
    StringGrid1.Options := StringGrid1.Options + [goEditing];
    cambio := true;
  end;
}
end;

procedure TfmMatriz.StringGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  editando := false;
{ -- Intento de mejora por Ezequiel
  StringGrid1.Options := StringGrid1.Options - [goEditing];
}
end;

procedure TfmMatriz.FormDestroy(Sender: TObject);
begin
  entorno.cerrarEstructura(name);
end;

procedure TfmMatriz.SetCambio(const Value: boolean);
begin
  if value then
  begin
    if not FCambio then
      caption := caption + ' *';
  end
  else
    caption := copy(caption, 1, pos(' *', caption));
  FCambio := Value;
end;

procedure TfmMatriz.imprimir;
procedure PrintGrid(sGrid: TStringGrid; sTitle: string);
var
  X1, X2: Integer;
  Y1, Y2: Integer;
  TmpI: Integer;
  F: Integer;
  TR: TRect;
begin
  Printer.Title := sTitle;
  Printer.BeginDoc;
  Printer.Canvas.Pen.Color  := 0;
  Printer.Canvas.Font.Name  := 'Times New Roman';
  Printer.Canvas.Font.Size  := 12;
  Printer.Canvas.Font.Style := [fsBold, fsUnderline];
  Printer.Canvas.TextOut(0, 100, Printer.Title);
  for F := 1 to sGrid.ColCount - 1 do 
  begin
    X1 := 0;
    for TmpI := 1 to (F - 1) do
      X1 := X1 + 5 * (sGrid.ColWidths[TmpI]);
    Y1 := 300;
    X2 := 0;
    for TmpI := 1 to F do
      X2 := X2 + 5 * (sGrid.ColWidths[TmpI]);
    Y2 := 450;
    TR := Rect(X1, Y1, X2 - 30, Y2);
    Printer.Canvas.Font.Style := [fsBold];
    Printer.Canvas.Font.Size := 7;
    Printer.Canvas.TextRect(TR, X1 + 50, 350, sGrid.Cells[F, 0]);
    Printer.Canvas.Font.Style := [];
    for TmpI := 1 to sGrid.RowCount - 1 do 
    begin
      Y1 := 150 * TmpI + 300;
      Y2 := 150 * (TmpI + 1) + 300;
      TR := Rect(X1, Y1, X2 - 30, Y2);
      Printer.Canvas.TextRect(TR, X1 + 50, Y1 + 50, sGrid.Cells[F, TmpI]);
    end;
  end;
  Printer.EndDoc;
end;
begin
  PrintGrid(StringGrid1,ArchivoMatriz);
end;

function TfmMatriz.estaSeleccionadoFilaoCol: boolean;
begin
  result := (StringGrid1.ColCount-1 = StringGrid1.Selection.Bottom - StringGrid1.Selection.Top) AND
  (StringGrid1.RowCount-1 <> StringGrid1.Selection.Right - StringGrid1.Selection.Left)
  OR ((StringGrid1.RowCount-1 = StringGrid1.Selection.Right - StringGrid1.Selection.Left) AND
    (StringGrid1.ColCount-1 <> StringGrid1.Selection.Bottom - StringGrid1.Selection.Top))
end;

procedure TfmMatriz.cortar;
begin
  if ((StringGrid1.ColCount-1 = StringGrid1.Selection.Bottom - StringGrid1.Selection.Top) AND
  (StringGrid1.RowCount-1 <> StringGrid1.Selection.Right - StringGrid1.Selection.Left)) AND (StringGrid1.ColCount <> 1) then
    eliminarColumna
  else
    if ((StringGrid1.RowCount-1 = StringGrid1.Selection.Right - StringGrid1.Selection.Left) AND
    (StringGrid1.ColCount-1 <> StringGrid1.Selection.Bottom - StringGrid1.Selection.Top)) AND (StringGrid1.RowCount <> 1)then
      eliminarFila
end;

end.

