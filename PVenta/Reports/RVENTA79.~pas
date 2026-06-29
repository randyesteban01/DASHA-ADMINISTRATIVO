unit RVENTA79;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRFactura2Columnas = class(TQuickRep)
    QRBand1: TQRBand;
    lbFactura: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel24: TQRLabel;
    QRLabel27: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText22: TQRDBText;
    QRLabel29: TQRLabel;
    QRBand2: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel14: TQRLabel;
    QRBand3: TQRBand;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
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
    QRLabel31: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText23: TQRDBText;
    QFacturaFAC_HORA: TIBStringField;
    QRShape10: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel23: TQRLabel;
    lbForma: TQRLabel;
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
    QRLabel38: TQRLabel;
    QFacturaFAC_VENCE: TDateTimeField;
    QDetalleDET_ESCALA: TIBStringField;
    QDetalleDET_MANEJAESCALA: TIBStringField;
    QDetalleDET_MEDIDA: TIBStringField;
    lbBal: TQRLabel;
    QFacturaMON_CODIGO: TIntegerField;
    QDetalleDET_NOTA: TMemoField;
    QFacturaFAC_CONITBIS: TStringField;
    QFacturaSUC_CODIGO: TIntegerField;
    QFacturaNumero: TStringField;
    QDetallepro_cantempaque: TBCDField;
    QDetalleEmpaque: TFloatField;
    QSerie: TADOQuery;
    dsDetalle: TDataSource;
    QSerieser_numero: TStringField;
    QDetallesuc_codigo: TIntegerField;
    QRImage1: TQRImage;
    QRImage2: TQRImage;
    lbFactura2: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText21: TQRDBText;
    QRLabel30: TQRLabel;
    QRDBText28: TQRDBText;
    QRLabel33: TQRLabel;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRLabel43: TQRLabel;
    QRDBText32: TQRDBText;
    QRLabel50: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRDBText33: TQRDBText;
    lbBal2: TQRLabel;
    QRLabel64: TQRLabel;
    lbVendedor2: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    lbCondicion2: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    lbItbis2: TQRLabel;
    QRDBText37: TQRDBText;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    lbForma2: TQRLabel;
    QRShape3: TQRShape;
    QRLabel87: TQRLabel;
    lbReimpresion: TQRLabel;
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
  private

  public
    ActBalance : String;
  end;

var
  RFactura2Columnas: TRFactura2Columnas;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRFactura2Columnas.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if QDetalleDET_CONITBIS.value = 'N' then
     lbItbis.caption := 'E'
  else
     lbItbis.caption := ' ';

  lbItbis2.Caption := lbItbis.Caption;
end;

procedure TRFactura2Columnas.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
    if not QFacturaFAC_MENSAJE1.IsNull then
    qrMemoMsg.Lines.Add(QFacturaFAC_MENSAJE1.Value);

  if Trim(dm.QParametrospar_imprime_logo.Value) = 'True' then
    QRImage1.Picture.LoadFromFile(DM.QEmpresasEMP_LOGO.Value);

  QRDBText1.Enabled := Trim(dm.QParametrospar_imprime_logo.Value) = 'False';
  QRDBText2.Enabled := Trim(dm.QParametrospar_imprime_logo.Value) = 'False';
  QRDBText3.Enabled := Trim(dm.QParametrospar_imprime_logo.Value) = 'False';
  QRDBText4.Enabled := Trim(dm.QParametrospar_imprime_logo.Value) = 'False';
  QRDBText5.Enabled := Trim(dm.QParametrospar_imprime_logo.Value) = 'False';
  QRLabel1.Enabled := Trim(dm.QParametrospar_imprime_logo.Value) = 'False';
  QRLabel2.Enabled := Trim(dm.QParametrospar_imprime_logo.Value) = 'False';
  QRLabel44.Enabled := Trim(dm.QParametrospar_imprime_logo.Value) = 'False';
  QRLabel45.Enabled := Trim(dm.QParametrospar_imprime_logo.Value) = 'False';

  if not QSerie.active then QSerie.Open;

  QRBand4.AlignToBottom := dm.QParametrosPAR_FACTOTALIZAPIE.Value = 'True';
  {if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
    lbCliente.DataField := 'CLI_CODIGO'
  else
    lbCliente.DataField := 'CLI_REFERENCIA';

  lbCliente2.DataField := lbCliente.DataField;}

  {dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select mon_sigla from moneda');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and mon_codigo = :mon');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('mon').Value := QFacturaMON_CODIGO.Value;
  dm.Query1.Open;
  lbmoneda.Caption := dm.Query1.FieldByName('mon_sigla').AsString;
  lbmoneda2.Caption := dm.Query1.FieldByName('mon_sigla').AsString;}

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

  lbBal2.Caption := lbBal.Caption;  

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select tfa_nombre, tfa_actbalance from tiposfactura');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and tfa_codigo = :tipo');
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.parambyname('tipo').Value := QFacturaTFA_CODIGO.value;
  dm.Query1.open;
  lbFactura.caption := dm.Query1.fieldbyname('tfa_nombre').asstring;
  lbFactura2.caption := dm.Query1.fieldbyname('tfa_nombre').asstring;
  ActBalance        := dm.Query1.fieldbyname('tfa_actbalance').AsString;

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select cpa_nombre from condiciones');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and cpa_codigo = :codigo');
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.parambyname('codigo').Value := QFacturaCPA_CODIGO.value;
  dm.Query1.open;
  lbCondicion.caption := dm.Query1.fieldbyname('cpa_nombre').asstring;
  lbCondicion2.caption := dm.Query1.fieldbyname('cpa_nombre').asstring;

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select ven_nombre from vendedores');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and ven_codigo = :vend');
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.parambyname('vend').Value := QFacturaVEN_CODIGO.value;
  dm.Query1.open;
  lbVendedor.caption := dm.Query1.fieldbyname('ven_nombre').asstring;
  lbVendedor2.caption := dm.Query1.fieldbyname('ven_nombre').asstring;

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
  lbForma2.Caption := lbForma.Caption;

//  lbForma.Caption := copy(lbForma.Caption, 1, length(lbForma.Caption)-2);
end;

procedure TRFactura2Columnas.QDetalleCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis : Double;
begin
  if QDetallepro_cantempaque.Value > 0 then
    QDetalleEmpaque.Value := QDetalledet_CANTIDAD.Value / QDetallepro_cantempaque.Value
  else
    QDetalleEmpaque.Value := 0;

  if (QDetalleDET_CONITBIS.value = 'S') and (QFacturaFAC_CONITBIS.Value = 'True') then
  begin
    NumItbis := strtofloat(format('%10.2f',[(QDetalleDET_ITBIS.asfloat/100)+1]));
    if dm.QParametrospar_itbisincluido.Value = 'True' then
    begin
      Venta    := strtofloat(format('%10.2f',[(QDetalleDET_PRECIO.value)/NumItbis]));
      QDetalleCalcDesc.value    := strtofloat(format('%10.2f',[(Venta *
                                   strtofloat(format('%10.2f',[QDetalleDET_DESCUENTO.value])))/100]));
      QDetallePrecioItbis.value := strtofloat(format('%10.2f',[Venta]));
      QDetalleCalcItbis.value   := strtofloat(format('%10.2f',[((Venta-QDetalleCalcDesc.value)*
                                   strtofloat(format('%10.2f',[QDetalleDET_ITBIS.Value])))/100]));
      QDetalleValor.value       := ((strtofloat(format('%10.2f',[Venta]))-
                                   strtofloat(format('%10.2f',[QDetalleCalcDesc.value])))+
                                   strtofloat(format('%10.2f',[QDetalleCalcItbis.value])))*
                                   strtofloat(format('%10.2f',[QDetalleDET_CANTIDAD.value]));
    end
    else
    begin
      Venta    := strtofloat(format('%10.2f',[(QDetalleDET_PRECIO.value)]));
      QDetalleCalcDesc.value    := strtofloat(format('%10.2f',[(Venta *
                                   strtofloat(format('%10.2f',[QDetalleDET_DESCUENTO.value])))/100]));
      QDetallePrecioItbis.value := strtofloat(format('%10.2f',[QDetalleDET_PRECIO.value]));
      QDetalleCalcItbis.value   := strtofloat(format('%10.2f',[((QDetalleDET_PRECIO.value-QDetalleCalcDesc.value)*
                                   strtofloat(format('%10.2f',[QDetalleDET_ITBIS.Value])))/100]));
      QDetalleValor.value       := ((strtofloat(format('%10.2f',[QDetalleDET_PRECIO.value]))-
                                   strtofloat(format('%10.2f',[QDetalleCalcDesc.value])))+
                                   strtofloat(format('%10.2f',[QDetalleCalcItbis.value])))*
                                   strtofloat(format('%10.2f',[QDetalleDET_CANTIDAD.value]));
    end;
  end
  else
  begin
    Venta := strtofloat(format('%10.2f',[QDetalleDET_PRECIO.value]));
    QDetalleCalcDesc.value    := strtofloat(format('%10.2f',[(Venta * QDetalleDET_DESCUENTO.value)/100]));
    QDetallePrecioItbis.value := strtofloat(format('%10.2f',[Venta]));
    QDetalleCalcItbis.value   := 0;
    QDetalleValor.value       := strtofloat(format('%10.2f',[(Venta-QDetalleCalcDesc.value)*QDetalleDET_CANTIDAD.value]));
  end;
end;

procedure TRFactura2Columnas.ChildBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  t : string;
begin
  PrintBand := (trim(QDetalleDET_NOTA.Value) <> '') or (QSerie.RecordCount > 0);
  {if trim(QDetalleDET_NOTA.Value) = '' then
  begin
    ChildBand2.Height := 20;
    lbSerie.Width := 729;
  end
  else
  begin
    ChildBand2.Height := 69;
    lbSerie.Width := 289;
  end;}
end;

procedure TRFactura2Columnas.QFacturaCalcFields(DataSet: TDataSet);
begin
  QFacturaNumero.Value := inttostr(QFacturaFAC_NUMERO.Value);
end;

end.
