unit RVENTA65;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, Db, IBCustomDataSet,
  IBQuery, ADODB, Math;

type
  TRCotizacionElegante = class(TQuickRep)
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRBand4: TQRBand;
    QRLabel18: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRExpr1: TQRExpr;
    QRLabel22: TQRLabel;
    QRShape9: TQRShape;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    lbCliente: TQRDBText;
    QRDBText24: TQRDBText;
    QCotizacion: TADOQuery;
    QCotizacionCLI_CODIGO: TIntegerField;
    QCotizacionCLI_REFERENCIA: TIBStringField;
    QCotizacionCOT_DIRECCION: TIBStringField;
    QCotizacionCOT_FAX: TIBStringField;
    QCotizacionCOT_FECHA: TDateTimeField;
    QCotizacionCOT_ITBIS: TFloatField;
    QCotizacionCOT_LOCALIDAD: TIBStringField;
    QCotizacionCOT_NOMBRE: TIBStringField;
    QCotizacionCOT_NUMERO: TIntegerField;
    QCotizacionCOT_STATUS: TIBStringField;
    QCotizacionCOT_TELEFONO: TIBStringField;
    QCotizacionCOT_TOTAL: TFloatField;
    QCotizacionEMP_CODIGO: TIntegerField;
    QCotizacionUSU_CODIGO: TIntegerField;
    QCotizacionVEN_CODIGO: TIntegerField;
    QCotizacionSubTotal: TFloatField;
    dsCotizacion: TDataSource;
    QDetalle: TADOQuery;
    QDetalleCOT_NUMERO: TIntegerField;
    QDetalleDET_CANTIDAD: TFloatField;
    QDetalleDET_CONITBIS: TIBStringField;
    QDetalleDET_ITBIS: TFloatField;
    QDetalleDET_PRECIO: TFloatField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    QDetallePRO_BARRA: TIBStringField;
    QDetallePRO_CODIGO: TIntegerField;
    QDetallePRO_NOMBRE: TIBStringField;
    QDetallePRO_RFABRIC: TIBStringField;
    QDetallePRO_RORIGINAL: TIBStringField;
    QDetalleCalcItbis: TFloatField;
    QDetalleCalcDesc: TFloatField;
    QDetallePrecioItbis: TFloatField;
    QDetalleValor: TFloatField;
    QRBand3: TQRBand;
    lbProd: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRShape2: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel1: TQRLabel;
    QRSysData2: TQRSysData;
    QRShape3: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel27: TQRLabel;
    lbVendedor: TQRLabel;
    lbFactura: TQRLabel;
    ChildBand1: TQRChildBand;
    QRDBRichText2: TQRDBRichText;
    QDetalleDET_NOTA: TBlobField;
    lbReimpresion: TQRLabel;
    QDetalledet_descuento: TBCDField;
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RCotizacionElegante: TRCotizacionElegante;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRCotizacionElegante.QDetalleCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis, vPrec, vDesc, vCant : Double;
  a : integer;
begin
  if QDetalleDET_CONITBIS.value = 'S' then
  begin
    NumItbis := RoundTo((QDetalleDET_ITBIS.asfloat/100)+1, -2);
    if dm.QParametrospar_itbisincluido.Value = 'True' then
    begin
      Venta    := QDetalleDET_PRECIO.value/NumItbis;
      QDetallePrecioItbis.value := RoundTo(Venta, -2);
      QDetalleCalcDesc.value    := RoundTo((Venta * QDetalleDET_DESCUENTO.value)/100, -2);
      if QDetalleDET_CONITBIS.value = 'S' then
        QDetalleCalcItbis.value   := RoundTo(((Venta - QDetalleCalcDesc.value) * QDetalleDET_ITBIS.value) / 100, -2)
      else
        QDetalleCalcItbis.value   := 0;

      QDetalleValor.value       := (QDetallePrecioItbis.value - QDetalleCalcDesc.value) * QDetalleDET_CANTIDAD.value;
    end
    else
    begin
      Venta := QDetalleDET_PRECIO.value;
      QDetallePrecioItbis.value := Venta;
      QDetalleCalcDesc.value    := RoundTo((Venta * QDetalleDET_DESCUENTO.value)/100, -2);
      if QDetalleDET_CONITBIS.value = 'S' then
        QDetalleCalcItbis.value := RoundTo(((Venta - QDetalleCalcDesc.value)* QDetalleDET_ITBIS.value) / 100, -2)
      else
        QDetalleCalcItbis.value := 0;

      QDetalleValor.value       := (QDetallePrecioItbis.value - QDetalleCalcDesc.value) * QDetalleDET_CANTIDAD.value;
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

procedure TRCotizacionElegante.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
     lbProd.DataField := 'PRO_CODIGO'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
     lbProd.DataField := 'PRO_RFABRIC'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
     lbProd.DataField := 'PRO_RORIGINAL';

  if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'R' then
    lbCliente.DataField := 'CLI_REFERENCIA';

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select ven_nombre from vendedores');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and ven_codigo = :ven');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('ven').Value := QCotizacionVEN_CODIGO.Value;
  dm.Query1.Open;
  lbVendedor.Caption := dm.Query1.FieldByName('ven_nombre').AsString;
end;

procedure TRCotizacionElegante.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if (QDetalleDET_PRECIO.Value = 0) or (QDetalleDET_PRECIO.IsNull) then
  begin
    QRDBText12.Enabled := False;
    QRDBText14.Enabled := False;
    QRDBText15.Enabled := False;
  end
  else
  begin
    QRDBText12.Enabled := True;
    QRDBText14.Enabled := True;
    QRDBText15.Enabled := True;
  end;
end;

procedure TRCotizacionElegante.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  PrintBand := trim(QDetalleDET_NOTA.Value) <> '';
end;

end.
