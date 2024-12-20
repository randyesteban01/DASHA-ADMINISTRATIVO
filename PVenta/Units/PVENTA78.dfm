object frmLimite: TfrmLimite
  Left = 350
  Top = 227
  ActiveControl = edCliente
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'L'#237'mite del Cliente'
  ClientHeight = 162
  ClientWidth = 449
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 13
    Top = 16
    Width = 32
    Height = 13
    Caption = 'Cliente'
  end
  object SpeedButton2: TSpeedButton
    Left = 116
    Top = 16
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
  object Label1: TLabel
    Left = 13
    Top = 40
    Width = 30
    Height = 13
    Caption = 'Fecha'
  end
  object Label3: TLabel
    Left = 13
    Top = 64
    Width = 46
    Height = 13
    Caption = 'Concepto'
  end
  object Label4: TLabel
    Left = 13
    Top = 88
    Width = 29
    Height = 13
    Caption = 'L'#237'mite'
  end
  object edCliente: TEdit
    Left = 64
    Top = 16
    Width = 49
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    OnChange = edClienteChange
    OnKeyDown = edClienteKeyDown
  end
  object tCliente: TEdit
    Left = 141
    Top = 16
    Width = 292
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
    TabOrder = 1
  end
  object Fecha: TDateTimePicker
    Left = 64
    Top = 40
    Width = 81
    Height = 21
    Date = 37622.000000000000000000
    Time = 37622.000000000000000000
    TabOrder = 2
  end
  object btClose: TBitBtn
    Left = 360
    Top = 120
    Width = 75
    Height = 25
    Caption = '&Salir'
    TabOrder = 6
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
  object btPost: TBitBtn
    Left = 280
    Top = 120
    Width = 75
    Height = 25
    Caption = '&Crear'
    TabOrder = 5
    OnClick = btPostClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      7777770000000000007770330770000330777033077000033077703307700003
      30777033000000033077703333333333307770330000000330777030FFFFFFF0
      30777030FCCCCFF030777030FFCCCFF030777037FCCCCFF000777077CCCFCFF0
      8077777CCC777700007777CCC77777777777777C777777777777}
  end
  object DBEdit1: TDBEdit
    Left = 64
    Top = 64
    Width = 369
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'LIM_CONCEPTO'
    DataSource = dsLimite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 64
    Top = 88
    Width = 81
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'LIM_MONTO'
    DataSource = dsLimite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object QLimite: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QLimiteBeforePost
    OnNewRecord = QLimiteNewRecord
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
        Name = 'cli_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select '
      'CLI_CODIGO, EMP_CODIGO, LIM_CONCEPTO, LIM_FECHA, '
      'LIM_MONTO, LIM_SECUENCIA, usu_codigo'
      'from '
      'CLILIMITE'
      'where'
      'emp_Codigo = :emp_codigo'
      'and cli_codigo = :cli_codigo'
      'order by lim_secuencia')
    Left = 216
    Top = 40
    object QLimiteCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = 'CLILIMITE.CLI_CODIGO'
      Required = True
    end
    object QLimiteEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'CLILIMITE.EMP_CODIGO'
      Required = True
    end
    object QLimiteLIM_CONCEPTO: TIBStringField
      FieldName = 'LIM_CONCEPTO'
      Origin = 'CLILIMITE.LIM_CONCEPTO'
      Size = 60
    end
    object QLimiteLIM_FECHA: TDateTimeField
      FieldName = 'LIM_FECHA'
      Origin = 'CLILIMITE.LIM_FECHA'
    end
    object QLimiteLIM_MONTO: TFloatField
      FieldName = 'LIM_MONTO'
      Origin = 'CLILIMITE.LIM_MONTO'
      currency = True
    end
    object QLimiteLIM_SECUENCIA: TIntegerField
      FieldName = 'LIM_SECUENCIA'
      Origin = 'CLILIMITE.LIM_SECUENCIA'
      Required = True
    end
    object QLimiteusu_codigo: TIntegerField
      FieldName = 'usu_codigo'
    end
  end
  object dsLimite: TDataSource
    DataSet = QLimite
    Left = 248
    Top = 40
  end
  object Search: TQrySearchDlgADO
    Query.Strings = (
      'select cli_nombre, cli_codigo'
      'from clientes')
    AliasFields.Strings = (
      'Nombre'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 184
    Top = 96
  end
end
