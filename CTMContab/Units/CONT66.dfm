object frmNCFGastosMenores: TfrmNCFGastosMenores
  Left = 377
  Top = 317
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'NCF Gastos Menores'
  ClientHeight = 203
  ClientWidth = 433
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 136
    Width = 112
    Height = 13
    Caption = 'Fecha del comprobante'
  end
  object Label10: TLabel
    Left = 16
    Top = 64
    Width = 41
    Height = 13
    Caption = 'Sucursal'
  end
  object Label2: TLabel
    Left = 16
    Top = 88
    Width = 21
    Height = 13
    Caption = 'Caja'
  end
  object Label3: TLabel
    Left = 16
    Top = 112
    Width = 36
    Height = 13
    Caption = 'Periodo'
  end
  object StaticText1: TStaticText
    Left = 8
    Top = 8
    Width = 417
    Height = 49
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 
      'ESTE PROCESO RECOGE TODOS LOS DESEMBOLSOS DE UNA CAJA ESPECIFICA' +
      ' Y GENERA UN NUMERO DE COMPROBANTE FISCAL DE GASTOS MENORES.'
    Color = clSilver
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
  end
  object Fecha: TDateTimePicker
    Left = 144
    Top = 136
    Width = 89
    Height = 21
    Date = 37637.000000000000000000
    Time = 37637.000000000000000000
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object btClose: TBitBtn
    Left = 344
    Top = 168
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
  object BitBtn2: TBitBtn
    Left = 224
    Top = 168
    Width = 115
    Height = 25
    Caption = 'Generar comprobante'
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 64
    Top = 64
    Width = 361
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
    TabOrder = 4
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 64
    Top = 88
    Width = 361
    Height = 21
    KeyField = 'caj_codigo'
    ListField = 'caj_nombre'
    ListSource = dsCajas
    TabOrder = 5
  end
  object fecha1: TDateTimePicker
    Left = 64
    Top = 112
    Width = 81
    Height = 21
    Date = 37637.000000000000000000
    Time = 37637.000000000000000000
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object fecha2: TDateTimePicker
    Left = 144
    Top = 112
    Width = 89
    Height = 21
    Date = 37637.000000000000000000
    Time = 37637.000000000000000000
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
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
    Left = 288
    Top = 48
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
    Left = 320
    Top = 48
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
      'caj_nombre')
    Left = 288
    Top = 80
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
    Left = 320
    Top = 80
  end
end
