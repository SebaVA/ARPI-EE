unit ufmImprimirImagen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, JvComponent, JvPrvwRender, JvExControls,
  JvPrvwDoc, JvBaseDlg, JvPageSetup, Mask;

type
  TfmImprimirImagen = class(TForm)
    Preview: TJvPreviewControl;
    cbImpresora: TComboBox;
    lbImpresora: TLabel;
    lbCopias: TLabel;
    udCopias: TUpDown;
    txtCopias: TEdit;
    btnPropiedades: TButton;
    btnAceptar: TButton;
    btnCancelar: TButton;
    gbPosicion: TGroupBox;
    lbArriba: TLabel;
    lbIzquierda: TLabel;
    gbTamano: TGroupBox;
    lbAncho: TLabel;
    lbAlto: TLabel;
    txtArriba: TEdit;
    txtIzquierda: TEdit;
    btnCentrar: TButton;
    lbPixel1: TLabel;
    lbPixel2: TLabel;
    udArriba: TUpDown;
    udIzquierda: TUpDown;
    txtAncho: TEdit;
    udAncho: TUpDown;
    lbPixel3: TLabel;
    txtAlto: TEdit;
    udAlto: TUpDown;
    lbPixel4: TLabel;
    txtZoomAncho: TEdit;
    udZoomAncho: TUpDown;
    lbPorcentaje1: TLabel;
    txtZoomAlto: TEdit;
    udZoomAlto: TUpDown;
    lbPorcentaje2: TLabel;
    JvPreviewRenderGraphics1: TJvPreviewRenderGraphics;
    configurarImpresora: TPrinterSetupDialog;
    ckDistorsion: TCheckBox;
    ckAjustarAPagina: TCheckBox;
    PrintDialog1: TPrintDialog;
    procedure FormCreate(Sender: TObject);
    procedure btnPropiedadesClick(Sender: TObject);
    procedure cbImpresoraChange(Sender: TObject);
    procedure Cambio(Sender: TObject; Button: TUDBtnType);
    procedure CambioTecla(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCentrarClick(Sender: TObject);
  private
    procedure SetTamanos;
    procedure Actualizar;
  public
    function Execute: Boolean;
  end;

var
  fmImprimirImagen: TfmImprimirImagen;

implementation

uses Printers, WinSpool, gnugettext;
{$R *.dfm}


function TfmImprimirImagen.Execute: Boolean;
var
  jp : TJvPreviewPrinter;
    iFromLeftMargin    :  INTEGER;
    iPrintedImageWidth :  INTEGER;
    jDelta             :  INTEGER;
    jFromTopOfPage     :  INTEGER;
    jPrintedImageHeight:  INTEGER;
    s                  :  STRING;
    BitmapPrint: TBitmap;

  ////////////////////////////////////////////////////////////////////
  //
  //  Utility routines used below in Click method
  //

  // Based on posting to borland.public.delphi.winapi by Rodney E Geraghty, 8/8/97.
  // Used to print bitmap on any Windows printer.

  PROCEDURE PrintBitmap(Canvas:  TCanvas; DestRect:  TRect;  Bitmap:  TBitmap);
    VAR
      BitmapHeader:  pBitmapInfo;
      BitmapImage :  POINTER;
      HeaderSize  :  DWORD;    // Use DWORD for D3-D5 compatibility
      ImageSize   :  DWORD;
  BEGIN
    GetDIBSizes(Bitmap.Handle, HeaderSize, ImageSize);
    GetMem(BitmapHeader, HeaderSize);
    GetMem(BitmapImage,  ImageSize);
    TRY
      GetDIB(Bitmap.Handle, Bitmap.Palette, BitmapHeader^, BitmapImage^);
      StretchDIBits(Canvas.Handle,
                    DestRect.Left, DestRect.Top,     // Destination Origin
                    DestRect.Right  - DestRect.Left, // Destination Width
                    DestRect.Bottom - DestRect.Top,  // Destination Height
                    0, 0,                            // Source Origin
                    Bitmap.Width, Bitmap.Height,     // Source Width & Height
                    BitmapImage,
                    TBitmapInfo(BitmapHeader^),
                    DIB_RGB_COLORS,
                    SRCCOPY)
    FINALLY
      FreeMem(BitmapHeader);
      FreeMem(BitmapImage)
    END
  END {PrintBitmap};
begin
  cbImpresora.Items.Assign(Printer.Printers);
  cbImpresora.ItemIndex := Printer.PrinterIndex;
  cbImpresoraChange(self);

  udAncho.Position := JvPreviewRenderGraphics1.Images.Items[0].Picture.Width;
  udAlto.Position := JvPreviewRenderGraphics1.Images.Items[0].Picture.Height;
  Actualizar;

  JvPreviewRenderGraphics1.Images.Items[0].Proportional := false;
  JvPreviewRenderGraphics1.Images.Items[0].Stretch := true;
  JvPreviewRenderGraphics1.Images.Items[0].Center := false;
  JvPreviewRenderGraphics1.CreatePreview(false);
  result := Showmodal = mrOk;
  if result then
  begin
    BitmapPrint := TBitmap.Create;
    BitmapPrint.Assign(JvPreviewRenderGraphics1.Images[0].Picture.Bitmap);
    BitmapPrint.PixelFormat := pf24bit;
    Screen.Cursor := crHourGlass;
    try
      Printer.BeginDoc;

      with preview.DeviceInfo do
      PrintBitmap (Printer.Canvas,
                   Rect(OffsetLeft, OffsetTop,
                        OffsetLeft + udAncho.Position,
                        OffsetTop  + udAlto.Position),
                   BitmapPrint);

      Printer.EndDoc
    finally
      Screen.Cursor := crDefault
    end;
  end;
end;

procedure TfmImprimirImagen.FormCreate(Sender: TObject);
begin
  TranslateComponent(self);
end;

procedure TfmImprimirImagen.btnPropiedadesClick(Sender: TObject);
begin
  Printer.PrinterIndex := cbImpresora.ItemIndex;
  configurarImpresora.Execute;
  cbImpresora.ItemIndex := Printer.PrinterIndex;
  SetTamanos;
end;

procedure TfmImprimirImagen.SetTamanos;
begin
  preview.DeviceInfo.ReferenceHandle := Printer.Handle;
  Actualizar;
end;

procedure TfmImprimirImagen.Actualizar;
begin

  udArriba.Min := 0;
  udArriba.Max := preview.DeviceInfo.PageHeight - udAlto.Position;
  udArriba.Increment := udArriba.Max div 100;

  udAlto.Min := 1;
  udAlto.Max := preview.DeviceInfo.PageHeight - udArriba.Position;
  udAlto.Increment := udAlto.Max div 100;

  udIzquierda.Min := 0;
  udIzquierda.Max := preview.DeviceInfo.PageWidth - udAncho.Position;
  udIzquierda.Increment := udIzquierda.Max div 100;

  udAncho.Min := 1;
  udAncho.Max := preview.DeviceInfo.PageWidth - udIzquierda.Position;
  udAncho.Increment := udAncho.Max div 100;

  with preview.DeviceInfo do
  begin
    OffsetLeft := udIzquierda.Position + MMToXPx(5);
    OffsetRight := PageWidth - MMToXPx(5) - udAncho.Position - OffsetLeft;
    OffsetTop := udArriba.Position + MMToXPx(5);
    OffsetBottom := PageHeight - MMToXPx(5) - udAlto.Position - OffsetTop;
  end;
end;

procedure TfmImprimirImagen.cbImpresoraChange(Sender: TObject);
begin
  Printer.PrinterIndex:= cbImpresora.ItemIndex;
  SetTamanos;
end;

procedure TfmImprimirImagen.Cambio(Sender: TObject;
  Button: TUDBtnType);
begin
  Actualizar;
end;

procedure TfmImprimirImagen.CambioTecla(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if StrToIntDef(TEdit(Sender).Text, -1 ) = -1 then
    TEdit(Sender).Undo
  else
    Actualizar;
end;

procedure TfmImprimirImagen.btnCentrarClick(Sender: TObject);
begin
  udArriba.Position := (preview.DeviceInfo.PageHeight - udAlto.Position) div 2;
  udIzquierda.Position := (preview.DeviceInfo.PageWidth - udAncho.Position) div 2;
end;

end.

