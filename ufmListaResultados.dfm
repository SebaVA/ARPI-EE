object fmListaResultados: TfmListaResultados
  Left = 192
  Top = 110
  Width = 500
  Height = 437
  Caption = 'Listado de Resultados'
  Color = clBtnFace
  Constraints.MinWidth = 255
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    492
    403)
  PixelsPerInch = 96
  TextHeight = 13
  object btAceptar: TButton
    Left = 329
    Top = 373
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Aceptar'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object btCancelar: TButton
    Left = 409
    Top = 373
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = '&Cancelar'
    ModalResult = 2
    TabOrder = 2
  end
  object tvListaResultados: TTreeView
    Left = 8
    Top = 8
    Width = 476
    Height = 353
    Anchors = [akLeft, akTop, akRight, akBottom]
    HideSelection = False
    Indent = 19
    MultiSelect = True
    RowSelect = True
    TabOrder = 0
    OnChanging = tvListaResultadosChanging
  end
end
