unit RVENTA38;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, Db, IBCustomDataSet,
  IBQuery, ADODB, Math;

type
  TRConduce = class(TQuickRep)
    QRBand1: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel14: TQRLabel;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRLabel22: TQRLabel;
    QRShape9: TQRShape;
    QRLabel23: TQRLabel;
    QRShape10: TQRShape;
    lbProd: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText15: TQRDBText;
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
    QConduce: TADOQuery;
    QConduceCLI_CODIGO: TIntegerField;
    QConduceCLI_REFERENCIA: TIBStringField;
    QConduceCON_DIRECCION: TIBStringField;
    QConduceCON_FAX: TIBStringField;
    QConduceCON_FECHA: TDateTimeField;
    QConduceCON_LOCALIDAD: TIBStringField;
    QConduceCON_NUMERO: TIntegerField;
    QConduceCON_STATUS: TIBStringField;
    QConduceCON_TELEFONO: TIBStringField;
    QConduceCON_TOTAL: TFloatField;
    QConduceEMP_CODIGO: TIntegerField;
    QConduceALM_CODIGO: TIntegerField;
    QConduceCON_NOMBRE: TIBStringField;
    QConduceUSU_CODIGO: TIntegerField;
    dsConduce: TDataSource;
    QDetalle: TADOQuery;
    QDetalleCON_NUMERO: TIntegerField;
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
    QDetalleValor: TFloatField;
    QRLabel7: TQRLabel;
    QRDBText8: TQRDBText;
    QConduceALM_NOMBRE: TIBStringField;
    QDetalleDET_MEDIDA: TIBStringField;
    QRDBText9: TQRDBText;
    QRLabel12: TQRLabel;
    QConduceSUC_CODIGO: TIntegerField;
    QRLabel3: TQRLabel;
    QRDBText13: TQRDBText;
    QDetallePrecioItbis: TFloatField;
    QDetalleCalcItbis: TFloatField;
    QDetalleCalcDesc: TFloatField;
    lbReimpresion: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QConduceCON_DESCUENTO: TBCDField;
    QConduceCON_ITBIS: TBCDField;
    QDetalleDET_DESCUENTO: TBCDField;
    ChildBand1: TQRChildBand;
    QDetalleDET_NOTA: TMemoField;
    dsDetalle: TDataSource;
    QSerie: TADOQuery;
    QSerieser_numero: TStringField;
    QDetallesuc_codigo: TIntegerField;
    QRRichText1: TQRRichText;
    QRRichText2: TQRRichText;
    QConduceusu_nombre: TStringField;
    QRDBText14: TQRDBText;
    QConducesup_codigo: TIntegerField;
    QConduceCamionID: TIntegerField;
    QConduceTicket: TStringField;
    QConduceMarca: TStringField;
    QConduceModelo: TStringField;
    QConducePlaca: TStringField;
    QConduceChofer: TStringField;
    QConduceMetraje: TBCDField;
    QConduceCompania: TStringField;
    QRLabel13: TQRLabel;
    QRDBText23: TQRDBText;
    QDetalleUnidadMetros: TStringField;
    QDetalledet_facturado: TBCDField;
    QDetallePendiente: TFloatField;
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
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    lbConduce: TQRLabel;
    QRLabel30: TQRLabel;
    QRDBText25: TQRDBText;
    QConducefac_numero: TIntegerField;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    lbchofer: TQRDBText;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRShape1: TQRShape;
    QRLabel46: TQRLabel;
    QRDBText26: TQRDBText;
    QConduceSUB_TOTAL: TCurrencyField;
    dsSucursal: TDataSource;
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
    QRLabel47: TQRLabel;
    QRDBText27: TQRDBText;
    QRLabel48: TQRLabel;
    QConduceCONECEPTO: TStringField;
    QRLocalidad: TQRLabel;
    QRLocalidad2: TQRLabel;
    QRDBLocalidad: TQRDBText;
    QConducesuc_nombre: TStringField;
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QConduceAfterOpen(DataSet: TDataSet);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QDetalleBeforeOpen(DataSet: TDataSet);
  private

  public

  end;

var
  RConduce: TRConduce;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRConduce.QDetalleCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis : Double;
  a : integer;
begin
  Venta:=0;
  NumItbis :=0;
  QDetalleUnidadMetros.Value := 'Mts';
  if StrToFloat(format('%10.2F',[qdetalledet_facturado.Value])) > 0 then
    QDetallependiente.Value := StrToFloat(format('%10.2F',[Qdetalledet_facturado.Value])) - StrToFloat(format('%10.2F',[qdetalledet_cantidad.Value]))
  else
    QDetallependiente.Value := 0;

  if not QConduceCLI_CODIGO.IsNull then
  begin //--[0]--
    if QDetalleDET_CONITBIS.value = 'S' then
    begin
      NumItbis := RoundTo((QDetalleDET_ITBIS.asfloat/100)+1, -2);
      if dm.QParametrospar_itbisincluido.Value = 'True' then
      begin //--[0.1]--
        Venta    := QDetalleDET_PRECIO.value/NumItbis;
        QDetallePrecioItbis.value := RoundTo(Venta, -2);
        QDetalleCalcDesc.value    := RoundTo((Venta * QDetalleDET_DESCUENTO.value)/100, -2);
        if QDetalleDET_CONITBIS.value = 'S' then
          QDetalleCalcItbis.value   := RoundTo(((Venta - QDetalleCalcDesc.value) * QDetalleDET_ITBIS.value) / 100, -2)
        else
          QDetalleCalcItbis.value   := 0;

        QDetalleValor.value       := (QDetallePrecioItbis.value - QDetalleCalcDesc.value) * QDetalleDET_CANTIDAD.value;
      end //--[0.1]--
      else
      begin //--[0.2]--
        Venta := QDetalleDET_PRECIO.value;
        QDetallePrecioItbis.value := Venta;
        QDetalleCalcDesc.value    := RoundTo((Venta * QDetalleDET_DESCUENTO.value)/100, -2);
        if QDetalleDET_CONITBIS.value = 'S' then
          QDetalleCalcItbis.value := RoundTo(((Venta - QDetalleCalcDesc.value)* QDetalleDET_ITBIS.value) / 100, -2)
        else
          QDetalleCalcItbis.value := 0;

        QDetalleValor.value       := (QDetallePrecioItbis.value - QDetalleCalcDesc.value) * QDetalleDET_CANTIDAD.value;
      end; //--[0.2]--
    end
    else
      begin //sin itbis
          //Venta := QDetalleDET_PRECIO.value;
    Venta := QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value;
    QDetalleCalcDesc.value    := (Venta * QDetalleDET_DESCUENTO.value)/100;
    QDetallePrecioItbis.value := Venta;
    QDetalleCalcItbis.value   := 0;
    QDetalleValor.value       := (Venta-QDetalleCalcDesc.value);
      end; //sin itbis
  end //--[0]--
  else
  begin //--[1]--

    //Unidad
    if QDetalleDET_CONITBIS.value = 'S' then
    begin
      NumItbis := strtofloat(format('%10.2f',[(QDetalleDET_ITBIS.asfloat/100)+1]));
      Venta    := QDetalleDET_PRECIO.value;
      QDetallePrecioItbis.value := Venta;
      QDetalleCalcItbis.value   := ((Venta-QDetalleCalcDesc.value)*QDetalleDET_ITBIS.Value)/100;
      QDetalleValor.value       := ((Venta-QDetalleCalcDesc.value))*QDetalleDET_CANTIDAD.value;
    end
    else
    begin
      Venta := QDetalleDET_PRECIO.value;
      QDetallePrecioItbis.value := Venta;
      QDetalleValor.value       := (Venta-QDetalleCalcDesc.value)*QDetalleDET_CANTIDAD.value;
      QDetalleCalcItbis.value   := 0;
    end;
  end; //--[1]--
end;

procedure TRConduce.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if (dm.QParametrospar_fac_preimpresa.Value = 'True') and
  (dm.QParametrospar_formato_preimpreso.Value = 'QRAgregados') then
  begin
    lbchofer.Enabled  := True;
    QRLabel23.Caption := 'NOMBRE DEL CHOFER';

    QRLabel25.Caption := 'CHOFER';
    QRDBText20.DataField := 'Chofer';

    QRLabel26.Caption := 'PLACA';
    QRDBText21.DataField := 'PLACA';

    QRLabel27.Caption := 'CAPACIDAD';
    QRDBText22.DataField := 'Metraje';

    QRLabel29.Caption := 'COMPAÑIA';
    QRDBText24.DataField := 'Compania';

    QRLabel13.Enabled := true;
    QRDBText23.Enabled := true;

    QRLabel11.Enabled := true;
    QRLabel11.Caption := 'MTS. PENDIENTE';
    QRDBText12.DataField :='pendiente';
    QRDBText12.Left := QRDBText12.Left + 15;

    QRDBText9.DataField := 'UnidadMetros';
  end
  else
  begin
    if dm.QParametrospar_invprecioconduce.Value <> 'True' then
    begin
      if ((not QConducefac_numero.IsNull) or (QConducefac_numero.AsInteger > 0))
      or (not QConduceCLI_CODIGO.IsNull) or (not QConducePlaca.IsNull) then
      begin
        QRLabel11.Enabled := true;
        QRLabel11.Caption := 'PENDIENTE';
        QRDBText12.DataField := 'Pendiente';
      end;
    end;
  end;

  if dm.QParametrospar_banca_apuestas.Value = True then begin
QRLocalidad.Visible := True;
QRLocalidad2.Visible := True;
QRDBLocalidad.Visible := True;
QRBand1.Height := 200;
end;
if not dm.QParametrospar_banca_apuestas.Value = True then begin
QRLocalidad.Visible := False;
QRLocalidad2.Visible := False;
QRDBLocalidad.Visible := False;
QRBand1.Height := 180;
end;

  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
     lbProd.DataField := 'PRO_CODIGO'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
     lbProd.DataField := 'PRO_RFABRIC'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
     lbProd.DataField := 'PRO_RORIGINAL';

  if not QConduceCLI_CODIGO.IsNull then
  begin
    if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'R' then
      lbCliente.DataField := 'CLI_REFERENCIA';
  end
  else if not QConduceSUP_CODIGO.IsNull then
  begin
      lbCliente.DataField := 'SUP_CODIGO';
  end;

end;

procedure TRConduce.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if ((QConducefac_numero.IsNull) or (QConducefac_numero.AsInteger = 0))
  and (QConduceCLI_CODIGO.IsNull) and (QConducePlaca.IsNull) then
     lbConduce.Caption := 'SALIDA DE ALMACEN'
  else
  begin
    if (dm.QParametrospar_fac_preimpresa.Value = 'False') or
    (dm.QParametrospar_formato_preimpreso.Value <> 'QRAgregados') then
    begin
      if dm.QParametrospar_invprecioconduce.Value = 'False' then
      begin
          QRDBText12.DataField := 'Pendiente';
          QRDBText12.Enabled := true;
          QRLabel11.Enabled := true;
      end
      else
      begin
        QRDBText12.Enabled := dm.QParametrospar_invprecioconduce.Value = 'True';
        QRLabel11.Enabled := dm.QParametrospar_invprecioconduce.Value = 'True';
      end;
    end
    else
    begin
      if (dm.QParametrospar_fac_preimpresa.Value = 'True') and
      (dm.QParametrospar_formato_preimpreso.Value = 'QRAgregados') then
      begin
        QRDBText12.DataField := 'Pendiente';
        QRDBText12.Enabled := true;
        QRLabel11.Enabled := true;
      end
      else
      begin
        QRDBText12.Enabled := dm.QParametrospar_invprecioconduce.Value = 'True';
        QRLabel11.Enabled := dm.QParametrospar_invprecioconduce.Value = 'True';
      end;
    end;

    QRDBText15.Enabled := dm.QParametrospar_invprecioconduce.Value = 'True';
    QRDBText13.Enabled := dm.QParametrospar_invprecioconduce.Value = 'True';
    QRLabel3.Enabled := dm.QParametrospar_invprecioconduce.Value = 'True';
    QRLabel14.Enabled := dm.QParametrospar_invprecioconduce.Value = 'True';
  end;
end;

procedure TRConduce.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRRichText2.Lines.Clear;
end;

procedure TRConduce.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  {if (dm.QParametrospar_fac_preimpresa.Value = 'False') or
  (dm.QParametrospar_formato_preimpreso.Value <> 'QRAgregados') then
  begin
    QRLabel11.Enabled := dm.QParametrospar_invprecioconduce.Value = 'True';
  end;}
  if ((not QConducefac_numero.IsNull) or (QConducefac_numero.AsInteger > 0))
  or (not QConduceCLI_CODIGO.IsNull) or (not QConducePlaca.IsNull) then
  begin
    QRLabel14.Enabled := dm.QParametrospar_invprecioconduce.Value = 'True';
    QRLabel3.Enabled := dm.QParametrospar_invprecioconduce.Value = 'True';
  end;
end;

procedure TRConduce.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  PrintBand := (trim(QDetalleDET_NOTA.Value) <> '') or (QSerie.RecordCount > 0);
  QRRichText1.Lines.Text := QDetalleDET_NOTA.Value;
  if QSerie.RecordCount > 0 then
  begin
    QSerie.First;
    while not QSerie.Eof do
    begin
      QRRichText2.Lines.Add('SN#: '+QSerieser_numero.Value);
      QSerie.next;
    end;
  end;
end;

procedure TRConduce.QConduceAfterOpen(DataSet: TDataSet);
begin
  QSerie.Open;
  qSucursal.Open;
end;

procedure TRConduce.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if ((not QConducefac_numero.IsNull) or (QConducefac_numero.AsInteger > 0))
  or (not QConduceCLI_CODIGO.IsNull) then
  begin
    QRLabel18.Enabled  := dm.QParametrospar_invprecioconduce.Value = 'True';
    QRLabel19.Enabled  := dm.QParametrospar_invprecioconduce.Value = 'True';
    QRLabel20.Enabled  := dm.QParametrospar_invprecioconduce.Value = 'True';
    QRLabel21.Enabled  := dm.QParametrospar_invprecioconduce.Value = 'True';
    QRDBText26.Enabled    := dm.QParametrospar_invprecioconduce.Value = 'True';
    QRDBText16.Enabled := dm.QParametrospar_invprecioconduce.Value = 'True';
    QRDBText17.Enabled := dm.QParametrospar_invprecioconduce.Value = 'True';
    QRDBText18.Enabled := dm.QParametrospar_invprecioconduce.Value = 'True';
    QRLabel38.Enabled  := dm.QParametrospar_invprecioconduce.Value = 'True';
    QRLabel39.Enabled  := dm.QParametrospar_invprecioconduce.Value = 'True';
    QRLabel40.Enabled  := dm.QParametrospar_invprecioconduce.Value = 'True';
    QRLabel41.Enabled  := dm.QParametrospar_invprecioconduce.Value = 'True';

    if dm.QParametrospar_invprecioconduce.Value <> 'True' then
    begin
      QRLabel46.Left := 322;
      QRShape1.Left  := 298;
      lbchofer.Left  := 546;
      QRShape10.Left := 546;
      QRLabel23.Left := 546;
    end;
  end;
end;

procedure TRConduce.QDetalleBeforeOpen(DataSet: TDataSet);
begin
QDetalle.Parameters.ParamByName('emp_codigo').Value := QConduceEMP_CODIGO.Value;
QDetalle.Parameters.ParamByName('EMP').Value        := dm.vp_cia;
QDetalle.Parameters.ParamByName('con_numero').Value := QConduceCON_NUMERO.Value;
QDetalle.Parameters.ParamByName('suc_codigo').Value := QConduceSUC_CODIGO.Value;
end;

end.
