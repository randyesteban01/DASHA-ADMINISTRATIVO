object frmProductos: TfrmProductos
  Left = 388
  Top = 42
  HelpContext = 5
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Productos'
  ClientHeight = 474
  ClientWidth = 672
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
  object Panel3: TPanel
    Left = 583
    Top = 0
    Width = 89
    Height = 474
    Align = alRight
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object btPost: TBitBtn
      Left = 6
      Top = 11
      Width = 75
      Height = 25
      Caption = '&Grabar'
      Enabled = False
      TabOrder = 0
      OnClick = btPostClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777770000000000007770330770000330777033077000033077703307700003
        30777033000000033077703333333333307770330000000330777030FFFFFFF0
        30777030FCCCCFF030777030FFCCCFF030777037FCCCCFF000777077CCCFCFF0
        8077777CCC777700007777CCC77777777777777C777777777777}
    end
    object btCancel: TBitBtn
      Left = 7
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Cance&lar'
      Enabled = False
      TabOrder = 1
      OnClick = btCancelClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF3333993333339993333377FF3333377FF3399993333339
        993337777FF3333377F3393999333333993337F777FF333337FF993399933333
        399377F3777FF333377F993339993333399377F33777FF33377F993333999333
        399377F333777FF3377F993333399933399377F3333777FF377F993333339993
        399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
        99333773FF3333777733339993333339933333773FFFFFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
    end
    object btClose: TBitBtn
      Left = 7
      Top = 387
      Width = 75
      Height = 25
      Caption = '&Salir'
      TabOrder = 2
      TabStop = False
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
    object btFind: TBitBtn
      Left = 7
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Buscar'
      TabOrder = 3
      TabStop = False
      OnClick = btFindClick
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
    object btInsert: TBitBtn
      Left = 7
      Top = 104
      Width = 75
      Height = 25
      Caption = '&Crear'
      TabOrder = 4
      TabStop = False
      OnClick = btInsertClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
        0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
        33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      NumGlyphs = 2
    end
    object btEdit: TBitBtn
      Left = 7
      Top = 136
      Width = 75
      Height = 25
      Caption = '&Modificar'
      TabOrder = 5
      TabStop = False
      OnClick = btEditClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
    end
    object btDelete: TBitBtn
      Left = 7
      Top = 168
      Width = 75
      Height = 25
      Caption = '&Eliminar'
      TabOrder = 6
      TabStop = False
      OnClick = btDeleteClick
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
    end
    object btvence: TBitBtn
      Left = 8
      Top = 200
      Width = 75
      Height = 25
      Caption = 'Vencimiento'
      TabOrder = 7
      Visible = False
      OnClick = btvenceClick
    end
    object lbcomentario: TStaticText
      Left = 4
      Top = 232
      Width = 79
      Height = 49
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Producto tiene comentario'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 577
    Height = 474
    ActivePage = TabSheet1
    Align = alLeft
    RaggedRight = True
    TabOrder = 0
    object TabSheet1: TTabSheet
      HelpContext = 5
      Caption = 'Generales'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      object Label2: TLabel
        Left = 8
        Top = 56
        Width = 60
        Height = 13
        Caption = 'Ref. Original'
      end
      object Label10: TLabel
        Left = 8
        Top = 81
        Width = 37
        Height = 13
        Caption = 'Nombre'
      end
      object btFamilia: TSpeedButton
        Left = 136
        Top = 129
        Width = 23
        Height = 22
        Enabled = False
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
        OnClick = btFamiliaClick
      end
      object lbFamilia: TLabel
        Left = 8
        Top = 129
        Width = 32
        Height = 13
        Caption = 'Familia'
      end
      object Label5: TLabel
        Left = 268
        Top = 278
        Width = 62
        Height = 13
        Caption = '%Desc.Max.'
      end
      object btColor: TSpeedButton
        Left = 136
        Top = 154
        Width = 23
        Height = 22
        Enabled = False
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
        OnClick = btColorClick
      end
      object lbColor: TLabel
        Left = 8
        Top = 154
        Width = 25
        Height = 13
        Caption = 'Color'
      end
      object Label25: TLabel
        Left = 192
        Top = 56
        Width = 75
        Height = 13
        Caption = 'Ref. Fabricante'
      end
      object Label28: TLabel
        Left = 174
        Top = 278
        Width = 32
        Height = 13
        Caption = '%Itbis'
      end
      object lbDepto: TLabel
        Left = 8
        Top = 178
        Width = 69
        Height = 13
        Caption = 'Departamento'
      end
      object btDepto: TSpeedButton
        Left = 136
        Top = 178
        Width = 23
        Height = 22
        Enabled = False
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
      object lbMarca: TLabel
        Left = 8
        Top = 202
        Width = 29
        Height = 13
        Caption = 'Marca'
      end
      object btMarca: TSpeedButton
        Left = 136
        Top = 202
        Width = 23
        Height = 22
        Enabled = False
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
        OnClick = btMarcaClick
      end
      object Label23: TLabel
        Left = 424
        Top = 381
        Width = 53
        Height = 13
        Caption = '%Comisi'#243'n'
      end
      object Label24: TLabel
        Left = 168
        Top = 0
        Width = 50
        Height = 26
        Caption = 'Inv. Inicial Unidad'
        FocusControl = DBEdit22
        WordWrap = True
      end
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEdit1
      end
      object Label31: TLabel
        Left = 8
        Top = 32
        Width = 50
        Height = 13
        Caption = 'Proveedor'
      end
      object btProv: TSpeedButton
        Left = 136
        Top = 32
        Width = 23
        Height = 22
        Enabled = False
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
      object Label7: TLabel
        Left = 8
        Top = 275
        Width = 18
        Height = 13
        Caption = 'Uso'
        FocusControl = DBEdit31
      end
      object lbClave: TLabel
        Left = 525
        Top = 381
        Width = 36
        Height = 13
        Caption = 'Clave'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 8
        Top = 300
        Width = 54
        Height = 13
        Caption = 'Costo Und.'
      end
      object Label34: TLabel
        Left = 8
        Top = 324
        Width = 75
        Height = 13
        Caption = 'Cant./Empaque'
        FocusControl = DBEdit33
      end
      object Label14: TLabel
        Left = 8
        Top = 422
        Width = 64
        Height = 13
        Caption = 'Exist./Unidad'
      end
      object Label35: TLabel
        Left = 184
        Top = 422
        Width = 55
        Height = 13
        Caption = 'Exist./Emp.'
      end
      object Label36: TLabel
        Left = 8
        Top = 348
        Width = 55
        Height = 13
        Caption = 'Costo Emp.'
      end
      object Label38: TLabel
        Left = 280
        Top = 0
        Width = 44
        Height = 39
        Caption = 'Inv. Inicial Empaque'
        FocusControl = DBEdit18
        WordWrap = True
      end
      object Label4: TLabel
        Left = 394
        Top = 406
        Width = 78
        Height = 13
        Caption = 'Usuario modific'#243
      end
      object Label46: TLabel
        Left = 8
        Top = 373
        Width = 69
        Height = 13
        Caption = 'Selectivo Con.'
      end
      object Label52: TLabel
        Left = 8
        Top = 105
        Width = 65
        Height = 13
        Caption = 'Nombre corto'
      end
      object Label3: TLabel
        Left = 8
        Top = 227
        Width = 39
        Height = 13
        Caption = 'Gerente'
      end
      object btgerente: TSpeedButton
        Left = 136
        Top = 227
        Width = 23
        Height = 22
        Enabled = False
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
        OnClick = btgerenteClick
      end
      object Label29: TLabel
        Left = 8
        Top = 251
        Width = 29
        Height = 13
        Caption = 'Pasillo'
      end
      object btgondolero: TSpeedButton
        Left = 136
        Top = 251
        Width = 23
        Height = 22
        Enabled = False
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
        OnClick = btgondoleroClick
      end
      object Label30: TLabel
        Left = 256
        Top = 324
        Width = 84
        Height = 13
        Caption = '(N)uevo, (U)sado'
      end
      object Label33: TLabel
        Left = 8
        Top = 397
        Width = 65
        Height = 13
        Caption = 'Pdo. garant'#237'a'
      end
      object Label44: TLabel
        Left = 184
        Top = 381
        Width = 60
        Height = 13
        Caption = 'Tiempo Gt'#237'a.'
      end
      object DBEdit2: TDBEdit
        Left = 88
        Top = 56
        Width = 97
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'PRO_RORIGINAL'
        DataSource = dsProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit12: TDBEdit
        Left = 88
        Top = 129
        Width = 47
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'FAM_CODIGO'
        DataSource = dsProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object tFamilia: TEdit
        Left = 160
        Top = 129
        Width = 225
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
      object DBEdit20: TDBEdit
        Left = 88
        Top = 154
        Width = 47
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'COL_CODIGO'
        DataSource = dsProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object tColor: TEdit
        Left = 160
        Top = 154
        Width = 225
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
      object DBEdit24: TDBEdit
        Left = 280
        Top = 56
        Width = 105
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'PRO_RFABRIC'
        DataSource = dsProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object ckServ: TDBCheckBox
        Left = 392
        Top = 195
        Width = 129
        Height = 17
        Hint = 'verdadero se convierte en Servicio'
        TabStop = False
        Caption = 'No rebajar existencia'
        DataField = 'PRO_SERVICIO'
        DataSource = dsProductos
        ParentShowHint = False
        ShowHint = True
        TabOrder = 27
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBEdit26: TDBEdit
        Left = 88
        Top = 178
        Width = 47
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'DEP_CODIGO'
        DataSource = dsProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object tDepto: TEdit
        Left = 160
        Top = 178
        Width = 225
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
        TabOrder = 29
      end
      object DBEdit13: TDBEdit
        Left = 88
        Top = 202
        Width = 47
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'MAR_CODIGO'
        DataSource = dsProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
      end
      object tMarca: TEdit
        Left = 160
        Top = 202
        Width = 225
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
      object DBEdit21: TDBEdit
        Left = 480
        Top = 381
        Width = 41
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'PRO_COMISION'
        DataSource = dsProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 23
      end
      object ckVecimiento: TDBCheckBox
        Left = 392
        Top = 211
        Width = 161
        Height = 17
        TabStop = False
        Caption = 'Tiene fecha de vencimiento'
        DataField = 'PRO_VENCE'
        DataSource = dsProductos
        TabOrder = 28
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBEdit22: TDBEdit
        Left = 224
        Top = 8
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'PRO_INVINICIAL'
        DataSource = dsProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit1: TDBEdit
        Left = 88
        Top = 8
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        DataField = 'PRO_CODIGO'
        DataSource = dsProductos
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object tProv: TEdit
        Left = 160
        Top = 32
        Width = 225
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
        TabOrder = 31
      end
      object DBEdit31: TDBEdit
        Left = 88
        Top = 275
        Width = 78
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'PRO_USO'
        DataSource = dsProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
      end
      object DBEdit10: TDBEdit
        Left = 88
        Top = 81
        Width = 297
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'PRO_NOMBRE'
        DataSource = dsProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnKeyDown = DBEdit10KeyDown
      end
      object ckEscala: TDBCheckBox
        Left = 392
        Top = 227
        Width = 153
        Height = 17
        TabStop = False
        Caption = 'El producto maneja escalas'
        DataField = 'PRO_ESCALA'
        DataSource = dsProductos
        TabOrder = 32
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBEdit33: TDBEdit
        Left = 88
        Top = 324
        Width = 87
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'PRO_CANTEMPAQUE'
        DataSource = dsProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 18
      end
      object DBEdit14: TDBEdit
        Left = 88
        Top = 422
        Width = 87
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clInfoBk
        DataField = 'PRO_EXISTENCIA'
        DataSource = dsProductos
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 33
      end
      object DBEdit34: TDBEdit
        Left = 256
        Top = 422
        Width = 89
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clInfoBk
        DataField = 'PRO_EXISTEMPAQUE'
        DataSource = dsProductos
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 34
      end
      object DBCheckBox1: TDBCheckBox
        Left = 392
        Top = 243
        Width = 145
        Height = 17
        TabStop = False
        Caption = 'El producto tiene combo'
        DataField = 'PRO_COMBO'
        DataSource = dsProductos
        TabOrder = 35
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBEdit18: TDBEdit
        Left = 336
        Top = 8
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'PRO_INVINICIALEMP'
        DataSource = dsProductos
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBCheckBox2: TDBCheckBox
        Left = 392
        Top = 259
        Width = 129
        Height = 17
        TabStop = False
        Caption = 'Controlado por DNCD'
        DataField = 'PRO_CONTROLADO'
        DataSource = dsProductos
        TabOrder = 36
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox3: TDBCheckBox
        Left = 392
        Top = 275
        Width = 129
        Height = 17
        TabStop = False
        Caption = 'Se vende detallado'
        DataField = 'PRO_DETALLADO'
        DataSource = dsProductos
        TabOrder = 37
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBEdit42: TDBEdit
        Left = 184
        Top = 300
        Width = 65
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        DataField = 'CalcCosto'
        DataSource = dsProductos
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 17
      end
      object DBEdit44: TDBEdit
        Left = 184
        Top = 348
        Width = 65
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        DataField = 'CalcCostoEmp'
        DataSource = dsProductos
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 38
      end
      object tUsuario: TEdit
        Left = 392
        Top = 422
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
        ReadOnly = True
        TabOrder = 39
      end
      object DBEdit47: TDBEdit
        Left = 88
        Top = 373
        Width = 87
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'pro_selectivo_con'
        DataSource = dsProductos
        TabOrder = 19
      end
      object DBEdit51: TDBEdit
        Left = 88
        Top = 105
        Width = 297
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'PRO_DISPLAY'
        DataSource = dsProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnKeyDown = DBEdit10KeyDown
      end
      object DBEdit23: TDBEdit
        Left = 88
        Top = 227
        Width = 47
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'ger_codigo'
        DataSource = dsProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
      end
      object tgerente: TEdit
        Left = 160
        Top = 227
        Width = 225
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
        TabOrder = 40
      end
      object DBEdit27: TDBEdit
        Left = 88
        Top = 251
        Width = 47
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'gon_codigo'
        DataSource = dsProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
      end
      object tgondolero: TEdit
        Left = 160
        Top = 251
        Width = 225
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
        TabOrder = 41
      end
      object DBCheckBox4: TDBCheckBox
        Left = 392
        Top = 291
        Width = 161
        Height = 17
        TabStop = False
        Caption = 'Es un producto patrocinador'
        DataField = 'pro_patrocinador'
        DataSource = dsProductos
        TabOrder = 42
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object btprecios: TBitBtn
        Left = 392
        Top = 0
        Width = 177
        Height = 25
        Caption = '[F2] - Precios x Unidad de Medida'
        TabOrder = 43
        OnClick = btpreciosClick
      end
      object DBCheckBox5: TDBCheckBox
        Left = 392
        Top = 307
        Width = 97
        Height = 17
        TabStop = False
        Caption = 'Utiliza medidor'
        DataField = 'pro_utilizamedidor'
        DataSource = dsProductos
        TabOrder = 44
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBEdit39: TDBEdit
        Left = 344
        Top = 324
        Width = 41
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'PRO_NUEVOUSADO'
        DataSource = dsProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 22
      end
      object DBCheckBox6: TDBCheckBox
        Left = 392
        Top = 322
        Width = 97
        Height = 17
        TabStop = False
        Caption = 'Utiliza Envios'
        DataField = 'pro_UtilizaEnvio'
        DataSource = dsProductos
        TabOrder = 45
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox7: TDBCheckBox
        Left = 392
        Top = 354
        Width = 97
        Height = 17
        TabStop = False
        Caption = 'Tiene Garantia'
        DataField = 'pro_Garantia'
        DataSource = dsProductos
        TabOrder = 46
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBEdit40: TDBEdit
        Left = 184
        Top = 397
        Width = 65
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'pro_Garantia_Cantidad'
        DataSource = dsProductos
        TabOrder = 21
      end
      object DBComboBox1: TDBComboBox
        Left = 88
        Top = 397
        Width = 87
        Height = 21
        BevelKind = bkFlat
        DataField = 'pro_Garantia_Periodo'
        DataSource = dsProductos
        ItemHeight = 13
        Items.Strings = (
          'DIA'
          'MES'
          'A'#209'O')
        TabOrder = 20
      end
      object DBCheckBox8: TDBCheckBox
        Left = 256
        Top = 397
        Width = 87
        Height = 18
        TabStop = False
        Alignment = taLeftJustify
        Caption = 'Serializado'
        DataField = 'pro_Serializado'
        DataSource = dsProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 47
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object DBCheckBox9: TDBCheckBox
        Left = 392
        Top = 338
        Width = 97
        Height = 17
        TabStop = False
        Caption = 'Utiliza Alquiler'
        DataField = 'pro_UtilizaAlquiler'
        DataSource = dsProductos
        TabOrder = 48
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object PageControl3: TPageControl
        Left = 392
        Top = 32
        Width = 173
        Height = 162
        ActivePage = TabSheet8
        TabOrder = 24
        OnChange = PageControl3Change
        object TabSheet8: TTabSheet
          Caption = 'Precios y %Beneficio'
          object Label11: TLabel
            Left = 1
            Top = 44
            Width = 38
            Height = 13
            Alignment = taRightJustify
            Caption = 'Precio 3'
          end
          object Label9: TLabel
            Left = 1
            Top = 22
            Width = 38
            Height = 13
            Alignment = taRightJustify
            Caption = 'Precio 2'
          end
          object Label8: TLabel
            Left = 1
            Top = 0
            Width = 38
            Height = 13
            Alignment = taRightJustify
            Caption = 'Precio 1'
          end
          object Label41: TLabel
            Left = 1
            Top = 112
            Width = 59
            Height = 13
            Alignment = taRightJustify
            Caption = 'M'#237'nimo Emp.'
          end
          object Label17: TLabel
            Left = 1
            Top = 88
            Width = 58
            Height = 13
            Alignment = taRightJustify
            Caption = 'M'#237'nimo Und.'
          end
          object Label12: TLabel
            Left = 1
            Top = 66
            Width = 38
            Height = 13
            Alignment = taRightJustify
            Caption = 'Precio 4'
          end
          object DBEdit38: TDBEdit
            Left = 60
            Top = 112
            Width = 104
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            DataField = 'PRO_PRECIOMENOREMP'
            DataSource = dsProductos
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
          end
          object DBEdit17: TDBEdit
            Left = 60
            Top = 88
            Width = 104
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            DataField = 'PRO_PRECIOMENOR'
            DataSource = dsProductos
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
          end
          object CEdt_Ben1: TcxDBCurrencyEdit
            Left = 120
            Top = 0
            DataBinding.DataField = 'PRO_BENEFICIO'
            DataBinding.DataSource = dsProductos
            Properties.AssignedValues.MinValue = True
            Properties.DisplayFormat = '#,0.00'
            Properties.EditFormat = '#,0.00'
            Properties.NullString = '0.00'
            Properties.UseDisplayFormatWhenEditing = True
            TabOrder = 0
            OnExit = CEdt_Ben1Exit
            Width = 44
          end
          object CEdt_BEN2: TcxDBCurrencyEdit
            Left = 121
            Top = 22
            DataBinding.DataField = 'PRO_BENEFICIO2'
            DataBinding.DataSource = dsProductos
            Properties.AssignedValues.MinValue = True
            Properties.DisplayFormat = '#,0.00'
            Properties.EditFormat = '#,0.00'
            Properties.NullString = '0.00'
            Properties.UseDisplayFormatWhenEditing = True
            TabOrder = 2
            OnExit = CEdt_BEN2Exit
            Width = 44
          end
          object CEdt_BEN3: TcxDBCurrencyEdit
            Left = 121
            Top = 44
            DataBinding.DataField = 'PRO_BENEFICIO3'
            DataBinding.DataSource = dsProductos
            Properties.AssignedValues.MinValue = True
            Properties.DisplayFormat = '#,0.00'
            Properties.EditFormat = '#,0.00'
            Properties.NullString = '0.00'
            Properties.UseDisplayFormatWhenEditing = True
            TabOrder = 4
            OnExit = CEdt_BEN3Exit
            Width = 44
          end
          object CEdt_BEN4: TcxDBCurrencyEdit
            Left = 121
            Top = 66
            DataBinding.DataField = 'PRO_BENEFICIO4'
            DataBinding.DataSource = dsProductos
            Properties.AssignedValues.MinValue = True
            Properties.DisplayFormat = '#,0.00'
            Properties.EditFormat = '#,0.00'
            Properties.NullString = '0.00'
            Properties.UseDisplayFormatWhenEditing = True
            TabOrder = 6
            OnExit = CEdt_BEN4Exit
            Width = 44
          end
          object CEdt_PRECIO1: TcxDBCurrencyEdit
            Left = 46
            Top = 0
            DataBinding.DataField = 'PRO_PRECIO1'
            DataBinding.DataSource = dsProductos
            Properties.AssignedValues.MinValue = True
            Properties.DisplayFormat = '#,0.00'
            Properties.EditFormat = '#,0.00'
            Properties.NullString = '0.00'
            Properties.UseDisplayFormatWhenEditing = True
            TabOrder = 1
            OnExit = CEdt_PRECIO1Exit
            OnKeyDown = CEdt_PRECIO1KeyDown
            Width = 73
          end
          object CEdt_PRECIO2: TcxDBCurrencyEdit
            Left = 46
            Top = 22
            DataBinding.DataField = 'PRO_PRECIO2'
            DataBinding.DataSource = dsProductos
            Properties.AssignedValues.MinValue = True
            Properties.DisplayFormat = '#,0.00'
            Properties.EditFormat = '#,0.00'
            Properties.NullString = '0.00'
            Properties.UseDisplayFormatWhenEditing = True
            TabOrder = 3
            OnExit = CEdt_PRECIO2Exit
            Width = 73
          end
          object CEdt_PRECIO3: TcxDBCurrencyEdit
            Left = 46
            Top = 44
            DataBinding.DataField = 'PRO_PRECIO3'
            DataBinding.DataSource = dsProductos
            Properties.AssignedValues.MinValue = True
            Properties.DisplayFormat = '#,0.00'
            Properties.EditFormat = '#,0.00'
            Properties.NullString = '0.00'
            Properties.UseDisplayFormatWhenEditing = True
            TabOrder = 5
            OnExit = CEdt_PRECIO3Exit
            Width = 73
          end
          object CEdt_PRECIO4: TcxDBCurrencyEdit
            Left = 46
            Top = 66
            DataBinding.DataField = 'PRO_PRECIO4'
            DataBinding.DataSource = dsProductos
            Properties.AssignedValues.MinValue = True
            Properties.DisplayFormat = '#,0.00'
            Properties.EditFormat = '#,0.00'
            Properties.NullString = '0.00'
            Properties.UseDisplayFormatWhenEditing = True
            TabOrder = 7
            OnExit = CEdt_PRECIO4Exit
            Width = 73
          end
        end
        object TabAlquiler: TTabSheet
          Caption = 'Arquiler'
          Enabled = False
          ImageIndex = 1
          object Label45: TLabel
            Left = 0
            Top = 0
            Width = 71
            Height = 13
            Caption = 'dias de alquiler'
          end
          object Label53: TLabel
            Left = 0
            Top = 40
            Width = 55
            Height = 13
            Caption = 'recargo/dia'
          end
          object SpeedButton11: TSpeedButton
            Left = 14
            Top = 16
            Width = 23
            Height = 22
            Enabled = False
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
            OnClick = SpeedButton11Click
          end
          object Label54: TLabel
            Left = 80
            Top = 1
            Width = 85
            Height = 13
            Caption = 'Unidad de medida'
          end
          object Label55: TLabel
            Left = 0
            Top = 64
            Width = 36
            Height = 13
            Caption = 'Estatus'
          end
          object DBEdit41: TDBEdit
            Left = 0
            Top = 17
            Width = 17
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            CharCase = ecUpperCase
            DataField = 'pro_Uni_AlquilerID'
            DataSource = dsProductos
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object Edit4: TEdit
            Left = 39
            Top = 17
            Width = 122
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
          object DBEdit46: TDBEdit
            Left = 83
            Top = 40
            Width = 78
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            DataField = 'pro_Uni_Alq_cantidad'
            DataSource = dsProductos
            TabOrder = 2
          end
          object DBComboBox2: TDBComboBox
            Left = 39
            Top = 64
            Width = 122
            Height = 21
            BevelKind = bkFlat
            DataSource = dsProductos
            ItemHeight = 13
            Items.Strings = (
              'Retornado'
              'Alquilado'
              'Retirado')
            TabOrder = 3
          end
        end
      end
      object CEdt_Valor: TcxDBCurrencyEdit
        Left = 272
        Top = 299
        DataBinding.DataField = 'Valor'
        DataBinding.DataSource = dsProductos
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.AssignedValues.EditFormat = True
        Properties.AssignedValues.MinValue = True
        Properties.DisplayFormat = '#,0.00'
        Properties.NullString = '0.00'
        Properties.UseDisplayFormatWhenEditing = True
        Properties.OnChange = CEdt_ValorPropertiesChange
        Style.Color = clInfoBk
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 49
        Width = 113
      end
      object CEdt_Costo: TcxDBCurrencyEdit
        Left = 88
        Top = 299
        DataBinding.DataField = 'PRO_COSTO'
        DataBinding.DataSource = dsProductos
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.AssignedValues.EditFormat = True
        Properties.AssignedValues.MinValue = True
        Properties.DisplayFormat = '#,0.00'
        Properties.NullString = '0.00'
        Properties.UseDisplayFormatWhenEditing = True
        Properties.OnChange = CEdt_ValorPropertiesChange
        Style.Color = clInfoBk
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 16
        OnExit = CEdt_CostoExit
        Width = 86
      end
      object edtProv: TEdit
        Left = 88
        Top = 32
        Width = 41
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clWhite
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnExit = edtProvExit
        OnKeyPress = edtProvKeyPress
      end
      object cxDBComboBox1: TcxDBComboBox
        Left = 209
        Top = 274
        DataBinding.DataField = 'pro_montoitbis'
        DataBinding.DataSource = dsProductos
        Properties.DropDownListStyle = lsFixedList
        Properties.ImmediatePost = True
        Properties.Items.Strings = (
          '0'
          '8'
          '11'
          '13'
          '16'
          '18')
        Properties.MaxLength = 0
        TabOrder = 15
        Width = 54
      end
      object dbedtPRO_DESCMAX: TDBEdit
        Left = 333
        Top = 274
        Width = 51
        Height = 20
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'PRO_DESCMAX'
        DataSource = dsProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 50
        OnKeyPress = dbedtPRO_DESCMAXKeyPress
      end
      object CEdt_ValorEmp: TcxDBCurrencyEdit
        Left = 272
        Top = 347
        DataBinding.DataField = 'ValorEmp'
        DataBinding.DataSource = dsProductos
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.AssignedValues.EditFormat = True
        Properties.AssignedValues.MinValue = True
        Properties.DisplayFormat = '#,0.00'
        Properties.NullString = '0.00'
        Properties.UseDisplayFormatWhenEditing = True
        Properties.OnChange = CEdt_ValorPropertiesChange
        Style.Color = clInfoBk
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 51
        Width = 113
      end
      object CEdt_CostoEmp: TcxDBCurrencyEdit
        Left = 88
        Top = 348
        DataBinding.DataField = 'PRO_COSTOEMPAQUE'
        DataBinding.DataSource = dsProductos
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.AssignedValues.EditFormat = True
        Properties.AssignedValues.MinValue = True
        Properties.DisplayFormat = '#,0.00'
        Properties.NullString = '0.00'
        Properties.UseDisplayFormatWhenEditing = True
        Properties.OnChange = CEdt_ValorPropertiesChange
        Style.Color = clWhite
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 52
        OnExit = CEdt_CostoExit
        Width = 86
      end
      object DBCheckBox10: TDBCheckBox
        Left = 256
        Top = 378
        Width = 161
        Height = 17
        TabStop = False
        Caption = 'Tiene servicio de construccion'
        DataField = 'with_servicio_construccion'
        DataSource = dsProductos
        TabOrder = 53
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
    object TabSheet15: TTabSheet
      Caption = 'Almacen'
      ImageIndex = 12
      object Label15: TLabel
        Left = 8
        Top = 272
        Width = 86
        Height = 13
        Caption = 'M'#237'nimo x Undidad'
      end
      object Label16: TLabel
        Left = 8
        Top = 296
        Width = 87
        Height = 13
        Caption = 'M'#225'ximo x Undidad'
      end
      object Label39: TLabel
        Left = 8
        Top = 320
        Width = 91
        Height = 13
        Caption = 'M'#237'nimo x Empaque'
      end
      object Label40: TLabel
        Left = 8
        Top = 344
        Width = 92
        Height = 13
        Caption = 'M'#225'ximo x Empaque'
      end
      object Label19: TLabel
        Left = 8
        Top = 248
        Width = 48
        Height = 13
        Caption = 'Ubicaci'#243'n'
      end
      object Label47: TLabel
        Left = 8
        Top = 176
        Width = 41
        Height = 13
        Caption = 'Volumen'
      end
      object Label48: TLabel
        Left = 8
        Top = 200
        Width = 86
        Height = 13
        Caption = 'Unidad de medida'
      end
      object Label49: TLabel
        Left = 8
        Top = 224
        Width = 114
        Height = 13
        Caption = 'Unidad minima de venta'
      end
      object DBText9: TDBText
        Left = 0
        Top = 0
        Width = 569
        Height = 17
        Align = alTop
        Alignment = taCenter
        DataField = 'PRO_NOMBRE'
        DataSource = dsProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label51: TLabel
        Left = 368
        Top = 192
        Width = 101
        Height = 13
        Caption = 'N'#250'meros de Serie'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btunidad: TSpeedButton
        Left = 147
        Top = 200
        Width = 23
        Height = 22
        Enabled = False
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
        OnClick = btunidadClick
      end
      object SpeedButton3: TSpeedButton
        Left = 416
        Top = 160
        Width = 153
        Height = 22
        Caption = 'Eliminar unidad de medida'
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
        OnClick = SpeedButton3Click
      end
      object DBGrid6: TDBGrid
        Left = 0
        Top = 17
        Width = 569
        Height = 129
        Align = alTop
        Color = clInfoBk
        Ctl3D = False
        DataSource = dsExist
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 9
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ALM_NOMBRE'
            ReadOnly = True
            Title.Caption = 'Almac'#233'n'
            Width = 126
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EXI_CANTIDAD'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Exist. Und'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EXI_EMPAQUE'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Exist. Emp.'
            Visible = True
          end>
      end
      object DBEdit15: TDBEdit
        Left = 128
        Top = 272
        Width = 121
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'PRO_STKMINIMO'
        DataSource = dsProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit16: TDBEdit
        Left = 128
        Top = 296
        Width = 121
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'PRO_STKMAXIMO'
        DataSource = dsProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object DBEdit36: TDBEdit
        Left = 128
        Top = 320
        Width = 121
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'PRO_STKMINIMOEMP'
        DataSource = dsProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object DBEdit37: TDBEdit
        Left = 128
        Top = 344
        Width = 121
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'PRO_STKMAXIMOEMP'
        DataSource = dsProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object DBEdit19: TDBEdit
        Left = 128
        Top = 248
        Width = 121
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'PRO_UBICACION'
        DataSource = dsProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit48: TDBEdit
        Left = 128
        Top = 176
        Width = 121
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'pro_volumen'
        DataSource = dsProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit50: TDBEdit
        Left = 128
        Top = 224
        Width = 121
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'pro_minimo_venta'
        DataSource = dsProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBGrid15: TDBGrid
        Left = 368
        Top = 208
        Width = 201
        Height = 177
        Color = clInfoBk
        Ctl3D = False
        DataSource = dsSerie
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 10
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ser_numero'
            Title.Caption = 'Numero de Serie'
            Width = 177
            Visible = True
          end>
      end
      object DBEdit32: TDBEdit
        Left = 128
        Top = 200
        Width = 17
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'UnidadID'
        DataSource = dsProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object tunidad: TEdit
        Left = 171
        Top = 200
        Width = 78
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
    end
    object TabSheet6: TTabSheet
      HelpKeyword = 'Listado'
      HelpContext = 6
      Caption = 'Listado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 5
      ParentFont = False
      object Label13: TLabel
        Left = 312
        Top = 335
        Width = 30
        Height = 13
        Caption = 'Desde'
      end
      object Label20: TLabel
        Left = 312
        Top = 359
        Width = 28
        Height = 13
        Caption = 'Hasta'
      end
      object Label21: TLabel
        Left = 147
        Top = 248
        Width = 32
        Height = 13
        Caption = 'Familia'
      end
      object SpeedButton6: TSpeedButton
        Left = 260
        Top = 248
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
        OnClick = SpeedButton6Click
      end
      object Label22: TLabel
        Left = 147
        Top = 272
        Width = 69
        Height = 13
        Caption = 'Departamento'
      end
      object SpeedButton7: TSpeedButton
        Left = 260
        Top = 272
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
        OnClick = SpeedButton7Click
      end
      object Label27: TLabel
        Left = 147
        Top = 296
        Width = 29
        Height = 13
        Caption = 'Marca'
      end
      object SpeedButton8: TSpeedButton
        Left = 260
        Top = 296
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
        OnClick = SpeedButton8Click
      end
      object DBGrid5: TDBGrid
        Left = 0
        Top = 0
        Width = 569
        Height = 241
        Align = alTop
        Color = clInfoBk
        Ctl3D = False
        DataSource = dsListado
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
        OnDblClick = DBGrid5DblClick
        OnKeyDown = DBGrid5KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'PRO_CODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_RORIGINAL'
            Title.Alignment = taCenter
            Title.Caption = 'Ref. Original'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_RFABRIC'
            Title.Alignment = taCenter
            Title.Caption = 'Ref. Fabricante'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_NOMBRE'
            Title.Caption = 'Nombre del producto'
            Width = 255
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_COSTO'
            Title.Alignment = taCenter
            Title.Caption = 'Costo Und.'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_COSTOEMPAQUE'
            Title.Alignment = taCenter
            Title.Caption = 'Costo Emp.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_PRECIO1'
            Title.Alignment = taCenter
            Title.Caption = 'Precio 1'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_PRECIO2'
            Title.Alignment = taCenter
            Title.Caption = 'Precio 2'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_PRECIO3'
            Title.Alignment = taCenter
            Title.Caption = 'Pecio3'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_PRECIO4'
            Title.Alignment = taCenter
            Title.Caption = 'Precio4'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_EXISTENCIA'
            Title.Alignment = taCenter
            Title.Caption = 'Exist. Und.'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_EXISTEMPAQUE'
            Title.Alignment = taCenter
            Title.Caption = 'Exist. Emp.'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PRO_ITBIS'
            Title.Alignment = taCenter
            Title.Caption = 'Itbis'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_UBICACION'
            Title.Alignment = taCenter
            Title.Caption = 'Ubicaci'#243'n'
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_NUEVOUSADO'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FAM_NOMBRE'
            Title.Caption = 'Familia'
            Width = 197
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DEP_NOMBRE'
            Title.Caption = 'Departamento'
            Width = 197
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MAR_NOMBRE'
            Title.Caption = 'Marca'
            Width = 159
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COL_NOMBRE'
            Title.Caption = 'Color'
            Width = 115
            Visible = True
          end>
      end
      object cbOpcion: TRadioGroup
        Left = 0
        Top = 245
        Width = 137
        Height = 80
        Caption = 'Buscar por'
        Ctl3D = True
        ItemIndex = 3
        Items.Strings = (
          'Codigo'
          'Referencia original'
          'Referencia fabricante'
          'Nombre del producto'
          'Uso')
        ParentCtl3D = False
        TabOrder = 1
        OnClick = cbOpcionClick
      end
      object edOpcion: TEdit
        Left = 352
        Top = 335
        Width = 97
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
        OnKeyPress = edOpcionKeyPress
      end
      object ckServicio: TCheckBox
        Left = 144
        Top = 335
        Width = 153
        Height = 17
        Caption = 'Solamente servicios'
        TabOrder = 4
        OnClick = ckServicioClick
      end
      object rgTipo: TRadioGroup
        Left = 0
        Top = 327
        Width = 137
        Height = 56
        Caption = 'Tipo'
        Items.Strings = (
          'Todos'
          'Nuevos'
          'Usados')
        TabOrder = 5
        OnClick = rgTipoClick
      end
      object ckVence: TCheckBox
        Left = 144
        Top = 350
        Width = 153
        Height = 17
        Caption = 'Con fecha de vencimiento'
        TabOrder = 6
        OnClick = ckVenceClick
      end
      object ckReorden: TCheckBox
        Left = 144
        Top = 364
        Width = 153
        Height = 17
        Caption = 'En punto de reorden'
        TabOrder = 7
      end
      object edOpcion2: TEdit
        Left = 352
        Top = 359
        Width = 97
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
        OnKeyPress = edOpcion2KeyPress
      end
      object btRefresh: TBitBtn
        Left = 488
        Top = 352
        Width = 75
        Height = 25
        Caption = 'Refrescar >>'
        TabOrder = 8
        OnClick = btRefreshClick
      end
      object Memo1: TMemo
        Left = 24
        Top = 96
        Width = 241
        Height = 89
        Lines.Strings = (
          'Memo1')
        TabOrder = 9
        Visible = False
      end
      object edFamilia: TEdit
        Left = 224
        Top = 248
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
        OnChange = edFamiliaChange
        OnKeyDown = edFamiliaKeyDown
      end
      object Edit1: TEdit
        Left = 285
        Top = 248
        Width = 276
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
      object edDepto: TEdit
        Left = 224
        Top = 272
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
        OnChange = edDeptoChange
        OnKeyDown = edDeptoKeyDown
      end
      object Edit2: TEdit
        Left = 285
        Top = 272
        Width = 276
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
      object Edit3: TEdit
        Left = 285
        Top = 296
        Width = 276
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
      object edMarca: TEdit
        Left = 224
        Top = 296
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
        TabOrder = 15
        OnChange = edMarcaChange
        OnKeyDown = edMarcaKeyDown
      end
    end
    object TabSheet2: TTabSheet
      HelpContext = 9
      Caption = 'Compras'
      ImageIndex = 5
      object Label26: TLabel
        Left = 8
        Top = 360
        Width = 91
        Height = 13
        Caption = 'Rango de Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton2: TSpeedButton
        Left = 272
        Top = 360
        Width = 89
        Height = 22
        Caption = 'Refrescar'
        Flat = True
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777777700007777777778888887777700007777777000003888777700007777
          770BBBB03088877700007777770BBBB0308887770000777770BBBB0333088777
          0000777770BBBB03330887770000777770000003330887770000777777778033
          3308877700007777777000333308877700007777770BB0333308877700007777
          70BBBB0333088777000077770BBBBBB03308877700007770BBBBBBBB03088777
          0000777000BBBB00030887770000777770BBBB033308777700007777770BBBB0
          3087777700007777770BBBB03077777700007777777000003777777700007777
          77777777777777770000}
        OnClick = SpeedButton2Click
      end
      object DBText3: TDBText
        Left = 0
        Top = 0
        Width = 569
        Height = 17
        Align = alTop
        Alignment = taCenter
        DataField = 'PRO_NOMBRE'
        DataSource = dsProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object sgCompras: TDBGrid
        Left = 0
        Top = 17
        Width = 569
        Height = 336
        Align = alTop
        Color = clInfoBk
        Ctl3D = False
        DataSource = dsCompras
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
            FieldName = 'SUP_NOMBRE'
            Title.Caption = 'Nombre del Proveedor'
            Width = 225
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FAC_NUMERO'
            Title.Alignment = taCenter
            Title.Caption = '#Factura'
            Width = 66
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FAC_FECHA'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DET_CANTIDAD'
            Title.Alignment = taCenter
            Title.Caption = 'Cant'
            Width = 34
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'det_oferta'
            Title.Alignment = taCenter
            Title.Caption = 'Oferta'
            Width = 35
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
            FieldName = 'DET_COSTO'
            Title.Alignment = taCenter
            Title.Caption = 'Costo'
            Width = 72
            Visible = True
          end>
      end
      object Fecha1: TDateTimePicker
        Left = 104
        Top = 360
        Width = 81
        Height = 21
        Date = 37781.000000000000000000
        Time = 37781.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Fecha2: TDateTimePicker
        Left = 184
        Top = 360
        Width = 81
        Height = 21
        Date = 37781.000000000000000000
        Time = 37781.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Ventas'
      ImageIndex = 14
      object DBText4: TDBText
        Left = 0
        Top = 0
        Width = 569
        Height = 17
        Align = alTop
        Alignment = taCenter
        DataField = 'PRO_NOMBRE'
        DataSource = dsProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label32: TLabel
        Left = 8
        Top = 360
        Width = 91
        Height = 13
        Caption = 'Rango de Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton9: TSpeedButton
        Left = 272
        Top = 360
        Width = 89
        Height = 22
        Caption = 'Refrescar'
        Flat = True
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777777700007777777778888887777700007777777000003888777700007777
          770BBBB03088877700007777770BBBB0308887770000777770BBBB0333088777
          0000777770BBBB03330887770000777770000003330887770000777777778033
          3308877700007777777000333308877700007777770BB0333308877700007777
          70BBBB0333088777000077770BBBBBB03308877700007770BBBBBBBB03088777
          0000777000BBBB00030887770000777770BBBB033308777700007777770BBBB0
          3087777700007777770BBBB03077777700007777777000003777777700007777
          77777777777777770000}
        OnClick = SpeedButton9Click
      end
      object gventas: TDBGrid
        Left = 0
        Top = 17
        Width = 569
        Height = 336
        Align = alTop
        Color = clInfoBk
        Ctl3D = False
        DataSource = dsVentas
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
            FieldName = 'Cliente'
            Width = 262
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Factura'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'fecha'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cantidad'
            Title.Alignment = taCenter
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Precio'
            Title.Alignment = taCenter
            Width = 77
            Visible = True
          end>
      end
      object ventas_fecha1: TDateTimePicker
        Left = 104
        Top = 360
        Width = 81
        Height = 21
        Date = 37781.000000000000000000
        Time = 37781.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object ventas_fecha2: TDateTimePicker
        Left = 184
        Top = 360
        Width = 81
        Height = 21
        Date = 37781.000000000000000000
        Time = 37781.000000000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
    object TabSheet10: TTabSheet
      Caption = 'Comentario'
      ImageIndex = 10
      object DBMemo1: TDBMemo
        Left = 0
        Top = 0
        Width = 569
        Height = 446
        Align = alClient
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'pro_comentario'
        DataSource = dsProductos
        TabOrder = 0
      end
    end
    object TabSheet16: TTabSheet
      Caption = 'Modificaciones'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 13
      ParentFont = False
      object DBGrid12: TDBGrid
        Left = 0
        Top = 0
        Width = 569
        Height = 446
        Align = alClient
        Color = clInfoBk
        Ctl3D = False
        DataSource = dsMod
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
            FieldName = 'FECHA'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 133
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USU_ANT'
            Title.Caption = 'MODIFICA ANT'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_PRECIO1_ANT'
            Title.Alignment = taCenter
            Title.Caption = 'Precio1 Ant.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_PRECIO1_ACT'
            Title.Alignment = taCenter
            Title.Caption = 'Precio1 Act.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USU_ACT'
            Title.Caption = 'MODIFICA ACT'
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_PRECIO2_ANT'
            Title.Alignment = taCenter
            Title.Caption = 'Precio2 Ant.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_PRECIO2_ACT'
            Title.Alignment = taCenter
            Title.Caption = 'Precio2 Act.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_PRECIO3_ANT'
            Title.Alignment = taCenter
            Title.Caption = 'Precio3 Ant.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_PRECIO3_ACT'
            Title.Alignment = taCenter
            Title.Caption = 'Precio3 Act.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_PRECIO4_ANT'
            Title.Alignment = taCenter
            Title.Caption = 'Precio4 Ant.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_PRECIO4_ACT'
            Title.Alignment = taCenter
            Title.Caption = 'Precio4 Act.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_COSTOUN_ANT'
            Title.Alignment = taCenter
            Title.Caption = 'Costo Und. Ant.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_COSTOUN_ACT'
            Title.Alignment = taCenter
            Title.Caption = 'Costo Und. Act.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_COSTOEM_ANT'
            Title.Alignment = taCenter
            Title.Caption = 'Costo Emp. Ant.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRO_COSTOEM_ACT'
            Title.Alignment = taCenter
            Title.Caption = 'Costo Emp. Act.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'modulo_actual'
            Title.Caption = 'MODULO ACT'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'modulo_anterior'
            Title.Caption = 'MODULO ANT'
            Width = 100
            Visible = True
          end>
      end
    end
    object TabSheet11: TTabSheet
      Caption = 'Estadisticas'
      ImageIndex = 10
      object DBText8: TDBText
        Left = 0
        Top = 0
        Width = 569
        Height = 17
        Align = alTop
        Alignment = taCenter
        DataField = 'PRO_NOMBRE'
        DataSource = dsProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 17
        Width = 569
        Height = 429
        ActivePage = TabSheet12
        Align = alClient
        TabOrder = 0
        object TabSheet12: TTabSheet
          Caption = 'Ventas'
          object SpeedButton4: TSpeedButton
            Left = 144
            Top = 312
            Width = 87
            Height = 22
            Caption = 'Refrescar'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = SpeedButton4Click
          end
          object Label42: TLabel
            Left = 65
            Top = 316
            Width = 19
            Height = 13
            Caption = 'A'#241'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object DBGrid10: TDBGrid
            Left = 0
            Top = 0
            Width = 281
            Height = 305
            Ctl3D = False
            DataSource = dsEstadisticaMes
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
                FieldName = 'mes'
                Title.Alignment = taCenter
                Title.Caption = 'Mes'
                Width = 110
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'monto'
                Title.Alignment = taCenter
                Title.Caption = 'Monto'
                Width = 101
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cantidad'
                Title.Alignment = taCenter
                Title.Caption = 'Cantidad'
                Width = 49
                Visible = True
              end>
          end
          object spAno: TSpinEdit
            Left = 88
            Top = 312
            Width = 57
            Height = 22
            EditorEnabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxValue = 3000
            MinValue = 1900
            ParentFont = False
            TabOrder = 1
            Value = 1900
          end
          object DBChart1: TDBChart
            Left = 288
            Top = 0
            Width = 273
            Height = 401
            AllowPanning = pmNone
            AllowZoom = False
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            BackWall.Pen.Visible = False
            PrintProportional = False
            Title.Text.Strings = (
              'TDBChart')
            Title.Visible = False
            AxisVisible = False
            Chart3DPercent = 50
            ClipPoints = False
            Frame.Visible = False
            View3DOptions.Elevation = 315
            View3DOptions.Orthogonal = False
            View3DOptions.Perspective = 0
            View3DOptions.Rotation = 360
            View3DWalls = False
            Align = alRight
            TabOrder = 2
            object Series1: TPieSeries
              Marks.ArrowLength = 8
              Marks.Visible = True
              DataSource = QEstadisticaVenta
              SeriesColor = clRed
              ShowInLegend = False
              XLabelsSource = 'mes'
              OtherSlice.Text = 'Other'
              PieValues.DateTime = False
              PieValues.Name = 'Pie'
              PieValues.Multiplier = 1.000000000000000000
              PieValues.Order = loNone
              PieValues.ValueSource = 'monto'
            end
          end
          object TrackBar1: TTrackBar
            Left = 288
            Top = 0
            Width = 270
            Height = 33
            Max = 100
            Min = 1
            Position = 50
            TabOrder = 3
            OnChange = TrackBar1Change
          end
        end
        object TabSheet13: TTabSheet
          Caption = 'Compras'
          ImageIndex = 1
          object SpeedButton5: TSpeedButton
            Left = 144
            Top = 312
            Width = 87
            Height = 22
            Caption = 'Refrescar'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = SpeedButton5Click
          end
          object Label43: TLabel
            Left = 65
            Top = 316
            Width = 19
            Height = 13
            Caption = 'A'#241'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object DBGrid11: TDBGrid
            Left = 0
            Top = 0
            Width = 281
            Height = 305
            Ctl3D = False
            DataSource = dsEstCompras
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
                FieldName = 'mes'
                Title.Alignment = taCenter
                Title.Caption = 'Mes'
                Width = 110
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'monto'
                Title.Alignment = taCenter
                Title.Caption = 'Monto'
                Width = 101
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cantidad'
                Title.Caption = 'Cantidad'
                Width = 49
                Visible = True
              end>
          end
          object SpinEdit1: TSpinEdit
            Left = 88
            Top = 312
            Width = 57
            Height = 22
            EditorEnabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxValue = 3000
            MinValue = 1900
            ParentFont = False
            TabOrder = 1
            Value = 1900
          end
          object DBChart2: TDBChart
            Left = 280
            Top = 0
            Width = 281
            Height = 401
            AllowPanning = pmNone
            AllowZoom = False
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            BackWall.Pen.Visible = False
            PrintProportional = False
            Title.Text.Strings = (
              'TDBChart')
            Title.Visible = False
            AxisVisible = False
            Chart3DPercent = 50
            ClipPoints = False
            Frame.Visible = False
            View3DOptions.Elevation = 315
            View3DOptions.Orthogonal = False
            View3DOptions.Perspective = 0
            View3DOptions.Rotation = 360
            View3DWalls = False
            Align = alRight
            TabOrder = 2
            object PieSeries1: TPieSeries
              Marks.ArrowLength = 8
              Marks.Visible = True
              DataSource = QEstadisticaCompra
              SeriesColor = clRed
              ShowInLegend = False
              XLabelsSource = 'mes'
              OtherSlice.Text = 'Other'
              PieValues.DateTime = False
              PieValues.Name = 'Pie'
              PieValues.Multiplier = 1.000000000000000000
              PieValues.Order = loNone
              PieValues.ValueSource = 'monto'
            end
          end
          object TrackBar2: TTrackBar
            Left = 280
            Top = 0
            Width = 278
            Height = 33
            Max = 100
            Min = 1
            Position = 50
            TabOrder = 3
            OnChange = TrackBar2Change
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Liquidaciones'
      ImageIndex = 13
      object DBText1: TDBText
        Left = 0
        Top = 0
        Width = 569
        Height = 17
        Align = alTop
        Alignment = taCenter
        DataField = 'PRO_NOMBRE'
        DataSource = dsProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 17
        Width = 569
        Height = 429
        Align = alClient
        Ctl3D = False
        DataSource = dsLiquidacion
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'det_cantidad'
            Title.Alignment = taCenter
            Title.Caption = 'Cantidad'
            Width = 45
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'det_medida'
            Title.Alignment = taCenter
            Title.Caption = 'Medida'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'det_costo'
            Title.Alignment = taCenter
            Title.Caption = 'Costo US$'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'det_peso_volumen'
            Title.Alignment = taCenter
            Title.Caption = 'Peso/Volumen'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'det_costo_rd'
            Title.Alignment = taCenter
            Title.Caption = 'Costo RD$'
            Width = 77
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'liq_numero'
            Title.Alignment = taCenter
            Title.Caption = '#Liquidaci'#243'n'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'liq_fecha'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'liq_agencia'
            Title.Caption = 'Agencia'
            Width = 154
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'liq_container'
            Title.Caption = 'Contenedor'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'liq_factura'
            Title.Alignment = taCenter
            Title.Caption = '#Factura'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'liq_taza'
            Title.Alignment = taCenter
            Title.Caption = 'Tasa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'usu_nombre'
            Title.Caption = 'Usuario'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sup_nombre'
            Title.Caption = 'Proveedor'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ent_numero'
            Title.Alignment = taCenter
            Title.Caption = '#Entrada'
            Visible = True
          end>
      end
    end
    object TabSheet17: TTabSheet
      Caption = 'Oferta'
      ImageIndex = 14
      object DBText10: TDBText
        Left = 0
        Top = 0
        Width = 569
        Height = 17
        Align = alTop
        Alignment = taCenter
        DataField = 'PRO_NOMBRE'
        DataSource = dsProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton10: TSpeedButton
        Left = 488
        Top = 360
        Width = 73
        Height = 22
        Caption = 'Eliminar'
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
        OnClick = SpeedButton10Click
      end
      object DBGrid13: TDBGrid
        Left = 0
        Top = 17
        Width = 569
        Height = 336
        Align = alTop
        Ctl3D = False
        DataSource = dsOfertas
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnKeyPress = DBGrid13KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'cantidad'
            Title.Alignment = taCenter
            Title.Caption = 'Cantidad'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'regalo'
            Title.Alignment = taCenter
            Title.Caption = 'Cantidad gratis'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'precio'
            Title.Alignment = taCenter
            Title.Caption = 'Precio'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fecha_ini'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha Inicio'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fecha_fin'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha fin'
            Width = 68
            Visible = True
          end>
      end
    end
    object TabSheet5: TTabSheet
      HelpContext = 8
      Caption = 'Vencimiento'
      ImageIndex = 4
      object SpeedButton1: TSpeedButton
        Left = 384
        Top = 360
        Width = 177
        Height = 22
        Caption = 'Eliminar fecha de vencimiento'
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
        OnClick = SpeedButton1Click
      end
      object DBText2: TDBText
        Left = 0
        Top = 0
        Width = 569
        Height = 17
        Align = alTop
        Alignment = taCenter
        DataField = 'PRO_NOMBRE'
        DataSource = dsProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGrid3: TDBGrid
        Left = 0
        Top = 17
        Width = 569
        Height = 336
        Align = alTop
        Color = clInfoBk
        Ctl3D = False
        DataSource = dsVence
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
            FieldName = 'VEN_LOTE'
            Title.Alignment = taCenter
            Title.Caption = 'Lote'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VEN_FECHA'
            Title.Alignment = taCenter
            Title.Caption = 'Vencimiento'
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VEN_CANTVENDIDA'
            Title.Alignment = taCenter
            Title.Caption = 'Und Vendidas'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VEN_CANTPENDIENTE'
            Title.Alignment = taCenter
            Title.Caption = 'Und Pendientes'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VEN_CANTVENDIDAEMP'
            Title.Alignment = taCenter
            Title.Caption = 'Emp Vendidos'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VEN_CANTPENEMP'
            Title.Alignment = taCenter
            Title.Caption = 'Emp Pendientes'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sup_nombre'
            Title.Caption = 'Proveedor'
            Width = 117
            Visible = True
          end>
      end
    end
    object TabSheet3: TTabSheet
      HelpContext = 11
      Caption = 'Escalas y Combo'
      ImageIndex = 6
      object DBText5: TDBText
        Left = 0
        Top = 0
        Width = 569
        Height = 17
        Align = alTop
        Alignment = taCenter
        DataField = 'PRO_NOMBRE'
        DataSource = dsProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 0
        Top = 32
        Width = 99
        Height = 13
        Caption = 'Escalas del producto'
      end
      object Label37: TLabel
        Left = 0
        Top = 200
        Width = 95
        Height = 13
        Caption = 'Combo del producto'
      end
      object btInsertaCom: TSpeedButton
        Left = 312
        Top = 360
        Width = 81
        Height = 22
        Caption = 'A'#241'adir'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
          333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
          0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
          0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
          33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
          B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
          3BB33773333773333773B333333B3333333B7333333733333337}
        NumGlyphs = 2
        OnClick = btInsertaComClick
      end
      object btDelCom: TSpeedButton
        Left = 488
        Top = 360
        Width = 81
        Height = 22
        Caption = 'Eliminar'
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
        OnClick = btDelComClick
      end
      object bteditCombo: TSpeedButton
        Left = 400
        Top = 360
        Width = 81
        Height = 22
        Caption = 'Modificar'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
          000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
          00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
          F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
          0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
          FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
          FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
          0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
          00333377737FFFFF773333303300000003333337337777777333}
        NumGlyphs = 2
        OnClick = bteditComboClick
      end
      object DBGrid4: TDBGrid
        Left = 1
        Top = 48
        Width = 568
        Height = 137
        Color = clInfoBk
        Ctl3D = False
        DataSource = dsEscala
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
            FieldName = 'ALM_NOMBRE'
            Title.Caption = 'Descripci'#243'n del Almac'#233'n'
            Width = 260
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ESC_ESCALA'
            Title.Alignment = taCenter
            Title.Caption = 'Escala'
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESC_EXISTENCIA'
            Title.Alignment = taCenter
            Title.Caption = 'Existencia'
            Width = 56
            Visible = True
          end>
      end
      object DBGrid8: TDBGrid
        Left = 0
        Top = 216
        Width = 569
        Height = 137
        Color = clInfoBk
        Ctl3D = False
        DataSource = dsCombo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
            FieldName = 'PRO_NOMBRE'
            Title.Caption = 'Nombre del producto'
            Width = 342
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COM_CANTIDAD'
            Title.Alignment = taCenter
            Title.Caption = 'Cant.'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COM_COSTO'
            Title.Alignment = taCenter
            Title.Caption = 'Costo'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COM_PRECIO'
            Title.Alignment = taCenter
            Title.Caption = 'Precio'
            Width = 77
            Visible = True
          end>
      end
      object btactcosto: TBitBtn
        Left = 128
        Top = 360
        Width = 179
        Height = 22
        Caption = 'Actualizar costo del producto padre'
        TabOrder = 2
        OnClick = btactcostoClick
      end
    end
    object TabSheet9: TTabSheet
      Caption = 'Equivalencias'
      ImageIndex = 8
      object DBText7: TDBText
        Left = 0
        Top = 0
        Width = 569
        Height = 17
        Align = alTop
        Alignment = taCenter
        DataField = 'PRO_NOMBRE'
        DataSource = dsProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btinsertaeq: TSpeedButton
        Left = 408
        Top = 360
        Width = 73
        Height = 22
        Caption = 'A'#241'adir'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
          333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
          0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
          0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
          33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
          B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
          3BB33773333773333773B333333B3333333B7333333733333337}
        NumGlyphs = 2
        OnClick = btinsertaeqClick
      end
      object bteliminaeq: TSpeedButton
        Left = 488
        Top = 360
        Width = 73
        Height = 22
        Caption = 'Eliminar'
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
        OnClick = bteliminaeqClick
      end
      object DBGrid9: TDBGrid
        Left = 0
        Top = 17
        Width = 569
        Height = 336
        Align = alTop
        Color = clInfoBk
        Ctl3D = False
        DataSource = dsEqui
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
            Width = 542
            Visible = True
          end>
      end
    end
    object TabSheet14: TTabSheet
      Caption = 'Fotograf'#237'a'
      ImageIndex = 11
      object Image1: TImage
        Left = 0
        Top = 0
        Width = 569
        Height = 386
        Align = alClient
        AutoSize = True
        PopupMenu = PopupMenu1
      end
    end
    object TabSheet18: TTabSheet
      Caption = 'Desc./Tipo Fac.'
      ImageIndex = 15
      object Label50: TLabel
        Left = 8
        Top = 32
        Width = 263
        Height = 13
        Caption = 'Descuentos maximo por Tipo de Factura'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btinsertadescuento: TSpeedButton
        Left = 408
        Top = 360
        Width = 73
        Height = 22
        Caption = 'A'#241'adir'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
          333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
          0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
          0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
          33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
          B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
          3BB33773333773333773B333333B3333333B7333333733333337}
        NumGlyphs = 2
        OnClick = btinsertadescuentoClick
      end
      object btdeletedescuento: TSpeedButton
        Left = 488
        Top = 360
        Width = 73
        Height = 22
        Caption = 'Eliminar'
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
        OnClick = btdeletedescuentoClick
      end
      object DBText11: TDBText
        Left = 0
        Top = 0
        Width = 569
        Height = 17
        Align = alTop
        Alignment = taCenter
        DataField = 'PRO_NOMBRE'
        DataSource = dsProductos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGrid14: TDBGrid
        Left = 0
        Top = 48
        Width = 569
        Height = 305
        Color = clInfoBk
        Ctl3D = False
        DataSource = dsDescuentoTFA
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
            FieldName = 'tfa_nombre'
            Title.Caption = 'Tipo de Factura'
            Width = 230
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descuento'
            Title.Alignment = taCenter
            Title.Caption = '%Descuento maximo'
            Visible = True
          end>
      end
    end
  end
  object QProductos: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterInsert = QProductosAfterInsert
    AfterEdit = QProductosAfterEdit
    BeforePost = QProductosBeforePost
    AfterPost = QProductosAfterPost
    AfterCancel = QCompetenciaAfterPost
    AfterDelete = QProductosAfterDelete
    OnCalcFields = QProductosCalcFields
    OnNewRecord = QProductosNewRecord
    Parameters = <
      item
        Name = 'par_invempresa'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'prod'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select '
      'EMP_CODIGO, PRO_CODIGO, PRO_RORIGINAL, PRO_RFABRIC, '
      'PRO_NOMBRE, FAM_CODIGO, COL_CODIGO, PRO_BARRA, '
      'PRO_DESCMAX, PRO_ULTCOSTO, PRO_COSTO, PRO_PRECIO1 PRO_PRECIO1, '
      
        'PRO_PRECIO2 PRO_PRECIO2, PRO_PRECIO3 PRO_PRECIO3, PRO_PRECIO4 PR' +
        'O_PRECIO4, '
      
        'PRO_DISPLAY, PRO_STATUS, PRO_INVINICIAL, PRO_EXISTENCIA PRO_EXIS' +
        'TENCIA, PRO_UBICACION, '
      'PRO_STKMINIMO, PRO_STKMAXIMO, PRO_INVFISICO, '
      'PRO_PEDIDOPRV, PRO_PEDIDOCLI, PRO_CTAINVENT, '
      
        'PRO_CTACOSTO, DEP_CODIGO, PRO_ITBIS, PRO_BENEFICIO PRO_BENEFICIO' +
        ', '
      'PRO_ESCALA, PRO_SERVICIO, MAR_CODIGO, PRO_COMISION, '
      
        'PRO_VENCE, PRO_BENEFICIO2 PRO_BENEFICIO2, PRO_BENEFICIO3 PRO_BEN' +
        'EFICIO3, PRO_BENEFICIO4 PRO_BENEFICIO4, '
      'PRO_USO, SUP_CODIGO, PRO_NUEVOUSADO, PRO_COSTOUS,'
      
        'PRO_TASACOMPRA, PRO_TASAVENTA, PRO_PRECIOMENOR, PRO_EXISTEMPAQUE' +
        ' PRO_EXISTEMPAQUE,'
      'PRO_CANTEMPAQUE, PRO_COSTOEMPAQUE, PRO_COMBO, PRO_INVINICIALEMP,'
      'PRO_STKMINIMOEMP, PRO_STKMAXIMOEMP, PRO_PRECIOMENOREMP,'
      'PRO_ALMACENBAR, MON_CODIGO, PRO_COMISIONDESCUENTO,'
      'PRO_CONTROLADO, PRO_DETALLADO, pro_realizar_pedido,'
      'usu_codigo, pro_fecha_modifico, pro_comentario, pro_foto,'
      'pro_selectivo_ad, pro_selectivo_con, pro_unidad_medida,'
      'pro_minimo_venta, pro_volumen, ger_codigo, gon_codigo,'
      
        'pro_patrocinador, UnidadID, pro_utilizamedidor, pro_montoitbis p' +
        'ro_montoitbis, pro_UtilizaEnvio,'
      
        'pro_Garantia, pro_Garantia_Cantidad, pro_Garantia_Periodo, pro_S' +
        'erializado,'
      
        'pro_UtilizaAlquiler,pro_Uni_AlquilerID,pro_Alq_recargo,pro_Alq_s' +
        'tatus,pro_Uni_Alq_cantidad, '
      
        'modulo_anterior, modulo_actual, FECHA_CREACION, with_servicio_co' +
        'nstruccion'
      'from '
      'PRODUCTOS'
      'where '
      'emp_codigo = :par_invempresa'
      'and pro_codigo = :prod')
    Left = 48
    Top = 118
    object QProductosEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QProductosPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
    end
    object QProductosPRO_RORIGINAL: TIBStringField
      FieldName = 'PRO_RORIGINAL'
      OnChange = QProductosPRO_RORIGINALChange
      Size = 50
    end
    object QProductosPRO_RFABRIC: TIBStringField
      FieldName = 'PRO_RFABRIC'
      OnChange = QProductosPRO_RFABRICChange
      Size = 60
    end
    object QProductosPRO_NOMBRE: TIBStringField
      DisplayWidth = 256
      FieldName = 'PRO_NOMBRE'
      Size = 256
    end
    object QProductosFAM_CODIGO: TIntegerField
      FieldName = 'FAM_CODIGO'
      OnChange = QProductosFAM_CODIGOChange
      OnGetText = QProductosFAM_CODIGOGetText
    end
    object QProductosCOL_CODIGO: TIntegerField
      FieldName = 'COL_CODIGO'
      OnGetText = QProductosCOL_CODIGOGetText
    end
    object QProductosPRO_BARRA: TIBStringField
      FieldName = 'PRO_BARRA'
      Size = 30
    end
    object QProductosPRO_DESCMAX: TFloatField
      FieldName = 'PRO_DESCMAX'
    end
    object QProductosPRO_ULTCOSTO: TFloatField
      FieldName = 'PRO_ULTCOSTO'
    end
    object QProductosPRO_DISPLAY: TIBStringField
      FieldName = 'PRO_DISPLAY'
      Size = 30
    end
    object QProductosPRO_STATUS: TIBStringField
      FieldName = 'PRO_STATUS'
      Size = 3
    end
    object QProductosPRO_INVINICIAL: TFloatField
      FieldName = 'PRO_INVINICIAL'
    end
    object QProductosPRO_EXISTENCIA: TFloatField
      FieldName = 'PRO_EXISTENCIA'
    end
    object QProductosPRO_STKMINIMO: TFloatField
      FieldName = 'PRO_STKMINIMO'
    end
    object QProductosPRO_STKMAXIMO: TFloatField
      FieldName = 'PRO_STKMAXIMO'
    end
    object QProductosPRO_INVFISICO: TFloatField
      FieldName = 'PRO_INVFISICO'
    end
    object QProductosPRO_PEDIDOPRV: TFloatField
      FieldName = 'PRO_PEDIDOPRV'
    end
    object QProductosPRO_PEDIDOCLI: TFloatField
      FieldName = 'PRO_PEDIDOCLI'
    end
    object QProductosPRO_CTAINVENT: TIBStringField
      FieldName = 'PRO_CTAINVENT'
      Size = 15
    end
    object QProductosPRO_CTACOSTO: TIBStringField
      FieldName = 'PRO_CTACOSTO'
      Size = 15
    end
    object QProductosDEP_CODIGO: TIntegerField
      FieldName = 'DEP_CODIGO'
      OnGetText = QProductosDEP_CODIGOGetText
    end
    object QProductosPRO_ITBIS: TIBStringField
      FieldName = 'PRO_ITBIS'
      Size = 1
    end
    object QProductosPRO_BENEFICIO: TFloatField
      FieldName = 'PRO_BENEFICIO'
      Origin = 'PRODUCTOS.PRO_BENEFICIO'
      EditFormat = '#,0.00'
    end
    object QProductosPRO_ESCALA: TIBStringField
      FieldName = 'PRO_ESCALA'
      Origin = 'PRODUCTOS.PRO_ESCALA'
      Size = 5
    end
    object QProductosPRO_SERVICIO: TIBStringField
      FieldName = 'PRO_SERVICIO'
      Origin = 'PRODUCTOS.PRO_SERVICIO'
      Size = 5
    end
    object QProductosMAR_CODIGO: TIntegerField
      FieldName = 'MAR_CODIGO'
      Origin = 'PRODUCTOS.MAR_CODIGO'
      OnGetText = QProductosMAR_CODIGOGetText
    end
    object QProductosPRO_COMISION: TFloatField
      FieldName = 'PRO_COMISION'
      Origin = 'PRODUCTOS.PRO_COMISION'
    end
    object QProductosPRO_VENCE: TIBStringField
      FieldName = 'PRO_VENCE'
      Origin = 'PRODUCTOS.PRO_VENCE'
      Size = 5
    end
    object QProductosPRO_BENEFICIO2: TFloatField
      FieldName = 'PRO_BENEFICIO2'
      Origin = 'PRODUCTOS.PRO_BENEFICIO2'
      EditFormat = '#,0.00'
    end
    object QProductosPRO_BENEFICIO3: TFloatField
      FieldName = 'PRO_BENEFICIO3'
      Origin = 'PRODUCTOS.PRO_BENEFICIO3'
      EditFormat = '#,0.00'
    end
    object QProductosPRO_BENEFICIO4: TFloatField
      FieldName = 'PRO_BENEFICIO4'
      Origin = 'PRODUCTOS.PRO_BENEFICIO4'
      EditFormat = '#,0.00'
    end
    object QProductosPRO_USO: TIBStringField
      FieldName = 'PRO_USO'
      Origin = 'PRODUCTOS.PRO_USO'
      Size = 60
    end
    object QProductosPRO_NUEVOUSADO: TIBStringField
      FieldName = 'PRO_NUEVOUSADO'
      Origin = 'PRODUCTOS.PRO_NUEVOUSADO'
      Size = 1
    end
    object QProductosPRO_COSTOUS: TFloatField
      FieldName = 'PRO_COSTOUS'
      Origin = 'PRODUCTOS.PRO_COSTOUS'
    end
    object QProductosPRO_TASACOMPRA: TFloatField
      FieldName = 'PRO_TASACOMPRA'
      Origin = 'PRODUCTOS.PRO_TASACOMPRA'
    end
    object QProductosPRO_PRECIOMENOR: TFloatField
      FieldName = 'PRO_PRECIOMENOR'
      Origin = 'PRODUCTOS.PRO_PRECIOMENOR'
    end
    object QProductosPRO_TASAVENTA: TFloatField
      FieldName = 'PRO_TASAVENTA'
      Origin = 'PRODUCTOS.PRO_TASAVENTA'
    end
    object QProductosPRO_EXISTEMPAQUE: TFloatField
      FieldName = 'PRO_EXISTEMPAQUE'
      Origin = 'PRODUCTOS.PRO_EXISTEMPAQUE'
    end
    object QProductosPRO_CANTEMPAQUE: TFloatField
      FieldName = 'PRO_CANTEMPAQUE'
      Origin = 'PRODUCTOS.PRO_CANTEMPAQUE'
      OnChange = QProductosPRO_CANTEMPAQUEChange
    end
    object QProductosPRO_COSTOEMPAQUE: TFloatField
      FieldName = 'PRO_COSTOEMPAQUE'
      Origin = 'PRODUCTOS.PRO_COSTOEMPAQUE'
      OnChange = QProductosPRO_COSTOEMPAQUEChange
    end
    object QProductosPRO_COMBO: TIBStringField
      FieldName = 'PRO_COMBO'
      Origin = 'PRODUCTOS.PRO_COMBO'
      Size = 5
    end
    object QProductosPRO_INVINICIALEMP: TFloatField
      FieldName = 'PRO_INVINICIALEMP'
      Origin = 'PRODUCTOS.PRO_INVINICIALEMP'
    end
    object QProductosPRO_STKMINIMOEMP: TFloatField
      FieldName = 'PRO_STKMINIMOEMP'
      Origin = 'PRODUCTOS.PRO_STKMINIMOEMP'
    end
    object QProductosPRO_STKMAXIMOEMP: TFloatField
      FieldName = 'PRO_STKMAXIMOEMP'
      Origin = 'PRODUCTOS.PRO_STKMAXIMOEMP'
    end
    object QProductosPRO_PRECIOMENOREMP: TFloatField
      FieldName = 'PRO_PRECIOMENOREMP'
      Origin = 'PRODUCTOS.PRO_PRECIOMENOREMP'
    end
    object QProductosPRO_ALMACENBAR: TIntegerField
      FieldName = 'PRO_ALMACENBAR'
      Origin = 'PRODUCTOS.PRO_ALMACENBAR'
    end
    object QProductosMON_CODIGO: TIntegerField
      FieldName = 'MON_CODIGO'
    end
    object QProductosPRO_COMISIONDESCUENTO: TBCDField
      FieldName = 'PRO_COMISIONDESCUENTO'
      Precision = 15
      Size = 2
    end
    object QProductosPRO_CONTROLADO: TStringField
      FieldName = 'PRO_CONTROLADO'
      Size = 5
    end
    object QProductosPRO_DETALLADO: TStringField
      FieldName = 'PRO_DETALLADO'
      Size = 5
    end
    object QProductospro_realizar_pedido: TStringField
      FieldName = 'pro_realizar_pedido'
      Size = 5
    end
    object QProductosCalcCosto: TFloatField
      DefaultExpression = '0'
      FieldKind = fkCalculated
      FieldName = 'CalcCosto'
      DisplayFormat = '#,0.00'
      Calculated = True
    end
    object QProductosCalcCostoEmp: TFloatField
      DefaultExpression = '0'
      FieldKind = fkCalculated
      FieldName = 'CalcCostoEmp'
      DisplayFormat = '#,0.00'
      Calculated = True
    end
    object QProductosValor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor'
      OnValidate = QProductosValorValidate
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      currency = True
      Calculated = True
    end
    object QProductosValorEmp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ValorEmp'
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
      Calculated = True
    end
    object QProductosusu_codigo: TIntegerField
      FieldName = 'usu_codigo'
    end
    object QProductospro_fecha_modifico: TDateTimeField
      FieldName = 'pro_fecha_modifico'
    end
    object QProductospro_comentario: TMemoField
      FieldName = 'pro_comentario'
      BlobType = ftMemo
    end
    object QProductospro_foto: TStringField
      FieldName = 'pro_foto'
      Size = 200
    end
    object QProductospro_selectivo_ad: TBCDField
      FieldName = 'pro_selectivo_ad'
      currency = True
      Precision = 15
      Size = 2
    end
    object QProductospro_selectivo_con: TBCDField
      FieldName = 'pro_selectivo_con'
      currency = True
      Precision = 15
      Size = 2
    end
    object QProductospro_unidad_medida: TStringField
      FieldName = 'pro_unidad_medida'
    end
    object QProductospro_minimo_venta: TBCDField
      FieldName = 'pro_minimo_venta'
      Precision = 15
      Size = 2
    end
    object QProductospro_volumen: TBCDField
      FieldName = 'pro_volumen'
      Precision = 18
      Size = 6
    end
    object QProductosger_codigo: TIntegerField
      FieldName = 'ger_codigo'
      OnGetText = QProductosger_codigoGetText
    end
    object QProductosgon_codigo: TIntegerField
      FieldName = 'gon_codigo'
      OnGetText = QProductosgon_codigoGetText
    end
    object QProductospro_patrocinador: TStringField
      FieldName = 'pro_patrocinador'
      Size = 5
    end
    object QProductosUnidadID: TStringField
      FieldName = 'UnidadID'
      OnGetText = QProductosUnidadIDGetText
      Size = 1
    end
    object QProductospro_utilizamedidor: TStringField
      FieldName = 'pro_utilizamedidor'
      Size = 5
    end
    object QProductospro_UtilizaEnvio: TStringField
      FieldName = 'pro_UtilizaEnvio'
      Size = 5
    end
    object QProductospro_Garantia: TStringField
      FieldName = 'pro_Garantia'
    end
    object QProductospro_Garantia_Cantidad: TIntegerField
      FieldName = 'pro_Garantia_Cantidad'
    end
    object QProductospro_Garantia_Periodo: TStringField
      FieldName = 'pro_Garantia_Periodo'
    end
    object QProductospro_Serializado: TStringField
      FieldName = 'pro_Serializado'
    end
    object QProductospro_Uni_AlquilerID: TIntegerField
      FieldName = 'pro_Uni_AlquilerID'
    end
    object QProductospro_Alq_status: TStringField
      FieldName = 'pro_Alq_status'
      Size = 15
    end
    object QProductospro_UtilizaAlquiler: TStringField
      FieldName = 'pro_UtilizaAlquiler'
      Size = 5
    end
    object QProductospro_Alq_recargo: TBCDField
      FieldName = 'pro_Alq_recargo'
      Precision = 15
      Size = 2
    end
    object QProductospro_Uni_Alq_cantidad: TIntegerField
      FieldName = 'pro_Uni_Alq_cantidad'
    end
    object QProductospro_montoitbis: TFloatField
      DefaultExpression = '0'
      FieldName = 'pro_montoitbis'
      OnValidate = QProductospro_montoitbisValidate
      DisplayFormat = '#,0.00'
      EditFormat = '#,0.00'
    end
    object QProductosPRO_COSTO: TFloatField
      DefaultExpression = '0'
      FieldName = 'PRO_COSTO'
      OnValidate = QProductosPRO_COSTOValidate
      EditFormat = '#,0.00'
    end
    object QProductosPRO_PRECIO1: TFloatField
      FieldName = 'PRO_PRECIO1'
      EditFormat = '#,0.00'
    end
    object QProductosPRO_PRECIO2: TFloatField
      FieldName = 'PRO_PRECIO2'
      EditFormat = '#,0.00'
    end
    object QProductosPRO_PRECIO3: TFloatField
      FieldName = 'PRO_PRECIO3'
      EditFormat = '#,0.00'
    end
    object QProductosPRO_PRECIO4: TFloatField
      FieldName = 'PRO_PRECIO4'
      EditFormat = '#,0.00'
    end
    object QProductosmodulo_actual: TStringField
      FieldName = 'modulo_actual'
      Size = 30
    end
    object QProductosmodulo_anterior: TStringField
      FieldName = 'modulo_anterior'
      Size = 30
    end
    object QProductosFECHA_CREACION: TDateTimeField
      FieldName = 'FECHA_CREACION'
    end
    object QProductosPRO_UBICACION: TStringField
      FieldName = 'PRO_UBICACION'
      Size = 50
    end
    object QProductoswith_servicio_construccion: TBooleanField
      FieldName = 'with_servicio_construccion'
    end
  end
  object dsProductos: TDataSource
    AutoEdit = False
    DataSet = QProductos
    OnStateChange = dsProductosStateChange
    OnDataChange = dsProductosDataChange
    Left = 48
    Top = 86
  end
  object Search: TQrySearchDlgADO
    Title = 'Listado de Productos'
    ResultField = 'pro_codigo'
    Query.Strings = (
      'select emp_nombre, emp_codigo'
      'from empresas')
    AliasFields.Strings = (
      'Nombre'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 48
    Top = 182
  end
  object dsProvee: TDataSource
    AutoEdit = False
    DataSet = QProvee
    OnStateChange = dsProveeStateChange
    Left = 48
    Top = 46
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 48
    Top = 214
  end
  object QVence: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsProductos
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
        Name = 'pro_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select '
      'v.EMP_CODIGO, v.PRO_CODIGO, v.VEN_CANTPENDIENTE,'
      'v.VEN_CANTVENDIDA, v.VEN_FECHA, v.VEN_LOTE,'
      'v.VEN_CANTPENEMP, v.VEN_CANTVENDIDAEMP, v.sup_codigo,'
      'p.sup_nombre'
      'from'
      'PROVENCE v'
      'left outer join proveedores p on (v.emp_codigo = p.emp_codigo'
      'and v.sup_codigo = p.sup_codigo)'
      'where'
      'v.emp_codigo = :emp_codigo'
      'and v.pro_codigo = :pro_codigo'
      'order by'
      'v.ven_lote')
    Left = 48
    Top = 150
    object QVenceEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'PROVENCE.EMP_CODIGO'
      Required = True
    end
    object QVencePRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'PROVENCE.PRO_CODIGO'
      Required = True
    end
    object QVenceVEN_CANTPENDIENTE: TFloatField
      FieldName = 'VEN_CANTPENDIENTE'
      Origin = 'PROVENCE.VEN_CANTPENDIENTE'
    end
    object QVenceVEN_CANTVENDIDA: TFloatField
      FieldName = 'VEN_CANTVENDIDA'
      Origin = 'PROVENCE.VEN_CANTVENDIDA'
    end
    object QVenceVEN_FECHA: TDateTimeField
      FieldName = 'VEN_FECHA'
      Origin = 'PROVENCE.VEN_FECHA'
      Required = True
    end
    object QVenceVEN_LOTE: TIntegerField
      FieldName = 'VEN_LOTE'
      Origin = 'PROVENCE.VEN_LOTE'
    end
    object QVenceVEN_CANTPENEMP: TFloatField
      FieldName = 'VEN_CANTPENEMP'
      Origin = 'PROVENCE.VEN_CANTPENEMP'
    end
    object QVenceVEN_CANTVENDIDAEMP: TFloatField
      FieldName = 'VEN_CANTVENDIDAEMP'
      Origin = 'PROVENCE.VEN_CANTVENDIDAEMP'
    end
    object QVencesup_codigo: TIntegerField
      FieldName = 'sup_codigo'
    end
    object QVencesup_nombre: TStringField
      FieldName = 'sup_nombre'
      Size = 60
    end
  end
  object dsVence: TDataSource
    DataSet = QVence
    Left = 48
    Top = 150
  end
  object QExist: TADOQuery
    Connection = DM.ADOSigma
    BeforeOpen = QExistBeforeOpen
    AfterInsert = QExistAfterInsert
    DataSource = dsProductos
    Parameters = <
      item
        Name = 'emp'
        Size = -1
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
      
        'a.alm_nombre, e.exi_cantidad, e.exi_fisico, e.exi_empaque, e.exi' +
        '_minimo,'
      'e.exi_maximo'
      'from'
      'almacen a, existencias e'
      'where'
      'a.emp_codigo = e.emp_codigo'
      'and a.alm_codigo = e.alm_codigo'
      'and e.emp_codigo = :emp'
      'and e.pro_codigo = :pro_codigo'
      'order by e.alm_codigo')
    Left = 104
    Top = 88
    object QExistALM_NOMBRE: TIBStringField
      FieldName = 'ALM_NOMBRE'
      Origin = 'ALMACEN.ALM_NOMBRE'
      Size = 60
    end
    object QExistEXI_CANTIDAD: TFloatField
      FieldName = 'EXI_CANTIDAD'
      Origin = 'EXISTENCIAS.EXI_CANTIDAD'
      DisplayFormat = '###,###.00'
    end
    object QExistEXI_FISICO: TFloatField
      FieldName = 'EXI_FISICO'
      Origin = 'EXISTENCIAS.EXI_FISICO'
      DisplayFormat = '###,###.00'
    end
    object QExistEXI_EMPAQUE: TFloatField
      FieldName = 'EXI_EMPAQUE'
      Origin = 'EXISTENCIAS.EXI_EMPAQUE'
      DisplayFormat = '###,###.00'
    end
    object QExistexi_minimo: TBCDField
      FieldName = 'exi_minimo'
      Precision = 15
      Size = 2
    end
    object QExistexi_maximo: TBCDField
      FieldName = 'exi_maximo'
      Precision = 15
      Size = 2
    end
  end
  object dsExist: TDataSource
    DataSet = QExist
    Left = 120
    Top = 86
  end
  object QListado: TADOQuery
    Connection = DM.ADOSigma
    DataSource = DM.dsParametros
    Parameters = <
      item
        Name = 'par_invempresa'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      
        'p.PRO_CODIGO, p.PRO_RORIGINAL, p.PRO_RFABRIC, p.PRO_NOMBRE, p.PR' +
        'O_PRECIO1,'
      
        'p.PRO_PRECIO2, p.PRO_PRECIO3, p.PRO_PRECIO4, p.PRO_EXISTENCIA, p' +
        '.PRO_UBICACION,'
      'p.PRO_ULTCOSTO, p.PRO_COSTO, p.PRO_COSTOEMPAQUE,'
      'p.PRO_EXISTEMPAQUE, F.FAM_NOMBRE,'
      'M.MAR_NOMBRE, D.DEP_NOMBRE,'
      'C.COL_NOMBRE, P.PRO_NUEVOUSADO, P.PRO_ITBIS,'
      'P.PRO_FOTO'
      'FROM'
      'PRODUCTOS P'
      'LEFT OUTER JOIN DEPARTAMENTOS D ON'
      '(D.DEP_CODIGO = P.DEP_CODIGO AND D.EMP_CODIGO = P.EMP_CODIGO)'
      'LEFT OUTER JOIN FAMILIAS F ON'
      '(F.FAM_CODIGO = P.FAM_CODIGO'
      'AND F.EMP_CODIGO = P.EMP_CODIGO)'
      'LEFT OUTER JOIN MARCAS M ON'
      '(M.MAR_CODIGO = P.MAR_CODIGO'
      'AND M.EMP_CODIGO = P.EMP_CODIGO)'
      'LEFT OUTER JOIN COLORES C ON'
      '(C.COL_CODIGO = P.COL_CODIGO)'
      'WHERE'
      'P.EMP_CODIGO = :par_invempresa'
      'and p.pro_status = '#39'ACT'#39)
    Left = 104
    Top = 118
    object QListadoPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'PRODUCTOS.PRO_CODIGO'
      Required = True
    end
    object QListadoPRO_RORIGINAL: TIBStringField
      FieldName = 'PRO_RORIGINAL'
      Origin = 'PRODUCTOS.PRO_RORIGINAL'
      Size = 50
    end
    object QListadoPRO_RFABRIC: TIBStringField
      FieldName = 'PRO_RFABRIC'
      Origin = 'PRODUCTOS.PRO_RFABRIC'
      Size = 60
    end
    object QListadoPRO_NOMBRE: TIBStringField
      FieldName = 'PRO_NOMBRE'
      Origin = 'PRODUCTOS.PRO_NOMBRE'
      Size = 60
    end
    object QListadoPRO_PRECIO1: TFloatField
      FieldName = 'PRO_PRECIO1'
      Origin = 'PRODUCTOS.PRO_PRECIO1'
      currency = True
    end
    object QListadoPRO_PRECIO2: TFloatField
      FieldName = 'PRO_PRECIO2'
      Origin = 'PRODUCTOS.PRO_PRECIO2'
      currency = True
    end
    object QListadoPRO_PRECIO3: TFloatField
      FieldName = 'PRO_PRECIO3'
      Origin = 'PRODUCTOS.PRO_PRECIO3'
      currency = True
    end
    object QListadoPRO_PRECIO4: TFloatField
      FieldName = 'PRO_PRECIO4'
      Origin = 'PRODUCTOS.PRO_PRECIO4'
      currency = True
    end
    object QListadoPRO_EXISTENCIA: TFloatField
      FieldName = 'PRO_EXISTENCIA'
      Origin = 'PRODUCTOS.PRO_EXISTENCIA'
    end
    object QListadoPRO_UBICACION: TIBStringField
      FieldName = 'PRO_UBICACION'
      Origin = 'PRODUCTOS.PRO_UBICACION'
      Size = 10
    end
    object QListadoPRO_ULTCOSTO: TFloatField
      FieldName = 'PRO_ULTCOSTO'
      Origin = 'PRODUCTOS.PRO_ULTCOSTO'
      currency = True
    end
    object QListadoPRO_COSTO: TFloatField
      FieldName = 'PRO_COSTO'
      Origin = 'PRODUCTOS.PRO_COSTO'
      currency = True
    end
    object QListadoPRO_COSTOEMPAQUE: TFloatField
      FieldName = 'PRO_COSTOEMPAQUE'
      Origin = 'PRODUCTOS.PRO_COSTOEMPAQUE'
    end
    object QListadoPRO_EXISTEMPAQUE: TFloatField
      FieldName = 'PRO_EXISTEMPAQUE'
      Origin = 'PRODUCTOS.PRO_EXISTEMPAQUE'
    end
    object QListadoFAM_NOMBRE: TIBStringField
      FieldName = 'FAM_NOMBRE'
      Origin = 'FAMILIAS.FAM_NOMBRE'
      Size = 60
    end
    object QListadoMAR_NOMBRE: TIBStringField
      FieldName = 'MAR_NOMBRE'
      Origin = 'MARCAS.MAR_NOMBRE'
      Size = 60
    end
    object QListadoDEP_NOMBRE: TIBStringField
      FieldName = 'DEP_NOMBRE'
      Origin = 'DEPARTAMENTOS.DEP_NOMBRE'
      Size = 60
    end
    object QListadoCOL_NOMBRE: TIBStringField
      FieldName = 'COL_NOMBRE'
      Origin = 'COLORES.COL_NOMBRE'
      Size = 60
    end
    object QListadoPRO_NUEVOUSADO: TIBStringField
      FieldName = 'PRO_NUEVOUSADO'
      Origin = 'PRODUCTOS.PRO_NUEVOUSADO'
      Size = 1
    end
    object QListadoPRO_ITBIS: TIBStringField
      FieldName = 'PRO_ITBIS'
      Origin = 'PRODUCTOS.PRO_ITBIS'
      Size = 1
    end
    object QListadoPRO_FOTO: TStringField
      FieldName = 'PRO_FOTO'
      Size = 200
    end
  end
  object dsListado: TDataSource
    DataSet = QListado
    Left = 120
    Top = 118
  end
  object QCompras: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsProductos
    Parameters = <
      item
        Name = 'invemp'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
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
        Name = 'pro_codigo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
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
      end>
    SQL.Strings = (
      'SELECT'
      'DISTINCT S.SUP_NOMBRE, F.FAC_NUMERO, F.FAC_FECHA, '
      
        'D.DET_COSTO, D.DET_CANTIDAD, isnull(d.det_oferta,0) as det_ofert' +
        'a,'
      'D.DET_MEDIDA'
      'FROM'
      'PROVFACTURAS F, PROVEEDORES S, DET_PROVFACTURAS D'
      'WHERE'
      'F.EMP_CODIGO = D.EMP_CODIGO'
      'AND F.SUP_CODIGO = D.SUP_CODIGO'
      'AND F.FAC_NUMERO = D.FAC_NUMERO'
      'AND F.SUP_CODIGO = S.SUP_CODIGO'
      'and f.emp_codigo = :invemp'
      'AND F.EMP_CODIGO = :emp'
      'AND D.PRO_CODIGO = :pro_codigo'
      
        'AND F.FAC_FECHA BETWEEN convert(datetime,:fecha1,105) AND conver' +
        't(datetime,:fecha2,105)'
      'ORDER BY'
      'F.FAC_FECHA DESC')
    Left = 104
    Top = 182
    object QComprasSUP_NOMBRE: TIBStringField
      FieldName = 'SUP_NOMBRE'
      Origin = 'PROVEEDORES.SUP_NOMBRE'
      Size = 60
    end
    object QComprasFAC_NUMERO: TIBStringField
      FieldName = 'FAC_NUMERO'
      Origin = 'PROVFACTURAS.FAC_NUMERO'
      Required = True
      Size = 15
    end
    object QComprasFAC_FECHA: TDateTimeField
      FieldName = 'FAC_FECHA'
      Origin = 'PROVFACTURAS.FAC_FECHA'
    end
    object QComprasDET_COSTO: TFloatField
      FieldName = 'DET_COSTO'
      Origin = 'DET_PROVFACTURAS.DET_COSTO'
      currency = True
    end
    object QComprasDET_CANTIDAD: TFloatField
      FieldName = 'DET_CANTIDAD'
      Origin = 'DET_PROVFACTURAS.DET_CANTIDAD'
    end
    object QComprasDET_MEDIDA: TIBStringField
      FieldName = 'DET_MEDIDA'
      Origin = 'DET_PROVFACTURAS.DET_MEDIDA'
      Size = 3
    end
    object QComprasdet_oferta: TBCDField
      FieldName = 'det_oferta'
      ReadOnly = True
      Precision = 15
      Size = 2
    end
  end
  object dsCompras: TDataSource
    DataSet = QCompras
    Left = 120
    Top = 182
  end
  object QProvee: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    AfterPost = QProveeAfterPost
    AfterDelete = QProveeAfterDelete
    OnNewRecord = QProveeNewRecord
    Parameters = <
      item
        Name = 'emp_Codigo'
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
      'select '
      'EMP_CODIGO, PRO_CODIGO, SUP_CODIGO, SUP_NOMBRE '
      'from '
      'PRODPROVEEDORES'
      'where '
      'emp_codigo = :emp_codigo'
      'and pro_codigo = :pro_codigo'
      'order by '
      'sup_codigo')
    Left = 48
    Top = 46
    object QProveeEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QProveePRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
    end
    object QProveeSUP_CODIGO: TIntegerField
      FieldName = 'SUP_CODIGO'
      DisplayFormat = '0000'
    end
    object QProveeSUP_NOMBRE: TIBStringField
      FieldName = 'SUP_NOMBRE'
      Size = 60
    end
  end
  object QCuentas: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    AfterPost = QCuentasAfterPost
    DataSource = dsProductos
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
        Name = 'PRO_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'CAT_CUENTA, EMP_CODIGO, PRO_CODIGO, TFA_CODIGO, '
      'TFA_NOMBRE'
      'FROM'
      'PRODCUENTAS'
      'WHERE'
      'EMP_CODIGO = :EMP_CODIGO'
      'AND PRO_CODIGO = :PRO_CODIGO'
      'ORDER BY'
      'TFA_CODIGO')
    Left = 184
    Top = 86
    object QCuentasCAT_CUENTA: TIBStringField
      FieldName = 'CAT_CUENTA'
      Origin = 'PRODCUENTAS.CAT_CUENTA'
      Size = 15
    end
    object QCuentasEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'PRODCUENTAS.EMP_CODIGO'
      Required = True
    end
    object QCuentasPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'PRODCUENTAS.PRO_CODIGO'
      Required = True
    end
    object QCuentasTFA_CODIGO: TIntegerField
      FieldName = 'TFA_CODIGO'
      Origin = 'PRODCUENTAS.TFA_CODIGO'
      Required = True
    end
    object QCuentasTFA_NOMBRE: TIBStringField
      FieldName = 'TFA_NOMBRE'
      Origin = 'PRODCUENTAS.TFA_NOMBRE'
      Size = 60
    end
  end
  object dsCuentas: TDataSource
    DataSet = QCuentas
    Left = 216
    Top = 86
  end
  object QEscalas: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsProductos
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
        Name = 'PRO_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'E.ALM_CODIGO, E.EMP_CODIGO, E.ESC_ESCALA, '
      'E.ESC_EXISTENCIA, E.ESC_SECUENCIA, E.PRO_CODIGO,'
      'A.ALM_NOMBRE'
      'FROM'
      'ESCALAS E, ALMACEN A'
      'WHERE'
      'E.EMP_CODIGO = A.EMP_CODIGO'
      'AND E.ALM_CODIGO = A.ALM_CODIGO'
      'AND E.EMP_CODIGO = :EMP_CODIGO'
      'AND E.PRO_CODIGO = :PRO_CODIGO'
      'ORDER BY '
      'E.ESC_SECUENCIA')
    Left = 184
    Top = 118
    object QEscalasALM_CODIGO: TIntegerField
      FieldName = 'ALM_CODIGO'
      Origin = 'ESCALAS.ALM_CODIGO'
    end
    object QEscalasEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'ESCALAS.EMP_CODIGO'
    end
    object QEscalasESC_ESCALA: TIBStringField
      FieldName = 'ESC_ESCALA'
      Origin = 'ESCALAS.ESC_ESCALA'
      Required = True
      Size = 5
    end
    object QEscalasESC_EXISTENCIA: TFloatField
      FieldName = 'ESC_EXISTENCIA'
      Origin = 'ESCALAS.ESC_EXISTENCIA'
    end
    object QEscalasESC_SECUENCIA: TIntegerField
      FieldName = 'ESC_SECUENCIA'
      Origin = 'ESCALAS.ESC_SECUENCIA'
    end
    object QEscalasPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'ESCALAS.PRO_CODIGO'
    end
    object QEscalasALM_NOMBRE: TIBStringField
      FieldName = 'ALM_NOMBRE'
      Origin = 'ALMACEN.ALM_NOMBRE'
      Size = 60
    end
  end
  object dsEscala: TDataSource
    DataSet = QEscalas
    Left = 216
    Top = 118
  end
  object QCompetencia: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QCompetenciaBeforePost
    AfterPost = QCompetenciaAfterPost
    OnNewRecord = QCompetenciaNewRecord
    DataSource = dsProductos
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
        Name = 'PRO_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'EMP_CODIGO, PRO_CODIGO, PRO_COMPETENCIA, '
      'PRO_PRECIOEMP, PRO_PRECIOUND, PRO_SECUENCIA'
      'FROM'
      'PROPRECIO_COMP'
      'WHERE'
      'EMP_CODIGO = :EMP_CODIGO'
      'AND PRO_CODIGO = :PRO_CODIGO'
      'ORDER BY'
      'PRO_SECUENCIA')
    Left = 184
    Top = 150
    object QCompetenciaEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'PROPRECIO_COMP.EMP_CODIGO'
      Required = True
    end
    object QCompetenciaPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'PROPRECIO_COMP.PRO_CODIGO'
      Required = True
    end
    object QCompetenciaPRO_PRECIOEMP: TFloatField
      FieldName = 'PRO_PRECIOEMP'
      Origin = 'PROPRECIO_COMP.PRO_PRECIOEMP'
      currency = True
    end
    object QCompetenciaPRO_PRECIOUND: TFloatField
      FieldName = 'PRO_PRECIOUND'
      Origin = 'PROPRECIO_COMP.PRO_PRECIOUND'
      currency = True
    end
    object QCompetenciaPRO_SECUENCIA: TIntegerField
      FieldName = 'PRO_SECUENCIA'
      Origin = 'PROPRECIO_COMP.PRO_SECUENCIA'
      Required = True
    end
    object QCompetenciaPRO_COMPETENCIA: TStringField
      FieldName = 'PRO_COMPETENCIA'
      Size = 60
    end
  end
  object dsCompetencia: TDataSource
    DataSet = QCompetencia
    Left = 216
    Top = 150
  end
  object QCombo: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsProductos
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
        Name = 'pro_Codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'P.PRO_NOMBRE, C.COM_CANTIDAD, C.COM_PRECIO,'
      'C.COM_PRODUCTO, C.COM_SECUENCIA, C.EMP_CODIGO, '
      'C.PRO_CODIGO, C.COM_MEDIDA, C.COM_COSTO'
      'FROM'
      'PRODUCTOS P, PRODCOMBO C'
      'WHERE'
      'P.EMP_CODIGO = C.EMP_CODIGO'
      'AND P.PRO_CODIGO = C.COM_PRODUCTO'
      'AND C.EMP_CODIGO = :emp_codigo'
      'AND C.PRO_CODIGO = :pro_Codigo'
      'ORDER BY'
      'C.COM_SECUENCIA')
    Left = 96
    Top = 294
    object QComboPRO_NOMBRE: TIBStringField
      FieldName = 'PRO_NOMBRE'
      Origin = 'PRODUCTOS.PRO_NOMBRE'
      Size = 60
    end
    object QComboCOM_CANTIDAD: TFloatField
      FieldName = 'COM_CANTIDAD'
      Origin = 'PRODCOMBO.COM_CANTIDAD'
    end
    object QComboCOM_PRECIO: TFloatField
      FieldName = 'COM_PRECIO'
      Origin = 'PRODCOMBO.COM_PRECIO'
      currency = True
    end
    object QComboCOM_PRODUCTO: TIntegerField
      FieldName = 'COM_PRODUCTO'
      Origin = 'PRODCOMBO.COM_PRODUCTO'
    end
    object QComboCOM_SECUENCIA: TIntegerField
      FieldName = 'COM_SECUENCIA'
      Origin = 'PRODCOMBO.COM_SECUENCIA'
      Required = True
    end
    object QComboEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'PRODCOMBO.EMP_CODIGO'
      Required = True
    end
    object QComboPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'PRODCOMBO.PRO_CODIGO'
      Required = True
    end
    object QComboCOM_MEDIDA: TIBStringField
      FieldName = 'COM_MEDIDA'
      Origin = 'PRODCOMBO.COM_MEDIDA'
      Size = 3
    end
    object QComboCOM_COSTO: TBCDField
      FieldName = 'COM_COSTO'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object dsCombo: TDataSource
    DataSet = QCombo
    Left = 120
    Top = 246
  end
  object QEquivalencia: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsProductos
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
        Name = 'pro_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select '
      'E.EMP_CODIGO, E.PRO_CODIGO, E.PRO_CODIGOEQUIVALENTE,'
      'E.EQ_SECUENCIA, P.PRO_NOMBRE'
      'from'
      'PRODEQUIVALENCIAS E, PRODUCTOS P'
      'where'
      'E.EMP_CODIGO = P.EMP_CODIGO'
      'AND E.PRO_CODIGOEQUIVALENTE = P.PRO_CODIGO'
      'AND E.emp_codigo = :emp_codigo'
      'and E.pro_codigo = :pro_codigo'
      'order by'
      'E.EQ_SECUENCIA')
    Left = 184
    Top = 246
    object QEquivalenciaEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'PRODEQUIVALENCIAS.EMP_CODIGO'
      Required = True
    end
    object QEquivalenciaPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'PRODEQUIVALENCIAS.PRO_CODIGO'
      Required = True
    end
    object QEquivalenciaPRO_CODIGOEQUIVALENTE: TIntegerField
      FieldName = 'PRO_CODIGOEQUIVALENTE'
      Origin = 'PRODEQUIVALENCIAS.PRO_CODIGOEQUIVALENTE'
      Required = True
    end
    object QEquivalenciaEQ_SECUENCIA: TIntegerField
      FieldName = 'EQ_SECUENCIA'
      Origin = 'PRODEQUIVALENCIAS.EQ_SECUENCIA'
    end
    object QEquivalenciaPRO_NOMBRE: TIBStringField
      FieldName = 'PRO_NOMBRE'
      Origin = 'PRODUCTOS.PRO_NOMBRE'
      Size = 60
    end
  end
  object dsEqui: TDataSource
    DataSet = QEquivalencia
    Left = 216
    Top = 246
  end
  object Query2: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 48
    Top = 246
  end
  object QEstadisticaVenta: TADOQuery
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
        Name = 'ano'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'pro'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select codmes, mes, sum(cantidad) as cantidad,'
      'sum(monto) as monto'
      'from pr_estadistica_prod_venta (:emp, :ano, :pro)'
      'group by codmes, mes'
      'order by 1')
    Left = 184
    Top = 184
    object QEstadisticaVentames: TStringField
      FieldName = 'mes'
      ReadOnly = True
      Size = 10
    end
    object QEstadisticaVentamonto: TBCDField
      FieldName = 'monto'
      ReadOnly = True
      currency = True
      Precision = 32
    end
    object QEstadisticaVentacodmes: TIntegerField
      FieldName = 'codmes'
    end
    object QEstadisticaVentacantidad: TBCDField
      FieldName = 'cantidad'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
  end
  object dsEstadisticaMes: TDataSource
    DataSet = QEstadisticaVenta
    Left = 216
    Top = 184
  end
  object dsEstCompras: TDataSource
    DataSet = QEstadisticaCompra
    Left = 216
    Top = 216
  end
  object QEstadisticaCompra: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <
      item
        Name = 'ano'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
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
        Name = 'pro'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      '  case month(f.fac_fecha)'
      '      when 1 then '#39'Enero'#39
      '      when 2 then '#39'Febrero'#39
      '      when 3 then '#39'Marzo'#39
      '      when 4 then '#39'Abril'#39
      '      when 5 then '#39'Mayo'#39
      '      when 6 then '#39'Junio'#39
      '      when 7 then '#39'Julio'#39
      '      when 8 then '#39'Agosto'#39
      '      when 9 then '#39'Septiembre'#39
      '      when 10 then '#39'Octubre'#39
      '      when 11 then '#39'Noviembre'#39
      '      when 12 then '#39'Diciembre'#39
      '  end as mes, sum(d.det_cantidad*d.det_costo) as monto,'
      '  sum(d.det_cantidad+isnull(d.det_oferta,0)) as cantidad'
      'from'
      '  det_provFacturas d, provfacturas f'
      'where'
      '  d.emp_codigo = f.emp_codigo'
      '  and d.fac_numero = f.fac_numero'
      '  and d.sup_codigo = f.sup_codigo'
      '  and f.fac_status <> '#39'ANU'#39
      '  and year(f.fac_fecha) = :ano'
      '  and f.emp_codigo = :emp'
      '  and d.pro_codigo = :pro'
      'group by'
      '  month(f.fac_fecha)')
    Left = 184
    Top = 216
    object StringField1: TStringField
      FieldName = 'mes'
      ReadOnly = True
      Size = 10
    end
    object BCDField1: TBCDField
      FieldName = 'monto'
      ReadOnly = True
      currency = True
      Precision = 32
    end
    object QEstadisticaCompracantidad: TBCDField
      FieldName = 'cantidad'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 24
    Top = 46
    object Abrir1: TMenuItem
      Caption = 'Insertar foto'
      OnClick = Abrir1Click
    end
    object Quitarfoto1: TMenuItem
      Caption = 'Quitar foto'
      OnClick = Quitarfoto1Click
    end
  end
  object OpenDLG: TOpenPictureDialog
    Left = 48
    Top = 278
  end
  object QModificaciones: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsProductos
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
        Name = 'pro_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'FECHA, '
      'PRO_PRECIO1_ANT, PRO_PRECIO1_ACT, USU_ACT,'
      'PRO_PRECIO2_ANT, PRO_PRECIO2_ACT, USU_ANT,'
      'PRO_PRECIO3_ANT, PRO_PRECIO3_ACT, '
      'PRO_PRECIO4_ANT, PRO_PRECIO4_ACT,'
      'PRO_COSTOUN_ANT, PRO_COSTOUN_ACT, '
      'PRO_COSTOEM_ANT, PRO_COSTOEM_ACT,'
      'modulo_actual, modulo_anterior'
      'from'
      'ProdCambio_Precios'
      'where'
      'emp_codigo = :emp_codigo'
      'and pro_codigo = :pro_codigo'
      'order by'
      'fecha')
    Left = 16
    Top = 230
    object QModificacionesFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object QModificacionesPRO_PRECIO1_ANT: TBCDField
      FieldName = 'PRO_PRECIO1_ANT'
      currency = True
      Precision = 15
      Size = 2
    end
    object QModificacionesPRO_PRECIO1_ACT: TBCDField
      FieldName = 'PRO_PRECIO1_ACT'
      currency = True
      Precision = 15
      Size = 2
    end
    object QModificacionesPRO_PRECIO2_ANT: TBCDField
      FieldName = 'PRO_PRECIO2_ANT'
      currency = True
      Precision = 15
      Size = 2
    end
    object QModificacionesPRO_PRECIO2_ACT: TBCDField
      FieldName = 'PRO_PRECIO2_ACT'
      currency = True
      Precision = 15
      Size = 2
    end
    object QModificacionesPRO_PRECIO3_ANT: TBCDField
      FieldName = 'PRO_PRECIO3_ANT'
      currency = True
      Precision = 15
      Size = 2
    end
    object QModificacionesPRO_PRECIO3_ACT: TBCDField
      FieldName = 'PRO_PRECIO3_ACT'
      currency = True
      Precision = 15
      Size = 2
    end
    object QModificacionesPRO_PRECIO4_ANT: TBCDField
      FieldName = 'PRO_PRECIO4_ANT'
      currency = True
      Precision = 15
      Size = 2
    end
    object QModificacionesPRO_PRECIO4_ACT: TBCDField
      FieldName = 'PRO_PRECIO4_ACT'
      currency = True
      Precision = 15
      Size = 2
    end
    object QModificacionesPRO_COSTOUN_ANT: TBCDField
      FieldName = 'PRO_COSTOUN_ANT'
      currency = True
      Precision = 15
      Size = 2
    end
    object QModificacionesPRO_COSTOUN_ACT: TBCDField
      FieldName = 'PRO_COSTOUN_ACT'
      currency = True
      Precision = 15
      Size = 2
    end
    object QModificacionesPRO_COSTOEM_ANT: TBCDField
      FieldName = 'PRO_COSTOEM_ANT'
      currency = True
      Precision = 15
      Size = 2
    end
    object QModificacionesPRO_COSTOEM_ACT: TBCDField
      FieldName = 'PRO_COSTOEM_ACT'
      currency = True
      Precision = 15
      Size = 2
    end
    object QModificacionesUSU_ACT: TStringField
      FieldName = 'USU_ACT'
    end
    object QModificacionesUSU_ANT: TStringField
      FieldName = 'USU_ANT'
    end
    object QModificacionesmodulo_actual: TStringField
      FieldName = 'modulo_actual'
      Size = 50
    end
    object QModificacionesmodulo_anterior: TStringField
      FieldName = 'modulo_anterior'
      Size = 50
    end
  end
  object dsMod: TDataSource
    DataSet = QModificaciones
    Left = 80
    Top = 302
  end
  object QOfertas: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QOfertasBeforePost
    AfterPost = QOfertasAfterPost
    AfterDelete = QOfertasAfterDelete
    OnNewRecord = QOfertasNewRecord
    DataSource = dsProductos
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
        Name = 'pro_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'emp_codigo, pro_codigo, secuencia, cantidad, precio, regalo,'
      'fecha_ini, fecha_fin'
      'from '
      'ProdOfertaPrecios'
      'where'
      'emp_codigo = :emp_codigo'
      'and pro_codigo = :pro_codigo'
      'order by'
      'secuencia')
    Left = 104
    Top = 150
    object QOfertasemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QOfertaspro_codigo: TIntegerField
      FieldName = 'pro_codigo'
    end
    object QOfertassecuencia: TIntegerField
      FieldName = 'secuencia'
    end
    object QOfertascantidad: TBCDField
      FieldName = 'cantidad'
      Precision = 15
      Size = 2
    end
    object QOfertasprecio: TBCDField
      FieldName = 'precio'
      currency = True
      Precision = 15
      Size = 2
    end
    object QOfertasregalo: TBCDField
      FieldName = 'regalo'
      Precision = 15
      Size = 2
    end
    object QOfertasfecha_ini: TDateTimeField
      FieldName = 'fecha_ini'
      EditMask = 'cc-cc-cccc'
    end
    object QOfertasfecha_fin: TDateTimeField
      FieldName = 'fecha_fin'
      EditMask = 'cc-cc-cccc'
    end
  end
  object dsOfertas: TDataSource
    DataSet = QOfertas
    Left = 120
    Top = 150
  end
  object QDescuentoTFA: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsProductos
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
        Name = 'pro_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      't.tfa_nombre, p.descuento, p.tfa_codigo'
      'from'
      'tiposfactura t, Prod_Descuentos_TipoFac p'
      'where'
      't.emp_codigo = :emp'
      'and t.tfa_codigo = p.tfa_codigo'
      'and t.emp_codigo = p.emp_codigo'
      'and p.pro_codigo = :pro_codigo'
      'order by'
      't.tfa_codigo')
    Left = 256
    Top = 86
    object QDescuentoTFAtfa_nombre: TStringField
      FieldName = 'tfa_nombre'
      Size = 60
    end
    object QDescuentoTFAdescuento: TBCDField
      FieldName = 'descuento'
      Precision = 15
      Size = 2
    end
    object QDescuentoTFAtfa_codigo: TIntegerField
      FieldName = 'tfa_codigo'
    end
  end
  object dsDescuentoTFA: TDataSource
    DataSet = QDescuentoTFA
    Left = 288
    Top = 86
  end
  object QSerie: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    DataSource = dsProductos
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
        Name = 'pro_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'ser_numero'
      'from'
      'productos_serie'
      'where'
      'emp_codigo = :emp_codigo'
      'and pro_codigo = :pro_codigo'
      'and not ser_numero in (select ser_numero'
      
        'from facSerie where facSerie.pro_codigo=productos_serie.pro_codi' +
        'go and facSerie.emp_codigo=productos_serie.emp_codigo )'
      ''
      'order by'
      'ser_numero')
    Left = 256
    Top = 118
    object QSerieser_numero: TStringField
      FieldName = 'ser_numero'
      Size = 30
    end
  end
  object dsSerie: TDataSource
    DataSet = QSerie
    Left = 288
    Top = 118
  end
  object QLiquidacion: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsProductos
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
        Name = 'pro_codigo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select '
      
        'l.liq_numero, l.liq_fecha, l.liq_agencia, l.liq_container, l.liq' +
        '_factura, l.liq_taza,'
      
        'u.usu_nombre, s.sup_nombre, l.liq_gastos, l.ent_numero, d.det_ca' +
        'ntidad,'
      
        'd.det_costo, d.det_costo_rd, d.det_peso_volumen, d.det_costounid' +
        'ad, d.det_medida'
      'from'
      'liquidacion l'
      'left outer join usuarios u on (l.usu_codigo = u.usu_codigo)'
      'left outer join proveedores s on (l.emp_codigo = s.emp_codigo'
      'and l.sup_codigo = s.sup_codigo), det_liquidacion d'
      'where'
      'l.emp_codigo = d.emp_codigo'
      'and l.liq_numero = d.liq_numero'
      'and l.emp_codigo = :emp_codigo'
      'and d.pro_codigo = :pro_codigo'
      'order by'
      'l.liq_fecha')
    Left = 256
    Top = 150
    object QLiquidacionliq_numero: TIntegerField
      FieldName = 'liq_numero'
    end
    object QLiquidacionliq_fecha: TDateTimeField
      FieldName = 'liq_fecha'
    end
    object QLiquidacionliq_agencia: TStringField
      FieldName = 'liq_agencia'
      Size = 60
    end
    object QLiquidacionliq_container: TStringField
      FieldName = 'liq_container'
      Size = 30
    end
    object QLiquidacionliq_factura: TStringField
      FieldName = 'liq_factura'
      Size = 30
    end
    object QLiquidacionliq_taza: TBCDField
      FieldName = 'liq_taza'
      Precision = 15
      Size = 2
    end
    object QLiquidacionusu_nombre: TStringField
      FieldName = 'usu_nombre'
      Size = 60
    end
    object QLiquidacionsup_nombre: TStringField
      FieldName = 'sup_nombre'
      Size = 60
    end
    object QLiquidacionliq_gastos: TBCDField
      FieldName = 'liq_gastos'
      Precision = 15
      Size = 2
    end
    object QLiquidacionent_numero: TIntegerField
      FieldName = 'ent_numero'
    end
    object QLiquidaciondet_cantidad: TBCDField
      FieldName = 'det_cantidad'
      Precision = 15
      Size = 2
    end
    object QLiquidaciondet_costo: TBCDField
      FieldName = 'det_costo'
      currency = True
      Precision = 15
      Size = 2
    end
    object QLiquidaciondet_costo_rd: TBCDField
      FieldName = 'det_costo_rd'
      currency = True
      Precision = 15
      Size = 2
    end
    object QLiquidaciondet_peso_volumen: TBCDField
      FieldName = 'det_peso_volumen'
      currency = True
      Precision = 15
      Size = 2
    end
    object QLiquidaciondet_costounidad: TBCDField
      FieldName = 'det_costounidad'
      currency = True
      Precision = 15
      Size = 2
    end
    object QLiquidaciondet_medida: TStringField
      FieldName = 'det_medida'
      Size = 3
    end
  end
  object dsLiquidacion: TDataSource
    DataSet = QLiquidacion
    Left = 288
    Top = 150
  end
  object QUnidades: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    DataSource = dsProductos
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
        Name = 'pro_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'p.emp_codigo, p.pro_codigo, p.UnidadID, p.Precio, p.Cantidad,'
      'p.Secuencia, p.Credito, p.Minimo'
      'from'
      'ProdUnidadMedida p'
      'where'
      'p.emp_codigo = :emp_codigo'
      'and p.pro_codigo = :pro_codigo'
      'order by'
      'p.Secuencia')
    Left = 256
    Top = 182
    object QUnidadesemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QUnidadespro_codigo: TIntegerField
      FieldName = 'pro_codigo'
    end
    object QUnidadesUnidadID: TStringField
      FieldName = 'UnidadID'
      Size = 1
    end
    object QUnidadesCantidad: TBCDField
      FieldName = 'Cantidad'
      Precision = 18
      Size = 2
    end
    object QUnidadesSecuencia: TIntegerField
      FieldName = 'Secuencia'
    end
    object QUnidadesNombre: TStringField
      FieldKind = fkLookup
      FieldName = 'Nombre'
      LookupDataSet = QMedidas
      LookupKeyFields = 'UnidadID'
      LookupResultField = 'Nombre'
      KeyFields = 'UnidadID'
      Lookup = True
    end
    object QUnidadesPrecio: TBCDField
      FieldName = 'Precio'
      currency = True
      Precision = 18
      Size = 2
    end
    object QUnidadesCredito: TBCDField
      FieldName = 'Credito'
      currency = True
      Precision = 18
      Size = 2
    end
    object QUnidadesMinimo: TBCDField
      FieldName = 'Minimo'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object dsUnidades: TDataSource
    DataSet = QUnidades
    Left = 288
    Top = 182
  end
  object QMedidas: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    DataSource = DM.dsParametros
    Parameters = <
      item
        Name = 'par_invempresa'
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
      'emp_codigo = :par_invempresa'
      'order by'
      '1')
    Left = 256
    Top = 214
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
    Left = 288
    Top = 214
  end
  object QVentas: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsProductos
    Parameters = <
      item
        Name = 'pro_codigo'
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
      end
      item
        Name = 'pro_codigo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'fec3'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'fec4'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select a.*'
      'from'
      '('
      'select'
      
        #39#39' as Cliente, 0 as Factura, getdate() as fecha, 0 as Cantidad, ' +
        '0 as Precio'
      'union all'
      'select'
      
        'f.fac_nombre, f.fac_numero, f.fac_fecha, d.det_cantidad*isnull(d' +
        '.det_cant_unidad_medida,1), d.det_precio'
      'from'
      'facturas f, det_factura d'
      'where'
      'f.emp_codigo = d.emp_codigo'
      'and f.suc_codigo = d.suc_codigo'
      'and f.fac_forma = d.fac_forma'
      'and f.tfa_codigo = d.tfa_codigo'
      'and f.fac_numero = d.fac_numero'
      'and d.pro_codigo = :pro_codigo'
      'and f.fac_fecha between :fec1 and :fec2'
      'union all'
      'select'
      'm.nombre, m.ticket, m.fecha, t.cantidad, t.precio'
      'from'
      'montos_ticket m, ticket t'
      'where'
      'm.fecha = t.fecha'
      'and m.usu_codigo = t.usu_codigo'
      'and m.caja = t.caja'
      'and m.ticket = t.ticket'
      'and t.producto = :pro_codigo'
      'and m.fecha between :fec3 and :fec4) a'
      'where'
      'a.factura > 0'
      'order by 3'
      '')
    Left = 256
    Top = 246
    object QVentasCliente: TStringField
      FieldName = 'Cliente'
      ReadOnly = True
      Size = 60
    end
    object QVentasFactura: TIntegerField
      FieldName = 'Factura'
      ReadOnly = True
    end
    object QVentasfecha: TDateTimeField
      FieldName = 'fecha'
      ReadOnly = True
    end
    object QVentasCantidad: TBCDField
      FieldName = 'Cantidad'
      ReadOnly = True
      Precision = 32
    end
    object QVentasPrecio: TBCDField
      FieldName = 'Precio'
      currency = True
      Precision = 17
    end
  end
  object dsVentas: TDataSource
    DataSet = QVentas
    Left = 288
    Top = 246
  end
  object spUptProducto: TADOStoredProc
    Connection = DM.ADOSigma
    ProcedureName = 'PR_UPD_EXISTENCIAS;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@EMP'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ALM'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@PROD'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 615
    Top = 320
  end
end
