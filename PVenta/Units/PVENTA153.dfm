object frmRepConciliacion: TfrmRepConciliacion
  Left = 390
  Top = 262
  ActiveControl = edBanco
  BorderStyle = bsSingle
  Caption = 'Reporte de Conciliaci'#243'n'
  ClientHeight = 285
  ClientWidth = 460
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
  Scaled = False
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 14
    Top = 40
    Width = 31
    Height = 13
    Caption = 'Banco'
  end
  object btBanco: TSpeedButton
    Left = 120
    Top = 40
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
    OnClick = btBancoClick
  end
  object Label14: TLabel
    Left = 14
    Top = 16
    Width = 41
    Height = 13
    Caption = 'Sucursal'
  end
  object Label1: TLabel
    Left = 14
    Top = 64
    Width = 73
    Height = 13
    Caption = 'Balance Banco'
  end
  object Label2: TLabel
    Left = 255
    Top = 64
    Width = 9
    Height = 13
    Caption = 'Al'
  end
  object Label4: TLabel
    Left = 14
    Top = 88
    Width = 78
    Height = 13
    Caption = 'Balance Anterior'
  end
  object Label5: TLabel
    Left = 255
    Top = 88
    Width = 9
    Height = 13
    Caption = 'Al'
  end
  object btClose: TBitBtn
    Left = 374
    Top = 256
    Width = 75
    Height = 25
    Caption = '&Salir'
    TabOrder = 5
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
  object edBanco: TEdit
    Left = 64
    Top = 40
    Width = 49
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
    TabOrder = 1
    OnChange = edBancoChange
    OnKeyDown = edBancoKeyDown
  end
  object tBanco: TEdit
    Left = 144
    Top = 40
    Width = 305
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
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 64
    Top = 16
    Width = 385
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
  object rgOrigen: TRadioGroup
    Left = 8
    Top = 240
    Width = 97
    Height = 43
    ItemIndex = 0
    Items.Strings = (
      'Pantalla'
      'Impresora')
    TabOrder = 7
    TabStop = True
  end
  object BitBtn1: TBitBtn
    Left = 286
    Top = 256
    Width = 83
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 4
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 112
    Width = 456
    Height = 129
    DataSource = dsConciliacion
    Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'con_status'
        Title.Alignment = taCenter
        Title.Caption = 'St.'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'con_fecha'
        Title.Alignment = taCenter
        Title.Caption = 'Fecha'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'con_balance'
        Title.Alignment = taCenter
        Title.Caption = 'Balance'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'con_dptransito'
        Title.Alignment = taCenter
        Title.Caption = 'DP. Transito'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'con_cktransito'
        Title.Alignment = taCenter
        Title.Caption = 'CK. Transito'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'con_debitos'
        Title.Alignment = taCenter
        Title.Caption = 'Debitos'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'con_creditos'
        Title.Alignment = taCenter
        Title.Caption = 'Creditos'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'con_dpmes'
        Title.Alignment = taCenter
        Title.Caption = 'DP. Mes'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'con_debitomes'
        Title.Alignment = taCenter
        Title.Caption = 'DB. Mes'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'con_ckmes'
        Title.Alignment = taCenter
        Title.Caption = 'CK. Mes'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'con_creditosmes'
        Title.Alignment = taCenter
        Title.Caption = 'CR. Mes'
        Width = 73
        Visible = True
      end>
  end
  object edBalance: TEdit
    Left = 104
    Top = 64
    Width = 121
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    TabOrder = 2
  end
  object FechaBalance: TDateTimePicker
    Left = 271
    Top = 64
    Width = 90
    Height = 21
    Date = 38948.000000000000000000
    Time = 38948.000000000000000000
    TabOrder = 8
    OnChange = FechaBalanceChange
  end
  object FechaAnt: TDateTimePicker
    Left = 271
    Top = 88
    Width = 90
    Height = 21
    Date = 38948.000000000000000000
    Time = 38948.000000000000000000
    TabOrder = 9
    OnChange = FechaAntChange
  end
  object edBalAnterior: TEdit
    Left = 104
    Top = 88
    Width = 121
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
  object QuickRep1: TQuickRep
    Left = 136
    Top = 480
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Letter
    Page.Continuous = False
    Page.Values = (
      127.000000000000000000
      2794.000000000000000000
      127.000000000000000000
      2159.000000000000000000
      127.000000000000000000
      127.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = Inches
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevShowThumbs = False
    PrevShowSearch = False
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object QRBand1: TQRBand
      Left = 48
      Top = 48
      Width = 720
      Height = 753
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        1992.312500000000000000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRShape16: TQRShape
        Left = 293
        Top = 444
        Width = 131
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          775.229166666667000000
          1174.750000000000000000
          346.604166666667000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 293
        Top = 332
        Width = 131
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          775.229166666667000000
          878.416666666667000000
          346.604166666667000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 293
        Top = 276
        Width = 131
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          775.229166666667000000
          730.250000000000000000
          346.604166666667000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 293
        Top = 108
        Width = 131
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          775.229166666667000000
          285.750000000000000000
          346.604166666667000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText1: TQRDBText
        Left = 8
        Top = 8
        Width = 92
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          21.166666666666670000
          243.416666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = DM.QEmpresas
        DataField = 'EMP_NOMBRE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FullJustify = False
        FontSize = 10
      end
      object QRLabel1: TQRLabel
        Left = 8
        Top = 24
        Width = 126
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          63.500000000000000000
          333.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Conciliaci'#243'n Bancaria'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 24
        Top = 56
        Width = 47
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          63.500000000000000000
          148.166666666666700000
          124.354166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'BANCO'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 54
        Top = 72
        Width = 17
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          142.875000000000000000
          190.500000000000000000
          44.979166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'AL'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 384
        Top = 56
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1016.000000000000000000
          148.166666666666700000
          174.625000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cuenta No.'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 80
        Top = 56
        Width = 5
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          211.666666666666700000
          148.166666666666700000
          13.229166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 80
        Top = 72
        Width = 5
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          211.666666666666700000
          190.500000000000000000
          13.229166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object lbBanco: TQRLabel
        Left = 96
        Top = 56
        Width = 249
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          254.000000000000000000
          148.166666666667000000
          658.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'lbBanco'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object lbFecha: TQRLabel
        Left = 96
        Top = 72
        Width = 113
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          254.000000000000000000
          190.500000000000000000
          298.979166666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'lbFecha'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 24
        Top = 112
        Width = 209
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          63.500000000000000000
          296.333333333333300000
          552.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Balance seg'#250'n estado bancario al : '
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object lbFecha2: TQRLabel
        Left = 304
        Top = 112
        Width = 113
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          804.333333333333000000
          296.333333333333000000
          298.979166666667000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'lbFecha'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape1: TQRShape
        Left = 549
        Top = 108
        Width = 145
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          1452.562500000000000000
          285.750000000000000000
          383.645833333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object lbValorsegun: TQRLabel
        Left = 557
        Top = 112
        Width = 130
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1473.729166666670000000
          296.333333333333000000
          343.958333333333000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '0.00'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 24
        Top = 168
        Width = 146
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          63.500000000000000000
          444.500000000000000000
          386.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'M'#225's Dep'#243'sito en tr'#225'nsito'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape2: TQRShape
        Left = 549
        Top = 164
        Width = 145
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          1452.562500000000000000
          433.916666666667000000
          383.645833333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object lbDepositos: TQRLabel
        Left = 557
        Top = 168
        Width = 130
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1473.729166666670000000
          444.500000000000000000
          343.958333333333000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '0.00'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 24
        Top = 224
        Width = 160
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          63.500000000000000000
          592.666666666666700000
          423.333333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Menos Cheques en tr'#225'nsito'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape3: TQRShape
        Left = 549
        Top = 220
        Width = 145
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          1452.562500000000000000
          582.083333333333000000
          383.645833333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object lbCheques: TQRLabel
        Left = 557
        Top = 224
        Width = 130
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1473.729166666670000000
          592.666666666667000000
          343.958333333333000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '0.00'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 24
        Top = 280
        Width = 164
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          63.500000000000000000
          740.833333333333300000
          433.916666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'BALANCE CONCILIADO AL'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object lbFecha3: TQRLabel
        Left = 304
        Top = 280
        Width = 113
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          804.333333333333000000
          740.833333333333000000
          298.979166666667000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'lbFecha'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape5: TQRShape
        Left = 549
        Top = 276
        Width = 145
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          1452.562500000000000000
          730.250000000000000000
          383.645833333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object lbSegunLibro: TQRLabel
        Left = 557
        Top = 280
        Width = 130
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1473.729166666670000000
          740.833333333333000000
          343.958333333333000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '0.00'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 24
        Top = 335
        Width = 151
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          63.500000000000000000
          886.354166666666700000
          399.520833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'BALANCE ANTERIOR AL'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Left = 24
        Top = 361
        Width = 26
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          63.500000000000000000
          955.145833333333300000
          68.791666666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'M'#225's'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object lbFecha4: TQRLabel
        Left = 304
        Top = 336
        Width = 113
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          804.333333333333000000
          889.000000000000000000
          298.979166666667000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'lbFecha'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape6: TQRShape
        Left = 549
        Top = 333
        Width = 145
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          68.791666666666700000
          1452.562500000000000000
          881.062500000000000000
          383.645833333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object lbAnterior: TQRLabel
        Left = 557
        Top = 337
        Width = 130
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1473.729166666670000000
          891.645833333333000000
          343.958333333333000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '0.00'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel15: TQRLabel
        Left = 72
        Top = 361
        Width = 109
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          190.500000000000000000
          955.145833333333300000
          288.395833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Dep'#243'sitos del mes'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel16: TQRLabel
        Left = 72
        Top = 383
        Width = 83
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          190.500000000000000000
          1013.354166666667000000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Otros cr'#233'ditos'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape7: TQRShape
        Left = 549
        Top = 358
        Width = 145
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666700000
          1452.562500000000000000
          947.208333333333000000
          383.645833333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object lbDepMes: TQRLabel
        Left = 557
        Top = 361
        Width = 130
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1473.729166666670000000
          955.145833333333000000
          343.958333333333000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '0.00'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape8: TQRShape
        Left = 549
        Top = 380
        Width = 145
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666700000
          1452.562500000000000000
          1005.416666666670000000
          383.645833333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object lbCreditosMes: TQRLabel
        Left = 557
        Top = 383
        Width = 130
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1473.729166666670000000
          1013.354166666670000000
          343.958333333333000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '0.00'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel19: TQRLabel
        Left = 24
        Top = 405
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          63.500000000000000000
          1071.562500000000000000
          105.833333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Menos'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel20: TQRLabel
        Left = 72
        Top = 405
        Width = 155
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          190.500000000000000000
          1071.562500000000000000
          410.104166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cheques emitidos del mes'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape9: TQRShape
        Left = 549
        Top = 402
        Width = 145
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666700000
          1452.562500000000000000
          1063.625000000000000000
          383.645833333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object lbChequesMes: TQRLabel
        Left = 557
        Top = 405
        Width = 130
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1473.729166666670000000
          1071.562500000000000000
          343.958333333333000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '0.00'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel22: TQRLabel
        Left = 72
        Top = 427
        Width = 152
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          190.500000000000000000
          1129.770833333333000000
          402.166666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cargos bancarios del mes'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape10: TQRShape
        Left = 549
        Top = 424
        Width = 145
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666700000
          1452.562500000000000000
          1121.833333333330000000
          383.645833333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object lbCargosMes: TQRLabel
        Left = 557
        Top = 427
        Width = 130
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1473.729166666670000000
          1129.770833333330000000
          343.958333333333000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '0.00'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel24: TQRLabel
        Left = 24
        Top = 447
        Width = 168
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          63.500000000000000000
          1182.687500000000000000
          444.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'BALANCE CONCILIADO AL'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object lbFecha5: TQRLabel
        Left = 304
        Top = 448
        Width = 113
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          804.333333333333000000
          1185.333333333330000000
          298.979166666667000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'lbFecha'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape11: TQRShape
        Left = 549
        Top = 445
        Width = 145
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          68.791666666666700000
          1452.562500000000000000
          1177.395833333330000000
          383.645833333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object lbTotal: TQRLabel
        Left = 557
        Top = 449
        Width = 130
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1473.729166666670000000
          1187.979166666670000000
          343.958333333333000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '0.00'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object lbCuenta: TQRLabel
        Left = 463
        Top = 56
        Width = 52
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1225.020833333333000000
          148.166666666666700000
          137.583333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'lbCuenta'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape4: TQRShape
        Left = 16
        Top = 616
        Width = 249
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          42.333333333333330000
          1629.833333333333000000
          658.812500000000000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel9: TQRLabel
        Left = 16
        Top = 624
        Width = 82
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          1651.000000000000000000
          216.958333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Preparado por'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape12: TQRShape
        Left = 16
        Top = 720
        Width = 249
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          42.333333333333330000
          1905.000000000000000000
          658.812500000000000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel12: TQRLabel
        Left = 16
        Top = 728
        Width = 75
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          1926.166666666667000000
          198.437500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Revisado por'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
  end
  object fecha3: TDateTimePicker
    Left = 367
    Top = 72
    Width = 65
    Height = 21
    Date = 38948.000000000000000000
    Time = 38948.000000000000000000
    TabOrder = 12
    Visible = False
  end
  object BitBtn2: TBitBtn
    Left = 128
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Eliminar'
    TabOrder = 13
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 207
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Grabar'
    TabOrder = 14
    OnClick = BitBtn3Click
    Glyph.Data = {
      26050000424D26050000000000003604000028000000100000000F0000000100
      080000000000F000000000000000000000000001000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000C0DCC000F0C8
      A400000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0FBFF00A4A0A000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070700000000
      0000000000000000000707000303000000000000070700030007070003030000
      0000000007070003000707000303000000000000070700030007070003030000
      0000000000000003000707000303030303030303030303030007070003030000
      0000000000000303000707000300070707070707070700030007070003000707
      0707070707070003000707000300070707070707070700030007070003000707
      0707070707070003000707000300070707070707070700000007070003000707
      0707070707070007000707000000000000000000000000000007070707070707
      07070707070707070707}
  end
  object Search: TQrySearchDlgADO
    AliasName = DM.ADOSigma
    Left = 54
    Top = 152
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
    Left = 88
    Top = 152
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
    Left = 120
    Top = 152
  end
  object QConciliacion: TADOQuery
    Connection = DM.ADOSigma
    AfterPost = QConciliacionAfterPost
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'emp'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end
      item
        Name = 'suc'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end
      item
        Name = 'ban'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    SQL.Strings = (
      'select'
      
        'emp_codigo,suc_codigo,ban_codigo,con_fecha,con_balance,con_dptra' +
        'nsito,con_cktransito,'
      
        'con_debitos,con_creditos,con_dpmes,con_debitomes,con_ckmes,con_c' +
        'reditosmes,usu_codigo,'
      'con_status'
      'from'
      'conciliacion'
      'where'
      'emp_codigo = :emp'
      'and suc_codigo = :suc'
      'and ban_codigo = :ban'
      'order by'
      'con_Fecha desc')
    Left = 232
    Top = 152
    object QConciliacionemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QConciliacionsuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QConciliacionban_codigo: TIntegerField
      FieldName = 'ban_codigo'
    end
    object QConciliacioncon_fecha: TDateTimeField
      FieldName = 'con_fecha'
    end
    object QConciliacioncon_balance: TBCDField
      FieldName = 'con_balance'
      currency = True
      Precision = 18
      Size = 0
    end
    object QConciliacioncon_dptransito: TBCDField
      FieldName = 'con_dptransito'
      currency = True
      Precision = 18
      Size = 0
    end
    object QConciliacioncon_cktransito: TBCDField
      FieldName = 'con_cktransito'
      currency = True
      Precision = 18
      Size = 0
    end
    object QConciliacioncon_debitos: TBCDField
      FieldName = 'con_debitos'
      currency = True
      Precision = 18
      Size = 0
    end
    object QConciliacioncon_creditos: TBCDField
      FieldName = 'con_creditos'
      currency = True
      Precision = 18
      Size = 0
    end
    object QConciliacioncon_dpmes: TBCDField
      FieldName = 'con_dpmes'
      currency = True
      Precision = 18
      Size = 0
    end
    object QConciliacioncon_debitomes: TBCDField
      FieldName = 'con_debitomes'
      currency = True
      Precision = 18
      Size = 0
    end
    object QConciliacioncon_ckmes: TBCDField
      FieldName = 'con_ckmes'
      currency = True
      Precision = 18
      Size = 0
    end
    object QConciliacioncon_creditosmes: TBCDField
      FieldName = 'con_creditosmes'
      currency = True
      Precision = 18
      Size = 0
    end
    object QConciliacionusu_codigo: TIntegerField
      FieldName = 'usu_codigo'
    end
    object QConciliacioncon_status: TStringField
      FieldName = 'con_status'
      Size = 3
    end
  end
  object dsConciliacion: TDataSource
    DataSet = QConciliacion
    OnDataChange = dsConciliacionDataChange
    Left = 264
    Top = 152
  end
  object Query2: TADOQuery
    Connection = DM.ADOSigma
    DataSource = DM.dsEmpresas
    Parameters = <>
    Left = 232
    Top = 184
  end
  object QRptConciliacion: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    DataSource = dsConciliacion
    Parameters = <
      item
        Name = 'emp_codigo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'suc_codigo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'ban_codigo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'con_Fecha'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select'
      
        '(select top 1 con_balance from Conciliacion where emp_codigo = c' +
        '.emp_codigo and suc_codigo = c.suc_codigo and '
      
        '  ban_codigo = c.ban_codigo and con_fecha<c.con_fecha order by c' +
        'on_fecha desc)  bal_anterior,'
      
        '(select top 1 con_fecha from Conciliacion where emp_codigo = c.e' +
        'mp_codigo and suc_codigo = c.suc_codigo and '
      
        '  ban_codigo = c.ban_codigo and con_fecha<c.con_fecha order by c' +
        'on_fecha desc) fec_anterior'
      ',b.cat_cuenta, b.ban_nombre,b.ban_cuenta, c.*'
      'from conciliacion c'
      
        'left join bancos b on c.emp_codigo = b.emp_codigo and c.ban_codi' +
        'go = b.ban_codigo and c.suc_codigo = b.suc_codigo'
      'where c.emp_codigo = :emp_codigo'
      '   and c.suc_codigo  = :suc_codigo'
      '   and c.ban_codigo  = :ban_codigo'
      '   and c.con_Fecha  = :con_Fecha'
      'order by c.con_Fecha desc')
    Left = 312
    Top = 176
    object QRptConciliacioncat_cuenta: TStringField
      FieldName = 'cat_cuenta'
      Size = 15
    end
    object QRptConciliacionban_nombre: TStringField
      FieldName = 'ban_nombre'
      Size = 60
    end
    object QRptConciliacionemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QRptConciliacionsuc_codigo: TIntegerField
      FieldName = 'suc_codigo'
    end
    object QRptConciliacionban_codigo: TIntegerField
      FieldName = 'ban_codigo'
    end
    object QRptConciliacioncon_fecha: TDateTimeField
      FieldName = 'con_fecha'
    end
    object QRptConciliacioncon_balance: TBCDField
      FieldName = 'con_balance'
      Precision = 15
      Size = 2
    end
    object QRptConciliacioncon_dptransito: TBCDField
      FieldName = 'con_dptransito'
      Precision = 15
      Size = 2
    end
    object QRptConciliacioncon_cktransito: TBCDField
      FieldName = 'con_cktransito'
      Precision = 15
      Size = 2
    end
    object QRptConciliacioncon_debitos: TBCDField
      FieldName = 'con_debitos'
      Precision = 15
      Size = 2
    end
    object QRptConciliacioncon_creditos: TBCDField
      FieldName = 'con_creditos'
      Precision = 15
      Size = 2
    end
    object QRptConciliacioncon_dpmes: TBCDField
      FieldName = 'con_dpmes'
      Precision = 15
      Size = 2
    end
    object QRptConciliacioncon_debitomes: TBCDField
      FieldName = 'con_debitomes'
      Precision = 15
      Size = 2
    end
    object QRptConciliacioncon_ckmes: TBCDField
      FieldName = 'con_ckmes'
      Precision = 15
      Size = 2
    end
    object QRptConciliacioncon_creditosmes: TBCDField
      FieldName = 'con_creditosmes'
      Precision = 15
      Size = 2
    end
    object QRptConciliacionusu_codigo: TIntegerField
      FieldName = 'usu_codigo'
    end
    object QRptConciliacioncon_status: TStringField
      FieldName = 'con_status'
      Size = 3
    end
    object QRptConciliacionbal_anterior: TBCDField
      FieldName = 'bal_anterior'
      ReadOnly = True
      Precision = 15
      Size = 2
    end
    object QRptConciliacionfec_anterior: TDateField
      FieldName = 'fec_anterior'
    end
    object QRptConciliacionban_cuenta: TStringField
      FieldName = 'ban_cuenta'
      Size = 15
    end
  end
  object dsRpt: TDataSource
    DataSet = QRptConciliacion
    OnDataChange = dsConciliacionDataChange
    Left = 344
    Top = 176
  end
  object QRExcelFilter1: TQRExcelFilter
    UseXLColumns = False
    Left = 56
    Top = 184
  end
  object qChequesTrans: TADOQuery
    Connection = DM.ADOSigma
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'EMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SUC'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'BAN'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'FECHA1'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'FECHA2'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      ' set dateformat ymd '
      'DECLARE @EMP INT '
      'DECLARE @SUC INT'
      'DECLARE @FECHA1 DATETIME'
      'DECLARE @FECHA2 DATETIME'
      'DECLARE @BAN INT '
      'DECLARE @MONTO_CK NUMERIC(18,2)'
      'DECLARE @MONTO_DP NUMERIC(18,2)'
      ''
      ''
      'SET @EMP = :EMP'
      'SET @SUC = :SUC'
      'SET @BAN = :BAN'
      'SET @FECHA1 = :FECHA1'
      'SET @FECHA2 = :FECHA2'
      ''
      ''
      'SET @MONTO_CK = '
      '  (select ISNULL(sum(CHE_monto_banco),0) as Valor from cheques'
      '  where emp_codigo = @EMP'
      '  AND CHE_conciliado = '#39'N'#39
      '  and suc_codigo = @SUC'
      '  and ban_codigo = @BAN'
      '  and che_status <> '#39'ANU'#39
      '  AND CHE_FECHA <= @FECHA2)'
      ''
      ''
      '  SET @MONTO_DP = '
      '  (select ISNULL(sum(dep_monto),0) as Valor from Depositos'
      '  where emp_codigo = @EMP'
      '  AND DEP_conciliado = '#39'N'#39
      '  and suc_codigo = @SUC'
      '  and ban_codigo = @BAN'
      '  and DEP_status <> '#39'ANU'#39
      '  AND DEP_FECHA <= @FECHA2)'
      ''
      ''
      '  SELECT @MONTO_CK MONTO_CK, @MONTO_DP MONTO_DP')
    Left = 416
    Top = 128
    object qChequesTransValor: TCurrencyField
      FieldName = 'MONTO_CK'
    end
    object qChequesTransMONTO_DP: TCurrencyField
      FieldName = 'MONTO_DP'
    end
  end
end
