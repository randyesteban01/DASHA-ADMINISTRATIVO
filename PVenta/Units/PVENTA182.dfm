object frmCajasIP: TfrmCajasIP
  Left = 470
  Top = 128
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Cajas'
  ClientHeight = 434
  ClientWidth = 590
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
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 590
    Height = 42
    AutoSize = True
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 38
        Width = 586
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 573
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
    Left = 6
    Top = 48
    Width = 579
    Height = 334
    ActivePage = TabSheet1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Registro'
      object Label4: TLabel
        Left = 8
        Top = 40
        Width = 22
        Height = 13
        Caption = 'Caja'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 8
        Top = 88
        Width = 79
        Height = 13
        Caption = 'Busqueda (L / P)'
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 8
        Top = 16
        Width = 56
        Height = 13
        Caption = 'Direcci'#243'n IP'
        FocusControl = DBEdit6
      end
      object Label7: TLabel
        Left = 8
        Top = 112
        Width = 61
        Height = 13
        Caption = '% Aumentar'
        FocusControl = DBEdit7
      end
      object Label8: TLabel
        Left = 8
        Top = 136
        Width = 32
        Height = 13
        Caption = 'Puerto'
        FocusControl = DBEdit8
      end
      object Label9: TLabel
        Left = 8
        Top = 160
        Width = 75
        Height = 13
        Caption = 'Precio Und/Emp'
        FocusControl = DBEdit8
      end
      object Label10: TLabel
        Left = 8
        Top = 184
        Width = 40
        Height = 13
        Caption = 'Almacen'
      end
      object Label11: TLabel
        Left = 8
        Top = 208
        Width = 41
        Height = 13
        Caption = 'Empresa'
      end
      object Label1: TLabel
        Left = 8
        Top = 253
        Width = 81
        Height = 13
        Caption = 'C'#243'digo abre caja'
      end
      object Label2: TLabel
        Left = 8
        Top = 277
        Width = 35
        Height = 13
        Caption = 'Cuenta'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 208
        Top = 285
        Width = 69
        Height = 13
        Caption = 'Puerto Display'
        FocusControl = DBEdit3
      end
      object Label12: TLabel
        Left = 8
        Top = 64
        Width = 37
        Height = 13
        Caption = 'Nombre'
        FocusControl = DBEdit1
      end
      object Label13: TLabel
        Left = 8
        Top = 230
        Width = 40
        Height = 13
        Caption = 'Sucursal'
      end
      object DBEdit4: TDBEdit
        Left = 96
        Top = 40
        Width = 105
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'caja'
        DataSource = dsCajas
        TabOrder = 1
      end
      object DBEdit5: TDBEdit
        Left = 96
        Top = 88
        Width = 105
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'primer_campo'
        DataSource = dsCajas
        TabOrder = 3
      end
      object DBEdit6: TDBEdit
        Left = 96
        Top = 16
        Width = 105
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'ip'
        DataSource = dsCajas
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit7: TDBEdit
        Left = 96
        Top = 112
        Width = 105
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'porciento'
        DataSource = dsCajas
        TabOrder = 4
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 208
        Top = 16
        Width = 153
        Height = 49
        Caption = 'Forma Numeraci'#243'n'
        DataField = 'forma_numeracion'
        DataSource = dsCajas
        Items.Strings = (
          'Por Caja'
          'Por Usuario-Caja-Fecha')
        TabOrder = 13
        Values.Strings = (
          '0'
          '1')
      end
      object DBRadioGroup2: TDBRadioGroup
        Left = 206
        Top = 72
        Width = 155
        Height = 57
        Caption = 'NCF Tarjeta Credito'
        DataField = 'ncf_tarjeta'
        DataSource = dsCajas
        Items.Strings = (
          'Con Valor Fiscal'
          'Consumidor Final')
        TabOrder = 14
        Values.Strings = (
          'C'
          'S')
      end
      object DBEdit8: TDBEdit
        Left = 96
        Top = 136
        Width = 105
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Puerto'
        DataSource = dsCajas
        TabOrder = 5
        OnDblClick = DBEdit8DblClick
      end
      object DBComboBox1: TDBComboBox
        Left = 96
        Top = 160
        Width = 105
        Height = 21
        Style = csDropDownList
        DataField = 'Precio'
        DataSource = dsCajas
        ItemHeight = 13
        Items.Strings = (
          'Precio1'
          'Precio2'
          'Precio3'
          'Precio4')
        TabOrder = 6
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 96
        Top = 184
        Width = 265
        Height = 21
        DataField = 'alm_codigo'
        DataSource = dsCajas
        KeyField = 'alm_codigo'
        ListField = 'alm_nombre'
        ListSource = dsAlmacen
        TabOrder = 8
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 96
        Top = 208
        Width = 265
        Height = 21
        DataField = 'emp_codigo'
        DataSource = dsCajas
        KeyField = 'emp_codigo'
        ListField = 'emp_nombre'
        ListSource = dsEmpresas
        TabOrder = 9
        OnClick = DBLookupComboBox2Click
      end
      object DBEdit2: TDBEdit
        Left = 96
        Top = 277
        Width = 105
        Height = 20
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'cuenta'
        DataSource = dsCajas
        TabOrder = 11
      end
      object DBEdit3: TDBEdit
        Left = 288
        Top = 285
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'puerto_display'
        DataSource = dsCajas
        TabOrder = 12
      end
      object CBcodigo_abre_caja: TDBComboBox
        Left = 96
        Top = 253
        Width = 106
        Height = 21
        Style = csDropDownList
        DataField = 'codigo_abre_caja'
        DataSource = dsCajas
        ItemHeight = 13
        Items.Strings = (
          'Star'
          'TMU'
          'Termica'
          'FISCAL')
        TabOrder = 10
      end
      object DBRadioGroup3: TDBRadioGroup
        Left = 368
        Top = 72
        Width = 177
        Height = 49
        Caption = 'Imprime ticket de credito'
        DataField = 'imprime_credito'
        DataSource = dsCajas
        Items.Strings = (
          'Si'
          'No')
        TabOrder = 15
        Values.Strings = (
          'True'
          'False')
      end
      object DBCheckBox1: TDBCheckBox
        Left = 368
        Top = 18
        Width = 188
        Height = 17
        Caption = 'Pedir clave para facturar empaque'
        DataField = 'clave_empaque'
        DataSource = dsCajas
        TabOrder = 16
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox3: TDBCheckBox
        Left = 368
        Top = 34
        Width = 185
        Height = 17
        Caption = 'Pedir clave para guardar temporal'
        DataField = 'clave_temporal'
        DataSource = dsCajas
        TabOrder = 17
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBComboBox3: TDBComboBox
        Left = 200
        Top = 160
        Width = 105
        Height = 21
        Style = csDropDownList
        DataField = 'Precio_Emp'
        DataSource = dsCajas
        ItemHeight = 13
        Items.Strings = (
          'Precio1'
          'Precio2'
          'Precio3'
          'Precio4')
        TabOrder = 7
      end
      object DBCheckBox4: TDBCheckBox
        Left = 368
        Top = 50
        Width = 131
        Height = 17
        Caption = 'Puede consultar precio'
        DataField = 'Verifica_Precio'
        DataSource = dsCajas
        TabOrder = 18
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBEdit1: TDBEdit
        Left = 96
        Top = 64
        Width = 105
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Nombre'
        DataSource = dsCajas
        TabOrder = 2
      end
      object DBRadioGroup4: TDBRadioGroup
        Left = 368
        Top = 124
        Width = 89
        Height = 51
        Caption = 'Tipo de cuadre'
        DataField = 'Tipo_Cuadre'
        DataSource = dsCajas
        Items.Strings = (
          'Resumido'
          'Detallado')
        TabOrder = 19
        Values.Strings = (
          'R'
          'D')
      end
      object DBRadioGroup5: TDBRadioGroup
        Left = 368
        Top = 232
        Width = 177
        Height = 49
        Caption = 'Cuadrar'
        DataField = 'Cuadrar_Empresa'
        DataSource = dsCajas
        Items.Strings = (
          'Todas las empresas'
          'Empresa de la caja')
        TabOrder = 20
        Values.Strings = (
          'T'
          'C')
      end
      object DBCheckBox2: TDBCheckBox
        Left = 208
        Top = 136
        Width = 121
        Height = 17
        Caption = 'Redondear el total'
        DataField = 'Redondea'
        DataSource = dsCajas
        TabOrder = 21
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBRadioGroup6: TDBRadioGroup
        Left = 368
        Top = 177
        Width = 177
        Height = 52
        Caption = 'Preguntar por impresion'
        DataField = 'pregunta_imprimir'
        DataSource = dsCajas
        Items.Strings = (
          'Si'
          'No')
        TabOrder = 22
        Values.Strings = (
          'S'
          'N')
      end
      object dbrgrpTipoLector: TDBRadioGroup
        Left = 458
        Top = 124
        Width = 86
        Height = 51
        Caption = 'Tipo de Balanza'
        DataField = 'Tipo_Lector'
        DataSource = dsCajas
        Items.Strings = (
          'Normal'
          'Balanza')
        TabOrder = 23
        Values.Strings = (
          '0'
          '1')
      end
      object dbrgrpcodigo_abre_caja_tipo: TDBRadioGroup
        Left = 204
        Top = 250
        Width = 156
        Height = 33
        Columns = 2
        DataField = 'codigo_abre_caja_tipo'
        DataSource = dsCajas
        Items.Strings = (
          'Efectivo'
          'Todos')
        TabOrder = 24
        Values.Strings = (
          'E'
          'T')
      end
      object DBLookupCombox3: TDBLookupComboBox
        Left = 96
        Top = 230
        Width = 265
        Height = 21
        DataField = 'suc_codigo'
        DataSource = dsCajas
        KeyField = 'suc_codigo'
        ListField = 'suc_nombre'
        ListSource = DS_Sucursal
        TabOrder = 25
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 571
        Height = 285
        Align = alClient
        DataSource = dsListado
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'caja'
            Title.Alignment = taCenter
            Title.Caption = 'Caja'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nombre'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ip'
            Title.Alignment = taCenter
            Title.Caption = 'IP'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'primer_campo'
            Title.Alignment = taCenter
            Title.Caption = 'Busqueda'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'porciento'
            Title.Alignment = taCenter
            Title.Caption = 'Porciento'
            Width = 52
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'puerto'
            Title.Alignment = taCenter
            Title.Caption = 'Puerto'
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'precio'
            Title.Alignment = taCenter
            Title.Caption = 'Precio'
            Visible = True
          end>
      end
    end
  end
  object QCajas: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterPost = QCajasAfterPost
    AfterDelete = QCajasAfterDelete
    OnNewRecord = QCajasNewRecord
    DataSource = DM.dsParametros
    Parameters = <>
    SQL.Strings = (
      'select '
      'ip, caja, primer_campo, porciento, forma_numeracion,'
      'ncf_tarjeta, puerto, precio, alm_codigo, emp_codigo,'
      'codigo_abre_caja, cuenta, puerto_display, imprime_credito,'
      'clave_empaque, clave_temporal, Precio_Emp,'
      'Verifica_Precio, Nombre, Tipo_Cuadre, Cuadrar_Empresa,'
      'Redondea, pregunta_imprimir, Tipo_Lector, codigo_abre_caja_tipo'
      ',suc_codigo'
      'from'
      'cajas_ip'
      'order by'
      'ip')
    Left = 304
    Top = 80
    object QCajasip: TStringField
      FieldName = 'ip'
      Size = 15
    end
    object QCajascaja: TIntegerField
      FieldName = 'caja'
    end
    object QCajasprimer_campo: TStringField
      FieldName = 'primer_campo'
      Size = 1
    end
    object QCajasporciento: TBCDField
      FieldName = 'porciento'
      Precision = 15
      Size = 2
    end
    object QCajasforma_numeracion: TIntegerField
      FieldName = 'forma_numeracion'
    end
    object QCajasncf_tarjeta: TStringField
      FieldName = 'ncf_tarjeta'
      Size = 1
    end
    object QCajaspuerto: TStringField
      FieldName = 'puerto'
      Size = 50
    end
    object QCajasprecio: TStringField
      FieldName = 'precio'
      Size = 7
    end
    object QCajasalm_codigo: TIntegerField
      FieldName = 'alm_codigo'
    end
    object QCajasemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QCajascodigo_abre_caja: TStringField
      FieldName = 'codigo_abre_caja'
      Size = 40
    end
    object QCajascuenta: TStringField
      FieldName = 'cuenta'
      Size = 15
    end
    object QCajaspuerto_display: TStringField
      FieldName = 'puerto_display'
      Size = 50
    end
    object QCajasimprime_credito: TStringField
      FieldName = 'imprime_credito'
      Size = 5
    end
    object QCajasclave_empaque: TStringField
      FieldName = 'clave_empaque'
      Size = 5
    end
    object QCajasclave_temporal: TStringField
      FieldName = 'clave_temporal'
      Size = 5
    end
    object QCajasPrecio_Emp: TStringField
      FieldName = 'Precio_Emp'
      Size = 7
    end
    object QCajasVerifica_Precio: TStringField
      FieldName = 'Verifica_Precio'
      Size = 5
    end
    object QCajasNombre: TStringField
      FieldName = 'Nombre'
    end
    object QCajasTipo_Cuadre: TStringField
      FieldName = 'Tipo_Cuadre'
      Size = 1
    end
    object QCajasCuadrar_Empresa: TStringField
      FieldName = 'Cuadrar_Empresa'
      Size = 1
    end
    object QCajasRedondea: TStringField
      FieldName = 'Redondea'
      Size = 5
    end
    object QCajaspregunta_imprimir: TStringField
      FieldName = 'pregunta_imprimir'
      Size = 1
    end
    object QCajasTipo_Lector: TIntegerField
      FieldName = 'Tipo_Lector'
    end
    object QCajascodigo_abre_caja_tipo: TStringField
      FieldName = 'codigo_abre_caja_tipo'
      Size = 1
    end
    object QCajassuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
  end
  object Search: TQrySearchDlgADO
    Title = 'Cajas IP'
    ResultField = 'caja'
    Query.Strings = (
      'select caj_nombre, caj_codigo'
      'from cajeros')
    AliasFields.Strings = (
      'Nombre'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 304
    Top = 112
  end
  object dsCajas: TDataSource
    AutoEdit = False
    DataSet = QCajas
    OnStateChange = dsCajasStateChange
    OnDataChange = dsCajasDataChange
    Left = 336
    Top = 80
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 336
    Top = 112
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
  object QListado: TADOQuery
    Connection = DM.ADOSigma
    OnNewRecord = QListadoNewRecord
    DataSource = DM.dsEmpresas
    Parameters = <>
    SQL.Strings = (
      'select '
      'ip, caja, primer_campo, porciento, forma_numeracion,'
      'ncf_tarjeta, puerto, precio, alm_codigo, emp_codigo,'
      'Nombre'
      'from'
      'cajas_ip'
      'order by'
      'caja')
    Left = 304
    Top = 144
    object QListadoip: TStringField
      FieldName = 'ip'
      Size = 15
    end
    object QListadocaja: TIntegerField
      FieldName = 'caja'
    end
    object QListadoprimer_campo: TStringField
      FieldName = 'primer_campo'
      Size = 1
    end
    object QListadoporciento: TBCDField
      FieldName = 'porciento'
      Precision = 15
      Size = 2
    end
    object QListadoforma_numeracion: TIntegerField
      FieldName = 'forma_numeracion'
    end
    object QListadoncf_tarjeta: TStringField
      FieldName = 'ncf_tarjeta'
      Size = 1
    end
    object QListadopuerto: TStringField
      FieldName = 'puerto'
      Size = 50
    end
    object QListadoprecio: TStringField
      FieldName = 'precio'
      Size = 7
    end
    object QListadoalm_codigo: TIntegerField
      FieldName = 'alm_codigo'
    end
    object QListadoemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QListadoNombre: TStringField
      FieldName = 'Nombre'
    end
  end
  object dsListado: TDataSource
    DataSet = QListado
    Left = 336
    Top = 144
  end
  object QAlmacen: TADOQuery
    Connection = DM.ADOSigma
    DataSource = DM.dsParametros
    Parameters = <
      item
        Name = 'emp_codigo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'alm_codigo, alm_nombre'
      'from'
      'almacen'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'alm_nombre')
    Left = 304
    Top = 176
    object QAlmacenalm_codigo: TIntegerField
      FieldName = 'alm_codigo'
    end
    object QAlmacenalm_nombre: TStringField
      FieldName = 'alm_nombre'
      Size = 60
    end
  end
  object QEmpresas: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'select'
      'emp_codigo, emp_nombre'
      'from'
      'empresas'
      'order by'
      'emp_nombre')
    Left = 304
    Top = 208
    object QEmpresasemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QEmpresasemp_nombre: TStringField
      FieldName = 'emp_nombre'
      Size = 60
    end
  end
  object dsAlmacen: TDataSource
    DataSet = QAlmacen
    Left = 336
    Top = 176
  end
  object dsEmpresas: TDataSource
    DataSet = QEmpresas
    Left = 336
    Top = 208
  end
  object qSucursal: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <
      item
        Name = 'emp_codigo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      
        'select emp_codigo, suc_codigo, suc_nombre,suc_status from sucurs' +
        'ales'
      'where emp_codigo = :emp_codigo'
      'order by suc_nombre')
    Left = 304
    Top = 256
    object IntegerField1: TIntegerField
      FieldName = 'emp_codigo'
    end
    object qSucursalsuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object qSucursalsuc_nombre: TStringField
      FieldName = 'suc_nombre'
      Size = 255
    end
    object qSucursalsuc_status: TStringField
      FieldName = 'suc_status'
      Size = 3
    end
  end
  object DS_Sucursal: TDataSource
    DataSet = qSucursal
    Left = 336
    Top = 256
  end
end
