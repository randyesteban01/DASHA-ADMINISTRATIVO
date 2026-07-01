object frmConsCxC: TfrmConsCxC
  Left = 161
  Top = 168
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta general de cuentas por cobrar'
  ClientHeight = 655
  ClientWidth = 1276
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnPaint = FormPaint
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 450
    Width = 1276
    Height = 4
    Cursor = crVSplit
    Align = alTop
  end
  object Panel1: TPanel
    Left = 0
    Top = 614
    Width = 1276
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      1276
      41)
    object btRefresh: TBitBtn
      Left = 750
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Refrescar >>'
      TabOrder = 0
      OnClick = btRefreshClick
    end
    object BitBtn2: TBitBtn
      Left = 904
      Top = 8
      Width = 97
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Imprimir todos'
      TabOrder = 1
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
    object btClose: TBitBtn
      Left = 1194
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
      Left = 1003
      Top = 9
      Width = 105
      Height = 24
      Anchors = [akTop, akRight]
      Caption = 'Imprimir cliente'
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
    object BitBtn3: TBitBtn
      Left = 827
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Buscar'
      TabOrder = 4
      OnClick = BitBtn3Click
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
    object ckVence: TCheckBox
      Left = 19
      Top = 12
      Width = 158
      Height = 17
      Caption = 'Solo clientes vencidos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = ckVenceClick
    end
    object btConsolidado: TBitBtn
      Left = 1108
      Top = 8
      Width = 85
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Consolidado'
      TabOrder = 6
      OnClick = btConsolidadoClick
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
    object btnEmail: TBitBtn
      Left = 661
      Top = 8
      Width = 85
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '@ Correo'
      TabOrder = 7
      OnClick = btnEmailClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 454
    Width = 1276
    Height = 113
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object DBGrid2: TDBGrid
      Left = 2
      Top = 2
      Width = 1272
      Height = 109
      Align = alClient
      Color = clInfoBk
      Ctl3D = False
      DataSource = dsMov
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      PopupMenu = pFactura
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid2DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'suc_nombre'
          Title.Caption = 'Sucursal'
          Width = 127
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'MOV_TIPO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Doc'
          Width = 34
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TFA_CODIGO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Tipo'
          Width = 41
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'MOV_NUMERO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = '#Doc/Banco'
          Width = 59
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Ticket'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Cuota'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Cuota/CK'
          Width = 53
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'MOV_FECHA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Fecha'
          Width = 76
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DIASFAC'
          Title.Alignment = taCenter
          Title.Caption = 'Dias'
          Width = 42
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'MOV_FECHAVENCE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Vence'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MOV_MONTO'
          Title.Alignment = taCenter
          Title.Caption = 'Total'
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MOV_ABONO'
          Title.Alignment = taCenter
          Title.Caption = 'Abono'
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Saldo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Width = 85
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 567
    Width = 1276
    Height = 47
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 3
    object LabelDia1: TLabel
      Left = 40
      Top = 8
      Width = 59
      Height = 14
      Alignment = taRightJustify
      Caption = 'LabelDia1'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelDia2: TLabel
      Left = 40
      Top = 24
      Width = 59
      Height = 14
      Alignment = taRightJustify
      Caption = 'LabelDia2'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelDia3: TLabel
      Left = 280
      Top = 8
      Width = 59
      Height = 14
      Alignment = taRightJustify
      Caption = 'LabelDia3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabelDia4: TLabel
      Left = 280
      Top = 24
      Width = 59
      Height = 14
      Alignment = taRightJustify
      Caption = 'LabelDia4'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 488
      Top = 8
      Width = 58
      Height = 14
      Caption = 'Total CxC'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 492
      Top = 24
      Width = 54
      Height = 14
      Caption = 'Vencidos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbCondi1: TStaticText
      Left = 104
      Top = 8
      Width = 113
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object lbCondi2: TStaticText
      Left = 104
      Top = 24
      Width = 113
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object lbCondi3: TStaticText
      Left = 344
      Top = 8
      Width = 113
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object lbCondi4: TStaticText
      Left = 344
      Top = 24
      Width = 113
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object lbVencido: TStaticText
      Left = 552
      Top = 24
      Width = 137
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object lbTotal: TStaticText
      Left = 552
      Top = 8
      Width = 137
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = '0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 1276
    Height = 63
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 4
    object Label12: TLabel
      Left = 8
      Top = 8
      Width = 21
      Height = 13
      Caption = 'Tipo'
    end
    object btTipo: TSpeedButton
      Left = 76
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
      OnClick = btTipoClick
    end
    object tTipo: TEdit
      Left = 101
      Top = 8
      Width = 229
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
      TabOrder = 0
    end
    object edTipo: TEdit
      Left = 40
      Top = 8
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
      TabOrder = 1
      OnChange = edTipoChange
      OnKeyDown = edTipoKeyDown
    end
    object cbtipo: TRadioGroup
      Left = 384
      Top = 1
      Width = 304
      Height = 29
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'Activos'
        'Inactivos')
      TabOrder = 2
      OnClick = cbtipoClick
    end
    object ChkB_cksucursal: TCheckBox
      Left = 9
      Top = 38
      Width = 64
      Height = 17
      Caption = 'Sucursal'
      TabOrder = 3
      OnClick = ChkB_cksucursalClick
    end
    object dblkcbb1: TDBLookupComboBox
      Left = 73
      Top = 34
      Width = 320
      Height = 21
      DropDownRows = 20
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'suc_codigo'
      ListField = 'suc_nombre'
      ListSource = DS_Suc
      ParentFont = False
      TabOrder = 4
      OnClick = dblkcbb1Click
    end
  end
  object mmo1: TMemo
    Left = 8
    Top = 160
    Width = 185
    Height = 89
    Lines.Strings = (
      'mmo1')
    TabOrder = 5
    Visible = False
  end
  object pnCorreo: TPanel
    Left = 354
    Top = 126
    Width = 423
    Height = 41
    Caption = 'Enviando correo, favor espere......'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    Visible = False
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 63
    Width = 1276
    Height = 387
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clInfoBk
    Ctl3D = False
    DataSource = dsCliente
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    PopupMenu = pm1
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CLI_NOMBRE'
        Title.Caption = 'Nombre del cliente'
        Width = 282
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CLI_TELEFONO'
        Title.Alignment = taCenter
        Title.Caption = '# de Tel'#233'fono'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_LIMITE'
        Title.Alignment = taCenter
        Title.Caption = 'L'#237'mite de Cr'#233'dito'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BALANCE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Balance'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MORA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENCIDO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Vencido'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Verdana'
        Title.Font.Style = [fsBold]
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOTASPORAPLICAR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'NC POR APLICAR'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object QCliente: TADOQuery
    Connection = DM.ADOSigma
    AfterScroll = QClienteAfterScroll
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'emp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'fec'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'tip'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'st'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'suc'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from pr_cxc (:emp, :fec, :tip, :st, :suc)')
    Left = 336
    Top = 40
    object QClienteEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'PR_CXC.EMP_CODIGO'
    end
    object QClienteCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = 'PR_CXC.CLI_CODIGO'
    end
    object QClienteCLI_NOMBRE: TIBStringField
      FieldName = 'CLI_NOMBRE'
      Origin = 'PR_CXC.CLI_NOMBRE'
      Size = 60
    end
    object QClienteBALANCE: TFloatField
      FieldName = 'BALANCE'
      Origin = 'PR_CXC.BALANCE'
      currency = True
    end
    object QClienteCLI_REFERENCIA: TIBStringField
      FieldName = 'CLI_REFERENCIA'
      Origin = 'PR_CXC.CLI_REFERENCIA'
      Size = 10
    end
    object QClienteCLI_LIMITE: TFloatField
      FieldName = 'CLI_LIMITE'
      Origin = 'PR_CXC.CLI_LIMITE'
      currency = True
    end
    object QClienteCLI_TELEFONO: TIBStringField
      FieldName = 'CLI_TELEFONO'
      Origin = 'PR_CXC.CLI_TELEFONO'
      Size = 30
    end
    object QClienteVENCIDO: TFloatField
      FieldName = 'VENCIDO'
      Origin = 'PR_CXC.VENCIDO'
      currency = True
    end
    object QClienteMORA: TCurrencyField
      FieldName = 'MORA'
    end
    object QClienteNOTASPORAPLICAR: TStringField
      FieldName = 'NOTASPORAPLICAR'
      Size = 2
    end
  end
  object dsCliente: TDataSource
    DataSet = QCliente
    Left = 368
    Top = 40
  end
  object QMovimientos: TADOQuery
    Connection = DM.ADOSigma
    OnCalcFields = QMovimientosCalcFields
    CommandTimeout = 0
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
        Name = 'cli_codigo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'suc1'
        Size = -1
        Value = Null
      end
      item
        Name = 'suc2'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'm.FAC_FORMA, m.MOV_ABONO, m.MOV_FECHA, m.MOV_MONTO,'
      'm.MOV_NUMERO, m.MOV_TIPO, m.TFA_CODIGO, m.MOV_FECHAVENCE,'
      'm.MOV_SECUENCIA, m.MOV_CUOTA,'
      'datediff(day, m.mov_fecha, getdate()) AS DIASFAC,'
      'datediff(day,m.MOV_FECHAVENCE, getdate()) AS DIASVENC,'
      'm.SUC_CODIGO, s.suc_nombre, mt.ticket'
      'from'
      'MOVIMIENTOS m'
      
        'inner join sucursales s on m.suc_codigo=s.suc_codigo and m.emp_c' +
        'odigo=s.emp_codigo'
      
        'left join montos_ticket mt on m.mov_numero = mt.mov_numero and m' +
        '.cli_codigo = mt.cli_codigo'
      'where'
      'm.emp_codigo = :emp_codigo'
      'and m.cli_codigo = :cli_codigo'
      'and m.mov_status = '#39'PEN'#39
      'and m.suc_codigo between :suc1 and :suc2')
    Left = 336
    Top = 72
    object QMovimientosFAC_FORMA: TIBStringField
      FieldName = 'FAC_FORMA'
      Origin = 'MOVIMIENTOS.FAC_FORMA'
      Size = 1
    end
    object QMovimientosMOV_ABONO: TFloatField
      FieldName = 'MOV_ABONO'
      Origin = 'MOVIMIENTOS.MOV_ABONO'
      currency = True
    end
    object QMovimientosMOV_FECHA: TDateTimeField
      FieldName = 'MOV_FECHA'
      Origin = 'MOVIMIENTOS.MOV_FECHA'
    end
    object QMovimientosMOV_MONTO: TFloatField
      FieldName = 'MOV_MONTO'
      Origin = 'MOVIMIENTOS.MOV_MONTO'
    end
    object QMovimientosMOV_NUMERO: TIntegerField
      FieldName = 'MOV_NUMERO'
      Origin = 'MOVIMIENTOS.MOV_NUMERO'
      Required = True
      DisplayFormat = '000000'
    end
    object QMovimientosMOV_TIPO: TIBStringField
      FieldName = 'MOV_TIPO'
      Origin = 'MOVIMIENTOS.MOV_TIPO'
      Required = True
      Size = 3
    end
    object QMovimientosTFA_CODIGO: TIntegerField
      FieldName = 'TFA_CODIGO'
      Origin = 'MOVIMIENTOS.TFA_CODIGO'
    end
    object QMovimientosSaldo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Saldo'
      currency = True
      Calculated = True
    end
    object QMovimientosMOV_SECUENCIA: TIntegerField
      FieldName = 'MOV_SECUENCIA'
      Origin = 'MOVIMIENTOS.MOV_SECUENCIA'
      Required = True
      DisplayFormat = '00'
    end
    object QMovimientosCuota: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Cuota'
      DisplayFormat = '00'
      Calculated = True
    end
    object QMovimientosMOV_CUOTA: TIBStringField
      FieldName = 'MOV_CUOTA'
      Origin = 'MOVIMIENTOS.MOV_CUOTA'
      Size = 5
    end
    object QMovimientosDIASFAC: TIntegerField
      FieldName = 'DIASFAC'
      ReadOnly = True
    end
    object QMovimientosMOV_FECHAVENCE: TDateTimeField
      FieldName = 'MOV_FECHAVENCE'
      Origin = 'MOVIMIENTOS.MOV_FECHAVENCE'
    end
    object QMovimientosDIASVENC: TIntegerField
      FieldName = 'DIASVENC'
      ReadOnly = True
    end
    object QMovimientosSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QMovimientossuc_nombre: TStringField
      FieldName = 'suc_nombre'
      Size = 60
    end
    object QMovimientosTicket: TIntegerField
      FieldName = 'Ticket'
    end
  end
  object dsMov: TDataSource
    DataSet = QMovimientos
    OnDataChange = dsMovDataChange
    Left = 368
    Top = 72
  end
  object QAntig: TADOQuery
    Connection = DM.ADOSigma
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'emp_codigo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'fecha'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'cli_codigo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'suc'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from pr_antig_saldo_cli (:emp_codigo, :fecha, :cli_codi' +
        'go, :suc)')
    Left = 336
    Top = 104
    object QAntigCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = 'PR_ANTIG_SALDO.CLI_CODIGO'
    end
    object QAntigCLI_REFERENCIA: TIBStringField
      FieldName = 'CLI_REFERENCIA'
      Origin = 'PR_ANTIG_SALDO.CLI_REFERENCIA'
      Size = 10
    end
    object QAntigCLI_NOMBRE: TIBStringField
      FieldName = 'CLI_NOMBRE'
      Origin = 'PR_ANTIG_SALDO.CLI_NOMBRE'
      Size = 60
    end
    object QAntigCLI_TELEFONO: TIBStringField
      FieldName = 'CLI_TELEFONO'
      Origin = 'PR_ANTIG_SALDO.CLI_TELEFONO'
      Size = 30
    end
    object QAntigBALANCE: TFloatField
      FieldName = 'BALANCE'
      Origin = 'PR_ANTIG_SALDO.BALANCE'
    end
    object QAntigDIA1: TFloatField
      FieldName = 'DIA1'
      Origin = 'PR_ANTIG_SALDO.DIA1'
      currency = True
    end
    object QAntigDIA2: TFloatField
      FieldName = 'DIA2'
      Origin = 'PR_ANTIG_SALDO.DIA2'
      currency = True
    end
    object QAntigDIA3: TFloatField
      FieldName = 'DIA3'
      Origin = 'PR_ANTIG_SALDO.DIA3'
      currency = True
    end
    object QAntigDIA4: TFloatField
      FieldName = 'DIA4'
      Origin = 'PR_ANTIG_SALDO.DIA4'
      currency = True
    end
  end
  object dsAntig: TDataSource
    DataSet = QAntig
    OnDataChange = dsAntigDataChange
    Left = 368
    Top = 104
  end
  object Search: TQrySearchDlgADO
    Title = 'Clientes con Cuentas por Cobrar'
    ResultField = 'cli_codigo'
    AliasFields.Strings = (
      'Nombre'
      'Referencia'
      'C'#243'digo')
    AliasName = DM.ADOSigma
    Left = 336
    Top = 136
  end
  object pFactura: TPopupMenu
    Left = 568
    Top = 136
    object Imprimir1: TMenuItem
      Caption = 'Ver'
      OnClick = Imprimir1Click
    end
    object Correo1: TMenuItem
      Caption = 'Correo'
      OnClick = Correo1Click
    end
    object AplicarNC1: TMenuItem
      Caption = 'Aplicar NC'
      OnClick = AplicarNC1Click
    end
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    CommandTimeout = 120
    Parameters = <>
    Left = 368
    Top = 136
  end
  object DS_Suc: TDataSource
    DataSet = QSucursal
    Left = 64
    Top = 184
  end
  object QSucursal: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltReadOnly
    CommandTimeout = 0
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
    Left = 32
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
  object qFacturaOrdTaller: TADOQuery
    Connection = DM.ADOSigma
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'EMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SUC'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'num'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'tip'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'SUCURSAL, DIRECCION, TELEFONO, FAX, EMAIL, RNC, LOGO,'
      'NCF, TIPO_NCF, CASE WHEN LEFT(NCF,3) = '#39'B01'#39' THEN NCF_VENCE '
      '                    WHEN LEFT(NCF,3) = '#39'B02'#39' THEN NULL'
      '                    WHEN LEFT(NCF,3) = '#39'B14'#39' THEN NCF_VENCE '
      
        '                    WHEN LEFT(NCF,3) = '#39'B15'#39' THEN NCF_VENCE END ' +
        'NCF_VENCE, FECHA, VENCE, NUM, ORDEN, CONDICION,'
      'CLI_RNC, CLIENTE, PROPIETARIO,'
      
        'VEH_PLACA, VEH_TIPO, VEH_MARCA, VEH_MODELO, VEH_YEAR, VEH_CHASSI' +
        'S, VEH_KILOM, VEH_NIV, VEH_COLOR,'
      'TIPO, PRODUCTO, CANT, PRECIO, VALOR SUBTOTAL,'
      
        '(CASE WHEN TIPOID = 1 THEN (CANT*PRECIO)*(DESCUENTO) ELSE 0 END)' +
        ' DESC_SERV,'
      
        '(CASE WHEN TIPOID = 2 THEN (CANT*PRECIO)*(DESCUENTO) ELSE 0 END)' +
        ' DESC_PIEZAS,'
      '(VALOR-'
      '(CASE WHEN TIPOID = 1 THEN (CANT*PRECIO)*(DESCUENTO)  '
      
        '      WHEN TIPOID = 2 THEN (CANT*PRECIO)*(DESCUENTO) ELSE 0 END)' +
        ') * ITBIS ITBIS,'
      '(VALOR-'
      '(CASE WHEN TIPOID = 1 THEN (CANT*PRECIO)*(DESCUENTO)  '
      
        '      WHEN TIPOID = 2 THEN (CANT*PRECIO)*(DESCUENTO) ELSE 0 END)' +
        ') +'
      '(VALOR-'
      '(CASE WHEN TIPOID = 1 THEN (CANT*PRECIO)*(DESCUENTO)  '
      
        '      WHEN TIPOID = 2 THEN (CANT*PRECIO)*(DESCUENTO) ELSE 0 END)' +
        ') * ITBIS TOTAL'
      'frOM ('
      
        'select s.suc_nombre SUCURSAL, s.suc_direccion DIRECCION, s.suc_t' +
        'elefono TELEFONO, s.suc_fax FAX, s.suc_email EMAIL, s.suc_rnc RN' +
        'C,'
      
        'f.NCF_Fijo+ RIGHT('#39'000000000'#39' + Ltrim(Rtrim(F.NCF_Secuencia)),8-' +
        'len(F.NCF_Secuencia)) NCF, UPPER(NT.ncf_nombre) TIPO_NCF, N.Fech' +
        'aVenc NCF_VENCE, '
      
        'F.fac_fecha FECHA, F.fac_vence VENCE, F.fac_numero NUM, F.fac_rn' +
        'c CLI_RNC, F.ped_numero ORDEN, F.fac_nombre CLIENTE, C.cli_nombr' +
        'e PROPIETARIO, '
      'ISNULL('#39'CREDITO A '#39'+COND.cpa_nombre,'#39'CONTADO'#39') CONDICION,'
      
        'RTRIM(V.PLACA) VEH_PLACA, TV.nombre VEH_TIPO,MV.nombre VEH_MODEL' +
        'O, MAV.mar_nombre VEH_MARCA, '
      
        'V.Kilometraje VEH_KILOM, V.Chassis VEH_CHASSIS, CL.col_nombre VE' +
        'H_COLOR, V.Annio VEH_YEAR, ISNULL(V.NIV,'#39'N/A'#39') VEH_NIV,'
      'DT.pro_nombre PRODUCTO, '
      '(SELECT TOP 1 CASE WHEN TIPO =  1 THEN '#39'SERVICIOS REALIZADOS'#39
      
        '                   WHEN TIPO =  2 THEN '#39'PIEZAS REEMPLAZADAS'#39' END' +
        ' FROM Det_Ordenes_taller '
      
        ' WHERE emp_codigo = F.emp_codigo AND suc_codigo = F.suc_codigo A' +
        'ND ord_numero = F.ped_numero AND pro_codigo = DT.pro_codigo) TIP' +
        'O,'
      '(SELECT TOP 1 TIPO FROM Det_Ordenes_taller '
      
        ' WHERE emp_codigo = F.emp_codigo AND suc_codigo = F.suc_codigo A' +
        'ND ord_numero = F.ped_numero AND pro_codigo = DT.pro_codigo) TIP' +
        'OID,'
      
        'DT.det_cantidad CANT, DT.det_precio PRECIO, DT.det_cantidad*DT.d' +
        'et_precio VALOR, '
      'DT.det_itbis/100 ITBIS, '
      'DT.det_descuento/100 DESCUENTO,'
      'E.emp_logo LOGO'
      'from Facturas F'
      
        'INNER JOIN Det_Factura DT ON F.emp_codigo = DT.emp_codigo AND F.' +
        'suc_codigo = DT.suc_codigo AND F.fac_numero = DT.fac_numero AND ' +
        'F.fac_forma = DT.fac_forma'
      '                         AND F.tfa_codigo = DT.tfa_codigo'
      'inner join Empresas E on F.emp_codigo = E.emp_codigo'
      
        'inner join Sucursales S on f.emp_codigo = s.emp_codigo and f.suc' +
        '_codigo = s.suc_codigo'
      
        'LEFT JOIN NCF N ON F.emp_codigo = N.emp_codigo AND F.suc_codigo ' +
        '= N.suc_codigo AND F.NCF_Fijo = N.NCF_Fijo'
      
        'LEFT JOIN NCF_Ticket_TipoDoc NT ON N.emp_codigo = NT.emp_codigo ' +
        'AND N.tdo_codigo = NT.tdo_codigo '
      
        'INNER JOIN Ordenes_Taller OT ON F.emp_codigo = OT.emp_codigo AND' +
        ' F.suc_codigo = OT.suc_codigo AND F.ped_numero = OT.ord_numero'
      
        'INNER JOIN Clientes C ON OT.emp_codigo = C.emp_codigo AND OT.pro' +
        'p_codigo = C.cli_codigo '
      'INNER JOIN Vehiculos V ON OT.veh_codigo = V.veh_codigo'
      
        'INNER JOIN Tipos_Vehiculos TV ON V.tipo_Veh_codigo = TV.tipo_Veh' +
        '_codigo'
      'INNER JOIN Modelos_Vehiculos MV ON V.mod_codigo = MV.mod_codigo'
      'INNER JOIN marcas_Vehiculos MAV ON V.mar_codigo = MAV.mar_codigo'
      'INNER JOIN Colores CL ON V.col_codigo = CL.col_codigo '#9#9#9
      
        'LEFT JOIN Condiciones COND ON F.cpa_codigo = COND.cpa_codigo AND' +
        ' F.emp_codigo = COND.emp_codigo'#9#9#9#9#9#9' '
      
        'where F.emp_codigo = :emp and F.suc_codigo = :suc and F.fac_nume' +
        'ro = :num  AND F.tfa_codigo = :tip)'
      'AS TEMP '
      'ORDER BY TIPO DESC')
    Left = 832
    Top = 16
    object qFacturaOrdTallerSUCURSAL: TStringField
      FieldName = 'SUCURSAL'
      Size = 60
    end
    object qFacturaOrdTallerDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 60
    end
    object qFacturaOrdTallerTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Size = 30
    end
    object qFacturaOrdTallerFAX: TStringField
      FieldName = 'FAX'
      Size = 30
    end
    object qFacturaOrdTallerEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 30
    end
    object qFacturaOrdTallerRNC: TStringField
      FieldName = 'RNC'
      Size = 30
    end
    object qFacturaOrdTallerNCF: TStringField
      FieldName = 'NCF'
      ReadOnly = True
      Size = 61
    end
    object qFacturaOrdTallerTIPO_NCF: TStringField
      FieldName = 'TIPO_NCF'
      ReadOnly = True
      Size = 80
    end
    object qFacturaOrdTallerNCF_VENCE: TDateTimeField
      FieldName = 'NCF_VENCE'
    end
    object qFacturaOrdTallerFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object qFacturaOrdTallerVENCE: TDateTimeField
      FieldName = 'VENCE'
    end
    object qFacturaOrdTallerNUM: TIntegerField
      FieldName = 'NUM'
    end
    object qFacturaOrdTallerORDEN: TIntegerField
      FieldName = 'ORDEN'
    end
    object qFacturaOrdTallerCONDICION: TStringField
      FieldName = 'CONDICION'
      ReadOnly = True
      Size = 60
    end
    object qFacturaOrdTallerCLI_RNC: TStringField
      FieldName = 'CLI_RNC'
      Size = 13
    end
    object qFacturaOrdTallerCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 60
    end
    object qFacturaOrdTallerPROPIETARIO: TStringField
      FieldName = 'PROPIETARIO'
      Size = 255
    end
    object qFacturaOrdTallerVEH_PLACA: TStringField
      FieldName = 'VEH_PLACA'
      ReadOnly = True
      Size = 50
    end
    object qFacturaOrdTallerVEH_TIPO: TStringField
      FieldName = 'VEH_TIPO'
      Size = 75
    end
    object qFacturaOrdTallerVEH_MARCA: TStringField
      FieldName = 'VEH_MARCA'
      Size = 60
    end
    object qFacturaOrdTallerVEH_MODELO: TStringField
      FieldName = 'VEH_MODELO'
      Size = 100
    end
    object qFacturaOrdTallerVEH_YEAR: TIntegerField
      FieldName = 'VEH_YEAR'
    end
    object qFacturaOrdTallerVEH_CHASSIS: TStringField
      FieldName = 'VEH_CHASSIS'
      Size = 75
    end
    object qFacturaOrdTallerVEH_KILOM: TIntegerField
      FieldName = 'VEH_KILOM'
    end
    object qFacturaOrdTallerVEH_NIV: TStringField
      FieldName = 'VEH_NIV'
      ReadOnly = True
      Size = 75
    end
    object qFacturaOrdTallerTIPO: TStringField
      FieldName = 'TIPO'
      ReadOnly = True
    end
    object qFacturaOrdTallerPRODUCTO: TStringField
      FieldName = 'PRODUCTO'
      Size = 256
    end
    object qFacturaOrdTallerCANT: TBCDField
      FieldName = 'CANT'
      Precision = 18
    end
    object qFacturaOrdTallerPRECIO: TBCDField
      FieldName = 'PRECIO'
      Precision = 18
    end
    object qFacturaOrdTallerSUBTOTAL: TBCDField
      FieldName = 'SUBTOTAL'
      ReadOnly = True
      Precision = 32
      Size = 8
    end
    object qFacturaOrdTallerDESC_SERV: TBCDField
      FieldName = 'DESC_SERV'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
    object qFacturaOrdTallerDESC_PIEZAS: TBCDField
      FieldName = 'DESC_PIEZAS'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
    object qFacturaOrdTallerITBIS: TBCDField
      FieldName = 'ITBIS'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
    object qFacturaOrdTallerTOTAL: TBCDField
      FieldName = 'TOTAL'
      ReadOnly = True
      Precision = 32
      Size = 6
    end
    object qFacturaOrdTallerVEH_COLOR: TStringField
      FieldName = 'VEH_COLOR'
      Size = 60
    end
    object qFacturaOrdTallerLOGO: TBlobField
      FieldName = 'LOGO'
    end
  end
  object DB_qFacturaOrdTaller: TfrxDBDataset
    UserName = 'DB_qFacturaOrdTaller'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SUCURSAL=SUCURSAL'
      'DIRECCION=DIRECCION'
      'TELEFONO=TELEFONO'
      'FAX=FAX'
      'EMAIL=EMAIL'
      'RNC=RNC'
      'NCF=NCF'
      'TIPO_NCF=TIPO_NCF'
      'NCF_VENCE=NCF_VENCE'
      'FECHA=FECHA'
      'VENCE=VENCE'
      'NUM=NUM'
      'ORDEN=ORDEN'
      'CONDICION=CONDICION'
      'CLI_RNC=CLI_RNC'
      'CLIENTE=CLIENTE'
      'PROPIETARIO=PROPIETARIO'
      'VEH_PLACA=VEH_PLACA'
      'VEH_TIPO=VEH_TIPO'
      'VEH_MARCA=VEH_MARCA'
      'VEH_MODELO=VEH_MODELO'
      'VEH_YEAR=VEH_YEAR'
      'VEH_CHASSIS=VEH_CHASSIS'
      'VEH_KILOM=VEH_KILOM'
      'VEH_NIV=VEH_NIV'
      'TIPO=TIPO'
      'PRODUCTO=PRODUCTO'
      'CANT=CANT'
      'PRECIO=PRECIO'
      'SUBTOTAL=SUBTOTAL'
      'DESC_SERV=DESC_SERV'
      'DESC_PIEZAS=DESC_PIEZAS'
      'ITBIS=ITBIS'
      'TOTAL=TOTAL'
      'VEH_COLOR=VEH_COLOR'
      'LOGO=LOGO')
    DataSet = qFacturaOrdTaller
    BCDToCurrency = False
    Left = 864
    Top = 16
  end
  object Rpt_FacOrdTaller: TfrxReport
    Version = '4.13.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43629.555344861100000000
    ReportOptions.LastChange = 43629.555344861100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Memo6OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '                                     '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 896
    Top = 16
    Datasets = <
      item
        DataSet = DB_qFacturaOrdTaller
        DataSetName = 'DB_qFacturaOrdTaller'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 166.299320000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object MCia: TfrxMemoView
          Width = 377.953000000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."SUCURSAL"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 505.220780000000000000
          Width = 94.488250000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'FACTURA')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baRight
          Left = 619.464967000000000000
          Top = 4.779530000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Pagina [Page#] de [TotalPages#]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baRight
          Left = 494.740477000000000000
          Top = 26.456710000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."TIPO_NCF"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baRight
          Left = 494.740477000000000000
          Top = 45.354360000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."NCF"]')
          ParentFont = False
        end
        object MVenceNCF: TfrxMemoView
          Align = baRight
          Left = 494.740477000000000000
          Top = 64.252010000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo6OnBeforePrint'
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'VENCE: [DB_qFacturaOrdTaller."NCF_VENCE"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baLeft
          Top = 80.456710000000000000
          Width = 377.953000000000000000
          Height = 79.370130000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."DIRECCION"]'
            
              'TEL: [DB_qFacturaOrdTaller."TELEFONO"] FAX: [DB_qFacturaOrdTalle' +
              'r."FAX"]'
            'EMAIL: [DB_qFacturaOrdTaller."EMAIL"]'
            'RNC: [DB_qFacturaOrdTaller."RNC"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baRight
          Left = -0.377953000000000000
          Top = 164.826840000000000000
          Width = 740.787880000000000000
          Height = 3.779530000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haRight
          ParentFont = False
        end
        object Logo: TfrxPictureView
          Width = 377.953000000000000000
          Height = 64.252010000000000000
          ShowHint = False
          DataField = 'LOGO'
          DataSet = DB_qFacturaOrdTaller
          DataSetName = 'DB_qFacturaOrdTaller'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 37.795300000000000000
        Top = 385.512060000000000000
        Width = 740.409927000000000000
        Condition = 'DB_qFacturaOrdTaller."TIPO"'
        object Memo26: TfrxMemoView
          Width = 740.409927000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."TIPO"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Align = baLeft
          Top = 18.897650000000000000
          Width = 85.039370080000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8 = (
            'Cantidad')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Align = baLeft
          Left = 85.039370080000000000
          Top = 18.897650000000000000
          Width = 485.669550080000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8 = (
            'Descripcion')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Align = baLeft
          Left = 570.708920160000000000
          Top = 18.897650000000000000
          Width = 85.039370080000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'Precio')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Align = baLeft
          Left = 655.748290240000000000
          Top = 18.897650000000000000
          Width = 85.039370080000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'Valor')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 445.984540000000000000
        Width = 740.409927000000000000
        DataSet = DB_qFacturaOrdTaller
        DataSetName = 'DB_qFacturaOrdTaller'
        RowCount = 0
        object Memo31: TfrxMemoView
          Align = baLeft
          Width = 85.039370080000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CANT'
          DataSet = DB_qFacturaOrdTaller
          DataSetName = 'DB_qFacturaOrdTaller'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."CANT"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Align = baLeft
          Left = 85.039370080000000000
          Width = 485.669550080000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRODUCTO'
          DataSet = DB_qFacturaOrdTaller
          DataSetName = 'DB_qFacturaOrdTaller'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."PRODUCTO"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Align = baLeft
          Left = 570.708920160000000000
          Width = 85.039370080000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRECIO'
          DataSet = DB_qFacturaOrdTaller
          DataSetName = 'DB_qFacturaOrdTaller'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."PRECIO"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Align = baLeft
          Left = 655.748290240000000000
          Width = 85.039370080000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'SUBTOTAL'
          DataSet = DB_qFacturaOrdTaller
          DataSetName = 'DB_qFacturaOrdTaller'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."SUBTOTAL"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 18.897650000000000000
        Top = 487.559370000000000000
        Width = 740.409927000000000000
        object Memo35: TfrxMemoView
          Align = baLeft
          Width = 655.748400080000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'Total:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Align = baLeft
          Left = 655.748400080000000000
          Width = 85.039370080000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_qFacturaOrdTaller
          DataSetName = 'DB_qFacturaOrdTaller'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<DB_qFacturaOrdTaller."SUBTOTAL">,MasterData1)]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 115.283550000000000000
        Top = 245.669450000000000000
        Width = 740.409927000000000000
        object Memo8: TfrxMemoView
          Align = baLeft
          Width = 85.039370080000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Fecha:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Align = baLeft
          Top = 19.897650000000000000
          Width = 85.039370080000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'R.N.C.:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          Top = 40.795300000000000000
          Width = 85.039370080000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Facturado a:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Align = baLeft
          Top = 59.692950000000000000
          Width = 85.039370080000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Propietario:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Align = baLeft
          Top = 83.267780000000000000
          Width = 85.039370080000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Vehiculo:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Align = baLeft
          Left = 85.039370080000000000
          Width = 144.000039060000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."FECHA"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Align = baLeft
          Left = 85.039370080000000000
          Top = 19.897650000000000000
          Width = 366.992309060000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."CLI_RNC"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Align = baLeft
          Left = 85.039370080000000000
          Top = 39.574830000000000000
          Width = 321.637949060000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."CLIENTE"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Align = baLeft
          Left = 85.039370080000000000
          Top = 58.913420000000000000
          Width = 366.992309060000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."PROPIETARIO"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Align = baLeft
          Left = 85.039370080000000000
          Top = 81.267780000000000000
          Width = 654.236589060000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '[DB_qFacturaOrdTaller."VEH_PLACA"]     [DB_qFacturaOrdTaller."VE' +
              'H_MARCA"]     [DB_qFacturaOrdTaller."VEH_MODELO"]     [DB_qFactu' +
              'raOrdTaller."VEH_COLOR"]     [DB_qFacturaOrdTaller."VEH_YEAR"]  ' +
              '   [DB_qFacturaOrdTaller."VEH_CHASSIS"]     Km/M: [DB_qFacturaOr' +
              'dTaller."VEH_KILOM"]     NIV: [DB_qFacturaOrdTaller."VEH_NIV"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Align = baLeft
          Left = 229.039409140000000000
          Width = 53.291319060000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Vence:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Align = baLeft
          Left = 282.330728200000000000
          Width = 91.086619060000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."VENCE"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Align = baRight
          Left = 600.189454550000000000
          Width = 83.527559060000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Factura No.:')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Align = baRight
          Left = 600.189454550000000000
          Top = 18.897650000000000000
          Width = 83.527559060000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Orden No.:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 549.787648120000000000
          Top = 41.574732360000000000
          Width = 83.527559060000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Condicion:')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Align = baRight
          Left = 683.717013610000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."NUM"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Align = baRight
          Left = 683.717013610000000000
          Top = 18.897650000000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."ORDEN"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Align = baLeft
          Left = 633.315207180000000000
          Top = 41.574732360000000000
          Width = 136.062860310000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DB_qFacturaOrdTaller."CONDICION"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 275.905690000000000000
        Top = 566.929500000000000000
        Width = 740.409927000000000000
        object Memo37: TfrxMemoView
          Align = baLeft
          Top = 30.236240000000000000
          Width = 85.039370080000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Notas:')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 555.590551180000000000
          Top = 37.795300000000000000
          Width = 85.039370078740200000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Desc. Serv.:')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 555.590551180000000000
          Top = 56.692950000000000000
          Width = 85.039370078740200000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Desc. Resp.:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 555.590910000000000000
          Top = 75.590600000000000000
          Width = 85.039370078740200000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Sub-Total')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 555.590910000000000000
          Top = 94.488250000000000000
          Width = 85.039370078740200000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'ITBIS:')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 555.590910000000000000
          Top = 113.385900000000000000
          Width = 85.039370078740200000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Total:')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Align = baLeft
          Left = 640.630280078740200000
          Top = 75.590600000000000000
          Width = 96.377960080000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_qFacturaOrdTaller
          DataSetName = 'DB_qFacturaOrdTaller'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<DB_qFacturaOrdTaller."SUBTOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Align = baLeft
          Left = 640.629921258740200000
          Top = 37.795300000000000000
          Width = 96.377960080000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_qFacturaOrdTaller
          DataSetName = 'DB_qFacturaOrdTaller'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<DB_qFacturaOrdTaller."DESC_SERV">,MasterData1)]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Align = baLeft
          Left = 640.629921258740200000
          Top = 56.692950000000000000
          Width = 96.377960080000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_qFacturaOrdTaller
          DataSetName = 'DB_qFacturaOrdTaller'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<DB_qFacturaOrdTaller."DESC_PIEZAS">,MasterData1)]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Align = baLeft
          Left = 640.630280078740200000
          Top = 94.488250000000000000
          Width = 96.377960080000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_qFacturaOrdTaller
          DataSetName = 'DB_qFacturaOrdTaller'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<DB_qFacturaOrdTaller."ITBIS">,MasterData1)]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Align = baLeft
          Left = 640.630280078740200000
          Top = 113.385900000000000000
          Width = 96.377960080000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = DB_qFacturaOrdTaller
          DataSetName = 'DB_qFacturaOrdTaller'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<DB_qFacturaOrdTaller."TOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 7.559060000000000000
          Top = 207.874150000000000000
          Width = 332.598640000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'NOMBRE Y SELLO')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 385.512060000000000000
          Top = 207.874150000000000000
          Width = 332.598640000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'APROBADO POR')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Align = baLeft
          Top = 245.669450000000000000
          Width = 332.598640000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Original: Cliente / Copia: Contabilidad')
          ParentFont = False
        end
      end
    end
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 520
    Top = 304
  end
  object qAplicaNC: TADOQuery
    Connection = DM.ADOSigma
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'NCID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'EMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SUC'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'FAC'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'TIPO'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'FOR'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'TFA'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'DECLARE @EMP INT, @SUC INT, @NCID INT, @BALANCE FLOAT, @MONTOUSA' +
        'DO FLOAT, @FAC INT, @SEC INT, @TIPO VARCHAR(3), @MONTOAPLICAR FL' +
        'OAT,'
      
        '@FORMA CHAR(1), @TFAC INT, @PAGO NUMERIC(18,2), @MONTOAPLICADO N' +
        'UMERIC(18,2), @CLI INT'
      ''
      'SET @NCID = :NCID'
      'SET @EMP = :EMP'
      'SET @SUC = :SUC'
      'SET @FAC = :FAC'
      'SET @TIPO = :TIPO'
      'SET @FORMA = :FOR '
      'SET @TFAC = :TFA'
      
        'SET @MONTOAPLICADO = (SELECT ISNULL((SELECT SUM(ISNULL(det_monto' +
        ',0)) FROM Det_NotaCredito WHERE emp_codigo = @EMP AND SUC_CODIGO' +
        ' = @SUC AND NCR_NUMERO = @NCID),0))'
      ''
      'IF (@MONTOAPLICADO=0) '
      'BEGIN'
      
        'SET @MONTOAPLICADO = (SELECT ISNULL((SELECT SUM(ISNULL(ncr_monto' +
        '-ncr_montousado,0)) FROM NOTASCREDITO WHERE emp_codigo = @EMP AN' +
        'D SUC_CODIGO = @SUC AND NCR_NUMERO = @NCID),0))'
      'END'
      
        'SET @CLI = (SELECT CLI_CODIGO FROM NOTASCREDITO WHERE EMP_CODIGO' +
        ' = @EMP AND SUC_CODIGO = @SUC AND ncr_numero = @NCID)'
      ''
      'UPDATE NotasCredito '
      'SET ncr_montousado = ISNULL(@MONTOAPLICADO,0)'
      
        'WHERE EMP_CODIGO = @EMP AND SUC_CODIGO = @SUC AND NCR_NUMERO = @' +
        'NCID'
      ''
      ''
      ''
      
        'SET @MONTOAPLICAR = (SELECT ISNULL((SELECT SUM(ISNULL(ncr_monto,' +
        '0))-@MONTOAPLICADO FROM NOTASCREDITO WHERE EMP_CODIGO = @EMP AND' +
        ' SUC_CODIGO = @SUC AND NCR_NUMERO = @NCID),0))'
      
        'SET @BALANCE = (SELECT ISNULL((SELECT SUM(ISNULL(FAC_TOTAL,0)-IS' +
        'NULL(FAC_ABONO,0)) FROM FACTURAS WHERE EMP_CODIGO = @EMP AND SUC' +
        '_CODIGO = @SUC AND FAC_NUMERO = @FAC AND TFA_CODIGO = @TFAC AND ' +
        'FAC_FORMA = @FORMA),0))'
      
        'SET @SEC = ISNULL((SELECT mov_secuencia FROM Movimientos WHERE E' +
        'MP_CODIGO = @EMP AND SUC_CODIGO = @SUC AND MOV_NUMERO = @FAC AND' +
        ' FAC_FORMA = @FORMA AND TFA_CODIGO = @TFAC),0)'
      
        'SET @MONTOUSADO = ISNULL((SELECT ISNULL(ncr_montousado,0) FROM N' +
        'OTASCREDITO WHERE EMP_CODIGO = @EMP AND SUC_CODIGO = @SUC AND NC' +
        'R_NUMERO = @NCID),0)'
      ''
      ''
      'IF @MONTOAPLICAR = @BALANCE BEGIN '
      'PRINT '#39'MONTOAPLICAR = BALANCE'#39
      'IF EXISTS(SELECT * FROM DET_NOTACREDITO'
      
        'WHERE EMP_CODIGO = @EMP AND SUC_CODIGO = @SUC AND NCR_NUMERO = @' +
        'NCID AND mov_numero = @FAC) BEGIN '
      'UPDATE Det_NotaCredito'
      'SET det_monto = @BALANCE'
      
        'WHERE EMP_CODIGO = @EMP AND SUC_CODIGO = @SUC AND NCR_NUMERO = @' +
        'NCID AND mov_numero = @FAC'
      'END'
      ''
      'IF NOT EXISTS(SELECT * FROM DET_NOTACREDITO'
      
        'WHERE EMP_CODIGO = @EMP AND SUC_CODIGO = @SUC AND NCR_NUMERO = @' +
        'NCID AND mov_numero = @FAC) BEGIN '
      'UPDATE NOTASCREDITO '
      'SET ncr_montousado = ncr_monto '
      'where emp_codigo = @EMP'
      '  AND suc_codigo = @SUC'
      '  and ncr_numero = @NCID    '
      ''
      'INSERT INTO DET_NOTACREDITO'
      
        'SELECT @EMP, @SUC, @NCID, @SEC, @TIPO, @FAC, @MONTOAPLICAR, @FOR' +
        'MA, @TFAC, NULL, NULL   '
      ''
      'END'
      'END'
      ''
      ''
      'IF @MONTOAPLICAR < @BALANCE BEGIN '
      'PRINT '#39'MONTOAPLICAR < BALANCE'#39
      'IF EXISTS(SELECT * FROM DET_NOTACREDITO'
      
        'WHERE EMP_CODIGO = @EMP AND SUC_CODIGO = @SUC AND NCR_NUMERO = @' +
        'NCID AND mov_numero = @FAC) BEGIN '
      'UPDATE Det_NotaCredito'
      'SET det_monto = @MONTOAPLICAR'
      
        'WHERE EMP_CODIGO = @EMP AND SUC_CODIGO = @SUC AND NCR_NUMERO = @' +
        'NCID AND mov_numero = @FAC'
      ''
      'UPDATE NOTASCREDITO '
      'SET ncr_montousado = ncr_monto'
      'where emp_codigo = @EMP'
      '  AND suc_codigo = @SUC'
      '  and ncr_numero = @NCID '
      'END'
      ''
      'IF EXISTS(SELECT * FROM DET_NOTACREDITO'
      
        'WHERE EMP_CODIGO = @EMP AND SUC_CODIGO = @SUC AND NCR_NUMERO = @' +
        'NCID AND mov_numero = @FAC) BEGIN '
      'UPDATE NOTASCREDITO '
      'SET ncr_montousado = ncr_monto'
      'where emp_codigo = @EMP'
      '  AND suc_codigo = @SUC'
      '  and ncr_numero = @NCID    '#9
      ' '
      'END'
      'END'
      ''
      ''
      'IF @MONTOAPLICAR > @BALANCE BEGIN '
      'IF EXISTS(SELECT * FROM DET_NOTACREDITO'
      
        'WHERE EMP_CODIGO = @EMP AND SUC_CODIGO = @SUC AND NCR_NUMERO = @' +
        'NCID AND mov_numero = @FAC) BEGIN '
      
        'DELETE Det_NotaCredito WHERE ncr_numero = @NCID AND mov_numero =' +
        ' @FAC'
      'END'
      ''
      'UPDATE NOTASCREDITO '
      'SET ncr_montousado = ISNULL(ncr_montousado,0)+@BALANCE'
      
        'where emp_codigo = @EMP and suc_codigo = @SUC and ncr_numero = @' +
        'NCID'
      ''
      'INSERT INTO DET_NOTACREDITO'
      
        'SELECT @EMP, @SUC, @NCID, @SEC, @TIPO, @FAC, @BALANCE, @FORMA, @' +
        'TFAC, NULL, NULL'
      'END'
      ''
      ''
      'SET @PAGO = 0'
      
        'if exists(select fac_numero from FacFormaPago where fac_numero =' +
        ' @FAC and tfa_codigo = @TFAC and fac_forma = @FORMA) begin '
      
        'SET @PAGO = ISNULL((SELECT isnull(SUM(for_monto),0) FROM FacForm' +
        'aPago '
      
        '             WHERE fac_numero = @FAC AND emp_codigo  = @EMP AND ' +
        'suc_codigo = @SUC AND FAC_FORMA = @FORMA AND tfa_codigo'
      '              = @tipo),0)'
      'end'
      ''
      ''
      ''
      
        'SET @PAGO = ISNULL(@PAGO,0) + ISNULL((SELECT SUM(isnull(DET_MONT' +
        'O,0)+isnull(det_descuento,0)) FROM Recibos R '
      
        '             INNER JOIN Det_Recibo DR ON R.emp_codigo = DR.emp_c' +
        'odigo AND R.suc_codigo = DR.suc_codigo AND R.rec_numero =DR.rec_' +
        'numero'
      
        '             WHERE R.rec_status = '#39'EMI'#39' AND DR.det_numero = @FAC' +
        ' AND DR.emp_codigo  = @EMP AND DR.suc_codigo = @SUC'
      
        '             AND DR.FAC_FORMA = @FORMA AND DR.tfa_codigo = @TFAC' +
        '),0)'
      #9#9#9' '
      
        'SET @PAGO = ISNULL(@PAGO,0) + ISNULL((SELECT ISNULL(SUM(DET_MONT' +
        'O),0) '
      '             FROM DET_NOTACREDITO N '
      
        '             INNER JOIN NOTASCREDITO NC ON N.EMP_CODIGO = NC.EMP' +
        '_CODIGO AND N.SUC_CODIGO = NC.SUC_CODIGO AND N.NCR_NUMERO = NC.N' +
        'CR_NUMERO'
      
        '             WHERE MOV_NUMERO = @FAC AND N.emp_codigo  = @EMP AN' +
        'D N.suc_codigo = @SUC'
      
        '             AND N.FAC_FORMA = @FORMA AND N.tfa_codigo = @TFAC),' +
        '0)'
      ''
      
        'SET @PAGO = ISNULL(@PAGO,0) + ISNULL((SELECT ISNULL(SUM(DEV_TOTA' +
        'L),0) FROM DEVOLUCION N '
      
        '             WHERE N.dev_status = '#39'EMI'#39' AND N.fac_numero = @FAC ' +
        'AND N.emp_codigo  = @EMP AND N.suc_codigo = @SUC'
      
        '             AND N.FAC_FORMA = @FORMA AND N.tfa_codigo = @TFAC),' +
        '0)'
      ''
      'SET @PAGO = ISNULL(@PAGO,0) + '
      '             ISNULL((SELECT ISNULL(SUM(D.DET_MONTO),0) '
      '             FROM NotasCredito N '
      
        '             INNER JOIN Det_NotaCredito D ON N.EMP_CODIGO = D.EM' +
        'P_CODIGO AND N.SUC_CODIGO = D.SUC_CODIGO AND N.NCR_NUMERO = D.NC' +
        'R_NUMERO'
      
        '             WHERE N.NCR_status <> '#39'ANU'#39' AND D.MOV_numero = @FAC' +
        ' AND D.emp_codigo  = @EMP AND D.suc_codigo = @SUC'
      '             AND D.FAC_FORMA = @FORMA AND D.tfa_codigo = @TFAC'
      #9#9#9' AND N.NCR_DEVOLUCION NOT IN '
      #9#9#9' (SELECT N.DEV_NUMERO FROM DEVOLUCION N '
      
        '             WHERE N.dev_status = '#39'EMI'#39' AND N.FAC_NUMERO = @FAC ' +
        'AND N.emp_codigo  = @EMP AND N.suc_codigo = @SUC'
      
        '             AND N.FAC_FORMA = @FORMA AND N.tfa_codigo = @TFAC))' +
        ',0)'
      ''
      ''
      ''
      
        'SET @PAGO = ISNULL(@PAGO,0) + ISNULL((SELECT isnull(sum(DD.FAC_P' +
        'AGO + DD.FAC_DESCUENTO),0) FROM DEPOSITOS D'
      
        '                                      INNER JOIN Det_DepositoFac' +
        'tura DD ON D.emp_codigo = DD.emp_codigo AND D.suc_codigo = DD.su' +
        'c_codigo AND D.dep_numero = dd.dep_numero '
      
        #9#9'      where d.dep_status <> '#39'ANU'#39' AND DD.fac_numero = @FAC AND' +
        ' DD.emp_codigo= @EMP AND DD.suc_codigo = @SUC'
      #9#9'      AND DD.FAC_FORMA = @FORMA AND DD.TFA_CODIGO = @TFAC),0)'
      #9#9#9
      ''
      'UPDATE Facturas'
      'SET fac_abono = isnull(@PAGO,0),'
      
        '    fac_status = (CASE WHEN (FAC_TOTAL-isnull(@PAGO,0))<=1 THEN ' +
        #39'PAG'#39' ELSE '#39'PEN'#39' END)'
      
        'WHERE emp_codigo = @EMP AND suc_codigo = @SUC AND tfa_codigo = @' +
        'TFAC AND fac_forma = @FORMA '
      'AND fac_numero = @FAC AND cli_codigo = @CLI'
      ''
      'UPDATE Movimientos '
      'SET mov_abono = isnull(@PAGO,0),'
      
        '    MOV_status = (CASE WHEN (MOV_MONTO-isnull(@PAGO,0))<=1 THEN ' +
        #39'PAG'#39' ELSE '#39'PEN'#39' END)'
      
        'WHERE emp_codigo = @EMP AND suc_codigo = @SUC AND tfa_codigo = @' +
        'TFAC AND fac_forma = @FORMA '
      'AND MOV_numero = @FAC AND cli_codigo = @CLI'
      ''
      #9'update '#9'clientes'
      
        #9'set'#9'cli_balance = (select sum(case when isnull(mov_monto,0)-isn' +
        'ull(mov_abono,0)<1 then 0 else isnull(mov_monto,0)-isnull(mov_ab' +
        'ono,0) end)'
      #9#9'from movimientos'
      #9#9'where emp_codigo = clientes.emp_codigo'
      #9#9'and cli_codigo = clientes.cli_codigo'
      #9#9'and mov_status = '#39'PEN'#39')'
      #9'where'#9'emp_codigo = @emp AND CLI_CODIGO = @CLI;'
      '')
    Left = 296
    Top = 304
  end
  object qRepBalanceFact: TADOQuery
    Connection = DM.ADOSigma
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'EMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CLI'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'DECLARE @SUC INT, @FAC INT, @tipo INT, @FORMA CHAR(1), @PAGO NUM' +
        'ERIC(18,2), @CLI INT, @EMPRESA INT, @SUP INT, @FACSUP VARCHAR(20' +
        '), @NC INT, @SEC INT, @MOVTIPO CHAR(5), @MOVCUOTA int, @MONTONC ' +
        'NUMERIC(18,2)'
      ''
      'SET @EMPRESA =  :EMP'
      'SET @CLI     =  :CLI'
      ''
      ''
      ''
      ''
      'DECLARE Cr_Actualiza_CXC CURSOR FOR '
      
        'SELECT F.EMP_CODIGO, F.suc_codigo SUC, F.MOV_numero FAC, F.cli_c' +
        'odigo CLI, F.tfa_codigo TFAC, F.fac_forma FORMA, F.mov_tipo'
      'FROM MOVIMIENTOS F'
      
        'WHERE F.MOV_status NOT IN ('#39'ANU'#39','#39'PAG'#39')  AND F.MOV_TIPO IN ('#39'CRE' +
        #39', '#39'ND'#39')   AND F.EMP_CODIGO = @EMPRESA  AND F.CLI_CODIGO = @CLI'
      'ORDER BY F.suc_codigo, F.MOV_numero'
      ''
      ''
      'OPEN Cr_Actualiza_CXC'
      
        'FETCH NEXT FROM Cr_Actualiza_CXC INTO @EMPRESA, @SUC, @FAC, @CLI' +
        ', @tipo, @FORMA, @MOVTIPO'
      'WHILE @@fetch_status = 0'
      'begin '
      'IF EXISTS(select *'
      'from NotasCredito NC'
      
        'inner join Devolucion d on nc.emp_codigo = d.emp_codigo and nc.s' +
        'uc_codigo=d.suc_codigo and nc.ncr_devolucion=d.dev_numero'
      
        'inner join Movimientos f on d.emp_codigo = f.emp_codigo and d.su' +
        'c_codigo=f.suc_codigo and d.tfa_codigo = f.tfa_codigo and d.fac_' +
        'forma = f.fac_forma and d.fac_numero = f.MOV_numero'
      
        'where nc.ncr_status <> '#39'ANU'#39' AND F.mov_numero = @FAC AND F.tfa_c' +
        'odigo = @tipo AND F.fac_forma = @FORMA AND F.emp_codigo = @EMPRE' +
        'SA AND F.suc_codigo = @SUC  AND NC.cli_codigo = @CLI'
      'AND nc.ncr_numero not in '
      '(select ncr_numero from Det_NotaCredito)) BEGIN '
      'IF EXISTS(SELECT * FROM FACTURAS '
      
        'WHERE fac_status = '#39'PAG'#39' AND fac_numero = @FAC AND tfa_codigo = ' +
        '@tipo AND emp_codigo = @EMPRESA AND suc_codigo = @SUC AND fac_fo' +
        'rma= @FORMA) BEGIN '
      
        'select @MOVTIPO = f.mov_tipo, @MONTONC = nc.ncr_monto, @NC = NC.' +
        'ncr_numero'
      'from NotasCredito NC'
      
        'inner join Devolucion d on nc.emp_codigo = d.emp_codigo and nc.s' +
        'uc_codigo=d.suc_codigo and nc.ncr_devolucion=d.dev_numero'
      
        'inner join Movimientos f on d.emp_codigo = f.emp_codigo and d.su' +
        'c_codigo=f.suc_codigo and d.tfa_codigo = f.tfa_codigo and d.fac_' +
        'forma = f.fac_forma and d.fac_numero = f.MOV_numero'
      
        'where nc.ncr_status <> '#39'ANU'#39' AND F.mov_numero = @FAC AND F.tfa_c' +
        'odigo = @tipo AND F.fac_forma = @FORMA AND F.emp_codigo = @EMPRE' +
        'SA AND F.suc_codigo = @SUC '
      'AND nc.ncr_numero not in '
      
        '(select ncr_numero from Det_NotaCredito WHERE mov_numero = D.fac' +
        '_numero AND tfa_codigo = D.tfa_codigo AND fac_forma = D.fac_form' +
        'a AND emp_codigo = D.emp_codigo AND suc_codigo = D.suc_codigo)'
      ''
      'insert into Det_NotaCredito'
      
        'SELECT @EMPRESA, @SUC, @NC, 1 DET_SECUENCIA, @MOVTIPO, @FAC, @MO' +
        'NTONC, @FORMA, @tipo, NULL, NULL'
      ''
      'UPDATE NotasCredito'
      'SET ncr_montousado = ncr_monto'
      
        'WHERE emp_codigo = @EMPRESA AND suc_codigo = @SUC AND ncr_numero' +
        ' = @NC'
      'END'
      'END'
      ''
      'SET @PAGO = 0'
      
        'if exists(select fac_numero from FacFormaPago where fac_numero =' +
        ' @FAC and tfa_codigo = @tipo and fac_forma = @FORMA) begin '
      
        'SET @PAGO = ISNULL((SELECT isnull(SUM(for_monto),0) FROM FacForm' +
        'aPago '
      
        '             WHERE fac_numero = @FAC AND emp_codigo  = @EMPRESA ' +
        'AND suc_codigo = @SUC AND FAC_FORMA = @FORMA AND tfa_codigo'
      '              = @tipo),0)'
      'end'
      ''
      ''
      
        'SET @PAGO = ISNULL(@PAGO,0) + ISNULL((SELECT SUM(isnull(DET_MONT' +
        'O,0)+isnull(det_descuento,0)) FROM Recibos R '
      
        '             INNER JOIN Det_Recibo DR ON R.emp_codigo = DR.emp_c' +
        'odigo AND R.suc_codigo = DR.suc_codigo AND R.rec_numero =DR.rec_' +
        'numero'
      
        '             WHERE R.rec_status <> '#39'ANU'#39' AND DR.det_numero = @FA' +
        'C AND DR.emp_codigo  = @EMPRESA AND DR.suc_codigo = @SUC AND R.C' +
        'LI_CODIGO = @CLI '
      
        '             AND DR.FAC_FORMA = @FORMA AND DR.tfa_codigo = @tipo' +
        ' AND DR.det_tipo = @MOVTIPO),0)'
      #9#9#9' '
      
        'SET @PAGO = ISNULL(@PAGO,0) + ISNULL((SELECT ISNULL(SUM(DET_MONT' +
        'O),0) '
      '             FROM DET_NOTACREDITO N '
      
        '             INNER JOIN NOTASCREDITO NC ON N.EMP_CODIGO = NC.EMP' +
        '_CODIGO AND N.SUC_CODIGO = NC.SUC_CODIGO AND N.NCR_NUMERO = NC.N' +
        'CR_NUMERO'
      
        '             WHERE MOV_NUMERO = @FAC AND N.emp_codigo  = @EMPRES' +
        'A AND N.suc_codigo = @SUC'
      
        '             AND N.FAC_FORMA = @FORMA AND N.tfa_codigo = @TIPO A' +
        'ND NC.mov_tipo = @MOVTIPO'
      #9#9#9' AND NC.NCR_STATUS <> '#39'ANU'#39
      '             AND NC.NCR_DEVOLUCION IS NULL ),0)'
      ''
      
        'SET @PAGO = ISNULL(@PAGO,0) + ISNULL((SELECT ISNULL(SUM(DEV_TOTA' +
        'L),0) FROM DEVOLUCION N '
      
        '             WHERE N.dev_status <> '#39'ANU'#39' AND N.fac_numero = @FAC' +
        ' AND N.emp_codigo  = @EMPRESA AND N.suc_codigo = @SUC'
      
        '             AND N.FAC_FORMA = @FORMA AND N.tfa_codigo = @TIPO),' +
        '0)'
      ''
      'SET @PAGO = ISNULL(@PAGO,0) + '
      '             ISNULL((SELECT ISNULL(SUM(D.DET_MONTO),0) '
      '             FROM NotasCredito N '
      
        '             INNER JOIN Det_NotaCredito D ON N.EMP_CODIGO = D.EM' +
        'P_CODIGO AND N.SUC_CODIGO = D.SUC_CODIGO AND N.NCR_NUMERO = D.NC' +
        'R_NUMERO'
      
        '             WHERE N.NCR_status <> '#39'ANU'#39' AND D.MOV_numero = @FAC' +
        ' AND D.emp_codigo  = @EMPRESA AND D.suc_codigo = @SUC'
      '             AND D.FAC_FORMA = @FORMA AND D.tfa_codigo = @TIPO'
      #9#9#9' AND N.NCR_DEVOLUCION NOT IN '
      #9#9#9' (SELECT N.DEV_NUMERO FROM DEVOLUCION N '
      
        '             WHERE N.dev_status = '#39'EMI'#39' AND N.emp_codigo  = @EMP' +
        'RESA AND N.suc_codigo = @SUC'
      
        '             AND N.FAC_FORMA = @FORMA AND N.tfa_codigo = @TIPO))' +
        ',0)'
      ''
      ''
      
        'SET @PAGO = ISNULL(@PAGO,0) + ISNULL((SELECT isnull(sum(DD.FAC_P' +
        'AGO + DD.FAC_DESCUENTO),0) FROM DEPOSITOS D'
      
        '                                      INNER JOIN Det_DepositoFac' +
        'tura DD ON D.emp_codigo = DD.emp_codigo AND D.suc_codigo = DD.su' +
        'c_codigo AND D.dep_numero = dd.dep_numero '
      
        #9#9'      where d.dep_status <> '#39'ANU'#39' AND DD.fac_numero = @FAC AND' +
        ' DD.emp_codigo= @EMPRESA AND DD.suc_codigo = @SUC'
      
        '                                      and d.ban_codigo = dd.ban_' +
        'codigo AND DD.mov_tipo = @MOVTIPO'
      #9#9#9'  and d.dep_ano = dd.dep_ano'
      #9#9#9'  and d.dep_mes = dd.dep_mes'
      #9#9'      AND DD.FAC_FORMA = @FORMA AND DD.TFA_CODIGO = @TIPO),0)'
      #9#9#9' '
      'UPDATE Facturas'
      'SET fac_abono = isnull(@PAGO,0),'
      
        '    fac_status = (CASE WHEN (FAC_TOTAL-isnull(@PAGO,0))<=1 THEN ' +
        #39'PAG'#39' ELSE '#39'PEN'#39' END)'
      
        'WHERE emp_codigo = @EMPRESA AND suc_codigo = @SUC AND tfa_codigo' +
        ' = @tipo AND fac_forma = @FORMA '
      'AND fac_numero = @FAC and cli_codigo = @CLI'
      ''
      'UPDATE Movimientos '
      'SET mov_abono = isnull(@PAGO,0),'
      
        '    MOV_status = (CASE WHEN (MOV_MONTO-isnull(@PAGO,0))<=1 THEN ' +
        #39'PAG'#39' ELSE '#39'PEN'#39' END)'
      
        'WHERE emp_codigo = @EMPRESA AND suc_codigo = @SUC AND tfa_codigo' +
        ' = @tipo AND fac_forma = @FORMA '
      
        'AND MOV_numero = @FAC and cli_codigo = @CLI AND ISNULL(MOV_CUOTA' +
        ','#39'False'#39')='#39'False'#39
      ''
      ''
      
        'FETCH NEXT FROM Cr_Actualiza_CXC INTO @EMPRESA, @SUC, @FAC, @CLI' +
        ', @tipo, @FORMA, @MOVTIPO'
      'END'
      'CLOSE Cr_Actualiza_CXC'
      'DEALLOCATE Cr_Actualiza_CXC'
      ''
      'exec pr_actualiza_bce @empresa')
    Left = 328
    Top = 192
  end
  object pm1: TPopupMenu
    Left = 200
    Top = 312
    object RepararFacturas1: TMenuItem
      Caption = 'Reparar Facturas'
      OnClick = RepararFacturas1Click
    end
  end
  object qVerificarNCMontoUsados: TADOQuery
    Connection = DM.ADOSigma
    CommandTimeout = 0
    Parameters = <
      item
        Name = 'NCID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'EMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SUC'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'FAC'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'TIPO'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'FOR'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'TFA'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'UPDATE nc'#10'SET nc.ncr_montousado = ISNULL(x.montousado, 0)'#10'FROM N' +
        'otasCredito nc'#13#10#10
      
        'LEFT JOIN ('#10'SELECT d.emp_codigo,'#10' d.suc_codigo,'#10' d.ncr_numero,'#10' ' +
        'SUM(ISNULL(d.det_monto,0)) AS montousado'#10'    '
      'FROM Det_NotaCredito d'#10'    '
      'GROUP BY d.emp_codigo, d.suc_codigo, d.ncr_numero'#10') x '
      
        'ON nc.emp_codigo = x.emp_codigo'#10'   AND nc.suc_codigo = x.suc_cod' +
        'igo'#10'   '
      'AND nc.ncr_numero = x.ncr_numero'#10'WHERE nc.ncr_status <> '#39'anu'#39';')
    Left = 432
    Top = 248
  end
  object QQClientesPrueba: TADOQuery
    Connection = DM.ADOSigma
    AfterScroll = QClienteAfterScroll
    DataSource = dsCliente1
    Parameters = <
      item
        Name = 'suci'
        Size = -1
        Value = Null
      end
      item
        Name = 'emp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'fec'
        Size = -1
        Value = Null
      end
      item
        Name = 'tip'
        Size = -1
        Value = Null
      end
      item
        Name = 'st'
        Size = -1
        Value = Null
      end
      item
        Name = 'suc'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select *, :suci  SUC_CODIGO from pr_cxc (:emp, :fec, :tip, :st, ' +
        ':suc)')
    Left = 280
    Top = 8
    object IntegerField1: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'PR_CXC.EMP_CODIGO'
    end
    object IntegerField2: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = 'PR_CXC.CLI_CODIGO'
    end
    object IBStringField1: TIBStringField
      FieldName = 'CLI_NOMBRE'
      Origin = 'PR_CXC.CLI_NOMBRE'
      Size = 60
    end
    object FloatField1: TFloatField
      FieldName = 'BALANCE'
      Origin = 'PR_CXC.BALANCE'
      currency = True
    end
    object IBStringField2: TIBStringField
      FieldName = 'CLI_REFERENCIA'
      Origin = 'PR_CXC.CLI_REFERENCIA'
      Size = 10
    end
    object QClienteid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object BCDField1: TBCDField
      FieldName = 'CLI_LIMITE'
      Precision = 15
      Size = 2
    end
    object StringField1: TStringField
      FieldName = 'CLI_TELEFONO'
      Size = 30
    end
    object BCDField2: TBCDField
      FieldName = 'VENCIDO'
      Precision = 15
      Size = 2
    end
    object QClienteSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
  end
  object dsCliente1: TDataSource
    Left = 312
    Top = 8
  end
end
