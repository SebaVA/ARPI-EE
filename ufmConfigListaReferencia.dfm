object fmConfigListaReferencia: TfmConfigListaReferencia
  Left = 155
  Top = 448
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Configuraci'#243'n de la Lista de Referencia'
  ClientHeight = 197
  ClientWidth = 341
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 64
    Top = 21
    Width = 63
    Height = 13
    Caption = 'Tipo de dato:'
  end
  object Button1: TButton
    Left = 168
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Aceptar'
    ModalResult = 1
    TabOrder = 0
  end
  object Button2: TButton
    Left = 256
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 136
    Top = 16
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = 'Seleccionar un tipo'
    OnSelect = ComboBox1Select
    Items.Strings = (
      'Enteros'
      'Im'#225'genes'
      'Texto')
  end
  object GroupBox1: TGroupBox
    Left = 26
    Top = 48
    Width = 289
    Height = 97
    Caption = 'Inicializaci'#243'n:'
    TabOrder = 3
    object Label1: TLabel
      Left = 114
      Top = 65
      Width = 56
      Height = 13
      Caption = 'Valor inicial:'
    end
    object Label2: TLabel
      Left = 19
      Top = 25
      Width = 140
      Height = 13
      Caption = 'Cantidad inicial de elementos:'
    end
    object Label4: TLabel
      Left = 8
      Top = 62
      Width = 68
      Height = 13
      Caption = 'Valor del dato:'
    end
    object ENroElementos: TJvValidateEdit
      Left = 176
      Top = 21
      Width = 81
      Height = 21
      CheckChars = '01234567890'
      CriticalPoints.CheckPoints = cpNone
      CriticalPoints.ColorAbove = clBlue
      CriticalPoints.ColorBelow = clRed
      EditText = '1'
      MaxValue = 1.000000000000000000
      MinValue = 1.000000000000000000
      TabOrder = 0
      Text = '1'
      Value = 1
    end
    object EValorInicial: TJvValidateEdit
      Left = 80
      Top = 58
      Width = 153
      Height = 21
      Alignment = taLeftJustify
      CriticalPoints.CheckPoints = cpNone
      CriticalPoints.ColorAbove = clBlue
      CriticalPoints.ColorBelow = clRed
      TrimDecimals = True
      DisplayFormat = dfNone
      EditText = '0'
      TabOrder = 1
      Text = '0'
      Value = '0'
    end
    object btnBrowse: TButton
      Left = 240
      Top = 56
      Width = 25
      Height = 25
      Caption = '...'
      TabOrder = 2
      OnClick = btnBrowseClick
    end
  end
  object JvOpenDialog1: TJvOpenDialog
    Filter = 'Matriz ARPI (*.amt)|*.amt'
    Height = 0
    Width = 0
    Left = 18
    Top = 160
  end
end
