unit RVENTA04;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRConsFacturas = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    lbTipo: TQRLabel;
    lbVendedor: TQRLabel;
    lbCajero: TQRLabel;
    lbCliente: TQRLabel;
    lbCondi: TQRLabel;
    lbUsuario: TQRLabel;
    lbNombre: TQRLabel;
    lbStatus: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel17: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel31: TQRLabel;
    QRBand3: TQRBand;
    Fac2: TQRDBText;
    Fac3: TQRDBText;
    Fac4: TQRDBText;
    Fac5: TQRDBText;
    Fac6: TQRDBText;
    Fac7: TQRDBText;
    Fac9: TQRDBText;
    QRBand4: TQRBand;
    QRLabel20: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel41: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr4: TQRExpr;
    QFacturas: TADOQuery;
    QFacturasALM_CODIGO: TIntegerField;
    QFacturasCAJ_CODIGO: TIntegerField;
    QFacturasCLI_CODIGO: TIntegerField;
    QFacturasCLI_REFERENCIA: TIBStringField;
    QFacturasCOT_NUMERO: TIntegerField;
    QFacturasCPA_CODIGO: TIntegerField;
    QFacturasEMP_CODIGO: TIntegerField;
    QFacturasFAC_ABONO: TFloatField;
    QFacturasFAC_DESCUENTO: TFloatField;
    QFacturasFAC_DIRECCION: TIBStringField;
    QFacturasFAC_FAX: TIBStringField;
    QFacturasFAC_FECHA: TDateTimeField;
    QFacturasFAC_FORMA: TIBStringField;
    QFacturasFAC_ITBIS: TFloatField;
    QFacturasFAC_LOCALIDAD: TIBStringField;
    QFacturasFAC_NOMBRE: TIBStringField;
    QFacturasFAC_NUMERO: TIntegerField;
    QFacturasFAC_OTROS: TFloatField;
    QFacturasFAC_STATUS: TIBStringField;
    QFacturasFAC_TELEFONO: TIBStringField;
    QFacturasFAC_TOTAL: TFloatField;
    QFacturasPED_NUMERO: TIntegerField;
    QFacturasTFA_CODIGO: TIntegerField;
    QFacturasUSU_CODIGO: TIntegerField;
    QFacturasVEN_CODIGO: TIntegerField;
    QFacturasUSU_NOMBRE: TIBStringField;
    QFacturasCAJ_NOMBRE: TIBStringField;
    QFacturasFAC_VENCE: TDateTimeField;
    dsFacturas: TDataSource;
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
    QDetalleCalcItbis: TFloatField;
    QDetalleCalcDesc: TFloatField;
    QDetallePrecioItbis: TFloatField;
    QDetalleValor: TFloatField;
    QDetalleTFA_CODIGO: TIntegerField;
    QDetalleDET_COMISION: TFloatField;
    QRSubDetail1: TQRSubDetail;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QDetalleDET_ESCALA: TIBStringField;
    QRLabel5: TQRLabel;
    QRLabel11: TQRLabel;
    lbSuc: TQRLabel;
    QFacturassuc_codigo: TIntegerField;
    QRLabel28: TQRLabel;
    QRLabel30: TQRLabel;
    lbCaja: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QFacturasNCF_Fijo: TStringField;
    QFacturasNCF_Secuencia: TBCDField;
    QFacturasNCF: TStringField;
    QFacturasfac_selectivo_ad: TBCDField;
    QFacturasfac_selectivo_con: TBCDField;
    QDetalledet_selectivo_ad: TBCDField;
    QDetalledet_selectivo_con: TBCDField;
    QFacturasfac_conitbis: TStringField;
    QRLabel37: TQRLabel;
    QRDBText10: TQRDBText;
    QFacturasPrecio: TFloatField;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRExpr7: TQRExpr;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRExpr8: TQRExpr;
    QFacturasven_nombre: TStringField;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel33: TQRLabel;
    QRExpr9: TQRExpr;
    QRLabel40: TQRLabel;
    QRLabel43: TQRLabel;
    lbtiponcf: TQRLabel;
    QRLabel35: TQRLabel;
    QRDBText6: TQRDBText;
    QFacturasFAC_COMISION: TBCDField;
    QFacturasFAC_CUOTAS: TIntegerField;
    QFacturascon_numero: TIntegerField;
    QFacturasfac_devuelto: TBCDField;
    QFacturasCaja: TStringField;
    QFacturasfac_rnc: TStringField;
    QFacturasfac_domicilio: TStringField;
    QFacturasfac_tasa: TBCDField;
    QFacturastfa_actbalance: TStringField;
    QFacturasfac_interes: TBCDField;
    QFacturastip_codigo: TIntegerField;
    QFacturasmonto_exento: TBCDField;
    QFacturasmonto_grabado_noincluido: TBCDField;
    QFacturasmonto_grabado_incluido: TBCDField;
    QFacturasgrabado: TFloatField;
    QFacturasCalcItbis: TCurrencyField;
    QRExpr2: TQRExpr;
    QRDBText7: TQRDBText;
    QFacturasSUB_TOTAL: TFloatField;
    QRLabel42: TQRLabel;
    QRLabel46: TQRLabel;
    QRExpr3: TQRExpr;
    QFacturastdesc_gral: TCurrencyField;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRExpr5: TQRExpr;
    QFacturasRECARGO: TCurrencyField;
    QFacturasEnviado_DGII: TBooleanField;
    QFacturaseNCF: TStringField;
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure QFacturasCalcFields(DataSet: TDataSet);
  private

  public
    Imprime : Boolean;
  end;

var
  RConsFacturas: TRConsFacturas;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRConsFacturas.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  PrintBand := Imprime;
end;

procedure TRConsFacturas.QDetalleCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis, vPrec, vDesc, vCant : Double;
begin
  if (QDetalleDET_CONITBIS.value = 'S') and (QFacturasFAC_CONITBIS.Value = 'True') then
  begin
    NumItbis := strtofloat(format('%10.2f',[(QDetalleDET_ITBIS.asfloat/100)+1]));

    if dm.QParametrospar_itbisincluido.Value = 'True' then
    begin
      Venta    := QDetalleDET_PRECIO.value/NumItbis;
      QDetalleCalcDesc.value    := (Venta * QDetalleDET_DESCUENTO.value)/100;

      QDetallePrecioItbis.value := Venta;
      QDetalleCalcDesc.value    := (Venta * QDetalleDET_DESCUENTO.value)/100;
      QDetalleCalcItbis.value   := (((Venta-QDetalleCalcDesc.value)+(QDetalledet_selectivo_ad.Value+
                                   QDetalledet_selectivo_con.Value))*
                                   dm.QParametrosPAR_ITBIS.Value)/100;

      QDetalleValor.value       := ((Venta-QDetalleCalcDesc.value)+
                                   QDetalledet_selectivo_ad.Value+QDetalledet_selectivo_con.Value+QDetalleCalcItbis.value)*
                                   QDetalleDET_CANTIDAD.value;
    end
    else
    begin
      Venta    := QDetalleDET_PRECIO.value;
      QDetallePrecioItbis.value := QDetalleDET_PRECIO.value+QDetalledet_selectivo_ad.Value+QDetalledet_selectivo_con.Value;
      QDetalleCalcDesc.value    := (Venta * QDetalleDET_DESCUENTO.value)/100;
      QDetalleCalcItbis.value   := (((Venta-QDetalleCalcDesc.value)+(QDetalledet_selectivo_ad.Value+
                                   QDetalledet_selectivo_con.Value))*QDetalleDET_ITBIS.Value)/100;

      vPrec := QDetalleDET_PRECIO.value;
      vDesc := QDetalleCalcDesc.value;
      vCant := QDetalleDET_CANTIDAD.value;
      
      QDetalleValor.Value := ((vPrec - vDesc) + QDetalleCalcItbis.value) * vCant;

    end;
  end
  else
  begin
    Venta := QDetalleDET_PRECIO.value;
    QDetalleCalcDesc.value    := (Venta * QDetalleDET_DESCUENTO.value)/100;
    QDetallePrecioItbis.value := Venta;
    QDetalleCalcItbis.value   := 0;
    QDetalleValor.value       := Venta-(QDetalleCalcDesc.value*QDetalleDET_CANTIDAD.value);
  end;
end;

procedure TRConsFacturas.QFacturasCalcFields(DataSet: TDataSet);
begin
  if QFacturasEnviado_DGII.AsBoolean then
  begin
       QfacturasNCF.Value:= QFacturaseNCF.Value;
  end
  else begin

  if not QFacturasNCF_Fijo.IsNull then
    QfacturasNCF.Value := QFacturasNCF_Fijo.Value + formatfloat('00000000',QFacturasNCF_Secuencia.Value)
  else
    QfacturasNCF.Value := '';
  end;

  if dm.QParametrospar_itbisincluido.AsString = 'True' then
    QFacturasGrabado.Value := QFacturasmonto_grabado_incluido.Value
  else
    QFacturasGrabado.Value := QFacturasmonto_grabado_noincluido.Value;

  if dm.QParametrospar_itbisincluido.AsString = 'True' then
    QFacturasPrecio.Value := QFacturasmonto_grabado_incluido.Value + QFacturasmonto_exento.Value
  else
    QFacturasPrecio.Value := QFacturasmonto_grabado_noincluido.Value + QFacturasmonto_exento.Value
end;

end.
