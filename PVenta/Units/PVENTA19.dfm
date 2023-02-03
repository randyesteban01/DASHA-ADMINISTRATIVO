object frmPedidosCli: TfrmPedidosCli
  Left = 420
  Top = 171
  ActiveControl = DBEdit5
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Pedidos de Clientes'
  ClientHeight = 463
  ClientWidth = 695
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
  object Panel2: TPanel
    Left = 0
    Top = 81
    Width = 695
    Height = 120
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    object Label2: TLabel
      Left = 8
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object btCliente: TSpeedButton
      Left = 116
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
      OnClick = btClienteClick
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
      Left = 376
      Top = 8
      Width = 42
      Height = 13
      Caption = 'Tel'#233'fono'
    end
    object Label6: TLabel
      Left = 552
      Top = 8
      Width = 18
      Height = 13
      Caption = 'Fax'
    end
    object Label7: TLabel
      Left = 376
      Top = 32
      Width = 27
      Height = 13
      Caption = 'L'#237'mite'
    end
    object Label8: TLabel
      Left = 552
      Top = 32
      Width = 37
      Height = 13
      Caption = 'Balance'
    end
    object Label14: TLabel
      Left = 376
      Top = 56
      Width = 41
      Height = 13
      Caption = '% Desc.'
    end
    object Label15: TLabel
      Left = 552
      Top = 56
      Width = 29
      Height = 13
      Caption = 'Precio'
    end
    object edCliente: TEdit
      Left = 64
      Top = 8
      Width = 49
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
      OnKeyDown = edClienteKeyDown
    end
    object DBEdit1: TDBEdit
      Left = 64
      Top = 32
      Width = 305
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PED_DIRECCION'
      DataSource = dsPedidos
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
      Width = 305
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PED_LOCALIDAD'
      DataSource = dsPedidos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 440
      Top = 8
      Width = 97
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PED_TELEFONO'
      DataSource = dsPedidos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit4: TDBEdit
      Left = 592
      Top = 8
      Width = 97
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PED_FAX'
      DataSource = dsPedidos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object tLimite: TEdit
      Left = 440
      Top = 32
      Width = 97
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
      TabOrder = 6
    end
    object tBalance: TEdit
      Left = 592
      Top = 32
      Width = 97
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
    object tDesc: TEdit
      Left = 440
      Top = 56
      Width = 97
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
      TabOrder = 8
    end
    object tPrecio: TEdit
      Left = 592
      Top = 56
      Width = 97
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
    object DBEdit6: TDBEdit
      Left = 144
      Top = 8
      Width = 225
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'PED_NOMBRE'
      DataSource = dsPedidos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Panel7: TPanel
      Left = 546
      Top = 81
      Width = 149
      Height = 31
      BevelOuter = bvNone
      TabOrder = 10
      object dblExistencia: TDBText
        Left = 0
        Top = 0
        Width = 76
        Height = 13
        Align = alCustom
        AutoSize = True
        DataField = 'DISPONIBLE2'
        DataSource = dsMsnExistencia
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbtxtUBICACION: TDBText
        Left = 0
        Top = 16
        Width = 96
        Height = 13
        Align = alCustom
        AutoSize = True
        DataField = 'UBICACION'
        DataSource = dsMsnExistencia
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 695
    Height = 81
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label9: TLabel
      Left = 8
      Top = 32
      Width = 29
      Height = 13
      Caption = 'Fecha'
    end
    object Label12: TLabel
      Left = 8
      Top = 56
      Width = 46
      Height = 13
      Caption = 'Vendedor'
    end
    object btVendedor: TSpeedButton
      Left = 100
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
      OnClick = btVendedorClick
    end
    object Label10: TLabel
      Left = 376
      Top = 56
      Width = 57
      Height = 13
      Caption = 'Condiciones'
    end
    object btCondi: TSpeedButton
      Left = 484
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
      OnClick = btCondiClick
    end
    object Label1: TLabel
      Left = 208
      Top = 32
      Width = 85
      Height = 13
      Caption = 'Fecha de Entrega'
    end
    object Label11: TLabel
      Left = 564
      Top = 8
      Width = 56
      Height = 13
      Caption = '# de Orden'
    end
    object Label13: TLabel
      Left = 8
      Top = 8
      Width = 40
      Height = 13
      Caption = 'Sucursal'
    end
    object Label18: TLabel
      Left = 376
      Top = 8
      Width = 29
      Height = 13
      Caption = 'Precio'
    end
    object Label21: TLabel
      Left = 376
      Top = 32
      Width = 38
      Height = 13
      Caption = 'Moneda'
    end
    object btmoneda: TSpeedButton
      Left = 484
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
      OnClick = btmonedaClick
    end
    object Label22: TLabel
      Left = 597
      Top = 32
      Width = 23
      Height = 13
      Caption = 'Tasa'
    end
    object DBEdit5: TDBEdit
      Left = 64
      Top = 32
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PED_FECHA'
      DataSource = dsPedidos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object tVendedor: TEdit
      Left = 128
      Top = 56
      Width = 241
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
    object tCondicion: TEdit
      Left = 509
      Top = 56
      Width = 180
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
    object DBEdit11: TDBEdit
      Left = 64
      Top = 56
      Width = 33
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'VEN_CODIGO'
      DataSource = dsPedidos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit12: TDBEdit
      Left = 440
      Top = 56
      Width = 41
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'CPA_CODIGO'
      DataSource = dsPedidos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object DBEdit9: TDBEdit
      Left = 304
      Top = 32
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PED_FECHAENTREGA'
      DataSource = dsPedidos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit13: TDBEdit
      Left = 624
      Top = 8
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'ORDEN_CLIENTE'
      DataSource = dsPedidos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 64
      Top = 8
      Width = 305
      Height = 21
      DataField = 'SUC_CODIGO'
      DataSource = dsPedidos
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
      TabOrder = 0
    end
    object cbPrecio: TComboBox
      Left = 440
      Top = 8
      Width = 67
      Height = 21
      BevelKind = bkFlat
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 4
      Text = 'Precio1'
      OnChange = cbPrecioChange
      Items.Strings = (
        'Precio1'
        'Precio2'
        'Precio3'
        'Precio4')
    end
    object tmoneda: TEdit
      Left = 509
      Top = 32
      Width = 84
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
      TabOrder = 11
    end
    object DBEdit15: TDBEdit
      Left = 624
      Top = 32
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'ped_tasa'
      DataSource = dsPedidos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object DBEdit16: TDBEdit
      Left = 440
      Top = 32
      Width = 41
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'mon_codigo'
      DataSource = dsPedidos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 375
    Width = 695
    Height = 88
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object btBuscaProd: TSpeedButton
      Left = 264
      Top = 31
      Width = 137
      Height = 25
      Caption = '[ F4 ] - Buscar producto'
      OnClick = btBuscaProdClick
    end
    object btElimina: TSpeedButton
      Left = 400
      Top = 31
      Width = 129
      Height = 25
      Caption = '[ F5 ] - Eliminar fila'
      OnClick = btEliminaClick
    end
    object btPrecio: TSpeedButton
      Left = 8
      Top = 58
      Width = 126
      Height = 25
      Caption = '[ F6 ] - Selecci'#243'n precio'
      OnClick = btPrecioClick
    end
    object btNota: TSpeedButton
      Left = 136
      Top = 58
      Width = 129
      Height = 25
      Caption = '[ F7 ] - Nota de pedido'
      OnClick = btNotaClick
    end
    object btEscalas: TSpeedButton
      Left = 264
      Top = 58
      Width = 89
      Height = 25
      Caption = '[ F12 ] - Escalas'
      OnClick = btEscalasClick
    end
    object Label16: TLabel
      Left = 535
      Top = 27
      Width = 51
      Height = 13
      Caption = 'Descuento'
    end
    object Label17: TLabel
      Left = 535
      Top = 46
      Width = 21
      Height = 13
      Caption = 'Itbis'
    end
    object Label19: TLabel
      Left = 535
      Top = 66
      Width = 24
      Height = 13
      Caption = 'Total'
    end
    object Label20: TLabel
      Left = 535
      Top = 5
      Width = 45
      Height = 13
      Caption = 'Sub Total'
    end
    object SpeedButton1: TSpeedButton
      Left = 384
      Top = 4
      Width = 145
      Height = 24
      Caption = 'Seleccionar cotizaci'#243'n'
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
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 272
      Top = 4
      Width = 105
      Height = 24
      Caption = 'Copiar pedido'
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
    object btBuscaPedido: TBitBtn
      Left = 353
      Top = 58
      Width = 103
      Height = 25
      Caption = 'Buscar pedido'
      TabOrder = 0
      TabStop = False
      OnClick = btBuscaPedidoClick
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
    end
    object btGrabar: TBitBtn
      Left = 8
      Top = 32
      Width = 125
      Height = 24
      Caption = '[ F2 ] - Grabar/Imprimir'
      TabOrder = 1
      TabStop = False
      OnClick = btGrabarClick
    end
    object btLimpiar: TBitBtn
      Left = 136
      Top = 31
      Width = 129
      Height = 25
      Caption = '[ F3 ] - Limpiar/Nueva'
      TabOrder = 2
      TabStop = False
      OnClick = btLimpiarClick
    end
    object btSalir: TBitBtn
      Left = 456
      Top = 58
      Width = 73
      Height = 25
      Caption = '[ F10 ] - Salir'
      TabOrder = 3
      TabStop = False
      OnClick = btSalirClick
    end
    object DBEdit7: TDBEdit
      Left = 592
      Top = 22
      Width = 97
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'PED_DESCUENTO'
      DataSource = dsPedidos
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit8: TDBEdit
      Left = 592
      Top = 42
      Width = 97
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'PED_ITBIS'
      DataSource = dsPedidos
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object DBEdit10: TDBEdit
      Left = 592
      Top = 62
      Width = 97
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'PED_TOTAL'
      DataSource = dsPedidos
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object DBEdit14: TDBEdit
      Left = 592
      Top = 2
      Width = 97
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'SubTotal'
      DataSource = dsPedidos
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
  object Grid: TDBGrid
    Left = 0
    Top = 201
    Width = 695
    Height = 174
    Align = alClient
    Ctl3D = False
    DataSource = dsDetalle
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 2
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
        Width = 70
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'DET_DESCRIPCION'
        Title.Caption = 'Descripci'#243'n del Producto'
        Width = 281
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DET_CANTIDAD'
        Title.Alignment = taCenter
        Title.Caption = 'Cantidad'
        Width = 45
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
        Alignment = taCenter
        Expanded = False
        FieldName = 'DET_MEDIDA'
        Title.Alignment = taCenter
        Title.Caption = 'Medida'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DET_PRECIO'
        Title.Alignment = taCenter
        Title.Caption = 'Precio'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DET_DESCUENTO'
        Title.Alignment = taCenter
        Title.Caption = '%Desc'
        Width = 35
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DET_CONITBIS'
        Title.Alignment = taCenter
        Title.Caption = 'Itbis?'
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'Valor'
        Title.Alignment = taCenter
        Width = 71
        Visible = True
      end>
  end
  object DBGrid_1: TDBGrid
    Left = -10
    Top = 320
    Width = 737
    Height = 85
    DataSource = DS_1
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
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
  object edt1: TEdit
    Left = 88
    Top = 360
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 5
    Visible = False
  end
  object QPedidos: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QPedidosBeforePost
    OnCalcFields = QPedidosCalcFields
    OnNewRecord = QPedidosNewRecord
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
      'EMP_CODIGO, PED_TIPO, PED_NUMERO, PED_FECHA, '
      'VEN_CODIGO, CPA_CODIGO, CLI_CODIGO, PED_DIRECCION, '
      'PED_LOCALIDAD, PED_TELEFONO, PED_FAX, PED_DESCUENTO, '
      'PED_ITBIS, PED_OTROS, PED_TOTAL, PED_STATUS, SUP_CODIGO, '
      'PED_NOMBRE, CLI_REFERENCIA, PED_NOTA, PED_COTIZACION, '
      'USU_CODIGO, PED_FECHAENTREGA, ORDEN_CLIENTE, SUC_CODIGO,'
      'COT_NUMERO, ped_tasa, mon_codigo, PED_FICHA'
      'from PEDIDOS'
      'where emp_codigo = :emp_codigo'
      'and ped_tipo = '#39'C'#39
      'and ped_numero = :numero'
      'and suc_codigo = :suc')
    Left = 368
    Top = 240
    object QPedidosEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Required = True
    end
    object QPedidosPED_TIPO: TIBStringField
      FieldName = 'PED_TIPO'
      Required = True
      Size = 1
    end
    object QPedidosPED_NUMERO: TIntegerField
      FieldName = 'PED_NUMERO'
      Required = True
    end
    object QPedidosPED_FECHA: TDateTimeField
      FieldName = 'PED_FECHA'
      EditMask = 'cc-cc-cccc'
    end
    object QPedidosVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
      OnGetText = QPedidosVEN_CODIGOGetText
    end
    object QPedidosCPA_CODIGO: TIntegerField
      FieldName = 'CPA_CODIGO'
      OnGetText = QPedidosCPA_CODIGOGetText
    end
    object QPedidosPED_DIRECCION: TIBStringField
      FieldName = 'PED_DIRECCION'
      Size = 60
    end
    object QPedidosPED_LOCALIDAD: TIBStringField
      FieldName = 'PED_LOCALIDAD'
      Size = 60
    end
    object QPedidosPED_TELEFONO: TIBStringField
      FieldName = 'PED_TELEFONO'
      Size = 13
    end
    object QPedidosPED_FAX: TIBStringField
      FieldName = 'PED_FAX'
      Size = 13
    end
    object QPedidosPED_DESCUENTO: TFloatField
      FieldName = 'PED_DESCUENTO'
      currency = True
    end
    object QPedidosPED_ITBIS: TFloatField
      FieldName = 'PED_ITBIS'
      currency = True
    end
    object QPedidosPED_OTROS: TFloatField
      FieldName = 'PED_OTROS'
      currency = True
    end
    object QPedidosPED_TOTAL: TFloatField
      FieldName = 'PED_TOTAL'
      currency = True
    end
    object QPedidosPED_STATUS: TIBStringField
      FieldName = 'PED_STATUS'
      Size = 3
    end
    object QPedidosSUP_CODIGO: TIntegerField
      FieldName = 'SUP_CODIGO'
    end
    object QPedidosSubTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SubTotal'
      currency = True
      Calculated = True
    end
    object QPedidosCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
    end
    object QPedidosPED_NOMBRE: TIBStringField
      FieldName = 'PED_NOMBRE'
      Size = 60
    end
    object QPedidosCLI_REFERENCIA: TIBStringField
      DisplayWidth = 30
      FieldName = 'CLI_REFERENCIA'
      Size = 30
    end
    object QPedidosPED_NOTA: TMemoField
      FieldName = 'PED_NOTA'
      Origin = 'PEDIDOS.PED_NOTA'
      BlobType = ftMemo
    end
    object QPedidosUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Origin = 'PEDIDOS.USU_CODIGO'
    end
    object QPedidosPED_FECHAENTREGA: TDateTimeField
      FieldName = 'PED_FECHAENTREGA'
      EditMask = 'cc-cc-cccc'
    end
    object QPedidosORDEN_CLIENTE: TStringField
      FieldName = 'ORDEN_CLIENTE'
      Size = 15
    end
    object QPedidosSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QPedidosCOT_NUMERO: TIntegerField
      FieldName = 'COT_NUMERO'
    end
    object QPedidosped_tasa: TBCDField
      FieldName = 'ped_tasa'
      currency = True
      Precision = 15
      Size = 2
    end
    object QPedidosmon_codigo: TIntegerField
      FieldName = 'mon_codigo'
      OnChange = QPedidosmon_codigoChange
      OnGetText = QPedidosmon_codigoGetText
    end
    object QPedidosPED_FICHA: TStringField
      FieldName = 'PED_FICHA'
      Size = 10
    end
    object QPedidosPED_COTIZACION: TStringField
      FieldName = 'PED_COTIZACION'
      KeyFields = 'PED_COTIZACION'
      Size = 0
    end
  end
  object dsPedidos: TDataSource
    DataSet = QPedidos
    Left = 400
    Top = 240
  end
  object Search: TQrySearchDlgADO
    AliasFields.Strings = (
      'Nombre'
      'Codigo')
    AliasName = DM.ADOSigma
    Left = 328
    Top = 240
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QDetalleBeforePost
    AfterPost = QDetalleAfterPost
    AfterDelete = QDetalleAfterDelete
    OnCalcFields = QDetalleCalcFields
    OnNewRecord = QDetalleNewRecord
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
        Name = 'ped_tipo'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'ped_numero'
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
      'EMP_CODIGO, PED_TIPO, PED_NUMERO, DET_SECUENCIA, '
      'PRO_CODIGO, PRO_RORIGINAL, PRO_RFABRIC, DET_DESCRIPCION, '
      'DET_CANTIDAD, DET_PRECIO, DET_CONITBIS, DET_ITBIS, '
      'DET_DESCUENTO, DET_FACTURADO, DET_STATUS,'
      'DET_ESCALA, DET_MANEJAESCALA, DET_MEDIDA,'
      'DET_NOTA, SUC_CODIGO, DET_PRECIO1, DET_PRECIO2,'
      'DET_PRECIO3, DET_PRECIO4, det_despachado'
      'from '
      'DET_PEDIDO'
      'where emp_codigo = :emp_codigo'
      'and ped_tipo = :ped_tipo'
      'and ped_numero = :ped_numero'
      'and suc_codigo = :suc'
      'order by det_secuencia')
    Left = 368
    Top = 272
    object QDetalleEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QDetallePED_TIPO: TIBStringField
      FieldName = 'PED_TIPO'
      Size = 1
    end
    object QDetallePED_NUMERO: TIntegerField
      FieldName = 'PED_NUMERO'
    end
    object QDetalleDET_SECUENCIA: TIntegerField
      FieldName = 'DET_SECUENCIA'
      DisplayFormat = '00'
    end
    object QDetallePRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      OnChange = QDetallePRO_CODIGOChange
    end
    object QDetallePRO_RORIGINAL: TIBStringField
      FieldName = 'PRO_RORIGINAL'
      OnChange = QDetallePRO_RORIGINALChange
      Size = 50
    end
    object QDetallePRO_RFABRIC: TIBStringField
      FieldName = 'PRO_RFABRIC'
      OnChange = QDetallePRO_RFABRICChange
      Size = 60
    end
    object QDetalleDET_DESCRIPCION: TIBStringField
      FieldName = 'DET_DESCRIPCION'
      Size = 60
    end
    object QDetalleDET_CANTIDAD: TFloatField
      FieldName = 'DET_CANTIDAD'
    end
    object QDetalleDET_PRECIO: TFloatField
      FieldName = 'DET_PRECIO'
      currency = True
    end
    object QDetalleDET_CONITBIS: TIBStringField
      FieldName = 'DET_CONITBIS'
      Size = 1
    end
    object QDetalleDET_ITBIS: TFloatField
      FieldName = 'DET_ITBIS'
      currency = True
    end
    object QDetalleDET_DESCUENTO: TFloatField
      FieldName = 'DET_DESCUENTO'
      currency = True
    end
    object QDetalleDET_FACTURADO: TFloatField
      FieldName = 'DET_FACTURADO'
    end
    object QDetalleDET_STATUS: TIBStringField
      FieldName = 'DET_STATUS'
      Size = 3
    end
    object QDetalleCalcItbis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcItbis'
      currency = True
      Calculated = True
    end
    object QDetalleCalcDesc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcDesc'
      currency = True
      Calculated = True
    end
    object QDetalleValor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor'
      currency = True
      Calculated = True
    end
    object QDetallePrecioItbis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PrecioItbis'
      currency = True
      Calculated = True
    end
    object QDetalleDET_ESCALA: TIBStringField
      FieldName = 'DET_ESCALA'
      Origin = 'DET_PEDIDO.DET_ESCALA'
      Size = 5
    end
    object QDetalleDET_MANEJAESCALA: TIBStringField
      FieldName = 'DET_MANEJAESCALA'
      Origin = 'DET_PEDIDO.DET_MANEJAESCALA'
      Size = 5
    end
    object QDetalleDET_MEDIDA: TIBStringField
      FieldName = 'DET_MEDIDA'
      Origin = 'DET_PEDIDO.DET_MEDIDA'
      OnChange = QDetalleDET_MEDIDAChange
      Size = 3
    end
    object QDetalleDET_NOTA: TMemoField
      FieldName = 'DET_NOTA'
      BlobType = ftMemo
    end
    object QDetalleSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QDetalleDET_PRECIO1: TBCDField
      FieldName = 'DET_PRECIO1'
      Precision = 15
      Size = 2
    end
    object QDetalleDET_PRECIO2: TBCDField
      FieldName = 'DET_PRECIO2'
      Precision = 15
      Size = 2
    end
    object QDetalleDET_PRECIO3: TBCDField
      FieldName = 'DET_PRECIO3'
      Precision = 15
      Size = 2
    end
    object QDetalleDET_PRECIO4: TBCDField
      FieldName = 'DET_PRECIO4'
      Precision = 15
      Size = 2
    end
    object QDetalledet_despachado: TBCDField
      FieldName = 'det_despachado'
      Precision = 15
      Size = 2
    end
  end
  object dsDetalle: TDataSource
    DataSet = QDetalle
    OnDataChange = dsDetalleDataChange
    Left = 400
    Top = 272
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 368
    Top = 208
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
    Left = 488
    Top = 240
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
    Left = 520
    Top = 240
  end
  object PopupMenu1: TPopupMenu
    Left = 328
    Top = 272
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
    object DatosdelMedidor1: TMenuItem
      Caption = 'Datos del Medidor'
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
  object QMsnExistencia: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <
      item
        Name = 'emp'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'alm_codigo'
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
      end
      item
        Name = 'TFA_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'FAC_FORMA'
        Attributes = [paSigned]
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'FAC_NUMERO'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select '#39'EXIST [ '#39' + CAST(DISPONIBLE AS VARCHAR) +'#39' ] '#39' AS DISPON' +
        'IBLE2,'
      '        '#39'UBIC [ '#39' + ISNULL(UBICACION,'#39'N/D'#39') +'#39' ] '#39' AS UBICACION'
      'from pr_verifica_disp ('
      ':emp, '
      ':ALM_CODIGO, '
      ':PRO_CODIGO, '
      ':DET_CANTIDAD, '
      ':DET_MEDIDA, '
      ':usu, '
      ':SUC_CODIGO, '
      ':TFA_CODIGO, '
      ':FAC_FORMA, '
      ':FAC_NUMERO)')
    Left = 636
    Top = 256
    object QMsnExistenciaDISPONIBLE2: TStringField
      FieldName = 'DISPONIBLE2'
    end
    object QMsnExistenciaUBICACION: TStringField
      FieldName = 'UBICACION'
    end
  end
  object dsMsnExistencia: TDataSource
    DataSet = QMsnExistencia
    Left = 600
    Top = 256
  end
end
