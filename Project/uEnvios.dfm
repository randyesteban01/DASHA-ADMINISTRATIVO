object frmEnvio: TfrmEnvio
  Left = 294
  Top = 255
  BorderStyle = bsSingle
  Caption = 'Datos del Envios'
  ClientHeight = 231
  ClientWidth = 666
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 280
    Top = 96
    Width = 32
    Height = 13
    Caption = 'Label4'
  end
  object Label24: TLabel
    Left = 200
    Top = 32
    Width = 48
    Height = 26
    Caption = 'Inv. Inicial Unidad'
    WordWrap = True
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 16
    Width = 321
    Height = 101
    Caption = '[ Datos Origen ]'
    Color = clMoneyGreen
    Ctl3D = False
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 0
    object Label3: TLabel
      Left = 16
      Top = 48
      Width = 40
      Height = 13
      Caption = 'Nombre:'
    end
    object Label5: TLabel
      Left = 16
      Top = 24
      Width = 45
      Height = 13
      Caption = 'Telefono:'
    end
    object Label9: TLabel
      Left = 16
      Top = 73
      Width = 43
      Height = 13
      Caption = 'Terminal:'
    end
    object Label1: TLabel
      Left = 182
      Top = 27
      Width = 76
      Height = 13
      Caption = 'Cant. Paquetes:'
    end
    object edoNombre: TEdit
      Left = 64
      Top = 48
      Width = 249
      Height = 19
      CharCase = ecUpperCase
      MaxLength = 50
      TabOrder = 1
    end
    object edoTelefono: TMaskEdit
      Left = 64
      Top = 24
      Width = 105
      Height = 19
      EditMask = '!\(999\)999-9999;0; '
      MaxLength = 13
      TabOrder = 0
      OnKeyDown = edoTelefonoKeyDown
    end
    object SucursalDestino: TDBLookupComboBox
      Left = 64
      Top = 72
      Width = 257
      Height = 19
      DropDownRows = 20
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'suc_codigo'
      ListField = 'suc_nombre'
      ListSource = dsSucOrigen
      ParentFont = False
      TabOrder = 2
      TabStop = False
    end
  end
  object GroupBox2: TGroupBox
    Left = 336
    Top = 16
    Width = 321
    Height = 101
    Caption = '[ Datos Destino ]'
    Color = clHighlight
    Ctl3D = False
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 2
    object Label6: TLabel
      Left = 8
      Top = 48
      Width = 37
      Height = 13
      Caption = 'Nombre'
    end
    object Label7: TLabel
      Left = 8
      Top = 24
      Width = 42
      Height = 13
      Caption = 'Telefono'
    end
    object Label8: TLabel
      Left = 8
      Top = 74
      Width = 34
      Height = 13
      Caption = 'Termial'
    end
    object eddNombre: TEdit
      Left = 56
      Top = 48
      Width = 209
      Height = 19
      CharCase = ecUpperCase
      MaxLength = 50
      TabOrder = 2
      OnExit = eddNombreExit
    end
    object eddTelefono: TMaskEdit
      Left = 56
      Top = 24
      Width = 105
      Height = 19
      EditMask = '!\(999\)999-9999;0; '
      MaxLength = 13
      TabOrder = 0
      OnKeyDown = eddTelefonoKeyDown
    end
    object DBLookupComb_env_suc_destino: TDBLookupComboBox
      Left = 55
      Top = 73
      Width = 266
      Height = 19
      DropDownRows = 20
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'suc_codigo'
      ListField = 'suc_nombre'
      ListSource = dsSucDestino
      ParentFont = False
      TabOrder = 3
      TabStop = False
    end
    object chkPagoDestino: TCheckBox
      Left = 184
      Top = 24
      Width = 120
      Height = 17
      Caption = 'Pago en Destino'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object GroupBox3: TGroupBox
    Left = 3
    Top = 117
    Width = 649
    Height = 49
    Caption = '[ Descripci'#243'n ]'
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 3
    object edDescripcion: TEdit
      Left = 322
      Top = 20
      Width = 320
      Height = 19
      MaxLength = 200
      TabOrder = 0
    end
    object cbbConceptos: TComboBox
      Left = 5
      Top = 19
      Width = 313
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
    end
  end
  object btClose: TBitBtn
    Left = 568
    Top = 177
    Width = 90
    Height = 48
    Caption = '&Salir'
    TabOrder = 4
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
  object edCantidad: TEdit
    Left = 268
    Top = 40
    Width = 53
    Height = 21
    TabOrder = 1
    Text = '1'
    OnKeyPress = edCantidadKeyPress
  end
  object dsSucOrigen: TDataSource
    DataSet = QSucOrigen
    Left = 410
    Top = 187
  end
  object QSucOrigen: TADOQuery
    Connection = DM.ADOSigma
    BeforeOpen = QSucOrigenBeforeOpen
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
      end
      item
        Name = 'suc'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select  s.suc_direccion, s.suc_localidad, s.suc_telefono, s.suc_' +
        'rnc,'
      's.emp_codigo, s.suc_codigo, s.suc_nombre, s.alm_codigo'
      'from'
      'sucursales s, sucursal_acceso a'
      'where'
      's.emp_codigo = a.emp_codigo'
      'and s.suc_codigo = a.suc_codigo'
      'and a.emp_codigo = :emp_codigo'
      'and a.usu_codigo = :usu'
      'and a.suc_codigo= :suc'
      'order by s.suc_codigo')
    Left = 354
    Top = 187
    object QSucOrigensuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QSucOrigensuc_nombre: TStringField
      FieldName = 'suc_nombre'
      Size = 60
    end
    object QSucOrigenalm_codigo: TIntegerField
      FieldName = 'alm_codigo'
    end
    object QSucOrigenemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QSucOrigensuc_direccion: TStringField
      FieldName = 'suc_direccion'
      Size = 60
    end
    object QSucOrigensuc_localidad: TStringField
      FieldName = 'suc_localidad'
      Size = 60
    end
    object QSucOrigensuc_telefono: TStringField
      FieldName = 'suc_telefono'
      Size = 30
    end
    object QSucOrigensuc_rnc: TStringField
      FieldName = 'suc_rnc'
      Size = 30
    end
  end
  object dsSucDestino: TDataSource
    DataSet = qSucDestino
    Left = 530
    Top = 186
  end
  object qSucDestino: TADOQuery
    Connection = DM.ADOSigma
    BeforeOpen = qSucDestinoBeforeOpen
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
      
        'select  s.suc_direccion, s.suc_localidad, s.suc_telefono, s.suc_' +
        'rnc,'
      's.emp_codigo, s.suc_codigo, s.suc_nombre, s.alm_codigo'
      'from'
      'sucursales s, sucursal_acceso a'
      'where'
      's.emp_codigo = a.emp_codigo'
      'and s.suc_codigo = a.suc_codigo'
      'and a.emp_codigo = :emp_codigo'
      'and a.usu_codigo = :usu'
      'order by s.suc_codigo')
    Left = 474
    Top = 186
    object IntegerField1: TIntegerField
      FieldName = 'suc_codigo'
    end
    object StringField1: TStringField
      FieldName = 'suc_nombre'
      Size = 60
    end
    object IntegerField2: TIntegerField
      FieldName = 'alm_codigo'
    end
    object IntegerField3: TIntegerField
      FieldName = 'emp_codigo'
    end
    object StringField2: TStringField
      FieldName = 'suc_direccion'
      Size = 60
    end
    object StringField3: TStringField
      FieldName = 'suc_localidad'
      Size = 60
    end
    object StringField4: TStringField
      FieldName = 'suc_telefono'
      Size = 30
    end
    object StringField5: TStringField
      FieldName = 'suc_rnc'
      Size = 30
    end
  end
end
