object fmImprimirImagen: TfmImprimirImagen
  Left = 273
  Top = 137
  BorderStyle = bsDialog
  Caption = 'Imprimir'
  ClientHeight = 426
  ClientWidth = 530
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbImpresora: TLabel
    Left = 16
    Top = 16
    Width = 49
    Height = 13
    Caption = 'Impre&sora:'
  end
  object lbCopias: TLabel
    Left = 16
    Top = 44
    Width = 35
    Height = 13
    Caption = '&Copias:'
  end
  object Preview: TJvPreviewControl
    Left = 16
    Top = 64
    Width = 281
    Height = 353
    TopRow = 0
    ScrollBars = ssNone
    HideScrollBars = True
    SelectedPage = -1
    BorderStyle = bsNone
    Color = clBtnFace
    DeviceInfo.ReferenceHandle = 0
    DeviceInfo.LogPixelsX = 300
    DeviceInfo.LogPixelsY = 300
    DeviceInfo.PhysicalWidth = 2480
    DeviceInfo.PhysicalHeight = 3507
    DeviceInfo.PageWidth = 2400
    DeviceInfo.PageHeight = 3281
    DeviceInfo.OffsetLeft = 40
    DeviceInfo.OffsetTop = 40
    DeviceInfo.OffsetRight = 40
    DeviceInfo.OffsetBottom = 40
    Options.HorzSpacing = 4
    Options.Rows = 1
    Options.Scale = 29
    Selection.Visible = False
    AutoSize = True
    BevelInner = bvLowered
    BevelOuter = bvNone
    ParentColor = False
    TabOrder = 0
  end
  object cbImpresora: TComboBox
    Left = 72
    Top = 12
    Width = 369
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Text = 'cbImpresora'
    OnChange = cbImpresoraChange
  end
  object udCopias: TUpDown
    Left = 113
    Top = 40
    Width = 16
    Height = 21
    Associate = txtCopias
    Min = 1
    Position = 1
    TabOrder = 2
  end
  object txtCopias: TEdit
    Left = 72
    Top = 40
    Width = 41
    Height = 21
    TabOrder = 3
    Text = '1'
    OnKeyUp = CambioTecla
  end
  object btnPropiedades: TButton
    Left = 448
    Top = 10
    Width = 75
    Height = 25
    Caption = 'P&ropiedades'
    TabOrder = 4
    OnClick = btnPropiedadesClick
  end
  object btnAceptar: TButton
    Left = 360
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Aceptar'
    ModalResult = 1
    TabOrder = 5
  end
  object btnCancelar: TButton
    Left = 448
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 6
  end
  object gbPosicion: TGroupBox
    Left = 314
    Top = 56
    Width = 209
    Height = 89
    Caption = 'Posici'#243'n:'
    TabOrder = 7
    object lbArriba: TLabel
      Left = 8
      Top = 24
      Width = 30
      Height = 13
      Caption = '&Arriba:'
    end
    object lbIzquierda: TLabel
      Left = 8
      Top = 56
      Width = 46
      Height = 13
      Caption = 'I&zquierda:'
    end
    object lbPixel1: TLabel
      Left = 108
      Top = 24
      Width = 26
      Height = 13
      Caption = 'pixels'
    end
    object lbPixel2: TLabel
      Left = 108
      Top = 56
      Width = 26
      Height = 13
      Caption = 'pixels'
    end
    object txtArriba: TEdit
      Left = 56
      Top = 20
      Width = 33
      Height = 21
      TabOrder = 0
      Text = '0'
      OnKeyUp = CambioTecla
    end
    object txtIzquierda: TEdit
      Left = 56
      Top = 52
      Width = 33
      Height = 21
      TabOrder = 1
      Text = '0'
      OnKeyUp = CambioTecla
    end
    object btnCentrar: TButton
      Left = 144
      Top = 34
      Width = 51
      Height = 25
      Caption = 'Ce&ntrar'
      TabOrder = 2
      OnClick = btnCentrarClick
    end
    object udArriba: TUpDown
      Left = 89
      Top = 20
      Width = 16
      Height = 21
      Associate = txtArriba
      TabOrder = 3
      OnClick = Cambio
    end
    object udIzquierda: TUpDown
      Left = 89
      Top = 52
      Width = 16
      Height = 21
      Associate = txtIzquierda
      TabOrder = 4
      OnClick = Cambio
    end
  end
  object gbTamano: TGroupBox
    Left = 314
    Top = 152
    Width = 209
    Height = 145
    Caption = 'Tama'#241'o:'
    TabOrder = 8
    object lbAncho: TLabel
      Left = 8
      Top = 32
      Width = 34
      Height = 13
      Caption = 'Anc&ho:'
    end
    object lbAlto: TLabel
      Left = 8
      Top = 64
      Width = 21
      Height = 13
      Caption = 'Alt&o:'
    end
    object lbPixel3: TLabel
      Left = 108
      Top = 32
      Width = 26
      Height = 13
      Caption = 'pixels'
    end
    object lbPixel4: TLabel
      Left = 108
      Top = 64
      Width = 26
      Height = 13
      Caption = 'pixels'
    end
    object lbPorcentaje1: TLabel
      Left = 188
      Top = 32
      Width = 8
      Height = 13
      Caption = '%'
      Enabled = False
    end
    object lbPorcentaje2: TLabel
      Left = 188
      Top = 64
      Width = 8
      Height = 13
      Caption = '%'
      Enabled = False
    end
    object txtAncho: TEdit
      Left = 56
      Top = 28
      Width = 33
      Height = 21
      TabOrder = 0
      Text = '100'
      OnKeyUp = CambioTecla
    end
    object udAncho: TUpDown
      Left = 89
      Top = 28
      Width = 16
      Height = 21
      Associate = txtAncho
      Position = 100
      TabOrder = 1
      OnClick = Cambio
    end
    object txtAlto: TEdit
      Left = 56
      Top = 60
      Width = 33
      Height = 21
      TabOrder = 2
      Text = '0'
      OnKeyUp = CambioTecla
    end
    object udAlto: TUpDown
      Left = 89
      Top = 60
      Width = 16
      Height = 21
      Associate = txtAlto
      TabOrder = 3
      OnClick = Cambio
    end
    object txtZoomAncho: TEdit
      Left = 144
      Top = 28
      Width = 25
      Height = 21
      Enabled = False
      TabOrder = 4
      Text = '100'
    end
    object udZoomAncho: TUpDown
      Left = 169
      Top = 28
      Width = 16
      Height = 21
      Associate = txtZoomAncho
      Enabled = False
      Position = 100
      TabOrder = 5
    end
    object txtZoomAlto: TEdit
      Left = 144
      Top = 60
      Width = 25
      Height = 21
      Enabled = False
      TabOrder = 6
      Text = '100'
    end
    object udZoomAlto: TUpDown
      Left = 169
      Top = 60
      Width = 16
      Height = 21
      Associate = txtZoomAlto
      Enabled = False
      Position = 100
      TabOrder = 7
    end
    object ckDistorsion: TCheckBox
      Left = 8
      Top = 96
      Width = 193
      Height = 17
      Caption = 'Permitir Distorsi'#243'n'
      TabOrder = 8
    end
    object ckAjustarAPagina: TCheckBox
      Left = 8
      Top = 120
      Width = 193
      Height = 17
      Caption = 'Ajustar a P'#225'gina'
      TabOrder = 9
    end
  end
  object JvPreviewRenderGraphics1: TJvPreviewRenderGraphics
    PrintPreview = Preview
    Images = <>
    Left = 160
    Top = 32
  end
  object configurarImpresora: TPrinterSetupDialog
    Left = 224
    Top = 32
  end
  object PrintDialog1: TPrintDialog
    Left = 264
    Top = 32
  end
end
