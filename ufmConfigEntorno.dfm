object fmConfigEntorno: TfmConfigEntorno
  Left = 235
  Top = 240
  BorderStyle = bsSingle
  Caption = 'Configuraci'#243'n'
  ClientHeight = 374
  ClientWidth = 525
  Color = clBtnFace
  Constraints.MinHeight = 368
  Constraints.MinWidth = 432
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  DesignSize = (
    525
    374)
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 349
    Top = 341
    Width = 75
    Height = 25
    Anchors = [akRight]
    Caption = 'Aceptar'
    ModalResult = 1
    TabOrder = 0
  end
  object Button2: TButton
    Left = 437
    Top = 341
    Width = 75
    Height = 25
    Anchors = [akRight]
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 1
  end
  object PageControl1: TPageControl
    Left = 9
    Top = 8
    Width = 503
    Height = 329
    ActivePage = TabSheet1
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'General'
      DesignSize = (
        495
        301)
      object lbIdiomaEntorno: TLabel
        Left = 8
        Top = 80
        Width = 91
        Height = 13
        Caption = 'Idioma del Entorno:'
      end
      object Label2: TLabel
        Left = 8
        Top = 48
        Width = 114
        Height = 13
        Caption = 'Directorio de Algoritmos:'
      end
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 102
        Height = 13
        Caption = 'Directorio de Trabajo:'
      end
      object lvIdiomasDisponibles: TJvImageListBox
        Left = 128
        Top = 80
        Width = 352
        Height = 209
        Anchors = [akLeft, akTop, akRight, akBottom]
        DragMode = dmAutomatic
        Items = <>
        ImageHeight = 0
        ImageWidth = 0
        ButtonStyle = fsLighter
        Images = dmEntorno.ilIdiomasChicas
        ItemHeight = 17
        TabOrder = 0
      end
      object leDirTrabajo: TJvDirectoryEdit
        Left = 128
        Top = 12
        Width = 352
        Height = 21
        AcceptFiles = False
        ClipboardCommands = [caCopy, caCut, caPaste]
        DialogKind = dkWin32
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 1
      end
      object leDirAlg: TJvDirectoryEdit
        Left = 128
        Top = 44
        Width = 352
        Height = 21
        AcceptFiles = False
        ClipboardCommands = [caCopy, caCut, caPaste]
        DialogKind = dkWin32
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 2
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Procesamiento'
      ImageIndex = 1
      DesignSize = (
        495
        301)
      object Label5: TLabel
        Left = 13
        Top = 13
        Width = 163
        Height = 13
        Caption = 'Cantidad de procesadores locales:'
      end
      object listaSatelites: TListBox
        Left = 304
        Top = 16
        Width = 176
        Height = 241
        Anchors = [akLeft, akTop, akRight, akBottom]
        ItemHeight = 13
        Items.Strings = (
          '127.0.0.1')
        MultiSelect = True
        TabOrder = 0
      end
      object GroupBox1: TGroupBox
        Left = 10
        Top = 72
        Width = 279
        Height = 81
        Caption = 'Sat'#233'lite'
        TabOrder = 2
        object Label6: TLabel
          Left = 36
          Top = 24
          Width = 13
          Height = 13
          Caption = 'IP:'
        end
        object btnAgregar: TButton
          Left = 57
          Top = 48
          Width = 72
          Height = 25
          Action = aAgregar
          TabOrder = 1
        end
        object btnComprobar: TButton
          Left = 129
          Top = 48
          Width = 72
          Height = 25
          Action = aComprobar
          TabOrder = 0
        end
        object EIP: TJvIPAddress
          Left = 56
          Top = 20
          Width = 145
          Height = 21
          AddressValues.Address = 0
          AddressValues.Value1 = 0
          AddressValues.Value2 = 0
          AddressValues.Value3 = 0
          AddressValues.Value4 = 0
          ParentColor = False
          TabOrder = 2
          Text = '0.0.0.0'
        end
      end
      object btnQuitar: TButton
        Left = 405
        Top = 266
        Width = 75
        Height = 26
        Action = aQuitar
        Anchors = [akRight, akBottom]
        TabOrder = 1
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 160
        Width = 281
        Height = 89
        Caption = 'B'#250'squeda'
        TabOrder = 3
        object Label7: TLabel
          Left = 6
          Top = 24
          Width = 47
          Height = 13
          Caption = 'Desde IP:'
        end
        object Label8: TLabel
          Left = 30
          Top = 56
          Width = 22
          Height = 13
          Caption = 'a IP:'
        end
        object btnBuscar: TButton
          Left = 208
          Top = 32
          Width = 65
          Height = 25
          Action = aBuscar
          TabOrder = 0
        end
        object EIPDesde: TJvIPAddress
          Left = 56
          Top = 20
          Width = 145
          Height = 21
          AddressValues.Address = 0
          AddressValues.Value1 = 0
          AddressValues.Value2 = 0
          AddressValues.Value3 = 0
          AddressValues.Value4 = 0
          ParentColor = False
          TabOrder = 1
          Text = '0.0.0.0'
        end
        object EIPHasta: TJvIPAddress
          Left = 56
          Top = 52
          Width = 145
          Height = 21
          AddressValues.Address = 0
          AddressValues.Value1 = 0
          AddressValues.Value2 = 0
          AddressValues.Value3 = 0
          AddressValues.Value4 = 0
          ParentColor = False
          TabOrder = 2
          Text = '0.0.0.0'
        end
      end
      object cbSoloLocal: TCheckBox
        Left = 16
        Top = 40
        Width = 273
        Height = 17
        Caption = 'S'#243'lo procesar algoritmos en procesador local'
        Checked = True
        State = cbChecked
        TabOrder = 4
      end
      object ECantidadProcesadores: TJvValidateEdit
        Left = 189
        Top = 10
        Width = 49
        Height = 21
        Alignment = taLeftJustify
        CheckChars = '01234567890'
        CriticalPoints.CheckPoints = cpNone
        CriticalPoints.ColorAbove = clBlue
        CriticalPoints.ColorBelow = clRed
        EditText = '0'
        TabOrder = 5
        Text = '0'
        Value = 0
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Archivos'
      ImageIndex = 2
      object Label3: TLabel
        Left = 176
        Top = 264
        Width = 103
        Height = 13
        Caption = '%A: N'#250'mero de salida'
      end
      object Label4: TLabel
        Left = 24
        Top = 240
        Width = 59
        Height = 13
        Caption = '%N: Nombre'
      end
      object Label9: TLabel
        Left = 24
        Top = 264
        Width = 125
        Height = 13
        Caption = '%S: N'#250'mero de secuencia'
      end
      object Label10: TLabel
        Left = 176
        Top = 240
        Width = 99
        Height = 13
        Caption = '%P: N'#250'mero de paso'
      end
      object Label11: TLabel
        Left = 16
        Top = 8
        Width = 46
        Height = 13
        Caption = 'Formatos:'
      end
      object Label12: TLabel
        Left = 16
        Top = 192
        Width = 89
        Height = 13
        Caption = 'Agregar el formato:'
      end
      object EditNuevoFormato: TEdit
        Left = 16
        Top = 208
        Width = 441
        Height = 21
        TabOrder = 0
      end
      object lformatos: TListBox
        Left = 16
        Top = 24
        Width = 441
        Height = 137
        ItemHeight = 13
        Items.Strings = (
          '%N - Secuencia (%S) - Paso (%P) - Salida (%A)')
        TabOrder = 1
      end
      object Button7: TButton
        Left = 376
        Top = 248
        Width = 75
        Height = 25
        Caption = 'Agregar'
        TabOrder = 2
        OnClick = Button7Click
      end
      object Button8: TButton
        Left = 376
        Top = 168
        Width = 75
        Height = 25
        Caption = 'Eliminar'
        TabOrder = 3
        OnClick = Button8Click
      end
    end
  end
  object acciones: TActionList
    Left = 13
    Top = 320
    object aBuscar: TAction
      Caption = '&Buscar'
      OnExecute = aBuscarExecute
    end
    object aAgregar: TAction
      Caption = '&Agregar'
      OnExecute = aAgregarExecute
    end
    object aQuitar: TAction
      Caption = '&Quitar'
      OnExecute = aQuitarExecute
      OnUpdate = siSateliteSeleccionado
    end
    object aComprobar: TAction
      Caption = '&Comprobar'
    end
  end
end
