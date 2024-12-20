object frmListadoProdFalt: TfrmListadoProdFalt
  Left = 353
  Top = 147
  Width = 974
  Height = 665
  Caption = 'Listado Productos Faltantes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object grp1: TGroupBox
    Left = 0
    Top = 521
    Width = 958
    Height = 105
    Align = alBottom
    TabOrder = 0
    object RG_BusqProd: TRadioGroup
      Left = 2
      Top = 15
      Width = 151
      Height = 88
      Align = alLeft
      Caption = 'Busqueda Productos Por'
      ItemIndex = 0
      Items.Strings = (
        'Codigo'
        'Ref. Original'
        'Ref. Fabricante')
      TabOrder = 0
    end
    object RG_Suplidor: TRadioGroup
      Left = 153
      Top = 15
      Width = 151
      Height = 88
      Align = alLeft
      Caption = 'Estatus Impresion'
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'Suplidor')
      TabOrder = 1
      OnClick = RG_SuplidorClick
    end
    object grp2: TGroupBox
      Left = 304
      Top = 15
      Width = 449
      Height = 88
      Align = alLeft
      Caption = 'Suplidor'
      TabOrder = 2
      object LB_1: TLabel
        Left = 16
        Top = 24
        Width = 49
        Height = 13
        Caption = 'Proveedor'
      end
      object btProveedor: TSpeedButton
        Left = 118
        Top = 19
        Width = 23
        Height = 22
        Flat = True
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
          0000FFFFFF00000000000000000000000000C0C0C0000000000000000000FFFF
          FF000000000000000000000000000000000000000000FF00FF00000000000000
          0000FFFFFF00000000000000000000000000C0C0C0000000000000000000FFFF
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
        OnClick = btProveedorClick
      end
      object edProveedor: TEdit
        Left = 68
        Top = 19
        Width = 46
        Height = 21
        TabOrder = 0
        OnClick = edProveedorClick
        OnKeyDown = edProveedorKeyDown
      end
      object edProveedorN: TEdit
        Left = 68
        Top = 43
        Width = 373
        Height = 21
        Color = clInfoBk
        ReadOnly = True
        TabOrder = 1
      end
    end
    object btnImprimir: TBitBtn
      Left = 768
      Top = 24
      Width = 80
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 3
      OnClick = btnImprimirClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000EDD8C8EDD8C8
        EDD8C8EDD8C8EDD8C8A08870907860807060807060807060807060EDD8C8EDD8
        C8EDD8C8EDD8C8EDD8C8EDD7C6EDD7C6EDD7C6EDD7C6EDD7C6A09080FFFFFFFF
        FFFFFFF8FFFFF8FF807060EDD7C6EDD7C6EDD7C6EDD7C6EDD7C6C1B3B0908890
        706060504850505050A09080FFFFFFF0D8B0F0D8B0F0D8B08070605050505048
        50706060706860968F8A909090909890A0A0A0403840403840A09080FFFFFFFF
        E8D0E07850F0D8B0807060403840403840909090909090706860909090A0A0A0
        909890403840403840908870E0E8E0F0E0B0F0D8B0F0D8B08070604038404038
        40A0A0A0A0A0A070686090889090889090889070707070707070707070707070
        7070707070707070707070707070707070908890908080706860908890C0B8C0
        D0C8D0808880B0A8B0B0A8B0B0A8B0B0A8B0B0B0B0B0B0B0B0B0B0B0B0B08078
        80C0C8C0B0B0B0706860909090D0D0D0D0C8D0808880B0A8B0B0A8B0B0A8B0B0
        A8B0FFA860FFA860FFA860B0B0B0807880C0C8C0C0C0C0706860909090F0F8F0
        F0F0F0A0A0A0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D09098
        90F0F0F0F0E8F0706860A098A0FFFFFFFFFFFF909090E0D8E0E0D8E0E0D8E0E0
        D8E0E0D8E0C0D0D080A090406850205030A0B0A0E0E8E0706860D3C8BFB0B0B0
        B0B0B090909090909090909090909090909090889050706030784060B08050B0
        70307840507060B7B1A5F2DECFF2DECFF2DECF8C847F706870B09080FFFFFFFF
        FFFFFFF8FF407850A0D0B0F0FFFFC0E0D040B0703B673FF2DECFF2E0D2F2E0D2
        F2E0D2A09790505850B09080FFFFFFFFFFFFFFF8FF508050FFFFFF50B870FFF8
        FF90C8903B674BF2E0D2F4E2D5F4E2D5F4E2D5F4E2D5F4E2D5B09080FFFFFFFF
        FFFFFFFFFFA0B0A030804040B07040A850FFFFFF82AE84F4E2D5F5E5D8F5E5D8
        F5E5D8F5E5D8F5E5D8B09080FFFFFFFFFFFFFFFFFFF0F0F05060403C68413C68
        418EB585C5DDB8F5E5D8F7E7DBF7E7DBF7E7DBF7E7DBF7E7DBB09080B09080B0
        9080B09080B09080B09080F7E7DBF7E7DBF7E7DBF7E7DBF7E7DB}
    end
    object btnSalir: TBitBtn
      Left = 864
      Top = 24
      Width = 80
      Height = 25
      Caption = '&Salir'
      TabOrder = 4
      OnClick = btnSalirClick
      Kind = bkClose
    end
    object btnFind: TBitBtn
      Left = 770
      Top = 56
      Width = 175
      Height = 25
      Caption = '&Buscar Producto'
      TabOrder = 5
      OnClick = btnFindClick
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
        0000FFFFFF00000000000000000000000000C0C0C0000000000000000000FFFF
        FF000000000000000000000000000000000000000000FF00FF00000000000000
        0000FFFFFF00000000000000000000000000C0C0C0000000000000000000FFFF
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
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 958
    Height = 521
    Align = alClient
    TabOrder = 1
    OnExit = cxGrid1Exit
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnKeyPress = cxGrid1DBTableView1KeyPress
      NavigatorButtons.ConfirmDelete = False
      OnEditKeyDown = cxGrid1DBTableView1EditKeyDown
      DataController.DataSource = DS_1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Appending = True
      OptionsView.ScrollBars = ssHorizontal
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1pro_codigo: TcxGridDBColumn
        Caption = 'Cod Producto'
        DataBinding.FieldName = 'pro_codigo'
        Width = 85
      end
      object cxGrid1DBTableView1pro_nombre: TcxGridDBColumn
        Caption = 'Nombre Producto'
        DataBinding.FieldName = 'pro_nombre'
        Width = 405
      end
      object cxGrid1DBTableView1sup_codigo: TcxGridDBColumn
        Caption = 'Cod Suplidor'
        DataBinding.FieldName = 'sup_codigo'
        Width = 70
      end
      object cxGrid1DBTableView1sup_nombre: TcxGridDBColumn
        Caption = 'Nombre Suplidro'
        DataBinding.FieldName = 'sup_nombre'
        Width = 318
      end
      object cxGrid1DBTableView1pedido: TcxGridDBColumn
        Caption = 'Pedido'
        DataBinding.FieldName = 'pedido'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Width = 54
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object MD_1: TdxMemData
    Indexes = <>
    SortOptions = []
    BeforePost = MD_1BeforePost
    OnNewRecord = MD_1NewRecord
    Left = 288
    Top = 200
    object MD_1emp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object MD_1suc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object MD_1pro_codigo: TStringField
      FieldName = 'pro_codigo'
      Size = 10
    end
    object MD_1pro_nombre: TStringField
      FieldName = 'pro_nombre'
      Size = 100
    end
    object MD_1pedido: TBooleanField
      FieldName = 'pedido'
    end
    object MD_1sup_codigo: TIntegerField
      FieldName = 'sup_codigo'
    end
    object MD_1sup_nombre: TStringField
      FieldName = 'sup_nombre'
      Size = 100
    end
  end
  object DS_1: TDataSource
    DataSet = MD_1
    Left = 320
    Top = 200
  end
  object QSelectProd: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 48
    Top = 64
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
    Left = 48
    Top = 96
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
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 48
    Top = 128
  end
  object Rpt_1: TfrxReport
    Version = '4.13.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43379.298585995400000000
    ReportOptions.LastChange = 43379.298585995400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 256
    Top = 280
    Datasets = <
      item
        DataSet = DM.DB_CIA
        DataSetName = 'DB_CIA'
      end
      item
        DataSet = DB_Impresion
        DataSetName = 'DB_Impresion'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Top = 3.779530000000000000
          Width = 529.134200000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[DB_CIA."EMP_NOMBRE"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Top = 49.133890000000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Listado de Productos Faltantes para la Compra')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 15.118120000000000000
        Top = 162.519790000000000000
        Width = 740.409927000000000000
        DataSet = DB_Impresion
        DataSetName = 'DB_Impresion'
        RowCount = 0
        object Memo3: TfrxMemoView
          Align = baLeft
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'CODIGO')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          Left = 94.488250000000000000
          Width = 385.512060000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'NOMBRE')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baLeft
          Left = 480.000310000000000000
          Width = 260.787570000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'SUPLIDOR')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        Height = 15.118120000000000000
        Top = 200.315090000000000000
        Width = 740.409927000000000000
        DataSet = DB_Impresion
        DataSetName = 'DB_Impresion'
        RowCount = 0
        object Memo6: TfrxMemoView
          Align = baLeft
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'pro_codigo'
          DataSet = DB_Impresion
          DataSetName = 'DB_Impresion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[DB_Impresion."pro_codigo"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baLeft
          Left = 94.488250000000000000
          Width = 385.512060000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'pro_nombre'
          DataSet = DB_Impresion
          DataSetName = 'DB_Impresion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[DB_Impresion."pro_nombre"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baLeft
          Left = 480.000310000000000000
          Width = 260.787570000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'sup_nombre'
          DataSet = DB_Impresion
          DataSetName = 'DB_Impresion'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[DB_Impresion."sup_nombre"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 15.118120000000000000
        Top = 238.110390000000000000
        Width = 740.409927000000000000
        object Memo10: TfrxMemoView
          Left = 93.000000000000000000
          Width = 385.512060000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Total de Productos a pedir==>')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Align = baLeft
          Left = 478.512060000000000000
          Width = 260.787570000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[COUNT(DetailData1)]')
          ParentFont = False
        end
      end
    end
  end
  object DB_Impresion: TfrxDBDataset
    UserName = 'DB_Impresion'
    CloseDataSource = False
    FieldAliases.Strings = (
      'RecId=RecId'
      'emp_codigo=emp_codigo'
      'suc_codigo=suc_codigo'
      'pro_codigo=pro_codigo'
      'pro_nombre=pro_nombre'
      'pedido=pedido'
      'sup_codigo=sup_codigo'
      'sup_nombre=sup_nombre')
    DataSet = MD_1
    BCDToCurrency = False
    Left = 224
    Top = 280
  end
end
