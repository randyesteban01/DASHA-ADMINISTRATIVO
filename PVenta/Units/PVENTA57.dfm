object frmConsFacturasProd: TfrmConsFacturasProd
  Left = 492
  Top = 244
  ActiveControl = edProd
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta de ventas por producto'
  ClientHeight = 417
  ClientWidth = 694
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 694
    Height = 137
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label6: TLabel
      Left = 8
      Top = 8
      Width = 30
      Height = 13
      Caption = 'Fecha'
    end
    object Label1: TLabel
      Left = 8
      Top = 56
      Width = 43
      Height = 13
      Caption = 'Producto'
    end
    object SpeedButton1: TSpeedButton
      Left = 126
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
    object Label8: TLabel
      Left = 8
      Top = 32
      Width = 41
      Height = 13
      Caption = 'Sucursal'
    end
    object Label4: TLabel
      Left = 8
      Top = 80
      Width = 44
      Height = 13
      Caption = 'Provincia'
    end
    object SpeedButton2: TSpeedButton
      Left = 126
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
    object Label12: TLabel
      Left = 8
      Top = 106
      Width = 46
      Height = 13
      Caption = 'Vendedor'
    end
    object btVendedor: TSpeedButton
      Left = 126
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
      OnClick = btVendedorClick
    end
    object Fecha1: TDateTimePicker
      Left = 64
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
      Left = 144
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
    object edProd: TEdit
      Left = 64
      Top = 56
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
      TabOrder = 3
      OnKeyDown = edProdKeyDown
    end
    object tProd: TEdit
      Left = 152
      Top = 56
      Width = 537
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
    object cbGrupo: TRadioGroup
      Left = 282
      Top = 1
      Width = 183
      Height = 31
      Caption = 'Grupo'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'A'
        'B'
        'Todas')
      TabOrder = 7
      Visible = False
      OnClick = btRefreshClick
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 64
      Top = 32
      Width = 345
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
      TabOrder = 2
    end
    object ckSuc: TCheckBox
      Left = 415
      Top = 32
      Width = 18
      Height = 17
      TabOrder = 8
      OnClick = ckSucClick
    end
    object edProv: TEdit
      Left = 64
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
      TabOrder = 4
      OnChange = edProvChange
      OnKeyDown = edProvKeyDown
    end
    object tProvincia: TEdit
      Left = 152
      Top = 80
      Width = 537
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
    object tVendedor: TEdit
      Left = 152
      Top = 104
      Width = 537
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
    object edVendedor: TEdit
      Left = 64
      Top = 104
      Width = 57
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
      OnChange = edVendedorChange
      OnKeyDown = edVendedorKeyDown
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 377
    Width = 694
    Height = 40
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      694
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
      Left = 527
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
      Left = 447
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Refrescar >>'
      TabOrder = 1
      OnClick = btRefreshClick
    end
    object btClose: TBitBtn
      Left = 607
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
  object Memo1: TMemo
    Left = 24
    Top = 168
    Width = 505
    Height = 65
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
    Visible = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 137
    Width = 694
    Height = 240
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 3
    object TabSheet1: TTabSheet
      Caption = 'Facturas'
      object Grid: TDBGrid
        Left = 0
        Top = 0
        Width = 686
        Height = 212
        Align = alClient
        Color = clInfoBk
        Ctl3D = False
        DataSource = dsFacturas
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
            FieldName = 'suc_nombre'
            Title.Caption = 'Sucursal'
            Width = 183
            Visible = True
          end
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
            Width = 29
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FAC_NUMERO'
            Title.Alignment = taCenter
            Title.Caption = 'N'#250'mero'
            Width = 57
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FAC_FECHA'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 58
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
            Expanded = False
            FieldName = 'FAC_NOMBRE'
            Title.Caption = 'Nombre del Cliente'
            Width = 197
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DET_CANTIDAD'
            Title.Alignment = taCenter
            Title.Caption = 'Cant.'
            Width = 37
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'det_cant_oferta'
            Title.Alignment = taCenter
            Title.Caption = 'Oferta'
            Width = 39
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
            FieldName = 'DET_PRECIO'
            Title.Alignment = taCenter
            Title.Caption = 'Precio'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DET_DESCUENTO'
            Title.Alignment = taCenter
            Title.Caption = '%Desc'
            Width = 39
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
    object TabSheet2: TTabSheet
      Caption = 'Tickets de caja'
      ImageIndex = 1
      DesignSize = (
        686
        212)
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 686
        Height = 186
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = clInfoBk
        Ctl3D = False
        DataSource = dsTickets
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
            FieldName = 'fecha'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'caja'
            Title.Alignment = taCenter
            Title.Caption = 'Caja'
            Width = 37
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'usu_nombre'
            Title.Caption = 'Cajero'
            Width = 132
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ticket'
            Title.Alignment = taCenter
            Title.Caption = '# Ticket'
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cantidad'
            Title.Alignment = taCenter
            Title.Caption = 'Cantidad'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'total'
            Title.Alignment = taCenter
            Title.Caption = 'Monto'
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'precio'
            Title.Alignment = taCenter
            Title.Caption = 'Precio'
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Itbis'
            Title.Alignment = taCenter
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descuento'
            Title.Alignment = taCenter
            Title.Caption = 'Descuento'
            Width = 57
            Visible = True
          end>
      end
      object lbtotal: TStaticText
        Left = 368
        Top = 193
        Width = 98
        Height = 20
        Alignment = taRightJustify
        Anchors = [akLeft, akBottom]
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object lbcant: TStaticText
        Left = 328
        Top = 192
        Width = 34
        Height = 20
        Alignment = taRightJustify
        Anchors = [akLeft, akBottom]
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  object QFacturas: TADOQuery
    Connection = DM.ADOSigma
    OnCalcFields = QFacturasCalcFields
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
        Name = 'emp_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select '
      'f.ALM_CODIGO, f.CAJ_CODIGO, f.CLI_CODIGO, f.CLI_REFERENCIA, '
      'f.COT_NUMERO, f.CPA_CODIGO, f.EMP_CODIGO, f.FAC_ABONO, '
      'f.FAC_DESCUENTO, f.FAC_DIRECCION, f.FAC_FAX, f.FAC_FECHA, '
      'f.FAC_FORMA, f.FAC_ITBIS, f.FAC_LOCALIDAD, f.FAC_NOMBRE, '
      'f.FAC_NOTA, f.FAC_NUMERO, f.FAC_OTROS, f.FAC_STATUS, '
      'f.FAC_TELEFONO, f.FAC_TOTAL, f.PED_NUMERO, f.TFA_CODIGO, '
      'f.USU_CODIGO, f.VEN_CODIGO, u.usu_nombre,'
      'j.caj_nombre,  f.fac_vence, d.det_cantidad, d.det_medida,'
      'd.det_precio, d.det_descuento, d.det_itbis, d.det_conitbis,'
      's.suc_nombre, d.det_cant_oferta'
      'from'
      'FACTURAS f'
      'inner join usuarios u on (f.usu_codigo = u.usu_codigo)'
      
        'inner join cajeros j  on (f.emp_codigo = j.emp_codigo and f.caj_' +
        'codigo = j.caj_codigo)'
      
        'inner join sucursales s on (f.emp_codigo = s.emp_codigo and f.su' +
        'c_codigo = s.suc_codigo)'
      'inner join det_factura d on (f.fac_forma = d.fac_forma'
      'and f.tfa_codigo = d.tfa_codigo'
      'and f.emp_codigo = d.emp_codigo'
      'and f.fac_numero = d.fac_numero'
      'and f.suc_codigo = d.suc_codigo)'
      'where'
      
        'f.fac_fecha between convert(datetime,:fecha1,105) and convert(da' +
        'tetime,:fecha2,105)'
      'and f.emp_codigo = :emp_codigo  '
      'and f.fac_status <> '#39'ANU'#39)
    Left = 368
    Top = 248
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
    object QFacturasDET_CANTIDAD: TFloatField
      FieldName = 'DET_CANTIDAD'
      Origin = 'DET_FACTURA.DET_CANTIDAD'
    end
    object QFacturasDET_MEDIDA: TIBStringField
      FieldName = 'DET_MEDIDA'
      Origin = 'DET_FACTURA.DET_MEDIDA'
      Size = 3
    end
    object QFacturasDET_PRECIO: TFloatField
      FieldName = 'DET_PRECIO'
      Origin = 'DET_FACTURA.DET_PRECIO'
      currency = True
    end
    object QFacturasDET_DESCUENTO: TFloatField
      FieldName = 'DET_DESCUENTO'
      Origin = 'DET_FACTURA.DET_DESCUENTO'
      currency = True
    end
    object QFacturasValor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor'
      currency = True
      Calculated = True
    end
    object QFacturasDET_ITBIS: TFloatField
      FieldName = 'DET_ITBIS'
      Origin = 'DET_FACTURA.DET_ITBIS'
    end
    object QFacturasDET_CONITBIS: TIBStringField
      FieldName = 'DET_CONITBIS'
      Origin = 'DET_FACTURA.DET_CONITBIS'
      Size = 1
    end
    object QFacturasCalcDesc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcDesc'
      Calculated = True
    end
    object QFacturassuc_nombre: TStringField
      FieldName = 'suc_nombre'
      Size = 60
    end
    object QFacturasFAC_NOTA: TMemoField
      FieldName = 'FAC_NOTA'
      BlobType = ftMemo
    end
    object QFacturasdet_cant_oferta: TBCDField
      FieldName = 'det_cant_oferta'
      Precision = 15
      Size = 2
    end
  end
  object dsFacturas: TDataSource
    DataSet = QFacturas
    Left = 400
    Top = 248
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
    Left = 104
    Top = 256
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
    Left = 136
    Top = 256
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 136
    Top = 224
  end
  object QTickets: TADOQuery
    Connection = DM.ADOSigma
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
      end
      item
        Name = 'prod'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select distinct'
      't.usu_codigo, t.fecha, t.ticket, t.caja, u.usu_nombre,'
      
        't.precio, sum(t.precio*t.cantidad) as total, sum(t.cantidad) as ' +
        'cantidad, sum((t.precio*t.itbis/100)*t.cantidad) as Itbis'
      'from'
      'ticket t, usuarios u, montos_ticket m--, formas_pago_ticket f'
      'where'
      
        't.fecha between convert(datetime, :fec1, 105) and convert(dateti' +
        'me, :fec2, 105)'
      'and t.usu_codigo = u.usu_codigo'
      'and t.caja = m.caja'
      'and t.usu_codigo = m.usu_codigo'
      'and t.fecha = m.fecha'
      'and t.ticket = m.ticket'
      '--and t.caja = f.caja'
      '--and t.usu_codigo = f.usu_codigo'
      '--and t.fecha = f.fecha'
      '--and t.ticket = f.ticket'
      'and t.producto = :prod'
      'and m.status = '#39'FAC'#39
      'group by'
      't.usu_codigo, t.fecha, t.ticket, t.caja, u.usu_nombre, t.precio')
    Left = 368
    Top = 280
    object QTicketsusu_codigo: TIntegerField
      FieldName = 'usu_codigo'
    end
    object QTicketsfecha: TDateTimeField
      FieldName = 'fecha'
    end
    object QTicketsticket: TIntegerField
      FieldName = 'ticket'
    end
    object QTicketsusu_nombre: TStringField
      FieldName = 'usu_nombre'
      Size = 60
    end
    object QTicketstotal: TBCDField
      FieldName = 'total'
      currency = True
      Precision = 18
      Size = 0
    end
    object QTicketsTipo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Tipo'
      Size = 10
      Calculated = True
    end
    object QTicketsItbis: TBCDField
      FieldName = 'Itbis'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 6
    end
    object QTicketsBeneficio: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Beneficio'
      currency = True
      Calculated = True
    end
    object QTicketscaja: TIntegerField
      FieldName = 'caja'
    end
    object QTicketsprecio: TBCDField
      FieldName = 'precio'
      currency = True
      Precision = 15
      Size = 2
    end
    object QTicketscantidad: TBCDField
      FieldName = 'cantidad'
      ReadOnly = True
      Precision = 32
      Size = 2
    end
  end
  object dsTickets: TDataSource
    DataSet = QTickets
    Left = 400
    Top = 280
  end
end
