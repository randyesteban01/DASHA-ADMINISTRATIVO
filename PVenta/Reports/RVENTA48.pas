unit RVENTA48;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TREstadoCtaProv = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel18: TQRLabel;
    QRLabel21: TQRLabel;
    QRBand3: TQRBand;
    TXTSUPNOMBRE: TQRDBText;
    QDocs: TADOQuery;
    QProv: TADOQuery;
    QRSubDetail1: TQRSubDetail;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    lbCodigo: TQRDBText;
    TEXTELEFONOSUP: TQRDBText;
    dsProv: TDataSource;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRSubDetail2: TQRSubDetail;
    dsDocs: TDataSource;
    QPagos: TADOQuery;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    LBLTELEFONOSUP: TQRLabel;
    LBLRNCSUP: TQRLabel;
    TEXTRNCSUP: TQRDBText;
    QRLabel11: TQRLabel;
    lbBalance1: TQRLabel;
    lbBalance2: TQRLabel;
    QRLabel12: TQRLabel;
    QProvSUP_CODIGO: TIntegerField;
    QProvSUP_NOMBRE: TIBStringField;
    QProvSUP_TELEFONO: TIBStringField;
    QProvEMP_CODIGO: TIntegerField;
    QProvSUP_RNC: TIBStringField;
    QRLabel4: TQRLabel;
    QDocsFAC_FECHA: TDateTimeField;
    QDocsABONO: TFloatField;
    QDocsFAC_TOTAL: TFloatField;
    QDocsFAC_NUMERO: TIBStringField;
    QDocsEMP_CODIGO: TIntegerField;
    QDocsSUP_CODIGO: TIntegerField;
    QRDBText6: TQRDBText;
    QRLabel9: TQRLabel;
    QDepositos: TADOQuery;
    QDepositosDEP_FECHA: TDateTimeField;
    QDepositosMONTO: TFloatField;
    QDepositosDEP_NUMERO: TIntegerField;
    QDepositosTipo: TStringField;
    QRSubDetail3: TQRSubDetail;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText15: TQRDBText;
    lbBalance3: TQRLabel;
    QPagosBAN_NOMBRE: TIBStringField;
    QPagosCHE_NUMERO: TIntegerField;
    QPagosCHE_FECHA: TDateTimeField;
    QPagosPAGO: TFloatField;
    QNC: TADOQuery;
    QNCNCR_FECHA: TDateTimeField;
    QNCNCR_MONTO: TFloatField;
    QNCNCR_NUMERO: TIntegerField;
    QRSubDetail4: TQRSubDetail;
    QNCTipo: TStringField;
    QRDBText16: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText23: TQRDBText;
    lbBalance4: TQRLabel;
    QDesem: TADOQuery;
    QDesemdes_NUMERO: TIntegerField;
    QDesemdes_FECHA: TDateTimeField;
    QDesemPAGO: TBCDField;
    QDesemTipo: TStringField;
    QRSubDetail5: TQRSubDetail;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    lbBalance5: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QCargos: TADOQuery;
    QCargosban_nombre: TStringField;
    QCargoscar_fecha: TDateTimeField;
    QCargoscar_numero: TIntegerField;
    QCargospago: TBCDField;
    QRSubDetail6: TQRSubDetail;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    lbBalance6: TQRLabel;
    QCargosTipo: TStringField;
    QPagosTipo: TStringField;
    lbtipo: TQRLabel;
    QRBand4: TQRBand;
    QRLabel15: TQRLabel;
    lbTotal: TQRLabel;
    QRSubDetail7: TQRSubDetail;
    PageFooterBand1: TQRBand;
    qrlUsuario: TQRLabel;
    QDocsSaldo: TCurrencyField;
    QProvFECHA: TDateTimeField;
    qSuplidor: TADOQuery;
    IntegerField1: TIntegerField;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IntegerField2: TIntegerField;
    IBStringField3: TIBStringField;
    DateTimeField1: TDateTimeField;
    QDocsFECHA: TDateTimeField;
    procedure QDocsCalcFields(DataSet: TDataSet);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QDepositosCalcFields(DataSet: TDataSet);
    procedure QRSubDetail3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QNCCalcFields(DataSet: TDataSet);
    procedure QDesemCalcFields(DataSet: TDataSet);
    procedure QRSubDetail5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QPagosCalcFields(DataSet: TDataSet);
    procedure QCargosCalcFields(DataSet: TDataSet);
    procedure QRSubDetail6BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail7BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
    Balance, Total : Double;
    Fecha, vl_fecha : TDateTime;
    moneda : integer;
    detallado : boolean;
    vl_suc, vl_bal : Integer;
  end;

var
  REstadoCtaProv: TREstadoCtaProv;

implementation

uses SIGMA01, PVENTA84;


{$R *.DFM}

procedure TREstadoCtaProv.QDocsCalcFields(DataSet: TDataSet);
begin
 QDocsSaldo.Value := QDocsFAC_TOTAL.Value - QDocsABONO.Value;
end;

procedure TREstadoCtaProv.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 Balance := 0;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select * from pr_verifica_st_prov (:emp, :fec, :sup, :num, :suc)');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('fec').Value := Fecha;
  dm.Query1.Parameters.ParamByName('sup').Value := QProvSUP_CODIGO.value;
  dm.Query1.Parameters.ParamByName('suc').Value := vl_suc;
  dm.Query1.Parameters.ParamByName('num').Value := QDocsFAC_NUMERO.Value;
  dm.Query1.Open;
  if dm.Query1.FieldByName('status').AsString = 'PAG' then
    PrintBand := False
  else
    PrintBand := True;


 {
dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select SUM(FAC_TOTAL-fac_abono) TOTAL FROM PROVFACTURAS');
  dm.Query1.SQL.Add('WHERE EMP_CODIGO = :emp AND SUP_CODIGO = :sup and FAC_FECHA <= :fecha');
  dm.Query1.Parameters.ParamByName('emp').Value   := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('fecha').Value := vl_fecha;//frmEstadoCtaProv.Fecha.Date;
  //dm.Query1.Parameters.ParamByName('bal').Value   := vl_bal;
  dm.Query1.Parameters.ParamByName('sup').Value   := QProvSUP_CODIGO.value;
  dm.Query1.Open;
  case vl_bal of
  1:begin
  if DM.Query1.FieldByName('TOTAL').Value = 0 THEN
    PrintBand := False
  else
    PrintBand := True;
  end;

  2:begin
  if DM.Query1.FieldByName('TOTAL').Value > 0 THEN
    PrintBand := True
  else
    PrintBand := False;
  end;

  3:begin
  if DM.Query1.FieldByName('TOTAL').Value < 0 THEN
    PrintBand := True
  else
    PrintBand := False;
  end;

  end

{
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select SUM(FAC_TOTAL-fac_abono) TOTAL from [dbo].[pr_cxp_estado_sup] (:emp, :fecha, :bal)');
  dm.Query1.SQL.Add('WHERE sup_codigo = :sup');
  dm.Query1.Parameters.ParamByName('emp').Value   := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('fecha').Value := vl_fecha;//frmEstadoCtaProv.Fecha.Date;
  dm.Query1.Parameters.ParamByName('bal').Value   := vl_bal;
  dm.Query1.Parameters.ParamByName('sup').Value   := QProvSUP_CODIGO.value;
  dm.Query1.Open;
  case vl_bal of
  1:begin
  if DM.Query1.FieldByName('TOTAL').Value = 0 THEN
    PrintBand := False
  else
    PrintBand := True;
  end;

  2:begin
  if DM.Query1.FieldByName('TOTAL').Value > 0 THEN
    PrintBand := True
  else
    PrintBand := False;
  end;

  3:begin
  if DM.Query1.FieldByName('TOTAL').Value < 0 THEN
    PrintBand := True
  else
    PrintBand := False;
  end;

  end;}
end;

procedure TREstadoCtaProv.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 Balance := Balance + QDocsFAC_TOTAL.Value;
  lbBalance1.Caption := format('%n',[Balance]);
  IF Balance > 0 THEN
  begin
        PrintBand := True;
        LBLTELEFONOSUP.Visible:=True;
        LBLRNCSUP.Visible:= True;
        TXTSUPNOMBRE.Visible:=True;
        TEXTRNCSUP.Visible:=True;
        TEXTELEFONOSUP.Visible:=True
  end
  ELSE
  begin
       PrintBand := False;
       LBLTELEFONOSUP.Visible:=False;
       LBLRNCSUP.Visible:= False;
       TXTSUPNOMBRE.Visible:=False;
       TEXTRNCSUP.Visible:=False;
       TEXTELEFONOSUP.Visible:=False;
  end;

end;

procedure TREstadoCtaProv.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Balance := Balance - QPagosPAGO.Value;
  lbBalance2.Caption := format('%n',[Balance]);

  PrintBand := detallado;
end;

procedure TREstadoCtaProv.QDepositosCalcFields(DataSet: TDataSet);
begin
   QDepositosTipo.Value := 'Depositos';
end;

procedure TREstadoCtaProv.QRSubDetail3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Balance := Balance - QDepositosMONTO.Value;
  lbBalance3.Caption := format('%n',[Balance]);
  PrintBand := detallado;
end;

procedure TREstadoCtaProv.QRSubDetail4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Balance := Balance - QNCNCR_MONTO.Value;
  lbBalance4.Caption := format('%n',[Balance]);
  PrintBand := detallado;
end;

procedure TREstadoCtaProv.QNCCalcFields(DataSet: TDataSet);
begin
  QNCTipo.value := 'Nota de Crédito';
end;

procedure TREstadoCtaProv.QDesemCalcFields(DataSet: TDataSet);
begin
  QDesemTipo.Value := 'EFECTIVO';
end;

procedure TREstadoCtaProv.QRSubDetail5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Balance := Balance - QDesemPAGO.Value;
  lbBalance5.Caption := format('%n',[Balance]);
  PrintBand := detallado;
end;

procedure TREstadoCtaProv.QPagosCalcFields(DataSet: TDataSet);
begin
  QPagosTipo.Value := 'CK: '+QPagosBAN_NOMBRE.Value;
end;

procedure TREstadoCtaProv.QCargosCalcFields(DataSet: TDataSet);
begin
  QCargosTipo.Value := 'CB: '+QCargosban_nombre.Value;
end;

procedure TREstadoCtaProv.QRSubDetail6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Balance := Balance - QCargosPAGO.Value;
  lbBalance6.Caption := format('%n',[Balance]);
  PrintBand := detallado;
end;

procedure TREstadoCtaProv.QRSubDetail7BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Total := Total + Balance;
end;

procedure TREstadoCtaProv.QuickRepBeforePrint(Sender: TCustomQuickRep;
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
    dm.Query1.Parameters.ParamByName('mod').Value := 'REstadoCtaProv';
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

  Total := 0;
   qrlUsuario.Caption :='Impreso por :'+ dm.getNombreUsuario(DM.Usuario) +
                       ' Fecha/Hora ' + FormatDateTime('dd/mm/yyyy hh:mm:ss AM/PM',now);
end;

procedure TREstadoCtaProv.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  lbTotal.Caption := format('%n',[Total]);
end;

end.
