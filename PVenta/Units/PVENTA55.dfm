object frmConsBeneficio: TfrmConsBeneficio
  Left = 330
  Top = 169
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Beneficios en venta'
  ClientHeight = 520
  ClientWidth = 844
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 844
    Height = 57
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label6: TLabel
      Left = 8
      Top = 32
      Width = 30
      Height = 13
      Caption = 'Fecha'
    end
    object Label8: TLabel
      Left = 8
      Top = 8
      Width = 41
      Height = 13
      Caption = 'Sucursal'
    end
    object Label1: TLabel
      Left = 315
      Top = 12
      Width = 65
      Height = 13
      Caption = 'Caja contable'
    end
    object btcaja: TSpeedButton
      Left = 424
      Top = 8
      Width = 23
      Height = 22
      Flat = True
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        77777000000077777777777777777000000070000077777000007000000070B0
        00777770F0007000000070F000777770B0007000000070000000700000007000
        0000700B000000B0000070000000700F000700F0000070000000700B000700B0
        0000700000007700000000000007700000007770B00070B00077700000007770
        0000700000777000000077770007770007777000000077770B07770B07777000
        0000777700077700077770000000777777777777777770000000777777777777
        777770000000}
      OnClick = btcajaClick
    end
    object Label2: TLabel
      Left = 319
      Top = 36
      Width = 46
      Height = 13
      Caption = 'Vendedor'
    end
    object btnVendedor: TSpeedButton
      Left = 424
      Top = 32
      Width = 23
      Height = 22
      Flat = True
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        77777000000077777777777777777000000070000077777000007000000070B0
        00777770F0007000000070F000777770B0007000000070000000700000007000
        0000700B000000B0000070000000700F000700F0000070000000700B000700B0
        0000700000007700000000000007700000007770B00070B00077700000007770
        0000700000777000000077770007770007777000000077770B07770B07777000
        0000777700077700077770000000777777777777777770000000777777777777
        777770000000}
      OnClick = btnVendedorClick
    end
    object Fecha1: TDateTimePicker
      Left = 56
      Top = 32
      Width = 79
      Height = 21
      Date = 37506.000000000000000000
      Time = 37506.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Fecha2: TDateTimePicker
      Left = 136
      Top = 32
      Width = 79
      Height = 21
      Date = 37506.000000000000000000
      Time = 37506.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object cbGrupo: TRadioGroup
      Left = 800
      Top = 2
      Width = 42
      Height = 53
      Align = alRight
      Caption = 'Grupo'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'A'
        'B'
        'Todas')
      TabOrder = 2
      Visible = False
      OnClick = btRefreshClick
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 56
      Top = 8
      Width = 247
      Height = 21
      DropDownRows = 20
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'suc_codigo'
      ListField = 'suc_nombre'
      ListSource = dsSuc
      ParentFont = False
      TabOrder = 3
    end
    object edCaja: TEdit
      Left = 384
      Top = 8
      Width = 38
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnChange = edCajaChange
      OnKeyDown = edCajaKeyDown
    end
    object tcaja: TEdit
      Left = 448
      Top = 8
      Width = 185
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object edVendedor: TEdit
      Left = 384
      Top = 32
      Width = 38
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnChange = edVendedorChange
      OnKeyDown = edVendedorKeyDown
    end
    object edtVendedorN: TEdit
      Left = 448
      Top = 32
      Width = 185
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 480
    Width = 844
    Height = 40
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      844
      40)
    object BitBtn2: TBitBtn
      Left = 680
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Imprimir'
      TabOrder = 0
      OnClick = BitBtn2Click
      Glyph.Data = {
        E6000000424DE6000000000000007600000028000000100000000E0000000100
        0400000000007000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333330000000000003330777777777777033088888888899703308888888888
        870333000000000000333330FCCCCCCF03333330FFFFFFFF03333330FCCCCCCF
        03333330FFFFFFFF03333330FCCCCCCF03333330FFFFFFFF0333333000000000
        03333333333333333333}
    end
    object btRefresh: TBitBtn
      Left = 600
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Refrescar >>'
      TabOrder = 1
      OnClick = btRefreshClick
    end
    object btClose: TBitBtn
      Left = 760
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Salir'
      TabOrder = 2
      OnClick = btCloseClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
        0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
        0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
        0333337F777FFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
    end
  end
  object Memo1: TMemo
    Left = 16
    Top = 96
    Width = 505
    Height = 41
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
    Visible = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 57
    Width = 844
    Height = 423
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 3
    object TabSheet1: TTabSheet
      Caption = 'General'
      object Splitter1: TSplitter
        Left = 0
        Top = 145
        Width = 836
        Height = 7
        Cursor = crVSplit
        Align = alTop
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 836
        Height = 145
        Align = alTop
        Color = clInfoBk
        Ctl3D = False
        DataSource = dsFacturas
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FORMA'
            Title.Alignment = taCenter
            Title.Caption = 'Grupo'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TIPO'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo'
            Width = 26
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUMERO'
            Title.Alignment = taCenter
            Title.Caption = 'N'#250'mero'
            Width = 46
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FECHA'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIENTE'
            Title.Caption = 'Nombre del Cliente'
            Width = 131
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COSTO'
            Title.Alignment = taCenter
            Title.Caption = 'Costo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITBIS'
            Title.Alignment = taCenter
            Title.Caption = 'Impuestos'
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECIO'
            Title.Alignment = taCenter
            Title.Caption = 'Precio'
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCUENTO'
            Title.Alignment = taCenter
            Title.Caption = 'Descuento'
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COMISION'
            Title.Alignment = taCenter
            Title.Caption = 'Comisi'#243'n'
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Beneficio'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Porciento'
            Title.Alignment = taCenter
            Title.Caption = '%Margen'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COMISION_BRUTA'
            Title.Caption = 'COMISION B'
            Visible = True
          end>
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 152
        Width = 836
        Height = 243
        ActivePage = TabSheet5
        Align = alClient
        TabOrder = 1
        object TabSheet5: TTabSheet
          Caption = 'Resumen grafico'
          object DBChart1: TDBChart
            Left = 0
            Top = 0
            Width = 828
            Height = 215
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Title.Text.Strings = (
              'Estadistica General')
            AxisVisible = False
            Align = alClient
            TabOrder = 0
            object Series1: TBarSeries
              ColorEachPoint = True
              Marks.ArrowLength = 20
              Marks.Style = smsValue
              Marks.Visible = True
              DataSource = dsEstGral
              SeriesColor = clRed
              MultiBar = mbNone
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Bar'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
              YValues.ValueSource = 'Costo;Precio;Beneficio'
            end
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'Detalle de la factura'
          ImageIndex = 1
          object Grid: TDBGrid
            Left = 0
            Top = 0
            Width = 828
            Height = 215
            Align = alClient
            Color = clInfoBk
            Ctl3D = False
            DataSource = dsDetalleFac
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgCancelOnExit]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'pro_nombre'
                Title.Caption = 'Descripci'#243'n del Producto'
                Width = 158
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'det_cantidad'
                Title.Alignment = taCenter
                Title.Caption = 'Cantidad'
                Width = 46
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'det_medida'
                Title.Alignment = taCenter
                Title.Caption = 'Medida'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TotalCosto'
                Title.Alignment = taCenter
                Title.Caption = 'Costo'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'det_precio'
                Title.Alignment = taCenter
                Title.Caption = 'Precio'
                Width = 71
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TotalDesc'
                Title.Alignment = taCenter
                Title.Caption = 'Descuento'
                Width = 61
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TotalItbis'
                Title.Alignment = taCenter
                Title.Caption = 'Itbis'
                Width = 67
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'comision'
                Title.Alignment = taCenter
                Title.Caption = 'Comision'
                Width = 66
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Beneficio'
                Title.Alignment = taCenter
                Width = 70
                Visible = True
              end>
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Por Familia de productos'
      ImageIndex = 3
      object Splitter2: TSplitter
        Left = 0
        Top = 113
        Width = 836
        Height = 8
        Cursor = crVSplit
        Align = alTop
      end
      object DBGrid4: TDBGrid
        Left = 0
        Top = 0
        Width = 836
        Height = 113
        Align = alTop
        Color = clInfoBk
        Ctl3D = False
        DataSource = dsBeneficioFam
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'nombre'
            Title.Caption = 'Familia de productos'
            Width = 256
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cantidad'
            Title.Alignment = taCenter
            Title.Caption = 'Cantidad'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'precio'
            Title.Alignment = taCenter
            Title.Caption = 'Precio'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descuento'
            Title.Alignment = taCenter
            Title.Caption = 'Descuento'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'comision'
            Title.Alignment = taCenter
            Title.Caption = 'Comision'
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'itbis'
            Title.Alignment = taCenter
            Title.Caption = 'Impuestos'
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'costo'
            Title.Alignment = taCenter
            Title.Caption = 'Costo'
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'beneficio'
            Title.Alignment = taCenter
            Title.Caption = 'Beneficio'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Porciento'
            Title.Alignment = taCenter
            Title.Caption = '%Margen'
            Width = 50
            Visible = True
          end>
      end
      object DBChart2: TDBChart
        Left = 0
        Top = 121
        Width = 836
        Height = 274
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          'Estadistica por Familia')
        AxisVisible = False
        Align = alClient
        TabOrder = 1
        object Series2: TBarSeries
          Marks.ArrowLength = 20
          Marks.Style = smsLabelValue
          Marks.Visible = True
          DataSource = QEstadisticaFam
          SeriesColor = clRed
          Title = 'Costo'
          XLabelsSource = 'Nombre'
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'Costo'
        end
        object Series3: TBarSeries
          Marks.ArrowLength = 20
          Marks.Style = smsLabelValue
          Marks.Visible = True
          DataSource = QEstadisticaFam
          SeriesColor = clGreen
          Title = 'Beneficio'
          XLabelsSource = 'Nombre'
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'Beneficio'
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Por Producto'
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 836
        Height = 395
        Align = alClient
        Color = clInfoBk
        Ctl3D = False
        DataSource = dsBeneficioProd
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'nombre'
            Title.Caption = 'Nombre del producto'
            Width = 256
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cantidad'
            Title.Alignment = taCenter
            Title.Caption = 'Cantidad'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'precio'
            Title.Alignment = taCenter
            Title.Caption = 'Precio'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descuento'
            Title.Alignment = taCenter
            Title.Caption = 'Descuento'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'comision'
            Title.Alignment = taCenter
            Title.Caption = 'Comision'
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'itbis'
            Title.Alignment = taCenter
            Title.Caption = 'Impuestos'
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'costo'
            Title.Alignment = taCenter
            Title.Caption = 'Costo'
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'beneficio'
            Title.Alignment = taCenter
            Title.Caption = 'Beneficio'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Porciento'
            Title.Alignment = taCenter
            Title.Caption = '%Margen'
            Width = 54
            Visible = True
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Tickets de caja'
      ImageIndex = 2
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 837
        Height = 397
        Align = alClient
        Color = clInfoBk
        Ctl3D = False
        DataSource = dsTickets
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'fecha'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'caja'
            Title.Alignment = taCenter
            Title.Caption = 'Caja'
            Width = 37
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'usu_nombre'
            Title.Caption = 'Cajero'
            Width = 132
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ticket'
            Title.Alignment = taCenter
            Title.Caption = '# Ticket'
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'total'
            Title.Alignment = taCenter
            Title.Caption = 'Monto'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Costo'
            Title.Alignment = taCenter
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Itbis'
            Title.Alignment = taCenter
            Title.Caption = 'Impuestos'
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descuento'
            Title.Alignment = taCenter
            Title.Caption = 'Descuento'
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Beneficio'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Porciento'
            Title.Alignment = taCenter
            Title.Caption = '%Margen'
            Width = 54
            Visible = True
          end>
      end
    end
  end
  object QFacturas: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    AfterOpen = QFacturasAfterOpen
    OnCalcFields = QFacturasCalcFields
    CommandTimeout = 120
    Parameters = <
      item
        Name = 'EMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SUC'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'FEC1'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'FEC2'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'FOR1'
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = 'FOR2'
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = 'CAJA'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'VENDEDOR'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT '
      '(((comision/(precio-itbis)))*precio) COMISION_BRUTA, * '
      'FROM '
      'PR_BENEFICIO_VENTA '
      '(:EMP, :SUC, :FEC1,:FEC2,:FOR1,:FOR2, :CAJA, :VENDEDOR)')
    Left = 312
    Top = 152
    object QFacturasBeneficio: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Beneficio'
      currency = True
      Calculated = True
    end
    object QFacturasFORMA: TIBStringField
      FieldName = 'FORMA'
      Origin = 'PR_BENEFICIO_VENTA.FORMA'
      Size = 1
    end
    object QFacturasTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'PR_BENEFICIO_VENTA.TIPO'
    end
    object QFacturasNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'PR_BENEFICIO_VENTA.NUMERO'
      DisplayFormat = '00000'
    end
    object QFacturasFECHA: TDateTimeField
      FieldName = 'FECHA'
      Origin = 'PR_BENEFICIO_VENTA.FECHA'
    end
    object QFacturasCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = 'PR_BENEFICIO_VENTA.CLIENTE'
      Size = 60
    end
    object QFacturasCOSTO: TFloatField
      FieldName = 'COSTO'
      Origin = 'PR_BENEFICIO_VENTA.COSTO'
      currency = True
    end
    object QFacturasPRECIO: TFloatField
      FieldName = 'PRECIO'
      Origin = 'PR_BENEFICIO_VENTA.PRECIO'
      currency = True
    end
    object QFacturasDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Origin = 'PR_BENEFICIO_VENTA.DESCUENTO'
      currency = True
    end
    object QFacturasITBIS: TFloatField
      FieldName = 'ITBIS'
      Origin = 'PR_BENEFICIO_VENTA.ITBIS'
      currency = True
    end
    object QFacturasEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'PR_BENEFICIO_VENTA.EMPRESA'
    end
    object QFacturasid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object QFacturasCOMISION: TBCDField
      FieldName = 'COMISION'
      currency = True
      Precision = 15
      Size = 2
    end
    object QFacturasSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QFacturasPorciento: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Porciento'
      currency = True
      Calculated = True
    end
    object QFacturasCOMISION_BRUTA: TCurrencyField
      FieldName = 'COMISION_BRUTA'
    end
  end
  object dsFacturas: TDataSource
    DataSet = QFacturas
    Left = 344
    Top = 152
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 280
    Top = 128
  end
  object QSucursal: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltReadOnly
    CommandTimeout = 120
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'emp_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'usu'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      's.suc_codigo, s.suc_nombre, s.alm_codigo, s.emp_codigo'
      'from'
      'sucursales s, sucursal_acceso a'
      'where'
      's.emp_codigo = a.emp_codigo'
      'and s.suc_codigo = a.suc_codigo'
      'and a.emp_codigo = :emp_codigo'
      'and a.usu_codigo = :usu'
      'order by s.suc_codigo')
    Left = 408
    Top = 152
    object QSucursalsuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QSucursalsuc_nombre: TStringField
      FieldName = 'suc_nombre'
      Size = 60
    end
    object QSucursalalm_codigo: TIntegerField
      FieldName = 'alm_codigo'
    end
    object QSucursalemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
  end
  object dsSuc: TDataSource
    DataSet = QSucursal
    Left = 440
    Top = 152
  end
  object QBeneficioProd: TADOQuery
    Connection = DM.ADOSigma
    OnCalcFields = QBeneficioProdCalcFields
    CommandTimeout = 120
    Parameters = <
      item
        Name = 'emp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'suc'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'fec1'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'fec2'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'caja'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'VENDEDOR'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'codigo, referencia, nombre, sum(cantidad) as cantidad,'
      'sum(precio) as precio, sum(descuento) as descuento,'
      'sum(comision) as comision, sum(itbis) as itbis,'
      'sum(beneficio) as beneficio, sum(costo) as costo,'
      'sum(total) as total'
      'from'
      'pr_beneficio_producto'
      '(:emp, :suc, :fec1, :fec2, :caja, :VENDEDOR)'
      'group by'
      'codigo, referencia, nombre'
      'order by nombre')
    Left = 312
    Top = 120
    object QBeneficioProdcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object QBeneficioProdreferencia: TStringField
      FieldName = 'referencia'
      Size = 30
    end
    object QBeneficioProdnombre: TStringField
      FieldName = 'nombre'
      Size = 80
    end
    object QBeneficioProdcantidad: TBCDField
      FieldName = 'cantidad'
      currency = True
      Precision = 15
      Size = 2
    end
    object QBeneficioProdprecio: TBCDField
      FieldName = 'precio'
      currency = True
      Precision = 15
      Size = 2
    end
    object QBeneficioProddescuento: TBCDField
      FieldName = 'descuento'
      currency = True
      Precision = 15
      Size = 2
    end
    object QBeneficioProdcomision: TBCDField
      FieldName = 'comision'
      currency = True
      Precision = 15
      Size = 2
    end
    object QBeneficioProditbis: TBCDField
      FieldName = 'itbis'
      currency = True
      Precision = 15
      Size = 2
    end
    object QBeneficioProdbeneficio: TBCDField
      FieldName = 'beneficio'
      currency = True
      Precision = 15
      Size = 2
    end
    object QBeneficioProdtotal: TBCDField
      FieldName = 'total'
      currency = True
      Precision = 15
      Size = 2
    end
    object QBeneficioProdcosto: TBCDField
      FieldName = 'costo'
      currency = True
      Precision = 15
      Size = 2
    end
    object QBeneficioProdPorciento: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Porciento'
      currency = True
      Calculated = True
    end
  end
  object dsBeneficioProd: TDataSource
    DataSet = QBeneficioProd
    Left = 344
    Top = 120
  end
  object QTickets: TADOQuery
    Connection = DM.ADOSigma
    OnCalcFields = QTicketsCalcFields
    CommandTimeout = 120
    Parameters = <
      item
        Name = 'vendedor'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'fec1'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'fec2'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'emp'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'declare @vendedor int,'
      '             @vendedor2 int'
      'set @vendedor = :vendedor'
      
        'if (@vendedor = 0 ) set @vendedor2 = 1000 else set @vendedor2 = ' +
        '@vendedor;'
      ''
      'select distinct'
      
        't.usu_codigo, t.fecha, t.ticket, t.caja, u.usu_nombre, m.total, ' +
        'm.descuento,'
      
        'sum(t.costo*(case when t.empaque = '#39'S'#39' then t.cantidad *p.pro_ca' +
        'ntempaque else t.cantidad end)) as Costo,'
      'sum((t.precio*t.itbis/100)*t.cantidad) as Itbis'
      'from'
      'ticket t, usuarios u, montos_ticket m, cajas_ip c, Productos p'
      'where'
      
        'm.fecha between convert(datetime, :fec1, 105) and convert(dateti' +
        'me, :fec2, 105) and '
      't.caja = m.caja'
      'and t.usu_codigo = m.usu_codigo'
      'and t.fecha = m.fecha'
      'and t.ticket = m.ticket'
      'and m.usu_codigo = u.usu_codigo'
      'and m.caja = c.caja'
      'and t.producto = p.pro_codigo'
      
        'and p.emp_codigo = (select top 1 par_invempresa from parametros ' +
        'where emp_codigo = c.emp_codigo)'
      'and c.emp_codigo = :emp'
      'and isnull(m.ven_codigo,0) between @vendedor and @vendedor2'
      'group by'
      
        't.usu_codigo, t.fecha, t.ticket, t.caja, u.usu_nombre, m.total, ' +
        'm.descuento')
    Left = 312
    Top = 184
    object QTicketsusu_codigo: TIntegerField
      FieldName = 'usu_codigo'
    end
    object QTicketsfecha: TDateTimeField
      FieldName = 'fecha'
    end
    object QTicketsticket: TIntegerField
      FieldName = 'ticket'
    end
    object QTicketsusu_nombre: TStringField
      FieldName = 'usu_nombre'
      Size = 60
    end
    object QTicketstotal: TBCDField
      FieldName = 'total'
      currency = True
      Precision = 18
      Size = 0
    end
    object QTicketsdescuento: TBCDField
      FieldName = 'descuento'
      currency = True
      Precision = 18
      Size = 0
    end
    object QTicketsTipo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Tipo'
      Size = 10
      Calculated = True
    end
    object QTicketsCosto: TBCDField
      FieldName = 'Costo'
      ReadOnly = True
      currency = True
      Precision = 32
    end
    object QTicketsItbis: TBCDField
      FieldName = 'Itbis'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 6
    end
    object QTicketsBeneficio: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Beneficio'
      currency = True
      Calculated = True
    end
    object QTicketscaja: TIntegerField
      FieldName = 'caja'
    end
    object QTicketsPorciento: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Porciento'
      currency = True
      Calculated = True
    end
  end
  object dsTickets: TDataSource
    DataSet = QTickets
    Left = 344
    Top = 184
  end
  object QBeneficioFam: TADOQuery
    Connection = DM.ADOSigma
    OnCalcFields = QBeneficioFamCalcFields
    CommandTimeout = 120
    Parameters = <
      item
        Name = 'emp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'suc'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'fec1'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'fec2'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'caja'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'VENDEDOR'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'codigo, nombre,'
      'sum(cantidad) as cantidad,'
      'sum(precio) as precio,'
      'sum(descuento) as descuento,'
      'sum(comision) as comision,'
      'sum(itbis) as itbis,'
      'sum(beneficio) as beneficio,'
      'sum(total) as total,'
      'sum(costo) as costo'
      'from'
      'pr_beneficio_familia'
      '(:emp, :suc, :fec1, :fec2, :caja, :VENDEDOR)'
      'group by'
      'codigo, nombre')
    Left = 408
    Top = 112
    object QBeneficioFamcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object QBeneficioFamnombre: TStringField
      FieldName = 'nombre'
      Size = 60
    end
    object QBeneficioFamcantidad: TBCDField
      FieldName = 'cantidad'
      Precision = 15
      Size = 2
    end
    object QBeneficioFamprecio: TBCDField
      FieldName = 'precio'
      currency = True
      Precision = 15
      Size = 2
    end
    object QBeneficioFamdescuento: TBCDField
      FieldName = 'descuento'
      currency = True
      Precision = 15
      Size = 2
    end
    object QBeneficioFamcomision: TBCDField
      FieldName = 'comision'
      currency = True
      Precision = 15
      Size = 2
    end
    object QBeneficioFamitbis: TBCDField
      FieldName = 'itbis'
      currency = True
      Precision = 15
      Size = 2
    end
    object QBeneficioFambeneficio: TBCDField
      FieldName = 'beneficio'
      currency = True
      Precision = 15
      Size = 2
    end
    object QBeneficioFamtotal: TBCDField
      FieldName = 'total'
      currency = True
      Precision = 15
      Size = 2
    end
    object QBeneficioFamcosto: TBCDField
      FieldName = 'costo'
      currency = True
      Precision = 15
      Size = 2
    end
    object QBeneficioFamPorciento: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Porciento'
      currency = True
      Calculated = True
    end
  end
  object dsBeneficioFam: TDataSource
    DataSet = QBeneficioFam
    Left = 440
    Top = 120
  end
  object QEstadisticaGral: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    CommandTimeout = 120
    Parameters = <
      item
        Name = 'EMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SUC'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'FEC1'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'FEC2'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'FOR1'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'FOR2'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'CAJA'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'VENDEDOR'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT '
      'sum(costo) as Costo, sum(precio-itbis) as Precio,'
      'sum(precio-itbis-costo-comision) as Beneficio'
      'FROM '
      'PR_BENEFICIO_VENTA '
      '(:EMP, :SUC, :FEC1,:FEC2,:FOR1,:FOR2, :CAJA, :VENDEDOR)')
    Left = 168
    Top = 120
    object QEstadisticaGralCosto: TBCDField
      FieldName = 'Costo'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
    object QEstadisticaGralPrecio: TBCDField
      FieldName = 'Precio'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
    object QEstadisticaGralBeneficio: TBCDField
      FieldName = 'Beneficio'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
  end
  object dsEstGral: TDataSource
    DataSet = QEstadisticaGral
    Left = 200
    Top = 120
  end
  object QEstadisticaFam: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    CommandTimeout = 120
    Parameters = <
      item
        Name = 'emp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'suc'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'fec1'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'fec2'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'caja'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'VENDEDOR'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'Nombre, sum(costo) as Costo, sum(comision) as Comision,'
      'sum(descuento) as Descuento, sum(precio) as Precio,'
      'sum(precio-(costo+itbis+descuento+comision)) as Beneficio'
      'from'
      'pr_beneficio_familia'
      '(:emp, :suc, :fec1, :fec2, :caja, :VENDEDOR)'
      'group by nombre')
    Left = 176
    Top = 152
    object QEstadisticaFamNombre: TStringField
      FieldName = 'Nombre'
      Size = 60
    end
    object QEstadisticaFamCosto: TBCDField
      FieldName = 'Costo'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
    object QEstadisticaFamComision: TBCDField
      FieldName = 'Comision'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
    object QEstadisticaFamDescuento: TBCDField
      FieldName = 'Descuento'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
    object QEstadisticaFamPrecio: TBCDField
      FieldName = 'Precio'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
    object QEstadisticaFamBeneficio: TBCDField
      FieldName = 'Beneficio'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
  end
  object dsEstFam: TDataSource
    DataSet = QEstadisticaFam
    Left = 200
    Top = 152
  end
  object QDetalleFac: TADOQuery
    Connection = DM.ADOSigma
    OnCalcFields = QDetalleFacCalcFields
    CommandTimeout = 120
    DataSource = dsFacturas
    Parameters = <
      item
        Name = 'empresa'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'suc_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'forma'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'tipo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'numero'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'pro_codigo, pro_roriginal, pro_nombre,  det_precio, det_costo,'
      
        'det_conitbis, det_itbis, det_cantidad, det_medida, det_descuento' +
        ','
      
        '((det_cantidad*det_precio)-DET_TOTALITBIS)*(det_comision/100)  a' +
        's comision, '
      'det_totalitbis, det_selectivo_ad, det_selectivo_con'
      'from'
      'det_factura'
      'where'
      'emp_codigo = :empresa'
      'and suc_codigo = :suc_codigo'
      'and fac_forma = :forma'
      'and tfa_codigo = :tipo'
      'and fac_numero = :numero'
      'order by'
      'det_secuencia')
    Left = 408
    Top = 184
    object QDetalleFacpro_codigo: TIntegerField
      FieldName = 'pro_codigo'
    end
    object QDetalleFacpro_roriginal: TStringField
      FieldName = 'pro_roriginal'
      Size = 50
    end
    object QDetalleFacpro_nombre: TStringField
      FieldName = 'pro_nombre'
      Size = 80
    end
    object QDetalleFacdet_precio: TBCDField
      FieldName = 'det_precio'
      DisplayFormat = '###,###,###.00##'
      Precision = 15
      Size = 2
    end
    object QDetalleFacdet_costo: TBCDField
      FieldName = 'det_costo'
      currency = True
      Precision = 15
      Size = 2
    end
    object QDetalleFacdet_conitbis: TStringField
      FieldName = 'det_conitbis'
      Size = 1
    end
    object QDetalleFacdet_itbis: TBCDField
      FieldName = 'det_itbis'
      Precision = 15
      Size = 2
    end
    object QDetalleFacdet_cantidad: TBCDField
      FieldName = 'det_cantidad'
      Precision = 15
      Size = 2
    end
    object QDetalleFacdet_medida: TStringField
      FieldName = 'det_medida'
      Size = 3
    end
    object QDetalleFacdet_descuento: TBCDField
      FieldName = 'det_descuento'
      Precision = 15
      Size = 2
    end
    object QDetalleFacCalcItbis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcItbis'
      DisplayFormat = '###,###,###.00##'
      Calculated = True
    end
    object QDetalleFacBeneficio: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Beneficio'
      currency = True
      Calculated = True
    end
    object QDetalleFacCalcDesc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcDesc'
      currency = True
      Calculated = True
    end
    object QDetalleFacPrecioItbis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PrecioItbis'
      DisplayFormat = '###,###,###.00##'
      Calculated = True
    end
    object QDetalleFacValor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor'
      currency = True
      Calculated = True
    end
    object QDetalleFacTotalCosto: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalCosto'
      currency = True
      Calculated = True
    end
    object QDetalleFaccomision: TBCDField
      FieldName = 'comision'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 6
    end
    object QDetalleFacdet_totalitbis: TBCDField
      FieldName = 'det_totalitbis'
      Precision = 15
    end
    object QDetalleFacTotalDesc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalDesc'
      currency = True
      Calculated = True
    end
    object QDetalleFacTotalItbis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalItbis'
      DisplayFormat = '###,###,###.00##'
      Calculated = True
    end
    object QDetalleFacdet_selectivo_ad: TBCDField
      FieldName = 'det_selectivo_ad'
      Precision = 15
      Size = 2
    end
    object QDetalleFacdet_selectivo_con: TBCDField
      FieldName = 'det_selectivo_con'
      Precision = 15
      Size = 2
    end
  end
  object dsDetalleFac: TDataSource
    DataSet = QDetalleFac
    Left = 440
    Top = 184
  end
end
