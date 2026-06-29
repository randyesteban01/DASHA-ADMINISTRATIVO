unit RVENTA64;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRFacturaElegante = class(TQuickRep)
    QRBand2: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRBand3: TQRBand;
    lbProd: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    lbItbis: TQRLabel;
    QRDBText15: TQRDBText;
    QRBand4: TQRBand;
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
    QFacturaFAC_NUMERO: TIntegerField;
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
    QFacturaFAC_MENSAJE1: TIBStringField;
    QFacturaFAC_MENSAJE2: TIBStringField;
    QFacturaFAC_MENSAJE3: TIBStringField;
    QFacturaFAC_HORA: TIBStringField;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRExpr1: TQRExpr;
    QRDBRichText1: TQRDBRichText;
    lbAbono: TQRLabel;
    lbAbono3: TQRDBText;
    QRLabel23: TQRLabel;
    QRLabel22: TQRLabel;
    QRShape1: TQRShape;
    QRLabel46: TQRLabel;
    QForma: TADOQuery;
    QFormaFPA_CODIGO: TIntegerField;
    QFormaFPA_NOMBRE: TIBStringField;
    QFormasPago: TADOQuery;
    QFormasPagoEMP_CODIGO: TIntegerField;
    QFormasPagoFOR_DESCRIPCION: TIBStringField;
    QFormasPagoFOR_MONTO: TFloatField;
    QFormasPagoFPA_CODIGO: TIntegerField;
    QFacturaFAC_VENCE: TDateTimeField;
    QDetalleDET_ESCALA: TIBStringField;
    QDetalleDET_MANEJAESCALA: TIBStringField;
    QDetalleDET_MEDIDA: TIBStringField;
    QRDBText8: TQRDBText;
    QRBand1: TQRBand;
    QRShape2: TQRShape;
    lbFactura: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRSysData1: TQRSysData;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    lbCliente: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText23: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    lbCondicion: TQRLabel;
    lbVendedor: TQRLabel;
    QRShape3: TQRShape;
    lbForma: TQRLabel;
    QRLabel4: TQRLabel;
    lbbalance: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel29: TQRLabel;
    ChildBand1: TQRChildBand;
    QRDBRichText2: TQRDBRichText;
    QDetalleDET_NOTA: TBlobField;
    QRLabel30: TQRLabel;
    QFacturaSUC_CODIGO: TIntegerField;
    QFacturaNumero: TStringField;
    QFacturaFAC_CONITBIS: TStringField;
    QRDBText4: TQRDBText;
    QRLabel31: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRLabel32: TQRLabel;
    QRDBText29: TQRDBText;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QDetallepro_cantempaque: TBCDField;
    QDetallesuc_codigo: TIntegerField;
    QDetalledet_selectivo_ad: TBCDField;
    QDetalledet_selectivo_con: TBCDField;
    lbReimpresion: TQRLabel;
    qrMemoMsg: TQRMemo;
    QFacturaFAC_NOTA: TMemoField;
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QFacturaCalcFields(DataSet: TDataSet);
  private

  public
    ActBalance : String;
  end;

var
  RFacturaElegante: TRFacturaElegante;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRFacturaElegante.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if dm.QParametrosPAR_FACMEDIDA.Value <> 'True' then
    QRDBText8.Enabled := false;
  if QDetalleDET_CONITBIS.value = 'N' then
     lbItbis.caption := 'E'
  else
     lbItbis.caption := ' ';
end;

procedure TRFacturaElegante.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
    if not QFacturaFAC_MENSAJE1.IsNull then
    qrMemoMsg.Lines.Add(QFacturaFAC_MENSAJE1.Value);
    
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


  lbbalance.Caption := '$0.00';
  if not QFacturaCLI_CODIGO.IsNull then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cli_balance from clientes');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and cli_codigo = :cli');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('cli').Value := QFacturaCLI_CODIGO.value;
    dm.Query1.open;
    lbbalance.Caption := format('%n',[dm.Query1.FieldByName('cli_balance').AsFloat]);
  end;

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
  if (ActBalance = 'True') and (QFacturaFAC_ABONO.Value > 0) then
  begin
    lbAbono.Enabled  := True;
    lbAbono3.Enabled := True;
  end
  else
  begin
    lbAbono.Enabled  := False;
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
  lbCondicion.caption := dm.Query1.fieldbyname('cpa_nombre').asstring;

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select ven_nombre from vendedores');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and ven_codigo = :vend');
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.parambyname('vend').Value := QFacturaVEN_CODIGO.value;
  dm.Query1.open;
  lbVendedor.caption := dm.Query1.fieldbyname('ven_nombre').asstring;

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
end;

procedure TRFacturaElegante.QDetalleCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis, vPrec, vDesc, vCant : Double;
begin
  if (QDetalleDET_CONITBIS.value = 'S') and (QFacturaFAC_CONITBIS.Value = 'True') then
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
                                   QDetalleDET_ITBIS.Value)/100;

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
    Venta := QDetalleDET_PRECIO.value*QDetalleDET_CANTIDAD.value;
    QDetalleCalcDesc.value    := (Venta * QDetalleDET_DESCUENTO.value)/100;
    QDetallePrecioItbis.value := Venta;
    QDetalleCalcItbis.value   := 0;
    QDetalleValor.value       := Venta-(QDetalleCalcDesc.value);
  end;
end;

procedure TRFacturaElegante.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  PrintBand := trim(QDetalleDET_NOTA.Value) <> '';
end;

procedure TRFacturaElegante.QFacturaCalcFields(DataSet: TDataSet);
begin
  QFacturaNumero.Value := inttostr(QFacturaSUC_CODIGO.Value)+'-'+inttostr(QFacturaFAC_NUMERO.Value);
end;

end.
