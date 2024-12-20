object frmEstadoCtaCli: TfrmEstadoCtaCli
  Left = 491
  Top = 271
  ActiveControl = edTipo
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Estado de cuentas de clientes'
  ClientHeight = 312
  ClientWidth = 540
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  DesignSize = (
    540
    312)
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 112
    Top = 34
    Width = 47
    Height = 14
    Caption = 'Vendedor'
  end
  object Label2: TLabel
    Left = 112
    Top = 60
    Width = 65
    Height = 14
    Caption = 'Cliente desde'
  end
  object Label3: TLabel
    Left = 112
    Top = 86
    Width = 62
    Height = 14
    Caption = 'Cliente hasta'
  end
  object btVendedor: TSpeedButton
    Left = 254
    Top = 34
    Width = 25
    Height = 24
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
    OnClick = btVendedorClick
  end
  object SpeedButton2: TSpeedButton
    Left = 254
    Top = 60
    Width = 25
    Height = 24
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
  object SpeedButton1: TSpeedButton
    Left = 254
    Top = 86
    Width = 25
    Height = 24
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
  object Label4: TLabel
    Left = 112
    Top = 172
    Width = 59
    Height = 14
    Caption = 'Ordenar por'
  end
  object Label5: TLabel
    Left = 370
    Top = 172
    Width = 30
    Height = 14
    Caption = 'Fecha'
  end
  object Label12: TLabel
    Left = 112
    Top = 9
    Width = 20
    Height = 14
    Caption = 'Tipo'
  end
  object btTipo: TSpeedButton
    Left = 254
    Top = 9
    Width = 25
    Height = 23
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
    OnClick = btTipoClick
  end
  object Label14: TLabel
    Left = 112
    Top = 112
    Width = 38
    Height = 14
    Caption = 'Moneda'
  end
  object btmoneda: TSpeedButton
    Left = 254
    Top = 112
    Width = 25
    Height = 24
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
    OnClick = btmonedaClick
  end
  object edVendedor: TEdit
    Left = 190
    Top = 34
    Width = 61
    Height = 23
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnChange = edVendedorChange
    OnKeyDown = edVendedorKeyDown
  end
  object tVendedor: TEdit
    Left = 281
    Top = 34
    Width = 247
    Height = 23
    BevelKind = bkFlat
    BorderStyle = bsNone
    Color = clInfoBk
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object edDesde: TEdit
    Left = 190
    Top = 60
    Width = 61
    Height = 23
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnChange = edDesdeChange
    OnKeyDown = edDesdeKeyDown
  end
  object tDesde: TEdit
    Left = 281
    Top = 60
    Width = 247
    Height = 23
    BevelKind = bkFlat
    BorderStyle = bsNone
    Color = clInfoBk
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object edHasta: TEdit
    Left = 190
    Top = 86
    Width = 61
    Height = 23
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnChange = edHastaChange
    OnKeyDown = edHastaKeyDown
  end
  object tHasta: TEdit
    Left = 281
    Top = 86
    Width = 247
    Height = 23
    BevelKind = bkFlat
    BorderStyle = bsNone
    Color = clInfoBk
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object btClose: TBitBtn
    Left = 414
    Top = 276
    Width = 113
    Height = 27
    Caption = '&Salir'
    TabOrder = 11
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
  object btPrint: TBitBtn
    Left = 414
    Top = 207
    Width = 113
    Height = 27
    Caption = 'Imprimir'
    TabOrder = 10
    OnClick = btPrintClick
    Glyph.Data = {
      66010000424D6601000000000000760000002800000014000000140000000100
      040000000000F000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
      DDDDDDDD0000DDDDDDDDDDDDDDDDDDDD0000DD000DDDDDDDDDD000DD0000D000
      000000000000000D0000D0F8888888888888880D0000D0F8888888888888880D
      0000D0F8888888822899880D0000D0FFFFFFFFFFFFFFFF0D0000D70077777777
      7777007D0000DDD00000000000000DDD0000DDD00FFFFFFFFFF00DDD0000DDDD
      0F00000000F0DDDD0000DDDD0FFFFFFFFFF0DDDD0000DDDD0F00000000F0DDDD
      0000DDDD0FFFFFFFFFF0DDDD0000DDDD0F00FFFFFFF0DDDD0000DDDD0FFFFFFF
      FFF0DDDD0000DDDD000000000000DDDD0000DDDDDDDDDDDDDDDDDDDD0000DDDD
      DDDDDDDDDDDDDDDD0000}
  end
  object cbStatus: TRadioGroup
    Left = 9
    Top = 9
    Width = 95
    Height = 70
    Caption = 'Status'
    ItemIndex = 0
    Items.Strings = (
      'Todos'
      'Activos'
      'Inactivos')
    TabOrder = 12
  end
  object cbBalance: TRadioGroup
    Left = 9
    Top = 86
    Width = 95
    Height = 87
    Caption = 'Balance'
    ItemIndex = 0
    Items.Strings = (
      'Todos'
      '= 0'
      '> 0'
      '< 0')
    TabOrder = 13
  end
  object cbOrden: TComboBox
    Left = 190
    Top = 172
    Width = 113
    Height = 22
    Style = csDropDownList
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 14
    ItemIndex = 0
    ParentFont = False
    TabOrder = 8
    Text = 'C'#243'digo'
    Items.Strings = (
      'C'#243'digo'
      'Referencia'
      'Nombre'
      'Cedula'
      'RNC')
  end
  object Fecha: TDateTimePicker
    Left = 414
    Top = 172
    Width = 113
    Height = 22
    Date = 37607.000000000000000000
    Time = 37607.000000000000000000
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object ckPagina: TCheckBox
    Left = 121
    Top = 215
    Width = 216
    Height = 19
    Caption = 'Imprimir una p'#225'gina por cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
  end
  object ckMov: TCheckBox
    Left = 121
    Top = 233
    Width = 216
    Height = 18
    Caption = 'Solo movimientos pendientes'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    State = cbChecked
    TabOrder = 15
    OnClick = ckMovClick
  end
  object ckmail: TCheckBox
    Left = 121
    Top = 250
    Width = 104
    Height = 18
    Caption = 'Enviar por email'
    TabOrder = 16
  end
  object tTipo: TEdit
    Left = 281
    Top = 9
    Width = 247
    Height = 22
    BevelKind = bkFlat
    BorderStyle = bsNone
    Color = clInfoBk
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 17
  end
  object edTipo: TEdit
    Left = 190
    Top = 9
    Width = 61
    Height = 22
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = edTipoChange
    OnKeyDown = edTipoKeyDown
  end
  object edmoneda: TEdit
    Left = 190
    Top = 112
    Width = 61
    Height = 23
    TabStop = False
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object tmoneda: TEdit
    Left = 281
    Top = 112
    Width = 247
    Height = 23
    BevelKind = bkFlat
    BorderStyle = bsNone
    Color = clInfoBk
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 18
  end
  object btConsolidado: TBitBtn
    Left = 414
    Top = 241
    Width = 113
    Height = 27
    Anchors = [akTop, akRight]
    Caption = 'Consolidado'
    TabOrder = 19
    OnClick = btConsolidadoClick
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
  object ChkB_cksucursal: TCheckBox
    Left = 113
    Top = 140
    Width = 69
    Height = 18
    Caption = 'Sucursal'
    TabOrder = 20
  end
  object dblkcbb1: TDBLookupComboBox
    Left = 182
    Top = 139
    Width = 345
    Height = 22
    DropDownRows = 20
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'suc_codigo'
    ListField = 'suc_nombre'
    ListSource = DS_Suc
    ParentFont = False
    TabOrder = 21
  end
  object mmo1: TMemo
    Left = 146
    Top = 312
    Width = 200
    Height = 96
    Lines.Strings = (
      'mmo1')
    TabOrder = 22
    Visible = False
  end
  object mmoCliente0: TMemo
    Left = 52
    Top = 439
    Width = 199
    Height = 96
    Lines.Strings = (
      '  AND CLI_CODIGO IN '
      '(select DISTINCT M.cli_codigo from '
      'MOVIMIENTOS M'
      ' where M.emp_codigo = '
      '@EMPRESA AND M.mov_fecha <= '
      '@FECHA AND M.MOV_STATUS <> '
      #39'ANU'#39' AND CLI_CODIGO = '
      'C.CLI_CODIGO'
      ' GROUP BY M.CLI_CODIGO, '
      'M.MOV_TIPO, M.suc_codigo, '
      'M.MOV_NUMERO, M.mov_monto'
      ' HAVING (M.mov_monto- (ISNULL'
      '((select SUM(det_MONTO) from '
      'Det_Recibo DR'
      '                       inner join recibos R on '
      'dr.emp_codigo = r.emp_codigo and '
      'dr.suc_codigo = r.suc_codigo and '
      #9#9#9#9
      #9'   dr.rec_numero = '
      'r.rec_numero and r.rec_fecha <= '
      '@FECHA AND R.suc_codigo = '
      'M.suc_codigo '
      #9#9#9#9
      #9'   AND DR.det_numero = '
      'm.mov_numero AND R.rec_status <> '
      #39'ANU'#39' AND CLI_CODIGO = '
      'C.CLI_CODIGO),0)+'
      #9#9#9#9
      #9'   ISNULL((select SUM'
      '(ncr_montousado) from NotasCredito '
      'NC'
      #9#9#9#9
      #9'           WHERE '
      'NC.ncr_status <> '#39'ANU'#39' AND '
      'mov_tipo = M.mov_tipo '
      #9#9#9#9
      #9#9#9'   AND '
      'NC.fac_numero = M.mov_numero '
      'AND NC.cli_codigo = '
      'M.CLI_CODIGO'
      #9#9#9#9
      #9#9#9'   AND '
      'NC.suc_codigo = '
      'M.suc_codigo'
      'AND CLI_CODIGO = C.CLI_CODIGO'
      'AND NC.NCR_FECHA<= '
      '@FECHA),0)))=0)')
    TabOrder = 23
    Visible = False
  end
  object mmoClientemas0: TMemo
    Left = 112
    Top = 493
    Width = 199
    Height = 96
    Lines.Strings = (
      '  AND CLI_CODIGO IN '
      '(select DISTINCT M.cli_codigo from '
      'MOVIMIENTOS M'
      ' where M.emp_codigo = '
      '@EMPRESA AND M.mov_fecha <= '
      '@FECHA AND M.MOV_STATUS <> '
      #39'ANU'#39' AND CLI_CODIGO = '
      'C.CLI_CODIGO'
      ' GROUP BY M.CLI_CODIGO, '
      'M.MOV_TIPO, M.suc_codigo, '
      'M.MOV_NUMERO, M.mov_monto'
      ' HAVING (M.mov_monto- (ISNULL'
      '((select SUM(det_MONTO) from '
      'Det_Recibo DR'
      '                       inner join recibos R on '
      'dr.emp_codigo = r.emp_codigo and '
      'dr.suc_codigo = r.suc_codigo and '
      #9#9#9#9
      #9'   dr.rec_numero = '
      'r.rec_numero and r.rec_fecha <= '
      '@FECHA AND R.suc_codigo = '
      'M.suc_codigo '
      #9#9#9#9
      #9'   AND DR.det_numero = '
      'm.mov_numero AND R.rec_status <> '
      #39'ANU'#39' AND CLI_CODIGO = '
      'C.CLI_CODIGO),0)+'
      #9#9#9#9
      #9'   ISNULL((select SUM'
      '(ncr_montousado) from NotasCredito '
      'NC'
      #9#9#9#9
      #9'           WHERE '
      'NC.ncr_status <> '#39'ANU'#39' AND '
      'mov_tipo = M.mov_tipo '
      #9#9#9#9
      #9#9#9'   AND '
      'NC.fac_numero = M.mov_numero '
      'AND NC.cli_codigo = '
      'M.CLI_CODIGO'
      #9#9#9#9
      #9#9#9'   AND '
      'NC.suc_codigo = '
      'M.suc_codigo'
      'AND CLI_CODIGO = C.CLI_CODIGO'
      'AND NC.NCR_FECHA<= '
      '@FECHA),0)))>0)')
    TabOrder = 24
    Visible = False
  end
  object mmoClientemenos0: TMemo
    Left = 319
    Top = 485
    Width = 199
    Height = 95
    Lines.Strings = (
      '  AND CLI_CODIGO IN '
      '(select DISTINCT M.cli_codigo from '
      'MOVIMIENTOS M'
      ' where M.emp_codigo = '
      '@EMPRESA AND M.mov_fecha <= '
      '@FECHA AND M.MOV_STATUS <> '
      #39'ANU'#39' AND CLI_CODIGO = '
      'C.CLI_CODIGO'
      ' GROUP BY M.CLI_CODIGO, '
      'M.MOV_TIPO, M.suc_codigo, '
      'M.MOV_NUMERO, M.mov_monto'
      ' HAVING (M.mov_monto- (ISNULL'
      '((select SUM(det_MONTO) from '
      'Det_Recibo DR'
      '                       inner join recibos R on '
      'dr.emp_codigo = r.emp_codigo and '
      'dr.suc_codigo = r.suc_codigo and '
      #9#9#9#9
      #9'   dr.rec_numero = '
      'r.rec_numero and r.rec_fecha <= '
      '@FECHA AND R.suc_codigo = '
      'M.suc_codigo '
      #9#9#9#9
      #9'   AND DR.det_numero = '
      'm.mov_numero AND R.rec_status <> '
      #39'ANU'#39' AND CLI_CODIGO = '
      'C.CLI_CODIGO),0)+'
      #9#9#9#9
      #9'   ISNULL((select SUM'
      '(ncr_montousado) from NotasCredito '
      'NC'
      #9#9#9#9
      #9'           WHERE '
      'NC.ncr_status <> '#39'ANU'#39' AND '
      'mov_tipo = M.mov_tipo '
      #9#9#9#9
      #9#9#9'   AND '
      'NC.fac_numero = M.mov_numero '
      'AND NC.cli_codigo = '
      'M.CLI_CODIGO'
      #9#9#9#9
      #9#9#9'   AND '
      'NC.suc_codigo = '
      'M.suc_codigo'
      'AND CLI_CODIGO = C.CLI_CODIGO'
      'AND NC.NCR_FECHA<= '
      '@FECHA),0)))<0)')
    TabOrder = 25
    Visible = False
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 376
    Top = 40
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
    Left = 32
    Top = 184
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
  object DS_Suc: TDataSource
    DataSet = QSucursal
    Left = 64
    Top = 184
  end
end
