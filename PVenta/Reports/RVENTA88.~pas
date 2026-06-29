unit RVENTA88;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, QRPDFFilt, QRExport, ExtCtrls, DB, IBCustomDataSet, ADODB;

type
   TRPedidoSup_Preimpreso = class(TForm)
    QRTHorton: TQuickRep;
    QRBand23: TQRBand;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRShape36: TQRShape;
    QRLabel64: TQRLabel;
    QRLabel230: TQRLabel;
    QRLabel243: TQRLabel;
    QRShape37: TQRShape;
    QRLabel245: TQRLabel;
    QRDBText141: TQRDBText;
    QRLabel246: TQRLabel;
    QRLabel251: TQRLabel;
    QRLabel252: TQRLabel;
    QRLabel253: TQRLabel;
    QRLabel254: TQRLabel;
    QRDBText142: TQRDBText;
    QRDBText143: TQRDBText;
    lbcondicion: TQRLabel;
    lbemail: TQRLabel;
    QRDBText144: TQRDBText;
    lbrnc: TQRLabel;
    QRDBText146: TQRDBText;
    QRShape38: TQRShape;
    QRLabel265: TQRLabel;
    QRLabel267: TQRLabel;
    QRLabel268: TQRLabel;
    QRShape39: TQRShape;
    QRLabel269: TQRLabel;
    QRLabel270: TQRLabel;
    QRDBImage1: TQRDBImage;
    QRLabel261: TQRLabel;
    QRLabel263: TQRLabel;
    QRLabel264: TQRLabel;
    QRLabel276: TQRLabel;
    lbvendedor: TQRLabel;
    QRDBText145: TQRDBText;
    QRDBText149: TQRDBText;
    QRBand24: TQRBand;
    QRDBText150: TQRDBText;
    QRDBText151: TQRDBText;
    QRDBText152: TQRDBText;
    QRRichText2: TQRRichText;
    QRDBText148: TQRDBText;
    QRBand25: TQRBand;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRLabel272: TQRLabel;
    QRLabel273: TQRLabel;
    QRLabel274: TQRLabel;
    QRDBText153: TQRDBText;
    QRDBText154: TQRDBText;
    QRExpr9: TQRExpr;
    QRDBRichText2: TQRDBRichText;
    QRLabel275: TQRLabel;
    QRShape49: TQRShape;
    lbsimbolo1: TQRLabel;
    lbsimbolo2: TQRLabel;
    lbsimbolo3: TQRLabel;
    QRShape50: TQRShape;
    QRLabel279: TQRLabel;
    QRDBText155: TQRDBText;
    QRDBText156: TQRDBText;
    QRDBText157: TQRDBText;
    QRShape40: TQRShape;
    QRLabel259: TQRLabel;
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
    QPedidoSUC_CODIGO: TIntegerField;
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
    QDetalleDET_CONITBIS: TIBStringField;
    QPedidosup_codigo: TIntegerField;
    QDetalledet_nota: TMemoField;
    QPedidocpa_codigo: TIntegerField;
    QRLabel2: TQRLabel;
    QRDBRichText1: TQRDBRichText;
    QPedidoped_envio: TMemoField;
    QPedidomon_codigo: TIntegerField;
    QPedidoped_tasa: TBCDField;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    ChildBand1: TQRChildBand;
    QRLabel35: TQRLabel;
    QRLabel4: TQRLabel;
    lbcentro: TQRLabel;
    QPedidocen_codigo: TIntegerField;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRShape2: TQRShape;
    lbsimbolo4: TQRLabel;
    QRDBText1: TQRDBText;
    QRBand30: TQRBand;
    qrlUsuario: TQRLabel;
    QDetalleCalcItbis: TCurrencyField;
    QDetalleCalcDesc: TCurrencyField;
    QDetallePrecioItbis: TCurrencyField;
    QDetalleValor: TCurrencyField;
    QDetalleValor2: TCurrencyField;
    QPedidoped_solicitud_compra: TStringField;
    QPedidoPED_COTIZACION: TStringField;
    procedure QRTHortonBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure QRBand24BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    idioma : string;
  end;

var
  RPedidoSup_Preimpreso: TRPedidoSup_Preimpreso;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TRPedidoSup_Preimpreso.QRTHortonBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  if idioma = 'IN' then
  begin
    QRLabel64.Caption  := 'Purchase Order';
    QRLabel245.Caption := 'Supplier';
    QRLabel251.Caption := 'Address:';
    QRLabel252.Caption := 'Phone:';
    QRLabel254.Caption := 'Terms:';
    QRLabel263.Caption := 'Seller:';
    QRLabel264.Caption := 'Quote #:';
    QRLabel276.Caption := 'Request #:';
    QRLabel2.Caption   := 'Shipping:';
    QRLabel265.Caption := 'Product Description / Service';
    QRLabel267.Caption := 'Qty.';
    QRLabel268.Caption := 'Price';
    QRLabel273.Caption := 'Tax';
    QRLabel275.Caption := 'Produced by';
    QRLabel259.Caption := 'Reviewed by';
    QRLabel279.Caption := 'Approved by';
    QRLabel230.Caption := 'Date';
    QRLabel243.Caption := 'Number';
    QRLabel3.Caption   := 'Part Number';
  end;

  if dm.QParametrospar_moneda_local.Value <> QPedidomon_codigo.Value then
  begin
    CurrencyDecimals := 4;
    QRExpr9.Mask := '###,###,###.00';
    QRDBText1.Mask := '###,###,###.00';
    QRDBText153.Mask := '###,###,###.00';
    QRDBText154.Mask := '###,###,###.00';
  end
  else
  begin
    CurrencyDecimals := 2;
    QRExpr9.Mask := '###,###,###.00';
    QRDBText1.Mask := '###,###,###.00';
    QRDBText153.Mask := '###,###,###.00';
    QRDBText154.Mask := '###,###,###.00';
  end;

  if not QPedidoMON_CODIGO.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select mon_sigla from moneda');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and mon_codigo = :mon');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('mon').Value := QPedidoMON_CODIGO.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      if idioma = 'IN' then
        QRLabel270.Caption := 'VALUES IN '+dm.Query1.FieldByName('mon_sigla').AsString
      else
        QRLabel270.Caption := 'VALORES EN '+dm.Query1.FieldByName('mon_sigla').AsString;
        
      lbsimbolo1.Caption := dm.Query1.FieldByName('mon_sigla').AsString;
      lbsimbolo2.Caption := dm.Query1.FieldByName('mon_sigla').AsString;
      lbsimbolo3.Caption := dm.Query1.FieldByName('mon_sigla').AsString;
      lbsimbolo4.Caption := dm.Query1.FieldByName('mon_sigla').AsString;
    end;
  end;
  
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select sup_vendedor, sup_email, sup_rnc from proveedores');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and sup_codigo = :sup');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
  dm.Query1.Parameters.ParamByName('sup').Value := QPedidosup_codigo.Value;
  dm.Query1.Open;
  lbvendedor.Caption := dm.Query1.FieldByName('sup_vendedor').AsString;
  lbemail.Caption    := dm.Query1.FieldByName('sup_email').AsString;
  lbrnc.Caption      := dm.Query1.FieldByName('sup_rnc').AsString;

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

  if not QPedidocen_codigo.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cen_nombre from CentroCostos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cen_codigo = :cen');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cen').Value := QPedidocen_codigo.Value;
    dm.Query1.Open;
    lbcentro.Caption := dm.Query1.FieldByName('cen_nombre').AsString;
  end;

    qrlUsuario.Caption :='Impreso por :'+ dm.getNombreUsuario(DM.Usuario) +
                       ' Fecha/Hora ' + FormatDateTime('dd/mm/yyyy hh:mm:ss AM/PM',now);

end;

procedure TRPedidoSup_Preimpreso.QDetalleCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis : Double;
  VentaEmp, NumItbisEmp : Double;
begin
  //Unidad
  if QDetalleDET_CONITBIS.value = 'S' then
  begin
      NumItbis := strtofloat(format('%10.2f',[(QDetalleDET_ITBIS.asfloat/100)+1]));

      Venta    := strtofloat(format('%10.2f',[(QDetalleDET_PRECIO.value)]));
      QDetallePrecioItbis.value := strtofloat(format('%10.2f',[QDetalleDET_PRECIO.value]));
      QDetalleCalcDesc.value    := strtofloat(format('%10.2f',[(Venta *
                                 strtofloat(format('%10.2f',[QDetalleDET_DESCUENTO.value])))/100]));
      if Qdetalledet_conitbis.value = 'S' then
        QDetalleCalcItbis.value   := strtofloat(format('%10.2f',[(((Venta-QDetalleCalcDesc.value))*
                                     strtofloat(format('%10.2f',[QDetalleDET_ITBIS.Value])))/100]))
      else
        QDetalleCalcItbis.value   := 0;

      {QDetalleValor.value       := (((strtofloat(format('%10.2f',[QDetalleDET_PRECIO.value]))-
                                   strtofloat(format('%10.2f',[QDetalleCalcDesc.value])))+
                                   strtofloat(format('%10.2f',[QDetalledet_selectivo_ad.Value]))+
                                   strtofloat(format('%10.2f',[QDetalledet_selectivo_con.Value])))+
                                   strtofloat(format('%10.2f',[QDetalleCalcItbis.value])))*
                                   strtofloat(format('%10.2f',[QDetalleDET_CANTIDAD.value]));}
      QDetalleValor.value := (strtofloat(format('%10.2f',[QDetalleDET_PRECIO.value])) - strtofloat(format('%10.2f',[QDetalleCalcDesc.value])))*
                             strtofloat(format('%10.2f',[QDetalleDET_CANTIDAD.value]));

  end
  else
  begin
    Venta := strtofloat(format('%10.2f',[QDetalleDET_PRECIO.value]));
    QDetalleCalcDesc.value    := strtofloat(format('%10.2f',[(Venta * QDetalleDET_DESCUENTO.value)/100]));
    QDetallePrecioItbis.value := strtofloat(format('%10.2f',[Venta]));
    QDetalleValor.value       := strtofloat(format('%10.2f',[(Venta-QDetalleCalcDesc.value)*QDetalleDET_CANTIDAD.value]));
    QDetalleCalcItbis.value   := 0;
  end;
  QDetalleValor2.Value := strtofloat(format('%10.2f',[QDetalleDET_PRECIO.value])) * QDetalleDET_CANTIDAD.Value;
end;

procedure TRPedidoSup_Preimpreso.QRBand24BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if (QDetalleDET_NOTA.IsNull) or (Trim(QDetalleDET_NOTA.Value) = '') then
  begin
    QRRichText2.Enabled := false;
    QRBand24.Height := 18;
  end
  else
  begin
    QRDBText148.Font.Style := QRDBText148.Font.Style + [fsbold];
    QRRichText2.Lines.Text := QDetalleDET_NOTA.Value;
    QRRichText2.Enabled := True;
    //QRBand24.Height := 57;
  end;
end;

procedure TRPedidoSup_Preimpreso.ChildBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if QDetalle.RecordCount = QDetalle.RecNo then PrintBand := true else PrintBand := false;
end;

end.
