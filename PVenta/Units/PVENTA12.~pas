unit PVENTA12;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, 
  IBCustomDataSet, IBUpdateSQL, Db, IBQuery, ComCtrls, CheckLst, ImgList,
  ADODB, QuerySearchDlgADO, ToolWin, ActnList, DIMime, Grids, DBGrids,
  Menus;

type
  TfrmUsuarios = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    QUsuarios: TADOQuery;
    dsUsuarios: TDataSource;
    Search: TQrySearchDlgADO;
    QUsuariosUSU_CODIGO: TIntegerField;
    QUsuariosUSU_NOMBRE: TIBStringField;
    QUsuariosUSU_CLAVE: TIBStringField;
    QUsuariosUSU_STATUS: TIBStringField;
    QUsuariosStatus: TStringField;
    DBText1: TDBText;
    Imagenes: TImageList;
    QAccesos: TADOQuery;
    QAccesosUSU_CODIGO: TIntegerField;
    QAccesosINSERTA: TIBStringField;
    QAccesosMODIFICA: TIBStringField;
    QAccesosELIMINA: TIBStringField;
    QUsuariosUSU_EMPDEFAULT: TIntegerField;
    Query1: TADOQuery;
    ActionList2: TActionList;
    btPrior: TAction;
    btNext: TAction;
    btInsert: TAction;
    btEdit: TAction;
    btDelete: TAction;
    btPost: TAction;
    btCancel: TAction;
    btFind: TAction;
    btPrint: TAction;
    btClose: TAction;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton13: TToolButton;
    ToolButton12: TToolButton;
    ToolButton14: TToolButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    QUsuariosUSU_CREA_NCF: TStringField;
    DBCheckBox1: TDBCheckBox;
    QAccesospri_nombre: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Lista1: TTreeView;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    ckExpand: TCheckBox;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
    ckInsert: TCheckBox;
    ckEdit: TCheckBox;
    ckDelete: TCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    QEmpresas: TADOQuery;
    QEmpresasemp_codigo: TIntegerField;
    QEmpresasemp_nombre: TStringField;
    QEmpresasusu_codigo: TIntegerField;
    dsEmpresas: TDataSource;
    QSucursales: TADOQuery;
    QSucursalessuc_codigo: TIntegerField;
    QSucursalessuc_nombre: TStringField;
    dsSucursal: TDataSource;
    PopupMenu1: TPopupMenu;
    Aadirempresa1: TMenuItem;
    Eliminarempresa1: TMenuItem;
    AadirSucursal1: TMenuItem;
    EliminarSucursal1: TMenuItem;
    QUsuariosusu_modifica_precio: TStringField;
    QUsuariosusu_debajo_minimo: TStringField;
    QUsuariosusu_debajo_costo: TStringField;
    QUsuariosusu_excede_limite: TStringField;
    QUsuariosusu_factura_negativo: TStringField;
    QUsuariosusu_descuento: TStringField;
    QUsuariosusu_excede_descuento: TStringField;
    QUsuariosusu_modifica_factura: TStringField;
    QUsuariosusu_aumenta_precio: TStringField;
    QUsuariosusu_disminuye_precio: TStringField;
    DBCheckBox9: TDBCheckBox;
    QUsuariosusu_ver_costo: TStringField;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    QUsuariosusu_anula_ticket: TStringField;
    QUsuariosusu_factura_cuentas: TStringField;
    DBCheckBox12: TDBCheckBox;
    QUsuariosusu_modifica_otras_cotizaciones: TStringField;
    DBCheckBox13: TDBCheckBox;
    QUsuariosusu_autoriza_venta_emp: TStringField;
    DBCheckBox14: TDBCheckBox;
    QUsuariosusu_autoriza_credito: TStringField;
    DBCheckBox15: TDBCheckBox;
    QAccesosdescripcion: TStringField;
    tsParRestBar: TTabSheet;
    dbchkusu_supervisor: TDBCheckBox;
    dbchkusu_Cajero: TDBCheckBox;
    dbchkusu_camarero: TDBCheckBox;
    QUsuariosusu_supervisor: TBooleanField;
    QUsuariosusu_Cajero: TBooleanField;
    QUsuariosusu_camarero: TBooleanField;
    Lista2: TListBox;
    Lista3: TListBox;
    Lista4: TListBox;
    Ins: TListBox;
    Modi: TListBox;
    Del: TListBox;
    QUsuariosusu_vendedor: TBooleanField;
    MainMenu1: TMainMenu;
    Inventario4: TMenuItem;
    inv_productos: TMenuItem;
    inv_almacenes: TMenuItem;
    inv_Boletos: TMenuItem;
    inv_familias: TMenuItem;
    inv_deptos: TMenuItem;
    inv_marcas: TMenuItem;
    inv_colores: TMenuItem;
    inv_unidades: TMenuItem;
    inv_ajuste: TMenuItem;
    inv_conduce: TMenuItem;
    inv_entrada: TMenuItem;
    inv_gerente: TMenuItem;
    inv_pasillo: TMenuItem;
    inv_fisico: TMenuItem;
    inv_liq: TMenuItem;
    inv_trans: TMenuItem;
    inv_vence: TMenuItem;
    inv_abierta: TMenuItem;
    inv_eliminar: TMenuItem;
    Ventas3: TMenuItem;
    venta_tipofactura: TMenuItem;
    venta_alquiler: TMenuItem;
    venta_boleto: TMenuItem;
    venta_cotizacion: TMenuItem;
    venta_factura: TMenuItem;
    venta_devolucion: TMenuItem;
    venta_oferta: TMenuItem;
    venta_pedido: TMenuItem;
    venta_automatica: TMenuItem;
    venta_clienteclub: TMenuItem;
    venta_cajero: TMenuItem;
    venta_liq_ticket_transp: TMenuItem;
    CxC1: TMenuItem;
    cxc_cliente: TMenuItem;
    cxc_recibo: TMenuItem;
    cxc_nc: TMenuItem;
    cxc_nd: TMenuItem;
    CxP1: TMenuItem;
    cxp_proveedores: TMenuItem;
    cxp_orden: TMenuItem;
    cxp_factura: TMenuItem;
    cxp_devolucion: TMenuItem;
    cxp_nc: TMenuItem;
    cxp_cotizacionmultiple: TMenuItem;
    Banco1: TMenuItem;
    banco_cuenta: TMenuItem;
    banco_concepto: TMenuItem;
    banco_concil: TMenuItem;
    banco_depositos: TMenuItem;
    banco_dp_crear: TMenuItem;
    banco_dp_anular: TMenuItem;
    banco_dp_eliminar: TMenuItem;
    banco_cheques: TMenuItem;
    banco_ck_crear: TMenuItem;
    banco_ck_anular: TMenuItem;
    banco_ck_imprimir: TMenuItem;
    banco_ck_eliminar: TMenuItem;
    banco_ck_config: TMenuItem;
    banco_cargos: TMenuItem;
    banco_cb_crear: TMenuItem;
    banco_cb_anular: TMenuItem;
    banco_cb_eliminar: TMenuItem;
    banco_solicitudes: TMenuItem;
    banco_sol_crear: TMenuItem;
    banco_sol_aprobar: TMenuItem;
    banco_sol_imprimir: TMenuItem;
    banco_sol_eliminar: TMenuItem;
    banco_sol_generar: TMenuItem;
    banco_trans: TMenuItem;
    banco_trans_crear: TMenuItem;
    banco_trans_anular: TMenuItem;
    banco_trans_eliminar: TMenuItem;
    banco_trans_imprimir: TMenuItem;
    banco_libro: TMenuItem;
    Caja1: TMenuItem;
    CajasIP1: TMenuItem;
    CuadredeCaja1: TMenuItem;
    Cuadregeneral1: TMenuItem;
    Dewsgloceefectivo1: TMenuItem;
    N29: TMenuItem;
    CuadrecajasIP1: TMenuItem;
    CuadrecajasIPdefinitivo1: TMenuItem;
    N30: TMenuItem;
    Desembolsos1: TMenuItem;
    Resumendeingresos1: TMenuItem;
    N34: TMenuItem;
    Supervisoresdecaja1: TMenuItem;
    Contabilidad1: TMenuItem;
    cont_catalogo: TMenuItem;
    cont_anexo: TMenuItem;
    cont_cajas: TMenuItem;
    cont_centros: TMenuItem;
    cont_tipodoc: TMenuItem;
    cont_bienes: TMenuItem;
    cont_entradas: TMenuItem;
    cont_movimiento: TMenuItem;
    cont_reportes: TMenuItem;
    cont_rep_diario: TMenuItem;
    cont_rep_mayor: TMenuItem;
    cont_rep_bce: TMenuItem;
    cont_rep_resumen: TMenuItem;
    cont_rep_anexo: TMenuItem;
    cont_estados: TMenuItem;
    cont_est_res1: TMenuItem;
    cont_est_res2: TMenuItem;
    cont_est_sit_1: TMenuItem;
    cont_est_sit_2: TMenuItem;
    cont_est_costo: TMenuItem;
    Configurarestadodesituacin1: TMenuItem;
    ConfigurarBcedeComprobacincomparativo1: TMenuItem;
    N46: TMenuItem;
    Cashflow1: TMenuItem;
    Grupos1: TMenuItem;
    Subgrupos1: TMenuItem;
    Conceptos2: TMenuItem;
    N47: TMenuItem;
    Cashflow2: TMenuItem;
    Activos1: TMenuItem;
    Activosfijos1: TMenuItem;
    Categorias1: TMenuItem;
    Familiadeactivos1: TMenuItem;
    Marcas2: TMenuItem;
    Movimientosdeactivos1: TMenuItem;
    iposdemovimientos1: TMenuItem;
    N11: TMenuItem;
    Impresincdigodebarra1: TMenuItem;
    Generardepresiacion1: TMenuItem;
    RecursosHumanos1: TMenuItem;
    Maestros2: TMenuItem;
    Categorias2: TMenuItem;
    Categoriasdelicenciadeconducir1: TMenuItem;
    Clasificaciondeniveles1: TMenuItem;
    Diasferiados1: TMenuItem;
    Estadoscivil1: TMenuItem;
    Gruposdetrabajo1: TMenuItem;
    Habilidades1: TMenuItem;
    Idiomas1: TMenuItem;
    Institucionesacademicas1: TMenuItem;
    Motivos1: TMenuItem;
    Niveles1: TMenuItem;
    Nivelsalarial1: TMenuItem;
    Paises1: TMenuItem;
    Posiciones1: TMenuItem;
    Posicionesporclasificacion1: TMenuItem;
    iposdeempleado1: TMenuItem;
    ipodeevaluacin1: TMenuItem;
    Reclutamiento1: TMenuItem;
    Elegibles1: TMenuItem;
    Entrevistas1: TMenuItem;
    Evaluacion1: TMenuItem;
    Requerimientopersonal1: TMenuItem;
    Solicitud1: TMenuItem;
    Empleados1: TMenuItem;
    Autorizaciondecredito1: TMenuItem;
    Cartadecertificacion1: TMenuItem;
    Evaluaciones1: TMenuItem;
    CrearModificarEmpleado1: TMenuItem;
    MensajesIndividuales1: TMenuItem;
    Reportegeneral1: TMenuItem;
    Reportes2: TMenuItem;
    ReporteDGT31: TMenuItem;
    ReporteDGT3Anexo1: TMenuItem;
    ReporteDGT41: TMenuItem;
    Vacaciones1: TMenuItem;
    Carteldevacaciones1: TMenuItem;
    Vacacionesempleados1: TMenuItem;
    Planesdeseguro1: TMenuItem;
    AFP1: TMenuItem;
    SFS1: TMenuItem;
    N21: TMenuItem;
    Inclusionyexclusion1: TMenuItem;
    iposdeplanes1: TMenuItem;
    iposdeseguro1: TMenuItem;
    Acciondepersonal1: TMenuItem;
    Accionesdepersonal1: TMenuItem;
    Aumentodesueltos1: TMenuItem;
    iposdeaccion1: TMenuItem;
    Nomina1: TMenuItem;
    Consultas2: TMenuItem;
    Bonificacionyregalia1: TMenuItem;
    Nominas1: TMenuItem;
    Novedadesdelanmina1: TMenuItem;
    Descuentos1: TMenuItem;
    Horastrabajadas1: TMenuItem;
    Ingresos1: TMenuItem;
    Maestros3: TMenuItem;
    Grupodedescuentos1: TMenuItem;
    ablacalculoprestaciones1: TMenuItem;
    ipodedescuentos1: TMenuItem;
    ipodehorastrabajadas1: TMenuItem;
    ipodeingresos1: TMenuItem;
    abladeISR1: TMenuItem;
    iposdenomina1: TMenuItem;
    ablasegurosocial1: TMenuItem;
    ablaSemanaxmes1: TMenuItem;
    Prestaciones1: TMenuItem;
    Regaliapascual1: TMenuItem;
    Pagobonificacion1: TMenuItem;
    Pagoliquidacion1: TMenuItem;
    Vacaciones2: TMenuItem;
    Procesos2: TMenuItem;
    GenerarReversarNomina1: TMenuItem;
    OrdendeServicio1: TMenuItem;
    Anularorden1: TMenuItem;
    Entradadeequios1: TMenuItem;
    Salidadeequipos1: TMenuItem;
    N13: TMenuItem;
    Listadogeneral3: TMenuItem;
    N38: TMenuItem;
    Tipodeequipos1: TMenuItem;
    Tecnicos1: TMenuItem;
    Consultas1: TMenuItem;
    Conciliacin1: TMenuItem;
    Cargosbancarios1: TMenuItem;
    Cheques1: TMenuItem;
    Depositos1: TMenuItem;
    Solicitudesdecheque1: TMenuItem;
    Contabilidad2: TMenuItem;
    Balancesdeunacuenta1: TMenuItem;
    Entradasdediario1: TMenuItem;
    N9: TMenuItem;
    Comprobantesfiscales1: TMenuItem;
    Comprobantesdegastosmenores1: TMenuItem;
    N25: TMenuItem;
    MovimientosporCentrodeCosto1: TMenuItem;
    Inventario3: TMenuItem;
    Productos2: TMenuItem;
    N44: TMenuItem;
    EntradasdeAlmacn2: TMenuItem;
    Conduces2: TMenuItem;
    Liquidaciones1: TMenuItem;
    ransferenciasentrealmacen1: TMenuItem;
    N16: TMenuItem;
    PordeSerie1: TMenuItem;
    Ventas1: TMenuItem;
    ListadodeFacturas1: TMenuItem;
    ListadodeEnvio1: TMenuItem;
    Listadodeboletos1: TMenuItem;
    icketsdecaja1: TMenuItem;
    mniTransporte1: TMenuItem;
    mniListadodeFacturasRestBAR1: TMenuItem;
    N15: TMenuItem;
    Beneficios1: TMenuItem;
    ProductosCliente1: TMenuItem;
    Pormarca3: TMenuItem;
    PorProducto1: TMenuItem;
    Porprovincia1: TMenuItem;
    N40: TMenuItem;
    Devoluciones1: TMenuItem;
    Declientes2: TMenuItem;
    N7: TMenuItem;
    ActividaddelasCajas1: TMenuItem;
    Compras2: TMenuItem;
    Aproveedores2: TMenuItem;
    Devolucionesencompra1: TMenuItem;
    Cuentasporcobrar3: TMenuItem;
    CuentasporCobrar1: TMenuItem;
    NotasdeCrdito2: TMenuItem;
    NotasdeDbito2: TMenuItem;
    RecibosdeCobro2: TMenuItem;
    Cuentasporpagar3: TMenuItem;
    Cuentasporpagar2: TMenuItem;
    Notasdecrditoproveedores1: TMenuItem;
    Facturasdeproveedores1: TMenuItem;
    Bonos1: TMenuItem;
    Cotizaciones2: TMenuItem;
    Desembolsos2: TMenuItem;
    Resumenejecutivo1: TMenuItem;
    Reportes1: TMenuItem;
    rep_Anlisis: TMenuItem;
    rep_analisis_1: TMenuItem;
    rep_analisis_2: TMenuItem;
    rep_analisis_3: TMenuItem;
    rep_clientes: TMenuItem;
    rep_clientes_1: TMenuItem;
    rep_clientes_2: TMenuItem;
    ReportedeVencLicenciaSeguro1: TMenuItem;
    rep_cxc: TMenuItem;
    rep_cxc_1: TMenuItem;
    rep_cxc_2: TMenuItem;
    rep_cxc_3: TMenuItem;
    rep_cxc_4: TMenuItem;
    rep_cxc_5: TMenuItem;
    rep_cxc_6: TMenuItem;
    rep_cxc_7: TMenuItem;
    N18: TMenuItem;
    rep_cxc_8: TMenuItem;
    rep_cxp: TMenuItem;
    rep_cxp_1: TMenuItem;
    rep_cxp_2: TMenuItem;
    rep_cxp_3: TMenuItem;
    rep_cxp_4: TMenuItem;
    rep_cxp_5: TMenuItem;
    rep_inv: TMenuItem;
    rep_inv_1: TMenuItem;
    rep_inv_2: TMenuItem;
    rep_inv_3: TMenuItem;
    N1: TMenuItem;
    rep_inv_4: TMenuItem;
    rep_inv_5: TMenuItem;
    rep_inv_6: TMenuItem;
    N28: TMenuItem;
    rep_inv_7: TMenuItem;
    rep_inv_8: TMenuItem;
    rep_inv_9: TMenuItem;
    rep_inv_10: TMenuItem;
    N45: TMenuItem;
    rep_inv_11: TMenuItem;
    rep_inv_12: TMenuItem;
    rep_inv_13: TMenuItem;
    rep_inv_14: TMenuItem;
    rep_inv_15: TMenuItem;
    rep_inv_16: TMenuItem;
    rep_inv_17: TMenuItem;
    N24: TMenuItem;
    rep_inv_18: TMenuItem;
    rep_inv_19: TMenuItem;
    N6: TMenuItem;
    rep_inv_20: TMenuItem;
    rep_inv_21: TMenuItem;
    rep_inv_22: TMenuItem;
    rep_inv_23: TMenuItem;
    rep_inv_24: TMenuItem;
    rep_inv_25: TMenuItem;
    rep_venta: TMenuItem;
    rep_venta_1: TMenuItem;
    rep_venta_2: TMenuItem;
    rep_venta_3: TMenuItem;
    rep_venta_4: TMenuItem;
    rep_venta_5: TMenuItem;
    rep_venta_6: TMenuItem;
    rep_venta_7: TMenuItem;
    rep_venta_8: TMenuItem;
    rep_venta_9: TMenuItem;
    rep_venta_10: TMenuItem;
    rep_venta_11: TMenuItem;
    N20: TMenuItem;
    rep_venta_12: TMenuItem;
    rep_activos: TMenuItem;
    rep_comisiones: TMenuItem;
    rep_forma_pago: TMenuItem;
    rep_proveedores: TMenuItem;
    rep_servicios: TMenuItem;
    N41: TMenuItem;
    rep_reimpresion: TMenuItem;
    Procesos1: TMenuItem;
    Anular1: TMenuItem;
    Conduce1: TMenuItem;
    Desembolso1: TMenuItem;
    Devolucionencompra1: TMenuItem;
    Devolucin2: TMenuItem;
    EntradadeAlmacn1: TMenuItem;
    Factura1: TMenuItem;
    Facturadeproveedores1: TMenuItem;
    Liquidacin1: TMenuItem;
    NotadeCrdito1: TMenuItem;
    Notadecrditoaproveedor1: TMenuItem;
    NotadeDbito1: TMenuItem;
    Ordendecompra1: TMenuItem;
    RecibodeCobro1: TMenuItem;
    Contabilidad4: TMenuItem;
    Cierredemes1: TMenuItem;
    Cierredeao1: TMenuItem;
    Copiarcatlogoentrecompaas1: TMenuItem;
    Pasardocumentosacontabilidad1: TMenuItem;
    N10: TMenuItem;
    Generardepreciacin1: TMenuItem;
    Inventario1: TMenuItem;
    Colectordeinventario1: TMenuItem;
    Colocarexistenciaencero1: TMenuItem;
    Definirescalas1: TMenuItem;
    Modificacindeprecios1: TMenuItem;
    Procesarconteofsico1: TMenuItem;
    N19: TMenuItem;
    Procesartransferenciasdealmacen1: TMenuItem;
    Procesardispositivodealmacenamiento1: TMenuItem;
    Conteofisicodesdedispositivo1: TMenuItem;
    NCF1: TMenuItem;
    GenerarNCFgastosmenores1: TMenuItem;
    GenerarNCFunicoingreso1: TMenuItem;
    Formatoenviocomprasdebienesyservicios1: TMenuItem;
    GenerarFormatodeenvio6071: TMenuItem;
    GenerarFormatodeenvio6081: TMenuItem;
    N43: TMenuItem;
    Notificaciondecomprobantesfiscales1: TMenuItem;
    NmerosdeRNC1: TMenuItem;
    Asignarclienteafactura1: TMenuItem;
    Cambiarlmitedelcliente1: TMenuItem;
    CambiarStatus1: TMenuItem;
    CierredelDa1: TMenuItem;
    N22: TMenuItem;
    Estadisticas1: TMenuItem;
    N14: TMenuItem;
    Clavesupervisordecaja1: TMenuItem;
    Generarfacturasautomticas1: TMenuItem;
    Seguridad1: TMenuItem;
    seg_usuario: TMenuItem;
    seg_cambiar: TMenuItem;
    Parametros1: TMenuItem;
    param_general: TMenuItem;
    param_emp: TMenuItem;
    param_suc: TMenuItem;
    param_tablas: TMenuItem;
    param_actbalance: TMenuItem;
    param_limpiar: TMenuItem;
    RepararBalancesFacturas1: TMenuItem;
    Fiscal1: TMenuItem;
    Cierredeturno1: TMenuItem;
    Cierredejornadafiscal1: TMenuItem;
    Cancelardocumentofiscalencurso1: TMenuItem;
    Extraccindelibrosdeventa1: TMenuItem;
    EstadoPrinter1: TMenuItem;
    Reset1: TMenuItem;
    dbchkusu_modifica_factura: TDBCheckBox;
    banco_disp: TMenuItem;
    CierredeldaCardnet1: TMenuItem;
    dbchkusu_solo_conduce: TDBCheckBox;
    QUsuariosusu_solo_conduce: TBooleanField;
    dbchkusu_modifica_nombreprod: TDBCheckBox;
    QUsuariosusu_modifica_nombreprod: TBooleanField;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursalesDefault: TADOQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    dsSucursalDefault: TDataSource;
    QUsuariosusu_suc_default: TIntegerField;
    QUsuariosusu_reenvia_dgii: TBooleanField;
    DBCheckBox16: TDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QUsuariosCalcFields(DataSet: TDataSet);
    procedure dsUsuariosStateChange(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btPriorClick(Sender: TObject);
    procedure btNextClick(Sender: TObject);
    procedure QUsuariosBeforePost(DataSet: TDataSet);
    procedure QUsuariosAfterDelete(DataSet: TDataSet);
    procedure QUsuariosAfterPost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure QUsuariosNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure Lista1DblClick(Sender: TObject);
    procedure dsUsuariosDataChange(Sender: TObject; Field: TField);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure ckExpandClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Lista1Change(Sender: TObject; Node: TTreeNode);
    procedure ckInsertClick(Sender: TObject);
    procedure ckEditClick(Sender: TObject);
    procedure ckDeleteClick(Sender: TObject);
    procedure QUsuariosUSU_CODIGOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure BitBtn2Click(Sender: TObject);
    procedure btempClick(Sender: TObject);
    procedure QUsuariosUSU_EMPDEFAULTGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure FormPaint(Sender: TObject);
    procedure Aadirempresa1Click(Sender: TObject);
    procedure Eliminarempresa1Click(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid2ColEnter(Sender: TObject);
    procedure AadirSucursal1Click(Sender: TObject);
    procedure EliminarSucursal1Click(Sender: TObject);
    procedure QUsuariosusu_CajeroValidate(Sender: TField);
    procedure QUsuariosusu_vendedorValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUsuarios: TfrmUsuarios;

implementation

uses SIGMA01, SIGMA00, PVENTA119;


{$R *.DFM}

procedure TfrmUsuarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmUsuarios.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmUsuarios.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmUsuarios.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmUsuarios.QUsuariosCalcFields(DataSet: TDataSet);
begin
  if QUsuariosUSU_STATUS.value = 'ACT' then
     QUsuariosStatus.value := 'Activo'
  else
     QUsuariosStatus.value := 'InActivo';
end;

procedure TfrmUsuarios.dsUsuariosStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsUsuarios.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
  DBEdit3.Enabled   := dsUsuarios.State = dsInsert;
  PageControl2.Enabled := dsUsuarios.State = dsEdit;
  //btemp.Enabled     := not btInsert.enabled;
end;

procedure TfrmUsuarios.btPostClick(Sender: TObject);
begin
  QUsuarios.post;
end;

procedure TfrmUsuarios.btCancelClick(Sender: TObject);
begin
  QUsuarios.cancel;
end;

procedure TfrmUsuarios.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('delete from privilegios');
    dm.Query1.sql.add('where usu_codigo = :usu');
    dm.Query1.Parameters.parambyname('usu').Value := QUsuariosUSU_CODIGO.value;
    dm.Query1.ExecSQL;
    DM.ADOSigma.Execute('UPDATE USUARIOS SET USU_STATUS ='+QuotedStr('INA')+' WHERE USU_CODIGO ='+QuotedStr(QUsuariosUSU_CODIGO.Text));
  end;
end;

procedure TfrmUsuarios.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QUsuarios.edit;
end;

procedure TfrmUsuarios.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QUsuarios.insert;
end;

procedure TfrmUsuarios.btFindClick(Sender: TObject);
begin
  search.Query.Clear;
  search.Query.Add('select usu_nombre, usu_codigo');
  search.Query.Add('from usuarios');
  search.Query.Add('WHERE USU_STATUS <> ''INA''');
  search.Title :='Usuarios';
  search.ResultField := 'usu_codigo';
  if search.execute then
     QUsuarios.locate('usu_codigo',search.valuefield,[]);
end;

procedure TfrmUsuarios.btPriorClick(Sender: TObject);
begin
  if not QUsuarios.bof then
    QUsuarios.prior;
end;

procedure TfrmUsuarios.btNextClick(Sender: TObject);
begin
  if not QUsuarios.eof then
    QUsuarios.next;
end;

procedure TfrmUsuarios.QUsuariosBeforePost(DataSet: TDataSet);
begin
  if trim(QUsuariosUSU_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QUsuarios.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(usu_codigo),0) as maximo');
    dm.query1.sql.add('from usuarios');
    dm.query1.open;
    QUsuariosUSU_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
    QUsuariosusu_clave.Value  := MimeEncodeString(QUsuariosusu_clave.Value);
  end;
end;

procedure TfrmUsuarios.QUsuariosAfterDelete(DataSet: TDataSet);
begin
  QUsuarios.UpdateBatch;
end;

procedure TfrmUsuarios.QUsuariosAfterPost(DataSet: TDataSet);
begin
  QUsuarios.UpdateBatch;
end;

procedure TfrmUsuarios.FormActivate(Sender: TObject);
begin
  frmUsuarios.top := 25;
  if not QUsuarios.active then
  begin
    QUsuarios.open;
    QAccesos.open;

    QEmpresas.Open;
    QSucursales.Open;
    
    QSucursalesDefault.Close;
    QSucursalesDefault.Parameters.ParamByName('emp_codigo').Value := QEmpresasEMP_CODIGO.Value;
    QSucursalesDefault.Parameters.ParamByName('usu_codigo').Value := QUsuariosUSU_CODIGO.Value;
    QSucursalesDefault.Open;

  end;
  Lista1.refresh;
  frmMain.ExportXLS.Sheets[2].DataSet := QUsuarios;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := True;
end;

procedure TfrmUsuarios.QUsuariosNewRecord(DataSet: TDataSet);
begin
  QUsuariosusu_autoriza_credito.value := 'False';
  QUsuariosusu_autoriza_venta_emp.Value := 'False';
  QUsuariosUSU_STATUS.value           := 'ACT';
  QUsuariosUSU_CREA_NCF.Value         := 'False';
  QUsuariosusu_modifica_precio.Value  := 'False';
  QUsuariosusu_debajo_minimo.Value    := 'False';
  QUsuariosusu_debajo_costo.Value     := 'False';
  QUsuariosusu_excede_limite.Value    := 'False';
  QUsuariosusu_factura_negativo.Value := 'False';
  QUsuariosusu_descuento.Value        := 'False';
  QUsuariosusu_excede_descuento.Value := 'False';
  QUsuariosusu_modifica_factura.Value := 'False';
  QUsuariosusu_aumenta_precio.Value   := 'False';
  QUsuariosusu_disminuye_precio.Value := 'False';
  QUsuariosusu_ver_costo.Value        := 'False';
  QUsuariosusu_anula_ticket.Value     := 'False';
  QUsuariosusu_factura_cuentas.Value  := 'False';
  QUsuariosusu_modifica_otras_cotizaciones.Value := 'False';
  QUsuariosusu_Cajero.Value           := False;
  QUsuariosusu_supervisor.Value       := False;
  QUsuariosusu_camarero.Value         := False;
  QUsuariosusu_vendedor.Value         := False;

end;

procedure TfrmUsuarios.FormCreate(Sender: TObject);
var
  a, b, c, d, e : integer;
begin
  for a := 0 to (Sender as TForm).ComponentCount -1 DO
  begin
    if Components[a].ClassType = tdbedit then
    begin
      (Components[a] as tdbedit).OnEnter := frmMain.Entra;
      (Components[a] as tdbedit).OnExit := frmMain.sale;
    end;
  end;
  lockwindowupdate(lista1.Handle);
  Lista1.items.clear;
  Lista2.items.clear;
  Lista3.items.clear;
  Lista4.items.clear;
  Ins.items.clear;
  Del.items.clear;
  Modi.items.clear;
  for a := 0 to MainMenu1.Items.Count -1 do
  begin
    Lista2.items.add(MainMenu1.Items[a].Caption);
    Lista3.items.add(MainMenu1.Items[a].Name);
    Lista4.Items.add(inttostr(MainMenu1.Items[a].tag));
    Ins.items.add('False');
    Del.items.add('False');
    Modi.items.add('False');

    for b := 0 to MainMenu1.Items.Items[a].Count -1 do
    begin
      if MainMenu1.Items[a].Items[b].Caption <> '-' then
      begin
        Lista2.items.add(chr(vk_tab)+MainMenu1.Items[a].Items[b].Caption);
        Lista3.items.add(MainMenu1.Items[a].Items[b].Name);
        Lista4.Items.add(inttostr(MainMenu1.Items[a].Items[b].tag));
        Ins.items.add('False');
        Del.items.add('False');
        Modi.items.add('False');
      end;

      for c := 0 to MainMenu1.Items.Items[a].Items[b].Count -1 do
      begin
        if MainMenu1.Items[a].Items[b].Items[c].Caption <> '-' then
        begin
          Lista2.items.add(chr(vk_tab)+chr(vk_tab)+MainMenu1.Items[a].Items[b].Items[c].Caption);
          Lista3.items.add(MainMenu1.Items[a].Items[b].Items[c].Name);
          Lista4.Items.add(inttostr(MainMenu1.Items[a].Items[b].Items[c].tag));
          Ins.items.add('False');
          Del.items.add('False');
          Modi.items.add('False');
        end;

        for d := 0 to MainMenu1.Items.Items[a].Items[b].Items[c].Count -1 do
        begin
          if MainMenu1.Items[a].Items[b].Items[c].Items[d].Caption <> '-' then
          begin
            Lista2.items.add(chr(vk_tab)+chr(vk_tab)+chr(vk_tab)+MainMenu1.Items[a].Items[b].Items[c].Items[d].Caption);
            Lista3.items.add(MainMenu1.Items[a].Items[b].Items[c].Items[d].Name);
            Lista4.Items.add(inttostr(MainMenu1.Items[a].Items[b].Items[c].Items[d].tag));
            Ins.items.add('False');
            Del.items.add('False');
            Modi.items.add('False');
          end;
          for e := 0 to MainMenu1.Items.Items[a].Items[b].Items[c].Items[d].Count -1 do
          begin
            if MainMenu1.Items[a].Items[b].Items[c].Items[d].Items[e].Caption <> '-' then
            begin
              Lista2.items.add(chr(vk_tab)+chr(vk_tab)+chr(vk_tab)+chr(vk_tab)+MainMenu1.Items[a].Items[b].Items[c].Items[d].Items[e].Caption);
              Lista3.items.add(MainMenu1.Items[a].Items[b].Items[c].Items[d].Items[e].Name);
              Lista4.Items.add(inttostr(MainMenu1.Items[a].Items[b].Items[c].Items[d].Items[3].tag));
              Ins.items.add('False');
              Del.items.add('False');
              Modi.items.add('False');
            end;
          end;
        end;
      end;
    end;
  end;
  Lista2.items.savetofile(ExtractFilePath(Application.ExeName)+'usu.txt');
  Lista1.LoadFromFile(ExtractFilePath(Application.ExeName)+'usu.txt');

  //-----------------
  ///Lista1.LoadFromFile(ExtractFilePath(Application.ExeName)+'usuopc1.txt');
  // Lista2.items.savetofile(ExtractFilePath(Application.ExeName)+'usuopc2.txt');
  //  Lista3.items.savetofile(ExtractFilePath(Application.ExeName)+'usuopc3.txt');
   //   Lista4.items.savetofile(ExtractFilePath(Application.ExeName)+'usuopc4.txt');
  Lista1.Refresh;
  lockwindowupdate(0);

end;

procedure TfrmUsuarios.Lista1DblClick(Sender: TObject);
begin
{  showmessage(Lista3.items[Lista1.Selected.AbsoluteIndex]);
  showmessage(Lista1.Selected.text);}
  if Lista1.Selected.ImageIndex = 0 then
  begin
     Lista1.Selected.ImageIndex := 1;
     Lista1.Selected.SelectedIndex := 1;
  end
  else
  begin
     Lista1.Selected.ImageIndex := 0;
     Lista1.Selected.SelectedIndex := 0;
  end;
  Lista1.Repaint;
end;

procedure TfrmUsuarios.dsUsuariosDataChange(Sender: TObject;
  Field: TField);
begin
{  lockwindowupdate(lista1.Handle);
  Lista1.LoadFromFile('c:\t.txt');
  QAccesos.disablecontrols;
  QAccesos.first;
  while not QAccesos.eof do
  begin
    for a := 0 to Lista1.Items.Count -1 do
    begin
      if UpperCase(QAccesosPRI_NOMBRE.value) = uppercase(Lista3.items[a]) then
      begin
        Lista1.items[a].ImageIndex := 1;
        Lista1.items[a].SelectedIndex := 1;
        Ins.items[a] := QAccesosINSERTA.value;
        Modi.items[a] := QAccesosMODIFICA.value;
        Del.items[a] := QAccesosELIMINA.value;
        break;
      end
      else
      begin
        Ins.items.add('False');
        Modi.items.add('False');
        Del.items.add('False');
      end;
    end;
    QAccesos.next;
  end;
  Lista1.Refresh;
  lockwindowupdate(0);
  QAccesos.enablecontrols;}
end;

procedure TfrmUsuarios.BitBtn3Click(Sender: TObject);
var
  a : integer;
begin
  lockwindowupdate(lista1.Handle);
  for a := 0 to lista1.Items.Count - 1 do
  begin
    lista1.Items[a].ImageIndex := 1;
    lista1.Items[a].SelectedIndex := 1;

    if Lista4.Items[a] = '1' then
       Ins.Items[a] := 'True';

    if (Lista4.Items[a] = '1') or
    (Lista4.Items[a] = '2') then
      Modi.Items[a] := 'True';

    if Lista4.Items[a] = '1' then
      Del.Items[a] := 'True';
  end;
  Lista1.Refresh;
  lockwindowupdate(0);
  Lista1.setfocus;
end;

procedure TfrmUsuarios.BitBtn4Click(Sender: TObject);
var
  a : integer;
begin
  lockwindowupdate(lista1.Handle);
  for a := 0 to lista1.Items.Count - 1 do
  begin
    lista1.Items[a].ImageIndex := 0;
    lista1.Items[a].SelectedIndex := 0;
  end;
  Lista1.Refresh;
  lockwindowupdate(0);
  Lista1.setfocus;
end;

procedure TfrmUsuarios.BitBtn5Click(Sender: TObject);
var
  a, b : integer;
begin
  lockwindowupdate(lista1.Handle);
  if Lista1.Selected.Count > 0 then
  begin
    for a := Lista1.Selected.AbsoluteIndex to
    (Lista1.Selected.AbsoluteIndex+Lista1.Selected.Count) do
    begin
      Lista1.Items[a].ImageIndex := 1;
      Lista1.Items[a].SelectedIndex := 1;
      for b := Lista1.Items.Item[a].AbsoluteIndex to
      Lista1.Items.Item[a].AbsoluteIndex+Lista1.Items.Item[a].Count do
      begin
        Lista1.Items[b].ImageIndex := 1;
        Lista1.Items[b].SelectedIndex := 1;
      end;
    end;
  end;
  Lista1.Refresh;
  lockwindowupdate(0);
  Lista1.setfocus;
end;

procedure TfrmUsuarios.BitBtn6Click(Sender: TObject);
var
  a : integer;
begin
  lockwindowupdate(lista1.Handle);
  if Lista1.Selected.Count > 0 then
  begin
    for a := Lista1.Selected.AbsoluteIndex to
    (Lista1.Selected.AbsoluteIndex+Lista1.Selected.Count) do
    begin
      Lista1.Items[a].ImageIndex := 0;
      Lista1.Items[a].SelectedIndex := 0;
    end;
  end;
  Lista1.Refresh;
  lockwindowupdate(0);
  Lista1.setfocus;
end;

procedure TfrmUsuarios.ckExpandClick(Sender: TObject);
begin
  if ckExpand.Checked then
     Lista1.FullExpand
  else
     Lista1.FullCollapse;
end;

procedure TfrmUsuarios.BitBtn1Click(Sender: TObject);
var
  a : integer;
begin
  Screen.Cursor := crSQLWait;
  lockwindowupdate(lista1.Handle);
  QAccesos.close;
  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('delete from privilegios');
  dm.Query1.sql.add('where usu_codigo = :usu');
  dm.Query1.Parameters.parambyname('usu').Value := QUsuariosUSU_CODIGO.value;
  dm.Query1.ExecSQL;

  for a := 0 to lista1.Items.Count - 1 do
  begin
    if lista1.Items[a].ImageIndex = 1 then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('insert into privilegios (usu_codigo, pri_nombre,');
      dm.Query1.sql.add('inserta, modifica, elimina, descripcion)');
      dm.Query1.sql.add('values (:usu, :nom, :ins, :modi, :del, :des)');
      dm.Query1.Parameters.ParamByName('usu').Value := QUsuariosUSU_CODIGO.value;
      dm.Query1.Parameters.ParamByName('nom').Value  := Lista3.items[a];
      dm.Query1.Parameters.ParamByName('ins').Value  := Ins.items[a];
      dm.Query1.Parameters.ParamByName('Modi').Value := Modi.items[a];
      dm.Query1.Parameters.ParamByName('Del').Value  := Del.items[a];
      dm.Query1.Parameters.ParamByName('des').Value  := trim(Lista2.items[a]);
      dm.Query1.ExecSQL;
    end;
  end;
  Lista1.Refresh;
  lockwindowupdate(0);
  Lista1.setfocus;
  dm.Query1.enablecontrols;
  QAccesos.open;
  Screen.Cursor := crDefault;
end;

procedure TfrmUsuarios.Lista1Change(Sender: TObject; Node: TTreeNode);
begin
{  ckInsert.enabled := Lista4.Items[Lista1.Selected.AbsoluteIndex] = '1';
  ckEdit.enabled   := (Lista4.Items[Lista1.Selected.AbsoluteIndex] = '1') or
                      (Lista4.Items[Lista1.Selected.AbsoluteIndex] = '2');
  ckDelete.enabled := Lista4.Items[Lista1.Selected.AbsoluteIndex] = '1';
 }
  ckInsert.Checked := Ins.items[Lista1.Selected.AbsoluteIndex] = 'True';
  ckEdit.Checked   := Modi.items[Lista1.Selected.AbsoluteIndex] = 'True';
  ckDelete.Checked := Del.items[Lista1.Selected.AbsoluteIndex] = 'True';


end;

procedure TfrmUsuarios.ckInsertClick(Sender: TObject);
begin
  if ckInsert.Checked then
     Ins.Items[Lista1.Selected.AbsoluteIndex] := 'True'
  else
     Ins.Items[Lista1.Selected.AbsoluteIndex] := 'False';
end;

procedure TfrmUsuarios.ckEditClick(Sender: TObject);
begin
  if ckEdit.Checked then
     Modi.Items[Lista1.Selected.AbsoluteIndex] := 'True'
  else
     Modi.Items[Lista1.Selected.AbsoluteIndex] := 'False';
end;

procedure TfrmUsuarios.ckDeleteClick(Sender: TObject);
begin
  if ckDelete.Checked then
     Del.Items[Lista1.Selected.AbsoluteIndex] := 'True'
  else
     Del.Items[Lista1.Selected.AbsoluteIndex] := 'False';
end;

procedure TfrmUsuarios.QUsuariosUSU_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
var
  a : integer;
begin
  text := IntToStr(QUsuariosUSU_CODIGO.Value);
  lockwindowupdate(lista1.Handle);
  Lista1.LoadFromFile(ExtractFilePath(Application.ExeName)+'usu.txt');
  if not QAccesos.active then QAccesos.open;
  QAccesos.disablecontrols;
  QAccesos.first;
  while not QAccesos.eof do
  begin
    a := lista3.Items.IndexOf(Trim(QAccesosPRI_NOMBRE.value));
    if a >= 0 then
    begin
      Lista1.items[a].ImageIndex := 1;
      Lista1.items[a].SelectedIndex := 1;
      Ins.items[a] := QAccesosINSERTA.value;
      Modi.items[a]:= QAccesosMODIFICA.value;
      Del.items[a] := QAccesosELIMINA.value;
      
    end
    else
    begin
        Ins.items.add('False');
        Modi.items.add('False');
        Del.items.add('False');
    end;

{    for a := 0 to Lista1.Items.Count -1 do
    begin
      if UpperCase(QAccesosPRI_NOMBRE.value) = uppercase(Lista3.items[a]) then
      begin
        Lista1.items[a].ImageIndex := 1;
        Lista1.items[a].SelectedIndex := 1;
        Ins.items[a] := QAccesosINSERTA.value;
        Modi.items[a]:= QAccesosMODIFICA.value;
        Del.items[a] := QAccesosELIMINA.value;
        break;
      end
      else
      begin
        Ins.items.add('False');
        Modi.items.add('False');
        Del.items.add('False');
      end;
    end;}
    QAccesos.next;
  end;
  Lista1.Refresh;
  lockwindowupdate(0);
  QAccesos.enablecontrols;
  end;


procedure TfrmUsuarios.BitBtn2Click(Sender: TObject);
begin
  if Search.execute then
  begin
    Screen.Cursor := crSQLWait;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('execute pr_copia_accesos :des, :has');
    dm.Query1.Parameters.ParamByName('des').Value := StrToInt(Search.ValueField);
    dm.Query1.Parameters.ParamByName('has').Value := QUsuariosUSU_CODIGO.Value;
    dm.Query1.ExecSQL;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmUsuarios.btempClick(Sender: TObject);
begin
  {search.Query.Clear;
  search.Query.Add('SELECT E.EMP_NOMBRE, E.EMP_CODIGO');
  search.Query.Add('FROM EMPRESAS E, EMPACCESOS A');
  search.Query.Add('WHERE E.EMP_CODIGO = A.EMP_CODIGO');
  search.Query.Add('AND A.USU_CODIGO = '+QUsuariosUSU_CODIGO.AsString);
  search.Title := 'Empresas';
  search.ResultField := 'emp_codigo';
  if search.execute then
  begin
    QUsuariosUSU_EMPDEFAULT.Value := StrToInt(Search.ValueField);
    DBEdit4.SetFocus;
  end;}
end;

procedure TfrmUsuarios.QUsuariosUSU_EMPDEFAULTGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  {if not QUsuariosUSU_EMPDEFAULT.IsNull then
  begin
    Text := IntToStr(QUsuariosUSU_EMPDEFAULT.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select emp_nombre from empresas');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.Parameters.ParamByName('emp').Value := QUsuariosUSU_EMPDEFAULT.Value;
    dm.Query1.Open;
    temp.Text := dm.Query1.FieldByName('emp_nombre').AsString;
  end
  else
    temp.Text := '';}
end;

procedure TfrmUsuarios.FormPaint(Sender: TObject);
begin
  with frmUsuarios do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmUsuarios.Aadirempresa1Click(Sender: TObject);
var
  a : integer;
begin
  application.createform(tfrmSeleccionEmp, frmSeleccionEmp);
  query1.close;
  query1.sql.clear;
  query1.sql.add('select emp_codigo, emp_nombre');
  query1.sql.add('from empresas');
  query1.sql.add('where emp_codigo not in (select emp_codigo');
  query1.sql.add('from empaccesos');
  query1.sql.add('where usu_codigo = :usu)');
  query1.sql.add('order by emp_nombre');
  query1.Parameters.parambyname('usu').Value := QUsuariosUSU_CODIGO.value;
  query1.open;
  frmSeleccionEmp.Lista.items.clear;
  frmSeleccionEmp.Lista2.items.clear;
  while not query1.eof do
  begin
    frmSeleccionEmp.Lista.items.add(query1.fieldbyname('emp_nombre').asstring);
    frmSeleccionEmp.Lista2.items.add(query1.fieldbyname('emp_codigo').asstring);
    query1.next;
  end;
  frmSeleccionEmp.showmodal;
  for a := 0 to frmSeleccionEmp.Lista.Items.Count - 1 do
  begin
    if frmSeleccionEmp.Lista.Checked[a] then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('insert into empaccesos (emp_codigo, usu_codigo)');
      dm.Query1.SQL.Add('values (:emp, :usu)');
      dm.Query1.Parameters.ParamByName('emp').Value := strtoint(frmSeleccionEmp.Lista2.items[a]);
      dm.Query1.Parameters.ParamByName('usu').Value := QUsuariosUSU_CODIGO.value;
      dm.Query1.ExecSQL;
    end;
  end;
  frmSeleccionEmp.release;
  QEmpresas.close;
  QEmpresas.open;
end;

procedure TfrmUsuarios.Eliminarempresa1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('delete from empaccesos');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and usu_codigo = :usu');
  dm.Query1.Parameters.ParamByName('emp').Value := QEmpresasemp_codigo.Value;
  dm.Query1.Parameters.ParamByName('usu').Value := QUsuariosUSU_CODIGO.value;
  dm.Query1.ExecSQL;
  QEmpresas.close;
  QEmpresas.open;
end;

procedure TfrmUsuarios.DBGrid1ColEnter(Sender: TObject);
begin
  Aadirempresa1.Visible  := true;
  Eliminarempresa1.Visible  := Aadirempresa1.Visible;
  AadirSucursal1.Visible := not Aadirempresa1.Visible;
  EliminarSucursal1.Visible := not Aadirempresa1.Visible;
end;

procedure TfrmUsuarios.DBGrid2ColEnter(Sender: TObject);
begin
  Aadirempresa1.Visible  := false;
  Eliminarempresa1.Visible  := Aadirempresa1.Visible;
  AadirSucursal1.Visible := not Aadirempresa1.Visible;
  EliminarSucursal1.Visible := not Aadirempresa1.Visible;
end;

procedure TfrmUsuarios.AadirSucursal1Click(Sender: TObject);
var
  a : integer;
begin
  application.createform(tfrmSeleccionEmp, frmSeleccionEmp);
  query1.close;
  query1.sql.clear;
  query1.sql.add('select suc_codigo, suc_nombre');
  query1.sql.add('from sucursales');
  query1.sql.add('where emp_codigo = :emp');
  query1.sql.add('order by suc_nombre');
  query1.Parameters.parambyname('emp').Value := QEmpresasEMP_CODIGO.Value;
  query1.open;
  frmSeleccionEmp.Lista.items.clear;
  frmSeleccionEmp.Lista2.items.clear;
  while not query1.eof do
  begin
    frmSeleccionEmp.Lista.items.add(query1.fieldbyname('suc_nombre').asstring);
    frmSeleccionEmp.Lista2.items.add(query1.fieldbyname('suc_codigo').asstring);

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select count(*) as cant from sucursal_acceso');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.SQL.Add('and usu_codigo = :usu');
    dm.Query1.Parameters.ParamByName('emp').Value := QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := query1.fieldbyname('suc_codigo').AsInteger;
    dm.Query1.Parameters.ParamByName('usu').Value := QUsuariosUSU_CODIGO.Value;
    dm.Query1.Open;
    if dm.Query1.FieldByName('cant').AsInteger > 0 then
       frmSeleccionEmp.Lista.State[frmSeleccionEmp.Lista.Items.IndexOf(query1.fieldbyname('suc_nombre').asstring)] := cbChecked;

    query1.next;
  end;
  frmSeleccionEmp.Lista.Update;
  frmSeleccionEmp.showmodal;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('delete from sucursal_acceso');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and usu_codigo = :usu');
  dm.Query1.Parameters.ParamByName('emp').Value := QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('usu').Value := QUsuariosUSU_CODIGO.Value;
  dm.Query1.ExecSQL;

  for a := 0 to frmSeleccionEmp.Lista.Items.Count - 1 do
  begin
    if frmSeleccionEmp.Lista.Checked[a] then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('insert into sucursal_acceso (emp_codigo, suc_codigo, usu_codigo)');
      dm.Query1.SQL.Add('values (:emp, :suc, :usu)');
      dm.Query1.Parameters.ParamByName('emp').Value := QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('usu').Value := QUsuariosUSU_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('suc').Value := strtoint(frmSeleccionEmp.Lista2.items[a]);
      dm.Query1.ExecSQL;
    end;
  end;
  QSucursales.Close;
  QSucursales.Open;
  frmSeleccionEmp.release;
end;

procedure TfrmUsuarios.EliminarSucursal1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('delete from sucursal_acceso');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and usu_codigo = :usu');
  dm.Query1.SQL.Add('and suc_codigo = :suc');
  dm.Query1.Parameters.ParamByName('emp').Value := QEmpresasemp_codigo.Value;
  dm.Query1.Parameters.ParamByName('usu').Value := QUsuariosUSU_CODIGO.value;
  dm.Query1.Parameters.ParamByName('suc').Value := QSucursalessuc_codigo.Value;
  dm.Query1.ExecSQL;
  QSucursales.close;
  QSucursales.open;
end;

procedure TfrmUsuarios.QUsuariosusu_CajeroValidate(Sender: TField);
begin
if QUsuariosusu_Cajero.Value = True then
QUsuariosusu_vendedor.Value := False;
end;

procedure TfrmUsuarios.QUsuariosusu_vendedorValidate(Sender: TField);
begin
if QUsuariosusu_vendedor.Value = True then
QUsuariosusu_Cajero.Value := False;
end;

end.
