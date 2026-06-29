unit RVENTA72;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, ADODB, QRCtrls, QuickRpt, QRPDFFilt, QRExport, ExtCtrls;

type
  TRDevolucionPreImpresa = class(TForm)
    QRBB: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QDevolucion: TADOQuery;
    QDevolucionEMP_CODIGO: TIntegerField;
    QDevolucionDEV_NUMERO: TIntegerField;
    QDevolucionFAC_FORMA: TIBStringField;
    QDevolucionTFA_CODIGO: TIntegerField;
    QDevolucionFAC_NUMERO: TIntegerField;
    QDevolucionDEV_FECHA: TDateTimeField;
    QDevolucionDEV_DESCUENTO: TFloatField;
    QDevolucionDEV_ITBIS: TFloatField;
    QDevolucionDEV_TOTAL: TFloatField;
    QDevolucionDEV_STATUS: TIBStringField;
    QDevolucionUSU_CODIGO: TIntegerField;
    QDevolucionVEN_CODIGO: TIntegerField;
    QDevolucionDEV_DEVDINERO: TIBStringField;
    QDevolucionCLI_CODIGO: TIntegerField;
    QDevolucionCAJ_CODIGO: TIntegerField;
    QDevolucionDEV_COMISION: TFloatField;
    QDevolucionDEV_PORCCOMISION: TFloatField;
    QDevolucionCLI_NOMBRE: TIBStringField;
    QDevolucionCLI_DIRECCION: TIBStringField;
    QDevolucionCLI_LOCALIDAD: TIBStringField;
    QDevolucionCLI_TELEFONO: TIBStringField;
    QDevolucionCLI_FAX: TIBStringField;
    QDevolucionVendedor: TStringField;
    QDevolucionsuc_codigo: TIntegerField;
    QDevoluciondev_nombre: TStringField;
    QDevolucionban_codigo: TIntegerField;
    QDevolucionche_numero: TIntegerField;
    QDevoluciondev_conitbis: TStringField;
    dsDevol: TDataSource;
    QDetalle: TADOQuery;
    QDetalleValor: TFloatField;
    QDetalleCalcDesc: TFloatField;
    QDetallePrecioItbis: TFloatField;
    QDetalleCalcItbis: TFloatField;
    QDetalleDevuelta: TFloatField;
    QDetalleEMP_CODIGO: TIntegerField;
    QDetalleDEV_NUMERO: TIntegerField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetallePRO_CODIGO: TIntegerField;
    QDetalleFAM_CODIGO: TIntegerField;
    QDetalleDEV_COSTO: TFloatField;
    QDetalleDEV_PRECIO: TFloatField;
    QDetallePRO_NOMBRE: TIBStringField;
    QDetalleDEV_CANTIDAD: TFloatField;
    QDetalleDEP_CODIGO: TIntegerField;
    QDetalleDEV_TOPECANTIDAD: TFloatField;
    QDetalleDEV_CONITBIS: TIBStringField;
    QDetalleDEV_DESCUENTO: TFloatField;
    QDetalleDEV_ITBIS: TFloatField;
    QDetalleDEV_CANTFACTURADA: TFloatField;
    QDetallePRO_RORIGINAL: TIBStringField;
    QDetallePRO_RFABRIC: TIBStringField;
    QDetallemar_codigo: TIntegerField;
    QDetalleven_codigo: TIntegerField;
    QDetallepro_servicio: TStringField;
    QDetalledet_comision: TBCDField;
    QDetalledet_escala: TStringField;
    QDetalledet_medida: TStringField;
    QDetallesuc_codigo: TIntegerField;
    QVendedor: TADOQuery;
    QVendedorVEN_NOMBRE: TIBStringField;
    QVendedorVEN_CODIGO: TIntegerField;
    QDetalledet_lote: TIntegerField;
    QDetalledet_cant_oferta: TBCDField;
    QDetalledet_fechavence: TDateTimeField;
    QDetalledet_vence: TStringField;
    QDetalledet_manejaescala: TStringField;
    QDetalledet_selectivo_ad: TBCDField;
    QDetalledet_selectivo_con: TBCDField;
    QDevoluciondev_nota: TMemoField;
    QDevolucionNCF_Fijo: TStringField;
    QDevolucionNCF_Secuencia: TBCDField;
    QDevoluciondev_selectivo_ad: TBCDField;
    QDevoluciondev_selectivo_con: TBCDField;
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
    qrdbtxtdev_nombre: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRLabel28: TQRLabel;
    lbCliente: TQRDBText;
    QRLabel29: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    lbNCF: TQRLabel;
    lbFactura: TQRLabel;
    QRLabel180: TQRLabel;
    QRLabel181: TQRLabel;
    QRLabel182: TQRLabel;
    QRLabel183: TQRLabel;
    QRLabel186: TQRLabel;
    QRLabel184: TQRLabel;
    QRLabel185: TQRLabel;
    QRLabel187: TQRLabel;
    QRLabel188: TQRLabel;
    QRLabel189: TQRLabel;
    QRLabel190: TQRLabel;
    lbprod: TQRDBText;
    QRDBText100: TQRDBText;
    QRDBText101: TQRDBText;
    QRDBText103: TQRDBText;
    QRDBText104: TQRDBText;
    QRDBText107: TQRDBText;
    QRDBText102: TQRDBText;
    QRDBText105: TQRDBText;
    QRShape24: TQRShape;
    QRLabel191: TQRLabel;
    QRLabel193: TQRLabel;
    QRDBText108: TQRDBText;
    QRDBText109: TQRDBText;
    QRExpr5: TQRExpr;
    QRLabel195: TQRLabel;
    QRLabel197: TQRLabel;
    QRLabel202: TQRLabel;
    QRDBText106: TQRDBText;
    QRDBText113: TQRDBText;
    QRLabel192: TQRLabel;
    QRLabel196: TQRLabel;
    QRLabel199: TQRLabel;
    QRLabel200: TQRLabel;
    QRLabel205: TQRLabel;
    QRLabel206: TQRLabel;
    QRShape26: TQRShape;
    QRLabel163: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText26: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText8: TQRDBText;
    QDevolucionncr_numero: TIntegerField;
    QDevolucionCLI_REFERENCIA: TStringField;
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure QRBBBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RDevolucionPreImpresa: TRDevolucionPreImpresa;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TRDevolucionPreImpresa.QDetalleCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis : Double;
begin
  if QDetalleDEV_CONITBIS.value = 'S' then
  begin
    NumItbis := strtofloat(format('%10.2f',[(QDetalleDEV_ITBIS.asfloat/100)+1]));
    if dm.QParametrospar_itbisincluido.Value = 'True' then
    begin
      Venta    := strtofloat(format('%10.2f',[(QDetalleDEV_PRECIO.value)/NumItbis]));
      QDetallePrecioItbis.value := strtofloat(format('%10.2f',[Venta]));
      QDetalleCalcDesc.value    := strtofloat(format('%10.2f',[(Venta *
                                 strtofloat(format('%10.2f',[QDetalleDEV_DESCUENTO.value])))/100]));

      QDetalleCalcItbis.value   := strtofloat(format('%10.2f',[(((Venta-QDetalleCalcDesc.value)+
                                                                (QDetalledet_selectivo_ad.Value+
                                                                QDetalledet_selectivo_con.Value))*
                                   strtofloat(format('%10.2f',[QDetalleDEV_ITBIS.Value])))/100]));
      QDetalleValor.value       := ((strtofloat(format('%10.2f',[Venta]))-
                                   strtofloat(format('%10.2f',[QDetalleCalcDesc.value])))+
                                   strtofloat(format('%10.2f',[QDetalledet_selectivo_ad.Value]))+
                                   strtofloat(format('%10.2f',[QDetalledet_selectivo_con.Value]))+
                                   strtofloat(format('%10.2f',[QDetalleCalcItbis.value])))*
                                   strtofloat(format('%10.2f',[QDetalleDEV_CANTIDAD.value]));
    end
    else
    begin
      Venta    := strtofloat(format('%10.2f',[(QDetalleDEV_PRECIO.value)]));
      QDetallePrecioItbis.value := strtofloat(format('%10.2f',[QDetalleDEV_PRECIO.value+
                                                              QDetalledet_selectivo_ad.Value+
                                                              QDetalledet_selectivo_con.Value]));
      QDetalleCalcDesc.value    := strtofloat(format('%10.2f',[(Venta *
                                 strtofloat(format('%10.2f',[QDetalleDEV_DESCUENTO.value])))/100]));

      if QDevoluciondev_conitbis.Value = 'True' then
        QDetalleCalcItbis.value   := strtofloat(format('%10.2f',[(((Venta-QDetalleCalcDesc.value)+
                                                                  (QDetalledet_selectivo_ad.Value+
                                                                  QDetalledet_selectivo_con.Value))*
                                     strtofloat(format('%10.2f',[QDetalleDEV_ITBIS.Value])))/100]))
      else
        QDetalleCalcItbis.value   := 0;

      QDetalleValor.value       := (((strtofloat(format('%10.2f',[QDetalleDEV_PRECIO.value]))-
                                   strtofloat(format('%10.2f',[QDetalleCalcDesc.value])))+
                                   strtofloat(format('%10.2f',[QDetalledet_selectivo_ad.Value]))+
                                   strtofloat(format('%10.2f',[QDetalledet_selectivo_con.Value])))+
                                   strtofloat(format('%10.2f',[QDetalleCalcItbis.value])))*
                                   strtofloat(format('%10.2f',[QDetalleDEV_CANTIDAD.value]));
    end;
  end
  else
  begin
    Venta := strtofloat(format('%10.2f',[QDetalleDEV_PRECIO.value]));
    QDetalleCalcDesc.value    := strtofloat(format('%10.2f',[(Venta * QDetalleDEV_DESCUENTO.value)/100]));
    QDetallePrecioItbis.value := strtofloat(format('%10.2f',[Venta]));
    QDetalleCalcItbis.value   := 0;
    QDetalleValor.value       := strtofloat(format('%10.2f',[(Venta-QDetalleCalcDesc.value)*QDetalleDEV_CANTIDAD.value]));
  end;
end;

procedure TRDevolucionPreImpresa.QRBBBeforePrint(Sender: TCustomQuickRep;
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
    dm.Query1.Parameters.ParamByName('mod').Value := 'RDevolucionPreImpresa';
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

end;

procedure TRDevolucionPreImpresa.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if not QDevolucionNCF_Fijo.IsNull then
    lbNCF.Caption := QDevolucionNCF_Fijo.AsString+FormatFloat('00000000',QDevolucionNCF_Secuencia.AsFloat)
  else
    lbNCF.Caption := ' ';
end;

end.
