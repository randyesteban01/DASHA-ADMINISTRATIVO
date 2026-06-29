object frmFormaPagoFac: TfrmFormaPagoFac
  Left = 545
  Top = 305
  ActiveControl = DBGrid1
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Forma de pago'
  ClientHeight = 353
  ClientWidth = 491
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 16
    Top = 200
    Width = 41
    Height = 20
    Caption = 'Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 16
    Top = 248
    Width = 82
    Height = 20
    Caption = 'Pendiente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbTotal: TLabel
    Left = 128
    Top = 200
    Width = 121
    Height = 20
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbPendiente: TLabel
    Left = 128
    Top = 248
    Width = 121
    Height = 20
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 16
    Top = 224
    Width = 62
    Height = 20
    Caption = 'Pagado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbPagado: TLabel
    Left = 128
    Top = 224
    Width = 121
    Height = 20
    Alignment = taRightJustify
    AutoSize = False
    Caption = '0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 80
    Width = 491
    Height = 112
    TabStop = False
    Align = alTop
    Color = clInfoBk
    DataSource = dsFormaPago
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 4
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Forma'
        Title.Alignment = taCenter
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOR_DESCRIPCION'
        Title.Caption = 'Descripci'#243'n del pago'
        Width = 263
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FOR_MONTO'
        Title.Alignment = taCenter
        Title.Caption = 'Monto'
        Width = 89
        Visible = True
      end>
  end
  object btlimpiar: TBitBtn
    Left = 56
    Top = 320
    Width = 102
    Height = 25
    Caption = '[ F8 ] - Limpiar todo'
    TabOrder = 1
    TabStop = False
    OnClick = btlimpiarClick
  end
  object bteliminar: TBitBtn
    Left = 168
    Top = 320
    Width = 110
    Height = 25
    Caption = '[ F9 ] - Eliminar l'#237'nea'
    TabOrder = 2
    TabStop = False
    OnClick = bteliminarClick
  end
  object btSalir: TBitBtn
    Left = 285
    Top = 320
    Width = 97
    Height = 25
    Caption = '[ F10 ] - Facturar'
    TabOrder = 0
    TabStop = False
    OnClick = btSalirClick
  end
  object btcancelar: TBitBtn
    Left = 389
    Top = 320
    Width = 97
    Height = 25
    Caption = '[ ESC ] - Cancelar'
    TabOrder = 3
    TabStop = False
    OnClick = btcancelarClick
  end
  object GridNC: TDBGrid
    Left = 276
    Top = 192
    Width = 213
    Height = 121
    TabStop = False
    DataSource = dsNota
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
    ParentFont = False
    TabOrder = 5
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnColEnter = GridNCColEnter
    OnEnter = GridNCEnter
    OnKeyDown = GridNCKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'NCR_NUMERO'
        Title.Alignment = taCenter
        Title.Caption = 'Nota CR'
        Width = 47
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'NCR_DISPONIBLE'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Disponible'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NCR_MONTO'
        Title.Alignment = taCenter
        Title.Caption = 'Monto'
        Width = 75
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 491
    Height = 80
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 6
    object bt1: TSpeedButton
      Left = 8
      Top = 8
      Width = 156
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = bt1Click
    end
    object bt2: TSpeedButton
      Left = 8
      Top = 40
      Width = 156
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = bt2Click
    end
    object bt3: TSpeedButton
      Left = 168
      Top = 8
      Width = 156
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = bt3Click
    end
    object bt4: TSpeedButton
      Left = 168
      Top = 40
      Width = 156
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = bt4Click
    end
    object bt5: TSpeedButton
      Left = 328
      Top = 8
      Width = 156
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = bt5Click
    end
    object bt6: TSpeedButton
      Left = 328
      Top = 40
      Width = 156
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = bt6Click
    end
  end
  object QFormaPago: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QFormaPagoBeforePost
    AfterPost = QFormaPagoAfterPost
    AfterDelete = QFormaPagoAfterDelete
    OnNewRecord = QFormaPagoNewRecord
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
        Name = 'forma'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'numero'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'tipo'
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
      end>
    SQL.Strings = (
      'select '
      'EMP_CODIGO, FAC_FORMA, FAC_NUMERO, FOR_DESCRIPCION, '
      'FOR_MONTO, FPA_CODIGO, TFA_CODIGO, FOR_SECUENCIA,'
      'FPA_PANTALLADEVOLVER, CAT_CUENTA, SUC_CODIGO, for_veriphone_desc'
      'from '
      'FACFORMAPAGO'
      'where '
      'emp_codigo = :emp'
      'and fac_forma = :forma'
      'and fac_numero = :numero'
      'and tfa_codigo = :tipo'
      'and suc_codigo = :suc'
      'order by for_secuencia')
    Left = 272
    Top = 120
    object QFormaPagoEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'FACFORMAPAGO.EMP_CODIGO'
    end
    object QFormaPagoFAC_FORMA: TIBStringField
      FieldName = 'FAC_FORMA'
      Origin = 'FACFORMAPAGO.FAC_FORMA'
      Size = 1
    end
    object QFormaPagoFAC_NUMERO: TIntegerField
      FieldName = 'FAC_NUMERO'
      Origin = 'FACFORMAPAGO.FAC_NUMERO'
    end
    object QFormaPagoFOR_DESCRIPCION: TIBStringField
      FieldName = 'FOR_DESCRIPCION'
      Origin = 'FACFORMAPAGO.FOR_DESCRIPCION'
      Size = 40
    end
    object QFormaPagoFOR_MONTO: TFloatField
      FieldName = 'FOR_MONTO'
      Origin = 'FACFORMAPAGO.FOR_MONTO'
      DisplayFormat = '#,0.00'
    end
    object QFormaPagoFPA_CODIGO: TIntegerField
      FieldName = 'FPA_CODIGO'
      Origin = 'FACFORMAPAGO.FPA_CODIGO'
    end
    object QFormaPagoTFA_CODIGO: TIntegerField
      FieldName = 'TFA_CODIGO'
      Origin = 'FACFORMAPAGO.TFA_CODIGO'
    end
    object QFormaPagoFOR_SECUENCIA: TIntegerField
      FieldName = 'FOR_SECUENCIA'
      Origin = 'FACFORMAPAGO.FOR_SECUENCIA'
    end
    object QFormaPagoFPA_PANTALLADEVOLVER: TIBStringField
      FieldName = 'FPA_PANTALLADEVOLVER'
      Origin = 'FACFORMAPAGO.FPA_PANTALLADEVOLVER'
      Size = 5
    end
    object QFormaPagoCAT_CUENTA: TIBStringField
      FieldName = 'CAT_CUENTA'
      Origin = 'FACFORMAPAGO.CAT_CUENTA'
      Size = 15
    end
    object QFormaPagoForma: TStringField
      FieldKind = fkLookup
      FieldName = 'Forma'
      LookupDataSet = QForma
      LookupKeyFields = 'FPA_CODIGO'
      LookupResultField = 'FPA_NOMBRE'
      KeyFields = 'FPA_CODIGO'
      Size = 40
      Lookup = True
    end
    object QFormaPagoSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QFormaPagofor_veriphone_desc: TStringField
      FieldName = 'for_veriphone_desc'
      Size = 2500
    end
  end
  object dsFormaPago: TDataSource
    DataSet = QFormaPago
    Left = 304
    Top = 120
  end
  object QForma: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
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
      'select '
      'FPA_CODIGO, FPA_NOMBRE, FPA_ESPDESCRIP,'
      'FPA_PANTALLADEVOLVER, CAT_CUENTA'
      'from '
      'FORMASPAGO'
      'where '
      'EMP_CODIGO = :emp_codigo'
      'order by FPA_CODIGO')
    Left = 208
    Top = 120
    object QFormaFPA_CODIGO: TIntegerField
      FieldName = 'FPA_CODIGO'
      Origin = 'FORMASPAGO.FPA_CODIGO'
      Required = True
    end
    object QFormaFPA_NOMBRE: TIBStringField
      FieldName = 'FPA_NOMBRE'
      Origin = 'FORMASPAGO.FPA_NOMBRE'
      Size = 60
    end
    object QFormaFPA_ESPDESCRIP: TIBStringField
      FieldName = 'FPA_ESPDESCRIP'
      Origin = 'FORMASPAGO.FPA_ESPDESCRIP'
      Size = 5
    end
    object QFormaFPA_PANTALLADEVOLVER: TIBStringField
      FieldName = 'FPA_PANTALLADEVOLVER'
      Origin = 'FORMASPAGO.FPA_PANTALLADEVOLVER'
      Size = 5
    end
    object QFormaCAT_CUENTA: TIBStringField
      FieldName = 'CAT_CUENTA'
      Origin = 'FORMASPAGO.CAT_CUENTA'
      Size = 15
    end
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 240
    Top = 120
  end
  object QNota: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforeInsert = QNotaBeforeInsert
    BeforePost = QNotaBeforePost
    AfterPost = QNotaAfterPost
    BeforeDelete = QNotaBeforeDelete
    OnNewRecord = QNotaNewRecord
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
        Name = 'forma'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'numero'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'tipo'
        Attributes = [paSigned, paNullable]
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
      end>
    SQL.Strings = (
      'select * from facnotascredito'
      'where emp_codigo = :emp'
      'and fac_forma = :forma'
      'and fac_numero = :numero'
      'and tfa_codigo = :tipo'
      'and suc_codigo = :suc')
    Left = 272
    Top = 152
    object QNotaEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'FACNOTASCREDITO.EMP_CODIGO'
    end
    object QNotaFAC_FORMA: TIBStringField
      FieldName = 'FAC_FORMA'
      Origin = 'FACNOTASCREDITO.FAC_FORMA'
      Size = 1
    end
    object QNotaTFA_CODIGO: TIntegerField
      FieldName = 'TFA_CODIGO'
      Origin = 'FACNOTASCREDITO.TFA_CODIGO'
    end
    object QNotaFAC_NUMERO: TIntegerField
      FieldName = 'FAC_NUMERO'
      Origin = 'FACNOTASCREDITO.FAC_NUMERO'
    end
    object QNotaNCR_NUMERO: TIntegerField
      FieldName = 'NCR_NUMERO'
      Origin = 'FACNOTASCREDITO.NCR_NUMERO'
      OnChange = QNotaNCR_NUMEROChange
    end
    object QNotaNCR_MONTO: TFloatField
      FieldName = 'NCR_MONTO'
      Origin = 'FACNOTASCREDITO.NCR_MONTO'
      DisplayFormat = '#,0.00'
    end
    object QNotaNCR_DISPONIBLE: TFloatField
      FieldName = 'NCR_DISPONIBLE'
      Origin = 'FACNOTASCREDITO.NCR_DISPONIBLE'
      DisplayFormat = '#,0.00'
    end
    object QNotasuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
  end
  object dsNota: TDataSource
    DataSet = QNota
    Left = 304
    Top = 152
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 208
    Top = 152
  end
  object ADOQuery1: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
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
        Name = 'forma'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'numero'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'tipo'
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
      end>
    SQL.Strings = (
      'select '
      'EMP_CODIGO, FAC_FORMA, FAC_NUMERO, FOR_DESCRIPCION, '
      'FOR_MONTO, FPA_CODIGO, TFA_CODIGO, FOR_SECUENCIA,'
      'FPA_PANTALLADEVOLVER, CAT_CUENTA, SUC_CODIGO'
      'from '
      'FACFORMAPAGO'
      'where '
      'emp_codigo = :emp'
      'and fac_forma = :forma'
      'and fac_numero = :numero'
      'and tfa_codigo = :tipo'
      'and suc_codigo = :suc'
      'order by for_secuencia')
    Left = 384
    Top = 120
    object IntegerField1: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'FACFORMAPAGO.EMP_CODIGO'
    end
    object IBStringField1: TIBStringField
      FieldName = 'FAC_FORMA'
      Origin = 'FACFORMAPAGO.FAC_FORMA'
      Size = 1
    end
    object IntegerField2: TIntegerField
      FieldName = 'FAC_NUMERO'
      Origin = 'FACFORMAPAGO.FAC_NUMERO'
    end
    object IBStringField2: TIBStringField
      FieldName = 'FOR_DESCRIPCION'
      Origin = 'FACFORMAPAGO.FOR_DESCRIPCION'
      Size = 40
    end
    object FloatField1: TFloatField
      FieldName = 'FOR_MONTO'
      Origin = 'FACFORMAPAGO.FOR_MONTO'
      currency = True
    end
    object IntegerField3: TIntegerField
      FieldName = 'FPA_CODIGO'
      Origin = 'FACFORMAPAGO.FPA_CODIGO'
    end
    object IntegerField4: TIntegerField
      FieldName = 'TFA_CODIGO'
      Origin = 'FACFORMAPAGO.TFA_CODIGO'
    end
    object StringField1: TStringField
      FieldKind = fkLookup
      FieldName = 'Forma'
      LookupDataSet = QForma
      LookupKeyFields = 'FPA_CODIGO'
      LookupResultField = 'FPA_NOMBRE'
      KeyFields = 'FPA_CODIGO'
      Size = 40
      Lookup = True
    end
    object IntegerField5: TIntegerField
      FieldName = 'FOR_SECUENCIA'
      Origin = 'FACFORMAPAGO.FOR_SECUENCIA'
    end
    object IBStringField3: TIBStringField
      FieldName = 'FPA_PANTALLADEVOLVER'
      Origin = 'FACFORMAPAGO.FPA_PANTALLADEVOLVER'
      Size = 5
    end
    object IBStringField4: TIBStringField
      FieldName = 'CAT_CUENTA'
      Origin = 'FACFORMAPAGO.CAT_CUENTA'
      Size = 15
    end
    object IntegerField6: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
  end
end
