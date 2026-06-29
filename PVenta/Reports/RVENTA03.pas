unit RVENTA03;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB,DelphiZXingQRCode;

type
  TRDevolucion = class(TQuickRep)
    QRBand1: TQRBand;
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
    QRDBText22: TQRDBText;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRDBText24: TQRDBText;
    lblVendedor: TQRLabel;
    QRBand2: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    lbldDescuento: TQRLabel;
    lblDItbis: TQRLabel;
    QRLabel14: TQRLabel;
    QRBand3: TQRBand;
    lbProd: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    dtaDescuento: TQRDBText;
    dtaItbis: TQRDBText;
    dtaValor: TQRDBText;
    QRBand4: TQRBand;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRLabel22: TQRLabel;
    QRShape9: TQRShape;
    QRLabel23: TQRLabel;
    QRShape10: TQRShape;
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
    QRDBText9: TQRDBText;
    dsDevol: TDataSource;
    QDetalle: TADOQuery;
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
    QDetalleValor: TFloatField;
    QDetalleCalcDesc: TFloatField;
    QDetallePrecioItbis: TFloatField;
    QDetalleCalcItbis: TFloatField;
    QDetalleDevuelta: TFloatField;
    QDetallePRO_RORIGINAL: TIBStringField;
    QDetallePRO_RFABRIC: TIBStringField;
    QDevolucionCAJ_CODIGO: TIntegerField;
    QDevolucionDEV_COMISION: TFloatField;
    QDevolucionDEV_PORCCOMISION: TFloatField;
    QDevolucionCLI_NOMBRE: TIBStringField;
    QDevolucionCLI_DIRECCION: TIBStringField;
    QDevolucionCLI_LOCALIDAD: TIBStringField;
    QDevolucionCLI_TELEFONO: TIBStringField;
    QDevolucionCLI_FAX: TIBStringField;
    QVendedor: TADOQuery;
    QVendedorVEN_NOMBRE: TIBStringField;
    QVendedorVEN_CODIGO: TIntegerField;
    QDevolucionVendedor: TStringField;
    QDetallemar_codigo: TIntegerField;
    QDetalleven_codigo: TIntegerField;
    QDetallepro_servicio: TStringField;
    QDetalledet_comision: TBCDField;
    QDetalledet_escala: TStringField;
    QDetalledet_medida: TStringField;
    QDevolucionsuc_codigo: TIntegerField;
    QDevoluciondev_nombre: TStringField;
    QDevolucionban_codigo: TIntegerField;
    QDevolucionche_numero: TIntegerField;
    QDevoluciondev_conitbis: TStringField;
    QDetallesuc_codigo: TIntegerField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QDevoluciondev_nota: TMemoField;
    QDevolucionNCF_Fijo: TStringField;
    QDevolucionNCF_Secuencia: TBCDField;
    QDevolucionusu_nombre: TStringField;
    lbNCF: TQRLabel;
    lbFactura: TQRLabel;
    lbReimpresion: TQRLabel;
    QDevoluciondev_selectivo_ad: TBCDField;
    QDevoluciondev_selectivo_con: TBCDField;
    QDevolucionvNCF: TStringField;
    QDetalledet_lote: TIntegerField;
    QDetalledet_cant_oferta: TBCDField;
    QDetalledet_fechavence: TDateTimeField;
    QDetalledet_vence: TStringField;
    QDetalledet_manejaescala: TStringField;
    QDetalledet_selectivo_ad: TBCDField;
    QDetalledet_selectivo_con: TBCDField;
    QDetallealm_codigo: TIntegerField;
    QDetallepro_unidad_medida: TStringField;
    QDevolucionticket_caja: TIntegerField;
    QDevolucionticket_cajero: TIntegerField;
    QDevolucionticket_numero: TIntegerField;
    QDevolucionticket_fecha: TDateTimeField;
    QDevoluciondev_usuario_anulo: TStringField;
    QDevoluciondev_motivo_anulo: TStringField;
    QDevolucionmot_codigo: TIntegerField;
    QDevoluciondev_fecha_factura: TDateTimeField;
    QDevolucionNCF: TStringField;
    QRLabel3: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText26: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText25: TQRDBText;
    QDevolucionDEV_RECARGO: TCurrencyField;
    QRLabel17: TQRLabel;
    QRDBText27: TQRDBText;
    QDevolucionNCR_NUMERO: TIntegerField;
    QRLabel18: TQRLabel;
    QRExpr1: TQRExpr;
    QDevolucionMONEDA: TStringField;
    QDevolucionDEV_TASA: TCurrencyField;
    QRDBText28: TQRDBText;
    QDetalleDEV_TASA: TCurrencyField;
    QRDBText19: TQRDBText;
    qrdbtxtdev_nombre: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText23: TQRDBText;
    QDevolucioneNCF: TStringField;
    qrImgQRCode: TQRImage;
    lblcodigoseg: TQRLabel;
    lblFirmaDigital: TQRLabel;
    txtFirma: TQRDBText;
    txtCodigoSeguridad: TQRDBText;
    QDevolucionfechafirma: TStringField;
    QDevolucioncodigoseguridad: TStringField;
    QDevolucionUrlCodigoQR: TMemoField;
    QDevolucionAceptadoDGII: TBooleanField;
    QDetalledev_montoItem: TFloatField;
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
   procedure GenerarCodigoQR(const Texto: string; Imagen: TQRImage);
  end;

var
  RDevolucion: TRDevolucion;

implementation

uses SIGMA01, StdConvs;


{$R *.DFM}

procedure TRDevolucion.QDetalleCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis : Double;
begin
  if QDetalleDEV_CONITBIS.value = 'S' then
  begin
    NumItbis := strtofloat(format('%10.2f',[((QDetalleDEV_ITBIS.asfloat)/100)+1]));
    if dm.QParametrospar_itbisincluido.Value = 'True' then
    begin
      Venta    := ((QDetalleDEV_PRECIO.value)/NumItbis);
      QDetallePrecioItbis.value := Venta;
      QDetalleCalcDesc.value    := ((Venta * QDetalleDEV_DESCUENTO.value)/100);

      QDetalleCalcItbis.value   := ((((Venta-QDetalleCalcDesc.value)+(QDetalledet_selectivo_ad.Value+QDetalledet_selectivo_con.Value))*
                                   QDetalleDEV_ITBIS.Value)/100);
      QDetalleValor.value       := (((Venta-QDetalleCalcDesc.value)+QDetalledet_selectivo_ad.Value+
                                   QDetalledet_selectivo_con.Value+QDetalleCalcItbis.value))*
                                   qdetalledev_cantidad.Value;
    end
    else
    begin
      Venta    := QDetalleDEV_PRECIO.value;
      QDetallePrecioItbis.value := (QDetalleDEV_PRECIO.value)+QDetalledet_selectivo_ad.Value+QDetalledet_selectivo_con.Value;
      QDetalleCalcDesc.value    := (Venta *QDetalleDEV_DESCUENTO.value)/100;
      QDetalleCalcItbis.value   := ((((Venta-QDetalleCalcDesc.value)+(QDetalledet_selectivo_ad.Value+QDetalledet_selectivo_con.Value))*
                                   QDetalleDEV_ITBIS.Value)/100);

      QDetalleValor.value       := (((VENTA-QDetalleCalcDesc.value)+
                                   QDetalledet_selectivo_ad.Value+QDetalledet_selectivo_con.Value)+
                                   QDetalleCalcItbis.value)*qdetalledev_cantidad.Value;
    end;
  end
  else
  begin
    Venta := QDetalleDEV_PRECIO.value;
    QDetalleCalcDesc.value    := (Venta * QDetalleDEV_DESCUENTO.value)/100;
    QDetallePrecioItbis.value := Venta*QDetalleDEV_CANTIDAD.value;;
    QDetalleCalcItbis.value   := 0;
    QDetalleValor.value       := (Venta-QDetalleCalcDesc.value)*QDetalleDEV_CANTIDAD.value;
  end;
end;

procedure TRDevolucion.QuickRepBeforePrint(Sender: TCustomQuickRep;
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
    dm.Query1.Parameters.ParamByName('mod').Value := 'RDevolucion';
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

  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
     lbProd.DataField := 'PRO_CODIGO'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
     lbProd.DataField := 'PRO_RFABRIC'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
     lbProd.DataField := 'PRO_RORIGINAL';

  {dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select ncf_fijo, ncf_secuencia from notascredito');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and suc_codigo = :suc');
  dm.Query1.SQL.Add('and ncr_devolucion = :dev');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('suc').Value := QDevolucionsuc_codigo.Value;
  dm.Query1.Parameters.ParamByName('dev').Value := QDevolucionDEV_NUMERO.Value;
  dm.Query1.Open;}

  {if not dm.Query1.FieldByName('ncf_fijo').IsNull then
    lbNCF.Caption := 'NCF: '+dm.Query1.FieldByName('ncf_fijo').AsString + FormatFloat('00000000',dm.Query1.FieldByName('ncf_secuencia').AsFloat)
  else
    lbNCF.Caption := ' ';}

  if DM.QParametrospar_formato_preimpreso.Value <> 'Sarita & Asociados' then begin
  QRLabel15.Enabled:= False;
  QRLabel21.Top := QRLabel15.Top;
  QRDBText25.Enabled := False;
  QRDBText18.Top := QRDBText25.Top;
  end
  else
  begin
  QRLabel15.Enabled:= True;
  QRLabel21.Top := 76;
  QRDBText25.Enabled := True;
  QRDBText18.Top := 76;
  end;

    if  dm.QParametrosUsa_FacturacionElectronica.Value  then
    begin
    GenerarCodigoQR(QDevolucionUrlCodigoQR.AsString, qrImgQRCode)  end
    else 
    begin
      qrImgQRCode.Visible:=False;
      lblcodigoseg.Caption:= '';
      lblFirmaDigital.Caption:='';
      txtCodigoSeguridad.Visible:=False;
      txtFirma.Visible:=False;
    end;

    if (not QDevolucionAceptadoDGII.Value) and (not dm.QParametrosintegracion_luganis.AsBoolean) then
    
   begin
      lblcodigoseg.Caption:= '';
      lblFirmaDigital.Caption:='';
      txtCodigoSeguridad.Visible:=False;
      txtFirma.Visible:=False;
   end;

   if DM.QParametrosintegracion_luganis.AsBoolean then
  begin
    dtaItbis.DataField:='';
    dtaDescuento.DataField:='';
    lblDItbis.Caption:='';
    lbldDescuento.Caption:='';
    lblVendedor.Caption := 'Contratista:';
    dtaValor.DataField:='dev_montoItem'
  end
  else
  begin

    lblVendedor.Caption := 'Vendedor';


  end;



end;
procedure TRDevolucion.GenerarCodigoQR(const Texto: string; Imagen: TQRImage);
var
  QRCode: TDelphiZXingQRCode;
  Bitmap: TBitmap;
  QRSize: Integer;
  ModuleSize: Integer;
  i, j: Integer;
begin
  QRCode := TDelphiZXingQRCode.Create;
  try
    QRCode.Data := Texto;
    QRCode.QuietZone := 4;

    // Calculamos el tamaño basado en módulos
    ModuleSize := 5; // Cada módulo mide 5 píxeles (puedes ajustar)
    QRSize := (QRCode.Rows + QRCode.QuietZone * 2) * ModuleSize;

    Bitmap := TBitmap.Create;
    try
      Bitmap.Width := QRSize;
      Bitmap.Height := QRSize;

      Bitmap.Canvas.Brush.Color := clWhite;
      Bitmap.Canvas.FillRect(Rect(0, 0, Bitmap.Width, Bitmap.Height));

      Bitmap.Canvas.Brush.Color := clBlack;
      for i := 0 to QRCode.Rows - 1 do
        for j := 0 to QRCode.Columns - 1 do
          if QRCode.IsBlack[i, j] then
            Bitmap.Canvas.FillRect(Rect(
              (j + QRCode.QuietZone) * ModuleSize,
              (i + QRCode.QuietZone) * ModuleSize,
              (j + QRCode.QuietZone + 1) * ModuleSize,
              (i + QRCode.QuietZone + 1) * ModuleSize
            ));

      // Escalar para llenar el tamaño del QRImage
      Imagen.Picture.Bitmap.Width := Imagen.Width;
      Imagen.Picture.Bitmap.Height := Imagen.Height;
      Imagen.Picture.Bitmap.Canvas.StretchDraw(Rect(0, 0, Imagen.Width, Imagen.Height), Bitmap);
    finally
      Bitmap.Free;
    end;
  finally
    QRCode.Free;
  end;
end;



procedure TRDevolucion.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  lbNCF.Caption := QDevolucioneNCF.AsString;
 { if not QDevolucionNCF_Fijo.IsNull then
    lbNCF.Caption := 'NCF: '+QDevolucionNCF_Fijo.AsString+FormatFloat('00000000',QDevolucionNCF_Secuencia.AsFloat)
  else
    lbNCF.Caption := ' ';  }
end;

end.
