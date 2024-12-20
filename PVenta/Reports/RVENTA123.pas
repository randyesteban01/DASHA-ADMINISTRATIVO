unit RVENTA123;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, ADODB;

type
  TRAnalisisCompra_Venta = class(TQuickRep)
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    lbperioro: TQRLabel;
    QRBand2: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QAnalisis: TADOQuery;
    QAnalisisCodigo: TIntegerField;
    QAnalisisNombre: TStringField;
    QAnalisisCant_Vendida: TBCDField;
    QAnalisisTotal_Vendido: TBCDField;
    QAnalisisCant_Compra: TBCDField;
    QAnalisisTotal_Compra: TBCDField;
    QRBand3: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
  private

  public

  end;

var
  RAnalisisCompra_Venta: TRAnalisisCompra_Venta;

implementation

uses SIGMA01;

{$R *.DFM}

end.
