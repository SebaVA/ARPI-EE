object fmEjecutarLP: TfmEjecutarLP
  Left = 466
  Top = 272
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Ejecutar Lista de Pasos'
  ClientHeight = 197
  ClientWidth = 348
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 9
    Top = 12
    Width = 79
    Height = 13
    Caption = 'Carpeta Destino:'
  end
  object Label2: TLabel
    Left = 48
    Top = 44
    Width = 40
    Height = 13
    Caption = 'Nombre:'
  end
  object Label3: TLabel
    Left = 48
    Top = 80
    Width = 41
    Height = 13
    Caption = 'Formato:'
  end
  object btnOK: TButton
    Left = 160
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Aceptar'
    ModalResult = 1
    TabOrder = 4
  end
  object btnCancel: TButton
    Left = 256
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 5
  end
  object EditDirectorioSalida: TJvDirectoryEdit
    Left = 96
    Top = 8
    Width = 241
    Height = 21
    DialogKind = dkWin32
    TabOrder = 0
  end
  object EditFormatoSalida: TJvValidateEdit
    Left = 96
    Top = 41
    Width = 121
    Height = 21
    Alignment = taLeftJustify
    CheckChars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789'
    CriticalPoints.CheckPoints = cpNone
    CriticalPoints.ColorAbove = clBlue
    CriticalPoints.ColorBelow = clRed
    DisplayFormat = dfAlphaNumeric
    EditText = 'Resultado'
    TabOrder = 1
    Text = 'Resultado'
    Value = 'Resultado'
  end
  object ComboBox1: TComboBox
    Left = 96
    Top = 77
    Width = 241
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = '%N - Secuencia(%S) - Paso(%P) - Salida(%A)'
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 112
    Width = 329
    Height = 41
    Caption = 'Utilizar s'#243'lo procesadores'
    TabOrder = 3
    object rbLocales: TRadioButton
      Left = 8
      Top = 16
      Width = 90
      Height = 17
      Hint = 'Ejecutar utilizando s'#243'lo los procesadores locales'
      Caption = 'Locales'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object rbRemotos: TRadioButton
      Tag = 1
      Left = 116
      Top = 16
      Width = 90
      Height = 17
      Hint = 'Ejecutar utilizando s'#243'lo los procesadores remotos (Sat'#233'lites)'
      Caption = 'Remotos'
      TabOrder = 1
    end
    object rbCualquiera: TRadioButton
      Tag = 2
      Left = 224
      Top = 16
      Width = 90
      Height = 17
      Hint = 'Utilizar cualquier procesador que se encuentre disponible'
      Caption = 'Cualquiera'
      TabOrder = 2
    end
  end
end
