object frmAnulaCargoBanco: TfrmAnulaCargoBanco
  Left = 969
  Top = 385
  ActiveControl = edBanco
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Anular Cargo Bancario'
  ClientHeight = 180
  ClientWidth = 465
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 12
    Top = 40
    Width = 29
    Height = 13
    Caption = 'Banco'
  end
  object btBanco: TSpeedButton
    Left = 108
    Top = 40
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
    OnClick = btBancoClick
  end
  object Label1: TLabel
    Left = 12
    Top = 64
    Width = 19
    Height = 13
    Caption = 'A'#241'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 111
    Top = 64
    Width = 20
    Height = 13
    Caption = 'Mes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 12
    Top = 88
    Width = 37
    Height = 13
    Caption = 'N'#250'mero'
  end
  object Label14: TLabel
    Left = 12
    Top = 16
    Width = 40
    Height = 13
    Caption = 'Sucursal'
  end
  object Label5: TLabel
    Left = 12
    Top = 112
    Width = 32
    Height = 13
    Caption = 'Motivo'
  end
  object edBanco: TEdit
    Left = 56
    Top = 40
    Width = 49
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
    OnChange = edBancoChange
    OnKeyDown = edBancoKeyDown
  end
  object tBanco: TEdit
    Left = 133
    Top = 40
    Width = 324
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
  object btClose: TBitBtn
    Left = 376
    Top = 144
    Width = 75
    Height = 25
    Caption = '&Salir'
    TabOrder = 7
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
  object spAno: TSpinEdit
    Left = 56
    Top = 64
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
    TabOrder = 2
    Value = 1900
  end
  object cbMes: TComboBox
    Left = 133
    Top = 64
    Width = 153
    Height = 21
    BevelKind = bkSoft
    Style = csDropDownList
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 3
    TabStop = False
    Items.Strings = (
      'Enero'
      'Febrero'
      'Marzo'
      'Abril'
      'Mayo'
      'Junio'
      'Julio'
      'Agosto'
      'Septiembre'
      'Octubre'
      'Noviembre'
      'Diciembre')
  end
  object edNumero1: TEdit
    Left = 56
    Top = 88
    Width = 73
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
    OnChange = edNumero1Change
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 56
    Top = 16
    Width = 401
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
  end
  object btAnula: TBitBtn
    Left = 296
    Top = 144
    Width = 75
    Height = 25
    Caption = '&Anular'
    TabOrder = 8
    OnClick = btAnulaClick
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
      FF002900DD002900DF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0008002C002100B60000000000FF00FF00FF00FF00FF00
      FF002900DE002900DF001200640000000000FF00FF00FF00FF00FF00FF00FF00
      FF00000000001D009D002900DF0019008600FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF002900DE002900DF000000000000000000FF00FF00FF00FF000000
      00002500C8002900DF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF002900DF002900DF000000000000000000000000002500
      C8002900DF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF002900DF002700D600000000002500C7002900
      DF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF002900DE002900DF002900DF000000
      0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00000000002800D8002900DF002900DF000000
      000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00000000002500C8002900DF00000000002900DF002900
      DF000400140000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000002500C8002900DF0000000000FF00FF00FF00FF002900
      DF002900DF0011005A000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00000000002400C7002900DF0009002F00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF002900DF002200BB0000000000FF00FF00FF00FF00FF00FF00FF00
      FF002800D8002900DF0019008700FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF002900DC00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF002900DF002300BE0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 56
    Top = 112
    Width = 401
    Height = 21
    DropDownRows = 20
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'manu_codigo'
    ListField = 'manu_nombre'
    ListSource = dsMotivo
    ParentFont = False
    TabOrder = 5
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 376
    Top = 56
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 408
    Top = 56
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
    Left = 304
    Top = 64
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
    Left = 336
    Top = 64
  end
  object QMotivo: TADOQuery
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
      'manu_codigo, manu_nombre'
      'from'
      'motivo_anulacion'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      '2')
    Left = 304
    Top = 96
    object QMotivomanu_codigo: TIntegerField
      FieldName = 'manu_codigo'
    end
    object QMotivomanu_nombre: TStringField
      FieldName = 'manu_nombre'
      Size = 100
    end
  end
  object dsMotivo: TDataSource
    DataSet = QMotivo
    Left = 336
    Top = 96
  end
end