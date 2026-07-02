object frmFactura: TfrmFactura
  Left = 334
  Top = 176
  ActiveControl = edTipo
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Facturacion'
  ClientHeight = 555
  ClientWidth = 889
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
  object Label20: TLabel
    Left = 480
    Top = 280
    Width = 37
    Height = 13
    Caption = 'Label20'
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 889
    Height = 133
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Label2: TLabel
      Left = 8
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object btBuscaCli: TSpeedButton
      Left = 148
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
      OnClick = btBuscaCliClick
    end
    object Label3: TLabel
      Left = 8
      Top = 56
      Width = 43
      Height = 13
      Caption = 'Direcci'#243'n'
    end
    object Label4: TLabel
      Left = 8
      Top = 77
      Width = 44
      Height = 13
      Caption = 'Localidad'
    end
    object Label5: TLabel
      Left = 238
      Top = 56
      Width = 42
      Height = 13
      Caption = 'Tel'#233'fono'
    end
    object Label7: TLabel
      Left = 149
      Top = 77
      Width = 48
      Height = 13
      Caption = 'Disponible'
    end
    object Label12: TLabel
      Left = 402
      Top = 56
      Width = 46
      Height = 13
      Caption = 'Vendedor'
    end
    object btVendedor: TSpeedButton
      Left = 502
      Top = 51
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
      Left = 402
      Top = 77
      Width = 46
      Height = 13
      Caption = 'Condici'#243'n'
    end
    object btCondi: TSpeedButton
      Left = 502
      Top = 74
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
    object Label8: TLabel
      Left = 402
      Top = 32
      Width = 40
      Height = 13
      Caption = 'Sucursal'
    end
    object Label6: TLabel
      Left = 402
      Top = 8
      Width = 22
      Height = 13
      Caption = 'Caja'
    end
    object btcaja: TSpeedButton
      Left = 502
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
    object Label14: TLabel
      Left = 176
      Top = 8
      Width = 21
      Height = 13
      Caption = 'RNC'
    end
    object Label17: TLabel
      Left = 8
      Top = 32
      Width = 37
      Height = 13
      Caption = 'Nombre'
    end
    object SpeedButton1: TSpeedButton
      Left = 338
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
      OnClick = SpeedButton1Click
    end
    object Label27: TLabel
      Left = 618
      Top = 8
      Width = 38
      Height = 13
      Caption = '#Orden'
      FocusControl = DBEdit16
    end
    object Label15: TLabel
      Left = 400
      Top = 105
      Width = 52
      Height = 13
      Caption = 'Referencia'
    end
    object lbPedido: TLabel
      Left = 744
      Top = 32
      Width = 43
      Height = 13
      Caption = 'Pedido #'
      Visible = False
    end
    object lbReferencia: TLabel
      Left = 745
      Top = 54
      Width = 52
      Height = 13
      Caption = 'Referencia'
      Visible = False
    end
    object btnReserva: TSpeedButton
      Left = 99
      Top = 99
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
      OnClick = btnReservaClick
    end
    object LBReserva: TLabel
      Left = 10
      Top = 104
      Width = 45
      Height = 13
      Caption = 'Reservas'
    end
    object lbHasta: TLabel
      Left = 194
      Top = 104
      Width = 45
      Height = 13
      Caption = 'Reservas'
    end
    object edCliente: TEdit
      Left = 64
      Top = 8
      Width = 81
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
      OnExit = edClienteExit
      OnKeyDown = edClienteKeyDown
      OnKeyPress = edClienteKeyPress
    end
    object DBEdit1: TDBEdit
      Left = 64
      Top = 54
      Width = 169
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'FAC_DIRECCION'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit2: TDBEdit
      Left = 64
      Top = 76
      Width = 81
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'FAC_LOCALIDAD'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DBEdit3: TDBEdit
      Left = 288
      Top = 54
      Width = 73
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'FAC_TELEFONO'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object tLimite: TEdit
      Left = 200
      Top = 76
      Width = 81
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
      TabOrder = 9
      OnEnter = tTipoEnter
    end
    object DBEdit11: TDBEdit
      Left = 72
      Top = 32
      Width = 297
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'FAC_NOMBRE'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object dbVendedor: TDBEdit
      Left = 474
      Top = 52
      Width = 25
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'VEN_CODIGO'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object tVendedor: TEdit
      Left = 526
      Top = 52
      Width = 213
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
      TabOrder = 11
      OnEnter = tTipoEnter
    end
    object dbCondi: TDBEdit
      Left = 474
      Top = 74
      Width = 25
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'CPA_CODIGO'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object tCondicion: TEdit
      Left = 526
      Top = 74
      Width = 117
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
      TabOrder = 13
      OnEnter = tTipoEnter
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 474
      Top = 30
      Width = 266
      Height = 21
      DataField = 'SUC_CODIGO'
      DataSource = dsFactura
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
      TabOrder = 8
      TabStop = False
      OnClick = DBLookupComboBox2Click
    end
    object dbCaja: TDBEdit
      Left = 474
      Top = 8
      Width = 25
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'fac_caja'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnChange = dbCajaChange
    end
    object tcaja: TEdit
      Left = 526
      Top = 8
      Width = 85
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
      TabOrder = 14
      OnEnter = tTipoEnter
    end
    object DBEdit14: TDBEdit
      Left = 208
      Top = 8
      Width = 129
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'fac_rnc'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 11
      ParentFont = False
      TabOrder = 1
      OnExit = DBEdit14Exit
      OnKeyPress = DBEdit14KeyPress
    end
    object DBEdit16: TDBEdit
      Left = 658
      Top = 8
      Width = 81
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'OrdenID'
      DataSource = dsFactura
      TabOrder = 7
    end
    object DBEdit4: TDBEdit
      Left = 472
      Top = 101
      Width = 73
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'cot_proyecto'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
    end
    object dbedtPedidoNo: TDBEdit
      Left = 800
      Top = 30
      Width = 114
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PedidoNo'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
      Visible = False
    end
    object dbedtReferencia: TDBEdit
      Left = 800
      Top = 52
      Width = 114
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'Referencia'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
      Visible = False
    end
    object chkTipoFacHotel: TCheckBox
      Left = 746
      Top = 5
      Width = 64
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Detallada'
      TabOrder = 18
      Visible = False
    end
    object dbedtNumReserva: TDBEdit
      Left = 63
      Top = 100
      Width = 33
      Height = 21
      BevelKind = bkFlat
      BiDiMode = bdRightToLeftNoAlign
      BorderStyle = bsNone
      DataField = 'NUMERO_RESERVA'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 19
    end
    object edtNoReserva: TEdit
      Left = 124
      Top = 100
      Width = 237
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
      TabOrder = 20
    end
    object DEdt_Desde: TcxDateEdit
      Left = 64
      Top = 100
      TabOrder = 21
      Width = 121
    end
    object DEdt_Hasta: TcxDateEdit
      Left = 248
      Top = 100
      TabOrder = 22
      Width = 121
    end
    object dtFechaLimite: TDBEdit
      Left = 651
      Top = 76
      Width = 87
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'FechaLimitePago'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 23
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 889
    Height = 57
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label9: TLabel
      Left = 8
      Top = 8
      Width = 29
      Height = 13
      Caption = 'Fecha'
    end
    object Label13: TLabel
      Left = 144
      Top = 8
      Width = 32
      Height = 13
      Caption = 'Cajero'
    end
    object Label1: TLabel
      Left = 8
      Top = 32
      Width = 44
      Height = 13
      Caption = 'Tipo Fac.'
    end
    object btTipo: TSpeedButton
      Left = 96
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
      OnClick = btTipoClick
    end
    object Label22: TLabel
      Left = 402
      Top = 8
      Width = 38
      Height = 13
      Caption = 'Moneda'
    end
    object btmoneda: TSpeedButton
      Left = 514
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
      OnClick = btmonedaClick
    end
    object Label18: TLabel
      Left = 402
      Top = 32
      Width = 65
      Height = 13
      Caption = 'Comprobante'
    end
    object bttiponcf: TSpeedButton
      Left = 514
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
      OnClick = bttiponcfClick
    end
    object DBEdit5: TDBEdit
      Left = 64
      Top = 8
      Width = 65
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'FAC_FECHA'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object tCajero: TEdit
      Left = 184
      Top = 8
      Width = 153
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
      TabOrder = 5
      OnEnter = tTipoEnter
    end
    object edTipo: TEdit
      Left = 64
      Top = 32
      Width = 30
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PopupMenu = frmMain.PopupMenu1
      TabOrder = 1
      OnExit = edTipoExit
      OnKeyDown = edTipoKeyDown
    end
    object tTipo: TEdit
      Left = 120
      Top = 32
      Width = 217
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
      TabOrder = 6
      OnEnter = tTipoEnter
    end
    object tmoneda: TEdit
      Left = 538
      Top = 8
      Width = 161
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
      TabOrder = 7
      OnEnter = tTipoEnter
    end
    object DBEdit15: TDBEdit
      Left = 700
      Top = 8
      Width = 39
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'FAC_TASA'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit9: TDBEdit
      Left = 474
      Top = 8
      Width = 38
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'MON_CODIGO'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object ttiponcf: TEdit
      Left = 538
      Top = 32
      Width = 201
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
      OnEnter = ttiponcfEnter
    end
    object DBEdit13: TDBEdit
      Left = 474
      Top = 32
      Width = 38
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'tip_codigo'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object ckcopia: TCheckBox
      Left = 343
      Top = 35
      Width = 48
      Height = 17
      Caption = 'Copia'
      TabOrder = 9
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 386
    Width = 889
    Height = 169
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 3
    DesignSize = (
      889
      169)
    object Label19: TLabel
      Left = 413
      Top = 110
      Width = 120
      Height = 45
      Anchors = [akTop, akRight, akBottom]
      Caption = 'TOTAL'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -37
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btBuscaProd: TSpeedButton
      Left = 290
      Top = 34
      Width = 134
      Height = 25
      Caption = '[ F4 ] - Buscar producto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btBuscaProdClick
    end
    object btPrecio: TSpeedButton
      Left = 154
      Top = 59
      Width = 134
      Height = 25
      Caption = '[ F7 ] - Selecci'#243'n precio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btPrecioClick
    end
    object lblRecargos: TLabel
      Left = 567
      Top = 8
      Width = 45
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Recargos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LbPropinaLegal: TLabel
      Left = 551
      Top = 31
      Width = 64
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Propina Legal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label23: TLabel
      Left = 571
      Top = 54
      Width = 42
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Servicios'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 713
      Top = 52
      Width = 49
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Desc. Gral'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 807
      Top = 52
      Width = 11
      Height = 13
      Anchors = [akTop, akRight]
      Caption = '%'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label21: TLabel
      Left = 707
      Top = 30
      Width = 57
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Desc. Items'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label30: TLabel
      Left = 722
      Top = 8
      Width = 42
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'SubTotal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbItbis: TLabel
      Left = 741
      Top = 74
      Width = 21
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Itbis'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblLbTotalUS: TLabel
      Left = 553
      Top = 86
      Width = 60
      Height = 16
      Anchors = [akTop, akRight]
      Caption = 'Total US$'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbVendedor: TLabel
      Left = 155
      Top = 91
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
    object btPedido: TBitBtn
      Left = 4
      Top = 9
      Width = 53
      Height = 25
      Caption = 'Pedidos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = btPedidoClick
    end
    object btCotiza: TBitBtn
      Left = 59
      Top = 9
      Width = 64
      Height = 25
      Caption = 'Cotizaci'#243'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = btCotizaClick
    end
    object btBusca: TBitBtn
      Left = 457
      Top = 9
      Width = 109
      Height = 25
      Caption = 'Buscar factura'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TabStop = False
      OnClick = btBuscaClick
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
    object DBEdit10: TDBEdit
      Tag = 1
      Left = 540
      Top = 105
      Width = 345
      Height = 61
      TabStop = False
      Anchors = [akTop, akRight, akBottom]
      AutoSelect = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clMenuText
      DataField = 'FAC_TOTAL'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -40
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      OnEnter = DBEdit6Enter
    end
    object btGrabar: TBitBtn
      Left = 4
      Top = 34
      Width = 143
      Height = 25
      Caption = '[F2] - Grabar / Imprimir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      TabStop = False
      OnClick = btGrabarClick
    end
    object btLimpiar: TBitBtn
      Left = 154
      Top = 34
      Width = 134
      Height = 25
      Caption = '[ F3 ] - Limpiar/Nueva   '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      TabStop = False
      OnClick = btLimpiarClick
    end
    object btSalir: TBitBtn
      Left = 432
      Top = 59
      Width = 134
      Height = 25
      Caption = '[ F10 ] - Cancelar/Salir '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      TabStop = False
      OnClick = btSalirClick
    end
    object btBuscaCliente: TBitBtn
      Left = 432
      Top = 34
      Width = 134
      Height = 25
      Caption = '[ F5 ] - Buscar Cliente  '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      TabStop = False
      OnClick = btBuscaClienteClick
    end
    object btNota: TBitBtn
      Left = 293
      Top = 59
      Width = 131
      Height = 25
      Caption = '[ F8 ] - Nota de factura  '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      TabStop = False
      OnClick = btNotaClick
    end
    object btnGuardaTemporal: TBitBtn
      Left = 184
      Top = 9
      Width = 93
      Height = 25
      Caption = 'Graba Temporal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      TabStop = False
      OnClick = btnGuardaTemporalClick
    end
    object btnBuscaTemporal: TBitBtn
      Left = 279
      Top = 9
      Width = 93
      Height = 25
      Caption = 'Buscar temporal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      TabStop = False
      OnClick = btnBuscaTemporalClick
    end
    object DBEdit12: TDBEdit
      Left = 552
      Top = 60
      Width = 17
      Height = 21
      DataField = 'VEN_CODIGO'
      DataSource = dsDetalle
      TabOrder = 11
      Visible = False
    end
    object btconduce: TBitBtn
      Left = 125
      Top = 9
      Width = 58
      Height = 25
      Caption = 'Conduce'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      TabStop = False
      OnClick = btconduceClick
    end
    object ckItbis: TDBCheckBox
      Left = 720
      Top = 71
      Width = 17
      Height = 17
      Anchors = [akTop, akRight]
      DataField = 'FAC_CONITBIS'
      DataSource = dsFactura
      Enabled = False
      TabOrder = 13
      ValueChecked = 'True'
      ValueUnchecked = 'True'
      OnClick = ckItbisClick
    end
    object BtDescGral: TBitBtn
      Left = 374
      Top = 9
      Width = 81
      Height = 25
      Caption = 'Desc. General'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      TabStop = False
      OnClick = BtDescGralClick
    end
    object btdelete: TBitBtn
      Left = 4
      Top = 59
      Width = 143
      Height = 25
      Caption = '[ F6 ] - Eliminar fila       '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      TabStop = False
      OnClick = btdeleteClick
    end
    object DBGrid_1: TDBGrid
      Left = 328
      Top = 152
      Width = 737
      Height = 158
      DataSource = DS_1
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs]
      TabOrder = 16
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
    object dbedt_RECARGOS: TDBEdit
      Tag = 1
      Left = 618
      Top = 5
      Width = 85
      Height = 21
      TabStop = False
      Anchors = [akTop, akRight]
      AutoSelect = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'Recargo'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 17
      Visible = False
      OnEnter = DBEdit6Enter
      OnExit = dbedt_RECARGOSExit
    end
    object dbedtFAC_PROPINA: TDBEdit
      Tag = 1
      Left = 618
      Top = 28
      Width = 85
      Height = 21
      TabStop = False
      Anchors = [akTop, akRight]
      AutoSelect = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'FAC_PROPINA'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 18
      Visible = False
      OnEnter = DBEdit6Enter
    end
    object dbedtFAC_SERVICIOS: TDBEdit
      Tag = 1
      Left = 618
      Top = 51
      Width = 85
      Height = 21
      TabStop = False
      Anchors = [akTop, akRight]
      AutoSelect = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'FAC_SERVICIOS'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 19
      Visible = False
    end
    object DBEdit6: TDBEdit
      Tag = 1
      Left = 768
      Top = 48
      Width = 39
      Height = 21
      TabStop = False
      Anchors = [akTop, akRight]
      AutoSelect = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'porc_desc_gral'
      DataSource = dsFactura
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 22
      OnEnter = DBEdit6Enter
    end
    object DBEdit7: TDBEdit
      Tag = 1
      Left = 823
      Top = 48
      Width = 59
      Height = 21
      TabStop = False
      Anchors = [akTop, akRight]
      AutoSelect = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'Tdesc_gral_sin_Itbis'
      DataSource = dsFactura
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 23
      OnEnter = DBEdit6Enter
      OnExit = DBEdit7Exit
    end
    object DBEdit8: TDBEdit
      Tag = 1
      Left = 768
      Top = 25
      Width = 115
      Height = 21
      TabStop = False
      Anchors = [akTop, akRight]
      AutoSelect = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'FAC_DESCUENTO'
      DataSource = dsFactura
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 21
      OnEnter = DBEdit6Enter
      OnExit = dbedt_RECARGOSExit
    end
    object DBEdit18: TDBEdit
      Tag = 1
      Left = 768
      Top = 3
      Width = 115
      Height = 21
      TabStop = False
      Anchors = [akTop, akRight]
      AutoSelect = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'SubTotal'
      DataSource = dsFactura
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 20
      OnEnter = DBEdit6Enter
    end
    object DBEdit19: TDBEdit
      Tag = 1
      Left = 768
      Top = 70
      Width = 115
      Height = 21
      TabStop = False
      Anchors = [akTop, akRight]
      AutoSelect = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'FAC_ITBIS'
      DataSource = dsFactura
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 24
      OnEnter = DBEdit6Enter
      OnExit = dbedt_RECARGOSExit
    end
    object EDT_FAC_TOTALUS: TDBEdit
      Tag = 1
      Left = 618
      Top = 85
      Width = 97
      Height = 21
      TabStop = False
      Anchors = [akTop, akRight]
      AutoSelect = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'FAC_TOTALUS'
      DataSource = dsFactura
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 25
      OnEnter = DBEdit6Enter
    end
    object btBuscaVendPorc: TBitBtn
      Left = 4
      Top = 84
      Width = 143
      Height = 25
      Caption = '[ F11 ] - Vendedor / Porc'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 26
      TabStop = False
      OnClick = btBuscaVendPorcClick
    end
  end
  object btBalance: TBitBtn
    Left = 288
    Top = 133
    Width = 73
    Height = 21
    Caption = 'Balance'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    TabStop = False
    OnClick = btBalanceClick
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 190
    Width = 889
    Height = 196
    ActivePage = TabSheet3
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 2
    TabStop = False
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Productos de la factura'
      object Grid: TDBGrid
        Left = 0
        Top = 35
        Width = 881
        Height = 130
        Align = alClient
        Ctl3D = False
        DataSource = dsDetalle
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgCancelOnExit]
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
        OnDrawColumnCell = GridDrawColumnCell
        OnKeyDown = GridKeyDown
        OnKeyPress = GridKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'PRO_CODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 90
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'PRO_NOMBRE'
            Title.Caption = 'Descripci'#243'n del Producto'
            Width = 190
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DET_CANTIDAD'
            Title.Alignment = taCenter
            Title.Caption = 'Cant'
            Width = 48
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DET_MEDIDA'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'DET Medida'
            Width = 62
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'det_cantempaque'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Cant/Emp'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_unidad_medida'
            Title.Alignment = taCenter
            Title.Caption = 'MEDIDA'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'det_cant_oferta'
            Title.Alignment = taCenter
            Title.Caption = 'Oferta'
            Visible = False
          end
          item
            Alignment = taCenter
            Color = clInfoBk
            Expanded = False
            FieldName = 'DET_ESCALA'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Escala'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DET_PRECIO'
            Title.Alignment = taCenter
            Title.Caption = 'Precio'
            Width = 70
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'PrecioItbis'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Prec. Bruto'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DET_DESCUENTO'
            Title.Alignment = taCenter
            Title.Caption = '%Desc'
            Width = 40
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'CalcItbis'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = '%Itbis'
            Width = 63
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'Valor'
            Title.Alignment = taCenter
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SubPedido'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Orden'
            Visible = False
          end>
      end
      object RG_BuscaDet: TRadioGroup
        Left = 0
        Top = 0
        Width = 881
        Height = 35
        Align = alTop
        Caption = 'Busqueda Producto por'
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'Codigo'
          'Ref. Original'
          'Ref. Fabricante')
        TabOrder = 1
        OnClick = RG_BuscaDetClick
      end
      object ed1: TEdit
        Left = 120
        Top = 200
        Width = 121
        Height = 21
        Enabled = False
        TabOrder = 2
        Visible = False
      end
      object Lista: TListBox
        Left = 488
        Top = 110
        Width = 193
        Height = 80
        ItemHeight = 13
        TabOrder = 3
        Visible = False
      end
      object mmo1: TMemo
        Left = 12
        Top = 112
        Width = 185
        Height = 89
        Lines.Strings = (
          'mmo1')
        TabOrder = 4
        Visible = False
      end
      object pnMsgImpresion: TPanel
        Left = 152
        Top = 80
        Width = 577
        Height = 89
        TabOrder = 5
        Visible = False
        object lblWait: TLabel
          Left = 29
          Top = 32
          Width = 319
          Height = 29
          Alignment = taCenter
          Caption = 'Buscando puerto, espere...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object GridSerie: TStringGrid
        Left = 360
        Top = 120
        Width = 257
        Height = 89
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
        TabOrder = 6
        Visible = False
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Cuentas contables'
      ImageIndex = 1
      DesignSize = (
        881
        165)
      object Label24: TLabel
        Left = 39
        Top = 148
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
        Top = 148
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
        Top = 148
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
      object GridCuentas: TDBGrid
        Left = 40
        Top = 0
        Width = 849
        Height = 142
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
        TabOrder = 0
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
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 30
        Height = 165
        Align = alLeft
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 1
        object btdeletecuenta: TSpeedButton
          Left = 4
          Top = 4
          Width = 23
          Height = 22
          Hint = 'Eliminar cuenta de la lista'
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
          Hint = 'Buscar cuenta contable'
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
      object lbBAL: TStaticText
        Left = 431
        Top = 148
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
        Top = 148
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
        Top = 148
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
    object TabSheet3: TTabSheet
      Caption = 'Datos del cami'#243'n'
      ImageIndex = 2
      object Label28: TLabel
        Left = 8
        Top = 8
        Width = 25
        Height = 13
        Caption = 'Placa'
        FocusControl = DBEdit17
      end
      object btcamion: TSpeedButton
        Left = 155
        Top = 8
        Width = 23
        Height = 22
        Hint = 'Buscar Placa del Camion'
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
      object DBEdit17: TDBEdit
        Left = 56
        Top = 8
        Width = 97
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'Placa'
        DataSource = dsFactura
        TabOrder = 0
      end
      object memocamion: TMemo
        Left = 56
        Top = 32
        Width = 628
        Height = 113
        BevelKind = bkFlat
        BorderStyle = bsNone
        ReadOnly = True
        TabOrder = 1
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Facturas y Records clinicos'
      ImageIndex = 3
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 30
        Height = 85
        Align = alLeft
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object SpeedButton3: TSpeedButton
          Left = 4
          Top = 5
          Width = 23
          Height = 22
          Hint = 'Insertar facturas'
          Flat = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
            55555575555555775F55509999999901055557F55555557F75F5001111111101
            105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
            01105777F555557F75F75500FFFFFF0FF0105577F555FF7F57575550FF700008
            8F0055575FF7777555775555000888888F005555777FFFFFFF77555550000000
            0F055555577777777F7F555550FFFFFF0F05555557F5FFF57F7F555550F000FF
            0005555557F777557775555550FFFFFF0555555557F555FF7F55555550FF7000
            05555555575FF777755555555500055555555555557775555555}
          NumGlyphs = 2
          OnClick = SpeedButton3Click
        end
        object SpeedButton4: TSpeedButton
          Left = 4
          Top = 30
          Width = 23
          Height = 22
          Hint = 'Insertar records'
          Flat = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000000
            055557777777777775F508888888888880557F5FFFFFFFFFF75F080000000000
            88057577777777775F755080FFFFFF05088057F7FFFFFF7575F70000000000F0
            F08077777777775757F70FFFFFFFFF0F008075F5FF5FF57577F750F00F00FFF0
            F08057F775775557F7F750FFFFFFFFF0F08057FF5555555757F7000FFFFFFFFF
            0000777FF5FFFFF577770900F00000F000907F775777775777F7090FFFFFFFFF
            00907F7F555555557757000FFFFFFFFF0F00777F5FFF5FF57F77550F000F00FF
            0F05557F777577557F7F550FFFFFFFFF0005557F555FFFFF7775550FFF000000
            05555575FF777777755555500055555555555557775555555555}
          NumGlyphs = 2
          OnClick = SpeedButton4Click
        end
      end
      object gridclinico: TDBGrid
        Left = 30
        Top = 0
        Width = 845
        Height = 85
        Align = alClient
        Ctl3D = False
        DataSource = dsClinico
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnKeyDown = gridclinicoKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'facturaid'
            Title.Alignment = taCenter
            Title.Caption = '#Factura'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'recordid'
            Title.Alignment = taCenter
            Title.Caption = '#Record'
            Width = 44
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'fecha'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'paciente'
            Title.Caption = 'Nombre del Paciente'
            Width = 185
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'poliza'
            Title.Alignment = taCenter
            Title.Caption = 'Poliza'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cobertura'
            Title.Alignment = taCenter
            Title.Caption = 'Cobertura'
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'autorizacion'
            Title.Alignment = taCenter
            Title.Caption = '#Autorizaci'#243'n'
            Width = 76
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'facturada_sigma'
            Title.Alignment = taCenter
            Title.Caption = 'Reportar?'
            Visible = True
          end>
      end
      object Panel6: TPanel
        Left = 0
        Top = 85
        Width = 875
        Height = 25
        Align = alBottom
        TabOrder = 2
        object lbfacturas: TLabel
          Left = 539
          Top = 4
          Width = 51
          Height = 13
          Alignment = taRightJustify
          Caption = '0 Facturas'
        end
        object lbrecords: TLabel
          Left = 630
          Top = 4
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Caption = '0 Records'
        end
        object Label29: TLabel
          Left = 200
          Top = 5
          Width = 240
          Height = 13
          Caption = 'Barra espaciadora para cambiar el estatus'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ProgressBar1: TProgressBar
          Left = 1
          Top = 1
          Width = 192
          Height = 23
          Align = alLeft
          TabOrder = 0
        end
      end
    end
  end
  object Panel7: TPanel
    Left = 502
    Top = 156
    Width = 251
    Height = 31
    BevelOuter = bvNone
    TabOrder = 5
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
    object dbtxtUlmPRecio: TDBText
      Left = 128
      Top = 17
      Width = 89
      Height = 13
      Align = alCustom
      DataField = 'PRECIO'
      DataSource = dsUltimoPrecio
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ckdomicilio: TDBCheckBox
      Left = 146
      Top = 0
      Width = 89
      Height = 17
      TabStop = False
      Caption = 'DOMICILIO'
      DataField = 'FAC_DOMICILIO'
      DataSource = dsFactura
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      OnClick = ckdomicilioClick
    end
    object chkMail: TCheckBox
      Left = 90
      Top = -17
      Width = 49
      Height = 14
      Alignment = taLeftJustify
      Caption = 'Correo'
      TabOrder = 1
    end
  end
  object pnCorreo: TPanel
    Left = 210
    Top = 126
    Width = 185
    Height = 41
    Caption = 'Enviando correo, favor espere......'
    TabOrder = 6
    Visible = False
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 496
    Top = 299
  end
  object QFactura: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = QFacturaAfterOpen
    AfterInsert = QFacturaAfterInsert
    BeforePost = QFacturaBeforePost
    AfterPost = QFacturaAfterPost
    OnCalcFields = QFacturaCalcFields
    OnNewRecord = QFacturaNewRecord
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
        Name = 'tipo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end
      item
        Name = 'numero'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end
      item
        Name = 'forma'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = '1'
      end
      item
        Name = 'suc'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    SQL.Strings = (
      'select '
      
        'F.emp_codigo, F.suc_codigo, fac_forma, F.tfa_codigo, fac_numero,' +
        ' fac_fecha, fac_nombre, fac_direccion, fac_localidad,'
      
        'fac_telefono, fac_fax, fac_status, fac_nota, fac_descuento, fac_' +
        'itbis, fac_otros, fac_total, fac_abono, F.cli_referencia, '
      
        'fac_vence, fac_comision, fac_mensaje1, fac_mensaje2, fac_mensaje' +
        '3, fac_porccomision, fac_cuotas, fac_hora, fac_ano, fac_mes,'
      
        'fac_conitbis, fac_devuelto, fac_tasa, mon_codigo, F.cpa_codigo, ' +
        'F.ven_codigo, caj_codigo, F.cli_codigo, F.usu_codigo, alm_codigo' +
        ','
      
        'ped_tipo,ped_numero, cot_numero, con_numero, fac_domicilio, fac_' +
        'comisionpagada, fac_caja, F.pro_codigo, NCF_Fijo, NCF_Secuencia,'
      
        'fac_enviado, fac_selectivo_ad, fac_selectivo_con, fac_hold, fac_' +
        'rnc, fac_usuario_anulo, fac_motivo_anulo, fac_dividio, fac_numer' +
        'o1,'
      
        'fac_numero2, OrdenID, Placa, Chofer, Metraje, Compania, Marca, M' +
        'odelo, CamionID, Cashflow_Grupo, Cashflow_Subgrupo, Cashflow_Con' +
        'cepto,'
      
        'Cashflow_TransaccionID, mapid, detallemapid, cen_codigo, fac_aut' +
        'omatica, fac_interes, manu_codigo, F.tip_codigo, COT_PROYECTO, p' +
        'orc_desc_gral,'
      
        'Tdesc_gral, Recargo, PedidoNo, Referencia, FAC_PROPINA, NUMERO_R' +
        'ESERVA, NIF, Tdesc_gral, porc_desc_gral, FAC_HOLD,fac_tasacambio' +
        ','
      
        'fac_total_dolar, eNCF, E.emp_rnc, C.cli_rnc, t.cod_dgii as Tipoe' +
        'NCF, FechaLimitePago'
      'from'
      'FACTURAS F INNER JOIN Empresas E ON E.emp_codigo=F.emp_codigo'
      'LEFT join TipoNCF t on t.tip_codigo=f.tip_codigo'
      'LEFT JOIN Clientes C ON C.cli_codigo= F.cli_codigo'
      'where F.emp_codigo = :emp'
      'and F.tfa_codigo = :tipo'
      'and F.fac_numero = :numero'
      'and F.fac_forma = :forma'
      'and F.suc_codigo = :suc')
    Left = 456
    Top = 219
    object QFacturaCAJ_CODIGO: TIntegerField
      FieldName = 'CAJ_CODIGO'
    end
    object QFacturaCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
    end
    object QFacturaCOT_NUMERO: TIntegerField
      FieldName = 'COT_NUMERO'
    end
    object QFacturaCPA_CODIGO: TIntegerField
      FieldName = 'CPA_CODIGO'
      OnGetText = QFacturaCPA_CODIGOGetText
    end
    object QFacturaFAC_ABONO: TBCDField
      FieldName = 'FAC_ABONO'
      Precision = 15
      Size = 2
    end
    object QFacturaEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QFacturaFAC_DIRECCION: TStringField
      FieldName = 'FAC_DIRECCION'
      Size = 100
    end
    object QFacturaFAC_FAX: TStringField
      FieldName = 'FAC_FAX'
      Size = 30
    end
    object QFacturaFAC_FECHA: TDateTimeField
      FieldName = 'FAC_FECHA'
      EditMask = 'cc-cc-cccc'
    end
    object QFacturaFAC_FORMA: TStringField
      FieldName = 'FAC_FORMA'
      Size = 1
    end
    object QFacturaFAC_LOCALIDAD: TStringField
      FieldName = 'FAC_LOCALIDAD'
      Size = 100
    end
    object QFacturaFAC_NOMBRE: TStringField
      FieldName = 'FAC_NOMBRE'
      Size = 255
    end
    object QFacturaFAC_NUMERO: TIntegerField
      FieldName = 'FAC_NUMERO'
    end
    object QFacturaFAC_STATUS: TStringField
      FieldName = 'FAC_STATUS'
      Size = 3
    end
    object QFacturaFAC_TELEFONO: TStringField
      FieldName = 'FAC_TELEFONO'
      Size = 30
    end
    object QFacturaFAC_OTROS: TBCDField
      FieldName = 'FAC_OTROS'
      DisplayFormat = '#,0.00'
      Precision = 15
      Size = 2
    end
    object QFacturaPED_NUMERO: TIntegerField
      FieldName = 'PED_NUMERO'
    end
    object QFacturaTFA_CODIGO: TIntegerField
      FieldName = 'TFA_CODIGO'
      OnGetText = QFacturaTFA_CODIGOGetText
    end
    object QFacturaUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object QFacturaVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
      OnGetText = QFacturaVEN_CODIGOGetText
    end
    object QFacturaCLI_REFERENCIA: TStringField
      FieldName = 'CLI_REFERENCIA'
      Size = 30
    end
    object QFacturaALM_CODIGO: TIntegerField
      FieldName = 'ALM_CODIGO'
      OnChange = QFacturaALM_CODIGOChange
    end
    object QFacturaFAC_VENCE: TDateTimeField
      FieldName = 'FAC_VENCE'
    end
    object QFacturaFAC_COMISION: TBCDField
      FieldName = 'FAC_COMISION'
      Precision = 15
      Size = 2
    end
    object QFacturaFAC_MENSAJE1: TStringField
      DisplayWidth = 600
      FieldName = 'FAC_MENSAJE1'
      Size = 2500
    end
    object QFacturaFAC_MENSAJE2: TStringField
      FieldName = 'FAC_MENSAJE2'
      Size = 2500
    end
    object QFacturaFAC_MENSAJE3: TStringField
      FieldName = 'FAC_MENSAJE3'
      Size = 2500
    end
    object QFacturaFAC_PORCCOMISION: TBCDField
      FieldName = 'FAC_PORCCOMISION'
      Precision = 15
      Size = 2
    end
    object QFacturaFAC_CUOTAS: TIntegerField
      FieldName = 'FAC_CUOTAS'
    end
    object QFacturaFAC_HORA: TStringField
      FieldName = 'FAC_HORA'
      Size = 15
    end
    object QFacturaCON_NUMERO: TIntegerField
      FieldName = 'CON_NUMERO'
    end
    object QFacturaFAC_ANO: TIntegerField
      FieldName = 'FAC_ANO'
    end
    object QFacturaFAC_MES: TIntegerField
      FieldName = 'FAC_MES'
    end
    object QFacturaFAC_CONITBIS: TStringField
      FieldName = 'FAC_CONITBIS'
      Size = 5
    end
    object QFacturaFAC_DEVUELTO: TBCDField
      FieldName = 'FAC_DEVUELTO'
      Precision = 15
      Size = 2
    end
    object QFacturaMON_CODIGO: TIntegerField
      FieldName = 'MON_CODIGO'
      OnGetText = QFacturaMON_CODIGOGetText
    end
    object QFacturaSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
      OnChange = QFacturaSUC_CODIGOChange
    end
    object QFacturaFAC_DOMICILIO: TStringField
      FieldName = 'FAC_DOMICILIO'
      Size = 5
    end
    object QFacturafac_comisionpagada: TBCDField
      FieldName = 'fac_comisionpagada'
      Precision = 15
      Size = 2
    end
    object QFacturafac_caja: TIntegerField
      FieldName = 'fac_caja'
      OnChange = QFacturafac_cajaChange
      OnGetText = QFacturafac_cajaGetText
    end
    object QFacturapro_codigo: TIntegerField
      FieldName = 'pro_codigo'
    end
    object QFacturaNCF_Fijo: TStringField
      FieldName = 'NCF_Fijo'
      Size = 11
    end
    object QFacturaNCF_Secuencia: TBCDField
      FieldName = 'NCF_Secuencia'
      Precision = 18
      Size = 0
    end
    object QFacturafac_selectivo_ad: TBCDField
      FieldName = 'fac_selectivo_ad'
      Precision = 15
      Size = 2
    end
    object QFacturafac_selectivo_con: TBCDField
      FieldName = 'fac_selectivo_con'
      Precision = 15
      Size = 2
    end
    object QFacturafac_hold: TStringField
      FieldName = 'fac_hold'
      Size = 5
    end
    object QFacturafac_rnc: TStringField
      FieldName = 'fac_rnc'
      OnChange = QFacturafac_rncChange
      Size = 13
    end
    object QFacturaOrdenID: TStringField
      FieldName = 'OrdenID'
      Size = 30
    end
    object QFacturaPlaca: TStringField
      FieldName = 'Placa'
      OnChange = QFacturaPlacaChange
    end
    object QFacturaChofer: TStringField
      FieldName = 'Chofer'
      Size = 50
    end
    object QFacturaModelo: TStringField
      FieldName = 'Modelo'
      Size = 50
    end
    object QFacturaMarca: TStringField
      FieldName = 'Marca'
      Size = 50
    end
    object QFacturaCompania: TStringField
      FieldName = 'Compania'
      Size = 100
    end
    object QFacturaCamionID: TIntegerField
      FieldName = 'CamionID'
    end
    object QFacturaMetraje: TBCDField
      FieldName = 'Metraje'
      Precision = 18
      Size = 2
    end
    object QFacturafac_interes: TBCDField
      FieldName = 'fac_interes'
      Precision = 8
      Size = 2
    end
    object QFacturatip_codigo: TIntegerField
      FieldName = 'tip_codigo'
      OnGetText = QFacturatip_codigoGetText
    end
    object QFacturacot_proyecto: TStringField
      FieldName = 'cot_proyecto'
      Size = 256
    end
    object QFacturaSubTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SubTotal'
      DisplayFormat = '#,0.00'
      Calculated = True
    end
    object QFacturaFAC_NOTA: TMemoField
      DisplayWidth = 255
      FieldName = 'FAC_NOTA'
      BlobType = ftMemo
    end
    object QFacturaRecargo: TCurrencyField
      FieldName = 'Recargo'
      DisplayFormat = '#,0.00'
      currency = False
    end
    object QFacturaPedidoNo: TStringField
      FieldName = 'PedidoNo'
      Size = 30
    end
    object QFacturaReferencia: TStringField
      FieldName = 'Referencia'
      Size = 30
    end
    object QFacturaFAC_DESCUENTO: TBCDField
      FieldName = 'FAC_DESCUENTO'
      DisplayFormat = '#,0.00'
      Precision = 15
      Size = 2
    end
    object QFacturaFAC_ITBIS: TBCDField
      FieldName = 'FAC_ITBIS'
      OnChange = QFacturaFAC_ITBISChange
      DisplayFormat = '#,0.00'
      Precision = 15
    end
    object QFacturaFAC_TOTAL: TBCDField
      FieldName = 'FAC_TOTAL'
      DisplayFormat = '#,0.00'
      Precision = 15
      Size = 2
    end
    object QFacturaFAC_PROPINA: TCurrencyField
      FieldName = 'FAC_PROPINA'
      DisplayFormat = '#,0.00'
      currency = False
    end
    object QFacturaNUMERO_RESERVA: TIntegerField
      FieldName = 'NUMERO_RESERVA'
      OnGetText = QFacturaNUMERO_RESERVAGetText
    end
    object QFacturaFAC_SERVICIOS: TFloatField
      DefaultExpression = '0.0000'
      FieldKind = fkCalculated
      FieldName = 'FAC_SERVICIOS'
      DisplayFormat = '#,0.0000'
      EditFormat = '#,0.0000'
      Calculated = True
    end
    object QFacturaFAC_TASA: TFloatField
      FieldName = 'FAC_TASA'
      DisplayFormat = '#,0.00'
    end
    object QFacturaNIF: TStringField
      FieldName = 'NIF'
    end
    object QFacturaTdesc_gral: TCurrencyField
      FieldName = 'Tdesc_gral'
      DisplayFormat = '#,0.00'
      currency = False
    end
    object QFacturaporc_desc_gral: TCurrencyField
      FieldName = 'porc_desc_gral'
      DisplayFormat = '#,0.00'
      currency = False
    end
    object QFacturaTdesc_gral_sin_Itbis: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Tdesc_gral_sin_Itbis'
      DisplayFormat = '#,0.00'
      currency = False
      Calculated = True
    end
    object QFacturaFAC_TOTALUS: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'FAC_TOTALUS'
      DisplayFormat = '#,0.00'
      currency = False
      Calculated = True
    end
    object QFacturafac_tasacambio: TFloatField
      FieldName = 'fac_tasacambio'
    end
    object QFacturafac_total_dolar: TFloatField
      FieldName = 'fac_total_dolar'
    end
    object QFacturaeNCF: TStringField
      FieldName = 'eNCF'
      Size = 50
    end
    object QFacturaemp_rnc: TStringField
      FieldName = 'emp_rnc'
      Size = 60
    end
    object QFacturacli_rnc: TStringField
      FieldName = 'cli_rnc'
      Size = 60
    end
    object QFacturaTipoeNCF: TIntegerField
      FieldName = 'TipoeNCF'
    end
    object QFacturaFechaLimitePago: TDateField
      FieldName = 'FechaLimitePago'
      OnValidate = QFacturaFechaLimitePagoValidate
      DisplayFormat = 'dd/mm/yyyy'
    end
  end
  object dsFactura: TDataSource
    DataSet = QFactura
    OnStateChange = dsFacturaStateChange
    OnDataChange = dsFacturaDataChange
    Left = 496
    Top = 235
  end
  object dsDetalle: TDataSource
    DataSet = QDetalle
    OnDataChange = dsDetalleDataChange
    Left = 496
    Top = 267
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 568
    Top = 267
  end
  object QFacTMP: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QFacTMPBeforePost
    OnCalcFields = QFacTMPCalcFields
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
        Name = 'num'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'for'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'tfa'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'id_facturatemporal'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'declare @empresa int, @sucursal int, @numero int, @forma char(1)' +
        ', @tfactura int, @id_facturatemporal int'
      'set @empresa = :emp'
      'set @sucursal = :suc'
      'set @numero = :num'
      'set @forma = :for'
      'set @tfactura = :tfa'
      'set @id_facturatemporal= :id_facturatemporal'
      'select '
      
        'emp_codigo, suc_codigo, fac_forma, tfa_codigo, fac_numero, fac_f' +
        'echa, fac_nombre, fac_direccion, fac_localidad,'
      
        'fac_telefono, fac_fax, fac_status, fac_nota, fac_descuento, fac_' +
        'itbis, fac_otros, fac_total, fac_abono, cli_referencia, '
      
        'fac_vence, fac_comision, fac_mensaje1, fac_mensaje2, fac_mensaje' +
        '3, fac_porccomision, fac_cuotas, fac_hora, fac_ano, fac_mes,'
      
        'fac_conitbis, fac_devuelto, fac_tasa, mon_codigo, cpa_codigo, ve' +
        'n_codigo, caj_codigo, CLI_CODIGO, usu_codigo, alm_codigo,'
      
        'ped_tipo,ped_numero, cot_numero, con_numero, fac_domicilio, fac_' +
        'comisionpagada, fac_caja, pro_codigo, NCF_Fijo, NCF_Secuencia,'
      
        'fac_enviado, fac_selectivo_ad, fac_selectivo_con, fac_hold, fac_' +
        'rnc, fac_usuario_anulo, fac_motivo_anulo, fac_dividio, fac_numer' +
        'o1,'
      
        'fac_numero2, OrdenID, Placa, Chofer, Metraje, Compania, Marca, M' +
        'odelo, CamionID, Cashflow_Grupo, Cashflow_Subgrupo, Cashflow_Con' +
        'cepto,'
      
        'Cashflow_TransaccionID, mapid, detallemapid, cen_codigo, fac_aut' +
        'omatica, fac_interes, manu_codigo, tip_codigo, COT_PROYECTO, por' +
        'c_desc_gral,'
      
        'Tdesc_gral, Recargo, PedidoNo, Referencia, FAC_PROPINA, NUMERO_R' +
        'ESERVA, NIF, Tdesc_gral, porc_desc_gral,fac_tasacambio,'
      'id_facturatemporal, FechaLimitePago'
      'from FACTURASTMP'
      
        'where emp_codigo = @empresa  and SUC_CODIGO = @sucursal and fac_' +
        'numero = @numero and tfa_codigo = @tfactura and fac_forma = @for' +
        'ma'
      'and id_facturatemporal=@id_facturatemporal'
      'order by FAC_NUMERO DESC')
    Left = 536
    Top = 235
    object QFacTMPCAJ_CODIGO: TIntegerField
      FieldName = 'CAJ_CODIGO'
    end
    object QFacTMPCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
    end
    object QFacTMPCOT_NUMERO: TIntegerField
      FieldName = 'COT_NUMERO'
    end
    object QFacTMPCPA_CODIGO: TIntegerField
      FieldName = 'CPA_CODIGO'
    end
    object QFacTMPFAC_ABONO: TBCDField
      FieldName = 'FAC_ABONO'
      Precision = 15
      Size = 2
    end
    object QFacTMPEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QFacTMPFAC_DIRECCION: TStringField
      FieldName = 'FAC_DIRECCION'
      Size = 100
    end
    object QFacTMPFAC_FAX: TStringField
      FieldName = 'FAC_FAX'
      Size = 30
    end
    object QFacTMPFAC_FECHA: TDateTimeField
      FieldName = 'FAC_FECHA'
      DisplayFormat = 'DD/MM/YYYY'
    end
    object QFacTMPFAC_FORMA: TStringField
      FieldName = 'FAC_FORMA'
      Size = 1
    end
    object QFacTMPFAC_LOCALIDAD: TStringField
      FieldName = 'FAC_LOCALIDAD'
      Size = 100
    end
    object QFacTMPFAC_NOMBRE: TStringField
      FieldName = 'FAC_NOMBRE'
      Size = 255
    end
    object QFacTMPFAC_NUMERO: TIntegerField
      FieldName = 'FAC_NUMERO'
    end
    object QFacTMPFAC_STATUS: TStringField
      FieldName = 'FAC_STATUS'
      Size = 3
    end
    object QFacTMPFAC_TELEFONO: TStringField
      FieldName = 'FAC_TELEFONO'
      Size = 30
    end
    object QFacTMPFAC_OTROS: TBCDField
      FieldName = 'FAC_OTROS'
      DisplayFormat = '#,0.0000'
      Precision = 15
      Size = 2
    end
    object QFacTMPPED_NUMERO: TIntegerField
      FieldName = 'PED_NUMERO'
    end
    object QFacTMPTFA_CODIGO: TIntegerField
      FieldName = 'TFA_CODIGO'
    end
    object QFacTMPUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object QFacTMPVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
    end
    object QFacTMPCLI_REFERENCIA: TStringField
      FieldName = 'CLI_REFERENCIA'
      Size = 30
    end
    object QFacTMPALM_CODIGO: TIntegerField
      FieldName = 'ALM_CODIGO'
    end
    object QFacTMPFAC_VENCE: TDateTimeField
      FieldName = 'FAC_VENCE'
    end
    object QFacTMPFAC_COMISION: TBCDField
      FieldName = 'FAC_COMISION'
      Precision = 15
      Size = 2
    end
    object QFacTMPFAC_MENSAJE1: TStringField
      DisplayWidth = 600
      FieldName = 'FAC_MENSAJE1'
      Size = 2500
    end
    object QFacTMPFAC_MENSAJE2: TStringField
      FieldName = 'FAC_MENSAJE2'
      Size = 2500
    end
    object QFacTMPFAC_MENSAJE3: TStringField
      FieldName = 'FAC_MENSAJE3'
      Size = 2500
    end
    object QFacTMPFAC_PORCCOMISION: TBCDField
      FieldName = 'FAC_PORCCOMISION'
      Precision = 15
      Size = 2
    end
    object QFacTMPFAC_CUOTAS: TIntegerField
      FieldName = 'FAC_CUOTAS'
    end
    object QFacTMPFAC_HORA: TStringField
      FieldName = 'FAC_HORA'
      Size = 15
    end
    object QFacTMPCON_NUMERO: TIntegerField
      FieldName = 'CON_NUMERO'
    end
    object QFacTMPFAC_ANO: TIntegerField
      FieldName = 'FAC_ANO'
    end
    object QFacTMPFAC_MES: TIntegerField
      FieldName = 'FAC_MES'
    end
    object QFacTMPFAC_CONITBIS: TStringField
      FieldName = 'FAC_CONITBIS'
      Size = 5
    end
    object QFacTMPFAC_DEVUELTO: TBCDField
      FieldName = 'FAC_DEVUELTO'
      Precision = 15
      Size = 2
    end
    object QFacTMPMON_CODIGO: TIntegerField
      FieldName = 'MON_CODIGO'
    end
    object QFacTMPSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QFacTMPFAC_DOMICILIO: TStringField
      FieldName = 'FAC_DOMICILIO'
      Size = 5
    end
    object QFacTMPfac_comisionpagada: TBCDField
      FieldName = 'fac_comisionpagada'
      Precision = 15
      Size = 2
    end
    object QFacTMPfac_caja: TIntegerField
      FieldName = 'fac_caja'
    end
    object QFacTMPpro_codigo: TIntegerField
      FieldName = 'pro_codigo'
    end
    object QFacTMPNCF_Fijo: TStringField
      FieldName = 'NCF_Fijo'
      Size = 11
    end
    object QFacTMPNCF_Secuencia: TBCDField
      FieldName = 'NCF_Secuencia'
      Precision = 18
      Size = 0
    end
    object QFacTMPfac_selectivo_ad: TBCDField
      FieldName = 'fac_selectivo_ad'
      Precision = 15
      Size = 2
    end
    object QFacTMPfac_selectivo_con: TBCDField
      FieldName = 'fac_selectivo_con'
      Precision = 15
      Size = 2
    end
    object QFacTMPfac_hold: TStringField
      FieldName = 'fac_hold'
      Size = 5
    end
    object QFacTMPfac_rnc: TStringField
      FieldName = 'fac_rnc'
      Size = 13
    end
    object QFacTMPOrdenID: TStringField
      FieldName = 'OrdenID'
      Size = 30
    end
    object QFacTMPPlaca: TStringField
      FieldName = 'Placa'
    end
    object QFacTMPChofer: TStringField
      FieldName = 'Chofer'
      Size = 50
    end
    object QFacTMPModelo: TStringField
      FieldName = 'Modelo'
      Size = 50
    end
    object QFacTMPMarca: TStringField
      FieldName = 'Marca'
      Size = 50
    end
    object QFacTMPCompania: TStringField
      FieldName = 'Compania'
      Size = 100
    end
    object QFacTMPCamionID: TIntegerField
      FieldName = 'CamionID'
    end
    object QFacTMPMetraje: TBCDField
      FieldName = 'Metraje'
      Precision = 18
      Size = 2
    end
    object QFacTMPfac_interes: TBCDField
      FieldName = 'fac_interes'
      Precision = 8
      Size = 2
    end
    object QFacTMPtip_codigo: TIntegerField
      FieldName = 'tip_codigo'
    end
    object QFacTMPcot_proyecto: TStringField
      FieldName = 'cot_proyecto'
      Size = 256
    end
    object QFacTMPSubTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SubTotal'
      DisplayFormat = '#,0.0000'
      Calculated = True
    end
    object QFacTMPFAC_NOTA: TMemoField
      DisplayWidth = 255
      FieldName = 'FAC_NOTA'
      BlobType = ftMemo
    end
    object QFacTMPRecargo: TCurrencyField
      FieldName = 'Recargo'
      DisplayFormat = '#,0.0000'
    end
    object QFacTMPPedidoNo: TStringField
      FieldName = 'PedidoNo'
      Size = 30
    end
    object QFacTMPReferencia: TStringField
      FieldName = 'Referencia'
      Size = 30
    end
    object QFacTMPFAC_DESCUENTO: TBCDField
      FieldName = 'FAC_DESCUENTO'
      DisplayFormat = '#,0.00'
      Precision = 15
      Size = 2
    end
    object QFacTMPFAC_ITBIS: TBCDField
      FieldName = 'FAC_ITBIS'
      DisplayFormat = '#,0.00'
      Precision = 15
    end
    object QFacTMPFAC_TOTAL: TBCDField
      FieldName = 'FAC_TOTAL'
      DisplayFormat = '#,0.00'
      Precision = 15
      Size = 2
    end
    object QFacTMPFAC_PROPINA: TCurrencyField
      FieldName = 'FAC_PROPINA'
      DisplayFormat = '#,0.00'
      currency = False
    end
    object QFacTMPNUMERO_RESERVA: TIntegerField
      FieldName = 'NUMERO_RESERVA'
    end
    object QFacTMPFAC_SERVICIOS: TFloatField
      DefaultExpression = '0.0000'
      FieldKind = fkCalculated
      FieldName = 'FAC_SERVICIOS'
      DisplayFormat = '#,0.0000'
      EditFormat = '#,0.0000'
      Calculated = True
    end
    object QFacTMPFAC_TASA: TFloatField
      FieldName = 'FAC_TASA'
      DisplayFormat = '#,0.00'
    end
    object QFacTMPNIF: TStringField
      FieldName = 'NIF'
    end
    object QFacTMPTdesc_gral: TCurrencyField
      FieldName = 'Tdesc_gral'
      DisplayFormat = '#,0.00'
    end
    object QFacTMPporc_desc_gral: TCurrencyField
      FieldName = 'porc_desc_gral'
      DisplayFormat = '#,0.00'
    end
    object QFacTMPTdesc_gral_sin_Itbis: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Tdesc_gral_sin_Itbis'
      DisplayFormat = '#,0.00'
      Calculated = True
    end
    object QFacTMPfac_tasacambio: TFloatField
      FieldName = 'fac_tasacambio'
    end
    object QFacTMPFechaLimitePago: TDateField
      FieldName = 'FechaLimitePago'
    end
  end
  object QDetalleTMP: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QDetalleTMPBeforePost
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
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'num'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'tfa'
        Size = -1
        Value = Null
      end
      item
        Name = 'for'
        Size = -1
        Value = Null
      end
      item
        Name = 'id_facturatemporal'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select '
      
        'DET_CANTDEVUELTA, DET_CANTIDAD, DET_CONITBIS, DET_COSTO, DET_DES' +
        'CUENTO,'
      
        'DET_ITBIS, DET_PRECIO, DET_SECUENCIA, DET_STATUS, EMP_CODIGO, FA' +
        'C_FORMA,'
      
        'FAC_NUMERO, PRO_BARRA, PRO_CODIGO, PRO_NOMBRE, PRO_RFABRIC, PRO_' +
        'RORIGINAL,'
      
        'TFA_CODIGO, DET_TOTAL, DEP_CODIGO, DET_COMISION, DET_OFERTA, DET' +
        '_DESCMAX,'
      'PRO_SERVICIO, VEN_CODIGO, DET_LOTE, DET_VENCE,'
      'DET_TOTALDESC, DET_TOTALITBIS, DET_PRECIOMINIMO,'
      'DET_ESCALA, DET_MANEJAESCALA, DET_MEDIDA,'
      'DET_COSTOEMP, DET_PRECIO1, DET_PRECIO2,'
      'DET_PRECIO3, DET_PRECIO4, PRO_COMBO,'
      'DET_PRECIOMINIMOEMP, PED_NUMERO, DET_NOTA,'
      'SUC_CODIGO, det_cant_oferta,'
      'det_selectivo_ad, det_selectivo_con, det_minimo_venta,'
      'mar_codigo, pro_ctacosto, pro_ctainvent, pro_ctaingreso,'
      'pre_codigo, alm_codigo, pro_ctadescuento,'
      'det_cantempaque, pro_unidad_medida, UnidadID,'
      'Medida_Precio1, Medida_Precio2, Medida_Precio3,'
      
        'Medida_Precio4, det_cant_unidad_medida, MedidorID, Medidor_Secue' +
        'ncia,'
      
        'Medidor_Cantidad, pro_utilizamedidor,pro_UtilizaEnvio, pro_seria' +
        'lizado, pro_UtilizaRenta, DET_DESCUENTO'
      
        ',SubPedido, Orden, Recargo, Secuencia,fac_nombre,id_facturatempo' +
        'ral,id_facturatemporaldet'
      'from '
      'DET_FACTURATMP'
      
        'where emp_codigo = :emp and SUC_CODIGO = :suc and fac_numero = :' +
        'num and tfa_codigo = :tfa and fac_forma = :for'
      'and id_facturatemporal= :id_facturatemporal'
      'order by det_secuencia')
    Left = 568
    Top = 235
    object QDetalleTMPDET_CANTDEVUELTA: TFloatField
      FieldName = 'DET_CANTDEVUELTA'
      Origin = 'DET_FACTURA.DET_CANTDEVUELTA'
    end
    object QDetalleTMPDET_CANTIDAD: TFloatField
      FieldName = 'DET_CANTIDAD'
      Origin = 'DET_FACTURA.DET_CANTIDAD'
    end
    object QDetalleTMPDET_CONITBIS: TIBStringField
      FieldName = 'DET_CONITBIS'
      Origin = 'DET_FACTURA.DET_CONITBIS'
      Size = 1
    end
    object QDetalleTMPDET_COSTO: TFloatField
      FieldName = 'DET_COSTO'
      Origin = 'DET_FACTURA.DET_COSTO'
    end
    object QDetalleTMPDET_DESCUENTO: TFloatField
      FieldName = 'DET_DESCUENTO'
      Origin = 'DET_FACTURA.DET_DESCUENTO'
    end
    object QDetalleTMPDET_ITBIS: TFloatField
      FieldName = 'DET_ITBIS'
      Origin = 'DET_FACTURA.DET_ITBIS'
    end
    object QDetalleTMPDET_PRECIO: TFloatField
      FieldName = 'DET_PRECIO'
      Origin = 'DET_FACTURA.DET_PRECIO'
    end
    object QDetalleTMPDET_SECUENCIA: TIntegerField
      FieldName = 'DET_SECUENCIA'
      Origin = 'DET_FACTURA.DET_SECUENCIA'
    end
    object QDetalleTMPDET_STATUS: TIBStringField
      FieldName = 'DET_STATUS'
      Origin = 'DET_FACTURA.DET_STATUS'
      Size = 3
    end
    object QDetalleTMPEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'DET_FACTURA.EMP_CODIGO'
    end
    object QDetalleTMPFAC_FORMA: TIBStringField
      FieldName = 'FAC_FORMA'
      Origin = 'DET_FACTURA.FAC_FORMA'
      Size = 1
    end
    object QDetalleTMPFAC_NUMERO: TIntegerField
      FieldName = 'FAC_NUMERO'
      Origin = 'DET_FACTURA.FAC_NUMERO'
    end
    object QDetalleTMPPRO_BARRA: TIBStringField
      FieldName = 'PRO_BARRA'
      Origin = 'DET_FACTURA.PRO_BARRA'
      Size = 30
    end
    object QDetalleTMPPRO_NOMBRE: TIBStringField
      DisplayWidth = 256
      FieldName = 'PRO_NOMBRE'
      Origin = 'DET_FACTURA.PRO_NOMBRE'
      Size = 256
    end
    object QDetalleTMPPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'DET_FACTURA.PRO_CODIGO'
    end
    object QDetalleTMPPRO_RFABRIC: TIBStringField
      FieldName = 'PRO_RFABRIC'
      Origin = 'DET_FACTURA.PRO_RFABRIC'
      Size = 60
    end
    object QDetalleTMPPRO_RORIGINAL: TIBStringField
      FieldName = 'PRO_RORIGINAL'
      Origin = 'DET_FACTURA.PRO_RORIGINAL'
      Size = 50
    end
    object QDetalleTMPTFA_CODIGO: TIntegerField
      FieldName = 'TFA_CODIGO'
      Origin = 'DET_FACTURA.TFA_CODIGO'
    end
    object QDetalleTMPCalcItbis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcItbis'
      Calculated = True
    end
    object QDetalleTMPCalcDesc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcDesc'
      Calculated = True
    end
    object QDetalleTMPPrecioItbis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PrecioItbis'
      Calculated = True
    end
    object QDetalleTMPValor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor'
      Calculated = True
    end
    object QDetalleTMPDET_TOTAL: TFloatField
      FieldName = 'DET_TOTAL'
      Origin = 'DET_FACTURA.DET_TOTAL'
    end
    object QDetalleTMPDEP_CODIGO: TIntegerField
      FieldName = 'DEP_CODIGO'
      Origin = 'DET_FACTURA.DEP_CODIGO'
    end
    object QDetalleTMPDET_COMISION: TFloatField
      FieldName = 'DET_COMISION'
      Origin = 'DET_FACTURA.DET_COMISION'
    end
    object QDetalleTMPDET_OFERTA: TIBStringField
      FieldName = 'DET_OFERTA'
      Origin = 'DET_FACTURA.DET_OFERTA'
      Size = 1
    end
    object QDetalleTMPDET_DESCMAX: TFloatField
      FieldName = 'DET_DESCMAX'
      Origin = 'DET_FACTURA.DET_DESCMAX'
    end
    object QDetalleTMPPRO_SERVICIO: TIBStringField
      FieldName = 'PRO_SERVICIO'
      Origin = 'DET_FACTURA.PRO_SERVICIO'
      Size = 5
    end
    object QDetalleTMPVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
      Origin = 'DET_FACTURA.VEN_CODIGO'
    end
    object QDetalleTMPDET_LOTE: TIntegerField
      FieldName = 'DET_LOTE'
      Origin = 'DET_FACTURA.DET_LOTE'
    end
    object QDetalleTMPDET_VENCE: TIBStringField
      FieldName = 'DET_VENCE'
      Origin = 'DET_FACTURA.DET_VENCE'
      Size = 5
    end
    object QDetalleTMPDET_TOTALDESC: TFloatField
      FieldName = 'DET_TOTALDESC'
      Origin = 'DET_FACTURA.DET_TOTALDESC'
    end
    object QDetalleTMPDET_TOTALITBIS: TFloatField
      FieldName = 'DET_TOTALITBIS'
      Origin = 'DET_FACTURA.DET_TOTALITBIS'
    end
    object QDetalleTMPDET_PRECIOMINIMO: TFloatField
      FieldName = 'DET_PRECIOMINIMO'
      Origin = 'DET_FACTURA.DET_PRECIOMINIMO'
    end
    object QDetalleTMPDET_ESCALA: TIBStringField
      FieldName = 'DET_ESCALA'
      Origin = 'DET_FACTURA.DET_ESCALA'
      Size = 5
    end
    object QDetalleTMPDET_MANEJAESCALA: TIBStringField
      FieldName = 'DET_MANEJAESCALA'
      Origin = 'DET_FACTURA.DET_MANEJAESCALA'
      Size = 5
    end
    object QDetalleTMPDET_MEDIDA: TIBStringField
      FieldName = 'DET_MEDIDA'
      Origin = 'DET_FACTURA.DET_MEDIDA'
      Size = 3
    end
    object QDetalleTMPDET_COSTOEMP: TFloatField
      FieldName = 'DET_COSTOEMP'
      Origin = 'DET_FACTURA.DET_COSTOEMP'
    end
    object QDetalleTMPDET_PRECIO1: TFloatField
      FieldName = 'DET_PRECIO1'
      Origin = 'DET_FACTURA.DET_PRECIO1'
    end
    object QDetalleTMPDET_PRECIO2: TFloatField
      FieldName = 'DET_PRECIO2'
      Origin = 'DET_FACTURA.DET_PRECIO2'
    end
    object QDetalleTMPDET_PRECIO3: TFloatField
      FieldName = 'DET_PRECIO3'
      Origin = 'DET_FACTURA.DET_PRECIO3'
    end
    object QDetalleTMPDET_PRECIO4: TFloatField
      FieldName = 'DET_PRECIO4'
      Origin = 'DET_FACTURA.DET_PRECIO4'
    end
    object QDetalleTMPPRO_COMBO: TIBStringField
      FieldName = 'PRO_COMBO'
      Origin = 'DET_FACTURA.PRO_COMBO'
      Size = 5
    end
    object QDetalleTMPDET_PRECIOMINIMOEMP: TFloatField
      FieldName = 'DET_PRECIOMINIMOEMP'
      Origin = 'DET_FACTURA.DET_PRECIOMINIMOEMP'
    end
    object QDetalleTMPPED_NUMERO: TIntegerField
      FieldName = 'PED_NUMERO'
      Origin = 'DET_FACTURA.PED_NUMERO'
    end
    object QDetalleTMPDET_NOTA: TMemoField
      FieldName = 'DET_NOTA'
      BlobType = ftMemo
    end
    object QDetalleTMPSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QDetalleTMPdet_cant_oferta: TBCDField
      FieldName = 'det_cant_oferta'
      Precision = 15
      Size = 2
    end
    object QDetalleTMPdet_selectivo_ad: TBCDField
      FieldName = 'det_selectivo_ad'
      Precision = 15
      Size = 2
    end
    object QDetalleTMPdet_selectivo_con: TBCDField
      FieldName = 'det_selectivo_con'
      Precision = 15
      Size = 2
    end
    object QDetalleTMPdet_minimo_venta: TBCDField
      FieldName = 'det_minimo_venta'
      Precision = 15
      Size = 2
    end
    object QDetalleTMPmar_codigo: TIntegerField
      FieldName = 'mar_codigo'
    end
    object QDetalleTMPpro_ctacosto: TStringField
      FieldName = 'pro_ctacosto'
      Size = 15
    end
    object QDetalleTMPpro_ctainvent: TStringField
      FieldName = 'pro_ctainvent'
      Size = 15
    end
    object QDetalleTMPpro_ctaingreso: TStringField
      FieldName = 'pro_ctaingreso'
      Size = 15
    end
    object QDetalleTMPpre_codigo: TIntegerField
      FieldName = 'pre_codigo'
    end
    object QDetalleTMPalm_codigo: TIntegerField
      FieldName = 'alm_codigo'
    end
    object QDetalleTMPpro_ctadescuento: TStringField
      FieldName = 'pro_ctadescuento'
      Size = 15
    end
    object QDetalleTMPdet_cantempaque: TBCDField
      FieldName = 'det_cantempaque'
      Precision = 15
      Size = 2
    end
    object QDetalleTMPpro_unidad_medida: TStringField
      FieldName = 'pro_unidad_medida'
    end
    object QDetalleTMPUnidadID: TStringField
      FieldName = 'UnidadID'
      Size = 1
    end
    object QDetalleTMPMedida_Precio1: TBCDField
      FieldName = 'Medida_Precio1'
      Precision = 18
      Size = 2
    end
    object QDetalleTMPMedida_Precio2: TBCDField
      FieldName = 'Medida_Precio2'
      Precision = 18
      Size = 2
    end
    object QDetalleTMPMedida_Precio3: TBCDField
      FieldName = 'Medida_Precio3'
      Precision = 18
      Size = 2
    end
    object QDetalleTMPMedida_Precio4: TBCDField
      FieldName = 'Medida_Precio4'
      Precision = 18
      Size = 2
    end
    object QDetalleTMPdet_cant_unidad_medida: TBCDField
      FieldName = 'det_cant_unidad_medida'
      Precision = 18
      Size = 2
    end
    object QDetalleTMPMedidorID: TIntegerField
      FieldName = 'MedidorID'
    end
    object QDetalleTMPMedidor_Secuencia: TBCDField
      FieldName = 'Medidor_Secuencia'
      Precision = 18
      Size = 0
    end
    object QDetalleTMPMedidor_Cantidad: TBCDField
      FieldName = 'Medidor_Cantidad'
      Precision = 18
      Size = 0
    end
    object QDetalleTMPpro_utilizamedidor: TStringField
      FieldName = 'pro_utilizamedidor'
      Size = 5
    end
    object QDetalleTMPpro_UtilizaEnvio: TStringField
      FieldName = 'pro_UtilizaEnvio'
      Size = 5
    end
    object QDetalleTMPpro_serializado: TStringField
      FieldName = 'pro_serializado'
    end
    object QDetalleTMPpro_UtilizaRenta: TStringField
      FieldName = 'pro_UtilizaRenta'
      Size = 5
    end
    object QDetalleTMPSubPedido: TStringField
      FieldName = 'SubPedido'
    end
    object QDetalleTMPOrden: TStringField
      FieldName = 'Orden'
    end
    object QDetalleTMPSecuencia: TIntegerField
      FieldName = 'Secuencia'
    end
    object QDetalleTMPfac_nombre: TStringField
      FieldName = 'fac_nombre'
      Size = 255
    end
  end
  object QVendedores: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <
      item
        Name = 'EMP_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT VEN_CODIGO, VEN_NOMBRE'
      'FROM VENDEDORES'
      'WHERE EMP_CODIGO = :EMP_CODIGO'
      'ORDER BY VEN_NOMBRE')
    Left = 536
    Top = 299
    object QVendedoresVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
      Origin = 'VENDEDORES.VEN_CODIGO'
      Required = True
    end
    object QVendedoresVEN_NOMBRE: TIBStringField
      FieldName = 'VEN_NOMBRE'
      Origin = 'VENDEDORES.VEN_NOMBRE'
      Size = 60
    end
  end
  object dsVend: TDataSource
    DataSet = QVendedores
    Left = 568
    Top = 299
  end
  object QSucursal: TADOQuery
    Connection = DM.ADOSigma
    BeforePost = QSucursalBeforePost
    AfterPost = QSucursalAfterPost
    AfterDelete = QSucursalAfterDelete
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
      
        'select  s.suc_direccion, s.suc_localidad, s.suc_telefono, s.suc_' +
        'rnc,'
      's.emp_codigo, s.suc_codigo, s.suc_nombre, s.alm_codigo'
      'from'
      'sucursales s, sucursal_acceso a'
      'where'
      's.emp_codigo = a.emp_codigo'
      'and s.suc_codigo = a.suc_codigo'
      'and a.emp_codigo = :emp_codigo'
      'and a.usu_codigo = :usu'
      'order by s.suc_codigo')
    Left = 608
    Top = 235
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
    object QSucursalsuc_direccion: TStringField
      FieldName = 'suc_direccion'
      Size = 60
    end
    object QSucursalsuc_localidad: TStringField
      FieldName = 'suc_localidad'
      Size = 60
    end
    object QSucursalsuc_telefono: TStringField
      FieldName = 'suc_telefono'
      Size = 30
    end
    object QSucursalsuc_rnc: TStringField
      FieldName = 'suc_rnc'
      Size = 30
    end
  end
  object dsSuc: TDataSource
    DataSet = QSucursal
    Left = 640
    Top = 235
  end
  object QReceta: TADOQuery
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
        Name = 'suc'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'for'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'tfa'
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
      'emp_codigo, suc_codigo, fac_forma, fac_numero,'
      'tfa_codigo, pro_codigo, det_secuencia, det_tipo,'
      'det_esf, det_cil, det_eje, det_add, det_dist,'
      'det_alt'
      'from'
      'receta_optica'
      'where'
      'emp_codigo = :emp'
      'and suc_codigo = :suc'
      'and fac_forma = :for'
      'and tfa_codigo = :tfa'
      'and fac_numero = :num'
      'order by'
      'det_secuencia')
    Left = 536
    Top = 267
    object QRecetaemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QRecetasuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QRecetafac_forma: TStringField
      FieldName = 'fac_forma'
      Size = 1
    end
    object QRecetafac_numero: TIntegerField
      FieldName = 'fac_numero'
    end
    object QRecetatfa_codigo: TIntegerField
      FieldName = 'tfa_codigo'
    end
    object QRecetapro_codigo: TIntegerField
      FieldName = 'pro_codigo'
    end
    object QRecetadet_secuencia: TIntegerField
      FieldName = 'det_secuencia'
    end
    object QRecetadet_tipo: TStringField
      FieldName = 'det_tipo'
      Size = 3
    end
    object QRecetadet_esf: TStringField
      FieldName = 'det_esf'
      Size = 10
    end
    object QRecetadet_cil: TStringField
      FieldName = 'det_cil'
      Size = 10
    end
    object QRecetadet_eje: TStringField
      FieldName = 'det_eje'
      Size = 10
    end
    object QRecetadet_add: TStringField
      FieldName = 'det_add'
      Size = 10
    end
    object QRecetadet_dist: TStringField
      FieldName = 'det_dist'
      Size = 10
    end
    object QRecetadet_alt: TStringField
      FieldName = 'det_alt'
      Size = 10
    end
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
        Name = 'suc'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'emp_codigo, suc_codigo, fac_forma, tfa_codigo, fac_numero,'
      'det_secuencia, cat_nombre, det_monto, det_origen, cat_cuenta'
      'from'
      'contdet_facturas'
      'where'
      'emp_codigo = :emp'
      'and tfa_codigo = :tipo'
      'and fac_numero = :numero'
      'and fac_forma = :forma'
      'and suc_codigo = :suc'
      'order by'
      'det_secuencia')
    Left = 608
    Top = 267
    object QCuentasemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QCuentassuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QCuentasfac_forma: TStringField
      FieldName = 'fac_forma'
      Size = 1
    end
    object QCuentastfa_codigo: TIntegerField
      FieldName = 'tfa_codigo'
    end
    object QCuentasfac_numero: TIntegerField
      FieldName = 'fac_numero'
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
    Left = 640
    Top = 267
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterInsert = QDetalleAfterInsert
    BeforeEdit = QDetalleBeforeEdit
    AfterEdit = QDetalleAfterEdit
    BeforePost = QDetalleBeforePost
    AfterPost = QDetalleAfterPost
    BeforeDelete = QDetalleBeforeDelete
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
        Name = 'suc'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select '
      
        'DET_CANTDEVUELTA, DET_CANTIDAD, DET_CONITBIS, DET_COSTO, DET_DES' +
        'CUENTO,'
      
        'DET_ITBIS, DET_PRECIO, DET_SECUENCIA, DET_STATUS, EMP_CODIGO, FA' +
        'C_FORMA,'
      
        'FAC_NUMERO, PRO_BARRA, PRO_CODIGO, PRO_NOMBRE, PRO_RFABRIC, PRO_' +
        'RORIGINAL,'
      
        'TFA_CODIGO, DET_TOTAL, DEP_CODIGO, DET_COMISION, DET_OFERTA, DET' +
        '_DESCMAX,'
      'PRO_SERVICIO, VEN_CODIGO, DET_LOTE, DET_VENCE,'
      'DET_TOTALDESC, DET_TOTALITBIS, DET_PRECIOMINIMO,'
      'DET_ESCALA, DET_MANEJAESCALA, DET_MEDIDA,'
      'DET_COSTOEMP, DET_PRECIO1, DET_PRECIO2,'
      'DET_PRECIO3, DET_PRECIO4, PRO_COMBO,'
      'DET_PRECIOMINIMOEMP, PED_NUMERO, DET_NOTA,'
      'SUC_CODIGO, det_cant_oferta,'
      'det_selectivo_ad, det_selectivo_con, det_minimo_venta,'
      'mar_codigo, pro_ctacosto, pro_ctainvent, pro_ctaingreso,'
      'pre_codigo, alm_codigo, pro_ctadescuento,'
      'det_cantempaque, pro_unidad_medida, UnidadID,'
      'Medida_Precio1, Medida_Precio2, Medida_Precio3,'
      
        'Medida_Precio4, det_cant_unidad_medida, MedidorID, Medidor_Secue' +
        'ncia,'
      
        'Medidor_Cantidad, pro_utilizamedidor,pro_UtilizaEnvio, pro_seria' +
        'lizado, pro_UtilizaRenta, DET_DESCUENTO'
      
        ',SubPedido, Orden, Recargo, Secuencia, det_servicio_construccion' +
        ', porc_vendedor, ven_codigo'
      'From'
      'DET_FACTURA'
      'where emp_codigo = :emp'
      'and tfa_codigo = :tipo'
      'and fac_numero = :numero'
      'and fac_forma = :forma'
      'and suc_codigo = :suc'
      'order by det_secuencia')
    Left = 464
    Top = 267
    object QDetalleDET_CANTDEVUELTA: TFloatField
      FieldName = 'DET_CANTDEVUELTA'
      Origin = 'DET_FACTURA.DET_CANTDEVUELTA'
      DisplayFormat = '#,0.00'
    end
    object QDetalleDET_CONITBIS: TIBStringField
      FieldName = 'DET_CONITBIS'
      Origin = 'DET_FACTURA.DET_CONITBIS'
      Size = 1
    end
    object QDetalleDET_COSTO: TFloatField
      FieldName = 'DET_COSTO'
      Origin = 'DET_FACTURA.DET_COSTO'
      DisplayFormat = '#,0.00'
      currency = True
    end
    object QDetalleDET_DESCUENTO: TFloatField
      FieldName = 'DET_DESCUENTO'
      Origin = 'DET_FACTURA.DET_DESCUENTO'
      DisplayFormat = '#,0.00'
      currency = True
    end
    object QDetalleDET_SECUENCIA: TIntegerField
      FieldName = 'DET_SECUENCIA'
      Origin = 'DET_FACTURA.DET_SECUENCIA'
      OnValidate = QDetalleDET_SECUENCIAValidate
    end
    object QDetalleDET_STATUS: TIBStringField
      FieldName = 'DET_STATUS'
      Origin = 'DET_FACTURA.DET_STATUS'
      Size = 3
    end
    object QDetalleEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'DET_FACTURA.EMP_CODIGO'
    end
    object QDetalleFAC_FORMA: TIBStringField
      FieldName = 'FAC_FORMA'
      Origin = 'DET_FACTURA.FAC_FORMA'
      Size = 1
    end
    object QDetalleFAC_NUMERO: TIntegerField
      FieldName = 'FAC_NUMERO'
      Origin = 'DET_FACTURA.FAC_NUMERO'
    end
    object QDetallePRO_BARRA: TIBStringField
      FieldName = 'PRO_BARRA'
      LookupDataSet = DM.adoMultiUso
      Origin = 'DET_FACTURA.PRO_BARRA'
      Size = 30
    end
    object QDetallePRO_NOMBRE: TIBStringField
      DisplayWidth = 256
      FieldName = 'PRO_NOMBRE'
      Origin = 'DET_FACTURA.PRO_NOMBRE'
      Size = 256
    end
    object QDetallePRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'DET_FACTURA.PRO_CODIGO'
      OnChange = QDetallePRO_CODIGOChange
    end
    object QDetallePRO_RFABRIC: TIBStringField
      FieldName = 'PRO_RFABRIC'
      Origin = 'DET_FACTURA.PRO_RFABRIC'
      OnChange = QDetallePRO_RFABRICChange
      Size = 60
    end
    object QDetallePRO_RORIGINAL: TIBStringField
      FieldName = 'PRO_RORIGINAL'
      Origin = 'DET_FACTURA.PRO_RORIGINAL'
      OnChange = QDetallePRO_RORIGINALChange
      Size = 50
    end
    object QDetalleTFA_CODIGO: TIntegerField
      FieldName = 'TFA_CODIGO'
      Origin = 'DET_FACTURA.TFA_CODIGO'
    end
    object QDetalleCalcDesc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcDesc'
      currency = True
      Calculated = True
    end
    object QDetalleDET_TOTAL: TFloatField
      FieldName = 'DET_TOTAL'
      Origin = 'DET_FACTURA.DET_TOTAL'
      DisplayFormat = '#,0.00'
      currency = True
    end
    object QDetalleDEP_CODIGO: TIntegerField
      FieldName = 'DEP_CODIGO'
      Origin = 'DET_FACTURA.DEP_CODIGO'
    end
    object QDetalleDET_COMISION: TFloatField
      FieldName = 'DET_COMISION'
      Origin = 'DET_FACTURA.DET_COMISION'
    end
    object QDetalleDET_OFERTA: TIBStringField
      FieldName = 'DET_OFERTA'
      Origin = 'DET_FACTURA.DET_OFERTA'
      Size = 1
    end
    object QDetalleDET_DESCMAX: TFloatField
      FieldName = 'DET_DESCMAX'
      Origin = 'DET_FACTURA.DET_DESCMAX'
    end
    object QDetallePRO_SERVICIO: TIBStringField
      FieldName = 'PRO_SERVICIO'
      Origin = 'DET_FACTURA.PRO_SERVICIO'
      Size = 5
    end
    object QDetalleVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
      Origin = 'DET_FACTURA.VEN_CODIGO'
    end
    object QDetalleDET_LOTE: TIntegerField
      FieldName = 'DET_LOTE'
      Origin = 'DET_FACTURA.DET_LOTE'
    end
    object QDetalleDET_VENCE: TIBStringField
      FieldName = 'DET_VENCE'
      Origin = 'DET_FACTURA.DET_VENCE'
      Size = 5
    end
    object QDetalleDET_TOTALDESC: TFloatField
      FieldName = 'DET_TOTALDESC'
      Origin = 'DET_FACTURA.DET_TOTALDESC'
      DisplayFormat = '#,0.00'
    end
    object QDetalleDET_TOTALITBIS: TFloatField
      FieldName = 'DET_TOTALITBIS'
      Origin = 'DET_FACTURA.DET_TOTALITBIS'
      DisplayFormat = '#,0.00'
    end
    object QDetalleDET_PRECIOMINIMO: TFloatField
      FieldName = 'DET_PRECIOMINIMO'
      Origin = 'DET_FACTURA.DET_PRECIOMINIMO'
      DisplayFormat = '#,0.00'
    end
    object QDetalleDET_ESCALA: TIBStringField
      FieldName = 'DET_ESCALA'
      Origin = 'DET_FACTURA.DET_ESCALA'
      Size = 5
    end
    object QDetalleDET_MANEJAESCALA: TIBStringField
      FieldName = 'DET_MANEJAESCALA'
      Origin = 'DET_FACTURA.DET_MANEJAESCALA'
      Size = 5
    end
    object QDetalleDET_MEDIDA: TIBStringField
      DisplayWidth = 20
      FieldName = 'DET_MEDIDA'
      Origin = 'DET_FACTURA.DET_MEDIDA'
      OnChange = QDetalleDET_MEDIDAChange
    end
    object QDetalleDET_COSTOEMP: TFloatField
      FieldName = 'DET_COSTOEMP'
      Origin = 'DET_FACTURA.DET_COSTOEMP'
      DisplayFormat = '#,0.00'
    end
    object QDetalleDET_PRECIO1: TFloatField
      FieldName = 'DET_PRECIO1'
      Origin = 'DET_FACTURA.DET_PRECIO1'
      DisplayFormat = '#,0.00'
    end
    object QDetalleDET_PRECIO2: TFloatField
      FieldName = 'DET_PRECIO2'
      Origin = 'DET_FACTURA.DET_PRECIO2'
      DisplayFormat = '#,0.00'
    end
    object QDetalleDET_PRECIO3: TFloatField
      FieldName = 'DET_PRECIO3'
      Origin = 'DET_FACTURA.DET_PRECIO3'
      DisplayFormat = '#,0.00'
    end
    object QDetalleDET_PRECIO4: TFloatField
      FieldName = 'DET_PRECIO4'
      Origin = 'DET_FACTURA.DET_PRECIO4'
      DisplayFormat = '#,0.00'
    end
    object QDetallePRO_COMBO: TIBStringField
      FieldName = 'PRO_COMBO'
      Origin = 'DET_FACTURA.PRO_COMBO'
      Size = 5
    end
    object QDetalleDET_PRECIOMINIMOEMP: TFloatField
      FieldName = 'DET_PRECIOMINIMOEMP'
      Origin = 'DET_FACTURA.DET_PRECIOMINIMOEMP'
    end
    object QDetallePED_NUMERO: TIntegerField
      FieldName = 'PED_NUMERO'
      Origin = 'DET_FACTURA.PED_NUMERO'
    end
    object QDetalleDET_NOTA: TMemoField
      FieldName = 'DET_NOTA'
      BlobType = ftMemo
    end
    object QDetalleSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QDetalledet_cant_oferta: TBCDField
      FieldName = 'det_cant_oferta'
      Precision = 15
      Size = 2
    end
    object QDetalledet_selectivo_ad: TBCDField
      FieldName = 'det_selectivo_ad'
      currency = True
      Precision = 15
      Size = 2
    end
    object QDetalledet_selectivo_con: TBCDField
      FieldName = 'det_selectivo_con'
      currency = True
      Precision = 15
      Size = 2
    end
    object QDetalledet_minimo_venta: TBCDField
      FieldName = 'det_minimo_venta'
      Precision = 15
      Size = 2
    end
    object QDetallemar_codigo: TIntegerField
      FieldName = 'mar_codigo'
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
    object QDetallepre_codigo: TIntegerField
      FieldName = 'pre_codigo'
    end
    object QDetallealm_codigo: TIntegerField
      FieldName = 'alm_codigo'
    end
    object QDetallepro_ctadescuento: TStringField
      FieldName = 'pro_ctadescuento'
      Size = 15
    end
    object QDetalledet_cantempaque: TBCDField
      FieldName = 'det_cantempaque'
      Precision = 15
      Size = 2
    end
    object QDetallepro_unidad_medida: TStringField
      DisplayWidth = 20
      FieldName = 'pro_unidad_medida'
      OnChange = QDetallepro_unidad_medidaChange
    end
    object QDetalleUnidadID: TStringField
      DisplayWidth = 1
      FieldName = 'UnidadID'
      Size = 1
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
    object QDetalleMedidorID: TIntegerField
      FieldName = 'MedidorID'
    end
    object QDetalleMedidor_Secuencia: TBCDField
      FieldName = 'Medidor_Secuencia'
      Precision = 18
      Size = 0
    end
    object QDetalleMedidor_Cantidad: TBCDField
      FieldName = 'Medidor_Cantidad'
      Precision = 18
      Size = 0
    end
    object QDetallepro_utilizamedidor: TStringField
      DisplayWidth = 15
      FieldName = 'pro_utilizamedidor'
      Size = 15
    end
    object QDetallepro_UtilizaEnvio: TStringField
      FieldName = 'pro_UtilizaEnvio'
      Size = 5
    end
    object QDetallepro_serializado: TStringField
      FieldName = 'pro_serializado'
    end
    object QDetallepro_UtilizaRenta: TStringField
      FieldName = 'pro_UtilizaRenta'
      Size = 5
    end
    object QDetalleSubPedido: TStringField
      FieldName = 'SubPedido'
    end
    object QDetalleOrden: TStringField
      FieldName = 'Orden'
    end
    object QDetalleSecuencia: TIntegerField
      FieldName = 'Secuencia'
    end
    object QDetalleDET_ITBIS: TFloatField
      FieldName = 'DET_ITBIS'
      DisplayFormat = '#,0.00'
    end
    object QDetalleCalcItbis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcItbis'
      DisplayFormat = '#,0.00'
      Calculated = True
    end
    object QDetalleDET_PRECIO: TFloatField
      FieldName = 'DET_PRECIO'
      DisplayFormat = '#,0.00'
    end
    object QDetallePrecioItbis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PrecioItbis'
      DisplayFormat = '#,0.00'
      Calculated = True
    end
    object QDetalleValor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor'
      DisplayFormat = '#,0.00'
      Calculated = True
    end
    object QDetalleDET_CANTIDAD: TFloatField
      FieldName = 'DET_CANTIDAD'
      DisplayFormat = '#,0.00'
    end
    object QDetalleCalcItbisGral: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CalcItbisGral'
      Calculated = True
    end
    object QDetalledet_servicio_construccion: TBooleanField
      FieldName = 'det_servicio_construccion'
    end
    object QDetalleporc_vendedor: TCurrencyField
      FieldName = 'porc_vendedor'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 284
    Top = 208
    object NumerosdeserieFer1: TMenuItem
      Caption = 'N'#250'meros de serie'
      OnClick = NumerosdeserieFer1Click
    end
    object Crearnotaalproducto1: TMenuItem
      Caption = 'Nota en el producto'
      OnClick = Crearnotaalproducto1Click
    end
    object Preventasdelproducto1: TMenuItem
      Caption = 'Preventas'
      OnClick = Preventasdelproducto1Click
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
      OnClick = DatosdelMedidor1Click
    end
    object btreceta: TMenuItem
      Caption = 'Receta de Optica'
      OnClick = btrecetaClick
    end
    object DatosdelEnvio1: TMenuItem
      Caption = 'Datos del Envio'
      OnClick = DatosdelEnvio1Click
    end
    object ExistenciaxAlmacen1: TMenuItem
      Caption = 'Existencia x Almacen'
      OnClick = ExistenciaxAlmacen1Click
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
  object QPedidos: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    OnNewRecord = QPedidosNewRecord
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
        Name = 'for'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'tfa'
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
      'emp_codigo, suc_codigo, fac_forma, tfa_codigo, fac_numero,'
      
        'ped_tipo, ped_numero, ped_fecha, ped_nombre, ped_total, ped_itbi' +
        's,'
      'mon_codigo, ped_tasa'
      'from'
      'FacPedidos'
      'where'
      'emp_codigo = :emp'
      'and suc_codigo = :suc'
      'and fac_forma = :for'
      'and tfa_codigo = :tfa'
      'and fac_numero = :num'
      'order by ped_numero desc')
    Left = 608
    Top = 299
    object QPedidosemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QPedidossuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QPedidosfac_forma: TStringField
      FieldName = 'fac_forma'
      Size = 1
    end
    object QPedidostfa_codigo: TIntegerField
      FieldName = 'tfa_codigo'
    end
    object QPedidosfac_numero: TIntegerField
      FieldName = 'fac_numero'
    end
    object QPedidosped_tipo: TStringField
      FieldName = 'ped_tipo'
      Size = 1
    end
    object QPedidosped_numero: TIntegerField
      FieldName = 'ped_numero'
      OnChange = QPedidosped_numeroChange
    end
    object QPedidosped_fecha: TDateTimeField
      FieldName = 'ped_fecha'
    end
    object QPedidosped_nombre: TStringField
      FieldName = 'ped_nombre'
      Size = 100
    end
    object QPedidosped_total: TBCDField
      FieldName = 'ped_total'
      Precision = 18
      Size = 2
    end
    object QPedidosped_itbis: TBCDField
      FieldName = 'ped_itbis'
      Precision = 18
      Size = 2
    end
    object QPedidosmon_codigo: TIntegerField
      FieldName = 'mon_codigo'
    end
    object QPedidosped_tasa: TBCDField
      FieldName = 'ped_tasa'
      Precision = 15
      Size = 2
    end
  end
  object dsPedidos: TDataSource
    DataSet = QPedidos
    Left = 640
    Top = 299
  end
  object QClinico: TADOQuery
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
        Name = 'suc'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'for'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'tfa'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'fac'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      
        'emp_codigo, suc_codigo, fac_forma, tfa_codigo, fac_numero, detal' +
        'leid,'
      
        'facturaid, recordid, facturada_sigma, tipo, fecha, paciente, pol' +
        'iza,'
      'cobertura, autorizacion'
      'from'
      'Facturas_detalle_clinico'
      'where'
      'emp_codigo = :emp'
      'and suc_codigo = :suc'
      'and fac_forma = :for'
      'and tfa_codigo = :tfa'
      'and fac_numero = :fac'
      'order by'
      'tipo, fecha'
      '')
    Left = 284
    Top = 240
    object QClinicoemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QClinicosuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QClinicofac_forma: TStringField
      FieldName = 'fac_forma'
      Size = 1
    end
    object QClinicotfa_codigo: TIntegerField
      FieldName = 'tfa_codigo'
    end
    object QClinicofac_numero: TIntegerField
      FieldName = 'fac_numero'
    end
    object QClinicodetalleid: TIntegerField
      FieldName = 'detalleid'
    end
    object QClinicofacturaid: TBCDField
      FieldName = 'facturaid'
      Precision = 18
      Size = 0
    end
    object QClinicorecordid: TBCDField
      FieldName = 'recordid'
      Precision = 18
      Size = 0
    end
    object QClinicofacturada_sigma: TStringField
      FieldName = 'facturada_sigma'
      Size = 2
    end
    object QClinicotipo: TStringField
      FieldName = 'tipo'
      Size = 1
    end
    object QClinicofecha: TDateTimeField
      FieldName = 'fecha'
    end
    object QClinicopaciente: TStringField
      FieldName = 'paciente'
      Size = 100
    end
    object QClinicopoliza: TStringField
      FieldName = 'poliza'
      Size = 30
    end
    object QClinicocobertura: TBCDField
      FieldName = 'cobertura'
      currency = True
      Precision = 18
      Size = 2
    end
    object QClinicoautorizacion: TStringField
      FieldName = 'autorizacion'
      Size = 15
    end
  end
  object dsClinico: TDataSource
    DataSet = QClinico
    Left = 320
    Top = 240
  end
  object QEnvio: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforeOpen = QEnvioBeforeOpen
    BeforePost = QEnvioBeforePost
    OnNewRecord = QEnvioNewRecord
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
        Name = 'fac'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'tfac'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select env_status,'
      
        'emp_codigo, suc_codigo, fac_numero, tfa_codigo,  pro_codigo, IDE' +
        'nvio, Fecha, Ciudad_Origen, Ciudad_Destino,'
      
        'Nombre_envia, Telefono_Envia, Nombre_Recibe, Telefono_Recibe, De' +
        'scripcion, env_suc_destino, Descripcion2, facpagodestino, Cantid' +
        'ad'
      'from'
      'envio'
      'where'
      'emp_codigo = :emp'
      'and suc_codigo = :suc'
      'and fac_numero = :fac'
      'and tfa_codigo = :tfac'
      '')
    Left = 284
    Top = 272
    object QEnvioemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QEnviosuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QEnviofac_numero: TIntegerField
      FieldName = 'fac_numero'
    end
    object QEnviotfa_codigo: TIntegerField
      FieldName = 'tfa_codigo'
    end
    object QEnviopro_codigo: TIntegerField
      FieldName = 'pro_codigo'
    end
    object QEnvioIDEnvio: TIntegerField
      FieldName = 'IDEnvio'
    end
    object QEnvioFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object QEnvioCiudad_Origen: TStringField
      FieldName = 'Ciudad_Origen'
      Size = 40
    end
    object QEnvioCiudad_Destino: TStringField
      FieldName = 'Ciudad_Destino'
      Size = 100
    end
    object QEnvioNombre_envia: TStringField
      FieldName = 'Nombre_envia'
      Size = 50
    end
    object QEnvioTelefono_Envia: TStringField
      FieldName = 'Telefono_Envia'
      Size = 11
    end
    object QEnvioNombre_Recibe: TStringField
      FieldName = 'Nombre_Recibe'
      Size = 50
    end
    object QEnvioTelefono_Recibe: TStringField
      FieldName = 'Telefono_Recibe'
      Size = 11
    end
    object QEnvioDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
    object QEnvioenv_suc_destino: TIntegerField
      FieldName = 'env_suc_destino'
    end
    object QEnvioenv_status: TStringField
      FieldName = 'env_status'
      Size = 3
    end
    object QEnvioDescripcion2: TStringField
      FieldName = 'Descripcion2'
      Size = 200
    end
    object QEnviofacpagodestino: TBooleanField
      FieldName = 'facpagodestino'
    end
    object QEnvioSUC_ORIGEN: TStringField
      FieldKind = fkLookup
      FieldName = 'SUC_ORIGEN'
      LookupDataSet = QSucOrigen
      LookupKeyFields = 'suc_codigo'
      LookupResultField = 'suc_nombre'
      KeyFields = 'suc_codigo'
      Size = 255
      Lookup = True
    end
    object QEnvioSUC_DESTINO: TStringField
      FieldKind = fkLookup
      FieldName = 'SUC_DESTINO'
      LookupDataSet = qSucDestino
      LookupKeyFields = 'suc_codigo'
      LookupResultField = 'suc_nombre'
      KeyFields = 'env_suc_destino'
      Size = 255
      Lookup = True
    end
    object QEnvioCantidad: TFloatField
      FieldName = 'Cantidad'
    end
  end
  object QMsnExistencia: TADOQuery
    Connection = DM.ADOSigma
    BeforeOpen = QMsnExistenciaBeforeOpen
    AfterOpen = QMsnExistenciaAfterOpen
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
        Name = 'CAJ'
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
        Size = 20
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
      'DECLARE @ALM INT, @CAJ INT, @EMP INT, @SUC INT'
      'SET @EMP = :EMP'
      'SET @CAJ = :CAJ'
      'SET @SUC = :SUC_CODIGO'
      'SET @ALM = (select  '
      
        '                       case when (p.par_inv_ventas = 1) and (isn' +
        'ull(c.alm_codigo,0)>0) then isnull(c.alm_codigo,0) else isnull(s' +
        '.alm_codigo,0) end alm_codigo'
      '                       from cajas c'
      
        '                       inner join parametros p on c.emp_codigo =' +
        ' p.emp_codigo'
      
        '                       inner join sucursales s on c.emp_codigo =' +
        ' s.emp_codigo'
      '                       where c.emp_Codigo = @EMP'
      '                       and c.caj_codigo = @CAJ'
      '                       and s.suc_codigo = @SUC)'
      ''
      'IF @ALM = 0 BEGIN '
      
        'SET @ALM = (SELECT ISNULL(ALM_CODIGO,0) FROM Sucursales WHERE su' +
        'c_codigo = @SUC AND EMP_CODIGO = @EMP)'
      'END'
      ''
      
        'select '#39'EXIST [ '#39' + CAST(ISNULL(DISPONIBLE,0) AS VARCHAR) +'#39' ] '#39 +
        ' AS DISPONIBLE2,'
      
        '        '#39'UBIC [ '#39' + ISNULL(UBICACION,'#39'N/D'#39') +'#39' ] '#39' AS UBICACION,' +
        ' @ALM ALMACEN, ISNULL(DISPONIBLE,0) DISP'
      'from pr_verifica_disp ('
      '@EMP, '
      '@ALM, '
      ':PRO_CODIGO, '
      ':DET_CANTIDAD, '
      ':DET_MEDIDA, '
      ':usu, '
      '@SUC, '
      ':TFA_CODIGO, '
      ':FAC_FORMA, '
      ':FAC_NUMERO)'
      ''
      '')
    Left = 420
    Top = 264
    object QMsnExistenciaDISPONIBLE2: TStringField
      FieldName = 'DISPONIBLE2'
    end
    object QMsnExistenciaUBICACION: TStringField
      FieldName = 'UBICACION'
    end
    object QMsnExistenciaALMACEN: TIntegerField
      FieldName = 'ALMACEN'
    end
    object QMsnExistenciaDISP: TFloatField
      FieldName = 'DISP'
    end
  end
  object dsMsnExistencia: TDataSource
    DataSet = QMsnExistencia
    Left = 384
    Top = 264
  end
  object dsSerie: TDataSource
    OnDataChange = dsSerieDataChange
    Left = 384
    Top = 304
  end
  object QSucursalDestino: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsSuc
    Parameters = <
      item
        Name = 'suc_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'emp_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select suc_codigo, suc_nombre, alm_codigo'
      'from sucursales'
      'where suc_codigo <> :suc_codigo'
      'and emp_codigo = :emp_codigo'
      'order by suc_codigo')
    Left = 680
    Top = 235
    object QSucursalDestinosuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object StringField1: TStringField
      FieldName = 'suc_nombre'
      Size = 60
    end
    object IntegerField2: TIntegerField
      FieldName = 'alm_codigo'
    end
  end
  object dsSucDest: TDataSource
    DataSet = QSucursalDestino
    Left = 712
    Top = 235
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
    Left = 200
    Top = 272
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
  object DS_1: TDataSource
    AutoEdit = False
    DataSet = QSelectIncrem1
    Left = 428
    Top = 360
  end
  object QVerificaNCF: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
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
        Name = 'tip_codigo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select tip_rnc from TipoNCF where emp_codigo = :emp_codigo and t' +
        'ip_codigo = :tip_codigo'
      'and tip_rnc = '#39'S'#39)
    Left = 192
    Top = 328
  end
  object QDatos: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 88
    Top = 272
  end
  object DS_UNIDAD: TDataSource
    AutoEdit = False
    DataSet = QUnidades
    Left = 352
    Top = 208
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
      
        '(SELECT DISTINCT EXI_CANTIDAD FROM EXISTENCIAS WHERE EMP_CODIGO ' +
        '= P.EMP_CODIGO AND PRO_CODIGO = P.PRO_CODIGO AND ALM_CODIGO = '
      
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
      
        '(SELECT DISTINCT EXI_CANTIDAD FROM EXISTENCIAS WHERE EMP_CODIGO ' +
        '= P.EMP_CODIGO AND PRO_CODIGO = P.PRO_CODIGO AND ALM_CODIGO ='
      
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
      
        '(SELECT DISTINCT EXI_CANTIDAD FROM EXISTENCIAS WHERE EMP_CODIGO ' +
        '= P.EMP_CODIGO AND PRO_CODIGO = P.PRO_CODIGO AND ALM_CODIGO = '
      
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
  object qBuscaProdReserva: TADOQuery
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
        Name = 'RES'
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
        Name = 'VEN'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'FORMA'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'TFAC'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'NUM'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'DECLARE @EMP INT, @RES INT, @SUC INT, @VEN INT, @FORMA VARCHAR(1' +
        '), @TFAC INT, @FAC INT  '
      'SET @EMP = :EMP'
      'SET @RES = :RES'
      'SET @SUC = :SUC'
      'SET @VEN = :VEN'
      'SET @FORMA = :FORMA'
      'SET @TFAC = :TFAC'
      'SET @FAC = :NUM'
      ''
      '--ALOJAMIENTO'
      'SELECT '
      
        '@EMP emp_codigo, @SUC suc_codigo, @FORMA fac_forma, @TFAC tfa_co' +
        'digo, @FAC fac_numero, 1 DET_SECUENCIA,'
      
        '(SELECT TOP 1 pro_codigo FROM PRODUCTOS WHERE pro_roriginal = '#39'A' +
        'LOJ'#39' AND emp_codigo = @EMP) pro_codigo,'
      
        'NULL mar_codigo, @VEN ven_codigo, NULL ped_tipo, NULL ped_numero' +
        ', '#39'ALOJ'#39' pro_roriginal, '#39'ALOJ'#39' pro_rfabric,'
      
        '(SELECT TOP 1 pro_nombre FROM PRODUCTOS WHERE pro_roriginal = '#39'A' +
        'LOJ'#39' AND emp_codigo = @EMP) pro_nombre,'
      
        'NULL pro_barra,  0 det_costo, ISNULL(subtotal_ALO,0) det_precio,' +
        ' 1 det_cantidad,  '
      
        'CASE WHEN ITBIS_ALO > 0 THEN '#39'S'#39' ELSE '#39'N'#39' END det_conitbis, case' +
        ' when itbis_alo > 0 then (ITBIS_ALO/ISNULL(subtotal_alo,1))*100 ' +
        'end det_itbis, '
      
        '(desc_aplicado/ISNULL(subtotal_alo,1))*100 det_descuento, 0 det_' +
        'cantdevuelta, '#39'FAC'#39' det_status, NULL dep_codigo,'
      
        'TOTAL_ALO det_total, 0 det_comision, '#39'N'#39' det_oferta, 0 det_descm' +
        'ax, '#39'True'#39' pro_servicio, NULL det_fechavence,'#9
      
        'NULL det_vence, NULL det_lote,  desc_aplicado det_totaldesc, ITB' +
        'IS_ALO det_totalitbis, 0 det_preciomenor,'
      
        '0 det_preciominimo, '#39#39' det_escala, '#39'False'#39' det_manejaescala, '#39'Un' +
        'd'#39' det_medida, 0 det_costoemp, 0 det_precio1,'
      
        '0 det_precio2, 0 det_precio3, 0 det_precio4, '#39'False'#39' pro_combo, ' +
        '0 det_preciominimoemp, NULL det_nota,'
      
        '0 det_cant_oferta, NULL det_enviado, 0 det_selectivo_ad, 0 det_s' +
        'electivo_con,  NULL det_minimo_venta,'
      
        'NULL pro_ctacosto, NULL pro_ctainvent, NULL pro_ctaingreso, NULL' +
        ' pre_codigo, 1 alm_codigo, NULL pro_ctadescuento,'#9
      
        'NULL det_cantempaque, NULL det_despachado,  NULL pro_unidad_medi' +
        'da,  NULL UnidadID, NULL Medida_Precio1, '
      
        'NULL Medida_Precio2, NULL Medida_Precio3, NULL Medida_Precio4, N' +
        'ULL det_cant_unidad_medida, NULL MedidorID, '
      
        'NULL Medidor_Secuencia, NULL Medidor_Cantidad, NULL pro_utilizam' +
        'edidor, '#39'False'#39' pro_UtilizaEnvio, '#39'N'#39' pro_serializado,'#9
      
        'NULL pro_UtilizaRenta, NULL PedidoNo, NULL SubPedido, NULL Refer' +
        'encia, NULL Recargo, NULL Secuencia, NULL Orden'
      'FROM Hotel_cuenta_reserva '
      'WHERE cod_reserva = @RES'
      ''
      'UNION ALL '
      '--SERVICIOS'
      'SELECT '
      
        '@EMP emp_codigo, @SUC suc_codigo, @FORMA fac_forma, @TFAC tfa_co' +
        'digo, @FAC fac_numero, 2 DET_SECUENCIA,'
      
        '(SELECT TOP 1 pro_codigo FROM PRODUCTOS WHERE pro_roriginal = '#39'S' +
        'ERV'#39' AND emp_codigo = @EMP) pro_codigo,'
      
        'NULL mar_codigo, @VEN ven_codigo, NULL ped_tipo, NULL ped_numero' +
        ','#39'SERV'#39' pro_roriginal, '#39'SERV'#39' pro_rfabric,'
      
        '(SELECT TOP 1 pro_nombre FROM PRODUCTOS WHERE pro_roriginal = '#39'S' +
        'ERV'#39' AND emp_codigo = @EMP) pro_nombre,'
      
        'NULL pro_barra,  0 det_costo, ISNULL(subtotal_serv,0) det_precio' +
        ', 1 det_cantidad,  '
      
        'CASE WHEN ITBIS_ALO > 0 THEN '#39'S'#39' ELSE '#39'N'#39' END det_conitbis, CASE' +
        ' WHEN ITBIS_SERV > 0 then  '
      
        '                                                            (ITB' +
        'IS_serv/subtotal_serv)*100 end det_itbis, '
      
        '0 det_descuento,'#9'0 det_cantdevuelta, '#39'FAC'#39' det_status, NULL dep_' +
        'codigo,'
      
        'TOTAL_serv det_total, 0 det_comision, '#39'N'#39' det_oferta, 0 det_desc' +
        'max, '#39'True'#39' pro_servicio, NULL det_fechavence,'#9
      
        'NULL det_vence, NULL det_lote,  0 det_totaldesc, ITBIS_serv det_' +
        'totalitbis, 0 det_preciomenor,'
      
        '0 det_preciominimo, '#39#39' det_escala, '#39'False'#39' det_manejaescala, '#39'Un' +
        'd'#39' det_medida, 0 det_costoemp, 0 det_precio1,'
      
        '0 det_precio2, 0 det_precio3, 0 det_precio4, '#39'False'#39' pro_combo, ' +
        '0 det_preciominimoemp, NULL det_nota,'
      
        '0 det_cant_oferta, NULL det_enviado, 0 det_selectivo_ad, 0 det_s' +
        'electivo_con,  NULL det_minimo_venta,'
      
        'NULL pro_ctacosto, NULL pro_ctainvent, NULL pro_ctaingreso, NULL' +
        ' pre_codigo, 1 alm_codigo, NULL pro_ctadescuento,'#9
      
        'NULL det_cantempaque, NULL det_despachado,  NULL pro_unidad_medi' +
        'da,  NULL UnidadID, NULL Medida_Precio1, '
      
        'NULL Medida_Precio2, NULL Medida_Precio3, NULL Medida_Precio4, N' +
        'ULL det_cant_unidad_medida, NULL MedidorID, '
      
        'NULL Medidor_Secuencia, NULL Medidor_Cantidad, NULL pro_utilizam' +
        'edidor, '#39'False'#39' pro_UtilizaEnvio, '#39'N'#39' pro_serializado,'#9
      
        'NULL pro_UtilizaRenta, NULL PedidoNo, NULL SubPedido, NULL Refer' +
        'encia, NULL Recargo, NULL Secuencia, NULL Orden'
      'FROM Hotel_cuenta_reserva '
      'WHERE cod_reserva = @RES and TOTAL_serv > 0 '
      'UNION ALL '
      '--RESTAURANTE'
      'SELECT '
      
        '@EMP emp_codigo, @SUC suc_codigo, @FORMA fac_forma, @TFAC tfa_co' +
        'digo, @FAC fac_numero, 2 DET_SECUENCIA,'
      
        '(SELECT TOP 1 pro_codigo FROM PRODUCTOS WHERE pro_roriginal = '#39'R' +
        'EST'#39' AND emp_codigo = @EMP) pro_codigo,'
      
        'NULL mar_codigo, @VEN ven_codigo, NULL ped_tipo, NULL ped_numero' +
        ', '#39'REST'#39' pro_roriginal, '#39'REST'#39' pro_rfabric,'
      
        '(SELECT TOP 1 pro_nombre FROM PRODUCTOS WHERE pro_roriginal = '#39'R' +
        'EST'#39' AND emp_codigo = @EMP) pro_nombre,'
      
        'NULL pro_barra,  0 det_costo, ISNULL(subtotal_cons,0) det_precio' +
        ', 1 det_cantidad,  '
      
        'CASE WHEN ITBIS_ALO > 0 THEN '#39'S'#39' ELSE '#39'N'#39' END det_conitbis,  cas' +
        'e when itbis_cons>0 then (itbis_cons/ISNULL(subtotal_cons,1))*10' +
        '0 end det_itbis, '
      
        '0 det_descuento,'#9'0 det_cantdevuelta, '#39'FAC'#39' det_status, NULL dep_' +
        'codigo,'
      
        'total_cons det_total, 0 det_comision, '#39'N'#39' det_oferta, 0 det_desc' +
        'max, '#39'True'#39' pro_RESTicio, NULL det_fechavence,'#9
      
        'NULL det_vence, NULL det_lote,  0 det_totaldesc, itbis_cons det_' +
        'totalitbis, 0 det_preciomenor,'
      
        '0 det_preciominimo, '#39#39' det_escala, '#39'False'#39' det_manejaescala, '#39'Un' +
        'd'#39' det_medida, 0 det_costoemp, 0 det_precio1,'
      
        '0 det_precio2, 0 det_precio3, 0 det_precio4, '#39'False'#39' pro_combo, ' +
        '0 det_preciominimoemp, NULL det_nota,'
      
        '0 det_cant_oferta, NULL det_enviado, 0 det_selectivo_ad, 0 det_s' +
        'electivo_con,  NULL det_minimo_venta,'
      
        'NULL pro_ctacosto, NULL pro_ctainvent, NULL pro_ctaingreso, NULL' +
        ' pre_codigo, 1 alm_codigo, NULL pro_ctadescuento,'#9
      
        'NULL det_cantempaque, NULL det_despachado,  NULL pro_unidad_medi' +
        'da,  NULL UnidadID, NULL Medida_Precio1, '
      
        'NULL Medida_Precio2, NULL Medida_Precio3, NULL Medida_Precio4, N' +
        'ULL det_cant_unidad_medida, NULL MedidorID, '
      
        'NULL Medidor_Secuencia, NULL Medidor_Cantidad, NULL pro_utilizam' +
        'edidor, '#39'False'#39' pro_UtilizaEnvio, '#39'N'#39' pro_serializado,'#9
      
        'NULL pro_UtilizaRenta, NULL PedidoNo, NULL SubPedido, NULL Refer' +
        'encia, NULL Recargo, NULL Secuencia, NULL Orden'
      'FROM Hotel_cuenta_reserva '
      'WHERE cod_reserva = @RES and total_cons > 0')
    Left = 248
    Top = 312
  end
  object qVerificaItbis: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 88
    Top = 328
  end
  object qLiqTicket: TADOQuery
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
        Name = 'PED'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SUC'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @MONTO NUMERIC(18,2)'
      'DECLARE @MONTOLET VARCHAR(255)'
      'DECLARE @EMP INT '
      'DECLARE @PED INT '
      ''
      'SET @EMP = :EMP'
      'SET @PED = :PED'
      ''
      ''
      
        'SET @MONTO = (SELECT PED_TOTAL FROM PEDIDOS WHERE PED_NUMERO = @' +
        'PED AND EMP_CODIGO = @EMP)'
      ''
      'SET @MONTOLET = (SELECT [dbo].[CantidadConLetra](@MONTO)) '
      'SELECT '
      
        'P.PED_FICHA, V.ven_nombre VENDEDOR, P.ped_total TOTAL,  @MONTOLE' +
        'T TOTAL_LET,'
      
        'PR.pro_roriginal CODIGO, PR.pro_nombre PRODUCTO, DP.det_cantidad' +
        ' CANTIDAD, DP.det_precio, (DP.det_cantidad*DP.det_precio) IMPORT' +
        'E,'
      'P.PED_FECHA, P.PED_NUMERO'
      'FROM PEDIDOS P'
      
        'INNER JOIN DET_PEDIDO DP ON P.emp_codigo=DP.emp_codigo AND P.ped' +
        '_numero=DP.ped_numero'
      
        'INNER JOIN PRODUCTOS PR ON DP.pro_codigo=PR.PRO_CODIGO AND DP.em' +
        'p_codigo = PR.emp_codigo'
      'INNER JOIN USUARIOS U ON P.USU_CODIGO = U.USU_CODIGO'
      
        'LEFT JOIN VENDEDORES V ON P.EMP_CODIGO = V.emp_codigo AND P.ven_' +
        'codigo = V.ven_codigo'
      
        'WHERE P.ped_numero = @PED AND P.emp_codigo = @EMP AND P.SUC_CODI' +
        'GO = :SUC'
      '')
    Left = 48
    Top = 376
    object qLiqTicketPED_FICHA: TStringField
      FieldName = 'PED_FICHA'
      Size = 10
    end
    object qLiqTicketVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 50
    end
    object qLiqTicketTOTAL: TCurrencyField
      FieldName = 'TOTAL'
    end
    object qLiqTicketTOTAL_LET: TStringField
      FieldName = 'TOTAL_LET'
      Size = 255
    end
    object qLiqTicketCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object qLiqTicketPRODUCTO: TStringField
      FieldName = 'PRODUCTO'
      Size = 100
    end
    object qLiqTicketCANTIDAD: TCurrencyField
      FieldName = 'CANTIDAD'
    end
    object qLiqTicketDET_PRECIO: TCurrencyField
      FieldName = 'DET_PRECIO'
    end
    object qLiqTicketIMPORTE: TCurrencyField
      FieldName = 'IMPORTE'
    end
    object qLiqTicketPED_FECHA: TDateField
      FieldName = 'PED_FECHA'
    end
    object qLiqTicketPED_NUMERO: TIntegerField
      FieldName = 'PED_NUMERO'
    end
  end
  object DB_Liq_Ticket: TfrxDBDataset
    UserName = 'DB_Liq_Ticket'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PED_FICHA=PED_FICHA'
      'VENDEDOR=VENDEDOR'
      'TOTAL=TOTAL'
      'TOTAL_LET=TOTAL_LET'
      'CODIGO=CODIGO'
      'PRODUCTO=PRODUCTO'
      'CANTIDAD=CANTIDAD'
      'DET_PRECIO=DET_PRECIO'
      'IMPORTE=IMPORTE'
      'PED_FECHA=PED_FECHA'
      'PED_NUMERO=PED_NUMERO')
    DataSet = qLiqTicket
    BCDToCurrency = False
    Left = 80
    Top = 376
  end
  object Rpt_Liq_Ticket: TfrxReport
    Version = '4.13.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43629.555344861110000000
    ReportOptions.LastChange = 43629.555344861110000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 112
    Top = 376
    Datasets = <
      item
        DataSet = DB_Liq_Ticket
        DataSetName = 'DB_Liq_Ticket'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 245.669450000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Width = 737.008350000000000000
          Height = 64.252010000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'SINDICATO DE TRANSPORTE BAVARO - PUNTA CANA'
            '(SITRABAPU)')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Top = 64.252010000000000000
          Width = 737.008350000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'FUNDADO EL 23 DE MAYO DEL 1987')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 81.929190000000000000
          Width = 737.008350000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'TEL.: 809-554-4260 FAX: 809-554-4312 / 809-554-0452')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baCenter
          Left = 186.897758500000000000
          Top = 104.267780000000000000
          Width = 366.614410000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'RECIBO DE LIQUIDADCION DE TICKETS')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 591.842920000000000000
          Top = 101.047310000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'RECIBO #:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 591.842920000000000000
          Top = 120.944960000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'FECHA:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 668.315400000000000000
          Top = 102.047310000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_Liq_Ticket."PED_NUMERO"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 668.535870000000000000
          Top = 119.944960000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_Liq_Ticket."PED_FECHA"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Top = 140.842610000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'FICHA:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 51.692950000000000000
          Top = 140.842610000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[DB_Liq_Ticket."PED_FICHA"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Top = 170.078850000000000000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Hemos entregado a:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Top = 187.976500000000000000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'La suma de:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Top = 204.094620000000000000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Por Concepto de:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 136.063080000000000000
          Top = 170.078850000000000000
          Width = 374.173470000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_Liq_Ticket."VENDEDOR"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 136.063080000000000000
          Top = 187.976500000000000000
          Width = 600.945270000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_Liq_Ticket."TOTAL_LET"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 136.063080000000000000
          Top = 204.094620000000000000
          Width = 600.945270000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Liquidacion de Ticket')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 2.559060000000000000
          Top = 226.771800000000000000
          Width = 737.008350000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Detalle del Recibo')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 325.039580000000000000
        Width = 740.409927000000000000
        DataSet = DB_Liq_Ticket
        DataSetName = 'DB_Liq_Ticket'
        RowCount = 0
        object Memo18: TfrxMemoView
          Align = baLeft
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Codigo')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Align = baLeft
          Left = 79.370130000000000000
          Width = 411.968770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Descripcion')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Align = baLeft
          Left = 491.338900000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Cantidad')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Align = baLeft
          Left = 574.488560000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Costo')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Align = baLeft
          Left = 657.638220000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Importe')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        Height = 18.897650000000000000
        Top = 366.614410000000000000
        Width = 740.409927000000000000
        DataSet = DB_Liq_Ticket
        DataSetName = 'DB_Liq_Ticket'
        RowCount = 0
        object Memo23: TfrxMemoView
          Align = baLeft
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CODIGO'
          DataSet = DB_Liq_Ticket
          DataSetName = 'DB_Liq_Ticket'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[DB_Liq_Ticket."CODIGO"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Align = baLeft
          Left = 79.370130000000000000
          Width = 411.968770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRODUCTO'
          DataSet = DB_Liq_Ticket
          DataSetName = 'DB_Liq_Ticket'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[DB_Liq_Ticket."PRODUCTO"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Align = baLeft
          Left = 491.338900000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CANTIDAD'
          DataSet = DB_Liq_Ticket
          DataSetName = 'DB_Liq_Ticket'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[DB_Liq_Ticket."CANTIDAD"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Align = baLeft
          Left = 574.488560000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DET_PRECIO'
          DataSet = DB_Liq_Ticket
          DataSetName = 'DB_Liq_Ticket'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[DB_Liq_Ticket."DET_PRECIO"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Align = baLeft
          Left = 657.638220000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'IMPORTE'
          DataSet = DB_Liq_Ticket
          DataSetName = 'DB_Liq_Ticket'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[DB_Liq_Ticket."IMPORTE"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 86.929190000000000000
        Top = 408.189240000000000000
        Width = 740.409927000000000000
        object Memo28: TfrxMemoView
          Align = baLeft
          Top = 68.031540000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'Recibido Por')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Align = baRight
          Left = 434.267997000000000000
          Top = 68.031540000000000000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'Entregado Por')
          ParentFont = False
        end
      end
    end
  end
  object qBuscaProdLiqTickets: TADOQuery
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
        Name = 'SUC'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CLI'
        Size = -1
        Value = Null
      end
      item
        Name = 'DESDE'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'HASTA'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'VEN'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'DECLARE @EMP INT, @SUC INT, @CLI INT, @DESDE DATETIME, @HASTA DA' +
        'TETIME, @VEN INT'
      ''
      'SET DATEFORMAT YMD'
      ''
      'SET @EMP    = :EMP'
      'SET @SUC    = :SUC'
      'SET @CLI      = :CLI'
      'SET @DESDE = :DESDE'
      'SET @HASTA = :HASTA'
      'SET @VEN     = :VEN'
      ''
      'SELECT '
      '@EMP emp_codigo, @SUC suc_codigo, 1 DET_SECUENCIA,'
      
        'P.pro_codigo, NULL mar_codigo, @VEN ven_codigo, NULL ped_tipo, N' +
        'ULL ped_numero, P.pro_roriginal, P.pro_rfabric,'
      
        'P.pro_nombre pro_nombre, NULL pro_barra,  0 det_costo, ISNULL(DT' +
        '.PROD_PRECIO,0) det_precio, sum(det_cantidad) det_cantidad,  '
      
        'DT.DET_CONITBIS, P.pro_montoitbis det_itbis, 0 det_descuento, 0 ' +
        'det_cantdevuelta, '#39'FAC'#39' det_status, NULL dep_codigo,'
      
        'SUM(DT.DET_IMPORTE) det_total, 0 det_comision, '#39'N'#39' det_oferta, 0' +
        ' det_descmax, '#39'True'#39' pro_servicio, NULL det_fechavence,'#9
      
        'NULL det_vence, NULL det_lote,  0 det_totaldesc, SUM(DT.det_itbi' +
        's) det_totalitbis, 0 det_preciomenor,'
      
        '0 det_preciominimo, '#39#39' det_escala, '#39'False'#39' det_manejaescala, '#39'Un' +
        'd'#39' det_medida, 0 det_costoemp, 0 det_precio1,'
      
        '0 det_precio2, 0 det_precio3, 0 det_precio4, '#39'False'#39' pro_combo, ' +
        '0 det_preciominimoemp, NULL det_nota,'
      
        '0 det_cant_oferta, NULL det_enviado, 0 det_selectivo_ad, 0 det_s' +
        'electivo_con,  NULL det_minimo_venta,'
      
        'NULL pro_ctacosto, NULL pro_ctainvent, NULL pro_ctaingreso, NULL' +
        ' pre_codigo, 1 alm_codigo, NULL pro_ctadescuento,'#9
      
        'NULL det_cantempaque, NULL det_despachado,  NULL pro_unidad_medi' +
        'da,  NULL UnidadID, NULL Medida_Precio1, '
      
        'NULL Medida_Precio2, NULL Medida_Precio3, NULL Medida_Precio4, N' +
        'ULL det_cant_unidad_medida, NULL MedidorID, '
      
        'NULL Medidor_Secuencia, NULL Medidor_Cantidad, NULL pro_utilizam' +
        'edidor, '#39'False'#39' pro_UtilizaEnvio, '#39'N'#39' pro_serializado,'#9
      
        'NULL pro_UtilizaRenta, NULL PedidoNo, NULL SubPedido, NULL Refer' +
        'encia, NULL Recargo, NULL Secuencia, NULL Orden'
      'FROM Det_Ticket_Transp DT '
      
        'INNER JOIN PRODUCTOS P ON DT.emp_codigo = DT.emp_codigo AND DT.p' +
        'rod_codigo = P.pro_codigo '
      
        'WHERE DT.emp_codigo = @EMP AND DT.suc_codigo = @SUC AND DT.CLIEN' +
        'TE_ID = @CLI'
      'AND DT.FECHA BETWEEN @DESDE AND @HASTA + '#39'23:59:59.999'#39
      'AND DT.STATUS_TICKET = '#39'EMI'#39
      
        'group by p.pro_codigo, p.pro_roriginal, p.pro_rfabric, p.pro_nom' +
        'bre, dt.prod_precio, dt.DET_CONITBIS,'
      'p.pro_montoitbis')
    Left = 288
    Top = 312
  end
  object qUpdateTicketLiq: TADOQuery
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
        Name = 'SUC'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CLI'
        Size = -1
        Value = Null
      end
      item
        Name = 'DESDE'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'HASTA'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'FOR'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'TFAC'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'NUM'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'DECLARE @EMP INT, @SUC INT, @CLI INT, @DESDE DATETIME, @HASTA DA' +
        'TETIME'
      ''
      'SET DATEFORMAT YMD'
      ''
      'SET @EMP    = :EMP'
      'SET @SUC    = :SUC'
      'SET @CLI      = :CLI'
      'SET @DESDE = :DESDE'
      'SET @HASTA = :HASTA'
      ''
      'UPDATE Det_Ticket_Transp'
      'SET STATUS_TICKET = '#39'FAC'#39
      '      ,FAC_FORMA = :FOR'
      '     ,TFA_CODIGO = :TFAC'
      '     ,FAC_NUMERO = :NUM '
      
        'WHERE emp_codigo = @EMP AND suc_codigo = @SUC AND CLIENTE_ID = @' +
        'CLI'
      'AND FECHA BETWEEN @DESDE AND @HASTA + '#39'23:59:59.999'#39
      'AND STATUS_TICKET = '#39'EMI'#39)
    Left = 320
    Top = 312
  end
  object qOrdenesTaller: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    OnNewRecord = QPedidosNewRecord
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
        Name = 'cli'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select ot.emp_codigo, ot.suc_codigo, OT.ord_numero num,'
      
        'OT.ord_numero ped_numero, C.cli_nombre ped_nombre, ord_fecha ped' +
        '_fecha, '
      'sum(ISNULL(DOT.cantidad,0)*ISNULL(DOT.pro_precio,0)) subtotal,'
      
        'sum((CASE WHEN DOT.TIPO = 1 THEN (ISNULL(DOT.cantidad,0)*ISNULL(' +
        'DOT.pro_precio,0))*(OT.Porc_Desc_Serv/100)'
      
        '         WHEN DOT.TIPO = 2 THEN (ISNULL(DOT.cantidad,0)*ISNULL(D' +
        'OT.pro_precio,0))*(OT.Porc_Desc_Piezas/100)'
      '          END)) descuento,'
      'SUM((ISNULL(DOT.cantidad,0)*ISNULL(DOT.pro_precio,0))-'
      
        '    (CASE WHEN DOT.TIPO = 1 THEN (ISNULL(DOT.cantidad,0)*ISNULL(' +
        'DOT.pro_precio,0))*(OT.Porc_Desc_Serv/100)'
      
        '         WHEN DOT.TIPO = 2 THEN (ISNULL(DOT.cantidad,0)*ISNULL(D' +
        'OT.pro_precio,0))*(OT.Porc_Desc_Piezas/100)'
      '          END))+'
      'SUM(((ISNULL(DOT.cantidad,0)*ISNULL(DOT.pro_precio,0))-'
      
        '    (CASE WHEN DOT.TIPO = 1 THEN (ISNULL(DOT.cantidad,0)*ISNULL(' +
        'DOT.pro_precio,0))*(OT.Porc_Desc_Serv/100)'
      
        '         WHEN DOT.TIPO = 2 THEN (ISNULL(DOT.cantidad,0)*ISNULL(D' +
        'OT.pro_precio,0))*(OT.Porc_Desc_Piezas/100)'
      '          END))*(OT.porc_ITBIS/100)) ped_total,'
      'SUM(((ISNULL(DOT.cantidad,0)*ISNULL(DOT.pro_precio,0))-'
      
        '    (CASE WHEN DOT.TIPO = 1 THEN (ISNULL(DOT.cantidad,0)*ISNULL(' +
        'DOT.pro_precio,0))*(OT.Porc_Desc_Serv/100)'
      
        '         WHEN DOT.TIPO = 2 THEN (ISNULL(DOT.cantidad,0)*ISNULL(D' +
        'OT.pro_precio,0))*(OT.Porc_Desc_Piezas/100)'
      '          END))*(OT.porc_ITBIS/100)) ped_itbis, '
      'ot.mon_codigo, cast(1 as numeric(18,2)) ped_tasa'
      'from'
      'Ordenes_Taller OT'
      
        'INNER JOIN Clientes C ON OT.emp_codigo = C.emp_codigo AND OT.cli' +
        '_codigo = C.cli_codigo'
      
        'INNER JOIN Det_Ordenes_taller DOT ON OT.emp_codigo = DOT.emp_cod' +
        'igo AND OT.suc_codigo = DOT.suc_codigo AND OT.ord_numero = DOT.o' +
        'rd_numero'
      
        'INNER JOIN Productos P ON DOT.emp_codigo = P.emp_codigo AND DOT.' +
        'Pro_codigo = P.pro_codigo'
      'where OT.emp_codigo = :emp'
      'and OT.suc_codigo = :suc'
      'AND ot.cli_codigo = :cli'
      'and ot.est_ord_codigo = 3'
      
        'GROUP BY OT.emp_codigo, OT.suc_codigo, OT.ord_numero, ord_fecha,' +
        ' C.cli_nombre, OT.mon_codigo'
      'order by ped_numero desc')
    Left = 608
    Top = 331
    object qOrdenesTalleremp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object qOrdenesTallersuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object qOrdenesTallerped_numero: TIntegerField
      FieldName = 'ped_numero'
    end
    object qOrdenesTallerped_nombre: TStringField
      DisplayWidth = 100
      FieldName = 'ped_nombre'
      Size = 100
    end
    object qOrdenesTallerped_fecha: TDateField
      FieldName = 'ped_fecha'
    end
    object qOrdenesTallerped_total: TCurrencyField
      FieldName = 'ped_total'
    end
    object qOrdenesTallerped_itbis: TCurrencyField
      FieldName = 'ped_itbis'
    end
    object qOrdenesTallermon_codigo: TIntegerField
      FieldName = 'mon_codigo'
    end
    object qOrdenesTallerped_tasa: TCurrencyField
      FieldName = 'ped_tasa'
    end
    object qOrdenesTallersubtotal: TCurrencyField
      FieldName = 'subtotal'
    end
    object qOrdenesTallerdescuento: TCurrencyField
      FieldName = 'descuento'
    end
    object qOrdenesTallernum: TIntegerField
      FieldName = 'num'
    end
  end
  object dsOrdenesTaller: TDataSource
    DataSet = qOrdenesTaller
    Left = 640
    Top = 331
  end
  object qDetalleOrdenTaller: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    OnNewRecord = QPedidosNewRecord
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
        Name = 'num'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select DOT.Pro_codigo, P.pro_roriginal, ISNULL(P.pro_rfabric,'#39#39')' +
        ' pro_rfabric, ISNULL(P.pro_unidad_medida,'#39#39') det_medida,'
      
        '      DOT.CANTIDAD DET_CANTIDAD, DOT.pro_precio DET_PRECIO, OT.p' +
        'orc_ITBIS DET_ITBIS, '
      'CASE WHEN DOT.tipo = 1 THEN OT.Porc_Desc_Serv '
      
        '     WHEN DOT.tipo = 2 THEN OT.Porc_Desc_Piezas END DET_DESCUENT' +
        'O,'
      'SUM((ISNULL(DOT.cantidad,0)*ISNULL(DOT.pro_precio,0))-'
      
        '    (CASE WHEN DOT.TIPO = 1 THEN (ISNULL(DOT.cantidad,0)*ISNULL(' +
        'DOT.pro_precio,0))*(OT.Porc_Desc_Serv/100)'
      
        '         WHEN DOT.TIPO = 2 THEN (ISNULL(DOT.cantidad,0)*ISNULL(D' +
        'OT.pro_precio,0))*(OT.Porc_Desc_Piezas/100)'
      '          END))+'
      'SUM(((ISNULL(DOT.cantidad,0)*ISNULL(DOT.pro_precio,0))-'
      
        '    (CASE WHEN DOT.TIPO = 1 THEN (ISNULL(DOT.cantidad,0)*ISNULL(' +
        'DOT.pro_precio,0))*(OT.Porc_Desc_Serv/100)'
      
        '         WHEN DOT.TIPO = 2 THEN (ISNULL(DOT.cantidad,0)*ISNULL(D' +
        'OT.pro_precio,0))*(OT.Porc_Desc_Piezas/100)'
      '          END))*(OT.porc_ITBIS/100)) ped_total,'
      'SUM(((ISNULL(DOT.cantidad,0)*ISNULL(DOT.pro_precio,0))-'
      
        '    (CASE WHEN DOT.TIPO = 1 THEN (ISNULL(DOT.cantidad,0)*ISNULL(' +
        'DOT.pro_precio,0))*(OT.Porc_Desc_Serv/100)'
      
        '         WHEN DOT.TIPO = 2 THEN (ISNULL(DOT.cantidad,0)*ISNULL(D' +
        'OT.pro_precio,0))*(OT.Porc_Desc_Piezas/100)'
      '          END))*(OT.porc_ITBIS/100)) ped_itbis, '
      
        'ot.mon_codigo, cast(1 as numeric(18,2)) ped_tasa, P.pro_nombre d' +
        'et_descripcion, p.pro_costo, isnull(p.fam_codigo,0) fam_codigo,'
      
        #39'False'#39' det_manejaescala, CAST(NULL AS CHAR(5)) det_escala, p.pr' +
        'o_servicio,CAST(NULL AS TEXT) det_nota, p.dep_codigo, p.pro_itbi' +
        's'
      'from'
      'Ordenes_Taller OT'
      
        'INNER JOIN Clientes C ON OT.emp_codigo = C.emp_codigo AND OT.cli' +
        '_codigo = C.cli_codigo'
      
        'INNER JOIN Det_Ordenes_taller DOT ON OT.emp_codigo = DOT.emp_cod' +
        'igo AND OT.suc_codigo = DOT.suc_codigo AND OT.ord_numero = DOT.o' +
        'rd_numero'
      
        'INNER JOIN Productos P ON DOT.emp_codigo = P.emp_codigo AND DOT.' +
        'Pro_codigo = P.pro_codigo'
      'where OT.emp_codigo = :emp'
      'and OT.suc_codigo = :suc'
      'AND DOT.Ord_numero = :num'
      'and ot.est_ord_codigo = 3'
      
        'GROUP BY DOT.Pro_codigo, P.pro_rfabric, P.pro_roriginal, P.pro_u' +
        'nidad_medida, OT.mon_codigo, DOT.cantidad, DOT.pro_precio, P.pro' +
        '_itbis,'
      
        'OT.porc_ITBIS, DOT.TIPO, OT.Porc_Desc_Serv, OT.Porc_Desc_Piezas,' +
        ' P.pro_nombre, pro_costo, p.dep_codigo, p.fam_codigo, p.pro_serv' +
        'icio')
    Left = 640
    Top = 355
    object qDetalleOrdenTallerPro_codigo: TIntegerField
      FieldName = 'Pro_codigo'
    end
    object qDetalleOrdenTallerpro_roriginal: TStringField
      FieldName = 'pro_roriginal'
      Size = 15
    end
    object qDetalleOrdenTallerpro_rfabric: TStringField
      FieldName = 'pro_rfabric'
      Size = 15
    end
    object qDetalleOrdenTallerdet_medida: TStringField
      FieldName = 'det_medida'
      Size = 5
    end
    object qDetalleOrdenTallerDET_CANTIDAD: TCurrencyField
      FieldName = 'DET_CANTIDAD'
    end
    object qDetalleOrdenTallerDET_PRECIO: TCurrencyField
      FieldName = 'DET_PRECIO'
    end
    object qDetalleOrdenTallerDET_ITBIS: TCurrencyField
      FieldName = 'DET_ITBIS'
    end
    object qDetalleOrdenTallerDET_DESCUENTO: TCurrencyField
      FieldName = 'DET_DESCUENTO'
    end
    object qDetalleOrdenTallerped_total: TCurrencyField
      FieldName = 'ped_total'
    end
    object qDetalleOrdenTallerped_itbis: TCurrencyField
      FieldName = 'ped_itbis'
    end
    object qDetalleOrdenTallermon_codigo: TIntegerField
      FieldName = 'mon_codigo'
    end
    object qDetalleOrdenTallerped_tasa: TCurrencyField
      FieldName = 'ped_tasa'
    end
    object qDetalleOrdenTallerdet_descripcion: TStringField
      FieldName = 'det_descripcion'
      Size = 100
    end
    object qDetalleOrdenTallerpro_costo: TCurrencyField
      FieldName = 'pro_costo'
    end
    object qDetalleOrdenTallerfam_codigo: TIntegerField
      FieldName = 'fam_codigo'
    end
    object qDetalleOrdenTallerdet_manejaescala: TStringField
      FieldName = 'det_manejaescala'
      Size = 5
    end
    object qDetalleOrdenTallerpro_servicio: TStringField
      FieldName = 'pro_servicio'
      Size = 5
    end
    object qDetalleOrdenTallerdet_nota: TMemoField
      FieldName = 'det_nota'
      BlobType = ftMemo
    end
    object qDetalleOrdenTallerdep_codigo: TIntegerField
      FieldName = 'dep_codigo'
    end
    object qDetalleOrdenTallerpro_itbis: TStringField
      FieldName = 'pro_itbis'
      Size = 5
    end
    object qDetalleOrdenTallerdet_escala: TStringField
      FieldName = 'det_escala'
      Size = 5
    end
  end
  object qUpdateOrdenesTaller: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    OnNewRecord = QPedidosNewRecord
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
        Name = 'cli'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'num'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'update Ordenes_Taller'
      'set est_ord_codigo = 4'
      
        'where emp_codigo = :emp and suc_codigo = :suc and cli_codigo = :' +
        'cli  and est_ord_codigo = 3 and ord_numero = :num')
    Left = 608
    Top = 395
  end
  object DB_qFacturaOrdTaller: TfrxDBDataset
    UserName = 'DB_qFacturaOrdTaller'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SUCURSAL=SUCURSAL'
      'DIRECCION=DIRECCION'
      'TELEFONO=TELEFONO'
      'FAX=FAX'
      'EMAIL=EMAIL'
      'RNC=RNC'
      'NCF=NCF'
      'TIPO_NCF=TIPO_NCF'
      'NCF_VENCE=NCF_VENCE'
      'FECHA=FECHA'
      'VENCE=VENCE'
      'NUM=NUM'
      'ORDEN=ORDEN'
      'CONDICION=CONDICION'
      'CLI_RNC=CLI_RNC'
      'CLIENTE=CLIENTE'
      'PROPIETARIO=PROPIETARIO'
      'VEH_PLACA=VEH_PLACA'
      'VEH_TIPO=VEH_TIPO'
      'VEH_MARCA=VEH_MARCA'
      'VEH_MODELO=VEH_MODELO'
      'VEH_YEAR=VEH_YEAR'
      'VEH_CHASSIS=VEH_CHASSIS'
      'VEH_KILOM=VEH_KILOM'
      'VEH_NIV=VEH_NIV'
      'TIPO=TIPO'
      'PRODUCTO=PRODUCTO'
      'CANT=CANT'
      'PRECIO=PRECIO'
      'SUBTOTAL=SUBTOTAL'
      'DESC_SERV=DESC_SERV'
      'DESC_PIEZAS=DESC_PIEZAS'
      'ITBIS=ITBIS'
      'TOTAL=TOTAL'
      'VEH_COLOR=VEH_COLOR'
      'LOGO=LOGO')
    DataSet = qFacturaOrdTaller
    BCDToCurrency = False
    Left = 80
    Top = 408
  end
  object qFacturaOrdTaller: TADOQuery
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
        Name = 'SUC'
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = 'num'
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = 'tip'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'SUCURSAL, DIRECCION, TELEFONO, FAX, EMAIL, RNC, LOGO,'
      'NCF, TIPO_NCF, CASE WHEN LEFT(NCF,3) = '#39'B01'#39' THEN NCF_VENCE '
      '                    WHEN LEFT(NCF,3) = '#39'B02'#39' THEN NULL'
      '                    WHEN LEFT(NCF,3) = '#39'B14'#39' THEN NCF_VENCE '
      
        '                    WHEN LEFT(NCF,3) = '#39'B15'#39' THEN NCF_VENCE END ' +
        'NCF_VENCE, FECHA, VENCE, NUM, ORDEN, CONDICION,'
      'CLI_RNC, CLIENTE, PROPIETARIO,'
      
        'VEH_PLACA, VEH_TIPO, VEH_MARCA, VEH_MODELO, VEH_YEAR, VEH_CHASSI' +
        'S, VEH_KILOM, VEH_NIV, VEH_COLOR,'
      'TIPO, PRODUCTO, CANT, PRECIO, VALOR SUBTOTAL,'
      
        '(CASE WHEN TIPOID = 1 THEN (CANT*PRECIO)*(DESCUENTO) ELSE 0 END)' +
        ' DESC_SERV,'
      
        '(CASE WHEN TIPOID = 2 THEN (CANT*PRECIO)*(DESCUENTO) ELSE 0 END)' +
        ' DESC_PIEZAS,'
      '(VALOR-'
      '(CASE WHEN TIPOID = 1 THEN (CANT*PRECIO)*(DESCUENTO)  '
      
        '      WHEN TIPOID = 2 THEN (CANT*PRECIO)*(DESCUENTO) ELSE 0 END)' +
        ') * ITBIS ITBIS,'
      '(VALOR-'
      '(CASE WHEN TIPOID = 1 THEN (CANT*PRECIO)*(DESCUENTO)  '
      
        '      WHEN TIPOID = 2 THEN (CANT*PRECIO)*(DESCUENTO) ELSE 0 END)' +
        ') +'
      '(VALOR-'
      '(CASE WHEN TIPOID = 1 THEN (CANT*PRECIO)*(DESCUENTO)  '
      
        '      WHEN TIPOID = 2 THEN (CANT*PRECIO)*(DESCUENTO) ELSE 0 END)' +
        ') * ITBIS TOTAL'
      'frOM ('
      
        'select s.suc_nombre SUCURSAL, s.suc_direccion DIRECCION, s.suc_t' +
        'elefono TELEFONO, s.suc_fax FAX, s.suc_email EMAIL, s.suc_rnc RN' +
        'C,'
      
        'f.NCF_Fijo+ RIGHT('#39'000000000'#39' + Ltrim(Rtrim(F.NCF_Secuencia)),8-' +
        'len(F.NCF_Secuencia)) NCF, UPPER(NT.ncf_nombre) TIPO_NCF, N.Fech' +
        'aVenc NCF_VENCE, '
      
        'F.fac_fecha FECHA, F.fac_vence VENCE, F.fac_numero NUM, F.fac_rn' +
        'c CLI_RNC, F.ped_numero ORDEN, F.fac_nombre CLIENTE, C.cli_nombr' +
        'e PROPIETARIO, '
      'ISNULL('#39'CREDITO A '#39'+COND.cpa_nombre,'#39'CONTADO'#39') CONDICION,'
      
        'RTRIM(V.PLACA) VEH_PLACA, TV.nombre VEH_TIPO,MV.nombre VEH_MODEL' +
        'O, MAV.mar_nombre VEH_MARCA, '
      
        'V.Kilometraje VEH_KILOM, V.Chassis VEH_CHASSIS, CL.col_nombre VE' +
        'H_COLOR, V.Annio VEH_YEAR, ISNULL(V.NIV,'#39'N/A'#39') VEH_NIV,'
      'DT.pro_nombre PRODUCTO, '
      '(SELECT TOP 1 CASE WHEN TIPO =  1 THEN '#39'SERVICIOS REALIZADOS'#39
      
        '                   WHEN TIPO =  2 THEN '#39'PIEZAS REEMPLAZADAS'#39' END' +
        ' FROM Det_Ordenes_taller '
      
        ' WHERE emp_codigo = F.emp_codigo AND suc_codigo = F.suc_codigo A' +
        'ND ord_numero = F.ped_numero AND pro_codigo = DT.pro_codigo) TIP' +
        'O,'
      '(SELECT TOP 1 TIPO FROM Det_Ordenes_taller '
      
        ' WHERE emp_codigo = F.emp_codigo AND suc_codigo = F.suc_codigo A' +
        'ND ord_numero = F.ped_numero AND pro_codigo = DT.pro_codigo) TIP' +
        'OID,'
      
        'DT.det_cantidad CANT, DT.det_precio PRECIO, DT.det_cantidad*DT.d' +
        'et_precio VALOR, '
      'DT.det_itbis/100 ITBIS, '
      'DT.det_descuento/100 DESCUENTO,'
      'E.emp_logo LOGO'
      'from Facturas F'
      
        'INNER JOIN Det_Factura DT ON F.emp_codigo = DT.emp_codigo AND F.' +
        'suc_codigo = DT.suc_codigo AND F.fac_numero = DT.fac_numero AND ' +
        'F.fac_forma = DT.fac_forma'
      '                         AND F.tfa_codigo = DT.tfa_codigo'
      'inner join Empresas E on F.emp_codigo = E.emp_codigo'
      
        'inner join Sucursales S on f.emp_codigo = s.emp_codigo and f.suc' +
        '_codigo = s.suc_codigo'
      
        'LEFT JOIN NCF N ON F.emp_codigo = N.emp_codigo AND F.suc_codigo ' +
        '= N.suc_codigo AND F.NCF_Fijo = N.NCF_Fijo'
      
        'LEFT JOIN NCF_Ticket_TipoDoc NT ON N.emp_codigo = NT.emp_codigo ' +
        'AND N.tdo_codigo = NT.tdo_codigo '
      
        'INNER JOIN Ordenes_Taller OT ON F.emp_codigo = OT.emp_codigo AND' +
        ' F.suc_codigo = OT.suc_codigo AND F.ped_numero = OT.ord_numero'
      
        'INNER JOIN Clientes C ON OT.emp_codigo = C.emp_codigo AND OT.pro' +
        'p_codigo = C.cli_codigo '
      'INNER JOIN Vehiculos V ON OT.veh_codigo = V.veh_codigo'
      
        'INNER JOIN Tipos_Vehiculos TV ON V.tipo_Veh_codigo = TV.tipo_Veh' +
        '_codigo'
      'INNER JOIN Modelos_Vehiculos MV ON V.mod_codigo = MV.mod_codigo'
      'INNER JOIN marcas_Vehiculos MAV ON V.mar_codigo = MAV.mar_codigo'
      'INNER JOIN Colores CL ON V.col_codigo = CL.col_codigo '#9#9#9
      
        'LEFT JOIN Condiciones COND ON F.cpa_codigo = COND.cpa_codigo AND' +
        ' F.emp_codigo = COND.emp_codigo'#9#9#9#9#9#9' '
      
        'where F.emp_codigo = :emp and F.suc_codigo = :suc and F.fac_nume' +
        'ro = :num  AND F.tfa_codigo = :tip)'
      'AS TEMP '
      'ORDER BY TIPO DESC')
    Left = 48
    Top = 408
    object qFacturaOrdTallerSUCURSAL: TStringField
      FieldName = 'SUCURSAL'
      Size = 60
    end
    object qFacturaOrdTallerDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 60
    end
    object qFacturaOrdTallerTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Size = 30
    end
    object qFacturaOrdTallerFAX: TStringField
      FieldName = 'FAX'
      Size = 30
    end
    object qFacturaOrdTallerEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 30
    end
    object qFacturaOrdTallerRNC: TStringField
      FieldName = 'RNC'
      Size = 30
    end
    object qFacturaOrdTallerNCF: TStringField
      FieldName = 'NCF'
      ReadOnly = True
      Size = 61
    end
    object qFacturaOrdTallerTIPO_NCF: TStringField
      FieldName = 'TIPO_NCF'
      ReadOnly = True
      Size = 80
    end
    object qFacturaOrdTallerNCF_VENCE: TDateTimeField
      FieldName = 'NCF_VENCE'
    end
    object qFacturaOrdTallerFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object qFacturaOrdTallerVENCE: TDateTimeField
      FieldName = 'VENCE'
    end
    object qFacturaOrdTallerNUM: TIntegerField
      FieldName = 'NUM'
    end
    object qFacturaOrdTallerORDEN: TIntegerField
      FieldName = 'ORDEN'
    end
    object qFacturaOrdTallerCONDICION: TStringField
      FieldName = 'CONDICION'
      ReadOnly = True
      Size = 60
    end
    object qFacturaOrdTallerCLI_RNC: TStringField
      FieldName = 'CLI_RNC'
      Size = 13
    end
    object qFacturaOrdTallerCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 60
    end
    object qFacturaOrdTallerPROPIETARIO: TStringField
      FieldName = 'PROPIETARIO'
      Size = 255
    end
    object qFacturaOrdTallerVEH_PLACA: TStringField
      FieldName = 'VEH_PLACA'
      ReadOnly = True
      Size = 50
    end
    object qFacturaOrdTallerVEH_TIPO: TStringField
      FieldName = 'VEH_TIPO'
      Size = 75
    end
    object qFacturaOrdTallerVEH_MARCA: TStringField
      FieldName = 'VEH_MARCA'
      Size = 60
    end
    object qFacturaOrdTallerVEH_MODELO: TStringField
      FieldName = 'VEH_MODELO'
      Size = 100
    end
    object qFacturaOrdTallerVEH_YEAR: TIntegerField
      FieldName = 'VEH_YEAR'
    end
    object qFacturaOrdTallerVEH_CHASSIS: TStringField
      FieldName = 'VEH_CHASSIS'
      Size = 75
    end
    object qFacturaOrdTallerVEH_KILOM: TIntegerField
      FieldName = 'VEH_KILOM'
    end
    object qFacturaOrdTallerVEH_NIV: TStringField
      FieldName = 'VEH_NIV'
      ReadOnly = True
      Size = 75
    end
    object qFacturaOrdTallerTIPO: TStringField
      FieldName = 'TIPO'
      ReadOnly = True
    end
    object qFacturaOrdTallerPRODUCTO: TStringField
      FieldName = 'PRODUCTO'
      Size = 256
    end
    object qFacturaOrdTallerCANT: TBCDField
      FieldName = 'CANT'
      Precision = 18
    end
    object qFacturaOrdTallerPRECIO: TBCDField
      FieldName = 'PRECIO'
      Precision = 18
    end
    object qFacturaOrdTallerSUBTOTAL: TBCDField
      FieldName = 'SUBTOTAL'
      ReadOnly = True
      Precision = 32
      Size = 8
    end
    object qFacturaOrdTallerDESC_SERV: TBCDField
      FieldName = 'DESC_SERV'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
    object qFacturaOrdTallerDESC_PIEZAS: TBCDField
      FieldName = 'DESC_PIEZAS'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
    object qFacturaOrdTallerITBIS: TBCDField
      FieldName = 'ITBIS'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
    object qFacturaOrdTallerTOTAL: TBCDField
      FieldName = 'TOTAL'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
    object qFacturaOrdTallerVEH_COLOR: TStringField
      FieldName = 'VEH_COLOR'
      Size = 60
    end
    object qFacturaOrdTallerLOGO: TBlobField
      FieldName = 'LOGO'
    end
  end
  object Rpt_FacOrdTaller: TfrxReport
    Version = '4.13.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43629.555344861100000000
    ReportOptions.LastChange = 43629.555344861100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Memo6OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '                                     '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnBeforePrint = Rpt_FacOrdTallerBeforePrint
    Left = 112
    Top = 408
    Datasets = <
      item
        DataSet = DB_qFacturaOrdTaller
        DataSetName = 'DB_qFacturaOrdTaller'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 166.299320000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object MCia: TfrxMemoView
          Width = 377.953000000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."SUCURSAL"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 505.220780000000000000
          Width = 94.488250000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'FACTURA')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baRight
          Left = 619.464967000000000000
          Top = 4.779530000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Pagina [Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baRight
          Left = 494.740477000000000000
          Top = 26.456710000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."TIPO_NCF"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baRight
          Left = 494.740477000000000000
          Top = 45.354360000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."NCF"]')
          ParentFont = False
        end
        object MVenceNCF: TfrxMemoView
          Align = baRight
          Left = 494.740477000000000000
          Top = 64.252010000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo6OnBeforePrint'
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'VENCE: [DB_qFacturaOrdTaller."NCF_VENCE"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baLeft
          Top = 80.456710000000000000
          Width = 377.953000000000000000
          Height = 79.370130000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."DIRECCION"]'
            
              'TEL: [DB_qFacturaOrdTaller."TELEFONO"] FAX: [DB_qFacturaOrdTalle' +
              'r."FAX"]'
            'EMAIL: [DB_qFacturaOrdTaller."EMAIL"]'
            'RNC: [DB_qFacturaOrdTaller."RNC"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baRight
          Left = -0.377953000000000000
          Top = 164.826840000000000000
          Width = 740.787880000000000000
          Height = 3.779530000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haRight
          ParentFont = False
        end
        object Logo: TfrxPictureView
          Width = 377.953000000000000000
          Height = 64.252010000000000000
          ShowHint = False
          DataField = 'LOGO'
          DataSet = DB_qFacturaOrdTaller
          DataSetName = 'DB_qFacturaOrdTaller'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 37.795300000000000000
        Top = 385.512060000000000000
        Width = 740.409927000000000000
        Condition = 'DB_qFacturaOrdTaller."TIPO"'
        object Memo26: TfrxMemoView
          Width = 740.409927000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."TIPO"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Align = baLeft
          Top = 18.897650000000000000
          Width = 85.039370080000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8 = (
            'Cantidad')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Align = baLeft
          Left = 85.039370080000000000
          Top = 18.897650000000000000
          Width = 485.669550080000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8 = (
            'Descripcion')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Align = baLeft
          Left = 570.708920160000000000
          Top = 18.897650000000000000
          Width = 85.039370080000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'Precio')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Align = baLeft
          Left = 655.748290240000000000
          Top = 18.897650000000000000
          Width = 85.039370080000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'Valor')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 445.984540000000000000
        Width = 740.409927000000000000
        DataSet = DB_qFacturaOrdTaller
        DataSetName = 'DB_qFacturaOrdTaller'
        RowCount = 0
        object Memo31: TfrxMemoView
          Align = baLeft
          Width = 85.039370080000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CANT'
          DataSet = DB_qFacturaOrdTaller
          DataSetName = 'DB_qFacturaOrdTaller'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."CANT"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Align = baLeft
          Left = 85.039370080000000000
          Width = 485.669550080000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRODUCTO'
          DataSet = DB_qFacturaOrdTaller
          DataSetName = 'DB_qFacturaOrdTaller'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."PRODUCTO"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Align = baLeft
          Left = 570.708920160000000000
          Width = 85.039370080000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRECIO'
          DataSet = DB_qFacturaOrdTaller
          DataSetName = 'DB_qFacturaOrdTaller'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."PRECIO"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Align = baLeft
          Left = 655.748290240000000000
          Width = 85.039370080000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'SUBTOTAL'
          DataSet = DB_qFacturaOrdTaller
          DataSetName = 'DB_qFacturaOrdTaller'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."SUBTOTAL"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 18.897650000000000000
        Top = 487.559370000000000000
        Width = 740.409927000000000000
        object Memo35: TfrxMemoView
          Align = baLeft
          Width = 655.748400080000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'Total:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Align = baLeft
          Left = 655.748400080000000000
          Width = 85.039370080000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_qFacturaOrdTaller
          DataSetName = 'DB_qFacturaOrdTaller'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<DB_qFacturaOrdTaller."SUBTOTAL">,MasterData1)]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 117.165430000000000000
        Top = 245.669450000000000000
        Width = 740.409927000000000000
        object Memo8: TfrxMemoView
          Align = baLeft
          Width = 85.039370080000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Fecha:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Align = baLeft
          Top = 19.897650000000000000
          Width = 85.039370080000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'R.N.C.:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          Top = 40.795300000000000000
          Width = 85.039370080000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Facturado a:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Align = baLeft
          Top = 59.692950000000000000
          Width = 85.039370080000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Propietario:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Align = baLeft
          Top = 83.267780000000000000
          Width = 85.039370080000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Vehiculo:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Align = baLeft
          Left = 85.039370080000000000
          Width = 144.000039060000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."FECHA"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Align = baLeft
          Left = 85.039370080000000000
          Top = 19.897650000000000000
          Width = 366.992309060000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."CLI_RNC"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Align = baLeft
          Left = 85.039370080000000000
          Top = 39.574830000000000000
          Width = 321.637949060000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."CLIENTE"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Align = baLeft
          Left = 85.039370080000000000
          Top = 58.913420000000000000
          Width = 366.992309060000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."PROPIETARIO"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Align = baLeft
          Left = 229.039409140000000000
          Width = 53.291319060000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Vence:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Align = baLeft
          Left = 282.330728200000000000
          Width = 91.086619060000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."VENCE"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Align = baRight
          Left = 600.189454550000000000
          Width = 83.527559060000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Factura No.:')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Align = baRight
          Left = 600.189454550000000000
          Top = 18.897650000000000000
          Width = 83.527559060000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Orden No.:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 549.787648120000000000
          Top = 41.574732360000000000
          Width = 83.527559060000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Condicion:')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Align = baRight
          Left = 683.717013610000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."NUM"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Align = baRight
          Left = 683.717013610000000000
          Top = 18.897650000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."ORDEN"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Align = baLeft
          Left = 633.315207180000000000
          Top = 41.574732360000000000
          Width = 136.062860310000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."CONDICION"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Align = baLeft
          Left = 85.039370080000000000
          Top = 83.149660000000000000
          Width = 654.236589060000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '[DB_qFacturaOrdTaller."VEH_PLACA"]     [DB_qFacturaOrdTaller."VE' +
              'H_MARCA"]     [DB_qFacturaOrdTaller."VEH_MODELO"]     [DB_qFactu' +
              'raOrdTaller."VEH_COLOR"]     [DB_qFacturaOrdTaller."VEH_YEAR"]  ' +
              '   [DB_qFacturaOrdTaller."VEH_CHASSIS"]     Km/M: [DB_qFacturaOr' +
              'dTaller."VEH_KILOM"]     NIV: [DB_qFacturaOrdTaller."VEH_NIV"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 275.905690000000000000
        Top = 566.929500000000000000
        Width = 740.409927000000000000
        object Memo37: TfrxMemoView
          Align = baLeft
          Top = 30.236240000000000000
          Width = 85.039370080000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Notas:')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 555.590551180000000000
          Top = 37.795300000000000000
          Width = 85.039370078740200000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Desc. Serv.:')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 555.590551180000000000
          Top = 56.692950000000000000
          Width = 85.039370078740200000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Desc. Resp.:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 555.590910000000000000
          Top = 75.590600000000000000
          Width = 85.039370078740200000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Sub-Total')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 555.590910000000000000
          Top = 94.488250000000000000
          Width = 85.039370078740200000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'ITBIS:')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 555.590910000000000000
          Top = 113.385900000000000000
          Width = 85.039370078740200000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Total:')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Align = baLeft
          Left = 640.630280078740200000
          Top = 75.590600000000000000
          Width = 96.377960080000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_qFacturaOrdTaller
          DataSetName = 'DB_qFacturaOrdTaller'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<DB_qFacturaOrdTaller."SUBTOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Align = baLeft
          Left = 640.629921258740200000
          Top = 37.795300000000000000
          Width = 96.377960080000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_qFacturaOrdTaller
          DataSetName = 'DB_qFacturaOrdTaller'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<DB_qFacturaOrdTaller."DESC_SERV">,MasterData1)]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Align = baLeft
          Left = 640.629921258740200000
          Top = 56.692950000000000000
          Width = 96.377960080000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_qFacturaOrdTaller
          DataSetName = 'DB_qFacturaOrdTaller'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<DB_qFacturaOrdTaller."DESC_PIEZAS">,MasterData1)]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Align = baLeft
          Left = 640.630280078740200000
          Top = 94.488250000000000000
          Width = 96.377960080000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_qFacturaOrdTaller
          DataSetName = 'DB_qFacturaOrdTaller'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<DB_qFacturaOrdTaller."ITBIS">,MasterData1)]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Align = baLeft
          Left = 640.630280078740200000
          Top = 113.385900000000000000
          Width = 96.377960080000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_qFacturaOrdTaller
          DataSetName = 'DB_qFacturaOrdTaller'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<DB_qFacturaOrdTaller."TOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 7.559060000000000000
          Top = 207.874150000000000000
          Width = 332.598640000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'NOMBRE Y SELLO')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 385.512060000000000000
          Top = 207.874150000000000000
          Width = 332.598640000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'APROBADO POR')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Align = baLeft
          Top = 245.669450000000000000
          Width = 332.598640000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Original: Cliente / Copia: Contabilidad')
          ParentFont = False
        end
      end
    end
  end
  object QUltPrecio: TADOQuery
    Connection = DM.ADOSigma
    BeforeOpen = QMsnExistenciaBeforeOpen
    DataSource = dsDetalle
    Parameters = <
      item
        Name = 'CLI'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'PRO'
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
        Name = 'emp'
        Attributes = [paSigned]
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select '#39'Ult. Precio: '#39'+RTRIM(precio) precio from('
      'select top 1 df.det_precio PRECIO'
      'from facturas f'
      
        'inner join det_factura df on f.emp_codigo = df.emp_codigo and f.' +
        'suc_codigo = df.suc_codigo'
      
        '                         and f.fac_forma = df.fac_forma and f.tf' +
        'a_codigo = df.tfa_codigo '
      
        '                         and f.fac_numero = df.fac_numero and f.' +
        'fac_status <> '#39'ANU'#39
      
        'WHERE F.CLI_CODIGO = :CLI AND DF.PRO_CODIGO = :PRO AND F.SUC_COD' +
        'IGO = :SUC '
      'AND F.EMP_CODIGO = :EMP'
      #9'ORDER BY F.FAC_NUMERO DESC )'
      #9'as temp')
    Left = 420
    Top = 224
    object QUltPrecioPRECIO: TStringField
      FieldName = 'PRECIO'
      Size = 100
    end
  end
  object dsUltimoPrecio: TDataSource
    DataSet = QUltPrecio
    Left = 384
    Top = 224
  end
  object qReservas: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <
      item
        Name = 'res'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'res'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'res'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'update HOTEL_RESERVAS'
      'set checkedout = 1, '
      'checkout = cast(cast(getdate() as char(11)) as datetime), '
      'outtime  = (getdate())'
      'where cod_reserva   = :res'
      ''
      'update Hotel_cal'
      'set checkedout = 1'
      'where cod_reserva = :res'
      ''
      
        'update  Hotel_cuenta_reserva set estatus='#39'CER'#39' where cod_reserva' +
        ' = :res')
    Left = 144
    Top = 272
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
    Left = 360
    Top = 376
  end
  object qVerProductos: TADOQuery
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
        Name = 'alm'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'pro'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'can'
        DataType = ftFloat
        Size = -1
        Value = Null
      end
      item
        Name = 'med'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'usu'
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
        Name = 'tfa'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'FOR'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'NUM'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from pr_verifica_disp (:emp, :alm, :pro, :can, :med, :u' +
        'su, :suc, :tfa, :for, :num)')
    Left = 568
    Top = 176
  end
  object qAplicaNC: TADOQuery
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
        Name = 'SUC'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'NC'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'MONTO'
        DataType = ftFloat
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'DECLARE @NC INT, @EMP INT, @SUC INT, @MONTO NUMERIC(18,2), @USAD' +
        'O NUMERIC(18,2)'
      'SET @EMP = :EMP'
      'SET @SUC = :SUC'
      'SET @NC = :NC'
      'SET @MONTO = :MONTO'
      ''
      
        'SET @USADO =  (select  ISNULL(sum(ncr_monto),0) from facnotascre' +
        'dito where ncr_numero = @NC AND EMP_CODIGO = @EMP AND SUC_CODIGO' +
        ' = @SUC);'
      ''
      
        'SET @USADO = @USADO +   (select  ISNULL(sum(DET_monto),0) from D' +
        'ET_NOTACREDITO where ncr_numero = @NC AND EMP_CODIGO = @EMP AND ' +
        'SUC_CODIGO = @SUC);'
      ''
      ''
      ''
      '/*aplicar nota de credito*/'
      'update notascredito'
      'set ncr_montousado =@USADO -isnull(@monto,0) '
      
        'where ncr_numero = @NC and emp_codigo = @emp and suc_codigo = @s' +
        'uc'
      ''
      '')
    Left = 504
    Top = 368
  end
  object QNota: TADOQuery
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
        Name = 'forma'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
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
        Name = 'tipo'
        Attributes = [paSigned, paNullable]
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
      'select * from facnotascredito'
      'where emp_codigo = :emp'
      'and fac_forma = :forma'
      'and fac_numero = :numero'
      'and tfa_codigo = :tipo'
      'and suc_codigo = :suc')
    Left = 448
    Top = 352
    object QNotaEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'FACNOTASCREDITO.EMP_CODIGO'
    end
    object QNotaFAC_FORMA: TIBStringField
      FieldName = 'FAC_FORMA'
      Origin = 'FACNOTASCREDITO.FAC_FORMA'
      Size = 1
    end
    object QNotaTFA_CODIGO: TIntegerField
      FieldName = 'TFA_CODIGO'
      Origin = 'FACNOTASCREDITO.TFA_CODIGO'
    end
    object QNotaFAC_NUMERO: TIntegerField
      FieldName = 'FAC_NUMERO'
      Origin = 'FACNOTASCREDITO.FAC_NUMERO'
    end
    object QNotaNCR_NUMERO: TIntegerField
      FieldName = 'NCR_NUMERO'
      Origin = 'FACNOTASCREDITO.NCR_NUMERO'
    end
    object QNotaNCR_MONTO: TFloatField
      FieldName = 'NCR_MONTO'
      Origin = 'FACNOTASCREDITO.NCR_MONTO'
      DisplayFormat = '#,0.00'
    end
    object QNotaNCR_DISPONIBLE: TFloatField
      FieldName = 'NCR_DISPONIBLE'
      Origin = 'FACNOTASCREDITO.NCR_DISPONIBLE'
      DisplayFormat = '#,0.00'
    end
    object QNotasuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
  end
  object QSerie: TADOQuery
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
        Name = 'forma'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'tipo'
        Attributes = [paSigned, paNullable]
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
      'select '
      'EMP_CODIGO, FAC_FORMA, FAC_NUMERO, PRO_CODIGO, '
      'SER_NUMERO, SER_SECUENCIA, TFA_CODIGO, SUC_CODIGO'
      'from '
      'FACSERIE'
      'where'
      'emp_codigo = :emp'
      'and fac_forma = :forma'
      'and tfa_codigo = :tipo'
      'and fac_numero = :num'
      'and suc_codigo = :suc'
      'order by'
      'ser_secuencia')
    Left = 423
    Top = 296
    object QSerieEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QSerieFAC_FORMA: TStringField
      FieldName = 'FAC_FORMA'
      Size = 1
    end
    object QSerieFAC_NUMERO: TIntegerField
      FieldName = 'FAC_NUMERO'
    end
    object QSeriePRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
    end
    object QSerieSER_NUMERO: TStringField
      FieldName = 'SER_NUMERO'
      Size = 30
    end
    object QSerieSER_SECUENCIA: TIntegerField
      FieldName = 'SER_SECUENCIA'
    end
    object QSerieTFA_CODIGO: TIntegerField
      FieldName = 'TFA_CODIGO'
    end
    object QSerieSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
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
    Left = 712
    Top = 352
  end
  object ApplicationEvents1: TApplicationEvents
    Left = 220
    Top = 376
  end
  object Timer1: TTimer
    Enabled = False
    Left = 250
    Top = 376
  end
  object Rpt_Envio: TfrxReport
    Version = '4.13.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44385.427386354200000000
    ReportOptions.LastChange = 44385.427386354200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 372
    Top = 433
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 30.000000000000000000
      PaperHeight = 25.000000000000000000
      PaperSize = 256
      object MRecibeTel: TfrxMemoView
        Top = 11.456710000000000000
        Width = 113.385900000000000000
        Height = 11.338590000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8 = (
          'Tel. Recibe: 829-766-6807')
        ParentFont = False
      end
      object MEnvia: TfrxMemoView
        Top = 22.574830000000000000
        Width = 113.385900000000000000
        Height = 11.338590000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8 = (
          'Envia: Jose Perez')
        ParentFont = False
      end
      object MDescripcion: TfrxMemoView
        Top = 34.133890000000000000
        Width = 113.385900000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8 = (
          'Envia: Jose Perez')
        ParentFont = False
      end
      object MRecibe: TfrxMemoView
        Width = 113.385900000000000000
        Height = 11.338590000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8 = (
          'Recibe: 829-766-6807')
        ParentFont = False
      end
      object MCodigoBarra: TfrxBarCodeView
        Align = baBottom
        Left = 9.779530000000000000
        Top = 56.692986610000000000
        Width = 121.000000000000000000
        Height = 37.795263390000000000
        ShowHint = False
        BarType = bcCodeCodabar
        HAlign = haCenter
        Rotation = 0
        Text = '1234567001'
        WideBarRatio = 2.000000000000000000
        Zoom = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
      end
    end
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 380
    Top = 401
  end
  object qGrabaCombos: TADOQuery
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
        Name = 'SUC'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'FAC'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'TFA'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'FOR'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      '                DECLARE @EMP INT;'
      #9'DECLARE @EMPINV INT;'
      #9'DECLARE @SUC INT;'
      #9'DECLARE @FAC INT;'
      #9'DECLARE @TFA INT;'
      #9'DECLARE @FOR CHAR(1);'
      #9'DECLARE @COMBO CHAR(5);'
      #9'DECLARE @PRO INT;'
      #9'DECLARE @COM_PRO INT;'
      #9'DECLARE @COM_CAN FLOAT;'
      #9'DECLARE @CAN FLOAT;'
      #9'DECLARE @SEC INT;'
      ''
      '                SET @EMP =  :EMP'
      '                SET @SUC =  :SUC'
      '                SET @FAC =  :FAC'
      '                SET @TFA =  :TFA'
      '                SET @FOR = :FOR'
      '     '
      '               '
      
        '                SELECT @EMP = EMP_CODIGO, @SUC = SUC_CODIGO, @FA' +
        'C = FAC_NUMERO, @TFA = TFA_CODIGO, @FOR = FAC_FORMA,'
      #9'@PRO = PRO_CODIGO, @CAN = DET_CANTIDAD'
      
        #9'FROM DET_FACTURA WHERE EMP_CODIGO = @EMP AND SUC_CODIGO = @SUC ' +
        'AND FAC_NUMERO = @FAC AND TFA_CODIGO = @TFA AND FAC_FORMA = @FOR' +
        ';'
      #9
      #9'SELECT @EMPINV = PAR_INVEMPRESA'
      #9'FROM PARAMETROS '
      #9'WHERE EMP_CODIGO = @EMP;'
      ''
      
        '               DELETE FROM DET_FACTURA_COMBOS WHERE EMP_CODIGO =' +
        ' @EMP AND SUC_CODIGO = @SUC AND FAC_NUMERO = @FAC AND TFA_CODIGO' +
        ' = @TFA AND FAC_FORMA = @FOR;'
      #9
      #9'SELECT @SEC = ISNULL(MAX(DET_SECUENCIA),0)+1'
      #9#9#9'FROM DET_FACTURA_COMBOS'
      
        #9#9#9'WHERE EMP_CODIGO = @EMP AND SUC_CODIGO = @SUC AND FAC_NUMERO ' +
        '= @FAC AND TFA_CODIGO = @TFA AND FAC_FORMA = @FOR;'
      #9
      #9'DECLARE CUR CURSOR FOR'
      #9#9#9#9'SELECT com_producto, com_cantidad'
      #9#9#9#9'FROM PRODCOMBO'
      #9#9#9#9'WHERE EMP_CODIGO = @EMPINV'
      #9#9#9#9'AND PRO_CODIGO '
      
        #9#9#9#9'IN (SELECT PRO_CODIGO FROM DET_FACTURA WHERE EMP_CODIGO = @E' +
        'MP AND SUC_CODIGO = @SUC AND TFA_CODIGO = @TFA AND FAC_FORMA = @' +
        'FOR '
      #9#9#9#9'    AND FAC_NUMERO = @FAC)'
      #9#9#9#9'ORDER BY PRO_CODIGO, COM_PRODUCTO;'
      ''
      #9#9#9'OPEN CUR;'
      #9#9#9'FETCH NEXT FROM CUR INTO @COM_PRO, @COM_CAN;'
      #9#9#9'WHILE @@FETCH_STATUS = 0'
      #9#9#9'BEGIN'#9#9
      #9#9#9'INSERT INTO [dbo].[Det_Factura_COMBOS]'
      
        '            ([emp_codigo], [suc_codigo], [fac_forma], [tfa_codig' +
        'o], [fac_numero], [det_secuencia], [pro_codigo], [com_producto]'
      
        '            ,[pro_roriginal], [com_pro_roriginal], [pro_rfabric]' +
        ', [com_pro_rfabric], [com_pro_nombre], [pro_nombre], [pro_barra]'
      
        '            ,[det_costo], [det_precio], [det_cantidad], [det_con' +
        'itbis], [det_itbis], [det_cantdevuelta], [alm_codigo])'
      
        #9#9#9'SELECT d.emp_codigo, d.suc_codigo, d.fac_forma, d.tfa_codigo,' +
        ' d.fac_numero, @SEC SECUENCIA, '
      #9#9#9'd.pro_codigo, pcp.pro_codigo com_producto, d.pro_roriginal, '
      
        #9#9#9'pcp.pro_roriginal com_pro_roriginal, d.pro_rfabric, pcp.pro_r' +
        'fabric com_pro_rfabric, pcp.pro_nombre com_pro_nombre, d.pro_nom' +
        'bre, pcp.pro_barra, '
      
        #9#9#9'pcp.pro_costo det_costo, pcp.pro_precio1 det_precio, pc.com_c' +
        'antidad*d.det_cantidad det_cantidad, pcp.pro_itbis det_conitbis,' +
        ' pcp.pro_montoitbis det_itbis, '
      #9#9#9'd.det_cantdevuelta, d.alm_codigo'
      #9#9#9'FROM DET_FACTURA D'
      
        #9#9#9'INNER JOIN FACTURAS F ON D.EMP_CODIGO = F.EMP_CODIGO AND D.SU' +
        'C_CODIGO = F.SUC_CODIGO AND D.TFA_CODIGO = F.TFA_CODIGO AND D.FA' +
        'C_FORMA =F.FAC_FORMA'
      #9#9#9'                      AND D.FAC_NUMERO = F.FAC_NUMERO'
      
        #9#9#9'INNER JOIN PRODUCTOS P ON D.PRO_CODIGO = P.PRO_CODIGO AND P.E' +
        'MP_CODIGO = @EMPINV'
      
        #9#9#9'INNER JOIN PRODCOMBO PC ON P.PRO_CODIGO = PC.PRO_CODIGO AND P' +
        '.EMP_CODIGO = PC.EMP_CODIGO'
      
        #9#9#9'INNER JOIN PRODUCTOS PCP ON PC.COM_PRODUCTO = PCP.PRO_CODIGO ' +
        'AND PC.EMP_CODIGO = PCP.EMP_CODIGO'
      
        #9#9#9'WHERE D.FAC_NUMERO = @FAC AND D.TFA_CODIGO = @TFA AND D.FAC_F' +
        'ORMA = @FOR AND D.EMP_CODIGO = @EMP AND D.SUC_CODIGO = @SUC'
      #9#9#9'AND PCP.PRO_CODIGO = @COM_PRO;'
      ''
      #9#9#9'SET @SEC = @SEC + 1;'
      #9#9#9'FETCH NEXT FROM CUR INTO @COM_PRO, @COM_CAN;'
      #9#9#9'END'
      #9#9#9'CLOSE CUR;'
      #9#9#9'DEALLOCATE CUR;')
    Left = 272
    Top = 416
  end
  object qDeleteCombos: TADOQuery
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
        Name = 'SUC'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'FAC'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'TFA'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'FOR'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'PRO'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      '                DECLARE @EMP INT;'
      #9'DECLARE @EMPINV INT;'
      #9'DECLARE @SUC INT;'
      #9'DECLARE @FAC INT;'
      #9'DECLARE @TFA INT;'
      #9'DECLARE @FOR CHAR(1);'
      #9'DECLARE @PRO INT;'
      ''
      '                SET @EMP =  :EMP'
      '                SET @SUC =  :SUC'
      '                SET @FAC =  :FAC'
      '                SET @TFA =  :TFA'
      '                SET @FOR = :FOR'
      '                SET @PRO = :PRO'
      '     '
      '               '
      #9)
    Left = 304
    Top = 416
  end
  object qImpCardNet: TADOQuery
    Connection = DM.ADOSigma
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
        Name = 'fac'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'tip'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'for'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @json varchar(max)'
      'declare @emp int'
      'declare @suc int'
      'declare @fac int'
      'declare @tip int'
      'declare @for char(1)'
      ''
      'set @emp = :emp'
      'set @suc  =  :suc'
      'set @fac  =  :fac'
      'set @tip   =  :tip'
      'set @for   = :for'
      ''
      
        'select for_veriphone_desc json,for_monto monto, (for_monto*(p.pa' +
        'r_itbis/100)) monto_itbis, for_monto-(for_monto*(p.par_itbis/100' +
        ')) montosinitbis,'
      's.suc_nombre sucursal, s.suc_direccion direccion'
      'from facformapago fp'
      'inner join Parametros p on fp.emp_codigo = p.emp_codigo'
      
        'inner join Sucursales s on fp.emp_codigo = s.emp_codigo and fp.s' +
        'uc_codigo = s.suc_codigo'
      'where isnull(for_veriphone_desc,'#39#39')<>'#39#39
      
        'and fp.emp_codigo = @emp and fp.suc_codigo = @suc and fp.tfa_cod' +
        'igo = @tip and fp.fac_forma = @for and fp.fac_numero = @fac'
      'and isnull(fp.for_veriphone_desc,'#39#39')<>'#39#39
      ''
      '')
    Left = 40
    Top = 288
  end
  object qGenNCF: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <
      item
        Name = 'EMP'
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
        Name = 'tipo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'forma'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'num'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'declare @empresa int, @sucursal int, @tipo int, @forma char(1), ' +
        '@numero int, @ncftipo int, @tipodoc char(3), @ncf_fijo char(20),' +
        ' @ncf_sec int'
      ''
      'set @empresa = :emp'
      'set @sucursal = :suc'
      'set @tipo = :tipo'
      'set @forma = :forma'
      'set @numero = :num'
      ''
      ''
      'select @ncftipo = tip_codigo '
      'from facturas '
      'where emp_codigo = @empresa'
      'and suc_codigo = @sucursal'
      'and tfa_codigo = @tipo'
      'and fac_forma = @forma'
      'and fac_numero = @numero'
      ''
      ''
      'if exists(select * from facturas '
      '              where'#9'emp_codigo = @empresa'
      #9#9#9#9'and suc_codigo = @sucursal'
      #9#9#9#9'and tfa_codigo = @tipo'
      #9#9#9#9'and fac_forma  = @forma'
      #9#9#9#9'and fac_numero = @numero'
      #9#9#9#9'and suc_codigo = @sucursal'
      #9#9#9#9'and ISNULL(ncf_fijo,0) = 0'
      #9#9#9#9'and ISNULL(ncf_SECUENCIA,0) = 0) begin '
      #9'/* Generando el NCF */'
      #9'if (@ncftipo) > 0'
      #9'begin'
      #9#9'select '#9'@tipodoc = tdo_codigo'
      #9#9'from'#9'tiponcf'
      #9#9'where  '#9'emp_codigo = @empresa'
      #9#9#9'and tip_codigo = @ncftipo;'
      #9#9#9
      #9#9'select'#9'@ncf_fijo = isnull(ncf_fijo,'#39'X'#39')'
      #9#9'from'#9'ncf'
      #9#9'where'#9'emp_codigo = @empresa'
      
        #9#9#9'and suc_codigo = case when ISNULL((select par_NCF_Sucursal fr' +
        'om CONTPARAMETROS WHERE emp_codigo = @empresa),0) = 1 then @sucu' +
        'rsal else 1 end'
      #9#9#9'and tdo_codigo = @tipodoc'
      #9#9#9'and ncf_status = '#39'ACT'#39';'
      ''
      #9'select'#9'@ncf_sec = isnull(ncf_secuencia,0)+1'
      #9#9'from'#9'ncf'
      #9#9'where'#9'emp_codigo = @empresa'
      
        #9#9#9'and suc_codigo = case when ISNULL((select par_NCF_Sucursal fr' +
        'om CONTPARAMETROS WHERE emp_codigo = @empresa),0) = 1 then @sucu' +
        'rsal else 1 end'
      #9#9#9'and tdo_codigo = @tipodoc'
      #9#9#9'and ncf_status = '#39'ACT'#39';'
      #9
      ''
      #9#9#9'set transaction isolation level repeatable read'
      #9
      #9#9'--'#9'begin transaction tra1'
      #9#9#9#9'select'#9'@ncf_fijo = ncf_fijo, @ncf_sec = ncf_secuencia+1'
      #9#9#9#9'from'#9'ncf'
      #9#9#9#9'with'#9'(updlock)'
      #9#9#9#9'where'#9'emp_codigo = @empresa'
      #9#9#9#9#9'and tdo_codigo = @tipodoc'
      #9#9#9#9#9'AND ncf_status = '#39'ACT'#39
      
        #9#9#9#9#9'and suc_codigo = case when (select ISNULL(par_NCF_Sucursal,' +
        '0) from CONTPARAMETROS WHERE emp_codigo = @empresa) = 1 then @su' +
        'cursal else 1 end;'
      #9#9#9#9
      #9#9#9#9'update'#9'ncf'
      #9#9#9#9'with'#9'(holdlock)'
      #9#9#9#9'set'#9'ncf_secuencia = ncf_secuencia+1'
      #9#9#9#9'where'#9'emp_codigo = @empresa'
      #9#9#9#9#9'and ncf_fijo = @ncf_fijo'
      
        #9#9#9#9#9'and suc_codigo = case when (select ISNULL(par_NCF_Sucursal,' +
        '0) from CONTPARAMETROS WHERE emp_codigo = @empresa) = 1 then @su' +
        'cursal else 1 end;'
      ''
      ''
      ''
      #9
      #9
      #9#9#9#9'set'#9'@ncf_sec = @ncf_sec;'#9
      '--'#9#9#9'commit transaction tra1'
      'end'
      ''
      #9
      #9#9#9'update'#9'facturas'
      #9#9#9'set'#9'ncf_fijo = @ncf_fijo'
      #9#9#9'where'#9'emp_codigo = @empresa'
      #9#9#9#9'and suc_codigo = @sucursal'
      #9#9#9#9'and tfa_codigo = @tipo'
      #9#9#9#9'and fac_forma  = @forma'
      #9#9#9#9'and fac_numero = @numero;'
      #9#9#9
      #9#9#9'update'#9'facturas'
      #9#9#9'set'#9'ncf_secuencia = @ncf_sec'
      #9#9#9'where'#9'emp_codigo = @empresa'
      #9#9#9#9'and suc_codigo = @sucursal'
      #9#9#9#9'and tfa_codigo = @tipo'
      #9#9#9#9'and fac_forma  = @forma'
      #9#9#9#9'and fac_numero = @numero'
      #9#9#9#9'and suc_codigo = @sucursal;'
      #9#9'end;'
      ''
      ''
      #9)
    Left = 768
    Top = 288
  end
  object dsEnvios: TDataSource
    DataSet = QEnvio
    Left = 316
    Top = 273
  end
  object Rpt_Envio_Emtraba: TfrxReport
    Version = '4.13.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44385.427386354200000000
    ReportOptions.LastChange = 44385.427386354200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 484
    Top = 353
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 100.000000000000000000
      PaperHeight = 50.000000000000000000
      PaperSize = 256
      object MRecibeTel: TfrxMemoView
        Top = 26.456710000000000000
        Width = 377.953000000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8 = (
          'Tel. Recibe: 829-766-6807')
        ParentFont = False
      end
      object MEnvia: TfrxMemoView
        Top = 56.574830000000000000
        Width = 377.953000000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8 = (
          'Envia: Jose Perez')
        ParentFont = False
      end
      object MDescripcion: TfrxMemoView
        Top = 88.133890000000000000
        Width = 377.953000000000000000
        Height = 30.236240000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8 = (
          'Envia: Jose Perez')
        ParentFont = False
      end
      object MRecibe: TfrxMemoView
        Top = -2.000000000000000000
        Width = 377.953000000000000000
        Height = 22.677180000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8 = (
          'Recibe: 829-766-6807')
        ParentFont = False
      end
      object MCodigoBarra: TfrxBarCodeView
        Align = baCenter
        Left = 128.476500000000000000
        Top = 117.165466610000000000
        Width = 121.000000000000000000
        Height = 71.811033390000000000
        ShowHint = False
        BarType = bcCodeCodabar
        HAlign = haCenter
        Rotation = 0
        Text = '1234567001'
        WideBarRatio = 2.000000000000000000
        Zoom = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
      end
    end
  end
  object MDDetalle: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 784
    Top = 58
    object MDDetallepro_codigo: TIntegerField
      FieldName = 'pro_codigo'
    end
    object MDDetallecantidadund: TCurrencyField
      FieldName = 'cantidadund'
    end
    object MDDetallecantidademp: TCurrencyField
      FieldName = 'cantidademp'
    end
  end
  object qInsertSerie: TADOQuery
    Connection = DM.ADOSigma
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
        Name = 'for'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'fac'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'PRO'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SEC'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SER'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'TFA'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @EMP INT'
      'DECLARE @SUC INT'
      'DECLARE @FOR VARCHAR(1)'
      'DECLARE @FAC INT'
      'DECLARE @PRO INT'
      'DECLARE @SEC INT'
      'DECLARE @SER VARCHAR(30)'
      'DECLARE @TFA INT'
      ''
      ''
      'SET @EMP = :EMP'
      'SET @SUC = :SUC'
      'SET @FOR = :FOR'
      'SET @FAC = :FAC'
      'SET @PRO = :PRO'
      'SET @SEC = :SEC'
      'SET @SER = :SER'
      'SET @TFA = :TFA'
      ''
      
        'IF NOT EXISTS(SELECT * FROM FACSERIE WHERE EMP_CODIGO = @EMP AND' +
        ' SUC_CODIGO = @SUC AND FAC_FORMA = @FOR AND FAC_NUMERO = @FAC AN' +
        'D PRO_CODIGO = @PRO AND '
      'ser_numero = @SER AND ser_secuencia = @SEC) BEGIN '
      'INSERT INTO FACSERIE'
      'SELECT @EMP, @SUC, @FOR, @FAC, @PRO, @SEC, @SER, @TFA'
      'END')
    Left = 40
    Top = 216
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
      'and u.Nombre = :und')
    Left = 320
    Top = 208
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
  object qActBalNC: TADOQuery
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
        Name = 'SUC'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'NC'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @NC INT, @EMP INT, @SUC INT, @USADO NUMERIC(18,2)'
      'SET @EMP = :EMP'
      'SET @SUC = :SUC'
      'SET @NC = :NC'
      ''
      ''
      
        'SET @USADO =  (select  ISNULL(sum(ncr_monto),0) from facnotascre' +
        'dito where ncr_numero = @NC AND EMP_CODIGO = @EMP AND SUC_CODIGO' +
        ' = @SUC);'
      ''
      
        'SET @USADO = @USADO +   (select  ISNULL(sum(DET_monto),0) from D' +
        'ET_NOTACREDITO where ncr_numero = @NC AND EMP_CODIGO = @EMP AND ' +
        'SUC_CODIGO = @SUC);'
      ''
      'UPDATE NotasCredito'
      'SET ncr_montousado = @USADO'
      
        'WHERE emp_codigo = @EMP AND suc_codigo = @SUC AND ncr_numero = @' +
        'NC')
    Left = 528
    Top = 376
  end
  object qVerPrecProd: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <
      item
        Name = 'EMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'PRO'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @EMP INT '
      'DECLARE @PRO INT'
      'DECLARE @EMPPROD INT'
      'DECLARE @ITBISINCLUIDO CHAR(5)'
      'DECLARE @VALOR NUMERIC(18,2)'
      'DECLARE @COSTO NUMERIC(18,2)'
      ''
      'SET @EMP = :emp'
      'SET @PRO = :pro'
      
        'SET @EMPPROD = (SELECT par_invempresa FROM PARAMETROS WHERE emp_' +
        'codigo = @EMP)'
      
        'SET @ITBISINCLUIDO = (SELECT par_itbisincluido FROM PARAMETROS W' +
        'HERE emp_codigo = @EMP)'
      ''
      
        'SELECT @VALOR = pro_costo * (case when @ITBISINCLUIDO = '#39'True'#39' T' +
        'HEN (1+(pro_montoitbis/100)) ELSE 1 end)'
      'FROM PRODUCTOS'
      'WHERE PRO_CODIGO = @PRO AND EMP_CODIGO = @EMPPROD'
      ''
      '/*UPDATE PRODUCTOS '
      
        'SET pro_precio1 = CASE WHEN @ITBISINCLUIDO = '#39'TRUE'#39' THEN @VALOR*' +
        '(1+(pro_beneficio/100)) ELSE pro_costo*(1+(pro_beneficio/100)) E' +
        'ND,'
      
        '    PRO_PRECIO2 = CASE WHEN @ITBISINCLUIDO = '#39'TRUE'#39' THEN @VALOR*' +
        '(1+(pro_beneficio2/100)) ELSE pro_costo*(1+(pro_beneficio2/100))' +
        ' END,'
      
        #9'PRO_PRECIO3 = CASE WHEN @ITBISINCLUIDO = '#39'TRUE'#39' THEN @VALOR*(1+' +
        '(pro_beneficio3/100)) ELSE pro_costo*(1+(pro_beneficio3/100)) EN' +
        'D,'
      
        #9'PRO_PRECIO4 = CASE WHEN @ITBISINCLUIDO = '#39'TRUE'#39' THEN @VALOR*(1+' +
        '(pro_beneficio4/100)) ELSE pro_costo*(1+(pro_beneficio4/100)) EN' +
        'D'
      'WHERE PRO_CODIGO IN'
      '(select PRO_CODIGO from('
      'select '
      'pro_codigo, pro_nombre, '
      'pro_costo, pro_montoitbis, valor,'
      'pro_precio1, '
      
        'cast(case when Incluido = '#39'True'#39' then (Valor*(1+ben1/100)) else ' +
        '(pro_costo*(1+ben1/100)) end as numeric(18,2)) prec1,'
      'pro_beneficio, ben1,'
      'pro_precio2, '
      
        'cast(case when Incluido = '#39'True'#39' then (Valor*(1+ben2/100)) else ' +
        '(pro_costo*(1+ben2/100)) end as numeric(18,2)) prec2,'
      'pro_beneficio2, ben2,'
      'pro_precio3, '
      
        'cast(case when Incluido = '#39'True'#39' then (Valor*(1+ben3/100)) else ' +
        '(pro_costo*(1+ben3/100)) end as numeric(18,2)) prec3,'
      'pro_beneficio3, ben3,'
      'pro_precio4, '
      
        'cast(case when Incluido = '#39'True'#39' then (Valor*(1+ben4/100)) else ' +
        '(pro_costo*(1+ben4/100)) end as numeric(18,2)) prec4,'
      'pro_beneficio4, ben4'
      'from('
      'select Incluido,'
      'pro_codigo, pro_nombre, '
      'pro_costo, pro_montoitbis, '
      
        'pro_costo * case when pro_montoitbis > 0 then (1+(pro_montoitbis' +
        '/100)) else 1 end Valor,'
      'pro_precio1, pro_beneficio, '
      
        'cast((((case when Incluido = '#39'True'#39' then pro_precio1 else pro_pr' +
        'ecio1/(1+(pro_montoitbis/100)) end)/ case when Valor = 0 then 1 ' +
        'else valor end)-1)*100 as numeric(18,2)) ben1,'
      'pro_precio2, pro_beneficio2,'
      
        'cast((((case when Incluido = '#39'True'#39' then pro_precio2 else pro_pr' +
        'ecio2/(1+(pro_montoitbis/100)) end)/ case when Valor = 0 then 1 ' +
        'else valor end)-1)*100 as numeric(18,2)) ben2,'
      'pro_precio3, pro_beneficio3,'
      
        'cast((((case when Incluido = '#39'True'#39' then pro_precio3 else pro_pr' +
        'ecio3/(1+(pro_montoitbis/100)) end)/ case when Valor = 0 then 1 ' +
        'else valor end)-1)*100 as numeric(18,2)) ben3,'
      'pro_precio4, pro_beneficio4,'
      
        'cast((((case when Incluido = '#39'True'#39' then pro_precio4 else pro_pr' +
        'ecio4/(1+(pro_montoitbis/100)) end)/ case when Valor = 0 then 1 ' +
        'else valor end)-1)*100 as numeric(18,2)) ben4'
      'from('
      'select pr.par_itbisincluido Incluido,'
      'pro_codigo, pro_nombre, '
      'pro_costo, pro_montoitbis, '
      
        'pro_costo * case when pro_montoitbis > 0 then (1+(pro_montoitbis' +
        '/100)) else 1 end Valor,'
      'pro_precio1, pro_beneficio, '
      'pro_precio2, pro_beneficio2,'
      'pro_precio3, pro_beneficio3,'
      'pro_precio4, pro_beneficio4 '
      'from productos p'
      
        'inner join Parametros pr on p.emp_codigo = pr.emp_codigo) as tem' +
        'p) as temp2) as temp3'
      
        'where ((PRO_BENEFICIO<>BEN1) or (pro_beneficio2<>BEN2) or (pro_p' +
        'recio3<>BEN3) or (PRO_BENEFICIO4<>BEN4)) and '
      'pro_costo > 0 AND pro_codigo = @PRO)'
      '--and pro_nombre like '#39'%BOTELLON DE AGUA%'#39
      '*/'
      ''
      'select * from('
      'select '
      'pro_codigo, pro_nombre, '
      'pro_costo, pro_montoitbis, valor,'
      'pro_precio1, '
      
        'cast(case when Incluido = '#39'True'#39' then (Valor*(1+ben1/100)) else ' +
        '(pro_costo*(1+ben1/100)) end as numeric(18,2)) prec1,'
      'pro_beneficio, ben1,'
      'pro_precio2, '
      
        'cast(case when Incluido = '#39'True'#39' then (Valor*(1+ben2/100)) else ' +
        '(pro_costo*(1+ben2/100)) end as numeric(18,2)) prec2,'
      'pro_beneficio2, ben2,'
      'pro_precio3, '
      
        'cast(case when Incluido = '#39'True'#39' then (Valor*(1+ben3/100)) else ' +
        '(pro_costo*(1+ben3/100)) end as numeric(18,2)) prec3,'
      'pro_beneficio3, ben3,'
      'pro_precio4, '
      
        'cast(case when Incluido = '#39'True'#39' then (Valor*(1+ben4/100)) else ' +
        '(pro_costo*(1+ben4/100)) end as numeric(18,2)) prec4,'
      'pro_beneficio4, ben4'
      'from('
      'select Incluido,'
      'pro_codigo, pro_nombre, '
      'pro_costo, pro_montoitbis, '
      
        'pro_costo * case when pro_montoitbis > 0 then (1+(pro_montoitbis' +
        '/100)) else 1 end Valor,'
      'pro_precio1, pro_beneficio, '
      
        'cast((((case when Incluido = '#39'True'#39' then pro_precio1 else pro_pr' +
        'ecio1/(1+(pro_montoitbis/100)) end)/ case when Valor = 0 then 1 ' +
        'else valor end)-1)*100 as numeric(18,2)) ben1,'
      'pro_precio2, pro_beneficio2,'
      
        'cast((((case when Incluido = '#39'True'#39' then pro_precio2 else pro_pr' +
        'ecio2/(1+(pro_montoitbis/100)) end)/ case when Valor = 0 then 1 ' +
        'else valor end)-1)*100 as numeric(18,2)) ben2,'
      'pro_precio3, pro_beneficio3,'
      
        'cast((((case when Incluido = '#39'True'#39' then pro_precio3 else pro_pr' +
        'ecio3/(1+(pro_montoitbis/100)) end)/ case when Valor = 0 then 1 ' +
        'else valor end)-1)*100 as numeric(18,2)) ben3,'
      'pro_precio4, pro_beneficio4,'
      
        'cast((((case when Incluido = '#39'True'#39' then pro_precio4 else pro_pr' +
        'ecio4/(1+(pro_montoitbis/100)) end)/ case when Valor = 0 then 1 ' +
        'else valor end)-1)*100 as numeric(18,2)) ben4'
      'from('
      'select pr.par_itbisincluido Incluido,'
      'pro_codigo, pro_nombre, '
      'pro_costo, pro_montoitbis, '
      
        'pro_costo * case when pro_montoitbis > 0 then (1+(pro_montoitbis' +
        '/100)) else 1 end Valor,'
      'pro_precio1, pro_beneficio, '
      'pro_precio2, pro_beneficio2,'
      'pro_precio3, pro_beneficio3,'
      'pro_precio4, pro_beneficio4 '
      'from productos p'
      
        'inner join Parametros pr on p.emp_codigo = pr.emp_codigo) as tem' +
        'p) as temp2) as temp3'
      
        'where ((PRO_BENEFICIO<>BEN1) or (pro_beneficio2<>BEN2) or (pro_p' +
        'recio3<>BEN3) or (PRO_BENEFICIO4<>BEN4)) and '
      'pro_costo > 0 AND pro_codigo = @PRO')
    Left = 800
    Top = 368
  end
  object dsSucOrigen: TDataSource
    DataSet = QSucOrigen
    Left = 122
    Top = 571
  end
  object QSucOrigen: TADOQuery
    Connection = DM.ADOSigma
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
      
        'select  s.suc_direccion, s.suc_localidad, s.suc_telefono, s.suc_' +
        'rnc,'
      's.emp_codigo, s.suc_codigo, s.suc_nombre, s.alm_codigo'
      'from'
      'sucursales s, sucursal_acceso a'
      'where'
      's.emp_codigo = a.emp_codigo'
      'and s.suc_codigo = a.suc_codigo'
      'and a.emp_codigo = :emp_codigo'
      'and a.usu_codigo = :usu'
      'order by s.suc_codigo')
    Left = 66
    Top = 571
    object QSucOrigensuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QSucOrigensuc_nombre: TStringField
      FieldName = 'suc_nombre'
      Size = 60
    end
    object QSucOrigenalm_codigo: TIntegerField
      FieldName = 'alm_codigo'
    end
    object QSucOrigenemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QSucOrigensuc_direccion: TStringField
      FieldName = 'suc_direccion'
      Size = 60
    end
    object QSucOrigensuc_localidad: TStringField
      FieldName = 'suc_localidad'
      Size = 60
    end
    object QSucOrigensuc_telefono: TStringField
      FieldName = 'suc_telefono'
      Size = 30
    end
    object QSucOrigensuc_rnc: TStringField
      FieldName = 'suc_rnc'
      Size = 30
    end
  end
  object dsSucDestino: TDataSource
    DataSet = qSucDestino
    Left = 242
    Top = 570
  end
  object qSucDestino: TADOQuery
    Connection = DM.ADOSigma
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
      
        'select  s.suc_direccion, s.suc_localidad, s.suc_telefono, s.suc_' +
        'rnc,'
      's.emp_codigo, s.suc_codigo, s.suc_nombre, s.alm_codigo'
      'from'
      'sucursales s, sucursal_acceso a'
      'where'
      's.emp_codigo = a.emp_codigo'
      'and s.suc_codigo = a.suc_codigo'
      'and a.emp_codigo = :emp_codigo'
      'and a.usu_codigo = :usu'
      'order by s.suc_codigo')
    Left = 186
    Top = 570
    object IntegerField1: TIntegerField
      FieldName = 'suc_codigo'
    end
    object StringField2: TStringField
      FieldName = 'suc_nombre'
      Size = 60
    end
    object IntegerField3: TIntegerField
      FieldName = 'alm_codigo'
    end
    object IntegerField4: TIntegerField
      FieldName = 'emp_codigo'
    end
    object StringField3: TStringField
      FieldName = 'suc_direccion'
      Size = 60
    end
    object StringField4: TStringField
      FieldName = 'suc_localidad'
      Size = 60
    end
    object StringField5: TStringField
      FieldName = 'suc_telefono'
      Size = 30
    end
    object StringField6: TStringField
      FieldName = 'suc_rnc'
      Size = 30
    end
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
    Left = 384
    Top = 344
  end
end
