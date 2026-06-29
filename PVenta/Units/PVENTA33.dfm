object frmBuscaProducto: TfrmBuscaProducto
  Left = 48
  Top = 0
  ActiveControl = edOpcion
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Buscar productos'
  ClientHeight = 618
  ClientWidth = 1188
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 1188
    Height = 422
    Align = alClient
    Color = clInfoBk
    Ctl3D = False
    DataSource = dsProductos
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
  end
  object Panel1: TPanel
    Left = 0
    Top = 422
    Width = 1188
    Height = 196
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 446
      Top = 140
      Width = 33
      Height = 13
      Caption = 'Buscar'
    end
    object btFamilia: TSpeedButton
      Left = 540
      Top = 26
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
    object Label4: TLabel
      Left = 446
      Top = 27
      Width = 32
      Height = 13
      Caption = 'Familia'
    end
    object spAccion: TSpeedButton
      Left = 456
      Top = 152
      Width = 15
      Height = 17
      Visible = False
      OnClick = spAccionClick
    end
    object btMarca: TSpeedButton
      Left = 540
      Top = 48
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
      OnClick = btMarcaClick
    end
    object Label2: TLabel
      Left = 446
      Top = 49
      Width = 30
      Height = 13
      Caption = 'Marca'
    end
    object SpeedButton1: TSpeedButton
      Left = 540
      Top = 70
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
    object Label3: TLabel
      Left = 446
      Top = 71
      Width = 24
      Height = 13
      Caption = 'Color'
    end
    object SpeedButton2: TSpeedButton
      Left = 540
      Top = 4
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
    object Label5: TLabel
      Left = 446
      Top = 5
      Width = 32
      Height = 13
      Caption = 'Depto,'
    end
    object Label6: TLabel
      Left = 446
      Top = 94
      Width = 49
      Height = 13
      Caption = 'Proveedor'
    end
    object btProveedor: TSpeedButton
      Left = 540
      Top = 94
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
    object Label7: TLabel
      Left = 446
      Top = 117
      Width = 24
      Height = 13
      Caption = 'Serie'
    end
    object cbOpcion: TRadioGroup
      Left = 2
      Top = 2
      Width = 135
      Height = 122
      Caption = 'Buscar por'
      Ctl3D = True
      ItemIndex = 3
      Items.Strings = (
        'Codigo'
        'Referencia original'
        'Referencia fabricante'
        'Nombre del producto'
        'Uso')
      ParentCtl3D = False
      TabOrder = 11
      OnClick = cbOpcionClick
    end
    object btSalir: TBitBtn
      Left = 694
      Top = 164
      Width = 75
      Height = 25
      Caption = '[ Esc ] - Salir'
      TabOrder = 0
      OnClick = btSalirClick
    end
    object edOpcion: TEdit
      Left = 500
      Top = 140
      Width = 119
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
      OnKeyPress = edOpcionKeyPress
    end
    object rgTipo: TRadioGroup
      Left = 1
      Top = 123
      Width = 136
      Height = 69
      Caption = 'Tipo'
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'Nuevos'
        'Usados')
      TabOrder = 2
      OnClick = rgTipoClick
    end
    object tFamilia: TEdit
      Left = 566
      Top = 27
      Width = 209
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
    object edFamilia: TEdit
      Left = 500
      Top = 27
      Width = 36
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnChange = edFamiliaChange
      OnKeyDown = edFamiliaKeyDown
    end
    object tMarca: TEdit
      Left = 566
      Top = 49
      Width = 209
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
    object edMarca: TEdit
      Left = 500
      Top = 49
      Width = 36
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
      OnChange = edMarcaChange
      OnKeyDown = edMarcaKeyDown
    end
    object tColor: TEdit
      Left = 566
      Top = 71
      Width = 209
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
    object edColor: TEdit
      Left = 500
      Top = 71
      Width = 36
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnChange = edColorChange
      OnKeyDown = edColorKeyDown
    end
    object BitBtn1: TBitBtn
      Left = 614
      Top = 164
      Width = 75
      Height = 25
      Caption = 'Equivalencia'
      TabOrder = 12
      OnClick = BitBtn1Click
    end
    object ckactiva: TCheckBox
      Left = 446
      Top = 172
      Width = 145
      Height = 19
      Caption = 'Mantener pantalla activa'
      TabOrder = 13
      OnClick = ckactivaClick
    end
    object tDepto: TEdit
      Left = 566
      Top = 5
      Width = 209
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
      TabOrder = 14
    end
    object edDepto: TEdit
      Left = 500
      Top = 5
      Width = 36
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnChange = edDeptoChange
      OnKeyDown = edDeptoKeyDown
    end
    object cborden: TComboBox
      Left = 630
      Top = 140
      Width = 145
      Height = 21
      BevelKind = bkFlat
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 15
      OnClick = spAccionClick
      Items.Strings = (
        'Codigo'
        'Referencia Original'
        'Referencia Fabricante'
        'Nombre del Producto'
        'Uso'
        'Costo'
        'Serie')
    end
    object edProveedor: TEdit
      Left = 500
      Top = 94
      Width = 36
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnChange = edProveedorChange
      OnKeyDown = edProveedorKeyDown
    end
    object tProveedor: TEdit
      Left = 566
      Top = 94
      Width = 209
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
      TabOrder = 16
    end
    object gunidades: TDBGrid
      Left = 138
      Top = 7
      Width = 305
      Height = 183
      Color = clInfoBk
      Ctl3D = False
      DataSource = dsUnidades
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 17
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Nombre'
          Title.Caption = 'Unidad'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cantidad'
          Title.Alignment = taCenter
          Title.Caption = 'Cant'
          Width = 27
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Precio'
          Title.Alignment = taCenter
          Title.Caption = 'Contado'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Credito'
          Title.Alignment = taCenter
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Minimo'
          Title.Alignment = taCenter
          Width = 63
          Visible = True
        end>
    end
    object edSerie: TEdit
      Left = 500
      Top = 117
      Width = 275
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
      OnChange = edProveedorChange
      OnKeyDown = edProveedorKeyDown
    end
  end
  object QProductos: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    AfterOpen = QProductosAfterOpen
    OnCalcFields = QProductosCalcFields
    Parameters = <
      item
        Name = 'PAR_INVEMPRESA'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT '
      'P.SUP_CODIGO, P.EMP_CODIGO, P.PRO_CODIGO, P.PRO_RORIGINAL, '
      'P.PRO_RFABRIC, P.PRO_NOMBRE, P.PRO_PRECIO1, P.PRO_PRECIO2, '
      'P.PRO_PRECIO3, P.PRO_PRECIO4, P.PRO_EXISTENCIA AS EXISTUND, '
      'P.PRO_UBICACION, P.PRO_NUEVOUSADO,'
      'F.FAM_NOMBRE, M.MAR_NOMBRE, C.COL_NOMBRE,'
      'P.PRO_PRECIOMENOR, '
      'P.PRO_EXISTEMPAQUE AS EXISTEMP, '
      'D.DEP_NOMBRE, P.PRO_ITBIS, P.PRO_FOTO,'
      'P.PRO_COMENTARIO, P.PRO_COSTO,'
      
        '(SELECT TOP 1 SUP_NOMBRE FROM PROVEEDORES WHERE SUP_CODIGO = (SE' +
        'LECT TOP 1 SUP_CODIGO FROM PRODPROVEEDORES WHERE PRO_CODIGO = P.' +
        'PRO_CODIGO AND EMP_CODIGO = P.EMP_CODIGO))SUP_NOMBRE, '
      'p.pro_cantempaque, p.pro_montoitbis,'
      'P.PRO_serializado, um.nombre as UnidadMedida, pro_costoempaque'
      'FROM'
      'PRODUCTOS P'
      'LEFT OUTER JOIN FAMILIAS F ON '
      '(F.FAM_CODIGO = P.FAM_CODIGO'
      'AND F.EMP_CODIGO = P.EMP_CODIGO)'
      'LEFT OUTER JOIN MARCAS M ON'
      '(M.MAR_CODIGO = P.MAR_CODIGO'
      'AND M.EMP_CODIGO = P.EMP_CODIGO)'
      'LEFT OUTER JOIN COLORES C ON'
      '(C.COL_CODIGO = P.COL_CODIGO)'
      'LEFT OUTER JOIN DEPARTAMENTOS D ON'
      '(D.DEP_CODIGO = P.DEP_CODIGO'
      'AND D.EMP_CODIGO = P.EMP_CODIGO)'
      'LEFT OUTER JOIN UnidadMedida UM ON'
      '(p.UnidadID =um.UnidadID)'
      'WHERE'
      'P.EMP_CODIGO = :PAR_INVEMPRESA'
      'AND P.PRO_STATUS = '#39'ACT'#39
      'ORDER BY P.PRO_NOMBRE')
    Left = 368
    Top = 136
    object QProductosPRO_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'PRO_CODIGO'
      Required = True
    end
    object QProductosPRO_RORIGINAL: TIBStringField
      DisplayLabel = 'Ref. Original'
      DisplayWidth = 15
      FieldName = 'PRO_RORIGINAL'
      Size = 50
    end
    object QProductosPRO_RFABRIC: TIBStringField
      DisplayLabel = 'Ref. Fabricante'
      DisplayWidth = 15
      FieldName = 'PRO_RFABRIC'
      Size = 60
    end
    object QProductosPRO_NOMBRE: TIBStringField
      DisplayLabel = 'Nombre del Producto'
      DisplayWidth = 50
      FieldName = 'PRO_NOMBRE'
      Size = 60
    end
    object QProductosPRO_PRECIO1: TFloatField
      DisplayLabel = 'Precio 1'
      FieldName = 'PRO_PRECIO1'
      currency = True
    end
    object QProductosPRO_PRECIO2: TFloatField
      DisplayLabel = 'Precio 2'
      FieldName = 'PRO_PRECIO2'
      currency = True
    end
    object QProductosPRO_PRECIO3: TFloatField
      DisplayLabel = 'Precio 3'
      FieldName = 'PRO_PRECIO3'
      currency = True
    end
    object QProductosPRO_PRECIO4: TFloatField
      DisplayLabel = 'Precio 4'
      FieldName = 'PRO_PRECIO4'
      currency = True
    end
    object QProductosPRO_UBICACION: TIBStringField
      DisplayLabel = 'Ubicaci'#243'n'
      DisplayWidth = 30
      FieldName = 'PRO_UBICACION'
      Size = 30
    end
    object QProductosPRO_NUEVOUSADO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'PRO_NUEVOUSADO'
      Origin = 'PRODUCTOS.PRO_NUEVOUSADO'
      Size = 1
    end
    object QProductosFAM_NOMBRE: TIBStringField
      DisplayLabel = 'Familia'
      DisplayWidth = 30
      FieldName = 'FAM_NOMBRE'
      Origin = 'FAMILIAS.FAM_NOMBRE'
      Size = 60
    end
    object QProductosTipo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Tipo'
      Size = 5
      Calculated = True
    end
    object QProductosMAR_NOMBRE: TIBStringField
      DisplayLabel = 'Marca'
      DisplayWidth = 30
      FieldName = 'MAR_NOMBRE'
      Origin = 'MARCAS.MAR_NOMBRE'
      Size = 60
    end
    object QProductosCOL_NOMBRE: TIBStringField
      DisplayLabel = 'Color'
      DisplayWidth = 30
      FieldName = 'COL_NOMBRE'
      Origin = 'COLORES.COL_NOMBRE'
      Size = 60
    end
    object QProductosPRO_PRECIOMENOR: TFloatField
      DisplayLabel = 'Precio M'#237'nimo'
      FieldName = 'PRO_PRECIOMENOR'
      Origin = 'PRODUCTOS.PRO_PRECIOMENOR'
      currency = True
    end
    object QProductosEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'PRODUCTOS.EMP_CODIGO'
      Required = True
    end
    object QProductosEXISTUND: TFloatField
      DisplayLabel = 'Exist. Und'
      DisplayWidth = 5
      FieldName = 'EXISTUND'
      Origin = 'PRODUCTOS.PRO_EXISTENCIA'
    end
    object QProductosEXISTEMP: TFloatField
      DisplayLabel = 'Exist. Emp'
      DisplayWidth = 5
      FieldName = 'EXISTEMP'
      Origin = 'PRODUCTOS.PRO_EXISTEMPAQUE'
    end
    object QProductosDEP_NOMBRE: TIBStringField
      DisplayLabel = 'Departamento'
      DisplayWidth = 30
      FieldName = 'DEP_NOMBRE'
      Origin = 'DEPARTAMENTOS.DEP_NOMBRE'
      Size = 60
    end
    object QProductosPRO_ITBIS: TIBStringField
      Alignment = taCenter
      DisplayLabel = 'Itbis'
      DisplayWidth = 6
      FieldName = 'PRO_ITBIS'
      Origin = 'PRODUCTOS.PRO_ITBIS'
      Visible = False
      Size = 1
    end
    object QProductosSUP_CODIGO: TIntegerField
      FieldName = 'SUP_CODIGO'
    end
    object QProductosPRO_FOTO: TStringField
      FieldName = 'PRO_FOTO'
      Size = 200
    end
    object QProductosPRO_COSTO: TBCDField
      DisplayLabel = 'Costo'
      DisplayWidth = 10
      FieldName = 'PRO_COSTO'
      currency = True
      Precision = 15
      Size = 2
    end
    object QProductosSUP_NOMBRE: TStringField
      DisplayLabel = 'Proveedor'
      FieldName = 'SUP_NOMBRE'
      Size = 60
    end
    object QProductosPrecioTasa: TFloatField
      DisplayLabel = 'Precio Tasa'
      FieldKind = fkCalculated
      FieldName = 'PrecioTasa'
      currency = True
      Calculated = True
    end
    object QProductospro_cantempaque: TBCDField
      DisplayLabel = 'Cant/Empaque'
      DisplayWidth = 10
      FieldName = 'pro_cantempaque'
      Precision = 15
      Size = 2
    end
    object QProductospro_montoitbis: TBCDField
      DisplayLabel = 'Itbis'
      FieldName = 'pro_montoitbis'
      Visible = False
      currency = True
      Precision = 10
      Size = 2
    end
    object QProductosPRO_serializado: TStringField
      FieldName = 'PRO_serializado'
      Size = 1
    end
    object QProductosUnidadMedida: TStringField
      DisplayLabel = 'Und. Medida'
      FieldName = 'UnidadMedida'
    end
    object QProductosValorEmp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ValorEmp'
      Calculated = True
    end
    object QProductospro_costoempaque: TCurrencyField
      FieldName = 'pro_costoempaque'
    end
    object QProductoscostoitbis: TCurrencyField
      FieldName = 'costoitbis'
      DisplayFormat = '#,0.0000;-0.0000'
    end
    object QProductosPRO_COMENTARIO: TStringField
      FieldName = 'PRO_COMENTARIO'
      Size = 255
    end
  end
  object dsProductos: TDataSource
    DataSet = QProductos
    Left = 400
    Top = 136
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 368
    Top = 168
  end
  object QEscalas: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsProductos
    Parameters = <
      item
        Name = 'EMP_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PRO_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'E.ALM_CODIGO, E.EMP_CODIGO, E.ESC_ESCALA, '
      'E.ESC_EXISTENCIA, E.ESC_SECUENCIA, E.PRO_CODIGO,'
      'A.ALM_NOMBRE'
      'FROM'
      'ESCALAS E, ALMACEN A'
      'WHERE'
      'E.EMP_CODIGO = A.EMP_CODIGO'
      'AND E.ALM_CODIGO = A.ALM_CODIGO'
      'AND E.EMP_CODIGO = :EMP_CODIGO'
      'AND E.PRO_CODIGO = :PRO_CODIGO'
      'ORDER BY '
      'E.ESC_SECUENCIA')
    Left = 368
    Top = 200
    object QEscalasALM_CODIGO: TIntegerField
      FieldName = 'ALM_CODIGO'
      Origin = 'ESCALAS.ALM_CODIGO'
    end
    object QEscalasEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'ESCALAS.EMP_CODIGO'
    end
    object QEscalasESC_ESCALA: TIBStringField
      FieldName = 'ESC_ESCALA'
      Origin = 'ESCALAS.ESC_ESCALA'
      Required = True
      Size = 5
    end
    object QEscalasESC_EXISTENCIA: TFloatField
      FieldName = 'ESC_EXISTENCIA'
      Origin = 'ESCALAS.ESC_EXISTENCIA'
    end
    object QEscalasESC_SECUENCIA: TIntegerField
      FieldName = 'ESC_SECUENCIA'
      Origin = 'ESCALAS.ESC_SECUENCIA'
    end
    object QEscalasPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'ESCALAS.PRO_CODIGO'
    end
    object QEscalasALM_NOMBRE: TIBStringField
      FieldName = 'ALM_NOMBRE'
      Origin = 'ALMACEN.ALM_NOMBRE'
      Size = 60
    end
  end
  object dsEscala: TDataSource
    DataSet = QEscalas
    Left = 400
    Top = 200
  end
  object QVence: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsProductos
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
        Name = 'pro_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'ven_lote, ven_fecha, ven_cantpendiente'
      'from'
      'provence'
      'where'
      'emp_codigo = :emp_codigo'
      'and pro_codigo = :pro_codigo'
      'order by'
      'ven_fecha')
    Left = 368
    Top = 232
    object QVenceven_lote: TIntegerField
      FieldName = 'ven_lote'
      DisplayFormat = '##'
    end
    object QVenceven_fecha: TDateTimeField
      FieldName = 'ven_fecha'
    end
    object QVenceven_cantpendiente: TBCDField
      FieldName = 'ven_cantpendiente'
      Precision = 15
      Size = 2
    end
  end
  object dsVence: TDataSource
    DataSet = QVence
    Left = 400
    Top = 232
  end
  object PopupMenu1: TPopupMenu
    Left = 88
    Top = 136
    object Verfoto1: TMenuItem
      Caption = 'Ver foto'
      OnClick = Verfoto1Click
    end
    object ExistenciaxAlmacen1: TMenuItem
      Caption = 'Existencia x Almacen'
      OnClick = ExistenciaxAlmacen1Click
    end
  end
  object QUnidades: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    DataSource = dsProductos
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
        Name = 'pro_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'p.emp_codigo, p.pro_codigo, p.UnidadID, p.Precio, p.Cantidad,'
      'p.Secuencia, p.Credito, p.Minimo'
      'from'
      'ProdUnidadMedida p'
      'where'
      'p.emp_codigo = :emp_codigo'
      'and p.pro_codigo = :pro_codigo'
      'order by'
      'p.Secuencia')
    Left = 88
    Top = 168
    object QUnidadesemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QUnidadespro_codigo: TIntegerField
      FieldName = 'pro_codigo'
    end
    object QUnidadesUnidadID: TStringField
      FieldName = 'UnidadID'
      Size = 1
    end
    object QUnidadesCantidad: TBCDField
      FieldName = 'Cantidad'
      Precision = 18
      Size = 2
    end
    object QUnidadesSecuencia: TIntegerField
      FieldName = 'Secuencia'
    end
    object QUnidadesNombre: TStringField
      FieldKind = fkLookup
      FieldName = 'Nombre'
      LookupDataSet = QMedidas
      LookupKeyFields = 'UnidadID'
      LookupResultField = 'Nombre'
      KeyFields = 'UnidadID'
      Lookup = True
    end
    object QUnidadesPrecio: TBCDField
      FieldName = 'Precio'
      currency = True
      Precision = 18
      Size = 2
    end
    object QUnidadesCredito: TBCDField
      FieldName = 'Credito'
      currency = True
      Precision = 18
      Size = 2
    end
    object QUnidadesMinimo: TBCDField
      FieldName = 'Minimo'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object dsUnidades: TDataSource
    DataSet = QUnidades
    Left = 120
    Top = 168
  end
  object QMedidas: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
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
      'UnidadID, Nombre'
      'from'
      'UnidadMedida'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'Nombre')
    Left = 88
    Top = 200
    object QMedidasUnidadID: TStringField
      FieldName = 'UnidadID'
      Size = 1
    end
    object QMedidasNombre: TStringField
      FieldName = 'Nombre'
    end
  end
  object dsMedida: TDataSource
    DataSet = QMedidas
    Left = 120
    Top = 200
  end
  object qActulizaProd: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <
      item
        Name = 'PROD'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'EMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'declare @prod int, @empaque numeric(18,2), @existe numeric(18,2)' +
        ', @emp int'
      'set @prod = :prod'
      'set @EMP = :emp'
      
        'set @empaque = (select isnull(sum(isnull(exi_empaque,0)),0) from' +
        ' existencias where pro_codigo = @prod)'
      
        'set @existe = (select isnull(sum(isnull(exi_cantidad,0)),0) from' +
        ' existencias where pro_codigo = @prod)'
      'update productos'
      'set pro_existempaque = @empaque, '
      '    pro_existencia = @existe'
      'where pro_codigo = @prod'
      
        'and emp_codigo = (select par_invempresa from Parametros where em' +
        'p_codigo = @emp)'
      '')
    Left = 368
    Top = 264
  end
end
