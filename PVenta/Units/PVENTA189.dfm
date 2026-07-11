object frmAnalisisCompra_Venta: TfrmAnalisisCompra_Venta
  Left = 276
  Top = 189
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'An'#225'lisis de Compra y Venta'
  ClientHeight = 411
  ClientWidth = 691
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnPaint = FormPaint
  DesignSize = (
    691
    411)
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 76
    Height = 13
    Caption = 'Rango de fecha'
  end
  object Label3: TLabel
    Left = 8
    Top = 32
    Width = 50
    Height = 13
    Caption = 'Proveedor'
  end
  object btProveedor: TSpeedButton
    Left = 126
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
    OnClick = btProveedorClick
  end
  object btFamilia: TSpeedButton
    Left = 126
    Top = 55
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
    OnClick = btFamiliaClick
  end
  object Label5: TLabel
    Left = 8
    Top = 56
    Width = 32
    Height = 13
    Caption = 'Familia'
  end
  object btDepto: TSpeedButton
    Left = 126
    Top = 79
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
    OnClick = btDeptoClick
  end
  object Label27: TLabel
    Left = 8
    Top = 80
    Width = 69
    Height = 13
    Caption = 'Departamento'
  end
  object btgondolero: TSpeedButton
    Left = 126
    Top = 103
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
    OnClick = btgondoleroClick
  end
  object Label17: TLabel
    Left = 8
    Top = 104
    Width = 29
    Height = 13
    Caption = 'Pasillo'
  end
  object Fecha1: TDateTimePicker
    Left = 88
    Top = 8
    Width = 81
    Height = 21
    Date = 37626.000000000000000000
    Time = 37626.000000000000000000
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Fecha2: TDateTimePicker
    Left = 168
    Top = 8
    Width = 81
    Height = 21
    Date = 37626.000000000000000000
    Time = 37626.000000000000000000
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object edProveedor: TEdit
    Left = 88
    Top = 32
    Width = 33
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
    OnChange = edProveedorChange
    OnKeyDown = edProveedorKeyDown
  end
  object tProveedor: TEdit
    Left = 152
    Top = 32
    Width = 369
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
    TabOrder = 3
  end
  object tFamilia: TEdit
    Left = 152
    Top = 56
    Width = 369
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
  object tDepto: TEdit
    Left = 152
    Top = 80
    Width = 369
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
    TabOrder = 5
  end
  object edDepto: TEdit
    Left = 88
    Top = 80
    Width = 33
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnChange = edDeptoChange
    OnKeyDown = edDeptoKeyDown
  end
  object edFamilia: TEdit
    Left = 88
    Top = 56
    Width = 33
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnChange = edFamiliaChange
    OnKeyDown = edFamiliaKeyDown
  end
  object btClose: TBitBtn
    Left = 600
    Top = 376
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Salir'
    TabOrder = 9
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
  object DBGrid1: TDBGrid
    Left = 8
    Top = 192
    Width = 675
    Height = 178
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dsAnalisis
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 10
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Nombre'
        Width = 333
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cant_Vendida'
        Title.Alignment = taCenter
        Title.Caption = 'Cant. Vendido'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total_Vendido'
        Title.Alignment = taCenter
        Title.Caption = 'Total Vendido'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cant_Compra'
        Title.Alignment = taCenter
        Title.Caption = 'Cant. Comprado'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total_Compra'
        Title.Alignment = taCenter
        Title.Caption = 'Total Comprado'
        Width = 81
        Visible = True
      end>
  end
  object btRefresh: TBitBtn
    Left = 440
    Top = 376
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Refrescar'
    TabOrder = 11
    OnClick = btRefreshClick
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 132
    Width = 513
    Height = 53
    Caption = 'Productos seleccionados'
    TabOrder = 12
    object lNombres: TListBox
      Left = 2
      Top = 15
      Width = 509
      Height = 36
      Align = alClient
      BevelKind = bkFlat
      BorderStyle = bsNone
      ItemHeight = 13
      TabOrder = 0
    end
  end
  object BitBtn1: TBitBtn
    Left = 312
    Top = 376
    Width = 121
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Buscar producto'
    TabOrder = 13
    OnClick = BitBtn1Click
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
      0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000000000000000000000000000000000000000000FF00FF0000000000FFFF
      FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
      FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0000000000FFFFFF00000000000000000000000000FF00FF00000000000000
      00000000000000000000000000000000000000000000FF00FF00000000000000
      00000000000000000000000000000000000000000000FF00FF00000000000000
      0000FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FF00FF00000000000000
      0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
      FF000000000000000000000000000000000000000000FF00FF00000000000000
      0000FFFFFF00000000000000000000000000FF00FF000000000000000000FFFF
      FF000000000000000000000000000000000000000000FF00FF00FF00FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF0000000000FFFFFF00000000000000000000000000FF00FF0000000000FFFF
      FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000000000000000000000000000000000000000000FF00FF00000000000000
      0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
      00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
      0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF000000
      00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object lCodigos: TListBox
    Left = 456
    Top = 208
    Width = 73
    Height = 113
    ItemHeight = 13
    TabOrder = 14
    Visible = False
  end
  object Memo1: TMemo
    Left = 24
    Top = 216
    Width = 521
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 15
    Visible = False
  end
  object BitBtn2: TBitBtn
    Left = 184
    Top = 376
    Width = 121
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Eliminar producto'
    TabOrder = 16
    OnClick = BitBtn2Click
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
  object GroupBox2: TGroupBox
    Left = 528
    Top = 24
    Width = 153
    Height = 65
    Caption = 'Total de Compras'
    TabOrder = 17
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 43
      Height = 13
      Caption = 'Cantidad'
    end
    object Label4: TLabel
      Left = 16
      Top = 40
      Width = 24
      Height = 13
      Caption = 'Total'
    end
    object edcantcompra: TEdit
      Left = 64
      Top = 16
      Width = 81
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object edtotcompra: TEdit
      Left = 48
      Top = 40
      Width = 97
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
  end
  object GroupBox3: TGroupBox
    Left = 528
    Top = 96
    Width = 153
    Height = 65
    Caption = 'Total de Ventas'
    TabOrder = 18
    object Label6: TLabel
      Left = 16
      Top = 16
      Width = 43
      Height = 13
      Caption = 'Cantidad'
    end
    object Label7: TLabel
      Left = 16
      Top = 40
      Width = 24
      Height = 13
      Caption = 'Total'
    end
    object edcantventa: TEdit
      Left = 64
      Top = 16
      Width = 81
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object edtotventa: TEdit
      Left = 48
      Top = 40
      Width = 97
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
  end
  object tgondolero: TEdit
    Left = 152
    Top = 104
    Width = 369
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
    TabOrder = 19
  end
  object edGondolero: TEdit
    Left = 88
    Top = 104
    Width = 33
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnChange = edGondoleroChange
    OnKeyDown = edGondoleroKeyDown
  end
  object BitBtn3: TBitBtn
    Left = 520
    Top = 376
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Imprimir'
    TabOrder = 20
    OnClick = BitBtn3Click
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
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 408
    Top = 216
  end
  object QAnalisis: TADOQuery
    Connection = DM.ADOSigma
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'emp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'fec1'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'fec2'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'fam'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'dep'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'sup'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'gon'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'fnd'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select '#9'Codigo, Nombre,'
      #9'sum(isnull(Cant_Vendida,0)) as Cant_Vendida,'
      #9'sum(isnull(Total_Vendido,0)) as Total_Vendido,'
      #9'sum(isnull(Cant_Compra,0)) as Cant_Compra,'
      #9'sum(isnull(Total_Compra,0)) as Total_Compra'
      
        'from '#9'pr_analisis_compra_venta (:emp, :fec1, :fec2, :fam, :dep, ' +
        ':sup, :gon, :fnd)'
      'where 1 = 1')
    Left = 280
    Top = 224
    object QAnalisisCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object QAnalisisNombre: TStringField
      FieldName = 'Nombre'
      Size = 80
    end
    object QAnalisisCant_Vendida: TBCDField
      FieldName = 'Cant_Vendida'
      ReadOnly = True
      DisplayFormat = '###,###,###.00'
      Precision = 32
      Size = 2
    end
    object QAnalisisTotal_Vendido: TBCDField
      FieldName = 'Total_Vendido'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object QAnalisisCant_Compra: TBCDField
      FieldName = 'Cant_Compra'
      ReadOnly = True
      DisplayFormat = '###,###,###.00'
      Precision = 32
      Size = 2
    end
    object QAnalisisTotal_Compra: TBCDField
      FieldName = 'Total_Compra'
      ReadOnly = True
      currency = True
      Precision = 19
    end
  end
  object dsAnalisis: TDataSource
    DataSet = QAnalisis
    Left = 312
    Top = 224
  end
end
