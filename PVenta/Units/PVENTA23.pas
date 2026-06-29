unit PVENTA23;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids, DB,
  IBCustomDataSet, IBQuery, IBUpdateSQL, DateUtils, ADODB,
  QuerySearchDlgADO, ComCtrls, frxClass, frxDBSet, OCXFISLib_TLB,vmaxFiscal,iFiscal,Tfhkaif;

type
  TfrmDevolucion = class(TForm)

    Panel5: TPanel;
    Grid: TDBGrid;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    btGrabar: TBitBtn;
    btLimpiar: TBitBtn;
    btClose: TBitBtn;
    QDevolucion: TADOQuery;
    QDevolucionDEV_DESCUENTO: TFloatField;
    QDevolucionDEV_DEVDINERO: TIBStringField;
    QDevolucionDEV_FECHA: TDateTimeField;
    QDevolucionDEV_ITBIS: TFloatField;
    QDevolucionDEV_NUMERO: TIntegerField;
    QDevolucionDEV_STATUS: TIBStringField;
    QDevolucionDEV_TOTAL: TFloatField;
    QDevolucionEMP_CODIGO: TIntegerField;
    QDevolucionFAC_FORMA: TIBStringField;
    QDevolucionFAC_NUMERO: TIntegerField;
    QDevolucionTFA_CODIGO: TIntegerField;
    QDevolucionUSU_CODIGO: TIntegerField;
    QDevolucionVEN_CODIGO: TIntegerField;
    Panel3: TPanel;
    dsDevolucion: TDataSource;
    Search: TQrySearchDlgADO;
    QDevolucionCLI_CODIGO: TIntegerField;
    QDetalle: TADOQuery;
    dsDetalle: TDataSource;
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
    QDevolucionDEV_PORCCOMISION: TFloatField;
    QDevolucionDEV_COMISION: TFloatField;
    rbForma: TRadioGroup;
    QDetallePRO_SERVICIO: TIBStringField;
    QDetalleMAR_CODIGO: TIntegerField;
    QDetalleVEN_CODIGO: TIntegerField;
    QDetalleDET_COMISION: TFloatField;
    QDevolucionDEV_NOMBRE: TIBStringField;
    QDetalleDET_ESCALA: TIBStringField;
    QDetalleDET_MEDIDA: TIBStringField;
    QDetalleNeto: TFloatField;
    QDevolucionBAN_CODIGO: TIntegerField;
    QDevolucionCHE_NUMERO: TIntegerField;
    QDevoluciondev_conitbis: TStringField;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    QDevolucionsuc_codigo: TIntegerField;
    QDetallesuc_codigo: TIntegerField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    QDetalledet_lote: TIntegerField;
    QDetalledet_fechavence: TDateTimeField;
    QDetalledet_cant_oferta: TBCDField;
    QDetalledet_selectivo_ad: TBCDField;
    QDetalledet_selectivo_con: TBCDField;
    QDevoluciondev_selectivo_ad: TBCDField;
    QDevoluciondev_selectivo_con: TBCDField;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    QDevolucionSubTotal: TFloatField;
    QDevolucionNCF: TStringField;
    QDevolucionticket_caja: TIntegerField;
    QDevolucionticket_cajero: TIntegerField;
    QDevolucionticket_numero: TIntegerField;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    btTipo: TSpeedButton;
    Label14: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    edTipo: TEdit;
    tTipo: TEdit;
    tPendiente: TEdit;
    DBEdit1: TDBEdit;
    DBEdit6: TDBEdit;
    Label11: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    DBEdit9: TDBEdit;
    edCajero: TEdit;
    SpeedButton1: TSpeedButton;
    tusuario: TEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label12: TLabel;
    Label10: TLabel;
    Label2: TLabel;
    Label13: TLabel;
    tCondicion: TEdit;
    tVendedor: TEdit;
    tCliente: TEdit;
    tCajero: TEdit;
    QDevolucionticket_fecha: TDateTimeField;
    rgtipo: TRadioGroup;
    QDetallealm_codigo: TIntegerField;
    QDevolucionmot_codigo: TIntegerField;
    Label21: TLabel;
    DBEdit13: TDBEdit;
    btmotivo: TSpeedButton;
    tmotivo: TEdit;
    Query1: TADOQuery;
    QDevoluciondev_fecha_factura: TDateTimeField;
    QNorma201806NC: TADOQuery;
    DB_Norma201806NC: TfrxDBDataset;
    Rpt_NC: TfrxReport;
    QNorma201806NCNumero: TStringField;
    QNorma201806NCEmpresaN: TStringField;
    QNorma201806NCEmpresaD: TStringField;
    QNorma201806NCEmpresaL: TStringField;
    QNorma201806NCEmpresaRNC: TStringField;
    QNorma201806NCFECHA: TDateTimeField;
    QNorma201806NCfac_nombre: TStringField;
    QNorma201806NCfac_rnc: TStringField;
    QNorma201806NCfac_direccion: TStringField;
    QNorma201806NCfac_localidad: TStringField;
    QNorma201806NCfac_telefono: TStringField;
    QNorma201806NCNCFModificado: TStringField;
    QNorma201806NCNCF: TStringField;
    QNorma201806NCtip_nombre: TStringField;
    QNorma201806NCCANTIDAD: TStringField;
    QNorma201806NCDESCRIPCION: TStringField;
    QNorma201806NCITBIS: TBCDField;
    QNorma201806NCVALOR: TBCDField;
    QNorma201806NCSUBTOTAL: TBCDField;
    QNorma201806NCusu_nombre: TStringField;
    QNorma201806NCfac_numero: TIntegerField;
    QNorma201806NCDescuento: TFloatField;
    QNorma201806NCITBIS2: TFloatField;
    QUpdDev: TADOQuery;
    QUpdNC: TADOQuery;
    QDetalleDEV_RECARGO: TCurrencyField;
    QDevolucionDEV_RECARGO: TCurrencyField;
    Label22: TLabel;
    dbedtDEV_RECARGO: TDBEdit;
    QDetalleCalcRecargo: TCurrencyField;
    lblWait: TLabel;
    QDetallerecargo: TCurrencyField;
    QDetalleTotalDescuento: TCurrencyField;
    QDetalleTotalPrecio: TCurrencyField;
    QDevolucionTDesc_gral: TCurrencyField;
    QDevolucioncTDescuentogral: TCurrencyField;
    QDevolucionporc_desc_gral: TCurrencyField;
    QConsDev: TADOQuery;
    QConsDevDEV_DESCUENTO: TFloatField;
    QConsDevDEV_DEVDINERO: TIBStringField;
    QConsDevDEV_FECHA: TDateTimeField;
    QConsDevDEV_ITBIS: TFloatField;
    QConsDevDEV_NUMERO: TIntegerField;
    QConsDevDEV_STATUS: TIBStringField;
    QConsDevDEV_TOTAL: TFloatField;
    QConsDevFAC_FORMA: TIBStringField;
    QConsDevFAC_NUMERO: TIntegerField;
    QConsDevTFA_CODIGO: TIntegerField;
    QConsDevUSU_NOMBRE: TIBStringField;
    QConsDevEMP_CODIGO: TIntegerField;
    QConsDevDEV_NOMBRE: TIBStringField;
    QConsDevDEV_CONITBIS: TStringField;
    QConsDevsuc_codigo: TIntegerField;
    QConsDevNCF: TStringField;
    QConsDevNCF_Modifica: TStringField;
    QConsDevticket_cajero: TIntegerField;
    QConsDevticket_numero: TIntegerField;
    QConsDevticket_fecha: TDateTimeField;
    QConsDevticket_caja: TIntegerField;
    QConsDevdev_fecha_factura: TDateTimeField;
    Label23: TLabel;
    DBEdit14: TDBEdit;
    QDevolucionDEV_TASA: TCurrencyField;
    QDetalleCalcItbis2: TCurrencyField;
    QDevolucionDEV_HORA: TStringField;
    QDevolucionemp_rnc: TStringField;
    QDevolucioncli_rnc: TStringField;
    QDevolucioneNCF: TStringField;
    QDevolucionmotivo_dgi: TIntegerField;
    tmotivodgi: TEdit;
    Label24: TLabel;
    DBEdit15: TDBEdit;
    SpeedButton2: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure RG(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ckAEnter(Sender: TObject);
    procedure edTipoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btTipoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure QDevolucionNewRecord(DataSet: TDataSet);
    procedure QDevolucionFAC_NUMEROChange(Sender: TField);
    procedure GridEnter(Sender: TObject);
    procedure GridColEnter(Sender: TObject);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btCloseClick(Sender: TObject);
    procedure QDetalleBeforePost(DataSet: TDataSet);
    procedure QDetalleAfterInsert(DataSet: TDataSet);
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure QDetalleAfterPost(DataSet: TDataSet);
    procedure btGrabarClick(Sender: TObject);
    procedure QDevolucionBeforePost(DataSet: TDataSet);
    procedure btLimpiarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rbFormaClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edCajeroChange(Sender: TObject);
    procedure edCajeroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QDevolucionticket_cajaChange(Sender: TField);
    procedure QDevolucionticket_cajeroChange(Sender: TField);
    procedure QDevolucionticket_numeroChange(Sender: TField);
    procedure QDevolucionticket_fechaChange(Sender: TField);
    procedure rgtipoClick(Sender: TObject);
    procedure btmotivoClick(Sender: TObject);
    procedure QDevolucionmot_codigoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure SpeedButton2Click(Sender: TObject);
    procedure QDevolucionmotivo_dgiGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure FormDestroy(Sender: TObject);
  private
        vl_status_reg : String;
    procedure ImprimeTicketFiscal(ImpresoraFiscal:TImpresora);
    procedure ImpTicketDevFiscalEpson(Impresora:TImpresora);
    procedure ImpTicketDevFiscalVmax(Impresora:TImpresora);
    procedure ImpTicketDevFiscalBixolon(Impresora:TImpresora);
    procedure GuardarNIF(NIF: String);
    { Private declarations }

  public
    { Public declarations }
    SelCajero, SelCondi, Totaliza, ActBalance, Insertar, ConItbis : boolean;
    descuento, total, Itbis, Itbis2, recargo, Pendiente, Anterior, Comision, MontoDesem, TDescGral : double;
    FormatoImp, cajero, almacen : integer;
    PuertoImp : string;
    procedure totalizar;
    procedure Imp40Columnas;
    procedure BuscaTicket;

    function EsEmpresaItbisMaestro: Boolean;
    procedure DistribuirItbisMaestroEnDetalle;

    function ValidarENCFDisponible(
      AEmp: Integer; ATipo: Integer;
      out AMsg: string;
      out ASiguienteCorrelativo: Int64
    ): Boolean;

  end;

var
  v_DescItems:Double;
   v_TotalImp,v_TotalPagado, vl_subtotal:double;
   StatusFiscal:String;
  frmDevolucion: TfrmDevolucion;

  vItbisMaestro: Double;
  vTasaFactura: Double;
  vEsEmpresaItbisMaestro: Boolean;
  vItbisPorLinea: TStringList;
  vTotalCantFactura: Double;

implementation

uses RVENTA03, PVENTA37, PVENTA97, SIGMA01, SIGMA00, PVENTA123, RVENTA72,
  StrUtils,FacturacionElectronicaDGII_TLB;

{$R *.DFM}

function TfrmDevolucion.EsEmpresaItbisMaestro: Boolean;
var
  rnc: string;
begin
  Result := False;

  if Assigned(dm.QEmpresas) then
  begin
    if not dm.QEmpresas.Active then dm.QEmpresas.Open;
    rnc := Trim(dm.QEmpresas.FieldByName('emp_rnc').AsString);
    Result := (rnc = '131861717');

  end;
end;

function Round2(const V: Double): Double;
begin
  Result := Int(V * 100 + 0.5) / 100;
end;


procedure TfrmDevolucion.DistribuirItbisMaestroEnDetalle;
var
  bm: TBookmark;
  totalItbis, itbisPorUnidad: Double;
  cnt, sec, idx: Integer;
begin
  vItbisPorLinea.Clear;

  if not vEsEmpresaItbisMaestro then Exit;
  if vItbisMaestro <= 0 then Exit;
  try

    itbisPorUnidad := vItbisMaestro / vTotalCantFactura;
    // Guardar por DET_SECUENCIA (que tú lo asignas a := a)
    idx := 0;
    QDetalle.First;
    while not QDetalle.Eof do
    begin
      if (QDetalle.FieldByName('DEV_CANTIDAD').AsFloat > 0) and
         (Trim(QDetalle.FieldByName('DEV_CONITBIS').AsString) = 'S') then
      begin
        Inc(idx);
        sec := QDetalle.FieldByName('DET_SECUENCIA').AsInteger;

        if idx < cnt then
          vItbisPorLinea.Values[IntToStr(sec)] := FloatToStr(itbisPorUnidad)
        else
          vItbisPorLinea.Values[IntToStr(sec)] := FloatToStr(itbisPorUnidad);
      end;

      QDetalle.Next;
    end;

  finally
    
  end;
end;


procedure TfrmDevolucion.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SelCajero = true then
  begin
    if messagedlg('SALIR DE ESTA PANTALLA?',
    mtconfirmation, [mbyes,mbno],0) = mrno then
      abort
    else
      action := cafree;
  end
  else
    action := cafree;
end;

procedure TfrmDevolucion.FormPaint(Sender: TObject);
begin
  frmDevolucion.top := 2;
  frmDevolucion.left := 2;
end;

procedure TfrmDevolucion.RG(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
  if key = vk_f2  then btGrabarClick(self);
  if key = vk_f3  then btLimpiarClick(self); 
end;

procedure TfrmDevolucion.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    if ActiveControl.classtype <> tdbgrid then
    begin
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    end;
  end;
end;

procedure TfrmDevolucion.ckAEnter(Sender: TObject);
begin
  edTipo.setfocus;
end;

procedure TfrmDevolucion.edTipoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select tfa_nombre, tfa_selcondi');
    dm.Query1.sql.add('from tiposfactura');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and tfa_codigo = :cod');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edTipo.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
    begin
      tTipo.text := '';
      showmessage('ESTE TIPO DE FACTURA NO EXISTE');
      edTipo.setfocus;
    end
    else
    begin
      QDevolucion.close;
      QDevolucion.Parameters.parambyname('numero').Value := -1;
      QDevolucion.open;
      QDevolucion.insert;

//      PuertoImp  := dm.Query1.fieldbyname('tfa_puertoimp').asstring;
      tTipo.text := dm.Query1.fieldbyname('tfa_nombre').asstring;
      SelCondi   := dm.Query1.FieldByName('tfa_selcondi').AsBoolean;
    end;
  end;
end;

procedure TfrmDevolucion.btTipoClick(Sender: TObject);
begin
  search.Query.clear;
  search.AliasFields.clear;
  search.Query.add('select tfa_nombre, tfa_codigo');
  search.Query.add('from tiposfactura');
  search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  search.ResultField := 'tfa_codigo';
  search.Title := 'Tipos de factura';
  if search.execute then
  begin
    edTipo.text := search.valuefield;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select tfa_nombre, tfa_selcondi, tfa_formatoimp, tfa_puertoimp');
    dm.Query1.sql.add('from tiposfactura');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and tfa_codigo = :cod');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edTipo.text));
    dm.Query1.open;

    QDevolucion.close;
    QDevolucion.Parameters.parambyname('numero').Value := -1;
    QDevolucion.Parameters.parambyname('suc').Value := -1;
    QDevolucion.open;
    QDevolucion.insert;

    //PuertoImp  := dm.Query1.fieldbyname('tfa_puertoimp').asstring;
    //FormatoImp := dm.Query1.fieldbyname('tfa_formatoImp').asinteger;
    tTipo.text := dm.Query1.fieldbyname('tfa_nombre').asstring;
    edTipo.SetFocus;
    SelCondi := dm.Query1.FieldByName('tfa_selcondi').AsBoolean;
    SelectNext(activecontrol, true, true);
  end;
end;

procedure TfrmDevolucion.FormActivate(Sender: TObject);
begin
  if SelCajero = False then
  begin
    Application.CreateForm(tfrmPideCajero, frmPideCajero);
    if frmPideCajero.ShowModal <> mrOk then
    begin
      frmPideCajero.release;
      close;
    end
    else
    begin
      SelCajero := True;
      Cajero := dm.Query1.fieldbyname('caj_codigo').asinteger;
      frmPideCajero.release;
    end;
    if not QDevolucion.active then
    begin
      QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
      QSucursal.Open;

      rbForma.ItemIndex := 0;
      QDevolucion.Parameters.parambyname('numero').Value := -1;
      QDevolucion.Parameters.parambyname('suc').Value := -1;
      QDevolucion.open;
      QDevolucion.insert;
    end;
  end;
end;

procedure TfrmDevolucion.QDevolucionNewRecord(DataSet: TDataSet);
begin
   tPendiente.text := '';
  Insertar := True;
  Totaliza := True;
  DBLookupComboBox2.Enabled := True;
  vl_subtotal := 0;

  rgtipo.ItemIndex := 0;
  QDevolucionDEV_DEVDINERO.value := 'N';
  QDevolucionsuc_codigo.Value := QSucursalsuc_codigo.Value;
  QdevolucionFAC_FORMA.Value  := rbForma.Items[rbForma.ItemIndex];
  QDevolucionDEV_FECHA.value  := date;
  QDevolucionDEV_STATUS.value := 'EMI';
  QDevolucionDEV_TOTAL.value  := 0;
  QDevolucionDEV_ITBIS.value  := 0;
  QDevolucionDEV_DESCUENTO.value := 0;
  QDevolucionUSU_CODIGO.value := dm.Usuario;
  QDevolucionEMP_CODIGO.value := dm.vp_cia;
  tCondicion.text := '';
  tVendedor.text := '';
  tTipo.text := '';
  tCliente.text := '';
  tCajero.text := '';
  QDetalle.close;
  QDetalle.Parameters.parambyname('emp').Value := dm.vp_cia;
  QDetalle.Parameters.parambyname('numero').Value := -1;
  QDetalle.Parameters.parambyname('suc').Value := -1;
  QDetalle.open;
end;

procedure TfrmDevolucion.QDevolucionFAC_NUMEROChange(Sender: TField);
var
  Condi, Cajero, a : Integer;
  FacturaTieneItbis: Boolean;
  EsSarita: Boolean;
  FacturaItbis: Double;
begin
  // ====== Detectar si es SARITA por RNC 105081105 ======
  EsSarita := False;
  if Assigned(dm.QEmpresas) then
  begin
    if not dm.QEmpresas.Active then
      dm.QEmpresas.Open;

  EsSarita :=
  (Trim(dm.QEmpresas.FieldByName('emp_rnc').AsString) = '105081105') or
  (Trim(dm.QEmpresas.FieldByName('emp_rnc').AsString) = '131861717');


  end;

  if rgtipo.ItemIndex = 0 then
    if tTipo.Text = '' then
      MessageDlg('DEBE ELEJIR UN TIPO DE FACTURA', mtError, [mbok], 0)
    else
    begin
      if not QDevolucionFAC_NUMERO.IsNull then
      begin
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select f.suc_codigo, f.fac_nombre, f.ven_codigo, f.cpa_codigo, f.cli_codigo,');
        dm.Query1.SQL.Add('f.alm_codigo, f.fac_status, f.fac_total, f.fac_abono, ');
        dm.Query1.SQL.Add('f.caj_codigo, t.tfa_actbalance, f.fac_porccomision, f.fac_fecha,');
        dm.Query1.SQL.Add('f.fac_cuotas, f.fac_conitbis, f.fac_itbis, f.ncf_fijo, f.ncf_secuencia, recargo, porc_desc_gral, FAC_TASA, f.eNCF, f.Enviado_DGII');
        dm.Query1.SQL.Add('from facturas f, tiposfactura t');
        dm.Query1.SQL.Add('where f.emp_codigo = t.emp_codigo');
        dm.Query1.SQL.Add('and f.tfa_codigo = t.tfa_Codigo');
        dm.Query1.SQL.Add('and f.emp_codigo = :emp');
        dm.Query1.SQL.Add('and f.fac_forma    = :forma');
        dm.Query1.SQL.Add('and f.tfa_codigo   = :tipo');
        dm.Query1.SQL.Add('and f.fac_numero   = :numero');
        dm.Query1.SQL.Add('and f.suc_codigo = :suc');
        dm.Query1.Parameters.ParamByName('emp').Value    := dm.vp_cia;
        dm.Query1.Parameters.ParamByName('forma').Value  := QDevolucionFAC_FORMA.Value;
        dm.Query1.Parameters.ParamByName('tipo').Value   := StrToInt(Trim(edTipo.Text));
        dm.Query1.Parameters.ParamByName('numero').Value := QDevolucionFAC_NUMERO.Value;
        dm.Query1.Parameters.ParamByName('suc').Value    := QDevolucionsuc_codigo.Value;
        dm.Query1.Open;

        // ====== Guardar ITBIS maestro y tasa ======
        vItbisMaestro := dm.Query1.FieldByName('fac_itbis').AsFloat;
        vTasaFactura  := dm.Query1.FieldByName('FAC_TASA').AsFloat;

        // Empresas especiales: repartir ITBIS del maestro entre items
        vEsEmpresaItbisMaestro := EsSarita or dm.QParametrosservicio_construccion.AsBoolean;

        if dm.Query1.RecordCount = 0 then
        begin
          ShowMessage('ESTA FACTURA NO EXISTE');
          QDevolucionFAC_NUMERO.Clear;
          Abort;
        end
        else if dm.Query1.FieldByName('fac_cuotas').AsInteger > 0 then
        begin
          ShowMessage('NO PUEDE REALIZARSE DEVOLUCION A FACTURAS QUE' + #13 +
                      'TIENEN FIANANCIAMIENTO, DEBE DE REALIZAR UNA' + #13 +
                      'NOTA DE CREDITO');
          QDevolucionFAC_NUMERO.Clear;
          Abort;
        end
        else if dm.Query1.FieldByName('fac_status').AsString = 'ANU' then
        begin
          ShowMessage('ESTA FACTURA ESTA ANULADA');
          QDevolucionFAC_NUMERO.Clear;
          Abort;
        end
        else if DaysBetween(dm.Query1.FieldByName('fac_fecha').AsDateTime, Date) >
                dm.QParametrosPAR_DEVDIAS.Value then
        begin
          MessageDlg('ESTA FACTURA NO ACEPTA DEVOLUCIONES', mtError, [mbok], 0);
          QDevolucionFAC_NUMERO.Clear;
          Abort;
        end
        else
        begin
          // ====== Determinar si la factura tiene ITBIS (aunque alguna línea venga sin) ======
          FacturaTieneItbis :=
            dm.Query1.FieldByName('fac_conitbis').AsBoolean
            or ((not dm.Query1.FieldByName('fac_itbis').IsNull) and (dm.Query1.FieldByName('fac_itbis').AsFloat > 0));

          ConItbis := FacturaTieneItbis;

          if FacturaTieneItbis then
            QDevolucionDEV_CONITBIS.AsString := 'S'
          else
            QDevolucionDEV_CONITBIS.AsString := 'N';

          Pendiente := dm.Query1.FieldByName('fac_total').AsFloat - dm.Query1.FieldByName('fac_abono').AsFloat;
          Condi     := dm.Query1.FieldByName('cpa_codigo').AsInteger;
          Cajero    := dm.Query1.FieldByName('caj_codigo').AsInteger;
          tCliente.Text := dm.Query1.FieldByName('fac_nombre').AsString;
          QdevolucionDEV_NOMBRE.Value := dm.Query1.FieldByName('fac_nombre').AsString;
          almacen := dm.Query1.FieldByName('alm_codigo').AsInteger;
          QDevoluciondev_fecha_factura.Value := dm.Query1.FieldByName('fac_fecha').Value;
          QDevolucionCLI_CODIGO.Value := dm.Query1.FieldByName('cli_codigo').AsInteger;
          QDevolucionVEN_CODIGO.Value := dm.Query1.FieldByName('ven_codigo').AsInteger;

          if (not dm.Query1.FieldByName('Enviado_DGII').IsNull) and
             (dm.Query1.FieldByName('Enviado_DGII').AsBoolean = True) then
          begin
            QDevolucionNCF.Value := dm.Query1.FieldByName('eNCF').AsString;
          end
          else
          begin
            QDevolucionNCF.Value := dm.Query1.FieldByName('ncf_fijo').AsString +
                                    FormatFloat('00000000', dm.Query1.FieldByName('ncf_secuencia').AsFloat);
          end;

          QDevolucionporc_desc_gral.Value := dm.Query1.FieldByName('porc_desc_gral').Value;
          QDevolucionDEV_TASA.Value := dm.Query1.FieldByName('FAC_TASA').Value;
          ACTBalance := dm.Query1.FieldByName('tfa_actbalance').AsBoolean;
          tPendiente.Text := Format('%n', [Pendiente]);
          QDevolucionDEV_RECARGO.Value := dm.Query1.FieldByName('recargo').AsInteger;
          vl_status_reg := dm.Query1.FieldByName('fac_status').AsString;
          DBLookupComboBox2.Enabled := False;

          // ====== buscando vendedor ======
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('select ven_nombre from vendedores');
          dm.Query1.SQL.Add('where ven_codigo = :ven');
          dm.Query1.SQL.Add('and emp_codigo = :emp');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
          dm.Query1.Parameters.ParamByName('ven').Value := QDevolucionVEN_CODIGO.Value;
          dm.Query1.Open;
          tVendedor.Text := dm.Query1.FieldByName('ven_nombre').AsString;

          // ====== buscando condiciones ======
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('select cpa_nombre from condiciones');
          dm.Query1.SQL.Add('where cpa_codigo = :cod');
          dm.Query1.SQL.Add('and emp_codigo = :emp');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
          dm.Query1.Parameters.ParamByName('cod').Value := Condi;
          dm.Query1.Open;
          tCondicion.Text := dm.Query1.FieldByName('cpa_nombre').AsString;

          // ====== buscando cajero ======
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('select caj_nombre from cajeros');
          dm.Query1.SQL.Add('where caj_codigo = :cod');
          dm.Query1.SQL.Add('and emp_codigo = :emp');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
          dm.Query1.Parameters.ParamByName('cod').Value := Cajero;
          dm.Query1.Open;
          tCajero.Text := dm.Query1.FieldByName('caj_nombre').AsString;

          // ====== Buscando detalle de la factura ======
         { dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('select pro_codigo, pro_nombre, det_costo, det_precio, det_total,');
          dm.Query1.SQL.Add('det_cantidad, det_conitbis, det_itbis, det_descuento, pro_servicio,');
          dm.Query1.SQL.Add('det_cantdevuelta, pro_roriginal, pro_rfabric, det_comision,');
          dm.Query1.SQL.Add('ven_codigo, det_escala, det_medida, det_lote, det_fechavence,');
          dm.Query1.SQL.Add('isnull(det_cant_oferta,0) as det_cant_oferta,');
          dm.Query1.SQL.Add('det_selectivo_ad, det_selectivo_con, alm_codigo, ((det_precio*det_cantidad)*Recargo) recargo ');
          dm.Query1.SQL.Add('from det_factura');
          dm.Query1.SQL.Add('where emp_codigo = :emp');
          dm.Query1.SQL.Add('and fac_forma    = :forma');
          dm.Query1.SQL.Add('and tfa_codigo   = :tipo');
          dm.Query1.SQL.Add('and fac_numero   = :numero');
          dm.Query1.SQL.Add('and suc_codigo   = :suc');
          dm.Query1.Parameters.ParamByName('emp').Value    := dm.vp_cia;
          dm.Query1.Parameters.ParamByName('forma').Value  := QDevolucionFAC_FORMA.Value;
          dm.Query1.Parameters.ParamByName('tipo').Value   := StrToInt(Trim(edTipo.Text));
          dm.Query1.Parameters.ParamByName('numero').Value := QDevolucionFAC_NUMERO.Value;
          dm.Query1.Parameters.ParamByName('suc').Value    := QDevolucionsuc_codigo.Value;
          }

          dm.Query1.Close;
          dm.Query1.SQL.Clear;

          dm.Query1.SQL.Add('SELECT total_cantidad,');
          dm.Query1.SQL.Add('  d.pro_codigo, d.pro_nombre, d.det_costo, d.det_precio, d.det_total,');
          dm.Query1.SQL.Add('  d.det_cantidad, d.det_conitbis, d.det_itbis, d.det_descuento, d.pro_servicio,');
          dm.Query1.SQL.Add('  d.det_cantdevuelta, d.pro_roriginal, d.pro_rfabric, d.det_comision,');
          dm.Query1.SQL.Add('  d.ven_codigo, d.det_escala, d.det_medida, d.det_lote, d.det_fechavence,');
          dm.Query1.SQL.Add('  ISNULL(d.det_cant_oferta,0) AS det_cant_oferta,');
          dm.Query1.SQL.Add('  d.det_selectivo_ad, d.det_selectivo_con, d.alm_codigo,');

          dm.Query1.SQL.Add('  f.Recargo AS recargo_cabecera,');
          dm.Query1.SQL.Add('  CAST(f.Recargo AS DECIMAL(18,6)) / NULLIF(t.total_cantidad, 0) AS recargo,');
          dm.Query1.SQL.Add('  (CAST(f.Recargo AS DECIMAL(18,6)) / NULLIF(t.total_cantidad, 0)) * ISNULL(d.det_cantidad,0) AS recargo'); // <-- recargo_linea

          dm.Query1.SQL.Add('FROM det_factura d');
          dm.Query1.SQL.Add('INNER JOIN facturas f');
          dm.Query1.SQL.Add('  ON f.emp_codigo = d.emp_codigo');
          dm.Query1.SQL.Add(' AND f.suc_codigo = d.suc_codigo');
          dm.Query1.SQL.Add(' AND f.fac_forma  = d.fac_forma');
          dm.Query1.SQL.Add(' AND f.tfa_codigo = d.tfa_codigo');
          dm.Query1.SQL.Add(' AND f.fac_numero = d.fac_numero');

          dm.Query1.SQL.Add('CROSS APPLY (');
          dm.Query1.SQL.Add('  SELECT SUM(ISNULL(d2.det_cantidad,0)) AS total_cantidad');
          dm.Query1.SQL.Add('  FROM det_factura d2');
          dm.Query1.SQL.Add('  WHERE d2.emp_codigo = d.emp_codigo');
          dm.Query1.SQL.Add('    AND d2.suc_codigo = d.suc_codigo');
          dm.Query1.SQL.Add('    AND d2.fac_forma  = d.fac_forma');
          dm.Query1.SQL.Add('    AND d2.tfa_codigo = d.tfa_codigo');
          dm.Query1.SQL.Add('    AND d2.fac_numero = d.fac_numero');
          dm.Query1.SQL.Add(') t');

          dm.Query1.SQL.Add('WHERE d.emp_codigo = :emp');
          dm.Query1.SQL.Add('  AND d.fac_forma  = :forma');
          dm.Query1.SQL.Add('  AND d.tfa_codigo = :tipo');
          dm.Query1.SQL.Add('  AND d.fac_numero = :numero');
          dm.Query1.SQL.Add('  AND d.suc_codigo = :suc');

          dm.Query1.Parameters.ParamByName('emp').Value    := dm.vp_cia;
          dm.Query1.Parameters.ParamByName('forma').Value  := QDevolucionFAC_FORMA.Value;
          dm.Query1.Parameters.ParamByName('tipo').Value   := StrToInt(Trim(edTipo.Text));
          dm.Query1.Parameters.ParamByName('numero').Value := QDevolucionFAC_NUMERO.Value;
          dm.Query1.Parameters.ParamByName('suc').Value    := QDevolucionsuc_codigo.Value;

          dm.Query1.Open;

           vTotalCantFactura := dm.Query1.FieldByName('total_cantidad').AsFloat;  
          if vTotalCantFactura <= 0 then vTotalCantFactura := 1;

          dm.Query1.DisableControls;

          QDetalle.Close;
          QDetalle.Open;
          a := 0;
          Insertar := True;

          while not dm.Query1.Eof do
          begin
            a := a + 1;
            QDetalle.Append;

            QDetalleDET_SECUENCIA.Value     := a;
            QDetalleDET_ESCALA.Value        := dm.Query1.FieldByName('det_escala').AsString;
            QDetalleVEN_CODIGO.Value        := dm.Query1.FieldByName('ven_codigo').AsInteger;
            QDetalleDET_COMISION.Value      := dm.Query1.FieldByName('det_comision').AsFloat;
            QDetallePRO_SERVICIO.Value      := dm.Query1.FieldByName('pro_servicio').AsString;
            QDetalleEMP_CODIGO.Value        := dm.vp_cia;
            QDetallePRO_CODIGO.Value        := dm.Query1.FieldByName('pro_codigo').AsInteger;
            QDetalleDEV_COSTO.Value         := dm.Query1.FieldByName('det_costo').AsFloat;
            QDetalleDEV_PRECIO.Value        := dm.Query1.FieldByName('det_precio').AsFloat;
            QDetalleDEV_TOPECANTIDAD.Value  := dm.Query1.FieldByName('det_cantidad').AsFloat -
                                              dm.Query1.FieldByName('det_cantdevuelta').AsFloat;

            // ====== FORZAR ITBIS SOLO PARA SARITA ======
            if EsSarita and FacturaTieneItbis then
              QDetalleDEV_CONITBIS.AsString := 'S'
            else
              QDetalleDEV_CONITBIS.AsString := dm.Query1.FieldByName('det_conitbis').AsString;

            QDetalleDEV_DESCUENTO.Value     := dm.Query1.FieldByName('det_descuento').AsFloat;

            if dm.QParametrosservicio_construccion.Value then
            QDetalleDEV_ITBIS.Value := vItbisMaestro
            else
            QDetalleDEV_ITBIS.Value := dm.Query1.FieldByName('det_itbis').AsFloat;

            //QDetalleDEV_ITBIS.Value         := dm.Query1.FieldByName('det_itbis').AsFloat;

            // Si para Sarita viene 0 pero la factura tiene itbis, fuerza % estándar
            if EsSarita and FacturaTieneItbis and (QDetalleDEV_ITBIS.AsFloat <= 0) then
              QDetalleDEV_ITBIS.AsFloat := 18;

            QDetalleDEV_CANTFACTURADA.Value := dm.Query1.FieldByName('det_cantidad').AsFloat;
            QDetallePRO_NOMBRE.Value        := dm.Query1.FieldByName('pro_nombre').AsString;
            QDetallePRO_RORIGINAL.Value     := dm.Query1.FieldByName('pro_roriginal').AsString;
            QDetallePRO_RFABRIC.Value       := dm.Query1.FieldByName('pro_rfabric').AsString;
            QDetalleDET_MEDIDA.Value        := dm.Query1.FieldByName('det_medida').AsString;
            QDetalledet_lote.Value          := dm.Query1.FieldByName('det_lote').AsInteger;
            QDetalledet_fechavence.Value    := dm.Query1.FieldByName('det_fechavence').AsDateTime;
            QDetalledet_cant_oferta.Value   := dm.Query1.FieldByName('det_cant_oferta').AsFloat;
            QDetalledet_selectivo_ad.Value  := dm.Query1.FieldByName('det_selectivo_ad').AsFloat;
            QDetalledet_selectivo_con.Value := dm.Query1.FieldByName('det_selectivo_con').AsFloat;
            QDetallealm_codigo.Value        := dm.Query1.FieldByName('alm_codigo').AsInteger;
            QDetalleDEV_RECARGO.Value       := dm.Query1.FieldByName('recargo').AsFloat;

            QDetalle.Post;
            dm.Query1.Next;
          end;

          dm.Query1.EnableControls;
          QDetalle.First;
          Insertar := False;

          // ====== Repartir ITBIS maestro entre items (solo empresas especiales) ======
          DistribuirItbisMaestroEnDetalle;
          QDetalle.Refresh; // para que recalculen CalcFields si es necesario

        end;
      end;
    end;
end;

procedure TfrmDevolucion.GridEnter(Sender: TObject);
begin
  Grid.SelectedIndex := Grid.Columns.Count -2;
end;

procedure TfrmDevolucion.GridColEnter(Sender: TObject);
begin
  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) <> 'DEV_CANTIDAD' then
    Grid.SelectedIndex := Grid.Columns.Count -2;
end;

procedure TfrmDevolucion.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    QDetalle.edit;
    QDetalle.post;
  end;
end;

procedure TfrmDevolucion.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmDevolucion.QDetalleBeforePost(DataSet: TDataSet);
begin
  if format('%10.2f',[QDetalleDEV_CANTIDAD.value]) > format('%10.2f',[QDetalleDEV_TOPECANTIDAD.value]) then
  begin
    showmessage('CANTIDAD A DEVOLVER NO PUEDE SER MAYOR A LA'+#13+
                'CANTIDAD RESTANTE DEL PRODUCTO DE ESTA FACTURA');
    QDetalleDEV_CANTIDAD.clear;
    abort;
  end;

  if QDetalleDEV_TOPECANTIDAD.value < 0 then
  begin
    showmessage('CANTIDAD A DEVOLVER NO PUEDE SER MAYOR A LA'+#13+
                'CANTIDAD RESTANTE DEL PRODUCTO DE ESTA FACTURA');
    QDetalleDEV_CANTIDAD.clear;
    abort;
  end;

end;

procedure TfrmDevolucion.QDetalleAfterInsert(DataSet: TDataSet);
begin
  if Insertar = false then QDetalle.cancel;
end;

procedure TfrmDevolucion.totalizar;
var
  punt : tbookmark;
  SelectivoAd, SelectivoCon, vl_recargo, vl_descuentogral: Double;
begin
  total := 0;
  Itbis := 0;
  Itbis2 := 0;
  Descuento := 0;
  TDescGral := 0;
  vl_descuentogral := 0;
  vl_recargo := 0;
  vl_subtotal := 0;
  punt := QDetalle.GetBookmark;
  SelectivoAd := 0;
  SelectivoCon := 0;
  QDetalle.disablecontrols;
  QDetalle.first;
  while not QDetalle.eof do
  begin
    if QDetalleDEV_CANTIDAD.Value > 0 then begin
    vl_recargo := QDetalleDEV_RECARGO.Value +vl_recargo;
    Itbis     := Itbis + QDetalleCalcItbis.value;
    Itbis2    := Itbis2 + QDetalleCalcItbis2.Value;
    if (ConItbis) and (dm.QParametrospar_itbisincluido.Value = 'True') then
    total  := total + QDetalleValor.Value
    else
    Total  := Total  + QDetalleValor.Value ;
    SelectivoAd  := SelectivoAd  + (QDetalledet_selectivo_ad.Value);
    SelectivoCon := SelectivoCon + (QDetalledet_selectivo_con.Value);
    vl_subtotal  := total-vl_recargo-Itbis;
    Descuento := Descuento + QDetalleCalcDesc.value;
    end;
    QDetalle.next;
  end;
  QDetalle.GotoBookmark(punt);
  QDetalle.enablecontrols;
  QDevolucionSubTotal.value      :=  vl_subtotal;
  if QDevolucionporc_desc_gral.Value > 0 then
  TDescGral := (vl_subtotal-descuento)*(QDevolucionporc_desc_gral.Value/100);
  descuento := TDescGral + descuento;
  if (QDevolucionporc_desc_gral.Value > 0) and (Itbis > 0) and (vl_subtotal > 0) then
  Itbis := (vl_subtotal-descuento) * (Itbis / vl_subtotal);

  if Itbis2 = 0 then
  QDevolucionDEV_ITBIS.value     := Itbis;

  if Itbis2 > 0 then
  QDevolucionDEV_ITBIS.Value     := Itbis2;

  QDevolucionDEV_DESCUENTO.value := descuento;
  QDevoluciondev_selectivo_ad.Value  := SelectivoAd;
  QDevoluciondev_selectivo_con.Value := SelectivoCon;
  if Itbis2 = 0 then
  QDevolucionDEV_TOTAL.value         := vl_subtotal+itbis-descuento+SelectivoAd+SelectivoCon  + vl_recargo else
  QDevolucionDEV_TOTAL.value         := vl_subtotal+itbis2-descuento+SelectivoAd+SelectivoCon + vl_recargo;
  QDevolucionDEV_RECARGO.Value       := vl_recargo ;

 end;

procedure TfrmDevolucion.QDetalleCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis : Double;
  ConItbisEfectivo: Boolean;

   sec: Integer;
  itbisAsignado: Double;
begin

 if vEsEmpresaItbisMaestro and (Trim(QDetalleDEV_CONITBIS.AsString) = 'S') then
begin
  // ITBIS devuelto proporcional a la cantidad DEVUELTA,
  // pero la base (por unidad) viene de la FACTURA original.
  if vTotalCantFactura > 0 then
    QDetalleCalcItbis.Value := Round2( (vItbisMaestro / vTotalCantFactura) * QDetalleDEV_CANTIDAD.AsFloat )
  else
    QDetalleCalcItbis.Value := 0;

  QDetalleCalcItbis2.Value := 0;

  // tu cálculo normal de venta/desc/valor (sin usar porcentaje)
  recargo  := QDetalleDEV_RECARGO.Value;
  Venta    := (QDetalleDEV_PRECIO.Value + recargo) * QDetalleDEV_CANTIDAD.Value;

  QDetallePrecioItbis.Value := Venta + QDetalledet_selectivo_ad.Value + QDetalledet_selectivo_con.Value;
  QDetalleCalcRecargo.Value := recargo * QDetalleDEV_CANTIDAD.Value;
  QDetalleCalcDesc.Value    := (Venta * QDetalleDEV_DESCUENTO.Value) / 100;

  QDetalleValor.Value := (Venta + QDetalledet_selectivo_ad.Value + QDetalledet_selectivo_con.Value + QDetalleCalcItbis.Value);
  Exit;
end;

 //Facturas
  if QDevolucionFAC_NUMERO.Value > 0 then begin
  if QDetalleDEV_CANTIDAD.Value > 0 then begin
  if QDetalleDEV_CONITBIS.value = 'S' then
  begin
    NumItbis := strtofloat(format('%10.2f',[(QDetalleDEV_ITBIS.asfloat/100)+1]));
    if dm.QParametrospar_itbisincluido.Value = 'True' then
    begin
      recargo  := QDetalleDEV_RECARGO.Value;
      Venta    := recargo+((QDetalleDEV_PRECIO.value*QDetalleDEV_CANTIDAD.Value)/NumItbis);
      QDetallePrecioItbis.value := Venta;
      QDetalleCalcRecargo.Value := recargo;
      QDetalleCalcDesc.value    := (Venta * QDetalleDEV_DESCUENTO.value)/100;
      QDetalleCalcItbis.value   := ((venta-QDetalleCalcDesc.Value)*(NumItbis-1));
      if (QDetalleCalcDesc.Value = 0) and (QDevolucionporc_desc_gral.Value > 0) then
      QDetalleCalcItbis2.value   := (venta-(venta*(QDevolucionporc_desc_gral.Value/100)))*(NumItbis-1);

      QDetalleValor.value       := ((Venta)+QDetalledet_selectivo_ad.Value+
                                   QDetalledet_selectivo_con.Value+QDetalleCalcItbis.value);
      end
      else
      begin
      recargo  := QDetalleDEV_RECARGO.Value;
      Venta    := (QDetalleDEV_PRECIO.value+recargo)*QDetalleDEV_CANTIDAD.Value;
      QDetallePrecioItbis.value := Venta+QDetalledet_selectivo_ad.Value+QDetalledet_selectivo_con.Value;
      QDetalleCalcRecargo.Value := recargo*QDetalleDEV_CANTIDAD.Value;
      QDetalleCalcDesc.value    := (Venta *QDetalleDEV_DESCUENTO.value)/100;
      if (ConItbis) and (QDevolucionporc_desc_gral.Value = 0) then
        QDetalleCalcItbis.value := ((((Venta-QDetalleCalcDesc.Value)+(QDetalledet_selectivo_ad.Value+QDetalledet_selectivo_con.Value))*
                                       QDetalleDEV_ITBIS.Value/100))
      else if (ConItbis) and (QDevolucionporc_desc_gral.Value > 0) then
        QDetalleCalcItbis2.value   := (venta-(venta*(QDevolucionporc_desc_gral.Value/100)))*(NumItbis-1)
      else
        QDetalleCalcItbis.value := 0;

      QDetalleValor.value       := (((Venta)+QDetalledet_selectivo_ad.Value+
                                   QDetalledet_selectivo_con.Value+QDetalleCalcItbis.value));
    end;
  end
  else
  begin
    recargo  := QDetalleDEV_RECARGO.Value;
      Venta    := (QDetalleDEV_PRECIO.value+recargo)*QDetalleDEV_CANTIDAD.Value;
      QDetallePrecioItbis.value := Venta;
      QDetalleCalcRecargo.Value := recargo*QDetalleDEV_CANTIDAD.Value;
      QDetalleCalcDesc.value    := (Venta *QDetalleDEV_DESCUENTO.value)/100;
      QDetalleCalcItbis.value := 0;

      QDetalleValor.value       := (((Venta)+QDetalledet_selectivo_ad.Value+
                                   QDetalledet_selectivo_con.Value));

  end;
  end;
  end;


  //Tickets
    if QDevolucionticket_numero.Value > 0 then begin
 NumItbis := strtofloat(format('%10.2f',[(QDetalleDEV_ITBIS.asfloat/100)+1]));
    if dm.QParametrospar_itbisincluido.Value = 'True' then
    begin
      recargo  := QDetalleDEV_RECARGO.Value;
      Venta    := recargo+((QDetalleDEV_PRECIO.value*QDetalleDEV_CANTIDAD.Value)/NumItbis);
      QDetallePrecioItbis.value := Venta;
      QDetalleCalcRecargo.Value := recargo;
      QDetalleCalcDesc.value    := (Venta * QDetalleDEV_DESCUENTO.value)/100;
      QDetalleCalcItbis.value   := ((venta-QDetalleCalcDesc.Value)*(NumItbis-1));
      QDetalleValor.value       := ((Venta)+QDetalledet_selectivo_ad.Value+
                                   QDetalledet_selectivo_con.Value+QDetalleCalcItbis.value);
      end
      else
      begin
      recargo  := QDetalleDEV_RECARGO.Value;
      Venta    := (QDetalleDEV_PRECIO.value*QDetalleDEV_CANTIDAD.Value)+recargo;
      QDetallePrecioItbis.value := Venta+QDetalledet_selectivo_ad.Value+QDetalledet_selectivo_con.Value;
      QDetalleCalcRecargo.Value := recargo;
      QDetalleCalcDesc.value    := (Venta *QDetalleDEV_DESCUENTO.value)/100;
      if ConItbis then
        QDetalleCalcItbis.value := ((((Venta-QDetalleCalcDesc.Value)+(QDetalledet_selectivo_ad.Value+QDetalledet_selectivo_con.Value))*
                                       QDetalleDEV_ITBIS.Value)/100)
      else
        QDetalleCalcItbis.value := 0;

      QDetalleValor.value       := (((Venta)+QDetalledet_selectivo_ad.Value+
                                   QDetalledet_selectivo_con.Value+QDetalleCalcItbis.value));
end;
end;
end;

procedure TfrmDevolucion.QDetalleAfterPost(DataSet: TDataSet);
begin
  if Totaliza = true then Totalizar;
end;

function TfrmDevolucion.ValidarENCFDisponible(
  AEmp: Integer; ATipo: Integer;
  out AMsg: string;
  out ASiguienteCorrelativo: Int64  // opcional, informativo
): Boolean;
var
  Q: TADOQuery;
  desde, ultima, cantidad, hasta, siguiente: Int64;
  vence: TDateTime;
  activa: Boolean;
begin
  Result := False;
  AMsg := '';
  ASiguienteCorrelativo := 0;

  Q := dm.Query1; // reutiliza tu query
  Q.Close;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT s.Secuencia_Inicial_DGII, s.Ultima_secuencia_DGII, ');
  Q.SQL.Add('     CONVERT(datetime, s.FechaVencimientoSecuenciaDGII, 120) AS FechaVencimientoSecuenciaDGII, s.Activa, s.Cantidad');
  Q.SQL.Add('FROM SecuenciaDGII s');
  Q.SQL.Add('JOIN TipoNCF t ON t.emp_codigo = s.emp_codigo AND s.Tipo = t.cod_dgii');
  Q.SQL.Add('WHERE s.emp_codigo = :emp AND t.tip_codigo = :tip');
  Q.Parameters.ParamByName('emp').Value := AEmp;
  Q.Parameters.ParamByName('tip').Value := ATipo;

  Q.Open;

  if Q.Eof then
  begin
    AMsg := 'SECUENCIA_NO_CONFIGURADA';
    Exit;
  end;

  desde    := Q.FieldByName('Secuencia_Inicial_DGII').AsInteger;
  ultima   := Q.FieldByName('Ultima_secuencia_DGII').AsInteger;
  cantidad := Q.FieldByName('Cantidad').AsInteger;

  if not Q.FieldByName('FechaVencimientoSecuenciaDGII').IsNull then
  begin
    vence := Q.FieldByName('FechaVencimientoSecuenciaDGII').AsDateTime;
    if Now > vence then
    begin
      AMsg := 'La secuencia está vencida.';
      Exit;
    end;
  end;


  if not Q.FieldByName('Activa').IsNull then
  activa := Q.FieldByName('Activa').AsBoolean
  else
    activa := False; // por defecto

  hasta     := desde + cantidad - 1;
  siguiente := ultima + 1;

  if activa = False then
  begin
    AMsg := 'SECUENCIA_INACTIVA';
    Exit;
  end;

  if siguiente > hasta then
  begin
    AMsg := 'SECUENCIA_AGOTADA';
    Exit;
  end;

  // Hay secuencia válida y disponible (sin reservar)
  ASiguienteCorrelativo := siguiente;
  Result := True;
end;


procedure TfrmDevolucion.btGrabarClick(Sender: TObject);
var
  desem : integer;
  devdinero : string;
  Servicio: FacturaElectronicaService;
  resultado: WideString;

  eNCFFactura: string;
  TotalFactura: Currency;
  CausaCodigo: Integer;
  EnviarDGII: Boolean;

   EsSarita: Boolean;
   Encontrado: Boolean;

   ok: Boolean;
   msg: string;
   prox: Int64;

begin
    Encontrado := False;

     if (DM.QParametrosPAR_FE_DetenerFacturacion.Value and dm.QParametrosUsa_FacturacionElectronica.Value) then
        begin
          ok := ValidarENCFDisponible(
                        dm.vp_cia,
                        34,
                        msg, prox);
          if (not ok) then
          begin
            ShowMessage('No hay comprobantes fiscales disponibles para esta devolucion.');
            Exit;
          end;
        end;

  // ====== Detectar si es SARITA por RNC 105081105 ======
  EsSarita := False;
  if Assigned(dm.QEmpresas) then
  begin
    if not dm.QEmpresas.Active then
      dm.QEmpresas.Open;

  EsSarita :=
  (Trim(dm.QEmpresas.FieldByName('emp_rnc').AsString) = '131861717');


  end;

  //verificando si el cierre se hizo para esta fecha
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select cie_fecha from cierre');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and cie_fecha = :fec');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('fec').Value    := QDevolucionDEV_FECHA.Value;
  dm.Query1.Open;
  if dm.Query1.RecordCount > 0 then                            
  begin
    MessageDlg('LA DEVOLUCION NO PUEDE REALIZARSE, DEBIDO A QUE ESTE'+#13+
               'DIA FUE CERRADO.',mtError,[mbok],0);
    Grid.setfocus;
  end
  else if Total <= 0 then
  begin
    showmessage('LA DEVOLUCION NO ESTA COMPLETADA');
    Grid.setfocus;
    abort;
  end
  else
  if QDevolucionmotivo_dgi.Value = 0 then
  begin
    showmessage('DEBE INDICAR EL MOTIVO DE LA DEVOLUCION');
    abort;
  end
  else
  begin
    if messagedlg('TODOS LOS DATOS ESTAN CORRECTOS?',mtconfirmation,[mbyes,mbno],0) = mryes then
    begin
     { if not dm.QParametrospar_almacendevolucion.IsNull then
        almacen := dm.QParametrospar_almacendevolucion.Value
      else
        begin   //si el codigo almacen esa vacio busca el codigo del alamcen de la sucursal ///TITIN
          if (almacen = 0) then begin
          if  (not QSucursalalm_codigo.IsNull) then
            almacen:= QSucursalalm_codigo.Value
          else almacen := 1;
        end;
        end;
      }
      
      if rgtipo.ItemIndex = 0 then
      begin
        if ActBalance = false then
        begin
          if dm.QParametrosPAR_DEVEFECTIVO.Value = 'True' then
          begin
            if messagedlg('DESEA DEVOLVER EL EFECTIVO A ESTE CLIENTE?', mtconfirmation, [mbyes,mbno], 0) = mryes then
            begin
              devdinero := 'S';
              if dm.QParametrosPAR_DEVFORMA.Value = 'E' then
              begin
                Application.CreateForm(tfrmDevDinero, frmDevDinero);
                frmDevDinero.Ins := True;
                frmDevDinero.QFormasPago.Open;
                frmDevDinero.QForma.Open;
                frmDevDinero.QFormasPago.Edit;
                frmDevDinero.QFormasPagoEMP_CODIGO.Value := dm.vp_cia;
                frmDevDinero.QFormasPagoFPA_CODIGO.Value := dm.QParametrosPAR_FPADESEM.Value;
                frmDevDinero.QFormasPagoFOR_MONTO.Value  := QDevolucionDEV_TOTAL.Value;
                frmDevDinero.QFormasPagosuc_codigo.Value := QDevolucionsuc_codigo.Value;
                frmDevDinero.QFormasPago.Post;
                frmDevDinero.Ins := False;
              end
              else if dm.QParametrosPAR_DEVFORMA.Value = 'C' then
              begin
                Application.CreateForm(tfrmChequeDevol, frmChequeDevol);
                frmChequeDevol.ShowModal;
              end;
            end
            else
              devdinero := 'N';
          end
          else
              devdinero := 'N';
          QDevolucionDEV_DEVDINERO.Value := devdinero;
        end;
        if (devdinero = 'N') and (QDevolucionCLI_CODIGO.Value = 0) then
        begin
          messagedlg('ESTA DEVOLUCION SE REALIZO A UNA FACTURA'+#13+
                     'DE UN CLIENTE QUE NO PERTENECE AL SISTEMA,'+#13+
                     'POR LO TANTO NO SE PUEDE CREAR LA NOTA DE'+#13+
                     'CREDITO.',mtwarning,[mbok],0);
          Grid.SetFocus;
        end
        else
        begin

            QDevolucionTFA_CODIGO.value := strtoint(trim(edTipo.text));

          QDevolucion.Post;
          QDevolucion.UpdateBatch;

          Totaliza := False;

          //grabando detalle
          QDetalle.disablecontrols;
          QDetalle.first;
          while not QDetalle.eof do
          begin
            QDetalle.edit;
            QDetalleDEV_NUMERO.value    := QDevolucionDEV_NUMERO.value;
            QDetallesuc_codigo.Value    := QDevolucionsuc_codigo.Value;
            QDetallealm_codigo.Value    := almacen;
            QDetalle.post;
            QDetalle.next;
          end;
          QDetalle.enablecontrols;
          QDetalle.UpdateBatch;

          
          dm.Query1.close;
          dm.Query1.sql.clear;
          dm.Query1.sql.add('execute pr_graba_dev :emp, :suc, :num, :act, :alm');
          dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
          dm.Query1.Parameters.parambyname('num').Value := QDevolucionDEV_NUMERO.value;
          dm.Query1.Parameters.parambyname('suc').Value := QDevolucionsuc_codigo.value;

          if ACTBalance = True then
             dm.Query1.Parameters.parambyname('act').Value := 'True'
          else
             dm.Query1.Parameters.parambyname('act').Value := 'False';
          dm.Query1.Parameters.parambyname('alm').Value := almacen;
          dm.Query1.ExecSQL;

          if ActBalance = false then
          begin
            if devdinero = 'S' then
            begin
              if ((dm.QParametrosPAR_DEVFORMA.Value = 'E') OR (dm.QParametrosPAR_DEVFORMA.Value = 'P')) then
              begin
                dm.Query1.close;
                dm.Query1.sql.clear;
                dm.Query1.sql.add('execute pr_devolucion_rec');
                dm.Query1.sql.add(':emp, :suc, :dev, :usu, :caj, '+#39+'S'+#39);
                dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
                dm.Query1.Parameters.parambyname('dev').Value := QDevolucionDEV_NUMERO.value;
                dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
                dm.Query1.Parameters.parambyname('caj').Value := Cajero;
                dm.Query1.Parameters.parambyname('suc').Value := QDevolucionsuc_codigo.value;
                dm.Query1.ExecSQL;

                dm.Query1.close;
                dm.Query1.sql.clear;
                dm.Query1.sql.add('select top 1 des_numero from desembolsos');
                dm.Query1.sql.add('where emp_codigo = :emp');
                dm.Query1.sql.add('and dev_numero = :num');
                dm.Query1.sql.add('and suc_codigo = :suc');
                dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
                dm.Query1.Parameters.parambyname('num').Value := QDevolucionDEV_NUMERO.value;
                dm.Query1.Parameters.parambyname('suc').Value := QDevolucionsuc_codigo.value;
                dm.Query1.Open;

                Application.CreateForm(tfrmDevDinero, frmDevDinero);
                frmDevDinero.Ins := True;
                frmDevDinero.QFormasPago.Close;
                frmDevDinero.QFormasPago.Parameters.ParamByName('emp').Value := QDevolucionEMP_CODIGO.Value;
                frmDevDinero.QFormasPago.Parameters.ParamByName('numero').Value := DM.Query1.FieldByName('des_numero').AsInteger;
                frmDevDinero.QFormasPago.Parameters.ParamByName('suc').Value := QDevolucionEMP_CODIGO.Value;
                frmDevDinero.QFormasPago.Open;
                frmDevDinero.QForma.Open;
                frmDevDinero.QFormasPago.Edit;
                frmDevDinero.QFormasPagoEMP_CODIGO.Value := dm.vp_cia;
                frmDevDinero.QFormasPagoFPA_CODIGO.Value := dm.QParametrosPAR_FPADESEM.Value;
                frmDevDinero.QFormasPagoFOR_MONTO.Value  := QDevolucionDEV_TOTAL.Value;
                frmDevDinero.QFormasPagosuc_codigo.Value := QDevolucionsuc_codigo.Value;
                frmDevDinero.QFormasPago.Post;
                frmDevDinero.Ins := False;
                frmDevDinero.Totaliza := false;
                frmDevDinero.QFormasPago.DisableControls;
                frmDevDinero.QFormasPago.First;
                while not frmDevDinero.QFormasPago.eof do
                begin
                  frmDevDinero.QFormasPago.Edit;
                  frmDevDinero.QFormasPagoEMP_CODIGO.Value := dm.vp_cia;
                  frmDevDinero.QFormasPagoDES_NUMERO.Value := dm.Query1.FieldByName('des_numero').AsInteger;
                  frmDevDinero.QFormasPagosuc_codigo.Value := QDevolucionsuc_codigo.Value;
                  frmDevDinero.QFormasPago.Post;
                  frmDevDinero.QFormasPago.next;
                end;
                frmDevDinero.Totaliza := true;
                frmDevDinero.QFormasPago.EnableControls;
                frmDevDinero.QFormasPago.UpdateBatch;
                frmDevDinero.Release;

              end
              else
              begin
                frmChequeDevol.QCheques.UpdateBatch;
                frmChequeDevol.QDetalle.UpdateBatch;

                dm.Query1.close;
                dm.Query1.sql.clear;
                dm.Query1.sql.add('execute pr_devolucion_ck');
                dm.Query1.sql.add(':emp, :suc, :dev, :ban, :che, :sol');
                dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
                dm.Query1.Parameters.parambyname('dev').Value := QDevolucionDEV_NUMERO.value;
                dm.Query1.Parameters.parambyname('ban').Value := frmChequeDevol.QChequesBAN_CODIGO.Value;
                dm.Query1.Parameters.parambyname('che').Value := frmChequeDevol.QChequesCHE_NUMERO.Value;
                dm.Query1.Parameters.parambyname('sol').Value  := trim(frmChequeDevol.edSol.Text);
                dm.Query1.Parameters.parambyname('suc').Value := QDevolucionsuc_codigo.value;
                dm.Query1.ExecSQL;
                frmChequeDevol.Release;
              end;
            end
            else
            begin
              if QDevolucionCLI_CODIGO.value = 0 then
                messagedlg('ESTA DEVOLUCION SE REALIZO A UNA FACTURA'+#13+
                           'DE UN CLIENTE QUE NO PERTENECE AL SISTEMA,'+#13+
                           'POR LO TANTO NO SE PUEDE CREAR LA NOTA DE'+#13+
                           'CREDITO.',mtwarning,[mbok],0)
              else
              begin
                dm.Query1.close;
                dm.Query1.sql.clear;
                dm.Query1.sql.add('execute pr_devolucion_rec');
                dm.Query1.sql.add(':emp, :suc, :dev, :usu, :caj, '+#39+'N'+#39);
                dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
                dm.Query1.Parameters.parambyname('dev').Value := QDevolucionDEV_NUMERO.value;
                dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
                dm.Query1.Parameters.parambyname('caj').Value := Cajero;
                dm.Query1.Parameters.parambyname('suc').Value := QDevolucionsuc_codigo.value;
                dm.Query1.ExecSQL;

              end;
            end;
          end;

          if devdinero = 'N' then begin
          //Actualizar NCF Devoluciones (Hecho por Jhonattan Gomez) Sep-2018
          with QUpdDev do begin
          {Close;
          Parameters.ParamByName('emp').Value := QDevolucionEMP_CODIGO.Value;
          Parameters.ParamByName('suc').Value := QDevolucionsuc_codigo.Value;
          Parameters.ParamByName('num').Value := QDevolucionDEV_NUMERO.Value;
          Parameters.ParamByName('NCF').Value := DBEdit6.Text;
          ExecSQL;}
          end;

          //Actualizar NCF Notas de Credito (Hecho por Jhonattan Gomez) Sep-2018
          with QUpdDev do begin
          {Close;
          Parameters.ParamByName('emp').Value := QDevolucionEMP_CODIGO.Value;
          Parameters.ParamByName('suc').Value := QDevolucionsuc_codigo.Value;
          Parameters.ParamByName('num').Value := QDevolucionDEV_NUMERO.Value;
          Parameters.ParamByName('NCF').Value := DBEdit6.Text;

          ExecSQL;}
          end;

          if vl_status_reg = 'PAG' THEN BEGIN
          //Poner Disponible para ser utilizada mas adelante las NC por facturas / Tickets pagos
          //(Hecho Jhonattan Gomez (18/01/2021)
          if not QDevolucionFAC_NUMERO.IsNull then begin
          DM.Query1.Close;
          DM.Query1.SQL.Clear;
          dm.Query1.SQL.Add('DECLARE @EMP INT, @SUC INT, @DEVID INT, @NCID INT');
          dm.Query1.SQL.Add('SET @DEVID = '+QDevolucionDEV_NUMERO.Text);
          dm.Query1.SQL.Add('SET @EMP = '+QDevolucionEMP_CODIGO.Text);
          dm.Query1.SQL.Add('SET @SUC = '+QDevolucionsuc_codigo.Text);
          dm.Query1.SQL.Add('SET @NCID = (SELECT TOP 1 ncr_numero FROM NotasCredito WHERE emp_codigo = @EMP AND suc_codigo = @SUC AND NCR_DEVOLUCION = @DEVID)');
          dm.Query1.SQL.Add('UPDATE NotasCredito');
          dm.Query1.SQL.Add('SET NCR_MONTOUSADO = 0,');
          dm.Query1.SQL.Add('FAC_NUMERO = NULL');
          dm.Query1.SQL.Add('WHERE ncr_numero = @NCID AND emp_codigo = @EMP AND suc_codigo = @SUC');
          dm.Query1.ExecSQL;

          DM.Query1.Close;
          DM.Query1.SQL.Clear;
          dm.Query1.SQL.Add('DECLARE @EMP INT, @SUC INT, @DEVID INT, @NCID INT');
          dm.Query1.SQL.Add('SET @DEVID = '+QDevolucionDEV_NUMERO.Text);
          dm.Query1.SQL.Add('SET @EMP = '+QDevolucionEMP_CODIGO.Text);
          dm.Query1.SQL.Add('SET @SUC = '+QDevolucionsuc_codigo.Text);
          dm.Query1.SQL.Add('SET @NCID = (SELECT ncr_numero FROM NotasCredito WHERE emp_codigo = @EMP AND suc_codigo = @SUC AND NCR_DEVOLUCION = @DEVID)');
          dm.Query1.SQL.Add('delete from det_NotaCredito');
          dm.Query1.SQL.Add('WHERE ncr_numero = @NCID AND emp_codigo = @EMP AND suc_codigo = @SUC');
          dm.Query1.ExecSQL;
          end;

          if not QDevolucionticket_numero.IsNull then begin
          DM.Query1.Close;
          DM.Query1.SQL.Clear;
          dm.Query1.SQL.Add('DECLARE @EMP INT, @SUC INT, @DEVID INT, @NCID INT');
          dm.Query1.SQL.Add('SET @DEVID = '+QDevolucionDEV_NUMERO.Text);
          dm.Query1.SQL.Add('SET @EMP = '+QDevolucionEMP_CODIGO.Text);
          dm.Query1.SQL.Add('SET @SUC = '+QDevolucionsuc_codigo.Text);
          dm.Query1.SQL.Add('SET @NCID = (SELECT ncr_numero FROM NotasCredito WHERE emp_codigo = @EMP AND suc_codigo = @SUC AND NCR_DEVOLUCION = @DEVID)');
          dm.Query1.SQL.Add('UPDATE NotasCredito');
          dm.Query1.SQL.Add('SET NCR_MONTOUSADO = 0,');
          dm.Query1.SQL.Add('ticket_numero = NULL');
          dm.Query1.SQL.Add('WHERE ncr_numero = @NCID AND emp_codigo = @EMP AND suc_codigo = @SUC');
          dm.Query1.ExecSQL;

          DM.Query1.Close;
          DM.Query1.SQL.Clear;
          dm.Query1.SQL.Add('DECLARE @EMP INT, @SUC INT, @DEVID INT, @NCID INT');
          dm.Query1.SQL.Add('SET @DEVID = '+QDevolucionDEV_NUMERO.Text);
          dm.Query1.SQL.Add('SET @EMP = '+QDevolucionEMP_CODIGO.Text);
          dm.Query1.SQL.Add('SET @SUC = '+QDevolucionsuc_codigo.Text);
          dm.Query1.SQL.Add('SET @NCID = (SELECT ncr_numero FROM NotasCredito WHERE emp_codigo = @EMP AND suc_codigo = @SUC AND NCR_DEVOLUCION = @DEVID)');
          dm.Query1.SQL.Add('delete from det_NotaCredito');
          dm.Query1.SQL.Add('WHERE ncr_numero = @NCID AND emp_codigo = @EMP AND suc_codigo = @SUC');
          dm.Query1.ExecSQL;
          end;

          end;
          end;

          QUpdNC.ExecSQL;

          if dm.QParametrosUsa_FacturacionElectronica.Value then
          begin
            EnviarDGII := True;  // asumimos que sí se puede, hasta que una validación falle

              // ================= VALIDACIONES NUEVAS (FACTURA ASOCIADA) =================
             // 1) Factura administrativa
            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('SELECT eNCF, fac_total, fac_itbis, AceptadoDGII');
            dm.Query1.SQL.Add('FROM dbo.Facturas');
            dm.Query1.SQL.Add('WHERE emp_codigo = :emp');
            dm.Query1.SQL.Add('  AND suc_codigo = :suc');
            dm.Query1.SQL.Add('  AND fac_numero = :num');
            dm.Query1.SQL.Add('  AND fac_forma  = :forma');
            dm.Query1.SQL.Add('  AND tfa_codigo = :tfa');
            dm.Query1.Parameters.ParamByName('emp').Value   := QDevolucionEMP_CODIGO.Value;
            dm.Query1.Parameters.ParamByName('suc').Value   := QDevolucionsuc_codigo.Value;
            dm.Query1.Parameters.ParamByName('num').Value   := QDevolucionFAC_NUMERO.Value;
            dm.Query1.Parameters.ParamByName('forma').Value := QDevolucionFAC_FORMA.Value;
            dm.Query1.Parameters.ParamByName('tfa').Value   := QDevolucionTFA_CODIGO.Value;
            dm.Query1.Open;
            Encontrado := not dm.Query1.IsEmpty;
            // 2) Ticket POS (Montos_Ticket) si no hubo fila en Facturas
            if not Encontrado then
            begin
              dm.Query1.Close;
              dm.Query1.SQL.Clear;
              dm.Query1.SQL.Add('SELECT eNCF, total AS fac_total, itbis AS fac_itbis, AceptadoDGII');
              dm.Query1.SQL.Add('FROM dbo.Montos_Ticket');
              dm.Query1.SQL.Add('WHERE emp_codigo = :emp');
              dm.Query1.SQL.Add('  AND suc_codigo = :suc');
              dm.Query1.SQL.Add('  AND ticket     = :num');
              dm.Query1.SQL.Add('  AND usu_codigo = :usu');
              dm.Query1.SQL.Add('  AND caja       = :caja');

              dm.Query1.Parameters.ParamByName('emp').Value := QDevolucionEMP_CODIGO.Value;
              dm.Query1.Parameters.ParamByName('suc').Value := QDevolucionsuc_codigo.Value;
              dm.Query1.Parameters.ParamByName('num').Value := QDevolucionticket_numero.Value;
              dm.Query1.Parameters.ParamByName('usu').Value := QDevolucionticket_cajero.Value;  // campo real del devolución
              dm.Query1.Parameters.ParamByName('caja').Value := QDevolucionticket_caja.Value;      // idem
               dm.Query1.Open;
              Encontrado := not dm.Query1.IsEmpty;
            end;
            if not Encontrado then
            begin
              ShowMessage('No se encontró la factura asociada. No se enviará la devolución a la DGII.');
              EnviarDGII := False;
            end;

            // ================= VALIDACIONES NUEVAS =================
            // 1) Buscar la factura asociada por: emp_codigo, fac_forma, fac_numero, suc_codigo, tfa_codigo
           { dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('select eNCF, fac_total,fac_itbis, AceptadoDGII');
            dm.Query1.SQL.Add('from Facturas');
            dm.Query1.SQL.Add('where emp_codigo = :emp');
            dm.Query1.SQL.Add('  and suc_codigo = :suc');
            dm.Query1.SQL.Add('  and fac_numero = :num');
            dm.Query1.SQL.Add('  and fac_forma  = :forma');
            dm.Query1.SQL.Add('  and tfa_codigo = :tfa');

            dm.Query1.Parameters.ParamByName('emp').Value   := QDevolucionEMP_CODIGO.Value;
            dm.Query1.Parameters.ParamByName('suc').Value   := QDevolucionsuc_codigo.Value;
            dm.Query1.Parameters.ParamByName('num').Value   := QDevolucionFAC_NUMERO.Value;
            dm.Query1.Parameters.ParamByName('forma').Value := QDevolucionFAC_FORMA.Value;
            dm.Query1.Parameters.ParamByName('tfa').Value   := QDevolucionTFA_CODIGO.Value;
            dm.Query1.Open;

            if dm.Query1.IsEmpty then
            begin
              ShowMessage('No se encontró la factura asociada. No se enviará la devolución a la DGII.');
              EnviarDGII := False;
            end;        }

            if not (DM.QParametrosintegracion_luganis.AsBoolean) then
              begin
                // Validar que la factura fue aceptada por la DGII
              if EnviarDGII and (not dm.Query1.FieldByName('AceptadoDGII').AsBoolean) then
              begin
                ShowMessage(
                  'La factura asociada no ha sido aceptada por la DGII. ' +
                  'No se enviará la devolución a la DGII.'
                );
                EnviarDGII := False;
              end;
            end;

            if EnviarDGII then
            begin
              eNCFFactura  := Trim(dm.Query1.FieldByName('eNCF').AsString);
            // TotalFactura normalmente = fac_total
            // Para empresas especiales = fac_total + fac_itbis (maestro)
            if EsSarita then
            begin
              TotalFactura :=
                dm.Query1.FieldByName('fac_total').AsCurrency +
                dm.Query1.FieldByName('fac_itbis').AsCurrency;
            end
            else
            begin
              TotalFactura := dm.Query1.FieldByName('fac_total').AsCurrency;
            end;


              // 2) Si la factura asociada no tiene eNCF ? NO enviar
              if eNCFFactura = '' then
              begin
                ShowMessage('La factura asociada no tiene eNCF. No se enviará la devolución a la DGII.');
                EnviarDGII := False;
              end;
            end;

            // 3) Validar motivo DGII (1,2,3) vs montos
            if EnviarDGII then
            begin
              CausaCodigo := StrToIntDef(Trim(QDevolucionmotivo_dgi.AsString), 0);

              case CausaCodigo of
                1: // Anulación total
                  begin
                    if Abs(QDevolucionDEV_TOTAL.Value - TotalFactura) > 0.03 then
                    begin
                      ShowMessage(
                        'Para la causa "1 - Anulación total", el monto de la devolución (' +
                        CurrToStr(QDevolucionDEV_TOTAL.Value) +
                        ') debe ser igual al monto de la factura (' +
                        CurrToStr(TotalFactura) + ').'
                      );
                      EnviarDGII := False;
                    end;
                  end;

                3: // Corrección montos
                  begin
                    if (QDevolucionDEV_TOTAL.Value <= 0) or
                       (QDevolucionDEV_TOTAL.Value > TotalFactura) then
                    begin
                      ShowMessage(
                        'Para la causa "3 - Corrección montos", el monto de la devolución debe ser ' +
                        'mayor que 0 y menor o igual al monto de la factura (' +
                        CurrToStr(TotalFactura) + ').'
                      );
                      EnviarDGII := False;
                    end;
                  end;

                2: // Corrección texto
                  begin
                    if Abs(QDevolucionDEV_TOTAL.Value) > 0.01 then
                    begin
                      ShowMessage(
                        'Para la causa "2 - Corrección texto", el monto de la devolución debe ser 0.00.'
                      );
                      EnviarDGII := False;
                    end;
                  end;
              else
                begin
                  ShowMessage('Motivo DGII inválido o no soportado. No se enviará la devolución.');
                  EnviarDGII := False;
                end;
              end;
            end;
            // ================= FIN VALIDACIONES NUEVAS =================

            // Si todas las validaciones pasaron, enviamos a DGII o LUGANIS
            if EnviarDGII then
            begin
              if dm.QParametrosintegracion_luganis.Value then
              begin
                // ===================== FLUJO LUGANIS =====================
                QDevolucion.Edit;

                dm.Query1.Close;
                dm.Query1.SQL.Clear;
                dm.Query1.SQL.Add('select emp_rnc');
                dm.Query1.SQL.Add('from empresas');
                dm.Query1.SQL.Add('where emp_codigo = :emp');
                dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
                dm.Query1.Open;
                QDevolucionemp_rnc.Value := dm.Query1.FieldByName('emp_rnc').AsString;

                dm.Query1.Close;
                dm.Query1.SQL.Clear;
                dm.Query1.SQL.Add('select cli_rnc');
                dm.Query1.SQL.Add('from Clientes');
                dm.Query1.SQL.Add('where cli_codigo = :sup');
                dm.Query1.SQL.Add('  and emp_codigo = :emp');
                dm.Query1.Parameters.ParamByName('sup').Value := QDevolucionCLI_CODIGO.Value;
                dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
                dm.Query1.Open;
                QDevolucioncli_rnc.Value := dm.Query1.FieldByName('cli_rnc').AsString;

                dm.Query1.Close;
                dm.Query1.SQL.Clear;
                dm.Query1.SQL.Add('select eNCF');
                dm.Query1.SQL.Add('from DEVOLUCION');
                dm.Query1.SQL.Add('where emp_codigo = :emp');
                dm.Query1.SQL.Add('  and DEV_NUMERO = :numero');
                dm.Query1.SQL.Add('  and suc_codigo = :suc');
                dm.Query1.SQL.Add('  and dev_status <> :status');
                dm.Query1.Parameters.ParamByName('emp').Value := QDevolucionEMP_CODIGO.Value;
                dm.Query1.Parameters.ParamByName('suc').Value := QDevolucionsuc_codigo.Value;
                dm.Query1.Parameters.ParamByName('numero').Value := QDevolucionDEV_NUMERO.Value;
                dm.Query1.Parameters.ParamByName('status').Value := 'ANU';
                dm.Query1.Open;
                QDevolucioneNCF.Value := dm.Query1.FieldByName('eNCF').AsString;

                Servicio := CoFacturaElectronicaService.Create;
                resultado := Servicio.EnviarDevolucionLuganis(
                  IntToStr(QDevolucionEMP_CODIGO.Value),
                  IntToStr(QDevolucionsuc_codigo.Value),
                  IntToStr(QDevolucionDEV_NUMERO.Value),
                  QDevolucionemp_rnc.Value,
                  QDevolucioneNCF.Value,
                  QDevolucioncli_rnc.Value,
                  dm.QParametrospar_luganis_baseurl.AsString,
                  dm.QParametrospar_luganis_companycode.AsString,
                  dm.QParametrospar_luganis_username.AsString,
                  dm.QParametrospar_luganis_password.AsString,
                  dm.QParametrospar_luganis_appversion.AsString,
                  dm.QParametrospar_luganis_os.AsString,
                  dm.QParametrospar_luganis_deviceid.AsString,
                  dm.QParametrospar_luganis_latitude.AsString,
                  dm.QParametrospar_luganis_longitude.AsString,
                  dm.QParametrospar_luganis_providerip.AsString,
                  False,
                  True,   // saveGeneratedTxt
                  '',     // outputFolder
                  False   // logDebug
                );
              end
              else
              begin
                // ===================== FLUJO DGII =====================
                if (not QDevolucionticket_numero.IsNull) and (Trim(QDevolucionticket_numero.AsString) <> '') then
                begin
                  QDevolucion.Edit;

                  dm.Query1.Close;
                  dm.Query1.SQL.Clear;
                  dm.Query1.SQL.Add('select emp_rnc');
                  dm.Query1.SQL.Add('from empresas');
                  dm.Query1.SQL.Add('where emp_codigo = :emp');
                  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
                  dm.Query1.Open;
                  QDevolucionemp_rnc.Value := dm.Query1.FieldByName('emp_rnc').AsString;

                  dm.Query1.Close;
                  dm.Query1.SQL.Clear;
                  dm.Query1.SQL.Add('select cli_rnc');
                  dm.Query1.SQL.Add('from Clientes');
                  dm.Query1.SQL.Add('where cli_codigo = :sup');
                  dm.Query1.SQL.Add('  and emp_codigo = :emp');
                  dm.Query1.Parameters.ParamByName('sup').Value := QDevolucionCLI_CODIGO.Value;
                  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
                  dm.Query1.Open;
                  QDevolucioncli_rnc.Value := dm.Query1.FieldByName('cli_rnc').AsString;

                  dm.Query1.Close;
                  dm.Query1.SQL.Clear;
                  dm.Query1.SQL.Add('select eNCF');
                  dm.Query1.SQL.Add('from DEVOLUCION');
                  dm.Query1.SQL.Add('where emp_codigo = :emp');
                  dm.Query1.SQL.Add('  and DEV_NUMERO = :numero');
                  dm.Query1.SQL.Add('  and suc_codigo = :suc');
                  dm.Query1.SQL.Add('  and dev_status <> :status');
                  dm.Query1.Parameters.ParamByName('emp').Value := QDevolucionEMP_CODIGO.Value;
                  dm.Query1.Parameters.ParamByName('suc').Value := QDevolucionsuc_codigo.Value;
                  dm.Query1.Parameters.ParamByName('numero').Value := QDevolucionDEV_NUMERO.Value;
                  dm.Query1.Parameters.ParamByName('status').Value := 'ANU';
                  dm.Query1.Open;
                  QDevolucioneNCF.Value := dm.Query1.FieldByName('eNCF').AsString;

                  Servicio := CoFacturaElectronicaService.Create;
                  resultado := Servicio.EnviarDevolucionPOS(
                    IntToStr(QDevolucionEMP_CODIGO.Value),
                    IntToStr(QDevolucionsuc_codigo.Value),
                    '',
                    IntToStr(QDevolucionDEV_NUMERO.Value),
                    QDevolucionemp_rnc.Value,
                    '',
                    QDevolucioncli_rnc.Value,
                    '',
                    '',
                    '34'
                  );
                end
                else
                begin
                  QDevolucion.Edit;

                  dm.Query1.Close;
                  dm.Query1.SQL.Clear;
                  dm.Query1.SQL.Add('select emp_rnc');
                  dm.Query1.SQL.Add('from empresas');
                  dm.Query1.SQL.Add('where emp_codigo = :emp');
                  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
                  dm.Query1.Open;
                  QDevolucionemp_rnc.Value := dm.Query1.FieldByName('emp_rnc').AsString;

                  dm.Query1.Close;
                  dm.Query1.SQL.Clear;
                  dm.Query1.SQL.Add('select cli_rnc');
                  dm.Query1.SQL.Add('from Clientes');
                  dm.Query1.SQL.Add('where cli_codigo = :sup');
                  dm.Query1.SQL.Add('  and emp_codigo = :emp');
                  dm.Query1.Parameters.ParamByName('sup').Value := QDevolucionCLI_CODIGO.Value;
                  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
                  dm.Query1.Open;
                  QDevolucioncli_rnc.Value := dm.Query1.FieldByName('cli_rnc').AsString;

                  dm.Query1.Close;
                  dm.Query1.SQL.Clear;
                  dm.Query1.SQL.Add('select eNCF');
                  dm.Query1.SQL.Add('from DEVOLUCION');
                  dm.Query1.SQL.Add('where emp_codigo = :emp');
                  dm.Query1.SQL.Add('  and DEV_NUMERO = :numero');
                  dm.Query1.SQL.Add('  and suc_codigo = :suc');
                  dm.Query1.SQL.Add('  and dev_status <> :status');
                  dm.Query1.Parameters.ParamByName('emp').Value := QDevolucionEMP_CODIGO.Value;
                  dm.Query1.Parameters.ParamByName('suc').Value := QDevolucionsuc_codigo.Value;
                  dm.Query1.Parameters.ParamByName('numero').Value := QDevolucionDEV_NUMERO.Value;
                  dm.Query1.Parameters.ParamByName('status').Value := 'ANU';
                  dm.Query1.Open;
                  QDevolucioneNCF.Value := dm.Query1.FieldByName('eNCF').AsString;

                  Servicio := CoFacturaElectronicaService.Create;
                  resultado := Servicio.EnviarDevolucion(
                    IntToStr(QDevolucionEMP_CODIGO.Value),
                    IntToStr(QDevolucionsuc_codigo.Value),
                    '',
                    IntToStr(QDevolucionDEV_NUMERO.Value),
                    QDevolucionemp_rnc.Value,
                    '',
                    QDevolucioncli_rnc.Value,
                    '',
                    '',
                    '34'
                  );
                end;
              end;
            end
            else
            begin
              ShowMessage('La devolución se grabó correctamente, pero NO se envió a la DGII por las validaciones.');
            end;
          end;

              if messagedlg('SE HA GENERADO LA DEVOLUCION NUMERO '+inttostr(QDevolucionDEV_NUMERO.value)+
                        ', DESEA IMPRIMIR ESTA DEVOLUCION?',mtconfirmation,[mbyes,mbno],0) = mryes then
          begin
            if Impresora.IDPrinter > 0 then
              ImprimeTicketFiscal(Impresora)
            else
            if dm.QParametrospar_fac_preimpresa.Value = 'False' then
            begin
              if FormatoImp = 2 then
              begin
                application.createform(tRDevolucion, RDevolucion);
                RDevolucion.QDevolucion.Close;
                RDevolucion.QDevolucion.Parameters.ParamByName('emp_codigo').Value := QDevolucionEMP_CODIGO.Value;
                RDevolucion.QDevolucion.Parameters.ParamByName('numero').Value     := QDevolucionDEV_NUMERO.Value;
                RDevolucion.QDevolucion.Parameters.ParamByName('suc').Value        := QDevolucionsuc_codigo.Value;
                RDevolucion.QDevolucion.open;
                RDevolucion.QDetalle.Close;
                RDevolucion.QDetalle.Parameters.ParamByName('dev_numero').Value := RDevolucion.QDevolucionDEV_NUMERO.Value;
                RDevolucion.QDetalle.Parameters.ParamByName('suc_codigo').Value := RDevolucion.QDevolucionsuc_codigo.Value;
                RDevolucion.QDetalle.Parameters.ParamByName('emp_codigo').Value := RDevolucion.QDevolucionEMP_CODIGO.Value;
                RDevolucion.QDetalle.open;
                RDevolucion.PrinterSetup;
                RDevolucion.print;
                RDevolucion.Destroy;
              end
              else if FormatoImp = 3 then
              begin
                Imp40Columnas;
              end;
            end
            else
            begin
              application.createform(tRDevolucionPreImpresa, RDevolucionPreImpresa);
              RDevolucionPreImpresa.QDevolucion.Parameters.ParamByName('numero').Value := QDevolucionDEV_NUMERO.value;
              RDevolucionPreImpresa.QDevolucion.Parameters.ParamByName('suc').Value    := QDevolucionsuc_codigo.Value;
              RDevolucionPreImpresa.QDevolucion.open;
              RDevolucionPreImpresa.QDetalle.open;

              RDevolucionPreImpresa.QRBB.PrinterSetup;
              RDevolucionPreImpresa.QRBB.print;
              RDevolucionPreImpresa.Release;
            end;
          end;

          QDevolucion.Close;
          QDevolucion.Parameters.parambyname('numero').Value := -1;
          QDevolucion.Parameters.parambyname('suc').Value := -1;
          QDevolucion.open;
          QDevolucion.insert;
          PageControl1.ActivePageIndex := 0;
          edTipo.setfocus;
        end;
      end
      else
      begin
        QDevolucion.Post;
        QDevolucion.UpdateBatch;

        Totaliza := False;

        //grabando detalle
        QDetalle.disablecontrols;
        QDetalle.first;
        while not QDetalle.eof do
        begin
          QDetalle.edit;
          QDetalleDEV_NUMERO.value    := QDevolucionDEV_NUMERO.value;
          QDetallesuc_codigo.Value    := QDevolucionsuc_codigo.Value;
          QDetalle.post;
          QDetalle.next;
        end;
        QDetalle.enablecontrols;
        QDetalle.UpdateBatch;      

        dm.Query1.close;
        dm.Query1.sql.clear;
        dm.Query1.sql.add('execute pr_graba_dev :emp, :suc, :num, :act, :alm');
        dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
        dm.Query1.Parameters.parambyname('num').Value := QDevolucionDEV_NUMERO.value;
        dm.Query1.Parameters.parambyname('suc').Value := QDevolucionsuc_codigo.value;

        if ACTBalance = True then
           dm.Query1.Parameters.parambyname('act').Value := 'True'
        else
           dm.Query1.Parameters.parambyname('act').Value := 'False';
        dm.Query1.Parameters.parambyname('alm').Value := almacen;
        dm.Query1.ExecSQL;

        //Verificar si esta paga la facturas Jhonattan Gomez
        
        
          if dm.QParametrosUsa_FacturacionElectronica.Value then
          begin
            EnviarDGII := True;  // asumimos que sí se puede, hasta que una validación falle

              // ================= VALIDACIONES NUEVAS (FACTURA ASOCIADA) =================
             // 1) Factura administrativa
            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('SELECT eNCF, fac_total, fac_itbis, AceptadoDGII');
            dm.Query1.SQL.Add('FROM dbo.Facturas');
            dm.Query1.SQL.Add('WHERE emp_codigo = :emp');
            dm.Query1.SQL.Add('  AND suc_codigo = :suc');
            dm.Query1.SQL.Add('  AND fac_numero = :num');
            dm.Query1.SQL.Add('  AND fac_forma  = :forma');
            dm.Query1.SQL.Add('  AND tfa_codigo = :tfa');
            dm.Query1.Parameters.ParamByName('emp').Value   := QDevolucionEMP_CODIGO.Value;
            dm.Query1.Parameters.ParamByName('suc').Value   := QDevolucionsuc_codigo.Value;
            dm.Query1.Parameters.ParamByName('num').Value   := QDevolucionFAC_NUMERO.Value;
            dm.Query1.Parameters.ParamByName('forma').Value := QDevolucionFAC_FORMA.Value;
            dm.Query1.Parameters.ParamByName('tfa').Value   := QDevolucionTFA_CODIGO.Value;
            dm.Query1.Open;
            Encontrado := not dm.Query1.IsEmpty;
            // 2) Ticket POS (Montos_Ticket) si no hubo fila en Facturas
            if not Encontrado then
            begin
              dm.Query1.Close;
              dm.Query1.SQL.Clear;
              dm.Query1.SQL.Add('SELECT eNCF, total AS fac_total, itbis AS fac_itbis, AceptadoDGII');
              dm.Query1.SQL.Add('FROM dbo.Montos_Ticket');
              dm.Query1.SQL.Add('WHERE emp_codigo = :emp');
              dm.Query1.SQL.Add('  AND suc_codigo = :suc');
              dm.Query1.SQL.Add('  AND ticket     = :num');
              dm.Query1.SQL.Add('  AND usu_codigo = :usu');
              dm.Query1.SQL.Add('  AND caja       = :caja');

              dm.Query1.Parameters.ParamByName('emp').Value := QDevolucionEMP_CODIGO.Value;
              dm.Query1.Parameters.ParamByName('suc').Value := QDevolucionsuc_codigo.Value;
              dm.Query1.Parameters.ParamByName('num').Value := QDevolucionticket_numero.Value;
              dm.Query1.Parameters.ParamByName('usu').Value := QDevolucionticket_cajero.Value;  // campo real del devolución
              dm.Query1.Parameters.ParamByName('caja').Value := QDevolucionticket_caja.Value;      // idem
               dm.Query1.Open;
              Encontrado := not dm.Query1.IsEmpty;
            end;
            if not Encontrado then
            begin
              ShowMessage('No se encontró la factura asociada. No se enviará la devolución a la DGII.');
              EnviarDGII := False;
            end;

            // ================= VALIDACIONES NUEVAS =================
            // 1) Buscar la factura asociada por: emp_codigo, fac_forma, fac_numero, suc_codigo, tfa_codigo
           { dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('select eNCF, fac_total,fac_itbis, AceptadoDGII');
            dm.Query1.SQL.Add('from Facturas');
            dm.Query1.SQL.Add('where emp_codigo = :emp');
            dm.Query1.SQL.Add('  and suc_codigo = :suc');
            dm.Query1.SQL.Add('  and fac_numero = :num');
            dm.Query1.SQL.Add('  and fac_forma  = :forma');
            dm.Query1.SQL.Add('  and tfa_codigo = :tfa');

            dm.Query1.Parameters.ParamByName('emp').Value   := QDevolucionEMP_CODIGO.Value;
            dm.Query1.Parameters.ParamByName('suc').Value   := QDevolucionsuc_codigo.Value;
            dm.Query1.Parameters.ParamByName('num').Value   := QDevolucionFAC_NUMERO.Value;
            dm.Query1.Parameters.ParamByName('forma').Value := QDevolucionFAC_FORMA.Value;
            dm.Query1.Parameters.ParamByName('tfa').Value   := QDevolucionTFA_CODIGO.Value;
            dm.Query1.Open;

            if dm.Query1.IsEmpty then
            begin
              ShowMessage('No se encontró la factura asociada. No se enviará la devolución a la DGII.');
              EnviarDGII := False;
            end;        }

            if not (DM.QParametrosintegracion_luganis.AsBoolean) then
              begin
                // Validar que la factura fue aceptada por la DGII
              if EnviarDGII and (not dm.Query1.FieldByName('AceptadoDGII').AsBoolean) then
              begin
                ShowMessage(
                  'La factura asociada no ha sido aceptada por la DGII. ' +
                  'No se enviará la devolución a la DGII.'
                );
                EnviarDGII := False;
              end;
            end;

            if EnviarDGII then
            begin
              eNCFFactura  := Trim(dm.Query1.FieldByName('eNCF').AsString);
            // TotalFactura normalmente = fac_total
            // Para empresas especiales = fac_total + fac_itbis (maestro)
            if EsSarita then
            begin
              TotalFactura :=
                dm.Query1.FieldByName('fac_total').AsCurrency +
                dm.Query1.FieldByName('fac_itbis').AsCurrency;
            end
            else
            begin
              TotalFactura := dm.Query1.FieldByName('fac_total').AsCurrency;
            end;


              // 2) Si la factura asociada no tiene eNCF ? NO enviar
              if eNCFFactura = '' then
              begin
                ShowMessage('La factura asociada no tiene eNCF. No se enviará la devolución a la DGII.');
                EnviarDGII := False;
              end;
            end;

            // 3) Validar motivo DGII (1,2,3) vs montos
            if EnviarDGII then
            begin
              CausaCodigo := StrToIntDef(Trim(QDevolucionmotivo_dgi.AsString), 0);

              case CausaCodigo of
                1: // Anulación total
                  begin
                    if Abs(QDevolucionDEV_TOTAL.Value - TotalFactura) > 0.01 then
                    begin
                      ShowMessage(
                        'Para la causa "1 - Anulación total", el monto de la devolución (' +
                        CurrToStr(QDevolucionDEV_TOTAL.Value) +
                        ') debe ser igual al monto de la factura (' +
                        CurrToStr(TotalFactura) + ').'
                      );
                      EnviarDGII := False;
                    end;
                  end;

                3: // Corrección montos
                  begin
                    if (QDevolucionDEV_TOTAL.Value <= 0) or
                       (QDevolucionDEV_TOTAL.Value > TotalFactura) then
                    begin
                      ShowMessage(
                        'Para la causa "3 - Corrección montos", el monto de la devolución debe ser ' +
                        'mayor que 0 y menor o igual al monto de la factura (' +
                        CurrToStr(TotalFactura) + ').'
                      );
                      EnviarDGII := False;
                    end;
                  end;

                2: // Corrección texto
                  begin
                    if Abs(QDevolucionDEV_TOTAL.Value) > 0.01 then
                    begin
                      ShowMessage(
                        'Para la causa "2 - Corrección texto", el monto de la devolución debe ser 0.00.'
                      );
                      EnviarDGII := False;
                    end;
                  end;
              else
                begin
                  ShowMessage('Motivo DGII inválido o no soportado. No se enviará la devolución.');
                  EnviarDGII := False;
                end;
              end;
            end;
            // ================= FIN VALIDACIONES NUEVAS =================

            // Si todas las validaciones pasaron, enviamos a DGII o LUGANIS
            if EnviarDGII then
            begin
              if dm.QParametrosintegracion_luganis.Value then
              begin
                // ===================== FLUJO LUGANIS =====================
                QDevolucion.Edit;

                dm.Query1.Close;
                dm.Query1.SQL.Clear;
                dm.Query1.SQL.Add('select emp_rnc');
                dm.Query1.SQL.Add('from empresas');
                dm.Query1.SQL.Add('where emp_codigo = :emp');
                dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
                dm.Query1.Open;
                QDevolucionemp_rnc.Value := dm.Query1.FieldByName('emp_rnc').AsString;

                dm.Query1.Close;
                dm.Query1.SQL.Clear;
                dm.Query1.SQL.Add('select cli_rnc');
                dm.Query1.SQL.Add('from Clientes');
                dm.Query1.SQL.Add('where cli_codigo = :sup');
                dm.Query1.SQL.Add('  and emp_codigo = :emp');
                dm.Query1.Parameters.ParamByName('sup').Value := QDevolucionCLI_CODIGO.Value;
                dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
                dm.Query1.Open;
                QDevolucioncli_rnc.Value := dm.Query1.FieldByName('cli_rnc').AsString;

                dm.Query1.Close;
                dm.Query1.SQL.Clear;
                dm.Query1.SQL.Add('select eNCF');
                dm.Query1.SQL.Add('from DEVOLUCION');
                dm.Query1.SQL.Add('where emp_codigo = :emp');
                dm.Query1.SQL.Add('  and DEV_NUMERO = :numero');
                dm.Query1.SQL.Add('  and suc_codigo = :suc');
                dm.Query1.SQL.Add('  and dev_status <> :status');
                dm.Query1.Parameters.ParamByName('emp').Value := QDevolucionEMP_CODIGO.Value;
                dm.Query1.Parameters.ParamByName('suc').Value := QDevolucionsuc_codigo.Value;
                dm.Query1.Parameters.ParamByName('numero').Value := QDevolucionDEV_NUMERO.Value;
                dm.Query1.Parameters.ParamByName('status').Value := 'ANU';
                dm.Query1.Open;
                QDevolucioneNCF.Value := dm.Query1.FieldByName('eNCF').AsString;

                Servicio := CoFacturaElectronicaService.Create;
                resultado := Servicio.EnviarDevolucionLuganis(
                  IntToStr(QDevolucionEMP_CODIGO.Value),
                  IntToStr(QDevolucionsuc_codigo.Value),
                  IntToStr(QDevolucionDEV_NUMERO.Value),
                  QDevolucionemp_rnc.Value,
                  QDevolucioneNCF.Value,
                  QDevolucioncli_rnc.Value,
                  dm.QParametrospar_luganis_baseurl.AsString,
                  dm.QParametrospar_luganis_companycode.AsString,
                  dm.QParametrospar_luganis_username.AsString,
                  dm.QParametrospar_luganis_password.AsString,
                  dm.QParametrospar_luganis_appversion.AsString,
                  dm.QParametrospar_luganis_os.AsString,
                  dm.QParametrospar_luganis_deviceid.AsString,
                  dm.QParametrospar_luganis_latitude.AsString,
                  dm.QParametrospar_luganis_longitude.AsString,
                  dm.QParametrospar_luganis_providerip.AsString,
                  False,
                  True,   // saveGeneratedTxt
                  '',     // outputFolder
                  False   // logDebug
                );
              end
              else
              begin
                // ===================== FLUJO DGII =====================
                if (not QDevolucionticket_numero.IsNull) and (Trim(QDevolucionticket_numero.AsString) <> '') then
                begin
                  QDevolucion.Edit;

                  dm.Query1.Close;
                  dm.Query1.SQL.Clear;
                  dm.Query1.SQL.Add('select emp_rnc');
                  dm.Query1.SQL.Add('from empresas');
                  dm.Query1.SQL.Add('where emp_codigo = :emp');
                  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
                  dm.Query1.Open;
                  QDevolucionemp_rnc.Value := dm.Query1.FieldByName('emp_rnc').AsString;

                  dm.Query1.Close;
                  dm.Query1.SQL.Clear;
                  dm.Query1.SQL.Add('select cli_rnc');
                  dm.Query1.SQL.Add('from Clientes');
                  dm.Query1.SQL.Add('where cli_codigo = :sup');
                  dm.Query1.SQL.Add('  and emp_codigo = :emp');
                  dm.Query1.Parameters.ParamByName('sup').Value := QDevolucionCLI_CODIGO.Value;
                  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
                  dm.Query1.Open;
                  QDevolucioncli_rnc.Value := dm.Query1.FieldByName('cli_rnc').AsString;

                  dm.Query1.Close;
                  dm.Query1.SQL.Clear;
                  dm.Query1.SQL.Add('select eNCF');
                  dm.Query1.SQL.Add('from DEVOLUCION');
                  dm.Query1.SQL.Add('where emp_codigo = :emp');
                  dm.Query1.SQL.Add('  and DEV_NUMERO = :numero');
                  dm.Query1.SQL.Add('  and suc_codigo = :suc');
                  dm.Query1.SQL.Add('  and dev_status <> :status');
                  dm.Query1.Parameters.ParamByName('emp').Value := QDevolucionEMP_CODIGO.Value;
                  dm.Query1.Parameters.ParamByName('suc').Value := QDevolucionsuc_codigo.Value;
                  dm.Query1.Parameters.ParamByName('numero').Value := QDevolucionDEV_NUMERO.Value;
                  dm.Query1.Parameters.ParamByName('status').Value := 'ANU';
                  dm.Query1.Open;
                  QDevolucioneNCF.Value := dm.Query1.FieldByName('eNCF').AsString;

                  Servicio := CoFacturaElectronicaService.Create;
                  resultado := Servicio.EnviarDevolucionPOS(
                    IntToStr(QDevolucionEMP_CODIGO.Value),
                    IntToStr(QDevolucionsuc_codigo.Value),
                    '',
                    IntToStr(QDevolucionDEV_NUMERO.Value),
                    QDevolucionemp_rnc.Value,
                    '',
                    QDevolucioncli_rnc.Value,
                    '',
                    '',
                    '34'
                  );
                end
                else
                begin
                  QDevolucion.Edit;

                  dm.Query1.Close;
                  dm.Query1.SQL.Clear;
                  dm.Query1.SQL.Add('select emp_rnc');
                  dm.Query1.SQL.Add('from empresas');
                  dm.Query1.SQL.Add('where emp_codigo = :emp');
                  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
                  dm.Query1.Open;
                  QDevolucionemp_rnc.Value := dm.Query1.FieldByName('emp_rnc').AsString;

                  dm.Query1.Close;
                  dm.Query1.SQL.Clear;
                  dm.Query1.SQL.Add('select cli_rnc');
                  dm.Query1.SQL.Add('from Clientes');
                  dm.Query1.SQL.Add('where cli_codigo = :sup');
                  dm.Query1.SQL.Add('  and emp_codigo = :emp');
                  dm.Query1.Parameters.ParamByName('sup').Value := QDevolucionCLI_CODIGO.Value;
                  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
                  dm.Query1.Open;
                  QDevolucioncli_rnc.Value := dm.Query1.FieldByName('cli_rnc').AsString;

                  dm.Query1.Close;
                  dm.Query1.SQL.Clear;
                  dm.Query1.SQL.Add('select eNCF');
                  dm.Query1.SQL.Add('from DEVOLUCION');
                  dm.Query1.SQL.Add('where emp_codigo = :emp');
                  dm.Query1.SQL.Add('  and DEV_NUMERO = :numero');
                  dm.Query1.SQL.Add('  and suc_codigo = :suc');
                  dm.Query1.SQL.Add('  and dev_status <> :status');
                  dm.Query1.Parameters.ParamByName('emp').Value := QDevolucionEMP_CODIGO.Value;
                  dm.Query1.Parameters.ParamByName('suc').Value := QDevolucionsuc_codigo.Value;
                  dm.Query1.Parameters.ParamByName('numero').Value := QDevolucionDEV_NUMERO.Value;
                  dm.Query1.Parameters.ParamByName('status').Value := 'ANU';
                  dm.Query1.Open;
                  QDevolucioneNCF.Value := dm.Query1.FieldByName('eNCF').AsString;

                  Servicio := CoFacturaElectronicaService.Create;
                  resultado := Servicio.EnviarDevolucion(
                    IntToStr(QDevolucionEMP_CODIGO.Value),
                    IntToStr(QDevolucionsuc_codigo.Value),
                    '',
                    IntToStr(QDevolucionDEV_NUMERO.Value),
                    QDevolucionemp_rnc.Value,
                    '',
                    QDevolucioncli_rnc.Value,
                    '',
                    '',
                    '34'
                  );
                end;
              end;
            end
            else
            begin
              ShowMessage('La devolución se grabó correctamente, pero NO se envió a la DGII por las validaciones.');
            end;
          end;
          
        if messagedlg('SE HA GENERADO LA DEVOLUCION NUMERO '+inttostr(QDevolucionDEV_NUMERO.value)+
                      ', DESEA IMPRIMIR ESTA DEVOLUCION?',mtconfirmation,[mbyes,mbno],0) = mryes then
        begin
          if dm.QParametrospar_fac_preimpresa.Value = 'False' then
          begin
            if FormatoImp = 2 then
            begin
              application.createform(tRDevolucion, RDevolucion);
              RDevolucion.QDevolucion.Parameters.ParamByName('numero').Value := QDevolucionDEV_NUMERO.value;
              RDevolucion.QDevolucion.Parameters.ParamByName('suc').Value    := QDevolucionsuc_codigo.Value;
              RDevolucion.QDevolucion.open;
              RDevolucion.QDetalle.open;
              {if desem > 0 then
                 RDevolucion.lbComentario.caption := 'SE ENTREGO EL EFECTIVO'
              else
                 RDevolucion.lbComentario.caption := ' ';}

              RDevolucion.PrinterSetup;
              RDevolucion.print;
              RDevolucion.Destroy;
            end
            else if FormatoImp = 3 then
            begin
              Imp40Columnas;
            end;
          end
          else
          begin
            application.createform(tRDevolucionPreImpresa, RDevolucionPreImpresa);
            RDevolucionPreImpresa.QDevolucion.Parameters.ParamByName('numero').Value := QDevolucionDEV_NUMERO.value;
            RDevolucionPreImpresa.QDevolucion.Parameters.ParamByName('suc').Value    := QDevolucionsuc_codigo.Value;
            RDevolucionPreImpresa.QDevolucion.open;
            RDevolucionPreImpresa.QDetalle.open;

            RDevolucionPreImpresa.QRBB.PrinterSetup;
            RDevolucionPreImpresa.QRBB.print;
            RDevolucionPreImpresa.Release;
          end;
        end;

        QDevolucion.Close;
        QDevolucion.Parameters.parambyname('numero').Value := -1;
        QDevolucion.Parameters.parambyname('suc').Value := -1;
        QDevolucion.open;
        QDevolucion.insert;
        PageControl1.ActivePageIndex := 0;
        edTipo.setfocus;

      end;
    end
    else
      Grid.setfocus;
  end;
end;

procedure TfrmDevolucion.QDevolucionBeforePost(DataSet: TDataSet);
begin
  if QDevolucion.State = dsinsert then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select isnull(max(dev_numero),0) as maximo');
    dm.Query1.sql.add('from devolucion');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and suc_codigo = :suc');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('suc').Value := QDevolucionsuc_codigo.Value;
    dm.Query1.open;
    QDevolucionDEV_NUMERO.value := dm.Query1.fieldbyname('maximo').asinteger + 1;
  end;

  if rgtipo.ItemIndex = 0 then
  begin
    QDevolucionticket_caja.Clear;
    QDevolucionticket_cajero.Clear;
    QDevolucionticket_numero.Clear;
    QDevolucionticket_fecha.Clear;
  end
  else
  begin
    QDevolucionTFA_CODIGO.Clear;
    QDevolucionFAC_FORMA.Clear;
    QDevolucionFAC_NUMERO.Clear;
  end;

   QDevolucionDEV_HORA.Value := TimeToStr(Time);
  
end;

procedure TfrmDevolucion.btLimpiarClick(Sender: TObject);
begin
  if messagedlg('DESEA CANCELAR LA DEVOLUCION?',mtconfirmation, [mbyes,mbno],0) = mryes then
  begin
    QDevolucion.Close;
    QDevolucion.Parameters.parambyname('numero').Value := -1;
    QDevolucion.Parameters.parambyname('suc').Value := -1;
    QDevolucion.open;
    QDevolucion.insert;
    PageControl1.ActivePageIndex := 0;
    edTipo.setfocus;
  end
  else
    Grid.setfocus;
end;

procedure TfrmDevolucion.FormCreate(Sender: TObject);
var
  a : integer;
begin
  FormatoImp := dm.QParametrosPAR_FORMATODEV.value;

  for a := 0 to (Sender as TForm).ComponentCount -1 DO
  begin
    if Components[a].ClassType = tdbedit then
    begin
      (Components[a] as tdbedit).OnEnter := frmMain.Entra;
      (Components[a] as tdbedit).OnExit := frmMain.sale;
    end;
  end;

  if dm.QParametrosPAR_FACESCALA.Value <> 'True' then
  begin
    Grid.Columns[9].Destroy;
    Grid.Columns[2].Width := Grid.Columns[2].Width + 15;
  end;

  if dm.QParametrosPAR_FACMEDIDA.Value <> 'True' then
  begin
    Grid.Columns[8].Destroy;
    Grid.Columns[2].Width := Grid.Columns[2].Width + 15;
  end;

  if dm.QParametrospar_visualiza_selectivo.Value <> 'True' then
  begin
    Grid.Columns[6].Destroy;
    Grid.Columns[5].Destroy;
    Grid.Columns[2].Width := Grid.Columns[2].Width + 110;
  end;

  if dm.QParametrospar_fac_oferta.Value <> 'True' then
  begin
    Grid.Columns[2].Width := Grid.Columns[2].Width + 15;
    Grid.Columns[1].Destroy;
  end;

  dm.getParametrosPrinterFiscal;

  vItbisPorLinea := TStringList.Create;
  vItbisPorLinea.Sorted := False;
  vItbisPorLinea.Duplicates := dupIgnore;
end;

procedure TfrmDevolucion.rbFormaClick(Sender: TObject);
begin
  edTipo.SetFocus;
end;

procedure TfrmDevolucion.Imp40Columnas;
var
  s : array [0..20] of char;
  arch, puertopeq : textfile;
  puerto, NCF, NCFMODIFICA : string;
begin
  if FileExists('puerto.txt') then
  begin
    assignfile(puertopeq, 'puerto.txt');
    reset(puertopeq);
    readln(puertopeq, puerto);
  end
  else
    puerto := 'PRN';

  closefile(puertopeq);
    
  Application.createform(tRDevolucion, RDevolucion);

  AssignFile(arch, '.\imp.bat');
  rewrite(arch);
  writeln(arch, 'type .\t.txt > '+puerto);
  closefile(arch);

  with dm.adoMultiUso do begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT ncf_fijo+replicate(''0'',8-len(ncf_secuencia))+cast(ncf_secuencia as varchar) as NCF,');
  SQL.Add('NCF as NCF_Modifica');
  SQL.Add('FROM DEVOLUCION');
  SQL.Add('WHERE EMP_CODIGO = '+QDevolucionEMP_CODIGO.Text+' AND SUC_CODIGO = '+QDevolucionsuc_codigo.Text+' AND DEV_NUMERO = '+QDevolucionDEV_NUMERO.Text);
  Open;
  if NOT IsEmpty THEN BEGIN
  NCF         := FIELDBYNAME('NCF').Text;
  NCFMODIFICA := FIELDBYNAME('NCF_Modifica').Text;
  Close;
  end;
  end;

  AssignFile(arch, '.\t.txt');
  rewrite(arch);
  writeln(arch, dm.Centro(trim(dm.QEmpresasEMP_NOMBRE.value)));
  writeln(arch, dm.Centro(trim(DM.QEmpresasEMP_DIRECCION.value)));
  writeln(arch, dm.Centro(trim(DM.QEmpresasEMP_LOCALIDAD.value)));
  writeln(arch, dm.Centro('Telefono : '+trim(dm.QEmpresasEMP_TELEFONO.value)));
  writeln(arch, dm.Centro('RNC: '+dm.QEmpresasEMP_RNC.value));
  writeln(arch, ' ');
  writeln(arch, dm.Centro('D E V O L U C I O N'));
  writeln(arch, ' ');
  writeln(arch, 'Numero  : '+inttostr(QDevolucionDEV_NUMERO.value));
  writeln(arch, 'Cliente : '+tCliente.text);
  writeln(arch, 'Fecha   : '+DateToStr(QDevolucionDEV_FECHA.Value));
  writeln(arch, ' ');
  if rgtipo.ItemIndex = 0 then
  writeln(arch, 'No.Fact.: '+inttostr(QDevolucionFAC_NUMERO.value)) ELSE
  BEGIN
  writeln(arch, 'No.Ticke: '+inttostr(QDevolucionticket_numero.value));
  writeln(arch, 'Fecha Ti: '+FormatDateTime('',QDevolucionticket_fecha.Value));
  end;
  writeln(arch, 'NCF     : '+NCF);
  writeln(arch, 'NCF Mod.: '+NCFMODIFICA);
  writeln(arch, ' ');
  writeln(arch, 'MONTO   : '+Format('%n',[QdevolucionDEV_TOTAL.value]));
  //+chr(27)+chr(52)+Format('%n',[QdevolucionDEV_TOTAL.value])+chr(27)+chr(53));
  writeln(arch, '----------------------------------------');
  writeln(arch, 'Cant. Descripcion del Producto');
  writeln(arch, '----------------------------------------');
  QDetalle.DisableControls;
  QDetalle.First;
  while not QDetalle.Eof do
  begin
    if QDetalleDEV_CANTIDAD.Value > 0 then
    begin
      s := '';
      fillchar(S, 5-length(floattostr(QDetalleDEV_CANTIDAD.value)),' ');
      writeln(arch, floattostr(QDetalleDEV_CANTIDAD.value)+s+
              copy(trim(QDetallePRO_NOMBRE.value),1,32));
    end;
    QDetalle.Next;
  end;
  QDetalle.EnableControls;
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, dm.Centro('_____________________'));
  writeln(arch, dm.Centro('Realizado por'));
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, dm.Centro('_____________________'));
  writeln(arch, dm.Centro('Autorizado por'));
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  CloseFile(arch);
  winexec('imp.bat',0);
  RDevolucion.Destroy;
end;

procedure TfrmDevolucion.SpeedButton1Click(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Query.clear;
  Search.Query.add('select usu_nombre, usu_codigo');
  Search.Query.add('from usuarios');
  Search.ResultField := 'usu_Codigo';
  Search.Title := 'Usuarios';
  if Search.execute then
  begin
    edCajero.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select usu_nombre from usuarios');
    dm.Query1.sql.add('where usu_codigo = :cod');
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edCajero.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('USUARIO NO EXISTE',mterror,[mbok],0)
    else
    begin
      tusuario.text := dm.Query1.fieldbyname('usu_nombre').asstring;
      QDevolucionticket_cajero.Value := StrToInt(edCajero.Text);
    end;
    edCajero.setfocus;
  end;
end;

procedure TfrmDevolucion.edCajeroChange(Sender: TObject);
begin
  if Trim(edCajero.Text) = '' then tusuario.Text := '';
end;

procedure TfrmDevolucion.edCajeroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edCajero.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.SQL.clear;
      dm.Query1.sql.add('select usu_nombre from usuarios');
      dm.Query1.sql.add('where usu_codigo = :cod');
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edCajero.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
        messagedlg('USUARIO NO EXISTE',mterror,[mbok],0)
      else
      begin
        tusuario.text := dm.Query1.fieldbyname('usu_nombre').asstring;
        QDevolucionticket_cajero.Value := StrToInt(edCajero.Text);
      end;
    end;
  end;
end;

procedure TfrmDevolucion.BuscaTicket;
var
  a, caj, tik, usu : integer;
  existe : boolean;
begin
  if rgtipo.ItemIndex = 1 then
  begin
    if (not QDevolucionticket_cajero.IsNull) and
    (not QDevolucionticket_caja.IsNull) and
    (not QDevolucionticket_numero.IsNull) and
    (not QDevolucionticket_fecha.IsNull) then
    begin
      existe := true;
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select nombre, status, fecha, total, ncf_fijo, ncf_secuencia, caja, ticket, usu_codigo');
      dm.Query1.sql.add('from montos_ticket');
      dm.Query1.sql.add('where fecha = convert(datetime, :fec, 105)');
      dm.Query1.sql.add('and caja = :caj');
      dm.Query1.sql.add('and usu_codigo = :usu');
      dm.Query1.sql.add('and ticket = :tik');
      dm.Query1.Parameters.parambyname('fec').DataType := ftDate;
      dm.Query1.Parameters.parambyname('fec').Value    := QDevolucionticket_fecha.Value;
      dm.Query1.Parameters.parambyname('caj').Value    := QDevolucionticket_caja.Value;
      dm.Query1.Parameters.parambyname('usu').Value    := QDevolucionticket_cajero.Value;
      dm.Query1.Parameters.parambyname('tik').Value    := QDevolucionticket_numero.Value;
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
        existe := false
      else
      begin
        caj := dm.Query1.FieldbyName('caja').AsInteger;
        tik := dm.Query1.FieldbyName('ticket').AsInteger;
        usu := dm.Query1.FieldbyName('usu_codigo').AsInteger;
        existe := true;
      end;

      if not existe then
      begin
        dm.Query1.close;
        dm.Query1.sql.clear;
        dm.Query1.sql.add('select nombre, status, fecha, total, ncf_fijo, ncf_secuencia, caja, ticket, usu_codigo');
        dm.Query1.sql.add('from montos_ticket');
        dm.Query1.sql.add('where fecha = convert(datetime, :fec, 105)');
        dm.Query1.sql.add('and caja_original = :caj');
        dm.Query1.sql.add('and usuario_original = :usu');
        dm.Query1.sql.add('and ticket_original = :tik');
        dm.Query1.Parameters.parambyname('fec').DataType := ftDate;
        dm.Query1.Parameters.parambyname('fec').Value    := QDevolucionticket_fecha.Value;
        dm.Query1.Parameters.parambyname('caj').Value    := QDevolucionticket_caja.Value;
        dm.Query1.Parameters.parambyname('usu').Value    := QDevolucionticket_cajero.Value;
        dm.Query1.Parameters.parambyname('tik').Value    := QDevolucionticket_numero.Value;
        dm.Query1.open;
        if dm.Query1.recordcount = 0 then
          existe := false
        else
        begin
          caj := dm.Query1.FieldbyName('caja').AsInteger;
          tik := dm.Query1.FieldbyName('ticket').AsInteger;
          usu := dm.Query1.FieldbyName('usu_codigo').AsInteger;
          existe := true;
        end;
      end;

      if not existe then
      begin
        showmessage('ESTE TICKET NO EXISTE');
        QDevolucionticket_numero.Clear;
        abort;
      end
      else if dm.Query1.fieldbyname('status').asstring = 'ANU' then
      begin
        showmessage('ESTE TICKET ESTA ANULADO');
        QDevolucionticket_numero.Clear;
        abort;
      end
      else if DaysBetween(dm.Query1.fieldbyname('fecha').AsDateTime, Date) >
      dm.QParametrosPAR_DEVDIAS.Value then
      begin
        MessageDlg('ESTE TICKET NO ACEPTA DEVOLUCIONES',mtError,[mbok],0);
        QDevolucionticket_numero.Clear;
        abort;
      end
      else
      begin
        ConItbis  := True;
        QDevolucionDEV_CONITBIS.Value := 'S';
        //Almacen   := 1;
        tCliente.text := dm.Query1.fieldbyname('nombre').asstring;
        QdevolucionDEV_NOMBRE.Value := dm.Query1.fieldbyname('nombre').asstring;
        vl_status_reg := dm.Query1.fieldbyname('status').asstring;

        Query1.close;
        Query1.sql.clear;
        Query1.sql.add('select cliente, empresa from formas_pago_ticket');
        Query1.sql.add('where fecha = convert(datetime, :fec, 105)');
        Query1.sql.add('and caja = :caj');
        Query1.sql.add('and usu_codigo = :usu');
        Query1.sql.add('and ticket = :tik');
        Query1.sql.add('and forma = '+QuotedStr('CRE'));
        Query1.Parameters.parambyname('fec').DataType := ftDate;
        Query1.Parameters.parambyname('fec').Value    := QDevolucionticket_fecha.Value;
        Query1.Parameters.parambyname('caj').Value    := caj;
        Query1.Parameters.parambyname('usu').Value    := usu;
        Query1.Parameters.parambyname('tik').Value    := tik;
        Query1.open;

        QDevoluciondev_fecha_factura.Value := dm.Query1.fieldbyname('fecha').Value;
        QDevolucionVEN_CODIGO.Clear;
        QDevolucionCLI_CODIGO.Clear;

        ACTBalance := False;

        if Query1.RecordCount > 0 then
          if not Query1.FieldbyName('cliente').IsNull then
          begin
            QDevolucionCLI_CODIGO.Value := Query1.FieldbyName('cliente').Value;
            ACTBalance := True;
          end;

        if dm.Query1.fieldbyname('ncf_secuencia').AsFloat > 0 then
          QDevolucionNCF.Value := dm.Query1.fieldbyname('ncf_fijo').AsString +
                                  FormatFloat('00000000',dm.Query1.fieldbyname('ncf_secuencia').AsFloat)
        else
          QDevolucionNCF.Clear;

        //Buscando detalle del ticket
        dm.Query1.close;
        dm.Query1.sql.clear;
        dm.Query1.sql.add('select ci.alm_codigo, t.secuencia, t.producto, t.descripcion, t.costo, t.precio, t.cantidad, p.pro_itbis, ');
        dm.Query1.sql.add('p.pro_roriginal, p.pro_rfabric, t.devuelta, t.itbis, t.descuento,');
        dm.Query1.SQL.Add('(t.Descuento/100)*(t.cantidad*(t.precio/(1+(t.itbis/100)))) monto_desc');
        dm.Query1.SQL.Add(',case when isnull(t.descuento,0)>0 then (((t.precio*t.cantidad)/(1+(t.itbis/100)))-(t.Descuento/100)*(t.cantidad*(t.precio/(1+(t.itbis/100)))))*(itbis/100)');
        dm.Query1.SQL.Add('else (t.cantidad*(t.precio/(1+(t.itbis/100)))*(t.itbis/100)) end monto_itbis');
        dm.Query1.sql.add('from ticket t, productos p, cajas_ip ci ');
        dm.Query1.sql.add('where t.caja= ci.caja and p.emp_codigo = '+IntToStr(dm.QParametrosPAR_INVEMPRESA.Value));
        dm.Query1.sql.add('and p.pro_codigo = t.producto');
        dm.Query1.sql.add('and t.fecha = convert(datetime, :fec, 105)');
        dm.Query1.sql.add('and t.caja = :caj');
        dm.Query1.sql.add('and t.usu_codigo = :usu');
        dm.Query1.sql.add('and t.ticket = :tik');
        dm.Query1.Parameters.parambyname('fec').DataType := ftDate;
        dm.Query1.Parameters.parambyname('fec').Value    := QDevolucionticket_fecha.Value;
        dm.Query1.Parameters.parambyname('caj').Value    := caj;
        dm.Query1.Parameters.parambyname('usu').Value    := usu;
        dm.Query1.Parameters.parambyname('tik').Value    := tik;
        dm.Query1.open;
        dm.Query1.disablecontrols;

        QDetalle.close;
        QDetalle.open;
        a := 0;
        Insertar := True;
        while not dm.Query1.eof do
        begin
          a := a + 1;
          QDetalle.append;
          QDetalleDET_SECUENCIA.value     := dm.Query1.fieldbyname('secuencia').asinteger;
          QDetalleDET_ESCALA.Value        := 'False';
          QDetalleDET_COMISION.Value      := 0;
          QDetallePRO_SERVICIO.Value      := 'False';
          QDetalleEMP_CODIGO.value        := dm.vp_cia;
          QDetallePRO_CODIGO.value        := dm.Query1.fieldbyname('producto').asinteger;
          QDetalleDEV_COSTO.value         := dm.Query1.fieldbyname('costo').asfloat;
          QDetalleDEV_PRECIO.value        := dm.Query1.fieldbyname('precio').AsFloat;
          QDetalleDEV_TOPECANTIDAD.value  := dm.Query1.fieldbyname('cantidad').asfloat -
                                             dm.Query1.fieldbyname('devuelta').asfloat;
          QDetalleDEV_CONITBIS.value      := dm.Query1.fieldbyname('pro_itbis').asstring;
          QDetalleDEV_DESCUENTO.value     := dm.Query1.fieldbyname('descuento').asfloat/
                                             dm.Query1.fieldbyname('cantidad').asfloat;
          QDetalleDEV_ITBIS.Value         := dm.Query1.fieldbyname('itbis').asfloat;

          if QDetalleDEV_ITBIS.Value > 0 then
            QDetalleDEV_CONITBIS.Value := 'S'
          else
            QDetalleDEV_CONITBIS.Value := 'N';

          {if dm.Query1.fieldbyname('pro_itbis').asstring = 'S' then
          QDetalleDEV_ITBIS.value       := DM.Query1.fieldbyname('monto_itbis').AsFloat else
          QDetalleDEV_ITBIS.value       := 0;
          {if dm.Query1.fieldbyname('pro_itbis').asstring = 'S' then
            QDetalleDEV_ITBIS.value       := ((dm.Query1.fieldbyname('precio').asfloat *
                                             dm.Query1.fieldbyname('cantidad').asfloat) *
                                             QDetalleDEV_ITBIS.Value)/100;}

          QDetalleDEV_CANTFACTURADA.value := dm.Query1.fieldbyname('cantidad').asfloat;
          QDetallePRO_NOMBRE.value        := dm.Query1.fieldbyname('descripcion').asstring;
          QDetallePRO_RORIGINAL.value     := dm.Query1.fieldbyname('pro_roriginal').asstring;
          QDetallePRO_RFABRIC.value       := dm.Query1.fieldbyname('pro_rfabric').asstring;
          QDetalleDET_MEDIDA.Value        := 'Und';
          QDetalledet_cant_oferta.Value   := 0;
          QDetalledet_selectivo_ad.Value  := 0;
          QDetalledet_selectivo_con.Value := 0;
          QDetallealm_codigo.Value        := DM.Query1.fieldbyname('alm_codigo').Value;
          QDetalle.post;
          dm.Query1.next;
        end;
        dm.Query1.enablecontrols;
        QDetalle.first;
        Insertar := False;
      end;
    end;
  end;
end;

procedure TfrmDevolucion.QDevolucionticket_cajaChange(Sender: TField);
begin
  if not QDevolucionticket_caja.IsNull then BuscaTicket;
end;

procedure TfrmDevolucion.QDevolucionticket_cajeroChange(Sender: TField);
begin
  if not QDevolucionticket_cajero.IsNull then BuscaTicket;
end;

procedure TfrmDevolucion.QDevolucionticket_numeroChange(Sender: TField);
begin
  if not QDevolucionticket_numero.IsNull then BuscaTicket;
end;

procedure TfrmDevolucion.QDevolucionticket_fechaChange(Sender: TField);
begin
  if not QDevolucionticket_fecha.IsNull then BuscaTicket;
end;

procedure TfrmDevolucion.rgtipoClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := rgtipo.ItemIndex;
end;

procedure TfrmDevolucion.btmotivoClick(Sender: TObject);
begin
  search.Query.clear;
  search.AliasFields.clear;
  search.Query.add('select mot_nombre, mot_codigo');
  search.Query.add('from Motivo_Devolucion');
  search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  search.ResultField := 'mot_codigo';
  search.Title := 'Motivos de Devolucion';
  if search.execute then
  begin
    QDevolucionmot_codigo.Value := StrToInt(search.valuefield);
    DBEdit13.SetFocus;
  end;
end;

procedure TfrmDevolucion.QDevolucionmot_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QDevolucionmot_codigo.IsNull then
  begin
    Text := IntToStr(QDevolucionmot_codigo.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select mot_nombre from Motivo_Devolucion');
    dm.Query1.SQL.Add('where emp_codigo = :emp and mot_codigo = :cod');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cod').Value := QDevolucionmot_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tmotivo.Text := dm.Query1.FieldByName('mot_nombre').AsString
    else
      tmotivo.Text := '';
  end;
end;

procedure TfrmDevolucion.ImprimeTicketFiscal(ImpresoraFiscal: TImpresora);
begin
  case ImpresoraFiscal.IDPrinter of
    1 : {EPSON (TMU-220)} ImpTicketDevFiscalEpson(ImpresoraFiscal);
    2 : {CITIZEN ( CT-S310 )}  ImpTicketDevFiscalVmax(ImpresoraFiscal);
    3 : {CITIZEN (GSX-190)}    ImpTicketDevFiscalVmax(ImpresoraFiscal);
    4 : {STAR (TSP650FP)}      ImpTicketDevFiscalVmax(ImpresoraFiscal);
    5 : {Bixolon SRP-350iiHG} ImpTicketDevFiscalBixolon(ImpresoraFiscal);
  end;

end;

procedure TfrmDevolucion.ImpTicketDevFiscalEpson(Impresora: TImpresora);
var
  s : array [0..20] of char;
  arch, puertopeq : textfile;
  puerto, ncf_modifica, ticket_nombre, ticket_rnc : string;
  err, tiponcf: integer;
  DriverFiscal1 : TDriverFiscal;
  recargo, descuento,descGral : double;
  dgeneral, rgeneral : boolean;
  copias:byte;

  function getPrinterEpsonError():boolean;
  begin
    result :=false;
    err := DriverFiscal1.IF_ERROR1(0);  //verifica Mecanismo
    StatusFiscal:=dm.IntToBinRec(err,16);    //207

    err := DriverFiscal1.IF_ERROR2(0);  //Verifica Controlador Fiscal
    Impresora.StatusMecanismoFiscal :=dm.IntToBinRec(err,16);

    if ((Impresora.StatusMecanismoFiscal[2] = '1') or (Impresora.StatusMecanismoFiscal[11] = '1') or (Impresora.StatusMecanismoFiscal[12] = '1')) then
      begin
        Application.MessageBox(pchar('Error en mecanismo de impresión'+#13+#12+'Verifique papel'),'Error',MB_OK+MB_ICONERROR);
        result :=true;
      end;

    if StatusFiscal[5] = '1' then
      begin
        Application.MessageBox('Se requiere un Cierre Z','Error',MB_OK+MB_ICONERROR);
        result :=true;
      end;
  end;

  procedure re_ImprimirDevEpson();
  begin

  end;
  var xcopias,x : byte;
begin
   /// ojo    devolucion por item, no esta saliendo.

  //Copias :=aCopia;
  xCopias :=Impresora.Copia;
  copias := 0;

  if ((Impresora.Copia > 0 ) and ( Impresora.SustituirCopia = true)) then
    copias := 0
  else
    copias := Impresora.Copia;



  Puerto := PuertoSerial[Impresora.Puerto -1];
  DriverFiscal1 := TDriverFiscal.Create(Self);
  DriverFiscal1.SerialNumber := '27-0163848-435';
  try
    err := DriverFiscal1.IF_OPEN(puerto, Impresora.Velocidad);
    if (err <> 0 ) then
      begin
        ShowMessage('Error : No hay comunicacion con el printer'+#13+#10+
        'Impresion cancelada');
        exit;
      end;
    ///if not getPrinterEpsonError() then exit;
    if rgtipo.ItemIndex = 1 then
      begin //--[0]--
        dm.Query1.close;
        dm.Query1.sql.clear;
        dm.Query1.sql.add('select ncf_tipo, nombre, rnc');
        dm.Query1.sql.add('from montos_ticket');
        dm.Query1.sql.add('where fecha = convert(datetime, :fec, 105)');
        dm.Query1.sql.add('and caja = :caj');
        dm.Query1.sql.add('and usu_codigo = :usu');
        dm.Query1.sql.add('and ticket = :tik');
        dm.Query1.Parameters.parambyname('fec').DataType := ftDate;
        dm.Query1.Parameters.parambyname('fec').Value    := QDevolucionticket_fecha.Value;
        dm.Query1.Parameters.parambyname('caj').Value    := QDevolucionticket_caja.Value;
        dm.Query1.Parameters.parambyname('usu').Value    := QDevolucionticket_cajero.Value;
        dm.Query1.Parameters.parambyname('tik').Value    := QDevolucionticket_numero.Value;
        dm.Query1.open;
        ticket_nombre := dm.Query1.FieldByName('nombre').AsString;
        ticket_rnc := dm.Query1.FieldByName('rnc').AsString;
        tiponcf := dm.Query1.FieldByName('ncf_tipo').AsInteger;

        if dm.Query1.FieldByName('ncf_tipo').AsInteger = 1 then
        begin
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('select ncf_fijo, ncf_secuencia from devolucion');
          dm.Query1.SQL.Add('where emp_codigo = :emp and dev_numero = :dev');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
          dm.Query1.Parameters.ParamByName('dev').Value := QDevolucionDEV_NUMERO.Value;
          dm.Query1.Open;

          ncf_modifica := dm.Query1.FieldByName('NCF_Fijo').AsString+formatfloat('00000000',dm.Query1.FieldByName('NCF_Secuencia').AsFloat);
          err := DriverFiscal1.IF_WRITE('@TicketOpen|C|0001|'+FormatFloat('000', QDevolucionticket_caja.AsFloat)+'|'+
          ncf_modifica+'|||'+QDevolucionNCF.AsString+'||'+IntToStr(Copias));
        end
        else if dm.Query1.FieldByName('ncf_tipo').AsInteger < 4 then
        begin
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('select ncf_fijo, ncf_secuencia from devolucion');
          dm.Query1.SQL.Add('where emp_codigo = :emp and dev_numero = :dev');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
          dm.Query1.Parameters.ParamByName('dev').Value := QDevolucionDEV_NUMERO.Value;
          dm.Query1.Open;
          ncf_modifica := dm.Query1.FieldByName('NCF_Fijo').AsString+formatfloat('00000000',dm.Query1.FieldByName('NCF_Secuencia').AsFloat);

          ///err := DriverFiscal1.IF_OPEN(puerto, 9600);
          err := DriverFiscal1.IF_WRITE('@TicketOpen|D|0001|'+FormatFloat('000', QDevolucionticket_caja.AsFloat)+'|'+
          ncf_modifica+'|'+ticket_nombre+'|'+ticket_rnc+'|'+QDevolucionNCF.AsString+'||'+IntToStr(Copias));
        end
        else if dm.Query1.FieldByName('ncf_tipo').AsInteger = 4 then
        begin
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('select ncf_fijo, ncf_secuencia from devolucion');
          dm.Query1.SQL.Add('where emp_codigo = :emp and dev_numero = :dev');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
          dm.Query1.Parameters.ParamByName('dev').Value := QDevolucionDEV_NUMERO.Value;
          dm.Query1.Open;
          ncf_modifica := dm.Query1.FieldByName('NCF_Fijo').AsString+formatfloat('00000000',dm.Query1.FieldByName('NCF_Secuencia').AsFloat);

          //err := DriverFiscal1.IF_OPEN(puerto, 9600);
          err := DriverFiscal1.IF_WRITE('@TicketOpen|H|0001|'+FormatFloat('000', QDevolucionticket_caja.AsFloat)+'|'+
          ncf_modifica+'|'+ticket_nombre+'|'+ticket_rnc+'|'+QDevolucionNCF.AsString+'||'+IntToStr(Copias));
        end;
      end //--[0]--
    else
      begin //--[1]--
        dm.Query1.close;
        dm.Query1.sql.clear;
        dm.Query1.sql.add('select tip_codigo, fac_nombre, fac_rnc');
        dm.Query1.sql.add('from facturas');
        dm.Query1.sql.add('where emp_codigo = :emp');
        dm.Query1.sql.add('and tfa_codigo = :tfa');
        dm.Query1.sql.add('and fac_numero = :fac');
        dm.Query1.Parameters.parambyname('emp').Value    := dm.QEmpresasEMP_CODIGO.Value;
        dm.Query1.Parameters.parambyname('tfa').Value    := StrToInt(edTipo.Text);
        dm.Query1.Parameters.parambyname('fac').Value    := QDevolucionFAC_NUMERO.Value;
        dm.Query1.open;
        ticket_nombre := dm.Query1.FieldByName('fac_nombre').AsString;
        ticket_rnc := dm.Query1.FieldByName('fac_rnc').AsString;

        if dm.Query1.FieldByName('tip_codigo').AsInteger = 1 then
        begin
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('select ncf_fijo, ncf_secuencia from devolucion');
          dm.Query1.SQL.Add('where emp_codigo = :emp and dev_numero = :dev');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
          dm.Query1.Parameters.ParamByName('dev').Value := QDevolucionDEV_NUMERO.Value;
          dm.Query1.Open;

          ncf_modifica := dm.Query1.FieldByName('NCF_Fijo').AsString+formatfloat('00000000',dm.Query1.FieldByName('NCF_Secuencia').AsFloat);

          //err := DriverFiscal1.IF_OPEN(puerto, 9600);
          err := DriverFiscal1.IF_WRITE('@TicketOpen|C|0001|'+FormatFloat('000', QDevolucionticket_caja.AsFloat)+'|'+
          ncf_modifica+'|||'+QDevolucionNCF.AsString+'||'+IntToStr(Copias));
        end
        else
        begin
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('select ncf_fijo, ncf_secuencia from devolucion');
          dm.Query1.SQL.Add('where emp_codigo = :emp and dev_numero = :dev');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
          dm.Query1.Parameters.ParamByName('dev').Value := QDevolucionDEV_NUMERO.Value;
          dm.Query1.Open;
          ncf_modifica := dm.Query1.FieldByName('NCF_Fijo').AsString+formatfloat('00000000',dm.Query1.FieldByName('NCF_Secuencia').AsFloat);

          //err := DriverFiscal1.IF_OPEN(puerto, 9600);
          err := DriverFiscal1.IF_WRITE('@TicketOpen|D|0001|'+FormatFloat('000', QDevolucionticket_caja.AsFloat)+'|'+
          ncf_modifica+'|'+ticket_nombre+'|'+ticket_rnc+'|'+QDevolucionNCF.AsString+'||'+IntToStr(Copias));
        end;
      end; //--[1]--

      //Verificando Descuento y Recargdo General
      dgeneral := true;
      rgeneral := true;

      QDetalle.DisableControls;
      QDetalle.First;
      while not QDetalle.eof do
      begin
        if QDetalledev_Descuento.Value = 0 then dgeneral := false;
        if QDetalleRecargo.Value = 0 then rgeneral := false;

        QDetalle.next;
      end;
      QDetalle.First;
      QDetalle.EnableControls;

      recargo := 0;
      descuento := 0;
      QDetalle.DisableControls;
      QDetalle.First;
      while not QDetalle.Eof do
      begin
        recargo := recargo + QDetallerecargo.Value;
        descuento := descuento + QDetalleTotalDescuento.Value;
        if QDetalleDEV_CANTIDAD.Value > 0 then
        begin
          s := '';
          fillchar(S, 5-length(floattostr(QDetalleDEV_CANTIDAD.value)),' ');

          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('select pro_montoitbis from productos');
          dm.Query1.SQL.Add('where emp_codigo = :emp and pro_codigo = :pro');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
          dm.Query1.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
          dm.Query1.Open;

          if tiponcf <> 4 then
          begin
            DriverFiscal1.IF_WRITE('@TicketItem|'+copy(trim(QDetallePRO_NOMBRE.value),1,22)+'|'+QDetalleDEV_CANTIDAD.AsString+'|'+
              floattostr(QDetalleDEV_PRECIO.value)+'|'+floattostr(dm.Query1.FieldByName('pro_montoitbis').asFloat));
          end
          else
          begin
            DriverFiscal1.IF_WRITE('@TicketItem|'+copy(trim(QDetallePRO_NOMBRE.value),1,22)+'|'+QDetalleDEV_CANTIDAD.AsString+'|'+
              floattostr(QDetalleDEV_PRECIO.value+((QDetalleDEV_PRECIO.value*dm.Query1.FieldByName('pro_montoitbis').asFloat)/100))+'|'+floattostr(dm.Query1.FieldByName('pro_montoitbis').asFloat));
          end;

          if QDetalledev_descuento.Value > 0 then
          begin
            v_DescItems:= QDetalleCalcDesc.value * ((QDetalleDEV_ITBIS.Value /100)+1) ;

            err := DriverFiscal1.IF_WRITE('@TicketItem|'+copy(trim(QDetallePRO_NOMBRE.value),1,22)+'|'+
                     QDetalleDEV_CANTIDAD.AsString+'|'+ floattostr(v_DescItems)+'|'+
                     FloatToStr(QDetalleDEV_ITBIS.Value)+'|D');
         end;

          if QDetallerecargo.Value > 0 then
          begin
            if not rgeneral then
            begin
              err := DriverFiscal1.IF_WRITE('@TicketItem|'+copy(trim(QDetallePRO_NOMBRE.value),1,22)+'|'+QDetalleDEV_CANTIDAD.AsString+'|'+
              floattostr(QDetallerecargo.Value)+'|'+FloatToStr(QDetalleDEV_ITBIS.Value)+'|d');
            end;
          end;

        end;
        QDetalle.Next;
      end;
      QDetalle.EnableControls;

      err := DriverFiscal1.IF_WRITE('@TicketSubtotal|P');

      if (QDevolucionTDesc_gral.value  > 0) then
      begin

          err := DriverFiscal1.IF_WRITE('@TicketReturnRecharge|Desc. Global|'+floattostr(QDevolucionTDesc_gral.value));
      end;

      if recargo > 0 then
      begin
        if rgeneral then
          err := DriverFiscal1.IF_WRITE('@TicketReturnRecharge|Recargo|'+floattostr(recargo)+'|R');
      end;

      err := DriverFiscal1.IF_WRITE('@TicketPayment|11|'+floattostr(QDevolucionDEV_TOTAL.value));

      err := DriverFiscal1.IF_WRITE('@TicketFiscalText|Nota CR # : '+inttostr(QDevolucionDEV_NUMERO.AsInteger));
      err := DriverFiscal1.IF_WRITE('@TicketFiscalText|'+' ');
      err := DriverFiscal1.IF_WRITE('@TicketFiscalText|'+' ');
      err := DriverFiscal1.IF_WRITE('@TicketFiscalText|'+' ');
      err := DriverFiscal1.IF_WRITE('@TicketFiscalText|'+dm.Centro('_____________________'));
      err := DriverFiscal1.IF_WRITE('@TicketFiscalText|'+dm.Centro('Realizado por'));
      err := DriverFiscal1.IF_WRITE('@TicketFiscalText|'+' ');
      err := DriverFiscal1.IF_WRITE('@TicketFiscalText|'+' ');
      err := DriverFiscal1.IF_WRITE('@TicketFiscalText|'+dm.Centro('_____________________'));
      err := DriverFiscal1.IF_WRITE('@TicketFiscalText|'+dm.Centro('Autorizado por'));
      err := DriverFiscal1.IF_WRITE('@TicketFiscalText|'+' ');
      err := DriverFiscal1.IF_WRITE('@TicketFiscalText|'+' ');

      err := DriverFiscal1.IF_WRITE('@TicketClose');
      err := DriverFiscal1.IF_WRITE('@PaperFeed|1');
      err := DriverFiscal1.IF_WRITE('@PaperCut|P');


    if ((Impresora.Copia > 0 ) and ( Impresora.SustituirCopia = true)) then
      for x := 1 to Impresora.Copia do
        re_ImprimirDevEpson;

      err := DriverFiscal1.IF_CLOSE;


  finally
    DriverFiscal1.Destroy;
  end;

end;

procedure TfrmDevolucion.ImpTicketDevFiscalVmax(Impresora: TImpresora);
var
  s : array [0..20] of char;
  arch, puertopeq : textfile;
  ncf_modifica, ticket_nombre, ticket_rnc, puerto, sStringTmp : string;
  pro_codigo, Unidad,Und_Medida_Real : string;
  err, tiponcf: integer;
  DriverFiscal1 : TvmaxFiscal;
  recargo, descuento, DescRecGlobal, sDecuentoItbis : double;
  dgeneral, rgeneral : boolean;
  copias:byte;
  precio:Double;
   sDescuento,sAjuste :Double;
begin

  precio:=0;
  copias := Impresora.Copia;
  //Copias := aCopia;
  ticket_nombre := '';
  ticket_rnc :='';
  sDescuento := 0;
  sDecuentoItbis := 0;

  DriverFiscal1 := TvmaxFiscal.Create();
  try
    lblWait.Caption:='Buscando  puerto, espere...';
    Application.ProcessMessages();
      err := DriverFiscal1.OpenPort(Impresora.Puerto, Impresora.Velocidad);
    if (err <> SUCCESS ) then
      begin
        ShowMessage('Error : No hay comunicacion con el printer'+#13+#10+
        'Impresion cancelada');
        exit;
      end
    else begin //--[0]--
     // DriverFiscal1.AbrirCajonDinero();

      lblWait.Caption:='Procesando Impresion';
      Application.ProcessMessages();
      //----------------------------------------
      if rgtipo.ItemIndex = 1 then
        begin //--[1]--
          dm.Query1.close;
          dm.Query1.sql.clear;
          dm.Query1.sql.add('select ncf_tipo, nombre, rnc');
          dm.Query1.sql.add('from montos_ticket');
          dm.Query1.sql.add('where fecha = convert(datetime, :fec, 105)');
          dm.Query1.sql.add('and caja = :caj');
          dm.Query1.sql.add('and usu_codigo = :usu');
          dm.Query1.sql.add('and ticket = :tik');
          dm.Query1.Parameters.parambyname('fec').DataType := ftDate;
          dm.Query1.Parameters.parambyname('fec').Value    := QDevolucionticket_fecha.Value;
          dm.Query1.Parameters.parambyname('caj').Value    := QDevolucionticket_caja.Value;
          dm.Query1.Parameters.parambyname('usu').Value    := QDevolucionticket_cajero.Value;
          dm.Query1.Parameters.parambyname('tik').Value    := QDevolucionticket_numero.Value;
          dm.Query1.open;
          ticket_nombre := dm.Query1.FieldByName('nombre').AsString;
          ticket_rnc := dm.Query1.FieldByName('rnc').AsString;
          tiponcf := dm.Query1.FieldByName('ncf_tipo').AsInteger;



          if dm.Query1.FieldByName('ncf_tipo').AsInteger = 1 then
          begin   //--[1.1]--
            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('select ncf_fijo, ncf_secuencia from devolucion');
            dm.Query1.SQL.Add('where emp_codigo = :emp and dev_numero = :dev');
            dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
            dm.Query1.Parameters.ParamByName('dev').Value := QDevolucionDEV_NUMERO.Value;
            dm.Query1.Open;

            ncf_modifica := dm.Query1.FieldByName('NCF_Fijo').AsString+formatfloat('00000000',dm.Query1.FieldByName('NCF_Secuencia').AsFloat);

           // err := DriverFiscal1.IF_WRITE('@TicketOpen|C|0001|'+FormatFloat('000', QDevolucionticket_caja.AsFloat)+'|'+
          //  ncf_modifica+'|||'+QDevolucionNCF.AsString);

         err := DriverFiscal1.AbrirCF(copias,10, 0, '0001',FormatFloat('000', QDevolucionticket_caja.AsFloat),
                   ncf_modifica, ticket_nombre,ticket_rnc, QDevolucionNCF.AsString);   //**
          end  //--[1.1]--
          else if dm.Query1.FieldByName('ncf_tipo').AsInteger < 4 then
          begin   //--[1.2]--
            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('select ncf_fijo, ncf_secuencia from devolucion');
            dm.Query1.SQL.Add('where emp_codigo = :emp and dev_numero = :dev');
            dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
            dm.Query1.Parameters.ParamByName('dev').Value := QDevolucionDEV_NUMERO.Value;
            dm.Query1.Open;
            ncf_modifica := dm.Query1.FieldByName('NCF_Fijo').AsString+formatfloat('00000000',dm.Query1.FieldByName('NCF_Secuencia').AsFloat);

           // err := DriverFiscal1.IF_WRITE('@TicketOpen|D|0001|'+FormatFloat('000', QDevolucionticket_caja.AsFloat)+'|'+
            //ncf_modifica+'|'+ticket_nombre+'|'+ticket_rnc+'|'+QDevolucionNCF.AsString);

            err := DriverFiscal1.AbrirCF(copias,11, 0, '0001',FormatFloat('000', QDevolucionticket_caja.AsFloat),
                   ncf_modifica, ticket_nombre,ticket_rnc, QDevolucionNCF.AsString);
          end  //--[1.2]--
          else if dm.Query1.FieldByName('ncf_tipo').AsInteger = 4 then
          begin  //--[1.3]--
            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('select ncf_fijo, ncf_secuencia from devolucion');
            dm.Query1.SQL.Add('where emp_codigo = :emp and dev_numero = :dev');
            dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
            dm.Query1.Parameters.ParamByName('dev').Value := QDevolucionDEV_NUMERO.Value;
            dm.Query1.Open;
            ncf_modifica := dm.Query1.FieldByName('NCF_Fijo').AsString+formatfloat('00000000',dm.Query1.FieldByName('NCF_Secuencia').AsFloat);

           // err := DriverFiscal1.IF_WRITE('@TicketOpen|H|0001|'+FormatFloat('000', QDevolucionticket_caja.AsFloat)+'|'+
           // ncf_modifica+'|'+ticket_nombre+'|'+ticket_rnc+'|'+QDevolucionNCF.AsString);

            err := DriverFiscal1.AbrirCF(copias,111, 0, '0001',FormatFloat('000', QDevolucionticket_caja.AsFloat),
                   ncf_modifica, ticket_nombre,ticket_rnc, QDevolucionNCF.AsString);

          end; //--[1.3]--
        end  //--[1]--
      else
        begin  //--[2]--
          dm.Query1.close;
          dm.Query1.sql.clear;
          dm.Query1.sql.add('select tip_codigo, fac_nombre, fac_rnc');
          dm.Query1.sql.add('from facturas');
          dm.Query1.sql.add('where emp_codigo = :emp');
          dm.Query1.sql.add('and tfa_codigo = :tfa');
          dm.Query1.sql.add('and fac_numero = :fac');
          dm.Query1.Parameters.parambyname('emp').Value    := dm.QEmpresasEMP_CODIGO.Value;
          dm.Query1.Parameters.parambyname('tfa').Value    := QDevolucionTFA_CODIGO.Value;
          dm.Query1.Parameters.parambyname('fac').Value    := QDevolucionFAC_NUMERO.Value;
          dm.Query1.open;
          ticket_nombre := dm.Query1.FieldByName('fac_nombre').AsString;
          ticket_rnc := dm.Query1.FieldByName('fac_rnc').AsString;

          if dm.Query1.FieldByName('tip_codigo').AsInteger = 1 then
          begin   //--[2.1]--
            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('select ncf_fijo, ncf_secuencia from devolucion');
            dm.Query1.SQL.Add('where emp_codigo = :emp and dev_numero = :dev');
            dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
            dm.Query1.Parameters.ParamByName('dev').Value := QDevolucionDEV_NUMERO.Value;
            dm.Query1.Open;

            ncf_modifica := dm.Query1.FieldByName('NCF_Fijo').AsString+formatfloat('00000000',dm.Query1.FieldByName('NCF_Secuencia').AsFloat);

           // err := DriverFiscal1.IF_WRITE('@TicketOpen|C|0001|'+FormatFloat('000', QDevolucionticket_caja.AsFloat)+'|'+
           // ncf_modifica+'|||'+QDevolucionNCF.AsString);
           err := DriverFiscal1.AbrirCF(copias,10, 0, '0001',FormatFloat('000', QDevolucionticket_caja.AsFloat),
                  ncf_modifica, ticket_nombre,ticket_rnc, QDevolucionNCF.AsString);
          end  //--[2.1]--
          else
          begin //--[2.2]--
            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('select ncf_fijo, ncf_secuencia from devolucion');
            dm.Query1.SQL.Add('where emp_codigo = :emp and dev_numero = :dev');
            dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
            dm.Query1.Parameters.ParamByName('dev').Value := QDevolucionDEV_NUMERO.Value;
            dm.Query1.Open;
            ncf_modifica := dm.Query1.FieldByName('NCF_Fijo').AsString+formatfloat('00000000',dm.Query1.FieldByName('NCF_Secuencia').AsFloat);

           // err := DriverFiscal1.IF_WRITE('@TicketOpen|D|0001|'+FormatFloat('000', QDevolucionticket_caja.AsFloat)+'|'+
          //  ncf_modifica+'|'+ticket_nombre+'|'+ticket_rnc+'|'+QDevolucionNCF.AsString);
           err := DriverFiscal1.AbrirCF(copias,11, 0, '0001',FormatFloat('000', QDevolucionticket_caja.AsFloat),
                   ncf_modifica, ticket_nombre,ticket_rnc, QDevolucionNCF.AsString);
          end; //--[2.2]--
        end; //--[2]--

        //Verificando Descuento y Recargdo General
        dgeneral := true;
        rgeneral := true;

        recargo := 0;
        descuento := 0;
        QDetalle.DisableControls;
        QDetalle.First;
        while not QDetalle.Eof do
        begin
          if QDetalleCalcRecargo.Value > 0 then rgeneral := false;

          if QDetalleCalcDesc.Value > 0 then dgeneral := false;

          recargo := recargo + QDetallerecargo.Value;
          descuento := descuento + QDetalleCalcDesc.value; // QDetalleTotalDescuento.Value;

          if QDetalleDEV_CANTIDAD.Value > 0 then
          begin
            s := '';
            fillchar(S, 5-length(floattostr(QDetalleDEV_CANTIDAD.value)),' ');

            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('select pro_montoitbis from productos');
            dm.Query1.SQL.Add('where emp_codigo = :emp and pro_codigo = :pro');
            dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
            dm.Query1.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
            dm.Query1.Open;

              if Impresora.Tipo = 'N' then
              begin
                if not QDetallePRO_CODIGO.IsNull then
                  pro_codigo :=IntToStr(QDetallePRO_CODIGO.value)
                else
                  pro_codigo :='0';

                if not QDetalleDET_MEDIDA.IsNull then
                  Unidad :=trim(Copy(QDetalleDET_MEDIDA.value,1,6))
                else
                  Unidad :='UNIDAD';

              end
            else
             begin
               pro_codigo :=''; Unidad :='';  Und_Medida_Real:='';
             end;



            if tiponcf <> 4 then
            begin
             // DriverFiscal1.IF_WRITE('@TicketItem|'+copy(trim(QDetallePRO_NOMBRE.value),1,22)+'|'+QDetalleDEV_CANTIDAD.AsString+'|'+
              //  floattostr(QDetalleDEV_PRECIO.value)+'|'+floattostr(dm.Query1.FieldByName('pro_montoitbis').asFloat));

              precio:= QDetalleDEV_PRECIO.value;
              if (dm.QParametrospar_itbisincluido.Value = 'False') then

                Precio := QDetalleDEV_PRECIO.value + ((QDetalleDEV_PRECIO.value*dm.Query1.FieldByName('pro_montoitbis').asFloat)/100);

              //Precio := Precio - QDetalledev_descuento.Value;

              //cuando es una impresora grande se le debe de enviar el codigo y la unidad de medida.




              err := DriverFiscal1.ItemCF(0, '','','','','','','',pro_codigo,Unidad,
                       copy(trim(QDetallePRO_NOMBRE.value),1,35),
                        QDetalleDEV_CANTIDAD.value,
                        Precio,dm.Query1.FieldByName('pro_montoitbis').asFloat);
            end
            else
            begin
              //  DriverFiscal1.IF_WRITE('@TicketItem|'+copy(trim(QDetallePRO_NOMBRE.value),1,22)+'|'+QDetalleDEV_CANTIDAD.AsString+'|'+
              //   floattostr(QDetalleDEV_PRECIO.value+((QDetalleDEV_PRECIO.value*dm.Query1.FieldByName('pro_montoitbis').asFloat)/100))+'|'+floattostr(dm.Query1.FieldByName('pro_montoitbis').asFloat));

              err := DriverFiscal1.ItemCF(0, '','','','','','','',pro_codigo,Unidad,
                       copy(trim(QDetallePRO_NOMBRE.value),1,35),
                        QDetalleDEV_CANTIDAD.value,
                        QDetalleDEV_PRECIO.value+((QDetalleDEV_PRECIO.value*dm.Query1.FieldByName('pro_montoitbis').asFloat)/100),
                        ((QDetalleDEV_PRECIO.value*dm.Query1.FieldByName('pro_montoitbis').asFloat)/100));
            end;


            if (QDetalleCalcDesc.Value > 0) and (QDevolucionporc_desc_gral.Value = 0) then
            begin
                //err := DriverFiscal1.IF_WRITE('@TicketItem|'+copy(trim(QDetallePRO_NOMBRE.value),1,22)+'|'+QDetalleDEV_CANTIDAD.AsString+'|'+
                //floattostr(QDetalleTotalDescuento.Value)+'|'+FloatToStr(QDetalleDEV_ITBIS.Value)+'|D');
               // QDetalleCalcDesc.value
                sDescuento :=  QDetalleCalcDesc.Value * (1+(QDetalleDEV_ITBIS.Value/100));
                sDecuentoItbis :=  QDetalleCalcDesc.Value * (QDetalleDEV_ITBIS.Value/100);
               if sDescuento > 0 then
                err := DriverFiscal1.ItemCF(2, '','','','','','','',pro_codigo,Unidad,
                             'Descuento por Item',
                             QDetalleDEV_CANTIDAD.value,
                             sDescuento,
                             sDecuentoItbis);
            end;

            if (QDetalleCalcDesc.Value = 0) and (QDevolucionporc_desc_gral.Value > 0) then
            begin
                sDescuento :=  sDescuento + ((QDetalleDEV_CANTIDAD.Value*QDetalleDEV_PRECIO.Value) * (QDevolucionporc_desc_gral.Value/100))*
                                            (1+(QDetalleDEV_ITBIS.Value/100));
            end;

            if QDetalleCalcRecargo.Value > 0 then
              begin
               // err := DriverFiscal1.IF_WRITE('@TicketItem|'+copy(trim(QDetallePRO_NOMBRE.value),1,22)+'|'+QDetalleDEV_CANTIDAD.AsString+'|'+
               // floattostr(QDetallerecargo.Value)+'|'+FloatToStr(QDetalleDEV_ITBIS.Value)+'|d');

                 err := DriverFiscal1.ItemCF(3, '','','','','','','',pro_codigo,Unidad,
                             copy(trim(QDetallePRO_NOMBRE.value),1,35),
                             QDetalleDEV_CANTIDAD.value,
                             QDetallerecargo.Value,
                             QDetalleDEV_ITBIS.Value);

            end;



          end;
          QDetalle.Next;
        end;
        QDetalle.EnableControls;

        

        // err := DriverFiscal1.IF_WRITE('@TicketSubtotal|P');
        err := DriverFiscal1.getSubtotalCF();
        if err <> 0 then
          begin
            application.MessageBox('Error en comunicacion con la impresora.','Error',MB_OK);
            exit;
          end;

        {if (QDevolucionporc_desc_gral.value  > 0) then
          err := DriverFiscal1.DescRecGlobal(0,'Desc. Global',((vl_subtotal)*(QDevolucionporc_desc_gral.Value/100))*
                                     (1+ (QDetalleDEV_ITBIS.Value/100)));}
          //  err := DriverFiscal1.IF_WRITE('@TicketReturnRecharge|Descuento|'+floattostr(descuento));

         if (sDescuento > 0 ) then
        begin
          sStringTmp := FormatFloat(',,0.00', QDevolucionporc_desc_gral.value);
          DescRecGlobal := sDescuento;
          err := DriverFiscal1.DescRecGlobal(0, sStringTmp+'% Desc. Global',DescRecGlobal);
          err := DriverFiscal1.getSubtotalCF();
        end;


        if ((recargo > 0) and (rgeneral = true)) then
         err :=DriverFiscal1.DescRecGlobal(1,'Recargo',recargo);
            //err := DriverFiscal1.IF_WRITE('@TicketReturnRecharge|Recargo|'+floattostr(recargo)+'|R');


        ///err := DriverFiscal1.IF_WRITE('@TicketPayment|11|'+floattostr(QDevolucionDEV_TOTAL.value));
        err := DriverFiscal1.PagoCF(0, 10, QDevolucionDEV_TOTAL.value);


        //Ajusta pago por si queda centavos que pagar
          if ( DriverFiscal1.SubTotal > QDevolucionDEV_TOTAL.value )  then
          begin
            sAjuste := DriverFiscal1.SubTotal - QDevolucionDEV_TOTAL.value;
            err := DriverFiscal1.PagoCF(0, 7,sAjuste,' ' );
          end;

        err :=  DriverFiscal1.LineaComentario('Nota CR # : '+inttostr(QDevolucionDEV_NUMERO.AsInteger));

    {  OJO buscar factura y tipo       err :=  DriverFiscal1.LineaComentario('CR APLICADO A ');
 aggregar factura        err :=  DriverFiscal1.LineaComentario('FACTURA # : ');
         err :=  DriverFiscal1.LineaComentario('   TIPO   : ');
      }

        err :=  DriverFiscal1.LineaComentario(' ');
        err :=  DriverFiscal1.LineaComentario(' ');
        err :=  DriverFiscal1.LineaComentario(' ');
        err :=  DriverFiscal1.LineaComentario(dm.Centro('_____________________'));
        err :=  DriverFiscal1.LineaComentario(dm.Centro('Realizado por'));
        err :=  DriverFiscal1.LineaComentario(' ');
        err :=  DriverFiscal1.LineaComentario(' ');
        err :=  DriverFiscal1.LineaComentario(dm.Centro('_____________________'));
        err :=  DriverFiscal1.LineaComentario(dm.Centro('Autorizado por'));
        err :=  DriverFiscal1.LineaComentario(' ');
        err :=  DriverFiscal1.LineaComentario(' ');

        lblWait.Caption:='Imprimiendo, espere...';
        Application.ProcessMessages();
        DriverFiscal1.CerrarCF();


      DriverFiscal1.ClosePort();
    end; //--[0]--
  finally
    lblWait.Caption:='Cerrando puerto';
    DriverFiscal1.Destroy;
    lblWait.Caption:='';
    Application.ProcessMessages();
  end;

end;

procedure TfrmDevolucion.ImpTicketDevFiscalBixolon(Impresora: TImpresora);
var
  s : array [0..20] of char;
  arch, puertopeq : textfile;
  puerto, ncf_modifica, ticket_nombre, ticket_rnc : string;
  tiponcf, a: integer;
  recargo, descuento : double;
  dgeneral, rgeneral : boolean;
  Precio: Double;
  Respuesta: Boolean;
  Stat, Err: Integer;
begin

  Puerto := PuertoSerial[Impresora.Puerto -1];

  OpenFpctrl(PChar(Puerto));
  Respuesta := CheckFprinter();
  if Not Respuesta then
  begin
    ShowMessage('Impresora NO conectada');
    Abort;
  end;
  if rgtipo.ItemIndex = 1 then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select ncf_tipo, nombre, rnc');
    dm.Query1.sql.add('from montos_ticket');
    dm.Query1.sql.add('where fecha = convert(datetime, :fec, 105)');
    dm.Query1.sql.add('and caja = :caj');
    dm.Query1.sql.add('and usu_codigo = :usu');
    dm.Query1.sql.add('and ticket = :tik');
    dm.Query1.Parameters.parambyname('fec').DataType := ftDate;
    dm.Query1.Parameters.parambyname('fec').Value    := QDevolucionticket_fecha.Value;
    dm.Query1.Parameters.parambyname('caj').Value    := QDevolucionticket_caja.Value;
    dm.Query1.Parameters.parambyname('usu').Value    := QDevolucionticket_cajero.Value;
    dm.Query1.Parameters.parambyname('tik').Value    := QDevolucionticket_numero.Value;
    dm.Query1.open;
    ticket_nombre := dm.Query1.FieldByName('nombre').AsString;
    ticket_rnc := dm.Query1.FieldByName('rnc').AsString;
    tiponcf := dm.Query1.FieldByName('ncf_tipo').AsInteger;

    if dm.Query1.FieldByName('ncf_tipo').AsInteger = 1 then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select ncf_fijo, ncf_secuencia from devolucion');
      dm.Query1.SQL.Add('where emp_codigo = :emp and dev_numero = :dev');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('dev').Value := QDevolucionDEV_NUMERO.Value;
      dm.Query1.Open;

      ncf_modifica := dm.Query1.FieldByName('NCF_Fijo').AsString+formatfloat('00000000',dm.Query1.FieldByName('NCF_Secuencia').AsFloat);

      //informacion del cliente
      if Trim(ticket_nombre) <> '' Then
        SendCmd(Stat, Err, PChar('iS0'+Copy(ticket_nombre, 0, 30)));
      if Trim(ticket_rnc) <> '' Then
        SendCmd(Stat, Err, PChar('iR0'+ticket_rnc));

      //informacion del NCF
      SendCmd(Stat, Err, PChar('iF0'+QDevolucionNCF.AsString));

      //informacion del NCF que afecta
      SendCmd(Stat, Err, PChar('F'+ncf_modifica));

      //apertura de la factura
      SendCmd(Stat, Err, PChar('/2'));

    end
    else if dm.Query1.FieldByName('ncf_tipo').AsInteger < 4 then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select ncf_fijo, ncf_secuencia from devolucion');
      dm.Query1.SQL.Add('where emp_codigo = :emp and dev_numero = :dev');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('dev').Value := QDevolucionDEV_NUMERO.Value;
      dm.Query1.Open;
      ncf_modifica := dm.Query1.FieldByName('NCF_Fijo').AsString+formatfloat('00000000',dm.Query1.FieldByName('NCF_Secuencia').AsFloat);

      //informacion del cliente
      if Trim(ticket_nombre) <> '' Then
        SendCmd(Stat, Err, PChar('iS0'+Copy(ticket_nombre, 0, 30)));
      if Trim(ticket_rnc) <> '' Then
        SendCmd(Stat, Err, PChar('iR0'+ticket_rnc));

      //informacion del NCF
      SendCmd(Stat, Err, PChar('iF0'+QDevolucionNCF.AsString));

      //informacion del NCF que afecta
      SendCmd(Stat, Err, PChar('F'+ncf_modifica));

      //apertura de la factura
      SendCmd(Stat, Err, PChar('/3'));

    end
    else if dm.Query1.FieldByName('ncf_tipo').AsInteger = 4 then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select ncf_fijo, ncf_secuencia from devolucion');
      dm.Query1.SQL.Add('where emp_codigo = :emp and dev_numero = :dev');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('dev').Value := QDevolucionDEV_NUMERO.Value;
      dm.Query1.Open;
      ncf_modifica := dm.Query1.FieldByName('NCF_Fijo').AsString+formatfloat('00000000',dm.Query1.FieldByName('NCF_Secuencia').AsFloat);

      //informacion del cliente
      if Trim(ticket_nombre) <> '' Then
        SendCmd(Stat, Err, PChar('iS0'+Copy(ticket_nombre, 0, 30)));
      if Trim(ticket_rnc) <> '' Then
        SendCmd(Stat, Err, PChar('iR0'+ticket_rnc));

      //informacion del NCF
      SendCmd(Stat, Err, PChar('iF0'+QDevolucionNCF.AsString));

      //informacion del NCF que afecta
      SendCmd(Stat, Err, PChar('F'+ncf_modifica));

      //apertura de la factura
      SendCmd(Stat, Err, PChar('/5'));
    end;
  end
  else
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select tip_codigo, fac_nombre, fac_rnc');
    dm.Query1.sql.add('from facturas');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and tfa_codigo = :tfa');
    dm.Query1.sql.add('and fac_numero = :fac');
    dm.Query1.Parameters.parambyname('emp').Value    := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.parambyname('tfa').Value    := StrToInt(edTipo.Text);
    dm.Query1.Parameters.parambyname('fac').Value    := QDevolucionFAC_NUMERO.Value;
    dm.Query1.open;
    ticket_nombre := dm.Query1.FieldByName('fac_nombre').AsString;
    ticket_rnc := dm.Query1.FieldByName('fac_rnc').AsString;

    if dm.Query1.FieldByName('tip_codigo').AsInteger = 1 then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select ncf_fijo, ncf_secuencia from devolucion');
      dm.Query1.SQL.Add('where emp_codigo = :emp and dev_numero = :dev');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('dev').Value := QDevolucionDEV_NUMERO.Value;
      dm.Query1.Open;

      ncf_modifica := dm.Query1.FieldByName('NCF_Fijo').AsString+formatfloat('00000000',dm.Query1.FieldByName('NCF_Secuencia').AsFloat);

      //informacion del cliente
      if Trim(ticket_nombre) <> '' Then
        SendCmd(Stat, Err, PChar('iS0'+Copy(ticket_nombre, 0, 30)));
      if Trim(ticket_rnc) <> '' Then
        SendCmd(Stat, Err, PChar('iR0'+ticket_rnc));

      //informacion del NCF
      SendCmd(Stat, Err, PChar('iF0'+QDevolucionNCF.AsString));

      //informacion del NCF que afecta
      SendCmd(Stat, Err, PChar('F'+ncf_modifica));

      //apertura de la nota de credito
      SendCmd(Stat, Err, PChar('/2'));

    end
    else if dm.Query1.FieldByName('tip_codigo').AsInteger < 4 then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select ncf_fijo, ncf_secuencia from devolucion');
      dm.Query1.SQL.Add('where emp_codigo = :emp and dev_numero = :dev');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('dev').Value := QDevolucionDEV_NUMERO.Value;
      dm.Query1.Open;
      ncf_modifica := dm.Query1.FieldByName('NCF_Fijo').AsString+formatfloat('00000000',dm.Query1.FieldByName('NCF_Secuencia').AsFloat);

      //informacion del cliente
      if Trim(ticket_nombre) <> '' Then
        SendCmd(Stat, Err, PChar('iS0'+Copy(ticket_nombre, 0, 30)));
      if Trim(ticket_rnc) <> '' Then
        SendCmd(Stat, Err, PChar('iR0'+ticket_rnc));

      //informacion del NCF
      SendCmd(Stat, Err, PChar('iF0'+QDevolucionNCF.AsString));

      //informacion del NCF que afecta
      SendCmd(Stat, Err, PChar('F'+ncf_modifica));

      //apertura de la nota de credito
      SendCmd(Stat, Err, PChar('/3'));

    end
  else if dm.Query1.FieldByName('tip_codigo').AsInteger = 4 then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select ncf_fijo, ncf_secuencia from devolucion');
      dm.Query1.SQL.Add('where emp_codigo = :emp and dev_numero = :dev');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('dev').Value := QDevolucionDEV_NUMERO.Value;
      dm.Query1.Open;
      ncf_modifica := dm.Query1.FieldByName('NCF_Fijo').AsString+formatfloat('00000000',dm.Query1.FieldByName('NCF_Secuencia').AsFloat);

      //informacion del cliente
      if Trim(ticket_nombre) <> '' Then
        SendCmd(Stat, Err, PChar('iS0'+Copy(ticket_nombre, 0, 30)));
      if Trim(ticket_rnc) <> '' Then
        SendCmd(Stat, Err, PChar('iR0'+ticket_rnc));

      //informacion del NCF
      SendCmd(Stat, Err, PChar('iF0'+QDevolucionNCF.AsString));

      //informacion del NCF que afecta
      SendCmd(Stat, Err, PChar('F'+ncf_modifica));

      //apertura de la nota de credito
      SendCmd(Stat, Err, PChar('/5'));

    end;
  end;

  //Verificando Descuento y Recargdo General
  dgeneral := true;
  rgeneral := true;

  QDetalle.DisableControls;
  QDetalle.First;
  while not QDetalle.eof do
  begin
    if QDetalledev_Descuento.Value > 0 then dgeneral := false;
    if QDetalleRecargo.Value > 0 then rgeneral := false;

    QDetalle.next;
  end;
  QDetalle.First;
  QDetalle.EnableControls;

  recargo := 0;
  descuento := 0;
  QDetalle.DisableControls;
  QDetalle.First;
  while not QDetalle.Eof do
  begin
    recargo := recargo + QDetallerecargo.Value;
    descuento := descuento + QDetalleTotalDescuento.Value;
    if QDetalleDEV_CANTIDAD.Value > 0 then
    begin
      s := '';
      fillchar(S, 5-length(floattostr(QDetalleDEV_CANTIDAD.value)),' ');

      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select pro_montoitbis from productos');
      dm.Query1.SQL.Add('where emp_codigo = :emp and pro_codigo = :pro');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
      dm.Query1.Open;

      if tiponcf <> 4 then
      begin
        Precio := QDetalleDEV_PRECIO.value * 100;//+((QDetalleDEV_PRECIO.value*dm.Query1.FieldByName('pro_montoitbis').asFloat;
        if QDetalleDEV_ITBIS.Value = 0 then
          SendCmd(Stat, Err, PChar(' '+ FormatFloat('0000000000', Precio) +
            FormatFloat('00000000', QDetalleDEV_CANTIDAD.Value*100) + '|'+QDetallePRO_RORIGINAL.Value+'|'+ QDetallePRO_NOMBRE.Value))
        else if QDetalleDEV_ITBIS.Value = 16 then
          SendCmd(Stat, Err, PChar('!'+ FormatFloat('0000000000', Precio) +
            FormatFloat('00000000', QDetalleDEV_CANTIDAD.Value*100) + '|'+QDetallePRO_RORIGINAL.Value+'|'+ QDetallePRO_NOMBRE.Value))
        else if QDetalleDEV_ITBIS.Value = 18 then
          SendCmd(Stat, Err, PChar('"'+ FormatFloat('0000000000', Precio) +
            FormatFloat('00000000', QDetalleDEV_CANTIDAD.Value*100) + '|'+QDetallePRO_RORIGINAL.Value+'|'+ QDetallePRO_NOMBRE.Value))
        else if QDetalleDEV_ITBIS.Value = 8 then
          SendCmd(Stat, Err, PChar('#'+ FormatFloat('0000000000', Precio) +
            FormatFloat('00000000', QDetalleDEV_CANTIDAD.Value*100) + '|'+QDetallePRO_RORIGINAL.Value+'|'+ QDetallePRO_NOMBRE.Value))
        else if QDetalleDEV_ITBIS.Value = 11 then
          SendCmd(Stat, Err, PChar('$'+ FormatFloat('0000000000', Precio) +
            FormatFloat('00000000', QDetalleDEV_CANTIDAD.Value*100) + '|'+QDetallePRO_RORIGINAL.Value+'|'+ QDetallePRO_NOMBRE.Value))
        else if QDetalleDEV_ITBIS.Value = 13 then
          SendCmd(Stat, Err, PChar('%'+ FormatFloat('0000000000', Precio) +
            FormatFloat('00000000', QDetalleDEV_CANTIDAD.Value*100) + '|'+QDetallePRO_RORIGINAL.Value+'|'+ QDetallePRO_NOMBRE.Value));



      end
      else
      begin
        Precio := QDetalleDEV_PRECIO.value+ (QDetalleDEV_PRECIO.value*dm.Query1.FieldByName('pro_montoitbis').asFloat * 100);
        if QDetalleDEV_ITBIS.Value = 0 then
          SendCmd(Stat, Err, PChar(' '+ FormatFloat('0000000000', Precio) +
            FormatFloat('00000000', QDetalleDEV_CANTIDAD.Value*100) + '|'+QDetallePRO_RORIGINAL.Value+'|'+ QDetallePRO_NOMBRE.Value))
        else if QDetalleDEV_ITBIS.Value = 16 then
          SendCmd(Stat, Err, PChar('!'+ FormatFloat('0000000000', Precio) +
            FormatFloat('00000000', QDetalleDEV_CANTIDAD.Value*100) + '|'+QDetallePRO_RORIGINAL.Value+'|'+ QDetallePRO_NOMBRE.Value))
        else if QDetalleDEV_ITBIS.Value = 18 then
          SendCmd(Stat, Err, PChar('"'+ FormatFloat('0000000000', Precio) +
            FormatFloat('00000000', QDetalleDEV_CANTIDAD.Value*100) + '|'+QDetallePRO_RORIGINAL.Value+'|'+ QDetallePRO_NOMBRE.Value))
        else if QDetalleDEV_ITBIS.Value = 8 then
          SendCmd(Stat, Err, PChar('#'+ FormatFloat('0000000000', Precio) +
            FormatFloat('00000000', QDetalleDEV_CANTIDAD.Value*100) + '|'+QDetallePRO_RORIGINAL.Value+'|'+ QDetallePRO_NOMBRE.Value))
        else if QDetalleDEV_ITBIS.Value = 11 then
          SendCmd(Stat, Err, PChar('$'+ FormatFloat('0000000000', Precio) +
            FormatFloat('00000000', QDetalleDEV_CANTIDAD.Value*100) + '|'+QDetallePRO_RORIGINAL.Value+'|'+ QDetallePRO_NOMBRE.Value))
        else if QDetalleDEV_ITBIS.Value = 13 then
          SendCmd(Stat, Err, PChar('%'+ FormatFloat('0000000000', Precio) +
            FormatFloat('00000000', QDetalleDEV_CANTIDAD.Value*100) + '|'+QDetallePRO_RORIGINAL.Value+'|'+ QDetallePRO_NOMBRE.Value));
      end;

      if QDetalledev_descuento.Value > 0 then
        begin
          ///v_DescItems:= QDetalleCalcDesc.value * ((QDetalleDEV_ITBIS.Value /100)+1) ;
          v_DescItems:= QDetalledev_descuento.Value ;
          SendCmd(Stat, Err, PChar('p-'+ FormatFloat('0000',v_DescItems*100)));
        end;

      if QDetallerecargo.Value > 0 then
      begin
        if not rgeneral then
        begin
          if QDetallerecargo.Value > 0 then
            SendCmd(Stat, Err, PChar('p+'+ FormatFloat('0000', QDetallerecargo.Value*100)));
        end;
      end;

    end;
    QDetalle.Next;
  end;
  QDetalle.EnableControls;


  if QDevolucionTdesc_gral.Value > 0 then
    SendCmd(Stat, Err, PChar('p*'+ FormatFloat('0000', QDevolucionporc_desc_gral.value*100)));


{  if descuento > 0 then
  begin
    if dgeneral then
      SendCmd(Stat, Err, PChar('q*'+ FormatFloat('0000', QDevolucionDEV_DESCUENTO.Value*100)));
  end; }

  {if recargo > 0 then
  begin
    if rgeneral then
      SendCmd(Stat, Err, PChar('q+'+ FormatFloat('0000', QDevolucionDEV_DESCUENTO.Value*100)));
  end;}

   v_TotalImp := getTotalaPagar(); //Pide total al printer

////  SendCmd(Stat, Err, PChar('101'));

  SendCmd(Stat, Err, PChar('@Nota CR # : '+inttostr(QDevolucionDEV_NUMERO.AsInteger)));
  SendCmd(Stat, Err, PChar('@'+' '));
  SendCmd(Stat, Err, PChar('@'+' '));
  SendCmd(Stat, Err, PChar('@'+' '));
  SendCmd(Stat, Err, PChar('@'+dm.Centro('_____________________')));
  SendCmd(Stat, Err, PChar('@'+dm.Centro('Realizado por')));
  SendCmd(Stat, Err, PChar('@'+' '));
  SendCmd(Stat, Err, PChar('@'+' '));
  SendCmd(Stat, Err, PChar('@'+dm.Centro('_____________________')));
  SendCmd(Stat, Err, PChar('@'+dm.Centro('Autorizado por')));
  SendCmd(Stat, Err, PChar('@'+' '));
  SendCmd(Stat, Err, PChar('@'+' '));
  SendCmd(Stat, Err, PChar('199'));

  for a := 1 To Impresora.Copia - 1 do
    SendCmd(Stat, Err, PChar('RU'));

  GuardarNIF(UltimoNIF);

  CloseFpctrl;


end;

procedure TfrmDevolucion.GuardarNIF(NIF: String);
begin
  with DM.Query1 do
  begin
    close;
    SQL.Clear;
    SQL.Append('UPDATE DEVOLUCION SET NIF = :NIF');
    SQL.Append('where emp_codigo = :emp');
    SQL.Append('and dev_numero = :numero');
    SQL.Append('and suc_codigo = :suc');
    Parameters.ParamByName('NIF').Value := NIF;
    Parameters.ParamByName('emp').Value := QDevolucionEMP_CODIGO.Value;
    Parameters.ParamByName('numero').Value := QDevolucionDEV_NUMERO.Value;
    Parameters.ParamByName('suc').Value := QDevolucionSUC_CODIGO.Value;
    ExecSQL;
  end;

end;

procedure TfrmDevolucion.SpeedButton2Click(Sender: TObject);
begin
  search.Query.clear;
  search.AliasFields.clear;
  search.Query.add('select nombre, Codigo');
  search.Query.add('from catAnulacioneNCF');
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  search.ResultField := 'Codigo';
  search.Title := 'Motivos de Devolucion para la DGII';
  if search.execute then
  begin
    QDevolucionmotivo_dgi.Value := StrToInt(search.valuefield);
    DBEdit15.SetFocus;
end;
 end;
procedure TfrmDevolucion.QDevolucionmotivo_dgiGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
if not QDevolucionmotivo_dgi.IsNull then
  begin
    Text := IntToStr(QDevolucionmotivo_dgi.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select nombre from catAnulacioneNCF');
    dm.Query1.SQL.Add('where codigo = :cod');
    dm.Query1.Parameters.ParamByName('cod').Value := QDevolucionmotivo_dgi.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tmotivodgi.Text := dm.Query1.FieldByName('nombre').AsString
    else
      tmotivodgi.Text := '';
  end;


end;

procedure TfrmDevolucion.FormDestroy(Sender: TObject);
begin
  FreeAndNil(vItbisPorLinea);
end;

end.
