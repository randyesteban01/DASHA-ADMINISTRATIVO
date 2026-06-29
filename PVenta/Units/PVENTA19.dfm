object frmPedidosCli: TfrmPedidosCli
  Left = 378
  Top = 229
  ActiveControl = DBEdit5
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Pedidos de Clientes'
  ClientHeight = 492
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
    object lbVendedor: TLabel
      Left = 368
      Top = 96
      Width = 64
      Height = 13
      Caption = 'lbVendedor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
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
    Top = 404
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
    object btBuscaVendPorc: TBitBtn
      Left = 10
      Top = 4
      Width = 143
      Height = 25
      Caption = '[ F11 ] - Vendedor / Porc'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      TabStop = False
      OnClick = btBuscaVendPorcClick
    end
  end
  object Grid: TDBGrid
    Left = 0
    Top = 201
    Width = 695
    Height = 203
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
    object QPedidosPED_COTIZACION: TIntegerField
      FieldName = 'PED_COTIZACION'
      Origin = 'PEDIDOS.PED_COTIZACION'
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
      
        'DET_PRECIO3, DET_PRECIO4, det_despachado, porc_vendedor, ven_cod' +
        'igo'
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
    object QDetalleven_codigo: TIntegerField
      FieldName = 'ven_codigo'
    end
    object QDetalleporc_vendedor: TCurrencyField
      FieldName = 'porc_vendedor'
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
  object QParametros: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = QParametrosAfterOpen
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
      'select '
      
        'EMP_CODIGO, PAR_ALMACENVENTA, PAR_CODIGOCLIENTE, PAR_CODIGOPRODU' +
        'CTO,'
      
        'PAR_FACFORMA, PAR_FORMATODES, PAR_FORMATODEV, PAR_FORMATONC, PAR' +
        '_FORMATOND,'
      
        'PAR_FORMATORC, PAR_FORMATORI, PAR_ITBIS, PAR_MOVNDE, PAR_TFACODI' +
        'GO,'
      
        'PAR_TIPOPRECIO, PAR_CONTROLAMAXIMO, PAR_CONTROLAMINIMO, PAR_DEBA' +
        'JOCOSTO,'
      
        'PAR_COMBOCOTIZACION, PAR_COMBOIMPDETALLE, PAR_COMBOREBAJA, PAR_V' +
        'ENDIGITOSLOTE,'
      
        'PAR_VENPERMITIR, PAR_VENVERIFICA, PAR_CONTEOLIMPIA, PAR_PREDESCG' +
        'LOBAL,'
      
        'PAR_PREDESCRIP1, PAR_PREDESCRIP2, PAR_PREDESCRIP3, PAR_PREDESCRI' +
        'P4, PAR_FACANULA,'
      
        'PAR_FACDIASANULA, PAR_FACDIASMODIFICA, PAR_FACDISPONIBLE, PAR_FA' +
        'CMODIFICA,'
      
        'PAR_FACSELPRECIO, PAR_FACTEMPORAL, PAR_DEVDIAS, PAR_DEVEFECTIVO,' +
        ' PAR_FORMATOCUADRE,'
      
        'PAR_AHORA1, PAR_AHORA2, PAR_BHORA1, PAR_BHORA2, PAR_FACMODPRECIO' +
        ', PAR_FORMATOCON,'
      
        'PAR_CAJA, PAR_IMPCODIGOBARRA, CPA_CODIGOCLIENTE, PAR_LIMITEINICI' +
        'AL, PAR_MOVCK,'
      
        'PAR_MOVCARGO, PAR_PRECIOLETRA_0, PAR_PRECIOLETRA_1, PAR_PRECIOLE' +
        'TRA_2, PAR_PRECIOLETRA_3,'
      
        'PAR_PRECIOLETRA_4, PAR_PRECIOLETRA_5, PAR_PRECIOLETRA_6, PAR_PRE' +
        'CIOLETRA_7,'
      
        'PAR_PRECIOLETRA_8, PAR_PRECIOLETRA_9, PAR_NUEVOUSADO, PAR_TEXTOB' +
        'ARRA1,'
      
        'PAR_TEXTOBARRA2, PAR_TEXTOBARRA3, PAR_TEXTOBARRA4, PAR_TEXTOBARR' +
        'A5,'
      
        'PAR_OPC5TALINEA, PAR_TEXTOBARRA6, PAR_OPC1RALINEA, PAR_PREGUNTAP' +
        'EQ,'
      
        'PAR_IGUALAREF, PAR_ITBISDEFECTO, PAR_FPADESEM, PAR_FACBAJARLINEA' +
        ', PAR_FACTOTALIZAPIE,'
      
        'PAR_FACREPITEPROD, PAR_DEBAJOPRECIO, PAR_FACCONITBIS, PAR_FACESC' +
        'ALA, PAR_FACMEDIDA,'
      
        'PAR_PRECIOEMP, PAR_PRECIOUND, PAR_FISICOSOLOLLENO, PAR_DEVFORMA,' +
        ' PAR_FORMATOCOT,'
      
        'PAR_INVMOSTRARVENCE, PAR_VERIMAGEN, PAR_TKMENSAJE1, PAR_TKMENSAJ' +
        'E2,'
      
        'PAR_TKMENSAJE3, PAR_TKMENSAJE4, PAR_TKCLAVEDELETE, PAR_TKCLAVEMO' +
        'DIFICA,'
      
        'PAR_COMBINAORIGINAL, PAR_COMBINAFABRIC, PAR_TKCLAVECREDITO, PAR_' +
        'TKCLAVECANCELA,'
      'PAR_INVEMPRESA, PAR_INVALMACEN, MON_CODIGO, PAR_SOLGENERACHEQUE,'
      'par_invprecioconduce, par_mailservidor, par_mailcorreo,'
      
        'par_mailusuario, par_mailclave, par_mailpuerto, par_itbisincluid' +
        'o,'
      
        'caj_codigo, par_domicilio, par_monto_domicilio, par_copias_domic' +
        'ilio,'
      'par_beneficio, par_tkclavereimprime, par_igualartelefonocliente,'
      'par_valor_punto, par_punto_principal, par_punto_depen,'
      'par_redondeo, par_barra_header, par_fac_preimpresa,'
      'par_fac_oferta, par_preciound_m, par_precioemp_m,'
      
        'par_nombre_familia, par_nombre_depto, par_nombre_color, par_nomb' +
        're_marca,'
      'par_inv_compra_centro_costo, par_imprime_logo,'
      'par_arch_copiar_colector, par_arch_recibe_colector,'
      
        'par_delimitador_envia, par_delimitador_recibe, par_modifica_fech' +
        'a_factura,'
      'par_pago_mayor_balance, par_nota_orden_servicio, par_controlar,'
      'par_formato_preimpreso, par_usuario_cuadra,'
      'par_inv_entrada_modifica_precio, par_movtk, par_visualizadesc,'
      'par_visualiza_selectivo, par_cantidad_primero,'
      'par_busqueda_porciento, par_busqueda_cxp,'
      'par_moneda_local, par_envio, par_nota_cotizacion,'
      'par_almacendevolucion, par_boletos_monto, par_boletos_cantidad,'
      
        'par_ticket_itbis, par_ftp_site, par_ftp_usuario, par_ftp_passwor' +
        'd,'
      'par_ftp_ruta, par_modifica_precio_automatico,'
      'par_inv_forma_inventario, par_visualizar_cant_empaque,'
      'par_imprimir_calculo_empaque, par_inv_transferencia_auto,'
      
        'par_boletos_monto_patrocinador, par_boletos_cantidad_patrocinado' +
        'r,'
      
        'par_movdc, par_busqueda_dejar_ultimo, par_compras_visualiza_dife' +
        'rencia,'
      'par_genera_puntos_credito, par_inv_unidad_medida,'
      'par_numerofactura_tipo, par_facturarcero, par_textobarra7,'
      
        'par_opc6talinea, par_opc7malinea, Idioma, par_compras_valores_au' +
        't,'
      'par_inv_imprime_comentario,'
      'par_aplica_desc_por_rango_venta,'
      
        'par_periodo_caducidad,par_cantidad_caducidad, par_imprimir_sin_d' +
        'etalle_RI,'
      
        'cot_dias_valides,par_validar_serie_en_inventario,PAR_FORMATOENVI' +
        'OCON,'
      'par_impresora_boleto, par_comision_vend'
      'from'
      'PARAMETROS'
      'WHERE EMP_CODIGO = :emp_codigo')
    Left = 104
    Top = 168
    object QParametrosEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'PARAMETROS.EMP_CODIGO'
    end
    object QParametrosPAR_ALMACENVENTA: TIntegerField
      FieldName = 'PAR_ALMACENVENTA'
      Origin = 'PARAMETROS.PAR_ALMACENVENTA'
    end
    object QParametrosPAR_CODIGOCLIENTE: TIBStringField
      FieldName = 'PAR_CODIGOCLIENTE'
      Origin = 'PARAMETROS.PAR_CODIGOCLIENTE'
      Size = 1
    end
    object QParametrosPAR_CODIGOPRODUCTO: TIBStringField
      FieldName = 'PAR_CODIGOPRODUCTO'
      Origin = 'PARAMETROS.PAR_CODIGOPRODUCTO'
      Size = 1
    end
    object QParametrosPAR_FACFORMA: TIBStringField
      FieldName = 'PAR_FACFORMA'
      Origin = 'PARAMETROS.PAR_FACFORMA'
      Size = 1
    end
    object QParametrosPAR_FORMATODES: TIntegerField
      FieldName = 'PAR_FORMATODES'
      Origin = 'PARAMETROS.PAR_FORMATODES'
    end
    object QParametrosPAR_FORMATODEV: TIntegerField
      FieldName = 'PAR_FORMATODEV'
      Origin = 'PARAMETROS.PAR_FORMATODEV'
    end
    object QParametrosPAR_FORMATONC: TIntegerField
      FieldName = 'PAR_FORMATONC'
      Origin = 'PARAMETROS.PAR_FORMATONC'
    end
    object QParametrosPAR_FORMATOND: TIntegerField
      FieldName = 'PAR_FORMATOND'
      Origin = 'PARAMETROS.PAR_FORMATOND'
    end
    object QParametrosPAR_FORMATORC: TIntegerField
      FieldName = 'PAR_FORMATORC'
      Origin = 'PARAMETROS.PAR_FORMATORC'
    end
    object QParametrosPAR_FORMATORI: TIntegerField
      FieldName = 'PAR_FORMATORI'
      Origin = 'PARAMETROS.PAR_FORMATORI'
    end
    object QParametrosPAR_ITBIS: TFloatField
      FieldName = 'PAR_ITBIS'
      Origin = 'PARAMETROS.PAR_ITBIS'
      currency = True
    end
    object QParametrosPAR_MOVNDE: TIntegerField
      FieldName = 'PAR_MOVNDE'
      Origin = 'PARAMETROS.PAR_MOVNDE'
    end
    object QParametrosPAR_TFACODIGO: TIntegerField
      FieldName = 'PAR_TFACODIGO'
      Origin = 'PARAMETROS.PAR_TFACODIGO'
    end
    object QParametrosPAR_TIPOPRECIO: TIBStringField
      FieldName = 'PAR_TIPOPRECIO'
      Origin = 'PARAMETROS.PAR_TIPOPRECIO'
      Size = 7
    end
    object QParametrosPAR_CONTROLAMAXIMO: TIBStringField
      FieldName = 'PAR_CONTROLAMAXIMO'
      Origin = 'PARAMETROS.PAR_CONTROLAMAXIMO'
      Size = 5
    end
    object QParametrosPAR_CONTROLAMINIMO: TIBStringField
      FieldName = 'PAR_CONTROLAMINIMO'
      Origin = 'PARAMETROS.PAR_CONTROLAMINIMO'
      Size = 5
    end
    object QParametrosPAR_DEBAJOCOSTO: TIBStringField
      FieldName = 'PAR_DEBAJOCOSTO'
      Origin = 'PARAMETROS.PAR_DEBAJOCOSTO'
      Size = 5
    end
    object QParametrosPAR_COMBOCOTIZACION: TIBStringField
      FieldName = 'PAR_COMBOCOTIZACION'
      Origin = 'PARAMETROS.PAR_COMBOCOTIZACION'
      Size = 5
    end
    object QParametrosPAR_COMBOIMPDETALLE: TIBStringField
      FieldName = 'PAR_COMBOIMPDETALLE'
      Origin = 'PARAMETROS.PAR_COMBOIMPDETALLE'
      Size = 5
    end
    object QParametrosPAR_COMBOREBAJA: TIBStringField
      FieldName = 'PAR_COMBOREBAJA'
      Origin = 'PARAMETROS.PAR_COMBOREBAJA'
      Size = 5
    end
    object QParametrosPAR_VENDIGITOSLOTE: TIntegerField
      FieldName = 'PAR_VENDIGITOSLOTE'
      Origin = 'PARAMETROS.PAR_VENDIGITOSLOTE'
    end
    object QParametrosPAR_VENPERMITIR: TIBStringField
      FieldName = 'PAR_VENPERMITIR'
      Origin = 'PARAMETROS.PAR_VENPERMITIR'
      Size = 5
    end
    object QParametrosPAR_VENVERIFICA: TIBStringField
      FieldName = 'PAR_VENVERIFICA'
      Origin = 'PARAMETROS.PAR_VENVERIFICA'
      Size = 1
    end
    object QParametrosPAR_CONTEOLIMPIA: TIBStringField
      FieldName = 'PAR_CONTEOLIMPIA'
      Origin = 'PARAMETROS.PAR_CONTEOLIMPIA'
      Size = 1
    end
    object QParametrosPAR_PREDESCGLOBAL: TIBStringField
      FieldName = 'PAR_PREDESCGLOBAL'
      Origin = 'PARAMETROS.PAR_PREDESCGLOBAL'
      Size = 5
    end
    object QParametrosPAR_PREDESCRIP1: TIBStringField
      FieldName = 'PAR_PREDESCRIP1'
      Origin = 'PARAMETROS.PAR_PREDESCRIP1'
      Size = 10
    end
    object QParametrosPAR_PREDESCRIP2: TIBStringField
      FieldName = 'PAR_PREDESCRIP2'
      Origin = 'PARAMETROS.PAR_PREDESCRIP2'
      Size = 10
    end
    object QParametrosPAR_PREDESCRIP3: TIBStringField
      FieldName = 'PAR_PREDESCRIP3'
      Origin = 'PARAMETROS.PAR_PREDESCRIP3'
      Size = 10
    end
    object QParametrosPAR_PREDESCRIP4: TIBStringField
      FieldName = 'PAR_PREDESCRIP4'
      Origin = 'PARAMETROS.PAR_PREDESCRIP4'
      Size = 10
    end
    object QParametrosPAR_FACANULA: TIBStringField
      FieldName = 'PAR_FACANULA'
      Origin = 'PARAMETROS.PAR_FACANULA'
      Size = 5
    end
    object QParametrosPAR_FACDIASANULA: TIntegerField
      FieldName = 'PAR_FACDIASANULA'
      Origin = 'PARAMETROS.PAR_FACDIASANULA'
    end
    object QParametrosPAR_FACDIASMODIFICA: TIntegerField
      FieldName = 'PAR_FACDIASMODIFICA'
      Origin = 'PARAMETROS.PAR_FACDIASMODIFICA'
    end
    object QParametrosPAR_FACDISPONIBLE: TIBStringField
      FieldName = 'PAR_FACDISPONIBLE'
      Origin = 'PARAMETROS.PAR_FACDISPONIBLE'
      Size = 5
    end
    object QParametrosPAR_FACMODIFICA: TIBStringField
      FieldName = 'PAR_FACMODIFICA'
      Origin = 'PARAMETROS.PAR_FACMODIFICA'
      Size = 5
    end
    object QParametrosPAR_FACSELPRECIO: TIBStringField
      FieldName = 'PAR_FACSELPRECIO'
      Origin = 'PARAMETROS.PAR_FACSELPRECIO'
      Size = 5
    end
    object QParametrosPAR_FACTEMPORAL: TIBStringField
      FieldName = 'PAR_FACTEMPORAL'
      Origin = 'PARAMETROS.PAR_FACTEMPORAL'
      Size = 5
    end
    object QParametrosPAR_DEVDIAS: TIntegerField
      FieldName = 'PAR_DEVDIAS'
      Origin = 'PARAMETROS.PAR_DEVDIAS'
    end
    object QParametrosPAR_DEVEFECTIVO: TIBStringField
      FieldName = 'PAR_DEVEFECTIVO'
      Origin = 'PARAMETROS.PAR_DEVEFECTIVO'
      Size = 5
    end
    object QParametrosPAR_FORMATOCUADRE: TIntegerField
      FieldName = 'PAR_FORMATOCUADRE'
      Origin = 'PARAMETROS.PAR_FORMATOCUADRE'
    end
    object QParametrosPAR_AHORA1: TDateTimeField
      FieldName = 'PAR_AHORA1'
      Origin = 'PARAMETROS.PAR_AHORA1'
      EditMask = '!90:00:00>LL;1;_'
    end
    object QParametrosPAR_AHORA2: TDateTimeField
      FieldName = 'PAR_AHORA2'
      Origin = 'PARAMETROS.PAR_AHORA2'
      DisplayFormat = 'h:mm:ss tt'
      EditMask = '!90:00:00>LL;1;_'
    end
    object QParametrosPAR_BHORA1: TDateTimeField
      FieldName = 'PAR_BHORA1'
      Origin = 'PARAMETROS.PAR_BHORA1'
      DisplayFormat = 'h:mm:ss tt'
      EditMask = '!90:00:00>LL;1;_'
    end
    object QParametrosPAR_BHORA2: TDateTimeField
      FieldName = 'PAR_BHORA2'
      Origin = 'PARAMETROS.PAR_BHORA2'
      DisplayFormat = 'h:mm:ss tt'
      EditMask = '!90:00:00>LL;1;_'
    end
    object QParametrosPAR_FACMODPRECIO: TIBStringField
      FieldName = 'PAR_FACMODPRECIO'
      Origin = 'PARAMETROS.PAR_FACMODPRECIO'
      Size = 5
    end
    object QParametrosPAR_FORMATOCON: TIntegerField
      FieldName = 'PAR_FORMATOCON'
      Origin = 'PARAMETROS.PAR_FORMATOCON'
    end
    object QParametrosPAR_CAJA: TIBStringField
      FieldName = 'PAR_CAJA'
      Origin = 'PARAMETROS.PAR_CAJA'
      Size = 1
    end
    object QParametrosPAR_IMPCODIGOBARRA: TIBStringField
      FieldName = 'PAR_IMPCODIGOBARRA'
      Origin = 'PARAMETROS.PAR_IMPCODIGOBARRA'
      Size = 5
    end
    object QParametrosCPA_CODIGOCLIENTE: TIntegerField
      FieldName = 'CPA_CODIGOCLIENTE'
      Origin = 'PARAMETROS.CPA_CODIGOCLIENTE'
    end
    object QParametrosPAR_LIMITEINICIAL: TFloatField
      FieldName = 'PAR_LIMITEINICIAL'
      Origin = 'PARAMETROS.PAR_LIMITEINICIAL'
      currency = True
    end
    object QParametrosPAR_MOVCK: TIntegerField
      FieldName = 'PAR_MOVCK'
      Origin = 'PARAMETROS.PAR_MOVCK'
    end
    object QParametrosPAR_MOVCARGO: TIntegerField
      FieldName = 'PAR_MOVCARGO'
      Origin = 'PARAMETROS.PAR_MOVCARGO'
    end
    object QParametrosPAR_PRECIOLETRA_0: TIBStringField
      FieldName = 'PAR_PRECIOLETRA_0'
      Origin = 'PARAMETROS.PAR_PRECIOLETRA_0'
      Size = 1
    end
    object QParametrosPAR_PRECIOLETRA_1: TIBStringField
      FieldName = 'PAR_PRECIOLETRA_1'
      Origin = 'PARAMETROS.PAR_PRECIOLETRA_1'
      Size = 1
    end
    object QParametrosPAR_PRECIOLETRA_2: TIBStringField
      FieldName = 'PAR_PRECIOLETRA_2'
      Origin = 'PARAMETROS.PAR_PRECIOLETRA_2'
      Size = 1
    end
    object QParametrosPAR_PRECIOLETRA_3: TIBStringField
      FieldName = 'PAR_PRECIOLETRA_3'
      Origin = 'PARAMETROS.PAR_PRECIOLETRA_3'
      Size = 1
    end
    object QParametrosPAR_PRECIOLETRA_4: TIBStringField
      FieldName = 'PAR_PRECIOLETRA_4'
      Origin = 'PARAMETROS.PAR_PRECIOLETRA_4'
      Size = 1
    end
    object QParametrosPAR_PRECIOLETRA_5: TIBStringField
      FieldName = 'PAR_PRECIOLETRA_5'
      Origin = 'PARAMETROS.PAR_PRECIOLETRA_5'
      Size = 1
    end
    object QParametrosPAR_PRECIOLETRA_6: TIBStringField
      FieldName = 'PAR_PRECIOLETRA_6'
      Origin = 'PARAMETROS.PAR_PRECIOLETRA_6'
      Size = 1
    end
    object QParametrosPAR_PRECIOLETRA_8: TIBStringField
      FieldName = 'PAR_PRECIOLETRA_8'
      Origin = 'PARAMETROS.PAR_PRECIOLETRA_7'
      Size = 1
    end
    object QParametrosPAR_PRECIOLETRA_9: TIBStringField
      FieldName = 'PAR_PRECIOLETRA_9'
      Origin = 'PARAMETROS.PAR_PRECIOLETRA_9'
      Size = 1
    end
    object QParametrosPAR_PRECIOLETRA_7: TIBStringField
      FieldName = 'PAR_PRECIOLETRA_7'
      Origin = 'PARAMETROS.PAR_PRECIOLETRA_7'
      Size = 1
    end
    object QParametrosPAR_NUEVOUSADO: TIBStringField
      FieldName = 'PAR_NUEVOUSADO'
      Origin = 'PARAMETROS.PAR_NUEVOUSADO'
      Size = 5
    end
    object QParametrosPAR_TEXTOBARRA1: TIBStringField
      FieldName = 'PAR_TEXTOBARRA1'
      Origin = 'PARAMETROS.PAR_TEXTOBARRA1'
      Size = 60
    end
    object QParametrosPAR_TEXTOBARRA2: TIBStringField
      FieldName = 'PAR_TEXTOBARRA2'
      Origin = 'PARAMETROS.PAR_TEXTOBARRA2'
      Size = 60
    end
    object QParametrosPAR_TEXTOBARRA3: TIBStringField
      FieldName = 'PAR_TEXTOBARRA3'
      Origin = 'PARAMETROS.PAR_TEXTOBARRA3'
      Size = 60
    end
    object QParametrosPAR_TEXTOBARRA4: TIBStringField
      FieldName = 'PAR_TEXTOBARRA4'
      Origin = 'PARAMETROS.PAR_TEXTOBARRA4'
      Size = 60
    end
    object QParametrosPAR_TEXTOBARRA5: TIBStringField
      FieldName = 'PAR_TEXTOBARRA5'
      Origin = 'PARAMETROS.PAR_TEXTOBARRA5'
      Size = 60
    end
    object QParametrosPAR_OPC5TALINEA: TIBStringField
      FieldName = 'PAR_OPC5TALINEA'
      Origin = 'PARAMETROS.PAR_OPC5TALINEA'
    end
    object QParametrosPAR_TEXTOBARRA6: TIBStringField
      FieldName = 'PAR_TEXTOBARRA6'
      Origin = 'PARAMETROS.PAR_TEXTOBARRA6'
      Size = 60
    end
    object QParametrosPAR_OPC1RALINEA: TIBStringField
      FieldName = 'PAR_OPC1RALINEA'
      Origin = 'PARAMETROS.PAR_OPC1RALINEA'
    end
    object QParametrosPAR_PREGUNTAPEQ: TIBStringField
      FieldName = 'PAR_PREGUNTAPEQ'
      Origin = 'PARAMETROS.PAR_PREGUNTAPEQ'
      Size = 5
    end
    object QParametrosPAR_IGUALAREF: TIBStringField
      FieldName = 'PAR_IGUALAREF'
      Origin = 'PARAMETROS.PAR_IGUALAREF'
      Size = 1
    end
    object QParametrosPAR_ITBISDEFECTO: TIBStringField
      FieldName = 'PAR_ITBISDEFECTO'
      Origin = 'PARAMETROS.PAR_ITBISDEFECTO'
      Size = 1
    end
    object QParametrosPAR_FPADESEM: TIntegerField
      FieldName = 'PAR_FPADESEM'
      Origin = 'PARAMETROS.PAR_FPADESEM'
    end
    object QParametrosPAR_FACBAJARLINEA: TIBStringField
      FieldName = 'PAR_FACBAJARLINEA'
      Origin = 'PARAMETROS.PAR_FACBAJARLINEA'
      Size = 5
    end
    object QParametrosPAR_FACTOTALIZAPIE: TIBStringField
      FieldName = 'PAR_FACTOTALIZAPIE'
      Origin = 'PARAMETROS.PAR_FACTOTALIZAPIE'
      Size = 5
    end
    object QParametrosPAR_FACREPITEPROD: TIBStringField
      FieldName = 'PAR_FACREPITEPROD'
      Origin = 'PARAMETROS.PAR_FACREPITEPROD'
      Size = 5
    end
    object QParametrosPAR_DEBAJOPRECIO: TIBStringField
      FieldName = 'PAR_DEBAJOPRECIO'
      Origin = 'PARAMETROS.PAR_DEBAJOPRECIO'
      Size = 5
    end
    object QParametrosPAR_FACCONITBIS: TIBStringField
      FieldName = 'PAR_FACCONITBIS'
      Origin = 'PARAMETROS.PAR_FACCONITBIS'
      Size = 5
    end
    object QParametrosPAR_FACESCALA: TIBStringField
      FieldName = 'PAR_FACESCALA'
      Origin = 'PARAMETROS.PAR_FACESCALA'
      Size = 5
    end
    object QParametrosPAR_FACMEDIDA: TIBStringField
      FieldName = 'PAR_FACMEDIDA'
      Origin = 'PARAMETROS.PAR_FACMEDIDA'
      Size = 5
    end
    object QParametrosPAR_PRECIOEMP: TIBStringField
      FieldName = 'PAR_PRECIOEMP'
      Origin = 'PARAMETROS.PAR_PRECIOEMP'
      Size = 7
    end
    object QParametrosPAR_PRECIOUND: TIBStringField
      FieldName = 'PAR_PRECIOUND'
      Origin = 'PARAMETROS.PAR_PRECIOUND'
      Size = 7
    end
    object QParametrosPAR_FISICOSOLOLLENO: TIBStringField
      FieldName = 'PAR_FISICOSOLOLLENO'
      Origin = 'PARAMETROS.PAR_FISICOSOLOLLENO'
      Size = 5
    end
    object QParametrosPAR_DEVFORMA: TIBStringField
      FieldName = 'PAR_DEVFORMA'
      Origin = 'PARAMETROS.PAR_DEVFORMA'
      Size = 1
    end
    object QParametrosPAR_FORMATOCOT: TIntegerField
      FieldName = 'PAR_FORMATOCOT'
      Origin = 'PARAMETROS.PAR_FORMATOCOT'
    end
    object QParametrosPAR_INVMOSTRARVENCE: TIBStringField
      FieldName = 'PAR_INVMOSTRARVENCE'
      Origin = 'PARAMETROS.PAR_INVMOSTRARVENCE'
      Size = 5
    end
    object QParametrosPAR_VERIMAGEN: TIBStringField
      FieldName = 'PAR_VERIMAGEN'
      Origin = 'PARAMETROS.PAR_VERIMAGEN'
      Size = 5
    end
    object QParametrosPAR_TKMENSAJE1: TIBStringField
      FieldName = 'PAR_TKMENSAJE1'
      Origin = 'PARAMETROS.PAR_TKMENSAJE1'
      Size = 40
    end
    object QParametrosPAR_TKMENSAJE2: TIBStringField
      FieldName = 'PAR_TKMENSAJE2'
      Origin = 'PARAMETROS.PAR_TKMENSAJE2'
      Size = 40
    end
    object QParametrosPAR_TKMENSAJE3: TIBStringField
      FieldName = 'PAR_TKMENSAJE3'
      Origin = 'PARAMETROS.PAR_TKMENSAJE3'
      Size = 40
    end
    object QParametrosPAR_TKMENSAJE4: TIBStringField
      FieldName = 'PAR_TKMENSAJE4'
      Origin = 'PARAMETROS.PAR_TKMENSAJE4'
      Size = 40
    end
    object QParametrosPAR_TKCLAVEDELETE: TIBStringField
      FieldName = 'PAR_TKCLAVEDELETE'
      Origin = 'PARAMETROS.PAR_TKCLAVEDELETE'
      Size = 30
    end
    object QParametrosPAR_TKCLAVEMODIFICA: TIBStringField
      FieldName = 'PAR_TKCLAVEMODIFICA'
      Origin = 'PARAMETROS.PAR_TKCLAVEMODIFICA'
      Size = 30
    end
    object QParametrosPAR_COMBINAORIGINAL: TIBStringField
      FieldName = 'PAR_COMBINAORIGINAL'
      Origin = 'PARAMETROS.PAR_COMBINAORIGINAL'
      Size = 30
    end
    object QParametrosPAR_COMBINAFABRIC: TIBStringField
      FieldName = 'PAR_COMBINAFABRIC'
      Origin = 'PARAMETROS.PAR_COMBINAFABRIC'
      Size = 30
    end
    object QParametrosPAR_TKCLAVECREDITO: TIBStringField
      FieldName = 'PAR_TKCLAVECREDITO'
      Origin = 'PARAMETROS.PAR_TKCLAVECREDITO'
      Size = 30
    end
    object QParametrosPAR_TKCLAVECANCELA: TIBStringField
      FieldName = 'PAR_TKCLAVECANCELA'
      Origin = 'PARAMETROS.PAR_TKCLAVECANCELA'
      Size = 30
    end
    object QParametrosPAR_INVEMPRESA: TIntegerField
      FieldName = 'PAR_INVEMPRESA'
      Origin = 'PARAMETROS.PAR_INVEMPRESA'
    end
    object QParametrosPAR_INVALMACEN: TIntegerField
      FieldName = 'PAR_INVALMACEN'
      Origin = 'PARAMETROS.PAR_INVALMACEN'
    end
    object QParametrosMON_CODIGO: TIntegerField
      FieldName = 'MON_CODIGO'
      Origin = 'PARAMETROS.MON_CODIGO'
    end
    object QParametrosPAR_SOLGENERACHEQUE: TIBStringField
      FieldName = 'PAR_SOLGENERACHEQUE'
      Origin = 'PARAMETROS.PAR_SOLGENERACHEQUE'
      Size = 5
    end
    object QParametrospar_invprecioconduce: TStringField
      FieldName = 'par_invprecioconduce'
      Size = 5
    end
    object QParametrospar_mailservidor: TStringField
      FieldName = 'par_mailservidor'
      Size = 60
    end
    object QParametrospar_mailcorreo: TStringField
      FieldName = 'par_mailcorreo'
      Size = 60
    end
    object QParametrospar_mailusuario: TStringField
      FieldName = 'par_mailusuario'
      Size = 60
    end
    object QParametrospar_mailclave: TStringField
      FieldName = 'par_mailclave'
      Size = 60
    end
    object QParametrospar_mailpuerto: TStringField
      FieldName = 'par_mailpuerto'
      Size = 60
    end
    object QParametrospar_itbisincluido: TStringField
      FieldName = 'par_itbisincluido'
      Size = 5
    end
    object QParametroscaj_codigo: TIntegerField
      FieldName = 'caj_codigo'
    end
    object QParametrospar_domicilio: TStringField
      FieldName = 'par_domicilio'
      Size = 5
    end
    object QParametrospar_monto_domicilio: TBCDField
      FieldName = 'par_monto_domicilio'
      currency = True
      Precision = 15
      Size = 2
    end
    object QParametrospar_copias_domicilio: TIntegerField
      FieldName = 'par_copias_domicilio'
    end
    object QParametrospar_beneficio: TBCDField
      FieldName = 'par_beneficio'
      currency = True
      Precision = 15
      Size = 2
    end
    object QParametrospar_tkclavereimprime: TStringField
      FieldName = 'par_tkclavereimprime'
      Size = 30
    end
    object QParametrospar_igualartelefonocliente: TStringField
      FieldName = 'par_igualartelefonocliente'
      Size = 5
    end
    object QParametrospar_valor_punto: TBCDField
      FieldName = 'par_valor_punto'
      currency = True
      Precision = 15
      Size = 2
    end
    object QParametrospar_punto_principal: TBCDField
      FieldName = 'par_punto_principal'
      currency = True
      Precision = 15
      Size = 2
    end
    object QParametrospar_punto_depen: TBCDField
      FieldName = 'par_punto_depen'
      currency = True
      Precision = 15
      Size = 2
    end
    object QParametrospar_redondeo: TStringField
      FieldName = 'par_redondeo'
      Size = 5
    end
    object QParametrospar_barra_header: TMemoField
      FieldName = 'par_barra_header'
      BlobType = ftMemo
    end
    object QParametrospar_fac_preimpresa: TStringField
      FieldName = 'par_fac_preimpresa'
      Size = 5
    end
    object QParametrospar_preciound_m: TStringField
      FieldName = 'par_preciound_m'
      Size = 7
    end
    object QParametrospar_precioemp_m: TStringField
      FieldName = 'par_precioemp_m'
      Size = 7
    end
    object QParametrospar_fac_oferta: TStringField
      FieldName = 'par_fac_oferta'
      Size = 5
    end
    object QParametrospar_nombre_familia: TStringField
      FieldName = 'par_nombre_familia'
      Size = 15
    end
    object QParametrospar_nombre_depto: TStringField
      FieldName = 'par_nombre_depto'
      Size = 15
    end
    object QParametrospar_nombre_color: TStringField
      FieldName = 'par_nombre_color'
      Size = 15
    end
    object QParametrospar_nombre_marca: TStringField
      FieldName = 'par_nombre_marca'
      Size = 15
    end
    object QParametrospar_inv_compra_centro_costo: TStringField
      FieldName = 'par_inv_compra_centro_costo'
      Size = 5
    end
    object QParametrospar_imprime_logo: TStringField
      FieldName = 'par_imprime_logo'
      Size = 5
    end
    object QParametrospar_arch_copiar_colector: TStringField
      FieldName = 'par_arch_copiar_colector'
      Size = 50
    end
    object QParametrospar_arch_recibe_colector: TStringField
      FieldName = 'par_arch_recibe_colector'
      Size = 50
    end
    object QParametrospar_delimitador_envia: TStringField
      FieldName = 'par_delimitador_envia'
      Size = 1
    end
    object QParametrospar_delimitador_recibe: TStringField
      FieldName = 'par_delimitador_recibe'
      Size = 1
    end
    object QParametrospar_modifica_fecha_factura: TStringField
      FieldName = 'par_modifica_fecha_factura'
      Size = 5
    end
    object QParametrospar_pago_mayor_balance: TStringField
      FieldName = 'par_pago_mayor_balance'
      Size = 5
    end
    object QParametrospar_nota_orden_servicio: TMemoField
      FieldName = 'par_nota_orden_servicio'
      BlobType = ftMemo
    end
    object QParametrospar_controlar: TStringField
      FieldName = 'par_controlar'
      Size = 5
    end
    object QParametrospar_formato_preimpreso: TStringField
      FieldName = 'par_formato_preimpreso'
    end
    object QParametrospar_usuario_cuadra: TStringField
      FieldName = 'par_usuario_cuadra'
      Size = 5
    end
    object QParametrospar_inv_entrada_modifica_precio: TStringField
      FieldName = 'par_inv_entrada_modifica_precio'
      Size = 5
    end
    object QParametrospar_movtk: TStringField
      FieldName = 'par_movtk'
      Size = 3
    end
    object QParametrospar_visualizadesc: TStringField
      FieldName = 'par_visualizadesc'
      Size = 5
    end
    object QParametrospar_visualiza_selectivo: TStringField
      FieldName = 'par_visualiza_selectivo'
      Size = 5
    end
    object QParametrospar_cantidad_primero: TStringField
      FieldName = 'par_cantidad_primero'
      Size = 50
    end
    object QParametrospar_busqueda_porciento: TStringField
      FieldName = 'par_busqueda_porciento'
      Size = 5
    end
    object QParametrospar_busqueda_cxp: TStringField
      FieldName = 'par_busqueda_cxp'
      Size = 10
    end
    object QParametrospar_moneda_local: TIntegerField
      FieldName = 'par_moneda_local'
    end
    object QParametrospar_envio: TMemoField
      FieldName = 'par_envio'
      BlobType = ftMemo
    end
    object QParametrospar_nota_cotizacion: TMemoField
      FieldName = 'par_nota_cotizacion'
      BlobType = ftMemo
    end
    object QParametrospar_almacendevolucion: TIntegerField
      FieldName = 'par_almacendevolucion'
    end
    object QParametrospar_boletos_monto: TBCDField
      FieldName = 'par_boletos_monto'
      currency = True
      Precision = 15
      Size = 2
    end
    object QParametrospar_boletos_cantidad: TIntegerField
      FieldName = 'par_boletos_cantidad'
    end
    object QParametrospar_ticket_itbis: TStringField
      FieldName = 'par_ticket_itbis'
      Size = 5
    end
    object QParametrospar_ftp_site: TStringField
      FieldName = 'par_ftp_site'
      Size = 50
    end
    object QParametrospar_ftp_usuario: TStringField
      FieldName = 'par_ftp_usuario'
      Size = 50
    end
    object QParametrospar_ftp_password: TStringField
      FieldName = 'par_ftp_password'
      Size = 50
    end
    object QParametrospar_ftp_ruta: TStringField
      FieldName = 'par_ftp_ruta'
      Size = 50
    end
    object QParametrospar_modifica_precio_automatico: TStringField
      FieldName = 'par_modifica_precio_automatico'
      Size = 5
    end
    object QParametrospar_inv_forma_inventario: TStringField
      FieldName = 'par_inv_forma_inventario'
      Size = 1
    end
    object QParametrospar_visualizar_cant_empaque: TStringField
      FieldName = 'par_visualizar_cant_empaque'
      Size = 5
    end
    object QParametrospar_imprimir_calculo_empaque: TStringField
      FieldName = 'par_imprimir_calculo_empaque'
      Size = 5
    end
    object QParametrospar_inv_transferencia_auto: TStringField
      FieldName = 'par_inv_transferencia_auto'
      Size = 5
    end
    object QParametrospar_validar_serie_en_inventario: TStringField
      FieldName = 'par_validar_serie_en_inventario'
      Size = 5
    end
    object QParametrospar_boletos_monto_patrocinador: TBCDField
      FieldName = 'par_boletos_monto_patrocinador'
      Precision = 15
      Size = 2
    end
    object QParametrospar_boletos_cantidad_patrocinador: TIntegerField
      FieldName = 'par_boletos_cantidad_patrocinador'
    end
    object QParametrospar_movdc: TIntegerField
      FieldName = 'par_movdc'
    end
    object QParametrospar_busqueda_dejar_ultimo: TStringField
      FieldName = 'par_busqueda_dejar_ultimo'
      Size = 5
    end
    object QParametrospar_compras_visualiza_diferencia: TStringField
      FieldName = 'par_compras_visualiza_diferencia'
      Size = 5
    end
    object QParametrospar_genera_puntos_credito: TStringField
      FieldName = 'par_genera_puntos_credito'
      Size = 5
    end
    object QParametrospar_inv_unidad_medida: TStringField
      FieldName = 'par_inv_unidad_medida'
      Size = 5
    end
    object QParametrospar_numerofactura_tipo: TStringField
      FieldName = 'par_numerofactura_tipo'
      Size = 5
    end
    object QParametrospar_facturarcero: TStringField
      FieldName = 'par_facturarcero'
      Size = 5
    end
    object QParametrospar_textobarra7: TStringField
      FieldName = 'par_textobarra7'
      Size = 60
    end
    object QParametrospar_opc6talinea: TStringField
      FieldName = 'par_opc6talinea'
    end
    object QParametrospar_opc7malinea: TStringField
      FieldName = 'par_opc7malinea'
    end
    object QParametrosIdioma: TStringField
      FieldName = 'Idioma'
      Size = 1
    end
    object QParametrospar_compras_valores_aut: TStringField
      FieldName = 'par_compras_valores_aut'
      Size = 5
    end
    object QParametrospar_inv_imprime_comentario: TStringField
      FieldName = 'par_inv_imprime_comentario'
      Size = 5
    end
    object QParametrospar_aplica_desc_por_rango_venta: TStringField
      FieldName = 'par_aplica_desc_por_rango_venta'
      Size = 5
    end
    object QParametrospar_cantidad_caducidad: TIntegerField
      FieldName = 'par_cantidad_caducidad'
    end
    object QParametrospar_periodo_caducidad: TStringField
      FieldName = 'par_periodo_caducidad'
    end
    object QParametrospar_imprimir_sin_detalle_RI: TStringField
      FieldName = 'par_imprimir_sin_detalle_RI'
      Size = 5
    end
    object QParametroscot_dias_valides: TIntegerField
      FieldName = 'cot_dias_valides'
    end
    object QParametrosPAR_FORMATOENVIOCON: TIntegerField
      FieldName = 'PAR_FORMATOENVIOCON'
    end
    object QParametrospar_impresora_boleto: TStringField
      FieldName = 'par_impresora_boleto'
      Size = 255
    end
    object QParametrospar_comision_vend: TBooleanField
      FieldName = 'par_comision_vend'
    end
  end
  object qEjecutar: TADOQuery
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
    Top = 336
  end
  object qBuscVend: TADOQuery
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
    Top = 336
  end
end
