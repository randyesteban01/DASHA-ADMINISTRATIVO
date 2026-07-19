object frmConsFacturasProdPlaca: TfrmConsFacturasProdPlaca
  Left = 238
  Top = 226
  BorderStyle = bsSingle
  Caption = 'Consulta de ventas por producto x Placa'
  ClientHeight = 513
  ClientWidth = 1287
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
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
    Width = 1287
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
    object Label8: TLabel
      Left = 8
      Top = 32
      Width = 41
      Height = 13
      Caption = 'Sucursal'
    end
    object Label4: TLabel
      Left = 10
      Top = 107
      Width = 27
      Height = 13
      Caption = 'Placa'
    end
    object Label12: TLabel
      Left = 8
      Top = 58
      Width = 46
      Height = 13
      Caption = 'Vendedor'
    end
    object btVendedor: TSpeedButton
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
      OnClick = btVendedorClick
    end
    object Label1: TLabel
      Left = 8
      Top = 82
      Width = 39
      Height = 13
      Caption = 'Tecnico'
    end
    object btnTecnico: TSpeedButton
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
      OnClick = btnTecnicoClick
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
      TabOrder = 5
      Visible = False
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
      TabOrder = 6
    end
    object edPlaca: TEdit
      Left = 64
      Top = 104
      Width = 97
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
    end
    object tVendedor: TEdit
      Left = 152
      Top = 56
      Width = 319
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
    object edVendedor: TEdit
      Left = 64
      Top = 56
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
      TabOrder = 4
    end
    object edTecnico: TEdit
      Left = 64
      Top = 80
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
      TabOrder = 8
    end
    object edtTenicoN: TEdit
      Left = 152
      Top = 80
      Width = 319
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 473
    Width = 1287
    Height = 40
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      1287
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
      Left = 848
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Imprimir'
      TabOrder = 0
      Visible = False
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
      Left = 1120
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Refrescar >>'
      TabOrder = 1
      OnClick = btRefreshClick
    end
    object btClose: TBitBtn
      Left = 1200
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
    Width = 1287
    Height = 336
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 3
    object TabSheet1: TTabSheet
      Caption = 'Facturas'
      object Grid: TDBGrid
        Left = 0
        Top = 0
        Width = 1279
        Height = 308
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
            FieldName = 'placa'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tecnico'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'suc_nombre'
            Title.Caption = 'Sucursal'
            Width = 213
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'fac_forma'
            Title.Alignment = taCenter
            Title.Caption = 'Grupo'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'tfa_codigo'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo'
            Width = 29
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'fac_numero'
            Title.Alignment = taCenter
            Title.Caption = 'N'#250'mero'
            Width = 48
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'fac_fecha'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 71
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'fac_vence'
            Title.Alignment = taCenter
            Title.Caption = 'Vence'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fac_nombre'
            Title.Caption = 'Nombre del Cliente'
            Width = 176
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'det_cantidad'
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
            FieldName = 'det_medida'
            Title.Alignment = taCenter
            Title.Caption = 'Medida'
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'det_precio'
            Title.Alignment = taCenter
            Title.Caption = 'Precio'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'det_descuento'
            Title.Alignment = taCenter
            Title.Caption = '%Desc'
            Width = 39
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_nombre'
            Title.Caption = 'Producto'
            Width = 219
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
  end
  object QFacturas: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    OnCalcFields = QFacturasCalcFields
    Parameters = <
      item
        Name = 'fecha1'
        Size = -1
        Value = Null
      end
      item
        Name = 'fecha2'
        Size = -1
        Value = Null
      end
      item
        Name = 'emp_codigo'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select f.placa, s.suc_nombre, f.fac_forma, f.tfa_codigo,f.fac_nu' +
        'mero,'
      
        'f.fac_fecha,dateadd(day,cond.cpa_dias,F.fac_vence)fac_vence, f.f' +
        'ac_nombre,'
      
        'd.det_cantidad, d.det_cant_oferta, d.det_medida, d.det_precio, d' +
        '.det_descuento'
      ',d.pro_nombre, d.DET_CONITBIS, '
      
        '(select ven_nombre from vendedores where emp_codigo = d.emp_codi' +
        'go and ven_codigo = d.ven_codigo)Tecnico'
      'from'
      'FACTURAS f'
      
        'left JOIN condiciones cond on f.emp_codigo = cond.emp_codigo and' +
        ' f.cpa_codigo = cond.cpa_codigo'
      'inner join Parametros p on f.emp_codigo = p.emp_codigo'
      'inner join usuarios u on (f.usu_codigo = u.usu_codigo)'
      
        'inner join cajeros j  on (f.emp_codigo = j.emp_codigo and f.caj_' +
        'codigo = j.caj_codigo)'
      
        'inner join Cajas c on  (f.emp_codigo = c.emp_codigo and f.fac_ca' +
        'ja = c.caj_codigo)'
      
        'inner join sucursales s on (f.emp_codigo = s.emp_codigo and f.su' +
        'c_codigo = s.suc_codigo)'
      'inner join det_factura d on (f.fac_forma = d.fac_forma'
      'and f.tfa_codigo = d.tfa_codigo'
      'and f.emp_codigo = d.emp_codigo'
      'and f.fac_numero = d.fac_numero'
      'and f.suc_codigo = d.suc_codigo)'
      'and f.fac_status <> '#39'ANU'#39
      'and f.fac_nombre not in ('#39'** NULA **'#39')'
      'and f.fac_fecha between :fecha1 and :fecha2'
      'and f.emp_codigo = :emp_codigo')
    Left = 368
    Top = 248
    object QFacturassuc_nombre: TStringField
      FieldName = 'suc_nombre'
      Size = 60
    end
    object QFacturasfac_forma: TStringField
      FieldName = 'fac_forma'
      Size = 1
    end
    object QFacturastfa_codigo: TIntegerField
      FieldName = 'tfa_codigo'
    end
    object QFacturasfac_numero: TIntegerField
      FieldName = 'fac_numero'
    end
    object QFacturasfac_fecha: TDateTimeField
      FieldName = 'fac_fecha'
    end
    object QFacturasfac_vence: TDateTimeField
      FieldName = 'fac_vence'
      ReadOnly = True
    end
    object QFacturasfac_nombre: TStringField
      FieldName = 'fac_nombre'
      Size = 255
    end
    object QFacturasdet_cantidad: TBCDField
      FieldName = 'det_cantidad'
      Precision = 18
    end
    object QFacturasdet_cant_oferta: TBCDField
      FieldName = 'det_cant_oferta'
      Precision = 15
      Size = 2
    end
    object QFacturasdet_medida: TStringField
      FieldName = 'det_medida'
    end
    object QFacturasdet_precio: TBCDField
      FieldName = 'det_precio'
      Precision = 18
    end
    object QFacturasdet_descuento: TBCDField
      FieldName = 'det_descuento'
      Precision = 18
    end
    object QFacturaspro_nombre: TStringField
      FieldName = 'pro_nombre'
      Size = 255
    end
    object QFacturasDET_CONITBIS: TStringField
      FieldKind = fkCalculated
      FieldName = 'DET_CONITBIS'
      Size = 1
      Calculated = True
    end
    object QFacturasCalcDesc: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CalcDesc'
      Calculated = True
    end
    object QFacturasValor: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Valor'
      Calculated = True
    end
    object QFacturasplaca: TStringField
      FieldName = 'placa'
    end
    object QFacturasTecnico: TStringField
      FieldName = 'Tecnico'
      Size = 50
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
end
