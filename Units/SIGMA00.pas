unit SIGMA00;
interface

uses
  ShellAPI, Windows, Messages, IdMessage, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ExtCtrls, Buttons, Menus, IBDatabase, DBCtrls, ImgList, ToolWin, db,
  ActnList, OleCtrls, SHDocVw, StdCtrls, IBSQL, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, QuerySearchDlgADO, QRPDFFilt, QRExport, QRWebFilt,
  QRXMLSFilt, QuickRpt, QRCtrls,
  dxNavBarBase, dxNavBarCollns, dxNavBar, cxClasses, jpeg, cxControls,
  cxContainer, cxTreeView, DIMime, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, cxEdit,
  IdMessageClient, IdSMTP, ADODB,
  QExport, QExportXLS, frxpngimage, EASendMailObjLib_TLB,
  Variants, StrUtils, OCXFISLib_TLB,Tfhkaif,iFiscal,
  IdHTTP, IdSSLOpenSSL, IdGlobal, UrlMon;

type
  TfrmMain = class(TForm)
    stBar1: TStatusBar;
    GrabaXLS: TSaveDialog;
    ImageList2: TImageList;
    Timer1: TTimer;
    SaveDialog1: TSaveDialog;
    Search: TQrySearchDlgADO;
    PopupMenu1: TPopupMenu;
    AadiraMiSigma1: TMenuItem;
    Eliminiar1: TMenuItem;
    dxNavMenu: TdxNavBar;
    navInventario: TdxNavBarGroup;
    navVentas: TdxNavBarGroup;
    navCxC: TdxNavBarGroup;
    navCxP: TdxNavBarGroup;
    navBanco: TdxNavBarGroup;
    navContab: TdxNavBarGroup;
    navRH: TdxNavBarGroup;
    navSeguridad: TdxNavBarGroup;
    navParam: TdxNavBarGroup;
    navInventarioControl: TdxNavBarGroupControl;
    cxtvInventario: TcxTreeView;
    navVentasControl: TdxNavBarGroupControl;
    cxtvVentas: TcxTreeView;
    navCxCControl: TdxNavBarGroupControl;
    cxtvCxC: TcxTreeView;
    navCxPControl: TdxNavBarGroupControl;
    cxtvCxP: TcxTreeView;
    navBancoControl: TdxNavBarGroupControl;
    cxtvBanco: TcxTreeView;
    navContabControl: TdxNavBarGroupControl;
    cxtvContabilidad: TcxTreeView;
    navRHControl: TdxNavBarGroupControl;
    navSeguridadControl: TdxNavBarGroupControl;
    cxtvSeguridad: TcxTreeView;
    Splitter1: TSplitter;
    Panel1: TPanel;
    btExcel: TSpeedButton;
    btclose: TSpeedButton;
    cxtvRRHH: TcxTreeView;
    ImageList3: TImageList;
    SpeedButton1: TSpeedButton;
    navParamControl: TdxNavBarGroupControl;
    cxtvParam: TcxTreeView;
    ActionList1: TActionList;
    inv_productos: TAction;
    inv_almacenes: TAction;
    inv_familias: TAction;
    inv_deptos: TAction;
    inv_marcas: TAction;
    inv_colores: TAction;
    inv_unidades: TAction;
    inv_ajuste: TAction;
    inv_conduce: TAction;
    inv_entrada: TAction;
    inv_gerente: TAction;
    inv_pasillo: TAction;
    inv_fisico: TAction;
    inv_liq: TAction;
    inv_trans: TAction;
    inv_vence: TAction;
    inv_abierta: TAction;
    inv_eliminar: TAction;
    venta_tipofactura: TAction;
    venta_cotizacion: TAction;
    venta_factura: TAction;
    venta_devolucion: TAction;
    venta_oferta: TAction;
    venta_pedido: TAction;
    venta_automatica: TAction;
    venta_clienteclub: TAction;
    venta_cajero: TAction;
    cxc_cliente: TAction;
    cxc_recibo: TAction;
    cxc_nc: TAction;
    cxc_nd: TAction;
    cxp_proveedores: TAction;
    cxp_orden: TAction;
    cxp_factura: TAction;
    cxp_devolucion: TAction;
    cxp_nc: TAction;
    cxp_cotizacionmultiple: TAction;
    banco_cuenta: TAction;
    banco_concepto: TAction;
    banco_dp_crear: TAction;
    banco_dp_anular: TAction;
    banco_dp_eliminar: TAction;
    banco_ck_crear: TAction;
    banco_ck_anular: TAction;
    banco_ck_imprimir: TAction;
    banco_ck_eliminar: TAction;
    banco_ck_config: TAction;
    banco_cb_crear: TAction;
    banco_cb_anular: TAction;
    banco_cb_eliminar: TAction;
    banco_sol_crear: TAction;
    banco_sol_aprobar: TAction;
    banco_sol_imprimir: TAction;
    banco_sol_eliminar: TAction;
    banco_sol_generar: TAction;        
    banco_libro: TAction;
    banco_concil: TAction;
    cont_catalogo: TAction;
    cont_anexo: TAction;
    cont_cajas: TAction;
    cont_centros: TAction;
    cont_tipodoc: TAction;
    cont_bienes: TAction;
    cont_numeroentrada: TAction;
    cont_entradas: TAction;
    cont_movimiento: TAction;
    cont_rep_diario: TAction;
    cont_rep_mayor: TAction;
    cont_rep_bce: TAction;
    cont_rep_resumen: TAction;
    cont_rep_anexo: TAction;
    cont_est_res1: TAction;
    cont_est_res2: TAction;
    cont_est_sit_1: TAction;
    cont_est_sit_2: TAction;
    cont_est_costo: TAction;
    seg_usuario: TAction;
    seg_cambiar: TAction;
    seg_cerrar: TAction;
    param_general: TAction;
    param_emp: TAction;
    param_suc: TAction;
    param_tablas: TAction;
    param_actbalance: TAction;
    param_limpiar: TAction;
    lblAlerta: TLabel;
    Timer2: TTimer;
    memonotificaciones: TMemo;
    venta_boleto: TAction;
    inv_boletos: TAction;
    venta_alquiler: TAction;
    bListadoProducto: TSpeedButton;
    venta_liq_ticket_transp: TAction;
    IdSMTP1: TIdSMTP;
    param_rep_balancefact: TAction;
    qVerCotizaciones: TADOQuery;
    lblAlertaCot: TLabel;
    tmr2: TTimer;
    qAlertaCot: TADOQuery;
    tmr3: TTimer;
    ExportXLS: TQExportXLS;
    QRPDFFilter1: TQRPDFFilter;
    QRXMLSFilter1: TQRXMLSFilter;
    QRHTMLFilter1: TQRHTMLFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    QRWMFFilter1: TQRWMFFilter;
    tmr1: TTimer;
    tmr4: TTimer;
    Image1: TImage;
    MainMenu1: TMainMenu;
    Caja1: TMenuItem;
    CajasdeEfectivo1: TMenuItem;
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
    Configurarestadodesituacin1: TMenuItem;
    ConfigurarBcedeComprobacincomparativo1: TMenuItem;
    N46: TMenuItem;
    Cashflow1: TMenuItem;
    Grupos1: TMenuItem;
    Subgrupos1: TMenuItem;
    Conceptos2: TMenuItem;
    N47: TMenuItem;
    Cashflow2: TMenuItem;
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
    Listadodeboletos1: TMenuItem;
    ListadodeFacturas1: TMenuItem;
    ListadodeEnvio1: TMenuItem;
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
    Pedido1: TMenuItem;
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
    Fiscal1: TMenuItem;
    Cierredeturno1: TMenuItem;
    Cierredejornadafiscal1: TMenuItem;
    Cancelardocumentofiscalencurso1: TMenuItem;
    Extraccindelibrosdeventa1: TMenuItem;
    EstadoPrinter1: TMenuItem;
    Reset1: TMenuItem;
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
    OrdendeServicio1: TMenuItem;
    Anularorden1: TMenuItem;
    Entradadeequios1: TMenuItem;
    Salidadeequipos1: TMenuItem;
    N13: TMenuItem;
    Listadogeneral3: TMenuItem;
    N38: TMenuItem;
    Tipodeequipos1: TMenuItem;
    Tecnicos1: TMenuItem;
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
    Acercade1: TMenuItem;
    Acercade2: TMenuItem;
    Serial1: TMenuItem;
    ConfiguracionCorreo1: TMenuItem;
    Actualizaciones1: TMenuItem;
    banco_disp: TAction;
    CierredeldaCardnet1: TMenuItem;
    FacturacionElectronica1: TMenuItem;
    btnSoporte: TSpeedButton;
    qRepBalanceFact: TADOQuery;

    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TiposdeClientes1Click(Sender: TObject);
    procedure FormasdePago1Click(Sender: TObject);
    procedure CondicionesdePago1Click(Sender: TObject);
    procedure DeClientes1Click(Sender: TObject);
    procedure Desembolsos1Click(Sender: TObject);
    procedure Vendedores1Click(Sender: TObject);
    procedure Otroscargos1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Puntodeventa1Click(Sender: TObject);
    procedure ListadodeFacturas1Click(Sender: TObject);
    procedure RecibosdeCobro2Click(Sender: TObject);
    procedure Desembolsos2Click(Sender: TObject);
    procedure Devoluciones1Click(Sender: TObject);
    procedure NotasdeCrdito2Click(Sender: TObject);
    procedure NotasdeDbito2Click(Sender: TObject);
    procedure EntradasdeAlmacn2Click(Sender: TObject);
    procedure Conduces2Click(Sender: TObject);
    procedure Beneficios1Click(Sender: TObject);
    procedure ProductosCliente1Click(Sender: TObject);
    procedure PorProducto1Click(Sender: TObject);
    procedure Cuentasporpagar2Click(Sender: TObject);
    procedure iposdemovimientos1Click(Sender: TObject);
    procedure CuentasporCobrar1Click(Sender: TObject);
    procedure Facturasdeproveedores1Click(Sender: TObject);
    procedure Declientes2Click(Sender: TObject);
    procedure Aproveedores2Click(Sender: TObject);
    procedure rep_proveedoresClick(Sender: TObject);
    procedure MovimientosporDa1Click(Sender: TObject);
    procedure rep_inv_14Click(Sender: TObject);
    procedure rep_inv_11Click(Sender: TObject);
    procedure rep_inv_9Click(Sender: TObject);
    procedure rep_inv_1Click(Sender: TObject);
    procedure rep_inv_17Click(Sender: TObject);
    procedure rep_inv_7Click(Sender: TObject);
    procedure rep_inv_15Click(Sender: TObject);
    procedure rep_cxc_5Click(Sender: TObject);
    procedure btExcelClick(Sender: TObject);
    procedure rep_reimpresionClick(Sender: TObject);
    procedure Listadogeneral2Click(Sender: TObject);
    procedure rep_cxc_3Click(Sender: TObject);
    procedure Factura1Click(Sender: TObject);
    procedure NotadeCrdito1Click(Sender: TObject);
    procedure rep_cxc_2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure rep_cxc_1Click(Sender: TObject);
    procedure rep_inv_4Click(Sender: TObject);
    procedure Cambiarlmitedelcliente1Click(Sender: TObject);
    procedure stBar1DrawPanel(StatusBar: TStatusBar; Panel: TStatusPanel;
      const Rect: TRect);
    procedure rep_forma_pagoClick(Sender: TObject);
    procedure rep_cxp_2Click(Sender: TObject);
    procedure rep_cxp_3Click(Sender: TObject);
    procedure Productosvendidos1Click(Sender: TObject);
    procedure rep_venta_1Click(Sender: TObject);
    procedure Etiquetas1Click(Sender: TObject);
    procedure rep_comisionesClick(Sender: TObject);
    procedure Colocarexistenciaencero1Click(Sender: TObject);
    procedure Procesartransferenciasdealmacen1Click(Sender: TObject);
    procedure ransferenciasentrealmacen1Click(Sender: TObject);
    procedure Modificacindeprecios1Click(Sender: TObject);
    procedure Asignarclienteafactura1Click(Sender: TObject);
    procedure CierredelDa1Click(Sender: TObject);
    procedure NotadeDbito1Click(Sender: TObject);
    procedure Procesarconteofsico1Click(Sender: TObject);
    procedure Devolucin2Click(Sender: TObject);
    procedure rep_venta_10Click(Sender: TObject);
    procedure RecibodeCobro1Click(Sender: TObject);
    procedure Desembolso1Click(Sender: TObject);
    procedure EntradadeAlmacn1Click(Sender: TObject);
    procedure Conduce1Click(Sender: TObject);
    procedure Facturadeproveedores1Click(Sender: TObject);
    procedure rep_serviciosClick(Sender: TObject);
    procedure rep_venta_5Click(Sender: TObject);
    procedure rep_venta_4Click(Sender: TObject);
    procedure rep_venta_9Click(Sender: TObject);
    procedure rep_inv_16Click(Sender: TObject);
    procedure Pagoaproveedores1Click(Sender: TObject);
    procedure rep_inv_2Click(Sender: TObject);
    procedure CambiarStatus1Click(Sender: TObject);
    procedure rep_inv_3Click(Sender: TObject);
    procedure OperacionesdelMes1Click(Sender: TObject);
    procedure Balancesdeunacuenta1Click(Sender: TObject);
    procedure Entradasdediario1Click(Sender: TObject);
    procedure Cheques1Click(Sender: TObject);
    procedure Solicitudesdecheque1Click(Sender: TObject);
    procedure Depositos1Click(Sender: TObject);
    procedure Cargosbancarios1Click(Sender: TObject);
    procedure Cierredemes1Click(Sender: TObject);
    procedure Cierredeao1Click(Sender: TObject);
    procedure Pasardocumentosacontabilidad1Click(Sender: TObject);
    procedure Copiarcatlogoentrecompaas1Click(Sender: TObject);
    procedure btexitClick(Sender: TObject);
    procedure btCajaClick(Sender: TObject);
    procedure btcalcClick(Sender: TObject);
    procedure bttileClick(Sender: TObject);
    procedure ConfigurarBcedeComprobacincomparativo1Click(Sender: TObject);
    procedure Definirescalas1Click(Sender: TObject);
    procedure Accesoporempresas1Click(Sender: TObject);
    procedure btChartClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure PordeSerie1Click(Sender: TObject);
    procedure Devolucionesencompra1Click(Sender: TObject);
    procedure rep_inv_21Click(Sender: TObject);
    procedure ActividaddelasCajas1Click(Sender: TObject);
    procedure ipodemoneda1Click(Sender: TObject);
    procedure MovimientosporCentrodeCosto1Click(Sender: TObject);
    procedure Retenciones1Click(Sender: TObject);
    procedure Reporteadhoc1Click(Sender: TObject);
    procedure Categorias1Click(Sender: TObject);
    procedure Marcas2Click(Sender: TObject);
    procedure Familiadeactivos1Click(Sender: TObject);
    procedure Activosfijos1Click(Sender: TObject);
    procedure iposdemovimiento1Click(Sender: TObject);
    procedure rep_activosClick(Sender: TObject);
    procedure Movimientosdeactivos1Click(Sender: TObject);
    procedure btEmailClick(Sender: TObject);
    procedure rep_inv_23Click(Sender: TObject);
    procedure rep_inv_20Click(Sender: TObject);
    procedure Devolucionessinfactura1Click(Sender: TObject);
    procedure Provincias1Click(Sender: TObject);
    procedure Bonos1Click(Sender: TObject);
    procedure Mesas1Click(Sender: TObject);
    procedure icketsdecaja1Click(Sender: TObject);
    procedure Porprovincia1Click(Sender: TObject);
    procedure Categorias2Click(Sender: TObject);
    procedure Colectordeinventario1Click(Sender: TObject);
    procedure Tecnicos1Click(Sender: TObject);
    procedure Tipodeequipos1Click(Sender: TObject);
    procedure rep_cxc_4Click(Sender: TObject);
    procedure rep_cxp_4Click(Sender: TObject);
    procedure Entradadeequios1Click(Sender: TObject);
    procedure Salidadeequipos1Click(Sender: TObject);
    procedure Supervisoresdecaja1Click(Sender: TObject);
    procedure Clavesupervisordecaja1Click(Sender: TObject);
    procedure Notasdecrditoproveedores1Click(Sender: TObject);
    procedure ipodeingresos1Click(Sender: TObject);
    procedure ipodehorastrabajadas1Click(Sender: TObject);
    procedure ipodeevaluacin1Click(Sender: TObject);
    procedure Nivelsalarial1Click(Sender: TObject);
    procedure Motivos1Click(Sender: TObject);
    procedure Idiomas1Click(Sender: TObject);
    procedure Estadoscivil1Click(Sender: TObject);
    procedure Paises1Click(Sender: TObject);
    procedure Niveles1Click(Sender: TObject);
    procedure Posiciones1Click(Sender: TObject);
    procedure Diasferiados1Click(Sender: TObject);
    procedure Grupodedescuentos1Click(Sender: TObject);
    procedure Gruposdetrabajo1Click(Sender: TObject);
    procedure iposdeempleado1Click(Sender: TObject);
    procedure Categoriasdelicenciadeconducir1Click(Sender: TObject);
    procedure iposdeseguro1Click(Sender: TObject);
    procedure Institucionesacademicas1Click(Sender: TObject);
    procedure Clasificaciondeniveles1Click(Sender: TObject);
    procedure Habilidades1Click(Sender: TObject);
    procedure Posicionesporclasificacion1Click(Sender: TObject);
    procedure iposdeplanes1Click(Sender: TObject);
    procedure Solicitud1Click(Sender: TObject);
    procedure Productos2Click(Sender: TObject);
    procedure GenerarNCFunicoingreso1Click(Sender: TObject);
    procedure GenerarNCFgastosmenores1Click(Sender: TObject);
    procedure FacturasenHOLD1Click(Sender: TObject);
    procedure Procesardispositivodealmacenamiento1Click(
      Sender: TObject);
    procedure rep_venta_11Click(Sender: TObject);
    procedure rep_clientes_2Click(Sender: TObject);
    procedure rep_clientes_1Click(Sender: TObject);
    procedure Entrevistas1Click(Sender: TObject);
    procedure Requerimientopersonal1Click(Sender: TObject);
    procedure Elegibles1Click(Sender: TObject);
    procedure Evaluacion1Click(Sender: TObject);
    procedure CrearModificarEmpleado1Click(Sender: TObject);
    procedure iposdenomina1Click(Sender: TObject);
    procedure MensajesIndividuales1Click(Sender: TObject);
    procedure Vacacionesempleados1Click(Sender: TObject);
    procedure Evaluaciones1Click(Sender: TObject);
    procedure Inclusionyexclusion1Click(Sender: TObject);
    procedure iposdeaccion1Click(Sender: TObject);
    procedure Accionesdepersonal1Click(Sender: TObject);
    procedure Ingresos1Click(Sender: TObject);
    procedure Horastrabajadas1Click(Sender: TObject);
    procedure Descuentos1Click(Sender: TObject);
    procedure ipodedescuentos1Click(Sender: TObject);
    procedure abladeISR1Click(Sender: TObject);
    procedure ablaSemanaxmes1Click(Sender: TObject);
    procedure ablasegurosocial1Click(Sender: TObject);
    procedure ablacalculoprestaciones1Click(Sender: TObject);
    procedure AFP1Click(Sender: TObject);
    procedure ReporteDGT31Click(Sender: TObject);
    procedure Pormarca3Click(Sender: TObject);
    procedure rep_inv_12Click(Sender: TObject);
    procedure Gastosaduanales1Click(Sender: TObject);
    procedure rep_venta_12Click(Sender: TObject);
    procedure GenerarReversarNomina1Click(Sender: TObject);
    procedure Cuadregeneral1Click(Sender: TObject);
    procedure Dewsgloceefectivo1Click(Sender: TObject);
    procedure rep_venta_3Click(Sender: TObject);
    procedure SFS1Click(Sender: TObject);
    procedure Reportegeneral1Click(Sender: TObject);
    procedure Formatoenviocomprasdebienesyservicios1Click(Sender: TObject);
    procedure Cartadecertificacion1Click(Sender: TObject);
    procedure Autorizaciondecredito1Click(Sender: TObject);
    procedure Devolucionencompra1Click(Sender: TObject);
    procedure Notadecrditoaproveedor1Click(Sender: TObject);
    procedure Operaciones1Click(Sender: TObject);
    procedure Nominas1Click(Sender: TObject);
    procedure Preventas1Click(Sender: TObject);
    procedure rep_inv_22Click(Sender: TObject);
    procedure Courriers1Click(Sender: TObject);
    procedure Ordendecompra1Click(Sender: TObject);
    procedure Cotizaciones2Click(Sender: TObject);
    procedure CajasIP1Click(Sender: TObject);
    procedure CuadrecajasIP1Click(Sender: TObject);
    procedure Resumenejecutivo1Click(Sender: TObject);
    procedure Configurarestadodesituacin1Click(Sender: TObject);
    procedure btwebClick(Sender: TObject);
    procedure GenerarFormatodeenvio6071Click(Sender: TObject);
    procedure Motivosdedevolucion1Click(Sender: TObject);
    procedure rep_analisis_1Click(Sender: TObject);
    procedure Liquidaciones1Click(Sender: TObject);
    procedure rep_inv_10Click(Sender: TObject);
    procedure rep_venta_6Click(Sender: TObject);
    procedure rep_cxc_6Click(Sender: TObject);
    procedure Liquidacin1Click(Sender: TObject);
    procedure rep_analisis_2Click(Sender: TObject);
    procedure rep_inv_19Click(Sender: TObject);
    procedure Comprobantesfiscales1Click(Sender: TObject);
    procedure rep_cxp_1Click(Sender: TObject);
    procedure rep_inv_5Click(Sender: TObject);
    procedure CuadrecajasIPdefinitivo1Click(Sender: TObject);
    procedure rep_venta_8Click(Sender: TObject);
    procedure Resumendeingresos1Click(Sender: TObject);
    procedure Notificaciondecomprobantesfiscales1Click(Sender: TObject);
    procedure NmerosdeRNC1Click(Sender: TObject);
    procedure rep_inv_6Click(Sender: TObject);
    procedure Camiones1Click(Sender: TObject);
    procedure GenerarFormatodeenvio6081Click(Sender: TObject);
    procedure rep_analisis_3Click(Sender: TObject);
    procedure Pronosticodecobro1Click(Sender: TObject);
    procedure rep_venta_7Click(Sender: TObject);
    procedure Novedadesdelanmina1Click(Sender: TObject);
    procedure rep_cxp_5Click(Sender: TObject);
    procedure rep_inv_25Click(Sender: TObject);
    procedure Conteofisicodesdedispositivo1Click(Sender: TObject);
    procedure rep_cxc_8Click(Sender: TObject);
    procedure ipodeproveedores1Click(Sender: TObject);
    procedure rep_inv_18Click(Sender: TObject);
    procedure Comprobantesdegastosmenores1Click(Sender: TObject);
    procedure Grupos1Click(Sender: TObject);
    procedure Subgrupos1Click(Sender: TObject);
    procedure Conceptos2Click(Sender: TObject);
    procedure Cashflow2Click(Sender: TObject);
    procedure Medidores1Click(Sender: TObject);
    procedure Generarfacturasautomticas1Click(Sender: TObject);
    procedure rep_cxc_7Click(Sender: TObject);
    procedure btcloseClick(Sender: TObject);
    procedure cxtvInventarioClick(Sender: TObject);
    procedure cxtvVentasClick(Sender: TObject);
    procedure cxtvCxCClick(Sender: TObject);
    procedure cxtvCxPClick(Sender: TObject);
    procedure cxtvContabilidadClick(Sender: TObject);
    procedure cxtvSeguridadClick(Sender: TObject);
    procedure cxtvParamClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure AadiraMiSigma1Click(Sender: TObject);
    procedure Eliminiar1Click(Sender: TObject);
    procedure cxtvBancoClick(Sender: TObject);
    procedure dxNavMenuGroupClick(Sender: TObject; AGroup: TdxNavBarGroup);
    procedure cxtvBancoCollapsing(Sender: TObject; Node: TTreeNode;
      var AllowCollapse: Boolean);
    procedure cxtvContabilidadCollapsing(Sender: TObject; Node: TTreeNode;
      var AllowCollapse: Boolean);
    procedure cxtvMiSigmaClick(Sender: TObject);
    procedure cxtvInventarioChanging(Sender: TObject; Node: TTreeNode;
      var AllowChange: Boolean);
    procedure cxtvInventarioAdvancedCustomDrawItem(Sender: TCustomTreeView;
      Node: TTreeNode; State: TCustomDrawState; Stage: TCustomDrawStage;
      var PaintImages, DefaultDraw: Boolean);
    procedure cxtvVentasAdvancedCustomDrawItem(Sender: TCustomTreeView;
      Node: TTreeNode; State: TCustomDrawState; Stage: TCustomDrawStage;
      var PaintImages, DefaultDraw: Boolean);
    procedure cxtvVentasChanging(Sender: TObject; Node: TTreeNode;
      var AllowChange: Boolean);
    procedure cxtvCxCAdvancedCustomDrawItem(Sender: TCustomTreeView;
      Node: TTreeNode; State: TCustomDrawState; Stage: TCustomDrawStage;
      var PaintImages, DefaultDraw: Boolean);
    procedure cxtvCxCChanging(Sender: TObject; Node: TTreeNode;
      var AllowChange: Boolean);
    procedure inv_productosExecute(Sender: TObject);
    procedure inv_almacenesExecute(Sender: TObject);
    procedure inv_familiasExecute(Sender: TObject);
    procedure inv_deptosExecute(Sender: TObject);
    procedure inv_marcasExecute(Sender: TObject);
    procedure inv_coloresExecute(Sender: TObject);
    procedure inv_unidadesExecute(Sender: TObject);
    procedure inv_ajusteExecute(Sender: TObject);
    procedure inv_conduceExecute(Sender: TObject);
    procedure inv_entradaExecute(Sender: TObject);
    procedure inv_gerenteExecute(Sender: TObject);
    procedure inv_pasilloExecute(Sender: TObject);
    procedure inv_fisicoExecute(Sender: TObject);
    procedure inv_liqExecute(Sender: TObject);
    procedure inv_transExecute(Sender: TObject);
    procedure inv_venceExecute(Sender: TObject);
    procedure inv_abiertaExecute(Sender: TObject);
    procedure inv_eliminarExecute(Sender: TObject);
    procedure venta_tipofacturaExecute(Sender: TObject);
    procedure venta_cotizacionExecute(Sender: TObject);
    procedure venta_facturaExecute(Sender: TObject);
    procedure venta_devolucionExecute(Sender: TObject);
    procedure venta_ofertaExecute(Sender: TObject);
    procedure venta_pedidoExecute(Sender: TObject);
    procedure venta_automaticaExecute(Sender: TObject);
    procedure venta_clienteclubExecute(Sender: TObject);
    procedure venta_cajeroExecute(Sender: TObject);
    procedure cxc_clienteExecute(Sender: TObject);
    procedure cxc_reciboExecute(Sender: TObject);
    procedure cxc_ncExecute(Sender: TObject);
    procedure cxc_ndExecute(Sender: TObject);
    procedure cxtvCxPChanging(Sender: TObject; Node: TTreeNode;
      var AllowChange: Boolean);
    procedure cxp_proveedoresExecute(Sender: TObject);
    procedure cxp_ordenExecute(Sender: TObject);
    procedure cxp_facturaExecute(Sender: TObject);
    procedure cxp_devolucionExecute(Sender: TObject);
    procedure cxp_ncExecute(Sender: TObject);
    procedure cxp_cotizacionmultipleExecute(Sender: TObject);
    procedure cxtvBancoAdvancedCustomDrawItem(Sender: TCustomTreeView;
      Node: TTreeNode; State: TCustomDrawState; Stage: TCustomDrawStage;
      var PaintImages, DefaultDraw: Boolean);
    procedure cxtvBancoChanging(Sender: TObject; Node: TTreeNode;
      var AllowChange: Boolean);
    procedure cxtvCxPAdvancedCustomDrawItem(Sender: TCustomTreeView;
      Node: TTreeNode; State: TCustomDrawState; Stage: TCustomDrawStage;
      var PaintImages, DefaultDraw: Boolean);
    procedure banco_cuentaExecute(Sender: TObject);
    procedure banco_conceptoExecute(Sender: TObject);
    procedure banco_dp_crearExecute(Sender: TObject);
    procedure banco_dp_anularExecute(Sender: TObject);
    procedure banco_dp_eliminarExecute(Sender: TObject);
    procedure banco_ck_crearExecute(Sender: TObject);
    procedure banco_ck_anularExecute(Sender: TObject);
    procedure banco_ck_imprimirExecute(Sender: TObject);
    procedure banco_ck_eliminarExecute(Sender: TObject);
    procedure banco_ck_configExecute(Sender: TObject);
    procedure banco_cb_crearExecute(Sender: TObject);
    procedure banco_cb_anularExecute(Sender: TObject);
    procedure banco_cb_eliminarExecute(Sender: TObject);
    procedure banco_sol_crearExecute(Sender: TObject);
    procedure banco_sol_aprobarExecute(Sender: TObject);
    procedure banco_sol_imprimirExecute(Sender: TObject);
    procedure banco_sol_eliminarExecute(Sender: TObject);
    procedure banco_sol_generarExecute(Sender: TObject);
    procedure banco_libroExecute(Sender: TObject);
    procedure banco_concilExecute(Sender: TObject);
    procedure cxtvContabilidadAdvancedCustomDrawItem(
      Sender: TCustomTreeView; Node: TTreeNode; State: TCustomDrawState;
      Stage: TCustomDrawStage; var PaintImages, DefaultDraw: Boolean);
    procedure cxtvContabilidadChanging(Sender: TObject; Node: TTreeNode;
      var AllowChange: Boolean);
    procedure cont_catalogoExecute(Sender: TObject);
    procedure cont_anexoExecute(Sender: TObject);
    procedure cont_cajasExecute(Sender: TObject);
    procedure cont_centrosExecute(Sender: TObject);
    procedure cont_tipodocExecute(Sender: TObject);
    procedure cont_bienesExecute(Sender: TObject);
    procedure cont_numeroentradaExecute(Sender: TObject);
    procedure cont_entradasExecute(Sender: TObject);
    procedure cont_movimientoExecute(Sender: TObject);
    procedure cont_rep_diarioExecute(Sender: TObject);
    procedure cont_rep_mayorExecute(Sender: TObject);
    procedure cont_rep_bceExecute(Sender: TObject);
    procedure cont_rep_resumenExecute(Sender: TObject);
    procedure cont_rep_anexoExecute(Sender: TObject);
    procedure cont_est_res1Execute(Sender: TObject);
    procedure cont_est_res2Execute(Sender: TObject);
    procedure cont_est_sit_1Execute(Sender: TObject);
    procedure cont_est_sit_2Execute(Sender: TObject);
    procedure cont_est_costoExecute(Sender: TObject);
    procedure cxtvSeguridadAdvancedCustomDrawItem(Sender: TCustomTreeView;
      Node: TTreeNode; State: TCustomDrawState; Stage: TCustomDrawStage;
      var PaintImages, DefaultDraw: Boolean);
    procedure cxtvSeguridadChanging(Sender: TObject; Node: TTreeNode;
      var AllowChange: Boolean);
    procedure seg_usuarioExecute(Sender: TObject);
    procedure seg_cambiarExecute(Sender: TObject);
    procedure seg_cerrarExecute(Sender: TObject);
    procedure cxtvParamAdvancedCustomDrawItem(Sender: TCustomTreeView;
      Node: TTreeNode; State: TCustomDrawState; Stage: TCustomDrawStage;
      var PaintImages, DefaultDraw: Boolean);
    procedure cxtvParamChanging(Sender: TObject; Node: TTreeNode;
      var AllowChange: Boolean);
    procedure param_generalExecute(Sender: TObject);
    procedure param_empExecute(Sender: TObject);
    procedure param_sucExecute(Sender: TObject);
    procedure param_tablasExecute(Sender: TObject);
    procedure param_actbalanceExecute(Sender: TObject);
    procedure param_limpiarExecute(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure memonotificacionesDblClick(Sender: TObject);
    procedure lblAlertaClick(Sender: TObject);
    procedure Pedido1Click(Sender: TObject);
    procedure Listadogeneral3Click(Sender: TObject);
    procedure ListadodeEnvio1Click(Sender: TObject);
    procedure venta_boletoExecute(Sender: TObject);
    procedure inv_boletosExecute(Sender: TObject);
    procedure Listadodeboletos1Click(Sender: TObject);
    procedure venta_alquilerExecute(Sender: TObject);
    procedure ReportedeVencLicenciaSeguro1Click(Sender: TObject);
    procedure Acercade2Click(Sender: TObject);
    procedure Serial1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bListadoProductoClick(Sender: TObject);
    function GetComputerName : String;
    procedure venta_liq_ticket_transpExecute(Sender: TObject);
    procedure mniTransporte1Click(Sender: TObject);
    procedure mniListadodeFacturasRestBAR1Click(Sender: TObject);
    procedure tmr2Timer(Sender: TObject);
    procedure lblAlertaCotClick(Sender: TObject);
    procedure tmr3Timer(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure ConfiguracionCorreo1Click(Sender: TObject);
    procedure Actualizaciones1Click(Sender: TObject);
    procedure tmr4Timer(Sender: TObject);
    procedure Cierredeturno1Click(Sender: TObject);
    procedure Cierredejornadafiscal1Click(Sender: TObject);
    procedure Cancelardocumentofiscalencurso1Click(Sender: TObject);
    procedure Extraccindelibrosdeventa1Click(Sender: TObject);
    procedure EstadoPrinter1Click(Sender: TObject);
    procedure Reset1Click(Sender: TObject);
    procedure banco_dispExecute(Sender: TObject);
    procedure CierredeldaCardnet1Click(Sender: TObject);
    procedure FacturacionElectronica1Click(Sender: TObject);
    procedure btnSoporteClick(Sender: TObject);
  private
    { Private declarations }
    FClientInstance : TFarProc;
    FPrevClientProc : TFarProc;
    procedure ClientWndProc(var Message: TMessage);
    function ChAnsiToWide(const StrA: WideString): WideString; overload;
  public
    { Public declarations }
    acceso : integer;
    Cap, Num, Ins, Ano, Mes : integer;
    vIns, vMod, vDel : boolean;
    ArchivoMAil : String;
    filtroreporte : TQRPDFDocumentFilter;
    procedure ActivaForma(Unidad: TFormClass; Var Forma : TForm);
    procedure DisplayHint(Sender: TObject);
    procedure entra (campo : tobject);
    procedure sale (campo : tobject);
    procedure EnviarCorreo(Destinatario, Asunto, Adjunto, Cuerpo:String);
    procedure EnviarCorreo2(Destinatario, Asunto, Adjunto1,Adjunto2, Cuerpo:String);
    procedure DirectSend(oSmtp: TMail);


  end;

Const
  DMes : array[1..12] of String = ('Enero','Febrero','Marzo',
                                  'Abril','Mayo','Junio',
                                  'Julio','Agosto','Septiembre',
                                  'Octubre','Noviembre','Diciembre');


  NumeroMes : array[1..12] of integer = (31,29,31,30,31,30,31,31,30,31,30,31);

  ConnectNormal = 0;
  ConnectSSLAuto = 1;
  ConnectSTARTTLS = 2;
  ConnectDirectSSL = 3;
  ConnectTryTLS = 4;

var
  frmMain: TfrmMain;

  m_arAttachments : TStringList;
  m_arCharset: array[0..27,0..1] of WideString;

  m_autoChangeUser: Boolean;
  m_autoChangeServer: Boolean;
  unaCondicion: Integer = 0;

implementation

uses PVENTA03, PVENTA02, PVENTA04, PVENTA05, PVENTA06, PVENTA08, PVENTA07,
  PVENTA09, PVENTA10, PVENTA11, PVENTA12, PVENTA13, PVENTA14, PVENTA15,
  PVENTA16, PVENTA17, PVENTA18, PVENTA19, PVENTA20, PVENTA21, PVENTA22,
  PVENTA23, PVENTA24, PVENTA25, PVENTA26, PVENTA27, PVENTA28, PVENTA29,
  PVENTA30, PVENTA31, PVENTA32, PVENTA35, PVENTA38, PVENTA37,
  PVENTA41, PVENTA44, PVENTA45, PVENTA46, PVENTA47, PVENTA48, PVENTA49,
  PVENTA50, PVENTA51, PVENTA52, PVENTA53, PVENTA54, PVENTA55, PVENTA56,
  PVENTA57, PVENTA58, PVENTA59, PVENTA60, PVENTA62, PVENTA63,
  PVENTA64, PVENTA65, PVENTA66, PVENTA67, RVENTA24, PVENTA68, RVENTA26,
  RVENTA27, RVENTA28, RVENTA29, RVENTA30, RVENTA31, PVENTA69, RVENTA40,
  PVENTA70, PVENTA71, PVENTA73, PVENTA74, PVENTA77, PVENTA78,
  PVENTA79, PVENTA80, PVENTA84, RVENTA49, RVENTA50, PVENTA85, PVENTA86,
  RVENTA53, PVENTA87, PVENTA88, PVENTA39, PVENTA89, PVENTA90, PVENTA91,
  PVENTA92, PVENTA93, PVENTA94, PVENTA95, PVENTA96, PVENTA98, PVENTA99,
  PVENTA100, PVENTA101, PVENTA102, PVENTA103, PVENTA104, PVENTA105,
  PVENTA106, RVENTA61, PVENTA107, PVENTA109,
  PVENTA110, PVENTA111, PVENTA112, PVENTA113, SIGMA01, CONT14, CONT13,
  CONT12, CONT27, CONT30, CONT40, CONT31, CONT29, CONT32, CONT34, CONT35,
  CONT37, CONT38, CONT43, CONT44, CONT41, CONT45, CONT46, CONT47, CONT17,
  CONT26, CONT16, CONT28, CONT33, CONT39, CONT42, CONT19, CONT18, CONT23,
  CONT24, CONT25, CONT20, CONT21, CONT22, CONT50, CONT51, CONT48, CONT15,
  CONT11, CONT09, PVENTA115, CONT52, CONT53, PVENTA116, PVENTA118,
  PVENTA120, PVENTA122, PVENTA124, PVENTA127, PVENTA128, PVENTA130,
  PVENTA131, PVENTA132, PVENTA133, CONT55, PVENTA135, CONT56, PVENTA136,
  SIGMA02, CONT57, CONT58, CONT59, CONT60, CONT61, CONT62, CONT63,
  IdEMailAddress, PVENTA137, CONT54, PVENTA138, PVENTA139, PVENTA140,
  PVENTA142, PVENTA144, PVENTA146, PVENTA149, PVENTA148, PVENTA150,
  PVENTA151, PVENTA152, PVENTA153, RH00, PVENTA154, SERV00, SERV01,
  PVENTA155, PVENTA156, SERV02, SERV04, PVENTA158, PVENTA157, PVENTA159,
  RH17, RH16, RH15, RH14, RH13, RH12, RH11, RH10, RH09, RH08, RH07, RH06,
  RH05, RH04, RH03, RH02, RH01, RH18, RH19, RH20, RH21, RH22, PVENTA160,
  SIGMA03, CONT65, CONT66, PVENTA162, PVENTA164, PVENTA165,
  RH26, RH27, RH28, RH30, RH31, RH39, RH40, RH41, RH42, RH44, RH45, RH46,
  RH47, RH48, RH49, RH50, RH52, RH53, RH54, RH55, RH56, RHR00, PVENTA166,
  PVENTA168, PVENTA169, PVENTA167, RH51, PVENTA170, RVENTA86, PVENTA171,
  RH58, RH59, PVENTA172, CONT67, CONT68, CONT69, RH60, RH61, PVENTA173,
  PVENTA174, PVENTA175, PVENTA176, RH62, PVENTA177, PVENTA178, PVENTA179,
  PVENTA180, PVENTA181, PVENTA182, PVENTA183, PVENTA184, CONT70, SIGMA05,
  SIGMA06, CONT71, PVENTA188, PVENTA189, PVENTA190, PVENTA191, PVENTA192,
  PVENTA193, CONT72, CONT74, PVENTA194, PVENTA195, PVENTA196, PVENTA197,
  PVENTA198, PVENTA199, CONT75, PVENTA200, PVENTA201, PVENTA202, PVENTA203,
  PVENTA204, PVENTA205, CONT78, CONT79, PVENTA206, PVENTA207, CONT81,
  PVENTA210, PVENTA212, RH64, PVENTA213, PVENTA215, RVENTA116, PVENTA216,
  PVENTA217, PVENTA219, PVENTA220, CONT82, CONT83, CONT84, CONT85, CONT86,
  PVENTA221, PVENTA226, PVENTA228, SIGMA07, SIGMA08, PVENTAANULAPEDIDO,
  SERV05, PVENTA230, PTIKET001, DateUtils, PTIKET002, PTIKET003, PRENTA02,
  PVENTAREPVENC, USerial, PVenta233, RVENTA129, PVenta235, PVENTA236,
  PVENTA237, PVenta241, PVENTA242, PVENTA244, StdConvs, SIGMA09, CONT93,
  PVENTA245, prueba, RVENTA137;

{$R *.DFM}

function NumLockOn : boolean;
var
  keyState : TKeyboardState;
begin
  GetKeyboardState(KeyState);
  Result := (KeyState[VK_NUMLOCK] and 1) = 1;
end;

function CapsLockOn : boolean;
var
  keyState : TKeyboardState;
begin
  GetKeyboardState(KeyState);
  Result := (KeyState[VK_CAPITAL] and 1) = 1;
end;

function InsOn : boolean;
var
  keyState : TKeyboardState;
begin
  GetKeyboardState(KeyState);
  Result := (KeyState[VK_INSERT] and 1) = 1;
end;

procedure TfrmMain.ClientWndProc(var Message: TMessage);
var  Dc : hDC;
  Row : Integer;
  Col : Integer;
begin
    with Message do
    case Msg of
      WM_ERASEBKGND:
      begin
        Dc := TWMEraseBkGnd(Message).Dc;
        for Row := 0 to ClientWidth div Image1.Picture.Height do
          for Col := 0 to ClientWidth div Image1.Picture.Width do
            BitBlt(Dc, Col * Image1.Picture.Width, Row * Image1.Picture.Height,
            Image1.Picture.Width,Image1.Picture.Height,Image1.Canvas.Handle,
            0, 0, SRCCOPY);
            Result := 1;
          end;
      else
        Result := CallWindowProc(FPrevClientProc, ClientHandle, Msg, wParam,
                  lParam);
      end;
end;

Procedure Valores_Iniciales;
Begin
                                          {Formato de Fecha del sistema }
  ShortDateFormat := 'dd-MM-yyyy';
  DateSeparator := '-';
  TimeAMString := 'AM';
  TimePMString := 'PM';
  CurrencyDecimals := 2;
  CurrencyString   := '';
                                          {Nombres cortos de los dias }
  ShortDayNames[01]     := 'Dom';
  ShortDayNames[02]     := 'Lun';
  ShortDayNames[03]     := 'Mar';
  ShortDayNames[04]     := 'Mie';
  ShortDayNames[05]     := 'Jue';
  ShortDayNames[06]     := 'Vie';
  ShortDayNames[07]     := 'Sab';
                                          {Nombres largos de los dias }
  LongDayNames[01]     := 'Domingo';
  LongDayNames[02]     := 'Lunes';
  LongDayNames[03]     := 'Martes';
  LongDayNames[04]     := 'Miércoles';
  LongDayNames[05]     := 'Jueves';
  LongDayNames[06]     := 'Viernes';
  LongDayNames[07]     := 'Sabado';
                           {Nombres cortos de los meses (Solo los que varian) }
  ShortMonthNames[01]  := 'Ene';
  ShortMonthNames[04]  := 'Abr';
  ShortMonthNames[08]  := 'Ago';
  ShortMonthNames[12]  := 'Dic';
                                          {Nombres largos de los meses }
  LongMonthNames[01]   := 'Enero';
  LongMonthNames[02]   := 'Febrero';
  LongMonthNames[03]   := 'Marzo';
  LongMonthNames[04]   := 'Abril';
  LongMonthNames[05]   := 'Mayo';
  LongMonthNames[06]   := 'Junio';
  LongMonthNames[07]   := 'Julio';
  LongMonthNames[08]   := 'Agosto';
  LongMonthNames[09]   := 'Septiembre';
  LongMonthNames[10]   := 'Octubre';
  LongMonthNames[11]   := 'Noviembre';
  LongMonthNames[12]   := 'Diciembre';
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  dxNavMenu.ActiveGroupIndex := 0;
  if FileExists('bg.jpg') then Image1.Picture.LoadFromFile('bg.jpg');
  Application.OnHint := DisplayHint;
  CurrencyString     := '';
  CurrencyDecimals   := 2;
  Valores_Iniciales;
  stBar1.Panels[3].text := FormatDateTime('dddd, dd "de" mmmmmmmmmm "del" yyyy',now);

end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if messagedlg('ESTA SEGURO QUE DESEA SALIR DEL SISTEMA?',
  mtconfirmation, [mbyes,mbno],0) = mryes then
    begin
      Timer2.Enabled := false;
      tmr4.Enabled := false;
      application.terminate;   ///360000
    end
  else
    abort;
end;

Procedure TfrmMain.ActivaForma(Unidad: TFormClass; Var Forma :TForm);
Var
  Indice : Integer;
  creada : Boolean;
begin
  creada := False;
  for Indice := 0 to frmMain.MDIChildCount-1 do
    If (MDIChildren[Indice] = TForm(Forma)) Then
    Begin
       creada := True;
       Break;
    End;
  If Not creada Then
  begin
     Application.CreateForm(Unidad, Forma);
      Forma.BringToFront;
  end
  Else
     MDIChildren[Indice].BringToFront;
End;

procedure TfrmMain.TiposdeClientes1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('ipodeclientes1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmTipoClientes, tform(frmTipoClientes));
  frmTipoClientes.btEdit.visible   := vMod;
  frmTipoClientes.btInsert.visible := vIns;
  frmTipoClientes.btDelete.visible := vDel;
end;

procedure TfrmMain.FormasdePago1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('FormasdePago1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmFormasPago, tform(frmFormasPago));
  frmFormasPago.btEdit.visible   := vMod;
  frmFormasPago.btInsert.visible := vIns;
  frmFormasPago.btDelete.visible := vDel;
end;

procedure TfrmMain.CondicionesdePago1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('CondicionesdePago1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmCondiciones, tform(frmCondiciones));
  frmCondiciones.btEdit.visible   := vMod;
  frmCondiciones.btInsert.visible := vIns;
  frmCondiciones.btDelete.visible := vDel;
end;

procedure TfrmMain.DeClientes1Click(Sender: TObject);
begin
  dm.Query1.Close;
end;

procedure TfrmMain.Desembolsos1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('Desembolsos1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmDesembolsos, tform(frmDesembolsos));
  frmDesembolsos.vMod := vMod;
end;

procedure TfrmMain.DisplayHint(Sender: TObject);
begin
  //StBar1.Panels[1].Text := GetLongHint(Application.Hint);
end;

procedure TfrmMain.Vendedores1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('Vendedores1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmVendedor, tform(frmVendedor));
  frmVendedor.btEdit.visible   := vMod;
  frmVendedor.btInsert.visible := vIns;
  frmVendedor.btDelete.visible := vDel;
end;

procedure TfrmMain.Otroscargos1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('Otroscargos1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmCargos, tform(frmCargos));
  frmCargos.btEdit.visible   := vMod;
  frmCargos.btInsert.visible := vIns;
  frmCargos.btDelete.visible := vDel;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  //Llamando la pantalla de accesod
  if acceso = 0 then   
  begin      
    application.createform(tfrmAcceso, frmAcceso);
    frmAcceso.showmodal;
    tmr1.Enabled := True;
    Timer2.Enabled := True;
    tmr4.Enabled := True;
    if TerminaEjecucion = true then
      Application.Terminate;
end;
end;

procedure TfrmMain.Puntodeventa1Click(Sender: TObject);
begin
  Application.CreateForm(tfrmPideCajero, frmPideCajero);
  if frmPideCajero.ShowModal <> mrOk then
    frmPideCajero.release
  else
  begin
    frmPideCajero.release;
    application.CreateForm(tfrmPVenta, frmPVenta);
    frmPVenta.edCajero.Text := dm.Query1.fieldbyname('caj_nombre').asstring;
    frmPVenta.edFecha.Text  := datetostr(date);
    frmPVenta.edHora.Text  := datetostr(time);
    frmPVenta.Cajero := dm.Query1.fieldbyname('caj_codigo').asinteger;
    frmPVenta.showmodal;
    frmPVenta.release;
  end;
end;

procedure TfrmMain.ListadodeFacturas1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value := uppercase('ListadodeFacturas1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmConsFacturas, tform(frmConsFacturas));
  frmConsFacturas.Modifica := vMod;
  frmConsFacturas.Elimina  := vDel;
  //frmConsFacturas.bteliminacuenta.Visible := vDel
  //frmConsFacturas.btbuscacuenta.Visible := vMod
end;

procedure TfrmMain.RecibosdeCobro2Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value := uppercase('RecibosdeCobro2');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmConsRecibos, tform(frmConsRecibos));
  frmConsRecibos.btBuscaCta.Visible := vMod;
  frmConsRecibos.btElimina.Visible := vDel;
  frmConsRecibos.Modifica := vMod;
  frmConsRecibos.Elimina  := vDel;
end;

procedure TfrmMain.Desembolsos2Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value := uppercase('Desembolsos2');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmConsDesem, tform(frmConsDesem));
  frmConsDesem.btBuscaCta.Visible := vMod;
  frmConsDesem.btElimina.Visible := vDel;
  frmConsDesem.Modifica := vMod;
  frmConsDesem.Elimina  := vDel;
end;

procedure TfrmMain.Devoluciones1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value := uppercase('Devoluciones1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmConsDev, tform(frmConsDev));
  frmConsDev.btBuscaCta.Visible := vMod;
  frmConsDev.btElimina.Visible := vDel;
  frmConsDev.Modifica := vMod;
  frmConsDev.Elimina  := vDel;
end;

procedure TfrmMain.NotasdeCrdito2Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value := uppercase('NotasdeCrdito2');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmConsNC, tform(frmConsNC));
  frmConsNC.btBuscaCta.Visible := vMod;
  frmConsNC.btElimina.Visible := vDel;
  frmConsNC.Modifica := vMod;
  frmConsNC.Elimina  := vDel;
end;

procedure TfrmMain.NotasdeDbito2Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value := uppercase('NotasdeDbito2');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmConsDB, tform(frmConsDB));
  frmConsDB.btBuscaCta.Visible := vMod;
  frmConsDB.btElimina.Visible := vDel;
  frmConsDB.Modifica := vMod;
  frmConsDB.Elimina  := vDel;
end;

procedure TfrmMain.EntradasdeAlmacn2Click(Sender: TObject);
begin
  activaforma(tfrmConsEntrada, tform(frmConsEntrada));
end;

procedure TfrmMain.Conduces2Click(Sender: TObject);
begin
  activaforma(tfrmConsConduce, tform(frmConsConduce));
end;

procedure TfrmMain.Beneficios1Click(Sender: TObject);
begin
  activaforma(tfrmConsBeneficio, tform(frmConsBeneficio));
end;

procedure TfrmMain.ProductosCliente1Click(Sender: TObject);
begin
  activaforma(tfrmConsProdCliente, tform(frmConsProdCliente));
end;

procedure TfrmMain.PorProducto1Click(Sender: TObject);
begin
  activaforma(tfrmConsFacturasProd, tform(frmConsFacturasProd));
end;

procedure TfrmMain.Cuentasporpagar2Click(Sender: TObject);
begin
  activaforma(tfrmConsCxP, tform(frmConsCxP));
end;

procedure TfrmMain.iposdemovimientos1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('iposdemovimientos1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmTipoMovActivos, tform(frmTipoMovActivos));
  frmTipoMovActivos.btEdit.visible   := vMod;
  frmTipoMovActivos.btInsert.visible := vIns;
  frmTipoMovActivos.btDelete.visible := vDel;
end;

procedure TfrmMain.CuentasporCobrar1Click(Sender: TObject);
begin
  activaforma(tfrmConsCxC, tform(frmConsCxC));
end;

procedure TfrmMain.Facturasdeproveedores1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value := uppercase('Facturasdeproveedores1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmConsFacProvee, tform(frmConsFacProvee));
  frmConsFacProvee.btBuscaCta.Visible := vMod;
  frmConsFacProvee.btElimina.Visible := vDel;
  frmConsFacProvee.Modifica := vMod;
  frmConsFacProvee.Elimina  := vDel;
end;

procedure TfrmMain.Declientes2Click(Sender: TObject);
begin
  activaforma(tfrmConsPedidosCli, tform(frmConsPedidosCli));
end;

procedure TfrmMain.Aproveedores2Click(Sender: TObject);
begin
  activaforma(tfrmConsPedidosProv, tform(frmConsPedidosProv));
end;

procedure TfrmMain.rep_proveedoresClick(Sender: TObject);
begin
  activaforma(tfrmRepProveedores, tform(frmRepProveedores));
end;

procedure TfrmMain.MovimientosporDa1Click(Sender: TObject);
begin
  activaforma(tfrmRepMovDia, tform(frmRepMovDia));
end;

procedure TfrmMain.rep_inv_14Click(Sender: TObject);
begin
  Application.CreateForm(tfrmRepPrecios, frmRepPrecios);
end;

procedure TfrmMain.rep_inv_11Click(Sender: TObject);
begin
  activaforma(tfrmRepValorInventario, tform(frmRepValorInventario));
end;

procedure TfrmMain.rep_inv_9Click(Sender: TObject);
begin
  activaforma(tfrmRepInvFamilia, tform(frmRepInvFamilia));
end;

procedure TfrmMain.rep_inv_1Click(Sender: TObject);
begin
  activaforma(tfrmRepPuntoReorden, tform(frmRepPuntoReorden));
end;

procedure TfrmMain.rep_inv_17Click(Sender: TObject);
begin
  Application.CreateForm(tRRepProdProveedor, RRepProdProveedor);
  if MessageDlg('DESEA SELECCIONAR UNA PROVEEDOR?',mtConfirmation,
  [mbyes,mbno],0) = mryes then
  begin
    Search.Query.Clear;
    Search.Query.Add('select sup_nombre, sup_codigo');
    Search.Query.Add('from proveedores');
    Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
    Search.AliasFields.Clear;
    Search.AliasFields.Add('Nombre');
    Search.AliasFields.Add('Código');
    Search.ResultField := 'sup_codigo';
    Search.Title := 'Proveedores';
    if Search.execute then
    begin
      RRepProdProveedor.QProv.SQL.Clear;
      RRepProdProveedor.QProv.SQL.Add('select distinct s.sup_nombre,');
      RRepProdProveedor.QProv.SQL.Add('s.sup_codigo, s.emp_codigo');
      RRepProdProveedor.QProv.SQL.Add('from proveedores s');
      //RRepProdProveedor.QProv.SQL.Add('where s.emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.Value));
      RRepProdProveedor.QProv.SQL.Add('where s.emp_codigo = '+inttostr(dm.vp_cia));
      RRepProdProveedor.QProv.SQL.Add('and s.sup_codigo = '+Search.ValueField);
      RRepProdProveedor.QProv.SQL.Add('order by s.sup_codigo');
    end;
  end;
  

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select rep4 from parconfigimpinv');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Open;
  if UpperCase(dm.Query1.FieldByName('rep4').AsString) = 'CON EXISTENCIA = 0' then
    RRepProdProveedor.QProductos.SQL.Add('and pro_existencia = 0')
  else if UpperCase(dm.Query1.FieldByName('rep4').AsString) = 'CON EXISTENCIA > 0' then
    RRepProdProveedor.QProductos.SQL.Add('and pro_existencia > 0')
  else if UpperCase(dm.Query1.FieldByName('rep4').AsString) = 'CON EXISTENCIA < 0' then
    RRepProdProveedor.QProductos.SQL.Add('and pro_existencia < 0');

  RRepProdProveedor.QProductos.SQL.Add('order by p.pro_nombre');
  RRepProdProveedor.lbFecha.Caption := 'Al '+DateToStr(Date);
  RRepProdProveedor.QProv.Open;
  RRepProdProveedor.QProductos.Open;
  RRepProdProveedor.PrinterSetup;
  RRepProdProveedor.Preview;
  RRepProdProveedor.Destroy;
end;

procedure TfrmMain.rep_inv_7Click(Sender: TObject);
begin
  ActivaForma(tfrmRepFisico, tform(frmRepFisico));
end;

procedure TfrmMain.rep_inv_15Click(Sender: TObject);
begin
  Application.CreateForm(tRProdDepto, RProdDepto);
  if MessageDlg('DESEA SELECCIONAR UN DEPARTAMENTO?',mtConfirmation,
  [mbyes,mbno],0) = mryes then
  begin
    Search.Query.Clear;
    Search.Query.Add('select dep_nombre, dep_codigo');
    Search.Query.Add('from departamentos');
//  Search.Query.Add('where emp_codigo = '+IntToStr(dm.dm.QParametrosPAR_INVEMPRESA.Value));
    Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
    Search.AliasFields.Clear;
    Search.AliasFields.Add('Nombre');
    Search.AliasFields.Add('Código');
    Search.ResultField := 'dep_codigo';
    Search.Title := 'Departamentos';
    if Search.execute then
    begin
      RProdDepto.QDeptos.SQL.Clear;
      RProdDepto.QDeptos.SQL.Add('select distinct d.dep_codigo, d.dep_nombre, d.emp_codigo');
      RProdDepto.QDeptos.SQL.Add('from departamentos d, productos p');
      RProdDepto.QDeptos.SQL.Add('where d.emp_Codigo = p.emp_Codigo');
      RProdDepto.QDeptos.SQL.Add('and d.dep_codigo = p.dep_codigo');
      RProdDepto.QDeptos.SQL.Add('and d.emp_Codigo = :par_invempresa');
      RProdDepto.QDeptos.SQL.Add('and d.dep_codigo = '+Search.ValueField);
    end;
  end;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select rep5 from parconfigimpinv');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Open;
  if UpperCase(dm.Query1.FieldByName('rep5').AsString) = 'CON EXISTENCIA = 0' then
  begin
    RProdDepto.QProductos.SQL.Add('and pro_existencia = 0');
    RProdDepto.QDeptos.SQL.Add('and p.pro_existencia = 0');
  end
  else if UpperCase(dm.Query1.FieldByName('rep5').AsString) = 'CON EXISTENCIA > 0' then
  begin
    RProdDepto.QProductos.SQL.Add('and pro_existencia > 0');
    RProdDepto.QDeptos.SQL.Add('and p.pro_existencia > 0');
  end
  else if UpperCase(dm.Query1.FieldByName('rep5').AsString) = 'CON EXISTENCIA < 0' then
  begin
    RProdDepto.QProductos.SQL.Add('and pro_existencia < 0');
    RProdDepto.QDeptos.SQL.Add('and p.pro_existencia < 0');
  end;

  RProdDepto.QDeptos.SQL.Add('order by d.dep_nombre');
  RProdDepto.QProductos.SQL.Add('order by pro_nombre');
  RProdDepto.QDeptos.Open;
  RProdDepto.QProductos.Open;
  RProdDepto.lbFecha.Caption := 'Al '+DateToStr(Date);
  RProdDepto.PrinterSetup;
  RProdDepto.Preview;
  RProdDepto.Destroy;
end;

procedure TfrmMain.rep_cxc_5Click(Sender: TObject);
begin
  if MessageDlg('Desea seleccionar un rango de fecha?',mtConfirmation,[mbyes,mbno],0) = mrno then
  begin
    Application.CreateForm(tRCxC, RCxC);
    RCxC.QClientes.Open;
    RCxC.QDocs.Open;
    RCxC.lbFecha.Caption := 'Al '+DateToStr(Date);
    RCxC.PrinterSetup;
    RCxC.Preview;
    RCxC.Destroy;
  end
  else
  begin
    ActivaForma(tfrmRepCxcGeneral, tform(frmRepCxcGeneral));
  end;
end;

procedure TfrmMain.btExcelClick(Sender: TObject);
begin
try
  if GrabaXLS.Execute then
  begin
    ExportXLS.Header.Clear;
    ExportXLS.Header.Add(dm.QEmpresasEMP_NOMBRE.Value);
    ExportXLS.Header.Add(dm.QEmpresasEMP_DIRECCION.Value);
    ExportXLS.Header.Add(dm.QEmpresasEMP_LOCALIDAD.Value);
    ExportXLS.Header.Add(dm.QEmpresasEMP_TELEFONO.Value);
    ExportXLS.FileName := GrabaXLS.FileName;
    ExportXLS.Execute;
    ExportXLS.Sheets[3].Exported := False;
  end;
except
  Exit;
end;
end;

procedure TfrmMain.rep_reimpresionClick(Sender: TObject);
begin
  ActivaForma(tfrmReimpresion, Tform(frmReimpresion));
end;

procedure TfrmMain.Listadogeneral2Click(Sender: TObject);
begin
  Application.CreateForm(tRCxP, RCxP);
  RCxP.lbmoneda.Caption := '';
  if MessageDlg('Desea seleccionar la Moneda?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    Search.query.clear;
    search.AliasFields.clear;
    search.AliasFields.add('Nombre');
    search.AliasFields.add('Código');
    Search.Title := 'Moneda';
    Search.ResultField := 'mon_codigo';
    Search.query.add('select mon_nombre, mon_codigo');
    Search.query.add('from Moneda');
    Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
    if search.execute then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select mon_nombre from Moneda');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and mon_codigo = '+Search.ValueField);
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.value;
      dm.Query1.Open;
      RCxP.lbmoneda.Caption := dm.Query1.FieldByName('mon_nombre').AsString;

      RCxP.QProv.Parameters.ParamByName('mon').Value := StrToInt(Search.ValueField);

      RCxP.QDocs.Close;
      RCxP.QDocs.SQL.Clear;
      RCxP.QDocs.SQL.Add('select ALM_CODIGO, EMP_CODIGO, (FAC_ABONO/fac_tasa) as fac_abono, (FAC_DESCUENTO/fac_tasa) as fac_descuento,');
      RCxP.QDocs.SQL.Add('FAC_DIAS, (FAC_EXENTO/fac_tasa) as fac_exento, FAC_FECHA, (FAC_GRABADO/fac_tasa) as fac_grabado, FAC_NUMERO,');
      RCxP.QDocs.SQL.Add('FAC_STATUS, (FAC_TOTAL/fac_tasa) as fac_total, FAC_VENCE, SUP_CODIGO, USU_CODIGO');
      RCxP.QDocs.SQL.Add('from PROVFACTURAS');
      RCxP.QDocs.SQL.Add('where emp_codigo = :emp_codigo');
      RCxP.QDocs.SQL.Add('and sup_codigo = :sup_codigo');
      RCxP.QDocs.SQL.Add('and fac_status = '+QuotedStr('PEN'));
      RCxP.QDocs.SQL.Add('and mon_codigo = '+Search.ValueField);
      RCxP.QDocs.SQL.Add('order by fac_fecha');
    end;
  end;
  RCxP.QProv.Parameters.ParamByName('fec').Value := Date;
  RCxP.QProv.Open;
  RCxP.QDocs.Open;
  RCxP.lbFecha.Caption := 'Al '+DateToStr(Date);
  RCxP.PrinterSetup;
  RCxP.Preview;
  RCxP.Destroy;
end;

procedure TfrmMain.rep_cxc_3Click(Sender: TObject);
begin
  Application.CreateForm(tRFacVencidas, RFacVencidas);
  RFacVencidas.lbFecha.Caption := 'Al '+DateToStr(Date);
  RFacVencidas.QSucursal.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.value;
  RFacVencidas.QSucursal.Parameters.ParamByName('fecha').DataType := ftDate;
  RFacVencidas.QSucursal.Parameters.ParamByName('fecha').Value  := Date;
  RFacVencidas.QSucursal.Open;

  RFacVencidas.QFacturas.Parameters.ParamByName('fecha').DataType := ftDate;
  RFacVencidas.QFacturas.Parameters.ParamByName('fecha').Value  := Date;
  RFacVencidas.QFacturas.Open;
  RFacVencidas.PrinterSetup;
  RFacVencidas.Preview;
  RFacVencidas.Destroy;
end;

procedure TfrmMain.Factura1Click(Sender: TObject);
begin
  if dm.QParametrosPAR_FACANULA.Value = 'False' then
    MessageDlg('EL SISTEMA NO PERMITE ANULAR FACTURA',mtError,[mbok],0)
  else
    ActivaForma(tfrmAnulaFac, Tform(frmAnulaFac));
end;

procedure TfrmMain.NotadeCrdito1Click(Sender: TObject);
begin
  ActivaForma(tfrmAnulaNC, Tform(frmAnulaNC));
end;

procedure TfrmMain.entra(campo: tobject);
begin
  (campo as tdbedit).Color := clSilver;
end;

procedure TfrmMain.sale(campo: tobject);
begin
  (campo as tdbedit).Color := clWindow;
end;

procedure TfrmMain.rep_cxc_2Click(Sender: TObject);
begin
  ActivaForma(tfrmEstadoCtaCli, Tform(frmEstadoCtaCli));
end;

procedure TfrmMain.FormActivate(Sender: TObject);
begin
  stBar1.Panels[3].text := FormatDateTime('dddd, dd "de" mmmmmmmmmm "del" yyyy',now);

end;

procedure TfrmMain.rep_cxc_1Click(Sender: TObject);
begin
  ActivaForma(tfrmAntiguedadCxC, Tform(frmAntiguedadCxC));
end;

procedure TfrmMain.rep_inv_4Click(Sender: TObject);
begin
  ActivaForma(tfrmExistProducto, Tform(frmExistProducto));
end;

procedure TfrmMain.Cambiarlmitedelcliente1Click(Sender: TObject);
begin
  ActivaForma(tfrmLimite, Tform(frmLimite));
end;

procedure TfrmMain.stBar1DrawPanel(StatusBar: TStatusBar;
  Panel: TStatusPanel; const Rect: TRect);
begin
with StBAr1.Canvas do
  begin
    if Panel.Index = 0 then
    begin
      Brush.Color := clSkyBlue;
      FillRect(Rect);
      Font.Color := clBlack;
      Font.Style := Font.Style + [fsBold];
      ImageList2.Draw(StBar1.Canvas,Rect.Left,Rect.Top,3);
      TextOut(Rect.left + 20, Rect.top + 2, Panel.Text);
    end
    else if Panel.Index = 1 then
    begin
      Font.Color := clBlack;
      Font.Style := Font.Style + [fsBold];
      TextOut(Rect.left, Rect.top, Panel.Text);
    end
    else if Panel.Index = 4 then
    begin
      Brush.Color := clSkyBlue;
      FillRect(Rect);
      Font.Color := clBlack;
      Font.Style := Font.Style + [fsBold];
      ImageList2.Draw(StBar1.Canvas,Rect.Left,Rect.Top,5);
      TextOut(Rect.left + 20, Rect.top + 2, Panel.Text);
    end
    else if Panel.Index = 5 then
    begin
      FillRect(Rect);
      Font.Color := clBlack;
      Font.Style := Font.Style + [fsBold];
      TextOut(Rect.left, Rect.top, Panel.Text);
    end
    else
      TextOut(Rect.left, Rect.top, Panel.Text);
  end;
end;

procedure TfrmMain.rep_forma_pagoClick(Sender: TObject);
begin
  ActivaForma(tfrmRepFPago, Tform(frmRepFPago));
end;

procedure TfrmMain.rep_cxp_2Click(Sender: TObject);
begin
  ActivaForma(tfrmEstadoCtaProv, Tform(frmEstadoCtaProv));
end;

procedure TfrmMain.rep_cxp_3Click(Sender: TObject);
begin
  Application.CreateForm(TfrmRepFacVencCxP, frmRepFacVencCxP);

end;

procedure TfrmMain.Productosvendidos1Click(Sender: TObject);
begin
  ActivaForma(tfrmRepProdVendidos, Tform(frmRepProdVendidos));
end;

procedure TfrmMain.rep_venta_1Click(Sender: TObject);
begin
  ActivaForma(tfrmRepVentaCliente, Tform(frmRepVentaCliente));
end;

procedure TfrmMain.Etiquetas1Click(Sender: TObject);
begin         
  Screen.Cursor := crSQLWait;
  Application.CreateForm(tRRepEtiqClientes, RRepEtiqClientes);
  RRepEtiqClientes.QClientes.Open;
  Screen.Cursor := crDefault;
  RRepEtiqClientes.PrinterSetup;
  RRepEtiqClientes.Preview;
  RRepEtiqClientes.Destroy;
end;

procedure TfrmMain.rep_comisionesClick(Sender: TObject);
begin
  ActivaForma(tfrmConsComision, Tform(frmConsComision));
end;

procedure TfrmMain.Colocarexistenciaencero1Click(Sender: TObject);
begin
  if MessageDlg('DESEA SELECCIONAR UN ALMACEN?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    Search.Query.Clear;
    Search.AliasFields.Clear;
    Search.Query.Add('select alm_nombre, alm_codigo');
    Search.Query.Add('from almacen');
//  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QParametrosPAR_INVEMPRESA.Value));
    Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
    Search.AliasFields.Add('Nombre');
    Search.AliasFields.Add('Código');
    Search.ResultField := 'alm_codigo';
    Search.Title := 'Almacenes';
    if Search.execute then
    begin
      if MessageDlg('SEGURO QUE DESEA COLOCAR EL INVENTARIO EN CERO?',
      mtConfirmation,[mbyes,mbno],0) = mryes then
      begin
        Screen.Cursor := crSQLWait;
        //Auditoria de Ajuste
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.add('insert into ajuste_inventario');
        dm.Query1.SQL.add('select emp_codigo, alm_codigo, pro_codigo, exist_ant_und, 0 exist_ajuste_und, exist_ant_emp, 0 exist_ajuste_emp,');
        dm.Query1.SQL.add(':usu usu_codigo, getdate() fecha_ajuste, ''ZER'' tipo from ajuste_inventario');
        dm.Query1.SQL.add('where emp_codigo = :emp and alm_codigo = :alm');
        //dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
        dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
        dm.Query1.Parameters.ParamByName('alm').Value := StrToInt(Search.ValueField);
        dm.Query1.Parameters.ParamByName('usu').Value := dm.vp_usuario;
        dm.Query1.ExecSQL;

        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.add('execute pr_existencia_cero :emp, :alm');
        //dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
        dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
        dm.Query1.Parameters.ParamByName('alm').Value := StrToInt(Search.ValueField);
        dm.Query1.ExecSQL;
        Screen.Cursor := crDefault;
        MessageDlg('PROCESO TERMINADO',mtInformation,[mbok],0);
      end;
    end;
  end
  else
  begin
    if MessageDlg('SEGURO QUE DESEA COLOCAR EL INVENTARIO EN CERO?',
    mtConfirmation,[mbyes,mbno],0) = mryes then
    begin
      Screen.Cursor := crSQLWait;
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.add('execute pr_existencia_cero :emp, 0');
      //dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.ExecSQL;
      Screen.Cursor := crDefault;
      MessageDlg('PROCESO TERMINADO',mtInformation,[mbok],0);
    end;
  end;
end;

procedure TfrmMain.Procesartransferenciasdealmacen1Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select tra_numero, tra_concepto');
  Search.Query.Add('from transfer');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.Query.Add('and tra_status = '+#39+'EMI'+#39);
  Search.AliasFields.Add('Número');
  Search.AliasFields.Add('Concepto');
  Search.ResultField := 'tra_numero';
  Search.Title := 'Transferencia';
  if Search.execute then
  begin
    if MessageDlg('SEGURO QUE DESEA PROCESAR ESTA TRANSFERENCIA?',
    mtConfirmation,[mbyes,mbno],0) = mryes then
    begin
      Screen.Cursor := crSQLWait;
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.add('execute PR_PROCESA_TRANS :emp, :num');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('num').Value := StrToInt(Search.ValueField);
      dm.Query1.ExecSQL;
      Screen.Cursor := crDefault;
      MessageDlg('TRANSFERENCIA PROCESADA',mtInformation,[mbok],0);
    end;
  end;
end;

procedure TfrmMain.ransferenciasentrealmacen1Click(Sender: TObject);
begin
  ActivaForma(tfrmConsTransferencia, Tform(frmConsTransferencia));
end;

procedure TfrmMain.Modificacindeprecios1Click(Sender: TObject);
begin
  ActivaForma(tfrmModificaPrecio, Tform(frmModificaPrecio));
end;

procedure TfrmMain.Asignarclienteafactura1Click(Sender: TObject);
begin
  ActivaForma(tfrmAsignaCliente, Tform(frmAsignaCliente));
end;

procedure TfrmMain.CierredelDa1Click(Sender: TObject);
begin
  ActivaForma(tfrmCierreDia, Tform(frmCierreDia));
end;

procedure TfrmMain.NotadeDbito1Click(Sender: TObject);
begin
  ActivaForma(tfrmAnulaND, Tform(frmAnulaND));
end;

procedure TfrmMain.Procesarconteofsico1Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select alm_nombre, alm_codigo');
  Search.Query.Add('from almacen');
  //Search.Query.Add('where emp_Codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.Value));
  Search.Query.Add('where emp_Codigo = '+inttostr(dm.vp_cia));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.ResultField := 'alm_codigo';
  Search.Title := 'Almacenes';
  if Search.execute then
  begin
    Application.CreateForm(tfrmActBalance, frmActBalance);
    frmActBalance.Caption := 'Procesando Inventario Físico';
    frmActBalance.Label1.Caption := 'Procesando Inventario Físico';
    frmActBalance.Update;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('execute pr_procesa_fisico :emp, :alm, :usu');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('alm').Value := StrToInt(Search.ValueField);
    dm.Query1.Parameters.ParamByName('usu').Value := DM.vp_usuario;
    dm.Query1.ExecSQL;
    ShowMessage('Proceso Completado......');
    frmActBalance.Close;
  end;
end;

procedure TfrmMain.Devolucin2Click(Sender: TObject);
begin
  ActivaForma(tfrmAnulaDev, Tform(frmAnulaDev));
end;

procedure TfrmMain.rep_venta_10Click(Sender: TObject);
begin
  ActivaForma(tfrmRepVentaTipoFac, Tform(frmRepVentaTipoFac));
end;

procedure TfrmMain.RecibodeCobro1Click(Sender: TObject);
begin
  ActivaForma(tfrmAnulaREC, Tform(frmAnulaREC));
end;

procedure TfrmMain.Desembolso1Click(Sender: TObject);
begin
  ActivaForma(tfrmAnulaDesem, Tform(frmAnulaDesem));
end;

procedure TfrmMain.EntradadeAlmacn1Click(Sender: TObject);
begin
  ActivaForma(tfrmAnulaEnt, Tform(frmAnulaEnt));
end;

procedure TfrmMain.Conduce1Click(Sender: TObject);
begin
  ActivaForma(tfrmAnulaCond, Tform(frmAnulaCond));
end;

procedure TfrmMain.Facturadeproveedores1Click(Sender: TObject);
begin
  ActivaForma(tfrmAnulaProvFact, Tform(frmAnulaProvFact));
end;

procedure TfrmMain.rep_serviciosClick(Sender: TObject);
begin
  Application.CreateForm(tRRepServicios, RRepServicios);
  RRepServicios.lbFecha.Caption := 'Al '+DateToStr(Date);
  RRepServicios.QProductos.Open;
  RRepServicios.PrinterSetup;
  RRepServicios.Preview;
  RRepServicios.Destroy;
end;

procedure TfrmMain.rep_venta_5Click(Sender: TObject);
begin
  ActivaForma(tfrmRepVentaFamilia, Tform(frmRepVentaFamilia));
end;

procedure TfrmMain.rep_venta_4Click(Sender: TObject);
begin
  ActivaForma(tfrmRepVentaDepto, Tform(frmRepVentaDepto));
end;

procedure TfrmMain.rep_venta_9Click(Sender: TObject);
begin
  ActivaForma(tfrmRepVentaMarca, Tform(frmRepVentaMarca));
end;

procedure TfrmMain.rep_inv_16Click(Sender: TObject);
begin
  Application.CreateForm(tRProdMarca, RProdMarca);
  if MessageDlg('DESEA SELECCIONAR UNA MARCA?',mtConfirmation,
  [mbyes,mbno],0) = mryes then
  begin
    Search.Query.Clear;
    Search.Query.Add('select mar_nombre, mar_codigo');
    Search.Query.Add('from marcas');
    Search.Query.Add('where emp_codigo = '+intToStr(dm.vp_cia));
    //Search.Query.Add('where emp_codigo = '+intToStr(dm.QParametrosPAR_INVEMPRESA.Value));
    Search.AliasFields.Clear;
    Search.AliasFields.Add('Nombre');
    Search.AliasFields.Add('Código');
    Search.ResultField := 'mar_codigo';
    Search.Title := 'Marcas';
    if Search.execute then
    begin
      RProdMarca.QMarcas.SQL.Clear;
      RProdMarca.QMarcas.SQL.Add('SELECT DISTINCT M.MAR_CODIGO, M.MAR_NOMBRE, P.EMP_CODIGO');
      RProdMarca.QMarcas.SQL.Add('FROM MARCAS M, PRODUCTOS P');
      RProdMarca.QMarcas.SQL.Add('WHERE M.MAR_CODIGO = P.MAR_CODIGO');
      RProdMarca.QMarcas.SQL.Add('and m.emp_codigo = p.emp_codigo');
      RProdMarca.QMarcas.SQL.Add('AND P.EMP_CODIGO = :par_invempresa');
      RProdMarca.QMarcas.SQL.Add('and m.mar_codigo = '+Search.ValueField);
    end;
  end;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select rep6 from parconfigimpinv');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Open;
  if UpperCase(dm.Query1.FieldByName('rep6').AsString) = 'CON EXISTENCIA = 0' then
  begin
    RProdMarca.QProductos.SQL.Add('and pro_existencia = 0');
    RProdMarca.QMarcas.SQL.Add('and p.pro_existencia = 0');
  end
  else if UpperCase(dm.Query1.FieldByName('rep6').AsString) = 'CON EXISTENCIA > 0' then
  begin
    RProdMarca.QProductos.SQL.Add('and pro_existencia > 0');
    RProdMarca.QMarcas.SQL.Add('and p.pro_existencia > 0');
  end
  else if UpperCase(dm.Query1.FieldByName('rep6').AsString) = 'CON EXISTENCIA < 0' then
  begin
    RProdMarca.QProductos.SQL.Add('and pro_existencia < 0');
    RProdMarca.QMarcas.SQL.Add('and p.pro_existencia < 0');
  end;

  RProdMarca.QProductos.SQL.Add('order by pro_nombre');
  RProdMarca.QMarcas.SQL.Add('ORDER BY M.MAR_NOMBRE');
  RProdMarca.QMarcas.Open;
  RProdMarca.QProductos.Open;
  RProdMarca.lbFecha.Caption := 'Al '+DateToStr(Date);
  RProdMarca.PrinterSetup;
  RProdMarca.Preview;
  RProdMarca.Destroy;
end;

procedure TfrmMain.Pagoaproveedores1Click(Sender: TObject);
begin
  ActivaForma(tfrmAnulaPago, Tform(frmAnulaPago));
end;

procedure TfrmMain.rep_inv_2Click(Sender: TObject);
begin
  ActivaForma(tfrmRepProdVencidos, Tform(frmRepProdVencidos));
end;

procedure TfrmMain.CambiarStatus1Click(Sender: TObject);
begin
  ActivaForma(tfrmCambiaStatus, Tform(frmCambiaStatus));
end;

procedure TfrmMain.rep_inv_3Click(Sender: TObject);
begin
  ActivaForma(tfrmRepCodigoBarra, Tform(frmRepCodigoBarra));
end;

procedure TfrmMain.OperacionesdelMes1Click(Sender: TObject);
begin
  ActivaForma(tfrmConsOperaciones, Tform(frmConsOperaciones));
end;

procedure TfrmMain.Balancesdeunacuenta1Click(Sender: TObject);
begin
  activaforma(tfrmConsBalances, tform(frmConsBalances));
end;

procedure TfrmMain.Entradasdediario1Click(Sender: TObject);
begin
  activaforma(tfrmConsEntradas, tform(frmConsEntradas));
end;

procedure TfrmMain.Cheques1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('Cheques1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmConsCheques, tform(frmConsCheques));
  frmConsCheques.btBuscaCta.Visible := vMod;
  frmConsCheques.btElimina.Visible := vDel;
  frmConsCheques.Modifica := vMod;
  frmConsCheques.Elimina  := vDel;
end;

procedure TfrmMain.Solicitudesdecheque1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value := uppercase('Solicitudesdecheque1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmConsSolicitud, tform(frmConsSolicitud));
  frmConsSolicitud.btBuscaCta.Visible := vMod;
  frmConsSolicitud.btElimina.Visible := vDel;
  frmConsSolicitud.Modifica := vMod;
  frmConsSolicitud.Elimina  := vDel;
end;

procedure TfrmMain.Depositos1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value := uppercase('Depositos1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmConsDepositos, tform(frmConsDepositos));
  frmConsDepositos.btBuscaCta.Visible := vMod;
  frmConsDepositos.btElimina.Visible := vDel;
  frmConsDepositos.Modifica := vMod;
  frmConsDepositos.Elimina  := vDel;
end;

procedure TfrmMain.Cargosbancarios1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value := uppercase('Cargosbancarios1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmConsCargosBanco, tform(frmConsCargosBanco));

  activaforma(Tfrmprueba, tform(frmprueba));

  frmConsCargosBanco.btBuscaCta.Visible := vMod;
  frmConsCargosBanco.btElimina.Visible := vDel;
  frmConsCargosBanco.Modifica := vMod;
  frmConsCargosBanco.Elimina  := vDel;
end;

procedure TfrmMain.Cierredemes1Click(Sender: TObject);
begin
  activaforma(tfrmCierreMes, tform(frmCierreMes));
end;

procedure TfrmMain.Cierredeao1Click(Sender: TObject);
begin
  activaforma(tfrmCierreAno, tform(frmCierreAno));
end;

procedure TfrmMain.Pasardocumentosacontabilidad1Click(Sender: TObject);
begin
  activaforma(tfrmPasarDocumentos, tform(frmPasarDocumentos));
end;

procedure TfrmMain.Copiarcatlogoentrecompaas1Click(Sender: TObject);
begin
  activaforma(tfrmCopiaCatalogo, tform(frmCopiaCatalogo));
end;

procedure TfrmMain.btexitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMain.btCajaClick(Sender: TObject);
var
  ar : textfile;
  puerto : string;
begin
  assignfile(ar,'.\puertocaja.txt');
  reset(ar);
  readln(ar,puerto);
  closefile(ar);

  assignfile(ar,'.\imp.bat');
  rewrite(ar);
  writeln(ar,'type .\t.txt > '+puerto);
  closefile(ar);

  assignfile(ar,'.\t.txt');
  rewrite(ar);
  write(ar,chr(27)+chr(112)+chr(0)+chr(25)+chr(250));

  closefile(ar);

  winexec('.\imp.bat',0);
end;

procedure TfrmMain.btcalcClick(Sender: TObject);
begin
  winexec('calc.exe',1);
end;

procedure TfrmMain.bttileClick(Sender: TObject);
begin
  Cascade;
end;

procedure TfrmMain.ConfigurarBcedeComprobacincomparativo1Click(
  Sender: TObject);
begin
  activaforma(tfrmCFGBceComparativo, tform(frmCFGBceComparativo));
end;

procedure TfrmMain.Definirescalas1Click(Sender: TObject);
begin
  activaforma(tfrmEscala, tform(frmEscala));
end;

procedure TfrmMain.Accesoporempresas1Click(Sender: TObject);
begin
  activaforma(tfrmAccesoEmp, tform(frmAccesoEmp));
end;

procedure TfrmMain.btChartClick(Sender: TObject);
begin
  activaforma(tfrmEstadisticas, tform(frmEstadisticas));
end;

procedure TfrmMain.Timer1Timer(Sender: TObject);
const
  {$J+}
  animatedTitle : string = ' DASHA...DASHA...DASHA...DASHA ';
  {$J-}
var
  vHora : string;
  cnt: Integer;
begin
  Application.Title := animatedTitle;
  for cnt := 1 to (Length(animatedTitle) - 1) do
    animatedTitle[cnt] := Application.Title[cnt + 1];
  animatedTitle[Length(animatedTitle)] := Application.Title[1];

  stBar1.Panels[0].Text := 'USUARIO : '+dm.NomUsu;
  stBar1.Panels[4].Text := 'EMPRESA : '+dm.NombreEmp;
  stBar1.Panels[3].text := FormatDateTime('dddd, dd "de" mmmmmmmmmm "del" yyyy',now);
  stBar1.Panels[6].Text := 'DB : '+dm.ADOSigma.DefaultDatabase;

  Valores_Iniciales;
  {vHora := TimeToStr(Time);
  if (copy(vHora,1,2) = '12') or (trim(copy(vHora,1,1)) = '2')
  or (trim(copy(vHora,1,1)) = '3') or (trim(copy(vHora,1,1))= '4') then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('exec sp_rename '+QuotedStr('Parametros')+','+QuotedStr('SGM'));
    dm.Query1.ExecSQL;

    Timer1.Enabled := False;
    showmessage('COMUNIQUESE CON EL PROVEEDOR DE SERVICIO');
    application.Terminate;
  end;}
end;

procedure TfrmMain.PordeSerie1Click(Sender: TObject);
begin
  activaforma(tfrmConsSerie, tform(frmConsSerie));
end;

procedure TfrmMain.Devolucionesencompra1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value := uppercase('Devolucionesencompra1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmConsDevCompra, tform(frmConsDevCompra));
  frmConsDevCompra.btBuscaCta.Visible := vMod;
  frmConsDevCompra.btElimina.Visible := vDel;
  frmConsDevCompra.Modifica := vMod;
  frmConsDevCompra.Elimina  := vDel;
end;

procedure TfrmMain.rep_inv_21Click(Sender: TObject);
begin
  activaforma(tfrmMovProductoFactura, tform(frmMovProductoFactura));
end;

procedure TfrmMain.ActividaddelasCajas1Click(Sender: TObject);
begin
  activaforma(tfrmActividadCaja, tform(frmActividadCaja));
end;

procedure TfrmMain.ipodemoneda1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('ipodemoneda1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmMoneda, tform(frmMoneda));
  frmMoneda.btEdit.visible   := vMod;
  frmMoneda.btInsert.visible := vIns;
  frmMoneda.btDelete.visible := vDel;
end;

procedure TfrmMain.MovimientosporCentrodeCosto1Click(Sender: TObject);
begin
  activaforma(tfrmConsCentroCosto, tform(frmConsCentroCosto));
end;

procedure TfrmMain.Retenciones1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('Retenciones1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmRetenciones, tform(frmRetenciones));
  frmRetenciones.btEdit.visible   := vMod;
  frmRetenciones.btInsert.visible := vIns;
  frmRetenciones.btDelete.visible := vDel;
end;

procedure TfrmMain.Reporteadhoc1Click(Sender: TObject);
begin
  activaforma(tfrmadhoc, tform(frmadhoc));
end;

procedure TfrmMain.Categorias1Click(Sender: TObject);
begin
  activaforma(tfrmCategorias, tform(frmCategorias));
end;

procedure TfrmMain.Marcas2Click(Sender: TObject);
begin
  activaforma(tfrmMarcaActivos, tform(frmMarcaActivos));
end;

procedure TfrmMain.Familiadeactivos1Click(Sender: TObject);
begin
  activaforma(tfrmFamiliaActivos, tform(frmFamiliaActivos));
end;

procedure TfrmMain.Activosfijos1Click(Sender: TObject);
begin
  activaforma(tfrmActivos, tform(frmActivos));
end;

procedure TfrmMain.iposdemovimiento1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('iposdemovimiento1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmTipoMov, tform(frmTipoMov));
  frmTipoMov.btEdit.visible   := vMod;
  frmTipoMov.btInsert.visible := vIns;
  frmTipoMov.btDelete.visible := vDel;
end;

procedure TfrmMain.rep_activosClick(Sender: TObject);
begin
  activaforma(tfrmRepActivos, tform(frmRepActivos));
end;

procedure TfrmMain.Movimientosdeactivos1Click(Sender: TObject);
begin
  activaforma(tfrmMovActivos, tform(frmMovActivos));
end;

procedure TfrmMain.btEmailClick(Sender: TObject);
var
   MailMsg : TIdMessage;
  // Archivo : TIdAttachment;
begin
   if IdSMTP1.Connected then IdSMTP1.Disconnect;
   MailMsg := TidMessage.Create(IdSMTP1);
   MailMsg.Subject      := 'Prueba de Mail';
   MailMsg.From.Address := dm.QParametrospar_mailcorreo.Value;
   MailMsg.From.Name    := dm.QParametrospar_mailcorreo.Value;
   MailMsg.ReplyTo.EMailAddresses :=  dm.QParametrospar_mailcorreo.Value;
   MailMsg.Recipients.Add;
   MailMsg.Recipients.Items[0].Address := 'adm@syservicios.com.do';
   MailMsg.Body.Add('Esto es una prueba de como enviar mail');
 //  TIdAttachmentFile.Create(MailMsg.MessageParts, ArchivoMail);

   IdSMTP1.Host := dm.QParametrospar_mailservidor.Value;
   IdSMTP1.Port := dm.QParametrospar_mailpuerto.AsInteger;
   IdSMTP1.Username := dm.QParametrospar_mailusuario.Value;
   IdSMTP1.Password := dm.QParametrospar_mailclave.Value;
   IdSMTP1.Connect();
   IdSMTP1.Send(MailMsg);
   IdSMTP1.Disconnect;
   MailMsg.Free;
end;

procedure TfrmMain.rep_inv_23Click(
  Sender: TObject);
begin
  activaforma(tfrmRepSolicitados, tform(frmRepSolicitados));
end;

procedure TfrmMain.rep_inv_20Click(Sender: TObject);
begin
  activaforma(tfrmOrdenPedido, tform(frmOrdenPedido));
end;

procedure TfrmMain.Devolucionessinfactura1Click(Sender: TObject);
begin
  activaforma(tfrmDevolucionCxpProductos, tform(frmDevolucionCxpProductos));
end;

procedure TfrmMain.Provincias1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('Provincias1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmProvincias, tform(frmProvincias));
  frmProvincias.btEdit.visible   := vMod;
  frmProvincias.btInsert.visible := vIns;
  frmProvincias.btDelete.visible := vDel;
end;

procedure TfrmMain.Bonos1Click(Sender: TObject);
begin
  activaforma(tfrmConsBonos, tform(frmConsBonos));
end;

procedure TfrmMain.Mesas1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('Mesas1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmMesas, tform(frmMesas));
  frmMesas.btEdit.visible   := vMod;
  frmMesas.btInsert.visible := vIns;
  frmMesas.btDelete.visible := vDel;
end;

procedure TfrmMain.icketsdecaja1Click(Sender: TObject);
begin
  activaforma(tfrmConsTicket, tform(frmConsTicket));
end;

procedure TfrmMain.Porprovincia1Click(Sender: TObject);
begin
  activaforma(tfrmConsVentaProvincia, tform(frmConsVentaProvincia));
end;

procedure TfrmMain.Categorias2Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('Categorias2');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmCategoriaEmp, tform(frmCategoriaEmp));
  frmCategoriaEmp.btEdit.visible   := vMod;
  frmCategoriaEmp.btInsert.visible := vIns;
  frmCategoriaEmp.btDelete.visible := vDel;
end;

procedure TfrmMain.Colectordeinventario1Click(Sender: TObject);
begin
  activaforma(tfrmProcesoColector, tform(frmProcesoColector));
end;

procedure TfrmMain.Tecnicos1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('Tecnicos1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmTecnicos, tform(frmTecnicos));
  frmTecnicos.btEdit.visible   := vMod;
  frmTecnicos.btInsert.visible := vIns;
  frmTecnicos.btDelete.visible := vDel;
end;

procedure TfrmMain.Tipodeequipos1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('Tipodeequipos1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmTipoEquipos, tform(frmTipoEquipos));
  frmTipoEquipos.btEdit.visible   := vMod;
  frmTipoEquipos.btInsert.visible := vIns;
  frmTipoEquipos.btDelete.visible := vDel;
end;

procedure TfrmMain.rep_cxc_4Click(Sender: TObject);
begin
  activaforma(tfrmRepHistorialCliente, tform(frmRepHistorialCliente));
end;

procedure TfrmMain.rep_cxp_4Click(Sender: TObject);
begin
  activaforma(tfrmRepHistorialSuplidor, tform(frmRepHistorialSuplidor));
end;

procedure TfrmMain.Entradadeequios1Click(Sender: TObject);
begin
  activaforma(tfrmOrdenServicio, tform(frmOrdenServicio));
end;

procedure TfrmMain.Salidadeequipos1Click(Sender: TObject);
begin
  activaforma(tfrmSalidaEquipos, tform(frmSalidaEquipos));
end;

procedure TfrmMain.Supervisoresdecaja1Click(Sender: TObject);
begin
  activaforma(tfrmSupervisoresCaja, tform(frmSupervisoresCaja));
end;

procedure TfrmMain.Clavesupervisordecaja1Click(Sender: TObject);
begin
  activaforma(tfrmClaveSupervisor, tform(frmClaveSupervisor));
end;

procedure TfrmMain.Notasdecrditoproveedores1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value := uppercase('Notasdecrditoproveedores1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmConsNCProveedores, tform(frmConsNCProveedores));
  frmConsNCProveedores.btBuscaCta.Visible := vMod;
  frmConsNCProveedores.btElimina.Visible := vDel;
  frmConsNCProveedores.Modifica := vMod;
  frmConsNCProveedores.Elimina  := vDel;
end;

procedure TfrmMain.ipodeingresos1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('ipodeingresos1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmTipoIngresos, tform(frmTipoIngresos));
  frmTipoIngresos.btEdit.visible   := vMod;
  frmTipoIngresos.btInsert.visible := vIns;
  frmTipoIngresos.btDelete.visible := vDel;
end;

procedure TfrmMain.ipodehorastrabajadas1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('ipodehorastrabajadas1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmTipoHora, tform(frmTipoHora));
  frmTipoHora.btEdit.visible   := vMod;
  frmTipoHora.btInsert.visible := vIns;
  frmTipoHora.btDelete.visible := vDel;
end;

procedure TfrmMain.ipodeevaluacin1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('ipodeevaluacin1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmTipoEvaluacion, tform(frmTipoEvaluacion));
  frmTipoEvaluacion.btEdit.visible   := vMod;
  frmTipoEvaluacion.btInsert.visible := vIns;
  frmTipoEvaluacion.btDelete.visible := vDel;
end;

procedure TfrmMain.Nivelsalarial1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('Nivelsalarial1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmNivelSalarial, tform(frmNivelSalarial));
  frmNivelSalarial.btEdit.visible   := vMod;
  frmNivelSalarial.btInsert.visible := vIns;
  frmNivelSalarial.btDelete.visible := vDel;
end;

procedure TfrmMain.Motivos1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('Motivos1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmMotivos, tform(frmMotivos));
  frmMotivos.btEdit.visible   := vMod;
  frmMotivos.btInsert.visible := vIns;
  frmMotivos.btDelete.visible := vDel;
end;

procedure TfrmMain.Idiomas1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('Idiomas1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmIdiomas, tform(frmIdiomas));
  frmIdiomas.btEdit.visible   := vMod;
  frmIdiomas.btInsert.visible := vIns;
  frmIdiomas.btDelete.visible := vDel;
end;

procedure TfrmMain.Estadoscivil1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('Estadoscivil1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmEstadoCivil, tform(frmEstadoCivil));
  frmEstadoCivil.btEdit.visible   := vMod;
  frmEstadoCivil.btInsert.visible := vIns;
  frmEstadoCivil.btDelete.visible := vDel;
end;

procedure TfrmMain.Paises1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('Paises1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmPaises, tform(frmPaises));
  frmPaises.btEdit.visible   := vMod;
  frmPaises.btInsert.visible := vIns;
  frmPaises.btDelete.visible := vDel;
end;

procedure TfrmMain.Niveles1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('Niveles1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmNiveles, tform(frmNiveles));
  frmNiveles.btEdit.visible   := vMod;
  frmNiveles.btInsert.visible := vIns;
  frmNiveles.btDelete.visible := vDel;
end;

procedure TfrmMain.Posiciones1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('Posiciones1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmPosiciones, tform(frmPosiciones));
  frmPosiciones.btEdit.visible   := vMod;
  frmPosiciones.btInsert.visible := vIns;
  frmPosiciones.btDelete.visible := vDel;
end;

procedure TfrmMain.Diasferiados1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('Diasferiados1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmDiasFeriados, tform(frmDiasFeriados));
  frmDiasFeriados.btEdit.visible   := vMod;
  frmDiasFeriados.btInsert.visible := vIns;
  frmDiasFeriados.btDelete.visible := vDel;
end;

procedure TfrmMain.Grupodedescuentos1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('Grupodedescuentos1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmGrupoDescuentos, tform(frmGrupoDescuentos));
  frmGrupoDescuentos.btEdit.visible   := vMod;
  frmGrupoDescuentos.btInsert.visible := vIns;
  frmGrupoDescuentos.btDelete.visible := vDel;
end;

procedure TfrmMain.Gruposdetrabajo1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('Gruposdetrabajo1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmGrupoTrabajo, tform(frmGrupoTrabajo));
  frmGrupoTrabajo.btEdit.visible   := vMod;
  frmGrupoTrabajo.btInsert.visible := vIns;
  frmGrupoTrabajo.btDelete.visible := vDel;
end;

procedure TfrmMain.iposdeempleado1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('iposdeempleado1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmTipoEmpleados, tform(frmTipoEmpleados));
  frmTipoEmpleados.btEdit.visible   := vMod;
  frmTipoEmpleados.btInsert.visible := vIns;
  frmTipoEmpleados.btDelete.visible := vDel;
end;

procedure TfrmMain.Categoriasdelicenciadeconducir1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('Categoriasdelicenciadeconducir1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmCategoriasLic, tform(frmCategoriasLic));
  frmCategoriasLic.btEdit.visible   := vMod;
  frmCategoriasLic.btInsert.visible := vIns;
  frmCategoriasLic.btDelete.visible := vDel;
end;

procedure TfrmMain.iposdeseguro1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('iposdeseguro1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmTipoSeguros, tform(frmTipoSeguros));
  frmTipoSeguros.btEdit.visible   := vMod;
  frmTipoSeguros.btInsert.visible := vIns;
  frmTipoSeguros.btDelete.visible := vDel;
end;

procedure TfrmMain.Institucionesacademicas1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('Institucionesacademicas1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmInstitucion, tform(frmInstitucion));
  frmInstitucion.btEdit.visible   := vMod;
  frmInstitucion.btInsert.visible := vIns;
  frmInstitucion.btDelete.visible := vDel;
end;

procedure TfrmMain.Clasificaciondeniveles1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('Clasificaciondeniveles1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmClasificacionNiveles, tform(frmClasificacionNiveles));
  frmClasificacionNiveles.btEdit.visible   := vMod;
  frmClasificacionNiveles.btInsert.visible := vIns;
  frmClasificacionNiveles.btDelete.visible := vDel;
end;

procedure TfrmMain.Habilidades1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('Habilidades1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmHabilidades, tform(frmHabilidades));
  frmHabilidades.btEdit.visible   := vMod;
  frmHabilidades.btInsert.visible := vIns;
  frmHabilidades.btDelete.visible := vDel;
end;

procedure TfrmMain.Posicionesporclasificacion1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('Posicionesporclasificacion1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmPosicionClasificacion, tform(frmPosicionClasificacion));
  frmPosicionClasificacion.btEdit.visible   := vMod;
  frmPosicionClasificacion.btInsert.visible := vIns;
  frmPosicionClasificacion.btDelete.visible := vDel;
end;

procedure TfrmMain.iposdeplanes1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('iposdeplanes1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmPlanesSeguro, tform(frmPlanesSeguro));
  frmPlanesSeguro.btEdit.visible   := vMod;
  frmPlanesSeguro.btInsert.visible := vIns;
  frmPlanesSeguro.btDelete.visible := vDel;
end;

procedure TfrmMain.Solicitud1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('Solicitud1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmSolicitudEmpleo, tform(frmSolicitudEmpleo));
  frmSolicitudEmpleo.btEdit.visible   := vMod;
  frmSolicitudEmpleo.btInsert.visible := vIns;
  frmSolicitudEmpleo.btDelete.visible := vDel;
end;

procedure TfrmMain.Productos2Click(Sender: TObject);
begin
  activaforma(tfrmConsProductos, tform(frmConsProductos));
end;

procedure TfrmMain.GenerarNCFunicoingreso1Click(Sender: TObject);
begin
  activaforma(tfrmNCFUnico, tform(frmNCFUnico));
end;

procedure TfrmMain.GenerarNCFgastosmenores1Click(Sender: TObject);
begin
  activaforma(tfrmNCFGastosMenores, tform(frmNCFGastosMenores));
end;

procedure TfrmMain.FacturasenHOLD1Click(Sender: TObject);
begin
  //activaforma(tfrmFacturasHOLD, tform(frmFacturasHOLD));
end;

procedure TfrmMain.Procesardispositivodealmacenamiento1Click(
  Sender: TObject);
var
  dirlocal, dirsave : string;
begin
  SaveDialog1.FileName := 'productos.txt';
  if SaveDialog1.Execute then
  begin
    dirsave := copy(SaveDialog1.FileName, 1, pos('productos.txt',SaveDialog1.FileName)-1);

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('execute PR_ARCHIVO_TRANSFERENCIA :ruta');
    dm.Query1.Parameters.ParamByName('ruta').Value := dirsave;
    dm.Query1.ExecSQL;

    showmessage('ARCHIVOS PROCESADOS');

    DeleteFile(dirsave+'productos.txt');
    DeleteFile(dirsave+'deptos.txt');
    DeleteFile(dirsave+'familias.txt');
    DeleteFile(dirsave+'marcas.txt');
    DeleteFile(dirsave+'proveedores.txt');
    DeleteFile(dirsave+'transferencia.txt');
  end;
end;

procedure TfrmMain.rep_venta_11Click(Sender: TObject);
begin
  activaforma(tfrmRepVentaTipoCliente, tform(frmRepVentaTipoCliente));
end;

procedure TfrmMain.rep_clientes_2Click(Sender: TObject);
begin
  activaforma(tfrmRepCumpleanos, tform(frmRepCumpleanos));
end;

procedure TfrmMain.rep_clientes_1Click(Sender: TObject);
begin
  activaforma(tfrmRepClientes, tform(frmRepClientes));
end;

procedure TfrmMain.Entrevistas1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('Entrevistas1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmEntrevistas, tform(frmEntrevistas));
  frmEntrevistas.btEdit.visible   := vMod;
  frmEntrevistas.btInsert.visible := vIns;
  frmEntrevistas.btDelete.visible := vDel;
end;

procedure TfrmMain.Requerimientopersonal1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('Requerimientopersonal1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmRequerimientoPersonal, tform(frmRequerimientoPersonal));
  frmRequerimientoPersonal.btEdit.visible   := vMod;
  frmRequerimientoPersonal.btInsert.visible := vIns;
  frmRequerimientoPersonal.btDelete.visible := vDel;
end;

procedure TfrmMain.Elegibles1Click(Sender: TObject);
begin
  activaforma(tfrmElegibles, tform(frmElegibles));
end;

procedure TfrmMain.Evaluacion1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('Evaluacion1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmEvaluacionSolicitud, tform(frmEvaluacionSolicitud));
  frmEvaluacionSolicitud.btEdit.visible   := vMod;
  frmEvaluacionSolicitud.btInsert.visible := vIns;
  frmEvaluacionSolicitud.btDelete.visible := vDel;
end;

procedure TfrmMain.CrearModificarEmpleado1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('CrearModificarEmpleado1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmEmpleados, tform(frmEmpleados));
  frmEmpleados.btEdit.visible   := vMod;
  frmEmpleados.btInsert.visible := vIns;
  frmEmpleados.btDelete.visible := vDel;
end;

procedure TfrmMain.iposdenomina1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('iposdenomina1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmTipoNomina, tform(frmTipoNomina));
  frmTipoNomina.btEdit.visible   := vMod;
  frmTipoNomina.btInsert.visible := vIns;
  frmTipoNomina.btDelete.visible := vDel;
end;

procedure TfrmMain.MensajesIndividuales1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('MensajesIndividuales1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmEmpleadosMensajes, tform(frmEmpleadosMensajes));
  frmEmpleadosMensajes.btEdit.visible   := vMod;
  frmEmpleadosMensajes.btInsert.visible := vIns;
  frmEmpleadosMensajes.btDelete.visible := vDel;
end;

procedure TfrmMain.Vacacionesempleados1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('Vacacionesempleados1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmVacaciones, tform(frmVacaciones));
  frmVacaciones.btEdit.visible   := vMod;
  frmVacaciones.btInsert.visible := vIns;
  frmVacaciones.btDelete.visible := vDel;
end;

procedure TfrmMain.Evaluaciones1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('Evaluaciones1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmEmpleadosEvaluacion, tform(frmEmpleadosEvaluacion));
  frmEmpleadosEvaluacion.btEdit.visible   := vMod;
  frmEmpleadosEvaluacion.btInsert.visible := vIns;
  frmEmpleadosEvaluacion.btDelete.visible := vDel;
end;

procedure TfrmMain.Inclusionyexclusion1Click(Sender: TObject);
begin
  activaforma(tfrmInclusionSeguro, tform(frmInclusionSeguro));
end;

procedure TfrmMain.iposdeaccion1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('iposdeaccion1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmTipoAccionPersonal, tform(frmTipoAccionPersonal));
  frmTipoAccionPersonal.btEdit.visible   := vMod;
  frmTipoAccionPersonal.btInsert.visible := vIns;
  frmTipoAccionPersonal.btDelete.visible := vDel;
end;

procedure TfrmMain.Accionesdepersonal1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('Accionesdepersonal1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmAccionPersonal, tform(frmAccionPersonal));
  frmAccionPersonal.btEdit.visible   := vMod;
  frmAccionPersonal.btInsert.visible := vIns;
  frmAccionPersonal.btDelete.visible := vDel;
end;

procedure TfrmMain.Ingresos1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('Ingresos1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmIngresos, tform(frmIngresos));
  frmIngresos.btEdit.visible   := vMod;
  frmIngresos.btInsert.visible := vIns;
  frmIngresos.btDelete.visible := vDel;
end;

procedure TfrmMain.Horastrabajadas1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('Horastrabajadas1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmHorasTrabajadas, tform(frmHorasTrabajadas));
  frmHorasTrabajadas.btEdit.visible   := vMod;
  frmHorasTrabajadas.btInsert.visible := vIns;
  frmHorasTrabajadas.btDelete.visible := vDel;
end;

procedure TfrmMain.Descuentos1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('Descuentos1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmDescuentos, tform(frmDescuentos));
  frmDescuentos.btEdit.visible   := vMod;
  frmDescuentos.btInsert.visible := vIns;
  frmDescuentos.btDelete.visible := vDel;
end;

procedure TfrmMain.ipodedescuentos1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('ipodedescuentos1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmTipoDescuentos, tform(frmTipoDescuentos));
  frmTipoDescuentos.btEdit.visible   := vMod;
  frmTipoDescuentos.btInsert.visible := vIns;
  frmTipoDescuentos.btDelete.visible := vDel;
end;

procedure TfrmMain.abladeISR1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('abladeISR1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmTablaISR, tform(frmTablaISR));
  frmTablaISR.btEdit.visible   := vMod;
  frmTablaISR.btInsert.visible := vIns;
  frmTablaISR.btDelete.visible := vDel;
end;

procedure TfrmMain.ablaSemanaxmes1Click(Sender: TObject);
begin
  activaforma(tfrmSemanasSS, tform(frmSemanasSS));
end;

procedure TfrmMain.ablasegurosocial1Click(Sender: TObject);
begin
  activaforma(tfrmTablaSS, tform(frmTablaSS));
end;

procedure TfrmMain.ablacalculoprestaciones1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('ablacalculoprestaciones1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmCalculoPrestaciones, tform(frmCalculoPrestaciones));
  frmCalculoPrestaciones.btEdit.visible   := vMod;
  frmCalculoPrestaciones.btInsert.visible := vIns;
  frmCalculoPrestaciones.btDelete.visible := vDel;
end;

procedure TfrmMain.AFP1Click(Sender: TObject);
begin
  activaforma(tfrmAFP, tform(frmAFP));
end;

procedure TfrmMain.ReporteDGT31Click(Sender: TObject);
begin
  Application.CreateForm(tRepDGT3, RepDGT3);
  RepDGT3.PrinterSetup;
  RepDGT3.Preview;
  RepDGT3.Destroy;
end;

procedure TfrmMain.Pormarca3Click(Sender: TObject);
begin
  activaforma(tfrmConsVentasMarca, tform(frmConsVentasMarca));
end;

procedure TfrmMain.rep_inv_12Click(Sender: TObject);
begin
  activaforma(tfrmReprentabilidad, tform(frmReprentabilidad));
end;

procedure TfrmMain.Gastosaduanales1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('Gastosaduanales1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmGastosAduanales, tform(frmGastosAduanales));
  frmGastosAduanales.btEdit.visible   := vMod;
  frmGastosAduanales.btInsert.visible := vIns;
  frmGastosAduanales.btDelete.visible := vDel;
end;

procedure TfrmMain.rep_venta_12Click(Sender: TObject);
begin
  activaforma(tfrmRepProdRotacion, tform(frmRepProdRotacion));
end;

procedure TfrmMain.GenerarReversarNomina1Click(Sender: TObject);
begin
  activaforma(tfrmNomina, tform(frmNomina));

end;

procedure TfrmMain.Cuadregeneral1Click(Sender: TObject);
begin
  activaforma(tfrmCuadre, tform(frmCuadre));
end;

procedure TfrmMain.Dewsgloceefectivo1Click(Sender: TObject);
begin
  activaforma(tfrmCuadreDesgloce, tform(frmCuadreDesgloce));
end;

procedure TfrmMain.rep_venta_3Click(Sender: TObject);
begin
  activaforma(tfrmRepOfertasOtorgadas, tform(frmRepOfertasOtorgadas));
end;

procedure TfrmMain.SFS1Click(Sender: TObject);
begin
  activaforma(tfrmSFS, tform(frmSFS));
end;

procedure TfrmMain.Reportegeneral1Click(Sender: TObject);
begin
  activaforma(tfrmRepEmpleados, tform(frmRepEmpleados));
end;

procedure TfrmMain.Formatoenviocomprasdebienesyservicios1Click(
  Sender: TObject);
begin
  activaforma(tfrmGeneraComprasDGII, tform(frmGeneraComprasDGII));
end;

procedure TfrmMain.Cartadecertificacion1Click(Sender: TObject);
begin
  activaforma(tfrmCartaCertificacionIngreso, tform(frmCartaCertificacionIngreso));
end;

procedure TfrmMain.Autorizaciondecredito1Click(Sender: TObject);
begin
  activaforma(tfrmAutorizacionCredito, tform(frmAutorizacionCredito));
end;

procedure TfrmMain.Devolucionencompra1Click(Sender: TObject);
begin
  activaforma(tfrmAnulaDevCompra, tform(frmAnulaDevCompra));
end;

procedure TfrmMain.Notadecrditoaproveedor1Click(Sender: TObject);
begin
  activaforma(tfrmAnulaNCCompra, tform(frmAnulaNCCompra));
end;

procedure TfrmMain.Operaciones1Click(Sender: TObject);
begin
  activaforma(tfrmOperaciones, tform(frmOperaciones));
end;

procedure TfrmMain.Nominas1Click(Sender: TObject);
begin
  activaforma(tfrmConsNomina, tform(frmConsNomina));
end;

procedure TfrmMain.Preventas1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('Preventas1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmPreventas, tform(frmPreventas));
  frmPreventas.btEdit.visible   := vMod;
  frmPreventas.btInsert.visible := vIns;
  frmPreventas.btDelete.visible := vDel;
end;

procedure TfrmMain.rep_inv_22Click(Sender: TObject);
begin
  activaforma(tfrmProductosDespachados, tform(frmProductosDespachados));
end;

procedure TfrmMain.Courriers1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('Courriers1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmCourriers, tform(frmCourriers));
  frmCourriers.btEdit.visible   := vMod;
  frmCourriers.btInsert.visible := vIns;
  frmCourriers.btDelete.visible := vDel;
end;

procedure TfrmMain.Ordendecompra1Click(Sender: TObject);
begin
  activaforma(tfrmAnulaOrden, tform(frmAnulaOrden));
end;

procedure TfrmMain.Cotizaciones2Click(Sender: TObject);
begin
  activaforma(tfrmConsCotizaciones, tform(frmConsCotizaciones));
end;

procedure TfrmMain.CajasIP1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('CajasIP1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmCajasIP, tform(frmCajasIP));
  frmCajasIP.btEdit.visible   := vMod;
  frmCajasIP.btInsert.visible := vIns;
  frmCajasIP.btDelete.visible := vDel;
end;

procedure TfrmMain.CuadrecajasIP1Click(Sender: TObject);
begin
  activaforma(tfrmCuadreCajasIP, tform(frmCuadreCajasIP));
end;

procedure TfrmMain.Resumenejecutivo1Click(Sender: TObject);
begin
  activaforma(tfrmConsResumenEjecutivo, tform(frmConsResumenEjecutivo));
end;

procedure TfrmMain.Configurarestadodesituacin1Click(Sender: TObject);
begin
  activaforma(tfrmConfigSituacion, tform(frmConfigSituacion)); 
end;

procedure TfrmMain.btwebClick(Sender: TObject);
begin
  if FileExists('web.ini') then
  begin
    ActivaForma(tfrmWeb, tform(frmweb));
  end;
end;

procedure TfrmMain.GenerarFormatodeenvio6071Click(Sender: TObject);
begin
  ActivaForma(tfrmGenera607, tform(frmGenera607));
end;

procedure TfrmMain.Motivosdedevolucion1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('Motivosdedevolucion1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  ActivaForma(tfrmMotivoDevolucion, tform(frmMotivoDevolucion));
  frmMotivoDevolucion.btEdit.visible   := vMod;
  frmMotivoDevolucion.btInsert.visible := vIns;
  frmMotivoDevolucion.btDelete.visible := vDel;
end;

procedure TfrmMain.rep_analisis_1Click(Sender: TObject);
begin
  ActivaForma(tfrmAnalisisCompra_Venta, tform(frmAnalisisCompra_Venta));
end;

procedure TfrmMain.Liquidaciones1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value := uppercase('Liquidaciones1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  ActivaForma(tfrmConsLiquidaciones, tform(frmConsLiquidaciones));
  frmConsLiquidaciones.btBuscaCta.Visible := vMod;
  frmConsLiquidaciones.btElimina.Visible := vDel;
  frmConsLiquidaciones.Modifica := vMod;
  frmConsLiquidaciones.Elimina  := vDel;
end;

procedure TfrmMain.rep_inv_10Click(Sender: TObject);
begin
  ActivaForma(tfrmRepInvFamiliaDepto, tform(frmRepInvFamiliaDepto));
end;

procedure TfrmMain.rep_venta_6Click(Sender: TObject);
begin
  ActivaForma(tfrmRepVentaFamiliaDepto, tform(frmRepVentaFamiliaDepto));
end;

procedure TfrmMain.rep_cxc_6Click(Sender: TObject);
begin
  ActivaForma(tfrmRepCxCVendedorProvincia, tform(frmRepCxCVendedorProvincia));
end;

procedure TfrmMain.Liquidacin1Click(Sender: TObject);
begin
  ActivaForma(tfrmAnulaLiq, tform(frmAnulaLiq));
end;

procedure TfrmMain.rep_analisis_2Click(Sender: TObject);
begin
  ActivaForma(tfrmMargenBruto, tform(frmMargenBruto));
end;

procedure TfrmMain.rep_inv_19Click(Sender: TObject);
begin
  ActivaForma(tfrmRepProdOferta, Tform(frmRepProdOferta));
end;

procedure TfrmMain.Comprobantesfiscales1Click(Sender: TObject);
begin
  ActivaForma(tfrmConsComprobantes, Tform(frmConsComprobantes));
end;

procedure TfrmMain.rep_cxp_1Click(Sender: TObject);
begin
  ActivaForma(tfrmAntiguedadCxP, Tform(frmAntiguedadCxP));
end;

procedure TfrmMain.rep_inv_5Click(Sender: TObject);
begin
  ActivaForma(tfrmConsMovimientoInventario, Tform(frmConsMovimientoInventario));
end;

procedure TfrmMain.CuadrecajasIPdefinitivo1Click(Sender: TObject);
begin
  ActivaForma(tfrmCuadreCajasIPDefinitivo, Tform(frmCuadreCajasIPDefinitivo));
end;

procedure TfrmMain.rep_venta_8Click(Sender: TObject);
begin
  ActivaForma(tfrmRepVentaGerenteProveedor, Tform(frmRepVentaGerenteProveedor));
end;

procedure TfrmMain.Resumendeingresos1Click(Sender: TObject);
begin
  ActivaForma(tfrmRepIngresos, Tform(frmRepIngresos));
end;

procedure TfrmMain.Notificaciondecomprobantesfiscales1Click(
  Sender: TObject);
begin
  ActivaForma(tfrmNotificacionComprobantes, Tform(frmNotificacionComprobantes));
end;

procedure TfrmMain.NmerosdeRNC1Click(Sender: TObject);
begin
  ActivaForma(tfrmNumerosRNC, Tform(frmNumerosRNC));
end;

procedure TfrmMain.rep_inv_6Click(Sender: TObject);
begin
  ActivaForma(tfrmRepInvTransferencia, Tform(frmRepInvTransferencia));
end;

procedure TfrmMain.Camiones1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value := uppercase('Camiones1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  ActivaForma(tfrmCamiones, Tform(frmCamiones));
  frmCamiones.btEdit.visible   := vMod;
  frmCamiones.btInsert.visible := vIns;
  frmCamiones.btDelete.visible := vDel;
end;

procedure TfrmMain.GenerarFormatodeenvio6081Click(Sender: TObject);
begin
  ActivaForma(tfrmGenera608, tform(frmGenera608));
end;

procedure TfrmMain.rep_analisis_3Click(Sender: TObject);
begin
  ActivaForma(tfrmResumenVentaProducto, tform(frmResumenVentaProducto));
end;

procedure TfrmMain.Pronosticodecobro1Click(Sender: TObject);
begin
  activaforma(tfrmPronosticoCobro, tform(frmPronosticoCobro));
end;

procedure TfrmMain.rep_venta_7Click(Sender: TObject);
begin
  activaforma(tfrmRepVentaProducto, tform(frmRepVentaProducto));
end;

procedure TfrmMain.Novedadesdelanmina1Click(Sender: TObject);
begin
  activaforma(tfrmConsNovedades, tform(frmConsNovedades));
end;

procedure TfrmMain.rep_cxp_5Click(Sender: TObject);
begin
{  if MessageDlg('Desea seleccionar una fecha?',mtConfirmation,[mbyes,mbno],0) = mrno then
  begin
    Application.CreateForm(tRCxPGeneral, RCxPGeneral);
    RCxPGeneral.lbFecha.Caption := 'Al '+DateToStr(date);

    RCxPGeneral.QProveedores.SQL.Add('group by p.sup_codigo, p.sup_nombre, p.sup_rnc, p.sup_telefono,');
    RCxPGeneral.QProveedores.SQL.Add('p.sup_limite');
    RCxPGeneral.QProveedores.SQL.Add('having sum(isnull((f.fac_total-f.fac_abono),0)) > 0');
    RCxPGeneral.QProveedores.SQL.Add('order by 2');

    RCxPGeneral.QProveedores.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    RCxPGeneral.QProveedores.Parameters.ParamByName('invemp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    RCxPGeneral.QProveedores.Open;
    RCxPGeneral.PrinterSetup;
    RCxPGeneral.Preview;
    RCxPGeneral.Destroy;
  end
  else
  begin  }
    ActivaForma(tfrmRepCxPGeneral, tform(frmRepCxPGeneral));
//  end;
end;

procedure TfrmMain.rep_inv_25Click(Sender: TObject);
begin
  ActivaForma(tfrmRepProductosDespachados, tform(frmRepProductosDespachados));
end;

procedure TfrmMain.Conteofisicodesdedispositivo1Click(Sender: TObject);
var
  dirlocal, dirsave : string;
begin
  SaveDialog1.FileName := 'lectura.txt';
  if SaveDialog1.Execute then
  begin
    dirsave := copy(SaveDialog1.FileName, 1, pos('lectura.txt',SaveDialog1.FileName)-1);

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('execute PR_ARCHIVO_FISICO :ruta');
    dm.Query1.Parameters.ParamByName('ruta').Value := dirsave;
    dm.Query1.ExecSQL;

    showmessage('ARCHIVO PROCESADO');
  end;
end;

procedure TfrmMain.rep_cxc_8Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select * from pr_datacredito (:emp, :fec)');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('fec').Value := Date;
  dm.Query1.Parameters.ParamByName('fec').DataType := ftdate;
  dm.Query1.Open;

  ExportXLS.Sheets[2].DataSet := dm.Query1;
  ExportXLS.Sheets[0].Exported := False;
  ExportXLS.Sheets[1].Exported := False;
  ExportXLS.Sheets[2].Exported := True;
  
  if GrabaXLS.Execute then
  begin
    ExportXLS.Header.Clear;
    ExportXLS.Header.Add(dm.QEmpresasEMP_NOMBRE.Value);
    ExportXLS.Header.Add(dm.QEmpresasEMP_DIRECCION.Value);
    ExportXLS.Header.Add(dm.QEmpresasEMP_LOCALIDAD.Value);
    ExportXLS.Header.Add(dm.QEmpresasEMP_TELEFONO.Value);
    ExportXLS.FileName := GrabaXLS.FileName;
    ExportXLS.Execute;
    dm.qActEnvDatCred.ExecSQL;
  end;
end;

procedure TfrmMain.ipodeproveedores1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('ipodeproveedores1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmTipoProveedor, tform(frmTipoProveedor));
  frmTipoProveedor.btEdit.visible   := vMod;
  frmTipoProveedor.btInsert.visible := vIns;
  frmTipoProveedor.btDelete.visible := vDel;
end;

procedure TfrmMain.rep_inv_18Click(Sender: TObject);
begin
  activaforma(tfrmRepCambioPrecios, tform(frmRepCambioPrecios));
end;

procedure TfrmMain.Comprobantesdegastosmenores1Click(Sender: TObject);
begin
  activaforma(tfrmConsGastosMenores, tform(frmConsGastosMenores));
end;

procedure TfrmMain.Grupos1Click(Sender: TObject);
begin
  activaforma(tfrmCashflowGrupos, tform(frmCashflowGrupos));
end;

procedure TfrmMain.Subgrupos1Click(Sender: TObject);
begin
  activaforma(tfrmCashflowSubgrupos, tform(frmCashflowSubgrupos));
end;

procedure TfrmMain.Conceptos2Click(Sender: TObject);
begin
  activaforma(tfrmCashflowConceptos, tform(frmCashflowConceptos));
end;

procedure TfrmMain.Cashflow2Click(Sender: TObject);
begin
  activaforma(tfrmCashflow, tform(frmCashflow));
end;

procedure TfrmMain.Medidores1Click(Sender: TObject);
begin
  activaforma(tfrmMedidores, tform(frmMedidores));
end;

procedure TfrmMain.Generarfacturasautomticas1Click(Sender: TObject);
begin
 dm.qEjecutar.Close;
  dm.qEjecutar.SQL.Clear;
  dm.qEjecutar.SQL.Add('select * from Clientes ');
  dm.qEjecutar.SQL.Add('where isnull(facturaid2,0)=0 and isnull(facturaid,0)=0');
  dm.qEjecutar.SQL.Add('and isnull(cond_monto,0)>0');
  dm.qEjecutar.open;

  if dm.qEjecutar.RecordCount > 0 then begin
  if dm.qEjecutar.FieldByName('cond_fac_caja').IsNull then begin
    ShowMessage('Debes indicar la caja'+char(13)+'en el modulo de clientes / condominio');
    Exit;
  end;
  if dm.qEjecutar.FieldByName('cond_caj_codigo').IsNull then begin
    ShowMessage('Debes indicar el cajero'+char(13)+'en el modulo de clientes / condominio');
    Exit;
  end;
  if dm.qEjecutar.FieldByName('cond_pro_codigo').IsNull then begin
    ShowMessage('Debes indicar la caja en el modulo de clientes / condominio');
    Exit;
  end;
  if dm.qEjecutar.FieldByName('cond_tfa_codigo').IsNull then begin
    ShowMessage('Debes indicar tipo de factura'+char(13)+'en el modulo de clientes / condominio');
    Exit;
  end;
  if dm.qEjecutar.FieldByName('cond_mon_codigo').IsNull then begin
    ShowMessage('Debes indicar la moneda'+char(13)+'en el modulo de clientes / condominio');
    Exit;
  end;
  if dm.qEjecutar.FieldByName('cond_ven_codigo').IsNull then begin
    ShowMessage('Debes indicar vendedor'+char(13)+'en el modulo de clientes / condominio');
    Exit;
  end;
  if dm.qEjecutar.FieldByName('cond_cpa_codigo').IsNull then begin
    ShowMessage('Debes indicar condicion de pago'+char(13)+'en el modulo de clientes / condominio');
    Exit;
  end;

   dm.facturacion_auto := False;
   activaforma(TFrmSelFecha, tform(FrmSelFecha));
  end
  else
  begin   
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select * from factura_automatica where dia = '+IntToStr(DayOf(now)));
  dm.Query1.open;
  case dm.Query1.RecordCount of
    0 : if MessageDlg('NO HAY FACTURACION AUTOMATICA PARA ESTE DIA,'+#13+
        'DESEA CONTINUAR?',mtConfirmation, [mbyes,mbno], 0) = mryes then
        begin
        dm.facturacion_auto := True;
        activaforma(TFrmSelFecha, tform(FrmSelFecha));

        end;
    else if MessageDlg('DESEA EJECUTAR EL PROCESO DE FACTURACION AUTOMATICA?',mtConfirmation, [mbyes,mbno], 0) = mryes then
          begin
            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            //.Query1.SQL.Add('exec pr_factura_automatica');
            dm.Query1.SQL.Add('exec pr_factura_automatica :cia, :fecha');
            dm.Query1.Parameters.ParamByName('cia').Value    := DM.vp_cia;
            dm.Query1.Parameters.ParamByName('fecha').Value    := Date;
            dm.Query1.ExecSQL;
            MessageDlg('PROCESO EJECUTADO SATISFACTORIAMENTE',mtInformation, [mbok], 0);
          end;
  end;
  end;
end;

procedure TfrmMain.rep_cxc_7Click(Sender: TObject);
begin
  activaforma(tfrmRepCxCFecha, tform(frmRepCxCFecha));
end;

procedure TfrmMain.btcloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMain.cxtvInventarioClick(Sender: TObject);
var
  vName : string;
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select pri_nombre from privilegios where usu_codigo = :usu');
  dm.Query1.SQL.Add('and descripcion = :des and substring(pri_nombre,1,4) = :gru');
  dm.Query1.Parameters.ParamByName('usu').Value := dm.Usuario;
  dm.Query1.Parameters.ParamByName('des').Value := (Sender as TcxTreeView).Selected.Text;
  dm.Query1.Parameters.ParamByName('gru').Value := 'inv_';
  dm.Query1.Open;

  if dm.Query1.RecordCount > 0 then
  begin
    vName := dm.Query1.FieldByName('pri_nombre').AsString;
    try
      (FindComponent(vName) as TBasicAction).Execute;
    except
    end;
  end;
end;

procedure TfrmMain.cxtvVentasClick(Sender: TObject);
var
  vName : string;
begin
  
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select pri_nombre from privilegios where usu_codigo = :usu');
  dm.Query1.SQL.Add('and descripcion = :des and substring(pri_nombre,1,6) = :gru');
  dm.Query1.Parameters.ParamByName('usu').Value := dm.Usuario;
  dm.Query1.Parameters.ParamByName('des').Value := (Sender as TcxTreeView).Selected.Text;
  dm.Query1.Parameters.ParamByName('gru').Value := 'venta_';
  dm.Query1.Open;

  if dm.Query1.RecordCount > 0 then
  begin
    vName := dm.Query1.FieldByName('pri_nombre').AsString;
    try
      (FindComponent(vName) as TBasicAction).Execute;
    except
    end;
  end;

end;

procedure TfrmMain.cxtvCxCClick(Sender: TObject);
var
  vName : string;
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select pri_nombre from privilegios where usu_codigo = :usu');
  dm.Query1.SQL.Add('and descripcion = :des and substring(pri_nombre,1,4) = :gru');
  dm.Query1.Parameters.ParamByName('usu').Value := dm.Usuario;
  dm.Query1.Parameters.ParamByName('des').Value := (Sender as TcxTreeView).Selected.Text;
  dm.Query1.Parameters.ParamByName('gru').Value := 'cxc_';
  dm.Query1.Open;

  if dm.Query1.RecordCount > 0 then
  begin
    vName := dm.Query1.FieldByName('pri_nombre').AsString;
    try
      (FindComponent(vName) as TBasicAction).Execute;
    except
    end;
  end;
end;

procedure TfrmMain.cxtvCxPClick(Sender: TObject);
var
  vName : string;
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select pri_nombre from privilegios where usu_codigo = :usu');
  dm.Query1.SQL.Add('and descripcion = :des and substring(pri_nombre,1,4) = :gru');
  dm.Query1.Parameters.ParamByName('usu').Value := dm.Usuario;
  dm.Query1.Parameters.ParamByName('des').Value := (Sender as TcxTreeView).Selected.Text;
  dm.Query1.Parameters.ParamByName('gru').Value := 'cxp_';
  dm.Query1.Open;

  if dm.Query1.RecordCount > 0 then
  begin
    vName := dm.Query1.FieldByName('pri_nombre').AsString;
    try
      (FindComponent(vName) as TBasicAction).Execute;
    except
    end;
  end;
end;

procedure TfrmMain.cxtvContabilidadClick(Sender: TObject);
var
  vName : string;
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select pri_nombre from privilegios where usu_codigo = :usu');
  dm.Query1.SQL.Add('and descripcion = :des and substring(pri_nombre,1,5) = :gru');
  dm.Query1.Parameters.ParamByName('usu').Value := dm.Usuario;
  dm.Query1.Parameters.ParamByName('des').Value := (Sender as TcxTreeView).Selected.Text;
  dm.Query1.Parameters.ParamByName('gru').Value := 'cont_';
  dm.Query1.Open;

  if dm.Query1.RecordCount > 0 then
  begin
    vName := dm.Query1.FieldByName('pri_nombre').AsString;
    try
      (FindComponent(vName) as TBasicAction).Execute;
    except
    end;
  end;
end;

procedure TfrmMain.cxtvSeguridadClick(Sender: TObject);
var
  vName : string;
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select pri_nombre from privilegios where usu_codigo = :usu');
  dm.Query1.SQL.Add('and descripcion = :des and substring(pri_nombre,1,4) = :gru');
  dm.Query1.Parameters.ParamByName('usu').Value := dm.Usuario;
  dm.Query1.Parameters.ParamByName('des').Value := (Sender as TcxTreeView).Selected.Text;
  dm.Query1.Parameters.ParamByName('gru').Value := 'seg_';
  dm.Query1.Open;

  if dm.Query1.RecordCount > 0 then
  begin
    vName := dm.Query1.FieldByName('pri_nombre').AsString;
    try
      (FindComponent(vName) as TBasicAction).Execute;
    except
    end;
  end;
end;

procedure TfrmMain.cxtvParamClick(Sender: TObject);
var
  vName : string;
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select pri_nombre from privilegios where usu_codigo = :usu');
  dm.Query1.SQL.Add('and descripcion = :des and substring(pri_nombre,1,6) = :gru');
  dm.Query1.Parameters.ParamByName('usu').Value := dm.Usuario;
  dm.Query1.Parameters.ParamByName('des').Value := (Sender as TcxTreeView).Selected.Text;
  dm.Query1.Parameters.ParamByName('gru').Value := 'param_';
  dm.Query1.Open;

  if dm.Query1.RecordCount > 0 then
  begin
    vName := dm.Query1.FieldByName('pri_nombre').AsString;
    try
      (FindComponent(vName) as TBasicAction).Execute;
    except
    end;
  end;
end;

procedure TfrmMain.SpeedButton1Click(Sender: TObject);
begin
  winexec('calc.exe',1);
end;

procedure TfrmMain.AadiraMiSigma1Click(Sender: TObject);
var
  a : integer;
  existe : boolean;
begin
  {existe := false;
  for a := 0 to cxtvMiSigma.Items.Count-1 do
    if cxtvMiSigma.Items.Item[a].Text = (PopupMenu1.PopupComponent as TcxTreeView).Selected.Text then
      existe := true;

  if not existe then
  begin
    //Insertando en el menu MiSigma
    cxtvMiSigma.Items.Add((PopupMenu1.PopupComponent as TcxTreeView).Selected,
    (PopupMenu1.PopupComponent as TcxTreeView).Selected.Text);

    //Insertando en la tabla MiSigma
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('insert into MiSigma (usu_codigo, Menu, Opcion, Secuencia)');
    dm.Query1.SQL.Add('values (:usu, :mnu, :opc, :sec)');
    dm.Query1.Parameters.ParamByName('usu').Value := dm.Usuario;
    dm.Query1.Parameters.ParamByName('mnu').Value := (PopupMenu1.PopupComponent as TcxTreeView).Name;
    dm.Query1.Parameters.ParamByName('opc').Value := (PopupMenu1.PopupComponent as TcxTreeView).Selected.Text;
    dm.Query1.Parameters.ParamByName('sec').Value := (PopupMenu1.PopupComponent as TcxTreeView).Selected.AbsoluteIndex;
    dm.Query1.ExecSQL;
  end
  else
    MessageDlg('Esta opción ya está en Mi Sigma',mtError,[mbok],0);}
end;

procedure TfrmMain.Eliminiar1Click(Sender: TObject);
var
  a : integer;
  existe : boolean;
begin
  {existe := false;
  for a := 0 to cxtvMiSigma.Items.Count-1 do
    if cxtvMiSigma.Items.Item[a].Text = (PopupMenu1.PopupComponent as TcxTreeView).Selected.Text then
      existe := true;

  if existe then
  begin
    if MessageDlg('Está seguro?', mtConfirmation,[mbyes,mbno],0) = mryes then
    begin
        //Insertando en la tabla MiSigma
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('delete from MiSigma where Opcion = :opc and usu_codigo = :usu');
        dm.Query1.Parameters.ParamByName('opc').Value := (PopupMenu1.PopupComponent as TcxTreeView).Selected.Text;
        dm.Query1.Parameters.ParamByName('usu').Value := dm.Usuario;
        dm.Query1.ExecSQL;

        //Eliminando del menu MiSigma
        cxtvMiSigma.Items.Delete((PopupMenu1.PopupComponent as TcxTreeView).Selected);
    end;
  end;}
end;

procedure TfrmMain.cxtvBancoClick(Sender: TObject);
var
  vName : string;
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select pri_nombre from privilegios where usu_codigo = :usu');
  dm.Query1.SQL.Add('and descripcion = :des and substring(pri_nombre,1,6) = :gru');
  dm.Query1.Parameters.ParamByName('usu').Value := dm.Usuario;
  dm.Query1.Parameters.ParamByName('des').Value := (Sender as TcxTreeView).Selected.Text;
  dm.Query1.Parameters.ParamByName('gru').Value := 'banco_';
  dm.Query1.Open;

  if dm.Query1.RecordCount > 0 then
  begin
    vName := dm.Query1.FieldByName('pri_nombre').AsString;
    try
      (FindComponent(vName) as TBasicAction).Execute;
    except
    end;
  end;
end;

procedure TfrmMain.dxNavMenuGroupClick(Sender: TObject;
  AGroup: TdxNavBarGroup);
begin
  cxtvBanco.FullExpand;
  cxtvContabilidad.FullExpand;
end;

procedure TfrmMain.cxtvBancoCollapsing(Sender: TObject; Node: TTreeNode;
  var AllowCollapse: Boolean);
begin
  AllowCollapse := false;
end;

procedure TfrmMain.cxtvContabilidadCollapsing(Sender: TObject;
  Node: TTreeNode; var AllowCollapse: Boolean);
begin
  AllowCollapse := false;
end;

procedure TfrmMain.cxtvMiSigmaClick(Sender: TObject);
var
  vGrupo, vOpcion : string;
  idx, a : integer;
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select Menu from MiSigma where Opcion = :opc and usu_codigo = :usu');
  dm.Query1.Parameters.ParamByName('opc').Value := (Sender as TcxTreeView).Selected.Text;
  dm.Query1.Parameters.ParamByName('usu').Value := dm.Usuario;
  dm.Query1.Open;

  vGrupo := dm.Query1.FieldByName('Menu').AsString;
  vOpcion := (Sender as TcxTreeView).Selected.Text;
  try
    for a := 0 to dxNavMenu.Groups.Count-1 do
    begin
      if dxNavMenu.Groups[a].Name = vGrupo then
        idx := a;
    end;
    //(dxNavMenu.Groups.Items (vGrupo) as TdxNavBarGroup).Index;
    //dxNavMenu. ActiveGroupIndex :=
    //(FindComponent(vName) as TBasicAction).Execute;
  except
  end;
end;

procedure TfrmMain.cxtvInventarioChanging(Sender: TObject; Node: TTreeNode;
  var AllowChange: Boolean);
begin
  if Node.StateIndex = 0 then
  begin
    AllowChange := False;
  end;
end;

procedure TfrmMain.cxtvInventarioAdvancedCustomDrawItem(
  Sender: TCustomTreeView; Node: TTreeNode; State: TCustomDrawState;
  Stage: TCustomDrawStage; var PaintImages, DefaultDraw: Boolean);
begin
  if Node.StateIndex = 0 then
  begin
    Sender.Canvas.Font.Color := clDkGray;
  end;
end;

procedure TfrmMain.cxtvVentasAdvancedCustomDrawItem(
  Sender: TCustomTreeView; Node: TTreeNode; State: TCustomDrawState;
  Stage: TCustomDrawStage; var PaintImages, DefaultDraw: Boolean);
begin
  if Node.StateIndex = 0 then
  begin
    Sender.Canvas.Font.Color := clDkGray;
  end;
end;

procedure TfrmMain.cxtvVentasChanging(Sender: TObject; Node: TTreeNode;
  var AllowChange: Boolean);
begin
  if Node.StateIndex = 0 then
  begin
    AllowChange := False;
  end;
end;

procedure TfrmMain.cxtvCxCAdvancedCustomDrawItem(Sender: TCustomTreeView;
  Node: TTreeNode; State: TCustomDrawState; Stage: TCustomDrawStage;
  var PaintImages, DefaultDraw: Boolean);
begin
  if Node.StateIndex = 0 then
  begin
    Sender.Canvas.Font.Color := clDkGray;
  end;
end;

procedure TfrmMain.cxtvCxCChanging(Sender: TObject; Node: TTreeNode;
  var AllowChange: Boolean);
begin
  if Node.StateIndex = 0 then
  begin
    AllowChange := False;
  end;
end;

procedure TfrmMain.inv_productosExecute(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('inv_productos');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmProductos, tform(frmProductos));
  frmProductos.btEdit.visible   := vMod;
  frmProductos.btInsert.visible := vIns;
  frmProductos.btDelete.visible := vDel;
end;

procedure TfrmMain.inv_almacenesExecute(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('inv_almacenes');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmAlmacenes, tform(frmAlmacenes));
  frmAlmacenes.btEdit.visible   := vMod;
  frmAlmacenes.btInsert.visible := vIns;
  frmAlmacenes.btDelete.visible := vDel;
end;

procedure TfrmMain.inv_familiasExecute(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('inv_familias');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmFamilias, tform(frmFamilias));
  frmFamilias.btEdit.visible   := vMod;
  frmFamilias.btInsert.visible := vIns;
  frmFamilias.btDelete.visible := vDel;
end;

procedure TfrmMain.inv_deptosExecute(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('inv_deptos');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmDeptos, tform(frmDeptos));
  frmDeptos.btEdit.visible   := vMod;
  frmDeptos.btInsert.visible := vIns;
  frmDeptos.btDelete.visible := vDel;
end;

procedure TfrmMain.inv_marcasExecute(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('inv_marcas');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  ActivaForma(tfrmMarcas, Tform(frmMarcas));
  frmMarcas.btEdit.visible   := vMod;
  frmMarcas.btInsert.visible := vIns;
  frmMarcas.btDelete.visible := vDel;
end;

procedure TfrmMain.inv_coloresExecute(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('inv_colores');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmColores, tform(frmColores));
  frmColores.btEdit.visible   := vMod;
  frmColores.btInsert.visible := vIns;
  frmColores.btDelete.visible := vDel;
end;

procedure TfrmMain.inv_unidadesExecute(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('inv_unidades');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmUnidades, tform(frmUnidades));
  frmUnidades.btEdit.visible   := vMod;
  frmUnidades.btInsert.visible := vIns;
  frmUnidades.btDelete.visible := vDel;
end;

procedure TfrmMain.inv_ajusteExecute(Sender: TObject);
begin
  activaforma(tfrmAjusteInventario, tform(frmAjusteInventario));
end;

procedure TfrmMain.inv_conduceExecute(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('inv_conduce');
  dm.Query1.open;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  activaforma(tfrmConduce, tform(frmConduce));
  frmConduce.btBuscar.visible := vMod;
  {if dm.QUsuariosusu_solo_conduce.Value = True then begin
    frmConduce.QSucursal.Close;
    frmConduce.QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    frmConduce.QSucursal.Open;
    frmConduce.QConduce.Close;
    frmConduce.QConduce.Parameters.parambyname('emp').Value := dm.vp_cia;
    frmConduce.QConduce.Parameters.parambyname('numero').Value := -1;
    frmConduce.QConduce.Parameters.parambyname('suc').Value := -1;
    frmConduce.QConduce.open;
    frmConduce.QConduce.insert;
    frmConduce.chkMail.Checked := DM.QParametrosPar_Envio_Conduce_Correo.Value;

  frmConduce.QMsnExistencia.Active := true;
  frmConduce.rgtipo.Enabled := False;
  frmConduce.rgtipo.ItemIndex := 1;
  frmConduce.DBLookupComboBox2.KeyValue := DM.QUsuariosUSU_EMPDEFAULT.Value;
  frmConduce.rgtipoClick(Sender);
  end
  else
  begin
  frmConduce.QSucursal.Close;
    frmConduce.QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    frmConduce.QSucursal.Open;
    frmConduce.QConduce.Close;
    frmConduce.QConduce.Parameters.parambyname('emp').Value := dm.vp_cia;
    frmConduce.QConduce.Parameters.parambyname('numero').Value := -1;
    frmConduce.QConduce.Parameters.parambyname('suc').Value := -1;
    frmConduce.QConduce.open;
    frmConduce.QConduce.insert;
    frmConduce.chkMail.Checked := DM.QParametrosPar_Envio_Conduce_Correo.Value;
  frmConduce.QMsnExistencia.Active := true;
  frmConduce.rgtipo.Enabled := False;
  frmConduce.rgtipo.ItemIndex := 1;
  frmConduce.DBLookupComboBox2.KeyValue := DM.QUsuariosUSU_EMPDEFAULT.Value;
  frmConduce.rgtipoClick(Sender);
  frmConduce.rgtipo.Enabled := True;
  frmConduce.rgtipo.ItemIndex := 0;
  frmConduce.DBLookupComboBox2.KeyValue := DM.QUsuariosUSU_EMPDEFAULT.Value;
  frmConduce.rgtipoClick(Sender);
  end;                           }
end;

procedure TfrmMain.inv_entradaExecute(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('inv_entrada');
  dm.Query1.open;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  activaforma(tfrmEntradas, tform(frmEntradas));
  frmEntradas.btBusca.visible := vMod;
end;

procedure TfrmMain.inv_gerenteExecute(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value := uppercase('inv_gerente');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  ActivaForma(tfrmGerentes, Tform(frmGerentes));
  frmGerentes.btEdit.visible   := vMod;
  frmGerentes.btInsert.visible := vIns;
  frmGerentes.btDelete.visible := vDel;
end;

procedure TfrmMain.inv_pasilloExecute(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value := uppercase('inv_pasillo');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  ActivaForma(tfrmGondoleros, Tform(frmGondoleros));
  frmGondoleros.btEdit.visible   := vMod;
  frmGondoleros.btInsert.visible := vIns;
  frmGondoleros.btDelete.visible := vDel;
end;

procedure TfrmMain.inv_fisicoExecute(Sender: TObject);
begin
  activaforma(tfrmInvFisico, tform(frmInvFisico));
end;

procedure TfrmMain.inv_liqExecute(Sender: TObject);
begin
  activaforma(tfrmLiquidacion, tform(frmLiquidacion));
end;

procedure TfrmMain.inv_transExecute(Sender: TObject);
begin
  activaforma(tfrmTransferencia, tform(frmTransferencia));
end;

procedure TfrmMain.inv_venceExecute(Sender: TObject);
begin
  ActivaForma(tfrmVencimiento, Tform(frmVencimiento));
end;

procedure TfrmMain.inv_abiertaExecute(Sender: TObject);
begin
  activaforma(tfrmDigitacionAbierta, tform(frmDigitacionAbierta));
end;

procedure TfrmMain.inv_eliminarExecute(Sender: TObject);
begin
  activaforma(tfrmEliminarProducto, tform(frmEliminarProducto));
end;

procedure TfrmMain.venta_tipofacturaExecute(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('venta_tipofactura');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmTipoFacturas, tform(frmTipoFacturas));
  frmTipoFacturas.btEdit.visible   := vMod;
  frmTipoFacturas.btInsert.visible := vIns;
  frmTipoFacturas.btDelete.visible := vDel;
end;

procedure TfrmMain.venta_cotizacionExecute(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('venta_cotizacion');
  dm.Query1.open;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  activaforma(tfrmCotizacion, tform(frmCotizacion));
  frmCotizacion.btBuscar.visible := vMod;
end;

procedure TfrmMain.venta_facturaExecute(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('venta_factura');
  dm.Query1.open;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;

   //Verificar si usuario tiene sucursal
   with dm.Query1 do begin
    Close;
    SQL.Clear;
    SQL.Add('select * from Sucursal_Acceso a');
    SQL.Add('inner join Usuarios U on a.emp_codigo=u.usu_empdefault and a.usu_codigo=u.usu_codigo');
    SQL.Add('where u.usu_nombre = '+QuotedStr(DM.QUsuariosUSU_NOMBRE.Text));
    Open;
    if not IsEmpty THEN BEGIN
  activaforma(tfrmFactura, tform(frmFactura));
  frmFactura.btBusca.visible := vMod;
  end
  else
  ShowMessage('Este usuario no tiene sucursal asignado.....');
end;
end;

procedure TfrmMain.venta_devolucionExecute(Sender: TObject);
begin
  if MessageDlg('LA DEVOLUCION ES CON FACTURA?',mtConfirmation,[mbyes,mbno],0) = mryes then
     activaforma(tfrmDevolucion, tform(frmDevolucion))
  else
     activaforma(tfrmDevSinFactura, tform(frmDevSinFactura));
end;

procedure TfrmMain.venta_ofertaExecute(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('venta_oferta');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmOfertas, tform(frmOfertas));
  frmOfertas.btEdit.visible   := vMod;
  frmOfertas.btInsert.visible := vIns;
  frmOfertas.btDelete.visible := vDel;
end;

procedure TfrmMain.venta_pedidoExecute(Sender: TObject);
begin
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('venta_pedido');
  dm.Query1.open;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  activaforma(tfrmPedidosCli, tform(frmPedidosCli));
  frmPedidosCli.btBuscaPedido.visible := vMod;
end;

procedure TfrmMain.venta_automaticaExecute(Sender: TObject);
begin
  activaforma(tfrmFacturaAutomatica, tform(frmFacturaAutomatica));
end;

procedure TfrmMain.venta_clienteclubExecute(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('venta_clienteclub');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmClientesClub, tform(frmClientesClub));
  frmClientesClub.btEdit.visible   := vMod;
  frmClientesClub.btInsert.visible := vIns;
  frmClientesClub.btDelete.visible := vDel;
end;

procedure TfrmMain.venta_cajeroExecute(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('venta_cajero');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmCajeros, tform(frmCajeros));
  frmCajeros.btEdit.visible   := vMod;
  frmCajeros.btInsert.visible := vIns;
  frmCajeros.btDelete.visible := vDel;
end;

procedure TfrmMain.cxc_clienteExecute(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('cxc_cliente');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmClientes, tform(frmClientes));
  frmClientes.btInsert.visible   := vIns;
  frmClientes.btEdit.visible := vMod;
  frmClientes.btDelete.visible := vDel;
end;

procedure TfrmMain.cxc_reciboExecute(Sender: TObject);
begin
  activaforma(tfrmRecibos, tform(frmRecibos));
end;

procedure TfrmMain.cxc_ncExecute(Sender: TObject);
begin
  activaforma(tfrmNotasCR, tform(frmNotasCR));
end;

procedure TfrmMain.cxc_ndExecute(Sender: TObject);
begin
  activaforma(tfrmNotasDB, tform(frmNotasDB));
end;

procedure TfrmMain.cxtvCxPChanging(Sender: TObject; Node: TTreeNode;
  var AllowChange: Boolean);
begin
  if Node.StateIndex = 0 then
  begin
    AllowChange := False;
  end;
end;

procedure TfrmMain.cxp_proveedoresExecute(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and pri_nombre = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := 'cxp_proveedores';
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmProveedores, tform(frmProveedores));
  frmProveedores.btEdit.visible   := vMod;
  frmProveedores.btInsert.visible := vIns;
  frmProveedores.btDelete.visible := vDel;
end;

procedure TfrmMain.cxp_ordenExecute(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('cxp_orden');
  dm.Query1.open;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  activaforma(tfrmPedidosProv, tform(frmPedidosProv));
  frmPedidosProv.btBuscaPedido.visible := vMod;
end;

procedure TfrmMain.cxp_facturaExecute(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('cxp_factura');
  dm.Query1.open;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  activaforma(tfrmFacProvee, tform(frmFacProvee));
  frmFacProvee.vMod := vMod;
end;

procedure TfrmMain.cxp_devolucionExecute(Sender: TObject);
begin
  activaforma(tfrmDevolucionCompra, tform(frmDevolucionCompra));
end;

procedure TfrmMain.cxp_ncExecute(Sender: TObject);
begin
  activaforma(tfrmNotaCreditoCompra, tform(frmNotaCreditoCompra));
end;

procedure TfrmMain.cxp_cotizacionmultipleExecute(Sender: TObject);
begin
  activaforma(tfrmCotMultiple, tform(frmCotMultiple));
end;

procedure TfrmMain.cxtvBancoAdvancedCustomDrawItem(Sender: TCustomTreeView;
  Node: TTreeNode; State: TCustomDrawState; Stage: TCustomDrawStage;
  var PaintImages, DefaultDraw: Boolean);
begin
  if Node.StateIndex = 0 then
  begin
    Sender.Canvas.Font.Color := clDkGray;
  end;
end;

procedure TfrmMain.cxtvBancoChanging(Sender: TObject; Node: TTreeNode;
  var AllowChange: Boolean);
begin
  if Node.StateIndex = 0 then
  begin
    AllowChange := False;
  end;
end;

procedure TfrmMain.cxtvCxPAdvancedCustomDrawItem(Sender: TCustomTreeView;
  Node: TTreeNode; State: TCustomDrawState; Stage: TCustomDrawStage;
  var PaintImages, DefaultDraw: Boolean);
begin
  if Node.StateIndex = 0 then
  begin
    Sender.Canvas.Font.Color := clDkGray;
  end;
end;

procedure TfrmMain.banco_cuentaExecute(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('banco_cuenta');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  ActivaForma(tfrmBancos, Tform(frmBancos));
  frmBancos.btEdit.visible   := vMod;
  frmBancos.btInsert.visible := vIns;
  frmBancos.btDelete.visible := vDel;
end;

procedure TfrmMain.banco_conceptoExecute(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('banco_concepto');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmConceptos, tform(frmConceptos));
  frmConceptos.btEdit.visible   := vMod;
  frmConceptos.btInsert.visible := vIns;
  frmConceptos.btDelete.visible := vDel;
end;

procedure TfrmMain.banco_dp_crearExecute(Sender: TObject);
begin
  activaforma(tfrmDepositos, tform(frmDepositos));
end;

procedure TfrmMain.banco_dp_anularExecute(Sender: TObject);
begin
  activaforma(tfrmAnulaDeposito, tform(frmAnulaDeposito));
end;

procedure TfrmMain.banco_dp_eliminarExecute(Sender: TObject);
begin
  activaforma(tfrmEliminaDeposito, tform(frmEliminaDeposito));
end;

procedure TfrmMain.banco_ck_crearExecute(Sender: TObject);
begin
  activaforma(tfrmCheque, tform(frmCheque));
end;

procedure TfrmMain.banco_ck_anularExecute(Sender: TObject);
begin
  activaforma(tfrmAnulaCK, tform(frmAnulaCK));
end;

procedure TfrmMain.banco_ck_imprimirExecute(Sender: TObject);
begin
  activaforma(tfrmRepCheque, tform(frmRepCheque));
end;

procedure TfrmMain.banco_ck_eliminarExecute(Sender: TObject);
begin
  activaforma(tfrmEliminaCK, tform(frmEliminaCK));
end;

procedure TfrmMain.banco_ck_configExecute(Sender: TObject);
begin
  activaforma(tfrmConfigCK, tform(frmConfigCK));
end;

procedure TfrmMain.banco_cb_crearExecute(Sender: TObject);
begin
  activaforma(tfrmCargosBanco, tform(frmCargosBanco));
end;

procedure TfrmMain.banco_cb_anularExecute(Sender: TObject);
begin
  activaforma(tfrmAnulaCargoBanco, tform(frmAnulaCargoBanco));
end;

procedure TfrmMain.banco_cb_eliminarExecute(Sender: TObject);
begin
  activaforma(tfrmEliminaCargoBanco, tform(frmEliminaCargoBanco));
end;

procedure TfrmMain.banco_sol_crearExecute(Sender: TObject);
begin
  activaforma(tfrmSolicitud, tform(frmSolicitud));
end;

procedure TfrmMain.banco_sol_aprobarExecute(Sender: TObject);
begin
  activaforma(tfrmApruebaSol, tform(frmApruebaSol));
end;

procedure TfrmMain.banco_sol_imprimirExecute(Sender: TObject);
begin
  activaforma(tfrmRepSolicitud, tform(frmRepSolicitud));
end;

procedure TfrmMain.banco_sol_eliminarExecute(Sender: TObject);
begin
  activaforma(tfrmEliminaSOL, tform(frmEliminaSOL));
end;

procedure TfrmMain.banco_sol_generarExecute(Sender: TObject);
begin
  activaforma(tfrmGenerarCheques, tform(frmGenerarCheques));
end;

procedure TfrmMain.banco_libroExecute(Sender: TObject);
begin
  activaforma(tfrmLibroBanco, tform(frmLibroBanco));
end;

procedure TfrmMain.banco_concilExecute(Sender: TObject);
begin
  activaforma(tfrmRepConciliacion, tform(frmRepConciliacion));
end;

procedure TfrmMain.cxtvContabilidadAdvancedCustomDrawItem(
  Sender: TCustomTreeView; Node: TTreeNode; State: TCustomDrawState;
  Stage: TCustomDrawStage; var PaintImages, DefaultDraw: Boolean);
begin
  if Node.StateIndex = 0 then
  begin
    Sender.Canvas.Font.Color := clDkGray;
  end;
end;

procedure TfrmMain.cxtvContabilidadChanging(Sender: TObject;
  Node: TTreeNode; var AllowChange: Boolean);
begin
  if Node.StateIndex = 0 then
  begin
    AllowChange := False;
  end;
end;

procedure TfrmMain.cont_catalogoExecute(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('cont_catalogo');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmCatalogo, tform(frmCatalogo));
  frmCatalogo.btEdit.visible   := vMod;
  frmCatalogo.btInsert.visible := vIns;
  frmCatalogo.btDelete.visible := vDel;
end;

procedure TfrmMain.cont_anexoExecute(Sender: TObject);
begin
  activaforma(tfrmAnexos, tform(frmAnexos));
end;

procedure TfrmMain.cont_cajasExecute(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('cont_cajas');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmCajas, tform(frmCajas));
  frmCajas.btEdit.visible   := vMod;
  frmCajas.btInsert.visible := vIns;
  frmCajas.btDelete.visible := vDel;
end;

procedure TfrmMain.cont_centrosExecute(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('cont_centros');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmCentroCosto, tform(frmCentroCosto));
  frmCentroCosto.btEdit.visible   := vMod;
  frmCentroCosto.btInsert.visible := vIns;
  frmCentroCosto.btDelete.visible := vDel;
end;

procedure TfrmMain.cont_tipodocExecute(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('cont_tipodoc');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmTiposDoc, tform(frmTiposDoc));
  frmTiposDoc.btEdit.visible   := vMod;
  frmTiposDoc.btInsert.visible := vIns;
  frmTiposDoc.btDelete.visible := vDel;
end;

procedure TfrmMain.cont_bienesExecute(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('cont_bienes');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmTipoBienesServicios, tform(frmTipoBienesServicios));
  frmTipoBienesServicios.btEdit.visible   := vMod;
  frmTipoBienesServicios.btInsert.visible := vIns;
  frmTipoBienesServicios.btDelete.visible := vDel;
end;

procedure TfrmMain.cont_numeroentradaExecute(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('cont_numeroentrada');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmNumEntradas, tform(frmNumEntradas));
  frmNumEntradas.btEdit.visible   := vMod;
  frmNumEntradas.btInsert.visible := vIns;
  frmNumEntradas.btDelete.visible := vDel;
end;

procedure TfrmMain.cont_entradasExecute(Sender: TObject);
begin
  activaforma(tfrmEntradasDiario, tform(frmEntradasDiario));
end;

procedure TfrmMain.cont_movimientoExecute(Sender: TObject);
begin
  activaforma(tfrmConsMovimiento, tform(frmConsMovimiento));
end;

procedure TfrmMain.cont_rep_diarioExecute(Sender: TObject);
begin
  activaforma(tfrmRepDiario, tform(frmRepDiario));
end;

procedure TfrmMain.cont_rep_mayorExecute(Sender: TObject);
begin
  activaforma(tfrmRepMayorGeneral, tform(frmRepMayorGeneral));
end;

procedure TfrmMain.cont_rep_bceExecute(Sender: TObject);
begin
  activaforma(tfrmRepBalComprobacion, tform(frmRepBalComprobacion));
end;

procedure TfrmMain.cont_rep_resumenExecute(Sender: TObject);
begin
  activaforma(tfrmRepEntrada, tform(frmRepEntrada));
end;

procedure TfrmMain.cont_rep_anexoExecute(Sender: TObject);
begin
  activaforma(tfrmRepAnexos, tform(frmRepAnexos));
end;

procedure TfrmMain.cont_est_res1Execute(Sender: TObject);
begin
  activaforma(tfrmRepResultado, tform(frmRepResultado));
end;

procedure TfrmMain.cont_est_res2Execute(Sender: TObject);
begin
  ActivaForma(tfrmRepResultadoAnual, tform(frmRepResultadoAnual));
end;

procedure TfrmMain.cont_est_sit_1Execute(Sender: TObject);
begin
  activaforma(tfrmRepSituacion, tform(frmRepSituacion));
end;

procedure TfrmMain.cont_est_sit_2Execute(Sender: TObject);
begin
  ActivaForma(tfrmRepSituacionAnual, tform(frmRepSituacionAnual));
end;

procedure TfrmMain.cont_est_costoExecute(Sender: TObject);
begin
  activaforma(tfrmRepCosto, tform(frmRepCosto));
end;

procedure TfrmMain.cxtvSeguridadAdvancedCustomDrawItem(
  Sender: TCustomTreeView; Node: TTreeNode; State: TCustomDrawState;
  Stage: TCustomDrawStage; var PaintImages, DefaultDraw: Boolean);
begin
  if Node.StateIndex = 0 then
  begin
    Sender.Canvas.Font.Color := clDkGray;
  end;
end;

procedure TfrmMain.cxtvSeguridadChanging(Sender: TObject; Node: TTreeNode;
  var AllowChange: Boolean);
begin
  if Node.StateIndex = 0 then
  begin
    AllowChange := False;
  end;
end;

procedure TfrmMain.seg_usuarioExecute(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('seg_usuario');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmUsuarios, tform(frmUsuarios));
  frmUsuarios.btEdit.visible   := vMod;
  frmUsuarios.btInsert.visible := vIns;
  frmUsuarios.btDelete.visible := vDel;
end;

procedure TfrmMain.seg_cambiarExecute(Sender: TObject);
begin
  Application.CreateForm(tfrmCambioClave, tform(frmCambioClave));
  frmCambioClave.ShowModal;
  frmCambioClave.Release;
end;

procedure TfrmMain.seg_cerrarExecute(Sender: TObject);
begin
  application.createform(tfrmAcceso, frmAcceso);
  acceso := 0;
  frmAcceso.showmodal;
end;

procedure TfrmMain.cxtvParamAdvancedCustomDrawItem(Sender: TCustomTreeView;
  Node: TTreeNode; State: TCustomDrawState; Stage: TCustomDrawStage;
  var PaintImages, DefaultDraw: Boolean);
begin
  if Node.StateIndex = 0 then
  begin
    Sender.Canvas.Font.Color := clDkGray;
  end;
end;

procedure TfrmMain.cxtvParamChanging(Sender: TObject; Node: TTreeNode;
  var AllowChange: Boolean);
begin
  if Node.StateIndex = 0 then
  begin
    AllowChange := False;
  end;
end;

procedure TfrmMain.param_generalExecute(Sender: TObject);
begin
  ActivaForma(tfrmParametros, Tform(frmParametros));
end;

procedure TfrmMain.param_empExecute(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('param_emp');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmEmpresas, tform(frmEmpresas));
  frmEmpresas.btEdit.visible   := vMod;
  frmEmpresas.btInsert.visible := vIns;
  frmEmpresas.btDelete.visible := vDel;
end;

procedure TfrmMain.param_sucExecute(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('param_suc');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmSucursales, tform(frmSucursales));
  frmSucursales.btEdit.visible   := vMod;
  frmSucursales.btInsert.visible := vIns;
  frmSucursales.btDelete.visible := vDel;
end;

procedure TfrmMain.param_tablasExecute(Sender: TObject);
begin
  ActivaForma(tfrmAdministracion, tform(frmAdministracion));
end;

procedure TfrmMain.param_actbalanceExecute(Sender: TObject);
begin
  if MessageDlg('DESEA ACTUALIZAR LOS BALANCES?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    Application.CreateForm(tfrmActBalance, frmActBalance);
    frmActBalance.Label1.Caption := 'Espere un momento actualizando balances...';
    frmActBalance.Update;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('execute pr_actualiza_bce :emp');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.ExecSQL;
    frmActBalance.Close;
 end
  else
  begin
  if MessageDlg('DESEA REPARAR LOS BALANCES DE LAS FACTURAS?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    Application.CreateForm(tfrmActBalance, frmActBalance);
    frmActBalance.Update;
    frmActBalance.Label1.Caption := 'Espere un momento reparando balances...';
    qRepBalanceFact.Close;
    qRepBalanceFact.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    qRepBalanceFact.ExecSQL;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('execute pr_actualiza_bce :emp');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.ExecSQL;
    frmActBalance.Close;
  end;                     
  end;

end;

procedure TfrmMain.param_limpiarExecute(Sender: TObject);
begin
  if MessageDlg('ESTA SEGURO QUE DESEA LIMPIAR LOS'+#13+
                'ARCHIVOS TEMPORALES?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('execute pr_limpia_temp :emp');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.ExecSQL;
    MessageDlg('PROCESO TERMINADO',mtInformation,[mbok],0);
  end;
end;

procedure TfrmMain.Timer2Timer(Sender: TObject);
var
  texto : string;
  nombre, fven: string;
  rest, dias, minreq, cantidad: Integer;
begin
    if  dm.QParametrosUsa_FacturacionElectronica.Value  then
          begin
          memonotificaciones.Clear;

          dm.QNotificaComprobantes.Close;
          dm.QNotificaComprobantes.SQL.Clear;

          // Restantes y vencimiento desde SecuenciaDGII + TipoNCF
          dm.QNotificaComprobantes.SQL.Clear;
          dm.QNotificaComprobantes.SQL.Add(
            'select s.Cantidad,  '+
            '  (s.Cantidad - s.Ultima_secuencia_DGII) as Restantes, '+
            '  t.tip_codigo, t.nombre_dgii, '+
            '  s.emp_codigo, s.Tipo, s.Secuencia_Inicial_DGII, s.Ultima_secuencia_DGII, '+
            '  s.FechaVencimientoSecuenciaDGII, s.Activa, s.ID, s.Cantidad, '+
            '  s.cantidad_minima, '+
            '  DATEDIFF(day, GETDATE(), s.FechaVencimientoSecuenciaDGII) as DiasParaVencer '+
            'from SecuenciaDGII s '+
            'inner join TipoNCF t on t.emp_codigo = s.emp_codigo and s.Tipo = t.cod_dgii '+
            'where s.emp_codigo = :emp '+
            '  and s.Activa = 1 '+
            // Dispara si llega al mínimo O si vence pronto (o vencida)
            '  and ( (s.Cantidad - s.Ultima_secuencia_DGII) <= isnull(s.cantidad_minima, 0) '+
            '        or (s.FechaVencimientoSecuenciaDGII is not null '+
            '            and DATEDIFF(day, GETDATE(), s.FechaVencimientoSecuenciaDGII) <= :umbralDias) ) '+
            'order by t.nombre_dgii'
          );
          dm.QNotificaComprobantes.Parameters.ParamByName('emp').Value        := dm.QEmpresasEMP_CODIGO.Value;
          dm.QNotificaComprobantes.Parameters.ParamByName('umbralDias').Value := 30; // o el que quieras
          dm.QNotificaComprobantes.Open;

          memonotificaciones.Visible := False;

          if dm.QNotificaComprobantes.RecordCount>0 then
          begin
            dm.QNotificaComprobantes.DisableControls;
            try
              dm.QNotificaComprobantes.First;
              while not dm.QNotificaComprobantes.Eof do
              begin
                 nombre := dm.QNotificaComprobantes.FieldByName('nombre_dgii').AsString;
                 rest   := dm.QNotificaComprobantes.FieldByName('Restantes').AsInteger;
                 dias   := dm.QNotificaComprobantes.FieldByName('DiasParaVencer').AsInteger;
                 fven   := dm.QNotificaComprobantes.FieldByName('FechaVencimientoSecuenciaDGII').AsString;
                 minreq := dm.QNotificaComprobantes.FieldByName('cantidad_minima').AsInteger;
                 cantidad := dm.QNotificaComprobantes.FieldByName('Cantidad').AsInteger;
                // 1) Notificación por pocos números
                if (rest <= minreq) and (cantidad > 0 ) then
                  memonotificaciones.Lines.Add(
                    Format('eNCF %s: quedan %d (mínimo %d).', [nombre, rest, minreq])
                  );

                // 2) Notificación por vencimiento (si tiene fecha)
                if fven <> '' then
                begin
                  if dias < 0 then
                    memonotificaciones.Lines.Add(
                      Format('eNCF %s: SECUENCIA VENCIDA hace %d día(s). (Venc: %s)', [nombre, Abs(dias), fven])
                    )
                  else if dias <= 30 then
                    memonotificaciones.Lines.Add(
                      Format('eNCF %s: vence en %d día(s). (Venc: %s)', [nombre, dias, fven])
                    );
                end;

                dm.QNotificaComprobantes.Next;
              end;
            finally
              dm.QNotificaComprobantes.EnableControls;
            end;

            // Mostrar si hay algo que decir
            memonotificaciones.Visible := (memonotificaciones.Lines.Count > 0);
            if memonotificaciones.Visible then
            begin
              lblAlerta.Caption := 'ALERTA !! : Comprobantes Electrónicos (folios/vencimiento). Click para ver';
              lblAlerta.Visible := True;
            end
            else
              lblAlerta.Visible := False;
            end;
          end
          else
          begin  
            dm.QNotificaComprobantes.Close;
            dm.QNotificaComprobantes.SQL.Clear;
            dm.QNotificaComprobantes.SQL.Add('select distinct a.ncf_fijo from Alarma_Comprobantes a,');
            dm.QNotificaComprobantes.SQL.Add('ncf n where n.emp_codigo = a.emp_codigo');
            dm.QNotificaComprobantes.SQL.Add('and n.ncf_fijo = a.ncf_fijo');
            dm.QNotificaComprobantes.SQL.Add('and a.ncf_cantidad >= (n.NCF_Final - n.NCF_Secuencia)');
            dm.QNotificaComprobantes.SQL.Add('and a.emp_codigo = :emp');
            dm.QNotificaComprobantes.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
            dm.QNotificaComprobantes.Open;
            dm.QNotificaComprobantes.DisableControls;
            memonotificaciones.Visible := false;
            memonotificaciones.Lines.Clear;
            if dm.QNotificaComprobantes.RecordCount > 0 then
            begin
              texto := '';

              while not dm.QNotificaComprobantes.Eof do
              begin
                //texto := texto + 'NCF '+dm.QNotificaComprobantes.FieldByName('ncf_fijo').AsString+
                //                          ' Está a punto de terminarse, ';
                memonotificaciones.Lines.Add('NCF '+dm.QNotificaComprobantes.FieldByName('ncf_fijo').AsString+
                                          ' Está a punto de terminarse, ');
                dm.QNotificaComprobantes.Next;
              end;
              //memonotificaciones.Lines.Add(Trim(texto));
              lblAlerta.Caption := 'ALERTA !! : Comprobantes Fiscal, Presione Click aqui para ver';
              lblAlerta.Visible := true;
            end;
  end;

  dm.QNotificaComprobantes.EnableControls;
end;

procedure TfrmMain.memonotificacionesDblClick(Sender: TObject);
begin
if  memonotificaciones.Visible then
    memonotificaciones.Visible := false
  else
    begin

      tmr4Timer(Sender);
      memonotificaciones.Parent :=frmMain;
      memonotificaciones.Top := 50;
      memonotificaciones.Left:= 592 ;
      memonotificaciones.Width := 331 ;
      memonotificaciones.Height :=200;
      memonotificaciones.Visible := true;
    end;
end;

procedure TfrmMain.lblAlertaClick(Sender: TObject);
begin
  memonotificacionesDblClick(sender);
end;

procedure TfrmMain.Pedido1Click(Sender: TObject);
begin
  ActivaForma(tfrmAnulaPedido, Tform(frmAnulaPedido));
end;

procedure TfrmMain.Listadogeneral3Click(Sender: TObject);
begin
  ActivaForma(tfrmConsServicios, Tform(frmConsServicios));
end;

procedure TfrmMain.ListadodeEnvio1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value := uppercase('ListadodeFacturas1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(TfrmConsFTEnvios, tform(frmConsFTEnvios));
end;

procedure TfrmMain.venta_boletoExecute(Sender: TObject);
begin
  activaforma(TfrmBoleteria, tform(frmBoleteria));
end;

procedure TfrmMain.inv_boletosExecute(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('inv_boletos');
  dm.Query1.open;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  activaforma(tfrmBoletoPrecio, tform(frmBoletoPrecio));
//  frmBoletoPrecio.btBusca.visible := vMod;
end;

procedure TfrmMain.Listadodeboletos1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value := uppercase('ListadodeFacturas1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmConsBoletos, tform(frmConsBoletos));
//  frmConsFacturas.Modifica := vMod;
//  frmConsFacturas.Elimina  := vDel;
end;

procedure TfrmMain.venta_alquilerExecute(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('venta_alquiler');
  dm.Query1.open;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  activaforma(tfrmAlquiler, tform(frmAlquiler));
  frmAlquiler.btBuscar.visible := vMod;
end;

procedure TfrmMain.ReportedeVencLicenciaSeguro1Click(Sender: TObject);
begin
activaforma(tfrmRepVencimiento, tform(frmRepVencimiento));
end;

procedure TfrmMain.Acercade2Click(Sender: TObject);
begin
  application.createform(tfrmAcerca, frmAcerca);
  frmAcerca.showmodal;
  frmAcerca.release;

end;

procedure TfrmMain.Serial1Click(Sender: TObject);
begin
  application.createform(tFSerial, FSerial);
  FSerial.showmodal;
  FSerial.release;

end;

procedure TfrmMain.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = vk_f11 then bListadoProductoClick(Self);
end;

procedure TfrmMain.bListadoProductoClick(Sender: TObject);
begin
Application.createform(tfrmListadoProdFalt, frmListadoProdFalt);
frmListadoProdFalt.Show;
end;

function TfrmMain.GetComputerName: String;
var
   pcComputer : PChar;
   dwCSize    : DWORD;
begin
   dwCSize := MAX_COMPUTERNAME_LENGTH + 1;
   GetMem( pcComputer, dwCSize );
   try
      if Windows.GetComputerName( pcComputer, dwCSize ) then
         Result := pcComputer;
   finally
      FreeMem( pcComputer );
   end;
end;

procedure TfrmMain.venta_liq_ticket_transpExecute(Sender: TObject);
begin
  activaforma(TFrmLiquidacionTickets, tform(FrmLiquidacionTickets));
end;

procedure TfrmMain.mniTransporte1Click(Sender: TObject);
begin
  activaforma(TfrmConsTicketTransp, tform(frmConsTicketTransp));
end;

procedure TfrmMain.mniListadodeFacturasRestBAR1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value := uppercase('mniListadodeFacturasRestBAR1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;


  activaforma(tfrmConsFacturasRestBar, tform(frmConsFacturasRestBar));
  frmConsFacturasRestBar.Modifica := vMod;
  frmConsFacturasRestBar.Elimina  := vDel;
  //frmConsFacturas.bteliminacuenta.Visible := vDel
  //frmConsFacturas.btbuscacuenta.Visible := vMod
end;

procedure TfrmMain.tmr2Timer(Sender: TObject);
var
  texto : string;
begin
  if DM.QParametrospar_cotizacion_notif.Value = True THEN BEGIN
  if qAlertaCot.RecordCount > 0 then begin
  qAlertaCot.DisableControls;
  memonotificaciones.Visible := false;
  memonotificaciones.Lines.Clear;
  if qAlertaCot.RecordCount > 0 then
  begin
    texto := '';

    while not qAlertaCot.Eof do
    begin
      //texto := texto + 'NCF '+dm.QNotificaComprobantes.FieldByName('ncf_fijo').AsString+
      //                          ' Está a punto de terminarse, ';
      memonotificaciones.Lines.Add('La Cotizacion No. '+qAlertaCot.FieldByName('cot_numero').AsString+
                                ', de Fecha '+FormatDateTime('dd/mm/yyyy',qAlertaCot.FieldByName('cot_fecha').AsDateTime)+
                                ', a nombre de '+qAlertaCot.FieldByName('cot_nombre').AsString+
                                'Esta Vencida......');
     qAlertaCot.Next;
    end;
    //memonotificaciones.Lines.Add(Trim(texto));
    lblAlertaCot.Visible := true;
  end;
  qAlertaCot.EnableControls;
  tmr3.Enabled := True;
  end;
  end;


end;


procedure TfrmMain.lblAlertaCotClick(Sender: TObject);
begin
activaforma(TFrmCotizacionVencidas, tform(FrmCotizacionVencidas));
end;

procedure TfrmMain.tmr3Timer(Sender: TObject);
begin
if DM.QParametrospar_cotizacion_notif.Value = True THEN BEGIN
Timer2.Enabled := False;
lblAlertaCot.Visible := False;
tmr3.Enabled := False;
end;

end;

procedure TfrmMain.tmr1Timer(Sender: TObject);
begin
    //Verificar las Cotizaciones
  if DM.QParametrospar_cotizacion_notif.Value = True THEN BEGIN
  with qVerCotizaciones do begin
  Close;
  Parameters.ParamByName('EMP').Value := DM.vp_cia;
  ExecSQL;
  end;
  with qAlertaCot do begin
  Close;
  SQL.Clear;
  SQL.Add('select distinct c.cot_nombre, c.cot_numero, c.cot_fecha');
  SQL.Add('from Cotizacion_Notif n');
  SQL.Add('INNER JOIN Cotizacion C ON N.emp_codigo = C.emp_codigo AND N.suc_codigo = C.suc_codigo AND N.cot_numero = N.cot_numero');
  SQL.Add('where n.cot_not_status = ''ABI''');
  SQL.Add('and n.emp_codigo = :emp');
  Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  Open;
  if qAlertaCot.RecordCount > 0 then
  tmr2.Enabled := True else
  tmr2.Enabled := False;

end;
end;
end;


procedure TfrmMain.EnviarCorreo(Destinatario, Asunto, Adjunto, Cuerpo: String);
var
  oSmtp: TMail;
  i: integer;
  Rcpts: OleVariant;
  RcptBound: integer;
  RcptAddr: WideString;
  oEncryptCert: TCertificate;
  pas: String;
begin
  if Trim(DM.QUsuariospar_mailusuario.Text) = '' then begin
  DM.vp_usermailok := False;
  if trim(DM.QParametrospar_mailusuario.Text) = '' then
  begin
    ShowMessage('Debes indicar el Usuario de autenticacion de envio!');
    exit;
  end;

  if trim(Destinatario) = '' then
  begin
    ShowMessage('No existe el correo del destinatario!');
    exit;
  end;

  if trim(DM.QParametrospar_mailclave.Text) = '' then
  begin
    ShowMessage('Debes indicar la clave de autenticacion de envio!');
    exit;
  end;

  try
    // Create TMail Object
    oSmtp := TMail.Create(Application);
    oSmtp.LicenseCode := 'ES-D1508812687-00633-F3D2D5695CFDC674-8B92BA6D88715634';
  except on E: exception do
    begin
      ShowMessage(E.Message);
      exit;
    end;
  end;


  oSmtp.Charset := m_arCharset[24, 1];
  oSmtp.FromAddr := DM.QParametrospar_mailcorreo.Text;

  // Add recipient's
  oSmtp.AddRecipientEx(ChAnsiToWide(trim(Destinatario)), 0);

  // Set subject
  oSmtp.Subject := ChAnsiToWide(Asunto);

  // Using HTML FORMAT to send mail
  // oSmtp.BodyFormat := 1;

  // Set body
  oSmtp.BodyText := ChAnsiToWide(Cuerpo);

  // Add attachments
  oSmtp.AddAttachment(ChAnsiToWide(Adjunto));

  // get all to, cc, bcc email address to an array
  Rcpts := oSmtp.Recipients;
  RcptBound := VarArrayHighBound(Rcpts, 1);

  oSmtp.ServerAddr := trim(DM.QParametrospar_mailservidor.Text);
  oSmtp.Protocol := 0;

  // Most mordern SMTP servers require SSL/TLS connection now
  // ConnectTryTLS means if server supports SSL/TLS connection, SSL/TLS is used automatically
	//oSmtp.ConnectType := ConnectSSLAuto;

      oSmtp.ServerPort := strtoint(dm.QParametrospar_mailpuerto.Text);
      oSmtp.UserName := trim(dm.QParametrospar_mailusuario.Text);
      oSmtp.Password := MimeDecodeString(dm.QParametrospar_mailclave.Text);

  		//oSmtp.ConnectType := ConnectSSLAuto;

  if (RcptBound > 0) and (oSmtp.ServerAddr = '') then
  begin
    // To send email without specified smtp server, we have to send the emails one by one
    // to multiple recipients. That is because every recipient has different smtp server.
    DirectSend(oSmtp);
    exit;
  end;

  if oSmtp.SendMail() = 0 then begin
    ShowMessage('Mensaje enviado');
    DeleteFile(Adjunto);
    Exit;
    end
  else
    ShowMessage(oSmtp.GetLastErrDescription());
end;

/// Por Usuario
  if Trim(DM.QUsuariospar_mailusuario.Text) <> '' then begin
  if trim(DM.QUsuariospar_mailusuario.Text) = '' then
  begin
    ShowMessage('Debes indicar el Usuario de autenticacion de envio!');
    exit;
  end;

  if trim(Destinatario) = '' then
  begin
    ShowMessage('No existe el correo del destinatario!');
    exit;
  end;

  if trim(DM.QUsuariospar_mailclave.Text) = '' then
  begin
    ShowMessage('Debes indicar la clave de autenticacion de envio!');
    exit;
  end;

  try
    // Create TMail Object
    oSmtp := TMail.Create(Application);
    oSmtp.LicenseCode := 'ES-D1508812687-00633-F3D2D5695CFDC674-8B92BA6D88715634';
  except on E: exception do
    begin
      ShowMessage(E.Message);
      exit;
    end;
  end;


  oSmtp.Charset := m_arCharset[24, 1];
  oSmtp.FromAddr := DM.QUsuariospar_mailcorreo.Text;

  // Add recipient's
  oSmtp.AddRecipientEx(ChAnsiToWide(trim(Destinatario)), 0);

  // Set subject
  oSmtp.Subject := ChAnsiToWide(Asunto);

  // Using HTML FORMAT to send mail
  // oSmtp.BodyFormat := 1;

  // Set body
  oSmtp.BodyText := ChAnsiToWide(Cuerpo);

  // Add attachments
  oSmtp.AddAttachment(ChAnsiToWide(Adjunto));

  // get all to, cc, bcc email address to an array
  Rcpts := oSmtp.Recipients;
  RcptBound := VarArrayHighBound(Rcpts, 1);

  oSmtp.ServerAddr := trim(DM.QUsuariospar_mailservidor.Text);
  oSmtp.Protocol := 0;

  // Most mordern SMTP servers require SSL/TLS connection now
  // ConnectTryTLS means if server supports SSL/TLS connection, SSL/TLS is used automatically
        //oSmtp.ConnectType := 1;

      oSmtp.ServerPort := strtoint(dm.QUsuariospar_mailpuerto.Text);
      oSmtp.UserName := trim(dm.QUsuariospar_mailusuario.Text);
      pas:=MimeDecodeString(dm.QUsuariospar_mailclave.Text);
      oSmtp.Password :=pas;
     // oSmtp.Password := MimeDecodeString(dm.QUsuariospar_mailclave.Text);

      if oSmtp.ServerPort =  25 then
      oSmtp.ConnectType := ConnectNormal else
  		oSmtp.ConnectType := ConnectTryTLS;

  if (RcptBound > 0) and (oSmtp.ServerAddr = '') then
  begin
    // To send email without specified smtp server, we have to send the emails one by one
    // to multiple recipients. That is because every recipient has different smtp server.
    DirectSend(oSmtp);
    exit;
  end;

  if oSmtp.SendMail() = 0 then begin
    ShowMessage('Mensaje enviado');
    dm.vp_usermailok := True;
    Exit;
    end
    else begin
    dm.vp_usermailok := False;
    ShowMessage(oSmtp.GetLastErrDescription());
end;
end;

end;

function TfrmMain.ChAnsiToWide(const StrA: WideString): WideString;
begin
Result := StrA;
end;

procedure TfrmMain.DirectSend(oSmtp: TMail);
var
  Rcpts: OleVariant;
  i, RcptBound: integer;
  RcptAddr: WideString;
begin
  Rcpts := oSmtp.Recipients;
  RcptBound := VarArrayHighBound(Rcpts, 1);
  for i := 0 to RcptBound do
  begin
    RcptAddr := VarArrayGet(Rcpts, i);
    oSmtp.ClearRecipient();
    oSmtp.AddRecipientEx(RcptAddr, 0);
    ShowMessage('Inicio de Envio de Mensaje' + RcptAddr);
    if oSmtp.SendMail() = 0 then
      ShowMessage('Mensaje enviado a ' +  RcptAddr + ' correctamente!')
    else
      ShowMessage('Fallo el Envio a ' + RcptAddr + ': ' + oSmtp.GetLastErrDescription());
  end;

end;

procedure TfrmMain.ConfiguracionCorreo1Click(Sender: TObject);
begin
  ActivaForma(TFrmConfCorreo, Tform(FrmConfCorreo));
end;

procedure TfrmMain.EnviarCorreo2(Destinatario, Asunto, Adjunto1, Adjunto2,
  Cuerpo: String);
var
  oSmtp: TMail;
  i: integer;
  Rcpts: OleVariant;
  RcptBound: integer;
  RcptAddr: WideString;
  oEncryptCert: TCertificate;
begin
  if Trim(DM.QUsuariospar_mailusuario.Text) = '' then begin
  DM.vp_usermailok := False;
  if trim(DM.QParametrospar_mailusuario.Text) = '' then
  begin
    ShowMessage('Debes indicar el Usuario de autenticacion de envio!');
    exit;
  end;

  if trim(Destinatario) = '' then
  begin
    ShowMessage('No existe el correo del destinatario!');
    exit;
  end;

  if trim(DM.QParametrospar_mailclave.Text) = '' then
  begin
    ShowMessage('Debes indicar la clave de autenticacion de envio!');
    exit;
  end;

  try
    // Create TMail Object
    oSmtp := TMail.Create(Application);
    oSmtp.LicenseCode := 'ES-D1508812687-00633-F3D2D5695CFDC674-8B92BA6D88715634';
  except on E: exception do
    begin
      ShowMessage(E.Message);
      exit;
    end;
  end;


  oSmtp.Charset := m_arCharset[24, 1];
  oSmtp.FromAddr := DM.QParametrospar_mailcorreo.Text;

  // Add recipient's
  oSmtp.AddRecipientEx(ChAnsiToWide(trim(Destinatario)), 0);

  // Set subject
  oSmtp.Subject := ChAnsiToWide(Asunto);

  // Using HTML FORMAT to send mail
  // oSmtp.BodyFormat := 1;

  // Set body
  oSmtp.BodyText := ChAnsiToWide(Cuerpo);

  // Add attachments
  oSmtp.AddAttachment(ChAnsiToWide(Adjunto1));
  oSmtp.AddAttachment(ChAnsiToWide(Adjunto2));

  // get all to, cc, bcc email address to an array
  Rcpts := oSmtp.Recipients;
  RcptBound := VarArrayHighBound(Rcpts, 1);

  oSmtp.ServerAddr := trim(DM.QParametrospar_mailservidor.Text);
  oSmtp.Protocol := 0;

  // Most mordern SMTP servers require SSL/TLS connection now
  // ConnectTryTLS means if server supports SSL/TLS connection, SSL/TLS is used automatically
	//oSmtp.ConnectType := 1;

      oSmtp.ServerPort := strtoint(dm.QParametrospar_mailpuerto.Text);
      oSmtp.UserName := trim(dm.QParametrospar_mailusuario.Text);
      oSmtp.Password := MimeDecodeString(dm.QParametrospar_mailclave.Text);

  		//oSmtp.ConnectType := ConnectSSLAuto;

  if (RcptBound > 0) and (oSmtp.ServerAddr = '') then
  begin
    // To send email without specified smtp server, we have to send the emails one by one
    // to multiple recipients. That is because every recipient has different smtp server.
    DirectSend(oSmtp);
    exit;
  end;

  if oSmtp.SendMail() = 0 then begin
    ShowMessage('Mensaje enviado');
    DeleteFile(Adjunto1);
    DeleteFile(Adjunto2);
    Exit;
    end
  else
    ShowMessage(oSmtp.GetLastErrDescription());
end;

/// Por Usuario
  if Trim(DM.QUsuariospar_mailusuario.Text) <> '' then begin
  if trim(DM.QUsuariospar_mailusuario.Text) = '' then
  begin
    ShowMessage('Debes indicar el Usuario de autenticacion de envio!');
    exit;
  end;

  if trim(Destinatario) = '' then
  begin
    ShowMessage('No existe el correo del destinatario!');
    exit;
  end;

  if trim(DM.QUsuariospar_mailclave.Text) = '' then
  begin
    ShowMessage('Debes indicar la clave de autenticacion de envio!');
    exit;
  end;

  try
    // Create TMail Object
    oSmtp := TMail.Create(Application);
    oSmtp.LicenseCode := 'ES-D1508812687-00633-F3D2D5695CFDC674-8B92BA6D88715634';
  except on E: exception do
    begin
      ShowMessage(E.Message);
      exit;
    end;
  end;


  oSmtp.Charset := m_arCharset[24, 1];
  oSmtp.FromAddr := DM.QUsuariospar_mailcorreo.Text;

  // Add recipient's
  oSmtp.AddRecipientEx(ChAnsiToWide(trim(Destinatario)), 0);

  // Set subject
  oSmtp.Subject := ChAnsiToWide(Asunto);

  // Using HTML FORMAT to send mail
  // oSmtp.BodyFormat := 1;

  // Set body
  oSmtp.BodyText := ChAnsiToWide(Cuerpo);

  // Add attachments
  oSmtp.AddAttachment(ChAnsiToWide(Adjunto1));
  oSmtp.AddAttachment(ChAnsiToWide(Adjunto2));

  // get all to, cc, bcc email address to an array
  Rcpts := oSmtp.Recipients;
  RcptBound := VarArrayHighBound(Rcpts, 1);

  oSmtp.ServerAddr := trim(DM.QUsuariospar_mailservidor.Text);
  oSmtp.Protocol := 0;

  // Most mordern SMTP servers require SSL/TLS connection now
  // ConnectTryTLS means if server supports SSL/TLS connection, SSL/TLS is used automatically
	    //oSmtp.ConnectType := 1;

      oSmtp.ServerPort := strtoint(dm.QUsuariospar_mailpuerto.Text);
      oSmtp.UserName := trim(dm.QUsuariospar_mailusuario.Text);
      oSmtp.Password := MimeDecodeString(dm.QUsuariospar_mailclave.Text);

      if oSmtp.ServerPort =  25 then
      oSmtp.ConnectType := ConnectNormal else
  		oSmtp.ConnectType := ConnectSSLAuto;

  if (RcptBound > 0) and (oSmtp.ServerAddr = '') then
  begin
    // To send email without specified smtp server, we have to send the emails one by one
    // to multiple recipients. That is because every recipient has different smtp server.
    DirectSend(oSmtp);
    exit;
  end;

  if oSmtp.SendMail() = 0 then begin
    ShowMessage('Mensaje enviado');
    DeleteFile(Adjunto1);
    DeleteFile(Adjunto2);
    dm.vp_usermailok := True;
    Exit;
    end
    else begin

    dm.vp_usermailok := False;
    ShowMessage(oSmtp.GetLastErrDescription());

end;


end;
end;


procedure TfrmMain.Actualizaciones1Click(Sender: TObject);
begin
  application.createform(TFrmActScripts, FrmActScripts);
  FrmActScripts.showmodal;
  FrmActScripts.release;
end;

procedure TfrmMain.tmr4Timer(Sender: TObject);
var
  texto: string;
  nombre, fven: string;
  rest, dias, minreq: Integer;
begin
        if dm.QParametrosUsa_FacturacionElectronica.Value then
        begin
          memonotificaciones.Clear;

          dm.QNotificaComprobantes.Close;
          dm.QNotificaComprobantes.SQL.Clear;

          // Restantes y vencimiento desde SecuenciaDGII + TipoNCF
          dm.QNotificaComprobantes.SQL.Clear;
          dm.QNotificaComprobantes.SQL.Add(
            'select '+
            '  (s.Cantidad - s.Ultima_secuencia_DGII) as Restantes, '+
            '  t.tip_codigo, t.nombre_dgii, '+
            '  s.emp_codigo, s.Tipo, s.Secuencia_Inicial_DGII, s.Ultima_secuencia_DGII, '+
            '  s.FechaVencimientoSecuenciaDGII, s.Activa, s.ID, s.Cantidad, '+
            '  s.cantidad_minima, '+
            '  DATEDIFF(day, GETDATE(), s.FechaVencimientoSecuenciaDGII) as DiasParaVencer '+
            'from SecuenciaDGII s '+
            'inner join TipoNCF t on t.emp_codigo = s.emp_codigo and s.Tipo = t.cod_dgii '+
            'where s.emp_codigo = :emp '+
            '  and s.Activa = 1 '+
            // Dispara si llega al mínimo O si vence pronto (o vencida)
            '  and ( (s.Cantidad - s.Ultima_secuencia_DGII) <= isnull(s.cantidad_minima, 0) '+
            '        or (s.FechaVencimientoSecuenciaDGII is not null '+
            '            and DATEDIFF(day, GETDATE(), s.FechaVencimientoSecuenciaDGII) <= :umbralDias) ) '+
            'order by t.nombre_dgii'
          );
          dm.QNotificaComprobantes.Parameters.ParamByName('emp').Value        := dm.QEmpresasEMP_CODIGO.Value;
          dm.QNotificaComprobantes.Parameters.ParamByName('umbralDias').Value := 30; // o el que quieras
          dm.QNotificaComprobantes.Open;

          memonotificaciones.Visible := False;

          if not dm.QNotificaComprobantes.RecordCount>0 then
          begin
            dm.QNotificaComprobantes.DisableControls;
            try
              dm.QNotificaComprobantes.First;
              while not dm.QNotificaComprobantes.Eof do
              begin
                 nombre := dm.QNotificaComprobantes.FieldByName('nombre_dgii').AsString;
                 rest   := dm.QNotificaComprobantes.FieldByName('Restantes').AsInteger;
                 dias   := dm.QNotificaComprobantes.FieldByName('DiasParaVencer').AsInteger;
                 fven   := dm.QNotificaComprobantes.FieldByName('FechaVencimientoSecuenciaDGII').AsString;
                 minreq := dm.QNotificaComprobantes.FieldByName('cantidad_minima').AsInteger;

                // 1) Notificación por pocos números
                if rest <= minreq then
                  memonotificaciones.Lines.Add(
                    Format('eNCF %s: quedan %d (mínimo %d).', [nombre, rest, minreq])
                  );

                // 2) Notificación por vencimiento (si tiene fecha)
                if fven <> '' then
                begin
                  if dias < 0 then
                    memonotificaciones.Lines.Add(
                      Format('eNCF %s: SECUENCIA VENCIDA hace %d día(s). (Venc: %s)', [nombre, Abs(dias), fven])
                    )
                  else if dias <= 30 then
                    memonotificaciones.Lines.Add(
                      Format('eNCF %s: vence en %d día(s). (Venc: %s)', [nombre, dias, fven])
                    );
                end;

                dm.QNotificaComprobantes.Next;
              end;
            finally
              dm.QNotificaComprobantes.EnableControls;
            end;

            // Mostrar si hay algo que decir
            memonotificaciones.Visible := (memonotificaciones.Lines.Count > 0);
            if memonotificaciones.Visible then
            begin
              lblAlerta.Caption := 'ALERTA !! : Comprobantes Electrónicos (folios/vencimiento). Click para ver';
              lblAlerta.Visible := True;
            end
            else
              lblAlerta.Visible := False;
          end
          else
          begin
            lblAlerta.Visible := False;
            memonotificaciones.Visible := False;
          end;
         end
          else
          begin
            dm.QNotificaComprobantes.Close;
            dm.QNotificaComprobantes.SQL.Clear;
            dm.QNotificaComprobantes.SQL.Add('select RIGHT(N.NCF_FIJO,3) FIJO, N.FECHAVENC, DATEDIFF(DAY,FechaVenc,GETDATE()) DIASVENC');
            dm.QNotificaComprobantes.SQL.Add('from NCF N');
            dm.QNotificaComprobantes.SQL.Add('WHERE FECHAVENC IS NOT NULL and isnull(Verificavenc,0) = 1');
            dm.QNotificaComprobantes.SQL.Add('AND DATEDIFF(DAY,FECHAVENC,GETDATE()) >=-30');
            //dm.QNotificaComprobantes.SQL.Add('AND YEAR(FECHAVENC)>=2019');
            dm.QNotificaComprobantes.SQL.Add('AND EMP_CODIGO ='+IntToStr(DM.vp_cia));
            dm.QNotificaComprobantes.Open;
            dm.QNotificaComprobantes.DisableControls;
            memonotificaciones.Visible := false;
            memonotificaciones.Clear;
            if dm.QNotificaComprobantes.RecordCount > 0 then
            begin
              //texto := '';

              dm.QNotificaComprobantes.First;
              while not dm.QNotificaComprobantes.Eof do
              begin
                //texto := texto + 'NCF '+dm.QNotificaComprobantes.FieldByName('ncf_fijo').AsString+
                //                          ' Está a punto de terminarse, ';
                if dm.QNotificaComprobantes.FieldByName('DIASVENC').Value < 0 then
                memonotificaciones.Lines.Add('NCF '+dm.QNotificaComprobantes.FieldByName('FIJO').AsString+
                                          ' Tiene '+dm.QNotificaComprobantes.FieldByName('DIASVENC').AsString+
                                          ' dias para vencer......') else
                memonotificaciones.Lines.Add('NCF '+dm.QNotificaComprobantes.FieldByName('FIJO').AsString+
                                          ' Tiene '+dm.QNotificaComprobantes.FieldByName('DIASVENC').AsString+
                                          ' dias vencidos......');

                dm.QNotificaComprobantes.Next;
              end;
              //memonotificaciones.Lines.Add(Trim(texto));
              lblAlerta.Caption := 'ALERTA !! : Comprobantes Fiscal a Vencer, Presione Click aqui para ver';
              lblAlerta.Visible := true;
            end;
          end;

  dm.QNotificaComprobantes.EnableControls;


end;

procedure TfrmMain.Cierredeturno1Click(Sender: TObject);
procedure EpsonReporteX();
  var
  err : integer;
  arch : textfile;
  puerto : string;
  DriverFiscal1 : TDriverFiscal;
  begin
    AssignFile(arch, '.\puerto.ini');
    reset(arch);
    readln(arch, puerto);
    closefile(arch);

    DriverFiscal1 := TDriverFiscal.Create(Self);
    DriverFiscal1.SerialNumber := '27-0163848-435';

    err := DriverFiscal1.IF_OPEN(puerto, 9600);
    err := DriverFiscal1.IF_WRITE('@DailyCloseX|P');
    err := DriverFiscal1.IF_CLOSE;

    DriverFiscal1.Destroy;
  end;

  procedure Tech_Tfhkaif_ReporteX();
   //cubre las BIXOLON/HKA80
   Var
     Stat: Integer;
     Respuesta: Boolean;
  begin
    OpenFpctrl(pchar(PuertoSerial[Impresora.Puerto -1]));
    try
      Respuesta := CheckFprinter();
      if Not Respuesta then
        begin
          ShowMessage('Impresora NO conectada');
          Abort;
        end;
      SendCmd(Stat, Err, 'I0X0');
    finally
      CloseFpctrl;
    end;
  end;

begin
  if MessageDlg('Está seguro que desea cerrar el turno?', mtConfirmation, [mbyes, mbno], 0) = mrYes then
  begin
    dm.getParametrosPrinterFiscal();
    {1{EPSON (TMU-220) , 2 CITIZEN ( CT-S310 ) ,3 CITIZEN (GSX-190), 4  {STAR (TSP650FP) }
    case Impresora.IDPrinter OF
      1 :  EpsonReporteX();
			2,3,4 :dm.vMaxProcesoMultiUso(1,Impresora);
        5: Tech_Tfhkaif_ReporteX();
    end;
  end;
end;

procedure TfrmMain.Cierredejornadafiscal1Click(Sender: TObject);
Procedure EpsonReporteZ();
  var
    err, dias, cant : integer;
    arch : textfile;
    puerto, ano1, mes1, dia1, ano2, mes2, dia2, vfecha1, vfecha2 : string;
    DriverFiscal1 : TDriverFiscal;
     begin
     AssignFile(arch, '.\puerto.ini');
      reset(arch);
      readln(arch, puerto);
      closefile(arch);

      DriverFiscal1 := TDriverFiscal.Create(Self);
      DriverFiscal1.SerialNumber := '27-0163848-435';

      err := DriverFiscal1.IF_OPEN(puerto, 9600);
      err := DriverFiscal1.IF_WRITE('@DailyCloseZ|P');
      err := DriverFiscal1.IF_CLOSE;

      DriverFiscal1.Destroy;
  end;

  procedure Tech_Tfhkaif_ReporteZ();
  Begin

    OpenFpctrl(pchar(PuertoSerial[Impresora.Puerto -1]));
    if Not CheckFprinter Then
    begin
      ShowMessage('Impresora NO conectada');
      Abort;
    end;
    SendCmd(Stat, Err, 'I0Z0');
    CloseFpctrl;
  End;

begin
  if MessageDlg('Está seguro que desea cerrar el la Jornada Fiscal?', mtConfirmation, [mbyes, mbno], 0) = mrYes then
  begin
    dm.getParametrosPrinterFiscal();
    case Impresora.IDPrinter OF
          1 : EpsonReporteZ();
			2,3,4 : dm.vMaxProcesoMultiUso(2,Impresora);
           5: Tech_Tfhkaif_ReporteZ();
    end;
  end;
end;

procedure TfrmMain.Cancelardocumentofiscalencurso1Click(Sender: TObject);
procedure EpsonCancelaDocFiscal();
var
  err, error: integer;
  arch : textfile;
  puerto : string;
  DriverFiscal1 : TDriverFiscal;
begin
  AssignFile(arch, '.\puerto.ini');
  reset(arch);
  readln(arch, puerto);                                                                 
  closefile(arch);

  DriverFiscal1 := TDriverFiscal.Create(Self);
  DriverFiscal1.SerialNumber := '27-0163848-435';

  err := DriverFiscal1.IF_OPEN(puerto, 9600);
  err := DriverFiscal1.IF_WRITE('@TicketCancel');
  err := DriverFiscal1.IF_CLOSE;

  DriverFiscal1.Destroy;

end;

  procedure Tech_Tfhkaif_CancelaDocFiscal();
  begin
    OpenFpctrl(pchar(PuertoSerial[Impresora.Puerto -1]));
    if Not CheckFprinter Then
    begin
      ShowMessage('Impresora NO conectada');
      Abort;
    end;

    SendCmd(stat, err, '7');
    CloseFpctrl;
  end;

begin
  dm.getParametrosPrinterFiscal();
  case Impresora.IDPrinter OF
        1 : EpsonCancelaDocFiscal;
		2,3,4 : dm.vMaxProcesoMultiUso(3,Impresora);
         5: Tech_Tfhkaif_CancelaDocFiscal(); 
  end;
end;



procedure TfrmMain.Extraccindelibrosdeventa1Click(Sender: TObject);
begin
  dm.getParametrosPrinterFiscal();
  case Impresora.IDPrinter OF
        1 : WinExec('EPSONDllExtraccionLV.exe', 1);
		2,3,4 : WinExec('epsLibroVenta.exe', 1);
    5: WinExec('BixolonExtracionLV.bat', 0);
  end;
end;

procedure TfrmMain.EstadoPrinter1Click(Sender: TObject);
var
  printerStatus:String;
begin
  dm.getParametrosPrinterFiscal();
      {1{EPSON (TMU-220) , 2 CITIZEN ( CT-S310 ) ,3 CITIZEN (GSX-190), 4  {STAR (TSP650FP) }
    case Impresora.IDPrinter OF
      1 : Showmessage('Opción no disponible para esta impresora');
			2,3,4 :begin
               printerStatus := dm.vMaxProcesoMultiUso(7,Impresora);
               if printerStatus = '8' then
                 Application.MessageBox('Impresora desconectada o fuera de línea','Error',MB_OK+MB_ICONERROR)
               else
                 Application.MessageBox(pchar(printerStatus),'Aviso',MB_OK+MB_ICONINFORMATION);
             end;
             5:Showmessage('Opción no disponible para esta impresora');
    end;
  if  Assigned(Impresora) then
    Impresora.Free();

end;

procedure TfrmMain.Reset1Click(Sender: TObject);
begin
  dm.getParametrosPrinterFiscal();
  case Impresora.IDPrinter OF
        1 : Showmessage('Opción no disponible para esta impresora');
	  2,3,4 : dm.vMaxProcesoMultiUso(8,Impresora);
    5:Showmessage('Opción no disponible para esta impresora');
  end;

  if  Assigned(Impresora) then
    Impresora.Free();
end;

procedure TfrmMain.banco_dispExecute(Sender: TObject);
begin
  activaforma(tfrmDispBanco, tform(frmDispBanco));
end;

procedure TfrmMain.CierredeldaCardnet1Click(Sender: TObject);
begin
ActivaForma(tfrmCierreDiaCardnet, Tform(frmCierreDiaCardnet));
end;

procedure TfrmMain.FacturacionElectronica1Click(Sender: TObject);
var
ExePath, Empresa, Usuario, Parametros: string;
begin
 // Ruta del ejecutable .NET
  //ExePath := 'C:\Ruta\\TuAplicacionDotNet.exe';
  ExePath := ExtractFilePath(ParamStr(0))+'\\FE\\Dasha_FE.exe';
  ShowMessage(ExePath);

  Empresa := 'MiEmpresa';
  Usuario := 'MiUsuario';

    // Parámetros que quieres pasar
  Parametros := Empresa + ' ' + Usuario;

  // Llamada a la aplicación .NET con los parámetros
  ShellExecute(0, 'open', PChar(ExePath), PChar(Parametros), nil, SW_SHOWNORMAL);

end;

procedure TfrmMain.btnSoporteClick(Sender: TObject);
var
  RutaSoporte, UrlSoporte: string;
  FrmDescarga: TForm;
  ProgressBar: TProgressBar;
  LabelInfo: TLabel;
  DescargaOK: Boolean;
begin
  RutaSoporte := ExtractFilePath(Application.ExeName) + 'UltraViewerQS.exe';
  UrlSoporte := 'https://get.ultraviewer.net/quicksupport/QSDownload2.aspx?code=6WDCND12';

  try
    // Si no existe, descargarlo
    if not FileExists(RutaSoporte) then
    begin
      DescargaOK := False;

      // Ventana simple de progreso
      FrmDescarga := TForm.Create(nil);
      try
        FrmDescarga.Width := 420;
        FrmDescarga.Height := 150;
        FrmDescarga.Position := poScreenCenter;
        FrmDescarga.BorderStyle := bsDialog;
        FrmDescarga.Caption := 'Soporte Técnico';

        LabelInfo := TLabel.Create(FrmDescarga);
        LabelInfo.Parent := FrmDescarga;
        LabelInfo.Left := 20;
        LabelInfo.Top := 20;
        LabelInfo.Caption := 'Descargando soporte técnico...';
        LabelInfo.Font.Size := 10;

        ProgressBar := TProgressBar.Create(FrmDescarga);
        ProgressBar.Parent := FrmDescarga;
        ProgressBar.Left := 20;
        ProgressBar.Top := 55;
        ProgressBar.Width := 360;
        ProgressBar.Height := 25;
        ProgressBar.Min := 0;
        ProgressBar.Max := 100;
        ProgressBar.Position := 10;

        FrmDescarga.Show;
        Application.ProcessMessages;

        // Simulación visual mientras descarga
        ProgressBar.Position := 25;
        LabelInfo.Caption := 'Conectando con servidor...';
        Application.ProcessMessages;

        // Descarga real usando Windows (sin SSL extra)
        if URLDownloadToFile(nil, PChar(UrlSoporte), PChar(RutaSoporte), 0, nil) = 0 then
        begin
          ProgressBar.Position := 100;
          LabelInfo.Caption := 'Descarga completada.';
          Application.ProcessMessages;
          Sleep(500);
          DescargaOK := True;
        end;

      finally
        FrmDescarga.Free;
      end;

      if not DescargaOK or (not FileExists(RutaSoporte)) then
      begin
        ShowMessage('No se pudo descargar UltraViewer.');
        Exit;
      end;
    end;

    // Ejecutar automáticamente
    ShellExecute(0, 'open', PChar(RutaSoporte), nil, nil, SW_SHOWNORMAL);

  except
    on E: Exception do
      ShowMessage('Error: ' + E.Message);
  end;
end;

end.



