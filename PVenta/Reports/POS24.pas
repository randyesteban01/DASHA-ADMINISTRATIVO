unit POS24;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ADODB,
  qrpctrls,DelphiZXingQRCode;

type
  TRFacturaP = class(TQuickRep)
    QEmpresa: TADOQuery;
    QEmpresaemp_codigo: TIntegerField;
    QEmpresaemp_nombre: TStringField;
    QEmpresaemp_direccion: TStringField;
    QEmpresaemp_localidad: TStringField;
    QEmpresaemp_rnc: TStringField;
    QEmpresaemp_telefono: TStringField;
    QFormaPago: TADOQuery;
    QFactura: TADOQuery;
    QDetalle: TADOQuery;
    dsFactura: TDataSource;
    QRBand2: TQRBand;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRBand3: TQRBand;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QFacturacodigoseguridad: TStringField;
    QFacturaCOD_DGII: TIntegerField;
    QFacturaACEPTADODGII: TBooleanField;
    QFacturasuc_telefono: TStringField;
    QFacturasuc_rnc: TStringField;
    QFacturasuc_nombre: TStringField;
    QFacturasuc_fax: TStringField;
    QFacturafac_caja: TIntegerField;
    QFacturaeNCF: TStringField;
    QDetallePRO_NOMBRE: TStringField;
    QRLabel1: TQRLabel;
    QRDBText14: TQRDBText;
    QDetalledet_precio: TFloatField;
    QDetalleDET_ITBIS: TFloatField;
    QDetalleDET_CONITBIS: TStringField;
    QFacturaFAC_CONITBIS: TStringField;
    QDetallePrecioItbis: TFloatField;
    QDetalleCalcDesc: TFloatField;
    QDetalleCalcItbis: TFloatField;
    QDetalleValor: TFloatField;
    QDetalleDET_DESCUENTO: TFloatField;
    QDetalleTotalDescuento: TFloatField;
    QDatos: TADOQuery;
    QFacturaEMP_CODIGO: TIntegerField;
    QDetalleSubTotal: TFloatField;
    QFormaPagoFPA_NOMBRE: TStringField;
    qrImgQRCode: TQRImage;
    lblcodigoseg: TQRLabel;
    lblFirmaDigital: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText26: TQRDBText;
    QFacturaUrlCodigoQR: TMemoField;
    QFacturafechafirma: TStringField;
    QFacturatip_codigo: TIntegerField;
    QFacturaFAC_FECHA: TDateTimeField;
    QDetalleDET_CANTIDAD: TBCDField;
    QRBand4: TQRBand;
    QRLTipoNCF: TQRPLabel;
    QRPLabel1: TQRPLabel;
    QRDBText6: TQRDBText;
    QRPLabel2: TQRPLabel;
    QRDBText11: TQRDBText;
    QRPLabel6: TQRPLabel;
    QRDBText10: TQRDBText;
    QRPLabel3: TQRPLabel;
    QRDBText9: TQRDBText;
    QRPLabel5: TQRPLabel;
    QRPLabel4: TQRPLabel;
    QRDBText8: TQRDBText;
    QRDBText7: TQRDBText;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QFacturasuc_direccion: TStringField;
    QFacturasuc_localidad: TStringField;
    QRPLabel7: TQRPLabel;
    QRDBText12: TQRDBText;
    QFacturaFAC_NUMERO: TStringField;
    QFacturafac_nombre: TStringField;
    lbNumCopia: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QDetalleCalcFields(DataSet: TDataSet);
  private

  public
   procedure GenerarCodigoQR(const Texto: string; Imagen: TQRImage);
  end;

var
  RFacturaP: TRFacturaP;

implementation

uses SIGMA01;


{$R *.DFM}



procedure TRFacturaP.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin

  lbNumCopia.Caption := '';
  if Trim(lbNumCopia.Hint) <> '' then
    lbNumCopia.Caption := lbNumCopia.Hint;
    
 //buscar tipo documentos
      with QDatos do begin
      Close;
      sql.Clear;
      SQL.Add('select isnull(nombre_dgii, tip_nombre) as Nombre');
      sql.Add(' from TipoNCF a');
      sql.Add(' where a.emp_codigo = :emp_codigo ');
      sql.Add(' and a.tip_codigo   = :tipo');
      Parameters.ParamByName('emp_codigo').Value := QFacturaEMP_CODIGO.Value;
      Parameters.ParamByName('tipo').Value   := QFacturatip_codigo.Value;
      Open;
      if not IsEmpty then begin
      QRLTipoNCF.Visible := True;
      QRLTipoNCF.Caption := FieldByName('Nombre').AsString;
      end;

      if IsEmpty then begin
      QRLTipoNCF.Caption := '';
      QRLTipoNCF.Visible := False;
      end;
      end;

      GenerarCodigoQR(QFacturaUrlCodigoQR.Value, qrImgQRCode)
end;

procedure TRFacturaP.GenerarCodigoQR(const Texto: string; Imagen: TQRImage);
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


procedure TRFacturaP.QDetalleCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis : Double;
  a : integer;
begin
  NumItbis := (QDetalleDET_ITBIS.asfloat/100)+1;
  if (QDetalleDET_CONITBIS.value = 'S') and (QFacturaFAC_CONITBIS.Value = 'True') then
  begin
    if (dm.QParametrospar_itbisincluido.Value = 'True') then
    begin

      Venta := (QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value)/NumItbis;
      QDetallePrecioItbis.value := (QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value)/NumItbis;
      QDetalleCalcDesc.value    := ((QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value)/NumItbis * QDetalleDET_DESCUENTO.value)/100;
      if QDetalleDET_CONITBIS.Text = 'S'  then
        QDetalleCalcItbis.value   := ((((QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value)/NumItbis) - QDetalleCalcDesc.value ) * QDetalleDET_ITBIS.value) / 100
      else
      QDetalleCalcItbis.value   := 0;
      QDetalleValor.value     := (QDetallePrecioItbis.value - QDetalleCalcDesc.value + QDetalleCalcItbis.value);
      if QDetalleDET_DESCUENTO.Value > 0 then
      QDetalleTotalDescuento.Value := Venta*(QDetalleDET_DESCUENTO.Value/100) else
      QDetalleTotalDescuento.Value := 0;
    end
    else
    begin
      Venta := QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value;
      QDetallePrecioItbis.value := Venta;
      QDetalleCalcDesc.value    := ((QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value) * QDetalleDET_DESCUENTO.value)/100;
      if QDetalleDET_CONITBIS.value = 'S'  then
        QDetalleCalcItbis.value := (((QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value) - QDetalleCalcDesc.value)* QDetalleDET_ITBIS.value) / 100
      else
        QDetalleCalcItbis.value := 0;
      QDetalleValor.value     := (QDetallePrecioItbis.value - QDetalleCalcDesc.value + QDetalleCalcItbis.value);
      if QDetalleDET_DESCUENTO.Value > 0 then
      QDetalleTotalDescuento.Value := Venta*(QDetalleDET_DESCUENTO.Value/100) else
      QDetalleTotalDescuento.Value := 0;
    end;
  end
  else
  begin
    if QDetalleDET_CONITBIS.value = 'S'  then
    Venta := QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value else
    if DM.QParametrospar_itbisincluido.Value = 'True' then
    Venta := (QDetalleDET_PRECIO.value/NumItbis) * QDetalleDET_CANTIDAD.Value else
    Venta := (QDetalleDET_PRECIO.value) * QDetalleDET_CANTIDAD.Value;
    QDetalleCalcDesc.value    := (Venta * QDetalleDET_DESCUENTO.value)/100;
    QDetallePrecioItbis.value := Venta;
    QDetalleCalcItbis.value   := 0;
    QDetalleValor.value       := (Venta-QDetalleCalcDesc.value);
    if QDetalleDET_DESCUENTO.Value > 0 then
      QDetalleTotalDescuento.Value := Venta*(QDetalleDET_DESCUENTO.Value/100) else
      QDetalleTotalDescuento.Value := 0;
  end;
QDetalleSubTotal.Value := QDetallePrecioItbis.Value+QDetalleCalcDesc.Value-QDetalleCalcItbis.Value;

end;

end.
