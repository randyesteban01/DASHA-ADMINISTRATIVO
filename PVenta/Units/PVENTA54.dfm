object frmConsConduce: TfrmConsConduce
  Left = 176
  Top = 57
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta de conduces/Salida del Almacen'
  ClientHeight = 675
  ClientWidth = 1139
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
  object Splitter1: TSplitter
    Left = 0
    Top = 586
    Width = 1139
    Height = 6
    Cursor = crVSplit
    Align = alTop
    Beveled = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1139
    Height = 159
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
      Top = 56
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object SpeedButton2: TSpeedButton
      Left = 96
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
      OnClick = SpeedButton2Click
    end
    object Label4: TLabel
      Left = 8
      Top = 104
      Width = 37
      Height = 13
      Caption = 'Nombre'
    end
    object Label5: TLabel
      Left = 312
      Top = 80
      Width = 40
      Height = 13
      Caption = 'Ordenar'
    end
    object Label6: TLabel
      Left = 8
      Top = 32
      Width = 29
      Height = 13
      Caption = 'Fecha'
    end
    object Label7: TLabel
      Left = 8
      Top = 80
      Width = 36
      Height = 13
      Caption = 'Usuario'
    end
    object SpeedButton3: TSpeedButton
      Left = 96
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
      OnClick = SpeedButton3Click
    end
    object Label8: TLabel
      Left = 8
      Top = 8
      Width = 40
      Height = 13
      Caption = 'Sucursal'
    end
    object btDepto: TSpeedButton
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
      OnClick = btDeptoClick
    end
    object Label1: TLabel
      Left = 312
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Depto.'
    end
    object btAlm: TSpeedButton
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
      OnClick = btAlmClick
    end
    object Label3: TLabel
      Left = 312
      Top = 32
      Width = 40
      Height = 13
      Caption = 'Almac'#233'n'
    end
    object Label9: TLabel
      Left = 216
      Top = 32
      Width = 45
      Height = 13
      Caption = '#Factura'
    end
    object Label10: TLabel
      Left = 312
      Top = 56
      Width = 50
      Height = 13
      Caption = 'Proveedor'
    end
    object SpeedButton1: TSpeedButton
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
      OnClick = SpeedButton1Click
    end
    object Label11: TLabel
      Left = 312
      Top = 104
      Width = 25
      Height = 13
      Caption = 'Placa'
    end
    object Label12: TLabel
      Left = 480
      Top = 104
      Width = 33
      Height = 13
      Caption = 'Chofer'
    end
    object lbLocSuc: TLabel
      Left = 8
      Top = 132
      Width = 44
      Height = 13
      Caption = 'Localidad'
    end
    object btLocalidad: TSpeedButton
      Left = 108
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
      OnClick = btLocalidadClick
    end
    object edCliente: TEdit
      Left = 56
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
      TabOrder = 4
      OnChange = edClienteChange
      OnKeyDown = edClienteKeyDown
    end
    object tCliente: TEdit
      Left = 120
      Top = 56
      Width = 185
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
    object edNombre: TEdit
      Left = 56
      Top = 104
      Width = 249
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
    object cbStatus: TRadioGroup
      Left = 604
      Top = 2
      Width = 101
      Height = 124
      Caption = 'Status'
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'Anulados'
        'Emiidos'
        'Facturados'
        'No Facturados')
      TabOrder = 14
      OnClick = cbStatusClick
    end
    object cbOrden: TComboBox
      Left = 376
      Top = 80
      Width = 225
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
      TabOrder = 10
      OnClick = cbOrdenClick
      Items.Strings = (
        'Numero'
        'Nombre'
        'Fecha'
        'Factura')
    end
    object Fecha1: TDateTimePicker
      Left = 56
      Top = 32
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
    object Fecha2: TDateTimePicker
      Left = 136
      Top = 32
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
    object tUsuario: TEdit
      Left = 120
      Top = 80
      Width = 185
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
    object edUsuario: TEdit
      Left = 56
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
      TabOrder = 5
      OnChange = edUsuarioChange
      OnKeyDown = edUsuarioKeyDown
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 55
      Top = 8
      Width = 250
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
      OnClick = BitBtn2Click
    end
    object tDepto: TEdit
      Left = 440
      Top = 8
      Width = 161
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
    object edDepto: TEdit
      Left = 376
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
      TabOrder = 7
      OnChange = edDeptoChange
      OnKeyDown = edDeptoKeyDown
    end
    object tAlm: TEdit
      Left = 440
      Top = 32
      Width = 161
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
    object edAlma: TEdit
      Left = 376
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
      TabOrder = 8
      OnChange = edAlmaChange
      OnKeyDown = edAlmaKeyDown
    end
    object edFactura: TEdit
      Left = 264
      Top = 32
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
      TabOrder = 3
    end
    object edProveedor: TEdit
      Left = 376
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
      TabOrder = 9
      OnChange = edProveedorChange
      OnKeyDown = edProveedorKeyDown
    end
    object tProv: TEdit
      Left = 440
      Top = 56
      Width = 161
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
    object edplaca: TEdit
      Left = 376
      Top = 104
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
      ParentFont = False
      TabOrder = 11
    end
    object edchofer: TEdit
      Left = 520
      Top = 104
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
      ParentFont = False
      TabOrder = 12
    end
    object edtSucLoc: TEdit
      Left = 56
      Top = 129
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
      TabOrder = 19
      OnChange = edtSucLocChange
      OnKeyDown = edtSucLocKeyDown
    end
    object TSucLoc: TEdit
      Left = 133
      Top = 129
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 635
    Width = 1139
    Height = 40
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      1139
      40)
    object lbCantidad: TLabel
      Left = 8
      Top = 13
      Width = 68
      Height = 13
      Caption = '0 Conduces'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn2: TBitBtn
      Left = 969
      Top = 8
      Width = 76
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
      Left = 890
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Refrescar >>'
      TabOrder = 1
      OnClick = btRefreshClick
    end
    object btClose: TBitBtn
      Left = 1049
      Top = 8
      Width = 76
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
    object bttickets: TBitBtn
      Left = 730
      Top = 8
      Width = 155
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Imprimir listado de tickets'
      TabOrder = 3
      OnClick = btticketsClick
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
    object btdespachados: TBitBtn
      Left = 578
      Top = 8
      Width = 146
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Productos despachados'
      TabOrder = 4
      OnClick = btdespachadosClick
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
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 159
    Width = 1139
    Height = 427
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clInfoBk
    Ctl3D = False
    DataSource = dsConduce
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
        Expanded = False
        FieldName = 'ALM_NOMBRE'
        Title.Caption = 'Almacen'
        Width = 132
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CON_NUMERO'
        Title.Alignment = taCenter
        Title.Caption = '#Conduce'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CON_FECHA'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CON_NOMBRE'
        Title.Caption = 'Despachado a'
        Width = 197
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tfa_codigo'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo Fac.'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fac_numero'
        Title.Alignment = taCenter
        Title.Caption = '#Factura'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'con_itbis'
        Title.Alignment = taCenter
        Title.Caption = 'Itbis'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CON_TOTAL'
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Metraje'
        Title.Alignment = taCenter
        Title.Caption = 'Capacidad'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Placa'
        Title.Alignment = taCenter
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Chofer'
        Title.Alignment = taCenter
        Width = 127
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CON_STATUS'
        Title.Alignment = taCenter
        Title.Caption = 'Status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_NOMBRE'
        Title.Caption = 'Usuario'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CON_USU_ANULA'
        Title.Caption = 'USU ANULA'
        Visible = True
      end>
  end
  object Memo1: TMemo
    Left = 24
    Top = 168
    Width = 505
    Height = 41
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
    Visible = False
  end
  object Grid: TDBGrid
    Left = 0
    Top = 592
    Width = 1139
    Height = 43
    Align = alClient
    Ctl3D = False
    DataSource = dsDetalle
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
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
        Width = 114
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'PRO_NOMBRE'
        Title.Caption = 'Descripci'#243'n del Producto'
        Width = 157
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DET_CANTIDAD'
        Title.Alignment = taCenter
        Title.Caption = 'Cant'
        Width = 26
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
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DET_DESCUENTO'
        Title.Alignment = taCenter
        Title.Caption = '%Desc.'
        Width = 45
        Visible = True
      end
      item
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
        Title.Alignment = taCenter
        Width = 68
        Visible = True
      end>
  end
  object QConduce: TADOQuery
    Connection = DM.ADOSigma
    AfterOpen = QConduceAfterOpen
    DataSource = dsSuc
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
        Name = 'FECHA1'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'FECHA2'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
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
      'SELECT '
      'c.CON_FECHA, c.CON_NOMBRE, c.CON_NUMERO, c.CON_STATUS, '
      'c.CON_TOTAL, C.EMP_CODIGO, U.USU_NOMBRE, A.ALM_NOMBRE,'
      'C.SUC_CODIGO, c.con_itbis, c.cli_codigo, c.fac_forma,'
      'c.tfa_codigo, c.fac_numero, c.Metraje, c.Chofer,'
      'c.Placa, C.CON_USU_ANULA'
      'FROM'
      'CONDUCE C, USUARIOS U, ALMACEN A'
      'WHERE'
      'C.USU_CODIGO = U.USU_CODIGO'
      'AND C.EMP_CODIGO = :EMP_CODIGO'
      
        'AND C.CON_FECHA BETWEEN convert(datetime,:FECHA1,105) AND conver' +
        't(datetime,:FECHA2,105)'
      'AND C.EMP_CODIGO = A.EMP_CODIGO'
      'AND C.ALM_CODIGO = A.ALM_CODIGO'
      'AND C.SUC_CODIGO = :SUC_CODIGO')
    Left = 464
    Top = 144
    object QConduceCON_FECHA: TDateTimeField
      FieldName = 'CON_FECHA'
      Origin = 'CONDUCE.CON_FECHA'
    end
    object QConduceCON_NOMBRE: TIBStringField
      FieldName = 'CON_NOMBRE'
      Origin = 'CONDUCE.CON_NOMBRE'
      Size = 60
    end
    object QConduceCON_NUMERO: TIntegerField
      FieldName = 'CON_NUMERO'
      Origin = 'CONDUCE.CON_NUMERO'
      Required = True
      DisplayFormat = '00000'
    end
    object QConduceCON_STATUS: TIBStringField
      FieldName = 'CON_STATUS'
      Origin = 'CONDUCE.CON_STATUS'
      Size = 3
    end
    object QConduceCON_TOTAL: TFloatField
      FieldName = 'CON_TOTAL'
      Origin = 'CONDUCE.CON_TOTAL'
      currency = True
    end
    object QConduceEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'CONDUCE.EMP_CODIGO'
      Required = True
    end
    object QConduceUSU_NOMBRE: TIBStringField
      FieldName = 'USU_NOMBRE'
      Origin = 'USUARIOS.USU_NOMBRE'
      Size = 60
    end
    object QConduceALM_NOMBRE: TIBStringField
      FieldName = 'ALM_NOMBRE'
      Origin = 'ALMACEN.ALM_NOMBRE'
      Size = 60
    end
    object QConduceSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QConducecon_itbis: TBCDField
      FieldName = 'con_itbis'
      currency = True
      Precision = 15
      Size = 2
    end
    object QConducecli_codigo: TIntegerField
      FieldName = 'cli_codigo'
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
    object QConduceMetraje: TBCDField
      FieldName = 'Metraje'
      Precision = 18
      Size = 2
    end
    object QConduceChofer: TStringField
      FieldName = 'Chofer'
      Size = 50
    end
    object QConducePlaca: TStringField
      FieldName = 'Placa'
    end
    object QConduceCON_USU_ANULA: TStringField
      FieldName = 'CON_USU_ANULA'
      Size = 15
    end
  end
  object dsConduce: TDataSource
    DataSet = QConduce
    Left = 496
    Top = 144
  end
  object dsDetalle: TDataSource
    DataSet = QDetalle
    Left = 496
    Top = 176
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 464
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
    Left = 368
    Top = 176
    object QSucursalsuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QSucursalsuc_nombre: TStringField
      FieldName = 'suc_nombre'
      Size = 60
    end
    object QSucursalemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QSucursalalm_codigo: TIntegerField
      FieldName = 'alm_codigo'
    end
  end
  object dsSuc: TDataSource
    DataSet = QSucursal
    Left = 400
    Top = 176
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
    OnCalcFields = QDetalleCalcFields
    DataSource = dsConduce
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
        Name = 'con_numero'
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
      'CON_NUMERO, DET_CANTIDAD, DET_CONITBIS, DET_ITBIS, '
      'DET_PRECIO, DET_SECUENCIA, EMP_CODIGO, PRO_BARRA, '
      'PRO_CODIGO, PRO_NOMBRE, PRO_RFABRIC, PRO_RORIGINAL,'
      'DET_LOTE, DET_VENCE, DET_FECHAVENCE, DET_ESCALA,'
      'DET_MANEJAESCALA, DET_MEDIDA, DET_PRECIO1,'
      'DET_PRECIO2, DET_PRECIO3, DET_PRECIO4,'
      'DET_COSTOUND, DET_COSTOEMP, SUC_CODIGO,'
      'DET_DESCUENTO, DET_NOTA'
      'from DET_CONDUCE'
      'where emp_codigo = :emp_codigo'
      'and con_numero = :con_numero'
      'and suc_codigo = :suc_codigo'
      'order by det_secuencia')
    Left = 464
    Top = 176
    object QDetalleCON_NUMERO: TIntegerField
      FieldName = 'CON_NUMERO'
      Origin = 'DET_CONDUCE.CON_NUMERO'
    end
    object QDetalleDET_CANTIDAD: TFloatField
      FieldName = 'DET_CANTIDAD'
      Origin = 'DET_CONDUCE.DET_CANTIDAD'
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
      Required = True
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
    end
    object QDetallePRO_NOMBRE: TIBStringField
      FieldName = 'PRO_NOMBRE'
      Origin = 'DET_CONDUCE.PRO_NOMBRE'
      Size = 60
    end
    object QDetallePRO_RFABRIC: TIBStringField
      FieldName = 'PRO_RFABRIC'
      Origin = 'DET_CONDUCE.PRO_RFABRIC'
      Size = 60
    end
    object QDetallePRO_RORIGINAL: TIBStringField
      FieldName = 'PRO_RORIGINAL'
      Origin = 'DET_CONDUCE.PRO_RORIGINAL'
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
      FieldName = 'DET_MEDIDA'
      Origin = 'DET_CONDUCE.DET_MEDIDA'
      Size = 3
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
  end
end
