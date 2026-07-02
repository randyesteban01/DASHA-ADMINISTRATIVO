object frmConsFacturas: TfrmConsFacturas
  Left = 502
  Top = 122
  ActiveControl = edTipo
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Listado de Facturas'
  ClientHeight = 498
  ClientWidth = 944
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
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 314
    Width = 944
    Height = 4
    Cursor = crVSplit
    Align = alTop
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 944
    Height = 152
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 32
      Width = 42
      Height = 13
      Caption = 'Tipo fac.'
    end
    object btTipo: TSpeedButton
      Left = 94
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
    object Label2: TLabel
      Left = 315
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object SpeedButton2: TSpeedButton
      Left = 404
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
      OnClick = SpeedButton2Click
    end
    object Label12: TLabel
      Left = 8
      Top = 56
      Width = 46
      Height = 13
      Caption = 'Vendedor'
    end
    object btVendedor: TSpeedButton
      Left = 94
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
      Left = 315
      Top = 80
      Width = 46
      Height = 13
      Caption = 'Condici'#243'n'
    end
    object btCondi: TSpeedButton
      Left = 404
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
      OnClick = btCondiClick
    end
    object Label3: TLabel
      Left = 315
      Top = 56
      Width = 32
      Height = 13
      Caption = 'Cajero'
    end
    object SpeedButton1: TSpeedButton
      Left = 404
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
      OnClick = SpeedButton1Click
    end
    object Label4: TLabel
      Left = 158
      Top = 128
      Width = 37
      Height = 13
      Caption = 'Nombre'
    end
    object Label5: TLabel
      Left = 605
      Top = 91
      Width = 59
      Height = 13
      Caption = 'Ordenar por'
    end
    object Label6: TLabel
      Left = 8
      Top = 104
      Width = 29
      Height = 13
      Caption = 'Fecha'
    end
    object Label7: TLabel
      Left = 315
      Top = 104
      Width = 36
      Height = 13
      Caption = 'Usuario'
    end
    object SpeedButton3: TSpeedButton
      Left = 404
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
      OnClick = SpeedButton3Click
    end
    object Label9: TLabel
      Left = 8
      Top = 128
      Width = 37
      Height = 13
      Caption = 'Factura'
    end
    object Label8: TLabel
      Left = 8
      Top = 8
      Width = 40
      Height = 13
      Caption = 'Sucursal'
    end
    object Label11: TLabel
      Left = 315
      Top = 32
      Width = 22
      Height = 13
      Caption = 'Caja'
    end
    object SpeedButton4: TSpeedButton
      Left = 404
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
      OnClick = SpeedButton4Click
    end
    object Label13: TLabel
      Left = 315
      Top = 128
      Width = 43
      Height = 13
      Caption = 'Provincia'
    end
    object btprovincia: TSpeedButton
      Left = 404
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
      OnClick = btprovinciaClick
    end
    object Label17: TLabel
      Left = 8
      Top = 80
      Width = 49
      Height = 13
      Caption = 'Tipo eNCF'
    end
    object SpeedButton5: TSpeedButton
      Left = 94
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
      OnClick = SpeedButton5Click
    end
    object cbGrupo: TRadioGroup
      Left = 608
      Top = 128
      Width = 57
      Height = 17
      Caption = 'Grupo'
      Items.Strings = (
        'A'
        'B'
        'Todas')
      TabOrder = 0
      OnClick = cbGrupoClick
    end
    object edTipo: TEdit
      Left = 58
      Top = 32
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
      TabOrder = 1
      OnChange = edTipoChange
      OnKeyDown = edTipoKeyDown
    end
    object tTipo: TEdit
      Left = 119
      Top = 32
      Width = 186
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
      TabOrder = 14
    end
    object edCliente: TEdit
      Left = 368
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
      TabOrder = 9
      OnChange = edClienteChange
      OnKeyDown = edClienteKeyDown
    end
    object tCliente: TEdit
      Left = 429
      Top = 8
      Width = 172
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
      TabOrder = 15
    end
    object tVendedor: TEdit
      Left = 119
      Top = 56
      Width = 186
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
      TabOrder = 16
    end
    object edVendedor: TEdit
      Left = 58
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
      TabOrder = 2
      OnChange = edVendedorChange
      OnKeyDown = edVendedorKeyDown
    end
    object tCondi: TEdit
      Left = 429
      Top = 80
      Width = 172
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
      TabOrder = 17
    end
    object edCondi: TEdit
      Left = 368
      Top = 80
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
      TabOrder = 10
      OnChange = edCondiChange
      OnKeyDown = edCondiKeyDown
    end
    object tCajero: TEdit
      Left = 429
      Top = 56
      Width = 172
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
      TabOrder = 18
    end
    object edCajero: TEdit
      Left = 368
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
      TabOrder = 3
      OnChange = edCajeroChange
      OnKeyDown = edCajeroKeyDown
    end
    object edNombre: TEdit
      Left = 206
      Top = 128
      Width = 99
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
      TabOrder = 8
    end
    object cbStatus: TRadioGroup
      Left = 606
      Top = 2
      Width = 84
      Height = 87
      Caption = 'Status'
      ItemIndex = 0
      Items.Strings = (
        'Todas'
        'Anuladas'
        'Pagadas'
        'Pendientes'
        'Vencidas')
      TabOrder = 19
      OnClick = cbStatusClick
    end
    object cbOrden: TComboBox
      Left = 607
      Top = 106
      Width = 81
      Height = 21
      BevelKind = bkSoft
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 13
      OnClick = cbOrdenClick
      Items.Strings = (
        'Numero'
        'Cliente'
        'Fecha'
        'NCF')
    end
    object Fecha1: TDateTimePicker
      Left = 58
      Top = 104
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
      TabOrder = 4
    end
    object Fecha2: TDateTimePicker
      Left = 138
      Top = 104
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
      TabOrder = 5
    end
    object tUsuario: TEdit
      Left = 429
      Top = 104
      Width = 172
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
    object edUsuario: TEdit
      Left = 368
      Top = 104
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
      TabOrder = 11
      OnChange = edUsuarioChange
      OnKeyDown = edUsuarioKeyDown
    end
    object edFac1: TEdit
      Left = 58
      Top = 128
      Width = 47
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
    end
    object edFac2: TEdit
      Left = 106
      Top = 128
      Width = 47
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
      TabOrder = 7
    end
    object ckrango: TCheckBox
      Left = 224
      Top = 104
      Width = 81
      Height = 17
      Caption = 'Utiliza rango'
      Checked = True
      State = cbChecked
      TabOrder = 21
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 58
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
      TabOrder = 22
    end
    object tCaja: TEdit
      Left = 429
      Top = 32
      Width = 172
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
    object edCaja: TEdit
      Left = 368
      Top = 32
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
      TabOrder = 24
      OnChange = edCajaChange
      OnKeyDown = edCajaKeyDown
    end
    object tprovincia: TEdit
      Left = 429
      Top = 128
      Width = 172
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
      TabOrder = 25
    end
    object edProvincia: TEdit
      Left = 368
      Top = 128
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
      TabOrder = 12
      OnChange = edProvinciaChange
      OnKeyDown = edProvinciaKeyDown
    end
    object ttiponcf: TEdit
      Left = 119
      Top = 80
      Width = 186
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
    object edtiponcf: TEdit
      Left = 58
      Top = 80
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
      TabOrder = 27
      OnChange = edtiponcfChange
      OnKeyDown = edtiponcfKeyDown
    end
    object cbStatusDGII: TRadioGroup
      Left = 697
      Top = 3
      Width = 232
      Height = 75
      ItemIndex = 0
      Items.Strings = (
        'Todas'
        'Aceptada por DGII'
        'Rechazada por DGII'
        'Enviada (no procesada por DGII)')
      TabOrder = 28
      OnClick = cbStatusClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 458
    Width = 944
    Height = 40
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      944
      40)
    object lbCantidad: TLabel
      Left = 8
      Top = 13
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
    object BitBtn2: TBitBtn
      Left = 780
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Listado'
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
      Left = 620
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Refrescar >>'
      TabOrder = 1
      OnClick = btRefreshClick
    end
    object btClose: TBitBtn
      Left = 860
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
    object BitBtn1: TBitBtn
      Left = 700
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Factura'
      TabOrder = 3
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
    object ProgressBar1: TProgressBar
      Left = 144
      Top = 12
      Width = 193
      Height = 17
      TabOrder = 4
      Visible = False
    end
    object btnEmail: TBitBtn
      Left = 529
      Top = 8
      Width = 85
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '@ Correo'
      TabOrder = 5
      OnClick = btnEmailClick
    end
    object btnEnviarDGII: TBitBtn
      Left = 427
      Top = 8
      Width = 95
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Enviar DGII >>'
      TabOrder = 6
      OnClick = btnEnviarDGIIClick
    end
    object btnEnviarDGIIMasivo: TBitBtn
      Left = 301
      Top = 9
      Width = 118
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Enviar todas DGII >>'
      TabOrder = 7
      OnClick = btnEnviarDGIIMasivoClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 152
    Width = 944
    Height = 162
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
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
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FAC_FORMA'
        Title.Alignment = taCenter
        Title.Caption = 'Grupo'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TFA_CODIGO'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo'
        Width = 26
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FAC_NUMERO'
        Title.Alignment = taCenter
        Title.Caption = '# Factura'
        Width = 53
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FAC_FECHA'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha'
        Width = 62
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FAC_VENCE'
        Title.Alignment = taCenter
        Title.Caption = 'Vence'
        Width = 58
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FAC_CUOTAS'
        Title.Alignment = taCenter
        Title.Caption = '#Cuotas'
        Width = 51
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NCF'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fac_rnc'
        Title.Alignment = taCenter
        Title.Caption = 'RNC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FAC_NOMBRE'
        Title.Caption = 'Nombre del Cliente'
        Width = 259
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TipoPago'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fac_tasa'
        Title.Alignment = taCenter
        Title.Caption = 'Tasa'
        Width = 33
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FAC_DESCUENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Desc.Items'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'monto_exento'
        Title.Alignment = taCenter
        Title.Caption = 'Exento'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Grabado'
        Title.Alignment = taCenter
        Title.Caption = 'Gravado'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tdesc_gral'
        Title.Alignment = taCenter
        Title.Caption = 'Desc. Gral'
        Width = 79
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'FAC_ITBIS'
        Title.Alignment = taCenter
        Title.Caption = 'ITBIS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RECARGO'
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FAC_TOTAL'
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Width = 118
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fac_selectivo_ad'
        Title.Alignment = taCenter
        Title.Caption = 'Selectivo Ad.'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fac_selectivo_con'
        Title.Alignment = taCenter
        Title.Caption = 'Selectivo Con.'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FAC_ABONO'
        Title.Alignment = taCenter
        Title.Caption = 'Abono'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fac_interes'
        Title.Alignment = taCenter
        Title.Caption = '% Interes'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FAC_DEVUELTO'
        Title.Alignment = taCenter
        Title.Caption = 'Devuelto'
        Width = 89
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
        FieldName = 'ven_nombre'
        Title.Caption = 'Vendedor'
        Width = 137
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Caja'
        Width = 134
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAJ_NOMBRE'
        Title.Caption = 'Cajero'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_NOMBRE'
        Title.Caption = 'Usuario'
        Width = 101
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PED_NUMERO'
        Title.Alignment = taCenter
        Title.Caption = '# Pedido'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CON_NUMERO'
        Title.Alignment = taCenter
        Title.Caption = '# Conduce'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'COT_NUMERO'
        Title.Alignment = taCenter
        Title.Caption = '# Cotizaci'#243'n'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fac_usuario_anulo'
        Title.Caption = 'USU_ANULO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Error_DGII'
        Visible = False
      end>
  end
  object Memo1: TMemo
    Left = 24
    Top = 192
    Width = 505
    Height = 41
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
    Visible = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 318
    Width = 944
    Height = 140
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    MultiLine = True
    ParentFont = False
    TabOrder = 4
    TabPosition = tpBottom
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Detalle'
      object Grid: TDBGrid
        Left = 0
        Top = 0
        Width = 936
        Height = 114
        Align = alClient
        Ctl3D = False
        DataSource = dsDetalle
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgCancelOnExit]
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
            FieldName = 'PRO_CODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 118
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'PRO_NOMBRE'
            Title.Caption = 'Descripci'#243'n del Producto'
            Width = 257
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DET_CANTIDAD'
            Title.Alignment = taCenter
            Title.Caption = 'Facturado'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DET_CANTDEVUELTA'
            Title.Alignment = taCenter
            Title.Caption = 'Devuelto'
            Width = 47
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
            FieldName = 'UnidadMedida'
            Title.Alignment = taCenter
            Title.Caption = 'Medida'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'det_cant_oferta'
            Title.Alignment = taCenter
            Title.Caption = 'Oferta'
            Width = 50
            Visible = True
          end
          item
            Alignment = taCenter
            Color = clInfoBk
            Expanded = False
            FieldName = 'DET_ESCALA'
            Title.Alignment = taCenter
            Title.Caption = 'Escala'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DET_PRECIO'
            Title.Alignment = taCenter
            Title.Caption = 'Precio'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DET_DESCUENTO'
            Title.Alignment = taCenter
            Title.Caption = '%Desc'
            Width = 36
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CalcItbis'
            Title.Alignment = taCenter
            Title.Caption = 'Itbis'
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor'
            Title.Alignment = taCenter
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DET_COMISION'
            Title.Alignment = taCenter
            Title.Caption = '%Comisi'#243'n'
            Width = 56
            Visible = True
          end>
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Formas de Pago'
      ImageIndex = 4
      object DBGrid5: TDBGrid
        Left = 0
        Top = 0
        Width = 1068
        Height = 114
        Align = alClient
        Color = clInfoBk
        Ctl3D = False
        DataSource = dsFroma
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
        OnDrawColumnCell = DBGrid2DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'FPA_NOMBRE'
            Title.Caption = 'Forma de pago'
            Width = 219
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_MONTO'
            Title.Alignment = taCenter
            Title.Caption = 'Monto'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOR_DESCRIPCION'
            Title.Caption = 'Descripci'#243'n'
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Cuotas'
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 1068
        Height = 114
        Align = alClient
        Color = clInfoBk
        Ctl3D = False
        DataSource = dsCuotas
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
        OnDrawColumnCell = DBGrid2DrawColumnCell
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'MOV_SECUENCIA'
            Title.Alignment = taCenter
            Title.Caption = 'Cuota #'
            Width = 56
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'MOV_FECHA'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 63
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'MOV_FECHAVENCE'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha vence'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MOV_MONTO'
            Title.Alignment = taCenter
            Title.Caption = 'Monto'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MOV_ABONO'
            Title.Alignment = taCenter
            Title.Caption = 'Abono'
            Width = 72
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'MOV_STATUS'
            Title.Alignment = taCenter
            Title.Caption = 'Status'
            Width = 39
            Visible = True
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Pagos / NC'
      ImageIndex = 2
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 1068
        Height = 114
        Align = alClient
        Color = clInfoBk
        Ctl3D = False
        DataSource = dsPagos
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'MOV_TIPO'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'MOV_NUMERO'
            Title.Alignment = taCenter
            Title.Caption = 'N'#250'mero'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'MOV_FECHA'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MOV_MONTO'
            Title.Alignment = taCenter
            Title.Caption = 'Monto'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MOV_CONCEPTO'
            Title.Caption = 'Concepto'
            Visible = True
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Devoluciones'
      ImageIndex = 3
      object DBGrid4: TDBGrid
        Left = 0
        Top = 0
        Width = 1118
        Height = 89
        Align = alClient
        Color = clInfoBk
        Ctl3D = False
        DataSource = dsDev
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'DEV_NUMERO'
            Title.Alignment = taCenter
            Title.Caption = 'Devoluci'#243'n#'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_NOMBRE'
            Title.Caption = 'Descripci'#243'n del Producto'
            Width = 183
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PrecioItbis'
            Title.Alignment = taCenter
            Title.Caption = 'Precio Bto.'
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CalcDesc'
            Title.Alignment = taCenter
            Title.Caption = 'Desc.'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CalcItbis'
            Title.Alignment = taCenter
            Title.Caption = 'Itbis'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Neto'
            Title.Alignment = taCenter
            Title.Caption = 'Precio Nto.'
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DEV_CANTIDAD'
            Title.Alignment = taCenter
            Title.Caption = 'Cant.'
            Width = 31
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'DET_ESCALA'
            Title.Alignment = taCenter
            Title.Caption = 'Escala'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Receta de Optica'
      ImageIndex = 5
      object DBGrid6: TDBGrid
        Left = 0
        Top = 0
        Width = 684
        Height = 89
        Align = alClient
        Color = clInfoBk
        Ctl3D = False
        DataSource = dsReceta
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
            FieldName = 'det_tipo'
            Width = 31
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'det_esf'
            Title.Alignment = taCenter
            Title.Caption = 'ESF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'det_cil'
            Title.Alignment = taCenter
            Title.Caption = 'CLI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'det_eje'
            Title.Alignment = taCenter
            Title.Caption = 'EJE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'det_add'
            Title.Alignment = taCenter
            Title.Caption = 'ADD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'det_dist'
            Title.Alignment = taCenter
            Title.Caption = 'DIST'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'det_alt'
            Title.Alignment = taCenter
            Title.Caption = 'ALT'
            Visible = True
          end>
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Cuentas contables'
      ImageIndex = 6
      DesignSize = (
        936
        114)
      object Label14: TLabel
        Left = 779
        Top = 1
        Width = 40
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Cr'#233'ditos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 779
        Top = 17
        Width = 36
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'D'#233'bitos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 779
        Top = 33
        Width = 37
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Balance'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object GridCuentas: TDBGrid
        Left = 30
        Top = 0
        Width = 743
        Height = 114
        Align = alLeft
        Anchors = [akLeft, akTop, akRight, akBottom]
        Ctl3D = False
        DataSource = dsCuentas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
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
            Width = 75
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'cat_nombre'
            ReadOnly = True
            Title.Caption = 'Nombre de la Cuenta'
            Width = 375
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'det_origen'
            Title.Alignment = taCenter
            Title.Caption = 'Origen'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'det_monto'
            Title.Alignment = taCenter
            Title.Caption = 'Monto'
            Width = 80
            Visible = True
          end>
      end
      object lbCR: TStaticText
        Left = 833
        Top = 1
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
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object lbDB: TStaticText
        Left = 833
        Top = 17
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
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object lbBAL: TStaticText
        Left = 833
        Top = 33
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
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 30
        Height = 114
        Align = alLeft
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 4
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
      object btcodificar: TBitBtn
        Left = 776
        Top = 52
        Width = 159
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Codificar Autom'#225'ticamente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnClick = btcodificarClick
      end
    end
    object TabSheet8: TTabSheet
      Caption = '# de Serie'
      ImageIndex = 7
      object DBGrid7: TDBGrid
        Left = 0
        Top = 0
        Width = 1118
        Height = 89
        Align = alClient
        Color = clInfoBk
        Ctl3D = False
        DataSource = dsSerie
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
            Title.Caption = 'Nombre del Producto'
            Width = 440
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ser_numero'
            Title.Caption = '# de Serie'
            Width = 135
            Visible = True
          end>
      end
    end
  end
  object mmo1: TMemo
    Left = 24
    Top = 384
    Width = 185
    Height = 89
    Lines.Strings = (
      'mmo1')
    TabOrder = 5
    Visible = False
  end
  object pnCorreo: TPanel
    Left = 482
    Top = 334
    Width = 185
    Height = 41
    Caption = 'Enviando correo, favor espere......'
    TabOrder = 6
    Visible = False
  end
  object QFacturas: TADOQuery
    Connection = DM.ADOSigma
    BeforeOpen = QFacturasBeforeOpen
    AfterOpen = QFacturasAfterOpen
    AfterScroll = QFacturasAfterScroll
    OnCalcFields = QFacturasCalcFields
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
        Name = 'suc_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT '
      'fac_caja, pro_codigo,'
      'ALM_CODIGO, CAJ_CODIGO, CLI_CODIGO, CLI_REFERENCIA, tdesc_gral,'
      'COT_NUMERO, CPA_CODIGO, EMP_CODIGO, FAC_ABONO,'
      'FAC_DESCUENTO, FAC_DIRECCION, FAC_FAX, FAC_FECHA,'
      'FAC_FORMA, FAC_ITBIS, FAC_LOCALIDAD, FAC_NOMBRE,'
      'FAC_NUMERO, FAC_OTROS, FAC_STATUS,'
      'FAC_TELEFONO, FAC_TOTAL, PED_NUMERO, TFA_CODIGO,'
      'USU_CODIGO, VEN_CODIGO, usu_nombre,'
      'FechaLimitePago fac_vence, FAC_COMISION, FAC_CUOTAS,'
      'con_numero, fac_devuelto, suc_codigo, fac_conitbis,'
      'Caja, NCF_Fijo, NCF_Secuencia, CAJ_NOMBRE,'
      'fac_selectivo_ad, fac_selectivo_con, ven_nombre, fac_rnc,'
      
        'fac_domicilio, fac_tasa, tfa_actbalance, fac_interes, tip_codigo' +
        ','
      
        'isnull(sum(monto_grabado_noincluido),0) monto_grabado_noincluido' +
        ','
      'isnull(sum(monto_grabado_incluido),0) as monto_grabado_incluido,'
      'isnull(sum(monto_exento),0) as monto_exento, PROPINA,'
      'FAC_PROYECTO, FAC_SERVICIOS, fac_usuario_anulo,'
      
        '(ISNULL(FAC_TOTAL,0)-ISNULL(FAC_ITBIS,0)+ISNULL(fac_descuento,0)' +
        ') SUB_TOTAL,'
      'RECARGO,Error_DGII,emp_rnc, cli_rnc, '
      'ISNULL(eNCF,'
      '  CASE '
      '    WHEN NCF_Fijo IS NOT NULL AND LTRIM(RTRIM(NCF_Fijo)) <> '#39#39
      '    THEN LTRIM(RTRIM(NCF_Fijo)) +'
      '         CASE'
      
        '           WHEN LEN(CAST(ISNULL(NCF_Secuencia,0) AS varchar(50))' +
        ') < 8'
      
        '             THEN REPLICATE('#39'0'#39', 8 - LEN(CAST(ISNULL(NCF_Secuenc' +
        'ia,0) AS varchar(50))))'
      '                  + CAST(ISNULL(NCF_Secuencia,0) AS varchar(50))'
      '           ELSE CAST(ISNULL(NCF_Secuencia,0) AS varchar(50))'
      '         END'
      '    ELSE '#39#39
      '  END) as eNCF,'
      ''
      ' cod_dgii, Enviado_DGII, AceptadoDGII'
      'FROM('
      'select '
      'f.fac_caja, f.pro_codigo, tdesc_gral,'
      'f.ALM_CODIGO, f.CAJ_CODIGO, f.CLI_CODIGO, f.CLI_REFERENCIA,'
      'f.COT_NUMERO, f.CPA_CODIGO, f.EMP_CODIGO, f.FAC_ABONO,'
      'f.FAC_DESCUENTO, f.FAC_DIRECCION, f.FAC_FAX, f.FAC_FECHA,'
      'f.FAC_FORMA, f.FAC_ITBIS, f.FAC_LOCALIDAD, f.FAC_NOMBRE,'
      'f.FAC_NUMERO, f.FAC_OTROS, f.FAC_STATUS,'
      'f.FAC_TELEFONO, f.FAC_TOTAL, f.PED_NUMERO, f.TFA_CODIGO,'
      'f.USU_CODIGO, f.VEN_CODIGO, usu_nombre,'
      'f.FechaLimitePago, f.FAC_COMISION, f.FAC_CUOTAS,'
      'f.con_numero, f.fac_devuelto, f.suc_codigo, f.fac_conitbis,'
      
        'c.caj_nombre as Caja, f.NCF_Fijo, f.NCF_Secuencia, j.CAJ_NOMBRE,' +
        ' '
      'f.fac_selectivo_ad, f.fac_selectivo_con, ven_nombre, f.fac_rnc,'
      
        'f.fac_domicilio, f.fac_tasa, tfa_actbalance, f.fac_interes, f.ti' +
        'p_codigo,'
      ''
      'isnull('
      
        'case WHEN emp_rnc in ('#39'105081105'#39','#39'131861717'#39') and F.fac_itbis>0' +
        ' and (p.par_itbisincluido = '#39'True'#39') then (det_cantidad*det_preci' +
        'o)/(1+(det_itbis/100)) '
      
        'WHEN emp_rnc in ('#39'105081105'#39','#39'131861717'#39') and F.fac_itbis>0 and ' +
        '(p.par_itbisincluido = '#39'False'#39') then  (det_cantidad*det_precio) ' +
        ' '
      
        'ELSE case when ((det_itbis > 0) and (p.par_itbisincluido = '#39'True' +
        #39') and (det_itbis > 0)) then (det_cantidad*det_precio)/(1+(det_i' +
        'tbis/100)) '
      
        '            when ((det_itbis > 0) and (p.par_itbisincluido = '#39'Fa' +
        'lse'#39') and (det_itbis > 0)) then (det_cantidad*det_precio) '
      '            else 0 end end,0) monto_grabado_noincluido,'
      ''
      'isnull('
      
        'case WHEN emp_rnc in ('#39'105081105'#39','#39'131861717'#39') and F.fac_itbis>0' +
        ' and (p.par_itbisincluido = '#39'True'#39') then (det_cantidad*det_preci' +
        'o)'
      
        'WHEN emp_rnc in ('#39'105081105'#39','#39'131861717'#39') and F.fac_itbis>0 and ' +
        '(p.par_itbisincluido = '#39'False'#39') then  (det_cantidad*det_precio)*' +
        '(1+(det_itbis/100)) '
      ''
      
        'else case when ((det_itbis > 0) and (p.par_itbisincluido = '#39'True' +
        #39') and (det_itbis > 0)) then (det_cantidad*det_precio) '
      
        '            when ((det_itbis > 0) and (p.par_itbisincluido = '#39'Fa' +
        'lse'#39') and (det_itbis > 0)) then (det_cantidad*det_precio)*(1+(de' +
        't_itbis/100)) '
      #9#9#9'ELSE 0 end end,0) as monto_grabado_incluido,'
      'isnull('
      
        'CASE  WHEN emp_rnc in ('#39'105081105'#39','#39'131861717'#39') and fac_itbis>0 ' +
        'then 0 ELSE'
      
        'case when ((p.par_itbisincluido = '#39'True'#39') and (det_itbis = 0)) t' +
        'hen (det_cantidad*det_precio) '
      
        '            when ((p.par_itbisincluido = '#39'False'#39') and (det_itbis' +
        ' = 0)) then (det_cantidad*det_precio) '
      '            else 0 end end,0) as monto_exento,'
      ''
      'F.FAC_NOTA, ISNULL(F.FAC_PROPINA,0) PROPINA,'
      
        '(FAC_TOTAL*0.88231827112) FAC_PROYECTO, (FAC_TOTAL*0.10) FAC_SER' +
        'VICIOS,'
      'fac_usuario_anulo,'
      
        'ISNULL(F.RECARGO,0) RECARGO, Error_DGII, e.emp_rnc, cl.cli_rnc, ' +
        'eNCF, ti.cod_dgii,  f.Enviado_DGII, f.AceptadoDGII'
      'from'
      'facturas f '
      
        'LEFT join det_factura df on f.emp_codigo=df.emp_codigo and f.suc' +
        '_codigo=df.suc_codigo and '
      
        'f.fac_forma=df.fac_forma and f.tfa_codigo=df.tfa_codigo and f.fa' +
        'c_numero=df.fac_numero'
      'inner join parametros p on f.emp_codigo =p.emp_codigo'
      
        'inner join TiposFactura t on (f.emp_codigo = t.emp_codigo and f.' +
        'tfa_codigo = t.tfa_codigo)'
      
        'inner join vendedores v on (f.emp_codigo = v.emp_codigo and f.ve' +
        'n_codigo = v.ven_codigo)'
      'INNER JOIN usuarios u ON f.usu_codigo = u.usu_codigo'
      
        'INNER JOIN cajeros j ON f.emp_codigo = j.emp_codigo and  f.caj_c' +
        'odigo = j.caj_codigo '
      
        'INNER JOIN cajas c ON f.emp_codigo = c.emp_codigo and f.fac_caja' +
        ' = c.caj_codigo  '
      'INNER JOIN Empresas e ON e.emp_codigo=f.emp_codigo'
      
        'left join Clientes cl on cl.cli_codigo=f.cli_codigo and f.emp_co' +
        'digo= cl.emp_codigo'
      
        'left join TipoNCF ti on ti.tip_codigo=f.tip_codigo AND ti.emp_co' +
        'digo=f.emp_codigo'
      ''
      'where f.usu_codigo = f.usu_codigo'
      'and f.emp_codigo = f.emp_codigo'
      'and f.emp_codigo = :emp'
      'and f.suc_codigo = :suc_codigo'
      'and f.tfa_codigo > 0'
      'and f.fac_forma is not null) AS TEMP'
      'WHERE 1=1 ')
    Left = 232
    Top = 184
    object QFacturasALM_CODIGO: TIntegerField
      FieldName = 'ALM_CODIGO'
      Origin = 'FACTURAS.ALM_CODIGO'
    end
    object QFacturasCAJ_CODIGO: TIntegerField
      FieldName = 'CAJ_CODIGO'
      Origin = 'FACTURAS.CAJ_CODIGO'
    end
    object QFacturasCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = 'FACTURAS.CLI_CODIGO'
    end
    object QFacturasCLI_REFERENCIA: TIBStringField
      FieldName = 'CLI_REFERENCIA'
      Origin = 'FACTURAS.CLI_REFERENCIA'
      Size = 10
    end
    object QFacturasCOT_NUMERO: TIntegerField
      FieldName = 'COT_NUMERO'
      Origin = 'FACTURAS.COT_NUMERO'
      DisplayFormat = '00000'
    end
    object QFacturasCPA_CODIGO: TIntegerField
      FieldName = 'CPA_CODIGO'
      Origin = 'FACTURAS.CPA_CODIGO'
    end
    object QFacturasEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'FACTURAS.EMP_CODIGO'
      Required = True
    end
    object QFacturasFAC_ABONO: TFloatField
      FieldName = 'FAC_ABONO'
      Origin = 'FACTURAS.FAC_ABONO'
      currency = True
    end
    object QFacturasFAC_DESCUENTO: TFloatField
      FieldName = 'FAC_DESCUENTO'
      Origin = 'FACTURAS.FAC_DESCUENTO'
      currency = True
    end
    object QFacturasFAC_DIRECCION: TIBStringField
      FieldName = 'FAC_DIRECCION'
      Origin = 'FACTURAS.FAC_DIRECCION'
      Size = 60
    end
    object QFacturasFAC_FAX: TIBStringField
      FieldName = 'FAC_FAX'
      Origin = 'FACTURAS.FAC_FAX'
      Size = 13
    end
    object QFacturasFAC_FECHA: TDateTimeField
      FieldName = 'FAC_FECHA'
      Origin = 'FACTURAS.FAC_FECHA'
    end
    object QFacturasFAC_FORMA: TIBStringField
      FieldName = 'FAC_FORMA'
      Origin = 'FACTURAS.FAC_FORMA'
      Required = True
      Size = 1
    end
    object QFacturasFAC_ITBIS: TFloatField
      FieldName = 'FAC_ITBIS'
      Origin = 'FACTURAS.FAC_ITBIS'
      currency = True
    end
    object QFacturasFAC_LOCALIDAD: TIBStringField
      FieldName = 'FAC_LOCALIDAD'
      Origin = 'FACTURAS.FAC_LOCALIDAD'
      Size = 60
    end
    object QFacturasFAC_NOMBRE: TIBStringField
      FieldName = 'FAC_NOMBRE'
      Origin = 'FACTURAS.FAC_NOMBRE'
      Size = 60
    end
    object QFacturasFAC_NUMERO: TIntegerField
      FieldName = 'FAC_NUMERO'
      Origin = 'FACTURAS.FAC_NUMERO'
      Required = True
      DisplayFormat = '000000'
    end
    object QFacturasFAC_OTROS: TFloatField
      FieldName = 'FAC_OTROS'
      Origin = 'FACTURAS.FAC_OTROS'
      currency = True
    end
    object QFacturasFAC_STATUS: TIBStringField
      FieldName = 'FAC_STATUS'
      Origin = 'FACTURAS.FAC_STATUS'
      Size = 3
    end
    object QFacturasFAC_TELEFONO: TIBStringField
      FieldName = 'FAC_TELEFONO'
      Origin = 'FACTURAS.FAC_TELEFONO'
      Size = 13
    end
    object QFacturasFAC_TOTAL: TFloatField
      FieldName = 'FAC_TOTAL'
      Origin = 'FACTURAS.FAC_TOTAL'
      currency = True
    end
    object QFacturasPED_NUMERO: TIntegerField
      FieldName = 'PED_NUMERO'
      Origin = 'FACTURAS.PED_NUMERO'
      DisplayFormat = '00000'
    end
    object QFacturasTFA_CODIGO: TIntegerField
      FieldName = 'TFA_CODIGO'
      Origin = 'FACTURAS.TFA_CODIGO'
      Required = True
    end
    object QFacturasUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Origin = 'FACTURAS.USU_CODIGO'
    end
    object QFacturasVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
      Origin = 'FACTURAS.VEN_CODIGO'
    end
    object QFacturasUSU_NOMBRE: TIBStringField
      FieldName = 'USU_NOMBRE'
      Origin = 'USUARIOS.USU_NOMBRE'
      Size = 60
    end
    object QFacturasCAJ_NOMBRE: TIBStringField
      FieldName = 'CAJ_NOMBRE'
      Origin = 'CAJEROS.CAJ_NOMBRE'
      Size = 60
    end
    object QFacturasFAC_VENCE: TDateTimeField
      FieldName = 'FAC_VENCE'
      Origin = 'FACTURAS.FAC_VENCE'
    end
    object QFacturasFAC_COMISION: TFloatField
      FieldName = 'FAC_COMISION'
      Origin = 'FACTURAS.FAC_COMISION'
      currency = True
    end
    object QFacturasFAC_CUOTAS: TIntegerField
      FieldName = 'FAC_CUOTAS'
      Origin = 'FACTURAS.FAC_CUOTAS'
    end
    object QFacturasCON_NUMERO: TIntegerField
      FieldName = 'CON_NUMERO'
      Origin = 'FACTURAS.CON_NUMERO'
      DisplayFormat = '00000'
    end
    object QFacturasFAC_DEVUELTO: TFloatField
      FieldName = 'FAC_DEVUELTO'
      Origin = 'FACTURAS.FAC_DEVUELTO'
      currency = True
    end
    object QFacturassuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QFacturasfac_conitbis: TStringField
      FieldName = 'fac_conitbis'
      Size = 5
    end
    object QFacturasCaja: TStringField
      FieldName = 'Caja'
      Size = 60
    end
    object QFacturasNCF_Fijo: TStringField
      FieldName = 'NCF_Fijo'
      Size = 11
    end
    object QFacturasNCF_Secuencia: TBCDField
      FieldName = 'NCF_Secuencia'
      Precision = 18
      Size = 0
    end
    object QFacturasNCF: TStringField
      FieldKind = fkCalculated
      FieldName = 'NCF'
      Size = 19
      Calculated = True
    end
    object QFacturasfac_selectivo_ad: TBCDField
      FieldName = 'fac_selectivo_ad'
      currency = True
      Precision = 15
      Size = 2
    end
    object QFacturasfac_selectivo_con: TBCDField
      FieldName = 'fac_selectivo_con'
      currency = True
      Precision = 15
      Size = 2
    end
    object QFacturasGrabado: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Grabado'
      currency = True
      Calculated = True
    end
    object QFacturasExento: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Exento'
      currency = True
      Calculated = True
    end
    object QFacturasven_nombre: TStringField
      FieldName = 'ven_nombre'
      Size = 60
    end
    object QFacturasfac_rnc: TStringField
      FieldName = 'fac_rnc'
      Size = 13
    end
    object QFacturasfac_domicilio: TStringField
      FieldName = 'fac_domicilio'
      Size = 5
    end
    object QFacturasfac_tasa: TBCDField
      FieldName = 'fac_tasa'
      currency = True
      Precision = 15
      Size = 2
    end
    object QFacturastfa_actbalance: TStringField
      FieldName = 'tfa_actbalance'
      Size = 5
    end
    object QFacturasfac_interes: TBCDField
      FieldName = 'fac_interes'
      Precision = 8
      Size = 2
    end
    object QFacturastip_codigo: TIntegerField
      FieldName = 'tip_codigo'
    end
    object QFacturasmonto_exento: TBCDField
      FieldName = 'monto_exento'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 6
    end
    object QFacturasmonto_grabado_noincluido: TBCDField
      FieldName = 'monto_grabado_noincluido'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
    object QFacturasmonto_grabado_incluido: TBCDField
      FieldName = 'monto_grabado_incluido'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
    object QFacturasfac_caja: TIntegerField
      FieldName = 'fac_caja'
    end
    object QFacturasPROPINA: TCurrencyField
      FieldName = 'PROPINA'
    end
    object QFacturasFAC_PROYECTO: TFloatField
      FieldName = 'FAC_PROYECTO'
      DisplayFormat = '#,0.0000'
    end
    object QFacturasFAC_SERVICIOS: TFloatField
      FieldName = 'FAC_SERVICIOS'
      DisplayFormat = '#,0.0000'
    end
    object QFacturasfac_usuario_anulo: TStringField
      FieldName = 'fac_usuario_anulo'
      Size = 30
    end
    object QFacturasSUB_TOTAL: TFloatField
      FieldName = 'SUB_TOTAL'
    end
    object QFacturastdesc_gral: TCurrencyField
      FieldName = 'tdesc_gral'
    end
    object QFacturasTipoPago: TStringField
      FieldKind = fkCalculated
      FieldName = 'TipoPago'
      Calculated = True
    end
    object QFacturasRECARGO: TCurrencyField
      FieldName = 'RECARGO'
    end
    object QFacturasError_DGII: TBooleanField
      FieldName = 'Error_DGII'
    end
    object QFacturasemp_rnc: TStringField
      FieldName = 'emp_rnc'
      Size = 50
    end
    object QFacturascli_rnc: TStringField
      FieldName = 'cli_rnc'
      Size = 50
    end
    object QFacturaseNCF: TStringField
      FieldName = 'eNCF'
      Size = 60
    end
    object QFacturascod_dgii: TIntegerField
      FieldName = 'cod_dgii'
    end
    object QFacturasEnviado_DGII: TBooleanField
      FieldName = 'Enviado_DGII'
    end
    object QFacturasAceptadoDGII: TBooleanField
      FieldName = 'AceptadoDGII'
    end
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
    OnCalcFields = QDetalleCalcFields
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
        Name = 'fac_forma'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'tfa_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'fac_numero'
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
      end>
    SQL.Strings = (
      'select '
      'DET_CANTDEVUELTA, DET_CANTIDAD, DET_CONITBIS, '
      'DET_COSTO, DET_DESCUENTO, DET_ITBIS, DET_PRECIO, '
      'DET_SECUENCIA, DET_STATUS, EMP_CODIGO, FAC_FORMA, '
      'FAC_NUMERO, PRO_BARRA, PRO_CODIGO, PRO_NOMBRE, '
      'PRO_RFABRIC, PRO_RORIGINAL, TFA_CODIGO, '
      'DET_COMISION, DET_ESCALA, DET_MEDIDA, suc_codigo,'
      'det_selectivo_ad, det_selectivo_con, UnidadID,'
      'isnull(det_cant_unidad_medida,1) as det_cant_unidad_medida,'
      'isnull(det_cant_oferta,0) as det_cant_oferta'
      'from '
      'DET_FACTURA'
      'where '
      'emp_codigo = :emp_codigo'
      'and fac_forma = :fac_forma'
      'and tfa_codigo = :tfa_codigo'
      'and fac_numero = :fac_numero'
      'and suc_codigo = :suc_codigo'
      'and det_secuencia > 0'
      'order by '
      'det_secuencia')
    Left = 232
    Top = 216
    object QDetalleDET_CANTDEVUELTA: TFloatField
      FieldName = 'DET_CANTDEVUELTA'
      Origin = 'DET_FACTURA.DET_CANTDEVUELTA'
    end
    object QDetalleDET_CANTIDAD: TFloatField
      FieldName = 'DET_CANTIDAD'
      Origin = 'DET_FACTURA.DET_CANTIDAD'
    end
    object QDetalleDET_CONITBIS: TIBStringField
      FieldName = 'DET_CONITBIS'
      Origin = 'DET_FACTURA.DET_CONITBIS'
      Size = 1
    end
    object QDetalleDET_COSTO: TFloatField
      FieldName = 'DET_COSTO'
      Origin = 'DET_FACTURA.DET_COSTO'
    end
    object QDetalleDET_DESCUENTO: TFloatField
      FieldName = 'DET_DESCUENTO'
      Origin = 'DET_FACTURA.DET_DESCUENTO'
    end
    object QDetalleDET_ITBIS: TFloatField
      FieldName = 'DET_ITBIS'
      Origin = 'DET_FACTURA.DET_ITBIS'
      currency = True
    end
    object QDetalleDET_PRECIO: TFloatField
      FieldName = 'DET_PRECIO'
      Origin = 'DET_FACTURA.DET_PRECIO'
      currency = True
    end
    object QDetalleDET_SECUENCIA: TIntegerField
      FieldName = 'DET_SECUENCIA'
      Origin = 'DET_FACTURA.DET_SECUENCIA'
      Required = True
    end
    object QDetalleDET_STATUS: TIBStringField
      FieldName = 'DET_STATUS'
      Origin = 'DET_FACTURA.DET_STATUS'
      Size = 3
    end
    object QDetalleEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'DET_FACTURA.EMP_CODIGO'
      Required = True
    end
    object QDetalleFAC_FORMA: TIBStringField
      FieldName = 'FAC_FORMA'
      Origin = 'DET_FACTURA.FAC_FORMA'
      Required = True
      Size = 1
    end
    object QDetalleFAC_NUMERO: TIntegerField
      FieldName = 'FAC_NUMERO'
      Origin = 'DET_FACTURA.FAC_NUMERO'
      Required = True
    end
    object QDetallePRO_BARRA: TIBStringField
      FieldName = 'PRO_BARRA'
      Origin = 'DET_FACTURA.PRO_BARRA'
      Size = 30
    end
    object QDetallePRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'DET_FACTURA.PRO_CODIGO'
    end
    object QDetallePRO_NOMBRE: TIBStringField
      FieldName = 'PRO_NOMBRE'
      Origin = 'DET_FACTURA.PRO_NOMBRE'
      Size = 1000
    end
    object QDetallePRO_RFABRIC: TIBStringField
      FieldName = 'PRO_RFABRIC'
      Origin = 'DET_FACTURA.PRO_RFABRIC'
      Size = 60
    end
    object QDetallePRO_RORIGINAL: TIBStringField
      FieldName = 'PRO_RORIGINAL'
      Origin = 'DET_FACTURA.PRO_RORIGINAL'
      Size = 50
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
    object QDetallePrecioItbis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PrecioItbis'
      DisplayFormat = '###,###,###.0000'
      Calculated = True
    end
    object QDetalleValor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor'
      currency = True
      Calculated = True
    end
    object QDetalleTFA_CODIGO: TIntegerField
      FieldName = 'TFA_CODIGO'
      Origin = 'DET_FACTURA.TFA_CODIGO'
      Required = True
    end
    object QDetalleDET_COMISION: TFloatField
      FieldName = 'DET_COMISION'
      Origin = 'DET_FACTURA.DET_COMISION'
      currency = True
    end
    object QDetalleDET_ESCALA: TIBStringField
      FieldName = 'DET_ESCALA'
      Origin = 'DET_FACTURA.DET_ESCALA'
      Size = 5
    end
    object QDetalleDET_MEDIDA: TIBStringField
      FieldName = 'DET_MEDIDA'
      Origin = 'DET_FACTURA.DET_MEDIDA'
      Size = 3
    end
    object QDetallesuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
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
    object QDetalleUnidadID: TStringField
      FieldName = 'UnidadID'
      Size = 1
    end
    object QDetalleUnidadMedida: TStringField
      FieldKind = fkLookup
      FieldName = 'UnidadMedida'
      LookupDataSet = QMedidas
      LookupKeyFields = 'UnidadID'
      LookupResultField = 'Nombre'
      KeyFields = 'UnidadID'
      Lookup = True
    end
    object QDetalledet_cant_unidad_medida: TBCDField
      FieldName = 'det_cant_unidad_medida'
      Precision = 18
      Size = 2
    end
    object QDetalledet_cant_oferta: TBCDField
      FieldName = 'det_cant_oferta'
      ReadOnly = True
      Precision = 15
      Size = 2
    end
  end
  object dsFacturas: TDataSource
    DataSet = QFacturas
    Left = 264
    Top = 184
  end
  object dsDetalle: TDataSource
    DataSet = QDetalle
    Left = 264
    Top = 216
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 128
    Top = 280
  end
  object QCuotas: TADOQuery
    Connection = DM.ADOSigma
    OnCalcFields = QCuotasCalcFields
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
        Name = 'suc_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'FAC_FORMA'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'TFA_CODIGO'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'FAC_NUMERO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'MOV_CUOTA, MOV_FECHA, MOV_FECHAVENCE, '
      'MOV_MONTO, MOV_ABONO, MOV_STATUS, '
      'MOV_SECUENCIA'
      'FROM'
      'MOVIMIENTOS'
      'WHERE'
      'EMP_CODIGO = :EMP_CODIGO'
      'and suc_codigo = :suc_codigo'
      'AND FAC_FORMA = :FAC_FORMA'
      'AND TFA_CODIGO = :TFA_CODIGO'
      'AND MOV_NUMERO = :FAC_NUMERO'
      'AND MOV_CUOTA = '#39'True'#39)
    Left = 312
    Top = 152
    object QCuotasMOV_CUOTA: TIBStringField
      FieldName = 'MOV_CUOTA'
      Origin = 'MOVIMIENTOS.MOV_CUOTA'
      Size = 5
    end
    object QCuotasMOV_FECHA: TDateTimeField
      FieldName = 'MOV_FECHA'
      Origin = 'MOVIMIENTOS.MOV_FECHA'
    end
    object QCuotasMOV_FECHAVENCE: TDateTimeField
      FieldName = 'MOV_FECHAVENCE'
      Origin = 'MOVIMIENTOS.MOV_FECHAVENCE'
    end
    object QCuotasMOV_MONTO: TFloatField
      FieldName = 'MOV_MONTO'
      Origin = 'MOVIMIENTOS.MOV_MONTO'
      currency = True
    end
    object QCuotasMOV_ABONO: TFloatField
      FieldName = 'MOV_ABONO'
      Origin = 'MOVIMIENTOS.MOV_ABONO'
      currency = True
    end
    object QCuotasMOV_STATUS: TIBStringField
      FieldName = 'MOV_STATUS'
      Origin = 'MOVIMIENTOS.MOV_STATUS'
      Size = 3
    end
    object QCuotasMOV_SECUENCIA: TIntegerField
      FieldName = 'MOV_SECUENCIA'
      Origin = 'MOVIMIENTOS.MOV_SECUENCIA'
      Required = True
      DisplayFormat = '00'
    end
    object QCuotasSaldo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Saldo'
      currency = True
      Calculated = True
    end
  end
  object dsCuotas: TDataSource
    DataSet = QCuotas
    Left = 344
    Top = 152
  end
  object QPagos: TADOQuery
    Connection = DM.ADOSigma
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
        Name = 'tfa_codigo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'fac_forma'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'fac_numero'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM'
      'PR_CONS_PAGOS_NC_FACTURA'
      
        '(:emp_codigo, :suc_codigo, :tfa_codigo, :fac_forma, :fac_numero,' +
        ' GETDATE())')
    Left = 312
    Top = 184
    object QPagosMOV_TIPO: TIBStringField
      FieldName = 'MOV_TIPO'
      Origin = 'PR_CONS_PAGOS_NC_FACTURA.MOV_TIPO'
      Size = 3
    end
    object QPagosMOV_NUMERO: TIntegerField
      FieldName = 'MOV_NUMERO'
      Origin = 'PR_CONS_PAGOS_NC_FACTURA.MOV_NUMERO'
      DisplayFormat = '000000'
    end
    object QPagosMOV_FECHA: TDateTimeField
      FieldName = 'MOV_FECHA'
      Origin = 'PR_CONS_PAGOS_NC_FACTURA.MOV_FECHA'
    end
    object QPagosMOV_MONTO: TFloatField
      FieldName = 'MOV_MONTO'
      Origin = 'PR_CONS_PAGOS_NC_FACTURA.MOV_MONTO'
      currency = True
    end
    object QPagosMOV_CONCEPTO: TIBStringField
      FieldName = 'MOV_CONCEPTO'
      Origin = 'PR_CONS_PAGOS_NC_FACTURA.MOV_CONCEPTO'
      Size = 60
    end
  end
  object dsPagos: TDataSource
    DataSet = QPagos
    Left = 344
    Top = 184
  end
  object QDevol: TADOQuery
    Connection = DM.ADOSigma
    OnCalcFields = QDevolCalcFields
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
        Name = 'TFA_CODIGO'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'FAC_FORMA'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'FAC_NUMERO'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'SUC_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'D.DEV_NUMERO, D.PRO_CODIGO, D.PRO_RFABRIC, '
      'D.PRO_RORIGINAL,'
      'D.PRO_NOMBRE, D.DEV_CANTIDAD, D.DET_MEDIDA,'
      'D.DEV_CONITBIS, D.DEV_ITBIS, D.DEV_PRECIO,'
      'D.DEV_DESCUENTO, D.DET_ESCALA'
      'FROM'
      'DEVOLUCION V, DET_DEVOLUCION D'
      'WHERE'
      'V.EMP_CODIGO = D.EMP_CODIGO'
      'AND V.DEV_NUMERO = D.DEV_NUMERO'
      'AND V.SUC_CODIGO = D.SUC_CODIGO'
      'AND V.EMP_CODIGO = :EMP_CODIGO'
      'AND V.TFA_CODIGO = :TFA_CODIGO'
      'AND V.FAC_FORMA = :FAC_FORMA'
      'AND V.FAC_NUMERO = :FAC_NUMERO'
      'AND V.SUC_CODIGO = :SUC_CODIGO'
      'AND V.DEV_STATUS <> '#39'ANU'#39
      'ORDER BY'
      'V.DEV_FECHA')
    Left = 312
    Top = 216
    object QDevolDEV_NUMERO: TIntegerField
      FieldName = 'DEV_NUMERO'
      Origin = 'DET_DEVOLUCION.DEV_NUMERO'
      Required = True
      DisplayFormat = '00000'
    end
    object QDevolValor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor'
      currency = True
      Calculated = True
    end
    object QDevolCalcDesc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcDesc'
      currency = True
      Calculated = True
    end
    object QDevolPrecioItbis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PrecioItbis'
      Calculated = True
    end
    object QDevolCalcItbis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcItbis'
      currency = True
      Calculated = True
    end
    object QDevolDevuelta: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Devuelta'
      currency = True
      Calculated = True
    end
    object QDevolNeto: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Neto'
      currency = True
      Calculated = True
    end
    object QDevolPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'DET_DEVOLUCION.PRO_CODIGO'
    end
    object QDevolPRO_RFABRIC: TIBStringField
      FieldName = 'PRO_RFABRIC'
      Origin = 'DET_DEVOLUCION.PRO_RFABRIC'
      Size = 60
    end
    object QDevolPRO_RORIGINAL: TIBStringField
      FieldName = 'PRO_RORIGINAL'
      Origin = 'DET_DEVOLUCION.PRO_RORIGINAL'
      Size = 50
    end
    object QDevolPRO_NOMBRE: TIBStringField
      FieldName = 'PRO_NOMBRE'
      Origin = 'DET_DEVOLUCION.PRO_NOMBRE'
      Size = 60
    end
    object QDevolDEV_CANTIDAD: TFloatField
      FieldName = 'DEV_CANTIDAD'
      Origin = 'DET_DEVOLUCION.DEV_CANTIDAD'
    end
    object QDevolDET_MEDIDA: TIBStringField
      FieldName = 'DET_MEDIDA'
      Origin = 'DET_DEVOLUCION.DET_MEDIDA'
      Size = 3
    end
    object QDevolDEV_CONITBIS: TIBStringField
      FieldName = 'DEV_CONITBIS'
      Origin = 'DET_DEVOLUCION.DEV_CONITBIS'
      Size = 1
    end
    object QDevolDEV_ITBIS: TFloatField
      FieldName = 'DEV_ITBIS'
      Origin = 'DET_DEVOLUCION.DEV_ITBIS'
    end
    object QDevolDEV_PRECIO: TFloatField
      FieldName = 'DEV_PRECIO'
      Origin = 'DET_DEVOLUCION.DEV_PRECIO'
    end
    object QDevolDEV_DESCUENTO: TFloatField
      FieldName = 'DEV_DESCUENTO'
      Origin = 'DET_DEVOLUCION.DEV_DESCUENTO'
    end
    object QDevolDET_ESCALA: TIBStringField
      FieldName = 'DET_ESCALA'
      Origin = 'DET_DEVOLUCION.DET_ESCALA'
      Size = 5
    end
  end
  object dsDev: TDataSource
    DataSet = QDevol
    Left = 344
    Top = 216
  end
  object QForma: TADOQuery
    Connection = DM.ADOSigma
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
        Name = 'SUC_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'TFA_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'FAC_FORMA'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'FAC_NUMERO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @EMP INT, @SUC INT, @TFA INT, @FOR CHAR(1), @NUM INT'
      'SET @EMP = :EMP_CODIGO'
      'SET @SUC = :SUC_CODIGO'
      'SET @TFA = :TFA_CODIGO'
      'SET @FOR = :FAC_FORMA'
      'SET @NUM =  :FAC_NUMERO'
      'SELECT'
      'F.FPA_NOMBRE, P.FOR_MONTO, P.FOR_DESCRIPCION'
      'FROM'
      'FORMASPAGO F, FACFORMAPAGO P'
      'WHERE'
      'F.EMP_CODIGO = P.EMP_CODIGO'
      'AND F.FPA_CODIGO = P.FPA_CODIGO'
      'AND P.EMP_CODIGO = @EMP'
      'AND P.TFA_CODIGO = @TFA'
      'AND P.FAC_FORMA = @FOR'
      'AND P.FAC_NUMERO = @NUM'
      'AND P.SUC_CODIGO = @SUC'
      'UNION ALL'
      'SELECT'
      
        #39'NC'#39' FPA_NOMBRE, P.NCR_MONTO, '#39'PAGADO CON NC #'#39'+RTRIM(P.NCR_NUME' +
        'RO) FOR_DESCRIPCION'
      'FROM'
      'FacNotasCredito P'
      'WHERE P.EMP_CODIGO = @EMP'
      'AND P.TFA_CODIGO = @TFA'
      'AND P.FAC_FORMA = @FOR'
      'AND P.FAC_NUMERO = @NUM'
      'AND P.SUC_CODIGO = @SUC')
    Left = 392
    Top = 152
    object QFormaFPA_NOMBRE: TIBStringField
      FieldName = 'FPA_NOMBRE'
      Origin = 'FORMASPAGO.FPA_NOMBRE'
      Size = 60
    end
    object QFormaFOR_MONTO: TFloatField
      FieldName = 'FOR_MONTO'
      Origin = 'FACFORMAPAGO.FOR_MONTO'
      currency = True
    end
    object QFormaFOR_DESCRIPCION: TIBStringField
      FieldName = 'FOR_DESCRIPCION'
      Origin = 'FACFORMAPAGO.FOR_DESCRIPCION'
      Size = 40
    end
  end
  object dsFroma: TDataSource
    DataSet = QForma
    Left = 424
    Top = 152
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
    Left = 232
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
    Left = 264
    Top = 152
  end
  object QReceta: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    DataSource = dsDetalle
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
        Name = 'suc_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'fac_forma'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'tfa_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'fac_numero'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'pro_codigo'
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
      'emp_codigo = :emp_codigo'
      'and suc_codigo = :suc_codigo'
      'and fac_forma = :fac_forma'
      'and tfa_codigo = :tfa_codigo'
      'and fac_numero = :fac_numero'
      'and pro_codigo = :pro_codigo'
      'order by'
      'det_secuencia')
    Left = 392
    Top = 184
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
  object dsReceta: TDataSource
    DataSet = QReceta
    Left = 424
    Top = 184
  end
  object QCuentas: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    AfterInsert = QCuentasAfterInsert
    AfterEdit = QCuentasAfterEdit
    BeforePost = QCuentasBeforePost
    AfterPost = QCuentasAfterPost
    BeforeDelete = QCuentasBeforeDelete
    AfterDelete = QCuentasAfterDelete
    OnNewRecord = QCuentasNewRecord
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
        Name = 'tfa_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'fac_forma'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'fac_numero'
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
      end>
    SQL.Strings = (
      'select'
      'cat_cuenta, cat_nombre, det_origen, det_monto, emp_codigo,'
      'suc_codigo, fac_forma, tfa_codigo, fac_numero, det_secuencia'
      'from'
      'contdet_facturas'
      'where'
      'emp_codigo = :emp_codigo'
      'and tfa_codigo = :tfa_codigo'
      'and fac_forma = :fac_forma'
      'and fac_numero = :fac_numero'
      'and suc_codigo = :suc_codigo'
      'and det_secuencia is not null'
      'order by'
      'det_secuencia')
    Left = 392
    Top = 216
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
      currency = True
      Precision = 15
    end
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
  end
  object dsCuentas: TDataSource
    DataSet = QCuentas
    Left = 424
    Top = 216
  end
  object PopupMenu1: TPopupMenu
    Left = 160
    Top = 280
    object Cambiarelcliente1: TMenuItem
      Caption = 'Cambiar el cliente'
      OnClick = Cambiarelcliente1Click
    end
    object Cambiarelvendedor1: TMenuItem
      Caption = 'Cambiar el vendedor'
      OnClick = Cambiarelvendedor1Click
    end
    object CambiarRNC1: TMenuItem
      Caption = 'Cambiar RNC'
      OnClick = CambiarRNC1Click
    end
    object AplicarNC1: TMenuItem
      Caption = 'Aplicar NC'
    end
    object InformacionDGII1: TMenuItem
      Caption = 'Informacion DGII'
      OnClick = InformacionDGII1Click
    end
  end
  object QClientes: TADOQuery
    Connection = DM.ADOSigma
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
        Name = 'cli'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select '
      
        'CLI_TELEFONO, CLI_FAX, CLI_WEB, CLI_EMAIL, TCL_CODIGO, CLI_DESCU' +
        'ENTO, CLI_PRECIO,'
      
        'CLI_STATUS, FPA_CODIGO, CPA_CODIGO, CLI_CUENTA, CLI_BALANCE, EMP' +
        '_CODIGO, CLI_CODIGO,'
      
        'CLI_REFERENCIA, CLI_NOMBRE, CLI_RNC, CLI_CEDULA, CLI_DIRECCION, ' +
        'CLI_LOCALIDAD,'
      'CLI_LIMITE, VEN_CODIGO, CLI_FACTURARBCE, CLI_FACTURARVENCIDA,'
      
        'CLI_INSTNOMBRE, CLI_INSTTEL, CLI_PERNOMBRE1, CLI_PERNOMBRE2, CLI' +
        '_PERPARENT1,'
      
        'CLI_PERPARENT2, CLI_PERTEL1, CLI_PERTEL2, CLI_REFNOMBRE1, CLI_RE' +
        'FNOMBRE2,'
      
        'CLI_REFTEL1, CLI_REFTEL2, CLI_FECHA, CLI_FECHANAC, CLI_CONTACTO,' +
        ' CLI_TELEFONO2,'
      'SUC_CODIGO, PRO_CODIGO, cli_factura_debajo_costo,'
      'cli_factura_debajo_minimo, usu_codigo, cli_comentario,'
      'emp_numero'
      'from '
      'CLIENTES'
      'where emp_codigo = :emp_codigo'
      'and cli_codigo = :cli')
    Left = 64
    Top = 280
    object QClientesCLI_TELEFONO: TStringField
      FieldName = 'CLI_TELEFONO'
      Size = 30
    end
    object QClientesCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      Size = 30
    end
    object QClientesCLI_WEB: TStringField
      FieldName = 'CLI_WEB'
      Size = 60
    end
    object QClientesCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Size = 60
    end
    object QClientesTCL_CODIGO: TIntegerField
      FieldName = 'TCL_CODIGO'
    end
    object QClientesCLI_DESCUENTO: TBCDField
      FieldName = 'CLI_DESCUENTO'
      Precision = 15
      Size = 2
    end
    object QClientesCLI_PRECIO: TStringField
      FieldName = 'CLI_PRECIO'
      Size = 8
    end
    object QClientesCLI_STATUS: TStringField
      FieldName = 'CLI_STATUS'
      Size = 3
    end
    object QClientesFPA_CODIGO: TIntegerField
      FieldName = 'FPA_CODIGO'
    end
    object QClientesCPA_CODIGO: TIntegerField
      FieldName = 'CPA_CODIGO'
    end
    object QClientesCLI_CUENTA: TStringField
      FieldName = 'CLI_CUENTA'
      Size = 15
    end
    object QClientesCLI_BALANCE: TBCDField
      FieldName = 'CLI_BALANCE'
      Precision = 15
      Size = 2
    end
    object QClientesEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QClientesCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
    end
    object QClientesCLI_REFERENCIA: TStringField
      FieldName = 'CLI_REFERENCIA'
      Size = 10
    end
    object QClientesCLI_NOMBRE: TStringField
      FieldName = 'CLI_NOMBRE'
      Size = 60
    end
    object QClientesCLI_RNC: TStringField
      FieldName = 'CLI_RNC'
      Size = 30
    end
    object QClientesCLI_CEDULA: TStringField
      FieldName = 'CLI_CEDULA'
      Size = 30
    end
    object QClientesCLI_DIRECCION: TStringField
      FieldName = 'CLI_DIRECCION'
      Size = 60
    end
    object QClientesCLI_LOCALIDAD: TStringField
      FieldName = 'CLI_LOCALIDAD'
      Size = 60
    end
    object QClientesCLI_LIMITE: TBCDField
      FieldName = 'CLI_LIMITE'
      Precision = 15
      Size = 2
    end
    object QClientesVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
    end
    object QClientesCLI_FACTURARBCE: TStringField
      FieldName = 'CLI_FACTURARBCE'
      Size = 1
    end
    object QClientesCLI_FACTURARVENCIDA: TStringField
      FieldName = 'CLI_FACTURARVENCIDA'
      Size = 1
    end
    object QClientesCLI_INSTNOMBRE: TStringField
      FieldName = 'CLI_INSTNOMBRE'
      Size = 60
    end
    object QClientesCLI_INSTTEL: TStringField
      FieldName = 'CLI_INSTTEL'
      Size = 60
    end
    object QClientesCLI_PERNOMBRE1: TStringField
      FieldName = 'CLI_PERNOMBRE1'
      Size = 60
    end
    object QClientesCLI_PERNOMBRE2: TStringField
      FieldName = 'CLI_PERNOMBRE2'
      Size = 60
    end
    object QClientesCLI_PERPARENT1: TStringField
      FieldName = 'CLI_PERPARENT1'
      Size = 30
    end
    object QClientesCLI_PERPARENT2: TStringField
      FieldName = 'CLI_PERPARENT2'
      Size = 30
    end
    object QClientesCLI_PERTEL1: TStringField
      FieldName = 'CLI_PERTEL1'
      Size = 13
    end
    object QClientesCLI_PERTEL2: TStringField
      FieldName = 'CLI_PERTEL2'
      Size = 13
    end
    object QClientesCLI_REFNOMBRE1: TStringField
      FieldName = 'CLI_REFNOMBRE1'
      Size = 60
    end
    object QClientesCLI_REFNOMBRE2: TStringField
      FieldName = 'CLI_REFNOMBRE2'
      Size = 60
    end
    object QClientesCLI_REFTEL1: TStringField
      FieldName = 'CLI_REFTEL1'
      Size = 13
    end
    object QClientesCLI_REFTEL2: TStringField
      FieldName = 'CLI_REFTEL2'
      Size = 13
    end
    object QClientesCLI_FECHA: TDateTimeField
      FieldName = 'CLI_FECHA'
    end
    object QClientesCLI_FECHANAC: TDateTimeField
      FieldName = 'CLI_FECHANAC'
    end
    object QClientesCLI_CONTACTO: TStringField
      FieldName = 'CLI_CONTACTO'
      Size = 60
    end
    object QClientesCLI_TELEFONO2: TStringField
      FieldName = 'CLI_TELEFONO2'
      Size = 30
    end
    object QClientesSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QClientesPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
    end
    object QClientescli_factura_debajo_costo: TStringField
      FieldName = 'cli_factura_debajo_costo'
      Size = 5
    end
    object QClientescli_factura_debajo_minimo: TStringField
      FieldName = 'cli_factura_debajo_minimo'
      Size = 5
    end
    object QClientesusu_codigo: TIntegerField
      FieldName = 'usu_codigo'
    end
    object QClientescli_comentario: TMemoField
      FieldName = 'cli_comentario'
      BlobType = ftMemo
    end
    object QClientesemp_numero: TIntegerField
      FieldName = 'emp_numero'
    end
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 96
    Top = 280
  end
  object QSerie: TADOQuery
    Connection = DM.ADOSigma
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
        Name = 'suc_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'fac_forma'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'tfa_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'fac_numero'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'd.pro_nombre, s.ser_numero'
      'from'
      'det_factura d, FacSerie s'
      'where'
      'd.emp_codigo = s.emp_codigo'
      'and d.suc_codigo = s.suc_codigo'
      'and d.fac_forma = s.fac_forma'
      'and d.tfa_codigo = s.tfa_codigo'
      'and d.fac_numero = s.fac_numero'
      'and d.pro_codigo = s.pro_codigo'
      'and d.emp_codigo = :emp_codigo'
      'and d.suc_codigo = :suc_codigo'
      'and d.fac_forma = :fac_forma'
      'and d.tfa_codigo = :tfa_codigo'
      'and d.fac_numero = :fac_numero'
      'order by'
      'd.pro_nombre, s.ser_secuencia')
    Left = 480
    Top = 152
    object QSeriepro_nombre: TStringField
      FieldName = 'pro_nombre'
      Size = 80
    end
    object QSerieser_numero: TStringField
      FieldName = 'ser_numero'
      Size = 30
    end
  end
  object dsSerie: TDataSource
    DataSet = QSerie
    Left = 512
    Top = 152
  end
  object ProcNCF: TADOStoredProc
    Connection = DM.ADOSigma
    ProcedureName = 'pr_busca_ncf'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@empcomprobante'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@tipo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@caja'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ncf_fijo'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 11
        Value = Null
      end
      item
        Name = '@ncf_sec'
        Attributes = [paNullable]
        DataType = ftBCD
        Direction = pdInputOutput
        Precision = 18
        Value = Null
      end>
    Left = 216
    Top = 280
  end
  object QMedidas: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
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
    Left = 480
    Top = 184
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
    Left = 512
    Top = 184
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
    Left = 896
    Top = 16
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
        Height = 115.283550000000000000
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
        object Memo17: TfrxMemoView
          Align = baLeft
          Left = 85.039370080000000000
          Top = 81.267780000000000000
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
    Left = 928
    Top = 24
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
    Left = 880
    Top = 80
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
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 624
    Top = 336
  end
  object qAplicaNC: TADOQuery
    Connection = DM.ADOSigma
    CommandTimeout = 120
    Parameters = <
      item
        Name = 'NCID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
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
      end>
    SQL.Strings = (
      
        'DECLARE @EMP INT, @SUC INT, @NCID INT, @BALANCE FLOAT, @MONTOUSA' +
        'DO FLOAT, @FAC INT, @SEC INT, @TIPO VARCHAR(3), @MONTOAPLICAR FL' +
        'OAT,'
      '@FORMA CHAR(1), @TFAC INT, @PAGO NUMERIC(18,2)'
      ''
      'SET @NCID = :NCID'
      'SET @EMP = :EMP'
      'SET @SUC = :SUC'
      'SET @FAC = :FAC'
      'SET @TIPO = '#39'CRE'#39
      
        'SET @MONTOAPLICAR = (SELECT ISNULL(ncr_monto,0)-ISNULL(ncr_monto' +
        'usado,0) FROM NOTASCREDITO WHERE EMP_CODIGO = @EMP AND SUC_CODIG' +
        'O = @SUC AND NCR_NUMERO = @NCID)'
      
        'SET @FORMA = (SELECT FAC_FORMA FROM FACTURAS WHERE EMP_CODIGO = ' +
        '@EMP AND SUC_CODIGO = @SUC AND FAC_NUMERO = @FAC)'
      
        'SET @TFAC = (SELECT tfa_codigo FROM FACTURAS WHERE EMP_CODIGO = ' +
        '@EMP AND SUC_CODIGO = @SUC AND FAC_NUMERO = @FAC)'
      
        'SET @BALANCE = (SELECT ISNULL(FAC_TOTAL,0)-ISNULL(FAC_ABONO,0) F' +
        'ROM FACTURAS WHERE EMP_CODIGO = @EMP AND SUC_CODIGO = @SUC AND F' +
        'AC_NUMERO = @FAC)'
      
        'SET @SEC = (SELECT mov_secuencia FROM Movimientos WHERE EMP_CODI' +
        'GO = @EMP AND SUC_CODIGO = @SUC AND MOV_NUMERO = @FAC AND FAC_FO' +
        'RMA = @FORMA AND TFA_CODIGO = @TFAC AND mov_tipo = @TIPO)'
      
        'SET @MONTOUSADO = (SELECT ISNULL(ncr_montousado,0) FROM NOTASCRE' +
        'DITO WHERE EMP_CODIGO = @EMP AND SUC_CODIGO = @SUC AND NCR_NUMER' +
        'O = @NCID)'
      ''
      ''
      'IF @MONTOUSADO < @BALANCE BEGIN '
      'UPDATE NOTASCREDITO '
      'SET ncr_montousado = ncr_monto '
      'where emp_codigo = @EMP'
      '  AND suc_codigo = @SUC'
      '  and ncr_numero = @NCID    '#9
      ' '
      'INSERT INTO DET_NOTACREDITO'
      
        'SELECT @EMP, @SUC, @NCID, @SEC, @TIPO, @FAC, @MONTOAPLICAR, @FOR' +
        'MA, @TFAC, NULL, NULL '
      'END'
      ''
      'IF @MONTOUSADO > @BALANCE BEGIN '
      'UPDATE NOTASCREDITO '
      'SET ncr_montousado = @BALANCE'
      
        'where emp_codigo = @EMP and suc_codigo = @SUC and ncr_numero = @' +
        'NCID'
      ''
      'INSERT INTO DET_NOTACREDITO'
      
        'SELECT @EMP, @SUC, @NCID, @SEC, @TIPO, @FAC, @BALANCE, @FORMA, @' +
        'TFAC, NULL, NULL'
      'END'
      ''
      'SET @PAGO = 0'
      
        'if exists(select fac_numero from FacFormaPago where fac_numero =' +
        ' @FAC and tfa_codigo = @tipo and fac_forma = @FORMA) begin '
      
        'SET @PAGO = ISNULL((SELECT isnull(SUM(for_monto),0) FROM FacForm' +
        'aPago '
      
        '             WHERE fac_numero = @FAC AND emp_codigo  = @EMP AND ' +
        'suc_codigo = @SUC AND FAC_FORMA = @FORMA AND tfa_codigo'
      '              = @tipo),0)'
      'end'
      ''
      ''
      ''
      
        'SET @PAGO = ISNULL(@PAGO,0) + ISNULL((SELECT SUM(isnull(DET_MONT' +
        'O,0)+isnull(det_descuento,0)) FROM Recibos R '
      
        '             INNER JOIN Det_Recibo DR ON R.emp_codigo = DR.emp_c' +
        'odigo AND R.suc_codigo = DR.suc_codigo AND R.rec_numero =DR.rec_' +
        'numero'
      
        '             WHERE R.rec_status = '#39'EMI'#39' AND DR.det_numero = @FAC' +
        ' AND DR.emp_codigo  = @EMP AND DR.suc_codigo = @SUC'
      
        '             AND DR.FAC_FORMA = @FORMA AND DR.tfa_codigo = @TFAC' +
        '),0)'
      #9#9#9' '
      
        'SET @PAGO = ISNULL(@PAGO,0) + ISNULL((SELECT ISNULL(SUM(DET_MONT' +
        'O),0) FROM DET_NOTACREDITO N '
      
        '             WHERE MOV_NUMERO = @FAC AND N.emp_codigo  = @EMP AN' +
        'D N.suc_codigo = @SUC'
      
        '             AND N.FAC_FORMA = @FORMA AND N.tfa_codigo = @TFAC),' +
        '0)'
      ''
      
        'SET @PAGO = ISNULL(@PAGO,0) + ISNULL((SELECT ISNULL(SUM(DEV_TOTA' +
        'L),0) FROM DEVOLUCION N '
      
        '             WHERE N.dev_status = '#39'EMI'#39' AND N.fac_numero = @FAC ' +
        'AND N.emp_codigo  = @EMP AND N.suc_codigo = @SUC'
      
        '             AND N.FAC_FORMA = @FORMA AND N.tfa_codigo = @TFAC),' +
        '0)'
      ''
      
        'SET @PAGO = ISNULL(@PAGO,0) + ISNULL((SELECT isnull(sum(DD.FAC_P' +
        'AGO + DD.FAC_DESCUENTO),0) FROM DEPOSITOS D'
      
        '                                      INNER JOIN Det_DepositoFac' +
        'tura DD ON D.emp_codigo = DD.emp_codigo AND D.suc_codigo = DD.su' +
        'c_codigo AND D.dep_numero = dd.dep_numero '
      
        #9#9'      where d.dep_status <> '#39'ANU'#39' AND DD.fac_numero = @FAC AND' +
        ' DD.emp_codigo= @EMP AND DD.suc_codigo = @SUC'
      #9#9'      AND DD.FAC_FORMA = @FORMA AND DD.TFA_CODIGO = @TFAC),0)'
      #9#9#9' '
      ''
      'UPDATE Facturas'
      'SET fac_abono = isnull(@PAGO,0),'
      
        '    fac_status = (CASE WHEN (FAC_TOTAL-isnull(@PAGO,0))<=1 THEN ' +
        #39'PAG'#39' ELSE '#39'PEN'#39' END)'
      
        'WHERE emp_codigo = @EMP AND suc_codigo = @SUC AND tfa_codigo = @' +
        'TFAC AND fac_forma = @FORMA '
      'AND fac_numero = @FAC'
      ''
      'UPDATE Movimientos '
      'SET mov_abono = isnull(@PAGO,0),'
      
        '    MOV_status = (CASE WHEN (MOV_MONTO-isnull(@PAGO,0))<=1 THEN ' +
        #39'PAG'#39' ELSE '#39'PEN'#39' END)'
      
        'WHERE emp_codigo = @EMP AND suc_codigo = @SUC AND tfa_codigo = @' +
        'TFAC AND fac_forma = @FORMA '
      'AND MOV_numero = @FAC'
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 296
    Top = 304
  end
  object tmr2: TTimer
    Enabled = False
    Interval = 2000
    Left = 920
    Top = 72
  end
end
