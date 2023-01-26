unit RVENTA71;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, DB, IBCustomDataSet, ADODB, QRCtrls, jpeg, Math,
  RxGIF, frxClass, frxDBSet,frxExportPDF, QRPDFFilt, frxExportRTF,
  frxExportImage;

type
  TRFacturaPreImpresa = class(TForm)
    QRLencyn: TQuickRep;
    QFactura: TADOQuery;
    QFacturaCAJ_CODIGO: TIntegerField;
    QFacturaCLI_CODIGO: TIntegerField;
    QFacturaCOT_NUMERO: TIntegerField;
    QFacturaCPA_CODIGO: TIntegerField;
    QFacturaEMP_CODIGO: TIntegerField;
    QFacturaFAC_ABONO: TFloatField;
    QFacturaFAC_DESCUENTO: TFloatField;
    QFacturaFAC_DIRECCION: TIBStringField;
    QFacturaFAC_FAX: TIBStringField;
    QFacturaFAC_FECHA: TDateTimeField;
    QFacturaFAC_FORMA: TIBStringField;
    QFacturaFAC_ITBIS: TFloatField;
    QFacturaFAC_LOCALIDAD: TIBStringField;
    QFacturaFAC_NOMBRE: TIBStringField;
    QFacturaFAC_OTROS: TFloatField;
    QFacturaFAC_STATUS: TIBStringField;
    QFacturaFAC_TELEFONO: TIBStringField;
    QFacturaFAC_TOTAL: TFloatField;
    QFacturaPED_NUMERO: TIntegerField;
    QFacturaTFA_CODIGO: TIntegerField;
    QFacturaUSU_CODIGO: TIntegerField;
    QFacturaVEN_CODIGO: TIntegerField;
    QFacturaCLI_REFERENCIA: TIBStringField;
    QFacturaSubTotal: TFloatField;
    QFacturaALM_CODIGO: TIntegerField;
    QFacturaFAC_MENSAJE2: TIBStringField;
    QFacturaFAC_MENSAJE3: TIBStringField;
    QFacturaFAC_HORA: TIBStringField;
    QFacturaFAC_VENCE: TDateTimeField;
    QFacturaMON_CODIGO: TIntegerField;
    QFacturaFAC_CONITBIS: TStringField;
    QFacturaSUC_CODIGO: TIntegerField;
    dsFactura: TDataSource;
    QDetalle: TADOQuery;
    QDetalleDET_CANTDEVUELTA: TFloatField;
    QDetalleDET_CANTIDAD: TFloatField;
    QDetalleDET_CONITBIS: TIBStringField;
    QDetalleDET_COSTO: TFloatField;
    QDetalleDET_DESCUENTO: TFloatField;
    QDetalleDET_ITBIS: TFloatField;
    QDetalleDET_PRECIO: TFloatField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleDET_STATUS: TIBStringField;
    QDetalleEMP_CODIGO: TIntegerField;
    QDetalleFAC_FORMA: TIBStringField;
    QDetalleFAC_NUMERO: TIntegerField;
    QDetallePRO_BARRA: TIBStringField;
    QDetallePRO_CODIGO: TIntegerField;
    QDetallePRO_NOMBRE: TIBStringField;
    QDetallePRO_RFABRIC: TIBStringField;
    QDetallePRO_RORIGINAL: TIBStringField;
    QDetalleTFA_CODIGO: TIntegerField;
    QDetalleCalcItbis: TFloatField;
    QDetalleCalcDesc: TFloatField;
    QDetallePrecioItbis: TFloatField;
    QDetalleValor: TFloatField;
    QDetalleDET_ESCALA: TIBStringField;
    QDetalleDET_MANEJAESCALA: TIBStringField;
    QDetalleDET_MEDIDA: TIBStringField;
    QDetalleDET_NOTA: TMemoField;
    QDetallepro_cantempaque: TBCDField;
    QDetalleEmpaque: TFloatField;
    QForma: TADOQuery;
    QFormaFPA_CODIGO: TIntegerField;
    QFormaFPA_NOMBRE: TIBStringField;
    QFormasPago: TADOQuery;
    QFormasPagoEMP_CODIGO: TIntegerField;
    QFormasPagoFOR_DESCRIPCION: TIBStringField;
    QFormasPagoFOR_MONTO: TFloatField;
    QFormasPagoFPA_CODIGO: TIntegerField;
    QRBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    lbCliente: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    lbProd: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    lbItbis: TQRLabel;
    QRDBText15: TQRDBText;
    ChildBand2: TQRChildBand;
    QRBand4: TQRBand;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRExpr1: TQRExpr;
    QRDBText9: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel24: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel29: TQRLabel;
    lbVendedor: TQRLabel;
    lbCondicion: TQRLabel;
    lbFactura: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QDetalledet_cant_oferta: TBCDField;
    QRDBText3: TQRDBText;
    ChildBand1: TQRChildBand;
    QRSoloAutos: TQuickRep;
    QRBand5: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRSysData1: TQRSysData;
    QRLabel11: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText23: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel47: TQRLabel;
    QRDBText32: TQRDBText;
    QRLabel48: TQRLabel;
    lbBal: TQRLabel;
    lbmoneda: TQRLabel;
    QRBand6: TQRBand;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel50: TQRLabel;
    QRBand7: TQRBand;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText33: TQRDBText;
    QRLabel52: TQRLabel;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    ChildBand3: TQRChildBand;
    QRLabel15: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel51: TQRLabel;
    QRDBText27: TQRDBText;
    QRBand8: TQRBand;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRExpr2: TQRExpr;
    QRDBRichText1: TQRDBRichText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    lbAbono: TQRLabel;
    lbAbono3: TQRDBText;
    lbAbono2: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRShape1: TQRShape;
    QRLabel63: TQRLabel;
    lbForma: TQRLabel;
    ChildBand4: TQRChildBand;
    lbSerie: TQRLabel;
    QSerie: TADOQuery;
    QSerieser_numero: TStringField;
    dsDetalle: TDataSource;
    QFacturaNCF_Fijo: TStringField;
    QFacturaNCF_Secuencia: TBCDField;
    QFacturaNumeroCF: TStringField;
    QRImpresosDuran: TQuickRep;
    QRBand9: TQRBand;
    QRBand10: TQRBand;
    QRLabel89: TQRLabel;
    QRLabel90: TQRLabel;
    QRLabel91: TQRLabel;
    QRLabel92: TQRLabel;
    QRLabel93: TQRLabel;
    QRLabel94: TQRLabel;
    QRBand11: TQRBand;
    QRDBText55: TQRDBText;
    QRDBText56: TQRDBText;
    QRDBText57: TQRDBText;
    QRDBText58: TQRDBText;
    QRDBText59: TQRDBText;
    QRLabel96: TQRLabel;
    QRDBText60: TQRDBText;
    QRChildBand1: TQRChildBand;
    QRLabel97: TQRLabel;
    QRLabel98: TQRLabel;
    QRLabel99: TQRLabel;
    QRLabel100: TQRLabel;
    QRLabel101: TQRLabel;
    QRLabel102: TQRLabel;
    QRLabel103: TQRLabel;
    QRLabel104: TQRLabel;
    QRDBText63: TQRDBText;
    v: TQRBand;
    QRShape2: TQRShape;
    QRLabel105: TQRLabel;
    QRLabel106: TQRLabel;
    QRLabel107: TQRLabel;
    QRLabel108: TQRLabel;
    QRDBText64: TQRDBText;
    QRDBText65: TQRDBText;
    QRDBText66: TQRDBText;
    QRExpr3: TQRExpr;
    QRDBRichText3: TQRDBRichText;
    QRLabel109: TQRLabel;
    QRLabel110: TQRLabel;
    QRLabel111: TQRLabel;
    QRLabel112: TQRLabel;
    QRLabel113: TQRLabel;
    QRDBText70: TQRDBText;
    QRLabel114: TQRLabel;
    QRLabel116: TQRLabel;
    QRLabel118: TQRLabel;
    QRChildBand2: TQRChildBand;
    QRDBRichText4: TQRDBRichText;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRSysData2: TQRSysData;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRDBText47: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    QRLabel73: TQRLabel;
    QRDBText51: TQRDBText;
    QRLabel74: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRLabel84: TQRLabel;
    QRLabel85: TQRLabel;
    QRLabel88: TQRLabel;
    QRDBText73: TQRDBText;
    QRLabel115: TQRLabel;
    QRLabel117: TQRLabel;
    QRLabel119: TQRLabel;
    QRDBText74: TQRDBText;
    QRLabel120: TQRLabel;
    lbrnc: TQRLabel;
    QRMSConsulting: TQuickRep;
    QRBand13: TQRBand;
    QRDBText52: TQRDBText;
    QRDBText53: TQRDBText;
    QRBand15: TQRBand;
    QRDBText75: TQRDBText;
    QRDBText76: TQRDBText;
    QRDBText77: TQRDBText;
    QRDBText78: TQRDBText;
    QRDBText80: TQRDBText;
    QRBand12: TQRBand;
    QRShape3: TQRShape;
    QRLabel156: TQRLabel;
    QRLabel158: TQRLabel;
    QRLabel159: TQRLabel;
    QRDBText82: TQRDBText;
    QRDBText83: TQRDBText;
    QRExpr4: TQRExpr;
    QRDBRichText6: TQRDBRichText;
    QRLabel166: TQRLabel;
    QRShape4: TQRShape;
    QRLabel75: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel169: TQRLabel;
    QRLabel170: TQRLabel;
    QRShape8: TQRShape;
    QRLabel76: TQRLabel;
    QRDBText54: TQRDBText;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    QRLabel95: TQRLabel;
    QRLabel121: TQRLabel;
    QRLabel122: TQRLabel;
    QRLabel123: TQRLabel;
    QRDBText62: TQRDBText;
    QRDBText67: TQRDBText;
    lbcondicion2: TQRLabel;
    lbemail: TQRLabel;
    QRShape11: TQRShape;
    QRLabel126: TQRLabel;
    QRDBText68: TQRDBText;
    QRDBText69: TQRDBText;
    lbrnc2: TQRLabel;
    QRDBText71: TQRDBText;
    QRShape12: TQRShape;
    QRLabel125: TQRLabel;
    QRLabel127: TQRLabel;
    QRLabel128: TQRLabel;
    QRLabel129: TQRLabel;
    QRLabel130: TQRLabel;
    QRShape13: TQRShape;
    QRLabel131: TQRLabel;
    QRLabel132: TQRLabel;
    QRImage1: TQRImage;
    QDetallepro_foto: TStringField;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape21: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape22: TQRShape;
    QRLabel133: TQRLabel;
    QRLabel134: TQRLabel;
    QRLabel135: TQRLabel;
    QRShape23: TQRShape;
    QRLabel136: TQRLabel;
    QRDBText72: TQRDBText;
    QRDBText79: TQRDBText;
    QRDBText81: TQRDBText;
    QRDBText84: TQRDBText;
    lbcontacto: TQRLabel;
    QRBB: TQuickRep;
    QRBand14: TQRBand;
    QRLabel137: TQRLabel;
    QRLabel138: TQRLabel;
    QRLabel139: TQRLabel;
    QRLabel140: TQRLabel;
    QRDBText61: TQRDBText;
    QRDBText85: TQRDBText;
    QRSysData3: TQRSysData;
    QRLabel141: TQRLabel;
    QRLabel142: TQRLabel;
    QRLabel143: TQRLabel;
    QRLabel144: TQRLabel;
    QRDBText86: TQRDBText;
    QRDBText87: TQRDBText;
    QRDBText88: TQRDBText;
    QRDBText89: TQRDBText;
    QRLabel145: TQRLabel;
    QRDBText90: TQRDBText;
    QRLabel146: TQRLabel;
    QRLabel147: TQRLabel;
    QRDBText92: TQRDBText;
    QRDBText93: TQRDBText;
    QRDBText94: TQRDBText;
    QRLabel148: TQRLabel;
    QRDBText95: TQRDBText;
    QRLabel149: TQRLabel;
    QRLabel150: TQRLabel;
    QRLabel151: TQRLabel;
    QRLabel152: TQRLabel;
    QRLabel153: TQRLabel;
    QRLabel154: TQRLabel;
    QRLabel155: TQRLabel;
    QRLabel157: TQRLabel;
    QRLabel160: TQRLabel;
    QRLabel161: TQRLabel;
    QRLabel162: TQRLabel;
    QRDBText96: TQRDBText;
    QRLabel165: TQRLabel;
    QRDBText97: TQRDBText;
    QRLabel168: TQRLabel;
    QRLabel171: TQRLabel;
    ChildBand5: TQRChildBand;
    QRLabel172: TQRLabel;
    QRLabel173: TQRLabel;
    QRLabel174: TQRLabel;
    QRLabel175: TQRLabel;
    QRLabel176: TQRLabel;
    QRLabel177: TQRLabel;
    QRLabel178: TQRLabel;
    QRLabel179: TQRLabel;
    QRDBText98: TQRDBText;
    QRBand16: TQRBand;
    QRLabel181: TQRLabel;
    QRLabel182: TQRLabel;
    QRLabel183: TQRLabel;
    QRLabel186: TQRLabel;
    QRLabel184: TQRLabel;
    QRLabel185: TQRLabel;
    QRLabel187: TQRLabel;
    QRLabel188: TQRLabel;
    QRLabel189: TQRLabel;
    QRLabel190: TQRLabel;
    QRBand17: TQRBand;
    QRDBText100: TQRDBText;
    QRDBText101: TQRDBText;
    QRDBText103: TQRDBText;
    QRDBText104: TQRDBText;
    QRDBText107: TQRDBText;
    QRDBText102: TQRDBText;
    QDetalledet_selectivo_ad: TBCDField;
    QDetalledet_selectivo_con: TBCDField;
    QRDBText105: TQRDBText;
    QRBand18: TQRBand;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRLabel191: TQRLabel;
    QRLabel193: TQRLabel;
    QRLabel194: TQRLabel;
    QRDBText108: TQRDBText;
    QRDBText109: TQRDBText;
    QRExpr5: TQRExpr;
    QRDBRichText5: TQRDBRichText;
    QRDBText110: TQRDBText;
    QRDBText111: TQRDBText;
    QRDBText112: TQRDBText;
    QRLabel195: TQRLabel;
    QRLabel197: TQRLabel;
    QRLabel198: TQRLabel;
    QRLabel201: TQRLabel;
    QRLabel202: TQRLabel;
    QFacturafac_selectivo_ad: TBCDField;
    QFacturafac_selectivo_con: TBCDField;
    QRDBText106: TQRDBText;
    QRDBText113: TQRDBText;
    QRLabel192: TQRLabel;
    QRLabel196: TQRLabel;
    QRLabel199: TQRLabel;
    QRLabel200: TQRLabel;
    QRLabel204: TQRLabel;
    QRLabel205: TQRLabel;
    QRLabel203: TQRLabel;
    QRLabel206: TQRLabel;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRShape26: TQRShape;
    QRLabel163: TQRLabel;
    QRBelkis: TQuickRep;
    QRBand19: TQRBand;
    QRBand20: TQRBand;
    QRLabel240: TQRLabel;
    QRLabel241: TQRLabel;
    QRLabel242: TQRLabel;
    QRLabel248: TQRLabel;
    QRLabel249: TQRLabel;
    QRBand21: TQRBand;
    QRDBText130: TQRDBText;
    QRDBText131: TQRDBText;
    QRDBText132: TQRDBText;
    QRDBText133: TQRDBText;
    QRDBText134: TQRDBText;
    QRBand22: TQRBand;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRDBText137: TQRDBText;
    QRDBText138: TQRDBText;
    QRExpr8: TQRExpr;
    QRDBRichText7: TQRDBRichText;
    QRLabel257: TQRLabel;
    QRShape29: TQRShape;
    QRLabel266: TQRLabel;
    QDetallepro_unidad_medida: TStringField;
    QRLabel244: TQRLabel;
    QRDBText135: TQRDBText;
    QDetalleCantidad: TStringField;
    QRLabel239: TQRLabel;
    QDetallePrecioNeto: TFloatField;
    QRDBText129: TQRDBText;
    QDetalleCalcItbisTotal: TFloatField;
    QRLabel180: TQRLabel;
    QRDBText91: TQRDBText;
    QFacturafac_rnc: TStringField;
    QRDBText139: TQRDBText;
    QRDBText140: TQRDBText;
    QRImage4: TQRImage;
    lbReimpresion: TQRImage;
    QRRichText1: TQRRichText;
    QRTHorton2: TQuickRep;
    QRBand23: TQRBand;
    QRShape32: TQRShape;
    QRShape332: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRDBText44: TQRDBText;
    QRShape36: TQRShape;
    QRLabel64: TQRLabel;
    QRLabel230: TQRLabel;
    QRLabel243: TQRLabel;
    QRShape37: TQRShape;
    QRLabel245: TQRLabel;
    QRDBText141: TQRDBText;
    QRLabel246: TQRLabel;
    QRLabel247: TQRLabel;
    QRLabel251: TQRLabel;
    QRLabel252: TQRLabel;
    QRLabel253: TQRLabel;
    QRLabel254: TQRLabel;
    QRDBText142: TQRDBText;
    QRDBText143: TQRDBText;
    QRLabel255: TQRLabel;
    QRLabel258: TQRLabel;
    QRDBText144: TQRDBText;
    QRLabel262: TQRLabel;
    QRDBText146: TQRDBText;
    QRShape38: TQRShape;
    QRLabel265: TQRLabel;
    QRLabel267: TQRLabel;
    QRLabel268: TQRLabel;
    QRShape39: TQRShape;
    QRLabel269: TQRLabel;
    QRLabel270: TQRLabel;
    QRDBText147: TQRDBText;
    QRLabel271: TQRLabel;
    QRBand24: TQRBand;
    QRDBText150: TQRDBText;
    QRDBText151: TQRDBText;
    QRDBText152: TQRDBText;
    QRRichText2: TQRRichText;
    QDetalleValor2: TFloatField;
    QRDBImage1: TQRDBImage;
    QRDBText148: TQRDBText;
    QRLabel263: TQRLabel;
    QRLabel264: TQRLabel;
    QRLabel276: TQRLabel;
    QRLabel277: TQRLabel;
    lbvendedor2: TQRLabel;
    QRDBText145: TQRDBText;
    QRDBText149: TQRDBText;
    QRDBText158: TQRDBText;
    QFacturacon_numero: TIntegerField;
    QRDBImage2: TQRDBImage;
    QRLabel209: TQRLabel;
    QRLabel210: TQRLabel;
    QRLabel211: TQRLabel;
    QRLabel212: TQRLabel;
    QRDBText99: TQRDBText;
    QRDBText116: TQRDBText;
    QRLabel213: TQRLabel;
    QRDBText117: TQRDBText;
    QRLabel220: TQRLabel;
    QRLabel221: TQRLabel;
    QRLabel222: TQRLabel;
    QRLabel223: TQRLabel;
    QRLabel224: TQRLabel;
    QRLabel229: TQRLabel;
    QRDBText118: TQRDBText;
    QRLabel278: TQRLabel;
    QRLabel280: TQRLabel;
    QRDBText119: TQRDBText;
    QRDBText120: TQRDBText;
    QRDBText160: TQRDBText;
    QRDBText121: TQRDBText;
    QRLabel214: TQRLabel;
    QRDBText122: TQRDBText;
    QRDBText123: TQRDBText;
    QRDBText124: TQRDBText;
    QRLabel215: TQRLabel;
    QRDBText125: TQRDBText;
    QRLabel164: TQRLabel;
    QRLabel167: TQRLabel;
    QRLabel207: TQRLabel;
    QRLabel208: TQRLabel;
    QRDBText114: TQRDBText;
    QRDBText115: TQRDBText;
    QRSysData4: TQRSysData;
    QRLabel217: TQRLabel;
    QRLabel218: TQRLabel;
    QRLabel219: TQRLabel;
    QRDBText126: TQRDBText;
    QRLabel231: TQRLabel;
    QRLabel232: TQRLabel;
    QRLabel233: TQRLabel;
    QRLabel234: TQRLabel;
    QRLabel235: TQRLabel;
    QRLabel236: TQRLabel;
    QRDBText128: TQRDBText;
    QRLabel216: TQRLabel;
    lbcajero: TQRLabel;
    QRLabel226: TQRLabel;
    QRDBText127: TQRDBText;
    QRLabel225: TQRLabel;
    QRLabel228: TQRLabel;
    lbtipofactura2: TQRLabel;
    QFacturatip_codigo: TIntegerField;
    lbitbis1: TQRLabel;
    lbitbis2: TQRLabel;
    lbtotalitbis1: TQRLabel;
    lbtotalitbis2: TQRLabel;
    QRMadeco: TQuickRep;
    QRBand26: TQRBand;
    QRDBText136: TQRDBText;
    QRDBText161: TQRDBText;
    QRDBText163: TQRDBText;
    QRLabel285: TQRLabel;
    QRLabel286: TQRLabel;
    QRDBText164: TQRDBText;
    QRDBText167: TQRDBText;
    QRLabel287: TQRLabel;
    QRDBText168: TQRDBText;
    QRDBText169: TQRDBText;
    QRDBText170: TQRDBText;
    QRLabel288: TQRLabel;
    QRDBText171: TQRDBText;
    QRLabel289: TQRLabel;
    QRLabel290: TQRLabel;
    QRLabel291: TQRLabel;
    QRLabel292: TQRLabel;
    QRDBText172: TQRDBText;
    QRDBText173: TQRDBText;
    QRSysData5: TQRSysData;
    QRLabel293: TQRLabel;
    QRLabel294: TQRLabel;
    QRLabel295: TQRLabel;
    QRDBText174: TQRDBText;
    QRLabel296: TQRLabel;
    QRLabel297: TQRLabel;
    QRLabel298: TQRLabel;
    QRLabel299: TQRLabel;
    QRLabel300: TQRLabel;
    QRLabel301: TQRLabel;
    QRDBText175: TQRDBText;
    QRLabel302: TQRLabel;
    QRDBText176: TQRDBText;
    QRLabel303: TQRLabel;
    QRLabel304: TQRLabel;
    QRDBText162: TQRDBText;
    QRDBText177: TQRDBText;
    QRLabel227: TQRLabel;
    QRLabel237: TQRLabel;
    QRLabel238: TQRLabel;
    QRLabel250: TQRLabel;
    lbUsuario: TQRLabel;
    QRLabel260: TQRLabel;
    QRBand27: TQRBand;
    QRLabel256: TQRLabel;
    QRLabel261: TQRLabel;
    QRLabel281: TQRLabel;
    QRLabel282: TQRLabel;
    QRLabel283: TQRLabel;
    QRLabel306: TQRLabel;
    QRBand28: TQRBand;
    QRDBText165: TQRDBText;
    QRDBText166: TQRDBText;
    QRDBText178: TQRDBText;
    QRDBText180: TQRDBText;
    QRDBText182: TQRDBText;
    QDetallepro_volumen: TBCDField;
    QDetallevolumen: TStringField;
    QRBand29: TQRBand;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRDBRichText8: TQRDBRichText;
    QRLabel305: TQRLabel;
    QRDBText184: TQRDBText;
    QRDBText185: TQRDBText;
    QRLabel309: TQRLabel;
    QRLabel307: TQRLabel;
    QRLabel308: TQRLabel;
    QRLabel310: TQRLabel;
    QRLabel311: TQRLabel;
    QRExpr10: TQRExpr;
    QRDBText181: TQRDBText;
    QRDBText183: TQRDBText;
    QRDBText186: TQRDBText;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRExpr11: TQRExpr;
    QRLabel312: TQRLabel;
    QRDBText179: TQRDBText;
    QRLabel313: TQRLabel;
    QDetalleAtado: TFloatField;
    QRDBText187: TQRDBText;
    QRLabel284: TQRLabel;
    QRBand30: TQRBand;
    qrlUsuario1: TQRLabel;
    QRMateirosa: TQuickRep;
    QRBand31: TQRBand;
    qrlFactura: TQRLabel;
    QRLabel315: TQRLabel;
    QRLabel316: TQRLabel;
    QRLabel317: TQRLabel;
    QRDBText188: TQRDBText;
    QRDBText189: TQRDBText;
    QRSysData6: TQRSysData;
    QRLabel318: TQRLabel;
    QRLabel319: TQRLabel;
    QRLabel320: TQRLabel;
    QRLabel321: TQRLabel;
    QRDBText190: TQRDBText;
    QRDBText191: TQRDBText;
    QRDBText192: TQRDBText;
    QRDBText193: TQRDBText;
    QRLabel322: TQRLabel;
    QRDBText194: TQRDBText;
    QRLabel323: TQRLabel;
    QRLabel324: TQRLabel;
    QRLabel325: TQRLabel;
    QRLabel326: TQRLabel;
    QRLabel327: TQRLabel;
    QRLabel328: TQRLabel;
    QRLabel329: TQRLabel;
    QRLabel330: TQRLabel;
    QRLabel331: TQRLabel;
    QRLabel332: TQRLabel;
    QRLabel333: TQRLabel;
    QRDBText195: TQRDBText;
    QRLabel334: TQRLabel;
    qrlBalance: TQRLabel;
    lbmoneda0: TQRLabel;
    QRBand32: TQRBand;
    QRLabel337: TQRLabel;
    QRLabel338: TQRLabel;
    QRLabel339: TQRLabel;
    QRLabel340: TQRLabel;
    QRLabel341: TQRLabel;
    QRLabel342: TQRLabel;
    QRLabel343: TQRLabel;
    QRBand33: TQRBand;
    QRDBText196: TQRDBText;
    QRDBText197: TQRDBText;
    QRDBText198: TQRDBText;
    QRDBText199: TQRDBText;
    QRDBText200: TQRDBText;
    QRLabel344: TQRLabel;
    QRDBText201: TQRDBText;
    QRDBText202: TQRDBText;
    QRDBText203: TQRDBText;
    QRChildBand3: TQRChildBand;
    QRLabel345: TQRLabel;
    qrlVendedor: TQRLabel;
    QRLabel347: TQRLabel;
    QRLabel348: TQRLabel;
    qrlCondicion: TQRLabel;
    QRLabel351: TQRLabel;
    QRDBText204: TQRDBText;
    QRBand34: TQRBand;
    QRShape44: TQRShape;
    QRShape51: TQRShape;
    QRLabel353: TQRLabel;
    QRLabel354: TQRLabel;
    QRLabel355: TQRLabel;
    QRLabel356: TQRLabel;
    QRDBText205: TQRDBText;
    QRDBText206: TQRDBText;
    QRDBText207: TQRDBText;
    QRExpr12: TQRExpr;
    QRDBRichText9: TQRDBRichText;
    QRDBText208: TQRDBText;
    QRDBText209: TQRDBText;
    QRDBText210: TQRDBText;
    QRLabel357: TQRLabel;
    QRLabel358: TQRLabel;
    QRLabel359: TQRLabel;
    QRLabel360: TQRLabel;
    QRLabel361: TQRLabel;
    QRDBText211: TQRDBText;
    QRLabel362: TQRLabel;
    QRLabel363: TQRLabel;
    QRLabel364: TQRLabel;
    QRShape52: TQRShape;
    QRLabel365: TQRLabel;
    QRChildBand4: TQRChildBand;
    QRLabel367: TQRLabel;
    QRRichText3: TQRRichText;
    QRDBImage3: TQRDBImage;
    QRLabel336: TQRLabel;
    QRLabel368: TQRLabel;
    QRDBText212: TQRDBText;
    QFacturaFAC_TASA: TBCDField;
    QRLabel346: TQRLabel;
    QRLabel366: TQRLabel;
    QFacturacot_proyecto: TStringField;
    QRDBText214: TQRDBText;
    QRLabel335: TQRLabel;
    QRLabel349: TQRLabel;
    QRDBText213: TQRDBText;
    qlncf: TQRLabel;
    qrMemo_Mate: TQRMemo;
    QFacturaFAC_MENSAJE1: TStringField;
    qrmNota_QRBB: TQRMemo;
    qrNota_QRLencyn: TQRMemo;
    qrNota_QRSoloAutos: TQRMemo;
    qrNota_QRMadeco: TQRMemo;
    qrNota_QRBelkis: TQRMemo;
    QFacturasuc_direccion: TStringField;
    QFacturasuc_localidad: TStringField;
    QFacturasuc_telefono: TStringField;
    QFacturasuc_rnc: TStringField;
    QFacturasuc_nombre: TStringField;
    QFacturasuc_fax: TStringField;
    QNorma201806: TADOQuery;
    QNorma201806emp_nombre: TStringField;
    QNorma201806emp_direccion: TStringField;
    QNorma201806emp_localidad: TStringField;
    QNorma201806emp_rnc: TStringField;
    QNorma201806fac_fecha: TDateTimeField;
    QNorma201806cli_rnc: TStringField;
    QNorma201806cli_nombre: TStringField;
    QNorma201806cli_direccion: TStringField;
    QNorma201806cli_localidad: TStringField;
    QNorma201806cli_telefono: TStringField;
    QNorma201806fac_numero: TIntegerField;
    QNorma201806tfa_nombre: TStringField;
    QNorma201806NCF: TStringField;
    QNorma201806tip_nombre: TStringField;
    QNorma201806VENC_NCF: TDateTimeField;
    QNorma201806ven_nombre: TStringField;
    QNorma201806Condiciones: TStringField;
    QNorma201806fac_vence: TDateTimeField;
    QNorma201806Cantidad: TStringField;
    QNorma201806pro_nombre: TStringField;
    QNorma201806monto_itbis: TBCDField;
    QNorma201806valor: TBCDField;
    QNorma201806Exento: TStringField;
    QNorma201806sub_total: TBCDField;
    QNorma201806monto_desc: TBCDField;
    QNorma201806Tasa: TBCDField;
    QNorma201806Moneda: TStringField;
    DB_Norma201806: TfrxDBDataset;
    Rpt_Facturas: TfrxReport;
    QNorma201806usu_nombre: TStringField;
    QNorma201806FIJO: TStringField;
    QNorma201806det_totalitbis: TFloatField;
    QNorma201806itbis_und: TCurrencyField;
    QNorma201806valor_und: TCurrencyField;
    Rpt_ReImpresionFact: TfrxReport;
    QRDBText215: TQRDBText;
    QRLabel314: TQRLabel;
    QRLVNCF: TQRLabel;
    QRShape712: TQRShape;
    QRLVNCFECH2: TQRLabel;
    QRLTipoNCF2: TQRLabel;
    qDatos: TADOQuery;
    QFacturaNumero: TStringField;
    QFacturaFAC_NOTA: TStringField;
    QRLabel406: TQRLabel;
    QRLHora: TQRLabel;
    QRShape722: TQRShape;
    QRDBText43: TQRDBText;
    frxPDFExport1: TfrxPDFExport;
    ColumnHeaderBand1: TQRBand;
    QRTHorton: TQuickRep;
    QRBand25: TQRBand;
    QRDBImage4: TQRDBImage;
    QRShape40: TQRShape;
    QRShape48: TQRShape;
    QRLabel273: TQRLabel;
    QRDBText155: TQRDBText;
    QRLabel274: TQRLabel;
    QRLabel275: TQRLabel;
    QRLabel279: TQRLabel;
    QRLabel350: TQRLabel;
    QRLabel352: TQRLabel;
    QRLabel369: TQRLabel;
    QRDBText156: TQRDBText;
    QRDBText157: TQRDBText;
    QRLabel370: TQRLabel;
    QRLabel371: TQRLabel;
    QRLabel372: TQRLabel;
    QRDBText216: TQRDBText;
    QRShape49: TQRShape;
    QRLabel373: TQRLabel;
    QRLabel374: TQRLabel;
    QRLabel375: TQRLabel;
    QRShape50: TQRShape;
    QRLabel376: TQRLabel;
    QRLabel377: TQRLabel;
    QRLabel378: TQRLabel;
    QRLabel379: TQRLabel;
    QRLabel380: TQRLabel;
    QRLabel381: TQRLabel;
    QRLabel382: TQRLabel;
    QRLabel383: TQRLabel;
    QRDBText218: TQRDBText;
    QRDBText219: TQRDBText;
    QRDBText220: TQRDBText;
    lbtipofactura: TQRLabel;
    QRBand35: TQRBand;
    QRDBText221: TQRDBText;
    QRDBText222: TQRDBText;
    QRDBText223: TQRDBText;
    QRDBText224: TQRDBText;
    QRBand36: TQRBand;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRLabel386: TQRLabel;
    QRLabel387: TQRLabel;
    QRLabel388: TQRLabel;
    QRDBText225: TQRDBText;
    QRDBText226: TQRDBText;
    QRExpr9: TQRExpr;
    QRShape58: TQRShape;
    lbsimbolo1: TQRLabel;
    lbsimbolo2: TQRLabel;
    lbsimbolo3: TQRLabel;
    QRLabel392: TQRLabel;
    lbsimbolo4: TQRLabel;
    QRDBText230: TQRDBText;
    QRBand37: TQRBand;
    QRShape41: TQRShape;
    QRLabel124: TQRLabel;
    QRDBText153: TQRDBText;
    QRLabel259: TQRLabel;
    QRShape45: TQRShape;
    QRDBText154: TQRDBText;
    QRLabel272: TQRLabel;
    QRShape71: TQRShape;
    QRLabel393: TQRLabel;
    QRShape47: TQRShape;
    QRShape33: TQRShape;
    QRLVNCFECH: TQRLabel;
    QRLTipoNCF: TQRLabel;
    QRShape72: TQRShape;
    QRLabel396: TQRLabel;
    QRLabel385: TQRLabel;
    QRDBText159: TQRDBText;
    qrlUsuario: TQRLabel;
    QRLabel389: TQRLabel;
    QRShape60: TQRShape;
    QRLabel391: TQRLabel;
    QRShape59: TQRShape;
    QRLabel390: TQRLabel;
    QRShape57: TQRShape;
    QRLabel397: TQRLabel;
    QRDBText217: TQRDBText;
    DB_Thorton: TfrxDBDataset;
    DB_DetThorton: TfrxDBDataset;
    frxRTFExport1: TfrxRTFExport;
    Rpt_Thorton: TfrxReport;
    QRRichText4: TQRRichText;
    frxJPEGExport1: TfrxJPEGExport;
    QFacturaMONEDA: TStringField;
    QFacturaFAC_NUMERO: TIntegerField;
    QDetalleSubTotal: TCurrencyField;
    QDetalleTotalDesc: TCurrencyField;
    QDetalleTotalItbis: TCurrencyField;
    QFacturaUSUC: TStringField;
    QRPDFFilter1: TQRPDFFilter;
    QNorma201806fac_nota: TStringField;
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLencynBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure ChildBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSoloAutosBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand7BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRChildBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand11BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRImpresosDuranBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand15BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRMSConsultingBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBBBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBelkisBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand22BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand24BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand23BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand26BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRMadecoBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand31BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure Rpt_FacturasBeforePrint(Sender: TfrxReportComponent);
    procedure Rpt_ReImpresionFactBeforePrint(Sender: TfrxReportComponent);
    procedure QRTHortonBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure Rpt_ThortonBeforePrint(Sender: TfrxReportComponent);
  private
    procedure llenaNota(nota: TQRMemo);
    { Private declarations }
  public
    { Public declarations }
    ActBalance : String;
    linea, pagina, vl_reimpresa : integer;
    MPagado, MDevuelta : Double;
  end;

var
  RFacturaPreImpresa: TRFacturaPreImpresa;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TRFacturaPreImpresa.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if QDetalleDET_CONITBIS.value = 'N' then
     lbItbis.caption := 'E'
  else
     lbItbis.caption := ' ';
end;

procedure TRFacturaPreImpresa.QRLencynBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  Linea := 1;
  pagina := 1;
  QRBand4.AlignToBottom := dm.QParametrosPAR_FACTOTALIZAPIE.Value = 'True';
  if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
    lbCliente.DataField := 'CLI_CODIGO'
  else
    lbCliente.DataField := 'CLI_REFERENCIA';

  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
     lbProd.DataField := 'PRO_CODIGO'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
     lbProd.DataField := 'PRO_RFABRIC'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
     lbProd.DataField := 'PRO_RORIGINAL';

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select mon_sigla from moneda');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and mon_codigo = :mon');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('mon').Value := QFacturaMON_CODIGO.Value;
  dm.Query1.Open;
  //lbmoneda.Caption := dm.Query1.FieldByName('mon_sigla').AsString;

  {if not QFacturaCLI_CODIGO.IsNull then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cli_balance from clientes');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and cli_codigo = :cli');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cli').Value := QFacturaCLI_CODIGO.Value;
    dm.Query1.Open;
    //lbBal.Caption := format('%n',[dm.Query1.FieldByName('cli_balance').AsFloat]);
  end
  else
    //lbBal.Caption := '0.00';}

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select tfa_nombre, tfa_actbalance from tiposfactura');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and tfa_codigo = :tipo');
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.parambyname('tipo').Value := QFacturaTFA_CODIGO.value;
  dm.Query1.open;
  lbFactura.caption := dm.Query1.fieldbyname('tfa_nombre').asstring;
  ActBalance        := dm.Query1.fieldbyname('tfa_actbalance').AsString;
  {if (ActBalance = 'True') and (QFacturaFAC_ABONO.Value > 0) then
  begin
    lbAbono.Enabled  := True;
    lbAbono2.Enabled := True;
    lbAbono3.Enabled := True;
  end
  else
  begin
    lbAbono.Enabled  := False;
    lbAbono2.Enabled := False;
    lbAbono3.Enabled := False;
  end;}

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select cpa_nombre from condiciones');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and cpa_codigo = :codigo');
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.parambyname('codigo').Value := QFacturaCPA_CODIGO.value;
  dm.Query1.open;
  lbCondicion.caption := dm.Query1.fieldbyname('cpa_nombre').asstring;

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select ven_nombre from vendedores');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and ven_codigo = :vend');
  dm.Query1.Parameters.parambyname('emp').Value  := dm.vp_cia;
  dm.Query1.Parameters.parambyname('vend').Value := QFacturaVEN_CODIGO.value;
  dm.Query1.open;
  lbVendedor.caption := dm.Query1.fieldbyname('ven_nombre').asstring;

  {lbForma.Caption := '';
  if not QFormasPago.active then QFormasPago.Open;
  if not QForma.Active then QForma.Open;
  QFormasPago.First;
  while not QFormasPago.Eof do
  begin
    QForma.Locate('fpa_codigo',inttostr(QFormasPagoFPA_CODIGO.Value),[]);
    lbForma.Caption := lbForma.Caption + ' '+copy(trim(QFormaFPA_NOMBRE.Value),1,1)+': '+
                        format('%n',[QFormasPagoFOR_MONTO.value]);
    QFormasPago.next;
  end;
  //lbForma.Caption := copy(lbForma.Caption, 1, length(lbForma.Caption)-2);}

  llenaNota(qrNota_QRLencyn);
end;

procedure TRFacturaPreImpresa.QDetalleCalcFields(DataSet: TDataSet);
{var
  Venta, NumItbis, vPrec, vDesc, vCant : Double;
  cant : string;
begin
  try
  begin
    cant := FloatToStr(QDetalleDET_CANTIDAD.Value);
    if Trim(Copy(Cant,Pos('.',cant),length(Cant))) = '.25' then
    begin
      if QDetalleDET_CANTIDAD.Value > 1 then
        QDetalleCantidad.Value := Trim(Copy(Cant,1,Pos('.',cant)-1)) + ' 1/4'
      else
        QDetalleCantidad.Value := '1/4';
    end
    else if Trim(Copy(Cant,Pos('.',cant),length(Cant))) = '.5' then
    begin
      if QDetalleDET_CANTIDAD.Value > 1 then
        QDetalleCantidad.Value := Trim(Copy(Cant,1,Pos('.',cant)-1)) + ' 1/2'
      else
        QDetalleCantidad.Value := '1/2';
    end
    else if Trim(Copy(Cant,Pos('.',cant),length(Cant))) = '.75' then
    begin
      if QDetalleDET_CANTIDAD.Value > 1 then
        QDetalleCantidad.Value := Trim(Copy(Cant,1,Pos('.',cant)-1)) + ' 3/4'
      else
        QDetalleCantidad.Value := '3/4';
    end
    else
      QDetalleCantidad.Value := FloatToStr(QDetalleDET_CANTIDAD.Value);
  end
  except
  end;

  if QDetallepro_cantempaque.Value > 0 then
    QDetalleEmpaque.Value := QDetalledet_CANTIDAD.Value / QDetallepro_cantempaque.Value
  else
    QDetalleEmpaque.Value := 0;

  if QDetalleDET_CONITBIS.value = 'S' then
  begin
    NumItbis := RoundTo((QDetalleDET_ITBIS.asfloat/100)+1, -2);
    if dm.QParametrospar_itbisincluido.Value = 'True' then
    begin
      Venta    := QDetalleDET_PRECIO.value/NumItbis;
      QDetallePrecioItbis.value := RoundTo(Venta, -2);
      QDetalleCalcDesc.value    := RoundTo((Venta * QDetalleDET_DESCUENTO.value)/100, -4);
      if QDetalleDET_CONITBIS.value = 'S' then
        QDetalleCalcItbis.value   := RoundTo(((Venta - QDetalleCalcDesc.value) * QDetalleDET_ITBIS.value) / 100, -4)
      else
        QDetalleCalcItbis.value   := 0;

      QDetalleValor.value     := (QDetallePrecioItbis.value - QDetalleCalcDesc.value + QDetalleCalcItbis.value) * QDetalleDET_CANTIDAD.value;
      //QDetalleCalcItbis.value := RoundTo(QDetalleCalcItbis.value * QDetalleDET_CANTIDAD.value, -2);
      QDetalleCalcItbis.value := RoundTo(QDetalleCalcItbis.value, -2);
    end
    else
    begin
      Venta := QDetalleDET_PRECIO.value;
      QDetallePrecioItbis.value := Venta;
      QDetalleCalcDesc.value    := RoundTo((Venta * QDetalleDET_DESCUENTO.value)/100, -4);
      if QDetalleDET_CONITBIS.value = 'S' then
        QDetalleCalcItbis.value := RoundTo(((Venta - QDetalleCalcDesc.value)* QDetalleDET_ITBIS.value) / 100, -4)
      else
        QDetalleCalcItbis.value := 0;

      QDetalleValor.value     := (QDetallePrecioItbis.value - QDetalleCalcDesc.value + QDetalleCalcItbis.value) * QDetalleDET_CANTIDAD.value;
      QDetalleCalcItbis.value := RoundTo(QDetalleCalcItbis.value, -2);
    end;
  end
  else
  begin
    Venta := QDetalleDET_PRECIO.value;
    QDetalleCalcDesc.value    := (Venta * QDetalleDET_DESCUENTO.value)/100;
    QDetallePrecioItbis.value := Venta;
    QDetalleCalcItbis.value   := 0;
    QDetalleValor.value       := (Venta-QDetalleCalcDesc.value);
  end;

  QDetallePrecioNeto.Value := QDetalleCalcItbis.Value + QDetallePrecioItbis.Value;
  QDetalleCalcItbisTotal.Value := QDetalleCalcItbis.Value;
  QDetalleValor2.Value := QDetalleDET_PRECIO.Value * QDetalleDET_CANTIDAD.Value;

  //Para la factura deMadeco
  if (QDetallepro_volumen.AsInteger > 0) and (Length(trim(QDetallepro_unidad_medida.AsString)) > 0) then
  begin
    {dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select nombre from unidadmedida where emp_codigo = :emp');
    dm.Query1.SQL.Add('and unidadid =
    QDetallevolumen.Value := QDetallepro_volumen.AsString+' '+QDetallepro_unidad_medida.AsString;
  end;

  if QDetallepro_cantempaque.AsFloat > 0 then
    QDetalleAtado.Value := QDetalleDET_CANTIDAD.Value / QDetallepro_cantempaque.AsFloat;}
var
  Venta, NumItbis, vPrec, vDesc, vCant : Double;
begin
  if (QDetalleDET_CONITBIS.value = 'S') and (QFacturaFAC_CONITBIS.Value = 'True') then
  begin
    NumItbis := ((QDetalleDET_ITBIS.asfloat/100)+1);
    if dm.QParametrospar_itbisincluido.Value = 'True' then
    begin
      Venta    := QDetalleDET_PRECIO.value/NumItbis;
      QDetallePrecioItbis.value := (Venta);
      QDetalleCalcDesc.value    := ((Venta * QDetalleDET_DESCUENTO.value)/100);
      if QDetalleDET_CONITBIS.value = 'S' then
        QDetalleCalcItbis.value   := (((Venta - QDetalleCalcDesc.value) * QDetalleDET_ITBIS.value) / 100)
      else
        QDetalleCalcItbis.value   := 0;

      QDetalleValor.value     := (QDetallePrecioItbis.value - QDetalleCalcDesc.value + QDetalleCalcItbis.value) * QDetalleDET_CANTIDAD.value;
      QDetalleCalcItbis.value := (QDetalleCalcItbis.value * QDetalleDET_CANTIDAD.value);
    end
    else
    begin
      Venta := QDetalleDET_PRECIO.value;
      QDetallePrecioItbis.value := Venta;
      QDetalleCalcDesc.value    := ((Venta * QDetalleDET_DESCUENTO.value)/100);
      if QDetalleDET_CONITBIS.value = 'S' then
        QDetalleCalcItbis.value := (((Venta - QDetalleCalcDesc.value)* QDetalleDET_ITBIS.value) / 100)
      else
        QDetalleCalcItbis.value := 0;

      QDetalleValor.value     := (QDetallePrecioItbis.value - QDetalleCalcDesc.value + QDetalleCalcItbis.value) * QDetalleDET_CANTIDAD.value;
      QDetalleCalcItbis.value := (QDetalleCalcItbis.value * QDetalleDET_CANTIDAD.value);
    end;
  end
  else
  begin
    Venta := QDetalleDET_PRECIO.value;
    QDetalleCalcDesc.value    := (Venta * QDetalleDET_DESCUENTO.value)/100;
    QDetallePrecioItbis.value := Venta;
    QDetalleCalcItbis.value   := 0;
    QDetalleValor.value       := (Venta-QDetalleCalcDesc.value)*QDetalleDET_CANTIDAD.value;
  end;

end;

procedure TRFacturaPreImpresa.ChildBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  PrintBand := QDetalledet_cant_oferta.Value > 0;
end;

procedure TRFacturaPreImpresa.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  linea := 0;
end;

procedure TRFacturaPreImpresa.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  linea := linea + 1;
  if linea = 56 then
  begin
    pagina := pagina + 1;
    QRLencyn.NewPage;
  end;
end;

procedure TRFacturaPreImpresa.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if Pagina = 1 then PrintBand := false else PrintBand := True;
end;

procedure TRFacturaPreImpresa.ChildBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  if BandPrinted then
    Linea := Linea + 1;
end;


procedure TRFacturaPreImpresa.llenaNota(nota:TQRMemo);
begin
  if not QFacturaFAC_MENSAJE1.IsNull then
    Nota.Lines.Add(QFacturaFAC_MENSAJE1.Value)
end;

procedure TRFacturaPreImpresa.QRSoloAutosBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  if not QSerie.active then QSerie.Open;

  QRBand8.AlignToBottom := dm.QParametrosPAR_FACTOTALIZAPIE.Value = 'True';
  if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
    QRDBText24.DataField := 'CLI_CODIGO'
  else
    QRDBText24.DataField := 'CLI_REFERENCIA';

  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
     QRDBText28.DataField := 'PRO_CODIGO'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
     QRDBText28.DataField := 'PRO_RFABRIC'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
     QRDBText28.DataField := 'PRO_RORIGINAL';

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select mon_sigla from moneda');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and mon_codigo = :mon');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('mon').Value := QFacturaMON_CODIGO.Value;
  dm.Query1.Open;
  lbmoneda.Caption := dm.Query1.FieldByName('mon_sigla').AsString;

  if not QFacturaCLI_CODIGO.IsNull then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cli_balance from clientes');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and cli_codigo = :cli');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cli').Value := QFacturaCLI_CODIGO.Value;
    dm.Query1.Open;
    lbBal.Caption := format('%n',[dm.Query1.FieldByName('cli_balance').AsFloat]);
  end
  else
    lbBal.Caption := '0.00';

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select tfa_nombre, tfa_actbalance from tiposfactura');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and tfa_codigo = :tipo');
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.parambyname('tipo').Value := QFacturaTFA_CODIGO.value;
  dm.Query1.open;
  QRLabel7.caption := dm.Query1.fieldbyname('tfa_nombre').asstring;
  ActBalance        := dm.Query1.fieldbyname('tfa_actbalance').AsString;
  if (ActBalance = 'True') and (QFacturaFAC_ABONO.Value > 0) then
  begin
    lbAbono.Enabled  := True;
    lbAbono2.Enabled := True;
    lbAbono3.Enabled := True;
  end
  else
  begin
    lbAbono.Enabled  := False;
    lbAbono2.Enabled := False;
    lbAbono3.Enabled := False;
  end;

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select cpa_nombre from condiciones');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and cpa_codigo = :codigo');
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.parambyname('codigo').Value := QFacturaCPA_CODIGO.value;
  dm.Query1.open;
  QRLabel39.caption := dm.Query1.fieldbyname('cpa_nombre').asstring;

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select ven_nombre from vendedores');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and ven_codigo = :vend');
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.parambyname('vend').Value := QFacturaVEN_CODIGO.value;
  dm.Query1.open;
  QRLabel21.caption := dm.Query1.fieldbyname('ven_nombre').asstring;

  lbForma.Caption := '';
  if not QFormasPago.active then QFormasPago.Open;
  if not QForma.Active then QForma.Open;
  QFormasPago.First;
  while not QFormasPago.Eof do
  begin
    QForma.Locate('fpa_codigo',inttostr(QFormasPagoFPA_CODIGO.Value),[]);
    lbForma.Caption := lbForma.Caption + ' '+copy(trim(QFormaFPA_NOMBRE.Value),1,1)+': '+
                        format('%n',[QFormasPagoFOR_MONTO.value]);
    QFormasPago.next;
  end;
//  lbForma.Caption := copy(lbForma.Caption, 1, length(lbForma.Caption)-2);

  if (Sender = QRSoloAutos) then
    llenaNota(qrNota_QRSoloAutos)
  else
    llenaNota(qrMemo_Mate);
end;

procedure TRFacturaPreImpresa.QRBand7BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if dm.QParametrosPAR_FACMEDIDA.Value <> 'True' then
  begin
    QRDBText35.Enabled  := false;
    QRDBText36.Enabled := false;
    QRLabel50.Enabled   := false;
  end;
  if QDetalleDET_CONITBIS.value = 'N' then
     QRLabel52.caption := 'E'
  else
     QRLabel52.caption := ' ';
end;

procedure TRFacturaPreImpresa.ChildBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  t : string;
begin
  QRRichText1.Lines.Text := QDetalleDET_NOTA.Value;
  PrintBand := (trim(QDetalleDET_NOTA.Value) <> '') or (QSerie.RecordCount > 0);
  lbSerie.Caption := '';
  if QSerie.RecordCount > 0 then
  begin
    t := 'SN#:';
    QSerie.First;
    while not QSerie.Eof do
    begin
      lbSerie.Caption := lbSerie.Caption + QSerieser_numero.Value+', ';
      QSerie.next;
    end;
    lbSerie.Caption := t + copy(lbSerie.Caption,1,length(lbSerie.Caption)-2);
  end;
  if trim(QDetalleDET_NOTA.Value) = '' then
  begin
    ChildBand4.Height := 20;
    lbSerie.Width := 729;
  end
  else
  begin
    ChildBand4.Height := 69;
    lbSerie.Width := 289;
  end;
end;

procedure TRFacturaPreImpresa.QRChildBand2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  PrintBand := (trim(QDetalleDET_NOTA.Value) <> '') or (QSerie.RecordCount > 0);
  if trim(QDetalleDET_NOTA.Value) = '' then
    QRChildBand2.Height := 20
  else
    QRChildBand2.Height := 69;
end;

procedure TRFacturaPreImpresa.QRBand11BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if QDetalleDET_CONITBIS.value = 'N' then
     QRLabel96.caption := 'E'
  else
     QRLabel96.caption := ' ';
end;

procedure TRFacturaPreImpresa.QRImpresosDuranBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin

  if not QSerie.active then QSerie.Open;

  //QRBand4.AlignToBottom := dm.QParametrosPAR_FACTOTALIZAPIE.Value = 'True';
  if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
    QRDBText51.DataField := 'CLI_CODIGO'
  else
    QRDBText51.DataField := 'CLI_REFERENCIA';

  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
     QRDBText55.DataField := 'PRO_CODIGO'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
     QRDBText55.DataField := 'PRO_RFABRIC'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
     QRDBText55.DataField := 'PRO_RORIGINAL';

  if QFacturaCLI_CODIGO.IsNull then
  begin
    lbrnc.caption := ' ';
    lbrnc.caption := QFacturafac_rnc.Value;
  end
  else
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cli_rnc, cli_cedula from clientes');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and cli_Codigo = :cli');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cli').Value := QFacturaCLI_CODIGO.Value;
    dm.Query1.Open;
    if trim(dm.Query1.FieldByName('cli_rnc').AsString) <> '' then
      lbrnc.Caption := dm.Query1.FieldByName('cli_rnc').AsString
    else
      lbrnc.Caption := dm.Query1.FieldByName('cli_cedula').AsString;
  end;

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select mon_sigla from moneda');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and mon_codigo = :mon');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('mon').Value := QFacturaMON_CODIGO.Value;
  dm.Query1.Open;
  QRLabel119.Caption := dm.Query1.FieldByName('mon_sigla').AsString;

  if not QFacturaCLI_CODIGO.IsNull then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cli_balance from clientes');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and cli_codigo = :cli');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cli').Value := QFacturaCLI_CODIGO.Value;
    dm.Query1.Open;
    QRLabel117.Caption := format('%n',[dm.Query1.FieldByName('cli_balance').AsFloat]);
  end
  else
    QRLabel117.Caption := '0.00';

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select tfa_nombre, tfa_actbalance from tiposfactura');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and tfa_codigo = :tipo');
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.parambyname('tipo').Value := QFacturaTFA_CODIGO.value;
  dm.Query1.open;
  QRLabel65.caption := dm.Query1.fieldbyname('tfa_nombre').asstring;
  ActBalance        := dm.Query1.fieldbyname('tfa_actbalance').AsString;
  if (ActBalance = 'True') and (QFacturaFAC_ABONO.Value > 0) then
  begin
    QRDBText70.Enabled  := True;
    QRLabel113.Enabled := True;
    QRLabel114.Enabled := True;
  end
  else
  begin
    QRDBText70.Enabled  := False;
    QRLabel113.Enabled := False;
    QRLabel114.Enabled := False;
  end;

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select cpa_nombre from condiciones');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and cpa_codigo = :codigo');
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.parambyname('codigo').Value := QFacturaCPA_CODIGO.value;
  dm.Query1.open;
  QRLabel101.caption := dm.Query1.fieldbyname('cpa_nombre').asstring;

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select ven_nombre from vendedores');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and ven_codigo = :vend');
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.parambyname('vend').Value := QFacturaVEN_CODIGO.value;
  dm.Query1.open;
  QRLabel98.caption := dm.Query1.fieldbyname('ven_nombre').asstring;

  QRLabel118.Caption := '';
  if not QFormasPago.active then QFormasPago.Open;
  if not QForma.Active then QForma.Open;
  QFormasPago.First;
  while not QFormasPago.Eof do
  begin
    QForma.Locate('fpa_codigo',inttostr(QFormasPagoFPA_CODIGO.Value),[]);
    lbForma.Caption := QRLabel118.Caption + ' '+copy(trim(QFormaFPA_NOMBRE.Value),1,1)+': '+
                        format('%n',[QFormasPagoFOR_MONTO.value]);
    QFormasPago.next;
  end;
end;

procedure TRFacturaPreImpresa.QRBand15BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRImage1.Picture.LoadFromFile(QDetallepro_foto.Value);
end;

procedure TRFacturaPreImpresa.QRMSConsultingBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  if not QFacturaCPA_CODIGO.IsNull then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cpa_nombre from condiciones');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and cpa_codigo = :codigo');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('codigo').Value := QFacturaCPA_CODIGO.value;
    dm.Query1.open;
    lbCondicion2.caption := dm.Query1.fieldbyname('cpa_nombre').asstring;
  end
  else
    lbCondicion2.caption := 'Contado';

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select cli_email, cli_rnc, cli_contacto from clientes');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and cli_codigo = :cli');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('cli').Value := QFacturaCLI_CODIGO.Value;
  dm.Query1.Open;
  lbrnc2.Caption     := QFacturafac_rnc.Value;
  lbemail.Caption    := dm.Query1.FieldByName('cli_email').AsString;
  lbcontacto.Caption := dm.Query1.FieldByName('cli_contacto').AsString;

end;

procedure TRFacturaPreImpresa.QRBBBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  {dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select tfa_imprimie_encabezado from tiposfactura');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and tfa_codigo = :tfa');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('tfa').Value := QFacturaTFA_CODIGO.Value;
  dm.Query1.Open;

  {if Trim(dm.QParametrospar_imprime_logo.Value) = 'True' then
    QRImage1.Picture.LoadFromFile(DM.QEmpresasEMP_LOGO.Value);

  QRDBText1.Enabled := (Trim(dm.QParametrospar_imprime_logo.Value) = 'False') and (ImprimeEncaqbezado = 'True');
  QRDBText2.Enabled := (Trim(dm.QParametrospar_imprime_logo.Value) = 'False') and (ImprimeEncaqbezado = 'True');
  QRDBText3.Enabled := (Trim(dm.QParametrospar_imprime_logo.Value) = 'False') and (ImprimeEncaqbezado = 'True');
  QRDBText4.Enabled := (Trim(dm.QParametrospar_imprime_logo.Value) = 'False') and (ImprimeEncaqbezado = 'True');
  QRDBText5.Enabled := (Trim(dm.QParametrospar_imprime_logo.Value) = 'False') and (ImprimeEncaqbezado = 'True');
  QRLabel1.Enabled  := (Trim(dm.QParametrospar_imprime_logo.Value) = 'False') and (ImprimeEncaqbezado = 'True');
  QRLabel2.Enabled  := (Trim(dm.QParametrospar_imprime_logo.Value) = 'False') and (ImprimeEncaqbezado = 'True');
  QRLabel44.Enabled := (Trim(dm.QParametrospar_imprime_logo.Value) = 'False') and (ImprimeEncaqbezado = 'True');
  QRLabel45.Enabled := (Trim(dm.QParametrospar_imprime_logo.Value) = 'False') and (ImprimeEncaqbezado = 'True');}

  QRBand18.AlignToBottom := dm.QParametrosPAR_FACTOTALIZAPIE.Value = 'True';
  if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
    QRDBText90.DataField := 'CLI_CODIGO'
  else
    QRDBText90.DataField := 'CLI_REFERENCIA';

  {if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
     QRDBText99.DataField := 'PRO_CODIGO'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
     QRDBText99.DataField := 'PRO_RFABRIC'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
     QRDBText99.DataField := 'PRO_RORIGINAL';}

  if QFacturaCLI_CODIGO.IsNull then
  begin
    QRLabel171.caption := ' ';
    QRLabel71.caption := QFacturafac_rnc.Value;
  end
  else
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cli_rnc, cli_cedula from clientes');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and cli_Codigo = :cli');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cli').Value := QFacturaCLI_CODIGO.Value;
    dm.Query1.Open;
    if trim(dm.Query1.FieldByName('cli_rnc').AsString) <> '' then
      QRLabel171.Caption := dm.Query1.FieldByName('cli_rnc').AsString
    else
      QRLabel171.Caption := dm.Query1.FieldByName('cli_cedula').AsString;
  end;

  if not QFacturaCLI_CODIGO.IsNull then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cli_balance from clientes');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and cli_codigo = :cli');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cli').Value := QFacturaCLI_CODIGO.Value;
    dm.Query1.Open;
    QRLabel165.Caption := format('%n',[dm.Query1.FieldByName('cli_balance').AsFloat]);
  end
  else
    QRLabel165.Caption := '0.00';

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select tfa_nombre, tfa_actbalance from tiposfactura');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and tfa_codigo = :tipo');
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.parambyname('tipo').Value := QFacturaTFA_CODIGO.value;
  dm.Query1.open;
  QRLabel137.caption := dm.Query1.fieldbyname('tfa_nombre').asstring;

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select cpa_nombre from condiciones');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and cpa_codigo = :codigo');
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.parambyname('codigo').Value := QFacturaCPA_CODIGO.value;
  dm.Query1.open;
  QRLabel176.caption := dm.Query1.fieldbyname('cpa_nombre').asstring;

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select ven_nombre from vendedores');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and ven_codigo = :vend');
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.parambyname('vend').Value := QFacturaVEN_CODIGO.value;
  dm.Query1.open;
  QRLabel173.caption := dm.Query1.fieldbyname('ven_nombre').asstring;
  llenaNota(qrmNota_QRBB);

end;

procedure TRFacturaPreImpresa.QRBelkisBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select caj_nombre from cajeros where caj_codigo = :caj');
  dm.Query1.Parameters.ParamByName('caj').Value := QFacturaCAJ_CODIGO.Value;
  dm.Query1.Open;
  lbcajero.Caption := dm.Query1.FieldByName('caj_nombre').Value;

  if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
    QRDBText117.DataField := 'CLI_CODIGO'
  else
    QRDBText117.DataField := 'CLI_REFERENCIA';

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select tfa_nombre, tfa_actbalance from tiposfactura');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and tfa_codigo = :tipo');
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.parambyname('tipo').Value := QFacturaTFA_CODIGO.value;
  dm.Query1.open;
  QRLabel164.caption := dm.Query1.fieldbyname('tfa_nombre').asstring;
  ActBalance        := dm.Query1.fieldbyname('tfa_actbalance').AsString;

  if QFacturatip_codigo.AsInteger > 0 then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select tip_nombre from tiponcf where emp_codigo = :emp');
    dm.Query1.sql.add('and tip_codigo = :tip');
    dm.Query1.Parameters.parambyname('emp').Value  := dm.vp_cia;
    dm.Query1.Parameters.parambyname('tip').Value := QFacturatip_codigo.value;
    dm.Query1.open;
    QRLabel164.caption := UpperCase(QRLabel164.caption + ' ' + dm.Query1.FieldByName('tip_nombre').AsString);
  end;

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select cpa_nombre from condiciones');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and cpa_codigo = :codigo');
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.parambyname('codigo').Value := QFacturaCPA_CODIGO.value;
  dm.Query1.open;
  QRLabel235.caption := dm.Query1.fieldbyname('cpa_nombre').asstring;

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select ven_nombre from vendedores');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and ven_codigo = :vend');
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.parambyname('vend').Value := QFacturaVEN_CODIGO.value;
  dm.Query1.open;
  QRLabel232.caption := dm.Query1.fieldbyname('ven_nombre').asstring;
  llenaNota(qrNota_QRBelkis);
end;

procedure TRFacturaPreImpresa.QRBand22BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  lbitbis1.Enabled := false;
  lbtotalitbis1.Enabled := false;

  lbitbis2.Enabled := false;
  lbtotalitbis2.Enabled := false;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select i.nombre, sum(case d.det_itbis when 0 then 0 else ');
  dm.Query1.SQL.Add('((((d.det_precio*d.det_cantidad) / ((d.det_itbis/100)+1)) * d.det_itbis)/100) end) as monto');
  dm.Query1.SQL.Add('from facturas f, det_Factura d, impuestos i');
  dm.Query1.SQL.Add('where f.emp_codigo = d.emp_codigo and f.suc_codigo = d.suc_codigo');
  dm.Query1.SQL.Add('and f.fac_forma = d.fac_forma and f.tfa_codigo = d.tfa_codigo');
  dm.Query1.SQL.Add('and f.fac_numero = d.fac_numero and f.emp_codigo = :emp');
  dm.Query1.SQL.Add('and f.tfa_codigo = :tfa and f.fac_forma = :for and f.fac_numero = :num');
  dm.Query1.SQL.Add('and f.suc_codigo = :suc');
  dm.Query1.SQL.Add('and d.det_itbis = i.porciento');
  dm.Query1.SQL.Add('and isnull(d.det_itbis,0) > 0');
  dm.Query1.SQL.Add('group by i.nombre');
  dm.Query1.Parameters.ParamByName('emp').Value := QFacturaEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('suc').Value := QFacturaSUC_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('tfa').Value := QFacturaTFA_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('for').Value := QFacturaFAC_FORMA.Value;
  dm.Query1.Parameters.ParamByName('num').Value := QFacturaFAC_NUMERO.Value;
  dm.Query1.Open;
  if dm.Query1.RecordCount = 1 then
  begin
    lbitbis2.Enabled := false;
    lbtotalitbis2.Enabled := false;

    lbitbis1.Enabled := true;
    lbtotalitbis1.Enabled := true;

    lbitbis1.Caption := 'Itbis '+dm.Query1.FieldByName('nombre').AsString+':';
    lbtotalitbis1.Caption := format('%n',[dm.Query1.FieldByName('monto').AsFloat]);
  end
  else if dm.Query1.RecordCount = 2 then
  begin
    lbitbis1.Enabled := true;
    lbtotalitbis1.Enabled := true;

    lbitbis2.Enabled := true;
    lbtotalitbis2.Enabled := true;

    lbitbis1.Caption := 'Itbis '+dm.Query1.FieldByName('nombre').AsString+':';
    lbtotalitbis1.Caption := format('%n',[dm.Query1.FieldByName('monto').AsFloat]);

    dm.Query1.Next;
    lbitbis2.Caption := 'Itbis '+dm.Query1.FieldByName('nombre').AsString+':';
    lbtotalitbis2.Caption := format('%n',[dm.Query1.FieldByName('monto').AsFloat]);
  end;

  {if Trim(lbPagado.Caption) = '' then
  begin
    lbPagado.Enabled := false;
    lbDevuelta.Enabled := false;
    QRLabel250.Enabled := false;
    QRLabel260.Enabled := false;
  end;}
end;

procedure TRFacturaPreImpresa.QRBand24BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if (QDetalleDET_NOTA.IsNull) or (Trim(QDetalleDET_NOTA.Value) = '') then
  begin
    QRRichText2.Enabled := false;
    QRBand24.Height := 18;
  end
  else
  begin
    QRDBText148.Font.Style := QRDBText148.Font.Style + [fsbold];
    QRRichText2.Lines.Text := QDetalleDET_NOTA.Value;
    QRRichText2.Enabled := True;
    QRBand24.Height := 60;
  end;
end;

procedure TRFacturaPreImpresa.QRBand23BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  {if dm.QEmpresasEMP_LOGO.AsString <> '' then
    if FileExists(dm.QEmpresasEMP_LOGO.AsString) then
      qrimage5.Picture.LoadFromFile(dm.QEmpresasEMP_LOGO.AsString);}
end;

procedure TRFacturaPreImpresa.QRBand26BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRDBText174.Caption := QFacturaNumeroCF.AsString;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select caj_nombre from cajeros where caj_codigo = :caj');
  dm.Query1.Parameters.ParamByName('caj').Value := QFacturaCAJ_CODIGO.Value;
  dm.Query1.Open;
  lbUsuario.Caption := dm.Query1.FieldByName('caj_nombre').Value;

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select cpa_nombre from condiciones');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and cpa_codigo = :codigo');
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.parambyname('codigo').Value := QFacturaCPA_CODIGO.value;
  dm.Query1.open;
  QRLabel300.caption := dm.Query1.fieldbyname('cpa_nombre').asstring;

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select ven_nombre from vendedores');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and ven_codigo = :vend');
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.parambyname('vend').Value := QFacturaVEN_CODIGO.value;
  dm.Query1.open;
  QRLabel297.caption := dm.Query1.fieldbyname('ven_nombre').asstring;
  
end;

procedure TRFacturaPreImpresa.QRMadecoBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin

  llenaNota(qrNota_QRMadeco);
  qrlUsuario1.Caption :='Impreso por :'+ dm.getNombreUsuario(DM.Usuario) +
                       ' Fecha/Hora ' + FormatDateTime('dd/mm/yyyy hh:mm:ss AM/PM',now);


end;

procedure TRFacturaPreImpresa.QRBand31BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  lbmoneda0.Caption := dm.getMoneda(QFacturaMON_CODIGO.value,dm.vp_cia);
  ///lbmoneda2.Caption := lbmoneda0.Caption;
  if QFacturaCPA_CODIGO.IsNull then

      qrlFactura.caption :='Factura Al Contado'
  else
    begin
      qrlFactura.caption :='Factura a Creditos';
      QRLabel348.Enabled :=TRUE;
      qrlCondicion.Enabled :=TRUE;
      QRLabel351.Enabled :=TRUE;
      QRDBText204.Enabled :=TRUE;
      QRLabel323.Enabled :=TRUE;
      QRLabel332.Enabled :=TRUE;
      qrlBalance.Enabled :=TRUE;
    end;





  if not QFacturaNCF_Fijo.isnull then
    qlncf.caption := QFacturaNCF_Fijo.Value+formatfloat('00000000',QFacturaNCF_Secuencia.Value)
  else
    qlncf.caption := '';


    if not QFacturaCLI_CODIGO.IsNull then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cli_balance from clientes');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and cli_codigo = :cli');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cli').Value := QFacturaCLI_CODIGO.Value;
    dm.Query1.Open;
    qrlBalance.Caption := format('%n',[dm.Query1.FieldByName('cli_balance').AsFloat]);
  end
  else
    qrlBalance.Caption := '0.00';


  qrlCondicion.caption :=DM.getCondicionPago(dm.vp_cia,QFacturaCPA_CODIGO.value);
  qrlVendedor.caption := dm.getVendedor(dm.vp_cia,QFacturaVEN_CODIGO.value);

end;

procedure TRFacturaPreImpresa.Rpt_FacturasBeforePrint(
  Sender: TfrxReportComponent);
begin
IF  QNorma201806VENC_NCF.IsNull = False THEN
   TfrxMemoView(Rpt_Facturas.FindObject('MFechaNCF')).Visible := True else
   TfrxMemoView(Rpt_Facturas.FindObject('MFechaNCF')).Visible := False;

if QNorma201806Condiciones.Text <> '' then begin
   TfrxMemoView(Rpt_Facturas.FindObject('Memo51')).Visible := True;
   TfrxMemoView(Rpt_Facturas.FindObject('Memo52')).Visible := True;
   end;

if QNorma201806Condiciones.Text = '' then begin
   TfrxMemoView(Rpt_Facturas.FindObject('Memo51')).Visible := False;
   TfrxMemoView(Rpt_Facturas.FindObject('Memo52')).Visible := False;
   end;





end;

procedure TRFacturaPreImpresa.Rpt_ReImpresionFactBeforePrint(
  Sender: TfrxReportComponent);
begin
IF  QNorma201806VENC_NCF.IsNull = False THEN
   TfrxMemoView(Rpt_ReImpresionFact.FindObject('MFechaNCF')).Visible := True else
   TfrxMemoView(Rpt_ReImpresionFact.FindObject('MFechaNCF')).Visible := False;

if QNorma201806Condiciones.Text <> '' then begin
   TfrxMemoView(Rpt_ReImpresionFact.FindObject('Memo51')).Visible := True;
   TfrxMemoView(Rpt_ReImpresionFact.FindObject('Memo52')).Visible := True;
   end;

if QNorma201806Condiciones.Text = '' then begin
   TfrxMemoView(Rpt_ReImpresionFact.FindObject('Memo51')).Visible := False;
   TfrxMemoView(Rpt_ReImpresionFact.FindObject('Memo52')).Visible := False;
   end;

end;


procedure TRFacturaPreImpresa.QRTHortonBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
  a : integer;
  cambiar : TQRLabel;
begin
 if dm.QParametrosIdioma.AsString = 'I' then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select objeto, ingles from Traduccion where modulo = :mod');
    dm.Query1.Parameters.ParamByName('mod').Value := 'RFacturaPreImpresa';
    dm.Query1.Open;
    dm.Query1.DisableControls;
    while not dm.Query1.Eof do
    begin
      cambiar := (FindComponent(dm.Query1.FieldByName('objeto').AsString) as TQRLabel);
      cambiar.Caption := dm.Query1.FieldByName('ingles').AsString;
      dm.Query1.Next;
    end;
    dm.Query1.EnableControls;
  end;

  {if dm.QParametrospar_moneda_local.Value <> QFacturamon_codigo.Value then
  begin
    CurrencyDecimals := 4;
    QRExpr9.Mask := '###,###,###.00';
    QRDBText153.Mask := '###,###,###.00';
    QRDBText154.Mask := '###,###,###.00';
    QRDBText159.Mask := '###,###,###.00';
  end
  else
  begin
    CurrencyDecimals := 2;
    QRExpr9.Mask := '###,###,###.00';
    QRDBText153.Mask := '###,###,###.00';
    QRDBText154.Mask := '###,###,###.00';
    QRDBText159.Mask := '###,###,###.00';
  end;
}
  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select ven_nombre from vendedores');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and ven_codigo = :vend');
  dm.Query1.Parameters.parambyname('emp').Value  := dm.vp_cia;
  dm.Query1.Parameters.parambyname('vend').Value := QFacturaVEN_CODIGO.value;
  dm.Query1.open;
  lbVendedor2.caption := dm.Query1.fieldbyname('ven_nombre').asstring;

  if not QFacturaMON_CODIGO.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select mon_sigla from moneda');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and mon_codigo = :mon');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('mon').Value := QFacturaMON_CODIGO.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      QRLabel270.Caption := 'VALOR EN '+dm.Query1.FieldByName('mon_sigla').AsString;
      lbsimbolo1.Caption := dm.Query1.FieldByName('mon_sigla').AsString;
      lbsimbolo2.Caption := dm.Query1.FieldByName('mon_sigla').AsString;
      lbsimbolo3.Caption := dm.Query1.FieldByName('mon_sigla').AsString;
      lbsimbolo4.Caption := dm.Query1.FieldByName('mon_sigla').AsString;
    end;
  end;

  if not QFacturaCPA_CODIGO.IsNull then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cpa_nombre from condiciones');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and cpa_codigo = :codigo');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('codigo').Value := QFacturaCPA_CODIGO.value;
    dm.Query1.open;
    QRLabel255.caption := dm.Query1.fieldbyname('cpa_nombre').asstring;
  end
  else
    QRLabel255.caption := 'Contado';

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select cli_email, cli_rnc, cli_contacto from clientes');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and cli_codigo = :cli');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('cli').Value := QFacturaCLI_CODIGO.Value;
  dm.Query1.Open;
  QRLabel262.Caption := QFacturafac_rnc.Value;
  QRLabel258.Caption := dm.Query1.FieldByName('cli_email').AsString;
  QRLabel271.Caption := dm.Query1.FieldByName('cli_contacto').AsString;

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select tfa_nombre from tiposfactura');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and tfa_codigo = :tfa');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('tfa').Value := QFacturaTFA_CODIGO.Value;
  dm.Query1.Open;
  lbtipofactura.Caption := dm.Query1.FieldByName('tfa_nombre').AsString;

  qrlUsuario.Caption :=UpperCase(dm.getNombreUsuario(DM.Usuario));

end;

procedure TRFacturaPreImpresa.Rpt_ThortonBeforePrint(
  Sender: TfrxReportComponent);
begin
  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select ven_nombre from vendedores');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and ven_codigo = :vend');
  dm.Query1.Parameters.parambyname('emp').Value  := dm.vp_cia;
  dm.Query1.Parameters.parambyname('vend').Value := QFacturaVEN_CODIGO.value;
  dm.Query1.open;
  if DM.Query1.RecordCount > 0 then
  TfrxMemoView(Rpt_Thorton.FindObject('MVendedor')).Text := dm.Query1.fieldbyname('ven_nombre').asstring else
  TfrxMemoView(Rpt_Thorton.FindObject('MVendedor')).Text := 'N/A';

  if QDetalle.RecordCount > 34 then
  TfrxPageFooter(Rpt_Thorton.FindObject('PageFooter1')).PrintOnFirstPage := False;

  if QDetalleDET_NOTA.Value <> '' then BEGIN
  TfrxMemoView(Rpt_Thorton.FindObject('MNota')).Visible := True;
  TfrxMemoView(Rpt_Thorton.FindObject('Child1')).Visible := True;
  end
  else
  begin
  TfrxMemoView(Rpt_Thorton.FindObject('MNota')).Visible := False;
  TfrxMemoView(Rpt_Thorton.FindObject('Child1')).Visible := False;
  end;

  if not QFacturaCPA_CODIGO.IsNull then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cpa_nombre from condiciones');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and cpa_codigo = :codigo');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('codigo').Value := QFacturaCPA_CODIGO.value;
    dm.Query1.open;
    TfrxMemoView(Rpt_Thorton.FindObject('MCondicionesPago')).Text  := dm.Query1.fieldbyname('cpa_nombre').asstring;
  end
  else
    TfrxMemoView(Rpt_Thorton.FindObject('MCondicionesPago')).Text := 'Contado';

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select cli_email, cli_rnc, cli_contacto from clientes');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and cli_codigo = :cli');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('cli').Value := QFacturaCLI_CODIGO.Value;
  dm.Query1.Open;
  TfrxMemoView(Rpt_Thorton.FindObject('MRNC')).Text := QFacturafac_rnc.Value;
  TfrxMemoView(Rpt_Thorton.FindObject('MEmail')).Text := dm.Query1.FieldByName('cli_email').AsString;
  TfrxMemoView(Rpt_Thorton.FindObject('MContacto')).Text := dm.Query1.FieldByName('cli_contacto').AsString;

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select tfa_nombre from tiposfactura');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and tfa_codigo = :tfa');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('tfa').Value := QFacturaTFA_CODIGO.Value;
  dm.Query1.Open;
  TfrxMemoView(Rpt_Thorton.FindObject('MTipoFactura')).Text := dm.Query1.FieldByName('tfa_nombre').AsString;

  if vl_reimpresa = 1 then 
  TfrxMemoView(Rpt_Thorton.FindObject('MReimp')).Visible := True else
  TfrxMemoView(Rpt_Thorton.FindObject('MReimp')).Visible := False;

  if QFacturaNCF_Fijo.isnull then BEGIN
    TfrxMemoView(Rpt_Thorton.FindObject('MNCF')).Visible := False;
    TfrxMemoView(Rpt_Thorton.FindObject('MLNCF')).Visible := False;
    TfrxMemoView(Rpt_Thorton.FindObject('MVenceNCF')).Visible := False;
    TfrxMemoView(Rpt_Thorton.FindObject('MVenceNCF2')).Visible := False;
    TfrxMemoView(Rpt_Thorton.FindObject('MTipoNCF')).Visible := False;
  end;

  if not QFacturaNCF_Fijo.isnull then BEGIN
    TfrxMemoView(Rpt_Thorton.FindObject('MNCF')).Visible := True;
    TfrxMemoView(Rpt_Thorton.FindObject('MLNCF')).Visible := True;
    TfrxMemoView(Rpt_Thorton.FindObject('MNCF')).Text := Trim(QFacturaNCF_Fijo.Text)+formatfloat('00000000',QFacturaNCF_Secuencia.Value);
      //buscar vencimiento
      dm.Query1.Close;
      dm.Query1.sql.Clear;
      dm.Query1.SQL.Add('select FechaVenc');
      dm.Query1.sql.Add('from NCF ');
      dm.Query1.sql.Add('where emp_codigo = :emp_codigo');
      dm.Query1.sql.Add('and suc_codigo = :suc_codigo');
      dm.Query1.sql.Add('and NCF_Fijo   = :NCF_Fijo');
      dm.Query1.Parameters.ParamByName('emp_codigo').Value := QFacturaEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('suc_codigo').Value := QFacturaSUC_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('NCF_Fijo').Value   := QFacturaNCF_Fijo.Text;
      dm.Query1.Open;
      if not dm.Query1.IsEmpty then begin
      TfrxMemoView(Rpt_Thorton.FindObject('MVenceNCF')).Visible := True;
      TfrxMemoView(Rpt_Thorton.FindObject('MVenceNCF2')).Visible := True;
      TfrxMemoView(Rpt_Thorton.FindObject('MVenceNCF2')).Text := FormatDateTime('dd/mm/yyyy',dm.Query1.FieldByName('FechaVenc').AsDateTime);
      end;



      //buscar tipo documentos
      dm.Query1.Close;
      dm.Query1.sql.Clear;
      dm.Query1.SQL.Add('select b.tdo_nombre Nombre');
      dm.Query1.sql.Add('from NCF a');
      dm.Query1.sql.Add('inner join TiposDoc b on a.emp_codigo=b.emp_codigo and a.tdo_codigo=b.tdo_codigo');
      dm.Query1.sql.Add('where a.emp_codigo = :emp_codigo');
      dm.Query1.sql.Add('and a.suc_codigo = :suc_codigo');
      dm.Query1.sql.Add('and a.NCF_Fijo   = :NCF_Fijo');
      dm.Query1.Parameters.ParamByName('emp_codigo').Value := QFacturaEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('suc_codigo').Value := QFacturaSUC_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('NCF_Fijo').Value   := QFacturaNCF_Fijo.Text;
      dm.Query1.Open;
      if not dm.Query1.IsEmpty then begin
      TfrxMemoView(Rpt_Thorton.FindObject('MTipoNCF')).Visible := True;
      TfrxMemoView(Rpt_Thorton.FindObject('MTipoNCF')).Text := dm.Query1.FieldByName('Nombre').AsString;
      end;
      if dm.Query1.IsEmpty then begin
      TfrxMemoView(Rpt_Thorton.FindObject('MTipoNCF')).Visible := False;
      end;
      end;


end;

end.