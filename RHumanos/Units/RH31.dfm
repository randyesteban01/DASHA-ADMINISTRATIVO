object frmEmpleados: TfrmEmpleados
  Left = 387
  Top = 224
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Empleados'
  ClientHeight = 411
  ClientWidth = 671
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
    Width = 671
    Height = 42
    AutoSize = True
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 38
        Width = 667
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 654
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
  object TabControl1: TPageControl
    Left = 3
    Top = 39
    Width = 662
    Height = 369
    ActivePage = TabSheet1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    MultiLine = True
    ParentFont = False
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Datos personales'
      object Label14: TLabel
        Left = 8
        Top = 32
        Width = 40
        Height = 13
        Caption = 'Sucursal'
      end
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 82
        Height = 13
        Caption = 'C'#243'digo Empleado'
      end
      object Label2: TLabel
        Left = 8
        Top = 56
        Width = 42
        Height = 13
        Caption = 'Nombres'
      end
      object Label3: TLabel
        Left = 360
        Top = 56
        Width = 78
        Height = 13
        Caption = 'Apellido paterno'
      end
      object Label4: TLabel
        Left = 8
        Top = 80
        Width = 80
        Height = 13
        Caption = 'Apellido materno'
      end
      object Label5: TLabel
        Left = 361
        Top = 80
        Width = 24
        Height = 13
        Caption = 'Sexo'
      end
      object Label6: TLabel
        Left = 8
        Top = 104
        Width = 83
        Height = 13
        Caption = 'Fecha nacimiento'
      end
      object Label7: TLabel
        Left = 361
        Top = 104
        Width = 81
        Height = 13
        Caption = 'Lugar nacimiento'
      end
      object Label8: TLabel
        Left = 8
        Top = 128
        Width = 60
        Height = 13
        Caption = 'Nacionalidad'
      end
      object Label9: TLabel
        Left = 361
        Top = 128
        Width = 78
        Height = 13
        Caption = 'Lengua materna'
      end
      object Label10: TLabel
        Left = 8
        Top = 157
        Width = 33
        Height = 13
        Caption = 'C'#233'dula'
      end
      object Label11: TLabel
        Left = 360
        Top = 152
        Width = 49
        Height = 13
        Caption = 'Pasaporte'
      end
      object Label12: TLabel
        Left = 8
        Top = 176
        Width = 53
        Height = 13
        Caption = 'Estado civil'
      end
      object Label13: TLabel
        Left = 360
        Top = 200
        Width = 47
        Height = 13
        Caption = 'Tel'#233'fonos'
      end
      object Label15: TLabel
        Left = 8
        Top = 200
        Width = 43
        Height = 13
        Caption = 'Direcci'#243'n'
      end
      object Label16: TLabel
        Left = 8
        Top = 248
        Width = 28
        Height = 13
        Caption = 'e-mail'
      end
      object btpais: TSpeedButton
        Left = 140
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
        OnClick = btpaisClick
      end
      object btidioma: TSpeedButton
        Left = 492
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
        OnClick = btidiomaClick
      end
      object btestcivil: TSpeedButton
        Left = 140
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
        OnClick = btestcivilClick
      end
      object Label33: TLabel
        Left = 187
        Top = 8
        Width = 59
        Height = 13
        Caption = 'C'#243'digo viejo'
      end
      object Label34: TLabel
        Left = 435
        Top = 8
        Width = 50
        Height = 13
        Caption = 'Solicitud #'
      end
      object Label35: TLabel
        Left = 331
        Top = 8
        Width = 24
        Height = 13
        Caption = 'Edad'
      end
      object Label36: TLabel
        Left = 360
        Top = 176
        Width = 76
        Height = 13
        Caption = 'Acta nacimiento'
      end
      object Label17: TLabel
        Left = 8
        Top = 295
        Width = 66
        Height = 13
        Caption = 'Direcci'#243'n foto'
      end
      object Label37: TLabel
        Left = 360
        Top = 224
        Width = 33
        Height = 13
        Caption = 'Celular'
      end
      object btbuscarfoto: TSpeedButton
        Left = 96
        Top = 319
        Width = 73
        Height = 22
        Caption = 'Buscar foto'
        OnClick = btbuscarfotoClick
      end
      object btverfoto: TSpeedButton
        Left = 176
        Top = 319
        Width = 73
        Height = 22
        Caption = 'Mostrar foto'
        OnClick = btverfotoClick
      end
      object btsolicitud: TSpeedButton
        Left = 578
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
        OnClick = btsolicitudClick
      end
      object Label44: TLabel
        Left = 360
        Top = 248
        Width = 33
        Height = 13
        Caption = 'Oficina'
      end
      object btCuenta: TSpeedButton
        Left = 156
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
        OnClick = btCuentaClick
      end
      object Label19: TLabel
        Left = 8
        Top = 272
        Width = 35
        Height = 13
        Caption = 'Cuenta'
      end
      object Label61: TLabel
        Left = 208
        Top = 157
        Width = 20
        Height = 13
        Caption = 'Tipo'
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 96
        Top = 32
        Width = 505
        Height = 21
        DataField = 'suc_codigo'
        DataSource = dsEmpleados
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
        TabOrder = 3
      end
      object DBEdit1: TDBEdit
        Left = 96
        Top = 8
        Width = 81
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        DataField = 'emp_numero'
        DataSource = dsEmpleados
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 96
        Top = 56
        Width = 257
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'emp_nombres'
        DataSource = dsEmpleados
        TabOrder = 4
      end
      object DBEdit3: TDBEdit
        Left = 448
        Top = 56
        Width = 201
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'emp_apellido_paterno'
        DataSource = dsEmpleados
        TabOrder = 5
      end
      object DBEdit4: TDBEdit
        Left = 96
        Top = 80
        Width = 257
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'emp_apellido_materno'
        DataSource = dsEmpleados
        TabOrder = 6
      end
      object DBEdit6: TDBEdit
        Left = 96
        Top = 104
        Width = 257
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'emp_fecha_nacimiento'
        DataSource = dsEmpleados
        TabOrder = 8
      end
      object DBEdit7: TDBEdit
        Left = 448
        Top = 104
        Width = 201
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'emp_lugar_nacimiento'
        DataSource = dsEmpleados
        TabOrder = 9
      end
      object DBEdit8: TDBEdit
        Left = 96
        Top = 128
        Width = 41
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'pai_codigo'
        DataSource = dsEmpleados
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object tpais: TEdit
        Left = 168
        Top = 128
        Width = 185
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
      object DBEdit9: TDBEdit
        Left = 448
        Top = 128
        Width = 41
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'idi_codigo'
        DataSource = dsEmpleados
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
      end
      object tidioma: TEdit
        Left = 520
        Top = 128
        Width = 129
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
      object DBEdit10: TDBEdit
        Left = 96
        Top = 152
        Width = 105
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'emp_cedula'
        DataSource = dsEmpleados
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
      end
      object DBEdit11: TDBEdit
        Left = 448
        Top = 152
        Width = 201
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'emp_pasaporte'
        DataSource = dsEmpleados
        TabOrder = 15
      end
      object DBEdit12: TDBEdit
        Left = 96
        Top = 176
        Width = 41
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'est_codigo'
        DataSource = dsEmpleados
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
      end
      object testcivil: TEdit
        Left = 168
        Top = 176
        Width = 185
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
      object DBEdit13: TDBEdit
        Left = 448
        Top = 200
        Width = 97
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'emp_telefono1'
        DataSource = dsEmpleados
        TabOrder = 20
      end
      object DBEdit14: TDBEdit
        Left = 504
        Top = 200
        Width = 97
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'emp_telefono2'
        DataSource = dsEmpleados
        TabOrder = 21
      end
      object DBMemo1: TDBMemo
        Left = 96
        Top = 200
        Width = 257
        Height = 46
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'emp_direccion'
        DataSource = dsEmpleados
        TabOrder = 18
      end
      object DBEdit15: TDBEdit
        Left = 96
        Top = 248
        Width = 257
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'emp_email'
        DataSource = dsEmpleados
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 23
      end
      object DBEdit24: TDBEdit
        Left = 256
        Top = 8
        Width = 57
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'emp_codigo_viejo'
        DataSource = dsEmpleados
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit25: TDBEdit
        Left = 496
        Top = 8
        Width = 80
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        DataField = 'sol_numero'
        DataSource = dsEmpleados
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 26
      end
      object DBComboBox7: TDBComboBox
        Left = 448
        Top = 80
        Width = 201
        Height = 21
        Style = csDropDownList
        BevelKind = bkFlat
        DataField = 'emp_sexo'
        DataSource = dsEmpleados
        ItemHeight = 13
        Items.Strings = (
          'Masculino'
          'Femenino')
        TabOrder = 7
      end
      object DBEdit5: TDBEdit
        Left = 360
        Top = 8
        Width = 57
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clInfoBk
        DataField = 'emp_edad'
        DataSource = dsEmpleados
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit26: TDBEdit
        Left = 448
        Top = 176
        Width = 201
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'emp_acta_nacimiento'
        DataSource = dsEmpleados
        TabOrder = 17
      end
      object DBEdit27: TDBEdit
        Left = 96
        Top = 295
        Width = 505
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'emp_foto'
        DataSource = dsEmpleados
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 25
      end
      object DBEdit28: TDBEdit
        Left = 400
        Top = 224
        Width = 97
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'emp_celular'
        DataSource = dsEmpleados
        TabOrder = 22
      end
      object DBEdit29: TDBEdit
        Left = 448
        Top = 248
        Width = 97
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'emp_telefono_oficina'
        DataSource = dsEmpleados
        TabOrder = 24
      end
      object DBEdit17: TDBEdit
        Left = 96
        Top = 272
        Width = 57
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'cat_cuenta'
        DataSource = dsEmpleados
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 27
      end
      object tCuenta: TEdit
        Left = 180
        Top = 272
        Width = 421
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
      object cxComboBox1: TcxComboBox
        Left = 232
        Top = 152
        Properties.DropDownListStyle = lsFixedList
        Properties.ImmediatePost = True
        Properties.Items.Strings = (
          'Registro Nacional Contrib.'
          'Cedula'
          'Pasaporte')
        TabOrder = 29
        Text = 'Cedula'
        Width = 121
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Datos laborales'
      ImageIndex = 2
      object Label18: TLabel
        Left = 8
        Top = 8
        Width = 67
        Height = 13
        Caption = 'Fecha ingreso'
      end
      object Label20: TLabel
        Left = 8
        Top = 32
        Width = 23
        Height = 13
        Caption = 'Nivel'
      end
      object Label21: TLabel
        Left = 8
        Top = 56
        Width = 58
        Height = 13
        Caption = 'Clasificaci'#243'n'
      end
      object Label22: TLabel
        Left = 8
        Top = 80
        Width = 38
        Height = 13
        Caption = 'Posici'#243'n'
      end
      object Label23: TLabel
        Left = 8
        Top = 104
        Width = 58
        Height = 13
        Caption = 'Salario base'
      end
      object Label25: TLabel
        Left = 8
        Top = 128
        Width = 79
        Height = 13
        Caption = 'Cuenta bancaria'
      end
      object Label26: TLabel
        Left = 8
        Top = 152
        Width = 29
        Height = 13
        Caption = 'Banco'
      end
      object Label27: TLabel
        Left = 200
        Top = 128
        Width = 71
        Height = 13
        Caption = 'Tipo de cuenta'
      end
      object Label28: TLabel
        Left = 8
        Top = 176
        Width = 36
        Height = 13
        Caption = 'Estatus'
      end
      object Label29: TLabel
        Left = 200
        Top = 176
        Width = 68
        Height = 13
        Caption = 'Fecha estatus'
      end
      object Label30: TLabel
        Left = 8
        Top = 200
        Width = 40
        Height = 13
        Caption = 'Poncha?'
      end
      object Label31: TLabel
        Left = 200
        Top = 200
        Width = 84
        Height = 13
        Caption = 'Tipo de empleado'
      end
      object Label32: TLabel
        Left = 8
        Top = 224
        Width = 67
        Height = 13
        Caption = 'Grupo trabajo'
      end
      object Label38: TLabel
        Left = 8
        Top = 248
        Width = 69
        Height = 13
        Caption = 'Nomina salario'
      end
      object Label39: TLabel
        Left = 224
        Top = 296
        Width = 73
        Height = 13
        Caption = 'N'#250'mero tarjeta'
      end
      object Label40: TLabel
        Left = 224
        Top = 248
        Width = 72
        Height = 13
        Caption = 'Tipo asalariado'
      end
      object Label41: TLabel
        Left = 8
        Top = 272
        Width = 72
        Height = 13
        Caption = 'Forma de pago'
      end
      object Label42: TLabel
        Left = 8
        Top = 296
        Width = 59
        Height = 13
        Caption = 'Nivel salarial'
      end
      object Label43: TLabel
        Left = 392
        Top = 280
        Width = 143
        Height = 13
        Caption = 'Excluir empleado del pago de:'
      end
      object btinsertnom: TSpeedButton
        Left = 501
        Top = 15
        Width = 20
        Height = 19
        Glyph.Data = {
          DE000000424DDE0000000000000076000000280000000D0000000D0000000100
          0400000000006800000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7000777777077777700077777700777770007777770607777000770000066077
          7000770666666607700077066666666070007706666666077000770000066077
          7000777777060777700077777700777770007777770777777000777777777777
          7000}
        OnClick = btinsertnomClick
      end
      object btdeletenom: TSpeedButton
        Left = 501
        Top = 34
        Width = 20
        Height = 19
        Glyph.Data = {
          DE000000424DDE0000000000000076000000280000000D0000000D0000000100
          0400000000006800000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7000777777077777700077777007777770007777060777777000777066000007
          7000770666666607700070666666660770007706666666077000777066000007
          7000777706077777700077777007777770007777770777777000777777777777
          7000}
        OnClick = btdeletenomClick
      end
      object Label45: TLabel
        Left = 448
        Top = 248
        Width = 88
        Height = 13
        Caption = 'F: Fijo, V: Variable'
      end
      object DBText1: TDBText
        Left = 165
        Top = 10
        Width = 220
        Height = 17
        DataField = 'TiempoLabor'
        DataSource = dsEmpleados
        Visible = False
      end
      object Label62: TLabel
        Left = 175
        Top = 10
        Width = 59
        Height = 13
        Caption = 'Fecha salida'
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 388
        Top = 112
        Width = 85
        Height = 57
        Caption = 'Descontar SS'
        DataField = 'emp_seguro_social'
        DataSource = dsEmpleados
        Items.Strings = (
          'Si'
          'No')
        TabOrder = 21
        Values.Strings = (
          'Si'
          'No')
      end
      object DBCheckBox1: TDBCheckBox
        Left = 224
        Top = 272
        Width = 161
        Height = 17
        Caption = 'Empleado titular de la posici'#243'n'
        DataField = 'emp_titular'
        DataSource = dsEmpleados
        TabOrder = 17
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBEdit16: TDBEdit
        Left = 96
        Top = 8
        Width = 65
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'emp_fecha_entrada'
        DataSource = dsEmpleados
        TabOrder = 0
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 96
        Top = 32
        Width = 289
        Height = 21
        DataField = 'niv_codigo'
        DataSource = dsEmpleados
        KeyField = 'niv_codigo'
        ListField = 'niv_nombre'
        ListSource = dsNiveles
        TabOrder = 1
        OnClick = DBLookupComboBox1Click
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 96
        Top = 56
        Width = 289
        Height = 21
        DataField = 'cla_codigo'
        DataSource = dsEmpleados
        KeyField = 'cla_nivel'
        ListField = 'niv_nombre'
        ListSource = dsClasif
        TabOrder = 2
        OnClick = DBLookupComboBox3Click
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 96
        Top = 80
        Width = 289
        Height = 21
        DataField = 'pos_codigo'
        DataSource = dsEmpleados
        KeyField = 'pos_codigo'
        ListField = 'pos_nombre'
        ListSource = dsPosicion
        TabOrder = 3
      end
      object DBEdit18: TDBEdit
        Left = 96
        Top = 104
        Width = 97
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'emp_salario'
        DataSource = dsEmpleados
        TabOrder = 4
      end
      object DBEdit20: TDBEdit
        Left = 96
        Top = 128
        Width = 97
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'emp_cuenta_bancaria'
        DataSource = dsEmpleados
        TabOrder = 5
      end
      object DBLookupComboBox5: TDBLookupComboBox
        Left = 96
        Top = 152
        Width = 289
        Height = 21
        DataField = 'ban_codigo'
        DataSource = dsEmpleados
        KeyField = 'ban_codigo'
        ListField = 'ban_nombre'
        ListSource = dsBancos
        TabOrder = 7
      end
      object DBComboBox1: TDBComboBox
        Left = 288
        Top = 128
        Width = 97
        Height = 21
        Style = csDropDownList
        DataField = 'emp_tipo_cuenta'
        DataSource = dsEmpleados
        ItemHeight = 13
        Items.Strings = (
          'Ahorro'
          'Corriente')
        TabOrder = 6
      end
      object DBEdit21: TDBEdit
        Left = 96
        Top = 176
        Width = 97
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        DataField = 'emp_status'
        DataSource = dsEmpleados
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object DBEdit22: TDBEdit
        Left = 288
        Top = 176
        Width = 97
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'emp_fecha_status'
        DataSource = dsEmpleados
        TabOrder = 9
      end
      object DBComboBox2: TDBComboBox
        Left = 96
        Top = 200
        Width = 97
        Height = 21
        Style = csDropDownList
        DataField = 'emp_poncha'
        DataSource = dsEmpleados
        ItemHeight = 13
        Items.Strings = (
          'Si'
          'No')
        TabOrder = 10
      end
      object DBLookupComboBox6: TDBLookupComboBox
        Left = 288
        Top = 200
        Width = 97
        Height = 21
        DataField = 'tip_codigo'
        DataSource = dsEmpleados
        KeyField = 'tip_codigo'
        ListField = 'tip_nombre'
        ListSource = dsTipoEmp
        TabOrder = 11
      end
      object DBLookupComboBox7: TDBLookupComboBox
        Left = 96
        Top = 224
        Width = 289
        Height = 21
        DataField = 'gru_codigo'
        DataSource = dsEmpleados
        KeyField = 'gru_codigo'
        ListField = 'gru_nombre'
        ListSource = dsGrupo
        TabOrder = 12
      end
      object DBLookupComboBox8: TDBLookupComboBox
        Left = 96
        Top = 248
        Width = 121
        Height = 21
        DataField = 'tno_codigo'
        DataSource = dsEmpleados
        KeyField = 'tno_codigo'
        ListField = 'tno_nombre'
        ListSource = dsTipoNomina
        TabOrder = 13
      end
      object DBComboBox3: TDBComboBox
        Left = 304
        Top = 248
        Width = 81
        Height = 21
        Style = csDropDownList
        DataField = 'emp_tipo_asalariado'
        DataSource = dsEmpleados
        ItemHeight = 13
        Items.Strings = (
          'Fijo'
          'Por Hora')
        TabOrder = 14
      end
      object DBComboBox4: TDBComboBox
        Left = 96
        Top = 272
        Width = 121
        Height = 21
        Style = csDropDownList
        DataField = 'emp_forma_pago'
        DataSource = dsEmpleados
        ItemHeight = 13
        Items.Strings = (
          'Efectivo'
          'Banco'
          'Cheque')
        TabOrder = 16
      end
      object DBLookupComboBox9: TDBLookupComboBox
        Left = 96
        Top = 296
        Width = 121
        Height = 21
        DataField = 'emp_nivel_salarial'
        DataSource = dsEmpleados
        KeyField = 'niv_codigo'
        ListField = 'niv_nombre'
        ListSource = dsNivelSalarial
        TabOrder = 18
      end
      object DBEdit23: TDBEdit
        Left = 304
        Top = 296
        Width = 81
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'emp_tarjeta'
        DataSource = dsEmpleados
        TabOrder = 19
      end
      object DBComboBox5: TDBComboBox
        Left = 392
        Top = 248
        Width = 49
        Height = 21
        Style = csDropDownList
        DataField = 'emp_salario_tesoreria'
        DataSource = dsEmpleados
        ItemHeight = 13
        Items.Strings = (
          'F'
          'V')
        TabOrder = 15
      end
      object DBComboBox6: TDBComboBox
        Left = 392
        Top = 296
        Width = 177
        Height = 21
        Style = csDropDownList
        DataField = 'emp_excluir_pago'
        DataSource = dsEmpleados
        ItemHeight = 13
        Items.Strings = (
          'Bonificacion'
          'Anticipo Bonificacion'
          'Anticipo y Bonificacion'
          'Ninguno')
        TabOrder = 20
      end
      object StaticText1: TStaticText
        Left = 388
        Top = 0
        Width = 113
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Tipos de Nomina'
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 22
      end
      object StaticText2: TStaticText
        Left = 520
        Top = 0
        Width = 113
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Nominas Empleado'
        Color = clInfoBk
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 23
      end
      object DBLookupListBox1: TDBLookupListBox
        Left = 388
        Top = 16
        Width = 113
        Height = 65
        BevelKind = bkFlat
        BorderStyle = bsNone
        KeyField = 'tno_codigo'
        ListField = 'tno_nombre'
        ListSource = dsTipoNominaEmp
        TabOrder = 24
        OnClick = DBLookupListBox1Click
      end
      object DBLookupListBox2: TDBLookupListBox
        Left = 520
        Top = 16
        Width = 113
        Height = 65
        BevelKind = bkFlat
        BorderStyle = bsNone
        KeyField = 'tno_codigo'
        ListField = 'tno_nombre'
        ListSource = dsNominaEmp
        TabOrder = 25
      end
      object DBEdit39: TDBEdit
        Left = 248
        Top = 8
        Width = 65
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'emp_fecha_salida'
        DataSource = dsEmpleados
        TabOrder = 26
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Otros datos'
      ImageIndex = 2
      object btestudios: TSpeedButton
        Left = 8
        Top = 280
        Width = 81
        Height = 57
        Caption = 'Estudios'
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000007F7F0000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF0000000000007F7F7F7F7F7F7F7F7F0000007F
          7F00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF0000000000007F7F7F7F7F7FFFFFFFFFFFFFBFBFBFBFBFBF00
          00007F7F00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF0000000000007F7F7F7F7F7FFFFFFFFFFFFFBFBFBFBFBFBF7F7F7FBFBFBFBF
          BFBF0000007F7F00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000
          007F7F7F7F7F7FFFFFFFFFFFFFBFBFBF7F7F7F0000000000000000007F7F7FBF
          BFBFBFBFBF0000007F7F00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000007F7F7F7F7F
          7FFFFFFFFFFFFFBFBFBF7F7F7F000000000000000000FFFF00FFFF000000007F
          7F7FBFBFBFBFBFBF0000007F7F00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000007F7F7F0000000000007F7F00000000FFFFFFFFFF
          FFBFBFBF7F7F7F000000000000000000FFFF00FFFF00FFFF00FFFF00FFFF0000
          00007F7F7FBFBFBFBFBFBF0000007F7F00000000FFFFFFFFFFFFFFFFFF000000
          00007F00007F00007F00007F000000007F000000007F7F00000000BFBFBF7F7F
          7F000000000000000000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF000000007F7F7FBFBFBFBFBFBF0000007F7F00000000FFFFFFFFFFFF000000
          0000FF0000FF00007F00007F00000000FF000000007F7F000000000000000000
          00000000FFFF00FFFF00FFFF00FFFF007F7F007F7F00FFFF00FFFF00FFFF00FF
          FF00FFFF000000007F7F7FBFBFBFBFBFBF0000007F7F00000000FFFFFF000000
          0000FF00007F0000FF00007F00000000FF000000007F7F00000000000000FFFF
          00FFFF00FFFF00FFFF007F7F007F7F00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF000000007F7F7FBFBFBFBFBFBF000000000000FFFFFF000000
          0000FF0000FF00007F00007F00000000FF000000000000000000007F7F00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF000000007F7F7FBFBFBF000000FFFFFFFFFFFF000000
          0000FF00007F0000FF00007F00000000FF0000FF00000000FFFF000000007F7F
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF007F7F007F
          7F00FFFF00FFFF00FFFF00FFFF000000007F7F7F000000FFFFFFFFFFFF000000
          0000FF0000FF00007F00007F00000000FF00007F0000FF00000000FFFF000000
          007F7F00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF007F7F007F7F00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00000000000000FFFFFFFFFFFF000000
          0000FF00007F0000FF00007F00000000FF0000FF00007F00007F00000000FFFF
          000000007F7F00FFFF00FFFF00FFFF007F7F007F7F00FFFF00FFFF00FFFF00FF
          FF007F7F007F7F00FFFF00FFFF00FFFF00FFFF00000000000000FFFFFF000000
          0000FF0000FF00007F00007F00000000FF00007F0000FF00007F00007F000000
          00FFFF000000007F7F00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF007F7F007F
          7F00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00000000FFFFFF000000
          0000FF00007F0000FF00007F00000000FF0000FF00007F00007F00007F000000
          00000000FFFF000000007F7F00FFFF00FFFF00FFFF007F7F007F7F00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00000000000000FFFFFFFFFFFF000000
          0000FF0000FF00007F00007F00000000FF00007F0000FF00007F00007F000000
          0000FFFF000000FFFF000000007F7F00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000
          0000FF00007F0000FF00007F00000000FF0000FF00007F00007F00007F000000
          0000FFFF007F7F000000FFFF000000007F7F00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
          0000FF0000FF00007F00007F00000000FF00007F0000FF00007F00007F000000
          0000FFFF00FFFF007F7F000000FFFF000000007F7F00FFFF00FFFF00FFFF0000
          0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
          0000FF00007F0000FF00007F00000000FF0000FF00007F00007F00007F000000
          0000FFFF007F7F00FFFF007F7F000000FFFF000000007F7F00000000000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
          0000FF0000FF00007F00007F00000000FF00007F0000FF00007F00007F000000
          0000FFFF00FFFF007F7F007F7F007F7F000000000000000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
          0000FF00007F0000FF00007F00000000FF0000FF0000FF0000FF00007F000000
          0000FFFF007F7F00FFFF007F7F007F7F000000007F7F000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
          0000FF0000FF00007F00007F00000000FF000000000000000000000000000000
          0000FFFF00FFFF007F7F007F7F007F7F000000007F7F000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
          0000FF00007F0000FF00007F0000000000000000007F7F7FBFBFBF0000000000
          0000FFFF00FFFF00FFFF00FFFF007F7F000000007F7F000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
          0000FF0000FF0000FF00007F0000000000007F7F7F7F7F7FBFBFBFBFBFBF0000
          0000FFFF000000000000000000000000000000007F7F000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
          0000FF00000000000000000000000000007F0000007F7F7F7F7F7FBFBFBF0000
          000000007F7F7F7F7F7FBFBFBF000000000000007F7F000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
          0000007F7F7FBFBFBFBFBFBF00000000007F00007F0000007F7F7F0000000000
          000000007F7F7F7F7F7FBFBFBFBFBFBF000000007F7F000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000007F7F7F7F7F7FBFBFBFBFBFBF00000000007F000000000000000000FFFF
          FFFFFFFF0000007F7F7F7F7F7FBFBFBFBFBFBF000000000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF0000007F7F7F7F7F7FBFBFBFBFBFBF000000000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF0000007F7F7F7F7F7F000000BFBFBF000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000007F7F7F7F7F7F000000BFBFBF000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000000000FFFFFF000000000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000000000FFFFFF000000000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Layout = blGlyphTop
        OnClick = btestudiosClick
      end
      object btexperiencia: TSpeedButton
        Left = 93
        Top = 280
        Width = 113
        Height = 57
        Caption = 'Experiencia laboral'
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF000000000000707770707770707770FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF00000000000090C8FF2F6790000000707770707770707770FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF0000000000006097CF6097CF90C8FF2F67902F679000000070777070777070
          7770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF0000006097CF6097CF6097CF90C8FF2F67902F67902F679000000070777070
          7770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF0000006097CF90C8FF00306090C8FF2F67902F67902F67902F679000000070
          7770707770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000007077707077707077707077707077
          700000006097CF0030606097CF90C8FF2F67902F67902F67902F67902F679000
          0000707770707770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF0000000000000030600000007077707077707077707077
          700000006097CF6097CF6097CF90C8FF2F67902F67902F67902F67902F67902F
          6790000000707770707770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF0000000000006097CF6097CF0030600030600000007077707077707077
          700000006097CF6097CF2F67902F67902F67902F67902F67902F67902F67902F
          67902F6790000000707770707770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000006097CF6097CF6097CF6097CF0030600030600030600000007077707077
          700000002F67902F67906097CF90C8FF2F67902F67902F67902F67902F67902F
          67902F67902F6790000000707770707770707770FFFFFFFFFFFFFFFFFFFFFFFF
          0000006097CF90C8FF0030606097CF0030600030600030600030600000007077
          700000006097CF6097CF6097CF90C8FF2F67902F67902F67902F67902F67902F
          67902F67902F67902F6790000000707770707770707770FFFFFFFFFFFFFFFFFF
          0000006097CF0030606097CF6097CF0030600030600030600030600030600000
          000000006097CF90C8FF00306090C8FF2F67902F67902F67902F67902F67902F
          67902F67902F67902F67902F6790000000707770707770707770FFFFFFFFFFFF
          0000006097CF6097CF6097CF6097CF0030600030600030600030600030606097
          CF0030606097CF0030602F679090C8FF2F67902F67902F67902F67902F67902F
          67902F67902F67902F67902F6790000000707770707770FFFFFFFFFFFFFFFFFF
          0000006097CF6097CF2F67902F67900030600030600030606097CF6097CF6097
          CF0030602F67902F67900030600030600030602F67902F67902F67902F67902F
          67902F67902F67902F67902F6790000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000002F67902F67906097CF6097CF0030606097CF6097CF0030600030602F67
          900030600030600030606097CF6097CF2F67900030602F67902F67902F67902F
          67902F67902F67902F67902F6790000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000006097CF6097CF6097CF6097CF0030606097CF0030602F67902F67900030
          600030606097CF6097CF6097CFFFFFFF2F67902F67900030602F67902F67902F
          67902F67902F67902F67902F6790000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000006097CF90C8FF0030606097CF0030602F67902F67900030600030606097
          CF6097CF6097CF6097CF90C8FF90C8FFFFFFFF2F67902F67900030602F67902F
          67902F67902F67902F67902F6790000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000006097CF0030606097CF2F67900030600030600030606097CF6097CF6097
          CF6097CF90C8FF90C8FF90C8FF90C8FF90C8FFFFFFFF2F67902F67900030602F
          67902F67902F67902F67902F6790000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000006097CF2F67902F67900030600030606097CF6097CF6097CF6097CF90C8
          FF90C8FF90C8FF90C8FF90C8FF90C8FF90C8FF90C8FFFFFFFF2F67902F679000
          30602F67900030602F67902F6790000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000002F67900030600030606097CF6097CF6097CF6097CF90C8FF90C8FF90C8
          FF90C8FF90C8FF90C8FF90C8FF90C8FF90C8FF90C8FF90C8FFFFFFFF2F67902F
          67900030600030602F67902F6790000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000000030606097CF6097CF6097CF6097CF90C8FF90C8FF90C8FF6097CF6097
          CF90C8FF90C8FF90C8FF90C8FF90C8FF90C8FF90C8FF90C8FF90C8FFFFFFFF2F
          67900030600030602F67902F6790000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000006097CF6097CF6097CF90C8FF90C8FF90C8FF6097CF6097CFFFFFFFFFFF
          FF6097CF90C8FF90C8FF90C8FF90C8FF90C8FF90C8FF6097CF6097CF6097CF60
          97CF0030600030600030602F6790000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000006097CF90C8FF90C8FF90C8FF6097CF6097CFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF6097CF90C8FF90C8FF90C8FF90C8FF6097CF00000000000000000060
          97CF6097CF0030602F6790003060000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF00000090C8FF90C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFDFD8DF6097CF6097CF6097CF90C8FF90C8FF000000A09F9FA09F9FA09F9F00
          00006097CF6097CF2F67902F6790000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF00000090C8FF90C8FFFFFFFFFFFFFFFFFFFFFFFFFFDFD8DFA09F
          9F0000000000000000000000006097CF90C8FF000000FFFFFF000000505050A0
          9F9F00000090C8FFFFFFFF2F6790000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00000090C8FF90C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF90C8FF000000505050FFFFFF00000000
          000090C8FF90C8FF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF00000090C8FF90C8FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF90C8FF90C8FF90C8FF90C8FF505050A09F9F00000090
          C8FF404040000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000090C8FF90C8FFFFFFFFFFFFFFFFFF
          FFFFFFFF90C8FF90C8FF90C8FF90C8FF90C8FF90C8FF50505050505040404040
          4040006700008700000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000090C8FF90C8FFFFFFFF90C8
          FF90C8FF90C8FF90C8FF90C8FF90C8FF90C8FF90C8FF40404040404000D80000
          FF0000A800008700000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000090C8FF90C8FF90C8
          FF90C8FF90C8FF90C8FF90C8FF90C8FF40404040404000D80000FF0000A80000
          A80000C800000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000090C8FF90C8
          FF90C8FF90C8FF90C8FF00000000000000D80000FF0000A80000C80000A80000
          0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000090C8
          FF90C8FF000000000000FFFFFFFFFFFF00000000A80000C800000000000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Layout = blGlyphTop
        OnClick = btexperienciaClick
      end
      object btdependientes: TSpeedButton
        Left = 291
        Top = 280
        Width = 81
        Height = 57
        Caption = 'Dependientes'
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000000000000000000000505050505050505050505050FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00000000000000C8FF00C8FF0067FF0067FF00000050505050505050505050
          5050FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000
          0000C8FF0030CF00C8FF00C8FF0067FF0067FF0067FF00000000000050505050
          5050505050505050FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000C8
          FF00C8FF0030CF00C8FF00C8FF0067FF0067FF0067FF0000009067CF00000050
          5050505050505050505050505050FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000000000CF9790CF979060302F60302F00000000C8
          FF00C8FF0030CF00C8FF00C8FF0067FF0067FF0067FF0000009067CF2F009000
          0000505050505050505050505050505050505050FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000000000CF979060302FCF9790CF979060302F60302F00000000C8
          FF00C8FF0030CF00C8FF00C8FF0067FF0067FF0067FF0000009067CF2F00902F
          0090000000505050505050505050505050505050FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000CF9790CF979060302FCF9790CF979060302F60302F00000000C8
          FF00C8FF0030CF00C8FF00C8FF0067FF0067FF0067FF0000009067CF2F00902F
          0090000000505050505050505050FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000CF9790CF979060302FCF9790CF979060302F60302F00000000C8
          FF00C8FF0030CF00C8FF00C8FF0067FF0067FF0067FF0000009067CF2F00902F
          0090000000505050FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000CF9790CF979060302FCF9790CF979060302F60302F00000000C8
          FF00C8FF0030CF00C8FF00C8FF0067FF0067FF0067FF0000009067CF2F00902F
          0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000CF9790CF979060302FCF9790CF979060302F60302F00000000C8
          FF00C8FF0030CF00C8FF00C8FF0030CF0030CF0030CF0000009067CF2F00902F
          0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000CF9790CF979060302FCF9790CF979060302F60302F00000000C8
          FF00C8FF0030CF00C8FF00C8FF00C8FF0030CF0030CF0000009067CF2F00902F
          0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000CF9790CF979060302FCF9790CF979060302F00000000C8FF00C8
          FF00C8FF00C8FF00C8FF00C8FF00C8FF0067FF0030CF0000009067CF2F00902F
          0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000CF9790CF979060302FCF9790CF979060302F00000000C8FF00C8
          FF00C8FF00C8FF00C8FF00C8FF00C8FF0067FF0067FF0030CF0000002F00902F
          0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000CF9790CF979060302FCF9790CF9790CF979000000000C8FF00C8
          FF00C8FF00C8FF00C8FF00C8FF00C8FF0067FF0067FF0067FF0000009067CF00
          0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          000000CF9790CF9790CF9790CF9790CF9790CF9790CF979000000000C8FF00C8
          FF00C8FF00C8FF00C8FF00C8FF00C8FF0067FF0067FF0067FF0000009067CF2F
          0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          000000CF9790CF9790CF9790CF9790CF9790CF9790CF979000000000C8FF00C8
          FF00C8FF00C8FF00C8FF00C8FF00C8FF0067FF0067FF0067FF0000009067CF2F
          00902F0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          000000CF9790CF9790CF9790CF9790CF9790CF9790CF979000000000C8FF00C8
          FF00C8FF00C8FF00C8FF00C8FF00C8FF0067FF0067FF0067FF0000009067CF2F
          00902F0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          000000CF9790CF9790CF9790CF9790CF9790CF9790CF979000000000C8FF00C8
          FF00C8FF00C8FF00C8FF00C8FF00C8FF0067FF0067FF0067FF0000009067CF2F
          00902F0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          000000CF9790CF9790CF9790CF9790CF9790CF9790CF979000000000C8FF00C8
          FF00C8FF00C8FF00C8FFFFFFFFFFFFFF0067FF0067FF0067FF0000009067CF2F
          00902F0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          000000CF9790CF9790CF9790CF9790CF9790CF9790CF979000000000C8FF00C8
          FF00C8FFFFFFFFFFFFFF60C8FF60C8FF60C8FF60C8FF0067FF0000009067CF2F
          00902F0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          000000CF9790CF9790CF9790CF9790CF9790CF9790CF979000000000C8FFFFFF
          FFFFFFFF0067FF0067FF0067FF0067FF0067FF0067FF60C8FF0000009067CF2F
          00902F0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          000000CF9790CF9790CF9790CF9790CF9790FFFFFFFFFFFF00000000000060C8
          FF5050500000000000000000000000000067FF000000000000FFFFFF9067CF2F
          00902F0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          000000CF9790CF9790CF9790FFFFFFFFFFFFFFC8CFFFC8CFFFC8CF00000060C8
          FF000000505050505050404040505050000000FFFFFFCF97FFCF97FFCF97FFCF
          97FF2F0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          000000CF9790FFFFFFFFFFFF60302F60302F60302F60302F60302F60302F0F0F
          0F404040A09F9FA09F9FA09F9F5050504040400000002F00902F00902F00902F
          0090CF97FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFC8CF50505000000000000000000000000060302F0000001F20
          1FA09F9FDFD8DFDFD8DFBFBFBF9097904040400000000000000000002F009000
          0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFC8CF000000505050505050404040505050000000FFFFFF0F0F
          0FDFD8DFFFFFFFFFFFFFDFD8DFA09F9F505050000000404040505050000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0F0F0F404040A09F9FA09F9FA09F9F5050504040400000001F20
          1FDFD8DFFFFFFFFFFFFFDFD8DFA09F9F404040000000A09F9F50505040404000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF1F201FA09F9FDFD8DFDFD8DFBFBFBF909790404040000000FFFF
          FF1F201FDFD8DFBFBFBF9097904040400F0F0FDFD8DFBFBFBF90979040404000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0F0F0FDFD8DFFFFFFFFFFFFFDFD8DFA09F9F505050000000FFFF
          FFFFFFFF0F0F0F0F0F0F000000404040FFFFFFFFFFFFDFD8DFA09F9F50505000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF1F201FDFD8DFFFFFFFFFFFFFDFD8DFA09F9F404040000000FFFF
          FFFFFFFFFFFFFFFFFFFF1F201FDFD8DFFFFFFFFFFFFFDFD8DFA09F9F40404000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF1F201FDFD8DFBFBFBF9097904040400F0F0FFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF1F201FDFD8DFBFBFBF9097904040400F0F0FFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0F0F0F0F0F0F000000404040FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0F0F0F0F000000404040FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Layout = blGlyphTop
        OnClick = btdependientesClick
      end
      object btpermisos: TSpeedButton
        Left = 376
        Top = 280
        Width = 81
        Height = 57
        Caption = 'Permisos'
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9067
          60FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9067600000
          00906760906760FFFFFFFFFFFFFFFFFF906760FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF906760000000FFC8
          CF000000000000906760906760906760906760906760FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF906760000000FFC8CFFFC8
          CFFFC8CFCF9790000000000000906760000000906760906760FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF906760000000FFC8CFFFC8CFCF97
          90CF9790906760906760000000000000906760000000906760906760FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF906760000000FFC8CFCF9790CF97909067
          60906760000000000000906760906760906760906760000000906760906760FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF906760000000CF9790CF97909067609067600000
          00000000CF9790CF9790CF9790CF9790CF9790CF9790CF979000000000000090
          6760906760FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF906760000000CF9790906760906760000000000000CF97
          90CF9790CF9790CF9790CF9790CF9790CF9790CF9790CF9790CF979000000000
          0000000000906760906760FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF505050000000000000906760000000000000FFC8CFCF9790FFC8
          CFCF9790FFC8CFCF9790FFC8CFCF9790000000000000FFC8CFCF9790FFC8CF00
          0000906760000000000000906760906760FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF906760000000000000000000000000000000FFC8CFFFC8CFFFC8CFFFC8
          CFFFC8CFFFC8CFFFC8CFFFC8CF000000CF979060302F000000FFC8CFFFC8CFFF
          C8CF000000906760CF9790000000000000906760906760906760FFFFFFFFFFFF
          9067600000000000000000000000004040406097FF000000000000FFC8CFFFC8
          CFFFC8CFFFC8CF000000000000000000CF979060302F000000FFC8CFFFC8CFFF
          C8CFFFC8CF000000906760CF9790CF9790000000000000906760FFFFFF906760
          000000000000FFC8CFFFFFFF0000009097FF6097FF6097FF6097FF000000FFC8
          CFFFFFFF000000CF9790000000000000CF979060302F000000FFFFFFFFC8CFFF
          FFFFFFC8CFFFFFFF000000906760CF9790000000906760FFFFFF000000000000
          FFFFFFFFC8CFFFFFFFFFC8CFFFFFFF0000000000000000000000000000000000
          0000000000000060302F000000000000CF979060302F000000FFC8CFFFFFFFFF
          C8CFFFFFFFFFC8CFFFFFFF000000000000906760906760FFFFFFFFFFFF000000
          FFC8CFFFFFFFFFC8CFFFFFFFFFC8CF00000000000000FFFF00FFFF0000006097
          FF00000060302F60302F000000000000CF979060302F000000FFFFFFFFC8CFFF
          FFFFFFC8CFFFFFFFFFC8CFFFFFFF000000906760906760906760FFFFFFFFFFFF
          000000FFC8CFFFFFFFFFC8CFFFFFFFFFC8CF00000000000000FFFF00FFFF0000
          006097FF000000000000FFFFFF000000CF979060302F000000FFC8CFFFFFFFFF
          C8CFFFFFFFFFC8CFFFFFFFFFC8CFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFC8CFFFFFFFFFFFFFFFFFFF00000090FFFF00000000FFFF00FF
          FF0000006097FF000000FFFFFF000000CF979060302F000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8CFFFFFFF000000FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000FFC8CFFFFFFFFFFFFFFFFFFF00000090FFFF00000000FF
          FF00FFFF0000006097FF000000000000CF979060302F000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000FFC8CFFFFFFFFFFFFFFFFFFF00000090FFFF0000
          0000FFFF00FFFF000000000000000000CF979060302F000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000FFC8CFFFFFFFFFC8CFFFFFFF00000090FF
          FF00000000FFFF00FFFF000000000000000000000000000000000000000000FF
          FFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC8CFFFFFFFFFFFFF0000000000
          0090FFFF00000000FFFF000000CF9790CF9790CF9790CF9790CF979000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC8CFFFFFFF000000CF97
          9000000090FFFF000000000000FF97FFFF97FFFF97FFFF97FFCF9790000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC8CF000000CF97
          9000000000000090FFFF000000000000000000000000000000000000000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000CF97
          90CF979000000000000090FFFF00000000FFFF00FFFF0000006097FF000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF97
          FFCF979000000000000000000090FFFF00000000FFFF00FFFF00000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          00CF979000000000000000000000000090FFFF00000000FFFF00FFFF00000000
          0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          00FF97FFCF9790FFFFFF50505050505000000090FFFF00000000FFFF00FFFF00
          0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF000000FF97FFFF97FF00000000000000000000000090FFFF00000000000000
          00A0000090000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF00000000000000000050505040404000000000000090FFFF00000000
          00A00000CF000080000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF1F201FA09F9FDFD8DFBFBFBF40404000000000000000000000
          00A0FFFFFF6067FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000DFD8DFFFFFFFDFD8DF505050000000FFFFFF00000000
          00A06067FF9097FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF1F201F1F201FBFBFBF909790404040000000FFFFFFFFFFFF00
          0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF00000000001F000000404040FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Layout = blGlyphTop
        OnClick = btpermisosClick
      end
      object btlicencias: TSpeedButton
        Left = 460
        Top = 280
        Width = 81
        Height = 57
        Caption = 'Licencias'
        Glyph.Data = {
          76020000424D7602000000000000760000002800000020000000200000000100
          0400000000000002000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
          FFFB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B34FFFFFFFFFFFFFFFFFFFFFFFFFF
          F99B344FFFFFFFFFFFFFFFFFFFFFFFFF991B3C44FFFFFFFFFFFFFFFFFFFFFFFF
          991B3C44FFFFFFFFFFFFFFFFFFFFFFFF991CC44CFFFFFFFFFFFFFFFFFFFFFFFF
          F9C444CFFFFFFFFFFFFFFFFFFFFFFFFFCC444C11FFFFFFFFFFFFFFFFFFFFFFFC
          C44443111FFFFFFFFFFFFFFFFFFFFFCC444B339111FFFFFFFFFFFFFFFFFFFCCC
          44BB3399111FFFFFFFFFFFFFFFFFFCC44FBB33F9911FFFFFFFFFFFFFFFFFFCC4
          4FBB33F9911FFFFFFFFFFFFFFFFFFCC44FBB33F9119FFFFFFFFFFFFFFFFFFCCC
          44BB3311199FFFFFFFFFFFFFFFFFFFCCC411111999FFFFFFFFFFFFFFFFFFFFFC
          111199994FFFFFFFFFFFFFFFFFFFFF991119994444FFFFFFFFFFFFFFFFFFF991
          199933CC444FFFFFFFFFFFFFFFFF99119FBB33FCC444FFFFFFFFFFFFFFFF9911
          FFBB33FFCC44FFFFFFFFFFFFFFFF99111FBB33FCCC44FFFFFFFF33B333B39911
          11BB33CCC4443B333B33333333333991111B3CCC44433333333333BB33BB3999
          111B34444443BB33BB33F33BB33BB399999B34444C3BB33BB33FFF33BB33BB39
          999B3CCCC3BB33BB33FFFFF33BB33BB3333333333BB33BB33FFFFFFF33BB3333
          FFF33FFF3333BB33FFFFFFFFF33BB33FFBBB333FF33BB33FFFFFFFFFFF3333FF
          FBBB333FFF3333FFFFFFFFFFFFFFFFFFFF3333FFFFFFFFFFFFFF}
        Layout = blGlyphTop
        OnClick = btlicenciasClick
      end
      object btausencias: TSpeedButton
        Left = 544
        Top = 280
        Width = 81
        Height = 57
        Caption = 'Ausencias'
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          00000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000007F7F
          7F00FFFF7F7F7F000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000007F7F7F00FFFFFFFF
          FFFFFFFF000000BFBFBF00FFFFFFFFFF00FFFF000000000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
          0000000000000000FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000007F7F7FBFBFBFFFFFFF00FF
          FFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFF00
          0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000000000007F7F00FFFFFFFFFF00FFFFFFFF
          FF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00
          FFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000007F7F00FFFFFFFFFF00FFFFFFFFFF00FF
          FFFFFFFF00FFFFFFFFFF007F7F007F7F00FFFFFFFFFF00FFFFFFFFFF00FFFFFF
          FFFF00FFFFFFFFFF00FFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000007F7F007F7FFFFFFF00FFFFFFFFFF00FFFFFFFF
          FF00FFFFFFFFFF00FFFFFFFFFF00FFFF007F7F007F7FFFFFFF00FFFF007F7F00
          FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000007F7FFFFFFF00FFFFFFFFFF007F7F007F7F00FF
          FFFFFFFF00FFFF007F7F00FFFF007F7F00FFFFFFFFFF007F7F007F7F00FFFFFF
          FFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000007F7F007F7F00FFFFFFFFFF00FFFFFFFFFF00FFFF007F
          7F007F7F007F7F00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFF007F7F00
          7F7FFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFF000000007F7F00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
          FFFFFFFF00FFFF007F7F007F7FFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF
          FFFF007F7F007F7F00FFFFFFFFFF00FFFF000000000000000000FFFFFFFFFFFF
          FFFFFF000000007F7F007F7FFFFFFF00FFFFFFFFFF007F7F007F7F00FFFF007F
          7F007F7FFFFFFF00FFFFFFFFFF007F7F007F7F00FFFFFFFFFF007F7FFFFFFF00
          FFFFFFFFFF00FFFFFFFFFF00FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000007F7FFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFF007F7F007F
          7FFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFF007F7F007F7FFFFFFF00FFFFFF
          FFFF00FFFFFFFFFF00FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          000000007F7F007F7F007F7FBFBFBF007F7FFFFFFF00FFFFFFFFFF00FFFFFFFF
          FF007F7F007F7F00FFFFFFFFFF007F7FFFFFFF00FFFFFFFFFF007F7F007F7F00
          FFFFFFFFFF00FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          000000007F7F007F7FBFBFBF007F7FBFBFBF007F7FFFFFFF00FFFFFFFFFF00FF
          FF007F7F00FFFF007F7F007F7FFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF
          FFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
          007F7F007F7FBFBFBF007F7FBFBFBF007F7F00000000FFFFFFFFFF00FFFFFFFF
          FF00FFFFFFFFFF00FFFFFFFFFF007F7F007F7F00FFFFFFFFFF00FFFFFFFFFF00
          FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
          007F7FBFBFBF007F7FBFBFBF007F7FBFBFBF000000FFFFFF00FFFFFFFFFF00FF
          FFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFF007F7F007F7FFFFFFF00FFFFFF
          FFFF00FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000007F7F
          007F7F007F7FBFBFBF000000000000000000000000000000000000000000FFFF
          FF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00
          FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
          007F7FBFBFBF0000007F7F007F7F007F7F007F7F007F7F007F7F007F7F000000
          00FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF
          FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000000000007F7F007F7F00FFFF00FFFF00FFFFFFFFFFFFFFFF007F7F007F7F
          00000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF0000007F7F00FFFF007F7F007F7F007F7F007F7F007F7F00FFFF007F7F
          0000000000FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF0000007F7F007F7F007F7F000000000000000000007F7F007F7F00FFFF
          00000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFF000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF0000007F7F007F7F000000007F7F007F7F00FFFF000000007F7F00FFFF
          0000000000FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000007F7F000000007F7F007F7F00FFFFFF0000007F7F000000
          0000FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF0000000000007F7F007F7F007F7F000000000000000000
          0000000000FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFF000000FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000FFFFFFFFFF
          FFFFFFFF000000000000FFFFFF00FFFFFFFFFF00FFFF000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF0000007F7F007F7F007F7F007F7F007F7F00000000FFFF
          FFFFFFFFFFFFFFFFFFFF00000000000000FFFFFFFFFF000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000007F7F00FFFF00FFFF00FFFFFFFFFFFFFFFF007F7F000000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000007F7F007F7F007F7F007F7F007F7F007F7F00FFFF000000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000007F7F007F7F007F7F007F7F007F7F007F7F007F7F000000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF0000007F7F007F7F007F7F007F7F007F7F00000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Layout = blGlyphTop
        OnClick = btausenciasClick
      end
      object bthabilidad: TSpeedButton
        Left = 208
        Top = 280
        Width = 81
        Height = 57
        Caption = 'Habilidades'
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFF0000000000000000007077707077707077707077707077707077
          7070777070777070777070777070777000000000000000000070777070777070
          7770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000000000DF0000800000007077707077707077707077707077
          7070777040404040404000000000000090C86060672F60672F00000070777070
          7770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF0000000000DF0000CF000090000080000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF00000000000050505050505090C86060672F60672F60672F00000070
          7770707770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF0000000000DF0000CF000090000080000000FFFFFFFFFFFFFFFFFF0000
          0000000000000050505050505050505090C86060672F60672F60672F00000000
          0000707770707770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000000000DF0000CF0000DF0000DF00008000008000000000000000000000C8
          FF00C8FF00000050505050505050505090C86060672F60672F60672F00000000
          C8FF000000707770707770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000000000DF0000CF0000DF0000DF00008000008000000000C8FF00C8FF00C8
          FF00C8FF00000050505050505050505000000000000000000060672F00000000
          C8FF00C8FF000000707770707770707770FFFFFFFFFFFFFFFFFFFFFFFF000000
          0000DF0000CFCFC8FF6067FF0000DF0000CF00009000008000000000C8FF00C8
          FF00C8FF000000505050000000000000CF306090006090006000000000000000
          C8FF00C8FF00C8FF000000707770707770707770FFFFFFFFFFFFFFFFFF000000
          0000DF0000CFCFC8FF6067FF0000DF0000CF00009000008000000000C8FF00C8
          FF00C8FF000000000000603060603060CF306090006090006090006000000000
          C8FF00C8FF00C8FF000000000000707770707770707770FFFFFF0000000000DF
          0000CFCFC8FF6067FF6067FF0000000000DF0000CF0000900000800000000000
          00000000000000603060603060603060CF306090006090006090006000000000
          000000C8FF00C8FF000000CF302F0000007077707077707077700000006067FF
          6067FF6067FFCFC8FF0000002FC8FF0000000000DF000080000080000000FF30
          00FF3000000000603060603060603060CF306000000090006090006000000000
          008000000000C8FF000000CF302FCF302F000000707770707770FFFFFF000000
          6067FF6067FF6067FF0000002FC8FF0000000000DF0000CF0000900000800000
          00FF30000000006030606030600000000000000067FF00000090006000000000
          0060000080000000000000CF302FCF302F000000FFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000DF0000800000800000
          00FF30000000000000000000002F67902F97FF0067FF0067FF00000000000000
          0060000080000080000000CF302FCF302F000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000CF3060CF30600000000000DF0000CF0000900000
          800000000000002F67902F67902F67902F97FF0067FF0067FF0067FF00000000
          00DF000080000080000000000000CF302F000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000CF3060CF3060CF30600000000000DF0000800000
          800000000000002F67902F67902F67902F97FF0067FF0067FF0067FF00000000
          00000000DF0000800000000067FF000000000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000CF3060CF30600000000000000000DF0000CF0000
          900000800000002F67902F67902F67902F97FF0067FF0067FF0067FF00000090
          00000000000000DF0000000067FF0067FF000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000000000000000FF972F0000000000000000DF0000
          800000800000002F97FF2F97FFFFFFFFFFFFFF2FFFFF0067FF0067FF00000090
          00009000000000000000000067FF0067FF000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000FF972FFF972FFF972F0000000000000000DF0000
          CFCFC8FF6067FF000000FFFFFF2FFFFF2FFFFF2FFFFF2FFFFF0067FF00000090
          00009000009000000000002FFFFF0067FF000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000FF972FFF972FFF972F00000000A800000000CFC8
          FF6067FF6067FF0000002FFFFF2FFFFF2FFFFF2FFFFF2FFFFF2FFFFF00000090
          00009000009000000000000000002FFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000FF972FFF972FFF972F000000FFFFFF0000006067
          FF6067FF00000000D8000000002FFFFF2FFFFF2FFFFF000000000000FF670090
          0000900000900000000000900060000000000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000FF972FFF972FFFFFFFFFFFFF00000000D8000000
          0000000000FF0000D80000D800000000000000000000FF6700FF6700FF6700FF
          6700900000900000000000900060900060000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFC860FFC860FFC86000000000D8
          0000FF0000D8000000000000000000DF000000FF6700FF6700FF6700FF6700FF
          6700FF6700900000000000900060900060000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000FFC860FFC860FFC860FFC860FFC860FFC8600000
          000000000000000000DF0000FF0000DF0000DF000000FF6700FF6700FF6700FF
          6700000000000000900060900060900060000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000FFC860FFC860FFC860FFC8600000000000
          000000000000DF0000FF0000DF0000DF0000FF0000DF000000FF670000000000
          0000FF3090FF3090FF3090900060900060000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC860000000000000CFFF90CFFF
          90CFFF900000000000DF0000FF0000DF0000DF0000FF000000000000FF3090FF
          3090FF3090FF3090FF3090FF3090900060000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000CFFF90CFFF90CFFF90CFFF
          90CFFF90CFFF900000000000DF0000FF0000000000002F97FF2F97FF000000FF
          3090FF3090FF3090FF3090FF3090FF3090000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000CFFF90CFFF90CFFF
          90CFFF90CFFF90CFFF900000000000002F97FF2F97FF2F97FF2F97FF2F97FF00
          0000FF3090FF3090FF3090000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000CFFF90CFFF
          90CFFF900000000000002FFFFF0000002F97FF2F97FF2F97FF2F97FF2F97FF2F
          97FF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000
          000000002FFFFF2FFFFF2FFFFF2FFFFF0000002F97FF2F97FF2F97FF2F97FF00
          0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          002FFFFF2FFFFF2FFFFF2FFFFF2FFFFF2FFFFF0000002F97FF000000000000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF0000002FFFFF2FFFFF2FFFFF2FFFFFFFFFFF000000000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000002FFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Layout = blGlyphTop
        OnClick = bthabilidadClick
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 8
        Width = 265
        Height = 105
        Caption = 'Datos de la licencia de conducir'
        TabOrder = 0
        object Label46: TLabel
          Left = 16
          Top = 24
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
        end
        object Label47: TLabel
          Left = 16
          Top = 48
          Width = 47
          Height = 13
          Caption = 'Categor'#237'a'
        end
        object Label48: TLabel
          Left = 16
          Top = 72
          Width = 89
          Height = 13
          Caption = 'Fecha vencimiento'
        end
        object DBEdit30: TDBEdit
          Left = 112
          Top = 24
          Width = 145
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'emp_licencia'
          DataSource = dsEmpleados
          TabOrder = 0
        end
        object DBLookupComboBox10: TDBLookupComboBox
          Left = 112
          Top = 48
          Width = 145
          Height = 21
          DataField = 'cat_codigo'
          DataSource = dsEmpleados
          KeyField = 'cat_codigo'
          ListField = 'cat_nombre'
          ListSource = dsCategoria
          TabOrder = 1
        end
        object DBEdit31: TDBEdit
          Left = 112
          Top = 72
          Width = 145
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'emp_licencia_vence'
          DataSource = dsEmpleados
          TabOrder = 2
        end
      end
      object GroupBox2: TGroupBox
        Left = 272
        Top = 8
        Width = 209
        Height = 105
        Caption = 'Observaciones'
        TabOrder = 1
        object DBMemo2: TDBMemo
          Left = 8
          Top = 19
          Width = 193
          Height = 78
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'emp_observacion'
          DataSource = dsEmpleados
          TabOrder = 0
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 113
        Width = 617
        Height = 160
        Caption = 'En caso de emergencia comunicar a:'
        TabOrder = 3
        object Label49: TLabel
          Left = 16
          Top = 24
          Width = 42
          Height = 13
          Caption = 'Nombres'
        end
        object Label50: TLabel
          Left = 480
          Top = 24
          Width = 42
          Height = 13
          Caption = 'Tel'#233'fono'
        end
        object Label51: TLabel
          Left = 16
          Top = 48
          Width = 43
          Height = 13
          Caption = 'Direcci'#243'n'
        end
        object Label52: TLabel
          Left = 16
          Top = 96
          Width = 38
          Height = 13
          Caption = 'Alergias'
        end
        object Label53: TLabel
          Left = 480
          Top = 96
          Width = 34
          Height = 13
          Caption = 'Sangre'
        end
        object Label54: TLabel
          Left = 16
          Top = 136
          Width = 33
          Height = 13
          Caption = 'M'#233'dico'
        end
        object Label55: TLabel
          Left = 480
          Top = 136
          Width = 42
          Height = 13
          Caption = 'Tel'#233'fono'
        end
        object DBEdit32: TDBEdit
          Left = 64
          Top = 24
          Width = 409
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'emp_emer_nombre'
          DataSource = dsEmpleados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit33: TDBEdit
          Left = 528
          Top = 24
          Width = 81
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'emp_emer_telefono'
          DataSource = dsEmpleados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBMemo3: TDBMemo
          Left = 64
          Top = 48
          Width = 545
          Height = 45
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'emp_emer_direccion'
          DataSource = dsEmpleados
          TabOrder = 2
        end
        object DBMemo4: TDBMemo
          Left = 64
          Top = 96
          Width = 409
          Height = 38
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'emp_emer_alergia'
          DataSource = dsEmpleados
          TabOrder = 3
        end
        object DBEdit34: TDBEdit
          Left = 528
          Top = 96
          Width = 81
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'emp_tipo_sangre'
          DataSource = dsEmpleados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit35: TDBEdit
          Left = 64
          Top = 136
          Width = 409
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'emp_emer_medico'
          DataSource = dsEmpleados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object DBEdit36: TDBEdit
          Left = 528
          Top = 136
          Width = 81
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'emp_emer_telefono_medico'
          DataSource = dsEmpleados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
      end
      object GroupBox4: TGroupBox
        Left = 488
        Top = 8
        Width = 137
        Height = 105
        Caption = 'Seguro Familiar de Salud'
        TabOrder = 2
        object Label56: TLabel
          Left = 8
          Top = 32
          Width = 76
          Height = 13
          Caption = 'Padres incluidos'
        end
        object DBEdit37: TDBEdit
          Left = 88
          Top = 32
          Width = 33
          Height = 21
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'emp_sfs_padres'
          DataSource = dsEmpleados
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Listado de Empleados'
      ImageIndex = 4
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 654
        Height = 341
        Align = alClient
        Ctl3D = True
        DataSource = dsListado
        Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid3DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'emp_numero'
            Title.Alignment = taCenter
            Title.Caption = 'N'#250'mero'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nombre'
            Width = 225
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'emp_fecha_entrada'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha entrada'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'emp_sexo'
            Title.Alignment = taCenter
            Title.Caption = 'Sexo'
            Width = 92
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'emp_cedula'
            Title.Alignment = taCenter
            Title.Caption = 'C'#233'd'#250'la'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'emp_tarjeta'
            Title.Alignment = taCenter
            Title.Caption = 'Tarjeta'
            Width = 59
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'emp_status'
            Title.Alignment = taCenter
            Title.Caption = 'Status'
            Width = 38
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'suc_nombre'
            Title.Caption = 'Sucursal'
            Width = 226
            Visible = True
          end>
      end
    end
    object tsPrecios: TTabSheet
      Caption = 'Precios'
      ImageIndex = 4
      object Label24: TLabel
        Left = 8
        Top = 16
        Width = 32
        Height = 13
        Caption = 'x Hora'
      end
      object Label57: TLabel
        Left = 8
        Top = 40
        Width = 24
        Height = 13
        Caption = 'x Dia'
      end
      object Label58: TLabel
        Left = 8
        Top = 64
        Width = 66
        Height = 13
        Caption = 'x Hora Extras'
      end
      object Label59: TLabel
        Left = 8
        Top = 88
        Width = 83
        Height = 13
        Caption = 'x Horas Nocturas'
      end
      object Label60: TLabel
        Left = 8
        Top = 112
        Width = 73
        Height = 13
        Caption = 'x Dias Feriados'
      end
      object DBEdit19: TDBEdit
        Left = 100
        Top = 16
        Width = 100
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'emp_salario_hora'
        DataSource = dsEmpleados
        TabOrder = 0
      end
      object DBEdit38: TDBEdit
        Left = 100
        Top = 40
        Width = 100
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'emp_salario_dia'
        DataSource = dsEmpleados
        TabOrder = 1
      end
      object DBEdt_emp_salario_horasext: TDBEdit
        Left = 100
        Top = 64
        Width = 100
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'emp_salario_horasext'
        DataSource = dsEmpleados
        TabOrder = 2
      end
      object DBEdt_emp_salario_horasnoct: TDBEdit
        Left = 100
        Top = 88
        Width = 100
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'emp_salario_horasnoct'
        DataSource = dsEmpleados
        TabOrder = 3
      end
      object DBEdt_emp_salario_diasfer: TDBEdit
        Left = 100
        Top = 112
        Width = 100
        Height = 21
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'emp_salario_diasfer'
        DataSource = dsEmpleados
        TabOrder = 4
      end
    end
  end
  object QEmpleados: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterOpen = QEmpleadosAfterOpen
    AfterEdit = QEmpleadosAfterEdit
    BeforePost = QEmpleadosBeforePost
    AfterPost = QEmpleadosAfterPost
    AfterDelete = QEmpleadosAfterDelete
    OnCalcFields = QEmpleadosCalcFields
    OnNewRecord = QEmpleadosNewRecord
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
      'emp_codigo, emp_numero, suc_codigo, emp_codigo_viejo, emp_edad,'
      
        'emp_nombres, emp_apellido_paterno, emp_apellido_materno, sol_num' +
        'ero,'
      
        'emp_sexo, emp_fecha_nacimiento, emp_lugar_nacimiento, pai_codigo' +
        ','
      
        'idi_codigo, emp_cedula, emp_pasaporte, est_codigo, emp_acta_naci' +
        'miento,'
      
        'emp_celular, emp_telefono1, emp_telefono2, emp_direccion, emp_te' +
        'lefono_oficina,'
      
        'emp_email, emp_foto, emp_fecha_entrada, emp_status, emp_fecha_no' +
        'mbramiento,'
      
        'niv_codigo, pos_codigo, cla_codigo, emp_salario, emp_salario_hor' +
        'a,'
      
        'emp_cuenta_bancaria, ban_codigo, emp_tipo_cuenta, emp_fecha_stat' +
        'us, emp_poncha,'
      
        'tip_codigo, gru_codigo, emp_tarjeta, emp_forma_pago, emp_nivel_s' +
        'alarial,'
      
        'emp_numero_afiliado, emp_seguro_social, emp_titular, emp_licenci' +
        'a, cat_codigo,'
      
        'emp_licencia_vence, emp_emer_nombre, emp_emer_telefono, emp_emer' +
        '_direccion,'
      
        'emp_emer_medico, emp_emer_telefono_medico, emp_emer_alergia, emp' +
        '_tipo_sangre,'
      
        'emp_diabetivo, emp_donante_activo, emp_dependiente_insulina, tno' +
        '_codigo,'
      
        'emp_tipo_asalariado, emp_excluir_pago, emp_salario_tesoreria, em' +
        'p_observacion,'
      'emp_sfs_padres, emp_salario_dia, cat_cuenta'
      
        ', emp_tipo_doc, emp_salario_horasext, emp_salario_horasnoct, emp' +
        '_salario_diasfer,emp_fecha_salida'
      'from'
      'empleados'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'emp_numero')
    Left = 560
    Top = 216
    object QEmpleadosemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QEmpleadosemp_numero: TIntegerField
      FieldName = 'emp_numero'
    end
    object QEmpleadossuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QEmpleadosemp_codigo_viejo: TStringField
      FieldName = 'emp_codigo_viejo'
      Size = 10
    end
    object QEmpleadosemp_edad: TIntegerField
      FieldName = 'emp_edad'
    end
    object QEmpleadosemp_nombres: TStringField
      FieldName = 'emp_nombres'
      Size = 60
    end
    object QEmpleadosemp_apellido_paterno: TStringField
      FieldName = 'emp_apellido_paterno'
      Size = 60
    end
    object QEmpleadosemp_apellido_materno: TStringField
      FieldName = 'emp_apellido_materno'
      Size = 60
    end
    object QEmpleadossol_numero: TIntegerField
      FieldName = 'sol_numero'
    end
    object QEmpleadosemp_fecha_nacimiento: TDateTimeField
      FieldName = 'emp_fecha_nacimiento'
      OnChange = QEmpleadosemp_fecha_nacimientoChange
      EditMask = 'cc-cc-cccc'
    end
    object QEmpleadosemp_lugar_nacimiento: TStringField
      FieldName = 'emp_lugar_nacimiento'
      Size = 60
    end
    object QEmpleadospai_codigo: TIntegerField
      FieldName = 'pai_codigo'
      OnGetText = QEmpleadospai_codigoGetText
    end
    object QEmpleadosidi_codigo: TIntegerField
      FieldName = 'idi_codigo'
      OnGetText = QEmpleadosidi_codigoGetText
    end
    object QEmpleadosemp_cedula: TStringField
      FieldName = 'emp_cedula'
      EditMask = 'ccc-ccccccc-c'
      Size = 13
    end
    object QEmpleadosemp_pasaporte: TStringField
      FieldName = 'emp_pasaporte'
      Size = 30
    end
    object QEmpleadosest_codigo: TIntegerField
      FieldName = 'est_codigo'
      OnGetText = QEmpleadosest_codigoGetText
    end
    object QEmpleadosemp_acta_nacimiento: TStringField
      FieldName = 'emp_acta_nacimiento'
      Size = 30
    end
    object QEmpleadosemp_celular: TStringField
      FieldName = 'emp_celular'
      EditMask = '(ccc)ccc-cccc'
      Size = 13
    end
    object QEmpleadosemp_telefono1: TStringField
      FieldName = 'emp_telefono1'
      EditMask = '(ccc)ccc-cccc'
      Size = 13
    end
    object QEmpleadosemp_telefono2: TStringField
      FieldName = 'emp_telefono2'
      EditMask = '(ccc)ccc-cccc'
      Size = 13
    end
    object QEmpleadosemp_direccion: TMemoField
      FieldName = 'emp_direccion'
      BlobType = ftMemo
    end
    object QEmpleadosemp_telefono_oficina: TStringField
      FieldName = 'emp_telefono_oficina'
      EditMask = '(ccc)ccc-cccc'
      Size = 13
    end
    object QEmpleadosemp_foto: TStringField
      FieldName = 'emp_foto'
      Size = 80
    end
    object QEmpleadosemp_fecha_entrada: TDateTimeField
      FieldName = 'emp_fecha_entrada'
      EditMask = 'cc-cc-cccc'
    end
    object QEmpleadosemp_status: TStringField
      FieldName = 'emp_status'
      Size = 3
    end
    object QEmpleadosemp_fecha_nombramiento: TDateTimeField
      FieldName = 'emp_fecha_nombramiento'
      EditMask = 'cc-cc-cccc'
    end
    object QEmpleadosniv_codigo: TIntegerField
      FieldName = 'niv_codigo'
    end
    object QEmpleadospos_codigo: TIntegerField
      FieldName = 'pos_codigo'
    end
    object QEmpleadoscla_codigo: TIntegerField
      FieldName = 'cla_codigo'
    end
    object QEmpleadosemp_salario: TBCDField
      FieldName = 'emp_salario'
      OnChange = QEmpleadosemp_salarioChange
      currency = True
      Precision = 15
      Size = 2
    end
    object QEmpleadosemp_salario_hora: TBCDField
      FieldName = 'emp_salario_hora'
      currency = True
      Precision = 15
      Size = 2
    end
    object QEmpleadosemp_cuenta_bancaria: TStringField
      FieldName = 'emp_cuenta_bancaria'
      Size = 30
    end
    object QEmpleadosban_codigo: TIntegerField
      FieldName = 'ban_codigo'
    end
    object QEmpleadosemp_fecha_status: TDateTimeField
      FieldName = 'emp_fecha_status'
      EditMask = 'cc-cc-cccc'
    end
    object QEmpleadosemp_poncha: TStringField
      FieldName = 'emp_poncha'
      Size = 2
    end
    object QEmpleadostip_codigo: TIntegerField
      FieldName = 'tip_codigo'
    end
    object QEmpleadosgru_codigo: TIntegerField
      FieldName = 'gru_codigo'
    end
    object QEmpleadosemp_tarjeta: TStringField
      FieldName = 'emp_tarjeta'
      Size = 30
    end
    object QEmpleadosemp_forma_pago: TStringField
      FieldName = 'emp_forma_pago'
      Size = 10
    end
    object QEmpleadosemp_nivel_salarial: TIntegerField
      FieldName = 'emp_nivel_salarial'
    end
    object QEmpleadosemp_numero_afiliado: TStringField
      FieldName = 'emp_numero_afiliado'
      Size = 30
    end
    object QEmpleadosemp_seguro_social: TStringField
      FieldName = 'emp_seguro_social'
      Size = 2
    end
    object QEmpleadosemp_titular: TStringField
      FieldName = 'emp_titular'
      Size = 5
    end
    object QEmpleadosemp_licencia: TStringField
      FieldName = 'emp_licencia'
      Size = 30
    end
    object QEmpleadoscat_codigo: TIntegerField
      FieldName = 'cat_codigo'
    end
    object QEmpleadosemp_licencia_vence: TDateTimeField
      FieldName = 'emp_licencia_vence'
      EditMask = 'cc-cc-cccc'
    end
    object QEmpleadosemp_emer_nombre: TStringField
      FieldName = 'emp_emer_nombre'
      Size = 60
    end
    object QEmpleadosemp_emer_telefono: TStringField
      FieldName = 'emp_emer_telefono'
      EditMask = '(ccc)ccc-cccc'
      Size = 13
    end
    object QEmpleadosemp_emer_direccion: TMemoField
      FieldName = 'emp_emer_direccion'
      BlobType = ftMemo
    end
    object QEmpleadosemp_emer_medico: TStringField
      FieldName = 'emp_emer_medico'
      Size = 60
    end
    object QEmpleadosemp_emer_telefono_medico: TStringField
      FieldName = 'emp_emer_telefono_medico'
      EditMask = '(ccc)ccc-cccc'
      Size = 13
    end
    object QEmpleadosemp_emer_alergia: TMemoField
      FieldName = 'emp_emer_alergia'
      BlobType = ftMemo
    end
    object QEmpleadosemp_tipo_sangre: TStringField
      FieldName = 'emp_tipo_sangre'
      Size = 30
    end
    object QEmpleadosemp_diabetivo: TStringField
      FieldName = 'emp_diabetivo'
      Size = 2
    end
    object QEmpleadosemp_donante_activo: TStringField
      FieldName = 'emp_donante_activo'
      Size = 2
    end
    object QEmpleadosemp_dependiente_insulina: TStringField
      FieldName = 'emp_dependiente_insulina'
      Size = 2
    end
    object QEmpleadosemp_email: TStringField
      FieldName = 'emp_email'
      Size = 60
    end
    object QEmpleadosemp_sexo: TStringField
      FieldName = 'emp_sexo'
      Size = 10
    end
    object QEmpleadosemp_tipo_cuenta: TStringField
      FieldName = 'emp_tipo_cuenta'
      Size = 10
    end
    object QEmpleadostno_codigo: TIntegerField
      FieldName = 'tno_codigo'
    end
    object QEmpleadosemp_tipo_asalariado: TStringField
      FieldName = 'emp_tipo_asalariado'
      Size = 10
    end
    object QEmpleadosemp_excluir_pago: TStringField
      FieldName = 'emp_excluir_pago'
      Size = 30
    end
    object QEmpleadosemp_salario_tesoreria: TStringField
      FieldName = 'emp_salario_tesoreria'
      Size = 1
    end
    object QEmpleadosemp_observacion: TMemoField
      FieldName = 'emp_observacion'
      BlobType = ftMemo
    end
    object QEmpleadosemp_sfs_padres: TIntegerField
      FieldName = 'emp_sfs_padres'
    end
    object QEmpleadosemp_salario_dia: TBCDField
      FieldName = 'emp_salario_dia'
      currency = True
      Precision = 15
      Size = 2
    end
    object QEmpleadosTiempoLabor: TStringField
      FieldKind = fkCalculated
      FieldName = 'TiempoLabor'
      Calculated = True
    end
    object QEmpleadoscat_cuenta: TStringField
      FieldName = 'cat_cuenta'
      OnGetText = QEmpleadoscat_cuentaGetText
      Size = 15
    end
    object QEmpleadosemp_tipo_doc: TStringField
      FieldName = 'emp_tipo_doc'
      Size = 2
    end
    object QEmpleadosemp_salario_horasext: TCurrencyField
      FieldName = 'emp_salario_horasext'
    end
    object QEmpleadosemp_salario_horasnoct: TCurrencyField
      FieldName = 'emp_salario_horasnoct'
    end
    object QEmpleadosemp_salario_diasfer: TCurrencyField
      FieldName = 'emp_salario_diasfer'
    end
    object QEmpleadosemp_fecha_salida: TDateField
      FieldName = 'emp_fecha_salida'
      EditMask = 'cc-cc-cccc'
    end
  end
  object dsEmpleados: TDataSource
    AutoEdit = False
    DataSet = QEmpleados
    OnStateChange = dsEmpleadosStateChange
    OnDataChange = dsEmpleadosDataChange
    Left = 592
    Top = 216
  end
  object Search: TQrySearchDlgADO
    Title = 'Posiciones'
    ResultField = 'pos_codigo'
    Query.Strings = (
      'select fpa_nombre, fpa_codigo'
      'from formaspago')
    AliasFields.Strings = (
      'Nombre'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 560
    Top = 248
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 592
    Top = 248
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
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 560
    Top = 280
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
    Left = 560
    Top = 184
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
  object dsSuc: TDataSource
    DataSet = QSucursal
    Left = 592
    Top = 184
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 592
    Top = 280
  end
  object QNiveles: TADOQuery
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
      'emp_codigo, niv_codigo, niv_nombre'
      'from'
      'niveles'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'niv_nombre')
    Left = 560
    Top = 88
    object QNivelesemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QNivelesniv_codigo: TIntegerField
      FieldName = 'niv_codigo'
    end
    object QNivelesniv_nombre: TStringField
      FieldName = 'niv_nombre'
      Size = 60
    end
  end
  object dsNiveles: TDataSource
    DataSet = QNiveles
    Left = 592
    Top = 88
  end
  object dsClasif: TDataSource
    DataSet = QClasif
    Left = 592
    Top = 120
  end
  object QClasif: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsNiveles
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
      'distinct c.emp_codigo, c.cla_nivel, n.niv_nombre'
      'from'
      'Clasificacion_Niveles c, niveles n'
      'where'
      'c.cla_nivel = n.niv_codigo'
      'and c.emp_codigo = n.emp_codigo'
      'and c.emp_codigo = :emp_codigo'
      'order by'
      'n.niv_nombre'
      '')
    Left = 560
    Top = 120
    object QClasifemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QClasifniv_nombre: TStringField
      FieldName = 'niv_nombre'
      Size = 60
    end
    object QClasifcla_nivel: TIntegerField
      FieldName = 'cla_nivel'
    end
  end
  object QPosicion: TADOQuery
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
      'pos_codigo, pos_nombre'
      'from'
      'posiciones'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'pos_nombre')
    Left = 560
    Top = 152
    object QPosicionpos_codigo: TIntegerField
      FieldName = 'pos_codigo'
    end
    object QPosicionpos_nombre: TStringField
      FieldName = 'pos_nombre'
      Size = 60
    end
  end
  object dsPosicion: TDataSource
    DataSet = QPosicion
    Left = 592
    Top = 152
  end
  object QBancos: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsSuc
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
      end>
    SQL.Strings = (
      'select'
      'ban_codigo, ban_nombre'
      'from'
      'bancos'
      'where'
      'emp_codigo = :emp_codigo'
      'and suc_codigo = :suc_codigo'
      'order by'
      'ban_nombre')
    Left = 496
    Top = 88
    object QBancosban_codigo: TIntegerField
      FieldName = 'ban_codigo'
    end
    object QBancosban_nombre: TStringField
      FieldName = 'ban_nombre'
      Size = 60
    end
  end
  object dsBancos: TDataSource
    DataSet = QBancos
    Left = 528
    Top = 88
  end
  object QTipoEmp: TADOQuery
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
      'tip_codigo, tip_nombre'
      'from'
      'tipo_empleado'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'tip_nombre')
    Left = 496
    Top = 120
    object QTipoEmptip_codigo: TIntegerField
      FieldName = 'tip_codigo'
    end
    object QTipoEmptip_nombre: TStringField
      FieldName = 'tip_nombre'
      Size = 60
    end
  end
  object dsTipoEmp: TDataSource
    DataSet = QTipoEmp
    Left = 528
    Top = 120
  end
  object QGrupo: TADOQuery
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
      'gru_codigo, gru_nombre'
      'from'
      'grupos_trabajo'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'gru_nombre')
    Left = 496
    Top = 152
    object QGrupogru_codigo: TIntegerField
      FieldName = 'gru_codigo'
    end
    object QGrupogru_nombre: TStringField
      FieldName = 'gru_nombre'
      Size = 60
    end
  end
  object dsGrupo: TDataSource
    DataSet = QGrupo
    Left = 528
    Top = 152
  end
  object QTipoNomina: TADOQuery
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
      'tno_codigo, tno_nombre'
      'from'
      'tipo_nomina'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'tno_nombre')
    Left = 496
    Top = 184
    object QTipoNominatno_codigo: TIntegerField
      FieldName = 'tno_codigo'
    end
    object QTipoNominatno_nombre: TStringField
      FieldName = 'tno_nombre'
      Size = 60
    end
  end
  object dsTipoNomina: TDataSource
    DataSet = QTipoNomina
    Left = 528
    Top = 184
  end
  object QNivelSalarial: TADOQuery
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
      'niv_codigo, niv_nombre'
      'from'
      'nivel_salarial'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'niv_nombre')
    Left = 496
    Top = 216
    object QNivelSalarialniv_codigo: TIntegerField
      FieldName = 'niv_codigo'
    end
    object QNivelSalarialniv_nombre: TStringField
      FieldName = 'niv_nombre'
      Size = 60
    end
  end
  object dsNivelSalarial: TDataSource
    DataSet = QNivelSalarial
    Left = 528
    Top = 216
  end
  object QCategoria: TADOQuery
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
      'cat_codigo, cat_nombre'
      'from'
      'categorias_licencia'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'cat_nombre')
    Left = 496
    Top = 248
    object QCategoriacat_codigo: TIntegerField
      FieldName = 'cat_codigo'
    end
    object QCategoriacat_nombre: TStringField
      FieldName = 'cat_nombre'
      Size = 60
    end
  end
  object dsCategoria: TDataSource
    DataSet = QCategoria
    Left = 528
    Top = 248
  end
  object QListado: TADOQuery
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
      'e.emp_numero, s.suc_nombre,'
      
        '(e.emp_nombres+'#39' '#39'+e.emp_apellido_paterno+'#39' '#39'+emp_apellido_mater' +
        'no) as Nombre,'
      
        'e.emp_sexo, e.emp_cedula, e.emp_edad, e.emp_fecha_entrada, e.emp' +
        '_status,'
      'e.emp_tarjeta'
      'from'
      'empleados e, sucursales s'
      'where'
      'e.emp_codigo = s.emp_codigo'
      'and e.suc_codigo = s.suc_codigo'
      'and e.emp_codigo = :emp_codigo'
      'order by'
      'e.emp_numero')
    Left = 560
    Top = 312
    object QListadoemp_numero: TIntegerField
      FieldName = 'emp_numero'
    end
    object QListadosuc_nombre: TStringField
      FieldName = 'suc_nombre'
      Size = 60
    end
    object QListadoNombre: TStringField
      FieldName = 'Nombre'
      ReadOnly = True
      Size = 182
    end
    object QListadoemp_sexo: TStringField
      FieldName = 'emp_sexo'
      Size = 10
    end
    object QListadoemp_cedula: TStringField
      FieldName = 'emp_cedula'
      Size = 13
    end
    object QListadoemp_edad: TIntegerField
      FieldName = 'emp_edad'
    end
    object QListadoemp_fecha_entrada: TDateTimeField
      FieldName = 'emp_fecha_entrada'
    end
    object QListadoemp_status: TStringField
      FieldName = 'emp_status'
      Size = 3
    end
    object QListadoemp_tarjeta: TStringField
      FieldName = 'emp_tarjeta'
      Size = 30
    end
  end
  object dsListado: TDataSource
    DataSet = QListado
    Left = 592
    Top = 312
  end
  object QTipoNominaEmp: TADOQuery
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
      'tno_codigo, tno_nombre'
      'from'
      'tipo_nomina'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'tno_codigo')
    Left = 404
    Top = 240
    object QTipoNominaEmptno_codigo: TIntegerField
      FieldName = 'tno_codigo'
    end
    object QTipoNominaEmptno_nombre: TStringField
      FieldName = 'tno_nombre'
      Size = 60
    end
  end
  object dsTipoNominaEmp: TDataSource
    DataSet = QTipoNominaEmp
    Left = 436
    Top = 240
  end
  object QNominaEmp: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsEmpleados
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
        Name = 'emp_numero'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      't.tno_nombre, e.tno_codigo'
      'from'
      'empleados_tipo_nomina e, tipo_nomina t'
      'where'
      'e.emp_codigo = t.emp_codigo'
      'and e.tno_codigo = t.tno_codigo'
      'and e.emp_codigo = :emp_codigo'
      'and e.emp_numero = :emp_numero'
      'order by'
      'e.tno_codigo')
    Left = 404
    Top = 272
    object QNominaEmptno_nombre: TStringField
      FieldName = 'tno_nombre'
      Size = 60
    end
    object QNominaEmptno_codigo: TIntegerField
      FieldName = 'tno_codigo'
    end
  end
  object dsNominaEmp: TDataSource
    DataSet = QNominaEmp
    Left = 436
    Top = 272
  end
end
