object frmConsFacProvee: TfrmConsFacProvee
  Left = 367
  Top = 192
  ActiveControl = Fecha1
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta de facturas de proveedores'
  ClientHeight = 555
  ClientWidth = 927
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
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 927
    Height = 153
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label6: TLabel
      Left = 7
      Top = 8
      Width = 29
      Height = 13
      Caption = 'Fecha'
    end
    object Label7: TLabel
      Left = 246
      Top = 8
      Width = 36
      Height = 13
      Caption = 'Usuario'
    end
    object SpeedButton3: TSpeedButton
      Left = 324
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
      OnClick = SpeedButton3Click
    end
    object Label2: TLabel
      Left = 7
      Top = 32
      Width = 50
      Height = 13
      Caption = 'Proveedor'
    end
    object btProveedor: TSpeedButton
      Left = 132
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
      OnClick = btProveedorClick
    end
    object Label3: TLabel
      Left = 455
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Centro'
    end
    object btCentro: TSpeedButton
      Left = 524
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
      OnClick = btCentroClick
    end
    object Label1: TLabel
      Left = 544
      Top = 32
      Width = 49
      Height = 13
      Caption = 'Tipo Prov.'
    end
    object Label4: TLabel
      Left = 360
      Top = 32
      Width = 31
      Height = 13
      Caption = 'Status'
    end
    object Label5: TLabel
      Left = 360
      Top = 56
      Width = 18
      Height = 13
      Caption = '606'
    end
    object Label8: TLabel
      Left = 544
      Top = 56
      Width = 20
      Height = 13
      Caption = 'D'#237'as'
    end
    object Label12: TLabel
      Left = 7
      Top = 80
      Width = 38
      Height = 13
      Caption = 'Moneda'
    end
    object btMoneda: TSpeedButton
      Left = 116
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
      OnClick = btMonedaClick
    end
    object Label13: TLabel
      Left = 360
      Top = 80
      Width = 41
      Height = 13
      Caption = 'Tipo Sup'
    end
    object bttipo: TSpeedButton
      Left = 444
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
      OnClick = bttipoClick
    end
    object Label14: TLabel
      Left = 360
      Top = 109
      Width = 47
      Height = 13
      Caption = 'Tipo Pago'
    end
    object btnTipoPago: TSpeedButton
      Left = 444
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
      OnClick = btnTipoPagoClick
    end
    object Label15: TLabel
      Left = 7
      Top = 104
      Width = 52
      Height = 13
      Caption = 'Tipo Fact.:'
    end
    object lbLocSuc: TLabel
      Left = 10
      Top = 129
      Width = 44
      Height = 13
      Caption = 'Localidad'
    end
    object btLocalidad: TSpeedButton
      Left = 129
      Top = 125
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
      OnClick = btLocalidadClick
    end
    object Fecha1: TDateTimePicker
      Left = 80
      Top = 8
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
      Left = 160
      Top = 8
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
    object tUsuario: TEdit
      Left = 348
      Top = 8
      Width = 101
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
    object edUsuario: TEdit
      Left = 288
      Top = 8
      Width = 33
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
      TabOrder = 2
      OnChange = edUsuarioChange
      OnKeyDown = edUsuarioKeyDown
    end
    object edProveedor: TEdit
      Left = 80
      Top = 32
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
      TabOrder = 4
      OnChange = edProveedorChange
      OnKeyDown = edProveedorKeyDown
    end
    object tProveedor: TEdit
      Left = 157
      Top = 32
      Width = 196
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
    object edCEntro: TEdit
      Left = 496
      Top = 8
      Width = 25
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
      TabOrder = 3
      OnChange = edCEntroChange
      OnKeyDown = edCEntroKeyDown
    end
    object tcentro: TEdit
      Left = 552
      Top = 8
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
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 80
      Top = 56
      Width = 273
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
      TabOrder = 8
      TabStop = False
      OnClick = btRefreshClick
    end
    object cksucursal: TCheckBox
      Left = 7
      Top = 56
      Width = 65
      Height = 17
      Caption = 'Sucursal'
      TabOrder = 9
      OnClick = btRefreshClick
    end
    object cbstatus: TComboBox
      Left = 408
      Top = 32
      Width = 113
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 10
      Text = 'Todas'
      OnChange = btRefreshClick
      Items.Strings = (
        'Todas'
        'Pendientes'
        'Pagadas'
        'Anuladas')
    end
    object rgtipo: TComboBox
      Left = 598
      Top = 32
      Width = 91
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 11
      Text = 'Todos'
      OnChange = btRefreshClick
      Items.Strings = (
        'Todos'
        'Formal'
        'Informal'
        'Servicios'
        'Internacional')
    end
    object cbfiltro: TComboBox
      Left = 408
      Top = 56
      Width = 113
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 12
      Text = 'Todas'
      Items.Strings = (
        'Todas'
        'Sin pasar al 606'
        'Pasadas al 606')
    end
    object eddia1: TEdit
      Left = 576
      Top = 56
      Width = 33
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
      TabOrder = 13
    end
    object eddia2: TEdit
      Left = 616
      Top = 56
      Width = 33
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
      TabOrder = 14
    end
    object edMoneda: TEdit
      Left = 80
      Top = 80
      Width = 33
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      OnChange = edMonedaChange
      OnKeyDown = edMonedaKeyDown
    end
    object tMoneda: TEdit
      Left = 141
      Top = 80
      Width = 212
      Height = 21
      BevelKind = bkFlat
      BiDiMode = bdLeftToRight
      BorderStyle = bsNone
      Color = clInfoBk
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 16
    end
    object tTipo: TEdit
      Left = 469
      Top = 80
      Width = 180
      Height = 21
      BevelKind = bkFlat
      BiDiMode = bdLeftToRight
      BorderStyle = bsNone
      Color = clInfoBk
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 17
    end
    object edTipo: TEdit
      Left = 408
      Top = 80
      Width = 33
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
      OnChange = edTipoChange
      OnKeyDown = edTipoKeyDown
    end
    object edtTipoPago: TEdit
      Left = 408
      Top = 104
      Width = 33
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 19
      OnChange = edTipoChange
      OnKeyDown = edTipoKeyDown
    end
    object edtTipoPagoN: TEdit
      Left = 469
      Top = 104
      Width = 180
      Height = 21
      BevelKind = bkFlat
      BiDiMode = bdLeftToRight
      BorderStyle = bsNone
      Color = clInfoBk
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 20
    end
    object cbbTipoFact: TComboBox
      Left = 78
      Top = 104
      Width = 91
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 21
      Text = 'Todos'
      OnChange = btRefreshClick
      Items.Strings = (
        'Todos'
        'Credito'
        'Contado')
    end
    object edtSucLoc: TEdit
      Left = 77
      Top = 126
      Width = 49
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
      TabOrder = 22
      OnChange = edtSucLocChange
      OnKeyDown = edtSucLocKeyDown
    end
    object TSucLoc: TEdit
      Left = 154
      Top = 126
      Width = 220
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
      TabOrder = 23
    end
    object cbStatusDGII: TRadioGroup
      Left = 695
      Top = 3
      Width = 232
      Height = 75
      ItemIndex = 0
      Items.Strings = (
        'Todas'
        'Aceptada por DGII'
        'Rechazada por DGII'
        'Enviada (no procesada por DGII)')
      TabOrder = 24
      OnClick = cbStatusDGIIClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 514
    Width = 927
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      927
      41)
    object lbCantidad: TLabel
      Left = 8
      Top = 5
      Width = 61
      Height = 13
      Caption = '0 Facturas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbproductos: TLabel
      Left = 104
      Top = 5
      Width = 69
      Height = 13
      Caption = '0 Productos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn2: TBitBtn
      Left = 743
      Top = 8
      Width = 99
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Imprimir listado'
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
      Left = 558
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Refrescar >>'
      TabOrder = 1
      OnClick = btRefreshClick
    end
    object btClose: TBitBtn
      Left = 846
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
    object ckDetalle: TCheckBox
      Left = 8
      Top = 21
      Width = 233
      Height = 17
      Caption = 'Imprimir detalle de las Cuentas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      Left = 638
      Top = 8
      Width = 103
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Imprimir factura'
      TabOrder = 4
      OnClick = BitBtn1Click
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
    object btnEnviarDGII: TBitBtn
      Left = 456
      Top = 9
      Width = 95
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Enviar DGII >>'
      TabOrder = 5
      OnClick = btnEnviarDGIIClick
    end
  end
  object PageControl2: TPageControl
    Left = 0
    Top = 153
    Width = 927
    Height = 361
    ActivePage = TabSheet6
    Align = alClient
    TabOrder = 3
    OnChange = PageControl2Change
    object TabSheet6: TTabSheet
      Caption = 'Facturas de compra'
      object Splitter1: TSplitter
        Left = 0
        Top = 198
        Width = 919
        Height = -3
        Cursor = crVSplit
        Align = alTop
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 919
        Height = 198
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
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
        PopupMenu = PopupMenu1
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'SUP_NOMBRE'
            Title.Caption = 'Nombre del Proveedor'
            Width = 217
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'sup_rnc'
            Title.Alignment = taCenter
            Title.Caption = 'RNC'
            Width = 86
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FAC_NUMERO'
            Title.Alignment = taCenter
            Title.Caption = '#Factura'
            Width = 79
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'eNCF'
            Title.Alignment = taCenter
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tip_nombre'
            Title.Caption = 'Tipo de Bien / Servicio'
            Width = 210
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fac_concepto'
            Title.Caption = 'Concepto'
            Width = 245
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FAC_FECHA'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 68
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FAC_VENCE'
            Title.Alignment = taCenter
            Title.Caption = 'Vence'
            Width = 69
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FAC_STATUS'
            Title.Alignment = taCenter
            Title.Caption = 'Status'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FAC_EXENTO'
            Title.Alignment = taCenter
            Title.Caption = 'Excento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FAC_GRABADO'
            Title.Alignment = taCenter
            Title.Caption = 'Grabado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fac_servicios'
            Title.Caption = 'Servicio'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fac_flete'
            Title.Alignment = taCenter
            Title.Caption = 'Flete'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FAC_DESCUENTO'
            Title.Alignment = taCenter
            Title.Caption = 'Descuento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FAC_ITBIS'
            Title.Alignment = taCenter
            Title.Caption = 'Itbis'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fac_selectivo'
            Title.Alignment = taCenter
            Title.Caption = 'Selectivo Con'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fac_proplegal'
            Title.Caption = 'Propina Legal'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fac_otrosimpuestos'
            Title.Caption = 'Otros Impuestos'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fac_selectivo_ad'
            Title.Alignment = taCenter
            Title.Caption = 'Selectivo Ad'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fac_retencion'
            Title.Alignment = taCenter
            Title.Caption = 'Ret. Itbis'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fac_retencion_isr'
            Title.Alignment = taCenter
            Title.Caption = 'Ret. ISR'
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FAC_TOTAL'
            Title.Alignment = taCenter
            Title.Caption = 'Total'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FAC_ABONO'
            Title.Alignment = taCenter
            Title.Caption = 'Abono'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USU_NOMBRE'
            Title.Caption = 'Usuario'
            Width = 130
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ped_numero'
            Title.Alignment = taCenter
            Title.Caption = '#Orden'
            Width = 52
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ent_numero'
            Title.Alignment = taCenter
            Title.Caption = '#Entrada'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FAC_DIAS'
            Title.Alignment = taCenter
            Title.Caption = 'Dias'
            Width = 32
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'mon_sigla'
            Title.Alignment = taCenter
            Title.Caption = '_'
            Width = 23
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fac_tasa'
            Title.Alignment = taCenter
            Title.Caption = 'Tasa'
            Width = 33
            Visible = True
          end>
      end
      object PageControl1: TPageControl
        Left = 0
        Top = 195
        Width = 919
        Height = 138
        ActivePage = TabSheet4
        Align = alClient
        TabOrder = 1
        object TabSheet2: TTabSheet
          Caption = 'Productos'
          ImageIndex = 1
          object Grid: TDBGrid
            Left = 0
            Top = 0
            Width = 911
            Height = 110
            Align = alClient
            Ctl3D = False
            DataSource = dsProductos
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ParentFont = False
            PopupMenu = PopupMenu2
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'PRO_CODIGO'
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'digo'
                Width = 108
                Visible = True
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'PRO_NOMBRE'
                Title.Caption = 'Nombre del Producto'
                Width = 273
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DET_CANTIDAD'
                Title.Alignment = taCenter
                Title.Caption = 'Cant'
                Width = 37
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'det_oferta'
                Title.Alignment = taCenter
                Title.Caption = 'Oferta'
                Width = 39
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'DET_MEDIDA'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Medida'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'pro_unidad_medida'
                Title.Alignment = taCenter
                Title.Caption = 'Medida'
                Width = 46
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DET_CANTDEVUELTA'
                Title.Alignment = taCenter
                Title.Caption = 'Devuelta'
                Width = 48
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DET_COSTO'
                Title.Alignment = taCenter
                Title.Caption = 'Costo'
                Width = 57
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
                FieldName = 'CalcItbis'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Itbis'
                Width = 52
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'DET_FECHAVENCE'
                Title.Alignment = taCenter
                Title.Caption = 'Vence'
                Width = 54
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Valor'
                ReadOnly = True
                Title.Alignment = taCenter
                Width = 68
                Visible = True
              end>
          end
        end
        object TabSheet1: TTabSheet
          Caption = 'Cuentas contables'
          DesignSize = (
            911
            110)
          object Label9: TLabel
            Left = 750
            Top = 3
            Width = 48
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'Cr'#233'ditos'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 750
            Top = 19
            Width = 43
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'D'#233'bitos'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 750
            Top = 35
            Width = 45
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'Balance'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object GridCuentas: TDBGrid
            Left = 30
            Top = 0
            Width = 713
            Height = 110
            Align = alLeft
            Anchors = [akLeft, akTop, akRight, akBottom]
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
                FieldName = 'CAT_CUENTA'
                Title.Alignment = taCenter
                Title.Caption = 'Cuenta'
                Width = 88
                Visible = True
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'CAT_NOMBRE'
                ReadOnly = True
                Title.Caption = 'Nombre de la Cuenta'
                Width = 246
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'DET_ORIGEN'
                Title.Alignment = taCenter
                Title.Caption = 'Origen'
                Width = 45
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DET_MONTO'
                Title.Alignment = taCenter
                Title.Caption = 'Monto'
                Width = 80
                Visible = True
              end>
          end
          object lbCR: TStaticText
            Left = 806
            Top = 3
            Width = 103
            Height = 17
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            AutoSize = False
            BorderStyle = sbsSunken
            Caption = '0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object lbDB: TStaticText
            Left = 806
            Top = 19
            Width = 103
            Height = 17
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            AutoSize = False
            BorderStyle = sbsSunken
            Caption = '0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object lbBAL: TStaticText
            Left = 806
            Top = 35
            Width = 103
            Height = 17
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            AutoSize = False
            BorderStyle = sbsSunken
            Caption = '0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 30
            Height = 110
            Align = alLeft
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 4
            object btelimina: TSpeedButton
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
              OnClick = bteliminaClick
            end
            object btbuscacta: TSpeedButton
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
              OnClick = btbuscactaClick
            end
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Devoluciones'
          ImageIndex = 2
          object DBGrid2: TDBGrid
            Left = 0
            Top = 0
            Width = 911
            Height = 110
            Align = alClient
            Ctl3D = False
            DataSource = dsDevol
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Alignment = taCenter
                Color = clInfoBk
                Expanded = False
                FieldName = 'DEV_NUMERO'
                Title.Alignment = taCenter
                Title.Caption = '#Devol.'
                Width = 43
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'DEV_FECHA'
                Title.Alignment = taCenter
                Title.Caption = 'Fecha'
                Width = 63
                Visible = True
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'PRO_NOMBRE'
                Title.Caption = 'Nombre del Producto'
                Width = 170
                Visible = True
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'DEV_CANTIDAD'
                Title.Alignment = taCenter
                Title.Caption = 'Cant.'
                Width = 32
                Visible = True
              end
              item
                Alignment = taCenter
                Color = clInfoBk
                Expanded = False
                FieldName = 'DET_MEDIDA'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Medida'
                Width = 39
                Visible = True
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'DEV_COSTO'
                Title.Alignment = taCenter
                Title.Caption = 'Costo'
                Width = 57
                Visible = True
              end
              item
                Alignment = taCenter
                Color = clInfoBk
                Expanded = False
                FieldName = 'DEV_CONITBIS'
                Title.Caption = 'Itbis?'
                Width = 29
                Visible = True
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'PrecioItbis'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Antes Itbis'
                Width = 54
                Visible = True
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'CalcItbis'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Itbis'
                Width = 52
                Visible = True
              end
              item
                Alignment = taCenter
                Color = clInfoBk
                Expanded = False
                FieldName = 'DET_FECHAVENCE'
                Title.Alignment = taCenter
                Title.Caption = 'Vence'
                Width = 54
                Visible = True
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'Valor'
                ReadOnly = True
                Title.Alignment = taCenter
                Width = 68
                Visible = True
              end>
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Pagos realizados'
          ImageIndex = 3
          object DBGrid3: TDBGrid
            Left = 0
            Top = 0
            Width = 911
            Height = 110
            Align = alClient
            Ctl3D = False
            DataSource = dsCheques
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ParentFont = False
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
                FieldName = 'Tipo'
                Title.Alignment = taCenter
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'Numero'
                Title.Alignment = taCenter
                Title.Caption = 'N'#250'mero'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'Fecha'
                Title.Alignment = taCenter
                Width = 77
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Pago'
                Title.Alignment = taCenter
                Title.Caption = 'Monto'
                Width = 119
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Tasa'
                Title.Alignment = taCenter
                Width = 34
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Concepto1'
                Width = 171
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Concepto2'
                Width = 216
                Visible = True
              end>
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Centro de Costo'
          ImageIndex = 4
          object GridCentro: TDBGrid
            Left = 30
            Top = 0
            Width = 881
            Height = 110
            Hint = 'F2 SELECCIONA CENTROS'#13#10'F3 SELECCIONA SUB-CENTROS'
            Align = alClient
            Ctl3D = False
            DataSource = dsCentro
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
            OnColEnter = GridCentroColEnter
            OnEnter = GridCentroEnter
            OnKeyDown = GridCentroKeyDown
            OnKeyPress = GridCentroKeyPress
            Columns = <
              item
                Expanded = False
                FieldName = 'cen_referencia'
                Title.Alignment = taCenter
                Title.Caption = 'Centro'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'sub_referencia'
                Title.Alignment = taCenter
                Title.Caption = 'Sub-Centro'
                Width = 93
                Visible = True
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'cen_nombre'
                ReadOnly = True
                Title.Caption = 'Descripcion Centro de Costo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'det_monto'
                Title.Alignment = taCenter
                Title.Caption = 'Monto'
                Visible = True
              end>
          end
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 30
            Height = 110
            Align = alLeft
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 1
            object SpeedButton1: TSpeedButton
              Left = 4
              Top = 4
              Width = 23
              Height = 22
              Hint = 'Eliminar centro de costo'
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
              OnClick = SpeedButton1Click
            end
            object SpeedButton4: TSpeedButton
              Left = 4
              Top = 26
              Width = 23
              Height = 22
              Hint = 'Buscar centro de costo'
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
              OnClick = SpeedButton4Click
            end
            object btnSubCentro: TSpeedButton
              Left = 4
              Top = 49
              Width = 23
              Height = 22
              Hint = 'Buscar Sub Centro de Costo'
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
              OnClick = btnSubCentroClick
            end
          end
        end
      end
      object Memo2: TMemo
        Left = 16
        Top = 32
        Width = 497
        Height = 49
        Lines.Strings = (
          'Memo2')
        TabOrder = 2
        Visible = False
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Productos comprados'
      ImageIndex = 1
      object DBGrid4: TDBGrid
        Left = 0
        Top = 0
        Width = 919
        Height = 398
        Align = alClient
        Ctl3D = False
        DataSource = dsProdctosComprados
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'PRO_NOMBRE'
            Title.Caption = 'Nombre del Producto'
            Width = 362
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cantidad'
            Title.Alignment = taCenter
            Title.Caption = 'Cant.'
            Width = 44
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DET_MEDIDA'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Medida'
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UnidadMedida'
            Title.Alignment = taCenter
            Title.Caption = 'Medida'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'costo'
            Title.Alignment = taCenter
            Title.Caption = 'Costo'
            Width = 61
            Visible = True
          end>
      end
    end
  end
  object Memo1: TMemo
    Left = 56
    Top = 304
    Width = 217
    Height = 41
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
    Visible = False
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 536
    Top = 176
  end
  object QFacturas: TADOQuery
    Connection = DM.ADOSigma
    AfterOpen = QFacturasAfterOpen
    AfterScroll = QFacturasAfterScroll
    OnCalcFields = QFacturasCalcFields
    CommandTimeout = 0
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'fecha1'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'fecha2'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'par_invempresa'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select '
      
        'distinct f.ALM_CODIGO, f.EMP_CODIGO, f.FAC_ABONO, f.FAC_DESCUENT' +
        'O, '
      'f.FAC_DIAS, f.FAC_EXENTO, f.FAC_FECHA, f.FAC_GRABADO,'
      'f.FAC_NUMERO, f.FAC_STATUS, f.FAC_TOTAL, f.FAC_VENCE, '
      
        'f.SUP_CODIGO, s.sup_nombre, u.usu_nombre, f.USU_CODIGO, f.FAC_IT' +
        'BIS,'
      
        'f.fac_flete, f.fac_selectivo, s.sup_rnc, f.NCF, f.ncf_fijo, f.nc' +
        'f_secuencia,'
      'f.fac_selectivo_ad, f.fac_tasa, m.mon_sigla, f.fac_retencion,'
      'f.ped_numero, f.ent_numero, t.tip_nombre, f.fac_concepto,'
      
        'f.fac_retencion_isr, f.fac_servicios, fac_otrosimpuestos, fac_pr' +
        'oplegal, f.suc_codigo,'
      ' CASE '
      '        WHEN prov.sup_tipo = '#39'I'#39' '
      '            THEN f.eNCF'
      '        ELSE '
      '          f.NCF'
      
        '    END AS eNCF , f.Enviado_DGII, f.Error_DGII, e.emp_rnc, 41 AS' +
        ' cod_dgii, f.AceptadoDGII,prov.sup_tipo'
      'from'
      
        'provfacturas f inner join Proveedores prov on prov.sup_codigo=f.' +
        'sup_codigo and prov.emp_codigo=f.emp_codigo'
      'left outer join Tipo_Bienes_Servicios t on'
      '(f.tip_codigo = t.tip_codigo)'
      'left outer join moneda m on'
      '(f.emp_codigo = m.emp_codigo'
      'and f.mon_codigo = m.mon_codigo)'
      'left outer join ProvFacturasCentros c on'
      '(f.emp_codigo = c.emp_codigo'
      'and f.sup_codigo = c.sup_codigo'
      
        'and f.fac_numero = c.fac_numero), proveedores s, usuarios u, Emp' +
        'resas e'
      'where'
      'f.sup_codigo = s.sup_codigo'
      'and f.emp_codigo = s.emp_codigo'
      'and f.usu_codigo = u.usu_codigo'
      'and f.emp_codigo=e.emp_codigo'
      ''
      
        'and f.fac_fecha between convert(datetime,:fecha1,105) and conver' +
        't(datetime,:fecha2,105)'
      'AND F.EMP_CODIGO = :par_invempresa')
    Left = 248
    Top = 144
    object QFacturasALM_CODIGO: TIntegerField
      FieldName = 'ALM_CODIGO'
      Origin = 'PROVFACTURAS.ALM_CODIGO'
    end
    object QFacturasEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'PROVFACTURAS.EMP_CODIGO'
      Required = True
    end
    object QFacturasFAC_ABONO: TFloatField
      FieldName = 'FAC_ABONO'
      Origin = 'PROVFACTURAS.FAC_ABONO'
      currency = True
    end
    object QFacturasFAC_DESCUENTO: TFloatField
      FieldName = 'FAC_DESCUENTO'
      Origin = 'PROVFACTURAS.FAC_DESCUENTO'
      currency = True
    end
    object QFacturasFAC_DIAS: TIntegerField
      FieldName = 'FAC_DIAS'
      Origin = 'PROVFACTURAS.FAC_DIAS'
    end
    object QFacturasFAC_EXENTO: TFloatField
      FieldName = 'FAC_EXENTO'
      Origin = 'PROVFACTURAS.FAC_EXENTO'
      currency = True
    end
    object QFacturasFAC_FECHA: TDateTimeField
      FieldName = 'FAC_FECHA'
      Origin = 'PROVFACTURAS.FAC_FECHA'
    end
    object QFacturasFAC_GRABADO: TFloatField
      FieldName = 'FAC_GRABADO'
      Origin = 'PROVFACTURAS.FAC_GRABADO'
      currency = True
    end
    object QFacturasFAC_NUMERO: TIBStringField
      FieldName = 'FAC_NUMERO'
      Origin = 'PROVFACTURAS.FAC_NUMERO'
      Required = True
      Size = 15
    end
    object QFacturasFAC_STATUS: TIBStringField
      FieldName = 'FAC_STATUS'
      Origin = 'PROVFACTURAS.FAC_STATUS'
      Size = 3
    end
    object QFacturasFAC_TOTAL: TFloatField
      FieldName = 'FAC_TOTAL'
      Origin = 'PROVFACTURAS.FAC_TOTAL'
      currency = True
    end
    object QFacturasFAC_VENCE: TDateTimeField
      FieldName = 'FAC_VENCE'
      Origin = 'PROVFACTURAS.FAC_VENCE'
    end
    object QFacturasSUP_CODIGO: TIntegerField
      FieldName = 'SUP_CODIGO'
      Origin = 'PROVFACTURAS.SUP_CODIGO'
      Required = True
    end
    object QFacturasSUP_NOMBRE: TIBStringField
      FieldName = 'SUP_NOMBRE'
      Origin = 'PROVEEDORES.SUP_NOMBRE'
      Size = 60
    end
    object QFacturasUSU_NOMBRE: TIBStringField
      FieldName = 'USU_NOMBRE'
      Origin = 'USUARIOS.USU_NOMBRE'
      Size = 60
    end
    object QFacturasUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Origin = 'USUARIOS.USU_CODIGO'
      Required = True
    end
    object QFacturasFAC_ITBIS: TFloatField
      FieldName = 'FAC_ITBIS'
      Origin = 'PROVFACTURAS.FAC_ITBIS'
      currency = True
    end
    object QFacturasfac_flete: TBCDField
      FieldName = 'fac_flete'
      currency = True
      Precision = 15
      Size = 2
    end
    object QFacturasfac_selectivo: TBCDField
      FieldName = 'fac_selectivo'
      currency = True
      Precision = 15
      Size = 2
    end
    object QFacturassup_rnc: TStringField
      FieldName = 'sup_rnc'
      Size = 30
    end
    object QFacturasNCF: TStringField
      FieldName = 'NCF'
      Size = 30
    end
    object QFacturasncf_fijo: TStringField
      FieldName = 'ncf_fijo'
      Size = 11
    end
    object QFacturasncf_secuencia: TBCDField
      FieldName = 'ncf_secuencia'
      Precision = 18
      Size = 0
    end
    object QFacturasNumeroCF: TStringField
      FieldKind = fkCalculated
      FieldName = 'NumeroCF'
      Size = 19
      Calculated = True
    end
    object QFacturasfac_selectivo_ad: TBCDField
      FieldName = 'fac_selectivo_ad'
      currency = True
      Precision = 15
      Size = 2
    end
    object QFacturasfac_tasa: TBCDField
      FieldName = 'fac_tasa'
      currency = True
      Precision = 15
      Size = 2
    end
    object QFacturasmon_sigla: TStringField
      FieldName = 'mon_sigla'
      Size = 5
    end
    object QFacturasfac_retencion: TBCDField
      FieldName = 'fac_retencion'
      currency = True
      Precision = 15
      Size = 2
    end
    object QFacturasped_numero: TIntegerField
      FieldName = 'ped_numero'
      DisplayFormat = '000000'
    end
    object QFacturasent_numero: TIntegerField
      FieldName = 'ent_numero'
    end
    object QFacturastip_nombre: TStringField
      FieldName = 'tip_nombre'
      Size = 100
    end
    object QFacturasfac_concepto: TStringField
      FieldName = 'fac_concepto'
      Size = 60
    end
    object QFacturasfac_retencion_isr: TBCDField
      FieldName = 'fac_retencion_isr'
      Precision = 18
      Size = 2
    end
    object QFacturasfac_otrosimpuestos: TCurrencyField
      FieldName = 'fac_otrosimpuestos'
    end
    object QFacturasfac_proplegal: TCurrencyField
      FieldName = 'fac_proplegal'
    end
    object QFacturasfac_servicios: TCurrencyField
      FieldName = 'fac_servicios'
    end
    object QFacturasSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QFacturaseNCF: TStringField
      FieldName = 'eNCF'
    end
    object QFacturasEnviado_DGII: TBooleanField
      FieldName = 'Enviado_DGII'
    end
    object QFacturasError_DGII: TBooleanField
      FieldName = 'Error_DGII'
    end
    object QFacturasemp_rnc: TStringField
      FieldName = 'emp_rnc'
    end
    object QFacturascod_dgii: TIntegerField
      FieldName = 'cod_dgii'
    end
    object QFacturasAceptadoDGII: TBooleanField
      FieldName = 'AceptadoDGII'
    end
    object QFacturassup_tipo: TStringField
      FieldName = 'sup_tipo'
    end
  end
  object dsFacturas: TDataSource
    DataSet = QFacturas
    Left = 272
    Top = 144
  end
  object QProductos: TADOQuery
    Connection = DM.ADOSigma
    OnCalcFields = QProductosCalcFields
    CommandTimeout = 0
    DataSource = dsFacturas
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
        Name = 'sup_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'fac_numero'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      'select '
      'DET_CANTIDAD, DET_CONITBIS, DET_ITBIS, DET_SECUENCIA, '
      'EMP_CODIGO, FAC_NUMERO, PRO_CODIGO, PRO_NOMBRE, '
      'PRO_RFABRIC, PRO_RORIGINAL, SUP_CODIGO, DET_COSTO, '
      'DET_FECHAVENCE, DET_LOTE, DET_VENCE, DET_MEDIDA,'
      'DET_CANTDEVUELTA, det_oferta, det_costound, det_costoemp,'
      'pro_unidad_medida, UnidadID, Medida_Precio1, Medida_Precio2,'
      'Medida_Precio3, Medida_Precio4, det_cant_unidad_medida'
      'From '
      'DET_PROVFACTURAS'
      'where '
      'emp_codigo = :emp_codigo'
      'and sup_codigo = :sup_codigo'
      'and fac_numero = :fac_numero'
      'order by'
      'det_secuencia')
    Left = 240
    Top = 176
    object QProductosDET_CANTIDAD: TFloatField
      FieldName = 'DET_CANTIDAD'
      Origin = 'DET_PROVFACTURAS.DET_CANTIDAD'
    end
    object QProductosDET_CONITBIS: TIBStringField
      FieldName = 'DET_CONITBIS'
      Origin = 'DET_PROVFACTURAS.DET_CONITBIS'
      Size = 1
    end
    object QProductosDET_ITBIS: TFloatField
      FieldName = 'DET_ITBIS'
      Origin = 'DET_PROVFACTURAS.DET_ITBIS'
    end
    object QProductosDET_SECUENCIA: TIntegerField
      FieldName = 'DET_SECUENCIA'
      Origin = 'DET_PROVFACTURAS.DET_SECUENCIA'
      DisplayFormat = '00'
    end
    object QProductosEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'DET_PROVFACTURAS.EMP_CODIGO'
    end
    object QProductosFAC_NUMERO: TIBStringField
      FieldName = 'FAC_NUMERO'
      Origin = 'DET_PROVFACTURAS.FAC_NUMERO'
      Size = 15
    end
    object QProductosPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'DET_PROVFACTURAS.PRO_CODIGO'
    end
    object QProductosPRO_NOMBRE: TIBStringField
      FieldName = 'PRO_NOMBRE'
      Origin = 'DET_PROVFACTURAS.PRO_NOMBRE'
      Size = 60
    end
    object QProductosPRO_RFABRIC: TIBStringField
      FieldName = 'PRO_RFABRIC'
      Origin = 'DET_PROVFACTURAS.PRO_RFABRIC'
      Size = 60
    end
    object QProductosPRO_RORIGINAL: TIBStringField
      FieldName = 'PRO_RORIGINAL'
      Origin = 'DET_PROVFACTURAS.PRO_RORIGINAL'
      Size = 50
    end
    object QProductosSUP_CODIGO: TIntegerField
      FieldName = 'SUP_CODIGO'
      Origin = 'DET_PROVFACTURAS.SUP_CODIGO'
    end
    object QProductosDET_COSTO: TFloatField
      FieldName = 'DET_COSTO'
      Origin = 'DET_PROVFACTURAS.DET_COSTO'
      currency = True
    end
    object QProductosDET_FECHAVENCE: TDateTimeField
      FieldName = 'DET_FECHAVENCE'
      Origin = 'DET_PROVFACTURAS.DET_FECHAVENCE'
      EditMask = 'cc-cc-cccc'
    end
    object QProductosDET_LOTE: TIntegerField
      FieldName = 'DET_LOTE'
      Origin = 'DET_PROVFACTURAS.DET_LOTE'
    end
    object QProductosValor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor'
      currency = True
      Calculated = True
    end
    object QProductosPrecioItbis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PrecioItbis'
      Calculated = True
    end
    object QProductosCalcItbis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcItbis'
      currency = True
      Calculated = True
    end
    object QProductosCalcDesc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcDesc'
      Calculated = True
    end
    object QProductosDET_VENCE: TIBStringField
      FieldName = 'DET_VENCE'
      Origin = 'DET_PROVFACTURAS.DET_VENCE'
      Size = 5
    end
    object QProductosDET_MEDIDA: TIBStringField
      FieldName = 'DET_MEDIDA'
      Origin = 'DET_PROVFACTURAS.DET_MEDIDA'
      Size = 3
    end
    object QProductosDET_CANTDEVUELTA: TFloatField
      FieldName = 'DET_CANTDEVUELTA'
      Origin = 'DET_PROVFACTURAS.DET_CANTDEVUELTA'
    end
    object QProductosdet_oferta: TBCDField
      FieldName = 'det_oferta'
      Precision = 15
      Size = 2
    end
    object QProductosdet_costound: TBCDField
      FieldName = 'det_costound'
      Precision = 15
    end
    object QProductosdet_costoemp: TBCDField
      FieldName = 'det_costoemp'
      Precision = 15
    end
    object QProductosPrecioItbisEmp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PrecioItbisEmp'
      currency = True
      Calculated = True
    end
    object QProductosCalcItbisEmp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcItbisEmp'
      currency = True
      Calculated = True
    end
    object QProductosValorEmp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ValorEmp'
      currency = True
      Calculated = True
    end
    object QProductosCalcDescEmp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcDescEmp'
      currency = True
      Calculated = True
    end
    object QProductospro_unidad_medida: TStringField
      FieldName = 'pro_unidad_medida'
    end
    object QProductosUnidadID: TStringField
      FieldName = 'UnidadID'
      Size = 1
    end
    object QProductosMedida_Precio1: TBCDField
      FieldName = 'Medida_Precio1'
      Precision = 18
      Size = 2
    end
    object QProductosMedida_Precio2: TBCDField
      FieldName = 'Medida_Precio2'
      Precision = 18
      Size = 2
    end
    object QProductosMedida_Precio3: TBCDField
      FieldName = 'Medida_Precio3'
      Precision = 18
      Size = 2
    end
    object QProductosMedida_Precio4: TBCDField
      FieldName = 'Medida_Precio4'
      Precision = 18
      Size = 2
    end
    object QProductosUnidadMedida: TStringField
      FieldKind = fkLookup
      FieldName = 'UnidadMedida'
      LookupDataSet = QMedidas
      LookupKeyFields = 'UnidadID'
      LookupResultField = 'Nombre'
      KeyFields = 'UnidadID'
      Lookup = True
    end
    object QProductosdet_cant_unidad_medida: TBCDField
      FieldName = 'det_cant_unidad_medida'
      Precision = 18
      Size = 2
    end
  end
  object dsProductos: TDataSource
    DataSet = QProductos
    Left = 272
    Top = 176
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    AfterInsert = QDetalleAfterInsert
    AfterEdit = QDetalleAfterEdit
    BeforePost = QDetalleBeforePost
    AfterPost = QDetalleAfterPost
    BeforeDelete = QDetalleBeforeDelete
    AfterDelete = QDetalleAfterDelete
    OnNewRecord = QDetalleNewRecord
    CommandTimeout = 0
    DataSource = dsFacturas
    Parameters = <
      item
        Name = 'EMP_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'SUP_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'FAC_NUMERO'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'CAT_CUENTA, CAT_NOMBRE, DET_MONTO, DET_ORIGEN, '
      'DET_SECUENCIA, EMP_CODIGO, FAC_NUMERO, SUP_CODIGO'
      'FROM'
      'CONTDET_PROVFACTURAS'
      'WHERE'
      'EMP_CODIGO = :EMP_CODIGO'
      'AND SUP_CODIGO = :SUP_CODIGO'
      'AND FAC_NUMERO = :FAC_NUMERO'
      'ORDER BY'
      'DET_SECUENCIA')
    Left = 240
    Top = 208
    object QDetalleCAT_CUENTA: TIBStringField
      FieldName = 'CAT_CUENTA'
      Origin = 'CONTDET_PROVFACTURAS.CAT_CUENTA'
      OnChange = QDetalleCAT_CUENTAChange
      Size = 15
    end
    object QDetalleCAT_NOMBRE: TIBStringField
      FieldName = 'CAT_NOMBRE'
      Origin = 'CONTDET_PROVFACTURAS.CAT_NOMBRE'
      Size = 60
    end
    object QDetalleDET_MONTO: TFloatField
      FieldName = 'DET_MONTO'
      Origin = 'CONTDET_PROVFACTURAS.DET_MONTO'
      currency = True
    end
    object QDetalleDET_ORIGEN: TIBStringField
      FieldName = 'DET_ORIGEN'
      Origin = 'CONTDET_PROVFACTURAS.DET_ORIGEN'
      Size = 7
    end
    object QDetalleDET_SECUENCIA: TIntegerField
      FieldName = 'DET_SECUENCIA'
      Origin = 'CONTDET_PROVFACTURAS.DET_SECUENCIA'
    end
    object QDetalleEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'CONTDET_PROVFACTURAS.EMP_CODIGO'
    end
    object QDetalleFAC_NUMERO: TIBStringField
      FieldName = 'FAC_NUMERO'
      Origin = 'CONTDET_PROVFACTURAS.FAC_NUMERO'
      Size = 15
    end
    object QDetalleSUP_CODIGO: TIntegerField
      FieldName = 'SUP_CODIGO'
      Origin = 'CONTDET_PROVFACTURAS.SUP_CODIGO'
    end
  end
  object dsDetalle: TDataSource
    DataSet = QDetalle
    Left = 272
    Top = 208
  end
  object QDevol: TADOQuery
    Connection = DM.ADOSigma
    OnCalcFields = QDevolCalcFields
    CommandTimeout = 0
    DataSource = dsFacturas
    Parameters = <
      item
        Name = 'EMP_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'SUP_CODIGO'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'FAC_NUMERO'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'D.DEP_CODIGO, D.DET_COSTOEMP, D.DET_COSTOITBIS,'
      'D.DET_COSTOUND, D.DET_FECHAVENCE, D.DET_MEDIDA,'
      'D.DET_SECUENCIA, D.DEV_CANTFACTURADA, D.DEV_CANTIDAD,'
      'D.DEV_CONITBIS, D.DEV_COSTO, D.DEV_ITBIS, D.DEV_NUMERO,'
      'D.DEV_TOPECANTIDAD, D.EMP_CODIGO, D.FAM_CODIGO, '
      'D.MAR_CODIGO, D.PRO_CODIGO, D.PRO_NOMBRE, '
      'D.PRO_RFABRIC, D.PRO_RORIGINAL, D.PRO_SERVICIO,'
      'V.DEV_FECHA'
      'FROM '
      'DET_DEVOLUCIONCOMPRA D, DEVOLUCIONCOMPRA V'
      'WHERE '
      'D.EMP_CODIGO = V.EMP_CODIGO'
      'AND V.DEV_NUMERO = D.DEV_NUMERO'
      'AND D.EMP_CODIGO = :EMP_CODIGO'
      'AND V.SUP_CODIGO = :SUP_CODIGO'
      'AND V.FAC_NUMERO = :FAC_NUMERO'
      'ORDER BY'
      'V.DEV_FECHA, D.DET_SECUENCIA')
    Left = 368
    Top = 144
    object QDevolDEP_CODIGO: TIntegerField
      FieldName = 'DEP_CODIGO'
      Origin = 'DET_DEVOLUCIONCOMPRA.DEP_CODIGO'
    end
    object QDevolDET_COSTOEMP: TFloatField
      FieldName = 'DET_COSTOEMP'
      Origin = 'DET_DEVOLUCIONCOMPRA.DET_COSTOEMP'
      currency = True
    end
    object QDevolDET_COSTOITBIS: TFloatField
      FieldName = 'DET_COSTOITBIS'
      Origin = 'DET_DEVOLUCIONCOMPRA.DET_COSTOITBIS'
      currency = True
    end
    object QDevolDET_COSTOUND: TFloatField
      FieldName = 'DET_COSTOUND'
      Origin = 'DET_DEVOLUCIONCOMPRA.DET_COSTOUND'
      currency = True
    end
    object QDevolDET_FECHAVENCE: TDateTimeField
      FieldName = 'DET_FECHAVENCE'
      Origin = 'DET_DEVOLUCIONCOMPRA.DET_FECHAVENCE'
    end
    object QDevolDET_MEDIDA: TIBStringField
      FieldName = 'DET_MEDIDA'
      Origin = 'DET_DEVOLUCIONCOMPRA.DET_MEDIDA'
      Size = 3
    end
    object QDevolDET_SECUENCIA: TIntegerField
      FieldName = 'DET_SECUENCIA'
      Origin = 'DET_DEVOLUCIONCOMPRA.DET_SECUENCIA'
      Required = True
    end
    object QDevolDEV_CANTFACTURADA: TFloatField
      FieldName = 'DEV_CANTFACTURADA'
      Origin = 'DET_DEVOLUCIONCOMPRA.DEV_CANTFACTURADA'
    end
    object QDevolValor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor'
      currency = True
      Calculated = True
    end
    object QDevolPrecioItbis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PrecioItbis'
      currency = True
      Calculated = True
    end
    object QDevolCalcItbis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcItbis'
      currency = True
      Calculated = True
    end
    object QDevolCalcDesc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcDesc'
      Calculated = True
    end
    object QDevolDEV_CANTIDAD: TFloatField
      FieldName = 'DEV_CANTIDAD'
      Origin = 'DET_DEVOLUCIONCOMPRA.DEV_CANTIDAD'
    end
    object QDevolDEV_CONITBIS: TIBStringField
      FieldName = 'DEV_CONITBIS'
      Origin = 'DET_DEVOLUCIONCOMPRA.DEV_CONITBIS'
      Size = 1
    end
    object QDevolDEV_COSTO: TFloatField
      FieldName = 'DEV_COSTO'
      Origin = 'DET_DEVOLUCIONCOMPRA.DEV_COSTO'
      currency = True
    end
    object QDevolDEV_ITBIS: TFloatField
      FieldName = 'DEV_ITBIS'
      Origin = 'DET_DEVOLUCIONCOMPRA.DEV_ITBIS'
      currency = True
    end
    object QDevolDEV_NUMERO: TIntegerField
      FieldName = 'DEV_NUMERO'
      Origin = 'DET_DEVOLUCIONCOMPRA.DEV_NUMERO'
      Required = True
      DisplayFormat = '00000'
    end
    object QDevolDEV_TOPECANTIDAD: TFloatField
      FieldName = 'DEV_TOPECANTIDAD'
      Origin = 'DET_DEVOLUCIONCOMPRA.DEV_TOPECANTIDAD'
    end
    object QDevolEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'DET_DEVOLUCIONCOMPRA.EMP_CODIGO'
      Required = True
    end
    object QDevolFAM_CODIGO: TIntegerField
      FieldName = 'FAM_CODIGO'
      Origin = 'DET_DEVOLUCIONCOMPRA.FAM_CODIGO'
    end
    object QDevolMAR_CODIGO: TIntegerField
      FieldName = 'MAR_CODIGO'
      Origin = 'DET_DEVOLUCIONCOMPRA.MAR_CODIGO'
    end
    object QDevolPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'DET_DEVOLUCIONCOMPRA.PRO_CODIGO'
    end
    object QDevolPRO_NOMBRE: TIBStringField
      FieldName = 'PRO_NOMBRE'
      Origin = 'DET_DEVOLUCIONCOMPRA.PRO_NOMBRE'
      Size = 60
    end
    object QDevolPRO_RFABRIC: TIBStringField
      FieldName = 'PRO_RFABRIC'
      Origin = 'DET_DEVOLUCIONCOMPRA.PRO_RFABRIC'
      Size = 60
    end
    object QDevolPRO_RORIGINAL: TIBStringField
      FieldName = 'PRO_RORIGINAL'
      Origin = 'DET_DEVOLUCIONCOMPRA.PRO_RORIGINAL'
      Size = 50
    end
    object QDevolPRO_SERVICIO: TIBStringField
      FieldName = 'PRO_SERVICIO'
      Origin = 'DET_DEVOLUCIONCOMPRA.PRO_SERVICIO'
      Size = 5
    end
    object QDevolDEV_FECHA: TDateTimeField
      FieldName = 'DEV_FECHA'
      Origin = 'DEVOLUCIONCOMPRA.DEV_FECHA'
    end
  end
  object dsDevol: TDataSource
    DataSet = QDevol
    Left = 400
    Top = 144
  end
  object QCheques: TADOQuery
    Connection = DM.ADOSigma
    Filtered = True
    CommandTimeout = 0
    DataSource = dsFacturas
    Parameters = <
      item
        Name = 'emp_codigo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'suc_codigo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'sup_codigo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'fac_numero'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from contpr_detalle_pago_cxp (:emp_codigo, :suc_codigo,' +
        ' :sup_codigo, :fac_numero, dateadd(year,20,GETDATE()))'
      'order by Tipo, Fecha')
    Left = 368
    Top = 176
    object QChequesDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 100
    end
    object QChequesNumero: TIntegerField
      FieldName = 'Numero'
    end
    object QChequesFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object QChequesPago: TBCDField
      FieldName = 'Pago'
      currency = True
      Precision = 18
      Size = 2
    end
    object QChequesTipo: TStringField
      FieldName = 'Tipo'
      Size = 3
    end
    object QChequesConcepto1: TStringField
      FieldName = 'Concepto1'
      Size = 100
    end
    object QChequesConcepto2: TStringField
      FieldName = 'Concepto2'
      Size = 100
    end
    object QChequesTasa: TBCDField
      FieldName = 'Tasa'
      currency = True
      Precision = 10
      Size = 2
    end
  end
  object dsCheques: TDataSource
    DataSet = QCheques
    Left = 400
    Top = 176
  end
  object QCentro: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QCentroBeforePost
    AfterPost = QCentroAfterPost
    AfterDelete = QCentroAfterDelete
    OnNewRecord = QCentroNewRecord
    CommandTimeout = 0
    DataSource = dsFacturas
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
        Name = 'sup_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'fac_numero'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      'select'
      
        'emp_codigo,sup_codigo,fac_numero,cen_codigo,det_secuencia,cen_no' +
        'mbre,'
      'det_monto, cen_referencia, sub_referencia,'
      'sub_secuencia'
      'from'
      'ProvFacturasCentros'
      'where'
      'emp_codigo = :emp_codigo'
      'and sup_codigo = :sup_codigo'
      'and fac_numero = :fac_numero'
      'order by det_secuencia')
    Left = 368
    Top = 208
    object QCentrocen_codigo: TIntegerField
      FieldName = 'cen_codigo'
    end
    object QCentrocen_nombre: TStringField
      FieldName = 'cen_nombre'
      Size = 60
    end
    object QCentrodet_monto: TBCDField
      FieldName = 'det_monto'
      currency = True
      Precision = 15
      Size = 2
    end
    object QCentrodet_secuencia: TIntegerField
      FieldName = 'det_secuencia'
    end
    object QCentroemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QCentrosup_codigo: TIntegerField
      FieldName = 'sup_codigo'
    end
    object QCentrofac_numero: TStringField
      FieldName = 'fac_numero'
      Size = 15
    end
    object QCentrosub_referencia: TStringField
      FieldName = 'sub_referencia'
      OnChange = QCentrosub_referenciaChange
      Size = 5
    end
    object QCentrocen_referencia: TStringField
      FieldName = 'cen_referencia'
      OnChange = QCentrocen_referenciaChange
      Size = 10
    end
    object QCentrosub_secuencia: TIntegerField
      FieldName = 'sub_secuencia'
    end
  end
  object dsCentro: TDataSource
    DataSet = QCentro
    Left = 400
    Top = 208
  end
  object QSucursal: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltReadOnly
    CommandTimeout = 0
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
    Left = 368
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
    Left = 400
    Top = 240
  end
  object QProductosComprados: TADOQuery
    Connection = DM.ADOSigma
    CommandTimeout = 0
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'fecha1'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'fecha2'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'EMP_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'd.PRO_CODIGO, d.PRO_NOMBRE,'
      'd.PRO_RFABRIC, d.PRO_RORIGINAL,'
      'd.DET_MEDIDA, d.UnidadID,'
      'sum(d.DET_CANTIDAD+isnull(d.det_oferta,0)) as cantidad,'
      'sum(d.DET_COSTO) as costo'
      'From'
      'DET_PROVFACTURAS d, provfacturas f'
      'left outer join ProvFacturasCentros c on'
      '(f.emp_codigo = c.emp_codigo'
      'and f.sup_codigo = c.sup_codigo'
      'and f.fac_numero = c.fac_numero), proveedores s, usuarios u'
      'where'
      'd.emp_codigo = f.emp_codigo'
      'and d.sup_codigo = f.sup_codigo'
      'and d.fac_numero = f.fac_numero'
      'and f.emp_codigo = s.emp_Codigo'
      'and f.sup_codigo = s.sup_codigo'
      'and f.usu_codigo = u.usu_codigo'
      
        'and f.fac_fecha between convert(datetime,:fecha1,105) and conver' +
        't(datetime,:fecha2,105)'
      'AND F.EMP_CODIGO = :EMP_CODIGO'
      'AND (D.PRO_NOMBRE is not null or D.PRO_NOMBRE <> '#39#39')')
    Left = 240
    Top = 240
    object QProductosCompradosUnidadMedida: TStringField
      FieldKind = fkLookup
      FieldName = 'UnidadMedida'
      LookupDataSet = QMedidas
      LookupKeyFields = 'UnidadID'
      LookupResultField = 'Nombre'
      KeyFields = 'UnidadID'
      Lookup = True
    end
    object QProductosCompradosPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
    end
    object QProductosCompradosPRO_NOMBRE: TStringField
      FieldName = 'PRO_NOMBRE'
      Size = 80
    end
    object QProductosCompradosPRO_RFABRIC: TStringField
      FieldName = 'PRO_RFABRIC'
      Size = 60
    end
    object QProductosCompradosPRO_RORIGINAL: TStringField
      FieldName = 'PRO_RORIGINAL'
      Size = 50
    end
    object QProductosCompradosDET_MEDIDA: TStringField
      FieldName = 'DET_MEDIDA'
      Size = 3
    end
    object QProductosCompradoscantidad: TBCDField
      FieldName = 'cantidad'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
    object QProductosCompradoscosto: TBCDField
      FieldName = 'costo'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
    object QProductosCompradosUnidadID: TStringField
      FieldName = 'UnidadID'
      Size = 1
    end
  end
  object dsProdctosComprados: TDataSource
    DataSet = QProductosComprados
    Left = 272
    Top = 240
  end
  object PopupMenu1: TPopupMenu
    Left = 200
    Top = 144
    object InformacionDGII1: TMenuItem
      Caption = 'Informacion DGII'
      OnClick = InformacionDGII1Click
    end
    object CambiarTasa1: TMenuItem
      Caption = 'Cambiar Tasa'
      OnClick = CambiarTasa1Click
    end
    object CambiarMoneda1: TMenuItem
      Caption = 'Cambiar Moneda'
      OnClick = CambiarMoneda1Click
    end
    object CambiarNCF1: TMenuItem
      Caption = 'Cambiar NCF'
      OnClick = CambiarNCF1Click
    end
    object CambiarTipodeBienyServicio1: TMenuItem
      Caption = 'Cambiar Tipo de Bien y Servicio'
      OnClick = CambiarTipodeBienyServicio1Click
    end
    object CambiarEmpresa1: TMenuItem
      Caption = 'Cambiar Empresa'
      OnClick = CambiarEmpresa1Click
    end
    object CambiarLocalidad1: TMenuItem
      Caption = 'Cambiar Localidad'
      OnClick = CambiarLocalidad1Click
    end
  end
  object QMedidas: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    CommandTimeout = 0
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
      'UnidadID, Nombre'
      'from'
      'UnidadMedida'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'Nombre')
    Left = 536
    Top = 136
    object QMedidasUnidadID: TStringField
      FieldName = 'UnidadID'
      Size = 1
    end
    object QMedidasNombre: TStringField
      FieldName = 'Nombre'
    end
  end
  object dsMedida: TDataSource
    DataSet = QMedidas
    Left = 568
    Top = 136
  end
  object PopupMenu2: TPopupMenu
    Left = 200
    Top = 176
    object Pantalladeproductos1: TMenuItem
      Caption = 'Pantalla de productos'
      OnClick = Pantalladeproductos1Click
    end
    object Pantalladeajuste1: TMenuItem
      Caption = 'Pantalla de ajuste de inventario'
      OnClick = Pantalladeajuste1Click
    end
  end
end
