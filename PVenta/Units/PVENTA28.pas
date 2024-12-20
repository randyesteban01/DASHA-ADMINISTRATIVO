unit PVENTA28;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids, DB,
  IBCustomDataSet, IBQuery, IBUpdateSQL, ADODB, QRCtrls, QuickRpt, QRPDFFilt,
  QuerySearchDlgADO, ComCtrls, Math, DBGridObj, Menus, dxmdaset, QRExport;

type
  TfrmConduce = class(TForm)
    Panel2: TPanel;
    Panel5: TPanel;
    btBuscar: TSpeedButton;
    btGrabar: TSpeedButton;
    btLimpiar: TSpeedButton;
    btSalir: TSpeedButton;
    btBuscaProd: TSpeedButton;
    btElimina: TSpeedButton;
    DBEdit5: TDBEdit;
    Label1: TLabel;
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
    QConduceEMP_CODIGO: TIntegerField;
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
    dsDetalle: TDataSource;
    QConduceALM_CODIGO: TIntegerField;
    Label7: TLabel;
    tAlmacen: TEdit;
    Search: TQrySearchDlgADO;
    QConduceCON_NOMBRE: TIBStringField;
    QConduceUSU_CODIGO: TIntegerField;
    QDetalleDET_LOTE: TIntegerField;
    QDetalleDET_VENCE: TIBStringField;
    QDetalleDET_FECHAVENCE: TDateTimeField;
    dbAlmacen: TDBEdit;
    QConduceCON_FACTURADO: TIBStringField;
    QDetalleDET_ESCALA: TIBStringField;
    QDetalleDET_MANEJAESCALA: TIBStringField;
    QDetalleDET_MEDIDA: TIBStringField;
    QDetalleDET_PRECIO1: TFloatField;
    QDetalleDET_PRECIO2: TFloatField;
    QDetalleDET_PRECIO3: TFloatField;
    QDetalleDET_PRECIO4: TFloatField;
    QDetalleDET_COSTOUND: TFloatField;
    QDetalleDET_COSTOEMP: TFloatField;
    btBuscaCliente: TSpeedButton;
    btpedido: TSpeedButton;
    QConducePED_TIPO: TStringField;
    QConducePED_NUMERO: TIntegerField;
    Query1: TADOQuery;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QConduceSUC_CODIGO: TIntegerField;
    QDetalleSUC_CODIGO: TIntegerField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    btalmacen: TSpeedButton;
    rgtipo: TRadioGroup;
    QConduceDEP_CODIGO: TIntegerField;
    Label9: TLabel;
    btdepto: TSpeedButton;
    tDepto: TEdit;
    DBEdit8: TDBEdit;
    QConduceCON_DESCUENTO: TBCDField;
    QDetalleDET_DESCUENTO: TBCDField;
    QDetalleCalcDesc: TFloatField;
    QDetalleCalcItbis: TFloatField;
    QDetallePrecioItbis: TFloatField;
    Label11: TLabel;
    Label16: TLabel;
    lbItbis: TLabel;
    Label19: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    QConduceSubTotal: TFloatField;
    QConduceCON_ITBIS: TBCDField;
    lbFacturado: TStaticText;
    Label12: TLabel;
    btVendedor: TSpeedButton;
    dbVendedor: TDBEdit;
    tVendedor: TEdit;
    qConduceVen_Codigo: TIntegerField;
    QDetalleDET_NOTA: TMemoField;
    SpeedButton2: TSpeedButton;
    QUtil: TADOQuery;
    btserie: TSpeedButton;
    GridSerie: TStringGrid;
    QSerie: TADOQuery;
    QSerieemp_codigo: TIntegerField;
    QSeriesuc_codigo: TIntegerField;
    QSeriecon_numero: TIntegerField;
    QSerieser_secuencia: TIntegerField;
    QSerieser_numero: TStringField;
    QSeriepro_codigo: TIntegerField;
    SpeedButton3: TSpeedButton;
    QConduceent_numero: TIntegerField;
    DBText1: TDBText;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    btBuscaCli: TSpeedButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edCliente: TEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    btbuscasup: TSpeedButton;
    Label10: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    edProveedor: TEdit;
    DBEdit4: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    QConducesup_codigo: TIntegerField;
    btBuscaProdProv: TSpeedButton;
    btfactura: TSpeedButton;
    QConducefac_forma: TStringField;
    QConducetfa_codigo: TIntegerField;
    QConducefac_numero: TIntegerField;
    QDetalledet_facturado: TBCDField;
    TabSheet3: TTabSheet;
    QConduceCamionID: TIntegerField;
    Label15: TLabel;
    DBEdit16: TDBEdit;
    btcamion: TSpeedButton;
    QConduceTicket: TStringField;
    QConduceMarca: TStringField;
    QConduceModelo: TStringField;
    QConducePlaca: TStringField;
    QConduceChofer: TStringField;
    QConduceMetraje: TBCDField;
    QConduceCompania: TStringField;
    memocamion: TMemo;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    lbpendiente: TLabel;
    btPrecio: TSpeedButton;
    btcotizacion: TSpeedButton;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Grid: TDBGrid;
    Panel3: TPanel;
    bteliminacuenta: TSpeedButton;
    btbuscacuenta: TSpeedButton;
    QCuentas: TADOQuery;
    QCuentascat_cuenta: TStringField;
    QCuentascat_nombre: TStringField;
    QCuentasdet_origen: TStringField;
    QCuentasdet_monto: TBCDField;
    QCuentasemp_codigo: TIntegerField;
    QCuentassuc_codigo: TIntegerField;
    QCuentasdet_secuencia: TIntegerField;
    dsCuentas: TDataSource;
    QCuentascon_numero: TIntegerField;
//    GridCuentas: TDBGrid;
//    GridCuentas: TDBGridObj;
    QCentro: TADOQuery;
    QCentroemp_codigo: TIntegerField;
    QCentrocon_numero: TIntegerField;
    QCentrocen_codigo: TIntegerField;
    QCentrodet_secuencia: TIntegerField;
    QCentrocen_nombre: TStringField;
    QCentrodet_monto: TBCDField;
    QCentrosuc_codigo: TIntegerField;
    QCentrocat_cuenta: TStringField;
    QCentrocen_referencia: TStringField;
    QCentrosub_referencia: TStringField;
    QCentrosub_secuencia: TIntegerField;
    PopupMenu1: TPopupMenu;
    Crearnotaalproducto1: TMenuItem;
    Vercombodelproducto1: TMenuItem;
    Escalas1: TMenuItem;
    N1: TMenuItem;
    Consultarmovimiento1: TMenuItem;
    N2: TMenuItem;
    Pantalladeproductos1: TMenuItem;
    Ajustedeinventario1: TMenuItem;
    QDetalleUnidadID: TStringField;
    QDetallepro_unidad_medida: TStringField;
    QDetalledet_cantempaque: TBCDField;
    QUnidades: TADOQuery;
    QUnidadesPrecio: TBCDField;
    QUnidadesCantidad: TBCDField;
    QUnidadesNombre: TStringField;
    QUnidadesCredito: TBCDField;
    QUnidadesMinimo: TBCDField;
    QUnidadesUnidadID: TStringField;
    QDetalleMedida_Precio1: TBCDField;
    QDetalleMedida_Precio2: TBCDField;
    QDetalleMedida_Precio3: TBCDField;
    QDetalleMedida_Precio4: TBCDField;
    QDetalledet_cant_unidad_medida: TBCDField;
    spcentros: TSpeedButton;
    Label18: TLabel;
    QDetallepro_ctacosto: TStringField;
    QDetallepro_ctainvent: TStringField;
    QDetallepro_ctaingreso: TStringField;
    QDetallepro_ctadescuento: TStringField;
    Panel1: TPanel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    lbBAL: TStaticText;
    lbDB: TStaticText;
    lbCR: TStaticText;
    dsSerie: TDataSource;
    Panel4: TPanel;
    dsMsnExistencia: TDataSource;
    QMsnExistencia: TADOQuery;
    QMsnExistenciaDISPONIBLE2: TStringField;
    dblExistencia: TDBText;
    QCdadDesp: TADOQuery;
    QCdadDespDET_CANTIDAD: TFloatField;
    QDetallepro_Serializado: TStringField;
    QConduceinv_existencia_cero: TStringField;
    edt1: TEdit;
    DBGrid_1: TDBGrid;
    QSelectIncrem1: TADOQuery;
    DS_1: TDataSource;
    QDetalleENTREGA_CANT: TCurrencyField;
    QDetalleCOT_CANTIDAD: TCurrencyField;
    qUpdateCot: TADOQuery;
    mmo1: TMemo;
    chkMail: TCheckBox;
    pnCorreo: TPanel;
    lbLocSuc: TLabel;
    dbedtcont_numeroSucursal: TDBEdit;
    btLocalidad: TSpeedButton;
    TSucLoc: TEdit;
    QConducecont_numeroSucursal: TStringField;
    qActulizaProd: TADOQuery;
    btnConcepto: TSpeedButton;
    dbedtCON_CONCEPTO1: TDBEdit;
    dbedtCON_CONCEPTO2: TDBEdit;
    QConduceCON_CONCEPTO1: TStringField;
    QConduceCON_CONCEPTO2: TStringField;
    GridCuentas: TDBGrid;
    QConduceCON_TOTAL: TCurrencyField;
    MD_Detalle: TdxMemData;
    MD_Detallepro_codigo: TIntegerField;
    MD_Detalledet_cantidad: TFloatField;
    MD_Detalledet_secuencia: TIntegerField;
    MD_Detallepro_unidad_medida: TStringField;
    qModificaExistencia: TADOQuery;
    qModificaExistencia2: TADOQuery;
    QConduceCON_FECHA_HORA: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btBuscaCliClick(Sender: TObject);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure QConduceNewRecord(DataSet: TDataSet);
    procedure QConduceBeforePost(DataSet: TDataSet);
    procedure QDetalleBeforePost(DataSet: TDataSet);
    procedure QDetalleAfterDelete(DataSet: TDataSet);
    procedure QDetalleAfterPost(DataSet: TDataSet);
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure QDetallePRO_CODIGOChange(Sender: TField);
    procedure QDetallePRO_RFABRICChange(Sender: TField);
    procedure QDetallePRO_RORIGINALChange(Sender: TField);
    procedure btGrabarClick(Sender: TObject);
    procedure btLimpiarClick(Sender: TObject);
    procedure btBuscarClick(Sender: TObject);
    procedure btEliminaClick(Sender: TObject);
    procedure btBuscaProdClick(Sender: TObject);
    procedure GridColEnter(Sender: TObject);
    procedure GridEnter(Sender: TObject);
    procedure GridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btSalirClick(Sender: TObject);
    procedure QConduceALM_CODIGOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure dsConduceDataChange(Sender: TObject; Field: TField);
    procedure QConduceAfterEdit(DataSet: TDataSet);
    procedure QDetalleAfterEdit(DataSet: TDataSet);
    procedure QDetalleAfterInsert(DataSet: TDataSet);
    procedure btEscalasClick(Sender: TObject);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure QDetalleDET_MEDIDAChange(Sender: TField);
    procedure btBuscaClienteClick(Sender: TObject);
    procedure btpedidoClick(Sender: TObject);
    procedure DBEdit10Click(Sender: TObject);
    procedure QConduceSUC_CODIGOChange(Sender: TField);
    procedure btalmacenClick(Sender: TObject);
    procedure rgtipoClick(Sender: TObject);
    procedure btdeptoClick(Sender: TObject);
    procedure QConduceDEP_CODIGOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure QConduceCalcFields(DataSet: TDataSet);
    procedure QDetalleNewRecord(DataSet: TDataSet);
    procedure btVendedorClick(Sender: TObject);
    procedure QConduceVEN_CODIGOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btserieClick(Sender: TObject);
    procedure btserieClick2(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure dsConduceStateChange(Sender: TObject);
    procedure edProveedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btbuscasupClick(Sender: TObject);
    procedure btBuscaProdProvClick(Sender: TObject);
    procedure btfacturaClick(Sender: TObject);
    procedure btcamionClick(Sender: TObject);
    procedure dsDetalleDataChange(Sender: TObject; Field: TField);
    procedure QConducePlacaChange(Sender: TField);
    procedure btPrecioClick(Sender: TObject);
    procedure btcotizacionClick(Sender: TObject);
    procedure bteliminacuentaClick(Sender: TObject);
    procedure btbuscacuentaClick(Sender: TObject);
    procedure QCuentascat_cuentaChange(Sender: TField);
    procedure GridCuentasColEnter(Sender: TObject);
    procedure GridCuentasEnter(Sender: TObject);
    procedure GridCuentasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GridCuentasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure spcentrosClick(Sender: TObject);
    procedure Crearnotaalproducto1Click(Sender: TObject);
    procedure Vercombodelproducto1Click(Sender: TObject);
    procedure Escalas1Click(Sender: TObject);
    procedure Consultarmovimiento1Click(Sender: TObject);
    procedure Pantalladeproductos1Click(Sender: TObject);
    procedure Ajustedeinventario1Click(Sender: TObject);
    procedure QDetallepro_unidad_medidaChange(Sender: TField);
    procedure QDetalleBeforeEdit(DataSet: TDataSet);
    procedure dsSerieDataChange(Sender: TObject; Field: TField);
    procedure QDetalleDET_CANTIDADGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure QSerieNewRecord(DataSet: TDataSet);
    procedure QSerieAfterInsert(DataSet: TDataSet);
    procedure DBGrid_1DblClick(Sender: TObject);
    procedure DBGrid_1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure dbedtcont_numeroSucursalChange(Sender: TObject);
    procedure dbedtcont_numeroSucursalKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure btLocalidadClick(Sender: TObject);
    procedure btnConceptoClick(Sender: TObject);
    procedure QConduceCON_ITBISChange(Sender: TField);
    procedure QConduceCON_TOTALChange(Sender: TField);
    procedure QCuentasAfterPost(DataSet: TDataSet);
    procedure QConduceAfterOpen(DataSet: TDataSet);
  private
    vCantActual, vl_balance, vl_conduce: Double;
    vSer, DesactivarCargaProductos: Boolean;
    vl_dest, vl_tipoclie, vl_clienteN, vl_asunto, vl_factnum, vl_adjunto1, vl_adjunto2, vl_cuerpo: string;
    procedure EnvioMail(Reporte: TQuickRep; Tipo: string);
    procedure BorraSerial(vCod_Producto: string);
    function Producto_sin_Serializar(const key: string): boolean;
  public
    { Public declarations }
    cantidad_desp: Double;
    Sec, VL_ACCION: integer;
    Precio, CtaItbis, CtaInventario, CtaConcepto : string;
    Totaliza: boolean;
    SubTotal, Total, Debitos, Creditos: Double;
    procedure Totalizar;
    procedure TotalizarCuentas;
    procedure Imp40Columnas;
    procedure VerificaMedida;
    procedure BuscaFactura(num, suc, tfa: integer; forma: string);
  end;

var
  frmConduce: TfrmConduce;
  gFlagActualido: boolean = false;

implementation

uses
  SIGMA01, SIGMA00, RVENTA38, PVENTA33, PVENTA41, PVENTA34, PVENTA42, SIGMA08,
  PVENTA121, PVENTA117, PVENTA186, PVENTA15, PVENTA138, PVENTA36, StrUtils,
  RVENTA127, DateUtils, PVENTA37, PVENTA43, PVENTA10, PVENTA239, PVenta240;

{$R *.DFM}

procedure TfrmConduce.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?', mtconfirmation, [mbyes, mbno], 0) = mrno then
    Action := caNone
    else
    Action := cafree;
end;

procedure TfrmConduce.FormPaint(Sender: TObject);
begin
  frmConduce.top := 5;
  frmConduce.left := 0;
end;

procedure TfrmConduce.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_f10 then
    close;
  if Key = vk_f2 then
    btGrabarClick(Self);
  if Key = vk_f3 then
    btLimpiarClick(Self);
  //if key = vk_f6     then btEliminaClick(Self);
  if Key = vk_f5 then
    btBuscaCliClick(self);
end;

procedure TfrmConduce.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(vk_return) then
  begin
    if (activecontrol.classtype <> tdbgrid) and (activecontrol.classtype <> TDBGridObj) then
    begin
      perform(wm_nextdlgctl, 0, 0);
      Key := #0;
    end;
  end;
end;

procedure TfrmConduce.FormActivate(Sender: TObject);
begin
  if not QConduce.active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    QConduce.Parameters.parambyname('emp').Value := dm.vp_cia;
    QConduce.Parameters.parambyname('numero').Value := -1;
    QConduce.Parameters.parambyname('suc').Value := -1;
    QConduce.open;
    QConduce.insert;
    chkMail.Checked := DM.QParametrosPar_Envio_Conduce_Correo.Value;
  end;
  QMsnExistencia.Active := true;

 
end;

procedure TfrmConduce.FormCreate(Sender: TObject);
var
  a: integer;
begin

  vCantActual := 0;
  gFlagActualido := false;
  DBEdit5.Enabled := dm.QParametrospar_modifica_fecha_factura.Value = 'True';
  if (dm.QParametrospar_fac_preimpresa.Value = 'False') or (dm.QParametrospar_formato_preimpreso.Value <> 'QRAgregados') then
  begin
    TabSheet3.Destroy;
  end;

  for a := 0 to (Sender as TForm).ComponentCount - 1 do
  begin
    if Components[a].ClassType = tdbedit then
    begin
      (Components[a] as tdbedit).OnEnter := frmMain.Entra;
      (Components[a] as tdbedit).OnExit := frmMain.sale;
    end;
  end;

  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
    Grid.Columns[0].FieldName := 'PRO_CODIGO'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
    Grid.Columns[0].FieldName := 'PRO_RFABRIC'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
    Grid.Columns[0].FieldName := 'PRO_RORIGINAL';

  if dm.QParametrospar_visualizadesc.Value <> 'True' then
  begin
    Grid.Columns[8].Destroy;
    Grid.Columns[1].Width := Grid.Columns[1].Width + 35;
  end;

  if dm.QParametrosPAR_FACESCALA.Value <> 'True' then
  begin
    Grid.Columns[6].Destroy;
    Grid.Columns[1].Width := Grid.Columns[1].Width + 30;
  end;

  if dm.QParametrospar_inv_unidad_medida.Value <> 'True' then
  begin
    Grid.Columns[5].Destroy;
    Grid.Columns[1].Width := Grid.Columns[1].Width + 30;
  end;

  if dm.QParametrosPAR_FACMEDIDA.Value <> 'True' then
  begin
    Grid.Columns[4].Destroy;
    Grid.Columns[3].Destroy;
    Grid.Columns[1].Width := Grid.Columns[1].Width + 80;
  end;

  if dm.QParametrosPAR_INVMOSTRARVENCE.Value <> 'True' then
  begin
    Grid.Columns[Grid.Columns.Count - 2].Destroy;
    Grid.Columns[1].Width := Grid.Columns[1].Width + 55;
  end;

  { if dm.QUsuariosusu_solo_conduce.Value = True then begin
  rgtipo.ItemIndex := 1;
  rgtipoClick(Sender);
  frmConduce.rgtipo.Enabled := False;
  end;
  if dm.QUsuariosusu_solo_conduce.Value = False then begin
  rgtipo.ItemIndex := 0;
  rgtipoClick(Sender);
  frmConduce.rgtipo.Enabled := True;
  end;}
end;

procedure TfrmConduce.btBuscaCliClick(Sender: TObject);
begin
  Search.Query.clear;
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Referencia');
  Search.AliasFields.Add('Telefono');
  Search.AliasFields.Add('C�dula');
  Search.AliasFields.Add('C�digo');
  Search.Query.add('select cli_nombre, cli_referencia, cli_telefono, cli_cedula, cli_codigo');
  if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
    Search.ResultField := 'cli_codigo'
  else
    Search.ResultField := 'cli_referencia';
  Search.Query.add('from clientes');
  Search.Query.add('where emp_codigo = ' + inttostr(dm.vp_cia));
  Search.Query.add('and cli_Status = ' + #39 + 'ACT' + #39);
  Search.Title := 'Listado de Clientes';
  if Search.execute then
  begin
    edCliente.text := search.valuefield;
    edCliente.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cli_codigo, cli_precio, cli_nombre, cli_referencia,');
    dm.Query1.sql.add('cli_direccion, cli_localidad, cli_telefono, cli_fax,');
    dm.Query1.sql.add('ven_codigo');
    dm.Query1.sql.add('from clientes');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and cli_Status = ' + #39 + 'ACT' + #39);
    if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
    begin
      dm.Query1.sql.add('and cli_codigo = :cli');
      dm.Query1.Parameters.parambyname('cli').Value := strtoint(search.valuefield);
    end
    else
    begin
      dm.Query1.sql.add('and cli_referencia = :cli');
      dm.Query1.Parameters.parambyname('cli').Value := search.valuefield;
    end;
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.open;
    Precio := dm.Query1.fieldbyname('cli_precio').asstring;
    QConduceCON_NOMBRE.value := dm.Query1.fieldbyname('cli_nombre').asstring;
    QConduceCLI_CODIGO.value := dm.Query1.fieldbyname('cli_Codigo').asinteger;
    QConduceCLI_REFERENCIA.value := dm.Query1.fieldbyname('cli_referencia').asstring;
    QConduceCON_DIRECCION.Value := dm.Query1.fieldbyname('cli_direccion').asstring;
    QConduceCON_LOCALIDAD.Value := dm.Query1.fieldbyname('cli_localidad').asstring;
    QConduceCON_TELEFONO.Value := dm.Query1.fieldbyname('cli_telefono').asstring;
    QConduceCON_FAX.Value := dm.Query1.fieldbyname('cli_fax').asstring;
    if not dm.Query1.fieldbyname('ven_codigo').isnull then
      QConduceVEN_CODIGO.Value := dm.Query1.fieldbyname('ven_codigo').AsInteger;
    edCliente.setfocus;
  end;
end;

procedure TfrmConduce.edClienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_return then
  begin
    if trim(edCliente.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select cli_codigo, cli_precio, cli_nombre, cli_referencia,');
      dm.Query1.sql.add('cli_direccion, cli_localidad, cli_telefono, cli_fax,');
      dm.Query1.sql.add('ven_codigo');
      dm.Query1.sql.add('from clientes');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and cli_Status = ' + #39 + 'ACT' + #39);
      if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
      begin
        dm.Query1.sql.add('and cli_codigo = :cli');
        dm.Query1.Parameters.parambyname('cli').Value := strtoint(trim(edCliente.text));
      end
      else
      begin
        dm.Query1.sql.add('and cli_referencia = :cli');
        dm.Query1.Parameters.parambyname('cli').Value := trim(edCliente.text)
      end;
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.open;
      Precio := dm.Query1.fieldbyname('cli_precio').asstring;
      QConduceCON_NOMBRE.value := dm.Query1.fieldbyname('cli_nombre').asstring;
      QConduceCLI_CODIGO.value := dm.Query1.fieldbyname('cli_Codigo').asinteger;
      QConduceCLI_REFERENCIA.value := dm.Query1.fieldbyname('cli_referencia').asstring;
      QConduceCON_DIRECCION.Value := dm.Query1.fieldbyname('cli_direccion').asstring;
      QConduceCON_LOCALIDAD.Value := dm.Query1.fieldbyname('cli_localidad').asstring;
      QConduceCON_TELEFONO.Value := dm.Query1.fieldbyname('cli_telefono').asstring;
      QConduceCON_FAX.Value := dm.Query1.fieldbyname('cli_fax').asstring;
      QConduceVEN_CODIGO.Value := dm.Query1.fieldbyname('ven_codigo').AsInteger;
    end;
  end;
end;

procedure TfrmConduce.QConduceNewRecord(DataSet: TDataSet);
var
  a: integer;
begin
    DBLookupComboBox2.Enabled := True;
    dbAlmacen.Enabled         := DBLookupComboBox2.Enabled;
    btalmacen.Enabled         := DBLookupComboBox2.Enabled;
    btBuscaProd.Enabled       := DBLookupComboBox2.Enabled;
    Grid.Enabled              := DBLookupComboBox2.Enabled;

  if dm.QUsuariosusu_solo_conduce.Value = True then begin
  frmConduce.rgtipo.Enabled := False;
  frmConduce.rgtipo.ItemIndex := 1;
  end
  else
  begin
  frmConduce.rgtipo.Enabled := True;
  frmConduce.rgtipo.ItemIndex := 0;
  end;

  VL_ACCION := 1;
  //unidades de medida
  if dm.QParametrospar_inv_unidad_medida.Value = 'True' then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select Nombre from UnidadMedida');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Open;

    if dm.QParametrosPAR_FACMEDIDA.Value <> 'True' then
    begin
      Grid.Columns[3].PickList.Clear;
      dm.Query1.DisableControls;
      while not dm.Query1.Eof do
      begin
        Grid.Columns[3].PickList.Add(dm.Query1.fieldByName('Nombre').AsString);
        dm.Query1.Next;
      end;
    end
    else
    begin
      Grid.Columns[5].PickList.Clear;
      dm.Query1.DisableControls;
      while not dm.Query1.Eof do
      begin
        Grid.Columns[5].PickList.Add(dm.Query1.fieldByName('Nombre').AsString);
        dm.Query1.Next;
      end;
    end;

    dm.Query1.EnableControls;
  end;

  if (dm.QParametrospar_fac_preimpresa.Value = 'True') and (dm.QParametrospar_formato_preimpreso.Value = 'QRAgregados') then
  begin
    memocamion.Lines.Clear;
    rgtipo.ItemIndex := 1;
    rgtipoClick(self);
  end
  else
    PageControl1.ActivePageIndex := 0;

  Total := 0;
  Totaliza := True;
  tAlmacen.text := '';
  tVendedor.Text := '';
  edCliente.Text := '';
  CtaConcepto := '';
  CtaInventario := '';
  CtaItbis := '';
  //Ins := True;

  QConduceSUC_CODIGO.Value := QSucursalsuc_codigo.Value;
  QConduceEMP_CODIGO.value := dm.vp_cia;
  DBEdit5.ReadOnly := False;
  QConduceCON_FECHA.value := date;
  QConduceCON_FECHA_HORA.Value := DM.getFechaBDA;
  QConduceCON_STATUS.value := 'EMI';
  QConduceCON_TOTAL.value := 0;
  QCOnduceUSU_CODIGO.value := dm.Usuario;
  QConduceCON_ITBIS.Value := 0;
  QConduceCON_DESCUENTO.Value := 0;

  QDetalle.EnableControls;
  QDetalle.close;
  QDetalle.Parameters.parambyname('emp').Value := dm.vp_cia;
  QDetalle.Parameters.parambyname('num').Value := -1;
  QDetalle.Parameters.parambyname('suc').Value := -1;
  QDetalle.Parameters.parambyname('dep').Value := -1;
  QDetalle.open;

  with QSerie do
  begin
    DisableControls;
    close;
    Parameters.ParamByName('emp').Value := QConduceEMP_CODIGO.Value;
    Parameters.ParamByName('suc').Value := QConduceSUC_CODIGO.Value;
    Parameters.ParamByName('numero').Value := QConduceCON_NUMERO.Value;
    open;
    EnableControls;
  end;

  QCuentas.close;
  QCuentas.Parameters.parambyname('emp').Value := dm.vp_cia;
  QCuentas.Parameters.parambyname('con').Value := -1;
  QCuentas.Parameters.parambyname('suc').Value := -1;
  QCuentas.open;

  QCentro.close;
  QCentro.Parameters.parambyname('emp').Value := dm.vp_cia;
  QCentro.Parameters.parambyname('num').Value := -1;
  QCentro.Parameters.parambyname('suc').Value := -1;
  QCentro.open;

 { if dm.QUsuariosusu_solo_conduce.Value = True then begin
  rgtipo.ItemIndex := 1;
  rgtipoClick(Self);
  frmConduce.rgtipo.Enabled := False;
  end;
  if dm.QUsuariosusu_solo_conduce.Value = False then begin
  rgtipo.ItemIndex := 0;
  rgtipoClick(Self);
  frmConduce.rgtipo.Enabled := True;
  end;}
end;

procedure TfrmConduce.QConduceBeforePost(DataSet: TDataSet);
var
  alma: integer;
begin

  if QConduce.state = dsinsert then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select isnull(max(con_numero),0) as maximo');
    dm.Query1.sql.add('from conduce');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and suc_codigo = :suc');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;
    dm.Query1.open;
    QConduceCON_NUMERO.value := dm.Query1.fieldbyname('maximo').asinteger + 1;
  end
  else
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select alm_codigo from conduce');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and con_numero = :num');
    dm.Query1.sql.add('and suc_codigo = :suc');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('num').Value := QConduceCON_NUMERO.value;
    dm.Query1.Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;
    dm.Query1.Open;
    alma := dm.Query1.FieldByName('alm_codigo').asinteger;

    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('execute pr_graba_conduce :emp, :suc, :num, :alm, 2, :usu');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('num').Value := QConduceCON_NUMERO.value;
    dm.Query1.Parameters.parambyname('alm').Value := alma;
    dm.Query1.Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;
    dm.Query1.Parameters.parambyname('usu').Value := dm.vp_usuario;
    dm.Query1.ExecSQL;

  end;
end;

procedure TfrmConduce.QDetalleBeforePost(DataSet: TDataSet);
begin
if QDetalleDET_CANTIDAD.IsNull then begin
    showmessage('CANTIDAD DEL CONDUCE NO PUEDE ESTAR EN BLANCO' + #13 + 'FAVOR REVISAR');
    Abort;
end;

if QDetalleDET_CANTIDAD.Value<0 then begin
    showmessage('CANTIDAD DEL CONDUCE NO PUEDE SER NEGATIVO' + #13 + 'FAVOR REVISAR');
    Abort;
end;


  if QConducefac_numero.Value > 0 then
  begin
    if format('%10.2f', [QDetalleDET_CANTIDAD.value]) > format('%10.2f', [QDetalledet_facturado.value]) then
    begin
      showmessage('CANTIDAD DEL CONDUCE NO PUEDE SER MAYOR A LA' + #13 + 'CANTIDAD RESTANTE PARA DESPACHAR DE ESTA FACTURA');
      QDetalleDET_CANTIDAD.clear;
      Abort;
    end;
  end
  else
if (QDetalleCOT_CANTIDAD.Value > 0) and (QDetalleCOT_CANTIDAD.Value < (QDetalleDET_CANTIDAD.Value + QDetalleENTREGA_CANT.Value)) then
  begin
    ShowMessage('LA CANTIDAD A ENTREGAR ES MAYOR A LA PRESUPUESTADA......');
    QDetalleDET_CANTIDAD.Clear;
    Abort;
  end
  else
  begin
    QDetalleDET_CONITBIS.value := UpperCase(QDetalleDET_CONITBIS.value);
    // buscando lote
    if QDetalleDET_VENCE.Value = 'True' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select ven_lote from provence');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and pro_codigo = :pro');
      dm.Query1.SQL.Add('and ven_fecha = :fec');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('fec').Value := QDetalleDET_FECHAVENCE.Value;
      dm.Query1.Open;
      QDetalleDET_LOTE.Value := dm.Query1.FieldByName('ven_lote').AsInteger;
    end
    else
      QDetalleDET_LOTE.value := 0;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select * from pr_verifica_disp (:emp, :alm, :pro, :can, :med, :usu, :suc, :tfa, :for, :num)');
    //dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    //if dbAlmacen.Text = '' then
    //QConduceALM_CODIGO.Value := 1;
    dm.Query1.Parameters.ParamByName('alm').Value := StrToInt(dbAlmacen.Text);
    dm.Query1.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;

    if gFlagActualido then
    //se agrego para controlar que cuando se modifica un conduce , si se uso una
    //cantidad de 15 y luego se quiere agregar 3 mas el sistema no permitia facturar las 3 que estan de diferencia
    begin
{        if (cantidad_desp > 0) then
        begin
          if (QDetalleDET_CANTIDAD.Value > cantidad_desp) then
            cantidad_desp := QDetalleDET_CANTIDAD.Value - cantidad_desp
          else
             cantidad_desp := cantidad_desp - QDetalleDET_CANTIDAD.Value;
        end;

        if cantidad_desp <=0 then
          cantidad_desp := QDetalleDET_CANTIDAD.Value;
        dm.Query1.Parameters.ParamByName('can').Value  :=  QDetalleDET_CANTIDAD.AsFloat - cantidad_desp;
           //}
      QCdadDesp.Close;  {2017 05 30}
      QCdadDesp.Open;
      dm.Query1.Parameters.ParamByName('can').Value := QDetalleDET_CANTIDAD.AsFloat - QCdadDespDET_CANTIDAD.AsFloat;
    end
    else
      dm.Query1.Parameters.ParamByName('can').Value := QDetalleDET_CANTIDAD.Value;
      if QDetalleDET_MEDIDA.Text = '' THEN
    dm.Query1.Parameters.ParamByName('med').Value := 'UND' ELSE 
    dm.Query1.Parameters.ParamByName('med').Value := QDetalleDET_MEDIDA.Value;
    dm.Query1.Parameters.ParamByName('usu').Value := dm.Usuario;
    dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    dm.Query1.Parameters.ParamByName('tfa').Value := 0;
    dm.Query1.Parameters.ParamByName('for').Value := 0;
    dm.Query1.Parameters.ParamByName('num').Value := 0;
    //dm.Query1.Parameters.ParamByName('emp2').Value := QConduceEMP_CODIGO.Value;
    dm.Query1.Open;

    if dm.Query1.FieldByName('facturar').AsString = 'False' then
    begin
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('update productos set pro_realizar_pedido = ' + QuotedStr('True'));
      Query1.SQL.Add('where emp_codigo = :emp');
      Query1.SQL.Add('and pro_codigo = :pro');
      Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      Query1.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
      Query1.ExecSQL;
      MessageDlg('NO HAY SUFICIENTE DE ESTE PRODUCTO PARA' + #13 + 'FACTURAR ESTA CANTIDAD', mtError, [mbok], 0);

      //Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
      QDetalleDET_CANTIDAD.Clear;
      Grid.SelectedIndex := 2;
      Abort;
    end
  end;

  if ((dm.QParametrospar_formato_preimpreso.Text = 'Sarita & Asociados') AND
          (DM.QParametrospar_fac_preimpresa.Value = 'True') ) then begin
  with dm.adoMultiUso do begin
  Close;
  SQL.Clear;
  SQL.Add('select cast(case when isnull(exi_Cantidad,0)<=0 then 1 else 0 end as bit) facturar, isnull(exi_Cantidad,0) cantidad');
  SQL.Add('from existencias');
  SQL.Add('where emp_codigo =  '+QuotedStr(QConduceEMP_CODIGO.Text)+ ' and alm_codigo = '+QuotedStr(QConduceALM_CODIGO.Text));
  SQL.Add('and pro_codigo = '+QuotedStr(QDetallePRO_CODIGO.Text));
  Open;
  if not dm.adoMultiUso.IsEmpty then
  if dm.adoMultiUso.FieldByName('facturar').Value = True then
  MessageDlg('NO HAY SUFICIENTE DE ESTE PRODUCTO PARA' + #13 + 'LA CANTIDAD ES MENOR O IGUAL A CERO '+FormatCurr('#,0.00',dm.adoMultiUso.fieldbyname('cantidad').asfloat), mtError, [mbok], 0);
  end;
  end;

  QMsnExistencia.Close;
  QMsnExistencia.Parameters.ParamByName('emp').Value := dm.vp_cia;
  //QMsnExistencia.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
  QMsnExistencia.Parameters.ParamByName('alm').Value := StrToInt(dbAlmacen.Text);
  QMsnExistencia.Parameters.ParamByName('usu').Value := dm.Usuario;
  QMsnExistencia.Open;
end;

procedure TfrmConduce.QDetalleAfterDelete(DataSet: TDataSet);
begin
  Totalizar;
end;

procedure TfrmConduce.QDetalleAfterPost(DataSet: TDataSet);
begin
  Totalizar;
  if QConduceALM_CODIGO.Value > 0 then begin
    DBLookupComboBox2.Enabled := False;
    dbAlmacen.Enabled         := DBLookupComboBox2.Enabled;
    btalmacen.Enabled         := DBLookupComboBox2.Enabled;
  end;
  IF QDetalle.RecordCount > 0 THEN
  DBEdit5.ReadOnly := True ELSE
  DBEdit5.ReadOnly := False;
end;

procedure TfrmConduce.QDetalleCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis: Double;
  a: integer;
begin

  if rgtipo.ItemIndex = 1 then
  begin
    if QDetalleDET_CONITBIS.value = 'S' then
    begin
      NumItbis := (QDetalleDET_ITBIS.asfloat / 100) + 1;
      if dm.QParametrospar_itbisincluido.Value = 'True' then
      begin
        Venta := QDetalleDET_PRECIO.value / NumItbis;
        QDetallePrecioItbis.value := Venta;
        QDetalleCalcDesc.value := (Venta * QDetalleDET_DESCUENTO.value) / 100;
        if QDetalleDET_CONITBIS.value = 'S' then
          QDetalleCalcItbis.value := ((Venta - QDetalleCalcDesc.value) * QDetalleDET_ITBIS.value) / 100
        else
          QDetalleCalcItbis.value := 0;

        QDetalleValor.value := (Venta - QDetalleCalcDesc.value + QDetalleCalcItbis.value) * QDetalleDET_CANTIDAD.value;
      end
      else
      begin
        Venta := QDetalleDET_PRECIO.value;
        QDetallePrecioItbis.value := Venta;
        QDetalleCalcDesc.value := (Venta * QDetalleDET_DESCUENTO.value) / 100;
        if QDetalleDET_CONITBIS.value = 'S' then
          QDetalleCalcItbis.value := ((Venta - QDetalleCalcDesc.value) * QDetalleDET_ITBIS.value) / 100
        else
          QDetalleCalcItbis.value := 0;

        QDetalleValor.value := (QDetallePrecioItbis.value - QDetalleCalcDesc.value) * QDetalleDET_CANTIDAD.value;
      end;
    end
    else
    begin
      if dm.QParametrospar_itbisincluido.Value = 'True' then
      begin
        Venta := QDetalleDET_PRECIO.value;
        QDetallePrecioItbis.value := Venta;
        QDetalleCalcDesc.value := (Venta * QDetalleDET_DESCUENTO.value) / 100;
        if QDetalleDET_CONITBIS.value = 'S' then
          QDetalleCalcItbis.value := ((Venta - QDetalleCalcDesc.value) * QDetalleDET_ITBIS.value) / 100
        else
          QDetalleCalcItbis.value := 0;

        QDetalleValor.value := (Venta - QDetalleCalcDesc.value + QDetalleCalcItbis.value) * QDetalleDET_CANTIDAD.value;
      end
      else
      begin
        Venta := QDetalleDET_PRECIO.value;
        QDetallePrecioItbis.value := Venta;
        QDetalleCalcDesc.value := (Venta * QDetalleDET_DESCUENTO.value) / 100;
        if QDetalleDET_CONITBIS.value = 'S' then
          QDetalleCalcItbis.value := ((Venta - QDetalleCalcDesc.value) * QDetalleDET_ITBIS.value) / 100
        else
          QDetalleCalcItbis.value := 0;

        QDetalleValor.value := (Venta - QDetalleCalcDesc.value) * QDetalleDET_CANTIDAD.value;
      end;
    end;
  end
  else
  begin
    //Unidad
    if QDetalleDET_CONITBIS.value = 'S' then
    begin
      NumItbis := strtofloat(format('%10.2f', [(QDetalleDET_ITBIS.asfloat / 100) + 1]));
      Venta := QDetalleDET_PRECIO.value;
      QDetallePrecioItbis.value := Venta;
      QDetalleCalcDesc.value := (Venta * QDetalleDET_DESCUENTO.value) / 100;
      QDetalleCalcItbis.value := ((Venta - QDetalleCalcDesc.value) * (NumItbis - 1));
      QDetalleValor.value := (Venta - QDetalleCalcDesc.value + QDetalleCalcItbis.value) * QDetalleDET_CANTIDAD.value;
    end
    else
    begin
      Venta := QDetalleDET_PRECIO.value;
      QDetallePrecioItbis.value := Venta;
      QDetalleCalcDesc.value := (Venta * QDetalleDET_DESCUENTO.value) / 100;
      QDetalleValor.value := (Venta - QDetalleCalcDesc.value) * QDetalleDET_CANTIDAD.value;
      QDetalleCalcItbis.value := 0;
    end;
  end;

  if trim(QDetalleDET_VENCE.Value) = 'False' then
    QDetalleDET_FECHAVENCE.ReadOnly := True
  else
    QDetalleDET_FECHAVENCE.ReadOnly := False;
  if trim(QDetalleDET_MANEJAESCALA.Value) = 'False' then
    QDetalleDET_ESCALA.ReadOnly := True
  else
    QDetalleDET_ESCALA.ReadOnly := False;
end;

procedure TfrmConduce.QDetallePRO_CODIGOChange(Sender: TField);
var
  CtaCosto, CtaInvent, CtaIngreso: string;
begin
  if rgtipo.ItemIndex = 0 then BEGIN
  IF QConduceCON_FECHA.Value < StrToDate(FormatDateTime('dd/mm/yyyy',DM.getFechaBDA)) THEN BEGIN
  IF QConduceALM_CODIGO.Value > 0 THEN BEGIN
  if DM.GetProductoAjustado(QConduceEMP_CODIGO.Value, QConduceALM_CODIGO.Value, QDetallePRO_CODIGO.Value, QConduceCON_FECHA.Value) = True then begin
  MessageDlg('ESTE PRODUCTO TIENE AJUSTE POSTERIOR A LA FECHA DE LA SALIDA,'+CHAR(13)+' NO ES POSIBLE AGREGAR ESTE PRODUCTO A ESTA SALIDA...',
             mtWarning,[MBOK],0);
  Exit;
  end;
  end;
  end;
  END;

  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
  begin
    if not QDetallePRO_CODIGO.isnull then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select pro_codigo, pro_nombre, pro_costo, pro_precio1,');
      dm.Query1.sql.add('pro_precio2, pro_precio3, pro_precio4, pro_servicio,');
      dm.Query1.sql.add('pro_roriginal, pro_rfabric, pro_itbis, pro_vence, pro_Escala,');
      dm.Query1.sql.add('PRO_COSTOEMPAQUE, UnidadID, pro_cantempaque, fam_codigo, pro_montoitbis,pro_serializado');
      dm.Query1.sql.add('from productos');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and pro_codigo = :cod');
      dm.Query1.sql.add('and pro_status = ' + QuotedStr('ACT'));
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.parambyname('cod').Value := QDetallePRO_CODIGO.value;
      dm.Query1.open;
      if dm.Query1.RecordCount > 0 then
      begin
        if dm.QContabpar_codifica_venta_familia.Value = 'True' then
        begin
          Query1.Close;
          Query1.SQL.Clear;
          Query1.SQL.Add('select f.fam_cta_costo, f.fam_cta_inventario, f.fam_cta_ingreso,');
          Query1.SQL.Add('f.fam_cta_descuento, p.par_ctaitbis from familias f');
          Query1.SQL.Add('inner join ContParametros p on f.emp_codigo = p.emp_codigo');
          Query1.SQL.Add('where f.emp_codigo = :emp');
          Query1.SQL.Add('and f.fam_codigo = :fam');
          Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
          Query1.Parameters.ParamByName('fam').Value := dm.Query1.fieldbyname('fam_codigo').AsInteger;
          Query1.Open;

          CtaCosto    := '';
          CtaInvent   := '';
          CtaItbis    := '';

          if Query1.RecordCount > 0 then
          begin
            CtaCosto := Query1.fieldbyname('fam_cta_costo').AsString;
            CtaInvent := Query1.fieldbyname('fam_cta_inventario').AsString;
            CtaItbis  := Query1.fieldbyname('par_ctaitbis').AsString;
            QDetallepro_ctacosto.Value := Query1.fieldbyname('fam_cta_costo').AsString;
            QDetallepro_ctainvent.Value := Query1.fieldbyname('fam_cta_inventario').AsString;
            QDetallepro_ctadescuento.Value := Query1.fieldbyname('fam_cta_descuento').AsString;
          end;
        end;

        if QConduceCON_CONCEPTO1.Value <> '' then
        begin
          Query1.Close;
          Query1.SQL.Clear;
          Query1.SQL.Add('select cat_cuenta from Conceptos');
          Query1.SQL.Add('WHERE emp_codigo = :emp AND con_nombre = :con');
          Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
          Query1.Parameters.ParamByName('con').Value := QConduceCON_CONCEPTO1.AsString;
          Query1.Open;

          CtaConcepto    := '';

          if Query1.RecordCount > 0 then
          begin
            CtaConcepto := Query1.fieldbyname('cat_cuenta').AsString;
          end;
        end;

        QDetalledet_cantempaque.Value := dm.Query1.fieldbyname('pro_cantempaque').asfloat;
        QDetalleDET_MANEJAESCALA.Value := dm.Query1.fieldbyname('pro_escala').asstring;
        QDetalleDET_VENCE.Value := dm.Query1.fieldbyname('pro_vence').asstring;
        QDetallePRO_RORIGINAL.value := dm.Query1.fieldbyname('pro_roriginal').asstring;
        QDetallePRO_RFABRIC.value := dm.Query1.fieldbyname('pro_rfabric').asstring;
        QDetallePRO_NOMBRE.value := dm.Query1.fieldbyname('pro_nombre').asstring;
        QDetalleDET_CONITBIS.value := dm.Query1.fieldbyname('pro_itbis').asstring;
        QDetalleDET_MANEJAESCALA.Value := dm.Query1.fieldbyname('pro_escala').asstring;
        if ((DM.QParametrospar_fac_preimpresa.Value = 'True') and (DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados')) then
        begin
          QDetalleDET_PRECIO1.Value := dm.Query1.fieldbyname('pro_costo').AsFloat;
          QDetalleDET_PRECIO2.Value := dm.Query1.fieldbyname('pro_costo').AsFloat;
          QDetalleDET_PRECIO3.Value := dm.Query1.fieldbyname('pro_costo').AsFloat;
        end;
        if not ((DM.QParametrospar_fac_preimpresa.Value = 'True') and (DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados')) then
        begin
          case rgtipo.ItemIndex of
            1:
              begin
                QDetalleDET_PRECIO.Value := dm.Query1.fieldbyname('pro_precio1').AsFloat;
                QDetalleDET_PRECIO1.Value := dm.Query1.fieldbyname('pro_precio1').AsFloat;
                QDetalleDET_PRECIO2.Value := dm.Query1.fieldbyname('pro_precio2').AsFloat;
                QDetalleDET_PRECIO3.Value := dm.Query1.fieldbyname('pro_precio3').AsFloat;
                QDetalleDET_PRECIO4.Value := dm.Query1.fieldbyname('pro_precio4').AsFloat;
              end;
            0:
              begin
                QDetalleDET_PRECIO.Value := dm.Query1.fieldbyname('pro_costo').AsFloat;
              end;
          end;
        end;
        QDetalleDET_PRECIO4.Value := dm.Query1.fieldbyname('pro_precio4').AsFloat;
        QDetalleDET_COSTOUND.Value := dm.Query1.fieldbyname('pro_costo').AsFloat;
        QDetalleDET_COSTOEMP.Value := dm.Query1.fieldbyname('pro_costoempaque').AsFloat;
        QDetalleDET_ITBIS.Value := dm.Query1.fieldbyname('pro_montoitbis').AsFloat;
        QDetalleUnidadID.Value := dm.Query1.fieldbyname('UnidadID').AsString;
        QDetallepro_serializado.Value := dm.Query1.fieldbyname('pro_serializado').AsString;

        if rgtipo.ItemIndex = 0 then
          VerificaMedida
        else
        begin
          if not ((DM.QParametrospar_fac_preimpresa.Value = 'True') and (DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados')) then
          begin
            if Trim(Precio) = '' then
              Precio := 'precio1';
            if Precio = 'Ninguno' then
            begin
              if (not QDetalleDET_MEDIDA.IsNull) and (dm.QParametrosPAR_FACMEDIDA.Value = 'True') then
              begin
                if dm.QParametrosPAR_PRECIOUND.Value <> 'Ninguno' then
                begin
                //Unidad
                  if QDetalleDET_MEDIDA.Value = 'Und' then
                    QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_' + dm.QParametrosPAR_PRECIOUND.Value).AsFloat;
                end;

                if dm.QParametrosPAR_PRECIOEMP.Value <> 'Ninguno' then
                begin
                //Empaque
                  if QDetalleDET_MEDIDA.Value = 'Emp' then
                    QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_' + dm.QParametrosPAR_PRECIOEMP.Value).AsFloat;
                end;
              end
              else if dm.QParametrosPAR_FACMEDIDA.Value = 'False' then
                QDetalleDET_PRECIO.value := QDetalle.FieldByName('det_precio1').AsFloat;
            end
            else if QDetalle.FieldByName('det_' + Precio).AsFloat > 0 then
              QDetalleDET_PRECIO.value := QDetalle.FieldByName('det_' + Precio).AsFloat
            else
              QDetalleDET_PRECIO.value := QDetalle.FieldByName('det_precio1').AsFloat;

            if QDetalleDET_ITBIS.AsFloat > 0 then
              QDetalleDET_CONITBIS.value := 'S'
            else
              QDetalleDET_CONITBIS.value := 'N';
          end;

        end;

        if ((DM.QParametrospar_fac_preimpresa.Value = 'True') and (DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados')) then
        begin
          QDetalleDET_PRECIO.Value := dm.Query1.fieldbyname('pro_costo').AsFloat;
        end;

        //buscando unidad de medida del producto
        if not QDetalleUnidadID.IsNull then
        begin
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('select Nombre from UnidadMedida');
          dm.Query1.SQL.Add('where emp_codigo = :emp');
          dm.Query1.SQL.Add('and UnidadID = :und');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
          dm.Query1.Parameters.ParamByName('und').Value := QDetalleUnidadID.AsString;
          dm.Query1.Open;
          if dm.Query1.RecordCount > 0 then
          begin
            QDetallepro_unidad_medida.Value := dm.Query1.FieldByName('Nombre').AsString;
            QDetalleDET_MEDIDA.Value := dm.Query1.FieldByName('Nombre').AsString;

            if dm.QParametrospar_inv_unidad_medida.Value = 'True' then
            begin
              //buscando precio por unidad de medida
              QUnidades.Close;
              QUnidades.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
              QUnidades.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
              QUnidades.Parameters.ParamByName('und').Value := QDetallepro_unidad_medida.Value;
              QUnidades.Open;
              QDetalleDET_PRECIO.Value := QUnidadesPrecio.Value;
              QDetalledet_cant_unidad_medida.Value := QUnidadesCantidad.AsFloat;
            end;
          end;
        end;

        IF rgtipo.ItemIndex = 0 then BEGIN
        if dm.QContabpar_codifica_venta_familia.Value = 'True' then
        begin
        {  //Cuentas de Costo
          if Trim(CtaCosto) <> '' then
          begin
            if not QCuentas.Locate('cat_cuenta', CtaCosto, []) then
            begin
              QCuentas.Append;
              QCuentascat_cuenta.Value := CtaCosto;
              QCuentasdet_origen.Value := 'Debito';
              QCuentasdet_monto.Value := (QDetalleDET_COSTOUND.Value * QDetalleDET_CANTIDAD.Value);
              QCuentas.Post;
            end
            else
            begin
              QCuentas.Edit;
              ;
              QCuentasdet_origen.Value := 'Debito';
              QCuentasdet_monto.Value := QCuentasdet_monto.Value + (QDetalleDET_COSTOUND.Value * QDetalleDET_CANTIDAD.Value);
              QCuentas.Post;
            end;
          end;
         }
          //Cuenta de Inventario
          if Trim(CtaInvent) <> '' then
          begin
            if not QCuentas.Locate('cat_cuenta', CtaInvent, []) then
            begin
              QCuentas.Append;
              QCuentascat_cuenta.Value := CtaInvent;
              QCuentasdet_origen.Value := 'Credito';
              QCuentasdet_monto.Value := (QDetalleDET_COSTOUND.Value * QDetalleDET_CANTIDAD.Value);
              QCuentas.Post;
            end
            else
            begin
              QCuentas.Edit;
              QCuentasdet_origen.Value := 'Credito';
              QCuentasdet_monto.Value := QCuentasdet_monto.Value + (QDetalleDET_COSTOUND.Value * QDetalleDET_CANTIDAD.Value);
              QCuentas.Post;
            end;
          end;


          end;

           //Cuenta de Itbis
          if Trim(CtaItbis) <> '' then
          begin
            if not QCuentas.Locate('cat_cuenta', CtaItbis, []) then
            begin
              QCuentas.Append;
              QCuentascat_cuenta.Value := CtaItbis;
              QCuentasdet_origen.Value := 'Credito';
              QCuentasdet_monto.Value := QConduceCON_ITBIS.Value;
              QCuentas.Post;
            end
            else
            begin
              QCuentas.Edit;
              QCuentasdet_origen.Value := 'Credito';
              QCuentasdet_monto.Value := QConduceCON_ITBIS.Value;
              QCuentas.Post;
            end;
          end;

           //Cuenta de Concepto
          if Trim(CtaConcepto) <> '' then
          begin
            if not QCuentas.Locate('cat_cuenta', CtaConcepto, []) then
            begin
              QCuentas.Append;
              QCuentascat_cuenta.Value := CtaConcepto;
              QCuentasdet_origen.Value := 'Debito';
              QCuentasdet_monto.Value := QConduceCON_TOTAL.Value;
              QCuentas.Post;
            end
            else
            begin
              QCuentas.Edit;
              QCuentasdet_origen.Value := 'Debito';
              QCuentasdet_monto.Value := QConduceCON_TOTAL.Value;
              QCuentas.Post;
            end;
          end;
      end;
      end;
    end;
  end;
end;

procedure TfrmConduce.QDetallePRO_RFABRICChange(Sender: TField);
var
  CtaCosto, CtaInvent, CtaIngreso: string;
begin
  if rgtipo.ItemIndex = 0 then BEGIN
  IF QConduceCON_FECHA.Value < StrToDate(FormatDateTime('dd/mm/yyyy',DM.getFechaBDA)) THEN BEGIN
  IF QConduceALM_CODIGO.Value > 0 THEN BEGIN
  if DM.GetProductoAjustado(QConduceEMP_CODIGO.Value, QConduceALM_CODIGO.Value, QDetallePRO_CODIGO.Value, QConduceCON_FECHA.Value) = True then begin
  MessageDlg('ESTE PRODUCTO TIENE AJUSTE POSTERIOR A LA FECHA DE LA SALIDA,'+CHAR(13)+' NO ES POSIBLE AGREGAR ESTE PRODUCTO A ESTA SALIDA...',
             mtWarning,[MBOK],0);
  Exit;
  end;
  end;
  end;
  END;

  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
  begin
    if not QDetallePRO_RFABRIC.isnull then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select pro_codigo, pro_nombre, pro_costo, pro_precio1,');
      dm.Query1.sql.add('pro_precio2, pro_precio3, pro_precio4, pro_servicio,');
      dm.Query1.sql.add('pro_roriginal, pro_rfabric, pro_itbis, pro_vence, pro_Escala,');
      dm.Query1.sql.add('PRO_COSTOEMPAQUE, UnidadID, pro_cantempaque, fam_codigo, pro_montoitbis');
      dm.Query1.sql.add('from productos ');
      dm.Query1.sql.add('where emp_codigo = :emp ');
      dm.Query1.sql.add('and pro_rfabric = :cod');
      dm.Query1.sql.add('and pro_status = ' + QuotedStr('ACT'));
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.parambyname('cod').Value := QDetallePRO_RFABRIC.value;
      dm.Query1.open;
      if dm.Query1.RecordCount > 0 then
      begin
        if dm.QContabpar_codifica_venta_familia.Value = 'True' then
        begin
          Query1.Close;
          Query1.SQL.Clear;
          Query1.SQL.Add('select f.fam_cta_costo, f.fam_cta_inventario, f.fam_cta_ingreso,');
          Query1.SQL.Add('f.fam_cta_descuento, p.par_ctaitbis from familias f');
          Query1.SQL.Add('inner join ContParametros p on f.emp_codigo = p.emp_codigo');
          Query1.SQL.Add('where f.emp_codigo = :emp');
          Query1.SQL.Add('and f.fam_codigo = :fam');
          Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
          Query1.Parameters.ParamByName('fam').Value := dm.Query1.fieldbyname('fam_codigo').AsInteger;
          Query1.Open;

          CtaCosto    := '';
          CtaInvent   := '';
          CtaItbis    := '';

          if Query1.RecordCount > 0 then
          begin
            CtaCosto := Query1.fieldbyname('fam_cta_costo').AsString;
            CtaInvent := Query1.fieldbyname('fam_cta_inventario').AsString;
            CtaItbis := Query1.fieldbyname('par_ctaitbis').AsString;
            QDetallepro_ctacosto.Value := Query1.fieldbyname('fam_cta_costo').AsString;
            QDetallepro_ctainvent.Value := Query1.fieldbyname('fam_cta_inventario').AsString;
            QDetallepro_ctadescuento.Value := Query1.fieldbyname('fam_cta_descuento').AsString;
          end;
        end;

        if QConduceCON_CONCEPTO1.Value <> '' then
        begin
          Query1.Close;
          Query1.SQL.Clear;
          Query1.SQL.Add('select cat_cuenta from Conceptos');
          Query1.SQL.Add('WHERE emp_codigo = :emp AND con_nombre = :con');
          Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
          Query1.Parameters.ParamByName('con').Value := QConduceCON_CONCEPTO1.AsString;
          Query1.Open;

          CtaConcepto    := '';

          if Query1.RecordCount > 0 then
          begin
            CtaConcepto := Query1.fieldbyname('cat_cuenta').AsString;
          end;
        end;

        QDetalledet_cantempaque.Value := dm.Query1.fieldbyname('pro_cantempaque').asfloat;
        QDetalleDET_MANEJAESCALA.Value := dm.Query1.fieldbyname('pro_escala').asstring;
        QDetalleDET_VENCE.Value := dm.Query1.fieldbyname('pro_vence').asstring;
        QDetallePRO_CODIGO.value := dm.Query1.fieldbyname('pro_codigo').asinteger;
        QDetallePRO_RORIGINAL.value := dm.Query1.fieldbyname('pro_roriginal').asstring;
        QDetallePRO_NOMBRE.value := dm.Query1.fieldbyname('pro_nombre').asstring;
        QDetalleDET_MANEJAESCALA.Value := dm.Query1.fieldbyname('pro_escala').asstring;
        if ((DM.QParametrospar_fac_preimpresa.Value = 'True') and (DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados')) then
        begin
          QDetalleDET_PRECIO1.Value := dm.Query1.fieldbyname('pro_costo').AsFloat;
          QDetalleDET_PRECIO2.Value := dm.Query1.fieldbyname('pro_costo').AsFloat;
          QDetalleDET_PRECIO3.Value := dm.Query1.fieldbyname('pro_costo').AsFloat;
        end;
        if not ((DM.QParametrospar_fac_preimpresa.Value = 'True') and (DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados')) then
        begin
          case rgtipo.ItemIndex of
            1:
              begin
                QDetalleDET_PRECIO.Value := dm.Query1.fieldbyname('pro_precio1').AsFloat;
                QDetalleDET_PRECIO1.Value := dm.Query1.fieldbyname('pro_precio1').AsFloat;
                QDetalleDET_PRECIO2.Value := dm.Query1.fieldbyname('pro_precio2').AsFloat;
                QDetalleDET_PRECIO3.Value := dm.Query1.fieldbyname('pro_precio3').AsFloat;
                QDetalleDET_PRECIO4.Value := dm.Query1.fieldbyname('pro_precio4').AsFloat;
              end;
            0:
              begin
                QDetalleDET_PRECIO.Value := dm.Query1.fieldbyname('pro_costo').AsFloat;
              end;
          end;
        end;

        QDetalleDET_COSTOUND.Value := dm.Query1.fieldbyname('pro_costo').AsFloat;
        QDetalleDET_COSTOEMP.Value := dm.Query1.fieldbyname('pro_costoempaque').AsFloat;
        QDetalleDET_ITBIS.Value := dm.Query1.fieldbyname('pro_montoitbis').AsFloat;
        QDetalleUnidadID.Value := dm.Query1.fieldbyname('UnidadID').AsString;

        if rgtipo.ItemIndex = 0 then
          VerificaMedida
        else
        begin
          if not ((DM.QParametrospar_fac_preimpresa.Value = 'True') and (DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados')) then
          begin
            if Trim(Precio) = '' then
              Precio := 'precio1';
            if Precio = 'Ninguno' then
            begin
              if (not QDetalleDET_MEDIDA.IsNull) and (dm.QParametrosPAR_FACMEDIDA.Value = 'True') then
              begin
                if dm.QParametrosPAR_PRECIOUND.Value <> 'Ninguno' then
                begin
                //Unidad
                  if QDetalleDET_MEDIDA.Value = 'Und' then
                    QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_' + dm.QParametrosPAR_PRECIOUND.Value).AsFloat;
                end;

                if dm.QParametrosPAR_PRECIOEMP.Value <> 'Ninguno' then
                begin
                //Empaque
                  if QDetalleDET_MEDIDA.Value = 'Emp' then
                    QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_' + dm.QParametrosPAR_PRECIOEMP.Value).AsFloat;
                end;
              end
              else if dm.QParametrosPAR_FACMEDIDA.Value = 'False' then
                QDetalleDET_PRECIO.value := QDetalle.FieldByName('det_precio1').AsFloat;
            end
            else if QDetalle.FieldByName('det_' + Precio).AsFloat > 0 then
              QDetalleDET_PRECIO.value := QDetalle.FieldByName('det_' + Precio).AsFloat
            else
              QDetalleDET_PRECIO.value := QDetalle.FieldByName('det_precio1').AsFloat;

            if QDetalleDET_ITBIS.AsFloat > 0 then
              QDetalleDET_CONITBIS.value := 'S'
            else
              QDetalleDET_CONITBIS.value := 'N';
          end;
        end;

        if not ((DM.QParametrospar_fac_preimpresa.Value = 'True') and (DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados')) then
        begin
          QDetalleDET_PRECIO.Value := QDetalleDET_PRECIO1.Value;
        end;

        //buscando unidad de medida del producto
        if not QDetalleUnidadID.IsNull then
        begin
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('select Nombre from UnidadMedida');
          dm.Query1.SQL.Add('where emp_codigo = :emp');
          dm.Query1.SQL.Add('and UnidadID = :und');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
          dm.Query1.Parameters.ParamByName('und').Value := QDetalleUnidadID.AsString;
          dm.Query1.Open;
          if dm.Query1.RecordCount > 0 then
          begin
            QDetallepro_unidad_medida.Value := dm.Query1.FieldByName('Nombre').AsString;
            QDetalleDET_MEDIDA.Value := dm.Query1.FieldByName('Nombre').AsString;

            if dm.QParametrospar_inv_unidad_medida.Value = 'True' then
            begin
              //buscando precio por unidad de medida
              QUnidades.Close;
              QUnidades.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
              QUnidades.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
              QUnidades.Parameters.ParamByName('und').Value := QDetallepro_unidad_medida.Value;
              QUnidades.Open;
              QDetalleDET_PRECIO.Value := QUnidadesPrecio.Value;
              QDetalledet_cant_unidad_medida.Value := QUnidadesCantidad.AsFloat;
            end;
          end;
        end;

if dm.QContabpar_codifica_venta_familia.Value = 'True' then
        begin
        {  //Cuentas de Costo
          if Trim(CtaCosto) <> '' then
          begin
            if not QCuentas.Locate('cat_cuenta', CtaCosto, []) then
            begin
              QCuentas.Append;
              QCuentascat_cuenta.Value := CtaCosto;
              QCuentasdet_origen.Value := 'Debito';
              QCuentasdet_monto.Value := (QDetalleDET_COSTOUND.Value * QDetalleDET_CANTIDAD.Value);
              QCuentas.Post;
            end
            else
            begin
              QCuentas.Edit;
              ;
              QCuentasdet_origen.Value := 'Debito';
              QCuentasdet_monto.Value := QCuentasdet_monto.Value + (QDetalleDET_COSTOUND.Value * QDetalleDET_CANTIDAD.Value);
              QCuentas.Post;
            end;
          end;
         }
          //Cuenta de Inventario
          if Trim(CtaInvent) <> '' then
          begin
            if not QCuentas.Locate('cat_cuenta', CtaInvent, []) then
            begin
              QCuentas.Append;
              QCuentascat_cuenta.Value := CtaInvent;
              QCuentasdet_origen.Value := 'Credito';
              QCuentasdet_monto.Value := (QDetalleDET_COSTOUND.Value * QDetalleDET_CANTIDAD.Value);
              QCuentas.Post;
            end
            else
            begin
              QCuentas.Edit;
              QCuentasdet_origen.Value := 'Credito';
              QCuentasdet_monto.Value := QCuentasdet_monto.Value + (QDetalleDET_COSTOUND.Value * QDetalleDET_CANTIDAD.Value);
              QCuentas.Post;
            end;
          end;

          //Cuenta de Itbis
          if Trim(CtaItbis) <> '' then
          begin
            if not QCuentas.Locate('cat_cuenta', CtaItbis, []) then
            begin
              QCuentas.Append;
              QCuentascat_cuenta.Value := CtaItbis;
              QCuentasdet_origen.Value := 'Credito';
              QCuentasdet_monto.Value := QConduceCON_ITBIS.Value;
              QCuentas.Post;
            end
            else
            begin
              QCuentas.Edit;
              QCuentasdet_origen.Value := 'Credito';
              QCuentasdet_monto.Value :=  QConduceCON_ITBIS.Value;
              QCuentas.Post;
            end;
          end;
          end;


           //Cuenta de Concepto
          if Trim(CtaConcepto) <> '' then
          begin
            if not QCuentas.Locate('cat_cuenta', CtaConcepto, []) then
            begin
              QCuentas.Append;
              QCuentascat_cuenta.Value := CtaConcepto;
              QCuentasdet_origen.Value := 'Debito';
              QCuentasdet_monto.Value := QConduceCON_TOTAL.Value;
              QCuentas.Post;
            end
            else
            begin
              QCuentas.Edit;
              QCuentasdet_origen.Value := 'Debito';
              QCuentasdet_monto.Value := QConduceCON_TOTAL.Value;
              QCuentas.Post;
            end;
          end;

      end;
    end;
  end;
end;

procedure TfrmConduce.QDetallePRO_RORIGINALChange(Sender: TField);
var
CtaCosto, CtaInvent, CtaIngreso: string;
begin
  if rgtipo.ItemIndex = 0 then BEGIN
  IF QConduceCON_FECHA.Value < StrToDate(FormatDateTime('dd/mm/yyyy',DM.getFechaBDA)) THEN BEGIN
  IF QConduceALM_CODIGO.Value > 0 THEN BEGIN
  if DM.GetProductoAjustado(QConduceEMP_CODIGO.Value, QConduceALM_CODIGO.Value, QDetallePRO_CODIGO.Value, QConduceCON_FECHA.Value) = True then begin
  MessageDlg('ESTE PRODUCTO TIENE AJUSTE POSTERIOR A LA FECHA DE LA SALIDA,'+CHAR(13)+' NO ES POSIBLE AGREGAR ESTE PRODUCTO A ESTA SALIDA...',
             mtWarning,[MBOK],0);
  Exit;
  end;
  end;
  end;
  END;

  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
  begin
    if not QDetallePRO_RORIGINAL.isnull then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select pro_codigo, pro_nombre, pro_costo, pro_precio1,');
      dm.Query1.sql.add('pro_precio2, pro_precio3, pro_precio4, pro_servicio,');
      dm.Query1.sql.add('pro_roriginal, pro_rfabric, pro_itbis, pro_vence, pro_Escala,');
      dm.Query1.sql.add('PRO_COSTOEMPAQUE, UnidadID, pro_cantempaque, fam_codigo, pro_montoitbis');
      dm.Query1.sql.add('from productos ');
      dm.Query1.sql.add('where emp_codigo = :emp ');
      dm.Query1.sql.add('and pro_roriginal = :cod');
      dm.Query1.sql.add('and pro_status = ' + QuotedStr('ACT'));
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.parambyname('cod').Value := QDetallePRO_RORIGINAL.value;
      dm.Query1.open;
      if dm.Query1.RecordCount > 0 then
      begin
        if dm.QContabpar_codifica_venta_familia.Value = 'True' then
        begin
          Query1.Close;
          Query1.SQL.Clear;
          Query1.SQL.Add('select f.fam_cta_costo, f.fam_cta_inventario, f.fam_cta_ingreso,');
          Query1.SQL.Add('f.fam_cta_descuento, p.par_ctaitbis from familias f');
          Query1.SQL.Add('inner join ContParametros p on f.emp_codigo = p.emp_codigo');
          Query1.SQL.Add('where f.emp_codigo = :emp');
          Query1.SQL.Add('and f.fam_codigo = :fam');
          Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
          Query1.Parameters.ParamByName('fam').Value := dm.Query1.fieldbyname('fam_codigo').AsInteger;
          Query1.Open;

          CtaCosto    := '';
          CtaInvent   := '';
          CtaItbis    := '';

          if Query1.RecordCount > 0 then
          begin
            CtaCosto := Query1.fieldbyname('fam_cta_costo').AsString;
            CtaInvent := Query1.fieldbyname('fam_cta_inventario').AsString;
            CtaItbis := Query1.fieldbyname('par_ctaitbis').AsString;
            QDetallepro_ctacosto.Value := Query1.fieldbyname('fam_cta_costo').AsString;
            QDetallepro_ctainvent.Value := Query1.fieldbyname('fam_cta_inventario').AsString;
            QDetallepro_ctadescuento.Value := Query1.fieldbyname('fam_cta_descuento').AsString;
          end;
        end;

        if QConduceCON_CONCEPTO1.Value <> '' then
        begin
          Query1.Close;
          Query1.SQL.Clear;
          Query1.SQL.Add('select cat_cuenta from Conceptos');
          Query1.SQL.Add('WHERE emp_codigo = :emp AND con_nombre = :con');
          Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
          Query1.Parameters.ParamByName('con').Value := QConduceCON_CONCEPTO1.AsString;
          Query1.Open;

          CtaConcepto    := '';

          if Query1.RecordCount > 0 then
          begin
            CtaConcepto := Query1.fieldbyname('cat_cuenta').AsString;
          end;
        end;

        QDetalledet_cantempaque.Value := dm.Query1.fieldbyname('pro_cantempaque').asfloat;
        QDetalleDET_MANEJAESCALA.Value := dm.Query1.fieldbyname('pro_escala').asstring;
        QDetalleDET_VENCE.Value := dm.Query1.fieldbyname('pro_vence').asstring;
        QDetallePRO_CODIGO.value := dm.Query1.fieldbyname('pro_codigo').asinteger;
        QDetallePRO_RFABRIC.value := dm.Query1.fieldbyname('pro_rfabric').asstring;
        QDetallePRO_NOMBRE.value := dm.Query1.fieldbyname('pro_nombre').asstring;
        QDetalleDET_MANEJAESCALA.Value := dm.Query1.fieldbyname('pro_escala').asstring;
        if ((DM.QParametrospar_fac_preimpresa.Value = 'True') and (DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados')) then
        begin
          QDetalleDET_PRECIO1.Value := dm.Query1.fieldbyname('pro_costo').AsFloat;
          QDetalleDET_PRECIO2.Value := dm.Query1.fieldbyname('pro_costo').AsFloat;
          QDetalleDET_PRECIO3.Value := dm.Query1.fieldbyname('pro_costo').AsFloat;
        end;
        if not ((DM.QParametrospar_fac_preimpresa.Value = 'True') and (DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados')) then
        begin
          case rgtipo.ItemIndex of
            1:
              begin
                QDetalleDET_PRECIO.Value := dm.Query1.fieldbyname('pro_precio1').AsFloat;
                QDetalleDET_PRECIO1.Value := dm.Query1.fieldbyname('pro_precio1').AsFloat;
                QDetalleDET_PRECIO2.Value := dm.Query1.fieldbyname('pro_precio2').AsFloat;
                QDetalleDET_PRECIO3.Value := dm.Query1.fieldbyname('pro_precio3').AsFloat;
                QDetalleDET_PRECIO4.Value := dm.Query1.fieldbyname('pro_precio4').AsFloat;
              end;
            0:
              begin
                QDetalleDET_PRECIO.Value := dm.Query1.fieldbyname('pro_costo').AsFloat;
              end;
          end;
        end;
        QDetalleDET_COSTOUND.Value := dm.Query1.fieldbyname('pro_costo').AsFloat;
        QDetalleDET_COSTOEMP.Value := dm.Query1.fieldbyname('pro_costoempaque').AsFloat;
        QDetalleDET_ITBIS.Value := dm.Query1.fieldbyname('pro_montoitbis').AsFloat;
        QDetalleDET_CONITBIS.Value := dm.Query1.fieldbyname('pro_itbis').Value;
        QDetalleUnidadID.Value := dm.Query1.fieldbyname('UnidadID').AsString;

        if rgtipo.ItemIndex = 0 then
          VerificaMedida
        else
        begin
          if not ((DM.QParametrospar_fac_preimpresa.Value = 'True') and (DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados')) then
          begin
            if Trim(Precio) = '' then
              Precio := 'precio1';
            if Precio = 'Ninguno' then
            begin
              if (not QDetalleDET_MEDIDA.IsNull) and (dm.QParametrosPAR_FACMEDIDA.Value = 'True') then
              begin
                if dm.QParametrosPAR_PRECIOUND.Value <> 'Ninguno' then
                begin
                //Unidad
                  if QDetalleDET_MEDIDA.Value = 'Und' then
                    QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_' + dm.QParametrosPAR_PRECIOUND.Value).AsFloat;
                end;

                if dm.QParametrosPAR_PRECIOEMP.Value <> 'Ninguno' then
                begin
                //Empaque
                  if QDetalleDET_MEDIDA.Value = 'Emp' then
                    QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_' + dm.QParametrosPAR_PRECIOEMP.Value).AsFloat;
                end;
              end
              else if dm.QParametrosPAR_FACMEDIDA.Value = 'False' then
                QDetalleDET_PRECIO.value := QDetalle.FieldByName('det_precio1').AsFloat;
            end
            else if QDetalle.FieldByName('det_' + Precio).AsFloat > 0 then
              QDetalleDET_PRECIO.value := QDetalle.FieldByName('det_' + Precio).AsFloat
            else
              QDetalleDET_PRECIO.value := QDetalle.FieldByName('det_precio1').AsFloat;

            if QDetalleDET_ITBIS.AsFloat > 0 then
              QDetalleDET_CONITBIS.value := 'S'
            else
              QDetalleDET_CONITBIS.value := 'N';
          end;
        end;

        if ((DM.QParametrospar_fac_preimpresa.Value = 'True') and (DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados')) then
          QDetalleDET_PRECIO.Value := QDetalleDET_PRECIO1.Value;

        //buscando unidad de medida del producto
        if not QDetalleUnidadID.IsNull then
        begin
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('select Nombre from UnidadMedida');
          dm.Query1.SQL.Add('where emp_codigo = :emp');
          dm.Query1.SQL.Add('and UnidadID = :und');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
          dm.Query1.Parameters.ParamByName('und').Value := QDetalleUnidadID.AsString;
          dm.Query1.Open;
          if dm.Query1.RecordCount > 0 then
          begin
            QDetallepro_unidad_medida.Value := dm.Query1.FieldByName('Nombre').AsString;
            QDetalleDET_MEDIDA.Value := dm.Query1.FieldByName('Nombre').AsString;

            if dm.QParametrospar_inv_unidad_medida.Value = 'True' then
            begin
              //buscando precio por unidad de medida
              QUnidades.Close;
              QUnidades.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
              QUnidades.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
              QUnidades.Parameters.ParamByName('und').Value := QDetallepro_unidad_medida.Value;
              QUnidades.Open;
              QDetalleDET_PRECIO.Value := QUnidadesPrecio.Value;
              QDetalledet_cant_unidad_medida.Value := QUnidadesCantidad.AsFloat;
            end;
          end;
        end;

if dm.QContabpar_codifica_venta_familia.Value = 'True' then
        begin
        {  //Cuentas de Costo
          if Trim(CtaCosto) <> '' then
          begin
            if not QCuentas.Locate('cat_cuenta', CtaCosto, []) then
            begin
              QCuentas.Append;
              QCuentascat_cuenta.Value := CtaCosto;
              QCuentasdet_origen.Value := 'Debito';
              QCuentasdet_monto.Value := (QDetalleDET_COSTOUND.Value * QDetalleDET_CANTIDAD.Value);
              QCuentas.Post;
            end
            else
            begin
              QCuentas.Edit;
              ;
              QCuentasdet_origen.Value := 'Debito';
              QCuentasdet_monto.Value := QCuentasdet_monto.Value + (QDetalleDET_COSTOUND.Value * QDetalleDET_CANTIDAD.Value);
              QCuentas.Post;
            end;
          end;
         }
          //Cuenta de Inventario
          if Trim(CtaInvent) <> '' then
          begin
            if not QCuentas.Locate('cat_cuenta', CtaInvent, []) then
            begin
              QCuentas.Append;
              QCuentascat_cuenta.Value := CtaInvent;
              QCuentasdet_origen.Value := 'Credito';
              QCuentasdet_monto.Value := (QDetalleDET_COSTOUND.Value * QDetalleDET_CANTIDAD.Value);
              QCuentas.Post;
            end
            else
            begin
              QCuentas.Edit;
              QCuentasdet_origen.Value := 'Credito';
              QCuentasdet_monto.Value := QCuentasdet_monto.Value + (QDetalleDET_COSTOUND.Value * QDetalleDET_CANTIDAD.Value);
              QCuentas.Post;
            end;
          end;

          //Cuenta de Itbis
          if Trim(CtaItbis) <> '' then
          begin
            if not QCuentas.Locate('cat_cuenta', CtaItbis, []) then
            begin
              QCuentas.Append;
              QCuentascat_cuenta.Value := CtaItbis;
              QCuentasdet_origen.Value := 'Credito';
              QCuentasdet_monto.Value := QConduceCON_ITBIS.Value;
              QCuentas.Post;
            end
            else
            begin
              QCuentas.Edit;
              QCuentasdet_origen.Value := 'Credito';
              QCuentasdet_monto.Value := QConduceCON_ITBIS.Value;
              QCuentas.Post;
            end;
          end;
          end;


           //Cuenta de Concepto
          if Trim(CtaConcepto) <> '' then
          begin
            if not QCuentas.Locate('cat_cuenta', CtaConcepto, []) then
            begin
              QCuentas.Append;
              QCuentascat_cuenta.Value := CtaConcepto;
              QCuentasdet_origen.Value := 'Debito';
              QCuentasdet_monto.Value := QConduceCON_TOTAL.Value;
              QCuentas.Post;
            end
            else
            begin
              QCuentas.Edit;
              QCuentasdet_origen.Value := 'Debito';
              QCuentasdet_monto.Value := QConduceCON_TOTAL.Value;
              QCuentas.Post;
            end;
          end;

      end;
    end;
  end;
end;

procedure TfrmConduce.btGrabarClick(Sender: TObject);
var
  a, fila: integer;
begin
  if Trim(dbAlmacen.Text) = '' then
  begin
    ShowMessage('Debe indicar el almacen');
    dbAlmacen.SetFocus;
    Exit;
  end;

  if ((DM.QParametrospar_fac_preimpresa.Value = 'True') and (DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados')) then
  begin
    if QConduceDEP_CODIGO.Value = 0 then
    begin
      MessageDlg('DEBE INDICAR EL PROYECTO, ', mtWarning, [mbOK], 0);
      Exit;
    end;
  end;
  if Producto_sin_Serializar(EmptyStr) then
  begin
    ShowMessage('HAY PRODUCTOS SERIALIZADOS SIN SERIALIZAR, Verifique...');
    Exit;
  end;
  if QConduceALM_CODIGO.IsNull then
  begin
    MessageDlg('DEBE ESPECIFICAR EL ALMACEN', mtError, [mbok], 0);
    dbAlmacen.SetFocus;
  end
  else if (dm.QParametrospar_fac_preimpresa.Value = 'True') and (dm.QParametrospar_formato_preimpreso.Value = 'QRAgregados') and (QConduceCamionID.IsNull) then
  begin
    MessageDlg('DEBE ESPECIFICAR EL CAMION', mtError, [mbok], 0);
    PageControl1.ActivePageIndex := 2;
    DBEdit16.SetFocus;
  end
  else if (dm.QParametrospar_fac_preimpresa.Value = 'True') and (dm.QParametrospar_formato_preimpreso.Value = 'QRAgregados') and (QConduceTicket.IsNull) then
  begin
    MessageDlg('DEBE ESPECIFICAR EL NUMERO DE TICKET', mtError, [mbok], 0);
    PageControl1.ActivePageIndex := 2;
    DBEdit17.SetFocus;
  end
  else if messagedlg('TODOS LOS DATOS ESTAN CORECTOS?', mtconfirmation, [mbyes, mbno], 0) = mryes then
  begin
    if ((DM.QParametrospar_fac_preimpresa.Value = 'True') and (DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados')) then
    begin
      with DM.adoMultiUso do
      begin
        Close;
        SQL.Clear;
        sql.Add('select isnull(dep_monto,0) total from departamentos');
        SQL.Add('where emp_codigo = :emp and dep_codigo = :dep');
        Parameters.parambyname('emp').Value := dm.vp_cia;
        Parameters.parambyname('dep').Value := QConduceDEP_CODIGO.value;
        Open;
        vl_balance := fieldbyname('total').Value;

        Close;
        SQL.Clear;
        SQL.Add('select ISNULL(SUM(con_total),0) TOTAL from CONDUCE');
        SQL.Add('WHERE con_status <> ' + QuotedStr('ANU') + '  AND emp_codigo = :EMP AND suc_codigo = :SUC AND cli_codigo = :CLI');
        Parameters.parambyname('emp').Value := dm.vp_cia;
        Parameters.parambyname('cli').Value := QConduceCLI_CODIGO.value;
        Parameters.parambyname('suc').Value := QConduceSUC_CODIGO.value;
        Open;
        vl_conduce := (fieldbyname('total').Value + QConduceCON_TOTAL.Value);
        if (vl_balance < vl_conduce) then
        begin
          if MessageDlg('EL MONTO DESPACHADO SOBREPASA EL LIMITE PRESUPUESTADO,' + char(13) + 'FAVOR CONTACTAR A UN SUPERVISOR,' + CHAR(13) + 'DESEA AUTORIZARLO?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            Application.CreateForm(tfrmPideAutorizacion, frmPideAutorizacion);
            if frmPideAutorizacion.ShowModal <> mrOk then
            begin
              frmPideAutorizacion.release;
              Exit;
            end
            else
            begin

              frmPideAutorizacion.release;
            end;
          end
          else
            Exit;
        end;
      end;
    end;
  totaliza := true;
  QDetalle.edit;
  QDetalle.post;
  Totaliza := False;

  QConduce.post;
  QConduce.UpdateBatch;

  if ((DM.QParametrospar_fac_preimpresa.Value = 'True') and (DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados')) then
  begin
    qUpdateCot.Close;
    qUpdateCot.Parameters.ParamByName('EMP').Value := QConduceEMP_CODIGO.Value;
    qUpdateCot.Parameters.ParamByName('DEP').Value := QConduceDEP_CODIGO.Value;
    qUpdateCot.Parameters.ParamByName('COT').Value := QConducePED_NUMERO.Value;
    qUpdateCot.ExecSQL;
  end;

    //productos
  QDetalle.disablecontrols;
  QDetalle.First;
  a := 0;
  while not QDetalle.eof do
  begin
    a := a + 1;
    QDetalle.Edit;
    QDetalleDET_SECUENCIA.value := a;
    QDetalleEMP_CODIGO.value := QConduceEMP_CODIGO.Value;
    QDetalleCON_NUMERO.value := QConduceCON_NUMERO.value;
    QDetalleSUC_CODIGO.Value := QConduceSUC_CODIGO.Value;
    QDetalle.post;
    QDetalle.next;
      //actualizar productos
    dm.ADOSigmaRest.close
  end;
  QDetalle.enablecontrols;
  QDetalle.UpdateBatch;

    //Numeros de Serie
  if QSerie.Active then
  begin
    QSerie.DisableControls;
    QSerie.First;
    while not QSerie.Eof do
    begin
      QSerie.Edit;
      QSeriecon_numero.Value := QConduceCON_NUMERO.Value;
      QSerieEMP_CODIGO.value := QConduceEMP_CODIGO.Value;
      QSerieSUC_CODIGO.Value := QConduceSUC_CODIGO.Value;
      QSerie.Post;
      QSerie.Next;
    end;
    QSerie.EnableControls;
    QSerie.UpdateBatch;
  end;   //}
    //cuentas
  QCuentas.disablecontrols;
  QCuentas.First;
  a := 0;
  while not QCuentas.eof do
  begin
    a := a + 1;
    QCuentas.Edit;
    QCuentasDET_SECUENCIA.value := a;
    QCuentasEMP_CODIGO.value := QConduceEMP_CODIGO.Value;
    QCuentasCON_NUMERO.value := QConduceCON_NUMERO.value;
    QCuentasSUC_CODIGO.Value := QConduceSUC_CODIGO.Value;
    QCuentas.post;
    QCuentas.next;
  end;
  QCuentas.enablecontrols;
  QCuentas.UpdateBatch;

    //Centros de Costo
  QCentro.disablecontrols;
  QCentro.First;
  a := 0;
  while not QCentro.eof do
  begin
    a := a + 1;
    QCentro.Edit;
    QCentroDET_SECUENCIA.value := a;
    QCentroEMP_CODIGO.value := QConduceEMP_CODIGO.Value;
    QCentroCON_NUMERO.value := QConduceCON_NUMERO.value;
    QCentroSUC_CODIGO.Value := QConduceSUC_CODIGO.Value;
    QCentro.post;
    QCentro.next;
  end;
  QCentro.enablecontrols;
  QCentro.UpdateBatch;

  if vl_accion = 2 then begin
   IF QConducefac_numero.IsNull THEN BEGIN
   if not MD_Detalle.IsEmpty then begin
    //dm.ADOSigma.Execute('ALTER TABLE PRODUCTOS DISABLE TRIGGER TR_CAMBIO_PRECIOS');
    //Pasar las cantidades que ya tenia anteriormente
    MD_Detalle.DisableControls;
    MD_Detalle.First;
    while not MD_Detalle.Eof do begin
    with qModificaExistencia DO BEGIN
    Close;
    Parameters.ParamByName('cant').Value := MD_Detalledet_cantidad.Value;
    Parameters.ParamByName('emp').Value  := QConduceEMP_CODIGO.Value;
    Parameters.ParamByName('alm').Value  := QConduceALM_CODIGO.Value;
    Parameters.ParamByName('prod').Value := MD_Detallepro_codigo.Value;
    Parameters.ParamByName('tipo').Value := 0;
    ExecSQL;
    end;
    MD_Detalle.Next;
    end;
    MD_Detalle.EnableControls;
    //dm.ADOSigma.Execute('ALTER TABLE PRODUCTOS ENABLE TRIGGER TR_CAMBIO_PRECIOS');
    end;

    //Descontar de inventario al detalle de los productos puestos
    if not QDetalle.IsEmpty then begin
    //dm.ADOSigma.Execute('ALTER TABLE PRODUCTOS DISABLE TRIGGER TR_CAMBIO_PRECIOS');
    QDetalle.DisableControls;
    QDetalle.First;
    while not QDetalle.Eof do begin
    with qModificaExistencia2 DO BEGIN
    Close;
    Parameters.ParamByName('cant').Value := QDetalleDET_CANTIDAD.Value;
    Parameters.ParamByName('emp').Value  := QConduceEMP_CODIGO.Value;
    Parameters.ParamByName('alm').Value  := QConduceALM_CODIGO.Value;
    Parameters.ParamByName('prod').Value := QDetallePRO_CODIGO.Value;
    Parameters.ParamByName('tipo').Value := 0;
    ExecSQL;
    end;
    QDetalle.Next;
    end;
    QDetalle.EnableControls;
    //dm.ADOSigma.Execute('ALTER TABLE PRODUCTOS ENABLE TRIGGER TR_CAMBIO_PRECIOS');
    end;
    end;
  end;

  if vl_accion = 1 then begin
  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('execute pr_graba_conduce :emp, :suc, :num, :alm, :acc, :usu');
  dm.Query1.Parameters.parambyname('emp').Value := QConduceEMP_CODIGO.Value;
  dm.Query1.Parameters.parambyname('num').Value := QConduceCON_NUMERO.value;
  dm.Query1.Parameters.parambyname('alm').Value := QConduceALM_CODIGO.value;
  dm.Query1.Parameters.parambyname('suc').Value := QConduceSUC_CODIGO.value;
  dm.Query1.Parameters.parambyname('acc').Value := VL_ACCION;
  dm.Query1.Parameters.parambyname('usu').Value := dm.vp_usuario;
  dm.Query1.ExecSQL;
  end;


  MD_Detalle.Close;
  MD_Detalle.Open;


  
  if MessageDlg('SE HA GENERADO EL CONDUCE NUMERO ' + inttostr(QConduceCON_NUMERO.value) + #13 + 'DESEA IMPRIMIR ESTE CONDUCE?', mtConfirmation, [mbyes, mbno], 0) = mryes then
  begin
    if not (DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados') then
    begin
      if dm.QParametrosPAR_FORMATOCON.Value = 2 then
      begin
        Application.CreateForm(tRConduce, RConduce);
        RConduce.QConduce.Close;
        RConduce.QConduce.Parameters.ParamByName('numero').Value := QConduceCON_NUMERO.Value;
        RConduce.QConduce.Parameters.ParamByName('suc').Value := QConduceSUC_CODIGO.Value;
        RConduce.QConduce.Parameters.ParamByName('EMP_CODIGO').Value := QConduceEMP_CODIGO.Value;
        RConduce.QConduce.Open;
        RConduce.QDetalle.Close;
        RConduce.QDetalle.Open;
        RConduce.ReportTitle := 'Conduce No. ' + IntToStr(QConduceCON_NUMERO.Value);
        RConduce.PrinterSetup;
        RConduce.Print;
        RConduce.Destroy;
      end else Imp40Columnas;
    end
    else if (DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados') then
    begin
      begin
        Application.CreateForm(tRConduceSarita, RConduceSarita);
        RConduceSarita.QConduce.Close;
        RConduceSarita.QConduce.Parameters.ParamByName('numero').Value := QConduceCON_NUMERO.Value;
        RConduceSarita.QConduce.Parameters.ParamByName('suc').Value := QConduceSUC_CODIGO.Value;
        RConduceSarita.QConduce.Parameters.ParamByName('EMP_CODIGO').Value := QConduceEMP_CODIGO.Value;
        RConduceSarita.QConduce.Open;
        RConduceSarita.QDetalle.Close;
        RConduceSarita.QDetalle.Open;
        RConduceSarita.ReportTitle := 'Conduce No. ' + IntToStr(QConduceCON_NUMERO.Value);
        RConduceSarita.PrinterSetup;
        RConduceSarita.Print;
        RConduceSarita.Destroy;
      end;
    end
    else
      Imp40Columnas;

  end;

  if chkMail.Checked then
  begin
    vl_adjunto1 := '.\Conduce_No_' + vl_factnum + '.PDF';
    if not (DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados') then
    begin
      if dm.QParametrosPAR_FORMATOCON.Value = 2 then
      begin
        Application.CreateForm(tRConduce, RConduce);
        RConduce.QConduce.Parameters.ParamByName('numero').Value := QConduceCON_NUMERO.Value;
        RConduce.QConduce.Parameters.ParamByName('suc').Value := QConduceSUC_CODIGO.Value;
        RConduce.QConduce.Parameters.ParamByName('EMP_CODIGO').Value := QConduceEMP_CODIGO.Value;
        RConduce.QConduce.Open;
        RConduce.QDetalle.Open;
        RConduce.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
        EnvioMail(RConduce, 'Fac');
      end;
    end;
    if (DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados') then
    begin
      Application.CreateForm(tRConduceSarita, RConduceSarita);
      RConduceSarita.QConduce.Parameters.ParamByName('numero').Value := QConduceCON_NUMERO.Value;
      RConduceSarita.QConduce.Parameters.ParamByName('suc').Value := QConduceSUC_CODIGO.Value;
      RConduceSarita.QConduce.Parameters.ParamByName('EMP_CODIGO').Value := QConduceEMP_CODIGO.Value;
      RConduceSarita.QConduce.Open;
      RConduceSarita.QDetalle.Open;
      RConduceSarita.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
      EnvioMail(RConduceSarita, 'Cond');
    end;
  end;


  SubTotal := 0;
  QConduce.Close;
  QConduce.Parameters.parambyname('numero').Value := -1;
  QConduce.Parameters.parambyname('suc').Value := -1;
  QConduce.open;
  PageControl2.ActivePageIndex := 0;
  Grid.setfocus;
  QConduce.insert;
  end;
end;

procedure TfrmConduce.btLimpiarClick(Sender: TObject);
begin
  if messagedlg('DESEA CANCELAR ESTA ENTRADA?', mtconfirmation, [mbyes, mbno], 0) = mryes then
  begin
    BorraSerial(EmptyStr);
    QConduce.close;
    QConduce.Parameters.parambyname('numero').Value := -1;
    QConduce.Parameters.parambyname('suc').Value := -1;
    QConduce.open;
    PageControl2.ActivePageIndex := 0;
    Grid.SetFocus;
    QConduce.insert;
    tDepto.Clear;
  end
  else
    Grid.SetFocus;
end;

procedure TfrmConduce.btBuscarClick(Sender: TObject);
var
  a, Suc: integer;
begin
  VL_ACCION := 0;
  Suc := DBLookupComboBox2.KeyValue;
  Search.Query.clear;
  Search.AliasFields.clear;
  Search.Query.add('select con_numero, con_fecha, con_nombre');
  Search.Query.add('from conduce');
  Search.Query.add('where emp_codigo = ' + inttostr(dm.vp_cia));
  Search.Query.add('and con_status not in (' + QuotedStr('ANU') + ',' + QuotedStr('FAC') + ')');
  Search.Query.add('and suc_codigo = ' + IntToStr(Suc));
  Search.AliasFields.add('N�mero');
  Search.AliasFields.add('Fecha');
  Search.AliasFields.add('A Nombre de');
  Search.Title := 'Conduces';
  Search.ResultField := 'con_numero';
  Search.ValueField := 'N�mero';
  if Search.execute then
  begin
    Totaliza := False;
    //Ins := True;
    QConduce.close;
    QConduce.Parameters.parambyname('numero').Value := strtoint(Search.valuefield);
    QConduce.Parameters.parambyname('suc').Value := Suc;
    QConduce.open;
    QConduce.Edit;

    if (QConduceCLI_CODIGO.IsNull) or (QConduceCLI_CODIGO.Value = 0) then
      rgtipo.ItemIndex := 0
    else
      rgtipo.ItemIndex := 1;

    if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
      edCliente.Text := IntToStr(QConduceCLI_CODIGO.Value)
    else
      edCliente.Text := QConduceCLI_REFERENCIA.Value;

    QDetalle.close;
    QDetalle.Parameters.parambyname('num').Value := strtoint(Search.valuefield);
    QDetalle.Parameters.parambyname('suc').Value := Suc;
    QDetalle.Parameters.parambyname('dep').Value := QConduceDEP_CODIGO.Value;
    QDetalle.open;

    with QDetalle do begin
      if not QDetalle.IsEmpty then begin
      MD_Detalle.Close;
      MD_Detalle.Open;
      QDetalle.First;
      while not QDetalle.Eof do begin
      MD_Detalle.Append;
      MD_Detallepro_codigo.Value        := QDetallePRO_CODIGO.Value;
      MD_Detalledet_cantidad.Value      := QDetalleDET_CANTIDAD.Value;
      MD_Detalledet_secuencia.Value     := QDetalleDET_SECUENCIA.Value;
      MD_Detallepro_unidad_medida.Value := QDetallepro_unidad_medida.Value;
      MD_Detalle.Post;
      QDetalle.Next;
      end;
      QDetalle.EnableControls;
      QDetalle.First;
      end;
      end;

    QSerie.Close;
    QSerie.Parameters.ParamByName('emp').Value := dm.vp_cia;
    QSerie.Parameters.ParamByName('suc').Value := Suc; //DBLookupComboBox2.KeyValue;
    QSerie.Parameters.ParamByName('numero').Value := QConduceCON_NUMERO.Value;
    QSerie.Open;

    QCuentas.Close;
    QCuentas.Parameters.ParamByName('emp').Value := dm.vp_cia;
    QCuentas.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    QCuentas.Parameters.ParamByName('con').Value := QConduceCON_NUMERO.Value;
    QCuentas.Open;

    QCentro.Close;
    QCentro.Parameters.ParamByName('emp').Value := dm.vp_cia;
    QCentro.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    QCentro.Parameters.ParamByName('num').Value := QConduceCON_NUMERO.Value;
    QCentro.Open;

    Totaliza := True;
    if QConduceCON_FACTURADO.Value <> 'S' then
    begin
      QConduce.Edit;
      Totalizar;
    end;
    gFlagActualido := true;
    QDetalle.first;
    {if (QConducePED_TIPO.Value = 'S') and (QConducePED_NUMERO.Value > 0) then
      Ins := false;}

    Grid.SetFocus;
    VL_ACCION := 2;

    IF NOT QConducefac_numero.IsNull THEN BEGIN
    DBLookupComboBox2.Enabled := False;
    dbAlmacen.Enabled         := DBLookupComboBox2.Enabled;
    btalmacen.Enabled         := DBLookupComboBox2.Enabled;
    btBuscaProd.Enabled       := DBLookupComboBox2.Enabled;
    Grid.Enabled              := DBLookupComboBox2.Enabled;
    end;

  end;
end;

procedure TfrmConduce.Totalizar;
var
  Punt: TBookmark;
  TItbis, TDesc, grabado, vl_total: Double;
begin
  if Totaliza = True then
  begin
    vl_total := 0;

    if dm.QContabpar_codifica_venta_familia.Value = 'True' then
    begin
      totaliza := false;
      QDetalle.DisableControls;
      QDetalle.First;
      while not QDetalle.eof do
      begin
        if QCuentas.RecordCount > 0 then
        begin
       {   if Trim(QDetallepro_ctacosto.AsString) <> '' then
          begin
            if QCuentas.Locate('cat_cuenta', QDetallepro_ctacosto.AsString, []) then
            begin
              QCuentas.Edit;
              QCuentasdet_monto.Value := 0;
              QCuentas.Post;
            end;
          end;}

          if Trim(QDetallepro_ctainvent.AsString) <> '' then
          begin
            if QCuentas.Locate('cat_cuenta', QDetallepro_ctainvent.AsString, []) then
            begin
              QCuentas.Edit;
              QCuentasdet_monto.Value := 0;
              QCuentas.Post;
            end;
          end;

          if Trim(CtaItbis) <> '' then
          begin
            if QCuentas.Locate('cat_cuenta', CtaItbis, []) then
            begin
              QCuentas.Edit;
              QCuentasdet_monto.Value := 0;
              QCuentas.Post;
            end;
          end;
        end;

          if Trim(CtaConcepto) <> '' then
          begin
            if QCuentas.Locate('cat_cuenta', CtaConcepto, []) then
            begin
              QCuentas.Edit;
              QCuentasdet_monto.Value := 0;
              QCuentas.Post;
            end;
          end;



        vl_total := vl_total + QDetalleValor.Value;
        QDetalle.Next;
      end;
      QDetalle.EnableControls;
      totaliza := true;
    end;

    Punt := QDetalle.GetBookmark;
    SubTotal := 0;
    Total := 0;
    TItbis := 0;
    TDesc := 0;
    grabado := 0;
    QDetalle.disablecontrols;
    QDetalle.first;
    while not QDetalle.eof do
    begin
      if dm.QParametrospar_itbisincluido.Value = 'True' then
        Total := Total + QDetalleDET_CANTIDAD.value * QDetallePrecioItbis.value
      else
        Total := Total + QDetalleDET_CANTIDAD.value * QDetalledet_Precio.value;

      if QDetalleDET_CONITBIS.Value = 'S' then
        grabado := grabado + ((QDetallePrecioItbis.value - QDetalleCalcDesc.Value) * QDetalleDET_CANTIDAD.value);

      TDesc := TDesc + QDetalleCalcDesc.value * QDetalleDET_CANTIDAD.value;
      TItbis := TItbis + QDetalleCalcItbis.value * QDetalleDET_CANTIDAD.value;

      if dm.QContabpar_codifica_venta_familia.Value = 'True' then
      begin
        QCuentas.DisableControls;
        {if Trim(QDetallepro_ctacosto.AsString) <> '' then
        begin
          if QCuentas.Locate('cat_cuenta', QDetallepro_ctacosto.AsString, []) then
          begin
            QCuentas.Edit;
            QCuentasdet_monto.Value := QCuentasdet_monto.Value + (QDetalleDET_COSTOUND.Value * QDetalleDET_CANTIDAD.Value);
            QCuentas.Post;
          end;
        end;}

        if Trim(QDetallepro_ctainvent.AsString) <> '' then
        begin
          if QCuentas.Locate('cat_cuenta', QDetallepro_ctainvent.AsString, []) then
          begin
            QCuentas.Edit;
            QCuentasdet_monto.Value := QCuentasdet_monto.Value + (QDetalleDET_COSTOUND.Value * QDetalleDET_CANTIDAD.Value);
            QCuentas.Post;
          end;
        end;
        QCuentas.EnableControls;
      end;

      QDetalle.Next;
    end;

    QDetalle.GotoBookmark(Punt);
    QDetalle.enablecontrols;
    QConduce.Edit;
    QConduceCON_ITBIS.value := TItbis;
    QConduceCON_DESCUENTO.value := TDesc;
    SubTotal := Total;
    QConduceCON_TOTAL.value := Total - TDesc + TItbis;

                if Trim(CtaItbis) <> '' then
        begin
          if QCuentas.Locate('cat_cuenta', CtaItbis, []) then
          begin
            QCuentas.Edit;
            QCuentasdet_monto.Value := QConduceCON_ITBIS.Value;
            QCuentas.Post;
          end;
        end;


    if Trim(CtaConcepto) <> '' then
        begin
          if QCuentas.Locate('cat_cuenta', CtaConcepto, []) then
          begin
            QCuentas.Edit;
            QCuentasdet_monto.Value :=  Total - TDesc + TItbis;
            QCuentas.Post;
          end;
        end;

  end;

  TotalizarCuentas;
end;

procedure TfrmConduce.btEliminaClick(Sender: TObject);
begin
  if messagedlg('ELIMINAR LA LINEA?', mtconfirmation, [mbyes, mbno], 0) = mryes then
  begin
    BorraSerial(QDetallePRO_CODIGO.AsString);
    QDetalle.Delete;
  end;
  Grid.SetFocus;
end;

procedure TfrmConduce.btBuscaProdClick(Sender: TObject);
var
  primera: boolean;
begin
  if btBuscar.Enabled = True then begin
  application.createform(tfrmBuscaProducto, frmBuscaProducto);
  if QConduceALM_CODIGO.Value = 0 then begin
  ShowMessage('DEBES INDICAR UN ALMACEN PARA ESTE REGISTRO');
  Exit;
  end;
  frmBuscaProducto.almacen := QConduceALM_CODIGO.Value;
  primera := true;
  while (frmBuscaProducto.ckactiva.Checked) or (primera) do
  begin
    frmBuscaProducto.showmodal;
    primera := false;
    frmBuscaProducto.vp_suc := DBLookupComboBox2.KeyValue;
    if frmBuscaProducto.seleccion = 1 then
    begin
      QDetalle.Edit;
      if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
        QDetallePRO_CODIGO.value := frmBuscaProducto.QProductosPRO_CODIGO.value
      else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
        QDetallePRO_RFABRIC.value := frmBuscaProducto.QProductosPRO_RFABRIC.value
      else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
        QDetallePRO_RORIGINAL.value := frmBuscaProducto.QProductosPRO_RORIGINAL.value;

      QDetallepro_serializado.value := frmBuscaProducto.QProductosPRO_serializado.value;
      if frmBuscaProducto.ckactiva.Checked then
      begin
        QDetalle.Append;
        Grid.SelectedIndex := 0;
      end;
    end;
  end;
  frmBuscaProducto.release;
  Grid.setfocus;
  end;
end;

procedure TfrmConduce.GridColEnter(Sender: TObject);
begin
  if Grid.SelectedIndex = 1 then
    Grid.SelectedIndex := Grid.SelectedIndex + 1;

  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'CALCITBIS' then
    Grid.selectedindex := Grid.selectedindex + 1;

  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_CANTEMPAQUE' then
    Grid.selectedindex := Grid.selectedindex + 1;

  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_ESCALA' then
    Grid.SelectedIndex := Grid.SelectedIndex + 1;

  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_FECHAVENCE' then
    if QDetalleDET_VENCE.Value <> 'True' then
      Grid.SelectedIndex := Grid.SelectedIndex + 1;

  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'VALOR' then
  begin
    Grid.SelectedIndex := 0;
    QDetalle.Append;
  end;
end;

procedure TfrmConduce.GridEnter(Sender: TObject);
begin
  Grid.SelectedIndex := 0;
end;

procedure TfrmConduce.GridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if (Key = vk_f12) and (QDetalleDET_MANEJAESCALA.Value = 'True') then
    btEscalasClick(Self);
  if Key = vk_f4 then
    btBuscaProdClick(self);
  if Key = vk_f8 then
    btserieClick2(Self);
  if Key = vk_f12 then
    btBuscaProdProvClick(Self);
  if Key = vk_f6 then
    btEliminaClick(Self);
  if Key = vk_f7 then
    btPrecioClick(Self);

  if dm.QParametrospar_busq_incrementada.Value = True then
  begin
    if DBGrid_1.Visible = True then
    begin
      if Key = vk_down then
      begin
        QDetalle.Delete;
        DBGrid_1.SetFocus;
        DS_1.DataSet.Next;
      end;
      if Key = vk_up then
      begin
        QDetalle.Delete;
        DBGrid_1.SetFocus;
        DS_1.DataSet.Prior;
      end;
      if Key = vk_return then
      begin
        DS_1.DataSet.First;
        DBGrid_1DblClick(Sender);
      end;

    end;
  end;

end;

procedure TfrmConduce.btSalirClick(Sender: TObject);
begin
  close;
end;

procedure TfrmConduce.Imp40Columnas;
var
  s, s1, s2: array[0..20] of char;
  arch, puertopeq: textfile;
  puerto: string;
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

  AssignFile(arch, 'imp.bat');
  rewrite(arch);
  writeln(arch, 'type t.txt > ' + puerto);
  closefile(arch);

  application.CreateForm(TRConduce, RConduce);
  RConduce.QConduce.Close;
  RConduce.QConduce.Parameters.ParamByName('numero').Value := QConduceCON_NUMERO.Value;
  RConduce.QConduce.Parameters.ParamByName('suc').Value := QConduceSUC_CODIGO.Value;
  RConduce.QConduce.Parameters.ParamByName('EMP_CODIGO').Value := QConduceEMP_CODIGO.Value;
  RConduce.QConduce.Open;
  RConduce.QDetalle.Close;
  RConduce.QDetalle.Open;
  AssignFile(arch, 't.txt');
  rewrite(arch);
  writeln(arch, dm.Centro(trim(dm.QEmpresasEMP_NOMBRE.value)));
  writeln(arch, dm.Centro(trim(DM.QEmpresasEMP_DIRECCION.value)));
  writeln(arch, dm.Centro(trim(DM.QEmpresasEMP_LOCALIDAD.value)));
  writeln(arch, dm.Centro('Telefono : ' + trim(dm.QEmpresasEMP_TELEFONO.value)));
  writeln(arch, dm.Centro('RNC: ' + dm.QEmpresasEMP_RNC.value));
  writeln(arch, ' ');
  writeln(arch, dm.Centro('SALIDA DE ALMACEN (CONDUCE)'));
  writeln(arch, ' ');
  writeln(arch, 'Almacen    : ' + tAlmacen.text);
  writeln(arch, 'Numero     : ' + inttostr(RConduce.QConduceCON_NUMERO.value));
  writeln(arch, 'Fecha      : ' + DateToStr(RConduce.QConduceCON_FECHA.value));
  writeln(arch, 'Entregado a: ' + RConduce.QConduceCON_NOMBRE.value);
  writeln(arch, 'Direccion  : ' + RConduce.QConduceCON_DIRECCION.value);
  writeln(arch, 'Telefono   : ' + RConduce.QConduceCON_TELEFONO.value);
  writeln(arch, '----------------------------------------');
  writeln(arch, 'Can. Descripcion                        ');
  writeln(arch, '----------------------------------------');
  while not RConduce.QDetalle.eof do
  begin
    s := '';
    fillchar(s, 5 - length(floattostr(RConduce.QDetalleDET_CANTIDAD.value)), ' ');
    s1 := '';
    fillchar(s1, 26 - length(copy(trim(RConduce.QDetallePRO_NOMBRE.value), 1, 32)), ' ');
    s2 := '';
    fillchar(s2, 9 - length(format('%n', [RConduce.QDetalleVAlor.value])), ' ');
    writeln(arch, floattostr(RConduce.QDetalleDET_CANTIDAD.value) + s + copy(trim(RConduce.QDetallePRO_NOMBRE.value), 1, 32));

    RConduce.QDetalle.next;
  end;
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, dm.Centro('_____________________'));
  writeln(arch, dm.Centro('Recibido por'));
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  CloseFile(arch);
  winexec('imp.bat', 0);
  RConduce.Destroy;
end;

procedure TfrmConduce.QConduceALM_CODIGOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if not QConduceALM_CODIGO.IsNull then
  begin
    Text := IntToStr(QConduceALM_CODIGO.value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select alm_nombre from almacen');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and alm_codigo = :alm');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    //dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.ParamByName('alm').Value := QConduceALM_CODIGO.value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
    begin
      tAlmacen.Text := '';
      MessageDlg('ESTE ALMACEN NO EXISTE', mtError, [mbok], 0);
      QConduceALM_CODIGO.Clear;
      Exit;
    end
    else
      tAlmacen.Text := dm.Query1.FieldByName('alm_nombre').AsString;
  end;
end;

procedure TfrmConduce.dsConduceDataChange(Sender: TObject; Field: TField);
var
  ec: boolean;
begin
  lbFacturado.Visible := QConduceCON_FACTURADO.Value = 'S';
  Panel2.Enabled := QConduceCON_FACTURADO.Value <> 'S';
  ec := QConduceinv_existencia_cero.Value <> 'S';
  btGrabar.Enabled := ec;
  btElimina.Enabled := ec;
  btPrecio.Enabled := ec;
  btBuscaProd.Enabled := ec;
  btserie.Enabled := ec;
  if (not ec) and (Field <> nil) and (Field.FieldName = 'inv_existencia_cero') then
    Messagedlg('ESTE CONDUCE YA HA SIDO AFECTADO CON UN PROCESO POSTERIOR', mterror, [mbok], 0);

end;

procedure TfrmConduce.QConduceAfterEdit(DataSet: TDataSet);
begin
  if QConduceCON_FACTURADO.Value = 'S' then
  begin
    Messagedlg('ESTE CONDUCE YA HA SIDO FACTURADO Y' + #13 + 'NO PUEDE MODIFICARSE', mterror, [mbok], 0);
    QConduce.Cancel;
  end;
end;

procedure TfrmConduce.QDetalleAfterEdit(DataSet: TDataSet);
begin
  if QConduceCON_FACTURADO.Value = 'S' then
  begin
    Messagedlg('ESTE CONDUCE YA HA SIDO FACTURADO Y' + #13 + 'NO PUEDE MODIFICARSE', mterror, [mbok], 0);
    QDetalle.Cancel;
  end;
end;

procedure TfrmConduce.QDetalleAfterInsert(DataSet: TDataSet);
begin
  if QConduceCON_FACTURADO.Value = 'S' then
  begin
    Messagedlg('ESTE CONDUCE YA HA SIDO FACTURADO Y' + #13 + 'NO PUEDE MODIFICARSE', mterror, [mbok], 0);
    QDetalle.Cancel;
  end;
end;

procedure TfrmConduce.btEscalasClick(Sender: TObject);
begin
  {if QDetalleDET_MANEJAESCALA.Value = 'True' then
  begin
    Application.CreateForm(tfrmSelEscala, frmSelEscala);
    frmSelEscala.QEscalas.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    frmSelEscala.QEscalas.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
    frmSelEscala.ShowModal;
    if frmSelEscala.Seleccion = True then
    begin
      QDetalle.Edit;
      QDetalleDET_ESCALA.Value := frmSelEscala.QEscalasESC_ESCALA.Value;
      QDetalle.Post;
    end;
    frmSelEscala.Release;
  end;
  Grid.SetFocus;}
end;

procedure TfrmConduce.GridKeyPress(Sender: TObject; var Key: Char);
var
  a: integer;
begin
  if dm.QParametrospar_busq_incrementada.Value = True then
  begin
    if Grid.selectedindex = 0 then
    begin
      edt1.Text := Trim(edt1.Text) + Key;

      if Key = #46 then
        Key := #0;
      if Key = #8 then
        edt1.Text := LeftStr(Trim(TEdit(TDBGrid(Sender).Controls[0]).Text + Key), Length(Trim(TEdit(TDBGrid(Sender).Controls[0]).Text + Key)) - 1);
      if edt1.Text <> '' then
      begin
        DesactivarCargaProductos := True;
        with QSelectIncrem1 do
        begin
          Close;
          if dm.QParametrosPAR_CODIGOPRODUCTO.Text = 'I' then
            Parameters.ParamByName('TIPO').Value := 0;
          if dm.QParametrosPAR_CODIGOPRODUCTO.Text = 'O' then
            Parameters.ParamByName('TIPO').Value := 1;
          if dm.QParametrosPAR_CODIGOPRODUCTO.Text = 'F' then
            Parameters.ParamByName('TIPO').Value := 2;
          Parameters.ParamByName('CODIGO').Value := edt1.Text;
          Parameters.ParamByName('SUC').Value := DBLookupComboBox2.KeyValue;
          Open;
          if not IsEmpty then
            DBGrid_1.Visible := True;
          if IsEmpty then
            DBGrid_1.Visible := False;
        end;
      end;
    end;
  end;

  if not dm.QParametrospar_busq_incrementada.Value = True then
  begin
    if Key = #13 then
      Grid.selectedindex := Grid.selectedindex + 1;
    if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_MEDIDA' then
    begin
      if uppercase(Key) = 'E' then
      begin
        QDetalle.Edit;
        QDetalleDET_MEDIDA.Value := 'Emp';
      end
      else if uppercase(Key) = 'U' then
      begin
        QDetalle.Edit;
        QDetalleDET_MEDIDA.Value := 'Und';
      end;
    end;
    if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'PRO_UNIDAD_MEDIDA' then
    begin
      for a := 0 to Grid.Columns[Grid.selectedindex].PickList.Count - 1 do
      begin
        if copy(Grid.Columns[Grid.selectedindex].PickList[a], 1, 1) = uppercase(Key) then
        begin
          QDetalle.Edit;
          QDetallepro_unidad_medida.Clear;
          QDetallepro_unidad_medida.Value := Grid.Columns[Grid.selectedindex].PickList[a];
        end;
      end;
      Key := #0;
    end;
  end;
end;

procedure TfrmConduce.QDetalleDET_MEDIDAChange(Sender: TField);
begin
  case rgtipo.ItemIndex of
    0:
      begin
        if QDetalleDET_MEDIDA.Value = 'Und' then
          QDetalleDET_PRECIO.value := QDetalleDET_COSTOUND.Value
        else if QDetalleDET_MEDIDA.Value = 'Emp' then
          QDetalleDET_PRECIO.value := QDetalleDET_COSTOEMP.Value;
      end;
    1:
      begin
        if QDetalleDET_MEDIDA.Value = 'Und' then
          QDetalleDET_PRECIO.value := QDetalleDET_PRECIO1.Value
        else if QDetalleDET_MEDIDA.Value = 'Emp' then
          QDetalleDET_PRECIO.value := QDetalleDET_PRECIO2.Value;
      end;
  end;

  {if not QDetalleDET_MEDIDA.IsNull then
  begin
    VerificaMedida;
  end;}
end;

procedure TfrmConduce.VerificaMedida;
begin
  //Unidad
  if QDetalleDET_MEDIDA.Value = 'Und' then
  begin
    QDetalle.Edit;
    if rgtipo.ItemIndex = 0 then
      QDetalleDET_PRECIO.Value := QDetalleDET_COSTOUND.Value
    else
    begin
      if dm.QParametrosPAR_PRECIOUND.Value = 'Precio1' then
        QDetalleDET_PRECIO.Value := QDetalleDET_PRECIO1.Value
      else if dm.QParametrosPAR_PRECIOUND.Value = 'Precio2' then
        QDetalleDET_PRECIO.Value := QDetalleDET_PRECIO2.Value
      else if dm.QParametrosPAR_PRECIOUND.Value = 'Precio3' then
        QDetalleDET_PRECIO.Value := QDetalleDET_PRECIO3.Value
      else if dm.QParametrosPAR_PRECIOUND.Value = 'Precio4' then
        QDetalleDET_PRECIO.Value := QDetalleDET_PRECIO4.Value;
    end;
  end;

  //Empaque
  if QDetalleDET_MEDIDA.Value = 'Emp' then
  begin
    QDetalle.Edit;
    if rgtipo.ItemIndex = 0 then
      QDetalleDET_PRECIO.Value := QDetalleDET_COSTOEMP.Value
    else
    begin
      if dm.QParametrosPAR_PRECIOEMP.Value = 'Precio1' then
        QDetalleDET_PRECIO.Value := QDetalleDET_PRECIO1.Value
      else if dm.QParametrosPAR_PRECIOEMP.Value = 'Precio2' then
        QDetalleDET_PRECIO.Value := QDetalleDET_PRECIO2.Value
      else if dm.QParametrosPAR_PRECIOEMP.Value = 'Precio3' then
        QDetalleDET_PRECIO.Value := QDetalleDET_PRECIO3.Value
      else if dm.QParametrosPAR_PRECIOEMP.Value = 'Precio4' then
        QDetalleDET_PRECIO.Value := QDetalleDET_PRECIO4.Value;
    end;
  end;
end;

procedure TfrmConduce.btBuscaClienteClick(Sender: TObject);
begin
  if btBuscaCli.Enabled then
    btBuscaCliClick(Self)
  else
    Grid.SetFocus;
end;

procedure TfrmConduce.btpedidoClick(Sender: TObject);
var
  a: integer;
begin
  Search.AliasFields.clear;
  Search.AliasFields.add('Numero');
  Search.AliasFields.add('Nombre del Cliente');
  Search.Query.clear;
  Search.Query.add('select ped_numero, ped_nombre');
  Search.Query.add('from pedidos');
  Search.Query.add('where emp_codigo = ' + inttostr(dm.vp_cia));
  Search.Query.add('and ped_tipo = ' + #39 + 'C' + #39);
  Search.Query.add('and ped_status = ' + #39 + 'EMI' + #39);
  Search.Query.add('and suc_codigo = ' + IntToStr(DBLookupComboBox2.KeyValue));
  Search.ResultField := 'ped_numero';
  Search.Title := 'Pedido del Cliente';
  if Search.execute then
  begin
    QDetalle.enablecontrols;
    QDetalle.close;
    QDetalle.open;
    QDetalle.disablecontrols;

    //Ins := True;

    Query1.close;
    Query1.sql.clear;
    Query1.sql.add('select cli_codigo, ped_nombre, cli_referencia,');
    Query1.sql.add('ven_codigo, ped_direccion, ped_localidad,');
    Query1.sql.add('ped_telefono, ped_fax, ped_numero');
    Query1.sql.add('from pedidos');
    Query1.sql.add('where emp_codigo = :emp');
    Query1.sql.add('and ped_tipo = ' + #39 + 'C' + #39);
    Query1.sql.add('and ped_numero = :numero');
    Query1.sql.add('and suc_codigo = :suc');
    Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    Query1.Parameters.parambyname('numero').Value := strtoint(search.valuefield);
    Query1.Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;
    Query1.open;

    if not Query1.FieldByName('cli_codigo').IsNull then
    begin
      QConduceCLI_CODIGO.value := Query1.fieldbyname('cli_codigo').asinteger;
      QConduceCLI_REFERENCIA.value := Query1.fieldbyname('cli_referencia').asstring;
      if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
        edCliente.text := Query1.fieldbyname('cli_codigo').asstring
      else
        edCliente.text := Query1.fieldbyname('cli_referencia').asstring;
    end;
    QConduceCON_NOMBRE.Value := Query1.fieldbyname('ped_nombre').asstring;
    QConduceCON_DIRECCION.value := Query1.fieldbyname('ped_direccion').asstring;
    QConduceCON_TELEFONO.value := Query1.fieldbyname('ped_telefono').asstring;
    QConduceCON_FAX.value := Query1.fieldbyname('ped_fax').asstring;
    QConducePED_NUMERO.value := Query1.fieldbyname('ped_numero').asinteger;
    QConducePED_TIPO.Value := 'C';
    QConduceVEN_CODIGO.Value := Query1.fieldbyname('ven_codigo').asinteger;

    Query1.close;
    Query1.sql.clear;
    Query1.sql.add('select d.pro_codigo, d.pro_roriginal, d.pro_rfabric, d.det_medida,');
    Query1.sql.add('(d.det_cantidad - isnull(d.det_despachado,0)) as det_cantidad,');
    Query1.sql.add('d.det_precio, d.det_conitbis, d.det_itbis,');
    Query1.sql.add('d.det_descuento, d.det_descripcion, d.det_manejaescala, d.det_Escala,');
    Query1.sql.add('p.pro_Servicio');
    Query1.sql.add('from det_pedido d, productos p');
    Query1.sql.add('where d.pro_codigo = p.pro_codigo');
    Query1.sql.add('and d.emp_codigo = :emp');
    Query1.sql.add('and p.emp_codigo = :empinv');
    Query1.sql.add('and d.ped_tipo = ' + #39 + 'C' + #39);
    Query1.sql.add('and d.ped_numero = :numero');
    Query1.sql.add('and d.suc_codigo = :suc');
    Query1.sql.add('and isnull(d.det_despachado,0) < d.det_cantidad');
    Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    Query1.Parameters.parambyname('empinv').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    Query1.Parameters.parambyname('numero').Value := strtoint(search.valuefield);
    Query1.Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;
    Query1.open;

    Totaliza := false;

    a := 0;
    while not Query1.eof do
    begin
      a := a + 1;
      QDetalle.append;
      QDetalleEMP_CODIGO.value := dm.vp_cia;
      QDetalleDET_SECUENCIA.value := a;
      QDetalleDET_CANTIDAD.value := Query1.fieldbyname('det_cantidad').asfloat;
      QDetalleDET_ITBIS.value := Query1.fieldbyname('det_itbis').asfloat;
      //QDetalleDET_DESCUENTO.value := Query1.fieldbyname('det_descuento').asfloat;
      QDetalleDET_CONITBIS.value := Query1.fieldbyname('det_conitbis').asstring;
      QDetallePRO_CODIGO.value := Query1.fieldbyname('pro_codigo').asinteger;

      if not Query1.fieldbyname('pro_roriginal').IsNull then
        QDetallePRO_RORIGINAL.value := Query1.fieldbyname('pro_roriginal').asstring;

      if not Query1.fieldbyname('pro_rfabric').IsNull then
        QDetallePRO_RFABRIC.value := Query1.fieldbyname('pro_rfabric').asstring;

      QDetallePRO_NOMBRE.Value := Query1.FieldByName('det_descripcion').AsString;
      QDetalleDET_MANEJAESCALA.Value := Query1.fieldbyname('det_manejaescala').asstring;
      if trim(QDetalleDET_MANEJAESCALA.Value) = 'True' then
        QDetalleDET_ESCALA.Value := Query1.fieldbyname('det_escala').asstring;
      QDetalleDET_MEDIDA.Value := Query1.fieldbyname('det_medida').asstring;
      QDetalleDET_PRECIO.value := Query1.fieldbyname('det_precio').asfloat;
      //QDetallePRO_SERVICIO.Value  := Query1.fieldbyname('pro_servicio').asstring;
      QDetalle.post;
      Query1.next;

      Application.ProcessMessages;
    end;

    QDetalle.first;
    QDetalle.enablecontrols;

    Totaliza := true;
    totalizar;
  end;
  PageControl2.ActivePageIndex := 0;
  Grid.SetFocus;
end;

procedure TfrmConduce.DBEdit10Click(Sender: TObject);
begin
  Grid.SetFocus;
end;

procedure TfrmConduce.QConduceSUC_CODIGOChange(Sender: TField);
begin
  QConduceALM_CODIGO.Value := QSucursalalm_codigo.Value;
end;

procedure TfrmConduce.btalmacenClick(Sender: TObject);
begin
  Search.Query.clear;
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Query.add('select alm_nombre, alm_codigo');
  Search.Query.add('from almacen');
  Search.Query.add('where emp_codigo = ' + inttostr(dm.vp_cia));
  //Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.Title := 'Almacenes';
  Search.ResultField := 'alm_codigo';
  if Search.execute then
  begin
    QConduceALM_CODIGO.value := StrToInt(Search.ValueField);
    dbAlmacen.setfocus;
  end;
end;

procedure TfrmConduce.rgtipoClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := rgtipo.ItemIndex;
  edcliente.Enabled := rgtipo.ItemIndex = 1;
  btBuscaCli.Enabled := rgtipo.ItemIndex = 1;
  edProveedor.Enabled := rgtipo.ItemIndex = 0;
  btbuscasup.Enabled := rgtipo.ItemIndex = 0;
  btpedido.Enabled := rgtipo.ItemIndex = 1;
  btfactura.Enabled := rgtipo.ItemIndex = 1;
  btcotizacion.Enabled := rgtipo.ItemIndex = 1;


  //DBEdit6.Enabled    := rgtipo.ItemIndex = 1;

  if rgtipo.ItemIndex = 0 then
  begin
    QConduceCLI_CODIGO.Clear;
    edcliente.Text := '';
    btnConcepto.Enabled := True;
  end
  else
  begin
    QConduceSUP_CODIGO.Clear;
    edProveedor.Text := '';
    btnConcepto.Enabled := False;
  end
end;

procedure TfrmConduce.btdeptoClick(Sender: TObject);
begin
  Search.Query.clear;
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Query.add('select dep_nombre, dep_codigo');
  Search.Query.add('from departamentos');
  Search.Query.add('where emp_codigo = ' + inttostr(dm.vp_cia));
  //Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.Title := 'Departamentos';
  Search.ResultField := 'dep_codigo';
  if Search.execute then
  begin
    QConduceDEP_CODIGO.value := StrToInt(Search.ValueField);
    DBEdit8.setfocus;
  end;
end;

procedure TfrmConduce.QConduceDEP_CODIGOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if not QConduceDEP_CODIGO.IsNull then
  begin
    Text := IntToStr(QConduceDEP_CODIGO.value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select dep_nombre, isnull(dep_monto,0) total from departamentos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and dep_codigo = :dep');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.ParamByName('dep').Value := QConduceDEP_CODIGO.value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
    begin
      tDepto.Text := '';
      MessageDlg('ESTE DEPARTAMENTO NO EXISTE', mtError, [mbok], 0);
      QConduceDEP_CODIGO.Clear;
      Exit;
    end
    else
    begin
      tDepto.Text := dm.Query1.FieldByName('dep_nombre').AsString;
      if ((DM.QParametrospar_fac_preimpresa.Value = 'True') and (DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados')) then
      begin
        if DM.Query1.FieldByName('total').Value = 0 then
        begin
          MessageDlg('ESTE PROYECTO NO TIENE PRESUPUESTO' + CHAR(13) + 'DEBE COMUNICARSE CON EL ADMINISTRADOR, ', mtWarning, [mbOK], 0);
          QConduceDEP_CODIGO.Clear;
          DBEdit8.SetFocus;
          tDepto.Clear;
        end;
      end;
    end;
  end;
end;

procedure TfrmConduce.QConduceCalcFields(DataSet: TDataSet);
begin
  QConduceSubTotal.Value := SubTotal;
end;

procedure TfrmConduce.QDetalleNewRecord(DataSet: TDataSet);
begin
  Qdetalledet_descuento.Value := 0;

end;

procedure TfrmConduce.btVendedorClick(Sender: TObject);
begin
  if not (DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados') then
  begin
    Search.AliasFields.clear;
    Search.AliasFields.add('Nombre');
    Search.AliasFields.add('C�digo');
    Search.Query.clear;
    Search.Query.add('select ven_nombre, ven_codigo');
    Search.Query.add('from vendedores');
    Search.Query.add('where emp_codigo = ' + inttostr(dm.vp_cia));
    Search.ResultField := 'ven_Codigo';
    Search.Title := 'Listado de Vendedores';
    if Search.execute then
    begin
      QConduceVEN_CODIGO.value := strtoint(Search.ValueField);
      dbVendedor.setfocus;
    end;
  end;

  if (DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados') then
  begin
    Search.AliasFields.clear;
    Search.AliasFields.add('Ficha');
    Search.AliasFields.add('Placa');
    Search.AliasFields.add('Chofer');
    Search.AliasFields.add('C�digo');
    Search.Query.clear;
    Search.Query.add('select Modelo, Placa, Chofer, CamionID');
    Search.Query.add('from Camiones');
    Search.Query.add('where 1 = 1 ');
    Search.ResultField := 'CamionID';
    Search.Title := 'Listado de Fichas';
    if Search.execute then
    begin
      QConduceVEN_CODIGO.value := strtoint(Search.ValueField);
      dbVendedor.setfocus;
    end;
  end;

end;

procedure TfrmConduce.QConduceVEN_CODIGOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if not (DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados') then
  begin
    if not QConduceVEN_CODIGO.IsNull then
    begin
      Text := IntToStr(QConduceVEN_CODIGO.value);
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select ven_nombre from vendedores');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and ven_codigo = :ven');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.ParamByName('ven').Value := QConduceVEN_CODIGO.value;
      dm.Query1.Open;
      if dm.Query1.RecordCount = 0 then
      begin
        tVendedor.Text := '';
        MessageDlg('ESTE VENDEDOR NO EXISTE', mtError, [mbok], 0);
        QConduceVEN_CODIGO.Clear;
        Exit;	 	 	 
      end      else
        tVendedor.Text := dm.Query1.FieldByName('ven_nombre').AsString;
    end;
  end;

  if (DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados') then
  begin
    if not QConduceVEN_CODIGO.IsNull then
    begin
      Text := IntToStr(QConduceVEN_CODIGO.value);
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select rtrim(Modelo) Ficha from Camiones');
      dm.Query1.SQL.Add('where CamionID = :ven');
      dm.Query1.Parameters.ParamByName('ven').Value := QConduceVEN_CODIGO.value;
      dm.Query1.Open;
      if dm.Query1.RecordCount = 0 then
      begin
        tAlmacen.Text := '';
        MessageDlg('ESTA FICHA NO EXISTE', mtError, [mbok], 0);
        QConduceVEN_CODIGO.Clear;
        Exit;
      end
      else
        tVendedor.Text := dm.Query1.FieldByName('FICHA').AsString;
    end;
  end;

end;

procedure TfrmConduce.SpeedButton2Click(Sender: TObject);
var
  a, dias, Emp: integer;
begin
  if MessageDlg('Desea seleccionar la EMPRESA?', mtConfirmation, [mbyes, mbno], 0) = mryes then
  begin
    Search.Query.clear;
    Search.AliasFields.clear;
    Search.Query.add('select emp_nombre, emp_codigo from empresas');
    Search.AliasFields.add('Nombre');
    Search.AliasFields.add('Codigo');
    Search.Title := 'Empresas';
    Search.ResultField := 'emp_codigo';
    if Search.execute then
      Emp := StrToInt(Search.ValueField)
    else
      Emp := dm.vp_cia;
  end
  else
    Emp := dm.vp_cia;

  Search.Query.clear;
  Search.AliasFields.clear;
  Search.Query.add('select ent_numero, ent_concepto, ent_fecha');
  Search.Query.add('from entradainv');
  Search.Query.add('where emp_codigo = ' + inttostr(Emp));
  Search.Query.add('and ent_status <> ' + #39 + 'ANU' + #39);
  Search.Query.add('and suc_codigo = ' + IntToStr(DBLookupComboBox2.KeyValue));
  Search.AliasFields.add('N�mero');
  Search.AliasFields.add('Concepto');
  Search.AliasFields.add('Fecha');
  Search.Title := 'Entradas de Almacen';
  Search.ResultField := 'ent_numero';
  if Search.execute then
  begin
    QUtil.Close;
    QUtil.SQL.Clear;
    QUtil.SQL.Add('select det_secuencia, pro_codigo, pro_roriginal,');
    QUtil.SQL.Add('pro_rfabric, pro_nombre, det_cantidad, det_medida,');
    QUtil.SQL.Add('det_precio, det_conitbis, det_itbis, det_costo');
    QUtil.SQL.Add('from det_entrada');
    QUtil.SQL.Add('where emp_codigo = :emp');
    QUtil.SQL.Add('and suc_codigo = :suc');
    QUtil.SQL.Add('and ent_numero = :num');
    QUtil.SQL.Add('and det_cantidad is not null');
    QUtil.Parameters.ParamByName('emp').Value := Emp;
    QUtil.Parameters.ParamByName('num').Value := StrToInt(Search.ValueField);
    QUtil.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    QUtil.Open;

    //Ins := True;

    QConduceent_numero.Value := StrToInt(Search.ValueField);

    QDetalle.enablecontrols;
    QDetalle.close;
    QDetalle.open;
    QDetalle.disablecontrols;
    QDetalle.First;
    while not QUtil.Eof do
    begin
      QDetalle.append;
      QDetalleDET_SECUENCIA.Value := QUtil.FieldByName('det_secuencia').AsInteger;
      QDetalleDET_CANTIDAD.Value := QUtil.FieldByName('det_cantidad').AsFloat;
      QDetalleDET_CONITBIS.Value := QUtil.FieldByName('det_conitbis').AsString;

      if not QUtil.FieldByName('pro_rfabric').IsNull then
        QDetallePRO_RFABRIC.Value := QUtil.FieldByName('pro_rfabric').AsString;

      if not QUtil.FieldByName('pro_roriginal').IsNull then
        QDetallePRO_RORIGINAL.Value := QUtil.FieldByName('pro_roriginal').AsString;

      QDetallePRO_CODIGO.Value := QUtil.FieldByName('pro_codigo').AsInteger;
      //QDetalleDET_COSTO.Value     := QUtil.FieldByName('det_precio').AsFloat;
      QDetalleEMP_CODIGO.Value := dm.vp_cia;
      QDetalleDET_ITBIS.Value := QUtil.FieldByName('det_itbis').AsFloat;
      QDetallePRO_NOMBRE.Value := QUtil.FieldByName('pro_nombre').AsString;
      QDetalleDET_MEDIDA.Value := QUtil.FieldByName('det_medida').AsString;
      QDetalleDET_PRECIO.Value := QUtil.FieldByName('det_costo').AsFloat;
      QDetalle.Post;

      QUtil.Next;

      Application.ProcessMessages;
    end;

    {QDetalle.last;
    for a := QDetalleDET_SECUENCIA.value+1 to 50 do
    begin
      QDetalle.append;
      QDetalleDET_SECUENCIA.value := a;
      QDetalleCON_NUMERO.value    := QConduceCON_NUMERO.Value;
      QDetalle.post;
      QDetalle.next;
    end;}
    QDetalle.first;
    QDetalle.enablecontrols;

    Totalizar;
  end;
  PageControl2.ActivePageIndex := 0;
  Grid.SetFocus;
end;

procedure TfrmConduce.btserieClick(Sender: TObject);
var
  a, fila: integer;
begin
  if QDetalleDET_CANTIDAD.Value > 0 then
  begin
    if not QSerie.Active then
    begin
      QSerie.Close;
      QSerie.Parameters.ParamByName('emp').Value := dm.vp_cia;
      QSerie.Parameters.ParamByName('suc').Value := -1;
      QSerie.Parameters.ParamByName('numero').Value := -1;
      QSerie.Open;
    end;

    Application.CreateForm(tfrmSerieFactura, frmSerieFactura);
    frmSerieFactura.Tag := 28;
    frmSerieFactura.dsMantSerie.DataSet := frmConduce.QSerie;
    for a := 0 to frmSerieFactura.dsMantSerie.DataSet.RecordCount - 1 do
    begin
      frmSerieFactura.GridSerie.Cells[0, a] := '';
      frmSerieFactura.GridSerie.Cells[1, a] := '';
      frmSerieFactura.GridSerie.Cells[2, a] := '';
    end;
    //buscando #de serie y grabandolo en la pantalla de numeros de serie
    fila := 0;
    for a := 0 to GridSerie.RowCount - 1 do
    begin
      if (trim(GridSerie.Cells[0, a]) = inttostr(QDetallePRO_CODIGO.Value)) and (trim(GridSerie.Cells[1, a]) <> '') then
      begin
        frmSerieFactura.GridSerie.Cells[0, fila] := trim(GridSerie.Cells[1, a]);
        frmSerieFactura.GridSerie.Cells[1, fila] := trim(GridSerie.Cells[0, a]);
        frmSerieFactura.GridSerie.Cells[2, fila] := QConducefac_numero.AsString;
        fila := fila + 1;
      end;
    end;
    frmSerieFactura.ShowModal;

    //actualizando # de serie en el grid que esta en la factura
    for a := 0 to GridSerie.RowCount - 1 do
    begin
      if trim(GridSerie.Cells[0, a]) = inttostr(QDetallePRO_CODIGO.Value) then
      begin
        GridSerie.Cells[1, a] := '';
        GridSerie.Cells[2, a] := '';
      end;
    end;

    for a := 0 to frmSerieFactura.GridSerie.RowCount - 1 do
    begin
      GridSerie.RowCount := GridSerie.RowCount + 1;
      GridSerie.Cells[0, GridSerie.RowCount - 1] := inttostr(QDetallePRO_CODIGO.Value);
      GridSerie.Cells[1, GridSerie.RowCount - 1] := frmSerieFactura.GridSerie.Cells[0, a];
      GridSerie.Cells[2, GridSerie.RowCount - 1] := frmSerieFactura.GridSerie.Cells[2, a];
    end;

    frmSerieFactura.Release;
  end;
end;

procedure TfrmConduce.SpeedButton3Click(Sender: TObject);
var
  a: integer;
begin
  Search.AliasFields.clear;
  Search.AliasFields.add('Numero');
  Search.AliasFields.add('Nombre del Proveedor');
  Search.Query.clear;
  Search.Query.add('select ped_numero, ped_nombre');
  Search.Query.add('from pedidos');
  Search.Query.add('where emp_codigo = ' + inttostr(dm.vp_cia));
  Search.Query.add('and ped_tipo = ' + #39 + 'S' + #39);
  Search.Query.add('and ped_status = ' + #39 + 'EMI' + #39);
  Search.Query.add('and suc_codigo = ' + IntToStr(DBLookupComboBox2.KeyValue));
  Search.ResultField := 'ped_numero';
  Search.Title := 'Orden de Compra';
  if Search.execute then
  begin
    QDetalle.enablecontrols;
    QDetalle.close;
    QDetalle.open;
    QDetalle.disablecontrols;

    Query1.close;
    Query1.sql.clear;
    Query1.sql.add('select sup_codigo, ped_nombre, cli_referencia,');
    Query1.sql.add('ven_codigo, ped_direccion, ped_localidad,');
    Query1.sql.add('ped_telefono, ped_fax, ped_numero');
    Query1.sql.add('from pedidos');
    Query1.sql.add('where emp_codigo = :emp');
    Query1.sql.add('and ped_tipo = ' + #39 + 'S' + #39);
    Query1.sql.add('and ped_numero = :numero');
    Query1.sql.add('and suc_codigo = :suc');
    Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    Query1.Parameters.parambyname('numero').Value := strtoint(search.valuefield);
    Query1.Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;
    Query1.open;

    QConducePED_NUMERO.value := Query1.fieldbyname('ped_numero').asinteger;
    QConducePED_TIPO.Value := 'S';
    QConduceSup_codigo.Value := Query1.fieldbyname('sup_codigo').asinteger;

    Query1.close;
    Query1.sql.clear;
    Query1.sql.add('select d.pro_codigo, d.pro_roriginal, d.pro_rfabric, d.det_medida,');
    Query1.sql.add('(d.det_cantidad - isnull(d.det_despachado,0)) as det_cantidad,');
    Query1.sql.add('d.det_precio, d.det_conitbis, d.det_itbis,');
    Query1.sql.add('d.det_descuento, d.det_descripcion, d.det_manejaescala, d.det_Escala,');
    Query1.sql.add('p.pro_Servicio');
    Query1.sql.add('from det_pedido d, productos p');
    Query1.sql.add('where d.pro_codigo = p.pro_codigo');
    Query1.sql.add('and d.emp_codigo = :emp');
    Query1.sql.add('and p.emp_codigo = :empinv');
    Query1.sql.add('and d.ped_tipo = ' + #39 + 'S' + #39);
    Query1.sql.add('and d.ped_numero = :numero');
    Query1.sql.add('and d.suc_codigo = :suc');
    Query1.sql.add('and isnull(d.det_despachado,0) < d.det_cantidad');
    Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    Query1.Parameters.parambyname('empinv').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    Query1.Parameters.parambyname('numero').Value := strtoint(search.valuefield);
    Query1.Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;
    Query1.open;

    Totaliza := false;
    //Ins := True;

    a := 0;
    while not Query1.eof do
    begin
      a := a + 1;
      QDetalle.append;
      QDetalleEMP_CODIGO.value := dm.vp_cia;
      QDetalleDET_SECUENCIA.value := a;
      QDetalleDET_CANTIDAD.value := Query1.fieldbyname('det_cantidad').asfloat;
      QDetalleDET_ITBIS.value := Query1.fieldbyname('det_itbis').asfloat;
      QDetalleDET_DESCUENTO.value := Query1.fieldbyname('det_descuento').asfloat;
      QDetalleDET_CONITBIS.value := Query1.fieldbyname('det_conitbis').asstring;
      QDetallePRO_CODIGO.value := Query1.fieldbyname('pro_codigo').asinteger;

      if not Query1.fieldbyname('pro_roriginal').IsNull then
        QDetallePRO_RORIGINAL.value := Query1.fieldbyname('pro_roriginal').asstring;

      if not Query1.fieldbyname('pro_rfabric').IsNull then
        QDetallePRO_RFABRIC.value := Query1.fieldbyname('pro_rfabric').asstring;

      QDetallePRO_NOMBRE.Value := Query1.FieldByName('det_descripcion').AsString;
      QDetalleDET_MANEJAESCALA.Value := Query1.fieldbyname('det_manejaescala').asstring;
      if trim(QDetalleDET_MANEJAESCALA.Value) = 'True' then
        QDetalleDET_ESCALA.Value := Query1.fieldbyname('det_escala').asstring;
      QDetalleDET_MEDIDA.Value := Query1.fieldbyname('det_medida').asstring;
      QDetalleDET_PRECIO.value := Query1.fieldbyname('det_precio').asfloat;
      //QDetallePRO_SERVICIO.Value  := Query1.fieldbyname('pro_servicio').asstring;
      QDetalle.post;
      Query1.next;

      Application.ProcessMessages;
    end;

    QDetalle.first;
    QDetalle.enablecontrols;

    Totaliza := true;
    totalizar;
  end;
  PageControl2.ActivePageIndex := 0;
  Grid.SetFocus;
end;

procedure TfrmConduce.dsConduceStateChange(Sender: TObject);
begin
  dbAlmacen.Enabled := dsConduce.State = dsInsert;
  btalmacen.Enabled := dsConduce.State = dsInsert;
end;

procedure TfrmConduce.edProveedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_return then
  begin
    if trim(edProveedor.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select sup_codigo, sup_nombre, sup_direccion, sup_localidad, sup_telefono, sup_fax');
      dm.Query1.sql.add('from Proveedores');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and sup_status = ' + #39 + 'ACT' + #39);
      dm.Query1.sql.add('and sup_codigo = ' + Trim(edProveedor.Text));
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      //dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;

      dm.Query1.open;
      QConduceCON_NOMBRE.value := dm.Query1.fieldbyname('sup_nombre').asstring;
      QConduceSUP_CODIGO.value := dm.Query1.fieldbyname('sup_codigo').asinteger;
      QConduceCON_DIRECCION.Value := dm.Query1.fieldbyname('sup_direccion').asstring;
      QConduceCON_LOCALIDAD.Value := dm.Query1.fieldbyname('sup_localidad').asstring;
      QConduceCON_TELEFONO.Value := dm.Query1.fieldbyname('sup_telefono').asstring;
      QConduceCON_FAX.Value := dm.Query1.fieldbyname('sup_fax').asstring;
    end;
  end;
end;

procedure TfrmConduce.btbuscasupClick(Sender: TObject);
begin
  Search.Query.clear;
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Telefono');
  Search.AliasFields.Add('RNC');
  Search.AliasFields.Add('C�digo');
  Search.Query.add('select sup_nombre, sup_telefono, sup_rnc, sup_codigo');
  Search.ResultField := 'sup_codigo';
  Search.Query.add('from proveedores');
  Search.Query.add('where emp_codigo = ' + inttostr(dm.vp_cia));
  Search.Query.add('and sup_Status = ' + #39 + 'ACT' + #39);
  Search.Title := 'Listado de Proveedores';
  if Search.execute then
  begin
    edProveedor.text := search.valuefield;
    edProveedor.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select sup_codigo, sup_nombre,');
    dm.Query1.sql.add('sup_direccion, sup_localidad, sup_telefono, sup_fax');
    dm.Query1.sql.add('from proveedores');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and sup_Status = ' + #39 + 'ACT' + #39);
    dm.Query1.sql.add('and sup_codigo = :sup');
    dm.Query1.Parameters.parambyname('sup').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    //dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    QConduceCON_NOMBRE.value := dm.Query1.fieldbyname('sup_nombre').asstring;
    QConduceSUP_CODIGO.value := dm.Query1.fieldbyname('sup_codigo').asinteger;
    QConduceCON_DIRECCION.Value := dm.Query1.fieldbyname('sup_direccion').asstring;
    QConduceCON_LOCALIDAD.Value := dm.Query1.fieldbyname('sup_localidad').asstring;
    QConduceCON_TELEFONO.Value := dm.Query1.fieldbyname('sup_telefono').asstring;
    QConduceCON_FAX.Value := dm.Query1.fieldbyname('sup_fax').asstring;
    edProveedor.setfocus;
  end;
end;

procedure TfrmConduce.btBuscaProdProvClick(Sender: TObject);
var
  primera: boolean;
begin
  application.createform(tfrmBuscaProducto, frmBuscaProducto);
  frmBuscaProducto.QProductos.Filter := 'sup_codigo = ' + IntToStr(QConduceSUP_CODIGO.Value);
  frmBuscaProducto.QProductos.Filtered := True;
  frmBuscaProducto.facturando := true;
  frmBuscaProducto.almacen := QConduceALM_CODIGO.Value;
  primera := true;
  while (frmBuscaProducto.ckactiva.Checked) or (primera) do
  begin
    frmBuscaProducto.showmodal;
    primera := false;
    if frmBuscaProducto.seleccion = 1 then
    begin
      QDetalle.Edit;
      if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
        QDetallePRO_CODIGO.value := frmBuscaProducto.QProductosPRO_CODIGO.value
      else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
        QDetallePRO_RFABRIC.value := frmBuscaProducto.QProductosPRO_RFABRIC.value
      else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
        QDetallePRO_RORIGINAL.value := frmBuscaProducto.QProductosPRO_RORIGINAL.value;

      if frmBuscaProducto.ckactiva.Checked then
      begin
        QDetalle.Append;
        Grid.SelectedIndex := 0;
      end;
    end;
  end;
  frmBuscaProducto.release;
  Grid.setfocus;
end;

procedure TfrmConduce.btfacturaClick(Sender: TObject);
begin
  application.createform(tfrmBuscaFactura, frmBuscaFactura);
  frmBuscaFactura.DBLookupComboBox1.KeyValue := frmBuscaFactura.QTipoTFA_CODIGO.Value;
  frmBuscaFactura.DBLookupComboBox2.KeyValue := DBLookupComboBox2.KeyValue;
  QConduceSUC_CODIGO.Value := DBLookupComboBox2.KeyValue;
  frmBuscaFactura.showmodal;
  if frmBuscaFactura.Busco = true then
  begin
    BuscaFactura(StrToInt(frmBuscaFactura.edNumero.Text), frmBuscaFactura.DBLookupComboBox2.KeyValue, frmBuscaFactura.DBLookupComboBox1.KeyValue, frmBuscaFactura.rbForma.Items[frmBuscaFactura.rbForma.itemindex]);
  end;
  frmBuscaFactura.Release;
  PageControl2.ActivePageIndex := 0;
  Grid.SetFocus;
end;

procedure TfrmConduce.btcamionClick(Sender: TObject);
begin
  Search.Query.clear;
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Placa');
  Search.AliasFields.Add('Chofer');
  Search.AliasFields.Add('Compa��a');
  Search.AliasFields.Add('Marca');
  Search.AliasFields.Add('Modelo');
  Search.AliasFields.Add('C�digo');
  Search.Query.add('select Placa, Chofer, Compania, Marca, Modelo, CamionID');
  Search.Query.add('from Camiones');
  Search.Title := 'Camiones';
  Search.ResultField := 'Placa';
  if Search.execute then
  begin
    QConducePlaca.value := Search.ValueField;
    DBEdit16.setfocus;
  end;
end;

procedure TfrmConduce.dsDetalleDataChange(Sender: TObject; Field: TField);
begin
  lbpendiente.Caption := FloatToStr(QDetalledet_facturado.AsFloat) + ' pendiente despachar';
  lbpendiente.Visible := QConducefac_numero.Value > 0;
end;

procedure TfrmConduce.QConducePlacaChange(Sender: TField);
begin
  if not QConducePlaca.IsNull then
  begin
    memocamion.Lines.clear;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select CamionID, Marca, Placa, Modelo, Chofer, Metraje, Compania');
    dm.Query1.SQL.Add('from camiones where placa = ' + QuotedStr(QConducePlaca.AsString));
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      memocamion.Lines.Add('Marca: ' + dm.Query1.FieldByName('Marca').AsString);
      memocamion.Lines.Add('Modelo: ' + dm.Query1.FieldByName('Modelo').AsString);
      memocamion.Lines.Add('Placa: ' + dm.Query1.FieldByName('Placa').AsString);
      memocamion.Lines.Add('Chofer: ' + dm.Query1.FieldByName('Chofer').AsString);
      memocamion.Lines.Add('Metraje: ' + dm.Query1.FieldByName('Metraje').AsString);
      memocamion.Lines.Add('Compania: ' + dm.Query1.FieldByName('Compania').AsString);
      QConduceMarca.Value := dm.Query1.FieldByName('Marca').AsString;
      QConduceModelo.Value := dm.Query1.FieldByName('Modelo').AsString;
      QConduceCamionID.Value := dm.Query1.FieldByName('CamionID').AsInteger;
      QConduceChofer.Value := dm.Query1.FieldByName('Chofer').AsString;
      QConduceMetraje.Value := dm.Query1.FieldByName('Metraje').AsFloat;
      QConduceCompania.Value := dm.Query1.FieldByName('Compania').AsString;
    end;
  end;
end;

procedure TfrmConduce.BuscaFactura(num, suc, tfa: integer; forma: string);
var
  a: integer;
begin
  Query1.close;
  Query1.sql.clear;
  Query1.sql.add('select cli_codigo, fac_nombre, cli_referencia,');
  Query1.sql.add('ven_codigo, fac_direccion, fac_localidad,');
  Query1.sql.add('fac_telefono, fac_fax, fac_numero, fac_status,');
  Query1.sql.add('Placa, Chofer, Metraje, Compania, Marca, Modelo, CamionID');
  Query1.sql.add('from facturas f');
  Query1.sql.add('where emp_codigo = :emp');
  Query1.sql.add('and fac_forma = ' + QuotedStr(forma));
  Query1.sql.add('and fac_numero = :num');
  Query1.sql.add('and suc_codigo = :suc');
  Query1.sql.add('and tfa_codigo = :tfa');
  Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  Query1.Parameters.parambyname('num').Value := num;
  Query1.Parameters.parambyname('suc').Value := suc;
  Query1.Parameters.parambyname('tfa').Value := tfa;
  Query1.open;
  if Query1.RecordCount = 0 then
  begin
    MessageDlg('Esta factura no existe', mtError, [mbok], 0);
    Grid.SetFocus;
  end
  else if Query1.FieldByName('fac_status').AsString = 'ANU' then
  begin
    MessageDlg('Esta factura est� anulada', mtError, [mbok], 0);
    Grid.SetFocus;
  end
  else
  begin
    DM.adoMultiUso.Close;
    DM.adoMultiUso.close;
    DM.adoMultiUso.sql.clear;
    DM.adoMultiUso.sql.add('select * from det_factura d');
    DM.adoMultiUso.sql.add('where emp_codigo = :emp');
    DM.adoMultiUso.sql.add('and fac_forma = ' + QuotedStr(forma));
    DM.adoMultiUso.sql.add('and fac_numero = :num');
    DM.adoMultiUso.sql.add('and suc_codigo = :suc');
    DM.adoMultiUso.sql.add('and tfa_codigo = :tfa');
    DM.adoMultiUso.sql.add('and isnull(d.det_despachado,0) < isnull(d.det_cantidad,0)');
    DM.adoMultiUso.Parameters.parambyname('emp').Value := dm.vp_cia;
    DM.adoMultiUso.Parameters.parambyname('num').Value := num;
    DM.adoMultiUso.Parameters.parambyname('suc').Value := suc;
    DM.adoMultiUso.Parameters.parambyname('tfa').Value := tfa;
    DM.adoMultiUso.open;

    if dm.adoMultiUso.RecordCount =  0 then begin
    ShowMessage('Esta factura no tiene productos pendientes de entrega....');
    Abort;
    end;


    QConducefac_forma.Value := forma;
    QConducetfa_codigo.Value := tfa;
    QConducefac_numero.Value := num;
    if (dm.QParametrospar_fac_preimpresa.Value = 'True') and (dm.QParametrospar_formato_preimpreso.Value = 'QRAgregados') then
      QConducePlaca.Value := Query1.FieldByName('Placa').AsString;

    QDetalle.enablecontrols;
    QDetalle.close;
    QDetalle.open;
    QDetalle.disablecontrols;

    //Ins := True;

    if not Query1.FieldByName('cli_codigo').IsNull then
    begin
      QConduceCLI_CODIGO.value := Query1.fieldbyname('cli_codigo').asinteger;
      QConduceCLI_REFERENCIA.value := Query1.fieldbyname('cli_referencia').asstring;
      if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
        edCliente.text := Query1.fieldbyname('cli_codigo').asstring
      else
        edCliente.text := Query1.fieldbyname('cli_referencia').asstring;
    end;
    QConduceEMP_CODIGO.Value := DM.vp_cia;
    QConduceCON_NOMBRE.Value := Query1.fieldbyname('fac_nombre').asstring;
    QConduceCON_DIRECCION.value := Query1.fieldbyname('fac_direccion').asstring;
    QConduceCON_TELEFONO.value := Query1.fieldbyname('fac_telefono').asstring;
    QConduceCON_FAX.value := Query1.fieldbyname('fac_fax').asstring;
    QConducePED_NUMERO.value := Query1.fieldbyname('fac_numero').asinteger;
    QConducePED_TIPO.Value := 'C';
    QConduceVEN_CODIGO.Value := Query1.fieldbyname('ven_codigo').asinteger;

    QUtil.close;
    QUtil.sql.clear;
    QUtil.sql.add('select d.pro_codigo, d.pro_roriginal, d.pro_rfabric, d.det_medida,');
    QUtil.sql.add('((d.det_cantidad - isnull(d.det_despachado,0)) - isnull(d.det_cantdevuelta,0)) as det_cantidad,');
    QUtil.sql.add('d.det_precio, d.det_conitbis, d.det_itbis,');
    QUtil.sql.add('d.det_descuento, d.pro_nombre, d.det_manejaescala, d.det_Escala,');
    QUtil.sql.add('d.det_despachado,');
    QUtil.sql.add('d.pro_unidad_medida, d.UnidadID, d.det_cantempaque, d.Medida_Precio1,');
    QUtil.sql.add('d.Medida_Precio2, d.Medida_Precio3, d.Medida_Precio4, d.det_cant_unidad_medida');
    QUtil.sql.add(',d.suc_codigo');
    QUtil.sql.add('from det_factura d');
    QUtil.sql.add('where emp_codigo = :emp');
    QUtil.sql.add('and fac_forma = ' + QuotedStr(forma));
    QUtil.sql.add('and fac_numero = :num');
    QUtil.sql.add('and suc_codigo = :suc');
    QUtil.sql.add('and tfa_codigo = :tfa');
    QUtil.sql.add(' and isnull(d.det_despachado,0) < isnull(d.det_cantidad,0)');
    QUtil.Parameters.parambyname('emp').Value := dm.vp_cia;
    QUtil.Parameters.parambyname('num').Value := num;
    QUtil.Parameters.parambyname('suc').Value := suc;
    QUtil.Parameters.parambyname('tfa').Value := tfa;
    QUtil.open;

    DBLookupComboBox2.Enabled := False;
    dbAlmacen.Enabled := DBLookupComboBox2.Enabled;
    tAlmacen.Enabled := DBLookupComboBox2.Enabled;
    btalmacen.Enabled := DBLookupComboBox2.Enabled;


    if Query1.RecordCount = 0 then
    begin
      MessageDlg('Esta factura no tiene productos pendiente de despachar', mtError, [mbOK], 0);
      QConduce.close;
      QConduce.Parameters.parambyname('numero').Value := -1;
      QConduce.Parameters.parambyname('suc').Value := -1;
      QConduce.open;
      Grid.SetFocus;
      QConduce.insert;
    end
    else
    begin
      Totaliza := false;

      a := 0;
      while not QUtil.eof do
      begin
        a := a + 1;
        QDetalle.append;
        QDetalleEMP_CODIGO.value := dm.vp_cia;
        QDetalleSUC_CODIGO.value := QUtil.fieldbyname('SUC_CODIGO').AsInteger;
        QDetalleDET_SECUENCIA.value := a;
        QDetalleDET_CANTIDAD.value := QUtil.fieldbyname('det_cantidad').asfloat;
        QDetalleDET_ITBIS.value := QUtil.fieldbyname('det_itbis').asfloat;
        QDetalleDET_DESCUENTO.value := QUtil.fieldbyname('det_descuento').asfloat;
        QDetalleDET_CONITBIS.value := QUtil.fieldbyname('det_conitbis').asstring;
        QDetallePRO_CODIGO.value := QUtil.fieldbyname('pro_codigo').asinteger;
        QDetalledet_facturado.Value := QUtil.fieldbyname('det_cantidad').asfloat;

        if not QUtil.fieldbyname('pro_rfabric').IsNull then
          QDetallePRO_RFABRIC.value := QUtil.fieldbyname('pro_rfabric').asstring;

        if not QUtil.fieldbyname('pro_roriginal').IsNull then
          QDetallePRO_RORIGINAL.value := QUtil.fieldbyname('pro_roriginal').asstring;

        QDetallePRO_NOMBRE.Value := QUtil.FieldByName('pro_nombre').AsString;
        QDetalleDET_MANEJAESCALA.Value := QUtil.fieldbyname('det_manejaescala').asstring;
        if trim(QDetalleDET_MANEJAESCALA.Value) = 'True' then
          QDetalleDET_ESCALA.Value := QUtil.fieldbyname('det_escala').asstring;
        QDetalleDET_MEDIDA.Value := QUtil.fieldbyname('det_medida').asstring;
        QDetalleDET_PRECIO.value := QUtil.fieldbyname('det_precio').asfloat;

        QDetallepro_unidad_medida.Value := QUtil.fieldbyname('pro_unidad_medida').asstring;
        QDetalleUnidadID.Value := QUtil.fieldbyname('UnidadID').asstring;
        QDetalledet_cantempaque.Value := QUtil.fieldbyname('det_cantempaque').asfloat;
        QDetalleMedida_Precio1.Value := QUtil.fieldbyname('Medida_Precio1').asfloat;
        QDetalleMedida_Precio2.Value := QUtil.fieldbyname('Medida_Precio2').asfloat;
        QDetalleMedida_Precio3.Value := QUtil.fieldbyname('Medida_Precio3').asfloat;
        QDetalleMedida_Precio4.Value := QUtil.fieldbyname('Medida_Precio4').asfloat;
        QDetalledet_cant_unidad_medida.Value := QUtil.fieldbyname('det_cant_unidad_medida').asfloat;

        QDetalle.post;
        QUtil.next;

        Application.ProcessMessages;
      end;
      QDetalle.first;
      QDetalle.enablecontrols;

      Totaliza := true;
      totalizar;
    end;
  end;
end;

procedure TfrmConduce.btPrecioClick(Sender: TObject);
begin
  if not QDetallePRO_CODIGO.isnull then
  begin
    application.createform(tfrmPrecios, frmPrecios);
    frmPrecios.edProducto.text := QDetallePRO_NOMBRE.value;
    if dm.QParametrospar_inv_unidad_medida.Value <> 'True' then
    begin
      dm.query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select pro_precio1, pro_precio2,');
      dm.Query1.sql.add('pro_precio3, pro_precio4 ');
      dm.Query1.sql.add('from productos ');
      dm.Query1.sql.add('where emp_codigo = :emp ');
      dm.Query1.sql.add('and pro_Codigo = :prod');
      dm.query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.query1.Parameters.parambyname('prod').Value := QDetallePRO_CODIGO.value;
      dm.query1.open;
      frmPrecios.edPrecio1.text := format('%n', [dm.Query1.fieldbyname('pro_precio1').asfloat]);
      frmPrecios.edPrecio2.text := format('%n', [dm.Query1.fieldbyname('pro_precio2').asfloat]);
      frmPrecios.edPrecio3.text := format('%n', [dm.Query1.fieldbyname('pro_precio3').asfloat]);
      frmPrecios.edPrecio4.text := format('%n', [dm.Query1.fieldbyname('pro_precio4').asfloat]);
      frmPrecios.showmodal;
      if frmPrecios.Precio <> 'null' then
      begin
        QDetalle.edit;
        QDetalleDET_PRECIO.value := dm.Query1.fieldbyname(frmPrecios.Precio).asfloat;
        QDetalle.post;
      end;
    end
    else
    begin
      frmPrecios.TabSheet1.Destroy;
      frmPrecios.QProductos.Parameters.ParamByName('prod').Value := QDetallePRO_CODIGO.Value;
      frmPrecios.QProductos.Open;

      frmPrecios.QUnidades.Close;
      frmPrecios.QUnidades.Parameters.ParamByName('emp_codigo').Value := dm.vp_cia; //dm.QParametrosPAR_INVEMPRESA.Value;
      frmPrecios.QUnidades.Parameters.ParamByName('pro_codigo').Value := QDetallePRO_CODIGO.Value;
      frmPrecios.QUnidades.Parameters.ParamByName('uni').Value := QDetalleUnidadID.Value;
      frmPrecios.QUnidades.Open;

      frmPrecios.ActiveControl := frmPrecios.gunidades;
      frmPrecios.ShowModal;
      if frmPrecios.acepto = 1 then
      begin
        QDetalle.edit;
        QDetalleDET_PRECIO.value := frmPrecios.QUnidadesPrecio.Value;
        QDetalle.post;
      end;
    end;
    frmPrecios.Release;
  end;
  PageControl1.ActivePageIndex := 0;
  Grid.setfocus;
end;

procedure TfrmConduce.btcotizacionClick(Sender: TObject);
var
  a: integer;
begin
  if ((DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados') and (QConduceDEP_CODIGO.Value = 0)) then
  begin
    ShowMessage('Debes seleccionar el proyecto para buscar la cotizacion....');
    DBEdit8.SetFocus;
  end
  else
  begin
    Search.AliasFields.clear;
    Search.AliasFields.add('Numero');
    Search.AliasFields.add('Nombre del Cliente');
    Search.Query.clear;
    Search.Query.add('select cot_numero, cot_nombre');
    Search.Query.add('from cotizacion');
    Search.Query.add('where emp_codigo = ' + inttostr(dm.vp_cia));
    Search.Query.add('and suc_codigo = ' + IntToStr(DBLookupComboBox2.KeyValue));
    if DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados' then
      Search.Query.add('and COT_STATUS = ''EMI'' AND dep_codigo = ' + IntToStr(QConduceDEP_CODIGO.Value));
    Search.ResultField := 'cot_numero';
    Search.Title := 'Cotizaciones';
    if Search.execute then
    begin
      QDetalle.enablecontrols;
      QDetalle.close;
      QDetalle.open;
      QDetalle.disablecontrols;

    //Ins := True;

      Query1.close;
      Query1.sql.clear;
      Query1.sql.add('select cli_codigo, cot_nombre, cli_referencia,');
      Query1.sql.add('ven_codigo, cot_direccion, cot_localidad,');
      Query1.sql.add('cot_telefono, cot_fax, cot_numero');
      Query1.sql.add('from cotizacion');
      Query1.sql.add('where emp_codigo = :emp');
      Query1.sql.add('and cot_numero = :numero');
      Query1.sql.add('and suc_codigo = :suc');
      Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      Query1.Parameters.parambyname('numero').Value := strtoint(search.valuefield);
      Query1.Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;
      Query1.open;

      if not Query1.FieldByName('cli_codigo').IsNull then
      begin
        QConduceCLI_CODIGO.value := Query1.fieldbyname('cli_codigo').asinteger;
        QConducePED_TIPO.Value := 'C';
        QConducePED_NUMERO.Value := Query1.FieldByName('cot_numero').Value;
        QConduceCLI_REFERENCIA.value := Query1.fieldbyname('cli_referencia').asstring;
        if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
          edCliente.text := Query1.fieldbyname('cli_codigo').asstring
        else
          edCliente.text := Query1.fieldbyname('cli_referencia').asstring;
      end;
      QConduceCON_NOMBRE.Value := Query1.fieldbyname('cot_nombre').asstring;
      QConduceCON_DIRECCION.value := Query1.fieldbyname('cot_direccion').asstring;
      QConduceCON_TELEFONO.value := Query1.fieldbyname('cot_telefono').asstring;
      QConduceCON_FAX.value := Query1.fieldbyname('cot_fax').asstring;
      QConduceVEN_CODIGO.Value := Query1.fieldbyname('ven_codigo').asinteger;

      Query1.close;
      Query1.sql.clear;
      Query1.sql.add('select d.pro_codigo, d.pro_roriginal, d.pro_rfabric, d.det_medida,');
      Query1.sql.add('det_cantidad, d.det_precio, d.det_conitbis, d.det_itbis,');
      Query1.sql.add('d.det_descuento, d.pro_nombre, d.det_manejaescala, d.det_Escala,');
      Query1.sql.add('p.pro_Servicio');
      if (DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados') then
      begin
        Query1.SQL.Add(',ISNULL((SELECT DCT.det_cantidad');
        Query1.SQL.Add('FROM Det_Cotizacion DCT');
        Query1.SQL.Add('INNER JOIN Cotizacion C ON DCT.emp_codigo = C.emp_codigo AND DCT.cot_numero = C.cot_numero');
        Query1.SQL.Add('WHERE C.DEP_CODIGO = (SELECT TOP 1 DEP_CODIGO FROM COTIZACION WHERE EMP_CODIGO = D.EMP_CODIGO');
        Query1.SQL.Add('AND cot_numero = D.cot_numero) AND C.cot_status = ''EMI'' AND DCT.pro_codigo = P.pro_codigo),0) COT_CANTIDAD,');
        Query1.SQL.Add('ISNULL((SELECT SUM(DCT.det_cantidad)');
        Query1.SQL.Add('FROM Det_Conduce DCT');
        Query1.SQL.Add('INNER JOIN Conduce C ON DCT.emp_codigo = C.emp_codigo AND DCT.con_numero = C.con_numero');
        Query1.SQL.Add('WHERE C.DEP_CODIGO = (SELECT TOP 1 DEP_CODIGO FROM COTIZACION WHERE EMP_CODIGO = D.EMP_CODIGO AND cot_numero = D.cot_numero)');
        Query1.SQL.Add('AND C.con_status = ''EMI'' AND DCT.pro_codigo = P.pro_codigo),0) ENTREGA_CANT');
      end;
      Query1.sql.add('from det_cotizacion d, productos p');
      Query1.sql.add('where d.pro_codigo = p.pro_codigo');
      Query1.sql.add('and d.emp_codigo = :emp');
      Query1.sql.add('and p.emp_codigo = :empinv');
      Query1.sql.add('and d.cot_numero = :numero');
      Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      Query1.Parameters.parambyname('empinv').Value := dm.vp_cia; //dm.QParametrosPAR_INVEMPRESA.Value;
      Query1.Parameters.parambyname('numero').Value := strtoint(search.valuefield);
      Query1.open;

      Totaliza := false;

      a := 0;
      while not Query1.eof do
      begin
        a := a + 1;
        QDetalle.append;
        QDetalleEMP_CODIGO.value := dm.vp_cia;
        QDetalleDET_SECUENCIA.value := a;
        if (DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados') then
        begin
          QDetalleDET_CANTIDAD.value := Query1.fieldbyname('COT_CANTIDAD').asfloat - Query1.fieldbyname('ENTREGA_CANT').asfloat;
          QDetalleCOT_CANTIDAD.value := Query1.fieldbyname('COT_CANTIDAD').asfloat;
          QDetalleENTREGA_CANT.value := Query1.fieldbyname('ENTREGA_CANT').asfloat;
        end;
        if not (DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados') then
          QDetalleDET_CANTIDAD.value := Query1.fieldbyname('det_cantidad').asfloat;

        QDetalleDET_ITBIS.value := Query1.fieldbyname('det_itbis').asfloat;
        QDetalleDET_CONITBIS.value := Query1.fieldbyname('det_conitbis').asstring;
        QDetallePRO_CODIGO.value := Query1.fieldbyname('pro_codigo').asinteger;

        if not Query1.fieldbyname('pro_roriginal').IsNull then
          QDetallePRO_RORIGINAL.value := Query1.fieldbyname('pro_roriginal').asstring;

        if not Query1.fieldbyname('pro_rfabric').IsNull then
          QDetallePRO_RFABRIC.value := Query1.fieldbyname('pro_rfabric').asstring;

        QDetallePRO_NOMBRE.Value := Query1.FieldByName('pro_nombre').AsString;
        QDetalleDET_MANEJAESCALA.Value := Query1.fieldbyname('det_manejaescala').asstring;
        if trim(QDetalleDET_MANEJAESCALA.Value) = 'True' then
          QDetalleDET_ESCALA.Value := Query1.fieldbyname('det_escala').asstring;
        QDetalleDET_MEDIDA.Value := Query1.fieldbyname('det_medida').asstring;
        QDetalleDET_PRECIO.value := Query1.fieldbyname('det_precio').asfloat;
        QDetalle.post;
        Query1.next;

        Application.ProcessMessages;
      end;

      QDetalle.first;
      QDetalle.enablecontrols;

      Totaliza := true;
      totalizar;
    end;
    PageControl2.ActivePageIndex := 0;
    Grid.SetFocus;
    if DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados' then
    begin
      if QDetalle.RecordCount > 0 then
      begin
        application.createform(TFrmProdConduce, FrmProdConduce);
        FrmProdConduce.showmodal;
      end;
    end;
  end;
end;

procedure TfrmConduce.bteliminacuentaClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR LA CUENTA?', mtconfirmation, [mbyes, mbno], 0) = mryes then
  begin
    QCuentas.Delete
  end;
  GridCuentas.setfocus;
end;

procedure TfrmConduce.btbuscacuentaClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = ' + IntToStr(dm.vp_cia));
  Search.Query.Add('and cat_movimiento = ' + #39 + 'S' + #39);
  Search.AliasFields.Add('Descripci�n');
  Search.AliasFields.Add('Cuenta');
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catalogo de Cuentas';
  if Search.execute then
  begin
    QCuentas.Edit;
    QCuentascat_cuenta.Value := Search.ValueField;
  end;
end;

procedure TfrmConduce.QCuentascat_cuentaChange(Sender: TField);
begin
  if not QCuentascat_cuenta.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre, cat_origen, cat_movimiento from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value := QCuentascat_cuenta.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
    begin
      MessageDlg('ESTA CUENTA NO EXISTE', mtError, [mbok], 0);
      QCuentascat_cuenta.Clear;
      Exit;
    end
    else if dm.Query1.FieldByName('cat_movimiento').AsString = 'N' then
    begin
      MessageDlg('ESTA CUENTA NO ACEPTA MOVIMIENTO', mtError, [mbok], 0);
      QCuentascat_cuenta.Clear;
      Exit;
    end
    else if dm.Query1.RecordCount > 0 then
    begin
      QCuentas.Edit;
      QCuentasCAT_NOMBRE.Value := dm.Query1.FieldByName('cat_nombre').AsString;
      if DM.Query1.fieldbyname('cat_origen').AsString = 'D' then
      QCuentasdet_origen.Value := 'Debito';
      if DM.Query1.fieldbyname('cat_origen').AsString = 'C' then
      QCuentasdet_origen.Value := 'Credito';
      GridCuentas.SelectedIndex := 2;
    end;
  end;
end;

procedure TfrmConduce.GridCuentasColEnter(Sender: TObject);
begin
  if GridCuentas.SelectedIndex = 2 then
    GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1;
end;

procedure TfrmConduce.GridCuentasEnter(Sender: TObject);
begin
  GridCuentas.SelectedIndex := 1;
end;

procedure TfrmConduce.GridCuentasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if GridCuentas.SelectedIndex = 3 then
  begin
    if Key = 68 then
    begin
      QCuentas.Edit;
      QCuentasDET_ORIGEN.Value := 'Debito';
      GridCuentas.SelectedIndex := 4;
    end
    else if Key = 67 then
    begin
      QCuentas.Edit;
      QCuentasDET_ORIGEN.Value := 'Credito';
      GridCuentas.SelectedIndex := 4;
    end;
  end;
  if Key = vk_insert then
    abort;
  if (ssCtrl in Shift) and (Key = vk_delete) then
    abort;
  if Key = vk_return then
    if GridCuentas.SelectedIndex <> 4 then
      GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1
    else
    begin
      GridCuentas.SelectedIndex := 1;
      QCuentas.Append;
    end;
end;

procedure TfrmConduce.GridCuentasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  DataRect: TRect;
begin
{
   // Place the button in the first column.
   If (Column.Index = 0) Then
   Begin
      With GridCuentas Do
      Begin
         DataRect := CellRect(Column.Index,Row);
      End;
   // Assign the button's parent to the grid.
   If spcentros.Parent <> GridCuentas Then
      spcentros.Parent := GridCuentas ;
   // Set the button's coordinates.
   // In this case, right justify the button.
   If spcentros.Left <> (DataRect.Right - spcentros.Width) Then
      spcentros.Left := (DataRect.Right - spcentros.Width) ;
   If (spcentros.Top <> DataRect.Top) Then
      spcentros.Top := DataRect.Top ;

   // Make sure the button's height fits in row.
   If (spcentros.Height <> (DataRect.Bottom-DataRect.Top)) Then
      spcentros.Height := (DataRect.Bottom-DataRect.Top);

   End;
   //}
end;

procedure TfrmConduce.spcentrosClick(Sender: TObject);
var
  a: integer;
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select cat_maneja_centro from contcatalogo');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and cat_cuenta = :cta');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('cta').Value := QCuentascat_cuenta.AsString;
  dm.Query1.Open;
  if dm.Query1.FieldByName('cat_maneja_centro').AsString <> 'S' then
  begin
    MessageDlg('Esta cuenta no acepta Centros de Costo', mtError, [mbyes], 0);
    GridCuentas.SetFocus;
  end
  else
  begin
    Application.CreateForm(tfrmCentrosXCuenta, frmCentrosXCuenta);
    frmCentrosXCuenta.lbcuenta.Caption := QCuentascat_cuenta.AsString + ': ' + QCuentasCAT_NOMBRE.AsString;
    frmCentrosXCuenta.cta := QCuentasCAT_CUENTA.AsString;
    frmCentrosXCuenta.vMontototal := QCuentasdet_monto.Value;

    //Grabando registro en la pantalla
    QCentro.DisableControls;
    QCentro.First;
    while not QCentro.Eof do
    begin
      if QCentrocat_cuenta.Value = QCuentasCAT_CUENTA.AsString then
      begin
        frmCentrosXCuenta.QCentro.Append;
        frmCentrosXCuenta.QCentrocen_nombre.Value := QCentrocen_nombre.Value;
        frmCentrosXCuenta.QCentrodet_monto.Value := QCentrodet_monto.Value;
        frmCentrosXCuenta.QCentrocen_referencia.Value := QCentrocen_referencia.Value;
        frmCentrosXCuenta.QCentrosub_referencia.Value := QCentrosub_referencia.Value;
        frmCentrosXCuenta.QCentrocen_codigo.Value := QCentrocen_codigo.Value;
        frmCentrosXCuenta.QCentrosub_secuencia.Value := QCentrosub_secuencia.Value;
        frmCentrosXCuenta.QCentro.Post;
      end;

      QCentro.Next;
    end;
    QCentro.EnableControls;

    frmCentrosXCuenta.ShowModal;

    //eliminando registros de la cuenta selccionada
    QCentro.DisableControls;
    QCentro.First;
    a := QCentro.RecordCount;
    while a > 0 do
    begin
      if QCentrocat_cuenta.Value = QCuentasCAT_CUENTA.AsString then
        QCentro.Delete
      else
        QCentro.Next;

      a := a - 1;
    end;
    QCentro.EnableControls;

    //insertando registros de la cuenta selccionada
    frmCentrosXCuenta.QCentro.DisableControls;
    frmCentrosXCuenta.QCentro.First;
    while not frmCentrosXCuenta.QCentro.Eof do
    begin
      QCentro.Append;
      QCentrocat_cuenta.Value := QCuentasCAT_CUENTA.AsString;
      QCentrocen_nombre.Value := frmCentrosXCuenta.QCentrocen_nombre.Value;
      QCentrodet_monto.Value := frmCentrosXCuenta.QCentrodet_monto.Value;
      QCentrocen_referencia.Value := frmCentrosXCuenta.QCentrocen_referencia.Value;
      QCentrosub_referencia.Value := frmCentrosXCuenta.QCentrosub_referencia.Value;
      QCentrocen_codigo.Value := frmCentrosXCuenta.QCentrocen_codigo.Value;
      QCentrosub_secuencia.Value := frmCentrosXCuenta.QCentrosub_secuencia.Value;
      QCentro.Post;

      frmCentrosXCuenta.QCentro.Next;
    end;
    frmCentrosXCuenta.QCentro.EnableControls;
    frmCentrosXCuenta.Release;
  end;
end;

procedure TfrmConduce.Crearnotaalproducto1Click(Sender: TObject);
begin
  application.createform(tfrmNota, frmNota);
  frmNota.DBMemo1.DataSource := frmConduce.dsDetalle;
  frmNota.DBMemo1.DataField := 'DET_NOTA';
  frmNota.showmodal;
  frmNota.release;
end;

procedure TfrmConduce.Vercombodelproducto1Click(Sender: TObject);
begin
  Application.CreateForm(tfrmConsCombo, frmConsCombo);
  frmConsCombo.QCombo.Parameters.ParamByName('emp').Value := dm.vp_cia;
  frmConsCombo.QCombo.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
  frmConsCombo.QCombo.Open;
  frmConsCombo.ShowModal;
  frmConsCombo.Release;
end;

procedure TfrmConduce.Escalas1Click(Sender: TObject);
begin
  if QDetalleDET_MANEJAESCALA.Value = 'True' then
  begin
    Application.CreateForm(tfrmSelEscala, frmSelEscala);
    frmSelEscala.QEscalas.Parameters.ParamByName('emp').Value := dm.vp_cia;
    frmSelEscala.QEscalas.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
    frmSelEscala.ShowModal;
    if frmSelEscala.Seleccion = True then
    begin
      QDetalle.Edit;
      QDetalleDET_ESCALA.Value := frmSelEscala.QEscalasESC_ESCALA.Value;
      QDetalle.Post;
    end;
    frmSelEscala.Release;
  end;
  PageControl1.ActivePageIndex := 0;
  Grid.SetFocus;
end;

procedure TfrmConduce.Consultarmovimiento1Click(Sender: TObject);
begin
  application.createform(tfrmConsProdClienteFac, frmConsProdClienteFac);
  if not QConduceCLI_CODIGO.IsNull then
  begin
    frmConsProdClienteFac.cli := QConduceCLI_CODIGO.value;
    frmConsProdClienteFac.CheckBox1.Checked := false;
  end
  else
  begin
    frmConsProdClienteFac.cli := 0;
    frmConsProdClienteFac.CheckBox1.Checked := true;
  end;
  frmConsProdClienteFac.pro := QDetallePRO_CODIGO.Value;
  frmConsProdClienteFac.QFacturas.Parameters.ParamByName('emp').Value := dm.vp_cia;
  frmConsProdClienteFac.QFacturas.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
  frmConsProdClienteFac.pr_consultar;
  frmConsProdClienteFac.ShowModal;
  frmConsProdClienteFac.Release;
end;

procedure TfrmConduce.Pantalladeproductos1Click(Sender: TObject);
var
  vIns, vMod, vDel: boolean;
begin
  //actuliza producto
   with qActulizaProd do begin
   Close;
   Parameters.ParamByName('PROD').Value := QDetallePRO_CODIGO.Value;
   Parameters.ParamByName('EMP').Value  := DM.vp_cia;
   ExecSQL;
   end;

  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value := uppercase('inv_productos');
  dm.Query1.open;
  if dm.Query1.RecordCount > 0 then
  begin
    vIns := dm.Query1.fieldbyname('Inserta').asboolean;
    vMod := dm.Query1.fieldbyname('Modifica').asboolean;
    vDel := dm.Query1.fieldbyname('Elimina').asboolean;
    frmMain.activaforma(tfrmProductos, tform(frmProductos));
    frmProductos.btEdit.visible := vMod;
    frmProductos.btInsert.visible := vIns;
    frmProductos.btDelete.visible := vDel;
    frmProductos.QProductos.Close;
    frmProductos.QProductos.Parameters.ParamByName('prod').Value := QDetallePRO_CODIGO.Value;
    frmProductos.QProductos.Open;
  end;
end;

procedure TfrmConduce.Ajustedeinventario1Click(Sender: TObject);
var
  vIns, vMod, vDel: boolean;
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value := uppercase('inv_ajuste');
  dm.Query1.open;
  if dm.Query1.RecordCount > 0 then
  begin
    frmMain.activaforma(tfrmAjusteInventario, tform(frmAjusteInventario));
    frmAjusteInventario.QProductos.Locate('pro_codigo', QDetallePRO_CODIGO.Value, []);
  end;
end;

procedure TfrmConduce.QDetallepro_unidad_medidaChange(Sender: TField);
begin
  if (not QDetallepro_unidad_medida.IsNull) and (dm.QParametrospar_inv_unidad_medida.Value = 'True') then
  begin
    //buscando precio por unidad de medida
    QUnidades.Close;
    QUnidades.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    QUnidades.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
    QUnidades.Parameters.ParamByName('und').Value := QDetallepro_unidad_medida.Value;
    QUnidades.Open;
    if QUnidades.RecordCount = 0 then
    begin
      MessageDlg('Esta unidad de medida no existe en el producto', mtError, [mbok], 0);
      QDetallepro_unidad_medida.Clear;
      Abort;
    end
    else
    begin
      QDetalleDET_PRECIO.Value := QUnidadesPrecio.Value;
      qdetalledet_cant_unidad_medida.Value := QUnidadesCantidad.AsFloat;
      QDetalleUnidadID.Value := QUnidadesUnidadID.Value;
      QDetallepro_unidad_medida.Value := QUnidadesNombre.Text;

    end;
  end;
end;

procedure TfrmConduce.TotalizarCuentas;
var
  Punt: TBookMark;
  a, b: integer;
begin
  if Totaliza = True then
  begin
    Totaliza := false;
    Debitos := 0;
    Creditos := 0;

    if rgtipo.ItemIndex = 0 then begin
    //Itbis
    if CtaItbis <> '' then
    begin
      if not QCuentas.Locate('cat_cuenta', CtaItbis, []) then
      begin
        QCuentas.Append;
        QCuentascat_cuenta.Value := CtaItbis;
        QCuentasdet_origen.Value := 'Credito';
        QCuentasdet_monto.Value  := strtofloat(format('%10.2f',[QConduceCON_ITBIS.Value]));
        QCuentas.Post;
      end
      else
      begin
        QCuentas.Edit;
        QCuentasdet_origen.Value := 'Credito';
        QCuentasdet_monto.Value  := strtofloat(format('%10.2f',[QConduceCON_ITBIS.Value]));
        QCuentas.Post;
      end;
    end;

    //Inventario
    if CtaInventario <> '' then
    begin
      if not QCuentas.Locate('cat_cuenta', CtaInventario, []) then
      begin
        QCuentas.Append;
        QCuentascat_cuenta.Value := CtaInventario;
        QCuentasdet_origen.Value := 'Credito';
        QCuentasdet_monto.Value  := strtofloat(format('%10.2f',[QConduceCON_TOTAL.Value-QConduceCON_ITBIS.Value]));
        QCuentas.Post;
      end
      else
      begin
        QCuentas.Edit;
        QCuentasdet_origen.Value := 'Credito';
        QCuentasdet_monto.Value  := strtofloat(format('%10.2f',[QConduceCON_TOTAL.Value-QConduceCON_ITBIS.Value]));
        QCuentas.Post;
      end;
    end;

    //Concepto
    if CtaConcepto <> '' then
    begin
      if not QCuentas.Locate('cat_cuenta', CtaConcepto, []) then
      begin
        QCuentas.Append;
        QCuentascat_cuenta.Value := CtaConcepto;
        QCuentasdet_origen.Value := 'Debito';
        QCuentasdet_monto.Value  := strtofloat(format('%10.2f',[QConduceCON_TOTAL.Value]));
        QCuentas.Post;
      end
      else
      begin
        QCuentas.Edit;
        QCuentasdet_origen.Value := 'Debito';
        QCuentasdet_monto.Value  := strtofloat(format('%10.2f',[QConduceCON_TOTAL.Value]));
        QCuentas.Post;
      end;
    end;
    end;

    Punt := QCuentas.GetBookmark;
    QCuentas.DisableControls;
    QCuentas.First;
    while not QCuentas.Eof do
    begin
      if QCuentasDET_ORIGEN.Value = 'Debito' then
        Debitos := Debitos + StrToFloat(Format('%10.2f', [QCuentasDET_MONTO.Value]))
      else
        Creditos := Creditos + StrToFloat(Format('%10.2f', [QCuentasDET_MONTO.Value]));

      QCuentas.Next;
    end;

    if ((debitos-Creditos> 0) and (Creditos>Debitos)) then begin
    if QCuentas.Locate('cat_cuenta', CtaConcepto, []) then
    begin
    QCuentas.Edit;
    QCuentasdet_monto.Value := Debitos;
    QCuentas.Post;
    end;
    end;

    QCuentas.GotoBookmark(Punt);
    QCuentas.First;
    QCuentas.EnableControls;
    lbCR.Caption := Format('%n', [Creditos]);
    lbDB.Caption := Format('%n', [Debitos]);
    lbBAL.Caption := Format('%n', [Debitos - Creditos]);

    Totaliza := true;
  end;
  if Trim(lbBAL.Caption) <> '0.00' then
    lbBAL.Font.Color := clRed
  else
    lbBAL.Font.Color := clBlack;
end;

procedure TfrmConduce.QDetalleBeforeEdit(DataSet: TDataSet);
begin
  cantidad_desp := 0;
  if ((not QDetalleDET_CANTIDAD.IsNull) and (QDetalleDET_CANTIDAD.Value > 0)) then
    cantidad_desp := QDetalleDET_CANTIDAD.Value;

end;

procedure TfrmConduce.btserieClick2(Sender: TObject);
begin
  if QDetalle.State in [dsinsert] then
    QDetalle.Post;
  if QDetalleDET_CANTIDAD.AsInteger > 0 then
  begin
    Application.CreateForm(tfrmSerieFactura, frmSerieFactura);
    frmSerieFactura.dsMantSerie.DataSet := frmConduce.QSerie;
    with frmSerieFactura do
    begin
      DBText1.DataSource := dsDetalle;
      DBText2.DataSource := dsDetalle;
      DBText3.DataSource := dsDetalle;
      dsMantSerie.DataSet := QSerie;
      QSerie.Filter := 'PRO_CODIGO =' + IntToStr(QDetallePRO_CODIGO.Value);
      QSerie.Filtered := True;

      if not QSerie.Locate('PRO_CODIGO', QDetallePRO_CODIGO.Text, []) then
      begin
        QSerie.Insert;
        QSeriePRO_CODIGO.Value := QDetallePRO_CODIGO.Value;
      end;

      if ShowModal = mrOk then
      begin
        if QSerie.State in [dsEdit, dsInsert] then
          QSerie.Post;
        vSer := True;
      end
      else
        vSer := false;
    end;
    QSerie.Filter := '';
    QSerie.Filtered := False;
    QSerie.Refresh;
    frmSerieFactura.Release;
  end;

end;

procedure TfrmConduce.dsSerieDataChange(Sender: TObject; Field: TField);
begin
{if dm.QParametrospar_validar_serie_en_inventario.AsBoolean then
  if (Field <> nil) and (field.FieldName = 'ser_numero') and (qSerieConser_numero.AsString <> '') then
     if not dm.validaSerie(QDetallePRO_CODIGO.AsString,qSerieConser_numero.AsString) then
     begin
        ShowMessage('SERIE NO VALIDA, Verifique....');
        qSerieConser_numero.Value := EmptyStr;
     end;     //}
end;

procedure TfrmConduce.QDetalleDET_CANTIDADGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if not QDetalleDET_CANTIDAD.IsNull then
  begin
    Text := FloatToStr(QDetalleDET_CANTIDAD.value);
    vCantActual := TFloatField(Sender).Value;
  end;
end;

procedure TfrmConduce.BorraSerial(vCod_Producto: string);
begin
  if QSerie.Active then
  begin
    QSerie.First;
    while not QSerie.eof do
    begin
      if (vCod_Producto = EmptyStr) then
        QSerie.delete
      else if vCod_Producto = QSeriePRO_CODIGO.AsString then
        QSerie.delete;

      QSerie.Next;
    end;
  end;
end;

function TfrmConduce.Producto_sin_Serializar(const key: string): boolean;
var
  a: integer;
  Puntero: TBookmark;
begin
  Result := false;
  with QDetalle do
  begin
    QDetalle.DisableControls;
    Puntero := QDetalle.GetBookmark;
    QDetalle.First;
    while not QDetalle.eof do
      if QDetalle.fieldbyname('pro_serializado').Value = 'S' then
      begin
        QSerie.Filter := 'PRO_CODIGO=' + QuotedStr(QDetallePRO_CODIGO.AsString);
        QSerie.Filtered := true;
        Result := QDetalleDET_CANTIDAD.AsInteger <> QSerie.RecordCount;
        QSerie.Filtered := false;
        QSerie.Filter := '';
        if Result then
        begin
          QDetalle.EnableControls;
          exit
        end
        else
          QDetalle.Next;
      end
      else
        QDetalle.next;
    QDetalle.GotoBookmark(Puntero);
    QDetalle.EnableControls;
  end;
end;

procedure TfrmConduce.QSerieNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ser_secuencia').Value := DataSet.RecordCount + 1;
  DataSet.FieldByName('PRO_CODIGO').Value := QDetallePRO_CODIGO.Value;
  DataSet.FieldByName('EMP_CODIGO').Value := QConduceEMP_CODIGO.Value;
  DataSet.FieldByName('SUC_CODIGO').Value := QConduceSUC_CODIGO.Value;
  DataSet.FieldByName('CON_NUMERO').Value := QConducefac_numero.Value;
end;

procedure TfrmConduce.QSerieAfterInsert(DataSet: TDataSet);
begin
  if DataSet.RecordCount = QDetalleDET_CANTIDAD.AsInteger then
  begin
    DataSet.cancel;
    ShowMessage('A EXEDIDO LA CANTIDAD MAXIMA DE REGISTROS');
  end;
end;

procedure TfrmConduce.DBGrid_1DblClick(Sender: TObject);
begin
  DesactivarCargaProductos := False;
  if not QSelectIncrem1.IsEmpty then
  begin
    if DM.QParametrosPAR_CODIGOPRODUCTO.Value = 'I' then
      QDetallePRO_CODIGO.Value := QSelectIncrem1.fieldbyname('codigo').AsInteger;
    if DM.QParametrosPAR_CODIGOPRODUCTO.Value = 'O' then
      QDetallePRO_RORIGINAL.Value := QSelectIncrem1.fieldbyname('codigo').AsString;
    if DM.QParametrosPAR_CODIGOPRODUCTO.Value = 'F' then
      QDetallePRO_RFABRIC.Value := QSelectIncrem1.fieldbyname('codigo').AsString;
  end;
  Grid.SetFocus;
  DBGrid_1.Visible := False;
  Grid.SelectedIndex := Grid.SelectedIndex + 1;
  edt1.Clear;

end;

procedure TfrmConduce.DBGrid_1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    DBGrid_1DblClick(Sender);

end;

procedure TfrmConduce.FormShow(Sender: TObject);
begin
  if DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados' then
  begin
    Label9.Caption := 'Proyecto';
    Label12.Caption := 'Ficha';
    Label4.Caption := 'Chofer';
    Label13.Caption := 'Chofer';
  end;

if dm.QParametrospar_banca_apuestas.Value = True then begin
lbLocSuc.Visible := True;
dbedtcont_numeroSucursal.Visible := True;
btLocalidad.Visible := True;
TSucLoc.Visible := True;
end;
if not dm.QParametrospar_banca_apuestas.Value = True then begin
LbLocSuc.Visible := False;
dbedtcont_numeroSucursal.Visible := False;
btLocalidad.Visible := False;
TSucLoc.Visible := False;
end;
end;

procedure TfrmConduce.EnvioMail(Reporte: TQuickRep; Tipo: string);
begin
  pnCorreo.Visible := True;
  with dm.Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from clientes where cli_codigo = ' + QConduceCLI_CODIGO.Text);
    SQL.Add('and emp_codigo = ' + QConduceEMP_CODIGO.Text);
    Open;
    if DM.Query1.RecordCount = 0 then
    begin
      ShowMessage('El cliente no tiene Email asignado, favor verificar!');
      Reporte.Destroy;
      Exit;
    end;
    vl_dest := DM.Query1.fieldbyname('cli_email').Text;
    vl_clienteN := Trim(DM.Query1.fieldbyname('cli_nombre').Text);
  end;

  vl_factnum := QConduceCON_NUMERO.Text;
  vl_asunto := 'Envio de Conduce No. ' + vl_factnum;

//Cuerpo del mensaje
  mmo1.Clear;
  mmo1.Lines.Add('Buenas,');
  mmo1.Lines.Add('');
  mmo1.Lines.Add('Sres. ' + vl_clienteN + ',');
  mmo1.Lines.Add('Adjunto encontraras el Conduce No. ' + vl_factnum);
  mmo1.Lines.Add('');
  mmo1.Lines.Add('Saludos, ');
  mmo1.Lines.Add(DBLookupComboBox2.Text);
  frmMain.EnviarCorreo2(vl_dest, vl_asunto, vl_adjunto1, vl_adjunto2, mmo1.Lines.GetText);
  Reporte.Destroy;
  pnCorreo.Visible := False;

end;

procedure TfrmConduce.dbedtcont_numeroSucursalChange(Sender: TObject);
begin
if Trim(dbedtcont_numeroSucursal.Text) = '' then TSucLoc.Text := '';
end;

procedure TfrmConduce.dbedtcont_numeroSucursalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(dbedtcont_numeroSucursal.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select suc_nombre, cont_numeroSucursal from sucursales');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and cont_numeroSucursal = '+QuotedStr(dbedtcont_numeroSucursal.Text));
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Open;
      TSucLoc.Text := dm.Query1.FieldByName('suc_nombre').AsString;
      end;
  end;
end;

procedure TfrmConduce.btLocalidadClick(Sender: TObject);
begin
Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select suc_nombre, cont_numeroSucursal from sucursales');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Title := 'Localidades / Sucursales';
  Search.ResultField := 'cont_numeroSucursal';
  if Search.execute then
  begin
    dbedtcont_numeroSucursal.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select suc_nombre, cont_numeroSucursal from sucursales');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cont_numeroSucursal = '+QuotedStr(dbedtcont_numeroSucursal.Text));
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Open;
    TSucLoc.Text := dm.Query1.FieldByName('suc_nombre').AsString;
  end;
end;

procedure TfrmConduce.btnConceptoClick(Sender: TObject);
begin
if rgtipo.ItemIndex = 0 then begin
if QConduceCON_TOTAL.Value > 0 then begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select con_nombre, con_codigo');
  Search.Query.Add('from conceptos');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.ResultField := 'con_codigo';
  Search.Title := 'Conceptos';
  if Search.execute then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select con_nombre, cat_cuenta from conceptos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and con_codigo = :con');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('con').Value := StrToInt(Search.ValueField);
    dm.Query1.Open;
    QConduceCON_CONCEPTO1.Value := dm.Query1.FieldByName('con_nombre').AsString;
    if not dm.Query1.FieldByName('cat_cuenta').IsNull then
    begin
      CtaConcepto := dm.Query1.FieldByName('cat_cuenta').AsString;
      if not QCuentas.Locate('cat_cuenta', dm.Query1.FieldByName('cat_cuenta').AsString,[]) then
      Begin
        QCuentas.Append;
        QCuentasCAT_CUENTA.Value := dm.Query1.FieldByName('cat_cuenta').AsString;
        QCuentasDET_ORIGEN.Value := 'Debito';
        QCuentasDET_MONTO.Value  := QConduceCON_TOTAL.Value;
        QCuentas.Post;
      End
      else
      begin
        QCuentas.Edit;
        QCuentasCAT_CUENTA.Value := dm.Query1.FieldByName('cat_cuenta').AsString;
        QCuentasDET_ORIGEN.Value := 'Debito';
        QCuentasDET_MONTO.Value  := QConduceCON_TOTAL.Value;
        QCuentas.Post;
      end;
    end;
    dm.Query1.Close;
    TotalizarCuentas;
  end;
end;
end;
end;

procedure TfrmConduce.QConduceCON_ITBISChange(Sender: TField);
begin
  if rgtipo.ItemIndex = 0 then begin
  if QConduceCON_ITBIS.AsFloat > 0 then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select par_ctaitbis from contparametros');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Open;

    if not dm.Query1.FieldByName('par_ctaitbis').IsNull then
    begin
      CtaItbis := dm.Query1.FieldByName('par_ctaitbis').AsString;
      if not QCuentas.Locate('cat_cuenta', CtaItbis, []) then
      begin
        QCuentas.Append;
        QCuentascat_cuenta.Value := CtaItbis;
        QCuentasdet_origen.Value := 'Credito';
        QCuentasdet_monto.Value  := strtofloat(format('%10.2f',[QConduceCON_ITBIS.Value]));
        QCuentas.Post;
      end
      else
      begin
        QCuentas.Edit;
        QCuentasdet_origen.Value := 'Credito';
        QCuentasdet_monto.Value  := strtofloat(format('%10.2f',[QConduceCON_ITBIS.Value]));
        QCuentas.Post;
      end;
    end;
    dm.Query1.Close;
  end;
end;
end;

procedure TfrmConduce.QConduceCON_TOTALChange(Sender: TField);
begin
  if rgtipo.ItemIndex = 0 then begin
  if QConduceCON_TOTAL.AsFloat > 0 then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select par_ctainvent from contparametros');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Open;

    if not dm.Query1.FieldByName('par_ctainvent').IsNull then
    begin
      CtaInventario := dm.Query1.FieldByName('par_ctainvent').AsString;
      if not QCuentas.Locate('cat_cuenta', CtaInventario, []) then
      begin
        QCuentas.Append;
        QCuentascat_cuenta.Value := CtaInventario;
        QCuentasdet_origen.Value := 'Credito';
        QCuentasdet_monto.Value  := strtofloat(format('%10.2f',[QConduceCON_TOTAL.Value-QConduceCON_ITBIS.Value]));
        QCuentas.Post;
      end
      else
      begin
        QCuentas.Edit;
        QCuentasdet_origen.Value := 'Credito';
        QCuentasdet_monto.Value  := strtofloat(format('%10.2f',[QConduceCON_TOTAL.Value-QConduceCON_ITBIS.Value]));
        QCuentas.Post;
      end;
    end;
    dm.Query1.Close;
  end;
end;
end;

procedure TfrmConduce.QCuentasAfterPost(DataSet: TDataSet);
begin
TotalizarCuentas;
end;

procedure TfrmConduce.QConduceAfterOpen(DataSet: TDataSet);
begin
{DBLookupComboBox2.KeyValue := QConduceSUC_CODIGO.Value;
  QCuentas.close;
  QCuentas.Parameters.parambyname('emp').Value := dm.vp_cia;
  QCuentas.Parameters.parambyname('con').Value := -1;
  QCuentas.Parameters.parambyname('suc').Value := -1;
  QCuentas.open;

  QCentro.close;
  QCentro.Parameters.parambyname('emp').Value := dm.vp_cia;
  QCentro.Parameters.parambyname('num').Value := -1;
  QCentro.Parameters.parambyname('suc').Value := -1;
  QCentro.open;}
end;

end.

