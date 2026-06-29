object frmUsuarios: TfrmUsuarios
  Left = 365
  Top = 160
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Usuarios y Claves'
  ClientHeight = 523
  ClientWidth = 1065
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  Menu = MainMenu1
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
  object PageControl1: TPageControl
    Left = 0
    Top = 68
    Width = 1065
    Height = 455
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Registro'
      object Label2: TLabel
        Left = 312
        Top = 8
        Width = 37
        Height = 13
        Caption = 'Nombre'
      end
      object Label3: TLabel
        Left = 312
        Top = 32
        Width = 27
        Height = 13
        Caption = 'Clave'
      end
      object Lista1: TTreeView
        Left = 0
        Top = 0
        Width = 297
        Height = 427
        Align = alLeft
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Images = Imagenes
        Indent = 19
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        OnChange = Lista1Change
        OnDblClick = Lista1DblClick
      end
      object DBEdit2: TDBEdit
        Left = 360
        Top = 8
        Width = 121
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'USU_NOMBRE'
        DataSource = dsUsuarios
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 360
        Top = 32
        Width = 121
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'USU_CLAVE'
        DataSource = dsUsuarios
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        PasswordChar = 'x'
        TabOrder = 2
      end
      object PageControl2: TPageControl
        Left = 304
        Top = 56
        Width = 401
        Height = 313
        ActivePage = TabSheet4
        TabOrder = 3
        object TabSheet4: TTabSheet
          Caption = 'Opci'#243'nes'
          object BitBtn1: TBitBtn
            Left = 104
            Top = 186
            Width = 94
            Height = 25
            Caption = '&Grabar'
            TabOrder = 0
            TabStop = False
            OnClick = BitBtn1Click
          end
          object BitBtn3: TBitBtn
            Left = 8
            Top = 161
            Width = 94
            Height = 25
            Caption = '&Marcar todas'
            TabOrder = 1
            TabStop = False
            OnClick = BitBtn3Click
          end
          object BitBtn4: TBitBtn
            Left = 104
            Top = 136
            Width = 94
            Height = 25
            Caption = '&Desmarcar todas'
            TabOrder = 2
            TabStop = False
            OnClick = BitBtn4Click
          end
          object BitBtn5: TBitBtn
            Left = 8
            Top = 186
            Width = 94
            Height = 25
            Caption = 'Marcar &grupo'
            TabOrder = 3
            TabStop = False
            OnClick = BitBtn5Click
          end
          object BitBtn6: TBitBtn
            Left = 104
            Top = 161
            Width = 94
            Height = 25
            Caption = 'Desmarcar gru&po'
            TabOrder = 4
            TabStop = False
            OnClick = BitBtn6Click
          end
          object ckExpand: TCheckBox
            Left = 8
            Top = 112
            Width = 137
            Height = 17
            TabStop = False
            Caption = 'Expandir opciones'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
            OnClick = ckExpandClick
          end
          object BitBtn2: TBitBtn
            Left = 8
            Top = 136
            Width = 94
            Height = 25
            Caption = 'Copiar Accesos'
            TabOrder = 6
            OnClick = BitBtn2Click
          end
          object GroupBox1: TGroupBox
            Left = 8
            Top = 8
            Width = 145
            Height = 81
            Caption = 'En la opcion seleccionada'
            TabOrder = 7
            object ckInsert: TCheckBox
              Left = 8
              Top = 24
              Width = 105
              Height = 17
              Caption = 'Puede A'#241'adir'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnClick = ckInsertClick
            end
            object ckEdit: TCheckBox
              Left = 8
              Top = 40
              Width = 121
              Height = 17
              Caption = 'Puede Modificar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              OnClick = ckEditClick
            end
            object ckDelete: TCheckBox
              Left = 8
              Top = 56
              Width = 113
              Height = 17
              Caption = 'Puede Eliminar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              OnClick = ckDeleteClick
            end
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Empresas / Sucursales'
          ImageIndex = 1
          object Label8: TLabel
            Left = 1
            Top = 224
            Width = 103
            Height = 13
            Caption = 'Sucursal por defecto:'
          end
          object GroupBox2: TGroupBox
            Left = 0
            Top = 8
            Width = 345
            Height = 106
            Caption = 'Empresas'
            TabOrder = 0
            object DBGrid1: TDBGrid
              Left = 2
              Top = 15
              Width = 341
              Height = 89
              Align = alClient
              Ctl3D = False
              DataSource = dsEmpresas
              Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              ParentCtl3D = False
              PopupMenu = PopupMenu1
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnColEnter = DBGrid1ColEnter
              Columns = <
                item
                  Expanded = False
                  FieldName = 'emp_codigo'
                  Title.Alignment = taCenter
                  Title.Caption = 'C'#243'digo'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'emp_nombre'
                  Title.Caption = 'Nombre de la Empresa'
                  Width = 249
                  Visible = True
                end>
            end
          end
          object GroupBox3: TGroupBox
            Left = 0
            Top = 120
            Width = 345
            Height = 97
            Caption = 'Sucursales'
            TabOrder = 1
            object DBGrid2: TDBGrid
              Left = 2
              Top = 15
              Width = 341
              Height = 80
              Align = alClient
              Ctl3D = False
              DataSource = dsSucursal
              Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              ParentCtl3D = False
              PopupMenu = PopupMenu1
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnColEnter = DBGrid2ColEnter
              Columns = <
                item
                  Expanded = False
                  FieldName = 'suc_codigo'
                  Title.Alignment = taCenter
                  Title.Caption = 'C'#243'digo'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'suc_nombre'
                  Title.Caption = 'Nombre de la Sucursal'
                  Width = 252
                  Visible = True
                end>
            end
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 39
            Top = 246
            Width = 266
            Height = 21
            DataField = 'usu_suc_default'
            DataSource = dsUsuarios
            DropDownRows = 20
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'suc_codigo'
            ListField = 'suc_nombre'
            ListSource = dsSucursalDefault
            ParentFont = False
            TabOrder = 2
            TabStop = False
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'Parametros'
          ImageIndex = 2
          object DBCheckBox2: TDBCheckBox
            Left = 8
            Top = 8
            Width = 201
            Height = 17
            Caption = 'Puede modificar precio en la factura'
            DataField = 'usu_modifica_precio'
            DataSource = dsUsuarios
            TabOrder = 0
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox3: TDBCheckBox
            Left = 8
            Top = 40
            Width = 225
            Height = 17
            Caption = 'Puede facturar por debajo precio m'#237'nimo'
            DataField = 'usu_debajo_minimo'
            DataSource = dsUsuarios
            TabOrder = 1
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox4: TDBCheckBox
            Left = 8
            Top = 120
            Width = 257
            Height = 17
            Caption = 'Puede exceder descuento m'#225'ximo en la factura'
            DataField = 'usu_excede_descuento'
            DataSource = dsUsuarios
            TabOrder = 2
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox5: TDBCheckBox
            Left = 8
            Top = 56
            Width = 201
            Height = 17
            Caption = 'Puede facturar por debajo del costo'
            DataField = 'usu_debajo_costo'
            DataSource = dsUsuarios
            TabOrder = 3
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox6: TDBCheckBox
            Left = 8
            Top = 72
            Width = 185
            Height = 17
            Caption = 'Puede exceder el l'#237'mite del cliente'
            DataField = 'usu_excede_limite'
            DataSource = dsUsuarios
            TabOrder = 4
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox7: TDBCheckBox
            Left = 8
            Top = 88
            Width = 217
            Height = 17
            Caption = 'Puede exceder existencia m'#237'nima'
            DataField = 'usu_factura_negativo'
            DataSource = dsUsuarios
            TabOrder = 5
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox8: TDBCheckBox
            Left = 8
            Top = 104
            Width = 209
            Height = 17
            Caption = 'Puede otorgar descuento en la factura'
            DataField = 'usu_descuento'
            DataSource = dsUsuarios
            TabOrder = 6
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox9: TDBCheckBox
            Left = 8
            Top = 24
            Width = 193
            Height = 17
            Caption = 'Puede disminuir precio en la factura'
            DataField = 'usu_disminuye_precio'
            DataSource = dsUsuarios
            TabOrder = 7
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox10: TDBCheckBox
            Left = 8
            Top = 136
            Width = 257
            Height = 17
            Caption = 'Puede ver el costo en la busqueda de productos'
            DataField = 'usu_ver_costo'
            DataSource = dsUsuarios
            TabOrder = 8
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox11: TDBCheckBox
            Left = 8
            Top = 152
            Width = 129
            Height = 17
            Caption = 'Puede anular tickets'
            DataField = 'usu_anula_ticket'
            DataSource = dsUsuarios
            TabOrder = 9
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox12: TDBCheckBox
            Left = 8
            Top = 168
            Width = 225
            Height = 17
            Caption = 'Visualizar cuentas contables en la factura'
            DataField = 'usu_factura_cuentas'
            DataSource = dsUsuarios
            TabOrder = 10
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox13: TDBCheckBox
            Left = 8
            Top = 184
            Width = 209
            Height = 17
            Caption = 'Modifica cotizaciones de otros usuarios'
            DataField = 'usu_modifica_otras_cotizaciones'
            DataSource = dsUsuarios
            TabOrder = 11
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox14: TDBCheckBox
            Left = 8
            Top = 200
            Width = 265
            Height = 17
            Caption = 'Puede autorizar venta x empaque en las cajas'
            DataField = 'usu_autoriza_venta_emp'
            DataSource = dsUsuarios
            TabOrder = 12
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox15: TDBCheckBox
            Left = 8
            Top = 216
            Width = 265
            Height = 17
            Caption = 'Puede autorizar facturas a credito en las cajas'
            DataField = 'usu_autoriza_credito'
            DataSource = dsUsuarios
            TabOrder = 13
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object dbchkusu_modifica_factura: TDBCheckBox
            Left = 207
            Top = 8
            Width = 144
            Height = 17
            Caption = 'Puede Modificar Facturas'
            DataField = 'usu_modifica_factura'
            DataSource = dsUsuarios
            TabOrder = 14
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object dbchkusu_solo_conduce: TDBCheckBox
            Left = 210
            Top = 27
            Width = 166
            Height = 17
            Caption = 'Solo puede realizar Conduces'
            DataField = 'usu_solo_conduce'
            DataSource = dsUsuarios
            TabOrder = 15
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object dbchkusu_modifica_nombreprod: TDBCheckBox
            Left = 196
            Top = 88
            Width = 192
            Height = 17
            Caption = 'Puede modificar en la factura'
            DataField = 'usu_modifica_nombreprod'
            DataSource = dsUsuarios
            TabOrder = 16
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox16: TDBCheckBox
            Left = 9
            Top = 233
            Width = 239
            Height = 17
            Caption = 'Reenviar comprobantes rechazados a DGII'
            DataField = 'usu_reenvia_dgii'
            DataSource = dsUsuarios
            TabOrder = 17
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
        end
        object tsParRestBar: TTabSheet
          Caption = 'RestBar'
          ImageIndex = 3
          object dbchkusu_supervisor: TDBCheckBox
            Left = 8
            Top = 8
            Width = 73
            Height = 17
            Caption = 'Supervisor'
            DataField = 'usu_supervisor'
            DataSource = dsUsuarios
            TabOrder = 0
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object dbchkusu_Cajero: TDBCheckBox
            Left = 8
            Top = 32
            Width = 73
            Height = 17
            Caption = 'Cajero'
            DataField = 'usu_Cajero'
            DataSource = dsUsuarios
            TabOrder = 1
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object dbchkusu_camarero: TDBCheckBox
            Left = 8
            Top = 59
            Width = 73
            Height = 17
            Caption = 'Camarero'
            DataField = 'usu_camarero'
            DataSource = dsUsuarios
            TabOrder = 2
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
        end
      end
      object Lista2: TListBox
        Left = 11
        Top = 264
        Width = 17
        Height = 41
        ItemHeight = 13
        TabOrder = 4
        Visible = False
      end
      object Lista3: TListBox
        Left = 27
        Top = 264
        Width = 17
        Height = 41
        ItemHeight = 13
        TabOrder = 5
        Visible = False
      end
      object Lista4: TListBox
        Left = 40
        Top = 264
        Width = 17
        Height = 41
        ItemHeight = 13
        TabOrder = 6
        Visible = False
      end
      object Ins: TListBox
        Left = 61
        Top = 264
        Width = 15
        Height = 41
        ItemHeight = 13
        TabOrder = 7
        Visible = False
      end
      object Modi: TListBox
        Left = 75
        Top = 264
        Width = 22
        Height = 41
        ItemHeight = 13
        TabOrder = 8
        Visible = False
      end
      object Del: TListBox
        Left = 91
        Top = 264
        Width = 17
        Height = 41
        ItemHeight = 13
        TabOrder = 9
        Visible = False
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 42
    Width = 1065
    Height = 26
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 5
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object DBText1: TDBText
      Left = 226
      Top = 4
      Width = 70
      Height = 20
      Alignment = taRightJustify
      AutoSize = True
      DataField = 'Status'
      DataSource = dsUsuarios
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 48
      Top = 2
      Width = 73
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      DataField = 'USU_CODIGO'
      DataSource = dsUsuarios
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBCheckBox1: TDBCheckBox
      Left = 360
      Top = 5
      Width = 169
      Height = 17
      Caption = 'Puede actualizar los NCF'
      DataField = 'USU_CREA_NCF'
      DataSource = dsUsuarios
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 1065
    Height = 42
    AutoSize = True
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 38
        Width = 1061
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 1048
      Height = 38
      AutoSize = True
      ButtonHeight = 36
      ButtonWidth = 50
      Caption = 'ToolBar1'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Images = DM.ImgMant
      ParentFont = False
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
  object QUsuarios: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforePost = QUsuariosBeforePost
    AfterPost = QUsuariosAfterPost
    AfterDelete = QUsuariosAfterDelete
    OnCalcFields = QUsuariosCalcFields
    OnNewRecord = QUsuariosNewRecord
    Parameters = <>
    SQL.Strings = (
      'select '
      'USU_CODIGO, USU_NOMBRE, USU_CLAVE, '
      'USU_STATUS, USU_EMPDEFAULT,'
      'USU_CREA_NCF, usu_modifica_precio,'
      'usu_debajo_minimo, usu_debajo_costo,'
      'usu_excede_limite, usu_factura_negativo,'
      'usu_descuento, usu_excede_descuento,'
      'usu_modifica_factura, usu_aumenta_precio,'
      'usu_disminuye_precio, usu_ver_costo,'
      'usu_anula_ticket, usu_factura_cuentas,'
      'usu_modifica_otras_cotizaciones,'
      'usu_autoriza_venta_emp, usu_autoriza_credito,'
      
        'usu_supervisor, usu_Cajero, usu_camarero, usu_vendedor, usu_solo' +
        '_conduce'
      ',usu_modifica_nombreprod,usu_suc_default, usu_reenvia_dgii'
      'from'
      'USUARIOS '
      'WHERE USU_STATUS <> '#39'INA'#39
      'order by'
      'usu_codigo')
    Left = 144
    Top = 152
    object QUsuariosUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      OnGetText = QUsuariosUSU_CODIGOGetText
    end
    object QUsuariosUSU_NOMBRE: TIBStringField
      FieldName = 'USU_NOMBRE'
      Size = 60
    end
    object QUsuariosUSU_CLAVE: TIBStringField
      FieldName = 'USU_CLAVE'
    end
    object QUsuariosUSU_STATUS: TIBStringField
      FieldName = 'USU_STATUS'
      Size = 3
    end
    object QUsuariosStatus: TStringField
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'Status'
      Size = 8
      Calculated = True
    end
    object QUsuariosUSU_EMPDEFAULT: TIntegerField
      FieldName = 'USU_EMPDEFAULT'
      Origin = 'USUARIOS.USU_EMPDEFAULT'
      OnGetText = QUsuariosUSU_EMPDEFAULTGetText
    end
    object QUsuariosUSU_CREA_NCF: TStringField
      FieldName = 'USU_CREA_NCF'
      Size = 5
    end
    object QUsuariosusu_modifica_precio: TStringField
      FieldName = 'usu_modifica_precio'
      Size = 5
    end
    object QUsuariosusu_debajo_minimo: TStringField
      FieldName = 'usu_debajo_minimo'
      Size = 5
    end
    object QUsuariosusu_debajo_costo: TStringField
      FieldName = 'usu_debajo_costo'
      Size = 5
    end
    object QUsuariosusu_excede_limite: TStringField
      FieldName = 'usu_excede_limite'
      Size = 5
    end
    object QUsuariosusu_factura_negativo: TStringField
      FieldName = 'usu_factura_negativo'
      Size = 5
    end
    object QUsuariosusu_descuento: TStringField
      FieldName = 'usu_descuento'
      Size = 5
    end
    object QUsuariosusu_excede_descuento: TStringField
      FieldName = 'usu_excede_descuento'
      Size = 5
    end
    object QUsuariosusu_modifica_factura: TStringField
      FieldName = 'usu_modifica_factura'
      Size = 5
    end
    object QUsuariosusu_aumenta_precio: TStringField
      FieldName = 'usu_aumenta_precio'
      Size = 5
    end
    object QUsuariosusu_disminuye_precio: TStringField
      FieldName = 'usu_disminuye_precio'
      Size = 5
    end
    object QUsuariosusu_ver_costo: TStringField
      FieldName = 'usu_ver_costo'
      Size = 5
    end
    object QUsuariosusu_anula_ticket: TStringField
      FieldName = 'usu_anula_ticket'
      Size = 5
    end
    object QUsuariosusu_factura_cuentas: TStringField
      FieldName = 'usu_factura_cuentas'
      Size = 5
    end
    object QUsuariosusu_modifica_otras_cotizaciones: TStringField
      FieldName = 'usu_modifica_otras_cotizaciones'
      Size = 5
    end
    object QUsuariosusu_autoriza_venta_emp: TStringField
      FieldName = 'usu_autoriza_venta_emp'
      Size = 5
    end
    object QUsuariosusu_autoriza_credito: TStringField
      FieldName = 'usu_autoriza_credito'
      Size = 5
    end
    object QUsuariosusu_supervisor: TBooleanField
      FieldName = 'usu_supervisor'
    end
    object QUsuariosusu_Cajero: TBooleanField
      FieldName = 'usu_Cajero'
      OnValidate = QUsuariosusu_CajeroValidate
    end
    object QUsuariosusu_camarero: TBooleanField
      FieldName = 'usu_camarero'
    end
    object QUsuariosusu_vendedor: TBooleanField
      FieldName = 'usu_vendedor'
      OnValidate = QUsuariosusu_vendedorValidate
    end
    object QUsuariosusu_solo_conduce: TBooleanField
      FieldName = 'usu_solo_conduce'
    end
    object QUsuariosusu_modifica_nombreprod: TBooleanField
      FieldName = 'usu_modifica_nombreprod'
    end
    object QUsuariosusu_suc_default: TIntegerField
      FieldName = 'usu_suc_default'
    end
    object QUsuariosusu_reenvia_dgii: TBooleanField
      FieldName = 'usu_reenvia_dgii'
    end
  end
  object dsUsuarios: TDataSource
    AutoEdit = False
    DataSet = QUsuarios
    OnStateChange = dsUsuariosStateChange
    OnDataChange = dsUsuariosDataChange
    Left = 176
    Top = 152
  end
  object Search: TQrySearchDlgADO
    Title = 'Listado de Usuarios'
    ResultField = 'usu_codigo'
    AliasFields.Strings = (
      'Nombre'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 144
    Top = 184
  end
  object Imagenes: TImageList
    Left = 177
    Top = 184
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      00000000000000000000FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFCFFFB00000000
      F3FFFFF700000000E1F9FE6F00000000E1F3FD9F00000000F0E3FD5F00000000
      F847FD2F00000000FC0FFA0F00000000FE1FF41F00000000FC0FC8FF00000000
      F84F91FF00000000E0E38BFF00000000C1F1C3FF00000000C7F8E7FF00000000
      FFFFFFFF00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object QAccesos: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    DataSource = dsUsuarios
    Parameters = <
      item
        Name = 'usu_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select '
      'USU_CODIGO, INSERTA, MODIFICA, ELIMINA, pri_nombre,'
      'descripcion'
      'from PRIVILEGIOS'
      'where usu_codigo = :usu_codigo')
    Left = 144
    Top = 216
    object QAccesosUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Required = True
    end
    object QAccesosINSERTA: TIBStringField
      FieldName = 'INSERTA'
      Size = 5
    end
    object QAccesosMODIFICA: TIBStringField
      FieldName = 'MODIFICA'
      Size = 5
    end
    object QAccesosELIMINA: TIBStringField
      FieldName = 'ELIMINA'
      Size = 5
    end
    object QAccesospri_nombre: TStringField
      FieldName = 'pri_nombre'
      Size = 50
    end
    object QAccesosdescripcion: TStringField
      FieldName = 'descripcion'
      Size = 80
    end
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 144
    Top = 248
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 176
    Top = 216
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
  object QEmpresas: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsUsuarios
    Parameters = <
      item
        Name = 'usu_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'e.emp_codigo, e.emp_nombre, a.usu_codigo'
      'from'
      'empresas e, empaccesos a'
      'where'
      'e.emp_codigo = a.emp_codigo'
      'and a.usu_codigo = :usu_codigo'
      'order by'
      'e.emp_codigo')
    Left = 144
    Top = 280
    object QEmpresasemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QEmpresasemp_nombre: TStringField
      FieldName = 'emp_nombre'
      Size = 60
    end
    object QEmpresasusu_codigo: TIntegerField
      FieldName = 'usu_codigo'
    end
  end
  object dsEmpresas: TDataSource
    DataSet = QEmpresas
    Left = 176
    Top = 280
  end
  object QSucursales: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsEmpresas
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
        Name = 'usu_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      's.suc_codigo, s.suc_nombre'
      'from'
      'Sucursales s, Sucursal_acceso a'
      'where'
      's.emp_codigo = a.emp_codigo'
      'and s.suc_codigo = a.suc_codigo'
      'and a.emp_codigo = :emp_codigo'
      'and a.usu_codigo = :usu_codigo'
      'order by'
      's.suc_codigo')
    Left = 224
    Top = 152
    object QSucursalessuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QSucursalessuc_nombre: TStringField
      FieldName = 'suc_nombre'
      Size = 60
    end
  end
  object dsSucursal: TDataSource
    DataSet = QSucursales
    Left = 256
    Top = 152
  end
  object PopupMenu1: TPopupMenu
    Left = 144
    Top = 312
    object Aadirempresa1: TMenuItem
      Caption = 'A'#241'adir Empresa'
      OnClick = Aadirempresa1Click
    end
    object Eliminarempresa1: TMenuItem
      Caption = 'Eliminar Empresa'
      OnClick = Eliminarempresa1Click
    end
    object AadirSucursal1: TMenuItem
      Caption = 'A'#241'adir Sucursal'
      OnClick = AadirSucursal1Click
    end
    object EliminarSucursal1: TMenuItem
      Caption = 'Eliminar Sucursal'
      OnClick = EliminarSucursal1Click
    end
  end
  object MainMenu1: TMainMenu
    AutoHotkeys = maManual
    Images = Imagenes
    Left = 176
    Top = 312
    object Inventario4: TMenuItem
      Caption = 'Inventario'
      object inv_productos: TMenuItem
        Tag = 1
        Caption = 'Productos'
      end
      object inv_almacenes: TMenuItem
        Tag = 1
        Caption = 'Almacenes'
      end
      object inv_Boletos: TMenuItem
        Tag = 1
        Caption = 'Boletos'
      end
      object inv_familias: TMenuItem
        Tag = 1
        Caption = 'Familia de productos'
      end
      object inv_deptos: TMenuItem
        Tag = 1
        Caption = 'Departamentos'
      end
      object inv_marcas: TMenuItem
        Tag = 1
        Caption = 'Marcas'
      end
      object inv_colores: TMenuItem
        Tag = 1
        Caption = 'Colores'
      end
      object inv_unidades: TMenuItem
        Tag = 1
        Caption = 'Unidades de medida'
      end
      object inv_ajuste: TMenuItem
        Tag = 1
        Caption = 'Ajustar inventario'
      end
      object inv_conduce: TMenuItem
        Tag = 1
        Caption = 'Conduces'
      end
      object inv_entrada: TMenuItem
        Tag = 1
        Caption = 'Entradas de almac'#233'n'
      end
      object inv_gerente: TMenuItem
        Tag = 1
        Caption = 'Gerentes de producto'
      end
      object inv_pasillo: TMenuItem
        Tag = 1
        Caption = 'Pasillos'
      end
      object inv_fisico: TMenuItem
        Tag = 1
        Caption = 'Inventario f'#237'sico'
      end
      object inv_liq: TMenuItem
        Tag = 1
        Caption = 'Liquidaciones'
      end
      object inv_trans: TMenuItem
        Tag = 1
        Caption = 'Transferencias'
      end
      object inv_vence: TMenuItem
        Tag = 1
        Caption = 'Vencimiento'
      end
      object inv_abierta: TMenuItem
        Tag = 1
        Caption = 'Digitaci'#243'n abierta'
      end
      object inv_eliminar: TMenuItem
        Tag = 1
        Caption = 'Eliminar productos'
      end
    end
    object Ventas3: TMenuItem
      Caption = 'Ventas'
      object venta_tipofactura: TMenuItem
        Tag = 1
        Caption = 'Tipos de factura'
      end
      object venta_alquiler: TMenuItem
        Tag = 1
        Caption = 'Alquiler'
      end
      object venta_boleto: TMenuItem
        Tag = 1
        Caption = 'Boletos'
      end
      object venta_cotizacion: TMenuItem
        Tag = 1
        Caption = 'Cotizaciones'
      end
      object venta_factura: TMenuItem
        Tag = 1
        Caption = 'Facturas'
      end
      object venta_devolucion: TMenuItem
        Caption = 'Devoluciones en venta'
      end
      object venta_oferta: TMenuItem
        Tag = 1
        Caption = 'Ofertas'
      end
      object venta_pedido: TMenuItem
        Tag = 1
        Caption = 'Pedidos de clientes'
      end
      object venta_automatica: TMenuItem
        Caption = 'Facturaci'#243'n autom'#225'tica'
      end
      object venta_clienteclub: TMenuItem
        Tag = 1
        Caption = 'Clientes de puntos'
      end
      object venta_cajero: TMenuItem
        Tag = 1
        Caption = 'Cajeros'
      end
      object venta_liq_ticket_transp: TMenuItem
        Caption = 'Liquidacion Tickets Transporte'
      end
    end
    object CxC1: TMenuItem
      Caption = 'CxC'
      object cxc_cliente: TMenuItem
        Tag = 1
        Caption = 'Clientes'
      end
      object cxc_recibo: TMenuItem
        Caption = 'Recibos'
      end
      object cxc_nc: TMenuItem
        Caption = 'NC a clientes'
      end
      object cxc_nd: TMenuItem
        Caption = 'ND a clientes'
      end
    end
    object CxP1: TMenuItem
      Caption = 'CxP'
      object cxp_proveedores: TMenuItem
        Tag = 1
        Caption = 'Proveedores'
      end
      object cxp_orden: TMenuItem
        Tag = 1
        Caption = 'Ordenes de compra'
      end
      object cxp_factura: TMenuItem
        Tag = 1
        Caption = 'Facturas de compra y servicio'
      end
      object cxp_devolucion: TMenuItem
        Caption = 'Devoluciones en compras'
      end
      object cxp_nc: TMenuItem
        Caption = 'NC de proveedores'
      end
      object cxp_cotizacionmultiple: TMenuItem
        Caption = 'Cotizaci'#243'n m'#250'ltiples'
      end
    end
    object Banco1: TMenuItem
      Caption = 'Banco'
      object banco_cuenta: TMenuItem
        Tag = 1
        Caption = 'Cuentas de banco'
      end
      object banco_concepto: TMenuItem
        Tag = 1
        Caption = 'Conceptos'
      end
      object banco_concil: TMenuItem
        Caption = 'Conciliaci'#243'n bancaria'
      end
      object banco_depositos: TMenuItem
        Caption = 'Dep'#243'sitos'
        object banco_dp_crear: TMenuItem
          Caption = 'Crear dep'#243'sito'
        end
        object banco_dp_anular: TMenuItem
          Caption = 'Anular dep'#243'sito'
        end
        object banco_dp_eliminar: TMenuItem
          Caption = 'Eliminar dep'#243'sito'
        end
      end
      object banco_cheques: TMenuItem
        Caption = 'Cheques'
        object banco_ck_crear: TMenuItem
          Caption = 'Crear cheque'
        end
        object banco_ck_anular: TMenuItem
          Caption = 'Anular cheque'
        end
        object banco_ck_imprimir: TMenuItem
          Caption = 'Imprimir cheque'
        end
        object banco_ck_eliminar: TMenuItem
          Caption = 'Eliminar cheque'
        end
        object banco_ck_config: TMenuItem
          Caption = 'Configurar impresi'#243'n'
        end
      end
      object banco_cargos: TMenuItem
        Caption = 'Cargos bancarios'
        object banco_cb_crear: TMenuItem
          Caption = 'Crear cargo'
        end
        object banco_cb_anular: TMenuItem
          Caption = 'Anular cargo'
        end
        object banco_cb_eliminar: TMenuItem
          Caption = 'Eliminar cargo'
        end
      end
      object banco_solicitudes: TMenuItem
        Caption = 'Solicitudes de cheque'
        object banco_sol_crear: TMenuItem
          Caption = 'Crear solicitud'
        end
        object banco_sol_aprobar: TMenuItem
          Caption = 'Aprobar solicitud'
        end
        object banco_sol_imprimir: TMenuItem
          Caption = 'Imprimir solicitud'
        end
        object banco_sol_eliminar: TMenuItem
          Caption = 'Eliminar solicitud'
        end
        object banco_sol_generar: TMenuItem
          Caption = 'Generar cheques'
        end
      end
      object banco_trans: TMenuItem
        Caption = 'Transferencias'
        object banco_trans_crear: TMenuItem
          Caption = 'Crear transferencia'
        end
        object banco_trans_anular: TMenuItem
          Caption = 'Anular transferencia'
        end
        object banco_trans_eliminar: TMenuItem
          Caption = 'Eliminar transferencia'
        end
        object banco_trans_imprimir: TMenuItem
          Caption = 'Imprimir transferencia'
        end
      end
      object banco_libro: TMenuItem
        Caption = 'Libro de banco'
      end
      object banco_disp: TMenuItem
        Caption = 'Disponibilidad Banco'
      end
    end
    object Caja1: TMenuItem
      Caption = 'Caja'
      object CajasIP1: TMenuItem
        Tag = 1
        Caption = 'Cajas IP'
      end
      object CuadredeCaja1: TMenuItem
        Caption = 'Cuadre cajas contables'
        Hint = 'Cuadre de caja por cajero'
        object Cuadregeneral1: TMenuItem
          Caption = 'Cuadre general'
        end
        object Dewsgloceefectivo1: TMenuItem
          Caption = 'Desgloce efectivo'
        end
      end
      object N29: TMenuItem
        Caption = '-'
      end
      object CuadrecajasIP1: TMenuItem
        Caption = 'Cuadre cajas IP'
      end
      object CuadrecajasIPdefinitivo1: TMenuItem
        Caption = 'Cuadre cajas IP definitivo'
      end
      object N30: TMenuItem
        Caption = '-'
      end
      object Desembolsos1: TMenuItem
        Caption = 'Desembolsos'
      end
      object Resumendeingresos1: TMenuItem
        Caption = 'Resumen de ingresos'
      end
      object N34: TMenuItem
        Caption = '-'
      end
      object Supervisoresdecaja1: TMenuItem
        Caption = 'Supervisores de caja'
      end
    end
    object Contabilidad1: TMenuItem
      Caption = 'Contabilidad'
      Hint = 'Contabilidad General'
      object cont_catalogo: TMenuItem
        Tag = 1
        Caption = 'Cat'#225'logo de cuentas'
      end
      object cont_anexo: TMenuItem
        Tag = 1
        Caption = 'Anexos'
      end
      object cont_cajas: TMenuItem
        Tag = 1
        Caption = 'Cajas contables'
      end
      object cont_centros: TMenuItem
        Tag = 1
        Caption = 'Centros de costo'
      end
      object cont_tipodoc: TMenuItem
        Tag = 1
        Caption = 'Tipos de documento'
      end
      object cont_bienes: TMenuItem
        Tag = 1
        Caption = 'Tipo de bienes y servicios'
      end
      object cont_entradas: TMenuItem
        Tag = 1
        Caption = 'Entradas de diario'
      end
      object cont_movimiento: TMenuItem
        Caption = 'Movimientos x cuenta'
      end
      object cont_reportes: TMenuItem
        Caption = 'Reportes'
        object cont_rep_diario: TMenuItem
          Caption = 'Diario general'
        end
        object cont_rep_mayor: TMenuItem
          Caption = 'Mayor general'
        end
        object cont_rep_bce: TMenuItem
          Caption = 'Balance comprobaci'#243'n'
        end
        object cont_rep_resumen: TMenuItem
          Caption = 'Resumen de entradas'
        end
        object cont_rep_anexo: TMenuItem
          Caption = 'Imprimir anexos'
        end
      end
      object cont_estados: TMenuItem
        Caption = 'Estados'
        object cont_est_res1: TMenuItem
          Caption = 'Resultado x mes'
        end
        object cont_est_res2: TMenuItem
          Caption = 'Resultado anual'
        end
        object cont_est_sit_1: TMenuItem
          Caption = 'Situaci'#243'n x mes'
        end
        object cont_est_sit_2: TMenuItem
          Caption = 'Situaci'#243'n anual'
        end
        object cont_est_costo: TMenuItem
          Caption = 'Costos de producci'#243'n'
        end
      end
      object Configurarestadodesituacin1: TMenuItem
        Caption = 'Configurar estado de situaci'#243'n'
      end
      object ConfigurarBcedeComprobacincomparativo1: TMenuItem
        Caption = 'Configurar bce. de comprobaci'#243'n comparativo'
        Hint = 'Configurar Balance de Comprobaci'#243'n Comparativo'
      end
      object N46: TMenuItem
        Caption = '-'
      end
      object Cashflow1: TMenuItem
        Caption = 'Cashflow'
        object Grupos1: TMenuItem
          Tag = 1
          Caption = 'Grupos'
        end
        object Subgrupos1: TMenuItem
          Tag = 1
          Caption = 'Subgrupos'
        end
        object Conceptos2: TMenuItem
          Tag = 1
          Caption = 'Conceptos'
        end
        object N47: TMenuItem
          Caption = '-'
        end
        object Cashflow2: TMenuItem
          Caption = 'Cashflow'
        end
      end
    end
    object Activos1: TMenuItem
      Caption = 'Activos'
      object Activosfijos1: TMenuItem
        Tag = 1
        Caption = 'Activos fijos'
      end
      object Categorias1: TMenuItem
        Tag = 1
        Caption = 'Categorias'
      end
      object Familiadeactivos1: TMenuItem
        Tag = 1
        Caption = 'Familia de activos'
      end
      object Marcas2: TMenuItem
        Tag = 1
        Caption = 'Marcas'
      end
      object Movimientosdeactivos1: TMenuItem
        Caption = 'Movimientos de activos'
      end
      object iposdemovimientos1: TMenuItem
        Tag = 1
        Caption = 'Tipos de movimientos'
      end
      object N11: TMenuItem
        Caption = '-'
      end
      object Impresincdigodebarra1: TMenuItem
        Caption = 'Impresi'#243'n c'#243'digo de barra'
      end
      object Generardepresiacion1: TMenuItem
        Caption = 'Generar depreciaci'#243'n'
      end
    end
    object RecursosHumanos1: TMenuItem
      Caption = 'Recursos Humanos'
      object Maestros2: TMenuItem
        Caption = 'Maestros'
        object Categorias2: TMenuItem
          Tag = 1
          Caption = 'Categoria de empleados'
        end
        object Categoriasdelicenciadeconducir1: TMenuItem
          Tag = 1
          Caption = 'Categoria de licencia de conducir'
        end
        object Clasificaciondeniveles1: TMenuItem
          Tag = 1
          Caption = 'Clasificacion de niveles'
        end
        object Diasferiados1: TMenuItem
          Tag = 1
          Caption = 'Dias feriados'
        end
        object Estadoscivil1: TMenuItem
          Tag = 1
          Caption = 'Estados civil'
        end
        object Gruposdetrabajo1: TMenuItem
          Tag = 1
          Caption = 'Grupos de trabajo'
        end
        object Habilidades1: TMenuItem
          Tag = 1
          Caption = 'Habilidades'
        end
        object Idiomas1: TMenuItem
          Tag = 1
          Caption = 'Idiomas'
        end
        object Institucionesacademicas1: TMenuItem
          Tag = 1
          Caption = 'Instituciones academicas'
        end
        object Motivos1: TMenuItem
          Tag = 1
          Caption = 'Motivos de ausencias'
        end
        object Niveles1: TMenuItem
          Tag = 1
          Caption = 'Niveles jer'#225'rquicos'
        end
        object Nivelsalarial1: TMenuItem
          Tag = 1
          Caption = 'Nivel salarial'
        end
        object Paises1: TMenuItem
          Tag = 1
          Caption = 'Paises'
        end
        object Posiciones1: TMenuItem
          Tag = 1
          Caption = 'Posiciones'
        end
        object Posicionesporclasificacion1: TMenuItem
          Tag = 1
          Caption = 'Posiciones por clasificacion'
        end
        object iposdeempleado1: TMenuItem
          Tag = 1
          Caption = 'Tipos de empleado'
        end
        object ipodeevaluacin1: TMenuItem
          Tag = 1
          Caption = 'Tipos de evaluaci'#243'n'
        end
      end
      object Reclutamiento1: TMenuItem
        Caption = 'Reclutamiento'
        object Elegibles1: TMenuItem
          Caption = 'Elegibles'
        end
        object Entrevistas1: TMenuItem
          Tag = 1
          Caption = 'Entrevistas'
        end
        object Evaluacion1: TMenuItem
          Tag = 1
          Caption = 'Evaluacion'
        end
        object Requerimientopersonal1: TMenuItem
          Tag = 1
          Caption = 'Requerimiento personal'
        end
        object Solicitud1: TMenuItem
          Tag = 1
          Caption = 'Solicitud de empleo'
        end
      end
      object Empleados1: TMenuItem
        Caption = 'Empleados'
        object Autorizaciondecredito1: TMenuItem
          Caption = 'Autorizaci'#243'n de credito'
        end
        object Cartadecertificacion1: TMenuItem
          Caption = 'Carta de certificacion'
        end
        object Evaluaciones1: TMenuItem
          Tag = 1
          Caption = 'Evaluaciones a empleados'
        end
        object CrearModificarEmpleado1: TMenuItem
          Tag = 1
          Caption = 'Maestro de empleados'
        end
        object MensajesIndividuales1: TMenuItem
          Tag = 1
          Caption = 'Mensajes Individuales'
        end
        object Reportegeneral1: TMenuItem
          Caption = 'Reporte general'
        end
        object Reportes2: TMenuItem
          Caption = 'Reportes (S.E.T).'
          object ReporteDGT31: TMenuItem
            Caption = 'Reporte DGT-3'
          end
          object ReporteDGT3Anexo1: TMenuItem
            Caption = 'Reporte DGT-3 Anexo'
          end
          object ReporteDGT41: TMenuItem
            Caption = 'Reporte DGT-4'
          end
        end
      end
      object Vacaciones1: TMenuItem
        Caption = 'Vacaciones'
        object Carteldevacaciones1: TMenuItem
          Caption = 'Cartel de vacaciones'
        end
        object Vacacionesempleados1: TMenuItem
          Tag = 1
          Caption = 'Vacaciones empleados'
        end
      end
      object Planesdeseguro1: TMenuItem
        Caption = 'Seguros'
        object AFP1: TMenuItem
          Caption = 'AFP'
        end
        object SFS1: TMenuItem
          Caption = 'SFS'
        end
        object N21: TMenuItem
          Caption = '-'
        end
        object Inclusionyexclusion1: TMenuItem
          Caption = 'Inclusi'#243'n y exclusi'#243'n Seguros m'#233'dicos'
        end
        object iposdeplanes1: TMenuItem
          Tag = 1
          Caption = 'Planes de seguros m'#233'dicos'
        end
        object iposdeseguro1: TMenuItem
          Tag = 1
          Caption = 'Tipos de seguros m'#233'dicos'
        end
      end
      object Acciondepersonal1: TMenuItem
        Caption = 'Accion de personal'
        object Accionesdepersonal1: TMenuItem
          Tag = 1
          Caption = 'Acciones de personal'
        end
        object Aumentodesueltos1: TMenuItem
          Caption = 'Aumento de sueltos en bloque'
        end
        object iposdeaccion1: TMenuItem
          Tag = 1
          Caption = 'Tipos de acci'#243'n'
        end
      end
      object Nomina1: TMenuItem
        Caption = 'Nomina'
        object Consultas2: TMenuItem
          Caption = 'Consultas / Reportes'
          object Bonificacionyregalia1: TMenuItem
            Caption = 'Bonificacion y regalia'
          end
          object Nominas1: TMenuItem
            Caption = 'Nominas'
          end
          object Novedadesdelanmina1: TMenuItem
            Caption = 'Novedades de la n'#243'mina'
          end
        end
        object Descuentos1: TMenuItem
          Tag = 1
          Caption = 'Descuentos'
        end
        object Horastrabajadas1: TMenuItem
          Tag = 1
          Caption = 'Horas trabajadas'
        end
        object Ingresos1: TMenuItem
          Tag = 1
          Caption = 'Ingresos'
        end
        object Maestros3: TMenuItem
          Caption = 'Maestros'
          object Grupodedescuentos1: TMenuItem
            Tag = 1
            Caption = 'Grupo de descuentos'
          end
          object ablacalculoprestaciones1: TMenuItem
            Tag = 1
            Caption = 'Tabla calculo prestaciones'
          end
          object ipodedescuentos1: TMenuItem
            Tag = 1
            Caption = 'Tipo de descuentos'
          end
          object ipodehorastrabajadas1: TMenuItem
            Tag = 1
            Caption = 'Tipo de horas trabajadas'
          end
          object ipodeingresos1: TMenuItem
            Tag = 1
            Caption = 'Tipo de ingresos'
          end
          object abladeISR1: TMenuItem
            Tag = 1
            Caption = 'Tabla de ISR'
          end
          object iposdenomina1: TMenuItem
            Tag = 1
            Caption = 'Tipos de nomina'
          end
          object ablasegurosocial1: TMenuItem
            Tag = 1
            Caption = 'Tabla seguro social'
          end
          object ablaSemanaxmes1: TMenuItem
            Caption = 'Tabla Semana x mes'
          end
        end
        object Prestaciones1: TMenuItem
          Caption = 'Prestaciones'
          object Regaliapascual1: TMenuItem
            Caption = 'Regalia pascual'
          end
          object Pagobonificacion1: TMenuItem
            Caption = 'Pago bonificacion'
          end
          object Pagoliquidacion1: TMenuItem
            Caption = 'Pago liquidacion'
          end
          object Vacaciones2: TMenuItem
            Caption = 'Vacaciones'
          end
        end
        object Procesos2: TMenuItem
          Caption = 'Procesos'
          object GenerarReversarNomina1: TMenuItem
            Caption = 'Generar / Reversar Nomina'
          end
        end
      end
    end
    object OrdendeServicio1: TMenuItem
      Caption = 'Orden de Servicio'
      object Anularorden1: TMenuItem
        Caption = 'Anular orden'
      end
      object Entradadeequios1: TMenuItem
        Tag = 1
        Caption = 'Entrada de equios'
      end
      object Salidadeequipos1: TMenuItem
        Caption = 'Dar salida a equipos'
      end
      object N13: TMenuItem
        Caption = '-'
      end
      object Listadogeneral3: TMenuItem
        Caption = 'Listado general'
      end
      object N38: TMenuItem
        Caption = '-'
      end
      object Tipodeequipos1: TMenuItem
        Tag = 1
        Caption = 'Tipo de equipos'
      end
      object Tecnicos1: TMenuItem
        Tag = 1
        Caption = 'Tecnicos'
      end
    end
    object Consultas1: TMenuItem
      Caption = 'Consultas'
      Hint = 'Consultas generales'
      object Conciliacin1: TMenuItem
        Caption = 'Conciliaci'#243'n'
        Hint = 'Consulta de Cheques, Depositos, etc.'
        object Cargosbancarios1: TMenuItem
          Tag = 1
          Caption = 'Cargos bancarios'
          Hint = 'Consulta de Cargos Bancarios'
        end
        object Cheques1: TMenuItem
          Tag = 1
          Caption = 'Cheques'
          Hint = 'Consulta de Cheques'
        end
        object Depositos1: TMenuItem
          Tag = 1
          Caption = 'Depositos'
          Hint = 'Consulta de Dep'#243'sitos'
        end
        object Solicitudesdecheque1: TMenuItem
          Tag = 1
          Caption = 'Solicitudes de cheque'
          Hint = 'Consulta de Solicitudes de Cheques'
        end
      end
      object Contabilidad2: TMenuItem
        Caption = 'Contabilidad'
        Hint = 'Consulta de Contabilidad'
        object Balancesdeunacuenta1: TMenuItem
          Caption = 'Balances de una cuenta'
          Hint = 'Consulta de Balances de una Cuenta'
        end
        object Entradasdediario1: TMenuItem
          Caption = 'Entradas de diario'
          Hint = 'Consulta de Documentos de Diario'
        end
        object N9: TMenuItem
          Caption = '-'
        end
        object Comprobantesfiscales1: TMenuItem
          Caption = 'Comprobantes fiscales de venta'
        end
        object Comprobantesdegastosmenores1: TMenuItem
          Caption = 'Comprobantes de gastos menores'
        end
        object N25: TMenuItem
          Caption = '-'
        end
        object MovimientosporCentrodeCosto1: TMenuItem
          Caption = 'Movimientos por Centro de Costo'
        end
      end
      object Inventario3: TMenuItem
        Caption = 'Inventario'
        object Productos2: TMenuItem
          Caption = 'Productos'
        end
        object N44: TMenuItem
          Caption = '-'
        end
        object EntradasdeAlmacn2: TMenuItem
          Caption = 'Entradas de almac'#233'n'
          Hint = 'Consulta de entradas de almac'#233'n'
        end
        object Conduces2: TMenuItem
          Caption = 'Conduces / Salida de almacen'
          Hint = 'Consulta de salidas de almacjn (Conduces)'
        end
        object Liquidaciones1: TMenuItem
          Tag = 1
          Caption = 'Liquidaciones'
        end
        object ransferenciasentrealmacen1: TMenuItem
          Caption = 'Transferencias entre almacenes'
          Hint = 'Consulta de Transferencias entre Almacenes'
        end
        object N16: TMenuItem
          Caption = '-'
        end
        object PordeSerie1: TMenuItem
          Caption = 'Por # de Serie'
        end
      end
      object Ventas1: TMenuItem
        Caption = 'Ventas'
        Hint = 'Consulta de ventas'
        object ListadodeFacturas1: TMenuItem
          Tag = 1
          Caption = 'Listado de facturas'
          Hint = 'Consulta general de facturas'
        end
        object ListadodeEnvio1: TMenuItem
          Tag = 1
          Caption = 'Listado de Envio'
          Hint = 'Consulta general de Envios'
        end
        object Listadodeboletos1: TMenuItem
          Tag = 1
          Caption = 'Listado de boletos'
          Hint = 'Consulta general de boletos'
        end
        object icketsdecaja1: TMenuItem
          Caption = 'Tickets de caja'
        end
        object mniTransporte1: TMenuItem
          Caption = 'Ticket de Transporte'
        end
        object mniListadodeFacturasRestBAR1: TMenuItem
          Caption = 'Listado de Facturas RestBAR'
        end
        object N15: TMenuItem
          Caption = '-'
        end
        object Beneficios1: TMenuItem
          Caption = 'Beneficios'
          Hint = 'Consulta de beneficios sobre ventas'
        end
        object ProductosCliente1: TMenuItem
          Caption = 'Productos / cliente'
          Hint = 'Consulta de productos ventidos por cliente'
        end
        object Pormarca3: TMenuItem
          Caption = 'Por marca'
        end
        object PorProducto1: TMenuItem
          Caption = 'Por producto'
          Hint = 'Consulta de ventas por producto'
        end
        object Porprovincia1: TMenuItem
          Caption = 'Por provincia'
        end
        object N40: TMenuItem
          Caption = '-'
        end
        object Devoluciones1: TMenuItem
          Tag = 1
          Caption = 'Devoluciones en venta'
          Hint = 'Consulta de devoluciones'
        end
        object Declientes2: TMenuItem
          Caption = 'Pedidos de clientes'
          Hint = 'Consulta de Pedidos de Clientes'
        end
        object N7: TMenuItem
          Caption = '-'
        end
        object ActividaddelasCajas1: TMenuItem
          Caption = 'Actividad de las Cajas'
        end
      end
      object Compras2: TMenuItem
        Caption = 'Compras'
        object Aproveedores2: TMenuItem
          Caption = 'Ordenes de Compra'
          Hint = 'Consulta de Pedidos a Proveedores'
        end
        object Devolucionesencompra1: TMenuItem
          Tag = 1
          Caption = 'Devoluciones en compra'
        end
      end
      object Cuentasporcobrar3: TMenuItem
        Caption = 'Cuentas por cobrar'
        object CuentasporCobrar1: TMenuItem
          Caption = 'Listado de cuentas por cobrar'
          Hint = 'Consulta general de cuentas por cobrar'
        end
        object NotasdeCrdito2: TMenuItem
          Tag = 1
          Caption = 'Notas de cr'#233'dito clientes'
          Hint = 'Consulta de notas de cr'#233'dito'
        end
        object NotasdeDbito2: TMenuItem
          Tag = 1
          Caption = 'Notas de d'#233'bito clientes'
          Hint = 'Consulta de notas de d'#233'bito'
        end
        object RecibosdeCobro2: TMenuItem
          Tag = 1
          Caption = 'Recibos'
          Hint = 'Consulta de recibos de ingreso y cobro'
        end
      end
      object Cuentasporpagar3: TMenuItem
        Caption = 'Cuentas por pagar'
        object Cuentasporpagar2: TMenuItem
          Caption = 'Listado de cuentas por pagar'
          Hint = 'Consulta general de cuentas por pagar'
        end
        object Notasdecrditoproveedores1: TMenuItem
          Tag = 1
          Caption = 'Notas de cr'#233'dito proveedores'
        end
        object Facturasdeproveedores1: TMenuItem
          Tag = 1
          Caption = 'Facturas de proveedores'
          Hint = 'Consulta de Facturas de Proveedores'
        end
      end
      object Bonos1: TMenuItem
        Caption = 'Bonos'
      end
      object Cotizaciones2: TMenuItem
        Caption = 'Cotizaciones'
      end
      object Desembolsos2: TMenuItem
        Tag = 1
        Caption = 'Desembolsos'
        Hint = 'Consulta de desembolsos de caja'
      end
      object Resumenejecutivo1: TMenuItem
        Caption = 'Resumen ejecutivo'
      end
    end
    object Reportes1: TMenuItem
      Caption = 'Reportes'
      Hint = 'Reportes Generales'
      object rep_Anlisis: TMenuItem
        Caption = 'An'#225'lisis'
        object rep_analisis_1: TMenuItem
          Caption = 'Comparativo Compra y Venta'
        end
        object rep_analisis_2: TMenuItem
          Caption = 'Margen de beneficio bruto'
        end
        object rep_analisis_3: TMenuItem
          Caption = 'Resumen de ventas por producto'
        end
      end
      object rep_clientes: TMenuItem
        Caption = 'Clientes'
        Hint = 'Reporte general de clientes'
        object rep_clientes_1: TMenuItem
          Caption = 'Listado de clientes'
        end
        object rep_clientes_2: TMenuItem
          Caption = 'Reporte de cumplea'#241'os'
        end
        object ReportedeVencLicenciaSeguro1: TMenuItem
          Caption = 'Reporte de Venc. Licencia / Seguro'
        end
      end
      object rep_cxc: TMenuItem
        Caption = 'Cuentas por cobrar'
        Hint = 'Reporte de cuentas por cobrar'
        object rep_cxc_1: TMenuItem
          Caption = 'Antiguedad de facturas'
          Hint = 'Reporte de antiguedad de saldo'
        end
        object rep_cxc_2: TMenuItem
          Caption = 'Estados de cuentas'
          Hint = 'Estados de cuentas de clientes'
        end
        object rep_cxc_3: TMenuItem
          Caption = 'Facturas vencidas'
          Hint = 'Listado de facturas vencidas'
        end
        object rep_cxc_4: TMenuItem
          Caption = 'Historial de clientes'
        end
        object rep_cxc_5: TMenuItem
          Caption = 'Listado general de CxC'
          Hint = 'Reporte general de cuentas por cobrar'
        end
        object rep_cxc_6: TMenuItem
          Caption = 'Por vendedor y provincia'
        end
        object rep_cxc_7: TMenuItem
          Caption = 'CxC a una fecha'
        end
        object N18: TMenuItem
          Caption = '-'
        end
        object rep_cxc_8: TMenuItem
          Caption = 'Reporte bur'#243' de cr'#233'dito'
        end
      end
      object rep_cxp: TMenuItem
        Caption = 'Cuentas por pagar'
        Hint = 'Reporte de cuentas por pagar'
        object rep_cxp_1: TMenuItem
          Caption = 'Antiguedad de facturas'
          Hint = 'Reporte de antiguedad de saldo'
        end
        object rep_cxp_2: TMenuItem
          Caption = 'Estados de cuentas'
          Hint = 'Estados de cuentas de proveedores'
        end
        object rep_cxp_3: TMenuItem
          Caption = 'Facturas vencidas'
          Hint = 'Listado de facturas vencidas'
        end
        object rep_cxp_4: TMenuItem
          Caption = 'Historial de un proveedor'
        end
        object rep_cxp_5: TMenuItem
          Caption = 'Listado general de CxP'
        end
      end
      object rep_inv: TMenuItem
        Caption = 'Inventario'
        Hint = 'Reporte general del inventario'
        object rep_inv_1: TMenuItem
          Caption = 'En punto de reorden'
          Hint = 'Reporte de productos que est'#225'n en punto de reorden'
        end
        object rep_inv_2: TMenuItem
          Caption = 'En vencimiento'
          Hint = 'Reporte de Productos en vencimiento'
        end
        object rep_inv_3: TMenuItem
          Caption = 'Impresi'#243'n de codigos de barra'
          Hint = 'Impresi'#243'n de C'#243'digos de barra'
        end
        object N1: TMenuItem
          Caption = '-'
        end
        object rep_inv_4: TMenuItem
          Caption = 'Movimientos por producto'
          Hint = 'Reporte de existencias por producto'
        end
        object rep_inv_5: TMenuItem
          Caption = 'Entradas del inventario'
        end
        object rep_inv_6: TMenuItem
          Caption = 'Transferencias'
        end
        object N28: TMenuItem
          Caption = '-'
        end
        object rep_inv_7: TMenuItem
          Caption = 'Inventario f'#237'sico'
          Hint = 'Reporte del conteo f'#237'sico con diferencia de existencias'
        end
        object rep_inv_8: TMenuItem
          Caption = 'Costos'
          object rep_inv_9: TMenuItem
            Caption = 'Por familia'
            Hint = 'Reporte de productos por familia'
          end
          object rep_inv_10: TMenuItem
            Caption = 'Por familia y departamento'
          end
          object N45: TMenuItem
            Caption = '-'
          end
          object rep_inv_11: TMenuItem
            Caption = 'Valor del inventario'
            Hint = 'Reporte de costo del inventario'
          end
          object rep_inv_12: TMenuItem
            Caption = 'Rentabilidad (Costo / Precio)'
          end
        end
        object rep_inv_13: TMenuItem
          Caption = 'Precios'
          object rep_inv_14: TMenuItem
            Caption = 'Listado general de precios'
            Hint = 'Reporte de precios'
          end
          object rep_inv_15: TMenuItem
            Caption = 'Por departamento'
            Hint = 'Reporte de productos por departamento'
          end
          object rep_inv_16: TMenuItem
            Caption = 'Por marca'
            Hint = 'Reporte de Productos por Marca'
          end
          object rep_inv_17: TMenuItem
            Caption = 'Por proveedor'
            Hint = 'Reporte de productos por proveedor'
          end
          object N24: TMenuItem
            Caption = '-'
          end
          object rep_inv_18: TMenuItem
            Caption = 'Cambio de precios'
          end
        end
        object rep_inv_19: TMenuItem
          Caption = 'Productos en oferta'
        end
        object N6: TMenuItem
          Caption = '-'
        end
        object rep_inv_20: TMenuItem
          Caption = 'Orden de pedido a proveedor'
        end
        object rep_inv_21: TMenuItem
          Caption = 'Para preparar carga al transporte'
        end
        object rep_inv_22: TMenuItem
          Caption = 'Pedidos -> Despachados'
        end
        object rep_inv_23: TMenuItem
          Caption = 'Productos solicitados o vendidos sin existencias'
        end
        object rep_inv_24: TMenuItem
          Caption = 'Productos sin existencia'
        end
        object rep_inv_25: TMenuItem
          Caption = 'Productos despachados'
        end
      end
      object rep_venta: TMenuItem
        Caption = 'Ventas'
        Hint = 'Reporte de ventas'
        object rep_venta_1: TMenuItem
          Caption = 'Agrupado por cliente'
          Hint = 'Reporte de Ventas agrupado por Cliente'
        end
        object rep_venta_2: TMenuItem
          Caption = 'Agrupado por vendedor'
        end
        object rep_venta_3: TMenuItem
          Caption = 'Ofertas otorgadas'
        end
        object rep_venta_4: TMenuItem
          Caption = 'Por departamentos'
          Hint = 'Reporte de Ventas por Departamento'
        end
        object rep_venta_5: TMenuItem
          Caption = 'Por familia de productos'
          Hint = 'Reporte de Ventas por Familia de Productos'
        end
        object rep_venta_6: TMenuItem
          Caption = 'Por familia y departamento'
        end
        object rep_venta_7: TMenuItem
          Caption = 'Por producto'
        end
        object rep_venta_8: TMenuItem
          Caption = 'Variaci'#243'n'
        end
        object rep_venta_9: TMenuItem
          Caption = 'Por marca'
          Hint = 'Reporte de Ventas por Marca de Product o'
        end
        object rep_venta_10: TMenuItem
          Caption = 'Por tipo de factura'
          Hint = 'Reporte de Ventas por tipo de Factura'
        end
        object rep_venta_11: TMenuItem
          Caption = 'Por tipo de cliente'
        end
        object N20: TMenuItem
          Caption = '-'
        end
        object rep_venta_12: TMenuItem
          Caption = 'Productos por rotaci'#243'n'
        end
      end
      object rep_activos: TMenuItem
        Caption = 'Activos'
      end
      object rep_comisiones: TMenuItem
        Caption = 'Comisiones por vendedor'
        Hint = 'Reporte de Comisiones por Vendedor'
      end
      object rep_forma_pago: TMenuItem
        Caption = 'Por formas de pago'
        Hint = 'Reporte de Movimientos por Forma de Pago'
      end
      object rep_proveedores: TMenuItem
        Caption = 'Proveedores'
        Hint = 'Reporte general de proveedores'
      end
      object rep_servicios: TMenuItem
        Caption = 'Servicios'
        Hint = 'Reporte de Productos que son Servicios'
      end
      object N41: TMenuItem
        Caption = '-'
      end
      object rep_reimpresion: TMenuItem
        Caption = 'Reimpresi'#243'n de documentos'
        Hint = 'Reimpresion de Facturas, Recibos, etc.'
      end
    end
    object Procesos1: TMenuItem
      Caption = 'Procesos'
      Hint = 'Procesos generales del sistema'
      object Anular1: TMenuItem
        Caption = 'Anular'
        Hint = 'Anular documentos'
        object Conduce1: TMenuItem
          Caption = 'Conduce'
          Hint = 'Anular salida de almac'#233'n (Conduce)'
        end
        object Desembolso1: TMenuItem
          Caption = 'Desembolso'
          Hint = 'Anular desembolsos'
        end
        object Devolucionencompra1: TMenuItem
          Caption = 'Devoluci'#243'n en compra'
        end
        object Devolucin2: TMenuItem
          Caption = 'Devoluci'#243'n en venta'
          Hint = 'Anular devoluci'#243'n'
        end
        object EntradadeAlmacn1: TMenuItem
          Caption = 'Entrada de almac'#233'n'
          Hint = 'Anular entrada de almac'#233'n'
        end
        object Factura1: TMenuItem
          Caption = 'Factura'
          Hint = 'Anular factura'
        end
        object Facturadeproveedores1: TMenuItem
          Caption = 'Factura de proveedor'
          Hint = 'Anular factura de proveedor'
        end
        object Liquidacin1: TMenuItem
          Caption = 'Liquidaci'#243'n'
        end
        object NotadeCrdito1: TMenuItem
          Caption = 'Nota de cr'#233'dito a cliente'
          Hint = 'Anular nota de cr'#233'dito'
        end
        object Notadecrditoaproveedor1: TMenuItem
          Caption = 'Nota de cr'#233'dito a proveedor'
        end
        object NotadeDbito1: TMenuItem
          Caption = 'Nota de d'#233'bito'
          Hint = 'Anular nota de d'#233'bito'
        end
        object Ordendecompra1: TMenuItem
          Caption = 'Orden de compra'
        end
        object RecibodeCobro1: TMenuItem
          Caption = 'Recibo'
          Hint = 'Anular recibos de ingreso y cobro'
        end
      end
      object Contabilidad4: TMenuItem
        Caption = 'Contabilidad'
        Hint = 'Procesos de Contabilidad'
        object Cierredemes1: TMenuItem
          Caption = 'Cierre de mes'
          Hint = 'Cierre de Meses Contables'
        end
        object Cierredeao1: TMenuItem
          Caption = 'Cierre de a'#241'o'
          Hint = 'Cierre de A'#241'o Fiscal'
        end
        object Copiarcatlogoentrecompaas1: TMenuItem
          Caption = 'Copiar cat'#225'logo entre compa'#241#237'as'
          Hint = 'Copiar Cat'#225'logo de Cuentas de una Compa'#241#237'a a Otra'
        end
        object Pasardocumentosacontabilidad1: TMenuItem
          Caption = 'Pasar documentos a contabilidad'
          Hint = 'Pasar Facturas, Recibos, etc. a Contabilidad'
        end
        object N10: TMenuItem
          Caption = '-'
        end
        object Generardepreciacin1: TMenuItem
          Caption = 'Generar depreciaci'#243'n'
        end
      end
      object Inventario1: TMenuItem
        Caption = 'Inventario'
        Hint = 'Procesar inventario'
        object Colectordeinventario1: TMenuItem
          Caption = 'Colector de inventario'
        end
        object Colocarexistenciaencero1: TMenuItem
          Caption = 'Colocar existencia en cero'
          Hint = 'Colocar las existencias de productos y almacenes en cero'
        end
        object Definirescalas1: TMenuItem
          Caption = 'Definir escalas'
          Hint = 'Definici'#243'n de escalas'
        end
        object Modificacindeprecios1: TMenuItem
          Caption = 'Modificaci'#243'n de precios'
          Hint = 'Modificar precios de productos'
        end
        object Procesarconteofsico1: TMenuItem
          Caption = 'Procesar conteo f'#237'sico'
          Hint = 'Procesar conteo f'#237'sico de los productos'
        end
        object N19: TMenuItem
          Caption = '-'
        end
        object Procesartransferenciasdealmacen1: TMenuItem
          Caption = 'Postear transferencia al inventario'
          Hint = 'Procesar las transferencias de los almacenes'
        end
        object Procesardispositivodealmacenamiento1: TMenuItem
          Caption = 'Procesar transferencia desde dispositivo'
        end
        object Conteofisicodesdedispositivo1: TMenuItem
          Caption = 'Conteo f'#237'sico desde dispositivo'
        end
      end
      object Fiscal1: TMenuItem
        Caption = 'Fiscal'
        object Cierredeturno1: TMenuItem
          Caption = 'Cierre de turno'
        end
        object Cierredejornadafiscal1: TMenuItem
          Caption = 'Cierre de jornada fiscal'
        end
        object Cancelardocumentofiscalencurso1: TMenuItem
          Caption = 'Cancelar documento fiscal en curso'
        end
        object Extraccindelibrosdeventa1: TMenuItem
          Caption = 'Extracci'#243'n de libros de ventas'
        end
        object EstadoPrinter1: TMenuItem
          Caption = 'Estado Printer'
        end
        object Reset1: TMenuItem
          Caption = 'Reset'
        end
      end
      object NCF1: TMenuItem
        Caption = 'NCF'
        object GenerarNCFgastosmenores1: TMenuItem
          Caption = 'Generar NCF gastos menores'
        end
        object GenerarNCFunicoingreso1: TMenuItem
          Caption = 'Generar NCF '#250'nico ingreso'
        end
        object Formatoenviocomprasdebienesyservicios1: TMenuItem
          Caption = 'Generar Formato envio compras de bienes y servicios'
        end
        object GenerarFormatodeenvio6071: TMenuItem
          Caption = 'Generar Formato de envio 607'
        end
        object GenerarFormatodeenvio6081: TMenuItem
          Caption = 'Generar Formato de envio 608'
        end
        object N43: TMenuItem
          Caption = '-'
        end
        object Notificaciondecomprobantesfiscales1: TMenuItem
          Caption = 'Notificaci'#243'n de comprobantes fiscales'
        end
        object NmerosdeRNC1: TMenuItem
          Caption = 'N'#250'meros de RNC'
        end
      end
      object Asignarclienteafactura1: TMenuItem
        Caption = 'Asignar cliente a factura'
        Hint = 'Asignar cliente a una factura'
      end
      object Cambiarlmitedelcliente1: TMenuItem
        Caption = 'Cambiar l'#237'mite del cliente'
        Hint = 'Cambiar o Asignar L'#237'mite de Cr'#233'dito a un Cliente'
      end
      object CambiarStatus1: TMenuItem
        Caption = 'Cambiar status'
        Hint = 'Cambiar status de docuemntos'
      end
      object CierredelDa1: TMenuItem
        Caption = 'Cierre del d'#237'a'
        Hint = 'Cierre de las operaciones del d'#237'a'
      end
      object CierredeldaCardnet1: TMenuItem
        Caption = 'Cierre del d'#237'a Cardnet'
        Hint = 'Cierre de las operaciones del d'#237'a de Cardnet'
      end
      object N22: TMenuItem
        Caption = '-'
      end
      object Estadisticas1: TMenuItem
        Caption = 'Estad'#237'sticas'
      end
      object N14: TMenuItem
        Caption = '-'
      end
      object Clavesupervisordecaja1: TMenuItem
        Caption = 'Clave supervisor de caja'
      end
      object Generarfacturasautomticas1: TMenuItem
        Caption = 'Generar facturas autom'#225'ticas'
      end
    end
    object Seguridad1: TMenuItem
      Caption = 'Seguridad'
      object seg_usuario: TMenuItem
        Caption = 'Usuarios'
      end
      object seg_cambiar: TMenuItem
        Caption = 'Cambiar clave'
      end
    end
    object Parametros1: TMenuItem
      Caption = 'Parametros'
      object param_general: TMenuItem
        Caption = 'Par'#225'metros generales'
      end
      object param_emp: TMenuItem
        Tag = 1
        Caption = 'Empresas'
      end
      object param_suc: TMenuItem
        Tag = 1
        Caption = 'Sucursales'
      end
      object param_tablas: TMenuItem
        Caption = 'Tablas generales'
      end
      object param_actbalance: TMenuItem
        Caption = 'Actualizar balances'
      end
      object param_limpiar: TMenuItem
        Caption = 'Limpiar tablas tmp'
      end
      object RepararBalancesFacturas1: TMenuItem
        Action = frmMain.param_rep_balancefact
      end
    end
  end
  object QSucursalesDefault: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsEmpresas
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
        Name = 'usu_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      's.suc_codigo, s.suc_nombre'
      'from'
      'Sucursales s, Sucursal_acceso a'
      'where'
      's.emp_codigo = a.emp_codigo'
      'and s.suc_codigo = a.suc_codigo'
      'and a.emp_codigo = :emp_codigo'
      'and a.usu_codigo = :usu_codigo'
      'order by'
      's.suc_codigo')
    Left = 224
    Top = 216
    object IntegerField1: TIntegerField
      FieldName = 'suc_codigo'
    end
    object StringField1: TStringField
      FieldName = 'suc_nombre'
      Size = 60
    end
  end
  object dsSucursalDefault: TDataSource
    DataSet = QSucursalesDefault
    Left = 256
    Top = 216
  end
end
