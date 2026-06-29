unit CAJA12;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB,DelphiZXingQRCode;

type
  TRTicketFormal = class(TQuickRep)
    QRBand1: TQRBand;
    lbFactura: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText7: TQRDBText;                   
    QRSysData1: TQRSysData;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRBand2: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel14: TQRLabel;
    QRBand3: TQRBand;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    lbItbis: TQRLabel;
    QRDBText15: TQRDBText;
    QRBand4: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel20: TQRLabel;
    lbsubtotal: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel22: TQRLabel;
    ChildBand1: TQRChildBand;
    QRDBText13: TQRDBText;
    QRLabel12: TQRLabel;
    QEmpresas: TADOQuery;
    QEmpresasemp_codigo: TIntegerField;
    QEmpresasemp_nombre: TStringField;
    QEmpresasemp_rnc: TStringField;
    QEmpresasemp_direccion: TStringField;
    QEmpresasemp_localidad: TStringField;
    QEmpresasemp_telefono: TStringField;
    QEmpresasemp_fax: TStringField;
    QEmpresasemp_web: TStringField;
    QEmpresasemp_email: TStringField;
    QEmpresasemp_status: TStringField;
    QEmpresasemp_consolidar: TStringField;
    QEmpresasemp_puedeconsolidar: TStringField;
    QEmpresasusu_codigo: TIntegerField;
    QEmpresasemp_tipo_NCF: TIntegerField;
    QMaster: TADOQuery;
    QDetalle: TADOQuery;
    QCliente: TADOQuery;
    QClienteemp_codigo: TIntegerField;
    QClientecli_codigo: TIntegerField;
    QClienteusu_codigo: TIntegerField;
    QClientecli_referencia: TStringField;
    QClientecli_nombre: TStringField;
    QClientecli_rnc: TStringField;
    QClientecli_cedula: TStringField;
    QClientecli_direccion: TStringField;
    QClientecli_localidad: TStringField;
    QClientecli_telefono: TStringField;
    QClientecli_fax: TStringField;
    QClientecli_web: TStringField;
    QClientecli_email: TStringField;
    QClientecli_descuento: TBCDField;
    QClientecli_precio: TStringField;
    QClientecli_status: TStringField;
    QClientecli_cuenta: TStringField;
    QClientecli_balance: TBCDField;
    QClientecli_limite: TBCDField;
    QClientecli_facturarbce: TStringField;
    QClientecli_facturarvencida: TStringField;
    QClientecli_instnombre: TStringField;
    QClientecli_insttel: TStringField;
    QClientecli_pernombre1: TStringField;
    QClientecli_perparent1: TStringField;
    QClientecli_pertel1: TStringField;
    QClientecli_pernombre2: TStringField;
    QClientecli_perparent2: TStringField;
    QClientecli_pertel2: TStringField;
    QClientecli_refnombre1: TStringField;
    QClientecli_reftel1: TStringField;
    QClientecli_refnombre2: TStringField;
    QClientecli_reftel2: TStringField;
    QClientecli_fecha: TDateTimeField;
    QClientecli_fechanac: TDateTimeField;
    QClientetcl_codigo: TIntegerField;
    QClientefpa_codigo: TIntegerField;
    QClientecpa_codigo: TIntegerField;
    QClienteven_codigo: TIntegerField;
    QClientecli_contacto: TStringField;
    QClientecli_telefono2: TStringField;
    QClientesuc_codigo: TIntegerField;
    QClientepro_codigo: TIntegerField;
    QClientecli_factura_debajo_costo: TStringField;
    QClientecli_factura_debajo_minimo: TStringField;
    lbrnc: TQRLabel;
    QDetalleValor: TFloatField;
    QDetalleCalcItbis: TFloatField;
    QDetallePrecioItbis: TFloatField;
    dsMaster: TDataSource;
    QRDBText8: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText14: TQRDBText;
    QEmpresasemp_logo: TBlobField;
    lbcodigo: TQRLabel;
    lbcliente: TQRLabel;
    lbdireccion: TQRLabel;
    lblocalidad: TQRLabel;
    lbtelefono: TQRLabel;
    lbabono1: TQRLabel;
    lbabono2: TQRLabel;
    lbtotal1: TQRLabel;
    lbtotal2: TQRLabel;
    lbabono3: TQRLabel;
    lbtotal3: TQRLabel;
    lbtiponcf: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    lbreferencia: TQRLabel;
    QMasterusu_codigo: TIntegerField;
    QMasterfecha: TDateTimeField;
    QMasterticket: TIntegerField;
    QMastercaja: TIntegerField;
    QMasterncf_fijo: TStringField;
    QMasterusu_nombre: TStringField;
    QMastertotal: TBCDField;
    QMasteritbis: TBCDField;
    QMasterdescuento: TBCDField;
    QMasternombre: TStringField;
    QMasterrnc: TStringField;
    QMastermov_numero: TIntegerField;
    QDetalleproducto: TIntegerField;
    QDetalledescripcion: TStringField;
    QDetallesecuencia: TIntegerField;
    QDetallecantidad: TBCDField;
    QDetalleprecio: TBCDField;
    QDetalledescuento: TBCDField;
    QDetalleitbis: TBCDField;
    QMasterNumeroNCF: TStringField;
    QMasterncf_secuencia: TBCDField;
    lbnumero: TQRLabel;
    QMasterfecha_hora: TDateTimeField;
    QMasterencf: TStringField;
    QMastercodigoseguridad: TStringField;
    QMasterAceptadoDGII: TBooleanField;
    QMasterfechafirma: TStringField;
    QMasterUrlCodigoQR: TMemoField;
    qrImgQRCode: TQRImage;
    lblcodigoseg: TQRLabel;
    lblFirmaDigital: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText26: TQRDBText;
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure QMasterCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
  public
    ActBalance, Credito : String;
    PrintDetalle : Boolean;
    tiponcf, cliente, empresa : integer;
    procedure GenerarCodigoQR(const Texto: string; Imagen: TQRImage);
  end;

var
  RTicketFormal: TRTicketFormal;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRTicketFormal.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  PrintBand := PrintDetalle;
  if PrintDetalle then
    if QDetalleITBIS.value = 0 then
       lbItbis.caption := 'E'
    else
       lbItbis.caption := ' ';
end;

procedure TRTicketFormal.QDetalleCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis : Double;
begin
  if PrintDetalle then
  begin
    if QDetalleITBIS.value > 0 then
    begin
      NumItbis := strtofloat(format('%10.2f',[(QDetalleITBIS.value/100)+1]));
      Venta    := strtofloat(format('%10.2f',[(QDetallePRECIO.value)/NumItbis]));

      QDetallePrecioItbis.value := strtofloat(format('%10.2f',[Venta]));
      QDetalleCalcItbis.value   := strtofloat(format('%10.2f',[((Venta)*
                                   strtofloat(format('%10.2f',[QDetalleITBIS.Value])))/100]));
      QDetalleValor.value       := ((strtofloat(format('%10.2f',[Venta])))+
                                   strtofloat(format('%10.2f',[QDetalleCalcItbis.value])))*
                                   strtofloat(format('%10.2f',[QDetalleCANTIDAD.value]));
    end
    else
    begin
      Venta := strtofloat(format('%10.2f',[QDetallePRECIO.value]));
      QDetallePrecioItbis.value := strtofloat(format('%10.2f',[Venta]));
      QDetalleCalcItbis.value   := 0;
      QDetalleValor.value       := strtofloat(format('%10.2f',[(Venta)*QDetalleCANTIDAD.value]));
    end;
  end;
end;

procedure TRTicketFormal.QMasterCalcFields(DataSet: TDataSet);
begin
  if not QMasterNCF_Fijo.isnull then
    QMasterNumeroNCF.Value := 'NCF:'+QMasterNCF_Fijo.Value+formatfloat('00000000',QMasterNCF_Secuencia.AsFloat)
  else
    QMasterNumeroNCF.Value := ' ';

  if Credito = 'True' then
    lbFactura.Caption := 'Factura Credito'
  else
    lbFactura.Caption := 'Factura Contado';
end;

procedure TRTicketFormal.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if QCliente.RecordCount > 0 then
  begin
    lbreferencia.Caption := QClientecli_referencia.AsString;
    lbcodigo.Caption := QClientecli_codigo.AsString;

    if trim(QClientecli_rnc.AsString) <> '' then
      lbrnc.Caption := QClientecli_rnc.AsString
    else
      lbrnc.Caption := QClientecli_cedula.AsString;

    lbcliente.Caption := QClientecli_nombre.AsString;
    lbdireccion.Caption := QClientecli_direccion.AsString;
    lblocalidad.Caption := QClientecli_localidad.AsString;
    lbtelefono.Caption  := QClientecli_telefono.AsString;
  end
  else
  begin
    lbcodigo.Caption  := '';
    lbreferencia.Caption := '';
    lbcliente.Caption := QMasternombre.AsString;
    lbrnc.Caption     := QMasterrnc.AsString;
    lbdireccion.Caption := '';
    lblocalidad.Caption := '';
    lbtelefono.Caption  := '';
  end;

  if  dm.QParametrosUsa_FacturacionElectronica.Value  then
    begin
    GenerarCodigoQR(QMasterUrlCodigoQR.Value, qrImgQRCode)  end
    else
    begin
      qrImgQRCode.Visible:=False;
      lblcodigoseg.Caption:= '';
      lblFirmaDigital.Caption:='';
      QRDBText16.Visible:=False;
      QRDBText26.Visible:=False;
    end;

   if not QMasterAceptadoDGII.Value then
   begin
      lblcodigoseg.Caption:= '';
      lblFirmaDigital.Caption:='';
      QRDBText16.Visible:=False;
      QRDBText26.Visible:=False;
   end;
end;

procedure TRTicketFormal.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  monto : double;
begin
  if Credito = 'True' then
  begin
    //lbsubtotal.Caption := 'SUBTOTAL';
    lbabono1.Enabled   := True;
    lbabono2.Enabled   := True;
    lbabono3.Enabled   := True;
    lbtotal1.Enabled   := True;
    lbtotal2.Enabled   := True;
    lbtotal3.Enabled   := True;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select sum(pagado-devuelta) as monto');
    dm.Query1.SQL.Add('from formas_pago_ticket');
    dm.Query1.SQL.Add('where fecha = convert(datetime, :fec, 105)');
    dm.Query1.SQL.Add('and caja = :caj');
    dm.Query1.SQL.Add('and usu_codigo = :usu');
    dm.Query1.SQL.Add('and ticket = :tik');
    dm.Query1.SQL.Add('and forma <> '+QuotedStr('CRE'));
    dm.Query1.Parameters.ParamByName('fec').DataType := ftDate;
    dm.Query1.Parameters.ParamByName('fec').Value := QMasterFECHA.Value;
    dm.Query1.Parameters.ParamByName('caj').Value := QMasterCAJA.Value;
    dm.Query1.Parameters.ParamByName('usu').Value := QMasterUSU_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('tik').Value := QMasterTICKET.Value;
    dm.Query1.Open;
    monto := dm.Query1.FieldByName('monto').AsFloat;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(mov_abono,0) mov_abono from movimientos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and mov_tipo = :tip');
    dm.Query1.SQL.Add('and mov_numero = :num');
    dm.Query1.Parameters.ParamByName('emp').Value := empresa;
    dm.Query1.Parameters.ParamByName('tip').Value := dm.qparametrospar_movtk.AsString;
    dm.Query1.Parameters.ParamByName('num').Value := QMastermov_numero.AsInteger;
    dm.Query1.Open;

    lbabono3.Caption := format('%n',[dm.Query1.FieldByName('mov_abono').AsFloat+monto]);
    lbtotal3.Caption := format('%n',[QMastertotal.Value - (dm.Query1.FieldByName('mov_abono').AsFloat+monto) ]);
  end
  else
  begin
    //lbsubtotal.Caption := 'TOTAL';
    lbabono1.Enabled   := False;
    lbabono2.Enabled   := False;
    lbabono3.Enabled   := False;
    lbtotal1.Enabled   := False;
    lbtotal2.Enabled   := False;
    lbtotal3.Enabled   := False;
  end;
end;

procedure TRTicketFormal.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  lbnumero.Caption := QMasterticket.AsString;
  if Credito = 'True' then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select mov_numero from montos_ticket');
    dm.Query1.SQL.Add('where fecha = convert(datetime, :fec, 105)');
    dm.Query1.SQL.Add('and caja = :caj');
    dm.Query1.SQL.Add('and usu_codigo = :usu');
    dm.Query1.SQL.Add('and ticket = :tik');
    dm.Query1.Parameters.ParamByName('fec').DataType := ftDate;
    dm.Query1.Parameters.ParamByName('fec').Value := QMasterFECHA.Value;
    dm.Query1.Parameters.ParamByName('caj').Value := QMasterCAJA.Value;
    dm.Query1.Parameters.ParamByName('usu').Value := QMasterUSU_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('tik').Value := QMasterTICKET.Value;
    dm.Query1.Open;
    if not dm.Query1.FieldByName('mov_numero').IsNull then
      lbnumero.Caption := dm.Query1.FieldByName('mov_numero').AsString;
  end;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select ncf_nombre from NCF_Ticket_TipoDoc');
  dm.Query1.SQL.Add('where ncf_numero = :tip');
  dm.Query1.Parameters.ParamByName('tip').Value := tiponcf;
  dm.Query1.Open;
  if dm.Query1.RecordCount > 0 then
    lbtiponcf.Caption := dm.Query1.FieldByName('ncf_nombre').AsString
  else
    lbtiponcf.Caption := ' ';
end;

procedure TRTicketFormal.GenerarCodigoQR(const Texto: string; Imagen: TQRImage);
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



end.
