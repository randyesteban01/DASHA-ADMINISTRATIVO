unit RVENTA41;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, Dialogs, ADODB;

type
  TREstadoCtaCli = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRDBText10: TQRDBText;
    QDocs: TADOQuery;
    QClientes: TADOQuery;
    QClientesCLI_CODIGO: TIntegerField;
    QClientesCLI_REFERENCIA: TIBStringField;
    QClientesCLI_NOMBRE: TIBStringField;
    QClientesCLI_TELEFONO: TIBStringField;
    QClientesCLI_BALANCE: TFloatField;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    lbCodigo: TQRDBText;
    QRDBText7: TQRDBText;
    dsClientes: TDataSource;
    QDocsFAC_FORMA: TIBStringField;
    QDocsMOV_ABONO: TFloatField;
    QDocsMOV_FECHA: TDateTimeField;
    QDocsMOV_MONTO: TFloatField;
    QDocsMOV_NUMERO: TIntegerField;
    QDocsMOV_TIPO: TIBStringField;
    QDocsTFA_CODIGO: TIntegerField;
    QDocsSaldo: TFloatField;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QClientesEMP_CODIGO: TIntegerField;
    dsDocs: TDataSource;
    QRecibos: TADOQuery;
    QRecibosREC_FECHA: TDateTimeField;
    QRecibosREC_MONTO: TIBBCDField;
    QRecibosREC_NUMERO: TIntegerField;
    QRecibosREC_NUMEROMANUAL: TIBStringField;
    QRecibosDET_MONTO: TFloatField;
    QRecibosTipo: TStringField;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QNC: TADOQuery;
    QNCNCR_FECHA: TDateTimeField;
    QNCNCR_MONTO: TFloatField;
    QNCNCR_NUMERO: TIntegerField;
    QNCTipo: TStringField;
    QRDBText16: TQRDBText;
    QRDBText20: TQRDBText;
    QDocsEMP_CODIGO: TIntegerField;
    QRLabel3: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText22: TQRDBText;
    QClientesCLI_CEDULA: TIBStringField;
    qrlBalanceen: TQRLabel;
    lbBalance1: TQRLabel;
    lbBalance2: TQRLabel;
    lbBalance3: TQRLabel;
    QCredito: TADOQuery;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    lbBAlance4: TQRLabel;
    QCreditoNCR_FECHA: TDateTimeField;
    QCreditoNCR_MONTO: TFloatField;
    QCreditoNCR_NUMERO: TIntegerField;
    QCreditoTipo: TStringField;
    lbDescrip1: TQRLabel;
    lbDescrip2: TQRLabel;
    lbDescrip3: TQRLabel;
    lbDescrip4: TQRLabel;
    QRLabel12: TQRLabel;
    QDocsMOV_CUOTA: TIBStringField;
    QDocsMOV_SECUENCIA: TIntegerField;
    QDocsCuota: TIntegerField;
    QRDBText27: TQRDBText;
    QRLabel7: TQRLabel;
    QDepositos: TADOQuery;
    QDepositosDEP_FECHA: TDateTimeField;
    QDepositosMONTO: TFloatField;
    QDepositosDEP_NUMERO: TIntegerField;
    QDepositosTipo: TStringField;
    lbDescrip5: TQRLabel;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    lbBalance5: TQRLabel;
    QRLabel13: TQRLabel;
    QNCid: TAutoIncField;
    QNCncr_devolucion: TIntegerField;
    QAntig: TADOQuery;
    QAntigCLI_CODIGO: TIntegerField;
    QAntigCLI_REFERENCIA: TIBStringField;
    QAntigCLI_NOMBRE: TIBStringField;
    QAntigCLI_TELEFONO: TIBStringField;
    QAntigBALANCE: TFloatField;
    QAntigDIA1: TFloatField;
    QAntigDIA2: TFloatField;
    QAntigDIA3: TFloatField;
    QAntigDIA4: TFloatField;
    QRBand5: TQRBand;
    lbTotal: TQRLabel;
    QRLabel15: TQRLabel;
    lbDia1: TQRLabel;
    lbDia2: TQRLabel;
    lbDia3: TQRLabel;
    lbDia4: TQRLabel;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    Query1: TADOQuery;
    lbVendedor: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    lbTipo: TQRLabel;
    QClientescli_rnc: TStringField;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel9: TQRLabel;
    QDocsmov_interes: TBCDField;
    QDocsTotalInteres: TFloatField;
    QDocsmov_fechavence: TDateTimeField;
    QRDBText9: TQRDBText;
    QDocssuc_codigo: TIntegerField;
    QDocsmov_tasa: TBCDField;
    qrlNCR_MONTO: TQRLabel;
    qrlMontoDeposito: TQRLabel;
    qrlNCRMonto2: TQRLabel;
    PageFooterBand1: TQRBand;
    qrlUsuario: TQRLabel;
    QDocsFECHA: TDateTimeField;
    QClientesFECHA: TDateTimeField;
    QRsdDocs: TQRSubDetail;
    QRSDRecibos: TQRSubDetail;
    QRsdNC: TQRSubDetail;
    QRsdDepositos: TQRSubDetail;
    QRsdCredito: TQRSubDetail;
    QRLabel10: TQRLabel;
    QDocsDIASVENC: TIntegerField;
    QRDBText11: TQRDBText;
    qMora: TADOQuery;
    QDocsCLI_CODIGO: TIntegerField;
    qMoraTOTALMORA: TCurrencyField;
    QRLabel11: TQRLabel;
    lbMora: TQRLabel;
    qMoracli_codigo: TIntegerField;
    QRLabel17: TQRLabel;
    lbTotalCliente: TQRLabel;
    QRecibosven_codigo: TIntegerField;
    QRLSucursal: TQRLabel;
    QClientescli_email: TStringField;
    QRPDFFilter1: TQRPDFFilter;
    QRDBText1: TQRDBText;
    QRecibosdet_monto_OMON: TCurrencyField;
    QRecibosREC_TASA: TCurrencyField;
    QRLabel18: TQRLabel;
    QRDBText21: TQRDBText;
    QRDBText26: TQRDBText;
    QRLTasaNC: TQRLabel;
    QNCncr_tasa: TCurrencyField;
    QNCNCR_MONTO_OMON: TCurrencyField;
    QRLTotalMoraOMonto: TQRLabel;
    QRLTotalClienteOMonto: TQRLabel;
    QRLTotalOMon: TQRLabel;
    QRLTasaDep: TQRLabel;
    QRLTasaCred: TQRLabel;
    QRLabel19: TQRLabel;
    lbOBalance1: TQRLabel;
    lbOBalance2: TQRLabel;
    lbOBalance3: TQRLabel;
    lbOBalance4: TQRLabel;
    lbOBalance5: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText31: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QAntigBALANCEUS: TCurrencyField;
    QAntigDIAUS1: TCurrencyField;
    QAntigDIAUS2: TCurrencyField;
    QAntigDIAUS3: TCurrencyField;
    QAntigDIAUS4: TCurrencyField;
    QDocsMOV_MONTOUS: TCurrencyField;
    QDocsABONOUS: TCurrencyField;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QDepositosMONTOUS: TCurrencyField;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QCreditoMONTOUS: TCurrencyField;
    QRLabel20: TQRLabel;
    lbTotalUS: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QDocsMONTO: TCurrencyField;
    qMoraUS: TADOQuery;
    qMoraUScli_codigo: TIntegerField;
    qMoraUSTOTALMORA: TCurrencyField;
    QNCBalance: TCurrencyField;
    qActBalNC: TADOQuery;
    QDepositosDEP_TASA: TCurrencyField;
    procedure QDocsCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRecibosCalcFields(DataSet: TDataSet);
    procedure QNCCalcFields(DataSet: TDataSet);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRsdDocsBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSDRecibosBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRsdNCBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QCreditoCalcFields(DataSet: TDataSet);
    procedure QRsdCreditoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRsdDepositosBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QDepositosCalcFields(DataSet: TDataSet);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail6BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
    Balance, BalanceUS, Total, TotalUS: Double;
    Fecha : TDateTime;
    ImprimeSub : Boolean;
    tasa :Double;
    suc : Integer;
    sucA : Boolean;

  end;

var
  REstadoCtaCli: TREstadoCtaCli;

implementation

uses SIGMA01, DateUtils;


{$R *.DFM}

procedure TREstadoCtaCli.QDocsCalcFields(DataSet: TDataSet);
begin
  IF QDocsmov_tasa.Value = 1 THEN
  QDocsSaldo.Value := (QDocsMOV_MONTO.Value - QDocsMOV_ABONO.Value);



  if Date >= QDocsmov_fechavence.Value then
  begin
    QDocsTotalInteres.Value := ((QDocsSaldo.Value  * QDocsmov_interes.Value)/100);
    QDocsTotalInteres.Value := ((QDocsTotalInteres.Value / 30) * DaysBetween(Date, QDocsmov_fechavence.Value));
  end
  else
    QDocsTotalInteres.Value := 0;

  if QDocsMOV_CUOTA.Value = 'True' then
     QDocsCuota.Value := QDocsMOV_SECUENCIA.Value;

end;

procedure TREstadoCtaCli.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
  a : integer;
  cambiar : TQRLabel;
begin
  if dm.QParametrosIdioma.AsString = 'I' then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select objeto, ingles from Traduccion where modulo = :mod');
    dm.Query1.Parameters.ParamByName('mod').Value := 'REstadoCtaCli';
    dm.Query1.Open;
    dm.Query1.DisableControls;
    while not dm.Query1.Eof do
    begin
      cambiar := (FindComponent(dm.Query1.FieldByName('objeto').AsString) as TQRLabel);
      cambiar.Caption := dm.Query1.FieldByName('ingles').AsString;
      dm.Query1.Next;
    end;
    dm.Query1.EnableControls;
  end;

  Balance := 0;
  Total := 0;
  BalanceUS := 0;
  TotalUS := 0;



  if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
    lbCodigo.DataField := 'CLI_CODIGO'
  else
    lbCodigo.DataField := 'CLI_REFERENCIA';

   { if tasa > 1 then
      qrlBalanceen.Caption := 'Balance';}
 qrlUsuario.Caption :='Impreso por :'+ dm.getNombreUsuario(DM.Usuario) +
                       ' Fecha/Hora ' + FormatDateTime('dd/mm/yyyy hh:mm:ss AM/PM',now);
end;

procedure TREstadoCtaCli.QRecibosCalcFields(DataSet: TDataSet);
begin
  QRecibosTipo.Value := 'REC';
end;

procedure TREstadoCtaCli.QNCCalcFields(DataSet: TDataSet);
begin
  QNCTipo.Value := 'NCR';




end;

procedure TREstadoCtaCli.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Balance := 0;
  BalanceUS := 0;
  if (QClientescli_rnc.IsNull) or (QClientescli_rnc.Value = '') then
    QRDBText22.DataField := 'cli_cedula'
  else
    QRDBText22.DataField := 'cli_rnc';

  ImprimeSub := True;
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select * from pr_verifica_st (:emp, :fec, :tip, :for,');
  dm.Query1.SQL.Add(':tfa, :num, :sec, :suc)');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('fec').Value := Fecha;
  dm.Query1.Parameters.ParamByName('tip').Value := QDocsMOV_TIPO.Value;
  dm.Query1.Parameters.ParamByName('for').Value := QDocsFAC_FORMA.Value;
  dm.Query1.Parameters.ParamByName('tfa').Value := QDocsTFA_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('num').Value := QDocsMOV_NUMERO.Value;
  dm.Query1.Parameters.ParamByName('sec').Value := QDocsMOV_SECUENCIA.Value;
  dm.Query1.Parameters.ParamByName('suc').Value := suc;
  dm.Query1.Open;
  if dm.Query1.FieldByName('status').AsString = 'PAG' then
  begin
    ImprimeSub := False;
    PrintBand := False;
  end
  else
    PrintBand := True;

end;

procedure TREstadoCtaCli.QRsdDocsBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if QDocsmov_tasa.Value = 1 THEN
  Balance := Balance + QDocsMONTO.Value + QDocsTotalInteres.Value;
  lbBalance1.Caption := format('%n',[Balance]);

  if QDocsmov_tasa.Value > 1 then
  BalanceUS := BalanceUS + (QDocsMOV_MONTOUS.Value)+(QDocsTotalInteres.Value/QDocsmov_tasa.Value);
  lbOBalance1.Caption := format('%n',[BalanceUS]);
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select tmo_codigo, tmo_nombre from tiposmov');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and tmo_siglas = :tipo');
  dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('tipo').Value  := QDocsMOV_TIPO.Value;
  dm.Query1.Open;
  if dm.Query1.FieldByName('tmo_codigo').AsInteger = dm.QParametrosPAR_MOVCARGO.Value then
    lbDescrip1.Caption := 'CHEQUE DEVUELTO'
  else
    lbDescrip1.Caption := dm.Query1.FieldByName('tmo_nombre').AsString;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select * from pr_verifica_st (:emp, :fec, :tip, :for,');
  dm.Query1.SQL.Add(':tfa, :num, :sec, :suc)');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('fec').Value := Fecha;
  dm.Query1.Parameters.ParamByName('tip').Value := QDocsMOV_TIPO.Value;
  dm.Query1.Parameters.ParamByName('for').Value := QDocsFAC_FORMA.Value;
  dm.Query1.Parameters.ParamByName('tfa').Value := QDocsTFA_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('num').Value := QDocsMOV_NUMERO.Value;
  dm.Query1.Parameters.ParamByName('sec').Value := QDocsMOV_SECUENCIA.Value;
  dm.Query1.Parameters.ParamByName('suc').Value := suc;
  dm.Query1.Open;
  if dm.Query1.FieldByName('status').AsString = 'PAG' then
  begin
    ImprimeSub := False;
    PrintBand := False;
  end
  else
    PrintBand := True;
end;

procedure TREstadoCtaCli.QRSDRecibosBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if QDocsmov_tasa.Value = 1 then
  Balance :=( Balance - QRecibosDET_MONTO.Value);

  if QDocsmov_tasa.Value > 1 then
  BalanceUS := (BalanceUS - QRecibosdet_monto_OMON.Value);

  if QDocsmov_tasa.Value = 1 then
  lbBalance2.Caption := format('%n',[Balance]);

  if QDocsmov_tasa.Value > 1 then
  lbOBalance2.Caption := format('%n',[BalanceUS]);

  lbDescrip2.Caption := 'Recibo';

  if QDocsmov_tasa.Value > 1 then
  QRDBText19.Enabled := False ELSE
  QRDBText19.Enabled := True;

end;

procedure TREstadoCtaCli.QRsdNCBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if QNC.RecordCount = 0 then
     PrintBand := False
  else
     PrintBand := true;

 //Titin para imprimir monto en dolares.
   qrlNCR_MONTO.Caption := format('%n',[QNCNCR_MONTO.Value]);

   if QDocsmov_tasa.Value = 1 then
   Balance := (Balance - QNCNCR_MONTO.Value);

   if QDocsmov_tasa.Value > 1 then
   BalanceUS := (BalanceUS - QNCNCR_MONTO_OMON.Value);


   QRLTasaNC.Caption := format('%n',[QNCncr_tasa.Value]);

   if QNCncr_tasa.Value > 1 THEN
   qrlNCR_MONTO.Enabled := False ELSE
   qrlNCR_MONTO.Enabled := True;

  if QDocsmov_tasa.Value = 1 then
  lbBalance3.Caption := format('%n',[Balance]);

  if QDocsmov_tasa.Value = 1 then
  lbOBalance3.Caption := format('%n',[BalanceUS]);


  if (QNCncr_devolucion.Value = 0) or (QNCncr_devolucion.IsNull) then
    lbDescrip3.Caption := 'Nota de Credito'
  else
    lbDescrip3.Caption := 'NCR/Devolucion';
  end;

procedure TREstadoCtaCli.QCreditoCalcFields(DataSet: TDataSet);
begin
  QCreditoTipo.Value := 'NCR';
end;

procedure TREstadoCtaCli.QRsdCreditoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var bal_nc:Currency;
begin
  if format('%n',[QCreditoNCR_MONTO.Value]) = '0.00' then
    PrintBand := False
  else begin {20170809 solo el else para evitar la division en 0}
    //Actualiza Balance NC
  with qActBalNC do begin
  Close;
  Parameters.ParamByName('EMP').Value := QDocsEMP_CODIGO.Value;
  Parameters.ParamByName('SUC').Value := QDocssuc_codigo.Value;
  Parameters.ParamByName('NC').Value  := QNCNCR_NUMERO.Value;
  ExecSQL;
  end;

  with dm.Query1 do begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT ISNULL(NCR_MONTOUSADO,0) USADO FROM NOTASCREDITO');
  SQL.Add('WHERE EMP_CODIGO = :EMP AND SUC_CODIGO = :SUC AND NCR_NUMERO = :NC');
  Parameters.ParamByName('EMP').Value := QDocsEMP_CODIGO.Value;
  Parameters.ParamByName('SUC').Value := QDocssuc_codigo.Value;
  Parameters.ParamByName('NC').Value  := QNCNCR_NUMERO.Value;
  Open;
  if not IsEmpty THEN
  bal_nc := DM.Query1.FieldByName('USADO').Value;
  Close;
  end;

  IF (QCreditoMONTOUS.Value+bal_nc) = 0 THEN
  QRsdCredito.Enabled := False ELSE
  BEGIN

  //Titin para imprimir monto en dolares.
  qrlNCRMonto2.Caption := format('%n',[(QCreditoMONTOUS.Value+bal_nc)]);

  if QRecibosREC_TASA.Value = 1 then
  Balance := Balance - (QCreditoMONTOUS.Value+bal_nc) ;
  if QRecibosREC_TASA.Value > 1 then
  BalanceUS := BalanceUS - (QCreditoMONTOUS.Value+bal_nc) ;

  if QRecibosREC_TASA.Value = 1 then
  lbBalance4.Caption := format('%n',[Balance]);
  if QRecibosREC_TASA.Value > 1 then
  lbOBalance5.Caption := format('%n',[BalanceUS]);

  lbDescrip4.Caption := 'Nota de Credito';

  end;
  end;
end;

procedure TREstadoCtaCli.QRsdDepositosBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if format('%n',[QDepositosMONTO.Value]) = '0.00' then
    PrintBand := False;


    //Titin para imprimir monto en dolares

  qrlMontoDeposito.Caption := format('%n',[QDepositosMONTO.Value]);
  QRLTasaDep.Caption := format('%n',[QDepositosDEP_TASA.Value]);

  if QDocsmov_tasa.Value = 1 then
  Balance := (Balance - QDepositosMONTO.Value);

  if QDocsmov_tasa.Value > 1 then
  BalanceUS := (BalanceUS - QDepositosMONTOUS.Value);

  if QDocsmov_tasa.Value > 1 then
  lbBalance5.Caption := format('%n',[Balance]);

  if QDocsmov_tasa.Value > 1 then
  lbOBalance4.Caption := format('%n',[BalanceUS]);

  if QDocsmov_tasa.Value > 1 then
  qrlMontoDeposito.Enabled := False ELSE
  qrlMontoDeposito.Enabled := True;

  lbDescrip5.Caption := 'Deposito';
  if Balance = 0 then begin
  QRBand3.Visible := False;
  QRsdDocs.Visible := False;
  QRSDRecibos.Visible := False;
  QRsdNC.Visible := False;
  QRsdDepositos.Visible := False;
  QRsdCredito.Visible := False;
  end;
end;

procedure TREstadoCtaCli.QDepositosCalcFields(DataSet: TDataSet);
begin
  QdepositosTIPO.value := 'DEP';
  QDepositosDEP_TASA.Value := QDocsmov_tasa.Value;
end;

procedure TREstadoCtaCli.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  lbTotal.Caption := format('%n',[Total]);
  lbTotalUS.Caption := format('%n',[TotalUS]);
end;

procedure TREstadoCtaCli.QRSubDetail6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  PrintBand := ImprimeSub;
  lbMora.Caption := format('%n',[qMoraTOTALMORA.Value]);
  QRLTotalMoraOMonto.Caption := format('%n',[qMoraUSTOTALMORA.Value]);
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select par_dia1label, par_dia2label,');
  dm.Query1.SQL.Add('par_dia3label, par_dia4label');
  dm.Query1.SQL.Add('from PARAMANTIGSALDO');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Open;
  lbDia1.Caption := dm.Query1.FieldByName('par_dia1label').AsString;
  lbDia2.Caption := dm.Query1.FieldByName('par_dia2label').AsString;
  lbDia3.Caption := dm.Query1.FieldByName('par_dia3label').AsString;
  lbDia4.Caption := dm.Query1.FieldByName('par_dia4label').AsString;
  lbTotalCliente.Caption := format('%n',[QAntigDIA1.Value+QAntigDIA2.Value+
                                         QAntigDIA3.Value+QAntigDIA4.Value+
                                         qMoraTOTALMORA.Value]);
  QRLTotalClienteOMonto.Caption := format('%n',[QAntigDIAUS1.Value+QAntigDIAUS2.Value+
                                         QAntigDIAUS3.Value+QAntigDIAUS4.Value+
                                         qMoraUSTOTALMORA.Value]);
  Balance := Balance + qMoraTOTALMORA.Value;
  BalanceUS := BalanceUS + qMoraUSTOTALMORA.Value;
  Total  := Total + Balance;
  TotalUS  := TotalUS + BalanceUS;
end;

end.
