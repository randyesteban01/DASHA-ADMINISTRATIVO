object frmConsFTEnvios: TfrmConsFTEnvios
  Left = 265
  Top = 175
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta de Envios'
  ClientHeight = 416
  ClientWidth = 1096
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1096
    Height = 152
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label2: TLabel
      Left = 315
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object SpeedButton2: TSpeedButton
      Left = 404
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
    object Label12: TLabel
      Left = 8
      Top = 31
      Width = 36
      Height = 13
      Caption = 'Destino'
    end
    object btOrigen: TSpeedButton
      Left = 94
      Top = 31
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
      OnClick = btOrigenClick
    end
    object Label4: TLabel
      Left = 10
      Top = 56
      Width = 26
      Height = 13
      Caption = 'Envia'
    end
    object Label5: TLabel
      Left = 158
      Top = 129
      Width = 59
      Height = 13
      Caption = 'Ordenar por'
    end
    object Label6: TLabel
      Left = 8
      Top = 104
      Width = 29
      Height = 13
      Caption = 'Fecha'
    end
    object Label9: TLabel
      Left = 8
      Top = 129
      Width = 37
      Height = 13
      Caption = 'Factura'
    end
    object Label8: TLabel
      Left = 8
      Top = 8
      Width = 40
      Height = 13
      Caption = 'Sucursal'
    end
    object Label1: TLabel
      Left = 10
      Top = 80
      Width = 32
      Height = 13
      Caption = 'Recibe'
    end
    object SpeedButton1: TSpeedButton
      Left = 488
      Top = 107
      Width = 113
      Height = 41
      Caption = 'Recepcion de Envios'
      OnClick = RecepciondeEnvios1Click
    end
    object SpeedButton4: TSpeedButton
      Left = 488
      Top = 36
      Width = 113
      Height = 41
      Caption = 'Despacho de Envios'
      OnClick = DespachodeEnvio1Click
    end
    object Label3: TLabel
      Left = 768
      Top = 109
      Width = 100
      Height = 13
      Caption = 'Ticket a Entregar:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edCliente: TEdit
      Left = 368
      Top = 8
      Width = 33
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
      TabOrder = 6
      OnChange = edClienteChange
      OnKeyDown = edClienteKeyDown
    end
    object tCliente: TEdit
      Left = 429
      Top = 8
      Width = 172
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
    object tOrigen: TEdit
      Left = 119
      Top = 31
      Width = 186
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
      TabOrder = 9
    end
    object edOrigen: TEdit
      Left = 58
      Top = 31
      Width = 33
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
      TabOrder = 0
      OnChange = edOrigenChange
      OnKeyDown = edOrigenKeyDown
    end
    object edNombreEnvia: TEdit
      Left = 58
      Top = 56
      Width = 247
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
      TabOrder = 5
    end
    object cbStatus: TRadioGroup
      Left = 368
      Top = 35
      Width = 99
      Height = 113
      Caption = '  Status  '
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'Por Entregar'
        'Por Recibir'
        'Recibido'
        'Entregado')
      TabOrder = 10
      OnClick = btRefreshClick
    end
    object cbOrden: TComboBox
      Left = 224
      Top = 127
      Width = 81
      Height = 21
      BevelKind = bkSoft
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 7
      OnClick = btRefreshClick
      Items.Strings = (
        'Envio'
        'Factura'
        'Fecha')
    end
    object Fecha1: TDateTimePicker
      Left = 58
      Top = 104
      Width = 79
      Height = 21
      Date = 37506.000000000000000000
      Time = 37506.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Fecha2: TDateTimePicker
      Left = 138
      Top = 104
      Width = 79
      Height = 21
      Date = 37506.000000000000000000
      Time = 37506.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object edFac1: TEdit
      Left = 58
      Top = 127
      Width = 47
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
      TabOrder = 3
    end
    object edFac2: TEdit
      Left = 106
      Top = 127
      Width = 47
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
      TabOrder = 4
    end
    object ckrango: TCheckBox
      Left = 224
      Top = 104
      Width = 81
      Height = 17
      Caption = 'Utiliza rango'
      Checked = True
      State = cbChecked
      TabOrder = 11
      OnClick = btRefreshClick
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 58
      Top = 8
      Width = 247
      Height = 21
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
      TabOrder = 12
      OnClick = btRefreshClick
    end
    object edNombreRecibe: TEdit
      Left = 58
      Top = 80
      Width = 247
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
      TabOrder = 13
    end
    object rg: TRadioGroup
      Left = 622
      Top = 7
      Width = 121
      Height = 141
      Caption = ' * O P C I O N E S * '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'TODOS'
        'A RECIBIR'
        'A DESPACHAR')
      ParentFont = False
      TabOrder = 14
      OnClick = rgClick
    end
    object EdtCodigoBarra: TEdit
      Left = 874
      Top = 104
      Width = 135
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
      TabOrder = 15
      OnKeyDown = EdtCodigoBarraKeyDown
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 376
    Width = 1096
    Height = 40
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      1096
      40)
    object lbCantidad: TLabel
      Left = 8
      Top = 13
      Width = 61
      Height = 13
      Caption = '0 Facturas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn2: TBitBtn
      Left = 932
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Listado'
      TabOrder = 0
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
    object btRefresh: TBitBtn
      Left = 704
      Top = 8
      Width = 90
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Refrescar >>'
      TabOrder = 1
      OnClick = btRefreshClick
    end
    object btClose: TBitBtn
      Left = 1012
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Salir'
      TabOrder = 2
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
    object BitBtn1: TBitBtn
      Left = 800
      Top = 8
      Width = 127
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Entrega del Envio'
      TabOrder = 3
      OnClick = BitBtn1Click
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
    object ProgressBar1: TProgressBar
      Left = 144
      Top = 12
      Width = 193
      Height = 17
      TabOrder = 4
      Visible = False
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 152
    Width = 1096
    Height = 224
    Align = alClient
    Color = clInfoBk
    Ctl3D = False
    DataSource = dsEnvios
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'emp_codigo'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'suc_codigo'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'status'
        Title.Caption = 'Status'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descripcion'
        Width = 170
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fac_numero'
        Title.Caption = '# Envio'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pro_codigo'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'IDEnvio'
        Title.Caption = '# Envio'
        Visible = False
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'Fecha'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Destino'
        Title.Caption = 'Terminal Destino'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Origen'
        Title.Caption = 'Terminal de Origen'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nombre_envia'
        Title.Caption = 'Envia'
        Width = 145
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Telefono_Envia'
        Title.Caption = 'Envia'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nombre_Recibe'
        Title.Caption = 'Recibe'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Telefono_Recibe'
        Title.Caption = 'Recibe'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'facpagodestino'
        Title.Caption = 'PagarDestino'
        Visible = True
      end>
  end
  object Memo1: TMemo
    Left = 24
    Top = 192
    Width = 905
    Height = 41
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
    Visible = False
  end
  object QEnvios: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'emp'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select '
      'CASE WHEN E.ENV_STATUS = '#39'PE'#39' THEN '#39'POR ENVIAR'#39
      '         WHEN E.ENV_STATUS = '#39'PR'#39' THEN '#39'POR RECIBIR'#39
      '         WHEN E.ENV_STATUS = '#39'R'#39' THEN '#39'RECIBIDO'#39'  '
      '         WHEN E.ENV_STATUS = '#39'E'#39' THEN '#39'ENTREGADO'#39' '
      '         end status,'
      
        '(select suc_nombre from sucursales where suc_codigo=e.suc_codigo' +
        ' and emp_codigo=e.emp_codigo)Origen,'
      
        '(select suc_nombre from sucursales where suc_codigo=e.env_suc_de' +
        'stino and emp_codigo=e.emp_codigo)Destino,'
      
        'e.emp_codigo,e.suc_codigo,e.fac_numero,e.pro_codigo,IDEnvio,Fech' +
        'a,Ciudad_Origen,Ciudad_Destino,Nombre_envia,'
      'Telefono_Envia,Nombre_Recibe,Telefono_Recibe,'
      
        'rtrim(isnull(e.descripcion,'#39#39'))+'#39' '#39'+upper(rtrim(isnull(e.descrip' +
        'cion2,'#39#39'))) Descripcion,f.TFA_CODIGO,f.CAJ_CODIGO,FAC_MENSAJE1,F' +
        'AC_MENSAJE2,FAC_MENSAJE3,'
      'env_recibido, env_rec_cedula, env_suc_destino,'
      
        '(select ficha_nombre from Fichas_Transp where ficha_id = e.ficha' +
        '_id)FICHA,'
      
        'e.nombrechofer CHOFER, facpagodestino, (isnull(df.det_cantidad,0' +
        ')*isnull(df.det_precio,0)) monto'
      'from Envio e'
      
        'join det_factura df on e.pro_codigo=df.pro_codigo and e.fac_nume' +
        'ro= df.fac_numero and e.emp_codigo=df.emp_codigo and e.suc_codig' +
        'o=df.suc_codigo'
      
        'join facturas f on df.fac_numero= f.fac_numero and df.emp_codigo' +
        '=f.emp_codigo and df.suc_codigo=f.suc_codigo and df.tfa_codigo=f' +
        '.tfa_codigo'
      'where e.emp_codigo = :emp')
    Left = 240
    Top = 232
    object QEnviosemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QEnviossuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QEnviosfac_numero: TIntegerField
      FieldName = 'fac_numero'
    end
    object QEnviospro_codigo: TIntegerField
      FieldName = 'pro_codigo'
    end
    object QEnviosIDEnvio: TIntegerField
      FieldName = 'IDEnvio'
    end
    object QEnviosFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object QEnviosCiudad_Origen: TStringField
      FieldName = 'Ciudad_Origen'
      Size = 40
    end
    object QEnviosCiudad_Destino: TStringField
      FieldName = 'Ciudad_Destino'
      Size = 100
    end
    object QEnviosNombre_envia: TStringField
      FieldName = 'Nombre_envia'
      Size = 50
    end
    object QEnviosTelefono_Envia: TStringField
      FieldName = 'Telefono_Envia'
      EditMask = '!\(999\)999-9999;0; '
      Size = 11
    end
    object QEnviosNombre_Recibe: TStringField
      FieldName = 'Nombre_Recibe'
      Size = 50
    end
    object QEnviosTelefono_Recibe: TStringField
      FieldName = 'Telefono_Recibe'
      EditMask = '!\(999\)999-9999;0; '
      Size = 11
    end
    object QEnviosDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
    object QEnviosstatus: TStringField
      FieldName = 'status'
      ReadOnly = True
      Size = 12
    end
    object QEnviosTFA_CODIGO: TIntegerField
      FieldName = 'TFA_CODIGO'
    end
    object QEnviosCAJ_CODIGO: TIntegerField
      FieldName = 'CAJ_CODIGO'
    end
    object QEnviosFAC_MENSAJE1: TStringField
      FieldName = 'FAC_MENSAJE1'
      Size = 600
    end
    object QEnviosFAC_MENSAJE2: TStringField
      FieldName = 'FAC_MENSAJE2'
      Size = 60
    end
    object QEnviosFAC_MENSAJE3: TStringField
      FieldName = 'FAC_MENSAJE3'
      Size = 60
    end
    object QEnviosenv_recibido: TStringField
      FieldName = 'env_recibido'
      Size = 255
    end
    object QEnviosenv_rec_cedula: TStringField
      FieldName = 'env_rec_cedula'
      Size = 30
    end
    object QEnviosOrigen: TStringField
      FieldName = 'Origen'
      ReadOnly = True
      Size = 60
    end
    object QEnviosDestino: TStringField
      FieldName = 'Destino'
      ReadOnly = True
      Size = 60
    end
    object QEnviosFICHA: TStringField
      FieldName = 'FICHA'
    end
    object QEnviosCHOFER: TStringField
      FieldName = 'CHOFER'
      Size = 255
    end
    object QEnviosfacpagodestino: TBooleanField
      FieldName = 'facpagodestino'
    end
    object QEnviosmonto: TCurrencyField
      FieldName = 'monto'
    end
    object QEnviosenv_suc_destino: TIntegerField
      FieldName = 'env_suc_destino'
    end
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    DataSource = dsEnvios
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
        Name = 'suc_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'fac_numero'
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
      'select *'
      'from Envio'
      'where emp_codigo= :emp_codigo'
      'and suc_codigo= :suc_codigo'
      'and fac_numero= :fac_numero'
      'and pro_codigo= :pro_codigo')
    Left = 240
    Top = 264
    object QDetalleemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QDetallesuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QDetallefac_numero: TIntegerField
      FieldName = 'fac_numero'
    end
    object QDetallepro_codigo: TIntegerField
      FieldName = 'pro_codigo'
    end
    object QDetalleIDEnvio: TIntegerField
      FieldName = 'IDEnvio'
    end
    object QDetalleFecha: TDateTimeField
      FieldName = 'Fecha'
    end
    object QDetalleCiudad_Origen: TStringField
      FieldName = 'Ciudad_Origen'
      Size = 40
    end
    object QDetalleCiudad_Destino: TStringField
      FieldName = 'Ciudad_Destino'
      Size = 100
    end
    object QDetalleNombre_envia: TStringField
      FieldName = 'Nombre_envia'
      Size = 50
    end
    object QDetalleTelefono_Envia: TStringField
      FieldName = 'Telefono_Envia'
      Size = 11
    end
    object QDetalleNombre_Recibe: TStringField
      FieldName = 'Nombre_Recibe'
      Size = 50
    end
    object QDetalleTelefono_Recibe: TStringField
      FieldName = 'Telefono_Recibe'
      Size = 11
    end
    object QDetalleDescripcion: TStringField
      FieldName = 'Descripcion'
      Size = 200
    end
    object QDetalleenv_suc_destino: TIntegerField
      FieldName = 'env_suc_destino'
    end
    object QDetalleenv_status: TStringField
      FieldName = 'env_status'
      Size = 3
    end
    object QDetalleenv_recibido: TStringField
      FieldName = 'env_recibido'
      Size = 255
    end
    object QDetalleenv_rec_cedula: TStringField
      FieldName = 'env_rec_cedula'
      EditMask = '000\-0000000\-0;1;_'
      Size = 30
    end
    object QDetalleenv_rec_fecha: TDateTimeField
      FieldName = 'env_rec_fecha'
    end
  end
  object dsEnvios: TDataSource
    DataSet = QEnvios
    OnDataChange = dsEnviosDataChange
    Left = 272
    Top = 232
  end
  object dsDetalle: TDataSource
    DataSet = QDetalle
    Left = 272
    Top = 264
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 128
    Top = 280
  end
  object QSucursal: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
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
      
        'select s.suc_direccion, s.suc_localidad, s.suc_telefono, s.suc_r' +
        'nc,'
      's.suc_codigo, s.suc_nombre, s.alm_codigo, s.emp_codigo'
      'from'
      'sucursales s, sucursal_acceso a'
      'where'
      's.emp_codigo = a.emp_codigo'
      'and s.suc_codigo = a.suc_codigo'
      'and a.emp_codigo = :emp_codigo'
      'and a.usu_codigo = :usu'
      'order by s.suc_codigo')
    Left = 232
    Top = 200
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
    object QSucursalsuc_direccion: TStringField
      FieldName = 'suc_direccion'
      Size = 60
    end
    object QSucursalsuc_localidad: TStringField
      FieldName = 'suc_localidad'
      Size = 60
    end
    object QSucursalsuc_telefono: TStringField
      FieldName = 'suc_telefono'
      Size = 30
    end
    object QSucursalsuc_rnc: TStringField
      FieldName = 'suc_rnc'
      Size = 30
    end
  end
  object dsSuc: TDataSource
    DataSet = QSucursal
    Left = 272
    Top = 200
  end
  object PopupMenu1: TPopupMenu
    Left = 160
    Top = 280
    object Entregadeenvio1: TMenuItem
      Caption = 'Entrega de envio'
      OnClick = DBGrid1DblClick
    end
    object DespachodeEnvio1: TMenuItem
      Caption = 'Despacho de Envios'
      Visible = False
      OnClick = DespachodeEnvio1Click
    end
    object RecepciondeEnvios1: TMenuItem
      Caption = 'Recepcion de Envios'
      Visible = False
      OnClick = RecepciondeEnvios1Click
    end
    object mniPagarEnvio1: TMenuItem
      Caption = 'Pagar Envio'
      Visible = False
      OnClick = mniPagarEnvio1Click
    end
  end
  object QClientes: TADOQuery
    Connection = DM.ADOSigma
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
        Name = 'cli'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select '
      
        'CLI_TELEFONO, CLI_FAX, CLI_WEB, CLI_EMAIL, TCL_CODIGO, CLI_DESCU' +
        'ENTO, CLI_PRECIO,'
      
        'CLI_STATUS, FPA_CODIGO, CPA_CODIGO, CLI_CUENTA, CLI_BALANCE, EMP' +
        '_CODIGO, CLI_CODIGO,'
      
        'CLI_REFERENCIA, CLI_NOMBRE, CLI_RNC, CLI_CEDULA, CLI_DIRECCION, ' +
        'CLI_LOCALIDAD,'
      'CLI_LIMITE, VEN_CODIGO, CLI_FACTURARBCE, CLI_FACTURARVENCIDA,'
      
        'CLI_INSTNOMBRE, CLI_INSTTEL, CLI_PERNOMBRE1, CLI_PERNOMBRE2, CLI' +
        '_PERPARENT1,'
      
        'CLI_PERPARENT2, CLI_PERTEL1, CLI_PERTEL2, CLI_REFNOMBRE1, CLI_RE' +
        'FNOMBRE2,'
      
        'CLI_REFTEL1, CLI_REFTEL2, CLI_FECHA, CLI_FECHANAC, CLI_CONTACTO,' +
        ' CLI_TELEFONO2,'
      'SUC_CODIGO, PRO_CODIGO, cli_factura_debajo_costo,'
      'cli_factura_debajo_minimo, usu_codigo, cli_comentario,'
      'emp_numero'
      'from '
      'CLIENTES'
      'where emp_codigo = :emp_codigo'
      'and cli_codigo = :cli')
    Left = 64
    Top = 280
    object QClientesCLI_TELEFONO: TStringField
      FieldName = 'CLI_TELEFONO'
      Size = 30
    end
    object QClientesCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      Size = 30
    end
    object QClientesCLI_WEB: TStringField
      FieldName = 'CLI_WEB'
      Size = 60
    end
    object QClientesCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Size = 60
    end
    object QClientesTCL_CODIGO: TIntegerField
      FieldName = 'TCL_CODIGO'
    end
    object QClientesCLI_DESCUENTO: TBCDField
      FieldName = 'CLI_DESCUENTO'
      Precision = 15
      Size = 2
    end
    object QClientesCLI_PRECIO: TStringField
      FieldName = 'CLI_PRECIO'
      Size = 8
    end
    object QClientesCLI_STATUS: TStringField
      FieldName = 'CLI_STATUS'
      Size = 3
    end
    object QClientesFPA_CODIGO: TIntegerField
      FieldName = 'FPA_CODIGO'
    end
    object QClientesCPA_CODIGO: TIntegerField
      FieldName = 'CPA_CODIGO'
    end
    object QClientesCLI_CUENTA: TStringField
      FieldName = 'CLI_CUENTA'
      Size = 15
    end
    object QClientesCLI_BALANCE: TBCDField
      FieldName = 'CLI_BALANCE'
      Precision = 15
      Size = 2
    end
    object QClientesEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QClientesCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
    end
    object QClientesCLI_REFERENCIA: TStringField
      FieldName = 'CLI_REFERENCIA'
      Size = 10
    end
    object QClientesCLI_NOMBRE: TStringField
      FieldName = 'CLI_NOMBRE'
      Size = 60
    end
    object QClientesCLI_RNC: TStringField
      FieldName = 'CLI_RNC'
      Size = 30
    end
    object QClientesCLI_CEDULA: TStringField
      FieldName = 'CLI_CEDULA'
      Size = 30
    end
    object QClientesCLI_DIRECCION: TStringField
      FieldName = 'CLI_DIRECCION'
      Size = 60
    end
    object QClientesCLI_LOCALIDAD: TStringField
      FieldName = 'CLI_LOCALIDAD'
      Size = 60
    end
    object QClientesCLI_LIMITE: TBCDField
      FieldName = 'CLI_LIMITE'
      Precision = 15
      Size = 2
    end
    object QClientesVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
    end
    object QClientesCLI_FACTURARBCE: TStringField
      FieldName = 'CLI_FACTURARBCE'
      Size = 1
    end
    object QClientesCLI_FACTURARVENCIDA: TStringField
      FieldName = 'CLI_FACTURARVENCIDA'
      Size = 1
    end
    object QClientesCLI_INSTNOMBRE: TStringField
      FieldName = 'CLI_INSTNOMBRE'
      Size = 60
    end
    object QClientesCLI_INSTTEL: TStringField
      FieldName = 'CLI_INSTTEL'
      Size = 60
    end
    object QClientesCLI_PERNOMBRE1: TStringField
      FieldName = 'CLI_PERNOMBRE1'
      Size = 60
    end
    object QClientesCLI_PERNOMBRE2: TStringField
      FieldName = 'CLI_PERNOMBRE2'
      Size = 60
    end
    object QClientesCLI_PERPARENT1: TStringField
      FieldName = 'CLI_PERPARENT1'
      Size = 30
    end
    object QClientesCLI_PERPARENT2: TStringField
      FieldName = 'CLI_PERPARENT2'
      Size = 30
    end
    object QClientesCLI_PERTEL1: TStringField
      FieldName = 'CLI_PERTEL1'
      Size = 13
    end
    object QClientesCLI_PERTEL2: TStringField
      FieldName = 'CLI_PERTEL2'
      Size = 13
    end
    object QClientesCLI_REFNOMBRE1: TStringField
      FieldName = 'CLI_REFNOMBRE1'
      Size = 60
    end
    object QClientesCLI_REFNOMBRE2: TStringField
      FieldName = 'CLI_REFNOMBRE2'
      Size = 60
    end
    object QClientesCLI_REFTEL1: TStringField
      FieldName = 'CLI_REFTEL1'
      Size = 13
    end
    object QClientesCLI_REFTEL2: TStringField
      FieldName = 'CLI_REFTEL2'
      Size = 13
    end
    object QClientesCLI_FECHA: TDateTimeField
      FieldName = 'CLI_FECHA'
    end
    object QClientesCLI_FECHANAC: TDateTimeField
      FieldName = 'CLI_FECHANAC'
    end
    object QClientesCLI_CONTACTO: TStringField
      FieldName = 'CLI_CONTACTO'
      Size = 60
    end
    object QClientesCLI_TELEFONO2: TStringField
      FieldName = 'CLI_TELEFONO2'
      Size = 30
    end
    object QClientesSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QClientesPRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
    end
    object QClientescli_factura_debajo_costo: TStringField
      FieldName = 'cli_factura_debajo_costo'
      Size = 5
    end
    object QClientescli_factura_debajo_minimo: TStringField
      FieldName = 'cli_factura_debajo_minimo'
      Size = 5
    end
    object QClientesusu_codigo: TIntegerField
      FieldName = 'usu_codigo'
    end
    object QClientescli_comentario: TMemoField
      FieldName = 'cli_comentario'
      BlobType = ftMemo
    end
    object QClientesemp_numero: TIntegerField
      FieldName = 'emp_numero'
    end
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 96
    Top = 280
  end
end
