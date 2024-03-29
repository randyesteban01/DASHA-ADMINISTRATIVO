unit RVENTA39;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, Db, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRTransferencia = class(TQuickRep)
    QRBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRLabel22: TQRLabel;
    QRShape9: TQRShape;
    QRLabel23: TQRLabel;
    QRShape10: TQRShape;
    QRDBText11: TQRDBText;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel28: TQRLabel;
    lbCliente: TQRDBText;
    QTrans: TADOQuery;
    QTransEMP_CODIGO: TIntegerField;
    QTransTRA_ALMACEN1: TIntegerField;
    QTransTRA_ALMACEN2: TIntegerField;
    QTransTRA_CONCEPTO: TIBStringField;
    QTransTRA_FECHA: TDateTimeField;
    QTransTRA_NUMERO: TIntegerField;
    QTransTRA_STATUS: TIBStringField;
    QTransUSU_CODIGO: TIntegerField;
    dsTrans: TDataSource;
    QDetalle: TADOQuery;
    QDetalleDET_CANTIDAD: TFloatField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    QDetallePRO_CODIGO: TIntegerField;
    QDetallePRO_RFABRIC: TIBStringField;
    QDetallePRO_RORIGINAL: TIBStringField;
    QDetalleTRA_NUMERO: TIntegerField;
    QTransALMACEN1: TIBStringField;
    QTransALMACEN2: TIBStringField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    lbReimpresion: TQRLabel;
    QRDBText8: TQRDBText;
    QDetalledet_medida: TStringField;
    QDetalledet_medida2: TStringField;
    QDetalledet_cantidad2: TBCDField;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText12: TQRDBText;
    lbTitulo: TQRLabel;
    QDetalledet_costo: TBCDField;
    QDetalledet_costound: TBCDField;
    QDetalledet_costoemp: TBCDField;
    QDetalleValor: TFloatField;
    QRLabel3: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRExpr1: TQRExpr;
    QRLabel16: TQRLabel;
    QDetallePRO_NOMBRE: TStringField;
    QRDBText10: TQRDBText;
    lbProd: TQRDBText;
    PageFooterBand1: TQRBand;
    qrlUsuario: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QDetalleCalcFields(DataSet: TDataSet);
  private

  public

  end;

var
  RTransferencia: TRTransferencia;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRTransferencia.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
     lbProd.DataField := 'PRO_CODIGO'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
     lbProd.DataField := 'PRO_RFABRIC'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
     lbProd.DataField := 'PRO_RORIGINAL';

 qrlUsuario.Caption :='Impreso por :'+ dm.getNombreUsuario(DM.Usuario) +
                       ' Fecha/Hora ' + FormatDateTime('dd/mm/yyyy hh:mm:ss AM/PM',now);
                            
end;

procedure TRTransferencia.QDetalleCalcFields(DataSet: TDataSet);
begin
  QDetalleValor.Value := QDetalledet_costo.Value * QDetalleDET_CANTIDAD.Value;
end;

end.
