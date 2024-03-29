unit RVENTA31;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRCxC = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel18: TQRLabel;
    QRLabel21: TQRLabel;
    QRBand3: TQRBand;
    QRDBText10: TQRDBText;
    QRBand4: TQRBand;
    QRLabel20: TQRLabel;
    QRLabel38: TQRLabel;
    QRExpr1: TQRExpr;
    QDocs: TADOQuery;
    QClientes: TADOQuery;
    QClientesCLI_CODIGO: TIntegerField;
    QClientesCLI_REFERENCIA: TIBStringField;
    QClientesCLI_NOMBRE: TIBStringField;
    QClientesCLI_TELEFONO: TIBStringField;
    QClientesCLI_BALANCE: TFloatField;
    QRSubDetail1: TQRSubDetail;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    lbCodigo: TQRDBText;
    QRDBText7: TQRDBText;
    dsClientes: TDataSource;
    QRDBText8: TQRDBText;
    QDocsFAC_FORMA: TIBStringField;
    QDocsMOV_ABONO: TFloatField;
    QDocsMOV_FECHA: TDateTimeField;
    QDocsMOV_MONTO: TFloatField;
    QDocsMOV_NUMERO: TIntegerField;
    QDocsMOV_TIPO: TIBStringField;
    QDocsTFA_CODIGO: TIntegerField;
    QDocsSaldo: TFloatField;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRBand5: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRExpr2: TQRExpr;
    QClientesEMP_CODIGO: TIntegerField;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QDocsnde_concepto: TStringField;
    procedure QDocsCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QDocsBeforeOpen(DataSet: TDataSet);
  private

  public

  end;

var
  RCxC: TRCxC;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRCxC.QDocsCalcFields(DataSet: TDataSet);
begin
  QDocsSaldo.Value := QDocsMOV_MONTO.Value - QDocsMOV_ABONO.Value;
end;

procedure TRCxC.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
    lbCodigo.DataField := 'CLI_CODIGO'
  else
    lbCodigo.DataField := 'CLI_REFERENCIA';
end;

procedure TRCxC.QDocsBeforeOpen(DataSet: TDataSet);
begin
//QDocs.Parameters.ParamByName('suc_codigo').Value := DM.vp_sucursal;
end;

end.
