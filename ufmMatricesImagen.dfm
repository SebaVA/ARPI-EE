object fmMatricesImagen: TfmMatricesImagen
  Left = 401
  Top = 167
  Width = 362
  Height = 335
  Caption = 'Matriz de datos de imagen'
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
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 282
    Width = 354
    Height = 19
    Panels = <>
  end
  object Paginas: TJvPageControl
    Left = 0
    Top = 0
    Width = 354
    Height = 282
    ActivePage = tsMatrizDatos
    Align = alClient
    TabOrder = 1
    object tsMatrizDatos: TTabSheet
      Caption = 'Datos'
      object MatrizGrid: TJvStringGrid
        Left = 0
        Top = 0
        Width = 346
        Height = 224
        Align = alClient
        Color = clSilver
        ColCount = 3
        DefaultColWidth = 32
        DefaultRowHeight = 16
        FixedColor = clSkyBlue
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Alignment = taLeftJustify
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -13
        FixedFont.Name = 'MS Sans Serif'
        FixedFont.Style = [fsBold]
      end
      object JvFooter1: TJvFooter
        Left = 0
        Top = 224
        Width = 346
        Height = 30
        Align = alBottom
        DesignSize = (
          346
          30)
        object btGuardarDatos: TJvFooterBtn
          Left = 93
          Top = 3
          Width = 74
          Height = 23
          Anchors = [akBottom]
          Caption = 'Guardar'
          TabOrder = 0
          OnClick = btGuardarDatosClick
          Alignment = taCenter
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
          ButtonIndex = 0
          SpaceInterval = 6
        end
        object btCerrar1: TJvFooterBtn
          Left = 173
          Top = 3
          Width = 74
          Height = 23
          Anchors = [akBottom]
          Caption = 'Cerrar'
          TabOrder = 1
          OnClick = btCerrar1Click
          Alignment = taCenter
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
          ButtonIndex = 1
          SpaceInterval = 6
        end
      end
    end
    object tsMatrizPaleta: TTabSheet
      Caption = 'Paleta'
      ImageIndex = 1
      object JvFooter2: TJvFooter
        Left = 0
        Top = 224
        Width = 346
        Height = 30
        Align = alBottom
        DesignSize = (
          346
          30)
        object btGuardarPaleta: TJvFooterBtn
          Left = 93
          Top = 3
          Width = 74
          Height = 23
          Anchors = [akBottom]
          Caption = 'Guardar'
          TabOrder = 0
          OnClick = btGuardarPaletaClick
          Alignment = taCenter
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
          ButtonIndex = 0
          SpaceInterval = 6
        end
        object btCerrar2: TJvFooterBtn
          Left = 173
          Top = 3
          Width = 74
          Height = 23
          Anchors = [akBottom]
          Caption = 'Cerrar'
          TabOrder = 1
          OnClick = btCerrar1Click
          Alignment = taCenter
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
          ButtonIndex = 1
          SpaceInterval = 6
        end
      end
      object MatrizPaleta: TJvStringGrid
        Left = 0
        Top = 0
        Width = 217
        Height = 224
        Align = alLeft
        Color = clSilver
        ColCount = 4
        DefaultColWidth = 32
        DefaultRowHeight = 16
        FixedColor = clCream
        RowCount = 257
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Alignment = taLeftJustify
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -13
        FixedFont.Name = 'MS Sans Serif'
        FixedFont.Style = [fsBold]
        ColWidths = (
          32
          48
          57
          54)
      end
    end
  end
  object imagMatSave: TSaveDialog
    Filter = 'Matriz ARPI (*.amt)|*.amt|Todos los Archivos (*.*)|*.*'
    Left = 316
    Top = 248
  end
end
