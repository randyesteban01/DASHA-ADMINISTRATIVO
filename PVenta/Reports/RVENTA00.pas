unit RVENTA00;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, Db, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRPedido = class(TQuickRep)
    QRBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRSysData1: TQRSysData;
    QRLabel7: TQRLabel;
    QRDBText8: TQRDBText;
    QRBand2: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRExpr1: TQRExpr;
    QRLabel22: TQRLabel;
    QRShape9: TQRShape;
    QRLabel23: TQRLabel;
    QRShape10: TQRShape;
    lbProd: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    lbItbis: TQRLabel;
    QRDBText15: TQRDBText;
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
    QRLabel29: TQRLabel;
    QRDBText24: TQRDBText;
    QPedido: TADOQuery;
    QPedidoEMP_CODIGO: TIntegerField;
    QPedidoPED_TIPO: TIBStringField;
    QPedidoPED_NUMERO: TIntegerField;
    QPedidoPED_FECHA: TDateTimeField;
    QPedidoPED_COTIZACION: TIntegerField;
    QPedidoCLI_CODIGO: TIntegerField;
    QPedidoCLI_REFERENCIA: TIBStringField;
    QPedidoPED_DIRECCION: TIBStringField;
    QPedidoPED_TELEFONO: TIBStringField;
    QPedidoPED_FAX: TIBStringField;
    QPedidoPED_DESCUENTO: TFloatField;
    QPedidoPED_ITBIS: TFloatField;
    QPedidoPED_TOTAL: TFloatField;
    QPedidoPED_NOMBRE: TIBStringField;
    QPedidoPED_LOCALIDAD: TIBStringField;
    QPedidoPED_NOTA: TMemoField;
    dsPedido: TDataSource;
    QDetalle: TADOQuery;
    QDetallePRO_CODIGO: TIntegerField;
    QDetallePRO_RORIGINAL: TIBStringField;
    QDetallePRO_RFABRIC: TIBStringField;
    QDetalleDET_DESCRIPCION: TIBStringField;
    QDetalleDET_CANTIDAD: TFloatField;
    QDetalleDET_PRECIO: TFloatField;
    QDetalleDET_ITBIS: TFloatField;
    QDetalleDET_DESCUENTO: TFloatField;
    QDetalleValor: TFloatField;
    QDetalleCalcItbis: TFloatField;
    QDetalleCalcDesc: TFloatField;
    QDetallePrecioItbis: TFloatField;
    QDetalleDET_CONITBIS: TIBStringField;
    QDetalleDET_NOTA: TMemoField;
    QPedidoORDEN_CLIENTE: TStringField;
    QPedidoSUC_CODIGO: TIntegerField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    lbReimpresion: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    lbvendedor: TQRLabel;
    lbcondicion: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText9: TQRDBText;
    QPedidoPED_FECHAENTREGA: TDateTimeField;
    QPedidocpa_codigo: TIntegerField;
    QPedidoven_codigo: TIntegerField;
    QRRichText2: TQRRichText;
    lbsimbolo1: TQRLabel;
    lbsimbolo2: TQRLabel;
    lbsimbolo3: TQRLabel;
    lbsimbolo4: TQRLabel;
    QPedidomon_codigo: TIntegerField;
    QPedidoped_tasa: TBCDField;
    lbTitulo: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    qSucursal: TADOQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    BlobField1: TBlobField;
    dsSucursal: TDataSource;
    QPedidoPED_IDCamion: TIntegerField;
    QPedidoPED_Placa: TStringField;
    QPedidoPED_Metraje: TFloatField;
    QPedidoPED_Compania: TStringField;
    QPedidoPED_Marca: TStringField;
    QPedidoPED_Modelo: TStringField;
    QPedidoPED_Chofer: TStringField;
    QRMemo1: TQRMemo;
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QPedidoAfterOpen(DataSet: TDataSet);
  private

  public

  end;

var
  RPedido: TRPedido;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRPedido.QDetalleCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis : Double;
begin
  if QDetalleDET_CONITBIS.value = 'S' then
  begin
    NumItbis := strtofloat(format('%10.2f',[(QDetalleDET_ITBIS.asfloat/100)+1]));
    QDetalleCalcDesc.value    := 0;
    if dm.QParametrospar_itbisincluido.Value = 'True' then
    begin
      Venta    := strtofloat(format('%10.2f',[(QDetalleDET_PRECIO.value)/NumItbis]));

      QDetallePrecioItbis.value := strtofloat(format('%10.2f',[Venta]));
      QDetalleCalcDesc.value    := strtofloat(format('%10.2f',[(Venta *
                                 strtofloat(format('%10.2f',[QDetalleDET_DESCUENTO.value])))/100]));
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
      QDetallePrecioItbis.value := strtofloat(format('%10.2f',[QDetalleDET_PRECIO.value]));
      QDetalleCalcDesc.value    := strtofloat(format('%10.2f',[(Venta *
                                 strtofloat(format('%10.2f',[QDetalleDET_DESCUENTO.value])))/100]));
      QDetalleCalcItbis.value   := strtofloat(format('%10.2f',[((QDetalleDET_PRECIO.value-QDetalleCalcDesc.value)*
                                   strtofloat(format('%10.2f',[QDetalleDET_ITBIS.Value])))/100]));
      {QDetalleValor.value       := ((strtofloat(format('%10.2f',[QDetalleDET_PRECIO.value]))-
                                   strtofloat(format('%10.2f',[QDetalleCalcDesc.value])))+
                                   strtofloat(format('%10.2f',[QDetalleCalcItbis.value])))*
                                   strtofloat(format('%10.2f',[QDetalleDET_CANTIDAD.value]));}
      QDetalleValor.value := (strtofloat(format('%10.2f',[QDetalleDET_PRECIO.value])) - strtofloat(format('%10.2f',[QDetalleCalcDesc.value])))*
                             strtofloat(format('%10.2f',[QDetalleDET_CANTIDAD.value]));
    end;
  end
  else
  begin
    Venta := strtofloat(format('%10.2f',[QDetalleDET_PRECIO.value]));
    QDetalleCalcDesc.value    := strtofloat(format('%10.2f',[(Venta * QDetalleDET_DESCUENTO.value)/100]));
    QDetallePrecioItbis.value := strtofloat(format('%10.2f',[Venta]));
    QDetalleValor.value       := strtofloat(format('%10.2f',[(Venta-QDetalleCalcDesc.value)*QDetalleDET_CANTIDAD.value]));
    QDetalleCalcItbis.value   := 0;
  end;
end;

procedure TRPedido.QuickRepBeforePrint(Sender: TCustomQuickRep;
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

  if not QPedidocpa_codigo.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cpa_nombre from condiciones');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cpa_codigo = :cpa');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cpa').Value := QPedidocpa_codigo.Value;
    dm.Query1.Open;
    lbcondicion.Caption := dm.Query1.FieldByName('cpa_nombre').AsString;
  end
  else
    lbcondicion.Caption := ' ';

  if not QPedidoven_codigo.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select ven_nombre from vendedores');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ven_codigo = :ven');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('ven').Value := QPedidoven_codigo.Value;
    dm.Query1.Open;
    lbvendedor.Caption := dm.Query1.FieldByName('ven_nombre').AsString;
  end
  else
    lbvendedor.Caption := ' ';

  if not QPedidoMON_CODIGO.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select mon_sigla from moneda');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and mon_codigo = :mon');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('mon').Value := QPedidoMON_CODIGO.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      lbsimbolo1.Caption := dm.Query1.FieldByName('mon_sigla').AsString;
      lbsimbolo2.Caption := dm.Query1.FieldByName('mon_sigla').AsString;
      lbsimbolo3.Caption := dm.Query1.FieldByName('mon_sigla').AsString;
      lbsimbolo4.Caption := dm.Query1.FieldByName('mon_sigla').AsString;
    end;
  end;
   

end;

procedure TRPedido.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if QDetalleDET_CONITBIS.value = 'N' then
     lbItbis.caption := 'E'
  else
     lbItbis.caption := ' ';

  if (QDetalleDET_NOTA.IsNull) or (Trim(QDetalleDET_NOTA.Value) = '') then
  begin
    QRDBText10.Font.Style := QRDBText10.Font.Style - [fsbold];
    QRRichText2.Enabled := false;
    QRBand3.Height := 18;
  end
  else
  begin
    QRDBText10.Font.Style := QRDBText10.Font.Style + [fsbold];
    QRRichText2.Lines.Text := QDetalleDET_NOTA.Value;
    QRRichText2.Enabled := True;
    QRBand3.Height := 55;
  end;
     
end;

procedure TRPedido.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  PrintBand := trim(QDetalleDET_NOTA.Value) <> '';
end;

procedure TRPedido.QPedidoAfterOpen(DataSet: TDataSet);
begin
qSucursal.Open;
if (dm.QParametrospar_fac_preimpresa.Value = 'True') and (dm.QParametrospar_formato_preimpreso.Value = 'AutoServicios') then
    begin
    QRMemo1.Lines.Clear;
    if not QPedidoPED_IDCamion.IsNull then
    QRMemo1.Lines.Add('Codigo: '+QPedidoPED_IDCamion.Text);
    if not QPedidoPED_Placa.IsNull then
    QRMemo1.Lines.Add('Placa: '+QPedidoPED_Placa.Text);
    if not QPedidoPED_Marca.IsNull then
    QRMemo1.Lines.Add('Marca: '+QPedidoPED_Marca.Text);
    if not QPedidoPED_Modelo.IsNull then
    QRMemo1.Lines.Add('Modelo: '+QPedidoPED_Modelo.Text);
    if not QPedidoPED_Metraje.IsNull then
    QRMemo1.Lines.Add('Año: '+FormatFloat('#,0',QPedidoPED_Metraje.Value));
    if not QPedidoPED_Chofer.IsNull then
    QRMemo1.Lines.Add('Conducto: '+QPedidoPED_Chofer.Text);
    if not QPedidoPED_Compania.IsNull then
    QRMemo1.Lines.Add('Compañía: '+QPedidoPED_Compania.Text);
    end
    else
    if not QPedidoPED_NOTA.IsNull then
    QRMemo1.Lines.Text := QPedidoPED_NOTA.Value;

end;


end.
