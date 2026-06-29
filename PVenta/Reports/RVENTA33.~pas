unit RVENTA33;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB,DelphiZXingQRCode;

type
  TRNotaCredito = class(TQuickRep)
    V: TQRBand;
    QRBand3: TQRBand;
    QNota: TADOQuery;
    QNotaCLI_CODIGO: TIntegerField;
    QNotaCLI_REFERENCIA: TIBStringField;
    QNotaEMP_CODIGO: TIntegerField;
    QNotaNCR_CONCEPTO: TIBStringField;
    QNotaNCR_FECHA: TDateTimeField;
    QNotaNCR_MONTO: TFloatField;
    QNotaNCR_NUMERO: TIntegerField;
    QNotaNCR_STATUS: TIBStringField;
    QNotaUSU_CODIGO: TIntegerField;
    QNotaFAC_FORMA: TIBStringField;
    QNotaFAC_NUMERO: TIntegerField;
    QNotaTFA_CODIGO: TIntegerField;
    QNotaNCR_MONTOUSADO: TFloatField;
    QNotaNCR_DEVOLUCION: TIntegerField;
    QNotaVEN_CODIGO: TIntegerField;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRDBText6: TQRDBText;
    QNotaCLI_NOMBRE: TIBStringField;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    C: TQRDBText;
    QRShape6: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel7: TQRLabel;
    QRShape5: TQRShape;
    QRDBText10: TQRDBText;
    QRLabel8: TQRLabel;
    QRShape7: TQRShape;
    QRDBText11: TQRDBText;
    QNotaDisp: TFloatField;
    QRShape8: TQRShape;
    QRLabel9: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QNotaNumeroCF: TStringField;
    TNcf: TQRDBText;
    lbReimpresion: TQRLabel;
    QNotaNCF_Fijo: TStringField;
    QNotaNCF_Secuencia: TBCDField;
    QNotaNCF: TStringField;
    QRLabel13: TQRLabel;
    QRDBText15: TQRDBText;
    lbTitulo: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText16: TQRDBText;
    QRShape9: TQRShape;
    QNotancr_itbis: TBCDField;
    QRShape10: TQRShape;
    QRDBText17: TQRDBText;
    QRLabel15: TQRLabel;
    QNotacli_direccion: TStringField;
    QNotacli_rnc: TStringField;
    QRLabel16: TQRLabel;
    QRDBText18: TQRDBText;
    QRShape11: TQRShape;
    QNotaMONEDA: TStringField;
    QRDBText9: TQRDBText;
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
    QNotasuc_codigo: TIntegerField;
    dsNota: TDataSource;
    QNotaNCR_MONTO2: TFloatField;
    qrImgQRCode: TQRImage;
    lblcodigoseg: TQRLabel;
    lblFirmaDigital: TQRLabel;
    txtFirma: TQRDBText;
    txtCodigoSeguridad: TQRDBText;
    QNotaeNCF: TStringField;
    QNotaEnviado_DGII: TBooleanField;
    QNotaError_DGII: TBooleanField;
    QNotaAceptadoDGII: TBooleanField;
    QNotacodigoseguridad: TStringField;
    QNotafechafirma: TDateTimeField;
    QNotaUrlCodigoQR: TMemoField;
    procedure QNotaCalcFields(DataSet: TDataSet);
    procedure QNotaAfterOpen(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public
   procedure GenerarCodigoQR(const Texto: string; Imagen: TQRImage);
  end;

var
  RNotaCredito: TRNotaCredito;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRNotaCredito.GenerarCodigoQR(const Texto: string; Imagen: TQRImage);
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

procedure TRNotaCredito.QNotaCalcFields(DataSet: TDataSet);
begin
  QNotaDisp.Value := (QNotaNCR_MONTO.Value ) - QNotaNCR_MONTOUSADO.Value+ QNotancr_itbis.Value;
  if not QNotaNCF_Fijo.IsNull then
    QNotaNumeroCF.Value := 'NCF:'+ QNotaNCF_Fijo.Value+FormatFloat('00000000',QNotaNCF_Secuencia.Value)
  else
    QNotaNumeroCF.Value := ' ';
end;

procedure TRNotaCredito.QNotaAfterOpen(DataSet: TDataSet);
begin
qSucursal.Open;
end;

procedure TRNotaCredito.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 if  dm.QParametrosUsa_FacturacionElectronica.Value  then
    begin
      TNcf.DataField:='eNCF';
      GenerarCodigoQR(QNotaUrlCodigoQR.AsString, qrImgQRCode)
    end
    else 
    begin
      TNcf.DataField:='NumeroCF';
      qrImgQRCode.Visible:=False;
      lblcodigoseg.Caption:= '';
      lblFirmaDigital.Caption:='';
      txtCodigoSeguridad.Visible:=False;
      txtFirma.Visible:=False;
    end;

    if not QNotaAceptadoDGII.Value then
   begin
      lblcodigoseg.Caption:= '';
      lblFirmaDigital.Caption:='';
      txtCodigoSeguridad.Visible:=False;
      txtFirma.Visible:=False;
   end;
end;

end.
