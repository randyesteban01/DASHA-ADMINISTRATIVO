object frmCategorias: TfrmCategorias
  Left = 443
  Top = 247
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Categorias'
  ClientHeight = 257
  ClientWidth = 550
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 48
    Width = 545
    Height = 204
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 11
      Top = 32
      Width = 37
      Height = 13
      Caption = 'Nombre'
    end
    object btCuenta: TSpeedButton
      Left = 179
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
      OnClick = btCuentaClick
    end
    object Label3: TLabel
      Left = 11
      Top = 56
      Width = 35
      Height = 13
      Caption = 'Cuenta'
    end
    object Label4: TLabel
      Left = 11
      Top = 128
      Width = 75
      Height = 13
      Caption = '% Depreciaci'#243'n'
    end
    object btCuenta2: TSpeedButton
      Left = 179
      Top = 80
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
    object Label5: TLabel
      Left = 11
      Top = 80
      Width = 99
      Height = 13
      Caption = 'Cuenta Depreciaci'#243'n'
    end
    object btCuenta3: TSpeedButton
      Left = 179
      Top = 104
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
      OnClick = btCuenta3Click
    end
    object Label6: TLabel
      Left = 11
      Top = 104
      Width = 81
      Height = 13
      Caption = 'Cuenta de Gasto'
    end
    object Label1: TLabel
      Left = 11
      Top = 8
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object DBEdit2: TDBEdit
      Left = 120
      Top = 32
      Width = 377
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'CAT_NOMBRE'
      DataSource = dsCategorias
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object tCuenta: TEdit
      Left = 204
      Top = 56
      Width = 293
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
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 120
      Top = 56
      Width = 57
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'CAT_CUENTA'
      DataSource = dsCategorias
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 120
      Top = 128
      Width = 57
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'CAT_DEPRECIACION'
      DataSource = dsCategorias
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object tCuenta2: TEdit
      Left = 204
      Top = 80
      Width = 293
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
    object DBEdit5: TDBEdit
      Left = 120
      Top = 80
      Width = 57
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'cat_ctadepracumulada'
      DataSource = dsCategorias
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object tCuenta3: TEdit
      Left = 204
      Top = 104
      Width = 293
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
    object DBEdit6: TDBEdit
      Left = 120
      Top = 104
      Width = 57
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      CharCase = ecUpperCase
      DataField = 'cat_ctagastodepreciacion'
      DataSource = dsCategorias
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object DBEdit1: TDBEdit
      Left = 120
      Top = 8
      Width = 73
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'CAT_CODIGO'
      DataSource = dsCategorias
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
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 550
    Height = 42
    AutoSize = True
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 38
        Width = 546
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 533
      Height = 38
      AutoSize = True
      ButtonHeight = 36
      ButtonWidth = 50
      Caption = 'ToolBar1'
      Flat = True
      Images = DM.ImgMant
      ShowCaptions = True
      TabOrder = 0
      object ToolButton13: TToolButton
        Left = 0
        Top = 0
        Action = btPrior
      end
      object ToolButton12: TToolButton
        Left = 50
        Top = 0
        Action = btNext
      end
      object ToolButton14: TToolButton
        Left = 100
        Top = 0
        Width = 8
        Caption = 'ToolButton14'
        ImageIndex = 1
        Style = tbsSeparator
      end
      object ToolButton1: TToolButton
        Left = 108
        Top = 0
        Action = btInsert
      end
      object ToolButton2: TToolButton
        Left = 158
        Top = 0
        Action = btEdit
      end
      object ToolButton3: TToolButton
        Left = 208
        Top = 0
        Action = btDelete
      end
      object ToolButton4: TToolButton
        Left = 258
        Top = 0
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object ToolButton5: TToolButton
        Left = 266
        Top = 0
        Action = btPost
      end
      object ToolButton6: TToolButton
        Left = 316
        Top = 0
        Action = btCancel
      end
      object ToolButton7: TToolButton
        Left = 366
        Top = 0
        Width = 8
        Caption = 'ToolButton7'
        ImageIndex = 5
        Style = tbsSeparator
      end
      object ToolButton8: TToolButton
        Left = 374
        Top = 0
        Action = btFind
      end
      object ToolButton9: TToolButton
        Left = 424
        Top = 0
        Action = btPrint
      end
      object ToolButton10: TToolButton
        Left = 474
        Top = 0
        Width = 8
        Caption = 'ToolButton10'
        ImageIndex = 7
        Style = tbsSeparator
      end
      object ToolButton11: TToolButton
        Left = 482
        Top = 0
        Action = btClose
      end
    end
  end
  object QCategoria: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QCategoriaBeforePost
    AfterPost = QCategoriaAfterPost
    AfterDelete = QCategoriaAfterDelete
    OnNewRecord = QCategoriaNewRecord
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
      'select '
      'EMP_CODIGO, CAT_CODIGO, CAT_NOMBRE,'
      'CAT_CUENTA, CAT_DEPRECIACION, USU_CODIGO,'
      'cat_ctadepracumulada, cat_ctagastodepreciacion'
      'from'
      'categoria_Activos'
      'where'
      'emp_codigo = :emp_codigo'
      'order by cat_codigo')
    Left = 312
    Top = 160
    object QCategoriaCAT_CUENTA: TIBStringField
      FieldName = 'CAT_CUENTA'
      Origin = 'FORMASPAGO.CAT_CUENTA'
      OnGetText = QCategoriaCAT_CUENTAGetText
      Size = 15
    end
    object QCategoriaEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QCategoriaCAT_CODIGO: TIntegerField
      FieldName = 'CAT_CODIGO'
    end
    object QCategoriaCAT_NOMBRE: TStringField
      FieldName = 'CAT_NOMBRE'
      Size = 60
    end
    object QCategoriaCAT_DEPRECIACION: TBCDField
      FieldName = 'CAT_DEPRECIACION'
      currency = True
      Precision = 15
      Size = 2
    end
    object QCategoriaUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object QCategoriacat_ctadepracumulada: TStringField
      FieldName = 'cat_ctadepracumulada'
      OnGetText = QCategoriacat_ctadepracumuladaGetText
      Size = 15
    end
    object QCategoriacat_ctagastodepreciacion: TStringField
      FieldName = 'cat_ctagastodepreciacion'
      OnGetText = QCategoriacat_ctagastodepreciacionGetText
      Size = 15
    end
  end
  object dsCategorias: TDataSource
    AutoEdit = False
    DataSet = QCategoria
    OnStateChange = dsCategoriasStateChange
    Left = 344
    Top = 160
  end
  object Search: TQrySearchDlgADO
    Title = 'Categorias'
    ResultField = 'cat_codigo'
    Query.Strings = (
      'select fpa_nombre, fpa_codigo'
      'from formaspago')
    AliasFields.Strings = (
      'Nombre'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 312
    Top = 192
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 344
    Top = 192
    object btPrior: TAction
      Caption = 'Anterior'
      ImageIndex = 8
      OnExecute = btpriorClick
    end
    object btNext: TAction
      Caption = 'Pr'#243'ximo'
      ImageIndex = 9
      OnExecute = btnextClick
    end
    object btInsert: TAction
      Caption = 'Insertar'
      ImageIndex = 6
      OnExecute = btInsertClick
    end
    object btEdit: TAction
      Caption = 'Modificar'
      ImageIndex = 7
      OnExecute = btEditClick
    end
    object btDelete: TAction
      Caption = 'Eliminar'
      ImageIndex = 1
      OnExecute = btDeleteClick
    end
    object btPost: TAction
      Caption = 'Grabar'
      ImageIndex = 2
      OnExecute = btPostClick
    end
    object btCancel: TAction
      Caption = 'Cancelar'
      ImageIndex = 3
      OnExecute = btCancelClick
    end
    object btFind: TAction
      Caption = 'Buscar'
      ImageIndex = 4
      OnExecute = btFindClick
    end
    object btPrint: TAction
      Caption = 'Imprimir'
      ImageIndex = 5
    end
    object btClose: TAction
      Caption = 'Salir'
      ImageIndex = 0
      OnExecute = btCloseClick
    end
  end
end
