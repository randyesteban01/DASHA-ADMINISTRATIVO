unit RVENTA85;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, QRPDFFilt, QRExport ,ExtCtrls, DB, IBCustomDataSet, ADODB, Math;

type
  TRCotizacionPreimpresa = class(TForm)
    QRMSConsulting: TQuickRep;
    QRBand13: TQRBand;
    QRShape11: TQRShape;
    QRShape6: TQRShape;
    QRShape5: TQRShape;
    QRShape7: TQRShape;
    QRDBText52: TQRDBText;
    QRDBText53: TQRDBText;
    QRShape4: TQRShape;
    QRLabel75: TQRLabel;
    QRLabel169: TQRLabel;
    QRLabel170: TQRLabel;
    QRShape8: TQRShape;
    QRLabel76: TQRLabel;
    QRDBText54: TQRDBText;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    QRLabel95: TQRLabel;
    QRLabel121: TQRLabel;
    QRLabel122: TQRLabel;
    QRDBText62: TQRDBText;
    QRDBText67: TQRDBText;
    lbemail: TQRLabel;
    QRLabel126: TQRLabel;
    QRDBText68: TQRDBText;
    QRDBText69: TQRDBText;
    lbrnc2: TQRLabel;
    QRDBText71: TQRDBText;
    QRShape12: TQRShape;
    QRLabel125: TQRLabel;
    QRLabel127: TQRLabel;
    QRLabel128: TQRLabel;
    QRLabel129: TQRLabel;
    QRLabel130: TQRLabel;
    QRShape13: TQRShape;
    QRLabel131: TQRLabel;
    QRLabel132: TQRLabel;
    lbcontacto: TQRLabel;
    QRBand15: TQRBand;
    QRDBText75: TQRDBText;
    QRDBText76: TQRDBText;
    QRDBText77: TQRDBText;
    QRDBText78: TQRDBText;
    QRDBText80: TQRDBText;
    QRImage1: TQRImage;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRBand12: TQRBand;
    QRShape22: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape3: TQRShape;
    QRLabel156: TQRLabel;
    QRLabel158: TQRLabel;
    QRLabel159: TQRLabel;
    QRDBText82: TQRDBText;
    QRDBText83: TQRDBText;
    QRExpr4: TQRExpr;
    QRLabel166: TQRLabel;
    QRShape19: TQRShape;
    QRLabel133: TQRLabel;
    QRLabel134: TQRLabel;
    QRLabel135: TQRLabel;
    QRShape23: TQRShape;
    QRLabel136: TQRLabel;
    QRDBText72: TQRDBText;
    QRDBText79: TQRDBText;
    QRDBText81: TQRDBText;
    QRRichText1: TQRRichText;
    QRLabel2: TQRLabel;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QCotizacion: TADOQuery;
    QCotizacionCLI_CODIGO: TIntegerField;
    QCotizacionCLI_REFERENCIA: TIBStringField;
    QCotizacionCOT_DIRECCION: TIBStringField;
    QCotizacionCOT_FAX: TIBStringField;
    QCotizacionCOT_FECHA: TDateTimeField;
    QCotizacionCOT_ITBIS: TFloatField;
    QCotizacionCOT_LOCALIDAD: TIBStringField;
    QCotizacionCOT_NOMBRE: TIBStringField;
    QCotizacionCOT_NUMERO: TIntegerField;
    QCotizacionCOT_STATUS: TIBStringField;
    QCotizacionCOT_TELEFONO: TIBStringField;
    QCotizacionCOT_TOTAL: TFloatField;
    QCotizacionEMP_CODIGO: TIntegerField;
    QCotizacionUSU_CODIGO: TIntegerField;
    QCotizacionVEN_CODIGO: TIntegerField;
    QCotizacionSubTotal: TFloatField;
    dsCotizacion: TDataSource;
    QDetalle: TADOQuery;
    QDetalleCOT_NUMERO: TIntegerField;
    QDetalleDET_CANTIDAD: TFloatField;
    QDetalleDET_CONITBIS: TIBStringField;
    QDetalleDET_ITBIS: TFloatField;
    QDetalleDET_PRECIO: TFloatField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    QDetallePRO_BARRA: TIBStringField;
    QDetallePRO_CODIGO: TIntegerField;
    QDetallePRO_NOMBRE: TIBStringField;
    QDetallePRO_RFABRIC: TIBStringField;
    QDetallePRO_RORIGINAL: TIBStringField;
    QDetalleCalcItbis: TFloatField;
    QDetalleCalcDesc: TFloatField;
    QDetallePrecioItbis: TFloatField;
    QDetalleValor: TFloatField;
    QDetalleDET_NOTA: TMemoField;
    QDetallepro_foto: TStringField;
    QRBelkis: TQuickRep;
    QRBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
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
    QRLabel29: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRLabel64: TQRLabel;
    QRBand2: TQRBand;
    QRLabel240: TQRLabel;
    QRLabel241: TQRLabel;
    QRLabel242: TQRLabel;
    QRLabel248: TQRLabel;
    QRLabel249: TQRLabel;
    QRLabel244: TQRLabel;
    QRLabel239: TQRLabel;
    QRBand21: TQRBand;
    QRDBText130: TQRDBText;
    QRDBText131: TQRDBText;
    QRDBText132: TQRDBText;
    QRDBText133: TQRDBText;
    QRDBText134: TQRDBText;
    QRDBText135: TQRDBText;
    QRDBText129: TQRDBText;
    QDetallepro_unidad_medida: TStringField;
    QDetalleCalcItbisTotal: TFloatField;
    QDetallePrecioNeto: TFloatField;
    QRBand4: TQRBand;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRLabel22: TQRLabel;
    QRShape9: TQRShape;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel18: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel39: TQRLabel;
    lbReimpresion: TQRLabel;
    QRDBText121: TQRDBText;
    QRLabel215: TQRLabel;
    QRDBText122: TQRDBText;
    QRDBText123: TQRDBText;
    QRDBText124: TQRDBText;
    QRLabel216: TQRLabel;
    QRDBText125: TQRDBText;
    QRLabel226: TQRLabel;
    QRLabel227: TQRLabel;
    QRLabel214: TQRLabel;
    QRDBText136: TQRDBText;
    QRLabel225: TQRLabel;
    QRDBImage1: TQRDBImage;
    QRTHorton: TQuickRep;
    QRBand23: TQRBand;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRShape36: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel230: TQRLabel;
    QRLabel243: TQRLabel;
    QRShape37: TQRShape;
    QRLabel245: TQRLabel;
    QRDBText141: TQRDBText;
    QRLabel246: TQRLabel;
    QRLabel247: TQRLabel;
    QRLabel251: TQRLabel;
    QRLabel252: TQRLabel;
    QRLabel253: TQRLabel;
    QRDBText142: TQRDBText;
    QRDBText143: TQRDBText;
    lbemail2: TQRLabel;
    QRDBText144: TQRDBText;
    QRDBText146: TQRDBText;
    QRShape38: TQRShape;
    QRLabel265: TQRLabel;
    QRLabel267: TQRLabel;
    QRLabel268: TQRLabel;
    QRShape39: TQRShape;
    QRLabel269: TQRLabel;
    QRLabel270: TQRLabel;
    QRLabel261: TQRLabel;
    QRLabel263: TQRLabel;
    lbvendedor: TQRLabel;
    QRBand24: TQRBand;
    QRDBText150: TQRDBText;
    QRDBText151: TQRDBText;
    QRRichText2: TQRRichText;
    QRDBText148: TQRDBText;
    QRBand25: TQRBand;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRLabel272: TQRLabel;
    QRLabel273: TQRLabel;
    QRLabel274: TQRLabel;
    QRDBText153: TQRDBText;
    QRDBText154: TQRDBText;
    QRExpr9: TQRExpr;
    QRDBRichText2: TQRDBRichText;
    QRShape49: TQRShape;
    lbsimbolo1: TQRLabel;
    lbsimbolo2: TQRLabel;
    lbsimbolo3: TQRLabel;
    QDetalleValor2: TFloatField;
    QDetalledet_descuento: TBCDField;
    QCotizacionMON_CODIGO: TIntegerField;
    QRLabel1: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QCotizacioncpa_codigo: TIntegerField;
    QCotizacioncot_validez: TIntegerField;
    QCotizacioncot_tiempo_entrega: TStringField;
    QRDBText3: TQRDBText;
    QCotizacionValidez: TStringField;
    QRDBText4: TQRDBText;
    lbcondicion: TQRLabel;
    QCotizacioncot_nota: TMemoField;
    QRLabel13: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel14: TQRLabel;
    lbusuario: TQRLabel;
    QCotizacioncot_contacto: TStringField;
    QRDBText8: TQRDBText;
    QRLabel32: TQRLabel;
    lbsimbolo4: TQRLabel;
    QRDBText9: TQRDBText;
    QCotizacioncot_descuento: TBCDField;
    QRShape2: TQRShape;
    ChildBand1: TQRChildBand;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QCotizacioncot_proyecto: TStringField;
    QRDBText10: TQRDBText;
    QDetalleCantidad: TStringField;
    QRDBImage2: TQRDBImage;
    QCotizacioncot_rnc: TStringField;
    QRDBText11: TQRDBText;
    QCotizacioncot_solicitud: TIntegerField;
    QRLabel37: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel275: TQRLabel;
    QRShape48: TQRShape;
    QRMateirosa: TQuickRep;
    QRBand3: TQRBand;
    QRShape10: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRShape27: TQRShape;
    QRLabel38: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRShape28: TQRShape;
    QRLabel42: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText23: TQRDBText;
    eMail: TQRLabel;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRShape29: TQRShape;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRShape30: TQRShape;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    qlVendedor: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRDBText29: TQRDBText;
    QRLabel65: TQRLabel;
    QRDBText30: TQRDBText;
    QRDBImage3: TQRDBImage;
    QRDBText31: TQRDBText;
    QRLabel66: TQRLabel;
    QRDBText32: TQRDBText;
    QRBand5: TQRBand;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRRichText3: TQRRichText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRBand6: TQRBand;
    QRShape31: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRExpr2: TQRExpr;
    QRDBRichText1: TQRDBRichText;
    QRShape43: TQRShape;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRDBText42: TQRDBText;
    QRDBText45: TQRDBText;
    QRLabel77: TQRLabel;
    QRShape44: TQRShape;
    QRChildBand1: TQRChildBand;
    QRLabel78: TQRLabel;
    QDetalleSubTotal: TCurrencyField;
    QRDBText152: TQRExpr;
    QRLabel48: TQRLabel;
    QRDBText46: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure QRBand15BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRMSConsultingBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand24BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRTHortonBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QCotizacionCalcFields(DataSet: TDataSet);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand23BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    idioma : string;
  end;

var
  RCotizacionPreimpresa: TRCotizacionPreimpresa;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TRCotizacionPreimpresa.QDetalleCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis, vPrec, vDesc, vCant : Double;
  a : integer;
  cant : string;
begin
  try
  begin
    cant := FloatToStr(QDetalleDET_CANTIDAD.Value);
    if Trim(Copy(Cant,Pos('.',cant),length(Cant))) = '.25' then
    begin
      if QDetalleDET_CANTIDAD.Value > 1 then
        QDetalleCantidad.Value := Trim(Copy(Cant,1,Pos('.',cant)-1)) + ' 1/4'
      else
        QDetalleCantidad.Value := '* 1/4';
    end
    else if Trim(Copy(Cant,Pos('.',cant),length(Cant))) = '.5' then
    begin
      if QDetalleDET_CANTIDAD.Value > 1 then
        QDetalleCantidad.Value := Trim(Copy(Cant,1,Pos('.',cant)-1)) + ' 1/2'
      else
        QDetalleCantidad.Value := '* 1/2';
    end
    else if Trim(Copy(Cant,Pos('.',cant),length(Cant))) = '.75' then
    begin
      if QDetalleDET_CANTIDAD.Value > 1 then
        QDetalleCantidad.Value := Trim(Copy(Cant,1,Pos('.',cant)-1)) + ' 3/4'
      else
        QDetalleCantidad.Value := '* 3/4';
    end
    else
      QDetalleCantidad.Value := '* '+FloatToStr(QDetalleDET_CANTIDAD.Value);
  end
  except
  end;

  if QDetalleDET_ITBIS.asfloat > 0 then
  begin
    NumItbis := RoundTo((QDetalleDET_ITBIS.asfloat/100)+1, -2);
    if dm.QParametrospar_itbisincluido.Value = 'True' then
    begin
      Venta := (QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value)/NumItbis;
      QDetallePrecioItbis.value := RoundTo((QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value)/NumItbis, -2);
      QDetalleCalcDesc.value    := RoundTo(((QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value)/NumItbis * QDetalleDET_DESCUENTO.value)/100, -2);
      QDetalleCalcItbis.value   := RoundTo(((((QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value)/NumItbis) - QDetalleCalcDesc.value) * QDetalleDET_ITBIS.value) / 100, -2);
      QDetalleValor.value     := (QDetallePrecioItbis.value - QDetalleCalcDesc.value + QDetalleCalcItbis.value);
      QDetalleCalcItbis.value := RoundTo(QDetalleCalcItbis.value, -2);
    end
    else
    begin
      Venta := QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value;
      QDetallePrecioItbis.value := Venta;
      QDetalleCalcDesc.value    := RoundTo(((QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value) * QDetalleDET_DESCUENTO.value)/100, -4);
      QDetalleCalcItbis.value := RoundTo((((QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value) - QDetalleCalcDesc.value)* QDetalleDET_ITBIS.value) / 100, -2);
      QDetalleCalcItbis.value := RoundTo(QDetalleCalcItbis.value, -2);
      QDetalleValor.value     := (QDetallePrecioItbis.value - QDetalleCalcDesc.value + QDetalleCalcItbis.value);
    end;
  end
  else
  begin
    Venta := QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value;
    QDetalleCalcDesc.value    := (Venta * QDetalleDET_DESCUENTO.value)/100;
    QDetallePrecioItbis.value := Venta;
    QDetalleCalcItbis.value   := 0;
    QDetalleValor.value       := (Venta-QDetalleCalcDesc.value);
  end;
  QDetalleValor2.Value := QDetallePrecioItbis.Value * QDetalleDET_CANTIDAD.Value;

(*

 if QDetalleDET_ITBIS.asfloat > 0 then
  begin
    NumItbis := RoundTo((QDetalleDET_ITBIS.asfloat/100)+1, -2);
    if dm.QParametrospar_itbisincluido.Value = 'True' then
    begin
      Venta := (QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value)/NumItbis;
      QDetallePrecioItbis.value := RoundTo((QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value)/NumItbis, -2);
      QDetalleCalcDesc.value    := RoundTo(((QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value)/NumItbis * QDetalleDET_DESCUENTO.value)/100, -2);
      QDetalleCalcItbis.value   := RoundTo(((((QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value)/NumItbis) - QDetalleCalcDesc.value) * QDetalleDET_ITBIS.value) / 100, -2);
      QDetalleValor.value     := (QDetallePrecioItbis.value - QDetalleCalcDesc.value + QDetalleCalcItbis.value);
      QDetalleCalcItbis.value := RoundTo(QDetalleCalcItbis.value, -2);
    end
    else
    begin
      Venta := QDetalleDET_PRECIO.value* QDetalleDET_CANTIDAD.Value;
      QDetallePrecioItbis.value := Venta;
      QDetalleCalcDesc.value    := RoundTo(((QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value) * QDetalleDET_DESCUENTO.value)/100, -4);
      QDetalleCalcItbis.value := RoundTo((((QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value) - QDetalleCalcDesc.value)* QDetalleDET_ITBIS.value) / 100, -2);
      QDetalleCalcItbis.value := RoundTo(QDetalleCalcItbis.value, -2);
      QDetalleValor.value     := (QDetallePrecioItbis.value - QDetalleCalcDesc.value + QDetalleCalcItbis.value);
    end;
  end
  else
  begin
    Venta := QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value;
    QDetalleCalcDesc.value    := (Venta * QDetalleDET_DESCUENTO.value)/100;
    QDetallePrecioItbis.value := QDetalleDET_PRECIO.value;
    QDetalleCalcItbis.value   := 0;
    QDetalleValor.value       := (Venta-QDetalleCalcDesc.value);
  end;
  QDetalleValor2.Value := QDetallePrecioItbis.Value * QDetalleDET_CANTIDAD.Value;
  *)
end;

procedure TRCotizacionPreimpresa.QRBand15BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRImage1.Picture.LoadFromFile(QDetallepro_foto.Value);
end;

procedure TRCotizacionPreimpresa.QRMSConsultingBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select cli_email, cli_rnc, cli_contacto from clientes');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and cli_codigo = :cli');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('cli').Value := QCotizacionCLI_CODIGO.Value;
  dm.Query1.Open;
  lbrnc2.Caption     := dm.Query1.FieldByName('cli_rnc').AsString;
  lbemail.Caption    := dm.Query1.FieldByName('cli_email').AsString;
  lbcontacto.Caption := dm.Query1.FieldByName('cli_contacto').AsString;
end;

procedure TRCotizacionPreimpresa.QRBand24BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if (QDetalleDET_CANTIDAD.Value = 0) or (QDetalleDET_CANTIDAD.IsNull) then
  begin
    QRDBText151.Enabled := false;
    QRDBText152.Enabled := False;
    QRDBText150.Enabled := False;
  end
  else
  begin
    QRDBText151.Enabled := true;
    QRDBText152.Enabled := true;
    QRDBText150.Enabled := true;
  end;
  if (QDetalleDET_NOTA.IsNull) or (Trim(QDetalleDET_NOTA.Value) = '') then
  begin
    QRRichText2.Enabled := false;
    QRBand24.Height := 18;
    QRDBText148.Font.Style := QRDBText148.Font.Style - [fsbold];
    QRDBText5.Font.Style := QRDBText148.Font.Style - [fsbold];
  end
  else
  begin
    QRDBText148.Font.Style := QRDBText148.Font.Style + [fsbold];
    QRDBText5.Font.Style := QRDBText148.Font.Style + [fsbold];
    QRRichText2.Lines.Text := QDetalleDET_NOTA.Value;
    QRRichText2.Enabled := True;
    //QRBand24.Height := 60;
  end;
end;

procedure TRCotizacionPreimpresa.QRTHortonBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  if idioma = 'IN' then
  begin
     QRLabel261.Caption := 'NCR:';
     QRLabel9.Caption   := 'Quotation';
     QRLabel230.Caption := 'Date';
     QRLabel243.Caption := 'Number';
     QRLabel245.Caption := 'Client:';
     QRLabel246.Caption := 'NCR:';
     QRLabel247.Caption := 'Contact:';
     QRLabel251.Caption := 'Address:';
     QRLabel252.Caption := 'Phone:';
     QRLabel263.Caption := 'Salesman:';
     QRLabel1.Caption   := 'Terms:';
     QRLabel10.Caption  := 'Valid for:';
     QRLabel11.Caption  := 'Deliver Time:';
     QRLabel14.Caption  := 'Made by:';
     QRLabel35.Caption  := '***** Last line of detail *****';
     QRLabel32.Caption  := 'Discount';
     QRLabel273.Caption := 'Taxes:';
     QRLabel13.Caption  := 'Reference';
     QRLabel265.Caption := 'Product / Service Description';
     QRLabel267.Caption := 'Qty.';
     QRLabel268.Caption := 'Price';
     QRLabel269.Caption := 'Value';
  end;

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select cli_email, cli_rnc, cli_contacto from clientes');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and cli_codigo = :cli');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('cli').Value := QCotizacionCLI_CODIGO.Value;
  dm.Query1.Open;
  if dm.Query1.RecordCount > 0 then
  begin
    lbemail2.Caption    := dm.Query1.FieldByName('cli_email').AsString;
    //lbcontacto2.Caption := dm.Query1.FieldByName('cli_contacto').AsString;
  end
  else
  begin
    lbemail2.Caption := '';
    //lbcontacto2.Caption := '';
  end;

  if not QCotizacionVEN_CODIGO.IsNull then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select ven_nombre, ven_email from vendedores');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and ven_codigo = :ven');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('ven').Value := QCotizacionVEN_CODIGO.Value;
    dm.Query1.Open;
    if dm.Query1.FieldbyName('ven_email').AsString <> '' then
      lbvendedor.Caption := dm.Query1.FieldbyName('ven_nombre').AsString+', email: '+
                            dm.Query1.FieldbyName('ven_email').AsString
    else
      lbvendedor.Caption := dm.Query1.FieldbyName('ven_nombre').AsString;
  end
  else
    lbvendedor.Caption := ' ';

  if not QCotizacionmon_codigo.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select mon_sigla from moneda');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and mon_codigo = :mon');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('mon').Value := QCotizacionmon_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      QRLabel270.Caption := 'VALOR EN '+dm.Query1.FieldByName('mon_sigla').AsString;
      lbsimbolo1.Caption := dm.Query1.FieldByName('mon_sigla').AsString;
      lbsimbolo2.Caption := dm.Query1.FieldByName('mon_sigla').AsString;
      lbsimbolo3.Caption := dm.Query1.FieldByName('mon_sigla').AsString;
      lbsimbolo4.Caption := dm.Query1.FieldByName('mon_sigla').AsString;
    end;
  end;

  if not QCotizacioncpa_codigo.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cpa_nombre from condiciones');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cpa_codigo = :cpa');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cpa').Value := QCotizacioncpa_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      lbcondicion.Caption := dm.Query1.FieldByName('cpa_nombre').Value
    else
      lbcondicion.Caption := '';
  end
  else
    lbcondicion.Caption := '';



  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select usu_nombre from usuarios');
  dm.Query1.sql.add('where usu_codigo = :usu');
  dm.Query1.Parameters.ParamByName('usu').Value := QCotizacionUSU_CODIGO.Value;
  dm.Query1.Open;
  lbusuario.Caption := dm.Query1.FieldByName('usu_nombre').AsString;

  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
     QRDBText5.DataField := 'PRO_CODIGO'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
     QRDBText5.DataField := 'PRO_RFABRIC'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
     QRDBText5.DataField := 'PRO_RORIGINAL';


  end;

procedure TRCotizacionPreimpresa.QCotizacionCalcFields(DataSet: TDataSet);
begin
  if QCotizacioncot_validez.AsInteger > 0 then
    QCotizacionvalidez.Value := inttostr(QCotizacioncot_validez.AsInteger) + ' D�as';
end;

procedure TRCotizacionPreimpresa.ChildBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if QDetalle.RecordCount = QDetalle.RecNo then PrintBand := true else PrintBand := false;
end;

procedure TRCotizacionPreimpresa.QRBand23BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  LmsImagen : TADOBlobStream;
begin
  QRLabel60.caption := dm.getCondicionPago(dm.vp_cia,QCotizacioncpa_codigo.Value);
  QRLabel63.caption := dm.getNombreUsuario(QCotizacionUSU_CODIGO.Value);

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select cli_email, cli_rnc, cli_contacto from clientes');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and cli_codigo = :cli');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('cli').Value := QCotizacionCLI_CODIGO.Value;
  dm.Query1.Open;
  if dm.Query1.RecordCount > 0 then
    eMail.Caption    := dm.Query1.FieldByName('cli_email').AsString
  else
    eMail.Caption    := '';



     if not QCotizacionVEN_CODIGO.IsNull then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select ven_nombre, ven_email from vendedores');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and ven_codigo = :ven');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('ven').Value := QCotizacionVEN_CODIGO.Value;
    dm.Query1.Open;
    if dm.Query1.FieldbyName('ven_email').AsString <> '' then
       qlVendedor.Caption := dm.Query1.FieldbyName('ven_nombre').AsString+', email: '+
                            dm.Query1.FieldbyName('ven_email').AsString
    else
       qlVendedor.Caption := dm.Query1.FieldbyName('ven_nombre').AsString;
  end




  {LmsImagen := TADOBlobStream.Create(TBlobField(dm.QEmpresas.FieldbyName('EMP_LOGO')),bmRead);
  QRImage2.Picture.Bitmap.LoadFromStream(LmsImagen);}
end;

end.
