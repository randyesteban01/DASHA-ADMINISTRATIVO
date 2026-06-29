unit RVENTA136;

interface

uses Windows,Dialogs, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB, Math, QExport, QExportRTF,DelphiZXingQRCode;

type
  TRFacturaCorta = class(TQuickRep)
    QRBand1: TQRBand;
    lbFactura: TQRLabel;
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
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRLabel28: TQRLabel;
    lbCliente: TQRDBText;
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
    QFactura: TADOQuery;
    QFacturaCAJ_CODIGO: TIntegerField;
    QFacturaCLI_CODIGO: TIntegerField;
    QFacturaCOT_NUMERO: TIntegerField;
    QFacturaCPA_CODIGO: TIntegerField;
    QFacturaEMP_CODIGO: TIntegerField;
    QFacturaFAC_ABONO: TFloatField;
    QFacturaFAC_DESCUENTO: TFloatField;
    QFacturaFAC_DIRECCION: TIBStringField;
    QFacturaFAC_FAX: TIBStringField;
    QFacturaFAC_FECHA: TDateTimeField;
    QFacturaFAC_FORMA: TIBStringField;
    QFacturaFAC_ITBIS: TFloatField;
    QFacturaFAC_LOCALIDAD: TIBStringField;
    QFacturaFAC_NOMBRE: TIBStringField;
    QFacturaFAC_NUMERO: TIntegerField;
    QFacturaFAC_OTROS: TFloatField;
    QFacturaFAC_STATUS: TIBStringField;
    QFacturaFAC_TELEFONO: TIBStringField;
    QFacturaFAC_TOTAL: TFloatField;
    QFacturaPED_NUMERO: TIntegerField;
    QFacturaTFA_CODIGO: TIntegerField;
    QFacturaUSU_CODIGO: TIntegerField;
    QFacturaVEN_CODIGO: TIntegerField;
    QFacturaCLI_REFERENCIA: TIBStringField;
    QFacturaALM_CODIGO: TIntegerField;
    dsFactura: TDataSource;
    QDetalle: TADOQuery;
    QDetalleDET_CANTDEVUELTA: TFloatField;
    QDetalleDET_CANTIDAD: TFloatField;
    QDetalleDET_CONITBIS: TIBStringField;
    QDetalleDET_COSTO: TFloatField;
    QDetalleDET_DESCUENTO: TFloatField;
    QDetalleDET_ITBIS: TFloatField;
    QDetalleDET_PRECIO: TFloatField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleDET_STATUS: TIBStringField;
    QDetalleEMP_CODIGO: TIntegerField;
    QDetalleFAC_FORMA: TIBStringField;
    QDetalleFAC_NUMERO: TIntegerField;
    QDetallePRO_BARRA: TIBStringField;
    QDetallePRO_CODIGO: TIntegerField;
    QDetallePRO_NOMBRE: TIBStringField;
    QDetallePRO_RFABRIC: TIBStringField;
    QDetallePRO_RORIGINAL: TIBStringField;
    QDetalleTFA_CODIGO: TIntegerField;
    QDetalleCalcItbis: TFloatField;
    QDetalleCalcDesc: TFloatField;
    QDetallePrecioItbis: TFloatField;
    QDetalleValor: TFloatField;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText5: TQRDBText;
    QFacturaFAC_MENSAJE1: TIBStringField;
    QFacturaFAC_MENSAJE2: TIBStringField;
    QFacturaFAC_MENSAJE3: TIBStringField;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel47: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel48: TQRLabel;
    QFacturaFAC_HORA: TIBStringField;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel18: TQRLabel;
    QRLDescuento: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    lbAbono: TQRLabel;
    lbAbono3: TQRDBText;
    lbAbono2: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel22: TQRLabel;
    QRShape1: TQRShape;
    QRLabel46: TQRLabel;
    lbForma: TQRLabel;
    QForma: TADOQuery;
    QFormaFPA_CODIGO: TIntegerField;
    QFormaFPA_NOMBRE: TIBStringField;
    QFormasPago: TADOQuery;
    QFormasPagoEMP_CODIGO: TIntegerField;
    QFormasPagoFOR_DESCRIPCION: TIBStringField;
    QFormasPagoFOR_MONTO: TFloatField;
    QFormasPagoFPA_CODIGO: TIntegerField;
    ChildBand1: TQRChildBand;
    QRLabel7: TQRLabel;
    lbVendedor: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel15: TQRLabel;
    lbCondicion: TQRLabel;
    QRLabel49: TQRLabel;
    QRDBText27: TQRDBText;
    QFacturaFAC_VENCE: TDateTimeField;
    QDetalleDET_ESCALA: TIBStringField;
    QDetalleDET_MANEJAESCALA: TIBStringField;
    QDetalleDET_MEDIDA: TIBStringField;
    lbmoneda: TQRLabel;
    QFacturaMON_CODIGO: TIntegerField;
    ChildBand2: TQRChildBand;
    QDetalleDET_NOTA: TMemoField;
    QFacturaFAC_CONITBIS: TStringField;
    QFacturaSUC_CODIGO: TIntegerField;
    QFacturaNumero: TStringField;
    QDetallepro_cantempaque: TBCDField;
    QDetalleEmpaque: TFloatField;
    QSerie: TADOQuery;
    dsDetalle: TDataSource;
    QSerieser_numero: TStringField;
    QDetallesuc_codigo: TIntegerField;
    QRDBText13: TQRDBText;
    QFacturaNumeroCF: TStringField;
    QFacturaNCF_Fijo: TStringField;
    QFacturaNCF_Secuencia: TBCDField;
    QRLabel12: TQRLabel;
    QDetalledet_selectivo_ad: TBCDField;
    QDetalledet_selectivo_con: TBCDField;
    QDetalledet_cant_oferta: TBCDField;
    QRLabel52: TQRLabel;
    QRShape2: TQRShape;
    QRDBText29: TQRDBText;
    QFacturafac_rnc: TStringField;
    QRRichText1: TQRRichText;
    lbcajero: TQRLabel;
    QRLabel53: TQRLabel;
    QRDBText24: TQRDBText;
    QDetalledet_cantempaque: TBCDField;
    QRDBText30: TQRDBText;
    QRLabel3: TQRLabel;
    lbProds: TQRLabel;
    QRLabel29: TQRLabel;
    QRDBText28: TQRDBText;
    QRLabel36: TQRLabel;
    QFacturaPlaca: TStringField;
    QFacturaChofer: TStringField;
    QFacturaModelo: TStringField;
    QFacturaMarca: TStringField;
    QFacturaCompania: TStringField;
    QDetalleUnidadMetros: TStringField;
    QDetallepro_unidad_medida: TStringField;
    QRDBImage1: TQRDBImage;
    QDetalleMedidorID: TIntegerField;
    QDetalleMedidor_Secuencia: TBCDField;
    QDetalleMedidor_Cantidad: TBCDField;
    QDetallepro_utilizamedidor: TStringField;
    lbmoneda2: TQRLabel;
    lboferta: TQRLabel;
    dboferta: TQRDBText;
    QFacturafac_tasa: TBCDField;
    QDetallepro_comentario: TMemoField;
    QFacturaOrdenID: TStringField;
    QRLabel38: TQRLabel;
    QRDBText31: TQRDBText;
    QDetalleMedida: TStringField;
    QDetallepro_UtilizaEnvio: TStringField;
    ChildBand3: TQRChildBand;
    QRLabel51: TQRLabel;
    lbenvio_telefono: TQRLabel;
    lbenvio_nombre: TQRLabel;
    lbenvio_ciudad: TQRLabel;
    lbrecibe_telefono: TQRLabel;
    lbrecibe_nombre: TQRLabel;
    lbrecibe_ciudad: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel54: TQRLabel;
    lbenvio_descripcion: TQRLabel;
    QFacturasuc_direccion: TStringField;
    QFacturasuc_localidad: TStringField;
    QFacturasuc_telefono: TStringField;
    QFacturasuc_rnc: TStringField;
    QFacturasuc_nombre: TStringField;
    QFacturasuc_fax: TStringField;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLVNCF: TQRLabel;
    QRLVNCFECH: TQRLabel;
    QRLTipoNCF: TQRLabel;
    QDatos: TADOQuery;
    QRLabel33: TQRLabel;
    QRLabel57: TQRLabel;
    QFacturaFAC_NOTA: TMemoField;
    QFacturaNUMERO_RESERVA: TIntegerField;
    QFacturaFAC_PROPINA: TCurrencyField;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel31: TQRLabel;
    QExportRTF1: TQExportRTF;
    QFacturatip_codigo: TIntegerField;
    QFacturaporc_desc_gral: TFloatField;
    QFacturafac_caja: TIntegerField;
    QFacturaTdesc_gral: TCurrencyField;
    QFacturaNIF: TStringField;
    QFacturafac_devuelto: TCurrencyField;
    lbReimpresion: TQRLabel;
    qrMemoMsg: TQRMemo;
    QDetalleTotalDescuento: TCurrencyField;
    QRDBText9: TQRDBText;
    QFacturaTOTALDESC: TCurrencyField;
    QDetalleSubTotal: TCurrencyField;
    QRDBText8: TQRDBText;
    QFacturaSUBTOTAL: TCurrencyField;
    QFacturaFAC_TOTAL_DOLAR: TFloatField;
    QFacturaeNCF: TStringField;
    QFacturaUrlCodigoQR: TMemoField;
    QFacturacodigoseguridad: TStringField;
    QFacturafechafirma: TStringField;
    QFacturacod_dgii: TIntegerField;
    QFacturaAceptadoDGII: TBooleanField;
    qrImgQRCode: TQRImage;
    lblcodigoseg: TQRLabel;
    lblFirmaDigital: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText26: TQRDBText;
    lbNumCopia: TQRLabel;
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure Qnotasf(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure ChildBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QFacturaCalcFields(DataSet: TDataSet);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QFacturaAfterOpen(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public
    ActBalance, ImprimeEncaqbezado : String;
    Linea : Integer;
    procedure CorregirError;
    procedure GenerarCodigoQR(const Texto: string; Imagen: TQRImage);
  end;

var
  RFacturaCorta: TRFacturaCorta;

implementation

uses SIGMA01, DateUtils, RVENTA02;


{$R *.DFM}

procedure TRFacturaCorta.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  a : integer;
begin
  {if (not QDetalleMedidorID.IsNull) or (QDetalleMedidorID.AsInteger > 0) then
  begin
    for a := 0 to QRBand3.ControlCount-1 do
    begin
      if QRBand3.Controls[a].ClassType = TQRDBText then
        (QRBand3.Controls[a] as TQRDBText).Font.Style := (QRBand3.Controls[a] as TQRDBText).Font.Style + [fsbold];
    end;
  end;}
  {if QDetalleDET_CONITBIS.value = 'N' then
     lbItbis.caption := 'E'
  else
     lbItbis.caption := ' ';}
  
if dboferta.Enabled = False then begin
QRDBText30.Left := 445;
QRDBText11.Left := 393;
QRLabel10.Left:= QRDBText11.Left;
QRDBText10.Width := 289;
end;

if not dboferta.Enabled = False then begin
QRDBText30.Left := 393;
QRDBText11.Left := 320;
QRLabel10.Left:= QRDBText11.Left;
QRDBText10.Width := 217;
end;

end;

procedure TRFacturaCorta.Qnotasf(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin


 { if not QFacturaFAC_MENSAJE2.IsNull then
    qrMemoMsg.Lines.Add(QFacturaFAC_MENSAJE2.Value);

    if not QFacturaFAC_MENSAJE3.IsNull then
    qrMemoMsg.Lines.Add(QFacturaFAC_MENSAJE3.Value);}


//  lbForma.Caption := copy(lbForma.Caption, 1, length(lbForma.Caption)-2);
end;

procedure TRFacturaCorta.QDetalleCalcFields(DataSet: TDataSet);
{var
  Venta, NumItbis : Double;
  a : integer;
begin
  QDetalleUnidadMetros.Value := 'Mts';

  if QDetallepro_cantempaque.Value > 0 then
    QDetalleEmpaque.Value := QDetalledet_CANTIDAD.Value / QDetallepro_cantempaque.Value
  else
    QDetalleEmpaque.Value := 0;

  if (QDetalleDET_CONITBIS.value = 'S') and (QFacturaFAC_CONITBIS.Value = 'True') then
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
    Venta := QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.value;
    QDetalleCalcDesc.value    := (Venta * QDetalleDET_DESCUENTO.value)/100;
    QDetallePrecioItbis.value := Venta;
    QDetalleCalcItbis.value   := 0;
    QDetalleValor.value       := (Venta-QDetalleCalcDesc.value);
  end;
var
  Venta, NumItbis : Double;
  a : integer;
begin
  QDetalleUnidadMetros.Value := 'Mts';

  if QDetallepro_cantempaque.Value > 0 then
    QDetalleEmpaque.Value := QDetalledet_CANTIDAD.Value / QDetallepro_cantempaque.Value
  else
    QDetalleEmpaque.Value := 0;

  if (QDetalleDET_CONITBIS.value = 'S') and (QFacturaFAC_CONITBIS.Value = 'True') then
  begin
    NumItbis := RoundTo((QDetalleDET_ITBIS.asfloat/100)+1, -2);
    if dm.QParametrospar_itbisincluido.Value = 'True' then
    begin
      if QDetalleDET_DESCUENTO.Value = 0 then
      begin
        Venta := (QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value)/NumItbis;
        QDetallePrecioItbis.value := RoundTo((QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value)/NumItbis, -2);
        QDetalleCalcDesc.value    := 0;
        QDetalleCalcItbis.value   := RoundTo(((((QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value)/NumItbis) - QDetalleCalcDesc.value) * QDetalleDET_ITBIS.value) / 100, -2);
        QDetalleValor.value     := (QDetallePrecioItbis.value - QDetalleCalcDesc.value + QDetalleCalcItbis.value);
        QDetalleCalcItbis.value := RoundTo(QDetalleCalcItbis.value, -2);
      end
      else
      begin
        QDetalleTotalDescuento.Value := RoundTo((((QDetalleDET_PRECIO.value)/NumItbis) * QDetalleDET_DESCUENTO.Value) / 100, -3);
        Venta := ((QDetalleDET_PRECIO.value - QDetalleTotalDescuento.Value)  * QDetalleDET_CANTIDAD.Value)/NumItbis;
        QDetalleCalcDesc.value    := RoundTo((QDetalleTotalDescuento.Value * QDetalleDET_CANTIDAD.Value), -2);
        //QDetallePrecioItbis.value := RoundTo((QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value)/NumItbis, -2);
        QDetallePrecioItbis.Value := RoundTo(Venta, -2);
        QDetalleCalcItbis.value   := RoundTo((Venta * QDetalleDET_ITBIS.value) / 100, -2);
        QDetalleValor.value     := (Venta + QDetalleCalcItbis.value);
        QDetalleCalcItbis.value := RoundTo(QDetalleCalcItbis.value, -2);
      end;
    end
    else
    begin
      if QDetalleDET_DESCUENTO.Value = 0 then
      begin
        Venta := QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value;
        QDetallePrecioItbis.value := RoundTo(QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value, -2);
        QDetalleCalcDesc.value    := 0;
        QDetalleCalcItbis.value   := RoundTo((((QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value) - QDetalleCalcDesc.value) * QDetalleDET_ITBIS.value) / 100, -2);
        QDetalleValor.value     := (QDetallePrecioItbis.value - QDetalleCalcDesc.value + QDetalleCalcItbis.value);
        QDetalleCalcItbis.value := RoundTo(QDetalleCalcItbis.value, -2);
      end
      else
      begin
        QDetalleTotalDescuento.Value := (QDetalleDET_PRECIO.value * QDetalleDET_DESCUENTO.Value) / 100;
        Venta := (QDetalleDET_PRECIO.value - QDetalleTotalDescuento.Value)  * QDetalleDET_CANTIDAD.Value;
        QDetalleCalcDesc.value    := RoundTo((QDetalleTotalDescuento.Value * QDetalleDET_CANTIDAD.Value), -2);
        QDetallePrecioItbis.Value := RoundTo(Venta, -2);
        QDetalleCalcItbis.value   := RoundTo((Venta * QDetalleDET_ITBIS.value) / 100, -2);
        QDetalleValor.value     := (Venta + QDetalleCalcItbis.value);
        QDetalleCalcItbis.value := RoundTo(QDetalleCalcItbis.value, -2);
      end;
    end;
  end
  else
  begin
    QDetalleTotalDescuento.Value := (QDetalleDET_PRECIO.value * QDetalleDET_DESCUENTO.Value) / 100;
    Venta := QDetalleDET_PRECIO.value*QDetalleDET_CANTIDAD.value;
    QDetalleCalcDesc.value    := (Venta * QDetalleDET_DESCUENTO.value)/100;
    QDetallePrecioItbis.value := Venta;
    QDetalleCalcItbis.value   := 0;
    QDetalleValor.value       := (Venta-QDetalleCalcDesc.value);
  end;  }

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

procedure TRFacturaCorta.ChildBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  t : string;
begin
  QRRichText1.Lines.Text := QDetalleDET_NOTA.Value;
  if dm.QParametrospar_inv_imprime_comentario.AsString <> 'True' then
    PrintBand := (QDetalleDET_NOTA.Value <> '') or (QSerie.RecordCount > 0) or (QDetallepro_utilizamedidor.Value = 'True')
  else
    PrintBand := (QDetalleDET_NOTA.Value <> '') or (QSerie.RecordCount > 0) or (QDetallepro_utilizamedidor.Value = 'True')
    or (QDetallepro_comentario.Value<> '') ;

  if dm.QParametrospar_inv_imprime_comentario.AsString = 'True' then
  begin
    if QDetallepro_comentario.Value <> '' then
    begin
      QRRichText1.Lines.Text := QDetallepro_comentario.Value;
    end;
  end;

  //Numeros de Serie
  //lbSerie.Caption := '';
  if QSerie.RecordCount > 0 then
  begin
    t := '';
    QSerie.First;
    while not QSerie.Eof do
    begin
      t := t + QSerieser_numero.Value+', ';
      QSerie.next;
    end;
    QRRichText1.Lines.Add('SN#:'+ copy(t,1,length(t)-2));
  end
  else
  begin
    if (not QDetalleMedidorID.IsNull) or (QDetalleMedidorID.AsInteger > 0) then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select Nombre from medidores where MedidorID = :med');
      dm.Query1.Parameters.ParamByName('med').Value := QDetalleMedidorID.Value;
      dm.Query1.Open;
      
      //datos del medidor
      QRRichText1.Lines.Add('Medidor: '+dm.Query1.FieldByName('Nombre').AsString);
      QRRichText1.Lines.Add('Conteo Anterior: '+QDetalleMedidor_Secuencia.AsString);
      QRRichText1.Lines.Add('Conteo Actual: '+QDetalleMedidor_Cantidad.AsString);
      QRRichText1.Lines.Add('Cantidad Galones: '+QDetalleDET_CANTIDAD.AsString);
    end;
  end;
  if QRRichText1.Lines.Count = 0 then
    ChildBand2.Height := 20;
end;

procedure TRFacturaCorta.GenerarCodigoQR(const Texto: string; Imagen: TQRImage);
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

    // Calculamos el tamaùo basado en mùdulos
    ModuleSize := 5; // Cada mùdulo mide 5 pùxeles (puedes ajustar)
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

      // Escalar para llenar el tamaùo del QRImage
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


procedure TRFacturaCorta.QFacturaCalcFields(DataSet: TDataSet);
var
  Fecha: TDateTime;
  FechaStr: string;
begin
  if not QFacturaNCF_Fijo.isnull  then
    QFacturaNumeroCF.Value :=  Trim(QFacturaNCF_Fijo.Value)+Trim(formatfloat('00000000',QFacturaNCF_Secuencia.Value))
   else
    QFacturaNumeroCF.Value := ' ';

  QFacturaNumero.Value := inttostr(QFacturaFAC_NUMERO.Value);
  if (not QFacturaNCF_Fijo.isnull) or (not QFacturaeNCF.IsNull ) then BEGIN
    QFacturaNumeroCF.Value := Trim(QFacturaNCF_Fijo.Text)+formatfloat('00000000',QFacturaNCF_Secuencia.Value);
       //buscar vencimiento
      with QDatos do begin
     { Close;
      sql.Clear;
      SQL.Add('select case when VerificaVenc = 0 then NULL ELSE FechaVenc end FechaVenc');
      sql.Add('from NCF ');
      sql.Add('where emp_codigo = :emp_codigo');
      sql.Add('and suc_codigo = :suc_codigo');
      sql.Add('and NCF_Fijo   = :NCF_Fijo');
      Parameters.ParamByName('emp_codigo').Value := QFacturaEMP_CODIGO.Value;
      Parameters.ParamByName('suc_codigo').Value := QFacturaSUC_CODIGO.Value;
      Parameters.ParamByName('NCF_Fijo').Value   := QFacturaNCF_Fijo.Text;
      Open;  }
       Close;
      sql.Clear;
      SQL.Add('select FechaVencimientoSecuenciaDGII as FechaVenc');
      sql.Add('from SecuenciaDGII ');
      sql.Add(' where emp_codigo = :emp_codigo');
      sql.Add(' and Tipo= :tipo');
      Parameters.ParamByName('emp_codigo').Value := QFacturaEMP_CODIGO.Value;
      Parameters.ParamByName('tipo').Value   := QFacturacod_dgii.Value;
      Open;
      if FieldByName('FechaVenc').IsNull = False then begin
      QRLVNCF.Visible := True;
      QRLVNCFECH.Visible := True;
      FechaStr := FieldByName('FechaVenc').AsString;  
      if FechaStr <> '' then
        begin
          Fecha := EncodeDate(
                     StrToInt(Copy(FechaStr, 1, 4)),   // Aùo
                     StrToInt(Copy(FechaStr, 6, 2)),   // Mes
                     StrToInt(Copy(FechaStr, 9, 2))    // Dùa
                   );
          QRLVNCFECH.Caption := FormatDateTime('dd/mm/yyyy', Fecha);
        end
        else
          QRLVNCFECH.Caption := '';
    //  QRLVNCFECH.Caption := FormatDateTime('dd/mm/yyyy',FieldByName('FechaVenc').AsDateTime);
      end;

      if FieldByName('FechaVenc').IsNull = True then begin
      QRLVNCF.Visible := False;
      QRLVNCFECH.Visible := False;
      QRLVNCFECH.Caption := '';
      end;
      end;

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
  END
  else
    QFacturaNumeroCF.Value := ' ';
end;

procedure TRFacturaCorta.CorregirError;
var
  mov : string;
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('insert into movimientos (emp_codigo,suc_codigo,mov_tipo,mov_numero,mov_secuencia,fac_forma,');
  dm.Query1.SQL.Add('tfa_codigo,mov_fecha,mov_monto,mov_abono,mov_status,mov_fechavence,mov_cuota,');
  dm.Query1.SQL.Add('cli_codigo,mon_codigo,mov_tasa)');
  dm.Query1.SQL.Add('select f.emp_codigo, f.suc_codigo, tm.tmo_siglas, f.fac_numero,(select max(mov_secuencia)+1');
  dm.Query1.SQL.Add('from movimientos where emp_codigo = :emp1), f.fac_forma,');
  dm.Query1.SQL.Add('f.tfa_codigo, f.fac_fecha, f.fac_total, f.fac_abono, f.fac_status, f.fac_vence, '+QuotedStr('False')+',');
  dm.Query1.SQL.Add('f.cli_codigo,1,1');
  dm.Query1.SQL.Add('from facturas f, tiposmov tm, tiposfactura tf');
  dm.Query1.SQL.Add('where f.emp_codigo = tf.emp_codigo');
  dm.Query1.SQL.Add('and f.tfa_codigo = tf.tfa_codigo');
  dm.Query1.SQL.Add('and tm.emp_codigo = tf.emp_codigo');
  dm.Query1.SQL.Add('and tm.tmo_codigo = tf.tmo_codigo');
  dm.Query1.SQL.Add('and f.fac_numero not in (select mov_numero');
  dm.Query1.SQL.Add('from movimientos');
  dm.Query1.SQL.Add('where emp_codigo = f.emp_codigo');
  dm.Query1.SQL.Add('and suc_codigo = f.suc_codigo');
  dm.Query1.SQL.Add('and tfa_codigo = f.tfa_codigo');
  dm.Query1.SQL.Add('and fac_forma = f.fac_forma');
  dm.Query1.SQL.Add('and mov_numero = f.fac_numero)');
  dm.Query1.SQL.Add('and tf.tfa_actbalance = '+QuotedStr('True'));
  dm.Query1.SQL.Add('and f.emp_codigo = :emp2');
  dm.Query1.SQL.Add('and f.cli_codigo = :cli');
  dm.Query1.SQL.Add('and suc_codigo = :suc');
  dm.Query1.Parameters.ParamByName('emp1').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('emp2').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('cli').Value  := QFacturaCLI_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('suc').Value  := QFacturaSUC_CODIGO.Value;
  dm.Query1.ExecSQL;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('update clientes');
  dm.Query1.SQL.Add('set	cli_balance = (select isnull(sum(mov_monto-mov_abono),0)');
  dm.Query1.SQL.Add('from movimientos');
  dm.Query1.SQL.Add('where emp_codigo = clientes.emp_codigo');
  dm.Query1.SQL.Add('and cli_codigo = clientes.cli_codigo');
  dm.Query1.SQL.Add('and mov_status = '+QuotedStr('PEN')+')');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and cli_codigo = :cli');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('cli').Value := QFacturaCLI_CODIGO.Value;
  dm.Query1.ExecSQL;
end;

procedure TRFacturaCorta.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Linea := 1;
end;

procedure TRFacturaCorta.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Linea := Linea + 1;
  //if Linea = 50 then RFactura.NewPage;
end;

procedure TRFacturaCorta.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  {QRDBText16.Enabled := Rfactura.QRPrinter.PageNumber = RFactura.QRPrinter.PageCount;
  QRDBText17.Enabled := Rfactura.QRPrinter.PageNumber = RFactura.QRPrinter.PageCount;
  QRDBText18.Enabled := Rfactura.QRPrinter.PageNumber = RFactura.QRPrinter.PageCount;
  QRLabel21.Enabled := Rfactura.QRPrinter.PageNumber = RFactura.QRPrinter.PageCount;
  QRLabel20.Enabled := Rfactura.QRPrinter.PageNumber = RFactura.QRPrinter.PageCount;
  QRLabel19.Enabled := Rfactura.QRPrinter.PageNumber = RFactura.QRPrinter.PageCount;
  QRLabel40.Enabled := Rfactura.QRPrinter.PageNumber = RFactura.QRPrinter.PageCount;
  QRLabel41.Enabled := Rfactura.QRPrinter.PageNumber = RFactura.QRPrinter.PageCount;
  QRLabel42.Enabled := Rfactura.QRPrinter.PageNumber = RFactura.QRPrinter.PageCount;
  lbAbono2.Enabled := Rfactura.QRPrinter.PageNumber = RFactura.QRPrinter.PageCount;}
end;

procedure TRFacturaCorta.ChildBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select Ciudad_Origen, Ciudad_Destino, Nombre_envia,');
  dm.Query1.SQL.Add('Telefono_Envia, Nombre_Recibe, Telefono_Recibe, Descripcion');
  dm.Query1.SQL.Add('from envio where emp_codigo = :emp and suc_codigo = :suc');
  dm.Query1.SQL.Add('and fac_numero = :fac');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('suc').Value := QFacturaSUC_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('fac').Value := QFacturaFAC_NUMERO.Value;
  dm.Query1.Open;
  PrintBand := dm.Query1.RecordCount > 0;
  if dm.Query1.RecordCount > 0 then
  begin
    lbenvio_telefono.Caption := dm.Query1.FieldByNAme('Telefono_Envia').AsString;
    lbenvio_nombre.Caption := dm.Query1.FieldByNAme('Nombre_envia').AsString;
    lbenvio_ciudad.Caption := dm.Query1.FieldByNAme('Ciudad_Origen').AsString;

    lbrecibe_telefono.Caption := dm.Query1.FieldByNAme('Telefono_Recibe').AsString;
    lbrecibe_nombre.Caption := dm.Query1.FieldByNAme('Nombre_Recibe').AsString;
    lbrecibe_ciudad.Caption := dm.Query1.FieldByNAme('Ciudad_Destino').AsString;

    lbenvio_descripcion.Caption := dm.Query1.FieldByNAme('Descripcion').AsString;
  end;
end;

procedure TRFacturaCorta.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if lboferta.Enabled = False then begin
QRLabel10.Left:= 393;
end;

if not lboferta.Enabled = False then begin
QRLabel10.Left:= 320;
end;
end;

procedure TRFacturaCorta.QFacturaAfterOpen(DataSet: TDataSet);
begin
WITH DM.Query1 DO BEGIN
  Close;
  SQL.Clear;
  if (QFactura.RecordCount>0) then
  begin
    SQL.Add('SELECT isnull(TFA_MENSAJE1,'+QuotedStr('')+') MENSAJE FROM TIPOSFACTURA'+
    ' WHERE TFA_CODIGO = '+QFacturaTFA_CODIGO.Text+' AND EMP_CODIGO = '+QFacturaEMP_CODIGO.Text);
    Open;
    if not DM.Query1.RecordCount > 0 then
    qrMemoMsg.Lines.Add(DM.Query1.FieldByName('MENSAJE').Value);

  end;

  end;


end;

procedure TRFacturaCorta.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
  a : integer;
  cambiar : TQRLabel;
begin
    lbNumCopia.Caption := '';
  if Trim(lbNumCopia.Hint) <> '' then
    lbNumCopia.Caption := lbNumCopia.Hint;
    
 if FileExists('.\Transporte.txt') then begin
  ChildBand3.Enabled := False;
  //qrMemoMsg.Enabled  := False;
  QRLabel56.Enabled  := False;
  QRDBText28.Enabled := False;
  WITH DM.Query1 DO BEGIN
  Close;
  SQL.Clear;
  SQL.Add('SELECT MIN(FECHA) MINIMO, MAX(FECHA) MAXIMO FROM DET_TICKET_TRANSP');
  SQL.Add('WHERE FAC_NUMERO = :NUM  AND TFA_CODIGO = :TFAC  AND FAC_FORMA = :FOR AND  SUC_CODIGO = :SUC  AND EMP_CODIGO = :EMP');
  Parameters[0].Value := QFacturaFAC_NUMERO.Value;
  Parameters[1].Value := QFacturaTFA_CODIGO.Value;
  Parameters[2].Value := QFacturaFAC_FORMA.Value;
  Parameters[3].Value := QFacturaSUC_CODIGO.Value;
  Parameters[4].Value := QFacturaEMP_CODIGO.Value;
  Open;
  if NOT IsEmpty then
  QRLabel29.Caption := 'Desde '+FormatDateTime('dd/mm/yyyy',DM.Query1.FieldByName('MINIMO').AsDateTime)+
                       ' Hasta '+FormatDateTime('dd/mm/yyyy',DM.Query1.FieldByName('MAXIMO').AsDateTime);
  end;
  end;

    if not QFacturaFAC_MENSAJE1.IsNull then
    qrMemoMsg.Lines.Add(QFacturaFAC_MENSAJE1.Value);

  if QDetalle.Locate('PRO_NOMBRE','SERVICIO DE ENVIO',[]) then
  ChildBand3.Enabled := True else
  ChildBand3.Enabled := False;

  IF QFacturaporc_desc_gral.Value > 0 then begin
  QRLDescuento.Caption := 'DESC '+FormatCurr('#,0.00',QFacturaporc_desc_gral.Value)+'%';
  end
  ELSE
  if QFacturaFAC_DESCUENTO.Value > 0 THEN
  QRLDescuento.Caption := 'DESC ITEMS' ELSE
  QRLDescuento.Caption := 'DESCUENTO';


  if dm.QParametrospar_inv_unidad_medida.Value = 'True' then
    QRDBText30.DataField := 'pro_unidad_medida';

  if dm.QParametrosIdioma.AsString = 'I' then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select objeto, ingles from Traduccion where modulo = :mod');
    dm.Query1.Parameters.ParamByName('mod').Value := 'RFactura';
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

  if (dm.QParametrospar_fac_preimpresa.Value = 'True') and
  (dm.QParametrospar_formato_preimpreso.Value = 'QRAgregados') then
  begin
    QRLabel26.Caption := 'PLACA';
    QRLabel27.Caption := 'CHOFER';
    QRDBText21.DataField := 'Placa';
    QRDBText22.DataField := 'Chofer';
    QRDBText30.DataField := 'UnidadMetros';
  end;

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select sum(isnull(det_cantidad,0)) as cant from det_factura');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and suc_codigo = :suc');
  dm.Query1.sql.add('and fac_forma = :for');
  dm.Query1.sql.add('and tfa_codigo = :tfa');
  dm.Query1.sql.add('and fac_numero = :num');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('suc').Value := QFacturaSUC_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('for').Value := QFacturaFAC_FORMA.Value;
  dm.Query1.Parameters.ParamByName('tfa').Value := QFacturaTFA_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('num').Value := QFacturaFAC_NUMERO.Value;
  dm.Query1.Open;
  lbProds.Caption := floattostr(dm.Query1.FieldByName('cant').AsFloat);

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select caj_nombre from cajeros');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and caj_codigo = :caj');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('caj').Value := QFacturaCAJ_CODIGO.Value;
  dm.Query1.Open;
  if dm.Query1.RecordCount > 0 then
    lbcajero.Caption := dm.Query1.FieldByName('caj_nombre').AsString
  else
    lbcajero.Caption := '';

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select tfa_nombre, tfa_actbalance from tiposfactura');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and tfa_codigo = :tipo');
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.parambyname('tipo').Value := QFacturaTFA_CODIGO.value;
  dm.Query1.open;
  ActBalance := dm.Query1.fieldbyname('tfa_actbalance').AsString;
  lbFactura.caption := dm.Query1.fieldbyname('tfa_nombre').asstring;
  if ActBalance = 'True' then CorregirError;

  {dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select tip_codigo, isnull(nombre_dgii, tip_nombre) as nombre from TipoNCF');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and tip_codigo = :tipo');
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.parambyname('tipo').Value := QFacturatip_codigo.value;
  dm.Query1.open;
  lbFactura.caption := dm.Query1.fieldbyname('nombre').asstring;     }


  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select tfa_imprimie_encabezado from tiposfactura');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and tfa_codigo = :tfa');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('tfa').Value := QFacturaTFA_CODIGO.Value;
  dm.Query1.Open;


  if dm.QParametrospar_inv_unidad_medida.AsString <> 'True' then
  begin
    if (dm.QParametrospar_fac_oferta.Value <> 'True') and (dm.QParametrosPAR_FACMEDIDA.Value <> 'True') then
    begin
      lboferta.Enabled   := False;
      dboferta.Enabled   := False;
      //QRLabel43.Enabled  := False;
      //QRDBText8.Enabled  := False;
      QRDBText30.Enabled := False;
      QRLabel10.Left   := 410;
      QRDBText11.Left  := 420;
      QRDBText10.Width := 305;
    end
    else if (dm.QParametrospar_fac_oferta.Value <> 'True') and (dm.QParametrosPAR_FACMEDIDA.Value = 'True') then
    begin
      lboferta.Enabled   := False;
      dboferta.Enabled   := False;

      {if dm.QParametrospar_visualizar_cant_empaque.Value <> 'True' then
      begin
        //QRLabel43.Enabled  := False;
        //QRDBText8.Enabled  := False;

        QRDBText30.Left := 463;
        QRLabel10.Left  := 410;
        QRDBText11.Left := 410;
        QRDBText10.Width := 305;
      end
      else
      {if dm.QParametrospar_visualizar_cant_empaque.Value = 'True' then
      begin
        //QRDBText8.Left  := 445;
        //QRLabel43.Left  := 448;

        QRDBText30.Left := 410;
        QRDBText11.Left := 355;
        QRLabel10.Left  := 368;
        QRDBText10.Width := 305;
      end;
    end
    else }
    end;
    if (dm.QParametrospar_fac_oferta.Value = 'True') and (dm.QParametrosPAR_FACMEDIDA.Value <> 'True') then
    begin
      //QRDBText8.Enabled  := false;
      //QRLabel43.Enabled  := false;
      QRDBText30.Enabled := false;

      QRLabel10.Left   := 360;
      QRDBText11.Left  := 360;
      QRDBText10.Width := 265;
    end
    else if (dm.QParametrospar_fac_oferta.Value = 'True') and (dm.QParametrosPAR_FACMEDIDA.Value = 'True') then
    begin
      if dm.QParametrospar_visualizar_cant_empaque.Value <> 'True' then
      begin
        //QRLabel43.Enabled  := False;
        //QRDBText8.Enabled  := False;

        QRDBText30.Left := 399;
        QRDBText11.Left := 348;
        QRLabel10.Left  := 350;
        QRDBText10.Width := 280;
      end;
    end;
  end
  else
  begin
    //QRDBText8.Enabled  := false;
    //QRLabel43.Enabled  := false;
    lboferta.Enabled   := False;
    dboferta.Enabled   := False;
    QRDBText30.Left := 465;
    QRDBText11.Left := 410;
    QRLabel10.Left  := 423;
    QRDBText10.Width := 305;
  end;

   ImprimeEncaqbezado := dm.Query1.fieldbyname('tfa_imprimie_encabezado').AsString;


  if (dm.QParametrospar_imprime_logo.Value = 'True') and (ImprimeEncaqbezado = 'True') then begin
  IF DM.QEmpresasEMP_LOGO.IsNull THEN begin
  QRDBText1.Enabled := True;
  QRDBImage1.Enabled := False;
  END
  ELSE
  BEGIN
  QRDBText1.Enabled := False;
  QRDBImage1.Enabled := True;
  end;
  QRDBText2.Enabled := True;
  QRDBText3.Enabled := QRDBText2.Enabled;
  QRDBText4.Enabled := QRDBText2.Enabled;
  QRDBText5.Enabled := QRDBText2.Enabled;
  QRLabel1.Enabled  := QRDBText2.Enabled;
  QRLabel2.Enabled  := QRDBText2.Enabled;
  QRLabel44.Enabled := QRDBText2.Enabled;
  QRLabel45.Enabled := QRDBText2.Enabled;
  QRLabel5.Top      := 133;
  QRDBText7.Top     := QRLabel5.Top;
  QRDBText23.Top    := QRLabel5.Top;
  QRLabel17.Top     := QRLabel5.Top;
  QRLabel2.Top      := 115;
  QRLabel45.Top     := QRLabel2.Top;
  QRDBText5.Top     := QRLabel2.Top;
  QRLabel1.top      := 96;
  QRLabel44.Top     := QRLabel1.top;
  QRDBText4.Top     := QRLabel1.top;
  QRDBText3.Top     := 80;
  QRDBText2.Top     := 64;
  QRDBImage1.Height := 64;
  QRDBImage1.Width  := 271;
  end
  else
  if (dm.QParametrospar_imprime_logo.Value = 'True') and (ImprimeEncaqbezado = 'false') then begin
  IF DM.QEmpresasEMP_LOGO.IsNull THEN begin
  QRDBText1.Enabled := True;
  QRDBImage1.Enabled := False;
  END
  ELSE
  BEGIN
  QRDBText1.Enabled := False;
  QRDBImage1.Enabled := True;
  end;
  QRDBText2.Enabled := False;
  QRDBText3.Enabled := QRDBText2.Enabled;
  QRDBText4.Enabled := QRDBText2.Enabled;
  QRDBText5.Enabled := QRDBText2.Enabled;
  QRLabel1.Enabled  := QRDBText2.Enabled;
  QRLabel2.Enabled  := QRDBText2.Enabled;
  QRLabel44.Enabled := QRDBText2.Enabled;
  QRLabel45.Enabled := QRDBText2.Enabled;
  QRLabel5.Top      := 136;
  QRDBText7.Top     := QRLabel5.Top;
  QRDBText23.Top    := QRLabel5.Top;
  QRLabel17.Top     := QRLabel5.Top;
  QRDBImage1.Height := 111;
  QRDBImage1.Width  := 423;
  end
  else
  if (dm.QParametrospar_imprime_logo.Value = 'False') and (ImprimeEncaqbezado = 'True') then begin
  QRDBImage1.Enabled := False;
  QRDBText1.Enabled := True;
  QRDBText2.Enabled := True;
  QRDBText3.Enabled := QRDBText2.Enabled;
  QRDBText4.Enabled := QRDBText2.Enabled;
  QRDBText5.Enabled := QRDBText2.Enabled;
  QRLabel1.Enabled  := QRDBText2.Enabled;
  QRLabel2.Enabled  := QRDBText2.Enabled;
  QRLabel44.Enabled := QRDBText2.Enabled;
  QRLabel45.Enabled := QRDBText2.Enabled;
  QRLabel5.Top      := 96;
  QRDBText7.Top     := QRLabel5.Top;
  QRDBText23.Top    := QRLabel5.Top;
  QRLabel17.Top     := QRLabel5.Top;
  QRLabel2.Top      := 80;
  QRLabel45.Top     := QRLabel2.Top;
  QRDBText5.Top     := QRLabel2.Top;
  QRLabel1.top      := 64;
  QRLabel44.Top     := QRLabel1.top;
  QRDBText4.Top     := QRLabel1.top;
  QRDBText3.Top     := 48;
  QRDBText2.Top     := 32;
  end
  else
  if (dm.QParametrospar_imprime_logo.Value = 'False') and (ImprimeEncaqbezado = 'false') then begin
  QRDBImage1.Enabled := dm.QParametrospar_imprime_logo.Value = 'True';
  QRDBText1.Enabled := False;
  QRDBText2.Enabled := False;
  QRDBText3.Enabled := QRDBText2.Enabled;
  QRDBText4.Enabled := QRDBText2.Enabled;
  QRDBText5.Enabled := QRDBText2.Enabled;
  QRLabel1.Enabled  := QRDBText2.Enabled;
  QRLabel2.Enabled  := QRDBText2.Enabled;
  QRLabel44.Enabled := QRDBText2.Enabled;
  QRLabel45.Enabled := QRDBText2.Enabled;
  QRLabel5.Top      := 96;
  QRDBText7.Top     := QRLabel5.Top;
  QRDBText23.Top    := QRLabel5.Top;
  QRLabel17.Top     := QRLabel5.Top;
  end;



  if not QSerie.active then QSerie.Open;
  if dm.QParametrosPAR_FACTOTALIZAPIE.Value = 'True' then
  QRBand4.AlignToBottom := True else
  QRBand4.AlignToBottom := False;

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

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select mon_sigla from moneda');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and mon_codigo = :mon');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('mon').Value := QFacturaMON_CODIGO.Value;
  dm.Query1.Open;
  lbmoneda.Caption  := dm.Query1.FieldByName('mon_sigla').AsString;
  lbmoneda2.Caption := dm.Query1.FieldByName('mon_sigla').AsString;

  {if not QFacturaCLI_CODIGO.IsNull then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cli_balance from clientes');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and cli_codigo = :cli');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cli').Value := QFacturaCLI_CODIGO.Value;
    dm.Query1.Open;
    lbBal.Caption := format('%n',[dm.Query1.FieldByName('cli_balance').AsFloat]);
  end
  else
    lbBal.Caption := '0.00';}

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select t.tcl_nombre from clientes c, TIPOCLIENTES t');
  dm.Query1.sql.add('where t.emp_codigo = c.emp_codigo');
  dm.Query1.sql.add('and t.tcl_codigo = c.tcl_codigo');
  dm.Query1.sql.add('and c.emp_codigo = :emp');
  dm.Query1.sql.add('and c.cli_codigo = :cli');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('cli').Value := QFacturaCLI_CODIGO.Value;
  dm.Query1.Open;
  {if dm.Query1.RecordCount > 0 then
    lbtipo.Caption := dm.Query1.FieldByName('tcl_nombre').AsString
  else
    lbtipo.Caption := ' ';
}
  lbAbono.Enabled  := False;
  lbAbono2.Enabled := False;
  lbAbono3.Enabled := False;
  if RFacturaCorta.QRPrinter.PageNumber = RFacturaCorta.QRPrinter.PageCount then
  begin
    if (ActBalance = 'True') and (QFacturaFAC_ABONO.Value > 0) then
    begin
      lbAbono.Enabled  := True;
      lbAbono2.Enabled := True;
      lbAbono3.Enabled := True;
    end
    else
    begin
      lbAbono.Enabled  := False;
      lbAbono2.Enabled := False;
      lbAbono3.Enabled := False;
    end;
  end;

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select cpa_nombre from condiciones');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and cpa_codigo = :codigo');
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.parambyname('codigo').Value := QFacturaCPA_CODIGO.value;
  dm.Query1.open;
  lbCondicion.caption := dm.Query1.fieldbyname('cpa_nombre').asstring;

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select ven_nombre, ven_telefono from vendedores');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and ven_codigo = :vend');
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.parambyname('vend').Value := QFacturaVEN_CODIGO.value;
  dm.Query1.open;
  if dm.Query1.fieldbyname('ven_telefono').asstring <> '' then
  lbVendedor.caption := dm.Query1.fieldbyname('ven_nombre').asstring+' / '+
                        dm.Query1.fieldbyname('ven_telefono').asstring else
  lbVendedor.caption := dm.Query1.fieldbyname('ven_nombre').asstring ;

  lbForma.Caption := '';
  if not QFormasPago.active then QFormasPago.Open;
  if not QForma.Active then QForma.Open;
  QFormasPago.First;
  while not QFormasPago.Eof do
  begin
    QForma.Locate('fpa_codigo',inttostr(QFormasPagoFPA_CODIGO.Value),[]);
    lbForma.Caption := lbForma.Caption + ' '+copy(QFormaFPA_NOMBRE.Value,1,1)+': '+
                        format('%n',[(QFormasPagoFOR_MONTO.value/QFacturafac_tasa.AsFloat)]);
    QFormasPago.next;
  end;
  if  dm.QParametrosUsa_FacturacionElectronica.Value  then
    begin
    GenerarCodigoQR(QFacturaUrlCodigoQR.Value, qrImgQRCode)  end
    else
    begin
      qrImgQRCode.Visible:=False;
      lblcodigoseg.Caption:= '';
      lblFirmaDigital.Caption:='';
      QRDBText16.Visible:=False;
      QRDBText26.Visible:=False;
    end;

   if not QFacturaAceptadoDGII.Value then
   begin
      lblcodigoseg.Caption:= '';
      lblFirmaDigital.Caption:='';
      QRDBText16.Visible:=False;
      QRDBText26.Visible:=False;
   end;
end;

end.
