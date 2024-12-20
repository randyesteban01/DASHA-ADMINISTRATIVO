unit RVENTA69;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRepSolicitados = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRBand3: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QProductos: TADOQuery;
    QProductosPRO_CODIGO: TIntegerField;
    QProductosPRO_EXISTENCIA: TFloatField;
    QProductosPRO_NOMBRE: TIBStringField;
    QProductosPRO_PRECIO1: TFloatField;
    QProductosPRO_PRECIO2: TFloatField;
    QProductosPRO_PRECIO3: TFloatField;
    QProductosPRO_PRECIO4: TFloatField;
    QProductosPRO_RFABRIC: TIBStringField;
    QProductosPRO_RORIGINAL: TIBStringField;
    QProv: TADOQuery;
    dsProv: TDataSource;
    QRSubDetail1: TQRSubDetail;
    QRDBText10: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText16: TQRDBText;
    QProductosPRO_COSTO: TFloatField;
    QProvSUP_NOMBRE: TIBStringField;
    QProvSUP_CODIGO: TIntegerField;
    QProvEMP_CODIGO: TIntegerField;
    QProductosPRO_EXISTEMPAQUE: TFloatField;
    QProductosPRO_COSTOEMPAQUE: TFloatField;
    QRBand4: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
  private

  public

  end;

var
  RepSolicitados: TRepSolicitados;

implementation

uses SIGMA01;


{$R *.DFM}

end.
