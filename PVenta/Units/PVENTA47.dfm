object frmCuadre: TfrmCuadre
  Left = 504
  Top = 230
  ActiveControl = edCajero
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cuadre del d'#237'a'
  ClientHeight = 413
  ClientWidth = 693
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
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
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 472
    Top = 264
    Width = 85
    Height = 13
    Caption = 'Efectivo inicial'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 472
    Top = 288
    Width = 99
    Height = 13
    Caption = 'Efectivo Cobrado'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 472
    Top = 336
    Width = 77
    Height = 13
    Caption = 'Total en Caja'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 472
    Top = 360
    Width = 58
    Height = 13
    Caption = 'Total Itbis'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 472
    Top = 312
    Width = 72
    Height = 13
    Caption = 'Retenciones'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 693
    Height = 113
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 32
      Width = 30
      Height = 13
      Caption = 'Cajero'
    end
    object Label2: TLabel
      Left = 8
      Top = 80
      Width = 32
      Height = 13
      Caption = 'Rango'
    end
    object SpeedButton1: TSpeedButton
      Left = 96
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
      OnClick = SpeedButton1Click
    end
    object Label10: TLabel
      Left = 8
      Top = 8
      Width = 41
      Height = 13
      Caption = 'Sucursal'
    end
    object Label6: TLabel
      Left = 8
      Top = 56
      Width = 21
      Height = 13
      Caption = 'Caja'
    end
    object btcaja: TSpeedButton
      Left = 96
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
      OnClick = btcajaClick
    end
    object tCajero: TEdit
      Left = 120
      Top = 32
      Width = 561
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
    object edCajero: TEdit
      Left = 56
      Top = 32
      Width = 38
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
      TabOrder = 2
      OnChange = edCajeroChange
      OnKeyDown = edCajeroKeyDown
    end
    object Fecha1: TDateTimePicker
      Left = 56
      Top = 80
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
      TabOrder = 4
    end
    object btRefresh: TBitBtn
      Left = 440
      Top = 80
      Width = 83
      Height = 25
      Caption = 'Refrescar >>'
      TabOrder = 6
      OnClick = btRefreshClick
    end
    object BitBtn2: TBitBtn
      Left = 528
      Top = 80
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
    object btClose: TBitBtn
      Left = 608
      Top = 80
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
    object Fecha2: TDateTimePicker
      Left = 136
      Top = 80
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
      TabOrder = 5
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 56
      Top = 8
      Width = 625
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
    object tcaja: TEdit
      Left = 120
      Top = 56
      Width = 561
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
    object edCaja: TEdit
      Left = 56
      Top = 56
      Width = 38
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
      OnChange = edCajaChange
      OnKeyDown = edCajaKeyDown
    end
  end
  object cbGrupo: TRadioGroup
    Left = 600
    Top = 16
    Width = 73
    Height = 49
    ItemIndex = 0
    Items.Strings = (
      'A'
      'B'
      'Todas')
    TabOrder = 1
    Visible = False
    OnClick = cbGrupoClick
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 115
    Width = 209
    Height = 19
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Total x Tipo de Factura'
    Color = clNavy
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Reference Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 136
    Width = 207
    Height = 121
    Ctl3D = False
    DataSource = dsFacturas
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Reference Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'TFA_NOMBRE'
        Title.Caption = 'Tipo'
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MONTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Reference Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Visible = True
      end>
  end
  object StaticText2: TStaticText
    Left = 208
    Top = 115
    Width = 257
    Height = 19
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Detalle x Tipo de Factura'
    Color = clNavy
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Reference Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 4
  end
  object DBGrid2: TDBGrid
    Left = 208
    Top = 136
    Width = 255
    Height = 121
    Ctl3D = False
    DataSource = dsDetalle
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 5
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Reference Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'fac_numero'
        Title.Alignment = taCenter
        Title.Caption = 'N'#250'mero'
        Width = 67
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'fecha'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fac_total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Reference Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Width = 79
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'fac_status'
        Title.Alignment = taCenter
        Title.Caption = 'St.'
        Width = 23
        Visible = True
      end>
  end
  object StaticText3: TStaticText
    Left = 464
    Top = 115
    Width = 225
    Height = 19
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Desembolsos de Caja'
    Color = clNavy
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Reference Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 6
  end
  object DBGrid3: TDBGrid
    Left = 464
    Top = 136
    Width = 225
    Height = 121
    Ctl3D = False
    DataSource = dsDesem
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 7
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Reference Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'des_numero'
        Title.Alignment = taCenter
        Title.Caption = 'N'#250'mero'
        Width = 51
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'des_fecha'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'des_monto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Reference Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Width = 58
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'des_status'
        Title.Alignment = taCenter
        Title.Caption = 'St.'
        Width = 24
        Visible = True
      end>
  end
  object StaticText4: TStaticText
    Left = 0
    Top = 259
    Width = 209
    Height = 19
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Total por Forma de Pago'
    Color = clNavy
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Reference Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 8
  end
  object DBGrid4: TDBGrid
    Left = 0
    Top = 278
    Width = 207
    Height = 132
    Ctl3D = False
    DataSource = dsFormas
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 9
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Reference Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'FORMA'
        Title.Caption = 'Forma de pago'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MONTO'
        Title.Alignment = taCenter
        Title.Caption = 'Monto'
        Width = 80
        Visible = True
      end>
  end
  object StaticText5: TStaticText
    Left = 208
    Top = 259
    Width = 257
    Height = 19
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Total Recibos de Ingreso'
    Color = clNavy
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Reference Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 10
  end
  object DBGrid5: TDBGrid
    Left = 208
    Top = 278
    Width = 255
    Height = 132
    Ctl3D = False
    DataSource = dsRecibos
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 11
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Reference Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'rec_numero'
        Title.Alignment = taCenter
        Title.Caption = 'N'#250'mero'
        Width = 49
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'rec_fecha'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'rec_monto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Reference Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'rec_retencion'
        Title.Alignment = taCenter
        Title.Caption = 'Retenci'#243'n'
        Width = 76
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'rec_status'
        Title.Alignment = taCenter
        Title.Caption = 'St.'
        Width = 24
        Visible = True
      end>
  end
  object lbTotal: TStaticText
    Left = 576
    Top = 336
    Width = 105
    Height = 20
    Alignment = taRightJustify
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = '0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'MS Reference Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
  end
  object lbefectivo: TStaticText
    Left = 576
    Top = 288
    Width = 105
    Height = 20
    Alignment = taRightJustify
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = '0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'MS Reference Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
  end
  object lbinicial: TStaticText
    Left = 576
    Top = 264
    Width = 105
    Height = 20
    Alignment = taRightJustify
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = '0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'MS Reference Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
  end
  object lbItbis: TStaticText
    Left = 576
    Top = 360
    Width = 105
    Height = 20
    Alignment = taRightJustify
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = '0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'MS Reference Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
  end
  object lbretenciones: TStaticText
    Left = 576
    Top = 312
    Width = 105
    Height = 20
    Alignment = taRightJustify
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = '0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'MS Reference Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 280
    Top = 56
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 248
    Top = 56
  end
  object QFormas: TADOQuery
    Connection = DM.ADOSigma
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
        Name = 'FEC1'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'FEC2'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'CAJ1'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CAJ2'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'FORMA'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'CAJA'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'emp2'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT a.*, f.fpa_sumaefectivocuadre FROM PR_CUADRE_FORMASPAGO '
      '(:EMP, :SUC, :FEC1, :FEC2, :CAJ1, :CAJ2, :FORMA, :CAJA) a,'
      'formaspago f '
      'where f.emp_codigo = :emp2 and f.fpa_codigo = a.codigo')
    Left = 48
    Top = 320
    object QFormasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'PR_CUADRE_FORMASPAGO.CODIGO'
    end
    object QFormasFORMA: TIBStringField
      FieldName = 'FORMA'
      Origin = 'PR_CUADRE_FORMASPAGO.FORMA'
      Size = 60
    end
    object QFormasMONTO: TFloatField
      FieldName = 'MONTO'
      Origin = 'PR_CUADRE_FORMASPAGO.MONTO'
      currency = True
    end
    object QFormasid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object QFormasfpa_sumaefectivocuadre: TStringField
      FieldName = 'fpa_sumaefectivocuadre'
      Size = 5
    end
  end
  object dsFormas: TDataSource
    DataSet = QFormas
    Left = 80
    Top = 320
  end
  object QFacturas: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <
      item
        Name = 'FEC'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'CAJ1'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'CAJ2'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'EMP'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'SUC'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'F.EMP_CODIGO, F.SUC_CODIGO, F.FAC_FORMA,'
      'F.TFA_CODIGO, T.TFA_NOMBRE, T.TFA_ACTBALANCE,'
      'SUM(F.FAC_TOTAL) AS MONTO'
      'FROM'
      'FACTURAS F, TIPOSFACTURA T'
      'WHERE'
      'F.EMP_CODIGO = T.EMP_CODIGO'
      'AND F.TFA_CODIGO = T.TFA_CODIGO'
      'AND F.FAC_STATUS <> '#39'ANU'#39
      'AND F.FAC_FECHA = convert(datetime,:FEC,105)'
      'AND F.CAJ_CODIGO BETWEEN :CAJ1 AND :CAJ2'
      'AND F.EMP_CODIGO = :EMP'
      'AND F.SUC_CODIGO = :SUC'
      'AND (F.FAC_HOLD <> '#39'True'#39' or F.FAC_HOLD is null)'
      'GROUP BY'
      'F.EMP_CODIGO, F.SUC_CODIGO, F.FAC_FORMA,'
      'F.TFA_CODIGO, T.TFA_NOMBRE, T.TFA_ACTBALANCE')
    Left = 88
    Top = 184
    object QFacturasTFA_NOMBRE: TIBStringField
      FieldName = 'TFA_NOMBRE'
      Size = 60
    end
    object QFacturasMONTO: TFloatField
      FieldName = 'MONTO'
      currency = True
    end
    object QFacturasEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QFacturasSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QFacturasFAC_FORMA: TStringField
      FieldName = 'FAC_FORMA'
      Size = 1
    end
    object QFacturasTFA_CODIGO: TIntegerField
      FieldName = 'TFA_CODIGO'
    end
    object QFacturasTFA_ACTBALANCE: TStringField
      FieldName = 'TFA_ACTBALANCE'
      Size = 5
    end
  end
  object dsFacturas: TDataSource
    DataSet = QFacturas
    Left = 120
    Top = 184
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
    Left = 248
    Top = 24
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
    Left = 280
    Top = 24
  end
  object QDetalleFactura: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    DataSource = dsFacturas
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
        Name = 'forma1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'forma2'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'tfa_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'fec1'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'fec2'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'caja1'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'caja2'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'cajero1'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'cajero2'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'fac_numero, convert(datetime,fac_fecha,105) as fecha,'
      'fac_total, fac_status'
      'from'
      'facturas'
      'where'
      'emp_codigo = :emp_codigo'
      'and suc_codigo = :suc_codigo'
      'and fac_forma between :forma1 and :forma2'
      'and tfa_codigo = :tfa_codigo'
      
        'and fac_fecha between convert(datetime,:fec1,105) and convert(da' +
        'tetime,:fec2,105)'
      'and fac_caja between :caja1 and :caja2'
      'and caj_codigo between :cajero1 and :cajero2'
      'AND (FAC_HOLD <> '#39'True'#39' or FAC_HOLD is null)'
      'order by'
      'fac_numero')
    Left = 280
    Top = 208
    object QDetalleFacturafac_numero: TIntegerField
      FieldName = 'fac_numero'
    end
    object QDetalleFacturafecha: TDateTimeField
      FieldName = 'fecha'
      ReadOnly = True
    end
    object QDetalleFacturafac_total: TBCDField
      FieldName = 'fac_total'
      currency = True
      Precision = 15
      Size = 2
    end
    object QDetalleFacturafac_status: TStringField
      FieldName = 'fac_status'
      Size = 3
    end
  end
  object dsDetalle: TDataSource
    DataSet = QDetalleFactura
    Left = 312
    Top = 208
  end
  object QDesembolsos: TADOQuery
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
        Name = 'fec1'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'fec2'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'caja1'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'caja2'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'cajero1'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'cajero2'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'des_numero, des_fecha, des_monto, des_status'
      'from'
      'desembolsos'
      'where'
      'emp_codigo = :emp'
      'and suc_codigo = :suc'
      
        'and des_fecha between convert(datetime,:fec1,105) and convert(da' +
        'tetime,:fec2,105)'
      'and des_caja between :caja1 and :caja2'
      'and caj_codigo between :cajero1 and :cajero2'
      'order by'
      'des_numero')
    Left = 504
    Top = 168
    object QDesembolsosdes_numero: TIntegerField
      FieldName = 'des_numero'
    end
    object QDesembolsosdes_fecha: TDateTimeField
      FieldName = 'des_fecha'
    end
    object QDesembolsosdes_monto: TBCDField
      FieldName = 'des_monto'
      currency = True
      Precision = 15
      Size = 2
    end
    object QDesembolsosdes_status: TStringField
      FieldName = 'des_status'
      Size = 3
    end
  end
  object dsDesem: TDataSource
    DataSet = QDesembolsos
    Left = 536
    Top = 168
  end
  object QRecibos: TADOQuery
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
        Name = 'fec1'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'fec2'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'caja1'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'caja2'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'cajero1'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'cajero2'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'rec_numero, rec_fecha, rec_monto, rec_status, rec_retencion'
      'from'
      'recibos'
      'where'
      'emp_codigo = :emp'
      'and suc_codigo = :suc'
      
        'and rec_fecha between convert(datetime, :fec1, 105) and convert(' +
        'datetime, :fec2, 105)'
      'and rec_caja between :caja1 and :caja2'
      'and caj_codigo between :cajero1 and :cajero2'
      'order by'
      'rec_numero')
    Left = 296
    Top = 320
    object QRecibosrec_numero: TIntegerField
      FieldName = 'rec_numero'
    end
    object QRecibosrec_fecha: TDateTimeField
      FieldName = 'rec_fecha'
    end
    object QRecibosrec_monto: TBCDField
      FieldName = 'rec_monto'
      currency = True
      Precision = 15
      Size = 2
    end
    object QRecibosrec_status: TStringField
      FieldName = 'rec_status'
      Size = 3
    end
    object QRecibosrec_retencion: TBCDField
      FieldName = 'rec_retencion'
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object dsRecibos: TDataSource
    DataSet = QRecibos
    Left = 328
    Top = 320
  end
  object QItbis: TADOQuery
    Connection = DM.ADOSigma
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
        Name = 'forma1'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'forma2'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = Null
      end
      item
        Name = 'fec1'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'fec2'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'caja1'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'caja2'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'cajero1'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'cajero2'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'sum(fac_itbis) as itbis'
      'from'
      'facturas'
      'where'
      'emp_codigo = :emp_codigo'
      'and suc_codigo = :suc_codigo'
      'and fac_forma between :forma1 and :forma2'
      
        'and fac_fecha between convert(datetime,:fec1,105) and convert(da' +
        'tetime,:fec2,105)'
      'and fac_caja between :caja1 and :caja2'
      'and caj_codigo between :cajero1 and :cajero2'
      'AND (FAC_HOLD <> '#39'True'#39' or FAC_HOLD is null)')
    Left = 408
    Top = 344
    object QItbisitbis: TBCDField
      FieldName = 'itbis'
      ReadOnly = True
      currency = True
      Precision = 32
      Size = 2
    end
  end
end
