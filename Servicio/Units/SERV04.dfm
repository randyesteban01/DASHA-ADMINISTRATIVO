object frmSalidaEquipos: TfrmSalidaEquipos
  Left = 339
  Top = 192
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Salida de equipos'
  ClientHeight = 343
  ClientWidth = 607
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel
    Left = 13
    Top = 8
    Width = 40
    Height = 13
    Caption = 'Sucursal'
  end
  object Label1: TLabel
    Left = 13
    Top = 32
    Width = 41
    Height = 13
    Caption = '# Orden'
  end
  object SpeedButton1: TSpeedButton
    Left = 168
    Top = 32
    Width = 23
    Height = 21
    Caption = 'Ok'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 64
    Top = 8
    Width = 313
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
    TabStop = False
  end
  object edNumero: TEdit
    Left = 64
    Top = 32
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
    TabOrder = 1
  end
  object Grid: TDBGrid
    Left = 8
    Top = 56
    Width = 593
    Height = 249
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
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'tip_nombre'
        Title.Caption = 'Tipo de equipo'
        Width = 138
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'det_numero_serie'
        Title.Caption = '# Serie'
        Width = 138
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'det_fecha_entrada'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha de Entrada'
        Width = 95
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'det_fecha_entrega'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha de entrega'
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'det_monto'
        Title.Alignment = taCenter
        Title.Caption = 'Monto reparaci'#243'n'
        Visible = True
      end>
  end
  object btClose: TBitBtn
    Left = 520
    Top = 312
    Width = 75
    Height = 25
    Caption = '&Salir'
    TabOrder = 3
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
  object BitBtn1: TBitBtn
    Left = 440
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Dar salida'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn1Click
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
      's.suc_codigo, s.suc_nombre, s.alm_codigo'
      'from'
      'sucursales s, sucursal_acceso a'
      'where'
      's.emp_codigo = a.emp_codigo'
      'and s.suc_codigo = a.suc_codigo'
      'and a.emp_codigo = :emp_codigo'
      'and a.usu_codigo = :usu'
      'order by s.suc_codigo')
    Left = 344
    Top = 136
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
    Left = 376
    Top = 136
  end
  object QOrden: TADOQuery
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
        Name = 'suc'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ord'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      
        'emp_codigo, suc_codigo, ord_numero, ord_fecha, usu_codigo, cli_c' +
        'odigo,'
      
        'ord_nombre, ord_direccion, ord_localidad, ord_telefono, ord_stat' +
        'us,'
      'ord_fecha_entrega, ord_fecha_expira, ord_nota'
      'from'
      'orden_servicio'
      'where'
      'emp_codigo = :emp'
      'and suc_codigo = :suc'
      'and ord_numero = :ord'
      '')
    Left = 344
    Top = 168
    object QOrdenemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QOrdensuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QOrdenord_numero: TIntegerField
      FieldName = 'ord_numero'
    end
    object QOrdenord_fecha: TDateTimeField
      FieldName = 'ord_fecha'
      EditMask = 'cc-cc-cccc'
    end
    object QOrdenusu_codigo: TIntegerField
      FieldName = 'usu_codigo'
    end
    object QOrdencli_codigo: TIntegerField
      FieldName = 'cli_codigo'
    end
    object QOrdenord_nombre: TStringField
      FieldName = 'ord_nombre'
      Size = 60
    end
    object QOrdenord_direccion: TStringField
      FieldName = 'ord_direccion'
      Size = 60
    end
    object QOrdenord_localidad: TStringField
      FieldName = 'ord_localidad'
      Size = 60
    end
    object QOrdenord_telefono: TStringField
      FieldName = 'ord_telefono'
      EditMask = '(ccc)ccc-cccc'
      Size = 13
    end
    object QOrdenord_status: TStringField
      FieldName = 'ord_status'
      Size = 3
    end
    object QOrdenord_fecha_entrega: TDateTimeField
      FieldName = 'ord_fecha_entrega'
    end
    object QOrdenord_fecha_expira: TDateTimeField
      FieldName = 'ord_fecha_expira'
    end
    object QOrdenord_nota: TMemoField
      FieldName = 'ord_nota'
      BlobType = ftMemo
    end
  end
  object dsOrden: TDataSource
    AutoEdit = False
    DataSet = QOrden
    Left = 376
    Top = 168
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsOrden
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
        Name = 'ord_numero'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'd.emp_codigo, d.suc_codigo, d.ord_numero, d.det_secuencia,'
      'd.tip_codigo, d.det_numero_serie, d.det_descripcion,'
      'd.det_problema, d.det_fecha_entrada, d.det_fecha_entrega,'
      'd.tec_codigo, d.det_monto, d.det_comentario,'
      'd.det_tiene_garantia, t.tip_nombre, d.det_status'
      'from'
      'Det_Orden_Servicio d, tipo_equipos t'
      'where'
      'd.emp_codigo = :emp_codigo'
      'and d.suc_codigo = :suc_codigo'
      'and d.ord_numero = :ord_numero'
      'and d.emp_codigo = t.emp_codigo'
      'and d.tip_codigo = t.tip_codigo'
      'and d.det_status = '#39'PEN'#39
      'order by'
      'd.det_secuencia')
    Left = 344
    Top = 200
    object QDetalleemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QDetallesuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QDetalleord_numero: TIntegerField
      FieldName = 'ord_numero'
    end
    object QDetalledet_secuencia: TIntegerField
      FieldName = 'det_secuencia'
    end
    object QDetalletip_codigo: TIntegerField
      FieldName = 'tip_codigo'
    end
    object QDetalledet_numero_serie: TStringField
      FieldName = 'det_numero_serie'
      Size = 30
    end
    object QDetalledet_descripcion: TStringField
      FieldName = 'det_descripcion'
      Size = 80
    end
    object QDetalledet_problema: TMemoField
      FieldName = 'det_problema'
      BlobType = ftMemo
    end
    object QDetalledet_fecha_entrada: TDateTimeField
      FieldName = 'det_fecha_entrada'
      EditMask = 'cc-cc-cccc'
    end
    object QDetalledet_fecha_entrega: TDateTimeField
      FieldName = 'det_fecha_entrega'
      EditMask = 'cc-cc-cccc'
    end
    object QDetalletec_codigo: TIntegerField
      FieldName = 'tec_codigo'
    end
    object QDetalledet_monto: TBCDField
      FieldName = 'det_monto'
      currency = True
      Precision = 15
      Size = 2
    end
    object QDetalledet_comentario: TMemoField
      FieldName = 'det_comentario'
      BlobType = ftMemo
    end
    object QDetalledet_tiene_garantia: TStringField
      FieldName = 'det_tiene_garantia'
      Size = 5
    end
    object QDetalletip_nombre: TStringField
      FieldName = 'tip_nombre'
      Size = 60
    end
    object QDetalledet_status: TStringField
      FieldName = 'det_status'
      Size = 3
    end
  end
  object dsDetalle: TDataSource
    AutoEdit = False
    DataSet = QDetalle
    Left = 376
    Top = 200
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 344
    Top = 232
  end
end
