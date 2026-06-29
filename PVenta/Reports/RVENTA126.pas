unit RVENTA126;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB, Math, DelphiZXingQRCode;

type
  TRFacturaSarita = class(TQuickRep)
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
    QRBand3: TQRBand;
    lbSec: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
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
    QFacturaSubTotal: TFloatField;
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
    QRLabel18: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRExpr1: TQRExpr;
    QRDBRichText1: TQRDBRichText;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    lbAbono: TQRLabel;
    lbAbono3: TQRDBText;
    lbAbono2: TQRLabel;
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
    lbReimpresion: TQRLabel;
    QRDBText29: TQRDBText;
    QFacturafac_rnc: TStringField;
    QRRichText1: TQRRichText;
    QDetalledet_cantempaque: TBCDField;
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
    QFacturafac_tasa: TBCDField;
    QDetallepro_comentario: TMemoField;
    QFacturaOrdenID: TStringField;
    QRLabel38: TQRLabel;
    QRDBText31: TQRDBText;
    QDetalleMedida: TStringField;
    qrMemoMsg: TQRMemo;
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
    QRLabel56: TQRLabel;
    QRLVNCF: TQRLabel;
    QRLVNCFECH: TQRLabel;
    QRLTipoNCF: TQRLabel;
    QDatos: TADOQuery;
    QRLabel33: TQRLabel;
    QRLabel57: TQRLabel;
    QFacturaFAC_NOTA: TMemoField;
    QRLabel31: TQRLabel;
    QRDBText9: TQRDBText;
    QRBand5: TQRBand;
    QRLabel59: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText25: TQRDBText;
    QRDBTextOrden: TQRDBText;
    QDetalleSubPedido: TStringField;
    QDetalleOrden: TStringField;
    QDetalleRecargo: TCurrencyField;
    QDetalleSecuencia: TIntegerField;
    QFacturaRecargo: TCurrencyField;
    QRLabel10: TQRLabel;
    QRDBText8: TQRDBText;
    QFacturaPedidoNo: TStringField;
    QFacturaReferencia: TStringField;
    QDetalleSEC: TIntegerField;
    QRLabel11: TQRLabel;
    QRLabel9: TQRLabel;
    QRBand2: TQRBand;
    QRLabel62: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QFacturaeNCF: TStringField;
    QFacturaUrlCodigoQR: TMemoField;
    QFacturacodigoseguridad: TStringField;
    QFacturafechafirma: TStringField;
    QFacturacod_dgii: TIntegerField;
    QFacturaAceptadoDGII: TBooleanField;
    QFacturatip_codigo: TIntegerField;
    qrImgQRCode: TQRImage;
    lblcodigoseg: TQRLabel;
    lblFirmaDigital: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText26: TQRDBText;
    lbNumCopia: TQRLabel;
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
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
    procedure QRDBText1Print(sender: TObject; var Value: String);
    procedure QRDBText19Print(sender: TObject; var Value: String);
    procedure QRLabel64Print(sender: TObject; var Value: String);
    procedure QRLabel62Print(sender: TObject; var Value: String);

  private

  public
    ActBalance, ImprimeEncaqbezado : String;
    Linea : Integer;
    procedure CorregirError;
    procedure GenerarCodigoQR(const Texto: string; Imagen: TQRImage);
  end;

var
  RFacturaSarita: TRFacturaSarita;

implementation

uses SIGMA01;


{$R *.DFM}
procedure TRFacturaSarita.GenerarCodigoQR(const Texto: string; Imagen: TQRImage);
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



procedure TRFacturaSarita.QRBand3BeforePrint(Sender: TQRCustomBand;
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
end;

procedure TRFacturaSarita.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
  a : integer;
  cambiar : TQRLabel;
  curr, total: Integer;
begin

     lbNumCopia.Caption := '';
  if Trim(lbNumCopia.Hint) <> '' then
    lbNumCopia.Caption := lbNumCopia.Hint;
    
  if not QFacturaFAC_MENSAJE1.IsNull then
    qrMemoMsg.Lines.Add(QFacturaFAC_MENSAJE1.Value);

  if not QFacturaFAC_MENSAJE2.IsNull then
    qrMemoMsg.Lines.Add(QFacturaFAC_MENSAJE2.Value);

    if not QFacturaFAC_MENSAJE3.IsNull then
    qrMemoMsg.Lines.Add(QFacturaFAC_MENSAJE3.Value);

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
  {if dm.Query1.RecordCount > 0 then
    lbcajero.Caption := dm.Query1.FieldByName('caj_nombre').AsString
  else
    lbcajero.Caption := '';
   }
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


  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select tfa_imprimie_encabezado from tiposfactura');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and tfa_codigo = :tfa');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('tfa').Value := QFacturaTFA_CODIGO.Value;
  dm.Query1.Open;

  ImprimeEncaqbezado := dm.Query1.fieldbyname('tfa_imprimie_encabezado').AsString;


  QRDBImage1.Enabled := Trim(dm.QParametrospar_imprime_logo.Value) = 'True';

  QRDBText1.Enabled := (Trim(dm.QParametrospar_imprime_logo.Value) = 'False') and (ImprimeEncaqbezado = 'True');
  QRDBText2.Enabled := (Trim(dm.QParametrospar_imprime_logo.Value) = 'False') and (ImprimeEncaqbezado = 'True');
  QRDBText3.Enabled := (Trim(dm.QParametrospar_imprime_logo.Value) = 'False') and (ImprimeEncaqbezado = 'True');
  QRDBText4.Enabled := (Trim(dm.QParametrospar_imprime_logo.Value) = 'False') and (ImprimeEncaqbezado = 'True');
  QRDBText5.Enabled := (Trim(dm.QParametrospar_imprime_logo.Value) = 'False') and (ImprimeEncaqbezado = 'True');
  QRLabel1.Enabled  := (Trim(dm.QParametrospar_imprime_logo.Value) = 'False') and (ImprimeEncaqbezado = 'True');
  QRLabel2.Enabled  := (Trim(dm.QParametrospar_imprime_logo.Value) = 'False') and (ImprimeEncaqbezado = 'True');
  QRLabel44.Enabled := (Trim(dm.QParametrospar_imprime_logo.Value) = 'False') and (ImprimeEncaqbezado = 'True');
  QRLabel45.Enabled := (Trim(dm.QParametrospar_imprime_logo.Value) = 'False') and (ImprimeEncaqbezado = 'True');

  if not QSerie.active then QSerie.Open;

  QRBand4.AlignToBottom := dm.QParametrosPAR_FACTOTALIZAPIE.Value = 'True';
  if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
    lbCliente.DataField := 'CLI_CODIGO'
  else
    lbCliente.DataField := 'CLI_REFERENCIA';

  
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
  if RFacturaSarita.QRPrinter.PageNumber = RFacturaSarita.QRPrinter.PageCount then
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
  dm.Query1.sql.add('select ven_nombre from vendedores');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and ven_codigo = :vend');
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.parambyname('vend').Value := QFacturaVEN_CODIGO.value;
  dm.Query1.open;
  lbVendedor.caption := dm.Query1.fieldbyname('ven_nombre').asstring;

  if not QFormasPago.active then QFormasPago.Open;
  if not QForma.Active then QForma.Open;
  QFormasPago.First;
  while not QFormasPago.Eof do
  begin
    QForma.Locate('fpa_codigo',inttostr(QFormasPagoFPA_CODIGO.Value),[]);
    QFormasPago.next;
  end;

  GenerarCodigoQR('https://www.google.com', qrImgQRCode);
  
//  lbForma.Caption := copy(lbForma.Caption, 1, length(lbForma.Caption)-2);

    if  dm.QParametrosUsa_FacturacionElectronica.Value  then
    begin
    GenerarCodigoQR(QFacturaUrlCodigoQR.Value, qrImgQRCode)  end
    else
    begin
      qrImgQRCode.Enabled := False;
      qrImgQRCode.Visible := False;
      qrImgQRCode.Picture := nil;   

      
      lblcodigoseg.Caption:= '';
      lblFirmaDigital.Caption:='';
      QRDBText16.Enabled := False;
      QRDBText16.Visible:=False;
      QRDBText26.Enabled := False;
      QRDBText26.Visible:=False;

    end;

   if not QFacturaAceptadoDGII.Value then
   begin
      lblcodigoseg.Caption:= '';
      lblFirmaDigital.Caption:='';
      QRDBText16.Visible:=False;
      QRDBText26.Visible:=False;
   end;
   {
  
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
   end;        }

   if Assigned(RFacturaSarita.QRPrinter) then
  begin
    curr  := RFacturaSarita.QRPrinter.PageNumber;
    total := RFacturaSarita.QRPrinter.PageCount; // total de páginas ya calculado si el reporte está preparado
   // lblPaginas.Caption := Format('%d/%d', [curr, total]);
  end  ;
  //else
    //lblPaginas.Caption := '';
end;

procedure TRFacturaSarita.QDetalleCalcFields(DataSet: TDataSet);
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
end;

procedure TRFacturaSarita.ChildBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  t : string;
begin
  QRRichText1.Lines.Text := QDetalleDET_NOTA.Value;
  if dm.QParametrospar_inv_imprime_comentario.AsString <> 'True' then
    PrintBand := (trim(QDetalleDET_NOTA.Value) <> '') or (QSerie.RecordCount > 0) or (QDetallepro_utilizamedidor.Value = 'True')
  else
    PrintBand := (trim(QDetalleDET_NOTA.Value) <> '') or (QSerie.RecordCount > 0) or (QDetallepro_utilizamedidor.Value = 'True')
    or (trim(QDetallepro_comentario.Value) <> '') ;

  if dm.QParametrospar_inv_imprime_comentario.AsString = 'True' then
  begin
    if trim(QDetallepro_comentario.Value) <> '' then
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

procedure TRFacturaSarita.QFacturaCalcFields(DataSet: TDataSet);
var
  Fecha: TDateTime;
  FechaStr: string;
begin
  QFacturaNumero.Value := inttostr(QFacturaFAC_NUMERO.Value);
  if not QFacturaNCF_Fijo.isnull then BEGIN
    QFacturaNumeroCF.Value := Trim(QFacturaNCF_Fijo.Text)+formatfloat('00000000',QFacturaNCF_Secuencia.Value);
      //buscar vencimiento
      with QDatos do begin
      {Close;
      sql.Clear;
      SQL.Add('select case when VerificaVenc = 0 then NULL ELSE FechaVenc end FechaVenc');
      sql.Add('from NCF ');
      sql.Add('where emp_codigo = :emp_codigo');
      sql.Add('and suc_codigo = :suc_codigo');
      sql.Add('and NCF_Fijo   = :NCF_Fijo');
      Parameters.ParamByName('emp_codigo').Value := QFacturaEMP_CODIGO.Value;
      Parameters.ParamByName('suc_codigo').Value := QFacturaSUC_CODIGO.Value;
      Parameters.ParamByName('NCF_Fijo').Value   := QFacturaNCF_Fijo.Text;
      Open;
      if FieldByName('FechaVenc').IsNull = False then begin
      QRLVNCF.Visible := True;
      QRLVNCFECH.Visible := True;
      QRLVNCFECH.Caption := FormatDateTime('dd/mm/yyyy',FieldByName('FechaVenc').AsDateTime);
      end;

      if FieldByName('FechaVenc').IsNull = True then begin
      QRLVNCF.Visible := False;
      QRLVNCFECH.Visible := False;
      QRLVNCFECH.Caption := '';
      end;
      end;         }

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
                     StrToInt(Copy(FechaStr, 1, 4)),   // Año
                     StrToInt(Copy(FechaStr, 6, 2)),   // Mes
                     StrToInt(Copy(FechaStr, 9, 2))    // Día
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
      {SQL.Add('select isnull(b.nombre_dgii, b.tip_nombre) as Nombre');
      sql.Add('from NCF a');
      sql.Add('inner join TiposDoc b on a.emp_codigo=b.emp_codigo and a.tdo_codigo=b.tdo_codigo');
      sql.Add('where a.emp_codigo = :emp_codigo');
      sql.Add('and a.suc_codigo = :suc_codigo');
      sql.Add('and a.NCF_Fijo   = :NCF_Fijo');
      Parameters.ParamByName('emp_codigo').Value := QFacturaEMP_CODIGO.Value;
      Parameters.ParamByName('suc_codigo').Value := QFacturaSUC_CODIGO.Value;
      Parameters.ParamByName('NCF_Fijo').Value   := QFacturaNCF_Fijo.Text;  }

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

procedure TRFacturaSarita.CorregirError;
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

procedure TRFacturaSarita.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Linea := 1;
end;

procedure TRFacturaSarita.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Linea := Linea + 1;
  //if Linea = 50 then RFacturaSarita.NewPage;
end;

procedure TRFacturaSarita.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  {QRDBText16.Enabled := RFacturaSarita.QRPrinter.PageNumber = RFacturaSarita.QRPrinter.PageCount;
  QRDBText17.Enabled := RFacturaSarita.QRPrinter.PageNumber = RFacturaSarita.QRPrinter.PageCount;
  QRDBText18.Enabled := RFacturaSarita.QRPrinter.PageNumber = RFacturaSarita.QRPrinter.PageCount;
  QRLabel21.Enabled := RFacturaSarita.QRPrinter.PageNumber = RFacturaSarita.QRPrinter.PageCount;
  QRLabel20.Enabled := RFacturaSarita.QRPrinter.PageNumber = RFacturaSarita.QRPrinter.PageCount;
  QRLabel19.Enabled := RFacturaSarita.QRPrinter.PageNumber = RFacturaSarita.QRPrinter.PageCount;
  QRLabel40.Enabled := RFacturaSarita.QRPrinter.PageNumber = RFacturaSarita.QRPrinter.PageCount;
  QRLabel41.Enabled := RFacturaSarita.QRPrinter.PageNumber = RFacturaSarita.QRPrinter.PageCount;
  QRLabel42.Enabled := RFacturaSarita.QRPrinter.PageNumber = RFacturaSarita.QRPrinter.PageCount;
  lbAbono2.Enabled := RFacturaSarita.QRPrinter.PageNumber = RFacturaSarita.QRPrinter.PageCount;}
end;

procedure TRFacturaSarita.ChildBand3BeforePrint(Sender: TQRCustomBand;
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

procedure TRFacturaSarita.QRDBText1Print(sender: TObject;
  var Value: String);
begin
QRLabel64.Caption := Value;
end;

procedure TRFacturaSarita.QRDBText19Print(sender: TObject;
  var Value: String);
begin
QRLabel62.Caption := Value;
end;

procedure TRFacturaSarita.QRLabel64Print(sender: TObject;
  var Value: String);
VAR
  S:Integer;
  X : String;
begin
FOR S := 0 TO Length(Trim(QRLabel64.Caption)) DO begin
  X := X + '_';
end;
QRLabel13.Caption := X;
end;

procedure TRFacturaSarita.QRLabel62Print(sender: TObject;
  var Value: String);
VAR
  S:Integer;
  X : String;
begin
 
FOR S := 0 TO Length(Trim(QRLabel62.Caption)) DO begin
  X := X + '_';
end;
QRLabel14.Caption := X;
end;

end.
