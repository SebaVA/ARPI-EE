object fmThreads: TfmThreads
  Left = 438
  Top = 382
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Hilos de ejecuci'#243'n'
  ClientHeight = 292
  ClientWidth = 436
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDefault
  DesignSize = (
    436
    292)
  PixelsPerInch = 96
  TextHeight = 13
  object ListBox1: TListBox
    Left = 8
    Top = 8
    Width = 417
    Height = 241
    Anchors = [akLeft, akTop, akRight, akBottom]
    ItemHeight = 13
    TabOrder = 0
  end
  object Button1: TButton
    Left = 346
    Top = 260
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Borrar'
    TabOrder = 1
    OnClick = Button1Click
  end
end
