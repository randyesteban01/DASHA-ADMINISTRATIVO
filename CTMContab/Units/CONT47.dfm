object frmLibroBanco: TfrmLibroBanco
  Left = 282
  Top = 268
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Libro de Banco'
  ClientHeight = 631
  ClientWidth = 1204
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
  OnPaint = FormPaint
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1204
    Height = 82
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label6: TLabel
      Left = 5
      Top = 32
      Width = 30
      Height = 13
      Caption = 'Fecha'
    end
    object Label3: TLabel
      Left = 220
      Top = 32
      Width = 31
      Height = 13
      Caption = 'Banco'
    end
    object btBanco: TSpeedButton
      Left = 308
      Top = 32
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
    object Label14: TLabel
      Left = 5
      Top = 8
      Width = 41
      Height = 13
      Caption = 'Sucursal'
    end
    object lbLocSuc: TLabel
      Left = 208
      Top = 59
      Width = 46
      Height = 13
      Caption = 'Localidad'
    end
    object btLocalidad: TSpeedButton
      Left = 308
      Top = 54
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
      OnClick = btLocalidadClick
    end
    object Fecha1: TDateTimePicker
      Left = 56
      Top = 32
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
    object Fecha2: TDateTimePicker
      Left = 136
      Top = 32
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
      TabOrder = 2
      OnChange = Fecha2Change
    end
    object edBanco: TEdit
      Left = 256
      Top = 32
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
      TabOrder = 3
      OnChange = edBancoChange
      OnKeyDown = edBancoKeyDown
    end
    object tBanco: TEdit
      Left = 336
      Top = 32
      Width = 353
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
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 56
      Top = 8
      Width = 249
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
    object cbfiltro: TComboBox
      Left = 336
      Top = 8
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 5
      OnClick = cbfiltroClick
      Items.Strings = (
        'Todos'
        'Cheques'
        'Depositos'
        'Cargos Bancarios')
    end
    object DEdt_FechaPag: TcxDateEdit
      Left = 1000
      Top = 32
      Properties.ImmediatePost = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 6
      Width = 105
    end
    object edtSucLoc: TEdit
      Left = 256
      Top = 55
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
      TabOrder = 7
      OnChange = edtSucLocChange
      OnKeyDown = edtSucLocKeyDown
    end
    object TSucLoc: TEdit
      Left = 333
      Top = 55
      Width = 356
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
      TabOrder = 8
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 551
    Width = 1204
    Height = 80
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object lbCantidad: TLabel
      Left = 8
      Top = 55
      Width = 95
      Height = 13
      Caption = '0 Transacciones'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btClose: TBitBtn
      Left = 608
      Top = 48
      Width = 75
      Height = 25
      Caption = '&Salir'
      TabOrder = 0
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
      Left = 488
      Top = 48
      Width = 115
      Height = 25
      Caption = 'Imprimir el Listado'
      TabOrder = 1
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
      Left = 408
      Top = 48
      Width = 75
      Height = 25
      Caption = 'Refrescar >>'
      TabOrder = 2
      OnClick = btRefreshClick
    end
    object StaticText1: TStaticText
      Left = 176
      Top = 53
      Width = 217
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '[ F2 ] - Cambiar status'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object StaticText2: TStaticText
      Left = 16
      Top = 8
      Width = 121
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Cant. Creditos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object StaticText3: TStaticText
      Left = 152
      Top = 8
      Width = 121
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Monto Creditos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object StaticText4: TStaticText
      Left = 288
      Top = 8
      Width = 121
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Cant. Debitos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object StaticText5: TStaticText
      Left = 424
      Top = 8
      Width = 121
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Monto Debitos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object StaticText6: TStaticText
      Left = 560
      Top = 8
      Width = 121
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Balance Actual'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object lbCantCR: TStaticText
      Left = 16
      Top = 26
      Width = 121
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object lbMontoCR: TStaticText
      Left = 152
      Top = 26
      Width = 121
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
    end
    object lbCantDB: TStaticText
      Left = 288
      Top = 26
      Width = 121
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
    end
    object lbMontoDB: TStaticText
      Left = 424
      Top = 26
      Width = 121
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
    end
    object lbBalance: TStaticText
      Left = 560
      Top = 26
      Width = 121
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
    end
  end
  object Memo1: TMemo
    Left = 48
    Top = 224
    Width = 505
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
    Visible = False
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 82
    Width = 1204
    Height = 469
    Align = alClient
    Color = clInfoBk
    DataSource = dsLibro
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyDown = DBGrid_1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'DOCUMENTO'
        Title.Caption = 'Tipo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        Title.Caption = 'Numero'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FECHA'
        Title.Caption = 'Fecha'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONCEPTO'
        Width = 280
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BENEF'
        Width = 307
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Credito'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Debito'
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BALANCE'
        Width = 111
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FECHACONC'
        Title.Caption = 'FECHA CONC'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONCILIADO'
        Title.Caption = 'CONC'
        Width = 43
        Visible = True
      end>
  end
  object QLibro: TADOQuery
    Connection = DM.ADOSigma
    OnCalcFields = QLibroCalcFields
    Parameters = <
      item
        Name = 'EMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SUC'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'BANCO'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'FECHA1'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'FECHA2'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'SUCLOC'
        DataType = ftString
        Size = 5
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @EMP INT'
      'DECLARE @SUC INT'
      'DECLARE @BANCO INT'
      'DECLARE @FECHA1 DATETIME'
      'DECLARE @FECHA2 DATETIME'
      'DECLARE @SUCLOC CHAR(5)'
      ''
      'SET @EMP = :EMP'
      'SET @SUC = :SUC'
      'SET @BANCO = :BANCO'
      'SET @FECHA1 = :FECHA1'
      'SET @FECHA2 = :FECHA2'
      'SET @SUCLOC = :SUCLOC'
      ''
      'SELECT * '
      'FROM '
      'CONTPR_LIBRO_BANCO '
      '(@EMP, @SUC, @BANCO, @FECHA1, @FECHA2, @SUCLOC)')
    Left = 280
    Top = 96
    object QLibroDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = 'CONTPR_LIBRO_BANCO.DOCUMENTO'
      Size = 3
    end
    object QLibroNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'CONTPR_LIBRO_BANCO.NUMERO'
      DisplayFormat = '000000'
    end
    object QLibroFECHA: TDateTimeField
      FieldName = 'FECHA'
      Origin = 'CONTPR_LIBRO_BANCO.FECHA'
    end
    object QLibroCONCEPTO: TIBStringField
      FieldName = 'CONCEPTO'
      Origin = 'CONTPR_LIBRO_BANCO.CONCEPTO'
      Size = 60
    end
    object QLibroBENEF: TIBStringField
      FieldName = 'BENEF'
      Origin = 'CONTPR_LIBRO_BANCO.BENEF'
      Size = 60
    end
    object QLibroSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = 'CONTPR_LIBRO_BANCO.STATUS'
      Size = 3
    end
    object QLibroBALANCE: TFloatField
      FieldName = 'BALANCE'
      Origin = 'CONTPR_LIBRO_BANCO.BALANCE'
      currency = True
    end
    object QLibroORIGEN: TIBStringField
      FieldName = 'ORIGEN'
      Origin = 'CONTPR_LIBRO_BANCO.ORIGEN'
      Size = 1
    end
    object QLibroMONTO: TFloatField
      FieldName = 'MONTO'
      Origin = 'CONTPR_LIBRO_BANCO.MONTO'
      currency = True
    end
    object QLibroCONCILIADO: TIBStringField
      FieldName = 'CONCILIADO'
      Origin = 'CONTPR_LIBRO_BANCO.CONCILIADO'
      Size = 1
    end
    object QLibroDebito: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Debito'
      currency = True
      Calculated = True
    end
    object QLibroCredito: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Credito'
      currency = True
      Calculated = True
    end
    object QLibroid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object QLibroCONCEPTO2: TStringField
      FieldName = 'CONCEPTO2'
      Size = 60
    end
    object QLibroFECHACONC: TDateField
      FieldName = 'FECHACONC'
    end
  end
  object dsLibro: TDataSource
    AutoEdit = False
    DataSet = QLibro
    Left = 312
    Top = 96
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 280
    Top = 128
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
    Left = 280
    Top = 160
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
    Left = 312
    Top = 160
  end
end
