object frmRepDiario: TfrmRepDiario
  Left = 592
  Top = 247
  ActiveControl = edEntrada1
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Reporte del Diario General'
  ClientHeight = 282
  ClientWidth = 437
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 13
    Top = 112
    Width = 30
    Height = 13
    Caption = 'Fecha'
  end
  object Label3: TLabel
    Left = 13
    Top = 40
    Width = 22
    Height = 13
    Caption = 'ED#'
  end
  object Label2: TLabel
    Left = 13
    Top = 64
    Width = 31
    Height = 13
    Caption = 'Desde'
  end
  object btCuenta1: TSpeedButton
    Left = 128
    Top = 64
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
    OnClick = btCuenta1Click
  end
  object btCuenta2: TSpeedButton
    Left = 128
    Top = 88
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
    OnClick = btCuenta2Click
  end
  object Label4: TLabel
    Left = 13
    Top = 88
    Width = 23
    Height = 13
    Caption = 'Hata'
  end
  object Label5: TLabel
    Left = 13
    Top = 136
    Width = 38
    Height = 13
    Caption = 'Ordenar'
  end
  object Label8: TLabel
    Left = 13
    Top = 16
    Width = 41
    Height = 13
    Caption = 'Sucursal'
  end
  object Fecha1: TDateTimePicker
    Left = 56
    Top = 112
    Width = 81
    Height = 21
    Date = 37698.000000000000000000
    Time = 37698.000000000000000000
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object Fecha2: TDateTimePicker
    Left = 136
    Top = 112
    Width = 81
    Height = 21
    Date = 37698.000000000000000000
    Time = 37698.000000000000000000
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object edEntrada1: TEdit
    Left = 56
    Top = 40
    Width = 49
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
  end
  object btClose: TBitBtn
    Left = 352
    Top = 248
    Width = 75
    Height = 25
    Caption = '&Salir'
    TabOrder = 8
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
    Left = 272
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 7
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
  object edEntrada2: TEdit
    Left = 112
    Top = 40
    Width = 49
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
  end
  object edCuenta1: TEdit
    Left = 56
    Top = 64
    Width = 70
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
    OnKeyDown = edCuenta1KeyDown
  end
  object tCuenta1: TEdit
    Left = 152
    Top = 64
    Width = 278
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
  object edCuenta2: TEdit
    Left = 56
    Top = 88
    Width = 70
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
    TabOrder = 10
    OnKeyDown = edCuenta2KeyDown
  end
  object tCuenta2: TEdit
    Left = 152
    Top = 88
    Width = 278
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
    TabOrder = 4
  end
  object Lista: TListBox
    Left = 56
    Top = 136
    Width = 209
    Height = 137
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 13
    Items.Strings = (
      'Por Entrada'
      'Por Fecha'
      'Por Documento'
      'Por Tipo'
      'Por Entrada, Fecha'
      'Por Entrada, Fecha, Documento'
      'Por Entrada, Documento'
      'Por Fecha, Documento'
      'Por Tipo, Fecha'
      'Por Tipo, Documento')
    ParentFont = False
    TabOrder = 11
  end
  object ckmail: TCheckBox
    Left = 272
    Top = 136
    Width = 97
    Height = 17
    Caption = 'Enviar por email'
    TabOrder = 12
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 56
    Top = 16
    Width = 377
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
  object Search: TQrySearchDlgADO
    Left = 304
    Top = 40
  end
  object QSucursal: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltReadOnly
    DataSource = DM.dsParametros
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
    Left = 352
    Top = 40
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
    Left = 384
    Top = 40
  end
end
