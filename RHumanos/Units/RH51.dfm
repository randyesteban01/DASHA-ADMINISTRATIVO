object frmNomina: TfrmNomina
  Left = -7
  Top = 3
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Nomina'
  ClientHeight = 553
  ClientWidth = 1004
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnPaint = FormPaint
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 0
    Width = 369
    Height = 154
    Caption = 'Datos de la n'#243'mina'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label2: TLabel
      Left = 8
      Top = 48
      Width = 20
      Height = 13
      Caption = 'Tipo'
    end
    object Label3: TLabel
      Left = 8
      Top = 72
      Width = 30
      Height = 13
      Caption = 'Desde'
    end
    object Label4: TLabel
      Left = 160
      Top = 72
      Width = 28
      Height = 13
      Caption = 'Hasta'
    end
    object Label5: TLabel
      Left = 8
      Top = 96
      Width = 44
      Height = 13
      Caption = 'Acreditar'
    end
    object btidioma: TSpeedButton
      Left = 117
      Top = 24
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
      OnClick = btidiomaClick
    end
    object btLocalidad: TSpeedButton
      Left = 55
      Top = 117
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
    object lbLocSuc: TLabel
      Left = 9
      Top = 122
      Width = 44
      Height = 13
      Caption = 'Localidad'
    end
    object DBEdit1: TDBEdit
      Left = 58
      Top = 24
      Width = 57
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'nom_codigo'
      DataSource = dsNomina
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 56
      Top = 48
      Width = 217
      Height = 21
      KeyField = 'tno_codigo'
      ListField = 'tno_nombre'
      ListSource = dsTipoNomina
      TabOrder = 1
    end
    object fdesde: TDateTimePicker
      Left = 56
      Top = 72
      Width = 89
      Height = 21
      Date = 39146.000000000000000000
      Time = 39146.000000000000000000
      TabOrder = 2
    end
    object fhasta: TDateTimePicker
      Left = 192
      Top = 72
      Width = 89
      Height = 21
      Date = 39146.000000000000000000
      Time = 39146.000000000000000000
      TabOrder = 3
    end
    object facreditar: TDateTimePicker
      Left = 55
      Top = 96
      Width = 89
      Height = 21
      Date = 39146.000000000000000000
      Time = 39146.000000000000000000
      TabOrder = 4
    end
    object edtSucLoc: TEdit
      Left = 79
      Top = 118
      Width = 37
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
      OnChange = edtSucLocChange
      OnKeyDown = edtSucLocKeyDown
    end
    object TSucLoc: TEdit
      Left = 118
      Top = 118
      Width = 246
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
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 157
    Width = 1004
    Height = 396
    ActivePage = TabSheet1
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Datalle de la n'#243'mina'
      object sgnomina: TStringGrid
        Left = 0
        Top = 0
        Width = 996
        Height = 368
        Align = alClient
        ColCount = 3
        DefaultColWidth = 90
        DefaultRowHeight = 16
        FixedCols = 0
        RowCount = 2
        GridLineWidth = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
        PopupMenu = PopupMenu1
        TabOrder = 0
        OnDrawCell = sgnominaDrawCell
        ColWidths = (
          53
          222
          90)
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Denominaciones'
      ImageIndex = 1
      object sgdenominacion: TStringGrid
        Left = 0
        Top = 0
        Width = 1061
        Height = 475
        Align = alClient
        ColCount = 12
        DefaultColWidth = 30
        DefaultRowHeight = 16
        FixedCols = 0
        RowCount = 2
        TabOrder = 0
        OnDrawCell = sgdenominacionDrawCell
        ColWidths = (
          222
          70
          30
          30
          30
          30
          30
          30
          30
          30
          30
          30)
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 383
    Top = 0
    Width = 394
    Height = 154
    Caption = 'Opciones'
    TabOrder = 2
    object btprocesar: TBitBtn
      Left = 8
      Top = 24
      Width = 105
      Height = 25
      Caption = 'Procesar'
      TabOrder = 0
      OnClick = btprocesarClick
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777888777777
        777777770000774448877777777777770000772244887777777777770000A222
        22488777777777770000A22222248877777777770000A2222222488777777777
        0000A22222222488777777770000A22222222248877777770000A22248A22224
        887777770000A222488A2222488777770000A2224887A2224488777700007A22
        48877A222488777700007A22477777A222488777000077777777777A22244877
        0000777777777777A222488700007777777777777A2224870000777777777777
        77A224480000777777777777777A224800007777777777777777A24800007777
        7777777777777A270000}
    end
    object btreversar: TBitBtn
      Left = 296
      Top = 24
      Width = 89
      Height = 25
      Caption = 'Reversar'
      TabOrder = 1
      OnClick = btreversarClick
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
    object btClose: TBitBtn
      Left = 296
      Top = 88
      Width = 89
      Height = 25
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
    object btexportar: TBitBtn
      Left = 200
      Top = 24
      Width = 89
      Height = 25
      Caption = 'Exportar'
      TabOrder = 3
      OnClick = btexportarClick
      Glyph.Data = {
        4E010000424D4E01000000000000760000002800000012000000120000000100
        040000000000D800000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777770000007777777777777777770000007777777777770007770000007444
        4400000006007700000074FFFF08880600080700000074F008000060EE070700
        000074FFFFF8060EE0047700000074F0088060EE00F47700000074FFFF060EE0
        00747700000074F00800EE0EE0047700000074FFFF0EE0F0EE047700000074F0
        080000F000047700000074FFFFFFFFFFFFF47700000074444444444444447700
        000074F444F444F444F477000000744444444444444477000000777777777777
        777777000000777777777777777777000000}
    end
    object btvolantes: TBitBtn
      Left = 296
      Top = 56
      Width = 89
      Height = 25
      Caption = 'Volantes'
      TabOrder = 4
      OnClick = btvolantesClick
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
    object btpostear: TBitBtn
      Left = 120
      Top = 24
      Width = 73
      Height = 25
      Caption = 'Postear'
      TabOrder = 5
      OnClick = btpostearClick
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00
        FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FFFFFF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FFFFFF00FFFF
        FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FF00FF00FFFFFF00FFFFFF00000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000FF00FF00FFFFFF00FFFFFF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        0000FFFFFF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        0000FFFFFF00FFFFFF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object btlimpiar: TBitBtn
      Left = 8
      Top = 56
      Width = 105
      Height = 25
      Caption = 'Limpiar'
      TabOrder = 6
      OnClick = btlimpiarClick
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000000000000000000000000000000000000000000000000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF0080000000800000008000000080000000FF00
        FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF0080000000800000008000000080000000FF00
        FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00800000008000000080000000FF00FF000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        0000C0C0C00000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000000000000000000000000000000000000000000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object btrepenviobanco: TBitBtn
      Left = 120
      Top = 56
      Width = 169
      Height = 25
      Caption = 'Reporte por forma de pago'
      TabOrder = 7
      OnClick = btrepenviobancoClick
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
    object btemail: TBitBtn
      Left = 120
      Top = 88
      Width = 105
      Height = 25
      Caption = 'Enviar volantes'
      TabOrder = 8
      OnClick = btemailClick
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF000000FF00
        FF00FF000000FF00000000000000FFFFFF00FFFFFF00FFFFFF00FF000000FF00
        0000FF000000FF000000FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF000000FF00
        FF00FF000000FF00000000000000FFFFFF00FFFFFF00FFFFFF00FF000000FF00
        0000FF000000FF000000FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF000000FF00
        FF00FF000000FF00000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000C0C0C000FF000000FF000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF000000FF000000800000000000FF000000FF00
        FF00FF000000FF00000000000000C0C0C000C0C0C000C0C0C000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00000080000000FF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object btnasiento: TBitBtn
      Left = 8
      Top = 88
      Width = 105
      Height = 25
      Caption = 'Generar asiento'
      TabOrder = 9
      OnClick = btnasientoClick
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00808080008080800080808000808080008080800080808000808080008080
        8000808080008080800080808000808080008080800080808000FF00FF000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000080808000FF00FF000000
        0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
        FF000000000000000000FFFFFF0000FFFF000000000080808000FF00FF000000
        000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
        FF0000000000FF00FF0000000000FFFFFF000000000080808000FF00FF000000
        0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000FF
        FF000000000000FFFF00FF00FF00000000000000000080808000FF00FF000000
        000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000FFFF
        FF00000000000000000000000000000000000000000080808000FF00FF000000
        0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000FFFF000000
        0000FFFFFF0000FFFF00FFFFFF0000FFFF000000000080808000FF00FF000000
        000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000FFFF000000
        000000FFFF00FFFFFF0000FFFF00FFFFFF000000000080808000FF00FF000000
        0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000FFFF0000FF
        FF000000000000FFFF00FFFFFF0000FFFF000000000080808000FF00FF000000
        000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000FFFF0000FF
        FF0000000000FFFFFF0000FFFF00FFFFFF000000000080808000FF00FF000000
        00000000000000000000000000000000000000000000000000000000000000FF
        FF0000FFFF0000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000FF
        FF0000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        0000000080000000800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object btrecibos: TBitBtn
      Left = 232
      Top = 88
      Width = 57
      Height = 25
      Caption = 'Recibos'
      TabOrder = 10
      OnClick = btrecibosClick
      NumGlyphs = 2
    end
  end
  object ArcBanco: TBitBtn
    Left = 528
    Top = 123
    Width = 152
    Height = 25
    BiDiMode = bdLeftToRight
    Caption = 'Archivo Banco'
    Enabled = False
    ParentBiDiMode = False
    TabOrder = 3
    OnClick = ArcBancoClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
      333333333333337FF3333333333333903333333333333377FF33333333333399
      03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
      99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
      99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
      03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
      33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
      33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
      3333777777333333333333333333333333333333333333333333}
    NumGlyphs = 2
  end
  object QTipoNomina: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <
      item
        Name = 'emp_codigo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'tno_codigo, tno_nombre'
      'from'
      'tipo_nomina'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'tno_nombre')
    Left = 356
    Top = 304
    object QTipoNominatno_codigo: TIntegerField
      FieldName = 'tno_codigo'
    end
    object QTipoNominatno_nombre: TStringField
      FieldName = 'tno_nombre'
      Size = 60
    end
  end
  object dsTipoNomina: TDataSource
    DataSet = QTipoNomina
    Left = 388
    Top = 304
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 356
    Top = 336
  end
  object Query2: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 356
    Top = 368
  end
  object QNomina: TADOQuery
    Connection = DM.ADOSigma
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
        Name = 'nom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'emp_codigo, tno_codigo, nom_codigo, nom_fecha_desde,'
      'nom_fecha_hasta, nom_fecha_acreditar, nom_status'
      'from'
      'Nomina'
      'where'
      'emp_codigo = :emp_codigo'
      'and nom_codigo = :nom')
    Left = 356
    Top = 200
    object QNominaemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QNominatno_codigo: TIntegerField
      FieldName = 'tno_codigo'
    end
    object QNominanom_codigo: TIntegerField
      FieldName = 'nom_codigo'
    end
    object QNominanom_status: TStringField
      FieldName = 'nom_status'
      Size = 3
    end
    object QNominanom_fecha_desde: TDateField
      FieldName = 'nom_fecha_desde'
    end
    object QNominanom_fecha_hasta: TDateField
      FieldName = 'nom_fecha_hasta'
    end
    object QNominanom_fecha_acreditar: TDateField
      FieldName = 'nom_fecha_acreditar'
    end
  end
  object dsNomina: TDataSource
    DataSet = QNomina
    OnDataChange = dsNominaDataChange
    Left = 388
    Top = 200
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
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
        Name = 'nom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'emp_codigo, tno_codigo, nom_codigo, emp_numero,'
      'gru_codigo, det_total_ingresos, det_total_descuentos,'
      'det_total_neto, det_secuencia'
      'from'
      'Nomina_Detalle'
      'where'
      'emp_codigo = :emp_codigo'
      'and nom_codigo = :nom'
      'order by'
      'gru_codigo, emp_numero')
    Left = 356
    Top = 232
    object QDetalleemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QDetalletno_codigo: TIntegerField
      FieldName = 'tno_codigo'
    end
    object QDetallenom_codigo: TIntegerField
      FieldName = 'nom_codigo'
    end
    object QDetalleemp_numero: TIntegerField
      FieldName = 'emp_numero'
    end
    object QDetallegru_codigo: TIntegerField
      FieldName = 'gru_codigo'
    end
    object QDetalledet_total_ingresos: TBCDField
      FieldName = 'det_total_ingresos'
      currency = True
      Precision = 15
      Size = 2
    end
    object QDetalledet_total_descuentos: TBCDField
      FieldName = 'det_total_descuentos'
      currency = True
      Precision = 15
      Size = 2
    end
    object QDetalledet_total_neto: TBCDField
      FieldName = 'det_total_neto'
      currency = True
      Precision = 15
      Size = 2
    end
    object QDetalledet_secuencia: TIntegerField
      FieldName = 'det_secuencia'
    end
  end
  object QNovedades: TADOQuery
    Connection = DM.ADOSigma
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
        Name = 'nom'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'emp_codigo, tno_codigo, nom_codigo, emp_numero, det_secuencia,'
      
        'tin_codigo, tde_codigo, det_monto, des_codigo, afp_aporte_empres' +
        'a,'
      'afp_aporte_afiliado, sfs_aporte_empresa, sfs_aporte_afiliado'
      'from'
      'Nomina_Detalle_Novedades'
      'where'
      'emp_codigo = :emp_codigo'
      'and nom_codigo = :nom'
      'order by'
      'tno_codigo, nom_codigo, emp_numero, det_secuencia ')
    Left = 356
    Top = 264
    object QNovedadesemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QNovedadestno_codigo: TIntegerField
      FieldName = 'tno_codigo'
    end
    object QNovedadesnom_codigo: TIntegerField
      FieldName = 'nom_codigo'
    end
    object QNovedadesemp_numero: TIntegerField
      FieldName = 'emp_numero'
    end
    object QNovedadesdet_secuencia: TIntegerField
      FieldName = 'det_secuencia'
    end
    object QNovedadestin_codigo: TIntegerField
      FieldName = 'tin_codigo'
    end
    object QNovedadestde_codigo: TIntegerField
      FieldName = 'tde_codigo'
    end
    object QNovedadesdet_monto: TBCDField
      FieldName = 'det_monto'
      Precision = 15
      Size = 2
    end
    object QNovedadesdes_codigo: TIntegerField
      FieldName = 'des_codigo'
    end
    object QNovedadesafp_aporte_empresa: TBCDField
      FieldName = 'afp_aporte_empresa'
      Precision = 15
      Size = 2
    end
    object QNovedadesafp_aporte_afiliado: TBCDField
      FieldName = 'afp_aporte_afiliado'
      Precision = 15
      Size = 2
    end
    object QNovedadessfs_aporte_empresa: TBCDField
      FieldName = 'sfs_aporte_empresa'
      Precision = 15
      Size = 2
    end
    object QNovedadessfs_aporte_afiliado: TBCDField
      FieldName = 'sfs_aporte_afiliado'
      Precision = 15
      Size = 2
    end
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 176
    Top = 272
  end
  object Query3: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 388
    Top = 368
  end
  object PopupMenu1: TPopupMenu
    OwnerDraw = True
    Left = 176
    Top = 304
    object Buscarempleado1: TMenuItem
      Caption = 'Buscar empleado'
      ImageIndex = 4
      OnClick = Buscarempleado1Click
    end
    object Enviarvolanteporemail1: TMenuItem
      Caption = 'Enviar volante por email al empleado'
      ImageIndex = 10
      OnClick = Enviarvolanteporemail1Click
    end
    object Imprimirvolante1: TMenuItem
      Caption = 'Imprimir volante del empleado'
      ImageIndex = 5
      OnClick = Imprimirvolante1Click
    end
    object Imprimirdescuento1: TMenuItem
      Caption = 'Imprimir descuento'
      OnClick = Imprimirdescuento1Click
    end
    object mniHorasExtras1: TMenuItem
      Caption = 'Horas Extras'
    end
    object mniHorasNocturas1: TMenuItem
      Caption = 'Horas Nocturas'
    end
    object mniDiasFeriados1: TMenuItem
      Caption = 'Dias Feriados'
    end
  end
  object QLibro: TADOQuery
    Connection = DM.ADOSigma
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
        Name = 'BANCO'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'FECHA1'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'FECHA2'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'sucloc'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM '
      'CONTPR_LIBRO_BANCO '
      '(:EMP, :SUC, :BANCO, :FECHA1, :FECHA2, :sucloc)')
    Left = 176
    Top = 336
    object QLibroDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = 'CONTPR_LIBRO_BANCO.DOCUMENTO'
      Size = 3
    end
    object QLibroNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'CONTPR_LIBRO_BANCO.NUMERO'
      DisplayFormat = '000000'
    end
    object QLibroFECHA: TDateTimeField
      FieldName = 'FECHA'
      Origin = 'CONTPR_LIBRO_BANCO.FECHA'
    end
    object QLibroCONCEPTO: TIBStringField
      FieldName = 'CONCEPTO'
      Origin = 'CONTPR_LIBRO_BANCO.CONCEPTO'
      Size = 60
    end
    object QLibroBENEF: TIBStringField
      FieldName = 'BENEF'
      Origin = 'CONTPR_LIBRO_BANCO.BENEF'
      Size = 60
    end
    object QLibroSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = 'CONTPR_LIBRO_BANCO.STATUS'
      Size = 3
    end
    object QLibroBALANCE: TFloatField
      FieldName = 'BALANCE'
      Origin = 'CONTPR_LIBRO_BANCO.BALANCE'
      currency = True
    end
    object QLibroORIGEN: TIBStringField
      FieldName = 'ORIGEN'
      Origin = 'CONTPR_LIBRO_BANCO.ORIGEN'
      Size = 1
    end
    object QLibroMONTO: TFloatField
      FieldName = 'MONTO'
      Origin = 'CONTPR_LIBRO_BANCO.MONTO'
      currency = True
    end
    object QLibroCONCILIADO: TIBStringField
      FieldName = 'CONCILIADO'
      Origin = 'CONTPR_LIBRO_BANCO.CONCILIADO'
      Size = 1
    end
    object QLibroDebito: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Debito'
      currency = True
      Calculated = True
    end
    object QLibroCredito: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Credito'
      currency = True
      Calculated = True
    end
    object QLibroid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object QLibroCONCEPTO2: TStringField
      FieldName = 'CONCEPTO2'
      Size = 60
    end
  end
  object GrabaXLS: TSaveDialog
    DefaultExt = '.XLS'
    Filter = 'Archivo de Excel|*.XLS'
    Left = 272
    Top = 312
  end
  object ExportXLS: TQExportXLS
    CaptionRow = 0
    About = '(About EMS QuickExport)'
    _Version = '2.50'
    ShowFile = True
    Formats.DateTimeFormat = 'dd-MM-yyyy'
    Formats.IntegerFormat = '#,###,##0'
    Formats.CurrencyFormat = '00.00$'
    Formats.FloatFormat = '#,###,##0.00'
    Formats.DateFormat = 'dd-MM-yyyy'
    Formats.TimeFormat = 'h:mm'
    Formats.BooleanTrue = 'true'
    Formats.BooleanFalse = 'false'
    Formats.NullString = 'null'
    Options.PageFooter = 'Page &P of &N'
    Options.SheetTitle = 'Sheet 1'
    Options.HeaderFormat.Font.Size = 12
    Options.HeaderFormat.Font.Style = [xfsBold]
    Options.HeaderFormat.Font.Name = 'Tempus Sans ITC'
    Options.HeaderFormat.Borders.Left.Style = bstThin
    Options.HeaderFormat.Borders.Right.Style = bstThin
    Options.HeaderFormat.Borders.Top.Style = bstThin
    Options.HeaderFormat.Borders.Bottom.Style = bstThin
    Options.HeaderFormat.Borders.DiagDown.Style = bstThin
    Options.HeaderFormat.Borders.DiagUp.Style = bstThin
    Options.HeaderFormat.Fill.Background = clrGray25Percent
    Options.HeaderFormat.Fill.Pattern = ptCells
    Options.CaptionsFormat.Font.Size = 8
    Options.CaptionsFormat.Font.Style = [xfsBold]
    Options.CaptionsFormat.Font.Name = 'Trebuchet MS'
    Options.DataFormat.Font.Size = 8
    Options.DataFormat.Font.Name = 'Trebuchet MS'
    FieldFormats = <>
    StripStyles = <>
    Sheets = <
      item
        Title = 'Nomina'
        Options.PageFooter = 'Page &P of &N'
        Options.SheetTitle = 'Sheet 1'
        Options.HeaderFormat.Font.Size = 12
        Options.HeaderFormat.Font.Style = [xfsBold]
        Options.HeaderFormat.Font.Name = 'Tempus Sans ITC'
        Options.CaptionsFormat.Font.Size = 8
        Options.CaptionsFormat.Font.Style = [xfsBold]
        Options.CaptionsFormat.Font.Color = clrWhite
        Options.CaptionsFormat.Font.Name = 'Trebuchet MS'
        Options.CaptionsFormat.Borders.Left.Style = bstThin
        Options.CaptionsFormat.Borders.Right.Style = bstThin
        Options.CaptionsFormat.Borders.Top.Style = bstThin
        Options.CaptionsFormat.Borders.Bottom.Style = bstThin
        Options.CaptionsFormat.Fill.Background = clrGray40Percent
        Options.CaptionsFormat.Fill.Pattern = ptSolid
        Options.CaptionsFormat.Fill.Foreground = clrWhite
        Options.CaptionsFormat.Alignment.Horizontal = halCenter
        Options.DataFormat.Font.Size = 8
        Options.DataFormat.Font.Name = 'Trebuchet MS'
        FieldFormats = <>
        StripStyles = <>
        ExportSource = esStringGrid
        StringGrid = sgnomina
        Formats.DateTimeFormat = 'dd/MM/yyyy hh:mm AMPM'
        Formats.IntegerFormat = '#,###,##0'
        Formats.CurrencyFormat = '00.00$'
        Formats.FloatFormat = '#,###,##0.00'
        Formats.DateFormat = 'dd/MM/yyyy'
        Formats.TimeFormat = 'h:mm AMPM'
        Formats.BooleanTrue = 'true'
        Formats.BooleanFalse = 'false'
        Formats.NullString = 'null'
        AutoCalcStrType = True
        CaptionRow = 0
      end
      item
        Title = 'Denominaciones'
        Options.PageFooter = 'Page &P of &N'
        Options.SheetTitle = 'Sheet 1'
        Options.HeaderFormat.Font.Size = 12
        Options.HeaderFormat.Font.Style = [xfsBold]
        Options.HeaderFormat.Font.Name = 'Tempus Sans ITC'
        Options.CaptionsFormat.Font.Size = 8
        Options.CaptionsFormat.Font.Style = [xfsBold]
        Options.CaptionsFormat.Font.Color = clrWhite
        Options.CaptionsFormat.Font.Name = 'Trebuchet MS'
        Options.CaptionsFormat.Borders.Left.Style = bstThin
        Options.CaptionsFormat.Borders.Right.Style = bstThin
        Options.CaptionsFormat.Borders.Top.Style = bstThin
        Options.CaptionsFormat.Borders.Bottom.Style = bstThin
        Options.CaptionsFormat.Fill.Background = clrGray40Percent
        Options.CaptionsFormat.Fill.Pattern = ptSolid
        Options.CaptionsFormat.Fill.Foreground = clrWhite
        Options.DataFormat.Font.Size = 8
        Options.DataFormat.Font.Name = 'Trebuchet MS'
        FieldFormats = <>
        StripStyles = <>
        ExportSource = esStringGrid
        StringGrid = sgdenominacion
        Formats.DateTimeFormat = 'dd-MM-yyyy hh:mm AMPM'
        Formats.IntegerFormat = '#,###,##0'
        Formats.CurrencyFormat = '00.00$'
        Formats.FloatFormat = '#,###,##0.00'
        Formats.DateFormat = 'dd-MM-yyyy'
        Formats.TimeFormat = 'hh:mm AMPM'
        Formats.BooleanTrue = 'true'
        Formats.BooleanFalse = 'false'
        Formats.NullString = 'null'
        AutoCalcStrType = True
        CaptionRow = 0
      end>
    Left = 176
    Top = 240
  end
end
