object frmConsNC: TfrmConsNC
  Left = 383
  Top = 167
  ActiveControl = edTipo
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta de notas de cr'#233'dito de clientes'
  ClientHeight = 416
  ClientWidth = 894
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
  object Splitter1: TSplitter
    Left = 0
    Top = 217
    Width = 894
    Height = 4
    Cursor = crVSplit
    Align = alTop
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 894
    Height = 105
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 72
      Top = 32
      Width = 20
      Height = 13
      Caption = 'Tipo'
    end
    object btTipo: TSpeedButton
      Left = 158
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
      OnClick = btTipoClick
    end
    object Label2: TLabel
      Left = 317
      Top = 32
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object SpeedButton2: TSpeedButton
      Left = 396
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
      OnClick = SpeedButton2Click
    end
    object Label12: TLabel
      Left = 72
      Top = 56
      Width = 46
      Height = 13
      Caption = 'Vendedor'
    end
    object btVendedor: TSpeedButton
      Left = 158
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
      OnClick = btVendedorClick
    end
    object Label5: TLabel
      Left = 317
      Top = 80
      Width = 40
      Height = 13
      Caption = 'Ordenar'
    end
    object Label6: TLabel
      Left = 72
      Top = 80
      Width = 29
      Height = 13
      Caption = 'Fecha'
    end
    object Label7: TLabel
      Left = 317
      Top = 56
      Width = 36
      Height = 13
      Caption = 'Usuario'
    end
    object SpeedButton3: TSpeedButton
      Left = 396
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
      OnClick = SpeedButton3Click
    end
    object Label14: TLabel
      Left = 72
      Top = 8
      Width = 40
      Height = 13
      Caption = 'Sucursal'
    end
    object cbGrupo: TRadioGroup
      Left = 2
      Top = 2
      Width = 63
      Height = 101
      Align = alLeft
      Caption = 'Grupo'
      ItemIndex = 2
      Items.Strings = (
        'A'
        'B'
        'Todas')
      TabOrder = 1
      OnClick = cbGrupoClick
    end
    object edTipo: TEdit
      Left = 122
      Top = 32
      Width = 33
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
      OnChange = edTipoChange
      OnKeyDown = edTipoKeyDown
    end
    object tTipo: TEdit
      Left = 183
      Top = 32
      Width = 130
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
    object edCliente: TEdit
      Left = 360
      Top = 32
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
      Left = 421
      Top = 32
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
      TabOrder = 10
    end
    object tVendedor: TEdit
      Left = 183
      Top = 56
      Width = 130
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
    object edVendedor: TEdit
      Left = 122
      Top = 56
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
      TabOrder = 3
      OnChange = edVendedorChange
      OnKeyDown = edVendedorKeyDown
    end
    object cbStatus: TRadioGroup
      Left = 603
      Top = 2
      Width = 86
      Height = 101
      Caption = 'Status'
      ItemIndex = 0
      Items.Strings = (
        'Todas'
        'Anuladas'
        'Emitidas')
      TabOrder = 12
      OnClick = cbStatusClick
    end
    object cbOrden: TComboBox
      Left = 360
      Top = 80
      Width = 241
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
      TabOrder = 8
      OnClick = cbOrdenClick
      Items.Strings = (
        'Numero'
        'Fecha')
    end
    object Fecha1: TDateTimePicker
      Left = 122
      Top = 80
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
      TabOrder = 4
    end
    object Fecha2: TDateTimePicker
      Left = 202
      Top = 80
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
      TabOrder = 5
    end
    object tUsuario: TEdit
      Left = 420
      Top = 56
      Width = 181
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
    object edUsuario: TEdit
      Left = 360
      Top = 56
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
      TabOrder = 7
      OnChange = edUsuarioChange
      OnKeyDown = edUsuarioKeyDown
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 120
      Top = 8
      Width = 481
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
      TabOrder = 0
    end
    object cbStatusDGII: TRadioGroup
      Left = 697
      Top = 3
      Width = 232
      Height = 75
      ItemIndex = 0
      Items.Strings = (
        'Todas'
        'Aceptada por DGII'
        'Rechazada por DGII'
        'Enviada (no procesada por DGII)')
      TabOrder = 14
      OnClick = cbStatusClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 376
    Width = 894
    Height = 40
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      894
      40)
    object lbCantidad: TLabel
      Left = 8
      Top = 13
      Width = 106
      Height = 13
      Caption = '0 Notas de cr'#233'dito'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn2: TBitBtn
      Left = 733
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Imprimir'
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
      Left = 653
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Refrescar >>'
      TabOrder = 1
      OnClick = btRefreshClick
    end
    object btClose: TBitBtn
      Left = 813
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
    object btnEnviarDGII: TBitBtn
      Left = 553
      Top = 8
      Width = 95
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Enviar DGII >>'
      TabOrder = 3
      OnClick = btnEnviarDGIIClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 105
    Width = 894
    Height = 112
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clInfoBk
    Ctl3D = False
    DataSource = dsNota
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NCR_NUMERO'
        Title.Alignment = taCenter
        Title.Caption = 'N'#250'mero'
        Width = 44
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NCR_FECHA'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NCR_MONTO'
        Title.Alignment = taCenter
        Title.Caption = 'Monto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NCR_MONTOUSADO'
        Title.Alignment = taCenter
        Title.Caption = 'Usado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NCF'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NCF_Modifica'
        Title.Alignment = taCenter
        Title.Caption = 'NCF Modifica'
        Width = 128
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ncr_fecha_factura'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha Modifica'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NOMBRE'
        Title.Caption = 'Nombre del Cliente'
        Width = 185
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FAC_FORMA'
        Title.Alignment = taCenter
        Title.Caption = 'Grupo'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TFA_CODIGO'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo'
        Width = 26
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FAC_NUMERO'
        Title.Alignment = taCenter
        Title.Caption = 'Factura'
        Width = 44
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NCR_DEVOLUCION'
        Title.Alignment = taCenter
        Title.Caption = '# Devol.'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NCR_CONCEPTO'
        Title.Caption = 'Concepto'
        Width = 212
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NCR_STATUS'
        Title.Alignment = taCenter
        Title.Caption = 'Status'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USU_NOMBRE'
        Title.Caption = 'Usuario'
        Width = 67
        Visible = True
      end>
  end
  object Memo1: TMemo
    Left = 8
    Top = 160
    Width = 505
    Height = 41
    Lines.Strings = (
      'Memo1')
    PopupMenu = PopupMenu2
    TabOrder = 3
    Visible = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 221
    Width = 894
    Height = 155
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 4
    object TabSheet2: TTabSheet
      Caption = 'Documentos afectados'
      ImageIndex = 1
      object GridMov: TDBGrid
        Left = 0
        Top = 0
        Width = 886
        Height = 127
        Align = alClient
        Color = clInfoBk
        Ctl3D = False
        DataSource = dsMov
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
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
            FieldName = 'FAC_FORMA'
            Title.Alignment = taCenter
            Title.Caption = 'Grupo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tipo'
            Title.Caption = 'Tipo Fac.'
            Width = 171
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MOV_TIPO'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo Mov.'
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MOV_NUMERO'
            Title.Alignment = taCenter
            Title.Caption = 'N'#250'mero'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Cuota'
            Title.Alignment = taCenter
            Title.Caption = '#Cuota'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DET_MONTO'
            Title.Alignment = taCenter
            Title.Caption = 'Monto'
            Width = 104
            Visible = True
          end>
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Cuentas contables'
      DesignSize = (
        886
        127)
      object Label9: TLabel
        Left = 724
        Top = 3
        Width = 48
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Cr'#233'ditos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 724
        Top = 19
        Width = 43
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'D'#233'bitos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 724
        Top = 35
        Width = 45
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Balance'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object btBuscaCta: TSpeedButton
        Left = 724
        Top = 82
        Width = 153
        Height = 25
        Anchors = [akTop, akRight]
        Caption = '[ F5 ] - Buscar Cuenta   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btBuscaCtaClick
      end
      object btElimina: TSpeedButton
        Left = 724
        Top = 57
        Width = 153
        Height = 25
        Anchors = [akTop, akRight]
        Caption = '[ F4 ] - Eliminar Cuenta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btEliminaClick
      end
      object GridCuentas: TDBGrid
        Left = 0
        Top = 0
        Width = 718
        Height = 127
        Align = alLeft
        Anchors = [akLeft, akTop, akRight, akBottom]
        Ctl3D = False
        DataSource = dsDetalle
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnColEnter = GridCuentasColEnter
        OnEnter = GridCuentasEnter
        OnKeyDown = GridCuentasKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'CAT_CUENTA'
            Title.Alignment = taCenter
            Title.Caption = 'Cuenta'
            Width = 88
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'CAT_NOMBRE'
            ReadOnly = True
            Title.Caption = 'Nombre de la Cuenta'
            Width = 282
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DET_ORIGEN'
            Title.Alignment = taCenter
            Title.Caption = 'Origen'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DET_MONTO'
            Title.Alignment = taCenter
            Title.Caption = 'Monto'
            Width = 80
            Visible = True
          end>
      end
      object lbCR: TStaticText
        Left = 780
        Top = 3
        Width = 103
        Height = 17
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object lbDB: TStaticText
        Left = 780
        Top = 19
        Width = 103
        Height = 17
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object lbBAL: TStaticText
        Left = 780
        Top = 35
        Width = 103
        Height = 17
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  object QNotas: TADOQuery
    Connection = DM.ADOSigma
    AfterOpen = QNotasAfterOpen
    AfterScroll = QNotasAfterScroll
    OnCalcFields = QNotasCalcFields
    Parameters = <
      item
        Name = 'fecha1'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'fecha2'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'suc'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'emp'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select n.FAC_FORMA, n.FAC_NUMERO, n.NCR_CONCEPTO, '
      'n.NCR_DEVOLUCION, n.NCR_FECHA, n.NCR_MONTO, '
      'n.NCR_MONTOUSADO, n.NCR_NUMERO, n.NCR_STATUS, '
      'n.TFA_CODIGO, n.USU_CODIGO, n.VEN_CODIGO, c.cli_nombre, '
      'u.usu_nombre, n.emp_codigo, n.suc_codigo,'
      
        'n.NCF_Fijo, n.NCF_Secuencia, ISNULL(n.NCF,F.eNCF) as NCF_Modific' +
        'a,'
      'ncr_fecha_factura, isnull(n.eNCF, d.eNCF) as eNCF,'
      
        'case when n.ncr_devolucion is not null then  d.Enviado_DGII else' +
        ' n.Enviado_DGII end as Enviado_DGII,'
      
        'case when n.ncr_devolucion is not null then  d.Error_DGII else n' +
        '.Error_DGII end as Error_DGII,'
      
        'case when n.ncr_devolucion is not null then  d.AceptadoDGII else' +
        ' n.AceptadoDGII end as AceptadoDGII,'
      ' e.emp_rnc, c.cli_rnc'
      'from '
      'NOTASCREDITO n'
      'inner join usuarios u on  n.usu_codigo = u.usu_codigo'
      'INNER JOIN EMPRESAS E ON n.emp_codigo = e.emp_codigo'
      
        'inner join clientes c on  n.cli_codigo = c.cli_Codigo and n.emp_' +
        'codigo = c.emp_codigo'
      
        'inner join facturas f on f.fac_numero = n.fac_numero and f.tfa_c' +
        'odigo=n.tfa_codigo and f.fac_forma=n.fac_forma'
      
        'left join Devolucion d on d.dev_numero= n.ncr_devolucion and n.e' +
        'mp_codigo= d.emp_codigo and n.suc_codigo=d.suc_codigo'
      
        'where  n.ncr_fecha between convert(datetime,:fecha1,105) and con' +
        'vert(datetime,:fecha2,105)'
      'and n.suc_codigo = :suc and n.emp_codigo =:emp')
    Left = 600
    Top = 112
    object QNotasFAC_FORMA: TIBStringField
      FieldName = 'FAC_FORMA'
      Origin = 'NOTASCREDITO.FAC_FORMA'
      Size = 1
    end
    object QNotasFAC_NUMERO: TIntegerField
      FieldName = 'FAC_NUMERO'
      Origin = 'NOTASCREDITO.FAC_NUMERO'
      DisplayFormat = '00000'
    end
    object QNotasNCR_CONCEPTO: TIBStringField
      FieldName = 'NCR_CONCEPTO'
      Origin = 'NOTASCREDITO.NCR_CONCEPTO'
      Size = 60
    end
    object QNotasNCR_DEVOLUCION: TIntegerField
      FieldName = 'NCR_DEVOLUCION'
      Origin = 'NOTASCREDITO.NCR_DEVOLUCION'
      DisplayFormat = '00000'
    end
    object QNotasNCR_FECHA: TDateTimeField
      FieldName = 'NCR_FECHA'
      Origin = 'NOTASCREDITO.NCR_FECHA'
    end
    object QNotasNCR_MONTO: TFloatField
      FieldName = 'NCR_MONTO'
      Origin = 'NOTASCREDITO.NCR_MONTO'
      currency = True
    end
    object QNotasNCR_MONTOUSADO: TFloatField
      FieldName = 'NCR_MONTOUSADO'
      Origin = 'NOTASCREDITO.NCR_MONTOUSADO'
      currency = True
    end
    object QNotasNCR_NUMERO: TIntegerField
      FieldName = 'NCR_NUMERO'
      Origin = 'NOTASCREDITO.NCR_NUMERO'
      Required = True
      DisplayFormat = '00000'
    end
    object QNotasNCR_STATUS: TIBStringField
      FieldName = 'NCR_STATUS'
      Origin = 'NOTASCREDITO.NCR_STATUS'
      Size = 3
    end
    object QNotasTFA_CODIGO: TIntegerField
      FieldName = 'TFA_CODIGO'
      Origin = 'NOTASCREDITO.TFA_CODIGO'
    end
    object QNotasUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Origin = 'NOTASCREDITO.USU_CODIGO'
    end
    object QNotasVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
      Origin = 'NOTASCREDITO.VEN_CODIGO'
    end
    object QNotasCLI_NOMBRE: TIBStringField
      FieldName = 'CLI_NOMBRE'
      Origin = 'CLIENTES.CLI_NOMBRE'
      Size = 60
    end
    object QNotasUSU_NOMBRE: TIBStringField
      FieldName = 'USU_NOMBRE'
      Origin = 'USUARIOS.USU_NOMBRE'
      Size = 60
    end
    object QNotasEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'NOTASCREDITO.EMP_CODIGO'
      Required = True
    end
    object QNotassuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QNotasNCF_Fijo: TStringField
      FieldName = 'NCF_Fijo'
      Size = 11
    end
    object QNotasNCF_Secuencia: TBCDField
      FieldName = 'NCF_Secuencia'
      Precision = 18
      Size = 0
    end
    object QNotasNCF: TStringField
      FieldKind = fkCalculated
      FieldName = 'NCF'
      Size = 19
      Calculated = True
    end
    object QNotasNCF_Modifica: TStringField
      FieldName = 'NCF_Modifica'
      Size = 19
    end
    object QNotasncr_fecha_factura: TDateTimeField
      FieldName = 'ncr_fecha_factura'
    end
    object QNotasEnviado_DGII: TBooleanField
      FieldName = 'Enviado_DGII'
    end
    object QNotasError_DGII: TBooleanField
      FieldName = 'Error_DGII'
    end
    object QNotasAceptadoDGII: TBooleanField
      FieldName = 'AceptadoDGII'
    end
    object QNotaseNCF: TStringField
      FieldName = 'eNCF'
      Size = 50
    end
    object QNotasemp_rnc: TStringField
      FieldName = 'emp_rnc'
      Size = 50
    end
    object QNotascli_rnc: TStringField
      FieldName = 'cli_rnc'
      Size = 50
    end
  end
  object dsNota: TDataSource
    DataSet = QNotas
    Left = 632
    Top = 112
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 568
    Top = 112
  end
  object QMov: TADOQuery
    Connection = DM.ADOSigma
    OnCalcFields = QMovCalcFields
    DataSource = dsNota
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
        Name = 'ncr_numero'
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
      'DECLARE @EMP INT, @SUC INT, @NCID INT'
      'SET @EMP  = :emp_codigo'
      'SET @NCID = :ncr_numero'
      'SET @SUC = :suc_codigo'
      ''
      'select DET_MONTO, FAC_FORMA, MOV_NUMERO, MOV_TIPO, '
      'NCR_NUMERO, TFA_CODIGO, DET_CUOTA, MOV_CUOTA,'
      'SUC_CODIGO'
      'from DET_NOTACREDITO'
      'where emp_codigo = @EMP'
      'and ncr_numero = @NCID'
      'and suc_codigo = @SUC'
      'UNION ALL '
      
        'select FNC.NCR_MONTO DET_MONTO, FNC.FAC_FORMA, FNC.fac_numero MO' +
        'V_NUMERO, '#39'CON'#39' MOV_TIPO, '
      'FNC.NCR_NUMERO, FNC.TFA_CODIGO, NULL DET_CUOTA, NULL MOV_CUOTA,'
      'FNC.SUC_CODIGO'
      'from FacNotasCredito FNC'
      
        'INNER JOIN NotasCredito NC ON FNC.emp_codigo = NC.emp_codigo AND' +
        ' FNC.suc_codigo = NC.suc_codigo AND FNC.ncr_numero = NC.ncr_nume' +
        'ro'
      'where FNC.emp_codigo = @EMP'
      'and FNC.ncr_numero = @NCID'
      'and FNC.suc_codigo = @SUC'
      'AND FNC.ncr_monto > 0'
      'AND FNC.ncr_monto NOT IN '
      '(select DET_MONTO'
      'from DET_NOTACREDITO'
      'where emp_codigo = @EMP'
      'and ncr_numero = @NCID'
      'and suc_codigo = @SUC)')
    Left = 600
    Top = 144
    object QMovDET_MONTO: TFloatField
      FieldName = 'DET_MONTO'
      Origin = 'DET_NOTACREDITO.DET_MONTO'
      currency = True
    end
    object QMovFAC_FORMA: TIBStringField
      FieldName = 'FAC_FORMA'
      Origin = 'DET_NOTACREDITO.FAC_FORMA'
      Size = 1
    end
    object QMovMOV_NUMERO: TIntegerField
      FieldName = 'MOV_NUMERO'
      Origin = 'DET_NOTACREDITO.MOV_NUMERO'
    end
    object QMovMOV_TIPO: TIBStringField
      FieldName = 'MOV_TIPO'
      Origin = 'DET_NOTACREDITO.MOV_TIPO'
      Size = 3
    end
    object QMovNCR_NUMERO: TIntegerField
      FieldName = 'NCR_NUMERO'
      Origin = 'DET_NOTACREDITO.NCR_NUMERO'
      Required = True
    end
    object QMovTFA_CODIGO: TIntegerField
      FieldName = 'TFA_CODIGO'
      Origin = 'DET_NOTACREDITO.TFA_CODIGO'
    end
    object QMovTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'Tipo'
      LookupDataSet = QTipo
      LookupKeyFields = 'TFA_CODIGO'
      LookupResultField = 'TFA_NOMBRE'
      KeyFields = 'TFA_CODIGO'
      Size = 60
      Lookup = True
    end
    object QMovDET_CUOTA: TIBStringField
      FieldName = 'DET_CUOTA'
      Origin = 'DET_NOTACREDITO.DET_CUOTA'
      Size = 5
    end
    object QMovMOV_CUOTA: TIntegerField
      FieldName = 'MOV_CUOTA'
      Origin = 'DET_NOTACREDITO.MOV_CUOTA'
      DisplayFormat = '00'
    end
    object QMovCuota: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Cuota'
      DisplayFormat = '00'
      Calculated = True
    end
    object QMovSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
  end
  object dsMov: TDataSource
    DataSet = QMov
    Left = 632
    Top = 144
  end
  object dsTipo: TDataSource
    DataSet = QTipo
    Left = 632
    Top = 176
  end
  object QTipo: TADOQuery
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
      'select TFA_CODIGO, TFA_NOMBRE from TIPOSFACTURA'
      'where emp_codigo = :emp_codigo')
    Left = 600
    Top = 176
    object QTipoTFA_CODIGO: TIntegerField
      FieldName = 'TFA_CODIGO'
      Origin = 'TIPOSFACTURA.TFA_CODIGO'
      Required = True
    end
    object QTipoTFA_NOMBRE: TIBStringField
      FieldName = 'TFA_NOMBRE'
      Origin = 'TIPOSFACTURA.TFA_NOMBRE'
      Size = 60
    end
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    AfterInsert = QDetalleAfterInsert
    AfterEdit = QDetalleAfterEdit
    BeforePost = QDetalleBeforePost
    AfterPost = QDetalleAfterPost
    BeforeDelete = QDetalleBeforeDelete
    AfterDelete = QDetalleAfterDelete
    OnNewRecord = QDetalleNewRecord
    DataSource = dsNota
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
        Name = 'SUC_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'NCR_NUMERO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'CAT_CUENTA, CAT_NOMBRE, NCR_NUMERO, DET_MONTO, '
      'DET_ORIGEN, DET_SECUENCIA, EMP_CODIGO,'
      'SUC_CODIGO'
      'FROM'
      'CONTDET_NOTACREDITO'
      'WHERE '
      'EMP_CODIGO = :EMP_CODIGO'
      'AND SUC_CODIGO = :SUC_CODIGO'
      'AND NCR_NUMERO = :NCR_NUMERO'
      'ORDER BY'
      'DET_SECUENCIA')
    Left = 328
    Top = 304
    object QDetalleCAT_CUENTA: TIBStringField
      FieldName = 'CAT_CUENTA'
      Origin = 'CONTDET_NOTACREDITO.CAT_CUENTA'
      OnChange = QDetalleCAT_CUENTAChange
      Size = 15
    end
    object QDetalleCAT_NOMBRE: TIBStringField
      FieldName = 'CAT_NOMBRE'
      Origin = 'CONTDET_NOTACREDITO.CAT_NOMBRE'
      Size = 60
    end
    object QDetalleNCR_NUMERO: TIntegerField
      FieldName = 'NCR_NUMERO'
      Origin = 'CONTDET_NOTACREDITO.NCR_NUMERO'
    end
    object QDetalleDET_MONTO: TFloatField
      FieldName = 'DET_MONTO'
      Origin = 'CONTDET_NOTACREDITO.DET_MONTO'
      currency = True
    end
    object QDetalleDET_ORIGEN: TIBStringField
      FieldName = 'DET_ORIGEN'
      Origin = 'CONTDET_NOTACREDITO.DET_ORIGEN'
      Size = 7
    end
    object QDetalleDET_SECUENCIA: TIntegerField
      FieldName = 'DET_SECUENCIA'
      Origin = 'CONTDET_NOTACREDITO.DET_SECUENCIA'
    end
    object QDetalleEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'CONTDET_NOTACREDITO.EMP_CODIGO'
    end
    object QDetalleSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
  end
  object dsDetalle: TDataSource
    DataSet = QDetalle
    Left = 360
    Top = 304
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
    Left = 464
    Top = 144
    object QSucursalsuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QSucursalsuc_nombre: TStringField
      FieldName = 'suc_nombre'
      Size = 60
    end
    object QSucursalemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QSucursalalm_codigo: TIntegerField
      FieldName = 'alm_codigo'
    end
  end
  object dsSuc: TDataSource
    DataSet = QSucursal
    Left = 496
    Top = 144
  end
  object QUpdNC: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    SQL.Strings = (
      'UPDATE NotasCredito'
      'SET NCF =  D.NCF'
      'from NotasCredito NC'
      
        'inner join Devolucion D on NC.emp_codigo = d.emp_codigo and nc.s' +
        'uc_codigo = d.suc_codigo and nc.ncr_devolucion = d.dev_numero'
      'where nc.NCF IS NULL')
    Left = 512
    Top = 264
  end
  object PopupMenu2: TPopupMenu
    Left = 100
    Top = 162
    object FrmPopupDGIIQDGIIParametersParamByNamecaja1: TMenuItem
      Caption = 'Informacion DGII'
      OnClick = FrmPopupDGIIQDGIIParametersParamByNamecaja1Click
    end
  end
end
