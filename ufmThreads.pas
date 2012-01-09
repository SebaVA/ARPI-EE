unit ufmThreads;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfmThreads = class (TForm)
    ListBox1: TListBox;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  public
    procedure AgregarSuceso(msg : string);
  end;
  
var
  fmThreads: TfmThreads;

implementation

{$R *.dfm}

{ TfmThreads }

{
********************************** TfmThreads **********************************
}
procedure TfmThreads.AgregarSuceso(msg : string);
begin
  ListBox1.AddItem(msg,nil);
end;

procedure TfmThreads.Button1Click(Sender: TObject);
begin
  ListBox1.Items.Clear;
end;

end.
