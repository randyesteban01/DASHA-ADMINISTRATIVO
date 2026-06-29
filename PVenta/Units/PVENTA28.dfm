object frmConduce: TfrmConduce
  Left = 479
  Top = 77
  ActiveControl = DBEdit5
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Conduce [Salida de Almacen]'
  ClientHeight = 620
  ClientWidth = 788
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 788
    Height = 227
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 32
      Width = 29
      Height = 13
      Caption = 'Fecha'
    end
    object Label7: TLabel
      Left = 8
      Top = 80
      Width = 40
      Height = 13
      Caption = 'Almacen'
    end
    object btpedido: TSpeedButton
      Left = 352
      Top = 128
      Width = 101
      Height = 21
      Caption = 'Pedido Cliente'
      Enabled = False
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
      OnClick = btpedidoClick
    end
    object Label8: TLabel
      Left = 8
      Top = 56
      Width = 40
      Height = 13
      Caption = 'Sucursal'
    end
    object btalmacen: TSpeedButton
      Left = 108
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
      OnClick = btalmacenClick
    end
    object Label9: TLabel
      Left = 8
      Top = 104
      Width = 33
      Height = 13
      Caption = 'Depto.'
    end
    object btdepto: TSpeedButton
      Left = 108
      Top = 104
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
      OnClick = btdeptoClick
    end
    object Label12: TLabel
      Left = 8
      Top = 128
      Width = 46
      Height = 13
      Caption = 'Vendedor'
    end
    object btVendedor: TSpeedButton
      Left = 109
      Top = 128
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
      OnClick = btVendedorClick
    end
    object SpeedButton2: TSpeedButton
      Left = 534
      Top = 128
      Width = 73
      Height = 21
      Caption = 'Entrada'
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
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 608
      Top = 128
      Width = 73
      Height = 21
      Caption = 'Orden'
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
      OnClick = SpeedButton3Click
    end
    object DBText1: TDBText
      Left = 56
      Top = 9
      Width = 113
      Height = 17
      DataField = 'CON_NUMERO'
      DataSource = dsConduce
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btfactura: TSpeedButton
      Left = 280
      Top = 128
      Width = 71
      Height = 21
      Caption = 'Factura'
      Enabled = False
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
      OnClick = btfacturaClick
    end
    object btcotizacion: TSpeedButton
      Left = 455
      Top = 128
      Width = 78
      Height = 21
      Caption = 'Cotizaci'#243'n'
      Enabled = False
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
      OnClick = btcotizacionClick
    end
    object Label18: TLabel
      Left = 10
      Top = 8
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
    end
    object lbLocSuc: TLabel
      Left = 4
      Top = 156
      Width = 44
      Height = 13
      Caption = 'Localidad'
    end
    object btLocalidad: TSpeedButton
      Left = 109
      Top = 154
      Width = 22
      Height = 19
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
      OnClick = btLocalidadClick
    end
    object btnConcepto: TSpeedButton
      Left = 0
      Top = 176
      Width = 57
      Height = 22
      Caption = 'Concepto'
      Flat = True
      OnClick = btnConceptoClick
    end
    object DBEdit5: TDBEdit
      Left = 56
      Top = 32
      Width = 73
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'CON_FECHA'
      DataSource = dsConduce
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object tAlmacen: TEdit
      Left = 136
      Top = 80
      Width = 137
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
    object dbAlmacen: TDBEdit
      Left = 56
      Top = 80
      Width = 49
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'ALM_CODIGO'
      DataSource = dsConduce
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 56
      Top = 56
      Width = 217
      Height = 21
      DataField = 'SUC_CODIGO'
      DataSource = dsConduce
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
      TabOrder = 1
    end
    object rgtipo: TRadioGroup
      Left = 184
      Top = 2
      Width = 89
      Height = 52
      ItemIndex = 0
      Items.Strings = (
        'Salida'
        'Conduce')
      TabOrder = 0
      OnClick = rgtipoClick
    end
    object tDepto: TEdit
      Left = 136
      Top = 104
      Width = 137
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
    object DBEdit8: TDBEdit
      Left = 56
      Top = 104
      Width = 49
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'DEP_CODIGO'
      DataSource = dsConduce
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object dbVendedor: TDBEdit
      Left = 56
      Top = 128
      Width = 49
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'VEN_CODIGO'
      DataSource = dsConduce
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object tVendedor: TEdit
      Left = 136
      Top = 128
      Width = 137
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object PageControl1: TPageControl
      Left = 276
      Top = 4
      Width = 409
      Height = 117
      ActivePage = TabSheet2
      TabOrder = 9
      object TabSheet2: TTabSheet
        Caption = 'Proveedor'
        ImageIndex = 1
        object Label6: TLabel
          Left = 8
          Top = 8
          Width = 33
          Height = 13
          Caption = 'Codigo'
        end
        object btbuscasup: TSpeedButton
          Left = 109
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
          OnClick = btbuscasupClick
        end
        object Label10: TLabel
          Left = 8
          Top = 32
          Width = 43
          Height = 13
          Caption = 'Direcci'#243'n'
        end
        object Label13: TLabel
          Left = 8
          Top = 56
          Width = 44
          Height = 13
          Caption = 'Localidad'
        end
        object Label14: TLabel
          Left = 280
          Top = 56
          Width = 42
          Height = 13
          Caption = 'Tel'#233'fono'
        end
        object edProveedor: TEdit
          Left = 64
          Top = 8
          Width = 41
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
          TabOrder = 0
          OnKeyDown = edProveedorKeyDown
        end
        object DBEdit4: TDBEdit
          Left = 64
          Top = 32
          Width = 337
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'CON_DIRECCION'
          DataSource = dsConduce
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit13: TDBEdit
          Left = 64
          Top = 56
          Width = 209
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'CON_LOCALIDAD'
          DataSource = dsConduce
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit14: TDBEdit
          Left = 328
          Top = 56
          Width = 73
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'CON_TELEFONO'
          DataSource = dsConduce
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit15: TDBEdit
          Left = 136
          Top = 8
          Width = 265
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'CON_NOMBRE'
          DataSource = dsConduce
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Cliente'
        object Label2: TLabel
          Left = 8
          Top = 8
          Width = 33
          Height = 13
          Caption = 'Codigo'
        end
        object btBuscaCli: TSpeedButton
          Left = 109
          Top = 8
          Width = 23
          Height = 22
          Enabled = False
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
          OnClick = btBuscaCliClick
        end
        object Label3: TLabel
          Left = 8
          Top = 32
          Width = 43
          Height = 13
          Caption = 'Direcci'#243'n'
        end
        object Label4: TLabel
          Left = 8
          Top = 56
          Width = 44
          Height = 13
          Caption = 'Localidad'
        end
        object Label5: TLabel
          Left = 280
          Top = 56
          Width = 42
          Height = 13
          Caption = 'Tel'#233'fono'
        end
        object edCliente: TEdit
          Left = 64
          Top = 8
          Width = 41
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyDown = edClienteKeyDown
        end
        object DBEdit1: TDBEdit
          Left = 64
          Top = 32
          Width = 337
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'CON_DIRECCION'
          DataSource = dsConduce
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit2: TDBEdit
          Left = 64
          Top = 56
          Width = 209
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'CON_LOCALIDAD'
          DataSource = dsConduce
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit3: TDBEdit
          Left = 328
          Top = 56
          Width = 73
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'CON_TELEFONO'
          DataSource = dsConduce
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 136
          Top = 8
          Width = 265
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'CON_NOMBRE'
          DataSource = dsConduce
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Informacion del Cami'#243'n'
        ImageIndex = 2
        object Label15: TLabel
          Left = 8
          Top = 8
          Width = 25
          Height = 13
          Caption = 'Placa'
        end
        object btcamion: TSpeedButton
          Left = 139
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
          OnClick = btcamionClick
        end
        object Label17: TLabel
          Left = 8
          Top = 32
          Width = 36
          Height = 13
          Caption = '#Ticket'
          FocusControl = DBEdit17
        end
        object DBEdit16: TDBEdit
          Left = 64
          Top = 8
          Width = 73
          Height = 21
          TabStop = False
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'Placa'
          DataSource = dsConduce
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object memocamion: TMemo
          Left = 168
          Top = 0
          Width = 233
          Height = 89
          Align = alRight
          BevelKind = bkFlat
          BorderStyle = bsNone
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit17: TDBEdit
          Left = 64
          Top = 32
          Width = 73
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'Ticket'
          DataSource = dsConduce
          TabOrder = 1
        end
      end
    end
    object chkMail: TCheckBox
      Left = 126
      Top = 9
      Width = 53
      Height = 14
      Alignment = taLeftJustify
      Caption = 'Correo'
      TabOrder = 10
    end
    object dbedtcont_numeroSucursal: TDBEdit
      Left = 56
      Top = 152
      Width = 46
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'cont_numeroSucursal'
      DataSource = dsConduce
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnChange = dbedtcont_numeroSucursalChange
      OnKeyDown = dbedtcont_numeroSucursalKeyDown
    end
    object TSucLoc: TEdit
      Left = 137
      Top = 152
      Width = 544
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
      TabOrder = 12
    end
    object dbedtCON_CONCEPTO1: TDBEdit
      Left = 56
      Top = 176
      Width = 377
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'CON_CONCEPTO1'
      DataSource = dsConduce
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
    object dbedtCON_CONCEPTO2: TDBEdit
      Left = 56
      Top = 200
      Width = 377
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'CON_CONCEPTO2'
      DataSource = dsConduce
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 527
    Width = 788
    Height = 93
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Label11: TLabel
      Left = 554
      Top = 6
      Width = 42
      Height = 13
      Caption = 'SubTotal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 545
      Top = 26
      Width = 51
      Height = 13
      Caption = 'Descuento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbItbis: TLabel
      Left = 575
      Top = 46
      Width = 21
      Height = 13
      Caption = 'Itbis'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btBuscar: TSpeedButton
      Left = 416
      Top = 6
      Width = 121
      Height = 25
      Caption = 'Buscar conduce'
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
      OnClick = btBuscarClick
    end
    object btGrabar: TSpeedButton
      Left = 8
      Top = 35
      Width = 129
      Height = 25
      Caption = '[ F2 ] - Grabar/Imprimir'
      OnClick = btGrabarClick
    end
    object btLimpiar: TSpeedButton
      Left = 144
      Top = 35
      Width = 129
      Height = 25
      Caption = '[ F3 ] - Limpiar/Nueva'
      OnClick = btLimpiarClick
    end
    object btSalir: TSpeedButton
      Left = 416
      Top = 62
      Width = 121
      Height = 25
      Caption = '[ F10 ] - Cancelar/Salir'
      OnClick = btSalirClick
    end
    object btBuscaProd: TSpeedButton
      Left = 280
      Top = 35
      Width = 129
      Height = 25
      Caption = '[ F4 ] - Buscar producto'
      OnClick = btBuscaProdClick
    end
    object btElimina: TSpeedButton
      Left = 8
      Top = 62
      Width = 129
      Height = 25
      Caption = '[ F6 ] - Eliminar fila      '
      OnClick = btEliminaClick
    end
    object btBuscaCliente: TSpeedButton
      Left = 416
      Top = 35
      Width = 121
      Height = 25
      Caption = '[ F5 ] - Buscar Cliente  '
      OnClick = btBuscaClienteClick
    end
    object btserie: TSpeedButton
      Left = 280
      Top = 62
      Width = 129
      Height = 25
      Caption = '[ F8 ] - Numeros de serie'
      OnClick = btserieClick2
    end
    object btBuscaProdProv: TSpeedButton
      Left = 256
      Top = 5
      Width = 153
      Height = 25
      Caption = '[ F12 ] - Productos proveedor'
      OnClick = btBuscaProdProvClick
    end
    object Label19: TLabel
      Left = 572
      Top = 66
      Width = 24
      Height = 13
      Caption = 'Total'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbpendiente: TLabel
      Left = 8
      Top = 8
      Width = 131
      Height = 13
      Caption = '0 pendiente despachar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object btPrecio: TSpeedButton
      Left = 144
      Top = 62
      Width = 129
      Height = 25
      Caption = '[ F7 ] - Selecci'#243'n precio'
      OnClick = btPrecioClick
    end
    object GridSerie: TStringGrid
      Left = 48
      Top = 0
      Width = 105
      Height = 45
      ColCount = 2
      DefaultRowHeight = 18
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Visible = False
    end
    object DBEdit9: TDBEdit
      Tag = 1
      Left = 599
      Top = 3
      Width = 81
      Height = 21
      TabStop = False
      AutoSelect = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'SubTotal'
      DataSource = dsConduce
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit10: TDBEdit
      Tag = 1
      Left = 599
      Top = 23
      Width = 81
      Height = 21
      TabStop = False
      AutoSelect = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'CON_DESCUENTO'
      DataSource = dsConduce
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit11: TDBEdit
      Tag = 1
      Left = 599
      Top = 43
      Width = 81
      Height = 21
      TabStop = False
      AutoSelect = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'CON_ITBIS'
      DataSource = dsConduce
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit12: TDBEdit
      Tag = 1
      Left = 599
      Top = 63
      Width = 81
      Height = 21
      TabStop = False
      AutoSelect = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'CON_TOTAL'
      DataSource = dsConduce
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object lbFacturado: TStaticText
      Left = 144
      Top = 8
      Width = 109
      Height = 17
      BorderStyle = sbsSunken
      Caption = ' [ FACTURADO ] '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object edt1: TEdit
      Left = 128
      Top = 72
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 6
      Visible = False
    end
    object DBGrid_1: TDBGrid
      Left = -1
      Top = -4
      Width = 737
      Height = 97
      DataSource = DS_1
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs]
      TabOrder = 7
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Visible = False
      OnDblClick = DBGrid_1DblClick
      OnKeyPress = DBGrid_1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'Codigo'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE'
          Title.Caption = 'Nombre'
          Width = 423
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECIO'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EXIST'
          Width = 37
          Visible = True
        end>
    end
  end
  object PageControl2: TPageControl
    Left = 0
    Top = 227
    Width = 788
    Height = 300
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 2
    object TabSheet4: TTabSheet
      Caption = 'Productos'
      object Grid: TDBGrid
        Left = 0
        Top = 0
        Width = 780
        Height = 272
        Align = alClient
        Ctl3D = False
        DataSource = dsDetalle
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        PopupMenu = PopupMenu1
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
            FieldName = 'PRO_CODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 66
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'PRO_NOMBRE'
            ReadOnly = True
            Title.Caption = 'Descripci'#243'n del Producto'
            Width = 116
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DET_CANTIDAD'
            Title.Alignment = taCenter
            Title.Caption = 'Cant'
            Width = 32
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DET_MEDIDA'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Medida'
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'det_cantempaque'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Cant/Emp'
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_unidad_medida'
            Title.Alignment = taCenter
            Title.Caption = 'Medida'
            Width = 43
            Visible = True
          end
          item
            Alignment = taCenter
            Color = clInfoBk
            Expanded = False
            FieldName = 'DET_ESCALA'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Escala'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DET_PRECIO'
            Title.Alignment = taCenter
            Title.Caption = 'Precio'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DET_DESCUENTO'
            Title.Alignment = taCenter
            Title.Caption = 'Desc'
            Width = 31
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'CalcItbis'
            Title.Alignment = taCenter
            Title.Caption = 'Itbis'
            Width = 60
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DET_FECHAVENCE'
            Title.Alignment = taCenter
            Title.Caption = 'Vence'
            Width = 61
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'Valor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 68
            Visible = True
          end>
      end
      object mmo1: TMemo
        Left = 558
        Top = 196
        Width = 185
        Height = 89
        Lines.Strings = (
          'mmo1')
        TabOrder = 1
        Visible = False
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Cuentas contables'
      ImageIndex = 1
      object spcentros: TSpeedButton
        Left = 515
        Top = 113
        Width = 66
        Height = 22
        Caption = 'Centros'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFCFCFCDBDBDB6060606A6A6A6F6F6F6E6E6EC1C1C1D3D3D37272726F6F
          6F6A6A6A606060DBDBDBFFFFFFFFFFFFFFFFFFDCDCDC686868939393AFAFAFAD
          ADAD969696707070777777969696ADADADAFAFAF939393686868FFFFFFFFFFFF
          FFFFFFA8A8A8707070D3D3CE8181814444444545455050505050504545454444
          44818181C3C3C3707070FFFFFFA2C9EE76B1E6375D7E7E8184D3D3CE3489D43D
          4145BCBCBCCECECEC1C1C1ACACAC3D4145388BD4C3C3C3858585FFFFFF4698DD
          DEF1FA82A7B775787AD3D3CE667C834B4C4C6464649191917878786464644A4C
          4C758185C3C3C37A7A7AFFFFFF3A96DBEFFAFE9DE5F46B919A909090E8E8E8DD
          DDDDC0C0C0788B8F6A8E96D4D9DADDDDDDC3C3C39090909E9E9EFFFFFF3B9CDB
          F2FAFDB2EDFA9FE2F180ACB6848A8C9D9D9D7886895BBFD74BCAE672868B9D9D
          9D898B8C5084A6F7F7F7FFFFFF3AA2DBF6FCFEC8F2FCB8EFFBABECFA9BE8F98A
          E3F77BE0F66BDCF65CD9F54ED6F443D3F3D0F3FC3AA1DBFFFFFFFFFFFF3AA7DB
          FEFFFFF8FDFFF6FDFFF5FCFFF3FCFED8F6FC93E6F884E3F775DFF667DBF55BD8
          F4D7F4FC3AA6DBFFFFFFFFFFFF38ACDBE8F6FB93D4EF87CEEE72C0E9C9E9F6F2
          FCFEF3FCFEF2FCFEF0FCFEEFFBFEEEFBFEFEFFFF3BADDBFFFFFFFFFFFF3FADDC
          F1FAFD93DEF592DCF480D5F269CAED6BCBEA84D3EF7FD2EF79D0EF75CFEE71CF
          EEE9F7FB3DB1DCFFFFFFFFFFFF40B3DCF7FCFE8DE4F890DEF59EE0F5ABE1F6EF
          FBFEF4FDFEF3FCFEF1FCFEEFFBFEEEFBFEFAFDFF57BCE0FFFFFFFFFFFF3BB4DB
          FDFEFEFEFFFFFEFEFFFDFEFFFEFFFFEAF7FB6EC8E56EC9E46EC9E46EC9E47CCF
          E783D0E8BAE4F2FFFFFFFFFFFF59C1E060C2E262C3E362C3E362C3E361C3E355
          BFE0EDF8FCF3FAFDF3FAFDF3FAFDF3FAFDF3FAFDFCFEFEFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = spcentrosClick
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 30
        Height = 240
        Align = alLeft
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object bteliminacuenta: TSpeedButton
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
          OnClick = bteliminacuentaClick
        end
        object btbuscacuenta: TSpeedButton
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
          OnClick = btbuscacuentaClick
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 240
        Width = 780
        Height = 32
        Align = alBottom
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 1
        DesignSize = (
          780
          32)
        object Label24: TLabel
          Left = 7
          Top = 8
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
          Left = 175
          Top = 8
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
          Left = 343
          Top = 8
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
        object lbBAL: TStaticText
          Left = 399
          Top = 8
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
          TabOrder = 0
        end
        object lbDB: TStaticText
          Left = 231
          Top = 8
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
          TabOrder = 1
        end
        object lbCR: TStaticText
          Left = 63
          Top = 8
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
      end
      object GridCuentas: TDBGrid
        Left = 30
        Top = 0
        Width = 750
        Height = 240
        Align = alClient
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
        TabOrder = 2
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
            Width = 383
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
    end
  end
  object Panel4: TPanel
    Left = 448
    Top = 153
    Width = 237
    Height = 21
    BevelOuter = bvNone
    TabOrder = 3
    object dblExistencia: TDBText
      Left = 161
      Top = 0
      Width = 76
      Height = 21
      Align = alRight
      Alignment = taRightJustify
      AutoSize = True
      DataField = 'DISPONIBLE2'
      DataSource = dsMsnExistencia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object pnCorreo: TPanel
    Left = 282
    Top = 204
    Width = 185
    Height = 41
    Caption = 'Enviando correo, favor espere......'
    TabOrder = 4
    Visible = False
  end
  object QConduce: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = QConduceAfterOpen
    AfterEdit = QConduceAfterEdit
    BeforePost = QConduceBeforePost
    OnCalcFields = QConduceCalcFields
    OnNewRecord = QConduceNewRecord
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
        Name = 'numero'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'suc'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select '
      'CLI_CODIGO, CLI_REFERENCIA, CON_DIRECCION, CON_FAX, '
      
        'CON_FECHA, CON_FECHA_HORA, CON_LOCALIDAD, CON_NUMERO, CON_STATUS' +
        ', '
      'CON_TELEFONO, CON_TOTAL, EMP_CODIGO, ALM_CODIGO, '
      'CON_NOMBRE, USU_CODIGO, CON_FACTURADO,'
      'PED_TIPO, PED_NUMERO, SUC_CODIGO, DEP_CODIGO,'
      'CON_DESCUENTO, CON_ITBIS, VEN_CODIGO, ent_numero,'
      'sup_codigo, fac_forma, tfa_codigo, fac_numero, CamionID,'
      
        'Ticket, Marca, Modelo, Placa, Chofer, Metraje, Compania,inv_exis' +
        'tencia_cero, cont_numeroSucursal,'
      'CON_CONCEPTO1, CON_CONCEPTO2'
      'from '
      'CONDUCE'
      'where '
      'emp_Codigo = :emp'
      'and con_numero = :numero'
      'and suc_codigo = :suc')
    Left = 376
    Top = 216
    object QConduceCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = 'CONDUCE.CLI_CODIGO'
    end
    object QConduceCLI_REFERENCIA: TIBStringField
      FieldName = 'CLI_REFERENCIA'
      Origin = 'CONDUCE.CLI_REFERENCIA'
      Size = 10
    end
    object QConduceCON_DIRECCION: TIBStringField
      FieldName = 'CON_DIRECCION'
      Origin = 'CONDUCE.CON_DIRECCION'
      Size = 60
    end
    object QConduceCON_FAX: TIBStringField
      FieldName = 'CON_FAX'
      Origin = 'CONDUCE.CON_FAX'
      Size = 30
    end
    object QConduceCON_FECHA: TDateTimeField
      FieldName = 'CON_FECHA'
      Origin = 'CONDUCE.CON_FECHA'
      EditMask = 'cc-cc-cccc'
    end
    object QConduceCON_LOCALIDAD: TIBStringField
      FieldName = 'CON_LOCALIDAD'
      Origin = 'CONDUCE.CON_LOCALIDAD'
      Size = 60
    end
    object QConduceCON_NUMERO: TIntegerField
      FieldName = 'CON_NUMERO'
      Origin = 'CONDUCE.CON_NUMERO'
      DisplayFormat = '000000'
    end
    object QConduceCON_STATUS: TIBStringField
      FieldName = 'CON_STATUS'
      Origin = 'CONDUCE.CON_STATUS'
      Size = 3
    end
    object QConduceCON_TELEFONO: TIBStringField
      FieldName = 'CON_TELEFONO'
      Origin = 'CONDUCE.CON_TELEFONO'
      Size = 30
    end
    object QConduceEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'CONDUCE.EMP_CODIGO'
    end
    object QConduceALM_CODIGO: TIntegerField
      FieldName = 'ALM_CODIGO'
      Origin = 'CONDUCE.ALM_CODIGO'
      OnGetText = QConduceALM_CODIGOGetText
    end
    object QConduceCON_NOMBRE: TIBStringField
      FieldName = 'CON_NOMBRE'
      Origin = 'CONDUCE.CON_NOMBRE'
      Size = 60
    end
    object QConduceUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Origin = 'CONDUCE.USU_CODIGO'
    end
    object QConduceCON_FACTURADO: TIBStringField
      FieldName = 'CON_FACTURADO'
      Origin = 'CONDUCE.CON_FACTURADO'
      Size = 1
    end
    object QConducePED_TIPO: TStringField
      FieldName = 'PED_TIPO'
      Size = 1
    end
    object QConducePED_NUMERO: TIntegerField
      FieldName = 'PED_NUMERO'
    end
    object QConduceSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
      OnChange = QConduceSUC_CODIGOChange
    end
    object QConduceDEP_CODIGO: TIntegerField
      FieldName = 'DEP_CODIGO'
      OnGetText = QConduceDEP_CODIGOGetText
    end
    object QConduceCON_DESCUENTO: TBCDField
      FieldName = 'CON_DESCUENTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object QConduceSubTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SubTotal'
      currency = True
      Calculated = True
    end
    object QConduceCON_ITBIS: TBCDField
      FieldName = 'CON_ITBIS'
      OnChange = QConduceCON_ITBISChange
      currency = True
      Precision = 15
      Size = 2
    end
    object QConduceVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
      OnGetText = QConduceVEN_CODIGOGetText
    end
    object QConduceent_numero: TIntegerField
      FieldName = 'ent_numero'
    end
    object QConducesup_codigo: TIntegerField
      FieldName = 'sup_codigo'
    end
    object QConducefac_forma: TStringField
      FieldName = 'fac_forma'
      Size = 1
    end
    object QConducetfa_codigo: TIntegerField
      FieldName = 'tfa_codigo'
    end
    object QConducefac_numero: TIntegerField
      FieldName = 'fac_numero'
    end
    object QConduceCamionID: TIntegerField
      FieldName = 'CamionID'
    end
    object QConduceTicket: TStringField
      FieldName = 'Ticket'
    end
    object QConduceMarca: TStringField
      FieldName = 'Marca'
      Size = 50
    end
    object QConduceModelo: TStringField
      FieldName = 'Modelo'
      Size = 50
    end
    object QConducePlaca: TStringField
      FieldName = 'Placa'
      OnChange = QConducePlacaChange
    end
    object QConduceChofer: TStringField
      FieldName = 'Chofer'
      Size = 50
    end
    object QConduceMetraje: TBCDField
      FieldName = 'Metraje'
      Precision = 18
      Size = 2
    end
    object QConduceCompania: TStringField
      FieldName = 'Compania'
      Size = 100
    end
    object QConduceinv_existencia_cero: TStringField
      FieldName = 'inv_existencia_cero'
      Size = 1
    end
    object QConducecont_numeroSucursal: TStringField
      FieldName = 'cont_numeroSucursal'
      Size = 5
    end
    object QConduceCON_CONCEPTO1: TStringField
      FieldName = 'CON_CONCEPTO1'
      Size = 255
    end
    object QConduceCON_CONCEPTO2: TStringField
      FieldName = 'CON_CONCEPTO2'
      Size = 255
    end
    object QConduceCON_TOTAL: TCurrencyField
      FieldName = 'CON_TOTAL'
      OnChange = QConduceCON_TOTALChange
      DisplayFormat = '#,0.00'
    end
    object QConduceCON_FECHA_HORA: TDateTimeField
      FieldName = 'CON_FECHA_HORA'
    end
  end
  object dsConduce: TDataSource
    DataSet = QConduce
    OnStateChange = dsConduceStateChange
    OnDataChange = dsConduceDataChange
    Left = 408
    Top = 216
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    AfterInsert = QDetalleAfterInsert
    BeforeEdit = QDetalleBeforeEdit
    AfterEdit = QDetalleAfterEdit
    BeforePost = QDetalleBeforePost
    AfterPost = QDetalleAfterPost
    AfterDelete = QDetalleAfterDelete
    OnCalcFields = QDetalleCalcFields
    OnNewRecord = QDetalleNewRecord
    Parameters = <
      item
        Name = 'DEP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'emp'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'suc'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'NUM'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @DEP INT, @EMP INT, @SUC INT, @NUMERO INT'
      'SET @DEP = :DEP'
      'SET @EMP = :EMP'
      'SET @SUC =:SUC'
      'SET @NUMERO = :NUM'
      'select '
      'CON_NUMERO, DET_CANTIDAD,'
      'COT_CANTIDAD,'
      'ENTREGA_CANT,'
      'DET_CONITBIS, DET_ITBIS, '
      'DET_PRECIO, DET_SECUENCIA, EMP_CODIGO, PRO_BARRA, '
      'PRO_CODIGO, PRO_NOMBRE, PRO_RFABRIC, PRO_RORIGINAL,'
      'DET_LOTE, DET_VENCE, DET_FECHAVENCE, DET_ESCALA,'
      'DET_MANEJAESCALA, DET_MEDIDA, DET_PRECIO1,'
      'DET_PRECIO2, DET_PRECIO3, DET_PRECIO4,'
      'DET_COSTOUND, DET_COSTOEMP, SUC_CODIGO,'
      'DET_DESCUENTO, DET_NOTA,'
      'det_facturado, UnidadID, pro_unidad_medida,'
      'det_cantempaque, Medida_Precio1, Medida_Precio2,'
      'Medida_Precio3, Medida_Precio4, det_cant_unidad_medida,'
      'pro_ctacosto, pro_ctainvent, pro_ctaingreso, pro_ctadescuento,'
      'pro_Serializado'
      'from '
      'DET_CONDUCE DC'
      'where emp_codigo = @emp'
      'and con_numero = @numero'
      'and suc_codigo = @suc'
      'order by det_secuencia')
    Left = 376
    Top = 248
    object QDetalleCON_NUMERO: TIntegerField
      FieldName = 'CON_NUMERO'
      Origin = 'DET_CONDUCE.CON_NUMERO'
    end
    object QDetalleDET_CANTIDAD: TFloatField
      FieldName = 'DET_CANTIDAD'
      Origin = 'DET_CONDUCE.DET_CANTIDAD'
      OnGetText = QDetalleDET_CANTIDADGetText
    end
    object QDetalleDET_CONITBIS: TIBStringField
      FieldName = 'DET_CONITBIS'
      Origin = 'DET_CONDUCE.DET_CONITBIS'
      Size = 1
    end
    object QDetalleDET_ITBIS: TFloatField
      FieldName = 'DET_ITBIS'
      Origin = 'DET_CONDUCE.DET_ITBIS'
    end
    object QDetalleDET_PRECIO: TFloatField
      FieldName = 'DET_PRECIO'
      Origin = 'DET_CONDUCE.DET_PRECIO'
      currency = True
    end
    object QDetalleDET_SECUENCIA: TIntegerField
      FieldName = 'DET_SECUENCIA'
      Origin = 'DET_CONDUCE.DET_SECUENCIA'
      DisplayFormat = '00'
    end
    object QDetalleEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'DET_CONDUCE.EMP_CODIGO'
    end
    object QDetallePRO_BARRA: TIBStringField
      FieldName = 'PRO_BARRA'
      Origin = 'DET_CONDUCE.PRO_BARRA'
      Size = 30
    end
    object QDetallePRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'DET_CONDUCE.PRO_CODIGO'
      OnChange = QDetallePRO_CODIGOChange
    end
    object QDetallePRO_NOMBRE: TIBStringField
      FieldName = 'PRO_NOMBRE'
      Origin = 'DET_CONDUCE.PRO_NOMBRE'
      Size = 60
    end
    object QDetallePRO_RFABRIC: TIBStringField
      FieldName = 'PRO_RFABRIC'
      Origin = 'DET_CONDUCE.PRO_RFABRIC'
      OnChange = QDetallePRO_RFABRICChange
      Size = 60
    end
    object QDetallePRO_RORIGINAL: TIBStringField
      FieldName = 'PRO_RORIGINAL'
      Origin = 'DET_CONDUCE.PRO_RORIGINAL'
      OnChange = QDetallePRO_RORIGINALChange
      Size = 50
    end
    object QDetalleValor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor'
      currency = True
      Calculated = True
    end
    object QDetalleDET_LOTE: TIntegerField
      FieldName = 'DET_LOTE'
      Origin = 'DET_CONDUCE.DET_LOTE'
    end
    object QDetalleDET_VENCE: TIBStringField
      FieldName = 'DET_VENCE'
      Origin = 'DET_CONDUCE.DET_VENCE'
      Size = 5
    end
    object QDetalleDET_FECHAVENCE: TDateTimeField
      FieldName = 'DET_FECHAVENCE'
      Origin = 'DET_CONDUCE.DET_FECHAVENCE'
      EditMask = 'cc-cc-cccc'
    end
    object QDetalleDET_ESCALA: TIBStringField
      FieldName = 'DET_ESCALA'
      Origin = 'DET_CONDUCE.DET_ESCALA'
      Size = 5
    end
    object QDetalleDET_MANEJAESCALA: TIBStringField
      FieldName = 'DET_MANEJAESCALA'
      Origin = 'DET_CONDUCE.DET_MANEJAESCALA'
      Size = 5
    end
    object QDetalleDET_MEDIDA: TIBStringField
      DisplayWidth = 20
      FieldName = 'DET_MEDIDA'
      Origin = 'DET_CONDUCE.DET_MEDIDA'
      OnChange = QDetalleDET_MEDIDAChange
    end
    object QDetalleDET_PRECIO1: TFloatField
      FieldName = 'DET_PRECIO1'
      Origin = 'DET_CONDUCE.DET_PRECIO1'
    end
    object QDetalleDET_PRECIO2: TFloatField
      FieldName = 'DET_PRECIO2'
      Origin = 'DET_CONDUCE.DET_PRECIO2'
    end
    object QDetalleDET_PRECIO3: TFloatField
      FieldName = 'DET_PRECIO3'
      Origin = 'DET_CONDUCE.DET_PRECIO3'
    end
    object QDetalleDET_PRECIO4: TFloatField
      FieldName = 'DET_PRECIO4'
      Origin = 'DET_CONDUCE.DET_PRECIO4'
    end
    object QDetalleDET_COSTOUND: TFloatField
      FieldName = 'DET_COSTOUND'
      Origin = 'DET_CONDUCE.DET_COSTOUND'
    end
    object QDetalleDET_COSTOEMP: TFloatField
      FieldName = 'DET_COSTOEMP'
      Origin = 'DET_CONDUCE.DET_COSTOEMP'
    end
    object QDetalleSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QDetalleDET_DESCUENTO: TBCDField
      FieldName = 'DET_DESCUENTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object QDetalleCalcDesc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcDesc'
      currency = True
      Calculated = True
    end
    object QDetalleCalcItbis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcItbis'
      currency = True
      Calculated = True
    end
    object QDetallePrecioItbis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PrecioItbis'
      Calculated = True
    end
    object QDetalleDET_NOTA: TMemoField
      FieldName = 'DET_NOTA'
      BlobType = ftMemo
    end
    object QDetalledet_facturado: TBCDField
      FieldName = 'det_facturado'
      Precision = 15
      Size = 2
    end
    object QDetalleUnidadID: TStringField
      FieldName = 'UnidadID'
      Size = 1
    end
    object QDetallepro_unidad_medida: TStringField
      FieldName = 'pro_unidad_medida'
      OnChange = QDetallepro_unidad_medidaChange
    end
    object QDetalledet_cantempaque: TBCDField
      FieldName = 'det_cantempaque'
      Precision = 15
      Size = 2
    end
    object QDetalleMedida_Precio1: TBCDField
      FieldName = 'Medida_Precio1'
      Precision = 18
      Size = 2
    end
    object QDetalleMedida_Precio2: TBCDField
      FieldName = 'Medida_Precio2'
      Precision = 18
      Size = 2
    end
    object QDetalleMedida_Precio3: TBCDField
      FieldName = 'Medida_Precio3'
      Precision = 18
      Size = 2
    end
    object QDetalleMedida_Precio4: TBCDField
      FieldName = 'Medida_Precio4'
      Precision = 18
      Size = 2
    end
    object QDetalledet_cant_unidad_medida: TBCDField
      FieldName = 'det_cant_unidad_medida'
      Precision = 18
      Size = 2
    end
    object QDetallepro_ctacosto: TStringField
      FieldName = 'pro_ctacosto'
      Size = 15
    end
    object QDetallepro_ctainvent: TStringField
      FieldName = 'pro_ctainvent'
      Size = 15
    end
    object QDetallepro_ctaingreso: TStringField
      FieldName = 'pro_ctaingreso'
      Size = 15
    end
    object QDetallepro_ctadescuento: TStringField
      FieldName = 'pro_ctadescuento'
      Size = 15
    end
    object QDetallepro_Serializado: TStringField
      FieldName = 'pro_Serializado'
      Size = 1
    end
    object QDetalleENTREGA_CANT: TCurrencyField
      FieldName = 'ENTREGA_CANT'
    end
    object QDetalleCOT_CANTIDAD: TCurrencyField
      FieldName = 'COT_CANTIDAD'
    end
  end
  object dsDetalle: TDataSource
    DataSet = QDetalle
    OnDataChange = dsDetalleDataChange
    Left = 408
    Top = 248
  end
  object Search: TQrySearchDlgADO
    AliasFields.Strings = (
      'Nombre'
      'Codigo')
    AliasName = DM.ADOSigma
    Left = 376
    Top = 280
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 408
    Top = 280
  end
  object QSucursal: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltReadOnly
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
    Left = 456
    Top = 216
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
    Left = 488
    Top = 216
  end
  object QUtil: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 240
    Top = 224
  end
  object QSerie: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    AfterInsert = QSerieAfterInsert
    OnNewRecord = QSerieNewRecord
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
        Name = 'suc'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'numero'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'PRO_CODIGO'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'emp_codigo, suc_codigo, con_numero,'
      'ser_secuencia, ser_numero, pro_codigo'
      'from'
      'Conduce_Serie'
      'where emp_codigo = :emp'
      'and suc_codigo = :suc'
      'and con_numero = :numero'
      'and pro_codigo= :PRO_CODIGO'
      'order by pro_codigo, ser_secuencia')
    Left = 344
    Top = 280
    object QSerieemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QSeriesuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QSeriecon_numero: TIntegerField
      FieldName = 'con_numero'
    end
    object QSerieser_secuencia: TIntegerField
      FieldName = 'ser_secuencia'
    end
    object QSerieser_numero: TStringField
      FieldName = 'ser_numero'
      Size = 30
    end
    object QSeriepro_codigo: TIntegerField
      FieldName = 'pro_codigo'
    end
  end
  object QCuentas: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    AfterPost = QCuentasAfterPost
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
        Name = 'suc'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'con'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'cat_cuenta, cat_nombre, det_origen, det_monto, emp_codigo,'
      'suc_codigo, det_secuencia, con_numero'
      'from'
      'contdet_conduce'
      'where'
      'emp_codigo = :emp'
      'and suc_codigo = :suc'
      'and con_numero = :con'
      'and det_secuencia is not null'
      'order by'
      'det_secuencia')
    Left = 456
    Top = 248
    object QCuentascat_cuenta: TStringField
      FieldName = 'cat_cuenta'
      OnChange = QCuentascat_cuentaChange
      Size = 15
    end
    object QCuentascat_nombre: TStringField
      FieldName = 'cat_nombre'
      Size = 60
    end
    object QCuentasdet_origen: TStringField
      FieldName = 'det_origen'
      Size = 7
    end
    object QCuentasdet_monto: TBCDField
      FieldName = 'det_monto'
      DisplayFormat = '#,0.00'
      currency = True
      Precision = 15
    end
    object QCuentasemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QCuentassuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QCuentasdet_secuencia: TIntegerField
      FieldName = 'det_secuencia'
    end
    object QCuentascon_numero: TIntegerField
      FieldName = 'con_numero'
    end
  end
  object dsCuentas: TDataSource
    DataSet = QCuentas
    Left = 488
    Top = 248
  end
  object QCentro: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
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
      end
      item
        Name = 'suc'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'emp_codigo, con_numero,'
      'cen_codigo, det_secuencia, cen_nombre, det_monto,'
      'suc_codigo, cat_cuenta, cen_referencia, sub_referencia,'
      'sub_secuencia'
      'from'
      'ConduceCentroCostos'
      'where'
      'emp_codigo = :emp'
      'and con_numero = :num'
      'and suc_codigo = :suc'
      'order by'
      'det_Secuencia')
    Left = 456
    Top = 280
    object QCentroemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QCentrocon_numero: TIntegerField
      FieldName = 'con_numero'
    end
    object QCentrocen_codigo: TIntegerField
      FieldName = 'cen_codigo'
    end
    object QCentrodet_secuencia: TIntegerField
      FieldName = 'det_secuencia'
    end
    object QCentrocen_nombre: TStringField
      FieldName = 'cen_nombre'
      Size = 60
    end
    object QCentrodet_monto: TBCDField
      FieldName = 'det_monto'
      Precision = 15
      Size = 2
    end
    object QCentrosuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QCentrocat_cuenta: TStringField
      FieldName = 'cat_cuenta'
      Size = 5
    end
    object QCentrocen_referencia: TStringField
      FieldName = 'cen_referencia'
      Size = 10
    end
    object QCentrosub_referencia: TStringField
      FieldName = 'sub_referencia'
      Size = 50
    end
    object QCentrosub_secuencia: TIntegerField
      FieldName = 'sub_secuencia'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 280
    Top = 224
    object Crearnotaalproducto1: TMenuItem
      Caption = 'Nota en el producto'
      OnClick = Crearnotaalproducto1Click
    end
    object Vercombodelproducto1: TMenuItem
      Caption = 'Ver combo'
      OnClick = Vercombodelproducto1Click
    end
    object Escalas1: TMenuItem
      Caption = 'Escalas'
      OnClick = Escalas1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Consultarmovimiento1: TMenuItem
      Caption = 'Consultar movimientos'
      OnClick = Consultarmovimiento1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Pantalladeproductos1: TMenuItem
      Caption = 'Pantalla de productos'
      OnClick = Pantalladeproductos1Click
    end
    object Ajustedeinventario1: TMenuItem
      Caption = 'Pantalla de ajuste de inventario'
      OnClick = Ajustedeinventario1Click
    end
  end
  object QUnidades: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
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
        Name = 'pro'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'und'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'p.Precio, p.Cantidad, u.Nombre, p.Credito, p.Minimo, u.UnidadID'
      'from'
      'ProdUnidadMedida p, UnidadMedida u'
      'where'
      'p.emp_codigo = u.emp_codigo'
      'and p.UnidadID = u.UnidadID'
      'and p.emp_codigo = :emp'
      'and p.pro_codigo = :pro'
      'and u.Nombre = :und'
      '74642250')
    Left = 280
    Top = 256
    object QUnidadesPrecio: TBCDField
      FieldName = 'Precio'
      Precision = 18
      Size = 2
    end
    object QUnidadesCantidad: TBCDField
      FieldName = 'Cantidad'
      Precision = 18
      Size = 2
    end
    object QUnidadesNombre: TStringField
      FieldName = 'Nombre'
    end
    object QUnidadesCredito: TBCDField
      FieldName = 'Credito'
      Precision = 18
      Size = 2
    end
    object QUnidadesMinimo: TBCDField
      FieldName = 'Minimo'
      Precision = 18
      Size = 2
    end
    object QUnidadesUnidadID: TStringField
      FieldName = 'UnidadID'
      Size = 1
    end
  end
  object dsSerie: TDataSource
    DataSet = QSerie
    OnDataChange = dsSerieDataChange
    Left = 316
    Top = 249
  end
  object dsMsnExistencia: TDataSource
    DataSet = QMsnExistencia
    Left = 536
    Top = 240
  end
  object QMsnExistencia: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsDetalle
    Parameters = <
      item
        Name = 'emp'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'alm'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'PRO_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'DET_CANTIDAD'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'DET_MEDIDA'
        Attributes = [paSigned]
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'usu'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SUC_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select '#39'EXIST [ '#39' + CAST(DISPONIBLE AS VARCHAR) +'#39' ] '#39' AS DISPON' +
        'IBLE2'
      'from pr_verifica_disp ('
      ':emp, '
      ':alm, '
      ':PRO_CODIGO, '
      ':DET_CANTIDAD, '
      ':DET_MEDIDA, '
      ':usu, '
      ':SUC_CODIGO, '
      '0,'
      '0, '
      '0)')
    Left = 572
    Top = 240
    object QMsnExistenciaDISPONIBLE2: TStringField
      FieldName = 'DISPONIBLE2'
    end
  end
  object QCdadDesp: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    DataSource = dsDetalle
    Parameters = <
      item
        Name = 'EMP_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SUC_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CON_NUMERO'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'PRO_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select  DET_CANTIDAD'
      ''
      'from DET_CONDUCE'
      'where EMP_CODIGO = :EMP_CODIGO'
      '   and SUC_CODIGO = :SUC_CODIGO'
      '   and CON_NUMERO = :CON_NUMERO'
      '   and PRO_CODIGO = :PRO_CODIGO')
    Left = 344
    Top = 248
    object QCdadDespDET_CANTIDAD: TFloatField
      FieldName = 'DET_CANTIDAD'
      Origin = 'DET_CONDUCE.DET_CANTIDAD'
      OnGetText = QDetalleDET_CANTIDADGetText
    end
  end
  object QSelectIncrem1: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'TIPO'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CODIGO'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'SUC'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @TIPO INT'
      'DECLARE @CODIGO VARCHAR(20)'
      'DECLARE @SUC INT'
      'SET @TIPO       = :TIPO'
      'SET @CODIGO = :CODIGO'
      'SET @SUC        = :SUC'
      ''
      'IF @TIPO = 0 BEGIN '
      'SELECT PRO_CODIGO CODIGO, PRO_NOMBRE NOMBRE, PRO_PRECIO1 PRECIO,'
      
        '(SELECT EXI_CANTIDAD FROM EXISTENCIAS WHERE EMP_CODIGO = P.EMP_C' +
        'ODIGO AND PRO_CODIGO = P.PRO_CODIGO AND ALM_CODIGO = '
      
        ' (SELECT ALM_CODIGO FROM SUCURSALES WHERE EMP_CODIGO = P.EMP_COD' +
        'IGO AND SUC_CODIGO = @SUC)) EXIST'
      'FROM PRODUCTOS P'
      'WHERE PRO_CODIGO LIKE @CODIGO+'#39'%'#39
      'ORDER BY PRO_CODIGO '
      'END   '
      ''
      'IF @TIPO = 1 BEGIN '
      
        'SELECT PRO_RORIGINAL CODIGO, PRO_NOMBRE NOMBRE, PRO_PRECIO1 PREC' +
        'IO,'
      
        '(SELECT EXI_CANTIDAD FROM EXISTENCIAS WHERE EMP_CODIGO = P.EMP_C' +
        'ODIGO AND PRO_CODIGO = P.PRO_CODIGO AND ALM_CODIGO = '
      
        ' (SELECT ALM_CODIGO FROM SUCURSALES WHERE EMP_CODIGO = P.EMP_COD' +
        'IGO AND SUC_CODIGO = @SUC)) EXIST'
      'FROM PRODUCTOS P'
      'WHERE PRO_RORIGINAL LIKE @CODIGO+'#39'%'#39
      'ORDER BY PRO_RORIGINAL '
      'END   '
      ''
      ''
      'IF @TIPO = 2  BEGIN '
      
        'SELECT PRO_RFABRIC CODIGO, PRO_NOMBRE NOMBRE, PRO_PRECIO1 PRECIO' +
        ','
      
        '(SELECT EXI_CANTIDAD FROM EXISTENCIAS WHERE EMP_CODIGO = P.EMP_C' +
        'ODIGO AND PRO_CODIGO = P.PRO_CODIGO AND ALM_CODIGO = '
      
        ' (SELECT ALM_CODIGO FROM SUCURSALES WHERE EMP_CODIGO = P.EMP_COD' +
        'IGO AND SUC_CODIGO = @SUC)) EXIST'
      'FROM PRODUCTOS P'
      'WHERE PRO_RFABRIC LIKE @CODIGO+'#39'%'#39
      'ORDER BY PRO_RFABRIC '
      'END   '
      '')
    Left = 320
    Top = 376
  end
  object DS_1: TDataSource
    AutoEdit = False
    DataSet = QSelectIncrem1
    Left = 364
    Top = 376
  end
  object qUpdateCot: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'EMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'DEP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'COT'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @CANTCOT NUMERIC(18,2),'
      '        @CANTENT NUMERIC(18,2),'
      '        @CANT NUMERIC(18,2),'
      '        @PROD INT,'
      '        @DEP INT,'
      '        @COT INT,'
      '        @EMP INT '
      '          '
      'SET @EMP = :EMP'
      'SET @DEP = :DEP'
      'SET @COT = :COT'
      'SET @CANT = 0'
      'DECLARE ProdInfo CURSOR FOR '
      'SELECT DC.PRO_CODIGO , DC.DET_CANTIDAD'
      'FROM COTIZACION C '
      
        'INNER JOIN DET_COTIZACION DC ON C.EMP_CODIGO = DC.EMP_CODIGO AND' +
        ' C.COT_NUMERO = DC.COT_NUMERO'
      
        'WHERE C.DEP_CODIGO = @DEP AND C.COT_STATUS = '#39'EMI'#39' AND C.COT_NUM' +
        'ERO = @COT'
      'OPEN ProdInfo'
      'FETCH NEXT FROM ProdInfo INTO @PROD, @CANTCOT'
      'WHILE @@fetch_status = 0'
      'BEGIN'
      
        'SET @CANTENT = ISNULL((SELECT SUM(det_cantidad) FROM Det_Conduce' +
        ' DCON '
      
        '                INNER JOIN Conduce CON ON DCON.emp_codigo = CON.' +
        'emp_codigo AND DCON.con_numero = CON.con_numero'
      
        '                WHERE ped_numero = @COT AND PED_TIPO = '#39'C'#39' AND c' +
        'on_status = '#39'EMI'#39'),0)'
      ''
      ''
      'SET @CANT = @CANT+(@CANTCOT-@CANTENT)'
      ''
      'FETCH NEXT FROM ProdInfo INTO @PROD, @CANTCOT'
      'END'
      'CLOSE ProdInfo'
      'DEALLOCATE ProdInfo'
      ''
      'IF @CANT <=0 BEGIN '
      'UPDATE Cotizacion '
      'SET cot_status = '#39'COM'#39
      'WHERE cot_numero = @COT AND emp_codigo = @EMP'
      'END'
      '')
    Left = 312
    Top = 328
  end
  object qActulizaProd: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <
      item
        Name = 'PROD'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'EMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'declare @prod int, @empaque numeric(18,2), @existe numeric(18,2)' +
        ', @emp int'
      'set @prod = :prod'
      'set @EMP = :emp'
      
        'set @empaque = (select isnull(sum(isnull(exi_empaque,0)),0) from' +
        ' existencias where pro_codigo = @prod)'
      
        'set @existe = (select isnull(sum(isnull(exi_cantidad,0)),0) from' +
        ' existencias where pro_codigo = @prod)'
      'update productos'
      'set pro_existempaque = @empaque, '
      '    pro_existencia = @existe'
      'where pro_codigo = @prod'
      
        'and emp_codigo = (select par_invempresa from Parametros where em' +
        'p_codigo = @emp)'
      '')
    Left = 208
    Top = 328
  end
  object MD_Detalle: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 96
    Top = 320
    object MD_Detallepro_codigo: TIntegerField
      FieldName = 'pro_codigo'
    end
    object MD_Detalledet_cantidad: TFloatField
      FieldName = 'det_cantidad'
    end
    object MD_Detalledet_secuencia: TIntegerField
      FieldName = 'det_secuencia'
    end
    object MD_Detallepro_unidad_medida: TStringField
      FieldName = 'pro_unidad_medida'
      Size = 3
    end
  end
  object qModificaExistencia: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <
      item
        Name = 'cant'
        DataType = ftFloat
        Size = -1
        Value = Null
      end
      item
        Name = 'emp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'alm'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'prod'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'tipo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'declare @cant float, @emp int, @alm int, @prod int, @tipo int'
      ''
      'set @cant  = :cant'
      'set @emp  = :emp'
      'set @alm    = :alm '
      'set @prod  = :prod'
      'set @tipo   = :tipo'
      ''
      'if @tipo = 0 begin '
      ''
      'update '#9'Existencias'
      'set exi_cantidad = exi_cantidad + @cant'
      
        'where  emp_codigo = @emp and pro_Codigo = @prod and alm_codigo =' +
        ' @ALM'#9#9#9#9
      ''
      'update productos'
      'set pro_existencia = pro_existencia + @cant'
      
        'where  emp_codigo = (SELECT par_invempresa FROM PARAMETROS WHERE' +
        ' EMP_CODIGO = @emp) and pro_Codigo = @prod'
      ''
      'end'
      '')
    Left = 168
    Top = 384
  end
  object qModificaExistencia2: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <
      item
        Name = 'cant'
        DataType = ftFloat
        Size = -1
        Value = Null
      end
      item
        Name = 'emp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'alm'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'prod'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'tipo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'declare @cant float, @emp int, @alm int, @prod int, @tipo int'
      ''
      'set @cant  = :cant'
      'set @emp  = :emp'
      'set @alm    = :alm '
      'set @prod  = :prod'
      'set @tipo   = :tipo'
      ''
      'if @tipo = 0 begin '
      ''
      'update '#9'Existencias'
      'set exi_cantidad = exi_cantidad - @cant'
      
        'where  emp_codigo = @emp and pro_Codigo = @prod and alm_codigo =' +
        ' @ALM'#9#9#9#9
      ''
      'update productos'
      'set pro_existencia = pro_existencia - @cant'
      
        'where  emp_codigo = (SELECT par_invempresa FROM PARAMETROS WHERE' +
        ' EMP_CODIGO = @emp) and pro_Codigo = @prod'
      ''
      'end'
      '')
    Left = 208
    Top = 384
  end
end
