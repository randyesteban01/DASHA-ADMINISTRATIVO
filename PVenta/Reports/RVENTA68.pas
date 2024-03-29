unit RVENTA68;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, ADODB;

type
  TRLiquidacion = class(TQuickRep)
    QRBand2: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel22: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel4: TQRLabel;
    QRBand4: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel29: TQRLabel;
    QRBand3: TQRBand;
    QLiquidacion: TADOQuery;
    QLiquidacionemp_codigo: TIntegerField;
    QLiquidacionliq_numero: TIntegerField;
    QLiquidacionsup_codigo: TIntegerField;
    QLiquidacionliq_fecha: TDateTimeField;
    QLiquidacionliq_Agencia: TStringField;
    QLiquidacionliq_container: TStringField;
    QLiquidacionliq_factura: TStringField;
    QLiquidacionliq_taza: TBCDField;
    QLiquidacionalm_codigo: TIntegerField;
    QLiquidacionliq_factor: TBCDField;
    QLiquidacionusu_codigo: TIntegerField;
    QLiquidacionliq_status: TStringField;
    QLiquidacionped_tipo: TStringField;
    QLiquidacionped_numero: TIntegerField;
    dsLiq: TDataSource;
    QDetalle: TADOQuery;
    QDetalleemp_codigo: TIntegerField;
    QDetalleliq_numero: TIntegerField;
    QDetalledet_secuencia: TIntegerField;
    QDetallepro_codigo: TIntegerField;
    QDetallepro_roriginal: TStringField;
    QDetallepro_rfabric: TStringField;
    QDetalledet_nombre: TStringField;
    QDetalledet_cantidad: TBCDField;
    QDetalledet_medida: TStringField;
    QDetalleTotalUS: TFloatField;
    QDetalleTotalRD: TFloatField;
    QDetalleGastos: TFloatField;
    QDetalleTotalGastos: TFloatField;
    QDetalleCosto: TFloatField;
    QDetalledet_costounidad: TBCDField;
    QDetalledet_costoempaque: TBCDField;
    QDetalledet_costo: TBCDField;
    QRLabel23: TQRLabel;
    QRLabel30: TQRLabel;
    QLiquidacionsup_nombre: TStringField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText24: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QGastos: TADOQuery;
    QGastosgas_nombre: TStringField;
    QGastosgas_monto: TBCDField;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText18: TQRDBText;
    QRBand1: TQRBand;
    QRSubDetail2: TQRSubDetail;
    QRLabel10: TQRLabel;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRBand6: TQRBand;
    QRLabel19: TQRLabel;
    QRExpr5: TQRExpr;
    QRShape1: TQRShape;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QLiquidacionliq_gastos: TBCDField;
    QDetalledet_peso_volumen: TBCDField;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QLiquidacionTotalRD: TBCDField;
    QRLabel36: TQRLabel;
    QRDBText20: TQRDBText;
    QRLabel37: TQRLabel;
    QRBand30: TQRBand;
    qrlUsuario: TQRLabel;
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  RLiquidacion: TRLiquidacion;

implementation

uses SIGMA01;

{$R *.DFM}

procedure TRLiquidacion.QDetalleCalcFields(DataSet: TDataSet);
var
  TotalGastos : Double;
begin
  TotalGastos := QLiquidacionliq_gastos.Value;
  QDetalleTotalUS.value := QDetalledet_cantidad.value * QDetalledet_costo.value;
  QDetalleTotalRD.value := QDetalleTotalUS.value * QLiquidacionliq_taza.value;
  QDetalleGastos.value  := ((TotalGastos+QDetalledet_peso_volumen.Value)/QLiquidacionTotalRD.Value)*QDetalleTotalRD.value;
  QDetalleTotalGastos.VALUE := QDetalleGastos.value + QDetalleTotalRD.value;
  if QDetalledet_cantidad.value > 0 then
     QDetalleCosto.value := (QDetalleTotalGastos.Value) / QDetalledet_cantidad.value;

end;

procedure TRLiquidacion.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  qrlUsuario.Caption :='Impreso por :'+ dm.getNombreUsuario(DM.Usuario) +
                       ' Fecha/Hora ' + FormatDateTime('dd/mm/yyyy hh:mm:ss AM/PM',now);
end;

end.
