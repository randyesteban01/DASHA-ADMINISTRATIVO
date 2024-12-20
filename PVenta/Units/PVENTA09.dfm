object frmTipoFacturas: TfrmTipoFacturas
  Left = 343
  Top = 193
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = 'Tipos de Factura'
  ClientHeight = 443
  ClientWidth = 591
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
  TextHeight = 14
  object PageControl1: TPageControl
    Left = 0
    Top = 52
    Width = 587
    Height = 388
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Datos generales'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      object Label2: TLabel
        Left = 17
        Top = 24
        Width = 43
        Height = 14
        Caption = 'Nombre'
      end
      object Label12: TLabel
        Left = 17
        Top = 47
        Width = 91
        Height = 14
        Caption = 'Tipo movimiento'
      end
      object btTipo: TSpeedButton
        Left = 153
        Top = 45
        Width = 25
        Height = 24
        Enabled = False
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
        OnClick = btTipoClick
      end
      object Label3: TLabel
        Left = 17
        Top = 71
        Width = 68
        Height = 14
        Caption = 'Cliente inicial'
        FocusControl = DBEdit3
      end
      object Label17: TLabel
        Left = 17
        Top = 95
        Width = 85
        Height = 14
        Caption = 'Vendedor inicial'
      end
      object btVendedor: TSpeedButton
        Left = 153
        Top = 95
        Width = 25
        Height = 23
        Enabled = False
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
      object Label1: TLabel
        Left = 17
        Top = 0
        Width = 37
        Height = 14
        Caption = 'C'#243'digo'
      end
      object Label6: TLabel
        Left = 17
        Top = 118
        Width = 82
        Height = 14
        Caption = 'Forma de P'#225'go'
      end
      object btForma: TSpeedButton
        Left = 153
        Top = 118
        Width = 25
        Height = 24
        Enabled = False
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
        OnClick = btFormaClick
      end
      object Label11: TLabel
        Left = 9
        Top = 276
        Width = 31
        Height = 14
        Caption = 'Notas'
      end
      object DBEdit2: TDBEdit
        Left = 103
        Top = 24
        Width = 467
        Height = 22
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'TFA_NOMBRE'
        DataSource = dsTipo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBCheckBox1: TDBCheckBox
        Left = 353
        Top = 102
        Width = 165
        Height = 19
        TabStop = False
        Caption = 'Debe seleccionar un cliente'
        DataField = 'TFA_ESPCLIENTE'
        DataSource = dsTipo
        TabOrder = 7
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox2: TDBCheckBox
        Left = 353
        Top = 120
        Width = 225
        Height = 18
        TabStop = False
        Caption = 'Debe seleccionar condiciones de pago'
        DataField = 'TFA_SELCONDI'
        DataSource = dsTipo
        TabOrder = 8
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox3: TDBCheckBox
        Left = 353
        Top = 137
        Width = 182
        Height = 18
        TabStop = False
        Caption = 'Actualiza Balances de Clientes'
        DataField = 'TFA_ACTBALANCE'
        DataSource = dsTipo
        TabOrder = 9
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox4: TDBCheckBox
        Left = 353
        Top = 154
        Width = 165
        Height = 18
        TabStop = False
        Caption = 'Especificar forma de pago'
        DataField = 'TFA_TRAERFORMAPAGO'
        DataSource = dsTipo
        TabOrder = 10
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBEdit12: TDBEdit
        Left = 103
        Top = 46
        Width = 45
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'TMO_CODIGO'
        DataSource = dsTipo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object tTipo: TEdit
        Left = 181
        Top = 46
        Width = 389
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
      end
      object DBEdit3: TDBEdit
        Left = 103
        Top = 71
        Width = 467
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'TFA_CLIENTE'
        DataSource = dsTipo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object dbVendedor: TDBEdit
        Left = 103
        Top = 95
        Width = 45
        Height = 22
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'VEN_CODIGO'
        DataSource = dsTipo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object tVendedor: TEdit
        Left = 181
        Top = 95
        Width = 156
        Height = 22
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
      end
      object DBEdit4: TDBEdit
        Left = 508
        Top = 285
        Width = 561
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'TFA_MENSAJE1'
        DataSource = dsTipo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        Visible = False
      end
      object DBEdit6: TDBEdit
        Left = 508
        Top = 331
        Width = 561
        Height = 22
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'TFA_MENSAJE3'
        DataSource = dsTipo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
        Visible = False
      end
      object DBEdit5: TDBEdit
        Left = 508
        Top = 308
        Width = 561
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'TFA_MENSAJE2'
        DataSource = dsTipo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        Visible = False
      end
      object rbPrecios: TDBRadioGroup
        Left = 9
        Top = 146
        Width = 328
        Height = 124
        Caption = 'Precio inicial para este tipo de factura'
        Columns = 2
        DataField = 'TFA_PRECIO'
        DataSource = dsTipo
        TabOrder = 6
        Values.Strings = (
          'Precio1'
          'Precio2'
          'Precio3'
          'Precio4')
      end
      object DBEdit1: TDBEdit
        Left = 103
        Top = 0
        Width = 79
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        DataField = 'TFA_CODIGO'
        DataSource = dsTipo
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit8: TDBEdit
        Left = 103
        Top = 118
        Width = 45
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'FPA_CODIGO'
        DataSource = dsTipo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object tForma: TEdit
        Left = 181
        Top = 118
        Width = 156
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 16
      end
      object DBCheckBox5: TDBCheckBox
        Left = 353
        Top = 171
        Width = 156
        Height = 19
        TabStop = False
        Caption = 'Verificar l'#237'mite de cr'#233'dito'
        DataField = 'TFA_VERLIMITE'
        DataSource = dsTipo
        TabOrder = 17
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox6: TDBCheckBox
        Left = 353
        Top = 188
        Width = 165
        Height = 19
        TabStop = False
        Caption = 'Permite abonar al facturar'
        DataField = 'tfa_permite_abonar'
        DataSource = dsTipo
        TabOrder = 18
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox7: TDBCheckBox
        Left = 353
        Top = 206
        Width = 113
        Height = 18
        TabStop = False
        Caption = 'Facturar con itbis'
        DataField = 'tfa_itbis'
        DataSource = dsTipo
        TabOrder = 19
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox8: TDBCheckBox
        Left = 353
        Top = 223
        Width = 199
        Height = 18
        TabStop = False
        Caption = 'Imprimir encabezado en facturas'
        DataField = 'tfa_imprimie_encabezado'
        DataSource = dsTipo
        TabOrder = 20
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox9: TDBCheckBox
        Left = 353
        Top = 240
        Width = 199
        Height = 18
        TabStop = False
        Caption = 'Debe especificar el RNC o C'#233'dula'
        DataField = 'tfa_rnc'
        DataSource = dsTipo
        TabOrder = 21
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBCheckBox10: TDBCheckBox
        Left = 353
        Top = 257
        Width = 165
        Height = 19
        TabStop = False
        Caption = 'Permite modificar el nombre'
        DataField = 'tfa_modifica_nombre'
        DataSource = dsTipo
        TabOrder = 22
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object dbmNotas: TDBMemo
        Left = 9
        Top = 292
        Width = 328
        Height = 60
        Ctl3D = False
        DataField = 'TFA_MENSAJE1'
        DataSource = dsTipo
        ParentCtl3D = False
        ScrollBars = ssVertical
        TabOrder = 23
      end
      object dbchkenvio_correo: TDBCheckBox
        Left = 353
        Top = 275
        Width = 120
        Height = 18
        TabStop = False
        Caption = 'Enviar por Correo'
        DataField = 'Envio_Correo'
        DataSource = dsTipo
        TabOrder = 24
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object dbchkEnvio_Estado: TDBCheckBox
        Left = 353
        Top = 292
        Width = 143
        Height = 18
        TabStop = False
        Caption = 'Enviar Estado Cuentas'
        DataField = 'Envio_EstadoCta'
        DataSource = dsTipo
        TabOrder = 25
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Contabilidad'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      object Label5: TLabel
        Left = 6
        Top = 17
        Width = 102
        Height = 14
        Caption = 'Cuenta de Ingreso'
      end
      object btCuenta: TSpeedButton
        Left = 162
        Top = 17
        Width = 24
        Height = 24
        Enabled = False
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
      object Label7: TLabel
        Left = 6
        Top = 43
        Width = 109
        Height = 14
        Caption = 'Tipo de documento'
      end
      object btTipoDoc: TSpeedButton
        Left = 162
        Top = 43
        Width = 24
        Height = 24
        Enabled = False
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
        OnClick = btTipoDocClick
      end
      object Label10: TLabel
        Left = 6
        Top = 69
        Width = 105
        Height = 14
        Caption = 'Comprobante inicial'
      end
      object bttiponcf: TSpeedButton
        Left = 162
        Top = 69
        Width = 24
        Height = 24
        Enabled = False
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
        OnClick = bttiponcfClick
      end
      object DBEdit7: TDBEdit
        Left = 112
        Top = 17
        Width = 44
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'CAT_CUENTA'
        DataSource = dsTipo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object tCuenta: TEdit
        Left = 190
        Top = 17
        Width = 380
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit9: TDBEdit
        Left = 112
        Top = 43
        Width = 44
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'TDO_CODIGO'
        DataSource = dsTipo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object tTipoDoc: TEdit
        Left = 190
        Top = 43
        Width = 380
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object GroupBox1: TGroupBox
        Left = 9
        Top = 103
        Width = 561
        Height = 113
        Caption = 'Configuraci'#243'n del Flujo de Caja'
        TabOrder = 4
        object Label4: TLabel
          Left = 34
          Top = 26
          Width = 33
          Height = 14
          Caption = 'Grupo'
        end
        object Label8: TLabel
          Left = 34
          Top = 52
          Width = 53
          Height = 14
          Caption = 'Subgrupo'
        end
        object Label9: TLabel
          Left = 34
          Top = 78
          Width = 53
          Height = 14
          Caption = 'Concepto'
        end
        object btgrupo: TSpeedButton
          Left = 153
          Top = 26
          Width = 25
          Height = 24
          Enabled = False
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
          OnClick = btgrupoClick
        end
        object btsubgrupo: TSpeedButton
          Left = 153
          Top = 52
          Width = 25
          Height = 23
          Enabled = False
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
          OnClick = btsubgrupoClick
        end
        object btconcepto: TSpeedButton
          Left = 153
          Top = 78
          Width = 25
          Height = 23
          Enabled = False
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
          OnClick = btconceptoClick
        end
        object DBEdit10: TDBEdit
          Left = 103
          Top = 26
          Width = 45
          Height = 22
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'Cashflow_Grupo'
          DataSource = dsTipo
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object tgrupo: TEdit
          Left = 181
          Top = 26
          Width = 371
          Height = 22
          BevelKind = bkFlat
          BorderStyle = bsNone
          Color = clInfoBk
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit11: TDBEdit
          Left = 103
          Top = 52
          Width = 45
          Height = 22
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'Cashflow_Subgrupo'
          DataSource = dsTipo
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object tsubgrupo: TEdit
          Left = 181
          Top = 52
          Width = 371
          Height = 22
          BevelKind = bkFlat
          BorderStyle = bsNone
          Color = clInfoBk
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit13: TDBEdit
          Left = 103
          Top = 78
          Width = 45
          Height = 22
          BevelKind = bkFlat
          BorderStyle = bsNone
          DataField = 'Cashflow_Concepto'
          DataSource = dsTipo
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object tconcepto: TEdit
          Left = 181
          Top = 78
          Width = 371
          Height = 22
          BevelKind = bkFlat
          BorderStyle = bsNone
          Color = clInfoBk
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
      end
      object DBEdit14: TDBEdit
        Left = 112
        Top = 69
        Width = 44
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        DataField = 'tip_codigo'
        DataSource = dsTipo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object ttiponcf: TEdit
        Left = 190
        Top = 69
        Width = 380
        Height = 23
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clInfoBk
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 591
    Height = 43
    AutoSize = True
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 39
        Width = 587
      end>
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 574
      Height = 39
      AutoSize = True
      ButtonHeight = 37
      ButtonWidth = 51
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
        Left = 51
        Top = 0
        Action = btNext
      end
      object ToolButton14: TToolButton
        Left = 102
        Top = 0
        Width = 8
        Caption = 'ToolButton14'
        ImageIndex = 1
        Style = tbsSeparator
      end
      object ToolButton1: TToolButton
        Left = 110
        Top = 0
        Action = btInsert
      end
      object ToolButton2: TToolButton
        Left = 161
        Top = 0
        Action = btEdit
      end
      object ToolButton3: TToolButton
        Left = 212
        Top = 0
        Action = btDelete
      end
      object ToolButton4: TToolButton
        Left = 263
        Top = 0
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object ToolButton5: TToolButton
        Left = 271
        Top = 0
        Action = btPost
      end
      object ToolButton6: TToolButton
        Left = 322
        Top = 0
        Action = btCancel
      end
      object ToolButton7: TToolButton
        Left = 373
        Top = 0
        Width = 8
        Caption = 'ToolButton7'
        ImageIndex = 5
        Style = tbsSeparator
      end
      object ToolButton8: TToolButton
        Left = 381
        Top = 0
        Action = btFind
      end
      object ToolButton9: TToolButton
        Left = 432
        Top = 0
        Action = btPrint
      end
      object ToolButton10: TToolButton
        Left = 483
        Top = 0
        Width = 8
        Caption = 'ToolButton10'
        ImageIndex = 7
        Style = tbsSeparator
      end
      object ToolButton11: TToolButton
        Left = 491
        Top = 0
        Action = btClose
      end
    end
  end
  object QTipo: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterInsert = QTipoAfterInsert
    AfterEdit = QTipoAfterEdit
    BeforePost = QTipoBeforePost
    AfterPost = QTipoAfterPost
    BeforeDelete = QTipoBeforeDelete
    AfterDelete = QTipoAfterDelete
    OnNewRecord = QTipoNewRecord
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
      'EMP_CODIGO, TFA_CODIGO, TFA_NOMBRE, TFA_ESPCLIENTE, '
      'TFA_SELCONDI, TFA_ACTBALANCE,  TFA_TRAERFORMAPAGO,'
      'TFA_FORMATOIMP, TFA_PUERTOIMP, TMO_CODIGO, '
      'TFA_CLIENTE, VEN_CODIGO, TFA_MENSAJE1, TFA_MENSAJE2, '
      'TFA_MENSAJE3, TFA_PRECIO, CAT_CUENTA, FPA_CODIGO, '
      'TDO_CODIGO, TFA_VERLIMITE, tfa_permite_abonar,'
      'tfa_itbis, tfa_imprimie_encabezado, tfa_rnc, Cashflow_Grupo,'
      'Cashflow_Subgrupo, Cashflow_Concepto, tfa_modifica_nombre,'
      'tip_codigo, Envio_Correo, Envio_EstadoCta'
      'from '
      'TIPOSFACTURA'
      'where '
      'emp_codigo = :emp_codigo'
      'order by '
      'tfa_codigo')
    Left = 248
    Top = 96
    object QTipoEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QTipoTFA_CODIGO: TIntegerField
      FieldName = 'TFA_CODIGO'
    end
    object QTipoTFA_NOMBRE: TIBStringField
      FieldName = 'TFA_NOMBRE'
      Size = 60
    end
    object QTipoTFA_ESPCLIENTE: TIBStringField
      FieldName = 'TFA_ESPCLIENTE'
      Size = 5
    end
    object QTipoTFA_SELCONDI: TIBStringField
      FieldName = 'TFA_SELCONDI'
      Size = 5
    end
    object QTipoTFA_ACTBALANCE: TIBStringField
      FieldName = 'TFA_ACTBALANCE'
      Size = 5
    end
    object QTipoTFA_FORMATOIMP: TIntegerField
      FieldName = 'TFA_FORMATOIMP'
      Origin = 'TIPOSFACTURA.TFA_FORMATOIMP'
    end
    object QTipoTFA_PUERTOIMP: TIBStringField
      FieldName = 'TFA_PUERTOIMP'
      Origin = 'TIPOSFACTURA.TFA_PUERTOIMP'
    end
    object QTipoTMO_CODIGO: TIntegerField
      FieldName = 'TMO_CODIGO'
      Origin = 'TIPOSFACTURA.TMO_CODIGO'
      OnGetText = QTipoTMO_CODIGOGetText
    end
    object QTipoTFA_CLIENTE: TIBStringField
      FieldName = 'TFA_CLIENTE'
      Origin = 'TIPOSFACTURA.TFA_CLIENTE'
      Size = 60
    end
    object QTipoVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
      Origin = 'TIPOSFACTURA.VEN_CODIGO'
      OnGetText = QTipoVEN_CODIGOGetText
    end
    object QTipoTFA_MENSAJE2: TIBStringField
      DisplayWidth = 500
      FieldName = 'TFA_MENSAJE2'
      Origin = 'TIPOSFACTURA.TFA_MENSAJE2'
      Size = 500
    end
    object QTipoTFA_MENSAJE3: TIBStringField
      DisplayWidth = 500
      FieldName = 'TFA_MENSAJE3'
      Origin = 'TIPOSFACTURA.TFA_MENSAJE3'
      Size = 500
    end
    object QTipoTFA_MENSAJE1: TStringField
      DisplayWidth = 2500
      FieldName = 'TFA_MENSAJE1'
      Size = 2500
    end
    object QTipoTFA_PRECIO: TIBStringField
      FieldName = 'TFA_PRECIO'
      Origin = 'TIPOSFACTURA.TFA_PRECIO'
      Size = 8
    end
    object QTipoCAT_CUENTA: TIBStringField
      FieldName = 'CAT_CUENTA'
      Origin = 'TIPOSFACTURA.CAT_CUENTA'
      OnGetText = QTipoCAT_CUENTAGetText
      Size = 15
    end
    object QTipoFPA_CODIGO: TIntegerField
      FieldName = 'FPA_CODIGO'
      Origin = 'TIPOSFACTURA.FPA_CODIGO'
      OnGetText = QTipoFPA_CODIGOGetText
    end
    object QTipoTDO_CODIGO: TIBStringField
      FieldName = 'TDO_CODIGO'
      Origin = 'TIPOSFACTURA.TDO_CODIGO'
      OnGetText = QTipoTDO_CODIGOGetText
      Size = 3
    end
    object QTipoTFA_VERLIMITE: TIBStringField
      FieldName = 'TFA_VERLIMITE'
      Origin = 'TIPOSFACTURA.TFA_VERLIMITE'
      Size = 5
    end
    object QTipoTFA_TRAERFORMAPAGO: TStringField
      FieldName = 'TFA_TRAERFORMAPAGO'
      Size = 5
    end
    object QTipotfa_permite_abonar: TStringField
      FieldName = 'tfa_permite_abonar'
      Size = 5
    end
    object QTipotfa_itbis: TStringField
      FieldName = 'tfa_itbis'
      Size = 5
    end
    object QTipotfa_imprimie_encabezado: TStringField
      FieldName = 'tfa_imprimie_encabezado'
      Size = 5
    end
    object QTipotfa_rnc: TStringField
      FieldName = 'tfa_rnc'
      Size = 5
    end
    object QTipoCashflow_Grupo: TIntegerField
      FieldName = 'Cashflow_Grupo'
      OnGetText = QTipoCashflow_GrupoGetText
    end
    object QTipoCashflow_Subgrupo: TIntegerField
      FieldName = 'Cashflow_Subgrupo'
      OnGetText = QTipoCashflow_SubgrupoGetText
    end
    object QTipoCashflow_Concepto: TIntegerField
      FieldName = 'Cashflow_Concepto'
      OnGetText = QTipoCashflow_ConceptoGetText
    end
    object QTipotfa_modifica_nombre: TStringField
      FieldName = 'tfa_modifica_nombre'
      Size = 5
    end
    object QTipotip_codigo: TIntegerField
      FieldName = 'tip_codigo'
      OnGetText = QTipotip_codigoGetText
    end
    object QTipoEnvio_Correo: TBooleanField
      FieldName = 'Envio_Correo'
    end
    object QTipoEnvio_EstadoCta: TBooleanField
      FieldName = 'Envio_EstadoCta'
    end
  end
  object Search: TQrySearchDlgADO
    Title = 'Listado de Familias'
    ResultField = 'tfa_codigo'
    Query.Strings = (
      'select caj_nombre, caj_codigo'
      'from cajeros')
    AliasFields.Strings = (
      'Nombre'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 248
    Top = 128
  end
  object dsTipo: TDataSource
    AutoEdit = False
    DataSet = QTipo
    OnStateChange = dsTipoStateChange
    Left = 280
    Top = 96
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 248
    Top = 160
  end
  object ActionList2: TActionList
    Images = DM.ImgMant
    Left = 280
    Top = 128
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
