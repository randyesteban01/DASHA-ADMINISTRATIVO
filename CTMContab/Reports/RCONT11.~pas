unit RCONT11;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB, QRPDFFilt, QRExport;

type
  TRepBalanceComp = class(TQuickRep)
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRLabel21: TQRLabel;
    QRBand3: TQRBand;
    QRDBText10: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QCuentas: TADOQuery;
    QRDBText8: TQRDBText;
    QRDBText7: TQRDBText;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabel3: TQRLabel;
    lbTitulo: TQRLabel;
    QRDBText1: TQRDBText;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel1: TQRLabel;
    lbAnexo: TQRLabel;
    QRLabel2: TQRLabel;
    lbConsol: TQRLabel;
    QCuentasid: TAutoIncField;
    QCuentasnombre: TStringField;
    QCuentasorigen: TStringField;
    QCuentasmovimiento: TStringField;
    QCuentascontrol: TStringField;
    QCuentasdebito: TBCDField;
    QCuentascredito: TBCDField;
    QCuentasMDebito: TFloatField;
    QCuentasMCredito: TFloatField;
    QCuentascuenta: TStringField;
    QRShape1: TQRShape;
    QCuentasbalance_act: TFloatField;
    QCuentasbalance_ant: TFloatField;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRExcelFilter1: TQRExcelFilter;
    QRPDFFilter1: TQRPDFFilter;
    ADOQuery1: TADOQuery;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    StringField5: TStringField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    QCuentasbalance_act2: TCurrencyField;
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QCuentasCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public
    Imprime, Detalle : Boolean;
  end;

var
  RepBalanceComp: TRepBalanceComp;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRepBalanceComp.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if dm.QContabPAR_REPANEXOS.Value = 'C' then
  begin
    lbAnexo.Enabled := True;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select ane_nombre from contanexos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cta').Value  := QCuentasCUENTA.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      lbAnexo.Caption := dm.Query1.FieldByName('ane_nombre').AsString
    else
      lbAnexo.Caption := ' ';
  end
  else
    lbAnexo.Enabled := False;

  if QCuentasmovimiento.Value = 'N' then
  begin
    if Detalle = True then
    begin
      QRDBText6.Font.Style  := QRDBText6.Font.Style  + [fsBold];
      QRDBText7.Font.Style  := QRDBText7.Font.Style  + [fsBold];
      QRDBText8.Font.Style  := QRDBText8.Font.Style  + [fsBold];
      QRDBText10.Font.Style := QRDBText10.Font.Style + [fsBold];
    end
    else
    begin
      QRDBText6.Font.Style  := QRDBText6.Font.Style  - [fsBold];
      QRDBText7.Font.Style  := QRDBText7.Font.Style  - [fsBold];
      QRDBText8.Font.Style  := QRDBText8.Font.Style  - [fsBold];
      QRDBText10.Font.Style := QRDBText10.Font.Style - [fsBold];
    end;
  end
  else
  begin
    QRDBText6.Font.Style  := QRDBText6.Font.Style  - [fsBold];
    QRDBText7.Font.Style  := QRDBText7.Font.Style  - [fsBold];
    QRDBText8.Font.Style  := QRDBText8.Font.Style  - [fsBold];
    QRDBText10.Font.Style := QRDBText10.Font.Style - [fsBold];
    if Detalle = False then PrintBand := False;
  end;
 { if StrToFloat(Format('%10.2f',[QCuentasDEBITO.Value])) = 0 then
    QRDBText8.Enabled := False
  else
    QRDBText8.Enabled := True;
  if StrToFloat(Format('%10.2f',[QCuentasCREDITO.Value])) = 0 then
    QRDBText7.Enabled := False
  else
    QRDBText7.Enabled := true;     }

{  if (StrToFloat(Format('%10.2f',[QCuentasDEBITO.Value])) = 0) and
  (StrToFloat(Format('%10.2f',[QCuentasCREDITO.Value])) = 0) then
    PrintBand := False;}
end;

procedure TRepBalanceComp.QCuentasCalcFields(DataSet: TDataSet);
begin
  if QCuentasmovimiento.Value = 'S' then
  begin
    QCuentasMDebito.Value := QCuentasDebito.Value;
    QCuentasMCredito.Value := QCuentasCredito.Value;
  end;

  if Detalle = True then
  begin
    {if QCuentasCONTROL.value = 'N' then
    begin
      QCuentasMDebito.Value  := QCuentasDEBITO.Value;
      QCuentasMCredito.Value := QCuentasCREDITO.Value;
    end;}
  end
  else
  begin
    {QCuentasMDebito.Value  := QCuentasDEBITO.Value;
    QCuentasMCredito.Value := QCuentasCREDITO.Value;}
  end;
end;

procedure TRepBalanceComp.QuickRepBeforePrint(Sender: TCustomQuickRep;
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
    dm.Query1.Parameters.ParamByName('mod').Value := 'RepBalanceComp';
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
end;

end.
