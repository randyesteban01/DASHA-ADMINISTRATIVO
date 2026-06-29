object RPedidoSup_Preimpreso: TRPedidoSup_Preimpreso
  Left = 840
  Top = 123
  Width = 851
  Height = 732
  VertScrollBar.Position = 17
  Caption = 'RPedidoSup_Preimpreso'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QRTHorton: TQuickRep
    Left = 8
    Top = -9
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = QRTHortonBeforePrint
    DataSet = QDetalle
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
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
    object QRBand23: TQRBand
      Left = 48
      Top = 48
      Width = 720
      Height = 342
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
        904.875000000000000000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRShape32: TQRShape
        Left = 0
        Top = 176
        Width = 720
        Height = 114
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          301.625000000000000000
          0.000000000000000000
          465.666666666666800000
          1905.000000000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape33: TQRShape
        Left = 511
        Top = 77
        Width = 209
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1352.020833333333000000
          203.729166666666700000
          552.979166666666800000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape34: TQRShape
        Left = 511
        Top = 56
        Width = 209
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          1352.020833333333000000
          148.166666666666700000
          552.979166666666700000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape35: TQRShape
        Left = 615
        Top = 56
        Width = 1
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          100.541666666666700000
          1627.187500000000000000
          148.166666666666700000
          2.645833333333333000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRDBText43: TQRDBText
        Left = 619
        Top = 78
        Width = 97
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1637.770833333333000000
          206.375000000000000000
          256.645833333333400000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = QPedido
        DataField = 'PED_NUMERO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Mask = '000000'
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FullJustify = False
        FontSize = 8
      end
      object QRDBText44: TQRDBText
        Left = 514
        Top = 78
        Width = 97
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1359.958333333333000000
          206.375000000000000000
          256.645833333333400000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QPedido
        DataField = 'PED_FECHA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FullJustify = False
        FontSize = 8
      end
      object QRShape36: TQRShape
        Left = 511
        Top = 16
        Width = 209
        Height = 41
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          108.479166666666700000
          1352.020833333333000000
          42.333333333333340000
          552.979166666666700000)
        XLColumn = 0
        Brush.Color = 14671839
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel64: TQRLabel
        Left = 520
        Top = 25
        Width = 191
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          1375.833333333333000000
          66.145833333333340000
          505.354166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'ORDEN DE COMPRA'
        Color = 14671839
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 14
      end
      object QRLabel230: TQRLabel
        Left = 545
        Top = 60
        Width = 34
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1441.979166666667000000
          158.750000000000000000
          89.958333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Fecha'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel243: TQRLabel
        Left = 643
        Top = 60
        Width = 45
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1701.270833333333000000
          158.750000000000000000
          119.062500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Numero'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRShape37: TQRShape
        Left = 0
        Top = 136
        Width = 720
        Height = 41
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          108.479166666666700000
          0.000000000000000000
          359.833333333333400000
          1905.000000000000000000)
        XLColumn = 0
        Brush.Color = 14671839
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel245: TQRLabel
        Left = 6
        Top = 139
        Width = 91
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          15.875000000000000000
          367.770833333333400000
          240.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Proveedor:'
        Color = 14671839
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRDBText141: TQRDBText
        Left = 123
        Top = 139
        Width = 350
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          325.437500000000000000
          367.770833333333400000
          926.041666666666800000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clBlack
        DataField = 'FAC_NOMBRE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
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
      object QRLabel246: TQRLabel
        Left = 7
        Top = 160
        Width = 26
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          18.520833333333330000
          423.333333333333300000
          68.791666666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = True
        Caption = 'RNC:'
        Color = 14671839
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel251: TQRLabel
        Left = 7
        Top = 178
        Width = 48
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          18.520833333333330000
          470.958333333333300000
          127.000000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = True
        Caption = 'Direcci'#243'n:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel252: TQRLabel
        Left = 7
        Top = 194
        Width = 47
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          18.520833333333330000
          513.291666666666700000
          124.354166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = True
        Caption = 'Tel'#233'fono:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel253: TQRLabel
        Left = 7
        Top = 210
        Width = 29
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          18.520833333333330000
          555.625000000000000000
          76.729166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = True
        Caption = 'Email:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel254: TQRLabel
        Left = 7
        Top = 242
        Width = 104
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          18.520833333333330000
          640.291666666666700000
          275.166666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = True
        Caption = 'Condiciones de pago:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRDBText142: TQRDBText
        Left = 123
        Top = 177
        Width = 300
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          325.437500000000000000
          468.312500000000100000
          793.750000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = QPedido
        DataField = 'PED_DIRECCION'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = False
        ExportAs = exptText
        FullJustify = False
        FontSize = 8
      end
      object QRDBText143: TQRDBText
        Left = 123
        Top = 193
        Width = 300
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          325.437500000000000000
          510.645833333333300000
          793.750000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = QPedido
        DataField = 'PED_TELEFONO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = False
        ExportAs = exptText
        FullJustify = False
        FontSize = 8
      end
      object lbcondicion: TQRLabel
        Left = 123
        Top = 242
        Width = 300
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          325.437500000000000000
          640.291666666666800000
          793.750000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'lbcondicion'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = False
        ExportAs = exptText
        FontSize = 8
      end
      object lbemail: TQRLabel
        Left = 123
        Top = 210
        Width = 300
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          325.437500000000000000
          555.625000000000000000
          793.750000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'lbemail'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = False
        ExportAs = exptText
        FontSize = 8
      end
      object QRDBText144: TQRDBText
        Left = 40
        Top = 117
        Width = 120
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          105.833333333333300000
          309.562500000000000000
          317.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = DM.QEmpresas
        DataField = 'EMP_RNC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FullJustify = False
        FontSize = 8
      end
      object lbrnc: TQRLabel
        Left = 123
        Top = 160
        Width = 350
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          325.437500000000000000
          423.333333333333300000
          926.041666666666800000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'lbrnc'
        Color = 14671839
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRDBText146: TQRDBText
        Left = 123
        Top = 139
        Width = 590
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          325.437500000000000000
          367.770833333333400000
          1561.041666666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = 14671839
        DataSet = QPedido
        DataField = 'PED_NOMBRE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FullJustify = False
        FontSize = 12
      end
      object QRShape38: TQRShape
        Left = 0
        Top = 316
        Width = 720
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          0.000000000000000000
          836.083333333333400000
          1905.000000000000000000)
        XLColumn = 0
        Brush.Color = 14671839
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel265: TQRLabel
        Left = 180
        Top = 324
        Width = 192
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          476.250000000000000000
          857.250000000000000000
          508.000000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = True
        Caption = 'Descripci'#243'n del Producto / Servicio'
        Color = 14671839
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel267: TQRLabel
        Left = 473
        Top = 324
        Width = 29
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1251.479166666667000000
          857.250000000000000000
          76.729166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = True
        Caption = 'Cant.'
        Color = 14671839
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel268: TQRLabel
        Left = 547
        Top = 324
        Width = 36
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1447.270833333333000000
          857.250000000000000000
          95.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = True
        Caption = 'Precio'
        Color = 14671839
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRShape39: TQRShape
        Left = 489
        Top = 292
        Width = 231
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          1293.812500000000000000
          772.583333333333400000
          611.187500000000000000)
        XLColumn = 0
        Brush.Color = 14671839
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel269: TQRLabel
        Left = 660
        Top = 324
        Width = 28
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1746.250000000000000000
          857.250000000000000000
          74.083333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = True
        Caption = 'Total'
        Color = 14671839
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel270: TQRLabel
        Left = 496
        Top = 295
        Width = 217
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1312.333333333333000000
          780.520833333333400000
          574.145833333333400000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'VALOR'
        Color = 14671839
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRDBImage1: TQRDBImage
        Left = 8
        Top = 8
        Width = 337
        Height = 105
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          277.812500000000000000
          21.166666666666670000
          21.166666666666670000
          891.645833333333200000)
        XLColumn = 0
        DataField = 'EMP_LOGO'
        DataSet = DM.QEmpresas
      end
      object QRLabel261: TQRLabel
        Left = 7
        Top = 117
        Width = 26
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          18.520833333333330000
          309.562500000000000000
          68.791666666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = True
        Caption = 'RNC:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel263: TQRLabel
        Left = 7
        Top = 258
        Width = 51
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          18.520833333333330000
          682.625000000000000000
          134.937500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = True
        Caption = 'Vendedor:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel264: TQRLabel
        Left = 7
        Top = 274
        Width = 65
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          18.520833333333330000
          724.958333333333300000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = True
        Caption = 'Cotizacion #:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel276: TQRLabel
        Left = 431
        Top = 178
        Width = 55
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1140.354166666667000000
          470.958333333333300000
          145.520833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = True
        Caption = 'Solicitud #:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lbvendedor: TQRLabel
        Left = 123
        Top = 258
        Width = 300
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          325.437500000000000000
          682.625000000000000000
          793.750000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'lbvendedor'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = False
        ExportAs = exptText
        FontSize = 8
      end
      object QRDBText145: TQRDBText
        Left = 123
        Top = 273
        Width = 302
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          325.437500000000000000
          722.312500000000000000
          799.041666666666800000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = QPedido
        DataField = 'PED_COTIZACION'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = False
        ExportAs = exptText
        FullJustify = False
        FontSize = 8
      end
      object QRDBText149: TQRDBText
        Left = 496
        Top = 177
        Width = 217
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1312.333333333333000000
          468.312500000000100000
          574.145833333333400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = QPedido
        DataField = 'ped_solicitud_compra'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = False
        ExportAs = exptText
        FullJustify = False
        FontSize = 8
      end
      object QRLabel2: TQRLabel
        Left = 431
        Top = 202
        Width = 31
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1140.354166666667000000
          534.458333333333300000
          82.020833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = True
        Caption = 'Envio:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRDBRichText1: TQRDBRichText
        Left = 432
        Top = 216
        Width = 281
        Height = 70
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          185.208333333333300000
          1143.000000000000000000
          571.500000000000000000
          743.479166666666800000)
        XLColumn = 0
        Alignment = taLeftJustify
        AutoStretch = False
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        DataField = 'ped_envio'
        DataSet = QPedido
      end
      object QRLabel3: TQRLabel
        Left = 4
        Top = 324
        Width = 82
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          10.583333333333330000
          857.250000000000000000
          216.958333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = True
        Caption = 'Ref. Fabricante'
        Color = 14671839
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel4: TQRLabel
        Left = 7
        Top = 226
        Width = 82
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          18.520833333333330000
          597.958333333333300000
          216.958333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = True
        Caption = 'Centro de costo:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lbcentro: TQRLabel
        Left = 123
        Top = 226
        Width = 300
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          325.437500000000000000
          597.958333333333400000
          793.750000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'lbcentro'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = False
        ExportAs = exptText
        FontSize = 8
      end
    end
    object QRBand24: TQRBand
      Left = 48
      Top = 390
      Width = 720
      Height = 31
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRBand24BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        82.020833333333330000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText150: TQRDBText
        Left = 472
        Top = 4
        Width = 33
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1248.833333333333000000
          10.583333333333330000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = QDetalle
        DataField = 'DET_CANTIDAD'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FullJustify = False
        FontSize = 8
      end
      object QRDBText151: TQRDBText
        Left = 513
        Top = 4
        Width = 89
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1357.312500000000000000
          10.583333333333330000
          235.479166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = QDetalle
        DataField = 'PrecioItbis'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FullJustify = False
        FontSize = 8
      end
      object QRDBText152: TQRDBText
        Left = 630
        Top = 4
        Width = 81
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1666.875000000000000000
          10.583333333333330000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = QDetalle
        DataField = 'Valor2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FullJustify = False
        FontSize = 8
      end
      object QRRichText2: TQRRichText
        Left = 99
        Top = 18
        Width = 393
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          261.937500000000000000
          47.625000000000000000
          1039.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AutoStretch = True
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
      end
      object QRDBText148: TQRDBText
        Left = 99
        Top = 4
        Width = 358
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          261.937500000000000000
          10.583333333333330000
          947.208333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = QDetalle
        DataField = 'DET_DESCRIPCION'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = False
        ExportAs = exptText
        FullJustify = False
        FontSize = 8
      end
      object QRDBText2: TQRDBText
        Left = 3
        Top = 4
        Width = 92
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          7.937500000000000000
          10.583333333333330000
          243.416666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = QDetalle
        DataField = 'PRO_RFABRIC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FullJustify = False
        FontSize = 8
      end
    end
    object QRBand25: TQRBand
      Left = 48
      Top = 437
      Width = 720
      Height = 180
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = True
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        476.250000000000000000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRShape45: TQRShape
        Left = 520
        Top = 63
        Width = 200
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          1375.833333333333000000
          166.687500000000000000
          529.166666666666700000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape46: TQRShape
        Left = 520
        Top = 42
        Width = 200
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          1375.833333333333000000
          111.125000000000000000
          529.166666666666700000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape47: TQRShape
        Left = 520
        Top = 0
        Width = 200
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          1375.833333333333000000
          0.000000000000000000
          529.166666666666800000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape48: TQRShape
        Left = 2
        Top = 100
        Width = 183
        Height = 7
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          18.520833333333330000
          5.291666666666667000
          264.583333333333400000
          484.187500000000000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel272: TQRLabel
        Left = 527
        Top = 3
        Width = 53
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1394.354166666667000000
          7.937500000000000000
          140.229166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Sub-Total'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel273: TQRLabel
        Left = 527
        Top = 45
        Width = 25
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1394.354166666667000000
          119.062500000000000000
          66.145833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Itbis'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel274: TQRLabel
        Left = 527
        Top = 66
        Width = 28
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1394.354166666667000000
          174.625000000000000000
          74.083333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRDBText153: TQRDBText
        Left = 616
        Top = 45
        Width = 98
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1629.833333333333000000
          119.062500000000000000
          259.291666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QPedido
        DataField = 'PED_ITBIS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Mask = '#,0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FullJustify = False
        FontSize = 8
      end
      object QRDBText154: TQRDBText
        Left = 616
        Top = 66
        Width = 98
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1629.833333333333000000
          174.625000000000000000
          259.291666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QPedido
        DataField = 'PED_TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Mask = '#,0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FullJustify = False
        FontSize = 9
      end
      object QRExpr9: TQRExpr
        Left = 616
        Top = 3
        Width = 98
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1629.833333333333000000
          7.937500000000000000
          259.291666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QRTHorton
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(QDetalle.PrecioItbis * QDetalle.DET_CANTIDAD)'
        Mask = '#,0.00'
        ExportAs = exptText
        FontSize = 8
      end
      object QRDBRichText2: TQRDBRichText
        Left = 6
        Top = 8
        Width = 451
        Height = 57
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          150.812500000000000000
          15.875000000000000000
          21.166666666666670000
          1193.270833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AutoStretch = False
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        DataField = 'PED_NOTA'
        DataSet = QPedido
      end
      object QRLabel275: TQRLabel
        Left = 8
        Top = 106
        Width = 177
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          21.166666666666670000
          280.458333333333400000
          468.312500000000100000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Elaborado por'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRShape49: TQRShape
        Left = 611
        Top = 19
        Width = 3
        Height = 66
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          174.625000000000000000
          1616.604166666667000000
          50.270833333333330000
          7.937500000000000000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object lbsimbolo1: TQRLabel
        Left = 605
        Top = 3
        Width = 7
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1600.729166666667000000
          7.937500000000000000
          18.520833333333330000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = True
        Caption = '$'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lbsimbolo2: TQRLabel
        Left = 605
        Top = 45
        Width = 7
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1600.729166666667000000
          119.062500000000000000
          18.520833333333330000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = True
        Caption = '$'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object lbsimbolo3: TQRLabel
        Left = 605
        Top = 67
        Width = 7
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1600.729166666667000000
          177.270833333333300000
          18.520833333333330000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = True
        Caption = '$'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRShape50: TQRShape
        Left = 536
        Top = 100
        Width = 177
        Height = 7
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          18.520833333333330000
          1418.166666666667000000
          264.583333333333400000
          468.312500000000100000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel279: TQRLabel
        Left = 544
        Top = 106
        Width = 161
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1439.333333333333000000
          280.458333333333400000
          425.979166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Aprobado por'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRDBText155: TQRDBText
        Left = 134
        Top = 129
        Width = 451
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          354.541666666666700000
          341.312500000000000000
          1193.270833333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = DM.QEmpresas
        DataField = 'Direccion'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FullJustify = False
        FontSize = 8
      end
      object QRDBText156: TQRDBText
        Left = 134
        Top = 145
        Width = 451
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          354.541666666666700000
          383.645833333333300000
          1193.270833333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = DM.QEmpresas
        DataField = 'EMP_TELEFONO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FullJustify = False
        FontSize = 8
      end
      object QRDBText157: TQRDBText
        Left = 134
        Top = 161
        Width = 452
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          354.541666666666700000
          425.979166666666700000
          1195.916666666667000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = DM.QEmpresas
        DataField = 'EMP_WEB'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FullJustify = False
        FontSize = 8
      end
      object QRShape40: TQRShape
        Left = 274
        Top = 100
        Width = 183
        Height = 7
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          18.520833333333330000
          724.958333333333400000
          264.583333333333400000
          484.187500000000000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel259: TQRLabel
        Left = 274
        Top = 106
        Width = 183
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          724.958333333333400000
          280.458333333333400000
          484.187500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Revisado por'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRShape1: TQRShape
        Left = 520
        Top = 21
        Width = 200
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          1375.833333333333000000
          55.562500000000000000
          529.166666666666700000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel1: TQRLabel
        Left = 527
        Top = 24
        Width = 60
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1394.354166666667000000
          63.500000000000000000
          158.750000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Descuento'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRShape2: TQRShape
        Left = 611
        Top = -3
        Width = 3
        Height = 66
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          174.625000000000000000
          1616.604166666667000000
          -7.937500000000000000
          7.937500000000000000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object lbsimbolo4: TQRLabel
        Left = 605
        Top = 24
        Width = 7
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1600.729166666667000000
          63.500000000000000000
          18.520833333333330000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = True
        Caption = '$'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRDBText1: TQRDBText
        Left = 616
        Top = 24
        Width = 98
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1629.833333333333000000
          63.500000000000000000
          259.291666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QPedido
        DataField = 'PED_DESCUENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Mask = '#,0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FullJustify = False
        FontSize = 8
      end
    end
    object ChildBand1: TQRChildBand
      Left = 48
      Top = 421
      Width = 720
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = ChildBand1BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        42.333333333333330000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      ParentBand = QRBand24
      PrintOrder = cboAfterParent
      object QRLabel35: TQRLabel
        Left = 168
        Top = 1
        Width = 377
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          444.500000000000000000
          2.645833333333333000
          997.479166666666900000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '***** Ultima l'#237'nea de detalle *****'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
    end
    object QRBand30: TQRBand
      Left = 48
      Top = 617
      Width = 720
      Height = 22
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
        58.208333333333330000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object qrlUsuario: TQRLabel
        Left = 8
        Top = 2
        Width = 59
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          5.291666666666667000
          156.104166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qrlUsuario'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
  end
  object QPedido: TADOQuery
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
        Name = 'numero'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'suc'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'EMP_CODIGO, PED_TIPO, PED_NUMERO, PED_FECHA,'
      'PED_COTIZACION, CLI_CODIGO, CLI_REFERENCIA,'
      'PED_DIRECCION, PED_TELEFONO, PED_FAX,'
      'cast(PED_DESCUENTO as numeric(18,2)) PED_DESCUENTO,'
      'CAST(PED_ITBIS  as numeric(18,2)) PED_ITBIS,'
      'CAST(PED_TOTAL  as numeric(18,2)) PED_TOTAL,'
      'PED_NOMBRE, PED_LOCALIDAD, PED_NOTA,'
      'SUC_CODIGO, ped_solicitud_compra, sup_codigo, cpa_codigo,'
      
        'ped_envio, mon_codigo, CAST(ped_tasa as numeric(18,2)) PED_TASA,' +
        ' cen_codigo'
      ' from PEDIDOS'
      'where emp_codigo = :emp_codigo'
      'and ped_tipo = '#39'S'#39
      'and ped_numero = :numero'
      'and suc_codigo = :suc')
    Left = 176
    Top = 16
    object QPedidoEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Required = True
    end
    object QPedidoPED_TIPO: TIBStringField
      FieldName = 'PED_TIPO'
      Required = True
      Size = 1
    end
    object QPedidoPED_NUMERO: TIntegerField
      FieldName = 'PED_NUMERO'
      Required = True
    end
    object QPedidoPED_FECHA: TDateTimeField
      FieldName = 'PED_FECHA'
    end
    object QPedidoCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
    end
    object QPedidoCLI_REFERENCIA: TIBStringField
      FieldName = 'CLI_REFERENCIA'
      Size = 10
    end
    object QPedidoPED_DIRECCION: TIBStringField
      FieldName = 'PED_DIRECCION'
      Size = 60
    end
    object QPedidoPED_TELEFONO: TIBStringField
      FieldName = 'PED_TELEFONO'
      Size = 13
    end
    object QPedidoPED_FAX: TIBStringField
      FieldName = 'PED_FAX'
      Size = 13
    end
    object QPedidoPED_DESCUENTO: TFloatField
      FieldName = 'PED_DESCUENTO'
      EditFormat = '#,0.00'
    end
    object QPedidoPED_ITBIS: TFloatField
      FieldName = 'PED_ITBIS'
      EditFormat = '#,0.00'
    end
    object QPedidoPED_TOTAL: TFloatField
      FieldName = 'PED_TOTAL'
      EditFormat = '#,0.00'
    end
    object QPedidoPED_NOMBRE: TIBStringField
      FieldName = 'PED_NOMBRE'
      Size = 60
    end
    object QPedidoPED_LOCALIDAD: TIBStringField
      FieldName = 'PED_LOCALIDAD'
      Size = 60
    end
    object QPedidoPED_NOTA: TMemoField
      FieldName = 'PED_NOTA'
      BlobType = ftMemo
    end
    object QPedidoSUC_CODIGO: TIntegerField
      FieldName = 'SUC_CODIGO'
    end
    object QPedidosup_codigo: TIntegerField
      FieldName = 'sup_codigo'
    end
    object QPedidocpa_codigo: TIntegerField
      FieldName = 'cpa_codigo'
    end
    object QPedidoped_envio: TMemoField
      FieldName = 'ped_envio'
      BlobType = ftMemo
    end
    object QPedidomon_codigo: TIntegerField
      FieldName = 'mon_codigo'
    end
    object QPedidoped_tasa: TBCDField
      FieldName = 'ped_tasa'
      Precision = 15
      Size = 2
    end
    object QPedidocen_codigo: TIntegerField
      FieldName = 'cen_codigo'
    end
    object QPedidoped_solicitud_compra: TStringField
      FieldName = 'ped_solicitud_compra'
    end
    object QPedidoPED_COTIZACION: TStringField
      FieldName = 'PED_COTIZACION'
    end
  end
  object dsPedido: TDataSource
    DataSet = QPedido
    Left = 208
    Top = 16
  end
  object QDetalle: TADOQuery
    Connection = DM.ADOSigma
    OnCalcFields = QDetalleCalcFields
    DataSource = dsPedido
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
        Name = 'ped_numero'
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
      'd.PRO_CODIGO, d.PRO_RORIGINAL, d.PRO_RFABRIC,'
      
        'd.DET_DESCRIPCION, cast(d.DET_CANTIDAD as numeric(18,2)) DET_CAN' +
        'TIDAD,'
      'cast(det_precio as numeric(18,2)) det_precio, '
      'cast(det_itbis as numeric(18,2)) det_itbis,'
      
        'cast(d.DET_DESCUENTO as numeric(18,2)) DET_DESCUENTO, d.DET_CONI' +
        'TBIS, d.det_nota'
      'from'
      'DET_PEDIDO d, pedidos p'
      'where'
      'd.emp_codigo = p.emp_codigo'
      'and d.suc_codigo = p.suc_codigo'
      'and d.ped_tipo = p.ped_tipo'
      'and d.ped_numero = p.ped_numero'
      'and d.emp_codigo = :emp_codigo'
      'and d.ped_tipo = '#39'S'#39
      'and d.ped_numero = :ped_numero'
      'and d.suc_codigo = :suc_codigo'
      'order by det_secuencia')
    Left = 240
    Top = 16
    object QDetallePRO_CODIGO: TIntegerField
      FieldName = 'PRO_CODIGO'
    end
    object QDetallePRO_RORIGINAL: TIBStringField
      FieldName = 'PRO_RORIGINAL'
      Size = 50
    end
    object QDetallePRO_RFABRIC: TIBStringField
      FieldName = 'PRO_RFABRIC'
      Size = 60
    end
    object QDetalleDET_DESCRIPCION: TIBStringField
      FieldName = 'DET_DESCRIPCION'
      Size = 60
    end
    object QDetalleDET_CANTIDAD: TFloatField
      FieldName = 'DET_CANTIDAD'
      EditFormat = '#,0.00'
    end
    object QDetalleDET_PRECIO: TFloatField
      FieldName = 'DET_PRECIO'
      EditFormat = '#,0.00'
    end
    object QDetalleDET_ITBIS: TFloatField
      FieldName = 'DET_ITBIS'
      EditFormat = '#,0.00'
    end
    object QDetalleDET_DESCUENTO: TFloatField
      FieldName = 'DET_DESCUENTO'
      EditFormat = '#,0.00'
    end
    object QDetalleDET_CONITBIS: TIBStringField
      FieldName = 'DET_CONITBIS'
      Size = 1
    end
    object QDetalledet_nota: TMemoField
      FieldName = 'det_nota'
      BlobType = ftMemo
    end
    object QDetalleCalcItbis: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CalcItbis'
      EditFormat = '#,0.00'
      currency = False
      Calculated = True
    end
    object QDetalleCalcDesc: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'CalcDesc'
      EditFormat = '#,0.00'
      currency = False
      Calculated = True
    end
    object QDetallePrecioItbis: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'PrecioItbis'
      EditFormat = '#,0.00'
      currency = False
      Calculated = True
    end
    object QDetalleValor: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Valor'
      EditFormat = '#,0.00'
      currency = False
      Calculated = True
    end
    object QDetalleValor2: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Valor2'
      EditFormat = '#,0.00'
      currency = False
      Calculated = True
    end
  end
end
