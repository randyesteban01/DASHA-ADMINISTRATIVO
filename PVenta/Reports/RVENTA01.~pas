unit RVENTA01;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRPedidoSup = class(TQuickRep)
    QPedido: TADOQuery;
    QPedidoEMP_CODIGO: TIntegerField;
    QPedidoPED_TIPO: TIBStringField;
    QPedidoPED_NUMERO: TIntegerField;
    QPedidoPED_FECHA: TDateTimeField;
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
    QDetalleCalcItbis: TFloatField;
    QDetalleCalcDesc: TFloatField;
    QDetallePrecioItbis: TFloatField;
    QDetalleValor: TFloatField;
    QDetalleDET_CONITBIS: TIBStringField;
    QRBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRSysData1: TQRSysData;
    QRLabel7: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel29: TQRLabel;
    QRDBText24: TQRDBText;
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
    QRDBText15: TQRDBText;
    QRBand4: TQRBand;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRLabel22: TQRLabel;
    QRShape9: TQRShape;
    QRDBRichText1: TQRDBRichText;
    QRExpr1: TQRExpr;
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
    QRDBText9: TQRDBText;
    QDetalleValor2: TFloatField;
    QPedidosup_codigo: TIntegerField;
    lbTitulo: TQRLabel;
    QDetalleCalcCosto: TFloatField;
    QDetalleCalcCostoEmp: TFloatField;
    QDetalledet_costound: TBCDField;
    QDetalledet_costoemp: TBCDField;
    QDetalleValorItbisUnd: TFloatField;
    QDetalleValorItbisEmp: TFloatField;
    QDetalledet_medida: TStringField;
    QDetalleCostoNeto: TFloatField;
    QDetallePrecioItbisEmp: TFloatField;
    QDetalleCalcItbisEmp: TFloatField;
    QDetalleCalcDescEmp: TFloatField;
    QDetalleValorEmp: TFloatField;
    QRLabel3: TQRLabel;
    QRShape10: TQRShape;
    QRLabel12: TQRLabel;
    QRShape11: TQRShape;
    QRLabel16: TQRLabel;
    QRShape12: TQRShape;
    QRDBText13: TQRDBText;
    QPedidousu_nombre: TStringField;
    QRLabel17: TQRLabel;
    QRLabel23: TQRLabel;
    lbdepto: TQRLabel;
    lbgerente: TQRLabel;
    QPedidodep_codigo: TIntegerField;
    QRLabel30: TQRLabel;
    QRDBText25: TQRDBText;
    QDetallemedida: TStringField;
    lbcondicion: TQRLabel;
    QRLabel31: TQRLabel;
    QPedidocpa_codigo: TIntegerField;
    ChildBand1: TQRChildBand;
    QRRichText1: TQRRichText;
    QDetalleDET_NOTA: TMemoField;
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
    QPedidoPED_COTIZACION: TStringField;
    QPedidoped_solicitud_compra: TStringField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QPedidoAfterOpen(DataSet: TDataSet);
  private

  public

  end;

var
  RPedidoSup: TRPedidoSup;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRPedidoSup.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
  ger : integer;
begin
  {if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
     lbProd.DataField := 'PRO_CODIGO'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
     lbProd.DataField := 'PRO_RFABRIC'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
     lbProd.DataField := 'PRO_RORIGINAL';
}
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select cpa_nombre from condiciones');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and cpa_codigo = :cpa');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('cpa').Value := QPedidocpa_codigo.Value;
  dm.Query1.Open;
  if dm.Query1.RecordCount > 0 then
    lbcondicion.Caption := dm.Query1.FieldByName('cpa_nombre').Value
  else
    lbcondicion.Caption := '';
  

  lbdepto.Caption := '';
  lbgerente.Caption := '';
  if not QPedidodep_codigo.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select dep_nombre, ger_codigo from Departamentos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and dep_codigo = :dep');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.ParamByName('dep').Value := QPedidodep_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      lbdepto.Caption := dm.Query1.FieldByName('dep_nombre').AsString
    else
      lbdepto.Caption := '';

    if not dm.Query1.FieldByName('ger_codigo').IsNull then
    begin
      ger := dm.Query1.FieldByName('ger_codigo').AsInteger;
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select ger_nombre from gerentes');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and ger_codigo = :ger');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.ParamByName('ger').Value := ger;
      dm.Query1.Open;
      if dm.Query1.RecordCount > 0 then
        lbgerente.Caption := dm.Query1.FieldByName('ger_nombre').AsString
      else
        lbgerente.Caption := '';
    end;

  end;
end;

procedure TRPedidoSup.QDetalleCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis : Double;
  VentaEmp, NumItbisEmp : Double;
begin
  if QDetalleDET_CONITBIS.Value = 'S' then
  begin
    QDetalleCalcCosto.Value    := (QDetalleDET_COSTOUND.Value * QDetalleDET_ITBIS.Value)/100;
    QDetalleCalcCostoemp.Value := (QDetalleDET_COSTOEMP.Value * QDetalleDET_ITBIS.Value)/100;
  end
  else
  begin
    QDetalleCalcCosto.Value    := 0;
    QDetalleCalcCostoemp.Value := 0;
  end;
  QDetalleValorItbisUnd.value := QDetalleCalcCosto.Value + QDetalleDET_COSTOUND.Value;
  QDetalleValorItbisEmp.value := QDetalleCalcCostoemp.Value + QDetalleDET_COSTOEMP.Value;

  if QDetalledet_medida.AsString = 'Und' then
    QDetalleCostoNeto.Value := QDetalleDET_COSTOUND.Value + QDetalleCalcCosto.Value
  else
    QDetalleCostoNeto.Value := QDetalleDET_COSTOEMP.Value + QDetalleCalcCostoEmp.Value;


  //Unidad
  if QDetalleDET_CONITBIS.value = 'S' then
  begin
    NumItbis := strtofloat(format('%10.2f',[(QDetalleDET_ITBIS.asfloat/100)+1]));
    Venta    := strtofloat(format('%10.2f',[QDetalleDET_COSTOUND.value]));
{    QDetalleCalcDesc.value    := strtofloat(format('%10.2f',[(Venta *
                                 strtofloat(format('%10.2f',[QDetalleDET_DESCUENTO.value])))/100]));}
    QDetallePrecioItbis.value := strtofloat(format('%10.2f',[Venta]));
    QDetalleCalcItbis.value   := strtofloat(format('%10.2f',[((Venta-QDetalleCalcDesc.value)*
                                 strtofloat(format('%10.2f',[QDetalleDET_ITBIS.Value])))/100]));
    QDetalleValor.value       := ((strtofloat(format('%10.2f',[Venta]))-
                                 strtofloat(format('%10.2f',[QDetalleCalcDesc.value]))))*
                                 strtofloat(format('%10.2f',[QDetalleDET_CANTIDAD.value]));
  end
  else
  begin
    Venta := strtofloat(format('%10.2f',[QDetalleDET_COSTOUND.value]));
//    QDetalleCalcDesc.value    := strtofloat(format('%10.2f',[(Venta * QDetalleDET_DESCUENTO.value)/100]));
    QDetallePrecioItbis.value := strtofloat(format('%10.2f',[Venta]));
    QDetalleValor.value       := strtofloat(format('%10.2f',[(Venta-QDetalleCalcDesc.value)*QDetalleDET_CANTIDAD.value]));
    QDetalleCalcItbis.value   := 0;
  end;

  //Empaque
  if QDetalleDET_CONITBIS.value = 'S' then
  begin
    NumItbisEmp := strtofloat(format('%10.2f',[(QDetalleDET_ITBIS.asfloat/100)+1]));
    VentaEmp    := strtofloat(format('%10.2f',[QDetalleDET_COSTOEMP.value]));
{    QDetalleCalcDesc.value    := strtofloat(format('%10.2f',[(Venta *
                                 strtofloat(format('%10.2f',[QDetalleDET_DESCUENTO.value])))/100]));}
    QDetallePrecioItbisEmp.value := strtofloat(format('%10.2f',[VentaEmp]));
    QDetalleCalcItbisEmp.value   := strtofloat(format('%10.2f',[((VentaEmp-QDetalleCalcDescEmp.value)*
                                 strtofloat(format('%10.2f',[QDetalleDET_ITBIS.Value])))/100]));
    QDetalleValorEmp.value       := ((strtofloat(format('%10.2f',[VentaEmp]))-
                                 strtofloat(format('%10.2f',[QDetalleCalcDescEmp.value]))))*
                                 strtofloat(format('%10.2f',[QDetalleDET_CANTIDAD.value]));
  end
  else
  begin
    VentaEmp := strtofloat(format('%10.2f',[QDetalleDET_COSTOEMP.value]));
//    QDetalleCalcDesc.value    := strtofloat(format('%10.2f',[(Venta * QDetalleDET_DESCUENTO.value)/100]));
    QDetallePrecioItbisEmp.value := strtofloat(format('%10.2f',[VentaEmp]));
    QDetalleValorEmp.value       := strtofloat(format('%10.2f',[(VentaEmp-QDetalleCalcDescEmp.value)*QDetalleDET_CANTIDAD.value]));
    QDetalleCalcItbisEmp.value   := 0;
  end;
  if QDetalleDET_MEDIDA.Value = 'Emp' then QDetalleValor.Value := QDetalleValorEmp.Value;
end;

procedure TRPedidoSup.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRRichText1.Lines.Text := 'NOTA:'+UpperCase(QDetalleDET_NOTA.Value);
  if dm.QParametrospar_inv_imprime_comentario.AsString <> 'True' then
    PrintBand := (trim(QDetalleDET_NOTA.Value) <> '')
  else
    PrintBand := trim(QDetalleDET_NOTA.Value) <> '' ;

  if dm.QParametrospar_inv_imprime_comentario.AsString = 'True' then
  begin
    if trim(QDetalleDET_NOTA.Value) <> '' then
    begin
      QRRichText1.Lines.Text := 'NOTA:'+UpperCase(QDetalleDET_NOTA.Value);
    end;
  end;

  if QRRichText1.Lines.Count = 0 then
    ChildBand1.Height := 20;
end;

procedure TRPedidoSup.QPedidoAfterOpen(DataSet: TDataSet);
begin
qSucursal.Open;
end;

end.
