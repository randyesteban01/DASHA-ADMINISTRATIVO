object frmConsDesem: TfrmConsDesem
  Left = 360
  Top = 21
  ActiveControl = edCajero
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta de desembolsos'
  ClientHeight = 692
  ClientWidth = 989
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
  object Splitter1: TSplitter
    Left = 0
    Top = 513
    Width = 989
    Height = 4
    Cursor = crVSplit
    Align = alTop
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 145
    Width = 989
    Height = 368
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clInfoBk
    Ctl3D = False
    DataSource = dsDesem
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
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'Caja'
        Title.Caption = 'Nombre de la Caja'
        Width = 133
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DES_NUMERO'
        Title.Alignment = taCenter
        Title.Caption = 'N'#250'mero'
        Width = 55
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DES_FECHA'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha'
        Width = 63
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'gasto_menor'
        Title.Alignment = taCenter
        Title.Caption = 'Gasto Menor?'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'des_ncf'
        Title.Alignment = taCenter
        Title.Caption = 'NCF'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DES_BENEFICIARIO'
        Title.Caption = 'Beneficiario'
        Width = 205
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tip_nombre'
        Title.Caption = 'Tipo de Bien / Servicio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FACT_PAGADAS'
        Title.Caption = 'FACT. PAGADAS'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DES_MONTO'
        Title.Alignment = taCenter
        Title.Caption = 'Monto'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DES_CONCEPTO'
        Title.Caption = 'Concepto'
        Width = 170
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'des_concepto2'
        Title.Caption = 'Concepto 2'
        Width = 170
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DES_STATUS'
        Title.Alignment = taCenter
        Title.Caption = 'Status'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DEV_NUMERO'
        Title.Alignment = taCenter
        Title.Caption = '# Devol.'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAJ_NOMBRE'
        Title.Caption = 'Cajero'
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_NOMBRE'
        Title.Caption = 'Usuario'
        Width = 99
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 989
    Height = 145
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Label2: TLabel
      Left = 8
      Top = 74
      Width = 32
      Height = 13
      Caption = 'Cliente'
    end
    object SpeedButton2: TSpeedButton
      Left = 119
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
      OnClick = SpeedButton2Click
    end
    object Label3: TLabel
      Left = 9
      Top = 31
      Width = 30
      Height = 13
      Caption = 'Cajero'
    end
    object SpeedButton1: TSpeedButton
      Left = 104
      Top = 30
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
      Left = 326
      Top = 28
      Width = 37
      Height = 13
      Caption = 'Nombre'
    end
    object Label5: TLabel
      Left = 608
      Top = 60
      Width = 38
      Height = 13
      Caption = 'Ordenar'
    end
    object Label6: TLabel
      Left = 8
      Top = 52
      Width = 30
      Height = 13
      Caption = 'Fecha'
    end
    object Label7: TLabel
      Left = 326
      Top = 6
      Width = 36
      Height = 13
      Caption = 'Usuario'
    end
    object SpeedButton3: TSpeedButton
      Left = 412
      Top = 6
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
    object Label8: TLabel
      Left = 8
      Top = 8
      Width = 41
      Height = 13
      Caption = 'Sucursal'
    end
    object Label1: TLabel
      Left = 8
      Top = 96
      Width = 49
      Height = 13
      Caption = 'Proveedor'
    end
    object btProv: TSpeedButton
      Left = 119
      Top = 96
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
      OnClick = btProvClick
    end
    object Label12: TLabel
      Left = 326
      Top = 50
      Width = 47
      Height = 13
      Caption = 'Empleado'
    end
    object btEmpleado: TSpeedButton
      Left = 412
      Top = 50
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
      OnClick = btEmpleadoClick
    end
    object Label13: TLabel
      Left = 326
      Top = 74
      Width = 21
      Height = 13
      Caption = 'Caja'
    end
    object btCaja: TSpeedButton
      Left = 412
      Top = 72
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
      OnClick = btCajaClick
    end
    object Label14: TLabel
      Left = 9
      Top = 121
      Width = 60
      Height = 13
      Caption = 'Tipo de Bien'
    end
    object btnTipoBien: TSpeedButton
      Left = 120
      Top = 120
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
      OnClick = btnTipoBienClick
    end
    object edCliente: TEdit
      Left = 64
      Top = 74
      Width = 53
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
      OnChange = edClienteChange
      OnKeyDown = edClienteKeyDown
    end
    object tCliente: TEdit
      Left = 144
      Top = 74
      Width = 177
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
    object tCajero: TEdit
      Left = 128
      Top = 30
      Width = 194
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
      TabOrder = 13
    end
    object edCajero: TEdit
      Left = 64
      Top = 30
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
      TabOrder = 1
      OnChange = edCajeroChange
      OnKeyDown = edCajeroKeyDown
    end
    object edNombre: TEdit
      Left = 376
      Top = 28
      Width = 225
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
    object cbStatus: TRadioGroup
      Left = 611
      Top = 2
      Width = 84
      Height = 55
      Caption = 'Status'
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'Anulados'
        'Emitidos')
      TabOrder = 10
      OnClick = btRefreshClick
    end
    object cbOrden: TComboBox
      Left = 608
      Top = 78
      Width = 81
      Height = 21
      BevelKind = bkFlat
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 11
      OnChange = btRefreshClick
      Items.Strings = (
        'Numero'
        'Nombre'
        'Fecha')
    end
    object Fecha1: TDateTimePicker
      Left = 64
      Top = 52
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
      TabOrder = 2
    end
    object Fecha2: TDateTimePicker
      Left = 144
      Top = 52
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
      TabOrder = 3
    end
    object tUsuario: TEdit
      Left = 436
      Top = 6
      Width = 165
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
    object edUsuario: TEdit
      Left = 376
      Top = 6
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
      TabOrder = 6
      OnChange = edUsuarioChange
      OnKeyDown = edUsuarioKeyDown
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 64
      Top = 8
      Width = 260
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
      TabOrder = 0
    end
    object edProveedor: TEdit
      Left = 64
      Top = 96
      Width = 53
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnChange = edProveedorChange
      OnKeyDown = edProveedorKeyDown
    end
    object tProv: TEdit
      Left = 144
      Top = 96
      Width = 177
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
    object edEmpleado: TEdit
      Left = 376
      Top = 50
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
      TabOrder = 8
      OnChange = edEmpleadoChange
      OnKeyDown = edEmpleadoKeyDown
    end
    object tEmp: TEdit
      Left = 436
      Top = 50
      Width = 165
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
    object edCaja: TEdit
      Left = 376
      Top = 72
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
      TabOrder = 9
      OnChange = edCajaChange
      OnKeyDown = edCajaKeyDown
    end
    object tCaja: TEdit
      Left = 436
      Top = 72
      Width = 165
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
    object ckmenores: TCheckBox
      Left = 376
      Top = 96
      Width = 105
      Height = 17
      Caption = 'Gastos menores'
      TabOrder = 18
      OnClick = btRefreshClick
    end
    object edtBien: TEdit
      Left = 73
      Top = 120
      Width = 43
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
      TabOrder = 19
      OnChange = edtBienChange
      OnKeyDown = edCajeroKeyDown
    end
    object TTipoBien: TEdit
      Left = 144
      Top = 120
      Width = 177
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
      TabOrder = 21
      OnClick = btRefreshClick
    end
  end
  object Memo1: TMemo
    Left = 24
    Top = 160
    Width = 505
    Height = 41
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
    Visible = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 652
    Width = 989
    Height = 40
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 3
    DesignSize = (
      989
      40)
    object lbCantidad: TLabel
      Left = 8
      Top = 13
      Width = 86
      Height = 13
      Caption = '0 Desembolsos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn2: TBitBtn
      Left = 828
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
      Left = 748
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Refrescar >>'
      TabOrder = 1
      OnClick = btRefreshClick
    end
    object btClose: TBitBtn
      Left = 908
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
      Left = 393
      Top = 13
      Width = 241
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Imprimir detalle del Desembolso'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object btnEnviarDGII: TBitBtn
      Left = 648
      Top = 8
      Width = 95
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Enviar DGII >>'
      TabOrder = 4
      OnClick = btnEnviarDGIIClick
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 517
    Width = 989
    Height = 135
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 4
    object TabSheet1: TTabSheet
      Caption = 'Cuentas contables'
      object Label9: TLabel
        Left = 527
        Top = 1
        Width = 48
        Height = 13
        Caption = 'Cr'#233'ditos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 527
        Top = 17
        Width = 43
        Height = 13
        Caption = 'D'#233'bitos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 527
        Top = 33
        Width = 45
        Height = 13
        Caption = 'Balance'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object btBuscaCta: TSpeedButton
        Left = 528
        Top = 80
        Width = 153
        Height = 25
        Caption = '[ F5 ] - Buscar Cuenta   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btBuscaCtaClick
      end
      object btElimina: TSpeedButton
        Left = 528
        Top = 55
        Width = 153
        Height = 25
        Caption = '[ F4 ] - Eliminar Cuenta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btEliminaClick
      end
      object GridCuentas: TDBGrid
        Left = 0
        Top = 0
        Width = 521
        Height = 107
        Align = alLeft
        Ctl3D = False
        DataSource = dsDetalle
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgCancelOnExit]
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
            Width = 282
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DET_ORIGEN'
            Title.Alignment = taCenter
            Title.Caption = 'Origen'
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
        Left = 583
        Top = 1
        Width = 103
        Height = 17
        Alignment = taRightJustify
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
        Left = 583
        Top = 17
        Width = 103
        Height = 17
        Alignment = taRightJustify
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
        Left = 583
        Top = 33
        Width = 103
        Height = 17
        Alignment = taRightJustify
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
    end
    object TabSheet2: TTabSheet
      Caption = 'Facturas pagadas'
      ImageIndex = 1
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 689
        Height = 105
        Align = alClient
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
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'fac_numero'
            Title.Alignment = taCenter
            Title.Caption = 'Numero'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'fac_fecha'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 79
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'fac_vence'
            Title.Alignment = taCenter
            Title.Caption = 'Vence'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'det_monto'
            Title.Alignment = taCenter
            Title.Caption = 'Pagado'
            Width = 93
            Visible = True
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Centros de costo / Proyectos'
      ImageIndex = 2
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 30
        Height = 105
        Align = alLeft
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object SpeedButton4: TSpeedButton
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
          OnClick = SpeedButton4Click
        end
        object SpeedButton5: TSpeedButton
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
          OnClick = SpeedButton5Click
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
      object GridCentro: TDBGrid
        Left = 30
        Top = 0
        Width = 951
        Height = 105
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
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
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
    end
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 424
    Top = 120
  end
  object dsDesem: TDataSource
    DataSet = QDesem
    Left = 576
    Top = 184
  end
  object QDesem: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    AfterOpen = QDesemAfterOpen
    AfterScroll = QDesemAfterScroll
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
      end>
    SQL.Strings = (
      'select '
      'd.DES_BENEFICIARIO, d.DES_CONCEPTO, d.DES_FECHA, '
      'd.DES_MONTO, d.DES_NUMERO, d.DES_STATUS, d.DEV_NUMERO, '
      'c.caj_nombre, u.usu_nombre, d.EMP_CODIGO, d.suc_codigo,'
      'd.des_ncf, j.caj_nombre as Caja,'
      
        'case d.des_gasto_menor when '#39'True'#39' then '#39'Si'#39' else '#39'No'#39' end as ga' +
        'sto_menor,'
      'd.des_concepto2,'
      
        'CAST((CASE WHEN RIGHT((SELECT TOP 1 ISNULL(FAC_NUMERO,0)+ '#39','#39'  F' +
        'ROM PagoComis_Desembolso WHERE emp_codigo=D.emp_codigo'
      
        '                   AND suc_codigo=d.suc_codigo AND des_numero=D.' +
        'des_numero'
      #9#9#9#9'   ),1)='#39','#39' THEN '
      
        #9#9#9#9'   LEFT((SELECT TOP 1 ISNULL(FAC_NUMERO,0)+ '#39','#39'  FROM PagoCo' +
        'mis_Desembolso WHERE emp_codigo=D.emp_codigo'
      
        '                   AND suc_codigo=d.suc_codigo AND des_numero=D.' +
        'des_numero'
      
        #9#9#9#9'   ),LEN(((SELECT TOP 1 ISNULL(FAC_NUMERO,0)+ '#39','#39'  FROM Pago' +
        'Comis_Desembolso WHERE emp_codigo=D.emp_codigo'
      
        '                   AND suc_codigo=d.suc_codigo AND des_numero=D.' +
        'des_numero'
      #9#9#9#9'   )))-1) END) AS VARCHAR(30))  FACT_PAGADAS'
      ',t.tip_nombre ,'
      ''
      
        'ISNULL(d.AceptadoDGII,0) AS AceptadoDGII, ISNULL(d.Enviado_DGII,' +
        '0) AS Enviado_DGII, ISNULL(d.Error_DGII,0) AS Error_DGII,'
      ''
      'e.emp_rnc, cl.cli_rnc, eNCF'
      ''
      'from'
      'DESEMBOLSOS d'
      
        'left join Cajeros C on d.emp_codigo = c.emp_codigo and d.caj_cod' +
        'igo = c.caj_codigo'
      'left join usuarios u on d.usu_codigo = u.usu_codigo'
      
        'left join cajas j on d.emp_codigo = j.emp_codigo and d.des_caja ' +
        '= j.caj_codigo'
      'left join Tipo_Bienes_Servicios t on d.tip_codigo = t.tip_codigo'
      ''
      'INNER JOIN Empresas e ON e.emp_codigo=d.emp_codigo'
      
        'left join Clientes cl on cl.cli_codigo=d.cli_codigo and d.emp_co' +
        'digo= cl.emp_codigo'
      ''
      ''
      
        'where d.des_fecha between convert(datetime,:fecha1,105) and conv' +
        'ert(datetime,:fecha2,105)'
      'and d.emp_codigo = :emp'
      'and d.suc_codigo = :suc')
    Left = 544
    Top = 184
    object QDesemDES_BENEFICIARIO: TIBStringField
      FieldName = 'DES_BENEFICIARIO'
      Origin = 'DESEMBOLSOS.DES_BENEFICIARIO'
      Size = 60
    end
    object QDesemDES_CONCEPTO: TIBStringField
      FieldName = 'DES_CONCEPTO'
      Origin = 'DESEMBOLSOS.DES_CONCEPTO'
      Size = 60
    end
    object QDesemDES_FECHA: TDateTimeField
      FieldName = 'DES_FECHA'
      Origin = 'DESEMBOLSOS.DES_FECHA'
    end
    object QDesemDES_MONTO: TFloatField
      FieldName = 'DES_MONTO'
      Origin = 'DESEMBOLSOS.DES_MONTO'
      currency = True
    end
    object QDesemDES_NUMERO: TIntegerField
      FieldName = 'DES_NUMERO'
      Origin = 'DESEMBOLSOS.DES_NUMERO'
      Required = True
      DisplayFormat = '00000'
    end
    object QDesemDES_STATUS: TIBStringField
      FieldName = 'DES_STATUS'
      Origin = 'DESEMBOLSOS.DES_STATUS'
      Size = 3
    end
    object QDesemDEV_NUMERO: TIntegerField
      FieldName = 'DEV_NUMERO'
      Origin = 'DESEMBOLSOS.DEV_NUMERO'
      DisplayFormat = '00000'
    end
    object QDesemCAJ_NOMBRE: TIBStringField
      FieldName = 'CAJ_NOMBRE'
      Origin = 'CAJEROS.CAJ_NOMBRE'
      Size = 60
    end
    object QDesemUSU_NOMBRE: TIBStringField
      FieldName = 'USU_NOMBRE'
      Origin = 'USUARIOS.USU_NOMBRE'
      Size = 60
    end
    object QDesemEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'DESEMBOLSOS.EMP_CODIGO'
      Required = True
    end
    object QDesemsuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QDesemdes_ncf: TStringField
      FieldName = 'des_ncf'
      Size = 30
    end
    object QDesemCaja: TStringField
      FieldName = 'Caja'
      Size = 60
    end
    object QDesemgasto_menor: TStringField
      FieldName = 'gasto_menor'
      ReadOnly = True
      Size = 2
    end
    object QDesemdes_concepto2: TStringField
      FieldName = 'des_concepto2'
      Size = 60
    end
    object QDesemFACT_PAGADAS: TStringField
      FieldName = 'FACT_PAGADAS'
      Size = 30
    end
    object QDesemtip_nombre: TStringField
      FieldName = 'tip_nombre'
      Size = 50
    end
    object QDesemAceptadoDGII: TBooleanField
      FieldName = 'AceptadoDGII'
    end
    object QDesemEnviado_DGII: TBooleanField
      FieldName = 'Enviado_DGII'
    end
    object QDesemError_DGII: TBooleanField
      FieldName = 'Error_DGII'
    end
    object QDesememp_rnc: TStringField
      FieldName = 'emp_rnc'
    end
    object QDesemcli_rnc: TStringField
      FieldName = 'cli_rnc'
    end
    object QDesemeNCF: TStringField
      FieldName = 'eNCF'
    end
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
    DataSource = dsDesem
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
        Name = 'DES_NUMERO'
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
      'SELECT'
      'CAT_CUENTA, CAT_NOMBRE, DES_NUMERO, DET_MONTO, '
      'DET_ORIGEN, DET_SECUENCIA, EMP_CODIGO, suc_codigo'
      'FROM'
      'CONTDET_DESEMBOLSO'
      'WHERE '
      'EMP_CODIGO = :EMP_CODIGO'
      'AND DES_NUMERO = :DES_NUMERO'
      'and suc_codigo = :suc_codigo'
      'ORDER BY'
      'DET_SECUENCIA')
    Left = 544
    Top = 216
    object QDetalleCAT_CUENTA: TIBStringField
      FieldName = 'CAT_CUENTA'
      Origin = 'CONTDET_DESEMBOLSO.CAT_CUENTA'
      OnChange = QDetalleCAT_CUENTAChange
      Size = 15
    end
    object QDetalleCAT_NOMBRE: TIBStringField
      FieldName = 'CAT_NOMBRE'
      Origin = 'CONTDET_DESEMBOLSO.CAT_NOMBRE'
      Size = 60
    end
    object QDetalleDES_NUMERO: TIntegerField
      FieldName = 'DES_NUMERO'
      Origin = 'CONTDET_DESEMBOLSO.DES_NUMERO'
    end
    object QDetalleDET_MONTO: TFloatField
      FieldName = 'DET_MONTO'
      Origin = 'CONTDET_DESEMBOLSO.DET_MONTO'
      currency = True
    end
    object QDetalleDET_ORIGEN: TIBStringField
      FieldName = 'DET_ORIGEN'
      Origin = 'CONTDET_DESEMBOLSO.DET_ORIGEN'
      Size = 7
    end
    object QDetalleDET_SECUENCIA: TIntegerField
      FieldName = 'DET_SECUENCIA'
      Origin = 'CONTDET_DESEMBOLSO.DET_SECUENCIA'
    end
    object QDetalleEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'CONTDET_DESEMBOLSO.EMP_CODIGO'
    end
    object QDetallesuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
  end
  object dsDetalle: TDataSource
    DataSet = QDetalle
    Left = 576
    Top = 216
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
    Left = 352
    Top = 144
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
    Left = 384
    Top = 144
  end
  object QFacturas: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    DataSource = dsDesem
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
        Name = 'des_numero'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'emp_codigo, suc_codigo, des_numero, det_secuencia,'
      
        'sup_codigo, fac_numero, (det_monto + isnull(det_descuento,0)) as' +
        ' det_monto,'
      'det_descuento, fac_saldo,'
      'fac_fecha, fac_vence'
      'from'
      'det_desem_facturas'
      'where'
      'emp_codigo = :emp_codigo'
      'and suc_codigo = :suc_codigo'
      'and des_numero = :des_numero'
      'order by'
      'det_secuencia')
    Left = 544
    Top = 248
    object QFacturasemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QFacturassuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QFacturasdes_numero: TIntegerField
      FieldName = 'des_numero'
    end
    object QFacturasdet_secuencia: TIntegerField
      FieldName = 'det_secuencia'
    end
    object QFacturassup_codigo: TIntegerField
      FieldName = 'sup_codigo'
    end
    object QFacturasfac_numero: TStringField
      FieldName = 'fac_numero'
      Size = 15
    end
    object QFacturasdet_monto: TBCDField
      FieldName = 'det_monto'
      currency = True
      Precision = 15
      Size = 2
    end
    object QFacturasdet_descuento: TBCDField
      FieldName = 'det_descuento'
      currency = True
      Precision = 15
      Size = 2
    end
    object QFacturasfac_saldo: TBCDField
      FieldName = 'fac_saldo'
      currency = True
      Precision = 15
      Size = 2
    end
    object QFacturasfac_fecha: TDateTimeField
      FieldName = 'fac_fecha'
    end
    object QFacturasfac_vence: TDateTimeField
      FieldName = 'fac_vence'
    end
  end
  object dsFacturas: TDataSource
    DataSet = QFacturas
    Left = 576
    Top = 248
  end
  object QCentro: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QCentroBeforePost
    AfterPost = QCentroAfterPost
    AfterDelete = QCentroAfterDelete
    DataSource = dsDesem
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
        Name = 'des_numero'
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
      'emp_codigo, des_numero,'
      'cen_codigo, det_secuencia, cen_nombre, det_monto,'
      'suc_codigo, cen_referencia, sub_referencia, sub_secuencia'
      'from'
      'DesemCentroCostos'
      'where'
      'emp_codigo = :emp_codigo'
      'and des_numero = :des_numero'
      'and suc_codigo = :suc_codigo'
      'order by'
      'det_secuencia')
    Left = 544
    Top = 280
    object QCentroemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QCentrodes_numero: TIntegerField
      FieldName = 'des_numero'
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
      currency = True
      Precision = 19
    end
    object QCentrosuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QCentrocen_referencia: TStringField
      FieldName = 'cen_referencia'
      OnChange = QCentrocen_referenciaChange
    end
    object QCentrosub_referencia: TStringField
      FieldName = 'sub_referencia'
      OnChange = QCentrosub_referenciaChange
    end
    object QCentrosub_secuencia: TIntegerField
      FieldName = 'sub_secuencia'
    end
  end
  object dsCentro: TDataSource
    DataSet = QCentro
    Left = 576
    Top = 280
  end
end
