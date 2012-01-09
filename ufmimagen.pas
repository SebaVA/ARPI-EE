unit ufmImagen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ImgList, ComCtrls, ToolWin, StdCtrls, Buttons,
  GR32_Image, Types,GR32, GR32_RangeBars, GR32_Filters, GR32_Transforms ,
  GR32_Layers, GR32_Polygons,Menus, utipos, uportapapeles, ufmMatricesImagen,
  uCommon;

type
  RSeleccion = record
    xi,yi,xf,yf:integer;
  end;
  
  PPuntoPoligono = ^RpuntoPoligono;

  ArregloPuntos = array of TPoint;

  RPuntoPoligono = record
    X,Y:integer;
    siguiente: PpuntoPoligono;
  end;

  RSeleccion2 = record
    Rectangulo: TRect;
    TipoSel: byte; // 1 cuadrada, 2 circular
  end;

  TSelecArray = class (TObject)
  protected
    Lista: array [1..10]of RSeleccion2;
    Cantidad: byte;
  public
    constructor Create();
    destructor Destroy();
    procedure Add(Rectangulo: RSeleccion; tipo:byte);
    function GetItem(posicion:byte):RSeleccion2;
    procedure dibujar(canvas: TCanvas);
  published
    property Count:byte read Cantidad;
  end;

  Poligono = class (tobject)
  private
    puntos: PPuntoPoligono;
    count:byte;
  public
    constructor Create();
    destructor Destroy();
    procedure Add(punto:TPoint);
    function GetArray:ArregloPuntos;
    function GetRectanguloSeleccion: TRect;
    procedure BorrarArreglo;
  end;

  TfmImagen = class (TForm)
    Circular1: TMenuItem;
    Cuadrada1: TMenuItem;
    DDMZoom: TPopupMenu;
    Image1: TImgView32;
    Imagenes: TImageList;
    N1: TMenuItem;
    N111: TMenuItem;
    N121: TMenuItem;
    N211: TMenuItem;
    Otro1: TMenuItem;
    Panel1: TPanel;
    popSelect: TPopupMenu;
    StBarImg: TStatusBar;
    BitmapList: TBitmap32List;
    function SeleccionPoligonal:boolean;
    procedure BorrarSelecPol();
    procedure btDeshacerClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton; Shift:
            TShiftState; X, Y: Integer; Layer: TCustomLayer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X, Y:
            Integer; Layer: TCustomLayer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton; Shift:
            TShiftState; X, Y: Integer; Layer: TCustomLayer);
    procedure mnFlattenClick(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure MostrarMatrices;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    Polygon: Poligono;
    FSelection: TPositionedLayer;
    imagenmdi: string;
    procedure SetSelection(Value: TPositionedLayer);
    procedure Draw;
    function ComparePalette(Original,Pegada: ARPIImagen):boolean;
  protected
    RBLayer: TRubberbandLayer;
    procedure LayerMouseDown(Sender: TObject; Buttons: TMouseButton; Shift:
            TShiftState; X, Y: Integer);
    procedure RBResizing(Sender: TObject; const OldLocation: TFloatRect; var
            NewLocation: TFloatRect; DragState: TDragState; Shift: TShiftState);
  published
    property Selection: TPositionedLayer read FSelection write SetSelection;
    property nombreArchivo:string read imagenmdi write imagenmdi;
  public
    TSeleccion: byte; // 0 = noSelect 1= cuadrada, 2= Circular, 3= polinomica
  end;

var
  fmImagen: TfmImagen;
  Seleccion: RSeleccion;
  SeleccionStart: Boolean;
  MultiSelect: Boolean;
  Selecciones: TSelecArray;

implementation
uses uFmPrincipal, ufmzoomimg, Clipbrd, Math, GR32_LowLevel, Printers;
{$R *.dfm}

{
********************************** TfrmImagen **********************************
}
procedure TfmImagen.BorrarSelecPol;
begin
  freeandnil(Polygon);
  Polygon:= Poligono.Create;
end;

procedure TfmImagen.btDeshacerClick(Sender: TObject);
begin
  entorno.deshacerImagen(imagenmdi);
  image1.Bitmap:=entorno.getValorImagen(name)//.getValor;
end;

procedure TfmImagen.Draw;
begin
  Image1.Refresh;// fuerzo repaint para evitar sobreposicion
  image1.Canvas.Pen.Style := psDot;
  image1.Canvas.Pen.Color:= clBlack;
  image1.Canvas.Pen.Width:=1;
  image1.Canvas.Polyline(Polygon.GetArray);
end;

function TfmImagen.ComparePalette(Original,Pegada: ARPIImagen):boolean;
var
  i:byte;
  Respuesta:boolean;
begin
  Respuesta:= true;
  for i:= 0 to 255 do
    if not((original.Paleta[i].rgbBlue = Pegada.Paleta[i].rgbBlue) and
        (original.Paleta[i].rgbGreen = Pegada.Paleta[i].rgbGreen) and
        (original.Paleta[i].rgbRed = Pegada.Paleta[i].rgbRed)) then
   begin
    Respuesta:= False;
    Break;
   end;
   result:= Respuesta;
end;

procedure TfmImagen.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  entorno.quitarImagen(imagenmdi);
  entorno.cerrarEstructura(name);
  self.Free;
end;

procedure TfmImagen.FormCreate(Sender: TObject);
begin
  MultiSelect  := False;
  SeleccionStart := False;
  Polygon := Poligono.Create;
  Selecciones:= TSelecArray.Create;
end;

procedure TfmImagen.FormResize(Sender: TObject);
begin
  if self.Width < Image1.Width then
    self.VertScrollBar.Tracking:= true;
end;

procedure TfmImagen.Image1MouseDown(Sender: TObject; Button: TMouseButton;
        Shift: TShiftState; X, Y: Integer; Layer: TCustomLayer);
var
  presionada: Char;
  imaux32: Tbitmap32;
  imagenauxiliar: Timagen;
  imaux:TImgView32;
begin
  if (Button = mbLeft) then
  begin
    if not MultiSelect then
      Image1.Bitmap.Assign(entorno.getValorImagen(Name));
    if Tseleccion > 0 then
      SeleccionStart:=True;
    If Tseleccion <> 3 then
    begin
      seleccion.xi:= X;
      seleccion.yi:= Y
    end
    else
    begin
      Polygon.Add(point(X, Y));
    end;
  end
  else if (Button = mbRight) then
  begin
    if SeleccionStart then
    begin// poligono, aca terminamos seleccion y mandamos los datos.
      SeleccionStart:= False;
      Tseleccion := 0;
      imaux := TImgView32.Create(self);
      imaux.ParentWindow := self.Handle;
      imaux.Bitmap.Height:= image1.Bitmap.Height;
      imaux.Bitmap.Width:= image1.Bitmap.Width;
      with imaux.Bitmap.Canvas do
      begin
        Pen.Style := psSolid;
        Pen.Color:= clWhite;
        Pen.Width:=1;
        Brush.Color:=clWhite;
        Polygon(self.Polygon.GetArray);
      end;
      Timagen(entorno.getImagen(name)).setSeleccion(self.Polygon.GetRectanguloSeleccion,imaux,MultiSelect);
      FreeAndNil(imaux);
    end
    else
    begin// ya se tiene la seleccion. es de pegar.
      if Image1.Layers.Count <> 0 then //DONE: Funciona Solo si Estoy PEGANDO!!! Eze tenias Razón Bug mio.
      begin
        entorno.pegarImagen(name,Point(Self.Selection.Location.TopLeft));
        mnFlattenClick(sender);
        image1.Bitmap.Clear;
        Image1.Bitmap:= entorno.getValorImagen(name);//.getValor;
        fmPrincipal.tbPaste.Enabled:=true;
      end;
    end;
  end;
end;

procedure TfmImagen.Image1MouseMove(Sender: TObject; Shift: TShiftState; X, Y:
        Integer; Layer: TCustomLayer);
var
  rectangulo: Trect;
begin
  if SeleccionStart then
    begin
    Image1.Invalidate;
    seleccion.xf:= X;
    seleccion.yf:= Y;
    with seleccion do
    begin
      if xi < xf then
      begin
        rectangulo.Left := xi;
        rectangulo.Right := xf;
      end
      else
      begin
        rectangulo.Left := xf;
        rectangulo.Right := xi;
      end;
      if yi < yf then
      begin
        rectangulo.Top := yi;
        rectangulo.Bottom := yf;
      end
      else
      begin
        rectangulo.Top := yf;
        rectangulo.Bottom := yi;
      end;
    end;
    case Tseleccion of
      1:  with image1.Canvas do
          begin
            Pen.Style := psSolid;
            Pen.Color:= clBlack;
            Pen.Width:=2;
            Polyline([rectangulo.TopLeft,Point(rectangulo.right,rectangulo.Top),
            rectangulo.bottomright, Point(rectangulo.Left,rectangulo.Bottom),rectangulo.TopLeft]);
          end;
      2:  with image1.Canvas do
          begin
            Pen.Style := psSolid;
            Pen.Color:= clBlack;
            Pen.Width:=2;
            arc(rectangulo.left,rectangulo.top,rectangulo.right,rectangulo.bottom,rectangulo.left,rectangulo.top,
            rectangulo.left,rectangulo.top);
          end;
      3: begin
          Draw;
         end;
      0:  ;
      else
      end;
  end;
end;

procedure TfmImagen.Image1MouseUp(Sender: TObject; Button: TMouseButton;
        Shift: TShiftState; X, Y: Integer; Layer: TCustomLayer);
var
  rectangulo: Trect;
  imaux:TImgView32;
  i:byte;
  selecAux:RSeleccion2;
  TselecDraw: byte;
begin
  if (button = mbleft) then
  begin
//----- chequear que no se vayan de la imagen
    if X > Image1.getBitmapRect.Right then
      seleccion.xf:= Image1.getBitmapRect.Right+1
    else
      if X < Image1.getBitmapRect.Left then
       seleccion.xf:= Image1.getBitmapRect.Left+1
      else
        seleccion.xf:= X;
    if Y > Image1.getBitmapRect.Bottom then
      seleccion.yf:= Image1.getBitmapRect.Bottom+1
    else
      if Y < Image1.getBitmapRect.Top then
       seleccion.yf:= Image1.getBitmapRect.Top+1
      else
        seleccion.yf:= Y;
//----- chequear que no se vayan de la imagen

    with seleccion do
    begin
      if xi < xf then
      begin
        rectangulo.Left := xi;
        rectangulo.Right := xf;
      end
      else
      begin
        rectangulo.Left := xf;
        rectangulo.Right := xi;
      end;
      if yi < yf then
      begin
        rectangulo.Top := yi;
        rectangulo.Bottom := yf;
      end
      else
      begin
        rectangulo.Top := yf;
        rectangulo.Bottom := yi;
      end;
    end;
    Seleccion.xi:= round((rectangulo.Left-Image1.getBitmapRect.Left)/ Image1.Scale);
    Seleccion.xf:= round((rectangulo.Right-Image1.getBitmapRect.Left)/ Image1.Scale);
    Seleccion.yi:= round((rectangulo.Top-Image1.getBitmapRect.Top)/ Image1.Scale);
    Seleccion.yf:= round((rectangulo.Bottom-Image1.getBitmapRect.Top)/ Image1.Scale);
// ------------------ Multi Seleccion --------------
    if MultiSelect then
    begin
      if Selecciones = nil then
        Selecciones:=TSelecArray.Create;
      Selecciones.Add(Seleccion,TSeleccion);
    end
    else
    begin // no multiselect
      if Selecciones <> nil then
        FreeAndNil(Selecciones);
      Selecciones:=TSelecArray.Create;// logro que solo haya 1 seleccion en el objeto
      Selecciones.Add(Seleccion,TSeleccion);
    end;
// ------------------ Multi Seleccion --------------
        case TSeleccion of
          1:  begin
                SeleccionStart:=false;
                with image1.Canvas do
                begin
                  rectangulo.Left:= round((rectangulo.Left-Image1.getBitmapRect.Left)/ Image1.Scale);
                  rectangulo.Right:= round((rectangulo.Right-Image1.getBitmapRect.Left)/ Image1.Scale);
                  rectangulo.Top:= round((rectangulo.Top-Image1.getBitmapRect.Top)/ Image1.Scale);
                  rectangulo.Bottom:= round((rectangulo.Bottom-Image1.getBitmapRect.Top)/ Image1.Scale);
                  Timagen(entorno.getImagen(name)).setSeleccion(Tseleccion,rectangulo,MultiSelect);
                end;
              end;
          2:  begin
                SeleccionStart:=false;
                with image1.Canvas do
                begin
                  rectangulo.Left:= round((rectangulo.Left-Image1.getBitmapRect.Left)/ Image1.Scale);
                  rectangulo.Right:= round((rectangulo.Right-Image1.getBitmapRect.Left)/ Image1.Scale);
                  rectangulo.Top:= round((rectangulo.Top-Image1.getBitmapRect.Top)/ Image1.Scale);
                  rectangulo.Bottom:= round((rectangulo.Bottom-Image1.getBitmapRect.Top)/ Image1.Scale);
                  imaux := TImgView32.Create(self);
                  imaux.ParentWindow := self.Handle;
                  imaux.Bitmap.Height:= image1.Bitmap.Height;
                  imaux.Bitmap.Width:= image1.Bitmap.Width;
                  with imaux.Bitmap.Canvas do
                  begin
                  Pen.Style := psDot;
                  Pen.Color:= clWhite;
                  Pen.Width:=1;
                  Brush.Color:=clWhite;
                  Ellipse(rectangulo.left,rectangulo.top,rectangulo.right,rectangulo.bottom);
                  end;
                  Timagen(entorno.getImagen(name)).setSeleccion(rectangulo,imaux,MultiSelect);
                  FreeAndNil(imaux);
                end;
              end;
          0:  ;
          else
          begin
          end;
        end;
        Selecciones.dibujar(Image1.bitmap.Canvas);
      end;
end;

procedure TfmImagen.LayerMouseDown(Sender: TObject; Buttons: TMouseButton;
        Shift: TShiftState; X, Y: Integer);
begin
  if Sender <> nil then Selection := TPositionedLayer(Sender);
end;

procedure TfmImagen.mnFlattenClick(Sender: TObject);
var
  B: TBitmap32;
  W, H: Integer;
begin
  Selection := nil;
  W := Image1.Bitmap.Width;
  H := Image1.Bitmap.Height;

  B := TBitmap32.Create;
  try
    B.SetSize(W, H);
    Image1.PaintTo(B, Rect(0, 0, W, H));

    Image1.Layers.Clear;
    RBLayer := nil;
    Image1.Bitmap := B;
  finally
    B.Free;
  end;
end;

procedure TfmImagen.RBResizing(Sender: TObject; const OldLocation: TFloatRect;
        var NewLocation: TFloatRect; DragState: TDragState; Shift: TShiftState);
var
  w, h, cx, cy: Single;
  nw, nh: Single;
begin
  if DragState = dsMove then Exit;
  if Shift = [] then Exit;

  if ssCtrl in Shift then
  begin
    with OldLocation do
    begin
      cx := (Left + Right) / 2;
      cy := (Top + Bottom) / 2;
      w := Right - Left;
      h := Bottom - Top;
    end;

    with NewLocation do
    begin
      nw := w / 2;
      nh := h / 2;
      case DragState of
        dsSizeL: nw := cx - Left;
        dsSizeT: nh := cy - Top;
        dsSizeR: nw := Right - cx;
        dsSizeB: nh := Bottom - cy;
        dsSizeTL: begin nw := cx - Left; nh := cy - Top; end;
        dsSizeTR: begin nw := Right - cx; nh := cy - Top; end;
        dsSizeBL: begin nw := cx - Left; nh := Bottom - cy; end;
        dsSizeBR: begin nw := Right - cx; nh := Bottom - cy; end;
      end;
      if nw < 2 then nw := 2;
      if nh < 2 then nh := 2;

      Left := cx - nw;
      Right := cx + nw;
      Top := cy - nh;
      Bottom := cy + nh;
    end;
  end;
end;

function TfmImagen.SeleccionPoligonal: boolean;
begin
  result:= (Polygon.puntos <> nil);
end;

procedure TfmImagen.SetSelection(Value: TPositionedLayer);
begin
  if Value <> FSelection then
  begin
    if RBLayer <> nil then
    begin
      RBLayer.ChildLayer := nil;
      RBLayer.LayerOptions := LOB_NO_UPDATE;
      Image1.Invalidate;
    end;

    FSelection := Value;

    if Value <> nil then
    begin
      if RBLayer = nil then
      begin
        RBLayer := TRubberBandLayer.Create(Image1.Layers);
        RBLayer.MinHeight := 1;
        RBLayer.MinWidth := 1;
      end
      else RBLayer.BringToFront;
      RBLayer.ChildLayer := Value;
      RBLayer.LayerOptions := LOB_VISIBLE or LOB_MOUSE_EVENTS or LOB_NO_UPDATE;
      RBLayer.OnResizing := RBResizing;

    end;
  end;


end;

procedure TfmImagen.ToolButton4Click(Sender: TObject);
begin
  entorno.copiarImagen(name);
end;

procedure TfmImagen.ToolButton5Click(Sender: TObject);
var
  puntvalor,pvaloraux:pARPIImagen;
  tmp: tbitmap32;
  bitaux: TBitmap;
  B: TBitmapLayer;
  P: TPoint;
  W, H: Single;
  ppales: Tportapapeles;
  i,j: integer;
begin
  if Clipboard.HasFormat(CF_BITMAP) then //DONE: Verificar que sea Bitmap el contenido del Clipboard
  begin
    ppales:= TPortapapeles.Instance;
    puntvalor:=timagen(ppales.getImagen).getPointer(nil);
    pvaloraux:=entorno.getImagenPointer(name);
    if not(ComparePalette(pvaloraux^,puntvalor^)) then
    begin
      if MessageDlg('Las Paletas no coinciden,'+chr(13)+chr(10)+'¿Desea Continuar?',mtInformation,[mbYes, mbNo], 0) = mrYes  then
      begin
          Tseleccion := 0;
          B := TBitmapLayer.Create(Image1.Layers);
          bitaux:= TBitmap.Create;
          bitaux.LoadFromClipboardFormat(cf_BitMap,ClipBoard.GetAsHandle(cf_Bitmap),0);

  // ******************** crear el bitmap de masteralpha************************

          tmp:= TBitmap32.Create;
          tmp.Height:=puntvalor^.Height;
          tmp.Width:=puntvalor^.Width;
        //  puntvalor^.Mascara
          for i:=0 to puntvalor^.Height-1 do
            for j:= 0 to puntvalor^.Width-1 do
              if puntvalor^.Mascara[i,j] = 0 then // masteralpha
                tmp.Pixel[j,i]:= clBlack32
              else
                tmp.Pixel[j,i]:= clWhite32;
          dispose(puntvalor); // liberar memoria del getpointer!!!!

  // ******************** crear el bitmap de masteralpha************************

          with B do
            try
              Bitmap.Assign(bitaux);
              IntensityToAlpha(b.Bitmap,tmp);
              Bitmap.DrawMode := dmBlend;
              with Image1.GetViewportRect do
              begin
                P := Image1.ControlToBitmap(Point((Right + Left) div 2,(Top + Bottom) div 2));
              end;
              W := Bitmap.Width / 2;
              H := Bitmap.Height / 2;

              with Image1.Bitmap do
                Location := FloatRect(P.X - W, P.Y - H, P.X + W, P.Y + H);

              Scaled := true;
              OnMouseDown := LayerMouseDown;
            except
              Free;
              raise;
            end;
            Selection := B;
            tmp.Free;
      end
    end
    else
    begin
        Tseleccion := 0;
        B := TBitmapLayer.Create(Image1.Layers);
        bitaux:= TBitmap.Create;
        bitaux.LoadFromClipboardFormat(cf_BitMap,ClipBoard.GetAsHandle(cf_Bitmap),0);

  // ******************** crear el bitmap de masteralpha************************

        tmp:= TBitmap32.Create;
        tmp.Height:=puntvalor^.Height;
        tmp.Width:=puntvalor^.Width;
        for i:=0 to puntvalor^.Height-1 do
          for j:= 0 to puntvalor^.Width-1 do
            if puntvalor^.Mascara[i,j] = 0 then // masteralpha
              tmp.Pixel[j,i]:= clBlack32
            else
              tmp.Pixel[j,i]:= clWhite32;
        dispose(puntvalor); // liberar memoria del getpointer!!!!

  // ******************** crear el bitmap de masteralpha************************

        with B do
          try
            Bitmap.Assign(bitaux);
            IntensityToAlpha(b.Bitmap,tmp);
            Bitmap.DrawMode := dmBlend;
            with Image1.GetViewportRect do
            begin
              P := Image1.ControlToBitmap(Point((Right + Left) div 2,(Top + Bottom) div 2));
            end;
            W := Bitmap.Width / 2;
            H := Bitmap.Height / 2;

              with Image1.Bitmap do
                Location := FloatRect((P.X - W), P.Y - H, P.X + W, P.Y + H);
              Scaled := True;
              OnMouseDown := LayerMouseDown;
            except
              Free;
              raise;
            end;
            Selection := B;
            tmp.Free;
    end;
  end;
end;

procedure TfmImagen.MostrarMatrices;
var
  puntvalor: pARPIImagen;
  i,j: integer;
  formulario: TfmMatricesImagen;
begin
  formulario:= TfmMatricesImagen.Create(self.Parent);
  formulario.paginas.ActivePage:= formulario.tsMatrizDatos;
  puntvalor:=entorno.getImagenPointer(name);//.getPointer(nil);// tengo los datos de la imagen
  formulario.MatrizGrid.ColCount:=puntvalor^.Width+1;
  formulario.MatrizGrid.RowCount:=puntvalor^.Height+1;
  for i:= 0 to 255 do
    formulario.MatrizPaleta.Cells[0,i+1]:= inttostr(i);
  formulario.MatrizPaleta.Cells[1,0]:= 'Azul';
  formulario.MatrizPaleta.Cells[2,0]:= 'Verde';
  formulario.MatrizPaleta.Cells[3,0]:= 'Rojo';
  for i:= 0 to puntvalor^.Height-1 do
    formulario.MatrizGrid.Cells[0,i+1]:= inttostr(i);
  for j:= 0 to puntvalor^.Width-1 do
    formulario.MatrizGrid.Cells[j+1,0]:= inttostr(j);
  for i:= 0 to puntvalor^.Height-1 do
    for j:= 0 to puntvalor^.Width-1 do
      formulario.MatrizGrid.Cells[j+1,i+1]:= inttostr(puntvalor^.Mdatos[i,j]);
  for i:= 0 to 255 do
  begin
    with formulario do
    begin
      MatrizPaleta.Cells[1,i+1]:= inttostr(puntvalor^.paleta[i].rgbBlue);
      MatrizPaleta.Cells[2,i+1]:= inttostr(puntvalor^.paleta[i].rgbGreen);
      MatrizPaleta.Cells[3,i+1]:= inttostr(puntvalor^.paleta[i].rgbRed);
    end;
  end;
end;



{ Poligono }

procedure Poligono.Add(punto: TPoint);
var
  auxiliar,aux: PPuntoPoligono;
begin
  count:= count+1;
  new(auxiliar);
  auxiliar^.X:= punto.X;
  auxiliar^.Y:= punto.Y;
  auxiliar^.siguiente:= nil;
  aux:= puntos;
  if aux = nil then
    puntos:= auxiliar
  else
  begin
    while aux.siguiente <> nil do
      aux:=aux.siguiente;
    aux.siguiente:= auxiliar;
  end;
end;

procedure Poligono.BorrarArreglo;
var
  auxiliar: PPuntoPoligono;
begin
  while puntos <> nil do
  begin
    auxiliar:= puntos.siguiente;
    dispose(puntos);
    puntos:= auxiliar;
  end;
end;

constructor Poligono.Create;
begin
  count:= 0;
  puntos:= nil;
end;

destructor Poligono.Destroy;
begin
  BorrarArreglo;
end;

function Poligono.GetArray: ArregloPuntos;
var
  auxiliar: PPuntoPoligono;
  arreglo:ArregloPuntos;
  i:byte;
begin
  SetLength(arreglo,count+1);
  auxiliar:=puntos;
  for i:= 0 to count -1 do
  begin
    arreglo[i].X:= auxiliar^.X;
    arreglo[i].Y:= auxiliar^.Y;
    auxiliar:= auxiliar^.siguiente;
  end;
  arreglo[count]:= point(puntos.X,puntos.Y);
  result := arreglo;
end;

function Poligono.GetRectanguloSeleccion: TRect;
var
  horizontal,vertical: array of integer;
  auxiliar: PPuntoPoligono;
  i:byte;
begin
  SetLength(horizontal,count);
  SetLength(vertical,count);
  auxiliar:=puntos;
  for i:= 0 to count -1 do
  begin
    horizontal[i]:= auxiliar^.X;
    vertical[i]:= auxiliar^.Y;
    auxiliar:= auxiliar^.siguiente;
  end;
    result := Rect(MinIntValue(horizontal), MinIntValue(vertical),
              MaxIntValue(horizontal), MaxIntValue(vertical));
end;



procedure TfmImagen.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 16 ) then
  begin
    MultiSelect := True;
    Image1.Cursor:= crDrag;
  end;
end;


procedure TfmImagen.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 16 ) then
  begin
    MultiSelect := false;
    Image1.Cursor:= crDefault;
  end;
end;

{ TSelecArray }

procedure TSelecArray.Add(Rectangulo: RSeleccion; tipo:byte);
begin
  inc(cantidad);
  Lista[cantidad].Rectangulo.Left:= Rectangulo.xi;
  Lista[cantidad].Rectangulo.Right:= Rectangulo.xf;
  Lista[cantidad].Rectangulo.Top:= Rectangulo.yi;
  Lista[cantidad].Rectangulo.Bottom:= Rectangulo.yf;
  Lista[cantidad].TipoSel:=tipo;
end;

constructor TSelecArray.Create;
begin
  Cantidad:= 0;
end;

destructor TSelecArray.Destroy;
begin

end;

procedure TSelecArray.dibujar(canvas: TCanvas);
var
  i:byte;
begin
 for i:= 1 to Cantidad do
 begin
   case Lista[i].TipoSel of
      1:  begin
            with Canvas do
            begin
              Pen.Style := psDot;
              Pen.Color:= clWhite;
              Pen.Width:=1;
              Brush.Color:=clNone;
                  Polyline([lista[i].rectangulo.TopLeft,Point(lista[i].rectangulo.right,lista[i].rectangulo.Top),
                  lista[i].rectangulo.bottomright, Point(lista[i].rectangulo.Left,lista[i].rectangulo.Bottom),lista[i].rectangulo.TopLeft]);
            end;
          end;
      2:  begin
            with Canvas do
            begin
              Pen.Style := psDot;
              Pen.Color:= clWhite;
              Pen.Width:=1;
              Brush.Color:=clNone;
                  arc(lista[i].rectangulo.left,lista[i].rectangulo.top,lista[i].rectangulo.right,lista[i].rectangulo.bottom,lista[i].rectangulo.left,lista[i].rectangulo.top,
                  lista[i].rectangulo.left,lista[i].rectangulo.top);
            end;
        end;
    0:  ;
    else
    begin
//            Draw;
    end;
  end;
 end;
end;

function TSelecArray.GetItem(posicion: byte): RSeleccion2;
begin
  result:= Lista[posicion];
end;


end.

