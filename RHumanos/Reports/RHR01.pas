unit RHR01;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ADODB;

type
  TRVolantePago = class(TQuickRep)
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRExpr3: TQRExpr;
    QNomina: TADOQuery;
    QNominaemp_codigo: TIntegerField;
    QNominatno_codigo: TIntegerField;
    QNominanom_codigo: TIntegerField;
    QNominanom_fecha_desde: TDateTimeField;
    QNominanom_fecha_hasta: TDateTimeField;
    dsNomina: TDataSource;
    QDetalle: TADOQuery;
    QDetallegru_nombre: TStringField;
    QDetalleemp_nombres: TStringField;
    QDetalleemp_apellido_paterno: TStringField;
    QDetalleemp_apellido_materno: TStringField;
    QDetalleemp_cedula: TStringField;
    QDetalletip_nombre: TStringField;
    QDetalleemp_salario: TBCDField;
    QDetalleemp_cuenta_bancaria: TStringField;
    QDetalleemp_numero: TIntegerField;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QDetalleNombre: TStringField;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QNovedades: TADOQuery;
    dsDetalle: TDataSource;
    QNovedadestin_nombre: TStringField;
    QNovedadestde_nombre: TStringField;
    QNovedadesdet_monto: TBCDField;
    QNovedadesIngreso: TFloatField;
    QNovedadesDescuento: TFloatField;
    QNovedadesDescripcion: TStringField;
    QRSubDetail1: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QDetalletno_codigo: TIntegerField;
    QDetallenom_codigo: TIntegerField;
    QDetalleemp_codigo: TIntegerField;
    QDetallegru_codigo: TIntegerField;
    QNovedadesacum_ingreso: TBCDField;
    QNovedadesacum_descuento: TBCDField;
    QNovedadesAcumulado: TFloatField;
    QRDBText5: TQRDBText;
    QRShape7: TQRShape;
    QRLabel1: TQRLabel;
    QNovedadesafp_aporte_afiliado: TBCDField;
    QRDBText13: TQRDBText;
    QNovedadesVal: TStringField;
    QRDBText1: TQRDBText;
    lbperiodo: TQRLabel;
    QRLabel2: TQRLabel;
    lbTipoNomina: TQRLabel;
    ChildBand1: TQRChildBand;
    QRShape2: TQRShape;
    QNovedadessfs_aporte_afiliado: TBCDField;
    QNovedadestin_codigo: TIntegerField;
    QNovedadestde_codigo: TIntegerField;
    QRShape10: TQRShape;
    QRShape8: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel16: TQRLabel;
    PageFooterBand1: TQRBand;
    qrlUsuario: TQRLabel;
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure QNovedadesCalcFields(DataSet: TDataSet);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure ChildBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private

  public
    IngAcum, DesAcum : Double;
    afp, sfs : string;
    paginas, volantes, cantvolantes : integer;
  end;

var
  RVolantePago: TRVolantePago;

implementation

uses SIGMA01;

{$R *.DFM}

procedure TRVolantePago.QDetalleCalcFields(DataSet: TDataSet);
begin
  QDetalleNombre.Value := QDetalleemp_nombres.Value+' '+QDetalleemp_apellido_paterno.Value+' '+
                          QDetalleemp_apellido_materno.Value;
end;

procedure TRVolantePago.QNovedadesCalcFields(DataSet: TDataSet);
begin
  if QNovedadestin_codigo.AsInteger > 0 then
  begin
    QNovedadesIngreso.Value     := QNovedadesdet_monto.Value;
    QNovedadesDescripcion.Value := QNovedadestin_nombre.Value;
    QNovedadesAcumulado.Value   := QNovedadesacum_ingreso.Value;
  end
  else
  begin
    QNovedadesDescuento.Value   := QNovedadesdet_monto.Value;
    QNovedadesDescripcion.Value := QNovedadestde_nombre.Value;
    QNovedadesAcumulado.Value   := QNovedadesacum_descuento.Value;
  end;

  if QNovedadesDescripcion.Value = afp then
    QNovedadesVal.Value := FloatToStr(QNovedadesafp_aporte_afiliado.AsFloat)
  else if QNovedadesDescripcion.Value = sfs then
    QNovedadesVal.Value := FloatToStr(QNovedadessfs_aporte_afiliado.AsFloat)
  else
    QNovedadesVal.Value := '';
end;

procedure TRVolantePago.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //lbingacum.Caption := '0.00';
  //lbdesacum.Caption := '0.00';
  volantes := volantes + 1;
  QRLabel2.Caption := 'VOLANTE DE PAGO #'+inttostr(volantes);
  IngAcum := 0;
  DesAcum := 0;
end;

procedure TRVolantePago.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  IngAcum := IngAcum + QNovedadesacum_ingreso.Value;
  DesAcum := DesAcum + QNovedadesacum_descuento.Value;
end;

procedure TRVolantePago.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //lbingacum.Caption := Format('%n',[IngAcum]);
  //lbdesacum.Caption := Format('%n',[DesAcum]);
end;

procedure TRVolantePago.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  QRDBText5.Enabled := dm.QParamRHpar_acumulado.Value = 'True';
  QRShape6.Visible  := dm.QParamRHpar_acumulado.Value = 'True';
  QRLabel10.Enabled := dm.QParamRHpar_acumulado.Value = 'True';

  paginas := 0;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select tno_tipo_volante from tipo_nomina');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and tno_codigo = :tno');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('tno').Value := QNominatno_codigo.Value;
  dm.Query1.Open;
  if dm.Query1.FieldByName('tno_tipo_volante').AsString = '1 volante por p�gina' then
    cantvolantes := 1
  else if dm.Query1.FieldByName('tno_tipo_volante').AsString = '2 volantes por p�gina' then
    cantvolantes := 2
  else if dm.Query1.FieldByName('tno_tipo_volante').AsString = '3 volantes por p�gina' then
    cantvolantes := 3;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select tde_nombre from tipo_descuentos');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and tde_codigo = :tde');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('tde').Value := dm.QParamRHpar_tipo_descuento_afp.value;
  dm.Query1.Open;
  afp := dm.Query1.FieldByName('tde_nombre').AsString;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select tde_nombre from tipo_descuentos');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and tde_codigo = :tde');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('tde').Value := dm.QParamRHpar_tipo_descuento_sfs.value;
  dm.Query1.Open;
  sfs := dm.Query1.FieldByName('tde_nombre').AsString;
  qrlUsuario.Caption :='Impreso por :'+ dm.getNombreUsuario(DM.Usuario) +
                       ' Fecha/Hora ' + FormatDateTime('dd/mm/yyyy hh:mm:ss AM/PM',now);
end;

procedure TRVolantePago.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  paginas := paginas + 1;
end;

procedure TRVolantePago.ChildBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  if paginas = cantvolantes then
  begin
    paginas := 0;
    NewPage;
  end;
end;

end.
