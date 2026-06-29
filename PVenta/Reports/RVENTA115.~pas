unit RVENTA115;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB, Math;

type
  TRFacturaGrabadoExento = class(TQuickRep)
    QRBand1: TQRBand;
    lbFactura: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;                   
    QRSysData1: TQRSysData;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRLabel28: TQRLabel;
    lbCliente: TQRDBText;
    QRBand2: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRBand3: TQRBand;
    lbProd: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
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
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText5: TQRDBText;
    QFacturaFAC_MENSAJE1: TIBStringField;
    QFacturaFAC_MENSAJE2: TIBStringField;
    QFacturaFAC_MENSAJE3: TIBStringField;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel47: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel48: TQRLabel;
    QFacturaFAC_HORA: TIBStringField;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBRichText1: TQRDBRichText;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    lbAbono: TQRLabel;
    lbAbono3: TQRDBText;
    lbAbono2: TQRLabel;
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
    ChildBand1: TQRChildBand;
    QRLabel7: TQRLabel;
    lbVendedor: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel15: TQRLabel;
    lbCondicion: TQRLabel;
    QRLabel49: TQRLabel;
    QRDBText27: TQRDBText;
    QFacturaFAC_VENCE: TDateTimeField;
    QDetalleDET_ESCALA: TIBStringField;
    QDetalleDET_MANEJAESCALA: TIBStringField;
    QDetalleDET_MEDIDA: TIBStringField;
    lbmoneda: TQRLabel;
    QFacturaMON_CODIGO: TIntegerField;
    ChildBand2: TQRChildBand;
    QDetalleDET_NOTA: TMemoField;
    QFacturaFAC_CONITBIS: TStringField;
    QFacturaSUC_CODIGO: TIntegerField;
    QFacturaNumero: TStringField;
    QDetallepro_cantempaque: TBCDField;
    QDetalleEmpaque: TFloatField;
    QSerie: TADOQuery;
    dsDetalle: TDataSource;
    QSerieser_numero: TStringField;
    lbSerie: TQRLabel;
    QDetallesuc_codigo: TIntegerField;
    QRImage1: TQRImage;
    QRDBText13: TQRDBText;
    QFacturaNumeroCF: TStringField;
    QFacturaNCF_Fijo: TStringField;
    QFacturaNCF_Secuencia: TBCDField;
    QRLabel12: TQRLabel;
    QDetalledet_selectivo_ad: TBCDField;
    QDetalledet_selectivo_con: TBCDField;
    QDetalledet_cant_oferta: TBCDField;
    QRLabel50: TQRLabel;
    QRLabel52: TQRLabel;
    lbtipo: TQRLabel;
    QRShape2: TQRShape;
    lbReimpresion: TQRLabel;
    QRDBText29: TQRDBText;
    QFacturafac_rnc: TStringField;
    QRLabel43: TQRLabel;
    QRDBText8: TQRDBText;
    QRRichText1: TQRRichText;
    lbcajero: TQRLabel;
    QRLabel53: TQRLabel;
    QRDBText24: TQRDBText;
    QDetalledet_cantempaque: TBCDField;
    QRDBText30: TQRDBText;
    QRLabel3: TQRLabel;
    lbProds: TQRLabel;
    QRLabel29: TQRLabel;
    QRDBText28: TQRDBText;
    QRLabel36: TQRLabel;
    QFacturaPlaca: TStringField;
    QFacturaChofer: TStringField;
    QFacturaModelo: TStringField;
    QFacturaMarca: TStringField;
    QFacturaCompania: TStringField;
    QDetalleUnidadMetros: TStringField;
    QFacturaGrabado: TFloatField;
    QFacturaExento: TFloatField;
    QRLabel38: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRShape3: TQRShape;
    lbgrabado: TQRLabel;
    lbexento: TQRLabel;
    QFacturaOrdenID: TStringField;
    qrMemoMsg: TQRMemo;
    QFacturaFAC_NOTA: TMemoField;
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure ChildBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QFacturaCalcFields(DataSet: TDataSet);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
    ActBalance, ImprimeEncaqbezado : String;
    Linea : Integer;
    grabado : double;
    procedure CorregirError;
  end;

var
  RFacturaGrabadoExento: TRFacturaGrabadoExento;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRFacturaGrabadoExento.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if QDetalleDET_CONITBIS.value = 'N' then
     lbItbis.caption := 'E'
  else
     lbItbis.caption := ' ';
end;

procedure TRFacturaGrabadoExento.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 if not QFacturaFAC_MENSAJE1.IsNull then
    qrMemoMsg.Lines.Add(QFacturaFAC_MENSAJE1.Value);
  grabado := 0;
  if (dm.QParametrospar_fac_preimpresa.Value = 'True') and
  (dm.QParametrospar_formato_preimpreso.Value = 'QRAgregados') then
  begin
    QRLabel26.Caption := 'PLACA';
    QRLabel27.Caption := 'CHOFER';
    QRDBText21.DataField := 'Placa';
    QRDBText22.DataField := 'Chofer';
    QRDBText30.DataField := 'UnidadMetros';
  end;

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select sum(isnull(det_cantidad,0)) as cant from det_factura');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and suc_codigo = :suc');
  dm.Query1.sql.add('and fac_forma = :for');
  dm.Query1.sql.add('and tfa_codigo = :tfa');
  dm.Query1.sql.add('and fac_numero = :num');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('suc').Value := QFacturaSUC_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('for').Value := QFacturaFAC_FORMA.Value;
  dm.Query1.Parameters.ParamByName('tfa').Value := QFacturaTFA_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('num').Value := QFacturaFAC_NUMERO.Value;
  dm.Query1.Open;
  lbProds.Caption := floattostr(dm.Query1.FieldByName('cant').AsFloat);

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select caj_nombre from cajeros');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and caj_codigo = :caj');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('caj').Value := QFacturaCAJ_CODIGO.Value;
  dm.Query1.Open;
  if dm.Query1.RecordCount > 0 then
    lbcajero.Caption := dm.Query1.FieldByName('caj_nombre').AsString
  else
    lbcajero.Caption := '';

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select tfa_nombre, tfa_actbalance from tiposfactura');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and tfa_codigo = :tipo');
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.parambyname('tipo').Value := QFacturaTFA_CODIGO.value;
  dm.Query1.open;
  ActBalance := dm.Query1.fieldbyname('tfa_actbalance').AsString;
  lbFactura.caption := dm.Query1.fieldbyname('tfa_nombre').asstring;
  if ActBalance = 'True' then CorregirError;


  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select tfa_imprimie_encabezado from tiposfactura');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and tfa_codigo = :tfa');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('tfa').Value := QFacturaTFA_CODIGO.Value;
  dm.Query1.Open;

  ImprimeEncaqbezado := dm.Query1.fieldbyname('tfa_imprimie_encabezado').AsString;

  {if dm.QParametrospar_fac_oferta.Value <> 'True' then
  begin
    QRLabel3.Enabled   := False;
    QRDBText28.Enabled := False;

    QRDBText10.Width := QRDBText10.Width + 33;
    QRDBText11.Left  := QRDBText11.Left + 33;
    QRDBText8.Left   := QRDBText8.Left + 33;
    QRLabel10.Left   := QRLabel10.Left + 33;
    QRLabel43.Left   := QRLabel43.Left + 33;
  end;}

  if dm.QParametrosPAR_FACMEDIDA.Value <> 'True' then
  begin
    QRDBText8.Enabled  := false;
    QRLabel43.Enabled  := false;
    QRDBText30.Enabled  := false;

    QRDBText11.Left    := QRDBText11.Left + 39;
    QRLabel10.Left     := QRLabel10.Left + 25;
    QRDBText10.Width   := QRDBText10.Width + 39;
  end
  else
  begin
    if dm.QParametrospar_visualizar_cant_empaque.Value <> 'True' then
    begin
      QRLabel43.Enabled  := false;
      QRDBText8.Enabled  := false;
      QRDBText30.Left    := QRDBText30.Left + 39;
      QRDBText11.Left    := QRDBText11.Left + 39;
      QRLabel10.Left     := QRLabel10.Left  + 39;
      QRDBText10.Width   := QRDBText10.Width + 39;
    end;
    if dm.QParametrospar_imprimir_calculo_empaque.Value = 'True' then
    begin
      QRLabel43.Enabled  := true;
      QRDBText8.Enabled  := true;
      QRDBText8.DataField := 'Empaque';
    end;
  end;

  if Trim(dm.QParametrospar_imprime_logo.Value) = 'True' then
    QRImage1.Picture.LoadFromFile(DM.QEmpresasEMP_LOGO.Value);

  QRDBText1.Enabled := (Trim(dm.QParametrospar_imprime_logo.Value) = 'False') and (ImprimeEncaqbezado = 'True');
  QRDBText2.Enabled := (Trim(dm.QParametrospar_imprime_logo.Value) = 'False') and (ImprimeEncaqbezado = 'True');
  QRDBText3.Enabled := (Trim(dm.QParametrospar_imprime_logo.Value) = 'False') and (ImprimeEncaqbezado = 'True');
  QRDBText4.Enabled := (Trim(dm.QParametrospar_imprime_logo.Value) = 'False') and (ImprimeEncaqbezado = 'True');
  QRDBText5.Enabled := (Trim(dm.QParametrospar_imprime_logo.Value) = 'False') and (ImprimeEncaqbezado = 'True');
  QRLabel1.Enabled  := (Trim(dm.QParametrospar_imprime_logo.Value) = 'False') and (ImprimeEncaqbezado = 'True');
  QRLabel2.Enabled  := (Trim(dm.QParametrospar_imprime_logo.Value) = 'False') and (ImprimeEncaqbezado = 'True');
  QRLabel44.Enabled := (Trim(dm.QParametrospar_imprime_logo.Value) = 'False') and (ImprimeEncaqbezado = 'True');
  QRLabel45.Enabled := (Trim(dm.QParametrospar_imprime_logo.Value) = 'False') and (ImprimeEncaqbezado = 'True');

  if not QSerie.active then QSerie.Open;

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
  lbmoneda.Caption := dm.Query1.FieldByName('mon_sigla').AsString;

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
    lbBal.Caption := format('%n',[dm.Query1.FieldByName('cli_balance').AsFloat]);
  end
  else
    lbBal.Caption := '0.00';}

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select t.tcl_nombre from clientes c, TIPOCLIENTES t');
  dm.Query1.sql.add('where t.emp_codigo = c.emp_codigo');
  dm.Query1.sql.add('and t.tcl_codigo = c.tcl_codigo');
  dm.Query1.sql.add('and c.emp_codigo = :emp');
  dm.Query1.sql.add('and c.cli_codigo = :cli');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('cli').Value := QFacturaCLI_CODIGO.Value;
  dm.Query1.Open;
  if dm.Query1.RecordCount > 0 then
    lbtipo.Caption := dm.Query1.FieldByName('tcl_nombre').AsString
  else
    lbtipo.Caption := ' ';

  lbAbono.Enabled  := False;
  lbAbono2.Enabled := False;
  lbAbono3.Enabled := False;
  if RFacturaGrabadoExento.QRPrinter.PageNumber = RFacturaGrabadoExento.QRPrinter.PageCount then
  begin
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

end;

procedure TRFacturaGrabadoExento.QDetalleCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis : Double;
begin
  QDetalleUnidadMetros.Value := 'Mts';
  
  if QDetallepro_cantempaque.Value > 0 then
    QDetalleEmpaque.Value := QDetalledet_CANTIDAD.Value / QDetallepro_cantempaque.Value
  else
    QDetalleEmpaque.Value := 0;

  if (QDetalleDET_CONITBIS.value = 'S') and (QFacturaFAC_CONITBIS.Value = 'True') then
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
      QDetalleCalcItbis.value := RoundTo(QDetalleCalcItbis.value * QDetalleDET_CANTIDAD.value, -2);
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

      QDetalleValor.value     := (QDetallePrecioItbis.value - QDetalleCalcDesc.value + QDetalleCalcItbis.value) * QDetalleDET_CANTIDAD.value;
      QDetalleCalcItbis.value := RoundTo(QDetalleCalcItbis.value * QDetalleDET_CANTIDAD.value, -2);
    end;
  end;
end;

procedure TRFacturaGrabadoExento.ChildBand2BeforePrint(Sender: TQRCustomBand;
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
    ChildBand2.Height := 20;
    lbSerie.Width := 729;
  end
  else
  begin
    //ChildBand2.Height := 69;
    //ChildBand2.Height := QRRichText1.Lines.Count;
    lbSerie.Width := 105;
  end;
end;

procedure TRFacturaGrabadoExento.QFacturaCalcFields(DataSet: TDataSet);
begin
  //QFacturaGrabado.Value := (QFacturaFAC_ITBIS.Value*100)/16;
  QFacturaExento.Value  := QFacturaFAC_TOTAL.Value - (QFacturaGrabado.Value + QFacturaFAC_ITBIS.Value);

  QFacturaNumero.Value := inttostr(QFacturaFAC_NUMERO.Value);
  if not QFacturaNCF_Fijo.isnull then
    QFacturaNumeroCF.Value := QFacturaNCF_Fijo.Value+formatfloat('00000000',QFacturaNCF_Secuencia.Value)
  else
    QFacturaNumeroCF.Value := ' ';
end;

procedure TRFacturaGrabadoExento.CorregirError;
var
  mov : string;
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('insert into movimientos (emp_codigo,suc_codigo,mov_tipo,mov_numero,mov_secuencia,fac_forma,');
  dm.Query1.SQL.Add('tfa_codigo,mov_fecha,mov_monto,mov_abono,mov_status,mov_fechavence,mov_cuota,');
  dm.Query1.SQL.Add('cli_codigo,mon_codigo,mov_tasa)');
  dm.Query1.SQL.Add('select f.emp_codigo, f.suc_codigo, tm.tmo_siglas, f.fac_numero,(select max(mov_secuencia)+1');
  dm.Query1.SQL.Add('from movimientos where emp_codigo = :emp1), f.fac_forma,');
  dm.Query1.SQL.Add('f.tfa_codigo, f.fac_fecha, f.fac_total, f.fac_abono, f.fac_status, f.fac_vence, '+QuotedStr('False')+',');
  dm.Query1.SQL.Add('f.cli_codigo,1,1');
  dm.Query1.SQL.Add('from facturas f, tiposmov tm, tiposfactura tf');
  dm.Query1.SQL.Add('where f.emp_codigo = tf.emp_codigo');
  dm.Query1.SQL.Add('and f.tfa_codigo = tf.tfa_codigo');
  dm.Query1.SQL.Add('and tm.emp_codigo = tf.emp_codigo');
  dm.Query1.SQL.Add('and tm.tmo_codigo = tf.tmo_codigo');
  dm.Query1.SQL.Add('and f.fac_numero not in (select mov_numero');
  dm.Query1.SQL.Add('from movimientos');
  dm.Query1.SQL.Add('where emp_codigo = f.emp_codigo');
  dm.Query1.SQL.Add('and suc_codigo = f.suc_codigo');
  dm.Query1.SQL.Add('and tfa_codigo = f.tfa_codigo');
  dm.Query1.SQL.Add('and fac_forma = f.fac_forma');
  dm.Query1.SQL.Add('and mov_numero = f.fac_numero)');
  dm.Query1.SQL.Add('and tf.tfa_actbalance = '+QuotedStr('True'));
  dm.Query1.SQL.Add('and f.emp_codigo = :emp2');
  dm.Query1.SQL.Add('and f.cli_codigo = :cli');
  dm.Query1.SQL.Add('and suc_codigo = :suc');
  dm.Query1.Parameters.ParamByName('emp1').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('emp2').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('cli').Value  := QFacturaCLI_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('suc').Value  := QFacturaSUC_CODIGO.Value;
  dm.Query1.ExecSQL;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('update clientes');
  dm.Query1.SQL.Add('set	cli_balance = (select isnull(sum(mov_monto-mov_abono),0)');
  dm.Query1.SQL.Add('from movimientos');
  dm.Query1.SQL.Add('where emp_codigo = clientes.emp_codigo');
  dm.Query1.SQL.Add('and cli_codigo = clientes.cli_codigo');
  dm.Query1.SQL.Add('and mov_status = '+QuotedStr('PEN')+')');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and cli_codigo = :cli');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('cli').Value := QFacturaCLI_CODIGO.Value;
  dm.Query1.ExecSQL;
end;

procedure TRFacturaGrabadoExento.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Linea := 1;
end;

procedure TRFacturaGrabadoExento.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  if QDetalleDET_CONITBIS.Value = 'S' then
    grabado := grabado + (QDetallePrecioItbis.Value * QDetalleDET_CANTIDAD.Value);
  Linea := Linea + 1;
  //if Linea = 50 then RFactura.NewPage;
end;

procedure TRFacturaGrabadoExento.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  exento : double;
begin
  lbgrabado.Caption := format('%n',[grabado]);
  exento := QFacturaFAC_TOTAL.Value - (grabado + QFacturaFAC_ITBIS.Value);
  if exento < 0 then exento := 0;
  lbexento.Caption := format('%n',[exento]);
  {QRDBText16.Enabled := Rfactura.QRPrinter.PageNumber = RFactura.QRPrinter.PageCount;
  QRDBText17.Enabled := Rfactura.QRPrinter.PageNumber = RFactura.QRPrinter.PageCount;
  QRDBText18.Enabled := Rfactura.QRPrinter.PageNumber = RFactura.QRPrinter.PageCount;
  QRLabel21.Enabled := Rfactura.QRPrinter.PageNumber = RFactura.QRPrinter.PageCount;
  QRLabel20.Enabled := Rfactura.QRPrinter.PageNumber = RFactura.QRPrinter.PageCount;
  QRLabel19.Enabled := Rfactura.QRPrinter.PageNumber = RFactura.QRPrinter.PageCount;
  QRLabel40.Enabled := Rfactura.QRPrinter.PageNumber = RFactura.QRPrinter.PageCount;
  QRLabel41.Enabled := Rfactura.QRPrinter.PageNumber = RFactura.QRPrinter.PageCount;
  QRLabel42.Enabled := Rfactura.QRPrinter.PageNumber = RFactura.QRPrinter.PageCount;
  lbAbono2.Enabled := Rfactura.QRPrinter.PageNumber = RFactura.QRPrinter.PageCount;}
end;

end.
