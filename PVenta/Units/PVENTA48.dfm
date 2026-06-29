object frmConsRecibos: TfrmConsRecibos
  Left = 368
  Top = 251
  ActiveControl = edVendedor
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta de recibos'
  ClientHeight = 416
  ClientWidth = 967
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
    Top = 233
    Width = 967
    Height = 4
    Cursor = crVSplit
    Align = alTop
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 129
    Width = 967
    Height = 104
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clInfoBk
    Ctl3D = False
    DataSource = dsRecibos
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'rec_tipo'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'REC_NUMERO'
        Title.Alignment = taCenter
        Title.Caption = 'N'#250'mero'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REC_NUMEROMANUAL'
        Title.Alignment = taCenter
        Title.Caption = '# Manual'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ped_numero'
        Title.Alignment = taCenter
        Title.Caption = '#Pedido'
        Width = 44
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'REC_FECHA'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REC_NOMBRE'
        Title.Caption = 'Nombre del cliente'
        Width = 214
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'rec_tasa'
        Title.Alignment = taCenter
        Title.Caption = 'Tasa'
        Width = 33
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REC_MONTO'
        Title.Alignment = taCenter
        Title.Caption = 'Monto'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REC_DESCUENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Descuento'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'rec_retencion'
        Title.Alignment = taCenter
        Title.Caption = 'Retencion'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'rec_interes'
        Title.Alignment = taCenter
        Title.Caption = 'Interes'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REC_MORA'
        Title.Caption = 'MORA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REC_CONCEPTO'
        Title.Caption = 'Concepto'
        Width = 167
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'REC_STATUS'
        Title.Alignment = taCenter
        Title.Caption = 'Status'
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
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_NOMBRE'
        Title.Caption = 'Usuario'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REC_USUARIO_ANULO'
        Title.Caption = 'USU ANULA'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 967
    Height = 129
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
      Left = 21
      Top = 104
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object SpeedButton2: TSpeedButton
      Left = 102
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
      OnClick = SpeedButton2Click
    end
    object Label12: TLabel
      Left = 328
      Top = 8
      Width = 46
      Height = 13
      Caption = 'Vendedor'
    end
    object btVendedor: TSpeedButton
      Left = 414
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
      OnClick = btVendedorClick
    end
    object Label3: TLabel
      Left = 21
      Top = 56
      Width = 32
      Height = 13
      Caption = 'Cajero'
    end
    object SpeedButton1: TSpeedButton
      Left = 102
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
      Left = 328
      Top = 80
      Width = 37
      Height = 13
      Caption = 'Nombre'
    end
    object Label5: TLabel
      Left = 464
      Top = 80
      Width = 30
      Height = 13
      Caption = 'Orden'
    end
    object Label6: TLabel
      Left = 21
      Top = 80
      Width = 29
      Height = 13
      Caption = 'Fecha'
    end
    object Label7: TLabel
      Left = 328
      Top = 32
      Width = 36
      Height = 13
      Caption = 'Usuario'
    end
    object SpeedButton3: TSpeedButton
      Left = 414
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
      OnClick = SpeedButton3Click
    end
    object Label1: TLabel
      Left = 238
      Top = 80
      Width = 40
      Height = 13
      Caption = '#Pedido'
    end
    object Label8: TLabel
      Left = 21
      Top = 8
      Width = 40
      Height = 13
      Caption = 'Sucursal'
    end
    object Label13: TLabel
      Left = 21
      Top = 32
      Width = 22
      Height = 13
      Caption = 'Caja'
    end
    object SpeedButton4: TSpeedButton
      Left = 102
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
    object Label14: TLabel
      Left = 328
      Top = 104
      Width = 43
      Height = 13
      Caption = 'Provincia'
    end
    object btprovincia: TSpeedButton
      Left = 414
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
      OnClick = btprovinciaClick
    end
    object Label15: TLabel
      Left = 328
      Top = 56
      Width = 38
      Height = 13
      Caption = 'Tipo Cli.'
    end
    object bttipo: TSpeedButton
      Left = 414
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
      OnClick = bttipoClick
    end
    object edCliente: TEdit
      Left = 66
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
      TabOrder = 5
      OnChange = edClienteChange
      OnKeyDown = edClienteKeyDown
    end
    object tCliente: TEdit
      Left = 127
      Top = 104
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
      TabOrder = 12
    end
    object tVendedor: TEdit
      Left = 440
      Top = 8
      Width = 169
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
    object edVendedor: TEdit
      Left = 378
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
      TabOrder = 6
      OnChange = edVendedorChange
      OnKeyDown = edVendedorKeyDown
    end
    object tCajero: TEdit
      Left = 127
      Top = 56
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
      TabOrder = 14
    end
    object edCajero: TEdit
      Left = 66
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
      TabOrder = 1
      OnChange = edCajeroChange
      OnKeyDown = edCajeroKeyDown
    end
    object edNombre: TEdit
      Left = 378
      Top = 80
      Width = 79
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
    end
    object cbStatus: TRadioGroup
      Left = 611
      Top = 2
      Width = 84
      Height = 125
      Caption = 'Status'
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'Anulados'
        'Emitidos')
      TabOrder = 15
      OnClick = btRefreshClick
    end
    object cbOrden: TComboBox
      Left = 504
      Top = 80
      Width = 105
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
      TabOrder = 10
      OnClick = btRefreshClick
      Items.Strings = (
        'Numero'
        'Nombre'
        'Fecha'
        '#Manual')
    end
    object Fecha1: TDateTimePicker
      Left = 66
      Top = 80
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
      Left = 146
      Top = 80
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
      Left = 440
      Top = 32
      Width = 169
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
    object edUsuario: TEdit
      Left = 378
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
      TabOrder = 7
      OnChange = edUsuarioChange
      OnKeyDown = edUsuarioKeyDown
    end
    object edPedido: TEdit
      Left = 280
      Top = 80
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
      TabOrder = 4
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 66
      Top = 8
      Width = 255
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
    object tCaja: TEdit
      Left = 127
      Top = 32
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
      TabOrder = 17
    end
    object edCaja: TEdit
      Left = 66
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
      TabOrder = 18
      OnChange = edCajaChange
      OnKeyDown = edCajaKeyDown
    end
    object tprovincia: TEdit
      Left = 440
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
      TabOrder = 19
    end
    object edProvincia: TEdit
      Left = 378
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
      OnChange = edProvinciaChange
      OnKeyDown = edProvinciaKeyDown
    end
    object edtipo: TEdit
      Left = 378
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
      TabOrder = 8
      OnChange = edtipoChange
      OnKeyDown = edtipoKeyDown
    end
    object ttipo: TEdit
      Left = 440
      Top = 56
      Width = 169
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
  end
  object Memo1: TMemo
    Left = 16
    Top = 152
    Width = 505
    Height = 49
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
    Visible = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 376
    Width = 967
    Height = 40
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 3
    DesignSize = (
      967
      40)
    object lbCantidad: TLabel
      Left = 8
      Top = 13
      Width = 58
      Height = 13
      Caption = '0 Recibos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn2: TBitBtn
      Left = 808
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
      Left = 728
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Refrescar >>'
      TabOrder = 1
      OnClick = btRefreshClick
    end
    object btClose: TBitBtn
      Left = 888
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
  object PageControl1: TPageControl
    Left = 0
    Top = 237
    Width = 967
    Height = 139
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 4
    object TabSheet2: TTabSheet
      Caption = 'Documentos afectados'
      ImageIndex = 1
      object GridMov: TDBGrid
        Left = 0
        Top = 0
        Width = 959
        Height = 111
        Align = alClient
        Color = clInfoBk
        Ctl3D = False
        DataSource = dsDoc
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'DET_TIPO'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Documento'
            Width = 77
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FAC_FORMA'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Grupo'
            Width = 41
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TFA_CODIGO'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Tipo'
            Width = 36
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DET_NUMERO'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'N'#250'mero'
            Width = 77
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Cuota'
            Title.Alignment = taCenter
            Title.Caption = '#Cuota'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DET_FECHA'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DET_MONTO'
            Title.Alignment = taCenter
            Title.Caption = 'Aplicado'
            Width = 106
            Visible = True
          end>
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Cuentas contables'
      DesignSize = (
        959
        111)
      object Label9: TLabel
        Left = 799
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
        Left = 799
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
        Left = 799
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
      object btBuscaCta: TSpeedButton
        Left = 799
        Top = 82
        Width = 153
        Height = 25
        Anchors = [akTop, akRight]
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
        Left = 799
        Top = 57
        Width = 153
        Height = 25
        Anchors = [akTop, akRight]
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
        Width = 793
        Height = 111
        Align = alLeft
        Anchors = [akLeft, akTop, akRight, akBottom]
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
        TitleFont.Style = [fsBold]
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
        Left = 855
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
        Left = 855
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
        Left = 855
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
    end
    object TabSheet3: TTabSheet
      Caption = 'Retenciones'
      ImageIndex = 2
      object GridRet: TDBGrid
        Left = 30
        Top = 0
        Width = 659
        Height = 111
        Align = alClient
        Ctl3D = False
        DataSource = dsRet
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
        OnColEnter = GridRetColEnter
        OnEnter = GridRetEnter
        OnKeyDown = GridRetKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'ret_codigo'
            Title.Alignment = taCenter
            Title.Caption = 'Codigo'
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'det_nombre'
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
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 30
        Height = 111
        Align = alLeft
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 1
        object SpeedButton5: TSpeedButton
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
          OnClick = SpeedButton5Click
        end
        object SpeedButton6: TSpeedButton
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
          OnClick = SpeedButton6Click
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Centros de costo'
      ImageIndex = 3
      object GridCentro: TDBGrid
        Left = 30
        Top = 0
        Width = 659
        Height = 111
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
        Columns = <
          item
            Expanded = False
            FieldName = 'cen_codigo'
            Title.Alignment = taCenter
            Title.Caption = 'Codigo'
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
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 30
        Height = 111
        Align = alLeft
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 1
        object SpeedButton7: TSpeedButton
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
          OnClick = SpeedButton7Click
        end
        object SpeedButton8: TSpeedButton
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
          OnClick = SpeedButton8Click
        end
      end
    end
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 560
    Top = 224
  end
  object QRecibos: TADOQuery
    Connection = DM.ADOSigma
    BeforeOpen = QRecibosBeforeOpen
    AfterOpen = QRecibosAfterOpen
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
      'select r.emp_codigo, c.caj_nombre, r.rec_fecha, r.rec_numero, '
      'r.rec_numeromanual, r.rec_monto,'
      
        'r.rec_status, r.rec_nombre, r.rec_concepto, r.rec_descuento, u.u' +
        'su_nombre,'
      'r.ped_numero, r.suc_codigo, j.caj_nombre as Caja,'
      
        'r.rec_retencion, r.rec_tipo, r.rec_tasa, r.rec_interes, R.REC_US' +
        'UARIO_ANULO, REC_MORA'
      'from'
      'recibos r'
      'left outer join clientes t on'
      '(r.emp_codigo = t.emp_codigo'
      'and r.cli_codigo = t.cli_codigo), cajeros c, usuarios u, cajas j'
      'where'
      'r.emp_codigo = c.emp_codigo'
      'and r.caj_codigo = c.caj_codigo'
      'and r.usu_codigo = u.usu_codigo'
      
        'and r.rec_fecha between convert(datetime,:fecha1,105) and conver' +
        't(datetime,:fecha2,105)'
      'and r.emp_codigo = :emp'
      'and r.suc_codigo = :suc'
      'and r.emp_codigo = j.emp_codigo'
      'and r.rec_caja = j.caj_codigo')
    Left = 560
    Top = 160
    object QRecibosCAJ_NOMBRE: TIBStringField
      FieldName = 'CAJ_NOMBRE'
      Origin = 'CAJEROS.CAJ_NOMBRE'
      Size = 60
    end
    object QRecibosREC_FECHA: TDateTimeField
      FieldName = 'REC_FECHA'
      Origin = 'RECIBOS.REC_FECHA'
    end
    object QRecibosREC_NUMERO: TIntegerField
      FieldName = 'REC_NUMERO'
      Origin = 'RECIBOS.REC_NUMERO'
      Required = True
      DisplayFormat = '00000'
    end
    object QRecibosREC_NUMEROMANUAL: TIBStringField
      FieldName = 'REC_NUMEROMANUAL'
      Origin = 'RECIBOS.REC_NUMEROMANUAL'
      Size = 15
    end
    object QRecibosREC_MONTO: TIBBCDField
      FieldName = 'REC_MONTO'
      Origin = 'RECIBOS.REC_MONTO'
      currency = True
      Precision = 9
      Size = 2
    end
    object QRecibosREC_STATUS: TIBStringField
      FieldName = 'REC_STATUS'
      Origin = 'RECIBOS.REC_STATUS'
      Size = 3
    end
    object QRecibosREC_NOMBRE: TIBStringField
      FieldName = 'REC_NOMBRE'
      Origin = 'RECIBOS.REC_NOMBRE'
      Size = 60
    end
    object QRecibosREC_CONCEPTO: TIBStringField
      FieldName = 'REC_CONCEPTO'
      Origin = 'RECIBOS.REC_CONCEPTO'
      Size = 60
    end
    object QRecibosREC_DESCUENTO: TFloatField
      FieldName = 'REC_DESCUENTO'
      Origin = 'RECIBOS.REC_DESCUENTO'
      currency = True
    end
    object QRecibosUSU_NOMBRE: TIBStringField
      FieldName = 'USU_NOMBRE'
      Origin = 'USUARIOS.USU_NOMBRE'
      Size = 60
    end
    object QRecibosEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'RECIBOS.EMP_CODIGO'
      Required = True
    end
    object QRecibosped_numero: TIntegerField
      FieldName = 'ped_numero'
    end
    object QRecibossuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QRecibosCaja: TStringField
      FieldName = 'Caja'
      Size = 60
    end
    object QRecibosrec_retencion: TBCDField
      FieldName = 'rec_retencion'
      currency = True
      Precision = 15
      Size = 2
    end
    object QRecibosrec_tipo: TStringField
      FieldName = 'rec_tipo'
      Size = 1
    end
    object QRecibosrec_tasa: TBCDField
      FieldName = 'rec_tasa'
      currency = True
      Precision = 15
      Size = 2
    end
    object QRecibosrec_interes: TBCDField
      FieldName = 'rec_interes'
      currency = True
      Precision = 15
      Size = 2
    end
    object QRecibosREC_USUARIO_ANULO: TStringField
      FieldName = 'REC_USUARIO_ANULO'
      Size = 30
    end
    object QRecibosREC_MORA: TCurrencyField
      FieldName = 'REC_MORA'
    end
  end
  object dsRecibos: TDataSource
    DataSet = QRecibos
    OnDataChange = dsRecibosDataChange
    Left = 592
    Top = 160
  end
  object QDoc: TADOQuery
    Connection = DM.ADOSigma
    OnCalcFields = QDocCalcFields
    DataSource = dsRecibos
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
        Name = 'rec_numero'
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
      'd.DET_MONTO+isnull(d.det_descuento,0) as DET_MONTO,'
      'd.DET_NUMERO, d.DET_PENDIENTE, d.DET_SECUENCIA,'
      'd.DET_TIPO, d.EMP_CODIGO, d.REC_NUMERO, d.FAC_FORMA,'
      'd.TFA_CODIGO, d.DET_FECHA, d.DET_CUOTA, d.MOV_CUOTA'
      'from DET_RECIBO d, recibos r'
      'where'
      'r.emp_codigo = d.emp_codigo'
      'and r.suc_codigo = d.suc_codigo'
      'and r.rec_numero = d.rec_numero'
      'and d.emp_codigo = :emp_codigo'
      'and d.rec_numero = :rec_numero'
      'and d.suc_codigo = :suc_codigo'
      'and d.det_secuencia > 0'
      'order by d.det_secuencia')
    Left = 560
    Top = 192
    object QDocDET_MONTO: TFloatField
      FieldName = 'DET_MONTO'
      Origin = 'DET_RECIBO.DET_MONTO'
      currency = True
    end
    object QDocDET_NUMERO: TIntegerField
      FieldName = 'DET_NUMERO'
      Origin = 'DET_RECIBO.DET_NUMERO'
      DisplayFormat = '00000'
    end
    object QDocDET_PENDIENTE: TFloatField
      FieldName = 'DET_PENDIENTE'
      Origin = 'DET_RECIBO.DET_PENDIENTE'
      currency = True
    end
    object QDocDET_SECUENCIA: TIntegerField
      FieldName = 'DET_SECUENCIA'
      Origin = 'DET_RECIBO.DET_SECUENCIA'
      Required = True
    end
    object QDocDET_TIPO: TIBStringField
      FieldName = 'DET_TIPO'
      Origin = 'DET_RECIBO.DET_TIPO'
      Size = 3
    end
    object QDocEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'DET_RECIBO.EMP_CODIGO'
    end
    object QDocREC_NUMERO: TIntegerField
      FieldName = 'REC_NUMERO'
      Origin = 'DET_RECIBO.REC_NUMERO'
      DisplayFormat = '00000'
    end
    object QDocFAC_FORMA: TIBStringField
      FieldName = 'FAC_FORMA'
      Origin = 'DET_RECIBO.FAC_FORMA'
      Size = 1
    end
    object QDocTFA_CODIGO: TIntegerField
      FieldName = 'TFA_CODIGO'
      Origin = 'DET_RECIBO.TFA_CODIGO'
    end
    object QDocDET_FECHA: TDateTimeField
      FieldName = 'DET_FECHA'
      Origin = 'DET_RECIBO.DET_FECHA'
    end
    object QDocMOV_CUOTA: TIntegerField
      FieldName = 'MOV_CUOTA'
      Origin = 'DET_RECIBO.MOV_CUOTA'
      DisplayFormat = '##'
    end
    object QDocDET_CUOTA: TIBStringField
      FieldName = 'DET_CUOTA'
      Origin = 'DET_RECIBO.DET_CUOTA'
      Size = 5
    end
    object QDocCuota: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Cuota'
      DisplayFormat = '00'
      Calculated = True
    end
  end
  object dsDoc: TDataSource
    DataSet = QDoc
    Left = 592
    Top = 192
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
    DataSource = dsRecibos
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
        Name = 'REC_NUMERO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'CAT_CUENTA, CAT_NOMBRE, REC_NUMERO, DET_MONTO, '
      'DET_ORIGEN, DET_SECUENCIA, EMP_CODIGO, suc_codigo'
      'FROM'
      'CONTDET_RECIBOS'
      'WHERE '
      'EMP_CODIGO = :EMP_CODIGO'
      'AND REC_NUMERO = :REC_NUMERO'
      'ORDER BY'
      'DET_SECUENCIA')
    Left = 352
    Top = 144
    object QDetalleCAT_CUENTA: TIBStringField
      FieldName = 'CAT_CUENTA'
      Origin = 'CONTDET_RECIBOS.CAT_CUENTA'
      OnChange = QDetalleCAT_CUENTAChange
      Size = 15
    end
    object QDetalleCAT_NOMBRE: TIBStringField
      FieldName = 'CAT_NOMBRE'
      Origin = 'CONTDET_RECIBOS.CAT_NOMBRE'
      Size = 60
    end
    object QDetalleREC_NUMERO: TIntegerField
      FieldName = 'REC_NUMERO'
      Origin = 'CONTDET_RECIBOS.REC_NUMERO'
    end
    object QDetalleDET_MONTO: TFloatField
      FieldName = 'DET_MONTO'
      Origin = 'CONTDET_RECIBOS.DET_MONTO'
      currency = True
    end
    object QDetalleDET_ORIGEN: TIBStringField
      FieldName = 'DET_ORIGEN'
      Origin = 'CONTDET_RECIBOS.DET_ORIGEN'
      Size = 7
    end
    object QDetalleDET_SECUENCIA: TIntegerField
      FieldName = 'DET_SECUENCIA'
      Origin = 'CONTDET_RECIBOS.DET_SECUENCIA'
    end
    object QDetalleEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'CONTDET_RECIBOS.EMP_CODIGO'
    end
    object QDetallesuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
  end
  object dsDetalle: TDataSource
    DataSet = QDetalle
    Left = 384
    Top = 144
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
    Top = 176
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
    Top = 176
  end
  object QRetenciones: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QRetencionesBeforePost
    AfterPost = QRetencionesAfterPost
    AfterDelete = QRetencionesAfterDelete
    OnNewRecord = QRetencionesNewRecord
    DataSource = dsRecibos
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
        Name = 'rec_numero'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'emp_codigo, suc_codigo, rec_numero, ret_codigo, det_nombre,'
      'det_porciento, det_monto, det_secuencia, det_cuenta'
      'from'
      'RecibosRetencion'
      'where'
      'emp_codigo = :emp_codigo'
      'and suc_codigo = :suc_codigo'
      'and rec_numero = :rec_numero'
      'order by det_secuencia')
    Left = 216
    Top = 176
    object QRetencionesemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QRetencionessuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QRetencionesrec_numero: TIntegerField
      FieldName = 'rec_numero'
    end
    object QRetencionesret_codigo: TIntegerField
      FieldName = 'ret_codigo'
      OnChange = QRetencionesret_codigoChange
    end
    object QRetencionesdet_nombre: TStringField
      FieldName = 'det_nombre'
      Size = 60
    end
    object QRetencionesdet_porciento: TBCDField
      FieldName = 'det_porciento'
      currency = True
      Precision = 15
      Size = 2
    end
    object QRetencionesdet_monto: TBCDField
      FieldName = 'det_monto'
      currency = True
      Precision = 18
      Size = 0
    end
    object QRetencionesdet_secuencia: TIntegerField
      FieldName = 'det_secuencia'
    end
    object QRetencionesdet_cuenta: TStringField
      FieldName = 'det_cuenta'
      Size = 15
    end
  end
  object dsRet: TDataSource
    DataSet = QRetenciones
    Left = 248
    Top = 176
  end
  object QCentro: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QCentroBeforePost
    AfterPost = QCentroAfterPost
    AfterDelete = QCentroAfterDelete
    OnNewRecord = QCentroNewRecord
    DataSource = dsRecibos
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
        Name = 'rec_numero'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'emp_codigo, suc_codigo, rec_numero,'
      'cen_codigo, det_secuencia, cen_nombre, det_monto'
      'from'
      'RecibosCentroCostos'
      'where'
      'emp_codigo = :emp_codigo'
      'and suc_codigo = :suc_codigo'
      'and rec_numero = :rec_numero'
      'order by'
      'det_Secuencia')
    Left = 216
    Top = 144
    object QCentroemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QCentrosuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QCentrorec_numero: TIntegerField
      FieldName = 'rec_numero'
    end
    object QCentrocen_codigo: TIntegerField
      FieldName = 'cen_codigo'
      OnChange = QCentrocen_codigoChange
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
      Precision = 15
      Size = 2
    end
  end
  object dsCentro: TDataSource
    DataSet = QCentro
    Left = 248
    Top = 144
  end
end
