object frmTransferencia: TfrmTransferencia
  Left = 277
  Top = 96
  ActiveControl = edDesde
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Transferencia entre almacenes'
  ClientHeight = 420
  ClientWidth = 594
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
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 368
    Top = 392
    Width = 137
    Height = 25
    Caption = 'Buscar Pedido cliente'
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
  object BitBtn2: TSpeedButton
    Left = 152
    Top = 392
    Width = 209
    Height = 25
    Caption = 'Grabar al dispositivo de almacenamiento'
    OnClick = BitBtn2Click
  end
  object btBuscaProd: TSpeedButton
    Left = 320
    Top = 360
    Width = 129
    Height = 25
    Caption = '[ F4 ] - Buscar producto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    OnClick = btBuscaProdClick
  end
  object btPost: TSpeedButton
    Left = 48
    Top = 360
    Width = 137
    Height = 25
    Caption = '[ F2 ] &Grabar / Imprimir'
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      7777770000000000007770330770000330777033077000033077703307700003
      30777033000000033077703333333333307770330000000330777030FFFFFFF0
      30777030FCCCCFF030777030FFCCCFF030777037FCCCCFF000777077CCCFCFF0
      8077777CCC777700007777CCC77777777777777C777777777777}
    OnClick = btPostClick
  end
  object btlimpiar: TSpeedButton
    Left = 192
    Top = 360
    Width = 121
    Height = 25
    Caption = '[ F3 ] Limpiar pantalla'
    OnClick = btlimpiarClick
  end
  object BitBtn3: TSpeedButton
    Left = 16
    Top = 392
    Width = 129
    Height = 25
    Caption = '&Buscar transferencia'
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
    OnClick = BitBtn3Click
  end
  object btClose: TSpeedButton
    Left = 512
    Top = 392
    Width = 73
    Height = 25
    Caption = '&Salir'
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
    OnClick = btCloseClick
  end
  object bteliminar: TSpeedButton
    Left = 456
    Top = 360
    Width = 129
    Height = 25
    Caption = '[ F7 ] - Eliminar producto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    OnClick = bteliminarClick
  end
  object Panel1: TPanel
    Left = 8
    Top = 7
    Width = 577
    Height = 26
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 5
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
    end
    object Label8: TLabel
      Left = 144
      Top = 6
      Width = 41
      Height = 13
      Caption = 'Sucursal'
    end
    object DBEdit1: TDBEdit
      Left = 64
      Top = 2
      Width = 73
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'TRA_NUMERO'
      DataSource = dsTrans
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 189
      Top = 1
      Width = 378
      Height = 21
      DataField = 'suc_codigo'
      DataSource = dsTrans
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
      TabOrder = 1
      TabStop = False
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 40
    Width = 577
    Height = 313
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 1
    object Label2: TLabel
      Left = 8
      Top = 8
      Width = 31
      Height = 13
      Caption = 'Desde'
    end
    object SpeedButton2: TSpeedButton
      Left = 116
      Top = 8
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
    object Label3: TLabel
      Left = 8
      Top = 80
      Width = 30
      Height = 13
      Caption = 'Fecha'
    end
    object Label4: TLabel
      Left = 8
      Top = 56
      Width = 46
      Height = 13
      Caption = 'Concepto'
    end
    object Label5: TLabel
      Left = 8
      Top = 32
      Width = 28
      Height = 13
      Caption = 'Hasta'
    end
    object SpeedButton3: TSpeedButton
      Left = 116
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
      OnClick = SpeedButton3Click
    end
    object Label6: TLabel
      Left = 8
      Top = 106
      Width = 48
      Height = 13
      Caption = 'Ubicaci'#243'n'
    end
    object edDesde: TEdit
      Left = 64
      Top = 8
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
      TabOrder = 0
      OnKeyDown = edDesdeKeyDown
    end
    object tAlmacen1: TEdit
      Left = 141
      Top = 8
      Width = 428
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
    object DBEdit2: TDBEdit
      Left = 64
      Top = 56
      Width = 505
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'TRA_CONCEPTO'
      DataSource = dsTrans
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 64
      Top = 80
      Width = 73
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'TRA_FECHA'
      DataSource = dsTrans
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Grid: TDBGrid
      Left = 1
      Top = 136
      Width = 575
      Height = 176
      Align = alBottom
      Ctl3D = False
      DataSource = dsDetalle
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 6
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnColEnter = GridColEnter
      OnEnter = GridEnter
      OnKeyPress = GridKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'PRO_CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Width = 101
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'PRO_NOMBRE'
          ReadOnly = True
          Title.Caption = 'Nombre del Producto'
          Width = 276
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DET_MEDIDA'
          Title.Alignment = taCenter
          Title.Caption = 'Medida'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DET_CANTIDAD'
          Title.Alignment = taCenter
          Title.Caption = 'Cantidad'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'det_medida2'
          Title.Alignment = taCenter
          Title.Caption = 'Medida'
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'det_cantidad2'
          ReadOnly = True
          Title.Caption = 'Cantidad'
          Width = 47
          Visible = True
        end>
    end
    object edHasta: TEdit
      Left = 64
      Top = 32
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
      OnKeyDown = edHastaKeyDown
    end
    object tAlmacen2: TEdit
      Left = 141
      Top = 32
      Width = 428
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
      TabOrder = 7
    end
    object StaticText1: TStaticText
      Left = 380
      Top = 86
      Width = 89
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Desde'
      TabOrder = 8
    end
    object StaticText2: TStaticText
      Left = 470
      Top = 86
      Width = 88
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Hasta'
      TabOrder = 9
    end
    object ckautomatico: TCheckBox
      Left = 152
      Top = 80
      Width = 177
      Height = 17
      Caption = '[ F5 ] - Registro automatico'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object Lista: TListBox
      Left = 336
      Top = 232
      Width = 193
      Height = 65
      ItemHeight = 13
      TabOrder = 10
      Visible = False
    end
    object DBEdit4: TDBEdit
      Left = 64
      Top = 104
      Width = 505
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'Ubicacion'
      DataSource = dsTrans
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
  end
  object QTrans: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QTransBeforePost
    OnNewRecord = QTransNewRecord
    Parameters = <
      item
        Name = 'emp'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'numero'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select '
      'EMP_CODIGO, TRA_ALMACEN1, TRA_ALMACEN2, '
      'TRA_CONCEPTO, TRA_FECHA, TRA_NUMERO, TRA_STATUS, '
      
        'USU_CODIGO, tra_medida_almacen1, tra_medida_almacen2, suc_codigo' +
        ','
      'TRA_FECHA_HORA, Ubicacion'
      'from TRANSFER'
      'where emp_codigo = :emp'
      'and tra_numero = :numero')
    Left = 184
    Top = 232
    object QTransEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'TRANSFER.EMP_CODIGO'
    end
    object QTransTRA_ALMACEN1: TIntegerField
      FieldName = 'TRA_ALMACEN1'
      Origin = 'TRANSFER.TRA_ALMACEN1'
    end
    object QTransTRA_ALMACEN2: TIntegerField
      FieldName = 'TRA_ALMACEN2'
      Origin = 'TRANSFER.TRA_ALMACEN2'
    end
    object QTransTRA_CONCEPTO: TIBStringField
      FieldName = 'TRA_CONCEPTO'
      Origin = 'TRANSFER.TRA_CONCEPTO'
      Size = 60
    end
    object QTransTRA_FECHA: TDateTimeField
      FieldName = 'TRA_FECHA'
      Origin = 'TRANSFER.TRA_FECHA'
      EditMask = 'cc-cc-cccc'
    end
    object QTransTRA_NUMERO: TIntegerField
      FieldName = 'TRA_NUMERO'
      Origin = 'TRANSFER.TRA_NUMERO'
      DisplayFormat = '00000'
    end
    object QTransTRA_STATUS: TIBStringField
      FieldName = 'TRA_STATUS'
      Origin = 'TRANSFER.TRA_STATUS'
      Size = 3
    end
    object QTransUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Origin = 'TRANSFER.USU_CODIGO'
    end
    object QTranstra_medida_almacen1: TStringField
      FieldName = 'tra_medida_almacen1'
      Size = 3
    end
    object QTranstra_medida_almacen2: TStringField
      FieldName = 'tra_medida_almacen2'
      Size = 3
    end
    object QTranssuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QTransTRA_FECHA_HORA: TDateTimeField
      FieldName = 'TRA_FECHA_HORA'
    end
    object QTransUbicacion: TStringField
      FieldName = 'Ubicacion'
      Size = 255
    end
  end
  object dsTrans: TDataSource
    DataSet = QTrans
    Left = 216
    Top = 232
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforeEdit = QDetalleBeforeEdit
    BeforePost = QDetalleBeforePost
    OnNewRecord = QDetalleNewRecord
    Parameters = <
      item
        Name = 'EMP_CODIGO'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'numero'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select '
      'DET_CANTIDAD, DET_SECUENCIA, d.EMP_CODIGO, d.PRO_CODIGO, '
      'd.PRO_NOMBRE, d.PRO_RFABRIC, d.PRO_RORIGINAL, TRA_NUMERO,'
      'DET_MEDIDA, det_medida2, d.pro_cantempaque, det_cantidad2,'
      'det_costo, det_costound, det_costoemp, suc_codigo'
      'from DET_TRANSFER d '
      'where d.emp_codigo = :EMP_CODIGO'
      'and tra_numero = :numero'
      'order by det_secuencia')
    Left = 184
    Top = 264
    object QDetalleDET_CANTIDAD: TFloatField
      FieldName = 'DET_CANTIDAD'
      Origin = 'DET_TRANSFER.DET_CANTIDAD'
      OnChange = QDetalleDET_CANTIDADChange
    end
    object QDetalleDET_SECUENCIA: TIntegerField
      FieldName = 'DET_SECUENCIA'
      Origin = 'DET_TRANSFER.DET_SECUENCIA'
    end
    object QDetalleEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'DET_TRANSFER.EMP_CODIGO'
    end
    object QDetallePRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
      Origin = 'DET_TRANSFER.PRO_CODIGO'
      OnChange = QDetallePRO_CODIGOChange
    end
    object QDetallePRO_NOMBRE: TIBStringField
      FieldName = 'PRO_NOMBRE'
      Origin = 'DET_TRANSFER.PRO_NOMBRE'
      Size = 60
    end
    object QDetallePRO_RFABRIC: TIBStringField
      FieldName = 'PRO_RFABRIC'
      Origin = 'DET_TRANSFER.PRO_RFABRIC'
      OnChange = QDetallePRO_RFABRICChange
      Size = 60
    end
    object QDetallePRO_RORIGINAL: TIBStringField
      FieldName = 'PRO_RORIGINAL'
      Origin = 'DET_TRANSFER.PRO_RORIGINAL'
      OnChange = QDetallePRO_RORIGINALChange
      Size = 50
    end
    object QDetalleTRA_NUMERO: TIntegerField
      FieldName = 'TRA_NUMERO'
      Origin = 'DET_TRANSFER.TRA_NUMERO'
    end
    object QDetalleDET_MEDIDA: TIBStringField
      FieldName = 'DET_MEDIDA'
      Origin = 'DET_TRANSFER.DET_MEDIDA'
      Size = 3
    end
    object QDetalledet_medida2: TStringField
      FieldName = 'det_medida2'
      Size = 3
    end
    object QDetallepro_cantempaque: TBCDField
      FieldName = 'pro_cantempaque'
      Precision = 15
      Size = 2
    end
    object QDetalledet_cantidad2: TBCDField
      FieldName = 'det_cantidad2'
      Precision = 15
      Size = 2
    end
    object QDetalledet_costo: TBCDField
      FieldName = 'det_costo'
      currency = True
      Precision = 18
      Size = 2
    end
    object QDetalledet_costound: TBCDField
      FieldName = 'det_costound'
      currency = True
      Precision = 18
      Size = 2
    end
    object QDetalledet_costoemp: TBCDField
      FieldName = 'det_costoemp'
      currency = True
      Precision = 18
      Size = 2
    end
    object QDetallesuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
  end
  object dsDetalle: TDataSource
    DataSet = QDetalle
    Left = 216
    Top = 264
  end
  object Search: TQrySearchDlgADO
    AliasFields.Strings = (
      'Nombre'
      'Codigo')
    AliasName = DM.ADOSigma
    Left = 184
    Top = 296
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '.txt'
    FileName = 'productos.txt'
    Filter = '*.txt'
    InitialDir = '\'
    Left = 216
    Top = 296
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 352
    Top = 240
  end
  object PopupMenu1: TPopupMenu
    Left = 264
    Top = 232
    object Buscarproductoenellistado1: TMenuItem
      Caption = 'Buscar producto en el listado'
      OnClick = Buscarproductoenellistado1Click
    end
  end
  object dsSuc: TDataSource
    DataSet = QSucursal
    Left = 432
    Top = 192
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
    Left = 400
    Top = 192
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
end
