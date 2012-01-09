object fmListaReferencias: TfmListaReferencias
  Left = 365
  Top = 261
  Width = 543
  Height = 471
  Caption = 'Lista de referencias'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object jvLista: TJvStringGrid
    Left = 0
    Top = 0
    Width = 535
    Height = 425
    Align = alClient
    ColCount = 1
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
    PopupMenu = pmReferencias
    ScrollBars = ssVertical
    TabOrder = 0
    OnKeyDown = jvListaKeyDown
    OnKeyUp = jvListaKeyUp
    Alignment = taLeftJustify
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -11
    FixedFont.Name = 'MS Sans Serif'
    FixedFont.Style = []
    OnExitCell = jvListaExitCell
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 425
    Width = 535
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object pmReferencias: TPopupMenu
    Left = 280
    Top = 312
    object AgregarReferencia2: TMenuItem
      Action = aAgregarReferencia
      Hint = 'Insertar Referencia|Inserta una nueva referencia en la posici'#243'n'
    end
    object AgregarReferencia1: TMenuItem
      Action = aBorrarReferencia
      Hint = 'Borrar Referencia|Elimina la referencia'
    end
    object AgregarListaDeReferencia1: TMenuItem
      Action = aAgregarListaDeReferencia
      Hint = 
        'Agregar lista de referencia|Agrega una lista de referencias alma' +
        'cenada a la lista actual'
    end
    object EditarReferencia1: TMenuItem
      Action = aEditarReferencia
      Hint = 
        'Edita la referencia|Abre el cuadro de di'#225'logo para seleccionar u' +
        'na referencia a archivo'
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Mover1: TMenuItem
      Caption = 'Mover'
      object Arriba1: TMenuItem
        Action = aMoverArriba
        Hint = 'Mover hacia arriba|Mueve la referencia un lugar hacia arriba'
      end
      object Abajo1: TMenuItem
        Action = aMoverAbajo
        Hint = 'Mover hacia abajo|Mueve la referencia un lugar hacia abajo'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Principiodetodo1: TMenuItem
        Action = aMoverPrincipioDeTodo
        Hint = 'Mover al principio|Mueve la referencia al principio de la lista'
      end
      object Finaldetodo1: TMenuItem
        Action = aMoverFinalDeTodo
        Hint = 'Mover al final|Mueve la referencia hacia al final de la lista'
      end
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Abrir1: TMenuItem
      Action = aAbrirItemReferencia
    end
  end
  object JvOpenDialog1: TJvOpenDialog
    Filter = 'ARPI Lista de Referencias (*.alr)|*.alr'
    Height = 454
    Width = 563
    Left = 72
    Top = 224
  end
  object JvSaveDialog1: TJvSaveDialog
    Filter = 'ARPI Lista de Referencias (*.alr)|*.alr'
    Height = 0
    Width = 0
    Left = 72
    Top = 264
  end
  object ActionList1: TActionList
    Left = 288
    Top = 216
    object aMoverArriba: TAction
      Caption = 'Arriba'
      OnExecute = aMoverArribaExecute
    end
    object aMoverAbajo: TAction
      Caption = 'Abajo'
      OnExecute = aMoverAbajoExecute
    end
    object aMoverPrincipioDeTodo: TAction
      Caption = 'Principio de Todo'
      OnExecute = aMoverPrincipioDeTodoExecute
    end
    object aMoverFinalDeTodo: TAction
      Caption = 'Final de Todo'
      OnExecute = aMoverFinalDeTodoExecute
    end
    object aAgregarReferencia: TAction
      Caption = 'Insertar Referencia'
      OnExecute = aAgregarReferenciaExecute
    end
    object aAbrirReferencia: TAction
      Caption = 'Abrir Referencia'
      OnExecute = aAbrirReferenciaExecute
    end
    object aBorrarReferencia: TAction
      Caption = 'Borrar Referencia'
      OnExecute = aBorrarReferenciaExecute
    end
    object aGuardar: TAction
      Caption = 'Guardar Lista de Referencias'
      OnExecute = aGuardarExecute
    end
    object aGuardarComo: TAction
      Caption = 'guardar lista de referencias como...'
      OnExecute = aGuardarComoExecute
    end
    object aAgregarListaDeReferencia: TAction
      Caption = 'Agregar Lista De Referencia'
      OnExecute = aAgregarListaDeReferenciaExecute
    end
    object aEditarReferencia: TAction
      Caption = 'Editar Referencia'
      OnExecute = aEditarReferenciaExecute
    end
    object aAbrirItemReferencia: TAction
      Caption = 'Abrir referencia seleccionada'
      OnExecute = aAbrirItemReferenciaExecute
      OnUpdate = aAbrirItemReferenciaUpdate
    end
  end
  object JvOpenDialog2: TJvOpenDialog
    Height = 0
    Width = 0
    Left = 88
    Top = 304
  end
end
