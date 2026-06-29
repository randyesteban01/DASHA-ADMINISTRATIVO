object frmParametros: TfrmParametros
  Left = 326
  Top = 95
  ActiveControl = tvOpciones
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Parametros generales'
  ClientHeight = 552
  ClientWidth = 989
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
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object pnCotizacion: TPanel
    Left = 1500
    Top = 540
    Width = 417
    Height = 385
    TabOrder = 6
    Visible = False
    object Label13: TLabel
      Left = 600
      Top = 400
      Width = 176
      Height = 13
      Caption = 'Cantidad de d'#237'as para el vencimiento'
    end
    object Label132: TLabel
      Left = 11
      Top = 18
      Width = 58
      Height = 13
      Caption = 'Dias Validez'
      FocusControl = DBEdit77
    end
    object Label133: TLabel
      Left = 11
      Top = 78
      Width = 80
      Height = 13
      Caption = 'Dias Notificacion'
      FocusControl = DBEdit77
    end
    object DBCheckBox20: TDBCheckBox
      Left = 600
      Top = 400
      Width = 233
      Height = 17
      Caption = 'El cliente debe pertenecer a la empresa'
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBRadioGroup7: TDBRadioGroup
      Left = 600
      Top = 400
      Width = 185
      Height = 81
      Caption = 'C'#243'digo del producto a utilizar'
      Items.Strings = (
        'Interno'
        'Referencia Original'
        'Referencia Fabricante')
      TabOrder = 1
    end
    object DBEdit11: TDBEdit
      Left = 600
      Top = 400
      Width = 41
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 119
      Top = 16
      DataBinding.DataField = 'cot_dias_valides'
      DataBinding.DataSource = dsParametros
      TabOrder = 3
      Width = 50
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 8
      Top = 48
      Caption = 'Activar Notificaciones'
      DataBinding.DataField = 'par_cotizacion_notif'
      DataBinding.DataSource = dsParametros
      Properties.Alignment = taRightJustify
      TabOrder = 4
      Width = 131
    end
    object cxDBSpinEdit2: TcxDBSpinEdit
      Left = 124
      Top = 72
      DataBinding.DataField = 'par_dias_cotizacion_notif'
      DataBinding.DataSource = dsParametros
      TabOrder = 5
      Width = 50
    end
    object dbchkPar_Envio_Cotiz_Correo: TDBCheckBox
      Left = 5
      Top = 105
      Width = 156
      Height = 17
      Caption = 'Enviar Correo Conduce'
      DataField = 'Par_Envio_Cotiz_Correo'
      DataSource = dsParametros
      TabOrder = 6
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object pnmail: TPanel
    Left = 1500
    Top = 8
    Width = 417
    Height = 385
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    object Label75: TLabel
      Left = 16
      Top = 24
      Width = 40
      Height = 13
      Caption = 'Servidor'
      FocusControl = DBEdit66
    end
    object Label76: TLabel
      Left = 16
      Top = 64
      Width = 92
      Height = 13
      Caption = 'Direccion de correo'
      FocusControl = DBEdit67
    end
    object Label77: TLabel
      Left = 16
      Top = 144
      Width = 36
      Height = 13
      Caption = 'Usuario'
      FocusControl = DBEdit68
    end
    object Label78: TLabel
      Left = 16
      Top = 184
      Width = 27
      Height = 13
      Caption = 'Clave'
    end
    object Label79: TLabel
      Left = 16
      Top = 104
      Width = 32
      Height = 13
      Caption = 'Puerto'
      FocusControl = DBEdit70
    end
    object DBEdit66: TDBEdit
      Left = 16
      Top = 40
      Width = 393
      Height = 21
      DataField = 'par_mailservidor'
      DataSource = dsParametros
      TabOrder = 0
    end
    object DBEdit67: TDBEdit
      Left = 16
      Top = 80
      Width = 393
      Height = 21
      DataField = 'par_mailcorreo'
      DataSource = dsParametros
      TabOrder = 1
    end
    object DBEdit68: TDBEdit
      Left = 16
      Top = 160
      Width = 393
      Height = 21
      DataField = 'par_mailusuario'
      DataSource = dsParametros
      TabOrder = 3
    end
    object DBEdit70: TDBEdit
      Left = 16
      Top = 120
      Width = 393
      Height = 21
      DataField = 'par_mailpuerto'
      DataSource = dsParametros
      TabOrder = 2
    end
    object btnPruebaEmail: TBitBtn
      Left = 32
      Top = 240
      Width = 75
      Height = 25
      Caption = 'Test'
      TabOrder = 4
      OnClick = btnPruebaEmailClick
    end
    object EdtPassMail: TEdit
      Left = 16
      Top = 200
      Width = 393
      Height = 21
      PasswordChar = '*'
      TabOrder = 5
      Text = 'EdtPassMail'
    end
  end
  object pnPedidoProv: TPanel
    Left = 1200
    Top = 8
    Width = 417
    Height = 385
    TabOrder = 5
    Visible = False
    object DBRadioGroup6: TDBRadioGroup
      Left = 16
      Top = 40
      Width = 185
      Height = 81
      Caption = 'C'#243'digo del producto a utilizar'
      Items.Strings = (
        'Interno'
        'Referencia Original'
        'Referencia Fabricante')
      TabOrder = 0
    end
    object DBCheckBox19: TDBCheckBox
      Left = 16
      Top = 16
      Width = 233
      Height = 17
      Caption = 'El pedido puede modificarse'
      TabOrder = 1
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object pnDevol: TPanel
    Left = 1500
    Top = 32
    Width = 417
    Height = 385
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    Visible = False
    object Label16: TLabel
      Left = 16
      Top = 136
      Width = 210
      Height = 13
      Caption = 'Cantidad de dias para aceptar devoluciones'
    end
    object Label115: TLabel
      Left = 16
      Top = 160
      Width = 120
      Height = 13
      Caption = 'Almacen de devoluciones'
    end
    object btalmacendev: TSpeedButton
      Left = 184
      Top = 160
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
      OnClick = btalmacendevClick
    end
    object DBCheckBox21: TDBCheckBox
      Left = 16
      Top = 16
      Width = 241
      Height = 17
      Caption = 'Permitir devolver el dinero al cliente'
      DataField = 'PAR_DEVEFECTIVO'
      DataSource = dsParametros
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBEdit12: TDBEdit
      Left = 232
      Top = 136
      Width = 41
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PAR_DEVDIAS'
      DataSource = dsParametros
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBRadioGroup20: TDBRadioGroup
      Left = 16
      Top = 40
      Width = 185
      Height = 81
      Caption = 'Forma de devolucion'
      DataField = 'PAR_DEVFORMA'
      DataSource = dsParametros
      Items.Strings = (
        'Efectivo'
        'Cheque'
        'Preguntar')
      TabOrder = 2
      Values.Strings = (
        'E'
        'C'
        'P')
    end
    object talmacendev: TEdit
      Left = 208
      Top = 160
      Width = 201
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
    object DBEdit91: TDBEdit
      Left = 144
      Top = 160
      Width = 38
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'par_almacendevolucion'
      DataSource = dsParametros
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  object pnlogistica: TPanel
    Left = 1200
    Top = 8
    Width = 417
    Height = 385
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 18
    object Label126: TLabel
      Left = 16
      Top = 16
      Width = 62
      Height = 13
      Caption = 'Direcci'#243'n Ftp'
      FocusControl = DBEdit102
    end
    object Label127: TLabel
      Left = 16
      Top = 40
      Width = 36
      Height = 13
      Caption = 'Usuario'
      FocusControl = DBEdit103
    end
    object Label128: TLabel
      Left = 16
      Top = 64
      Width = 46
      Height = 13
      Caption = 'Password'
      FocusControl = DBEdit104
    end
    object Label129: TLabel
      Left = 16
      Top = 88
      Width = 23
      Height = 13
      Caption = 'Ruta'
      FocusControl = DBEdit105
    end
    object DBEdit102: TDBEdit
      Left = 88
      Top = 16
      Width = 321
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'par_ftp_site'
      DataSource = dsParametros
      TabOrder = 0
    end
    object DBEdit103: TDBEdit
      Left = 88
      Top = 40
      Width = 321
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'par_ftp_usuario'
      DataSource = dsParametros
      TabOrder = 1
    end
    object DBEdit104: TDBEdit
      Left = 88
      Top = 64
      Width = 321
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'par_ftp_password'
      DataSource = dsParametros
      TabOrder = 2
    end
    object DBEdit105: TDBEdit
      Left = 88
      Top = 88
      Width = 321
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'par_ftp_ruta'
      DataSource = dsParametros
      TabOrder = 3
    end
  end
  object pnPedidoCli: TPanel
    Left = 1200
    Top = 8
    Width = 417
    Height = 385
    TabOrder = 4
    Visible = False
    object DBCheckBox14: TDBCheckBox
      Left = 16
      Top = 16
      Width = 233
      Height = 17
      Caption = 'El cliente debe pertenecer a la empresa'
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBRadioGroup5: TDBRadioGroup
      Left = 16
      Top = 72
      Width = 185
      Height = 81
      Caption = 'C'#243'digo del producto a utilizar'
      Items.Strings = (
        'Interno'
        'Referencia Original'
        'Referencia Fabricante')
      TabOrder = 1
    end
    object DBCheckBox18: TDBCheckBox
      Left = 16
      Top = 40
      Width = 233
      Height = 17
      Caption = 'El pedido puede modificarse'
      TabOrder = 2
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object pnPrecios: TPanel
    Left = 732
    Top = 73
    Width = 417
    Height = 386
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Visible = False
    object Label6: TLabel
      Left = 8
      Top = 8
      Width = 95
      Height = 13
      Caption = 'Descripcion Precio 1'
    end
    object Label7: TLabel
      Left = 8
      Top = 32
      Width = 95
      Height = 13
      Caption = 'Descripcion Precio 2'
    end
    object Label8: TLabel
      Left = 216
      Top = 8
      Width = 95
      Height = 13
      Caption = 'Descripcion Precio 3'
    end
    object Label9: TLabel
      Left = 216
      Top = 32
      Width = 95
      Height = 13
      Caption = 'Descripcion Precio 4'
    end
    object Label64: TLabel
      Left = 8
      Top = 56
      Width = 87
      Height = 13
      Caption = 'Precio Und Detalle'
    end
    object Label65: TLabel
      Left = 8
      Top = 80
      Width = 88
      Height = 13
      Caption = 'Precio Emp Detalle'
    end
    object Label90: TLabel
      Left = 216
      Top = 56
      Width = 93
      Height = 13
      Caption = 'Precio Und x Mayor'
    end
    object Label91: TLabel
      Left = 216
      Top = 80
      Width = 94
      Height = 13
      Caption = 'Precio Emp x Mayor'
    end
    object DBEdit5: TDBEdit
      Left = 112
      Top = 8
      Width = 81
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PAR_PREDESCRIP1'
      DataSource = dsParametros
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 20
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit6: TDBEdit
      Left = 112
      Top = 32
      Width = 81
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PAR_PREDESCRIP2'
      DataSource = dsParametros
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 20
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit7: TDBEdit
      Left = 320
      Top = 8
      Width = 89
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PAR_PREDESCRIP3'
      DataSource = dsParametros
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 20
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit8: TDBEdit
      Left = 320
      Top = 32
      Width = 89
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PAR_PREDESCRIP4'
      DataSource = dsParametros
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 20
      ParentFont = False
      TabOrder = 5
    end
    object GroupBox4: TGroupBox
      Left = 16
      Top = 246
      Width = 393
      Height = 137
      Caption = 'Codificaci'#243'n de Precio'
      TabOrder = 8
      object Label36: TLabel
        Left = 16
        Top = 16
        Width = 133
        Height = 13
        Caption = 'Letra para el N'#250'mero 0'
        FocusControl = DBEdit29
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label37: TLabel
        Left = 16
        Top = 40
        Width = 133
        Height = 13
        Caption = 'Letra para el N'#250'mero 1'
        FocusControl = DBEdit30
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label38: TLabel
        Left = 16
        Top = 64
        Width = 133
        Height = 13
        Caption = 'Letra para el N'#250'mero 2'
        FocusControl = DBEdit31
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label39: TLabel
        Left = 16
        Top = 88
        Width = 133
        Height = 13
        Caption = 'Letra para el N'#250'mero 3'
        FocusControl = DBEdit32
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label40: TLabel
        Left = 16
        Top = 112
        Width = 133
        Height = 13
        Caption = 'Letra para el N'#250'mero 4'
        FocusControl = DBEdit33
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label41: TLabel
        Left = 208
        Top = 16
        Width = 133
        Height = 13
        Caption = 'Letra para el N'#250'mero 5'
        FocusControl = DBEdit34
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label42: TLabel
        Left = 208
        Top = 40
        Width = 133
        Height = 13
        Caption = 'Letra para el N'#250'mero 6'
        FocusControl = DBEdit35
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label43: TLabel
        Left = 208
        Top = 64
        Width = 133
        Height = 13
        Caption = 'Letra para el N'#250'mero 7'
        FocusControl = DBEdit36
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label44: TLabel
        Left = 208
        Top = 88
        Width = 133
        Height = 13
        Caption = 'Letra para el N'#250'mero 8'
        FocusControl = DBEdit37
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label45: TLabel
        Left = 208
        Top = 112
        Width = 133
        Height = 13
        Caption = 'Letra para el N'#250'mero 9'
        FocusControl = DBEdit38
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit29: TDBEdit
        Left = 160
        Top = 16
        Width = 25
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'PAR_PRECIOLETRA_0'
        DataSource = dsParametros
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit30: TDBEdit
        Left = 160
        Top = 40
        Width = 25
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'PAR_PRECIOLETRA_1'
        DataSource = dsParametros
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit31: TDBEdit
        Left = 160
        Top = 64
        Width = 25
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'PAR_PRECIOLETRA_2'
        DataSource = dsParametros
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit32: TDBEdit
        Left = 160
        Top = 88
        Width = 25
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'PAR_PRECIOLETRA_3'
        DataSource = dsParametros
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit33: TDBEdit
        Left = 160
        Top = 112
        Width = 25
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'PAR_PRECIOLETRA_4'
        DataSource = dsParametros
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit34: TDBEdit
        Left = 352
        Top = 16
        Width = 25
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'PAR_PRECIOLETRA_5'
        DataSource = dsParametros
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object DBEdit35: TDBEdit
        Left = 352
        Top = 40
        Width = 25
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'PAR_PRECIOLETRA_6'
        DataSource = dsParametros
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object DBEdit36: TDBEdit
        Left = 352
        Top = 64
        Width = 25
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'PAR_PRECIOLETRA_7'
        DataSource = dsParametros
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object DBEdit37: TDBEdit
        Left = 352
        Top = 88
        Width = 25
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'PAR_PRECIOLETRA_8'
        DataSource = dsParametros
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object DBEdit38: TDBEdit
        Left = 352
        Top = 112
        Width = 25
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'PAR_PRECIOLETRA_9'
        DataSource = dsParametros
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
    end
    object DBComboBox3: TDBComboBox
      Left = 112
      Top = 56
      Width = 81
      Height = 21
      Style = csDropDownList
      BevelKind = bkFlat
      DataField = 'PAR_PRECIOUND'
      DataSource = dsParametros
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 13
      Items.Strings = (
        'Precio1'
        'Precio2'
        'Precio3'
        'Precio4')
      ParentFont = False
      TabOrder = 2
    end
    object DBComboBox4: TDBComboBox
      Left = 112
      Top = 80
      Width = 81
      Height = 21
      Style = csDropDownList
      BevelKind = bkFlat
      DataField = 'PAR_PRECIOEMP'
      DataSource = dsParametros
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 13
      Items.Strings = (
        'Precio1'
        'Precio2'
        'Precio3'
        'Precio4'
        'Ninguno')
      ParentFont = False
      TabOrder = 3
    end
    object DBCheckBox31: TDBCheckBox
      Left = 16
      Top = 112
      Width = 137
      Height = 17
      Caption = 'Itbis incluido el el precio'
      DataField = 'par_itbisincluido'
      DataSource = dsParametros
      TabOrder = 9
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object sgRedondeo: TStringGrid
      Left = 16
      Top = 144
      Width = 233
      Height = 89
      ColCount = 4
      DefaultColWidth = 90
      DefaultRowHeight = 16
      FixedCols = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
      ParentFont = False
      ScrollBars = ssNone
      TabOrder = 10
      ColWidths = (
        55
        57
        54
        55)
    end
    object ckRedondeo: TDBCheckBox
      Left = 16
      Top = 128
      Width = 161
      Height = 17
      Caption = 'Precios pueden redondearse'
      DataField = 'par_redondeo'
      DataSource = dsParametros
      TabOrder = 11
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBComboBox7: TDBComboBox
      Left = 320
      Top = 56
      Width = 89
      Height = 21
      Style = csDropDownList
      BevelKind = bkFlat
      DataField = 'par_preciound_m'
      DataSource = dsParametros
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 13
      Items.Strings = (
        'Precio1'
        'Precio2'
        'Precio3'
        'Precio4'
        'Ninguno')
      ParentFont = False
      TabOrder = 6
    end
    object DBComboBox8: TDBComboBox
      Left = 320
      Top = 80
      Width = 89
      Height = 21
      Style = csDropDownList
      BevelKind = bkFlat
      DataField = 'par_precioemp_m'
      DataSource = dsParametros
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 13
      Items.Strings = (
        'Precio1'
        'Precio2'
        'Precio3'
        'Precio4'
        'Ninguno')
      ParentFont = False
      TabOrder = 7
    end
    object DBCheckBox55: TDBCheckBox
      Left = 184
      Top = 104
      Width = 169
      Height = 17
      Caption = 'Precios por Unidad de medida'
      DataField = 'par_inv_unidad_medida'
      DataSource = dsParametros
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object dbchkpar_inv_unidad_medida: TDBCheckBox
      Left = 184
      Top = 125
      Width = 227
      Height = 17
      Caption = 'Concatenar Prod / Exist/ Ubic (Cond / Cot)'
      DataField = 'par_concat_prod_exist_ubic'
      DataSource = dsParametros
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object pnRangoDescuentoVtas: TPanel
    Left = 1200
    Top = 64
    Width = 417
    Height = 385
    TabOrder = 19
    Visible = False
    object GroupBox18: TGroupBox
      Left = 5
      Top = 16
      Width = 405
      Height = 269
      Caption = '[ Descuento por Rango de las Ventas ] '
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object dbcbxAplicaDescuentoVenta: TDBCheckBox
        Left = 23
        Top = 23
        Width = 169
        Height = 17
        Caption = 'Aplica Descuento por Rango'
        DataField = 'par_aplica_desc_por_rango_venta'
        DataSource = dsParametros
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object gbDescuento: TGroupBox
        Left = 23
        Top = 42
        Width = 353
        Height = 212
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 1
        object DBGrid6: TDBGrid
          Left = 8
          Top = 13
          Width = 336
          Height = 147
          Ctl3D = False
          DataSource = dsadoRangoDescVta
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'emp_codigo'
              Title.Caption = 'Empresa'
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Desde'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Hasta'
              Width = 105
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Porciento'
              Width = 51
              Visible = True
            end>
        end
        object DBNavigator1: TDBNavigator
          Left = 8
          Top = 163
          Width = 328
          Height = 41
          DataSource = dsadoRangoDescVta
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost]
          TabOrder = 1
        end
      end
    end
  end
  object tvOpciones: TTreeView
    Left = 0
    Top = 0
    Width = 161
    Height = 552
    Align = alLeft
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Indent = 19
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    OnChange = tvOpcionesChange
    Items.Data = {
      15000000220000000000000000000000FFFFFFFFFFFFFFFF0000000000000000
      0947656E6572616C6573210000000000000000000000FFFFFFFFFFFFFFFF0000
      00000000000008436C69656E746573230000000000000000000000FFFFFFFFFF
      FFFFFF00000000030000000A496E76656E746172696F26000000000000000000
      0000FFFFFFFFFFFFFFFF00000000000000000D436F6E74656F2046ED7369636F
      280000000000000000000000FFFFFFFFFFFFFFFF00000000000000000F436F64
      69676F2064652042617272612D0000000000000000000000FFFFFFFFFFFFFFFF
      00000000000000001450616E74616C6C61206465204275737175656461200000
      000000000000000000FFFFFFFFFFFFFFFF00000000000000000750726563696F
      73240000000000000000000000FFFFFFFFFFFFFFFF00000000000000000B4661
      63747572616369F36E2F0000000000000000000000FFFFFFFFFFFFFFFF000000
      000000000016416E746967756564616420646520466163747572617325000000
      0000000000000000FFFFFFFFFFFFFFFF00000000000000000C4465766F6C7563
      696F6E65732E0000000000000000000000FFFFFFFFFFFFFFFF00000000000000
      0015466F726D61746F7320646520496D7072657369F36E250000000000000000
      000000FFFFFFFFFFFFFFFF00000000010000000C436F6E746162696C69646164
      2A0000000000000000000000FFFFFFFFFFFFFFFF000000000000000011457374
      61646F7320646520436F73746F73250000000000000000000000FFFFFFFFFFFF
      FFFF00000000000000000C5248482079204E6F6D696E61280000000000000000
      000000FFFFFFFFFFFFFFFF00000000000000000F5469636B6574732064652043
      616A611D0000000000000000000000FFFFFFFFFFFFFFFF000000000000000004
      4D61696C1E0000000000000000000000FFFFFFFFFFFFFFFF0000000000000000
      054E6F7461731C0000000000000000000000FFFFFFFFFFFFFFFF000000000000
      0000034E4346220000000000000000000000FFFFFFFFFFFFFFFF000000000000
      0000094C6F67697374696361290000000000000000000000FFFFFFFFFFFFFFFF
      00000000000000001052616E676F204465736375656E746F7322000000000000
      0000000000FFFFFFFFFFFFFFFF000000000000000009426F6C65746572696123
      0000000000000000000000FFFFFFFFFFFFFFFF00000000000000000A436F7469
      7A6163696F6E280000000000000000000000FFFFFFFFFFFFFFFF000000000000
      00000F427572F3206465204372E96469746F210000000000000000000000FFFF
      FFFFFFFFFFFF00000000000000000856657269666F6E65300000000000000000
      000000FFFFFFFFFFFFFFFF000000000000000017466163747572616369F36E20
      456C65637472F36E696361}
  end
  object btPost: TBitBtn
    Left = 430
    Top = 415
    Width = 75
    Height = 25
    Caption = '&Grabar'
    TabOrder = 9
    OnClick = btPostClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      7777770000000000007770330770000330777033077000033077703307700003
      30777033000000033077703333333333307770330000000330777030FFFFFFF0
      30777030FCCCCFF030777030FFCCCFF030777037FCCCCFF000777077CCCFCFF0
      8077777CCC777700007777CCC77777777777777C777777777777}
  end
  object btClose: TBitBtn
    Left = 506
    Top = 415
    Width = 74
    Height = 25
    Caption = '&Salir'
    TabOrder = 10
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
  object pnServicio: TPanel
    Left = 1200
    Top = 64
    Width = 421
    Height = 384
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
    object Label102: TLabel
      Left = 8
      Top = 8
      Width = 144
      Height = 13
      Caption = 'Nota para la orden de servicio'
    end
    object Label111: TLabel
      Left = 8
      Top = 195
      Width = 109
      Height = 13
      Caption = 'Nota para la cotizacion'
    end
    object Label148: TLabel
      Left = 8
      Top = 146
      Width = 87
      Height = 13
      Caption = 'Periodo caducidad'
    end
    object Label149: TLabel
      Left = 108
      Top = 146
      Width = 43
      Height = 13
      Caption = 'Cantidad'
    end
    object DBRichEdit1: TDBRichEdit
      Left = 8
      Top = 24
      Width = 401
      Height = 121
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'par_nota_orden_servicio'
      DataSource = dsParametros
      TabOrder = 0
    end
    object DBMemo2: TDBMemo
      Left = 8
      Top = 211
      Width = 401
      Height = 137
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'par_nota_cotizacion'
      DataSource = dsParametros
      TabOrder = 1
    end
    object DBComboBox11: TDBComboBox
      Left = 8
      Top = 159
      Width = 89
      Height = 21
      DataField = 'par_periodo_caducidad'
      DataSource = dsParametros
      ItemHeight = 13
      Items.Strings = (
        'DIA'
        'MES'
        'A'#209'O')
      TabOrder = 2
    end
    object DBEdit124: TDBEdit
      Left = 108
      Top = 159
      Width = 65
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'par_cantidad_caducidad'
      DataSource = dsParametros
      TabOrder = 3
    end
  end
  object pnNCF: TPanel
    Left = 1500
    Top = 8
    Width = 417
    Height = 385
    TabOrder = 16
    object GroupBox13: TGroupBox
      Left = 1
      Top = 199
      Width = 415
      Height = 185
      Align = alBottom
      Caption = 'Numeros de Control Fiscal (NCF) Unico ingreso'
      TabOrder = 0
      object DBGrid3: TDBGrid
        Left = 2
        Top = 15
        Width = 411
        Height = 130
        Align = alTop
        Ctl3D = False
        DataSource = dsNCF_Unico
        Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'suc_nombre'
            Title.Caption = 'Sucursal'
            Width = 108
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NCF_Fijo'
            Title.Alignment = taCenter
            Title.Caption = 'NCF Fijo'
            Width = 73
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NCF_Inicial'
            Title.Alignment = taCenter
            Title.Caption = 'NCF Inicial'
            Width = 62
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NCF_Final'
            Title.Alignment = taCenter
            Title.Caption = 'NCF Final'
            Width = 58
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Cantidad'
            Title.Alignment = taCenter
            Title.Caption = 'Cant.'
            Width = 42
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NCF_Secuencia'
            Title.Alignment = taCenter
            Title.Caption = 'Sec. Actual'
            Width = 60
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NCF_Status'
            Title.Alignment = taCenter
            Title.Caption = 'St.'
            Visible = True
          end>
      end
      object BitBtn3: TBitBtn
        Left = 256
        Top = 152
        Width = 75
        Height = 25
        Caption = 'Insertar NCF'
        TabOrder = 1
        OnClick = BitBtn3Click
      end
      object BitBtn4: TBitBtn
        Left = 336
        Top = 152
        Width = 75
        Height = 25
        Caption = 'Eliminar NCF'
        TabOrder = 2
        OnClick = BitBtn4Click
      end
    end
    object GroupBox14: TGroupBox
      Left = 1
      Top = 1
      Width = 415
      Height = 192
      Align = alTop
      Caption = 'Registro de gastos menores'
      TabOrder = 1
      object DBGrid4: TDBGrid
        Left = 2
        Top = 15
        Width = 411
        Height = 138
        Align = alTop
        Ctl3D = False
        DataSource = dsNCF_Menores
        Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'suc_nombre'
            Title.Caption = 'Sucursal'
            Width = 108
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NCF_Fijo'
            Title.Alignment = taCenter
            Title.Caption = 'NCF Fijo'
            Width = 73
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NCF_Inicial'
            Title.Alignment = taCenter
            Title.Caption = 'NCF Inicial'
            Width = 62
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NCF_Final'
            Title.Alignment = taCenter
            Title.Caption = 'NCF Final'
            Width = 58
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Cantidad'
            Title.Alignment = taCenter
            Title.Caption = 'Cant.'
            Width = 42
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NCF_Secuencia'
            Title.Alignment = taCenter
            Title.Caption = 'Sec. Actual'
            Width = 60
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NCF_Status'
            Title.Alignment = taCenter
            Title.Caption = 'St.'
            Width = 27
            Visible = True
          end>
      end
      object BitBtn5: TBitBtn
        Left = 256
        Top = 159
        Width = 75
        Height = 25
        Caption = 'Insertar NCF'
        TabOrder = 1
        OnClick = BitBtn5Click
      end
      object BitBtn6: TBitBtn
        Left = 336
        Top = 159
        Width = 75
        Height = 25
        Caption = 'Eliminar NCF'
        TabOrder = 2
        OnClick = BitBtn6Click
      end
    end
  end
  object pnInvent: TPanel
    Left = 1000
    Top = 168
    Width = 417
    Height = 417
    TabOrder = 2
    Visible = False
    object PageControl1: TPageControl
      Left = 4
      Top = 3
      Width = 415
      Height = 433
      ActivePage = TabSheet1
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Generales'
        object ScrollBox2: TScrollBox
          Left = 0
          Top = 0
          Width = 407
          Height = 405
          Align = alClient
          TabOrder = 0
          object Label17: TLabel
            Left = 216
            Top = 1
            Width = 112
            Height = 13
            Caption = 'Digitos para el # de lote'
            FocusControl = DBEdit4
          end
          object Label53: TLabel
            Left = 8
            Top = 241
            Width = 276
            Height = 13
            Caption = 'Cuando el producto se crea, igualar el codigo para la Ref.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label69: TLabel
            Left = 8
            Top = 279
            Width = 174
            Height = 13
            Caption = 'Combinar Referencia Fabricante con'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label72: TLabel
            Left = 8
            Top = 301
            Width = 128
            Height = 13
            Caption = 'Empresa para el inventario'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label73: TLabel
            Left = 8
            Top = 323
            Width = 127
            Height = 13
            Caption = 'Almacen para el inventario'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object SpeedButton11: TSpeedButton
            Left = 232
            Top = 299
            Width = 23
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
            OnClick = SpeedButton11Click
          end
          object SpeedButton12: TSpeedButton
            Left = 232
            Top = 321
            Width = 23
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
            OnClick = SpeedButton12Click
          end
          object Label1: TLabel
            Left = 8
            Top = 345
            Width = 86
            Height = 13
            Caption = 'Almacen de venta'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object btTipo: TSpeedButton
            Left = 232
            Top = 343
            Width = 23
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
            Visible = False
            OnClick = btTipoClick
          end
          object Label4: TLabel
            Left = 8
            Top = 260
            Width = 159
            Height = 13
            Caption = 'Combinar Referencia Original con'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label84: TLabel
            Left = 200
            Top = 214
            Width = 84
            Height = 13
            Caption = '% Beneficio inicial'
            FocusControl = DBEdit75
          end
          object DBCheckBox27: TDBCheckBox
            Left = 5
            Top = 48
            Width = 179
            Height = 17
            Caption = 'Visualizar escalas en los detalles'
            DataField = 'PAR_FACESCALA'
            DataSource = dsParametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox28: TDBCheckBox
            Left = 5
            Top = 144
            Width = 179
            Height = 17
            Caption = 'Visualizar medida en los detalles'
            DataField = 'PAR_FACMEDIDA'
            DataSource = dsParametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox1: TDBCheckBox
            Left = 5
            Top = 64
            Width = 179
            Height = 17
            Caption = 'No exceder existencia m'#225'xima'
            DataField = 'PAR_CONTROLAMAXIMO'
            DataSource = dsParametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox2: TDBCheckBox
            Left = 192
            Top = 64
            Width = 201
            Height = 17
            Caption = 'No exceder la existencia m'#237'nima'
            DataField = 'PAR_CONTROLAMINIMO'
            DataSource = dsParametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox25: TDBCheckBox
            Left = 5
            Top = 80
            Width = 179
            Height = 17
            Caption = 'No facturar debajo precio m'#237'nimo'
            DataField = 'PAR_DEBAJOPRECIO'
            DataSource = dsParametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox3: TDBCheckBox
            Left = 192
            Top = 80
            Width = 201
            Height = 17
            Caption = 'Permitir facturar debajo del costo'
            DataField = 'PAR_DEBAJOCOSTO'
            DataSource = dsParametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox5: TDBCheckBox
            Left = 5
            Top = 96
            Width = 179
            Height = 17
            Caption = 'Obligar que sea usada o nueva'
            DataField = 'PAR_NUEVOUSADO'
            DataSource = dsParametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox29: TDBCheckBox
            Left = 192
            Top = 96
            Width = 201
            Height = 17
            Caption = 'Visualizar vencimiento en los detalles'
            DataField = 'PAR_INVMOSTRARVENCE'
            DataSource = dsParametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 8
            Top = 0
            Width = 185
            Height = 49
            Caption = 'C'#243'digo que se va autilizar'
            Columns = 2
            DataField = 'PAR_CODIGOPRODUCTO'
            DataSource = dsParametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Items.Strings = (
              'Interno'
              'Ref. original'
              'Ref. Fabrican')
            ParentFont = False
            TabOrder = 8
            Values.Strings = (
              'I'
              'O'
              'F')
          end
          object DBEdit4: TDBEdit
            Left = 340
            Top = 1
            Width = 41
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            DataField = 'PAR_VENDIGITOSLOTE'
            DataSource = dsParametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
          end
          object DBRadioGroup16: TDBRadioGroup
            Left = 196
            Top = 22
            Width = 185
            Height = 43
            Caption = 'Forma de verificar vencimiento'
            DataField = 'PAR_VENVERIFICA'
            DataSource = dsParametros
            Items.Strings = (
              'El Lote incluido en en c'#243'digo'
              'Revajar de la fecha mas pr'#243'xima')
            TabOrder = 10
            Values.Strings = (
              '1'
              '2')
          end
          object DBRadioGroup17: TDBRadioGroup
            Left = 4
            Top = 211
            Width = 83
            Height = 30
            Caption = 'Inicar con Itbis'
            Columns = 2
            DataField = 'PAR_ITBISDEFECTO'
            DataSource = dsParametros
            Items.Strings = (
              'Si'
              'No')
            TabOrder = 11
            Values.Strings = (
              'S'
              'N')
          end
          object DBEdit46: TDBEdit
            Left = 296
            Top = 234
            Width = 52
            Height = 23
            BevelKind = bkFlat
            BorderStyle = bsNone
            CharCase = ecUpperCase
            DataField = 'PAR_IGUALAREF'
            DataSource = dsParametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 13
          end
          object DBComboBox5: TDBComboBox
            Left = 192
            Top = 257
            Width = 201
            Height = 21
            Style = csDropDownList
            BevelKind = bkFlat
            Ctl3D = True
            DataField = 'PAR_COMBINAORIGINAL'
            DataSource = dsParametros
            ItemHeight = 13
            Items.Strings = (
              'Familia'
              'Departamento'
              'Color'
              'Marca'
              'Ninguno')
            ParentCtl3D = False
            TabOrder = 14
          end
          object DBComboBox6: TDBComboBox
            Left = 192
            Top = 278
            Width = 201
            Height = 21
            Style = csDropDownList
            BevelKind = bkFlat
            DataField = 'PAR_COMBINAFABRIC'
            DataSource = dsParametros
            ItemHeight = 13
            Items.Strings = (
              'Familia'
              'Departamento'
              'Color'
              'Marca'
              'Ninguno')
            TabOrder = 15
          end
          object DBEdit63: TDBEdit
            Left = 192
            Top = 299
            Width = 33
            Height = 23
            BevelKind = bkFlat
            BorderStyle = bsNone
            DataField = 'PAR_INVEMPRESA'
            DataSource = dsParametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 16
          end
          object tempresa: TEdit
            Left = 256
            Top = 299
            Width = 140
            Height = 23
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
            TabOrder = 17
          end
          object DBEdit64: TDBEdit
            Left = 192
            Top = 323
            Width = 33
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            DataField = 'PAR_INVALMACEN'
            DataSource = dsParametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 18
          end
          object talmacenemp: TEdit
            Left = 256
            Top = 321
            Width = 140
            Height = 23
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
            TabOrder = 19
          end
          object tAlmacen: TEdit
            Left = 256
            Top = 343
            Width = 140
            Height = 23
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
            TabOrder = 20
            Visible = False
          end
          object DBEdit1: TDBEdit
            Left = 192
            Top = 343
            Width = 33
            Height = 23
            BevelKind = bkFlat
            BorderStyle = bsNone
            DataField = 'PAR_ALMACENVENTA'
            DataSource = dsParametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 21
            Visible = False
          end
          object DBCheckBox30: TDBCheckBox
            Left = 192
            Top = 112
            Width = 201
            Height = 17
            Caption = 'Imprimir Precios en Conduce/Salida'
            DataField = 'par_invprecioconduce'
            DataSource = dsParametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 22
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBEdit75: TDBEdit
            Left = 296
            Top = 209
            Width = 52
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            DataField = 'par_beneficio'
            DataSource = dsParametros
            TabOrder = 12
          end
          object DBCheckBox36: TDBCheckBox
            Left = 192
            Top = 128
            Width = 201
            Height = 17
            Caption = 'En compras digitar centros de costo'
            DataField = 'par_inv_compra_centro_costo'
            DataSource = dsParametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 23
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox41: TDBCheckBox
            Left = 5
            Top = 112
            Width = 179
            Height = 17
            Caption = 'Entradas modifica precio'
            DataField = 'par_inv_entrada_modifica_precio'
            DataSource = dsParametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 24
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox48: TDBCheckBox
            Left = 5
            Top = 128
            Width = 179
            Height = 17
            Caption = 'Compras modifica precio Aut.'
            DataField = 'par_modifica_precio_automatico'
            DataSource = dsParametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 25
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox51: TDBCheckBox
            Left = 192
            Top = 144
            Width = 153
            Height = 17
            Caption = 'Aplicar transferencias aut.'
            DataField = 'par_inv_transferencia_auto'
            DataSource = dsParametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 26
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox53: TDBCheckBox
            Left = 192
            Top = 160
            Width = 201
            Height = 17
            Caption = 'Visualizar diferencia en factura cxp'
            DataField = 'par_compras_visualiza_diferencia'
            DataSource = dsParametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 27
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox60: TDBCheckBox
            Left = 192
            Top = 176
            Width = 201
            Height = 17
            Caption = 'Calcular aut. los valores en compras'
            DataField = 'par_compras_valores_aut'
            DataSource = dsParametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 28
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox61: TDBCheckBox
            Left = 5
            Top = 160
            Width = 179
            Height = 17
            Caption = 'Imprimir comentario de producto'
            DataField = 'par_inv_imprime_comentario'
            DataSource = dsParametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 29
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox62: TDBCheckBox
            Left = 192
            Top = 191
            Width = 201
            Height = 17
            Caption = 'Validar serie en el inventario'
            DataField = 'par_validar_serie_en_inventario'
            DataSource = dsParametros
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 30
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object dbchkPar_Envio_Conduce_Correo: TDBCheckBox
            Left = 5
            Top = 177
            Width = 156
            Height = 17
            Caption = 'Enviar Correo Conduce'
            DataField = 'Par_Envio_Conduce_Correo'
            DataSource = dsParametros
            TabOrder = 31
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object dbrgrpPAR_INV_VENTAS: TDBRadioGroup
            Left = 88
            Top = 210
            Width = 100
            Height = 30
            Caption = 'Inv Ventas'
            Columns = 2
            DataField = 'PAR_INV_VENTAS'
            DataSource = dsParametros
            Items.Strings = (
              'Sucu'
              'Caja')
            TabOrder = 32
            Values.Strings = (
              '0'
              '1')
          end
          object DBCheckBox68: TDBCheckBox
            Left = 5
            Top = 192
            Width = 180
            Height = 20
            Caption = 'Unidad de medida por productos'
            DataField = 'PAR_UnidadMedida_Producto'
            DataSource = dsParametros
            TabOrder = 33
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Reportes'
        ImageIndex = 1
        object sgInventario: TStringGrid
          Left = 0
          Top = 4
          Width = 407
          Height = 341
          Color = clSilver
          ColCount = 2
          DefaultColWidth = 150
          DefaultRowHeight = 21
          FixedCols = 0
          RowCount = 6
          FixedRows = 0
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected]
          TabOrder = 2
          OnDrawCell = sgInventarioDrawCell
          OnSelectCell = sgInventarioSelectCell
        end
        object cbsgInvent: TComboBox
          Left = 153
          Top = 6
          Width = 152
          Height = 21
          BevelKind = bkSoft
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 1
          TabStop = False
          OnExit = cbsgInventExit
        end
        object pnsgInvent: TPanel
          Left = 3
          Top = 6
          Width = 148
          Height = 21
          Alignment = taLeftJustify
          BevelInner = bvLowered
          BevelOuter = bvLowered
          TabOrder = 0
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Clasificaciones'
        ImageIndex = 2
        object Label92: TLabel
          Left = 16
          Top = 16
          Width = 120
          Height = 13
          Caption = 'Descripcion para Familias'
        end
        object Label93: TLabel
          Left = 16
          Top = 40
          Width = 155
          Height = 13
          Caption = 'Descripcion para Departamentos'
        end
        object Label94: TLabel
          Left = 16
          Top = 64
          Width = 118
          Height = 13
          Caption = 'Descripcion para Marcas'
        end
        object Label95: TLabel
          Left = 16
          Top = 88
          Width = 118
          Height = 13
          Caption = 'Descripcion para Colores'
        end
        object DBEdit80: TDBEdit
          Left = 184
          Top = 16
          Width = 199
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'par_nombre_familia'
          DataSource = dsParametros
          TabOrder = 0
        end
        object DBEdit81: TDBEdit
          Left = 184
          Top = 40
          Width = 199
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'par_nombre_depto'
          DataSource = dsParametros
          TabOrder = 1
        end
        object DBEdit82: TDBEdit
          Left = 184
          Top = 64
          Width = 199
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'par_nombre_marca'
          DataSource = dsParametros
          TabOrder = 2
        end
        object DBEdit83: TDBEdit
          Left = 184
          Top = 88
          Width = 199
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'par_nombre_color'
          DataSource = dsParametros
          TabOrder = 3
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Colector'
        ImageIndex = 3
        object GroupBox11: TGroupBox
          Left = 8
          Top = 4
          Width = 393
          Height = 197
          Caption = 'Archivo de inventario para copiar en el colector'
          TabOrder = 0
          object Label96: TLabel
            Left = 8
            Top = 24
            Width = 90
            Height = 13
            Caption = 'Nombre de archivo'
          end
          object Label97: TLabel
            Left = 8
            Top = 48
            Width = 52
            Height = 13
            Caption = 'Delimitador'
          end
          object Label98: TLabel
            Left = 8
            Top = 72
            Width = 38
            Height = 13
            Caption = 'Campos'
          end
          object DBEdit84: TDBEdit
            Left = 104
            Top = 24
            Width = 281
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            DataField = 'par_arch_copiar_colector'
            DataSource = dsParametros
            TabOrder = 0
          end
          object DBEdit85: TDBEdit
            Left = 104
            Top = 48
            Width = 33
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            DataField = 'par_delimitador_envia'
            DataSource = dsParametros
            TabOrder = 1
          end
          object ListaEnvia: TCheckListBox
            Left = 104
            Top = 72
            Width = 281
            Height = 124
            BevelKind = bkFlat
            BorderStyle = bsNone
            ItemHeight = 13
            Items.Strings = (
              'Codigo'
              'Ref. Original'
              'Nombre del Producto'
              'Costo Und'
              'Costo Emp'
              'Precio1'
              'Precio2'
              'Precio3'
              'Precio4')
            TabOrder = 2
          end
        end
        object GroupBox12: TGroupBox
          Left = 8
          Top = 204
          Width = 393
          Height = 146
          Caption = 'Archivo recibido desde el colector'
          TabOrder = 1
          object Label99: TLabel
            Left = 8
            Top = 24
            Width = 90
            Height = 13
            Caption = 'Nombre de archivo'
          end
          object Label100: TLabel
            Left = 8
            Top = 48
            Width = 52
            Height = 13
            Caption = 'Delimitador'
          end
          object Label101: TLabel
            Left = 8
            Top = 72
            Width = 38
            Height = 13
            Caption = 'Campos'
          end
          object DBEdit86: TDBEdit
            Left = 104
            Top = 24
            Width = 281
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            DataField = 'par_arch_recibe_colector'
            DataSource = dsParametros
            TabOrder = 0
          end
          object DBEdit87: TDBEdit
            Left = 104
            Top = 48
            Width = 33
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            DataField = 'par_delimitador_recibe'
            DataSource = dsParametros
            TabOrder = 1
          end
          object ListaRecibe: TCheckListBox
            Left = 104
            Top = 72
            Width = 281
            Height = 73
            BevelKind = bkFlat
            BorderStyle = bsNone
            ItemHeight = 13
            Items.Strings = (
              'Codigo'
              'Ref. Original'
              'Cantidad Und'
              'Cantidad Emp')
            TabOrder = 2
          end
        end
      end
    end
  end
  object pnFormatosImpOrig: TPanel
    Left = 1500
    Top = 16
    Width = 437
    Height = 386
    TabOrder = 8
    Visible = False
    object DBEdit74: TDBEdit
      Left = 257
      Top = 156
      Width = 32
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'tfa_copias'
      DataSource = dsTipo
      TabOrder = 0
    end
    object GroupBox3: TGroupBox
      Left = 1
      Top = 142
      Width = 435
      Height = 243
      Align = alBottom
      Caption = 'Facturas'
      TabOrder = 1
      object Label83: TLabel
        Left = 216
        Top = 16
        Width = 32
        Height = 13
        Caption = 'Copias'
      end
      object DBGrid1: TDBGrid
        Left = 2
        Top = 15
        Width = 207
        Height = 226
        Align = alLeft
        Color = clInfoBk
        DataSource = dsTipo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'TFA_NOMBRE'
            Title.Caption = 'Tipo de Factura'
            Width = 173
            Visible = True
          end>
      end
      object DBRadioGroup11: TDBRadioGroup
        Left = 216
        Top = 34
        Width = 196
        Height = 46
        Columns = 2
        DataField = 'TFA_FORMATOIMP'
        DataSource = dsTipo
        Items.Strings = (
          'POS'
          'Normal'
          'Elegante'
          '2 Columnas')
        TabOrder = 1
        Values.Strings = (
          '3'
          '2'
          '4'
          '5')
      end
      object DBCheckBox23: TDBCheckBox
        Left = 297
        Top = 9
        Width = 112
        Height = 24
        Caption = 'Totalizar al pie de la Factura'
        DataField = 'PAR_FACTOTALIZAPIE'
        DataSource = dsParametros
        TabOrder = 3
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        WordWrap = True
      end
      object pnFacturas: TPanel
        Left = 1200
        Top = 85
        Width = 120
        Height = 20
        Alignment = taLeftJustify
        BevelInner = bvLowered
        BevelOuter = bvLowered
        TabOrder = 2
      end
    end
    object DBRadioGroup21: TDBRadioGroup
      Left = 328
      Top = 103
      Width = 81
      Height = 42
      Caption = 'Cotizaci'#243'n'
      DataField = 'PAR_FORMATOCOT'
      DataSource = dsParametros
      Items.Strings = (
        'Normal'
        'Elegante')
      TabOrder = 2
      Values.Strings = (
        '2'
        '4')
    end
    object dbcbbpar_formato_preimpreso: TDBComboBox
      Left = 184
      Top = 123
      Width = 142
      Height = 21
      Style = csDropDownList
      DataField = 'par_formato_preimpreso'
      DataSource = dsParametros
      ItemHeight = 13
      Items.Strings = (
        'QRBelkis'
        'QRSoloAutos'
        'QRImpresosDuran'
        'QRMSConsulting'
        'QRBB'
        'QRThorton'
        'QRAgregados'
        'Grabado_Exento'
        'QClinico'
        'QRMadeco'
        'QRMateirosa'
        'Norma 201806 Normal'
        'Norma 201806 Tickets'
        'Sarita & Asociados'
        'Hotel'
        'SteelTec'
        'Cepinta'
        'Caceres&Equipos')
      TabOrder = 3
    end
    object DBCheckBox34: TDBCheckBox
      Left = 185
      Top = 106
      Width = 133
      Height = 15
      Caption = 'Factura es Pre-Impresa'
      DataField = 'par_fac_preimpresa'
      DataSource = dsParametros
      TabOrder = 4
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      WordWrap = True
    end
    object DBCheckBox6: TDBCheckBox
      Left = 114
      Top = 104
      Width = 71
      Height = 42
      Caption = 'Preguntar por factura peque'#241'a'
      DataField = 'PAR_PREGUNTAPEQ'
      DataSource = dsParametros
      TabOrder = 5
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      WordWrap = True
    end
    object dbchkpar_envio_maxivo_fact: TDBCheckBox
      Left = 6
      Top = 125
      Width = 108
      Height = 18
      Caption = 'Envio Maxivo Fact'
      DataField = 'par_envio_maxivo_fact'
      DataSource = dsParametros
      TabOrder = 6
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      WordWrap = True
    end
    object DBRadioGroup12: TDBRadioGroup
      Left = 8
      Top = 54
      Width = 97
      Height = 49
      Caption = 'Cuadre del d'#237'a'
      DataField = 'PAR_FORMATOCUADRE'
      DataSource = dsParametros
      Items.Strings = (
        'POS'
        'Normal')
      TabOrder = 7
      Values.Strings = (
        '3'
        '2')
    end
    object DBRadioGroup13: TDBRadioGroup
      Left = 103
      Top = 54
      Width = 105
      Height = 49
      Caption = 'Notas de cr'#233'dito'
      DataField = 'PAR_FORMATONC'
      DataSource = dsParametros
      Items.Strings = (
        'POS'
        'Normal')
      TabOrder = 8
      Values.Strings = (
        '3'
        '2')
    end
    object DBRadioGroup14: TDBRadioGroup
      Left = 206
      Top = 54
      Width = 99
      Height = 49
      Caption = 'Notas de d'#233'bito'
      DataField = 'PAR_FORMATOND'
      DataSource = dsParametros
      Items.Strings = (
        'POS'
        'Normal')
      TabOrder = 9
      Values.Strings = (
        '3'
        '2')
    end
    object DBRadioGroup2: TDBRadioGroup
      Left = 302
      Top = 54
      Width = 107
      Height = 49
      Caption = 'Conduces'
      DataField = 'PAR_FORMATOCON'
      DataSource = dsParametros
      Items.Strings = (
        'POS'
        'Normal')
      TabOrder = 10
      Values.Strings = (
        '3'
        '2')
    end
    object DBRadioGroup23: TDBRadioGroup
      Left = 365
      Top = 54
      Width = 65
      Height = 49
      BiDiMode = bdLeftToRight
      Caption = 'Envio'
      DataField = 'PAR_FORMATOENVIOCON'
      DataSource = dsParametros
      Items.Strings = (
        'POS'
        'Normal')
      ParentBiDiMode = False
      TabOrder = 11
      Values.Strings = (
        '3'
        '2')
    end
    object DBRadioGroup10: TDBRadioGroup
      Left = 307
      Top = 1
      Width = 127
      Height = 49
      Caption = 'Devoluciones'
      DataField = 'PAR_FORMATODEV'
      DataSource = dsParametros
      Items.Strings = (
        'POS'
        'Normal')
      TabOrder = 12
      Values.Strings = (
        '3'
        '2')
    end
    object DBRadioGroup9: TDBRadioGroup
      Left = 206
      Top = 3
      Width = 99
      Height = 49
      Caption = 'Desembolsos'
      DataField = 'PAR_FORMATODES'
      DataSource = dsParametros
      Items.Strings = (
        'POS'
        'Normal')
      TabOrder = 13
      Values.Strings = (
        '3'
        '2')
    end
    object DBRadioGroup3: TDBRadioGroup
      Left = 103
      Top = 3
      Width = 106
      Height = 49
      Caption = 'Recibos de ingreso'
      DataField = 'PAR_FORMATORI'
      DataSource = dsParametros
      Items.Strings = (
        'POS'
        'Normal')
      TabOrder = 14
      Values.Strings = (
        '3'
        '2')
    end
    object DBRadioGroup8: TDBRadioGroup
      Left = 8
      Top = 3
      Width = 97
      Height = 49
      Caption = 'Recibos de cobro'
      DataField = 'PAR_FORMATORC'
      DataSource = dsParametros
      Items.Strings = (
        'POS'
        'Normal')
      TabOrder = 15
      Values.Strings = (
        '3'
        '2')
    end
  end
  object pnContab: TPanel
    Left = 1500
    Top = 32
    Width = 447
    Height = 385
    TabOrder = 11
    object bPAR_SUC_NCF: TSpeedButton
      Left = 346
      Top = 315
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
      OnClick = bPAR_SUC_NCFClick
    end
    object LB_3: TLabel
      Left = 8
      Top = 8
      Width = 100
      Height = 13
      Caption = 'Cuenta de Resultado'
    end
    object LB_4: TLabel
      Left = 224
      Top = 318
      Width = 65
      Height = 13
      Caption = 'Sucursal NCF'
    end
    object DBRadioGroup18: TDBRadioGroup
      Left = 1
      Top = 196
      Width = 445
      Height = 36
      Align = alTop
      Caption = 'Imprimir los anexos en'
      Columns = 2
      DataField = 'PAR_REPANEXOS'
      DataSource = dsContab
      Items.Strings = (
        'Estado de Situaci'#243'n'
        'Balance de Comprobaci'#243'n')
      TabOrder = 0
      Values.Strings = (
        'S'
        'C')
    end
    object GroupBox7: TGroupBox
      Left = 1
      Top = 232
      Width = 445
      Height = 44
      Align = alTop
      Caption = 'Columas para el estado de resultado'
      TabOrder = 1
      object DBCheckBox9: TDBCheckBox
        Left = 600
        Top = 400
        Width = 129
        Height = 17
        Caption = 'Balance Mes Anterior'
        DataField = 'PAR_REPRESULTCOL1'
        DataSource = dsContab
        TabOrder = 0
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox10: TDBCheckBox
        Left = 600
        Top = 400
        Width = 113
        Height = 17
        Caption = 'Balance Mes Actual'
        DataField = 'PAR_REPRESULTCOL2'
        DataSource = dsContab
        TabOrder = 1
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox11: TDBCheckBox
        Left = 600
        Top = 400
        Width = 121
        Height = 17
        Caption = 'Balance Acumulado'
        DataField = 'PAR_REPRESULTCOL3'
        DataSource = dsContab
        TabOrder = 2
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object dbchkpar_igualartelefonocliente: TDBCheckBox
        Left = 8
        Top = 23
        Width = 129
        Height = 17
        Caption = 'Balance Mes Anterior'
        DataField = 'PAR_REPRESULTCOL1'
        DataSource = dsContab
        TabOrder = 3
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object dbchkPAR_REPRESULTCOL1: TDBCheckBox
        Left = 144
        Top = 23
        Width = 129
        Height = 17
        Caption = 'Balance Mes Actual'
        DataField = 'PAR_REPRESULTCOL2'
        DataSource = dsContab
        TabOrder = 4
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object dbchkPAR_REPRESULTCOL2: TDBCheckBox
        Left = 280
        Top = 23
        Width = 129
        Height = 17
        Caption = 'Balance Acumulado'
        DataField = 'PAR_REPRESULTCOL3'
        DataSource = dsContab
        TabOrder = 5
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
    end
    object DBCheckBox22: TDBCheckBox
      Left = 600
      Top = 400
      Width = 193
      Height = 17
      Caption = 'Imprimir las cuentas en los anexos'
      DataField = 'PAR_REPANEXOSCTA'
      DataSource = dsContab
      TabOrder = 2
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox46: TDBCheckBox
      Left = 600
      Top = 400
      Width = 209
      Height = 17
      Caption = 'Incluir inventario en estado de resultado'
      DataField = 'par_estado_resultado_inventario'
      DataSource = dsContab
      TabOrder = 3
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox57: TDBCheckBox
      Left = 600
      Top = 400
      Width = 185
      Height = 17
      Caption = 'Codificar por familia de productos'
      DataField = 'par_codifica_venta_familia'
      DataSource = dsContab
      TabOrder = 4
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object ScrollBox1: TScrollBox
      Left = 1
      Top = 1
      Width = 445
      Height = 195
      HorzScrollBar.Visible = False
      Align = alTop
      TabOrder = 5
      object btCtaResult: TSpeedButton
        Left = 190
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
        OnClick = btCtaResultClick
      end
      object Label26: TLabel
        Left = 8
        Top = 32
        Width = 109
        Height = 13
        Caption = 'Doc. Cargos Bancarios'
      end
      object btDocCB: TSpeedButton
        Left = 190
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
        OnClick = btDocCBClick
      end
      object LB_par_doccheque: TLabel
        Left = 8
        Top = 56
        Width = 92
        Height = 13
        Caption = 'Doc. para Cheques'
      end
      object btDocCK: TSpeedButton
        Left = 190
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
        OnClick = btDocCKClick
      end
      object LB_par_docdeposito: TLabel
        Left = 8
        Top = 80
        Width = 97
        Height = 13
        Caption = 'Doc. para Dep'#243'sitos'
      end
      object btDocDep: TSpeedButton
        Left = 190
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
        OnClick = btDocDepClick
      end
      object LB_par_doc_trans_banco: TLabel
        Left = 8
        Top = 104
        Width = 101
        Height = 13
        Caption = 'Doc. Trans. Bancaria'
      end
      object btDocTB: TSpeedButton
        Left = 190
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
        OnClick = btDocTBClick
      end
      object LB_par_doccompras: TLabel
        Left = 8
        Top = 128
        Width = 121
        Height = 13
        Caption = 'Doc. para Compras (CXP)'
      end
      object btDocCompra: TSpeedButton
        Left = 190
        Top = 128
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
        OnClick = btDocCompraClick
      end
      object LB_par_docdesem: TLabel
        Left = 8
        Top = 152
        Width = 113
        Height = 13
        Caption = 'Doc. para Desembolsos'
      end
      object btDesem: TSpeedButton
        Left = 190
        Top = 152
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
        OnClick = btDesemClick
      end
      object btRC: TSpeedButton
        Left = 190
        Top = 176
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
        OnClick = btRCClick
      end
      object LB_par_docrc: TLabel
        Left = 8
        Top = 176
        Width = 80
        Height = 13
        Caption = 'Doc. de Recibos'
      end
      object LB_par_docnccli: TLabel
        Left = 8
        Top = 200
        Width = 96
        Height = 13
        Caption = 'Doc. NC de Clientes'
      end
      object btNCCli: TSpeedButton
        Left = 190
        Top = 200
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
        OnClick = btNCCliClick
      end
      object LB_par_docndcli: TLabel
        Left = 8
        Top = 224
        Width = 97
        Height = 13
        Caption = 'Doc. ND de Clientes'
      end
      object btNDCli: TSpeedButton
        Left = 190
        Top = 224
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
        OnClick = btNDCliClick
      end
      object LB_par_docdev: TLabel
        Left = 8
        Top = 248
        Width = 111
        Height = 13
        Caption = 'Doc. Devoluci'#243'n Venta'
      end
      object btDevol: TSpeedButton
        Left = 190
        Top = 248
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
      end
      object LB_par_docnomina: TLabel
        Left = 8
        Top = 272
        Width = 86
        Height = 13
        Caption = 'Doc. para N'#243'mina'
      end
      object btDocNom: TSpeedButton
        Left = 190
        Top = 272
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
      end
      object LB_par_docnc_cxp: TLabel
        Left = 8
        Top = 296
        Width = 104
        Height = 13
        Caption = 'Doc. NC Proveedores'
      end
      object btNCProv: TSpeedButton
        Left = 190
        Top = 296
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
        OnClick = btNCProvClick
      end
      object LB_par_doc_dev_compra: TLabel
        Left = 8
        Top = 320
        Width = 119
        Height = 13
        Caption = 'Doc. Devoluci'#243'n Compra'
      end
      object btnd_cxp: TSpeedButton
        Left = 190
        Top = 320
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
        OnClick = btnd_cxpClick
      end
      object btctaRGP: TSpeedButton
        Left = 190
        Top = 656
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
        OnClick = btctaRGPClick
      end
      object btctagastodif: TSpeedButton
        Left = 192
        Top = 634
        Width = 21
        Height = 20
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
        OnClick = btctagastodifClick
      end
      object btctaprimacont: TSpeedButton
        Left = 190
        Top = 608
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
        OnClick = btctaprimacontClick
      end
      object btctaSueldPag: TSpeedButton
        Left = 190
        Top = 584
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
        OnClick = btctaSueldPagClick
      end
      object btselectivocon: TSpeedButton
        Left = 190
        Top = 560
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
        OnClick = btselectivoconClick
      end
      object btctaselectivoadv: TSpeedButton
        Left = 190
        Top = 536
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
        OnClick = btctaselectivoadvClick
      end
      object btCtaDescComp: TSpeedButton
        Left = 190
        Top = 512
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
        OnClick = btCtaDescCompClick
      end
      object btCtaDesc: TSpeedButton
        Left = 190
        Top = 488
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
        OnClick = btCtaDescClick
      end
      object btCtaItbisComp: TSpeedButton
        Left = 190
        Top = 467
        Width = 23
        Height = 16
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
        OnClick = btCtaItbisCompClick
      end
      object btCtaItbis: TSpeedButton
        Left = 190
        Top = 440
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
        OnClick = btCtaItbisClick
      end
      object btCtaCosto: TSpeedButton
        Left = 190
        Top = 416
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
        OnClick = btCtaCostoClick
      end
      object btCtaInvent: TSpeedButton
        Left = 190
        Top = 392
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
        OnClick = btCtaInventClick
      end
      object btDocCond: TSpeedButton
        Left = 190
        Top = 368
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
        OnClick = btDocCondClick
      end
      object btDocLiq: TSpeedButton
        Left = 190
        Top = 344
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
        OnClick = btDocLiqClick
      end
      object Label27: TLabel
        Left = 8
        Top = 656
        Width = 125
        Height = 13
        Caption = 'Provision Regal'#237'a Pascual'
      end
      object Label28: TLabel
        Left = 8
        Top = 632
        Width = 110
        Height = 13
        Caption = 'Ingreso por Dif. Cambio'
      end
      object Label29: TLabel
        Left = 8
        Top = 608
        Width = 97
        Height = 13
        Caption = 'Cuenta para la prima'
      end
      object Label30: TLabel
        Left = 8
        Top = 584
        Width = 82
        Height = 13
        Caption = 'Sueldo por Pagar'
      end
      object Label31: TLabel
        Left = 8
        Top = 560
        Width = 91
        Height = 13
        Caption = 'Selectivo Consumo'
      end
      object Label33: TLabel
        Left = 8
        Top = 536
        Width = 95
        Height = 13
        Caption = 'Selectivo Advaloren'
      end
      object Label34: TLabel
        Left = 8
        Top = 512
        Width = 111
        Height = 13
        Caption = 'Descuento en Compras'
      end
      object Label35: TLabel
        Left = 8
        Top = 488
        Width = 98
        Height = 13
        Caption = 'Descuento en Venta'
      end
      object Label46: TLabel
        Left = 8
        Top = 464
        Width = 110
        Height = 13
        Caption = 'Cuenta Itbis en Compra'
      end
      object Label47: TLabel
        Left = 8
        Top = 440
        Width = 102
        Height = 13
        Caption = 'Cuenta Itbis en Venta'
      end
      object Label54: TLabel
        Left = 8
        Top = 416
        Width = 84
        Height = 13
        Caption = 'Cuenta de Costos'
      end
      object Label55: TLabel
        Left = 8
        Top = 392
        Width = 99
        Height = 13
        Caption = 'Cuenta de Inventario'
      end
      object Label56: TLabel
        Left = 8
        Top = 368
        Width = 74
        Height = 13
        Caption = 'Doc. Conduces'
      end
      object Label67: TLabel
        Left = 8
        Top = 344
        Width = 91
        Height = 13
        Caption = 'Doc. Liquidaciones'
      end
      object Label70: TLabel
        Left = 8
        Top = 680
        Width = 110
        Height = 13
        Caption = 'Mercanc'#237'a en Trans'#237'to'
      end
      object btctamerctrans: TSpeedButton
        Left = 190
        Top = 680
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
        OnClick = btctamerctransClick
      end
      object btctaretisr: TSpeedButton
        Left = 190
        Top = 752
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
        OnClick = btctaretisrClick
      end
      object btctaretitbis: TSpeedButton
        Left = 190
        Top = 728
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
        OnClick = btctaretitbisClick
      end
      object btctaingcobint: TSpeedButton
        Left = 190
        Top = 704
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
        OnClick = btctaingcobintClick
      end
      object Label112: TLabel
        Left = 8
        Top = 752
        Width = 85
        Height = 13
        Caption = 'Retenci'#243'n de ISR'
      end
      object Label113: TLabel
        Left = 8
        Top = 728
        Width = 71
        Height = 13
        Caption = 'Retenci'#243'n Itbis'
      end
      object Label114: TLabel
        Left = 8
        Top = 704
        Width = 107
        Height = 13
        Caption = 'Ingreso x cobro interes'
      end
      object LB_5: TLabel
        Left = 10
        Top = 11
        Width = 116
        Height = 13
        Caption = 'Doc. Cuenta Resultados'
      end
      object btctaservcomp: TSpeedButton
        Left = 190
        Top = 776
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
        OnClick = btctaservcompClick
      end
      object LB_6: TLabel
        Left = 8
        Top = 779
        Width = 96
        Height = 13
        Caption = 'Propina Legal Venta'
      end
      object Label25: TLabel
        Left = 8
        Top = 804
        Width = 76
        Height = 13
        Caption = 'Otros Impuestos'
      end
      object btnbtctaotrosimp: TSpeedButton
        Left = 189
        Top = 800
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
        OnClick = btnbtctaotrosimpClick
      end
      object Label123: TLabel
        Left = 8
        Top = 851
        Width = 104
        Height = 13
        Caption = 'Propina Legal Compra'
      end
      object btnpar_ctaproplegcomp: TSpeedButton
        Left = 189
        Top = 847
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
        OnClick = btnpar_ctaproplegcompClick
      end
      object btnpar_ctafletecomp: TSpeedButton
        Left = 189
        Top = 824
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
        OnClick = btnpar_ctafletecompClick
      end
      object Label124: TLabel
        Left = 8
        Top = 828
        Width = 75
        Height = 13
        Caption = 'Cuenta de Flete'
      end
      object Label172: TLabel
        Left = 8
        Top = 873
        Width = 119
        Height = 13
        Caption = 'Cuenta Devol. en Ventas'
      end
      object btnpar_ctadevventas: TSpeedButton
        Left = 189
        Top = 871
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
        OnClick = btnpar_ctadevventasClick
      end
      object dbedtpar_ctaresultado: TDBEdit
        Left = 136
        Top = 8
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'par_ctaresultado'
        DataSource = dsContab
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object tCtaResult: TEdit
        Left = 215
        Top = 8
        Width = 206
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
        TabOrder = 1
      end
      object dbedtPAR_DOCCARGOS: TDBEdit
        Left = 136
        Top = 32
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'PAR_DOCCARGOS'
        DataSource = dsContab
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object tDocCB: TEdit
        Left = 215
        Top = 32
        Width = 206
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
      object dbedtpar_doccheque: TDBEdit
        Left = 136
        Top = 56
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'PAR_DOCCHEQUE'
        DataSource = dsContab
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object tDocCK: TEdit
        Left = 215
        Top = 56
        Width = 206
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
      object dbedtpar_docdeposito: TDBEdit
        Left = 136
        Top = 80
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'PAR_DOCDEPOSITO'
        DataSource = dsContab
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object tDocDP: TEdit
        Left = 215
        Top = 80
        Width = 206
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
      object tdbtDocTB: TDBEdit
        Left = 136
        Top = 104
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'par_doc_trans_banco'
        DataSource = dsContab
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object tDocTB: TEdit
        Left = 215
        Top = 104
        Width = 206
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
      object tdbtDocCompra: TDBEdit
        Left = 136
        Top = 128
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'PAR_DOCCOMPRAS'
        DataSource = dsContab
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object tDocCompra: TEdit
        Left = 215
        Top = 128
        Width = 206
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
        TabOrder = 11
      end
      object tdbtDesem: TDBEdit
        Left = 136
        Top = 152
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'PAR_DOCDESEM'
        DataSource = dsContab
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
      end
      object tDesem: TEdit
        Left = 215
        Top = 152
        Width = 206
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
        TabOrder = 13
      end
      object tRC: TEdit
        Left = 215
        Top = 176
        Width = 206
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
      object tdbtRC: TDBEdit
        Left = 136
        Top = 176
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'PAR_DOCRC'
        DataSource = dsContab
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
      end
      object tdbtNCCli: TDBEdit
        Left = 136
        Top = 200
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'PAR_DOCNCCLI'
        DataSource = dsContab
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
      end
      object tNCCli: TEdit
        Left = 215
        Top = 200
        Width = 206
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
        TabOrder = 17
      end
      object tdbtNDCli: TDBEdit
        Left = 136
        Top = 224
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'PAR_DOCNDCLI'
        DataSource = dsContab
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 18
      end
      object tNDCli: TEdit
        Left = 215
        Top = 224
        Width = 206
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
        TabOrder = 19
      end
      object tdbtDevol: TDBEdit
        Left = 136
        Top = 248
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'PAR_DOCDEV'
        DataSource = dsContab
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 20
      end
      object tDevol: TEdit
        Left = 215
        Top = 248
        Width = 206
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
        TabOrder = 21
      end
      object tdbtDocNom: TDBEdit
        Left = 136
        Top = 272
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'par_docnomina'
        DataSource = dsContab
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 22
      end
      object tDocNom: TEdit
        Left = 215
        Top = 272
        Width = 206
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
        TabOrder = 23
      end
      object tdbtNCProv: TDBEdit
        Left = 136
        Top = 296
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'par_docnc_cxp'
        DataSource = dsContab
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 24
      end
      object tNCProv: TEdit
        Left = 215
        Top = 296
        Width = 206
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
        TabOrder = 25
      end
      object tdbtnd_cxp: TDBEdit
        Left = 136
        Top = 320
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'par_doc_dev_compra'
        DataSource = dsContab
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 26
      end
      object tnd_cxp: TEdit
        Left = 215
        Top = 320
        Width = 206
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
        TabOrder = 27
      end
      object tDocLiq: TEdit
        Left = 215
        Top = 344
        Width = 206
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
        TabOrder = 28
      end
      object tDocCond: TEdit
        Left = 215
        Top = 368
        Width = 206
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
        TabOrder = 29
      end
      object tCtaInvent: TEdit
        Left = 215
        Top = 392
        Width = 206
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
        TabOrder = 30
      end
      object tCtaCosto: TEdit
        Left = 215
        Top = 416
        Width = 206
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
        TabOrder = 31
      end
      object tCtaItbis: TEdit
        Left = 215
        Top = 440
        Width = 206
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
        TabOrder = 32
      end
      object tCtaItbisComp: TEdit
        Left = 215
        Top = 464
        Width = 206
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
        TabOrder = 33
      end
      object tCtaDesc: TEdit
        Left = 215
        Top = 488
        Width = 206
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
        TabOrder = 34
      end
      object tCtaDescComp: TEdit
        Left = 215
        Top = 512
        Width = 206
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
        TabOrder = 35
      end
      object tctaselectivoadv: TEdit
        Left = 215
        Top = 536
        Width = 206
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
        TabOrder = 36
      end
      object tselectivocon: TEdit
        Left = 215
        Top = 560
        Width = 206
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
        TabOrder = 37
      end
      object tctaSueldPag: TEdit
        Left = 215
        Top = 584
        Width = 206
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
        TabOrder = 38
      end
      object tctaprimacont: TEdit
        Left = 215
        Top = 608
        Width = 206
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
        TabOrder = 39
      end
      object tctagastodif: TEdit
        Left = 215
        Top = 632
        Width = 206
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
        TabOrder = 40
      end
      object tctaRGP: TEdit
        Left = 215
        Top = 656
        Width = 206
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
        TabOrder = 41
      end
      object tdbtDocLiq: TDBEdit
        Left = 136
        Top = 344
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'par_docliq'
        DataSource = dsContab
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 42
      end
      object tdbtDocCond: TDBEdit
        Left = 136
        Top = 368
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'par_doc_conduce'
        DataSource = dsContab
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 43
      end
      object tdbtCtaInvent: TDBEdit
        Left = 136
        Top = 392
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'PAR_CTAINVENT'
        DataSource = dsContab
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 44
      end
      object tdbtCtaCosto: TDBEdit
        Left = 136
        Top = 416
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'PAR_CTACOSTO'
        DataSource = dsContab
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 45
      end
      object tdbtCtaItbis: TDBEdit
        Left = 136
        Top = 440
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'PAR_CTAITBIS'
        DataSource = dsContab
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 46
      end
      object tdbtCtaItbisComp: TDBEdit
        Left = 136
        Top = 464
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'par_cta_itbis_compra'
        DataSource = dsContab
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 47
      end
      object tdbtCtaDesc: TDBEdit
        Left = 136
        Top = 488
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'PAR_CTADESC'
        DataSource = dsContab
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 48
      end
      object tdbtCtaDescComp: TDBEdit
        Left = 136
        Top = 512
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'PAR_CTADESCCOMP'
        DataSource = dsContab
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 49
      end
      object tdbtctaselectivoadv: TDBEdit
        Left = 136
        Top = 536
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'PAR_CTA_SELECTIVO_AD'
        DataSource = dsContab
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 50
      end
      object tdbtselectivocon: TDBEdit
        Left = 136
        Top = 560
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'PAR_CTA_SELECTIVO_CON'
        DataSource = dsContab
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 51
      end
      object tdbtctaSueldPag: TDBEdit
        Left = 136
        Top = 584
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'par_ctasueldopagar'
        DataSource = dsContab
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 52
      end
      object tdbtctaprimacont: TDBEdit
        Left = 136
        Top = 608
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'par_cta_prima'
        DataSource = dsContab
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 53
      end
      object tdbtctagastodif: TDBEdit
        Left = 136
        Top = 632
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'par_cta_ingreso_cambio'
        DataSource = dsContab
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 54
      end
      object tdbctaRGP: TDBEdit
        Left = 136
        Top = 656
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'par_provision_regalia'
        DataSource = dsContab
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 55
      end
      object tdbtctamerctrans: TDBEdit
        Left = 136
        Top = 680
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'par_cta_mercancia_transito'
        DataSource = dsContab
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 56
      end
      object tctamerctrans: TEdit
        Left = 215
        Top = 680
        Width = 206
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
        TabOrder = 57
      end
      object tctaingcobint: TEdit
        Left = 215
        Top = 704
        Width = 206
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
        TabOrder = 58
      end
      object tctaretitbis: TEdit
        Left = 215
        Top = 728
        Width = 206
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
        TabOrder = 59
      end
      object tctaretisr: TEdit
        Left = 215
        Top = 752
        Width = 206
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
        TabOrder = 60
      end
      object tdbtctaingcobint: TDBEdit
        Left = 136
        Top = 704
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'par_cta_intereses'
        DataSource = dsContab
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 61
      end
      object tdbtctaretitbis: TDBEdit
        Left = 136
        Top = 728
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'par_cta_retencion_itbis'
        DataSource = dsContab
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 62
      end
      object tdbtctaretisr: TDBEdit
        Left = 136
        Top = 752
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'par_cta_retencion_isr'
        DataSource = dsContab
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 63
      end
      object edtctaproplegvent: TEdit
        Left = 215
        Top = 777
        Width = 206
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
        TabOrder = 64
      end
      object dbedtpar_ctaproplegvent: TDBEdit
        Left = 136
        Top = 776
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'par_ctaproplegvent'
        DataSource = dsContab
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 65
      end
      object dbedtpar_ctaotrosimp: TDBEdit
        Left = 136
        Top = 801
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'par_ctaotrosimp'
        DataSource = dsContab
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 66
      end
      object edttctaotrosimp: TEdit
        Left = 215
        Top = 801
        Width = 206
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
        TabOrder = 67
      end
      object dbedtpar_ctaproplegcomp: TDBEdit
        Left = 136
        Top = 847
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'par_ctaproplegcomp'
        DataSource = dsContab
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 68
      end
      object edtpar_ctaproplegcomp: TEdit
        Left = 215
        Top = 847
        Width = 206
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
        TabOrder = 69
      end
      object edtpar_ctafletecomp: TEdit
        Left = 215
        Top = 824
        Width = 206
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
        TabOrder = 70
      end
      object dbedtpar_ctafletecomp: TDBEdit
        Left = 136
        Top = 824
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'par_ctafletecomp'
        DataSource = dsContab
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 71
      end
      object dbedtpar_ctadevventas: TDBEdit
        Left = 136
        Top = 871
        Width = 49
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'par_ctadevventas'
        DataSource = dsContab
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 72
      end
      object Edt_ctadevventas: TEdit
        Left = 215
        Top = 871
        Width = 206
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
        TabOrder = 73
      end
    end
    object dbchkPAR_REPRESULTCOL3: TDBCheckBox
      Left = 8
      Top = 329
      Width = 201
      Height = 17
      Caption = 'Imprimir las cuentas en los anexos'
      DataField = 'PAR_REPANEXOSCTA'
      DataSource = dsContab
      TabOrder = 6
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object dbchkPAR_REPANEXOSCTA: TDBCheckBox
      Left = 8
      Top = 345
      Width = 217
      Height = 17
      Caption = 'Incluir inventario en estado de resultado'
      DataField = 'par_estado_resultado_inventario'
      DataSource = dsContab
      TabOrder = 7
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object dbchkpar_estado_resultado_inventario: TDBCheckBox
      Left = 8
      Top = 361
      Width = 201
      Height = 17
      Caption = 'Codificar por familia de productos'
      DataField = 'par_codifica_venta_familia'
      DataSource = dsContab
      TabOrder = 8
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object dbchkpar_estado_resultado_inventario1: TDBCheckBox
      Left = 8
      Top = 313
      Width = 185
      Height = 17
      Caption = 'NCF por Sucursal'
      DataField = 'par_NCF_Sucursal'
      DataSource = dsContab
      TabOrder = 9
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object tdbPAR_SUC_NCF: TDBEdit
      Left = 293
      Top = 315
      Width = 49
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PAR_SUC_NCF'
      DataSource = dsParametros
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnChange = tdbPAR_SUC_NCFChange
      OnKeyPress = tdbPAR_SUC_NCFKeyPress
    end
    object edSucursal: TEdit
      Left = 223
      Top = 336
      Width = 219
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
      TabOrder = 11
    end
    object dbrgrpPAR_CONT_BALANU_COMPROB: TDBRadioGroup
      Left = 1
      Top = 276
      Width = 445
      Height = 36
      Align = alTop
      Caption = 'Cierre Fiscal'
      Columns = 4
      DataField = 'PAR_CONT_BALANU_COMPROB'
      DataSource = dsContab
      Items.Strings = (
        '31 de marzo'
        '30 de junio'
        '30 de septiembre'
        '31 de diciembre')
      TabOrder = 12
      Values.Strings = (
        '0'
        '1'
        '2'
        '3')
    end
  end
  object pnBoleto: TPanel
    Left = 1500
    Top = 200
    Width = 437
    Height = 386
    TabOrder = 20
    Visible = False
    object Label151: TLabel
      Left = 600
      Top = 400
      Width = 178
      Height = 13
      Caption = 'Nombre impresora de boletos terretres'
      FocusControl = DBEdit126
    end
    object Label150: TLabel
      Left = 16
      Top = 24
      Width = 183
      Height = 13
      Caption = 'Nombre impresora de boletos terrestres'
    end
    object Label175: TLabel
      Left = 16
      Top = 72
      Width = 128
      Height = 13
      Caption = 'Cantidad recibos a imprimir:'
      FocusControl = DBEdit3
    end
    object DBEdit126: TDBEdit
      Left = 600
      Top = 400
      Width = 300
      Height = 21
      DataField = 'par_impresora_boleto'
      DataSource = dsParametros
      TabOrder = 0
    end
    object tdbpar_impresora_boleto: TDBEdit
      Left = 16
      Top = 40
      Width = 377
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'par_impresora_boleto'
      DataSource = dsParametros
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 160
      Top = 69
      Width = 73
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PAR_cantidadRecibosImprimir'
      DataSource = dsParametros
      TabOrder = 2
    end
  end
  object pnrhh: TPanel
    Left = 1200
    Top = 32
    Width = 430
    Height = 385
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
    object PageControl3: TPageControl
      Left = 1
      Top = 1
      Width = 428
      Height = 383
      ActivePage = bancos
      Align = alClient
      TabOrder = 0
      object nomina: TTabSheet
        Caption = 'Nomina'
        object Label138: TLabel
          Left = 16
          Top = 256
          Width = 135
          Height = 13
          Caption = 'Cajero para generar recibos'
        end
        object Label85: TLabel
          Left = 16
          Top = 16
          Width = 67
          Height = 13
          Caption = 'Salario minimo'
        end
        object Label147: TLabel
          Left = 16
          Top = 208
          Width = 143
          Height = 13
          Caption = 'Banco para generar la nomina'
        end
        object Label137: TLabel
          Left = 16
          Top = 232
          Width = 125
          Height = 13
          Caption = 'Caja para generar recibos'
        end
        object Label109: TLabel
          Left = 16
          Top = 184
          Width = 143
          Height = 13
          Caption = 'Tipo de cliente para empleado'
        end
        object Label108: TLabel
          Left = 16
          Top = 160
          Width = 111
          Height = 13
          Caption = 'Tipo de descuento CXC'
        end
        object Label107: TLabel
          Left = 16
          Top = 136
          Width = 110
          Height = 13
          Caption = 'Tipo de descuento AFP'
        end
        object Label106: TLabel
          Left = 16
          Top = 112
          Width = 108
          Height = 13
          Caption = 'Tipo de descuento ISR'
        end
        object Label105: TLabel
          Left = 16
          Top = 40
          Width = 107
          Height = 13
          Caption = 'Tipo de ingreso salario'
        end
        object Label104: TLabel
          Left = 16
          Top = 88
          Width = 109
          Height = 13
          Caption = 'Tipo de descuento SFS'
        end
        object Label103: TLabel
          Left = 16
          Top = 64
          Width = 116
          Height = 13
          Caption = 'Tipo de descuento salud'
        end
        object DBLookupComboBox7: TDBLookupComboBox
          Left = 168
          Top = 184
          Width = 241
          Height = 21
          DataField = 'par_tipo_cliente_empleado'
          DataSource = dsParamRH
          KeyField = 'tcl_codigo'
          ListField = 'tcl_nombre'
          ListSource = dsTipoCliente
          TabOrder = 0
        end
        object DBLookupComboBox6: TDBLookupComboBox
          Left = 168
          Top = 160
          Width = 241
          Height = 21
          DataField = 'par_tipo_descuento_cxc'
          DataSource = dsParamRH
          KeyField = 'tde_codigo'
          ListField = 'tde_nombre'
          ListSource = dsTipoDesc
          TabOrder = 1
        end
        object DBLookupComboBox5: TDBLookupComboBox
          Left = 168
          Top = 136
          Width = 241
          Height = 21
          DataField = 'par_tipo_descuento_afp'
          DataSource = dsParamRH
          KeyField = 'tde_codigo'
          ListField = 'tde_nombre'
          ListSource = dsTipoDesc
          TabOrder = 2
        end
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 168
          Top = 112
          Width = 241
          Height = 21
          DataField = 'par_tipo_descuento_isr'
          DataSource = dsParamRH
          KeyField = 'tde_codigo'
          ListField = 'tde_nombre'
          ListSource = dsTipoDesc
          TabOrder = 3
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 168
          Top = 88
          Width = 241
          Height = 21
          DataField = 'par_tipo_descuento_sfs'
          DataSource = dsParamRH
          KeyField = 'tde_codigo'
          ListField = 'tde_nombre'
          ListSource = dsTipoDesc
          TabOrder = 4
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 168
          Top = 64
          Width = 241
          Height = 21
          DataField = 'par_tipo_descuento_salud'
          DataSource = dsParamRH
          KeyField = 'tde_codigo'
          ListField = 'tde_nombre'
          ListSource = dsTipoDesc
          TabOrder = 5
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 168
          Top = 40
          Width = 241
          Height = 21
          DataField = 'par_tipo_ingrerso_salario'
          DataSource = dsParamRH
          KeyField = 'tin_codigo'
          ListField = 'tin_nombre'
          ListSource = dsTipoIngreso
          TabOrder = 6
        end
        object DBEdit62: TDBEdit
          Left = 168
          Top = 16
          Width = 73
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'par_salario_minimo'
          DataSource = dsParamRH
          TabOrder = 7
        end
        object DBEdit123: TDBEdit
          Left = 168
          Top = 208
          Width = 73
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'par_banco'
          DataSource = dsParamRH
          TabOrder = 8
        end
        object DBEdit114: TDBEdit
          Left = 168
          Top = 256
          Width = 73
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'par_cajero'
          DataSource = dsParamRH
          TabOrder = 9
        end
        object DBEdit113: TDBEdit
          Left = 168
          Top = 232
          Width = 73
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'par_caja'
          DataSource = dsParamRH
          TabOrder = 10
        end
        object DBCheckBox56: TDBCheckBox
          Left = 16
          Top = 280
          Width = 193
          Height = 17
          Caption = 'Visualizar acumulado en los volantes'
          DataField = 'par_acumulado'
          DataSource = dsParamRH
          TabOrder = 11
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
      object bancos: TTabSheet
        Caption = 'Bancos'
        ImageIndex = 1
        object PageControl4: TPageControl
          Left = 0
          Top = 0
          Width = 420
          Height = 355
          ActivePage = Popular
          Align = alClient
          Style = tsFlatButtons
          TabOrder = 0
          object Popular: TTabSheet
            Caption = 'Popular'
            object Label152: TLabel
              Left = 1
              Top = 55
              Width = 227
              Height = 13
              Caption = 'N'#250'mero asignado a la compa'#241#237'a de 5 posiciones'
            end
            object Label153: TLabel
              Left = 1
              Top = 79
              Width = 195
              Height = 13
              Caption = 'Secuencia del header de siete posiciones'
            end
            object Label154: TLabel
              Left = 1
              Top = 103
              Width = 28
              Height = 13
              Caption = 'E-Mail'
            end
            object Label155: TLabel
              Left = 1
              Top = 127
              Width = 310
              Height = 62
              AutoSize = False
              Caption = 
                'El E-Mail enviado en este archivo es para recibir los resultados' +
                ' del proceso del archivo o los posibles errores que este present' +
                'e. Sugerencia, preferiblemente el correo electr'#243'nico del persona' +
                'l de Inform'#225'tica'
              WordWrap = True
            end
            object Label156: TLabel
              Left = 1
              Top = 193
              Width = 141
              Height = 13
              Caption = 'N'#250'mero Afiliaci'#243'n a CARDNET'
            end
            object Label157: TLabel
              Left = 1
              Top = 8
              Width = 98
              Height = 13
              Caption = 'Empresa ( Sucursal )'
            end
            object Label158: TLabel
              Left = 1
              Top = 31
              Width = 104
              Height = 13
              Caption = 'Codigo banco popular'
            end
            object DBEdit127: TDBEdit
              Left = 233
              Top = 55
              Width = 73
              Height = 21
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'par_rrhh_numero_asignado'
              DataSource = dsParamRH
              TabOrder = 0
            end
            object DBEdit128: TDBEdit
              Left = 233
              Top = 79
              Width = 73
              Height = 21
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'par_rrhh_secuencia_H'
              DataSource = dsParamRH
              TabOrder = 1
            end
            object DBEdit129: TDBEdit
              Left = 40
              Top = 103
              Width = 370
              Height = 21
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'par_rrhh_email'
              DataSource = dsParamRH
              TabOrder = 2
            end
            object DBEdit130: TDBEdit
              Left = 152
              Top = 191
              Width = 154
              Height = 21
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'par_rrhh_numeroafiliacion'
              DataSource = dsParamRH
              TabOrder = 3
            end
            object DBLookupComboBox8: TDBLookupComboBox
              Left = 108
              Top = 31
              Width = 289
              Height = 21
              DataField = 'par_rrhh_codigo_banco_popular'
              DataSource = dsParamRH
              KeyField = 'ban_codigo'
              ListField = 'ban_nombre1'
              ListSource = dsBancos
              TabOrder = 4
            end
            object DBLookupComboBox9: TDBLookupComboBox
              Left = 108
              Top = 8
              Width = 289
              Height = 21
              DataField = 'par_rrhh_suc_codigo_banco_popular'
              DataSource = dsParamRH
              KeyField = 'emp_codigo'
              ListField = 'emp_nombre'
              ListSource = dsEmp
              TabOrder = 5
            end
          end
          object Bhd: TTabSheet
            Caption = 'BHD'
            ImageIndex = 1
          end
          object BanResevas: TTabSheet
            Caption = 'BanResevas'
            ImageIndex = 2
          end
        end
      end
    end
  end
  object pnBusquedaProd: TPanel
    Left = 1500
    Top = 384
    Width = 417
    Height = 393
    TabOrder = 12
    object Label58: TLabel
      Left = 8
      Top = 16
      Width = 130
      Height = 13
      Caption = 'Campos Disponibles'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label63: TLabel
      Left = 200
      Top = 16
      Width = 148
      Height = 13
      Caption = 'Campos Seleccionados'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton5: TSpeedButton
      Left = 160
      Top = 40
      Width = 33
      Height = 22
      Caption = '>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton5Click
    end
    object SpeedButton10: TSpeedButton
      Left = 160
      Top = 64
      Width = 33
      Height = 22
      Caption = '<'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton10Click
    end
    object lCampos: TListBox
      Left = 8
      Top = 32
      Width = 145
      Height = 297
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 13
      Items.Strings = (
        'Cant/Empaque'
        'Codigo'
        'Color'
        'Costo'
        'Costo+Itbis'
        'CostoEmpaque'
        'CostoEmpaque+Itbis'
        'Departamento'
        'Existencia Emp'
        'Existencia Und'
        'Familia'
        'Itbis'
        'Marca'
        'Nombre del Producto'
        'Precio Minimo'
        'Precio Tasa'
        'Precio1'
        'Precio2'
        'Precio3'
        'Precio4'
        'Ref. Fabricante'
        'Ref. Original'
        'Suplidor'
        'Tipo (Nuevo, Usado)'
        'Ubicacion'
        'Unidad de Medida')
      ParentFont = False
      Sorted = True
      TabOrder = 0
    end
    object gCampos: TDBGrid
      Left = 200
      Top = 32
      Width = 209
      Height = 297
      DataSource = dsBusqueda
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgRowSelect, dgAlwaysShowSelection]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'BUS_CAMPO'
          Visible = True
        end>
    end
    object DBCheckBox45: TDBCheckBox
      Left = 8
      Top = 336
      Width = 137
      Height = 17
      Caption = 'Incluir % al inicio y final'
      DataField = 'par_busqueda_porciento'
      DataSource = dsParametros
      TabOrder = 2
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox52: TDBCheckBox
      Left = 8
      Top = 352
      Width = 233
      Height = 17
      Caption = 'Mantener el '#250'ltimo producto en la busqueda'
      DataField = 'par_busqueda_dejar_ultimo'
      DataSource = dsParametros
      TabOrder = 3
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object dbchkpar_busq_por_referencia: TDBCheckBox
      Left = 8
      Top = 368
      Width = 233
      Height = 17
      Caption = 'Busqueda por Referencia'
      DataField = 'par_busq_por_referencia'
      DataSource = dsParametros
      TabOrder = 4
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object pnClientes: TPanel
    Left = 1500
    Top = 0
    Width = 417
    Height = 409
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 21
    Visible = False
    object Label18: TLabel
      Left = 8
      Top = 169
      Width = 153
      Height = 13
      Caption = 'Condicion para un nuevo cliente'
    end
    object btCondicion: TSpeedButton
      Left = 206
      Top = 169
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
      OnClick = btCondicionClick
    end
    object Label19: TLabel
      Left = 8
      Top = 193
      Width = 106
      Height = 13
      Caption = 'L'#237'mite de cr'#233'dito inicial'
      FocusControl = DBEdit15
    end
    object Label125: TLabel
      Left = 282
      Top = 21
      Width = 80
      Height = 13
      Caption = 'Mora Dias Gracia'
      FocusControl = DBEdit77
    end
    object Label130: TLabel
      Left = 283
      Top = 42
      Width = 77
      Height = 13
      Caption = 'Mora Dia Aplicar'
      FocusControl = DBEdit77
    end
    object Label131: TLabel
      Left = 283
      Top = 64
      Width = 72
      Height = 13
      Caption = 'Porciento Mora'
      FocusControl = DBEdit77
    end
    object rbCodigoCliente: TDBRadioGroup
      Left = 16
      Top = 8
      Width = 257
      Height = 65
      Caption = 'C'#243'digo que se va a utilizar para las transacciones'
      DataField = 'PAR_CODIGOCLIENTE'
      DataSource = dsParametros
      Items.Strings = (
        'Interno'
        'Referencia del cliente')
      TabOrder = 0
      Values.Strings = (
        'I'
        'R')
    end
    object tCondi: TEdit
      Left = 232
      Top = 169
      Width = 169
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
      TabOrder = 1
    end
    object DBEdit14: TDBEdit
      Left = 168
      Top = 169
      Width = 33
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'CPA_CODIGOCLIENTE'
      DataSource = dsParametros
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit15: TDBEdit
      Left = 168
      Top = 193
      Width = 97
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PAR_LIMITEINICIAL'
      DataSource = dsParametros
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBCheckBox33: TDBCheckBox
      Left = 16
      Top = 80
      Width = 233
      Height = 17
      Caption = 'Igualar # telefono con referencia del Cliente'
      DataField = 'par_igualartelefonocliente'
      DataSource = dsParametros
      TabOrder = 4
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object GroupBox10: TGroupBox
      Left = 1
      Top = 214
      Width = 415
      Height = 106
      Caption = 'Club'
      TabOrder = 5
      object Label86: TLabel
        Left = 16
        Top = 16
        Width = 108
        Height = 13
        Caption = 'Monto por Cada Punto'
        FocusControl = DBEdit77
      end
      object Label87: TLabel
        Left = 16
        Top = 38
        Width = 276
        Height = 13
        Caption = 'Cantidad de Puntos Por Cada RD$100.00 para el Principal'
        FocusControl = DBEdit78
      end
      object Label88: TLabel
        Left = 16
        Top = 67
        Width = 298
        Height = 13
        Caption = 'Cantidad de Puntos Por Cada RD$100.00 para el Dependiente'
        FocusControl = DBEdit79
      end
      object DBEdit77: TDBEdit
        Left = 128
        Top = 12
        Width = 64
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'par_valor_punto'
        DataSource = dsParametros
        TabOrder = 0
      end
      object DBEdit78: TDBEdit
        Left = 304
        Top = 38
        Width = 64
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'par_punto_principal'
        DataSource = dsParametros
        TabOrder = 1
      end
      object DBEdit79: TDBEdit
        Left = 328
        Top = 64
        Width = 64
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'par_punto_depen'
        DataSource = dsParametros
        TabOrder = 2
      end
      object DBCheckBox54: TDBCheckBox
        Left = 16
        Top = 86
        Width = 209
        Height = 17
        Caption = 'Generar puntos para tickets de cr'#233'dito'
        DataField = 'par_genera_puntos_credito'
        DataSource = dsParametros
        TabOrder = 3
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
    end
    object DBCheckBox39: TDBCheckBox
      Left = 16
      Top = 96
      Width = 281
      Height = 17
      Caption = 'Permitir realizar pago mayor que el balance del cliente'
      DataField = 'par_pago_mayor_balance'
      DataSource = dsParametros
      TabOrder = 6
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object GroupBox15: TGroupBox
      Left = 0
      Top = 327
      Width = 177
      Height = 73
      Caption = 'Boletos'
      TabOrder = 7
      object Label116: TLabel
        Left = 16
        Top = 24
        Width = 63
        Height = 13
        Caption = 'Por cada $$$'
      end
      object Label117: TLabel
        Left = 88
        Top = 24
        Width = 73
        Height = 13
        Caption = 'Boletos a emitir'
      end
      object DBEdit92: TDBEdit
        Left = 16
        Top = 40
        Width = 65
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'par_boletos_monto'
        DataSource = dsParametros
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit93: TDBEdit
        Left = 88
        Top = 40
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'par_boletos_cantidad'
        DataSource = dsParametros
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object GroupBox16: TGroupBox
      Left = 184
      Top = 327
      Width = 177
      Height = 73
      Caption = 'Boletos patrocinador'
      TabOrder = 8
      object Label134: TLabel
        Left = 16
        Top = 24
        Width = 63
        Height = 13
        Caption = 'Por cada $$$'
      end
      object Label135: TLabel
        Left = 88
        Top = 24
        Width = 73
        Height = 13
        Caption = 'Boletos a emitir'
      end
      object DBEdit110: TDBEdit
        Left = 16
        Top = 40
        Width = 65
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'par_boletos_monto_patrocinador'
        DataSource = dsParametros
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit111: TDBEdit
        Left = 88
        Top = 40
        Width = 73
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'par_boletos_cantidad_patrocinador'
        DataSource = dsParametros
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object dbchkpar_imprimir_sin_detalle_RI: TDBCheckBox
      Left = 16
      Top = 112
      Width = 209
      Height = 17
      Caption = 'Imprimir Recibo de Ingreso sin detalle'
      DataField = 'par_imprimir_sin_detalle_RI'
      DataSource = dsParametros
      TabOrder = 9
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object SEdt_DiasGracia: TcxDBSpinEdit
      Left = 367
      Top = 16
      DataBinding.DataField = 'PAR_MORA_DIAS_GRACIA'
      DataBinding.DataSource = dsParametros
      TabOrder = 10
      Width = 43
    end
    object SEdt_DiasAplicar: TcxDBSpinEdit
      Left = 367
      Top = 40
      DataBinding.DataField = 'PAR_MORA_DIAS_APLICAR'
      DataBinding.DataSource = dsParametros
      TabOrder = 11
      Width = 43
    end
    object CEdt_PorcMora: TcxDBCurrencyEdit
      Left = 367
      Top = 62
      DataBinding.DataField = 'PAR_MORA_PORC'
      DataBinding.DataSource = dsParametros
      Properties.AssignedValues.EditFormat = True
      Properties.DisplayFormat = '#,0.00;(#,0.00)'
      TabOrder = 12
      Width = 41
    end
    object dbchkpar_imprimir_con_detalle_prod: TDBCheckBox
      Left = 16
      Top = 128
      Width = 280
      Height = 17
      Caption = 'Imprimir Recibo de Ingreso con detalle de productos'
      DataField = 'par_imprimir_con_detalle_prod'
      DataSource = dsParametros
      TabOrder = 13
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object dbchkPar_Envio_Rec_Correo: TDBCheckBox
      Left = 16
      Top = 144
      Width = 128
      Height = 17
      Caption = 'Enviar Correo Recibos '
      DataField = 'Par_Envio_Rec_Correo'
      DataSource = dsParametros
      TabOrder = 14
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object dbchkPar_Envio_Rec_Estadocta: TDBCheckBox
      Left = 152
      Top = 144
      Width = 185
      Height = 17
      Caption = 'Enviar Estado de Cta Recibos '
      DataField = 'Par_Envio_Rec_Estadocta'
      DataSource = dsParametros
      TabOrder = 15
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object pnConteo: TPanel
    Left = 1200
    Top = 24
    Width = 417
    Height = 385
    TabOrder = 22
    Visible = False
    object DBRadioGroup4: TDBRadioGroup
      Left = 8
      Top = 16
      Width = 273
      Height = 65
      Caption = 'Limpiar conteo f'#237'sico despues de haberlo procesado'
      DataField = 'PAR_CONTEOLIMPIA'
      DataSource = dsParametros
      Items.Strings = (
        'Si'
        'No')
      TabOrder = 0
      Values.Strings = (
        'S'
        'N')
    end
    object DBRadioGroup19: TDBRadioGroup
      Left = 8
      Top = 88
      Width = 273
      Height = 81
      Caption = 'Procesar solo las cantidades que se contaron'
      DataField = 'PAR_FISICOSOLOLLENO'
      DataSource = dsParametros
      Items.Strings = (
        'Si'
        'No')
      TabOrder = 1
      Values.Strings = (
        'True'
        'False')
    end
  end
  object pnBarra: TPanel
    Left = 1500
    Top = 40
    Width = 417
    Height = 385
    TabOrder = 23
    object Label48: TLabel
      Left = 8
      Top = 106
      Width = 131
      Height = 13
      Caption = '1ra. L'#237'nea de programaci'#243'n'
      FocusControl = DBEdit41
    end
    object Label49: TLabel
      Left = 8
      Top = 128
      Width = 134
      Height = 13
      Caption = '2da. L'#237'nea de programaci'#243'n'
      FocusControl = DBEdit41
    end
    object Label50: TLabel
      Left = 8
      Top = 150
      Width = 131
      Height = 13
      Caption = '3ra. L'#237'nea de programaci'#243'n'
      FocusControl = DBEdit41
    end
    object Label51: TLabel
      Left = 8
      Top = 172
      Width = 131
      Height = 13
      Caption = '4ta. L'#237'nea de programaci'#243'n'
      FocusControl = DBEdit41
    end
    object Label52: TLabel
      Left = 8
      Top = 194
      Width = 131
      Height = 13
      Caption = '5ta. L'#237'nea de programaci'#243'n'
      FocusControl = DBEdit41
    end
    object Label89: TLabel
      Left = 8
      Top = 40
      Width = 127
      Height = 13
      Caption = 'Encabezado de la etiqueta'
      FocusControl = DBEdit41
    end
    object Label140: TLabel
      Left = 8
      Top = 218
      Width = 131
      Height = 13
      Caption = '6ta. L'#237'nea de programaci'#243'n'
      FocusControl = DBEdit41
    end
    object Label141: TLabel
      Left = 8
      Top = 242
      Width = 136
      Height = 13
      Caption = '7ma. L'#237'nea de programaci'#243'n'
      FocusControl = DBEdit41
    end
    object DBCheckBox4: TDBCheckBox
      Left = 8
      Top = 8
      Width = 233
      Height = 17
      Caption = 'Imprimir c'#243'digo de barra al crear el producto'
      DataField = 'PAR_IMPCODIGOBARRA'
      DataSource = dsParametros
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBEdit41: TDBEdit
      Left = 152
      Top = 106
      Width = 257
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PAR_TEXTOBARRA1'
      DataSource = dsParametros
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit42: TDBEdit
      Left = 152
      Top = 128
      Width = 137
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PAR_TEXTOBARRA2'
      DataSource = dsParametros
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit43: TDBEdit
      Left = 152
      Top = 150
      Width = 257
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PAR_TEXTOBARRA3'
      DataSource = dsParametros
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DBEdit45: TDBEdit
      Left = 152
      Top = 194
      Width = 137
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PAR_TEXTOBARRA5'
      DataSource = dsParametros
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object DBComboBox1: TDBComboBox
      Left = 296
      Top = 194
      Width = 113
      Height = 21
      Style = csDropDownList
      BevelKind = bkFlat
      DataField = 'PAR_OPC5TALINEA'
      DataSource = dsParametros
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 13
      Items.Strings = (
        'Precio1'
        'Precio2'
        'Precio3'
        'Precio4'
        'Ref. Original'
        'Ref. Fabircante'
        'Clave de Precio'
        'Clave de Costo'
        '')
      ParentFont = False
      TabOrder = 8
    end
    object DBEdit44: TDBEdit
      Left = 152
      Top = 172
      Width = 257
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PAR_TEXTOBARRA4'
      DataSource = dsParametros
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object DBComboBox2: TDBComboBox
      Left = 296
      Top = 130
      Width = 113
      Height = 21
      BevelKind = bkFlat
      DataField = 'PAR_OPC1RALINEA'
      DataSource = dsParametros
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 13
      Items.Strings = (
        'Precio1'
        'Precio2'
        'Precio3'
        'Precio4'
        'Ref. Original'
        'Ref. Fabircante'
        'Clave de Precio'
        'Clave de Costo'
        'Telefono')
      ParentFont = False
      TabOrder = 3
    end
    object BitBtn2: TBitBtn
      Left = 256
      Top = 352
      Width = 155
      Height = 25
      Caption = 'Traer valores predeterminados'
      TabOrder = 11
      OnClick = BitBtn2Click
    end
    object DBMemo1: TDBMemo
      Left = 152
      Top = 40
      Width = 257
      Height = 65
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'par_barra_header'
      DataSource = dsParametros
      TabOrder = 1
    end
    object DBEdit116: TDBEdit
      Left = 152
      Top = 218
      Width = 137
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PAR_TEXTOBARRA6'
      DataSource = dsParametros
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object DBEdit117: TDBEdit
      Left = 152
      Top = 242
      Width = 137
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'par_textobarra7'
      DataSource = dsParametros
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object dbchkPAR_IMPCODBARRAFAM: TDBCheckBox
      Left = 256
      Top = 8
      Width = 105
      Height = 17
      Caption = 'Formato Familiar'
      DataField = 'PAR_IMPCODBARRAFAM'
      DataSource = dsParametros
      TabOrder = 12
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object pnFactura: TPanel
    Left = 100
    Top = 10
    Width = 417
    Height = 389
    TabOrder = 24
    Visible = False
    object btVendedor: TSpeedButton
      Left = 172
      Top = 299
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
      OnClick = btVendedorClick
    end
    object Label12: TLabel
      Left = 16
      Top = 299
      Width = 101
      Height = 13
      Caption = 'Tipo de factura inicial'
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 237
      Width = 122
      Height = 59
      Caption = 'Anular factura'
      TabOrder = 0
      object Label10: TLabel
        Left = 4
        Top = 33
        Width = 66
        Height = 13
        Caption = 'Limite de d'#237'as'
      end
      object DBCheckBox12: TDBCheckBox
        Left = 4
        Top = 16
        Width = 97
        Height = 17
        Caption = 'Permitir anular'
        DataField = 'PAR_FACANULA'
        DataSource = dsParametros
        TabOrder = 0
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBEdit9: TDBEdit
        Left = 76
        Top = 33
        Width = 41
        Height = 22
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'PAR_FACDIASANULA'
        DataSource = dsParametros
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object GroupBox2: TGroupBox
      Left = 141
      Top = 237
      Width = 121
      Height = 59
      Caption = 'Modificar factura'
      TabOrder = 1
      object Label11: TLabel
        Left = 3
        Top = 35
        Width = 66
        Height = 13
        Caption = 'Limite de d'#237'as'
      end
      object DBCheckBox13: TDBCheckBox
        Left = 3
        Top = 16
        Width = 97
        Height = 17
        Caption = 'Permitir modificar'
        DataField = 'PAR_FACMODIFICA'
        DataSource = dsParametros
        TabOrder = 0
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBEdit10: TDBEdit
        Left = 75
        Top = 35
        Width = 41
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'PAR_FACDIASMODIFICA'
        DataSource = dsParametros
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object DBCheckBox15: TDBCheckBox
      Left = 16
      Top = 21
      Width = 145
      Height = 17
      Caption = 'Guardar factura temporal'
      DataField = 'PAR_FACTEMPORAL'
      DataSource = dsParametros
      TabOrder = 2
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox16: TDBCheckBox
      Left = 16
      Top = 37
      Width = 177
      Height = 17
      Caption = 'Seleccionar precio en la factura'
      DataField = 'PAR_FACSELPRECIO'
      DataSource = dsParametros
      TabOrder = 3
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object tTipo: TEdit
      Left = 197
      Top = 299
      Width = 180
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
    object DBCheckBox17: TDBCheckBox
      Left = 16
      Top = 5
      Width = 145
      Height = 17
      Caption = 'Verificar l'#237'mite del cliente'
      DataField = 'PAR_FACDISPONIBLE'
      DataSource = dsParametros
      TabOrder = 5
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBEdit13: TDBEdit
      Left = 128
      Top = 299
      Width = 41
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PAR_TFACODIGO'
      DataSource = dsParametros
      TabOrder = 6
    end
    object GroupBox5: TGroupBox
      Left = 16
      Top = 317
      Width = 177
      Height = 65
      Caption = 'Horario para el grupo A'
      TabOrder = 7
      object Label5: TLabel
        Left = 16
        Top = 16
        Width = 31
        Height = 13
        Caption = 'Desde'
      end
      object Label22: TLabel
        Left = 19
        Top = 40
        Width = 28
        Height = 13
        Caption = 'Hasta'
      end
      object aHora1: TDateTimePicker
        Left = 64
        Top = 16
        Width = 105
        Height = 21
        Date = 37643.920979664400000000
        Time = 37643.920979664400000000
        ShowCheckbox = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Kind = dtkTime
        ParentFont = False
        TabOrder = 0
      end
      object ahora2: TDateTimePicker
        Left = 64
        Top = 40
        Width = 105
        Height = 21
        Date = 37643.921928136600000000
        Time = 37643.921928136600000000
        ShowCheckbox = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Kind = dtkTime
        ParentFont = False
        TabOrder = 1
      end
    end
    object GroupBox6: TGroupBox
      Left = 200
      Top = 320
      Width = 177
      Height = 65
      Caption = 'Horario para el grupo B'
      TabOrder = 8
      object Label23: TLabel
        Left = 16
        Top = 16
        Width = 31
        Height = 13
        Caption = 'Desde'
      end
      object Label24: TLabel
        Left = 19
        Top = 40
        Width = 28
        Height = 13
        Caption = 'Hasta'
      end
      object bhora1: TDateTimePicker
        Left = 64
        Top = 16
        Width = 105
        Height = 21
        Date = 37643.922479050910000000
        Time = 37643.922479050910000000
        ShowCheckbox = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Kind = dtkTime
        ParentFont = False
        TabOrder = 0
      end
      object bhora2: TDateTimePicker
        Left = 64
        Top = 40
        Width = 105
        Height = 21
        Date = 37643.922777743100000000
        Time = 37643.922777743100000000
        ShowCheckbox = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Kind = dtkTime
        ParentFont = False
        TabOrder = 1
      end
    end
    object DBCheckBox8: TDBCheckBox
      Left = 16
      Top = 53
      Width = 177
      Height = 17
      Caption = 'Modificar el precio en la factura'
      DataField = 'PAR_FACMODPRECIO'
      DataSource = dsParametros
      TabOrder = 9
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox7: TDBCheckBox
      Left = 16
      Top = 69
      Width = 193
      Height = 17
      Caption = 'Nueva l'#237'nea al facturar un producto'
      DataField = 'PAR_FACBAJARLINEA'
      DataSource = dsParametros
      TabOrder = 10
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox24: TDBCheckBox
      Left = 16
      Top = 85
      Width = 209
      Height = 17
      Caption = 'Permitir repetir productos en la factura'
      DataField = 'PAR_FACREPITEPROD'
      DataSource = dsParametros
      TabOrder = 11
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox26: TDBCheckBox
      Left = 16
      Top = 101
      Width = 161
      Height = 17
      Caption = 'Comenzar a facturar con itbis'
      DataField = 'PAR_FACCONITBIS'
      DataSource = dsParametros
      TabOrder = 12
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object GroupBox9: TGroupBox
      Left = 232
      Top = 70
      Width = 161
      Height = 81
      Caption = 'Facturas a domicilio'
      TabOrder = 13
      object Label81: TLabel
        Left = 8
        Top = 34
        Width = 30
        Height = 13
        Caption = 'Monto'
      end
      object Label82: TLabel
        Left = 8
        Top = 57
        Width = 32
        Height = 13
        Caption = 'Copias'
      end
      object DBCheckBox32: TDBCheckBox
        Left = 8
        Top = 14
        Width = 144
        Height = 17
        Caption = 'Realiza facturas a domicilio'
        DataField = 'par_domicilio'
        DataSource = dsParametros
        TabOrder = 0
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBEdit72: TDBEdit
        Left = 48
        Top = 31
        Width = 57
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'par_monto_domicilio'
        DataSource = dsParametros
        TabOrder = 1
      end
      object DBEdit73: TDBEdit
        Left = 48
        Top = 54
        Width = 57
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'par_copias_domicilio'
        DataSource = dsParametros
        TabOrder = 2
      end
    end
    object DBCheckBox35: TDBCheckBox
      Left = 16
      Top = 117
      Width = 161
      Height = 17
      Caption = 'Visualizar oferta en la factura'
      DataField = 'par_fac_oferta'
      DataSource = dsParametros
      TabOrder = 14
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox38: TDBCheckBox
      Left = 16
      Top = 133
      Width = 161
      Height = 17
      Caption = 'Modificar fecha en la factura'
      DataField = 'par_modifica_fecha_factura'
      DataSource = dsParametros
      TabOrder = 15
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox40: TDBCheckBox
      Left = 16
      Top = 149
      Width = 137
      Height = 17
      Caption = 'El cajero puede cuadrar'
      DataField = 'par_usuario_cuadra'
      DataSource = dsParametros
      TabOrder = 16
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox42: TDBCheckBox
      Left = 16
      Top = 165
      Width = 209
      Height = 17
      Caption = 'Visualizar % de descuento'
      DataField = 'par_visualizadesc'
      DataSource = dsParametros
      TabOrder = 17
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox43: TDBCheckBox
      Left = 16
      Top = 181
      Width = 209
      Height = 17
      Caption = 'Visualizar monto selectivo en la factura'
      DataField = 'par_visualiza_selectivo'
      DataSource = dsParametros
      TabOrder = 18
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox44: TDBCheckBox
      Left = 16
      Top = 197
      Width = 209
      Height = 17
      Caption = 'Colocar cantidad primero, para facturar'
      DataField = 'par_cantidad_primero'
      DataSource = dsParametros
      TabOrder = 19
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox49: TDBCheckBox
      Left = 232
      Top = 5
      Width = 169
      Height = 17
      Caption = 'Visualizar cantidad x empaque'
      DataField = 'par_visualizar_cant_empaque'
      DataSource = dsParametros
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 20
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox50: TDBCheckBox
      Left = 232
      Top = 21
      Width = 153
      Height = 17
      Caption = 'Imprimir c'#225'lculo x empaque'
      DataField = 'par_imprimir_calculo_empaque'
      DataSource = dsParametros
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 21
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox59: TDBCheckBox
      Left = 232
      Top = 37
      Width = 170
      Height = 17
      Caption = 'Puede realizar factura en cero'
      DataField = 'par_facturarcero'
      DataSource = dsParametros
      TabOrder = 22
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object grp1: TGroupBox
      Left = 263
      Top = 149
      Width = 128
      Height = 150
      Caption = 'Abrir Caja'
      TabOrder = 23
      object LB_1: TLabel
        Left = 11
        Top = 79
        Width = 57
        Height = 13
        Caption = 'Codigo Caja'
      end
      object LB_2: TLabel
        Left = 10
        Top = 124
        Width = 34
        Height = 13
        Caption = 'Puerto:'
        FocusControl = tdbpuerto_display
      end
      object RG_PAR_CAJA: TDBRadioGroup
        Left = 8
        Top = 14
        Width = 105
        Height = 33
        Caption = 'Caja registradora'
        Columns = 2
        DataField = 'PAR_CAJA'
        DataSource = dsParametros
        Items.Strings = (
          'Si'
          'No')
        TabOrder = 0
        Values.Strings = (
          'S'
          'N')
      end
      object btn1: TBitBtn
        Left = 8
        Top = 48
        Width = 105
        Height = 25
        Caption = 'Abrir Caja'
        TabOrder = 1
        OnClick = btn1Click
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888888070888888888880707770088888807088777777088780888FF7777
          77787888F8F87777777878F8F0888777777878F0880888777778788808808F87
          77788788808F777F777888788F77870F7778888707870FFFFF788888870FFFFF
          FF7888887FFFFFFF7888888887FFFF7888888888888778888888}
      end
      object tdbpuerto_display: TDBEdit
        Left = 47
        Top = 120
        Width = 73
        Height = 21
        AutoSize = False
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'PAR_PUERTO_ABRE_CAJA'
        DataSource = dsParametros
        TabOrder = 2
      end
      object dbcbbPAR_CODIGO_ABRE_CAJA: TDBComboBox
        Left = 8
        Top = 96
        Width = 115
        Height = 21
        DataField = 'PAR_CODIGO_ABRE_CAJA'
        DataSource = dsParametros
        ItemHeight = 13
        Items.Strings = (
          'TMU'
          'Star'
          'Termica')
        TabOrder = 3
      end
    end
    object dbchkpar_cantidad_primero: TDBCheckBox
      Left = 16
      Top = 213
      Width = 209
      Height = 17
      Caption = 'Busqueda Incrementada'
      DataField = 'par_busq_incrementada'
      DataSource = dsParametros
      TabOrder = 24
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox67: TDBCheckBox
      Left = 160
      Top = 213
      Width = 105
      Height = 17
      Caption = 'Multimoneda'
      DataField = 'par_mostrarfacturadolares'
      DataSource = dsParametros
      TabOrder = 25
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox71: TDBCheckBox
      Left = 232
      Top = 52
      Width = 170
      Height = 17
      Caption = 'Servicio de construcci'#243'n '
      DataField = 'servicio_construccion'
      DataSource = dsParametros
      TabOrder = 26
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object pnAntiguedad: TPanel
    Left = 1200
    Top = 48
    Width = 417
    Height = 385
    TabOrder = 25
    Visible = False
    object Label14: TLabel
      Left = 8
      Top = 16
      Width = 185
      Height = 28
      AutoSize = False
      Caption = 'Configuraci'#243'n de las columnas de antiguedad de saldo de clientes'
      WordWrap = True
    end
    object Label15: TLabel
      Left = 8
      Top = 144
      Width = 185
      Height = 28
      AutoSize = False
      Caption = 
        'Configuraci'#243'n de las columnas de antiguedad de saldo de proveedo' +
        'res'
      WordWrap = True
    end
    object GridAntigCli: TStringGrid
      Left = 8
      Top = 48
      Width = 278
      Height = 89
      ColCount = 3
      DefaultColWidth = 90
      DefaultRowHeight = 16
      FixedCols = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
      ParentFont = False
      ScrollBars = ssNone
      TabOrder = 0
    end
    object GridAntigProv: TStringGrid
      Left = 8
      Top = 176
      Width = 278
      Height = 89
      ColCount = 3
      DefaultColWidth = 90
      DefaultRowHeight = 16
      FixedCols = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
      ParentFont = False
      ScrollBars = ssNone
      TabOrder = 1
    end
  end
  object pnEstadoCosto: TPanel
    Left = 1500
    Top = 8
    Width = 417
    Height = 385
    TabOrder = 26
    object Label32: TLabel
      Left = 9
      Top = 108
      Width = 106
      Height = 13
      Caption = 'Productos Terminados'
      FocusControl = DBEdit56
    end
    object SpeedButton4: TSpeedButton
      Left = 174
      Top = 108
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
      OnClick = SpeedButton4Click
    end
    object Label59: TLabel
      Left = 9
      Top = 12
      Width = 105
      Height = 13
      Caption = 'Productos en Proceso'
      FocusControl = DBEdit52
    end
    object SpeedButton6: TSpeedButton
      Left = 174
      Top = 12
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
      OnClick = SpeedButton6Click
    end
    object Label60: TLabel
      Left = 9
      Top = 36
      Width = 64
      Height = 13
      Caption = 'Materia Prima'
      FocusControl = DBEdit53
    end
    object SpeedButton7: TSpeedButton
      Left = 174
      Top = 36
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
      OnClick = SpeedButton7Click
    end
    object Label61: TLabel
      Left = 9
      Top = 60
      Width = 64
      Height = 13
      Caption = 'Labor Directa'
      FocusControl = DBEdit54
    end
    object SpeedButton8: TSpeedButton
      Left = 174
      Top = 60
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
      OnClick = SpeedButton8Click
    end
    object Label62: TLabel
      Left = 9
      Top = 84
      Width = 81
      Height = 13
      Caption = 'Costos Indirectos'
      FocusControl = DBEdit55
    end
    object SpeedButton9: TSpeedButton
      Left = 174
      Top = 84
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
      OnClick = SpeedButton9Click
    end
    object DBEdit56: TDBEdit
      Left = 120
      Top = 108
      Width = 49
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PAR_CTAPRODTERMINADOS'
      DataSource = dsContab
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object tCtaTerminados: TEdit
      Left = 199
      Top = 108
      Width = 202
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
    object DBEdit52: TDBEdit
      Left = 120
      Top = 12
      Width = 49
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PAR_CTAPRODPROCESO'
      DataSource = dsContab
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object tCtaProceso: TEdit
      Left = 199
      Top = 12
      Width = 202
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
    object DBEdit53: TDBEdit
      Left = 120
      Top = 36
      Width = 49
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PAR_CTAMATERIAPRIMA'
      DataSource = dsContab
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object tCtaPrima: TEdit
      Left = 199
      Top = 36
      Width = 202
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
    object DBEdit54: TDBEdit
      Left = 120
      Top = 60
      Width = 49
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PAR_CTALABORDIRECTA'
      DataSource = dsContab
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object tCtaLabor: TEdit
      Left = 199
      Top = 60
      Width = 202
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
    object DBEdit55: TDBEdit
      Left = 120
      Top = 84
      Width = 49
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PAR_CTACOSTOSINDIRECTOS'
      DataSource = dsContab
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object tCtaIndirec: TEdit
      Left = 199
      Top = 84
      Width = 202
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
  end
  object pnAtrasos: TPanel
    Left = 1500
    Top = 336
    Width = 417
    Height = 385
    TabOrder = 27
    object DBGrid_1: TDBGrid
      Left = 12
      Top = 48
      Width = 397
      Height = 177
      Ctl3D = False
      DataSource = DS_ParamAtraso
      ParentCtl3D = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Parametro'
          Width = 160
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Desde'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Hasta'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Codigo'
          Width = 50
          Visible = True
        end>
    end
    object btnCancelar: TBitBtn
      Left = 305
      Top = 2
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      Enabled = False
      TabOrder = 1
      OnClick = btnCancelarClick
      Glyph.Data = {
        EE000000424DEE0000000000000076000000280000000F0000000F0000000100
        04000000000078000000130B0000130B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333339999933
        3330333999999999333033993370739993303999930003399930393999707333
        9930993399933333399099333990333339909933337073333990993333101933
        3990993333000993399039933300099939303999330003999930339993707339
        933033399999999933303333399999333330}
    end
    object btnEliminar: TBitBtn
      Left = 230
      Top = 2
      Width = 75
      Height = 25
      Caption = 'E&liminar'
      TabOrder = 2
      OnClick = btnEliminarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
        305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
        005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
        B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
        B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
        B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
        B0557777FF577777F7F500000E055550805577777F7555575755500000555555
        05555777775555557F5555000555555505555577755555557555}
      NumGlyphs = 2
    end
    object btnGrabar: TBitBtn
      Left = 153
      Top = 2
      Width = 75
      Height = 25
      Caption = '&Grabar'
      Enabled = False
      TabOrder = 3
      OnClick = btnGrabarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
    end
    object btnEditar: TBitBtn
      Left = 78
      Top = 2
      Width = 75
      Height = 25
      Caption = '&Editar'
      TabOrder = 4
      OnClick = btnEditarClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        00003333330FFFFFFFF000300000FF0F00F0E00BFBFB0FFFFFF0E0BFBF000FFF
        F0F0E0FBFBFBF0F00FF0E0BFBF00000B0FF0E0FBFBFBFBF0FFF0E0BF0000000F
        FFF0000BFB00B0FF00F03330000B0FFFFFF0333330B0FFFF000033330B0FF00F
        0FF03330B00FFFFF0F033309030FFFFF00333330330000000333}
    end
    object btnNuevo: TBitBtn
      Left = 2
      Top = 2
      Width = 75
      Height = 25
      Caption = '&Nuevo'
      TabOrder = 5
      OnClick = btnNuevoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
        0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
        33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      NumGlyphs = 2
    end
  end
  object pnFormatosImp: TPanel
    Left = 100
    Top = -50
    Width = 417
    Height = 380
    TabOrder = 28
    Visible = False
    object pcFormatosImpresion: TPageControl
      Left = 1
      Top = 1
      Width = 415
      Height = 378
      ActivePage = tbsFormatos
      Align = alClient
      TabOrder = 0
      object tbsFormatos: TTabSheet
        Caption = 'Formatos'
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 407
          Height = 350
          Align = alClient
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 0
          object Label68: TLabel
            Left = 6
            Top = 83
            Width = 31
            Height = 13
            Caption = 'Puerto'
          end
          object Label171: TLabel
            Left = 6
            Top = 120
            Width = 32
            Height = 26
            Caption = 'Puerto'#13#10'Envios'
          end
          object DBRadioGroup15: TDBRadioGroup
            Left = 4
            Top = 3
            Width = 95
            Height = 40
            Caption = 'Recibos de cobro'
            DataField = 'PAR_FORMATORC'
            DataSource = dsParametros
            Items.Strings = (
              'POS'
              'Normal')
            TabOrder = 0
            Values.Strings = (
              '3'
              '2')
          end
          object DBRadioGroup24: TDBRadioGroup
            Left = 103
            Top = 3
            Width = 95
            Height = 40
            Caption = 'Recibos de ingreso'
            DataField = 'PAR_FORMATORI'
            DataSource = dsParametros
            Items.Strings = (
              'POS'
              'Normal')
            TabOrder = 1
            Values.Strings = (
              '3'
              '2')
          end
          object DBRadioGroup25: TDBRadioGroup
            Left = 206
            Top = 3
            Width = 95
            Height = 40
            Caption = 'Desembolsos'
            DataField = 'PAR_FORMATODES'
            DataSource = dsParametros
            Items.Strings = (
              'POS'
              'Normal')
            TabOrder = 2
            Values.Strings = (
              '3'
              '2')
          end
          object DBRadioGroup26: TDBRadioGroup
            Left = 303
            Top = 3
            Width = 95
            Height = 40
            Caption = 'Devoluciones'
            DataField = 'PAR_FORMATODEV'
            DataSource = dsParametros
            Items.Strings = (
              'POS'
              'Normal')
            TabOrder = 3
            Values.Strings = (
              '3'
              '2')
          end
          object DBRadioGroup27: TDBRadioGroup
            Left = 4
            Top = 42
            Width = 95
            Height = 40
            Caption = 'Cuadre del d'#237'a'
            DataField = 'PAR_FORMATOCUADRE'
            DataSource = dsParametros
            Items.Strings = (
              'POS'
              'Normal')
            TabOrder = 4
            Values.Strings = (
              '3'
              '2')
          end
          object DBRadioGroup28: TDBRadioGroup
            Left = 103
            Top = 42
            Width = 95
            Height = 40
            Caption = 'Notas de cr'#233'dito'
            DataField = 'PAR_FORMATONC'
            DataSource = dsParametros
            Items.Strings = (
              'POS'
              'Normal')
            TabOrder = 5
            Values.Strings = (
              '3'
              '2')
          end
          object DBRadioGroup29: TDBRadioGroup
            Left = 206
            Top = 42
            Width = 95
            Height = 40
            Caption = 'Notas de d'#233'bito'
            DataField = 'PAR_FORMATOND'
            DataSource = dsParametros
            Items.Strings = (
              'POS'
              'Normal')
            TabOrder = 6
            Values.Strings = (
              '3'
              '2')
          end
          object DBRadioGroup30: TDBRadioGroup
            Left = 302
            Top = 42
            Width = 95
            Height = 40
            Caption = 'Conduces'
            DataField = 'PAR_FORMATOCON'
            DataSource = dsParametros
            Items.Strings = (
              'POS'
              'Normal')
            TabOrder = 7
            Values.Strings = (
              '3'
              '2')
          end
          object DBCheckBox58: TDBCheckBox
            Left = 95
            Top = 84
            Width = 76
            Height = 36
            Caption = 'Preguntar por factura peque'#241'a'
            DataField = 'PAR_PREGUNTAPEQ'
            DataSource = dsParametros
            TabOrder = 8
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            WordWrap = True
          end
          object DBCheckBox63: TDBCheckBox
            Left = 172
            Top = 84
            Width = 133
            Height = 15
            Caption = 'Factura es Pre-Impresa'
            DataField = 'par_fac_preimpresa'
            DataSource = dsParametros
            TabOrder = 9
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            WordWrap = True
          end
          object DBComboBox9: TDBComboBox
            Left = 171
            Top = 101
            Width = 142
            Height = 21
            Style = csDropDownList
            DataField = 'par_formato_preimpreso'
            DataSource = dsParametros
            ItemHeight = 13
            Items.Strings = (
              'Construccion'
              'QRBelkis'
              'QRSoloAutos'
              'QRImpresosDuran'
              'QRMSConsulting'
              'QRBB'
              'QRThorton'
              'QRAgregados'
              'Grabado_Exento'
              'QClinico'
              'QRMadeco'
              'QRMateirosa'
              'Norma 201806 Normal'
              'Norma 201806 Tickets'
              'Sarita & Asociados'
              'Hotel'
              'SteelTec'
              'Cepinta'
              'Caceres&Equipos'
              'Emtraba'
              'FUNDGRUBEL')
            TabOrder = 10
          end
          object DBRadioGroup31: TDBRadioGroup
            Left = 315
            Top = 82
            Width = 81
            Height = 41
            Caption = 'Cotizaci'#243'n'
            DataField = 'PAR_FORMATOCOT'
            DataSource = dsParametros
            Items.Strings = (
              'Normal'
              'Elegante')
            TabOrder = 11
            Values.Strings = (
              '2'
              '4')
          end
          object GroupBox19: TGroupBox
            Left = 2
            Top = 144
            Width = 404
            Height = 44
            Caption = '[ Printer Fiscal por Defecto ]'
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 12
            object Label159: TLabel
              Left = 4
              Top = 10
              Width = 30
              Height = 13
              Caption = 'Marca'
            end
            object Label160: TLabel
              Left = 190
              Top = 10
              Width = 31
              Height = 13
              Caption = 'Puerto'
            end
            object Label161: TLabel
              Left = 271
              Top = 10
              Width = 47
              Height = 13
              Caption = 'Velocidad'
            end
            object Label162: TLabel
              Left = 345
              Top = 10
              Width = 32
              Height = 13
              Caption = 'Copias'
            end
            object DBEdit18: TDBEdit
              Left = 345
              Top = 21
              Width = 32
              Height = 22
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'tfa_copias'
              DataSource = dsTipo
              TabOrder = 0
            end
            object DBEdit19: TDBEdit
              Left = 271
              Top = 21
              Width = 72
              Height = 22
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'par_velocidad_Printer'
              DataSource = dsParametros
              TabOrder = 1
            end
            object DBLookupComboBox10: TDBLookupComboBox
              Left = 4
              Top = 22
              Width = 181
              Height = 19
              Ctl3D = False
              DataField = 'par_Marca_Printer'
              DataSource = dsParametros
              DropDownWidth = 325
              KeyField = 'IDPrinter'
              ListField = 'IDPrinter;Nombre;tipo'
              ListFieldIndex = 1
              ListSource = dsPrinters
              ParentCtl3D = False
              TabOrder = 2
            end
            object DBComboBox12: TDBComboBox
              Left = 190
              Top = 21
              Width = 80
              Height = 21
              Style = csDropDownList
              Ctl3D = False
              DataField = 'par_puerto_Printer'
              DataSource = dsParametros
              ItemHeight = 13
              Items.Strings = (
                'COM1'
                'COM2'
                'COM3'
                'COM4'
                'COM5'
                'COM6'
                'COM7'
                'COM8'
                'COM9'
                'COM10'
                'COM11'
                'COM12'
                'COM13'
                'COM14'
                'COM15'
                'LPT1'
                'LPT2'
                'LPT3'
                'LPT4'
                'LPT5')
              ParentCtl3D = False
              TabOrder = 3
            end
          end
          object GroupBox17: TGroupBox
            Left = 2
            Top = 188
            Width = 404
            Height = 145
            Caption = 'Facturas'
            TabOrder = 13
            object DBGrid7: TDBGrid
              Left = 2
              Top = 15
              Width = 188
              Height = 128
              Align = alLeft
              Color = clInfoBk
              DataSource = dsTipo
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'TFA_NOMBRE'
                  Title.Caption = 'Tipo de Factura'
                  Width = 173
                  Visible = True
                end>
            end
            object DBRadioGroup32: TDBRadioGroup
              Left = 192
              Top = 18
              Width = 206
              Height = 43
              Columns = 2
              DataField = 'TFA_FORMATOIMP'
              DataSource = dsTipo
              Items.Strings = (
                'POS'
                'Normal'
                'Elegante'
                '2 Columnas')
              TabOrder = 1
              Values.Strings = (
                '3'
                '2'
                '4'
                '5')
            end
            object DBCheckBox64: TDBCheckBox
              Left = 193
              Top = 7
              Width = 178
              Height = 14
              Caption = 'Totalizar al pie de la Factura'
              DataField = 'PAR_FACTOTALIZAPIE'
              DataSource = dsParametros
              TabOrder = 2
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              WordWrap = True
            end
            object sgFacturas: TStringGrid
              Left = 193
              Top = 62
              Width = 204
              Height = 79
              Color = clSilver
              ColCount = 2
              DefaultColWidth = 80
              DefaultRowHeight = 18
              FixedCols = 0
              RowCount = 8
              FixedRows = 0
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected]
              TabOrder = 3
              OnDrawCell = sgFacturasDrawCell
              OnSelectCell = sgFacturasSelectCell
              ColWidths = (
                119
                47)
            end
            object cbFacturas: TComboBox
              Left = 316
              Top = 64
              Width = 58
              Height = 21
              BevelKind = bkFlat
              Style = csDropDownList
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ItemHeight = 13
              ParentFont = False
              TabOrder = 4
              TabStop = False
              OnExit = cbFacturasExit
            end
          end
          object edpuerto: TEdit
            Left = 4
            Top = 96
            Width = 86
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            TabOrder = 14
            OnChange = edpuertoChange
          end
          object dbedtpar_puerto_envios: TDBEdit
            Left = 47
            Top = 124
            Width = 346
            Height = 18
            BevelKind = bkFlat
            BorderStyle = bsNone
            DataField = 'par_puerto_envios'
            DataSource = dsParametros
            TabOrder = 15
          end
        end
      end
      object tbsConfPrinter: TTabSheet
        Caption = 'Conf. Printers'
        ImageIndex = 1
        object GroupBox20: TGroupBox
          Left = 0
          Top = 154
          Width = 407
          Height = 196
          Align = alClient
          TabOrder = 0
          object DBGrid8: TDBGrid
            Left = 2
            Top = 15
            Width = 403
            Height = 179
            Align = alClient
            Ctl3D = False
            DataSource = dsPrinters
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgMultiSelect]
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'IDPrinter'
                Title.Caption = 'ID'
                Title.Color = clSilver
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 30
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Nombre'
                Title.Caption = 'NOMBRE'
                Title.Color = clSilver
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 210
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Tipo'
                Title.Caption = 'TIPO'
                Title.Color = clSilver
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 35
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Precioconitbis'
                Title.Caption = 'Precio con Itbis Inc.'
                Title.Color = clSilver
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 95
                Visible = True
              end>
          end
        end
        object GroupBox21: TGroupBox
          Left = 0
          Top = 49
          Width = 407
          Height = 105
          Align = alTop
          TabOrder = 1
          object Label163: TLabel
            Left = 8
            Top = 23
            Width = 11
            Height = 13
            Caption = 'ID'
          end
          object Label164: TLabel
            Left = 8
            Top = 45
            Width = 37
            Height = 13
            Caption = 'Nombre'
          end
          object Label165: TLabel
            Left = 8
            Top = 72
            Width = 21
            Height = 13
            Caption = 'Tipo'
          end
          object DBEdit20: TDBEdit
            Left = 64
            Top = 20
            Width = 73
            Height = 19
            TabStop = False
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'IDPrinter'
            DataSource = dsPrinters
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
          end
          object dbeNombre: TDBEdit
            Left = 64
            Top = 42
            Width = 289
            Height = 19
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'Nombre'
            DataSource = dsPrinters
            ParentCtl3D = False
            TabOrder = 1
          end
          object DBRadioGroup33: TDBRadioGroup
            Left = 64
            Top = 61
            Width = 173
            Height = 34
            Columns = 2
            DataField = 'Tipo'
            DataSource = dsPrinters
            Items.Strings = (
              'POS'
              'NORMAL')
            TabOrder = 2
            Values.Strings = (
              'P'
              'N')
          end
          object DBRadioGroup34: TDBRadioGroup
            Left = 240
            Top = 61
            Width = 115
            Height = 34
            Hint = 'El Itbis esta Incluido en el precio ?'
            Caption = ' Itbis Inc en Precio '
            Columns = 2
            DataField = 'Precioconitbis'
            DataSource = dsPrinters
            Items.Strings = (
              'SI'
              'NO')
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            Values.Strings = (
              'S'
              'N')
          end
        end
        object GroupBox23: TGroupBox
          Left = 0
          Top = 0
          Width = 407
          Height = 49
          Align = alTop
          TabOrder = 2
          object btnAnterior: TBitBtn
            Left = 2
            Top = 8
            Width = 47
            Height = 36
            Caption = 'Anterior'
            TabOrder = 0
            OnClick = btnAnteriorClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333333333333333333333333333333333333333333333333333333333
              3333333333333FF3333333333333003333333333333F77F33333333333009033
              333333333F7737F333333333009990333333333F773337FFFFFF330099999000
              00003F773333377777770099999999999990773FF33333FFFFF7330099999000
              000033773FF33777777733330099903333333333773FF7F33333333333009033
              33333333337737F3333333333333003333333333333377333333333333333333
              3333333333333333333333333333333333333333333333333333333333333333
              3333333333333333333333333333333333333333333333333333}
            Layout = blGlyphTop
            NumGlyphs = 2
          end
          object btnProximo: TBitBtn
            Left = 49
            Top = 8
            Width = 47
            Height = 36
            Caption = 'Pr'#243'ximo'
            TabOrder = 1
            OnClick = btnProximoClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333333333333333333333333333333333333333333333333333333333
              3333333333333333333333333333333333333333333FF3333333333333003333
              3333333333773FF3333333333309003333333333337F773FF333333333099900
              33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
              99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
              33333333337F3F77333333333309003333333333337F77333333333333003333
              3333333333773333333333333333333333333333333333333333333333333333
              3333333333333333333333333333333333333333333333333333}
            Layout = blGlyphTop
            NumGlyphs = 2
          end
          object btnInsertar: TBitBtn
            Left = 97
            Top = 8
            Width = 47
            Height = 36
            Caption = 'Insertar'
            TabOrder = 2
            OnClick = btnInsertarClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
              333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
              0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
              07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
              0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
              B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
              3BB33773333773333773B333333B3333333B7333333733333337}
            Layout = blGlyphTop
            NumGlyphs = 2
          end
          object btnEditarPrinter: TBitBtn
            Left = 144
            Top = 8
            Width = 47
            Height = 36
            Caption = 'Modificar'
            TabOrder = 3
            OnClick = btnEditarPrinterClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
              000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
              00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
              F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
              0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
              FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
              FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
              0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
              00333377737FFFFF773333303300000003333337337777777333}
            Layout = blGlyphTop
            NumGlyphs = 2
          end
          object btnBorrar: TBitBtn
            Left = 192
            Top = 8
            Width = 47
            Height = 36
            Caption = 'Eliminar'
            TabOrder = 4
            OnClick = btnBorrarClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333333333333333333333333FFF33FF333FFF339993370733
              999333777FF37FF377733339993000399933333777F777F77733333399970799
              93333333777F7377733333333999399933333333377737773333333333990993
              3333333333737F73333333333331013333333333333777FF3333333333910193
              333333333337773FF3333333399000993333333337377737FF33333399900099
              93333333773777377FF333399930003999333337773777F777FF339993370733
              9993337773337333777333333333333333333333333333333333333333333333
              3333333333333333333333333333333333333333333333333333}
            Layout = blGlyphTop
            NumGlyphs = 2
          end
          object btnCancelarPrinter: TBitBtn
            Left = 240
            Top = 8
            Width = 47
            Height = 36
            Caption = 'Cancelar'
            TabOrder = 5
            OnClick = btnCancelarPrinterClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
              3333333777333777FF3333993333339993333377FF3333377FF3399993333339
              993337777FF3333377F3393999333333993337F777FF333337FF993399933333
              399377F3777FF333377F993339993333399377F33777FF33377F993333999333
              399377F333777FF3377F993333399933399377F3333777FF377F993333339993
              399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
              99333773FF3333777733339993333339933333773FFFFFF77333333999999999
              3333333777333777333333333999993333333333377777333333}
            Layout = blGlyphTop
            NumGlyphs = 2
          end
          object btnGrabarPrinter: TBitBtn
            Left = 288
            Top = 8
            Width = 47
            Height = 36
            Caption = 'Grabar'
            TabOrder = 6
            OnClick = btnGrabarPrinterClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
              00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
              00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
              00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
              00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
              00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
              00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
              0003737FFFFFFFFF7F7330099999999900333777777777777733}
            Layout = blGlyphTop
            NumGlyphs = 2
          end
          object BitBtn15: TBitBtn
            Left = 336
            Top = 8
            Width = 47
            Height = 36
            Caption = 'Buscar'
            TabOrder = 7
            Layout = blGlyphTop
          end
        end
      end
      object tbsConfPrinterPC: TTabSheet
        Caption = 'Asigna Printer a PC'
        ImageIndex = 2
        object ToolBar2: TToolBar
          Left = 0
          Top = 0
          Width = 407
          Height = 40
          ButtonHeight = 36
          ButtonWidth = 50
          Caption = 'ToolBar1'
          Images = DM.ImgMant
          ShowCaptions = True
          TabOrder = 0
          object ToolButton9: TToolButton
            Left = 0
            Top = 2
            AutoSize = True
            Caption = 'Anterior'
            ImageIndex = 8
            OnClick = ToolButton9Click
          end
          object ToolButton10: TToolButton
            Left = 47
            Top = 2
            AutoSize = True
            Caption = 'Pr'#243'ximo'
            ImageIndex = 9
            OnClick = ToolButton10Click
          end
          object ToolButton11: TToolButton
            Left = 95
            Top = 2
            AutoSize = True
            Caption = 'Insertar'
            ImageIndex = 6
            OnClick = ToolButton11Click
          end
          object ToolButton12: TToolButton
            Left = 141
            Top = 2
            AutoSize = True
            Caption = 'Modificar'
            ImageIndex = 7
            OnClick = ToolButton12Click
          end
          object ToolButton13: TToolButton
            Left = 195
            Top = 2
            AutoSize = True
            Caption = 'Eliminar'
            ImageIndex = 1
            OnClick = ToolButton13Click
          end
          object ToolButton14: TToolButton
            Left = 242
            Top = 2
            Caption = 'Cancelar'
            ImageIndex = 3
            OnClick = ToolButton14Click
          end
          object ToolButton15: TToolButton
            Left = 292
            Top = 2
            AutoSize = True
            Caption = 'Grabar'
            ImageIndex = 2
            OnClick = ToolButton15Click
          end
          object ToolButton16: TToolButton
            Left = 335
            Top = 2
            AutoSize = True
            Caption = 'Buscar'
            ImageIndex = 4
          end
        end
        object GroupBox22: TGroupBox
          Left = 0
          Top = 40
          Width = 407
          Height = 127
          Align = alTop
          TabOrder = 1
          object Label166: TLabel
            Left = 8
            Top = 13
            Width = 54
            Height = 13
            Caption = 'Nombre PC'
          end
          object Label167: TLabel
            Left = 8
            Top = 34
            Width = 30
            Height = 13
            Caption = 'Printer'
          end
          object Label168: TLabel
            Left = 8
            Top = 78
            Width = 47
            Height = 13
            Caption = 'Velocidad'
          end
          object Label169: TLabel
            Left = 8
            Top = 56
            Width = 31
            Height = 13
            Caption = 'Puerto'
          end
          object Label170: TLabel
            Left = 8
            Top = 102
            Width = 27
            Height = 13
            Caption = 'Copia'
          end
          object pcname: TDBEdit
            Left = 66
            Top = 10
            Width = 239
            Height = 19
            AutoSize = False
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'Nombre_PC'
            DataSource = dsadoPrinterxPC
            ParentCtl3D = False
            TabOrder = 0
          end
          object DBEdit21: TDBEdit
            Left = 66
            Top = 75
            Width = 121
            Height = 19
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'Velocidad'
            DataSource = dsadoPrinterxPC
            ParentCtl3D = False
            TabOrder = 1
          end
          object dblPrinters: TDBLookupComboBox
            Left = 66
            Top = 31
            Width = 241
            Height = 19
            Ctl3D = False
            DataField = 'IDPrinter'
            DataSource = dsadoPrinterxPC
            DropDownWidth = 325
            KeyField = 'IDPrinter'
            ListField = 'IDPrinter;Nombre;tipo'
            ListFieldIndex = 1
            ListSource = dsPrinters
            ParentCtl3D = False
            TabOrder = 2
          end
          object dbcPuerto: TDBComboBox
            Left = 66
            Top = 52
            Width = 145
            Height = 21
            Style = csDropDownList
            Ctl3D = False
            DataField = 'Puerto'
            DataSource = dsadoPrinterxPC
            ItemHeight = 13
            Items.Strings = (
              'COM1'
              'COM2'
              'COM3'
              'COM4'
              'COM5'
              'COM6'
              'COM7'
              'COM8'
              'COM9'
              'COM10'
              'COM11'
              'COM12'
              'COM13'
              'COM14'
              'COM15'
              'LPT1'
              'LPT2'
              'LPT3'
              'LPT4'
              'LPT5')
            ParentCtl3D = False
            TabOrder = 3
          end
          object DBEdit22: TDBEdit
            Left = 66
            Top = 99
            Width = 39
            Height = 19
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'cntCopia'
            DataSource = dsadoPrinterxPC
            ParentCtl3D = False
            TabOrder = 4
          end
          object dbcSustituirCopia: TDBCheckBox
            Left = 114
            Top = 100
            Width = 133
            Height = 17
            Hint = 'Sustituir la copia de la impresora Epson'
            Alignment = taLeftJustify
            Caption = 'Sustituir Copia(EPSON)'
            DataField = 'sustiruir_copia'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            Visible = False
          end
        end
        object GroupBox24: TGroupBox
          Left = 0
          Top = 167
          Width = 407
          Height = 183
          Align = alClient
          TabOrder = 2
          object DBGrid9: TDBGrid
            Left = 2
            Top = 15
            Width = 403
            Height = 166
            Align = alClient
            Ctl3D = False
            DataSource = dsadoPrinterxPC
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgMultiSelect]
            ParentCtl3D = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'Nombre_PC'
                Title.Caption = 'PC'
                Title.Color = clSilver
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 77
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PrinterName'
                Title.Caption = 'Printer'
                Title.Color = clSilver
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 160
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'Puerto'
                Title.Color = clSilver
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 44
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Velocidad'
                Title.Color = clSilver
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 61
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cntCopia'
                Title.Caption = 'Copia'
                Title.Color = clSilver
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 36
                Visible = True
              end>
          end
        end
      end
    end
  end
  object pnVerifone: TPanel
    Left = 1500
    Top = 8
    Width = 385
    Height = 385
    TabOrder = 29
    object pgc1: TPageControl
      Left = 1
      Top = 1
      Width = 383
      Height = 383
      ActivePage = tsAsignaVerifone
      Align = alClient
      TabOrder = 0
      object tsAsignaVerifone: TTabSheet
        Caption = 'Asigna Verifone'
        ImageIndex = 1
        object ToolBar1: TToolBar
          Left = 0
          Top = 0
          Width = 375
          Height = 40
          ButtonHeight = 36
          ButtonWidth = 50
          Caption = 'ToolBar1'
          Images = DM.ImgMant
          ShowCaptions = True
          TabOrder = 0
          object ToolButton1: TToolButton
            Left = 0
            Top = 2
            AutoSize = True
            Caption = 'Anterior'
            ImageIndex = 8
            OnClick = ToolButton1Click
          end
          object ToolButton2: TToolButton
            Left = 47
            Top = 2
            AutoSize = True
            Caption = 'Pr'#243'ximo'
            ImageIndex = 9
            OnClick = ToolButton2Click
          end
          object ToolButton3: TToolButton
            Left = 95
            Top = 2
            AutoSize = True
            Caption = 'Insertar'
            ImageIndex = 6
            OnClick = ToolButton3Click
          end
          object ToolButton4: TToolButton
            Left = 141
            Top = 2
            AutoSize = True
            Caption = 'Modificar'
            ImageIndex = 7
            OnClick = ToolButton4Click
          end
          object ToolButton5: TToolButton
            Left = 195
            Top = 2
            AutoSize = True
            Caption = 'Eliminar'
            ImageIndex = 1
            OnClick = ToolButton5Click
          end
          object ToolButton6: TToolButton
            Left = 242
            Top = 2
            Caption = 'Cancelar'
            ImageIndex = 3
            OnClick = ToolButton6Click
          end
          object ToolButton7: TToolButton
            Left = 292
            Top = 2
            AutoSize = True
            Caption = 'Grabar'
            ImageIndex = 2
            OnClick = ToolButton7Click
          end
        end
        object GroupBox28: TGroupBox
          Left = 0
          Top = 40
          Width = 375
          Height = 118
          Align = alTop
          TabOrder = 1
          object Label174: TLabel
            Left = 8
            Top = 13
            Width = 26
            Height = 13
            Caption = 'CAJA'
          end
          object Label177: TLabel
            Left = 8
            Top = 56
            Width = 55
            Height = 13
            Caption = 'Puerto Caja'
          end
          object Label176: TLabel
            Left = 8
            Top = 77
            Width = 56
            Height = 13
            Caption = 'Puerto POS'
          end
          object Label178: TLabel
            Left = 8
            Top = 98
            Width = 40
            Height = 13
            Caption = 'TimeOut'
          end
          object Label179: TLabel
            Left = 8
            Top = 35
            Width = 35
            Height = 13
            Caption = 'IP POS'
          end
          object DBEdit26: TDBEdit
            Left = 66
            Top = 10
            Width = 239
            Height = 19
            AutoSize = False
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'Caja'
            DataSource = ds_AsignaVerifione
            ParentCtl3D = False
            TabOrder = 0
          end
          object cxDBSpinEdit3: TcxDBSpinEdit
            Left = 66
            Top = 52
            DataBinding.DataField = 'PortCaja'
            DataBinding.DataSource = ds_AsignaVerifione
            Properties.AssignedValues.MinValue = True
            TabOrder = 2
            Width = 79
          end
          object cxDBSpinEdit4: TcxDBSpinEdit
            Left = 66
            Top = 73
            DataBinding.DataField = 'PortPOS'
            DataBinding.DataSource = ds_AsignaVerifione
            Properties.AssignedValues.MinValue = True
            TabOrder = 3
            Width = 79
          end
          object cxDBSpinEdit5: TcxDBSpinEdit
            Left = 67
            Top = 94
            DataBinding.DataField = 'TimeOut'
            DataBinding.DataSource = ds_AsignaVerifione
            Properties.AssignedValues.MinValue = True
            TabOrder = 4
            Width = 79
          end
          object DBEdit27: TDBEdit
            Left = 66
            Top = 32
            Width = 239
            Height = 19
            AutoSize = False
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'IP'
            DataSource = ds_AsignaVerifione
            ParentCtl3D = False
            TabOrder = 1
          end
        end
        object GroupBox29: TGroupBox
          Left = 0
          Top = 158
          Width = 375
          Height = 197
          Align = alClient
          TabOrder = 2
          object DBGrid11: TDBGrid
            Left = 2
            Top = 15
            Width = 371
            Height = 180
            Align = alClient
            Ctl3D = False
            DataSource = ds_AsignaVerifione
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgMultiSelect]
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'Caja'
                Title.Caption = 'CAJA'
                Title.Color = clSilver
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 91
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'IP'
                Title.Caption = 'IP POS'
                Title.Color = clSilver
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 109
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PortCaja'
                Title.Caption = 'Port Caja'
                Title.Color = clSilver
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 59
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PortPOS'
                Title.Caption = 'Port POS'
                Title.Color = clSilver
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 56
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TimeOut'
                Title.Color = clSilver
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 51
                Visible = True
              end>
          end
        end
      end
    end
  end
  object pntickets: TPanel
    Left = 100
    Top = 160
    Width = 417
    Height = 385
    TabOrder = 13
    object PageControl2: TPageControl
      Left = 1
      Top = 1
      Width = 415
      Height = 383
      ActivePage = TabSheet5
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object TabSheet5: TTabSheet
        Caption = 'Mensajes y NCF'
        object GroupBox8: TGroupBox
          Left = 0
          Top = 24
          Width = 401
          Height = 129
          Caption = 'Mensajes para el Ticket'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object DBEdit25: TDBEdit
            Left = 8
            Top = 24
            Width = 385
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            DataField = 'PAR_TKMENSAJE1'
            DataSource = dsParametros
            TabOrder = 0
          end
          object DBEdit51: TDBEdit
            Left = 8
            Top = 48
            Width = 385
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            DataField = 'PAR_TKMENSAJE2'
            DataSource = dsParametros
            TabOrder = 1
          end
          object DBEdit57: TDBEdit
            Left = 8
            Top = 72
            Width = 385
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            DataField = 'PAR_TKMENSAJE3'
            DataSource = dsParametros
            TabOrder = 2
          end
          object DBEdit58: TDBEdit
            Left = 8
            Top = 96
            Width = 385
            Height = 21
            BevelKind = bkFlat
            BorderStyle = bsNone
            DataField = 'PAR_TKMENSAJE4'
            DataSource = dsParametros
            TabOrder = 3
          end
        end
        object gbNCF: TGroupBox
          Left = 0
          Top = 192
          Width = 407
          Height = 163
          Align = alBottom
          Caption = 'Numeros de Control Fiscal (NCF)'
          TabOrder = 1
          object DBGrid2: TDBGrid
            Left = 2
            Top = 15
            Width = 403
            Height = 146
            Align = alClient
            Ctl3D = False
            DataSource = dsNCF
            Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'caja'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Caja'
                Width = 27
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'NCF_Fijo'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'NCF Fijo'
                Width = 79
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'NCF_Inicial'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'NCF Inicial'
                Width = 62
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'NCF_Final'
                Title.Alignment = taCenter
                Title.Caption = 'NCF Final'
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'Cantidad'
                ReadOnly = True
                Title.Alignment = taCenter
                Width = 52
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'NCF_Secuencia'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Sec. Actual'
                Width = 71
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'NCF_Status'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'St.'
                Width = 29
                Visible = True
              end>
          end
        end
        object btinsertNCF: TBitBtn
          Left = 168
          Top = 160
          Width = 75
          Height = 25
          Caption = 'Insertar NCF'
          TabOrder = 2
          OnClick = btinsertNCFClick
        end
        object btdeleteNCF: TBitBtn
          Left = 328
          Top = 160
          Width = 75
          Height = 25
          Caption = 'Eliminar NCF'
          TabOrder = 3
          OnClick = btdeleteNCFClick
        end
        object BitBtn7: TBitBtn
          Left = 248
          Top = 160
          Width = 75
          Height = 25
          Caption = 'Modificar NCF'
          TabOrder = 4
          OnClick = BitBtn7Click
        end
        object DBCheckBox47: TDBCheckBox
          Left = 256
          Top = 8
          Width = 145
          Height = 17
          Caption = 'Imprimir columna de Itbis'
          DataField = 'par_ticket_itbis'
          DataSource = dsParametros
          TabOrder = 5
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCheckBox70: TDBCheckBox
          Left = 150
          Top = 8
          Width = 99
          Height = 17
          Caption = 'Imprimir copia'
          DataField = 'ImprimirCopia'
          DataSource = dsParametros
          TabOrder = 6
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCheckBox78: TDBCheckBox
          Left = 6
          Top = 8
          Width = 145
          Height = 17
          Caption = 'Usa Huella Digital'
          DataField = 'par_usa_huella_supervisor'
          DataSource = dsParametros
          TabOrder = 7
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'Contabilidad'
        ImageIndex = 1
        object Label118: TLabel
          Left = 8
          Top = 16
          Width = 22
          Height = 13
          Caption = 'Caja'
          FocusControl = DBEdit94
        end
        object Label119: TLabel
          Left = 8
          Top = 40
          Width = 77
          Height = 13
          Caption = 'Cuenta contado'
          FocusControl = DBEdit95
        end
        object Label120: TLabel
          Left = 8
          Top = 64
          Width = 71
          Height = 13
          Caption = 'Cuenta cr'#233'dito'
          FocusControl = DBEdit96
        end
        object Label121: TLabel
          Left = 8
          Top = 88
          Width = 58
          Height = 13
          Caption = 'Cuenta CxC'
          FocusControl = DBEdit97
        end
        object Label122: TLabel
          Left = 8
          Top = 112
          Width = 78
          Height = 13
          Caption = 'N'#250'mero entrada'
          FocusControl = DBEdit98
        end
        object DBEdit94: TDBEdit
          Left = 112
          Top = 16
          Width = 73
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'caja'
          DataSource = dsCuentasTicket
          TabOrder = 0
        end
        object DBEdit95: TDBEdit
          Left = 112
          Top = 40
          Width = 73
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'contado'
          DataSource = dsCuentasTicket
          TabOrder = 1
        end
        object DBEdit96: TDBEdit
          Left = 112
          Top = 64
          Width = 73
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'credito'
          DataSource = dsCuentasTicket
          TabOrder = 2
        end
        object DBEdit97: TDBEdit
          Left = 112
          Top = 88
          Width = 73
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'cxc'
          DataSource = dsCuentasTicket
          TabOrder = 3
        end
        object DBEdit98: TDBEdit
          Left = 112
          Top = 112
          Width = 73
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'numero_entrada'
          DataSource = dsCuentasTicket
          TabOrder = 4
        end
        object DBGrid5: TDBGrid
          Left = 8
          Top = 168
          Width = 289
          Height = 120
          DataSource = dsPasar
          TabOrder = 5
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Caja'
              Width = 43
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Hasta'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Tipo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Porciento'
              Title.Alignment = taCenter
              Width = 52
              Visible = True
            end>
        end
      end
      object tsRestBar: TTabSheet
        Caption = 'RestBar'
        ImageIndex = 2
        object Label139: TLabel
          Left = 8
          Top = 5
          Width = 64
          Height = 13
          Caption = 'Propina Legal'
        end
        object dbedtRestBar_PropLegal: TDBEdit
          Left = 78
          Top = 2
          Width = 49
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'RestBar_PropLegal'
          DataSource = dsParametros
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBCheckBox65: TDBCheckBox
          Left = 0
          Top = 31
          Width = 217
          Height = 17
          Caption = 'Facturacion con Itbis '
          DataField = 'RestBar_FactConItbis'
          DataSource = dsParametros
          TabOrder = 1
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCheckBox66: TDBCheckBox
          Left = 0
          Top = 55
          Width = 217
          Height = 17
          Caption = 'Mostrar mesero'
          DataField = 'PAR_MESERO'
          DataSource = dsParametros
          TabOrder = 2
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCheckBox69: TDBCheckBox
          Left = 0
          Top = 79
          Width = 217
          Height = 17
          Caption = 'Mostrar subcategorias'
          DataField = 'PAR_mostrarsubcategorias'
          DataSource = dsParametros
          TabOrder = 3
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object dbchkpar_posAutorizacion: TDBCheckBox
          Left = -1
          Top = 101
          Width = 185
          Height = 17
          Caption = 'Autorizacion no requerida'
          DataField = 'PAR_AutorizacionNoRequerida'
          DataSource = dsParametros
          TabOrder = 4
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCheckBox74: TDBCheckBox
          Left = -1
          Top = 123
          Width = 185
          Height = 18
          Caption = 'Mesero - Solo mesas abiertas'
          DataField = 'mesas_abiertas'
          DataSource = dsParametros
          TabOrder = 5
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCheckBox76: TDBCheckBox
          Left = -1
          Top = 145
          Width = 185
          Height = 18
          Caption = 'Imprimir Factura - pregunta'
          DataField = 'par_ImprimirFacturaRestBar'
          DataSource = dsParametros
          TabOrder = 6
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCheckBox77: TDBCheckBox
          Left = -1
          Top = 169
          Width = 185
          Height = 18
          Caption = 'Imprimir Copia - pregunta'
          DataField = 'par_ImprimirCopiaRestBar'
          DataSource = dsParametros
          TabOrder = 7
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
      object tsBalanza: TTabSheet
        Caption = 'Balanza'
        ImageIndex = 3
        object Label142: TLabel
          Left = 8
          Top = 16
          Width = 62
          Height = 13
          Caption = 'Digito Entero'
          FocusControl = dbedtpar_digitos_entero
        end
        object Label143: TLabel
          Left = 8
          Top = 88
          Width = 87
          Height = 13
          Caption = 'Forma Ticket Peso'
          FocusControl = dbedtpar_forma_ticket_peso
        end
        object Label144: TLabel
          Left = 8
          Top = 64
          Width = 89
          Height = 13
          Caption = 'Digito Precio Pesar'
          FocusControl = dbedtpar_digitos_precio_pesar
        end
        object Label145: TLabel
          Left = 8
          Top = 40
          Width = 66
          Height = 13
          Caption = 'Digito Decimal'
          FocusControl = dbedtpar_digitos_decimal
        end
        object Label146: TLabel
          Left = 8
          Top = 143
          Width = 80
          Height = 13
          Caption = 'Depto Productos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object btnDeptoPesos: TSpeedButton
          Left = 160
          Top = 136
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
          OnClick = btnDeptoPesosClick
        end
        object Label173: TLabel
          Left = 8
          Top = 115
          Width = 76
          Height = 13
          Caption = 'Digito Banderita'
          FocusControl = dbedtpar_digitos_
        end
        object dbedtpar_digitos_entero: TDBEdit
          Left = 112
          Top = 16
          Width = 73
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'par_digitos_entero'
          DataSource = dsParametros
          TabOrder = 0
        end
        object dbedtpar_digitos_decimal: TDBEdit
          Left = 112
          Top = 40
          Width = 73
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'par_digitos_decimal'
          DataSource = dsParametros
          TabOrder = 1
        end
        object dbedtpar_digitos_precio_pesar: TDBEdit
          Left = 112
          Top = 64
          Width = 73
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'par_digitos_precio_pesar'
          DataSource = dsParametros
          TabOrder = 2
        end
        object dbedtpar_forma_ticket_peso: TDBEdit
          Left = 112
          Top = 88
          Width = 73
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'par_forma_ticket_peso'
          DataSource = dsParametros
          TabOrder = 3
        end
        object dbedtdepa_codigo_peso: TDBEdit
          Left = 112
          Top = 137
          Width = 44
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'depa_codigo_peso'
          DataSource = dsParametros
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object edtDeptoPeso: TEdit
          Left = 188
          Top = 137
          Width = 213
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
        object btnListProdPeso: TBitBtn
          Left = 189
          Top = 74
          Width = 101
          Height = 25
          Caption = 'Listado Peso'
          TabOrder = 6
          OnClick = btnListProdPesoClick
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
        object dbrgrppar_treporte_peso: TDBRadioGroup
          Left = 189
          Top = 11
          Width = 165
          Height = 32
          Caption = 'Tipo Reporte'
          Columns = 2
          DataField = 'par_treporte_peso'
          DataSource = dsParametros
          Items.Strings = (
            'Sin Puntos'
            'Con Puntos')
          TabOrder = 7
          Values.Strings = (
            '0'
            '1')
        end
        object dbedtpar_digitos_: TDBEdit
          Left = 112
          Top = 112
          Width = 73
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'par_digitos_banderita'
          DataSource = dsParametros
          TabOrder = 8
        end
        object dbrgrppar_tlector_balanza: TDBRadioGroup
          Left = 189
          Top = 100
          Width = 176
          Height = 32
          Caption = 'Tipo Lector'
          Columns = 2
          DataField = 'par_tlector_balanza'
          DataSource = dsParametros
          Items.Strings = (
            'Normal'
            'Balanza')
          TabOrder = 9
          Values.Strings = (
            '0'
            '1')
        end
      end
    end
  end
  object pnGenerales: TPanel
    Left = 548
    Top = 148
    Width = 417
    Height = 385
    TabOrder = 1
    Visible = False
    object Label2: TLabel
      Left = 16
      Top = 240
      Width = 96
      Height = 13
      Caption = 'Porcentaje para itbis'
    end
    object Label3: TLabel
      Left = 16
      Top = 24
      Width = 168
      Height = 13
      Caption = 'Tipo de movimiento notas de d'#233'bito'
    end
    object SpeedButton1: TSpeedButton
      Left = 230
      Top = 24
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
    end
    object Label20: TLabel
      Left = 16
      Top = 48
      Width = 160
      Height = 13
      Caption = 'Tipo de movimiento para cheques'
    end
    object SpeedButton2: TSpeedButton
      Left = 230
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
      OnClick = SpeedButton2Click
    end
    object Label21: TLabel
      Left = 16
      Top = 72
      Width = 171
      Height = 13
      Caption = 'Tipo de movimiento cargos bancario'
    end
    object SpeedButton3: TSpeedButton
      Left = 230
      Top = 72
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
    object Label57: TLabel
      Left = 16
      Top = 144
      Width = 159
      Height = 13
      Caption = 'Forma de pago para desembolsos'
    end
    object btFpaDsesem: TSpeedButton
      Left = 230
      Top = 144
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
      OnClick = btFpaDsesemClick
    end
    object Label74: TLabel
      Left = 16
      Top = 168
      Width = 134
      Height = 13
      Caption = 'Tipo de moneda por defecto'
    end
    object btmoneda: TSpeedButton
      Left = 230
      Top = 168
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
      OnClick = btmonedaClick
    end
    object Label80: TLabel
      Left = 16
      Top = 216
      Width = 59
      Height = 13
      Caption = 'Caja general'
    end
    object btcaja: TSpeedButton
      Left = 230
      Top = 216
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
      OnClick = btcajaClick
    end
    object Label66: TLabel
      Left = 16
      Top = 96
      Width = 121
      Height = 13
      Caption = 'Tipo de movimiento ticket'
    end
    object SpeedButton13: TSpeedButton
      Left = 230
      Top = 96
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
      OnClick = SpeedButton13Click
    end
    object Label71: TLabel
      Left = 16
      Top = 267
      Width = 143
      Height = 13
      Caption = 'Campo busqueda factura CXP'
    end
    object Label110: TLabel
      Left = 16
      Top = 192
      Width = 102
      Height = 13
      Caption = 'Tipo de moneda local'
    end
    object mtmonedalocal: TSpeedButton
      Left = 230
      Top = 192
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
      OnClick = mtmonedalocalClick
    end
    object Label136: TLabel
      Left = 16
      Top = 120
      Width = 156
      Height = 13
      Caption = 'Tipo de movimiento desembolsos'
    end
    object SpeedButton19: TSpeedButton
      Left = 230
      Top = 120
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
      OnClick = SpeedButton19Click
    end
    object tTipoMov: TEdit
      Left = 255
      Top = 24
      Width = 154
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
    object DBEdit2: TDBEdit
      Left = 192
      Top = 24
      Width = 33
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PAR_MOVNDE'
      DataSource = dsParametros
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object tTipoMovCK: TEdit
      Left = 255
      Top = 48
      Width = 154
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
      TabOrder = 10
    end
    object DBEdit16: TDBEdit
      Left = 192
      Top = 48
      Width = 33
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PAR_MOVCK'
      DataSource = dsParametros
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object tTipoMovCargo: TEdit
      Left = 255
      Top = 72
      Width = 154
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
      TabOrder = 11
    end
    object DBEdit17: TDBEdit
      Left = 192
      Top = 72
      Width = 33
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PAR_MOVCARGO'
      DataSource = dsParametros
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object tFpaDesem: TEdit
      Left = 255
      Top = 144
      Width = 154
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
      TabOrder = 12
    end
    object DBEdit50: TDBEdit
      Left = 192
      Top = 144
      Width = 33
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'PAR_FPADESEM'
      DataSource = dsParametros
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object tmoneda: TEdit
      Left = 255
      Top = 168
      Width = 154
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
      TabOrder = 13
    end
    object DBEdit65: TDBEdit
      Left = 192
      Top = 168
      Width = 33
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'MON_CODIGO'
      DataSource = dsParametros
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object ckgeneracks: TDBCheckBox
      Left = 8
      Top = 360
      Width = 217
      Height = 17
      Caption = 'Generar cheques al aprobar solicitud'
      DataField = 'PAR_SOLGENERACHEQUE'
      DataSource = dsParametros
      TabOrder = 14
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object tcaja: TEdit
      Left = 255
      Top = 216
      Width = 154
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
      TabOrder = 15
    end
    object DBEdit71: TDBEdit
      Left = 192
      Top = 216
      Width = 33
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'caj_codigo'
      DataSource = dsParametros
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object DBCheckBox37: TDBCheckBox
      Left = 8
      Top = 344
      Width = 168
      Height = 17
      Caption = 'Imprimir logo de la empresa'
      DataField = 'par_imprime_logo'
      DataSource = dsParametros
      TabOrder = 16
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object tmovtk: TEdit
      Left = 255
      Top = 96
      Width = 154
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
      TabOrder = 17
    end
    object tdbpar_movtk: TDBEdit
      Left = 192
      Top = 96
      Width = 33
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'par_movtk'
      DataSource = dsParametros
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBComboBox10: TDBComboBox
      Left = 192
      Top = 264
      Width = 145
      Height = 21
      Style = csDropDownList
      DataField = 'par_busqueda_cxp'
      DataSource = dsParametros
      ItemHeight = 13
      Items.Strings = (
        'RNC'
        'NOMBRE')
      TabOrder = 18
    end
    object tmonedalocal: TEdit
      Left = 255
      Top = 192
      Width = 154
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
      TabOrder = 19
    end
    object DBEdit76: TDBEdit
      Left = 192
      Top = 192
      Width = 33
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'par_moneda_local'
      DataSource = dsParametros
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object tmovdc: TEdit
      Left = 255
      Top = 120
      Width = 154
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
      TabOrder = 20
    end
    object DBEdit112: TDBEdit
      Left = 192
      Top = 120
      Width = 33
      Height = 21
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'par_movdc'
      DataSource = dsParametros
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBRadioGroup22: TDBRadioGroup
      Left = 192
      Top = 288
      Width = 215
      Height = 69
      Caption = 'Idioma para los reportes'
      DataField = 'Idioma'
      DataSource = dsParametros
      Items.Strings = (
        'Espa'#241'ol'
        'Ingles')
      TabOrder = 21
      Values.Strings = (
        'E'
        'I')
    end
    object dbchkpar_banca_apuestas: TDBCheckBox
      Left = 8
      Top = 326
      Width = 176
      Height = 17
      Caption = 'Bancas de Apuestas'
      DataField = 'par_banca_apuestas'
      DataSource = dsParametros
      TabOrder = 22
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object cxDBComboBox1: TcxDBComboBox
      Left = 192
      Top = 240
      DataBinding.DataField = 'PAR_ITBIS'
      DataBinding.DataSource = dsParametros
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        '0'
        '8'
        '11'
        '13'
        '16'
        '18')
      Properties.MaxLength = 0
      TabOrder = 23
      Width = 65
    end
    object DBCheckBox72: TDBCheckBox
      Left = 8
      Top = 310
      Width = 176
      Height = 17
      Caption = 'Comision Ventas  x Productos'
      DataField = 'par_comision_vend'
      DataSource = dsParametros
      TabOrder = 24
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object pnFE: TPanel
    Left = 500
    Top = 150
    Width = 480
    Height = 385
    TabOrder = 30
    object pgc2: TPageControl
      Left = 1
      Top = 1
      Width = 478
      Height = 383
      ActivePage = tsRestBar1
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object tsRestBar1: TTabSheet
        Caption = 'Opciones'
        ImageIndex = 2
        object lbl1: TLabel
          Left = 8
          Top = 25
          Width = 52
          Height = 13
          Caption = 'URL eNCF:'
        end
        object lbl11: TLabel
          Left = 8
          Top = 46
          Width = 39
          Height = 13
          Caption = 'URL FC:'
        end
        object lbl12: TLabel
          Left = 8
          Top = 66
          Width = 105
          Height = 13
          Caption = 'Password Certificado:'
        end
        object Label180: TLabel
          Left = 8
          Top = 119
          Width = 95
          Height = 13
          Caption = 'URL Base - Luganis:'
        end
        object Label181: TLabel
          Left = 8
          Top = 143
          Width = 121
          Height = 13
          Caption = 'Company code - Luganis:'
        end
        object Label182: TLabel
          Left = 8
          Top = 167
          Width = 99
          Height = 13
          Caption = 'UserName - Luganis:'
        end
        object Label183: TLabel
          Left = 8
          Top = 191
          Width = 93
          Height = 13
          Caption = 'Password- Luganis:'
        end
        object Label184: TLabel
          Left = 8
          Top = 215
          Width = 101
          Height = 13
          Caption = 'Appversion- Luganis:'
        end
        object Label185: TLabel
          Left = 8
          Top = 239
          Width = 64
          Height = 13
          Caption = 'SO - Luganis:'
        end
        object Label186: TLabel
          Left = 8
          Top = 263
          Width = 92
          Height = 13
          Caption = 'DeviceId - Luganis:'
        end
        object Label187: TLabel
          Left = 8
          Top = 287
          Width = 89
          Height = 13
          Caption = 'Latitude - Luganis:'
        end
        object Label188: TLabel
          Left = 8
          Top = 311
          Width = 97
          Height = 13
          Caption = 'Longitude - Luganis:'
        end
        object Label189: TLabel
          Left = 8
          Top = 335
          Width = 100
          Height = 13
          Caption = 'ProviderIP - Luganis:'
        end
        object dbedtPass_FacturacionElectronica: TDBEdit
          Left = 128
          Top = 64
          Width = 185
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'Pass_FacturacionElectronica'
          DataSource = dsParametros
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          PasswordChar = 'x'
          TabOrder = 3
        end
        object dbchkRestBar_FactConItbis: TDBCheckBox
          Left = 0
          Top = -1
          Width = 217
          Height = 17
          Caption = 'Facturacion Electronica'
          DataField = 'Usa_FacturacionElectronica'
          DataSource = dsParametros
          TabOrder = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object dbedtURL_FacturacionElectronica: TDBEdit
          Left = 68
          Top = 18
          Width = 245
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'URL_FacturacionElectronica'
          DataSource = dsParametros
          TabOrder = 1
        end
        object dbedtURL_FCFacturacionElectronica: TDBEdit
          Left = 68
          Top = 41
          Width = 245
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'URL_FCFacturacionElectronica'
          DataSource = dsParametros
          TabOrder = 2
        end
        object DBCheckBox73: TDBCheckBox
          Left = 8
          Top = 95
          Width = 145
          Height = 17
          Caption = 'Integracion con luganis'
          DataField = 'integracion_luganis'
          DataSource = dsParametros
          TabOrder = 4
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBEdit23: TDBEdit
          Left = 132
          Top = 114
          Width = 245
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'par_luganis_baseurl'
          DataSource = dsParametros
          TabOrder = 5
        end
        object DBEdit24: TDBEdit
          Left = 132
          Top = 138
          Width = 245
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'par_luganis_companycode'
          DataSource = dsParametros
          TabOrder = 6
        end
        object DBEdit28: TDBEdit
          Left = 132
          Top = 162
          Width = 245
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'par_luganis_username'
          DataSource = dsParametros
          TabOrder = 7
        end
        object DBEdit40: TDBEdit
          Left = 132
          Top = 210
          Width = 245
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'par_luganis_appversion'
          DataSource = dsParametros
          TabOrder = 8
        end
        object DBEdit47: TDBEdit
          Left = 132
          Top = 258
          Width = 245
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'par_luganis_deviceid'
          DataSource = dsParametros
          TabOrder = 9
        end
        object DBEdit48: TDBEdit
          Left = 132
          Top = 186
          Width = 245
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'par_luganis_password'
          DataSource = dsParametros
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          PasswordChar = 'x'
          TabOrder = 10
        end
        object DBEdit39: TDBEdit
          Left = 132
          Top = 234
          Width = 245
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'par_luganis_os'
          DataSource = dsParametros
          TabOrder = 11
        end
        object DBEdit49: TDBEdit
          Left = 132
          Top = 282
          Width = 245
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'par_luganis_latitude'
          DataSource = dsParametros
          TabOrder = 12
        end
        object DBEdit59: TDBEdit
          Left = 132
          Top = 306
          Width = 245
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'par_luganis_longitude'
          DataSource = dsParametros
          TabOrder = 13
        end
        object DBEdit60: TDBEdit
          Left = 132
          Top = 330
          Width = 245
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'par_luganis_providerip'
          DataSource = dsParametros
          TabOrder = 14
        end
        object DBCheckBox75: TDBCheckBox
          Left = 152
          Top = 95
          Width = 273
          Height = 17
          Caption = 'Detener Facturacion si no hay secuencia disponible'
          DataField = 'PAR_FE_DetenerFacturacion'
          DataSource = dsParametros
          TabOrder = 15
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
      object ts1: TTabSheet
        Caption = 'eNCF'
        object grp3: TGroupBox
          Left = 0
          Top = 40
          Width = 470
          Height = 315
          Align = alBottom
          Caption = 'Secuencias (eNCF)'
          TabOrder = 0
          object dbgrd1: TDBGrid
            Left = 2
            Top = 15
            Width = 466
            Height = 298
            Align = alClient
            Ctl3D = False
            DataSource = dseNCF
            Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'Tipo'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Codigo'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'nombre_dgii'
                Title.Caption = 'Tipo'
                Width = 115
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'Secuencia_Inicial_DGII'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'eNCF Inicial'
                Width = 70
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'Final'
                Title.Alignment = taCenter
                Title.Caption = 'eNCF Final'
                Width = 70
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'Ultima_secuencia_DGII'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'Ultima Sec.'
                Width = 60
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'Activa'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = 'St.'
                Visible = False
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'Cantidad'
                ReadOnly = True
                Title.Alignment = taCenter
                Width = 60
                Visible = True
              end>
          end
        end
        object btn4: TBitBtn
          Left = 304
          Top = 16
          Width = 83
          Height = 30
          Caption = 'Modificar eNCF'
          TabOrder = 1
          OnClick = btn4Click
        end
      end
    end
  end
  object Search: TQrySearchDlgADO
    AliasFields.Strings = (
      'Nombre'
      'Codigo')
    AliasName = DM.ADOSigma
    Left = 24
    Top = 40
  end
  object QParametros: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = QParametrosAfterOpen
    BeforePost = QParametrosBeforePost
    AfterPost = QParametrosAfterPost
    OnNewRecord = QParametrosNewRecord
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'emp_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    SQL.Strings = (
      'select *'
      'FROM'
      'PARAMETROS'
      'WHERE EMP_CODIGO = :emp_codigo')
    Left = 56
    Top = 72
    object QParametrosEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'PARAMETROS.EMP_CODIGO'
    end
    object QParametrosPAR_ALMACENVENTA: TIntegerField
      FieldName = 'PAR_ALMACENVENTA'
      Origin = 'PARAMETROS.PAR_ALMACENVENTA'
      OnGetText = QParametrosPAR_ALMACENVENTAGetText
    end
    object QParametrosPAR_CODIGOCLIENTE: TIBStringField
      FieldName = 'PAR_CODIGOCLIENTE'
      Origin = 'PARAMETROS.PAR_CODIGOCLIENTE'
      Size = 1
    end
    object QParametrosPAR_CODIGOPRODUCTO: TIBStringField
      FieldName = 'PAR_CODIGOPRODUCTO'
      Origin = 'PARAMETROS.PAR_CODIGOPRODUCTO'
      Size = 1
    end
    object QParametrosPAR_FACFORMA: TIBStringField
      FieldName = 'PAR_FACFORMA'
      Origin = 'PARAMETROS.PAR_FACFORMA'
      Size = 1
    end
    object QParametrosPAR_FORMATODES: TIntegerField
      FieldName = 'PAR_FORMATODES'
      Origin = 'PARAMETROS.PAR_FORMATODES'
    end
    object QParametrosPAR_FORMATODEV: TIntegerField
      FieldName = 'PAR_FORMATODEV'
      Origin = 'PARAMETROS.PAR_FORMATODEV'
    end
    object QParametrosPAR_FORMATONC: TIntegerField
      FieldName = 'PAR_FORMATONC'
      Origin = 'PARAMETROS.PAR_FORMATONC'
    end
    object QParametrosPAR_FORMATOND: TIntegerField
      FieldName = 'PAR_FORMATOND'
      Origin = 'PARAMETROS.PAR_FORMATOND'
    end
    object QParametrosPAR_FORMATORC: TIntegerField
      FieldName = 'PAR_FORMATORC'
      Origin = 'PARAMETROS.PAR_FORMATORC'
    end
    object QParametrosPAR_FORMATORI: TIntegerField
      FieldName = 'PAR_FORMATORI'
      Origin = 'PARAMETROS.PAR_FORMATORI'
    end
    object QParametrosPAR_ITBIS: TFloatField
      FieldName = 'PAR_ITBIS'
      Origin = 'PARAMETROS.PAR_ITBIS'
      currency = True
    end
    object QParametrosPAR_MOVNDE: TIntegerField
      FieldName = 'PAR_MOVNDE'
      Origin = 'PARAMETROS.PAR_MOVNDE'
      OnGetText = QParametrosPAR_MOVNDEGetText
    end
    object QParametrosPAR_TFACODIGO: TIntegerField
      FieldName = 'PAR_TFACODIGO'
      Origin = 'PARAMETROS.PAR_TFACODIGO'
      OnGetText = QParametrosPAR_TFACODIGOGetText
    end
    object QParametrosPAR_TIPOPRECIO: TIBStringField
      FieldName = 'PAR_TIPOPRECIO'
      Origin = 'PARAMETROS.PAR_TIPOPRECIO'
      Size = 7
    end
    object QParametrosPAR_CONTROLAMAXIMO: TIBStringField
      FieldName = 'PAR_CONTROLAMAXIMO'
      Origin = 'PARAMETROS.PAR_CONTROLAMAXIMO'
      Size = 5
    end
    object QParametrosPAR_CONTROLAMINIMO: TIBStringField
      FieldName = 'PAR_CONTROLAMINIMO'
      Origin = 'PARAMETROS.PAR_CONTROLAMINIMO'
      Size = 5
    end
    object QParametrosPAR_DEBAJOCOSTO: TIBStringField
      FieldName = 'PAR_DEBAJOCOSTO'
      Origin = 'PARAMETROS.PAR_DEBAJOCOSTO'
      Size = 5
    end
    object QParametrosPAR_COMBOCOTIZACION: TIBStringField
      FieldName = 'PAR_COMBOCOTIZACION'
      Origin = 'PARAMETROS.PAR_COMBOCOTIZACION'
      Size = 5
    end
    object QParametrosPAR_COMBOIMPDETALLE: TIBStringField
      FieldName = 'PAR_COMBOIMPDETALLE'
      Origin = 'PARAMETROS.PAR_COMBOIMPDETALLE'
      Size = 5
    end
    object QParametrosPAR_COMBOREBAJA: TIBStringField
      FieldName = 'PAR_COMBOREBAJA'
      Origin = 'PARAMETROS.PAR_COMBOREBAJA'
      Size = 5
    end
    object QParametrosPAR_VENDIGITOSLOTE: TIntegerField
      FieldName = 'PAR_VENDIGITOSLOTE'
      Origin = 'PARAMETROS.PAR_VENDIGITOSLOTE'
    end
    object QParametrosPAR_VENPERMITIR: TIBStringField
      FieldName = 'PAR_VENPERMITIR'
      Origin = 'PARAMETROS.PAR_VENPERMITIR'
      Size = 5
    end
    object QParametrosPAR_VENVERIFICA: TIBStringField
      FieldName = 'PAR_VENVERIFICA'
      Origin = 'PARAMETROS.PAR_VENVERIFICA'
      Size = 1
    end
    object QParametrosPAR_CONTEOLIMPIA: TIBStringField
      FieldName = 'PAR_CONTEOLIMPIA'
      Origin = 'PARAMETROS.PAR_CONTEOLIMPIA'
      Size = 1
    end
    object QParametrosPAR_PREDESCGLOBAL: TIBStringField
      FieldName = 'PAR_PREDESCGLOBAL'
      Origin = 'PARAMETROS.PAR_PREDESCGLOBAL'
      Size = 5
    end
    object QParametrosPAR_PREDESCRIP1: TIBStringField
      FieldName = 'PAR_PREDESCRIP1'
      Origin = 'PARAMETROS.PAR_PREDESCRIP1'
      Size = 10
    end
    object QParametrosPAR_PREDESCRIP2: TIBStringField
      FieldName = 'PAR_PREDESCRIP2'
      Origin = 'PARAMETROS.PAR_PREDESCRIP2'
      Size = 10
    end
    object QParametrosPAR_PREDESCRIP3: TIBStringField
      FieldName = 'PAR_PREDESCRIP3'
      Origin = 'PARAMETROS.PAR_PREDESCRIP3'
      Size = 10
    end
    object QParametrosPAR_PREDESCRIP4: TIBStringField
      FieldName = 'PAR_PREDESCRIP4'
      Origin = 'PARAMETROS.PAR_PREDESCRIP4'
      Size = 10
    end
    object QParametrosPAR_FACANULA: TIBStringField
      FieldName = 'PAR_FACANULA'
      Origin = 'PARAMETROS.PAR_FACANULA'
      Size = 5
    end
    object QParametrosPAR_FACDIASANULA: TIntegerField
      FieldName = 'PAR_FACDIASANULA'
      Origin = 'PARAMETROS.PAR_FACDIASANULA'
    end
    object QParametrosPAR_FACDIASMODIFICA: TIntegerField
      FieldName = 'PAR_FACDIASMODIFICA'
      Origin = 'PARAMETROS.PAR_FACDIASMODIFICA'
    end
    object QParametrosPAR_FACDISPONIBLE: TIBStringField
      FieldName = 'PAR_FACDISPONIBLE'
      Origin = 'PARAMETROS.PAR_FACDISPONIBLE'
      Size = 5
    end
    object QParametrosPAR_FACMODIFICA: TIBStringField
      FieldName = 'PAR_FACMODIFICA'
      Origin = 'PARAMETROS.PAR_FACMODIFICA'
      Size = 5
    end
    object QParametrosPAR_FACSELPRECIO: TIBStringField
      FieldName = 'PAR_FACSELPRECIO'
      Origin = 'PARAMETROS.PAR_FACSELPRECIO'
      Size = 5
    end
    object QParametrosPAR_FACTEMPORAL: TIBStringField
      FieldName = 'PAR_FACTEMPORAL'
      Origin = 'PARAMETROS.PAR_FACTEMPORAL'
      Size = 5
    end
    object QParametrosPAR_DEVDIAS: TIntegerField
      FieldName = 'PAR_DEVDIAS'
      Origin = 'PARAMETROS.PAR_DEVDIAS'
    end
    object QParametrosPAR_DEVEFECTIVO: TIBStringField
      FieldName = 'PAR_DEVEFECTIVO'
      Origin = 'PARAMETROS.PAR_DEVEFECTIVO'
      Size = 5
    end
    object QParametrosPAR_FORMATOCUADRE: TIntegerField
      FieldName = 'PAR_FORMATOCUADRE'
      Origin = 'PARAMETROS.PAR_FORMATOCUADRE'
    end
    object QParametrosPAR_AHORA1: TDateTimeField
      FieldName = 'PAR_AHORA1'
      Origin = 'PARAMETROS.PAR_AHORA1'
      EditMask = '!90:00:00>LL;1;_'
    end
    object QParametrosPAR_AHORA2: TDateTimeField
      FieldName = 'PAR_AHORA2'
      Origin = 'PARAMETROS.PAR_AHORA2'
      DisplayFormat = 'h:mm:ss tt'
      EditMask = '!90:00:00>LL;1;_'
    end
    object QParametrosPAR_BHORA1: TDateTimeField
      FieldName = 'PAR_BHORA1'
      Origin = 'PARAMETROS.PAR_BHORA1'
      DisplayFormat = 'h:mm:ss tt'
      EditMask = '!90:00:00>LL;1;_'
    end
    object QParametrosPAR_BHORA2: TDateTimeField
      FieldName = 'PAR_BHORA2'
      Origin = 'PARAMETROS.PAR_BHORA2'
      DisplayFormat = 'h:mm:ss tt'
      EditMask = '!90:00:00>LL;1;_'
    end
    object QParametrosPAR_FACMODPRECIO: TIBStringField
      FieldName = 'PAR_FACMODPRECIO'
      Origin = 'PARAMETROS.PAR_FACMODPRECIO'
      Size = 5
    end
    object QParametrosPAR_FORMATOCON: TIntegerField
      FieldName = 'PAR_FORMATOCON'
      Origin = 'PARAMETROS.PAR_FORMATOCON'
    end
    object QParametrosPAR_CAJA: TIBStringField
      FieldName = 'PAR_CAJA'
      Origin = 'PARAMETROS.PAR_CAJA'
      Size = 1
    end
    object QParametrosPAR_IMPCODIGOBARRA: TIBStringField
      FieldName = 'PAR_IMPCODIGOBARRA'
      Origin = 'PARAMETROS.PAR_IMPCODIGOBARRA'
      Size = 5
    end
    object QParametrosCPA_CODIGOCLIENTE: TIntegerField
      FieldName = 'CPA_CODIGOCLIENTE'
      Origin = 'PARAMETROS.CPA_CODIGOCLIENTE'
      OnGetText = QParametrosCPA_CODIGOCLIENTEGetText
    end
    object QParametrosPAR_LIMITEINICIAL: TFloatField
      FieldName = 'PAR_LIMITEINICIAL'
      Origin = 'PARAMETROS.PAR_LIMITEINICIAL'
      currency = True
    end
    object QParametrosPAR_MOVCK: TIntegerField
      FieldName = 'PAR_MOVCK'
      Origin = 'PARAMETROS.PAR_MOVCK'
      OnGetText = QParametrosPAR_MOVCKGetText
    end
    object QParametrosPAR_MOVCARGO: TIntegerField
      FieldName = 'PAR_MOVCARGO'
      Origin = 'PARAMETROS.PAR_MOVCARGO'
      OnGetText = QParametrosPAR_MOVCARGOGetText
    end
    object QParametrosPAR_PRECIOLETRA_0: TIBStringField
      FieldName = 'PAR_PRECIOLETRA_0'
      Origin = 'PARAMETROS.PAR_PRECIOLETRA_0'
      Size = 1
    end
    object QParametrosPAR_PRECIOLETRA_1: TIBStringField
      FieldName = 'PAR_PRECIOLETRA_1'
      Origin = 'PARAMETROS.PAR_PRECIOLETRA_1'
      Size = 1
    end
    object QParametrosPAR_PRECIOLETRA_2: TIBStringField
      FieldName = 'PAR_PRECIOLETRA_2'
      Origin = 'PARAMETROS.PAR_PRECIOLETRA_2'
      Size = 1
    end
    object QParametrosPAR_PRECIOLETRA_3: TIBStringField
      FieldName = 'PAR_PRECIOLETRA_3'
      Origin = 'PARAMETROS.PAR_PRECIOLETRA_3'
      Size = 1
    end
    object QParametrosPAR_PRECIOLETRA_4: TIBStringField
      FieldName = 'PAR_PRECIOLETRA_4'
      Origin = 'PARAMETROS.PAR_PRECIOLETRA_4'
      Size = 1
    end
    object QParametrosPAR_PRECIOLETRA_5: TIBStringField
      FieldName = 'PAR_PRECIOLETRA_5'
      Origin = 'PARAMETROS.PAR_PRECIOLETRA_5'
      Size = 1
    end
    object QParametrosPAR_PRECIOLETRA_6: TIBStringField
      FieldName = 'PAR_PRECIOLETRA_6'
      Origin = 'PARAMETROS.PAR_PRECIOLETRA_6'
      Size = 1
    end
    object QParametrosPAR_PRECIOLETRA_8: TIBStringField
      FieldName = 'PAR_PRECIOLETRA_8'
      Origin = 'PARAMETROS.PAR_PRECIOLETRA_7'
      Size = 1
    end
    object QParametrosPAR_PRECIOLETRA_9: TIBStringField
      FieldName = 'PAR_PRECIOLETRA_9'
      Origin = 'PARAMETROS.PAR_PRECIOLETRA_9'
      Size = 1
    end
    object QParametrosPAR_PRECIOLETRA_7: TIBStringField
      FieldName = 'PAR_PRECIOLETRA_7'
      Origin = 'PARAMETROS.PAR_PRECIOLETRA_7'
      Size = 1
    end
    object QParametrosPAR_NUEVOUSADO: TIBStringField
      FieldName = 'PAR_NUEVOUSADO'
      Origin = 'PARAMETROS.PAR_NUEVOUSADO'
      Size = 5
    end
    object QParametrosPAR_TEXTOBARRA1: TIBStringField
      FieldName = 'PAR_TEXTOBARRA1'
      Origin = 'PARAMETROS.PAR_TEXTOBARRA1'
      Size = 60
    end
    object QParametrosPAR_TEXTOBARRA2: TIBStringField
      FieldName = 'PAR_TEXTOBARRA2'
      Origin = 'PARAMETROS.PAR_TEXTOBARRA2'
      Size = 60
    end
    object QParametrosPAR_TEXTOBARRA3: TIBStringField
      FieldName = 'PAR_TEXTOBARRA3'
      Origin = 'PARAMETROS.PAR_TEXTOBARRA3'
      Size = 60
    end
    object QParametrosPAR_TEXTOBARRA4: TIBStringField
      FieldName = 'PAR_TEXTOBARRA4'
      Origin = 'PARAMETROS.PAR_TEXTOBARRA4'
      Size = 60
    end
    object QParametrosPAR_TEXTOBARRA5: TIBStringField
      FieldName = 'PAR_TEXTOBARRA5'
      Origin = 'PARAMETROS.PAR_TEXTOBARRA5'
      Size = 60
    end
    object QParametrosPAR_OPC5TALINEA: TIBStringField
      FieldName = 'PAR_OPC5TALINEA'
      Origin = 'PARAMETROS.PAR_OPC5TALINEA'
    end
    object QParametrosPAR_TEXTOBARRA6: TIBStringField
      FieldName = 'PAR_TEXTOBARRA6'
      Origin = 'PARAMETROS.PAR_TEXTOBARRA6'
      Size = 60
    end
    object QParametrosPAR_OPC1RALINEA: TIBStringField
      FieldName = 'PAR_OPC1RALINEA'
      Origin = 'PARAMETROS.PAR_OPC1RALINEA'
    end
    object QParametrosPAR_PREGUNTAPEQ: TIBStringField
      FieldName = 'PAR_PREGUNTAPEQ'
      Origin = 'PARAMETROS.PAR_PREGUNTAPEQ'
      Size = 5
    end
    object QParametrosPAR_IGUALAREF: TIBStringField
      FieldName = 'PAR_IGUALAREF'
      Origin = 'PARAMETROS.PAR_IGUALAREF'
      Size = 1
    end
    object QParametrosPAR_ITBISDEFECTO: TIBStringField
      FieldName = 'PAR_ITBISDEFECTO'
      Origin = 'PARAMETROS.PAR_ITBISDEFECTO'
      Size = 1
    end
    object QParametrosPAR_FPADESEM: TIntegerField
      FieldName = 'PAR_FPADESEM'
      Origin = 'PARAMETROS.PAR_FPADESEM'
      OnGetText = QParametrosPAR_FPADESEMGetText
    end
    object QParametrosPAR_FACBAJARLINEA: TIBStringField
      FieldName = 'PAR_FACBAJARLINEA'
      Origin = 'PARAMETROS.PAR_FACBAJARLINEA'
      Size = 5
    end
    object QParametrosPAR_FACTOTALIZAPIE: TIBStringField
      FieldName = 'PAR_FACTOTALIZAPIE'
      Origin = 'PARAMETROS.PAR_FACTOTALIZAPIE'
      Size = 5
    end
    object QParametrosPAR_FACREPITEPROD: TIBStringField
      FieldName = 'PAR_FACREPITEPROD'
      Origin = 'PARAMETROS.PAR_FACREPITEPROD'
      Size = 5
    end
    object QParametrosPAR_DEBAJOPRECIO: TIBStringField
      FieldName = 'PAR_DEBAJOPRECIO'
      Origin = 'PARAMETROS.PAR_DEBAJOPRECIO'
      Size = 5
    end
    object QParametrosPAR_FACCONITBIS: TIBStringField
      FieldName = 'PAR_FACCONITBIS'
      Origin = 'PARAMETROS.PAR_FACCONITBIS'
      Size = 5
    end
    object QParametrosPAR_FACESCALA: TIBStringField
      FieldName = 'PAR_FACESCALA'
      Origin = 'PARAMETROS.PAR_FACESCALA'
      Size = 5
    end
    object QParametrosPAR_FACMEDIDA: TIBStringField
      FieldName = 'PAR_FACMEDIDA'
      Origin = 'PARAMETROS.PAR_FACMEDIDA'
      Size = 5
    end
    object QParametrosPAR_PRECIOEMP: TIBStringField
      FieldName = 'PAR_PRECIOEMP'
      Origin = 'PARAMETROS.PAR_PRECIOEMP'
      Size = 7
    end
    object QParametrosPAR_PRECIOUND: TIBStringField
      FieldName = 'PAR_PRECIOUND'
      Origin = 'PARAMETROS.PAR_PRECIOUND'
      Size = 7
    end
    object QParametrosPAR_FISICOSOLOLLENO: TIBStringField
      FieldName = 'PAR_FISICOSOLOLLENO'
      Origin = 'PARAMETROS.PAR_FISICOSOLOLLENO'
      Size = 5
    end
    object QParametrosPAR_DEVFORMA: TIBStringField
      FieldName = 'PAR_DEVFORMA'
      Origin = 'PARAMETROS.PAR_DEVFORMA'
      Size = 1
    end
    object QParametrosPAR_FORMATOCOT: TIntegerField
      FieldName = 'PAR_FORMATOCOT'
      Origin = 'PARAMETROS.PAR_FORMATOCOT'
    end
    object QParametrosPAR_INVMOSTRARVENCE: TIBStringField
      FieldName = 'PAR_INVMOSTRARVENCE'
      Origin = 'PARAMETROS.PAR_INVMOSTRARVENCE'
      Size = 5
    end
    object QParametrosPAR_VERIMAGEN: TIBStringField
      FieldName = 'PAR_VERIMAGEN'
      Origin = 'PARAMETROS.PAR_VERIMAGEN'
      Size = 5
    end
    object QParametrosPAR_TKMENSAJE1: TIBStringField
      FieldName = 'PAR_TKMENSAJE1'
      Origin = 'PARAMETROS.PAR_TKMENSAJE1'
      Size = 40
    end
    object QParametrosPAR_TKMENSAJE2: TIBStringField
      FieldName = 'PAR_TKMENSAJE2'
      Origin = 'PARAMETROS.PAR_TKMENSAJE2'
      Size = 40
    end
    object QParametrosPAR_TKMENSAJE3: TIBStringField
      FieldName = 'PAR_TKMENSAJE3'
      Origin = 'PARAMETROS.PAR_TKMENSAJE3'
      Size = 40
    end
    object QParametrosPAR_TKMENSAJE4: TIBStringField
      FieldName = 'PAR_TKMENSAJE4'
      Origin = 'PARAMETROS.PAR_TKMENSAJE4'
      Size = 40
    end
    object QParametrosPAR_TKCLAVEDELETE: TIBStringField
      FieldName = 'PAR_TKCLAVEDELETE'
      Origin = 'PARAMETROS.PAR_TKCLAVEDELETE'
      Size = 30
    end
    object QParametrosPAR_TKCLAVEMODIFICA: TIBStringField
      FieldName = 'PAR_TKCLAVEMODIFICA'
      Origin = 'PARAMETROS.PAR_TKCLAVEMODIFICA'
      Size = 30
    end
    object QParametrosPAR_COMBINAORIGINAL: TIBStringField
      FieldName = 'PAR_COMBINAORIGINAL'
      Origin = 'PARAMETROS.PAR_COMBINAORIGINAL'
      Size = 30
    end
    object QParametrosPAR_COMBINAFABRIC: TIBStringField
      FieldName = 'PAR_COMBINAFABRIC'
      Origin = 'PARAMETROS.PAR_COMBINAFABRIC'
      Size = 30
    end
    object QParametrosPAR_TKCLAVECREDITO: TIBStringField
      FieldName = 'PAR_TKCLAVECREDITO'
      Origin = 'PARAMETROS.PAR_TKCLAVECREDITO'
      Size = 30
    end
    object QParametrosPAR_TKCLAVECANCELA: TIBStringField
      FieldName = 'PAR_TKCLAVECANCELA'
      Origin = 'PARAMETROS.PAR_TKCLAVECANCELA'
      Size = 30
    end
    object QParametrosPAR_INVEMPRESA: TIntegerField
      FieldName = 'PAR_INVEMPRESA'
      Origin = 'PARAMETROS.PAR_INVEMPRESA'
      OnGetText = QParametrosPAR_INVEMPRESAGetText
    end
    object QParametrosPAR_INVALMACEN: TIntegerField
      FieldName = 'PAR_INVALMACEN'
      Origin = 'PARAMETROS.PAR_INVALMACEN'
      OnGetText = QParametrosPAR_INVALMACENGetText
    end
    object QParametrosMON_CODIGO: TIntegerField
      FieldName = 'MON_CODIGO'
      Origin = 'PARAMETROS.MON_CODIGO'
      OnGetText = QParametrosMON_CODIGOGetText
    end
    object QParametrosPAR_SOLGENERACHEQUE: TIBStringField
      FieldName = 'PAR_SOLGENERACHEQUE'
      Origin = 'PARAMETROS.PAR_SOLGENERACHEQUE'
      Size = 5
    end
    object QParametrospar_invprecioconduce: TStringField
      FieldName = 'par_invprecioconduce'
      Size = 5
    end
    object QParametrospar_mailservidor: TStringField
      FieldName = 'par_mailservidor'
      Size = 60
    end
    object QParametrospar_mailcorreo: TStringField
      FieldName = 'par_mailcorreo'
      Size = 60
    end
    object QParametrospar_mailusuario: TStringField
      FieldName = 'par_mailusuario'
      Size = 60
    end
    object QParametrospar_mailclave: TStringField
      FieldName = 'par_mailclave'
      Size = 60
    end
    object QParametrospar_mailpuerto: TStringField
      FieldName = 'par_mailpuerto'
      Size = 60
    end
    object QParametrospar_itbisincluido: TStringField
      FieldName = 'par_itbisincluido'
      Size = 5
    end
    object QParametroscaj_codigo: TIntegerField
      FieldName = 'caj_codigo'
      OnGetText = QParametroscaj_codigoGetText
    end
    object QParametrospar_domicilio: TStringField
      FieldName = 'par_domicilio'
      Size = 5
    end
    object QParametrospar_monto_domicilio: TBCDField
      FieldName = 'par_monto_domicilio'
      currency = True
      Precision = 15
      Size = 2
    end
    object QParametrospar_copias_domicilio: TIntegerField
      FieldName = 'par_copias_domicilio'
    end
    object QParametrospar_beneficio: TBCDField
      FieldName = 'par_beneficio'
      currency = True
      Precision = 15
      Size = 2
    end
    object QParametrospar_tkclavereimprime: TStringField
      FieldName = 'par_tkclavereimprime'
      Size = 30
    end
    object QParametrospar_igualartelefonocliente: TStringField
      FieldName = 'par_igualartelefonocliente'
      Size = 5
    end
    object QParametrospar_valor_punto: TBCDField
      FieldName = 'par_valor_punto'
      currency = True
      Precision = 15
      Size = 2
    end
    object QParametrospar_punto_principal: TBCDField
      FieldName = 'par_punto_principal'
      currency = True
      Precision = 15
      Size = 2
    end
    object QParametrospar_punto_depen: TBCDField
      FieldName = 'par_punto_depen'
      currency = True
      Precision = 15
      Size = 2
    end
    object QParametrospar_redondeo: TStringField
      FieldName = 'par_redondeo'
      Size = 5
    end
    object QParametrospar_barra_header: TMemoField
      FieldName = 'par_barra_header'
      BlobType = ftMemo
    end
    object QParametrospar_fac_preimpresa: TStringField
      FieldName = 'par_fac_preimpresa'
      Size = 5
    end
    object QParametrospar_preciound_m: TStringField
      FieldName = 'par_preciound_m'
      Size = 7
    end
    object QParametrospar_precioemp_m: TStringField
      FieldName = 'par_precioemp_m'
      Size = 7
    end
    object QParametrospar_fac_oferta: TStringField
      FieldName = 'par_fac_oferta'
      Size = 5
    end
    object QParametrospar_nombre_familia: TStringField
      FieldName = 'par_nombre_familia'
      Size = 15
    end
    object QParametrospar_nombre_depto: TStringField
      FieldName = 'par_nombre_depto'
      Size = 15
    end
    object QParametrospar_nombre_color: TStringField
      FieldName = 'par_nombre_color'
      Size = 15
    end
    object QParametrospar_nombre_marca: TStringField
      FieldName = 'par_nombre_marca'
      Size = 15
    end
    object QParametrospar_inv_compra_centro_costo: TStringField
      FieldName = 'par_inv_compra_centro_costo'
      Size = 5
    end
    object QParametrospar_imprime_logo: TStringField
      FieldName = 'par_imprime_logo'
      Size = 5
    end
    object QParametrospar_arch_copiar_colector: TStringField
      FieldName = 'par_arch_copiar_colector'
      Size = 50
    end
    object QParametrospar_arch_recibe_colector: TStringField
      FieldName = 'par_arch_recibe_colector'
      Size = 50
    end
    object QParametrospar_delimitador_envia: TStringField
      FieldName = 'par_delimitador_envia'
      Size = 1
    end
    object QParametrospar_delimitador_recibe: TStringField
      FieldName = 'par_delimitador_recibe'
      Size = 1
    end
    object QParametrospar_modifica_fecha_factura: TStringField
      FieldName = 'par_modifica_fecha_factura'
      Size = 5
    end
    object QParametrospar_pago_mayor_balance: TStringField
      FieldName = 'par_pago_mayor_balance'
      Size = 5
    end
    object QParametrospar_nota_orden_servicio: TMemoField
      FieldName = 'par_nota_orden_servicio'
      BlobType = ftMemo
    end
    object QParametrospar_controlar: TStringField
      FieldName = 'par_controlar'
      Size = 5
    end
    object QParametrospar_formato_preimpreso: TStringField
      FieldName = 'par_formato_preimpreso'
    end
    object QParametrospar_usuario_cuadra: TStringField
      FieldName = 'par_usuario_cuadra'
      Size = 5
    end
    object QParametrospar_inv_entrada_modifica_precio: TStringField
      FieldName = 'par_inv_entrada_modifica_precio'
      Size = 5
    end
    object QParametrospar_movtk: TStringField
      FieldName = 'par_movtk'
      OnGetText = QParametrospar_movtkGetText
      Size = 3
    end
    object QParametrospar_visualizadesc: TStringField
      FieldName = 'par_visualizadesc'
      Size = 5
    end
    object QParametrospar_visualiza_selectivo: TStringField
      FieldName = 'par_visualiza_selectivo'
      Size = 5
    end
    object QParametrospar_cantidad_primero: TStringField
      FieldName = 'par_cantidad_primero'
      Size = 50
    end
    object QParametrospar_busqueda_porciento: TStringField
      FieldName = 'par_busqueda_porciento'
      Size = 5
    end
    object QParametrospar_busqueda_cxp: TStringField
      FieldName = 'par_busqueda_cxp'
      Size = 10
    end
    object QParametrospar_moneda_local: TIntegerField
      FieldName = 'par_moneda_local'
      OnGetText = QParametrospar_moneda_localGetText
    end
    object QParametrospar_envio: TMemoField
      FieldName = 'par_envio'
      BlobType = ftMemo
    end
    object QParametrospar_nota_cotizacion: TMemoField
      FieldName = 'par_nota_cotizacion'
      BlobType = ftMemo
    end
    object QParametrospar_almacendevolucion: TIntegerField
      FieldName = 'par_almacendevolucion'
      OnGetText = QParametrospar_almacendevolucionGetText
    end
    object QParametrospar_boletos_monto: TBCDField
      FieldName = 'par_boletos_monto'
      currency = True
      Precision = 15
      Size = 2
    end
    object QParametrospar_boletos_cantidad: TIntegerField
      FieldName = 'par_boletos_cantidad'
    end
    object QParametrospar_ticket_itbis: TStringField
      FieldName = 'par_ticket_itbis'
      Size = 5
    end
    object QParametrospar_ftp_site: TStringField
      FieldName = 'par_ftp_site'
      Size = 50
    end
    object QParametrospar_ftp_usuario: TStringField
      FieldName = 'par_ftp_usuario'
      Size = 50
    end
    object QParametrospar_ftp_password: TStringField
      FieldName = 'par_ftp_password'
      Size = 50
    end
    object QParametrospar_ftp_ruta: TStringField
      FieldName = 'par_ftp_ruta'
      Size = 50
    end
    object QParametrospar_modifica_precio_automatico: TStringField
      FieldName = 'par_modifica_precio_automatico'
      Size = 5
    end
    object QParametrospar_inv_forma_inventario: TStringField
      FieldName = 'par_inv_forma_inventario'
      Size = 1
    end
    object QParametrospar_visualizar_cant_empaque: TStringField
      FieldName = 'par_visualizar_cant_empaque'
      Size = 5
    end
    object QParametrospar_imprimir_calculo_empaque: TStringField
      FieldName = 'par_imprimir_calculo_empaque'
      Size = 5
    end
    object QParametrospar_inv_transferencia_auto: TStringField
      FieldName = 'par_inv_transferencia_auto'
      Size = 5
    end
    object QParametrospar_validar_serie_en_inventario: TStringField
      FieldName = 'par_validar_serie_en_inventario'
      Size = 5
    end
    object QParametrospar_boletos_monto_patrocinador: TBCDField
      FieldName = 'par_boletos_monto_patrocinador'
      Precision = 15
      Size = 2
    end
    object QParametrospar_boletos_cantidad_patrocinador: TIntegerField
      FieldName = 'par_boletos_cantidad_patrocinador'
    end
    object QParametrospar_movdc: TIntegerField
      FieldName = 'par_movdc'
      OnGetText = QParametrospar_movdcGetText
    end
    object QParametrospar_busqueda_dejar_ultimo: TStringField
      FieldName = 'par_busqueda_dejar_ultimo'
      Size = 5
    end
    object QParametrospar_compras_visualiza_diferencia: TStringField
      FieldName = 'par_compras_visualiza_diferencia'
      Size = 5
    end
    object QParametrospar_genera_puntos_credito: TStringField
      FieldName = 'par_genera_puntos_credito'
      Size = 5
    end
    object QParametrospar_inv_unidad_medida: TStringField
      FieldName = 'par_inv_unidad_medida'
      Size = 5
    end
    object QParametrospar_numerofactura_tipo: TStringField
      FieldName = 'par_numerofactura_tipo'
      Size = 5
    end
    object QParametrospar_facturarcero: TStringField
      FieldName = 'par_facturarcero'
      Size = 5
    end
    object QParametrospar_textobarra7: TStringField
      FieldName = 'par_textobarra7'
      Size = 60
    end
    object QParametrospar_opc6talinea: TStringField
      FieldName = 'par_opc6talinea'
    end
    object QParametrospar_opc7malinea: TStringField
      FieldName = 'par_opc7malinea'
    end
    object QParametrosIdioma: TStringField
      FieldName = 'Idioma'
      Size = 1
    end
    object QParametrospar_compras_valores_aut: TStringField
      FieldName = 'par_compras_valores_aut'
      Size = 5
    end
    object QParametrospar_inv_imprime_comentario: TStringField
      FieldName = 'par_inv_imprime_comentario'
      Size = 5
    end
    object QParametrospar_aplica_desc_por_rango_venta: TStringField
      FieldName = 'par_aplica_desc_por_rango_venta'
      Size = 5
    end
    object QParametrospar_cantidad_caducidad: TIntegerField
      FieldName = 'par_cantidad_caducidad'
    end
    object QParametrospar_periodo_caducidad: TStringField
      FieldName = 'par_periodo_caducidad'
    end
    object QParametrospar_imprimir_sin_detalle_RI: TStringField
      FieldName = 'par_imprimir_sin_detalle_RI'
      Size = 5
    end
    object QParametroscot_dias_valides: TIntegerField
      FieldName = 'cot_dias_valides'
    end
    object QParametrosPAR_FORMATOENVIOCON: TIntegerField
      FieldName = 'PAR_FORMATOENVIOCON'
    end
    object QParametrospar_impresora_boleto: TStringField
      FieldName = 'par_impresora_boleto'
      Size = 255
    end
    object QParametrosPAR_CODIGO_ABRE_CAJA: TStringField
      FieldName = 'PAR_CODIGO_ABRE_CAJA'
      Size = 10
    end
    object QParametrosPAR_PUERTO_ABRE_CAJA: TStringField
      DisplayWidth = 50
      FieldName = 'PAR_PUERTO_ABRE_CAJA'
      Size = 50
    end
    object QParametrosPAR_SUC_NCF: TIntegerField
      FieldName = 'PAR_SUC_NCF'
    end
    object QParametrospar_busq_incrementada: TBooleanField
      FieldName = 'par_busq_incrementada'
    end
    object QParametrospar_concat_prod_exist_ubic: TBooleanField
      FieldName = 'par_concat_prod_exist_ubic'
    end
    object QParametrospar_busq_por_referencia: TBooleanField
      FieldName = 'par_busq_por_referencia'
    end
    object QParametrospar_envio_maxivo_fact: TBooleanField
      FieldName = 'par_envio_maxivo_fact'
    end
    object QParametrosPAR_MORA_DIAS_APLICAR: TIntegerField
      FieldName = 'PAR_MORA_DIAS_APLICAR'
    end
    object QParametrosPAR_MORA_PORC: TCurrencyField
      FieldName = 'PAR_MORA_PORC'
    end
    object QParametrosPAR_MORA_DIAS_GRACIA: TIntegerField
      FieldName = 'PAR_MORA_DIAS_GRACIA'
    end
    object QParametrospar_imprimir_con_detalle_prod: TBooleanField
      FieldName = 'par_imprimir_con_detalle_prod'
    end
    object QParametrospar_cotizacion_notif: TBooleanField
      FieldName = 'par_cotizacion_notif'
    end
    object QParametrospar_dias_cotizacion_notif: TIntegerField
      FieldName = 'par_dias_cotizacion_notif'
    end
    object QParametrosPar_Envio_Rec_Estadocta: TBooleanField
      FieldName = 'Par_Envio_Rec_Estadocta'
    end
    object QParametrosPar_Envio_Rec_Correo: TBooleanField
      FieldName = 'Par_Envio_Rec_Correo'
    end
    object QParametrosPar_Envio_Conduce_Correo: TBooleanField
      FieldName = 'Par_Envio_Conduce_Correo'
    end
    object QParametrosPar_Envio_Cotiz_Correo: TBooleanField
      FieldName = 'Par_Envio_Cotiz_Correo'
    end
    object QParametrosRestBar_PropLegal: TCurrencyField
      FieldName = 'RestBar_PropLegal'
    end
    object QParametrospar_digitos_entero: TIntegerField
      FieldName = 'par_digitos_entero'
    end
    object QParametrospar_digitos_decimal: TIntegerField
      FieldName = 'par_digitos_decimal'
    end
    object QParametrospar_digitos_precio_pesar: TIntegerField
      FieldName = 'par_digitos_precio_pesar'
    end
    object QParametrospar_forma_ticket_peso: TStringField
      FieldName = 'par_forma_ticket_peso'
      Size = 1
    end
    object QParametrosdepa_codigo_peso: TIntegerField
      FieldName = 'depa_codigo_peso'
      OnGetText = QParametrosdepa_codigo_pesoGetText
    end
    object QParametrospar_treporte_peso: TIntegerField
      FieldName = 'par_treporte_peso'
    end
    object QParametrosPAR_IMPCODBARRAFAM: TBooleanField
      FieldName = 'PAR_IMPCODBARRAFAM'
    end
    object QParametrospar_banca_apuestas: TBooleanField
      FieldName = 'par_banca_apuestas'
    end
    object QParametrospar_puerto_Printer: TStringField
      FieldName = 'par_puerto_Printer'
      Size = 150
    end
    object QParametrospar_Marca_Printer: TStringField
      FieldName = 'par_Marca_Printer'
    end
    object QParametrospar_velocidad_Printer: TIntegerField
      FieldName = 'par_velocidad_Printer'
    end
    object QParametrospar_puerto_envios: TStringField
      FieldName = 'par_puerto_envios'
      Size = 255
    end
    object QParametrospar_digitos_banderita: TIntegerField
      FieldName = 'par_digitos_banderita'
    end
    object QParametrosPAR_INV_VENTAS: TIntegerField
      FieldName = 'PAR_INV_VENTAS'
    end
    object QParametrospar_tlector_balanza: TIntegerField
      FieldName = 'par_tlector_balanza'
    end
    object QParametrosRestBar_FactConItbis: TBooleanField
      FieldName = 'RestBar_FactConItbis'
    end
    object QParametrospar_mostrarfacturadolares: TBooleanField
      FieldName = 'par_mostrarfacturadolares'
    end
    object QParametrosPAR_UnidadMedida_Producto: TBooleanField
      FieldName = 'PAR_UnidadMedida_Producto'
    end
    object QParametrospar_totalizardolaresPOS: TBooleanField
      FieldName = 'par_totalizardolaresPOS'
    end
    object QParametrospar_codigobarrasdolares: TBooleanField
      FieldName = 'par_codigobarrasdolares'
    end
    object QParametrospar_vouchercardnet: TBooleanField
      FieldName = 'par_vouchercardnet'
    end
    object QParametrosPAR_MESERO: TBooleanField
      FieldName = 'PAR_MESERO'
    end
    object QParametrosPAR_cantidadRecibosImprimir: TIntegerField
      FieldName = 'PAR_cantidadRecibosImprimir'
    end
    object QParametrosPAR_mostrarsubcategorias: TBooleanField
      FieldName = 'PAR_mostrarsubcategorias'
    end
    object QParametrosPAR_AutorizacionNoRequerida: TBooleanField
      FieldName = 'PAR_AutorizacionNoRequerida'
    end
    object QParametrosUsa_FacturacionElectronica: TBooleanField
      FieldName = 'Usa_FacturacionElectronica'
    end
    object QParametrosURL_FacturacionElectronica: TStringField
      FieldName = 'URL_FacturacionElectronica'
      Size = 200
    end
    object QParametrosURL_FCFacturacionElectronica: TStringField
      FieldName = 'URL_FCFacturacionElectronica'
      Size = 200
    end
    object QParametrosPass_FacturacionElectronica: TStringField
      FieldName = 'Pass_FacturacionElectronica'
      Size = 200
    end
    object QParametrosImprimirCopia: TBooleanField
      FieldName = 'ImprimirCopia'
    end
    object QParametrosservicio_construccion: TBooleanField
      FieldName = 'servicio_construccion'
    end
    object QParametrosintegracion_luganis: TBooleanField
      FieldName = 'integracion_luganis'
    end
    object QParametrosmesas_abiertas: TBooleanField
      FieldName = 'mesas_abiertas'
    end
    object QParametrospar_luganis_baseurl: TStringField
      FieldName = 'par_luganis_baseurl'
      Size = 100
    end
    object QParametrospar_luganis_companycode: TStringField
      FieldName = 'par_luganis_companycode'
      Size = 100
    end
    object QParametrospar_luganis_username: TStringField
      FieldName = 'par_luganis_username'
      Size = 100
    end
    object QParametrospar_luganis_password: TStringField
      FieldName = 'par_luganis_password'
      Size = 100
    end
    object QParametrospar_luganis_appversion: TStringField
      FieldName = 'par_luganis_appversion'
      Size = 100
    end
    object QParametrospar_luganis_os: TStringField
      FieldName = 'par_luganis_os'
      Size = 100
    end
    object QParametrospar_luganis_deviceid: TStringField
      FieldName = 'par_luganis_deviceid'
      Size = 100
    end
    object QParametrospar_luganis_latitude: TStringField
      FieldName = 'par_luganis_latitude'
      Size = 100
    end
    object QParametrospar_luganis_longitude: TStringField
      FieldName = 'par_luganis_longitude'
      Size = 100
    end
    object QParametrospar_luganis_providerip: TStringField
      FieldName = 'par_luganis_providerip'
      Size = 100
    end
    object QParametrospar_comision_vend: TBooleanField
      FieldName = 'par_comision_vend'
    end
    object QParametrosPAR_FE_DetenerFacturacion: TBooleanField
      FieldName = 'PAR_FE_DetenerFacturacion'
    end
    object QParametrospar_ImprimirFacturaRestBar: TBooleanField
      FieldName = 'par_ImprimirFacturaRestBar'
    end
    object QParametrospar_ImprimirCopiaRestBar: TBooleanField
      FieldName = 'par_ImprimirCopiaRestBar'
    end
    object QParametrospar_usa_huella_supervisor: TBooleanField
      FieldName = 'par_usa_huella_supervisor'
    end
  end
  object dsParametros: TDataSource
    AutoEdit = False
    DataSet = QParametros
    Left = 88
    Top = 72
  end
  object QTipo: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    BeforePost = QTipoBeforePost
    AfterPost = QTipoAfterPost
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
      'EMP_CODIGO, TFA_ACTBALANCE, TFA_CLIENTE, '
      'TFA_CODIGO, TFA_ESPCLIENTE, TFA_FORMATOIMP, TFA_MENSAJE1,'
      'TFA_MENSAJE2, TFA_MENSAJE3, TFA_NOMBRE, TFA_PRECIO,'
      'TFA_PUERTOIMP, TFA_SELCONDI, TMO_CODIGO, VEN_CODIGO,'
      'tfa_copias'
      'from tiposfactura'
      'where emp_codigo = :emp_codigo'
      'order by TFA_NOMBRE')
    Left = 56
    Top = 40
    object QTipoEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QTipoTFA_ACTBALANCE: TStringField
      FieldName = 'TFA_ACTBALANCE'
      Size = 5
    end
    object QTipoTFA_CLIENTE: TStringField
      FieldName = 'TFA_CLIENTE'
      Size = 60
    end
    object QTipoTFA_CODIGO: TIntegerField
      FieldName = 'TFA_CODIGO'
    end
    object QTipoTFA_ESPCLIENTE: TStringField
      FieldName = 'TFA_ESPCLIENTE'
      Size = 5
    end
    object QTipoTFA_FORMATOIMP: TIntegerField
      FieldName = 'TFA_FORMATOIMP'
    end
    object QTipoTFA_MENSAJE1: TStringField
      FieldName = 'TFA_MENSAJE1'
      Size = 2500
    end
    object QTipoTFA_MENSAJE2: TStringField
      FieldName = 'TFA_MENSAJE2'
      Size = 60
    end
    object QTipoTFA_MENSAJE3: TStringField
      FieldName = 'TFA_MENSAJE3'
      Size = 60
    end
    object QTipoTFA_NOMBRE: TStringField
      FieldName = 'TFA_NOMBRE'
      Size = 60
    end
    object QTipoTFA_PRECIO: TStringField
      FieldName = 'TFA_PRECIO'
      Size = 8
    end
    object QTipoTFA_PUERTOIMP: TStringField
      FieldName = 'TFA_PUERTOIMP'
    end
    object QTipoTFA_SELCONDI: TStringField
      FieldName = 'TFA_SELCONDI'
      Size = 5
    end
    object QTipoTMO_CODIGO: TIntegerField
      FieldName = 'TMO_CODIGO'
    end
    object QTipoVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
    end
    object QTipotfa_copias: TIntegerField
      FieldName = 'tfa_copias'
    end
  end
  object dsTipo: TDataSource
    DataSet = QTipo
    OnDataChange = dsTipoDataChange
    Left = 88
    Top = 40
  end
  object QAntigCli: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    AfterPost = QAntigCliAfterPost
    OnNewRecord = QAntigCliNewRecord
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
      
        'select EMP_CODIGO, PAR_DIA1DESDE, PAR_DIA1HASTA, PAR_DIA1LABEL, ' +
        'PAR_DIA2DESDE,'
      
        'PAR_DIA2HASTA, PAR_DIA2LABEL, PAR_DIA3DESDE, PAR_DIA3HASTA, PAR_' +
        'DIA3LABEL,'
      'PAR_DIA4DESDE, PAR_DIA4HASTA, PAR_DIA4LABEL from PARAMANTIGSALDO'
      'where emp_codigo = :emp_codigo')
    Left = 16
    Top = 104
    object QAntigCliEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'PARAMANTIGSALDO.EMP_CODIGO'
      Required = True
    end
    object QAntigCliPAR_DIA1DESDE: TIntegerField
      FieldName = 'PAR_DIA1DESDE'
      Origin = 'PARAMANTIGSALDO.PAR_DIA1DESDE'
    end
    object QAntigCliPAR_DIA1HASTA: TIntegerField
      FieldName = 'PAR_DIA1HASTA'
      Origin = 'PARAMANTIGSALDO.PAR_DIA1HASTA'
    end
    object QAntigCliPAR_DIA1LABEL: TIBStringField
      FieldName = 'PAR_DIA1LABEL'
      Origin = 'PARAMANTIGSALDO.PAR_DIA1LABEL'
      Size = 10
    end
    object QAntigCliPAR_DIA2DESDE: TIntegerField
      FieldName = 'PAR_DIA2DESDE'
      Origin = 'PARAMANTIGSALDO.PAR_DIA2DESDE'
    end
    object QAntigCliPAR_DIA2HASTA: TIntegerField
      FieldName = 'PAR_DIA2HASTA'
      Origin = 'PARAMANTIGSALDO.PAR_DIA2HASTA'
    end
    object QAntigCliPAR_DIA2LABEL: TIBStringField
      FieldName = 'PAR_DIA2LABEL'
      Origin = 'PARAMANTIGSALDO.PAR_DIA2LABEL'
      Size = 10
    end
    object QAntigCliPAR_DIA3DESDE: TIntegerField
      FieldName = 'PAR_DIA3DESDE'
      Origin = 'PARAMANTIGSALDO.PAR_DIA3DESDE'
    end
    object QAntigCliPAR_DIA3HASTA: TIntegerField
      FieldName = 'PAR_DIA3HASTA'
      Origin = 'PARAMANTIGSALDO.PAR_DIA3HASTA'
    end
    object QAntigCliPAR_DIA3LABEL: TIBStringField
      FieldName = 'PAR_DIA3LABEL'
      Origin = 'PARAMANTIGSALDO.PAR_DIA3LABEL'
      Size = 10
    end
    object QAntigCliPAR_DIA4DESDE: TIntegerField
      FieldName = 'PAR_DIA4DESDE'
      Origin = 'PARAMANTIGSALDO.PAR_DIA4DESDE'
    end
    object QAntigCliPAR_DIA4HASTA: TIntegerField
      FieldName = 'PAR_DIA4HASTA'
      Origin = 'PARAMANTIGSALDO.PAR_DIA4HASTA'
    end
    object QAntigCliPAR_DIA4LABEL: TIBStringField
      FieldName = 'PAR_DIA4LABEL'
      Origin = 'PARAMANTIGSALDO.PAR_DIA4LABEL'
      Size = 10
    end
  end
  object QAntigProv: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    AfterPost = QAntigProvAfterPost
    OnNewRecord = QAntigProvNewRecord
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
      
        'select EMP_CODIGO, PAR_DIA1DESDE, PAR_DIA1HASTA, PAR_DIA1LABEL, ' +
        'PAR_DIA2DESDE,'
      
        'PAR_DIA2HASTA, PAR_DIA2LABEL, PAR_DIA3DESDE, PAR_DIA3HASTA, PAR_' +
        'DIA3LABEL,'
      
        'PAR_DIA4DESDE, PAR_DIA4HASTA, PAR_DIA4LABEL from PARAMANTIGSALDO' +
        'PROV'
      'where emp_Codigo = :emp_codigo')
    Left = 48
    Top = 104
    object QAntigProvEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'PARAMANTIGSALDOPROV.EMP_CODIGO'
      Required = True
    end
    object QAntigProvPAR_DIA1DESDE: TIntegerField
      FieldName = 'PAR_DIA1DESDE'
      Origin = 'PARAMANTIGSALDOPROV.PAR_DIA1DESDE'
    end
    object QAntigProvPAR_DIA1HASTA: TIntegerField
      FieldName = 'PAR_DIA1HASTA'
      Origin = 'PARAMANTIGSALDOPROV.PAR_DIA1HASTA'
    end
    object QAntigProvPAR_DIA1LABEL: TIBStringField
      FieldName = 'PAR_DIA1LABEL'
      Origin = 'PARAMANTIGSALDOPROV.PAR_DIA1LABEL'
      Size = 10
    end
    object QAntigProvPAR_DIA2DESDE: TIntegerField
      FieldName = 'PAR_DIA2DESDE'
      Origin = 'PARAMANTIGSALDOPROV.PAR_DIA2DESDE'
    end
    object QAntigProvPAR_DIA2HASTA: TIntegerField
      FieldName = 'PAR_DIA2HASTA'
      Origin = 'PARAMANTIGSALDOPROV.PAR_DIA2HASTA'
    end
    object QAntigProvPAR_DIA2LABEL: TIBStringField
      FieldName = 'PAR_DIA2LABEL'
      Origin = 'PARAMANTIGSALDOPROV.PAR_DIA2LABEL'
      Size = 10
    end
    object QAntigProvPAR_DIA3DESDE: TIntegerField
      FieldName = 'PAR_DIA3DESDE'
      Origin = 'PARAMANTIGSALDOPROV.PAR_DIA3DESDE'
    end
    object QAntigProvPAR_DIA3HASTA: TIntegerField
      FieldName = 'PAR_DIA3HASTA'
      Origin = 'PARAMANTIGSALDOPROV.PAR_DIA3HASTA'
    end
    object QAntigProvPAR_DIA3LABEL: TIBStringField
      FieldName = 'PAR_DIA3LABEL'
      Origin = 'PARAMANTIGSALDOPROV.PAR_DIA3LABEL'
      Size = 10
    end
    object QAntigProvPAR_DIA4DESDE: TIntegerField
      FieldName = 'PAR_DIA4DESDE'
      Origin = 'PARAMANTIGSALDOPROV.PAR_DIA4DESDE'
    end
    object QAntigProvPAR_DIA4HASTA: TIntegerField
      FieldName = 'PAR_DIA4HASTA'
      Origin = 'PARAMANTIGSALDOPROV.PAR_DIA4HASTA'
    end
    object QAntigProvPAR_DIA4LABEL: TIBStringField
      FieldName = 'PAR_DIA4LABEL'
      Origin = 'PARAMANTIGSALDOPROV.PAR_DIA4LABEL'
      Size = 10
    end
  end
  object QConfigImp: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterPost = QConfigImpAfterPost
    OnNewRecord = QConfigImpNewRecord
    DataSource = dsTipo
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
        Name = 'tfa_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'CAJ, CLI, DIR, EMP_CODIGO, FIR, TEL, TFA_CODIGO, VEN , OTROS,'
      'CodigoProducto'
      'FROM'
      'PARCONFIGIMP'
      'WHERE EMP_CODIGO = :emp_codigo'
      'AND TFA_CODIGO = :tfa_codigo')
    Left = 24
    Top = 136
    object QConfigImpCAJ: TIBStringField
      FieldName = 'CAJ'
      Origin = 'PARCONFIGIMP.CAJ'
      Size = 2
    end
    object QConfigImpCLI: TIBStringField
      FieldName = 'CLI'
      Origin = 'PARCONFIGIMP.CLI'
      Size = 2
    end
    object QConfigImpDIR: TIBStringField
      FieldName = 'DIR'
      Origin = 'PARCONFIGIMP.DIR'
      Size = 2
    end
    object QConfigImpEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'PARCONFIGIMP.EMP_CODIGO'
    end
    object QConfigImpFIR: TIBStringField
      FieldName = 'FIR'
      Origin = 'PARCONFIGIMP.FIR'
      Size = 2
    end
    object QConfigImpTEL: TIBStringField
      FieldName = 'TEL'
      Origin = 'PARCONFIGIMP.TEL'
      Size = 2
    end
    object QConfigImpTFA_CODIGO: TIntegerField
      FieldName = 'TFA_CODIGO'
      Origin = 'PARCONFIGIMP.TFA_CODIGO'
    end
    object QConfigImpVEN: TIBStringField
      FieldName = 'VEN'
      Origin = 'PARCONFIGIMP.VEN'
      Size = 2
    end
    object QConfigImpOTROS: TStringField
      FieldName = 'OTROS'
      Size = 2
    end
    object QConfigImpCodigoProducto: TStringField
      FieldName = 'CodigoProducto'
      Size = 2
    end
  end
  object QConfigImpInv: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    AfterPost = QConfigImpInvAfterPost
    OnNewRecord = QConfigImpInvNewRecord
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
      'SELECT'
      'EMP_CODIGO, REP1, REP2, REP3, REP4, REP5, REP6, '
      'REP7, REP8'
      'FROM'
      'PARCONFIGIMPINV'
      'WHERE EMP_CODIGO = :emp_codigo')
    Left = 56
    Top = 136
    object QConfigImpInvEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'PARCONFIGIMPINV.EMP_CODIGO'
      Required = True
    end
    object QConfigImpInvREP1: TIBStringField
      FieldName = 'REP1'
      Origin = 'PARCONFIGIMPINV.REP1'
    end
    object QConfigImpInvREP2: TIBStringField
      FieldName = 'REP2'
      Origin = 'PARCONFIGIMPINV.REP2'
    end
    object QConfigImpInvREP3: TIBStringField
      FieldName = 'REP3'
      Origin = 'PARCONFIGIMPINV.REP3'
    end
    object QConfigImpInvREP4: TIBStringField
      FieldName = 'REP4'
      Origin = 'PARCONFIGIMPINV.REP4'
    end
    object QConfigImpInvREP5: TIBStringField
      FieldName = 'REP5'
      Origin = 'PARCONFIGIMPINV.REP5'
    end
    object QConfigImpInvREP6: TIBStringField
      FieldName = 'REP6'
      Origin = 'PARCONFIGIMPINV.REP6'
    end
    object QConfigImpInvREP7: TIBStringField
      FieldName = 'REP7'
      Origin = 'PARCONFIGIMPINV.REP7'
    end
    object QConfigImpInvREP8: TIBStringField
      FieldName = 'REP8'
      Origin = 'PARCONFIGIMPINV.REP8'
    end
  end
  object QContab: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterPost = QContabAfterPost
    OnNewRecord = QContabNewRecord
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'emp_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    SQL.Strings = (
      'SELECT'
      'EMP_CODIGO, PAR_CTARESULTADO, PAR_DOCCARGOS,PAR_DOCCHEQUE, '
      'PAR_DOCDEPOSITO, PAR_DOCCOMPRAS, PAR_DOCDESEM, PAR_DOCNCCLI,'
      
        'PAR_DOCNDCLI, PAR_DOCRC, PAR_DOCDEV, PAR_CTAINVEnT, PAR_CTACOSTO' +
        ','
      
        'PAR_CTADESC, PAR_CTAITBIS, PAR_CTADESCCOMP, PAR_CTACOSTOSINDIREC' +
        'TOS,'
      
        'PAR_CTALABORDIRECTA, PAR_CTAMATERIAPRIMA, PAR_CTAPRODPROCESO, PA' +
        'R_CTAPRODTERMINADOS,'
      
        'PAR_REPANEXOS, PAR_REPRESULTCOL1, PAR_REPRESULTCOL2, PAR_REPRESU' +
        'LTCOL3,'
      'PAR_REPANEXOSCTA, PAR_CTA_SELECTIVO_AD, PAR_CTA_SELECTIVO_CON,'
      'par_cta_prima, par_cta_ingreso_cambio,'
      'par_cta_gasto_cambio, par_estado_resultado_inventario,'
      'par_docnomina, par_ctasueldopagar, par_provision_regalia,'
      'par_docnc_cxp, par_docnd_cxp, par_cta_mercancia_transito,'
      'par_docliq, par_cta_itbis_compra, par_codifica_venta_familia,'
      'par_cta_intereses, par_cta_retencion_itbis,'
      'par_cta_retencion_isr, par_doc_conduce, par_doc_dev_compra,'
      
        'par_doc_trans_banco, par_NCF_Sucursal, par_ctaproplegvent, par_c' +
        'taotrosimp, par_ctafletecomp, par_ctaproplegcomp,'
      'PAR_CONT_BALANU_COMPROB, par_ctadevventas'
      'FROM'
      'CONTPARAMETROS'
      'WHERE '
      'EMP_CODIGO = :emp_codigo')
    Left = 24
    Top = 160
    object QContabEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'CONTPARAMETROS.EMP_CODIGO'
    end
    object QContabPAR_CTARESULTADO: TIBStringField
      FieldName = 'PAR_CTARESULTADO'
      Origin = 'CONTPARAMETROS.PAR_CTARESULTADO'
      OnGetText = QContabPAR_CTARESULTADOGetText
      Size = 15
    end
    object QContabPAR_DOCCARGOS: TIBStringField
      FieldName = 'PAR_DOCCARGOS'
      Origin = 'CONTPARAMETROS.PAR_DOCCARGOS'
      OnGetText = QContabPAR_DOCCARGOSGetText
      Size = 3
    end
    object QContabPAR_DOCCHEQUE: TIBStringField
      FieldName = 'PAR_DOCCHEQUE'
      Origin = 'CONTPARAMETROS.PAR_DOCCHEQUE'
      OnGetText = QContabPAR_DOCCHEQUEGetText
      Size = 3
    end
    object QContabPAR_DOCDEPOSITO: TIBStringField
      FieldName = 'PAR_DOCDEPOSITO'
      Origin = 'CONTPARAMETROS.PAR_DOCDEPOSITO'
      OnGetText = QContabPAR_DOCDEPOSITOGetText
      Size = 3
    end
    object QContabPAR_DOCCOMPRAS: TIBStringField
      FieldName = 'PAR_DOCCOMPRAS'
      Origin = 'CONTPARAMETROS.PAR_DOCCOMPRAS'
      OnGetText = QContabPAR_DOCCOMPRASGetText
      Size = 3
    end
    object QContabPAR_DOCDESEM: TIBStringField
      FieldName = 'PAR_DOCDESEM'
      Origin = 'CONTPARAMETROS.PAR_DOCDESEM'
      OnGetText = QContabPAR_DOCDESEMGetText
      Size = 3
    end
    object QContabPAR_DOCNCCLI: TIBStringField
      FieldName = 'PAR_DOCNCCLI'
      Origin = 'CONTPARAMETROS.PAR_DOCNCCLI'
      OnGetText = QContabPAR_DOCNCCLIGetText
      Size = 3
    end
    object QContabPAR_DOCNDCLI: TIBStringField
      FieldName = 'PAR_DOCNDCLI'
      Origin = 'CONTPARAMETROS.PAR_DOCNDCLI'
      OnGetText = QContabPAR_DOCNDCLIGetText
      Size = 3
    end
    object QContabPAR_DOCRC: TIBStringField
      FieldName = 'PAR_DOCRC'
      Origin = 'CONTPARAMETROS.PAR_DOCRC'
      OnGetText = QContabPAR_DOCRCGetText
      Size = 3
    end
    object QContabPAR_DOCDEV: TIBStringField
      FieldName = 'PAR_DOCDEV'
      Origin = 'CONTPARAMETROS.PAR_DOCDEV'
      OnGetText = QContabPAR_DOCDEVGetText
      Size = 3
    end
    object QContabPAR_CTAINVENT: TIBStringField
      FieldName = 'PAR_CTAINVENT'
      Origin = 'CONTPARAMETROS.PAR_CTAINVENT'
      OnGetText = QContabPAR_CTAINVENTGetText
      Size = 15
    end
    object QContabPAR_CTACOSTO: TIBStringField
      FieldName = 'PAR_CTACOSTO'
      Origin = 'CONTPARAMETROS.PAR_CTACOSTO'
      OnGetText = QContabPAR_CTACOSTOGetText
      Size = 15
    end
    object QContabPAR_CTADESC: TIBStringField
      FieldName = 'PAR_CTADESC'
      Origin = 'CONTPARAMETROS.PAR_CTADESC'
      OnGetText = QContabPAR_CTADESCGetText
      Size = 15
    end
    object QContabPAR_CTAITBIS: TIBStringField
      FieldName = 'PAR_CTAITBIS'
      Origin = 'CONTPARAMETROS.PAR_CTAITBIS'
      OnGetText = QContabPAR_CTAITBISGetText
      Size = 15
    end
    object QContabPAR_CTADESCCOMP: TIBStringField
      FieldName = 'PAR_CTADESCCOMP'
      Origin = 'CONTPARAMETROS.PAR_CTADESCCOMP'
      OnGetText = QContabPAR_CTADESCCOMPGetText
      Size = 15
    end
    object QContabPAR_CTACOSTOSINDIRECTOS: TIBStringField
      FieldName = 'PAR_CTACOSTOSINDIRECTOS'
      Origin = 'CONTPARAMETROS.PAR_CTACOSTOSINDIRECTOS'
      OnGetText = QContabPAR_CTACOSTOSINDIRECTOSGetText
      Size = 15
    end
    object QContabPAR_CTALABORDIRECTA: TIBStringField
      FieldName = 'PAR_CTALABORDIRECTA'
      Origin = 'CONTPARAMETROS.PAR_CTALABORDIRECTA'
      OnGetText = QContabPAR_CTALABORDIRECTAGetText
      Size = 15
    end
    object QContabPAR_CTAMATERIAPRIMA: TIBStringField
      FieldName = 'PAR_CTAMATERIAPRIMA'
      Origin = 'CONTPARAMETROS.PAR_CTAMATERIAPRIMA'
      OnGetText = QContabPAR_CTAMATERIAPRIMAGetText
      Size = 15
    end
    object QContabPAR_CTAPRODPROCESO: TIBStringField
      FieldName = 'PAR_CTAPRODPROCESO'
      Origin = 'CONTPARAMETROS.PAR_CTAPRODPROCESO'
      OnGetText = QContabPAR_CTAPRODPROCESOGetText
      Size = 15
    end
    object QContabPAR_CTAPRODTERMINADOS: TIBStringField
      FieldName = 'PAR_CTAPRODTERMINADOS'
      Origin = 'CONTPARAMETROS.PAR_CTAPRODTERMINADOS'
      OnGetText = QContabPAR_CTAPRODTERMINADOSGetText
      Size = 15
    end
    object QContabPAR_REPANEXOS: TIBStringField
      FieldName = 'PAR_REPANEXOS'
      Origin = 'CONTPARAMETROS.PAR_REPANEXOS'
      Size = 1
    end
    object QContabPAR_REPRESULTCOL1: TIBStringField
      FieldName = 'PAR_REPRESULTCOL1'
      Origin = 'CONTPARAMETROS.PAR_REPRESULTCOL1'
      Size = 5
    end
    object QContabPAR_REPRESULTCOL2: TIBStringField
      FieldName = 'PAR_REPRESULTCOL2'
      Origin = 'CONTPARAMETROS.PAR_REPRESULTCOL2'
      Size = 5
    end
    object QContabPAR_REPRESULTCOL3: TIBStringField
      FieldName = 'PAR_REPRESULTCOL3'
      Origin = 'CONTPARAMETROS.PAR_REPRESULTCOL3'
      Size = 5
    end
    object QContabPAR_REPANEXOSCTA: TIBStringField
      FieldName = 'PAR_REPANEXOSCTA'
      Origin = 'CONTPARAMETROS.PAR_REPANEXOSCTA'
      Size = 5
    end
    object QContabPAR_CTA_SELECTIVO_AD: TStringField
      FieldName = 'PAR_CTA_SELECTIVO_AD'
      OnGetText = QContabPAR_CTA_SELECTIVO_ADGetText
      Size = 15
    end
    object QContabPAR_CTA_SELECTIVO_CON: TStringField
      FieldName = 'PAR_CTA_SELECTIVO_CON'
      OnGetText = QContabPAR_CTA_SELECTIVO_CONGetText
      Size = 15
    end
    object QContabpar_cta_prima: TStringField
      FieldName = 'par_cta_prima'
      OnGetText = QContabpar_cta_primaGetText
      Size = 15
    end
    object QContabpar_cta_ingreso_cambio: TStringField
      FieldName = 'par_cta_ingreso_cambio'
      OnGetText = QContabpar_cta_ingreso_cambioGetText
      Size = 15
    end
    object QContabpar_cta_gasto_cambio: TStringField
      FieldName = 'par_cta_gasto_cambio'
      OnGetText = QContabpar_cta_gasto_cambioGetText
      Size = 15
    end
    object QContabpar_estado_resultado_inventario: TStringField
      FieldName = 'par_estado_resultado_inventario'
      Size = 5
    end
    object QContabpar_docnomina: TStringField
      FieldName = 'par_docnomina'
      OnGetText = QContabpar_docnominaGetText
      Size = 3
    end
    object QContabpar_ctasueldopagar: TStringField
      FieldName = 'par_ctasueldopagar'
      OnGetText = QContabpar_ctasueldopagarGetText
      Size = 15
    end
    object QContabpar_provision_regalia: TStringField
      FieldName = 'par_provision_regalia'
      OnGetText = QContabpar_provision_regaliaGetText
      Size = 15
    end
    object QContabpar_docnc_cxp: TStringField
      FieldName = 'par_docnc_cxp'
      OnGetText = QContabpar_docnc_cxpGetText
      Size = 15
    end
    object QContabpar_docnd_cxp: TStringField
      FieldName = 'par_docnd_cxp'
      OnGetText = QContabpar_docnd_cxpGetText
      Size = 15
    end
    object QContabpar_cta_mercancia_transito: TStringField
      FieldName = 'par_cta_mercancia_transito'
      OnGetText = QContabpar_cta_mercancia_transitoGetText
      Size = 15
    end
    object QContabpar_docliq: TStringField
      FieldName = 'par_docliq'
      OnGetText = QContabpar_docliqGetText
      Size = 3
    end
    object QContabpar_cta_itbis_compra: TStringField
      FieldName = 'par_cta_itbis_compra'
      OnGetText = QContabpar_cta_itbis_compraGetText
      Size = 15
    end
    object QContabpar_codifica_venta_familia: TStringField
      FieldName = 'par_codifica_venta_familia'
      Size = 5
    end
    object QContabpar_cta_intereses: TStringField
      FieldName = 'par_cta_intereses'
      OnGetText = QContabpar_cta_interesesGetText
      Size = 15
    end
    object QContabpar_cta_retencion_itbis: TStringField
      FieldName = 'par_cta_retencion_itbis'
      OnGetText = QContabpar_cta_retencion_itbisGetText
      Size = 15
    end
    object QContabpar_cta_retencion_isr: TStringField
      FieldName = 'par_cta_retencion_isr'
      OnGetText = QContabpar_cta_retencion_isrGetText
      Size = 15
    end
    object QContabpar_doc_conduce: TStringField
      FieldName = 'par_doc_conduce'
      OnGetText = QContabpar_doc_conduceGetText
      Size = 3
    end
    object QContabpar_doc_dev_compra: TStringField
      FieldName = 'par_doc_dev_compra'
      OnGetText = QContabpar_doc_dev_compraGetText
      Size = 3
    end
    object QContabpar_doc_trans_banco: TStringField
      FieldName = 'par_doc_trans_banco'
      OnGetText = QContabpar_doc_trans_bancoGetText
      Size = 3
    end
    object QContabpar_NCF_Sucursal: TBooleanField
      FieldName = 'par_NCF_Sucursal'
    end
    object QContabpar_ctaproplegvent: TStringField
      FieldName = 'par_ctaproplegvent'
      OnGetText = QContabpar_ctaproplegventGetText
      Size = 15
    end
    object QContabpar_ctaotrosimp: TStringField
      FieldName = 'par_ctaotrosimp'
      OnGetText = QContabpar_ctaotrosimpGetText
    end
    object QContabpar_ctaproplegcomp: TStringField
      FieldName = 'par_ctaproplegcomp'
      OnGetText = QContabpar_ctaproplegcompGetText
    end
    object QContabpar_ctafletecomp: TStringField
      FieldName = 'par_ctafletecomp'
      OnGetText = QContabpar_ctafletecompGetText
    end
    object QContabPAR_CONT_BALANU_COMPROB: TIntegerField
      FieldName = 'PAR_CONT_BALANU_COMPROB'
    end
    object QContabpar_ctadevventas: TStringField
      FieldName = 'par_ctadevventas'
      OnGetText = QContabpar_ctadevventasGetText
      Size = 15
    end
  end
  object dsContab: TDataSource
    DataSet = QContab
    Left = 56
    Top = 160
  end
  object QBusquedaProd: TADOQuery
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
      end>
    SQL.Strings = (
      'select '
      'BUS_CAMPO, BUS_POSICION, BUS_SECUENCIA, '
      'EMP_CODIGO '
      'from '
      'PRODBUSQUEDA'
      'WHERE'
      'EMP_CODIGO = :emp_codigo'
      'ORDER BY'
      'BUS_SECUENCIA')
    Left = 16
    Top = 184
    object QBusquedaProdBUS_CAMPO: TIBStringField
      FieldName = 'BUS_CAMPO'
      Origin = 'PRODBUSQUEDA.BUS_CAMPO'
      Size = 30
    end
    object QBusquedaProdBUS_POSICION: TIntegerField
      FieldName = 'BUS_POSICION'
      Origin = 'PRODBUSQUEDA.BUS_POSICION'
    end
    object QBusquedaProdBUS_SECUENCIA: TIntegerField
      FieldName = 'BUS_SECUENCIA'
      Origin = 'PRODBUSQUEDA.BUS_SECUENCIA'
    end
    object QBusquedaProdEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'PRODBUSQUEDA.EMP_CODIGO'
    end
  end
  object dsBusqueda: TDataSource
    DataSet = QBusquedaProd
    Left = 16
    Top = 216
  end
  object QRedondeo: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
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
      
        'emp_codigo, par_secuencia, par_desde, par_hasta, par_valor, par_' +
        'sumar'
      'from'
      'Redondeo_Precios'
      'where'
      'emp_codigo = :emp_codigo'
      'order by '
      'par_secuencia')
    Left = 56
    Top = 232
    object QRedondeoemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QRedondeopar_secuencia: TIntegerField
      FieldName = 'par_secuencia'
    end
    object QRedondeopar_desde: TBCDField
      FieldName = 'par_desde'
      Precision = 15
      Size = 2
    end
    object QRedondeopar_hasta: TBCDField
      FieldName = 'par_hasta'
      Precision = 15
      Size = 2
    end
    object QRedondeopar_valor: TBCDField
      FieldName = 'par_valor'
      Precision = 15
      Size = 2
    end
    object QRedondeopar_sumar: TStringField
      FieldName = 'par_sumar'
      Size = 1
    end
  end
  object QEnviaColector: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
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
      'emp_codigo, campo'
      'from'
      'copiar_colector'
      'where'
      'emp_codigo = :emp_codigo')
    Left = 56
    Top = 264
    object QEnviaColectoremp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QEnviaColectorcampo: TStringField
      FieldName = 'campo'
      Size = 50
    end
  end
  object QRecibeColector: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
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
      'emp_codigo, campo'
      'from'
      'recibir_colector'
      'where'
      'emp_codigo = :emp_codigo')
    Left = 56
    Top = 296
    object QRecibeColectoremp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QRecibeColectorcampo: TStringField
      FieldName = 'campo'
      Size = 50
    end
  end
  object QNCF: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterPost = QNCFAfterPost
    OnCalcFields = QNCFCalcFields
    Parameters = <>
    SQL.Strings = (
      'select'
      'n.NCF_Fijo, n.caja,'
      'n.NCF_Inicial, n.NCF_Final, n.NCF_Secuencia,'
      'n.NCF_Status, n.NCF_Fecha_Creacion'
      'from'
      'NCF_Ticket n'
      'order by'
      'n.caja, n.NCF_Fecha_Creacion desc, n.NCF_Fijo, n.NCF_Inicial')
    Left = 88
    Top = 232
    object QNCFNCF_Fijo: TStringField
      FieldName = 'NCF_Fijo'
      Size = 11
    end
    object QNCFNCF_Inicial: TBCDField
      FieldName = 'NCF_Inicial'
      DisplayFormat = '00000000'
      Precision = 18
      Size = 0
    end
    object QNCFNCF_Final: TBCDField
      FieldName = 'NCF_Final'
      DisplayFormat = '00000000'
      Precision = 18
      Size = 0
    end
    object QNCFNCF_Secuencia: TBCDField
      FieldName = 'NCF_Secuencia'
      DisplayFormat = '00000000'
      Precision = 18
      Size = 0
    end
    object QNCFNCF_Status: TStringField
      FieldName = 'NCF_Status'
      Size = 3
    end
    object QNCFCantidad: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Cantidad'
      Calculated = True
    end
    object QNCFNCF_Fecha_Creacion: TDateTimeField
      FieldName = 'NCF_Fecha_Creacion'
    end
    object QNCFcaja: TIntegerField
      FieldName = 'caja'
    end
  end
  object dsNCF: TDataSource
    DataSet = QNCF
    Left = 16
    Top = 248
  end
  object QNCF_Unico: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    OnCalcFields = QNCF_UnicoCalcFields
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
      'n.emp_codigo, n.suc_codigo, n.NCF_Fijo,'
      'n.NCF_Inicial, n.NCF_Final, n.NCF_Secuencia,'
      'n.NCF_Status, s.suc_nombre, n.NCF_Fecha_Creacion'
      'from'
      'NCF_Unico n, sucursales s'
      'where'
      'n.emp_codigo = :emp_codigo'
      'and n.emp_codigo = s.emp_codigo'
      'and n.suc_codigo = s.suc_codigo'
      'order by'
      
        'n.NCF_Fecha_Creacion desc, n.suc_codigo, n.NCF_Fijo, n.NCF_Inici' +
        'al')
    Left = 88
    Top = 264
    object QNCF_Unicoemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QNCF_Unicosuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QNCF_UnicoNCF_Fijo: TStringField
      FieldName = 'NCF_Fijo'
      Size = 11
    end
    object QNCF_UnicoNCF_Inicial: TBCDField
      FieldName = 'NCF_Inicial'
      DisplayFormat = '00000000'
      Precision = 18
      Size = 0
    end
    object QNCF_UnicoNCF_Final: TBCDField
      FieldName = 'NCF_Final'
      DisplayFormat = '00000000'
      Precision = 18
      Size = 0
    end
    object QNCF_UnicoNCF_Secuencia: TBCDField
      FieldName = 'NCF_Secuencia'
      DisplayFormat = '00000000'
      Precision = 18
      Size = 0
    end
    object QNCF_UnicoNCF_Status: TStringField
      FieldName = 'NCF_Status'
      Size = 3
    end
    object QNCF_Unicosuc_nombre: TStringField
      FieldName = 'suc_nombre'
      Size = 60
    end
    object QNCF_UnicoNCF_Fecha_Creacion: TDateTimeField
      FieldName = 'NCF_Fecha_Creacion'
    end
    object QNCF_UnicoCantidad: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Cantidad'
      Calculated = True
    end
  end
  object dsNCF_Unico: TDataSource
    DataSet = QNCF_Unico
    Left = 304
    Top = 272
  end
  object QNCF_Menores: TADOQuery
    Connection = DM.ADOSigma
    OnCalcFields = QNCF_MenoresCalcFields
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
      'n.emp_codigo, n.suc_codigo, n.NCF_Fijo,'
      'n.NCF_Inicial, n.NCF_Final, n.NCF_Secuencia,'
      'n.NCF_Status, s.suc_nombre, n.NCF_Fecha_Creacion'
      'from'
      'NCF_Menores n, sucursales s'
      'where'
      'n.emp_codigo = :emp_codigo'
      'and n.emp_codigo = s.emp_codigo'
      'and n.suc_codigo = s.suc_codigo'
      'order by'
      
        'n.NCF_Fecha_Creacion desc, n.suc_codigo, n.NCF_Fijo, n.NCF_Inici' +
        'al')
    Left = 88
    Top = 296
    object QNCF_Menoresemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QNCF_Menoressuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QNCF_MenoresNCF_Fijo: TStringField
      FieldName = 'NCF_Fijo'
      Size = 11
    end
    object QNCF_MenoresNCF_Inicial: TBCDField
      FieldName = 'NCF_Inicial'
      DisplayFormat = '00000000'
      Precision = 18
      Size = 0
    end
    object QNCF_MenoresNCF_Final: TBCDField
      FieldName = 'NCF_Final'
      DisplayFormat = '00000000'
      Precision = 18
      Size = 0
    end
    object QNCF_MenoresNCF_Secuencia: TBCDField
      FieldName = 'NCF_Secuencia'
      DisplayFormat = '00000000'
      Precision = 18
      Size = 0
    end
    object QNCF_MenoresNCF_Status: TStringField
      FieldName = 'NCF_Status'
      Size = 3
    end
    object QNCF_Menoressuc_nombre: TStringField
      FieldName = 'suc_nombre'
      Size = 60
    end
    object QNCF_MenoresNCF_Fecha_Creacion: TDateTimeField
      FieldName = 'NCF_Fecha_Creacion'
    end
    object QNCF_MenoresCantidad: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Cantidad'
      Calculated = True
    end
  end
  object dsNCF_Menores: TDataSource
    DataSet = QNCF_Menores
    Left = 120
    Top = 352
  end
  object QParamRH: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterPost = QParamRHAfterPost
    OnNewRecord = QParamRHNewRecord
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
      
        'emp_codigo, par_salario_minimo, par_idss_numero, par_periodo_pro' +
        'batorio, par_zona_inspeccion,'
      
        'par_categoria, par_poliza_numero, par_delegacion, par_de, par_cu' +
        'enta_bancaria, par_salario_contribucion,'
      
        'par_porcentaje_idss, par_tipo_descuento_salud, par_tipo_descuent' +
        'o_ss, par_aporte_empleado_ss,'
      
        'par_aporte_empresa_ss, par_tipo_ingrerso_salario, par_tipo_descu' +
        'ento_isr,'
      
        'par_tipo_descuento_afp, par_tipo_descuento_sfs, par_tipo_descuen' +
        'to_cxc,'
      'par_tipo_cliente_empleado, par_cajero, par_caja, par_acumulado,'
      
        'par_banco, par_rrhh_codigo_banco_popular, par_rrhh_suc_codigo_ba' +
        'nco_popular,'
      
        ' par_rrhh_numero_asignado, par_rrhh_secuencia_H, par_rrhh_email,' +
        'par_rrhh_numeroafiliacion'
      'from'
      'Param_RHumanos'
      'where'
      'emp_codigo = :emp_codigo')
    Left = 56
    Top = 328
    object QParamRHpar_salario_minimo: TBCDField
      FieldName = 'par_salario_minimo'
      currency = True
      Precision = 18
      Size = 0
    end
    object QParamRHpar_idss_numero: TStringField
      FieldName = 'par_idss_numero'
      FixedChar = True
      Size = 10
    end
    object QParamRHpar_periodo_probatorio: TStringField
      FieldName = 'par_periodo_probatorio'
      FixedChar = True
      Size = 10
    end
    object QParamRHpar_zona_inspeccion: TStringField
      FieldName = 'par_zona_inspeccion'
      FixedChar = True
      Size = 10
    end
    object QParamRHpar_categoria: TStringField
      FieldName = 'par_categoria'
      FixedChar = True
      Size = 10
    end
    object QParamRHpar_poliza_numero: TStringField
      FieldName = 'par_poliza_numero'
      FixedChar = True
      Size = 10
    end
    object QParamRHpar_delegacion: TStringField
      FieldName = 'par_delegacion'
      FixedChar = True
      Size = 10
    end
    object QParamRHpar_de: TStringField
      FieldName = 'par_de'
      FixedChar = True
      Size = 10
    end
    object QParamRHpar_cuenta_bancaria: TStringField
      FieldName = 'par_cuenta_bancaria'
      FixedChar = True
      Size = 10
    end
    object QParamRHpar_salario_contribucion: TStringField
      FieldName = 'par_salario_contribucion'
      FixedChar = True
      Size = 10
    end
    object QParamRHpar_porcentaje_idss: TStringField
      FieldName = 'par_porcentaje_idss'
      FixedChar = True
      Size = 10
    end
    object QParamRHpar_tipo_descuento_salud: TIntegerField
      FieldName = 'par_tipo_descuento_salud'
    end
    object QParamRHpar_tipo_descuento_ss: TIntegerField
      FieldName = 'par_tipo_descuento_ss'
    end
    object QParamRHpar_aporte_empleado_ss: TIntegerField
      FieldName = 'par_aporte_empleado_ss'
    end
    object QParamRHpar_aporte_empresa_ss: TIntegerField
      FieldName = 'par_aporte_empresa_ss'
    end
    object QParamRHpar_tipo_ingrerso_salario: TIntegerField
      FieldName = 'par_tipo_ingrerso_salario'
    end
    object QParamRHpar_tipo_descuento_isr: TIntegerField
      FieldName = 'par_tipo_descuento_isr'
    end
    object QParamRHpar_tipo_descuento_afp: TIntegerField
      FieldName = 'par_tipo_descuento_afp'
    end
    object QParamRHpar_tipo_descuento_sfs: TIntegerField
      FieldName = 'par_tipo_descuento_sfs'
    end
    object QParamRHpar_tipo_descuento_cxc: TIntegerField
      FieldName = 'par_tipo_descuento_cxc'
    end
    object QParamRHpar_tipo_cliente_empleado: TIntegerField
      FieldName = 'par_tipo_cliente_empleado'
    end
    object QParamRHemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QParamRHpar_cajero: TIntegerField
      FieldName = 'par_cajero'
    end
    object QParamRHpar_caja: TIntegerField
      FieldName = 'par_caja'
    end
    object QParamRHpar_acumulado: TStringField
      FieldName = 'par_acumulado'
      Size = 5
    end
    object QParamRHpar_banco: TIntegerField
      FieldName = 'par_banco'
    end
    object QParamRHpar_rrhh_codigo_banco_popular: TIntegerField
      FieldName = 'par_rrhh_codigo_banco_popular'
    end
    object QParamRHpar_rrhh_numero_asignado: TIntegerField
      FieldName = 'par_rrhh_numero_asignado'
    end
    object QParamRHpar_rrhh_secuencia_H: TIntegerField
      FieldName = 'par_rrhh_secuencia_H'
    end
    object QParamRHpar_rrhh_email: TStringField
      FieldName = 'par_rrhh_email'
      Size = 40
    end
    object QParamRHpar_rrhh_numeroafiliacion: TIntegerField
      FieldName = 'par_rrhh_numeroafiliacion'
    end
    object QParamRHpar_rrhh_suc_codigo_banco_popular: TIntegerField
      FieldName = 'par_rrhh_suc_codigo_banco_popular'
    end
  end
  object dsParamRH: TDataSource
    DataSet = QParamRH
    Left = 88
    Top = 328
  end
  object QTipoIngreso: TADOQuery
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
      end>
    SQL.Strings = (
      'select'
      'tin_codigo, tin_nombre'
      'from'
      'tipo_ingresos'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'tin_nombre')
    Left = 56
    Top = 360
    object QTipoIngresotin_codigo: TIntegerField
      FieldName = 'tin_codigo'
    end
    object QTipoIngresotin_nombre: TStringField
      FieldName = 'tin_nombre'
      Size = 60
    end
  end
  object dsTipoIngreso: TDataSource
    DataSet = QTipoIngreso
    Left = 88
    Top = 360
  end
  object QTipoDesc: TADOQuery
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
      end>
    SQL.Strings = (
      'select'
      'tde_codigo, tde_nombre'
      'from'
      'Tipo_Descuentos'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'tde_nombre')
    Left = 56
    Top = 392
    object QTipoDesctde_codigo: TIntegerField
      FieldName = 'tde_codigo'
    end
    object QTipoDesctde_nombre: TStringField
      FieldName = 'tde_nombre'
      Size = 60
    end
  end
  object dsTipoDesc: TDataSource
    DataSet = QTipoDesc
    Left = 88
    Top = 392
  end
  object QTipoCliente: TADOQuery
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
      end>
    SQL.Strings = (
      'select'
      'tcl_codigo, tcl_nombre'
      'from'
      'tipoclientes'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'tcl_nombre')
    Left = 56
    Top = 8
    object QTipoClientetcl_codigo: TIntegerField
      FieldName = 'tcl_codigo'
    end
    object QTipoClientetcl_nombre: TStringField
      FieldName = 'tcl_nombre'
      Size = 60
    end
  end
  object dsTipoCliente: TDataSource
    DataSet = QTipoCliente
    Left = 88
    Top = 8
  end
  object QCuentasTicket: TADOQuery
    Connection = DM.ADOSigma
    OnNewRecord = QCuentasTicketNewRecord
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
      'emp_codigo, caja, contado, credito, cxc, numero_entrada'
      'from'
      'Cuentas_Tickets'
      'where'
      'emp_codigo = :emp_codigo')
    Left = 125
    Top = 393
    object QCuentasTicketemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QCuentasTicketcaja: TStringField
      FieldName = 'caja'
      Size = 15
    end
    object QCuentasTicketcontado: TStringField
      FieldName = 'contado'
      Size = 15
    end
    object QCuentasTicketcredito: TStringField
      FieldName = 'credito'
      Size = 15
    end
    object QCuentasTicketcxc: TStringField
      FieldName = 'cxc'
      Size = 15
    end
    object QCuentasTicketnumero_entrada: TIntegerField
      FieldName = 'numero_entrada'
    end
  end
  object dsCuentasTicket: TDataSource
    DataSet = QCuentasTicket
    Left = 160
    Top = 392
  end
  object QPasar: TADOQuery
    Connection = DM.ADOSigma
    BeforePost = QPasarBeforePost
    Parameters = <>
    SQL.Strings = (
      'select'
      'Caja, Hasta, Tipo, Cajero, Porciento'
      'from'
      'NCF_Ticket_Pasar')
    Left = 125
    Top = 361
    object QPasarCaja: TIntegerField
      FieldName = 'Caja'
    end
    object QPasarHasta: TIntegerField
      FieldName = 'Hasta'
    end
    object QPasarTipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
    object QPasarCajero: TIntegerField
      FieldName = 'Cajero'
    end
    object QPasarPorciento: TBCDField
      FieldName = 'Porciento'
      currency = True
      Precision = 19
    end
  end
  object dsPasar: TDataSource
    DataSet = QPasar
    Left = 157
    Top = 361
  end
  object adoRangoDescVta: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    OnNewRecord = adoRangoDescVtaNewRecord
    Parameters = <>
    SQL.Strings = (
      'Select * From Rango_Descuento_Ventas')
    Left = 16
    Top = 360
  end
  object dsadoRangoDescVta: TDataSource
    DataSet = adoRangoDescVta
    Left = 16
    Top = 392
  end
  object QSucurs: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltReadOnly
    Parameters = <>
    SQL.Strings = (
      'select empresas.emp_codigo,empresas.emp_nombre, '
      
        'SUCURSALES.SUC_CODIGO ,(SUCURSALES.SUC_NOMBRE+'#39' CTA.:'#39'+BANCOS.BA' +
        'N_CUENTA) AS SUCNAME'
      
        'from empresas JOIN SUCURSALES ON empresas.emp_codigo=SUCURSALES.' +
        'emp_codigo'
      
        'JOIN BANCOS ON BANCOS.emp_codigo=SUCURSALES.emp_codigo AND BANCO' +
        'S.SUC_CODIGO=SUCURSALES.SUC_CODIGO'
      'where emp_status='#39'ACT'#39' AND BANCOS.BAN_CUENTA<>'#39#39)
    Left = 800
    Top = 152
    object QSucursemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QSucursemp_nombre: TStringField
      FieldName = 'emp_nombre'
      Size = 60
    end
    object QSucursSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QSucursSUCNAME: TStringField
      FieldName = 'SUCNAME'
      ReadOnly = True
      Size = 81
    end
  end
  object dsEmp: TDataSource
    DataSet = QSucursal
    Left = 688
    Top = 440
  end
  object dsBancos: TDataSource
    DataSet = QBancos
    Left = 272
    Top = 400
  end
  object QBancos: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    DataSource = dsEmp
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
      'select  ban_nombre+'#39' - '#39'+coalesce(ban_cuenta,'#39#39') as ban_nombre1,'
      'ban_codigo, ban_nombre'
      'from'
      'bancos'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'ban_nombre')
    Left = 240
    Top = 400
    object QBancosban_codigo: TIntegerField
      FieldName = 'ban_codigo'
    end
    object QBancosban_nombre: TStringField
      FieldName = 'ban_nombre'
      Size = 60
    end
    object QBancosban_nombre1: TStringField
      FieldName = 'ban_nombre1'
      ReadOnly = True
      Size = 78
    end
  end
  object dsSuc: TDataSource
    DataSet = QSucurs
    Left = 656
    Top = 440
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
      
        'select emp_codigo,emp_nombre from empresas where emp_status='#39'ACT' +
        #39)
    Left = 264
    Top = 432
    object QSucursalemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QSucursalemp_nombre: TStringField
      FieldName = 'emp_nombre'
      Size = 60
    end
  end
  object QBancosGenNomina: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    DataSource = dsEmp
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
      'select  ban_nombre+'#39' - '#39'+coalesce(ban_cuenta,'#39#39') as ban_nombre1,'
      'ban_codigo, ban_nombre'
      'from'
      'bancos'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'ban_nombre')
    Left = 840
    object IntegerField1: TIntegerField
      FieldName = 'ban_codigo'
    end
    object StringField1: TStringField
      FieldName = 'ban_nombre'
      Size = 60
    end
    object StringField2: TStringField
      FieldName = 'ban_nombre1'
      ReadOnly = True
      Size = 78
    end
  end
  object dsBancosGenNomina: TDataSource
    DataSet = QBancosGenNomina
    Left = 152
    Top = 24
  end
  object qParamAtraso: TADOQuery
    Connection = DM.ADOSigma
    AfterInsert = qParamAtrasoAfterInsert
    AfterEdit = qParamAtrasoAfterEdit
    AfterPost = qParamAtrasoAfterPost
    AfterCancel = qParamAtrasoAfterCancel
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
      
        'select Parametro, Desde, Hasta, codigo, Usuc, FechaC, usum, Fech' +
        'aM '
      'from param_atraso'
      'order by desde, Hasta')
    Left = 56
    Top = 424
    object qParamAtrasoParametro: TStringField
      FieldName = 'Parametro'
      Size = 30
    end
    object qParamAtrasoDesde: TIntegerField
      FieldName = 'Desde'
    end
    object qParamAtrasoHasta: TIntegerField
      FieldName = 'Hasta'
    end
    object qParamAtrasoCodigo: TStringField
      FieldName = 'Codigo'
      Size = 1
    end
    object qParamAtrasoUsuC: TStringField
      FieldName = 'UsuC'
    end
    object qParamAtrasoFechaC: TDateTimeField
      FieldName = 'FechaC'
    end
    object qParamAtrasoUsuM: TStringField
      FieldName = 'UsuM'
    end
    object qParamAtrasoFechaM: TDateTimeField
      FieldName = 'FechaM'
    end
  end
  object DS_ParamAtraso: TDataSource
    AutoEdit = False
    DataSet = qParamAtraso
    Left = 88
    Top = 424
  end
  object adoPrinters: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    OnNewRecord = adoPrintersNewRecord
    Parameters = <>
    SQL.Strings = (
      'Select * From Printers')
    Left = 144
    Top = 440
  end
  object dsPrinters: TDataSource
    AutoEdit = False
    DataSet = adoPrinters
    OnStateChange = dsPrintersStateChange
    Left = 144
    Top = 480
  end
  object adoPrinterxPC: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    SQL.Strings = (
      'Select * From Printer_en_PC')
    Left = 200
    Top = 440
    object adoPrinterxPCID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adoPrinterxPCNombre_PC: TStringField
      FieldName = 'Nombre_PC'
      Size = 50
    end
    object adoPrinterxPCIDPrinter: TIntegerField
      FieldName = 'IDPrinter'
    end
    object adoPrinterxPCPuerto: TStringField
      FieldName = 'Puerto'
      Size = 15
    end
    object adoPrinterxPCVelocidad: TIntegerField
      FieldName = 'Velocidad'
    end
    object adoPrinterxPCcntCopia: TIntegerField
      FieldName = 'cntCopia'
    end
    object adoPrinterxPCPrinterName: TStringField
      FieldKind = fkLookup
      FieldName = 'PrinterName'
      LookupDataSet = adoPrinters
      LookupKeyFields = 'IDPrinter'
      LookupResultField = 'Nombre'
      KeyFields = 'IDPrinter'
      Lookup = True
    end
    object adoPrinterxPCsustiruir_copia: TStringField
      FieldName = 'sustiruir_copia'
      Size = 5
    end
  end
  object dsadoPrinterxPC: TDataSource
    DataSet = adoPrinterxPC
    OnDataChange = dsadoPrinterxPCDataChange
    Left = 304
    Top = 440
  end
  object qAsignaVerifione: TADOQuery
    Connection = DM.ADOSigma
    OnNewRecord = qAsignaVerifioneNewRecord
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
      'ID, Caja, IP, PortCaja, PortPOS, TimeOut'
      'from'
      'VerifoneEnCaja'
      'order by'
      'id')
    Left = 56
    Top = 473
    object qAsignaVerifioneID: TIntegerField
      FieldName = 'ID'
    end
    object StringField3: TStringField
      FieldName = 'Caja'
      Size = 100
    end
    object qAsignaVerifioneIP: TStringField
      FieldName = 'IP'
      Size = 50
    end
    object qAsignaVerifionePortCaja: TIntegerField
      FieldName = 'PortCaja'
    end
    object qAsignaVerifionePortPOS: TIntegerField
      FieldName = 'PortPOS'
    end
    object qAsignaVerifioneTimeOut: TIntegerField
      FieldName = 'TimeOut'
    end
  end
  object ds_AsignaVerifione: TDataSource
    DataSet = qAsignaVerifione
    Left = 88
    Top = 473
  end
  object QeNCF: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterPost = QNCFAfterPost
    OnCalcFields = QNCFCalcFields
    Parameters = <
      item
        Name = 'emp'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select'
      
        'L.emp_codigo, Tipo, Secuencia_Inicial_DGII, Ultima_secuencia_DGI' +
        'I,'
      
        ' CONVERT(datetime, NULLIF(FechaVencimientoSecuenciaDGII,'#39#39'), 23)' +
        ' AS FechaVencimientoSecuenciaDGII'
      ''
      ', Cantidad, Cantidad as Final,  N.nombre_dgii, cantidad_minima'
      'from'
      'SecuenciaDGII L LEFT JOIN TipoNCF N ON N.emp_codigo=L.emp_codigo'
      'AND CAST(L.Tipo AS varchar(10))= CAST(N.cod_dgii AS varchar(10))'
      'WHERE L.emp_codigo=:emp')
    Left = 272
    Top = 184
    object QeNCFemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QeNCFSecuencia_Inicial_DGII: TIntegerField
      FieldName = 'Secuencia_Inicial_DGII'
    end
    object QeNCFTipo: TIntegerField
      FieldName = 'Tipo'
    end
    object QeNCFUltima_secuencia_DGII: TIntegerField
      FieldName = 'Ultima_secuencia_DGII'
    end
    object QeNCFCantidad: TIntegerField
      FieldName = 'Cantidad'
    end
    object QeNCFFechaVencimientoSecuenciaDGII: TDateField
      FieldName = 'FechaVencimientoSecuenciaDGII'
    end
    object QeNCFFinal: TIntegerField
      FieldName = 'Final'
    end
    object QeNCFnombre_dgii: TStringField
      FieldName = 'nombre_dgii'
    end
    object QeNCFcantidad_minima: TIntegerField
      FieldName = 'cantidad_minima'
    end
  end
  object DataSource1: TDataSource
    DataSet = QBusquedaProd
    Left = 56
    Top = 192
  end
  object dseNCF: TDataSource
    DataSet = QeNCF
    Left = 328
    Top = 184
  end
end
