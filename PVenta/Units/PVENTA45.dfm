object frmFacProvee: TfrmFacProvee
  Left = 396
  Top = 13
  ActiveControl = edProveedor
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Factura de Proveedores'
  ClientHeight = 548
  ClientWidth = 791
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 791
    Height = 211
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
    object Label2: TLabel
      Left = 8
      Top = 4
      Width = 50
      Height = 13
      Caption = 'Proveedor'
    end
    object btProveedor: TSpeedButton
      Left = 112
      Top = 4
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
      Left = 8
      Top = 48
      Width = 29
      Height = 13
      Caption = 'Fecha'
    end
    object Label1: TLabel
      Left = 445
      Top = 5
      Width = 20
      Height = 13
      Caption = 'Dias'
      FocusControl = DBEdit1
    end
    object Label5: TLabel
      Left = 445
      Top = 28
      Width = 34
      Height = 13
      Caption = 'Exento'
      FocusControl = DBEdit4
    end
    object Label6: TLabel
      Left = 445
      Top = 51
      Width = 41
      Height = 13
      Caption = 'Grabado'
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 272
      Top = 26
      Width = 37
      Height = 13
      Caption = 'Factura'
      FocusControl = DBEdit9
    end
    object Label7: TLabel
      Left = 8
      Top = 92
      Width = 40
      Height = 13
      Caption = 'Almacen'
    end
    object btAlmacen: TSpeedButton
      Left = 112
      Top = 92
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
    object Label10: TLabel
      Left = 619
      Top = 30
      Width = 48
      Height = 13
      Caption = 'Total Itbis'
      FocusControl = DBEdit6
    end
    object Label4: TLabel
      Left = 445
      Top = 73
      Width = 51
      Height = 13
      Caption = 'Descuento'
      FocusControl = DBEdit3
    end
    object Label21: TLabel
      Left = 8
      Top = 26
      Width = 40
      Height = 13
      Caption = 'Sucursal'
    end
    object Label26: TLabel
      Left = 445
      Top = 95
      Width = 24
      Height = 13
      Caption = 'Flete'
      FocusControl = DBEdit25
    end
    object Label3: TLabel
      Left = 246
      Top = 52
      Width = 26
      Height = 13
      Caption = 'eNCF'
      FocusControl = DBEdit9
    end
    object Label27: TLabel
      Left = 619
      Top = 52
      Width = 45
      Height = 13
      Caption = 'Ret. Itbis'
      FocusControl = DBEdit20
    end
    object Label19: TLabel
      Left = 619
      Top = 141
      Width = 56
      Height = 13
      Caption = 'Total CxP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label28: TLabel
      Left = 619
      Top = 7
      Width = 29
      Height = 13
      Caption = 'Vence'
      FocusControl = DBEdit1
    end
    object Label22: TLabel
      Left = 8
      Top = 70
      Width = 20
      Height = 13
      Caption = 'Tipo'
    end
    object btTipo: TSpeedButton
      Left = 112
      Top = 70
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
    object Label29: TLabel
      Left = 8
      Top = 114
      Width = 38
      Height = 13
      Caption = 'Moneda'
    end
    object btmoneda: TSpeedButton
      Left = 112
      Top = 114
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
    object Label30: TLabel
      Left = 328
      Top = 114
      Width = 23
      Height = 13
      Caption = 'Tasa'
    end
    object Label36: TLabel
      Left = 136
      Top = 48
      Width = 38
      Height = 13
      Caption = '#Orden'
    end
    object Label25: TLabel
      Left = 445
      Top = 117
      Width = 43
      Height = 13
      Caption = 'Selectivo'
      FocusControl = DBEdit24
    end
    object Label39: TLabel
      Left = 619
      Top = 75
      Width = 41
      Height = 13
      Caption = 'Ret. ISR'
      FocusControl = DBEdit36
    end
    object Label23: TLabel
      Left = 445
      Top = 164
      Width = 46
      Height = 13
      Caption = 'Concepto'
    end
    object LB_1: TLabel
      Left = 445
      Top = 141
      Width = 42
      Height = 13
      Caption = 'Servicios'
      FocusControl = tdbfac_servicios
    end
    object LB_2: TLabel
      Left = 619
      Top = 97
      Width = 60
      Height = 13
      Caption = 'Propina Leg.'
      FocusControl = tdbfac_proplegal
    end
    object LB_3: TLabel
      Left = 8
      Top = 140
      Width = 41
      Height = 13
      Caption = 'Ret. ISR'
    end
    object bTipoRet: TSpeedButton
      Left = 112
      Top = 136
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
      OnClick = bTipoRetClick
    end
    object LB_4: TLabel
      Left = 619
      Top = 119
      Width = 56
      Height = 13
      Caption = 'Otros Imp.:'
      FocusControl = tdbfac_otrosimpuestos
    end
    object LB_5: TLabel
      Left = 8
      Top = 164
      Width = 55
      Height = 13
      Caption = 'Forma Pag.'
    end
    object bfac_form_pago: TSpeedButton
      Left = 112
      Top = 160
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
      OnClick = bfac_form_pagoClick
    end
    object btLocalidad: TSpeedButton
      Left = 114
      Top = 186
      Width = 21
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
    object lbLocSuc: TLabel
      Left = 8
      Top = 188
      Width = 44
      Height = 13
      Caption = 'Localidad'
    end
    object DBEdit5: TDBEdit
      Left = 64
      Top = 48
      Width = 65
      Height = 21
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
      TabOrder = 4
    end
    object DBEdit1: TDBEdit
      Left = 500
      Top = 4
      Width = 104
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'FAC_DIAS'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object DBEdit2: TDBEdit
      Left = 680
      Top = 4
      Width = 104
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'FAC_VENCE'
      DataSource = dsFactura
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 18
    end
    object DBEdit4: TDBEdit
      Left = 500
      Top = 26
      Width = 104
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'FAC_EXENTO'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object DBEdit7: TDBEdit
      Left = 500
      Top = 48
      Width = 104
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'FAC_GRABADO'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
    object DBEdit9: TDBEdit
      Left = 312
      Top = 26
      Width = 128
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'FAC_NUMERO'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 3
    end
    object tProveedor: TEdit
      Left = 138
      Top = 4
      Width = 302
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
    object tAlmacen: TEdit
      Left = 138
      Top = 92
      Width = 302
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
      TabOrder = 26
    end
    object DBEdit6: TDBEdit
      Left = 680
      Top = 26
      Width = 104
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'FAC_ITBIS'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 19
    end
    object DBEdit3: TDBEdit
      Left = 500
      Top = 70
      Width = 104
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'FAC_DESCUENTO'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
    object dbAlmacen: TDBEdit
      Left = 64
      Top = 92
      Width = 44
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'ALM_CODIGO'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object edProveedor: TDBEdit
      Left = 64
      Top = 4
      Width = 44
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'SUP_CODIGO'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 64
      Top = 26
      Width = 201
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
      TabOrder = 2
      TabStop = False
    end
    object DBEdit25: TDBEdit
      Left = 500
      Top = 92
      Width = 104
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'fac_flete'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
    end
    object DBEdit19: TDBEdit
      Left = 274
      Top = 48
      Width = 166
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'NCF'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 19
      ParentFont = False
      TabOrder = 6
    end
    object DBEdit20: TDBEdit
      Left = 680
      Top = 48
      Width = 104
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'fac_retencion'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 20
    end
    object DBEdit10: TDBEdit
      Left = 680
      Top = 137
      Width = 104
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'Total'
      DataSource = dsFactura
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 24
    end
    object DBEdit21: TDBEdit
      Left = 64
      Top = 70
      Width = 44
      Height = 21
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
      TabOrder = 7
    end
    object tTipo: TEdit
      Left = 138
      Top = 70
      Width = 302
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
      TabOrder = 27
    end
    object DBEdit22: TDBEdit
      Left = 502
      Top = 160
      Width = 282
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'fac_concepto'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 25
    end
    object tmoneda: TEdit
      Left = 138
      Top = 114
      Width = 183
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
      TabOrder = 28
    end
    object DBEdit26: TDBEdit
      Left = 64
      Top = 114
      Width = 44
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
      TabOrder = 9
    end
    object DBEdit27: TDBEdit
      Left = 359
      Top = 114
      Width = 81
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
      TabOrder = 10
    end
    object DBEdit33: TDBEdit
      Left = 178
      Top = 48
      Width = 57
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'numero_orden'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DBEdit24: TDBEdit
      Left = 500
      Top = 114
      Width = 104
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'fac_selectivo'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
    end
    object DBEdit36: TDBEdit
      Left = 680
      Top = 72
      Width = 104
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'fac_retencion_isr'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 21
    end
    object tdbfac_servicios: TDBEdit
      Left = 500
      Top = 137
      Width = 104
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'fac_servicios'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
    end
    object tdbfac_proplegal: TDBEdit
      Left = 680
      Top = 93
      Width = 104
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'fac_proplegal'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 22
    end
    object tdbTipo_Ret_Codigo: TDBEdit
      Left = 64
      Top = 136
      Width = 44
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'Tipo_Ret_Codigo'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 29
    end
    object edtTipoRet: TEdit
      Left = 138
      Top = 136
      Width = 302
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
      TabOrder = 30
    end
    object tdbfac_otrosimpuestos: TDBEdit
      Left = 680
      Top = 115
      Width = 104
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'fac_otrosimpuestos'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 23
    end
    object tdbfac_form_pago: TDBEdit
      Left = 64
      Top = 160
      Width = 44
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'fac_form_pago'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 31
    end
    object edtfac_form_pago: TEdit
      Left = 138
      Top = 160
      Width = 302
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
      TabOrder = 32
    end
    object TSucLoc: TEdit
      Left = 138
      Top = 184
      Width = 543
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
      TabOrder = 33
    end
    object dbedtcont_numeroSucursal: TDBEdit
      Left = 64
      Top = 184
      Width = 46
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'cont_numeroSucursal'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 34
      OnChange = dbedtcont_numeroSucursalChange
      OnKeyDown = dbedtcont_numeroSucursalKeyDown
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 490
    Width = 791
    Height = 58
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object btBuscaProd: TSpeedButton
      Left = 262
      Top = 4
      Width = 121
      Height = 25
      Caption = '[ F4 ] - Buscar producto'
      OnClick = btBuscaProdClick
    end
    object btBuscaCta: TSpeedButton
      Left = 386
      Top = 4
      Width = 121
      Height = 25
      Caption = '[ F5 ] - Buscar Cuenta   '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btBuscaCtaClick
    end
    object btElimina: TSpeedButton
      Left = 130
      Top = 29
      Width = 127
      Height = 25
      Caption = '[ F7 ] - Eliminar producto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btEliminaClick
    end
    object btEliminaCta: TSpeedButton
      Left = 6
      Top = 29
      Width = 121
      Height = 25
      Caption = '[ F6 ] - Eliminar Cuenta'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btEliminaCtaClick
    end
    object btGRabar: TSpeedButton
      Left = 6
      Top = 4
      Width = 121
      Height = 25
      Caption = '[ F2 ] - Grabar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btGRabarClick
    end
    object btLimpiar: TSpeedButton
      Left = 130
      Top = 4
      Width = 127
      Height = 25
      Caption = '[ F3 ] - Limpiar/Nueva    '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btLimpiarClick
    end
    object BitBtn6: TSpeedButton
      Left = 386
      Top = 29
      Width = 121
      Height = 25
      Caption = '[ F10 ] - Cancelar/Salir  '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = BitBtn6Click
    end
    object BitBtn2: TSpeedButton
      Left = 262
      Top = 29
      Width = 121
      Height = 25
      Caption = 'Seleccionar Orden'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = BitBtn2Click
    end
    object BitBtn1: TSpeedButton
      Left = 512
      Top = 4
      Width = 177
      Height = 25
      Caption = 'Seleccionar entrada de almacen'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = BitBtn1Click
    end
    object Labeldiferencia: TLabel
      Left = 526
      Top = 36
      Width = 57
      Height = 13
      Caption = 'Diferencia'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbdiferencia: TStaticText
      Left = 592
      Top = 35
      Width = 103
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 211
    Width = 791
    Height = 279
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    OnEnter = PageControl1Enter
    object TabSheet1: TTabSheet
      Caption = 'Productos'
      DesignSize = (
        783
        251)
      object lbcant: TLabel
        Left = 8
        Top = 181
        Width = 46
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = '0 L'#237'neas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 186
        Top = 181
        Width = 138
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'Total productos exentos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 493
        Top = 181
        Width = 145
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'Total productos grabados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Grid: TDBGrid
        Left = 0
        Top = 0
        Width = 783
        Height = 151
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        Ctl3D = False
        DataSource = dsDetalle
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
        OnEnter = GridEnter
        OnKeyDown = GridKeyDown
        OnKeyPress = GridKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'PRO_CODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_NOMBRE'
            Title.Caption = 'Nombre del Producto'
            Width = 147
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_cantempaque'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Cant/Emp'
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DET_CANTIDAD'
            Title.Alignment = taCenter
            Title.Caption = 'Cant'
            Width = 38
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'det_oferta'
            Title.Alignment = taCenter
            Title.Caption = 'Oferta'
            Width = 36
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
            Expanded = False
            FieldName = 'pro_unidad_medida'
            Title.Alignment = taCenter
            Title.Caption = 'Medida'
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DET_COSTOUND'
            Title.Alignment = taCenter
            Title.Caption = 'Costo'
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DET_COSTOEMP'
            Title.Alignment = taCenter
            Title.Caption = 'Costo Emp'
            Width = 57
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DET_ITBIS'
            Title.Alignment = taCenter
            Title.Caption = '%Itbis'
            Width = 39
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DET_FECHAVENCE'
            Title.Alignment = taCenter
            Title.Caption = 'Vence'
            Width = 60
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
      object pnprecios: TPanel
        Left = 0
        Top = 200
        Width = 783
        Height = 51
        Align = alBottom
        TabOrder = 1
        object Label31: TLabel
          Left = 78
          Top = 6
          Width = 74
          Height = 13
          Caption = 'Costo Und Ant.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label32: TLabel
          Left = 78
          Top = 27
          Width = 75
          Height = 13
          Caption = 'Costo Emp Ant.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label33: TLabel
          Left = 1
          Top = 6
          Width = 54
          Height = 13
          Caption = 'Costo Neto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object sbPrecios: TScrollBox
          Left = 232
          Top = 3
          Width = 549
          Height = 47
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 0
          object Label14: TLabel
            Left = 2
            Top = 3
            Width = 110
            Height = 13
            Caption = '%Beneficio / Precio #1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
            Left = 2
            Top = 24
            Width = 110
            Height = 13
            Caption = '%Beneficio / Precio #2'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 216
            Top = 3
            Width = 110
            Height = 13
            Caption = '%Beneficio / Precio #3'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 216
            Top = 24
            Width = 110
            Height = 13
            Caption = '%Beneficio / Precio #4'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object LB_6: TLabel
            Left = 441
            Top = 6
            Width = 27
            Height = 13
            Caption = '%Itbis'
            FocusControl = tdbpro_montoitbis
          end
          object LB_7: TLabel
            Left = 446
            Top = 26
            Width = 56
            Height = 13
            Alignment = taRightJustify
            Caption = 'Precio Min.:'
          end
          object DBEdit11: TDBEdit
            Left = 120
            Top = 1
            Width = 34
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            DataField = 'PRO_BENEFICIO'
            DataSource = dsDetalle
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object DBEdit12: TDBEdit
            Left = 155
            Top = 1
            Width = 59
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            DataField = 'PRO_PRECIO1'
            DataSource = dsDetalle
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnKeyDown = DBEdit12KeyDown
          end
          object DBEdit13: TDBEdit
            Left = 120
            Top = 22
            Width = 34
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            DataField = 'PRO_BENEFICIO2'
            DataSource = dsDetalle
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object DBEdit14: TDBEdit
            Left = 155
            Top = 22
            Width = 59
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            DataField = 'PRO_PRECIO2'
            DataSource = dsDetalle
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnKeyDown = DBEdit14KeyDown
          end
          object DBEdit15: TDBEdit
            Left = 331
            Top = 1
            Width = 36
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            DataField = 'PRO_BENEFICIO3'
            DataSource = dsDetalle
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object DBEdit17: TDBEdit
            Left = 369
            Top = 1
            Width = 70
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            DataField = 'PRO_PRECIO3'
            DataSource = dsDetalle
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnKeyDown = DBEdit17KeyDown
          end
          object DBEdit16: TDBEdit
            Left = 331
            Top = 22
            Width = 36
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            DataField = 'PRO_BENEFICIO4'
            DataSource = dsDetalle
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object DBEdit18: TDBEdit
            Left = 369
            Top = 22
            Width = 70
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            DataField = 'PRO_PRECIO4'
            DataSource = dsDetalle
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnKeyDown = DBEdit18KeyDown
          end
          object tdbpro_montoitbis: TDBEdit
            Left = 494
            Top = 1
            Width = 48
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            CharCase = ecUpperCase
            DataField = 'DET_ITBIS'
            DataSource = dsDetalle
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
          end
          object tdbPRO_PRECIOMENOR: TDBEdit
            Left = 505
            Top = 22
            Width = 37
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            DataField = 'PRO_PRECIOMINIMO'
            DataSource = dsDetalle
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
          end
        end
        object DBEdit28: TDBEdit
          Left = 158
          Top = 4
          Width = 70
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'det_costound_ant'
          DataSource = dsDetalle
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit29: TDBEdit
          Left = 158
          Top = 25
          Width = 70
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'det_costoemp_ant'
          DataSource = dsDetalle
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit30: TDBEdit
          Left = 1
          Top = 25
          Width = 72
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'CostoNeto'
          DataSource = dsDetalle
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object btprecios: TBitBtn
          Left = 376
          Top = 12
          Width = 209
          Height = 25
          Caption = '[ F8 ] - Precios x Unidad de Medida'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          Visible = False
          OnClick = btpreciosClick
        end
      end
      object Memo1: TMemo
        Left = 8
        Top = 40
        Width = 297
        Height = 49
        Lines.Strings = (
          'Memo1')
        TabOrder = 2
        Visible = False
      end
      object lbgrabados: TStaticText
        Left = 650
        Top = 179
        Width = 103
        Height = 17
        Alignment = taRightJustify
        Anchors = [akLeft, akBottom]
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object lbexcentos: TStaticText
        Left = 343
        Top = 179
        Width = 103
        Height = 17
        Alignment = taRightJustify
        Anchors = [akLeft, akBottom]
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object Lista: TListBox
        Left = 400
        Top = 40
        Width = 193
        Height = 49
        ItemHeight = 13
        TabOrder = 5
        Visible = False
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Cuentas contables'
      ImageIndex = 1
      DesignSize = (
        783
        251)
      object Label11: TLabel
        Left = 6
        Top = 199
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
      object Label12: TLabel
        Left = 6
        Top = 216
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
      object Label13: TLabel
        Left = 6
        Top = 232
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
      object spcentros: TSpeedButton
        Left = 339
        Top = 131
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
      object lbCR: TStaticText
        Left = 64
        Top = 198
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
        Left = 64
        Top = 214
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
      object lbBAL: TStaticText
        Left = 64
        Top = 231
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
      object GridCuentas: TDBGridObj
        Left = 0
        Top = 0
        Width = 783
        Height = 265
        Align = alTop
        DataSource = dsCuentas
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnColEnter = GridCuentasColEnter
        OnDrawColumnCell = GridCuentasDrawColumnCell
        OnEnter = GridCuentasEnter
        OnKeyDown = GridCuentasKeyDown
        RowHeight = 0
        Columns = <
          item
            Expanded = False
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAT_CUENTA'
            Title.Alignment = taCenter
            Title.Caption = 'Cuenta'
            Width = 104
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'CAT_NOMBRE'
            Title.Caption = 'Nombre de la Cuenta'
            Width = 337
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DET_ORIGEN'
            Title.Alignment = taCenter
            Title.Caption = 'Origen'
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DET_MONTO'
            Title.Alignment = taCenter
            Title.Caption = 'Monto'
            Width = 95
            Visible = True
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Cashflow'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 3
      ParentFont = False
      object SpeedButton1: TSpeedButton
        Left = 120
        Top = 14
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
      object SpeedButton2: TSpeedButton
        Left = 120
        Top = 38
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
        OnClick = SpeedButton2Click
      end
      object SpeedButton5: TSpeedButton
        Left = 120
        Top = 62
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
        OnClick = SpeedButton5Click
      end
      object Label24: TLabel
        Left = 16
        Top = 16
        Width = 29
        Height = 13
        Caption = 'Grupo'
      end
      object Label34: TLabel
        Left = 16
        Top = 40
        Width = 46
        Height = 13
        Caption = 'Subgrupo'
      end
      object Label35: TLabel
        Left = 16
        Top = 64
        Width = 46
        Height = 13
        Caption = 'Concepto'
      end
      object Label37: TLabel
        Left = 16
        Top = 88
        Width = 34
        Height = 13
        Caption = 'Map ID'
      end
      object Label38: TLabel
        Left = 16
        Top = 112
        Width = 47
        Height = 13
        Caption = 'Detalle ID'
      end
      object DBEdit23: TDBEdit
        Left = 72
        Top = 14
        Width = 44
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'Cashflow_Grupo'
        DataSource = dsFactura
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object tgrupo: TEdit
        Left = 146
        Top = 14
        Width = 399
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
        TabOrder = 3
      end
      object DBEdit31: TDBEdit
        Left = 72
        Top = 38
        Width = 44
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'Cashflow_Subgrupo'
        DataSource = dsFactura
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object tsubgrupo: TEdit
        Left = 146
        Top = 38
        Width = 399
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
        TabOrder = 4
      end
      object DBEdit32: TDBEdit
        Left = 72
        Top = 62
        Width = 44
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'Cashflow_Concepto'
        DataSource = dsFactura
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object tconcepto: TEdit
        Left = 146
        Top = 62
        Width = 399
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
      object DBEdit34: TDBEdit
        Left = 72
        Top = 86
        Width = 44
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'mapid'
        DataSource = dsFactura
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object DBEdit35: TDBEdit
        Left = 72
        Top = 110
        Width = 44
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'detallemapid'
        DataSource = dsFactura
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
    end
  end
  object QFactura: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterEdit = QFacturaAfterEdit
    BeforePost = QFacturaBeforePost
    OnCalcFields = QFacturaCalcFields
    OnNewRecord = QFacturaNewRecord
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
        Name = 'sup'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'num'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      'select f.EMP_CODIGO, FAC_ABONO, FAC_DESCUENTO, FAC_DIAS, '
      'FAC_EXENTO, FAC_FECHA, FAC_GRABADO, FAC_NUMERO, '
      'FAC_STATUS, FAC_TOTAL, FAC_VENCE, f.SUP_CODIGO, '
      'ALM_CODIGO, f.USU_CODIGO, FAC_ITBIS, PED_NUMERO,'
      'CEN_CODIGO, FAC_TASA, SUC_CODIGO, MON_CODIGO,'
      'fac_total_oferta, fac_selectivo, fac_flete, NCF, '
      'fac_selectivo_ad, ent_numero, f.tip_codigo, fac_concepto,'
      
        'fac_retencion, Cashflow_Grupo, Cashflow_Subgrupo, Cashflow_Conce' +
        'pto,'
      
        'numero_orden, mapid, detallemapid, fac_retencion_isr, fac_servic' +
        'ios, '
      
        'fac_proplegal, Tipo_Ret_Codigo, fac_otrosimpuestos, fac_form_pag' +
        'o, cont_numeroSucursal, FAC_FECHA_EFECTIVA,'
      'eNCF, E.emp_rnc, C.sup_rnc, t.cod_dgii as TipoeNCF'
      
        'from PROVFACTURAS f INNER JOIN Empresas E ON E.emp_codigo=F.emp_' +
        'codigo'
      'LEFT join TipoNCF t on t.tip_codigo=f.tip_codigo'
      'LEFT JOIN Proveedores C ON C.sup_codigo= F.sup_codigo'
      'where f.emp_codigo = :emp'
      'and f.sup_codigo = :sup'
      'and f.fac_numero = :num')
    Left = 184
    Top = 168
    object QFacturaEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'PROVFACTURAS.EMP_CODIGO'
    end
    object QFacturaFAC_ABONO: TFloatField
      FieldName = 'FAC_ABONO'
      Origin = 'PROVFACTURAS.FAC_ABONO'
    end
    object QFacturaFAC_DESCUENTO: TFloatField
      FieldName = 'FAC_DESCUENTO'
      Origin = 'PROVFACTURAS.FAC_DESCUENTO'
      OnChange = QFacturaFAC_DESCUENTOChange
      currency = True
    end
    object QFacturaFAC_DIAS: TIntegerField
      FieldName = 'FAC_DIAS'
      Origin = 'PROVFACTURAS.FAC_DIAS'
      OnChange = QFacturaFAC_DIASChange
    end
    object QFacturaFAC_EXENTO: TFloatField
      FieldName = 'FAC_EXENTO'
      Origin = 'PROVFACTURAS.FAC_EXENTO'
      OnChange = QFacturaFAC_EXENTOChange
      currency = True
    end
    object QFacturaFAC_FECHA: TDateTimeField
      FieldName = 'FAC_FECHA'
      Origin = 'PROVFACTURAS.FAC_FECHA'
      OnChange = QFacturaFAC_FECHAChange
      EditMask = 'cc-cc-cccc'
    end
    object QFacturaFAC_GRABADO: TFloatField
      FieldName = 'FAC_GRABADO'
      Origin = 'PROVFACTURAS.FAC_GRABADO'
      OnChange = QFacturaFAC_GRABADOChange
      currency = True
    end
    object QFacturaFAC_NUMERO: TIBStringField
      FieldName = 'FAC_NUMERO'
      Origin = 'PROVFACTURAS.FAC_NUMERO'
      OnChange = QFacturaFAC_NUMEROChange
      Size = 15
    end
    object QFacturaFAC_STATUS: TIBStringField
      FieldName = 'FAC_STATUS'
      Origin = 'PROVFACTURAS.FAC_STATUS'
      Size = 3
    end
    object QFacturaFAC_TOTAL: TFloatField
      FieldName = 'FAC_TOTAL'
      Origin = 'PROVFACTURAS.FAC_TOTAL'
      currency = True
    end
    object QFacturaFAC_VENCE: TDateTimeField
      FieldName = 'FAC_VENCE'
      Origin = 'PROVFACTURAS.FAC_VENCE'
    end
    object QFacturaSUP_CODIGO: TIntegerField
      FieldName = 'SUP_CODIGO'
      Origin = 'PROVFACTURAS.SUP_CODIGO'
      OnChange = QFacturaSUP_CODIGOChange
      OnGetText = QFacturaSUP_CODIGOGetText
    end
    object QFacturaTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      currency = True
      Calculated = True
    end
    object QFacturaUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Origin = 'PROVFACTURAS.USU_CODIGO'
    end
    object QFacturaALM_CODIGO: TIntegerField
      FieldName = 'ALM_CODIGO'
      Origin = 'PROVFACTURAS.ALM_CODIGO'
      OnGetText = QFacturaALM_CODIGOGetText
    end
    object QFacturaFAC_ITBIS: TFloatField
      FieldName = 'FAC_ITBIS'
      Origin = 'PROVFACTURAS.FAC_ITBIS'
      OnChange = QFacturaFAC_ITBISChange
      currency = True
    end
    object QFacturaPED_NUMERO: TIntegerField
      FieldName = 'PED_NUMERO'
      Origin = 'PROVFACTURAS.PED_NUMERO'
    end
    object QFacturaCEN_CODIGO: TIntegerField
      FieldName = 'CEN_CODIGO'
      Origin = 'PROVFACTURAS.CEN_CODIGO'
    end
    object QFacturaFAC_TASA: TFloatField
      FieldName = 'FAC_TASA'
      Origin = 'PROVFACTURAS.FAC_TASA'
      currency = True
    end
    object QFacturaSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QFacturaMON_CODIGO: TIntegerField
      FieldName = 'MON_CODIGO'
      OnChange = QFacturaMON_CODIGOChange
      OnGetText = QFacturaMON_CODIGOGetText
    end
    object QFacturafac_total_oferta: TBCDField
      FieldName = 'fac_total_oferta'
      currency = True
      Precision = 15
      Size = 2
    end
    object QFacturafac_selectivo: TBCDField
      FieldName = 'fac_selectivo'
      OnChange = QFacturafac_selectivoChange
      currency = True
      Precision = 15
      Size = 2
    end
    object QFacturafac_flete: TBCDField
      FieldName = 'fac_flete'
      OnChange = QFacturafac_fleteChange
      currency = True
      Precision = 15
      Size = 2
    end
    object QFacturaNCF: TStringField
      FieldName = 'NCF'
      Size = 30
    end
    object QFacturafac_selectivo_ad: TBCDField
      FieldName = 'fac_selectivo_ad'
      OnChange = QFacturafac_selectivo_adChange
      currency = True
      Precision = 15
      Size = 2
    end
    object QFacturaent_numero: TIntegerField
      FieldName = 'ent_numero'
    end
    object QFacturatip_codigo: TIntegerField
      FieldName = 'tip_codigo'
      OnGetText = QFacturatip_codigoGetText
    end
    object QFacturafac_concepto: TStringField
      FieldName = 'fac_concepto'
      Size = 60
    end
    object QFacturafac_retencion: TBCDField
      FieldName = 'fac_retencion'
      OnChange = QFacturafac_retencionChange
      currency = True
      Precision = 15
      Size = 2
    end
    object QFacturaCashflow_Grupo: TIntegerField
      FieldName = 'Cashflow_Grupo'
      OnGetText = QFacturaCashflow_GrupoGetText
    end
    object QFacturaCashflow_Subgrupo: TIntegerField
      FieldName = 'Cashflow_Subgrupo'
      OnGetText = QFacturaCashflow_SubgrupoGetText
    end
    object QFacturaCashflow_Concepto: TIntegerField
      FieldName = 'Cashflow_Concepto'
      OnGetText = QFacturaCashflow_ConceptoGetText
    end
    object QFacturamapid: TIntegerField
      FieldName = 'mapid'
    end
    object QFacturadetallemapid: TIntegerField
      FieldName = 'detallemapid'
    end
    object QFacturafac_retencion_isr: TBCDField
      FieldName = 'fac_retencion_isr'
      OnChange = QFacturafac_retencion_isrChange
      currency = True
      Precision = 18
      Size = 2
    end
    object QFacturafac_servicios: TCurrencyField
      FieldName = 'fac_servicios'
      OnChange = QFacturafac_serviciosChange
    end
    object QFacturafac_proplegal: TCurrencyField
      FieldName = 'fac_proplegal'
      OnChange = QFacturafac_proplegalChange
    end
    object QFacturaTipo_Ret_Codigo: TIntegerField
      FieldName = 'Tipo_Ret_Codigo'
      OnGetText = QFacturaTipo_Ret_CodigoGetText
    end
    object QFacturafac_otrosimpuestos: TFloatField
      FieldName = 'fac_otrosimpuestos'
      OnChange = QFacturafac_otrosimpuestosChange
      currency = True
    end
    object QFacturafac_form_pago: TIntegerField
      FieldName = 'fac_form_pago'
      OnGetText = QFacturafac_form_pagoGetText
    end
    object QFacturacont_numeroSucursal: TStringField
      FieldName = 'cont_numeroSucursal'
      Size = 5
    end
    object QFacturaFAC_FECHA_EFECTIVA: TDateTimeField
      FieldName = 'FAC_FECHA_EFECTIVA'
    end
    object QFacturanumero_orden: TStringField
      FieldName = 'numero_orden'
    end
    object QFacturaemp_rnc: TStringField
      FieldName = 'emp_rnc'
    end
    object QFacturasup_rnc: TStringField
      FieldName = 'sup_rnc'
    end
    object QFacturaeNCF: TStringField
      FieldName = 'eNCF'
    end
    object QFacturaTipoeNCF: TIntegerField
      FieldName = 'TipoeNCF'
    end
  end
  object dsFactura: TDataSource
    DataSet = QFactura
    OnStateChange = dsFacturaStateChange
    OnDataChange = dsFacturaDataChange
    Left = 216
    Top = 168
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
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
        Name = 'sup'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'num'
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
      'DET_FECHAVENCE, DET_LOTE, DET_VENCE,'
      'DET_CANTDEVUELTA, DET_MEDIDA, DET_COSTOITBIS,'
      'DET_COSTOUND, DET_COSTOEMP, PRO_BENEFICIO, '
      'PRO_BENEFICIO2, PRO_BENEFICIO3, PRO_BENEFICIO4, '
      'PRO_PRECIO1, PRO_PRECIO2, PRO_PRECIO3, PRO_PRECIO4,'
      'PRO_PRECIOMINIMO, PRO_PRECIOMINIMOEMP,'
      'det_oferta, det_etiquetas, pro_detallado, pro_pasaoferta,'
      'pro_cantempaque, det_costound_ant, det_costoemp_ant,'
      'det_cambiarprecio, det_Descuento,'
      'pro_unidad_medida, UnidadID, Medida_Precio1, Medida_Precio2,'
      'Medida_Precio3, Medida_Precio4, det_cant_unidad_medida,'
      'det_cant_pendiente'
      'From '
      'DET_PROVFACTURAS'
      'where '
      'emp_codigo = :emp'
      'and sup_codigo = :sup'
      'and fac_numero = :num'
      'order by'
      'det_secuencia')
    Left = 184
    Top = 192
    object QDetalleDET_CANTIDAD: TFloatField
      FieldName = 'DET_CANTIDAD'
      Origin = 'DET_PROVFACTURAS.DET_CANTIDAD'
    end
    object QDetalleDET_CONITBIS: TIBStringField
      FieldName = 'DET_CONITBIS'
      Origin = 'DET_PROVFACTURAS.DET_CONITBIS'
      OnChange = QDetalleDET_CONITBISChange
      Size = 1
    end
    object QDetalleDET_ITBIS: TFloatField
      FieldName = 'DET_ITBIS'
      Origin = 'DET_PROVFACTURAS.DET_ITBIS'
    end
    object QDetalleDET_SECUENCIA: TIntegerField
      FieldName = 'DET_SECUENCIA'
      Origin = 'DET_PROVFACTURAS.DET_SECUENCIA'
      DisplayFormat = '00'
    end
    object QDetalleEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'DET_PROVFACTURAS.EMP_CODIGO'
    end
    object QDetalleFAC_NUMERO: TIBStringField
      FieldName = 'FAC_NUMERO'
      Origin = 'DET_PROVFACTURAS.FAC_NUMERO'
      Size = 15
    end
    object QDetallePRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'DET_PROVFACTURAS.PRO_CODIGO'
      OnChange = QDetallePRO_CODIGOChange
    end
    object QDetallePRO_NOMBRE: TIBStringField
      FieldName = 'PRO_NOMBRE'
      Origin = 'DET_PROVFACTURAS.PRO_NOMBRE'
      Size = 60
    end
    object QDetallePRO_RFABRIC: TIBStringField
      FieldName = 'PRO_RFABRIC'
      Origin = 'DET_PROVFACTURAS.PRO_RFABRIC'
      OnChange = QDetallePRO_RFABRICChange
      Size = 60
    end
    object QDetallePRO_RORIGINAL: TIBStringField
      FieldName = 'PRO_RORIGINAL'
      Origin = 'DET_PROVFACTURAS.PRO_RORIGINAL'
      OnChange = QDetallePRO_RORIGINALChange
      Size = 50
    end
    object QDetalleSUP_CODIGO: TIntegerField
      FieldName = 'SUP_CODIGO'
      Origin = 'DET_PROVFACTURAS.SUP_CODIGO'
    end
    object QDetalleDET_COSTO: TFloatField
      FieldName = 'DET_COSTO'
      Origin = 'DET_PROVFACTURAS.DET_COSTO'
      OnChange = QDetalleDET_COSTOChange
      currency = True
    end
    object QDetalleDET_FECHAVENCE: TDateTimeField
      FieldName = 'DET_FECHAVENCE'
      Origin = 'DET_PROVFACTURAS.DET_FECHAVENCE'
      EditMask = 'cc-cc-cccc'
    end
    object QDetalleDET_LOTE: TIntegerField
      FieldName = 'DET_LOTE'
      Origin = 'DET_PROVFACTURAS.DET_LOTE'
    end
    object QDetalleValor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor'
      currency = True
      Calculated = True
    end
    object QDetalleDET_VENCE: TIBStringField
      FieldName = 'DET_VENCE'
      Origin = 'DET_PROVFACTURAS.DET_VENCE'
      Size = 5
    end
    object QDetalleDET_CANTDEVUELTA: TFloatField
      FieldName = 'DET_CANTDEVUELTA'
      Origin = 'DET_PROVFACTURAS.DET_CANTDEVUELTA'
    end
    object QDetalleDET_MEDIDA: TIBStringField
      FieldName = 'DET_MEDIDA'
      Origin = 'DET_PROVFACTURAS.DET_MEDIDA'
      OnChange = QDetalleDET_MEDIDAChange
      Size = 3
    end
    object QDetallePrecioItbis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PrecioItbis'
      currency = True
      Calculated = True
    end
    object QDetalleCalcItbis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcItbis'
      currency = True
      Calculated = True
    end
    object QDetalleDET_COSTOITBIS: TFloatField
      FieldName = 'DET_COSTOITBIS'
      Origin = 'DET_PROVFACTURAS.DET_COSTOITBIS'
      currency = True
    end
    object QDetalleCalcDesc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcDesc'
      Calculated = True
    end
    object QDetalleDET_COSTOUND: TFloatField
      FieldName = 'DET_COSTOUND'
      Origin = 'DET_PROVFACTURAS.DET_COSTOUND'
      OnChange = QDetalleDET_COSTOUNDChange
      currency = True
    end
    object QDetalleDET_COSTOEMP: TFloatField
      FieldName = 'DET_COSTOEMP'
      Origin = 'DET_PROVFACTURAS.DET_COSTOEMP'
      OnChange = QDetalleDET_COSTOEMPChange
      currency = True
    end
    object QDetallePRO_BENEFICIO: TFloatField
      FieldName = 'PRO_BENEFICIO'
      Origin = 'DET_PROVFACTURAS.PRO_BENEFICIO'
      OnChange = QDetallePRO_BENEFICIOChange
      currency = True
    end
    object QDetallePRO_BENEFICIO2: TFloatField
      FieldName = 'PRO_BENEFICIO2'
      Origin = 'DET_PROVFACTURAS.PRO_BENEFICIO2'
      OnChange = QDetallePRO_BENEFICIO2Change
      currency = True
    end
    object QDetallePRO_BENEFICIO3: TFloatField
      FieldName = 'PRO_BENEFICIO3'
      Origin = 'DET_PROVFACTURAS.PRO_BENEFICIO3'
      OnChange = QDetallePRO_BENEFICIO3Change
      currency = True
    end
    object QDetallePRO_BENEFICIO4: TFloatField
      FieldName = 'PRO_BENEFICIO4'
      Origin = 'DET_PROVFACTURAS.PRO_BENEFICIO4'
      OnChange = QDetallePRO_BENEFICIO4Change
      currency = True
    end
    object QDetallePRO_PRECIO1: TFloatField
      FieldName = 'PRO_PRECIO1'
      Origin = 'DET_PROVFACTURAS.PRO_PRECIO1'
      OnChange = QDetallePRO_PRECIO1Change
      currency = True
    end
    object QDetallePRO_PRECIO2: TFloatField
      FieldName = 'PRO_PRECIO2'
      Origin = 'DET_PROVFACTURAS.PRO_PRECIO2'
      currency = True
    end
    object QDetallePRO_PRECIO3: TFloatField
      FieldName = 'PRO_PRECIO3'
      Origin = 'DET_PROVFACTURAS.PRO_PRECIO3'
      currency = True
    end
    object QDetallePRO_PRECIO4: TFloatField
      FieldName = 'PRO_PRECIO4'
      Origin = 'DET_PROVFACTURAS.PRO_PRECIO4'
      currency = True
    end
    object QDetallePRO_PRECIOMINIMO: TFloatField
      FieldName = 'PRO_PRECIOMINIMO'
      Origin = 'DET_PROVFACTURAS.PRO_PRECIOMINIMO'
      currency = True
    end
    object QDetallePRO_PRECIOMINIMOEMP: TFloatField
      FieldName = 'PRO_PRECIOMINIMOEMP'
      Origin = 'DET_PROVFACTURAS.PRO_PRECIOMINIMOEMP'
      currency = True
    end
    object QDetalledet_oferta: TBCDField
      FieldName = 'det_oferta'
      Precision = 15
      Size = 2
    end
    object QDetalledet_etiquetas: TIntegerField
      FieldName = 'det_etiquetas'
    end
    object QDetallepro_detallado: TStringField
      FieldName = 'pro_detallado'
      Size = 5
    end
    object QDetallepro_pasaoferta: TStringField
      FieldName = 'pro_pasaoferta'
      Size = 5
    end
    object QDetallePrecioItbisEmp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PrecioItbisEmp'
      Calculated = True
    end
    object QDetalleCalcItbisEmp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcItbisEmp'
      Calculated = True
    end
    object QDetalleCalcDescEmp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcDescEmp'
      Calculated = True
    end
    object QDetalleValorEmp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ValorEmp'
      Calculated = True
    end
    object QDetalleValorItbisUnd: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ValorItbisUnd'
      Calculated = True
    end
    object QDetalleValorItbisEmp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ValorItbisEmp'
      Calculated = True
    end
    object QDetalleCalcCosto: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcCosto'
      Calculated = True
    end
    object QDetalleCalcCostoEmp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcCostoEmp'
      Calculated = True
    end
    object QDetallepro_cantempaque: TBCDField
      FieldName = 'pro_cantempaque'
      Precision = 15
      Size = 2
    end
    object QDetalledet_costound_ant: TBCDField
      FieldName = 'det_costound_ant'
      currency = True
      Precision = 18
      Size = 2
    end
    object QDetalledet_costoemp_ant: TBCDField
      FieldName = 'det_costoemp_ant'
      currency = True
      Precision = 18
      Size = 2
    end
    object QDetalledet_cambiarprecio: TStringField
      FieldName = 'det_cambiarprecio'
      Size = 1
    end
    object QDetalleCostoNeto: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CostoNeto'
      currency = True
      Calculated = True
    end
    object QDetalledet_Descuento: TBCDField
      FieldName = 'det_Descuento'
      Precision = 18
      Size = 2
    end
    object QDetallepro_unidad_medida: TStringField
      FieldName = 'pro_unidad_medida'
      OnChange = QDetallepro_unidad_medidaChange
    end
    object QDetalleUnidadID: TStringField
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
    object QDetalledet_cant_pendiente: TBCDField
      FieldName = 'det_cant_pendiente'
      Precision = 10
      Size = 2
    end
  end
  object dsDetalle: TDataSource
    DataSet = QDetalle
    Left = 216
    Top = 200
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 552
    Top = 216
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 584
    Top = 184
  end
  object QCuentas: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    AfterInsert = QCuentasAfterInsert
    AfterEdit = QCuentasAfterEdit
    AfterPost = QCuentasAfterPost
    BeforeDelete = QCuentasBeforeDelete
    AfterDelete = QCuentasAfterDelete
    OnCalcFields = QCuentasCalcFields
    Parameters = <
      item
        Name = 'EMP'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'SUP'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'NUM'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      ''
      'SELECT'
      'CAT_CUENTA, CAT_NOMBRE, DET_MONTO, DET_ORIGEN, '
      'DET_SECUENCIA, EMP_CODIGO, FAC_NUMERO, SUP_CODIGO'
      'FROM'
      'CONTDET_PROVFACTURAS'
      'WHERE'
      'EMP_CODIGO = :EMP'
      'AND SUP_CODIGO = :SUP'
      'AND FAC_NUMERO = :NUM'
      'ORDER BY'
      'DET_SECUENCIA')
    Left = 184
    Top = 232
    object QCuentasCAT_NOMBRE: TIBStringField
      FieldName = 'CAT_NOMBRE'
      Origin = 'CONTDET_PROVFACTURAS.CAT_NOMBRE'
      Size = 60
    end
    object QCuentasCAT_CUENTA: TIBStringField
      FieldName = 'CAT_CUENTA'
      Origin = 'CONTDET_PROVFACTURAS.CAT_CUENTA'
      OnChange = QCuentasCAT_CUENTAChange
      Size = 15
    end
    object QCuentasDET_MONTO: TFloatField
      FieldName = 'DET_MONTO'
      Origin = 'CONTDET_PROVFACTURAS.DET_MONTO'
      currency = True
    end
    object QCuentasDET_ORIGEN: TIBStringField
      FieldName = 'DET_ORIGEN'
      Origin = 'CONTDET_PROVFACTURAS.DET_ORIGEN'
      Size = 7
    end
    object QCuentasDET_SECUENCIA: TIntegerField
      FieldName = 'DET_SECUENCIA'
      Origin = 'CONTDET_PROVFACTURAS.DET_SECUENCIA'
    end
    object QCuentasEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'CONTDET_PROVFACTURAS.EMP_CODIGO'
    end
    object QCuentasFAC_NUMERO: TIBStringField
      FieldName = 'FAC_NUMERO'
      Origin = 'CONTDET_PROVFACTURAS.FAC_NUMERO'
      Size = 15
    end
    object QCuentasSUP_CODIGO: TIntegerField
      FieldName = 'SUP_CODIGO'
      Origin = 'CONTDET_PROVFACTURAS.SUP_CODIGO'
    end
    object QCuentasCalculo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Calculo'
      Size = 0
      Calculated = True
    end
  end
  object dsCuentas: TDataSource
    DataSet = QCuentas
    Left = 216
    Top = 232
  end
  object QCentro: TADOQuery
    Connection = DM.ADOSigma
    OnNewRecord = QCentroNewRecord
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
        Name = 'sup'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'num'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'emp_codigo, sup_codigo, fac_numero,'
      'cen_codigo, det_secuencia, cen_nombre, det_monto,'
      'cat_cuenta, cen_referencia, sub_referencia,'
      'sub_secuencia'
      'from'
      'ProvFacturasCentros'
      'where'
      'emp_codigo = :emp'
      'and sup_codigo = :sup'
      'and fac_numero = :num'
      'order by'
      'det_Secuencia')
    Left = 80
    Top = 272
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
    object QCentrodet_monto: TCurrencyField
      FieldName = 'det_monto'
    end
    object QCentrocat_cuenta: TStringField
      FieldName = 'cat_cuenta'
      Size = 15
    end
    object QCentrocen_referencia: TStringField
      FieldName = 'cen_referencia'
      Size = 10
    end
    object QCentrosub_referencia: TStringField
      DisplayWidth = 10
      FieldName = 'sub_referencia'
      Size = 50
    end
    object QCentrosub_secuencia: TIntegerField
      FieldName = 'sub_secuencia'
    end
  end
  object dsCentro: TDataSource
    DataSet = QCentro
    Left = 216
    Top = 264
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
    Left = 584
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
    Left = 616
    Top = 216
  end
  object QUtil: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 584
    Top = 248
  end
  object Query2: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 256
    Top = 200
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
        Name = 'sup'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'num'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'emp_codigo, sup_codigo, fac_numero, pro_codigo,'
      'UnidadID, Precio, Cantidad, Secuencia, Credito,'
      'Minimo'
      'from'
      'ProvfacturasUnidadMedida'
      'where'
      'emp_codigo = :emp'
      'and sup_codigo = :sup'
      'and fac_numero = :num'
      'order by'
      'Secuencia')
    Left = 256
    Top = 232
    object QUnidadesemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QUnidadessup_codigo: TIntegerField
      FieldName = 'sup_codigo'
    end
    object QUnidadesfac_numero: TStringField
      FieldName = 'fac_numero'
      Size = 15
    end
    object QUnidadespro_codigo: TIntegerField
      FieldName = 'pro_codigo'
    end
    object QUnidadesUnidadID: TStringField
      FieldName = 'UnidadID'
      Size = 1
    end
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
    object QUnidadesSecuencia: TIntegerField
      FieldName = 'Secuencia'
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
  end
  object QMedidas: TADOQuery
    Connection = DM.ADOSigma
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
    Left = 256
    Top = 264
    object QMedidasPrecio: TBCDField
      FieldName = 'Precio'
      Precision = 18
      Size = 2
    end
    object QMedidasCantidad: TBCDField
      FieldName = 'Cantidad'
      Precision = 18
      Size = 2
    end
    object QMedidasNombre: TStringField
      FieldName = 'Nombre'
    end
    object QMedidasCredito: TBCDField
      FieldName = 'Credito'
      Precision = 18
      Size = 2
    end
    object QMedidasMinimo: TBCDField
      FieldName = 'Minimo'
      Precision = 18
      Size = 2
    end
    object QMedidasUnidadID: TStringField
      FieldName = 'UnidadID'
      Size = 1
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 352
    Top = 216
    object Buscarproductoenellistado1: TMenuItem
      Caption = 'Buscar producto en el listado'
      OnClick = Buscarproductoenellistado1Click
    end
    object Pantalladeproductos1: TMenuItem
      Caption = 'Pantalla de productos'
      OnClick = Pantalladeproductos1Click
    end
  end
end
