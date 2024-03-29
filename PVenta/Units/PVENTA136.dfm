object frmLiquidacion: TfrmLiquidacion
  Left = 373
  Top = 210
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Liquidacion de Mercancia'
  ClientHeight = 471
  ClientWidth = 693
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
    Width = 693
    Height = 105
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 17
      Top = 8
      Width = 50
      Height = 13
      Caption = 'Proveedor'
    end
    object btProveedor: TSpeedButton
      Left = 140
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
      OnClick = btProveedorClick
    end
    object Label9: TLabel
      Left = 17
      Top = 32
      Width = 29
      Height = 13
      Caption = 'Fecha'
    end
    object Label8: TLabel
      Left = 545
      Top = 8
      Width = 47
      Height = 13
      Caption = 'Container'
      FocusControl = DBEdit9
    end
    object Label1: TLabel
      Left = 144
      Top = 32
      Width = 38
      Height = 13
      Caption = 'Agencia'
    end
    object Label3: TLabel
      Left = 545
      Top = 32
      Width = 37
      Height = 13
      Caption = 'Factura'
      FocusControl = DBEdit2
    end
    object Label4: TLabel
      Left = 545
      Top = 56
      Width = 23
      Height = 13
      Caption = 'Tasa'
      FocusControl = DBEdit3
    end
    object Label14: TLabel
      Left = 17
      Top = 80
      Width = 40
      Height = 13
      Caption = 'Almacen'
    end
    object btAlmacen: TSpeedButton
      Left = 140
      Top = 80
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
      OnClick = btAlmacenClick
    end
    object Label15: TLabel
      Left = 17
      Top = 56
      Width = 38
      Height = 13
      Caption = 'Moneda'
    end
    object btmoneda: TSpeedButton
      Left = 140
      Top = 56
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
      OnClick = btmonedaClick
    end
    object edProveedor: TEdit
      Left = 72
      Top = 8
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyDown = edProveedorKeyDown
    end
    object DBEdit5: TDBEdit
      Left = 72
      Top = 32
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'liq_fecha'
      DataSource = dsLiq
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit9: TDBEdit
      Left = 600
      Top = 8
      Width = 81
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'liq_container'
      DataSource = dsLiq
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object tProveedor: TEdit
      Left = 168
      Top = 8
      Width = 369
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
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 192
      Top = 32
      Width = 345
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'liq_Agencia'
      DataSource = dsLiq
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit2: TDBEdit
      Left = 600
      Top = 32
      Width = 81
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'liq_factura'
      DataSource = dsLiq
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object DBEdit3: TDBEdit
      Left = 600
      Top = 56
      Width = 81
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'liq_taza'
      DataSource = dsLiq
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object tAlmacen: TEdit
      Left = 168
      Top = 80
      Width = 369
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
      TabOrder = 9
    end
    object DBEdit13: TDBEdit
      Left = 72
      Top = 80
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'alm_codigo'
      DataSource = dsLiq
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object tmoneda: TEdit
      Left = 168
      Top = 56
      Width = 369
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
      TabOrder = 10
    end
    object DBEdit14: TDBEdit
      Left = 72
      Top = 56
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'mon_codigo'
      DataSource = dsLiq
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 105
    Width = 693
    Height = 128
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Relacion de Gastos en RD$'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object GridGastos: TDBGrid
      Left = 2
      Top = 15
      Width = 689
      Height = 111
      Align = alClient
      Ctl3D = False
      DataSource = dsGastosLiq
      Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnColEnter = GridGastosColEnter
      OnEnter = GridGastosEnter
      OnKeyPress = GridGastosKeyPress
      Columns = <
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'Nombre'
          ReadOnly = True
          Title.Caption = 'Descripci'#243'n del Gasto'
          Width = 213
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'gas_monto'
          Title.Alignment = taCenter
          Title.Caption = 'Monto'
          Visible = True
        end>
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 400
    Width = 693
    Height = 71
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object btBuscaProd: TSpeedButton
      Left = 304
      Top = 8
      Width = 143
      Height = 25
      Caption = '[ F4 ] - Buscar producto'
      OnClick = btBuscaProdClick
    end
    object btGrabar: TBitBtn
      Left = 6
      Top = 8
      Width = 143
      Height = 25
      Caption = '[ F2 ] - Grabar/Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = btGrabarClick
    end
    object btLimpiar: TBitBtn
      Left = 154
      Top = 8
      Width = 143
      Height = 25
      Caption = '[ F3 ] - Limpiar/Nueva    '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = btLimpiarClick
    end
    object BitBtn6: TBitBtn
      Left = 450
      Top = 40
      Width = 143
      Height = 25
      Caption = '[ F10 ] - Cancelar/Salir  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TabStop = False
      OnClick = BitBtn6Click
    end
    object btElimina: TBitBtn
      Left = 154
      Top = 40
      Width = 143
      Height = 25
      Caption = '[ F6 ] - Eliminar producto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      TabStop = False
      OnClick = btEliminaClick
    end
    object BitBtn2: TBitBtn
      Left = 304
      Top = 40
      Width = 143
      Height = 25
      Caption = 'Seleccionar Orden'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn2Click
    end
    object btBuscaCta: TBitBtn
      Left = 6
      Top = 40
      Width = 143
      Height = 25
      Caption = '[ F5 ] - Buscar Liquidacion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = btBuscaCtaClick
    end
    object BitBtn1: TBitBtn
      Left = 450
      Top = 8
      Width = 143
      Height = 25
      Caption = 'Recalcular Factor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      TabStop = False
      OnClick = BitBtn1Click
    end
  end
  object Lista: TListBox
    Left = 16
    Top = 320
    Width = 137
    Height = 33
    ItemHeight = 13
    TabOrder = 3
    Visible = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 233
    Width = 693
    Height = 167
    ActivePage = TabSheet1
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 4
    object TabSheet1: TTabSheet
      Caption = 'Productos'
      object Grid: TDBGrid
        Left = 0
        Top = 0
        Width = 685
        Height = 136
        Align = alClient
        Ctl3D = False
        DataSource = dsDetalle
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnColEnter = GridColEnter
        OnEnter = GridEnter
        OnKeyDown = GridKeyDown
        OnKeyPress = GridKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'pro_codigo'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 45
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'det_nombre'
            ReadOnly = True
            Title.Caption = 'Nombre del Producto'
            Width = 144
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'det_cantidad'
            Title.Alignment = taCenter
            Title.Caption = 'Cant.'
            Width = 34
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'det_costo'
            Title.Alignment = taCenter
            Title.Caption = 'Costo US$'
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'det_peso_volumen'
            Title.Alignment = taCenter
            Title.Caption = 'Peso/Vol.'
            Width = 47
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'TotalUS'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Total US$'
            Width = 54
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'TotalRD'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Total RD$'
            Width = 66
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'Gastos'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 66
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'TotalGastos'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Total+Gastos'
            Width = 80
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'Costo'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Costo RD$'
            Width = 66
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Cuentas contables'
      ImageIndex = 1
      DesignSize = (
        685
        136)
      object Label24: TLabel
        Left = 39
        Top = 119
        Width = 54
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'Cr'#233'ditos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label25: TLabel
        Left = 207
        Top = 119
        Width = 49
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'D'#233'bitos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label26: TLabel
        Left = 375
        Top = 119
        Width = 51
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'Balance'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 30
        Height = 136
        Align = alLeft
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object btdeletecuenta: TSpeedButton
          Left = 4
          Top = 4
          Width = 23
          Height = 22
          Hint = 'Eliminar producto de la lista'
          Flat = True
          Glyph.Data = {
            42010000424D4201000000000000760000002800000011000000110000000100
            040000000000CC00000000000000000000001000000010000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
            777770000000777777777777777770000000777777777777770F700000007777
            0F777777777770000000777000F7777770F770000000777000F777770F777000
            00007777000F77700F777000000077777000F700F7777000000077777700000F
            7777700000007777777000F777777000000077777700000F7777700000007777
            7000F70F7777700000007770000F77700F7770000000770000F7777700F77000
            00007700F7777777700F70000000777777777777777770000000777777777777
            777770000000}
          ParentShowHint = False
          ShowHint = True
          OnClick = btdeletecuentaClick
        end
        object btfindcuenta: TSpeedButton
          Left = 4
          Top = 26
          Width = 23
          Height = 22
          Hint = 'Nota para el producto'
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
          ParentShowHint = False
          ShowHint = True
          OnClick = btfindcuentaClick
        end
      end
      object GridCuentas: TDBGrid
        Left = 31
        Top = 0
        Width = 654
        Height = 113
        Anchors = [akLeft, akTop, akRight, akBottom]
        Ctl3D = False
        DataSource = dsCuentas
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnColEnter = GridCuentasColEnter
        OnEnter = GridCuentasEnter
        OnKeyDown = GridCuentasKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'cat_cuenta'
            Title.Alignment = taCenter
            Title.Caption = 'Cuenta'
            Width = 93
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'cat_nombre'
            ReadOnly = True
            Title.Caption = 'Nombre de la Cuenta'
            Width = 384
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'det_origen'
            Title.Alignment = taCenter
            Title.Caption = 'Origen'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'det_monto'
            Title.Alignment = taCenter
            Title.Caption = 'Monto'
            Width = 90
            Visible = True
          end>
      end
      object lbBAL: TStaticText
        Left = 431
        Top = 119
        Width = 103
        Height = 17
        Alignment = taRightJustify
        Anchors = [akLeft, akBottom]
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object lbDB: TStaticText
        Left = 263
        Top = 119
        Width = 103
        Height = 17
        Alignment = taRightJustify
        Anchors = [akLeft, akBottom]
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object lbCR: TStaticText
        Left = 95
        Top = 119
        Width = 103
        Height = 17
        Alignment = taRightJustify
        Anchors = [akLeft, akBottom]
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
    end
  end
  object QLiquidacion: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforePost = QLiquidacionBeforePost
    AfterPost = QLiquidacionAfterPost
    OnNewRecord = QLiquidacionNewRecord
    Parameters = <
      item
        Name = 'emp'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'num'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'emp_codigo, liq_numero, sup_codigo, liq_fecha, liq_Agencia,'
      'liq_container, liq_factura, liq_taza, liq_gastos, alm_codigo,'
      'liq_factor, usu_codigo, liq_status, ped_tipo, ped_numero,'
      'mon_codigo'
      'from'
      'liquidacion'
      'where'
      'emp_codigo = :emp'
      'and liq_numero = :num')
    Left = 184
    Top = 264
    object QLiquidacionemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QLiquidacionliq_numero: TIntegerField
      FieldName = 'liq_numero'
    end
    object QLiquidacionsup_codigo: TIntegerField
      FieldName = 'sup_codigo'
    end
    object QLiquidacionliq_fecha: TDateTimeField
      FieldName = 'liq_fecha'
    end
    object QLiquidacionliq_Agencia: TStringField
      FieldName = 'liq_Agencia'
      Size = 60
    end
    object QLiquidacionliq_container: TStringField
      FieldName = 'liq_container'
      Size = 30
    end
    object QLiquidacionliq_factura: TStringField
      FieldName = 'liq_factura'
      Size = 30
    end
    object QLiquidacionliq_taza: TBCDField
      FieldName = 'liq_taza'
      currency = True
      Precision = 15
      Size = 2
    end
    object QLiquidacionalm_codigo: TIntegerField
      FieldName = 'alm_codigo'
      OnGetText = QLiquidacionalm_codigoGetText
    end
    object QLiquidacionliq_factor: TBCDField
      FieldName = 'liq_factor'
      currency = True
      Precision = 15
      Size = 2
    end
    object QLiquidacionusu_codigo: TIntegerField
      FieldName = 'usu_codigo'
    end
    object QLiquidacionliq_status: TStringField
      FieldName = 'liq_status'
      Size = 3
    end
    object QLiquidacionped_tipo: TStringField
      FieldName = 'ped_tipo'
      Size = 1
    end
    object QLiquidacionped_numero: TIntegerField
      FieldName = 'ped_numero'
    end
    object QLiquidacionmon_codigo: TIntegerField
      FieldName = 'mon_codigo'
      OnGetText = QLiquidacionmon_codigoGetText
    end
    object QLiquidacionliq_gastos: TBCDField
      FieldName = 'liq_gastos'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object dsLiq: TDataSource
    DataSet = QLiquidacion
    Left = 216
    Top = 264
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforeEdit = QDetalleBeforeEdit
    BeforePost = QDetalleBeforePost
    AfterPost = QDetalleAfterPost
    AfterDelete = QDetalleAfterDelete
    OnCalcFields = QDetalleCalcFields
    OnNewRecord = QDetalleNewRecord
    Parameters = <
      item
        Name = 'emp'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'num'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'emp_codigo, liq_numero, det_secuencia, pro_codigo,'
      'pro_roriginal, pro_rfabric, det_nombre, det_cantidad,'
      'det_medida, det_costounidad, det_costoempaque,'
      'det_costo, det_costo_rd, det_peso_volumen,'
      'pro_ctainvent, pro_ctacosto'
      'from'
      'det_liquidacion'
      'where'
      'emp_codigo = :emp'
      'and liq_numero = :num'
      'order by'
      'det_secuencia')
    Left = 184
    Top = 296
    object QDetalleemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QDetalleliq_numero: TIntegerField
      FieldName = 'liq_numero'
    end
    object QDetalledet_secuencia: TIntegerField
      FieldName = 'det_secuencia'
    end
    object QDetallepro_codigo: TIntegerField
      FieldName = 'pro_codigo'
      OnChange = QDetallepro_codigoChange
    end
    object QDetallepro_roriginal: TStringField
      FieldName = 'pro_roriginal'
      OnChange = QDetallepro_roriginalChange
      Size = 50
    end
    object QDetallepro_rfabric: TStringField
      FieldName = 'pro_rfabric'
      OnChange = QDetallepro_rfabricChange
      Size = 60
    end
    object QDetalledet_nombre: TStringField
      FieldName = 'det_nombre'
      Size = 80
    end
    object QDetalledet_cantidad: TBCDField
      FieldName = 'det_cantidad'
      currency = True
      Precision = 15
      Size = 15
    end
    object QDetalledet_medida: TStringField
      FieldName = 'det_medida'
      OnChange = QDetalledet_medidaChange
      Size = 3
    end
    object QDetalleTotalUS: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalUS'
      currency = True
      Calculated = True
    end
    object QDetalleTotalRD: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalRD'
      currency = True
      Calculated = True
    end
    object QDetalleGastos: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Gastos'
      currency = True
      Calculated = True
    end
    object QDetalleTotalGastos: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalGastos'
      currency = True
      Calculated = True
    end
    object QDetalleCosto: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Costo'
      currency = True
      Calculated = True
    end
    object QDetalledet_costounidad: TBCDField
      FieldName = 'det_costounidad'
      currency = True
      Precision = 15
      Size = 2
    end
    object QDetalledet_costoempaque: TBCDField
      FieldName = 'det_costoempaque'
      currency = True
      Precision = 15
      Size = 2
    end
    object QDetalledet_costo: TBCDField
      FieldName = 'det_costo'
      currency = True
      Precision = 15
      Size = 2
    end
    object QDetalledet_costo_rd: TBCDField
      FieldName = 'det_costo_rd'
      Precision = 15
      Size = 2
    end
    object QDetalledet_peso_volumen: TBCDField
      FieldName = 'det_peso_volumen'
      currency = True
      Precision = 15
      Size = 2
    end
    object QDetallepro_ctainvent: TStringField
      FieldName = 'pro_ctainvent'
      Size = 15
    end
    object QDetallepro_ctacosto: TStringField
      FieldName = 'pro_ctacosto'
      Size = 15
    end
  end
  object dsDetalle: TDataSource
    DataSet = QDetalle
    Left = 216
    Top = 296
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 256
    Top = 360
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 288
    Top = 360
  end
  object QGastos: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'emp_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'gas_codigo, gas_nombre'
      'from'
      'gastos_aduanales'
      'where'
      'emp_codigo = :emp_codigo')
    Left = 184
    Top = 329
    object QGastosgas_codigo: TIntegerField
      FieldName = 'gas_codigo'
    end
    object QGastosgas_nombre: TStringField
      FieldName = 'gas_nombre'
      Size = 60
    end
  end
  object dsGastos: TDataSource
    DataSet = QGastos
    Left = 216
    Top = 329
  end
  object QGastosLiq: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterPost = QGastosLiqAfterPost
    Parameters = <
      item
        Name = 'emp'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end
      item
        Name = 'num'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = -1
      end>
    SQL.Strings = (
      'select'
      'emp_codigo, gas_codigo, liq_numero, gas_secuencia,'
      'gas_monto'
      'from'
      'liqgastos'
      'where'
      'emp_codigo = :emp'
      'and liq_numero = :num'
      'order by'
      'gas_secuencia')
    Left = 184
    Top = 361
    object QGastosLiqemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QGastosLiqgas_codigo: TIntegerField
      FieldName = 'gas_codigo'
    end
    object QGastosLiqliq_numero: TIntegerField
      FieldName = 'liq_numero'
    end
    object QGastosLiqgas_secuencia: TIntegerField
      FieldName = 'gas_secuencia'
    end
    object QGastosLiqgas_monto: TBCDField
      FieldName = 'gas_monto'
      currency = True
      Precision = 15
      Size = 2
    end
    object QGastosLiqNombre: TStringField
      FieldKind = fkLookup
      FieldName = 'Nombre'
      LookupDataSet = QGastos
      LookupKeyFields = 'gas_codigo'
      LookupResultField = 'gas_nombre'
      KeyFields = 'gas_codigo'
      Size = 65
      Lookup = True
    end
  end
  object dsGastosLiq: TDataSource
    DataSet = QGastosLiq
    Left = 216
    Top = 360
  end
  object QCuentas: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    AfterPost = QCuentasAfterPost
    AfterDelete = QCuentasAfterDelete
    Parameters = <
      item
        Name = 'emp'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'num'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'emp_codigo, liq_numero,'
      'det_secuencia, cat_nombre, det_monto, det_origen, cat_cuenta'
      'from'
      'contdet_liquidacion'
      'where'
      'emp_codigo = :emp'
      'and liq_numero = :num'
      'order by'
      'det_secuencia')
    Left = 408
    Top = 296
    object QCuentasemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QCuentasliq_numero: TIntegerField
      FieldName = 'liq_numero'
    end
    object QCuentasdet_secuencia: TIntegerField
      FieldName = 'det_secuencia'
    end
    object QCuentascat_nombre: TStringField
      FieldName = 'cat_nombre'
      Size = 60
    end
    object QCuentasdet_monto: TBCDField
      FieldName = 'det_monto'
      currency = True
      Precision = 15
      Size = 2
    end
    object QCuentasdet_origen: TStringField
      FieldName = 'det_origen'
      Size = 7
    end
    object QCuentascat_cuenta: TStringField
      FieldName = 'cat_cuenta'
      OnChange = QCuentascat_cuentaChange
      Size = 15
    end
  end
  object dsCuentas: TDataSource
    DataSet = QCuentas
    Left = 440
    Top = 296
  end
  object qEjecutar: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 320
    Top = 360
  end
end
