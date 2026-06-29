object frmResumenVentaProducto: TfrmResumenVentaProducto
  Left = 616
  Top = 324
  ActiveControl = spAno
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Resumen de venta por producto'
  ClientHeight = 411
  ClientWidth = 693
  Color = clBtnFace
  DefaultMonitor = dmMainForm
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 693
    Height = 81
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label3: TLabel
      Left = 8
      Top = 8
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
    object Label1: TLabel
      Left = 8
      Top = 32
      Width = 50
      Height = 13
      Caption = 'Proveedor'
    end
    object btProveedor: TSpeedButton
      Left = 117
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
    object btFamilia: TSpeedButton
      Left = 117
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
      OnClick = btFamiliaClick
    end
    object Label5: TLabel
      Left = 8
      Top = 56
      Width = 32
      Height = 13
      Caption = 'Familia'
    end
    object btDepto: TSpeedButton
      Left = 461
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
      OnClick = btDeptoClick
    end
    object Label27: TLabel
      Left = 352
      Top = 32
      Width = 69
      Height = 13
      Caption = 'Departamento'
    end
    object btgerente: TSpeedButton
      Left = 461
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
    object Label15: TLabel
      Left = 352
      Top = 56
      Width = 39
      Height = 13
      Caption = 'Gerente'
    end
    object Label16: TLabel
      Left = 184
      Top = 8
      Width = 45
      Height = 13
      Caption = 'Registros'
    end
    object spAno: TSpinEdit
      Left = 80
      Top = 8
      Width = 49
      Height = 22
      TabStop = False
      EditorEnabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxValue = 3000
      MinValue = 1900
      ParentFont = False
      TabOrder = 0
      Value = 1900
    end
    object edProveedor: TEdit
      Left = 80
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
      OnChange = edProveedorChange
      OnKeyDown = edProveedorKeyDown
    end
    object tProveedor: TEdit
      Left = 144
      Top = 32
      Width = 201
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
      TabOrder = 2
    end
    object tFamilia: TEdit
      Left = 144
      Top = 56
      Width = 201
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
    object edFamilia: TEdit
      Left = 80
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
      TabOrder = 4
      OnChange = edFamiliaChange
      OnKeyDown = edFamiliaKeyDown
    end
    object tDepto: TEdit
      Left = 488
      Top = 32
      Width = 201
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
    object edDepto: TEdit
      Left = 424
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
      TabOrder = 6
      OnChange = edDeptoChange
      OnKeyDown = edDeptoKeyDown
    end
    object tgerente: TEdit
      Left = 488
      Top = 56
      Width = 201
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
    object edGerente: TEdit
      Left = 424
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
      TabOrder = 8
      OnChange = edGerenteChange
      OnKeyDown = edGerenteKeyDown
    end
    object CheckBox1: TCheckBox
      Left = 352
      Top = 8
      Width = 65
      Height = 17
      Caption = 'Per'#237'odo'
      TabOrder = 9
    end
    object Fecha1: TDateTimePicker
      Left = 424
      Top = 8
      Width = 81
      Height = 21
      Date = 37626.000000000000000000
      Time = 37626.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object Fecha2: TDateTimePicker
      Left = 504
      Top = 8
      Width = 81
      Height = 21
      Date = 37626.000000000000000000
      Time = 37626.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object cbtipo: TComboBox
      Left = 232
      Top = 8
      Width = 113
      Height = 21
      BevelKind = bkSoft
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 13
      ItemIndex = 0
      ParentFont = False
      TabOrder = 12
      TabStop = False
      Text = 'Todos'
      Items.Strings = (
        'Todos'
        'Tickets'
        'Facturas de DASHA')
    end
  end
  object sgreporte: TStringGrid
    Left = 0
    Top = 81
    Width = 693
    Height = 289
    Align = alClient
    ColCount = 15
    DefaultColWidth = 60
    DefaultRowHeight = 16
    FixedCols = 0
    RowCount = 2
    GridLineWidth = 2
    Options = [goFixedVertLine, goVertLine]
    TabOrder = 1
    OnDblClick = sgreporteDblClick
    OnDrawCell = sgreporteDrawCell
    ColWidths = (
      105
      296
      60
      60
      60
      60
      60
      60
      60
      60
      60
      60
      60
      60
      75)
  end
  object lbcolor: TListBox
    Left = 104
    Top = 232
    Width = 121
    Height = 97
    ItemHeight = 13
    TabOrder = 2
    Visible = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 370
    Width = 693
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 3
    DesignSize = (
      693
      41)
    object btprocesar: TBitBtn
      Left = 432
      Top = 8
      Width = 81
      Height = 25
      Anchors = [akTop, akRight]
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
    object btexportar: TBitBtn
      Left = 520
      Top = 8
      Width = 81
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Exportar'
      TabOrder = 1
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
    object btClose: TBitBtn
      Left = 608
      Top = 8
      Width = 73
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
  object QReporte: TADOStoredProc
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandTimeout = 0
    DataSource = DM.dsEmpresas
    ProcedureName = 'pr_venta_producto_anual;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@emp'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ano'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@tipo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@periodo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@fec1'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@fec2'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@fam'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ger'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@dep'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@sup'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@prod'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 112
    Top = 160
    object QReporteprod: TIntegerField
      FieldName = 'prod'
    end
    object QReportenombre: TStringField
      FieldName = 'nombre'
      Size = 255
    end
    object QReporteene: TBCDField
      FieldName = 'ene'
      currency = True
      Precision = 19
    end
    object QReportefeb: TBCDField
      FieldName = 'feb'
      currency = True
      Precision = 19
    end
    object QReportemar: TBCDField
      FieldName = 'mar'
      currency = True
      Precision = 19
    end
    object QReporteabr: TBCDField
      FieldName = 'abr'
      currency = True
      Precision = 19
    end
    object QReportemay: TBCDField
      FieldName = 'may'
      currency = True
      Precision = 19
    end
    object QReportejun: TBCDField
      FieldName = 'jun'
      currency = True
      Precision = 19
    end
    object QReportejul: TBCDField
      FieldName = 'jul'
      currency = True
      Precision = 19
    end
    object QReporteago: TBCDField
      FieldName = 'ago'
      currency = True
      Precision = 19
    end
    object QReportesep: TBCDField
      FieldName = 'sep'
      currency = True
      Precision = 19
    end
    object QReporteoct: TBCDField
      FieldName = 'oct'
      currency = True
      Precision = 19
    end
    object QReportenov: TBCDField
      FieldName = 'nov'
      currency = True
      Precision = 19
    end
    object QReportedic: TBCDField
      FieldName = 'dic'
      currency = True
      Precision = 19
    end
    object QReporteref: TStringField
      FieldName = 'ref'
      Size = 50
    end
    object QReportetot: TBCDField
      FieldName = 'tot'
      ReadOnly = True
      Precision = 19
    end
  end
  object dsReporte: TDataSource
    DataSet = QReporte
    Left = 144
    Top = 160
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 264
    Top = 160
  end
  object ExportXLS: TQExportXLS
    ExportSource = esStringGrid
    DataSet = QReporte
    StringGrid = sgreporte
    About = '(About EMS QuickExport)'
    _Version = '2.50'
    ShowFile = True
    Captions.Strings = (
      'Codigo'
      'Producto'
      'Ene'
      'Feb'
      'Mar'
      'Abr'
      'May'
      'Jun'
      'Jul'
      'Ago'
      'Sep'
      'Oct'
      'Nov'
      'Dic'
      'Total')
    Formats.DateTimeFormat = 'M/d/yyyy h:mm AMPM'
    Formats.IntegerFormat = '#,###,##0'
    Formats.CurrencyFormat = '00.00$'
    Formats.FloatFormat = '#,###,##0.00'
    Formats.DateFormat = 'M/d/yyyy'
    Formats.TimeFormat = 'h:mm AMPM'
    Formats.BooleanTrue = 'true'
    Formats.BooleanFalse = 'false'
    Formats.NullString = 'null'
    Options.PageFooter = 'Page &P of &N'
    Options.SheetTitle = 'Sheet 1'
    Options.CaptionsFormat.Font.Style = [xfsBold]
    FieldFormats = <>
    StripStyles = <>
    Sheets = <
      item
        Title = 'Sheet 1'
        Options.PageFooter = 'Page &P of &N'
        Options.SheetTitle = 'Sheet 1'
        Options.CaptionsFormat.Font.Style = [xfsBold]
        FieldFormats = <>
        StripStyles = <>
        ExportSource = esStringGrid
        DataSet = QReporte
        StringGrid = sgreporte
        Header.Strings = (
          '')
        Formats.DateTimeFormat = 'M/d/yyyy h:mm AMPM'
        Formats.IntegerFormat = '#,###,##0'
        Formats.CurrencyFormat = '00.00$'
        Formats.FloatFormat = '#,###,##0.00'
        Formats.DateFormat = 'M/d/yyyy'
        Formats.TimeFormat = 'h:mm AMPM'
        Formats.BooleanTrue = 'true'
        Formats.BooleanFalse = 'false'
        Formats.NullString = 'null'
        OnlyVisibleFields = False
        CaptionRow = 0
      end>
    Left = 184
    Top = 152
  end
end
