object frmFacturaAutomatica: TfrmFacturaAutomatica
  Left = 348
  Top = 177
  ActiveControl = DBEdit1
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = '-'
  ClientHeight = 417
  ClientWidth = 690
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
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 673
    Height = 173
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 80
      Width = 73
      Height = 13
      Caption = 'Tipo de factura'
    end
    object Label2: TLabel
      Left = 384
      Top = 56
      Width = 22
      Height = 13
      Caption = 'Caja'
    end
    object Label3: TLabel
      Left = 384
      Top = 80
      Width = 32
      Height = 13
      Caption = 'Cajero'
    end
    object Label4: TLabel
      Left = 8
      Top = 104
      Width = 88
      Height = 13
      Caption = 'Condici'#243'n de pago'
    end
    object Label5: TLabel
      Left = 384
      Top = 32
      Width = 46
      Height = 13
      Caption = 'Vendedor'
    end
    object Label6: TLabel
      Left = 384
      Top = 104
      Width = 38
      Height = 13
      Caption = 'Moneda'
    end
    object Label7: TLabel
      Left = 8
      Top = 56
      Width = 40
      Height = 13
      Caption = 'Sucursal'
    end
    object Label8: TLabel
      Left = 8
      Top = 8
      Width = 54
      Height = 13
      Caption = 'Descripci'#243'n'
    end
    object Label9: TLabel
      Left = 8
      Top = 32
      Width = 78
      Height = 13
      Caption = 'D'#237'a de ejecuci'#243'n'
    end
    object Label18: TLabel
      Left = 8
      Top = 130
      Width = 65
      Height = 13
      Caption = 'Comprobante'
    end
    object bttiponcf: TSpeedButton
      Left = 144
      Top = 130
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
      OnClick = bttiponcfClick
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 104
      Top = 54
      Width = 265
      Height = 21
      DataField = 'suc_codigo'
      DataSource = dsFactura
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
      TabStop = False
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 104
      Top = 80
      Width = 265
      Height = 21
      DataField = 'tfa_codigo'
      DataSource = dsFactura
      KeyField = 'tfa_codigo'
      ListField = 'tfa_nombre'
      ListSource = dsTipo
      TabOrder = 3
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 440
      Top = 56
      Width = 225
      Height = 21
      DataField = 'fac_caja'
      DataSource = dsFactura
      KeyField = 'caj_codigo'
      ListField = 'caj_nombre'
      ListSource = dsCajas
      TabOrder = 6
    end
    object DBLookupComboBox4: TDBLookupComboBox
      Left = 440
      Top = 80
      Width = 225
      Height = 21
      DataField = 'caj_codigo'
      DataSource = dsFactura
      KeyField = 'caj_codigo'
      ListField = 'caj_nombre'
      ListSource = dsCajeros
      TabOrder = 7
    end
    object DBLookupComboBox5: TDBLookupComboBox
      Left = 104
      Top = 104
      Width = 265
      Height = 21
      DataField = 'cpa_codigo'
      DataSource = dsFactura
      KeyField = 'cpa_codigo'
      ListField = 'cpa_nombre'
      ListSource = dsCondicion
      TabOrder = 4
    end
    object DBLookupComboBox6: TDBLookupComboBox
      Left = 440
      Top = 32
      Width = 225
      Height = 21
      DataField = 'ven_codigo'
      DataSource = dsFactura
      KeyField = 'ven_codigo'
      ListField = 'ven_nombre'
      ListSource = dsVendedor
      TabOrder = 5
    end
    object DBLookupComboBox7: TDBLookupComboBox
      Left = 440
      Top = 104
      Width = 225
      Height = 21
      DataField = 'mon_codigo'
      DataSource = dsFactura
      KeyField = 'mon_codigo'
      ListField = 'mon_nombre'
      ListSource = dsMoneda
      TabOrder = 8
    end
    object DBEdit1: TDBEdit
      Left = 104
      Top = 8
      Width = 561
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'nombre'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 104
      Top = 32
      Width = 57
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'dia'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit13: TDBEdit
      Left = 104
      Top = 130
      Width = 38
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'tip_codigo'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object ttiponcf: TEdit
      Left = 168
      Top = 130
      Width = 201
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
    end
  end
  object Grid: TDBGrid
    Left = 8
    Top = 189
    Width = 673
    Height = 129
    Ctl3D = False
    DataSource = dsDetalle
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnColEnter = GridColEnter
    OnEnter = GridEnter
    OnKeyDown = GridKeyDown
    OnKeyPress = GridKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'pro_codigo'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Width = 95
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'pro_nombre'
        ReadOnly = True
        Title.Caption = 'Nombre del producto'
        Width = 285
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cantidad'
        Title.Alignment = taCenter
        Title.Caption = 'Cant'
        Width = 38
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'det_medida'
        Title.Alignment = taCenter
        Title.Caption = 'Meduda'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'det_conitbis'
        Title.Alignment = taCenter
        Title.Caption = 'Cont Itbis?'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'precio'
        Title.Alignment = taCenter
        Title.Caption = 'Precio'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descuento'
        Title.Alignment = taCenter
        Title.Caption = '%Desc'
        Width = 43
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 8
    Top = 325
    Width = 673
    Height = 73
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    DesignSize = (
      673
      73)
    object btBuscaProd: TSpeedButton
      Left = 248
      Top = 8
      Width = 137
      Height = 25
      Caption = '[ F4 ] - Buscar producto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btBuscaProdClick
    end
    object Label16: TLabel
      Left = 531
      Top = 4
      Width = 51
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Descuento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbItbis: TLabel
      Left = 531
      Top = 26
      Width = 21
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Itbis'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 531
      Top = 48
      Width = 24
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Total'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btgrabar: TBitBtn
      Left = 8
      Top = 8
      Width = 105
      Height = 25
      Caption = '[ F2 ] - Grabar'
      TabOrder = 0
      OnClick = btgrabarClick
    end
    object btlimpiar: TBitBtn
      Left = 112
      Top = 8
      Width = 137
      Height = 25
      Caption = '[ F3 ] - Limpiar/Nueva'
      TabOrder = 1
      OnClick = btlimpiarClick
    end
    object btdelete: TBitBtn
      Left = 8
      Top = 40
      Width = 105
      Height = 25
      Caption = '[ F6 ] - Eliminar fila'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TabStop = False
      OnClick = btdeleteClick
    end
    object btNota: TBitBtn
      Left = 112
      Top = 40
      Width = 137
      Height = 25
      Caption = '[ F8 ] - Nota de factura'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      TabStop = False
      OnClick = btNotaClick
    end
    object btSalir: TBitBtn
      Left = 384
      Top = 40
      Width = 137
      Height = 25
      Caption = '[ F10 ] - Cancelar/Salir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      TabStop = False
      OnClick = btSalirClick
    end
    object btNotaProducto: TBitBtn
      Left = 384
      Top = 8
      Width = 137
      Height = 25
      Caption = '[ F5 ] - Nota en producto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      TabStop = False
      OnClick = btNotaProductoClick
    end
    object btBusca: TBitBtn
      Left = 248
      Top = 40
      Width = 137
      Height = 25
      Caption = '[ F7 ] - Buscar factura'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      TabStop = False
      OnClick = btBuscaClick
    end
    object DBEdit7: TDBEdit
      Tag = 1
      Left = 587
      Top = 4
      Width = 81
      Height = 21
      TabStop = False
      Anchors = [akTop, akRight]
      AutoSelect = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'fac_descuento'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object DBEdit8: TDBEdit
      Tag = 1
      Left = 587
      Top = 26
      Width = 81
      Height = 21
      TabStop = False
      Anchors = [akTop, akRight]
      AutoSelect = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'fac_itbis'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object DBEdit10: TDBEdit
      Tag = 1
      Left = 587
      Top = 48
      Width = 81
      Height = 21
      TabStop = False
      Anchors = [akTop, akRight]
      AutoSelect = False
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'fac_total'
      DataSource = dsFactura
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
  end
  object QFactura: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QFacturaBeforePost
    OnNewRecord = QFacturaNewRecord
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
        Name = 'num'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select tip_codigo,'
      
        'emp_codigo, facturaid, dia, tfa_codigo, ven_codigo, caj_codigo, ' +
        'fac_caja, cpa_codigo, mon_codigo,'
      
        'usu_codigo, suc_codigo, fac_nota, nombre, fac_total, fac_itbis, ' +
        'fac_descuento'
      'from'
      'factura_automatica'
      'where'
      'emp_codigo = :emp_codigo'
      'and facturaid = :num')
    Left = 448
    Top = 152
    object QFacturaemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QFacturafacturaid: TIntegerField
      FieldName = 'facturaid'
    end
    object QFacturadia: TIntegerField
      FieldName = 'dia'
    end
    object QFacturatfa_codigo: TIntegerField
      FieldName = 'tfa_codigo'
    end
    object QFacturaven_codigo: TIntegerField
      FieldName = 'ven_codigo'
    end
    object QFacturacaj_codigo: TIntegerField
      FieldName = 'caj_codigo'
    end
    object QFacturafac_caja: TIntegerField
      FieldName = 'fac_caja'
    end
    object QFacturacpa_codigo: TIntegerField
      FieldName = 'cpa_codigo'
    end
    object QFacturamon_codigo: TIntegerField
      FieldName = 'mon_codigo'
    end
    object QFacturausu_codigo: TIntegerField
      FieldName = 'usu_codigo'
    end
    object QFacturasuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QFacturanombre: TStringField
      FieldName = 'nombre'
      Size = 100
    end
    object QFacturafac_total: TBCDField
      FieldName = 'fac_total'
      currency = True
      Precision = 18
      Size = 2
    end
    object QFacturafac_itbis: TBCDField
      FieldName = 'fac_itbis'
      currency = True
      Precision = 18
      Size = 2
    end
    object QFacturafac_descuento: TBCDField
      FieldName = 'fac_descuento'
      currency = True
      Precision = 18
      Size = 2
    end
    object QFacturatip_codigo: TIntegerField
      FieldName = 'tip_codigo'
      OnGetText = QFacturatip_codigoGetText
    end
    object QFacturaFAC_NOTA: TMemoField
      FieldName = 'FAC_NOTA'
      BlobType = ftMemo
    end
  end
  object dsFactura: TDataSource
    DataSet = QFactura
    Left = 480
    Top = 152
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QDetalleBeforePost
    AfterPost = QDetalleAfterPost
    AfterDelete = QDetalleAfterDelete
    OnCalcFields = QDetalleCalcFields
    OnNewRecord = QDetalleNewRecord
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
        Name = 'num'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      
        'emp_codigo, facturaid, detalleid, pro_codigo, pro_roriginal, pro' +
        '_nombre, cantidad, precio,'
      'descuento, suc_codigo, det_nota, det_conitbis, det_medida,'
      'det_itbis'
      'from'
      'factura_detalle_automatica'
      'where'
      'emp_codigo = :emp'
      'and facturaid = :num'
      'order by'
      'detalleid')
    Left = 448
    Top = 184
    object QDetalleemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QDetallefacturaid: TIntegerField
      FieldName = 'facturaid'
    end
    object QDetalledetalleid: TIntegerField
      FieldName = 'detalleid'
    end
    object QDetallepro_codigo: TIntegerField
      FieldName = 'pro_codigo'
      OnChange = QDetallepro_codigoChange
    end
    object QDetallepro_roriginal: TStringField
      FieldName = 'pro_roriginal'
      OnChange = QDetallepro_roriginalChange
      Size = 30
    end
    object QDetallepro_nombre: TStringField
      FieldName = 'pro_nombre'
      Size = 100
    end
    object QDetallecantidad: TBCDField
      FieldName = 'cantidad'
      Precision = 15
      Size = 2
    end
    object QDetalleprecio: TBCDField
      FieldName = 'precio'
      currency = True
      Precision = 18
      Size = 2
    end
    object QDetalledescuento: TBCDField
      FieldName = 'descuento'
      currency = True
      Precision = 10
      Size = 2
    end
    object QDetallesuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QDetalledet_nota: TMemoField
      FieldName = 'det_nota'
      BlobType = ftMemo
    end
    object QDetalledet_conitbis: TStringField
      FieldName = 'det_conitbis'
      Size = 1
    end
    object QDetalledet_medida: TStringField
      FieldName = 'det_medida'
      Size = 3
    end
    object QDetalleCalcItbis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcItbis'
      DisplayFormat = '###,###,###.00##'
      Calculated = True
    end
    object QDetalleCalcDesc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalcDesc'
      DisplayFormat = '###,###,###.00##'
      Calculated = True
    end
    object QDetallePrecioItbis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PrecioItbis'
      Calculated = True
    end
    object QDetalleValor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor'
      currency = True
      Calculated = True
    end
    object QDetalledet_itbis: TBCDField
      FieldName = 'det_itbis'
      Precision = 15
    end
  end
  object dsDetalle: TDataSource
    DataSet = QDetalle
    Left = 480
    Top = 184
  end
  object QSucursal: TADOQuery
    Connection = DM.ADOSigma
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
      's.suc_codigo, s.suc_nombre, s.alm_codigo'
      'from'
      'sucursales s, sucursal_acceso a'
      'where'
      's.emp_codigo = a.emp_codigo'
      'and s.suc_codigo = a.suc_codigo'
      'and a.emp_codigo = :emp_codigo'
      'and a.usu_codigo = :usu'
      'order by s.suc_codigo')
    Left = 376
    Top = 216
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
  end
  object dsSuc: TDataSource
    DataSet = QSucursal
    Left = 408
    Top = 216
  end
  object QTipo: TADOQuery
    Connection = DM.ADOSigma
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'emp_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'tfa_codigo, tfa_nombre'
      'from'
      'tiposfactura'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'tfa_nombre')
    Left = 376
    Top = 184
    object QTipotfa_codigo: TIntegerField
      FieldName = 'tfa_codigo'
    end
    object QTipotfa_nombre: TStringField
      FieldName = 'tfa_nombre'
      Size = 60
    end
  end
  object dsTipo: TDataSource
    DataSet = QTipo
    Left = 408
    Top = 184
  end
  object QCajas: TADOQuery
    Connection = DM.ADOSigma
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'emp_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'caj_codigo, caj_nombre'
      'from'
      'cajas'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      '2')
    Left = 376
    Top = 152
    object QCajascaj_codigo: TIntegerField
      FieldName = 'caj_codigo'
    end
    object QCajascaj_nombre: TStringField
      FieldName = 'caj_nombre'
      Size = 60
    end
  end
  object dsCajas: TDataSource
    DataSet = QCajas
    Left = 408
    Top = 152
  end
  object QCajeros: TADOQuery
    Connection = DM.ADOSigma
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'emp_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'caj_codigo, caj_nombre'
      'from'
      'cajeros'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      '2')
    Left = 296
    Top = 248
    object QCajeroscaj_codigo: TIntegerField
      FieldName = 'caj_codigo'
    end
    object QCajeroscaj_nombre: TStringField
      FieldName = 'caj_nombre'
      Size = 60
    end
  end
  object dsCajeros: TDataSource
    DataSet = QCajeros
    Left = 328
    Top = 248
  end
  object QCondicion: TADOQuery
    Connection = DM.ADOSigma
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'emp_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'cpa_codigo, cpa_nombre'
      'from'
      'condiciones'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      '2')
    Left = 296
    Top = 216
    object QCondicioncpa_codigo: TIntegerField
      FieldName = 'cpa_codigo'
    end
    object QCondicioncpa_nombre: TStringField
      FieldName = 'cpa_nombre'
      Size = 60
    end
  end
  object dsCondicion: TDataSource
    DataSet = QCondicion
    Left = 328
    Top = 216
  end
  object QVendedor: TADOQuery
    Connection = DM.ADOSigma
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'emp_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'ven_codigo, ven_nombre'
      'from'
      'vendedores'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      '2')
    Left = 296
    Top = 184
    object QVendedorven_codigo: TIntegerField
      FieldName = 'ven_codigo'
    end
    object QVendedorven_nombre: TStringField
      FieldName = 'ven_nombre'
      Size = 60
    end
  end
  object dsVendedor: TDataSource
    DataSet = QVendedor
    Left = 328
    Top = 184
  end
  object QMoneda: TADOQuery
    Connection = DM.ADOSigma
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'emp_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'mon_codigo, mon_nombre'
      'from'
      'moneda'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      '2')
    Left = 296
    Top = 152
    object QMonedamon_codigo: TIntegerField
      FieldName = 'mon_codigo'
    end
    object QMonedamon_nombre: TStringField
      FieldName = 'mon_nombre'
      Size = 60
    end
  end
  object dsMoneda: TDataSource
    DataSet = QMoneda
    Left = 328
    Top = 152
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 448
    Top = 216
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 448
    Top = 248
  end
  object PopupMenu1: TPopupMenu
    Left = 188
    Top = 208
    object Crearnotaalproducto1: TMenuItem
      Caption = 'Nota en el producto'
      OnClick = Crearnotaalproducto1Click
    end
    object Consultarmovimiento1: TMenuItem
      Caption = 'Consultar movimientos'
    end
  end
end
