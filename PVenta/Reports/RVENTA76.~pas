unit RVENTA76;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, ADODB,DelphiZXingQRCode;

type
  TRFacturaProvee = class(TQuickRep)
    QRBand2: TQRBand;
    QRLabel6: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText26: TQRDBText;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRDBText27: TQRDBText;
    QRLabel28: TQRLabel;
    QRBand3: TQRBand;
    QRLabel3: TQRLabel;
    lbEntrada: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRDBText6: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    ChildBand1: TQRChildBand;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRBand1: TQRBand;
    ChildBand2: TQRChildBand;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel14: TQRLabel;
    QFactura: TADOQuery;
    QProductos: TADOQuery;
    QCuentas: TADOQuery;
    QFacturasup_nombre: TStringField;
    QFacturafac_Fecha: TDateTimeField;
    QFacturafac_vence: TDateTimeField;
    QFacturafac_exento: TBCDField;
    QFacturafac_grabado: TBCDField;
    QFacturafac_itbis: TBCDField;
    QFacturafac_descuento: TBCDField;
    QFacturafac_flete: TBCDField;
    QFacturafac_selectivo: TBCDField;
    QFacturafac_total: TBCDField;
    QFacturaalm_codigo: TIntegerField;
    QFacturaalm_nombre: TStringField;
    QFacturausu_nombre: TStringField;
    dsFactura: TDataSource;
    QFacturafac_numero: TStringField;
    QProductospro_codigo: TIntegerField;
    QProductospro_roriginal: TStringField;
    QProductospro_rfabric: TStringField;
    QProductospro_nombre: TStringField;
    QProductosdet_cantidad: TBCDField;
    QProductosdet_conitbis: TStringField;
    QProductosdet_itbis: TBCDField;
    QProductosdet_costo: TBCDField;
    QProductosdet_fechavence: TDateTimeField;
    QProductosdet_vence: TStringField;
    QProductosdet_medida: TStringField;
    QProductosdet_costound: TBCDField;
    QProductosdet_costoemp: TBCDField;
    QCuentascat_cuenta: TStringField;
    QCuentasdet_origen: TStringField;
    QCuentascat_nombre: TStringField;
    QCuentasdet_monto: TBCDField;
    QCuentasDebito: TFloatField;
    QCuentasCredito: TFloatField;
    QRSubDetail3: TQRSubDetail;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRSubDetail2: TQRSubDetail;
    QRDBText10: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText28: TQRDBText;
    QFacturaemp_codigo: TIntegerField;
    QFacturasup_codigo: TIntegerField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel29: TQRLabel;
    QRDBText8: TQRDBText;
    QFacturafac_selectivo_ad: TBCDField;
    QRLabel13: TQRLabel;
    lbProd: TQRDBText;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QProductospro_precio1: TBCDField;
    QProductospro_precio2: TBCDField;
    QRDBText11: TQRDBText;
    QRDBText29: TQRDBText;
    QRLabel32: TQRLabel;
    QRDBText30: TQRDBText;
    QFacturafac_concepto: TStringField;
    QRLabel33: TQRLabel;
    QRDBText31: TQRDBText;
    QFacturaNCF: TStringField;
    QFacturancf_fijo: TStringField;
    QFacturancf_Secuencia: TBCDField;
    QFacturaNumeroNCF: TStringField;
    QProductosdet_costound_ant: TBCDField;
    QProductosdet_costoemp_ant: TBCDField;
    QFacturafac_retencion: TBCDField;
    QProductosCostoNeto: TFloatField;
    QRBand4: TQRBand;
    QRLabel34: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRExpr1: TQRExpr;
    QProductosCalcCosto: TFloatField;
    QProductosCalcCostoEmp: TFloatField;
    QProductosValorItbisUnd: TFloatField;
    QProductosValorItbisEmp: TFloatField;
    QProductosPrecioItbis: TFloatField;
    QProductosCalcItbis: TFloatField;
    QProductosCalcDesc: TFloatField;
    QProductosValor: TFloatField;
    QProductosValorEmp: TFloatField;
    QProductosPrecioItbisEmp: TFloatField;
    QProductosCalcItbisEmp: TFloatField;
    QProductosCalcDescEmp: TFloatField;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QProductosItbisReal: TFloatField;
    QProductospro_precio3: TBCDField;
    QProductospro_precio4: TBCDField;
    QRLabel35: TQRLabel;
    QRDBText32: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText33: TQRDBText;
    QFacturasup_rnc: TStringField;
    QFacturafac_retencion_isr: TBCDField;
    QRLabel38: TQRLabel;
    QRDBText34: TQRDBText;
    QRBand30: TQRBand;
    qrlUsuario: TQRLabel;
    qCentro: TADOQuery;
    StringField1: TStringField;
    ChildBandCentro: TQRChildBand;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    SubDetailCentro: TQRSubDetail;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRLabel43: TQRLabel;
    QRDBText39: TQRDBText;
    qCentrocen_codigo: TIntegerField;
    qCentrocen_descripcion: TMemoField;
    BandCentro: TQRBand;
    qCentroDebito: TCurrencyField;
    qCentroCredito: TCurrencyField;
    QRLabel46: TQRLabel;
    QRExpr4: TQRExpr;
    qSucursal: TADOQuery;
    IntegerField1: TIntegerField;
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
    StringField13: TStringField;
    BlobField1: TBlobField;
    dsSucursal: TDataSource;
    QFacturasuc_codigo: TIntegerField;
    QFacturaeNCF: TStringField;
    qrImgQRCode: TQRImage;
    QFacturaUrlCodigoQR: TMemoField;
    lblcodigoseg: TQRLabel;
    QRDBText40: TQRDBText;
    lblFirmaDigital: TQRLabel;
    QFacturacodigoseguridad: TStringField;
    QFacturafechafirma: TStringField;
    QRDBText42: TQRDBText;
    QFacturaAceptadoDGII: TBooleanField;
    procedure QCuentasCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QFacturaCalcFields(DataSet: TDataSet);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QProductosCalcFields(DataSet: TDataSet);
    procedure qCentroAfterOpen(DataSet: TDataSet);
    procedure QFacturaAfterOpen(DataSet: TDataSet);
  private

  public
    procedure GenerarCodigoQR(const Texto: string; Imagen: TQRImage);
  end;

var
    RFacturaProvee: TRFacturaProvee;

implementation

uses SIGMA01;

{$R *.DFM}

procedure TRFacturaProvee.QCuentasCalcFields(DataSet: TDataSet);
begin
  if QCuentasdet_origen.Value = 'Debito' then
    QCuentasDebito.Value := QCuentasdet_monto.Value
  else
    QCuentasCredito.Value := QCuentasdet_monto.Value;
end;

procedure TRFacturaProvee.QuickRepBeforePrint(Sender: TCustomQuickRep;
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
    dm.Query1.Parameters.ParamByName('mod').Value := 'RFacturaProvee';
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

  qrlUsuario.Caption :='Impreso por :'+ dm.getNombreUsuario(DM.Usuario) +
                       ' Fecha/Hora ' + FormatDateTime('dd/mm/yyyy hh:mm:ss AM/PM',now);
  if  dm.QParametrosUsa_FacturacionElectronica.Value  then
    begin
    GenerarCodigoQR(QFacturaUrlCodigoQR.Value, qrImgQRCode)  end
    else 
    begin
      qrImgQRCode.Visible:=False;
      lblcodigoseg.Caption:= '';
      lblFirmaDigital.Caption:='';
      QRDBText40.Visible:=False;
      QRDBText42.Visible:=False;
    end;

    if not QFacturaAceptadoDGII.Value then
   begin
      lblcodigoseg.Caption:= '';
      lblFirmaDigital.Caption:='';
      QRDBText40.Visible:=False;
      QRDBText42.Visible:=False;
   end;

end;

procedure TRFacturaProvee.QFacturaCalcFields(DataSet: TDataSet);
begin
  if QFacturaNCF_Fijo.IsNull then
    QFacturaNumeroNCF.Value := QFacturaNCF.Value
  else if not QFacturaNCF_Fijo.IsNull then
  begin
    QFacturaNumeroNCF.Value := QFacturaNCF_Fijo.Value + formatfloat('00000000',Qfacturancf_secuencia.value);
    lbEntrada.Caption := 'REGISTRO DE PROVEEDOR INFORMAL';
  end
  else
    QFacturaNumeroNCF.Value := ' ';
end;


procedure TRFacturaProvee.GenerarCodigoQR(const Texto: string; Imagen: TQRImage);
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


procedure TRFacturaProvee.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if (QProductospro_precio2.Value = 0) or (QProductospro_precio2.IsNull) then
  begin
    if (QProductospro_precio3.Value = 0) or (QProductospro_precio3.IsNull) then
      QRDBText29.DataField := 'pro_precio4'
    else
      QRDBText29.DataField := 'pro_precio3';
  end
  else
  begin
    if (QProductospro_precio3.Value = 0) or (QProductospro_precio3.IsNull) then
      QRDBText29.DataField := 'pro_precio4'
    else
      QRDBText29.DataField := 'pro_precio3';
  end;

  if (StrToFloat(Format('%10.2F',[QProductosDET_COSTOUND.Value])) <>
  StrToFloat(Format('%10.2F',[QProductosdet_costound_ant.Value]))) or
  (StrToFloat(Format('%10.2F',[QProductosDET_COSTOEMP.Value])) <>
  StrToFloat(Format('%10.2F',[QProductosdet_costoemp_ant.Value]))) then
  begin
    lbprod.Font.Style := lbprod.Font.Style + [fsBold];
    QRDBText10.Font.Style := QRDBText10.Font.Style + [fsBold];
    QRDBText28.Font.Style := QRDBText28.Font.Style + [fsBold];
    QRDBText25.Font.Style := QRDBText25.Font.Style + [fsBold];
    QRDBText24.Font.Style := QRDBText24.Font.Style + [fsBold];
    QRDBText11.Font.Style := QRDBText11.Font.Style + [fsBold];
    QRDBText29.Font.Style := QRDBText29.Font.Style + [fsBold];
  end
  else
  begin
    lbprod.Font.Style := lbprod.Font.Style - [fsBold];
    QRDBText10.Font.Style := QRDBText10.Font.Style - [fsBold];
    QRDBText28.Font.Style := QRDBText28.Font.Style - [fsBold];
    QRDBText25.Font.Style := QRDBText25.Font.Style - [fsBold];
    QRDBText24.Font.Style := QRDBText24.Font.Style - [fsBold];
    QRDBText11.Font.Style := QRDBText11.Font.Style - [fsBold];
    QRDBText29.Font.Style := QRDBText29.Font.Style - [fsBold];
  end;
end;

procedure TRFacturaProvee.QProductosCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis : Double;
  VentaEmp, NumItbisEmp : Double;
begin
  if QProductosDET_CONITBIS.Value = 'S' then
  begin
    QProductosCalcCosto.Value    := (QProductosDET_COSTOUND.Value * QProductosdet_itbis.Value)/100;
    QProductosCalcCostoemp.Value := (QProductosDET_COSTOEMP.Value * QProductosdet_itbis.Value)/100;
  end
  else
  begin
    QProductosCalcCosto.Value    := 0;
    QProductosCalcCostoemp.Value := 0;
  end;
  QProductosValorItbisUnd.value := QProductosCalcCosto.Value + QProductosDET_COSTOUND.Value;
  QProductosValorItbisEmp.value := QProductosCalcCostoemp.Value + QProductosDET_COSTOEMP.Value;

  if QProductosdet_medida.AsString = 'Und' then
    QProductosCostoNeto.Value := QProductosDET_COSTOUND.Value + QProductosCalcCosto.Value
  else
    QProductosCostoNeto.Value := QProductosDET_COSTOEMP.Value + QProductosCalcCostoEmp.Value;


  //Unidad
  if QProductosDET_CONITBIS.value = 'S' then
  begin
    NumItbis := strtofloat(format('%10.2f',[(QProductosdet_itbis.asfloat/100)+1]));
    Venta    := QProductosDET_COSTOUND.value;
    QProductosPrecioItbis.value := Venta;
    QProductosCalcItbis.value   := ((Venta-QProductosCalcDesc.value)*QProductosdet_itbis.Value)/100;
    QProductosValor.value       := ((Venta-QProductosCalcDesc.value))*QProductosDET_CANTIDAD.value+(QProductosCalcItbis.value*QProductosDET_CANTIDAD.value);
  end
  else
  begin
    Venta := QProductosDET_COSTOUND.value;
    QProductosPrecioItbis.value := Venta;
    QProductosValor.value       := (Venta-QProductosCalcDesc.value)*QProductosDET_CANTIDAD.value;
    QProductosCalcItbis.value   := 0;
  end;

  //Empaque
  if QProductosDET_CONITBIS.value = 'S' then
  begin
    NumItbisEmp := strtofloat(format('%10.2f',[(QProductosdet_itbis.asfloat/100)+1]));
    VentaEmp    := QProductosDET_COSTOEMP.value;
    QProductosPrecioItbisEmp.value := VentaEmp;
    QProductosCalcItbisEmp.value   := ((VentaEmp-QProductosCalcDescEmp.value)*QProductosdet_itbis.Value)/100;
    QProductosValorEmp.value       := ((VentaEmp-QProductosCalcDescEmp.value))*QProductosDET_CANTIDAD.value+(QProductosCalcItbisEmp.value*QProductosDET_CANTIDAD.value)
  end
  else
  begin
    VentaEmp := QProductosDET_COSTOEMP.value;
    QProductosPrecioItbisEmp.value := VentaEmp;
    QProductosValorEmp.value       := (VentaEmp-QProductosCalcDescEmp.value)*QProductosDET_CANTIDAD.value;
    QProductosCalcItbisEmp.value   := 0;
  end;
  if QProductosDET_MEDIDA.Value = 'Emp' then
  begin
    QProductosValor.Value := QProductosValorEmp.Value;
    QProductosItbisReal.Value := QProductosCalcItbisEmp.Value;
  end
  else
    QProductosItbisReal.Value := QProductosCalcItbis.Value;
end;

procedure TRFacturaProvee.qCentroAfterOpen(DataSet: TDataSet);
begin
if qCentro.Active then begin
ChildBandCentro.Enabled := True;
BandCentro.Enabled := True;
SubDetailCentro.Enabled := True;
end;
if not qCentro.Active then begin
ChildBandCentro.Enabled := False;
BandCentro.Enabled := False;
SubDetailCentro.Enabled := False;
end;
end;

procedure TRFacturaProvee.QFacturaAfterOpen(DataSet: TDataSet);
begin
qSucursal.Open;
end;

end.
