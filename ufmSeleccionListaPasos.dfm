object fmSeleccionListaPaso: TfmSeleccionListaPaso
  Left = 266
  Top = 299
  Width = 453
  Height = 266
  Caption = #191'D'#243'nde?'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 56
    Height = 13
    Caption = 'Comentario:'
  end
  object Label2: TLabel
    Left = 8
    Top = 72
    Width = 71
    Height = 13
    Caption = 'Lista de pasos:'
  end
  object Edit1: TEdit
    Left = 83
    Top = 13
    Width = 313
    Height = 21
    TabOrder = 0
  end
  object ListBox1: TListBox
    Left = 84
    Top = 72
    Width = 313
    Height = 97
    ItemHeight = 13
    TabOrder = 1
  end
  object Button1: TButton
    Left = 264
    Top = 192
    Width = 75
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 2
  end
  object Button2: TButton
    Left = 352
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 3
  end
end
