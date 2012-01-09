object fmPrincipal: TfmPrincipal
  Left = 141
  Top = 120
  Width = 864
  Height = 530
  HelpContext = 1001
  Caption = 'ARPI - Entorno de Ejecuci'#243'n'
  Color = cl3DDkShadow
  DragKind = dkDock
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = True
  Position = poMainFormCenter
  WindowState = wsMaximized
  WindowMenu = Ventanas1
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDragOver = FormDragOver
  OnHelp = FormHelp
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter2: TSplitter
    Left = 185
    Top = 58
    Height = 407
  end
  object DynToolBar1: TDynToolBar
    Left = 834
    Top = 58
    Width = 22
    Height = 407
    Align = alRight
    AutoSize = True
    BevelOuter = bvNone
    Caption = 'Barra de Herramientas'
    TabOrder = 0
    ButtonColorInactive = clInactiveBorder
    ButtonColorActive = clActiveCaption
    ButtonTextColorInactive = clWindowText
    ButtonTextColorActive = clWhite
    Intervalo = 1000
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 465
    Width = 856
    Height = 19
    Panels = <
      item
        Width = 500
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 58
    Width = 185
    Height = 407
    Align = alLeft
    Caption = 'Panel1'
    TabOrder = 2
    OnEnter = Panel1Enter
    OnExit = Panel1Exit
    object JvAngleLabel1: TJvLabel
      Left = 164
      Top = 1
      Width = 18
      Height = 405
      Align = alRight
      AutoSize = False
      Caption = 'Barra de Algoritmos'
      Color = clActiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      OnDblClick = JvAngleLabel1DblClick
      Angle = 270
      AutoOpenURL = False
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object Bevel1: TBevel
      Left = 182
      Top = 1
      Width = 2
      Height = 405
      Align = alRight
      Shape = bsRightLine
    end
    object ScrollBox1: TScrollBox
      Left = 1
      Top = 1
      Width = 163
      Height = 405
      Align = alClient
      BorderStyle = bsNone
      TabOrder = 0
      object Splitter1: TSplitter
        Left = 0
        Top = 153
        Width = 163
        Height = 7
        Cursor = crVSplit
        Align = alTop
        ResizeStyle = rsLine
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 160
        Width = 163
        Height = 245
        Align = alClient
        Caption = 'Lista de Algoritmos'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 0
        object listaAlgoritmos: TJvListView
          Left = 2
          Top = 15
          Width = 159
          Height = 228
          Align = alClient
          Columns = <
            item
              AutoSize = True
              Caption = 'Nombre'
            end>
          ColumnClick = False
          DragMode = dmAutomatic
          ReadOnly = True
          RowSelect = True
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          ViewStyle = vsReport
          OnDblClick = arbolCategoriasDblClick
          OnMouseMove = CargarHintsLista
          ColumnsOrder = '0=155'
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 163
        Height = 153
        Align = alTop
        Caption = 'Lista de Categor'#237'as'
        TabOrder = 1
        object arbolCategorias: TJvTreeView
          Left = 2
          Top = 15
          Width = 159
          Height = 136
          Align = alClient
          DragMode = dmAutomatic
          Images = ImagenesCategorias
          Indent = 27
          ParentShowHint = False
          PopupMenu = PopupCategorias
          RowSelect = True
          ShowHint = True
          SortType = stText
          TabOrder = 0
          OnDblClick = arbolCategoriasDblClick
          OnDragDrop = arbolCategoriasDragDrop
          OnDragOver = arbolCategoriasDragOver
          OnEdited = arbolCategoriasEdited
          OnGetImageIndex = arbolCategoriasGetImageIndex
          OnMouseMove = CargarHintArbol
          Items.Data = {
            0100000022000000010000000000000001000000FFFFFFFF0000000000000000
            095072696E636970616C}
          LineColor = 13160660
        end
      end
    end
  end
  object BarradeHerramientas: TControlBar
    Left = 0
    Top = 0
    Width = 856
    Height = 58
    Align = alTop
    AutoDock = False
    AutoSize = True
    BevelEdges = []
    BevelInner = bvNone
    BevelOuter = bvNone
    BevelKind = bkNone
    Color = clBtnFace
    ParentColor = False
    PopupMenu = pmVerBarras
    RowSize = 29
    TabOrder = 3
    OnDockOver = BarradeHerramientasDockOver
    object tbImagenes: TToolBar
      Left = 11
      Top = 2
      Width = 422
      Height = 24
      AutoSize = True
      ButtonHeight = 24
      ButtonWidth = 24
      Caption = 'Im'#225'genes'
      EdgeInner = esNone
      EdgeOuter = esNone
      Flat = True
      Images = imagenesEntorno16
      TabOrder = 0
      Transparent = True
      Wrapable = False
      object ToolButton2: TToolButton
        Left = 0
        Top = 0
        Action = aAbrirImagen
      end
      object ToolButton1: TToolButton
        Left = 24
        Top = 0
        Action = aAdquirirImagen
      end
      object ToolButton3: TToolButton
        Left = 48
        Top = 0
        Action = aGuardarImagen
      end
      object ToolButton4: TToolButton
        Left = 72
        Top = 0
        Action = aGuardarImagenComo
      end
      object tbCerrarImagen: TToolButton
        Left = 96
        Top = 0
        Action = aCerrarImagen
      end
      object ToolButton7: TToolButton
        Left = 120
        Top = 0
        Width = 8
        Caption = 'ToolButton7'
        ImageIndex = 10
        Style = tbsSeparator
      end
      object tbNoSelect: TToolButton
        Left = 128
        Top = 0
        Action = aImagenSelNo
        Grouped = True
      end
      object tbSelect: TToolButton
        Left = 152
        Top = 0
        AllowAllUp = True
        Caption = 'tbSelect'
        DropdownMenu = popSelect
        Grouped = True
        ImageIndex = 21
        Style = tbsDropDown
        OnClick = tbSelectClick
        OnMouseDown = tbSelectMouseDown
      end
      object ToolButton8: TToolButton
        Left = 189
        Top = 0
        Width = 8
        Caption = 'ToolButton8'
        ImageIndex = 17
        Style = tbsSeparator
      end
      object tbCopy: TToolButton
        Left = 197
        Top = 0
        Action = aCopiarImagen
      end
      object tbCut: TToolButton
        Left = 221
        Top = 0
        Action = aCortarImagen
      end
      object tbPaste: TToolButton
        Left = 245
        Top = 0
        Action = aPegarImagen
      end
      object tbPegarNuevaImagen: TToolButton
        Left = 269
        Top = 0
        Action = aPegarImagenNueva
      end
      object ToolButton9: TToolButton
        Left = 293
        Top = 0
        Width = 8
        Caption = 'ToolButton9'
        ImageIndex = 17
        Style = tbsSeparator
      end
      object tbUndo: TToolButton
        Left = 301
        Top = 0
        Action = aDeshacerImagen
      end
      object tbRedo: TToolButton
        Left = 325
        Top = 0
        Action = aRehacerImagen
      end
      object ToolButton13: TToolButton
        Left = 349
        Top = 0
        Width = 8
        Caption = 'ToolButton13'
        ImageIndex = 9
        Style = tbsSeparator
      end
      object tbZoom: TToolButton
        Left = 357
        Top = 0
        Caption = 'tbZoom'
        DropdownMenu = DDMZoom
        ImageIndex = 24
        PopupMenu = DDMZoom
        Style = tbsDropDown
        OnClick = tbZoomClick
      end
      object tbImgToMtrx: TToolButton
        Left = 394
        Top = 0
        Action = aImagenAMatriz
      end
    end
    object tbMatrices: TToolBar
      Left = 11
      Top = 31
      Width = 395
      Height = 24
      AutoSize = True
      ButtonHeight = 24
      ButtonWidth = 24
      Caption = 'Matrices'
      EdgeInner = esNone
      EdgeOuter = esNone
      Flat = True
      Images = imagenesEntorno16
      TabOrder = 1
      Transparent = True
      Wrapable = False
      object ToolButton6: TToolButton
        Left = 0
        Top = 0
        Action = aNuevaMatriz
      end
      object ToolButton12: TToolButton
        Left = 24
        Top = 0
        Action = aAbrirMatriz
      end
      object ToolButton5: TToolButton
        Left = 48
        Top = 0
        Action = aGuardarMatriz
      end
      object ToolButton10: TToolButton
        Left = 72
        Top = 0
        Action = aGuardarComoMatriz
      end
      object ToolButton14: TToolButton
        Left = 96
        Top = 0
        Action = aCerrarMatriz
      end
      object ToolButton21: TToolButton
        Left = 120
        Top = 0
        Width = 8
        Caption = 'ToolButton21'
        ImageIndex = 29
        Style = tbsSeparator
      end
      object ToolButton11: TToolButton
        Left = 128
        Top = 0
        Action = aConfigurarPropiedadesMatriz
      end
      object ToolButton15: TToolButton
        Left = 152
        Top = 0
        Width = 6
        Caption = 'ToolButton15'
        Style = tbsSeparator
      end
      object ToolButton16: TToolButton
        Left = 158
        Top = 0
        Action = aCopiarMatriz
      end
      object ToolButton17: TToolButton
        Left = 182
        Top = 0
        Action = aCortarMatriz
      end
      object ToolButton18: TToolButton
        Left = 206
        Top = 0
        Action = aPegarMatriz
      end
      object ToolButton19: TToolButton
        Left = 230
        Top = 0
        Width = 8
        Caption = 'ToolButton19'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object ToolButton26: TToolButton
        Left = 238
        Top = 0
        Action = aDeshacerMatriz
      end
      object ToolButton27: TToolButton
        Left = 262
        Top = 0
        Action = aRehacerMatriz
      end
      object ToolButton25: TToolButton
        Left = 286
        Top = 0
        Width = 8
        Caption = 'ToolButton25'
        ImageIndex = 33
        Style = tbsSeparator
      end
      object ToolButton20: TToolButton
        Left = 294
        Top = 0
        Action = aInsertarFila
      end
      object ToolButton22: TToolButton
        Left = 318
        Top = 0
        Action = aInsertarColumna
      end
      object ToolButton23: TToolButton
        Left = 342
        Top = 0
        Action = aEliminarFila
      end
      object ToolButton24: TToolButton
        Left = 366
        Top = 0
        Action = aEliminarColumna
      end
    end
    object tbListaReferencias: TToolBar
      Left = 419
      Top = 31
      Width = 310
      Height = 25
      ButtonHeight = 24
      ButtonWidth = 24
      Caption = 'Lista de Referencia'
      EdgeInner = esNone
      EdgeOuter = esNone
      Flat = True
      Images = imagenesEntorno16
      TabOrder = 2
      Transparent = True
      Wrapable = False
      object ToolButton29: TToolButton
        Left = 0
        Top = 0
        Action = aNuevaListaReferencias
      end
      object ToolButton28: TToolButton
        Left = 24
        Top = 0
        Action = aAbrirListaReferencias
      end
      object ToolButton30: TToolButton
        Left = 48
        Top = 0
        Action = aGuardarListaReferencias
      end
      object ToolButton54: TToolButton
        Left = 72
        Top = 0
        Action = aGuardarComoListaReferencias
      end
      object ToolButton31: TToolButton
        Left = 96
        Top = 0
        Action = aCerrarListaReferencias
      end
      object ToolButton32: TToolButton
        Left = 120
        Top = 0
        Width = 8
        Caption = 'ToolButton32'
        ImageIndex = 41
        Style = tbsSeparator
      end
      object ToolButton33: TToolButton
        Left = 128
        Top = 0
        Action = aBorrarReferencia
      end
      object ToolButton53: TToolButton
        Left = 152
        Top = 0
        Action = aAgregarReferencia
      end
      object ToolButton55: TToolButton
        Left = 176
        Top = 0
        Action = aAgregarListaDeReferencia
      end
      object ToolButton56: TToolButton
        Left = 200
        Top = 0
        Width = 8
        Caption = 'ToolButton56'
        ImageIndex = 62
        Style = tbsSeparator
      end
      object ToolButton57: TToolButton
        Left = 208
        Top = 0
        Action = aMoverReferenciaAPrincipio
      end
      object ToolButton58: TToolButton
        Left = 232
        Top = 0
        Action = aMoverReferenciaAFinal
      end
      object ToolButton59: TToolButton
        Left = 256
        Top = 0
        Action = aMoverReferenciaArriba
      end
      object ToolButton60: TToolButton
        Left = 280
        Top = 0
        Action = aMoverReferenciaAbajo
      end
    end
    object tbListaPasos: TToolBar
      Left = 446
      Top = 2
      Width = 408
      Height = 24
      AutoSize = True
      ButtonHeight = 24
      ButtonWidth = 24
      Caption = 'Lista de Pasos'
      DragKind = dkDock
      DragMode = dmAutomatic
      EdgeBorders = []
      Flat = True
      Images = imagenesEntorno16
      PopupMenu = pmVerBarras
      TabOrder = 3
      Transparent = True
      Wrapable = False
      object ToolButton42: TToolButton
        Left = 0
        Top = 0
        Action = aNuevaListaPasos
      end
      object ToolButton41: TToolButton
        Left = 24
        Top = 0
        Action = aAbrirListaPasos
      end
      object ToolButton44: TToolButton
        Left = 48
        Top = 0
        Action = aGuardarListaPasos
      end
      object ToolButton45: TToolButton
        Left = 72
        Top = 0
        Action = aGuardarComoListaPasos
      end
      object ToolButton47: TToolButton
        Left = 96
        Top = 0
        Action = aCerrarListaPasos
      end
      object ToolButton46: TToolButton
        Left = 120
        Top = 0
        Width = 8
        Caption = 'ToolButton6'
        ImageIndex = 4
        Style = tbsSeparator
      end
      object ToolButton37: TToolButton
        Left = 128
        Top = 0
        Action = aAgregarListaPasos
      end
      object ToolButton34: TToolButton
        Left = 152
        Top = 0
        Action = aEliminarPaso
      end
      object ToolButton35: TToolButton
        Left = 176
        Top = 0
        Action = aDuplicarPaso
      end
      object ToolButton36: TToolButton
        Left = 200
        Top = 0
        Action = aEditarDescripcion
      end
      object ToolButton52: TToolButton
        Left = 224
        Top = 0
        Width = 8
        Caption = 'ToolButton52'
        ImageIndex = 50
        Style = tbsSeparator
      end
      object ToolButton38: TToolButton
        Left = 232
        Top = 0
        Action = aEjecutarListaPasos
      end
      object ToolButton50: TToolButton
        Left = 256
        Top = 0
        Action = aPausarLP
      end
      object ToolButton51: TToolButton
        Left = 280
        Top = 0
        Action = aPararLP
      end
      object ToolButton49: TToolButton
        Left = 304
        Top = 0
        Width = 8
        Caption = 'ToolButton49'
        ImageIndex = 50
        Style = tbsSeparator
      end
      object ToolButton39: TToolButton
        Left = 312
        Top = 0
        Action = aMoverPasoAlPrincipio
      end
      object ToolButton40: TToolButton
        Left = 336
        Top = 0
        Action = aMoverPasoAlFinal
      end
      object ToolButton43: TToolButton
        Left = 360
        Top = 0
        Action = aMoverPasoArriba
      end
      object ToolButton48: TToolButton
        Left = 384
        Top = 0
        Action = aMoverPasoAbajo
      end
    end
  end
  object MainMenu1: TMainMenu
    Images = imagenesEntorno16
    Left = 224
    Top = 280
    object mArchivo: TMenuItem
      Caption = '&ARPI'
      object mConfiguraciondelEntorno: TMenuItem
        Action = aConfiguraciondelEntorno
      end
      object mRefrescarThreads: TMenuItem
        Caption = '&Refrescar Threads'
        OnClick = mRefrescarThreadsClick
      end
      object N10: TMenuItem
        Caption = '-'
      end
      object mSalir: TMenuItem
        Action = aSalir
      end
    end
    object mImagen: TMenuItem
      Caption = '&Imagen'
      object mAbrirImagen: TMenuItem
        Action = aAbrirImagen
      end
      object mAdquirirImagen: TMenuItem
        Action = aAdquirirImagen
      end
      object mGuardarImagen: TMenuItem
        Action = aGuardarImagen
      end
      object mGuardarComoImagen: TMenuItem
        Action = aGuardarImagenComo
      end
      object mImprimirImagen: TMenuItem
        Action = aImprimirImagen
      end
      object mCerrarImagen: TMenuItem
        Action = aCerrarImagen
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object mDeshacerModificacionImagen: TMenuItem
        Action = aDeshacerImagen
      end
      object mRehacerModificacionImagen: TMenuItem
        Action = aRehacerImagen
      end
      object N12: TMenuItem
        Caption = '-'
      end
      object mCopiarSeleccionImagen: TMenuItem
        Action = aCopiarImagen
      end
      object mCortarSeleccionImagen: TMenuItem
        Action = aCortarImagen
      end
      object mPegarSeleccionImagen: TMenuItem
        Action = aPegarImagen
      end
      object mPegarComoImagenNueva: TMenuItem
        Action = aPegarImagenNueva
      end
      object N16: TMenuItem
        Caption = '-'
      end
      object ConvertirImagenenMatriz1: TMenuItem
        Action = aImagenAMatriz
      end
    end
    object mMatriz: TMenuItem
      Caption = '&Matriz'
      object mNuevaMatriz: TMenuItem
        Action = aNuevaMatriz
        Caption = 'Nueva Matriz'
      end
      object mAbrirMatriz: TMenuItem
        Action = aAbrirMatriz
      end
      object aGuardarMatrizComo: TMenuItem
        Action = aGuardarMatriz
      end
      object GuardarComo1: TMenuItem
        Action = aGuardarComoMatriz
      end
      object mImprimirMatriz: TMenuItem
        Action = aImprimirMatriz
      end
      object mCerrarMatriz: TMenuItem
        Action = aCerrarMatriz
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object mInsertarColumnaMatriz: TMenuItem
        Action = aInsertarColumna
      end
      object mEliminarColumna: TMenuItem
        Action = aEliminarColumna
      end
      object RehacerModificacin3: TMenuItem
        Action = aInsertarFila
      end
      object EliminarFila1: TMenuItem
        Action = aEliminarFila
      end
      object N11: TMenuItem
        Caption = '-'
      end
      object Deshacer1: TMenuItem
        Action = aDeshacerMatriz
      end
      object PegarCeldas2: TMenuItem
        Action = aRehacerMatriz
      end
      object N15: TMenuItem
        Caption = '-'
      end
      object CortarCeldas2: TMenuItem
        Action = aCopiarMatriz
      end
      object CopiarCeldas2: TMenuItem
        Action = aCortarMatriz
      end
      object Pegar1: TMenuItem
        Action = aPegarMatriz
      end
    end
    object ListadePasos1: TMenuItem
      Caption = 'Lista de &Pasos'
      object mNuevaListadePasos: TMenuItem
        Action = aNuevaListaPasos
      end
      object mAbrirListadePasos: TMenuItem
        Action = aAbrirListaPasos
      end
      object mGuardarListadePasos: TMenuItem
        Action = aGuardarListaPasos
      end
      object mGuardarListadePasosComo: TMenuItem
        Action = aGuardarComoListaPasos
      end
      object mCerrarListadePasos: TMenuItem
        Action = aCerrarListaPasos
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object EjecutarListadePasos1: TMenuItem
        Action = aEjecutarListaPasos
      end
      object Pausarlistadepasos1: TMenuItem
        Action = aPausarLP
      end
      object Detenerlistadepasos1: TMenuItem
        Action = aPararLP
      end
      object N13: TMenuItem
        Caption = '-'
      end
      object Moverhaciaarriba1: TMenuItem
        Action = aMoverPasoArriba
      end
      object Moverhaciaabajo1: TMenuItem
        Action = aMoverPasoAbajo
      end
      object Moveralprincipiodelalista1: TMenuItem
        Action = aMoverPasoAlPrincipio
      end
      object Moveralfinaldelalista2: TMenuItem
        Action = aMoverPasoAlFinal
      end
      object N14: TMenuItem
        Caption = '-'
      end
      object DuplicarPaso1: TMenuItem
        Action = aDuplicarPaso
      end
      object aEliminarPaso1: TMenuItem
        Action = aEliminarPaso
      end
      object aEditarDescripcion1: TMenuItem
        Action = aEditarDescripcion
      end
      object mImportarListadePasos: TMenuItem
        Action = aAgregarListaPasos
      end
    end
    object mListadeReferencias: TMenuItem
      Caption = 'Lista de &Referencias'
      object mNuevaListadeReferencias: TMenuItem
        Action = aNuevaListaReferencias
      end
      object mAbrirListadeReferencias: TMenuItem
        Action = aAbrirListaReferencias
      end
      object mGusradarListadeReferencias: TMenuItem
        Action = aGuardarListaReferencias
      end
      object mGuardarListadeReferenciasComo: TMenuItem
        Action = aGuardarComoListaReferencias
      end
      object mCerrarListadeReferecias: TMenuItem
        Action = aCerrarListaReferencias
        Caption = 'Cerrar Lista de Referecias'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object MoverArriba1: TMenuItem
        Action = aMoverReferenciaArriba
      end
      object MoverAbajo1: TMenuItem
        Action = aMoverReferenciaAbajo
      end
      object Moveralcomienzodelalista1: TMenuItem
        Action = aMoverReferenciaAPrincipio
      end
      object Moveralfinaldelalista1: TMenuItem
        Action = aMoverReferenciaAFinal
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object BorrarReferencia1: TMenuItem
        Action = aBorrarReferencia
      end
      object Agregarnuevareferencia1: TMenuItem
        Action = aAgregarReferencia
      end
      object mImportarListadeReferencias: TMenuItem
        Action = aAgregarListaDeReferencia
      end
    end
    object mVer: TMenuItem
      Caption = '&Ver'
      object mBarradeImagenes: TMenuItem
        Action = aVerBarradeImagenes
      end
      object mBarradeMatrices: TMenuItem
        Action = aVerBarradeMatrices
      end
      object mBarradePasos: TMenuItem
        Action = aVerBarradePasos
      end
      object mBarradeReferencias: TMenuItem
        Action = aVerBarradeReferencias
      end
      object Hilosdeejecucin1: TMenuItem
        Action = aVerHilos
      end
    end
    object Ventanas1: TMenuItem
      Caption = 'V&entanas'
      object mCascada: TMenuItem
        Action = aVentanaCascada
      end
      object mMosaicoVertical: TMenuItem
        Action = aVentanaMosaicoVertical
      end
      object mMosaicoHorizontal: TMenuItem
        Action = aVentanaMosaicoHorizontal
      end
      object mMinimizarTodo: TMenuItem
        Action = aVentanaMinimizarTodo
      end
      object N7: TMenuItem
        Caption = '-'
      end
    end
    object Ayuda1: TMenuItem
      Caption = 'A&yuda'
      object Ayuda2: TMenuItem
        Action = aAyuda
      end
      object Como1: TMenuItem
        Action = aAyudaContenido
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object AcercaDe1: TMenuItem
        Action = aAyudaPagina
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Acercade2: TMenuItem
        Caption = 'Acerca de...'
        OnClick = Acercade2Click
      end
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'Windows Bitmap|*.bmp|Jpeg|*.jpg;*.jpeg|Todos|*.bmp;*.jpg;*.jpeg'
    Left = 224
    Top = 80
  end
  object SavePictureDialog1: TSavePictureDialog
    Filter = 'Windows Bitmap|*.bmp'
    Left = 224
    Top = 128
  end
  object PopupCategorias: TPopupMenu
    Left = 409
    Top = 83
    object AgregarCategora1: TMenuItem
      Action = agregarSubcategoria
    end
    object AgregarCategora2: TMenuItem
      Action = agregarCategoria
    end
    object EliminarCategora1: TMenuItem
      Action = eliminarCategoria
    end
    object RenombrarCategoria1: TMenuItem
      Action = renombrarCategoria
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object QuitarAlgoritmo1: TMenuItem
      Action = quitarAlgoritmo
    end
  end
  object listaAcciones: TActionList
    Images = imagenesEntorno16
    Left = 624
    Top = 144
    object renombrarCategoria: TAction
      Category = 'categoria'
      Caption = 'Renombrar Categor'#237'a'
      ShortCut = 113
      OnExecute = renombrarCategoriaExecute
      OnUpdate = renombrarCategoriaUpdate
    end
    object agregarSubcategoria: TAction
      Category = 'categoria'
      Caption = 'Agregar Subategor'#237'a'
      OnExecute = agregarSubcategoriaExecute
      OnUpdate = agregarSubcategoriaUpdate
    end
    object eliminarCategoria: TAction
      Category = 'categoria'
      Caption = 'Eliminar Categor'#237'a'
      OnExecute = eliminarCategoriaExecute
      OnUpdate = eliminarCategoriaUpdate
    end
    object quitarAlgoritmo: TAction
      Category = 'Algoritmo'
      Caption = 'Quitar Algoritmo'
      OnExecute = quitarAlgoritmoExecute
      OnUpdate = quitarAlgoritmoUpdate
    end
    object agregarCategoria: TAction
      Category = 'categoria'
      Caption = 'Agregar Categor'#237'a'
      OnExecute = agregarCategoriaExecute
      OnUpdate = agregarCategoriaUpdate
    end
    object aAbrirImagen: TAction
      Category = 'Imagen'
      Caption = '&Abrir Imagen...'
      Hint = 'Abrir una imagen desde un archivo'
      ImageIndex = 12
      OnExecute = abrirImagen
    end
    object aAdquirirImagen: TAction
      Category = 'Imagen'
      Caption = 'Ad&quirir Imagen'
      Hint = 
        'Adquirir una imagen desde un dispositivo TWAIN (Scanner, C'#225'mara ' +
        'Web)'
      ImageIndex = 13
      OnExecute = adquirirImagen
    end
    object aGuardarImagen: TAction
      Category = 'Imagen'
      Caption = '&Guardar Imagen'
      Hint = 'Guardar una imagen a archivo'
      ImageIndex = 14
      OnExecute = guardarImagen
      OnUpdate = esImagen
    end
    object aGuardarImagenComo: TAction
      Category = 'Imagen'
      Caption = 'G&uardar Imagen Como...'
      Hint = 'Guardar una imagen especificando un nombre de archivo'
      ImageIndex = 15
      OnExecute = guardarImagenComo
      OnUpdate = esImagen
    end
    object aImprimirImagen: TAction
      Category = 'Imagen'
      Caption = '&Imprimir Imagen...'
      Hint = 'Imprimir una imagen'
      ImageIndex = 16
      OnExecute = ImprimirImagen
      OnUpdate = esImagen
    end
    object aCerrarImagen: TAction
      Category = 'Imagen'
      Caption = '&Cerrar Imagen'
      Hint = 'Cerrar una imagen'
      ImageIndex = 19
      OnExecute = aCerrarImagenExecute
      OnUpdate = esImagen
    end
    object aCerrarTodasLasImagenes: TAction
      Category = 'Imagen'
      Caption = 'Cerrar &Todas Las Im'#225'genes'
      Hint = 'Cerrar todas las im'#225'genes'
      OnUpdate = esImagen
    end
    object aNuevaMatriz: TAction
      Category = 'Matriz'
      Caption = 'Crear nueva'
      Hint = 'Crea una nueva matriz'
      ImageIndex = 25
      OnExecute = aNuevaMatrizExecute
    end
    object aAbrirMatriz: TAction
      Category = 'Matriz'
      Caption = 'Abrir'
      Hint = 'Abrir Matriz|Abre una matriz'
      ImageIndex = 26
      OnExecute = aAbrirMatrizExecute
    end
    object aVentanaCascada: TWindowCascade
      Category = 'Ventana'
      Caption = '&Cascada'
      Enabled = False
      Hint = 'Cascada'
      ImageIndex = 9
      OnExecute = aVentanaCascadaExecute
    end
    object aVentanaMosaicoHorizontal: TWindowTileHorizontal
      Category = 'Ventana'
      Caption = 'Mosaico Horizontal'
      Enabled = False
      Hint = 'Mosaico Horizontal'
      ImageIndex = 10
      OnExecute = aVentanaMosaicoHorizontalExecute
    end
    object aVentanaMosaicoVertical: TWindowTileVertical
      Category = 'Ventana'
      Caption = 'Mosaico Vertical'
      Enabled = False
      Hint = 'mosaico Vertical'
      ImageIndex = 11
      OnExecute = aVentanaMosaicoVerticalExecute
    end
    object aVentanaMinimizarTodo: TWindowMinimizeAll
      Category = 'Ventana'
      Caption = 'Minimizar Todo'
      Enabled = False
      Hint = 'Minimizar Todo'
      OnExecute = aVentanaMinimizarTodoExecute
    end
    object aNuevaListaPasos: TAction
      Category = 'Lista de Pasos'
      Caption = 'Crear nueva'
      Hint = 'Crea una nueva lista de pasos'
      ImageIndex = 64
      OnExecute = aNuevaListaPasosExecute
    end
    object aConfiguraciondelEntorno: TAction
      Category = 'Aplicacion'
      Caption = '&Configuraci'#243'n del Entorno...'
      Hint = 'Edita opciones del entorno de ejecuci'#243'n'
      ImageIndex = 0
      OnExecute = configuraciondelEntorno
    end
    object aSalir: TAction
      Category = 'Aplicacion'
      Caption = 'Salir'
      Hint = 'Salir'
      ImageIndex = 1
      OnExecute = aSalirExecute
    end
    object aDeshacerImagen: TAction
      Category = 'Imagen'
      Caption = '&Deshacer Modificaci'#243'n'
      Enabled = False
      Hint = 'Deshacer una modificaci'#243'n'
      ImageIndex = 7
      OnExecute = deshacerImagen
      OnUpdate = PuedeDeshacerImagen
    end
    object aRehacerImagen: TAction
      Category = 'Imagen'
      Caption = '&Rehacer Modificaci'#243'n'
      Enabled = False
      Hint = 'Rehacer una modificaci'#243'n'
      ImageIndex = 8
      OnExecute = rehacerImagen
      OnUpdate = PuedeRehacerImagen
    end
    object aCopiarImagen: TAction
      Category = 'Imagen'
      Caption = 'Copiar Selecci'#243'n'
      Hint = 'Copiar la selecci'#243'n de la imagen'
      ImageIndex = 4
      OnExecute = copiarImagen
      OnUpdate = esImagen
    end
    object aCortarImagen: TAction
      Category = 'Imagen'
      Caption = 'Cortar Selecci'#243'n'
      Hint = 'Cortar selecci'#243'n de la imagen '
      ImageIndex = 6
      OnExecute = cortarImagen
      OnUpdate = esImagen
    end
    object aPegarImagen: TAction
      Category = 'Imagen'
      Caption = 'Pegar Selecci'#243'n'
      Hint = 'Pegar una selecci'#243'n en la imagen'
      ImageIndex = 5
      OnExecute = pegarImagen
      OnUpdate = esImagen
    end
    object aPegarImagenNueva: TAction
      Category = 'Imagen'
      Caption = 'Pegar Como Imagen Nueva'
      Hint = 'Pegar la selecci'#243'n como imagen nueva'
      ImageIndex = 17
      OnExecute = pegarImagenNueva
      OnUpdate = esImagen
    end
    object aAbrirListaPasos: TAction
      Category = 'Lista de Pasos'
      Caption = 'Abrir'
      Hint = 'Abre una lista de pasos'
      ImageIndex = 63
      OnExecute = aAbrirListaPasosExecute
    end
    object aGuardarListaPasos: TAction
      Category = 'Lista de Pasos'
      Caption = 'Guardar'
      Hint = 'Almacena la lista de pasos'
      ImageIndex = 66
      OnExecute = aGuardarListaPasosExecute
      OnUpdate = esListaPasos
    end
    object aGuardarComoListaPasos: TAction
      Category = 'Lista de Pasos'
      Caption = 'Guardar como...'
      Hint = 'Almacena una nueva copia de la lista de pasos'
      ImageIndex = 65
      OnExecute = aGuardarComoListaPasosExecute
      OnUpdate = esListaPasos
    end
    object aCerrarListaPasos: TAction
      Category = 'Lista de Pasos'
      Caption = 'Cerrar'
      Hint = 'Cierra la lista de pasos'
      ImageIndex = 67
      OnExecute = aCerrarListaPasosExecute
      OnUpdate = esListaPasos
    end
    object aGuardarMatriz: TAction
      Category = 'Matriz'
      Caption = 'Guardar'
      Hint = 'Guardar Matriz|Almacena la matriz en disco'
      ImageIndex = 27
      OnExecute = aGuardarMatrizExecute
      OnUpdate = esMatriz
    end
    object aGuardarComoMatriz: TAction
      Category = 'Matriz'
      Caption = 'Guardar Como...'
      Hint = 'Guardar Matriz Como...|Guarda la matriz actual con otro nombre.'
      ImageIndex = 28
      OnExecute = aGuardarComoMatrizExecute
      OnUpdate = esMatriz
    end
    object aImprimirMatriz: TAction
      Category = 'Matriz'
      Caption = 'Imprimir Matriz'
      Hint = 'Imprime la matriz'
      ImageIndex = 29
      OnExecute = aImprimirMatrizExecute
      OnUpdate = esMatriz
    end
    object aCerrarMatriz: TAction
      Category = 'Matriz'
      Caption = 'Cerrar'
      Hint = 'Cierra la matriz'
      ImageIndex = 30
      OnExecute = aCerrarMatrizExecute
      OnUpdate = esMatriz
    end
    object aImagenSelNo: TAction
      Category = 'Imagen'
      Caption = 'Deseleccionar'
      ImageIndex = 20
      OnExecute = tbNoSelectClick
      OnUpdate = esImagen
    end
    object aImagenSelRect: TAction
      Tag = 1
      Category = 'Imagen'
      Caption = 'Cuadrada'
      ImageIndex = 21
      OnExecute = cambioSeleccion
      OnUpdate = esImagen
    end
    object aImagenSelCirc: TAction
      Tag = 2
      Category = 'Imagen'
      Caption = 'Circular'
      ImageIndex = 22
      OnExecute = cambioSeleccion
      OnUpdate = esImagen
    end
    object aImagenSelPoli: TAction
      Tag = 3
      Category = 'Imagen'
      Caption = 'Poligonal'
      ImageIndex = 23
      OnExecute = cambioSeleccion
      OnUpdate = esImagen
    end
    object aAyuda: TAction
      Category = 'Ayuda'
      Caption = '&Ayuda'
      ImageIndex = 46
      OnExecute = aAyudaExecute
    end
    object aAyudaContenido: TAction
      Category = 'Ayuda'
      Caption = '&Contenido'
      ImageIndex = 47
    end
    object aAyudaPagina: TAction
      Category = 'Ayuda'
      Caption = 'P'#225'gina Web del Sistema'
      ImageIndex = 45
      OnExecute = aAyudaPaginaExecute
    end
    object aConfigurarPropiedadesMatriz: TAction
      Category = 'Matriz'
      Caption = 'Configurar Propiedades'
      Hint = 'Propiedades de la matriz|Muestra las propiedades de la matriz'
      ImageIndex = 31
      OnExecute = aConfigurarPropiedadesMatrizExecute
      OnUpdate = esMatriz
    end
    object aInsertarFila: TAction
      Category = 'Matriz'
      Caption = 'Insertar Fila'
      Hint = 
        'Insertar Fila|Inserta una nueva fila a la matriz en la posicion ' +
        'seleccionada'
      ImageIndex = 35
      OnExecute = aInsertarFilaExecute
      OnUpdate = esMatriz
    end
    object aInsertarColumna: TAction
      Category = 'Matriz'
      Caption = 'Insertar Columna'
      Hint = 
        'Insertar Columna|Inserta una nueva columna a la matriz en la pos' +
        'icion seleccionada'
      ImageIndex = 34
      OnExecute = aInsertarColumnaExecute
      OnUpdate = esMatriz
    end
    object aEliminarFila: TAction
      Category = 'Matriz'
      Caption = 'Eliminar Fila'
      Hint = 'Eliminar Fila|Elimina la fila seleccionada'
      ImageIndex = 33
      OnExecute = aEliminarFilaExecute
      OnUpdate = esMatriz
    end
    object aEliminarColumna: TAction
      Category = 'Matriz'
      Caption = 'Eliminar Columna'
      Hint = 'Eliminar Columna|Elimina la columna seleccionada'
      ImageIndex = 32
      OnExecute = aEliminarColumnaExecute
      OnUpdate = esMatriz
    end
    object aCopiarMatriz: TAction
      Category = 'Matriz'
      Caption = 'Copiar'
      Hint = 'Copia las celdas seleccionadas'
      ImageIndex = 4
      OnExecute = aCopiarMatrizExecute
      OnUpdate = esMatriz
    end
    object aCortarMatriz: TAction
      Category = 'Matriz'
      Caption = 'Cortar'
      Hint = 'Corta las celdas seleccionadas'
      ImageIndex = 6
      OnExecute = aCortarMatrizExecute
      OnUpdate = esFilaoCol
    end
    object aPegarMatriz: TAction
      Category = 'Matriz'
      Caption = 'Pegar'
      Hint = 'Pega las celdas del portapapeles'
      ImageIndex = 5
      OnExecute = aPegarMatrizExecute
      OnUpdate = PuedePegarMatriz
    end
    object aDeshacerMatriz: TAction
      Category = 'Matriz'
      Caption = 'Deshacer'
      Hint = 'Deshacer'
      ImageIndex = 7
      OnExecute = aDeshacerMatrizExecute
      OnUpdate = PuedeDeshacerMatriz
    end
    object aRehacerMatriz: TAction
      Category = 'Matriz'
      Caption = 'Rehacer'
      Hint = 'Rehacer'
      ImageIndex = 8
      OnExecute = aRehacerMatrizExecute
      OnUpdate = PuedeRehacerMatriz
    end
    object aImagenAMatriz: TAction
      Category = 'Imagen'
      Caption = 'Con&vertir Imagen en Matriz'
      Hint = 'Visualizar los valores de la Imagen en formato Matriz'
      ImageIndex = 18
      OnExecute = aImagenAMatrizExecute
      OnUpdate = esImagen
    end
    object aAbrirListaReferencias: TAction
      Category = 'Lista de Referencias'
      Caption = 'Abrir'
      Hint = 'Abre una lista de referencias'
      ImageIndex = 55
      OnExecute = aAbrirListaReferenciasExecute
    end
    object aNuevaListaReferencias: TAction
      Category = 'Lista de Referencias'
      Caption = 'Crear nueva'
      Hint = 'Crea una nueva lista de referencias'
      ImageIndex = 56
      OnExecute = aNuevaListaReferenciasExecute
    end
    object aCerrarListaReferencias: TAction
      Category = 'Lista de Referencias'
      Caption = 'Cerrar'
      Hint = 'Cierra la lista de referencias'
      ImageIndex = 57
      OnExecute = aCerrarListaReferenciasExecute
      OnUpdate = esListaReferencias
    end
    object aBorrarReferencia: TAction
      Category = 'Lista de Referencias'
      Caption = 'Borrar referencia'
      Hint = 'Borra la referencia de la lista de referencias'
      ImageIndex = 58
      OnExecute = aBorrarReferenciaExecute
      OnUpdate = esListaReferencias
    end
    object aGuardarListaReferencias: TAction
      Category = 'Lista de referencias'
      Caption = 'Guardar'
      Hint = 'Almacena lista de referencias'
      ImageIndex = 59
      OnExecute = aGuardarListaReferenciasExecute
      OnUpdate = esListaReferencias
    end
    object aVerBarradeAlgoritmos: TAction
      Tag = -1
      Category = 'Ver'
      Caption = 'Barra de &Algoritmos'
      Hint = 'Muestra/Oculta la Barra de Algoritmos'
      OnExecute = verBarra
    end
    object aVerBarradeImagenes: TAction
      Category = 'Ver'
      Caption = 'Barra de &Im'#225'genes'
      Checked = True
      Hint = 'Muestra/Oculta la Barra de Im'#225'genes'
      OnExecute = verBarra
    end
    object aVerBarradeMatrices: TAction
      Tag = 1
      Category = 'Ver'
      Caption = 'Barra de Matrices'
      Checked = True
      Hint = 'Muestra/Oculta la Barra de Matrices'
      OnExecute = verBarra
    end
    object aVerBarradePasos: TAction
      Tag = 3
      Category = 'Ver'
      Caption = 'Barra de &Pasos'
      Checked = True
      Hint = 'Muestra/Oculta la Barra de Pasos'
      OnExecute = verBarra
    end
    object aVerBarradeReferencias: TAction
      Tag = 2
      Category = 'Ver'
      Caption = 'Barra de &Referencias'
      Checked = True
      Hint = 'Muestra/Oculta la Barra de Referencias'
      OnExecute = verBarra
    end
    object aMoverReferenciaArriba: TAction
      Category = 'Lista de Referencias'
      Caption = 'Mover arriba'
      Hint = 'Mueve la referencia un lugar hacia arriba en la lista'
      ImageIndex = 51
      OnExecute = aMoverReferenciaArribaExecute
      OnUpdate = esListaReferencias
    end
    object aMoverReferenciaAbajo: TAction
      Category = 'Lista de Referencias'
      Caption = 'Mover abajo'
      Hint = 'Mueve la referencia un lugar hacia abajo en la lista'
      ImageIndex = 49
      OnExecute = aMoverReferenciaAbajoExecute
      OnUpdate = esListaReferencias
    end
    object aMoverReferenciaAPrincipio: TAction
      Category = 'Lista de Referencias'
      Caption = 'Mover al comienzo de la lista'
      Hint = 'Mueve la referencia al principio de la lista'
      ImageIndex = 48
      OnExecute = aMoverReferenciaAPrincipioExecute
      OnUpdate = esListaReferencias
    end
    object aMoverReferenciaAFinal: TAction
      Category = 'Lista de Referencias'
      Caption = 'Mover al final de la lista'
      Hint = 'Mueve la referencia al final de la lista'
      ImageIndex = 50
      OnExecute = aMoverReferenciaAFinalExecute
      OnUpdate = esListaReferencias
    end
    object aGuardarComoListaReferencias: TAction
      Category = 'Lista de Referencias'
      Caption = 'Guardar Como...'
      Hint = 'Almacena una nueva copia de la lista de referencias'
      ImageIndex = 60
      OnExecute = aGuardarComoListaReferenciasExecute
      OnUpdate = esListaReferencias
    end
    object aAgregarListaDeReferencia: TAction
      Category = 'Lista de Referencias'
      Caption = 'Agregar lista de referencia'
      Hint = 'Agrega una lista almacenada a la lista actual'
      ImageIndex = 61
      OnExecute = aAgregarListaDeReferenciaExecute
      OnUpdate = esListaReferencias
    end
    object aAgregarListaPasos: TAction
      Category = 'Lista de Pasos'
      Caption = 'Agregar lista pasos'
      Hint = 'Agrega una lista de pasos a la actual'
      ImageIndex = 68
      OnExecute = aAgregarListaPasosExecute
      OnUpdate = esListaPasos
    end
    object aEliminarPaso: TAction
      Category = 'Lista de Pasos'
      Caption = 'Eliminar'
      Hint = 'Elimina el paso seleccionado de la lista de pasos'
      ImageIndex = 69
      OnExecute = aEliminarPasoExecute
      OnUpdate = esListaPasos
    end
    object aDuplicarPaso: TAction
      Category = 'Lista de Pasos'
      Caption = 'Duplicar'
      Hint = 'Duplica el paso seleccionado'
      ImageIndex = 70
      OnExecute = aDuplicarPasoExecute
      OnUpdate = esListaPasos
    end
    object aEditarDescripcion: TAction
      Category = 'Lista de Pasos'
      Caption = 'Editar descripci'#243'n'
      Hint = 'Edita la descripci'#243'n del paso actual'
      ImageIndex = 71
      OnExecute = aEditarDescripcionExecute
      OnUpdate = esListaPasos
    end
    object aEjecutarListaPasos: TAction
      Category = 'Lista de Pasos'
      Caption = 'Ejecutar'
      Hint = 'Ejecuta la lista de pasos'
      ImageIndex = 54
      OnExecute = aEjecutarListaPasosExecute
      OnUpdate = esListaPasosNoEjecucion
    end
    object aMoverPasoAlPrincipio: TAction
      Category = 'Lista de Pasos'
      Caption = 'Mover al principio de la lista'
      Hint = 'Mueve el paso al principio de la lista'
      ImageIndex = 72
      OnExecute = aMoverPasoAlPrincipioExecute
      OnUpdate = esListaPasos
    end
    object aMoverPasoAlFinal: TAction
      Category = 'Lista de Pasos'
      Caption = 'Mover al final de la lista'
      Hint = 'Mueve el paso al final de la lista'
      ImageIndex = 74
      OnExecute = aMoverPasoAlFinalExecute
      OnUpdate = esListaPasos
    end
    object aMoverPasoAbajo: TAction
      Category = 'Lista de Pasos'
      Caption = 'Mover hacia abajo'
      Hint = 'Mueve el paso hacia abajo'
      ImageIndex = 73
      OnExecute = aMoverPasoAbajoExecute
      OnUpdate = esListaPasos
    end
    object aMoverPasoArriba: TAction
      Category = 'Lista de Pasos'
      Caption = 'Mover hacia arriba'
      Hint = 'Mueve el paso hacia arriba'
      ImageIndex = 75
      OnExecute = aMoverPasoArribaExecute
      OnUpdate = esListaPasos
    end
    object aPausarLP: TAction
      Category = 'Lista de Pasos'
      Caption = 'Pausar'
      Hint = 'Pausa la ejecuci'#243'n'
      ImageIndex = 52
      OnExecute = aPausarLPExecute
      OnUpdate = aPausarLPUpdate
    end
    object aPararLP: TAction
      Category = 'Lista de Pasos'
      Caption = 'Detener'
      Hint = 'Detiene la ejecuci'#243'n'
      ImageIndex = 53
      OnExecute = aPararLPExecute
      OnUpdate = aPararLPUpdate
    end
    object aAgregarReferencia: TAction
      Category = 'Lista de Referencias'
      Caption = 'Agregar nueva referencia'
      Hint = 'Agrega una referencia nueva'
      ImageIndex = 62
      OnExecute = aAgregarReferenciaExecute
      OnUpdate = esListaReferencias
    end
    object aVerHilos: TAction
      Category = 'Ver'
      Caption = 'Hilos de ejecuci'#243'n'
      OnExecute = aVerHilosExecute
    end
  end
  object AbrirDlg: TJvOpenDialog
    Height = 0
    Width = 0
    Left = 224
    Top = 224
  end
  object ImagenesCategorias: TImageList
    Left = 408
    Top = 144
    Bitmap = {
      494C010103000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFEFEFFFDFDFDFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00000000000000000000000000000000000000000000000000FDFD
      FDFFE18D41FFDE8E49FFB1B1B1FFF7F7F7FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B5623900BDB5B30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B69A
      9A00EDE6E500E9E3E100E8DFDE00E8DAD800E6D6D500E3D4D100E1D0CE00DDCB
      C900DBC4C200E2DCDC000000000000000000000000000000000000000000CB76
      3AFFF0AE66FFFFFFFFFFFFF9F4FFB37A56FFD7D7D7FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D1A88800F2B89500F0986000FBF9F800CBC8C700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B99F
      9F00FBF8F900FAF5F600F9F3F300F4F0F100F3EDEE00F2EBEB00EFE8E800EDE5
      E500EADCD900E4DCDD0000000000000000000000000000000000F7F7F7FFFFFF
      F6FFFACB90FFFFF6CCFFFFFFFFFFFFFFFFFFCA7440FFAFAFAFFFF6F6F6FF0000
      000000000000000000000000000000000000000000000000000000000000D5BD
      AA00F4B79200FFD1A800E9976A00F2ECEC00F2EDED00F5E8E300DBD5D4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD9F
      A000FDFBFB00FBF9F900FAF5F600F7F2F300F6F0F100F3EDEC00F1E9E900F0E6
      E600EADEDD00E6DCDC0000000000000000000000000000000000DD8D4AFFFFFF
      EBFFFFE5B8FFFFFAD0FFFFD9A0FFFFFFFBFFFFFBFBFFF0E8E8FFA96B4DFFD7D7
      D7FF0000000000000000000000000000000000000000D5CFCA00F7BE9900FFE7
      D000F6B28400FED3B800FF904C00F4EEED00F5F0F000F6F1F100ECC8B800DCC6
      C300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD9F
      A000FEFEFE00FCFCFC00FBF9F900F9F4F500F6F1F200F5F0EF00F3EDEC00F3EB
      EB00EEE4E200E6DCDC00000000000000000000000000F7F7F7FFFFFFF9FFFFFF
      EBFFFFFCDFFFFFFCD2FFFFE4B1FFFFC386FFFFAC6FFFF6EFEFFFF0E7E7FFB251
      29FFADADADFFF5F5F5FF0000000000000000FAC19900FFFCF600FEF1E200F6BC
      9700FFBD9100FFA56B00FF934F00FF7F3A00F8F3F300F9F4F400F9F5F500E9A7
      8100D29F93000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BC9E
      9F00FEFEFE00FEFEFE00FCFBFB00FBF9F900FAF5F600F7F2F300F5EFF000F4EC
      EC00EFE5E300E6DCDC00000000000000000000000000E49345FFFFFFF7FFFFFF
      EBFFFFFCDFFFFFFFF1FFFFE8B7FFFFCB8EFFFFAC6BFFFF904BFFF1CFC1FFE7DB
      DBFFD6C6C6FFA85A38FFD3D3D3FFFEFEFEFFEDECEB00FACBA900FFF9ED00FFDB
      BD00FFC09500FFA76F00FF945100FF813C00FF722C00FBF8F800FCF8F800FCF9
      F900EA925900C16D560000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BC9E
      9F00FEFEFE00FEFEFE00FEFEFE00FDFBFB00FBF9F900FAF5F600F7F2F300F6F0
      F000F3EBE800E6DCDC000000000000000000FDFDFDFFFFFFFFFFFFFFF7FFFFFF
      EBFFFFFCDFFFF1A64FFFFFEABAFFFFD39AFFFFB775FFFF9650FFFF7831FFFF63
      1EFFDECFCFFFD8C7C7FFAB4F29FFE6E6E6FFDCA16F00FFFCF600FDDABC00FFDD
      BC00FFC49600FFAC7300FF975400FF843E00FF722C00FF712A00FDFCFC00FEFC
      FC00FFFDFD00E28D4F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BC9E
      9F00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FBFBFB00FBF9F900FAF5F600F4F2
      F200F1ECEA00E6DCDC000000000000000000E7AF72FFFFFFFFFFFFFFF7FFFFFF
      EBFFFFFCDFFFFFF4CEFFF8BB74FFFFF5E0FFFFBE7DFFFFA65DFFFF7E36FFFF67
      1FFFFE5B18FFDFA897FFCFBBBBFFE7E7E7FFFAFAFA00FFFAF300FFF1E300FFE7
      CD00FFC69700FFB17500FFA25D00FF955500FF834D00FF733100FF793800FFFE
      FE00FFFFFF00FEFEFE00C07D4F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BC9E
      9F00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FDFDFD00FDFBFB00FBF8F800F6F6
      F600F4F1EE00E6DCDC000000000000000000FFE8CBFFFFFFFFFFFFFFF7FFFFFF
      EBFFFFFCDFFFFFF4CEFFFFE7B8FFFFDBA1FFFFF2DDFFFFA960FFFF8F42FFFF79
      29FFFF5E1AFFFB652CFFDA5522FFECECECFF00000000EEEDEC00FFF2E500FFEA
      D300FFC99A00FFB27800FFA25D00FF965500FF844D00FF7B4400FF763C00FF94
      6200FFFFFF00FFFFFF00FCFBFB00B5AAA0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BC9E
      9F00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FDF8F800F3F5F300F6F2
      F100F0EDEA00E2DADB000000000000000000F2DEC6FFFFFFFFFFFFFFF7FFFFFF
      EBFFFFFCDFFFFFF4CEFFFFE7B8FFFFDBA1FFEFB885FFFFAB63FFFF9245FFFF7A
      29FFFF7323FFEA5016FFDB5622FFECECECFF000000000000000000000000F5AD
      7100EEBA8E00FFB47A00FFA25D00FF975500FF864D00FF7B4400FF763C00FF6F
      3300FFBFA500FFFFFF00FFEFE200E9E8E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BC9E
      9F00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00AF989800FEFDFB00F8F2
      F000B5969800FEFEFE000000000000000000F2C692FFFFFFFFFFFFFFF7FFFFFF
      EBFFFFFCDFFFFFF4CEFFFFE7B8FFFFDBA1FFFFCE8BFFEEBB8FFFFF9449FFFF7B
      2BFFFF833BFFE87844FFDB5622FFEBEBEBFF0000000000000000000000000000
      0000F6C49900EC995900FFA35F00FF985500FF884D00FF7B4400FF773C00F172
      4200AF402C00DEA26F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BC9E
      9F00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00B7969700FCFEFD00BAA2
      A300FEFEFE0000000000000000000000000000000000F1BA7BFFFFFFFFFFFFFF
      EBFFFFE5BFFFF1C39CFFFFE7B8FFFFDBA1FFFFCE8BFFFFC176FFEE9248FFFFE4
      D1FFE75711FFE58653FFED602DFFE5E5E5FF0000000000000000000000000000
      000000000000EBC3A300F6985100FF995500FF8B4E00E0623800DD5F4000DA5D
      2200F7F7F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B89E
      9E00FCFDFE00FEFDFE00FEFDFE00FEFDFE00FEFDFE00B9999D00B9ACAA00FEFD
      FD0000000000000000000000000000000000000000000000000000000000F5E0
      CAFF0000000000000000EDCAADFFFFEAD2FFFFCE8BFFFFC176FFFFB066FFFF9F
      56FFC16024FFE8A37CFFEA6C37FFD7D7D7FF0000000000000000000000000000
      000000000000FDFCFD00E0AF8D00E68A4D00DD744200CB4B2600A5623E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A987
      8700A6898900AA8A8A00AA8A8A00AA8A8A00AA8A8A00A2868300FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D58B58FFFFE0B6FFFFB066FFFFBA
      83FFE4E4E4FF00000000D99A7CFFD8D8D8FF0000000000000000000000000000
      00000000000000000000A5868600BC765000EC8F4700B96E4200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C36127FFDDA0
      7FFFFAFAFAFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFF3FFFFFF0000E007E0FFFE7F0000
      E003E07FF83F0000E003C01FE01F0000E003C00F800F0000E003800300070000
      E003800000030000E003000000030000E003000000010000E003000080000000
      E0030000E0000000E0030000F0030000E0078000F8070000E00FEC00F81F0000
      E01FFF04FC3F0000FFFFFFC7FFFF000000000000000000000000000000000000
      000000000000}
  end
  object JvOpenDMatriz: TJvOpenDialog
    Filter = 'Matriz (*.amt)|*.amt|Todos los Archivos (*.*)|*.*'
    Height = 0
    Width = 0
    Left = 224
    Top = 174
  end
  object imagenesEntorno16: TImageList
    Left = 488
    Top = 144
    Bitmap = {
      494C01014C004F00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004001000001002000000000000040
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F6F6F6FF404040FF9292
      92FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F3F3F3FF3A3A3AFF4343
      43FF00000000000000000000000000000000000000000000FFFF0000FFFF0000
      FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
      FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000000000
      000000000000000000000000000000000000000000000303E1FF575758FF1F1F
      40FF0000F5FF0000000000000000000000000000000000000000000000000000
      0000D4D4D5FF382319FF412012FF3E1F11FF3F1D10FF391C12FF343434FFB2B3
      B3FF3A3A3AFFE4E4E4FF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000371B11FF323232FF5E5F
      5FFF1B1B1BFFADADADFF0000000000000000000000000000FFFF0000FFFF0000
      FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0303E1FF575757FF1F1F
      40FF0000F5FF0000FFFF0000FFFF000000000000000000000000000000000000
      000000000000000000000000000000000000000000000303DDFF1A1A1AFF1717
      2FFF444444FF03036AFF00000000000000000000000000000000000000000000
      00007F7F7FFFD67F37FFFEA046FFFFA045FFFEA045FFFDA044FF83401BFF0F0F
      0FFF373737FF343434FFC6C6C6FF000000000000000000000000000000000000
      00000000000000000000E9D5C1FF4E3F35FF432D1AFFC7C8C7FF693316FF0505
      05FF363636FF373737FF5B5B5BFF00000000000000000000FFFF0000FFFF0000
      FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FAFF1B1817FF0000
      BCFF444444FF03036AFF0000FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000171514FF2020
      20FF2F2F2FFF2F2F2FFF03036CFF000000000000000000000000000000000000
      00007E7F7FFFD96D0DFFFE8610FFFE850FFFFD850EFFFE860EFF9F3F07FF1D1D
      1DFF202020FF202020FF1D1D1DFF000000000000000000000000000000000000
      000000000000DFD3C9FF3B2719FFEBAB6AFFF7C38BFF4E2F13FFC4C4C3FF1515
      15FF1F1F1FFF202020FF1F1F1FFFD6D6D6FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A9A9A8FF2020
      20FF2F2F2FFF2F2F2FFF101010FF000000000000000000000000000000000000
      0000828383FF636363FF555556FF555555FF555555FF555555FF717171FF0D0D
      0DFF181818FF181818FF171717FFCECECEFF000000000000000000000000D7D7
      D6FF696969FFD96D04FFFE8400FFFD8400FFFE8400FFFF8500FFA64400FF8282
      82FF080808FF080808FF080808FF8A8A8AFF0000000000000000000000000000
      0000D2D4D3FF392418FFEAA25EFFFFE0BDFFFDE0BFFFF6BE82FF4E2F14FFC0C0
      BFFF050505FF080808FF080808FF131313FF0000000000000000000000000000
      0000000000000000000000000000878686FF6A6A6AFFF5BE83FF000000001616
      15FF181818FF181818FF171717FF121212FF0000000000000000000000000000
      0000868687FFB86C34FFEA8F47FFE88D46FFE88B46FFE68B45FF75361AFFBBBB
      BBFF040404FF030303FF030303FF2E2E2EFF0000000000000000868688FF743A
      08FF8F460BFFEA7B08FFFE8C0DFFFE8D10FFFF8D10FFD8780FFF616161FF3D19
      03FF401500FF121212FF010101FF6D6D6DFF000000000000000000000000D4CD
      C9FF372217FFE79648FFFECB92FFFECC94FFFECC93FFEEBE8BFF595959FF241B
      13FFBDBDBBFF030303FF010101FF030303FF0000000000000000000000000000
      00000000000000000000585452FFB26E2EFFD08D4CFF3F3833FF5C5C5CFF231A
      12FF161616FF030303FF030303FF2A2A2AFF0000000000000000000000000000
      00007F7F7FFFD8721AFFFE8E20FFFF8D1EFFFD8D1EFFCE7520FF565656FF3E3E
      3EFF141414FF020202FF000000FF303030FF0000000000000000636363FFD66F
      08FFFEA139FFFEAB4DFFFFAB4DFFFEAB4FFFFEAA4DFFD89345FF292929FFD07C
      1FFF393939FF9B9B9AFF00000000000000000000000000000000BAB9B9FF351F
      15FFE78832FFFEB86AFFFFB96AFFFEB86AFFFEB86AFFEFAD64FF252525FFC986
      3BFF343434FF8F8F8FFF00000000000000000000000000000000000000000000
      000000000000565250FFB36C2FFFFFE2C2FFFDE5C8FFAE7A47FF565656FF5445
      35FF2E2E2EFF4D4D4DFF1E1E1EFFA2A2A2FF0000000000000000000000000000
      00007E7E7FFFD96B04FFFE8300FFFD8200FFFE8200FFEE7A02FF27160BFF5455
      55FF484848FF242424FF00000000000000000000000000000000FEFEFEFF3F37
      33FFD68531FFFEBE74FFFEBE78FFFEBF78FFFEBF78FFFEBF78FFCC975CFF2626
      26FF373737FF313131FFD3D3D3FF000000000000000000000000AAABAAFFB750
      00FFFD8B0CFFFE9D31FFFEA23BFFFEA43EFFFDA440FFFEA33CFFD6862BFF1B1B
      1BFF363636FF343434FF747474FF000000000000000000000000000000000000
      000054514FFFB06325FFFECE99FFFED3A1FFFED2A1FFEEC393FF2E2216FF1E1B
      18FF484848FF191919FF00000000000000000000000000000000BFBEC0FF5741
      34FF4F2E1FFFDD7104FFFE8500FFFE8500FFFE8500FFFF8600FF773000FF2F2F
      2FFF2F2F2FFF2F2F2FFF323232FF00000000000000000000000000000000FEFE
      FEFF3F3832FFD58C41FFFFD19DFFFED2A1FFFED3A1FFFECE99FFA75D23FF2020
      20FF222222FF222222FF1D1D1DFF000000000000000000000000E0E2E1FF4131
      31FF46211FFFAF4701FFFF8600FFFE8500FFFE8500FFFE8500FFD66D03FF1919
      19FF212121FF222222FF212121FFE6E6E6FF0000000000000000000000005450
      50FFAE5C1AFFFDBC72FFFEBF78FFFEBF78FFFEBF78FFFEBE78FFAD814FFF2F2F
      2FFF2F2F2FFF2F2F2FFF101010FF000000000000000000000000555555FFE678
      05FFFE931CFFFEA034FFFEA33CFFFDA440FFFEA43EFFFEA23BFFFD9C30FF1212
      12FF1B1B1BFF1B1B1BFF181818FFE4E4E4FF0000000000000000000000000000
      0000FEFEFEFF3F3733FFD59352FFFDE5C8FFFFE2C2FFB36C2FFF565250FFC0C0
      C0FF0E0E0EFF0D0D0DFF0D0D0DFFC6C6C6FF0000000000000000000000000000
      0000BEBFBFFFA64200FFFF8200FFFE8200FFFD8200FFFE8300FFD96B04FF7171
      72FF0A0A0AFF0D0D0DFF0D0D0DFF3E3E3EFF0000000000000000B0B0AFFF9C42
      00FFFD9726FFFEAA4DFFFEAB4EFFFEAA4DFFFEAB4FFFFFAB4DFFFDAA4CFF1414
      14FF1B1B1BFF1B1B1BFF181818FF3E3E3EFF0000000000000000CCCDCDFF5430
      13FFF6A448FFFEB969FFFFB86AFFFEB86AFFFEB86AFFFFB96AFFFEB86AFFE586
      31FF090605FF060606FF060606FF3B3B3BFF0000000000000000000000000000
      000000000000FEFEFEFF3F3833FFD08D4CFFB26E2EFF585452FF000000000000
      0000F8F8F8FF262626FF010101FFC8C8C8FF0000000000000000000000000000
      0000BEBFBFFFA4460FFFFE8D1FFFFD8D1EFFFF8D1EFFFE8E20FFD8721AFF7F7F
      7FFFF6F6F6FF0A0A0AFF010101FF444444FF0000000000000000C2C4C3FF4818
      00FF7B2E00FFCC5E04FFFE8B0CFFFF8D10FFFE8D10FFFE8C0DFFEA7B08FF8D45
      0AFF110A03FF060606FF060606FF3E3E3EFF000000000000000000000000C8C8
      C6FF4E2E13FFF5B065FFFECB94FFFECC93FFFECC94FFFECB92FFE79648FF3722
      17FFBCBBBBFF040404FF000000FF3D3D3DFF0000000000000000000000000000
      00000000000000000000FEFEFEFF6A6A6AFF878686FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C2C2C2FF873F1FFFE68B45FFE88B46FFE88D46FFEA8F47FFB86C34FF8686
      87FF00000000000000000000000000000000000000000000000000000000E2E2
      E2FF9F9F9FFFA64400FFFF8500FFFE8400FFFD8400FFFE8400FFD96D04FF6969
      69FFD6D6D5FF959595FF000000FFEFEFEFFF0000000000000000000000000000
      0000C8C8C7FF4E2F14FFF6BE82FFFDE0BFFFFFE0BDFFEAA25EFF392418FFD2D4
      D3FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF555555FF555555FF555555FF555556FF636363FFFEFE
      FEFF000000000000000000000000000000000000000000000000000000000000
      0000BEBFBFFFA54208FFFE860EFFFD850EFFFE850FFFFE8610FFD96D0DFF7E7F
      7FFF000000000000000000000000000000000000000000000000000000000000
      000000000000C8C8C7FF4E2F13FFF7C38BFFEBAB6AFF3B2719FFDFD3C9FF0000
      000000000000000000000000000000000000000000000000FFFF0000FFFF0000
      FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
      FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BEBEBFFFA45022FFFDA044FFFEA045FFFFA045FFFEA046FFD67F37FF7F7F
      7FFF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C7C8C7FF432D1AFF4E3F35FFE9D5C1FF000000000000
      000000000000000000000000000000000000000000000000FFFF0000FFFF0000
      FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
      FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A9BF0FF352421FF3D1D11FF3F1D10FF3E1F11FF412012FF382319FFD4D4
      D5FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FFFF0000FFFF0000
      FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
      FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FFFF0000
      FFFF00000000000000000000000000000000000000000000000000000000CDCD
      CDFF505050FF535353FF616161FFEBEBF6FF1E24AFFFBEBEE3FF000000000000
      0000000000004745B6FF2D2CB0FFF9F9F9FF0000000000000000000000000000
      0000000000000000000000000000E1E1E1FF585858FF404040FFF5F5F5FF0000
      000000000000000000000000000000000000CFC6C3FFBBB3B0FFBAB3B0FFBAB2
      B0FFBAB2AFFFB9B1AEFFB9B0ADFFB8AFACFFB1A8A5FF404040FF696462FFA89D
      99FFECEAEAFF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FFFF0000
      FFFF00000000000000000000000000000000000000000000000000000000BDBD
      BDFF3C3C3CFF333333FFB8B8B8FF2633BCFF134BFDFF0C41FCFF8988CEFF0000
      00001718A7FF0232FCFF0132FBFF6E6DC3FF0000000000000000000000000000
      0000000000000000000000000000FAFAFAFF212121FFBCBCBCFF444444FF6A6A
      6AFF00000000000000000000000000000000ECE6E4FFFBF9F8FFFAF8F6FFDADB
      E9FFE7E4E8FFEEEAE8FFEEE9E7FFEBE4E2FFDDD7D4FF343434FFA49F9DFF3332
      32FFC8C6C5FF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FFFF0000
      FFFF00000000000000000000000000000000000000000000000000000000FAFA
      FAFF202020FFB8B8B8FF4B4B4BFF4D4BB5FF275BFBFF134BFDFF1044FCFF060E
      AEFF0334FCFF0131FEFF012DF0FFE8E8EEFF0000000000000000000000000000
      000000000000000000000000000000000000DCDCDCFF202020FF2F2F2FFF2F2F
      2FFF6C6C6CFF000000000000000000000000ECE6E4FFFBF9F8FFFBF8F7FFB0B7
      CCFF6374A6FFD3D1D7FFE1DBD9FFE0D8D6FFE0D8D6FFB8B1B0FF0F0F0FFF3737
      37FF343434FFC6C6C6FF00000000000000000000000000000000000000004C4C
      4CFF585858FF707070FFE0E0E0FF0000000000000000000000000000FFFF0000
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000EAEAEAFF4B4B4BFF252525FF343434FF504DB9FF235BFCFF154CFEFF1144
      FDFF063BFDFF042CEEFFDDDDECFF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000191919FF181818FF1818
      18FF171717FFF5F5F5FF0000000000000000ECE6E4FFFBF9F8FFFBF8F7FFBBC8
      DCFF9DB3CDFF8DA8D8FFB6BACFFFDFD7D5FFDFD7D5FFD5CDCBFF1D1D1DFF2020
      20FF202020FF1D1D1DFF00000000000000000000000000000000000000001616
      16FF5A5A5AFF707070FF474747FF424242FFFEFEFEFF000000000000FFFF0000
      FFFF000000000000000000000000000000000000000000000000000000000000
      000000000000454545FF232323FF242424FF242424FF0915B0FF1C55FEFF144C
      FEFF0D44FDFF5456B7FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDDDDDFFF7F7F7FF1D1D1DFF0303
      03FF030303FF696969FF0000000000000000ECE6E4FFFBF9F8FFFBF8F7FFC5DC
      F2FFBFE0FBFFA0D7FAFF6994D4FFCFCBD3FFDFD7D5FFDCD4D2FFB3ACAAFF0808
      08FF080808FF080808FF868484FFFEFEFEFF000000000000000000000000EBEB
      EBFF838383FF252525FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
      FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000000000000000
      000000000000E7E7E7FF1D1D1DFF1B1B1BFF1020B3FF2B65FDFF215DFCFF1C54
      FCFF164EFDFF0F45FDFF3E40B3FF000000000000000000000000BABABAFF3D3D
      3DFFD0D0D0FF0000000000000000CECECEFF565656FF4C4C4CFFE4E4E4FF8989
      89FF1E1E1EFFA2A2A2FF0000000000000000ECE6E4FFFBF9F8FFFAF8F6FFC0E1
      F6FF75E0FCFF59D1FEFF51AEF2FF97A7D1FFC1BBB9FF616161FF6A6665FFAAA0
      9EFF1C1817FF010101FF636060FFE9E8E8FF0000000000000000000000000000
      00007A7A7AFF212121FF16166BFF16166BFF16166BFF47478CFF0000FFFF0000
      FFFFAAAAFFFFAAAAFFFFAAAAFFFFAAAAFFFF0000000000000000000000000000
      00000000000000000000C9C9C9FF252AAEFF3775FDFF2F6DFDFF214DE4FF6E6E
      C5FF3162FAFF174DFDFF1145FDFFA5A7DAFF00000000000000008F8F8FFF3434
      34FFB3B3B3FF535353FFF9F9F9FFEEEEEEFF353535FF707070FF494949FF7070
      70FF00000000000000000000000000000000ECE6E4FFFCFBFAFFFCFBF9FFC7E5
      F8FF5CE2FCFF4BD2FEFF4DC0FEFF4988DCFFC3BFC2FF292929FFBAB3B1FF3939
      39FF8F8A8AFFE7E6E6FFE7E6E6FFEAE9E9FF0000000000000000000000000000
      0000FDFDFDFF2A2A2AFF0F0F0FFF0F0F0FFF0F0F0FFF0C0C0CFF0000FFFF0000
      FFFF00000000000000000000000000000000000000000000000000000000C0C0
      C0FF5B5B5BFF5E5E5EFFCECECEFF292CACFF5E92FBFF2448D6FF212122FF0202
      02FFA4A3CDFF3A6AF9FF2055FBFFA8A9DAFF0000000000000000FAFAFAFFBFBF
      BFFF282828FF373737FF2C2C2CFF00000000AEAEAEFF2F2F2FFF2F2F2FFF2F2F
      2FFF6A6A6AFF000000000000000000000000ECE6E4FFFEFEFEFFFEFEFEFFF9FB
      FDFF58CDF9FF40DFFEFF38C1FEFF40A3FAFF8999CDFFC0B8B7FF262626FF3737
      37FF313131FFC3C2C2FFE8E7E7FFF3F3F3FF0000000000000000000000009E9E
      9EFFCDCDCDFFF5F5F5FF3D3D3DFF020202FF020202FF020202FF0000FFFF0000
      FFFF000000000000000000000000000000000000000000000000000000009C9C
      9CFF4B4B4BFF444444FFA8A8A8FFA8A8A8FFBBBAD0FFC2C2C2FF606060FF5C5C
      5CFFF6F6F6FFDADBDFFFCACBD7FF00000000000000000000000000000000B1B1
      B1FF202020FF202020FF202020FF393939FFFEFEFEFF191919FF1B1B1BFF1B1B
      1BFF191919FFFDFDFDFF0000000000000000ECE6E4FFFFFFFFFFFFFFFFFFFFFF
      FFFFC1E1FAFF2BD6FCFF2AC7FEFF30AAFEFF4E8AE0FFCFCACFFF202020FF2222
      22FF222222FF1D1D1DFFFBFBFBFFFEFEFEFF0000000000000000000000005555
      55FF595959FF898989FFF2F2F2FFAFAFAFFF131313FF0F0F0FFF0000FFFF0000
      FFFF00000000000000000000000000000000000000000000000000000000C2C2
      C2FF1B1B1BFF9D9D9DFF686868FF454545FF3B3B3BFFD1D1D1FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005C5C5CFF080808FF080808FF070707FFEEEEEEFFFDFDFDFF232323FF0606
      06FF060606FFABABABFF0000000000000000ECE6E4FFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFEFF4BC5F8FF1ECFFEFF1DB4FEFF2E8AF2FF9EABD0FFABA3A1FF0E0E
      0EFF0D0D0DFF0D0D0DFFC6C6C6FF000000000000000000000000000000002020
      20FF676767FF707070FF404040FF929292FF00000000000000000000FFFF0000
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000C0C0C0FF646464FF2C2C2CFF3B3B3BFF3A3A3AFF292929FFD3D3D3FF0000
      00000000000000000000000000000000000000000000000000006D6D6DFF5656
      56FFCFCFCFFF989898FF060606FF010101FFEAEAEAFF00000000FEFEFEFF9595
      95FF000000FFEFEFEFFF0000000000000000ECE6E4FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFBCE7FAFF0DC7FAFF11B5FEFF1795FBFF5E8AD7FFD6CCCBFFBEB2
      AEFF494848FF010101FFC8C8C8FF00000000000000000000000000000000C6C6
      C6FF6B6B6BFF303030FF393939FF343434FF717171FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EEEEEEFF1D1D1DFF2D2D2DFF2D2D2DFF2D2D2DFF2D2D2DFF282828FFEEEE
      EEFF000000000000000000000000000000000000000000000000626262FF3D3D
      3DFF737373FF353535FFF9F9F9FF000000000000000000000000000000000000
      000000000000000000000000000000000000ECE6E4FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE6F2FAFF3FCDF8FF08BCFDFF0AA1FEFF166AE4FFB0ACBCFFBAAB
      A7FFEDEBEBFF000000000000000000000000000000000000000000000000FEFE
      FEFF313131FF282828FF282828FF282828FF252525FFBCBCBCFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000787878FF1C1C1CFF1F1F1FFF1F1F1FFF1F1F1FFF1E1E1EFF7272
      72FF000000000000000000000000000000000000000000000000F8F8F8FF6E6E
      6EFF333333FF363636FF2E2E2EFF000000000000000000000000000000000000
      000000000000000000000000000000000000ECE6E4FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFAFAFAFF89D3F5FF06D3FCFF03A3FEFF0980FBFF4C6DBEFFCCBF
      BCFFFCFCFCFF0000000000000000000000000000000000000000000000000000
      0000E3E3E3FF181818FF181818FF181818FF181818FF222222FFFEFEFEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FCFCFCFF525252FF101010FF111111FF111111FF111111FF0C0C
      0CFFF7F7F7FF0000000000000000000000000000000000000000000000009B9B
      9BFF222222FF222222FF222222FF3D3D3DFF0000000000000000000000000000
      000000000000000000000000000000000000ECE6E4FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFCFBFAFFD6E4F3FF16C8F7FF00B6FEFF0390FEFF0A5EE5FFD9DE
      F0FF000000000000000000000000000000000000000000000000000000000000
      000000000000E5E5E5FF131313FF070707FF070707FF050505FFF8F8F8FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFCFF7A7A7AFF030303FF040404FF040404FF0303
      03FFEDEDEDFF0000000000000000000000000000000000000000000000000000
      0000575757FF0D0D0DFF0D0D0DFF0B0B0BFFF7F7F7FF00000000000000000000
      000000000000000000000000000000000000ECE6E4FFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFDFFFAF7F6FFF8F2F0FF65B5E4FF05CEFDFF31B4FEFF4C9CF8FFADBD
      E5FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F9F9F9FF6B6B6BFF000000FF0D0D0DFFFBFBFBFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D0D0D0FF4E4E4EFF010101FF1D1D
      1DFFF9F9F9FF0000000000000000000000000000000000000000000000000000
      000000000000C2C2C2FF111111FF040404FFF7F7F7FF00000000000000000000
      000000000000000000000000000000000000E2D9D5FFE9E2DFFFE9E2DFFFE9E2
      DFFFE9E1DFFFE4DBD7FFE0D5D1FFB7B7C0FF25A3E8FF69A1E0FF8398D3FFF5F7
      FBFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7F7FF585858FF404040FFF5F5F5FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7F7FF585858FF404040FFF5F5F5FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000919191FF5B5B5BFF1C1C1CFFEEEEEEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7F7FF585858FF404040FFF5F5F5FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFDFF212121FFBCBCBCFF444444FF6A6A
      6AFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFDFF212121FFBCBCBCFF444444FF6A6A
      6AFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D4D4D4FF111111FF545454FF4B4B4BFF3B3B
      3BFF000000000000000000000000000000000000000000000000F9FAFDFF736D
      C2FF8086CBFFFEFEFEFF00000000FDFDFDFF212121FFBCBCBCFF444444FF3A3B
      56FF6B65C3FFFBFAFBFF000000000000000000000000A68887FFB9A1A1FFBA9E
      9FFFB99D9DFFB89B9BFFB89999FFB69897FF9B807FFF202020FF2F2F2FFF2F2F
      2FFF6C6C6CFF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DCDCDCFF202020FF2F2F2FFF2F2F
      2FFF6C6C6CFF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000808080FF292929FF2F2F2FFF2D2D
      2DFF444444FF00000000000000000000000000000000FEFEFFFF0A10A7FF1149
      FDFF1042F9FF07049AFFFEFEFFFF00000000DCDCDCFF202020FF2F2F2FFF2F2F
      2FFF07186BFF0009ABFFFDFEFCFF0000000000000000B99E9FFFFAF9F9FFF9F6
      F6FFF8F2F3FFF5F0EFFFF4ECECFFF1E9E9FFF0E6E6FF191919FF181818FF1818
      18FF171717FFF7F7F7FF00000000000000000000000000000000000000000000
      000000000000000000005D5D5DFF686868FF686868FF191919FF181818FF1818
      18FF171717FFF7F7F7FF00000000000000000000000000000000F5F5F5FFB6B6
      B6FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6B6FFB5B5B5FF121212FF181818FF1717
      17FF161616FFF1F1F1FF000000000000000000000000D8D8EDFF668EFEFF154F
      FDFF1248FFFF0C43FEFF050597FFFEFEFEFFFEFEFEFF191919FF181818FF1818
      18FF171717FF0432F6FFD2D0ECFF0000000000000000BC9E9FFFFCFBFBFFFAF8
      F8FFF9F4F5FFF7F1F2FFF4EEEFFFF3ECEBFFD0C9C9FFE8DEDEFF1B1A19FF0303
      03FF030303FF696969FF00000000000000000000000000000000000000000000
      000000000000939393FF9F9F9FFF8D8D8DFFD0D0D0FFD9D9D9FF181818FF0303
      03FF030303FF696969FF000000000000000000000000F2F2F2FF696969FF7272
      72FFEBEBEBFFE8E8E8FFEDEDEDFFDDDDDDFFC1C1C1FF858585FF030303FF0101
      01FF030303FF636363FF000000000000000000000000FEFEFEFF2E3ABCFF1E53
      FBFF174EFFFF1249FFFF1241FEFF0C0999FF0D0788FF0131F5FF01071DFF0303
      03FF030303FF2A305DFFFBFCFCFF0000000000000000BD9FA0FFFEFEFEFFFDFB
      FBFFFBF8F8FFF8F3F4FFF7F1F2FFECE8E7FF565656FF494747FFD3CAC8FF7B76
      76FF1E1E1EFFA2A2A2FF00000000000000000000000000000000000000000000
      000000000000A6A6A6FFA0A0A0FFA4A4A4FF565656FF454545FFBDBDBDFF4949
      49FF0A0A0AFFA2A2A2FF0000000000000000000000006C6C6CFF9F9F9FFF7474
      74FF969696FF6E6E6EFFEDEDEDFF707070FF585858FF555555FF818181FF3737
      37FF272727FF898989FF00000000000000000000000000000000AFAEE0FF3144
      C5FF1552F9FF154FFCFF1249FEFF3861F3FF565656FF16214BFF0232E0FF0019
      87FF000318FF777791FF000000000000000000000000BD9EA0FFFFFFFFFFFEFE
      FEFFFBFAFAFFFCF8F8FFF9F4F5FFF3EEEEFF333233FF6B6868FF494949FF6561
      61FF000000000000000000000000000000000000000000000000000000000000
      000000000000ADADADFF9D9D9DFFF9F9F9FF323232FF636363FF494949FF3D3D
      3DFF5B5B5BFF00000000000000000000000000000000949494FFA3A3A3FF7373
      73FF999999FF707070FFEEEEEEFFA1A1A1FF595959FF2E2E2EFF464646FF4949
      49FF7F7F7FFF000000000000000000000000000000000000000000000000B4B2
      E1FF3042C1FF1854FCFF174EFEFF2052FAFF0F1735FF071D70FF494949FF050F
      5DFFAFB3E2FF00000000000000000000000000000000BD9EA0FFFFFFFFFFFFFF
      FFFFFEFEFEFFFDFBFBFFFBF7F8FFF9F4F5FFA8A4A5FF2F2F2FFF2F2F2FFF2F2F
      2FFF6A6A6AFF00000000000000000000000000000000D1D1D1FF676767FF6767
      67FF646464FFB5B5B5FFE5E5E5FFE2E2E2FF929292FF2F2F2FFF2F2F2FFF2F2F
      2FFF272727FF00000000000000000000000000000000949494FFA8A8A8FF7777
      77FFB8B8B8FFB3B3B3FFEEEEEEFFE3E3E3FF2B2B2BFF2F2F2FFF2F2F2FFF2E2E
      2EFF4A4A4AFF0000000000000000000000000000000000000000000000000000
      0000BAB9E3FF303DC0FF1B54FCFF154EFEFF0C31ADFF2F2F2FFF2F2F2FFF2F2F
      2FFF6A6A6AFF00000000000000000000000000000000BD9EA0FFFEFEFEFFFFFF
      FFFFFFFFFFFFFDFDFDFFFCFBFBFFFAF8F8FFF8F3F4FF191919FF1B1B1BFF1B1B
      1BFF191919FFFDFDFDFF000000000000000000000000909090FFABABABFF8484
      84FFDBDBDBFFBCBCBCFFFEFEFEFFFAFAFAFFEEEEEEFF191919FF1B1B1BFF1B1B
      1BFF191919FFFDFDFDFF000000000000000000000000949494FFADADADFF8888
      88FF727272FF6F6F6FFF6E6E6EFF6B6B6BFF666666FF161616FF1B1B1BFF1A1A
      1AFF141414FFFCFCFCFF0000000000000000000000000000000000000000FEFE
      FEFF09099DFF215EFCFF1E59FEFF1B53FEFF164EFDFF191919FF1B1B1BFF1B1B
      1BFF191919FFFDFDFDFF000000000000000000000000BD9EA0FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFCFCFCFFFCFAFAFFFBF6F7FFF4F2F2FF222121FF0606
      06FF060606FFABABABFF0000000000000000A6A6A6FFA5A5A5FFAAAAAAFF9797
      97FFDCDCDCFFC5C5C5FFFDFDFDFFFBFBFBFFEEEEEEFFE2E2E2FF1E1E1EFF0606
      06FF060606FFABABABFF000000000000000000000000949494FF6A6A6AFFFDFD
      FDFFFDFDFDFFF5F5F5FFEEEEEEFFE5E5E5FFDDDDDDFFC5C5C5FF050505FF0505
      05FF060606FF919191FF00000000000000000000000000000000FEFFFEFF0606
      9BFF2B6BFDFF2865FEFF2060FDFF2258FDFF1C54FCFF174FFCFF050C23FF0606
      06FF060606FFC3C3C2FF000000000000000000000000BD9EA0FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFCFAFAFFF7F7F7FFF7F3F0FF8680
      80FF000000FFEFEFEFFF0000000000000000A5A5A5FFADADADFFBABABAFFFCFC
      FCFFDBDBDBFFDBDBDBFFFEFEFEFFFBFBFBFFEFEFEFFFE3E3E3FFD7D7D7FF5353
      53FF000000FFEFEFEFFF000000000000000000000000949494FF6D6D6DFFFFFF
      FFFFFDFDFDFFF5F5F5FFEDEDEDFFE5E5E5FFDCDCDCFFD4D4D4FF707070FF3B3B
      3BFF010101FFE5E5E5FF0000000000000000000000000000000002039CFF3475
      FDFF3270FFFF2A6DFEFF2664FEFF1534D0FF2F3CC0FF1952FCFF164FFEFF0B2A
      94FF000000FF050595FF000000000000000000000000BD9EA0FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB19C9EFFBEA3A5FFB5A1A1FFB29193FFF1EE
      EFFF00000000000000000000000000000000A6A6A6FFA3A3A3FFBCBCBCFFB9B9
      B9FFB2B2B2FFA3A3A3FF9B9B9BFF6D6D6DFF606060FFCACACAFFCACACAFFD0D0
      D0FF0000000000000000000000000000000000000000949494FF6E6E6EFFFFFF
      FFFFFEFEFEFFF5F5F5FFEDEDEDFFE4E4E4FFDCDCDCFFD4D4D4FF737373FF8585
      85FFFFFFFFFF00000000000000000000000000000000EFEFF7FFADC1F9FF3D76
      FEFF3174FFFF336EFEFF1739CEFFB8B9E2FFB9B8E2FF2F41C2FF1952FEFF1651
      FEFF1449FEFF0D49FAFFD4D3E9FF0000000000000000BC9E9FFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFB59798FFFEFEFDFFE9E5E3FFE7DEDEFF0000
      000000000000000000000000000000000000A5A5A5FF9F9F9FFFFEFEFEFFF9F9
      F9FFEDEDEDFFE3E3E3FFD7D7D7FF898989FF686868FF00000000000000000000
      00000000000000000000000000000000000000000000959595FF707070FFFFFF
      FFFFFEFEFEFFF4F4F4FFEDEDEDFFE4E4E4FFDDDDDDFFD5D5D5FF727272FF8A8A
      8AFFFEFEFEFF00000000000000000000000000000000F9F9FBFF8D98E2FF4E84
      FCFF337AFAFF1B43D6FFB4B3DFFF0000000000000000B2B1E0FF3241C9FF1C56
      FEFF134FFEFF2346F1FFECEEF5FF0000000000000000BB9FA0FFFBFEFEFFFCFD
      FEFFFCFDFEFFFCFDFEFFFCFDFEFFB29698FFEFE9E9FFE0D4D2FF000000000000
      000000000000000000000000000000000000A6A6A6FFA2A2A2FFFDFDFDFFF9F9
      F9FFEDEDEDFFE2E2E2FFD7D7D7FF8A8A8AFF666666FF00000000000000000000
      00000000000000000000000000000000000000000000939393FF717171FFFFFF
      FFFFFEFEFEFFF4F4F4FFEDEDEDFFE4E4E4FFDCDCDCFFD4D4D4FF757575FF8D8D
      8DFFFEFEFEFF00000000000000000000000000000000000000005B54BEFF393B
      B4FF2529ADFFAAB0DEFF00000000000000000000000000000000B1B5E0FF151A
      B0FF202CB6FF403DACFF000000000000000000000000BEA1A0FFFCFEFDFFFBFE
      FEFFFBFEFEFFFBFEFEFFFBFEFEFFAD9494FFDDD0CFFF00000000000000000000
      000000000000000000000000000000000000A5A5A5FFAAAAAAFFFDFDFDFFF9F9
      F9FFEEEEEEFFE2E2E2FFD7D7D7FF8B8B8BFF686868FF00000000000000000000
      000000000000000000000000000000000000000000005A5A5AFF525252FF5151
      51FF525252FF515151FF515151FF515151FF515151FF515151FF525252FF5555
      55FF00000000000000000000000000000000000000000000000000000000FEFE
      FEFF000000000000000000000000000000000000000000000000000000000000
      0000FFFEFFFF00000000000000000000000000000000FEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF0000000000000000000000000000
      00000000000000000000000000000000000000000000868686FF888888FF8989
      89FF888888FF898989FF888888FF8A8A8AFFD1D1D1FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EBEBEBFFCDCDCDFFCDCDCDFFCDCD
      CDFFCDCDCDFFCDCDCDFFCDCDCDFFEFEFEFFF0000000000000000000000000000
      000000000000000000000000000000000000EBEBEBFFCDCDCDFFCDCDCDFFCDCD
      CDFFCDCDCDFFCDCDCDFFCDCDCDFFEFEFEFFFFEFEFEFFF9F9F9FFF6F6F6FFF5F5
      F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFE2E2E2FFC6C6C6FFC6C6C6FFC6C6
      C6FFC6C6C6FFC7C7C7FFC9C9C9FF000000000000000000000000000000000000
      0000000000000000000000000000959595FF5B5B5BFF585858FFF8F8F8FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EECA94FFECD1AAFFEDD5B2FFEFDA
      BDFFF0E0CAFFF2E6D6FFF3EBE0FF887A67FF0000000000000000000000000000
      000000000000000000000000000000000000EECA94FFECD1AAFFEDD5B2FFEFDA
      BDFFF0E0CAFFF2E6D6FFF3EBE0FF887A67FFE3E3E3FFACACACFF929292FF9090
      90FF909090FF909090FF909090FF909090FF867254FF857660FF0000FFFF0000
      FFFF887E72FF8C857BFFACA79FFF7D705FFF0000000000000000000000000000
      0000000000000000000000000000D6D6D6FF292929FF717171FF4B4B4BFF8D8D
      8DFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000828282FFD8CCBAFF20B2FFFFF8F7F4FF32B9
      FEFF33B9FEFF33B9FEFFE3F0FDFF87775CFF0000000000000000000000000000
      000000000000000000000000000000000000D8CCBAFF20B2FFFFF8F7F4FF32B9
      FEFF33B9FEFF33B9FEFFE3F0FDFF87775CFFCCA36BFFF1B967FFF1BB69FFF1BC
      6BFFF2BD6FFFF2BF71FFF3C075FFF3C17AFFF3C27DFFF1C481FF0000FFFF0000
      FFFFF2C98BFFEEC98CFF8A6E4DFF665A46FF0000000000000000000000000000
      000000000000000000000000000000000000949494FF292929FF2F2F2FFF2E2E
      2EFFA0A0A0FF0000000000000000000000000000000000000000000000000000
      00000000000000000000939393FF9C9C9CFFD6CCBDFFD7EBF5FFF5F5F6FFFCF8
      F7FFFDFAF8FFFEFBFAFFFEFEFEFF87775CFF0000000000000000000000000000
      00000000000000000000000000000000FFFF4744E9FFD7EBF5FFF5F5F6FFFCF8
      F7FFFDFAF8FFFEFBFAFFFEFEFEFF87775CFFEBB15AFFD0CAC0FFD8CEC1FFDCD1
      C3FFD3CDC5FFD4CFC7FFD5D0C9FFD6D1CBFFD6D2CEFFD6D4D0FF0000FFFF0000
      FFFFD8D7D6FFD1D3D8FFDAA046FF5C513FFF0000000000000000000000000000
      00000000000000000000000000000000000000000000171717FF181818FF1818
      18FF161616FFF9F9F9FF00000000000000000000000000000000000000000000
      00000000000000000000A5A5A5FFA1A1A1FFDBD0C1FF18CFFFFFF9F8F6FF12C3
      FFFF13C3FFFF13C2FFFFD8EBFFFF87765CFF0000000000000000000000000000
      00000000000000000000000000000000FFFF4945EAFF18CFFFFFF9F8F6FF12C3
      FFFF13C3FFFF13C2FFFFD8EBFFFF87765CFFE4AF5CFFEEEEEFFF70BFFCFF55A9
      FEFFE7EFF7FFEFF3F7FF9FCFFCFF9DCFFCFF9DCFFDFF9DCFFDFF0000FFFF0000
      FFFFDFEDFCFFE4E7ECFFD49C42FF5C503EFF000000006BC2E0FF74D2F0FF10A7
      DEFF09A2D2FFA3DDEDFF00000000FAFAFAFFE4E4E4FFDDDDDDFF0B0B0BFF0202
      02FF030303FF9F9F9FFF00000000000000000000000000000000000000000000
      00000000000000000000A4A4A4FFA7A7A7FFDED2C1FFDFD7CEFFDBD4C9FFDBD2
      C6FFDBD2C5FFDAD0C2FFDBCFBEFF87765CFF0000000000000000000000000000
      00000000000000000000000000000000FFFF4A46EAFFDFD7CEFFDBD4C9FFDBD2
      C6FFDBD2C5FFDAD0C2FFDBCFBEFF87765CFFE5B15FFFDDE1EEFF13D1FFFF21B9
      FFFFAED5F9FF93CDFAFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
      FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000060BFE0FFBDE2F4FF37CB
      F8FF43CFFBFF4BD2FCFF57D8FBFF526D73FF585858FF236073FFEFEFEFFF6F6F
      6FFF1D1D1DFFC4C4C4FF00000000000000000000000000000000C4C4C4FF7878
      78FFD5D5D5FFCCCCCCFFA5A5A5FFF1F1F1FFF7B543FFE3A401FFE4A604FFE4A8
      07FFE5AA0BFFE7AC0FFFE5AE17FF897963FF0000000000000000000000000000
      00000000000000000000000000000000FFFF523CC0FFE3A401FFE4A604FFE4A8
      07FFE5AA0BFFE7AC0FFFE5AE17FF897963FFE6B261FFECEDEEFF8ED3F9FF6DC7
      FBFFEEF2F6FFF3F4F6FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
      FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000046B6DCFF26A6DAFF4AD3
      FDFF50D6FEFF5ADBFDFF62E0FEFF56A2B1FF316068FF283F42FF474747FF1B64
      7AFF000000000000000000000000000000000000000000000000ACACACFF9191
      91FF969696FFF2F2F2FFA7A7A7FFF2F2F2FFEFB87BFFECB161FFEAAF5EFFE8AB
      5AFFE5A856FFD89B49FFEEB15DFFE0DFDFFF0000000000000000000000005555
      FFFF5555FFFF5555FFFF5555FFFF0000FFFF5D3DB4FF8D6598FF8D6597FF8D65
      96FFC3917AFFEEB15FFFEEB15DFFE0DFDFFFE6B464FFEBEDEEFFCFE3F7FFB7D9
      F8FFF7F7F6FFFAF8F6FFFAF7F7FFFAF8F8FFFAF8F8FFFBF9F9FF0000FFFF0000
      FFFFFEFEFCFFE4E7EBFFD59735FF989797FF0000000036B0DBFF38C3F5FF92E6
      FDFF5FDDFEFF68E3FEFF71E8FEFF7AEDFEFF1A3033FF2F2F2FFF2F2F2FFF2F2F
      2FFFA3A3A3FF0000000000000000000000000000000000000000C5C5C5FF9292
      92FF989898FFF5F5F5FFA7A7A7FFF1F1F1FFFDFDFDFFF3F3F3FFE8E8E8FFDDDD
      DDFFD2D2D2FF969696FF0000000000000000EBEBEBFFCDCDCDFFCDCDCDFF0000
      FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
      FFFFAAAAFFFF000000000000000000000000E6B465FFE3E7F0FF22BCFEFF26A2
      FFFFBCDAF9FFAAD5F9FF2AB7FEFF2DB8FEFF2DB8FEFF2DB8FEFF0000FFFF0000
      FFFF78C6FEFFE4E7EBFFD69A3BFFADADADFF0000000035B5E0FF47D1FEFFCCEA
      F5FF6EE7FEFF76EBFEFF7FEDFCFF89F7FFFF8AF3F8FF1A1A1AFF1B1B1BFF1B1B
      1BFF151515FFFEFEFEFF00000000000000000000000000000000C8C8C8FF9E9E
      9EFF8E8E8EFF8B8B8BFF6E6E6EFFCECECEFFD4D4D4FFCFCFCFFFCACACAFFC5C5
      C5FFBFBFBFFF909090FF0000000000000000EECA94FFECD1AAFFEDD5B2FFEFDA
      BDFFF0E0CAFFF2E6D6FFF3EBE0FF0000FFFF5555FFFF00000000000000000000
      000000000000000000000000000000000000E6B262FFEBECF0FF2BC9FEFF15BA
      FFFFD2E6F8FFD3E7F9FF55C2FDFF53C3FDFF53C3FDFF54C3FEFF0000FFFF0000
      FFFFB1DDFEFFE4E7EBFFD6993AFFADADADFF000000003CB4DAFF59D6FBFF1AA6
      D6FF76EDF7FF81F4FFFF8EF7FEFF90FAFDFF93FBFEFF8BEBEDFF0E0E0EFF0606
      06FF060606FFC9C9C9FF00000000000000000000000000000000CCCCCCFFFEFE
      FEFFFDFDFDFFF0F0F0FFE5E5E5FFDBDBDBFFC8C8C8FF7A7A7AFF000000000000
      000000000000000000000000000000000000D8CCBAFF20B2FFFFF8F7F4FF32B9
      FEFF33B9FEFF33B9FEFFE3F0FDFF0000FFFF5555FFFF00000000000000000000
      000000000000000000000000000000000000E5B66AFFDADCDFFFDDDFE4FFD8DD
      E4FFE4E4E5FFE4E4E5FFE4E5E6FFE5E5E7FFE6E6E8FFE6E7E8FF0000FFFF0000
      FFFFE7E7E9FFD3D7DEFFD69938FFADADADFF000000004EBBDDFF59E2FDFF6CE7
      FFFF26B4DAFF2FB6D7FF6CC8E0FFE2F8FDFF97FEFFFF99FEFEFF93FBFCFF446E
      71FF010101FF8FC8E0FF00000000000000000000000000000000D2D2D2FFFFFF
      FFFFFCFCFCFFF1F1F1FFE4E4E4FFDADADAFFCACACAFF808080FF000000000000
      000000000000000000000000000000000000D6CCBDFFD7EBF5FFF5F5F6FFFCF8
      F7FFFDFAF8FFFEFBFAFFFEFEFEFF0000FFFF5555FFFF00000000000000000000
      000000000000000000000000000000000000F3C277FFF4E9D9FFF4E2CBFFF3E0
      C7FFF3DFC4FFF3DDBFFFF3DCBBFFF3DAB7FFF3D8B4FFF2D7B3FFF2D6B0FFF1D5
      ACFFF1D3A9FFF1D9B5FFDC9C3BFFACACACFF0000000073C8E5FF69E6FDFF78EA
      FFFF7DEFFFFF8BF7FDFF8FF6FEFF75E9F4FF3DB6DCFF95D7E8FFDCF6F7FFCAF5
      FAFFC9F9FBFF67CDE6FF00000000000000000000000000000000DADADAFFFDFD
      FDFFFDFDFDFFF1F1F1FFE6E6E6FFDBDBDBFFC9C9C9FF838383FF000000000000
      000000000000000000000000000000000000DBD0C1FF18CFFFFFF9F8F6FF12C3
      FFFF13C3FFFF13C2FFFFD8EBFFFF0000FFFF5555FFFF00000000000000000000
      000000000000000000000000000000000000F6C47CFFEFAB18FFEAA90CFFEAAA
      0FFFEBAA13FFEBAC17FFEBAD1BFFECAD1FFFECAE23FFEDAF28FFEDAF2DFFEEB0
      31FFEEB135FFF2AD2FFFDF9A34FFADADADFF000000008BD1EAFF7AEBFFFF81F2
      FEFF88F4FEFF92FAFBFF96FEFAFF99FEFDFF99FEFDFF99FEFCFF96FEFDFFA2DB
      ECFFDFF0F9FFB9E2EEFF00000000000000000000000000000000D8D8D8FFFDFD
      FDFFFDFDFDFFF3F3F3FFEAEAEAFFE0E0E0FFD3D3D3FF8B8B8BFF000000000000
      000000000000000000000000000000000000DED2C1FFDFD7CEFFDBD4C9FFDBD2
      C6FFDBD2C5FFDAD0C2FFDBCFBEFF3B2F91FF8E8EFFFF00000000000000000000
      000000000000000000000000000000000000F7C67EFFE69909FFE09700FFE098
      00FFE19900FFE19A00FFE19B00FFE29B00FFE29C00FFE29E00FFE39F00FFE3A0
      00FFE3A000FFEA9E00FFE09E39FFB9B9B9FF0000000085D5EBFF87F0FFFF8EF9
      FFFF96FBFCFF30B6DBFF66C6E1FF9CDAEDFFB2EDF2FFC2FEFEFFB7FEF8FFAFDE
      F0FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7B543FFE3A401FFE4A604FFE4A8
      07FFE5AA0BFFE7AC0FFFE5AE17FF897963FF0000000000000000000000000000
      000000000000000000000000000000000000F1AA47FFFEDBA8FFFDD498FFFDD4
      95FFFDD394FFFDD292FFFCD190FFFCD08EFFFCCF8BFFFBCD89FFFBCD87FFFBCC
      85FFFBCA82FFFBCF8FFFCD9F63FFE2E2E2FF0000000070C8E2FF2BA9D4FF39B1
      D5FF52BDDBFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0B97CFFEEB463FFEEB363FFEEB2
      61FFEEB15FFFEEB15FFFEEB15DFFE0DFDFFF0000000000000000000000000000
      000000000000000000000000000000000000E9B378FFC6924BFFC28E48FFC18C
      46FFC18B45FFC18B45FFC18B43FFB7ADA2FFCDC4B9FFCDC4B9FFCDC4B9FFCDC4
      B9FFCDC4B9FFD0C7BDFFEDECECFFFDFDFDFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EBEBEBFFCDCDCDFFCDCDCDFFCDCD
      CDFFCDCDCDFFCDCDCDFFCDCDCDFFEFEFEFFF0000000000000000000000000000
      000000000000000000000000000000000000EBEBEBFFCDCDCDFFCDCDCDFFCDCD
      CDFFCDCDCDFFCDCDCDFFCDCDCDFFEFEFEFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EBEBEBFFCDCDCDFFCDCDCDFFCDCD
      CDFFCDCDCDFFCDCDCDFFCDCDCDFFEFEFEFFF000000000000000000000000FEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFEECA94FFECD1AAFFEDD5B2FFEFDA
      BDFFF0E0CAFFF2E6D6FFF3EBE0FF887A67FF0000000000000000F9FAFDFF736D
      C2FF8086CBFFFEFEFEFF0000000000000000EECA94FFECD1AAFFEDD5B2FFEFDA
      BDFFF0E0CAFFF2E6D6FFF3EBE0FF887A67FF0000000000000000000000000000
      0000000000000000000000000000B7AEA3FF8F7C61FF857255FF857255FF8572
      55FF857256FF857256FF857256FF857256FF0000000000000000000000000000
      000000000000000000000000000000000000EECA94FFECD1AAFFEDD5B2FFEFDA
      BDFFF0E0CAFFF2E6D6FFF3EBE0FF887A67FF000000000000000000000000B69A
      9AFFEDE6E5FFE9E3E1FFE8DFDEFFE8DAD8FFD8CCBAFF20B2FFFFF8F7F4FF32B9
      FEFF33B9FEFF33B9FEFFE3F0FDFF87775CFF00000000FEFEFFFF0A10A7FF1149
      FDFF1042F9FF07049AFFFEFEFFFF00000000D8CCBAFF20B2FFFFF8F7F4FF32B9
      FEFF33B9FEFF33B9FEFFE3F0FDFF87775CFF0000000000000000000000000000
      0000000000000000000000000000F1BC6EFFF2CF9DFFF2D2A0FFF3D4A5FFF4D6
      A9FFF5D8ADFFF5DAB3FFF6DDBAFFF7E0C0FF000000000000000000000000FEFE
      FEFFB5B5B5FFB6B6B6FFB6B6B6FFB7B7B7FFD8CCBAFF20B2FFFFF8F7F4FF32B9
      FEFF33B9FEFF33B9FEFFE3F0FDFF87775CFF000000000000000000000000B99F
      9FFFFBF8F9FFFAF5F6FFF9F3F3FFF4F0F1FFD6CCBDFFD7EBF5FFF5F5F6FFFCF8
      F7FFFDFAF8FFFEFBFAFFFEFEFEFF87775CFF00000000D8D8EDFF668EFEFF154F
      FDFF1248FFFF0C43FEFF050597FFFEFEFEFFD6CCBDFFD7EBF5FFF5F5F6FFFCF8
      F7FFFDFAF8FFFEFBFAFFFEFEFEFF87775CFF0000000000000000000000000000
      0000000000000000000000000000D6BB93FFDCDBDBFFCBD2DAFFD4D7DAFFDADA
      DAFFDCDCDBFFDDDDDCFFDDDDDCFFDDDDDCFF0000000000000000FEFEFEFF4F4F
      4FFF8C8C8CFFEFEFEFFFE8E8E8FFF1F1F1FFD6CCBDFFD7EBF5FFF5F5F6FFFCF8
      F7FFFDFAF8FFFEFBFAFFFEFEFEFF87775CFF000000000000000000000000BD9F
      A0FFFDFBFBFFFBF9F9FFFAF5F6FFF7F2F3FFDBD0C1FF18CFFFFFF9F8F6FF12C3
      FFFF13C3FFFF13C2FFFFD8EBFFFF87765CFF00000000FEFEFEFF2E3ABCFF1E53
      FBFF174EFFFF1249FFFF1241FEFF0C0999FFDBD0C1FF18CFFFFFF9F8F6FF12C3
      FFFF13C3FFFF13C2FFFFD8EBFFFF87765CFF0000000000000000000000000000
      0000000000000000000000000000DBC19BFFC5E2F8FF1BABFFFF44A1FDFFF8F7
      F4FF97CEFAFF4EB8FDFF4FB8FDFF4FB8FDFF00000000000000005A5A5AFFA0A0
      A0FF919191FF888888FF929292FFF2F2F2FFDBD0C1FF18CFFFFFF9F8F6FF12C3
      FFFF13C3FFFF13C2FFFFD8EBFFFF87765CFF000000000000000000000000BD9F
      A0FFFEFEFEFFFCFCFCFFFBF9F9FFF9F4F5FFDED2C1FFDFD7CEFFDBD4C9FFDBD2
      C6FFDBD2C5FFDAD0C2FFDBCFBEFF87765CFF0000000000000000AFAEE0FF3144
      C5FF1552F9FF154FFCFF1249FEFF0E43FEFFDED2C1FFDFD7CEFFDBD4C9FFDBD2
      C6FFDBD2C5FFDAD0C2FFDBCFBEFF87765CFFC0C0C0FF242424FF242424FF2424
      24FF242424FF242424FFFBFBFBFFDCC39DFFAFDCFAFF0AD9FFFF2CB4FEFFF4F4
      F5FF63C5FCFF24CBFEFF25CBFEFF25CBFEFF0000000000000000575757FFA6A6
      A6FF939393FF8A8A8AFF969696FFF0F0F0FFDED2C1FFDFD7CEFFDBD4C9FFDBD2
      C6FFDBD2C5FFDAD0C2FFDBCFBEFF87765CFF000000000000000000000000BC9E
      9FFFFEFEFEFFFEFEFEFFFCFBFBFFFBF9F9FFF7B543FFE3A401FFE4A604FFE4A8
      07FFE5AA0BFFE7AC0FFFE5AE17FF897963FF000000000000000000000000B4B2
      E1FF3042C1FF1854FCFF174EFEFF1349FFFFF7B543FFE3A401FFE4A604FFE4A8
      07FFE5AA0BFFE7AC0FFFE5AE17FF897963FFB5B5B5FF020202FF434343FF0101
      01FF020202FF050505FF010101FFDCC7A7FFF8F7F6FFBADAF7FFDAE9F6FFF6F6
      F6FFFCF9F6FFFCF7F7FFFDF8F8FFFEF9F8FF0000000000000000565656FFA9A9
      A9FF979797FFC1C1C1FFB5B5B5FFF0F0F0FFF7B543FFE3A401FFE4A604FFE4A8
      07FFE5AA0BFFE7AC0FFFE5AE17FF897963FF000000000000000000000000BC9E
      9FFFFEFEFEFFFEFEFEFFFEFEFEFFFDFBFBFFEFB77AFFEDB262FFEDB060FFEDAF
      5EFFECAD5BFFE9AA58FFEEB15DFFE0DFDFFF0000000000000000000000000000
      0000BAB9E3FF303DC0FF1B54FCFF154EFEFF99767BFFBF8F63FFBE8759FFE0A4
      5BFFEEB15FFFEEB15FFFEEB15DFFE0DFDFFFB5B5B5FF131313FFFAFAFAFFCFCF
      CFFFF7F7F7FFB1B1B1FF060606FF030303FFEAF2F8FF66B7FCFF96C7FAFFF9F8
      F6FFE2EDF8FFC0DEFAFFC1DFFAFFC1DFFAFF0000000000000000555555FFAEAE
      AEFFA9A9A9FF6F6F6FFF707070FF6C6C6CFFB98245FFD19746FFD19645FFD79B
      4AFFD79A48FFD99C4AFFEEB15DFFE0DFDFFF000000000000000000000000BC9E
      9FFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFBFBFBFFFBF9F9FFFAF5F6FFF4F2
      F2FFF1ECEAFFE6DCDCFF0000000000000000000000000000000000000000FEFE
      FEFF09099DFF215EFCFF1E59FEFF1B53FEFF174FFEFF1349FFFF0944FEFF0B09
      9EFFFEFEFFFF000000000000000000000000B6B6B6FF484848FF484848FFFEFE
      FEFFE3E3E3FF313131FF292929FF212121FF0B0B0BFF17CEFFFF2DA8FFFFF2F4
      F7FF42B6FDFF16C0FFFF17C0FFFF17C0FFFF0000000000000000545454FFB4B4
      B4FFFCFCFCFFFDFDFDFFF8F8F8FFEFEFEFFFE8E8E8FFDFDFDFFFD8D8D8FFCBCB
      CBFF898989FF969696FF0000000000000000000000000000000000000000BC9E
      9FFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFDFBFBFFFBF8F8FFF6F6
      F6FFF4F1EEFFE6DCDCFF00000000000000000000000000000000FEFFFEFF0606
      9BFF2B6BFDFF2865FEFF2060FDFF2258FDFF1C54FCFF1850FEFF134AFEFF0E44
      FEFF08099CFFFEFEFEFF0000000000000000B6B6B6FF979797FFFFFFFFFFE1E1
      E1FFF9F9F9FFDEDEDEFF727272FF383838FFE7F2FBFF45CAFEFF7CC9FDFFFDFC
      F9FFDBEBFAFFA2D5FDFFA3D6FDFFA3D6FDFF0000000000000000555555FFB8B8
      B8FFFFFFFFFFFFFFFFFFF7F7F7FFEFEFEFFFE8E8E8FFDFDFDFFFD7D7D7FFCFCF
      CFFF8C8C8CFF969696FF0000000000000000000000000000000000000000BC9E
      9FFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDF8F8FFF3F5F3FFF6F2
      F1FFF0EDEAFFE2DADBFF0000000000000000000000000000000002039CFF3475
      FDFF3270FFFF2A6DFEFF2664FEFF1534D0FF2F3CC0FF1952FCFF1750FFFF1349
      FEFF1044FDFF01019DFF0000000000000000B7B7B7FFD2D2D2FFD9D9D9FFCDCD
      CDFFC7C7C7FFC0C0C0FF616161FFE0CDB0FFD9D7D5FFE0DAD3FFDCD7D2FFD9D6
      D1FFD9D5D1FFD9D5D0FFD9D5D0FFDAD6D1FF0000000000000000555555FFBFBF
      BFFFFFFFFFFFFFFFFFFFF7F7F7FFF0F0F0FFE8E8E8FFDFDFDFFFD7D7D7FFCFCF
      CFFF929292FF969696FF0000000000000000000000000000000000000000BC9E
      9FFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFAF9898FFFEFDFBFFF8F2
      F0FFB59698FFFEFEFEFF000000000000000000000000EFEFF7FFADC1F9FF3D76
      FEFF3174FFFF336EFEFF1739CEFFB8B9E2FFB9B8E2FF2F41C2FF1952FEFF1651
      FEFF1449FEFF0D49FAFFD4D3E9FF00000000B8B8B8FF4D4D4DFF4D4D4DFF4D4D
      4DFF4C4C4CFF454545FFFEFEFEFFFDE3BCFFFCD493FFFCD391FFFCD18FFFFCD0
      8DFFFCD08AFFFCCE88FFFCCD85FFFCCC84FF0000000000000000545454FFC4C4
      C4FFFFFFFFFFFFFFFFFFF7F7F7FFEFEFEFFFE7E7E7FFDEDEDEFFD7D7D7FFCFCF
      CFFF959595FF969696FF0000000000000000000000000000000000000000BC9E
      9FFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFB79697FFFCFEFDFFBAA2
      A3FFFEFEFEFF00000000000000000000000000000000F9F9FBFF8D98E2FF4E84
      FCFF337AFAFF1B43D6FFB4B3DFFF0000000000000000B2B1E0FF3241C9FF1C56
      FEFF134FFEFF2346F1FFECEEF5FF000000000000000000000000000000000000
      0000000000000000000000000000FBC877FFE3A500FFE4A703FFE4A805FFE5A9
      09FFE5AB0CFFE5AB0FFFE6AC13FFE6AD16FF0000000000000000565656FFCACA
      CAFFFFFFFFFFFFFFFFFFF7F7F7FFEFEFEFFFE7E7E7FFDFDFDFFFD7D7D7FFCFCF
      CFFF9B9B9BFF969696FF0000000000000000000000000000000000000000B89E
      9EFFFCFDFEFFFEFDFEFFFEFDFEFFFEFDFEFFFEFDFEFFB9999DFFB9ACAAFFFEFD
      FDFF0000000000000000000000000000000000000000000000005B54BEFF393B
      B4FF2529ADFFAAB0DEFF00000000000000000000000000000000B1B5E0FF151A
      B0FF202CB6FF403DACFF00000000000000000000000000000000000000000000
      0000000000000000000000000000FDD79CFFE79B1AFFE79D19FFE89E18FFE89F
      18FFE89F18FFE8A017FFE8A017FFE8A116FF0000000000000000B3B3B3FF5454
      54FF525252FF525252FF515151FF515151FF515151FF515151FF515151FF5252
      52FF545454FFF0F0F0FF0000000000000000000000000000000000000000A987
      87FFA68989FFAA8A8AFFAA8A8AFFAA8A8AFFAA8A8AFFA28683FFFDFDFDFF0000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FEFF000000000000000000000000000000000000000000000000000000000000
      0000FFFEFFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1BC7BFFF7CA8DFFF5C88AFFF5C788FFF5C7
      87FFF5C686FFF5C584FFF5C482FFF5C480FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFCFCFFF4F4F4FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C453A00A1381C00AD47
      24009A331F009F5E5C0000000000000000000000000000000000A15A56009D36
      1F00AC462400A2391D0099443F000000000000000000F8F4F3FFEAD7D3FFE7D2
      CEFFE6D0CDFFE5D0CDFFE5CFCCFFE4CECCFFE3CDCCFFE3CCCCFFE2CBCBFFE2CB
      CBFFE2CBCBFFE5D1D1FFF7F4F4FF000000000000000000000000000000008F23
      1100A8411F00983019008C585500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EBEBEBFFCDCDCDFFCDCDCDFFCDCD
      CDFFCDCDCDFFCDCDCDFFCDCDCDFFEFEFEFFFA34D3D00DA773300F79A4500FDA1
      4900F2944200A53C1900A74924000000000000000000A7472200B44D2000F395
      4200FCA14800F89B4500CD682D009A443F00F8F4F3FFAB624FFFC76933FFE489
      43FFE68C44FFE58B44FFE58A44FFE48943FFE38843FFE28743FFE28642FFE286
      42FFDD8140FFB4502AFF9B5454FFFAF7F7FF000000000000000000000000B24B
      2000F99D4600F0914100A1361700942914000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EECA94FFECD1AAFFEDD5B2FFEFDA
      BDFFF0E0CAFFF2E6D6FFF3EBE0FF887A67FFB2481900F9933300FF993500FF99
      3500FF993500E77F2C009F3213000000000000000000AE461B00F6903200FF99
      3500FF993500FF993500F58F320098290E00ECDAD4FFCB692DFFFF9E40FFFF9E
      40FFFF9E40FFFF9E40FFFF9E40FFFF9E40FFFF9E40FFFF9E40FFFF9E40FFFF9E
      40FFFF9E40FFFF9E40FFB04922FFF0E3E3FF000000000000000000000000BF56
      1E00FF993500FF993500F68F3200A5361200992E120000000000000000000000
      000000000000000000000000000000000000000000000000000054BCD7FFBFE4
      F3FF00000000000000000000000000000000D8CCBAFF20B2FFFFF8F7F4FF32B9
      FEFF33B9FEFF33B9FEFFE3F0FDFF87775CFFC0531600FF8F2100FF8F2100FF8F
      2100FF8F2100EB7B1C00A3320D000000000000000000B2471500F7882000FF8F
      2100FF8F2100FF8F2100FF8F2100A2310B00EAD6D0FFE87D25FFFF932AFFFF93
      2AFFFF932AFFFF932AFFFF932AFFFF932AFFFF932AFFFF932AFFFF932AFFFF93
      2AFFFF932AFFFF932AFFD0621CFFEEE0E0FF000000000000000000000000C254
      1500FF8F2100FF8F2100FF8F2100FA8A1F00B13F0B008D1D0800000000000000
      0000000000000000000000000000000000000000000000000000069ACCFF30BB
      F2FF36BEF4FF1FB2E2FF12A2D6FF8CD0EBFFD6CCBDFFD7EBF5FFF5F5F6FFFCF8
      F7FFFDFAF8FFFEFBFAFFFEFEFEFF87775CFFC2520E00FF840C00FF840C00FF84
      0C00FF840C00EB720A00A32F05000000000000000000B5470F00F87E0C00FF84
      0C00FF840C00FF840C00FF840C00A32E0400EBD7D0FFEB7814FFFF8812FFFF88
      12FFFF8812FFFF8813FFFF8813FFFF8813FFFF8813FFFF8813FFFF8813FFFF88
      13FFFF8813FFFF8813FFD35E0DFFEEE0E0FF000000000000000000000000C452
      0C00FF840C00FF840C00FF840C00FF840C00F77D0B00AF380200992503000000
      000000000000000000000000000000000000000000000000000019ADDDFFB2EA
      F9FF3FCBFCFF4ED1FEFF51DAFEFF58DCFEFFDBD0C1FF18CFFFFFF9F8F6FF12C3
      FFFF13C3FFFF13C2FFFFD8EBFFFF87765CFFC4530A00FF7F0000FF810100FF81
      0100FF800000EC6F0000A63001000000000000000000B8480B00F87A0100FF80
      0000FF810100FF800100FF7F0000A6300100ECD8D0FFEC7508FFFF8606FFFF86
      06FFFF8606FFFF8406FFFF8205FFFF7F02FFFF7F01FFFF7F01FFFF7F01FFFF7F
      01FFFF7F01FFFF7F01FFD35801FFEEE0E0FF000000000000000000000000C753
      0700FF810100FF810100FF810100FF7F0000FF7F0000FA7B0000A6300000A12C
      00000000000000000000000000000000000000000000000000003ABDECFF85CB
      E6FF4ED4FEFF58DAFFFF62DFFFFF69E4FFFFDED2C1FFDFD7CEFFDBD4C9FFDBD2
      C6FFDBD2C5FFDAD0C2FFDBCFBEFF87765CFFC7580C00FF880B00FF890D00FF89
      0D00FF890D00EC750600A9390B000000000000000000BB4D0D00F8810700FF89
      0D00FF890D00FF890D00FF870A00A9350300EDD9D0FFEC7C12FFFF9321FFFF93
      21FFFF9321FFFF9321FFFF9220FFFF8C16FFFF8301FFFF8200FFFF8200FFFF82
      00FFFF8200FFFF8200FFD45A00FFEEE0E0FF000000000000000000000000C959
      0B00FF890D00FF8A0F00FF8A0F00FF890E00FF870900FF840200FB7F0000B33D
      0000AB380500000000000000000000000000000000000000000053CAF4FF20B3
      DFFF5FDDFAFF66E2FFFF70E7FEFF78EDFEFFF7B543FFE3A401FFE4A604FFE4A8
      07FFE5AA0BFFE7AC0FFFE5AE17FF897963FFC95E1100FF952400FF982B00FF98
      2B00FF982B00ED811B00AC4114000000000000000000BE530E00F98D1F00FF98
      2B00FF982B00FF982B00FF942100AB3B0800EDD9D0FFED841FFFFFA241FFFFA2
      41FFFFA241FFFFA241FFFFA241FFFFA240FFFF9728FFFF8601FFFF8500FFFF85
      00FFFF8500FFFF8500FFD45E00FFEEE0E0FF000000000000000000000000CB5E
      0F00FF972700FF992D00FF992D00FF972A00FF992C00FF982A00FF952400F689
      1B009E2C0300000000000000000000000000000000000000000063D0F6FF50D0
      FCFFC4F9FDFF74EAF9FF7DEFFCFF85F5FEFFC6B67BFFD9B363FFD9B263FFDAB2
      60FFE1B15FFFDDAA5BFFEEB15DFFE0DFDFFFCC631500FFA23E00FFA74900FFA7
      4900FFA74900EE8B2E00AF481F000000000000000000C15E2000F9983300FFA7
      4900FFA74900FFA74900FF9F3800AF410C00EEDAD1FFEE8B2CFFFFB260FFFFB2
      60FFFFB260FFFFB260FFFFB260FFFFB260FFFFB15FFFFFA84BFFFF9520FFFF8E
      12FFFF8C0EFFFF8C0DFFD66205FFEEE1E0FF000000000000000000000000CD63
      1400FFA44200FFA84C00FFA84C00FFA74900FFA74900FFA84C00FFA84C00F390
      30009C2B0500000000000000000000000000000000000000000087DDFBFF5FDD
      FDFF81CCDDFFA0F6FDFF88F5FEFF8FFCFCFF92FBFDFF95FCFEFF98FEFEFF9AFE
      FAFFBBFDFFFF4CC2E2FF0000000000000000CE681A00FFAE5700FFB56700FFB5
      6700FFB56700EE944100B15128000000000000000000C4662C00F9A24800FFB5
      6700FFB56700FFB56700FFAA4F00B1451000EEDBD1FFEE9238FFFFC07FFFFFC0
      7FFFFFC07FFFFFC07FFFFFC07FFFFFC07FFFFFC07FFFFFC07FFFFFC07FFFFFBA
      71FFFFB669FFFFB667FFD67125FFEFE2E0FF000000000000000000000000D068
      1900FFB15E00FFB76B00FFB76B00FFB76B00FFB76B00FFB76B00FAA14300AF42
      0E00B2522D00000000000000000000000000000000000000000092E5FCFF67E5
      FDFF6CE9FEFF6EE5F9FF58D5EDFF37BBE0FFE0F8FCFF98FEFCFF99FEFFFFA0FC
      FAFFC0FEFCFFB9FDFCFF0000000000000000D16C1E00FFBA7000FFC48500FFC4
      8500FFC48500EF9E5300B45832000000000000000000C76E3400F9AC5D00FFC4
      8500FFC48500FFC48500FFB56600B44B1400EFDCD1FFEF9944FFFFCF9CFFFFCF
      9CFFFFCF9CFFFFCF9CFFFFCF9CFFFFCF9CFFFFCF9CFFFFCF9CFFFFCF9CFFFFCF
      9CFFFFCF9CFFFFCF9CFFD87B38FFEFE2E0FF000000000000000000000000D26D
      1E00FFBD7800FFC58900FFC58900FFC58900FFC58900FAAB5B00A73A0C00AC4F
      33000000000000000000000000000000000000000000000000009FEDFEFF73E9
      FEFF7AEEFEFF83F3FEFF88F7FEFF95FBFFFF91FCFBFF52CFE5FF22B1D6FF3FB6
      D7FF82CAE3FFC4E7F0FF1EA3CDFF00000000D3712300FFC68800FFD1A100FFD1
      A100FFD1A100F0A76500B7603A000000000000000000CA743D00FAB67100FFD1
      A100FFD1A100FFD1A100FFC07C00B74F1800F0DDD2FFF09C4BFFFFDCB9FFFFDC
      B9FFFFDCB9FFFFDCB9FFFFDCB9FFFFDCB9FFFFDCB9FFFFDCB9FFFFDCB9FFFFDC
      B9FFFFDCB9FFFFDCB9FFD88040FFEFE3E1FF000000000000000000000000D572
      2300FFCA9100FFD3A500FFD3A500FFD3A500F7B47300B8521A00B0532F000000
      00000000000000000000000000000000000000000000000000009DF1FDFF7EF1
      FDFF87F5FEFF95FAFCFF97FEFBFF97FBFDFF98FFFEFF9AFEFDFF93FDFDFF94FD
      FDFF00000000000000000000000000000000D6762700FFD1A000FFDFBD00FFDF
      BD00FFDFBD00F0B07600BA6744000000000000000000CD7B4300FAC08400FFDF
      BD00FFDFBD00FFDFBD00FFCA9100BA541B00F0DED2FFEE8D2CFFFFEAD4FFFFEA
      D4FFFFEAD4FFFFEAD4FFFFEAD4FFFFEAD4FFFFEAD4FFFFEAD4FFFFEAD4FFFFEA
      D4FFFFEAD4FFFFEAD4FFD67226FFF0E3E1FF000000000000000000000000D776
      2700FFD5A900FFE1C100FFDFBD00FBBA7500BE5C2200AB4C2400000000000000
      0000000000000000000000000000000000000000000000000000B9FAFCFF8AF5
      FBFF93FBFAFF82EDF9FFADDDEBFF76CBDFFF4DBADEFF49B8DEFF71C8E5FF81D6
      ECFF00000000000000000000000000000000D1762F00FBDAB800FFEBD700FFEB
      D700FFEBD700EFAD7100BF765A000000000000000000CC835300F9B77200FFEB
      D700FFEBD700FFEBD700F7CEA700B5532100F3E3D8FFDB741AFFFFBC71FFFFF6
      EDFFFFF6EDFFFFF6EDFFFFF6EDFFFFF6EDFFFFF6EDFFFFF6EDFFFFF6EDFFFFF6
      EDFFFFF6EDFFFFB563FFBA5011FFF2E7E5FF000000000000000000000000D97B
      2C00FFE0C100FFECD900FBBD7A00BC541700B56F560000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DCF1
      F5FF9ED8ECFFAADBEEFF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000CF865500E6AB7800FAE0C600FCE3
      C900F3CDAC00C0622A00BA6D3C000000000000000000C1743C00D3793300F6D2
      B000FDE4C900F7DDC600D9956900BE745500F9F7F5FFCA906AFFD97620FFE78E
      3BFFE89F5FFFE69F60FFE59E5FFFE49C5FFFE39B5EFFE2995DFFE1985DFFE094
      57FFDC7B2CFFBF5513FFB1776AFFFAF8F8FF000000000000000000000000D475
      2800FBCFA100F3C09000C15F2100BB6231000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE885800CB783F00CA78
      4000BF693400C696810000000000000000000000000000000000D19E7F00CA75
      3A00CD7A4100C26E3C00C47D5B000000000000000000FBF9F8FFF7EDE7FFF6EA
      E4FFF6EAE4FFF5E9E4FFF4E9E3FFF4E8E3FFF3E8E3FFF3E7E3FFF3E7E3FFF2E6
      E2FFF2E6E2FFF3E8E5FFFAF9F8FF00000000000000000000000000000000C36A
      2B00CD712A00C3652700AC877500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FFFF0000FFFF0000
      FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
      FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D4D4D5FF382319FF412012FF3E1F11FF3F1D10FF3D1D11FF352421FFEFF0
      F0FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FFFF0000FFFF0000
      FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
      FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7FFFD67F37FFFEA046FFFFA045FFFEA045FFFDA044FFA45022FFBEBE
      BFFF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E9D5C1FF4E3F35FF432D1AFFC7C8C7FF000000000000
      000000000000000000000000000000000000000000000000FFFF0000FFFF0000
      FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
      FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007E7F7FFFD96D0DFFFE8610FFFE850FFFFD850EFFFE860EFFA54208FFBEBF
      BFFF000000000000000000000000000000000000000000000000000000000000
      000000000000DFD3C9FF3B2719FFEBAB6AFFF7C38BFF4E2F13FFC8C8C7FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000828383FF636363FF555556FF555555FF555555FF555555FF717171FF0000
      000000000000000000000000000000000000000000000000000000000000D7D7
      D6FF696969FFD96D04FFFE8400FFFD8400FFFE8400FFFF8500FFA64400FF9F9F
      9FFFE2E2E2FF0000000000000000000000000000000000000000000000000000
      0000D2D4D3FF392418FFEAA25EFFFFE0BDFFFDE0BFFFF6BE82FF4E2F14FFC8C8
      C7FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000878686FF6A6A6AFFF5BE83FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000868687FFB86C34FFEA8F47FFE88D46FFE88B46FFE68B45FF873F1FFFC2C2
      C2FF000000000000000000000000000000000000000000000000868688FF743A
      08FF8F460BFFEA7B08FFFE8C0DFFFE8D10FFFF8D10FFFE8B0CFFCC5E04FF7B2E
      00FF481800FFC2C4C3FF0000000000000000000000000000000000000000D4CD
      C9FF372217FFE79648FFFECB92FFFECC94FFFECC93FFFECB94FFF5B065FF4E2E
      13FFC8C8C6FF0000000000000000000000000000000000000000000000000000
      00000000000000000000585452FFB26E2EFFD08D4CFF3F3833FFF4B269FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7FFFD8721AFFFE8E20FFFF8D1EFFFD8D1EFFFE8D1FFFA4460FFFBEBF
      BFFF000000000000000000000000000000000000000000000000636363FFD66F
      08FFFEA139FFFEAB4DFFFFAB4DFFFEAB4FFFFEAA4DFFFEAB4EFFFEAA4DFFFD97
      26FF9C4200FFB0B0AFFF00000000000000000000000000000000BAB9B9FF351F
      15FFE78832FFFEB86AFFFFB96AFFFEB86AFFFEB86AFFFFB86AFFFEB969FFF6A4
      48FF543013FFCCCDCDFF00000000000000000000000000000000000000000000
      000000000000565250FFB36C2FFFFFE2C2FFFDE5C8FFD59352FF3F3733FFF5A5
      4BFF000000000000000000000000000000000000000000000000000000000000
      00007E7E7FFFD96B04FFFE8300FFFD8200FFFE8200FFFF8200FFA64200FFBEBF
      BFFF000000000000000000000000000000000000000000000000FEFEFEFF3F37
      33FFD68531FFFEBE74FFFEBE78FFFEBF78FFFEBF78FFFEBF78FFFDBC72FFAE5C
      1AFF545050FF0000000000000000000000000000000000000000AAABAAFFB750
      00FFFD8B0CFFFE9D31FFFEA23BFFFEA43EFFFDA440FFFEA33CFFFEA034FFFE93
      1CFFE67805FF555555FF00000000000000000000000000000000000000000000
      000054514FFFB06325FFFECE99FFFED3A1FFFED2A1FFFFD19DFFD58C41FF3F38
      32FFE67C0DFF0000000000000000000000000000000000000000BFBEC0FF5741
      34FF4F2E1FFFDD7104FFFE8500FFFE8500FFFE8500FFFF8600FFAF4701FF4621
      1FFF413131FFCDCFCEFF0000000000000000000000000000000000000000FEFE
      FEFF3F3832FFD58C41FFFFD19DFFFED2A1FFFED3A1FFFECE99FFB06325FF5451
      4FFF000000000000000000000000000000000000000000000000E0E2E1FF4131
      31FF46211FFFAF4701FFFF8600FFFE8500FFFE8500FFFE8500FFDD7104FF4F2E
      1FFF574134FFBFBEC0FF00000000000000000000000000000000000000005450
      50FFAE5C1AFFFDBC72FFFEBF78FFFEBF78FFFEBF78FFFEBE78FFFEBE74FFD685
      31FF3F3733FFBFBEC0FF00000000000000000000000000000000555555FFE678
      05FFFE931CFFFEA034FFFEA33CFFFDA440FFFEA43EFFFEA23BFFFE9D31FFFD8B
      0CFFB75000FFAAABAAFF00000000000000000000000000000000000000000000
      0000FEFEFEFF3F3733FFD59352FFFDE5C8FFFFE2C2FFB36C2FFF565250FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BEBFBFFFA64200FFFF8200FFFE8200FFFD8200FFFE8300FFD96B04FF7E7E
      7FFF000000000000000000000000000000000000000000000000B0B0AFFF9C42
      00FFFD9726FFFEAA4DFFFEAB4EFFFEAA4DFFFEAB4FFFFFAB4DFFFEAB4DFFFEA1
      39FFD66F08FF636363FF00000000000000000000000000000000CCCDCDFF5430
      13FFF6A448FFFEB969FFFFB86AFFFEB86AFFFEB86AFFFFB96AFFFEB86AFFE788
      32FF351F15FFBAB9B9FF00000000000000000000000000000000000000000000
      000000000000FEFEFEFF3F3833FFD08D4CFFB26E2EFF585452FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BEBFBFFFA4460FFFFE8D1FFFFD8D1EFFFF8D1EFFFE8E20FFD8721AFF7F7F
      7FFF000000000000000000000000000000000000000000000000C2C4C3FF4818
      00FF7B2E00FFCC5E04FFFE8B0CFFFF8D10FFFE8D10FFFE8C0DFFEA7B08FF8F46
      0BFF743A08FF868688FF0000000000000000000000000000000000000000C8C8
      C6FF4E2E13FFF5B065FFFECB94FFFECC93FFFECC94FFFECB92FFE79648FF3722
      17FFD4CDC9FF0000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFEFF6A6A6AFF878686FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C2C2C2FF873F1FFFE68B45FFE88B46FFE88D46FFEA8F47FFB86C34FF8686
      87FF00000000000000000000000000000000000000000000000000000000E2E2
      E2FF9F9F9FFFA64400FFFF8500FFFE8400FFFD8400FFFE8400FFD96D04FF6969
      69FFD7D7D6FF0000000000000000000000000000000000000000000000000000
      0000C8C8C7FF4E2F14FFF6BE82FFFDE0BFFFFFE0BDFFEAA25EFF392418FFD2D4
      D3FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF555555FF555555FF555555FF555556FF636363FFFEFE
      FEFF000000000000000000000000000000000000000000000000000000000000
      0000BEBFBFFFA54208FFFE860EFFFD850EFFFE850FFFFE8610FFD96D0DFF7E7F
      7FFF000000000000000000000000000000000000000000000000000000000000
      000000000000C8C8C7FF4E2F13FFF7C38BFFEBAB6AFF3B2719FFDFD3C9FF0000
      000000000000000000000000000000000000000000000000FFFF0000FFFF0000
      FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
      FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BEBEBFFFA45022FFFDA044FFFEA045FFFFA045FFFEA046FFD67F37FF7F7F
      7FFF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C7C8C7FF432D1AFF4E3F35FFE9D5C1FF000000000000
      000000000000000000000000000000000000000000000000FFFF0000FFFF0000
      FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
      FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009A9BF0FF352421FF3D1D11FF3F1D10FF3E1F11FF412012FF382319FFD4D4
      D5FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FFFF0000FFFF0000
      FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
      FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000675E6000675E6000675E6000675E6000675E6000675E6000675E6000675E
      600000000000000000000000000000000000000000000000000000000000585D
      C00008009B001918B6000014B3000021C5000B1FCA000010B10013089A000701
      9600524CB900000000000000000000000000000000000000000000000000BEB8
      B9005A454D00663C5300594942005E445100663C53007244500065454A006545
      4A0065454A00683D580056494B00000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000000000675E
      6000F6F8F900F6F8F900CCA49000B1695700A3544400CCA49000F6F8F900F6F8
      F90061585A0000000000000000000000000000000000000000002B20A6001B13
      9C00BDC8E400A2BBF3000633F8000635EA000635EA000031EC00888DC400909E
      B1001D0FA300221A9C000000000000000000000000000000000000000000301B
      990007119B0009079C0007119B00362AAC00CDC3EE00F1E2E600EFDFD900E7D8
      D500EADED200DDCCCF00D5C4C700847376000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000061585A00D6D7
      D600FFFFFF00F9F6EE00CCA49000B1695700A3544400CCA49000F1F0F100F6F8
      F900C4C7BC005D5455000000000000000000000000003630A5001B20AB00F4FF
      FF00FFFFF800F2FAFF001B41FB000033FF000033FF000033FF00DEF2F700F1E1
      E800B3BEC6001C1B990023279D0000000000000000008E93D000301B99006C73
      C200002EF200002EF200002ADC004755A800220A9800ABBED900EDEFF000FBEF
      E300EDEEDE00F1E2E600E7D8D500847376000000000000000000424242004242
      42000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000061585A00D9E4
      E300FFFFFF00F7F0EE00C8927F00AC594400A54F3B00CCA49000F6F8F900F0F7
      F600D6D7D60061585A000000000000000000978EDE000F0D9500F5EBFB00FFFF
      FF00F9FFF700B8C7E1001F23AA000410940000009900191CA600B1C1E500F9FF
      F700F9F1F200BDB3C40004109400978EDE0000000000120EA300E6E3FC00FFFF
      FF001436CF000312BC003858E100F8F5F000A69EC3000C0D8D00D8DCF400F8EF
      EC00E9EBE500F6E5F000E7D8D500847376000000000042424200846F84008080
      80004242420000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000675B5500E3E7
      E100FFFFFF00FAE9E900C1827400A3583B00A04F2C00CCA49000FFFFFF00FFFF
      FF00E6DEDC00675B550000000000000000001B139C007481CB00F4FFFF00FFFF
      FF009598D50007019600564FC20000000000000000007D70CC00000099008E8D
      D700F4FFFF00E2EDE5005E5EAA001209A6002A39AD007F8DCF00F4FDFF00362A
      AC00332CA5009A91D400282BAB00444BB800F4F7FF00434EAA00444BB800FBEF
      E300F6E5F000F6E5F000E9DCDE0089727600000000004242420080808000D6D6
      D600CCCCCC000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000043396700B9B6
      C600FFFFFF00F9F6EE00C5918700A3583B00A3583B00D0AD9F00FFFFFF00FFFF
      FF00C9C5C800454066000000000000000000000099007F97FB005976FF009CB8
      E7000C02A2008681D60000000000000000000000000000000000978EDE000A07
      9300A8B1F0005C7CF9001938D30000009900120EA3006480FF001C34CC00141D
      9200FFFFFF00FEF8F900FFFFFF001720A0001D44E200002ADC0007119B00F8F5
      F000F2F3EA00F2F3EA00E9DCDE0089727600000000000000000042424200B4B4
      B400DEDDDE00CCCCCC009999990099999900D6D6D600FFFFFF00ECECEC004242
      420000000000000000000000000000000000000000003005B0000300B7003027
      9800B9BEE100FFFFFF00F0DADA00D9ADA200E0B5B000F0E6E000FFFFFF00D5D3
      E6003E3E9A000800A1003005B000000000000C15B300759BFB00033AFB00021C
      BC000F0D9500000000000000000000000000000000000000000000000000191C
      A600111FD6000033FF000031EC0006109E001B129F005382FC000011B4003325
      9500F4FDFF00F4FDFF00F4FDFF006253BF00061ED6000033FF001A19AF00F9ED
      FF00F6F8F800FBEFE300F3E6E80089727600424242004242420042424200CCCC
      CC00BCBCBC00ABABAB004242420042424200ABABAB00D6D6D600FFFFFF004242
      420042424200424242000000000000000000000000003108B3004441E8000800
      BD0010019E00B1B2CA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B9BDD7001F1D
      95000800AF002021E0003108B30000000000030EA5008BA8F9000935EE000012
      BE00333399000000000000000000000000000000000000000000000000002428
      AC000012BE000033FF000935EE0000089C001F1AA50090A4FC004A51BE000000
      9900EFFFF900FFFFF700FFFFF7001B129F003858E1000E32FA0012189F00FEF0
      F400EFEEF800EFEEF800F3E6E800897276004242420080808000ABABAB00CCCC
      CC008C8C8C004242420000000000000000004242420099999900ECECEC00ECEC
      EC008080800042424200000000000000000000000000360FB7007B86EA00443F
      EE000800BD00000099008092C000FFFFFF00FFFFFF009999CC0005099C00150A
      B500292EEC000429FC003108B30000000000030EA5009EB2F9001727EF000319
      AE001209A6000000000000000000000000000000000000000000000000001F1E
      A4000019CD000033FF000033FF0000089C004F49BE008E93D000D3DEDB004550
      A400171799004D49AE0007119B00585DC000EFFFF9004A51BE006666CC00FFFF
      F700F6F8F800F6F8F800F3E6E800897276004242420080808000B4B4B400BCBC
      BC008C8C8C00424242000000000000000000424242008C8C8C00DEDDDE00DEDD
      DE008080800042424200000000000000000000000000000000006874CF007C8D
      FD00424AE600180AD0001000A2006969B3006E67C0000900A000170EC3003138
      F500093BFF000124D500000000000000000000009900AAC4F3008CA2FF00849F
      B90008009B008184CE00000000000000000000000000000000009999CC000800
      9B009EB2F9005C7CF9000033FF000C02A200000000001B129F00CDC3EE00D3DE
      DB001739C2000615B1003554CD00F4F7FF00B7B3DC001A1FA300DFE8F500FFFF
      FF00FFFFFF00FFF5EF00FFF5EF0089727600424242004242420042424200BCBC
      BC00ABABAB00ABABAB004242420042424200B4B4B400BCBCBC00DEDDDE004242
      42004242420042424200000000000000000000000000000000004029BA0089A9
      FF006477FF003F43F7002B18CA000800A1000800AF002918D8001F38F6000033
      FF000340FF000018B700000000000000000012109F00918CD700FFFFFF00D3CF
      CA008784B5000A0793003E49B10000000000000000005354BC00000099008184
      CE00FFFFFF00FFFFFF006F73C6001209A60000000000ABBED9001E119D006C73
      C20090A4FC007B8EFF006A85F800585DC0002C14AE00C7D2E000FFFFFF00C8C3
      C400C8C3C400C8C3C400C9BCBE008C7579000000000000000000424242009999
      9900B4B4B400ABABAB008C8C8C008C8C8C00B4B4B400D6D6D600BCBCBC004242
      4200000000000000000000000000000000000000000000000000360FB7006699
      FF005279FC003C61FF00293AF8002127E1002127E1001031FF000033FF000033
      FF000033FF00210AAC0000000000000000008E94DB001B09A200DEF2F700FFF5
      F800C3C2BE009E94B20023279D0006109E000F0D95001411AA00A8A6CA00FFFF
      FF00FFFFFF00E6F1FF0016059C008693C700000000000000000000000000403A
      8B001317A6001A1FA3001A1FA3006666CC00EFEEF800FEF8F900D3C8D8009478
      7800B9A1A1009E948D00635053008C757900000000004242420080808000ABAB
      AB008C8C8C00B4B4B400BCBCBC00BCBCBC00BCBCBC00ABABAB00BCBCBC008080
      8000424242000000000000000000000000000000000000000000000000003D29
      C6004E7AF7003366FF00093BFF00224FF5002C52FC000033FF000033FF000031
      EB00030FB300000000000000000000000000000000003F2DA2002F27A900E6F1
      FF00FDFDEB00CFD1EF001234C4000021C5000127D3001B40E400FFFFFF00FFFF
      FF00E9FFFC002428AC002B209E0000000000000000000000000000000000807B
      7C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CCCCCC00AFA7
      A800FEF0F4007964670079646700000000000000000042424200808080008080
      80004242420042424200ABABAB00ABABAB004242420042424200808080008080
      8000424242000000000000000000000000000000000000000000000000000000
      00001D20B600193FE700093BFF003C61FF003C61FF000033FF000124D500210C
      B4000000000000000000000000000000000000000000000000002B209E001F1E
      A400CED9F400E6F1FF006B80F900516DFF00516DFF003F6BFC00C8E0F800CBDB
      E7001F1EA4001F1EA40000000000000000000000000000000000000000007872
      7300FEF8F900FFFFFF00FFFFFF00FFFFFF00F6F8F800FFFFFF00D5C4C700A594
      970080676B007B5D620000000000000000000000000000000000424242004242
      4200000000004242420080808000808080004242420000000000424242004242
      4200000000000000000000000000000000000000000000000000000000000000
      000000000000000000000213CC004574FF00496FFD00000CC100000000000000
      000000000000000000000000000000000000000000000000000000000000585D
      C000000099002825AA004A63D1004E72E8005267E0003D4ACE002825AA000800
      9B00524CB900000000000000000000000000000000000000000000000000807B
      7C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DDCCCF006350
      5300796467000000000000000000000000000000000000000000000000000000
      0000000000004242420042424200424242004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001B0AAC00230DAE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000786FBF002825AA001411AA001411AA001F23AA00625AC5000000
      000000000000000000000000000000000000000000000000000000000000BEB8
      B90056494B0056494B0065454A0065454A0065454A0065454A0060474B007365
      6700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000414141004141
      4100414141000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000016199600164C
      FF00161996000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001D1591000614AD0000089B00000000000000
      000000000000080799000A12A200000A96000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000424242004242
      4200424242000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000414141004141410041414100CCCC
      CC00414141004141410041414100000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000016199600164C
      FF00161996000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001517AB001B54FD000F31E900000A96000000
      0000000A96000024EF000B30FF00000AA6000000000000000000000000000000
      000000000000000000000000000000000000424242004242420042424200CCCC
      CC004242420042424200424242000000000000000000200E9B00200E9B00200E
      9B000000000000000000000000000000000041414100CCCCCC00CCCCCC00E6E6
      E600E6E6E600E6E6E60041414100000000000000000000000000000000000000
      000000000000424242004242420042424200424242000000000016199600164C
      FF00161996000000000000000000000000000000000000000000000000000000
      00000000000042424200424242000D0A9C002C53DD002155FC00223BE9000000
      A1000F31E9000033FF000025E4000F00A1000000000000000000000000000000
      00000000000042424200424242004242420042424200BCBCBC00DEDDDE00E6E6
      E600E6E6E600DEDDDE004242420000000000200E9B00657CDD00A9CAFD004558
      C5000000990000000000000000004141410041414100B3B3B300A3A3A3004141
      4100A3A3A300E6E6E60041414100414141000000000000000000424242004242
      420000000000424242001619960016199600161996001619960016199600164C
      FF00161996001619960016199600161996000000000000000000424242004242
      4200000000004242420080808000808080000C019D002C53DD002155FC001B54
      FD001340FF000F31E90008079900000000000000000000000000424242004242
      42000000000042424200808080004242420042424200BCBCBC00A5A5A5004242
      4200AEAEAE00E6E6E6004242420042424200000099001A50F8001A50F8001A50
      F8002953D800000099000000000041414100A3A3A300B3B3B300414141001A50
      F80041414100E6E6E600CCCCCC004141410000000000424242006D6A8E008B8B
      8B00424242004242420016199600164CFF00164CFF00164CFF00164CFF00164C
      FF00164CFF00164CFF00164CFF00164CFF000000000042424200835F83008080
      80004242420042424200E8E6E800F7F7F7004242420000089B002155FC001759
      FE00184FF6000000A10000000000000000000000000042424200846F84008080
      80004242420042424200E6E6E60042424200A5A5A500BCBCBC00424242008080
      800042424200DEDDDE00C5C5C50042424200000099000D2DDD001A50F8001A50
      F8001A50F8002953D800000099004141410041414100A3A3A300A3A3A3004141
      4100A3A3A300CCCCCC00414141004141410000000000424242008B8B8B00CCCC
      CC00CCCCCC00B8B8B8001619960016199600161996001619960016199600164C
      FF00161996001619960016199600161996000000000042424200857A8500D6D6
      D600CCCCCC00E8E6E800EEEEEE00F7F7F7000D0A9C001758D2002766FF00215E
      FA001F4DFF00063BEA0000089B0000000000000000004242420080808000CCCC
      CC00CCCCCC00E6E6E600E6E6E6004242420042424200AEAEAE00999999004242
      4200A5A5A500C5C5C500424242004242420000000000000099000D2DDD001A50
      F8001A50F8001A50F8002849E1002849E10041414100A3A3A300A3A3A300B3B3
      B300B3B3B300B3B3B3004141410000000000000000000000000042424200B8B8
      B800CCCCCC00CCCCCC006D6A8E006D6A8E00A1A1A100A1A1A10016199600164C
      FF0016199600000000000000000000000000000000000000000042424200B4B4
      B400DEDDDE00CCCCCC00999999000D0E8E002961E6003474FF001A51E2000008
      9B00374DE9001B54FD00103EE9000C019D00000000000000000042424200B4B4
      B400E6E6E600CCCCCC0099999900999999004242420099999900A5A5A500B4B4
      B400B4B4B400B4B4B40042424200000000000000000000000000200E9B000D2D
      DD001A50F8001A50F8001A50F8001A50F800414141004141410041414100A3A3
      A30041414100414141004141410000000000424242004242420042424200CCCC
      CC00CCCCCC00A1A1A1004242420042424200A1A1A100A1A1A10016199600164C
      FF0016199600424242000000000000000000424242004242420042424200C5C5
      C500C5C5C500AEAEAE00424242001E14B400407FFF002D59EA00020F99004242
      42000C0098002F4EE700224DF8000010AB00424242004242420042424200C5C5
      C500C5C5C500AEAEAE0042424200424242004242420042424200424242009999
      9900424242004242420042424200000000000000000000000000AB00CF000000
      99000D2DDD001A50F8001A50F8001A50F8001A50F8000D2DDD00414141004141
      410041414100000000000000000000000000424242008B8B8B00B8B8B800CCCC
      CC008B8B8B00424242000000000000000000424242006D6A8E0016199600164C
      FF00161996004242420000000000000000004242420080808000AEAEAE00C5C5
      C5008C8C8C0042424200000000001F109A002324AA00000A9600EEEEEE00EEEE
      EE00808080000D0A9C001E1DA300080799004242420080808000AEAEAE00C5C5
      C5008C8C8C004242420000000000000000004242420099999900424242004242
      4200424242004242420000000000000000000000000000000000000000000000
      99000D2DDD001A50F8001A50F8001A50F8001A50F8000D2DDD00000099000000
      000000000000000000000000000000000000424242008B8B8B00B8B8B800B8B8
      B8008B8B8B00424242000000000000000000424242006D6A8E00161996001619
      9600161996004242420000000000000000004242420080808000B4B4B400C5C5
      C5008C8C8C00424242000000000000000000424242008C8C8C00E8E6E800DEDD
      DE00808080004242420000000000000000004242420080808000B4B4B400C5C5
      C5008C8C8C00424242000000000000000000424242008C8C8C00E6E6E600DEDD
      DE00808080004242420000000000000000000000000000000000000099000D2D
      DD001A50F8001A50F8001A50F8001A50F8001A50F8001A50F8000D2DDD00200E
      9B0000000000000000000000000000000000424242004242420042424200B8B8
      B800B8B8B800A1A1A1004242420042424200B8B8B800B8B8B800B8B8B8004242
      420042424200424242000000000000000000424242004242420042424200BCBC
      BC00AEAEAE00AEAEAE004242420042424200BCBCBC00BCBCBC00DEDDDE004242
      420042424200424242000000000000000000424242004242420042424200BCBC
      BC00AEAEAE00AEAEAE004242420042424200B4B4B400C5C5C500DEDDDE004242
      42004242420042424200000000000000000000000000000099000D2DDD001A50
      F8001A50F8001A50F8002849E1002849E1001A50F8001A50F8001A50F8000D2D
      DD00000099000000000000000000000000000000000000000000424242008B8B
      8B00B8B8B800A1A1A1008B8B8B008B8B8B00B8B8B800CCCCCC00B8B8B8004242
      4200000000000000000000000000000000000000000000000000424242009999
      9900B4B4B400AEAEAE008C8C8C008C8C8C00BCBCBC00D6D6D600BCBCBC004242
      4200000000000000000000000000000000000000000000000000424242009999
      9900B4B4B400AEAEAE008C8C8C008C8C8C00B4B4B400DEDDDE00BCBCBC004242
      420000000000000000000000000000000000200E9B004558C5001A50F8001A50
      F8001A50F8002849E10000009900000099002953D8001A50F8001A50F8001A50
      F8000D2DDD0000009900000000000000000000000000424242008B8B8B00A1A1
      A1008B8B8B00B8B8B800B8B8B800B8B8B800B8B8B800A1A1A100B8B8B8008B8B
      8B0042424200000000000000000000000000000000004242420080808000A5A4
      A5008C8C8C00B4B4B400BCBCBC00BCBCBC00BCBCBC00A5A4A500BCBCBC008080
      800042424200000000000000000000000000000000004242420080808000A5A5
      A5008C8C8C00B4B4B400BCBCBC00BCBCBC00BCBCBC00A5A5A500BCBCBC008080
      800042424200000000000000000000000000200E9B00A9CAFD001A50F8001A50
      F8002953D800000099000000000000000000000099002953D8001A50F8001A50
      F8001A50F80000009900000000000000000000000000424242008B8B8B008B8B
      8B004242420042424200A1A1A100A1A1A10042424200424242008B8B8B008B8B
      8B00424242000000000000000000000000000000000042424200808080008080
      80004242420042424200A5A4A500A5A4A5004242420042424200808080008080
      8000424242000000000000000000000000000000000042424200808080008080
      80004242420042424200A5A5A500A5A5A5004242420042424200808080008080
      800042424200000000000000000000000000200E9B00657CDD00A9CAFD00657C
      DD000000990000000000000000000000000000000000000099004558C500A9CA
      FD00657CDD00200E9B0000000000000000000000000000000000424242004242
      420000000000424242008B8B8B008B8B8B004242420000000000424242004242
      4200000000000000000000000000000000000000000000000000424242004242
      4200000000004242420080808000808080004242420000000000424242004242
      4200000000000000000000000000000000000000000000000000424242004242
      4200000000004242420080808000808080004242420000000000424242004242
      42000000000000000000000000000000000000000000200E9B00200E9B00200E
      9B00000000000000000000000000000000000000000000000000200E9B00200E
      9B00200E9B000000000000000000000000000000000000000000000000000000
      0000000000004242420042424200424242004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004242420042424200424242004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004242420042424200424242004242420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000414141004141
      4100414141000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000414141004141
      4100414141000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000414141004141
      4100414141000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000414141004141
      4100414141000000000000000000000000007551520075515200755152007551
      520075515200755152007551520075515200414141004141410041414100CCCC
      CC00414141004141410041414100000000000000000000000000000000000000
      000000000000000000000000000000000000414141004141410041414100CCCC
      CC00414141004141410041414100000000000000000000000000000000000000
      000000000000000000000000000000000000414141004141410041414100CCCC
      CC00414141004141410041414100000000000000000000000000000000003333
      330033333300333333003333330033333300414141004141410041414100CCCC
      CC004141410041414100414141000000000075515200E8DEDC00F0E6E700E8DE
      DC00E8DEDC00E2D5D300E0CECC00DBC9C60041414100C4C4C400D6D6D600E6E6
      E600E6E6E600DEDEDE0041414100000000000000000000000000000000000000
      00000000000000000000000000000000000041414100C4C4C400D6D6D600E6E6
      E600E6E6E600DEDEDE0041414100000000000000000000000000000000003333
      33003333330033333300333333003333330041414100BCBCBC00D6D6D600E6E6
      E600E6E6E600DEDEDE0041414100000000000000000000000000333333008484
      8400B6B6B600B6B6B600BCBCBC00BCBCBC0041414100BCBCBC00D6D6D600E6E6
      E600E6E6E600DEDEDE00414141000000000075515200FFFFFF00F9F7F700F5ED
      EE00F5EDEE00F0E6E700E8DEDC004141410041414100BCBCBC00AAAAAA004141
      4100ACA8AC00E6E6E60041414100414141000000000000000000000000000000
      00000000000000000000000000004141410041414100BCBCBC00ACA8AC004141
      4100ACA8AC00E6E6E60041414100414141000000000000000000333333008383
      8300B6B6B600B6B6B600BCBCBC004141410041414100BCBCBC00A5A5A5004141
      4100ACACAC00E6E6E6004141410041414100000000003333330099999900A5A5
      A500A5A5A50033333300EFEFEF004141410041414100BCBCBC00ACACAC004141
      4100ACACAC00E6E6E600414141004141410075515200FFFFFF00FFFFFF00F9F1
      F300F6EAED00F0E6E700F0E6E70041414100A5A5A500BCBCBC00414141007551
      520041414100DEDEDE00C4C4C400414141000000000007506700075067000750
      670007506700075067000750670041414100A5A5A500BCBCBC00414141000750
      670041414100DEDEDE00C4C4C40041414100000000003333330099999900A5A5
      A500A5A5A50033333300EFEFEF0041414100A5A5A500BCBCBC00414141008383
      830041414100D6D6D600C5C5C500414141003333330099999900A5A5A5009999
      99009999990033333300DEDEDE0041414100A5A5A500BCBCBC00414141008484
      840041414100D6D6D600C5C5C5004141410075515200FFFFFF00FFFFFF00F9F7
      F700F9F1F300F6EAED00F0E6E7004141410041414100AAAAAA00999999004141
      4100ACA8AC00C4C4C40041414100414141000C82AB000C82AB005FA4D10061B9
      E40040AED9004AB1DA004FB5DB004141410041414100AAAAAA00999999004141
      4100ACA8AC00CCCCCC0041414100414141003333330099999900A5A5A5009999
      99009999990033333300DEDEDE004141410041414100ACACAC00999999004141
      4100A5A5A500C5C5C500414141004141410033333300A5A5A500A5A5A500A5A5
      A500999999000A4494000A4494004141410041414100ACACAC00999999004141
      4100A5A5A500C5C5C500414141004141410075515200FFFFFF00FFFFFF00FFFF
      FF00F9F7F700F9F1F300F6EAED00F0E6E7004141410099999900A5A5A500B3B3
      B300B3B3B300B3B3B30041414100000000000C82AB000C82AB0088BBD6008BEB
      FF0033CCFF004CD7FF0059DDFF0066E3FF004141410099999900A5A5A500B3B3
      B300B3B3B300B3B3B30041414100000000003333330099999900A5A5A500A5A5
      A5009999990033333300E6E6E600EFEFEF004141410099999900A5A5A500B6B6
      B600B6B6B600B6B6B600414141000000000033333300A5A5A500A5A5A500A5A5
      A500DEDEDE000A449400D6EEFF00D6EEFF004141410099999900A5A5A500B6B6
      B600B6B6B600B6B6B600414141000000000075515200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F9F7F700F9F1F300F6EAED004141410041414100414141009999
      9900414141004141410041414100000000000C82AB000C82AB000C82AB009DE2
      F80061E2FE0061E2FE006DECFF007CEDFF004141410041414100414141009999
      99004141410041414100414141000000000033333300A5A5A500A5A5A500A5A5
      A500DEDEDE00DEDEDE00E6E6E600DEDEDE004141410041414100414141009999
      99004141410041414100414141000000000033333300A5A5A500A5A5A5003333
      3300333333000A449400E4EEFF00A5E8FF004141410041414100414141009999
      99004141410041414100414141000000000075515200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F9F7F700F9F1F300F6EAED00F6EAED00414141004141
      4100414141000000000000000000000000000C82AB0038BEE8000C82AB009CD4
      E6008BEBFF0068E6FF0076EEFC0087F6FA008DFAFB008DFAFB00414141004141
      41004141410007506700000000000000000033333300A5A5A500A5A5A5003333
      3300333333003333330033333300333333003333330033333300414141004141
      4100414141003333330000000000000000003333330099999900B6B6B600EFEF
      EF00EFEFEF0030C8F100AFF5FF007FE4FD0088DFFF0075CDFC00414141004141
      41004141410033333300000000000000000075515200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF6F800FFF6F800FFF6F8007551
      5200000000000000000000000000000000000C82AB005ACFEC000C82AB0087CD
      E30097F1FF007BF6FF0087F6FA0087F6FA0087F6FA0087F6FA0087F6FA006ADD
      ED00B2F0F5000750670000000000000000003333330099999900B6B6B600EFEF
      EF00EFEFEF00E6E6E600E6E6E600DEDEDE00D6D6D600CCCCCC00CCCCCC009999
      9900747474003333330000000000000000003333330099999900C5C5C500FFFF
      FF00FFFFFF00FFFFFF0030C8F10083F2FF0067E0FA004ECFFF004ECFFF005FB2
      FF000A44940033333300000000000000000075515200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E6E6E600E6E6E600E6E6E600E6E6E6007551
      5200000000000000000000000000000000000C82AB005ACFEC0049D1F7000C82
      AB00D0F4FC00E3FEF200E3FEF200E3FEF200E3FEF200E3FEF200E8FFFF00FFFF
      FF00FFFFFF000750670007506700000000003333330099999900C5C5C500FFFF
      FF00FFFFFF00FFFFFF00EFEFEF00EFEFEF00E6E6E600DEDEDE00DEDEDE00A5A5
      A500747474003333330000000000000000003333330099999900C5C5C500FFFF
      FF00FFFFFF00F8F8F800EFEFEF0030C8F10057E7FF004ECFFF0043CFFE0045AD
      FF003BA2F8000A449400000000000000000075515200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00755152007551520075515200755152007551
      5200000000000000000000000000000000000C82AB005DCDE9006DECFF000C82
      AB000C82AB000C82AB000C82AB000C82AB000C82AB000C82AB000C82AB000C82
      AB000C82AB000C82AB0007506700000000003333330099999900C5C5C500FFFF
      FF00FFFFFF00F8F8F800EFEFEF00E6E6E600E6E6E600DEDEDE00DEDEDE00A5A5
      A5007B7B7B0033333300000000000000000033333300A5A5A500C5C5C500FFFF
      FF00FFFFFF00F8F8F800EFEFEF00E6E6E60030C8F10032E9FF003CCDFF0026C5
      FF0031A2FF00449EFD000A4494000000000075515200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0075515200FFFFFF00E6E6E600755152000000
      0000000000000000000000000000000000000C82AB0073D2EF0087F6FF0076EE
      FC0074EEF20074EEF20074EEF20074EEF20074EEF20074EEF20074EEF2000C82
      AB000000000000000000000000000000000033333300A5A5A500C5C5C500FFFF
      FF00FFFFFF00F8F8F800EFEFEF00E6E6E600E6E6E600D6D6D600D6D6D600A5A5
      A5007B7B7B0033333300000000000000000033333300ACACAC00CCCCCC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F8F8F800EFEFEF0030C8F10012EBF40023C3
      FD0000BCFF0022B8FE003D99E8000A44940075515200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0075515200E6E6E60075515200000000000000
      0000000000000000000000000000000000000C82AB000C82AB00CEF2FD00D3FF
      FF00CEFFF400CEFFF400CEFFF400CEFFF400CEFFF400CEFFF400CEFFF4000C82
      AB000000000000000000000000000000000033333300ACACAC00D6D6D600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F8F8F800EFEFEF00E6E6E600E6E6E600A5A5
      A50083838300333333000000000000000000333333008D8D8D00B6B6B600D6D6
      D600CCCCCC00CCCCCC00CCCCCC00C5C5C500C5C5C500BCBCBC0030C8F10000E0
      FD0006C2F8004DD0F800135DBB000A44940075515200E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600755152007551520000000000000000000000
      000000000000000000000000000000000000000000000C82AB000C82AB000C82
      AB000C82AB000C82AB000C82AB000C82AB000C82AB000C82AB000C82AB000C82
      AB0000000000000000000000000000000000333333008D8D8D00B6B6B600D6D6
      D600D6D6D600CCCCCC00CCCCCC00C5C5C500C5C5C500BCBCBC00BCBCBC00A5A5
      A5007B7B7B003333330000000000000000000000000033333300333333003333
      33003333330033333300333333003333330033333300333333003333330030C8
      F10020E0FF00DFF0FF000A449400000000000000000075515200755152007551
      5200755152007551520075515200755152000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000033333300333333003333
      3300333333003333330033333300333333003333330033333300333333003333
      3300333333000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000030C8F10049A6F10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000099FF000691
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000099FF000691
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000099FF000099FF00000000000099FF000691
      FF00000000000691FF000691FF00000000000000000000000000000000000000
      00000000000000000000000000000099FF000099FF00000000000099FF000691
      FF00000000000691FF000691FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000785B6200785B6200785B6200785B
      6200785B6200785B6200785B6200785B6200785B620000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000099FF001AFFFF0000CCFF000099FF001AFFFF0039DD
      FF000691FF0008C0FF0039DDFF000099FF00785B6200785B6200785B6200785B
      6200785B6200785B62000099FF001AFFFF0000CCFF000099FF001AFFFF0039DD
      FF000691FF0008C0FF0039DDFF000099FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00785B620000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000099FF005DFFFF008CFFFF00B6FFFF00B6FF
      FF008CFFFF005DFFFF000099FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000099FF005DFFFF008CFFFF00B6FFFF00B6FF
      FF008CFFFF005DFFFF000099FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00785B620000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000099FF0000CCFF00CCFFFF00CCFF
      FF0000CCFF000099FF00FF33FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000099FF0000CCFF00CCFFFF00CCFF
      FF0000CCFF000099FF00FF33FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00785B620000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000099FF005DFFFF008CFFFF00B6FFFF00B6FF
      FF008CFFFF005DFFFF000099FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000099FF005DFFFF008CFFFF00B6FFFF00B6FF
      FF008CFFFF005DFFFF000099FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000614B300010EB300010EB300010E
      B300010EB300010EB300010EB300010EB3000009AC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000099FF001AFFFF0000CCFF000099FF001AFFFF0039DD
      FF000691FF0008C0FF0039DDFF000099FF001D6D23001D6D23001D6D23001D6D
      23001D6D23001D6D23000099FF001AFFFF0000CCFF000099FF001AFFFF0039DD
      FF000691FF0008C0FF0039DDFF000099FF00785B6200785B6200785B6200785B
      62000009AC000009AC000009AC000009AC000009AC000009AC00785B6200785B
      6200785B6200785B620000000000000000001F59FF00164DFF00164DFF000C42
      FF00063AFF000033FF000033FF000033FF000009AC0000000000000000000000
      000000000000000000000000000000000000785B6200785B6200785B6200785B
      62001D6D23001D6D23001D6D23000099FF000099FF001D6D23000099FF000099
      FF00785B62000691FF000691FF000000000029C7430024C23C001FBC330019B5
      2A0012AD20000FAA1B000CA716000099FF000099FF00000000000099FF000691
      FF00000000000691FF000691FF0000000000785B6200FFFFFF00F5EEEE00F5EE
      EE000009AC0086A1FF000033FF000033FF000033FF00010EB300FFFFFF00FFFF
      FF00FFFFFF00785B620000000000000000002B69FF001F59FF001F59FF001951
      FF000C42FF00063AFF000033FF000033FF000009AC0000000000000000000000
      000000000000000000000000000000000000785B6200FFFFFF00F5EEEE00F5EE
      EE001D6D230088D58E000DA818000DA818000DA818001D6D23000099FF000099
      FF00FFFFFF00785B6200000000000000000030CE4C0029C7430021BE37001FBC
      330019B52A0012AD20000FAA1B000CA716001D6D2300000000000099FF000691
      FF0000000000000000000000000000000000785B6200FFFFFF00F5EEEE00F5EE
      EE000009AC008BA7FF000C42FF000033FF000033FF00010EB300FFFFFF00FFFF
      FF00FFFFFF00785B620000000000000000003879FF002B69FF002B69FF002561
      FF001F59FF00134AFF000C42FF000033FF000009AC0000000000000000000000
      000000000000000000000000000000000000785B6200FFFFFF00F5EEEE00F5EE
      EE001D6D23008AD8910012AD20000FAA1B000CA716001D6D2300FFFFFF00FFFF
      FF00FFFFFF00785B6200000000000000000034D2540030CE4C0029C7430021BE
      370019B52A0016B1250012AD20000DA818001D6D230000000000000000000000
      000000000000000000000000000000000000785B6200FFFFFF00F5EEEE00F5EE
      EE000009AC008FADFF00134AFF00063AFF000033FF00010EB300FFFFFF00FFFF
      FF00FFFFFF00785B62000000000000000000A2C4FF009DBEFF009DBEFF0099B8
      FF0094B2FF008FADFF008BA7FF0086A1FF000009AC0000000000000000000000
      000000000000000000000000000000000000785B6200FFFFFF00F5EEEE00F5EE
      EE001D6D23008DDB950016B1250012AD20000FAA1B001D6D2300FFFFFF00FFFF
      FF00FFFFFF00785B620000000000000000009CEBAC009CEBAC0096E4A30092E1
      9E0092E19E008DDB95008AD8910088D58E001D6D230000000000000000000000
      000000000000000000000000000000000000785B6200FFFFFF00F5EEEE00F5EE
      EE000009AC0094B2FF001F59FF000C42FF00063AFF00010EB300FFFFFF00FFFF
      FF00FFFFFF00785B620000000000000000000009AC000009AC000009AC000009
      AC000009AC000009AC000009AC000009AC000009AC0000000000000000000000
      000000000000000000000000000000000000785B6200FFFFFF00F5EEEE00F5EE
      EE001D6D230092E19E0019B52A0019B52A0012AD20001D6D2300FFFFFF00FFFF
      FF00FFFFFF00785B620000000000000000001D6D23001D6D23001D6D23001D6D
      23001D6D23001D6D23001D6D23001D6D23001D6D230000000000000000000000
      000000000000000000000000000000000000785B6200FFFFFF00F5EEEE00F5EE
      EE000009AC0099B8FF002561FF001951FF000C42FF00010EB300FFFFFF00FFFF
      FF00FFFFFF00785B62000000000000000000F5EEEE00F5EEEE00F5EEEE00F5EE
      EE00F5EEEE00F5EEEE00F5EEEE00F5EEEE00785B620000000000000000000000
      000000000000000000000000000000000000785B6200FFFFFF00F5EEEE00F5EE
      EE001D6D230092E19E0021BE37001FBC330019B52A001D6D2300FFFFFF00FFFF
      FF00FFFFFF00785B62000000000000000000F5EEEE00F5EEEE00F5EEEE00F5EE
      EE00F5EEEE00F5EEEE00F5EEEE00F5EEEE00785B620000000000000000000000
      000000000000000000000000000000000000785B6200FFFFFF00F5EEEE00F5EE
      EE000009AC009DBEFF002B69FF001F59FF00164DFF00010EB300FFFFFF00FFFF
      FF00FFFFFF00785B62000000000000000000F5EEEE00F5EEEE00F5EEEE00F5EE
      EE00F5EEEE00F5EEEE00F5EEEE00F5EEEE00785B620000000000000000000000
      000000000000000000000000000000000000785B6200FFFFFF00F5EEEE00F5EE
      EE001D6D230096E4A30028C5400021BE37001FBC33001D6D2300FFFFFF00FFFF
      FF00FFFFFF00785B62000000000000000000F5EEEE00F5EEEE00F5EEEE00F5EE
      EE00F5EEEE00F5EEEE00F5EEEE00F5EEEE00785B620000000000000000000000
      000000000000000000000000000000000000785B6200FFFFFF00F5EEEE00F5EE
      EE000009AC009DBEFF002B69FF001F59FF00164DFF00010EB300FFFFFF00FFFF
      FF00FFFFFF00785B62000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00785B620000000000000000000000
      000000000000000000000000000000000000785B6200FFFFFF00F5EEEE00F5EE
      EE001D6D23009CEBAC0030CE4C0028C5400024C23C001D6D2300FFFFFF00FFFF
      FF00FFFFFF00785B62000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00785B620000000000000000000000
      000000000000000000000000000000000000785B6200FFFFFF00F5EEEE00F5EE
      EE000009AC00A2C4FF003879FF002B69FF001F59FF000614B300FFFFFF00FFFF
      FF00FFFFFF00785B62000000000000000000785B6200785B6200785B6200785B
      6200785B6200785B6200785B6200785B6200785B620000000000000000000000
      000000000000000000000000000000000000785B6200FFFFFF00F5EEEE00F5EE
      EE001D6D23009CEBAC0034D2540030CE4C0030CE4C001D6D2300FFFFFF00FFFF
      FF00FFFFFF00785B62000000000000000000785B6200785B6200785B6200785B
      6200785B6200785B6200785B6200785B6200785B620000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000333333003333330033333300333333003333
      3300333333003333330033333300333333000000000000000000494949007474
      7400A4A4A400A4A4A400A4A4A400333333003333330033333300333333003333
      3300333333003333330033333300333333000000000000000000000000000000
      00000000000000000000000000001D1591000614AD0000089B00000000000000
      000000000000080799000A12A200000A96000000000000000000000000000000
      0000000000000000000000000000333333003333330033333300333333003333
      3300333333003333330033333300333333000000000000000000000000003333
      33003333330033333300333333001C2EAA00FFFFFF00E8E8E800FFFFFF00E8E8
      E800FFFFFF00E8E8E800FFFFFF00333333000000000049494900999999007474
      7400FFFFFF00FFFFFF00FFFFFF001C2EAA00FFFFFF00F0F0F000FFFFFF00F0F0
      F000FFFFFF00F0F0F000FFFFFF00333333001F109A0033333300333333003333
      33003333330033333300333333001517AB001B54FD000F31E900000A96003333
      3300000A96000024EF000B30FF00000AA6000000000000000000000000000000
      00000000000000000000000000001C2EAA00FFFFFF00EAEAEE00FFFFFF00EAEA
      EE00FFFFFF00EAEAEE00FFFFFF00333333000000000000000000333333008686
      8600B6B6B600B6B6B600BCBCBC001C2EAA00E6E1DF00D5D5D500E6E1DF00D5D5
      D500E6E1DF00D5D5D500E6E1DF00333333004949490081818100999999008181
      8100DEDEDE00F0F0F000F0F0F0001C2EAA00E6E1DF00D5D5D500E6E1DF00D5D5
      D500E6E1DF00D5D5D500E6E1DF00333333001F109A00E6D0BA00EDDFCF00E6D7
      C600EDDFCF00EDDFCF00E6D7C6000D0A9C002C53DD002155FC00223BE9000000
      A1000F31E9000033FF000025E4000F00A1000000000000000000000000000000
      00000000000000000000000000001C2EAA00E6E1DF00D5D5D500E6E1DF00D5D5
      D500E6E1DF00D5D5D500E6E1DF0033333300000000003333330099999900A5A5
      A500A5A5A50033333300EFEFEF001C2EAA00FFFFFF00E6E1DF00FFFFFF00E6E1
      DF00FFFFFF00E6E1DF00FFFFFF003333330049494900BFBFBF005E5E5E000000
      00002A2A2A002A2A2A002A2A2A001C2EAA00FFFFFF00E6E1DF00FFFFFF00E6E1
      DF00FFFFFF00E6E1DF00FFFFFF00333333001F109A00EADDD200FFFFFF00EAEA
      EA00FFFFFF00FFFFFF00EAEAEA00FFFFFF000C019D002C53DD002155FC001B54
      FD001340FF000F31E90008079900333333000000000000000000000000000000
      00000000000000000000000000001C2EAA00FFFFFF00E6E1DF00FFFFFF00E6E1
      DF00FFFFFF00E6E1DF00FFFFFF00333333003333330099999900A5A5A5009999
      99009999990033333300DBDBDB001C2EAA00FFFFFF00E6E1DF00FFFFFF00E6E1
      DF00FFFFFF00E6E1DF00FFFFFF003333330049494900CCCCCC00B3B3B3009999
      99009999990099999900999999001C2EAA00FFFFFF00E6E1DF00FFFFFF00E6E1
      DF00FFFFFF00E6E1DF00FFFFFF00333333001F109A00EADDD200FFFFFF00EAEA
      EA00FFFFFF00FFFFFF00EAEAEA00FFFFFF00FFFFFF0000089B002155FC001759
      FE00184FF6000000A100EADDD200333333000000000052535500525355005253
      55000000000000000000000000001C2EAA00FFFFFF00E6E1DF00FFFFFF00E6E1
      DF00FFFFFF00E6E1DF00FFFFFF00333333003333330099999900A5A5A500A5A5
      A500999999000A4494000A4494001C2EAA00E6E1DF00D5D5D500E6E1DF00D5D5
      D500E6E1DF00D5D5D500E6E1DF003333330049494900D5D5D500DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00E3E3E3001C2EAA00E6E1DF00D5D5D500E6E1DF00D5D5
      D500E6E1DF00D5D5D500E6E1DF00333333001F109A00EADDD200EAEAEA00EAEA
      EA00EAEAEA00EAEAEA00EAEAEA00EAEAEA000D0A9C001758D2002766FF00215E
      FA001F4DFF00063BEA0000089B00333333000000000052535500002EB9000B09
      6C005253550000000000000000001C2EAA00E6E1DF00D5D5D500E6E1DF00D5D5
      D500E6E1DF00D5D5D500E6E1DF003333330033333300A5A5A500A5A5A500A5A5
      A500DBDBDB000A449400D8EBFF001C2EAA00FFFFFF00E6E1DF00FFFFFF00E6E1
      DF00FFFFFF00E6E1DF00FFFFFF003333330049494900F0F0F000F6F6F600F6F6
      F600F6F6F600F6F6F600F6F6F6001C2EAA00FFFFFF00E6E1DF00FFFFFF00E6E1
      DF00FFFFFF00E6E1DF00FFFFFF00333333001F109A00EADDD200FFFFFF00EDED
      ED00FFFFFF00FFFFFF00EAEAEA000D0E8E002961E6003474FF001A51E2000008
      9B00374DE9001B54FD00103EE9000C019D0000000000525355001839EC00031F
      F8000C0E6D0052535500525355001C2EAA00FFFFFF00E6E1DF00FFFFFF00E6E1
      DF00FFFFFF00E6E1DF00FFFFFF003333330033333300A5A5A500A5A5A5003333
      3300333333000A449400E4EEFF001C2EAA001C2EAA001C2EAA001C2EAA001C2E
      AA001C2EAA001C2EAA001C2EAA001C2EAA0049494900C4E3C40066AD6600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF001C2EAA001C2EAA001C2EAA001C2EAA001C2E
      AA001C2EAA001C2EAA001C2EAA001C2EAA001F109A00EADDD200FFFFFF00EAEA
      EA00FFFFFF00FFFFFF00EAEAEA001E14B400407FFF002D59EA00020F9900FFFF
      FF000C0098002F4EE700224DF8000010AB0000000000525355004359AD003366
      FF000219F8000C0E6D0012478E001C2EAA001C2EAA001C2EAA001C2EAA001C2E
      AA001C2EAA001C2EAA001C2EAA001C2EAA003333330099999900B6B6B600EFEF
      EF00EFEFEF0030C8F100AFF5FF001C2EAA001C2EAA001C2EAA001C2EAA001C2E
      AA001C2EAA001C2EAA001C2EAA001C2EAA004949490088918800B7CBB700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF001C2EAA001C2EAA001C2EAA001C2EAA001C2E
      AA001C2EAA001C2EAA001C2EAA001C2EAA001F109A00EADDD200E2E4E500D5D5
      D500DEDEDE00DEDEDE00D5D5D5001F109A002324AA00000A9600E6E1DF00E6E1
      DF00D5D5D5000D0A9C001E1DA300080799000000000000000000525355006177
      C4004879FF000204B9000A48BF001C2EAA001C2EAA001C2EAA001C2EAA001C2E
      AA001C2EAA001C2EAA001C2EAA001C2EAA003333330099999900C5C5C500FFFF
      FF00FFFFFF00FFFFFF0030C8F10083F2FF0067E0FA004ECFFF004ECFFF005FB2
      FF000A449400333333000000000000000000000000004949490049494900AFAF
      AF00FFFFFF00FFFFFF00FFFFFF00F6F6F600F0F0F000E3E3E300DEDEDE00D5D5
      D500889188004949490049494900000000001F109A00EADDD200FFFFFF00DEDE
      DE00FFFFFF00FFFFFF00DEDEDE00FFFFFF00FFFFFF00E6E1DF00FFFFFF00FFFF
      FF00E6E1DF00FFFFFF00EADDD200333333000000000000000000525355005253
      55006985D6001746C400116AB0001DBFDB001A415D00B215AF00000000000000
      0000000000000000000000000000000000003333330099999900C5C5C500FFFF
      FF00FFFFFF00F8F8F800EFEFEF0030C8F10057E7FF004ECFFF0043CFFE0045AD
      FF003BA2F8000A44940000000000000000000000000000000000000000005050
      5000747474007B7B7B007B7B7B007B7B7B007474740074747400666666005E5E
      5E00494949000000000000000000000000001F109A00EADDD200FFFFFF00DEDE
      DE00FFFFFF00FFFFFF00DEDEDE00FFFFFF00FFFFFF00E6E1DF00FFFFFF00FFFF
      FF00E6E1DF00FFFFFF00EADDD20033333300000000005253550097848B008C8E
      9E004E61B1003C91CA00506C78003F4757000000000000000000000000000000
      00000000000000000000000000000000000033333300A5A5A500C5C5C500FFFF
      FF00FFFFFF00F8F8F800EFEFEF00E8E8E80030C8F10032E9FF003CCDFF0026C5
      FF0031A2FF00449EFD000A449400000000000000000000000000000000004949
      490049494900F6F6F600F6F6F600F0F0F000E3E3E300DEDEDE00D5D5D5004949
      4900494949000000000000000000000000001F109A00E5CDB500EDDFCF00D4C5
      B600EDDFCF00EDDFCF00D4C5B600EDDFCF00EDDFCF00D4C5B600EDDFCF00EDDF
      CF00D4C5B600EDDFCF00E3C8AE00333333005253550099999900CFCDD400F4FA
      E300ECEEEC00BEBFBE00665D5A00665D5A0076337A0000000000000000000000
      00000000000000000000000000000000000033333300ACACAC00D5D5D500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F8F8F800EFEFEF0030C8F10012EBF40023C3
      FD0000BCFF0022B8FE003D99E8000A4494000000000000000000000000000000
      000049494900FFFFFF00FFFFFF00F0F0F000F0F0F000E3E3E300DEDEDE004949
      4900000000000000000000000000000000001F109A001F109A001F109A001F10
      9A001F109A001F109A001F109A001F109A001F109A001F109A001F109A001F10
      9A001F109A001F109A001F109A001F109A00525355007D7E830052535500B4AC
      B700FFFFFF00B1B6B00061486300523E5B00726E6E0066666600525355000000
      000000000000000000000000000000000000333333008D8D8D00B6B6B600D5D5
      D500D5D5D500CCCCCC00CCCCCC00C5C5C500C5C5C500BCBCBC0030C8F10000E0
      FD0006C2F8004DD0F800135DBB000A4494000000000000000000000000000000
      000049494900FFFFFF00FFFFFF00FFFFFF00F0F0F000F0F0F000E3E3E3004949
      4900000000000000000000000000000000001F109A001F109A001F109A001F10
      9A001F109A001F109A001F109A001F109A001F109A001F109A001F109A001F10
      9A001F109A001F109A001F109A001F109A005253550052535500000000005253
      5500FFFFFF009999990069287100000000005A5B5E00EAEAEE00666666005253
      5500000000000000000000000000000000000000000033333300333333003333
      33003333330033333300333333003333330033333300333333003333330030C8
      F10020E0FF00DFF0FF000A449400000000000000000000000000000000000000
      000049494900FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0F0F000F0F0F0004949
      490000000000000000000000000000000000000000001F109A001F109A001F10
      9A001F109A001F109A001F109A001F109A001F109A001F109A001F109A001F10
      9A001F109A001F109A001F109A0000000000000000000000000052535500AFB0
      B700CFCDD4004D4853000000000000000000000000007D858C00E6E9E4005253
      5500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000030C8F10049A6F10000000000000000000000000000000000000000000000
      0000494949004949490049494900494949004949490049494900494949004949
      4900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000525355005253
      55005253550052535500000000000000000000000000000000005A5B5E005253
      55000000000000000000000000000000000000000000008C030000000000008C
      03000000000000000000008C0300000000000000000000000000000000000000
      0000000000000E316500424A7200000000000000000000000000000000000000
      0000000000000000000000000000333333003333330033333300333333003333
      3300333333003333330033333300333333000000000000000000000000000000
      0000000000000000000000000000333333003333330033333300333333003333
      3300333333003333330033333300333333000000000000000000000000000000
      0000000000000000000000000000333333003333330033333300333333003333
      33003333330033333300333333003333330000000000008C0300000000000000
      00000000000000000000008C0300000000000000000000000000000000000000
      00000E31650063AECF0056B0E20027416A00AD999600A8908F00A8908F00A890
      8F00A48C8A00A48C8A00A48C8A001C2EAA00FFFFFF00EAEAEA00FFFFFF00EAEA
      EA00FFFFFF00EAEAEA00FFFFFF00333333000000000000000000000000000000
      00000000000000000000000000001C2EAA00FFFFFF00EAEAEA00FFFFFF00EAEA
      EA00FFFFFF00EAEAEA00FFFFFF00333333000000000000000000000000000000
      00000000000000000000000000001C2EAA00FFFFFF00EFEFEF00FFFFFF00EFEF
      EF00FFFFFF00EFEFEF00FFFFFF0033333300008C0300008C030000000000008C
      030000000000008C0300008C0300000000000000000000000000000000000E31
      650060A8CC0074D7FE001982D8000E3165008B787400E8DEDC00F0E6E700E8DE
      DC00E8DEDC00E2D5D300E0CECC001C2EAA00E8DEDC00D5D5D500E8DEDC00D5D5
      D500E8DEDC00D5D5D500E8DEDC00333333000000000000000000000000000000
      00000000000000000000000000001C2EAA00E6E1DF00D5D5D500E6E1DF00D5D5
      D500E6E1DF00D5D5D500E6E1DF00333333000000000000000000000000003333
      33003333330033333300333333001C2EAA00E6E1DF00D5D5D500E6E1DF00D5D5
      D500E6E1DF00D5D5D500E6E1DF003333330000000000008C0300000000000000
      00000000000000000000008C0300000000000000000000000000214172005FAE
      D30074D7FE00197DD2000E3165000000000097807E00EAEAEA00F9F7F700F5ED
      EE00F5EDEE00F0E6E700E8DEDC001C2EAA00FFFFFF00E8DEDC00FFFFFF00E8DE
      DC00FFFFFF00E8DEDC00FFFFFF00333333000000000000000000000000000000
      00000000000000000000000000001C2EAA00FFFFFF00E6E1DF00FFFFFF00E6E1
      DF00FFFFFF00E6E1DF00FFFFFF00333333000000000000000000333333008383
      8300B6B6B600B6B6B600BCBCBC001C2EAA00FFFFFF00E6E1DF00FFFFFF00E6E1
      DF00FFFFFF00E6E1DF00FFFFFF00333333000000000000000000000000000000
      00000000000000000000000000000000000000000000214172004096CA0074D7
      FE001982D8000E31650000000000000000009A807F00F1EFEF00FFFFFF00F9F1
      F300F6EAED00F0E6E700F0E6E7001C2EAA00FFFFFF00E8DEDC00FFFFFF00E8DE
      DC00FFFFFF00E8DEDC00FFFFFF00333333000000000007506700075067000750
      67000750670007506700075067001C2EAA00FFFFFF00E6E1DF00FFFFFF00E6E1
      DF00FFFFFF00E6E1DF00FFFFFF0033333300000000003333330099999900A5A5
      A500A5A5A50033333300EFEFEF001C2EAA00FFFFFF00E6E1DF00FFFFFF00E6E1
      DF00FFFFFF00E6E1DF00FFFFFF0033333300000000000000000042222500704D
      41009F657000A5657700855D5B008C7368008C7368008C7368003C75A700197D
      D2000E3165000000000000000000000000009A807F00F1EFEF00FFFFFF00F9F7
      F700F9F1F300F6EAED00F0E6E7001C2EAA00E8DEDC00D5D5D500E8DEDC00D5D5
      D500E8DEDC00D5D5D500E8DEDC00333333000C82AB000C82AB005FA4D10061B9
      E40040AED9004AB1DA004FB5DB001C2EAA00E6E1DF00D5D5D500E6E1DF00D5D5
      D500E6E1DF00D5D5D500E6E1DF00333333003333330099999900A5A5A5009999
      99009999990033333300DDDDDD001C2EAA00E6E1DF00D5D5D500E6E1DF00D5D5
      D500E6E1DF00D5D5D500E6E1DF00333333000000000042222500A8796300F1DE
      9700FDFDB600FEFEC300FEFED700DCD3BC00866D68008D6D6A006A4847000E31
      650000000000000000000000000000000000997F7E00F1EFEF00FFFFFF00FFFF
      FF00F9F7F700F9F1F300F6EAED001C2EAA00FFFFFF00E8DEDC00FFFFFF00E8DE
      DC00FFFFFF00E8DEDC00FFFFFF00333333000C82AB000C82AB0088BBD6008BEB
      FF0033CCFF004CD7FF0059DDFF001C2EAA00FFFFFF00E6E1DF00FFFFFF00E6E1
      DF00FFFFFF00E6E1DF00FFFFFF003333330033333300A5A5A500A5A5A500A5A5
      A5009999990033333300E5E5E5001C2EAA00FFFFFF00E6E1DF00FFFFFF00E6E1
      DF00FFFFFF00E6E1DF00FFFFFF00333333004B282A00A5745900FEE99600FEEC
      9E00FDF7AE00FEFEC300FEFED700FEFEF200F0EDE300846966006A4847000000
      000000000000000000000000000000000000997F7E00F1EFEF00FFFFFF00FFFF
      FF00FFFFFF00F9F7F700F9F1F3001C2EAA001C2EAA001C2EAA001C2EAA001C2E
      AA001C2EAA001C2EAA001C2EAA001C2EAA000C82AB000C82AB000C82AB009DE2
      F80061E2FE0061E2FE006DECFF001C2EAA001C2EAA001C2EAA001C2EAA001C2E
      AA001C2EAA001C2EAA001C2EAA001C2EAA0033333300A5A5A500A5A5A500A5A5
      A500DDDDDD00DDDDDD00E5E5E5001C2EAA001C2EAA001C2EAA001C2EAA001C2E
      AA001C2EAA001C2EAA001C2EAA001C2EAA00724A3C00F0C57A00FED78400FBE1
      9500FDF7AE00FEFEC300FEFED700FDFDE800FFFFFF00CABEB0008C7368000000
      000000000000000000000000000000000000997F7E00F1EFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F9F7F7001C2EAA001C2EAA001C2EAA001C2EAA001C2E
      AA001C2EAA001C2EAA001C2EAA001C2EAA000C82AB0038BEE8000C82AB009CD4
      E6008BEBFF0068E6FF0076EEFC001C2EAA001C2EAA001C2EAA001C2EAA001C2E
      AA001C2EAA001C2EAA001C2EAA001C2EAA0033333300A5A5A500A5A5A5003333
      33003333330033333300333333001C2EAA001C2EAA001C2EAA001C2EAA001C2E
      AA001C2EAA001C2EAA001C2EAA001C2EAA00724A3C00FED78400F8D68C00FBE6
      9C00FCF6B200FFFFCC00FFFFCC00FDFDDB00FDFDDB00FDFDDB008C7368000000
      000000000000000000000000000000000000997F7E00F1EFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF6F800FFF6F800D6C5C200B5A3
      A000000000000000000000000000000000000C82AB005ACFEC000C82AB0087CD
      E30097F1FF007BF6FF0087F6FA0087F6FA0087F6FA0087F6FA0087F6FA006ADD
      ED00B2F0F5000750670000000000000000003333330099999900B6B6B600EFEF
      EF00EFEFEF00E5E5E500E5E5E500DDDDDD00D5D5D500CCCCCC00CCCCCC009999
      990074747400333333000000000000000000B9815400F9D18200F8DC8F00FBE6
      9C00FCEEAB00FEFEC300FFFFCC00FFFFCC00FFFFCC00FFFFCC008C7368000000
      000000000000000000000000000000000000997F7E00F1EFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F0E6E700CCCCCC00D9CFCF00BAAAA800AD9C
      9A00000000000000000000000000000000000C82AB005ACFEC0049D1F7000C82
      AB00D0F4FC00E3FEF200E3FEF200E3FEF200E3FEF200E3FEF200E8FFFF00FFFF
      FF00FFFFFF000750670007506700000000003333330099999900C5C5C500FFFF
      FF00FFFFFF00FFFFFF00EFEFEF00EFEFEF00E5E5E500DDDDDD00DDDDDD00A5A5
      A50074747400333333000000000000000000AC7B5800FDCC7900FEEC9E00FFFF
      CC00FCF8D800FCEEAB00FDFEBC00FDFEBC00FDFEBC00FDFEBC008C7368000000
      000000000000000000000000000000000000997F7E00F1EFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00937E7E00B5A3A000B5A3A00075515200CDC3
      C300000000000000000000000000000000000C82AB005DCDE9006DECFF000C82
      AB000C82AB000C82AB000C82AB000C82AB000C82AB000C82AB000C82AB000C82
      AB000C82AB000C82AB0007506700000000003333330099999900C5C5C500FFFF
      FF00FFFFFF00F8F8F800EFEFEF00EFEFEF00E6E1DF00DDDDDD00DDDDDD00A5A5
      A5007B7B7B00333333000000000000000000AC7B5800F2B66A00FBE19500FDFE
      BC00FFFFCC00FBE9A600FBE9A600FBE9A600FFFFAD00E1D39A00866D68000000
      000000000000000000000000000000000000997F7E00F1EFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00A5949200FFFFFF00BAAAA800C6BCBA000000
      0000000000000000000000000000000000000C82AB0073D2EF0087F6FF0078F0
      FE0074EEF20074EEF20074EEF20074EEF20074EEF20074EEF20074EEF2000C82
      AB000000000000000000000000000000000033333300A5A5A500C5C5C500FFFF
      FF00FFFFFF00F8F8F800EFEFEF00E5E5E500E5E5E500DDDDDD00DDDDDD00A5A5
      A5007B7B7B003333330000000000000000008E737000AC7B5800FDC87500FBE6
      9C00FBEEA300FBE69C00F8D68C00FCDE8F00FBE19500D0A17700000000000000
      00000000000000000000000000000000000097807E00F9F7F700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00AB979600B3A3A300BAAAA800000000000000
      0000000000000000000000000000000000000C82AB000C82AB00CEF2FD00D3FF
      FF00CEFFF400CEFFF400CEFFF400CEFFF400CEFFF400CEFFF400CEFFF4000C82
      AB000000000000000000000000000000000033333300ACACAC00D5D5D500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F8F8F800EFEFEF00E5E5E500E5E5E500A5A5
      A50083838300333333000000000000000000000000009E827C00CC996600F2B6
      6A00F9CC7B00F9D18200F9D18200F1CA8300D0A1770000000000000000000000
      000000000000000000000000000000000000947B7300C6BCBA00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC007D636100BFAFAF0000000000000000000000
      000000000000000000000000000000000000000000000C82AB000C82AB000C82
      AB000C82AB000C82AB000C82AB000C82AB000C82AB000C82AB000C82AB000C82
      AB0000000000000000000000000000000000333333008D8D8D00B6B6B600D5D5
      D500D5D5D500CCCCCC00CCCCCC00C5C5C500C5C5C500BCBCBC00BCBCBC00A5A5
      A5007B7B7B003333330000000000000000000000000000000000A7919000BC99
      8400D0A17700D89E7D00CC999900D0A177000000000000000000000000000000
      000000000000000000000000000000000000D2C0BE00AB979600AB979600AB97
      9600AB979600AB979600AB979600C3B5B3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000033333300333333003333
      3300333333003333330033333300333333003333330033333300333333003333
      3300333333000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001212120012121200585858001212
      1200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000012121200B6B6B600FFFFFF009999
      9900121212000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B6B6B60012121200DFDFDF00BDBDBD009999
      9900585858000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099A8AC000000000099A8AC000000000099A8AC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099A8AC00000000000000
      0000000000000000000000000000000000000000000000000000000000001212
      1200BDBDBD00000000000000000012121200A3A3A300FFFFFF00BDBDBD005858
      5800000000000000000000000000000000000000000099A8AC0099A8AC000000
      000099A8AC0099A8AC000000000099A8AC0099A8AC000000000099A8AC0099A8
      AC000000000099A8AC0099A8AC00000000000000000000000000000000000000
      00000000000099A8AC00000000000000000000000000000000000000000099A8
      AC00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000099A8AC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001212
      120012121200B6B6B6001212120012121200F6F6F600A3A3A300585858000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099A8AC000000000000000000000000000000000000000000000000000000
      000099A8AC000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099A8AC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001212
      1200DFDFDF001212120082828200ABABAB00F6F6F6008F8F8F00585858000000
      0000000000000000000000000000000000000000000099A8AC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099A8AC000000000000000000000000000000000099A8
      AC00000000000000000000000000000000000000000000000000000000000000
      00000000000099A8AC0000000000000000000000000000000000000000000000
      0000000000000000000099A8AC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001212
      1200FFFFFF00D8D8D800A3A3A300FFFFFF009999990058585800585858009999
      9900999999000000000000000000000000000000000099A8AC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099A8AC0000000000000000000000000099A8AC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099A8AC00000000000000000000000000000000000000
      00000000000099A8AC0000000000000000000000000000000000000000000000
      000099A8AC000000000000000000000000000000000000000000000000001212
      1200FFFFFF00FFFFFF00FFFFFF00FFFFFF00CCCCCC0099999900B6B6B6005858
      5800585858000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099A8AC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001212
      1200FFFFFF00F6F6F600FFFFFF00F6F6F600FFFFFF00FFFFFF00B6B6B6005858
      5800000000000000000000000000000000000000000099A8AC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099A8AC0000000000000000000000000099A8AC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099A8AC000000000000000000000000000000000099A8
      AC00000000000000000000000000000000000000000000000000000000000000
      00000000000099A8AC0000000000000000000000000000000000000000001212
      1200FFFFFF00FFFFFF00FFFFFF00F6F6F600FFFFFF00A3A3A300585858000000
      0000000000000000000000000000000000000000000099A8AC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099A8AC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099A8AC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001212
      1200F6F6F600F6F6F600FFFFFF00F6F6F6009999990058585800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099A8AC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099A8AC00000000000000000099A8AC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099A8AC00000000000000000000000000000000001212
      1200FFFFFF00FFFFFF00F6F6F600938793005858580000000000000000000000
      0000000000000000000000000000000000000000000099A8AC0099A8AC000000
      000099A8AC0099A8AC000000000099A8AC0099A8AC000000000099A8AC0099A8
      AC000000000099A8AC0099A8AC000000000000000000000000000000000099A8
      AC00000000000000000000000000000000000000000000000000000000000000
      00000000000099A8AC000000000000000000000000000000000099A8AC000000
      00000000000099A8AC00000000000000000099A8AC00000000000000000099A8
      AC00000000000000000000000000000000000000000000000000000000001212
      1200FFFFFF00F6F6F60093879300585858000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099A8AC000000000000000000000000000000000000000000000000000000
      000099A8AC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001212
      1200FFFFFF008282820058585800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099A8AC000000000099A8AC000000000099A8AC000000000099A8
      AC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001212
      1200828282005858580000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001212
      1200585858000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000494949007474
      7400A4A4A400A4A4A400A4A4A400A4A4A4003333330033333300333333003333
      3300333333003333330033333300000000000000000000000000000000000000
      0000000000000000000000000000AB8F8F00AB8F8F00AB8F8F00AB8F8F00AB8F
      8F00AB8F8F00AB8F8F00AB8F8F00AB8F8F000000000000000000000000000000
      0000000099000000000000000000333333003333330033333300333333003333
      3300333333003333330033333300333333000000000076767600333333003333
      33003333330033333300333333001D1591000614AD0000089B00333333003333
      330033333300080799000A12A200000A96000000000049494900999999007474
      7400FFFFFF00FFFFFF00FFFFFF0066666600EADCD000FADED300FFCCCC00F3C2
      B800E8B1A800DCA69500C2897300333333000000000013437C0013437C001343
      7C0013437C0013437C0013437C00EDDEDE00EADCD000FADED300FFCCCC00F3C2
      B800E8B1A800DCA69500C2897300AB8F8F000000000000000000000000000000
      00000000990000009900000000001C2EAA00FFFFFF00EAEAEA00FFFFFF00EAEA
      EA00FFFFFF00EAEAEA00FFFFFF00333333007676760076767600F2F4F400F2F4
      F400EFEFEF00EFEFEF00EFEFEF001517AB001B54FD000F31E900000A9600D5DA
      DB00000A96000024EF000B30FF00000AA6004949490081818100999999008181
      8100D9D9D900F0F0F000F0F0F00066666600D6938400BE8D7F00B2826600B16F
      5D009236250090302300823326003333330013437C000A72CC000A72CC000A72
      CC000A72CC000A72CC00227BC600E9DDDC00D6938400BE8D7F00B2826600B16F
      5D00923625009030230082332600AB8F8F000000000000000000000099000000
      99000000990000009900000099001C2EAA00E6E1DF00D5D5D500E6E1DF00D5D5
      D500E6E1DF00D5D5D500E6E1DF003333330076767600FFFFFF00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00B1AC97000D0A9C002C53DD002155FC00223BE9000000
      A1000F31E9000033FF000025E4000F00A10049494900BFBFBF005E5E5E000000
      00002A2A2A002A2A2A002A2A2A00666666009AB8710074BB5E0063B63C004CA7
      28003F9A0F0043870A008CAD74003333330013559700FFFFFF00108DE600108D
      E600108DE6000885E700268EDC00E9DDDC009AB8710074BB5E0063B63C004CA7
      28003F9A0F0043870A008CAD7400AB8F8F000000000000000000000099000000
      99000000990000009900000099001C2EAA00FFFFFF00E6E1DF00FFFFFF00E6E1
      DF00FFFFFF00E6E1DF00FFFFFF003333330076767600FFFFF800D5D0C100FFF9
      DE00FFFFCC00FEF3B900F5ECA200E8E18C000C019D002C53DD002155FC001B54
      FD001340FF000F31E900080799003333330049494900CCCCCC00B3B3B3009999
      99009999990099999900999999006666660099C072008EC96E0086B9570083BD
      5E0082CC5C00349F09003788000033333300185A9700FFFFFF00168FE400168F
      E400168FE400108DE6002F93DB00E9DDDC0099C072008EC96E0086B9570083BD
      5E0082CC5C00349F090037880000AB8F8F000000000000009900000099000000
      00000000990000009900000000001C2EAA00FFFFFF00E6E1DF00FFFFFF00E6E1
      DF00FFFFFF00E6E1DF00FFFFFF003333330076767600FFFFFF00B1AC9700DCD3
      AD00E0D1A000E1C99500D5B48300CEA77B00DAA0650000089B002155FC001759
      FE00184FF6000000A100E5E5E5003333330049494900D9D9D900D9D9D900DEDE
      DE00DEDEDE00DEDEDE00E3E3E30066666600EFF9BD00BED19800EDEDBF00FFFF
      E300EDEBC200EDEBC200D9D7B400333333001E659800FFFFFF001E97E7001E97
      E7001E97E7001896E800379BDD00E9DDDC00EFF9BD00BED19800EDEDBF00FFFF
      E300EDEBC200EDEBC200D9D7B400AB8F8F000000000000009900000099000000
      00000000990000000000000000001C2EAA00E6E1DF00D5D5D500E6E1DF00D5D5
      D500E6E1DF00D5D5D500E6E1DF003333330076767600FFFFFF0093908800EADC
      D000FADED300FFCCCC00F3C2B800E8B1A8000D0A9C001758D2002766FF00215E
      FA00224DF800063BEA0000089B003333330049494900F0F0F000F6F6F600F6F6
      F600F6F6F600F6F6F600F6F6F60066666600FF996600F8986200FF996600FF99
      6600FF996600F9A15B00FFE8C30033333300246B9900FFFFFF002AA7EB0028A0
      EB0028A0EB00219FED003EA3E000E9DDDC00FF996600F8986200FF996600FF99
      6600FF996600F9A15B00FFE8C300AB8F8F000000000000009900000099000000
      00000000000000000000000000001C2EAA00FFFFFF00E6E1DF00FFFFFF00E6E1
      DF00FFFFFF00E6E1DF00FFFFFF003333330076767600FFFFFF007D6F7000D693
      8400BE8D7F00B2826600B16F5D000D0E8E002961E6003474FF001A51E2000008
      9B00374DE9001B54FD00103EE9000C019D0049494900C4E3C40066AD6600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0066666600FF996600FF996600FF996600FF99
      6600FE985D00FDC98600FFF9DE0033333300286E9A00FFFFFF003CC5EE0037B8
      EE0033AFEE002BABF10047ACE300E9DDDC00FF996600FF996600FF996600FF99
      6600FE985D00FDC98600FFF9DE00AB8F8F000000000033333300333333003333
      33003333330033333300333333001C2EAA001C2EAA001C2EAA001C2EAA001C2E
      AA001C2EAA001C2EAA001C2EAA001C2EAA0076767600F8FFFE006F7D65009AB8
      710074BB5E0063B63C004CA728001E14B400407FFF002D59EA00020F9900A5D2
      89000C0098002F4EE700224DF8000614AD004949490088918800B7CBB700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006666660066666600666666006666
      6600666666006666660066666600494949002B739C00FFFFFF0049D3F20049D3
      F20049D3F20042D1F3005BCBE400E9DDDC00FFFFFF00FFFFFF00FFFFFF00F9F2
      F200F0E4E400D2C0C000C8B2B200AB8F8F0066666600EADCD000FADED300FFCC
      CC00F3C2B800E8B1A800DCA695001C2EAA001C2EAA001C2EAA001C2EAA001C2E
      AA001C2EAA001C2EAA001C2EAA001C2EAA0076767600F0FFFF0066674D0099C0
      72008EC96E0086B9570083BD5E001F109A002324AA00000A96004B9017006B7B
      2400AD6837000D0A9C001E1DA30008079900000000004949490049494900AFAF
      AF00FFFFFF00FFFFFF00FFFFFF00F6F6F600F0F0F000E3E3E300D9D9D900CCCC
      CC00889188004949490049494900000000002F7DA800FFFFFF0054DCF50054DC
      F50054DCF50054DCF50065D3E800E9DDDC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C3ACAC00B1969600AB8F8F0066666600D6938400BE8D7F00B282
      6600B16F5D009236250090302300823326003333330000000000000000000000
      00000000000000000000000000000000000076767600F8FFFE0033333300EFF9
      BD00BED19800EDEDBF00FFFFE300EDEBC200EDEBC200D9D7B400DBBCAD00EDAF
      A900C7897100C18C6100E5E5E500333333000000000000000000000000005050
      5000747474007B7B7B007B7B7B007B7B7B007474740074747400666666005E5E
      5E00494949000000000000000000000000002F7DA800FFFFFF005FE8FB005FF0
      FE005FF0FE005FF0FE0070E6F200EDDEDE00FFFFFF00FEF9F800FEEDED00FDE8
      E400F1E2E100CCB9BD00CCB9BD0000000000666666009AB8710074BB5E0063B6
      3C004CA728003F9A0F0043870A008CAD74003333330000000000000000000000
      00000000000000000000000000000000000076767600FFFFFF0033333300FF99
      6600F8986200FF996600FF996600FF996600F9A15B00FFE8C300FBDDC200FFA7
      7400FE985D00F0B39300E5E5E500333333000000000000000000000000004949
      490049494900F6F6F600F6F6F600F0F0F000E3E3E300D9D9D900D9D9D9004949
      4900494949000000000000000000000000003A98C300FFFFFF0068E1EC0064BB
      C30063B6BF0060B8C2006EB3BB00A89F9F00A89F9F00ACC0C300B0D8DC009CBC
      CC00CCB9BD00CCB9BD0000000000000000006666660099C072008EC96E0086B9
      570083BD5E0082CC5C00349F0900378800003333330000000000000000000000
      00000000000000000000000000000000000076767600FFFFF80033333300FF99
      6600FF996600FF996600FF996600FE985D00FDC98600FFF9DE00EFFFF800FFF4
      CE00FFA77400FFB49400E5E5E500333333000000000000000000000000000000
      000049494900FFFFFF00FFFFFF00F0F0F000F0F0F000E3E3E300D9D9D9004949
      4900000000000000000000000000000000003A98C300FFFFFF0073A8A900A08D
      8C00A6929200A6929200A6929200999999009999990070999A0073FEFE0039AF
      DC000000000000000000000000000000000066666600EFF9BD00BED19800EDED
      BF00FFFFE300EDEBC200EDEBC200D9D7B4003333330000000000000000000000
      00000000000000000000000000000000000076767600F6FFF200333333003333
      330033333300333333007E675F007B7264007D6F7000777B70007C7F76008784
      86007B80830099999900F6FFF200333333000000000000000000000000000000
      000049494900FFFFFF00FFFFFF00FFFFFF00F0F0F000F0F0F000E3E3E3004949
      49000000000000000000000000000000000059C9EE0059C9EE006C889500C8B2
      B200EEEBEB00EDDEDE00EDDEDE00EEEBEB00D5C3C200778188005AC5E7005277
      D8000000000000000000000000000000000066666600FF996600F8986200FF99
      6600FF996600FF996600F9A15B00FFE8C3003333330000000000000000000000
      00000000000000000000000000000000000076767600F6FFF200FFFFFF00F6FF
      F200F8FFFE00FFFFF800FFFFF800F8FFFE00F8FFFE00F8FFFE00F0FFFF00FFFF
      FF00FFFFFF00FAF4F900E5E5E500333333000000000000000000000000000000
      000049494900FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0F0F000F0F0F0004949
      4900000000000000000000000000000000000000000059C9EE0059C9EE00967B
      7A00F0E4E400FFFFFF00FFFFFF00EEEBEB00967B7A004E678600167BD0000000
      00000000000000000000000000000000000066666600FF996600FF996600FF99
      6600FF996600FE985D00FDC98600FFF9DE003333330000000000000000000000
      0000000000000000000000000000000000007676760076767600CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00767676003E3E3E000000000000000000000000000000
      0000494949004949490049494900494949004949490049494900494949004949
      490000000000000000000000000000000000000000000000000000000000967B
      7A00967B7A00967B7A00967B7A00967B7A00967B7A0000000000000000000000
      0000000000000000000000000000000000000000000066666600666666006666
      6600666666006666660066666600666666000000000000000000000000000000
      0000000000000000000000000000000000000000000076767600767676007676
      7600767676007676760076767600767676007676760076767600767676007676
      7600767676007676760076767600000000000000000000000000000000000000
      0000000000000000000000000000000000003333330033333300333333003333
      3300333333003333330033333300000000000000000000000000666666006666
      6600666666006666660066666600666666006666660066666600666666006666
      6600666666006666660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003333330033333300333333003333
      3300333333003333330033333300000000000000000000000000000000000000
      0000000000000000000000000000000000003333330033333300333333003333
      3300333333003333330033333300000000000000000000000000000000000000
      000000000000000000000000000066666600EADCD000FADED300FFCCCC00F3C2
      B800E8B1A800DCA69500C2897300333333000000000066666600E5E5E500DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00D9DA
      D900A5CFA500C9DCC90066666600000000000000000000000000000000000000
      000000000000000000000000000066666600EADCD000FADED300FFCCCC00F3C2
      B800E8B1A800DCA69500C2897300333333000000000000000000000000003333
      330033333300333333003333330066666600EADCD000FADED300FFCCCC00F3C2
      B800E8B1A800DCA69500C2897300333333000000000000000000000000000000
      000000000000000000000000000066666600D6938400BE8D7F00B2826600B16F
      5D00923625009030230082332600333333000000000066666600E5E5E500E5E5
      E500E5E5E500E5E5E500F7F7F700FFFFFF00FFFFFF00F7F7F700E5E5E500DEDE
      DE006CCA7000B2DDB20066666600000000000000000000000000000000003333
      330033333300333333003333330066666600D6938400BE8D7F00B2826600B16F
      5D00923625009030230082332600333333000000000000000000333333008686
      8600B6B6B600B6B6B600BCBCBC0066666600D6938400BE8D7F00B2826600B16F
      5D00923625009030230082332600333333000000000000000000000000000000
      0000000000000000000000000000666666009AB8710074BB5E0063B63C004CA7
      28003F9A0F0043870A008CAD7400333333000000000066666600F7F7F700E8DC
      D500E8DCD500E8DCD500EDDEDC00EDDEDC00EDDEDC00EDDEDC00E8DCD500E5D6
      CF00EDDEDC00FFFFFF0066666600000000000000000000000000333333008383
      8300B6B6B600B6B6B600BCBCBC00666666009AB8710074BB5E0063B63C004CA7
      28003F9A0F0043870A008CAD740033333300000000003333330099999900A5A5
      A500A5A5A50033333300EFEFEF00666666009AB8710074BB5E0063B63C004CA7
      28003F9A0F0043870A008CAD7400333333000000000007506700075067000750
      67000750670007506700075067006666660099C072008EC96E0086B9570083BD
      5E0082CC5C00349F090037880000333333000000000066666600EFD8C400F0C4
      8E00F6D8A600F9E3B800F9EAC500F9EED200F9EED200F9E8BF00FBE1B400F8D4
      9C00E9BD8B00EDDEDC006666660000000000000000003333330099999900A5A5
      A500A5A5A50033333300EFEFEF006666660099C072008EC96E0086B9570083BD
      5E0082CC5C00349F090037880000333333003333330099999900A5A5A5009999
      99009999990033333300DBDBDB006666660099C072008EC96E0086B9570083BD
      5E0082CC5C00349F090037880000333333000C82AB000C82AB005FA4D10061B9
      E40040AED9004AB1DA004FB5DB0066666600EFF9BD00BED19800EDEDBF00FFFF
      E300EDEBC200EDEBC200D9D7B400333333000000000066666600EFD8C400F0C4
      8E00FBE1B400FFF0C600FFF1CD00FFF0C600FFEEC000FEE8B900FADEAC00F8D4
      9C00E9BD8B00E5D6CF0066666600000000003333330099999900A5A5A5009999
      99009999990033333300DDDDDD0066666600EFF9BD00BED19800EDEDBF00FFFF
      E300EDEBC200EDEBC200D9D7B4003333330033333300A5A5A500A5A5A500A5A5
      A500999999000A4494000A4494000A4494000A449400BED19800EDEDBF00FFFF
      E300EDEBC200EDEBC200D9D7B400333333000C82AB000C82AB0088BBD6008BEB
      FF0033CCFF004CD7FF0059DDFF0066666600FF996600F8986200FF996600FF99
      6600FF996600F9A15B00FFE8C300333333000000000066666600E5D6CF00EEC7
      9D00FCE6C600FCE6C600FAECCE00FAECCE00FBE1B400F6D8A600F5D09800F4C7
      8A00EAC095006666660000000000000000003333330099999900A5A5A500A5A5
      A5009999990033333300E5E5E50066666600FF996600F8986200FF996600FF99
      6600FF996600F9A15B00FFE8C3003333330033333300A5A5A500A5A5A500A5A5
      A500DBDBDB000A449400D6EEFF00D6EEFF0083C7F2000A449400FF996600FF99
      6600FF996600F9A15B00FFE8C300333333000C82AB000C82AB000C82AB009DE2
      F80061E2FE0061E2FE006DECFF0066666600FF996600FF996600FF996600FF99
      6600FE985D00FDC98600FFF9DE0033333300000000000000000099999900E4BD
      9C00FCE6C600FCE6C600FCE7CD00FCE7CD00FCE7CD00F8DDB600F6D8A600F0C4
      8E00EFCCAF0066666600000000000000000033333300A5A5A500A5A5A500A5A5
      A500DDDDDD00D9D9D900E5E5E50066666600FF996600FF996600FF996600FF99
      6600FE985D00FDC98600FFF9DE003333330033333300A5A5A500A5A5A5003333
      3300333333000A449400E4EEFF00A5E8FF0089D4FF0087C3FF000A449400FF99
      6600FE985D00FDC98600FFF9DE00333333000C82AB0038BEE8000C82AB009CD4
      E6008BEBFF0068E6FF0076EEFC0087F6FA006666660066666600666666006666
      660066666600666666006666660000000000000000000000000066666600EFCC
      AF00F6D7B400FCE7CD00FCE7CD00FCE7CD00FCE7CD00FCE7CD00FCE7CD00EEC8
      A100EFD8C40066666600000000000000000033333300A5A5A500A5A5A5003333
      3300333333003333330033333300333333006666660066666600666666006666
      6600666666006666660066666600000000003333330099999900B6B6B600EFEF
      EF00EFEFEF0030C8F100AFF5FF007FE4FD0088DFFF0075CDFC0072B9FD000A44
      9400666666006666660066666600000000000C82AB005ACFEC000C82AB0087CD
      E30097F1FF007BF6FF0087F6FA0087F6FA0087F6FA0087F6FA0087F6FA006ADD
      ED00B2F0F500075067000000000000000000000000000000000066666600ECDE
      D500E5C2A700E9CDB600E9CDB600E9CDB600E9CDB600E9CDB600E9CDB600E5C4
      AB00DACDD1006666660000000000000000003333330099999900B6B6B600EFEF
      EF00EFEFEF00E5E5E500E5E5E500DDDDDD00D9D9D900CCCCCC00CCCCCC009999
      9900747474003333330000000000000000003333330099999900C5C5C500FFFF
      FF00FFFFFF00FFFFFF0030C8F10083F2FF0067E0FA004ECFFF004ECFFF005FB2
      FF000A4494003333330000000000000000000C82AB005ACFEC0049D1F7000C82
      AB00D0F4FC00E3FEF200E3FEF200E3FEF200E3FEF200E3FEF200E8FFFF00FFFF
      FF00FFFFFF000750670007506700000000000000000000000000000000009999
      9900BBBBBC00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00CCCC
      CC00666666000000000000000000000000003333330099999900C5C5C500FFFF
      FF00FFFFFF00FFFFFF00EFEFEF00EFEFEF00E5E5E500DDDDDD00DDDDDD00A5A5
      A500747474003333330000000000000000003333330099999900C5C5C500FFFF
      FF00FFFFFF00F8F8F800EFEFEF0030C8F10057E7FF004ECFFF0043CFFE0045AD
      FF003BA2F8000A44940000000000000000000C82AB005DCDE9006DECFF000C82
      AB000C82AB000C82AB000C82AB000C82AB000C82AB000C82AB000C82AB000C82
      AB000C82AB000C82AB000750670000000000000000000000000066666600CCCC
      CC008A8B8B008A8B8B008A8B8B008A8B8B008A8B8B008A8B8B0087888800A5A5
      A500BBBBBC006666660000000000000000003333330099999900C5C5C500FFFF
      FF00FFFFFF00F8F8F800EFEFEF00EFEFEF00E5E5E500DDDDDD00DDDDDD00A5A5
      A5007B7B7B0033333300000000000000000033333300A5A5A500C5C5C500FFFF
      FF00FFFFFF00F8F8F800EFEFEF00E8E8E80030C8F10032E9FF003CCDFF0026C5
      FF0031A2FF00449EFD000A449400000000000C82AB0073D2EF0087F6FF0078F0
      FE0074EEF20074EEF20074EEF20074EEF20074EEF20074EEF20074EEF2000C82
      AB0000000000000000000000000000000000000000000000000066666600BBBB
      BC00999999009999990099999900999999009999990099999900999999009999
      9900CCCCCC0066666600000000000000000033333300A5A5A500C5C5C500FFFF
      FF00FFFFFF00F8F8F800EFEFEF00E5E5E500E5E5E500D9D9D900D9D9D900A5A5
      A5007B7B7B0033333300000000000000000033333300ACACAC00CCCCCC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F8F8F800EFEFEF0030C8F10012EBF40023C3
      FD0000BCFF0022B8FE003D99E8000A4494000C82AB000C82AB00CEF2FD00D3FF
      FF00CEFFF400CEFFF400CEFFF400CEFFF400CEFFF400CEFFF400CEFFF4000C82
      AB00000000000000000000000000000000000000000066666600EFEFEF00ADAD
      AD00ADADAD00A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500CCCCCC0066666600000000000000000033333300ACACAC00CCCCCC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F8F8F800EFEFEF00E5E5E500E5E5E500A5A5
      A50083838300333333000000000000000000333333008D8D8D00B6B6B600CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00C5C5C500C5C5C500BCBCBC0030C8F10000E0
      FD0006C2F8004DD0F800135DBB000A449400000000000C82AB000C82AB000C82
      AB000C82AB000C82AB000C82AB000C82AB000C82AB000C82AB000C82AB000C82
      AB00000000000000000000000000000000000000000066666600F7F7F700EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00DEDE
      DE00F7F7F700666666000000000000000000333333008D8D8D00B6B6B600CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00C5C5C500C5C5C500BCBCBC00BCBCBC00A5A5
      A5007B7B7B003333330000000000000000000000000033333300333333003333
      33003333330033333300333333003333330033333300333333003333330030C8
      F10020E0FF00DFF0FF000A449400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000666666006666
      6600666666006666660066666600666666006666660066666600666666006666
      6600666666000000000000000000000000000000000033333300333333003333
      3300333333003333330033333300333333003333330033333300333333003333
      3300333333000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000030C8F10049A6F10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C17C6B00A4542F00AC5A
      3000AC5A3000AC5A3000AC5A3000AC5A3000AC5A3000AC5A3000AC5A3000AC5A
      3000AC5A3000AC5A3000B3664500000000000000000000000000000000000000
      0000000000000000000000000000964929009649290096492900964929009649
      290096492900964929009649290000000000000000009E542A00AD4E2300A54B
      2200A54B2200A54B22009B431A009B4E27009E542A00A54B2200AF481B00973F
      1600A54B2200AD441900A54B2200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000004400000044
      000000000000000000000000000000000000BE806200B3664500CF9B7700D39A
      7A00C4957A00C4957A00C4957A00C28C7300C28C7300C28C7300C1877100C187
      7100B7886800B58670009A614200A55229000000000000000000000000000000
      00000000000000000000B26D5200FFFFF000FFFFF000FFFFF000F8EFEC00E7F0
      E600EFE7E800F0DCD700F0DCD700964929009F584400F2D4D300FCEEEF00F6F2
      ED00F6F2ED00F7E7E800FAE2E200B3786400C0846C00FCEEEF00F0F0F000F0F0
      F000EDEDE700E9E4E100E2CCC70095452E000000000000000000000000000000
      00000000000000000000000000000000000000000000004400000C5C0C000073
      000000440000000000000000000000000000A5523600C4957A00F8FFF800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDF7F800FDF7F800F8EDF000F8ED
      F000F5E9E500F3E2E500ECD9D1009A4323000000000000000000000000000000
      00000000000000000000AE583A00FFFFF000F9FFF600F9FFF600FFF7FE00F8EF
      EC00E7F0E600EFE7E800F0DCD70096492900B16B4300FEFCF200F1F6F900F4EE
      E900FAF6F100EFE9EE00E2E7E500BC926D00BF9B7300FFFFF700FEF1F900FAF6
      F100EDEDE700F7E7E800F7DED4009B431A000000000000000000000000000000
      000000000000000000000000000000000000004400001C4D1C0000AC000000BD
      000000730000004400000000000000000000B75F3000C5977500F8FFF800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F7F900F0EFF100F0EF
      F100F2EFE700F2EFE700EBE4DB00A3401A000000000000000000000000000000
      00000000000000000000B85B4600FFFFFF00FFFFFF00F6F9F700FFF7FE00FFF1
      F400FFF1F400F8EFEC00F7F1E40096492900BA6A4D00FFFFFF00FFFFFF00F7F9
      F900FCEEEF00FFE8F200EFE9EE00CA8D7900D2998000F8FFFE00FEF1F900FEF1
      F900F0F0F000F0F0F000E8E1D800A44322000000000000000000000000000000
      0000000000000000000000000000004F00002749270000AC000000CC000000CC
      000000C40000066F06000048000000000000A4542F00CD958200F8FFF800FFFF
      FF00F8FCFF00F8FCFF00F8FCFF00FFFFFF00FFFFFF00FFFFFF00FDF7F800FDF7
      F800FDF7F800E6EAEB00F5E1DC00A0401C0000000000A15F2C00AA643C00AA64
      3C00AA643C00AA643C00AA643C00AA643C00AA643C00AA643C00F6FDFF00F6FD
      FF00F7EFF700F8EFEC00F8EFEC0096492900AE6F4900FAFFF500F7F9F900F7F9
      F900F7F9F900FAF6F100FAF6F100C5927800CA9B7C00FFFFFF00FAFFF500F4FE
      EE00FAF6F100F6F2ED00FAE2E2009E4B18000000000000000000000000000000
      00000000000000000000005C00004343430000B1000000E0000000D6000000D6
      000000E0000000CC00000E6C0E00004F0000B35A2800D8743E00FFBD6B00FFB8
      6600FEAE5B00FFAD5300FFA84D00FFA24400FF9E3C00FF993300F88F2800F88A
      2400FF822100FF7A1000FF812F009E4E1900A15F2C00FFFFF700EFF2F600EFF2
      F600EFF2F600E4F0F000FFF1F400F5E9E700E3DDDE00E3DDDE00AA643C00F6FD
      FF00FFF7FE00F7EFF700FFECEF0096492900B56B4900FFFFFF00FFFFFF00FFFF
      FF00F7F9F900F1F6F900E9EFF600C39A8400CCA27F00F8FFFE00F8FFFE00F8FF
      FE00FEF6FF00FEF6FF00EFE9EE009E4B18000066000000000000000000000000
      000000000000005C0000005C0000006600000685060000A1000000E0000000EE
      000000B1000006850600007A000027492700A9613200C26D3D00F8C07300FFB4
      6A00FFB46A00FEAE5B00FDA65000FFA24400FF9B3F00FF993300FF8F2E00FF8A
      2700F6881800FF8A0E00EB721200B5491900A15F2C00FFFFF700FFFFF700FFFF
      F700EFF2F600EFF2F600E4F0F000FFF1F400F5E9E700E3DDDE00A6593800F9E5
      C200FCE1BF00F6E3C000F7D4A90096492900B56B4900FFFFFF00FFFFFF00FFFF
      FF00F7F9F900F1F6F900E9EFF600C39A8400CCA27F00F8FFFE00F8FFFE00F8FF
      FE00FEF6FF00FEF6FF00EFE9EE009E4B18000066000000000000000000000000
      000000000000000000000000000000000000005C00000099000000F6000000F6
      00001E7C1E00005C00000000000000000000BC7F5700D3845B00A1592A00B358
      3100B3583100AF542700AF542700AF542700AF542700B2532100B2532100B253
      2100B2532100B5491900A2502000A7430200A15F2C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F5F6EC00F5F6EC00EFE7E800EFE7E800A6593800FF98
      3A00FF983A00FE881F00F57D130096492900BB693F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F2FB00D2998000D59B7700F9F6FF00FFFFFF00FFFF
      FF00FFFFFF00F7F9F900F4EEE900AD4419000073000022612200000000000000
      0000000000000000000000000000006600001E751E000AE80A000DFE0D000AE8
      0A00008400000000000000000000000000009C573600CD958200FFFFF800FFFF
      F800FFFFF800FFFFF800FFFFF800FFFFF800FCF9F100F9F6EE00F9F6EE00F2EF
      E700EDE4E700EDE4E700DED4D4008E442000A15F2C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700EFF2F600FFF1F400FFECEF00A6593800E97E
      2300EB842400EA791B00E374120096492900B56B4900F8FFFE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00D1978400CA9B7C00F8FFFE00FFFFFF00FFFF
      FF00FFF7F700F7F9F900F0F0F000A047220000730000176E1700088808000084
      0000007300000073000000730000169316002FDC2F0042FE420042FE420018B9
      180000730000000000000000000000000000AC573700C4957A00F8FCFF00F8FC
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F7F900F8F7F900F0EF
      F100F8ECE600F8ECE600EADCDD009E3D1900A15F2C00FFFFFF00FFFFFF00FFFF
      FF00F6FDFF00FFFFFF00F6F9F700FFFFFF00FFF7F700FCE9EC00A65938009952
      2600A75B2A00A64F2F00AE5C330000000000AC6D5100FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFFFFF00C99E8B00D2998000F8FFFE00FEF6FF00FFFF
      FF00FFFFFF00FFFFFF00FFFAED00A54B220000000000007A00001290120041C3
      41005CD05C0050C9500058D3580077F7770087FE870099FF990052DB52000685
      0600007A0000000000000000000000000000B3583100CC9A7C00F8FFF800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCF3F600FCF3
      F600FCF0EA00F2EFE700FAE4DF009F3F2800A15F2C00FFEDD800FFEDD800FFED
      D800FEE9D400F0E7D300FEE9D400FFDCC800F3DDC100FACEB700AE583A000000
      000000000000000000000000000000000000AC6D5100FFEED600FFEED600FFE4
      D000FFECD000FFE1BB00FFE1BB00CD907000D28E7100FFEED600FCE7D200FCE7
      D200F7E9C500F8E0BC00FFD5B600AA4727000000000000000000008C00002F8F
      2F0058D35800BEFEBD00E3FEE300DEFEDD00CCFFCC005CD05C002A842B000084
      000000000000000000000000000000000000AF5A2800CC824C00F6D19300FFC4
      8900FFC48900FFC08000FFBC7B00FEB77300FFB46A00FFAF6200FFAF6200FDA6
      5000FE9E4B00F8A14500F0904A00B8451200A15F2C00FDBC7700FDBC7700FFB2
      6400F6AC4E00FF9F4C00FF993300FF8D2F00FA901B00F57F1500C85610000000
      000000000000000000000000000000000000C8753700FABD6D00FFB56700F9A3
      5700FAA04800FF993300FD8E2C00D35F1200CD763600FCBA6C00FFAF5900FF9F
      4300FF993300F58F2C00F68E3B00B1440600000000000000000000000000008C
      00000099080010A419002DB63D0037BB480013AA220000990800008C00000000
      000000000000000000000000000000000000A15F3600C16D3900F8C07300FFB4
      6A00FFAF6200FEAE5B00FDA65000FDA65000FF9B3F00FF993300F9912C00F991
      2C00FF822100FD801000FD7C2700B5491900A15F2C00A15F2C00D3763100D879
      3000C9712B00C46F2700C8671700D8671100D75F0C00BC551000995226000000
      000000000000000000000000000000000000C0714A00CC894400E18F4E00EB8B
      4900E5833500E87E2100E5761400B74F0E00C06C3C00E1985400E3934600E485
      3600E7852D00E5761A00E56E2300B44E1E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C06C5300CC824C00CC7B
      4200CC7B4200CC7B4200CC7B4200CD753900CD753900CE6F3000CE6F3000CC6B
      2900D5683200C7682300B54919000000000000000000A15F2C00A6593800A659
      3800A6593800A6593800A6593800AE562E00AE562E009A593A00000000000000
      00000000000000000000000000000000000000000000AE785700B56B4900C071
      4A00B3623C00C26F4200BC603500B5502900AE6F4900B3623C00BC643C00B362
      3C00B3623C00BA5A36009F553300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AB8D8D00997676009976760099767600997676009976
      7600997676009976760099767600997676000000000000000000000000000000
      0000000000000000000000000000AB8F8F00AB8F8F00AB8F8F00AB8F8F00AB8F
      8F00AB8F8F00AB8F8F00AB8F8F00AB8F8F000000000000000000000000000000
      00000000000000000000000000000000000000000000083F85000069D300095E
      CB00083F85000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DCC6C600FEF7F700FEF7F700FEF7F700FEF7F700FCF0
      F000F8EEEE00F5E7E700F5E7E700997676000000000013437C0013437C001343
      7C0013437C0013437C0013437C00EDDEDE00FFFFFF00F9F3F300F9F3F300F7EE
      EE00F7EEEE00F0E6E600F0E6E600AB8F8F000000000000000000000000000000
      0000000000000000000000000000000000000A448B000079EB000163C5000163
      C5000076E800083F850000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DCC6C600FEF7F700FEF7F700FEF7F700FCF0F000F8EE
      EE00F5E7E700F1E4E400F1E4E4009976760013437C000A72CC000A72CC000A72
      CC000A72CC000A72CC00227BC600E9DDDC00FFFFFF00F7EEEE00F7EEEE00F7EE
      EE00F0E6E600F0E6E600EDDEDE00AB8F8F0000000000000000000A316E000A31
      6E000A316E000000000000000000000000001965C800037DDC00000000000C38
      7400047BD800066BBF0000000000000000000000000000000000000000000000
      0000004400000044000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DCC6C600FFFFFF00FFFFFF00FCF0F000FCF0F000F5E7
      E700F5E7E700F1E4E400F1E4E4009976760013559700FFFFFF00108DE600108D
      E600108DE6000885E700268EDC00E9DDDC00FFFFFF00F9F3F300F7EEEE00F0E6
      E600F0E6E600F0E6E600EDDEDE00AB8F8F00000000000A316E001F49BA00006B
      DE001965C80009549F000000000000000000098CE0000982D500000000000000
      00001D77D200066BBF0000000000000000000000000000000000000000000044
      0000007A00000C5C0C0000440000000000000000000000000000000000000000
      000000000000000000000000000000000000AB8D8D00AB8D8D00AB8D8D00AB8D
      8D00AB8D8D00AB8D8D00AB8D8D00FFFFFF00FFFFFF00FEF7F700F8EEEE00F5E7
      E700F5E7E700EEDEDE00EEDEDE0099767600185A9700FFFFFF00168FE400168F
      E400168FE400108DE6002F93DB00E9DDDC00FFFFFF00F9F3F300EEEBEB00F0E6
      E600F0E6E600E9DDDC00E9DDDC00AB8F8F00000000000952B7000076F2000356
      A900046AC000068DE700066BBF00000000000CA3E90019A6F3000D79D7000D79
      D7000DB0F800066BBF0000000000000000000000000000000000004400000073
      000000BE000000AC00001C4D1C00004400000000000000000000000000000000
      000000000000000000000000000000000000DECECE00FCF0F000F1E4E400F1E4
      E400F1E4E400EEDEDE00DCC6C600FEF7F700FFFFFF00FFFFFF00FCF0F000F1E4
      E400EEDEDE00E7D7D700E7D7D700997676001E659800FFFFFF001E97E7001E97
      E7001E97E7001896E800379BDD00E9DDDC00FFFFFF00FFFFFF00F9F3F300F0E6
      E600E9DDDC00E7D8D800E7D8D800AB8F8F00000000000069D300035CB8000000
      0000000000000B78CA000CBEFE000D83CE0010A6E40013EDFE0010D0FE0010D0
      FE0010B5F0000C65B700000000000000000000000000004800000670060000C5
      000000C5000000C5000000AC000027492700004F000000000000000000000000
      000000000000000000000000000000000000DECECE00FFFFFF00FEF7F700FEF7
      F700FEF7F700FCF0F000DCC6C600FEF7F700FFFFFF00FFFFFF00FFFFFF00F8EE
      EE00EEDEDE00DECECE00DECECE0099767600246B9900FFFFFF002AA7EB0028A0
      EB0028A0EB00219FED003EA3E000E9DDDC00FFFFFF00FFFFFF00FFFFFF00F7EE
      EE00E9DDDC00DECFCF00DECFCF00AB8F8F00000000001D55B8000D76DC000D53
      9C00000000000D76CF0010D0FE0016ECFE0011BCF3000FC2FB000CA3E9000CA3
      E9000C65B700000000000000000000000000004F00000E6D0E0000CC000000E0
      000000D6000000D6000000E0000000B1000043434300005C0000000000000000
      000000000000000000000000000000000000DECECE00FFFFFF00FEF7F700FCF0
      F000F8EEEE00F8EEEE00DCC6C600FEF7F700FFFFFF00FFFFFF00FFFFFF00FEF7
      F700F5E7E700DECECE00DCC6C60099767600286E9A00FFFFFF003CC5EE0037B8
      EE0033AFEE002BABF10047ACE300E9DDDC00FFFFFF00FFFFFF00FFFFFF00F9F3
      F300F0E6E600DECFCF00DECFCF00AB8F8F00000000000B4A8F000687DD00178E
      E7004670EA002AA3F90013D3FE0018CDF90045B1BE00526484003B3C55000000
      00000000000000000000000000000000000027492700007A00000684060000B1
      000000EE000000E00000009900000684060000660000005C0000005C00000000
      000000000000000000000000000000660000DECECE00FFFFFF00FFFFFF00FCF0
      F000F8EEEE00F8EEEE00DCC6C600FEF7F700FFFFFF00FFFFFF00FFFFFF00FEF7
      F700F1E4E400CEB7B700C5ABAB00997676002B739C00FFFFFF0049D3F20049D3
      F20049D3F20042D1F3005BCBE400E9DDDC00FFFFFF00FFFFFF00FFFFFF00F9F3
      F300F0E6E600D2C0C000C8B2B200AB8F8F0000000000000000000B4A8F003470
      DA0017AFEF001FB8F300108FDB00047BD800807C8500B8928F00935169005836
      3900000000000000000000000000000000000000000000000000005C00001E7C
      1E0000F6000000F6000000990000005C00000000000000000000000000000000
      000000000000000000000000000000660000DECECE00FFFFFF00FFFFFF00FEF7
      F700F5E7E700F5E7E700DCC6C600FEF7F700FFFFFF00FFFFFF00FFFFFF00FCF0
      F000EEDEDE00B99E9E00A38282009B7878002F7DA800FFFFFF0054DCF50054DC
      F50054DCF5004EDDF70065D3E800E9DDDC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C3ACAC00B1969600AB8F8F000000000000000000000000000674
      D3000D62B7000D68C000000000000000000084636300A68B8B00D5C5C500A67A
      88006E4745000000000000000000000000000000000000000000000000000084
      00000AE80A000DFE0D000AE80A001E751E000066000000000000000000000000
      000000000000000000002062200000730000DECECE00FFFFFF00FFFFFF00FFFF
      FF00FCF0F000F1E4E400DCC6C600FCF0F000FFFFFF00FFFFFF00FCF0F000F5E7
      E700F1E4E400C5ABAB00A3828200000000002F7DA800FFFFFF005FE8FB005FF0
      FE005FF0FE005FF0FE0070E6F200EDDEDE00FFFFFF00FEF9F800FEEDED00FDE8
      E400EFE6DE00CCB9B900CCB9B900000000000000000000000000000000000000
      000000000000000000000000000000000000B59A9A00B59A9A009F848400E8E1
      E100BFA0AA008463630000000000000000000000000000000000000000000073
      000018B9180042FE420042FE42002FDC2F0016931600007A0000007A0000007A
      000000840000088C0800176E170000730000DECECE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FCF0F000DCC6C600DCC6C600DCC6C600DCC6C600DCC6C600DCC6
      C600DCC6C6009976760000000000000000003A98C300FFFFFF0068E1EC0064BB
      C30063B6BF0060B8C2006EB3BB00A89F9F00A89F9F00ACC0C300B0D8DC009CBC
      CC00CCB9BD00CCB9BD0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C2AEAE00CCBEBE006B474700AD94
      9400F8F3F300DBCECE009F84840000000000000000000000000000000000007A
      00000084000052DB520099FF990087FE870078F7780059D3590051CA51005CD0
      5C0041C3410012901200007A000000000000DECECE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FCF0F000EEDEDE00DCC6C600C5ABAB0099767600000000000000
      0000000000000000000000000000000000003A98C300FFFFFF0073A8A900A08D
      8C00A6929200A6929200A6929200999999009999990070999A0073FEFE0039AF
      DC00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D1C3C300DBCECE00907272000000
      0000B59A9A00FFFFFF00D5C5C500000000000000000000000000000000000000
      0000008400002A842B005CD05C00CCFFCC00DEFEDD00E3FEE300BDFEBC0059D3
      59002E8E2E00008400000000000000000000DECECE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FCF0F000E7D7D700C2A6A600A382820099767600000000000000
      00000000000000000000000000000000000059C9EE0059C9EE006C889500C8B2
      B200F7EEEE00EDDEDE00EDDEDE00F0E6E600D5C3C200778188005AC5E7005277
      D800000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DED5D500DED5D500907272000000
      000000000000C2AEAE00DED5D500000000000000000000000000000000000000
      000000000000008D00000099080013AA220037BB48002DB63D0010A419000099
      0800008D0000000000000000000000000000DECECE00FFFFFF00FFFFFF00FFFF
      FF00FEF7F700F8EEEE00E7D7D700C2A6A6009976760000000000000000000000
      0000000000000000000000000000000000000000000059C9EE0059C9EE00967B
      7A00EFE6DE00FFFFFF00FFFFFF00EEEBEB00967B7A004E678600167BD0000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D5C5C500EDE6E600907272000000
      00000000000000000000C2AEAE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DCB9C900E7CCD800E7CCD800E5C7
      D300E2C5D100E5C7D300C2A6A600997676000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000967B
      7A00967B7A00967B7A00967B7A00967B7A00967B7A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D5C5C500CAB9B9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000616570006165
      7000616570000000000000000000000000000000000000000000000000006165
      7000616570006165700000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000076767600333333003333
      3300333333003333330033333300333333003333330033333300333333003333
      3300333333003333330033333300000000000000000061657000159ECF000741
      BF000F0291006165700000000000000000000000000000000000616570001669
      C8001D7DD500066FBD006165700000000000000000000000000000000000172E
      AA00172EAA00172EAA00172EAA00172EAA00172EAA00172EAA00172EAA00172E
      AA00000000000000000000000000000000003C62B0003C62B0003C62B0003C62
      B0003C62B0003C62B0003C62B0003C62B0003C62B0003C62B0003C62B0003C62
      B0003C62B0003C62B0003C62B0003C62B0007676760076767600F2F4F400F2F4
      F400EFEFEF00EFEFEF00EFEFEF00E5E5E500E5E5E500DFE3E400D8DDDE00D8DD
      DE00CCCCCC00DBD7DC00333333003333330000000000616570001287E4000F20
      CE000831F200090F9800616570000000000000000000616570000079D60019A4
      FF0024B1FF00018FEF00616570000000000000000000000000001B3DA9004E6B
      C000648ECE004B72C5005179C500648ECE005B82CB006384CA006384CA006277
      C700172EAA000000000000000000000000006384CA00E6D0BA00EDDFCF00E6D7
      C600EDDFCF00EDDFCF00E6D7C600EDDFCF00EDDFCF00E6D7C600EDDFCF00EDDF
      CF00E6D7C600E6D7C600E6D0BA003C62B00076767600FFFFFF00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00B1AC9700B1AC9700B1AC9700B1AC9700B1AC9700B1AC
      9700B1AC9700B1AC9700D5D2CD003333330000000000616570003848C0006699
      FF001E5DFE000322F0001411960061657000616570000080CC001ABAFD0019C2
      FE0020CBFF000899E0006165700000000000000000001B3DA9004471BD004D78
      C3004D78C300769AD400B9CEEA00CFDFF000C2D5EE008CABDD008CABDD008CAB
      DD005B80C300172EAA0000000000000000006384CA00EADDD200FFFFFF00EAEA
      EA00FFFFFF00FFFFFF00EAEAEA00FFFFFF00FFFFFF00EAEAEA00FFFFFF00FFFF
      FF00EAEAEA00FFFFFF00EADDD2003C62B00076767600FFFFF800D5D0C100FBF4
      D900FFFFCC00FEF3B900F5ECA200E8E18C00E9D17900D9BE6300D8B75A00DFB0
      5F00AD743C00B1AC9700E5E5E500333333000000000000000000616570006F96
      F30079A5FF00275CFF000027F000000DA5000E66CA0020CBFF0029D6FE0029D6
      FE0017B7F300156EA3006165700000000000000000001B3DA9005681C700476D
      C2007892D200E0E7F600F6F8FF00D5E0F400FFFFFF00E0E7F60098AEDF0088A3
      D9006384CA00172EAA0000000000000000006384CA00EADDD200FFFFFF00EAEA
      EA00FFFFFF00FFFFFF00EAEAEA00FFFFFF00FFFFFF00EAEAEA00FFFFFF00FFFF
      FF00EAEAEA00FFFFFF00EADDD2003C62B00076767600FFFFFF00B1AC9700DCD3
      AD00E0D1A000E1C99500D5B48300CEA77B00DAA06500E6A96B00E8A05800E695
      4000E6954000B1AC9700E5E5E500333333000000000000000000000000006165
      70009EB7F6009AC0FF001D5FFF000000CC001554C80037E5FC002CEFFF0025C7
      F300176BAA00616570000000000000000000000000001B3DA9003A64BE006E91
      D300E3E8F800F6F8FF00A4B9E300A9C0E900B0C4E600F6F8FF00E3E8F8008CAB
      DD006384CA00172EAA0000000000000000006384CA00EADDD200EAEAEA00EAEA
      EA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEA
      EA00EAEAEA00EAEAEA00E5DACF003C62B00076767600FFFFFF0093908800EADC
      D000FADED300FFCCCC00F3C2B800E8B1A800DCA69500C7897100B1705100A859
      320097441E00B1AC9700E5E5E500333333000000000000000000000000005A62
      7C004145A900B5CFF1009BACED001341D3001486D20038EFF60026DDF7000968
      9A0061657000000000000000000000000000000000001B3DA9003A68C000B3C7
      EA00F6F8FF0088A3D9003464BE00BACDEC004D78C300A5BBE000FFFFFF00C2D5
      EE00597EC800172EAA0000000000000000006384CA00EADDD200FFFFFF00EDED
      ED00FFFFFF00FFFFFF00EAEAEA00FFFFFF00FFFFFF00EAEAEA00FFFFFF00FFFF
      FF00EAEAEA00FFFFFF00EADDD2003C62B00076767600FFFFFF007B757000D693
      8400BE8D7F00B2826600B16F5D0092362500903023008233260084442C007939
      16006A280500B1AC9700E5E5E500333333000000000000000000616570009999
      9900777A9D005F75CC006C9BD50021A4E8003B91B50069ADB6002C84AF006165
      700000000000000000000000000000000000000000001B3DA9004B72C500CCD7
      F100CCD7F1004B72C500426CC000D5E0F4004D78C3007294D300E5EBF900D5E0
      F4005B82CB00172EAA0000000000000000006384CA00EADDD200FFFFFF00EAEA
      EA00FFFFFF00FFFFFF00EAEAEA00FFFFFF00FFFFFF00EAEAEA00FFFFFF00FFFF
      FF00EAEAEA00FFFFFF00EADDD2003C62B00076767600F8FFFE006F7D65009AB8
      710074BB5E0063B63C004CA728003F9A0F0043870A008CAD7400CDD8BE00A5D2
      89005FAE390083B15800E5E5E500333333000000000061657000ABA7AB00E5D6
      E100DBE2D500B4BAD40097B5E20090C2D9008C9DA3009E8A9300616570000000
      000000000000000000000000000000000000000000001B3DA9004B72C500CCD7
      F100CCD7F100476DC2003A64BE00D5E0F4004B72C5006E91D300E5EBF900CFDF
      F000597EC800172EAA0000000000000000006384CA00EADDD200E2E4E500D5D5
      D500DEDEDE00DEDEDE00D5D5D500E6E1DF00E6E1DF00D5D5D500E6E1DF00E6E1
      DF00D5D5D500E6E1DF00DACDC2003C62B00076767600F0FFFF0066674D0099C0
      72008EC96E0083B1580083BD5E0082CC5C00349F0900378800004B9017006B7B
      2400AD683700C67F6400E5E5E5003333330061657000B7B7B700EDEDEE00E4E5
      E600F1F5EC00F1F5EC00FFFFFF00D9D5D10082847E0099999900999999006165
      700000000000000000000000000000000000000000001B3DA900385EBC00A6BC
      E500F6F8FF008EA7DD002A58BC00B0C4E6003A68C000A3B8E100FFFFFF00B0C4
      E6004B72C500172EAA0000000000000000006384CA00EADDD200FFFFFF00DEDE
      DE00FFFFFF00FFFFFF00DEDEDE00FFFFFF00FFFFFF00E6E1DF00FFFFFF00FFFF
      FF00E6E1DF00FFFFFF00EADDD2003C62B00076767600F8FFFE0033333300EFF9
      BD00BED19800EDEDBF00FFFFE300EDEBC200EDEBC200D9D7B400DBBCAD00EDAF
      A900C7897100C18C6100E5E5E5003333330061657000EDEDEE00616570006165
      7000EAEDE800F8FFFF00F8FFFF00BBBEBE009999990061657000918D92009999
      990099999900616570000000000000000000000000001B3DA9002E54B8005277
      C700E0E7F600FFFFFF00A6BCE500A9C0E900B0C4E600FFFFFF00E0E7F6007294
      D3004B72C500172EAA0000000000000000006384CA00EADDD200FFFFFF00DEDE
      DE00FFFFFF00FFFFFF00DEDEDE00FFFFFF00FFFFFF00E6E1DF00FFFFFF00FFFF
      FF00E6E1DF00FFFFFF00EADDD2003C62B00076767600FFFFFF0033333300FF99
      6600F8986200FF996600FF996600FF996600F9A15B00FFE8C300FBDDC200FFA7
      7400FE985D00F0B39300E5E5E50033333300616570008A8A8A00616570000000
      000061657000EEF0E800FFFFFF00BBBEBE00616570000000000061657000ABA7
      AB00D3D1D300B7B1BA006165700000000000000000001B3DA900476DC2001844
      B2005776C600D4DDF200F6F8FF00D5E0F400F6F8FF00D4DDF2006E8CD0004D78
      C300648ECE00172EAA0000000000000000006384CA00E5CDB500EDDFCF00D4C5
      B600EDDFCF00EDDFCF00D4C5B600EDDFCF00EDDFCF00D4C5B600EDDFCF00EDDF
      CF00D4C5B600EDDFCF00E3C8AE003C62B00076767600FFFFF80033333300FF99
      6600FF996600FF996600FF996600FE985D00FDC98600FFF9DE00EFFFF800FFF4
      CE00FFA77400FFB49400E5E5E500333333000000000061657000000000000000
      000061657000F7F7F700FFFFFF009E8A93006165700000000000000000006165
      7000DFE8E800F8FFFF009DA19E0061657000000000001B3DA9004263BD00264E
      B5001844B2005277C70098AEDF00BACAE9009CB2E0005B82CB00416CC2005179
      C5004471BD00172EAA0000000000000000006384CA006384CA006384CA006384
      CA006384CA006384CA006384CA006384CA006384CA006384CA006384CA006384
      CA006384CA006384CA006384CA003C62B00076767600F6FFF200333333003333
      330033333300333333007E675F007B7264007D6F7000777B7000777B70008784
      86007B80830099999900F6FFF200333333000000000000000000000000006165
      7000F8FFFF00F7F7F700A3A2A200616570000000000000000000000000000000
      000061657000F7F7F700DEE0DF008A8A8A0000000000000000001B3DA900435D
      BA00476DC2002D53B800345DBB00476DC2003A64BE003A64BE005B82CB004E6B
      C000172EAA000000000000000000000000001C2EAA001C2EAA001C2EAA001C2E
      AA001C2EAA001C2EAA001C2EAA001C2EAA001C2EAA001C2EAA001C2EAA001C2E
      AA001C2EAA001C2EAA001C2EAA001C2EAA0076767600F6FFF200FFFFFF00F6FF
      F200F8FFFE00FFFFF800FFFFF800F8FFFE00F8FFFE00F8FFFE00F0FFFF00FFFF
      FF00FFFFFF00FAF4F900E5E5E500333333000000000000000000000000006165
      7000616570006165700061657000000000000000000000000000000000000000
      000000000000616570008A8A8A00616570000000000000000000000000001B3D
      A9001B3DA9001B3DA9001B3DA9001B3DA9001B3DA9001B3DA9001B3DA9001B3D
      A90000000000000000000000000000000000000000001C2EAA001C2EAA001C2E
      AA001C2EAA001C2EAA001C2EAA001C2EAA001C2EAA001C2EAA001C2EAA001C2E
      AA001C2EAA001C2EAA001C2EAA00000000007676760076767600CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00767676003E3E3E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000076767600767676007676
      7600767676007676760076767600767676007676760076767600767676007676
      760076767600767676007676760000000000424D3E000000000000003E000000
      2800000040000000400100000100010000000000000A00000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF8FFF8F8001FF87F003FF838001FF83
      F001FC018001FFC1F001F800FFC1F000E000F000FE20F000C000E000FC00F000
      C003C003F800F003C001C001F003C001E001C000E001C000F000F000C000C000
      F830F000C000E000FC7FF00FE000F00FFFFFF80FF00FF81F8001FFFFF00FFC3F
      8001FFFFF00FFFFF8001FFFFFFFFFFFFFFCFE038FE1F0007FFCFE010FE0F0007
      FFCFE000FF070003E1CFF001FF830003E04FF803FF030000E000F801C6030000
      F000FC00C00F0000F00FE000C1070000E00FE001E0030000E00FE03FF0030001
      E0CFF01FC0430001E07FF00FC1FF0007E03FF80FC1FF0007F01FF807E0FF000F
      F81FFC07F07F000FFC1FFF07F87F000FFE1FFE1FFE1FFE1FFE0FFE0FFE0FC203
      8007FF07FF0781018003FC03C00380018003F803800380018003F8038003C003
      800FF8078007E007800780078007F007800380038003E003800300038003C003
      800300038003C003800F000F80078001801F007F80078181803F007F8007C3C3
      807F007F800FEFF780FF807FFFFFFFFFFF00FF000001FE1FFF00FF000000FE0F
      FE00FF000000FF07FC00FE000000FF83FC00FE0000008203FC00FE0000008003
      C000FE000000800FC000E00000008007C003000700008003C003007F00008003
      C03F007F00008003C03F007F00008003C03F007F00008003C03F007F0000800F
      FFFF00FF000087FFFFFF00FF0000FFFFFF00FF00FFFFFF00E000C300FE00FF00
      E0008100FE00E000E0008000FE00C000E0008000FE00C000E000C0000000C000
      E000E0000000C000E000F0000000C000E003E0070000C003E003C0030000C003
      E003C0030000C003E00380010000C003E0078181FE00C003E00FC3C3FE00C003
      E01FEFF7FE00FFFFFFFFFFFFFE00FFFF83C18001E1FFFF0001800000E0FFFF00
      01800000E07FCF0001800000E03FC00001800000E01FC00001800000E00FC000
      01800000E007C00001800000E007C00001800000E007C00301800000E007C003
      01800000E00FC00101800000E01FC00F01800000E03FC00F01800000E07FE3FF
      01800000E0FFFFFF83C18001E1FFFFFFFFFFFFFF8001FFFFF00FFFFF8001FFFF
      F00FFC3F8001FFFFF00FF81FFFFFF01FE007F00FFE3FF00FC003E007FC1FF00F
      C003C003F80FF00FC007C003F007C003E00FC003E003C003F01FF00FC003C003
      F83FF00FC003E007FC7FF00FE007F00FFFFFF80FF00FF81F8001FFFFF00FFC3F
      8001FFFFF00FFFFF8001FFFFFFFFFFFFF800F00FE007E001F800E007C003E000
      F800C00380018000C800C003000080008000C003018000008000C00303C00000
      C00F800107E000000003800107E000000303800107E000000303C00303C08000
      0003C00301808000C00FC0030000E0008007E0078001E0018007F00FC003E003
      C84FFC3FE007E007F87FFE7FF81FE00FFFC7FFC7FE38FFC7FF01FFC7FE10FF01
      8F01F847F800F8010600C800C801C80002008000800380000000800080018000
      8001C007C000C001C001000300000001C007030302000303E01F030303030303
      C00F0003000300038007C00FC00FC00F00038007800780070303800780078007
      0783C84FC84FC84F8FC7F87FF87FF87FFFC7FFC7FFC7FFC70001FF01FF01E001
      0001FF01E001C0010000FE00C000800000008000800000000000000000000000
      000100010001000100010001000100010007000300030003000F000300030003
      000F000100030003000F000100030001001F000F00030000003F000F00030000
      007F800F0003800180FFFFFF8007FFF3FFFFFFFFFFCFFFCFFFFFFFFFFE49FE49
      FFFF007FFC000000FFFF007FFE010001FFFF007FFF010001FFFF007FFE010001
      FFFF007FFC0000000003007F000100490003007F0003004F0003007F0003007F
      0003007F0003007F0003007F0003007F0003007F0003007F0003007F0003007F
      0003007F0003007F0003007F0003007FFE00C000FE38FE00E00080000000FE00
      C00000000000FE00800000000000FE000000000000008E000000000000008600
      00000000000080000000000000008000000000000000C000000380010000C03F
      0003E007000080FF0001E0070000007F0000F00F0000001F0000F00F0000210F
      8001F00F8001C38FFFF3F00FFFFFC3CFADF9FE00FE00FE00BDF00000FE00FE00
      29E00000FE00E000BDC10000FE00C000FF83000080008000C007000000000000
      800F000000000000001F000000000000001F000000000000001F000F00030003
      001F000F00010003001F000F00010003001F001F000F0003003F003F000F0003
      807F007F800F0003C0FF00FFFFFF8007FF0FFFFFFFFFFFFFFF07FFFFFFFFFFFF
      FE07FFFFF81FFFBFE60F9249F3CFFF3FE01F2493E7E7FE7FE01FBFFDCFF3FCFF
      E0073FF99FF9F9F7E0077FFBFFFFF3F7E00FBFFD9FF9E7F3E01F3FF9FFFFCFFB
      E03F7FFB9FF99FF9E07F9249CFF39B6DE0FF2493E7E7DB6FE1FFFFFFF28FFFFF
      E3FFFFFFFABFFFFFE7FFFFFFFFFFFFFFC001FE00F600800080008000F2000000
      00000000C000000000000000C000000000000000920000000000000096000000
      000000009E0000000000000080000000000000000000000080010000007F0000
      E0070001007F0000E0070003007F0000F00F000F007F0000F00F000F007F0000
      F00F801F007F0000F00FE07F80FF8001FF01C003FF01FF01FE008001FE00E000
      FE008001E000C000FE008001C000800080008001800000000000800100000000
      00008003000000000000C003000000000001C003000100010003C00300030003
      0001E007000300030001C00300030001000FC00300030000000F800300030000
      800F800300038001FFFFC0078007FFF3FFFFFFFFFFFFFFFFFFFF8001FE018001
      FFCF0000FC000000FF870000FC000000FF030000FC000000FE01000080000000
      FC0000000000000078000000000000007F030000000000003E07000000000000
      000700000001000080070000001F0000C00F0000001F0000E01F0000001F0000
      FFFF8001803F8001FFFFFFFFFFFFFFFFFC00FE00FF87FFFFFC008000FF03FFFF
      FC000000C723F3FFFC0000008333E1FF000000008103C0FF000000009803807F
      000000008807003F00000000801F001E00000000C00FC0FE00000000E307E07C
      00010001FF03E00000030003FF01E001003F000FFF11F003003F000FFF19F807
      007F801FFF1DFFFF00FFE07FFF9FFFFFC7E3FFFFFFFF800183C1E00F00000000
      8181C007000000008001800300000000C001800300000000E003800300000000
      E007800300000000C00F800300000000801F800300000000000F800300000000
      00038003000000001041800300000000B060800300000000E0F0C00700000000
      E1F8E00F80010000FFFFFFFFFFFF800100000000000000000000000000000000
      000000000000}
  end
  object popSelect: TPopupMenu
    Images = imagenesEntorno16
    MenuAnimation = [maBottomToTop]
    OnPopup = popSelectPopup
    Left = 488
    Top = 83
    object mSeleccionCuadrada: TMenuItem
      Tag = 1
      Action = aImagenSelRect
      Bitmap.Data = {
        66050000424D6605000000000000360400002800000016000000160000000100
        08000100000030010000C30E0000C30E000000010000000100000000000099A8
        AC00C6C6C600CBCBCB00CECECE00CFCFCF00D0D0D000D8E9EC00EAEAEA00F4F4
        F400FFFFFF000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000160200000102
        1407010200000102140701020000010214070102000001021407010200000102
        1407010200000102040700110101070101070101070101070101070702000000
        0016020707070000070000070000070000070000070707020000010204070101
        0C07000401070702000000060207070700010B07000500010707020000000005
        0207070700000C07000500070707020000000102040701010C07000401070702
        000000060207070700010B070005000107070200000000050207070700000C07
        0005000707070200000001020407001101010701010701010701010701010707
        0200000000160207070700000700000700000700000700000707070200000102
        1407010200000102140701020000010214070102000001021407010200000102
        14070102000016020001}
      RadioItem = True
    end
    object mSelccionCircular: TMenuItem
      Tag = 2
      Action = aImagenSelCirc
    end
    object mSeleccionPoligono: TMenuItem
      Tag = 3
      Action = aImagenSelPoli
    end
  end
  object DDMZoom: TPopupMenu
    Left = 624
    Top = 83
    object N111: TMenuItem
      Caption = '1:1'
      OnClick = tbZoomClick
    end
    object N211: TMenuItem
      Caption = '2:1'
      OnClick = N211Click
    end
    object N121: TMenuItem
      Caption = '1:2'
      OnClick = N121Click
    end
    object MenuItem1: TMenuItem
      Caption = '-'
    end
    object Otro1: TMenuItem
      Caption = 'Otro...'
      OnClick = Otro1Click
    end
  end
  object odListaPasos: TJvOpenDialog
    Filter = 'ARPI Lista de Pasos (*.alp)|*.alp'
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Height = 0
    Width = 0
    Left = 312
    Top = 128
  end
  object pmVerBarras: TPopupMenu
    Left = 560
    Top = 83
    object BarradeAlgoritmos1: TMenuItem
      Action = aVerBarradeAlgoritmos
    end
    object BarradeImgenes1: TMenuItem
      Action = aVerBarradeImagenes
    end
    object BarradeMatrices1: TMenuItem
      Action = aVerBarradeMatrices
    end
    object BarradePasos1: TMenuItem
      Action = aVerBarradePasos
    end
    object BarradeReferencias1: TMenuItem
      Action = aVerBarradeReferencias
    end
  end
  object ImagenesEntorno24: TImageList
    Height = 24
    Width = 24
    Left = 560
    Top = 144
    Bitmap = {
      494C010131003600040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000006000000050010000010020000000000000F8
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F2F300ECEBEE00EBEBEE00EBECED00F2F2
      F300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00262BB300011ED300011ED300011ED300181D
      A400FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE003037BA000133FE000133FE000133FE00171E
      AA00FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00F3F3F400EDECEE00EAEAED003138B9000133FE000134FE000134FE00121A
      A800E7E7EA00EBEBED00F2F2F300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE002026B1001B34D100132CD1000E2FDF000335FE000133FE000134FE00011F
      D600011CD100011CD100080EA600FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE003E48C300466EFE003761FE002855FE001948FE00093BFD000134FE000134
      FD000133FE000133FE000712AF00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00464DC3005F82FE005076FE004069FE00315DFE002350FE001343FE000537
      FD000134FE000133FE000712AF00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE004F55C40086A2FD007996FD006889FD004A71FE003B64FE002C58FE002F5A
      FD002B56FE00234EFE000E17AF00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00BBBCBC00B7B8
      B800706FBE005D5DB3005C5CB3003C41B8006385FE005479FE00456DFD001117
      A6005C5BB3005C5CB3008B8AC800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099979600D2C7C800B7AE
      AF00D7CBCC00DCD0D000E3D8D8004548B9007B9AFE006C8DFE005D82FE002227
      AB00FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B1ABAC00D6CECE00C7BF
      C000F1ECED00F9F5F500FAF6F700494CBA009EB6FE0090AAFE00819EFD00272C
      AA00FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ABAAAA00CFCBCB00B7B5
      B500C7C4C500C3C2C200C3C1C1007C7DC2006060B3006060B3006060B3009D9E
      CE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E0E0E000F6F1F200F9F4
      F500F9F4F500F9F4F500F9F4F500F9F4F400EBE7E800E2E2E200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FAFA
      FA00B0B4AF0071847100506C510044674500426542003B5F3A00A0A69F00FDFB
      FB00FDFBFB00FCFAFA00FCFAFA00FCFBFB00FEFCFC0090909000FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00768E76005679
      5600D8DAD700F7FAF900DFF0E800DBEFE400F0F8F300FEFDFE00E8E8E900F2F2
      F200FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E2E3E100567057000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A4B8A40084BC980035BF
      610034CB680050DB870067E7A00081F0B70081F1BD00E2E0E100B1B1B200B5B5
      B500FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE008D8C8C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007CA8880046C45E005ED2
      7D003BCB6D0055D08700A8F0C800C1F6DC005ED39900B8B9B800DBDADA00CBCB
      CB00FEFEFE00FEFEFE00FDFEFF00FFFFFF00FEFFFF00FEFEFE00C7C7C700FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EEF7F3005ECA7200A6DD
      BB00FDFEFE00E5F4EC00CBECDA009BDEBA00FBFCFC00D0D0D000A6A5A600A9A8
      A900FBFCFC00FCFCFC00FCFCFC00FBFCFC00FBFCFC00FBFBFC00B0B0AF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00EAE9
      E900D1D0CE0020BF590019CC62001CCD6900C1E6D100FEFEFD0076C67900CEE9
      CF008FD09100E2E0E200D9D9D80085D6A500BCEBC900BAE9C60082B295000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00A5DBBA004FDA8C0036D37C00D6EBDB00B6DA
      B700DCE6DD00EAE9EA00E3E3E200DFDDDE008CC09F00B9E1C700A0C1AB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFEFF0080CD9E0041D17C006AC8
      8D00DDE8E10096969700B9B8B7009CA09F0022A246004AC56200CDD6D0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EDF6F00077D0
      9500A4D6B400000000000000000000000000F8F8F8007DD28A00FBFBFB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006AB67A00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FE00FEFFFE000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AE9BAE00B9C1BC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00BBB9BB00A88CA8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE009A9CDA002D2DAC005052
      B500FCFCFD0000000000000000000000000000000000FEFEFE00CBC7E9003331
      AC003732B100E4E4F40000000000000000000000000000000000000000000000
      00000000000000000000EFEFEF00FFFFFF00F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700FFFFFF00FFFFFF00DDE1E300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009B9B9B00C7C7C700E2E2E200E7E7E700E7E7E700E3E3E300CFCFCF009494
      9400000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00E0E0E00099A0980063776300576F5800566D
      57005E735D00617562006C7C6C00586F5800667A68007C8A7C007C887B008A96
      8A00ABAEAA00F9F9F90000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A0A2D800243FD0000E45FC000C3A
      F0002122A700FCFDFE00000000000000000000000000B2B2E1000411BC000131
      FB000230F800050FAD00F9FAFB00000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00F7F7F700EAEDEF00E4E4E400E4E4
      E400DCDCDC00D6D6D600DCDCDC00EAEDEF00FFFFFF00FFFFFF00D6D6D6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009C9C9C00A8A8A8009F9F9F009F9F9F009C9C9C00ACAC
      AC00FFFFFF00FFFFFF00F6F6F600EFEFEF00EAEAEA00E3E3E300FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000F0F0F000315D320048724800B8C0B900F1F0F100FEFEFE00FEFD
      FE00FBFAFA00F9F6FA00F1EFF100E4E3E400D6D9D700C7CCC600B1B8B00094A1
      96007A8D7900315A3100F3F2F100000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00282AAA003768FB00144BFE001046
      FF000A3EF6001F1FA800F9F9FB0000000000B8B6E1000111BA000131FC000032
      FD000033FB000125E500BCBCE000000000000000000000000000000000000000
      000000000000D9ABD900FFFFFF00FFFFFF00EFEFEF00EFEFEF00FFFFFF00FFFF
      FF00FFFFFF00F7F7F700DCDCDC00EAEDEF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B8B8B800EEEEEE00E2E2E200E2E2E200DFDFDF00D8D8
      D800DBDBDB00DFDFDF00E2E2E200E9E9E900E6E6E600D9D9D900D4D4D400AAAA
      AA00000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE0036623400D5E9DF0079D09D0034C36F0032CE760043DF8E0053DF
      9C0078C09C00D3D2D300EBEBEB00FEFEFE00FEFEFE00F8FAFA00E5E5E600D2D1
      D300BCBBBC00B3B2B300EEEFED00000000000000000000000000000000000000
      0000000000000000000000000000000000004443B6004A71F6001850FE00144B
      FF001047FE000E3AF3001A1EA800B7B9E1000310B7000030FC000131FC000030
      FE00042EFE00021DD600E0E1F200000000000000000000000000000000000000
      0000000000000000000000000000AE9BAE00D6D6D600DDE1E300DCDCDC00D9DB
      DD00D9DBDD00D9DBDD00D6D6D600C1C8C300A17DA10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AFAFAF00FFFFFF00FBFBFB00F1F1F100E9E9E900EFEC
      F000E0DFE300D1D3D600D6D8DA00D1D3D600CDCFD000CDCFD000ADAEB1009394
      9500959799008A8A8A0000000000000000000000000000000000000000000000
      0000E4E9E20027AC4D0036C559004DD2770066DE94007DE8A90095EFC100A6F6
      D000D8E4DF00E9E9E700D6E0DB00CED1D000C1C1C100BCBDBC0054BA81001ABB
      5D0032B3630076AA8C00FDFEFE00000000000000000000000000000000000000
      000000000000000000000000000000000000EAEBF5001719AB003465FC00184F
      FE00134AFC000F47FE000A3CF200020DB2000337FC000132FD000130FD000431
      FC00012DEC003838AF00FEFEFE0000000000000000000000000000000000A88C
      A800A88CA800A17DA10099669900AE9BAE00D6D6D600CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00C1C8C300C1C8C300B7B6B7009576950099669900987A9800987A
      9800957695000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CBCBCB00FFFFFF00F9F9FA00FCFEFB00D1F4
      CF00E2F2D800FFF4EC00F9F0E700F6EEE500F2E9E000EFE5DC00EEE4DB00EEE3
      DA00ECE1DA00E3E2E20000000000000000000000000000000000000000000000
      0000F6F9F7004FC566005FD07A002EC0610087D2A9007ADBA400B5F4D40040D6
      8B00F3F4F300B0DFC40076EFB1007BE9B000D3D8D500D5D6D50028C46B0014CC
      580013C34A000FB83D00FCFCFC00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EAE9F500181DAB003164
      FB00184EFD00134BFE001046FE000A42FE00083EFE000439FC000032FD00002A
      E8003330AF00FEFEFE0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7F700EFEFEF00EFEF
      EF00E7EAEC00E1E4E600E1E4E600E1E4E600E1E4E600E1E4E600DDE1E300DDE1
      E300D6D6D600D6D6D60000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C4C4C600FEFCF7009D8C
      2C00B88A3300E4955B00E7A06200EBA66900EBA46900E69D6100E0935800D680
      4600D2804C00E1DBD90000000000000000000000000000000000000000000000
      0000FFFFFE0058C5720093D3AC00FEFEFE00EBF6F000E2F3E800D5ECE200FEFE
      FE00F9F9F8002CB648007BDF9E0079DA970067BE7A00DADADA0049D0810070DF
      990071D9900054CC7300FAFAFA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DADAEF001A21
      AD003061FD001951FE00154AFE001047FE000E42FD000A3BFE00052DEB003636
      AE00FDFDFE000000000000000000000000000000000000000000FFFFFF00FCF2
      ED00F6E5D600F6E5D600F6E5D600F6E5D600F9E9DF00F9E9DF00F9E9DF00F9E9
      DF00F6E5D600F6E5D600F6E5D600F1E0D000F1E0D000EED9CC00EAD5C600EAD5
      C600D6D6D600D6D6D60000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ADAFAF00FFFFFB00C65B
      1F00C6550D00CC671C00D1702400D9823E00E29C6500DF966100DA905B00D07D
      4400BF591B00E1DAD70000000000000000000000000000000000000000000000
      000000000000FEFEFE00F6F7F700CACACA0055B97C001DCB620015CC63005CCB
      8D00FDFDFD0080C8860099D89C00BDE5C00097C89F00E0E0DF0079C49800B7ED
      C900BBECC900AAE5B800FAFAFA00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A9A6
      DB001428BE001D55FD001750FE00134BFE000F46FE000B40FC000D0FA000FCFB
      FD00000000000000000000000000000000000000000000000000FFFFFF00EED9
      CC00DCB39900C1C8C300B9C1BC00DCBAA300F5C69D00F7CBA400F7CBA400F7CB
      A400F7CBA400F7CBA400F5C69D00F1C29A00EEBC9500EEBC9500E7B08B00E7B0
      8B00E1D9D300D6D6D60000000000000000000000000000000000D0D0D000BFBF
      BF00A8A8A8008F8F8F0081818100000000000000000000000000FFFAF700BE61
      2900D3875600D9936500DC966700E3A77C00ECBC9B00DC986A00D5895900CC79
      4600BA531700E5DDDA0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE009DD6B4004ED9
      8A0022CC6E00C0E4CE00B9DDBC00A9D4AD00EBEBEC00E4E5E400DFDFE000D3D7
      D5008DCAA300CCEDD600FDFDFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7E8F4000C16
      A800215BF9001F59FD001C55FE001950FF00134BFE001245FE000B32E6004948
      B400FEFEFE000000000000000000000000000000000000000000FFFFFF00EECC
      B9009AB7BA006BEAFF0094DCEE00C2B8B600DD8B4900DD8B4900E0904D00E090
      4D00E0904D00DD8B4900DA854300D67E3D00D3762F00CB6C2C00C4602000C460
      2000DFCFC500D9DBDD0000000000000000000000000000000000FFFFFF00FFFF
      FF00DFDFDF00BDBDBD00B6B6B600858585000000000000000000FEF5F000BC5F
      2B00E2A98800EBBB9B00EDBF9D00F2C9AD00F7D8BF00E3A67B00DA946300CD7C
      4A00B74E1400E7E1DD0000000000000000000000000000000000FEFEFE00E0E0
      E00099A0980063776300576F5800566D57005E735D00617562006C7C6C0098A7
      99005EC6880040D88300D1EBDC00F5F5F400EAECEA00A7A6A6008D8E8E002B9D
      50002AC14D002FA75000FEFEFE00000000000000000000000000FBFBFB00BDC0
      BE00808D7F004C694D0042634200436443004A684A0096A39F001016A8002864
      FB002863FD00225FFD002159FD001953FD001850FD00134CFD000F47FC000A33
      E5003F3FB100FFFEFE0000000000000000000000000000000000FFFFFF00DCBA
      A300B2A49A00C6EFFF00FFFFFF00D7A68A00CC692200D1722A00D1722A00D172
      2A00D1722A00D1722A00CC692200C7611900C55B0F00BD510B00B6430000B643
      0000DFCFC500DDE1E30000000000000000000000000000000000EAEAEA00FFFF
      FF00F8F8F800D1D1D100CBCBCB00C8C8C800A5A5A500BCBDBE00F4ECE700C570
      3900ECBA9400F1C5A200F4C8A400F7CFAD00F8D2B100E59F6600DD8C4D00D37C
      3C00C3612400EBE4E100000000000000000000000000F0F0F000315D32004872
      4800B8C0B900F1F0F100FEFEFE00FEFDFE00FBFAFA00F9F6FA00F1EFF100E4E3
      E400D7DAD800BBDEC600A6EAC00060DB8F00CACCCB0066846600F4F4F300F0F0
      F0003EA957005FB47200000000000000000000000000B1BAB300255527006988
      6A00CBCFCC00F7F6F600FEFEFE00FDFDFE00EEEEF5001015A6003271FC002D6D
      FE002969FE002863FD002158F4001C2AB6002B60FC001851FE00144BFE001146
      FE000B38EA004545B600FEFEFE00000000000000000000000000FFFFFF00D8B2
      9D00BA551900DBA38400EBC6B100EBC6B100C9682400C7611900C9682400C968
      2400C9682400C7611900C7611900C1561000BD510B00B6470300B03C0000B03C
      0000DFCFC500E1E4E60000000000000000000000000000000000B4B4B400FFFF
      FF00D9D9D900EAEAEA00FFFFFF00D5D5D500D3D3D300D5D6D700F0E9E300D284
      4C00F2C49F00F7CFAC00FBD5B000FED8B400FBD3AF00EA9D5800DF843700D371
      2500D0733300F4EEEB000000000000000000FEFEFE0036623400D5E9DF0079D0
      9D0034C36F0032CE760043DF8E0053DF9C0078C09C00D3D2D300EBEBEB00FEFE
      FE00FEFEFE00F8FAFA00EFF3EF00DBE9DE00BCBBBC00B3B2B300EEEFED000000
      000084BD910092BE9C000000000000000000D3DBD40067846800D8EDE0007DD0
      A10040C6780037CE7C0043DC8E0054DA99004D4DB7005783F3003776FD003073
      FE00316DFD002662F600161AA6009999D4002937BA002359FE001850FE00154B
      FE001246FE000825CC00E4E5F400000000000000000000000000FFFFFF00D8B2
      9D00A42C0000B6470300BA551900C4602000C4602000C4602000CC692200CC69
      2200CC692200CC692200C7611900C1561000B6470300B03C0000A9320000B03C
      0000DFCFC500E1E4E6000000000000000000000000000000000000000000C8C8
      C800D1D1D100E6E6E600CCCCCC00F1F1F100DDDDDD00DCDFE000EEE7E400C779
      4300E6A77200EEB68100F6C38E00FBCC9800F9C89200EEAA6800E3965100D781
      3D00CC763D00FFFEFA000000000000000000E4E9E20027AC4D0036C559004DD2
      770066DE94007DE8A90095EFC100A6F6D000D8E4DF00E9E9E700D6E0DB00CED1
      D000C1C1C100BCBDBC0054BA81001ABB5D0032B3630076AA8C00FDFEFE000000
      0000DDE8E100FFFFFF0000000000000000004C7951002CB8520031C55A004BD4
      780060DE920078E8A8008EEFBD00A4F6CF002D2CAF0093B6FB003A7CFB003B76
      FE002F6BF6001F20AC00C4D3CE0053BD82008C99C4002B39C200235BFE001850
      FC00134CFD000E37E700BCBAE300000000000000000000000000FFFFFF00D6B0
      9A00A42C0000B03C0000C55B0F00CC692200D1722A00D3762F00D67A3200D67A
      3200D67A3200D3762F00D1722A00D1722A00C7611900BD510B00A9320000B03C
      0000E7D7CE00E7EAEC0000000000000000000000000000000000000000000000
      0000D2D2D200CBCBCB00C2C2C200F2F2F200EAEAEA00D2D3D300F8F7F700EEE7
      E400FAF2EC00FEF7EF00FCF6EE00FCF7F000FCF7EF00FCF8F200FAF6F100F9F4
      EF00FBF6F200FFFFFF000000000000000000F6F9F7004FC566005FD07A002EC0
      610087D2A9007ADBA400B5F4D40040D68B00F3F4F300B0DFC40076EFB1007BE9
      B000D3D8D500D5D6D50028C46B0014CC580013C34A000FB83D00FCFCFC000000
      0000000000000000000000000000000000005CA170004DC6670061D17E002CC4
      63004EC98200A6EFC500C2F5DB0041D98D009295D300858BDA008DB1F9005686
      F500181EA900DFE0E10070C1950006CB530006C243007999B4002A3AC2003E6D
      FC003863FA00151FB200F8F9FB00000000000000000000000000FFFFFF00D1AC
      9600B03C0000CC692200D1722A00D67A3200D67A3200DC843C00DC843C00DC84
      3C00DC843C00DC843C00DC843C00D67A3200D1722A00CC692200C1561000B643
      0000E7D7CE00E7EAEC0000000000000000000000000000000000000000000000
      00008E8E8E00B3B3B300EBEBEB00E1E1E100E2E2E200D9D9D900DDDDDD00E9EA
      EB00A6A8A9000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFE0058C5720093D3AC00FEFE
      FE00EBF6F000E2F3E800D5ECE200FEFEFE00F9F9F8002CB648007BDF9E0079DA
      970067BE7A00DADADA0049D0810070DF990071D9900054CC7300FAFAFA000000
      000000000000000000000000000000000000C3E6D2005FCB73007ACC9B00FEFE
      FE00FDFEFD00C1E6D3005AD09200F3F8F600F6F6F7008684CB002A2BA9003F3F
      B0009BD4B000DAD9D9005DC38A0056DA880057D47F0052CD7300A5AAD4002626
      A9002627A700D1D1EB0000000000000000000000000000000000FFFFFF00D1AC
      9600C55B0F00D1722A00D67A3200DC843C00E08B4200E38F4600E6944B00E694
      4B00E6944B00E6944B00E08B4200DC843C00D67A3200D1722A00CC692200C35C
      1900E7D7CE00EAEDEF0000000000000000000000000000000000000000008E8E
      8E007575750000000000F6F6F600EBEBEB00D9D9D900D8D8D800E2E2E200FFFF
      FF00909090000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00F6F7F700CACA
      CA0055B97C001DCB620015CC63005CCB8D00FDFDFD0080C8860099D89C00BDE5
      C00097C89F00E0E0DF0079C49800B7EDC900BBECC900AAE5B800FAFAFA000000
      000000000000000000000000000000000000FEFEFE0074C19300CFD0D100E9E9
      E90007BD4B0037C1710078D19E00EBF6EF00FCFCFB0053BB5A0085D6950082D2
      8F004EB35A00DEDEDF006EC39100A5EBBE00A2E7B800A7E5B600B2C8BA00FFFE
      FE00FEFEFE000000000000000000000000000000000000000000FFFFFF00D6B0
      9A00CC692200D67A3200DC843C00E38F4600E6944B00EF9E5100F0A55B00F0A5
      5B00F0A55B00EF9E5100E6944B00E38F4600DC843C00D67A3200CC692200CC69
      2200F1E2D900F7F7F70000000000000000000000000000000000000000007373
      730000000000000000009C9C9C00DCDCDC00CDCDCD00B3B3B300B7B7B700FAFA
      FA00C7C7C7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE009DD6B4004ED98A0022CC6E00C0E4CE00B9DDBC00A9D4
      AD00EBEBEC00E4E5E400DFDFE000D3D7D5008DCAA300CCEDD600FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5F4EB0085D1A40041D77F0027D47500AFDDC200BDDEBF00C7E8C800DDF0
      DD00CADCCB00E4E3E300DDDDDD0089C3A100C2EACF00DCF4E000BDCEC3000000
      0000000000000000000000000000000000000000000000000000FFFFFF00CCA4
      8F00C55B0F00DB7C3000DE8C3A00E6944B00EF9E5100F0A55B00FAB06100FAB0
      6100FAB06100FAB06100EF9E5100E6944B00DE8C3A00DB7C3000CC692200C156
      1000F9E9DF00FFFFFF0000000000000000000000000000000000B9B9B900CCCC
      CC007D7D7D008585850098989800A7A7A700B5B5B500D6D6D600D6D6D600EBEB
      EB00D8D8D8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFEFE005EC6880040D88300D1EBDC00F5F5
      F400EAECEA00A7A6A6008D8E8E002B9D50002AC14D002FA75000FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FBFCFB0065C88D0071EAA70054C88600DDECDE00DFEA
      E000EEEDEE00EAEAEB00DAD8D800C9D5CC003DAF6200A4D7B300D2DED8000000
      0000000000000000000000000000000000000000000000000000FFFFFF00D2BB
      AE00BD7B5200D79D6F00DBA57500E0AD7D00E4B48400E9BC8B00E9BC8B00F1C2
      9A00F1C29A00E9BC8B00E4B48400E0AD7D00DBA57500D79D6F00CC996600BD7B
      5200FCF2ED00FFFFFF00000000000000000000000000A1A1A100F2F2F200C9C9
      C9000000000000000000000000000000000000000000D3D3D300E5E5E500FBFB
      FB00B5B5B5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFF00BBDEC600A6EAC00060DB
      8F00CACCCB00FEFEFE00FFFFFF00F0F0F0003EA957005FB47200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CDE7D70053D589005CC785008BCE
      A400BCBDBC00ADADAD00B8B8B8008395880022B347004FC66700EFF1EF000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7F7F70000000000000000000000000000000000C6C6C6000000
      000000000000000000000000000000000000000000000000000000000000D2D2
      D200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F4F8F400E0EE
      E3000000000000000000000000000000000084BD910092BE9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBFDFC006CCB8D0081DB
      A200F0F6F2000000000000000000000000008FAE980076D08600FCFCFC000000
      000000000000000000000000000000000000000000000000000000000000CCC0
      CE00CCC0CE00CCC0CE00CCC0CE00CCC0CE00CCC0CE00CCC0CE00CCC0CE00CCC0
      CE00CCC0CE00CCC0CE00CCC0CE00CCC0CE00CCC0CE00CCC0CE00CCC0CE00CCC0
      CE00C6B3C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDE8E100FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00FBFD
      FC0000000000000000000000000000000000E3EDE7005DB07000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFBFA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD00ECECEC00ECECEC006363
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B7B7B70082828200BDBDBD00EAEAEA00BBBB
      BB0082828200AAAAAA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000065656500ABABAB00D6D6D600DDDDDD00DFDFDF00E5E5
      E500EBEBEB00C2C2C20000000000000000000000000000000000000000000000
      0000000000000000000000000000F61DF400E02EDF00DA31DD00E22AE200E02C
      DF00E02DE000E42AE000DC31DF00DC2EDD00E02CE000FA13F900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF03FF00AD2FDE005717BB00380B
      AB002503A7004C1EB100A432DF00F818FD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000100C94000003A200000497001C119D0000000000000000000000
      0000000000000000000060606000C0C0C000D0D0D000989898005E5E5E00C4C4
      C400E3E3E300C2C2C2005E5E5E00000000000000000000000000000000000000
      00000000000000000000F21EF300554A4D009E9F9D00979A9800988986008063
      5F00765D53007A564C0085867C008E9091008E8C9200504A4F00F31EF2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A82FDE0006009C001918B6000014B3000021
      C5000B1FCA000010B10013089A00070196009B2CD60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006666660066666600666666006666
      6600666666006666660066666600666666006666660066666600666666000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001314AC001017A2000F40F4000D2FE6000009A10000009000000000000000
      0000000000008F8F8F00B6B6B600C4C4C4009C9C9C00686868008D8D8D006C6C
      6C00CDCDCD00DFDFDF00C0C0C000000000000000000000000000000000000000
      00000000000000000000BE30C000C6C4C300F5FBFA00FFFFFC00DCC9B400B978
      6900B06E5B00A75F5300E1CEC900F0EFF100EEF2ED00B2B4A800BC36B5000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF03FF005F18BC001B139C00BDC8E400A2BBF3000633F8000635
      EA00062EEB00002EEE00888DC400909EB1001D0FA3005314B200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000301B990007119B0009079C0005109A00362B
      A900D0C5EB00EEDDE800EFDFD900E7D8D500EADED200E2D0CF00D5C4C7006666
      6600000000000000000000000000000000000000000000000000000000000000
      00000302A000CBD0EF001B4DFD001746FF001F3BFF000208A70000009D000000
      0000000000006E6E6E0082828200BABABA00B7B7B70071717100838383007171
      7100D5D5D500D2D2D20094949400000000000000000000000000000000000000
      00000000000000000000C431C800CBD3D200EFFFFF00FBFDFF00DCC0AF00B468
      5500B0644E00AC5C5100E4D1CE00F1F5F600E7EEEB00C5C7C700BB31C1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007421C1001B20AB00F6FFFC00FFFFFB00F2FAFF001B41FB000234
      FF000031FD000037FF00DEF2F700F1E1E800B3BEC6001C1B99005B1DB6000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000300F99006C73C200002EF200012EF3000028D7004755
      A800220A9800ABBED900EDEFF000F6F0E500EDEEDE00F1E2E600E5D2D5006666
      6600000000000000000000000000000000000000000000000000000000000000
      000000009200A8ACE1001F58FB001856F8001A47FF00113FFB000005A8000000
      9C000C099B00020694005F5F5F00A0A0A000AFAFAF00B7B7B70087878700C2C2
      C200CECECE009696960051515100000000000000000000000000000000000000
      00000000000000000000CB30CA00CFD2D000F8FBFF00FFF9FF00DDB1A400AA5E
      5200AF664A00AA5F4500ECDBD200FFFBFF00FDF3F900CFC8CB00C331C8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DF2DF60011099600F5EBFB00FFFEFF00F9FCFA00B8C7E1001D22A700030E
      980000009C00191CA600B1C1E500F9FFF700F9F1F200BDB3C40004109400DE2E
      F400000000000000000000000000000000000000000000000000000000000000
      000000000000120EA300E6E3FC00FDFFFF001436CF000312BC003858E100F8F5
      F000A69EC3000C0D8D00D8DCF400F8EFEC00E9EBE500F6E5F000EAD5D8006666
      6600000000000000000000000000000000000000000000000000000000000000
      00002010A40007119A003B6DFB001B57F7002052FF001451FB001140F6000001
      9F0000059D00072FE60068686800A3A3A300B0B0B000B3B3B300B7B7B700BDBD
      BD00C3C3C300AAAAAA0000000000000000000000000000000000000000000000
      00000000000000000000B930C700C4C2C800FDFFF700FFFEFC00D9B2AA00A865
      5000A7644300A8634800E5D8D000FFFDFF00FFF7F000CDCAC500BC37C5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000450CAB007481CB00F4FFFF00FFFEFE009598D500070097009E2DDC00F41C
      FC00F71BFC00C532E800030298008E8DD700F9FCFF00E2EDE5005E5EAA003509
      B000000000000000000000000000000000000000000000000000000000000000
      00006828C5007F8DCF00F8FCFD00362AAC00332CA5009A91D400282BAB00403E
      B600F6F3FC00434EAA00444BB800FBEFE300F3E5F000FCE7F000E7DADC006666
      6600000000000000000000000000000000000000000000000000000000000000
      00000000000000009B00100FA5003B77EF001554FC001E52FC00214AFD001848
      FE00033AEF000E3FFF00043BFF0059595900676767007E7E7E00B3B3B3006A6A
      6A00656565000000000000000000000000000000000000000000000000000000
      0000FD0AFF005216B00008009F0043389400DFEBF100F4FFF500EDE0E200C184
      7600C78B7B00CD918B00F3F6ED00F6FFF800EEF1F50059559C00050795009827
      CF00FD0AFF00000000000000000000000000000000000000000000000000FE04
      FF0003009E007F97FB005976FF009CB8E7000C02A200D131F000000000000000
      00000000000000000000E02DF30004099400A8B1F0005C7CF9001938D3000000
      9B00FC0CFE000000000000000000000000000000000000000000000000000000
      0000410CB7006480FF001C34CC00141D9200FFFFFC00FAF9FB00FFFCFF001720
      A0001D44E200002ADC0008119700F8F5F100F2F3EA00ECF0EB00E9DCDE006666
      6600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000019E0012159B004D6EF9002051FF001853FC00124A
      FF001745FF000E41FF000A3AFD000F3FFF00BDBDBD00585858009A9A9A007777
      7700000000000000000000000000000000000000000000000000000000000000
      0000F816FD000A0FA8002B21D900190EB000170BA300D9D8E200F8FFFF00FFFD
      FF00FFFFF800FDFFFF00F2FAF000E4E9E7003D37A200090E9F00281CC2000C08
      AD00F914FC00000000000000000000000000000000000000000000000000F719
      FC000C15B300759BFB00033AFB00021CBC000F0D950000000000000000000000
      00000000000000000000000000004714BB00111FD6000035FF000031EC000610
      9E00EA26F7000000000000000000000000000000000000000000000000000000
      0000470FB1005382FC000011B40033259500F4FDFF00FDFEFC00F9FEFD006253
      BF00061ED6000032F9001A19AF00F9EDFF00F3F6FA00FAF3E200F3E6E8006666
      6600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000796000D0D9D002D61F1001858FD00114D
      FF001747FF00184DFB000547F400000FB1000000940000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004A0FB4006971EA003325E100170FC0001D0F93009EB5CF00EEF9
      F600FFFEFF00FFFCFC00C9CDE0001419A4000D0AA6003029DE000A24FA003206
      B00000000000000000000000000000000000000000000000000000000000F31F
      FB00030FA9008BA8F9000935EE000112BF002D2E9E0000000000000000000000
      0000000000000000000000000000641FC1000012BE000030FF000937F3000005
      9E00D130ED000000000000000000000000000000000000000000000000000000
      00005114B90098A7F6004854BA0001009B00ECF7FB00FEFFFA00FFFFF9001815
      A0003B59E8000E32FA0012189F00FEF0F400EFEEF800F6EFF200F2E5E7006666
      6600000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000008099F00000199002050F6001655FF001B58
      F6001F51F7001552FF000848FF000006AA0008039A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A82CDF007780DA006A74F7002D2DD7001D13C4000F0AA1009399
      C800DBE7F3009C95D20006049D00170FBA00403AE7000B2FF7000024E4006D1E
      C20000000000000000000000000000000000000000000000000000000000F718
      FB00030EA5009EB3FF001727EF000319AE001209A60000000000000000000000
      00000000000000000000000000005417B9000019CD000037FE000234FE000008
      9C00EB28F8000000000000000000000000000000000000000000000000000000
      0000000000009393CF00D3DEDB004550A400171799004D49AE000C129B005654
      BE00EFFFF9004A51BE006D6BCF00FFFFF700F1F8F300FBF9EE00F6E9EB006666
      6600000000000000000000000000000000000000000000000000000000000000
      000000000000000000000E09940000009700274DE7002462FF002760F9001C56
      FF001D58FF001A4DFF00214DFF000E3DF70000069B0019099200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F120F9004B4BBD00859AFF006470F6003838E8002B17D4001003
      9500372CB0000F02A400251BCB002C31EA000C32FC000735FF000114C300CA31
      EB00000000000000000000000000000000000000000000000000000000000000
      00001E00A600AAC4F3008CA2FF00849FB9000C009B00D130ED00000000000000
      00000000000000000000E42BF20008009B009EB2F9005E86F6000532FF000C03
      A700FD0CFE000000000000000000000000000000000000000000000000000000
      0000000000001D189D00CDC3EE00D8DAE2001739C2000615B1003554CD00F8F3
      FC00B7B3DC001B1AA000DFE8F500FFFBFE00FFF6FE00FFF5EF00FFF4F6006666
      6600000000000000000000000000000000000000000000000000000000000000
      00000000000004129A000000A5002C50F7002A6AF8002865FB002265F600265D
      FF002D5BFC002354FC00234DFE000E4AFF00174DEE000000AA0000009D000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000420CB3007B9BFF006781FF00475DFF003639E2002F22
      D1000A13B6002C19E0002232F0000134FC000032FF00043DF7000112A900FB11
      FE00000000000000000000000000000000000000000000000000000000000000
      00003E0DB100918CD700FAFFFE00D3CFCA008784B5000A0793003E49B1009B9D
      DD00BBBDED005354BC0001009C008287CC00FFFBFF00FFFFF8006F73C6003608
      B000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000480EAF006E74BF0090A4FC007B8EFF006A85F800585D
      C0002C14AE00C7D2E000FDFFFF00C8C3C400CFC3CF00C6C7D100C9BCBE006666
      6600000000000000000000000000000000000000000000000000000000000000
      00002C29AE00020B91003152E5003074FB002B6BF9002E6BFF00295DFD00061C
      B1000513A7003F6BFC001353FF002150FF000449FF001943FF0000089F000A0B
      9100000000000000000000000000000000000000000000000000000000000000
      000000000000000000008B28DB005A75F5005377F900356AF7002A4CFF00162E
      F800343FE7000B2FF9000033FF00012DFF000036FF00001AE2003104A8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DA30F3001B09A200DCF7F400FFF5F800C3C2BE009E94B2002625A300050E
      9B00100D98001515A700A8A6CA00FFFCFF00FFFFFE00EAF0FF0016059C00D434
      EB00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008326B3001317A6001A1FA300171AA1006C6E
      CC00EDF0F800FAFCFC00D3C8D80094787800B9A1A1009E948D00605355006666
      6600000000000000000000000000000000000000000000000000000000000000
      00000000A100837FCB004580FB003E81FB003372FF00316FF900121DB4000E02
      9A0000009100051292003A6FFF002156FF001E50FF000F50F3001C3CF3000006
      9D00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D830EE001712AB004B64E4003466FC001C50FF000033
      F8004475F7000B31FF000037F4000832F6000025D1000708A000FD0BFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007820BE002F27A900E3F2FF00FDFDEB00CFD1EF001234C4000022
      BF000127D3001B40E400FFFEFD00FFFEFA00E9FFFC002428AC00621BBA000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000066666600FFFEFF00FFFAFB00FFFDFE00FFFE
      FF00FFFFFF00FFFFFF00CDCBCB00AFA7A800FFF0F30079646700666666000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000009800DAE4F6004E7EFF003375FC003475FF00091FAD0000029B000000
      00000000000006068E000B0FA3003D6EF2002058F3001751FE001F4BFF00000A
      9600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E529F300170DA700122CCC001A43FF000936
      FF006582FF000534FF000132F8000015B9005221BE00FB10FE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005F18B600231EA300CED9F400E6F1FF006B80F900516D
      FF004467FF003F6BFC00C8E0F800CBDBE700231EA3005717B800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000066666600FEF8F900FFFEFF00FAFFFF00F9FF
      FE00F6F8F800FFFFFF00D3C8CA00A594970080676B0066666600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000130194003D3DB900C5DBF700BED1F600272BAF000000A200000000000000
      00000000000000000000000098000D11A0009DB2F000B6D7FF00646AD3001200
      9600000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FD0BFF00691CBE001014B300052A
      F00075A1FF000A23E5000B0DA7009E29D5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A532DD0000019B002A29AE004A63D1004E72
      E8005267E0003D4ACE002825AA0009009B009E2CD80000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000066666600FFFBFD00FFFCFE00FDFFFF00FCFC
      FC00FFFEFF00FFFBFD00DDCCCF00635053006666660000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001104960007009B0006009A0004009F0000000000000000000000
      000000000000000000000000000013059300130397000C01930015078F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BF35E2000003
      A0003E4BCB000C09A200DB30F000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF01FF00C331E3005E1BC000400E
      BA003F0DB600551BBE00AC2FE100FF01FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006666660066666600666666006666
      6600666666006666660066666600666666000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F817
      FC009028D500FC0CFE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E1D6D2008578740085787400857874008578740085787400857874008578
      74008578740085787400857874008578740074747400ECECEC00636363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BDBDBD00ECECEC00ECECEC00636363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BDBDBD00ECECEC00ECECEC00636363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DDD2CE00F8F4F200FAF8F600FEFEFE00F8F4F200FAF8F600FAF8F600FAF8
      F600FAF8F600FAF8F600B7B7B70082828200BDBDBD00EAEAEA00BBBBBB008282
      8200AAAAAA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B7B7B70082828200BDBDBD00EAEAEA00BBBBBB008282
      8200AAAAAA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B7B7B70082828200BDBDBD00EAEAEA00BBBBBB008282
      8200AAAAAA000000000000000000000000000000000000000000000000000000
      0000DDD2CE00FAF8F600F8F4F200FAF8F600FAF8F600F8F4F200F8F4F200F8F4
      F200FAF8F60065656500ABABAB00D6D6D600DDDDDD00DFDFDF00E5E5E500EBEB
      EB00C2C2C2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000074747400ECECEC00636363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000065656500ABABAB00D6D6D600DDDDDD00DFDFDF00E5E5E500EBEB
      EB00C2C2C2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000065656500ABABAB00D6D6D600DDDDDD00DDDDDD00E5E5E500EBEB
      EB00C2C2C2000000000000000000000000000000000000000000000000000000
      0000DDD2CE00FAF8F600FAF8F600FAF8F600FAF8F600FAF8F600FAF8F600F8F4
      F2005757570060606000C0C0C000D0D0D000989898005E5E5E00C4C4C400E3E3
      E300C2C2C2005E5E5E000000000000000000000000000000000000000000199C
      D30011A1CC001FA5D00069C4DF00000000000000000000000000000000000000
      00000000000063636300B7B7B70082828200BDBDBD00EAEAEA00BBBBBB008282
      8200AAAAAA000000000000000000000000000000000000000000000000000000
      000000000000000000004D4D4D004B4B4B004E4E4E004E4E4E004D4D4D004E4E
      4E004E4E4E0060606000C0C0C000D0D0D000989898005E5E5E00C4C4C400E3E3
      E300C2C2C2005E5E5E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000060606000C0C0C000D0D0D000989898005E5E5E00C4C4C400E3E3
      E300C2C2C2005E5E5E0000000000000000000000000000000000000000000000
      0000DDD2CE00FAF8F600FAF8F600FAF8F600FAF8F600FAF8F600F8F4F200F8F4
      F2008F8F8F00B6B6B600C4C4C4009C9C9C00686868008D8D8D006C6C6C00CDCD
      CD00DFDFDF00C0C0C0000000000000000000000000000000000000000000069A
      CC00B4E3F5002EBEF30036BEF40027B8E80016AEDF0012A2D60053B9DD00A2D3
      EA003333330065656500ABABAB00D6D6D600DDDDDD00DFDFDF00E5E5E500EBEB
      EB00C2C2C2000000000000000000000000000000000000000000000000000000
      000000000000696969008C8C8C00FAFAFA00EBEBEB00E8E8E800F2F2F200EDED
      ED008F8F8F00B6B6B600C4C4C4009C9C9C00686868008D8D8D006C6C6C00CDCD
      CD00DFDFDF00C0C0C00000000000000000000000000000000000000000000000
      00000000000055242400556D6D00556D6D00556D6D00556D6D00556D6D00556D
      6D008F8F8F00B6B6B600C4C4C4009C9C9C00686868008D8D8D006C6C6C00CDCD
      CD00DFDFDF00C0C0C00000000000000000000000000000000000000000000000
      0000DDD2CE00FAF8F600FAF8F600FAF8F600FAF8F600FAF8F600F8F4F200F8F4
      F2006E6E6E0082828200BABABA00B7B7B700717171008383830071717100D5D5
      D500D2D2D20094949400000000000000000000000000000000000000000011A8
      DB00BDE2F40037C8F8003ECBFC0043CFFB0049D0FB004FD4FD0057D8FB004ED2
      F2005757570060606000C0C0C000D0D0D000989898005E5E5E00C4C4C400E3E3
      E300C2C2C2005E5E5E0000000000000000000000000000000000000000000000
      0000737373009F9F9F0090909000D5D5D500939393008F8F8F00D6D6D600EDED
      ED006E6E6E0082828200BABABA00B7B7B700717171008383830071717100D5D5
      D500D2D2D2009494940000000000000000000000000000000000000000000000
      000055242400556D6D00AAB6B600AAB6B600AAB6B600AA929200AAB6B600FFFF
      FF006E6E6E0082828200BABABA00B7B7B700717171008383830071717100D5D5
      D500D2D2D2009494940000000000000000000000000000000000000000000000
      0000DDD2CE00FEFEFE00FAF8F600FAF8F600FAF8F600FAF8F600F8F4F200F8F4
      F200575757005F5F5F00A0A0A000AFAFAF00B7B7B70087878700C2C2C200CECE
      CE00969696005151510000000000000000000000000000000000E68FF80028B2
      E6003CACD90061D5FA004BD0FD0049D3FE0050D7FE0059D9FE005DDEFE0064E1
      FE008F8F8F00B6B6B600C4C4C4009C9C9C00686868008D8D8D006C6C6C00CDCD
      CD00DFDFDF00C0C0C00000000000000000000000000000000000000000005555
      5500AAAAAA00A0A0A00090909000D5D5D5009797970093939300D6D6D600ECEC
      EC009E9E9E005F5F5F00A0A0A000AFAFAF00B7B7B70087878700C2C2C200CECE
      CE00969696005151510000000000000000000000000000000000000000000000
      000055242400AA929200AA929200AA929200AA929200556D6D00AA929200FFDB
      DB00AAFFFF005F5F5F00A0A0A000AFAFAF00B7B7B70087878700C2C2C200CECE
      CE00969696005151510000000000000000000000000000000000000000000000
      0000DDD2CE00FEFEFE00FEFEFE00FAF8F600FAF8F600F8F4F200FAF8F600F8F4
      F200FAF8F60068686800A3A3A300B0B0B000B3B3B300B7B7B700BDBDBD00C3C3
      C300AAAAAA000000000000000000000000000000000000000000E790F9003ABD
      EC0025ADDD00ABEBFD004ED4FE0054D8FF005BDBFF0062DFFF0066E3FF006DE6
      FE006E6E6E0082828200BABABA00B7B7B700717171008383830071717100D5D5
      D500D2D2D2009494940000000000000000000000000000000000000000005757
      5700ADADAD00A3A3A30093939300D4D4D4009999990096969600D7D7D700EEEE
      EE00A3A3A30068686800A3A3A300B0B0B000B3B3B300B7B7B700BDBDBD00C3C3
      C300AAAAAA000000000000000000000000000000000000000000000000000000
      000055242400AA929200AAB6B600AAB6B6009C9C900069727B008F929700FFDB
      DB00FFFFFF0068686800A3A3A300B0B0B000B3B3B300B7B7B700BDBDBD00C3C3
      C300AAAAAA000000000000000000000000000000000000000000000000000000
      0000DDD2CE00FEFEFE00FEFEFE00FEFEFE00FAF8F600FAF8F600F8F4F200F8F4
      F200F7F0EE00FAF8F60059595900676767007E7E7E00B3B3B3006A6A6A006565
      65006E6E6E000000000000000000000000000000000000000000DAA1F50049C4
      F00038C3F500B5DFF00056DDFC005FDDFE0065E1FE006BE4FE0071E8FE0077EB
      FE00797979005F5F5F00A0A0A000AFAFAF00B7B7B70087878700C2C2C200CECE
      CE00969696005151510000000000000000000000000000000000000000005555
      5500B1B1B100A6A6A60096969600D4D4D4008383830080808000D6D6D600EDED
      ED00A8A8A800AAAAAA0059595900676767007E7E7E00B3B3B3006A6A6A006565
      6500000000000000000000000000000000000000000000000000000000000000
      000055242400AAB6B600AA929200AAB6B600214CBB002D5798006A838D005D64
      5700AADBDB00FFDBDB0059595900676767007E7E7E00B3B3B3006A6A6A00556D
      6D00000000000000000000000000000000000000000000000000000000000000
      0000DDD2CE00FEFEFE00FEFEFE00FEFEFE00FAF8F600FAF8F600F8F4F200F8F4
      F200F7F0EE00F4EDEB00FAF8F600FAF8F600585858009A9A9A0077777700EDE4
      E100857874000000000000000000000000000000000000000000CDB0F1005DCE
      F6004ACEFD0052BADD006CE1FD0067E3FF006EE6FF0073EAFE0079EDFF007FF1
      FF007777770068686800A3A3A300B0B0B000B3B3B300B7B7B700BDBDBD00C3C3
      C300AAAAAA000000000000000000000000000000000000000000000000005555
      5500B4B4B400AAAAAA009A9A9A00FDFDFD00FEFEFE00FCFCFC00F2F2F200EEEE
      EE00ACACAC00AAAAAA00AAAAAA00BDBDBD00585858009A9A9A00777777004E4E
      4E00000000000000000000000000000000000000000000000000000000000000
      000055242400AAB6B600AA929200AAB6B6002472C5007987A4005F77B9001A52
      BD004C5F9200FFDBDB00AADBDB00BDBDBD00585858009A9A9A0077777700556D
      6D00000000000000000000000000000000000000000000000000000000000000
      0000DDD2CE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FAF8F600FAF8F600F4ED
      EB00F4EDEB00F4EDEB00F0E8E600F0E8E600F0E8E600EDE4E100EBE2DF00EBE2
      DF00857874000000000000000000000000000000000000000000C6BAF30063D0
      F6004FD4FF001CAEDC00C4F9FD0070EAFA0085EDFD007DEFFC007FF3FD0088F5
      FE008CF8FE005555550059595900676767007E7E7E00B3B3B3006A6A6A006565
      65006E6E6E000000000000000000000000000000000000000000000000005555
      5500B7B7B700ADADAD00A9A9A900727272007272720070707000707070006E6E
      6E008C8C8C006E6E6E006E6E6E006E6E6E006E6E6E005B5B5B008B8B8B004E4E
      4E00000000000000000000000000000000000000000000000000000000000000
      000055242400AAB6B600AAB6B600AA929200639DC000778BB400C5BACE00D0ED
      F20078A6DC001C5EC4001C5EAF00AA92920055929200AA92920055494900556D
      6D000000000000000000000000000000000000000000FE01FE00000000000000
      0000DDD2CE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FAF8F600F8F4
      F200F4EDEB00EDE4E100F0E8E600F0E8E600EBE2DF00EBE2DF00EBE2DF00E8DE
      DB00857874000000000000000000000000000000000000000000BCBDF1007FD8
      F90059D6FB0042CEF200D5F3FB0076EDF70080F1FD0087F4FE008EF7FE0090FB
      FD0091FBFE0093FBFE007373730065656500585858009A9A9A007777770093EA
      F500C0BDF1000000000000000000000000000000000000000000000000005757
      5700BABABA007A7A7A00BFBFBF00BEBEBE00BEBEBE00BBBBBB00B8B8B800B5B5
      B500B0B0B000ACACAC00AAAAAA00A6A6A600A3A3A3005B5B5B008B8B8B004E4E
      4E00000000000000000000000000000000000000000000000000000000000000
      000055242400AA92920055929200AA929200AA9292002C91DF00DDEEFF00D8EB
      FF00D8EBFF00BEEBF90083C7F2002052BC00556D6D00AA929200556D6D00556D
      6D00000000000000000000000000000000000000000000000000000000000000
      0000DDD2CE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FAF8
      F600F8F4F200F4EDEB00EDE4E100EBE2DF00E8DEDB00E8DEDB00E8DEDB00E3D9
      D500857874000000000000000000000000000000000000000000B9B9F20084E2
      F8005DDFFC0064E1FE002AA8D00094D4F000D3ECF600D6F3F900C0F5FB00AFFE
      FB0099FDFD0096FDFF0098FEFF0099FFFE0094FDFF0074E0F000B7FDFE00BCFC
      F9003DB7DA000000000000000000000000000000000000000000000000005555
      5500BABABA006C6C6C00FEFEFE00FDFDFD00FBFBFB00F7F7F700F2F2F200ECEC
      EC00E7E7E700E1E1E100DBDBDB00D7D7D700D2D2D200747474008B8B8B004E4E
      4E00000000000000000000000000000000000000000000000000000000000000
      000055242400AAB6B600AADBDB00FFFFFF00FFFFFF0050BDF000A7D2F300E4EE
      FF00A5E8FF0087E4FD0089D4FF0087C3FF002F63B600556D6D0055494900556D
      6D00000000000000000000000000000000000000000000000000000000000000
      0000DDD2CE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00F8F4F200F4EDEB00EBE2DF00E8DEDB00E3D9D500E1D6D200E1D6
      D20085787400000000000000000000000000000000000000000083CDE70092E5
      FC005FE1FB0070E4FE006CE9FE0074E9FD0064DEF40058D5ED0048CAE60041B5
      DA00E0F8FC0099FEFD0097FEFC0099FEFF0097FEFF0068E5F500C0FEFC00C1FE
      FC006CD5E9000000000000000000000000000000000000000000000000005555
      5500BFBFBF006D6D6D00FFFFFF00FFFFFF00FDFDFD00F7F7F700F2F2F200EDED
      ED00E8E8E800E2E2E200DCDCDC00D7D7D700D2D2D200727272008C8C8C004D4D
      4D00000000000000000000000000000000000000000000000000000000000000
      000055242400AAB6B600AADBDB00FFFFFF00FFFFFF00FFFFFF004BC0FD00AFF5
      FF007FE4FD006FD8F90088DFFF0075CDFC0072B9FD001960C200556D6D00556D
      6D00000000000000000000000000000000000000000000000000000000000000
      0000DDD2CE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FAF8F600F8F4F200F4EDEB00EBE2DF00DDD2CE00DDD2CE00DACD
      C90085787400000000000000000000000000000000000000000086CDE9009DEB
      FF0069E6FD0076E8FF0075ECFF007DEFFF0087F4FD008EF9FD008FF6FE0090FB
      F90035BCD9003DB6DC0074CDE700BAE5ED00DCF6F700C0EEFA00D0FBFD00C9F9
      FB00BBFCFB0043B7DD0000000000000000000000000000000000000000005555
      5500C1C1C1006D6D6D00FFFFFF00FFFFFF00FEFEFE00F7F7F700F2F2F200EDED
      ED00E8E8E800E2E2E200DCDCDC00D7D7D700D2D2D200737373008F8F8F004D4D
      4D00000000000000000000000000000000000000000000000000000000000000
      000055242400AA929200FFDBDB00FFFFFF00FFFFFF00FFFFFF0025B7F8009CEC
      FF0079F5FF0077E0FF005DD1FF0061DAFF0061BFFF0062B9F700104DBB00556D
      6D00000000000000000000000000000000000000000000000000000000000000
      0000DDD2CE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FAF8F600FAF8F600F4EDEB00F7F0EE00F4EDEB00DDD2CE00DACDC900DACD
      C90085787400000000000000000000000000000000000000000063C2DD009FEE
      FE0075EAFE007BEDFE0080F1FE0085F3FE0089F7FF008CFAFE0097FAFD0098FD
      FE0098FDFD009EFEFF0099FEFF008DF7FD0075E5F40022A9D90074C7E20052B6
      DF0051B8D90048B4D70000000000000000000000000000000000000000005555
      5500C4C4C4006E6E6E00FFFFFF00FFFFFF00FDFDFD00F7F7F700F2F2F200EDED
      ED00E7E7E700E2E2E200DCDCDC00D6D6D600D2D2D20074747400949494004E4E
      4E00000000000000000000000000000000000000000000000000000000000000
      000055242400AAB6B600AADBDB00FFFFFF00FFFFFF00FFFFFF00FFDBDB002BBE
      FF0083F2FF0063F4FC0067E0FA004ECFFF0051D1FC005EAFFF005EAFFF001253
      B600000000000000000000000000000000000000000000000000000000000000
      0000DDD2CE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FAF8F600F8F4F200A3918C00A3918C00A3918C00A3918C00A3918C00A391
      8C00A3918C00000000000000000000000000000000000000000064C5DC009DF1
      FD007AEFFE0082F2FD0087F5FE008CF7F9008DF7FD0097FEFB009DFDFD009AFE
      FE0098FFFE0098FEFC0095FCFB0093FDFD0096FCFE0035B9DD00000000000000
      0000000000000000000000000000000000000000000000000000000000005454
      5400C8C8C80070707000FFFFFF00FFFFFF00FEFEFE00F7F7F700F2F2F200EDED
      ED00E7E7E700E1E1E100DDDDDD00D7D7D700D2D2D20072727200959595004D4D
      4D00000000000000000000000000000000000000000000000000000000000000
      000055242400AAB6B600AADBDB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AAFF
      FF0030C7F3005FF3FF0057E7FF004FD0FD0043CFFE0046C6FF0045ADFF003BA2
      F8000C4BAD000000000000000000000000000000000000000000000000000000
      0000DDD2CE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FAF8F600F8F4F200DDD2CE00FAF8F600FEFEFE00F8F4F200F0E8E600C8B7
      B2000000000000000000000000000000000000000000000000005EC1E0009EF3
      FE0087F0FF008EF7FF008DFAFE0096FBFC005ADBEA004CBAE10066C6E1008ED5
      EA00A7E0F000B2EDF200C4F8FC00C5FFFD00B7FEF8003FBAE200000000000000
      0000000000000000000000000000000000000000000000000000000000005656
      5600CCCCCC0072727200FFFFFF00FFFFFF00FEFEFE00F8F8F800F3F3F300EDED
      ED00E7E7E700E2E2E200DCDCDC00D7D7D700D2D2D200747474009A9A9A004E4E
      4E00000000000000000000000000000000000000000000000000000000000000
      000055242400AAB6B600FFB6B600FFFFFF00FFFFFF00FFFFFF00FFDBDB00FFFF
      FF00FFDBDB0030C7F90051F3FF0032E9FF003CCDFF0023CBFA0026C5FF0031A2
      FF00449EFD006539CB0000000000000000000000000000000000000000000000
      0000DDD2CE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FAF8F600F8F4F200DDD2CE00F7F0EE00FEFEFE00E8DEDB00C8B7B2000000
      00000000000000000000000000000000000000000000000000005CBCE0008BD3
      E900BDD4F600D1FDFD00C4FAFD00B0FCFC0048B6E10000000000000000000000
      0000E494F800D6A5F600AEC3EB0067C2DF0046B9DE004FB9DE00000000000000
      0000000000000000000000000000000000000000000000000000000000005757
      5700D9D9D90080808000FFFFFF00FFFFFF00FEFEFE00F8F8F800F3F3F300EEEE
      EE00E9E9E900E4E4E400DEDEDE00DADADA00D6D6D6007E7E7E00A7A7A7004E4E
      4E00000000000000000000000000000000000000000000000000000000000000
      00005524240055929200AA6D6D00AA929200AA929200AA92920055929200AA92
      9200AA929200559292002EC4ED0025E6FF0025E6FF002BC9FF000AC3FB001DBD
      FF0029A2F8003A9CFF007C35DE00000000000000000000000000000000000000
      0000DDD2CE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FAF8
      F600F8F4F200F8F4F200DDD2CE00F0E8E600F0E8E600C8B7B200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6A2F500A1D2EC0076CBE3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000525252005252520052525200525252005252520051515100515151005151
      5100515151005151510051515100515151005151510052525200545454000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000556D6D00556D6D00556D6D00556D6D00556D6D00556D6D00556D
      6D00556D6D00556D6D00556D6D008A71F70012EBF40004DBFF0023C3FD0000BC
      FF0022B8FE0030A2FC003D99E800000000000000000000000000000000000000
      0000DDD2CE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00F8F4
      F200F8F4F200F4EDEB00DDD2CE00EBE2DF00C8B7B20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B75FF0013F1FF0000E0FD0006C2
      F8004DD0F800D3EBFF00135DBB00000000000000000000000000000000000000
      0000DDD2CE00DDD2CE00DDD2CE00DDD2CE00DDD2CE00DDD2CE00DDD2CE00DACD
      C900D5C8C400D3C5C100C8B7B200C8B7B2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000737AFF000FEFFB0020E0
      FF00DFF0FF00A9C3F20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000797CFB0054E0
      FD00268FE0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FCFDFD008F727B00866F76008B7479008D7177008B7276008C71
      75008C717600886F720089646D00B0969D009A9B9A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F4F1F4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00B79EAB00B09F9F00B1A1A500B0A2A500B0A1A500B0A1A500AFA2
      A400B1A3A600ADA1A400ADA0A100C2BAC2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00A08F9200D8D5D70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4F6F600ECF5FE0036CAFD00ACD8
      FD00FBFBFC00FDFDFD0000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008C747B00F6FBF9005796F40051D0FC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00A89E9B00D7DCD50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B9D1FA001FB1F90094CFFB0063ECFA0068C0
      FA001FA7F9009BD4FC0000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00ABD4F6006993B40054ABFC0044E0FB00C0E0FA0091C6
      FB00C8E4FD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00AE979A00D7D1D70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F8F8F8003DBFF8008AFCFB00CBFBFE00A4F9
      FD005FEFF800D7EBFD0000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CEE3FE001CE5F90024B6F50017C2EA0072ECFC0015AFF80015DC
      F9001CB3FA00E8F3FD000000000000000000000000000000000000000000A08C
      8F00874F53007A6868007D5A65007D626C00463F84003537BB002934C1002833
      BC002B2FBC00292FC3002A36BC00352B8500826A6B007B6D6C007C5D60008462
      6C009E878F000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00A8999B00E1CFD20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008BC7FB003BD4FA00F2FBFE0074EA
      FA003E9FFA00E4E2E30000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00A3D8F8004BCEFD009DF7FD00DDF9FA0072E8FB0053CC
      FB00BDDAFC00000000000000000000000000000000000000000000000000A28C
      9100FFFFFF00FFFFFF00FFFFFF00FFFFFF003535BD00456CF900083EFB000130
      FB000237FD00012FFC00032BF400222CBA00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009C848C000000000000000000000000000000000000000000000000000000
      000000000000FDFEFC006F6FD2006573C9006B6BC800656DC900676DCB00676E
      CA00686DC900666BCC006567C700504A9800DBCED20000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D6CF
      CD00CABFC200CABFC000C8BDBC00CAC2C500B8CBBB00BCD2BD00BBCFBF00BDD3
      BF00BAD1C100BED1BC00B8D0C200B6D8EC0031D0FA006EDCF900B0F8FA0076E4
      F70041E5FB0095D6FA0000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0018ABED00ADEEFB00EEF9FE003BD1FD004EA7
      FA0056E7FA00000000000000000000000000000000000000000000000000A18B
      9200FFFFFF00FFFFFF00FFFFFF00FFFFFF002B31B8005179FA000B3AFE000131
      FC000031FC000030FE00012EF5001C29B700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00967E88000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE000E35ED000D3CF000062EEE00032DED00032CEC00022A
      EB000229ED000329EA000029DF00051BCE00C9CCE90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B5E
      6100FFFFFF00FFFFFF00FFFFFF00FFFFFF0059A66A0042D85F0033CE540020CD
      3C002AC530000DC7340024B52C00D4E5D8001E96FB00D2ECFD005FECF4003D67
      A9001F8EEF00D2E6F70000000000000000000000000000000000000000000000
      0000FDFDFE0042AE580037AA4E003AA74F0035A54A0034A3470033A146002F9F
      42002F993F002C98570022B4E0003FDEF90063E5F4009EF1FC005BD2F90036DB
      F80071CBFC00D8E9F7000000000000000000000000000000000000000000A18E
      9400FFFFFF00FFFFFF00FFFFFF00FFFFFF002E35B900557DFA001041FE000639
      FC000132FD000030FE00012DF4001D2AB500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00977F87000000000000000000000000000000000000000000000000000000
      000000000000FEFDFF001959FD001D51FE00154CFD000C40FC000535FD000231
      FE000330FE000131FC000237FE00051FD600C7C4E20000000000000000000000
      000000000000000000000000000000000000000000000000000000000000855D
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF004C8F5A004BDC66002FD14E002CCD
      490025C93E0020BE340018B73500959CD300FFFFFF00FFFFFF0036BFFB007E7A
      9700A4A5DE000000000000000000000000000000000000000000000000000000
      0000FEFEFE003AE05C0042E6660037DA5A0033D753002CD44B0029CE440023CA
      3F0026CF36001CC535001394CB005DB0F40053A3FA005AE3F700C2E2F8001A8D
      F800C6DAFA00000000000000000000000000000000000000000000000000A38D
      9400FFFFFF00FFFFFF00FFFFFF00FFFFFF002B35B8005984FA00164BFE000D41
      FE000338FC00022FFE00002DF4001C29B700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00978186000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE002B65FD001B5BFE001953FC00124DFB000A42FC000338
      FB000033FC000131FC000431FE00001FD400C8C4EB0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000886B
      6F00FFFFFF00FFFFFF00FFFFFF00FFFFFF004E8B5D0054E270002FD656002DD4
      510026C33D0020CB420023B03700D9E6DE00FFFFFF00FFFFFF00FFFFFF00A18B
      8B00B7BCE3000000000000000000000000000000000000000000000000000000
      0000FEFEFE0047E46D0041DD66003DDD5F0037D95A0033D4530030CF4B002CCB
      450022C93C0023C53E001AC63600729A7400A8D3F9003BC8F700E6F0FE000000
      000000000000000000000000000000000000000000000000000000000000A18E
      9300FFFFFF00FFFFFF00FFFFFF00FFFFFF002C33B8005D88F8001D56FE00134A
      FD000C3FFD000137FE00022DF4001C28B800FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00967E86000000000000000000000000000000000000000000000000000000
      000000000000FEFFFE002D72FC002D6BFE002263FD001E58FE00144DFF000E47
      FD00093CFE000130FE000438FD000321D400C7C2EE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007661
      5C00FFFFFF00FFFFFF00FFFFFF00FFFFFF0049945E0049ED6D003EDF620035D7
      55002ADB4E0028C13D0023C03B00D4DADF00FFFFFF00FFFFFF00FFFFFF00A28A
      8C00E1DCD1000000000000000000000000000000000000000000000000000000
      0000FEFEFE0050E277004FE5770045E26E003DDF660039DB5D0034D555002CD1
      4D002CD2490023C94A001CBF2F006FA0820000000000FEFEFE00000000000000
      000000000000000000000000000000000000000000000000000000000000A28E
      9400FFFFFF00FFFFFF00FFFFFF00FFFFFF002D31B900618EFA002562FD001B53
      FD001348FE00083CFE00012FF3001A26B800FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00978088000000000000000000000000000000000000000000000000000000
      000000000000FDFEFE003B7FFE003279FE003170FB002964FE00225AFE001954
      FE001249FD000B3FFD000138FD000620D600C5BFE50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F61
      6B00FFFFFF00FFFFFF00FFFFFF00FFFFFF004F915D005BEB800042E0680037D9
      5B0032D552002ACD47002ABE4300DCE2DC00FFFFFF00FFFFFF00FFFFFF009E89
      8D00D2C8CB000000000000000000000000000000000000000000000000000000
      0000FEFEFE0053EB830053EC81004DE7770047E4700042E166003DDB5F0036D7
      57002FD3520030CE4B0027CE45006F9B74000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C84
      8A00FFFFFF00FFFFFF00FFFFFF00FFFFFF002D2AB800699AF7002964FF00225E
      FC001950FD000E46FD000733F5002128B300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00957E84000000000000000000000000000000000000000000000000000000
      000000000000FEFDFE005B95F700618CFD004E87FA004981FA004379FA004071
      FA003A69F9003564FB002959F400132CD700C8C8E00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F61
      6B00FFFFFF00FFFFFF00FFFFFF00FFFFFF005192600060F0870049E672003EDF
      660036DA590030D14F002EC04800DCE2DD00FFFFFF00FFFFFF00FFFFFF009E88
      8D00E3DDDF000000000000000000000000000000000000000000000000000000
      0000FEFEFE005FFC8D0056F3860052F180004DED7A0045E8720040E069003ADC
      610031D55A0030D253002FCE49006C9C7A000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A496
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF003142B7006C9AFA003871FE002B67
      FE00215EFC00124EFB000B39F6001E28BA00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009A8A8D000000000000000000000000000000000000000000000000000000
      000000000000FCFAFC005B63C8004A46BD004B4FBF004A4CC200484EC2004A4E
      C200474FC1004A50BF003D3FBE003838A100D7D4D60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F61
      6B00FFFFFF00FFFFFF00FFFFFF00FFFFFF005191610066F48F004FEC7D0043E5
      6E003BDE620037D8580032C34E00DCE2DD00FFFFFF00FFFFFF00FFFFFF009E88
      8D00E5E1E1000000000000000000000000000000000000000000000000000000
      0000FEFEFE0087F2B1008FFAB20086F7A70080F6A2007BF19C0077EE960072EB
      90006FE6840069E18C0067DB7E006FA27A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009B87
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00212DBA0074A3F700337BFC003377
      FE002465FB002460FE001848F3001A25B600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00937B81000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00A6929A00DDCCD30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F61
      6B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00539263006BF9960056F387004BEB
      780041E36B003EDD610036C75300DBE1DD00FFFFFF00FFFFFF00FFFFFF009E88
      8D00E3DCDE000000000000000000000000000000000000000000000000000000
      0000FEFCFC00489360003E734000427C48003E7C4600417D4700417D47003E7D
      4800498F4F002F703D004E7F5200648D69000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BBA9
      AB00FFFFFF00FFFFFF00FFFFFF00FFFFFF007A7BD40092B3F9006490FB006188
      FE005D85FF004A71FD003E60F6004D59D500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BBA2A9000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00A7909400DBD6DA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008065
      6E00FFFFFF00FFFFFF00FFFFFF00FFFFFF005896670070FC9C005CF58D004EED
      7C0042E66E0045DF670038CA5800DAE0DC00FFFFFF00FFFFFF00FFFFFF009F88
      8E00E6DDE0000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00897479000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00A3939600DDD4D50000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A0A3
      A40000000000000000000000000000000000F4EFF300FAF9F900F5F6F400F0F1
      F000EBEBEB00EDEEED00E9EDF000D7D7D7000000000000000000000000006C6C
      6D00FEFDFD000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00877478000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00A18D9300E3E6E40000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00887076000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000656565009C888A008B8387009C82890097808900987E8900997F
      8900997F88009380860090787D009B858B00F8F5F50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0086727C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ACADAC00F0EFF000A7A7A700D6D6D600FDFDFD00FEFE
      FE00FEFEFE00FEFEFE00FDFEFE00FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00B2A0A400ABA0A500B19EA500B29FA500B29FA500B29FA600B19F
      A500ADA2A800B09DA500B1999D008C7A7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F4FAF900FEFBFB00FDFFFD00FCFEFD00FBFFFD00FBFEFD00FDFE
      FD00FEF7F300FDFEFF00FDFFFE00F8F9F8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFDDDB00E9E7E700DFDDDC00E9E7E600DFDEDD00E9E7E600E5E4
      E300E9E7E600E8E6E500E9E7E600E9E7E6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEEEE00FEFEFE00F1EFEF00FDFEFE00F1F1F000FCFDFD00F9F8
      F800FCFDFD00FCFCFC00FDFEFE00FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DFDDDB00E9E7E700DFDDDC00E9E7E600DFDEDD00E9E7E600E5E4E300E9E7
      E600E8E6E500E9E7E600E9E7E600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DFDDDB00E9E7E700DFDDDC00E9E7E600DFDEDD00E9E7E600E5E4E300E9E7
      E600E8E6E500E9E7E600E9E7E600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6E4E300F1F0F000E9E8E900F1F1F100EAEAEB00F1F0F000EDED
      ED00F1F0F000F0EFEF00F1F0F000F1F0F0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFEEEE00FEFEFE00F1EFEF00FDFEFE00F1F1F000FCFDFD00F9F8F800FCFD
      FD00FCFCFC00FDFEFE00FDFDFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFEEEE00FEFEFE00F1EFEF00FDFEFE00F1F1F000FCFDFD00F9F8F800FCFD
      FD00FCFCFC00FDFEFE00FDFDFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEEEE00FEFEFE00F2F3F200FDFDFD00F4F5F500FDFDFD00F9F8
      F800FEFEFE00FCFCFC00FEFEFE00FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E6E4E300F1F0F000E9E8E900F1F1F100EAEAEB00F1F0F000EDEDED00F1F0
      F000F0EFEF00F1F0F000F1F0F000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E6E4E300F1F0F000E9E8E900F1F1F100EAEAEB00F1F0F000EDEDED00F1F0
      F000F0EFEF00F1F0F000F1F0F000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000077777700787878008989890000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003333330033333300333333003333330033333300333333003333
      330033333300DBD8D800E4E1E100E0DEDF00E6E4E500E1DFE000E3E0E100E1DF
      DF00E3E1E100E3E0E100E4E1E100E4E2E2000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E2E3
      E300EFEEEE00FEFEFE00F2F3F200FDFDFD00F4F5F500FDFDFD00F9F8F800FEFE
      FE00FCFCFC00FEFEFE00FDFDFD00000000000000000000000000000000000000
      000000000000100C94000003A200000497001C119D0000000000000000000000
      0000EFEEEE00FEFEFE00F2F3F200FDFDFD00F4F5F500FDFDFD00F9F8F800FEFE
      FE00FCFCFC00FEFEFE00FDFDFD00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BBBB
      BB009E9E9E00F9F9F90087878700F3F3F30061616100FBFBFB0076767600EEEE
      EE00000000000000000000000000000000000000000000000000000000000000
      0000333333004E505800535B5A0081897F00787779006C6C7C0079767F006D68
      65006B6A6E00ECEBEA00F8F8F800ECEAEA00F8F7F800ECEAEA00F7F7F700F2F3
      F300F8F8F800F6F6F600F8F7F900F7F8F8000000000000000000000000000000
      0000B4787A00B4787A00B4787A00B4787A00B4787A00B4787A00B6818100AD6B
      6A00DBD8D800E4E1E100E0DEDF00E6E4E500E1DFE000E3E0E100E1DFDF00E3E1
      E100E3E0E100E4E1E100E4E2E200000000000000000000000000000000000000
      00001314AC001017A2000F40F4000D2FE6000009A10000009000000000000000
      0000DBD8D800E4E1E100E0DEDF00E6E4E500E1DFE000E3E0E100E1DFDF00E3E1
      E100E3E0E100E4E1E100E4E2E200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B1B1B1007979
      79009C9C9C0075757500E2E2E200EEEEEE00CCCCCC006A6A6A00E4E4E4006060
      6000E3E3E3000000000000000000000000000000000000000000000000003333
      3300555555009499980091898900A59EA10052575A00565D5A00BDBFB900B7BC
      BA00A5B3B100DBD8D800E4E1E200DEDBDC00E4E1E200DFDCDC00E3E1E100E1DF
      E000E3E1E200E3E1E100E3E1E200E4E1E1000000000000000000B4787A00B478
      7A00B4787A00FED3D200FEDADA00F7D1D1009D545400BA7B7B00C2848300FEF7
      F800ECEBEA00F8F8F800ECEAEA00F8F7F800ECEAEA00F7F7F700F2F3F300F8F8
      F800F6F6F600F8F7F900F7F8F800000000000000000000000000000000000000
      00000302A000CBD0EF001B4DFD001746FF001F3BFF000208A70000009D000000
      0000ECEBEA00F8F8F800ECEAEA00F8F7F800ECEAEA00F7F7F700F2F3F300F8F8
      F800F6F6F600F8F7F900F7F8F800000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000063636300C4C4
      C400D8D8D800DEDEDE00E2E2E200E6E6E600ECECEC00F1F1F100F4F4F400A0A0
      A000AAAAAA000000000000000000000000000000000000000000000000003333
      3300ADADAD009C9C900069727B008F92970060605A004F5A5800BAC1BE00BEB9
      B600B2B1BB00E6E5E400F0F0F000E4E3E300F0F0F000E5E4E300F0F0F000ECEB
      EB00F0F0F000EFEFEF00EFF0F000F0F0F00000000000B4787A00B4787A00FDE5
      E400FEDEDD00FCD3D400FDD5D500FDE0E000D69C9C009E4E4F00D9A8A800FDEF
      F000DBD8D800E4E1E200DEDBDC00E4E1E200DFDCDC00E3E1E100E1DFE000E3E1
      E200E3E1E100E3E1E200E4E1E100000000000000000000000000000000000000
      000000009200A8ACE1001F58FB001856F8001A47FF00113FFB000005A8000000
      9C00DBD8D800E4E1E200DEDBDC00E4E1E200DFDCDC00E3E1E100E1DFE000E3E1
      E200E3E1E100E3E1E200E4E1E100000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00D4D4D4009090
      9000CECECE00D7D7D700B3B3B30095959500D1D1D100EAEAEA00F1F1F1005959
      5900F7F7F700FEFEFE0000000000000000000000000000000000000000003333
      3300C0C0C000214CBB002D5798006A838D005D645700615C5300CCC3B600C8BE
      B700ADAFBA00BBB8C300BAB8C600B7B4C200BAB8C600B7B4C100BAB8C500B9B6
      C300BAB7C400BAB7C300BAB7C300BBB7C300B4787A00DCB2B200FDEEEF00FEE9
      E900FDE1E100FED7D700FDD7D700FEF0F100F7DFDE00BE8181009F595B008131
      3000E6E5E400F0F0F000E4E3E300F0F0F000E5E4E300F0F0F000ECEBEB00F0F0
      F000EFEFEF00EFF0F000F0F0F000000000000000000000000000000000000000
      00002010A40007119A003B6DFB001B57F7002052FF001451FB001140F6000001
      9F00E6E5E400F0F0F000E4E3E300F0F0F000E5E4E300F0F0F000ECEBEB00F0F0
      F000EFEFEF00EFF0F000F0F0F000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005757570077777700BDBD
      BD00CACACA0094949400EBEBEB0000000000A8A8A800D4D4D400E5E5E500BBBB
      BB00838383008D8D8D0000000000000000000000000000000000000000003333
      3300C5C5C5002472C5007987A4005F77B9001A52BD004C5F9200C6BDC000B6B8
      C000B2B5B3003039C800010DC500010BC200010ABC00010AB6000108B0000107
      AB000104A6000101A10001019C0001019900FBFBFB00ECCFCE00FEF0F100FEEE
      ED00FEE4E400FCDBDA00FDF0F000FEFEFE00FCF8F800EEDFDE00FDF9F800F8DD
      DF00BBB8C300BAB8C600B7B4C200BAB8C600B7B4C100BAB8C500B9B6C300BAB7
      C400BAB7C300BAB7C300BBB7C300000000000000000000000000000000000000
      00000000000000009B00100FA5003B77EF001554FC001E52FC00214AFD001848
      FE00010199000101990001019900010199000101990001019900010199000101
      9900010199000101990001019900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000062626200C3C3C300BEBE
      BE00C5C5C500696969000000000000000000FEFEFE009F9F9F00DFDFDF00E7E7
      E700ECECEC008282820000000000000000000000000000000000000000003333
      3300C4C4C400639DC000778BB400C5BACE00D0EDF20078A6DC001C5EC4001C5E
      AF00998D9F00464AC9003A42CA003B41C8003A40C3003B3FC0003A40BB003A3E
      B7003B3DB2003A3CAE003A3AAC003B3BA900F9FAFA00F2E1E000FDF5F600FEF0
      F000FDE7E600FDE2E300FDFCFB00FEFDFD00E5CBCC00FEFEFD00FEFEFE00FEFE
      FE003039C800010DC500010BC200010ABC00010AB6000108B0000107AB000104
      A6000101A10001019C0001019900000000000000000000000000000000000000
      0000000000000000000000019E0012159B004D6EF9002051FF001853FC00124A
      FF003039C800010DC500010BC200010ABC00010AB6000108B0000107AB000104
      A6000101A10001019C0001019900000000000000000000000000000000000000
      000000000000000000000000000000000000000000005B5B5B0084848400CDCD
      CD00BCBCBC0092929200E5E5E500FEFEFE00AFAFAF00C8C8C800D7D7D700B4B4
      B400838383009090900000000000000000000000000000000000000000003333
      3300C6C6C600939B9B002C91DF00DDEEFF00D8EBFF00D6EEFF00BEEBF90083C7
      F2002052BC006168890066737100827475007B76770030312D00000000000000
      000000000000000000000000000000000000F7F5F500FEFBFA00FEF9FA00FEF3
      F300FEE9EA00FEF4F400FEF7F700F9EBEA00F5EAEA00FEFEFE00FEFEFE00FEFE
      FE00464AC9003A42CA003B41C8003A40C3003B3FC0003A40BB003A3EB7003B3D
      B2003A3CAE003A3AAC003B3BA900000000000000000000000000000000000000
      0000000000000000000000000000000796000D0D9D002D61F1001858FD00114D
      FF00464AC9003A42CA003B41C8003A40C3003B3FC0003A40BB003A3EB7003B3D
      B2003A3CAE003A3AAC003B3BA900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D0D0D0009292
      9200B4B4B400BCBCBC009999990088888800B0B0B000CFCFCF00D0D0D0005D5D
      5D00F2F2F2000000000000000000000000000000000000000000000000003333
      3300C9C9C90091948B0050BDF000A7D2F300E4EEFF00A5E8FF0087E4FD0089D4
      FF0087C3FF002F63B600C5CEDB0081858A009487850036323100000000000000
      000000000000000000000000000000000000E7DCDC00FEFEFE00FEFDFD00FDF4
      F200FEECED00FDEEEF00F6E4E400F5E7E700FDF9F800FCFAFB00FEFDFD00FEFE
      FE00FEFEFE00FCFEFE00FDFDFC00ECD8D800FDFDFE00B4787A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000008099F00000199002050F6001655FF001B58
      F6001F51F7001552FF000848FF000006AA0008039A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ECECEC006C6C6C00D0D0D00086868600A4A4A40058585800AEAE
      AE00AEAEAE00B6B6B600BABABA00BCBCBC00C5C5C500C7C7C700CBCBCB008E8E
      8E00A4A4A4000000000000000000000000000000000000000000000000003333
      3300CDCDCD00979E9900D7F3FF004BC0FD00AFF5FF007FE4FD006FD8F90088DF
      FF0075CDFC0072B9FD001960C20081928F008F90940036343300000000000000
      000000000000000000000000000000000000B4787A00FDFBFC00FEE8E900FEE6
      E600FCE7E800F5D8D600E8DBD30094AC7100FEF3F300FCF6F700FDF9FA00FDFC
      FC00FEFEFE00FDFEFD00EBD5D800FCFEFD00EAD5D300B4787A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000E09940000009700274DE7002462FF002760F9001C56
      FF001D58FF001A4DFF00214DFF000E3DF70000069B0019099200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE005A5A5A00EEEEEE006C6C6C0093939300D5D5D500676767008A8A
      8A008484840087878700BEBEBE00B5B5B500979797006B6B6B00BABABA006262
      6200DFDFDF000000000000000000000000000000000000000000000000003333
      3300D3D3D300A29D9F00FBFEFF0025B7F8009CECFF0079F5FF0077E0FF005DD1
      FF0061DAFF0061BFFF0062B9F700104DBB0088969400302D2800000000000000
      00000000000000000000000000000000000000000000B4787A00B4787A00D5A2
      A300AD666600D0A3A300F8DFDF00EDDBDA00B1D0EB00FEF2F000FDF4F400FEF8
      F800FEFAFB00F6EEF000FEFEFE00F8F5F500B4787A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004129A000000A5002C50F7002A6AF8002865FB002265F600265D
      FF002D5BFC002354FC00234DFE000E4AFF00174DEE000000AA0000009D000000
      000000000000000000000000000000000000000000000000000000000000CACA
      CA00606060006C6C6C00E9E9E900EBEBEB00EDEDED00E2E2E2005C5C5C005252
      520092929200F6F6F6007E7E7E00BEBEBE005B5B5B00F5F5F5005D5D5D00ECEC
      EC00000000000000000000000000000000000000000000000000000000003333
      3300D8D8D8009B9BA100FFFFFC00DBF5FF002BBEFF0083F2FF0063F4FC0067E0
      FA004ECFFF0051D1FC005EAFFF005FB2FF001253B6002C383E00000000000000
      0000000000000000000000000000000000000000000000000000B4787A00E4CC
      CB00FAF6F500EBD9D900B37271009A504E00CE9D9C00FCE8EA00FCEFEF00FCF2
      F200FDF6F500FEF8F900F9F6F600B4787A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002C29AE00020B91003152E5003074FB002B6BF9002E6BFF00295DFD00061C
      B1000513A7003F6BFC001353FF002150FF000449FF001943FF0000089F000A0B
      9100000000000000000000000000000000000000000000000000000000007272
      7200D8D8D800DADADA00D5D5D50098989800A6A6A600E3E3E300E6E6E600C7C7
      C700CACACA000000000081818100808080008A8A8A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003333
      3300DCDCDC00A19DA300FFFAFF00FFFEFD00C0EDF80030C7F3005FF3FF0057E7
      FF004FD0FD0043CFFE0046C6FF0045ADFF003BA2F8000C4BAD00000000000000
      0000000000000000000000000000000000000000000000000000B4787A00E2C9
      C900FEFDFE00FEFEFD00FCFEFD00FBFEFD00F2E4E500B5727400DDB1B100FEEE
      EF00F7E5E500B4787A00B4787A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000A100837FCB004580FB003E81FB003372FF00316FF900121DB4000E02
      9A0000009100051292003A6FFF002156FF001E50FF000F50F3001C3CF3000006
      9D0000000000000000000000000000000000000000000000000000000000B3B3
      B30079797900CECECE007A7A7A00FEFEFE00F5F5F500C7C7C700DCDCDC005B5B
      5B00DCDCDC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003333
      3300DEDEDE00A2A39F00FEFEFE00FFFFFB00FFFEFF00C8E4FC0030C7F90051F3
      FF0032E9FF003CCDFF0023CBFA0026C5FF0031A2FF00449EFD006539CB000000
      00000000000000000000000000000000000000000000B4787A00B4787A00FBF8
      F900FEFEFE00FEFEFE00FEFEFE00FCFDFE00FDFCFC00EBDDDD00B4787A00B478
      7A00B4787A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000009800DAE4F6004E7EFF003375FC003475FF00091FAD0000029B000000
      00000000000006068E000B0FA3003D6EF2002058F3001751FE001F4BFF00000A
      9600000000000000000000000000000000000000000000000000000000007575
      75007C7C7C00C4C4C4007373730000000000EBEBEB00C6C6C600D1D1D1005E5E
      5E00F1F1F1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003333
      33006E6E6E006E796F008C8B8D0090858F00858A88008E8881006C8FA3002EC4
      ED0025E6FF0027E9FF002BC9FF000AC3FB001DBDFF0029A2F8003A9CFF007C35
      DE0000000000000000000000000000000000B4787A00B4787A00E5C7C700FEFB
      FB00FEFCFC00FEFEFE00FEFEFE00FEFDFD00EAD7D600B4787A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000130194003D3DB900C5DBF700BED1F600272BAF000000A200000000000000
      00000000000000000000000098000D11A0009DB2F000B6D7FF00646AD3001200
      9600000000000000000000000000000000000000000000000000000000007C7C
      7C00BABABA00C5C5C500BDBDBD0091919100A1A1A100C7C7C700C8C8C800A1A1
      A100DADADA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000333333003333330033333300333333003333330033333300333333003333
      33008A71F70012EBF40004DBFF0023C3FD0000BCFF0022B8FE0030A2FC003D99
      E8000000000000000000000000000000000000000000B87A7B00EEDADB00FEF9
      F900FEFAFA00FEFCFC00FDFDFD00FCFEFD00EDDEDF00B4787A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001104960007009B0006009A0004009F0000000000000000000000
      000000000000000000000000000013059300130397000C01930015078F000000
      000000000000000000000000000000000000000000000000000000000000E1E1
      E100747474005B5B5B00B2B2B200B6B6B600B8B8B800ADADAD00707070005E5E
      5E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B75FF0013F1FF0000E0FD0006C2F8004DD0F800D3EBFF00135D
      BB000000000000000000000000000000000000000000B4787A00F9EDED00FEF6
      F700FEF7F800FEFAFA00FEFBFB00FAF3F400EEDDDD00B4787A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD0062626200C0C0C0005E5E5E007C7C7C00959595009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000737AFF000FEFFB0020E0FF00DFF0FF00A9C3F200533B
      CE000000000000000000000000000000000000000000B4787A00B4787A00EBD4
      D300FBF0F100FEF7F800FDF8F900EFDCDC00C58E8E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F2F2F20097979700EDEDED008F8F8F00CCCCCC00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000797CFB0054E0FD00268FE000523ED8000000
      000000000000000000000000000000000000000000000000000000000000B478
      7A00B4787A00B4787A00B4787A00E2C2C100B4787A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008B68F900AA4DF800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B4787A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006E7D
      9B001939680073636C0099838300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DFDDDB00E9E7E700DFDDDC00E9E7E600DFDEDD00E9E7E600E5E4E300E9E7
      E600E8E6E500E9E7E600E9E7E600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DFDDDB00E9E7E700DFDDDC00E9E7E600DFDEDD00E9E7E600E5E4E300E9E7
      E600E8E6E500E9E7E600E9E7E600EFEFEE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DFDDDB00E9E7E700DFDDDC00E9E7E600DFDEDD00E9E7E600E5E4E300E9E7
      E600E8E6E500E9E7E600E9E7E600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A7B1C2002F67
      970096DCF20032547F00796A7400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFEEEE00FEFEFE00F1EFEF00FDFEFE00F1F1F000FCFDFD00F9F8F800FCFD
      FD00FCFCFC00FDFEFE00FDFDFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFEEEE00FEFEFE00F1EFEF00FDFEFE00F1F1F000FCFDFD00F9F8F800FCFD
      FD00FCFCFC00FDFEFE00FDFDFD00EFEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFEEEE00FEFEFE00F1EFEF00FDFEFE00F1F1F000FCFDFD00F9F8F800FCFD
      FD00FCFCFC00FDFEFE00FDFDFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A7B1C3002F679800A0EB
      FD0084D3F600329EE2001D3A6900000000000000000000000000000000000000
      0000CCC5C200B2A4A100B9A1A100BA9F9F00B99E9E00B99D9D00B99C9C00B89B
      9A00E6E4E300F1F0F000E9E8E900F1F1F100EAEAEB00F1F0F000EDEDED00F1F0
      F000F0EFEF00F1F0F000F1F0F000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E6E4E300F1F0F000E9E8E900F1F1F100EAEAEB00F1F0F000EDEDED00F1F0
      F000F0EFEF00F1F0F000F1F0F000EFEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E6E4E300F1F0F000E9E8E900F1F1F100EAEAEB00F1F0F000EDEDED00F1F0
      F000F0EFEF00F1F0F000F1F0F000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A8B5C8002E6C9F009FE9FD0085D5
      F60036A6EC000D68B7006E82A200000000000000000000000000000000000000
      0000CCC2C000FEFAF800FBF7F600FAF6F500F7F3F200F7F1F000F6F1EF00F3EE
      EC00EFEEEE00FEFEFE00F2F3F200FDFDFD00F4F5F500FDFDFD00F9F8F800FEFE
      FE00FCFCFC00FEFEFE00FDFDFD0000000000000000000000000000000000199C
      D30011A1CC001FA5D00069C4DF00000000000000000000000000000000000000
      0000EFEEEE00FEFEFE00F2F3F200FDFDFD00F4F5F500FDFDFD00F9F8F800FEFE
      FE00FCFCFC00FEFEFE00FDFDFD00EFEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFEEEE00FEFEFE00F2F3F200FDFDFD00F4F5F500FDFDFD00F9F8F800FEFE
      FE00FCFCFC00FEFEFE00FDFDFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A8B9CE002D73A8009EE9FD0087D6F60037A7
      EC000E6CBD006E89AA0000000000000000000000000000000000000000000000
      0000D0C6C300FEFBFB00FBF8F900FBF7F700F9F4F500F9F3F300F5F2F200F3EF
      F000DBD8D800E4E1E100E0DEDF00E6E4E500E1DFE000E3E0E100E1DFDF00E3E1
      E100E3E0E100E4E1E100E4E2E20000000000000000000000000000000000069A
      CC00B4E3F5002EBEF30036BEF40027B8E80016AEDF0012A2D60053B9DD009FD9
      EA00DBD8D800E4E1E100E0DEDF00E6E4E500E1DFE000E3E0E100E1DFDF00E3E1
      E100E3E0E100E4E1E100E4E2E200EFEFEE000000000000000000000000000000
      000000000000552424005549490055494900556D6D00AA6D6D0055494900AA6D
      6D00DBD8D800E4E1E100E0DEDF00E6E4E500E1DFE000E3E0E100E1DFDF00E3E1
      E100E3E0E100E4E1E100E4E2E200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A8BDD4002D7AB2009BE8FD0088D6F60039A8EC000F72
      C3006F90B4000000000000000000000000000000000000000000000000000000
      0000D1C4C200FCFEFC00FCFBFB00FBF9F900F9F6F700F9F4F500F7F2F300F7F1
      F200ECEBEA00F8F8F800ECEAEA00F8F7F800ECEAEA00F7F7F700F2F3F300F8F8
      F800F6F6F600F8F7F900F7F8F8000000000000000000000000000000000011A8
      DB00BDE2F40037C8F8003ECBFC0043CFFB0049D0FB004FD4FD0057D8FB004ED2
      F200ECEBEA00F8F8F800ECEAEA00F8F7F800ECEAEA00F7F7F700F2F3F300F8F8
      F800F6F6F600F8F7F900F7F8F800EFEFEF000000000000000000000000000000
      000055494900556D6D00AAB6B600AAB6B600AAB6B600AA929200AAB6B600FFFF
      FF00ECEBEA00F8F8F800ECEAEA00F8F7F800ECEAEA00F7F7F700F2F3F300F8F8
      F800F6F6F600F8F7F900F7F8F800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000027639E007CCBEB008BD7F60039A8EC001076C9006F96
      BE00000000000000000000000000000000000000000000000000000000000000
      0000D1C4C300FEFEFE00FDFDFD00FDFBFB00FBF9F900FAF7F700F9F4F500F8F3
      F400DBD8D800E4E1E200DEDBDC00E4E1E200DFDCDC00E3E1E100E1DFE000E3E1
      E200E3E1E100E3E1E200E4E1E100000000000000000000000000D6EEF30028B2
      E6003CACD90061D5FA004BD0FD0049D3FE0050D7FE0059D9FE005DDEFE0064E1
      FE00DBD8D800E4E1E200DEDBDC00E4E1E200DFDCDC00E3E1E100E1DFE000E3E1
      E200E3E1E100E3E1E200E4E1E100EFEFEF000000000000000000000000000000
      0000556D6D00AA929200AA929200AA929200AA929200556D6D00AA929200FFDB
      DB00DBD8D800E4E1E200DEDBDC00E4E1E200DFDCDC00E3E1E100E1DFE000E3E1
      E200E3E1E100E3E1E200E4E1E100000000000000000000000000000000000000
      0000F5F3F300A7939300886B640086685B00876A5E00876B60008A6F6F00C4B7
      B700EBE6E600E2DCDC0088879300276CAA00349CE000107BCF006F9DC7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D1C4C200FEFFFE00FEFEFE00FDFDFD00FCFBFB00FBF9F900FAF6F700F9F4
      F500E6E5E400F0F0F000E4E3E300F0F0F000E5E4E300F0F0F000ECEBEB00F0F0
      F000EFEFEF00EFF0F000F0F0F000000000000000000000000000D7EFF6003ABD
      EC0025ADDD00ABEBFD004ED4FE0054D8FF005BDBFF0062DFFF0066E3FF006DE6
      FE00E6E5E400F0F0F000E4E3E300F0F0F000E5E4E300F0F0F000ECEBEB00F0F0
      F000EFEFEF00EFF0F000F0F0F000EFEFEF000000000000000000000000000000
      0000AA929200AA929200AAB6B600AAB6B600AA929200556D6D00AA929200FFDB
      DB00E6E5E400F0F0F000E4E3E300F0F0F000E5E4E300F0F0F000ECEBEB00F0F0
      F000EFEFEF00EFF0F000F0F0F00000000000000000000000000000000000CEC3
      C30087655A00D2B68700FDF2B300FEFCBF00FEFEC800FEFED000FEFED800B7A6
      9600775857009E878700B3A1A1008F92A0002076BE0070A3D100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D1C4C300FEFFFE00FFFFFF00FFFFFF00FDFDFD00FBFAFA00FBF9F900FCF7
      F800BBB8C300BAB8C600B7B4C200BAB8C600B7B4C100BAB8C500B9B6C300BAB7
      C400BAB7C300BAB7C300BBB7C300000000000000000000000000C9EAF10049C4
      F00038C3F500B5DFF00056DDFC005FDDFE0065E1FE006BE4FE0071E8FE0077EB
      FE00BBB8C300BAB8C600B7B4C200BAB8C600B7B4C100BAB8C500B9B6C300BAB7
      C400BAB7C300BAB7C300BBB7C300EDEDEE000000000000000000000000000000
      0000AA929200AAB6B600AA929200AAB6B60055929200556D6D00AA929200AAFF
      FF00BBB8C300BAB8C600B7B4C200BAB8C600B7B4C100BAB8C500B9B6C300BAB7
      C400BAB7C300BAB7C300BBB7C300000000000000000000000000CEC3C300976F
      5900F9DE9C00FCF1B100FDF2B300FEFCBF00FEFECB00FEFED600FEFEE000FEFE
      E800E0D7CA007A5C5B0099818100DBD3D3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D1C4C200FEFFFE00FEFEFE00FEFEFE00FEFEFE00FDFDFD00FDFBFB00FCF8
      F9003039C800010DC500010BC200010ABC00010AB6000108B0000107AB000104
      A6000101A10001019C0001019900000000000000000000000000BEE6ED005DCE
      F6004ACEFD0052BADD006CE1FD0067E3FF006EE6FF0073EAFE0079EDFF007FF1
      FF003039C800010DC500010BC200010ABC00010AB6000108B0000107AB000104
      A6000101A10001019C0001019900DBDBE3000000000000000000000000000000
      0000AA929200AAB6B600AA929200AAB6B600FFDBDB00FFDBDB00FFDBDB00FFDB
      DB003039C800010DC500010BC200010ABC00010AB6000108B0000107AB000104
      A6000101A10001019C00010199000000000000000000F5F3F30085605500F8D5
      9200FBE8A700FBE6A400FDF2B200FEFDC300FEFECE00FEFEDA00FEFEE400FEFE
      F000FEFEF700E0D7CE0072515100EFEBEB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D1C4C200FEFFFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFDFD00FCFA
      FA00464AC9003A42CA003B41C8003A40C3003B3FC0003A40BB003A3EB7003B3D
      B2003A3CAE003A3AAC003B3BA900000000000000000000000000B9E5F00063D0
      F6004FD4FF001CAEDC00C4F9FD0070EAFA0085EDFD007DEFFC007FF3FD0088F5
      FE00464AC9003A42CA003B41C8003A40C3003B3FC0003A40BB003A3EB7003B3D
      B2003A3CAE003A3AAC003B3BA900ECECF2000000000000000000000000000000
      0000AA929200AAB6B600AAB6B600AA92920055929200AA92920055929200AA92
      9200464AC9003A42CA003B41C8003A40C3003B3FC0003A40BB003A3EB7003B3D
      B2003A3CAE003A3AAC003B3BA9000000000000000000A9979700CFA27000F9DE
      9C00F9DB99008B7D5900FDF2B200FEFDC3008D8D7200FEFEDA00FEFEE4008D8D
      8500FEFEF700FEFEF2009C857F00E2DCDC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D1C4C300FEFFFE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FEFEFE00FDFC
      FC00FCFBFB00FBF9F900FBF6F700F9F4F500F8F3F200F5F0F100F4EDEB00B094
      9200000000000000000000000000000000000000000000000000B0DFEE007FD8
      F90059D6FB0042CEF200D5F3FB0076EDF70080F1FD0087F4FE008EF7FE0090FB
      FD0091FBFE0093FBFE0095FCFF0096FDFF009AFEFF0076E5F500BEFDFF0093EA
      F500B4E2EE000000000000000000000000000000000000000000000000000000
      0000AA929200AA92920055929200AA929200AA929200AA929200AA929200AA92
      9200AA929200AA929200AA929200AA6D6D00556D6D00AA929200556D6D000000
      00000000000000000000000000000000000000000000906F6600F7CC8800F9DE
      9C00F8D18E00534C3700FDF3B700FEFDC300FEFECB00FEFED600FEFEE0005454
      4D00FEFEEC00FEFEE900E2DBC400AE9C9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D1C4C200FEFFFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FFFFFF00FEFE
      FE00FCFCFC00FCFAFA00FBF8F800FAF5F600FAF4F400F7F3F300F2EDEB00B293
      9100000000000000000000000000000000000000000000000000ACDBEF0084E2
      F8005DDFFC0064E1FE002AA8D00094D4F000D3ECF600D6F3F900C0F5FB00AFFE
      FB0099FDFD0096FDFF0098FEFF0099FFFE0094FDFF0074E0F000B7FDFE00BCFC
      F9003DB7DA000000000000000000000000000000000000000000000000000000
      0000AA929200AAB6B600AADBDB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AAFF
      FF00FFDBDB00AADBDB00AADBDB00AADBDB00AADBDB00556D6D00554949000000
      00000000000000000000000000000000000000000000A2735A00F8D28E00F9DB
      9800FBE8A800544F3A00FCEEB200FEFBC900FEFEDB00FEFED000FEFED8005454
      4A00FEFEE100FEFEE000FEFEDA00998181000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D1C4C200FEFFFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FFFFFF00FEFE
      FE00FDFDFD00FEFCFC00FCFAFA00FBF8F800FBF6F600F8F5F500F4F1EE00B093
      910000000000000000000000000000000000000000000000000083CDE70092E5
      FC005FE1FB0070E4FE006CE9FE0074E9FD0064DEF40058D5ED0048CAE60041B5
      DA00E0F8FC0099FEFD0097FEFC0099FEFF0097FEFF0068E5F500C0FEFC00C1FE
      FC006CD5E9000000000000000000000000000000000000000000000000000000
      0000AA929200AAB6B600AADBDB00FFFFFF00FFFFFF00FFFFFF00FFDBDB00FFFF
      FF00FFDBDB00FFDBDB00FFDBDB00FFDBDB00FFDBDB00AA6D6D00556D6D000000
      00000000000000000000000000000000000000000000B6805D00F7CF8C00F9DC
      9900F9DD9A00534A3500FBE9AE00FCF1B100C6C49C00FEFEDD00FEFECF005454
      4600FEFED600FEFED500FEFED2009F8989000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D1C4C300FEFFFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE00FEFCFC00FCFAFA00FCF8F700F8F6F600F8F4F100B194
      920000000000000000000000000000000000000000000000000086CDE9009DEB
      FF0069E6FD0076E8FF0075ECFF007DEFFF0087F4FD008EF9FD008FF6FE0090FB
      F90035BCD9003DB6DC0074CDE700BAE5ED00DCF6F700C0EEFA00D0FBFD00C9F9
      FB00BBFCFB0043B7DD0000000000000000000000000000000000000000000000
      0000AA929200AA929200FFDBDB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AAFF
      FF00FFDBDB00AADBDB00FFDBDB00AADBDB00AADBDB00556D6D00556D6D000000
      00000000000000000000000000000000000000000000A77A6400F7CB8700DDC2
      8600A8A0760054544400FEFEE700FDF6D300C5BD8B00FEFDD500A9A983003838
      2C00FEFECB00FEFECA00FEFEC800A59090000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D1C4C200FEFFFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FFFFFF00FEFE
      FE00FEFEFE00FDFCFD00C0ACAB00BBA8A800BCA8A700BCA5A800B8A4A400B092
      910000000000000000000000000000000000000000000000000063C2DD009FEE
      FE0075EAFE007BEDFE0080F1FE0085F3FE0089F7FF008CFAFE0097FAFD0098FD
      FE0098FDFD009EFEFF0099FEFF008DF7FD0075E5F40022A9D90074C7E20052B6
      DF0051B8D90048B4D70000000000000000000000000000000000000000000000
      0000AA929200AAB6B600AADBDB00FFFFFF00FFFFFF00FFFFFF00FFDBDB00FFDB
      DB00FFFFFF00AADBDB00FFDBDB00AADBDB00FFDBDB00AA6D6D00556D6D000000
      00000000000000000000000000000000000000000000A88A8100F5C27C00DCBD
      81008C84610054544300FEFEE200FEFEE900FBE7A600FDF9CA00A8A47A001C1C
      1500FEFCBE00FEFDC200E8E0AE00C0B1B1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D1C4C200FEFFFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FFFFFF00FEFE
      FE00FEFEFE00FBFEFD00B3A09F00FEFDFB00F6F9F500F7EDED00B5969800EBE7
      E60000000000000000000000000000000000000000000000000064C5DC009DF1
      FD007AEFFE0082F2FD0087F5FE008CF7F9008DF7FD0097FEFB009DFDFD009AFE
      FE0098FFFE0098FEFC0095FCFB0093FDFD0096FCFE0035B9DD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AA929200AAB6B600AADBDB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AAFF
      FF00FFDBDB00FFDBDB00FFDBDB00AADBDB00FFDBDB00556D6D00556D6D000000
      00000000000000000000000000000000000000000000C5B7B700DCA77400F7CC
      8900FBE4A300FDF9BC00FEFECC00FEFED000FBE8AA00FEFBBF00FBE8A700FCEC
      AB00FCF0B000FDF7B800C3AC9200EBE6E6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D1C4C200FEFFFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FFFFFF00FEFE
      FE00FEFEFE00F9FEFD00B49A9A00FEFEFD00FEF8F800B3A19F00E7DEDE000000
      00000000000000000000000000000000000000000000000000005EC1E0009EF3
      FE0087F0FF008EF7FF008DFAFE0096FBFC005ADBEA004CBAE10066C6E1008ED5
      EA00A7E0F000B2EDF200C4F8FC00C5FFFD00B7FEF8003FBAE200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AA929200AAB6B600FFB6B600FFFFFF00FFFFFF00FFFFFF00FFDBDB00FFFF
      FF00FFDBDB00AAFFFF00FFDBDB00AADBDB00FFDBDB00556D6D00556D6D000000
      00000000000000000000000000000000000000000000F2EFEF00BA968400F5BB
      7600F8D59100FBE6A400FCF1B100FDF3B500FCEEAF00F9E09E00F8D89700FBE4
      A200FCEEAF00E9D29E00BDABA800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CEC1BF00FFFEFE00FDFEFE00FEFEFE00FEFEFE00FEFEFE00FEFFFF00FEFE
      FE00FEFEFE00FEFEFD00B19B9A00FEFDFD00BDA3A400E7E0DE00000000000000
      00000000000000000000000000000000000000000000000000005CBCE0008BD3
      E900B6EAF500D1FDFD00C4FAFD00B0FCFC0048B6E10000000000000000000000
      0000D4EEF400C5E8F300A5D9E80067C2DF0046B9DE004FB9DE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005524240055929200AA6D6D00AA929200AA929200AA92920055929200AA92
      9200AA92920055929200AA929200556D6D00AA929200556D6D00554949000000
      0000000000000000000000000000000000000000000000000000DDD5D500C498
      7C00F5BC7700F7D08D00F8D89600F9DD9B00F9DD9B00F8D79500F9E19F00FBE3
      A200F3D39500BCA69900F3F1F100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CFC5C200FEFEFD00FCFDFE00FEFDFE00FEFDFE00FEFDFE00FEFDFF00FEFD
      FE00FEFDFE00F8FBFB00B69B9B00B9ACAA00DAD0CF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C5E7F1009ED8EC0076CBE3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000951676003C3874003C1C58003C387400951676003C1C58009516
      76003C1C580095167600951676003C1C58009516760095167600000000000000
      000000000000000000000000000000000000000000000000000000000000E1DA
      DA00C6A49000E3AF7A00F6C27D00F7CF8C00F8D39000F8D28F00F7CE8900DDB8
      8E00C4B3AE00F0ECEC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CEC4C100FFFCF900FCFEFD00FBFEFE00FBFEFE00FBFEFE00FBFFFE00FBFE
      FE00FBFEFE00FEFEFC00A4828200DDD0CF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F6F3F300D3C9C900C8AD9F00D0A88D00D7AA8600C9AC9A00CABAB500DFD8
      D800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CFBEBD00D1BFBE00D0BFBE00D0BFBE00D0BFBE00D1BFBE00D0BF
      BE00D0BFBE00D4BEBB00DAD3D000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E2E2E200C6C6C600CDCDCD00CACACA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000525252005858580052525200B8B8B8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005959
      5900FFFFFF00FFFFFF005B5B5B00CFCFCF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006262
      6200FFFFFF00EAEAEA0069696900D2D2D2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000099A8
      AC000000000099A8AC000000000099A8AC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000000000000000
      000000000000D4D4D400E0E0E00000000000000000000000000067676700EEEE
      EE00EDEDED0069696900C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000099A8AC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC000000000099A8AC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0099A8AC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000000000000000
      0000000000008B8B8B00A4A4A400C7C7C70000000000DDDDDD005E5E5E00FEFE
      FE00FFFFFF005C5C5C00E2E2E200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0099A8AC0099A8AC00D8E9EC0099A8AC0099A8AC00D8E9
      EC0099A8AC0099A8AC00D8E9EC0099A8AC0099A8AC00D8E9EC0099A8AC0099A8
      AC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000099A8AC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000099A8AC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC0099A8AC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000000000000000
      0000000000004E4E4E006F6F6F00A5A5A500C3C3C30061616100F6F6F600FFFF
      FF005A5A5A00B4B4B40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC000000000000000000D8E9EC000000000000000000D8E9EC000000
      000000000000D8E9EC000000000000000000D8E9EC000000000000000000D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC000000000099A8AC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000099A8AC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC0099A8AC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000000000000000
      0000000000006A6A6A00F0F0F00069696900ABABAB0066666600FEFEFE00FFFF
      FF0060606000C5C5C50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0099A8AC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0099A8
      AC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC000000000099A8AC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000099A8
      AC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0099A8
      AC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000000000000000
      0000000000004E4E4E00FFFFFF00E7E7E70061616100F9F9F900FFFFFF006666
      6600A8A8A800B2B2B200B8B8B800C2C2C200E2E2E20000000000000000000000
      0000000000000000000000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC000000000099A8AC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000099A8
      AC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0099A8AC000000
      0000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0099A8AC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000000000000000
      0000000000004F4F4F00FFFFFF00FFFFFF00EEEEEE00FFFFFF00F0F0F0005757
      5700585858006B6B6B0063636300535353000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC000000000099A8AC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000099A8
      AC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0099A8AC0000000000D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000000000000000
      0000000000005F5F5F00FFFFFF00F1F1F100FFFFFF00F9F9F900FEFEFE00FFFF
      FF00FFFFFF00E4E4E40063636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0099A8AC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0099A8
      AC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0099A8AC0000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000099A8AC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000000000000000
      0000000000005C5C5C00FFFFFF00FFFFFF00FEFEFE00FAFAFA00F2F2F200FEFE
      FE00FFFFFF005050500000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC000000000099A8AC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000099A8
      AC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC000000000099A8AC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000099A8
      AC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC0099A8AC0000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000000000000000
      0000000000005E5E5E00FBFBFB00FEFEFE00FFFFFF00F7F7F700FEFEFE00FFFF
      FF00525252000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC000000000099A8AC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000099A8AC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0099A8AC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000099A8
      AC00D8E9EC00D8E9EC0000000000000000000000000000000000000000000000
      00000000000063636300F6F6F600F8F8F800F9F9F900FFFFFF00FFFFFF004C4C
      4C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0099A8AC0099A8AC00D8E9EC0099A8AC0099A8AC00D8E9
      EC0099A8AC0099A8AC00D8E9EC0099A8AC0099A8AC00D8E9EC0099A8AC0099A8
      AC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000099A8AC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000099A8AC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC000000000099A8AC00D8E9EC00D8E9EC0099A8AC00D8E9
      EC00D8E9EC0099A8AC00D8E9EC00D8E9EC0099A8AC00D8E9EC00D8E9EC000000
      0000D8E9EC00D8E9EC0000000000000000000000000000000000000000000000
      00000000000061616100FFFFFF00FFFFFF00F9F9F900FFFFFF00575757000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC000000000000000000D8E9EC000000000000000000D8E9EC000000
      000000000000D8E9EC000000000000000000D8E9EC000000000000000000D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC000000000099A8AC00D8E9
      EC0099A8AC00D8E9EC0099A8AC000000000099A8AC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC0000000000D8E9
      EC00D8E9EC0000000000D8E9EC00D8E9EC0000000000D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000000000000000
      0000000000004F4F4F00FFFFFF00F9F9F900FFFFFF0056565600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC0000000000D8E9
      EC0000000000D8E9EC0000000000D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000000000000000
      00000000000055555500FFFFFF00FBFBFB0067676700D1D1D100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000000000000000
      00000000000067676700FFFFFF0061616100DBDBDB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000000000000000
      0000000000005555550053535300E4E4E4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000000000000000
      0000000000005E5E5E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9EC00D8E9
      EC00D8E9EC00D8E9EC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00E3E3E300CFCFCF00D0D0D000D0D0D000D0D0D000D0D0D000D0D0
      D000D0D0D000D0D0D000F9F9F900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00E3E3E300CFCFCF00D0D0D000D0D0D000D0D0D000D0D0D000D0D0
      D000D0D0D000D0D0D000F9F9F900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A4A4A400D4D4D400E4E4E400E0E0E000DADADA00D7D7D700D1D1D100CCCC
      CC00C8C8C800C3C3C3007E7E7E00F9F9F9000000000000000000000000000000
      0000DED6D6000000000000000000DED6D6000000000000000000AD949400B59C
      9C00B59C9C00B59C9C00B59C9C00B59C9C00B59C9C00B59C9C00B59C9C00B59C
      9C00B59C9C00B59C9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C00000000000C0C0C00000000000C0C0C0000000
      0000C0C0C00000000000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A4A4A400D4D4D400E4E4E400E0E0E000DADADA00D7D7D700D1D1D100CCCC
      CC00C8C8C800C3C3C3007E7E7E00F9F9F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400F1F0F100FAFAF500F9FAEC00F6F5E000F2EBD000ECDFC100E2D0
      B400D7BEA700D2B5A300C6C5C500CCCCCC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DECECE00FFF7
      F700F7F7F700F7EFEF00F7EFEF00F7EFEF00EFE7E700F7EFEF00EFE7E700EFDE
      DE00EFE7E700B59C9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0
      C000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400F1F0F100FAFAF500F9FAEC00F6F5E000F2EBD000ECDFC100E2D0
      B400D7BEA700D2B5A300C6C5C500CCCCCC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008B8B8B00DEDEDF00FDFCF700FAF8ED00F6EDD500EED8B400E9CA9700E1B8
      7300DFB34A00C78C2D00CBC9C800CECECE000000000000000000214A7B002152
      9400215A940021529400215A940021529400215A940021529400DECECE00FFFF
      FF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00EFE7E700EFE7E700EFE7
      E700EFDEDE00B59C9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      000000000000C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0
      C000FFFFFF00C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008B8B8B00DEDEDF00FDFCF700FAF8ED00F6EDD500EED8B400E9CA9700E1B8
      7300DFB34A00C78C2D00CBC9C800CECECE000000000000000000000000000000
      000000000000F0F0F000E2E2E100FDFDFD000000000000000000FDFDFD00E2E3
      E30090909000D5D6D400FCFAF900FBF4F100F4E0D900E9C6B600D2A39200B376
      63009F5340008E331D00D0CED000D0D0D00000000000214A7B00108CDE001094
      E700108CDE001094E7001094E700108CDE001094E7001094E700DECECE00DBE8
      EA00E3E3E300D7D7D700D3D3D300D2D2D200D0D0D000CFCFCF00CDCDCD00D4D4
      D400DEE8EA00B59C9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      000000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0
      C000FFFFFF00FFFFFF00FFFFFF000000000000000000F9FAFD009A9DD4005452
      B8008086CB00F5F5FA0000000000000000000000000000000000000000000000
      000090909000D5D6D400FCFAF900FBF4F100F4E0D900E9C6B600D2A39200B376
      63009F5340008E331D00D0CED000D0D0D000000000000000000000000000FAF9
      F900D1C8C800BE797900B2717300B3A8A600D1CFD100DFDEDF00B6818100AD6B
      6A0095959500C6C9C400BDCA9F00A1B277007F9F4A0073803D00B19C85007E8E
      4B00497C0E004F611A00D5D4D500D2D2D20000000000215A94001894E7001894
      E7001894E7001894E7001894E7001894E7001894E7001894E700DECECE00C8D5
      D700B8B8B800EBEAE900EBECE500E6E4D900E0DBCD00D7CEC000CDC0B600B4AD
      A900D3D3D300B59C9C0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      000000000000C0C0C000C0C0C000C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0
      C000FFFFFF00C0C0C000C0C0C000C0C0C000FDFDFD0017189D00192BC100083A
      F0000D26D3000B0B9D00F3F5FB00000000000000000000000000000000000000
      000095959500C6C9C400BDCA9F00A1B277007F9F4A0073803D00B19C85007E8E
      4B00497C0E004F611A00D5D4D500D2D2D2000000000000000000E3E1E000B988
      8800ECBDBE00FED3D200FEDADA00F7D1D1009D545400BA7B7B00C2848300FEF7
      F80099999900BABFB800A6CB8A0083BD5F006ABA410052B021003F7F0E005580
      28009A7E3C00A25A2700D8D8D800D4D4D40000000000215A9400219CEF001894
      E700219CEF00219CEF001894E700219CEF001894E700219CEF00DECECE00C5D2
      D500B2B2B200F4F3F000F9F7EA00F3E7CC00EBD4AB00E2BF8500D7AB5A00C9B0
      8D00CCCCCC00B59C9C00000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000008585CA002E42C500144DFE000F48
      FD000E46FC000D36EC00090E9700E5E7F500000000000000000000000000FEFE
      FE0099999900BABFB800A6CB8A0083BD5F006ABA410052B021003F7F0E005580
      28009A7E3C00A25A2700D8D8D800D4D4D40000000000CEB7B500CD989800FDE5
      E400FEDEDD00FCD3D400FDD5D500FDE0E000D69C9C009E4E4F00D9A8A800FDEF
      F0009E9E9E00B9B8A900F6F0C500E4E29700EDEDA900E4E28D00DECF8A00D9AE
      9500D29E6B00BA765200DEDDDE00E1E1E100000000002963940029A5EF0029A5
      EF00219CEF0029A5EF0029A5EF0029A5EF0029A5EF0029A5EF00DECECE00BCD1
      D600AEAFAE00E4E5DC00E3E1CF00D2C5AA00CAA89200A97F610086532C00AA8C
      7D00D0D0D000B59C9C00000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF0000008000C0C0C000FFFFFF00C0C0C000C0C0C000FFFFFF00C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0003F3EAD00668EFE00134EFD00134B
      FE001248FF000E45FF000A3CEF0005059700F1F1F30000000000FEFEFE005F5D
      BF009E9E9E00B9B8A900F6F0C500E4E29700EDEDA900E4E28D00DECF8A00D9AE
      9500D29E6B00BA765200DEDDDE00E1E1E100FEFEFD00DCB2B200FDEEEF00FEE9
      E900FDE1E100FED7D700FDD7D700FEF0F100F7DFDE00BE8181009F595B008131
      3000A3A3A300B2A49C00FCA35900FDA35700FEA45700FAA45900F8C58700FBE1
      B000FDA85C00FCAE6800E1E3E300E5E5E500000000002963940039B5EF0031AD
      EF0031ADEF0029A5EF0029A5EF0031ADEF0029A5EF0029A5EF00DECECE00C5D2
      D500A9ABA900B5C8A1008FB768006DA43C006F913F006C873A0073732300AA9E
      8200D3D3D300B59C9C00000000000000000000000000000000000000FF000000
      FF0000008000000080000000800000008000000080000000FF000000FF000000
      800000000000C0C0C000FFFFFF00FFFFFF00FFFFFF00C0C0C000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000005F5BC3005C7AE8001A56FD00184F
      FE00144CFF001248FF001045FD000B37EF000B0B9E00E9EDF5006B67BF00010B
      AA00A3A3A300B2A49C00FCA35900FDA35700FEA45700FAA45900F8C58700FBE1
      B000FDA85C00FCAE6800E1E3E300E5E5E500FBFBFB00ECCFCE00FEF0F100FEEE
      ED00FEE4E400FCDBDA00FDF0F000FEFEFE00FCF8F800EEDFDE00FDF9F800F8DD
      DF00A8A8A800AC9D9600F4936200F5936200F4976800F49B6D00F4AB7D00F3EC
      D900F2DCBC00F4BD9500E7E8E900E7E7E700000000003163940042C6EF0039B5
      EF0031ADEF0039B5EF0039B5EF0039B5EF0039B5EF0039B5EF00DECECE00C5D2
      D500A9AAA400D5D8B300CDDB8D00C7DC8300B9C56D00B8A57500BF895700C9A9
      9700DDDDDD00B59C9C00000000000000000000000000000000000000FF000000
      FF0000008000000000000000000000000000000000000000FF00000080000000
      000000000000000080000000FF0000008000000080000000FF00000080000000
      800000008000000080000000FF0080008000EAEEF80005079A005677F5001B53
      FE001950FE00144CFE001249F8000E44FC000A39EF0002019A00020EAF000233
      FD00A8A8A800AC9D9600F4936200F5936200F4976800F49B6D00F4AB7D00F3EC
      D900F2DCBC00F4BD9500E7E8E900E7E7E700F9FAFA00F2E1E000FDF5F600FEF0
      F000FDE7E600FDE2E300FDFCFB00FEFDFD00E5CBCC00FEFEFD00FEFEFE00FEFE
      FE00ACACAC00F3F3F300E8E8E800E9E8E800E9E8E800E8E8E800E9E9E900E8E8
      E800E4E4E400E1E1E100DBDBDB00F0F0F00000000000316394004ACEF70042C6
      EF0042C6EF0039B5EF0039B5EF0039B5EF0039B5EF0039B5EF00DECECE00C5D2
      D500A9A39F00E3A06E00FB9F5A00FAA15C00F7B37500F8DAAC00FAB37300EDCC
      B000E4E5E500B59C9C00000000000000000000000000000000000000FF000000
      FF00000080000000000000000000000000000000FF0000008000000000000000
      0000000000000000FF0000008000000080000000FF00000080000000FF000000
      80000000FF0000008000000080008000800000000000AFAEE00003089700567B
      FE001552F9001B50FC00144CFF001249FE000F45FE00133BEE000E40FC00073B
      FE00ACACAC00F3F3F300E8E8E800E9E8E800E9E8E800E8E8E800E9E9E900E8E8
      E800E4E4E400E1E1E100DBDBDB00F0F0F000F7F5F500FEFBFA00FEF9FA00FEF3
      F300FEE9EA00FEF4F400FEF7F700F9EBEA00F5EAEA00FEFEFE00FEFEFE00FEFE
      FE00FBFBFB00A8A8A800A9A9A900A9A9A900A9A9A900A9A9A900A9A9A900A9A9
      A900A9A9A900A8A8A800C3C3C300FEFEFE0000000000316B940052D6F70052D6
      F70052D6F7004AC6F70042C6EF0042BDF70039B5EF0042BDF700DECECE00C5D2
      D500BBB7B600E4C0AE00EEBDA500EEC0A800EEC6AF00EDE4D800EADAC900E5D8
      CF00E9E9E900B59C9C00000000000000000000000000000000000000FF000000
      FF00000080000000000000000000000000000000800000000000000000000000
      00000000000000008000000080000000FF000000800000008000000080000000
      8000000080000000800000008000800080000000000000000000BEBAE7000607
      9F005378F8001956FC00164FFE00144DFE001248FE001045FE000C3EFD00073E
      FE003E68FA00A8A8A800A9A9A900A9A9A900A9A9A900A9A9A900A9A9A900A9A9
      A900A9A9A900A8A8A800C3C3C300FEFEFE00E7DCDC00FEFEFE00FEFDFD00FDF4
      F200FEECED00FDEEEF00F6E4E400F5E7E700FDF9F800FCFAFB00FEFDFD00FEFE
      FE00FEFEFE00FCFEFE00FDFDFC00ECD8D800FDFDFE00B48C8C00000000000000
      00000000000000000000000000000000000000000000316B940063DEF7005ADE
      F70063DEF7005ADEF70063DEF7005ADEF70063DEF7005ADEF700DECECE00C5D2
      D500AFD1D200B9B9B900B8B8B800B8B8B800B8B8B800B8B8B800B7B7B700C0C0
      C000EFEFEF00B59C9C00000000000000000000000000000000000000FF000000
      FF00000080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5B6
      E30006079B005579F8001C53FF001950FF00164BFE001149FE000F48FE001042
      FE000E3CFE00053FFE00051FD2002F2CA700FEFEFE0000000000000000000000
      000000000000000000000000000000000000DFC9C800FDFBFC00FEE8E900FEE6
      E600FCE7E800F5D8D600E8DBD30094AC7100FEF3F300FCF6F700FDF9FA00FDFC
      FC00FEFEFE00FDFEFD00EBD5D800FCFEFD00EAD5D300D4D4D300000000000000
      0000000000000000000000000000000000000000000031739C0063DEF70063DE
      F70063DEF70063DEF70063DEF70063DEF70063DEF70063DEF700DECECE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7F700F7EFEF00EFE7E700B59C9C00B59C
      9C00B59C9C00AD949400000000000000000000000000000000000000FF000000
      FF00000080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BAB9E30005099B00245BFB001B54FC001851FE00144CFF001249FE000F45
      FE000842FD00071ECE002729A500FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000FCFAFA00C5939500D29C9B00D5A2
      A300AD666600D0A3A300F8DFDF00EDDBDA00B1D0EB00FEF2F000FDF4F400FEF8
      F800FEFAFB00F6EEF000FEFEFE00F8F5F500BC8B8C00FEFEFE00000000000000
      00000000000000000000000000000000000000000000397BA50063DEF70063DE
      F70063DEF70063DEF70063DEF70063DEF70063DEF7006BE7FF00DECECE00FFFF
      FF00FFFFFF00FFFFFF00FFF7F700FFF7F700F7EFEF00EFE7E700DECECE00DECE
      CE00AD9C9C0000000000000000000000000000000000000000000000FF000000
      FF00000080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00575FBB000915AB00215AFD001F59FE001A53FE001850FE00154DFE001248
      FE001246FD000A3CF10002039400ECEAF7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E0D1D100E4CC
      CB00FAF6F500EBD9D900B37271009A504E00CE9D9C00FCE8EA00FCEFEF00FCF2
      F200FDF6F500FEF8F900F9F6F600B4787A00F6F5F40000000000000000000000
      000000000000000000000000000000000000000000003984B50073EFFF0073EF
      FF0073EFFF0073EFFF0073EFFF0073EFFF0073EFFF0073EFFF00DECECE00FFFF
      FF00FFFFFF00FFFFFF00FFF7F700F7F7F700EFE7E700F7EFEF00DECECE00AD9C
      9C0000000000000000000000000000000000000000008080800080808000C0C0
      C000808080008080800080808000808080008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFFFE006966
      BC000A0FA4002363FB00225DFF00205AFE001F58FE001B53FE001950FF00144C
      FE001649FD000F44FD000D38F1000F0F9C00E7F0F80000000000000000000000
      0000000000000000000000000000000000000000000000000000BE8B8B00E2C9
      C900FEFDFE00FEFEFD00FCFEFD00FBFEFD00F2E4E500B5727400DDB1B100FEEE
      EF00F7E5E500D0A3A500CBAAA900FEFEFE000000000000000000000000000000
      00000000000000000000000000000000000000000000398CBD007BEFFF007BEF
      FF007BEFFF007BEFFF007BEFFF007BEFFF007BEFFF0073EFFF00DECECE00DECE
      CE00DECECE00DECECE00DECECE00DECECE00DECECE00DECECE00AD9C9C000000
      0000000000000000000000000000000000000000000080808000FFFFFF00C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFFFE006664C6000B18
      B0002B6BFD002E66FD002B61FD002060FD00235AFE001D58FA001C54FC001750
      FE00164EFD00134AFE001046FF000B38EF0008099C00E6E6F400000000000000
      00000000000000000000000000000000000000000000FBFAFA00D3ACAC00FBF8
      F900FEFEFE00FEFEFE00FEFEFE00FCFDFE00FDFCFC00EBDDDD00BA919100CAA2
      A200DECACA00FDFCFC0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004294C60084F7FF0084F7
      FF007BC6CE008484840084848400848484008484840084848400848484008484
      8400848484007BC6CE0084F7FF007BEFFF00398CBD0000000000000000000000
      0000DED6D60000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000FFFF0000FF00000080808000C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006663BD00020DA6003071
      FC00276EFE002C67FD002866FE002863FE002361FE001637CF00517BFA001B59
      FC001751FC00154DFF001249FE000F44FE000738EA000D099F00F3F6FA000000
      00000000000000000000000000000000000000000000D9C5C300E5C7C700FEFB
      FB00FEFCFC00FEFEFE00FEFEFE00FEFDFD00EAD7D600C3929200EBEBEB000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003994CE008CFFFF008CFF
      FF0084848400CEBDBD00D6C6C600D6C6C600CEBDBD00D6C6C600CEBDBD00D6C6
      C600CEBDBD008484840084F7FF0084F7FF003994CE0000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000808080008080
      800080800000808080008080800080800000C0C0C00080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BCBCE8001E1FA7003776FA003A74
      FD003470FD002E6CFD002D69FE002765FE001736CB002624A60009089D005678
      F9001C52FE001A51FE00174DFE001249FC001246FC000736EE001514A400FDFD
      FE000000000000000000000000000000000000000000B87A7B00EEDADB00FEF9
      F900FEFAFA00FEFCFC00FDFDFD00FCFEFD00EDDEDF00AE767600FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000529CD60063C6EF008CE7
      F70084848C00D6C6C600E7DEDE00E7DEDE00EFE7E700E7DEDE00EFE7E700E7DE
      DE00D6C6C60084848C008CE7F70063C6EF004294C6000000000000000000DED6
      D6000000000000000000000000000000000000000000C0C0C00080808000C0C0
      C000FFFF000080808000FFFF000080808000C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004E50B800ADC1F900317EFE003776
      FD003174FF003172FA002970F7001739CE00312FAB00FDFDFD00B9B8E2000507
      9D005479F4001952FE001B54FB00114BFE001449FE000E48FE000407AC00D4D3
      E90000000000000000000000000000000000F7F6F600DEB2B500F9EDED00FEF6
      F700FEF7F800FEFAFA00FEFBFB00FAF3F400EEDDDD00CDC3C200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008CC6EF00529C
      D6008494AD00A58C8C00FFFFFF00F7F7F700F7EFEF00F7F7F700F7F7F700EFE7
      E700A58C8C008494AD0063ADE7008CC6EF000000000000000000000000000000
      000000000000DED6D600000000000000000000000000C0C0C000808000008080
      800080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004E49B600C3D0FB00568CFC00387E
      FA003A79FE003875FB00183CCB002E27A900FEFEFE000000000000000000B8B7
      E1000606A000567DF9001C57FE001950FB00144CFE000C48F900060EAA00CECF
      E90000000000000000000000000000000000D5B2B200E7BFBE00E0B8BA00EBD4
      D300FBF0F100FEF7F800FDF8F900EFDCDC00C58E8E00F7F6F600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DED6D600BDADAD00AD949400FFFFFF00FFFFFF00FFFFFF00FFFFFF00AD94
      9400BDADAD000000000000000000DED6D600000000000000000000000000DED6
      D6000000000000000000000000000000000000000000C0C0C00080808000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B3B9E1002D2FAE00CADDFE006797
      FB00508BFD002342CE003330B100FEFEFE000000000000000000000000000000
      0000C0BDE50002059E00597CF4002E62FE002B5AFA00355DED00140F9A00FCFE
      FB0000000000000000000000000000000000FEFEFE00FBF9F900E1CECE00CA9D
      9D00C38D8D00CA969500D3A5A500E2C2C100C5ACAB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CEBDBD00BDA5A500BDA5A500BDA5A500BDA5A500CEBD
      BD00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008080800080808000C0C0
      C00080808000C0C0C00080808000808080008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFEFE005B54BE001719AA00585D
      C9002529AD002B27A400FEFEFE00000000000000000000000000000000000000
      000000000000B1B5E00004049D002833BB00202CB60007059D00CFD9F0000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00F5F0EF00CBA2A300FDFDFD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00F2F4F900B5B3
      DF00E2E6F200FEFEFE0000000000000000000000000000000000000000000000
      00000000000000000000FCFEFE00C1BFE100C3C4E700FBFEFC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00E3E3E300CFCFCF00D0D0D000D0D0D000D0D0D000D0D0D000D0D0
      D000D0D0D000D0D0D000F9F9F9000000000000000000C6C6C600C6C6C6009494
      94009494940094949400949494009494940094949400949494008C8C8C008C8C
      8C00949494008C8C8C008C8C8C00949494008C8C8C008C8C8C00949494008C8C
      8C008C8C8C00CECECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00E3E3E300CFCFCF00D0D0D000D0D0D000D0D0D000D0D0D000D0D0
      D000D0D0D000D0D0D000F9F9F900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00E3E3E300CFCFCF00D0D0D000D0D0D000D0D0D000D0D0D000D0D0
      D000D0D0D000D0D0D000F9F9F900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A4A4A400D4D4D400E4E4E400E0E0E000DADADA00D7D7D700D1D1D100CCCC
      CC00C8C8C800C3C3C3007E7E7E00F9F9F90000000000C6C6C600C6C6C6009494
      94009494940094949400949494009494940094949400949494008C8C8C008C8C
      8C00949494008C8C8C008C8C8C00949494008C8C8C008C8C8C00949494008C8C
      8C008C8C8C00CECECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A4A4A400D4D4D400E4E4E400E0E0E000DADADA00D7D7D700D1D1D100CCCC
      CC00C8C8C800C3C3C3007E7E7E00F9F9F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A4A4A400D4D4D400E4E4E400E0E0E000DADADA00D7D7D700D1D1D100CCCC
      CC00C8C8C800C3C3C3007E7E7E00F9F9F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400F1F0F100FAFAF500F9FAEC00F6F5E000F2EBD000ECDFC100E2D0
      B400D7BEA700D2B5A300C6C5C500CCCCCC0000000000A5A5A500A5A5A500E7E7
      E700DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00D6D6D600D6DED600D6DED600A5D6A500CECE
      CE00CECECE009494940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400F1F0F100FAFAF500F9FAEC00F6F5E000F2EBD000ECDFC100E2D0
      B400D7BEA700D2B5A300C6C5C500CCCCCC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084848400F1F0F100FAFAF500F9FAEC00F6F5E000F2EBD000ECDFC100E2D0
      B400D7BEA700D2B5A300C6C5C500CCCCCC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008B8B8B00DEDEDF00FDFCF700FAF8ED00F6EDD500EED8B400E9CA9700E1B8
      7300DFB34A00C78C2D00CBC9C800CECECE0000000000B5B5B500B5B5B500E7E7
      E700E7E7E700E7E7E700DEDEDE00E7E7EF00E7E7EF00F7F7F700000000000000
      000000000000F7F7F700F7F7F700E7E7E700D6DED600D6DED6006BCE6B00BDDE
      BD00BDDEBD009C9C9C0000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FEFEFE00FEFEFE00FFFFFF00FEFEFE00FEFE
      FE008B8B8B00DEDEDF00FDFCF700FAF8ED00F6EDD500EED8B400E9CA9700E1B8
      7300DFB34A00C78C2D00CBC9C800CECECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008B8B8B00DEDEDF00FDFCF700FAF8ED00F6EDD500EED8B400E9CA9700E1B8
      7300DFB34A00C78C2D00CBC9C800CECECE00000000000000000000000000199C
      D30011A1CC001FA5D00069C4DF00000000000000000000000000000000000000
      000090909000D5D6D400FCFAF900FBF4F100F4E0D900E9C6B600D2A39200B376
      63009F5340008E331D00D0CED000D0D0D00000000000B5B5B500B5B5B500E7E7
      E700E7E7E700E7E7E700DEDEDE00E7E7EF00E7E7EF00F7F7F700000000000000
      000000000000F7F7F700F7F7F700E7E7E700D6DED600D6DED6006BCE6B00BDDE
      BD00BDDEBD009C9C9C0000000000000000000000000000000000000000000000
      0000FEFEFE009C9C9C004D4D4D004B4B4B004E4E4E004E4E4E004D4D4D004E4E
      4E0090909000D5D6D400FCFAF900FBF4F100F4E0D900E9C6B600D2A39200B376
      63009F5340008E331D00D0CED000D0D0D0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000090909000D5D6D400FCFAF900FBF4F100F4E0D900E9C6B600D2A39200B376
      63009F5340008E331D00D0CED000D0D0D000000000000000000000000000069A
      CC00B4E3F5002EBEF30036BEF40027B8E80016AEDF0012A2D60053B9DD009FD9
      EA0095959500C6C9C400BDCA9F00A1B277007F9F4A0073803D00B19C85007E8E
      4B00497C0E004F611A00D5D4D500D2D2D20000000000BDBDBD00BDBDBD00F7F7
      F700E7D6CE00E7D6CE00E7D6CE00E7DED600E7DED600E7DED600E7DED600E7DE
      D600E7DED600E7DED600E7DED600E7D6CE00E7D6CE00E7D6CE00EFDEDE000000
      0000000000009C9C9C000000000000000000000000000000000000000000FEFE
      FE0096969600696969008C8C8C00FAFAFA00EBEBEB00E8E8E800F2F2F200EDED
      ED0095959500C6C9C400BDCA9F00A1B277007F9F4A0073803D00B19C85007E8E
      4B00497C0E004F611A00D5D4D500D2D2D2000000000000000000000000000000
      000000000000000000000000000000000000898989005D5D5D00696969006D6D
      6D0095959500C6C9C400BDCA9F00A1B277007F9F4A0073803D00B19C85007E8E
      4B00497C0E004F611A00D5D4D500D2D2D20000000000000000000000000011A8
      DB00BDE2F40037C8F8003ECBFC0043CFFB0049D0FB004FD4FD0057D8FB004ED2
      F20099999900BABFB800A6CB8A0083BD5F006ABA410052B021003F7F0E005580
      28009A7E3C00A25A2700D8D8D800D4D4D40000000000BDBDC600BDBDC600F7D6
      C600E7BD8C00E7BD8C00F7D6A500F7DEAD00F7DEAD00FFE7C600FFEFCE00FFEF
      CE00FFE7CE00FFE7BD00FFE7BD00F7DEAD00EFCE9C00EFCE9C00E7BD8C00F7E7
      E700F7E7E700A5A5A50000000000000000000000000000000000000000009393
      9300737373009F9F9F0090909000D5D5D500939393008F8F8F00D6D6D600EDED
      ED0099999900BABFB800A6CB8A0083BD5F006ABA410052B021003F7F0E005580
      28009A7E3C00A25A2700D8D8D800D4D4D4000000000000000000000000000000
      0000000000000000000000000000858585008B8B8B009E9E9E00A4A4A4009D9D
      9D0099999900BABFB800A6CB8A0083BD5F006ABA410052B021003F7F0E005580
      28009A7E3C00A25A2700D8D8D800D4D4D4000000000000000000D6EEF30028B2
      E6003CACD90061D5FA004BD0FD0049D3FE0050D7FE0059D9FE005DDEFE0064E1
      FE009E9E9E00B9B8A900F6F0C500E4E29700EDEDA900E4E28D00DECF8A00D9AE
      9500D29E6B00BA765200DEDDDE00E1E1E10000000000BDBDC600BDBDC600F7D6
      C600E7BD8C00E7BD8C00F7D6A500F7DEAD00F7DEAD00FFE7C600FFEFCE00FFEF
      CE00FFE7CE00FFE7BD00FFE7BD00F7DEAD00EFCE9C00EFCE9C00E7BD8C00F7E7
      E700F7E7E700A5A5A50000000000000000000000000000000000000000005555
      5500AAAAAA00A0A0A00090909000D5D5D5009797970093939300D6D6D600ECEC
      EC009E9E9E00B9B8A900F6F0C500E4E29700EDEDA900E4E28D00DECF8A00D9AE
      9500D29E6B00BA765200DEDDDE00E1E1E1000000000000000000000000000000
      000000000000000000000000000093939300A0A0A000A0A0A000939393008686
      86009E9E9E00B9B8A900F6F0C500E4E29700EDEDA900E4E28D00DECF8A00D9AE
      9500D29E6B00BA765200DEDDDE00E1E1E1000000000000000000D7EFF6003ABD
      EC0025ADDD00ABEBFD004ED4FE0054D8FF005BDBFF0062DFFF0066E3FF006DE6
      FE00A3A3A300B2A49C00FCA35900FDA35700FEA45700FAA45900F8C58700FBE1
      B000FDA85C00FCAE6800E1E3E300E5E5E50000000000BDBDBD00BDBDBD00F7D6
      C600EFC68C00EFC68C00FFDEB500FFEFC600FFEFC600FFEFCE00FFEFC600FFEF
      C600FFEFBD00FFE7B500FFE7B500F7DEAD00F7CE9400F7CE9400E7BD8C00D6CE
      CE00D6CECE00C6C6C60000000000000000000000000000000000000000005757
      5700ADADAD00A3A3A30093939300D4D4D4009999990096969600D7D7D700EEEE
      EE00A3A3A300B2A49C00FCA35900FDA35700FEA45700FAA45900F8C58700FBE1
      B000FDA85C00FCAE6800E1E3E300E5E5E5000000000000000000000000000000
      0000000000000000000000000000A3A3A300A4A4A400A0A0A000959595008989
      8900A3A3A300B2A49C00FCA35900FDA35700FEA45700FAA45900F8C58700FBE1
      B000FDA85C00FCAE6800E1E3E300E5E5E5000000000000000000C9EAF10049C4
      F00038C3F500B5DFF00056DDFC005FDDFE0065E1FE006BE4FE0071E8FE0077EB
      FE00A8A8A800AC9D9600F4936200F5936200F4976800F49B6D00F4AB7D00F3EC
      D900F2DCBC00F4BD9500E7E8E900E7E7E70000000000CECECE00CECECE00E7D6
      CE00EFC69C00EFC69C00FFE7C600FFE7C600FFE7C600FFE7CE00FFEFCE00FFEF
      CE00F7DEAD00F7D6A500F7D6A500F7CE9400EFC68C00EFC68C00EFC69C00BDBD
      BD00BDBDBD00EFEFEF0000000000000000000000000000000000000000005555
      5500B1B1B100A6A6A60096969600D4D4D4008383830080808000D6D6D600EDED
      ED00A8A8A800AC9D9600F4936200F5936200F4976800F49B6D00F4AB7D00F3EC
      D900F2DCBC00F4BD9500E7E8E900E7E7E7000000000000000000000000000000
      0000000000000000000000000000A3A3A300A9A9A900A2A2A200BFBFBF00B9B9
      B900A8A8A800AC9D9600F4936200F5936200F4976800F49B6D00F4AB7D00F3EC
      D900F2DCBC00F4BD9500E7E8E900E7E7E7000000000000000000BEE6ED005DCE
      F6004ACEFD0052BADD006CE1FD0067E3FF006EE6FF0073EAFE0079EDFF007FF1
      FF00ACACAC00F3F3F300E8E8E800E9E8E800E9E8E800E8E8E800E9E9E900E8E8
      E800E4E4E400E1E1E100DBDBDB00F0F0F00000000000CECECE00CECECE00E7D6
      CE00EFC69C00EFC69C00FFE7C600FFE7C600FFE7C600FFE7CE00FFEFCE00FFEF
      CE00F7DEAD00F7D6A500F7D6A500F7CE9400EFC68C00EFC68C00EFC69C00BDBD
      BD00BDBDBD00EFEFEF0000000000000000000000000000000000000000005555
      5500B4B4B400AAAAAA009A9A9A00FDFDFD00FEFEFE00FCFCFC00F2F2F200EEEE
      EE00ACACAC00F3F3F300E8E8E800E9E8E800E9E8E800E8E8E800E9E9E900E8E8
      E800E4E4E400E1E1E100DBDBDB00F0F0F0000000000000000000000000000000
      0000000000000000000000000000A4A4A400AEAEAE0097979700767676007575
      7500ACACAC00F3F3F300E8E8E800E9E8E800E9E8E800E8E8E800E9E9E900E8E8
      E800E4E4E400E1E1E100DBDBDB00F0F0F0000000000000000000B9E5F00063D0
      F6004FD4FF001CAEDC00C4F9FD0070EAFA0085EDFD007DEFFC007FF3FD0088F5
      FE00A5F7FB00A8A8A800A9A9A900A9A9A900A9A9A900A9A9A900A9A9A900A9A9
      A900A9A9A900A8A8A800C3C3C300FEFEFE0000000000EFEFEF00EFEFEF00CECE
      CE00E7BD9C00E7BD9C00FFE7C600FFE7C600FFE7C600FFE7CE00FFE7CE00FFE7
      CE00FFE7C600F7D6B500F7D6B500F7D6A500E7BD8C00E7BD8C00EFCEB500ADAD
      AD00ADADAD000000000000000000000000000000000000000000000000005555
      5500B7B7B700ADADAD00A9A9A900727272007272720070707000707070006E6E
      6E008C8C8C00A8A8A800A9A9A900A9A9A900A9A9A900A9A9A900A9A9A900A9A9
      A900A9A9A900A8A8A800C3C3C300FEFEFE000000000000000000838383006767
      6700646464006868680064646400A5A5A5008D8D8D00E5E5E500E4E4E400DEDE
      DE00DEDEDE00A8A8A800A9A9A900A9A9A900A9A9A900A9A9A900A9A9A900A9A9
      A900A9A9A900A8A8A800C3C3C300FEFEFE000000000000000000B0DFEE007FD8
      F90059D6FB0042CEF200D5F3FB0076EDF70080F1FD0087F4FE008EF7FE0090FB
      FD0091FBFE0093FBFE0095FCFF0096FDFF009AFEFF0076E5F500BEFDFF0093EA
      F500B4E2EE00000000000000000000000000000000000000000000000000BDBD
      BD00EFCEB500EFCEB500F7D6B500FFE7C600FFE7C600FFE7C600FFE7CE00FFE7
      CE00FFE7C600FFE7C600FFE7C600FFE7CE00E7BD9C00E7BD9C00E7D6CE00ADAD
      AD00ADADAD000000000000000000000000000000000000000000000000005757
      5700BABABA007A7A7A00BFBFBF00BEBEBE00BEBEBE00BBBBBB00B8B8B800B5B5
      B500B0B0B000ACACAC00AAAAAA00A6A6A600A3A3A3005B5B5B008B8B8B004E4E
      4E00FEFEFE0000000000000000000000000000000000666666008E8E8E00BABA
      BA00BEBEBE00B8B8B800DCDCDC00A6A6A6008B8B8B00FDFDFD00FDFDFD00F7F7
      F700EFEFEF00E8E8E800E0E0E000D8D8D800D2D2D2007A7A7A005B5B5B000000
      0000000000000000000000000000000000000000000000000000ACDBEF0084E2
      F8005DDFFC0064E1FE002AA8D00094D4F000D3ECF600D6F3F900C0F5FB00AFFE
      FB0099FDFD0096FDFF0098FEFF0099FFFE0094FDFF0074E0F000B7FDFE00BCFC
      F9003DB7DA00000000000000000000000000000000000000000000000000BDBD
      BD00EFCEB500EFCEB500F7D6B500FFE7C600FFE7C600FFE7C600FFE7CE00FFE7
      CE00FFE7C600FFE7C600FFE7C600FFE7CE00E7BD9C00E7BD9C00E7D6CE00ADAD
      AD00ADADAD000000000000000000000000000000000000000000000000005555
      5500BABABA006C6C6C00FEFEFE00FDFDFD00FBFBFB00F7F7F700F2F2F200ECEC
      EC00E7E7E700E1E1E100DBDBDB00D7D7D700D2D2D200747474008B8B8B004E4E
      4E00FEFEFE00000000000000000000000000B0B0B000ACACAC009F9F9F00AAAA
      AA009696960073737300DCDCDC00A7A7A70090909000FEFEFE00FDFDFD00F7F7
      F700EFEFEF00E9E9E900E1E1E100D8D8D800CFCFCF007D7D7D005A5A5A000000
      000000000000000000000000000000000000000000000000000083CDE70092E5
      FC005FE1FB0070E4FE006CE9FE0074E9FD0064DEF40058D5ED0048CAE60041B5
      DA00E0F8FC0099FEFD0097FEFC0099FEFF0097FEFF0068E5F500C0FEFC00C1FE
      FC006CD5E900000000000000000000000000000000000000000000000000C6C6
      C600E7DED600E7DED600E7C6AD00E7C6B500E7C6B500E7CEB500E7CEBD00E7CE
      BD00E7CEB500E7CEBD00E7CEBD00E7CEB500E7C6AD00E7C6AD00CECECE00CECE
      CE00CECECE000000000000000000000000000000000000000000000000005555
      5500BFBFBF006D6D6D00FFFFFF00FFFFFF00FDFDFD00F7F7F700F2F2F200EDED
      ED00E8E8E800E2E2E200DCDCDC00D7D7D700D2D2D200727272008C8C8C004D4D
      4D00FFFFFF00000000000000000000000000A6A6A600C1C1C100A5A5A500AAAA
      AA009898980075757500DCDCDC00A9A9A9008F8F8F00FDFDFD00FEFEFE00F7F7
      F700EEEEEE00E9E9E900E1E1E100D8D8D800D2D2D200808080005C5C5C000000
      000000000000000000000000000000000000000000000000000086CDE9009DEB
      FF0069E6FD0076E8FF0075ECFF007DEFFF0087F4FD008EF9FD008FF6FE0090FB
      F90035BCD9003DB6DC0074CDE700BAE5ED00DCF6F700C0EEFA00D0FBFD00C9F9
      FB00BBFCFB0043B7DD000000000000000000000000000000000000000000D6D6
      D600BDBDBD00BDBDBD00B5B5B500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500CECECE00CECECE00949494000000
      0000000000000000000000000000000000000000000000000000000000005555
      5500C1C1C1006D6D6D00FFFFFF00FFFFFF00FEFEFE00F7F7F700F2F2F200EDED
      ED00E8E8E800E2E2E200DCDCDC00D7D7D700D2D2D200737373008F8F8F004D4D
      4D00FFFFFF00000000000000000000000000A6A6A600C6C6C600A5A5A500B5B5
      B5009D9D9D0091919100DBDBDB00ABABAB0093939300FEFEFE00FEFEFE00F7F7
      F700EFEFEF00E9E9E900E1E1E100D8D8D800CFCFCF00838383005A5A5A000000
      000000000000000000000000000000000000000000000000000063C2DD009FEE
      FE0075EAFE007BEDFE0080F1FE0085F3FE0089F7FF008CFAFE0097FAFD0098FD
      FE0098FDFD009EFEFF0099FEFF008DF7FD0075E5F40022A9D90074C7E20052B6
      DF0051B8D90048B4D7000000000000000000000000000000000000000000D6D6
      D600BDBDBD00BDBDBD00B5B5B500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500CECECE00CECECE00949494000000
      0000000000000000000000000000000000000000000000000000000000005555
      5500C4C4C4006E6E6E00FFFFFF00FFFFFF00FDFDFD00F7F7F700F2F2F200EDED
      ED00E7E7E700E2E2E200DCDCDC00D6D6D600D2D2D20074747400949494004E4E
      4E00FEFEFE00000000000000000000000000A6A6A600C8C8C800ADADAD008080
      80008E8E8E008D8D8D00838383006E6E6E00A5A5A500D4D4D400D4D4D400D1D1
      D100CCCCCC00CACACA00C6C6C600C2C2C200BFBFBF00A6A6A6005A5A5A000000
      000000000000000000000000000000000000000000000000000064C5DC009DF1
      FD007AEFFE0082F2FD0087F5FE008CF7F9008DF7FD0097FEFB009DFDFD009AFE
      FE0098FFFE0098FEFC0095FCFB0093FDFD0096FCFE0035B9DD00000000000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      AD00CECECE00CECECE008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C008C8C8C008C8C8C00A5A5A500A5A5A500BDBDBD00C6C6
      C600C6C6C6000000000000000000000000000000000000000000000000005454
      5400C8C8C80070707000FFFFFF00FFFFFF00FEFEFE00F7F7F700F2F2F200EDED
      ED00E7E7E700E1E1E100DDDDDD00D7D7D700D2D2D20072727200959595004D4D
      4D00FEFEFE00000000000000000000000000A6A6A600CDCDCD0092929200BCBC
      BC00BBBBBB00B7B7B700B2B2B200A6A6A600A1A1A1009B9B9B00919191007676
      760060606000CACACA00CACACA00CACACA00C9C9C900D4D4D400000000000000
      00000000000000000000000000000000000000000000000000005EC1E0009EF3
      FE0087F0FF008EF7FF008DFAFE0096FBFC005ADBEA004CBAE10066C6E1008ED5
      EA00A7E0F000B2EDF200C4F8FC00C5FFFD00B7FEF8003FBAE200000000000000
      00000000000000000000000000000000000000000000EFEFEF00EFEFEF00BDBD
      BD00B5B5B500B5B5B5009C9C9C009C9C9C009C9C9C00A5A5A5009C9C9C009C9C
      9C009C9C9C00A5A5A500A5A5A5009C9C9C009C9C9C009C9C9C00CECECE009494
      9400949494000000000000000000000000000000000000000000000000005656
      5600CCCCCC0072727200FFFFFF00FFFFFF00FEFEFE00F8F8F800F3F3F300EDED
      ED00E7E7E700E2E2E200DCDCDC00D7D7D700D2D2D200747474009A9A9A004E4E
      4E00FEFEFE00000000000000000000000000A6A6A600CECECE00CBCBCB00FEFE
      FE00FCFCFC00F6F6F600EEEEEE00E6E6E600DFDFDF00D9D9D900CBCBCB008686
      8600676767000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005CBCE0008BD3
      E900B6EAF500D1FDFD00C4FAFD00B0FCFC0048B6E10000000000000000000000
      0000D4EEF400C5E8F300A5D9E80067C2DF0046B9DE004FB9DE00000000000000
      00000000000000000000000000000000000000000000EFEFEF00EFEFEF00BDBD
      BD00B5B5B500B5B5B5009C9C9C009C9C9C009C9C9C00A5A5A5009C9C9C009C9C
      9C009C9C9C00A5A5A500A5A5A5009C9C9C009C9C9C009C9C9C00CECECE009494
      9400949494000000000000000000000000000000000000000000000000005757
      5700D9D9D90080808000FFFFFF00FFFFFF00FEFEFE00F8F8F800F3F3F300EEEE
      EE00E9E9E900E4E4E400DEDEDE00DADADA00D6D6D6007E7E7E00A7A7A7004E4E
      4E00FEFEFE00000000000000000000000000A6A6A600D2D2D200CCCCCC00FDFD
      FD00FCFCFC00F6F6F600EDEDED00E4E4E400DFDFDF00D8D8D800CACACA008888
      8800666666000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C5E7F1009ED8EC0076CBE3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00BDBDBD00F7F7
      F700ADADAD00ADADAD00A5A5A500ADADAD00ADADAD00A5A5A500A5A5A500A5A5
      A500A5A5A500ADADAD00ADADAD00A5A5A500A5A5A500A5A5A500D6D6D600B5B5
      B500B5B5B500E7E7E7000000000000000000000000000000000000000000B3B3
      B300525252005252520052525200525252005252520051515100515151005151
      5100515151005151510051515100515151005151510052525200545454008C8C
      8C0000000000000000000000000000000000A6A6A600D5D5D500CDCDCD00FDFD
      FD00FCFCFC00F6F6F600EDEDED00E6E6E600DEDEDE00D7D7D700CACACA008E8E
      8E00666666000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600EFEF
      EF00EFEFEF00EFEFEF00E7E7E700EFEFEF00EFEFEF00F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700EFEFEF00E7E7E700E7E7E700F7F7F700B5B5
      B500B5B5B500EFEFEF0000000000000000000000000000000000000000000000
      0000FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE000000
      000000000000000000000000000000000000A6A6A600D8D8D800CDCDCD00FDFD
      FD00FCFCFC00F5F5F500EDEDED00E7E7E700DFDFDF00D8D8D800CBCBCB009191
      9100676767000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600EFEF
      EF00EFEFEF00EFEFEF00E7E7E700EFEFEF00EFEFEF00F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700EFEFEF00E7E7E700E7E7E700F7F7F700B5B5
      B500B5B5B500EFEFEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A6A6A600D8D8D800D6D6D600FEFE
      FE00FDFDFD00F7F7F700F0F0F000EAEAEA00E3E3E300DCDCDC00D3D3D300AAAA
      AA00646464000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EFEF
      EF00E7E7E700E7E7E700E7E7E700C6C6C600C6C6C600E7E7E700DEDEDE00DEDE
      DE00DEDEDE00CECECE00CECECE00BDBDBD00DEDEDE00DEDEDE00D6D6D600EFEF
      EF00EFEFEF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000088888800898989008888
      8800898989008989890088888800898989008888880088888800898989008989
      8900D1D1D1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00F4F4F400F3F3F300FBFBFB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DFBFB000B76D
      4C00B76F5000B7714C00B7714D00B7714D00B8704D00B8704D00B9714D00BA70
      4C00BA704C00BA704D00BA704D00BA704D00BA704C00B8714C00B6704D00B86E
      5100C1805F00FCFDFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFCFC00CFD2CF00919D9100BDC0BD00E4E4E400FAFA
      FA00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FBF4F200F5F1ED00F7F1
      ED00F8F1EE00F8F1EE00F7F1ED00F8F1EE00F8F1EE00F7F1ED00F7F0ED00F8F0
      ED00FDF7F90000000000000000000000000000000000FEFEFF00A0411B00CFD2
      CD00FCFEFE00FEFEFE00FDFCFD00FBFBFB00F9FBFB00F7F9F900F5F6F600F5F5
      F500F4F3F300F2F1F100F1F0F000F2EFEF00F0EEEE00F0EEEC00F9E9ED00F1EB
      E900BF8C7300E5D7C90000000000000000000000000000000000F6EFEC00D4A9
      9100D3A89200D3A89200D3A99200D2A79200D2A79200D2A79200CEA69000E2C7
      BC00E4D6C800D9B2A000DAB3A100DAB3A100DAB3A100DAB2A000DAB2A100D9B4
      A000D6B4A500FBF6F40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00CFD2CF003E773E000069000048774800B7BAB700E4E4
      E400F9F9F9000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EBDFD3009F3A0D00BE836700BB84
      6700B8806400B57E6300B47B5F00B1795D00AF765A00AE765900B2775C00AF71
      55009C3F1000F8F7F400000000000000000000000000FFFEFE00BB724D00AEAA
      AC00FDFCFC00FFFFFF00FFFFFF00FEFEFE00FDFCFD00FDFAFB00FBF8F900FAF5
      F500F9F3F300F6F0F000F5EDEE00F3EBEB00F1E8E900EEE6E600E9E2E300F0E4
      E100D1AC9900EED3CA00000000000000000000000000FEFDFE009E3D0F00E0C9
      C300DDCFCD00D9CBC900D5C7C600D2C4C300D2C4C300D2C4C300D1C2C3009C46
      1F00A4593600E2D1CF00DFCFCD00DACAC800D5C5C300D4C4C200D4C4C200D5C1
      C800D6B7AC00A03E150000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00EEEEEE00357835000082000000BA0000007300004B7C4B00C3C3
      C300E4E4E400FAFAFA0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0C0B100E1D0C900F8F8F800FEFD
      FD00FDFAFB00FCF7F800FBF6F700FAF4F500F9F1F200F7EFEF00F8EEEE00F0EA
      EA00BA8A7800F8F1ED00000000000000000000000000FFFFFF00B46E4800AEAC
      AA00FDFDFD00FEFEFE00FEFEFE00FEFEFE00FFFFFF00FEFEFE00FBFBFB00FAF7
      F700F8F4F500F6F1F200F5EFF000F3EDEE00F3ECED00F1E9EA00F2E6E300F0E4
      E600D0AB9D00E9D6CB00000000000000000000000000FFFEFE00A84F2600D7D5
      D500F8F3F400F6F0F100F4EEEF00F4ECEC00F2E9E900F0E6E600F1E8E900C296
      8400D2B6A800F5F1F200F7F2F300F6F0F100F5EDEE00F2EAEA00F1E7E700EEE5
      E500F3ECEE00A14C210000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFC
      FC00CFD2CF00357835000084000000BA000000C3000000B50000007900004B7C
      4B00B7BAB700E4E4E400FAFAFA00000000000000000000000000000000000000
      000000000000000000000000000000000000E0C0B200DBC9C200EFEFEF00FEFD
      FD00FBF9F900FAF7F700F7F3F400F6F0F100F3ECED00F1EAE900EFE5E500EAE4
      E300BA8A7800F8F1ED00000000000000000000000000FEFEFE00B7714B00ADAC
      A900FDFEFC00FEFEFE00FEFEFE00FEFEFE00FDFDFD00FDFDFD00FDFDFD00FDFC
      FC00FBF9F900F8F5F500F7F2F300F6F0F100F3EDEE00F1EBEC00EFE7E300F1E6
      E700D0AB9C00E9D6CB00000000000000000000000000FEFEFE00A84F2600CCCA
      CA00F9F4F500F6F1F200F4EEEF00F4ECEC00F0E8E800F0E6E600EFE6E700C195
      8400D0B4A600F5F0F100F7F2F300F6F0F100F5EEEE00F2EAEA00F1E8E800EDE4
      E400F3ECEE00A24D210000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00CFD2
      CF003E7A3E00008D000000C4000000CD000000CD000000CD000000BE0000007A
      000047794700B7BAB700E4E4E400F7F7F7000000000000000000000000000000
      000000000000000000000000000000000000E0C1B300DCCBC400EEEEEE00FFFF
      FF00FEFDFD00FCFAFA00F9F7F700F8F3F400F5EFF000F4EDED00F5EBEB00ECE7
      E600BA8A7800F8F1ED00000000000000000000000000FFFFFF00B7724B00D6D5
      D300D3D4D300D3D3D300D3D3D300D3D3D300D4D4D400D4D4D400D4D4D400D5D5
      D500D3D3D300D3D2D200D7D5D500D9D7D700DBD6D700DBD7D800E0DAD600E4DB
      DD00C8A49500E9D6CB00000000000000000000000000FFFEFE00A84F2600C2C0
      C000FAF8F800F9F4F500F6F1F200F5F0EF00F4ECEC00F1E9E900F3EAEB00C094
      8300D0B4A500F5F3F300FBF6F700F8F3F400F6F1F100F4EEED00F3EBEB00EFE7
      E700F4EDF000A24D210000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00EEEEEE003580
      35000095000000D7000000D7000000D7000000D7000000D7000000D7000000D7
      0000008200004B834B00C3C3C300DCDCDC000000000000000000FEFFFE00FEFE
      FD00FFFFFF00FEFEFE00FFFEFE00FEFEFE00E0C0AF00DECDC100EFF0EF00F9FE
      FE00FDFEFF00FCFDFD00FDF9FC00FCF6F400F4F1F700F6EFF000F2EBEB00EEE9
      E900BC8B7900F7F1ED00000000000000000000000000FEFEFE00B75D2400FEBD
      7200FDB76B00FEB26400FDAF5C00FCAB5400FEA55100FEA24900FD9D4100FF99
      3D00FE953600FD912D00FE8E2800FD892100FF861A00FD811100FB7D0D00F87A
      0200DF580E00E7D4CD00000000000000000000000000FEFEFE00A8502600BAB8
      B800FCFAFA00FAF8F800F9F4F500F7F1F200F4EEEF00F3EBEC00F1EBED00C396
      8400CDB1A100F5F3F300FBF9F900FAF6F700F8F3F400F5EFF000F3EDEE00F0EA
      EA00F5EEF100A24D23000000000000000000FDFDFD00FDFDFD00000000000000
      00000000000000000000000000000000000000000000D4D7D40036863600009A
      000000D7000000E0000000E0000000E0000000E0000000E0000000E0000000E0
      000000D00000008D00004B864B00ABB3AB0000000000FEFEFF00A55B2E00A956
      2800AB553000AA542E00AA532D00A5542A009E512C009F543000A5512900A551
      2E00A34D2800963A1200E2C0B200F6F4FE00F5F5F800F7F1F300F4EEEF00F4EE
      EF00BC917A00F5F0EC00000000000000000000000000FEFFFE00B75B2000FEBE
      7100FEB76B00FDB66500FEB15E00FFAB5700FDA95100FEA44A00FF9F4400FE9E
      3D00FE993700FF953000FE912700FE8C1F00FF881800FF831400FE7D0F00F779
      0400DB550E00EAD6CC00000000000000000000000000FFFEFE00A7502600B5B4
      B300FEFEFE00FDFBFB00FAF8F800F9F4F500F7F1F200F4EEEF00F4EEF000C699
      8800CAAF9F00F5F5F500FEFDFD00FBF9F900FAF6F700F7F2F300F6F1F200F2ED
      ED00F6F2F300A44E24000000000000000000ECECEC00E8E8E800F9F9F9000000
      000000000000000000000000000000000000F1F2F1005A9A5A00007300000090
      0000009A0000009A000000C5000000EA000000EA000000E4000000AE0000009A
      0000009A0000008A0000007300002880280000000000FBFDFC00B5633A00CFD3
      D500FDFDFD00FDFBFD00FDF9FA00FDF7FA00F9F8F500F8F6F200F8F4F600F1EF
      F000EFF1F000F2E5DE00AA6A4A00BEBAB200C2BFC000C6CBC600CBCECA00D8D8
      D400BE938600F6F1EB00000000000000000000000000FFFEFF00A04A1900CD7B
      3D00CC7C3E00D07B3800D0793500D0763100D1742E00D0702B00D16F2800D16D
      2100D06A1E00D1681B00D0661800D1631500D2621200D15E0F00CF5D0700CA5A
      0700A8360300F9F5F300000000000000000000000000FFFEFF00A7502600B1B0
      AF00FFFFFF00FEFEFE00FCFAFA00FCF7F800F9F4F500F7F1F200F6F0F100C89C
      8A00CBB0A000F4F4F400FEFEFE00FEFDFD00FCFAFA00FAF5F600F8F3F400F5F0
      F000F8F3F500A44F2500000000000000000061A16100C8C8C800E0E0E000F6F6
      F600FEFEFE0000000000000000000000000000000000D4E1D400BCDABC00B9D7
      B90087B98700007A000000D5000000F4000000F4000000DF0000078F07009CBA
      9C00B5D3B500BBD9BB00BBD9BB00CBE1CB0000000000FDFEFC00B86E4D00B2BA
      B600FFFFFE00FDFDFB00F8F8F600F2F5F200F5EDF000F7EEF200EEECE800F2E6
      E600F1E2E400EAE7E500C3632A00FEA55D00FDA45500FE9B4700FC953F00FC93
      3D00D75C2F00F6EEED00000000000000000000000000FEFEFE009D3D1000E6E3
      DD00FBFEFA00FCFCFC00FAFAFA00F7F7F700F7F5F500F4F2F200F3EFF000EEEC
      EC00EEEAEB00EBE7E800E9E4E500E7E2E300E6E1E200E7E0E100EAE0E000F1DF
      DF00B16C5300EDDACE00000000000000000000000000FEFEFE00A94E2600B2B1
      B000FEFEFE00FEFEFE00FDFDFD00FCFAFA00F9F7F700F8F3F400F6F3F400C99E
      8C00CBB0A000F4F4F400FEFEFE00FEFEFE00FEFCFC00FBF9F900FAF6F700F6F4
      F300F8F5F700A44F250000000000000000001F8E1F0042954200A1ACA100D2D2
      D200E8E8E800F3F3F300F9F9F900FBFBFB00FBFBFB00FAFAFA00F3F3F300BCC9
      BC002F922F0006B6060006FD060006FD060006FD060003DA030033963300E1E1
      E100FBFBFB0000000000000000000000000000000000FCFFFC00B6704C00B1B1
      B000FFFFFF00FFFEFE00FCFAFA00FBF8F800F9F3F400F6F0F100F4EDEE00F1E9
      EA00F0E6E700EEE8E900C25E1800F9963800FE912C00FD8B2200FF831500FB7E
      0C00D64F0E00F5EEEC00000000000000000000000000FFFEFF00B5724900A8AB
      A900FBFDFD00FEFEFE00FFFFFF00FFFFFF00FEFDFD00FDFBFB00F9F7F700F7F5
      F500F7F2F300F4EFF000F2ECED00F0EAEB00EEE7E800EEE5E600F1E2E100ECDF
      E400CCAE9A00EAD7CC00000000000000000000000000FEFEFF00A94E2600B2B1
      B000FFFFFF00FEFEFE00FEFEFE00FEFDFD00FCFAFA00F9F7F700F9F5F600CCA0
      8E00CBB0A000F4F4F400FEFEFE00FFFFFF00FFFEFE00FEFCFC00FBF9F900F8F7
      F600F9F7F800A6512700000000000000000080B38000008800001C891C005B93
      5B009CB29C00CDCDCD00D7D7D700DDDDDD00DDDDDD00C7CEC7007CA57C002892
      28001DC11D002DFC2D002EFF2E002EFF2E002EFF2E0010BB100072A17200F1F1
      F1000000000000000000000000000000000000000000FCFFFC00B6704C00B1B1
      B000FEFEFE00FFFFFF00FFFDFD00FDFBFB00F9F7F700F9F4F500F5F0F100F5ED
      EE00F2EAEB00EFEAEB00BD581C00EE902F00F1882B00F2851F00F37E1500F37C
      0D00A7400100F9F1ED00000000000000000000000000FEFFFE00BC6F4E00AFA9
      A900FCFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FDFBFB00F9F7
      F700F9F4F500F7F2F300F6F0F100F5EEEF00F3EBEC00EFE8E900EEE6E200F2E5
      E700CFA99C00EAD8CC00000000000000000000000000FEFEFF00A94E2600B2B1
      B000FFFFFF00FEFEFE00FFFFFF00FFFFFF00FEFDFD00FCFAFA00FCF9FA00CFA3
      9200CBB0A000F4F4F400FEFEFE00FFFFFF00FFFFFF00FEFEFE00FEFCFC00FAFA
      F900FBF9FA00A75228000000000000000000000000004EAF4E0011A411001CAC
      1C00008F00000E8F0E003498340050A1500026962600078F07000E9D0E004BE2
      4B0061FF610061FF610061FF610061FF610053F153001F991F00BAC5BA00FCFC
      FC000000000000000000000000000000000000000000FCFFFC00B6704C00B1B1
      B000FDFFFF00FEFEFE00FEFEFE00FEFEFE00FCFBFB00FBF8F800F8F3F400F5F0
      F100F3ECED00F0EBEC00AB573300C48E7300C9907000C78D7300C78E7400C791
      6F00DABDAD00FEFEFE00000000000000000000000000FEFEFD00B8714A00A6AC
      AD00FBFDFC00FFFEFF00FFFEFF00FFFEFF00FFFFFF00FEFEFE00FDFDFD00FEFB
      FC00FBF7F800F8F5F500F7F2F300F7F0F100F3EDEE00F2EAEB00F5E9E700EDE5
      EB00D3AA9B00EAD7CB00000000000000000000000000FEFEFE00A74F2400ABB0
      B000FDFDFC00FBFDFC00F9FDFB00FDFCFD00FCFCFD00F9FBFC00FAFBF600CDA8
      9200CCAEA300F3F3F200FDFDFC00FAFCFD00FCFCFD00FDFCFD00FBFBFC00F8FC
      F800FBF8FD00A8542900000000000000000000000000F5F8F50058A258002CB5
      2C0060DE60006ADC6A0059CE590051C8510061D5610077E6770092FF920092FF
      920092FF920092FF920090FD90006CE86C0012A2120080B18000F3F3F3000000
      00000000000000000000000000000000000000000000FCFEFD00B8704F00A4A8
      A700B5B8B400B4B7B300B4B6B300B4B4B500B5B4B500BBBABB00C2C1C300C7C6
      C800D2D0D300EFEBEE00BA826500000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFF00B86F4B00C1C0
      C000BDBCBC00BDC0BF00BDC1BE00C0C1BE00BFBFC000BFBEC000C0C0C000BCC0
      BF00BDBFBE00C1C2C100C5C5C400C9C8C800CDCBCA00D1CDCD00D3D2D300DCDB
      D800C2A89300E9D6CB00000000000000000000000000FEFEFD00A3502700D8D7
      D200D4D5D600D6D4D600D6D5D500D4D5D500D5D5D500D6D6D400DCDADE00CFA6
      9000D7BEB100D3D5D500D4D5D500D5D5D500D4D5D600D4D5D500D5D6D500D5D6
      D400EEEEEC00A8542A0000000000000000000000000000000000EEEFEE0091C4
      910018A8180052CA5200A0EFA000C5FFC500C5FFC500C5FFC500C5FFC500C5FF
      C500C5FFC500C5FFC5006CD66C0022AD220083C08300ECEDEC00FEFEFE000000
      00000000000000000000000000000000000000000000FBFDFB00BB683C00FDDF
      B800FEDBB600FCD7B100FBD5AC00FBD0A700FDCEA400FECCA000FCC69800FBC0
      8F00FCBD8C00F2AC8000C1856600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFE00B7602A00FCC7
      8F00FDC58700FEC28200FEBF7D00FEBB7700FDB97000FCB56B00FDB26600FFAE
      6000FEAA5B00FEA75500FDA35100FC9F4D00FB9B4600FA974000F7943700FD91
      3500E1652400E9D6CB00000000000000000000000000FEFEFE00A9470F00F7BA
      6E00FFB25D00FEA95000FDA04500FE983800FE8F2D00FD882100FE801300D758
      1200E8975500FEB66400FEAE5800FEA74B00FE9E3F00FC953300FC8E2800F986
      1C00FE781400AA3D030000000000000000000000000000000000000000000000
      0000EFF9EF0059C15A0004A409004AC250008CDA9100B7EABA00B7EABA00ACE6
      AF006DCF73000FAB15001CAA2000B5D6B500FCFCFC0000000000000000000000
      00000000000000000000000000000000000000000000FBFEFB00BD5E2300FCB8
      6F00FCB16000FAAB5600FDA74C00FC9F4400F8963800FD923000FC8B2500FC88
      1700FE7F0E00FC730C00C3856600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFD00B95E2200FFBF
      7500FEB67000FCB56600FDB05F00FDAC5700FEA85200FEA34B00FE9F4500FE9C
      3E00FD973700FE933100FF8F2800FF8D2200FF881B00FF841500F97F0E00FB79
      0100DB580E00EAD6CA00000000000000000000000000FDFEFE00AA481200F8B6
      6F00FDB06200FCA75300FEA04600FD993900FC902A00FF881D00FC7F1000D954
      0C00E2965400FEB56800FCAD5C00FFA54C00FE9E4000FD953100FF8E2400FF85
      1600FC780600AA3D040000000000000000000000000000000000000000000000
      000000000000FCFDFD00E0F4E200AFE5B70090DB9B008CDA98008CDA98008CDA
      980099DDA300BBE7C100F2F6F200FEFEFE000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFDFE00A7440F00F8B9
      7300FEB46600FFB05E00FFA95000FEA14700FD9B3C00FF963100FE902400FE87
      2200FC820F00ED640B00BE836600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFEFE009D3E1300ECA2
      5E00EFA55E00EEA25800F09E5300EF9A4D00ED974600EC944100ED903B00F08E
      3400EF8B3000EE862A00F0832400EF802000EF7C1900F0781500EA741100F374
      0800B9420200F6E8E300000000000000000000000000FDFEFD00A1462100C979
      3A00CF773300CE732D00CE6E2800D06B1E00CE651900CE621200D15E0F009335
      0100A43A0E00D0793800D0753300D0712D00CF6D2300CC681B00CE651700CB62
      1000CC5A0C00AE5E380000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DFBEA200AA59
      3400AE5D3200B05D3200AF5C3200AE5C3300AE5C3300AF5B3300AF5C3300AF5A
      3500AE5D3200A9543300FDFAF500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFFFB00E7D7
      D000EBD3CB00E8D4CC00E9D5CC00EBD5CD00E7D5C800EAD6C900EAD6C900E9D5
      CB00EAD4CB00EBD5CC00E9D5CC00E8D6CC00EAD7CD00EAD6CD00E8D6CE00EAD8
      CB00F2E8E600FEFEFF0000000000000000000000000000000000FDFCF900E6CE
      C400E5D0C500E5D0C500E5D0C600E5D0C400E5D0C400E5D0C500E4CFC400E9E6
      DF00FAF7F400F1E4DB00F1E4DB00F1E4DB00F0E4DC00F0E4DC00F0E5DC00F3E9
      E500F3EDE900FCFEFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B69C9C00B69C
      9C00B69C9C00B69C9C00B69C9C00B69C9C00B69C9C00B69C9C00B69C9C00B69C
      9C00B69C9C00B69C9C0000000000000000000000000000000000000000000000
      0000DED6D6000000000000000000DED6D6000000000000000000AD949400B59C
      9C00B59C9C00B59C9C00B59C9C00B59C9C00B59C9C00B59C9C00B59C9C00B59C
      9C00B59C9C00B59C9C0000000000000000000000000000000000000000000000
      0000DEEFEF000000000000000000000000000000000000000000000000000000
      000000000000D6DEEF00316BA500086BC6000863B500738CB500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DFD0D000FFFC
      FC00F9F3F300F9F3F300F8F1F100F6EFEF00F4EBEB00F3EAEA00F0E7E700EFE5
      E500EDE1E100B69C9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DECECE00FFF7
      F700F7F7F700F7EFEF00F7EFEF00F7EFEF00EFE7E700F7EFEF00EFE7E700EFDE
      DE00EFE7E700B59C9C0000000000000000000000000000000000000000000000
      00000000000000000000DEEFEF000000000000000000DEEFEF00000000000000
      0000DEEFEF00216BAD000094FF000094F700009CFF00008CF7006384AD000000
      0000DEEFEF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DFD0D000FFFF
      FF00F9F3F300F9F2F200F7F0F000F6EFEF00F4ECEC00F3EAEA00F0E6E600EFE5
      E500EDE1E100B69C9C0000000000000000000000000000000000214A7B002152
      9400215A940021529400215A940021529400215A940021529400DECECE00FFFF
      FF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00EFE7E700EFE7E700EFE7
      E700EFDEDE00B59C9C000000000000000000000000000000000000000000DEEF
      EF00000000000000000000000000000000000000000000000000000000000000
      00007394BD0008A5F700087BD6006384AD00316BA500109CE700087BD600D6DE
      EF00000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE00F7F7F700F3F3F300FAFAFA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DFD0D000FFFF
      FF00FCF5F500F9F3F300F8F1F100F7F0F000F5EEEE00F3EAEA00F0E7E700EFE5
      E500EDE1E100B69C9C00000000000000000000000000214A7B00108CDE001094
      E700108CDE001094E7001094E700108CDE001094E7001094E700DECECE00FFFF
      FF00FFF7F700F7EFEF00F7EFEF00F7EFEF00F7EFEF00EFE7E700EFE7E700EFE7
      E700EFDEDE00B59C9C0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DEEF
      EF00318CC60008A5F700739CC6000000000000000000217BBD0008A5F7008CAD
      CE0000000000000000000000000000000000000000000000000000000000FDFD
      FD00F1F1F100D6D6D600A6AEA600ACB5AC00F8F8F80000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DFD0D000FFFF
      FF00FFFAFA00F9F3F300F8F1F100F6EFEF00F4EBEB00F3EAEA00F0E7E700EFE5
      E500EDE1E100B69C9C00000000000000000000000000215A94001894E7001894
      E7001894E7001894E7001894E7001894E7001894E7001894E700DECECE00FFFF
      FF00FFF7F700F7F7F700F7EFEF00F7EFEF00EFE7E700F7EFEF00EFE7E700EFDE
      DE00E7DEDE00B59C9C0000000000000000000000000000000000000000000000
      0000738CB500186BB500106BB5004284B500ADC6DE0000000000000000000000
      0000108CD60018ADEF00BDD6EF0000000000000000005294C60010BDFF008CB5
      D60000000000DEEFEF0000000000000000000000000000000000FEFEFE00F1F1
      F100D4D4D4008D9E8D001968190011681100859F8500F7F7F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DFD0D000FFFF
      FF00FFFDFD00FAF4F400F8F1F100F6EFEF00F4EBEB00F3EAEA00F0E6E600EEE4
      E400ECE0E000B69C9C00000000000000000000000000215A9400219CEF001894
      E700219CEF00219CEF001894E700219CEF001894E700219CEF00DECECE00FFFF
      FF00FFFFFF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00EFE7E700EFE7E700EFE7
      E700EFDEDE00B59C9C000000000000000000000000000000000000000000527B
      AD00008CEF000094FF00009CFF0008ADFF00108CD60073A5CE00000000000000
      0000189CDE0021BDF7009CC6E7000000000000000000399CD60018BDFF008CB5
      D6000000000000000000000000000000000000000000FEFEFE00F3F3F300D4D4
      D4008D9E8D00005B00000092000000A20000005B0000859F8500F8F8F8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B69C9C00B69C
      9C00B69C9C00B69C9C00B69C9C00B69C9C00B69C9C00B69C9C00DFD0D000FFFF
      FF00FFFFFF00FEF9F900F7F0F000F5EEEE00F3EAEA00F1E8E800EFE5E500EDE1
      E100ECE0E000B69C9C000000000000000000000000002963940029A5EF0029A5
      EF00219CEF0029A5EF0029A5EF0029A5EF0029A5EF0029A5EF00DECECE00FFFF
      FF00FFFFFF00FFF7F700F7EFEF00F7EFEF00EFE7E700EFE7E700EFE7E700EFDE
      DE00E7DEDE00B59C9C000000000000000000000000000000000000000000106B
      B5000094FF00216BAD007B9CBD00528CBD00109CE70018B5EF004294C6000000
      000021A5E70018DEFF0029A5E700ADD6EF0063B5E70021BDF70018B5EF00BDD6
      EF0000000000000000000000000000000000FDFDFD00F1F1F100D4D4D400899A
      8900196C19000099000000C3000000C3000000A90000117111008EA28E00F8F8
      F800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DFD0D000FFFC
      FC00F9F3F300F9F3F300F8F1F100F6EFEF00F4EBEB00F3EAEA00DFD0D000FFFF
      FF00FFFEFE00FFFDFD00FDF6F600F5EEEE00F0E6E600EFE5E500ECE0E000EBDE
      DE00E9DCDC00B69C9C000000000000000000000000002963940039B5EF0031AD
      EF0031ADEF0029A5EF0029A5EF0031ADEF0029A5EF0029A5EF00DECECE00FFFF
      FF00FFFFFF00FFF7F700FFF7F700F7EFEF00EFE7E700EFDEDE00EFDEDE00E7DE
      DE00E7DEDE00B59C9C0000000000000000000000000000000000000000000873
      CE00108CDE009CB5CE00000000000000000073A5CE0018BDFF0021BDF7004A9C
      D60021B5E70021E7FF0029E7FF0021CEF70021DEFF0021DEFF00399CD6000000
      000000000000DEEFEF000000000000000000F1F1F100D4D4D4008DA08D001970
      190000A2000000CD000000CD000000CD000000CD000000AF00001175110085A0
      8500F7F7F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DFD0D000FFFF
      FF00F9F3F300F9F2F200F7F0F000F6EFEF00F4ECEC00F3EAEA00DFD0D000FFFF
      FF00FFFFFF00FFFEFE00FEF9F900FCF5F500F0E7E700ECE0E000E9DCDC00E8DB
      DB00E6D8D800B69C9C000000000000000000000000003163940042C6EF0039B5
      EF0031ADEF0039B5EF0039B5EF0039B5EF0039B5EF0039B5EF00DECECE00FFFF
      FF00FFFFFF00FFFFFF00FFF7F700F7F7F700EFE7E700EFDEDE00E7DEDE00E7D6
      D600E7D6D600B59C9C000000000000000000000000000000000000000000106B
      B50008A5F7007BA5C60000000000000000000000000021ADE70021DEFF0021D6
      FF00219CDE0029EFFF0021CEF70029D6F70029D6F700299CDE00000000000000
      000000000000000000000000000000000000D4D4D4008DA18D000066000000A7
      000000D7000000D7000000D7000000D7000000D7000000D7000000BA00000066
      000085A28500F8F8F80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DFD0D000FFFF
      FF00FCF5F500F9F3F300F8F1F100F7F0F000F5EEEE00F3EAEA00DFD0D000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFCFC00F9F3F300F4EBEB00E4D5D500E0D2
      D200DFD0D000B69C9C00000000000000000000000000316394004ACEF70042C6
      EF0042C6EF0039B5EF0039B5EF0039B5EF0039B5EF0039B5EF00DECECE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7EFEF00F7EFEF00DED6D600DECE
      CE00DECECE00B59C9C0000000000000000000000000000000000000000007394
      BD0008A5F7002184C600ADCEE70000000000C6E7F70021BDF70029E7FF0029EF
      FF0029E7FF0021ADE700219CDE009CCEEF00ADCEE7000000000000000000DEEF
      EF00000000000000000000000000000000008B9F8B00197B190000B0000000E0
      000000E0000000E0000000E0000000E0000000E0000000E0000000E0000000C3
      00001283120092AA9200FEFEFE00000000000000000000000000000000000000
      000000000000FEFEFE00FCFCFC00FEFEFE000000000000000000DFD0D000FFFF
      FF00FFFAFA00F9F3F300F8F1F100F6EFEF00F4EBEB00F3EAEA00DFD0D000FFFF
      FF00FFFFFF00FFFFFF00FFFEFE00FFFCFC00F9F2F200F5EEEE00E7DADA00DDCE
      CE00DBCCCC00B69C9C00000000000000000000000000316B940052D6F70052D6
      F70052D6F7004AC6F70042C6EF0042BDF70039B5EF0042BDF700DECECE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7EFEF00F7EFEF00E7D6D600DECE
      CE00DECECE00B59C9C0000000000000000000000000000000000000000000000
      0000217BBD0010BDFF0018ADE700219CDE0018B5EF0029E7FF0021BDF70029D6
      F7005AB5B500947B7B005A5A730000000000DEEFEF0000000000000000000000
      000000000000DEEFEF0000000000000000001B7B1B00007D0000009A0000009A
      0000009A000000D6000000EA000000EA000000EA000000AB0000009A0000009A
      000000830000137C1300D4E0D400000000000000000000000000000000000000
      0000FEFEFE00F2F2F200E7E7E700F6F6F6000000000000000000DFD0D000FFFF
      FF00FFFDFD00FAF4F400F8F1F100F6EFEF00F4EBEB00F3EAEA00DFD0D000FFFF
      FF00FFFFFF00FFFFFF00FFFDFD00FEF9F900F8F1F100F4EBEB00F0E6E600E5D7
      D700DAC9C900B69C9C00000000000000000000000000316B940063DEF7005ADE
      F70063DEF7005ADEF70063DEF7005ADEF70063DEF7005ADEF700DECECE00FFFF
      FF00FFFFFF00FFFFFF00FFF7F700FFF7F700F7EFEF00F7EFEF00EFE7E700E7D6
      D600D6C6C600B59C9C000000000000000000000000000000000000000000DEEF
      EF00DEEFEF00528CBD0018B5EF0021DEFF0029E7FF0021CEF7004AA5DE00ADD6
      EF008494A500D6C6C600947B7B00947373000000000000000000DEEFEF000000
      000000000000000000000000000000000000C6DEC600BBD9BB00BBD9BB00ABC9
      AB003B8C3B0000B7000000F4000000F4000000F4000000AC00004A994A00B5D3
      B500BCD9BC00BEDBBE000000000000000000000000000000000000000000FCFC
      FC00EEEEEE00D3D3D3009BB49B001D871D000000000000000000DFD0D000FFFF
      FF00FFFFFF00FEF9F900F7F0F000F5EEEE00F3EAEA00F1E8E800DFD0D000FFFF
      FF00FFFFFF00FFFFFF00FFFCFC00FEF9F900F6EFEF00F4EBEB00B69C9C00B69C
      9C00B69C9C00B69C9C0000000000000000000000000031739C0063DEF70063DE
      F70063DEF70063DEF70063DEF70063DEF70063DEF70063DEF700DECECE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7F700F7EFEF00EFE7E700B59C9C00B59C
      9C00B59C9C00AD94940000000000000000000000000000000000000000000000
      00000000000000000000BDD6EF008CB5D6008CC6E700ADCEE700000000000000
      0000846B73009C7B7B00D6C6C600C6B5B500947B7B0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1F1
      F1007DA17D00009A000006FB060006FD060006FD060006E50600079807007DAF
      7D00E3E4E300F7F7F700FBFBFB00FBFBFB00FBFBFB00F7F7F700EEEEEE00DFDF
      DF00C2C5C20076987600168516005EAD5E000000000000000000DFD0D000FFFF
      FF00FFFEFE00FFFDFD00FDF6F600F5EEEE00F0E6E600EFE5E500DFD0D000FFFF
      FF00FFFFFF00FFFFFF00FFFCFC00FEF8F800F4ECEC00F4EBEB00DFD0D000E1D3
      D300B69C9C0000000000000000000000000000000000397BA50063DEF70063DE
      F70063DEF70063DEF70063DEF70063DEF70063DEF7006BE7FF00DECECE00FFFF
      FF00FFFFFF00FFFFFF00FFF7F700FFF7F700F7EFEF00EFE7E700DECECE00DECE
      CE00AD9C9C000000000000000000000000000000000000000000000000000000
      0000DEEFEF00000000000000000000000000000000000000000000000000DEEF
      EF00A58C8C00B59C9C00B59C9C00DED6D600D6C6C600A5848400000000000000
      000000000000DEEFEF000000000000000000000000000000000000000000FAFA
      FA00C3CCC300008800001FE31F002EFF2E002EFF2E002EFE2E0029E429000B96
      0B004F974F00A7BBA700DCDCDC00DEDEDE00DBDBDB00D3D3D300BBC0BB007DA0
      7D00368936000A8A0A00319D3100EAEDEA000000000000000000DFD0D000FFFF
      FF00FFFFFF00FFFEFE00FEF9F900FCF5F500F0E7E700ECE0E000DFD0D000FFFF
      FF00FFFFFF00FFFFFF00FEF9F900FCF5F500F2E9E900F4EBEB00DFD0D000B69C
      9C0000000000000000000000000000000000000000003984B50073EFFF0073EF
      FF0073EFFF0073EFFF0073EFFF0073EFFF0073EFFF0073EFFF00DECECE00FFFF
      FF00FFFFFF00FFFFFF00FFF7F700F7F7F700EFE7E700F7EFEF00DECECE00AD9C
      9C00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DEEFEF00000000000000000000000000000000000000
      0000AD949400E7DEDE0094737300BDADAD00E7DEDE00DED6D600AD9C9C000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00F0F0F00059A859001FB41F005CFA5C0061FF610061FF610061FF610061FF
      61002FC12F000493040016921600399B3900409B40002C972C00008F00000E9C
      0E002CC02C001C9D1C00C5CFC500000000000000000000000000DFD0D000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFCFC00F9F3F300F4EBEB00DFD0D000DFD0
      D000DFD0D000DFD0D000DFD0D000DFD0D000DFD0D000DFD0D000B69C9C000000
      00000000000000000000000000000000000000000000398CBD007BEFFF007BEF
      FF007BEFFF007BEFFF007BEFFF007BEFFF007BEFFF0073EFFF00DECECE00DECE
      CE00DECECE00DECECE00DECECE00DECECE00DECECE00DECECE00AD9C9C000000
      000000000000000000000000000000000000000000000000000000000000DEEF
      EF00000000000000000000000000000000000000000000000000DEEFEF000000
      0000BDA5A500E7DEDE00A5848400CEC6C600CEBDBD00F7EFEF00E7DEDE00BDAD
      AD00000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00E1E5E10038A3380043C943008AFB8A0092FF920092FF920092FF
      920092FF920085F3850069DA690059CF590051C8510069DA690067DD670044CB
      44001FA11F009FC39F00FCFCFC00000000000000000000000000DFD0D000FFFF
      FF00FFFFFF00FFFFFF00FFFEFE00FFFCFC00F9F2F200F5EEEE00E7DADA00DDCE
      CE00DBCCCC00B69C9C0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004294C60084F7FF0084F7
      FF007BC6CE008484840084848400848484008484840084848400848484008484
      8400848484007BC6CE0084F7FF007BEFFF00398CBD0000000000000000000000
      0000DED6D6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DEEFEF000000000000000000000000000000
      0000C6ADAD00F7EFEF00AD94940000000000D6C6C600CEBDBD00FFFFFF00F7EF
      EF00CEC6C6000000000000000000000000000000000000000000000000000000
      000000000000FCFCFC00C4D3C4003BAB3B0039BE39009AEC9A00C5FFC500C5FF
      C500C5FFC500C5FFC500C5FFC500C5FFC500B8F9B8007CDF7C0030B7300053BB
      5300CAD4CA000000000000000000000000000000000000000000DFD0D000FFFF
      FF00FFFFFF00FFFFFF00FFFDFD00FEF9F900F8F1F100F4EBEB00F0E6E600E5D7
      D700DAC9C900B69C9C0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003994CE008CFFFF008CFF
      FF0084848400CEBDBD00D6C6C600D6C6C600CEBDBD00D6C6C600CEBDBD00D6C6
      C600CEBDBD008484840084F7FF0084F7FF003994CE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEEFEF0000000000000000000000000000000000DEEFEF00000000000000
      0000CEBDBD00F7F7F700B59C9C0000000000DEEFEF00DECECE00CEBDBD00FFFF
      FF00DECECE000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00ECF0EC0056BB570005A70B0040BE460097DE
      9B00B7EABA00B7EABA00B7EABA0067CD6D0018AE1E000EA81300A4DDA400FAFB
      FA00000000000000000000000000000000000000000000000000DFD0D000FFFF
      FF00FFFFFF00FFFFFF00FFFCFC00FEF9F900F6EFEF00F4EBEB00B69C9C00B69C
      9C00B69C9C00B69C9C0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000529CD60063C6EF008CE7
      F70084848C00D6C6C600E7DEDE00E7DEDE00EFE7E700E7DEDE00EFE7E700E7DE
      DE00D6C6C60084848C008CE7F70063C6EF004294C6000000000000000000DED6
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D6C6C600FFFFFF00BDADAD00000000000000000000000000DED6D600DECE
      CE00E7DEDE000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00DCF0DF00AAE2B2008CDA
      98008CDA98008CDA98008CDA98009CDEA500C8ECCC00F8FCF800000000000000
      0000000000000000000000000000000000000000000000000000DFD0D000FFFF
      FF00FFFFFF00FFFFFF00FFFCFC00FEF8F800F4ECEC00F4EBEB00DFD0D000E1D3
      D300B69C9C000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008CC6EF00529C
      D6008494AD00A58C8C00FFFFFF00F7F7F700F7EFEF00F7F7F700F7F7F700EFE7
      E700A58C8C008494AD0063ADE7008CC6EF000000000000000000000000000000
      000000000000DED6D6000000000000000000000000000000000000000000DEEF
      EF000000000000000000DEEFEF000000000000000000DEEFEF00000000000000
      0000D6C6C600FFFFFF00C6B5B50000000000DEEFEF000000000000000000EFDE
      DE00CEC6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DFD0D000FFFF
      FF00FFFFFF00FFFFFF00FEF9F900FCF5F500F2E9E900F4EBEB00DFD0D000B69C
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DED6D600BDADAD00AD949400FFFFFF00FFFFFF00FFFFFF00FFFFFF00AD94
      9400BDADAD000000000000000000DED6D600000000000000000000000000DED6
      D600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D6C6C600FFFFFF00CEC6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DFD0D000DFD0
      D000DFD0D000DFD0D000DFD0D000DFD0D000DFD0D000DFD0D000B69C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CEBDBD00BDA5A500BDA5A500BDA5A500BDA5A500CEBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DECECE00CEC6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000650FAF0049189C004E179F004D169E004C169E004C169E004B16
      9E004B159E004A159E004A149E004A149E004A139D004A139D0046149A006611
      AF00000000000000000000000000000000000000000000000000C7C5C400C7C5
      C400C7C5C400C7C5C400C7C5C400C7C5C400C7C5C400C7C5C400C7C5C400C7C5
      C400C7C5C400C7C5C400C7C5C400C7C5C400C7C5C400C7C5C400C7C5C400C7C5
      C400C7C5C400C7C5C400A4A6A600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000840A
      BB002135BF004462C5005176CE004F75CE004D72CD004B71CC004B70CC004A6F
      CC00496DCC00476BCB004469CA004366C9004163C8004062C8003857C400223D
      B900162BBB00860BBC0000000000000000000000000000000000C7C5C400FEFE
      FE00FFFEFF00FEFDFF00C7C5C400F9F8FA00FEFEFE00FEFEFE00C7C5C400FEFE
      FE00F9F8FA00FFFFFF00C7C5C400FFFFFF00FFFFFF00F9F8FA00C7C5C400FEFF
      FD00FCFFFD00FFFEFE00A4A6A600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002137
      BF005879C1006085CA005B7EC7005E81C8006285C9006588CA006184C8005F82
      C8006386C9006989CB007393CF007C99D2007E99D300819CD400839CD400748E
      CF00344FB500162BBB0000000000000000000000000000000000C7C5C400FFFF
      FE00FDFDFD00FEFEFE00C7C5C400F9F8FA00FEFEFE00FEFEFE00C7C5C400FDFD
      FD00F9F8FA00FEFEFE00C7C5C400FEFEFE00FDFDFD00F9F8FA00C7C5C400FFFF
      F800F9FEFF00FFFDFF00A4A6A600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A19D98006E726D009CA1A000000000000000
      0000000000000000000000000000000000000000000000000000660FAF004969
      C8005F85CA005077C400577DC6005A80C800587FC600557EC6007295D20092AE
      DD0097B2DE0096B2E0007E9FD7006F93CF007C9CD30083A1D50088A4D70094AE
      DA00748ECF00213DB9006710AF00000000000000000000000000C7C5C400C7C5
      C400C7C5C400C7C5C400C7C5C400C7C5C400C7C5C400C7C5C400C7C5C400C7C5
      C400C7C5C400C7C5C400C7C5C400C7C5C400C7C5C400C7C5C400C7C5C400C7C5
      C400C7C5C400C7C5C400A4A6A600000000000000000000000000000000000000
      0000000000007B76780045404200342E3300342D340034303600342F3800332E
      3700352A3A00362F3200313026003B3A300037333200343337004E5352000000
      0000000000000000000000000000000000000000000000000000000000000000
      000050879C001CA1C700116BCA000900970053578C0000000000000000000000
      000000000000000000001A5FAF002573CD001878CC000E6DB300888997000000
      00000000000000000000000000000000000000000000000000004E189E005D81
      D2005478C5005076C400557CC6004F78C4007092D100BFD0ED00ECF1FA00FFFF
      FF00FEFEFE00FEFFFF00EAEFF900BED0EE007FA0D600789AD200809FD40088A4
      D700839CD4003757C4004A139C00000000000000000000000000C7C5C400FFFD
      FD00FFFEFE00FEFCFC00C7C5C400F9F8FA00FEFEFE00FCFCFC00C7C5C400F9F8
      FA00F9F8FA00FCFCFC00C7C5C400F9F8FA00F9F8FA00F9F8FA00C7C5C400FEFC
      FB00FEFCFC00FCFBFD00A4A6A600000000000000000000000000000000000000
      0000666A6500898C8A00F2F4F400F2F4F400EEF0F000EFEFEF00ECEDEB00E4E5
      E300E7E4E600DFE3E400D8DDDE00D5DADB00CED0D100DBD7DC00CDCBD1003E3D
      4700000000000000000000000000000000000000000000000000000000000000
      00002875950010A6EC000417BA001036F2000712B00054567F00000000000000
      0000000000001166AC000F8AEA001FA1FF0020A8FF000182DF006F6669000000
      00000000000000000000000000000000000000000000000000005019A0005E82
      D3005276C4004F75C4004972C200819FD900F1F5FD00FFFFFF00F4F7FC00D4DE
      F100C6D4EA00DCE5F400FAFCFF00FFFFFF00E8EEF80086A5D9007899D20083A1
      D500819CD4004062C8004A139D00000000000000000000000000C7C5C400F9F8
      FA00F9F8FA00F9F8FA00C7C5C400F9F8FA00F9F8FA00F9F8FA00C7C5C400F9F8
      FA00F9F8FA00F9F8FA00C7C5C400F9F8FA00F9F8FA00F9F8FA00C7C5C400F9F8
      FA00F9F8FA00F9F8FA00A4A6A600000000000000000000000000000000000000
      00004A495200FCFFFD00EDF3E200F5FDDE00F1F9D100F3F8D100F5F7D300F6F4
      D500EEECCD00EBEAD000E5E3D100E6DED100E6D7CE00DBD0C800D5D2CD00959C
      99009F9F9F000000000000000000000000000000000000000000000000000000
      000048699B003149BB005281FB002160F8000D34F4001413AF005C557A000000
      00001D64A7000C92D8001AB8FF0016BCFF0021C1FF000B92DE00726F6B000000
      000000000000000000000000000000000000000000000000000050199F005F82
      D3005175C400466EC1006789CE00EEF2FC00FFFFFF00CDD9F2007596D2006086
      CB007295D200648BCD0088A6D900E7EEF800FFFFFF00E0E8F6007B9CD5007D9D
      D4007E99D3004163C8004A139D00000000000000000000000000C7C5C400FBFB
      FB00FBFBFB00FCFCFC00C7C5C400F9F8FA00FAFAFA00FCFCFC00C7C5C400F9F8
      FA00F9F8FA00FBFBFB00C7C5C400F9F8FA00F9F8FA00F9F8FA00C7C5C400F6FB
      F900FFFAFC00F8FAFA00A4A6A600000000000000000000000000000000000000
      000067655D00FFFFF500D5D0C100FBF4D900FFFCD100FEF3B900F5ECA200E8E1
      8C00E9D17900D9BE6300D8B75A00DFB05F00AD743C00BB8C6D00CEB7AF00B1B0
      B400929292000000000000000000000000000000000000000000000000000000
      00008992BE003040A400729FFF006495FF002858FD000A3AFE000016A7000F4C
      A9001C99E9001ACDFF002DC7FC0020CAFA001FBDF300177AAC00A19BA0000000
      000000000000000000000000000000000000000000000000000050199F006183
      D4005073C3003E68BF00C7D3ED00FFFFFF00CDDAF300557DC8004771C100ADC3
      E800FFFFFF0091ACDC004F7AC3007699D200E9F0F900FFFFFF00BCCFED006F93
      CF007C99D2004366C9004A149E00000000000000000000000000C7C5C400C7C5
      C400C7C5C400C7C5C400C7C5C400C7C5C400C7C5C400C7C5C400C7C5C400C7C5
      C400C7C5C400C7C5C400C7C5C400C7C5C400C7C5C400C7C5C400C7C5C400C7C5
      C400C7C5C400C7C5C400ABA5A000000000000000000000000000000000000000
      000067616C00FFFFFE00B1AC9700DCD3AD00E0D1A000E1C99500D5B48300CEA7
      7B00DAA06500E6A96B00E8A05800E6954000E6963D00E0A45E00D5B99700B9B5
      B0009D9D9D000000000000000000000000000000000000000000000000000000
      000000000000767AAA003842B70098BAF6008CABFF001D5DFF000939FD00000D
      AD0030A7F2002FD9F10024DBFD0030CAFD001375BB005D729F00000000000000
      0000000000000000000000000000000000000000000000000000501AA0006486
      D5004469BF006486CF00F1F6FD00FCFDFF006F8FD0004770C100537BC600B8CA
      ED00FFFFFF009AB3E0005D85C9005780C50091ADDD00FFFFFF00DFE7F5007799
      D3007594D0004468CA004A149E00000000000000000000000000C7C5C400FAFA
      FA00F9F8FA00F7F6F800D8D6D600F9F8FA00F9F9F900F8F8F800D5D5D500FBF9
      F900F9F8FA00F9F7F600D5D5D500F9F9F900F9FAF800F9F8FA00D5D5D500F9F8
      FA00FBFBF500F8F8F800A8A3A200000000000000000000000000000000000000
      00005D666300FDFFFC0093908800EADCD000FADED300FAD2C600F3C2B800E8B1
      A800DCA69500C2897300B1705100A859320097441E00A7654C00C6A9A000AEAD
      B100969696000000000000000000000000000000000000000000000000000000
      0000000000000000000078809E00454FBB00B6CBFE0094BBFF00193CD9000721
      B50025C6EC0036E6FD002AD9FF001C78AD006880980000000000000000000000
      0000000000000000000000000000000000000000000000000000501AA0006788
      D6003D63BC007A97D500FFFFFF00CAD6ED00436CC1005278C5004B73C300B3C7
      EB00FFFFFF0097B0DF00577EC6005E85C8006E92D100E9EFF900F8FAFF0087A6
      DA006C8CCC00466ACB004A159E00000000000000000000000000C7C5C400F6F8
      F800F5F7F700F9F9F900D7D8D600F9F8FA00F6F8F900F8F7F900D5D5D500F9F8
      FA00F9F8FA00F9F8FA00D5D5D500F6F8F900FBF8FA00F9F8FA00D5D5D500F9F8
      FA00F2F8F700F9FBF500ABA6A500000000000000000000000000000000000000
      0000665E6800FFFFFC007B757000D6938400BE8D7F00B2826600B16F5D009236
      2500903023008233260084442C00793916006A2805008E5B4700B6A49D00ADB6
      B300989898000000000000000000000000000000000000000000000000000000
      0000000000000000000080838800585880005462C200B2D1E8007081D7000CBA
      FC005287AC0039F2F6001F7BB000507E8F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000501AA0006989
      D600385EBB00829BD500FFFFFF00C3CFEA003964BD005077C5004870C200B3C5
      EB00FFFFFF0095AFDE00537BC5005C83C800658BCD00E2E9F500FAFCFF0083A3
      D9006789CA00486CCC004B159E00000000000000000000000000C7C5C400F9F8
      FA00F9F8FA00F9F8FA00D8D6D600F9F8FA00F9F8FA00F9F8FA00D8D6D600F9F8
      FA00F9F8FA00F9F8FA00D8D6D600F9F8FA00F9F8FA00F9F8FA00D8D6D600F9F8
      FA00F9F8FA00F9F8FA00AAA2A200000000000000000000000000000000000000
      0000675D6D00FAFFFE006F7D65009AB8710074BB5E0063B63C004CA728003F9A
      0F0043870A008CAD7400CDD8BE00A5D289005FAE390083B15800CAC6AA00B7AE
      B800989898000000000000000000000000000000000000000000000000000000
      00008C8C8C0081818100CCB0C300BDC5C4009CA1CE004177CC004DA3D7002B87
      BA008A8F90006E89A400647C9400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000511BA0006A8A
      D700395DBA007692D400FFFFFF00C9D4ED003E66BF004D74C300466FC200B1C4
      EA00FFFFFF0093ACDE005179C500587EC600688DCF00E8EEF900F7FAFF007F9F
      D7006386C9004A6FCC004B169E00000000000000000000000000C7C5C400C7C5
      C400C7C5C400C7C5C400C7C5C400C7C5C400C7C5C400C7C5C400C7C5C400C7C5
      C400C7C5C400C7C5C400C7C5C400C7C5C400C7C5C400C7C5C400C7C5C400C7C5
      C400C7C5C400C7C5C400ABA5A000000000000000000000000000000000000000
      0000505A5A00F3FFFB0066674D0099C072008EC96E0086B9570083BD5E0082CC
      5C00349F0900378800004B9017006B7B2400AD683700C67F6400E1CEBF00C1B4
      B600989898000000000000000000000000000000000000000000000000000000
      000082828200CECECE00D8D7E000E1E2D800E2EAE000F9E7E600F9EEF600B2BD
      BA009E9DA100A2979900888F8800D4CBD5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000511BA0006A89
      D7003E61BC005577C900EBEFFB00FCFDFF006687CD003C65BD004870C200B3C6
      EC00FFFFFF0093ADDE00527AC5004C75C3008DA9DD00FFFFFF00DCE5F400658B
      CC006487C9004A70CC004C169E00000000000000000000000000C7C5C400F5F5
      F500F5F5F500F5F5F500D5D6D400F9F8FA00F5F5F500F6F6F600D5D5D500F6F6
      F600F9F8FA00F6F6F600D5D5D500F5F5F500F4F7F500F9F8FA00D5D5D500F0F6
      F100F7F4F600F3F5F600A9A6A200000000000000000000000000000000000000
      000066626100FBFFFC0056534400EFF9BD00BED19800EDEDBF00FFFFE300EDEB
      C200F1E9C100D9D7B400DBBCAD00EDAFA900C7897100C18C6100E1C2A100A9B7
      AC00989898000000000000000000000000000000000000000000000000008787
      8700D4D4D400DDDDDD00D0CDCF00E9EDE700EFF0F400E1EDED00ECFAF9007F81
      8100888C8700979B9C00959896008D8C8E00BDC2C00000000000000000000000
      0000000000000000000000000000000000000000000000000000511BA0006A89
      D7004466BF002D56B800B9C9EA00FFFFFF00C9D5F100486FC400345FBB009DB3
      E200FFFFFF007F9BD5003C67BD00688CCF00E8F0F900FFFFFF00A6BDE500557E
      C5006588CA004B71CC004C169E00000000000000000000000000C7C5C400F4F4
      F400F4F4F400F3F3F300D6D7D500F9F8FA00F5F5F500F5F5F500D5D5D500F3F3
      F300F9F8FA00F4F5F300D5D5D500F4F4F400F2F4F500F9F8FA00D5D5D500F4F4
      F400FAF6F500F5F1F600A7A3A200000000000000000000000000000000000000
      0000565E6500FDF9FE0053382E00F99A6900F8986200FF9A6500FF996E00FF9F
      6400F9A15B00FFE8C300FBDDC200FFA77400FF9E5F00F0B39300F4DED800B4BB
      B400989898000000000000000000000000000000000000000000000000007B7B
      7B00E0E0E000888888007A757400BAC1B400FEF6FD00FCFEFF00FAFFFB00918C
      8D00000000008C888300A098A300ACABA7009F9EA000857E8B00000000000000
      0000000000000000000000000000000000000000000000000000521BA0006C89
      D6004163BD003259B9005576C800E3E9F700FFFFFF00CDD9F2006F8ED2004D73
      C600587CC900547AC900819ED800E3EBF700FFFFFF00D9E3F3005D83CA005B82
      C7006185C9004D72CD004D169E00000000000000000000000000C7C5C400F3F3
      F300F3F3F300F3F3F300D7D5D400F9F8FA00F3F4F200F3F3F300D5D5D500F6F6
      F600F9F8FA00F4F4F400D5D5D500F2F1F300F6F2F700F9F8FA00D5D5D500F2F2
      F200F5F4F000F1F3F300A6A39E00000000000000000000000000000000000000
      00005B5A5C00FFFFFB00452E1E00FF956A00FF966600FF996300FE976A00FE98
      5D00FDC98600FFF9DE00EFFFF800FFF4CE00FFA87600FFB49400F1E3DD00B0B4
      BF009A9A9A000000000000000000000000000000000000000000000000008F8F
      8F00777777009C9C9C000000000083847A00D1D1C500FAFFFF00FFFBFB007985
      870000000000000000008B848700C2C0BF00E5E4E800D4D0D5008C8784000000
      0000000000000000000000000000000000000000000000000000531CA1006D8B
      D8003E5FBC00365BBA003159B9005E7FCC00E5EBF800FFFFFF00F9FBFF00D6DF
      F200BDCBE700DEE5F400FFFFFF00FFFFFF00DDE5F4006287CC00537BC5005A80
      C7005F81C8004F75CE004E179F0000000000000000000000000000009E000103
      BC000001B9000002B8000001B5000001B3000302B0000303AF000201AB000101
      A9000000A6000001A5000100A3000000A2000001A00000009E0004029B000200
      9A00020197000000950004007E00000000000000000000000000000000000000
      0000585F5800F6FFF200271D1300844C33007E4D3D007A4F3C007E675F007B72
      64007D6F7000777B70007C7F7600878486007B8083009A959200DDCFC900B0B1
      AD009C9C9C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000999D9700EDF6FA00FFFFF900CAC4C9008679
      810000000000000000000000000088909000EBF6F300F4FFF700A4A9A700BAC0
      BB00000000000000000000000000000000000000000000000000501A9F007490
      DA003F5FBD003255B900395EBB003259B9004E71C500B0C1E900E1E8F600FEFE
      FF00FFFFFE00FCFDFE00DDE5F400A8BDE7005379C6004D75C300557CC600577D
      C6005B7EC7005076CE004D179E0000000000000000000000000004039F000001
      B9000003B9000001B3000003B2000102B0000001AF000201AF000000AA000001
      A9000001A5000001A3000002A10000019F0000019F0000029A00000199000000
      9B00020197000300990000007B00000000000000000000000000000000000000
      000042384400CBD3D300FEFBFD00F5FFF200F8FFFE00FFFFF800FFFEFF00F4FF
      FD00FFFCFE00FBFEFF00F0FFFF00FFFFFC00FFFCF900FAF4F900E5E5E500817B
      6E009F9F9F000000000000000000000000000000000000000000000000000000
      0000000000000000000093939300F1F1F100F9F9F900C0C0C000828282000000
      00000000000000000000000000008787870099999900F6F6F600DBDBDB008383
      8300000000000000000000000000000000000000000000000000640FAF00667D
      D1005978C6002549B5003255B900365BBA00335ABA002A54B700486CC3006A88
      D1007794D5006A8AD1004B72C5003B65BD004A71C3004E75C4005076C4005077
      C4006085CA004362C500660FAF0000000000000000000000000000019F000002
      BB000001B9000102B8000000B4000000B2000001AF000002AE000202AC000102
      AA000001A6000001A5000001A3000001A00001019B0002019F0000019B000101
      9B00000297000000970003037900000000000000000000000000000000000000
      00008989890054545400AEAEAE00D3D3D300D2D2D200D4D4D400D1D1D100D5D5
      D500D4D4D400D5D5D500D6D6D600CACACA00D9D9D900CBCBCB00767676003E3E
      3E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000083838300797979008282820081818100000000000000
      000000000000000000000000000000000000000000007D7D7D0083838300C4C4
      C40000000000000000000000000000000000000000000000000000000000293D
      C2007890CC005978C6003F5FBD003E5FBC004163BD004567BF004064BD003C5F
      BB003B60BB004065BD004A6EC1005073C4005074C3005276C4005478C5006085
      CA005879C1002135BF00000000000000000000000000000000000000A1000002
      BA000001B7000001B7000001B5000101B3000002AE000003AC000203AB000002
      A7000002A7000001A5000001A3000002A4000000A00002009E0000009B000200
      9A00000098000201970001007900000000000000000000000000000000000000
      000000000000B0B0B00079797900636363006868680062626200666666006161
      6100696969005B5B5B00656565006B6B6B0063636300606060008B8B8B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008309
      BB00293DC200677DD100758FDA006D8BD8006C89D6006A89D6006989D7006A89
      D7006889D6006688D6006385D5006183D4005F82D3005E82D3005E80D2004A69
      C8002137BF00840ABB00000000000000000000000000000000000000A0000002
      BB000001B9000102B8000000B4000000B2000001AF000002AE000202AC000102
      AA000001A6000001A5000001A3000001A00001019B0002019F0000019B000101
      9B00000297000000970002007B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000630FAE004D1B9D00531CA100521BA000511BA000511BA000511B
      A000501AA000501AA000501AA00050199F0050199F005019A0004B189C00650F
      AF000000000000000000000000000000000000000000000000000101A1000000
      9E000302A00001019B0001019B00000199000100920001009200010092000000
      9000000090000000900000008E0000008E0000018C0003008C0000008B000100
      8C00030288000000890001008600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000500100000100010000000000C00F00000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFE0F000000000000000000FFFC0700
      0000000000000000FFFC07000000000000000000FFE001000000000000000000
      FFE000000000000000000000FFE000000000000000000000FFE0000000000000
      00000000FFE000000000000000000000FF8001000000000000000000FF800700
      0000000000000000FF8007000000000000000000FF800F000000000000000000
      FF803F000000000000000000E0001F00000000000000000080001F0000000000
      0000000080001F00000000000000000080000F00000000000000000080001F00
      0000000000000000C0001F000000000000000000FC001F000000000000000000
      FF001F000000000000000000FFC71F000000000000000000FFFF9F0000000000
      00000000FFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFDFE7FF00FFFFFFFFFFFFFFFF0783FC003FFFF00FFC0003FF0381
      F8001FFC000FF80001FE0101F8003FFC000FF00001FF0001FE007FFC0003F000
      01FF0001E00007FE0003F00001FF8003C00003FF8003F00001FFC007C00003FF
      8003F80001FFE00FC00003C1C003FF8001FFC007C00003C0C003C00001C00003
      C00003C00003800003800001C00003C00003000013000001C00003E000030000
      13000001C00003F0000300001F000001C00003F007FF00001F000003C00003E4
      07FF80001F000007C00003EC07FFF8001FF0001FC00003C007FFFE001FFC001F
      C000038F87FFFF003FFF001FC00003DFEFFFFFCF3FFF871FE00007FFFFFFFFFF
      3FFFCF3FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFF
      FFFFFFFFFFFFFFFFFFFE03FFFFFFFFFFFFFFFFFFFFFC03FE003FFF00FFFFFFFF
      F87C01FC001FFE007FFF001FF03801FC001FF8003FFE000FF01801FC001FF800
      1FFC000FF00001FC001FF0000FF8000FF00003FC001FF0000FF0000FF80007F0
      0007E03C07F0000FFC000FF00007E07E07F0000FFE007FF8000FE07E07F0000F
      FE007FF8000FE07E07F8000FFC003FF8000FF03C07F8000FF8001FFC000FF000
      0FFC000FF0000FFC001FF0000FFE000FF0000FFC001FF8001FFE001FF0180FFE
      003FFC003FFE003FF03C0FFF00FFFE007FFE007FF87E1FFFC1FFFF00FFFF00FF
      FFFFFFFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0001FFF
      FFFFFFFE1FFFFE1FF00007FFFFFFFFFC07FFFC07F00007FFFF1FFFF807FFF807
      F00003E1F807FC0003FFF803F00003E00007F80003F80003F00003E00003F000
      03F00003F00003C00003E00003F00003F00007C00003E00007F00007F00007C0
      0003E0000FF0000FF00007C00007E0000FF0000FF00007C00007E0000FF0000F
      B00007C00007E0000FF0000FF00007C00007E0000FF0000FF00007C00007E000
      0FF0000FF00007C00003E0000FF0000FF00007C00003E0000FF0000FF00007C0
      003FE0000FF00007F0000FC0003FE0000FF00003F0001FC0703FE0000FF00001
      F0003FF8FFFFF0001FF80001F0007FFFFFFFFFFFFFFFFF01F000FFFFFFFFFFFF
      FFFFFF83FFFFFFFFFFFFFFFFFFFFFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8007FFFFFDFF000FF
      FFFFFFFC007FFFFF03F8001FFFFFFFFC007FFFFE03F80007FFFFFFFC007FFFFE
      03F80003E00007FC007FFFFF03F80007E00007F8007FE00003F80007E00007F8
      007FE00003F00003E00007F8007FE00007F00007E00007F8007FE00007F0001F
      E00007F8007FE00007F000BFE00007F8007FE00007F000FFE00007F8007FE000
      07F000FFE00007F8007FE00007F000FFE00007FC007FE00007F000FFE00007FC
      007FE00007F800FFFFFFFFFC007FEF00E7F800FFFFFFFFFC007FFFFFFFF800FF
      FFFFFFF8007FFFFFFFF800FFFFFFFFFC00FFFFFFFFF000FFFFFFFFFFFFFFFFFF
      FFF800FFFFFFFFFFFFFFFFFFFFFFFFFFFFF800FFFFFFFFFFFFFFFFFFFFF800FF
      F001FFF001FFFFFFFFF800FFF001FFF001FFFFFFFFF800FFF001FFF001FFFC7F
      F80000FFE001F87001FFE00FF00000F00001F03001FFC007E00000C00001F010
      01FFC007E00000800001F00001FF8003E00000000001F00001FF8103E0000000
      0001F80001FF8303E00000000001FC0001FF8003E0003F000001FE0001FFC007
      E0003F00003FFE007FF80007E0003F00003FFC003FF00007E0003F80007FF800
      1FE0000FE0003FC000FFF0000FE0047FE0003FC001FFF0000FE007FFE0001F80
      07FFF0180FE107FFE0000F003FFFF03C0FE007FFF0000F803FFFF87E1FE00FFF
      FFF80F803FFFFFFFFFF01FFFFFFC0F807FFFFFFFFFF81FFFFFFE1FE07FFFFFFF
      FFFFFFFFFFFF3FFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1FF
      F001FFF000FFF001FFFFC1FFF001FFF000FFF001FFFF81F00001FFF000FFF001
      FFFF01F00001E1F000FFF001FFFE03F00001E00000F80001FFFC07F00001E000
      00F00001FFFC0FF00001C00000F00001F0001FF00001C00000F00001E0003FF0
      0001C00000F00001C000FFF00001C00000F000018000FFF00001C00000F00001
      8000FFF0000FC00007F0001F8000FFF0000FC00007F0001F8000FFF0000FC000
      07F0001F8000FFF0000FC00003F0001F8000FFF0000FC00003F0001F8000FFF0
      000FC0003FF0001F8000FFF0001FC0003FF0001F8001FFF0003FC0703FF0001F
      C001FFF0007FF8FFFFF8003FE003FFF000FFFFFFFFFFFFFFF00FFFF801FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFF0FFC00003C00003C00003FFF0FFC00003C00003C00003
      FFE0FFC00003C00003C00003FFE0FFC00003C00003C00003F9C1FFC00003C000
      03C00003F881FFC00003C00003C00003F803FFC00003C00003C00003F803FFC0
      0003C00003C00003F8007FC00003C00003C00003F800FFC00003C00003C00003
      F801FFC00003C00003C00003F803FFC00003C00003C00003F807FFC00003C000
      03C00003F80FFFC00003C00003C00003F81FFFC00003C00003C00003F83FFFC0
      0003C00003C00003F83FFFC00003C00003C00003F87FFFC00003C00003C00003
      F8FFFFC00003C00003C00003FBFFFFC00003C00003C00003FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF001FFFFFFFFFFFFFFF001FFF000F6
      C003FFFD55FFF000FFF000FFC003FFF801FFF000FFF000C00003FF7800FFF000
      F8C000800003FF380183F000E00000800003FF980001F000C00000800003C008
      0100E000800000800003C00000004000000000800003C0080100000000000080
      0003C79800000000000000800003C73800800000000000800003C77800C00000
      00003F800003C7FFFFE0007F00003F800003C7FFFFF000FF00003F800007C7FF
      FFE000FFC0007F80000F807FFFC0007FC000FF80001F803FFF80003F8003FF80
      0077807FFF80001F801FFF80007F803FFF00000F801FFF80006F807FFF00000F
      003FFFC000FB803FFF00600F003FFFF006EF807FFF00F00F007FFFFC0FFF807F
      FF01F81FF87FFFFFFFFFFFFFFF83FC3FFFF001800003FFF001FFF001FFF00080
      0003FFF000FFF000FFF000800003FFF000FFF000FFF000803803FC0000FFF000
      E1F000803803F00000FFF000E0000080001BE00000FF0000E00000800003E000
      00FE0000C00000800003E00000FE0000C00000800003E00000FE0000C0000080
      0003E00000FE0000C00000800003E00000FE0000C00000800007E00000C00000
      C00007E00007E0000780001FC00007E00007E0000700001FC00007E00007E000
      0700001FC00003E0001FE0000700001FC00003E0001FE0000700001FC0003FE0
      0007E0000700003FC0003F800007E000070007FFC0703F800007E000070007FF
      F8FFFF800003E0000F0007FFFFFFFF800003F0001F0007FFFFFFFF800003FFFF
      FF0007FFFFFFFFE00007FFFFFF8007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1FFFFFFFC00003FFFFFF
      FFFC0FFF8007800003C00003FFF807FF0003800003800003FFF003FF00038000
      03800003FFE001FF0003800003800003FFC000FF0003800003800003FF8000C0
      00038000038000033F80008000038000038000031F0000800003800003800003
      07800080000380000380000300000780000380000380000300000F8000038000
      0380000380000F80000380000380000380001F8001FF800003800003C0001F80
      01FF800003800003F0007F8001FF800003800003F800FF8001FF800003800003
      FFFFFFC001FFC00003C00003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC003F6
      C003F7F83FFFFFFFFFC003FFC003FDB017FFFFFFFFC003C00003EFF00FF0FFFF
      FFC003800003FFE18FE07FFFFFC003800003F0718BC03FFFFFC003800003E031
      8F801FFFC00003800003E0100F000FFFC00003800003E3001B0007FFC0000380
      0003E3803F0003FFC00003800003E1006F0001F8C00003800003F0017B0001F0
      C00003800003E000DF0003E0C00003800003FC307FE00000C00007800007F7E0
      3BE00000C0000F80000FFDF01FE00001C0001F80001FEFD00FF00001C003FF80
      0077FEF107F80007C003FF80007FF7B107FC000FC003FF80006FFFF1C7FF003F
      C007FFC000FBEDB167FFFFFFC00FFFF006EFFFF1FFFFFFFFC01FFFFC0FFFFFF9
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8
      000FC00001FFFFFFFFFFFFE00003C00001FFFFFFFFFFFFE00003C00001FFFFFF
      FFFE3FC00001C00001F8001FF07C1FC00001C00001F0000FF0381FC00001C000
      01F00007F0101FC00001C00001F00007F0001FC00001C00001F00007F8003FC0
      0001C00001F00007FC007FC00001C00001F00007FC00FFC00001C00001F00007
      F001FFC00001C00001F00007F000FFC00001C00001F00007E0007FC00001C000
      01F00007E0083FC00001C00001F00007E20C1FC00001C00001F00007FE0E0FC0
      0001C00001F00007FC1E0FC00001C00001F0000FFC3F8FE00003C00001F8001F
      FFFFFFE00003C00001FFFFFFFFFFFFF8000FC00001FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object JvOpenDListaReferencias: TJvOpenDialog
    Filter = 'ARPI Lista de Referencias (*.alr)|*.alr'
    Height = 0
    Width = 0
    Left = 312
    Top = 80
  end
  object eventos: TApplicationEvents
    OnHint = eventosHint
    Left = 624
    Top = 208
  end
  object resultadoFTP: TIdFTPServer
    Bindings = <>
    CommandHandlers = <>
    DefaultPort = 3142
    Greeting.NumericCode = 220
    Greeting.Text.Strings = (
      'Indy FTP Server ready.')
    Greeting.TextCode = '220'
    MaxConnectionReply.NumericCode = 0
    OnDisconnect = resultadoFTPDisconnect
    ReplyExceptionCode = 0
    ReplyTexts = <>
    ReplyUnknownCommand.NumericCode = 500
    ReplyUnknownCommand.Text.Strings = (
      'Syntax error, command unrecognized.')
    ReplyUnknownCommand.TextCode = '500'
    AllowAnonymousLogin = True
    AnonymousAccounts.Strings = (
      'arpi')
    DefaultDataPort = 3143
    SystemType = 'WIN32'
    OnStoreFile = resultadoFTPStoreFile
    Left = 224
    Top = 328
  end
end
