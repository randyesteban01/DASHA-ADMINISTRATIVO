object frmCentroCosto: TfrmCentroCosto
  Left = 240
  Top = 233
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Centros de Costos'
  ClientHeight = 348
  ClientWidth = 549
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
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
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 549
    Height = 42
    AutoSize = True
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 38
        Width = 545
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 532
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
  object PageControl1: TPageControl
    Left = 8
    Top = 48
    Width = 537
    Height = 297
    ActivePage = TabSheet2
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Centro'
      object Label1: TLabel
        Left = 16
        Top = 24
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label2: TLabel
        Left = 16
        Top = 48
        Width = 37
        Height = 13
        Caption = 'Nombre'
      end
      object Label3: TLabel
        Left = 16
        Top = 72
        Width = 54
        Height = 13
        Caption = 'Descripci'#243'n'
      end
      object DBEdit1: TDBEdit
        Left = 80
        Top = 24
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'cen_referencia'
        DataSource = dsCentros
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 80
        Top = 48
        Width = 329
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'CEN_NOMBRE'
        DataSource = dsCentros
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBMemo1: TDBMemo
        Left = 80
        Top = 72
        Width = 329
        Height = 89
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'cen_descripcion'
        DataSource = dsCentros
        TabOrder = 2
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Sub-Centro'
      ImageIndex = 1
      object Label4: TLabel
        Left = 16
        Top = 56
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label5: TLabel
        Left = 16
        Top = 80
        Width = 37
        Height = 13
        Caption = 'Nombre'
      end
      object Label6: TLabel
        Left = 16
        Top = 104
        Width = 54
        Height = 13
        Caption = 'Descripci'#243'n'
      end
      object Label7: TLabel
        Left = 0
        Top = 160
        Width = 90
        Height = 13
        Caption = 'Cuentas asociadas'
      end
      object CoolBar2: TCoolBar
        Left = 0
        Top = 0
        Width = 529
        Height = 42
        AutoSize = True
        Bands = <
          item
            Control = ToolBar2
            ImageIndex = -1
            MinHeight = 38
            Width = 525
          end>
        object ToolBar2: TToolBar
          Left = 9
          Top = 0
          Width = 512
          Height = 38
          AutoSize = True
          ButtonHeight = 36
          ButtonWidth = 50
          Caption = 'ToolBar1'
          Flat = True
          Images = DM.ImgMant
          ShowCaptions = True
          TabOrder = 0
          object ToolButton18: TToolButton
            Left = 0
            Top = 0
            Action = c_btinsert
          end
          object ToolButton19: TToolButton
            Left = 50
            Top = 0
            Action = c_btedit
          end
          object ToolButton20: TToolButton
            Left = 100
            Top = 0
            Action = c_btdelete
          end
          object ToolButton21: TToolButton
            Left = 150
            Top = 0
            Width = 8
            Caption = 'ToolButton4'
            ImageIndex = 3
            Style = tbsSeparator
          end
          object ToolButton22: TToolButton
            Left = 158
            Top = 0
            Action = c_btpost
          end
          object ToolButton23: TToolButton
            Left = 208
            Top = 0
            Action = c_btcancel
          end
          object ToolButton16: TToolButton
            Left = 258
            Top = 0
            Width = 8
            Caption = 'ToolButton16'
            ImageIndex = 5
            Style = tbsSeparator
          end
          object ToolButton15: TToolButton
            Left = 266
            Top = 0
            Action = c_btfind
          end
        end
      end
      object DBEdit3: TDBEdit
        Left = 80
        Top = 56
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'sub_referencia'
        DataSource = dsSubCentro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 80
        Top = 80
        Width = 329
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'sub_nombre'
        DataSource = dsSubCentro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBMemo2: TDBMemo
        Left = 80
        Top = 104
        Width = 329
        Height = 49
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'sub_descripcion'
        DataSource = dsSubCentro
        TabOrder = 3
      end
      object pncuentas: TPanel
        Left = 0
        Top = 176
        Width = 529
        Height = 93
        Align = alBottom
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 4
        object Panel3: TPanel
          Left = 2
          Top = 2
          Width = 30
          Height = 89
          Align = alLeft
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 0
          object SpeedButton5: TSpeedButton
            Left = 4
            Top = 4
            Width = 23
            Height = 22
            Hint = 'Eliminar producto de la lista'
            Flat = True
            Glyph.Data = {
              42010000424D4201000000000000760000002800000011000000110000000100
              040000000000CC00000000000000000000001000000010000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              777770000000777777777777777770000000777777777777770F700000007777
              0F777777777770000000777000F7777770F770000000777000F777770F777000
              00007777000F77700F777000000077777000F700F7777000000077777700000F
              7777700000007777777000F777777000000077777700000F7777700000007777
              7000F70F7777700000007770000F77700F7770000000770000F7777700F77000
              00007700F7777777700F70000000777777777777777770000000777777777777
              777770000000}
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton5Click
          end
          object SpeedButton6: TSpeedButton
            Left = 4
            Top = 26
            Width = 23
            Height = 22
            Hint = 'Nota para el producto'
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
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton6Click
          end
        end
        object GridCuentas: TDBGrid
          Left = 32
          Top = 2
          Width = 495
          Height = 89
          Align = alClient
          Ctl3D = False
          DataSource = dsCuentas
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnColEnter = GridCuentasColEnter
          OnKeyDown = GridCuentasKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'cat_cuenta'
              Title.Alignment = taCenter
              Title.Caption = 'Cuenta'
              Width = 104
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'cat_nombre'
              ReadOnly = True
              Title.Caption = 'Nombre de la Cuenta'
              Width = 367
              Visible = True
            end>
        end
      end
    end
  end
  object QCentro: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QCentroBeforePost
    AfterPost = QCentroAfterPost
    AfterDelete = QCentroAfterDelete
    OnNewRecord = QCentroNewRecord
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
      'CAT_CUENTA, CEN_CODIGO, CEN_NOMBRE, EMP_CODIGO,'
      'cen_presupuesto, cen_descripcion, cen_centro_padre,'
      'cen_monto_presupuesto, mon_codigo, cen_monto_ejecutado,'
      'cen_referencia'
      'from '
      'CENTROCOSTOS'
      'where'
      'emp_codigo = :emp_codigo')
    Left = 464
    Top = 144
    object QCentroCAT_CUENTA: TIBStringField
      FieldName = 'CAT_CUENTA'
      Origin = 'CENTROCOSTOS.CAT_CUENTA'
      Size = 15
    end
    object QCentroCEN_CODIGO: TIntegerField
      FieldName = 'CEN_CODIGO'
      Origin = 'CENTROCOSTOS.CEN_CODIGO'
    end
    object QCentroCEN_NOMBRE: TIBStringField
      FieldName = 'CEN_NOMBRE'
      Origin = 'CENTROCOSTOS.CEN_NOMBRE'
      Size = 60
    end
    object QCentroEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'CENTROCOSTOS.EMP_CODIGO'
    end
    object QCentrocen_presupuesto: TStringField
      FieldName = 'cen_presupuesto'
      Size = 5
    end
    object QCentrocen_descripcion: TMemoField
      FieldName = 'cen_descripcion'
      BlobType = ftMemo
    end
    object QCentrocen_centro_padre: TIntegerField
      FieldName = 'cen_centro_padre'
    end
    object QCentrocen_monto_presupuesto: TBCDField
      FieldName = 'cen_monto_presupuesto'
      currency = True
      Precision = 18
      Size = 2
    end
    object QCentromon_codigo: TIntegerField
      FieldName = 'mon_codigo'
    end
    object QCentrocen_monto_ejecutado: TBCDField
      FieldName = 'cen_monto_ejecutado'
      currency = True
      Precision = 18
      Size = 2
    end
    object QCentrocen_referencia: TStringField
      FieldName = 'cen_referencia'
      Size = 10
    end
  end
  object dsCentros: TDataSource
    AutoEdit = False
    DataSet = QCentro
    OnStateChange = dsCentrosStateChange
    Left = 496
    Top = 144
  end
  object Search: TQrySearchDlgADO
    Title = 'Centros de Costo'
    AliasName = DM.ADOSigma
    Left = 432
    Top = 144
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 432
    Top = 176
    object btPrior: TAction
      Caption = 'Anterior'
      ImageIndex = 8
      OnExecute = btPriorClick
    end
    object btNext: TAction
      Caption = 'Pr'#243'ximo'
      ImageIndex = 9
      OnExecute = btNextClick
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
  object QCuentas: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    AfterPost = QCuentasAfterPost
    AfterDelete = QCuentasAfterDelete
    OnNewRecord = QCuentasNewRecord
    DataSource = dsSubCentro
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
        Name = 'cen_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'sub_secuencia'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'emp_codigo, cen_codigo, sub_secuencia, cat_cuenta,'
      'cat_nombre'
      'from'
      'CentroCostos_Hijos_Cuentas'
      'where'
      'emp_codigo = :emp_codigo'
      'and cen_codigo = :cen_codigo'
      'and sub_secuencia = :sub_secuencia'
      'order by'
      'cat_cuenta')
    Left = 464
    Top = 208
    object QCuentasemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QCuentascen_codigo: TIntegerField
      FieldName = 'cen_codigo'
    end
    object QCuentassub_secuencia: TIntegerField
      FieldName = 'sub_secuencia'
    end
    object QCuentascat_cuenta: TStringField
      FieldName = 'cat_cuenta'
      OnChange = QCuentascat_cuentaChange
      Size = 15
    end
    object QCuentascat_nombre: TStringField
      FieldName = 'cat_nombre'
      Size = 60
    end
  end
  object dsCuentas: TDataSource
    DataSet = QCuentas
    Left = 496
    Top = 208
  end
  object ActionList1: TActionList
    Images = DM.ImgMant
    Left = 432
    Top = 208
    object Action1: TAction
      Caption = 'Anterior'
      ImageIndex = 8
    end
    object Action2: TAction
      Caption = 'Pr'#243'ximo'
      ImageIndex = 9
    end
    object Action3: TAction
      Caption = 'Insertar'
      ImageIndex = 6
      OnExecute = btInsertClick
    end
    object Action4: TAction
      Caption = 'Modificar'
      ImageIndex = 7
      OnExecute = btEditClick
    end
    object Action5: TAction
      Caption = 'Eliminar'
      ImageIndex = 1
      OnExecute = btDeleteClick
    end
    object Action6: TAction
      Caption = 'Grabar'
      ImageIndex = 2
      OnExecute = btPostClick
    end
    object Action7: TAction
      Caption = 'Cancelar'
      ImageIndex = 3
      OnExecute = btCancelClick
    end
    object Action8: TAction
      Caption = 'Buscar'
      ImageIndex = 4
      OnExecute = btFindClick
    end
    object Action9: TAction
      Caption = 'Imprimir'
      ImageIndex = 5
    end
    object Action10: TAction
      Caption = 'Salir'
      ImageIndex = 0
      OnExecute = btCloseClick
    end
    object c_btprior: TAction
      Caption = 'Anterior'
      ImageIndex = 8
    end
    object c_btnext: TAction
      Caption = 'Pr'#243'ximo'
      ImageIndex = 9
    end
    object c_btinsert: TAction
      Caption = 'Insertar'
      ImageIndex = 6
      OnExecute = c_btinsertExecute
    end
    object c_btedit: TAction
      Caption = 'Modificar'
      ImageIndex = 7
      OnExecute = c_bteditExecute
    end
    object c_btdelete: TAction
      Caption = 'Eliminar'
      ImageIndex = 1
      OnExecute = c_btdeleteExecute
    end
    object c_btpost: TAction
      Caption = 'Grabar'
      ImageIndex = 2
      OnExecute = c_btpostExecute
    end
    object c_btcancel: TAction
      Caption = 'Cancelar'
      ImageIndex = 3
      OnExecute = c_btcancelExecute
    end
    object c_btfind: TAction
      Caption = 'Buscar'
      ImageIndex = 4
      OnExecute = c_btfindExecute
    end
  end
  object QSubCentro: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    BeforePost = QSubCentroBeforePost
    AfterPost = QSubCentroAfterPost
    AfterDelete = QSubCentroAfterDelete
    OnNewRecord = QSubCentroNewRecord
    DataSource = dsCentros
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
        Name = 'cen_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      
        'emp_codigo, cen_codigo, sub_secuencia, sub_referencia, sub_nombr' +
        'e,'
      'sub_descripcion'
      'from'
      'CentroCostos_Hijos'
      'where'
      'emp_codigo = :emp_codigo'
      'and cen_codigo = :cen_codigo'
      'order by'
      'sub_secuencia')
    Left = 464
    Top = 176
    object QSubCentroemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QSubCentrocen_codigo: TIntegerField
      FieldName = 'cen_codigo'
    end
    object QSubCentrosub_secuencia: TIntegerField
      FieldName = 'sub_secuencia'
    end
    object QSubCentrosub_referencia: TStringField
      FieldName = 'sub_referencia'
      Size = 10
    end
    object QSubCentrosub_nombre: TStringField
      FieldName = 'sub_nombre'
      Size = 60
    end
    object QSubCentrosub_descripcion: TMemoField
      FieldName = 'sub_descripcion'
      BlobType = ftMemo
    end
  end
  object dsSubCentro: TDataSource
    DataSet = QSubCentro
    OnStateChange = dsSubCentroStateChange
    Left = 496
    Top = 176
  end
end
