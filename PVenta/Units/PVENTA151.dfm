object frmConsTicket: TfrmConsTicket
  Left = 354
  Top = 142
  Width = 1132
  Height = 620
  Caption = 'Consulta de tickets de caja'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1116
    Height = 106
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label3: TLabel
      Left = 216
      Top = 8
      Width = 30
      Height = 13
      Caption = 'Cajero'
    end
    object SpeedButton1: TSpeedButton
      Left = 296
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
    object Label6: TLabel
      Left = 8
      Top = 8
      Width = 30
      Height = 13
      Caption = 'Fecha'
    end
    object Label11: TLabel
      Left = 148
      Top = 32
      Width = 21
      Height = 13
      Caption = 'Caja'
    end
    object Label1: TLabel
      Left = 8
      Top = 32
      Width = 30
      Height = 13
      Caption = 'Ticket'
    end
    object Label2: TLabel
      Left = 216
      Top = 32
      Width = 21
      Height = 13
      Caption = 'NCF'
    end
    object Label4: TLabel
      Left = 8
      Top = 80
      Width = 43
      Height = 13
      Caption = 'Producto'
    end
    object SpeedButton2: TSpeedButton
      Left = 118
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
      OnClick = SpeedButton2Click
    end
    object Label5: TLabel
      Left = 456
      Top = 58
      Width = 127
      Height = 13
      Caption = 'N'#250'mero de Carnet del Club'
    end
    object Label7: TLabel
      Left = 328
      Top = 80
      Width = 32
      Height = 13
      Caption = 'Cliente'
    end
    object SpeedButton3: TSpeedButton
      Left = 414
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
    object tCajero: TEdit
      Left = 320
      Top = 8
      Width = 129
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
    object edCajero: TEdit
      Left = 256
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
      OnChange = edCajeroChange
      OnKeyDown = edCajeroKeyDown
    end
    object Fecha1: TDateTimePicker
      Left = 48
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
      Left = 130
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
    object edCaja: TEdit
      Left = 176
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
      TabOrder = 3
    end
    object rgTipo: TRadioGroup
      Left = 456
      Top = 2
      Width = 169
      Height = 55
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'Credito'
        'Contado'
        'Anulados'
        'Cancelados'
        'Temporales')
      TabOrder = 7
      OnClick = btRefreshClick
    end
    object eddesde: TEdit
      Left = 48
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
      TabOrder = 4
    end
    object edhasta: TEdit
      Left = 94
      Top = 32
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
      TabOrder = 5
    end
    object sec1: TEdit
      Left = 366
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
      MaxLength = 8
      ParentFont = False
      TabOrder = 8
    end
    object sec2: TEdit
      Left = 408
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
      MaxLength = 8
      ParentFont = False
      TabOrder = 9
    end
    object cbncf_fijo: TComboBox
      Left = 256
      Top = 32
      Width = 110
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 10
    end
    object ckgrabada: TCheckBox
      Left = 8
      Top = 56
      Width = 73
      Height = 17
      Caption = 'Grabadas'
      TabOrder = 11
      OnClick = ckgrabadaClick
    end
    object ckexento: TCheckBox
      Left = 88
      Top = 56
      Width = 65
      Height = 17
      Caption = 'Exentas'
      TabOrder = 12
      OnClick = ckexentoClick
    end
    object cborden: TComboBox
      Left = 256
      Top = 56
      Width = 193
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 4
      TabOrder = 13
      Text = 'Orden por Fecha,Caja,Cajero,Ticket'
      Items.Strings = (
        'Orden por Fecha'
        'Orden por Caja'
        'Orden por Cajero'
        'Orden por Ticket'
        'Orden por Fecha,Caja,Cajero,Ticket'
        'Orden por NCF'
        'Orden por Nombre')
    end
    object edProd: TEdit
      Left = 56
      Top = 80
      Width = 57
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      OnKeyDown = edProdKeyDown
    end
    object tProd: TEdit
      Left = 144
      Top = 80
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
    object edCarnet: TEdit
      Left = 592
      Top = 58
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
      TabOrder = 16
    end
    object edCliente: TEdit
      Left = 368
      Top = 80
      Width = 41
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
      OnChange = edClienteChange
      OnKeyDown = edClienteKeyDown
    end
    object tCliente: TEdit
      Left = 440
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
      TabOrder = 18
    end
    object ckdomicilio: TCheckBox
      Left = 160
      Top = 56
      Width = 65
      Height = 17
      Caption = 'Domicilio'
      TabOrder = 19
      OnClick = ckexentoClick
    end
    object cbempresa: TDBLookupComboBox
      Left = 646
      Top = 12
      Width = 286
      Height = 21
      KeyField = 'emp_codigo'
      ListField = 'emp_nombre'
      ListSource = dsEmpresas
      TabOrder = 20
      OnClick = btRefreshClick
    end
    object cbSucursal: TDBLookupComboBox
      Left = 646
      Top = 36
      Width = 286
      Height = 21
      KeyField = 'suc_codigo'
      ListField = 'suc_nombre'
      ListSource = DS_Sucursal
      TabOrder = 21
      OnClick = btRefreshClick
    end
    object chkEmpresa: TCheckBox
      Left = 937
      Top = 16
      Width = 97
      Height = 17
      Caption = 'Empresa'
      TabOrder = 22
      OnClick = btRefreshClick
    end
    object chkSucursal: TCheckBox
      Left = 937
      Top = 40
      Width = 97
      Height = 17
      Caption = 'Sucursal'
      TabOrder = 23
      OnClick = btRefreshClick
    end
    object cbStatusDGII: TRadioGroup
      Left = 1017
      Top = 4
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
    Top = 520
    Width = 1116
    Height = 61
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      1116
      61)
    object lbcant: TLabel
      Left = 8
      Top = 8
      Width = 51
      Height = 13
      Caption = '0 Tickets'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btRefresh: TBitBtn
      Left = 322
      Top = 28
      Width = 81
      Height = 24
      Anchors = [akTop, akRight]
      Caption = 'Refrescar >>'
      TabOrder = 0
      OnClick = btRefreshClick
    end
    object btClose: TBitBtn
      Left = 666
      Top = 28
      Width = 81
      Height = 24
      Anchors = [akTop, akRight]
      Caption = '&Salir'
      TabOrder = 1
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
    object BitBtn2: TBitBtn
      Left = 418
      Top = 3
      Width = 72
      Height = 24
      Anchors = [akTop, akRight]
      Caption = 'Listado'
      TabOrder = 2
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
    object BitBtn1: TBitBtn
      Left = 602
      Top = 3
      Width = 140
      Height = 24
      Anchors = [akTop, akRight]
      Caption = 'Movimientos a credito'
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
    object BitBtn3: TBitBtn
      Left = 490
      Top = 3
      Width = 112
      Height = 24
      Anchors = [akTop, akRight]
      Caption = 'Formato formal'
      TabOrder = 4
      OnClick = BitBtn3Click
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
    object btAnula: TBitBtn
      Left = 241
      Top = 28
      Width = 81
      Height = 24
      Anchors = [akTop, akRight]
      Caption = 'Anular'
      TabOrder = 5
      OnClick = btAnulaClick
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777888877777
        8877777700007770888777778887777700007911088877910888777700007911
        0088879100888777000079111008891110087777000079911108911111007777
        0000779111101111110777770000777911111111077777770000777991111111
        8777777700007777991111108877777700007777791111108887777700007777
        7911111088877777000077777911111108887777000077779111991100888777
        0000777911108991100888770000777911187799110088870000777111187779
        1110888700007771110777779111087700007779997777777991777700007777
        77777777779977770000}
    end
    object BitBtn4: TBitBtn
      Left = 570
      Top = 28
      Width = 96
      Height = 24
      Anchors = [akTop, akRight]
      Caption = 'Asiento contable'
      TabOrder = 6
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 490
      Top = 28
      Width = 79
      Height = 24
      Anchors = [akTop, akRight]
      Caption = 'Por hora'
      TabOrder = 7
      OnClick = BitBtn5Click
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
    object BitBtn6: TBitBtn
      Left = 402
      Top = 28
      Width = 85
      Height = 24
      Anchors = [akTop, akRight]
      Caption = 'Por Cajera'
      TabOrder = 8
      OnClick = BitBtn6Click
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
    object btcambiar: TBitBtn
      Left = 302
      Top = 3
      Width = 116
      Height = 24
      Anchors = [akTop, akRight]
      Caption = 'Cambiar comprobante'
      TabOrder = 9
      OnClick = btcambiarClick
    end
    object btcambiarnc: TBitBtn
      Left = 164
      Top = 28
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Cambiar RNC'
      TabOrder = 10
      OnClick = btcambiarncClick
    end
    object btnEnviarDGII: TBitBtn
      Left = 201
      Top = 1
      Width = 95
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Enviar DGII >>'
      TabOrder = 11
      OnClick = btnEnviarDGIIClick
    end
    object btnEnviarDGIIMasivo: TBitBtn
      Left = 77
      Top = 2
      Width = 118
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Enviar todas DGII >>'
      TabOrder = 12
      OnClick = btnEnviarDGIIMasivoClick
    end
    object ProgressBar1: TProgressBar
      Left = 96
      Top = 28
      Width = 193
      Height = 17
      TabOrder = 13
      Visible = False
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 106
    Width = 1116
    Height = 414
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 2
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Tickets en general'
      object Splitter1: TSplitter
        Left = 0
        Top = 0
        Width = 1108
        Height = 4
        Cursor = crVSplit
        Align = alTop
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 4
        Width = 1108
        Height = 220
        Align = alClient
        Color = clInfoBk
        Ctl3D = False
        DataSource = dsTickets
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        PopupMenu = PopupMenu2
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
            FieldName = 'fecha_hora'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 129
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NombreCaja'
            Title.Alignment = taCenter
            Title.Caption = 'Caja'
            Width = 26
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'usu_nombre'
            Title.Caption = 'Cajero'
            Width = 91
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ticket'
            Title.Alignment = taCenter
            Title.Caption = '#Ticket'
            Width = 40
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NCF'
            Title.Alignment = taCenter
            Width = 123
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'total'
            Title.Alignment = taCenter
            Title.Caption = 'Monto'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'itbis'
            Title.Alignment = taCenter
            Title.Caption = 'Itbis'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'grabado'
            Title.Alignment = taCenter
            Title.Caption = 'Grabado'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'exento'
            Title.Alignment = taCenter
            Title.Caption = 'Exento'
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descuento'
            Title.Alignment = taCenter
            Title.Caption = 'Desc.'
            Width = 56
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'status'
            Title.Alignment = taCenter
            Title.Caption = 'St.'
            Width = 23
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Supervisor'
            Width = 129
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nombre'
            Title.Caption = 'Cliente'
            Width = 169
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'rnc'
            Title.Alignment = taCenter
            Title.Caption = 'RNC/Cedula'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Boletos'
            Title.Alignment = taCenter
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'telefono_domicilio'
            Title.Alignment = taCenter
            Title.Caption = 'Tel. Domicilio'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nombre_domicilio'
            Title.Caption = 'Nombre'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Error_DGII'
            Visible = False
          end>
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 224
        Width = 1108
        Height = 162
        ActivePage = TabSheet3
        Align = alBottom
        TabOrder = 1
        object TabSheet3: TTabSheet
          Caption = 'Detalle'
          object Grid: TDBGrid
            Left = 0
            Top = 0
            Width = 1100
            Height = 134
            Align = alClient
            Color = clInfoBk
            Ctl3D = False
            DataSource = dsDetalle
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
            Columns = <
              item
                Expanded = False
                FieldName = 'descripcion'
                Title.Caption = 'Nombre del producto'
                Width = 234
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cantidad'
                Title.Alignment = taCenter
                Title.Caption = 'Cantidad'
                Width = 45
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'precio'
                Title.Alignment = taCenter
                Title.Caption = 'Precio'
                Width = 72
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CalcItbis'
                Title.Alignment = taCenter
                Title.Caption = 'Itbis'
                Width = 68
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'descuento'
                Title.Alignment = taCenter
                Title.Caption = '% Desc.'
                Width = 43
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TotalDescuento'
                Title.Alignment = taCenter
                Title.Caption = 'Total Desc.'
                Width = 70
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
                Alignment = taCenter
                Expanded = False
                FieldName = 'EsPatrocinador'
                Title.Alignment = taCenter
                Title.Caption = 'Patrocinador'
                Visible = True
              end>
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Forma de pago'
          ImageIndex = 1
          object DBGrid3: TDBGrid
            Left = 0
            Top = 0
            Width = 1588
            Height = 133
            Align = alClient
            Color = clInfoBk
            Ctl3D = False
            DataSource = dsForma
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
            ParentCtl3D = False
            ParentFont = False
            PopupMenu = PopupMenu1
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
                FieldName = 'forma_pago'
                Title.Caption = 'Forma de pago'
                Width = 266
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'pagado'
                Title.Alignment = taCenter
                Title.Caption = 'Pagado'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'devuelta'
                Title.Alignment = taCenter
                Title.Caption = 'Devuelta'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PagoTicket'
                Width = 94
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'documento'
                Title.Alignment = taCenter
                Title.Caption = '# Documento'
                Width = 69
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'for_veriphone_desc'
                Title.Caption = 'Respuesta Veriphone'
                Width = 270
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'for_veriphone_devolucion'
                Title.Caption = 'Respuesta Veriphone Anulacion'
                Width = 336
                Visible = True
              end>
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Movimientos de credito'
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 1596
        Height = 619
        Align = alClient
        Color = clInfoBk
        Ctl3D = False
        DataSource = dsMovimiento
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
        Columns = <
          item
            Expanded = False
            FieldName = 'mov_numero'
            Title.Alignment = taCenter
            Title.Caption = '# Mov.'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'mov_fecha'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cli_nombre'
            Title.Caption = 'Nombre Cliente'
            Width = 176
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'mov_monto'
            Title.Alignment = taCenter
            Title.Caption = 'Monto'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'mov_abono'
            Title.Alignment = taCenter
            Title.Caption = 'Abono'
            Width = 62
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'mov_status'
            Title.Alignment = taCenter
            Title.Caption = 'St.'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'mov_fechavence'
            Title.Alignment = taCenter
            Title.Caption = 'Vence'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'mov_ticket'
            Title.Alignment = taCenter
            Title.Caption = '# Ticket'
            Width = 92
            Visible = True
          end>
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Resumen'
      ImageIndex = 2
      object DBGrid4: TDBGrid
        Left = 0
        Top = 0
        Width = 1596
        Height = 618
        Align = alClient
        Color = clInfoBk
        Ctl3D = False
        DataSource = dsResumen
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
            FieldName = 'usu_nombre'
            Title.Caption = 'Cajero'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NombreCaja'
            Title.Alignment = taCenter
            Title.Caption = 'Caja'
            Width = 28
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'total'
            Title.Alignment = taCenter
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'efectivo'
            Title.Alignment = taCenter
            Title.Caption = 'Efectivo'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cheque'
            Title.Alignment = taCenter
            Title.Caption = 'Cheque'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tarjeta'
            Title.Alignment = taCenter
            Title.Caption = 'Tarjeta'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'credito'
            Title.Alignment = taCenter
            Title.Caption = 'Credito'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'bonos'
            Title.Alignment = taCenter
            Title.Caption = 'Bonos'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OtrosBonos'
            Title.Caption = 'Otros Bonos'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nc'
            Title.Alignment = taCenter
            Title.Caption = 'Nota CR'
            Width = 80
            Visible = True
          end>
      end
    end
  end
  object Memo1: TMemo
    Left = 16
    Top = 288
    Width = 225
    Height = 41
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
    Visible = False
  end
  object QTickets: TADOQuery
    Connection = DM.ADOSigma
    AfterOpen = QTicketsAfterOpen
    OnCalcFields = QTicketsCalcFields
    OnFilterRecord = QTicketsFilterRecord
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'fec1'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'fec2'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'select '
      
        'm.usu_codigo, m.fecha, m.fecha_hora, m.caja, m.ticket, m.total, ' +
        'm.itbis, m.descuento, m.status,'
      
        'm.mov_numero, m.rnc, m.nombre, m.NCF_Fijo, m.NCF_Secuencia, m.so' +
        'rteo, m.Boletos,'
      
        'm.nombre_domicilio, m.telefono_domicilio, m.Domicilio, u.usu_nom' +
        'bre,'
      's.usu_nombre as Supervisor, m.ncf_tipo, c.Nombre as NombreCaja,'
      
        'm.emp_codigo, m.suc_codigo,  m.grabado, m.exento, m.AceptadoDGII' +
        ', m.eNCF, '
      
        'm.Error_DGII, e.emp_rnc, eNCF, ti.cod_dgii,  m.Enviado_DGII, m.A' +
        'ceptadoDGII'
      ''
      'from'
      'montos_ticket m'
      'left join usuarios s on (m.supervisor = s.usu_codigo)'
      'inner join usuarios u on m.usu_codigo = u.usu_codigo '
      
        'inner join cajas_ip c on m.caja=c.caja and m.emp_codigo = c.emp_' +
        'codigo and m.suc_codigo = c.suc_codigo'
      'INNER JOIN Empresas e ON e.emp_codigo=m.emp_codigo'
      
        'left join TipoNCF ti on ti.tip_codigo=m.tip_codigo AND ti.emp_co' +
        'digo=m.emp_codigo'
      ''
      'where m.ticket > 0'
      'and m.status <> '#39'ABI'#39
      
        'and m.fecha between convert(datetime, :fec1, 105) and convert(da' +
        'tetime, :fec2, 105)')
    Left = 552
    Top = 168
    object QTicketsNCF: TStringField
      FieldKind = fkCalculated
      FieldName = 'NCF'
      Calculated = True
    end
    object QTicketsusu_codigo: TIntegerField
      FieldName = 'usu_codigo'
    end
    object QTicketsfecha: TDateTimeField
      FieldName = 'fecha'
    end
    object QTicketsfecha_hora: TDateTimeField
      FieldName = 'fecha_hora'
    end
    object QTicketscaja: TIntegerField
      FieldName = 'caja'
    end
    object QTicketsticket: TIntegerField
      FieldName = 'ticket'
    end
    object QTicketstotal: TBCDField
      FieldName = 'total'
      currency = True
      Precision = 15
      Size = 2
    end
    object QTicketsitbis: TBCDField
      FieldName = 'itbis'
      currency = True
      Precision = 15
    end
    object QTicketsdescuento: TBCDField
      FieldName = 'descuento'
      currency = True
      Precision = 15
      Size = 2
    end
    object QTicketsstatus: TStringField
      FieldName = 'status'
      Size = 3
    end
    object QTicketsmov_numero: TIntegerField
      FieldName = 'mov_numero'
    end
    object QTicketsrnc: TStringField
      FieldName = 'rnc'
      Size = 30
    end
    object QTicketsNCF_Fijo: TStringField
      FieldName = 'NCF_Fijo'
      Size = 11
    end
    object QTicketsNCF_Secuencia: TBCDField
      FieldName = 'NCF_Secuencia'
      Precision = 18
      Size = 0
    end
    object QTicketssorteo: TStringField
      FieldName = 'sorteo'
      Size = 30
    end
    object QTicketsBoletos: TIntegerField
      FieldName = 'Boletos'
    end
    object QTicketsnombre_domicilio: TStringField
      FieldName = 'nombre_domicilio'
      Size = 60
    end
    object QTicketstelefono_domicilio: TStringField
      FieldName = 'telefono_domicilio'
      Size = 15
    end
    object QTicketsDomicilio: TStringField
      FieldName = 'Domicilio'
      Size = 5
    end
    object QTicketsncf_tipo: TIntegerField
      FieldName = 'ncf_tipo'
    end
    object QTicketsnombre: TStringField
      FieldName = 'nombre'
      Size = 80
    end
    object QTicketsNombreCaja: TStringField
      FieldName = 'NombreCaja'
    end
    object QTicketsusu_nombre: TStringField
      FieldName = 'usu_nombre'
      Size = 60
    end
    object QTicketsSupervisor: TStringField
      FieldName = 'Supervisor'
      Size = 60
    end
    object QTicketsemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QTicketsgrabado: TBCDField
      FieldName = 'grabado'
      currency = True
      Precision = 18
      Size = 2
    end
    object QTicketsexento: TBCDField
      FieldName = 'exento'
      currency = True
      Precision = 18
      Size = 2
    end
    object QTicketssuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QTicketsError_DGII: TBooleanField
      FieldName = 'Error_DGII'
    end
    object QTicketsemp_rnc: TStringField
      FieldName = 'emp_rnc'
    end
    object QTicketseNCF: TStringField
      FieldName = 'eNCF'
    end
    object QTicketscod_dgii: TIntegerField
      FieldName = 'cod_dgii'
    end
    object QTicketsEnviado_DGII: TBooleanField
      FieldName = 'Enviado_DGII'
    end
    object QTicketsAceptadoDGII: TBooleanField
      FieldName = 'AceptadoDGII'
    end
  end
  object dsTickets: TDataSource
    DataSet = QTickets
    OnDataChange = dsTicketsDataChange
    Left = 584
    Top = 168
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
    OnCalcFields = QDetalleCalcFields
    CommandTimeout = 0
    DataSource = dsTickets
    Parameters = <
      item
        Name = 'fecha'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'caja'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ticket'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'usu_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'producto, descripcion, cantidad, precio, Itbis,'
      'descuento, patrocinador'
      'from'
      'ticket'
      'where'
      'fecha = :fecha'
      'and caja = :caja'
      'and ticket = :ticket'
      'and usu_codigo = :usu_codigo'
      'order by'
      'secuencia')
    Left = 448
    Top = 168
    object QDetalleproducto: TIntegerField
      FieldName = 'producto'
    end
    object QDetalledescripcion: TStringField
      FieldName = 'descripcion'
      Size = 80
    end
    object QDetallecantidad: TBCDField
      FieldName = 'cantidad'
      Precision = 15
      Size = 2
    end
    object QDetalleprecio: TBCDField
      FieldName = 'precio'
      currency = True
      Precision = 15
      Size = 2
    end
    object QDetalleItbis: TBCDField
      FieldName = 'Itbis'
      currency = True
      Precision = 15
      Size = 2
    end
    object QDetalledescuento: TBCDField
      FieldName = 'descuento'
      currency = True
      Precision = 15
      Size = 2
    end
    object QDetalleTotalDescuento: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalDescuento'
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
      Calculated = True
    end
    object QDetalleCalcItbis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcItbis'
      Calculated = True
    end
    object QDetallepatrocinador: TStringField
      FieldName = 'patrocinador'
      Size = 5
    end
    object QDetalleEsPatrocinador: TStringField
      FieldKind = fkCalculated
      FieldName = 'EsPatrocinador'
      Size = 2
      Calculated = True
    end
  end
  object dsDetalle: TDataSource
    DataSet = QDetalle
    Left = 480
    Top = 168
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 224
    Top = 176
  end
  object QMovimientos: TADOQuery
    Connection = DM.ADOSigma
    CommandTimeout = 0
    DataSource = dsEmpresas
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
        Name = 'fec1'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'fec2'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'select'
      
        'm.emp_codigo, m.suc_codigo, m.mov_tipo, m.mov_numero, m.mov_fech' +
        'a, m.mov_monto,'
      
        'm.mov_abono, m.mov_status, m.mov_fechavence, m.mov_ticket, c.cli' +
        '_nombre'
      'from'
      'movimientos m, clientes c, montos_ticket t'
      'where'
      'm.emp_codigo = :emp_codigo'
      'and m.mov_tipo = '#39'TK'#39
      'and m.emp_codigo = c.emp_codigo'
      'and m.cli_codigo = c.cli_codigo'
      
        'and m.mov_fecha between convert(datetime, :fec1, 105) and conver' +
        't(datetime, :fec2, 105)'
      'and m.mov_fecha = t.fecha'
      'and m.mov_numero = t.mov_numero')
    Left = 448
    Top = 200
    object QMovimientosemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QMovimientossuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QMovimientosmov_tipo: TStringField
      FieldName = 'mov_tipo'
      Size = 3
    end
    object QMovimientosmov_numero: TIntegerField
      FieldName = 'mov_numero'
    end
    object QMovimientosmov_fecha: TDateTimeField
      FieldName = 'mov_fecha'
    end
    object QMovimientosmov_monto: TBCDField
      FieldName = 'mov_monto'
      currency = True
      Precision = 15
      Size = 2
    end
    object QMovimientosmov_abono: TBCDField
      FieldName = 'mov_abono'
      currency = True
      Precision = 15
      Size = 2
    end
    object QMovimientosmov_status: TStringField
      FieldName = 'mov_status'
      Size = 3
    end
    object QMovimientosmov_fechavence: TDateTimeField
      FieldName = 'mov_fechavence'
    end
    object QMovimientosmov_ticket: TStringField
      FieldName = 'mov_ticket'
      Size = 40
    end
    object QMovimientoscli_nombre: TStringField
      FieldName = 'cli_nombre'
      Size = 60
    end
  end
  object dsMovimiento: TDataSource
    DataSet = QMovimientos
    Left = 480
    Top = 200
  end
  object QFormapago: TADOQuery
    Connection = DM.ADOSigma
    OnCalcFields = QFormapagoCalcFields
    CommandTimeout = 0
    DataSource = dsTickets
    Parameters = <
      item
        Name = 'fecha'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'caja'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ticket'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'usu_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'case forma'
      '  when '#39'EFE'#39' then '#39'Efectivo'#39
      '  when '#39'TAR'#39' then '#39'Tarjeta'#39
      '  when '#39'CHE'#39' then '#39'Cheque'#39
      '  when '#39'CRE'#39' then '#39'Credito'#39
      '  when '#39'DEV'#39' then '#39'Nota de CR'#39
      '  when '#39'BOC'#39' then '#39'Bono Club'#39
      '  when '#39'OBO'#39' then '#39'Otros Bonos'#39
      'end as forma_pago,'
      'pagado, devuelta, documento, cliente, credito, '
      'for_veriphone_desc, for_veriphone_devolucion'
      'from'
      'formas_pago_ticket'
      'where'
      'fecha = :fecha'
      'and caja = :caja'
      'and ticket = :ticket'
      'and usu_codigo = :usu_codigo'
      'order by'
      'forma')
    Left = 448
    Top = 232
    object QFormapagoforma_pago: TStringField
      DisplayWidth = 15
      FieldName = 'forma_pago'
      ReadOnly = True
      Size = 15
    end
    object QFormapagopagado: TBCDField
      FieldName = 'pagado'
      currency = True
      Precision = 15
      Size = 2
    end
    object QFormapagodevuelta: TBCDField
      FieldName = 'devuelta'
      currency = True
      Precision = 15
      Size = 2
    end
    object QFormapagodocumento: TStringField
      FieldName = 'documento'
    end
    object QFormapagocliente: TIntegerField
      FieldName = 'cliente'
    end
    object QFormapagocredito: TStringField
      FieldName = 'credito'
      Size = 5
    end
    object QFormapagoPagoTicket: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PagoTicket'
      Calculated = True
    end
    object QFormapagofor_veriphone_desc: TStringField
      FieldName = 'for_veriphone_desc'
      Size = 2500
    end
    object QFormapagofor_veriphone_devolucion: TStringField
      FieldName = 'for_veriphone_devolucion'
      Size = 255
    end
  end
  object dsForma: TDataSource
    DataSet = QFormapago
    Left = 480
    Top = 232
  end
  object QResumen: TADOQuery
    Connection = DM.ADOSigma
    OnCalcFields = QResumenCalcFields
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'emp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'fec1'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'fec2'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select'
      '*'
      'from'
      'pr_resumen_ejecutivo_caja (:emp, :fec1, :fec2)')
    Left = 552
    Top = 200
    object QResumenusu_codigo: TIntegerField
      FieldName = 'usu_codigo'
    end
    object QResumenusu_nombre: TStringField
      FieldName = 'usu_nombre'
      Size = 60
    end
    object QResumencaja: TIntegerField
      FieldName = 'caja'
    end
    object QResumentotal: TBCDField
      FieldName = 'total'
      currency = True
      Precision = 19
    end
    object QResumenefectivo: TBCDField
      FieldName = 'efectivo'
      currency = True
      Precision = 19
    end
    object QResumencheque: TBCDField
      FieldName = 'cheque'
      currency = True
      Precision = 19
    end
    object QResumentarjeta: TBCDField
      FieldName = 'tarjeta'
      currency = True
      Precision = 19
    end
    object QResumencredito: TBCDField
      FieldName = 'credito'
      currency = True
      Precision = 19
    end
    object QResumenOtrosBonos: TBCDField
      FieldName = 'OtrosBonos'
      currency = True
      Precision = 19
    end
    object QResumenbonos: TBCDField
      FieldName = 'bonos'
      currency = True
      Precision = 19
    end
    object QResumennc: TBCDField
      FieldName = 'nc'
      currency = True
      Precision = 19
    end
    object QResumendescuento: TBCDField
      FieldName = 'descuento'
      Precision = 19
    end
    object QResumenNombreCaja: TStringField
      FieldName = 'NombreCaja'
    end
  end
  object dsResumen: TDataSource
    DataSet = QResumen
    Left = 584
    Top = 200
  end
  object QEmpresas: TADOQuery
    Connection = DM.ADOSigma
    AfterOpen = QEmpresasAfterOpen
    CommandTimeout = 0
    Parameters = <
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
      'e.emp_codigo, e.emp_nombre, a.usu_codigo'
      'from'
      'empresas e, empaccesos a'
      'where'
      'e.emp_codigo = a.emp_codigo'
      'and a.usu_codigo = :usu'
      'and e.emp_status = '#39'ACT'#39
      'order by'
      '1')
    Left = 288
    Top = 176
    object QEmpresasemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QEmpresasemp_nombre: TStringField
      FieldName = 'emp_nombre'
      Size = 60
    end
    object QEmpresasusu_codigo: TIntegerField
      FieldName = 'usu_codigo'
    end
  end
  object dsEmpresas: TDataSource
    DataSet = QEmpresas
    Left = 320
    Top = 176
  end
  object ProcNCF: TADOStoredProc
    Connection = DM.ADOSigma
    CommandTimeout = 0
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
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 256
    Top = 176
  end
  object PopupMenu1: TPopupMenu
    Left = 360
    Top = 300
    object Cambiarformadepago1: TMenuItem
      Caption = 'Cambiar forma de pago'
      OnClick = Cambiarformadepago1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 100
    Top = 162
    object FrmPopupDGIIQDGIIParametersParamByNamecaja1: TMenuItem
      Caption = 'Informacion DGII'
      OnClick = FrmPopupDGIIQDGIIParametersParamByNamecaja1Click
    end
    object Cambiarempresa1: TMenuItem
      Caption = 'Cambiar empresa'
      OnClick = Cambiarempresa1Click
    end
  end
  object qSucursal: TADOQuery
    Connection = DM.ADOSigma
    CommandTimeout = 0
    DataSource = dsEmpresas
    Parameters = <
      item
        Name = 'usu_codigo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'emp_codigo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'e.suc_codigo, e.suc_nombre'
      'from'
      'sucursales e, Sucursal_Acceso a'
      'where'
      'e.emp_codigo = a.emp_codigo'
      'and e.suc_codigo = a.suc_codigo'
      'and a.usu_codigo = :usu_codigo'
      'and e.emp_codigo = :emp_codigo'
      'and e.suc_status = '#39'ACT'#39
      'order by'
      '1')
    Left = 288
    Top = 208
    object qSucursalsuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object qSucursalsuc_nombre: TStringField
      FieldName = 'suc_nombre'
      Size = 255
    end
  end
  object DS_Sucursal: TDataSource
    DataSet = qSucursal
    Left = 320
    Top = 208
  end
end
