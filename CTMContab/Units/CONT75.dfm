object frmConsComprobantes: TfrmConsComprobantes
  Left = 282
  Top = 232
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Comprobantes fiscales'
  ClientHeight = 450
  ClientWidth = 883
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 883
    Height = 41
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      883
      41)
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 29
      Height = 13
      Caption = 'Fecha'
    end
    object fecha1: TDateTimePicker
      Left = 48
      Top = 8
      Width = 81
      Height = 21
      Date = 40000.000000000000000000
      Time = 40000.000000000000000000
      TabOrder = 0
    end
    object fecha2: TDateTimePicker
      Left = 128
      Top = 8
      Width = 81
      Height = 21
      Date = 40000.000000000000000000
      Time = 40000.000000000000000000
      TabOrder = 1
    end
    object BitBtn3: TBitBtn
      Left = 640
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Refrescar'
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object btClose: TBitBtn
      Left = 802
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Salir'
      TabOrder = 3
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
      Left = 722
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Imprimir'
      TabOrder = 4
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
    object cbtipo: TComboBox
      Left = 216
      Top = 8
      Width = 369
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 5
      Items.Strings = (
        'Todos'
        'Factura de Cr'#233'dito Fiscal (Tipo 01)'
        'Factura de Consumo (Tipo 02)'
        'Notas de D'#233'bito (Tipo 03)'
        'Notas de Cr'#233'dito (Tipo 04)'
        'Registro de Proveedores informales (Tipo 11)'
        'Registro '#218'nico de Ingresos (Tipo 12)'
        'Registro de Gastos Menores (Tipo 13)'
        'Reg'#237'menes Especiales de Tributaci'#243'n (Tipo 14)'
        'Comprobantes Gubernamentales (Tipo 15)'
        'Factura de Cr'#233'dito Fiscal Electr'#243'nica (Tipo 31)'
        'Factura de Consumo Electr'#243'nica (Tipo 32)'
        'Nota de D'#233'bito Electr'#243'nica (Tipo 33)'
        'Nota de Cr'#233'dito Electr'#243'nica (Tipo 34)'
        'Comprobante Electr'#243'nico de Compras (Tipo 41)'
        'Comprobante Electr'#243'nico para Gastos Menores (Tipo 43)'
        'Comprobante Electr'#243'nico para Reg'#237'menes Especiales (Tipo 44)'
        'Comprobante Electr'#243'nico Gubernamental (Tipo 45)'
        'Comprobante Electr'#243'nico para Exportaciones (Tipo 46)'
        'Comprobante Electr'#243'nico para Pagos al Exterior (Tipo 47)')
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 883
    Height = 409
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Por dia'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 875
        Height = 381
        Align = alClient
        DataSource = dsComprobantes
        Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Fecha'
            Title.Alignment = taCenter
            Title.Caption = 'FECHA'
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Desde'
            Title.Alignment = taCenter
            Title.Caption = 'DESDE'
            Width = 121
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Hasta'
            Title.Alignment = taCenter
            Title.Caption = 'HASTA'
            Width = 121
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Total'
            Title.Alignment = taCenter
            Title.Caption = 'TOTAL'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Grabado'
            Title.Alignment = taCenter
            Title.Caption = 'GRABADO'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Itbis'
            Title.Alignment = taCenter
            Title.Caption = 'ITBIS'
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Exento'
            Title.Alignment = taCenter
            Title.Caption = 'EXENTO'
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descuento'
            Title.Caption = 'DESCUENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Propina'
            Title.Caption = 'PROPINA'
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Listado general'
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 875
        Height = 381
        Align = alClient
        DataSource = dsListado
        Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Fecha'
            Title.Alignment = taCenter
            Title.Caption = 'FECHA'
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Desde'
            Title.Alignment = taCenter
            Title.Caption = 'N C F'
            Width = 121
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'rnc'
            Title.Alignment = taCenter
            Title.Caption = 'RNC'
            Width = 117
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Total'
            Title.Alignment = taCenter
            Title.Caption = 'TOTAL'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Grabado'
            Title.Alignment = taCenter
            Title.Caption = 'GRABADO'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Itbis'
            Title.Alignment = taCenter
            Title.Caption = 'ITBIS'
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Exento'
            Title.Alignment = taCenter
            Title.Caption = 'EXENTO'
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Propina'
            Title.Caption = 'PROPINA'
            Visible = True
          end>
      end
    end
  end
  object dsComprobantes: TDataSource
    DataSet = QComprobantes
    Left = 256
    Top = 216
  end
  object dsListado: TDataSource
    DataSet = QListado
    Left = 256
    Top = 248
  end
  object QComprobantes: TADOQuery
    Connection = DM.ADOSigma
    CommandTimeout = 600
    Parameters = <
      item
        Name = 'emp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'tipo'
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
        Name = 'tiporeporte'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'DECLARE @EMP INT, @TIPO INT, @FEC1 DATETIME, @FEC2 DATETIME, @TI' +
        'POREPORTE CHAR(1)'
      ''
      'SET DATEFORMAT YMD'
      ''
      'SET @EMP = :emp'
      'SET @TIPO = :tipo'
      'SET @FEC1= :fec1'
      'SET @FEC2= :fec2'
      'SET @TIPOREPORTE = :tiporeporte'
      ''
      ';WITH CTE AS'
      '('
      '    SELECT'
      '        Fecha,'
      '        ncf_fijo1,'
      '        ncf_fijo2,'
      '        sec1,'
      '        sec2,'
      '        Total,'
      '        Itbis,'
      '        ItbisNC,'
      '        Grabado,'
      '        Exento,'
      '        Descuento,'
      '        Propina,'
      '        monto_8,'
      '        monto_11,'
      '        monto_13,'
      '        monto_16,'
      '        monto_18,'
      '        efectivo,'
      '        cheqtransfdep,'
      '        ventacredito,'
      '        tarjetadebcred,'
      '        otrasformpag,'
      '        ROW_NUMBER() OVER ('
      '            PARTITION BY Fecha, ncf_fijo1'
      '            ORDER BY sec1'
      '        ) AS rn'
      
        '    FROM pr_comprobantes (@emp, @tipo, @fec1, @fec2, @tiporeport' +
        'e)'
      '),'
      'Islas AS'
      '('
      '    -- '#8220'Isla'#8221' = grupo de secuencias consecutivas por d'#237'a y tipo'
      '    SELECT'
      '        *,'
      '        sec1 - rn AS grp'
      '    FROM CTE'
      ')'
      'SELECT  '
      '    Fecha,'
      '    REPLACE(ncf_fijo1,'#39'00000000'#39','#39#39') AS TIPO,'
      '    COUNT(*) AS CANT,'
      ''
      
        '    MIN(ncf_fijo1 + RIGHT('#39'00000000'#39' + CAST(sec1 AS VARCHAR(8)),' +
        ' 8)) AS Desde,'
      
        '    MAX(ncf_fijo2 + RIGHT('#39'00000000'#39' + CAST(sec2 AS VARCHAR(8)),' +
        ' 8)) AS Hasta,'
      ''
      '    SUM(Total)      AS Total,'
      '    SUM(Itbis)      AS Itbis,'
      '    SUM(ItbisNC)      AS ItbisNC,'
      '    SUM(Grabado)    AS Grabado,'
      '    SUM(Exento)     AS Exento,'
      '    SUM(Descuento)  AS Descuento,'
      '    SUM(Propina)    AS Propina,'
      ''
      '    0.00            AS Itbis0,'
      '    SUM(monto_8)    AS Itbis8,'
      '    SUM(monto_11)   AS Itbis11,'
      '    SUM(monto_13)   AS Itbis13,'
      '    SUM(monto_16)   AS Itbis16,'
      '    SUM(monto_18)   AS Itbis18,'
      ''
      '    SUM(efectivo)       AS efectivo,'
      '    SUM(cheqtransfdep)  AS ckdep,'
      '    SUM(ventacredito)   AS credito,'
      '    SUM(tarjetadebcred) AS tarjetas,'
      '    SUM(otrasformpag)   AS otras'
      'FROM Islas'
      'GROUP BY '
      '    Fecha,'
      '    ncf_fijo1,'
      '    grp'
      'ORDER BY '
      '    Fecha,'
      '    ncf_fijo1,'
      '    MIN(sec1);')
    Left = 224
    Top = 216
    object QComprobantesFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object QComprobantesDesde: TStringField
      FieldName = 'Desde'
      ReadOnly = True
      Size = 8000
    end
    object QComprobantesHasta: TStringField
      FieldName = 'Hasta'
      ReadOnly = True
      Size = 8000
    end
    object QComprobantesTotal: TBCDField
      FieldName = 'Total'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object QComprobantesItbis: TBCDField
      FieldName = 'Itbis'
      ReadOnly = True
      currency = True
      Precision = 32
    end
    object QComprobantesGrabado: TBCDField
      FieldName = 'Grabado'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object QComprobantesExento: TBCDField
      FieldName = 'Exento'
      ReadOnly = True
      currency = True
      Precision = 19
    end
    object QComprobantesDescuento: TCurrencyField
      FieldName = 'Descuento'
    end
    object QComprobantesItbis0: TCurrencyField
      FieldName = 'Itbis0'
    end
    object QComprobantesItbis8: TCurrencyField
      FieldName = 'Itbis8'
    end
    object QComprobantesItbis11: TCurrencyField
      FieldName = 'Itbis11'
    end
    object QComprobantesItbis13: TCurrencyField
      FieldName = 'Itbis13'
    end
    object QComprobantesItbis16: TCurrencyField
      FieldName = 'Itbis16'
    end
    object QComprobantesItbis18: TCurrencyField
      FieldName = 'Itbis18'
    end
    object QComprobantesefectivo: TCurrencyField
      FieldName = 'efectivo'
    end
    object QComprobantesckdep: TCurrencyField
      FieldName = 'ckdep'
    end
    object QComprobantescredito: TCurrencyField
      FieldName = 'credito'
    end
    object QComprobantestarjetas: TCurrencyField
      FieldName = 'tarjetas'
    end
    object QComprobantesTIPO: TStringField
      FieldName = 'TIPO'
      Size = 3
    end
    object QComprobantesItbisNC: TCurrencyField
      FieldName = 'ItbisNC'
    end
    object QComprobantesCANT: TIntegerField
      FieldName = 'CANT'
    end
    object QComprobantesotras: TCurrencyField
      FieldName = 'otras'
    end
    object QComprobantesPropina: TCurrencyField
      FieldName = 'Propina'
    end
  end
  object QListado: TADOQuery
    Connection = DM.ADOSigma
    CommandTimeout = 600
    Parameters = <
      item
        Name = 'emp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'tipo'
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
        Name = 'tiporeporte'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select '#9'Fecha, ncf_fijo1+replicate('#39'0'#39',8-len(cast(sec1 as varcha' +
        'r(8))))+cast(sec1 as varchar(8)) as Desde,'
      #39'A'#39' as Hasta,'
      
        'Total, Itbis, ItbisNC, Grabado, Exento,Propina, rnc, Descuento, ' +
        '1 CANT,'
      
        '0.00 Itbis0, monto_8 Itbis8, monto_11 Itbis11, monto_13 Itbis13,' +
        ' monto_16 Itbis16, monto_18 Itbis18, otrasformpag otras,'
      
        'efectivo, cheqtransfdep ckdep, ventacredito credito, tarjetadebc' +
        'red  tarjetas, replace(ncf_fijo1,'#39'00000000'#39','#39#39')TIPO'
      'from'#9'pr_comprobantes (:emp, :tipo, :fec1, :fec2, :tiporeporte)'
      
        'group'#9'by Fecha, ncf_fijo1, sec1, total, itbis, ItbisNC, grabado,' +
        ' exento, rnc, descuento, monto_8, monto_11, monto_13,  PROPINA,'
      
        'monto_16, monto_18, efectivo, cheqtransfdep, ventacredito, tarje' +
        'tadebcred, otrasformpag'
      'order'#9'by 1'
      ''
      '')
    Left = 224
    Top = 248
    object QListadornc: TStringField
      FieldName = 'rnc'
    end
    object QListadoFecha: TDateField
      FieldName = 'Fecha'
    end
    object QListadoDesde: TStringField
      FieldName = 'Desde'
    end
    object QListadoHasta: TStringField
      FieldName = 'Hasta'
    end
    object QListadoTotal: TFloatField
      FieldName = 'Total'
      currency = True
    end
    object QListadoItbis: TFloatField
      FieldName = 'Itbis'
      currency = True
    end
    object QListadoGrabado: TFloatField
      FieldName = 'Grabado'
      currency = True
    end
    object QListadoExento: TFloatField
      FieldName = 'Exento'
      currency = True
    end
    object QListadoDescuento: TCurrencyField
      FieldName = 'Descuento'
    end
    object QListadotarjetas: TCurrencyField
      FieldName = 'tarjetas'
    end
    object QListadocredito: TCurrencyField
      FieldName = 'credito'
    end
    object QListadockdep: TCurrencyField
      FieldName = 'ckdep'
    end
    object QListadoefectivo: TCurrencyField
      FieldName = 'efectivo'
    end
    object QListadoItbis18: TCurrencyField
      FieldName = 'Itbis18'
    end
    object QListadoItbis13: TCurrencyField
      FieldName = 'Itbis13'
    end
    object QListadoItbis16: TCurrencyField
      FieldName = 'Itbis16'
    end
    object QListadoItbis11: TCurrencyField
      FieldName = 'Itbis11'
    end
    object QListadoItbis8: TCurrencyField
      FieldName = 'Itbis8'
    end
    object QListadoItbis0: TCurrencyField
      FieldName = 'Itbis0'
    end
    object QListadoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 3
    end
    object QListadoItbisNC: TCurrencyField
      FieldName = 'ItbisNC'
    end
    object QListadoCANT: TIntegerField
      FieldName = 'CANT'
    end
    object QListadootras: TCurrencyField
      FieldName = 'otras'
    end
    object QListadoPropina: TCurrencyField
      FieldName = 'Propina'
    end
  end
  object QUpdNC: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    SQL.Strings = (
      'UPDATE NotasCredito'
      'SET NCF =  D.NCF'
      'from NotasCredito NC'
      
        'inner join Devolucion D on NC.emp_codigo = d.emp_codigo and nc.s' +
        'uc_codigo = d.suc_codigo and nc.ncr_devolucion = d.dev_numero'
      'where nc.NCF IS NULL')
    Left = 312
    Top = 288
  end
end
