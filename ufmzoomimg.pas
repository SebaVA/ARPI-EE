unit ufmzoomimg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvEdit, JvValidateEdit, JvExControls,
  gnugettext,JvComponent, JvxSlider;

type
  TfmZoomImg = class(TForm)
    BtnOK: TButton;
    VEditZoom: TJvValidateEdit;
    ZoomSlide: TJvxSlider;
    procedure BtnOKClick(Sender: TObject);
    procedure ZoomSlideChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  end;

var
  fmZoomImg: TfmZoomImg;

implementation

{$R *.dfm}
{
********************************* TfmZoomImg **********************************
}
procedure TfmZoomImg.BtnOKClick(Sender: TObject);
begin
  self.close;
end;

procedure TfmZoomImg.ZoomSlideChange(Sender: TObject);
begin
  VEditZoom.Value:= ZoomSlide.Value;
end;

procedure TfmZoomImg.FormCreate(Sender: TObject);
begin
  TranslateComponent(self);
end;

end.

