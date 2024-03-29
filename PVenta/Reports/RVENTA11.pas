unit RVENTA11;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRConsCxC = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel21: TQRLabel;
    QRBand3: TQRBand;
    QRDBText10: TQRDBText;
    QRBand4: TQRBand;
    QCliente: TADOQuery;
    QClienteEMP_CODIGO: TIntegerField;
    QClienteCLI_CODIGO: TIntegerField;
    QClienteCLI_NOMBRE: TIBStringField;
    QClienteBALANCE: TFloatField;
    dsCliente: TDataSource;
    QMov: TADOQuery;
    QMovFAC_FORMA: TIBStringField;
    QMovMOV_ABONO: TFloatField;
    QMovMOV_FECHA: TDateTimeField;
    QMovMOV_MONTO: TFloatField;
    QMovMOV_NUMERO: TIntegerField;
    QMovMOV_TIPO: TIBStringField;
    QMovTFA_CODIGO: TIntegerField;
    QMovSaldo: TFloatField;
    QClienteCLI_REFERENCIA: TIBStringField;
    QRLabel3: TQRLabel;
    QRDBText6: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRBand5: TQRBand;
    QRLabel11: TQRLabel;
    QMovMOV_FECHAVENCE: TDateTimeField;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText14: TQRDBText;
    QMovMOV_SECUENCIA: TIntegerField;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    qrCuota: TQRDBText;
    QMovMOV_CUOTA: TIBStringField;
    QClienteid: TAutoIncField;
    QClienteCLI_LIMITE: TBCDField;
    QClienteCLI_TELEFONO: TStringField;
    QClienteVENCIDO: TBCDField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QMovnde_concepto: TStringField;
    QRDBText15: TQRDBText;
    QRLabel18: TQRLabel;
    QRSUCURSAL: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    qMora: TADOQuery;
    qMoraTOTALMORA: TCurrencyField;
    qMoracli_codigo: TIntegerField;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QClienteSUC_CODIGO: TIntegerField;
    QRLTotalClie: TQRLabel;
    QRLTOTAL: TQRLabel;
    QRLMORA: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QMovCalcFields(DataSet: TDataSet);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QClienteAfterScroll(DataSet: TDataSet);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
    vl_suc : Integer;
    vl_sucA : Boolean;
    VL_MORA, VL_TOTALCLIE, VL_TOTAL : Currency;

  end;

var
  RConsCxC: TRConsCxC;

implementation

uses SIGMA01, Math;


{$R *.DFM}

procedure TRConsCxC.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
     QRDBText6.DataField := 'CLI_CODIGO'
  else
     QRDBText6.DataField := 'CLI_REFERENCIA';
     VL_TOTAL := 0;
end;

procedure TRConsCxC.QMovCalcFields(DataSet: TDataSet);
begin
  qmOVSaldo.value := qmOVMOV_MONTO.value - qmOVMOV_ABONO.value;
end;

procedure TRConsCxC.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if QMovMOV_CUOTA.Value = 'True' then
    qrCuota.Enabled := True
  else
    qrCuota.Enabled := False;
    WITH qMora DO BEGIN
    Close;
    Parameters.ParamByName('EMP_CODIGO').Value := QClienteEMP_CODIGO.Value;
    Parameters.ParamByName('CLI_CODIGO').Value := QClienteCLI_CODIGO.Value;
    Parameters.ParamByName('SUC_CODIGO').Value := QClienteSUC_CODIGO.Value;
    Open;
    if IsEmpty THEN VL_MORA := 0 ELSE
    VL_MORA := qMoraTOTALMORA.Value;
    end;
    QRLMORA.Caption := FormatCurr('#,0.00',VL_MORA);
    VL_TOTALCLIE := VL_TOTALCLIE + QMovSaldo.Value;
    QRLTotalClie.Caption := FormatCurr('#,0.00',VL_MORA+VL_TOTALCLIE);
end;

procedure TRConsCxC.QClienteAfterScroll(DataSet: TDataSet);
var
vl_record:  Integer;
begin
with QMov do begin
    Close;
    Parameters.ParamByName('emp_codigo').Value := QClienteEMP_CODIGO.Value;
    Parameters.ParamByName('cli_codigo').Value := QClienteCLI_CODIGO.Value;
    if vl_sucA = true  then begin
    Parameters.ParamByName('suc1').Value := vl_suc;
    Parameters.ParamByName('suc2').Value := vl_suc;
    end;
    if not vl_sucA = True then begin
    Parameters.ParamByName('suc1').Value := 0;
    Parameters.ParamByName('suc2').Value := 999;
    end;
    Open;
    vl_record := RecordCount;
    END;
end;

procedure TRConsCxC.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
VL_MORA := 0;
VL_TOTALCLIE := 0;
end;

procedure TRConsCxC.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
VL_TOTAL := VL_TOTAL + VL_TOTALCLIE + VL_MORA;
QRLTotal.Caption := FormatCurr('#,0.00',VL_TOTAL);
end;

end.
