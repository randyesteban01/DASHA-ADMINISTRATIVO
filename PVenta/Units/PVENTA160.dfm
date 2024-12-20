object frmConsProductos: TfrmConsProductos
  Left = 453
  Top = 222
  ActiveControl = cxGrid1
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta general de productos'
  ClientHeight = 414
  ClientWidth = 691
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
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 129
    Width = 691
    Height = 245
    Align = alClient
    TabOrder = 3
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataModeController.SmartRefresh = True
      DataController.DataSource = dsListado
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.InvertSelect = False
      object cxGrid1DBTableView1PRO_CODIGO: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'PRO_CODIGO'
        HeaderAlignmentHorz = taCenter
        Options.Grouping = False
        Width = 70
      end
      object cxGrid1DBTableView1PRO_RORIGINAL: TcxGridDBColumn
        Caption = 'Ref. Original'
        DataBinding.FieldName = 'PRO_RORIGINAL'
        HeaderAlignmentHorz = taCenter
        Options.Grouping = False
        Width = 105
      end
      object cxGrid1DBTableView1PRO_RFABRIC: TcxGridDBColumn
        Caption = 'Ref. Fabricante'
        DataBinding.FieldName = 'PRO_RFABRIC'
        HeaderAlignmentHorz = taCenter
        Options.Grouping = False
        Width = 115
      end
      object cxGrid1DBTableView1PRO_NOMBRE: TcxGridDBColumn
        Caption = 'Nombre del producto'
        DataBinding.FieldName = 'PRO_NOMBRE'
        Options.Grouping = False
        Width = 280
      end
      object cxGrid1DBTableView1PRO_PRECIO1: TcxGridDBColumn
        Caption = 'Precio 1'
        DataBinding.FieldName = 'PRO_PRECIO1'
        HeaderAlignmentHorz = taCenter
        Options.Grouping = False
        Width = 68
      end
      object cxGrid1DBTableView1PRO_PRECIO2: TcxGridDBColumn
        Caption = 'Precio 2'
        DataBinding.FieldName = 'PRO_PRECIO2'
        HeaderAlignmentHorz = taCenter
        Options.Grouping = False
        Width = 69
      end
      object cxGrid1DBTableView1PRO_PRECIO3: TcxGridDBColumn
        Caption = 'Precio 3'
        DataBinding.FieldName = 'PRO_PRECIO3'
        HeaderAlignmentHorz = taCenter
        Options.Grouping = False
        Width = 69
      end
      object cxGrid1DBTableView1PRO_PRECIO4: TcxGridDBColumn
        Caption = 'Precio 4'
        DataBinding.FieldName = 'PRO_PRECIO4'
        HeaderAlignmentHorz = taCenter
        Options.Grouping = False
        Width = 70
      end
      object cxGrid1DBTableView1PRO_EXISTENCIA: TcxGridDBColumn
        Caption = 'Exist. Und'
        DataBinding.FieldName = 'PRO_EXISTENCIA'
        HeaderAlignmentHorz = taCenter
        Options.Grouping = False
        Width = 76
      end
      object cxGrid1DBTableView1PRO_EXISTEMPAQUE: TcxGridDBColumn
        Caption = 'Exist. Emp'
        DataBinding.FieldName = 'PRO_EXISTEMPAQUE'
        HeaderAlignmentHorz = taCenter
        Options.Grouping = False
        Width = 77
      end
      object cxGrid1DBTableView1PRO_COSTO: TcxGridDBColumn
        Caption = 'Costo Und'
        DataBinding.FieldName = 'PRO_COSTO'
        HeaderAlignmentHorz = taCenter
        Options.Grouping = False
        Width = 79
      end
      object cxGrid1DBTableView1PRO_COSTOEMPAQUE: TcxGridDBColumn
        Caption = 'Costo Emp'
        DataBinding.FieldName = 'PRO_COSTOEMPAQUE'
        HeaderAlignmentHorz = taCenter
        Options.Grouping = False
        Width = 75
      end
      object cxGrid1DBTableView1PRO_UNIDAD_MEDIDA: TcxGridDBColumn
        Caption = 'Medida'
        DataBinding.FieldName = 'PRO_UNIDAD_MEDIDA'
        HeaderAlignmentHorz = taCenter
        Width = 63
      end
      object cxGrid1DBTableView1PRO_VOLUMEN: TcxGridDBColumn
        Caption = 'Volumen'
        DataBinding.FieldName = 'PRO_VOLUMEN'
        HeaderAlignmentHorz = taCenter
        Width = 66
      end
      object cxGrid1DBTableView1PRO_MINIMO_VENTA: TcxGridDBColumn
        Caption = 'M'#237'nimo Venta'
        DataBinding.FieldName = 'PRO_MINIMO_VENTA'
        HeaderAlignmentHorz = taCenter
        Options.Grouping = False
        Width = 91
      end
      object cxGrid1DBTableView1PRO_ITBIS: TcxGridDBColumn
        Caption = 'Itbis'
        DataBinding.FieldName = 'pro_montoitbis'
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1SUP_NOMBRE: TcxGridDBColumn
        Caption = 'Proveedor'
        DataBinding.FieldName = 'SUP_NOMBRE'
        Width = 220
      end
      object cxGrid1DBTableView1PRO_UBICACION: TcxGridDBColumn
        Caption = 'Ubicaci'#243'n'
        DataBinding.FieldName = 'PRO_UBICACION'
        HeaderAlignmentHorz = taCenter
        Width = 71
      end
      object cxGrid1DBTableView1FAM_NOMBRE: TcxGridDBColumn
        Caption = 'Familia'
        DataBinding.FieldName = 'FAM_NOMBRE'
        Width = 188
      end
      object cxGrid1DBTableView1MAR_NOMBRE: TcxGridDBColumn
        Caption = 'Marca'
        DataBinding.FieldName = 'MAR_NOMBRE'
        Width = 186
      end
      object cxGrid1DBTableView1DEP_NOMBRE: TcxGridDBColumn
        Caption = 'Departamento'
        DataBinding.FieldName = 'DEP_NOMBRE'
        Width = 166
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = 'Gerente'
        DataBinding.FieldName = 'ger_nombre'
        Width = 202
      end
      object cxGrid1DBTableView1COL_NOMBRE: TcxGridDBColumn
        Caption = 'Color'
        DataBinding.FieldName = 'COL_NOMBRE'
        Width = 174
      end
      object cxGrid1DBTableView1PRO_STATUS: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'PRO_STATUS'
        HeaderAlignmentHorz = taCenter
        Width = 54
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 374
    Width = 691
    Height = 40
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      691
      40)
    object lbCantidad: TLabel
      Left = 8
      Top = 13
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
    object btRefresh: TBitBtn
      Left = 368
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Refrescar >>'
      TabOrder = 0
      OnClick = btRefreshClick
    end
    object btClose: TBitBtn
      Left = 608
      Top = 8
      Width = 75
      Height = 25
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
      Left = 528
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Imprimir'
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
      Left = 448
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Exportar'
      TabOrder = 3
      OnClick = BitBtn1Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFE2C0A9
        CB8D66BF703FBB6A36BB6A36BB6A36BB6936BB6935BA6934BA6934BA6834BC6D
        3AC98A62E3C2ADFFFFFFFFFFFFC47C4DF8F2EBF7ECDFF6EBDEF6EADEF6EADCF6
        EADCFAF3EBFAF3EBFAF2EAFCF7F3FCF8F4FEFEFDC2794CFFFFFFFFFFFFC1763F
        F5EBDFFCE4D1FCE4D1FCE4D1FCE4D1FCE4D1FCE4D1FCE4D1FCE4D1FCE4D1FCE4
        D1FDFBF8BB6A36FFFFFFFFFFFFC27B41F7EDE3FCE4D1FCE4D1FCE4D1FCE4D1FC
        E4D1FCE4D1FCE4D1FCE4D1FCE4D1FCE4D1FBF7F4BC6B36FFFFFFFFFFFFC57F45
        F7F0E6FCE4D1FCE4D1E5D9C1679D6F5695645896656B9F72FCE4D1FCE4D1FCE4
        D1FCF9F5C0733BFFFFFF318348197432187432187332438951609A6ABAD6C277
        BA8360AA69569563FCE2CCFBE0C9FBE1C8FDFAF7C27940FFFFFFA3C7AD1A7432
        5A9F6D48955B468F5AC7DDCD5CB57066AD74438C571A7432FCE2CDFBE1CBFBE1
        C9FBF7F2C67F44FFFFFFFFFFFF8180421E773647905CC7DDCD69BF8370B58143
        8D58B0C0A0FBE4D0FBE3CCFADFC7FADFC5FAF2EAC78347FFFFFFFFFFFFC38B4E
        609D70C4DCCC75C99672BB86428C5754925FF5E0CCFBE1CCFAE0C7F9DDC2F8DC
        C1FAF4EDC7854AFFFFFFFAFCFA708B54BFD9C881D3A26CC0895394624A955F50
        9663669967F4DCC2F8DCC1F6DABCF6D8BAFAF4EFC7864BFFFFFF80B18EB4D3BD
        9BDAB473C89453946249925E5CA37358A06D4F9663619661E9D1B3F3D4B4F1D2
        B2F8F4F0C5854BFFFFFF5A9B6D558B56529565539462A0B8948CAD822D7E412D
        7E403983473581448FB38FF7F2ECFBF7F3F5EFE9C27F47FFFFFFFFFFFFC78C51
        F9F5F1FCE3CDFBE3CEFBE3CDFBE2CBF9E0C8F8DCC1F5D6B9FDFBF8FCE6CDFAE5
        C9E2B583D5A783FFFFFFFFFFFFC99159FAF6F2FAE0C7FBE1C9FBE2C9FBE0C8F9
        DFC4F8DBC0F4D6B7FFFBF8F6D8B3E1AF7CDC9569FDFBFAFFFFFFFFFFFFD1A173
        F8F3EDF8F4EEF8F4EDF8F3EDF8F3EDF8F3EDF8F2ECF7F2ECF2E6D7E2B17CDC97
        6AFDFBFAFFFFFFFFFFFFFFFFFFE7CEB8D7A97CCC935ACA8F54CA8F54CA8F54CA
        9054CB8F54C98E54CE9C69DDB18FFDFBFAFFFFFFFFFFFFFFFFFF}
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 691
    Height = 129
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Label2: TLabel
      Left = 8
      Top = 8
      Width = 32
      Height = 13
      Caption = 'Familia'
    end
    object SpeedButton2: TSpeedButton
      Left = 104
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
    object Label10: TLabel
      Left = 8
      Top = 32
      Width = 25
      Height = 13
      Caption = 'Color'
    end
    object btCondi: TSpeedButton
      Left = 104
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
      OnClick = btCondiClick
    end
    object Label3: TLabel
      Left = 328
      Top = 32
      Width = 29
      Height = 13
      Caption = 'Marca'
    end
    object SpeedButton1: TSpeedButton
      Left = 448
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
      OnClick = SpeedButton1Click
    end
    object Label11: TLabel
      Left = 328
      Top = 8
      Width = 69
      Height = 13
      Caption = 'Departamento'
    end
    object SpeedButton4: TSpeedButton
      Left = 448
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
      OnClick = SpeedButton4Click
    end
    object Label4: TLabel
      Left = 8
      Top = 80
      Width = 32
      Height = 13
      Caption = 'Buscar'
    end
    object Label1: TLabel
      Left = 8
      Top = 104
      Width = 44
      Height = 13
      Caption = 'Opciones'
    end
    object Label5: TLabel
      Left = 8
      Top = 56
      Width = 50
      Height = 13
      Caption = 'Proveedor'
    end
    object btProveedor: TSpeedButton
      Left = 104
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
      OnClick = btProveedorClick
    end
    object Label7: TLabel
      Left = 328
      Top = 56
      Width = 39
      Height = 13
      Caption = 'Gerente'
    end
    object btgerente: TSpeedButton
      Left = 448
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
      OnClick = btgerenteClick
    end
    object btgondolero: TSpeedButton
      Left = 448
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
      OnClick = btgondoleroClick
    end
    object Label17: TLabel
      Left = 328
      Top = 80
      Width = 29
      Height = 13
      Caption = 'Pasillo'
    end
    object btitbis: TSpeedButton
      Left = 448
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
      OnClick = btitbisClick
    end
    object Label6: TLabel
      Left = 328
      Top = 104
      Width = 57
      Height = 13
      Caption = 'Tipo de itbis'
    end
    object edFamilia: TEdit
      Left = 64
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
      TabOrder = 0
      OnChange = edFamiliaChange
      OnKeyDown = edFamiliaKeyDown
    end
    object tfamilia: TEdit
      Left = 128
      Top = 8
      Width = 188
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
      TabOrder = 9
    end
    object tcolor: TEdit
      Left = 128
      Top = 32
      Width = 188
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
      TabOrder = 10
    end
    object edColor: TEdit
      Left = 64
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
      TabOrder = 1
      OnChange = edColorChange
      OnKeyDown = edColorKeyDown
    end
    object tmarca: TEdit
      Left = 472
      Top = 32
      Width = 212
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
    object edMarca: TEdit
      Left = 408
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
      TabOrder = 6
      OnChange = edMarcaChange
      OnKeyDown = edMarcaKeyDown
    end
    object tdepto: TEdit
      Left = 472
      Top = 8
      Width = 212
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
    object edDepto: TEdit
      Left = 408
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
      TabOrder = 5
      OnChange = edDeptoChange
      OnKeyDown = edDeptoKeyDown
    end
    object edBuscar: TEdit
      Left = 64
      Top = 80
      Width = 252
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
      OnKeyPress = edBuscarKeyPress
    end
    object ckopciones: TcxCheckComboBox
      Left = 64
      Top = 104
      Properties.EmptySelectionText = 'Ninguna selecci'#243'n'
      Properties.Items = <
        item
          Description = 'Sin existencia'
        end
        item
          Description = 'Sin costo'
        end
        item
          Description = 'Sin precio'
        end
        item
          Description = 'Con combo'
        end
        item
          Description = 'Controlados'
        end
        item
          Description = 'Con vencimiento'
        end
        item
          Description = 'Servicios'
        end
        item
          Description = 'Se detalla'
        end
        item
          Description = 'Con comentario'
        end
        item
          Description = 'Producto patrocinador'
        end
        item
          Description = 'Activos'
        end
        item
          Description = 'Inactivos'
        end
        item
          Description = 'Con itbis'
        end
        item
          Description = 'Sin itbis'
        end
        item
          Description = 'Nuevos'
        end
        item
          Description = 'Usados'
        end>
      Properties.OnChange = ckopcionesPropertiesChange
      TabOrder = 4
      Width = 252
    end
    object edProveedor: TEdit
      Left = 64
      Top = 56
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
      TabOrder = 2
      OnChange = edProveedorChange
      OnKeyDown = edProveedorKeyDown
    end
    object tProveedor: TEdit
      Left = 128
      Top = 56
      Width = 188
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
    object edgerente: TEdit
      Left = 408
      Top = 56
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
      TabOrder = 7
      OnChange = edgerenteChange
      OnKeyDown = edgerenteKeyDown
    end
    object tgerente: TEdit
      Left = 472
      Top = 56
      Width = 212
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
    object tgondolero: TEdit
      Left = 472
      Top = 80
      Width = 212
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
    object edGondolero: TEdit
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
      TabOrder = 8
      OnChange = edGondoleroChange
      OnKeyDown = edGondoleroKeyDown
    end
    object titbis: TEdit
      Left = 471
      Top = 104
      Width = 212
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
    object editbis: TEdit
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
      TabOrder = 17
      OnChange = editbisChange
      OnKeyDown = editbisKeyDown
    end
  end
  object Memo1: TMemo
    Left = 8
    Top = 192
    Width = 441
    Height = 49
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
    Visible = False
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
      'P.PRO_VOLUMEN, P.PRO_UNIDAD_MEDIDA,'
      'P.PRO_MINIMO_VENTA, P.PRO_STATUS,'
      'p.PRO_COMENTARIO, p.emp_codigo, g.ger_nombre, p.pro_montoitbis'
      ''
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
      'LEFT OUTER JOIN GERENTES G ON'
      '(G.GER_CODIGO = P.GER_CODIGO'
      'AND G.EMP_CODIGO = P.EMP_CODIGO)'
      'WHERE'
      'P.EMP_CODIGO = :par_invempresa')
    Left = 240
    Top = 208
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
    object QListadoSUP_NOMBRE: TStringField
      FieldName = 'SUP_NOMBRE'
      Size = 60
    end
    object QListadoPRO_VOLUMEN: TBCDField
      FieldName = 'PRO_VOLUMEN'
      Precision = 18
      Size = 6
    end
    object QListadoPRO_UNIDAD_MEDIDA: TStringField
      FieldName = 'PRO_UNIDAD_MEDIDA'
    end
    object QListadoPRO_MINIMO_VENTA: TBCDField
      FieldName = 'PRO_MINIMO_VENTA'
      Precision = 15
      Size = 2
    end
    object QListadoPRO_STATUS: TStringField
      FieldName = 'PRO_STATUS'
      Size = 3
    end
    object QListadoPRO_COMENTARIO: TMemoField
      FieldName = 'PRO_COMENTARIO'
      BlobType = ftMemo
    end
    object QListadoemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QListadoger_nombre: TStringField
      FieldName = 'ger_nombre'
      Size = 50
    end
    object QListadopro_montoitbis: TFloatField
      FieldName = 'pro_montoitbis'
      DisplayFormat = '#,0.000000'
    end
  end
  object dsListado: TDataSource
    DataSet = QListado
    Left = 272
    Top = 208
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 240
    Top = 240
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Excel|*.xls|Xml|*.Xm;'
    Left = 241
    Top = 272
  end
end
