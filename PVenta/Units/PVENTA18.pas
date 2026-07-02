unit PVENTA18;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids,
  DB, DateUtils, DIMime, Math, ADODB, QuerySearchDlgADO, ComCtrls, Menus,
  IBCustomDataSet, dxmdaset, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxDropDownEdit, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxDBLookupComboBox, frxClass, frxDBSet, cxContainer,
  cxTextEdit, cxMaskEdit, cxCalendar, QRPDFFilt, QRExport, QuickRpt, QRCtrls,
  vmaxFiscal, iFiscal, OCXFISLib_TLB, AppEvnts,Variants,Tfhkaif, frxBarcode,
  uJSON,DelphiZXingQRCode;

type
  
  TfrmFactura = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    edCliente: TEdit;
    btBuscaCli: TSpeedButton;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    tLimite: TEdit;
    Panel3: TPanel;
    Label9: TLabel;
    Label13: TLabel;
    DBEdit5: TDBEdit;
    tCajero: TEdit;
    Panel5: TPanel;
    btPedido: TBitBtn;
    btCotiza: TBitBtn;
    btBusca: TBitBtn;
    Label19: TLabel;
    DBEdit10: TDBEdit;
    btGrabar: TBitBtn;
    btLimpiar: TBitBtn;
    btSalir: TBitBtn;
    btBuscaCliente: TBitBtn;
    Search: TQrySearchDlgADO;
    QFactura: TADOQuery;
    dsFactura: TDataSource;
    DBEdit11: TDBEdit;
    dsDetalle: TDataSource;
    Label1: TLabel;
    btTipo: TSpeedButton;
    edTipo: TEdit;
    tTipo: TEdit;
    btNota: TBitBtn;
    Query1: TADOQuery;
    Label12: TLabel;
    btVendedor: TSpeedButton;
    dbVendedor: TDBEdit;
    tVendedor: TEdit;
    Label10: TLabel;
    btCondi: TSpeedButton;
    dbCondi: TDBEdit;
    tCondicion: TEdit;
    btnGuardaTemporal: TBitBtn;
    QFacTMP: TADOQuery;
    QDetalleTMP: TADOQuery;
    btnBuscaTemporal: TBitBtn;
    QVendedores: TADOQuery;
    QVendedoresVEN_CODIGO: TIntegerField;
    QVendedoresVEN_NOMBRE: TIBStringField;
    dsVend: TDataSource;
    DBEdit12: TDBEdit;
    btconduce: TBitBtn;
    btBalance: TBitBtn;
    ckItbis: TDBCheckBox;
    BtDescGral: TBitBtn;
    btBuscaProd: TSpeedButton;
    btPrecio: TSpeedButton;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    QSucursalalm_codigo: TIntegerField;
    btdelete: TBitBtn;
    QReceta: TADOQuery;
    QRecetaemp_codigo: TIntegerField;
    QRecetasuc_codigo: TIntegerField;
    QRecetafac_forma: TStringField;
    QRecetafac_numero: TIntegerField;
    QRecetatfa_codigo: TIntegerField;
    QRecetapro_codigo: TIntegerField;
    QRecetadet_secuencia: TIntegerField;
    QRecetadet_tipo: TStringField;
    QRecetadet_esf: TStringField;
    QRecetadet_cil: TStringField;
    QRecetadet_eje: TStringField;
    QRecetadet_add: TStringField;
    QRecetadet_dist: TStringField;
    QRecetadet_alt: TStringField;
    Label6: TLabel;
    btcaja: TSpeedButton;
    dbCaja: TDBEdit;
    tcaja: TEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label17: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Grid: TDBGrid;
    GridCuentas: TDBGrid;
    Panel4: TPanel;
    btdeletecuenta: TSpeedButton;
    btfindcuenta: TSpeedButton;
    QCuentas: TADOQuery;
    QCuentasemp_codigo: TIntegerField;
    QCuentassuc_codigo: TIntegerField;
    QCuentasfac_forma: TStringField;
    QCuentastfa_codigo: TIntegerField;
    QCuentasfac_numero: TIntegerField;
    QCuentasdet_secuencia: TIntegerField;
    QCuentascat_nombre: TStringField;
    QCuentasdet_monto: TBCDField;
    QCuentasdet_origen: TStringField;
    QCuentascat_cuenta: TStringField;
    dsCuentas: TDataSource;
    Label22: TLabel;
    btmoneda: TSpeedButton;
    tmoneda: TEdit;
    DBEdit15: TDBEdit;
    ckdomicilio: TDBCheckBox;
    QDetalle: TADOQuery;
    QDetalleDET_CANTDEVUELTA: TFloatField;
    QDetalleDET_CONITBIS: TIBStringField;
    QDetalleDET_COSTO: TFloatField;
    QDetalleDET_DESCUENTO: TFloatField;
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
    QDetalleCalcDesc: TFloatField;
    QDetalleDET_TOTAL: TFloatField;
    QDetalleDEP_CODIGO: TIntegerField;
    QDetalleDET_COMISION: TFloatField;
    QDetalleDET_OFERTA: TIBStringField;
    QDetalleDET_DESCMAX: TFloatField;
    QDetallePRO_SERVICIO: TIBStringField;
    QDetalleVEN_CODIGO: TIntegerField;
    QDetalleDET_LOTE: TIntegerField;
    QDetalleDET_VENCE: TIBStringField;
    QDetalleDET_TOTALDESC: TFloatField;
    QDetalleDET_TOTALITBIS: TFloatField;
    QDetalleDET_PRECIOMINIMO: TFloatField;
    QDetalleDET_ESCALA: TIBStringField;
    QDetalleDET_MANEJAESCALA: TIBStringField;
    QDetalleDET_MEDIDA: TIBStringField;
    QDetalleDET_COSTOEMP: TFloatField;
    QDetalleDET_PRECIO1: TFloatField;
    QDetalleDET_PRECIO2: TFloatField;
    QDetalleDET_PRECIO3: TFloatField;
    QDetalleDET_PRECIO4: TFloatField;
    QDetallePRO_COMBO: TIBStringField;
    QDetalleDET_PRECIOMINIMOEMP: TFloatField;
    QDetallePED_NUMERO: TIntegerField;
    QDetalleDET_NOTA: TMemoField;
    QDetalleSUC_CODIGO: TIntegerField;
    QDetalledet_cant_oferta: TBCDField;
    QDetalledet_selectivo_ad: TBCDField;
    QDetalledet_selectivo_con: TBCDField;
    QDetalledet_minimo_venta: TBCDField;
    QDetallemar_codigo: TIntegerField;
    QDetallepro_ctacosto: TStringField;
    QDetallepro_ctainvent: TStringField;
    QDetallepro_ctaingreso: TStringField;
    QDetallepre_codigo: TIntegerField;
    QDetallealm_codigo: TIntegerField;
    PopupMenu1: TPopupMenu;
    Crearnotaalproducto1: TMenuItem;
    Preventasdelproducto1: TMenuItem;
    Vercombodelproducto1: TMenuItem;
    Escalas1: TMenuItem;
    N1: TMenuItem;
    Consultarmovimiento1: TMenuItem;
    SpeedButton1: TSpeedButton;
    QDetallepro_ctadescuento: TStringField;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    lbBAL: TStaticText;
    lbDB: TStaticText;
    lbCR: TStaticText;
    QDetalledet_cantempaque: TBCDField;
    TabSheet3: TTabSheet;
    Label28: TLabel;
    DBEdit17: TDBEdit;
    Label27: TLabel;
    DBEdit16: TDBEdit;
    memocamion: TMemo;
    btcamion: TSpeedButton;
    QDetallepro_unidad_medida: TStringField;
    QDetalleUnidadID: TStringField;
    QDetalleMedida_Precio1: TBCDField;
    QDetalleMedida_Precio2: TBCDField;
    QDetalleMedida_Precio3: TBCDField;
    QDetalleMedida_Precio4: TBCDField;
    QDetalledet_cant_unidad_medida: TBCDField;
    QDetalleMedidorID: TIntegerField;
    QDetalleMedidor_Secuencia: TBCDField;
    QDetalleMedidor_Cantidad: TBCDField;
    QDetallepro_utilizamedidor: TStringField;
    DatosdelMedidor1: TMenuItem;
    QPedidos: TADOQuery;
    QPedidosemp_codigo: TIntegerField;
    QPedidossuc_codigo: TIntegerField;
    QPedidosfac_forma: TStringField;
    QPedidostfa_codigo: TIntegerField;
    QPedidosfac_numero: TIntegerField;
    QPedidosped_tipo: TStringField;
    QPedidosped_numero: TIntegerField;
    dsPedidos: TDataSource;
    QPedidosped_fecha: TDateTimeField;
    QPedidosped_nombre: TStringField;
    QPedidosped_total: TBCDField;
    QPedidosped_itbis: TBCDField;
    QPedidosmon_codigo: TIntegerField;
    QPedidosped_tasa: TBCDField;
    TabSheet4: TTabSheet;
    Panel1: TPanel;
    gridclinico: TDBGrid;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    QClinico: TADOQuery;
    dsClinico: TDataSource;
    Panel6: TPanel;
    ProgressBar1: TProgressBar;
    lbfacturas: TLabel;
    lbrecords: TLabel;
    Label29: TLabel;
    QClinicoemp_codigo: TIntegerField;
    QClinicosuc_codigo: TIntegerField;
    QClinicofac_forma: TStringField;
    QClinicotfa_codigo: TIntegerField;
    QClinicofac_numero: TIntegerField;
    QClinicodetalleid: TIntegerField;
    QClinicofacturaid: TBCDField;
    QClinicorecordid: TBCDField;
    QClinicofacturada_sigma: TStringField;
    QClinicotipo: TStringField;
    QClinicofecha: TDateTimeField;
    QClinicopaciente: TStringField;
    QClinicopoliza: TStringField;
    QClinicocobertura: TBCDField;
    QClinicoautorizacion: TStringField;
    N2: TMenuItem;
    Pantalladeproductos1: TMenuItem;
    Ajustedeinventario1: TMenuItem;
    DBEdit9: TDBEdit;
    Label18: TLabel;
    bttiponcf: TSpeedButton;
    ttiponcf: TEdit;
    DBEdit13: TDBEdit;
    btreceta: TMenuItem;
    Label15: TLabel;
    DBEdit4: TDBEdit;
    QDetallepro_UtilizaEnvio: TStringField;
    DatosdelEnvio1: TMenuItem;
    QEnvio: TADOQuery;
    QEnvioemp_codigo: TIntegerField;
    QEnviosuc_codigo: TIntegerField;
    QEnviofac_numero: TIntegerField;
    QEnviopro_codigo: TIntegerField;
    QEnvioIDEnvio: TIntegerField;
    QEnvioFecha: TDateTimeField;
    QEnvioCiudad_Origen: TStringField;
    QEnvioCiudad_Destino: TStringField;
    QEnvioNombre_envia: TStringField;
    QEnvioTelefono_Envia: TStringField;
    QEnvioNombre_Recibe: TStringField;
    QEnvioTelefono_Recibe: TStringField;
    QEnvioDescripcion: TStringField;
    QDetallepro_serializado: TStringField;
    NumerosdeserieFer1: TMenuItem;
    QMsnExistencia: TADOQuery;
    dsMsnExistencia: TDataSource;
    dblExistencia: TDBText;
    QMsnExistenciaDISPONIBLE2: TStringField;
    Panel7: TPanel;
    dsSerie: TDataSource;
    QSucursalDestino: TADOQuery;
    QSucursalDestinosuc_codigo: TIntegerField;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    dsSucDest: TDataSource;
    QEnvioenv_suc_destino: TIntegerField;
    QEnvioenv_status: TStringField;
    QSucursalemp_codigo: TIntegerField;
    QSucursalsuc_direccion: TStringField;
    QSucursalsuc_localidad: TStringField;
    QSucursalsuc_telefono: TStringField;
    QSucursalsuc_rnc: TStringField;
    RG_BuscaDet: TRadioGroup;
    QParametros: TADOQuery;
    QParametrosEMP_CODIGO: TIntegerField;
    QParametrosPAR_ALMACENVENTA: TIntegerField;
    QParametrosPAR_CODIGOCLIENTE: TIBStringField;
    QParametrosPAR_CODIGOPRODUCTO: TIBStringField;
    QParametrosPAR_FACFORMA: TIBStringField;
    QParametrosPAR_FORMATODES: TIntegerField;
    QParametrosPAR_FORMATODEV: TIntegerField;
    QParametrosPAR_FORMATONC: TIntegerField;
    QParametrosPAR_FORMATOND: TIntegerField;
    QParametrosPAR_FORMATORC: TIntegerField;
    QParametrosPAR_FORMATORI: TIntegerField;
    QParametrosPAR_ITBIS: TFloatField;
    QParametrosPAR_MOVNDE: TIntegerField;
    QParametrosPAR_TFACODIGO: TIntegerField;
    QParametrosPAR_TIPOPRECIO: TIBStringField;
    QParametrosPAR_CONTROLAMAXIMO: TIBStringField;
    QParametrosPAR_CONTROLAMINIMO: TIBStringField;
    QParametrosPAR_DEBAJOCOSTO: TIBStringField;
    QParametrosPAR_COMBOCOTIZACION: TIBStringField;
    QParametrosPAR_COMBOIMPDETALLE: TIBStringField;
    QParametrosPAR_COMBOREBAJA: TIBStringField;
    QParametrosPAR_VENDIGITOSLOTE: TIntegerField;
    QParametrosPAR_VENPERMITIR: TIBStringField;
    QParametrosPAR_VENVERIFICA: TIBStringField;
    QParametrosPAR_CONTEOLIMPIA: TIBStringField;
    QParametrosPAR_PREDESCGLOBAL: TIBStringField;
    QParametrosPAR_PREDESCRIP1: TIBStringField;
    QParametrosPAR_PREDESCRIP2: TIBStringField;
    QParametrosPAR_PREDESCRIP3: TIBStringField;
    QParametrosPAR_PREDESCRIP4: TIBStringField;
    QParametrosPAR_FACANULA: TIBStringField;
    QParametrosPAR_FACDIASANULA: TIntegerField;
    QParametrosPAR_FACDIASMODIFICA: TIntegerField;
    QParametrosPAR_FACDISPONIBLE: TIBStringField;
    QParametrosPAR_FACMODIFICA: TIBStringField;
    QParametrosPAR_FACSELPRECIO: TIBStringField;
    QParametrosPAR_FACTEMPORAL: TIBStringField;
    QParametrosPAR_DEVDIAS: TIntegerField;
    QParametrosPAR_DEVEFECTIVO: TIBStringField;
    QParametrosPAR_FORMATOCUADRE: TIntegerField;
    QParametrosPAR_AHORA1: TDateTimeField;
    QParametrosPAR_AHORA2: TDateTimeField;
    QParametrosPAR_BHORA1: TDateTimeField;
    QParametrosPAR_BHORA2: TDateTimeField;
    QParametrosPAR_FACMODPRECIO: TIBStringField;
    QParametrosPAR_FORMATOCON: TIntegerField;
    QParametrosPAR_CAJA: TIBStringField;
    QParametrosPAR_IMPCODIGOBARRA: TIBStringField;
    QParametrosCPA_CODIGOCLIENTE: TIntegerField;
    QParametrosPAR_LIMITEINICIAL: TFloatField;
    QParametrosPAR_MOVCK: TIntegerField;
    QParametrosPAR_MOVCARGO: TIntegerField;
    QParametrosPAR_PRECIOLETRA_0: TIBStringField;
    QParametrosPAR_PRECIOLETRA_1: TIBStringField;
    QParametrosPAR_PRECIOLETRA_2: TIBStringField;
    QParametrosPAR_PRECIOLETRA_3: TIBStringField;
    QParametrosPAR_PRECIOLETRA_4: TIBStringField;
    QParametrosPAR_PRECIOLETRA_5: TIBStringField;
    QParametrosPAR_PRECIOLETRA_6: TIBStringField;
    QParametrosPAR_PRECIOLETRA_8: TIBStringField;
    QParametrosPAR_PRECIOLETRA_9: TIBStringField;
    QParametrosPAR_PRECIOLETRA_7: TIBStringField;
    QParametrosPAR_NUEVOUSADO: TIBStringField;
    QParametrosPAR_TEXTOBARRA1: TIBStringField;
    QParametrosPAR_TEXTOBARRA2: TIBStringField;
    QParametrosPAR_TEXTOBARRA3: TIBStringField;
    QParametrosPAR_TEXTOBARRA4: TIBStringField;
    QParametrosPAR_TEXTOBARRA5: TIBStringField;
    QParametrosPAR_OPC5TALINEA: TIBStringField;
    QParametrosPAR_TEXTOBARRA6: TIBStringField;
    QParametrosPAR_OPC1RALINEA: TIBStringField;
    QParametrosPAR_PREGUNTAPEQ: TIBStringField;
    QParametrosPAR_IGUALAREF: TIBStringField;
    QParametrosPAR_ITBISDEFECTO: TIBStringField;
    QParametrosPAR_FPADESEM: TIntegerField;
    QParametrosPAR_FACBAJARLINEA: TIBStringField;
    QParametrosPAR_FACTOTALIZAPIE: TIBStringField;
    QParametrosPAR_FACREPITEPROD: TIBStringField;
    QParametrosPAR_DEBAJOPRECIO: TIBStringField;
    QParametrosPAR_FACCONITBIS: TIBStringField;
    QParametrosPAR_FACESCALA: TIBStringField;
    QParametrosPAR_FACMEDIDA: TIBStringField;
    QParametrosPAR_PRECIOEMP: TIBStringField;
    QParametrosPAR_PRECIOUND: TIBStringField;
    QParametrosPAR_FISICOSOLOLLENO: TIBStringField;
    QParametrosPAR_DEVFORMA: TIBStringField;
    QParametrosPAR_FORMATOCOT: TIntegerField;
    QParametrosPAR_INVMOSTRARVENCE: TIBStringField;
    QParametrosPAR_VERIMAGEN: TIBStringField;
    QParametrosPAR_TKMENSAJE1: TIBStringField;
    QParametrosPAR_TKMENSAJE2: TIBStringField;
    QParametrosPAR_TKMENSAJE3: TIBStringField;
    QParametrosPAR_TKMENSAJE4: TIBStringField;
    QParametrosPAR_TKCLAVEDELETE: TIBStringField;
    QParametrosPAR_TKCLAVEMODIFICA: TIBStringField;
    QParametrosPAR_COMBINAORIGINAL: TIBStringField;
    QParametrosPAR_COMBINAFABRIC: TIBStringField;
    QParametrosPAR_TKCLAVECREDITO: TIBStringField;
    QParametrosPAR_TKCLAVECANCELA: TIBStringField;
    QParametrosPAR_INVEMPRESA: TIntegerField;
    QParametrosPAR_INVALMACEN: TIntegerField;
    QParametrosMON_CODIGO: TIntegerField;
    QParametrosPAR_SOLGENERACHEQUE: TIBStringField;
    QParametrospar_invprecioconduce: TStringField;
    QParametrospar_mailservidor: TStringField;
    QParametrospar_mailcorreo: TStringField;
    QParametrospar_mailusuario: TStringField;
    QParametrospar_mailclave: TStringField;
    QParametrospar_mailpuerto: TStringField;
    QParametrospar_itbisincluido: TStringField;
    QParametroscaj_codigo: TIntegerField;
    QParametrospar_domicilio: TStringField;
    QParametrospar_monto_domicilio: TBCDField;
    QParametrospar_copias_domicilio: TIntegerField;
    QParametrospar_beneficio: TBCDField;
    QParametrospar_tkclavereimprime: TStringField;
    QParametrospar_igualartelefonocliente: TStringField;
    QParametrospar_valor_punto: TBCDField;
    QParametrospar_punto_principal: TBCDField;
    QParametrospar_punto_depen: TBCDField;
    QParametrospar_redondeo: TStringField;
    QParametrospar_barra_header: TMemoField;
    QParametrospar_fac_preimpresa: TStringField;
    QParametrospar_preciound_m: TStringField;
    QParametrospar_precioemp_m: TStringField;
    QParametrospar_fac_oferta: TStringField;
    QParametrospar_nombre_familia: TStringField;
    QParametrospar_nombre_depto: TStringField;
    QParametrospar_nombre_color: TStringField;
    QParametrospar_nombre_marca: TStringField;
    QParametrospar_inv_compra_centro_costo: TStringField;
    QParametrospar_imprime_logo: TStringField;
    QParametrospar_arch_copiar_colector: TStringField;
    QParametrospar_arch_recibe_colector: TStringField;
    QParametrospar_delimitador_envia: TStringField;
    QParametrospar_delimitador_recibe: TStringField;
    QParametrospar_modifica_fecha_factura: TStringField;
    QParametrospar_pago_mayor_balance: TStringField;
    QParametrospar_nota_orden_servicio: TMemoField;
    QParametrospar_controlar: TStringField;
    QParametrospar_formato_preimpreso: TStringField;
    QParametrospar_usuario_cuadra: TStringField;
    QParametrospar_inv_entrada_modifica_precio: TStringField;
    QParametrospar_movtk: TStringField;
    QParametrospar_visualizadesc: TStringField;
    QParametrospar_visualiza_selectivo: TStringField;
    QParametrospar_cantidad_primero: TStringField;
    QParametrospar_busqueda_porciento: TStringField;
    QParametrospar_busqueda_cxp: TStringField;
    QParametrospar_moneda_local: TIntegerField;
    QParametrospar_envio: TMemoField;
    QParametrospar_nota_cotizacion: TMemoField;
    QParametrospar_almacendevolucion: TIntegerField;
    QParametrospar_boletos_monto: TBCDField;
    QParametrospar_boletos_cantidad: TIntegerField;
    QParametrospar_ticket_itbis: TStringField;
    QParametrospar_ftp_site: TStringField;
    QParametrospar_ftp_usuario: TStringField;
    QParametrospar_ftp_password: TStringField;
    QParametrospar_ftp_ruta: TStringField;
    QParametrospar_modifica_precio_automatico: TStringField;
    QParametrospar_inv_forma_inventario: TStringField;
    QParametrospar_visualizar_cant_empaque: TStringField;
    QParametrospar_imprimir_calculo_empaque: TStringField;
    QParametrospar_inv_transferencia_auto: TStringField;
    QParametrospar_validar_serie_en_inventario: TStringField;
    QParametrospar_boletos_monto_patrocinador: TBCDField;
    QParametrospar_boletos_cantidad_patrocinador: TIntegerField;
    QParametrospar_movdc: TIntegerField;
    QParametrospar_busqueda_dejar_ultimo: TStringField;
    QParametrospar_compras_visualiza_diferencia: TStringField;
    QParametrospar_genera_puntos_credito: TStringField;
    QParametrospar_inv_unidad_medida: TStringField;
    QParametrospar_numerofactura_tipo: TStringField;
    QParametrospar_facturarcero: TStringField;
    QParametrospar_textobarra7: TStringField;
    QParametrospar_opc6talinea: TStringField;
    QParametrospar_opc7malinea: TStringField;
    QParametrosIdioma: TStringField;
    QParametrospar_compras_valores_aut: TStringField;
    QParametrospar_inv_imprime_comentario: TStringField;
    QParametrospar_aplica_desc_por_rango_venta: TStringField;
    QParametrospar_cantidad_caducidad: TIntegerField;
    QParametrospar_periodo_caducidad: TStringField;
    QParametrospar_imprimir_sin_detalle_RI: TStringField;
    QParametroscot_dias_valides: TIntegerField;
    QParametrosPAR_FORMATOENVIOCON: TIntegerField;
    QParametrospar_impresora_boleto: TStringField;
    QFacturaCAJ_CODIGO: TIntegerField;
    QFacturaCLI_CODIGO: TIntegerField;
    QFacturaCOT_NUMERO: TIntegerField;
    QFacturaCPA_CODIGO: TIntegerField;
    QFacturaEMP_CODIGO: TIntegerField;
    QFacturaFAC_ABONO: TBCDField;
    QFacturaFAC_DESCUENTO: TBCDField;
    QFacturaFAC_DIRECCION: TStringField;
    QFacturaFAC_FAX: TStringField;
    QFacturaFAC_FECHA: TDateTimeField;
    QFacturaFAC_FORMA: TStringField;
    QFacturaFAC_ITBIS: TBCDField;
    QFacturaFAC_LOCALIDAD: TStringField;
    QFacturaFAC_NOMBRE: TStringField;
    QFacturaFAC_NUMERO: TIntegerField;
    QFacturaFAC_OTROS: TBCDField;
    QFacturaFAC_STATUS: TStringField;
    QFacturaFAC_TELEFONO: TStringField;
    QFacturaFAC_TOTAL: TBCDField;
    QFacturaPED_NUMERO: TIntegerField;
    QFacturaTFA_CODIGO: TIntegerField;
    QFacturaUSU_CODIGO: TIntegerField;
    QFacturaVEN_CODIGO: TIntegerField;
    QFacturaCLI_REFERENCIA: TStringField;
    QFacturaALM_CODIGO: TIntegerField;
    QFacturaFAC_VENCE: TDateTimeField;
    QFacturaFAC_COMISION: TBCDField;
    QFacturaFAC_MENSAJE1: TStringField;
    QFacturaFAC_MENSAJE2: TStringField;
    QFacturaFAC_MENSAJE3: TStringField;
    QFacturaFAC_PORCCOMISION: TBCDField;
    QFacturaFAC_CUOTAS: TIntegerField;
    QFacturaFAC_HORA: TStringField;
    QFacturaCON_NUMERO: TIntegerField;
    QFacturaFAC_ANO: TIntegerField;
    QFacturaFAC_MES: TIntegerField;
    QFacturaFAC_CONITBIS: TStringField;
    QFacturaFAC_DEVUELTO: TBCDField;
    QFacturaMON_CODIGO: TIntegerField;
    QFacturaSUC_CODIGO: TIntegerField;
    QFacturaFAC_DOMICILIO: TStringField;
    QFacturafac_comisionpagada: TBCDField;
    QFacturafac_caja: TIntegerField;
    QFacturapro_codigo: TIntegerField;
    QFacturaNCF_Fijo: TStringField;
    QFacturaNCF_Secuencia: TBCDField;
    QFacturafac_selectivo_ad: TBCDField;
    QFacturafac_selectivo_con: TBCDField;
    QFacturafac_hold: TStringField;
    QFacturafac_rnc: TStringField;
    QFacturaOrdenID: TStringField;
    QFacturaPlaca: TStringField;
    QFacturaChofer: TStringField;
    QFacturaModelo: TStringField;
    QFacturaMarca: TStringField;
    QFacturaCompania: TStringField;
    QFacturaCamionID: TIntegerField;
    QFacturaMetraje: TBCDField;
    QFacturafac_interes: TBCDField;
    QFacturatip_codigo: TIntegerField;
    QFacturacot_proyecto: TStringField;
    QFacturaSubTotal: TFloatField;
    QDetallepro_UtilizaRenta: TStringField;
    DS_1: TDataSource;
    QVerificaNCF: TADOQuery;
    QDatos: TADOQuery;
    DS_UNIDAD: TDataSource;
    QFacturaFAC_NOTA: TMemoField;
    DBGrid_1: TDBGrid;
    QSelectIncrem1: TADOQuery;
    ed1: TEdit;
    QDetalleSubPedido: TStringField;
    QDetalleOrden: TStringField;
    QDetalleSecuencia: TIntegerField;
    QDetalleTMPDET_CANTDEVUELTA: TFloatField;
    QDetalleTMPDET_CANTIDAD: TFloatField;
    QDetalleTMPDET_CONITBIS: TIBStringField;
    QDetalleTMPDET_COSTO: TFloatField;
    QDetalleTMPDET_DESCUENTO: TFloatField;
    QDetalleTMPDET_ITBIS: TFloatField;
    QDetalleTMPDET_PRECIO: TFloatField;
    QDetalleTMPDET_SECUENCIA: TIntegerField;
    QDetalleTMPDET_STATUS: TIBStringField;
    QDetalleTMPEMP_CODIGO: TIntegerField;
    QDetalleTMPFAC_FORMA: TIBStringField;
    QDetalleTMPFAC_NUMERO: TIntegerField;
    QDetalleTMPPRO_BARRA: TIBStringField;
    QDetalleTMPPRO_NOMBRE: TIBStringField;
    QDetalleTMPPRO_CODIGO: TIntegerField;
    QDetalleTMPPRO_RFABRIC: TIBStringField;
    QDetalleTMPPRO_RORIGINAL: TIBStringField;
    QDetalleTMPTFA_CODIGO: TIntegerField;
    QDetalleTMPCalcItbis: TFloatField;
    QDetalleTMPCalcDesc: TFloatField;
    QDetalleTMPPrecioItbis: TFloatField;
    QDetalleTMPValor: TFloatField;
    QDetalleTMPDET_TOTAL: TFloatField;
    QDetalleTMPDEP_CODIGO: TIntegerField;
    QDetalleTMPDET_COMISION: TFloatField;
    QDetalleTMPDET_OFERTA: TIBStringField;
    QDetalleTMPDET_DESCMAX: TFloatField;
    QDetalleTMPPRO_SERVICIO: TIBStringField;
    QDetalleTMPVEN_CODIGO: TIntegerField;
    QDetalleTMPDET_LOTE: TIntegerField;
    QDetalleTMPDET_VENCE: TIBStringField;
    QDetalleTMPDET_TOTALDESC: TFloatField;
    QDetalleTMPDET_TOTALITBIS: TFloatField;
    QDetalleTMPDET_PRECIOMINIMO: TFloatField;
    QDetalleTMPDET_ESCALA: TIBStringField;
    QDetalleTMPDET_MANEJAESCALA: TIBStringField;
    QDetalleTMPDET_MEDIDA: TIBStringField;
    QDetalleTMPDET_COSTOEMP: TFloatField;
    QDetalleTMPDET_PRECIO1: TFloatField;
    QDetalleTMPDET_PRECIO2: TFloatField;
    QDetalleTMPDET_PRECIO3: TFloatField;
    QDetalleTMPDET_PRECIO4: TFloatField;
    QDetalleTMPPRO_COMBO: TIBStringField;
    QDetalleTMPDET_PRECIOMINIMOEMP: TFloatField;
    QDetalleTMPPED_NUMERO: TIntegerField;
    QDetalleTMPDET_NOTA: TMemoField;
    QDetalleTMPSUC_CODIGO: TIntegerField;
    QDetalleTMPdet_cant_oferta: TBCDField;
    QDetalleTMPdet_selectivo_ad: TBCDField;
    QDetalleTMPdet_selectivo_con: TBCDField;
    QDetalleTMPdet_minimo_venta: TBCDField;
    QDetalleTMPmar_codigo: TIntegerField;
    QDetalleTMPpro_ctacosto: TStringField;
    QDetalleTMPpro_ctainvent: TStringField;
    QDetalleTMPpro_ctaingreso: TStringField;
    QDetalleTMPpre_codigo: TIntegerField;
    QDetalleTMPalm_codigo: TIntegerField;
    QDetalleTMPpro_ctadescuento: TStringField;
    QDetalleTMPdet_cantempaque: TBCDField;
    QDetalleTMPpro_unidad_medida: TStringField;
    QDetalleTMPUnidadID: TStringField;
    QDetalleTMPMedida_Precio1: TBCDField;
    QDetalleTMPMedida_Precio2: TBCDField;
    QDetalleTMPMedida_Precio3: TBCDField;
    QDetalleTMPMedida_Precio4: TBCDField;
    QDetalleTMPdet_cant_unidad_medida: TBCDField;
    QDetalleTMPMedidorID: TIntegerField;
    QDetalleTMPMedidor_Secuencia: TBCDField;
    QDetalleTMPMedidor_Cantidad: TBCDField;
    QDetalleTMPpro_utilizamedidor: TStringField;
    QDetalleTMPpro_UtilizaEnvio: TStringField;
    QDetalleTMPpro_serializado: TStringField;
    QDetalleTMPpro_UtilizaRenta: TStringField;
    QDetalleTMPSubPedido: TStringField;
    QDetalleTMPOrden: TStringField;
    QDetalleTMPSecuencia: TIntegerField;
    QMsnExistenciaUBICACION: TStringField;
    dbtxtUBICACION: TDBText;
    lblRecargos: TLabel;
    dbedt_RECARGOS: TDBEdit;
    QFacturaRecargo: TCurrencyField;
    Label20: TLabel;
    lbPedido: TLabel;
    dbedtPedidoNo: TDBEdit;
    lbReferencia: TLabel;
    dbedtReferencia: TDBEdit;
    QFacturaPedidoNo: TStringField;
    QFacturaReferencia: TStringField;
    chkTipoFacHotel: TCheckBox;
    LbPropinaLegal: TLabel;
    dbedtFAC_PROPINA: TDBEdit;
    QFacturaFAC_PROPINA: TCurrencyField;
    dbedtNumReserva: TDBEdit;
    btnReserva: TSpeedButton;
    edtNoReserva: TEdit;
    QFacturaNUMERO_RESERVA: TIntegerField;
    qBuscaProdReserva: TADOQuery;
    QMsnExistenciaALMACEN: TIntegerField;
    ExistenciaxAlmacen1: TMenuItem;
    qVerificaItbis: TADOQuery;
    Lista: TListBox;
    QDetalleDET_ITBIS: TFloatField;
    QDetalleCalcItbis: TFloatField;
    QDetalleDET_PRECIO: TFloatField;
    QDetallePrecioItbis: TFloatField;
    QDetalleValor: TFloatField;
    QDetalleDET_CANTIDAD: TFloatField;
    Label23: TLabel;
    dbedtFAC_SERVICIOS: TDBEdit;
    QFacturaFAC_SERVICIOS: TFloatField;
    QFacturaFAC_TASA: TFloatField;
    qLiqTicket: TADOQuery;
    qLiqTicketPED_FICHA: TStringField;
    qLiqTicketVENDEDOR: TStringField;
    qLiqTicketTOTAL: TCurrencyField;
    qLiqTicketTOTAL_LET: TStringField;
    qLiqTicketCODIGO: TStringField;
    qLiqTicketPRODUCTO: TStringField;
    qLiqTicketCANTIDAD: TCurrencyField;
    qLiqTicketDET_PRECIO: TCurrencyField;
    qLiqTicketIMPORTE: TCurrencyField;
    qLiqTicketPED_FECHA: TDateField;
    qLiqTicketPED_NUMERO: TIntegerField;
    DB_Liq_Ticket: TfrxDBDataset;
    Rpt_Liq_Ticket: TfrxReport;
    LBReserva: TLabel;
    DEdt_Desde: TcxDateEdit;
    DEdt_Hasta: TcxDateEdit;
    lbHasta: TLabel;
    qBuscaProdLiqTickets: TADOQuery;
    qUpdateTicketLiq: TADOQuery;
    QEnviotfa_codigo: TIntegerField;
    qOrdenesTaller: TADOQuery;
    dsOrdenesTaller: TDataSource;
    qOrdenesTalleremp_codigo: TIntegerField;
    qOrdenesTallersuc_codigo: TIntegerField;
    qOrdenesTallerped_numero: TIntegerField;
    qOrdenesTallerped_nombre: TStringField;
    qOrdenesTallerped_fecha: TDateField;
    qOrdenesTallerped_total: TCurrencyField;
    qOrdenesTallerped_itbis: TCurrencyField;
    qOrdenesTallermon_codigo: TIntegerField;
    qOrdenesTallerped_tasa: TCurrencyField;
    qDetalleOrdenTaller: TADOQuery;
    qDetalleOrdenTallerPro_codigo: TIntegerField;
    qDetalleOrdenTallerpro_roriginal: TStringField;
    qDetalleOrdenTallerpro_rfabric: TStringField;
    qDetalleOrdenTallerdet_medida: TStringField;
    qDetalleOrdenTallerDET_CANTIDAD: TCurrencyField;
    qDetalleOrdenTallerDET_PRECIO: TCurrencyField;
    qDetalleOrdenTallerDET_ITBIS: TCurrencyField;
    qDetalleOrdenTallerDET_DESCUENTO: TCurrencyField;
    qDetalleOrdenTallerped_total: TCurrencyField;
    qDetalleOrdenTallerped_itbis: TCurrencyField;
    qDetalleOrdenTallermon_codigo: TIntegerField;
    qDetalleOrdenTallerped_tasa: TCurrencyField;
    qDetalleOrdenTallerdet_descripcion: TStringField;
    qDetalleOrdenTallerpro_costo: TCurrencyField;
    qDetalleOrdenTallerfam_codigo: TIntegerField;
    qDetalleOrdenTallerdet_manejaescala: TStringField;
    qDetalleOrdenTallerpro_servicio: TStringField;
    qDetalleOrdenTallerdet_nota: TMemoField;
    qDetalleOrdenTallerdep_codigo: TIntegerField;
    qDetalleOrdenTallerpro_itbis: TStringField;
    qDetalleOrdenTallerdet_escala: TStringField;
    qOrdenesTallersubtotal: TCurrencyField;
    qOrdenesTallerdescuento: TCurrencyField;
    qUpdateOrdenesTaller: TADOQuery;
    qOrdenesTallernum: TIntegerField;
    DB_qFacturaOrdTaller: TfrxDBDataset;
    qFacturaOrdTaller: TADOQuery;
    qFacturaOrdTallerSUCURSAL: TStringField;
    qFacturaOrdTallerDIRECCION: TStringField;
    qFacturaOrdTallerTELEFONO: TStringField;
    qFacturaOrdTallerFAX: TStringField;
    qFacturaOrdTallerEMAIL: TStringField;
    qFacturaOrdTallerRNC: TStringField;
    qFacturaOrdTallerNCF: TStringField;
    qFacturaOrdTallerTIPO_NCF: TStringField;
    qFacturaOrdTallerNCF_VENCE: TDateTimeField;
    qFacturaOrdTallerFECHA: TDateTimeField;
    qFacturaOrdTallerVENCE: TDateTimeField;
    qFacturaOrdTallerNUM: TIntegerField;
    qFacturaOrdTallerORDEN: TIntegerField;
    qFacturaOrdTallerCONDICION: TStringField;
    qFacturaOrdTallerCLI_RNC: TStringField;
    qFacturaOrdTallerCLIENTE: TStringField;
    qFacturaOrdTallerPROPIETARIO: TStringField;
    qFacturaOrdTallerVEH_PLACA: TStringField;
    qFacturaOrdTallerVEH_TIPO: TStringField;
    qFacturaOrdTallerVEH_MARCA: TStringField;
    qFacturaOrdTallerVEH_MODELO: TStringField;
    qFacturaOrdTallerVEH_YEAR: TIntegerField;
    qFacturaOrdTallerVEH_CHASSIS: TStringField;
    qFacturaOrdTallerVEH_KILOM: TIntegerField;
    qFacturaOrdTallerVEH_NIV: TStringField;
    qFacturaOrdTallerTIPO: TStringField;
    qFacturaOrdTallerPRODUCTO: TStringField;
    qFacturaOrdTallerCANT: TBCDField;
    qFacturaOrdTallerPRECIO: TBCDField;
    qFacturaOrdTallerSUBTOTAL: TBCDField;
    qFacturaOrdTallerDESC_SERV: TBCDField;
    qFacturaOrdTallerDESC_PIEZAS: TBCDField;
    qFacturaOrdTallerITBIS: TBCDField;
    qFacturaOrdTallerTOTAL: TBCDField;
    qFacturaOrdTallerVEH_COLOR: TStringField;
    qFacturaOrdTallerLOGO: TBlobField;
    Rpt_FacOrdTaller: TfrxReport;
    QUltPrecio: TADOQuery;
    dsUltimoPrecio: TDataSource;
    dbtxtUlmPRecio: TDBText;
    QUltPrecioPRECIO: TStringField;
    qReservas: TADOQuery;
    chkMail: TCheckBox;
    pnCorreo: TPanel;
    mmo1: TMemo;
    qEjecutar: TADOQuery;
    QMsnExistenciaDISP: TFloatField;
    qVerProductos: TADOQuery;
    qAplicaNC: TADOQuery;
    QNota: TADOQuery;
    QNotaEMP_CODIGO: TIntegerField;
    QNotaFAC_FORMA: TIBStringField;
    QNotaTFA_CODIGO: TIntegerField;
    QNotaFAC_NUMERO: TIntegerField;
    QNotaNCR_NUMERO: TIntegerField;
    QNotaNCR_MONTO: TFloatField;
    QNotaNCR_DISPONIBLE: TFloatField;
    QNotasuc_codigo: TIntegerField;
    QSerie: TADOQuery;
    QSerieEMP_CODIGO: TIntegerField;
    QSerieFAC_FORMA: TStringField;
    QSerieFAC_NUMERO: TIntegerField;
    QSeriePRO_CODIGO: TIntegerField;
    QSerieSER_NUMERO: TStringField;
    QSerieSER_SECUENCIA: TIntegerField;
    QSerieTFA_CODIGO: TIntegerField;
    QSerieSUC_CODIGO: TIntegerField;
    qActulizaProd: TADOQuery;
    QFacturaNIF: TStringField;
    pnMsgImpresion: TPanel;
    lblWait: TLabel;
    QFacturaTdesc_gral: TCurrencyField;
    QFacturaporc_desc_gral: TCurrencyField;
    ApplicationEvents1: TApplicationEvents;
    Timer1: TTimer;
    ckcopia: TCheckBox;
    Rpt_Envio: TfrxReport;
    frxBarCodeObject1: TfrxBarCodeObject;
    Label11: TLabel;
    DBEdit6: TDBEdit;
    Label16: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label21: TLabel;
    Label30: TLabel;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    lbItbis: TLabel;
    QFacturaTdesc_gral_sin_Itbis: TCurrencyField;
    qGrabaCombos: TADOQuery;
    qDeleteCombos: TADOQuery;
    qImpCardNet: TADOQuery;
    QDetalleCalcItbisGral: TCurrencyField;
    qGenNCF: TADOQuery;
    QEnvioDescripcion2: TStringField;
    dsEnvios: TDataSource;
    Rpt_Envio_Emtraba: TfrxReport;
    QEnviofacpagodestino: TBooleanField;
    MDDetalle: TdxMemData;
    MDDetallepro_codigo: TIntegerField;
    MDDetallecantidadund: TCurrencyField;
    MDDetallecantidademp: TCurrencyField;
    qInsertSerie: TADOQuery;
    GridSerie: TStringGrid;
    QFacTMPCAJ_CODIGO: TIntegerField;
    QFacTMPCLI_CODIGO: TIntegerField;
    QFacTMPCOT_NUMERO: TIntegerField;
    QFacTMPCPA_CODIGO: TIntegerField;
    QFacTMPFAC_ABONO: TBCDField;
    QFacTMPEMP_CODIGO: TIntegerField;
    QFacTMPFAC_DIRECCION: TStringField;
    QFacTMPFAC_FAX: TStringField;
    QFacTMPFAC_FECHA: TDateTimeField;
    QFacTMPFAC_FORMA: TStringField;
    QFacTMPFAC_LOCALIDAD: TStringField;
    QFacTMPFAC_NOMBRE: TStringField;
    QFacTMPFAC_NUMERO: TIntegerField;
    QFacTMPFAC_STATUS: TStringField;
    QFacTMPFAC_TELEFONO: TStringField;
    QFacTMPFAC_OTROS: TBCDField;
    QFacTMPPED_NUMERO: TIntegerField;
    QFacTMPTFA_CODIGO: TIntegerField;
    QFacTMPUSU_CODIGO: TIntegerField;
    QFacTMPVEN_CODIGO: TIntegerField;
    QFacTMPCLI_REFERENCIA: TStringField;
    QFacTMPALM_CODIGO: TIntegerField;
    QFacTMPFAC_VENCE: TDateTimeField;
    QFacTMPFAC_COMISION: TBCDField;
    QFacTMPFAC_MENSAJE1: TStringField;
    QFacTMPFAC_MENSAJE2: TStringField;
    QFacTMPFAC_MENSAJE3: TStringField;
    QFacTMPFAC_PORCCOMISION: TBCDField;
    QFacTMPFAC_CUOTAS: TIntegerField;
    QFacTMPFAC_HORA: TStringField;
    QFacTMPCON_NUMERO: TIntegerField;
    QFacTMPFAC_ANO: TIntegerField;
    QFacTMPFAC_MES: TIntegerField;
    QFacTMPFAC_CONITBIS: TStringField;
    QFacTMPFAC_DEVUELTO: TBCDField;
    QFacTMPMON_CODIGO: TIntegerField;
    QFacTMPSUC_CODIGO: TIntegerField;
    QFacTMPFAC_DOMICILIO: TStringField;
    QFacTMPfac_comisionpagada: TBCDField;
    QFacTMPfac_caja: TIntegerField;
    QFacTMPpro_codigo: TIntegerField;
    QFacTMPNCF_Fijo: TStringField;
    QFacTMPNCF_Secuencia: TBCDField;
    QFacTMPfac_selectivo_ad: TBCDField;
    QFacTMPfac_selectivo_con: TBCDField;
    QFacTMPfac_hold: TStringField;
    QFacTMPfac_rnc: TStringField;
    QFacTMPOrdenID: TStringField;
    QFacTMPPlaca: TStringField;
    QFacTMPChofer: TStringField;
    QFacTMPModelo: TStringField;
    QFacTMPMarca: TStringField;
    QFacTMPCompania: TStringField;
    QFacTMPCamionID: TIntegerField;
    QFacTMPMetraje: TBCDField;
    QFacTMPfac_interes: TBCDField;
    QFacTMPtip_codigo: TIntegerField;
    QFacTMPcot_proyecto: TStringField;
    QFacTMPSubTotal: TFloatField;
    QFacTMPFAC_NOTA: TMemoField;
    QFacTMPRecargo: TCurrencyField;
    QFacTMPPedidoNo: TStringField;
    QFacTMPReferencia: TStringField;
    QFacTMPFAC_DESCUENTO: TBCDField;
    QFacTMPFAC_ITBIS: TBCDField;
    QFacTMPFAC_TOTAL: TBCDField;
    QFacTMPFAC_PROPINA: TCurrencyField;
    QFacTMPNUMERO_RESERVA: TIntegerField;
    QFacTMPFAC_SERVICIOS: TFloatField;
    QFacTMPFAC_TASA: TFloatField;
    QFacTMPNIF: TStringField;
    QFacTMPTdesc_gral: TCurrencyField;
    QFacTMPporc_desc_gral: TCurrencyField;
    QFacTMPTdesc_gral_sin_Itbis: TCurrencyField;
    QUnidades: TADOQuery;
    QUnidadesPrecio: TBCDField;
    QUnidadesCantidad: TBCDField;
    QUnidadesNombre: TStringField;
    QUnidadesCredito: TBCDField;
    QUnidadesMinimo: TBCDField;
    QUnidadesUnidadID: TStringField;
    qActBalNC: TADOQuery;
    qVerPrecProd: TADOQuery;
    dsSucOrigen: TDataSource;
    QSucOrigen: TADOQuery;
    QSucOrigensuc_codigo: TIntegerField;
    QSucOrigensuc_nombre: TStringField;
    QSucOrigenalm_codigo: TIntegerField;
    QSucOrigenemp_codigo: TIntegerField;
    QSucOrigensuc_direccion: TStringField;
    QSucOrigensuc_localidad: TStringField;
    QSucOrigensuc_telefono: TStringField;
    QSucOrigensuc_rnc: TStringField;
    dsSucDestino: TDataSource;
    qSucDestino: TADOQuery;
    IntegerField1: TIntegerField;
    StringField2: TStringField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    QEnvioSUC_ORIGEN: TStringField;
    QEnvioSUC_DESTINO: TStringField;
    lblLbTotalUS: TLabel;
    QFacturaFAC_TOTALUS: TCurrencyField;
    EDT_FAC_TOTALUS: TDBEdit;
    QFacturafac_tasacambio: TFloatField;
    QFacturafac_total_dolar: TFloatField;
    QDetalleTMPfac_nombre: TStringField;
    QFacTMPfac_tasacambio: TFloatField;
    QEnvioCantidad: TFloatField;
    QFacturaeNCF: TStringField;
    QFacturaemp_rnc: TStringField;
    QFacturacli_rnc: TStringField;
    QFacturaTipoeNCF: TIntegerField;
    dtFechaLimite: TDBEdit;
    QFacturaFechaLimitePago: TDateField;
    QFacTMPFechaLimitePago: TDateField;
    QDetalledet_servicio_construccion: TBooleanField;
    QDetalleporc_vendedor: TCurrencyField;
    btBuscaVendPorc: TBitBtn;
    QParametrospar_comision_vend: TBooleanField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure ckAClick(Sender: TObject);
    procedure ckBClick(Sender: TObject);
    procedure btTipoClick(Sender: TObject);
    procedure btCondiClick(Sender: TObject);
    procedure btVendedorClick(Sender: TObject);
    procedure QFacturaVEN_CODIGOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QFacturaCPA_CODIGOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QFacturaNewRecord(DataSet: TDataSet);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btBuscaCliClick(Sender: TObject);
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure QDetallePRO_RFABRICChange(Sender: TField);
    procedure QDetallePRO_RORIGINALChange(Sender: TField);
    procedure QDetallePRO_CODIGOChange(Sender: TField);
    procedure GridColEnter(Sender: TObject);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure btBuscaProdClick(Sender: TObject);
    procedure btSalirClick(Sender: TObject);
    procedure QDetalleBeforePost(DataSet: TDataSet);
    procedure QDetalleAfterPost(DataSet: TDataSet);
    procedure QDetalleBeforeDelete(DataSet: TDataSet);
    procedure btPrecioClick(Sender: TObject);
    procedure btNotaClick(Sender: TObject);
    procedure btLimpiarClick(Sender: TObject);
    procedure btGrabarClick(Sender: TObject);
    procedure QDetalleNewRecord(DataSet: TDataSet);
    procedure btPedidoClick(Sender: TObject);
    procedure btBuscaClick(Sender: TObject);
    procedure dsFacturaStateChange(Sender: TObject);
    procedure ckAEnter(Sender: TObject);
    procedure QFacturaBeforePost(DataSet: TDataSet);
    procedure GridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btCotizaClick(Sender: TObject);
    procedure btnGuardaTemporalClick(Sender: TObject);
    procedure q(DataSet: TDataSet);
    procedure btnBuscaTemporalClick(Sender: TObject);
    procedure btBalanceClick(Sender: TObject);
    procedure QFacturaFAC_FORMAChange(Sender: TField);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
    procedure edTipoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btconduceClick(Sender: TObject);
    procedure QDetalleAfterEdit(DataSet: TDataSet);
    procedure dsFacturaDataChange(Sender: TObject; Field: TField);
    procedure btBuscaClienteClick(Sender: TObject);
    procedure ckItbisClick(Sender: TObject);
    procedure QDetalleDET_MEDIDAChange(Sender: TField);
    procedure dsDetalleDataChange(Sender: TObject; Field: TField);
    procedure btmonedaClick(Sender: TObject);
    procedure BtDescGralClick(Sender: TObject);
    procedure QFacturaSUC_CODIGOChange(Sender: TField);
    procedure ckdomicilioClick(Sender: TObject);
    procedure btrecetaClick(Sender: TObject);
    procedure btcajaClick(Sender: TObject);
    procedure QFacturafac_cajaGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure DBEdit6Enter(Sender: TObject);
    procedure tTipoEnter(Sender: TObject);
    procedure btdeletecuentaClick(Sender: TObject);
    procedure btfindcuentaClick(Sender: TObject);
    procedure GridCuentasColEnter(Sender: TObject);
    procedure GridCuentasEnter(Sender: TObject);
    procedure GridCuentasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QCuentascat_cuentaChange(Sender: TField);
    procedure QSucursalAfterDelete(DataSet: TDataSet);
    procedure QSucursalAfterPost(DataSet: TDataSet);
    procedure QSucursalBeforePost(DataSet: TDataSet);
    procedure QFacturaFAC_ITBISChange(Sender: TField);
    procedure QFacturaMON_CODIGOChange(Sender: TField);
    procedure QFacturafac_cajaChange(Sender: TField);
    procedure QFacturaALM_CODIGOChange(Sender: TField);
    procedure btdeleteClick(Sender: TObject);
    procedure Escalas1Click(Sender: TObject);
    procedure Vercombodelproducto1Click(Sender: TObject);
    procedure Crearnotaalproducto1Click(Sender: TObject);
    procedure Preventasdelproducto1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Consultarmovimiento1Click(Sender: TObject);
    procedure QCuentasAfterPost(DataSet: TDataSet);
    procedure QCuentasAfterDelete(DataSet: TDataSet);
    procedure btcamionClick(Sender: TObject);
    procedure QFacturaPlacaChange(Sender: TField);
    procedure DatosdelMedidor1Click(Sender: TObject);
    procedure QPedidosped_numeroChange(Sender: TField);
    procedure QPedidosNewRecord(DataSet: TDataSet);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure gridclinicoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Pantalladeproductos1Click(Sender: TObject);
    procedure Ajustedeinventario1Click(Sender: TObject);
    procedure QFacturaMON_CODIGOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure bttiponcfClick(Sender: TObject);
    procedure ttiponcfEnter(Sender: TObject);
    procedure QFacturatip_codigoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure DatosdelEnvio1Click(Sender: TObject);
    procedure NumerosdeserieFer1Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure dsSerieDataChange(Sender: TObject; Field: TField);
    procedure QFacturaCLI_CODIGOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QEnvioNewRecord(DataSet: TDataSet);
    procedure RG_BuscaDetClick(Sender: TObject);
    procedure QFacTMPCalcFields(DataSet: TDataSet);
    procedure QFacturafac_rncChange(Sender: TField);
    procedure DBEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit14Exit(Sender: TObject);
    procedure QSeriesBeforeOpen(DataSet: TDataSet);
    procedure QFacturaAfterOpen(DataSet: TDataSet);
    procedure QDetallepro_unidad_medidaChange(Sender: TField);
    procedure QDetalleBeforeEdit(DataSet: TDataSet);
    procedure DBGrid_1DblClick(Sender: TObject);
    procedure DBGrid_1KeyPress(Sender: TObject; var Key: Char);
    procedure btnReservaClick(Sender: TObject);
    procedure QFacturaNUMERO_RESERVAGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QMsnExistenciaBeforeOpen(DataSet: TDataSet);
    procedure QMsnExistenciaAfterOpen(DataSet: TDataSet);
    procedure ExistenciaxAlmacen1Click(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure edClienteExit(Sender: TObject);
    procedure edClienteKeyPress(Sender: TObject; var Key: Char);
    procedure QDetalleAfterInsert(DataSet: TDataSet);
    procedure QEnvioBeforePost(DataSet: TDataSet);
    procedure Rpt_FacOrdTallerBeforePrint(Sender: TfrxReportComponent);
    procedure QFacTMPBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure QFacturaAfterPost(DataSet: TDataSet);
    procedure QDetalleTMPBeforePost(DataSet: TDataSet);
    procedure QFacturaAfterInsert(DataSet: TDataSet);
    procedure QFacturaTFA_CODIGOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure edTipoExit(Sender: TObject);
    procedure BuscarTipoFacturas;
    procedure QFacturaCalcFields(DataSet: TDataSet);
    procedure DBEdit19Exit(Sender: TObject);
    procedure dbedt_RECARGOSExit(Sender: TObject);
    procedure QDetalleDET_SECUENCIAValidate(Sender: TField);
    procedure dbCajaChange(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure QEnvioBeforeOpen(DataSet: TDataSet);
    procedure QFacturaFechaLimitePagoValidate(Sender: TField);
    procedure btBuscaVendPorcClick(Sender: TObject);
    procedure QParametrosAfterOpen(DataSet: TDataSet);
  private
    vSer, DesactivarCargaProductos :Boolean;
    vSecuencia, vl_index, vl_index2:Integer;
    vSecFactura :Integer;
    vAlmacen : Integer;
    vCajVendedor, vModProducto : Boolean;
    vtfa_espcliente, vp_desde, vp_hasta, vl_fecha :String;
    procedure DatosEnvio(llenar: boolean = false);
    procedure ActualisarEnvio(actualizar: boolean = false);
    function  Producto_sin_Serializar:boolean;
    procedure BorraSerial(vCod_Producto:string);
    procedure TipoFacturas;
    procedure BuscarProdReservas;
    procedure BuscarProdLiquidacionTickets;
    function  IDEnvio:Integer;
    procedure DevolverExistencia;
    function  TIPOFACTURA(emp,tipo:Integer):String;
    function  DetalleTieneServicioConstruccion():Boolean ;

  public
    { Public declarations }
    SelCajero, SelCondi, facturar : boolean;
    descuento, total, sSubTotal,sPreciosinItbis, TGralDesc, TGralItbis, sPorcItbis, TotalOtros, Limite, Balance, Comision, PorcFijo, MontoFijo : Double;
    Totaliza, Buscando, Realizado : boolean;
    Cajero, FormatoImp, Dias, CodMov, Intervalo, FPagoIni, copias, caja, TipoFac, Vendedor, vl_cliente, vl_accion : integer;
    PuertoImp, TraerFormaPago, actbalance, FactPendiente, FactVencida,
    TieneVencido, Vencidos, Precio, Cuotas, CtaCliente, VerLimite,
    PantallaDevolver, Devuelta, Recibido, PermiteAbonar, NombreOtro, CtaCaja, ModificaNombre, intereses,
    FactDebajoCosto, FactDebajoMinimo, ConItbis, ImprimeEncaqbezado, SelRNC, MedidaAlmacen, CtaTipoFactura : string;
    Debitos, Creditos : Double;
    vEnvioEstadoCta : Boolean;
    cli_facturas, cli_records,idFacturaTmp, vl_suc, vl_ncr_numero, vl_fact, vl_tfa, vl_empfact  : integer;
    vp_verifone:Boolean;
    vl_dest, vl_tipoclie, vl_clienteN, vl_asunto, vl_factnum, vl_adjunto1, vl_adjunto2, vl_cuerpo, vl_forma :String;

    NumFacturaTemporal:Integer;
    
    procedure Totalizar;
    Procedure TotalizarCuentas;
    procedure CodificarCuentas;
    procedure TotalizaClinico;
    procedure ImpTicketEnvio(vSucEnvia, vSucRecibe, vRecibe, vRecibeTel, vEnvia, vDescripcion, vCodigo, vCodigo2:String;vPagoDestino:Boolean; vnumero:Integer; vcantidad:Integer);
    procedure Imp40ColumnasHotel;
    procedure Imp40Columnas;
    procedure ImpTicketCardNet;
    procedure Imp40ColumnasNC;
    procedure Imp40ColumnasREC;
    procedure Imp40ColumnasNorma201806;
    procedure EnvioMail(Reporte: TQuickRep; Tipo: String);
    procedure EnvioMail2;
    procedure GeneraFactEnvioMail;
    procedure GenerarEstadoCxC;
    Procedure ImpTicketFiscal(aCopia:byte = 0);
    Procedure ImpTicketFiscalCardNet(aCopia:byte = 0);
    procedure ImpTicketFiscalBixolon(vImpresora: TImpresora);

    procedure ImpTicketVmaxFiscal(aPuerto:Integer = 1;
                                  aVelocidad : Integer = 9600;
                                  aCopia:byte = 0;
                                  aTipo:String = 'P';
                                  aPrinter_usa_Precioconitbis:string = 'N');
    procedure ImpTicketVmaxFiscalCardNet(aPuerto:Integer = 1;
                                  aVelocidad : Integer = 9600;
                                  aCopia:byte = 0;
                                  aTipo:String = 'P';
                                  aPrinter_usa_Precioconitbis:string = 'N');


    procedure BuscaProducto (Cod : String);
    function DescuentoGeneral(desc_gral:Real):Boolean;
     function ValidarENCFDisponible(
      AEmp: Integer; ATipo: Integer;
      out AMsg: string;
      out ASiguienteCorrelativo: Int64
    ): Boolean;
    
  end;

var
  frmFactura: TfrmFactura;
  cantidadPrevia:Double = 0;
  UtilizaEnvio :String = 'False';
  utilizamedidor :String = 'False';
  IDProducto :Integer;


   InutilizarBotonDerechoMouse:boolean = false;
   err : integer;

   ArrayMultiUso : array of string;
   ln: integer;
   StatusFiscal:String;
   statusMPrinter:String ;

   ItbisIncluido:boolean;

  oNombre:String;
  oTelefono:String;
  oCiudad,dCiudad:String;
  dCodCiudad:integer;
  dNombre:String;
  dTelefono:String;
  dPagarDestino:Boolean;
  Descripcion:String;
  Descripcion2:String;
  vl_recibe : String;
  vl_telrecibe:String;
  vl_envio:String;
  dCantidad:string;

formapago:array[0..13] of string = ('Efectivo','Cheque','Tarjeta',
                                      'Tarjeta Debito','Tarjeta Propia','Cupon','Otros 1','Otros 2',
                                      'Otros 3','Otros 4','Nota de Credito','Exoneracion ITBIS',
                                      'Comprobante Cancelados','Exoneracion ITBIS en NC');

implementation

uses PVENTA37, PVENTA33, PVENTA34, PVENTA36, PVENTA40, PVENTA42,
  RVENTA02, PVENTA43, RVENTA43, PVENTA82, PVENTA14, PVENTA114, SIGMA00,
  SIGMA01, PVENTA117, RVENTA64, PVENTA41, PVENTA121, RVENTA33, PVENTA134,
  PVENTA143, RVENTA71, RVENTA79, RVENTA32, PVENTA185, PVENTA186, PVENTA209,
  RVENTA115, PVENTA28, PVENTA83, PVENTA222, PVENTA223, PVENTA224,
  SIGMA06, RVENTA122, PVENTA15, PVENTA138, uEnvios, PVENTA125, StrUtils,
  PVenta233, StdConvs, RVENTA126, PVENTAPRODUCTOSXALMACEN,  POS24,
  RVENTA128, PVENTA238, RVENTA41, RVENTA130, RVENTA134,FacturacionElectronicaDGII_TLB,RVENTA136,RVENTA137 ,
  PVENTA253, JPEG;

{$R *.DFM}


// --- Copias tfa_copias ---
var
  CopiasExtraImp: Integer;

procedure CargarCopiasTipoFactura;
var
  vTipo: Integer;
begin
  CopiasExtraImp := 0;
  frmFactura.copias := 0;

  if (not frmFactura.QFacturaTFA_CODIGO.IsNull) and (frmFactura.QFacturaTFA_CODIGO.Value > 0) then
    vTipo := frmFactura.QFacturaTFA_CODIGO.Value
  else
    vTipo := StrToIntDef(Trim(frmFactura.edTipo.Text), 0);

  if vTipo <= 0 then
    Exit;

  with frmFactura.Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select ISNULL(tfa_copias,0) tfa_copias from tiposfactura');
    SQL.Add('where emp_codigo = :emp');
    SQL.Add('and tfa_codigo = :cod');
    Parameters.ParamByName('emp').Value := dm.vp_cia;
    Parameters.ParamByName('cod').Value := vTipo;
    Open;
    if not IsEmpty then
      CopiasExtraImp := FieldByName('tfa_copias').AsInteger;
    Close;
  end;

  if CopiasExtraImp < 0 then
    CopiasExtraImp := 0;

  frmFactura.copias := CopiasExtraImp;
end;

procedure EstablecerEtiquetaCopia(Reporte: TQuickRep; NumCopia, TotalCopias: Integer);
var
  Lbl: TQRLabel;
  Comp: TComponent;
  sTexto: string;
begin
  if Reporte = nil then
    Exit;

  Comp := Reporte.FindComponent('lbNumCopia');
  if (Comp = nil) or not (Comp is TQRLabel) then
    Exit;

  Lbl := TQRLabel(Comp);
  sTexto := '';
  if TotalCopias >= 1 then
  begin
    if NumCopia = 0 then
      sTexto := 'ORIGINAL'
    else
      sTexto := Format('Copia %d de %d', [NumCopia, TotalCopias]);
  end;
  Lbl.Hint := sTexto;
  Lbl.Caption := sTexto;
end;

procedure ImprimirQuickRep(Reporte: TQuickRep);
begin
  if Reporte is TRFactura then
    TRFactura(Reporte).ImprimirConTotalPaginas
  else
    Reporte.Print;
end;

procedure ImprimirQuickRepCopias(Reporte: TQuickRep);
var
  a, vExtra, vTotal: Integer;
begin
  CargarCopiasTipoFactura;
  vExtra := CopiasExtraImp;
  if vExtra < 0 then vExtra := 0;

  if vExtra = 0 then
  begin
    EstablecerEtiquetaCopia(Reporte, 0, 0);
    ImprimirQuickRep(Reporte);
    Exit;
  end;

  vTotal := 1 + vExtra;
  a := 1;
  while a <= vTotal do
  begin
    if a = 1 then
      EstablecerEtiquetaCopia(Reporte, 0, vExtra)
    else
      EstablecerEtiquetaCopia(Reporte, a - 1, vExtra);
    ImprimirQuickRep(Reporte);
    Inc(a);
  end;
end;

procedure ImprimirFrxReportCopias(Reporte: TfrxReport);
var
  a, vExtra, vTotal: Integer;
  sCopia: string;
begin
  CargarCopiasTipoFactura;
  vExtra := CopiasExtraImp;
  if vExtra < 0 then vExtra := 0;
  vTotal := 1 + vExtra;

  a := 1;
  while a <= vTotal do
  begin
    if vExtra >= 1 then
    begin
      if a = 1 then
        sCopia := 'ORIGINAL'
      else
        sCopia := Format('Copia %d de %d', [a - 1, vExtra]);
    end
    else
      sCopia := '';
    try
      Reporte.Variables['NumCopia'] := QuotedStr(sCopia);
    except
    end;
    Reporte.ShowReport();
    Inc(a);
  end;
end;

// --- Helpers ESC/POS ---
function ESC(const b: Byte): AnsiString;
begin
  Result := AnsiChar(#27) + AnsiChar(b);
end;

function GS(const b: Byte): AnsiString;
begin
  Result := AnsiChar(#29) + AnsiChar(b);
end;

procedure ImprimirLogoTicket(var F: TextFile);
const
  MaxLogoWidth = 300;
  MaxLogoHeight = 140;
var
  Stream: TMemoryStream;
  SrcBmp: TBitmap;
  Jpg: TJPEGImage;
  Bmp: TBitmap;
  Scale: Double;
  LogoWidth, LogoHeight, WidthBytes: Integer;
  x, y, Bit: Integer;
  ByteValue: Byte;
  ColorRef: DWORD;
  Gray: Integer;
  Data: AnsiString;
begin
  if Trim(dm.QParametrospar_imprime_logo.Value) <> 'True' then
    Exit;
  if DM.QEmpresasEMP_LOGO.IsNull then
    Exit;

  Stream := TMemoryStream.Create;
  SrcBmp := TBitmap.Create;
  Bmp := TBitmap.Create;
  try
    try
      DM.QEmpresasEMP_LOGO.SaveToStream(Stream);
      if Stream.Size = 0 then
        Exit;

      Stream.Position := 0;
      try
        SrcBmp.LoadFromStream(Stream);
      except
        Stream.Position := 0;
        Jpg := TJPEGImage.Create;
        try
          Jpg.LoadFromStream(Stream);
          SrcBmp.Assign(Jpg);
        finally
          Jpg.Free;
        end;
      end;

      if (SrcBmp.Width = 0) or (SrcBmp.Height = 0) then
        Exit;

      Scale := 1;
      if SrcBmp.Width > MaxLogoWidth then
        Scale := MaxLogoWidth / SrcBmp.Width;
      if (SrcBmp.Height * Scale) > MaxLogoHeight then
        Scale := MaxLogoHeight / SrcBmp.Height;

      LogoWidth := Round(SrcBmp.Width * Scale);
      LogoHeight := Round(SrcBmp.Height * Scale);
      if (LogoWidth <= 0) or (LogoHeight <= 0) then
        Exit;

      Bmp.PixelFormat := pf24bit;
      Bmp.Width := LogoWidth;
      Bmp.Height := LogoHeight;
      Bmp.Canvas.Brush.Color := clWhite;
      Bmp.Canvas.FillRect(Rect(0, 0, LogoWidth, LogoHeight));
      Bmp.Canvas.StretchDraw(Rect(0, 0, LogoWidth, LogoHeight), SrcBmp);

      WidthBytes := (LogoWidth + 7) div 8;
      SetLength(Data, WidthBytes * LogoHeight);
      for y := 0 to LogoHeight - 1 do
      begin
        for x := 0 to WidthBytes - 1 do
        begin
          ByteValue := 0;
          for Bit := 0 to 7 do
          begin
            if (x * 8 + Bit) < LogoWidth then
            begin
              ColorRef := GetPixel(Bmp.Canvas.Handle, x * 8 + Bit, y);
              Gray := (GetRValue(ColorRef) * 30 + GetGValue(ColorRef) * 59 + GetBValue(ColorRef) * 11) div 100;
              if Gray < 160 then
                ByteValue := ByteValue or (128 shr Bit);
            end;
          end;
          Data[(y * WidthBytes) + x + 1] := AnsiChar(ByteValue);
        end;
      end;

      Write(F, ESC($61) + AnsiChar(#1));
      Write(F, GS($76) + AnsiChar(#48) + AnsiChar(#0) +
        AnsiChar(WidthBytes and $FF) + AnsiChar(WidthBytes shr 8) +
        AnsiChar(LogoHeight and $FF) + AnsiChar(LogoHeight shr 8) + Data);
      Writeln(F);
      Write(F, ESC($61) + AnsiChar(#0));
    except
      // If the saved logo is not supported, keep printing the ticket without it.
    end;
  finally
    Bmp.Free;
    SrcBmp.Free;
    Stream.Free;
  end;
end;

function IntToBinRec(valor,digitos:integer):string;
 begin
  if digitos=0 then
   result:=''
  else
  begin
   if (valor AND (1 shl (digitos-1)))>0 then
    result:='1'+IntToBinRec(valor,digitos-1)
   else
    result:='0'+IntToBinRec(valor,digitos-1)
  end;
 end;

function NumeroRandom():Integer ;
begin
  Randomize;
  Result := Random( 1000000 ) + 1 ;
end;

procedure TfrmFactura.QFacturafac_rncChange(Sender: TField);
var
  D: TDatoRncConsulta;
  RncBuscar: string;
begin
  RncBuscar := Trim(DBEdit14.Text);
  if RncBuscar = '' then
    RncBuscar := Trim(QFacturafac_rnc.AsString);
  if RncBuscar = '' then
    Exit;

  if not (Length(RncBuscar) in [9, 11]) then
    Exit;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select top 1 cli_referencia, cli_codigo, cli_nombre, cli_balance,');
  dm.Query1.SQL.Add('cli_limite, cli_precio, cli_descuento, cli_cuenta, cli_rnc, cli_cedula,');
  dm.Query1.SQL.Add('cli_direccion, cli_localidad, cli_telefono, cli_fax, pro_codigo,');
  dm.Query1.SQL.Add('ven_codigo, cpa_codigo, cli_facturarbce, cli_facturarvencida');
  dm.Query1.SQL.Add('from clientes');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and cli_status = '+QuotedStr('ACT'));
  dm.Query1.SQL.Add('and (cli_rnc = :rnc or cli_cedula = :rnc)');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('rnc').Value := RncBuscar;
  dm.Query1.Open;
  if dm.Query1.RecordCount > 0 then
  begin
    if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
      edCliente.Text := dm.Query1.FieldByName('cli_codigo').AsString
    else
      edCliente.Text := dm.Query1.FieldByName('cli_referencia').AsString;

    FactPendiente                := dm.Query1.FieldByName('cli_facturarbce').AsString;
    FactVencida                  := dm.Query1.FieldByName('cli_facturarvencida').AsString;
    if not dm.Query1.FieldByName('pro_codigo').IsNull then
      QFacturaPRO_CODIGO.Value   := dm.Query1.FieldByName('pro_codigo').AsInteger;
    QFacturaCLI_CODIGO.Value     := dm.Query1.FieldByName('cli_codigo').AsInteger;
    QFacturaFAC_NOMBRE.Value     := dm.Query1.FieldByName('cli_nombre').AsString;
    QFacturaCLI_REFERENCIA.Value := dm.Query1.FieldByName('cli_referencia').AsString;
    btBalance.Caption            := 'Bce:'+Format('%n',[dm.Query1.FieldByName('cli_balance').AsFloat]);
    Balance                      := dm.Query1.FieldByName('cli_balance').AsFloat;
    tLimite.Text                 := Format('%n',[dm.Query1.FieldByName('cli_limite').AsFloat - dm.Query1.FieldByName('cli_balance').AsFloat]);
    Limite                       := StrToFloat(Format('%10.2f',[dm.Query1.FieldByName('cli_limite').AsFloat]))-
                                    StrToFloat(Format('%10.2f',[dm.Query1.FieldByName('cli_balance').AsFloat]));
    QFacturaFAC_DIRECCION.Value  := dm.Query1.FieldByName('cli_direccion').AsString;
    QFacturaFAC_LOCALIDAD.Value  := dm.Query1.FieldByName('cli_localidad').AsString;
    QFacturaFAC_TELEFONO.Value   := dm.Query1.FieldByName('cli_telefono').AsString;
    QFacturaFAC_FAX.Value        := dm.Query1.FieldByName('cli_fax').AsString;

    if (dm.Query1.FieldByName('cli_rnc').IsNull) or (Trim(dm.Query1.FieldByName('cli_rnc').AsString) = '') then
    begin
      if QFacturaFAC_RNC.AsString <> dm.Query1.FieldByName('cli_cedula').AsString then
        QFacturaFAC_RNC.Value := dm.Query1.FieldByName('cli_cedula').AsString;
    end
    else
    begin
      if QFacturaFAC_RNC.AsString <> dm.Query1.FieldByName('cli_rnc').AsString then
        QFacturaFAC_RNC.Value := dm.Query1.FieldByName('cli_rnc').AsString;
    end;

    descuento := dm.Query1.FieldByName('cli_descuento').AsFloat;
    if not dm.Query1.FieldByName('ven_codigo').IsNull then
      QFacturaVEN_CODIGO.Value := dm.Query1.FieldByName('ven_codigo').AsInteger;
    if (actbalance = 'True') and (not dm.Query1.FieldByName('cpa_codigo').IsNull) then
      QFacturaCPA_CODIGO.Value := dm.Query1.FieldByName('cpa_codigo').AsInteger
    else
      QFacturaCPA_CODIGO.Clear;

    totalizar;
    Exit;
  end;

  D := dm.ConsultarRncCompleto(RncBuscar);
  if D.Encontrado then
  begin
    QFacturaFAC_NOMBRE.Value := D.RazonSocial;
    QFacturaFAC_DIRECCION.Value := D.Direccion;
    QFacturaFAC_LOCALIDAD.Value := Trim(D.Urbanizacion) + Trim(D.Numero);
    QFacturaFAC_TELEFONO.Value := D.Telefono;
  end;
end;

procedure TfrmFactura.ActualisarEnvio(actualizar:boolean = false);
var
  envio : integer;
begin
   if not actualizar then
     begin
       QEnvio.Insert;
       QEnvioemp_codigo.Value := dm.vp_cia;
       QEnviosuc_codigo.Value := QFacturaSUC_CODIGO.Value;
       QEnviopro_codigo.Value := QDetallePRO_CODIGO.Value;
       QEnviotfa_codigo.Value := QDetalleTFA_CODIGO.Value;
       QEnvioFecha.Value      := QFacturaFAC_FECHA.Value;
       QEnviotfa_codigo.Value := QFacturaTFA_CODIGO.Value;
       QEnvioCiudad_Origen.Value := oCiudad;
       QEnvioCiudad_Destino.Value := dCiudad;
       QEnvioNombre_envia.Value := ONombre;
       QEnvioTelefono_Envia.Value := OTelefono;
       QEnvioNombre_Recibe.Value := dNombre;
       QEnvioTelefono_Recibe.Value := dTelefono;
       QEnvioDescripcion.Value := Descripcion;
       QEnvioDescripcion2.Value := Descripcion2;
       QEnvioenv_suc_destino.Value := dCodCiudad;
       QEnviofacpagodestino.Value := dPagarDestino; 
       QEnvioCantidad.Value   := StrToInt(dCantidad);


       QEnvio.Post;
     end
   else
     begin
       QEnvio.Edit;
       QEnvioemp_codigo.Value := dm.vp_cia;
       QEnviosuc_codigo.Value := QFacturaSUC_CODIGO.Value;
       QEnviopro_codigo.Value := QDetallePRO_CODIGO.Value;  
       QEnviotfa_codigo.Value := QFacturaTFA_CODIGO.Value;
       QEnvioFecha.Value      := QFacturaFAC_FECHA.Value;
       QEnvioCiudad_Origen.Value := oCiudad;
       QEnvioCiudad_Destino.Value := dCiudad;
       QEnvioNombre_envia.Value := ONombre;
       QEnvioTelefono_Envia.Value := OTelefono;
       QEnvioNombre_Recibe.Value := dNombre;
       QEnvioTelefono_Recibe.Value := dTelefono;
       QEnvioDescripcion.Value := Descripcion;
       QEnvioDescripcion2.Value := Descripcion2;
       QEnvioenv_suc_destino.Value := dCodCiudad;
       QEnviofacpagodestino.Value := dPagarDestino;
       QEnvioCantidad.Value   := StrToInt(dCantidad);
       QEnvio.Post;
     end;
end;


procedure TfrmFactura.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SelCajero = true then
  begin
    if messagedlg('SALIR DE ESTA PANTALLA?',
    mtconfirmation, [mbyes,mbno],0) = mrno then
      abort
    else
    begin
      //frmOtrosFac.release;
      frmFormaPagoFac.release;
      action := cafree;
    end;
  end
  else
    action := cafree;
end;

procedure TfrmFactura.FormPaint(Sender: TObject);
begin
  with frmFactura do
  begin
    Top  := 2;
    Left := 2;
    //width := frmMain.Width - 100;
    //height := frmMain.Height - 120;
  end;
end;

procedure TfrmFactura.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f11  then btBuscaVendPorcClick(self); 
  if key = vk_f10 then btSalirClick(self);
  if key = vk_f3  then btLimpiarClick(self);
  if key = vk_f8  then btNotaClick(self);
  if key = vk_f5  then btBuscaClienteClick(Self);
  if key = vk_f6  then btdeleteClick(self);
  if key = vk_f2  then btGrabarClick(self); 
  if (ssCtrl in Shift) and (ord(key) = 66) and (ssAlt in Shift) then
  begin
    QFacturaFAC_FORMA.Value := 'B';
  end;
  if (ssCtrl in Shift) and (ord(key) = 65) and (ssAlt in Shift) then
  begin
    QFacturaFAC_FORMA.Value := 'A';
  end;
end;

procedure TfrmFactura.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmFactura.FormActivate(Sender: TObject);
begin
DBGrid_1.Top := 0;
DBGrid_1.Left := 0;

  if SelCajero = False then
  begin
    Application.CreateForm(tfrmPideCajero, frmPideCajero);
    if frmPideCajero.ShowModal <> mrOk then
    begin
      frmFactura.Close;
      frmPideCajero.release;
      Abort;
    end
    else
    begin
      SelCajero := True;
      Cajero := dm.Query1.fieldbyname('caj_codigo').asinteger;
      tCajero.text := dm.Query1.fieldbyname('caj_nombre').asstring;
      vCajVendedor := DM.Query1.FieldByName('caj_vendedor').AsBoolean;
      if (dm.Query1.fieldbyname('fac_caja').IsNull) or (dm.Query1.fieldbyname('fac_caja').Value = 0) then
        caja := dm.QParametroscaj_codigo.Value
      else
        caja := dm.Query1.fieldbyname('fac_caja').AsInteger;

      if (dm.Query1.fieldbyname('tfa_codigo').IsNull) or (dm.Query1.fieldbyname('tfa_codigo').Value = 0) then
        TipoFac := dm.QParametrosPAR_TFACODIGO.Value
      else
        TipoFac := dm.Query1.fieldbyname('tfa_codigo').AsInteger;
                     

      frmPideCajero.release;
    end;

    vModProducto := DM.QUsuariosusu_modifica_nombreprod.Value;

    if not QFactura.active then
    begin
      QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
      QSucursal.Parameters.ParamByName('emp_codigo').Value := dm.vp_cia;
      QSucursal.Open;
      //QSucursal.Locate('suc_codigo',, []);

      QSucursalDestino.Open;
      QVendedores.Parameters.ParamByName('emp_codigo').Value := dm.vp_cia;
      QVendedores.Open;

      application.createform(tfrmFormaPagoFac, frmFormaPagoFac);
      Totaliza := true;
      QDetalle.DisableControls;

      QFactura.Close;
      QFactura.Parameters.ParamByName('emp').Value  := DM.vp_cia;
      QFactura.Parameters.ParamByName('tipo').Value := -1;
      QFactura.Parameters.ParamByName('forma').Value := 'A';
      QFactura.Parameters.ParamByName('numero').Value := -1;
      QFactura.Parameters.ParamByName('suc').Value := -1;
      QFactura.open;

      QFactura.insert;
     // QFacturaALM_CODIGO.Value := QSucursalalm_codigo.Value;

    dm.Query1.Close;
    DM.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select * from sucursales where suc_codigo = '+IntToStr(DBLookupComboBox2.KeyValue)+' and alm_codigo in');
    dm.Query1.SQL.Add('(select alm_codigo from almacen where emp_codigo = '+QFacturaEMP_CODIGO.Text+')');
    dm.Query1.SQL.Add('and emp_codigo = '+QFacturaEMP_CODIGO.Text);
    dm.Query1.Open;
    if DM.Query1.RecordCount = 0  then begin
    ShowMessage('LA SUCURSAL NO TIENE ALMACEN / ALMACEN INVALIDO...');
    SelCajero := False;
    frmFactura.Close;
    end;


      if not QFacturaFAC_FORMA.IsNull then
        frmMain.stBar1.Panels[1].Text := QFacturaFAC_FORMA.Value;
      QDetalle.EnableControls;
    end;

  end;


    dm.getParametrosPrinterFiscal();
  btnGuardaTemporal.Enabled := (dm.QParametrosPAR_FACTEMPORAL.Value = 'True');
  btnBuscaTemporal.Enabled  := (dm.QParametrosPAR_FACTEMPORAL.Value = 'True');
//Ing. Jhonattan Gomez 10/Feb/2018
with QParametros do begin
Close;
Parameters[0].Value := dm.vp_cia;
Open;
if not IsEmpty then begin
if QParametrosPAR_CODIGOPRODUCTO.Value = 'I' then
RG_BuscaDet.ItemIndex := 0;
if QParametrosPAR_CODIGOPRODUCTO.Value = 'O' then
RG_BuscaDet.ItemIndex := 1;
if QParametrosPAR_CODIGOPRODUCTO.Value = 'F' then
RG_BuscaDet.ItemIndex := 2;
Close;
END;
//FIN Ing. Jhonattan Gomez 10/Feb/2018
end;
{20170627
  if dm.QParametrospar_formato_preimpreso.Value = 'QRMateirosa' then
    Panel2.Height := 126
  else Panel2.Height := 100;

  QMsnExistencia.Active := true;}


  //Verificar si el usuario tiene sucursal por defecto
 if not VarIsNull(dm.suc_default) and (dm.suc_default > 0) then
  begin
    DBLookupComboBox2.KeyValue := dm.suc_default;
  end;


end;

procedure TfrmFactura.ckAClick(Sender: TObject);
begin
  QFacturaFAC_FORMA.value := 'A';
  if dm.QParametrosPAR_FACBAJARLINEA.Value <> 'True' then
    edTipo.setfocus
  else
  begin
    PageControl1.ActivePageIndex := 0;
    Grid.Setfocus;
  end;
end;

procedure TfrmFactura.ckBClick(Sender: TObject);
begin
  QFacturaFAC_FORMA.value := 'B';
  if dm.QParametrosPAR_FACBAJARLINEA.Value <> 'True' then
    edTipo.setfocus
  else
  begin
    PageControl1.ActivePageIndex := 0;
    Grid.SetFocus;
  end;
end;

procedure TfrmFactura.btTipoClick(Sender: TObject);
var
  tiponcf : integer;
begin
  search.Query.clear;
  search.Query.add('select tfa_nombre, tfa_codigo');
  search.Query.add('from tiposfactura');
  search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C?digo');
  search.ResultField := 'tfa_codigo';
  search.Title := 'Tipos de factura';
  if search.execute then
  begin
    edTipo.text := search.valuefield;
   with qEjecutar do begin
    close;
    sql.clear;
    sql.add('select tfa_nombre, tfa_selcondi, tfa_formatoimp, tfa_puertoimp,');
    sql.add('tfa_actbalance, tfa_cliente, ven_codigo, tfa_precio,');
    sql.add('tfa_mensaje1, tfa_mensaje2, tfa_mensaje3, fpa_codigo,');
    sql.add('tfa_verlimite, tfa_copias, tfa_permite_abonar, tfa_itbis, isnull(tip_codigo,0)tipo,');
    sql.add('tfa_imprimie_encabezado, tfa_rnc, cat_cuenta, tfa_modifica_nombre, tfa_espcliente espcliente');
    sql.add(',Envio_Correo, Envio_Estadocta');
    sql.add('from tiposfactura');
    sql.add('where emp_codigo = '+QuotedStr(DM.QEmpresasEMP_CODIGO.text));
    sql.add('and tfa_codigo = '+QuotedStr(edTipo.text));
    open;

      ConItbis        := FieldByName('tfa_itbis').AsString;
      QFacturaFAC_CONITBIS.Value := ConItbis;
      vtfa_espcliente := FieldByName('espcliente').AsString;
      PermiteAbonar   := fieldbyname('tfa_permite_abonar').AsString;
      ImprimeEncaqbezado := fieldbyname('tfa_imprimie_encabezado').AsString;
      vEnvioEstadoCta := FieldByName('Envio_Estadocta').Value;
      chkMail.Checked := FieldByName('Envio_Correo').Value;
      ModificaNombre := fieldbyname('tfa_modifica_nombre').asstring;
      CtaTipoFactura := fieldbyname('cat_cuenta').asstring;
      copias     := fieldbyname('tfa_copias').asinteger;
      CopiasExtraImp := copias;
      FPagoIni   := fieldbyname('fpa_codigo').asinteger;
      Precio     := fieldbyname('tfa_precio').asstring;
      PuertoImp  := fieldbyname('tfa_puertoimp').asstring;
      FormatoImp := fieldbyname('tfa_formatoImp').asinteger;
      tTipo.text := fieldbyname('tfa_nombre').asstring;
      actbalance := fieldbyname('tfa_actbalance').asstring;
      VerLimite  := fieldbyname('tfa_verlimite').asstring;
      SelCondi   := FieldByName('tfa_selcondi').AsBoolean;
      SelRNC     := fieldbyname('tfa_rnc').asString;
      tiponcf    := fieldbyname('tipo').AsInteger;
      dbCondi.Enabled := SelCondi;
      btCondi.Enabled := SelCondi;
      dtFechaLimite.Enabled := SelCondi;
      QFacturaFAC_MENSAJE1.Value := trim(fieldbyname('tfa_mensaje1').asstring);
      QFacturaFAC_MENSAJE2.Value := fieldbyname('tfa_mensaje2').asstring;
      QFacturaFAC_MENSAJE3.Value := fieldbyname('tfa_mensaje3').asstring;
      if fieldbyname('tfa_actbalance').asstring = 'False' then
      begin
      if QFacturaFAC_NOMBRE.isnull then
      QFacturaFAC_NOMBRE.Value := fieldbyname('tfa_cliente').asstring;
      end;

      if not fieldbyname('ven_codigo').IsNull then
      QFacturaVEN_CODIGO.Value := fieldbyname('ven_codigo').asinteger;

      QFacturafac_abono.Value := 0;
      end;





      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('select fpa_codigo from formaspago');
      Query1.SQL.Add('where emp_codigo = :emp');
      Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      Query1.Open;
      if Query1.RecordCount = 0 then
      begin
        edTipo.Text := '';
        MessageDlg('PARA REALIZAR UNA FACTURA DE ESTE TIPO'+#13+
                   'DEBE CREAR LAS FORMAS DE PAGO',mtError,[mbok],0);
        Abort;
        edTipo.SetFocus;
      end;
        totalizar;


      if tiponcf > 0 then
         QFacturatip_codigo.Value := tiponcf;

    end;

    SelectNext(activecontrol, true, true);
  end;


procedure TfrmFactura.btCondiClick(Sender: TObject);
var
  q: TADOQuery;
  codCondi, dias: Integer;
  fechaBase, fechaLim: TDateTime;
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C?digo');

  Search.Query.Clear;
  Search.Query.Add('select cpa_nombre, cpa_codigo'); // no necesitas cpa_dias aqu?
  Search.Query.Add('from condiciones');
  Search.Query.Add('where emp_codigo = ' + IntToStr(dm.vp_cia));

  Search.ResultField := 'cpa_codigo';
  Search.Title := 'Condiciones de pago';

  if Search.Execute then
  begin
    // 1) Guardar c?digo seleccionado
    codCondi := StrToIntDef(Search.ValueField, 0);
    //QFactura.Edit;
    QFacturaCPA_CODIGO.AsInteger := codCondi;
    dbCondi.SetFocus;

    // 2) Leer cpa_dias con un query r?pido
    q := TADOQuery.Create(nil);
    try
      q.Connection := DM.ADOSigma; // AliasName = DM.ADOSigma
      q.SQL.Text :=
        'select cpa_dias ' +
        'from condiciones ' +
        'where emp_codigo = :emp and cpa_codigo = :cod';
      q.Parameters.ParamByName('emp').Value := dm.vp_cia;
      q.Parameters.ParamByName('cod').Value := codCondi;
      q.Open;

      dias := 0;
      if not q.Fields[0].IsNull then
        dias := q.Fields[0].AsInteger;
    finally
      q.Free;
    end;

    // 3) Calcular fecha l?mite (base = hoy o la fecha de la factura)
    // Usa la fecha de la factura si la tienes en el dataset:
    if QFactura.FindField('FAC_FECHA') <> nil then
      fechaBase := QFactura.FieldByName('FAC_FECHA').AsDateTime
    else
      fechaBase := Date;

    // Con DateUtils: fechaLim := IncDay(fechaBase, dias);
    fechaLim := fechaBase + dias;

    // 4) Asignar a tu TBEdit dtFechaLimite (o al campo de la tabla si est? ligado)
    // Si dtFechaLimite es un TEdit/TBEdit:
    dtFechaLimite.Text := FormatDateTime('dd/mm/yyyy', fechaLim);

    // Si adem?s tienes un campo en QFactura para guardar la fecha l?mite:
    if QFactura.FindField('FechaLimitePago') <> nil then
      QFactura.FieldByName('FechaLimitePago').AsDateTime := fechaLim;

    if QFactura.FindField('fac_vence') <> nil then
      QFactura.FieldByName('fac_vence').AsDateTime := fechaLim;

  //  QFactura.Post;
  end;
end;

procedure TfrmFactura.btVendedorClick(Sender: TObject);
begin
  Search.AliasFields.clear;
  Search.AliasFields.add('Nombre');
  Search.AliasFields.add('C?digo');
  Search.Query.clear;
  Search.Query.add('select ven_nombre, ven_codigo');
  Search.Query.add('from vendedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'ven_Codigo';
  Search.Title := 'Listado de Vendedores';
  if Search.execute then
  begin
    if not (QFactura.State in [dsEdit, dsInsert]) then
      QFactura.Edit;

    QFacturaVEN_CODIGO.value := strtoint(Search.ValueField);
    dbVendedor.setfocus;
  end;
end;
procedure TfrmFactura.QFacturaVEN_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QFacturaVEN_CODIGO.isnull then
  begin
    Text := inttostr(QFacturaVEN_CODIGO.value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select ven_nombre, ven_comventa from vendedores');
    dm.Query1.sql.add('where emp_Codigo = :emp');
    dm.Query1.sql.add('and ven_Codigo = :ven');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('ven').Value := QFacturaVEN_CODIGO.value;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      tVendedor.text := ''
    else
    begin
      tVendedor.text := dm.Query1.fieldbyname('ven_nombre').asstring;
      Comision := dm.Query1.fieldbyname('ven_comventa').AsFloat;
    end;
  end
  else
    tVendedor.text := '';
end;

procedure TfrmFactura.QFacturaCPA_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
 var
  fechaBase, fechaLim: TDateTime;
  q: TADOQuery;
  codCondi, dias: Integer;
begin
  if not QFacturaCPA_CODIGO.isnull then
  begin
    Text := inttostr(QFacturaCPA_CODIGO.value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cpa_nombre, cpa_dias, cpa_intervalo, cpa_cuotas, cpa_intereses');
    dm.Query1.sql.add('from condiciones');
    dm.Query1.sql.add('where emp_Codigo = :emp');
    dm.Query1.sql.add('and cpa_Codigo = :con');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('con').Value := QFacturaCPA_CODIGO.value;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      tCondicion.text := ''
    else
    begin
      tCondicion.text := dm.Query1.fieldbyname('cpa_nombre').asstring;
      Dias := dm.Query1.fieldbyname('cpa_dias').asinteger;
      Intervalo := dm.Query1.fieldbyname('cpa_intervalo').asinteger;
      Cuotas := dm.Query1.fieldbyname('cpa_cuotas').asstring;
      Intereses := dm.Query1.fieldbyname('cpa_intereses').asstring;

      // 1) Guardar c?digo seleccionado
      codCondi := QFacturaCPA_CODIGO.value;
      //dbinteres.Enabled := intereses = 'True';

      // 2) Calcular fecha l?mite (base = hoy o la fecha de la factura)
      // Usa la fecha de la factura si la tienes en el dataset:
      if QFactura.FindField('FAC_FECHA') <> nil then
        fechaBase := QFactura.FieldByName('FAC_FECHA').AsDateTime
      else
        fechaBase := Date;

       // Con DateUtils: fechaLim := IncDay(fechaBase, dias);
      fechaLim := fechaBase + dias;

      // 4) Asignar a tu TBEdit dtFechaLimite (o al campo de la tabla si est? ligado)
      // Si dtFechaLimite es un TEdit/TBEdit:
      dtFechaLimite.Text := FormatDateTime('dd/mm/yyyy', fechaLim);

      // Si adem?s tienes un campo en QFactura para guardar la fecha l?mite:
      if QFactura.FindField('FECHA_LIMITE') <> nil then
      begin
        QFactura.Edit;
        QFactura.FieldByName('FECHA_LIMITE').AsDateTime := fechaLim;
        QFactura.Post;
      end;

    end;
  end
  else
    tCondicion.text := '';
end;

procedure TfrmFactura.QFacturaNewRecord(DataSet: TDataSet);
var
  a, tiponcf, fila : integer;
begin
  vp_verifone := False;
  MDDetalle.Close;
  DBLookupComboBox2.Enabled := True;
  vl_accion := 1;
  idFacturaTmp :=NumeroRandom;

   if QDetalleDET_DESCUENTO.ReadOnly = True then
   QDetalleDET_DESCUENTO.ReadOnly := False;
   
   idFacturaTmp :=NumeroRandom;
  

  CtaCliente := '';

  QCuentas.DisableControls;
  QCuentas.close;
  QCuentas.Parameters.ParamByName('emp').Value    := dm.vp_cia;
  QCuentas.Parameters.ParamByName('tipo').Value   := -1;
  QCuentas.Parameters.ParamByName('forma').Value  := 'A';
  QCuentas.Parameters.ParamByName('numero').Value := -1;
  QCuentas.Parameters.ParamByName('suc').Value    := -1;
  QCuentas.open;
  QCuentas.EnableControls;

  QSerie.Close;
  QSerie.Parameters.ParamByName('emp').Value  := dm.QEmpresasEMP_CODIGO.value;
  QSerie.Parameters.ParamByName('tipo').Value := -1;
  QSerie.Parameters.ParamByName('forma').Value := 'A';
  QSerie.Parameters.ParamByName('num').Value  := -1;
  QSerie.Parameters.ParamByName('suc').Value := -1;
  QSerie.Open;
  for a := 0 to GridSerie.RowCount-1 do
  begin
      GridSerie.Cells[0,fila] := '';
      fila := fila + 1;
  end;

  QPedidos.DisableControls;
  QPedidos.close;
  QPedidos.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QPedidos.Parameters.ParamByName('tfa').Value := -1;
  QPedidos.Parameters.ParamByName('for').Value := 'A';
  QPedidos.Parameters.ParamByName('num').Value := -1;
  QPedidos.Parameters.ParamByName('suc').Value := -1;
  QPedidos.open;
  QPedidos.EnableControls;

  if (dm.QParametrospar_formato_preimpreso.Value = 'QClinico') and
  (dm.QParametrospar_fac_preimpresa.Value = 'True') then
  begin
    lbfacturas.Caption := '0 Facturas';
    lbrecords.Caption  := '0 Records';
    cli_facturas := 0;
    cli_records  := 0;

    QClinico.DisableControls;
    QClinico.close;
    QClinico.Parameters.ParamByName('emp').Value := dm.vp_cia;
    QClinico.Parameters.ParamByName('suc').Value := -1;
    QClinico.Parameters.ParamByName('for').Value := 'A';
    QClinico.Parameters.ParamByName('tfa').Value := -1;
    QClinico.Parameters.ParamByName('fac').Value := -1;
    QClinico.open;
    QClinico.EnableControls;
  end;

  edTipo.Enabled := True;
  btTipo.Enabled := True;

  intereses := 'False';
  Lista.Items.Clear;
  //lbCantidad.caption := '0';
  Recibido := '';
  Devuelta := '';
  Total    := 0;
  TotalOtros := 0;
  Totaliza   := True;
  Buscando   := False;
  descuento  := 0;
  btBalance.caption := 'Balance';
  tLimite.text      := '';
  FactDebajoCosto   := 'False';
  FactDebajoMinimo  := 'False';

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select car_nombre, isnull(car_monto,0) as monto, isnull(car_porciento,0) as porc');
  dm.Query1.sql.add('from cargos where emp_codigo = :emp');
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  dm.Query1.open;
  if dm.Query1.RecordCount > 0 then
  begin
    PorcFijo  := dm.Query1.FieldByName('porc').Value;
    MontoFijo := dm.Query1.FieldByName('monto').Value;
    NombreOtro := dm.Query1.FieldByName('car_nombre').Value;
  end;

  QFacturaMON_CODIGO.Value := dm.QParametrosMON_CODIGO.Value;

   if not QFacturaMON_CODIGO.IsNull then
  begin
    Text := IntToStr(QFacturaMON_CODIGO.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select mon_sigla, MON_RELACIONPESOCOMPRA, mon_nombre from moneda');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and mon_codigo = :mon');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('mon').Value := QFacturaMON_CODIGO.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      tmoneda.Text := dm.Query1.FieldByName('mon_nombre').AsString+' ('+dm.Query1.FieldByName('mon_sigla').AsString+')';
      QFacturaFAC_TASA.Value := DM.Query1.fieldbyname('MON_RELACIONPESOCOMPRA').AsFloat;
    end
    else
    begin
      tmoneda.Text := '';
    end;

      //Buscamos la tasa de cambio del dolar
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select mon_sigla, MON_RELACIONPESOCOMPRA from moneda');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and mon_codigo = :mon');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('mon').Value := 2;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      QFacturafac_tasacambio.Value := dm.Query1.FieldByName('MON_RELACIONPESOCOMPRA').AsFloat;
    end
    else
    begin
      QFacturafac_tasacambio.Value := 1;
    end;
  end;

  qOrdenesTaller.close;

  copias := 1;
  edTipo.Text := IntToStr(TipoFac);
  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select tfa_nombre, tfa_selcondi, tfa_formatoimp, tfa_puertoimp,');
  dm.Query1.sql.add('tfa_actbalance, tfa_cliente, ven_codigo, tfa_precio, tfa_permite_abonar,');
  dm.Query1.sql.add('tfa_mensaje1, tfa_mensaje2, tfa_mensaje3, fpa_codigo, tfa_copias, tip_codigo,');
  dm.Query1.sql.add('tfa_verlimite, tfa_itbis, tfa_imprimie_encabezado, tfa_rnc, cat_cuenta, ');
  dm.Query1.sql.add('tfa_modifica_nombre, tfa_espcliente espcliente');
  dm.Query1.sql.add(',Envio_Correo, Envio_Estadocta');
  dm.Query1.sql.add('from tiposfactura');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and tfa_codigo = :cod');
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edTipo.text));
  dm.Query1.open;

  CtaTipoFactura := dm.Query1.fieldbyname('cat_cuenta').asstring;
  SelRNC := dm.Query1.fieldbyname('tfa_rnc').asString;
  ConItbis := dm.Query1.fieldbyname('tfa_itbis').AsString;
  QFacturaFAC_CONITBIS.Value := ConItbis;
  PermiteAbonar := dm.Query1.fieldbyname('tfa_permite_abonar').AsString;
  ImprimeEncaqbezado := dm.Query1.fieldbyname('tfa_imprimie_encabezado').AsString;
  vtfa_espcliente := DM.Query1.FieldByName('espcliente').AsString;
  ModificaNombre := dm.Query1.fieldbyname('tfa_modifica_nombre').asstring;
  copias     := dm.Query1.fieldbyname('tfa_copias').asinteger;
  CopiasExtraImp := copias;
  FPagoIni   := dm.Query1.fieldbyname('fpa_codigo').asinteger;
  Precio     := dm.Query1.fieldbyname('tfa_precio').asstring;
  PuertoImp  := dm.Query1.fieldbyname('tfa_puertoimp').asstring;
  FormatoImp := dm.Query1.fieldbyname('tfa_formatoImp').asinteger;
  tTipo.text := dm.Query1.fieldbyname('tfa_nombre').asstring;
  vEnvioEstadoCta := DM.Query1.FieldByName('Envio_Estadocta').Value;
  chkMail.Checked := DM.Query1.FieldByName('Envio_Correo').Value;
  actbalance := dm.Query1.fieldbyname('tfa_actbalance').asstring;
  SelCondi := dm.Query1.FieldByName('tfa_selcondi').AsBoolean;
  VerLimite  := dm.Query1.fieldbyname('tfa_verlimite').asstring;
  dbCondi.Enabled := SelCondi;
  btCondi.Enabled := SelCondi;

  if dm.Query1.fieldbyname('tip_codigo').AsInteger > 0 then
    tiponcf := dm.Query1.fieldbyname('tip_codigo').AsInteger;

  SelRNC := 'False';
  QFacturafac_hold.Value := 'False';
  QFacturafac_selectivo_ad.Value := 0;
  QFacturafac_selectivo_con.Value := 0;
  QFacturaNUMERO_RESERVA.Clear;
  QFacturaFAC_DEVUELTO.Value := 0;
  QFacturaFAC_MENSAJE1.Value := trim( dm.Query1.fieldbyname('tfa_mensaje1').asstring);
  QFacturaFAC_MENSAJE2.Value := dm.Query1.fieldbyname('tfa_mensaje2').asstring;
  QFacturaFAC_MENSAJE3.Value := dm.Query1.fieldbyname('tfa_mensaje3').asstring;
  if dm.Query1.fieldbyname('tfa_actbalance').asstring = 'False' then
  begin
    if QFacturaFAC_NOMBRE.isnull then
      QFacturaFAC_NOMBRE.Value := dm.Query1.fieldbyname('tfa_cliente').asstring;

    if QFacturaVEN_CODIGO.isnull then
      QFacturaVEN_CODIGO.Value := dm.Query1.fieldbyname('ven_codigo').asinteger;
  end;

  if tiponcf > 0 then
     QFacturatip_codigo.Value := tiponcf;

  if copias = 0 then copias := 1;

  ckdomicilio.Visible := dm.QParametrospar_domicilio.Value = 'True';
  QFacturaSUC_CODIGO.Value :=  QSucursalsuc_codigo.Value;
  QFacturaUSU_CODIGO.value := dm.Usuario;
//  QFacturaALM_CODIGO.value := dm.QParametrosPAR_ALMACENVENTA.value;
  QFacturaFAC_ITBIS.Value := 0;
  QFacturaFAC_DESCUENTO.Value := 0;
  QFacturaFAC_OTROS.value  := 0;
  QFacturaFAC_ABONO.value  := 0;
  QFacturaporc_desc_gral.Value := 0;
  QFacturaFAC_STATUS.value := 'PEN';
  QFacturaFAC_TOTAL.value  := 0;
  QFacturaFAC_FECHA.value  := date;
  QFacturaCAJ_CODIGO.value := Cajero;
  QFacturafac_caja.Value   := caja;
  QFacturaEMP_CODIGO.value := dm.vp_cia;
  if Vendedor > 0 then
    QFacturaVEN_CODIGO.Value := Vendedor;

  if (TimeOf(Now) >= TimeOf(dm.QParametrosPAR_AHORA1.Value)) and
  (TimeOf(Now) <= TimeOf(dm.QParametrosPAR_AHORA2.Value)) then
     QFacturaFAC_FORMA.Value := 'A'
  else
     QFacturaFAC_FORMA.Value := 'B';

  QDetalle.DisableControls;
  QDetalle.close;
  QDetalle.Parameters.ParamByName('emp').Value    := dm.vp_cia;
  QDetalle.Parameters.ParamByName('tipo').Value   := -1;
  QDetalle.Parameters.ParamByName('forma').Value  := 'A';
  QDetalle.Parameters.ParamByName('numero').Value := -1;
  QDetalle.Parameters.ParamByName('suc').Value    := -1;
  QDetalle.open;
  QDetalle.EnableControls;


  QEnvio.DisableControls;
  QEnvio.close;
  QEnvio.Parameters.ParamByName('emp').Value  := dm.vp_cia;
  QEnvio.Parameters.ParamByName('fac').Value := -1;
  QEnvio.Parameters.ParamByName('suc').Value := -1;
  QEnvio.Parameters.ParamByName('tfac').Value := -1;
  QEnvio.open;
  QEnvio.EnableControls;

  QReceta.Close;

  edCliente.text := '';

  Totaliza := True;

  with dm.adoMultiUso do begin
  Close;
  SQL.Clear;
  SQL.Add('select isnull(tfa_codigo,0) tipo, isnull(fac_caja,0) caja,');
  SQL.Add('(select caj_nombre from cajas where emp_codigo = c.emp_codigo and caj_codigo = c.fac_caja) nombre');
  SQL.Add('from cajeros c');
  SQL.Add('where c.emp_codigo = :emp and c.caj_codigo = :cajero');
  Parameters.ParamByName('emp').Value := DM.vp_cia;
  Parameters.ParamByName('cajero').Value := QFacturaCAJ_CODIGO.Value;
  Open;
  if FieldByName('tipo').Value > 0 then begin
  edTipo.Text := IntToStr(FieldByName('tipo').Value);
  edTipoExit(Self);
  //edTipo.Enabled := False;
  //btTipo.Enabled := edTipo.Enabled;
  //tTipo.Enabled := edTipo.Enabled;
  end;
  if FieldByName('tipo').Value = 0 then begin
  edTipo.Enabled := True;
  btTipo.Enabled := edTipo.Enabled;
  tTipo.Enabled := edTipo.Enabled;
  end;
  if FieldByName('caja').Value > 0 then begin
  dbCaja.Text := IntToStr(FieldByName('caja').Value);
  tcaja.Text  := FieldByName('nombre').Value;
  dbCaja.Enabled := False;
  btcaja.Enabled := edTipo.Enabled;
  tcaja.Enabled := edTipo.Enabled;
  end;
  if FieldByName('caja').Value = 0 then begin
  dbCaja.Enabled := True;
  tcaja.Enabled := edTipo.Enabled;
  btcaja.Enabled := edTipo.Enabled;
  end;
  end;

  if vCajVendedor = True then begin
  btPedido.Enabled := False;
  btCotiza.Enabled := true;
  btBusca.Enabled := btPedido.Enabled;
  btGrabar.Enabled := btPedido.Enabled;
  end;

  if vCajVendedor = False then begin
  btPedido.Enabled := True;
  //btCotiza.Enabled := btPedido.Enabled;
  btBusca.Enabled := btPedido.Enabled;
  btGrabar.Enabled := btPedido.Enabled;
  end;

  if dm.QUsuariosusu_descuento.Value = 'True' then
  BtDescGral.Enabled := True else
  BtDescGral.Enabled := False;

  IF DM.QUsuariosusu_modifica_factura.Value = 'True' then
  btBusca.Enabled := True else
  btBusca.Enabled := False;




  {if (dm.QParametrospar_itbisincluido.Value <> 'True') and (ConItbis <> 'True') then
    QFacturaFAC_CONITBIS.Value := dm.QParametrosPAR_FACCONITBIS.Value
  else
    if ConItbis = 'True' then
      QFacturaFAC_CONITBIS.Value := 'True'
    else
      QFacturaFAC_CONITBIS.Value := 'False';
   }
  //ckItbis.Visible := dm.QParametrospar_itbisincluido.Value <> 'True';

  QFacturaFAC_DOMICILIO.Value := 'False';

  {if dm.QParametrosPAR_FACBAJARLINEA.Value = 'True' then
  begin
    PageControl1.ActivePageIndex := 0;
  end
  else
  begin
    if actbalance = 'True' then
      edCliente.SetFocus
    else
    begin
      PageControl1.ActivePageIndex := 0;
      Grid.SetFocus;
    end;
  end;}

  PageControl1.ActivePageIndex := 0;
  Grid.SetFocus;
  frmFormaPagoFac.QFormaPago.Close;
end;

procedure TfrmFactura.edClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Cliente : integer;
begin
  vl_cliente := 0;
  if key = vk_return then
  begin
    if trim(edCliente.text) <> '' then
    begin
      Query1.close;
      Query1.sql.clear;
      Query1.sql.add('select cli_referencia, cli_codigo, cli_nombre, cli_balance,');
      Query1.sql.add('cli_limite, cli_precio, cli_descuento, ven_codigo, cpa_codigo,');
      Query1.sql.add('cli_direccion, cli_localidad, cli_telefono, cli_fax, cli_facturarbce,');
      Query1.sql.add('cli_facturarvencida, cli_precio, cli_cuenta, pro_codigo, tfa_codigo,');
      Query1.sql.add('cli_factura_debajo_costo, cli_factura_debajo_minimo,cli_email, tcl_codigo, replace(cli_cedula,'+QuotedStr('-')+','+QuotedStr('')+') cli_cedula, cli_rnc, tfa_codigo');
      Query1.sql.add('from clientes');
      Query1.sql.add('where emp_codigo = :emp');
      Query1.sql.add('and cli_Status = '+#39+'ACT'+#39);
      if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
      begin
        Query1.sql.add('and cli_codigo = :cli');
        Query1.Parameters.parambyname('cli').Value := strtoint(edCliente.text);
      end
      else
      begin
        Query1.sql.add('and cli_referencia = :cli');
        Query1.Parameters.parambyname('cli').Value := edCliente.text;
      end;
      Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      Query1.open;
      Cliente          := Query1.fieldbyname('cli_codigo').asinteger;
      vl_cliente       := Cliente;
      CtaCliente       := Query1.fieldbyname('cli_cuenta').asstring;
      FactPendiente    := Query1.fieldbyname('cli_facturarbce').asstring;
      FactVencida      := Query1.fieldbyname('cli_facturarvencida').asstring;
      FactDebajoCosto  := Query1.fieldbyname('cli_factura_debajo_costo').asstring;
      vl_dest          := Query1.fieldbyname('cli_email').AsString;
      FactDebajoMinimo := Query1.fieldbyname('cli_factura_debajo_minimo').asstring;

    if Query1.fieldbyname('cli_Precio').asstring <> 'Ninguno' then
      Precio := Query1.fieldbyname('cli_Precio').asstring
    else if not Query1.FieldByName('tcl_codigo').IsNull then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select tcl_precio from tipoclientes');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and tcl_codigo = :tcl');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.ParamByName('tcl').Value := Query1.FieldByName('tcl_codigo').AsInteger;
      dm.Query1.Open;
      Precio := dm.Query1.FieldByName('tcl_precio').AsString;
    end;


      if Query1.fieldbyname('tfa_codigo').AsInteger > 0 then
        QFacturatip_codigo.Value := Query1.fieldbyname('tfa_codigo').AsInteger;

      if (not Query1.FieldByName('cli_cuenta').IsNull) and (actbalance = 'True') then
      begin
        if Trim(CtaCliente) <> '' then
        begin
          if not QCuentas.Locate('cat_cuenta',CtaCliente,[]) then
          begin
            QCuentas.Append;
            QCuentascat_cuenta.Value := CtaCliente;
            QCuentasdet_origen.Value := 'Debito';
            QCuentasdet_monto.Value  := 0;
            QCuentas.Post;
          end
          else
          begin
            QCuentas.Edit;
            QCuentasdet_origen.Value := 'Debito';
            QCuentasdet_monto.Value  := 0;
            QCuentas.Post;
          end;
        end;
      end;

   {   if Query1.fieldbyname('cli_Precio').asstring <> 'Ninguno' then
        Precio := Query1.fieldbyname('cli_Precio').asstring
      else if not Query1.FieldByName('tcl_codigo').IsNull then
      begin
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select tcl_precio from tipoclientes');
        dm.Query1.SQL.Add('where emp_codigo = :emp');
        dm.Query1.SQL.Add('and tcl_codigo = :tcl');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
        dm.Query1.Parameters.ParamByName('tcl').Value := Query1.FieldByName('tcl_codigo').AsInteger;
        dm.Query1.Open;
        Precio := dm.Query1.FieldByName('tcl_precio').AsString;
      end;
}
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select * from PR_BUSCA_VENCIDO (:emp, :cli, :fec)');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.ParamByName('cli').Value := Cliente;
      dm.Query1.Parameters.ParamByName('fec').Value    := Date;
      dm.Query1.Open;
      Vencidos := dm.Query1.FieldByName('vencido').asstring;
      if Query1.Recordcount = 0 then
      begin
        if MessageDlg('ESTE CLIENTE NO EXISTE, DESEA CREARLO',mtError,[mbno, mbyes],0) = mryes then
        begin
          edCliente.SetFocus;
          frmMain.ActivaForma(tfrmClientes, TForm(frmClientes));
          frmClientes.btInsertClick(Self);
          if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'R' then
            frmClientes.QClientesCLI_REFERENCIA.Value := Trim(edCliente.Text);
        end
        else
          edCliente.SetFocus;
      end
      else if (actbalance = 'True') and (VerLimite = 'True') and
      (StrToFloat(Format('%10.2f',[Query1.fieldbyname('cli_limite').asfloat])) = 0) then
      begin
        MessageDlg('ESTE CLIENTE NO TIENE LIMITE DE CREDITO ASIGNADO,'+#13+
                   'NO PUEDE REALIZARLE UNA FACTURA DE ESTE TIPO',mtError,[mbok],0);
        edCliente.SetFocus;
      end
      else if (actbalance = 'True') and (VerLimite = 'True') and
      (StrToFLoat(Format('%10.2f',[Query1.fieldbyname('cli_limite').asfloat])) -
      StrToFLoat(Format('%10.2f',[Query1.fieldbyname('cli_balance').asfloat])) <= 0) then
      begin
        MessageDlg('ESTE CLIENTE NO TIENE LIMITE DE CREDITO DISPONIBLE,'+#13+
                   'NO PUEDE REALIZARLE UNA FACTURA DE ESTE TIPO',mtError,[mbok],0);
        edCliente.SetFocus;
      end
      else if (actbalance = 'True') and (Query1.fieldbyname('cli_balance').asfloat > 0)
      and (FactPendiente = 'N') then
      begin
        MessageDlg('ESTE CLIENTE TIENE BALANCE PENDIENTE DE '+
                      Format('%n',[Query1.fieldbyname('cli_balance').asfloat])+', Y NO'+#13+
                   'PUEDE REALIZARLE UNA FACTURA DE ESTE TIPO.'+#13+
                   'PARA PODER HACERLO DEBE DE SALDAR LA CUENTA.',mtError,[mbok],0);
        edCliente.SetFocus;
      end
      else if (actbalance = 'True') and (Query1.fieldbyname('cli_balance').asfloat > 0)
      and (FactVencida = 'N') and (Vencidos = 'S') then
      begin
        MessageDlg('ESTE CLIENTE TIENE FACTURAS VENCIDAS, Y NO'+#13+
                   'PUEDE REALIZARLE UNA FACTURA DE ESTE TIPO',mtError,[mbok],0);
        edCliente.SetFocus;
      end
      else
      begin
        //edTipo.Enabled := False;
        //btTipo.Enabled := False;
        if Precio = '' then
        begin
          if not Query1.fieldbyname('cli_Precio').IsNull then
            Precio := Query1.fieldbyname('cli_Precio').asstring
          else
            Precio := 'Precio1';
        end;

        FactPendiente                := Query1.fieldbyname('cli_facturarbce').asstring;
        FactVencida                  := Query1.fieldbyname('cli_facturarvencida').asstring;
        QFacturaPRO_CODIGO.Value     := Query1.fieldbyname('pro_codigo').asinteger;
        QFacturaCLI_CODIGO.value     := Query1.fieldbyname('cli_Codigo').asinteger;
        QFacturaFAC_NOMBRE.value     := Query1.fieldbyname('cli_nombre').asstring;
        QFacturaCLI_REFERENCIA.value := Query1.fieldbyname('cli_referencia').asstring;
        btBalance.caption            := 'Bce:'+format('%n',[Query1.fieldbyname('cli_balance').asfloat]);
        Balance                      := Query1.fieldbyname('cli_balance').asfloat;
        tLimite.text                 := format('%n',[Query1.fieldbyname('cli_limite').asfloat - Query1.fieldbyname('cli_balance').asfloat]);
        Limite                       := StrToFloat(format('%10.2f',[Query1.fieldbyname('cli_limite').asfloat]))-
                                        StrToFloat(format('%10.2f',[Query1.fieldbyname('cli_balance').asfloat]));
        QFacturaFAC_DIRECCION.value  := Query1.fieldbyname('cli_direccion').asstring;
        QFacturaFAC_LOCALIDAD.value  := Query1.fieldbyname('cli_localidad').asstring;
        QFacturaFAC_TELEFONO.value   := Query1.fieldbyname('cli_telefono').asstring;
        QFacturaFAC_FAX.value        := Query1.fieldbyname('cli_fax').asstring;

        if (Query1.fieldbyname('cli_rnc').isnull) or (Trim(Query1.fieldbyname('cli_rnc').asstring) = '') then
          QFacturaFAC_RNC.Value := Query1.fieldbyname('cli_cedula').asstring
        else
          QFacturaFAC_RNC.Value := Query1.fieldbyname('cli_rnc').asstring;

        descuento                    := Query1.fieldbyname('cli_descuento').asfloat;
        if not Query1.fieldbyname('ven_Codigo').IsNull then
          QFacturaVEN_CODIGO.Value     := Query1.fieldbyname('ven_Codigo').asinteger;
        if actbalance = 'True' then
           QFacturaCPA_CODIGO.Value     := Query1.fieldbyname('cpa_Codigo').asinteger
        else
          QFacturaCPA_CODIGO.Clear;

        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select * from PR_BUSCA_VENCIDO (:emp, :cli, :fec)');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
        dm.Query1.Parameters.ParamByName('cli').Value := QFacturaCLI_CODIGO.Value;
        dm.Query1.Parameters.ParamByName('fec').Value    := Date;
        dm.Query1.Open;
        Vencidos := dm.Query1.FieldByName('vencido').asstring;

        totalizar;

        PageControl1.ActivePageIndex := 0;
        Grid.SetFocus;
      end;
    end
    else
      edCliente.SetFocus;
  end;
 IF ((vl_cliente > 0)  and (FileExists('.\Transporte.Txt'))) then
      BuscarProdLiquidacionTickets;
end;

procedure TfrmFactura.btBuscaCliClick(Sender: TObject);
var
  Cliente : integer;
  fechaBase, fechaLim: TDateTime;
  q: TADOQuery;
  codCondi, dias: Integer;
begin
  Search.Query.clear;
  Search.AliasFields.clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Telefono');
  Search.AliasFields.Add('Cedula/RNC');
  Search.AliasFields.Add('Codigo');
  Search.Query.add('select substring(cli_nombre,1,50) as cli_nombre, cli_telefono, cli_cedula, cli_codigo, cli_referencia');
  if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
    Search.ResultField := 'cli_codigo'
  else
    Search.ResultField := 'cli_referencia';
  Search.Query.add('from clientes');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.Query.add('and cli_Status = '+#39+'ACT'+#39);
  Search.Title := 'Listado de clientes';
  if Search.execute then
  begin
    edCliente.text := search.valuefield;
    edCliente.setfocus;
    Query1.close;
    Query1.sql.clear;
    Query1.sql.add('select cli_codigo, cli_nombre, cli_balance, cli_referencia,');
    Query1.sql.add('cli_limite, cli_precio, cli_descuento, ven_codigo, cpa_codigo,');
    Query1.sql.add('cli_direccion, cli_localidad, cli_telefono, cli_fax, cli_facturarbce,');
    Query1.sql.add('cli_facturarvencida, cli_precio, cli_cuenta, pro_codigo,');
    Query1.sql.add('cli_factura_debajo_costo, cli_factura_debajo_minimo, tcl_codigo,');
    Query1.sql.add('cli_cedula, cli_rnc, tfa_codigo, cli_email');
    Query1.sql.add('from clientes');
    Query1.sql.add('where emp_codigo = :emp');
    Query1.sql.add('and cli_Status = '+#39+'ACT'+#39);
    if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
    begin
      Query1.sql.add('and cli_codigo = :cli');
      Query1.Parameters.parambyname('cli').Value := strtoint(search.valuefield);
    end
    else
    begin
      Query1.sql.add('and cli_referencia = :cli');
      Query1.Parameters.parambyname('cli').Value := search.valuefield;
    end;
    Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    Query1.open;
    CtaCliente       := Query1.fieldbyname('cli_cuenta').asstring;
    FactPendiente    := Query1.fieldbyname('cli_facturarbce').asstring;
    FactVencida      := Query1.fieldbyname('cli_facturarvencida').asstring;
    FactDebajoCosto  := Query1.fieldbyname('cli_factura_debajo_costo').asstring;
    vl_dest          := Query1.fieldbyname('cli_email').AsString;
    FactDebajoMinimo := Query1.fieldbyname('cli_factura_debajo_minimo').asstring;

     if Query1.fieldbyname('cli_Precio').asstring <> 'Ninguno' then
      Precio := Query1.fieldbyname('cli_Precio').asstring
    else if not Query1.FieldByName('tcl_codigo').IsNull then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select tcl_precio from tipoclientes');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and tcl_codigo = :tcl');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.ParamByName('tcl').Value := Query1.FieldByName('tcl_codigo').AsInteger;
      dm.Query1.Open;
      Precio := dm.Query1.FieldByName('tcl_precio').AsString;
    end;

    
    if Query1.fieldbyname('tfa_codigo').AsInteger > 0 then
      QFacturatip_codigo.Value := Query1.fieldbyname('tfa_codigo').AsInteger;

      {edTipo.Text := Query1.fieldbyname('tfa_codigo').AsString;

      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select tfa_nombre, tfa_selcondi, tfa_formatoimp, tfa_puertoimp,');
      dm.Query1.sql.add('tfa_actbalance, tfa_cliente, ven_codigo, tfa_precio,');
      dm.Query1.sql.add('tfa_mensaje1, tfa_mensaje2, tfa_mensaje3, fpa_codigo,');
      dm.Query1.sql.add('tfa_verlimite, tfa_copias, tfa_permite_abonar, tfa_itbis,');
      dm.Query1.sql.add('tfa_imprimie_encabezado, tfa_rnc, tfa_modifica_nombre');
      dm.Query1.sql.add('from tiposfactura');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and tfa_codigo = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edTipo.text));
      dm.Query1.open;

      ConItbis := dm.Query1.FieldByName('tfa_itbis').AsString;
      QFacturaFAC_CONITBIS.Value := ConItbis;
      PermiteAbonar := dm.Query1.fieldbyname('tfa_permite_abonar').AsString;
      ImprimeEncaqbezado := dm.Query1.fieldbyname('tfa_imprimie_encabezado').AsString;

      ModificaNombre := dm.Query1.fieldbyname('tfa_modifica_nombre').asstring;
      copias     := dm.Query1.fieldbyname('tfa_copias').asinteger;
  CopiasExtraImp := copias;
      FPagoIni   := dm.Query1.fieldbyname('fpa_codigo').asinteger;
      Precio     := dm.Query1.fieldbyname('tfa_precio').asstring;
      PuertoImp  := dm.Query1.fieldbyname('tfa_puertoimp').asstring;
      FormatoImp := dm.Query1.fieldbyname('tfa_formatoImp').asinteger;
      tTipo.text := dm.Query1.fieldbyname('tfa_nombre').asstring;
      actbalance := dm.Query1.fieldbyname('tfa_actbalance').asstring;
      VerLimite  := dm.Query1.fieldbyname('tfa_verlimite').asstring;
      SelCondi   := dm.Query1.FieldByName('tfa_selcondi').AsBoolean;
      SelRNC     := dm.Query1.fieldbyname('tfa_rnc').asString;
      dbCondi.Enabled := SelCondi;
      btCondi.Enabled := SelCondi;

      QFacturaFAC_MENSAJE1.Value := dm.Query1.fieldbyname('tfa_mensaje1').asstring;
      QFacturaFAC_MENSAJE2.Value := dm.Query1.fieldbyname('tfa_mensaje2').asstring;
      QFacturaFAC_MENSAJE3.Value := dm.Query1.fieldbyname('tfa_mensaje3').asstring;
      if dm.Query1.fieldbyname('tfa_actbalance').asstring = 'False' then
      begin
        if QFacturaFAC_NOMBRE.isnull then
          QFacturaFAC_NOMBRE.Value := dm.Query1.fieldbyname('tfa_cliente').asstring;
        if QFacturaVEN_CODIGO.isnull then
          QFacturaVEN_CODIGO.Value := dm.Query1.fieldbyname('ven_codigo').asinteger;
      end;
      totalizar;
    end;}

    if (not Query1.FieldByName('cli_cuenta').IsNull) and (actbalance = 'True') then
    begin
      if Trim(CtaCliente) <> '' then
      begin
        if not QCuentas.Locate('cat_cuenta',CtaCliente,[]) then
        begin
          QCuentas.Append;
          QCuentascat_cuenta.Value := CtaCliente;
          QCuentasdet_origen.Value := 'Debito';
          QCuentasdet_monto.Value  := 0;
          QCuentas.Post;
        end
        else
        begin
          QCuentas.Edit;
          QCuentasdet_origen.Value := 'Debito';
          QCuentasdet_monto.Value  := 0;
          QCuentas.Post;
        end;
      end;
    end;

    Cliente := Query1.fieldbyname('cli_codigo').asinteger;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select * from PR_BUSCA_VENCIDO (:emp, :cli, :fec)');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cli').Value := Cliente;
    dm.Query1.Parameters.ParamByName('fec').Value := Date;
    dm.Query1.Open;
    Vencidos := dm.Query1.FieldByName('vencido').asstring;

    if (actbalance = 'True') and (VerLimite = 'True') and
    (StrToFloat(Format('%10.2f',[Query1.fieldbyname('cli_limite').asfloat])) = 0) then
    begin
      MessageDlg('ESTE CLIENTE NO TIENE LIMITE DE CREDITO ASIGNADO,'+#13+
                 'NO PUEDE REALIZARLE UNA FACTURA DE ESTE TIPO',mtError,[mbok],0);
      edCliente.SetFocus;
    end
    else if (actbalance = 'True') and (VerLimite = 'True') and
    (StrToFLoat(Format('%10.2f',[Query1.fieldbyname('cli_limite').asfloat])) -
    StrToFLoat(Format('%10.2f',[Query1.fieldbyname('cli_balance').asfloat])) <= 0) then
    begin
      MessageDlg('ESTE CLIENTE NO TIENE LIMITE DE CREDITO DISPONIBLE,'+#13+
                 'NO PUEDE REALIZARLE UNA FACTURA DE ESTE TIPO',mtError,[mbok],0);
      edCliente.SetFocus;
    end
    else if (actbalance = 'True') and (Query1.fieldbyname('cli_balance').asfloat > 0)
    and (FactPendiente = 'N') then
    begin
      MessageDlg('ESTE CLIENTE TIENE BALANCE PENDIENTE, Y NO'+#13+
                 'PUEDE REALIZARLE UNA FACTURA DE ESTE TIPO',mtError,[mbok],0);
      edCliente.SetFocus;
    end
    else if (actbalance = 'True') and (Query1.fieldbyname('cli_balance').asfloat > 0)
    and (FactVencida = 'N') and (Vencidos = 'S') then
    begin
      MessageDlg('ESTE CLIENTE TIENE FACTURAS VENCIDAS, Y NO'+#13+
                 'PUEDE REALIZARLE UNA FACTURA DE ESTE TIPO',mtError,[mbok],0);
      edCliente.SetFocus;
    end
    else
    begin
      //edTipo.Enabled := False;
      //btTipo.Enabled := False;
      if Precio = '' then
      begin
        if not Query1.fieldbyname('cli_Precio').IsNull then
          Precio := Query1.fieldbyname('cli_Precio').asstring
        else
          Precio := 'Precio1';
      end;

      FactPendiente                := Query1.fieldbyname('cli_facturarbce').asstring;
      FactVencida                  := Query1.fieldbyname('cli_facturarvencida').asstring;
      QFacturaPRO_CODIGO.Value     := Query1.fieldbyname('pro_codigo').asinteger;
      QFacturaFAC_NOMBRE.value     := Query1.fieldbyname('cli_nombre').asstring;
      QFacturaCLI_CODIGO.value     := Query1.fieldbyname('cli_Codigo').asinteger;
      QFacturaCLI_REFERENCIA.value := Query1.fieldbyname('cli_referencia').asstring;
      btBalance.caption            := 'Bce:'+format('%n',[Query1.fieldbyname('cli_balance').asfloat]);
      Balance                      := Query1.fieldbyname('cli_balance').asfloat;
      tLimite.text                 := format('%n',[Query1.fieldbyname('cli_limite').asfloat -
                                      Query1.fieldbyname('cli_balance').asfloat]);
      Limite                       := StrToFloat(format('%10.2f',[Query1.fieldbyname('cli_limite').asfloat]))-
                                      StrToFloat(format('%10.2f',[Query1.fieldbyname('cli_balance').asfloat]));
      //tDesc.text                   := format('%n',[Query1.fieldbyname('cli_descuento').asfloat]);
      QFacturaFAC_DIRECCION.value  := Query1.fieldbyname('cli_direccion').asstring;
      QFacturaFAC_LOCALIDAD.value  := Query1.fieldbyname('cli_localidad').asstring;
      QFacturaFAC_TELEFONO.value   := Query1.fieldbyname('cli_telefono').asstring;
      QFacturaFAC_FAX.value        := Query1.fieldbyname('cli_fax').asstring;

      if (Query1.fieldbyname('cli_rnc').isnull) or (Trim(Query1.fieldbyname('cli_rnc').asstring) = '') then
        QFacturaFAC_RNC.Value := Query1.fieldbyname('cli_cedula').asstring
      else
        QFacturaFAC_RNC.Value := Query1.fieldbyname('cli_rnc').asstring;

      descuento                    := Query1.fieldbyname('cli_descuento').asfloat;
      if actbalance = 'True' then
        QFacturaCPA_CODIGO.Value     := Query1.fieldbyname('cpa_Codigo').asinteger
      else
        QFacturaCPA_CODIGO.Clear;
      if not Query1.fieldbyname('ven_Codigo').IsNull then
        QFacturaVEN_CODIGO.Value     := Query1.fieldbyname('ven_Codigo').asinteger;

      totalizar;

      if actbalance = 'True' then
        if dbCondi.Enabled = True then
        begin
             dbCondi.SetFocus;
           // 1) Guardar c?digo seleccionado
          codCondi := StrToIntDef(dbCondi.Text, 0);
          QFactura.Edit;
          QFacturaCPA_CODIGO.AsInteger := codCondi;
          dbCondi.SetFocus;

    // 2) Leer cpa_dias con un query r?pido
    q := TADOQuery.Create(nil);
    try
      q.Connection := DM.ADOSigma; // AliasName = DM.ADOSigma
      q.SQL.Text :=
        'select cpa_dias ' +
        'from condiciones ' +
        'where emp_codigo = :emp and cpa_codigo = :cod';
      q.Parameters.ParamByName('emp').Value := dm.vp_cia;
      q.Parameters.ParamByName('cod').Value := codCondi;
      q.Open;

      dias := 0;
      if not q.Fields[0].IsNull then
        dias := q.Fields[0].AsInteger;
    finally
      q.Free;
    end;

    // 3) Calcular fecha l?mite (base = hoy o la fecha de la factura)
    // Usa la fecha de la factura si la tienes en el dataset:
    if QFactura.FindField('FAC_FECHA') <> nil then
      fechaBase := QFactura.FieldByName('FAC_FECHA').AsDateTime
    else
      fechaBase := Date;

    // Con DateUtils: fechaLim := IncDay(fechaBase, dias);
    fechaLim := fechaBase + dias;

    // 4) Asignar a tu TBEdit dtFechaLimite (o al campo de la tabla si est? ligado)
    // Si dtFechaLimite es un TEdit/TBEdit:
    dtFechaLimite.Text := FormatDateTime('dd/mm/yyyy', fechaLim);

    // Si adem?s tienes un campo en QFactura para guardar la fecha l?mite:
    if QFactura.FindField('FECHA_LIMITE') <> nil then
      QFactura.FieldByName('FECHA_LIMITE').AsDateTime := fechaLim;

    QFactura.Post;

        end

      else
      begin
        PageControl1.ActivePageIndex := 0;
        Grid.setfocus;
      end;
    end;
  end;
end;

procedure TfrmFactura.QDetalleCalcFields(DataSet: TDataSet);
var
  Venta, VentaUSD, NumItbis : Currency;
  a : integer;
begin

   if (dm.QParametrospar_fac_preimpresa.Value = 'True') and
   (dm.QParametrosservicio_construccion.AsBoolean = True) and
   (QDetalle.FieldByName('det_servicio_construccion').AsBoolean) then
    begin
          NumItbis := 0;
    end else  NumItbis := (QDetalleDET_ITBIS.Value/100)+1;

  if (QDetalleDET_CONITBIS.value = 'S') and (QFacturaFAC_CONITBIS.Value = 'True') then
  begin
    if (dm.QParametrospar_itbisincluido.Value = 'True') then
    begin
      Venta := (QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value)/NumItbis;
      QDetallePrecioItbis.value := Venta;
      QDetalleCalcDesc.value    := (Venta)*(QDetalleDET_DESCUENTO.value/100);
      //Jhonattan Gomez 2021-12-09 10:28 a.m.
      if ((ckItbis.Checked) and (QDetalleCalcDesc.Value = 0)) then begin
        QDetalleCalcItbis.value   := (Venta  * (QDetalleDET_ITBIS.value / 100));
      end
      else
      if ((ckItbis.Checked) and (QDetalleCalcDesc.Value > 0)) then begin
        QDetalleCalcItbis.value   := ((Venta - QDetalleCalcDesc.value) * (QDetalleDET_ITBIS.value / 100));
      end
      else
      begin
      QDetalleCalcItbisGral.Value  :=  0;
      QDetalleCalcItbis.Value  :=  0;
      end;

      {if (ckItbis.Checked)  then
        QDetalleCalcItbis.value   := ((((QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value)/NumItbis) - QDetalleCalcDesc.value ) * QDetalleDET_ITBIS.value) / 100
      else
      QDetalleCalcItbis.value   := 0;}
      QDetalleValor.value     := (QDetallePrecioItbis.value - QDetalleCalcDesc.value + QDetalleCalcItbis.value);
    end
    else
    begin
      Venta := QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value;
      QDetallePrecioItbis.value := Venta;
      QDetalleCalcDesc.value    := ((QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value) * QDetalleDET_DESCUENTO.value)/100;

    if (ckItbis.Checked)  then
      begin
         if (dm.QParametrospar_fac_preimpresa.Value = 'True') and
         (dm.QParametrosservicio_construccion.AsBoolean = True) and
         (QDetalle.FieldByName('det_servicio_construccion').AsBoolean) then
         begin
          QDetalleCalcItbis.value := 0;
         end else
          QDetalleCalcItbis.value := (((QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value) - QDetalleCalcDesc.value)* QDetalleDET_ITBIS.value) / 100  ;

      end
      else
      begin
        QDetalleCalcItbis.value := 0;
         end ;

      QDetalleValor.value     := (QDetallePrecioItbis.value - QDetalleCalcDesc.value + QDetalleCalcItbis.value);

    end;
  end
  else
  begin
    if (DM.QParametrospar_itbisincluido.Value = 'True') and (ckItbis.Checked)
    then
    begin
    Venta := (QDetalleDET_PRECIO.value/NumItbis) * QDetalleDET_CANTIDAD.Value ;
     end
    else
    begin
    Venta := (QDetalleDET_PRECIO.value) * QDetalleDET_CANTIDAD.Value;
    end ;
    QDetalleCalcDesc.value    := (Venta * QDetalleDET_DESCUENTO.value)/100;
    QDetallePrecioItbis.value := Venta;
    QDetalleCalcItbis.value   := 0;
    QDetalleValor.value       := (Venta-QDetalleCalcDesc.value);
  end;

  if QDetalleDET_OFERTA.Value = 'S' then
  begin
    for a := 0 to Grid.Columns.Count -1 do
    begin
      if dm.QUsuariosusu_modifica_precio.Value = 'True' then
      begin
       if ((Grid.Columns[a].FieldName = 'DET_PRECIO') OR  (Grid.Columns[a].FieldName = 'det_preciousd')) then
         begin
           Grid.Columns[a].ReadOnly := True;
           break;
        end;
      end;
    end;
  end
  else
  begin
    for a := 0 to Grid.Columns.Count -1 do
    begin
      if dm.QUsuariosusu_modifica_precio.Value = 'True' then
      begin
        if (Grid.Columns[a].FieldName = 'DET_PRECIO') OR  (Grid.Columns[a].FieldName = 'det_preciousd') then
        begin
           Grid.Columns[a].ReadOnly := False;
           break;
        end;
      end
      else
      begin
       if (Grid.Columns[a].FieldName = 'DET_PRECIO') OR  (Grid.Columns[a].FieldName = 'det_preciousd') then
         begin
           Grid.Columns[a].ReadOnly := True;
           break;
        end;
      end;
    end;
  end;

  if QDetalleDET_OFERTA.Value = 'S' then
  begin
    for a := 0 to Grid.Columns.Count -1 do
    begin
     if (Grid.Columns[a].FieldName = 'DET_DESCUENTO') OR  (Grid.Columns[a].FieldName = 'DET_DESCUENTOUSD') then
       begin
         Grid.Columns[a].ReadOnly := True;
         break;
      end;
    end;
  end
  else
  begin
    for a := 0 to Grid.Columns.Count -1 do
    begin
      if (Grid.Columns[a].FieldName = 'DET_DESCUENTO') OR  (Grid.Columns[a].FieldName = 'DET_DESCUENTOUSD') then
      begin
        if dm.QUsuariosusu_descuento.Value = 'True' then
          Grid.Columns[a].ReadOnly := False
        else
          Grid.Columns[a].ReadOnly := true;
         break;
      end;
    end;
  end;

{if (dm.QParametrospar_fac_preimpresa.Value = 'True') and (dm.QParametrospar_formato_preimpreso.Value = 'SteelTec') {then begin
IF QFactura.State IN [DSEDIT, DSINSERT] THEN BEGIN
QFacturaSubTotal.VALUE:=(QDetalleValor.Value*0.88231827112);
QFacturaFAC_SERVICIOS.VALUE:=(QDetalleValor.Value*0.10);
QFacturaFAC_ITBIS.VALUE:=(QFacturaSubTotal.Value+QFacturaFAC_SERVICIOS.Value+QFacturaRecargo.Value)*0.10*0.18;
end;
end;}


end;

procedure TfrmFactura.FormCreate(Sender: TObject);
var
  a : integer;
begin
  if (dm.QParametrospar_fac_preimpresa.Value = 'False') or (dm.QParametrospar_formato_preimpreso.Value <> 'QClinico') then
    TabSheet4.Destroy;

  if (dm.QParametrospar_fac_preimpresa.Value = 'False') or (dm.QParametrospar_formato_preimpreso.Value <> 'QRAgregados') then
    TabSheet3.Destroy;

  if dm.QUsuariosusu_factura_cuentas.Value <> 'True' then
    TabSheet2.Destroy;

  for a := 0 to (Sender as TForm).ComponentCount -1 DO
  begin
    if Components[a].ClassType = tdbedit then
    begin
      if (Components[a] as tdbedit).Tag  <> 1 then
      begin
        (Components[a] as tdbedit).OnEnter := frmMain.Entra;
        (Components[a] as tdbedit).OnExit := frmMain.sale;
      end;
    end;
  end;
  //lbCantidad.caption := '0';
  SelCajero := false;

  //CAMBIO REALIZADO POR JHONATTAN GOMEZ 16/02/2018
  CASE RG_BuscaDet.ItemIndex OF
  0:Grid.Columns[0].FieldName := 'PRO_CODIGO';
  1:Grid.Columns[0].FieldName := 'PRO_RORIGINAL';
  2:Grid.Columns[0].FieldName := 'PRO_RFABRIC';
  end;
  {if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
     Grid.Columns[0].FieldName := 'PRO_CODIGO'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
     Grid.Columns[0].FieldName := 'PRO_RFABRIC'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
     Grid.Columns[0].FieldName := 'PRO_RORIGINAL';
   }
    //FIN CAMBIO REALIZADO POR JHONATTAN GOMEZ 16/02/2018
  if dm.QParametrospar_visualizadesc.Value <> 'True' then
  begin
    Grid.Columns[10].Destroy;
    Grid.Columns[1].Width := Grid.Columns[1].Width + 40;
  end;

  if dm.QParametrosPAR_FACESCALA.Value <> 'True' then
  begin
    Grid.Columns[7].Destroy;
    Grid.Columns[1].Width := Grid.Columns[1].Width + 34;
  end;

  if dm.QParametrospar_fac_oferta.Value <> 'True' then
  begin
    Grid.Columns[6].Destroy;
    Grid.Columns[1].Width := Grid.Columns[1].Width + 35;
  end;

  if dm.QParametrospar_inv_unidad_medida.Value <> 'True' then
  begin
    Grid.Columns[5].Destroy;
    Grid.Columns[1].Width := Grid.Columns[1].Width + 42;
  end;

  if dm.QParametrospar_visualizar_cant_empaque.Value <> 'True' then
  begin
    Grid.Columns[4].Destroy;
    Grid.Columns[1].Width := Grid.Columns[1].Width + 60;
  end;

  if dm.QParametrosPAR_FACMEDIDA.Value <> 'True' then
  begin
    Grid.Columns[3].Destroy;
    Grid.Columns[1].Width := Grid.Columns[1].Width + 60;
  end;            

  if dm.QParametrospar_cantidad_primero.Value = 'True' then
  begin
    Grid.Columns[0].FieldName := 'DET_CANTIDAD';
    Grid.Columns[0].Width     := 30;
    Grid.Columns[0].Title.Caption := 'Cant.';
    Grid.Columns[2].Width     := 60;
    Grid.Columns[2].Title.Caption := 'C?digo';
    if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
       Grid.Columns[2].FieldName := 'PRO_CODIGO'
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
       Grid.Columns[2].FieldName := 'PRO_RFABRIC'
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
       Grid.Columns[2].FieldName := 'PRO_RORIGINAL';
  end;

  if dm.QParametrospar_visualizadesc.Value = 'True' then
  Grid.Columns[1].Width := 250 else
  Grid.Columns[1].Width := Grid.Columns[1].Width - 20;

  if dm.QParametrospar_formato_preimpreso.Value = 'QRMateirosa' then
    Panel2.Height := 126
  else Panel2.Height := 100;

   //Verificar si el usuario tiene sucursal por defecto
  if not VarIsNull(dm.suc_default) and (dm.suc_default > 0) then
  begin
    DBLookupComboBox2.KeyValue := dm.suc_default;
  end;


 


end;

procedure TfrmFactura.QDetallePRO_RFABRICChange(Sender: TField);
var
  Prod, Lote, cod : Integer;
  CtaCosto, CtaInvent, CtaIngreso, CtaDescuento, CtaPropinaLegal, vp_medida : String;
begin
if (not qOrdenesTaller.Active) then begin
if (Trim(dm.QParametrospar_formato_preimpreso.Text)<>'Hotel') then begin
if QFacturaNUMERO_RESERVA.Value = 0 then begin
if (RG_BuscaDet.ItemIndex = 2) and (Buscando = False) and (Not realizado) and (DesactivarCargaProductos = False) then begin
    Realizado := True;

    if not QDetallePRO_RFABRIC.isnull then
    begin
      if dm.QParametrosPAR_VENVERIFICA.Value = '1' then
      begin
        Prod := StrToInt(Copy(IntToStr(QDetallePRO_CODIGO.value),
                dm.QParametrosPAR_VENDIGITOSLOTE.Value+1,
                Length(Trim(IntToStr(QDetallePRO_CODIGO.value)))));
        Lote := StrToInt(Copy(IntToStr(QDetallePRO_CODIGO.value),1,
                dm.QParametrosPAR_VENDIGITOSLOTE.Value));
      end
      else
      begin
      Prod := QDetallePRO_CODIGO.Value;
      end;



      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select p.pro_codigo, p.pro_nombre, p.pro_costo, p.pro_precio1,');
      dm.Query1.sql.add('p.pro_precio2, p.pro_precio3, p.pro_precio4, p.dep_codigo, ');
      dm.Query1.sql.add('p.pro_roriginal, p.pro_rfabric, p.pro_itbis, p.PRO_DESCMAX,');
      dm.Query1.sql.add('p.pro_servicio, p.pro_vence, p.PRO_PRECIOMENOR, p.pro_escala,');
      dm.Query1.sql.add('p.PRO_COSTOEMPAQUE, p.pro_combo, p.pro_preciomenoremp, p.pro_cantempaque,');
      dm.Query1.sql.add('p.pro_selectivo_ad, p.pro_selectivo_con, p.pro_minimo_venta, p.pro_montoitbis,');
      dm.Query1.sql.add('p.pro_comision, p.mar_codigo, p.pro_ctainvent, p.pro_ctacosto, p.fam_codigo, p.UnidadID, p.pro_utilizamedidor,p.pro_UtilizaEnvio,p.pro_serializado, with_servicio_construccion');
      dm.Query1.sql.add('from productos p');
      dm.Query1.sql.add('where p.emp_codigo = :emp');
      dm.Query1.sql.add('and p.pro_RFABRIC = :cod');
      dm.Query1.sql.add('and p.pro_status = '+QuotedStr('ACT'));
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.parambyname('cod').Value := QDetallePRO_RFABRIC.Text;
      dm.Query1.open;
      if not dm.Query1.fieldbyname('pro_codigo').IsNull  then
        IDProducto := dm.Query1.fieldbyname('pro_codigo').AsInteger;

      if dm.Query1.RecordCount = 0 then
      begin
        MessageDlg('ESTE PRODUCTO NO ESTA REGISTRADO EN EL MAESTRO',
        mtError,[mbok],0);
        //CAMBIO REALIZADO POR JHONATTAN GOMEZ 14/02/2018
        BorraSerial(QDetallePRO_CODIGO.AsString);
        Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
        QDetalle.Delete;
        totalizar;
        PageControl1.ActivePageIndex := 0;
        QDetalle.Append;
        Grid.SetFocus;
        //FIN CAMBIO REALIZADO POR JHONATTAN GOMEZ 14/02/2018
      end
      else
      begin
      if ((dm.QParametrosPAR_FACREPITEPROD.AsString = 'False') and
          (Lista.Items.IndexOf(IntToStr(Prod)) >= 0)) then begin
      if  MessageDlg('Ya este producto existe en la lista, desea continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        begin
          cod := Prod;
          QDetalle.Cancel;
          QDetalle.Locate('pro_codigo', cod, []);
          //Grid.selectedindex := 1;
          Exit;
        end;
        end;
        Query1.Close;
        Query1.SQL.Clear;
        Query1.SQL.Add('select fam_cta_costo, fam_cta_inventario, fam_cta_ingreso, fam_cta_descuento from familias');
        Query1.SQL.Add('where emp_codigo = :emp');
        Query1.SQL.Add('and fam_codigo = :fam');
        Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
        Query1.Parameters.ParamByName('fam').Value := dm.Query1.fieldbyname('fam_codigo').AsInteger;
        Query1.Open;

        CtaCosto     := '';
        CtaInvent    := '';
        CtaIngreso   := '';
        CtaDescuento := '';
        if (dm.QContabpar_codifica_venta_familia.Value = 'True') and (Query1.RecordCount > 0) then
        begin
          CtaCosto     := Query1.fieldbyname('fam_cta_costo').AsString;
          CtaInvent    := Query1.fieldbyname('fam_cta_inventario').AsString;
          CtaIngreso   := Query1.fieldbyname('fam_cta_ingreso').AsString;
          CtaDescuento := Query1.fieldbyname('fam_cta_descuento').AsString;
          QDetallepro_ctacosto.Value      := CtaCosto;
          QDetallepro_ctainvent.Value     := CtaInvent;
          QDetallepro_ctaingreso.Value    := CtaIngreso;
          QDetallepro_ctadescuento.Value  := CtaDescuento;
        end;

        UtilizaEnvio := dm.Query1.fieldbyname('pro_UtilizaEnvio').AsString;
        utilizamedidor :=dm.Query1.fieldbyname('pro_utilizamedidor').AsString;

        if not dm.Query1.fieldbyname('pro_codigo').IsNull then
        QDetallePRO_CODIGO.Value        := dm.Query1.fieldbyname('pro_codigo').Value;
        if not dm.Query1.fieldbyname('pro_roriginal').IsNull then
        QDetallePRO_RORIGINAL.Value     := dm.Query1.fieldbyname('pro_roriginal').Value;
        QDetalledet_cantempaque.Value   := dm.Query1.fieldbyname('pro_cantempaque').asfloat;
        QDetalledet_selectivo_ad.Value  := dm.Query1.fieldbyname('pro_selectivo_Ad').asfloat;
        QDetalledet_selectivo_con.Value := dm.Query1.fieldbyname('pro_selectivo_con').asfloat;
        QDetallePRO_COMBO.Value         := dm.Query1.fieldbyname('pro_combo').AsString;
        QDetalleDET_PRECIOMINIMO.Value  := dm.Query1.fieldbyname('PRO_PRECIOMENOR').asfloat;
        QDetalleDET_PRECIOMINIMOEMP.Value := dm.Query1.fieldbyname('PRO_PRECIOMENOREMP').asfloat;
        QDetalleDET_VENCE.value           := dm.Query1.fieldbyname('pro_vence').asstring;
        QDetalleDET_MANEJAESCALA.Value    := dm.Query1.fieldbyname('pro_escala').asstring;
        QDetallePRO_SERVICIO.Value        := dm.Query1.fieldbyname('pro_servicio').asstring;
        QDetallepro_serializado.Value  := dm.Query1.fieldbyname('pro_serializado').AsString;

        //Jhonattan Gomez 2026-05-23 20:555  - Comision por producto
        if btBuscaVendPorc.Visible = True then begin
        if (not dm.Query1.FieldByName('pro_comision').IsNull) and
           (dm.Query1.FieldByName('pro_comision').Value > 0) then begin
        application.createform(TfrmSelVendPorc, frmSelVendPorc);

        frmSelVendPorc.QVendedores.Close;
        frmSelVendPorc.QVendedores.Parameters.ParamByName('EMP').Value := QFacturaEMP_CODIGO.Value;
        frmSelVendPorc.QVendedores.Open;

        if not frmSelVendPorc.QVendedores.IsEmpty then begin
        frmSelVendPorc.showmodal;
        if (frmSelVendPorc.vl_porciento <> 0) and (frmSelVendPorc.vl_vendedor <> 0) then
        begin
        QDetalleVEN_CODIGO.value := frmSelVendPorc.vl_vendedor;
        if dm.Query1.FieldByName('pro_comision').Value < frmSelVendPorc.vl_porciento then
        QDetalleporc_vendedor.value := dm.Query1.FieldByName('pro_comision').Value else
        QDetalleporc_vendedor.value := frmSelVendPorc.vl_porciento;
        FrmSelVendPorc.Release;
        end;
        end
        else
        begin
        ShowMessage('Debes indicar los vendedores en el maestro de vendedores');
        end;

        end;
        end;

        if dm.Query1.FieldByName('with_servicio_construccion').IsNull then
          QDetalleDet_servicio_construccion.Value := False
        else
          QDetalleDet_servicio_construccion.Value := dm.Query1.FieldByName('with_servicio_construccion').AsBoolean;

        if (ckItbis.Checked)  then
        QDetalleDET_ITBIS.Value           := dm.Query1.fieldbyname('pro_montoitbis').asfloat else
        QDetalleDET_ITBIS.Value           := 0;
        if not QFacturaALM_CODIGO.IsNull then
          QDetallealm_codigo.Value  := QFacturaALM_CODIGO.Value
        else
          QDetallealm_codigo.Value  := 1;



        QDetalleUnidadID.Value := dm.Query1.fieldbyname('UnidadID').AsString;

       { if not dm.Query1.fieldbyname('dep_codigo').IsNull then
        begin
          Query1.Close;
          Query1.SQL.Clear;
          Query1.SQL.Add('select alm_codigo from departamentos');
          Query1.SQL.Add('where emp_codigo = :emp');
          Query1.SQL.Add('and dep_codigo = :dep');
          Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
          Query1.Parameters.ParamByName('dep').Value := dm.Query1.fieldbyname('dep_codigo').AsInteger;
          Query1.Open;
          if not Query1.FieldByName('alm_codigo').IsNull then
            QDetallealm_codigo.Value := Query1.FieldByName('alm_codigo').AsInteger
          else
            QDetallealm_codigo.Value  := 1;
        end;  }

        if dm.Query1.fieldbyname('pro_descmax').asfloat = 0 then
        begin
          Query1.Close;
          Query1.SQL.Clear;
          Query1.SQL.Add('select descuento from Prod_Descuentos_TipoFac');
          Query1.SQL.Add('where emp_codigo = :emp');
          Query1.SQL.Add('and tfa_codigo = :tfa');
          Query1.SQL.Add('and pro_codigo = :pro');
          Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
          Query1.Parameters.ParamByName('tfa').Value := StrToInt(Trim(edTipo.Text));
          Query1.Parameters.ParamByName('pro').Value := dm.Query1.fieldbyname('pro_codigo').AsInteger;
          Query1.Open;
          if Query1.RecordCount > 0 then
          begin
            if Query1.FieldByName('descuento').AsFloat > 0 then
              QDetalleDET_DESCMAX.Value := Query1.FieldByName('descuento').AsFloat;
          end;
        end
        else
          QDetalleDET_DESCMAX.Value   := dm.Query1.fieldbyname('pro_descmax').asfloat;

        QDetallePRO_RORIGINAL.value := dm.Query1.fieldbyname('pro_roriginal').asstring;
        QDetallePRO_RFABRIC.value   := dm.Query1.fieldbyname('pro_rfabric').asstring;
        QDetallePRO_NOMBRE.value    := dm.Query1.fieldbyname('pro_nombre').asstring;
        QDetalleDET_CONITBIS.Value  := dm.Query1.FieldByName('pro_itbis').AsString;
        QDetalleDET_COSTO.value     := dm.Query1.fieldbyname('pro_costo').asfloat;
        QDetalleDET_COSTOEMP.Value  := dm.Query1.fieldbyname('pro_costoempaque').asfloat;
        if QDetalleDET_DESCUENTO.ReadOnly = False then 
        QDetalleDET_DESCUENTO.value := descuento;
        QDetalleDEP_CODIGO.value    := dm.Query1.fieldbyname('dep_codigo').asinteger;
        QDetalleDET_PRECIO1.Value      := dm.Query1.fieldbyname('pro_precio1').AsFloat;
        QDetalleDET_PRECIO2.Value      := dm.Query1.fieldbyname('pro_precio2').AsFloat;
        QDetalleDET_PRECIO3.Value      := dm.Query1.fieldbyname('pro_precio3').AsFloat;
        QDetalleDET_PRECIO4.Value      := dm.Query1.fieldbyname('pro_precio4').AsFloat;
        QDetalledet_minimo_venta.Value := dm.Query1.fieldbyname('pro_minimo_venta').AsFloat;
        QDetallemar_codigo.Value       := dm.Query1.fieldbyname('mar_codigo').AsInteger;
        QDetallepro_serializado.Value  := dm.Query1.fieldbyname('pro_serializado').AsString;

        QDetallepro_utilizamedidor.Value := utilizamedidor;
        QDetallepro_UtilizaEnvio.Value := UtilizaEnvio;

     

        if Precio = 'Ninguno' then
        begin
          if (not QDetalleDET_MEDIDA.IsNull) and (dm.QParametrosPAR_FACMEDIDA.Value = 'True') then
          begin
            if dm.QParametrosPAR_PRECIOUND.Value <> 'Ninguno' then
            begin
              //Unidad
              if QDetalleDET_MEDIDA.Value = 'Und' then
                QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOUND.Value).AsFloat;
            end;

            if dm.QParametrosPAR_PRECIOEMP.Value <> 'Ninguno' then
            begin
              //Empaque
              if QDetalleDET_MEDIDA.Value = 'Emp' then
                QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOEMP.Value).AsFloat;
            end;
          end
          else if dm.QParametrosPAR_FACMEDIDA.Value = 'False' then
            QDetalleDET_PRECIO.value := QDetalle.FieldByName('det_precio1').AsFloat;
        end
        else
        begin
          if (not QDetalleDET_MEDIDA.IsNull) and (dm.QParametrosPAR_FACMEDIDA.Value = 'True') then
          begin
            //Unidad
            if (QDetalleDET_MEDIDA.Value = 'Und') then
            begin
              if Precio = dm.QParametrosPAR_PRECIOUND.Value then
                QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOUND.Value).AsFloat
              else if Precio = dm.QParametrospar_preciound_m.Value then
                QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrospar_preciound_m.Value).AsFloat;
            end;

            //Empaque
            if QDetalleDET_MEDIDA.Value = 'Emp' then
            begin
              if Precio = dm.QParametrosPAR_PRECIOEMP.Value then
                QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOEMP.Value).AsFloat
              else if Precio = dm.QParametrospar_precioemp_m.Value then
                QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrospar_precioemp_m.Value).AsFloat;
            end;
          end
          else
          begin
            if (dm.QParametrosPAR_FACMEDIDA.Value = 'False') and (dm.QParametrospar_inv_unidad_medida.Value = 'False') then
              QDetalleDET_PRECIO.value := QDetalle.FieldByName('det_'+Precio).AsFloat;
          end;
        end;

        //unidades de medida
  if dm.QParametrospar_inv_unidad_medida.Value = 'True' then
  begin
    dm.adoMultiUso.Close;
    dm.adoMultiUso.SQL.Clear;
    dm.adoMultiUso.SQL.Add('select u.Nombre');
    dm.adoMultiUso.SQL.Add('from ProdUnidadMedida p, UnidadMedida u');
    dm.adoMultiUso.SQL.Add('where p.emp_codigo = u.emp_codigo and p.UnidadID = u.UnidadID');
    dm.adoMultiUso.SQL.Add('and p.emp_codigo = :emp and p.pro_codigo = :pro');
    dm.adoMultiUso.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.adoMultiUso.Parameters.ParamByName('pro').Value := Prod;
    dm.adoMultiUso.Open;

    if dm.QParametrosPAR_FACMEDIDA.Value <> 'True' then
    begin
      Grid.Columns[3].PickList.Clear;
      dm.adoMultiUso.DisableControls;
      while not dm.adoMultiUso.Eof do
      begin
        Grid.Columns[3].PickList.Add(dm.adoMultiUso.fieldByName('Nombre').AsString);
        dm.adoMultiUso.Next;
      end;
    end
    else
    begin
      Grid.Columns[5].PickList.Clear;
      dm.adoMultiUso.DisableControls;
      while not dm.adoMultiUso.Eof do
      begin
        Grid.Columns[5].PickList.Add(dm.adoMultiUso.fieldByName('Nombre').AsString);
        dm.adoMultiUso.Next;
      end;
    end;

    dm.adoMultiUso.EnableControls;
  end;


        //buscando unidad de medida del producto
        //if dm.QParametrospar_inv_unidad_medida.Value = 'True' then
        //begin
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

            if dm.QParametrospar_inv_unidad_medida.Value = 'True' then
            begin
              //buscando precio por unidad de medida
              QUnidades.Close;
              QUnidades.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
              QUnidades.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
              QUnidades.Parameters.ParamByName('und').Value := QDetallepro_unidad_medida.Value;
              QUnidades.Open;
              {if actbalance = 'False' then
                QDetalleDET_PRECIO.Value := QUnidadesPrecio.Value
              else
                QDetalleDET_PRECIO.Value := QUnidadesCredito.Value; }
             if Precio <> '' then begin
             QDetalleDET_PRECIO.Value := QUnidades.FieldByName('Precio').AsFloat;
             end
             else
             begin
             if (not QDetalleDET_MEDIDA.IsNull) and (dm.QParametrosPAR_FACMEDIDA.Value = 'True') then
             begin
             //Unidad
             if QDetalleDET_MEDIDA.Value = 'Und' then
             QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOUND.Value).AsFloat;
             //Empaque
             if QDetalleDET_MEDIDA.Value = 'Emp' then
             QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOEMP.Value).AsFloat;
             end
             else if (dm.QParametrosPAR_FACMEDIDA.Value = 'False') and (dm.QParametrospar_inv_unidad_medida.Value = 'False') then begin
             QDetalleDET_PRECIO.value := QDetalle.FieldByName('det_'+Precio).AsFloat;
             end;
             end;
              QDetalledet_cant_unidad_medida.Value := QUnidadesCantidad.AsFloat;
            end;
          end;
        end;


        //buscando ofertas
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select descuento from pr_busca_oferta (:emp, :pro, :fec)');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
        dm.Query1.Parameters.ParamByName('pro').Value := Prod;
        dm.Query1.Parameters.ParamByName('fec').Value    := Date;
        dm.Query1.Open;
        if not dm.Query1.FieldByname('descuento').isnull then
        begin
          if QDetalleDET_DESCUENTO.ReadOnly = False then 
          QDetalleDET_DESCUENTO.Value := dm.Query1.FieldByname('descuento').asfloat;
          QDetalleDET_OFERTA.Value := 'S';
        end
        else
          QDetalleDET_OFERTA.Value := 'N';

        //buscando oferta de descuento o precio para el cliente en este producto
        if not QFacturaCLI_CODIGO.IsNull then
        begin
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('select clp_descuento, clp_precio from CliProductos where emp_codigo = :emp and cli_codigo = :cli and pro_codigo = :pro');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
          dm.Query1.Parameters.ParamByName('pro').Value := Prod;
          dm.Query1.Parameters.ParamByName('cli').Value := QFacturaCLI_CODIGO.Value;
          dm.Query1.Open;
          if dm.Query1.RecordCount > 0 then
          begin
            if not dm.Query1.FieldByname('clp_descuento').isnull then
            begin
              if QDetalleDET_DESCUENTO.ReadOnly = False then
              QDetalleDET_DESCUENTO.Value := dm.Query1.FieldByname('clp_descuento').asfloat;
              QDetalleDET_OFERTA.Value := 'S';
            end
            else if not dm.Query1.FieldByname('clp_precio').isnull then
            begin
              QDetalleDET_PRECIO.Value := dm.Query1.FieldByname('clp_precio').asfloat;
              QDetalleDET_OFERTA.Value := 'S';
            end
            else
              QDetalleDET_OFERTA.Value := 'N';
          end;
        end;

        //buscando fecha de vencimiento
        if dm.QParametrosPAR_VENVERIFICA.Value = '2' then
        begin
          if QDetalleDET_VENCE.value = 'True' then
          begin
            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('select min(ven_lote) as lote from provence');
            dm.Query1.SQL.Add('where emp_codigo = :emp');
            dm.Query1.SQL.Add('and pro_codigo = :pro');
            dm.Query1.SQL.Add('and VEN_CANTPENDIENTE <= 0');
            dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
            dm.Query1.Parameters.ParamByName('pro').Value := Prod;
            dm.Query1.Open;
            QDetalleDET_LOTE.Value := dm.Query1.FieldByName('lote').AsInteger;
          end
          else
            QDetalleDET_LOTE.Value := 0;
        end
        else
        begin
          QDetalleDET_LOTE.Value := Lote;
        end;

        {if not ckItbis.Checked then
        begin
         if dm.QParametrosPAR_FACMEDIDA.Value = 'False' then begin
              if (ckItbis.Checked)  then 
              QDetalleDET_PRECIO.value := QDetalle.FieldByName('det_'+Precio).AsFloat else
              QDetalleDET_PRECIO.value := QDetalle.FieldByName('det_'+Precio).AsFloat/(1+(dm.Query1.fieldbyname('pro_montoitbis').asfloat/100));
              end;
        end;

        if ckItbis.Checked = False then
        QDetalleDET_PRECIO.Value := (QDetalleDET_PRECIO.Value);     }

        QDetalle.Post;


        if ((QDetalleDET_CANTIDAD.IsNull) or (QDetalleDET_CANTIDAD.Value=0)) then QDetalleDET_CANTIDAD.Value := 1;

        if dm.QContabpar_codifica_venta_familia.Value = 'True' then
        begin
          if CtaIngreso <> '' then
          begin
            if not QCuentas.Locate('cat_cuenta', CtaIngreso, []) then
            begin
              QCuentas.Append;
              QCuentascat_cuenta.Value := CtaIngreso;
              QCuentasdet_origen.Value := 'Credito';
              if dm.QParametrospar_itbisincluido.Value = 'True' then
                QCuentasdet_monto.Value  := QCuentasdet_monto.Value + ((QDetalleValor.Value +
                                                                    (QDetalleDET_TOTALDESC.Value * QDetalleDET_CANTIDAD.Value)) -
                                                                    (QDetalleDET_TOTALITBIS.Value * QDetalleDET_CANTIDAD.Value))
                //QCuentasdet_monto.Value  := QCuentasdet_monto.Value + (QDetalleValor.Value - (QDetalleDET_TOTALITBIS.Value * QDetalleDET_CANTIDAD.Value))
              else
                QCuentasdet_monto.Value  := QCuentasdet_monto.Value +(QDetalleDET_PRECIO.Value * QDetalleDET_CANTIDAD.Value);

              QCuentas.Post;
            end
            else
            begin
              QCuentas.Edit;;
              QCuentasdet_origen.Value := 'Credito';
              if dm.QParametrospar_itbisincluido.Value = 'True' then
                QCuentasdet_monto.Value  := QCuentasdet_monto.Value + ((QDetalleValor.Value +
                                                                    (QDetalleDET_TOTALDESC.Value * QDetalleDET_CANTIDAD.Value)) -
                                                                    (QDetalleDET_TOTALITBIS.Value * QDetalleDET_CANTIDAD.Value))
              else
                QCuentasdet_monto.Value  := QCuentasdet_monto.Value +((QDetalleDET_PRECIO.Value - QDetalleCalcDesc.Value) * QDetalleDET_CANTIDAD.Value);

              QCuentas.Post;
            end;
          end;

          //Cuentas de Costo
          if Trim(CtaCosto) <> '' then
          begin
            if not QCuentas.Locate('cat_cuenta', CtaCosto, []) then
            begin
              QCuentas.Append;
              QCuentascat_cuenta.Value := CtaCosto;
              QCuentasdet_origen.Value := 'Debito';
              QCuentasdet_monto.Value  := (QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value);
              QCuentas.Post;
            end
            else
            begin
              QCuentas.Edit;;
              QCuentasdet_origen.Value := 'Debito';
              QCuentasdet_monto.Value  := QCuentasdet_monto.Value + (QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value);
              QCuentas.Post;
            end;
          end;

          //Cuenta de Inventario
          if Trim(CtaInvent) <> '' then
          begin
            if not QCuentas.Locate('cat_cuenta', CtaInvent, []) then
            begin
              QCuentas.Append;
              QCuentascat_cuenta.Value := CtaInvent;
              QCuentasdet_origen.Value := 'Credito';
              QCuentasdet_monto.Value  := (QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value);
              QCuentas.Post;
            end
            else
            begin
              QCuentas.Edit;;
              QCuentasdet_origen.Value := 'Credito';
              QCuentasdet_monto.Value  := QCuentasdet_monto.Value + (QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value);
              QCuentas.Post;
            end;
          end;

          //Cuenta de Descuento
          if Trim(CtaDescuento) <> '' then
          begin
            if QDetalleCalcDesc.Value > 0 then begin
            if not QCuentas.Locate('cat_cuenta', CtaDescuento, []) then
            begin
              QCuentas.Append;
              QCuentascat_cuenta.Value := CtaDescuento;
              QCuentasdet_origen.Value := 'Debito';
              QCuentasdet_monto.Value  := QDetalleCalcDesc.Value;
              QCuentas.Post;
            end
            else
            begin
              QCuentas.Edit;;
              QCuentasdet_origen.Value := 'Debito';
              QCuentasdet_monto.Value  := QCuentasdet_monto.Value + QDetalleCalcDesc.Value;
              QCuentas.Post;
            end;
          end;
          end;

         
        end;


        {QDetallepro_utilizamedidor.Value := utilizamedidor;
        QDetallepro_UtilizaEnvio.Value := UtilizaEnvio;}

        //Si es un producto que utiliza medidor
        if utilizamedidor = 'True' then
        begin
          Application.CreateForm(tfrmDatosMedidor, frmDatosMedidor);
          frmDatosMedidor.ShowModal;
          if frmDatosMedidor.edActual.Text <> '' then
          begin
            QDetalle.Edit;
              QDetalleMedidorID.Value := StrToInt(frmDatosMedidor.edMedidor.Text);
              QDetalleMedidor_Secuencia.Value := StrToFloat(frmDatosMedidor.edAnterior.Text);
              QDetalleMedidor_Cantidad.Value  := StrToFloat(frmDatosMedidor.edActual.Text);
              QDetalleDET_CANTIDAD.Value      := QDetalleMedidor_Cantidad.Value - QDetalleMedidor_Secuencia.Value;
            QDetalle.Post;
          end;
          frmDatosMedidor.Release;
        end;

        //Si es un producto que utiliza envio
        if UtilizaEnvio = 'True' then
        begin
          Application.CreateForm(tfrmEnvio, frmEnvio);
          //Buscar los Conceptos
          dm.adoMultiUso.Close;
          dm.adoMultiUso.SQL.Clear;
          dm.adoMultiUso.SQL.Add('select upper(con_nombre) concepto from conceptos_envios where emp_codigo = '+
          QuotedStr(IntToStr(DM.vp_cia))+' order by con_nombre');
          dm.adoMultiUso.Open;
          if dm.adoMultiUso.RecordCount > 0 then begin
          frmEnvio.cbbConceptos.Clear;
          frmEnvio.cbbConceptos.Items.Add('');
          while not dm.adoMultiUso.Eof do begin
          frmEnvio.cbbConceptos.Items.Add(dm.adoMultiUso.fieldbyname('concepto').Text);
          dm.adoMultiUso.Next;
          end;
          frmEnvio.cbbConceptos.ItemIndex := 0;
          end;
          frmEnvio.SucursalDestino.KeyValue := QSucursalDestinosuc_codigo.value;
          if QEnvio.Locate('pro_codigo', QDetallePRO_CODIGO.Value, []) then
          begin
            //frmEnvio.edoCiudad.Text     := QEnvioCiudad_Origen.AsString;
            frmEnvio.edoNombre.Text     := QEnvioNombre_envia.AsString;
            frmEnvio.edoTelefono.Text   := QEnvioTelefono_Envia.AsString;
            //frmEnvio.eddCiudad.Text     := QEnvioCiudad_Destino.AsString;
            frmEnvio.eddNombre.Text     := QEnvioNombre_Recibe.AsString;
            frmEnvio.eddTelefono.Text   := QEnvioTelefono_Recibe.AsString;
            frmEnvio.cbbConceptos.Text := QEnvioDescripcion.AsString;
            frmEnvio.edDescripcion.Text := QEnvioDescripcion2.AsString;
            frmEnvio.SucursalDestino.KeyValue := QEnvioenv_suc_destino.value;
            frmEnvio.chkPagoDestino.Checked   := QEnviofacpagodestino.Value;
            frmEnvio.edCantidad.Text := QEnvioCantidad.AsString;

          end;
          frmEnvio.ShowModal;
          if length(trim(frmEnvio.edoNombre.Text)) > 0 then
          begin
           //oCiudad := frmEnvio.edoCiudad.Text;
           //dCiudad := frmEnvio.eddCiudad.Text;
           dCodCiudad := frmEnvio.DBLookupComb_env_suc_destino.KeyValue;
           ONombre := frmEnvio.DBLookupComb_env_suc_destino.Text;
           OTelefono := frmEnvio.edoTelefono.Text;
           dNombre := frmEnvio.eddNombre.Text;
           dTelefono := frmEnvio.eddTelefono.Text;
           Descripcion := frmEnvio.cbbConceptos.Text;
           Descripcion2 := frmEnvio.edDescripcion.Text;
           QFacturaFAC_NOMBRE.Value := frmEnvio.edoNombre.Text;
           dPagarDestino := frmEnvio.chkPagoDestino.Checked;  
           dCantidad :=  frmEnvio.edCantidad.Text;

            if QEnvio.Locate('pro_codigo', QDetallePRO_CODIGO.Value, []) then
              ActualisarEnvio(true)
            else
              ActualisarEnvio(false);
          end;
          frmEnvio.Release;
        end;
      end;
    end;
end;
end;
end;
end;
end;


procedure TfrmFactura.QDetallePRO_RORIGINALChange(Sender: TField);
var
  Prod, Lote, Cod : Integer;
  CtaCosto, CtaInvent, CtaIngreso, CtaDescuento, vp_medida : String;
begin
if (not qOrdenesTaller.Active) then begin
if QFacturaNUMERO_RESERVA.Value = 0 then begin
if (not FileExists('.\Transporte.Txt')) then begin
if (RG_BuscaDet.ItemIndex = 1) and (Buscando = False) and (Not realizado) and (DesactivarCargaProductos = False) then begin
    Realizado := True;

    if not QDetallePRO_RORIGINAL.isnull then
    begin
      if dm.QParametrosPAR_VENVERIFICA.Value = '1' then
      begin
        Prod := StrToInt(Copy(IntToStr(QDetallePRO_CODIGO.value),
                dm.QParametrosPAR_VENDIGITOSLOTE.Value+1,
                Length(Trim(IntToStr(QDetallePRO_CODIGO.value)))));
        Lote := StrToInt(Copy(IntToStr(QDetallePRO_CODIGO.value),1,
                dm.QParametrosPAR_VENDIGITOSLOTE.Value));
      end
      else
      begin
      Prod := QDetallePRO_CODIGO.Value;
      end;

      

      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select p.pro_codigo, p.pro_nombre, p.pro_costo AS pro_costo, p.pro_precio1,');
      dm.Query1.sql.add('p.pro_precio2 , p.pro_precio3, p.pro_precio4, p.dep_codigo, ');
      dm.Query1.sql.add('p.pro_roriginal, p.pro_rfabric, p.pro_itbis, p.PRO_DESCMAX,');
      dm.Query1.sql.add('p.pro_servicio, p.pro_vence, p.PRO_PRECIOMENOR, p.pro_escala,');
      dm.Query1.sql.add('p.PRO_COSTOEMPAQUE, p.pro_combo, p.pro_preciomenoremp, p.pro_cantempaque,');
      dm.Query1.sql.add('p.pro_selectivo_ad, p.pro_selectivo_con, p.pro_minimo_venta, p.pro_montoitbis,');
      dm.Query1.sql.add('p.pro_comision, p.mar_codigo, p.pro_ctainvent, p.pro_ctacosto, p.fam_codigo, p.UnidadID, p.pro_utilizamedidor,p.pro_UtilizaEnvio,p.pro_serializado,with_servicio_construccion');
      dm.Query1.sql.add('from productos p');
      dm.Query1.sql.add('where p.emp_codigo = :emp');
      dm.Query1.sql.add('and p.pro_RORIGINAL = :cod');
      dm.Query1.sql.add('and p.pro_status = '+QuotedStr('ACT'));
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.parambyname('cod').Value := QDetallePRO_RORIGINAL.Text;
      dm.Query1.open;
      if not dm.Query1.fieldbyname('pro_codigo').IsNull  then
        Prod := dm.Query1.fieldbyname('pro_codigo').AsInteger;

      if dm.Query1.RecordCount = 0 then
      begin
        MessageDlg('ESTE PRODUCTO NO ESTA REGISTRADO EN EL MAESTRO',
        mtError,[mbok],0);
        //CAMBIO REALIZADO POR JHONATTAN GOMEZ 14/02/2018
        BorraSerial(QDetallePRO_CODIGO.AsString);
        Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
        QDetalle.Delete;
        totalizar;
        PageControl1.ActivePageIndex := 0;
        QDetalle.Append;
        Grid.SetFocus;
        Exit;
        //FIN CAMBIO REALIZADO POR JHONATTAN GOMEZ 14/02/2018
      end
      else
      begin
      if ((dm.QParametrosPAR_FACREPITEPROD.AsString = 'False') and
          (Lista.Items.IndexOf(IntToStr(Prod)) >= 0)) then begin
      if  MessageDlg('Ya este producto existe en la lista, desea continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        begin
          cod := Prod;
          QDetalle.Cancel;
          QDetalle.Locate('pro_codigo', cod, []);
          //Grid.selectedindex := 1;
          Exit;
        end;
        end;
        Query1.Close;
        Query1.SQL.Clear;
        Query1.SQL.Add('select fam_cta_costo, fam_cta_inventario, fam_cta_ingreso, fam_cta_descuento from familias');
        Query1.SQL.Add('where emp_codigo = :emp');
        Query1.SQL.Add('and fam_codigo = :fam');
        Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
        Query1.Parameters.ParamByName('fam').Value := dm.Query1.fieldbyname('fam_codigo').AsInteger;
        Query1.Open;

        CtaCosto     := '';
        CtaInvent    := '';
        CtaIngreso   := '';
        CtaDescuento := '';
        if (dm.QContabpar_codifica_venta_familia.Value = 'True') and (Query1.RecordCount > 0) then
        begin
          CtaCosto     := Query1.fieldbyname('fam_cta_costo').AsString;
          CtaInvent    := Query1.fieldbyname('fam_cta_inventario').AsString;
          CtaIngreso   := Query1.fieldbyname('fam_cta_ingreso').AsString;
          CtaDescuento := Query1.fieldbyname('fam_cta_descuento').AsString;
          QDetallepro_ctacosto.Value      := CtaCosto;
          QDetallepro_ctainvent.Value     := CtaInvent;
          QDetallepro_ctaingreso.Value    := CtaIngreso;
          QDetallepro_ctadescuento.Value  := CtaDescuento;
        end;

        UtilizaEnvio := dm.Query1.fieldbyname('pro_UtilizaEnvio').AsString;
        utilizamedidor :=dm.Query1.fieldbyname('pro_utilizamedidor').AsString;

        if not dm.Query1.fieldbyname('pro_codigo').IsNull then
        QDetallePRO_CODIGO.Value        := dm.Query1.fieldbyname('pro_codigo').Value;
        if not dm.Query1.fieldbyname('PRO_RORIGINAL').IsNull then
        QDetallePRO_RORIGINAL.Value       := dm.Query1.fieldbyname('PRO_RORIGINAL').Value;
        QDetalledet_cantempaque.Value   := dm.Query1.fieldbyname('pro_cantempaque').asfloat;
        QDetalledet_selectivo_ad.Value  := dm.Query1.fieldbyname('pro_selectivo_Ad').asfloat;
        QDetalledet_selectivo_con.Value := dm.Query1.fieldbyname('pro_selectivo_con').asfloat;
        QDetallePRO_COMBO.Value         := dm.Query1.fieldbyname('pro_combo').AsString;
        QDetalleDET_PRECIOMINIMO.Value  := dm.Query1.fieldbyname('PRO_PRECIOMENOR').asfloat;
        QDetalleDET_PRECIOMINIMOEMP.Value := dm.Query1.fieldbyname('PRO_PRECIOMENOREMP').asfloat;
        QDetalleDET_VENCE.value           := dm.Query1.fieldbyname('pro_vence').asstring;
        QDetalleDET_MANEJAESCALA.Value    := dm.Query1.fieldbyname('pro_escala').asstring;
        QDetallePRO_SERVICIO.Value        := dm.Query1.fieldbyname('pro_servicio').asstring;
        QDetallepro_serializado.Value     := dm.Query1.fieldbyname('pro_serializado').AsString;

        //Jhonattan Gomez 2026-05-23 20:555  - Comision por producto
        if btBuscaVendPorc.Visible = True then begin
        if (not dm.Query1.FieldByName('pro_comision').IsNull) and
           (dm.Query1.FieldByName('pro_comision').Value > 0) then begin
        application.createform(TfrmSelVendPorc, frmSelVendPorc);

        frmSelVendPorc.QVendedores.Close;
        frmSelVendPorc.QVendedores.Parameters.ParamByName('EMP').Value := QFacturaEMP_CODIGO.Value;
        frmSelVendPorc.QVendedores.Open;

        if not frmSelVendPorc.QVendedores.IsEmpty then begin
        frmSelVendPorc.showmodal;
        if (frmSelVendPorc.vl_porciento <> 0) and (frmSelVendPorc.vl_vendedor <> 0) then
        begin
        QDetalleVEN_CODIGO.value := frmSelVendPorc.vl_vendedor;
        if dm.Query1.FieldByName('pro_comision').Value < frmSelVendPorc.vl_porciento then
        QDetalleporc_vendedor.value := dm.Query1.FieldByName('pro_comision').Value else
        QDetalleporc_vendedor.value := frmSelVendPorc.vl_porciento;
        FrmSelVendPorc.Release;
        end;
        end
        else
        begin
        ShowMessage('Debes indicar los vendedores en el maestro de vendedores');
        end;

        end;
        end;

        if dm.Query1.FieldByName('with_servicio_construccion').IsNull then
          QDetalleDet_servicio_construccion.Value := False
        else
          QDetalleDet_servicio_construccion.Value := dm.Query1.FieldByName('with_servicio_construccion').AsBoolean;

        if (ckItbis.Checked)  then
        QDetalleDET_ITBIS.Value           := dm.Query1.fieldbyname('pro_montoitbis').asfloat else
        QDetalleDET_ITBIS.Value           := 0;

        if not QFacturaALM_CODIGO.IsNull then
          QDetallealm_codigo.Value  := QFacturaALM_CODIGO.Value
        else
          QDetallealm_codigo.Value  := 1;




        QDetalleUnidadID.Value := dm.Query1.fieldbyname('UnidadID').AsString;

        {if not dm.Query1.fieldbyname('dep_codigo').IsNull then
        begin
          Query1.Close;
          Query1.SQL.Clear;
          Query1.SQL.Add('select alm_codigo from departamentos');
          Query1.SQL.Add('where emp_codigo = :emp');
          Query1.SQL.Add('and dep_codigo = :dep');
          Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
          Query1.Parameters.ParamByName('dep').Value := dm.Query1.fieldbyname('dep_codigo').AsInteger;
          Query1.Open;
          if not Query1.FieldByName('alm_codigo').IsNull then
            QDetallealm_codigo.Value := Query1.FieldByName('alm_codigo').AsInteger
          else
            QDetallealm_codigo.Value  := 1;
        end;}

        if dm.Query1.fieldbyname('pro_descmax').asfloat = 0 then
        begin
          Query1.Close;
          Query1.SQL.Clear;
          Query1.SQL.Add('select descuento from Prod_Descuentos_TipoFac');
          Query1.SQL.Add('where emp_codigo = :emp');
          Query1.SQL.Add('and tfa_codigo = :tfa');
          Query1.SQL.Add('and pro_codigo = :pro');
          Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
          Query1.Parameters.ParamByName('tfa').Value := StrToInt(Trim(edTipo.Text));
          Query1.Parameters.ParamByName('pro').Value := dm.Query1.fieldbyname('pro_codigo').AsInteger;
          Query1.Open;
          if Query1.RecordCount > 0 then
          begin
            if Query1.FieldByName('descuento').AsFloat > 0 then
              QDetalleDET_DESCMAX.Value := Query1.FieldByName('descuento').AsFloat;
          end;
        end
        else
          QDetalleDET_DESCMAX.Value   := dm.Query1.fieldbyname('pro_descmax').asfloat;

        QDetallePRO_RORIGINAL.value := dm.Query1.fieldbyname('pro_roriginal').asstring;
        QDetallePRO_RFABRIC.value   := dm.Query1.fieldbyname('pro_rfabric').asstring;
        QDetallePRO_NOMBRE.value    := dm.Query1.fieldbyname('pro_nombre').asstring;
        QDetalleDET_CONITBIS.Value  := dm.Query1.FieldByName('pro_itbis').AsString;
        QDetalleDET_COSTO.value     := dm.Query1.fieldbyname('pro_costo').asfloat;
        QDetalleDET_COSTOEMP.Value  := dm.Query1.fieldbyname('pro_costoempaque').asfloat;
        if QDetalleDET_DESCUENTO.ReadOnly = False then 
        QDetalleDET_DESCUENTO.value := descuento;
        QDetalleDEP_CODIGO.value    := dm.Query1.fieldbyname('dep_codigo').asinteger;
        QDetalleDET_PRECIO1.Value      := dm.Query1.fieldbyname('pro_precio1').AsFloat;
        QDetalleDET_PRECIO2.Value      := dm.Query1.fieldbyname('pro_precio2').AsFloat;
        QDetalleDET_PRECIO3.Value      := dm.Query1.fieldbyname('pro_precio3').AsFloat;
        QDetalleDET_PRECIO4.Value      := dm.Query1.fieldbyname('pro_precio4').AsFloat;
        QDetalledet_minimo_venta.Value := dm.Query1.fieldbyname('pro_minimo_venta').AsFloat;
        QDetallemar_codigo.Value       := dm.Query1.fieldbyname('mar_codigo').AsInteger;
        QDetallepro_serializado.Value  := dm.Query1.fieldbyname('pro_serializado').AsString;

        QDetallepro_utilizamedidor.Value := utilizamedidor;
        QDetallepro_UtilizaEnvio.Value := UtilizaEnvio;


          if Precio = 'Ninguno' then
        begin
          if (not QDetalleDET_MEDIDA.IsNull) and (dm.QParametrosPAR_FACMEDIDA.Value = 'True') then
          begin
            if dm.QParametrosPAR_PRECIOUND.Value <> 'Ninguno' then
            begin
              //Unidad
              if QDetalleDET_MEDIDA.Value = 'Und' then
                QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOUND.Value).AsFloat;
            end;

            if dm.QParametrosPAR_PRECIOEMP.Value <> 'Ninguno' then
            begin
              //Empaque
              if QDetalleDET_MEDIDA.Value = 'Emp' then
                QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOEMP.Value).AsFloat;
            end;
          end
          else if dm.QParametrosPAR_FACMEDIDA.Value = 'False' then
            QDetalleDET_PRECIO.value := QDetalle.FieldByName('det_precio1').AsFloat;
        end
        else
        begin
          if (not QDetalleDET_MEDIDA.IsNull) and (dm.QParametrosPAR_FACMEDIDA.Value = 'True') then
          begin
            //Unidad
            if (QDetalleDET_MEDIDA.Value = 'Und') then
            begin
              if Precio = dm.QParametrosPAR_PRECIOUND.Value then
                QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOUND.Value).AsFloat
              else if Precio = dm.QParametrospar_preciound_m.Value then
                QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrospar_preciound_m.Value).AsFloat;
            end;

            //Empaque
            if QDetalleDET_MEDIDA.Value = 'Emp' then
            begin
              if Precio = dm.QParametrosPAR_PRECIOEMP.Value then
                QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOEMP.Value).AsFloat
              else if Precio = dm.QParametrospar_precioemp_m.Value then
                QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrospar_precioemp_m.Value).AsFloat;
            end;
          end
          else
          begin
            if (dm.QParametrosPAR_FACMEDIDA.Value = 'False') and (dm.QParametrospar_inv_unidad_medida.Value = 'False') then
              QDetalleDET_PRECIO.value := QDetalle.FieldByName('det_'+Precio).AsFloat;
          end;
        end;

        //unidades de medida
  if dm.QParametrospar_inv_unidad_medida.Value = 'True' then
  begin
    dm.adoMultiUso.Close;
    dm.adoMultiUso.SQL.Clear;
    dm.adoMultiUso.SQL.Add('select u.Nombre');
    dm.adoMultiUso.SQL.Add('from ProdUnidadMedida p, UnidadMedida u');
    dm.adoMultiUso.SQL.Add('where p.emp_codigo = u.emp_codigo and p.UnidadID = u.UnidadID');
    dm.adoMultiUso.SQL.Add('and p.emp_codigo = :emp and p.pro_codigo = :pro');
    dm.adoMultiUso.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.adoMultiUso.Parameters.ParamByName('pro').Value := Prod;
    dm.adoMultiUso.Open;

    if dm.QParametrosPAR_FACMEDIDA.Value <> 'True' then
    begin
      Grid.Columns[3].PickList.Clear;
      dm.adoMultiUso.DisableControls;
      while not dm.adoMultiUso.Eof do
      begin
        Grid.Columns[3].PickList.Add(dm.adoMultiUso.fieldByName('Nombre').AsString);
        dm.adoMultiUso.Next;
      end;
    end
    else
    begin
      Grid.Columns[5].PickList.Clear;
      dm.adoMultiUso.DisableControls;
      while not dm.adoMultiUso.Eof do
      begin
        Grid.Columns[5].PickList.Add(dm.adoMultiUso.fieldByName('Nombre').AsString);
        dm.adoMultiUso.Next;
      end;
    end;

    dm.adoMultiUso.EnableControls;
  end;


        //buscando unidad de medida del producto
        //if dm.QParametrospar_inv_unidad_medida.Value = 'True' then
        //begin
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

            if dm.QParametrospar_inv_unidad_medida.Value = 'True' then
            begin
              //buscando precio por unidad de medida
              QUnidades.Close;
              QUnidades.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
              QUnidades.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
              QUnidades.Parameters.ParamByName('und').Value := QDetallepro_unidad_medida.Value;
              QUnidades.Open;
              {if actbalance = 'False' then
                QDetalleDET_PRECIO.Value := QUnidadesPrecio.Value
              else
                QDetalleDET_PRECIO.Value := QUnidadesCredito.Value; }
             if Precio <> '' then begin
             QDetalleDET_PRECIO.Value := QUnidades.FieldByName('Precio').AsFloat;
             end
             else
             begin
             if (not QDetalleDET_MEDIDA.IsNull) and (dm.QParametrosPAR_FACMEDIDA.Value = 'True') then
             begin
             //Unidad
             if QDetalleDET_MEDIDA.Value = 'Und' then
             QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOUND.Value).AsFloat;
             //Empaque
             if QDetalleDET_MEDIDA.Value = 'Emp' then
             QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOEMP.Value).AsFloat;
             end
             else if (dm.QParametrosPAR_FACMEDIDA.Value = 'False') and (dm.QParametrospar_inv_unidad_medida.Value = 'False') then begin
             QDetalleDET_PRECIO.value := QDetalle.FieldByName('det_'+Precio).AsFloat;
             end;
             end;

              QDetalledet_cant_unidad_medida.Value := QUnidadesCantidad.AsFloat;
            end;
          end;
        end;

        //buscando ofertas
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select descuento from pr_busca_oferta (:emp, :pro, :fec)');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
        dm.Query1.Parameters.ParamByName('pro').Value := Prod;
        dm.Query1.Parameters.ParamByName('fec').Value    := Date;
        dm.Query1.Open;
        if not dm.Query1.FieldByname('descuento').isnull then
        begin
          if QDetalleDET_DESCUENTO.ReadOnly = False then 
          QDetalleDET_DESCUENTO.Value := dm.Query1.FieldByname('descuento').asfloat;
          QDetalleDET_OFERTA.Value := 'S';
        end
        else
          QDetalleDET_OFERTA.Value := 'N';

        //buscando oferta de descuento o precio para el cliente en este producto
        if not QFacturaCLI_CODIGO.IsNull then
        begin
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('select clp_descuento, clp_precio from CliProductos where emp_codigo = :emp and cli_codigo = :cli and pro_codigo = :pro');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
          dm.Query1.Parameters.ParamByName('pro').Value := Prod;
          dm.Query1.Parameters.ParamByName('cli').Value := QFacturaCLI_CODIGO.Value;
          dm.Query1.Open;
          if dm.Query1.RecordCount > 0 then
          begin
            if not dm.Query1.FieldByname('clp_descuento').isnull then
            begin
              if QDetalleDET_DESCUENTO.ReadOnly = False then 
              QDetalleDET_DESCUENTO.Value := dm.Query1.FieldByname('clp_descuento').asfloat;
              QDetalleDET_OFERTA.Value := 'S';
            end
            else if not dm.Query1.FieldByname('clp_precio').isnull then
            begin
              QDetalleDET_PRECIO.Value := dm.Query1.FieldByname('clp_precio').asfloat;
              QDetalleDET_OFERTA.Value := 'S';
            end
            else
              QDetalleDET_OFERTA.Value := 'N';
          end;
        end;

        //buscando fecha de vencimiento
        if dm.QParametrosPAR_VENVERIFICA.Value = '2' then
        begin
          if QDetalleDET_VENCE.value = 'True' then
          begin
            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('select min(ven_lote) as lote from provence');
            dm.Query1.SQL.Add('where emp_codigo = :emp');
            dm.Query1.SQL.Add('and pro_codigo = :pro');
            dm.Query1.SQL.Add('and VEN_CANTPENDIENTE <= 0');
            dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
            dm.Query1.Parameters.ParamByName('pro').Value := Prod;
            dm.Query1.Open;
            QDetalleDET_LOTE.Value := dm.Query1.FieldByName('lote').AsInteger;
          end
          else
            QDetalleDET_LOTE.Value := 0;
        end
        else
        begin
          QDetalleDET_LOTE.Value := Lote;
        end;

       { if not ckItbis.Checked then
        begin
          if QDetalleDET_CONITBIS.Value = 'S' then
          begin
            if dm.QParametrospar_itbisincluido.Value = 'False' then
              QDetalleDET_PRECIO.Value := (QDetalleDET_PRECIO.Value / ((QDetalleDET_ITBIS.Value/100)+1));
          end;
        end;

        if ckItbis.Checked = False then
        QDetalleDET_PRECIO.Value := (QDetalleDET_PRECIO.Value);      }

         //MRUIZ
    //si el parametro es multimoneda se procede a realizar el calculo en precio
    { if dm.QParametrospar_mostrarfacturadolares.Value = true then
      BEGIN
           IF  QFacturaMON_CODIGO.value = 2 THEN
            BEGIN
              IF QFacturafac_tasacambio.Value>0 THEN
              BEGIN
                QDetalledet_preciousd.Value :=QDetalleDET_PRECIO.Value / QFacturafac_tasacambio.Value;

	              END ;
            END;
      END; }

        //QDetalleDET_PRECIOUSD.Value :=QDetalleDET_PRECIO.Value;

        QDetalle.Post;


        if ((QDetalleDET_CANTIDAD.IsNull) or (QDetalleDET_CANTIDAD.Value=0)) then QDetalleDET_CANTIDAD.Value := 1;

        if dm.QContabpar_codifica_venta_familia.Value = 'True' then
        begin
          if CtaIngreso <> '' then
          begin
            if not QCuentas.Locate('cat_cuenta', CtaIngreso, []) then
            begin
              QCuentas.Append;
              QCuentascat_cuenta.Value := CtaIngreso;
              QCuentasdet_origen.Value := 'Credito';
              if dm.QParametrospar_itbisincluido.Value = 'True' then
                QCuentasdet_monto.Value  := QCuentasdet_monto.Value + ((QDetalleValor.Value +
                                                                    (QDetalleDET_TOTALDESC.Value * QDetalleDET_CANTIDAD.Value)) -
                                                                    (QDetalleDET_TOTALITBIS.Value * QDetalleDET_CANTIDAD.Value))
                //QCuentasdet_monto.Value  := QCuentasdet_monto.Value + (QDetalleValor.Value - (QDetalleDET_TOTALITBIS.Value * QDetalleDET_CANTIDAD.Value))
              else
                QCuentasdet_monto.Value  := QCuentasdet_monto.Value +(QDetalleDET_PRECIO.Value * QDetalleDET_CANTIDAD.Value);

              QCuentas.Post;
            end
            else
            begin
              QCuentas.Edit;;
              QCuentasdet_origen.Value := 'Credito';
              if dm.QParametrospar_itbisincluido.Value = 'True' then
                QCuentasdet_monto.Value  := QCuentasdet_monto.Value + ((QDetalleValor.Value +
                                                                    (QDetalleDET_TOTALDESC.Value * QDetalleDET_CANTIDAD.Value)) -
                                                                    (QDetalleDET_TOTALITBIS.Value * QDetalleDET_CANTIDAD.Value))
              else
                QCuentasdet_monto.Value  := QCuentasdet_monto.Value +((QDetalleDET_PRECIO.Value - QDetalleCalcDesc.Value) * QDetalleDET_CANTIDAD.Value);

              QCuentas.Post;
            end;
          end;

          //Cuentas de Costo
          if Trim(CtaCosto) <> '' then
          begin
            if not QCuentas.Locate('cat_cuenta', CtaCosto, []) then
            begin
              QCuentas.Append;
              QCuentascat_cuenta.Value := CtaCosto;
              QCuentasdet_origen.Value := 'Debito';
              QCuentasdet_monto.Value  := (QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value);
              QCuentas.Post;
            end
            else
            begin
              QCuentas.Edit;;
              QCuentasdet_origen.Value := 'Debito';
              QCuentasdet_monto.Value  := QCuentasdet_monto.Value + (QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value);
              QCuentas.Post;
            end;
          end;

          //Cuenta de Inventario
          if Trim(CtaInvent) <> '' then
          begin
            if not QCuentas.Locate('cat_cuenta', CtaInvent, []) then
            begin
              QCuentas.Append;
              QCuentascat_cuenta.Value := CtaInvent;
              QCuentasdet_origen.Value := 'Credito';
              QCuentasdet_monto.Value  := (QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value);
              QCuentas.Post;
            end
            else
            begin
              QCuentas.Edit;;
              QCuentasdet_origen.Value := 'Credito';
              QCuentasdet_monto.Value  := QCuentasdet_monto.Value + (QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value);
              QCuentas.Post;
            end;
          end;

          //Cuenta de Descuento
          if Trim(CtaDescuento) <> '' then
          begin
            if not QCuentas.Locate('cat_cuenta', CtaDescuento, []) then
            begin
              QCuentas.Append;
              QCuentascat_cuenta.Value := CtaDescuento;
              QCuentasdet_origen.Value := 'Debito';
              QCuentasdet_monto.Value  := QDetalleCalcDesc.Value;
              QCuentas.Post;
            end
            else
            begin
              QCuentas.Edit;;
              QCuentasdet_origen.Value := 'Debito';
              QCuentasdet_monto.Value  := QCuentasdet_monto.Value + QDetalleCalcDesc.Value;
              QCuentas.Post;
            end;
          end;


        end;

        {QDetallepro_utilizamedidor.Value := utilizamedidor;
        QDetallepro_UtilizaEnvio.Value := UtilizaEnvio;}

        //Si es un producto que utiliza medidor
        if utilizamedidor = 'True' then
        begin
          Application.CreateForm(tfrmDatosMedidor, frmDatosMedidor);
          frmDatosMedidor.ShowModal;
          if frmDatosMedidor.edActual.Text <> '' then
          begin
            QDetalle.Edit;
              QDetalleMedidorID.Value := StrToInt(frmDatosMedidor.edMedidor.Text);
              QDetalleMedidor_Secuencia.Value := StrToFloat(frmDatosMedidor.edAnterior.Text);
              QDetalleMedidor_Cantidad.Value  := StrToFloat(frmDatosMedidor.edActual.Text);
              QDetalleDET_CANTIDAD.Value      := QDetalleMedidor_Cantidad.Value - QDetalleMedidor_Secuencia.Value;
            QDetalle.Post;
          end;
          frmDatosMedidor.Release;
        end;

        //Si es un producto que utiliza envio
        if UtilizaEnvio = 'True' then
        begin
          Application.CreateForm(tfrmEnvio, frmEnvio);
          //Buscar los Conceptos
          dm.adoMultiUso.Close;
          dm.adoMultiUso.SQL.Clear;
          dm.adoMultiUso.SQL.Add('select upper(con_nombre) concepto from conceptos_envios where emp_codigo = '+
          QuotedStr(IntToStr(DM.vp_cia))+' order by con_nombre');
          dm.adoMultiUso.Open;
          if dm.adoMultiUso.RecordCount > 0 then begin
          frmEnvio.cbbConceptos.Clear;
          frmEnvio.cbbConceptos.Items.Add('');
          vl_index := 0;
          vl_index2 := 0;
          while not dm.adoMultiUso.Eof do begin
          if dm.adoMultiUso.fieldbyname('concepto').Text = QEnvioDescripcion.AsString then
          vl_index2 := vl_index else
          vl_index2 := 0;
          frmEnvio.cbbConceptos.Items.Add(dm.adoMultiUso.fieldbyname('concepto').Text);
          vl_index := vl_index +1;
          dm.adoMultiUso.Next;
          end;
          frmEnvio.cbbConceptos.ItemIndex := 0;
          end;

          frmEnvio.SucursalDestino.KeyValue := QSucursalDestinosuc_codigo.value;
          if QEnvio.Locate('pro_codigo', QDetallePRO_CODIGO.Value, []) then
          begin
            //frmEnvio.edoCiudad.Text     := QEnvioCiudad_Origen.AsString;
            frmEnvio.edoNombre.Text     := QEnvioNombre_envia.AsString;
            frmEnvio.edoTelefono.Text   := QEnvioTelefono_Envia.AsString;
            //frmEnvio.eddCiudad.Text     := QEnvioCiudad_Destino.AsString;
            frmEnvio.eddNombre.Text     := QEnvioNombre_Recibe.AsString;
            frmEnvio.eddTelefono.Text   := QEnvioTelefono_Recibe.AsString;
            frmEnvio.cbbConceptos.ItemIndex:= vl_index2;
            frmEnvio.edDescripcion.Text := QEnvioDescripcion2.AsString;
            frmEnvio.SucursalDestino.KeyValue := QEnvioenv_suc_destino.value;
            frmEnvio.chkPagoDestino.Checked := QEnviofacpagodestino.Value;
          end;
          frmEnvio.ShowModal;
          if length(trim(frmEnvio.eddNombre.Text)) > 0 then
          begin
           //oCiudad := frmEnvio.edoCiudad.Text;
           //dCiudad := frmEnvio.eddCiudad.Text;
           dCodCiudad := frmEnvio.DBLookupComb_env_suc_destino.KeyValue;
           ONombre := frmEnvio.edoNombre.Text;
           OTelefono := frmEnvio.edoTelefono.Text;
           dNombre := frmEnvio.eddNombre.Text;
           dTelefono := frmEnvio.eddTelefono.Text;
           Descripcion  := frmEnvio.cbbConceptos.Text;
           Descripcion2 := frmEnvio.edDescripcion.Text;
           QFacturaFAC_NOMBRE.Value := frmEnvio.edoNombre.Text;
           dPagarDestino := frmEnvio.chkPagoDestino.Checked;
           dCantidad :=  frmEnvio.edCantidad.Text;
            if QEnvio.Locate('pro_codigo', QDetallePRO_CODIGO.Value, []) then
              ActualisarEnvio(true)
            else
              ActualisarEnvio(false);
          end;
          frmEnvio.Release;
        end;
      end;
    end;
 if dm.QParametrosPAR_FACBAJARLINEA.Value = 'True' then begin
 QDetalle.Append;
 Grid.SelectedIndex := 0;
 end;

end;
end;
end;
end;
end;




procedure TfrmFactura.QDetallePRO_CODIGOChange(Sender: TField);
var
  Prod, Lote, cod : Integer;
  CtaCosto, CtaInvent, CtaIngreso, CtaDescuento, vp_medida : String;
begin
if (not qOrdenesTaller.Active) then begin
if QFacturaNUMERO_RESERVA.Value = 0 then begin
if (not FileExists('.\Transporte.Txt')) then begin
 if (RG_BuscaDet.ItemIndex = 0) and (Buscando = False) and (Not realizado) and (DesactivarCargaProductos = False) then begin
    Realizado := True;

      Prod := QDetallePRO_CODIGO.Value;
      
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select p.pro_codigo, p.pro_nombre, p.pro_costo, p.pro_precio1,');
      dm.Query1.sql.add('p.pro_precio2, p.pro_precio3, p.pro_precio4, p.dep_codigo, ');
      dm.Query1.sql.add('p.pro_roriginal, p.pro_rfabric, p.pro_itbis, p.PRO_DESCMAX,');
      dm.Query1.sql.add('p.pro_servicio, p.pro_vence, p.PRO_PRECIOMENOR, p.pro_escala,');
      dm.Query1.sql.add('p.PRO_COSTOEMPAQUE, p.pro_combo, p.pro_preciomenoremp, p.pro_cantempaque,');
      dm.Query1.sql.add('p.pro_selectivo_ad, p.pro_selectivo_con, p.pro_minimo_venta, p.pro_montoitbis,');
      dm.Query1.sql.add('p.mar_codigo, p.pro_ctainvent, p.pro_ctacosto, p.fam_codigo, p.UnidadID,');
      dm.Query1.sql.add('pro_comision, p.pro_utilizamedidor,p.pro_UtilizaEnvio,p.pro_serializado, with_servicio_construccion');
      dm.Query1.sql.add('from productos p');
      dm.Query1.sql.add('where p.emp_codigo = :emp');
      dm.Query1.sql.add('and p.pro_codigo = :cod');
      dm.Query1.sql.add('and p.pro_status = '+QuotedStr('ACT'));
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.parambyname('cod').Value := QDetallePRO_CODIGO.Value;
      dm.Query1.open;

      if not dm.Query1.fieldbyname('pro_codigo').IsNull  then
        IDProducto := dm.Query1.fieldbyname('pro_codigo').AsInteger;

      if (dm.Query1.RecordCount = 0) AND (DM.Query1.FieldByName('pro_nombre').Text<>'') then
      begin
        MessageDlg('ESTE PRODUCTO NO ESTA REGISTRADO EN EL MAESTRO',
        mtError,[mbok],0);
        //CAMBIO REALIZADO POR JHONATTAN GOMEZ 14/02/2018
        BorraSerial(QDetallePRO_CODIGO.AsString);
        Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
        QDetalle.Delete;
        totalizar;
        PageControl1.ActivePageIndex := 0;
        QDetalle.Append;
        Grid.SetFocus;
        //FIN CAMBIO REALIZADO POR JHONATTAN GOMEZ 14/02/2018
      end
      else
      begin
      if ((dm.QParametrosPAR_FACREPITEPROD.AsString = 'False') and
          (Lista.Items.IndexOf(IntToStr(Prod)) >= 0)) then begin
      if  MessageDlg('Ya este producto existe en la lista, desea continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        begin
          cod := Prod;
          QDetalle.Cancel;
          QDetalle.Locate('pro_codigo', cod, []);
          //Grid.selectedindex := 1;
          Exit;
        end;
        end;
        Query1.Close;
        Query1.SQL.Clear;
        Query1.SQL.Add('select fam_cta_costo, fam_cta_inventario, fam_cta_ingreso, fam_cta_descuento from familias');
        Query1.SQL.Add('where emp_codigo = :emp');
        Query1.SQL.Add('and fam_codigo = :fam');
        Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
        Query1.Parameters.ParamByName('fam').Value := dm.Query1.fieldbyname('fam_codigo').AsInteger;
        Query1.Open;

        CtaCosto     := '';
        CtaInvent    := '';
        CtaIngreso   := '';
        CtaDescuento := '';
        if (dm.QContabpar_codifica_venta_familia.Value = 'True') and (Query1.RecordCount > 0) then
        begin
          CtaCosto     := Query1.fieldbyname('fam_cta_costo').AsString;
          CtaInvent    := Query1.fieldbyname('fam_cta_inventario').AsString;
          CtaIngreso   := Query1.fieldbyname('fam_cta_ingreso').AsString;
          CtaDescuento := Query1.fieldbyname('fam_cta_descuento').AsString;
          QDetallepro_ctacosto.Value      := CtaCosto;
          QDetallepro_ctainvent.Value     := CtaInvent;
          QDetallepro_ctaingreso.Value    := CtaIngreso;
          QDetallepro_ctadescuento.Value  := CtaDescuento;
        end;

        UtilizaEnvio := dm.Query1.fieldbyname('pro_UtilizaEnvio').AsString;
        utilizamedidor :=dm.Query1.fieldbyname('pro_utilizamedidor').AsString;

        if not dm.Query1.fieldbyname('pro_roriginal').IsNull then
        QDetallePRO_RORIGINAL.Value     := dm.Query1.fieldbyname('pro_roriginal').Value;
        if not dm.Query1.fieldbyname('pro_rfabric').IsNull then 
        QDetallePRO_RFABRIC.Value       := dm.Query1.fieldbyname('pro_rfabric').Value;
        QDetalledet_cantempaque.Value   := dm.Query1.fieldbyname('pro_cantempaque').asfloat;
        QDetalledet_selectivo_ad.Value  := dm.Query1.fieldbyname('pro_selectivo_Ad').asfloat;
        QDetalledet_selectivo_con.Value := dm.Query1.fieldbyname('pro_selectivo_con').asfloat;
        QDetallePRO_COMBO.Value         := dm.Query1.fieldbyname('pro_combo').AsString;
        QDetalleDET_PRECIOMINIMO.Value  := dm.Query1.fieldbyname('PRO_PRECIOMENOR').asfloat;
        QDetalleDET_PRECIOMINIMOEMP.Value := dm.Query1.fieldbyname('PRO_PRECIOMENOREMP').asfloat;
        QDetalleDET_VENCE.value           := dm.Query1.fieldbyname('pro_vence').asstring;
        QDetalleDET_MANEJAESCALA.Value    := dm.Query1.fieldbyname('pro_escala').asstring;
        QDetallePRO_SERVICIO.Value        := dm.Query1.fieldbyname('pro_servicio').asstring;
        QDetallepro_serializado.Value  := dm.Query1.fieldbyname('pro_serializado').AsString;

        //Jhonattan Gomez 2026-05-23 20:555  - Comision por producto
        if btBuscaVendPorc.Visible = True then begin
        if (not dm.Query1.FieldByName('pro_comision').IsNull) and
           (dm.Query1.FieldByName('pro_comision').Value > 0) then begin
        application.createform(TfrmSelVendPorc, frmSelVendPorc);

        frmSelVendPorc.QVendedores.Close;
        frmSelVendPorc.QVendedores.Parameters.ParamByName('EMP').Value := QFacturaEMP_CODIGO.Value;
        frmSelVendPorc.QVendedores.Open;

        if not frmSelVendPorc.QVendedores.IsEmpty then begin
        frmSelVendPorc.showmodal;
        if (frmSelVendPorc.vl_porciento <> 0) and (frmSelVendPorc.vl_vendedor <> 0) then
        begin
        QDetalleVEN_CODIGO.value := frmSelVendPorc.vl_vendedor;
        if dm.Query1.FieldByName('pro_comision').Value < frmSelVendPorc.vl_porciento then
        QDetalleporc_vendedor.value := dm.Query1.FieldByName('pro_comision').Value else
        QDetalleporc_vendedor.value := frmSelVendPorc.vl_porciento;
        FrmSelVendPorc.Release;
        end;
        end
        else
        begin
        ShowMessage('Debes indicar los vendedores en el maestro de vendedores');
        end;

        end;
        end;


        if dm.Query1.FieldByName('with_servicio_construccion').IsNull then
          QDetalleDet_servicio_construccion.Value := False
        else
          QDetalleDet_servicio_construccion.Value := dm.Query1.FieldByName('with_servicio_construccion').AsBoolean;



        if (ckItbis.Checked)  then 
        QDetalleDET_ITBIS.Value           := dm.Query1.fieldbyname('pro_montoitbis').asfloat else
        QDetalleDET_ITBIS.Value           := 0;
        if not QFacturaALM_CODIGO.IsNull then
          QDetallealm_codigo.Value  := QFacturaALM_CODIGO.Value
        else
          QDetallealm_codigo.Value  := 1;


        QDetalleUnidadID.Value := dm.Query1.fieldbyname('UnidadID').AsString;

        {if not dm.Query1.fieldbyname('dep_codigo').IsNull then
        begin
          Query1.Close;
          Query1.SQL.Clear;
          Query1.SQL.Add('select alm_codigo from departamentos');
          Query1.SQL.Add('where emp_codigo = :emp');
          Query1.SQL.Add('and dep_codigo = :dep');
          Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
          Query1.Parameters.ParamByName('dep').Value := dm.Query1.fieldbyname('dep_codigo').AsInteger;
          Query1.Open;
          if not Query1.FieldByName('alm_codigo').IsNull then
            QDetallealm_codigo.Value := Query1.FieldByName('alm_codigo').AsInteger
          else
            QDetallealm_codigo.Value  := 1;
        end;}

        if dm.Query1.fieldbyname('pro_descmax').asfloat = 0 then
        begin
          Query1.Close;
          Query1.SQL.Clear;
          Query1.SQL.Add('select descuento from Prod_Descuentos_TipoFac');
          Query1.SQL.Add('where emp_codigo = :emp');
          Query1.SQL.Add('and tfa_codigo = :tfa');
          Query1.SQL.Add('and pro_codigo = :pro');
          Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
          Query1.Parameters.ParamByName('tfa').Value := StrToInt(Trim(edTipo.Text));
          Query1.Parameters.ParamByName('pro').Value := dm.Query1.fieldbyname('pro_codigo').AsInteger;
          Query1.Open;
          if Query1.RecordCount > 0 then
          begin
            if Query1.FieldByName('descuento').AsFloat > 0 then
              QDetalleDET_DESCMAX.Value := Query1.FieldByName('descuento').AsFloat;
          end;
        end
        else
          QDetalleDET_DESCMAX.Value   := dm.Query1.fieldbyname('pro_descmax').asfloat;

        QDetallePRO_RORIGINAL.value := dm.Query1.fieldbyname('pro_roriginal').asstring;
        QDetallePRO_RFABRIC.value   := dm.Query1.fieldbyname('pro_rfabric').asstring;
        QDetallePRO_NOMBRE.value    := dm.Query1.fieldbyname('pro_nombre').asstring;
        QDetalleDET_CONITBIS.Value  := dm.Query1.FieldByName('pro_itbis').AsString;
        QDetalleDET_COSTO.value     := dm.Query1.fieldbyname('pro_costo').asfloat;
        QDetalleDET_COSTOEMP.Value  := dm.Query1.fieldbyname('pro_costoempaque').asfloat;
        if QDetalleDET_DESCUENTO.ReadOnly = False then 
        QDetalleDET_DESCUENTO.value := descuento;
        QDetalleDEP_CODIGO.value    := dm.Query1.fieldbyname('dep_codigo').asinteger;
        QDetalleDET_PRECIO1.Value      := dm.Query1.fieldbyname('pro_precio1').AsFloat;
        QDetalleDET_PRECIO2.Value      := dm.Query1.fieldbyname('pro_precio2').AsFloat;
        QDetalleDET_PRECIO3.Value      := dm.Query1.fieldbyname('pro_precio3').AsFloat;
        QDetalleDET_PRECIO4.Value      := dm.Query1.fieldbyname('pro_precio4').AsFloat;
        QDetalledet_minimo_venta.Value := dm.Query1.fieldbyname('pro_minimo_venta').AsFloat;
        QDetallemar_codigo.Value       := dm.Query1.fieldbyname('mar_codigo').AsInteger;
        QDetallepro_serializado.Value  := dm.Query1.fieldbyname('pro_serializado').AsString;

        QDetallepro_utilizamedidor.Value := utilizamedidor;
        QDetallepro_UtilizaEnvio.Value := UtilizaEnvio;

        QDetalleUnidadID.Value := dm.Query1.fieldbyname('UnidadID').AsString;

      

        if Precio = 'Ninguno' then
        begin
          if (not QDetalleDET_MEDIDA.IsNull) and (dm.QParametrosPAR_FACMEDIDA.Value = 'True') then
          begin
            if dm.QParametrosPAR_PRECIOUND.Value <> 'Ninguno' then
            begin
              //Unidad
              if QDetalleDET_MEDIDA.Value = 'Und' then
                QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOUND.Value).AsFloat;
            end;

            if dm.QParametrosPAR_PRECIOEMP.Value <> 'Ninguno' then
            begin
              //Empaque
              if QDetalleDET_MEDIDA.Value = 'Emp' then
                QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOEMP.Value).AsFloat;
            end;
          end
          else if dm.QParametrosPAR_FACMEDIDA.Value = 'False' then
            QDetalleDET_PRECIO.value := QDetalle.FieldByName('det_precio1').AsFloat;
        end
        else
        begin
          if (not QDetalleDET_MEDIDA.IsNull) and (dm.QParametrosPAR_FACMEDIDA.Value = 'True') then
          begin
            //Unidad
            if (QDetalleDET_MEDIDA.Value = 'Und') then
            begin
              if Precio = dm.QParametrosPAR_PRECIOUND.Value then
                QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOUND.Value).AsFloat
              else if Precio = dm.QParametrospar_preciound_m.Value then
                QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrospar_preciound_m.Value).AsFloat;
            end;

            //Empaque
            if QDetalleDET_MEDIDA.Value = 'Emp' then
            begin
              if Precio = dm.QParametrosPAR_PRECIOEMP.Value then
                QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOEMP.Value).AsFloat
              else if Precio = dm.QParametrospar_precioemp_m.Value then
                QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrospar_precioemp_m.Value).AsFloat;
            end;
          end
          else
          begin
            if (dm.QParametrosPAR_FACMEDIDA.Value = 'False') and (dm.QParametrospar_inv_unidad_medida.Value = 'False') then
              QDetalleDET_PRECIO.value := QDetalle.FieldByName('det_'+Precio).AsFloat;
          end;
        end;

  //unidades de medida
  if dm.QParametrospar_inv_unidad_medida.Value = 'True' then
  begin
    dm.adoMultiUso.Close;
    dm.adoMultiUso.SQL.Clear;
    dm.adoMultiUso.SQL.Add('select u.Nombre');
    dm.adoMultiUso.SQL.Add('from ProdUnidadMedida p, UnidadMedida u');
    dm.adoMultiUso.SQL.Add('where p.emp_codigo = u.emp_codigo and p.UnidadID = u.UnidadID');
    dm.adoMultiUso.SQL.Add('and p.emp_codigo = :emp and p.pro_codigo = :pro');
    dm.adoMultiUso.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.adoMultiUso.Parameters.ParamByName('pro').Value := Prod;
    dm.adoMultiUso.Open;

    if dm.QParametrosPAR_FACMEDIDA.Value <> 'True' then
    begin
      Grid.Columns[3].PickList.Clear;
      dm.adoMultiUso.DisableControls;
      while not dm.adoMultiUso.Eof do
      begin
        Grid.Columns[3].PickList.Add(dm.adoMultiUso.fieldByName('Nombre').AsString);
        dm.adoMultiUso.Next;
      end;
    end
    else
    begin
      Grid.Columns[5].PickList.Clear;
      dm.adoMultiUso.DisableControls;
      while not dm.adoMultiUso.Eof do
      begin
        Grid.Columns[5].PickList.Add(dm.adoMultiUso.fieldByName('Nombre').AsString);
        dm.adoMultiUso.Next;
      end;
    end;

    dm.adoMultiUso.EnableControls;
  end;

        //buscando unidad de medida del producto
        //if dm.QParametrospar_inv_unidad_medida.Value = 'True' then
        //begin
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

            if dm.QParametrospar_inv_unidad_medida.Value = 'True' then
            begin
              //buscando precio por unidad de medida
              QUnidades.Close;
              QUnidades.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
              QUnidades.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
              QUnidades.Parameters.ParamByName('und').Value := QDetallepro_unidad_medida.Value;
              QUnidades.Open;
              {if actbalance = 'False' then
                QDetalleDET_PRECIO.Value := QUnidadesPrecio.Value
              else
                QDetalleDET_PRECIO.Value := QUnidadesCredito.Value; }
             if Precio <> '' then begin
             QDetalleDET_PRECIO.Value := QUnidades.FieldByName('Precio').AsFloat;
             end
             else
             begin
             if (not QDetalleDET_MEDIDA.IsNull) and (dm.QParametrosPAR_FACMEDIDA.Value = 'True') then
             begin
             //Unidad
             if QDetalleDET_MEDIDA.Value = 'Und' then
             QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOUND.Value).AsFloat;
             //Empaque
             if QDetalleDET_MEDIDA.Value = 'Emp' then
             QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOEMP.Value).AsFloat;
             end
             else if (dm.QParametrosPAR_FACMEDIDA.Value = 'False') and (dm.QParametrospar_inv_unidad_medida.Value = 'False') then begin
             QDetalleDET_PRECIO.value := QDetalle.FieldByName('det_'+Precio).AsFloat;
             end;
             end;
             
              QDetalledet_cant_unidad_medida.Value := QUnidadesCantidad.AsFloat;
            end;
          end;
        end;


        //buscando ofertas
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select descuento from pr_busca_oferta (:emp, :pro, :fec)');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
        dm.Query1.Parameters.ParamByName('pro').Value := Prod;
        dm.Query1.Parameters.ParamByName('fec').Value    := Date;
        dm.Query1.Open;
        if not dm.Query1.FieldByname('descuento').isnull then
        begin
        if QDetalleDET_DESCUENTO.ReadOnly = False then 
          QDetalleDET_DESCUENTO.Value := dm.Query1.FieldByname('descuento').asfloat;
          QDetalleDET_OFERTA.Value := 'S';
        end
        else
          QDetalleDET_OFERTA.Value := 'N';

        //buscando oferta de descuento o precio para el cliente en este producto
        if not QFacturaCLI_CODIGO.IsNull then
        begin
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('select clp_descuento, clp_precio from CliProductos where emp_codigo = :emp and cli_codigo = :cli and pro_codigo = :pro');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
          dm.Query1.Parameters.ParamByName('pro').Value := Prod;
          dm.Query1.Parameters.ParamByName('cli').Value := QFacturaCLI_CODIGO.Value;
          dm.Query1.Open;
          if dm.Query1.RecordCount > 0 then
          begin
            if not dm.Query1.FieldByname('clp_descuento').isnull then
            begin
              if QDetalleDET_DESCUENTO.ReadOnly = False then 
              QDetalleDET_DESCUENTO.Value := dm.Query1.FieldByname('clp_descuento').asfloat;
              QDetalleDET_OFERTA.Value := 'S';
            end
            else if not dm.Query1.FieldByname('clp_precio').isnull then
            begin
              QDetalleDET_PRECIO.Value := dm.Query1.FieldByname('clp_precio').asfloat;
              QDetalleDET_OFERTA.Value := 'S';
            end
            else
              QDetalleDET_OFERTA.Value := 'N';
          end;
        end;

        //buscando fecha de vencimiento
        if dm.QParametrosPAR_VENVERIFICA.Value = '2' then
        begin
          if QDetalleDET_VENCE.value = 'True' then
          begin
            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('select min(ven_lote) as lote from provence');
            dm.Query1.SQL.Add('where emp_codigo = :emp');
            dm.Query1.SQL.Add('and pro_codigo = :pro');
            dm.Query1.SQL.Add('and VEN_CANTPENDIENTE <= 0');
            dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
            dm.Query1.Parameters.ParamByName('pro').Value := Prod;
            dm.Query1.Open;
            QDetalleDET_LOTE.Value := dm.Query1.FieldByName('lote').AsInteger;
          end
          else
            QDetalleDET_LOTE.Value := 0;
        end
        else
        begin
          QDetalleDET_LOTE.Value := Lote;
        end;

       { if not ckItbis.Checked then
        begin
          if QDetalleDET_CONITBIS.Value = 'S' then
          begin
            if dm.QParametrospar_itbisincluido.Value = 'True' then
              QDetalleDET_PRECIO.Value := (QDetalleDET_PRECIO.Value / ((QDetalleDET_ITBIS.Value/100)+1));
          end;
        end;

        if ckItbis.Checked = False then
        QDetalleDET_PRECIO.Value := (QDetalleDET_PRECIO.Value);  }

        QDetalle.Post;


        if ((QDetalleDET_CANTIDAD.IsNull) or (QDetalleDET_CANTIDAD.Value=0)) then QDetalleDET_CANTIDAD.Value := 1;

        if dm.QContabpar_codifica_venta_familia.Value = 'True' then
        begin
          if CtaIngreso <> '' then
          begin
            if not QCuentas.Locate('cat_cuenta', CtaIngreso, []) then
            begin
              QCuentas.Append;
              QCuentascat_cuenta.Value := CtaIngreso;
              QCuentasdet_origen.Value := 'Credito';
              if dm.QParametrospar_itbisincluido.Value = 'True' then
                QCuentasdet_monto.Value  := QCuentasdet_monto.Value + ((QDetalleValor.Value +
                                                                    (QDetalleDET_TOTALDESC.Value * QDetalleDET_CANTIDAD.Value)) -
                                                                    (QDetalleDET_TOTALITBIS.Value * QDetalleDET_CANTIDAD.Value))
                //QCuentasdet_monto.Value  := QCuentasdet_monto.Value + (QDetalleValor.Value - (QDetalleDET_TOTALITBIS.Value * QDetalleDET_CANTIDAD.Value))
              else
                QCuentasdet_monto.Value  := QCuentasdet_monto.Value +(QDetalleDET_PRECIO.Value * QDetalleDET_CANTIDAD.Value);

              QCuentas.Post;
            end
            else
            begin
              QCuentas.Edit;;
              QCuentasdet_origen.Value := 'Credito';
              if dm.QParametrospar_itbisincluido.Value = 'True' then
                QCuentasdet_monto.Value  := QCuentasdet_monto.Value + ((QDetalleValor.Value +
                                                                    (QDetalleDET_TOTALDESC.Value * QDetalleDET_CANTIDAD.Value)) -
                                                                    (QDetalleDET_TOTALITBIS.Value * QDetalleDET_CANTIDAD.Value))
              else
                QCuentasdet_monto.Value  := QCuentasdet_monto.Value +((QDetalleDET_PRECIO.Value - QDetalleCalcDesc.Value) * QDetalleDET_CANTIDAD.Value);

              QCuentas.Post;
            end;
          end;

          //Cuentas de Costo
          if Trim(CtaCosto) <> '' then
          begin
            if not QCuentas.Locate('cat_cuenta', CtaCosto, []) then
            begin
              QCuentas.Append;
              QCuentascat_cuenta.Value := CtaCosto;
              QCuentasdet_origen.Value := 'Debito';
              QCuentasdet_monto.Value  := (QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value);
              QCuentas.Post;
            end
            else
            begin
              QCuentas.Edit;;
              QCuentasdet_origen.Value := 'Debito';
              QCuentasdet_monto.Value  := QCuentasdet_monto.Value + (QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value);
              QCuentas.Post;
            end;
          end;

          //Cuenta de Inventario
          if Trim(CtaInvent) <> '' then
          begin
            if not QCuentas.Locate('cat_cuenta', CtaInvent, []) then
            begin
              QCuentas.Append;
              QCuentascat_cuenta.Value := CtaInvent;
              QCuentasdet_origen.Value := 'Credito';
              QCuentasdet_monto.Value  := (QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value);
              QCuentas.Post;
            end
            else
            begin
              QCuentas.Edit;;
              QCuentasdet_origen.Value := 'Credito';
              QCuentasdet_monto.Value  := QCuentasdet_monto.Value + (QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value);
              QCuentas.Post;
            end;
          end;

          //Cuenta de Descuento
          if Trim(CtaDescuento) <> '' then
          begin
            if not QCuentas.Locate('cat_cuenta', CtaDescuento, []) then
            begin
              QCuentas.Append;
              QCuentascat_cuenta.Value := CtaDescuento;
              QCuentasdet_origen.Value := 'Debito';
              QCuentasdet_monto.Value  := QDetalleCalcDesc.Value;
              QCuentas.Post;
            end
            else
            begin
              QCuentas.Edit;;
              QCuentasdet_origen.Value := 'Debito';
              QCuentasdet_monto.Value  := QCuentasdet_monto.Value + QDetalleCalcDesc.Value;
              QCuentas.Post;
            end;
          end;

         end;

        {QDetallepro_utilizamedidor.Value := utilizamedidor;
        QDetallepro_UtilizaEnvio.Value := UtilizaEnvio;}

        //Si es un producto que utiliza medidor
        if utilizamedidor = 'True' then
        begin
          Application.CreateForm(tfrmDatosMedidor, frmDatosMedidor);
          frmDatosMedidor.ShowModal;
          if frmDatosMedidor.edActual.Text <> '' then
          begin
            QDetalle.Edit;
              QDetalleMedidorID.Value := StrToInt(frmDatosMedidor.edMedidor.Text);
              QDetalleMedidor_Secuencia.Value := StrToFloat(frmDatosMedidor.edAnterior.Text);
              QDetalleMedidor_Cantidad.Value  := StrToFloat(frmDatosMedidor.edActual.Text);
              QDetalleDET_CANTIDAD.Value      := QDetalleMedidor_Cantidad.Value - QDetalleMedidor_Secuencia.Value;
            QDetalle.Post;
          end;
          frmDatosMedidor.Release;
        end;

        //Si es un producto que utiliza envio
        if UtilizaEnvio = 'True' then
        begin
          Application.CreateForm(tfrmEnvio, frmEnvio);
          //Buscar los Conceptos
          dm.adoMultiUso.Close;
          dm.adoMultiUso.SQL.Clear;
          dm.adoMultiUso.SQL.Add('select upper(con_nombre) concepto from conceptos_envios where emp_codigo = '+
          QuotedStr(IntToStr(DM.vp_cia))+' order by con_nombre');
          dm.adoMultiUso.Open;
          if dm.adoMultiUso.RecordCount > 0 then begin
          frmEnvio.cbbConceptos.Clear;
          frmEnvio.cbbConceptos.Items.Add('');
          while not dm.adoMultiUso.Eof do begin
          frmEnvio.cbbConceptos.Items.Add(dm.adoMultiUso.fieldbyname('concepto').Text);
          dm.adoMultiUso.Next;
          end;
          frmEnvio.cbbConceptos.ItemIndex := 0;
          end;
          frmEnvio.SucursalDestino.KeyValue := QSucursalDestinosuc_codigo.value;
          if QEnvio.Locate('pro_codigo', QDetallePRO_CODIGO.Value, []) then
          begin
            //frmEnvio.edoCiudad.Text     := QEnvioCiudad_Origen.AsString;
            frmEnvio.edoNombre.Text     := QEnvioNombre_envia.AsString;
            frmEnvio.edoTelefono.Text   := QEnvioTelefono_Envia.AsString;
            //frmEnvio.eddCiudad.Text     := QEnvioCiudad_Destino.AsString;
            frmEnvio.eddNombre.Text     := QEnvioNombre_Recibe.AsString;
            frmEnvio.eddTelefono.Text   := QEnvioTelefono_Recibe.AsString;
            frmEnvio.edDescripcion.Text := QEnvioDescripcion.AsString;
            frmEnvio.SucursalDestino.KeyValue := QEnvioenv_suc_destino.value;
            frmEnvio.chkPagoDestino.Checked := QEnviofacpagodestino.Value;
          end;
          frmEnvio.ShowModal;
          if length(trim(frmEnvio.edoNombre.Text)) > 0 then
          begin
           //oCiudad := frmEnvio.edoCiudad.Text;
           //dCiudad := frmEnvio.eddCiudad.Text;
           dCodCiudad := frmEnvio.DBLookupComb_env_suc_destino.KeyValue;
           ONombre := frmEnvio.edoNombre.Text;
           OTelefono := frmEnvio.edoTelefono.Text;
           dNombre := frmEnvio.eddNombre.Text;
           dTelefono := frmEnvio.eddTelefono.Text;
           Descripcion := frmEnvio.edDescripcion.Text;
           QFacturaFAC_NOMBRE.Value := frmEnvio.edoNombre.Text;
           dPagarDestino := frmEnvio.chkPagoDestino.Checked;

            if QEnvio.Locate('pro_codigo', QDetallePRO_CODIGO.Value, []) then
              ActualisarEnvio(true)
            else
              ActualisarEnvio(false);
          end;
          frmEnvio.Release;
        end;
 if dm.QParametrosPAR_FACBAJARLINEA.Value = 'True' then begin
 QDetalle.Append;
 Grid.SelectedIndex := 0;
 end;

  end;
    end;
  end;
end;
end;
end;


procedure TfrmFactura.GridColEnter(Sender: TObject);
begin
if not ((dm.QParametrospar_formato_preimpreso.Text = 'Sarita & Asociados')) then begin
  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'CALCITBIS' then
    Grid.SelectedIndex := Grid.SelectedIndex + 1;

  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_ESCALA' then
    Grid.SelectedIndex := Grid.SelectedIndex + 1;

  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_CANTEMPAQUE' then
    Grid.SelectedIndex := Grid.SelectedIndex + 1;

  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'PRECIOITBIS' then
    Grid.SelectedIndex := Grid.SelectedIndex + 1;

  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'VALOR' then
  begin
    QDetalle.Append;
    Grid.SelectedIndex := 0;
    end;
end;

  QUltPrecio.Close;
  QUltPrecio.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
  QUltPrecio.Parameters.ParamByName('suc').Value := QFacturaSUC_CODIGO.Value;
  QUltPrecio.Parameters.ParamByName('cli').Value := QFacturaCLI_CODIGO.Value;
  QUltPrecio.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
  QUltPrecio.Open;

if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'PRO_NOMBRE' then BEGIN
  if vModProducto = True then
Grid.Columns[Grid.selectedindex].ReadOnly := False else
Grid.Columns[Grid.selectedindex].ReadOnly := True;
end;


end;

procedure TfrmFactura.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if (key = vk_f4) and (btBuscaProd.Enabled = True) then btBuscaProdClick(self);
  if key = vk_f7  then btPrecioClick(Self);

if dm.QParametrospar_busq_incrementada.Value = True then begin
if DBGrid_1.Visible = True then begin
  if key = vk_down then begin
  QDetalle.Delete;
  DBGrid_1.SetFocus;
  DS_1.DataSet.Next;
  end;
  if key = vk_up then begin
  QDetalle.Delete;
  DBGrid_1.SetFocus;
  DS_1.DataSet.Prior;
  end;
  if key = vk_return then begin
  DS_1.DataSet.First;
  DBGrid_1DblClick(Sender);
  end;
  end;
  end;
end;

procedure TfrmFactura.GridKeyPress(Sender: TObject; var Key: Char);
var
  a : integer;
  b : String;
begin

if dm.QParametrospar_busq_incrementada.Value = True then begin
if Grid.selectedindex = 0 then begin
ed1.Text := Trim(ed1.Text)+Key;

IF KEY = #46 THEN KEY := #0;
if Key = #8 then
ed1.Text := LeftStr(Trim(TEdit(TDBGrid(Sender).Controls[0]).Text + Key),Length(Trim(TEdit(TDBGrid(Sender).Controls[0]).Text + Key))-1);
if ed1.Text <> '' then begin
DesactivarCargaProductos := True;
with QSelectIncrem1 do begin
Close;
Parameters.ParamByName('TIPO').Value   := RG_BuscaDet.ItemIndex;
Parameters.ParamByName('CODIGO').Value := ed1.Text;
Parameters.ParamByName('SUC').Value    := DBLookupComboBox2.KeyValue;
Open;
IF NOT IsEmpty THEN  DBGrid_1.Visible := True;
IF IsEmpty THEN  DBGrid_1.Visible := False;
end;
end;
end;
end;

if NOT dm.QParametrospar_busq_incrementada.Value = True then begin
  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_MEDIDA' then
  begin
    if uppercase(key) = 'E' then
    begin
      QDetalle.Edit;
      QDetalleDET_MEDIDA.Value := 'Emp';
    end
    else if uppercase(key) = 'U' then
    begin
      QDetalle.Edit;
      QDetalleDET_MEDIDA.Value := 'Und';
    end;
  end;
  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'PRO_UNIDAD_MEDIDA' then
  begin
    for a := 0 to Grid.Columns[Grid.selectedindex].PickList.Count-1 do
    begin
      if copy(Grid.Columns[Grid.selectedindex].PickList[a],1,1) = uppercase(key) then
      begin
        QDetalle.Edit;
        QDetallepro_unidad_medida.Clear;
        QDetallepro_unidad_medida.Value := Grid.Columns[Grid.selectedindex].PickList[a];
      end;
    end;
    key := #0;
    Grid.SelectedIndex := Grid.SelectedIndex+1;
  end;
  if key = #13 then begin
  if not (uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_PRECIO') then BEGIN
  if ((QDetalle.State in [dsbrowse]) and (QDetallePRO_RORIGINAL.Text<>'') and (dm.QParametrosPAR_FACBAJARLINEA.Value = 'True')) then
  Grid.selectedindex := Grid.selectedindex + 1 else
  if ((QDetallePRO_RORIGINAL.Text<>'') and (dm.QParametrosPAR_FACBAJARLINEA.Value = 'False')) then
  Grid.selectedindex := Grid.selectedindex + 1 else
  if (uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_CANTIDAD') then
  Grid.selectedindex := Grid.selectedindex + 1;
 end
 ELSE
 begin
 QDetalle.Append;
 Grid.SelectedIndex := 0;
 end;
 end;
 end;

end;



procedure TfrmFactura.btBuscaProdClick(Sender: TObject);
var
  primera : boolean;
  Relleno, Lote : string;
  s : array[0..20] of char;
begin
  application.createform(tfrmBuscaProducto, frmBuscaProducto);
  //Buscar por almacen por la sucursal.
  frmBuscaProducto.almacen := QFacturaALM_CODIGO.Value;
  frmBuscaProducto.facturando := True;
  frmBuscaProducto.vp_suc := QFacturaSUC_CODIGO.Value;
  primera := true;
  GRID.SelectedIndex := 2;

   //Enviamos la moneda en la que se va facturar  - MRUIZ
  frmBuscaProducto.TasaCambio:=QFacturaFAC_TASA.Value;
  frmBuscaProducto.codigomoneda:=QFacturaMON_CODIGO.value;
  
  //frmBuscaProducto.ckactiva.Checked:=true;
  
  while (frmBuscaProducto.ckactiva.Checked) or (Primera) do
  begin

    frmBuscaProducto.showmodal;
    Primera := false;
    if frmBuscaProducto.seleccion = 1 then
    begin

      Totaliza:= true;
      Relleno := '';
      if dm.QParametrosPAR_VENVERIFICA.Value = '1' then
      begin
        Relleno := '';
        if frmBuscaProducto.QVence.RecordCount > 0 then
        begin
          FillChar(s, dm.QParametrosPAR_VENDIGITOSLOTE.Value-Length(IntToStr(frmBuscaProducto.QVenceven_lote.Value)),'0');
          Relleno := s+IntToStr(frmBuscaProducto.QVenceven_lote.Value);
        end
        else
        begin
          FillChar(s, dm.QParametrosPAR_VENDIGITOSLOTE.Value,'9');
          Relleno := s;
        end;
      end;
      QDetalle.Edit;
      QDetalleDET_ESCALA.Value := frmBuscaProducto.QEscalasESC_ESCALA.Value;
      //CAMBIO REALIZADO POR JHONATTAN GOMEZ 16/02/2018
      CASE RG_BuscaDet.ItemIndex OF

      0:QDetallePRO_CODIGO.value := frmBuscaProducto.QProductosPRO_CODIGO.value;
      1:QDetallePRO_RORIGINAL.value := Relleno+frmBuscaProducto.QProductosPRO_RORIGINAL.value;
      2:QDetallePRO_RFABRIC.value := Relleno+frmBuscaProducto.QProductosPRO_RFABRIC.value;
      END;

     
      //CAMBIO REALIZADO POR JHONATTAN GOMEZ 16/02/2018

      if frmBuscaProducto.ckactiva.Checked then
      begin
         QDetalle.Append;

      //if frmBuscaProducto.ckactiva.Checked then
    //  begin
        QDetalle.Append;

        //Eliminar la linea solo para Ferreteria Nunez
        if dm.QEmpresasEMP_RNC.Value ='130282943' then
          QDetalle.Delete;
      //  Grid.SelectedIndex := 0;
     // end;
      end;
    end;
  end;
  frmBuscaProducto.release;
  PageControl1.ActivePageIndex := 0;
  Grid.SelectedIndex := 2;
  Grid.setfocus;

end;

procedure TfrmFactura.btSalirClick(Sender: TObject);
begin
  if vl_accion = 2 then begin
  if MDDetalle.RecordCount > 0 then begin
  MDDetalle.First;
  while not MDDetalle.Eof do begin
  DM.ADOSigma.Execute('update existencias set exi_cantidad = isnull(exi_cantidad,0)- '+FloatToStr(MDDetallecantidadund.Value)+
  ' ,exi_empaque = isnull(exi_empaque,0) -'+FloatToStr(MDDetallecantidademp.Value)+' where emp_codigo ='+QFacturaEMP_CODIGO.Text+' and alm_codigo ='+IntToStr(QFacturaALM_CODIGO.Value)+
  ' and pro_codigo ='+MDDetallepro_codigo.Text);
  DM.ADOSigma.Execute('update productos set pro_existencia = isnull(pro_existencia,0)- '+FloatToStr(MDDetallecantidadund.Value)+
  ' ,pro_existempaque = isnull(pro_existempaque,0) -'+FloatToStr(MDDetallecantidademp.Value)+' where emp_codigo ='+DM.QParametrosPAR_INVEMPRESA.Text+
  ' and pro_codigo ='+MDDetallepro_codigo.Text);
  MDDetalle.Next;
  end;
  end;
  end;

  close;
end;

procedure TfrmFactura.QDetalleBeforePost(DataSet: TDataSet);
var
  PorcReal : Double;
  PrecioReal:Double;

begin

if ((Realizado<>true)) THEN
BEGIN
//DOLAR
               if dm.QParametrospar_mostrarfacturadolares.Value = true then
                BEGIN
                  IF  QFacturaMON_CODIGO.value = 2 THEN
                  BEGIN
                    IF QFacturafac_tasacambio.Value>0 THEN
                    BEGIN
                       QDetalleDET_PRECIO.Value:=QDetalleDET_PRECIO.Value / QFacturafac_tasacambio.Value;
                        //QDetalle.Post;
                    END ;
                  END;
                END;
END;
QDetalleFAC_NUMERO.Value := QFacturaFAC_NUMERO.Value;

if (DM.QParametrospar_itbisincluido.Value = 'False') and (QDetalleDET_CONITBIS.Value = 'S') then
QDetalleDET_TOTALITBIS.value := (QDetalleDET_PRECIO.value*(QDetalleDET_ITBIS.Value/100))*QDetalleDET_CANTIDAD.Value else
QDetalleDET_TOTALITBIS.value := ((QDetalleDET_PRECIO.value/(1+(QDetalleDET_ITBIS.Value/100)))*(QDetalleDET_ITBIS.Value/100))*QDetalleDET_CANTIDAD.Value;


IF DM.QParametrospar_busqueda_dejar_ultimo.Value = 'True' then
  dm.UltProducto := QDetallePRO_CODIGO.Text;



  PrecioReal:=0;
  if QDetalledet_cant_oferta.IsNull then QDetalledet_cant_oferta.Value := 0;


 if trim(QDetalleDET_MEDIDA.Value) = '' then
    QDetalleDET_MEDIDA.Value := 'Und';

//  QDetalleDET_TOTALDESC.Value  := QDetalleCalcDesc.Value;
//  QDetalleDET_TOTALITBIS.Value := QDetalleCalcItbis.Value;
  if not QDetallePRO_CODIGO.isnull then
  begin
    Lista.Items.Add(IntToStr(QDetallePRO_CODIGO.Value));
    if ((QDetalleDET_CANTIDAD.isnull) or (QDetalleDET_CANTIDAD.Value=0)) then
       QDetalleDET_CANTIDAD.value := 1;
  end;
  if QDetalleDET_DESCUENTO.isnull then
  if QDetalleDET_DESCUENTO.ReadOnly = False then 
     QDetalleDET_DESCUENTO.Value := 0;
  if QDetalleDET_COMISION.IsNull then
    QDetalleDET_COMISION.Value := 0;

  //QDetalleDET_TOTAL.value := QDetalleValor.value;
  //QDetalleDET_TOTAL.value := QDetalleDET_TOTAL.value;


  if Totaliza = true then
  begin
    if (QDetalleDET_DESCMAX.Value > 0) and (QDetalleDET_OFERTA.Value <> 'S') then
    begin
       if dm.QParametrospar_itbisincluido.Value = 'True' then
       begin
         if (dm.QParametrosPAR_PRECIOUND.Value = 'Precio1') and (QDetalleDET_MEDIDA.Value = 'Und') then
           PorcReal := 100.00 - (((StrToFloat(format('%10.2f',[QDetalleValor.Value]))/StrToFloat(format('%10.2f',[QDetalleDET_CANTIDAD.Value]))) / StrToFloat(format('%10.2f',[QDetalleDET_PRECIO1.Value]))) * 100)
         else if (dm.QParametrosPAR_PRECIOUND.Value = 'Precio2') and (QDetalleDET_MEDIDA.Value = 'Und') then
           PorcReal := 100.00 - (((StrToFloat(format('%10.2f',[QDetalleValor.Value]))/StrToFloat(format('%10.2f',[QDetalleDET_CANTIDAD.Value]))) / StrToFloat(format('%10.2f',[QDetalleDET_PRECIO2.Value]))) * 100)
         else if (dm.QParametrosPAR_PRECIOEMP.Value = 'Precio1') and (QDetalleDET_MEDIDA.Value = 'Emp') then
           PorcReal := 100.00 - (((StrToFloat(format('%10.2f',[QDetalleValor.Value]))/StrToFloat(format('%10.2f',[QDetalleDET_CANTIDAD.Value]))) / StrToFloat(format('%10.2f',[QDetalleDET_PRECIO1.Value]))) * 100)
         else if (dm.QParametrosPAR_PRECIOEMP.Value = 'Precio2') and (QDetalleDET_MEDIDA.Value = 'Emp') then
           PorcReal := 100.00 - (((StrToFloat(format('%10.2f',[QDetalleValor.Value]))/StrToFloat(format('%10.2f',[QDetalleDET_CANTIDAD.Value]))) / StrToFloat(format('%10.2f',[QDetalleDET_PRECIO2.Value]))) * 100);
       end
       else
       begin
         if (dm.QParametrosPAR_PRECIOUND.Value = 'Precio1') and (QDetalleDET_MEDIDA.Value = 'Und') then
           PorcReal := 100.00 - (((StrToFloat(format('%10.2f',[QDetalleValor.Value - QDetalleCalcItbis.Value]))/StrToFloat(format('%10.2f',[QDetalleDET_CANTIDAD.Value]))) / StrToFloat(format('%10.2f',[QDetalleDET_PRECIO1.Value]))) * 100)
         else if (dm.QParametrosPAR_PRECIOUND.Value = 'Precio2') and (QDetalleDET_MEDIDA.Value = 'Und') then
           PorcReal := 100.00 - (((StrToFloat(format('%10.2f',[QDetalleValor.Value - QDetalleCalcItbis.Value]))/StrToFloat(format('%10.2f',[QDetalleDET_CANTIDAD.Value]))) / StrToFloat(format('%10.2f',[QDetalleDET_PRECIO2.Value]))) * 100)
         else if (dm.QParametrosPAR_PRECIOEMP.Value = 'Precio1') and (QDetalleDET_MEDIDA.Value = 'Emp') then
           PorcReal := 100.00 - (((StrToFloat(format('%10.2f',[QDetalleValor.Value - QDetalleCalcItbis.Value]))/StrToFloat(format('%10.2f',[QDetalleDET_CANTIDAD.Value]))) / StrToFloat(format('%10.2f',[QDetalleDET_PRECIO1.Value]))) * 100)
         else if (dm.QParametrosPAR_PRECIOEMP.Value = 'Precio2') and (QDetalleDET_MEDIDA.Value = 'Emp') then
           PorcReal := 100.00 - (((StrToFloat(format('%10.2f',[QDetalleValor.Value - QDetalleCalcItbis.Value]))/StrToFloat(format('%10.2f',[QDetalleDET_CANTIDAD.Value]))) / StrToFloat(format('%10.2f',[QDetalleDET_PRECIO2.Value]))) * 100);
       end;

       if (QDetalleDET_DESCUENTO.Value = 0) or (QDetalleDET_DESCUENTO.IsNull) then
        PorcReal := StrToFloat(format('%10.2f',[PorcReal]))
       else
        PorcReal := QDetalleDET_DESCUENTO.Value;

       if ((QDetalleTMP.Active) and (QDetalleTMP.Locate('pro_codigo',QDetallePRO_CODIGO.Text,[])) and
        (QDetalleTMPDET_DESCUENTO.Value<QDetalleDET_DESCUENTO.Value))
        then begin
          Application.CreateForm(tfrmPideClave, frmPideClave);
          frmPideClave.ShowModal;
          if frmPideClave.acepto = 1 then
          begin
            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('select usu_excede_descuento from usuarios');
            dm.Query1.SQL.Add('where usu_clave = :cla');
            dm.Query1.Parameters.ParamByName('cla').Value := MimeEncodeString(frmPideClave.edclave.Text);
            dm.Query1.Open;
            if (dm.Query1.RecordCount = 0) or (dm.Query1.FieldByName('usu_excede_descuento').Value <> 'True') then
            begin
              MessageDlg('NO TIENE ACCESO PARA EXCEDER EL DESCUENTO MAXIMO DE '+Format('%n',[QDetalleDET_DESCMAX.Value])+'%',mtError,[mbok],0);
              QDetalleDET_DESCUENTO.Clear;
              QDetalleDET_PRECIO.Value := QDetalleDET_PRECIO1.Value;
              Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));

              PageControl1.ActivePageIndex := 0;
              Grid.SetFocus;
              Grid.SelectedIndex := 5;
              QDetalle.EnableControls;
              abort;
            end;
          end
          else
          begin
            QDetalleDET_DESCUENTO.Clear;
            QDetalleDET_PRECIO.Value := QDetalleDET_PRECIO1.Value;
            Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));

            PageControl1.ActivePageIndex := 0;
            Grid.SetFocus;
            Grid.SelectedIndex := 5;
            QDetalle.EnableControls;
            abort;
          end;
          frmPideClave.Release;
       end;
       END;

       if (PorcReal > StrToFloat(Format('%10.2f',[QDetalleDET_DESCMAX.Value]))) and
       (dm.QUsuariosusu_excede_descuento.Value <> 'True') and
      // (dm.QParametrospar_fac_preimpresa.Value = 'True') and
      // (dm.QParametrospar_formato_preimpreso.Value <> 'Caceres&Equipos') and
       (not QDetalleTMP.Active) then
       begin
          Application.CreateForm(tfrmPideClave, frmPideClave);
          frmPideClave.ShowModal;
          if frmPideClave.acepto = 1 then
          begin
            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('select usu_excede_descuento from usuarios');
            dm.Query1.SQL.Add('where usu_clave = :cla');
            dm.Query1.Parameters.ParamByName('cla').Value := MimeEncodeString(frmPideClave.edclave.Text);
            dm.Query1.Open;
            if (dm.Query1.RecordCount = 0) or (dm.Query1.FieldByName('usu_excede_descuento').Value <> 'True') then
            begin
              MessageDlg('NO TIENE ACCESO PARA EXCEDER EL DESCUENTO MAXIMO DE '+Format('%n',[QDetalleDET_DESCMAX.Value])+'%',mtError,[mbok],0);
              QDetalleDET_DESCUENTO.Clear;
              QDetalleDET_PRECIO.Value := QDetalleDET_PRECIO1.Value;
              Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));

              PageControl1.ActivePageIndex := 0;
              Grid.SetFocus;
              Grid.SelectedIndex := 5;
              QDetalle.EnableControls;
              abort;
            end;
          end
          else
          begin
            QDetalleDET_DESCUENTO.Clear;
            QDetalleDET_PRECIO.Value := QDetalleDET_PRECIO1.Value;
            Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));

            PageControl1.ActivePageIndex := 0;
            Grid.SetFocus;
            Grid.SelectedIndex := 5;
            QDetalle.EnableControls;
            abort;
          end;
          frmPideClave.Release;
       end;


    if QDetallePRO_SERVICIO.Value <> 'True' then
    begin
     with qVerProductos do begin
     Close;
     Parameters.ParamByName('emp').Value  := DM.vp_cia;
     Parameters.ParamByName('alm').Value  := QFacturaALM_CODIGO.Value;
     Parameters.ParamByName('pro').Value  := QDetallePRO_CODIGO.Value;

     if dm.QParametrospar_inv_unidad_medida.Value = 'True' then
         Parameters.ParamByName('can').Value  := QDetalleDET_CANTIDAD.Value * QDetalledet_cant_unidad_medida.Value
      else
         Parameters.ParamByName('can').Value  := QDetalleDET_CANTIDAD.Value;

      Parameters.ParamByName('med').Value  := QDetalleDET_MEDIDA.Value;
      Parameters.ParamByName('usu').Value  := dm.Usuario;
      Parameters.ParamByName('suc').Value  := QFacturaSUC_CODIGO.Value;
      Parameters.ParamByName('tfa').Value  := QFacturaTFA_CODIGO.Value;
      Parameters.ParamByName('for').Value  := QFacturaFAC_FORMA.Value;
      Parameters.ParamByName('num').Value  := QFacturaFAC_NUMERO.Value;
      Open;
      end;          //fer

      if qVerProductos.FieldByName('facturar').AsString = 'False' then
      begin
        Query1.Close;
        Query1.SQL.Clear;
        Query1.SQL.Add('update productos set pro_realizar_pedido = '+QuotedStr('True'));
        Query1.SQL.Add('where emp_codigo = :emp');
        Query1.SQL.Add('and pro_codigo = :pro');
        Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
        Query1.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
        Query1.ExecSQL;
        MessageDlg('NO HAY SUFICIENTE DE ESTE PRODUCTO PARA'+#13+
                   'FACTURAR ESTA CANTIDAD',mtError,[mbok],0);

        Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
//        QDetalleDET_CANTIDAD.Clear;
        QDetalleDET_CANTIDAD.Value := 0;
        Grid.SelectedIndex := 2;
        realizado := false;
        abort;
      end
      else
      IF QDetallePRO_SERVICIO.Value = 'False' THEN BEGIN
      if ((QDetalleDET_CANTIDAD.Value <=0)) then
      begin
        MessageDlg('NO SE PUEDE FACTURAR NEGATIVO O EN CERO',mtError,[mbok],0);

        Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
        QDetalleDET_CANTIDAD.Value := 0;
        Grid.SelectedIndex := 2;
        realizado := false;
        abort;
      end;
    end;

      if (FactDebajoCosto <> 'True') and (dm.QUsuariosusu_debajo_costo.Value <> 'True')
      then
      begin
        if (StrToFloat(format('%10.2F',[qVerProductos.FieldByName('costo').AsFloat])) > 0) and
        (dm.QParametrosPAR_DEBAJOCOSTO.Value = 'False') then
        begin
          PrecioReal := QDetalleDET_PRECIO.Value - ((QDetalleDET_PRECIO.Value*QDetalleDET_DESCUENTO.Value)/100);
          if dm.QParametrospar_itbisincluido.Value <> 'True' then
             begin
               PrecioReal := (QDetalleDET_PRECIO.Value - ((QDetalleDET_PRECIO.Value*QDetalleDET_DESCUENTO.Value)/100));
               PrecioReal := PrecioReal + QDetallePrecioItbis.value;

               //(QDetallePrecioItbis.value - QDetalleCalcDesc.value + QDetalleCalcItbis.value);
             end;

         // if (StrToFloat(format('%10.2F',[dm.Query1.FieldByName('costo').AsFloat])) >
          //StrToFloat(format('%10.2F',[QDetalleDET_PRECIO.Value - ((QDetalleDET_PRECIO.Value*QDetalleDET_DESCUENTO.Value)/100)])))
          //and (QDetalleDET_OFERTA.Value <> 'S') and (dm.QParametrosPAR_DEBAJOCOSTO.Value = 'False') then

          if (StrToFloat(format('%10.2F',[qVerProductos.FieldByName('costo').AsFloat])) >
            PrecioReal)
          and (QDetalleDET_OFERTA.Value <> 'S') and (dm.QParametrosPAR_DEBAJOCOSTO.Value = 'False')
          then
          begin
            MessageDlg('NO PUEDE FACTURAR UN PRODUCTO POR DEBAJO DEL COSTO',mtError,[mbok],0);
            //Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
            //QDetalleDET_PRECIO.Clear;
            //Grid.SelectedIndex := 3;
            //abort;
          Application.CreateForm(tfrmPideClave, frmPideClave);
          frmPideClave.ShowModal;
          if frmPideClave.acepto = 1 then
          begin
            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('select usu_debajo_costo from usuarios');
            dm.Query1.SQL.Add('where usu_clave = :cla');
            dm.Query1.Parameters.ParamByName('cla').Value := MimeEncodeString(frmPideClave.edclave.Text);
            dm.Query1.Open;
            if (dm.Query1.RecordCount = 0) or (dm.Query1.FieldByName('usu_debajo_costo').Value <> 'True') then
            begin
              MessageDlg('NO TIENE ACCESO PARA FACTURAR UN PRODUCTO POR DEBAJO DEL COSTO '+Format('%n',[QDetalleDET_COSTO.Value])+'%',mtError,[mbok],0);
              QDetalleDET_PRECIO.Value := QDetalleDET_PRECIO1.Value;
              Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
              PageControl1.ActivePageIndex := 0;
              Grid.SetFocus;
              Grid.SelectedIndex := 5;
              QDetalle.EnableControls;
              abort;
            end;
          end
          else
          begin
            QDetalleDET_PRECIO.Value := QDetalleDET_PRECIO1.Value;
            Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
            PageControl1.ActivePageIndex := 0;
            Grid.SetFocus;
            Grid.SelectedIndex := 5;
            QDetalle.EnableControls;
            abort;
          end;
          frmPideClave.Release;
          end;
        end;
      end;
      //Verificando Precio Minimo
     if (FactDebajoMinimo <> 'True') and (dm.QUsuariosusu_debajo_minimo.Value <> 'True')
     then
      begin
        if QDetalleDET_MEDIDA.Value = 'Und' then //Unidad
        begin
          if (dm.QParametrosPAR_DEBAJOPRECIO.Value <> 'False') and
          (StrToFloat(Format('%10.2f',[QDetalleDET_PRECIOMINIMO.Value])) > 0) then
          begin
            if StrToFloat(Format('%10.2f',[QDetalleValor.Value])) <
            StrToFloat(Format('%10.2f',[QDetalleDET_PRECIOMINIMO.Value])) then
            begin
              MessageDlg('EL PRECIO MINIMO PARA ESTE PRODUCTO ES '+
              Format('%n',[QDetalleDET_PRECIOMINIMO.Value]),mtError,[mbok],0);
              //Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
              //QDetalleDET_PRECIO.Clear;
              //Grid.SelectedIndex := 3;
              //abort;
          Application.CreateForm(tfrmPideClave, frmPideClave);
          frmPideClave.ShowModal;
          if frmPideClave.acepto = 1 then
          begin
            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('select usu_debajo_minimo from usuarios');
            dm.Query1.SQL.Add('where usu_clave = :cla');
            dm.Query1.Parameters.ParamByName('cla').Value := MimeEncodeString(frmPideClave.edclave.Text);
            dm.Query1.Open;
            if (dm.Query1.RecordCount = 0) or (dm.Query1.FieldByName('usu_debajo_minimo').Value <> 'True') then
            begin
              MessageDlg('NO TIENE ACCESO PARA FACTURAR UN PRODUCTO POR DEBAJO DEL PRECIO '+Format('%n',[QDetalleDET_PRECIOMINIMO.Value]),mtError,[mbok],0);
              QDetalleDET_PRECIO.Value := QDetalleDET_PRECIO1.Value;
              Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
              PageControl1.ActivePageIndex := 0;
              Grid.SetFocus;
              Grid.SelectedIndex := 5;
              QDetalle.EnableControls;
              abort;
            end;
          end
          else
          begin
            QDetalleDET_PRECIO.Value := QDetalleDET_PRECIO1.Value;
            Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
            PageControl1.ActivePageIndex := 0;
            Grid.SetFocus;
            Grid.SelectedIndex := 5;
            QDetalle.EnableControls;
            abort;
          end;
          frmPideClave.Release;

            end;
          end;
        end
        else

        if QDetalleDET_MEDIDA.Value = 'Emp' then //Empaque
        begin
          if (dm.QParametrosPAR_DEBAJOPRECIO.Value <> 'False') and
          (StrToFloat(Format('%10.2f',[QDetalleDET_PRECIOMINIMOEMP.Value])) > 0) then
          begin
            if StrToFloat(Format('%10.2f',[QDetalleValor.Value])) <
            StrToFloat(Format('%10.2f',[QDetalleDET_PRECIOMINIMOEMP.Value])) then
            begin
              MessageDlg('EL PRECIO MINIMO PARA ESTE PRODUCTO ES '+
              Format('%n',[QDetalleDET_PRECIOMINIMOEMP.Value]),mtError,[mbok],0);
              Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
              QDetalleDET_PRECIO.Clear;
              Grid.SelectedIndex := 3;
              abort;
            end;
          end;
        end;
      end;
    end;
    //end;
  // verificando permiso para disminuir el precio

  if (dm.QUsuariosusu_disminuye_precio.Value <> 'True') then
  begin
    if (dm.QParametrosPAR_PRECIOUND.Value = 'Precio1') and (QDetalleDET_MEDIDA.Value = 'Und') then
    begin
      if QDetalleDET_PRECIO.Value < QDetalleDET_PRECIO1.Value then
      begin
        MessageDlg('NO PUEDE DISMINUIR EL PRECIO DEL PRODUCTO', mterror, [mbok],0);
        abort;
      end;
    end
    else if (dm.QParametrosPAR_PRECIOUND.Value = 'Precio2') and (QDetalleDET_MEDIDA.Value = 'Und') then
    begin
      if QDetalleDET_PRECIO.Value < QDetalleDET_PRECIO2.Value then
      begin
        MessageDlg('NO PUEDE DISMINUIR EL PRECIO DEL PRODUCTO', mterror, [mbok],0);
        abort;
      end;
    end
    else if (dm.QParametrosPAR_PRECIOEMP.Value = 'Precio1') and (QDetalleDET_MEDIDA.Value = 'Emp') then
    begin
      if QDetalleDET_PRECIO.Value < QDetalleDET_PRECIO1.Value then
      begin
        MessageDlg('NO PUEDE DISMINUIR EL PRECIO DEL PRODUCTO', mterror, [mbok],0);
        abort;
      end;
    end
    else if (dm.QParametrosPAR_PRECIOEMP.Value = 'Precio2') and (QDetalleDET_MEDIDA.Value = 'Emp') then
    begin
      if QDetalleDET_PRECIO.Value < QDetalleDET_PRECIO2.Value then
      begin
        MessageDlg('NO PUEDE DISMINUIR EL PRECIO DEL PRODUCTO', mterror, [mbok],0);
        abort;
      end;
    end;
  end;

  if (not QDetalleVEN_CODIGO.IsNull) and (not QDetallePRO_CODIGO.IsNull) then
  begin
    //Buscando comision para el producto
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select * from pr_busca_comision (:emp, :pro, :ven)');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('ven').Value := QDetalleVEN_CODIGO.Value;
    dm.Query1.Open;
    if QDetalleDET_DESCUENTO.Value > 0 then
      QDetalleDET_COMISION.Value := StrToFloat(format('%10.2f',[dm.Query1.FieldByName('comisiondescuento').AsFloat]))
    else
      QDetalleDET_COMISION.Value := StrToFloat(format('%10.2f',[dm.Query1.FieldByName('comision').AsFloat]));
  end;
  QDetallealm_codigo.Value := vAlmacen;
  QMsnExistencia.Close;
  QMsnExistencia.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
  QMsnExistencia.Parameters.ParamByName('usu').Value := dm.Usuario;
  QMsnExistencia.Open;


IF ((QFacturaporc_desc_gral.Value > 0) and (QFacturaporc_desc_gral.Value> QDetalleDET_DESCMAX.Value)
AND (dm.QUsuariosusu_excede_descuento.Value <> 'True')) AND (QDetalleDET_DESCMAX.Value > 0) THEN BEGIN
IF MessageDlg('ESTE PRODUCTO NO ACEPTA EL PORCIENTO DE DESCUENTO GENERAL APLICADO DE UN '+QFacturaporc_desc_gral.Text+QuotedStr('%')+CHAR(13)+
'DEBE SER AUTORIZADO POR UN SUPERVISOR'+CHAR(13)+
'DESEA CONTINUAR?',mtConfirmation,[mbYes,mbNo],0)=MRYES THEN BEGIN
          Application.CreateForm(tfrmPideClave, frmPideClave);
          frmPideClave.ShowModal;
          if frmPideClave.acepto = 1 then
          begin
            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('select usu_excede_descuento from usuarios');
            dm.Query1.SQL.Add('where usu_clave = :cla');
            dm.Query1.Parameters.ParamByName('cla').Value := MimeEncodeString(frmPideClave.edclave.Text);
            dm.Query1.Open;
            if (dm.Query1.RecordCount = 0) or (dm.Query1.FieldByName('usu_excede_descuento').Value <> 'True') then
            begin
              MessageDlg('NO TIENE ACCESO PARA EXCEDER EL DESCUENTO MAXIMO DE '+Format('%n',[QDetalleDET_DESCMAX.Value])+'%',mtError,[mbok],0);
              Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
              PageControl1.ActivePageIndex := 0;
              Grid.SetFocus;
              Grid.SelectedIndex := 5;
              QDetalle.EnableControls;
              QFacturaporc_desc_gral.Value := 0;
              Totalizar;
              abort;
            end;
          end
          else
          begin
            Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
            PageControl1.ActivePageIndex := 0;
            Grid.SetFocus;
            Grid.SelectedIndex := 5;
            QDetalle.EnableControls;
            QFacturaporc_desc_gral.Value := 0;
            Totalizar;
            abort;
          end;
          frmPideClave.Release;
       end
       ELSE
       BEGIN
    BorraSerial(QDetallePRO_CODIGO.AsString);
    Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
    //QDetalle.Delete;
    QFacturaporc_desc_gral.Value := 0;
    Totalizar;
    abort;

end;





if QDetallePRO_CODIGO.Text = '' then
QDetalle.Cancel;



end;

end;
end;
{procedure TfrmFactura.totalizar;
var
  Puntero : TBookmark;
  TItbis, TDesc, TComision, SelectivoAd, SelectivoCon, TotalCosto, grabado, montoitbis : Double;
  cant : integer;
begin
if not qDetalleOrdenTaller.Active then begin
  if Totaliza = true then
  begin
    Puntero := QDetalle.GetBookmark;  //20170610
    if dm.QContabpar_codifica_venta_familia.Value = 'True' then
    begin
      totaliza := false;
      QDetalle.DisableControls;
      QDetalle.First;
      while not QDetalle.eof do
      begin
        if QCuentas.RecordCount > 0 then
        begin
          if Trim(QDetallepro_ctacosto.AsString) <> '' then
          begin
            if QCuentas.Locate('cat_cuenta', QDetallepro_ctacosto.AsString, []) then
            begin
              QCuentas.Edit;
              QCuentasdet_monto.Value := 0;
              QCuentas.Post;
            end;
          end;

          if Trim(QDetallepro_ctainvent.AsString) <> '' then
          begin
            if QCuentas.Locate('cat_cuenta', QDetallepro_ctainvent.AsString, []) then
            begin
              QCuentas.Edit;
              QCuentasdet_monto.Value := 0;
              QCuentas.Post;
            end;
          end;

          if Trim(QDetallepro_ctaingreso.AsString) <> '' then
          begin
            if QCuentas.Locate('cat_cuenta', QDetallepro_ctaingreso.AsString, []) then
            begin
              QCuentas.Edit;
              QCuentasdet_monto.Value := 0;
              QCuentas.Post;
            end;
          end;

          if Trim(QDetallepro_ctadescuento.AsString) <> '' then
          begin
            if QCuentas.Locate('cat_cuenta', QDetallepro_ctadescuento.AsString, []) then
            begin
              QCuentas.Edit;
              QCuentasdet_monto.Value := 0;
              QCuentas.Post;
            end;
          end;
        end;

        QDetalle.Next;
      end;
      QDetalle.EnableControls;
    end;
    totaliza := true;

    QDetalle.disablecontrols;
    QDetalle.first;
    Total  := 0;
    TItbis := 0;
    TDesc  := 0;
    TComision := 0;
    SelectivoAd := 0;
    SelectivoCon := 0;
    TotalCosto := 0;
    grabado := 0;
    cant := 0;
    sSubTotal :=0;
    while not QDetalle.eof do
    begin
      sPreciosinItbis :=0;
      Totaliza := False;
      TotalCosto := TotalCosto + (QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value);
      {with DM.Query1 do begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT (ISNULL(PRO_MONTOITBIS,0)/100) ITBIS FROM PRODUCTOS WHERE PRO_CODIGO = :PRO AND EMP_CODIGO = :EMP');
      Parameters.ParamByName('PRO').Value := QDetallePRO_CODIGO.Value;
      Parameters.ParamByName('EMP').Value := QDetalleEMP_CODIGO.Value;
      Open;
      montoitbis := FIELDBYNAME('ITBIS').Value
      end;}
{      QDetalle.Edit;
       if  QDetalleDET_ITBIS.asfloat > 0 then
        sPorcItbis:=  RoundTo((QDetalleDET_ITBIS.asfloat/100)+1, -4)
      else sPorcItbis:= 0;
     sPreciosinItbis := QDetalleDET_PRECIO.Value ;
     if not QDetallePRO_CODIGO.isnull then
        cant := cant + 1;

      if (ckItbis.Checked) then
      begin
        if sPorcItbis > 0 then
        sPreciosinItbis := (QDetalleDET_PRECIO.Value / sPorcItbis)
        else sPreciosinItbis := QDetalleDET_PRECIO.Value;

        if dm.QParametrospar_itbisincluido.Value = 'True' then
          Total  := Total  + QDetallePrecioItbis.value
        else
          Total  := Total  + QDetalleDET_PRECIO.value*QDetalledet_cantidad.Value;
      end
      else
        begin
        if DM.QParametrospar_itbisincluido.Value = 'True' then
        Total  := Total  + (QDetalleDET_PRECIO.value)*QDetalledet_cantidad.Value else
        Total  := Total  + QDetalleDET_PRECIO.value*QDetalledet_cantidad.Value;
        QDetalleDET_CONITBIS.Value := 'N'; //Agregado por Titin porque devolucion trae itbis
        QDetalleDET_ITBIS.value := 0;
        QDetallePrecioItbis.Value := QDetallePrecioItbis.Value / (1+montoitbis);
        end;

      if QDetalleDET_CONITBIS.Value = 'S' then
        grabado := grabado + ((QDetallePrecioItbis.value-QDetalleCalcDesc.Value));

      if QDetalleDET_CONITBIS.Value = 'N' then
      grabado := grabado +0;//((QDetallePrecioItbis.value-QDetalleCalcDesc.Value));



      SelectivoAd  := SelectivoAd  + (QDetalledet_selectivo_ad.Value);
      SelectivoCon := SelectivoCon + (QDetalledet_selectivo_con.Value);
      TDesc   := TDesc  + QDetalleCalcDesc.value;
      TItbis  := TItbis + QDetalleCalcItbis.value;
      sSubTotal := sSubTotal + (sPreciosinItbis *  QDetalleDET_CANTIDAD.Value);

      if QDetalleDET_COMISION.Value > 0 then
        TComision := TComision + (((QDetallePrecioItbis.Value-QDetalleCalcDesc.Value)*QDetalleDET_COMISION.Value)/100);

      QDetalle.Post;

      if dm.QContabpar_codifica_venta_familia.Value = 'True' then
      begin
        QCuentas.DisableControls;
        if Trim(QDetallepro_ctacosto.AsString) <> '' then
        begin
          if QCuentas.Locate('cat_cuenta', QDetallepro_ctacosto.AsString, []) then
          begin
            QCuentas.Edit;
            QCuentasdet_monto.Value := QCuentasdet_monto.Value + (QDetalleDET_COSTO.Value);
            QCuentas.Post;
          end;
        end;

        if Trim(QDetallepro_ctainvent.AsString) <> '' then
        begin
          if QCuentas.Locate('cat_cuenta', QDetallepro_ctainvent.AsString, []) then
          begin
            QCuentas.Edit;
            QCuentasdet_monto.Value := QCuentasdet_monto.Value + (QDetalleDET_COSTO.Value);
            QCuentas.Post;
          end;
        end;

        if Trim(QDetallepro_ctadescuento.AsString) <> '' then
        begin
          if QCuentas.Locate('cat_cuenta', QDetallepro_ctadescuento.AsString, []) then
          begin
            QCuentas.Edit;
            QCuentasdet_monto.Value := QCuentasdet_monto.Value + (strtofloat(format('%10.2f',[QDetalleCalcDesc.Value])));
            QCuentas.Post;
          end;
        end;

        if Trim(QDetallepro_ctaingreso.AsString) <> '' then
        begin
          if QCuentas.Locate('cat_cuenta', QDetallepro_ctaingreso.AsString, []) then
          begin
            QCuentas.Edit;

            if dm.QParametrospar_itbisincluido.Value = 'True' then
                QCuentasdet_monto.Value  := QCuentasdet_monto.Value + ((QDetalleValor.Value +
                                                                    (QDetalleDET_TOTALDESC.Value)) -
                                                                    (QDetalleDET_TOTALITBIS.Value))
              //QCuentasdet_monto.Value  := QCuentasdet_monto.Value + QDetalleValor.Value
            else
              QCuentasdet_monto.Value  :=  QCuentasdet_monto.Value + ((QDetalleDET_PRECIO.Value));


            QCuentas.Post;
          end;
        end;

        QCuentas.EnableControls;
      end;

      Totaliza := True;
      QDetalle.next;
    end;
    QFactura.Edit;
    //lbCantidad.Caption := inttostr(cant);
    if (ckItbis.Checked)  then
      QFacturaFAC_ITBIS.Value := titbis + (QFacturaRecargo.Value*0.18)
    else
      QFacturaFAC_ITBIS.value   := 0;

    QFacturaFAC_DESCUENTO.value := TDesc;
    QFacturaFAC_COMISION.Value  := TComision;
    QFacturaFAC_OTROS.Value := MontoFijo + ((total * PorcFijo)/100);
    QFacturafac_selectivo_ad.Value := SelectivoAd;
    QFacturafac_selectivo_con.Value := SelectivoCon;
    if ckdomicilio.Checked then
    QFacturaFAC_TOTAL.value     := (Total-TDesc)+QFacturaFAC_ITBIS.value+QFacturaFAC_OTROS.Value+
                                     dm.QParametrospar_monto_domicilio.Value+
                                     QFacturafac_selectivo_con.Value+QFacturafac_selectivo_ad.Value+
                                     QFacturaRecargo.Value + QFacturaFAC_PROPINA.Value
    else
      QFacturaFAC_TOTAL.value     := (Total-TDesc)+QFacturaFAC_ITBIS.value+QFacturaFAC_OTROS.Value+
                                     QFacturafac_selectivo_con.Value+QFacturafac_selectivo_ad.Value+
                                     QFacturaRecargo.Value + QFacturaFAC_PROPINA.Value;
      {QFacturaFAC_TOTAL.value     := strtofloat(format('%10.2f',[(Total-TDesc)+QFacturaFAC_ITBIS.value+QFacturaFAC_OTROS.Value]))+
                                     QFacturafac_selectivo_con.Value+QFacturafac_selectivo_ad.Value;}


{    QDetalle.GotoBookmark(Puntero); //20170610
    QDetalle.enablecontrols;

    if dm.QContabpar_codifica_venta_familia.Value <> 'True' then
    begin
      //Insertando cuenta contable de ingreso
      if QCuentas.Locate('cat_cuenta',CtaTipoFactura,[]) then
      begin
        QCuentas.Edit;
        QCuentasdet_monto.Value := (QFacturaFAC_TOTAL.Value - QFacturaFAC_ITBIS.Value) + QFacturaFAC_DESCUENTO.Value;
        QCuentas.Post;
      end
      else
      begin
        QCuentas.Append;
        QCuentascat_cuenta.Value := CtaTipoFactura;
        QCuentasdet_monto.Value  := (QFacturaFAC_TOTAL.Value - QFacturaFAC_ITBIS.Value) + QFacturaFAC_DESCUENTO.Value;
        QCuentasdet_origen.Value := 'Credito';
        QCuentas.Post;
      end;

      //Insertando cuenta contable de descuento
      if QCuentas.Locate('cat_cuenta',dm.QContabPAR_CTADESC.Value ,[]) then
      begin
        QCuentas.Edit;
        QCuentasdet_monto.Value := QFacturaFAC_DESCUENTO.Value;
        QCuentas.Post;
      end
      else
      begin
        QCuentas.Append;
        QCuentascat_cuenta.Value := dm.QContabPAR_CTADESC.Value;
        QCuentasdet_monto.Value  := QFacturaFAC_DESCUENTO.Value;
        QCuentasdet_origen.Value := 'Debito';
        QCuentas.Post;
      end;

      //Insertando cuenta contable de inventario
      if QCuentas.Locate('cat_cuenta',dm.QContabPAR_CTAINVEnT.Value ,[]) then
      begin
        QCuentas.Edit;
        QCuentasdet_monto.Value := TotalCosto;
        QCuentas.Post;
      end
      else
      begin
        QCuentas.Append;
        QCuentascat_cuenta.Value := dm.QContabPAR_CTAINVEnT.Value;
        QCuentasdet_monto.Value  := TotalCosto;
        QCuentasdet_origen.Value := 'Credito';
        QCuentas.Post;
      end;

      //Insertando cuenta contable de costo
      if QCuentas.Locate('cat_cuenta',dm.QContabPAR_CTACOSTO.Value ,[]) then
      begin
        QCuentas.Edit;
        QCuentasdet_monto.Value := TotalCosto;
        QCuentas.Post;
      end
      else
      begin
        QCuentas.Append;
        QCuentascat_cuenta.Value := dm.QContabPAR_CTACOSTO.Value;
        QCuentasdet_monto.Value  := TotalCosto;
        QCuentasdet_origen.Value := 'Debito';
        QCuentas.Post;
      end;
    end;

    if (actbalance = 'True') and (Trim(CtaCliente) <> '') then
    begin
      if QCuentas.Locate('cat_cuenta',CtaCaja,[]) then QCuentas.Delete;
      if QCuentas.Locate('cat_cuenta',CtaCliente,[]) then
      begin
        QCuentas.Edit;
        QCuentasdet_monto.Value := QFacturaFAC_TOTAL.Value;
        QCuentas.Post;
      end
      else
      begin
        QCuentas.Append;
        QCuentascat_cuenta.Value := CtaCliente;
        QCuentasdet_monto.Value  := QFacturaFAC_TOTAL.Value;
        QCuentasdet_origen.Value := 'Debito';
        QCuentas.Post;
      end;
    end
    else
    begin
      if Trim(CtaCaja) <> '' then
      begin
        if QCuentas.Locate('cat_cuenta',CtaCliente,[]) then QCuentas.Delete;
        if not QCuentas.Locate('cat_cuenta',CtaCaja,[]) then
        begin
          QCuentas.Append;
          QCuentascat_cuenta.Value := CtaCaja;
          QCuentasdet_origen.Value := 'Debito';
          QCuentasdet_monto.Value  := QFacturaFAC_TOTAL.Value;
          QCuentas.Post;
        end
        else
        begin
          QCuentas.Edit;
          QCuentasdet_origen.Value := 'Debito';
          QCuentasdet_monto.Value  := QFacturaFAC_TOTAL.Value;
          QCuentas.Post;
        end;
      end;
    end;

    TotalizarCuentas;
  end;
end;
end; }


procedure TfrmFactura.totalizar;
var
  Puntero : TBookmark;
  TItbis, TItbis2, TDesc, TComision, SelectivoAd, SelectivoCon, TotalCosto, grabado, exento : Currency;
  cant : integer;
  sPreciosinItbis :Double;
  sDescTempS:String;
  sDescTempF :Currency;
  //agregado por titin
  vPorc_Desc_Gral,vTotal_x_DescGral:Currency;
  vTItbis,vPrecio,vPorcDesc,vSubTotal:Currency;
  vTotal_x_DescGral_sin_Itbis:Currency;
  vSubTotaltmp_con_Itbis :Currency;
  ValorTmp,par_monto_domicilio:Currency;
  HayServicioConstruccionConItbis: Boolean;
  vDetalleTieneServicioConstruccion: Boolean;
begin
  vPorc_Desc_Gral := 0;
  vTotal_x_DescGral :=0;
  vTItbis := 0;
  vPrecio:=0;
  vPorcDesc:=0;
  vSubTotal:=0;
  vSubTotaltmp_con_Itbis :=0;
  TGralItbis := 0;
  TItbis2 := 0;

  vDetalleTieneServicioConstruccion := DetalleTieneServicioConstruccion;

  if Totaliza = true then
  begin   //--[0]--
 //   Puntero := QDetalle.GetBookmark;
    if dm.QContabpar_codifica_venta_familia.Value = 'True' then
    begin  //--[1]--
      totaliza := false;
      QDetalle.DisableControls;
      QDetalle.First;
      while not QDetalle.eof do
      begin
        if QCuentas.RecordCount > 0 then
        begin
          if Trim(QDetallepro_ctacosto.AsString) <> '' then
          begin
            if QCuentas.Locate('cat_cuenta', QDetallepro_ctacosto.AsString, []) then
            begin
              QCuentas.Edit;
              QCuentasdet_monto.Value := 0;
              QCuentas.Post;
            end;
          end;

          if Trim(QDetallepro_ctainvent.AsString) <> '' then
          begin
            if QCuentas.Locate('cat_cuenta', QDetallepro_ctainvent.AsString, []) then
            begin
              QCuentas.Edit;
              QCuentasdet_monto.Value := 0;
              QCuentas.Post;
            end;
          end;

          if Trim(QDetallepro_ctaingreso.AsString) <> '' then
          begin
            if QCuentas.Locate('cat_cuenta', QDetallepro_ctaingreso.AsString, []) then
            begin
              QCuentas.Edit;
              QCuentasdet_monto.Value := 0;
              QCuentas.Post;
            end;
          end;

          if Trim(QDetallepro_ctadescuento.AsString) <> '' then
          begin
            if QCuentas.Locate('cat_cuenta', QDetallepro_ctadescuento.AsString, []) then
            begin
              QCuentas.Edit;
              QCuentasdet_monto.Value := 0;
              QCuentas.Post;
            end;
          end;
        end;

        QDetalle.Next;
      end;
      QDetalle.EnableControls;
    end;  //--[1]--  *****************
    totaliza := true;


    //****[Calcula Total ] *****
    QDetalle.disablecontrols;
    QDetalle.first;
    Total  := 0;
    TItbis := 0;
    TDesc  := 0;
    TGralDesc  := 0;
    TComision := 0;
    SelectivoAd := 0;
    SelectivoCon := 0;
    TotalCosto := 0;
    grabado := 0;
    exento  := 0;
    vPorc_Desc_Gral :=0;
    vTotal_x_DescGral := 0;
    vSubTotaltmp_con_Itbis := 0;
    vTotal_x_DescGral_sin_Itbis := 0;
    cant := 0;
    sSubTotal :=0;
    TItbis2 := 0;
    HayServicioConstruccionConItbis := False;

    while not QDetalle.eof do
    begin //--[2]--
      sPreciosinItbis :=0;
      Totaliza := False;
      TotalCosto := TotalCosto + (QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value);
      QDetalle.Edit;
      if not QDetallePRO_CODIGO.isnull then
        cant := cant + 1;

      if  (QDetalleDET_ITBIS.asfloat > 0) and (ConItbis = 'True') then
        sPorcItbis:=  (QDetalleDET_ITBIS.asfloat/100)+1
        else sPorcItbis:= 0;

      if (dm.QParametrospar_itbisincluido.Value = 'True') and (sPorcItbis > 0) and (ConItbis = 'True') then
      sPreciosinItbis := QDetalleDET_PRECIO.Value/sPorcItbis else
      sPreciosinItbis := QDetalleDET_PRECIO.Value;



      //------------------------------------------------------------------------
      vPrecio:= QDetalleDET_PRECIO.Value ;
      vPorcDesc := (vPrecio * (QDetalleDET_DESCUENTO.value / 100));
      vPrecio := vPrecio - vPorcDesc;

      vSubTotaltmp_con_Itbis := vSubTotaltmp_con_Itbis + (QDetalleDET_PRECIO.value*QDetalledet_cantidad.Value );
      /// vDesc:=0; vSubTotal:=0;

      if (ckItbis.Checked) then
      begin
       //  TGralItbis := TGralItbis + QDetalleCalcItbisGral.Value;
        if (dm.QParametrospar_itbisincluido.Value = 'True')  then
          begin
            Total  := Total  + QDetallePrecioItbis.value;
            //resta el itbis al precio si lleva itbis
            if (sPorcItbis > 0)  then
              sPreciosinItbis := (QDetalleDET_PRECIO.Value / sPorcItbis)
            else sPreciosinItbis := QDetalleDET_PRECIO.Value;
          end
        else
          Total  := Total  + QDetalleDET_PRECIO.value*QDetalledet_cantidad.Value;
      end
      else
        begin
          if not (QDetalle.State in [dsEdit, dsInsert]) then
          QDetalle.Edit;

          QDetalleDET_CONITBIS.Value := 'N'; //Agregado por Titin porque devolucion trae itbis
          QDetalleDET_ITBIS.value := 0;
          Total  := Total  + QDetalleDET_PRECIO.value*QDetalledet_cantidad.Value;
          if (sPorcItbis > 0)  then
          sPreciosinItbis := QDetalleDET_PRECIO.Value;
        end;

      if QDetalleDET_CONITBIS.Value = 'S' then
        grabado := grabado + ((QDetallePrecioItbis.value-QDetalleCalcDesc.Value));

      if QDetalleDET_CONITBIS.Value = 'N' then
        exento := exento + ((QDetalleDET_PRECIO.value-QDetalleCalcDesc.Value)); 

      if (vDetalleTieneServicioConstruccion) and (QDetalleDET_CONITBIS.Value = 'S') then
        HayServicioConstruccionConItbis := True;

      SelectivoAd  := SelectivoAd  + (QDetalledet_selectivo_ad.Value);
      SelectivoCon := SelectivoCon + (QDetalledet_selectivo_con.Value);

      TDesc   := TDesc  + QDetalleCalcDesc.value;

      sSubTotal := sSubTotal + (sPreciosinItbis *  QDetalleDET_CANTIDAD.Value);


      TItbis  := TItbis + QDetalleCalcItbis.value;
      if (QDetalleCalcDesc.Value = 0) and (QFacturaporc_desc_gral.Value > 0) then
      TItbis2  := TItbis2 + (((sPreciosinItbis *  QDetalleDET_CANTIDAD.Value) - ((sPreciosinItbis *  QDetalleDET_CANTIDAD.Value)*(QFacturaporc_desc_gral.Value/100)))*(sPorcItbis-1));

      if (sSubTotal)*(QFacturaporc_desc_gral.Value/100)> 0 then

      if QDetalleDET_COMISION.Value > 0 then
        TComision := TComision + (((QDetallePrecioItbis.Value-QDetalleCalcDesc.Value)*QDetalleDET_COMISION.Value)/100);

      QDetalle.Post;

      if dm.QContabpar_codifica_venta_familia.Value = 'True' then
      begin
        QCuentas.DisableControls;
        if Trim(QDetallepro_ctacosto.AsString) <> '' then
        begin
          if QCuentas.Locate('cat_cuenta', QDetallepro_ctacosto.AsString, []) then
          begin
            QCuentas.Edit;
            QCuentasdet_monto.Value := QCuentasdet_monto.Value + (QDetalleDET_COSTO.Value);
            QCuentas.Post;
          end;
        end;

        if Trim(QDetallepro_ctainvent.AsString) <> '' then
        begin
          if QCuentas.Locate('cat_cuenta', QDetallepro_ctainvent.AsString, []) then
          begin
            QCuentas.Edit;
            QCuentasdet_monto.Value := QCuentasdet_monto.Value + (QDetalleDET_COSTO.Value);
            QCuentas.Post;
          end;
        end;

        if Trim(QDetallepro_ctadescuento.AsString) <> '' then
        begin
          if QCuentas.Locate('cat_cuenta', QDetallepro_ctadescuento.AsString, []) then
          begin
            QCuentas.Edit;
            QCuentasdet_monto.Value := QCuentasdet_monto.Value + (strtofloat(format('%10.2f',[QDetalleCalcDesc.Value])));
            QCuentas.Post;
          end;
        end;

        if Trim(QDetallepro_ctaingreso.AsString) <> '' then
        begin
          if QCuentas.Locate('cat_cuenta', QDetallepro_ctaingreso.AsString, []) then
          begin
            QCuentas.Edit;

            if dm.QParametrospar_itbisincluido.Value = 'True' then
                QCuentasdet_monto.Value  := QCuentasdet_monto.Value + ((QDetalleValor.Value +
                                                                    (QDetalleDET_TOTALDESC.Value)) -
                                                                    (QDetalleDET_TOTALITBIS.Value))
              //QCuentasdet_monto.Value  := QCuentasdet_monto.Value + QDetalleValor.Value
            else
              QCuentasdet_monto.Value  :=  QCuentasdet_monto.Value + ((QDetalleDET_PRECIO.Value));


            QCuentas.Post;
          end;
        end;

        QCuentas.EnableControls;
      end;

      Totaliza := True;
      QDetalle.next;
    end; //--[2]--

   //***[Fin calculo ]**********************************************************

    QFactura.Edit;
    //lbCantidad.Caption := inttostr(cant);
     if not ((dm.QParametrospar_formato_preimpreso.Text = 'Sarita & Asociados') AND
          (DM.QParametrospar_fac_preimpresa.Value = 'True')) then begin
     {if (TItbis > 0) and (QFacturaporc_desc_gral.Value = 0) then
    QFacturaFAC_ITBIS.Value := titbis
    else
     if (TItbis > 0) and (QFacturaporc_desc_gral.Value > 0) then
      QFacturaFAC_ITBIS.Value := TGralItbis
    else
      QFacturaFAC_ITBIS.value   := 0;

      }

     if (TItbis > 0) and (TItbis2 = 0) then
      QFacturaFAC_ITBIS.Value := TItbis
    else
     if (TItbis > 0) and (TItbis2 > 0) then
      QFacturaFAC_ITBIS.Value := TItbis2
    else 
      QFacturaFAC_ITBIS.value   := 0;



    if QFacturaporc_desc_gral.Value > 0 then
    QFacturaTdesc_gral_sin_Itbis.Value := (sSubTotal)*(QFacturaporc_desc_gral.Value/100) else
    QFacturaTdesc_gral_sin_Itbis.Value := 0;

    //TDesc :=  (QFacturaSubTotal.Value)*(QFacturaporc_desc_gral.Value/100);

    vTotal_x_DescGral_sin_Itbis := QFacturaTdesc_gral_sin_Itbis.Value;

    QFacturaFAC_DESCUENTO.value := TDesc;  ////strtofloat(format('%10.3f',[TDesc]));


    QFacturaFAC_COMISION.Value  := TComision;
    QFacturaFAC_OTROS.Value := MontoFijo + ((total * PorcFijo)/100);
    QFacturafac_selectivo_ad.Value := SelectivoAd;
    QFacturafac_selectivo_con.Value := SelectivoCon;
    QFacturaTdesc_gral.value :=vTotal_x_DescGral_sin_Itbis;
    if ckdomicilio.Checked then
      par_monto_domicilio := dm.QParametrospar_monto_domicilio.Value
    else
      par_monto_domicilio :=0;

    QFacturaFAC_TOTAL.value := sSubTotal+
                                    QFacturaFAC_ITBIS.value+
                                    QFacturaFAC_OTROS.Value+
                                    par_monto_domicilio+
                                    QFacturafac_selectivo_con.Value+
                                    QFacturafac_selectivo_ad.Value-
                                    vTotal_x_DescGral_sin_Itbis-
                                    TDesc;

   if (dm.QParametrospar_fac_preimpresa.Value = 'True') and
   (dm.QParametrosservicio_construccion.AsBoolean = True) and
   (DetalleTieneServicioConstruccion) then
  begin
  if QFactura.State in [dsEdit, dsInsert] then
  begin
    if HayServicioConstruccionConItbis then
    begin                             

      QFacturaSubTotal.Value := sSubTotal;
      QFacturaFAC_SERVICIOS.Value := (QFacturaSubTotal.Value * 0.10);
      QFacturaFAC_ITBIS.Value := QFacturaFAC_SERVICIOS.Value * 0.18;

      QFacturaFAC_TOTAL.Value :=
          sSubTotal +
          QFacturaFAC_ITBIS.Value +
          QFacturaFAC_OTROS.Value +
          par_monto_domicilio +
          QFacturafac_selectivo_con.Value +
          QFacturafac_selectivo_ad.Value -
          vTotal_x_DescGral_sin_Itbis -
          TDesc;
    end
    else
    begin
      // l?gica vieja para servicio sin ITBIS
      QFacturaSubTotal.Value := (QFacturaFAC_TOTAL.Value * 0.88231827112);
      QFacturaFAC_SERVICIOS.Value := (QFacturaFAC_TOTAL.Value * 0.10);
      QFacturaFAC_ITBIS.Value := ((QFacturaSubTotal.Value +
                                   QFacturaFAC_SERVICIOS.Value +
                                   QFacturaRecargo.Value) * 0.10 * 0.18);
    end;
  end;
end;


    {
    //---[Agregador por Manuel Titin  , Linea agregada para realizar el calculo del descuento gral]--
    if (QFacturaporc_desc_gral.value > 0) then begin //--[0]--
      vTotal_x_DescGral := ((vSubTotaltmp_con_Itbis-QFacturaFAC_DESCUENTO.Value) * (QFacturaporc_desc_gral.value /100.0));

      QFacturaTdesc_gral.value :=vTotal_x_DescGral;

      if (vTotal_x_DescGral > 0) then
       begin
         ValorTmp :=0;
         if QFacturaFAC_ITBIS.value > 0 then
           ValorTmp := (vTotal_x_DescGral / ((dm.QParametrosPAR_ITBIS.value /100)+1));
         ValorTmp := (vTotal_x_DescGral - ValorTmp);

         if QFacturaFAC_ITBIS.value > 0 then
           QFacturaFAC_ITBIS.value :=  QFacturaFAC_ITBIS.value -  ValorTmp;
       end;

      TItbis :=0;
      if (QFacturaFAC_ITBIS.value > 0) then
        vTotal_x_DescGral_sin_Itbis := vTotal_x_DescGral / ((dm.QParametrosPAR_ITBIS.value /100)+1)
      else vTotal_x_DescGral_sin_Itbis := vTotal_x_DescGral;
    end; //--[0]--


    //---[Agregador por Manuel Titin]--
    QFacturaFAC_DESCUENTO.value := TDesc;  ////strtofloat(format('%10.3f',[TDesc]));
    QFacturaFAC_COMISION.Value  := strtofloat(format('%10.2f',[TComision]));
    QFacturaFAC_OTROS.Value := MontoFijo + ((total * PorcFijo)/100);
    QFacturafac_selectivo_ad.Value := SelectivoAd;
    QFacturafac_selectivo_con.Value := SelectivoCon;
    QFacturaTdesc_gral.value :=vTotal_x_DescGral;
    if ckdomicilio.Checked then
      par_monto_domicilio := dm.QParametrospar_monto_domicilio.Value
    else
      par_monto_domicilio :=0;

    QFacturaFAC_TOTAL.value := strtoFloat(format('%10.4f',[(sSubTotal-(TDesc + vTotal_x_DescGral_sin_Itbis))+
                                    QFacturaFAC_ITBIS.value+
                                    QFacturaFAC_OTROS.Value+
                                    par_monto_domicilio+
                                    QFacturafac_selectivo_con.Value+
                                    QFacturafac_selectivo_ad.Value])); }

    end;

    QDetalle.GotoBookmark(Puntero);
    QDetalle.enablecontrols;

    //**********[fin Control calculo total ]********************************************

    if dm.QContabpar_codifica_venta_familia.Value <> 'True' then
    begin //--[3]--
      //Insertando cuenta contable de ingreso
      if QCuentas.Locate('cat_cuenta',CtaTipoFactura,[]) then
      begin
        QCuentas.Edit;
        QCuentasdet_monto.Value := (QFacturaFAC_TOTAL.Value - QFacturaFAC_ITBIS.Value) + QFacturaFAC_DESCUENTO.Value + QFacturaTdesc_gral.Value;
        QCuentas.Post;
      end
      else
      begin
        QCuentas.Append;
        QCuentascat_cuenta.Value := CtaTipoFactura;
        QCuentasdet_monto.Value  := (QFacturaFAC_TOTAL.Value - QFacturaFAC_ITBIS.Value) + QFacturaFAC_DESCUENTO.Value + QFacturaTdesc_gral.Value;
        QCuentasdet_origen.Value := 'Credito';
        QCuentas.Post;
      end;

      //Insertando cuenta contable de descuento
      if QFacturaFAC_DESCUENTO.Value > 0 then begin
      if QCuentas.Locate('cat_cuenta',dm.QContabPAR_CTADESC.Value ,[]) then
      begin
        QCuentas.Edit;
        QCuentasdet_monto.Value := QFacturaFAC_DESCUENTO.Value + QFacturaTdesc_gral.Value;
        QCuentas.Post;
      end
      else
      begin
        QCuentas.Append;
        QCuentascat_cuenta.Value := dm.QContabPAR_CTADESC.Value;
        QCuentasdet_monto.Value  := QFacturaFAC_DESCUENTO.Value + QFacturaTdesc_gral.Value;
        QCuentasdet_origen.Value := 'Debito';
        QCuentas.Post;
      end;
      end;

      if QFacturaTdesc_gral.Value > 0 then begin
      if QCuentas.Locate('cat_cuenta',dm.QContabPAR_CTADESC.Value ,[]) then
      begin
        QCuentas.Edit;
        QCuentasdet_monto.Value := QFacturaTdesc_gral.Value;
        QCuentas.Post;
      end
      else
      begin
        QCuentas.Append;
        QCuentascat_cuenta.Value := dm.QContabPAR_CTADESC.Value;
        QCuentasdet_monto.Value  := QFacturaTdesc_gral.Value;
        QCuentasdet_origen.Value := 'Debito';
        QCuentas.Post;
      end;
      end;

      //Insertando cuenta contable de inventario
      if QCuentas.Locate('cat_cuenta',dm.QContabPAR_CTAINVEnT.Value ,[]) then
      begin
        QCuentas.Edit;
        QCuentasdet_monto.Value := TotalCosto;
        QCuentas.Post;
      end
      else
      begin
        QCuentas.Append;
        QCuentascat_cuenta.Value := dm.QContabPAR_CTAINVEnT.Value;
        QCuentasdet_monto.Value  := TotalCosto;
        QCuentasdet_origen.Value := 'Credito';
        QCuentas.Post;
      end;

      //Insertando cuenta contable de costo
      if QCuentas.Locate('cat_cuenta',dm.QContabPAR_CTACOSTO.Value ,[]) then
      begin
        QCuentas.Edit;
        QCuentasdet_monto.Value := TotalCosto;
        QCuentas.Post;
      end
      else
      begin
        QCuentas.Append;
        QCuentascat_cuenta.Value := dm.QContabPAR_CTACOSTO.Value;
        QCuentasdet_monto.Value  := TotalCosto;
        QCuentasdet_origen.Value := 'Debito';
        QCuentas.Post;
      end;

      //Insertando cuenta contable de itbis
         if QCuentas.Locate('cat_cuenta',dm.QContabPAR_CTAITBIS.Value,[]) then
         begin
          QCuentas.Edit;
          QCuentasdet_monto.Value := QFacturaFAC_ITBIS.Value;
          QCuentas.Post;
         end
         else
         begin
          QCuentas.Append;
          QCuentascat_cuenta.Value := dm.QContabPAR_CTAITBIS.Value;
          QCuentasdet_monto.Value  := QFacturaFAC_ITBIS.Value;
          QCuentasdet_origen.Value := 'Credito';
          QCuentas.Post;
        end;
    end; //--[3]--

    if (actbalance = 'True') and (Trim(CtaCliente) <> '') then
    begin
      if QCuentas.Locate('cat_cuenta',CtaCaja,[]) then QCuentas.Delete;
      if QCuentas.Locate('cat_cuenta',CtaCliente,[]) then
      begin
        QCuentas.Edit;
        QCuentasdet_monto.Value := QFacturaFAC_TOTAL.Value;
        QCuentas.Post;
      end
      else
      begin
        QCuentas.Append;
        QCuentascat_cuenta.Value := CtaCliente;
        QCuentasdet_monto.Value  := QFacturaFAC_TOTAL.Value;
        QCuentasdet_origen.Value := 'Debito';
        QCuentas.Post;
      end;
    end
    else
    begin
      if Trim(CtaCaja) <> '' then
      begin
        if QCuentas.Locate('cat_cuenta',CtaCliente,[]) then QCuentas.Delete;
        if not QCuentas.Locate('cat_cuenta',CtaCaja,[]) then
        begin
          QCuentas.Append;
          QCuentascat_cuenta.Value := CtaCaja;
          QCuentasdet_origen.Value := 'Debito';
          QCuentasdet_monto.Value  := QFacturaFAC_TOTAL.Value;
          QCuentas.Post;
        end
        else
        begin
          QCuentas.Edit;
          QCuentasdet_origen.Value := 'Debito';
          QCuentasdet_monto.Value  := QFacturaFAC_TOTAL.Value;
          QCuentas.Post;
        end;
      end;
    end;
     TotalizarCuentas;
  end;  //--[0]--
end;

function TfrmFactura.DetalleTieneServicioConstruccion: Boolean;
var
  bm: TBookmark;
begin
  Result := False;

  if (QDetalle = nil) or (not QDetalle.Active) or (QDetalle.RecordCount = 0) then
    Exit;

  QDetalle.DisableControls;
  bm := QDetalle.GetBookmark;
  try
    QDetalle.First;
    while not QDetalle.Eof do
    begin
      // Campo booleano del detalle
      if QDetalle.FieldByName('det_servicio_construccion').AsBoolean then
      begin
        Result := True;
        Exit;
      end;
      QDetalle.Next;
    end;
  finally
    if QDetalle.BookmarkValid(bm) then
      QDetalle.GotoBookmark(bm);
    QDetalle.FreeBookmark(bm);
    QDetalle.EnableControls;
  end;
end;

procedure TfrmFactura.QDetalleAfterPost(DataSet: TDataSet);
begin
  if not QDetallePRO_CODIGO.isnull then
  Totalizar;

  IF QDetalle.RecordCount > 0 THEN
    DBLookupComboBox2.Enabled := False;

{
IF QFactura.State IN [DSEDIT, DSINSERT] then BEGIN
if not ((dm.QParametrospar_formato_preimpreso.Text = 'Sarita & Asociados') AND
          (DM.QParametrospar_fac_preimpresa.Value = 'True')) then
QFacturaFAC_ITBIS.Value := QFacturaFAC_ITBIS.Value;

if (ckItbis.Checked)  then begin
QFacturaFAC_TOTAL.Value := QFacturaSubTotal.Value -  QFacturaFAC_DESCUENTO.Value+
QFacturaFAC_ITBIS.Value + QFacturaRecargo.Value + QFacturaFAC_PROPINA.Value-QFacturaTdesc_gral_sin_Itbis.Value
end
ELSE
QFacturaFAC_TOTAL.Value := QFacturaSubTotal.Value -  QFacturaTdesc_gral_sin_Itbis.Value - QFacturaFAC_DESCUENTO.Value+
QFacturaRecargo.Value + QFacturaFAC_PROPINA.Value;

end; }
end;

procedure TfrmFactura.QDetalleBeforeDelete(DataSet: TDataSet);
begin
  //abort;
     if not QFacturaFAC_NUMERO.IsNull then
       idFacturaTmp:=QFacturaFAC_NUMERO.value;
    //aCTUALIZA eNVIO
  with dm.adoMultiUso do begin
    close;
    Sql.clear();
    Sql.add('Delete From Envio Where fac_numero = :Fac');
    Parameters.parambyname('fac').Value :=  QFacturaFAC_NUMERO.Value;
    ExecSQL;
  //Procedimeinto ELIMINAR combos en tablas detalle de combos
    close;
    SQL.Clear;
    SQL.Add('DELETE FROM DET_FACTURA_COMBOS WHERE EMP_CODIGO = :EMP AND SUC_CODIGO = :SUC');
    SQL.Add('AND FAC_NUMERO = :FAC AND TFA_CODIGO = :TFA AND FAC_FORMA = :FOR AND PRO_CODIGO = :PRO');
    Parameters.parambyname('emp').Value := QFacturaEMP_CODIGO.value;
    Parameters.parambyname('suc').Value := QFacturaSUC_CODIGO.Value;
    Parameters.parambyname('for').Value := QFacturaFAC_FORMA.value;
    Parameters.parambyname('tfa').Value := QFacturaTFA_CODIGO.Value;
    Parameters.parambyname('fac').Value := QFacturaFAC_NUMERO.value;
    Parameters.parambyname('pro').Value := QDetallePRO_CODIGO.value;
    ExecSQL;
    end;


end;

procedure TfrmFactura.btPrecioClick(Sender: TObject);
begin
 if (not QDetallePRO_CODIGO.isnull) and (QDetalleDET_OFERTA.Value = 'N') then
  begin
    application.createform(tfrmPrecios, frmPrecios);
    frmPrecios.edProducto.text := QDetallePRO_NOMBRE.value;
    if dm.QParametrospar_inv_unidad_medida.Value <> 'True' then
    begin
      frmPrecios.TabSheet2.Destroy;
      //ACTULIZA PRECIO ERRONEOS
      qVerPrecProd.Close;
      qVerPrecProd.Parameters.ParamByName('EMP').Value := QFacturaEMP_CODIGO.Value;
      qVerPrecProd.Parameters.ParamByName('PRO').Value := QDetallePRO_CODIGO.Value;
      qVerPrecProd.ExecSQL;


      dm.query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select pro_precio1, pro_precio2,');
      dm.Query1.sql.add('pro_precio3, pro_precio4 ');
      dm.Query1.sql.add('from productos ');
      dm.Query1.sql.add('where emp_codigo = :emp ');
      dm.Query1.sql.add('and pro_Codigo = :prod');
      dm.query1.Parameters.parambyname('emp').Value  := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.query1.Parameters.parambyname('prod').Value := QDetallePRO_CODIGO.value;
      dm.query1.open;
      frmPrecios.edPrecio1.text  := format('%n',[dm.Query1.fieldbyname('pro_precio1').asfloat]);
      frmPrecios.edPrecio2.text  := format('%n',[dm.Query1.fieldbyname('pro_precio2').asfloat]);
      frmPrecios.edPrecio3.text  := format('%n',[dm.Query1.fieldbyname('pro_precio3').asfloat]);
      frmPrecios.edPrecio4.text  := format('%n',[dm.Query1.fieldbyname('pro_precio4').asfloat]);
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
      frmPrecios.QProductos.Close;
      frmPrecios.QProductos.Parameters.ParamByName('prod').Value := QDetallePRO_CODIGO.Value;
      frmPrecios.QProductos.Open;

      frmPrecios.QUnidades.Close;
      frmPrecios.QUnidades.Parameters.ParamByName('emp_codigo').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      frmPrecios.QUnidades.Parameters.ParamByName('pro_codigo').Value := QDetallePRO_CODIGO.Value;
      //frmPrecios.QUnidades.Parameters.ParamByName('uni').Value        := QDetalleUnidadID.Value;
      frmPrecios.QUnidades.Open;

      frmPrecios.ActiveControl := frmPrecios.gunidades;
      frmPrecios.ShowModal;
      if frmPrecios.acepto = 1 then
      begin
        QDetalle.edit;
        if actbalance <> 'True' then
          QDetalleDET_PRECIO.value := frmPrecios.vl_precio
        else
          QDetalleDET_PRECIO.value := frmPrecios.QUnidadesCredito.Value;
        QDetalle.post;
      end;
    end;
    frmPrecios.Release;
  end;
  PageControl1.ActivePageIndex := 0;
  Grid.setfocus;       
end;

procedure TfrmFactura.btNotaClick(Sender: TObject);
begin
  application.createform(tfrmNota, frmNota);
  frmNota.DBMemo1.DataSource := frmFactura.dsFactura;
  frmNota.DBMemo1.DataField := 'FAC_NOTA';
  frmNota.showmodal;
  frmNota.release;
end;

procedure TfrmFactura.btLimpiarClick(Sender: TObject);
var I :integer;
begin
  if messagedlg('DESEA CANCELAR LA FACTURA?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    DevolverExistencia;
    QDetalle.DisableControls;
    QDetalle.close;
    QFactura.DisableControls;
    QFactura.close;
    QFactura.Parameters.ParamByName('emp').Value    := DM.vp_cia;
    QFactura.Parameters.ParamByName('tipo').Value   := -1;
    QFactura.Parameters.ParamByName('forma').Value   := 'A';
    QFactura.Parameters.ParamByName('numero').Value := -1;
    QFactura.Parameters.ParamByName('suc').Value := -1;
    QFactura.open;
    QFactura.EnableControls;
    QFactura.insert;
    vl_accion := 1;
    QDetalle.EnableControls;
    QDetalle.Open;
    if dm.QParametrosPAR_FACBAJARLINEA.Value <> 'True' then
       edTipo.setfocus;
  end
  else
  begin
    PageControl1.ActivePageIndex := 0;
    Grid.setfocus;
  end;
end;

function TfrmFactura.ValidarENCFDisponible(
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
      AMsg := 'La secuencia est? vencida.';
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

  // Hay secuencia v?lida y disponible (sin reservar)
  ASiguienteCorrelativo := siguiente;
  Result := True;
end;


procedure TfrmFactura.btGrabarClick(Sender: TObject);
var
  I, a, rec, fila : integer;
  TipoMov, Abono, rnc, nombre : String;
  valido : boolean;
   Servicio: FacturaElectronicaService;
   resultado: WideString;
   ok: Boolean;
   msg: string;
   prox: Int64; // o Int64 si usas valores grandes

  empRNC: string;
  FacturaTieneITBIS, existeProdConITBIS: Boolean;

begin
if  btGrabar.Enabled = True then begin

if QFacturaCAJ_CODIGO.IsNull then
     begin
      ShowMessage('DEBES INDICAR UNA CAJA VALIDA......');
      dbCaja.SetFocus;
      Exit;
     end;

 if Producto_sin_Serializar = True then
      begin
      ShowMessage('HAY PRODUCTOS SERIALIZADOS SIN SERIALIZAR, Verifique...');
      Abort;
      end;

with QVerificaNCF do begin
  Close;
  Parameters.ParamByName('emp_codigo').Value := dm.vp_cia;
  Parameters.ParamByName('tip_codigo').Value := QFacturatip_codigo.Value;
  Open;
  if not IsEmpty then begin
    if QFacturafac_rnc.Value = '' then begin
    ShowMessage('Debes indicar el RNC para generar esta factura....');
    DBEdit14.SetFocus;
    Exit;
    end;
    end;
  end;

  if (DM.QParametrosPAR_FE_DetenerFacturacion.Value and dm.QParametrosUsa_FacturacionElectronica.Value) then
        begin
          ok := ValidarENCFDisponible(
                        dm.vp_cia,
                        QFacturatip_codigo.Value,
                        msg, prox);
          if (not ok) then
          begin
            ShowMessage('No hay comprobantes fiscales disponibles para esta factura.');
            Exit;
          end;
        end;


If vtfa_espcliente = 'True' then begin
if edCliente.Text = '' then begin
ShowMessage('DEBES ESPECIFICAR EL CLIENTE....');
Exit;
end;
end;

if ((QFacturafac_rnc.Value = '') and (QFacturaFAC_TOTAL.Value >= 250000)) then begin
    ShowMessage('Debes indicar el RNC para generar esta factura,'+char(13)+
                'Ya que esta factura sobrepasa los RD$50,000.00');
DBEdit14.SetFocus;
Exit;
end;


if (Trim(QFacturafac_rnc.Text)<>'') and (QFacturatip_codigo.Value <> 1) then begin
    if not ((Length(QFacturafac_rnc.Value) = 11) or (Length(QFacturafac_rnc.Value) = 9))  then begin
      ShowMessage('El RNC contiene '+IntToStr(Length(QFacturafac_rnc.Value))+' digitos,'+Char(13)+
                  'Solo se permite 9 o 11 digitos numericos......');
      DBEdit14.SetFocus;
      Exit;
    end;
  end;

  valido := true;
  rnc := DBEdit14.Text;
  rnc := Trim(rnc);
  for a := 1 to length(rnc) do
  begin
    if (copy(rnc,a,1) <> '0') and (copy(rnc,a,1) <> '1') and
    (copy(rnc,a,1) <> '2') and (copy(rnc,a,1) <> '3') and
    (copy(rnc,a,1) <> '4') and (copy(rnc,a,1) <> '5') and
    (copy(rnc,a,1) <> '6') and (copy(rnc,a,1) <> '7') and
    (copy(rnc,a,1) <> '8') and (copy(rnc,a,1) <> '9') then
    begin
      valido := false;
      break;
    end;
  end;

  if ((QFacturafac_caja.IsNull) or  (QFacturafac_caja.Value = 0) )  then
  begin
    MessageDlg('DEBES DE LLENAR EL NUMERO DE LA CAJA'+#13+#10+'Y PRESIONAR ENTER',mtError,[mbok],0);
    dbCaja.SetFocus();
    exit;
  end;

     if not (QFactura.State in [dsEdit, dsInsert]) then
    QFactura.Edit;

  //verificando si el cierre se hizo para esta fecha
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select cie_fecha from cierre');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and cie_fecha = :fec');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('fec').Value    := QFacturaFAC_FECHA.Value;
  dm.Query1.Open;
  if (dm.Query1.RecordCount > 0) and (actbalance = 'False') then
  begin
    MessageDlg('LA FACTURA NO PUEDE REALIZARSE, DEBIDO A QUE ESTE'+#13+
               'DIA FUE CERRADO.',mtError,[mbok],0);
    PageControl1.ActivePageIndex := 0;
    Grid.setfocus;
    Exit;
  end
  else if (QFacturaFAC_TOTAL.Value = 0) and (dm.QParametrospar_facturarcero.Value <> 'True') then
  begin
    showmessage('LA FACTURA NO PUEDE ESTAR EN CERO');
    PageControl1.ActivePageIndex := 0;
    Grid.setfocus;
    Exit;
  end
  else if trim(edTipo.text) = '' then
  begin
    showmessage('DEBE ESPECIFICAR EL TIPO DE FACTURA');
    edTipo.setfocus;
    Exit;
  end
  else if trim(DBEdit11.text) = '' then
  begin
    showmessage('DEBE ESPECIFICAR EL NOMBRE DEL CLIENTE');
    DBEdit11.setfocus;
    Exit;
  end
  else
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select distinct a.ncf_fijo from Alarma_Comprobantes a,');
    dm.Query1.SQL.Add('ncf n, TipoNCF tn  where n.emp_codigo = a.emp_codigo and n.ncf_fijo = a.ncf_fijo');
    dm.Query1.SQL.Add('and tn.tdo_codigo=n.tdo_codigo and a.ncf_cantidad = (n.NCF_Final - n.NCF_Secuencia)');
    dm.Query1.SQL.Add('and a.emp_codigo = :emp AND n.detenergeneracioncomprobante=1');
    dm.Query1.SQL.Add('and tn.tip_codigo = :tip_codigo and n.suc_codigo = :suc ');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('suc').Value := QFacturaSUC_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('tip_codigo').Value := QFacturatip_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      MessageDlg('NO ES POSIBLE REALIZAR LA FACTURA. LA SECUENCIA DEL NCF LLEGO AL FINAL.',mtError,[mbok],0);
     // edTipo.SetFocus;
      Exit;
    end else if (dm.QUsuariosusu_factura_cuentas.Value = 'True') and (lbBAL.Caption <> '0.00') then
    begin
    MessageDlg('LAS CUENTAS CONTABLES DE ESTA FACTURA'+#13+
               'NO ESTAN CUADRADAS',mtError,[mbok],0);
    PageControl1.ActivePageIndex := 1;
    GridCuentas.SetFocus;
    Exit;
  end
  else if (((not valido) and (rnc <> '')) or ((length(rnc) < 9) and (SelRNC = 'True'))) and
           (QFacturatip_codigo.Value > 1) then
  begin
    MessageDlg('DEBE DIGITAR UN RNC VALIDO, SIN GUIONES U OTROS SIGNOS',mtError,[mbok],0);
    DBEdit14.setfocus;
    Exit;
  end
  else
  begin
        // ================= VALIDACI?N ITBIS GENERAL SEG?N RNC EMPRESA =================
        // 1) Solo aplica a empresas con estos RNC
        empRNC := '';
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select emp_rnc from empresas');
        dm.Query1.SQL.Add('where emp_codigo = :emp');
        dm.Query1.Parameters.ParamByName('emp').Value := QFacturaEMP_CODIGO.Value;
        dm.Query1.Open;
        if not dm.Query1.IsEmpty then
          empRNC := Trim(dm.Query1.FieldByName('emp_rnc').AsString);

     {   // Aqu? ajusta el campo del total de ITBIS de la factura:
        // Ejemplo: QFacturaFAC_ITBIS.Value, QFacturaFAC_TOTALITBIS.Value, etc.
        FacturaTieneITBIS := False;
        if (not QFactura.State in [dsInsert, dsEdit]) then
          QFactura.Edit;
        // ?? CAMBIA ESTE CAMPO POR TU CAMPO REAL DE TOTAL ITBIS
        FacturaTieneITBIS := (Assigned(QFacturaFAC_ITBIS) and (QFacturaFAC_ITBIS.Value > 0));
        // Si tu campo se llama diferente, por ejemplo:
        // FacturaTieneITBIS := (QFacturaFAC_TOTALITBIS.Value > 0);

        if (FacturaTieneITBIS)
           and ((empRNC = '105081105') or (empRNC = '131861717')) then
        begin
          existeProdConITBIS := False;

          QDetalle.DisableControls;
          try
            QDetalle.First;
            while not QDetalle.Eof do
            begin
              dm.adoMultiUso.Close;
              dm.adoMultiUso.SQL.Clear;
              dm.adoMultiUso.SQL.Add('select isnull(pro_montoitbis,0) as pro_montoitbis');
              dm.adoMultiUso.SQL.Add('from productos');
              dm.adoMultiUso.SQL.Add('where emp_codigo = :emp');
              dm.adoMultiUso.SQL.Add('and pro_codigo = :pro');
              dm.adoMultiUso.Parameters.ParamByName('emp').Value := QFacturaEMP_CODIGO.Value;
              dm.adoMultiUso.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value; // ajusta nombre si es distinto
              dm.adoMultiUso.Open;

              if (not dm.adoMultiUso.IsEmpty) and
                 (dm.adoMultiUso.FieldByName('pro_montoitbis').AsFloat > 0) then
              begin
                existeProdConITBIS := True;
                Break; // ya encontramos uno
              end;

              QDetalle.Next;
            end;
          finally
            QDetalle.EnableControls;
          end;

          // Regla final:
          // Si la factura tiene ITBIS general, pero NING?N producto tiene pro_montoitbis > 0 -> error
          if not existeProdConITBIS then
          begin
            MessageDlg(
              'Esta empresa (' + empRNC + ') solo puede facturar ITBIS' + #13 +
              'si al menos un producto tiene ITBIS configurado en el maestro (pro_montoitbis > 0).' + #13#13 +
              'Actualmente la factura tiene ITBIS general,' + #13 +
              'pero ninguno de los productos tiene ITBIS configurado.' + #13#13 +
              'Corrija los productos o quite el ITBIS de la factura.',
              mtError, [mbOK], 0);
            Exit;
          end;
        end;
    // ================= FIN VALIDACI?N ITBIS GENERAL SEG?N RNC EMPRESA =================
        }
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tfa_nombre from tiposfactura');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tfa_codigo = :tfa');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('tfa').Value := StrToInt(trim(edTipo.Text));
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
    begin
      MessageDlg('ESTE TIPO DE FACTURA NO EXISTE',mtError,[mbok],0);
     // edTipo.SetFocus;
      Exit;
    end;
      if QFacturaCON_NUMERO.Value = 0 then begin
      if QDetalle.State <> dsBrowse then
      begin
        QDetalle.Edit;
        QDetalle.Post;
      end;
      end;
      QFactura.Edit;
      QFacturafac_abono.Value := 0;
      QFactura.Post;
     // Totaliza := False;

     if QFacturaCON_NUMERO.Value = 0 then begin
       QDetalle.Edit;
      Totaliza := True;
      QDetalle.Post;
      end;
      //Totaliza := False;

      //verificando el tipo de factura
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select tfa_espcliente, tfa_selcondi, tfa_traerformapago,');
      dm.Query1.sql.add('tfa_actbalance, tmo_codigo');
      dm.Query1.sql.add('from tiposfactura');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and tfa_codigo = :tipo');
      dm.Query1.Parameters.parambyname('emp').Value  := dm.vp_cia;
      dm.Query1.Parameters.parambyname('tipo').Value := StrToInt(edTipo.text);
      dm.Query1.open;
      if (dm.Query1.fieldbyname('tfa_espcliente').asstring = 'True')
      and (QFacturaCLI_CODIGO.IsNull) then
      begin
        showmessage('DEBE ESPECIFICAR EL CLIENTE');
        edCliente.setfocus;
        Exit;
      end
      else //if (dm.Query1.fieldbyname('tfa_selcondi').asstring = 'True') and
       if (edTipo.text= '2') and
       ((QFacturaCPA_CODIGO.isnull) or (QFacturaCPA_CODIGO.Value = 0)) then
      begin
        showmessage('DEBE ESPECIFICAR LAS CONDICIONES DE PAGO');
        dbCondi.setfocus;
        Exit;
      end
     else if (QFacturaVEN_CODIGO.IsNull) or (QFacturaVEN_CODIGO.Value = 0)
      or (tVendedor.Text = '') then
      begin
          showmessage('DEBE ESPECIFICAR EL VENDEDOR');
        dbVendedor.setfocus;
        Exit;
      end
      else
      begin
         if not (QFactura.State in [dsEdit, dsInsert]) then
          QFactura.Edit;

         QFacturaTFA_CODIGO.Value := StrToInt(Trim(edTipo.Text));
          frmFormaPagoFac.QNota.Close;
          frmFormaPagoFac.QNota.Open;
          if not frmFormaPagoFac.QFormaPago.Active then
          begin
            frmFormaPagoFac.QFormaPago.close;
            frmFormaPagoFac.QFormaPago.Parameters.ParamByName('emp').Value    := dm.QEmpresasEMP_CODIGO.value;
            frmFormaPagoFac.QFormaPago.Parameters.ParamByName('tipo').Value   := -1;
            frmFormaPagoFac.QFormaPago.Parameters.ParamByName('forma').Value   := 'A';
            frmFormaPagoFac.QFormaPago.Parameters.ParamByName('numero').Value := -1;
            frmFormaPagoFac.QFormaPago.Parameters.ParamByName('suc').Value := -1;
            frmFormaPagoFac.QFormaPago.open;
          end;

          if frmFormaPagoFac.QFormaPago.RecordCount > 0 then
          begin
            while 1 = 1 do
            begin
              if frmFormaPagoFac.QFormaPago.RecordCount > 0 then
                 frmFormaPagoFac.QFormaPago.Delete
              else
                break;
            end;
          end;

          frmFormaPagoFac.Inserta := True;
          //frmFormaPagoFac.QNota.Close;
          //frmFormaPagoFac.QNota.Open;

          TraerFormaPago := 'False';
          CodMov := 0;

          try
            TraerFormaPago := dm.Query1.FieldByName('tfa_traerformapago').AsString;
          except
            TraerFormaPago := 'False';
          end;

          try
            CodMov := dm.Query1.FieldByName('tmo_codigo').AsInteger;
          except
            CodMov := 0;
          end;

          Facturar := True;

         { TraerFormaPago := dm.Query1.fieldbyname('tfa_traerformapago').asstring;
          CodMov := dm.Query1.fieldbyname('tmo_codigo').asinteger;
          Facturar := True;  }

          if TraerFormaPago = 'True' then
          begin
            dm.ADOSigma.Execute('update NotasCredito set ncr_montousado = ncr_monto where ncr_montousado > ncr_monto');
            frmFormaPagoFac.Pendiente := QFacturaFAC_TOTAL.value;
            frmFormaPagoFac.Total :=     QFacturaFAC_TOTAL.value;
            dm.adoMultiUso.Close;
            dm.adoMultiUso.SQL.Clear;
            dm.adoMultiUso.SQL.Add('select ncr_numero from notascredito');
            dm.adoMultiUso.SQL.Add('where emp_codigo = :emp');
            dm.adoMultiUso.SQL.Add('and cli_codigo = :cli');
            dm.adoMultiUso.SQL.Add('and ncr_status <>'+QuotedStr('ANU'));
            dm.adoMultiUso.SQL.Add('and ((ISNULL(ncr_monto,0)-ISNULL(ncr_montousado,0)))>0');
            dm.adoMultiUso.SQL.Add('and suc_codigo = :suc');
            dm.adoMultiUso.Parameters.ParamByName('emp').Value := QFacturaEMP_CODIGO.Value;
            dm.adoMultiUso.Parameters.ParamByName('cli').Value := QFacturaCLI_CODIGO.Value;
            dm.adoMultiUso.Parameters.ParamByName('suc').Value := QFacturaSUC_CODIGO.Value;
            dm.adoMultiUso.Open;
            if not dm.adoMultiUso.IsEmpty then begin
            dm.adoMultiUso.DisableControls;
            while not dm.adoMultiUso.Eof do
            begin
              //Actualiza Balance NC
              with qActBalNC do begin
                Close;
                Parameters.ParamByName('EMP').Value := QFacturaEMP_CODIGO.Value;
                Parameters.ParamByName('SUC').Value := QFacturaSUC_CODIGO.Value;
                Parameters.ParamByName('NC').Value  := dm.adoMultiUso.FieldByName('ncr_numero').AsInteger;
                ExecSQL;
              end;
              //Fin Actualiza Balance NC
              frmFormaPagoFac.QNota.Append;
              frmFormaPagoFac.QNotaNCR_NUMERO.Value := dm.adoMultiUso.FieldByName('ncr_numero').AsInteger;
              frmFormaPagoFac.QNotasuc_codigo.Value := QFacturaSUC_CODIGO.Value;
              frmFormaPagoFac.QNota.Post;

              dm.adoMultiUso.Next;
            end;
            dm.adoMultiUso.EnableControls;
            end;

            frmFormaPagoFac.Total := QFacturaFAC_TOTAL.value;
            frmFormaPagoFac.lbTotal.caption := FormatCurr('#,0.00',QFacturaFAC_TOTAL.value);
            Total := QFacturaFAC_TOTAL.value;

            frmFormaPagoFac.Total := QFacturaFAC_TOTAL.value;
            frmFormaPagoFac.creacuenta := false;
            frmFormaPagoFac.totalizar;

            if (frmFormaPagoFac.QFormaPago.RecordCount = 0) and
            (frmFormaPagoFac.QNota.RecordCount = 0) then
            begin
              if FPagoIni > 0 then
              begin
                Query1.Close;
                Query1.SQL.Clear;
                Query1.SQL.Add('select fpa_nombre from formaspago');
                Query1.SQL.Add('where emp_codigo = :emp');
                Query1.SQL.Add('and fpa_codigo = :fpa');
                Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
                Query1.Parameters.ParamByName('fpa').Value := FPagoIni;
                Query1.Open;

                frmFormaPagoFac.QFormaPago.Append;
//                frmFormaPagoFac.QFormaPagoFPA_CODIGO.Value := FPagoIni;
                frmFormaPagoFac.QFormaPagoFOR_DESCRIPCION.Value := Query1.FieldByName('fpa_nombre').AsString;
                frmFormaPagoFac.QFormaPagoFOR_MONTO.Value := QFacturaFAC_TOTAL.value;
                frmFormaPagoFac.QFormaPagoSUC_CODIGO.Value := QFacturaSUC_CODIGO.Value;
                frmFormaPagoFac.QFormaPago.Post;
              end;
            end;

            frmFormaPagoFac.creacuenta := true;
            frmFormaPagoFac.Inserta := False;
            frmFormaPagoFac.ShowModal;
            if frmFormaPagoFac.facturar = False then
            Exit;
            facturar := frmFormaPagoFac.facturar;
            QFacturaFAC_ABONO.value := QFacturaFAC_TOTAL.value;
            QFacturaFAC_STATUS.value := 'PAG';
            if Devuelta <> '' then
            QFacturaFAC_DEVUELTO.Value := StrToCurr(Devuelta);
          end;
          Abono := 'N';
          if facturar = True then
          begin
            if (Balance >= 0) and (actbalance = 'True') then
            begin
              if PermiteAbonar = 'True' then
              begin
                if MessageDlg('DESEA ABONARLE A ESTA FACTURA'+#13+
                            'EN ESTE MOMENTO',mtConfirmation,[mbyes,mbno],0) = mryes then
                begin
                  Abono := 'S';
                  Application.CreateForm(tfrmAbono, frmAbono);
                  frmAbono.QFormasPago.Parameters.ParamByName('emp').Value := dm.vp_cia;
                  frmAbono.QFormasPago.Parameters.ParamByName('numero').Value := -1;
                  frmAbono.QFormasPago.Parameters.ParamByName('suc').Value := QFacturaSUC_CODIGO.Value;
                  frmAbono.Pendiente := QFacturaFAC_TOTAL.Value;
                  frmAbono.ShowModal;

                  if frmAbono.QDetalle.Locate('cat_cuenta', CtaCliente,[]) then
                  begin
                    frmAbono.QDetalle.Edit;
                    frmAbono.QDetalleDET_MONTO.Value := StrToFloat(Format('%10.2f',[QFacturaFAC_ABONO.Value]));
                    frmAbono.QDetalle.Post;
                  end
                  else
                  begin
                    frmAbono.QDetalle.Append;
                    frmAbono.QDetalleCAT_CUENTA.Value := CtaCliente;
                    frmAbono.QDetalleDET_MONTO.Value := StrToFloat(Format('%10.2f',[QFacturaFAC_ABONO.Value]));
                    frmAbono.QDetalleDET_ORIGEN.Value := 'Credito';
                    frmAbono.QDetalleSUC_CODIGO.Value := QFacturaSUC_CODIGO.Value;
                    frmAbono.QDetalle.Post;
                  end;
                end;
              end
              else
                Abono := 'N';
            end;
          end;
            if (StrToFloat(Format('%10.2f',[QFacturaFAC_TOTAL.Value])) -
            StrToFloat(Format('%10.2f',[QFacturaFAC_ABONO.Value])) >
            StrToFloat(format('%10.2f',[Limite]))) and (actbalance = 'True')
            and (VerLimite = 'True') and (dm.QUsuariosusu_excede_limite.Value <> 'True') then
            begin
              MessageDlg('LO FACTURADO SOBREPASA EL CREDITO DISPONIBLE'+#13+
                       'DEL CLIENTE', mtError, [mbok],0);
              PageControl1.ActivePageIndex := 0;
              Grid.setfocus;
              Exit;
            end
            else
            begin

//conduce
{ --comentado para probar el procedure pr_graba_factura que se le incorporan
  --estos datos a partir del 2017 08 31
  if QFacturaCON_NUMERO.value > 0 then
     begin
       dm.Query1.Close;
       dm.Query1.SQL.Clear;
       dm.Query1.SQL.Add('update CONDUCE set ');
       dm.Query1.SQL.Add(' FAC_FORMA ='+QuotedStr(QFacturaFAC_FORMA.AsString));
       dm.Query1.SQL.Add(',TFA_CODIGO='+QuotedStr(QFacturaTFA_CODIGO.AsString));
       dm.Query1.SQL.Add(',FAC_NUMERO='+QuotedStr(QFacturaFAC_NUMERO.AsString));
       dm.Query1.SQL.Add(',CLI_CODIGO='+QuotedStr(QFacturaCLI_CODIGO.AsString));
       dm.Query1.SQL.Add('where emp_codigo = :emp');
       dm.Query1.SQL.Add('  and suc_codigo = :suc');
       dm.Query1.SQL.Add('  and con_numero = :num');
       dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
       dm.Query1.Parameters.ParamByName('suc').Value := QFacturaSUC_CODIGO.Value;
       dm.Query1.Parameters.ParamByName('num').Value := QFacturaCON_NUMERO.Value;
       dm.Query1.ExecSQL;
     end;  //}
//fin conduce

              if (QFacturaFAC_ABONO.Value > 0) and (abono = 'S') then
              begin
                dm.Query1.Close;
                dm.Query1.SQL.Clear;
                dm.Query1.SQL.Add('select isnull(max(rec_numero),0) as maximo');
                dm.Query1.SQL.Add('from recibos');
                dm.Query1.SQL.Add('where emp_codigo = :emp');
                dm.Query1.SQL.Add('and suc_codigo = :suc');
                dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
                dm.Query1.Parameters.ParamByName('suc').Value := QFacturaSUC_CODIGO.Value;
                dm.Query1.Open;
                rec := dm.Query1.FieldByName('maximo').AsInteger + 1;

                dm.Query1.Close;
                dm.Query1.SQL.Clear;
                dm.Query1.SQL.Add('insert into recibos (emp_Codigo, suc_codigo, rec_numero,');
                dm.Query1.SQL.Add('rec_tipo, rec_fecha, rec_concepto, rec_monto,');
                dm.Query1.SQL.Add('rec_descuento, cli_codigo, rec_status,');
                dm.Query1.SQL.Add('rec_nombre, ven_codigo, usu_codigo, caj_codigo, rec_caja, mon_codigo, rec_tasa)');
                dm.Query1.SQL.Add('values (:emp, :suc, :rec, '+#39+'C'+#39+', :fec, '+#39+'ABONO A FACTURA #'+QFacturaFAC_NUMERO.AsString+#39+', :mto,');
                dm.Query1.SQL.Add('0, :cli, '+#39+'EMI'+#39+', :nom, :ven, :usu, :caj, :caja, :mon, :tasa)');
                dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
                dm.Query1.Parameters.ParamByName('suc').Value  := QFacturaSUC_CODIGO.Value;
                dm.Query1.Parameters.ParamByName('rec').Value  := rec;
                dm.Query1.Parameters.ParamByName('fec').Value  := QFacturaFAC_FECHA.Value;
                dm.Query1.Parameters.ParamByName('mto').Value  := StrToFloat(Format('%10.2f',[QFacturaFAC_ABONO.Value]));
                dm.Query1.Parameters.ParamByName('cli').Value  := QFacturaCLI_CODIGO.Value;
                dm.Query1.Parameters.ParamByName('nom').Value  := QFacturaFAC_NOMBRE.Value;
                dm.Query1.Parameters.ParamByName('ven').Value  := QFacturaVEN_CODIGO.Value;
                dm.Query1.Parameters.ParamByName('usu').Value  := dm.Usuario;
                dm.Query1.Parameters.ParamByName('caj').Value  := Cajero;
                dm.Query1.Parameters.ParamByName('caja').Value := QFacturafac_caja.Value;
                dm.Query1.Parameters.ParamByName('mon').Value  := QFacturaMON_CODIGO.Value;
                dm.Query1.Parameters.ParamByName('tasa').Value := QFacturaFAC_TASA.Value;
                dm.Query1.ExecSQL;

                dm.Query1.close;
                dm.Query1.sql.clear;
                dm.Query1.sql.add('select tmo_siglas from tiposmov');
                dm.Query1.sql.add('where emp_codigo = :emp');
                dm.Query1.sql.add('and tmo_codigo = :tipo');
                dm.Query1.Parameters.parambyname('emp').Value  := dm.vp_cia;
                dm.Query1.Parameters.parambyname('tipo').Value := CodMov;
                dm.Query1.open;
                TipoMov := dm.Query1.FieldByName('tmo_siglas').asstring;

                dm.Query1.Close;
                dm.Query1.SQL.Clear;
                dm.Query1.SQL.Add('insert into det_recibo (emp_codigo, suc_codigo, rec_numero,');
                dm.Query1.SQL.Add('det_secuencia, det_tipo, det_numero, det_pendiente,');
                dm.Query1.SQL.Add('det_monto, fac_forma, tfa_codigo, det_fecha, mon_codigo, mon_sigla,');
                dm.Query1.SQL.Add('mon_tasa, det_descuento, det_totalitbis)');
                dm.Query1.SQL.Add('values (:emp, :suc, :rec, 1, :tip, :fac, :pen,');
                dm.Query1.SQL.Add(':mto, :for, :tfa, :fec, :mon, :sigla, :tasa,0,0)');
                dm.Query1.Parameters.ParamByName('emp').Value   := dm.vp_cia;
                dm.Query1.Parameters.ParamByName('suc').Value   := QFacturaSUC_CODIGO.Value;
                dm.Query1.Parameters.ParamByName('rec').Value   := rec;
                dm.Query1.Parameters.ParamByName('tip').Value   := TipoMov;
                dm.Query1.Parameters.ParamByName('fac').Value   := QFacturaFAC_NUMERO.Value;
                dm.Query1.Parameters.ParamByName('pen').Value   := QFacturaFAC_TOTAL.Value;
                dm.Query1.Parameters.ParamByName('mto').Value   := QFacturaFAC_ABONO.Value;
                dm.Query1.Parameters.ParamByName('for').Value   := QFacturaFAC_FORMA.Value;
                dm.Query1.Parameters.ParamByName('tfa').Value   := QFacturaTFA_CODIGO.Value;
                dm.Query1.Parameters.ParamByName('fec').Value   := QFacturaFAC_FECHA.Value;
                dm.Query1.Parameters.ParamByName('mon').Value   := QFacturaMON_CODIGO.Value;
                dm.Query1.Parameters.ParamByName('tasa').Value  := QFacturaFAC_TASA.Value;
                dm.Query1.Parameters.ParamByName('sigla').Value := 'RD$';
                dm.Query1.ExecSQL;

                frmAbono.Totaliza := False;
                frmAbono.QFormasPago.DisableControls;
                frmAbono.QFormasPago.First;
                while not frmAbono.QFormasPago.Eof do
                begin
                  frmAbono.QFormasPago.Edit;
                  frmAbono.QFormasPagoEMP_CODIGO.Value := dm.vp_cia;
                  frmAbono.QFormasPagoREC_NUMERO.Value := rec;
                  frmAbono.QFormasPagoSUC_CODIGO.Value := QFacturaSUC_CODIGO.Value;
                  if frmAbono.QFormasPagoFOR_MONTO.IsNull then frmAbono.QFormasPagoFOR_MONTO.Value := 0;
                  frmAbono.QFormasPago.Post;
                  frmAbono.QFormasPago.Next;
                end;
                frmAbono.Totaliza := True;
                frmAbono.QFormasPago.EnableControls;
                frmAbono.QFormasPago.UpdateBatch;

                frmAbono.QDetalle.DisableControls;
                frmAbono.QDetalle.First;
                a := 0;
                while not frmAbono.QDetalle.eof do
                begin
                  a := a + 1;
                  frmAbono.QDetalle.Edit;
                  frmAbono.QDetalleEMP_CODIGO.Value := dm.vp_cia;
                  frmAbono.QDetalleREC_NUMERO.Value := rec;
                  frmAbono.QDetalleDET_SECUENCIA.Value := a;
                  frmAbono.QDetalleSUC_CODIGO.Value := QFacturaSUC_CODIGO.Value;
                  frmAbono.QDetalle.Post;
                  frmAbono.QDetalle.Next;
                end;
                frmAbono.QDetalle.EnableControls;
                frmAbono.QDetalle.UpdateBatch;

                frmAbono.Release;
              end;

              Totaliza := False;

if vl_accion = 1 then begin
//Buscando Secuencia Factura_numero
    if dm.qparametrospar_numerofactura_tipo.Value = 'True' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select isnull(max(fac_numero),0) as maximo');
      dm.Query1.sql.add('from facturas');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and fac_forma = :forma');
      dm.Query1.sql.add('and suc_codigo = :suc');
      dm.Query1.sql.add('and tfa_codigo = :tipo');
      dm.Query1.Parameters.parambyname('emp').Value  := dm.vp_cia;
      dm.Query1.Parameters.parambyname('forma').Value := QFacturaFAC_FORMA.value;
      dm.Query1.Parameters.parambyname('suc').Value := QFacturaSUC_CODIGO.value;
      dm.Query1.Parameters.parambyname('tipo').Value := QFacturaTFA_CODIGO.value;
      dm.Query1.open;
      QFacturaFAC_NUMERO.value := dm.Query1.fieldbyname('maximo').asinteger+1;
    end
    else
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select isnull(max(fac_numero),0) as maximo');
      dm.Query1.sql.add('from facturas');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and fac_forma = :forma');
      dm.Query1.sql.add('and suc_codigo = :suc');
      dm.Query1.Parameters.parambyname('emp').Value  := dm.vp_cia;
      dm.Query1.Parameters.parambyname('forma').Value := QFacturaFAC_FORMA.value;
      dm.Query1.Parameters.parambyname('suc').Value := QFacturaSUC_CODIGO.value;
      dm.Query1.open;

      if not (QFactura.State in [dsEdit, dsInsert]) then
      QFactura.Edit;

      QFacturaFAC_NUMERO.value := dm.Query1.fieldbyname('maximo').asinteger+1;
    end;
    QFactura.Post;
    QFactura.UpdateBatch(arAll);
end;


      IF QFacturaFAC_NUMERO.Value > 0 THEN BEGIN
      a := 0;
      IF QSerie.Active THEN BEGIN
      QSerie.First;
      while not QSerie.eof do
      begin
      a := a + 1;
      if QSerieSER_SECUENCIA.IsNull then begin
      QSerie.edit;
      QSerieSER_SECUENCIA.value := a;
      QSerie.Post;
      end;
      QSerie.Edit;
      QSerieEMP_CODIGO.value := dm.vp_cia;
      QSerieFAC_NUMERO.value := QFacturaFAC_NUMERO.value;
      QSerieFAC_FORMA.value  := QFacturaFAC_FORMA.value;
      QSerieTFA_CODIGO.value := QFacturaTFA_CODIGO.Value;
      QSerieSUC_CODIGO.Value := QFacturaSUC_CODIGO.Value;
      QSerie.post;
      QSerie.next;
      end;
      QSerie.UpdateBatch;
      end;
      end;



              //Detalle de la factura
              QDetalle.DisableControls;
              QDetalle.first;
              a := 0;
              while not QDetalle.eof do
              begin
                a := a + 1;
                QDetalle.edit;
                QDetalleDET_SECUENCIA.value := a;
                QDetalleEMP_CODIGO.value := dm.vp_cia;
                QDetalleFAC_NUMERO.value := QFacturaFAC_NUMERO.value;
                QDetalleFAC_FORMA.value  := QFacturaFAC_FORMA.value;
                QDetalleTFA_CODIGO.value := QFacturaTFA_CODIGO.Value;
                QDetalleSUC_CODIGO.Value := QFacturaSUC_CODIGO.Value;
                QDetallealm_codigo.Value := QFacturaALM_CODIGO.Value;
                QDetalle.Post;
                if ((ConItbis = 'False') and (QDetalleDET_CONITBIS.Text = 'S')) then begin
                QDetalle.Edit;
                QDetalleDET_CONITBIS.Text := 'N';
                QDetalleDET_ITBIS.Value   := 0;
                QDetalle.Post;
                end;
                QDetalle.next;
              end;
              QDetalle.enableControls;
              QDetalle.UpdateBatch;


              CodificarCuentas;
              //Cuentas contables
              if QCuentas.RecordCount > 0 then begin
              QCuentas.DisableControls;
              QCuentas.first;
              a := 0;
              while not QCuentas.eof do
              begin
                a := a + 1;
                QCuentas.edit;
                QCuentasDET_SECUENCIA.value := a;
                QCuentasEMP_CODIGO.value := dm.vp_cia;
                QCuentasFAC_NUMERO.value := QFacturaFAC_NUMERO.value;
                QCuentasFAC_FORMA.value  := QFacturaFAC_FORMA.value;
                QCuentasTFA_CODIGO.value := strtoint(edTipo.text);
                QCuentasSUC_CODIGO.Value := QFacturaSUC_CODIGO.Value;
                QCuentas.post;
                QCuentas.next;
              end;
              QCuentas.enableControls;
              QCuentas.UpdateBatch;
              end;

              if vl_accion = 1 then begin
              //Procedimeinto que graba la factura
              dm.Query1.close;
              dm.Query1.sql.clear;
              dm.Query1.sql.add('exec pr_graba_factura :emp, :suc, :forma, :tipo, :numero');
              dm.Query1.Parameters.parambyname('emp').Value    := QFacturaEMP_CODIGO.value;
              dm.Query1.Parameters.parambyname('suc').Value    := QFacturaSUC_CODIGO.Value;
              dm.Query1.Parameters.parambyname('forma').Value   := QFacturaFAC_FORMA.value;
              dm.Query1.Parameters.parambyname('tipo').Value   := QFacturaTFA_CODIGO.Value;
              dm.Query1.Parameters.parambyname('numero').Value := QFacturaFAC_NUMERO.value;
              dm.Query1.ExecSQL;

              
              //Procedimiento que elimina la factura temporal
              dm.Query1.close;
              dm.Query1.sql.clear;
              dm.Query1.sql.add('exec pr_eliminar_facturatemporal :emp, :suc, :tipo, :numero');
              dm.Query1.Parameters.parambyname('emp').Value    := QFacturaEMP_CODIGO.value;
              dm.Query1.Parameters.parambyname('suc').Value    := QFacturaSUC_CODIGO.Value; 
              dm.Query1.Parameters.parambyname('tipo').Value   := QFacturaTFA_CODIGO.Value;
              dm.Query1.Parameters.parambyname('numero').Value := NumFacturaTemporal;
              dm.Query1.ExecSQL;

              end;

              if vl_accion = 2 then begin
              Totaliza := True;
              Totalizar;

              if not (QFactura.State in [dsEdit, dsInsert]) then
                QFactura.Edit;

              QFacturafac_hold.Text := 'False';
              QFactura.UpdateBatch(arAll);


              //Procedimeinto que graba la factura
              dm.Query1.close;
              dm.Query1.sql.clear;
              dm.Query1.sql.add('exec pr_modifica_fac :emp, :suc, :forma, :tipo, :numero');
              dm.Query1.Parameters.parambyname('emp').Value    := QFacturaEMP_CODIGO.value;
              dm.Query1.Parameters.parambyname('suc').Value    := QFacturaSUC_CODIGO.Value;
              dm.Query1.Parameters.parambyname('forma').Value   := QFacturaFAC_FORMA.value;
              dm.Query1.Parameters.parambyname('tipo').Value   := QFacturaTFA_CODIGO.Value;
              dm.Query1.Parameters.parambyname('numero').Value := QFacturaFAC_NUMERO.value;
              dm.Query1.ExecSQL;
              end;

             if dm.QParametrosUsa_FacturacionElectronica.Value then
              begin
                if DM.QParametrosPAR_FE_DetenerFacturacion.Value then 
                begin
                    // 1) Validar disponibilidad de secuencia SIN reservar ni asignar
                ok := ValidarENCFDisponible(
                        QFacturaEMP_CODIGO.Value,
                        QFacturatip_codigo.Value,
                        msg, prox);
                end else  ok :=True;

                if (not ok) then
                begin
                  ShowMessage('No hay comprobantes fiscales disponibles para esta factura.');
                  Exit;
                end;
                if ok then
                begin
                  // Proceso para enviar la Facturaci?n Electr?nica (DGII o LUGANIS)
                  try
                    QFactura.Edit;
                    // ==========================
                    //  Emp_rnc
                    // ==========================
                    dm.Query1.Close;
                    dm.Query1.SQL.Clear;
                    dm.Query1.SQL.Add('select emp_rnc');
                    dm.Query1.SQL.Add('from empresas');
                    dm.Query1.SQL.Add('where emp_codigo = :emp');
                    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
                    dm.Query1.Open;
                    QFacturaemp_rnc.Value := dm.Query1.FieldByName('emp_rnc').AsString;
                    // ==========================
                    //  Cli_rnc
                    // ==========================
                    dm.Query1.Close;
                    dm.Query1.SQL.Clear;
                    dm.Query1.SQL.Add('select cli_rnc');
                    dm.Query1.SQL.Add('from Clientes');
                    dm.Query1.SQL.Add('where cli_codigo = :cli');
                    dm.Query1.Parameters.ParamByName('cli').Value := QFacturaCLI_CODIGO.Value;
                    dm.Query1.Open;
                    QFacturacli_rnc.Value := dm.Query1.FieldByName('cli_rnc').AsString;
                    // ==========================
                    //  eNCF actual
                    // ==========================
                    dm.Query1.Close;
                    dm.Query1.SQL.Clear;
                    dm.Query1.SQL.Add('select eNCF');
                    dm.Query1.SQL.Add('from Facturas');
                    dm.Query1.SQL.Add('where emp_codigo = :emp');
                    dm.Query1.SQL.Add('  and tfa_codigo = :tipo');
                    dm.Query1.SQL.Add('  and fac_numero = :numero');
                    dm.Query1.SQL.Add('  and fac_forma = :forma');
                    dm.Query1.SQL.Add('  and suc_codigo = :suc');
                    dm.Query1.Parameters.ParamByName('emp').Value    := QFacturaEMP_CODIGO.Value;
                    dm.Query1.Parameters.ParamByName('suc').Value    := QFacturaSUC_CODIGO.Value;
                    dm.Query1.Parameters.ParamByName('forma').Value  := QFacturaFAC_FORMA.Value;
                    dm.Query1.Parameters.ParamByName('tipo').Value   := QFacturaTFA_CODIGO.Value;
                    dm.Query1.Parameters.ParamByName('numero').Value := QFacturaFAC_NUMERO.Value;
                    dm.Query1.Open;
                    QFacturaeNCF.Value := dm.Query1.FieldByName('eNCF').AsString;
                    // ==========================
                    //  Tipo eNCF (cod_dgii)
                    // ==========================
                    dm.Query1.Close;
                    dm.Query1.SQL.Clear;
                    dm.Query1.SQL.Add('select cod_dgii');
                    dm.Query1.SQL.Add('from TipoNCF');
                    dm.Query1.SQL.Add('where tip_codigo = :tip_codigo');
                    dm.Query1.Parameters.ParamByName('tip_codigo').Value := QFacturatip_codigo.Value;
                    dm.Query1.Open;
                    QFacturaTipoeNCF.Value := dm.Query1.FieldByName('cod_dgii').AsInteger;
                    //QFactura.Post;
                    //QFactura.UpdateBatch(arAll);
                    // ==========================
                    //  Decidir flujo: LUGANIS o DGII
                    // ==========================
                    if dm.QParametrosintegracion_luganis.Value then
                    begin
                      // ------------ LUGANIS ------------

                      Servicio := CoFacturaElectronicaService.Create;
                      resultado := Servicio.EnviarFacturaElectronicaLuganis(
                        IntToStr(QFacturaEMP_CODIGO.Value),          // emp
                        IntToStr(QFacturaSUC_CODIGO.Value),          // suc
                        IntToStr(QFacturaFAC_NUMERO.Value),          // facNumero
                        QFacturaemp_rnc.Value,                       // empRnc
                        QFacturaeNCF.Value,                          // eNCF
                        QFacturacli_rnc.Value,                       // RncCliente
                        dm.QParametrospar_luganis_baseurl.AsString,  // baseUrl
                        dm.QParametrospar_luganis_companycode.AsString, // companyCode
                        dm.QParametrospar_luganis_username.AsString, // username
                        dm.QParametrospar_luganis_password.AsString, // password
                        dm.QParametrospar_luganis_appversion.AsString, // appVersion
                        dm.QParametrospar_luganis_os.AsString,       // os
                        dm.QParametrospar_luganis_deviceid.AsString, // deviceId
                        dm.QParametrospar_luganis_latitude.AsString, // latitude
                        dm.QParametrospar_luganis_longitude.AsString,// longitude
                        dm.QParametrospar_luganis_providerip.AsString, // providerIpAddress
                        QFacturaFAC_FORMA.Value,                     // facForma
                        IntToStr(QFacturaTFA_CODIGO.Value),          // tfaCodigo
                        IntToStr(QFacturaTipoeNCF.Value),            // tipoECF
                        True,                                        // saveGeneratedTxt (TXT junto al XML)
                        '',                                          // outputFolder (usa carpeta de la DLL/XML)
                        False,                                       // isNotaCredito
                        '',                                          // supCodigo
                        False                                        // logDebug
                      );
                    end
                    else
                    begin
                      // ------------ DGII ------------
                      if (QFacturaFAC_TOTAL.Value <= 250000) and (QFacturaTipoeNCF.Value = 32) then
                      begin
                        Servicio := CoFacturaElectronicaService.Create;
                        resultado := Servicio.EnviarFacturaResumen(
                          IntToStr(QFacturaEMP_CODIGO.Value),
                          IntToStr(QFacturaSUC_CODIGO.Value),
                          IntToStr(QFacturaFAC_NUMERO.Value),
                          QFacturaemp_rnc.Value,
                          QFacturaeNCF.Value,
                          QFacturacli_rnc.Value,
                          QFacturaFAC_FORMA.Value,
                          IntToStr(QFacturaTFA_CODIGO.Value),
                          IntToStr(QFacturaTipoeNCF.Value)
                        );
                      end
                      else
                      begin
                        Servicio := CoFacturaElectronicaService.Create;
                        resultado := Servicio.EnviarFacturaElectronica(
                          IntToStr(QFacturaEMP_CODIGO.Value),
                          IntToStr(QFacturaSUC_CODIGO.Value),
                          IntToStr(QFacturaFAC_NUMERO.Value),
                          QFacturaemp_rnc.Value,
                          QFacturaeNCF.Value,
                          QFacturacli_rnc.Value,
                          QFacturaFAC_FORMA.Value,
                          IntToStr(QFacturaTFA_CODIGO.Value),
                          IntToStr(QFacturaTipoeNCF.Value)
                        );
                      end;
                    end;
                    // aqu? puedes hacer ShowMessage('Resultado: ' + resultado); si quieres ver el JSON
                  except
                    on E: Exception do
                    begin
                      // Manejo de error (log, mensaje, etc.)
                      // ShowMessage('Error: ' + E.Message);
                    end;
                  end;
                end;
              end;
              //Procedimeinto Graba combos en tablas detalle de combos
             { qGrabaCombos.close;
              qGrabaCombos.Parameters.parambyname('emp').Value := QFacturaEMP_CODIGO.value;
              qGrabaCombos.Parameters.parambyname('suc').Value := QFacturaSUC_CODIGO.Value;
              qGrabaCombos.Parameters.parambyname('for').Value := QFacturaFAC_FORMA.value;
              qGrabaCombos.Parameters.parambyname('tfa').Value := QFacturaTFA_CODIGO.Value;
              qGrabaCombos.Parameters.parambyname('fac').Value := QFacturaFAC_NUMERO.value;

              qGrabaCombos.ExecSQL;    }
              end;

                                      {
              //ejecutando procedimiento de grabar facturas
              dm.Query1.close;
              dm.Query1.sql.clear;
              dm.Query1.sql.add('execute pr_graba_factura :emp, :suc, :forma, :tipo, :numero');
              dm.Query1.Parameters.parambyname('emp').Value    := dm.vp_cia;
              dm.Query1.Parameters.parambyname('suc').Value    := QFacturaSUC_CODIGO.Value;
              dm.Query1.Parameters.parambyname('forma').Value   := QFacturaFAC_FORMA.value;
              dm.Query1.Parameters.parambyname('tipo').Value   := QFacturaTFA_CODIGO.value;
              dm.Query1.Parameters.parambyname('numero').Value := QFacturaFAC_NUMERO.value;
              dm.Query1.ExecSQL;     }

           {   QNota.Close;
              QNota.Parameters.parambyname('emp').Value    := dm.vp_cia;
              QNota.Parameters.parambyname('forma').Value   := QFacturaFAC_FORMA.value;
              QNota.Parameters.parambyname('numero').Value := QFacturaFAC_NUMERO.value;
              QNota.Parameters.parambyname('tipo').Value   := QFacturaTFA_CODIGO.value;
              QNota.Parameters.parambyname('suc').Value    := QFacturaSUC_CODIGO.Value;
              QNota.Open;

              if not QNota.IsEmpty then begin
              QNota.DisableControls;
              QNota.First;
              while not QNota.Eof do begin
              qAplicaNC.Close;
              qAplicaNC.Parameters.ParamByName('EMP').Value := QNotaEMP_CODIGO.Value;
              qAplicaNC.Parameters.ParamByName('SUC').Value := QNotasuc_codigo.Value;
              qAplicaNC.Parameters.ParamByName('NC').Value  := QNotaNCR_NUMERO.Value;
              qAplicaNC.ExecSQL;
              QNota.Next;
              end;
              QNota.First;
              QNota.EnableControls;
              end;
                        }

              //Pedidos
              QPedidos.DisableControls;
              QPedidos.first;
              a := 0;
              while not QPedidos.eof do
              begin
                a := a + 1;
                QPedidos.edit;
                QPedidosEMP_CODIGO.value := dm.vp_cia;
                QPedidosFAC_NUMERO.value := QFacturaFAC_NUMERO.value;
                QPedidosFAC_FORMA.value  := QFacturaFAC_FORMA.value;
                QPedidosTFA_CODIGO.value := strtoint(edTipo.text);
                QPedidosSUC_CODIGO.Value := QFacturaSUC_CODIGO.Value;
                QPedidosped_tipo.Value   := 'C';
                QPedidos.post;
                QPedidos.next;
              end;
              QPedidos.enableControls;
              QPedidos.UpdateBatch;

              //Envio
              QEnvio.DisableControls;
              QEnvio.first;
              a := 0;
              while not QEnvio.eof do
              begin
                a := a + 1;

                QEnvio.edit;
                QEnvioemp_codigo.value := dm.vp_cia;
                QEnviofac_numero.value := QFacturaFAC_NUMERO.value;
                QEnviosuc_codigo.Value := QFacturaSUC_CODIGO.Value;
                QEnviotfa_codigo.Value := QFacturaTFA_CODIGO.Value;
                QEnvio.post;
                QEnvio.next;
              end;
              QEnvio.enableControls;
              QEnvio.UpdateBatch;

              //Si selecciona formas de pago
              if TraerFormaPago = 'True' then
              begin
                //Formas de pago
                frmFormaPagoFac.QFormaPago.DisableControls;
                frmFormaPagoFac.QFormaPago.first;
                a := 0;
                while not frmFormaPagoFac.QFormaPago.eof do
                begin
                  a := a + 1;
                  frmFormaPagoFac.QFormaPago.edit;
                  if (frmFormaPagoFac.QFormaPagoFPA_CODIGO.IsNull) or
                  (frmFormaPagoFac.QFormaPagoFPA_CODIGO.value = 0) then
                    frmFormaPagoFac.QFormaPagoFPA_CODIGO.value := 1;
                  frmFormaPagoFac.QFormaPagoFOR_SECUENCIA.Value := a;
                  frmFormaPagoFac.QFormaPagoFAC_NUMERO.value := QFacturaFAC_NUMERO.value;
                  frmFormaPagoFac.QFormaPagoTFA_CODIGO.value := strtoint(edTipo.text);
                  frmFormaPagoFac.QFormaPagoFAC_FORMA.value  := QFacturaFAC_FORMA.value;
                  frmFormaPagoFac.QFormaPagoEMP_CODIGO.value := dm.vp_cia;
                  frmFormaPagoFac.QFormaPagoSUC_CODIGO.Value := QFacturaSUC_CODIGO.Value;
                  frmFormaPagoFac.QFormaPago.post;
                  frmFormaPagoFac.QFormaPago.next;
                end;
                frmFormaPagoFac.QFormaPago.enableControls;
                frmFormaPagoFac.QFormaPago.UpdateBatch;

                //notas de credito
                frmFormaPagoFac.QNota.DisableControls;
                frmFormaPagoFac.QNota.first;
                while not frmFormaPagoFac.QNota.eof do
                begin
                  frmFormaPagoFac.QNota.edit;
                  frmFormaPagoFac.QNotaFAC_NUMERO.value := QFacturaFAC_NUMERO.value;
                  frmFormaPagoFac.QNotaTFA_CODIGO.value := strtoint(edTipo.text);
                  frmFormaPagoFac.QNotaFAC_FORMA.value  := QFacturaFAC_FORMA.value;
                  frmFormaPagoFac.QNotaEMP_CODIGO.value := dm.vp_cia;
                  frmFormaPagoFac.QNotasuc_codigo.Value := QFacturaSUC_CODIGO.Value;
                  frmFormaPagoFac.QNota.post;
                  frmFormaPagoFac.QNota.next;
                  end;
                frmFormaPagoFac.QNota.enableControls;
                frmFormaPagoFac.QNota.UpdateBatch;

                frmFormaPagoFac.QNota.DisableControls;
                frmFormaPagoFac.QNota.first;
                while not frmFormaPagoFac.QNota.eof do
                begin
                  if frmFormaPagoFac.QNotaNCR_MONTO.Value > 0 then begin
                  qAplicaNC.Close;
                  qAplicaNC.Parameters.ParamByName('EMP').Value   := frmFormaPagoFac.QNotaEMP_CODIGO.Value;
                  qAplicaNC.Parameters.ParamByName('SUC').Value   := frmFormaPagoFac.QNotasuc_codigo.Value;
                  qAplicaNC.Parameters.ParamByName('NC').Value    := frmFormaPagoFac.QNotaNCR_NUMERO.Value;
                  qAplicaNC.Parameters.ParamByName('MONTO').Value := frmFormaPagoFac.QNotaNCR_MONTO.Value;
                  qAplicaNC.ExecSQL;
                  end;
                  frmFormaPagoFac.QNota.next;
                  end;
                frmFormaPagoFac.QNota.enableControls;
                frmFormaPagoFac.QNota.UpdateBatch;

              end;
              //Numeros de Serie
             { if QSerie.Active then
              begin
                QSerie.DisableControls;
                fila := 1;
                for a := 0 to GridSerie.RowCount-1 do
                begin
                  if trim(GridSerie.Cells[1,a]) <> '' then
                  begin
                    QSerie.Append;
                    QSerieEMP_CODIGO.Value := dm.QEmpresasEMP_CODIGO.Value;
                    QSerieFAC_FORMA.Value  := QFacturaFAC_FORMA.Value;
                    QSerieFAC_NUMERO.Value := QFacturaFAC_NUMERO.Value;
                    QSeriePRO_CODIGO.Value := strtoint(trim(GridSerie.Cells[0,a]));
                    QSerieSER_NUMERO.Value := trim(GridSerie.Cells[1,a]);
                    QSerieSER_SECUENCIA.Value := fila;
                    QSerieTFA_CODIGO.Value := QFacturaTFA_CODIGO.Value;
                    QSerieSUC_CODIGO.Value := QFacturaSUC_CODIGO.Value;
                    QSerie.Post;
                    fila := fila + 1;
                  end;
                end;
                QSerie.EnableControls;
                QSerie.UpdateBatch;
                dm.ADOSigma.Execute('delete from FACSERIE where pro_codigo not in (select pro_codigo from det_factura where '+
                'emp_codigo ='+QFacturaEMP_CODIGO.Text+' and suc_codigo = '+QFacturaSUC_CODIGO.Text+' and fac_forma ='+QuotedStr(QFacturaFAC_FORMA.Text)+
                ' and fac_numero ='+QFacturaFAC_NUMERO.Text+')');
              end;
              }


              //Receta de la Optica
              if QReceta.Active then
              begin
                QReceta.DisableControls;
                a := 0;
                QReceta.First;
                while not QReceta.Eof do
                begin
                  a := a + 1;
                  QReceta.Edit;
                  QRecetaemp_codigo.Value := dm.vp_cia;
                  QRecetasuc_codigo.Value := DBLookupComboBox2.KeyValue;
                  QRecetafac_forma.Value  := QFacturaFAC_FORMA.Value;
                  QRecetafac_numero.Value := QFacturaFAC_NUMERO.Value;
                  QRecetatfa_codigo.Value := QFacturaTFA_CODIGO.Value;
                  QRecetadet_secuencia.Value := a;
                  QReceta.Post;
                  QReceta.Next;
                end;
                QReceta.EnableControls;
                QReceta.UpdateBatch;
              end;

              //Facturas del clinico
              if QClinico.Active then
              begin
                QClinico.DisableControls;
                a := 0;
                QClinico.First;
                while not QClinico.Eof do
                begin
                  a := a + 1;
                  QClinico.Edit;
                  QClinicoemp_codigo.Value := dm.vp_cia;
                  QClinicosuc_codigo.Value := DBLookupComboBox2.KeyValue;
                  QClinicofac_forma.Value  := QFacturaFAC_FORMA.Value;
                  QClinicofac_numero.Value := QFacturaFAC_NUMERO.Value;
                  QClinicotfa_codigo.Value := QFacturaTFA_CODIGO.Value;
                  QClinicodetalleid.Value  := a;
                  QClinico.Post;
                  QClinico.Next;
                end;
                QClinico.EnableControls;
                QClinico.UpdateBatch;
              end;





              if Cuotas = 'True' then
              Begin
                Application.CreateForm(tfrmGeneraCuotas, frmGeneraCuotas);
                frmGeneraCuotas.Fecha  := QFacturaFAC_FECHA.Value;
                frmGeneraCuotas.Forma  := QFacturaFAC_FORMA.Value;
                frmGeneraCuotas.Tipo   := QFacturaTFA_CODIGO.Value;
                frmGeneraCuotas.Numero   := QFacturaFAC_NUMERO.Value;
                frmGeneraCuotas.Sucursal := QFacturaSUC_CODIGO.Value;
                frmGeneraCuotas.Total  := QFacturaFAC_TOTAL.Value - QFacturaFAC_ABONO.Value;
                frmGeneraCuotas.vl_tasa := QFacturafac_interes.Value;
                frmGeneraCuotas.Intervalo := Intervalo;
                frmGeneraCuotas.ShowModal;
                if frmGeneraCuotas.Acepta = False then
                Exit
                else
                frmGeneraCuotas.Release;
              End;

              //ACTUALIZAR TICKET LIQUIDACION GRABADOS
              IF FileExists('.\Transporte.Txt') then begin
              with qUpdateTicketLiq do begin
              Close;
              Parameters.ParamByName('EMP').Value   :=  QFacturaEMP_CODIGO.Value;
              Parameters.ParamByName('SUC').Value   :=  QFacturaSUC_CODIGO.Value;
              Parameters.ParamByName('FOR').Value   :=  QFacturaFAC_FORMA.Value;
              Parameters.ParamByName('NUM').Value   :=  QFacturaFAC_NUMERO.Value;
              Parameters.ParamByName('TFAC').Value   :=  QFacturaTFA_CODIGO.Value;
              Parameters.ParamByName('CLI').Value   :=  vl_cliente;
              Parameters.ParamByName('DESDE').Value :=  DEdt_Desde.Date;
              Parameters.ParamByName('HASTA').Value :=  DEdt_Hasta.Date;
              ExecSQL;
              end;
              end;

              //ACTUALIZAR ORDENES TALLER
              if qOrdenesTaller.Active then begin
              if DM.QParametrospar_formato_preimpreso.Value = 'Cepinta' then begin
              with qUpdateOrdenesTaller do begin
              Close;
              Parameters.ParamByName('EMP').Value   :=  QFacturaEMP_CODIGO.Value;
              Parameters.ParamByName('SUC').Value   :=  QFacturaSUC_CODIGO.Value;
              Parameters.ParamByName('NUM').Value   :=  qOrdenesTallernum.Value;
              Parameters.ParamByName('CLI').Value   :=  vl_cliente;
              ExecSQL;
              end;
              end;
              end;



           //CodificarCuentas;

           with qGenNCF do begin
           Close;
           Parameters.ParamByName('emp').Value   := QFacturaEMP_CODIGO.Value;
           Parameters.ParamByName('suc').Value   := QFacturaSUC_CODIGO.Value;
           Parameters.ParamByName('tipo').Value  := QFacturaTFA_CODIGO.Value;
           Parameters.ParamByName('forma').Value := QFacturaFAC_FORMA.Value;
           Parameters.ParamByName('num').Value   := QFacturaFAC_NUMERO.Value;
           ExecSQL;
           end;

           vl_empfact := QFacturaEMP_CODIGO.Value;
           vl_suc     := QFacturaSUC_CODIGO.Value;
           vl_tfa     := QFacturaTFA_CODIGO.Value;
           vl_forma   := QFacturaFAC_FORMA.Value;
           vl_fact    := QFacturaFAC_NUMERO.Value;

           end;
           end;
           end;
      



 if messagedlg('SE HA GENERADO LA FACTURA DE '+tTipo.text+
             ' NUMERO '+inttostr(QFacturaFAC_NUMERO.value)+',DESEA IMPRIMIRLA?',
                         mtconfirmation,[mbyes,mbno],0) = mryes then
   begin
              if QEnvio.RecordCount > 0 then begin
              ImpTicketEnvio(QEnvioSUC_ORIGEN.Text,QEnvioSUC_DESTINO.Text,QEnvioNombre_Recibe.Text,QEnvioTelefono_Recibe.Text, QEnvioNombre_envia.Text,
              UpperCase(Trim(QEnvioDescripcion.Text))+' '+UpperCase(Trim(QEnvioDescripcion2.Text)),FormatFloat('000000#',qenviofac_numero.Value),
              FormatFloat('000#',QEnvioIDEnvio.Value),QEnviofacpagodestino.Value, QFacturaFAC_NUMERO.value, Round(QEnvioCantidad.Value));
              end;

        if (Impresora.IDPrinter > 0)  then
            begin
                CASE Impresora.IDPrinter OF
                        1 : {EPSON (TMU-220)}      ImpTicketFiscal(impresora.copia);
								        2 : {CITIZEN ( CT-S310 )}  ImpTicketVmaxFiscal(impresora.puerto,impresora.velocidad,impresora.copia,impresora.Tipo,impresora.Precioconitbis);
								        3 : {CITIZEN (GSX-190)}    ImpTicketVmaxFiscal(impresora.puerto,impresora.velocidad,impresora.copia,impresora.Tipo,impresora.Precioconitbis);
                        4 : {STAR (TSP650FP)}      ImpTicketVmaxFiscal(impresora.puerto,impresora.velocidad,impresora.copia,impresora.Tipo,impresora.Precioconitbis);
                        5 : {Bixolon SRP-350iiHG}  ImpTicketFiscalBixolon(Impresora);
                enD;
                if vp_verifone = True then BEGIN
                CASE Impresora.IDPrinter OF
                        1 : {EPSON (TMU-220)}      ImpTicketFiscalCardNet(impresora.copia);
								        2 : {CITIZEN ( CT-S310 )}  ImpTicketVmaxFiscalCardNet(impresora.puerto,impresora.velocidad,impresora.copia,impresora.Tipo,impresora.Precioconitbis);
								        3 : {CITIZEN (GSX-190)}    ImpTicketVmaxFiscalCardNet(impresora.puerto,impresora.velocidad,impresora.copia,impresora.Tipo,impresora.Precioconitbis);
                        4 : {STAR (TSP650FP)}      ImpTicketVmaxFiscalCardNet(impresora.puerto,impresora.velocidad,impresora.copia,impresora.Tipo,impresora.Precioconitbis);
                        //5 : {Bixolon SRP-350iiHG}  ImpTicketFiscalBixolon(Impresora);
                end;
                END;
            end;

         if (Impresora.IDPrinter = 0)  then BEGIN

         if (dm.QParametrosPAR_PREGUNTAPEQ.Value = 'False') and (FormatoImp = 1) then
            BEGIN
            if dm.QParametrosPAR_CAJA.Value = 'S' then
            dm.AbreCaja;
            Imp40Columnas;
            if vp_verifone = True then
            ImpTicketCardNet;
           end;


            if ((dm.QParametrosPAR_PREGUNTAPEQ.Value = 'True') and
            (MessageDLG('DESEA IMPRIMIR EN IMPRESORA PEQUE?A?',mtConfirmation,[mbyes,mbno],0) = mryes)
                AND (FormatoImp <> 1)) then
                begin
                if dm.QParametrosPAR_CAJA.Value = 'S' then
                dm.AbreCaja;
                Imp40Columnas;
                if vp_verifone = True then
                        ImpTicketCardNet;
           end
           else
      begin
         if (dm.QParametrospar_fac_preimpresa.Value = 'False') then
        begin
         if ((FormatoImp = 2) OR FileExists('.\Transporte.Txt')) then
                begin
                   application.createform(tRFacturaCorta, RFacturaCorta);
                   RFacturaCorta.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
                   RFacturaCorta.QFactura.Parameters.ParamByName('tipo').Value   := QFacturaTFA_CODIGO.Value;
                   RFacturaCorta.QFactura.Parameters.ParamByName('forma').Value  := QFacturaFAC_FORMA.Value;
                   RFacturaCorta.QFactura.Parameters.ParamByName('numero').Value := QFacturaFAC_NUMERO.Value;
                   RFacturaCorta.QFactura.Parameters.ParamByName('suc').Value := QFacturaSUC_CODIGO.Value;;
                   RFacturaCorta.QFactura.open;
                   RFacturaCorta.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
                   RFacturaCorta.QDetalle.open;
                   RFacturaCorta.lbReimpresion.Enabled := True;

                   if RFacturaCorta.QDetalle.Locate('PRO_NOMBRE','SERVICIO DE ENVIO',[]) then
                   RFacturaCorta.ChildBand3.Enabled := True else
                   RFacturaCorta.ChildBand3.Enabled := False;

                   RFacturaCorta.PrinterSetup;
                   ImprimirQuickRepCopias(RFacturaCorta);
                   RFacturaCorta.Destroy;
                      end
                      else if FormatoImp = 4 then
           begin
                        application.createform(tRFacturaElegante, RFacturaElegante);
                        RFacturaElegante.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
                        RFacturaElegante.QFactura.Parameters.ParamByName('tipo').Value   := QFacturaTFA_CODIGO.value;
                        RFacturaElegante.QFactura.Parameters.ParamByName('forma').Value   := QFacturaFAC_FORMA.value;
                        RFacturaElegante.QFactura.Parameters.ParamByName('numero').Value := QFacturaFAC_NUMERO.value;
                        RFacturaElegante.QFactura.Parameters.ParamByName('suc').Value := QFacturaSUC_CODIGO.Value;
                        RFacturaElegante.QFactura.open;
                        RFacturaElegante.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
                        RFacturaElegante.QDetalle.open;
                        RFacturaElegante.PrinterSetup;

                        if dm.QParametrospar_domicilio.Value = 'True' then
                        begin
                          a := 1;
                          while a <= dm.QParametrospar_copias_domicilio.Value do
                          begin
                            RFacturaElegante.print;
                            RFacturaElegante.Destroy;
                            a := a + 1;
                          end;
                        end
                        else begin
                          RFacturaElegante.print;

                        RFacturaElegante.Destroy;
                      end;
                END
                ELSE
                 if FormatoImp = 5 then
                  begin
                    application.createform(tRFactura2Columnas, RFactura2Columnas);
                    RFactura2Columnas.QFactura.Parameters.ParamByName('emp').Value    := DM.vp_cia;
                    RFactura2Columnas.QFactura.Parameters.ParamByName('tipo').Value   := QFacturaTFA_CODIGO.value;
                    RFactura2Columnas.QFactura.Parameters.ParamByName('forma').Value   := QFacturaFAC_FORMA.value;
                    RFactura2Columnas.QFactura.Parameters.ParamByName('numero').Value := QFacturaFAC_NUMERO.value;
                    RFactura2Columnas.QFactura.Parameters.ParamByName('suc').Value := QFacturaSUC_CODIGO.Value;
                    RFactura2Columnas.QFactura.open;
                    RFactura2Columnas.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
                    RFactura2Columnas.QDetalle.open;
                    RFactura2Columnas.PrinterSetup;

                    if dm.QParametrospar_domicilio.Value = 'True' then
                    begin
                      a := 1;
                      while a <= dm.QParametrospar_copias_domicilio.Value do
                      begin
                        RFactura2Columnas.print;
                        RFactura2Columnas.Destroy;
                        a := a + 1;
                      end;
                    end
                    else
                      RFactura2Columnas.print;

                    RFactura2Columnas.Destroy;
                  end;
           end;


         if (dm.QParametrospar_fac_preimpresa.Value = 'True') then
       begin
            if (dm.QParametrospar_formato_preimpreso.Value <> 'QRAgregados') then
            begin
                      application.CreateForm(tRFacturaPreImpresa, RFacturaPreImpresa);
                      RFacturaPreImpresa.QFactura.Parameters.ParamByName('emp').Value    := DM.vp_cia;
                      RFacturaPreImpresa.QFactura.Parameters.ParamByName('tipo').Value   := QFacturaTFA_CODIGO.value;
                      RFacturaPreImpresa.QFactura.Parameters.ParamByName('forma').Value  := QFacturaFAC_FORMA.value;
                      RFacturaPreImpresa.QFactura.Parameters.ParamByName('numero').Value := QFacturaFAC_NUMERO.value;
                      RFacturaPreImpresa.QFactura.Parameters.ParamByName('suc').Value    := QFacturaSUC_CODIGO.Value;
                      RFacturaPreImpresa.QFactura.open;
                      RFacturaPreImpresa.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
                      RFacturaPreImpresa.QDetalle.open;


                      if actbalance = 'False' then
                      begin
                        {if Trim(Devuelta) <> '' then
                        begin
                          RFacturaPreImpresa.lbDevuelta.Caption := Format('%n',[StrToFloat(Devuelta)]);
                          RFacturaPreImpresa.lbPagado.Caption   := Format('%n',[StrToFloat(Recibido)]);
                        end;}
                      end;

                      if dm.QParametrospar_formato_preimpreso.Value = 'Hotel' then
                      begin
                        Imp40ColumnasHotel;
                      end
                      else
                      if dm.QParametrospar_formato_preimpreso.Value = 'QRBelkis' then
                      begin
                        RFacturaPreImpresa.QRBelkis.PrinterSetup;
                        ImprimirQuickRepCopias(RFacturaPreImpresa.QRBelkis);
                        RFacturaPreImpresa.Release;
                      end
                      else
                      //Norma 201806 Normal
                      if dm.QParametrospar_formato_preimpreso.Value = 'Norma 201806 Normal' then
                      begin
                        with RFacturaPreImpresa.QNorma201806 do begin
                        Close;
                        Parameters.ParamByName('emp').Value    := dm.vp_cia;
                        Parameters.ParamByName('tipo').Value   := QFacturaTFA_CODIGO.Value;
                        Parameters.ParamByName('numero').Value := QFacturaFAC_NUMERO.Value;
                        Parameters.ParamByName('suc').Value    := QFacturaSUC_CODIGO.Value;
                        Open;
                        if RFacturaPreImpresa.QNorma201806.IsEmpty then begin
                          ShowMessage('No existen datos para la impresion....');
                          Abort;
                        end;
                        if not RFacturaPreImpresa.QNorma201806.IsEmpty then begin
                          RFacturaPreImpresa.Rpt_Facturas.ShowReport();
                        end;
                        end;
                      end
                      else
                      if dm.QParametrospar_formato_preimpreso.Value = 'Norma 201806 Tickets' then
                      begin
                        with RFacturaPreImpresa.QNorma201806 do begin
                        Close;
                        Parameters.ParamByName('emp').Value    := dm.vp_cia;
                        Parameters.ParamByName('tipo').Value   := QFacturaTFA_CODIGO.Value;
                        Parameters.ParamByName('numero').Value := QFacturaFAC_NUMERO.Value;
                        Parameters.ParamByName('suc').Value    := QFacturaSUC_CODIGO.Value;
                        Open;
                        if RFacturaPreImpresa.QNorma201806.IsEmpty then begin
                          ShowMessage('No existen datos para la impresion....');
                          Abort;
                        end;
                        if not RFacturaPreImpresa.QNorma201806.IsEmpty then begin
                         // Imp40ColumnasNorma201806;
                        end;
                        end;
                      end
                      else
                      if dm.QParametrospar_formato_preimpreso.Value = 'QRSoloAutos' then
                      begin
                        RFacturaPreImpresa.QRSoloAutos.PrinterSetup;
                        RFacturaPreImpresa.QRSoloAutos.print;
                        RFacturaPreImpresa.Release;
                      end
                      else if dm.QParametrospar_formato_preimpreso.Value = 'QRBB' then
                      begin
                        RFacturaPreImpresa.lbReimpresion.Enabled := False;
                        RFacturaPreImpresa.QRBB.PrinterSetup;
                        RFacturaPreImpresa.QRBB.print;
                        RFacturaPreImpresa.Release;
                      end
                      else if dm.QParametrospar_formato_preimpreso.Value = 'QRMSConsulting' then
                      begin
                        RFacturaPreImpresa.QRMSConsulting.PrinterSetup;
                        RFacturaPreImpresa.QRMSConsulting.print;
                        RFacturaPreImpresa.Release;
                      end
                      else if dm.QParametrospar_formato_preimpreso.Value = 'QRThorton' then
                      begin
                        RFacturaPreImpresa.QRTHorton.PrinterSetup;
                        RFacturaPreImpresa.QRTHorton.print;
                        RFacturaPreImpresa.Destroy;
                      end
                      else if dm.QParametrospar_formato_preimpreso.Value = 'QRMadeco' then
                      begin
                        RFacturaPreImpresa.QRMadeco.PrinterSetup;
                        RFacturaPreImpresa.QRMadeco.print;
                        RFacturaPreImpresa.Release;
                      end
                      else if dm.QParametrospar_formato_preimpreso.Value = 'QRMateirosa' then
                      begin
                        RFacturaPreImpresa.QRMateirosa.PrinterSetup;
                        RFacturaPreImpresa.QRMateirosa.print;
                        RFacturaPreImpresa.Release;
                      end
                      else if dm.QParametrospar_formato_preimpreso.Value = 'QRImpresosDuran' then
                      begin
                        RFacturaPreImpresa.QRImpresosDuran.PrinterSetup;
                        RFacturaPreImpresa.QRImpresosDuran.print;
                        RFacturaPreImpresa.Release;
                      end
                      else if dm.QParametrospar_formato_preimpreso.Value = 'Caceres&Equipos' then
                      begin
                        application.createform(TRFacturaCaceresEquipos, RFacturaCaceresEquipos);
                        RFacturaCaceresEquipos.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
                        RFacturaCaceresEquipos.QFactura.Parameters.ParamByName('tipo').Value   := QFacturaTFA_CODIGO.value;
                        RFacturaCaceresEquipos.QFactura.Parameters.ParamByName('forma').Value  := QFacturaFAC_FORMA.value;
                        RFacturaCaceresEquipos.QFactura.Parameters.ParamByName('numero').Value := QFacturaFAC_NUMERO.value;
                        RFacturaCaceresEquipos.QFactura.Parameters.ParamByName('suc').Value    := QFacturaSUC_CODIGO.Value;
                        RFacturaCaceresEquipos.QFactura.open;
                        RFacturaCaceresEquipos.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
                        RFacturaCaceresEquipos.QDetalle.open;
                        RFacturaCaceresEquipos.PrinterSetup;

                        ImprimirQuickRepCopias(RFacturaCaceresEquipos);
                        RFacturaCaceresEquipos.Destroy;
                        end
                      else if dm.QParametrospar_formato_preimpreso.Value = 'FUNDGRUBEL' then
                      begin
                        application.createform(tRFacturaFUNDGRUBEL, RFacturaFUNDGRUBEL);
                        RFacturaFUNDGRUBEL.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
                        RFacturaFUNDGRUBEL.QFactura.Parameters.ParamByName('tipo').Value   := QFacturaTFA_CODIGO.value;
                        RFacturaFUNDGRUBEL.QFactura.Parameters.ParamByName('forma').Value  := QFacturaFAC_FORMA.value;
                        RFacturaFUNDGRUBEL.QFactura.Parameters.ParamByName('numero').Value := QFacturaFAC_NUMERO.value;
                        RFacturaFUNDGRUBEL.QFactura.Parameters.ParamByName('suc').Value    := QFacturaSUC_CODIGO.Value;
                        RFacturaFUNDGRUBEL.QFactura.open;
                        RFacturaFUNDGRUBEL.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
                        RFacturaFUNDGRUBEL.QDetalle.open;
                        RFacturaFUNDGRUBEL.PrinterSetup;

                        if dm.QParametrospar_domicilio.Value = 'True' then
                        begin
                          a := 1;
                          while a <= dm.QParametrospar_copias_domicilio.Value do
                          begin
                             RFacturaFUNDGRUBEL.print;
                             RFacturaFUNDGRUBEL.Destroy;
                             a := a + 1;
                          end;
                        end
                        else begin
                          RFacturaFUNDGRUBEL.print;

                        RFacturaFUNDGRUBEL.Destroy;
                        end;
                        end
                      else if
                      dm.QParametrospar_formato_preimpreso.Value = 'QClinico' then
                      begin
                        application.createform(tRFactura, RFactura);
                        RFactura.QFactura.Parameters.ParamByName('emp').Value    := DM.vp_cia;
                        RFactura.QFactura.Parameters.ParamByName('tipo').Value   := QFacturaTFA_CODIGO.value;
                        RFactura.QFactura.Parameters.ParamByName('forma').Value  := QFacturaFAC_FORMA.value;
                        RFactura.QFactura.Parameters.ParamByName('numero').Value := QFacturaFAC_NUMERO.value;
                        RFactura.QFactura.Parameters.ParamByName('suc').Value    := QFacturaSUC_CODIGO.Value;
                        RFactura.QFactura.open;
                        RFactura.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
                        RFactura.QDetalle.open;
                        RFactura.PrinterSetup;
                        RFactura.print;
                        RFactura.Destroy;

                        if QClinico.RecordCount > 0 then
                        begin
                          if MessageDlg('Desea imprimir el detalle de facturas y records?',mtConfirmation, [mbyes,mbno], 0) = mryes then
                          begin
                            application.createform(tRFacturaClinico, RFacturaClinico);
                            RFacturaClinico.QFactura.Parameters.ParamByName('emp').Value    := DM.vp_cia;
                            RFacturaClinico.QFactura.Parameters.ParamByName('tipo').Value   := QFacturaTFA_CODIGO.value;
                            RFacturaClinico.QFactura.Parameters.ParamByName('forma').Value  := QFacturaFAC_FORMA.value;
                            RFacturaClinico.QFactura.Parameters.ParamByName('numero').Value := QFacturaFAC_NUMERO.value;
                            RFacturaClinico.QFactura.Parameters.ParamByName('suc').Value    := QFacturaSUC_CODIGO.Value;
                            RFacturaClinico.QFactura.open;
                            RFacturaClinico.PrinterSetup;
                            RFacturaClinico.print;
                            RFacturaClinico.Destroy;
                          end;
                        end;
                    end else if dm.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados' then begin
                    application.createform(tRFacturaSarita, RFacturaSarita);
                    RFacturaSarita.QFactura.Parameters.ParamByName('emp').Value    := DM.vp_cia;
                    RFacturaSarita.QFactura.Parameters.ParamByName('tipo').Value   := QFacturaTFA_CODIGO.value;
                    RFacturaSarita.QFactura.Parameters.ParamByName('forma').Value   := QFacturaFAC_FORMA.value;
                    RFacturaSarita.QFactura.Parameters.ParamByName('numero').Value := QFacturaFAC_NUMERO.value;
                    RFacturaSarita.QFactura.Parameters.ParamByName('suc').Value := QFacturaSUC_CODIGO.Value;
                    RFacturaSarita.QFactura.open;
                    RFacturaSarita.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
                    RFacturaSarita.QDetalle.open;
                    RFacturaSarita.lbReimpresion.Enabled := False;
                    RFacturaSarita.PrinterSetup;
                    ImprimirQuickRepCopias(RFacturaSarita);
                    RFacturaSarita.Destroy;
                    end else if dm.QParametrospar_formato_preimpreso.Value = 'Cepinta' then begin
                    qFacturaOrdTaller.Parameters.ParamByName('emp').Value    := DM.vp_cia;
                    qFacturaOrdTaller.Parameters.ParamByName('num').Value := QFacturaFAC_NUMERO.value;
                    qFacturaOrdTaller.Parameters.ParamByName('suc').Value := QFacturaSUC_CODIGO.Value;
                    qFacturaOrdTaller.Parameters.ParamByName('tip').Value := QFacturaTFA_CODIGO.Value;
                    qFacturaOrdTaller.open;
                    if qFacturaOrdTaller.RecordCount = 0 then begin
                    RFacturaPreImpresa.QRBelkis.PrinterSetup;
                    RFacturaPreImpresa.QRBelkis.Preview;
                    RFacturaPreImpresa.Release;
                    end else
                    Rpt_FacOrdTaller.ShowReport();
                    end else if ((dm.QParametrospar_formato_preimpreso.Value = 'SteelTec') ) then begin
                    application.createform(tRFacturaSteelTec, RFacturaSteelTec);
                    RFacturaSteelTec.QFactura.Parameters.ParamByName('emp').Value    := DM.vp_cia;
                    RFacturaSteelTec.QFactura.Parameters.ParamByName('tipo').Value   := QFacturaTFA_CODIGO.value;
                    RFacturaSteelTec.QFactura.Parameters.ParamByName('forma').Value   := QFacturaFAC_FORMA.value;
                    RFacturaSteelTec.QFactura.Parameters.ParamByName('numero').Value := QFacturaFAC_NUMERO.value;
                    RFacturaSteelTec.QFactura.Parameters.ParamByName('suc').Value := QFacturaSUC_CODIGO.Value;
                    RFacturaSteelTec.QFactura.open;
                    RFacturaSteelTec.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
                    RFacturaSteelTec.QDetalle.open;
                    RFacturaSteelTec.lbReimpresion.Enabled := False;
                    RFacturaSteelTec.PrinterSetup;
                    ImprimirQuickRepCopias(RFacturaSteelTec);
                    RFacturaSteelTec.Destroy;

                     end else if ((dm.QParametrospar_formato_preimpreso.Value = 'Construccion')) then begin
                    application.createform(TRFacturaConstruccion, RFacturaContruccion);
                    RFacturaContruccion.QFactura.Parameters.ParamByName('emp').Value    := DM.vp_cia;
                    RFacturaContruccion.QFactura.Parameters.ParamByName('tipo').Value   := QFacturaTFA_CODIGO.value;
                    RFacturaContruccion.QFactura.Parameters.ParamByName('forma').Value   := QFacturaFAC_FORMA.value;
                    RFacturaContruccion.QFactura.Parameters.ParamByName('numero').Value := QFacturaFAC_NUMERO.value;
                    RFacturaContruccion.QFactura.Parameters.ParamByName('suc').Value := QFacturaSUC_CODIGO.Value;
                    RFacturaContruccion.QFactura.open;
                    RFacturaContruccion.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
                    RFacturaContruccion.QDetalle.open;
                    RFacturaContruccion.lbReimpresion.Enabled := False;
                    RFacturaContruccion.PrinterSetup;
                    ImprimirQuickRepCopias(RFacturaContruccion);
                    RFacturaContruccion.Destroy;

           end;
           end;
         end;
         end;
         END;







              if chkmail.Checked then GeneraFactEnvioMail;

              if (QFacturaFAC_ABONO.Value > 0) and (actbalance = 'True') then
              begin
                if MessageDlg('SE HA GENERADO UN RECIBO DE ABONO PARA ESTA FACTURA'+#13+
                              'DESEA IMPRIMIRLO?',mtConfirmation,[mbyes,mbno],0) = mryes then
                begin
                  if dm.QParametrosPAR_FORMATORC.Value = 2 then
                  begin
                    application.createform(tRRecibo, RRecibo);
                    RRecibo.QRecibos.Parameters.ParamByName('numero').Value := rec;
                    RRecibo.QRecibos.Parameters.ParamByName('suc').Value    := QFacturaSUC_CODIGO.Value;
                    RRecibo.QRecibos.open;
                    RRecibo.QDoc.Open;
                    RRecibo.QFormasPago.Open;
                    RRecibo.PrinterSetup;
                    RRecibo.print;
                    RRecibo.Destroy;
                  end
                  else if FormatoImp = 3 then
                  begin
                    Imp40ColumnasREC;
                  end;
                end;
              end;

              //Si una nota de credito se utiliz?
              dm.Query1.close;
               dm.Query1.sql.clear;
              dm.Query1.sql.add('select ncr_numero from FACNOTASCREDITO');
              dm.Query1.sql.add('where emp_codigo = :emp');
              dm.Query1.sql.add('and fac_forma = :forma');
              dm.Query1.sql.add('and tfa_codigo = :tipo');
              dm.Query1.sql.add('and fac_numero = :num');
              dm.Query1.sql.add('and suc_codigo = :suc');
              dm.Query1.sql.add('and ncr_monto > 0');
              dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
              dm.Query1.Parameters.ParamByName('forma').Value := QFacturaFAC_FORMA.Value;
              dm.Query1.Parameters.ParamByName('tipo').Value := QFacturaTFA_CODIGO.Value;
              dm.Query1.Parameters.ParamByName('num').Value  := QFacturaFAC_NUMERO.Value;
              dm.Query1.Parameters.ParamByName('suc').Value  := QFacturaSUC_CODIGO.Value;
              dm.Query1.Open;
              if dm.Query1.RecordCount > 0 then
              begin
                if MessageDlg('SE HA UTILIZADO UNA NOTA DE CREDITO EN ESTA FACTURA'+#13+
                              'DESEA IMPRIMIRLA?',mtConfirmation,[mbyes,mbno],0) = mryes then
                begin
                  Application.CreateForm(tRNotaCredito, RNotaCredito);
                  if dm.QParametrosPAR_FORMATONC.Value = 2 then
                  begin
                    while not dm.Query1.Eof do
                    begin
                      RNotaCredito.QNota.Parameters.ParamByName('numero').Value := dm.Query1.fieldbyname('ncr_numero').AsInteger;
                      RNotaCredito.QNota.Parameters.ParamByName('suc').Value := QFacturaSUC_CODIGO.Value;
                      RNotaCredito.QNota.Open;
                      RNotaCredito.PrinterSetup;
                      RNotaCredito.Print;
                      dm.Query1.Next;
                    end;
                  end
                  else
                  begin
                    while not dm.Query1.Eof do
                    begin
                      Imp40ColumnasNC;
                      dm.Query1.Next;
                    end;
                  end;
                  RNotaCredito.Destroy;
                end;



              //si es para agregados
              if vl_accion = 1 then
              begin
                if (dm.QParametrospar_fac_preimpresa.Value = 'True') and (dm.QParametrospar_formato_preimpreso.Value = 'QRAgregados') then
                begin
                  If MessageDlg('Desea generar el conduce?',mtConfirmation,[mbyes,mbno],0) = mryes then
                  begin
                    frmmain.ActivaForma(tfrmConduce, tform(frmConduce));
                    frmConduce.edCliente.Text := edCliente.Text;
                    frmConduce.QConduceCLI_CODIGO.Value     := QFacturaCLI_CODIGO.Value;
                    frmConduce.QConduceCLI_REFERENCIA.Value := QFacturaCLI_REFERENCIA.Value;
                    frmConduce.QConduceCON_NOMBRE.Value     := QFacturaFAC_NOMBRE.Value;
                    frmConduce.QConduceCON_DIRECCION.Value  := QFacturaFAC_DIRECCION.Value;
                    frmConduce.QConduceCON_FAX.Value        := QFacturaFAC_FAX.Value;
                    frmConduce.QConduceCON_TELEFONO.Value   := QFacturaFAC_TELEFONO.Value;
                    frmConduce.QConduceCON_LOCALIDAD.Value  := QFacturaFAC_LOCALIDAD.Value;
                    frmConduce.QConducePlaca.Value          := QFacturaPlaca.Value;
                    frmConduce.QConduceChofer.Value         := QFacturaChofer.Value;
                    frmConduce.QConduceALM_CODIGO.Value     := QFacturaALM_CODIGO.Value;
                    frmConduce.QConduceVEN_CODIGO.Value     := QFacturaVEN_CODIGO.Value;
                    frmConduce.QConduceSUC_CODIGO.Value     := QFacturaSUC_CODIGO.Value;
                    frmConduce.QConduceMarca.Value          := QFacturaMarca.Value;
                    frmConduce.QConduceModelo.Value         := QFacturaModelo.Value;
                    frmConduce.QConduceMetraje.Value        := QFacturaMetraje.Value;
                    frmConduce.QConduceCompania.Value       := QFacturaCompania.Value;

                    frmConduce.BuscaFactura(QFacturaFAC_NUMERO.Value, QFacturaSUC_CODIGO.Value, QFacturaTFA_CODIGO.Value, QFacturaFAC_FORMA.Value);

                    frmConduce.QConducefac_forma.Value      := QFacturaFAC_FORMA.Value;
                    frmConduce.QConducetfa_codigo.Value     := QFacturaTFA_CODIGO.Value;
                    frmConduce.QConducefac_numero.Value     := QFacturaFAC_NUMERO.Value;
                    frmConduce.QConduceCON_FECHA.Value      := QFacturaFAC_FECHA.Value;
                  end;
                  end;
                  end;
        END;
        end;











              Totaliza := true;
              QDetalle.close;
              QFactura.close;
              QFactura.Parameters.ParamByName('emp').Value    := DM.vp_cia;
              QFactura.Parameters.ParamByName('tipo').Value   := -1;
              QFactura.Parameters.ParamByName('forma').Value   := 'A';
              QFactura.Parameters.ParamByName('numero').Value := -1;
              QFactura.Parameters.ParamByName('suc').Value := -1;
              QFactura.open;
              QFactura.insert;

            Totaliza := true;
            PageControl1.ActivePageIndex := 0;
            //dbvendedor.Text :='0';
            //tvendedor.Text :='';
            Grid.SetFocus;

 end;



procedure TfrmFactura.QDetalleNewRecord(DataSet: TDataSet);
var medida:String;
begin
   CASE RG_BuscaDet.ItemIndex OF
  0:Grid.Columns[0].FieldName := 'PRO_CODIGO';
  1:Grid.Columns[0].FieldName := 'PRO_RORIGINAL';
  2:Grid.Columns[0].FieldName := 'PRO_RFABRIC';
  end;



  
  IDProducto := 0;
  oNombre:=EmptyStr;
  oTelefono:=EmptyStr;
  oCiudad:= dm.QEmpresasEMP_LOCALIDAD.Value;
  dCiudad:=EmptyStr;
  dNombre:=EmptyStr;
  dTelefono:=EmptyStr;
  Descripcion:=EmptyStr;
  dPagarDestino := False;

  Realizado := False;
  QDetalledet_selectivo_ad.Value  := 0;
  QDetalledet_selectivo_con.Value := 0;
  QDetalleEMP_CODIGO.value := dm.vp_cia;
  QDetalleFAC_FORMA.value  := QFacturaFAC_FORMA.value;
  QDetalleDET_STATUS.value := 'FAC';
  QDetalleDET_COSTO.value  := 0;
  QDetalleDET_CANTDEVUELTA.value := 0;
  IF QDetalleDET_DESCUENTO.ReadOnly = False THEN 
  QDetalleDET_DESCUENTO.Value    := 0;
  QDetalleDET_ITBIS.value  := 0;
  QDetalleSUC_CODIGO.Value := QFacturaSUC_CODIGO.Value;
  QDetalleDET_CANTIDAD.Value  := 1;{20170705}

  if not QDetallePRO_CODIGO.isnull then
   medida := dm.getUnidadMedida (QDetallePRO_CODIGO.value)
 else
   medida := MedidaAlmacen;
  QDetalleDET_MEDIDA.Value :=medida;
  QDetalleTFA_CODIGO.Value := StrToInt(trim(edTipo.Text));
  Grid.SelectedIndex := 0;
end;

procedure TfrmFactura.btPedidoClick(Sender: TObject);
var
  a, moneda : integer;
  CtaCosto, CtaInvent, CtaIngreso, CtaDescuento : String;
begin
if DM.QParametrospar_formato_preimpreso.Value <> 'Cepinta' then begin
  if not QPedidos.Active then
  begin
    QPedidos.Close;
    QPedidos.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    QPedidos.Parameters.ParamByName('tfa').Value := -1;
    QPedidos.Parameters.ParamByName('for').Value := 'A';
    QPedidos.Parameters.ParamByName('num').Value := -1;
    QPedidos.Parameters.ParamByName('suc').Value := -1;
    QPedidos.Open;
  end;
  Application.CreateForm(tfrmPedidosFactura, frmPedidosFactura);
  frmPedidosFactura.ShowModal;
  if MessageDlg('Introducir pedidos en la factura?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    //eliminando detalles de la factura
    QDetalle.close;
    QDetalle.open;
    QDetalle.DisableControls;
    QDetalle.First;
    Totaliza := false;
    Buscando := True;
    for a := 1 to QDetalle.RecordCount do
      QDetalle.Delete;

    //Insertando productos de los pedidos

    QPedidos.First;
    while not QPedidos.Eof do
    begin
      Query1.close;
      Query1.sql.clear;
      Query1.sql.add('select d.pro_codigo, d.pro_roriginal, d.pro_rfabric, d.det_medida,');
      Query1.sql.add('d.det_cantidad, d.det_precio, d.det_conitbis, d.det_itbis, d.det_nota,');
      Query1.sql.add('d.det_descuento, d.det_descripcion, d.det_manejaescala, d.det_Escala,');
      Query1.sql.add('p.pro_Servicio, p.pro_costo, p.dep_codigo, p.fam_codigo');
      Query1.sql.add('from det_pedido d, productos p');
      Query1.sql.add('where d.pro_codigo = p.pro_codigo');
      Query1.sql.add('and d.emp_codigo = :emp');
      Query1.sql.add('and p.emp_codigo = :empinv');
      Query1.sql.add('and d.ped_tipo = '+#39+'C'+#39);
      Query1.sql.add('and d.ped_numero = :numero');
      Query1.sql.add('and d.suc_codigo = :suc');
      Query1.Parameters.parambyname('emp').Value    := dm.QEmpresasEMP_CODIGO.value;
      Query1.Parameters.parambyname('empinv').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      Query1.Parameters.parambyname('numero').Value := QPedidosped_numero.Value;
      Query1.Parameters.parambyname('suc').Value    := QFacturaSUC_CODIGO.Value;
      Query1.open;

      a := 0;
      while not Query1.eof do
      begin
        a := a + 1;
        QDetalle.append;

        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select fam_cta_costo, fam_cta_inventario, fam_cta_ingreso, fam_cta_descuento from familias');
        dm.Query1.SQL.Add('where emp_codigo = :emp');
        dm.Query1.SQL.Add('and fam_codigo = :fam');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
        dm.Query1.Parameters.ParamByName('fam').Value := Query1.fieldbyname('fam_codigo').AsInteger;
        dm.Query1.Open;

        CtaCosto     := '';
        CtaInvent    := '';
        CtaIngreso   := '';
        CtaDescuento := '';
        if Query1.RecordCount > 0 then
        begin
          CtaCosto     := dm.Query1.fieldbyname('fam_cta_costo').AsString;
          CtaInvent    := dm.Query1.fieldbyname('fam_cta_inventario').AsString;
          CtaIngreso   := dm.Query1.fieldbyname('fam_cta_ingreso').AsString;
          CtaDescuento := dm.Query1.fieldbyname('fam_cta_descuento').AsString;
          QDetallepro_ctacosto.Value      := CtaCosto;
          QDetallepro_ctainvent.Value     := CtaInvent;
          QDetallepro_ctaingreso.Value    := CtaIngreso;
          QDetallepro_ctadescuento.Value  := CtaDescuento;
        end;

        QDetalleEMP_CODIGO.value    := dm.QEmpresasEMP_CODIGO.value;
        QDetalleDET_SECUENCIA.value := a;
if not dm.pr_verifica_disp(dm.QParametrosPAR_INVEMPRESA.AsString,
                       QFacturaALM_CODIGO.AsString,
                       Query1.fieldbyname('PRO_CODIGO').AsString,
                       Query1.fieldbyname('DET_CANTIDAD').AsString,
                       Query1.fieldbyname('DET_MEDIDA').AsString,
                       IntToStr(dm.Usuario),
                       inttostr(DBLookupComboBox2.KeyValue),
                       QFacturatip_codigo.AsString,
                       QFacturaFAC_FORMA.AsString,
                       QFactura.Parameters.parambyname('numero').Value)then
  QDetalleDET_CANTIDAD.value  := dm.vCantArt
else
  QDetalleDET_CANTIDAD.value  := Query1.fieldbyname('det_cantidad').asfloat;
        QDetalleDET_ITBIS.value     := Query1.fieldbyname('det_itbis').asfloat;
        if QDetalleDET_DESCUENTO.ReadOnly = False then 
        QDetalleDET_DESCUENTO.value := Query1.fieldbyname('det_descuento').asfloat;
        QDetalleDET_CONITBIS.value  := Query1.fieldbyname('det_conitbis').asstring;
        QDetallePRO_CODIGO.value    := Query1.fieldbyname('pro_codigo').asinteger;
        QDetallePRO_RORIGINAL.value := Query1.fieldbyname('pro_roriginal').asstring;
        QDetallePRO_RFABRIC.value   := Query1.fieldbyname('pro_rfabric').asstring;
        QDetallePRO_NOMBRE.Value    := Query1.FieldByName('det_descripcion').AsString;
        QDetalleDET_MANEJAESCALA.Value := Query1.fieldbyname('det_manejaescala').asstring;
        QDetalleDET_ESCALA.Value    := Query1.fieldbyname('det_escala').asstring;
        QDetalleDET_MEDIDA.Value    := Query1.fieldbyname('det_medida').asstring;
        QDetalleDET_COSTO.Value     := Query1.fieldbyname('pro_costo').asfloat;
        QDetallePED_NUMERO.Value    := QPedidosped_numero.Value;
        QDetallePRO_SERVICIO.Value  := Query1.fieldbyname('pro_servicio').asstring;
        QDetalleDET_PRECIO.value    := Query1.fieldbyname('det_precio').asfloat;
        if Moneda <> dm.QParametrospar_moneda_local.Value then
           QDetalleDET_PRECIO.value := QDetalleDET_PRECIO.value * QFacturaFAC_TASA.Value;

        QDetalleDET_NOTA.Value      := Query1.fieldbyname('det_nota').Value;
        QDetallealm_codigo.Value    := QFacturaALM_CODIGO.Value;

        {if not Query1.fieldbyname('dep_codigo').IsNull then
        begin
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('select alm_codigo from departamentos');
          dm.Query1.SQL.Add('where emp_codigo = :emp');
          dm.Query1.SQL.Add('and dep_codigo = :dep');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
          dm.Query1.Parameters.ParamByName('dep').Value := Query1.fieldbyname('dep_codigo').AsInteger;
          dm.Query1.Open;
          if not dm.Query1.FieldByName('alm_codigo').IsNull then
            QDetallealm_codigo.Value := dm.Query1.FieldByName('alm_codigo').AsInteger;
        end;}

        if CtaIngreso <> '' then
        begin
          if not QCuentas.Locate('cat_cuenta', CtaIngreso, []) then
          begin
            QCuentas.Append;
            QCuentascat_cuenta.Value := CtaIngreso;
            QCuentasdet_origen.Value := 'Credito';
            if dm.QParametrospar_itbisincluido.Value = 'True' then
              //QCuentasdet_monto.Value  := QCuentasdet_monto.Value + (QDetalleValor.Value - (QDetalleDET_TOTALITBIS.Value * QDetalleDET_CANTIDAD.Value))
                QCuentasdet_monto.Value  := QCuentasdet_monto.Value + ((QDetalleValor.Value +
                                                                    (QDetalleDET_TOTALDESC.Value * QDetalleDET_CANTIDAD.Value)) -
                                                                    (QDetalleDET_TOTALITBIS.Value * QDetalleDET_CANTIDAD.Value))
            else
              QCuentasdet_monto.Value  := QCuentasdet_monto.Value +(QDetalleDET_PRECIO.Value * QDetalleDET_CANTIDAD.Value);

            QCuentas.Post;
          end
          else
          begin
            QCuentas.Edit;;
            QCuentasdet_origen.Value := 'Credito';
            if dm.QParametrospar_itbisincluido.Value = 'True' then
              QCuentasdet_monto.Value  := QCuentasdet_monto.Value + ((QDetalleValor.Value +
                                                                  (QDetalleDET_TOTALDESC.Value * QDetalleDET_CANTIDAD.Value)) -
                                                                  (QDetalleDET_TOTALITBIS.Value * QDetalleDET_CANTIDAD.Value))
            else
              QCuentasdet_monto.Value  := QCuentasdet_monto.Value +((QDetalleDET_PRECIO.Value - QDetalleCalcDesc.Value) * QDetalleDET_CANTIDAD.Value);

            QCuentas.Post;
          end;
        end;

        //Cuentas de Costo
        if Trim(CtaCosto) <> '' then
        begin
          if not QCuentas.Locate('cat_cuenta', CtaCosto, []) then
          begin
            QCuentas.Append;
            QCuentascat_cuenta.Value := CtaCosto;
            QCuentasdet_origen.Value := 'Debito';
            QCuentasdet_monto.Value  :=(QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value);
            QCuentas.Post;
          end
          else
          begin
            QCuentas.Edit;;
            QCuentasdet_origen.Value := 'Debito';
            QCuentasdet_monto.Value  := QCuentasdet_monto.Value + (QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value);
            QCuentas.Post;
          end;
        end;

        //Cuenta de Inventario
        if Trim(CtaInvent) <> '' then
        begin
          if not QCuentas.Locate('cat_cuenta', CtaInvent, []) then
          begin
            QCuentas.Append;
            QCuentascat_cuenta.Value := CtaInvent;
            QCuentasdet_origen.Value := 'Credito';
            QCuentasdet_monto.Value  := (QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value);
            QCuentas.Post;
          end
          else
          begin
            QCuentas.Edit;;
            QCuentasdet_origen.Value := 'Credito';
            QCuentasdet_monto.Value  := QCuentasdet_monto.Value + (QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value);
            QCuentas.Post;
          end;
        end;

        //Cuenta de Descuento
        if Trim(CtaDescuento) <> '' then
        begin
          if not QCuentas.Locate('cat_cuenta', CtaDescuento, []) then
          begin
            QCuentas.Append;
            QCuentascat_cuenta.Value := CtaDescuento;
            QCuentasdet_origen.Value := 'Debito';
            QCuentasdet_monto.Value  := QDetalleCalcDesc.Value;
            QCuentas.Post;
          end
          else
          begin
            QCuentas.Edit;;
            QCuentasdet_origen.Value := 'Debito';
            QCuentasdet_monto.Value  := QCuentasdet_monto.Value + QDetalleCalcDesc.Value;
            QCuentas.Post;
          end;
        end;

        QDetalle.post;
        Query1.next;
      end;
      QPedidos.Next;
    end;
    TotalizarCuentas;


    QPedidos.First;
    QPedidos.EnableControls;

    QDetalle.first;
    QDetalle.enablecontrols;
    Totaliza := true;
    Totalizar;

    Buscando := False;
    PageControl1.ActivePageIndex := 0;
    Grid.setfocus;
  end;
end;

if DM.QParametrospar_formato_preimpreso.Value = 'Cepinta' then begin
  if DM.ExistTable('Ordenes_Taller') then begin
  if not qOrdenesTaller.Active then
  begin
    qOrdenesTaller.Close;
    qOrdenesTaller.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    qOrdenesTaller.Parameters.ParamByName('cli').Value := QFacturaCLI_CODIGO.Value;
    qOrdenesTaller.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    qOrdenesTaller.Open;
  end;
  Application.CreateForm(tfrmOrdenesFactura, frmOrdenesFactura);
  frmOrdenesFactura.ShowModal;
  if MessageDlg('Introducir las Ordenes en la factura?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    //eliminando detalles de la factura
    QDetalle.close;
    QDetalle.open;
    QDetalle.DisableControls;
    QDetalle.First;
    Totaliza := false;
    Buscando := True;
    for a := 1 to QDetalle.RecordCount do
      QDetalle.Delete;

    //Insertando productos de los pedidos

    qOrdenesTaller.First;
    while not qOrdenesTaller.Eof do
    begin
      qDetalleOrdenTaller.close;
      qDetalleOrdenTaller.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
      qDetalleOrdenTaller.Parameters.parambyname('num').Value := qOrdenesTallerped_numero.Value;
      qDetalleOrdenTaller.Parameters.parambyname('suc').Value := QFacturaSUC_CODIGO.Value;
      qDetalleOrdenTaller.open;

      a := 0;
      while not qDetalleOrdenTaller.eof do
      begin
        a := a + 1;
        QDetalle.append;


        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select fam_cta_costo, fam_cta_inventario, fam_cta_ingreso, fam_cta_descuento from familias');
        dm.Query1.SQL.Add('where emp_codigo = :emp');
        dm.Query1.SQL.Add('and fam_codigo = :fam');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
        dm.Query1.Parameters.ParamByName('fam').Value := qDetalleOrdenTallerfam_codigo.Value;
        dm.Query1.Open;

        CtaCosto     := '';
        CtaInvent    := '';
        CtaIngreso   := '';
        CtaDescuento := '';
        if dm.Query1.RecordCount > 0 then
        begin
          CtaCosto     := dm.Query1.fieldbyname('fam_cta_costo').AsString;
          CtaInvent    := dm.Query1.fieldbyname('fam_cta_inventario').AsString;
          CtaIngreso   := dm.Query1.fieldbyname('fam_cta_ingreso').AsString;
          CtaDescuento := dm.Query1.fieldbyname('fam_cta_descuento').AsString;
          QDetallepro_ctacosto.Value      := CtaCosto;
          QDetallepro_ctainvent.Value     := CtaInvent;
          QDetallepro_ctaingreso.Value    := CtaIngreso;
          QDetallepro_ctadescuento.Value  := CtaDescuento;
        end;

        QDetalleEMP_CODIGO.value    := dm.QEmpresasEMP_CODIGO.value;
        QDetalleDET_SECUENCIA.value := a;
if not dm.pr_verifica_disp(dm.QParametrosPAR_INVEMPRESA.AsString,
                       QFacturaALM_CODIGO.AsString,
                       qDetalleOrdenTallerPRO_CODIGO.AsString,
                       qDetalleOrdenTallerDET_CANTIDAD.AsString,
                       qDetalleOrdenTallerDET_MEDIDA.AsString,
                       IntToStr(dm.Usuario),
                       inttostr(DBLookupComboBox2.KeyValue),
                       QFacturatip_codigo.AsString,
                       QFacturaFAC_FORMA.AsString,
                       QFactura.Parameters.parambyname('numero').Value)then
  QDetalleDET_CANTIDAD.value  := dm.vCantArt
else
        QDetalleDET_CANTIDAD.value     := qDetalleOrdenTallerDET_CANTIDAD.asfloat;
        QDetalleDET_ITBIS.value        := qDetalleOrdenTallerDET_ITBIS.asfloat;
        if QDetalleDET_DESCUENTO.ReadOnly = False then 
        QDetalleDET_DESCUENTO.value    := qDetalleOrdenTallerDET_DESCUENTO.asfloat;
        QDetalleDET_CONITBIS.value     := qDetalleOrdenTallerpro_itbis.asstring;
        QDetallePRO_CODIGO.value       := qDetalleOrdenTallerPro_codigo.asinteger;
        QDetallePRO_RORIGINAL.value    := qDetalleOrdenTallerpro_roriginal.asstring;
        QDetallePRO_RFABRIC.value      := qDetalleOrdenTallerpro_rfabric.asstring;
        QDetallePRO_NOMBRE.Value       := qDetalleOrdenTallerdet_descripcion.AsString;
        QDetalleDET_MANEJAESCALA.Value := qDetalleOrdenTallerdet_manejaescala.asstring;
        QDetalleDET_ESCALA.Value       := qDetalleOrdenTallerdet_escala.asstring;
        QDetalleDET_MEDIDA.Value       := qDetalleOrdenTallerdet_medida.asstring;
        QDetalleDET_COSTO.Value        := qDetalleOrdenTallerpro_costo.asfloat;
        QDetallePED_NUMERO.Value       := QPedidosped_numero.Value;
        QDetallePRO_SERVICIO.Value     := qDetalleOrdenTallerpro_servicio.asstring;
        QDetalleDET_PRECIO.value       := qDetalleOrdenTallerdet_precio.asfloat;
        if Moneda <> dm.QParametrospar_moneda_local.Value then
           QDetalleDET_PRECIO.value := QDetalleDET_PRECIO.value * QFacturaFAC_TASA.Value;

        QDetalleDET_NOTA.Value      := qDetalleOrdenTallerdet_nota.Value;
        QDetallealm_codigo.Value    := QFacturaALM_CODIGO.Value;
        QDetalleDET_PRECIO.Value   := qDetalleOrdenTallerDET_PRECIO.Value;
        QDetalleDET_PRECIO1.Value   := qDetalleOrdenTallerDET_PRECIO.Value;
        QDetalleDET_PRECIO2.Value   := qDetalleOrdenTallerDET_PRECIO.Value;
        QDetalleDET_PRECIO3.Value   := qDetalleOrdenTallerDET_PRECIO.Value;

        {if not qDetalleOrdenTallerdep_codigo.IsNull then
        begin
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('select alm_codigo from departamentos');
          dm.Query1.SQL.Add('where emp_codigo = :emp');
          dm.Query1.SQL.Add('and dep_codigo = :dep');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
          dm.Query1.Parameters.ParamByName('dep').Value := qDetalleOrdenTallerdep_codigo.AsInteger;
          dm.Query1.Open;
          if not dm.Query1.FieldByName('alm_codigo').IsNull then
            QDetallealm_codigo.Value := dm.Query1.FieldByName('alm_codigo').AsInteger;
        end;}

        if CtaIngreso <> '' then
        begin
          if not QCuentas.Locate('cat_cuenta', CtaIngreso, []) then
          begin
            QCuentas.Append;
            QCuentascat_cuenta.Value := CtaIngreso;
            QCuentasdet_origen.Value := 'Credito';
            if dm.QParametrospar_itbisincluido.Value = 'True' then
              //QCuentasdet_monto.Value  := QCuentasdet_monto.Value + (QDetalleValor.Value - (QDetalleDET_TOTALITBIS.Value * QDetalleDET_CANTIDAD.Value))
                QCuentasdet_monto.Value  := QCuentasdet_monto.Value + ((QDetalleValor.Value +
                                                                    (QDetalleDET_TOTALDESC.Value * QDetalleDET_CANTIDAD.Value)) -
                                                                    (QDetalleDET_TOTALITBIS.Value * QDetalleDET_CANTIDAD.Value))
            else
              QCuentasdet_monto.Value  := QCuentasdet_monto.Value +(QDetalleDET_PRECIO.Value * QDetalleDET_CANTIDAD.Value);

            QCuentas.Post;
          end
          else
          begin
            QCuentas.Edit;;
            QCuentasdet_origen.Value := 'Credito';
            if dm.QParametrospar_itbisincluido.Value = 'True' then
              QCuentasdet_monto.Value  := QCuentasdet_monto.Value + ((QDetalleValor.Value +
                                                                  (QDetalleDET_TOTALDESC.Value * QDetalleDET_CANTIDAD.Value)) -
                                                                  (QDetalleDET_TOTALITBIS.Value * QDetalleDET_CANTIDAD.Value))
            else
              QCuentasdet_monto.Value  := QCuentasdet_monto.Value +((QDetalleDET_PRECIO.Value - QDetalleCalcDesc.Value) * QDetalleDET_CANTIDAD.Value);

            QCuentas.Post;
          end;
        end;

        //Cuentas de Costo
        if Trim(CtaCosto) <> '' then
        begin
          if not QCuentas.Locate('cat_cuenta', CtaCosto, []) then
          begin
            QCuentas.Append;
            QCuentascat_cuenta.Value := CtaCosto;
            QCuentasdet_origen.Value := 'Debito';
            QCuentasdet_monto.Value  :=(QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value);
            QCuentas.Post;
          end
          else
          begin
            QCuentas.Edit;;
            QCuentasdet_origen.Value := 'Debito';
            QCuentasdet_monto.Value  := QCuentasdet_monto.Value + (QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value);
            QCuentas.Post;
          end;
        end;

        //Cuenta de Inventario
        if Trim(CtaInvent) <> '' then
        begin
          if not QCuentas.Locate('cat_cuenta', CtaInvent, []) then
          begin
            QCuentas.Append;
            QCuentascat_cuenta.Value := CtaInvent;
            QCuentasdet_origen.Value := 'Credito';
            QCuentasdet_monto.Value  := (QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value);
            QCuentas.Post;
          end
          else
          begin
            QCuentas.Edit;;
            QCuentasdet_origen.Value := 'Credito';
            QCuentasdet_monto.Value  := QCuentasdet_monto.Value + (QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value);
            QCuentas.Post;
          end;
        end;

        //Cuenta de Descuento
        if Trim(CtaDescuento) <> '' then
        begin
          if not QCuentas.Locate('cat_cuenta', CtaDescuento, []) then
          begin
            QCuentas.Append;
            QCuentascat_cuenta.Value := CtaDescuento;
            QCuentasdet_origen.Value := 'Debito';
            QCuentasdet_monto.Value  := QDetalleCalcDesc.Value;
            QCuentas.Post;
          end
          else
          begin
            QCuentas.Edit;;
            QCuentasdet_origen.Value := 'Debito';
            QCuentasdet_monto.Value  := QCuentasdet_monto.Value + QDetalleCalcDesc.Value;
            QCuentas.Post;
          end;
        end;

        QDetalle.post;
        qDetalleOrdenTaller.next;
      end;
      qOrdenesTaller.Next;
    end;
    TotalizarCuentas;

    qDetalleOrdenTaller.First;
    qDetalleOrdenTaller.EnableControls;

    QDetalle.first;
    QDetalle.enablecontrols;

    total                       := qOrdenesTallersubtotal.Value;
    QFacturaFAC_ITBIS.Value     := qOrdenesTallerped_itbis.Value;
    QFacturaFAC_DESCUENTO.Value := qOrdenesTallerdescuento.Value;
    QFacturaFAC_TOTAL.Value     := qOrdenesTallerped_total.Value;

    Buscando := False;
    PageControl1.ActivePageIndex := 0;
    Grid.setfocus;
  end;
end;
end;

if DM.QParametrospar_formato_preimpreso.Value = 'Cepinta' then begin
  if DM.ExistTable('Ordenes_Taller') then begin
  if not qOrdenesTaller.Active then
  begin
    qOrdenesTaller.Close;
    qOrdenesTaller.Parameters.ParamByName('emp').Value := dm.vp_cia;
    qOrdenesTaller.Parameters.ParamByName('cli').Value := QFacturaCLI_CODIGO.Value;
    qOrdenesTaller.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    qOrdenesTaller.Open;
  end;
  Application.CreateForm(tfrmOrdenesFactura, frmOrdenesFactura);
  frmOrdenesFactura.ShowModal;
  if MessageDlg('Introducir las Ordenes en la factura?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    //eliminando detalles de la factura
    QDetalle.close;
    QDetalle.open;
    QDetalle.DisableControls;
    QDetalle.First;
    Totaliza := false;
    Buscando := True;
    for a := 1 to QDetalle.RecordCount do
      QDetalle.Delete;

    //Insertando productos de los pedidos

    qOrdenesTaller.First;
    while not qOrdenesTaller.Eof do
    begin
      qDetalleOrdenTaller.close;
      qDetalleOrdenTaller.Parameters.parambyname('emp').Value := dm.vp_cia;
      qDetalleOrdenTaller.Parameters.parambyname('num').Value := qOrdenesTallerped_numero.Value;
      qDetalleOrdenTaller.Parameters.parambyname('suc').Value := QFacturaSUC_CODIGO.Value;
      qDetalleOrdenTaller.open;

      a := 0;
      while not qDetalleOrdenTaller.eof do
      begin
        a := a + 1;
        QDetalle.append;


        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select fam_cta_costo, fam_cta_inventario, fam_cta_ingreso, fam_cta_descuento from familias');
        dm.Query1.SQL.Add('where emp_codigo = :emp');
        dm.Query1.SQL.Add('and fam_codigo = :fam');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
        dm.Query1.Parameters.ParamByName('fam').Value := qDetalleOrdenTallerfam_codigo.Value;
        dm.Query1.Open;

        CtaCosto     := '';
        CtaInvent    := '';
        CtaIngreso   := '';
        CtaDescuento := '';
        if dm.Query1.RecordCount > 0 then
        begin
          CtaCosto     := dm.Query1.fieldbyname('fam_cta_costo').AsString;
          CtaInvent    := dm.Query1.fieldbyname('fam_cta_inventario').AsString;
          CtaIngreso   := dm.Query1.fieldbyname('fam_cta_ingreso').AsString;
          CtaDescuento := dm.Query1.fieldbyname('fam_cta_descuento').AsString;
          QDetallepro_ctacosto.Value      := CtaCosto;
          QDetallepro_ctainvent.Value     := CtaInvent;
          QDetallepro_ctaingreso.Value    := CtaIngreso;
          QDetallepro_ctadescuento.Value  := CtaDescuento;
        end;

        QDetalleEMP_CODIGO.value    := dm.vp_cia;
        QDetalleDET_SECUENCIA.value := a;
if not dm.pr_verifica_disp(QFacturaEMP_CODIGO.AsString,
                       QFacturaALM_CODIGO.AsString,
                       qDetalleOrdenTallerPRO_CODIGO.AsString,
                       qDetalleOrdenTallerDET_CANTIDAD.AsString,
                       qDetalleOrdenTallerDET_MEDIDA.AsString,
                       IntToStr(dm.Usuario),
                       inttostr(DBLookupComboBox2.KeyValue),
                       QFacturatip_codigo.AsString,
                       QFacturaFAC_FORMA.AsString,
                       QFactura.Parameters.parambyname('numero').Value)then
  QDetalleDET_CANTIDAD.value  := dm.vCantArt
else
        QDetalleDET_CANTIDAD.value     := qDetalleOrdenTallerDET_CANTIDAD.asfloat;
        QDetalleDET_ITBIS.value        := qDetalleOrdenTallerDET_ITBIS.asfloat;
        if QDetalleDET_DESCUENTO.ReadOnly = False then 
        QDetalleDET_DESCUENTO.value    := qDetalleOrdenTallerDET_DESCUENTO.asfloat;
        QDetalleDET_CONITBIS.value     := qDetalleOrdenTallerpro_itbis.asstring;
        QDetallePRO_CODIGO.value       := qDetalleOrdenTallerPro_codigo.asinteger;
        QDetallePRO_RORIGINAL.value    := qDetalleOrdenTallerpro_roriginal.asstring;
        QDetallePRO_RFABRIC.value      := qDetalleOrdenTallerpro_rfabric.asstring;
        QDetallePRO_NOMBRE.Value       := qDetalleOrdenTallerdet_descripcion.AsString;
        QDetalleDET_MANEJAESCALA.Value := qDetalleOrdenTallerdet_manejaescala.asstring;
        QDetalleDET_ESCALA.Value       := qDetalleOrdenTallerdet_escala.asstring;
        QDetalleDET_MEDIDA.Value       := qDetalleOrdenTallerdet_medida.asstring;
        QDetalleDET_COSTO.Value        := qDetalleOrdenTallerpro_costo.asfloat;
        QDetallePED_NUMERO.Value       := QPedidosped_numero.Value;
        QDetallePRO_SERVICIO.Value     := qDetalleOrdenTallerpro_servicio.asstring;
        QDetalleDET_PRECIO.value       := qDetalleOrdenTallerdet_precio.asfloat;
        if Moneda <> dm.QParametrospar_moneda_local.Value then
           QDetalleDET_PRECIO.value := QDetalleDET_PRECIO.value * QFacturaFAC_TASA.Value;

        QDetalleDET_NOTA.Value      := qDetalleOrdenTallerdet_nota.Value;
        QDetallealm_codigo.Value    := QFacturaALM_CODIGO.Value;
        QDetalleDET_PRECIO.Value   := qDetalleOrdenTallerDET_PRECIO.Value;
        QDetalleDET_PRECIO1.Value   := qDetalleOrdenTallerDET_PRECIO.Value;
        QDetalleDET_PRECIO2.Value   := qDetalleOrdenTallerDET_PRECIO.Value;
        QDetalleDET_PRECIO3.Value   := qDetalleOrdenTallerDET_PRECIO.Value;

        {if not qDetalleOrdenTallerdep_codigo.IsNull then
        begin
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('select alm_codigo from departamentos');
          dm.Query1.SQL.Add('where emp_codigo = :emp');
          dm.Query1.SQL.Add('and dep_codigo = :dep');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
          dm.Query1.Parameters.ParamByName('dep').Value := qDetalleOrdenTallerdep_codigo.AsInteger;
          dm.Query1.Open;
          if not dm.Query1.FieldByName('alm_codigo').IsNull then
            QDetallealm_codigo.Value := dm.Query1.FieldByName('alm_codigo').AsInteger;
        end;}

        if CtaIngreso <> '' then
        begin
          if not QCuentas.Locate('cat_cuenta', CtaIngreso, []) then
          begin
            QCuentas.Append;
            QCuentascat_cuenta.Value := CtaIngreso;
            QCuentasdet_origen.Value := 'Credito';
            if dm.QParametrospar_itbisincluido.Value = 'True' then
              //QCuentasdet_monto.Value  := QCuentasdet_monto.Value + (QDetalleValor.Value - (QDetalleDET_TOTALITBIS.Value * QDetalleDET_CANTIDAD.Value))
                QCuentasdet_monto.Value  := QCuentasdet_monto.Value + ((QDetalleValor.Value +
                                                                    (QDetalleDET_TOTALDESC.Value * QDetalleDET_CANTIDAD.Value)) -
                                                                    (QDetalleDET_TOTALITBIS.Value * QDetalleDET_CANTIDAD.Value))
            else
              QCuentasdet_monto.Value  := QCuentasdet_monto.Value +(QDetalleDET_PRECIO.Value * QDetalleDET_CANTIDAD.Value);

            QCuentas.Post;
          end
          else
          begin
            QCuentas.Edit;;
            QCuentasdet_origen.Value := 'Credito';
            if dm.QParametrospar_itbisincluido.Value = 'True' then
              QCuentasdet_monto.Value  := QCuentasdet_monto.Value + ((QDetalleValor.Value +
                                                                  (QDetalleDET_TOTALDESC.Value * QDetalleDET_CANTIDAD.Value)) -
                                                                  (QDetalleDET_TOTALITBIS.Value * QDetalleDET_CANTIDAD.Value))
            else
              QCuentasdet_monto.Value  := QCuentasdet_monto.Value +((QDetalleDET_PRECIO.Value - QDetalleCalcDesc.Value) * QDetalleDET_CANTIDAD.Value);

            QCuentas.Post;
          end;
        end;

        //Cuentas de Costo
        if Trim(CtaCosto) <> '' then
        begin
          if not QCuentas.Locate('cat_cuenta', CtaCosto, []) then
          begin
            QCuentas.Append;
            QCuentascat_cuenta.Value := CtaCosto;
            QCuentasdet_origen.Value := 'Debito';
            QCuentasdet_monto.Value  :=(QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value);
            QCuentas.Post;
          end
          else
          begin
            QCuentas.Edit;;
            QCuentasdet_origen.Value := 'Debito';
            QCuentasdet_monto.Value  := QCuentasdet_monto.Value + (QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value);
            QCuentas.Post;
          end;
        end;

        //Cuenta de Inventario
        if Trim(CtaInvent) <> '' then
        begin
          if not QCuentas.Locate('cat_cuenta', CtaInvent, []) then
          begin
            QCuentas.Append;
            QCuentascat_cuenta.Value := CtaInvent;
            QCuentasdet_origen.Value := 'Credito';
            QCuentasdet_monto.Value  := (QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value);
            QCuentas.Post;
          end
          else
          begin
            QCuentas.Edit;;
            QCuentasdet_origen.Value := 'Credito';
            QCuentasdet_monto.Value  := QCuentasdet_monto.Value + (QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value);
            QCuentas.Post;
          end;
        end;

        //Cuenta de Descuento
        if Trim(CtaDescuento) <> '' then
        begin
          if not QCuentas.Locate('cat_cuenta', CtaDescuento, []) then
          begin
            QCuentas.Append;
            QCuentascat_cuenta.Value := CtaDescuento;
            QCuentasdet_origen.Value := 'Debito';
            QCuentasdet_monto.Value  := QDetalleCalcDesc.Value;
            QCuentas.Post;
          end
          else
          begin
            QCuentas.Edit;;
            QCuentasdet_origen.Value := 'Debito';
            QCuentasdet_monto.Value  := QCuentasdet_monto.Value + QDetalleCalcDesc.Value;
            QCuentas.Post;
          end;
        end;

        QDetalle.post;
        qDetalleOrdenTaller.next;
      end;
      qOrdenesTaller.Next;
    end;
    TotalizarCuentas;

    qDetalleOrdenTaller.First;
    qDetalleOrdenTaller.EnableControls;

    QDetalle.first;
    QDetalle.enablecontrols;

    total                       := qOrdenesTallersubtotal.Value;
    QFacturaFAC_ITBIS.Value     := qOrdenesTallerped_itbis.Value;
    QFacturaFAC_DESCUENTO.Value := qOrdenesTallerdescuento.Value;
    QFacturaFAC_TOTAL.Value     := qOrdenesTallerped_total.Value;

    Buscando := False;
    PageControl1.ActivePageIndex := 0;
    Grid.setfocus;
  end;
end;
end;
end;

procedure TfrmFactura.btBuscaClick(Sender: TObject);
var
  a, tcl_codigo : integer;
begin
  vl_accion := 2;
 // DevolverExistencia;

  application.createform(tfrmBuscaFactura, frmBuscaFactura);
  frmBuscaFactura.DBLookupComboBox1.KeyValue := frmBuscaFactura.QTipoTFA_CODIGO.Value;
  frmBuscaFactura.DBLookupComboBox2.KeyValue := QFacturaSUC_CODIGO.Value;
  frmBuscaFactura.showmodal;
  if frmBuscaFactura.Busco = true then
  begin
    dm.ADOSigma.Execute('delete from facnotascredito where ncr_monto = 0');
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select fac_numero, fac_status, fac_abono, fac_fecha, fac_hold, tfa_codigo, emp_codigo');
    dm.Query1.SQL.Add(',(select tdo_codigo from tiposfactura where emp_codigo = f.emp_codigo and tfa_codigo = f.tfa_codigo) tdo_codigo');
    dm.Query1.sql.add('from facturas f');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and tfa_codigo = :tipo');
    dm.Query1.sql.add('and fac_forma = :forma');
    dm.Query1.sql.add('and fac_numero = :numero');
    dm.Query1.sql.add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('emp').Value    := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('tipo').Value   := frmBuscaFactura.DBLookupComboBox1.KeyValue;
    dm.Query1.Parameters.ParamByName('forma').Value  := frmBuscaFactura.rbForma.Items[frmBuscaFactura.rbForma.ItemIndex];
    dm.Query1.Parameters.ParamByName('numero').Value := strtoint(frmBuscaFactura.edNumero.text);
    dm.Query1.Parameters.ParamByName('suc').Value    := frmBuscaFactura.DBLookupComboBox2.KeyValue;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
    begin
      messagedlg('ESTA FACTURA NO EXISTE',mterror,[mbok],0);
      PageControl1.ActivePageIndex := 0;
      Grid.setfocus;
    end
    else if dm.Query1.fieldbyname('fac_status').asstring = 'ANU' then
    begin
      messagedlg('ESTA FACTURA ESTA ANULADA',mterror,[mbok],0);
      PageControl1.ActivePageIndex := 0;
      Grid.setfocus;
    END
    else if dm.Query1.fieldbyname('fac_hold').asstring = 'True' then
    begin
      messagedlg('ESTA FACTURA ESTA SIENDO MODIFICADA, NO PUEDE ABRIRLA NUEVAMENTE.....',mterror,[mbok],0);
      PageControl1.ActivePageIndex := 0;
      Grid.setfocus;
    end
    else if (dm.Query1.fieldbyname('fac_abono').asfloat > 0) and
    (dm.Query1.fieldbyname('fac_status').asstring = 'PEN') then
    begin
      messagedlg('ESTA FACTURA NO PUEDE MODIFICARSE'+#13+
                 'DEBIDO A QUE TIENE UN ABONO REALIZADO',mterror,[mbok],0);
      PageControl1.ActivePageIndex := 0;
      Grid.setfocus;
    end
    else if (dm.Query1.fieldbyname('fac_abono').asfloat > 0) and
    (dm.Query1.fieldbyname('fac_status').asstring = 'PAG') AND
    (dm.Query1.fieldbyname('tdo_codigo').Value = 'FCR') THEN BEGIN
      messagedlg('ESTA FACTURA NO PUEDE MODIFICARSE'+#13+
                 'DEBIDO A QUE ESTA FACTURA YA FUE PAGADA',mterror,[mbok],0);
      PageControl1.ActivePageIndex := 0;
      Grid.setfocus;
    end
    else
    if (dm.QParametrosPAR_FACMODIFICA.Text = 'False') then
    begin
     messagedlg('EL SISTEMA NO PERMITE MODIFICAR FACTURA',mterror,[mbok],0);
      PageControl1.ActivePageIndex := 0;
      Grid.setfocus;
    end ELSE
    if (DaysBetween(dm.Query1.fieldbyname('fac_fecha').asdatetime, Date) >
    dm.QParametrosPAR_FACDIASMODIFICA.Value)  then
    begin
      messagedlg('ESTA FACTURA NO PUEDE SER MODIFICADA',mterror,[mbok],0);
      PageControl1.ActivePageIndex := 0;
      Grid.setfocus;
    end
    else
    begin
      Query1.close;
      Query1.sql.clear;
      Query1.sql.add('select count(ncr_numero) as cant');
      Query1.sql.add('from facnotascredito');
      Query1.sql.add('where emp_codigo = :emp');
      Query1.sql.add('and fac_forma = :forma');
      Query1.sql.add('and tfa_Codigo = :tipo');
      Query1.sql.add('and fac_numero = :num');
      Query1.sql.add('and suc_codigo = :suc');
      Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
      Query1.Parameters.ParamByName('forma').Value := frmBuscaFactura.rbForma.Items[frmBuscaFactura.rbForma.ItemIndex];
      Query1.Parameters.ParamByName('num').Value  := strtoint(frmBuscaFactura.edNumero.text);
      Query1.Parameters.ParamByName('tipo').Value := frmBuscaFactura.DBLookupComboBox1.KeyValue;
      Query1.Parameters.ParamByName('suc').Value := frmBuscaFactura.DBLookupComboBox2.KeyValue;
      Query1.Open;
      if Query1.FieldByname('cant').AsInteger > 0 then
      begin
        MessageDlg('ESTA FACTURA FUE PAGADA CON UNA O VARIAS NOTAS'+#13+
                   'DE CREDITO Y NO PUEDE MODIFICARSE',mtError,[mbok],0);
        PageControl1.ActivePageIndex := 0;
        Grid.SetFocus;
      end
      else
      begin
        //buscando conduces de esta factura
        Query1.close;
        Query1.sql.clear;
        Query1.sql.add('select count(*) as cant');
        Query1.sql.add('from conduce');
        Query1.sql.add('where emp_codigo = :emp');
        Query1.sql.add('and suc_codigo = :suc');
        Query1.sql.add('and fac_forma = :for');
        Query1.sql.add('and tfa_codigo = :tfa');
        Query1.sql.add('and fac_numero = :num');
        Query1.sql.add('and con_status <> '+QuotedStr('ANU'));
        Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
        Query1.Parameters.ParamByName('suc').Value := frmBuscaFactura.DBLookupComboBox2.KeyValue;
        Query1.Parameters.ParamByName('for').Value := frmBuscaFactura.rbForma.Items[frmBuscaFactura.rbForma.ItemIndex];
        Query1.Parameters.ParamByName('tfa').Value := frmBuscaFactura.DBLookupComboBox1.KeyValue;
        Query1.Parameters.ParamByName('num').Value := strtoint(frmBuscaFactura.edNumero.text);
        Query1.Open;
        if Query1.FieldByName('cant').AsInteger > 0 then
        begin
        if not (dm.QParametrospar_fac_preimpresa.Value = 'True') and (dm.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados') then begin
          MessageDlg('ESTA FACTURA TIENE UN CONDUCE'+#13+
                     'NO PUEDE MODIFICARSE',mtError,[mbok],0);
          PageControl1.ActivePageIndex := 0;
          Grid.SetFocus;
          end;
        end
        else
        begin
          edTipo.Text := frmBuscaFactura.DBLookupComboBox1.KeyValue;
          tTipo.text  := frmBuscaFactura.DBLookupComboBox1.Text;
          Query1.close;
          Query1.sql.clear;
          Query1.sql.add('select tfa_formatoimp, tfa_puertoimp, fpa_codigo, tfa_precio, cat_cuenta from tiposfactura');
          Query1.sql.add('where emp_codigo = :emp');
          Query1.sql.add('and tfa_codigo = :tipo');
          Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
          Query1.Parameters.parambyname('tipo').Value := frmBuscaFactura.DBLookupComboBox1.KeyValue;
          Query1.open;
          FPagoIni   := Query1.fieldbyname('fpa_codigo').asinteger;
          PuertoImp  := Query1.fieldbyname('tfa_puertoimp').asstring;
          FormatoImp := Query1.fieldbyname('tfa_formatoimp').asinteger;
          Precio     := Query1.fieldbyname('tfa_precio').asstring;
          CtaTipoFactura := Query1.fieldbyname('cat_cuenta').asstring;

          Totaliza := false;
          QDetalle.disablecontrols;
          QFactura.close;
          QFactura.Parameters.ParamByName('emp').Value    := DM.vp_cia;
          QFactura.Parameters.ParamByName('tipo').Value   := frmBuscaFactura.DBLookupComboBox1.KeyValue;
          QFactura.Parameters.ParamByName('forma').Value   := frmBuscaFactura.rbForma.Items[frmBuscaFactura.rbForma.ItemIndex];
          QFactura.Parameters.ParamByName('numero').Value := strtoint(frmBuscaFactura.edNumero.text);
          QFactura.Parameters.ParamByName('suc').Value   := frmBuscaFactura.DBLookupComboBox2.KeyValue;
          QDetalle.EnableControls;
          QFactura.open;

          dm.Query1.close;
          dm.Query1.sql.clear;
          dm.Query1.sql.add('select mon_sigla, MON_RELACIONPESOCOMPRA from moneda');
          dm.Query1.sql.add('where emp_codigo = :emp');
          dm.Query1.sql.add('and mon_codigo = :mon');
          dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
          dm.Query1.Parameters.parambyname('mon').Value := QFacturaMON_CODIGO.Value;
          dm.Query1.open;
          tmoneda.Text := dm.Query1.FieldByName('mon_sigla').AsString;

          if QFacturaCPA_CODIGO.AsInteger > 0 then
          begin
            dm.Query1.close;
            dm.Query1.sql.clear;
            dm.Query1.sql.add('select cpa_intereses from Condiciones');
            dm.Query1.sql.add('where emp_codigo = :emp');
            dm.Query1.sql.add('and cpa_codigo = :cod');
            dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
            dm.Query1.Parameters.parambyname('cod').Value := QFacturaCPA_CODIGO.value;
            dm.Query1.open;
            intereses := dm.Query1.FieldByName('cpa_intereses').AsString;
          end
          else
            intereses := 'False';

          dm.Query1.close;
          dm.Query1.sql.clear;
          dm.Query1.sql.add('select caj_nombre from cajeros');
          dm.Query1.sql.add('where emp_codigo = :emp');
          dm.Query1.sql.add('and caj_codigo = :codigo');
          dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
          dm.Query1.Parameters.parambyname('codigo').Value := QFacturaCAJ_CODIGO.value;
          dm.Query1.open;
          tCajero.text := dm.Query1.fieldbyname('caj_nombre').asstring;

          QDetalle.close;
          QDetalle.Parameters.ParamByName('emp').Value    := dm.vp_cia;
          QDetalle.Parameters.ParamByName('tipo').Value   := frmBuscaFactura.DBLookupComboBox1.KeyValue;
          QDetalle.Parameters.ParamByName('forma').Value  := frmBuscaFactura.rbForma.Items[frmBuscaFactura.rbForma.ItemIndex];
          QDetalle.Parameters.ParamByName('numero').Value := strtoint(frmBuscaFactura.edNumero.text);
          QDetalle.Parameters.ParamByName('suc').Value    := frmBuscaFactura.DBLookupComboBox2.KeyValue;
          QDetalle.open;

          if QDetalle.RecordCount > 0 then begin
          QDetalle.DisableControls;
          QDetalle.First;
          MDDetalle.Close;
          MDDetalle.Open;
          while not QDetalle.Eof do begin
          MDDetalle.Append;
          MDDetallepro_codigo.Value  := QDetallePRO_CODIGO.Value;
          MDDetallecantidadund.Value := QDetalleDET_CANTIDAD.Value;
          MDDetallecantidademp.Value := QDetalledet_cantempaque.Value;
          MDDetalle.Post;
          QDetalle.Next;
          end;
          QDetalle.EnableControls;

          //Agregar los productos
          MDDetalle.First;
          while not MDDetalle.Eof do begin
          DM.ADOSigma.Execute('update existencias set exi_cantidad = isnull(exi_cantidad,0)+ '+FloatToStr(MDDetallecantidadund.Value)+
          ' ,exi_empaque = isnull(exi_empaque,0) +'+FloatToStr(MDDetallecantidademp.Value)+' where emp_codigo ='+QFacturaEMP_CODIGO.Text+' and alm_codigo ='+IntToStr(QFacturaALM_CODIGO.Value)+
          ' and pro_codigo ='+MDDetallepro_codigo.Text);
          DM.ADOSigma.Execute('update productos set pro_existencia = isnull(pro_existencia,0)+ '+FloatToStr(MDDetallecantidadund.Value)+
          ' ,pro_existempaque = isnull(pro_existempaque,0) +'+FloatToStr(MDDetallecantidademp.Value)+' where emp_codigo ='+DM.QParametrosPAR_INVEMPRESA.Text+
          ' and pro_codigo ='+MDDetallepro_codigo.Text);
          MDDetalle.Next;
          end;
          end;


          frmFormaPagoFac.QFormaPago.close;
          frmFormaPagoFac.QFormaPago.Parameters.ParamByName('emp').Value    := dm.vp_cia;
          frmFormaPagoFac.QFormaPago.Parameters.ParamByName('tipo').Value   := frmBuscaFactura.DBLookupComboBox1.KeyValue;
          frmFormaPagoFac.QFormaPago.Parameters.ParamByName('forma').Value := frmBuscaFactura.rbForma.Items[frmBuscaFactura.rbForma.ItemIndex];
          frmFormaPagoFac.QFormaPago.Parameters.ParamByName('numero').Value := strtoint(frmBuscaFactura.edNumero.text);
          frmFormaPagoFac.QFormaPago.Parameters.ParamByName('suc').Value   := frmBuscaFactura.DBLookupComboBox2.KeyValue;
          frmFormaPagoFac.QFormaPago.open;

          QReceta.Close;
          QReceta.Parameters.ParamByName('emp').Value := dm.vp_cia;
          QReceta.Parameters.ParamByName('tfa').Value := frmBuscaFactura.DBLookupComboBox1.KeyValue;
          QReceta.Parameters.ParamByName('for').Value := frmBuscaFactura.rbForma.Items[frmBuscaFactura.rbForma.ItemIndex];
          QReceta.Parameters.ParamByName('num').Value := strtoint(frmBuscaFactura.edNumero.text);
          QReceta.Parameters.ParamByName('suc').Value := frmBuscaFactura.DBLookupComboBox2.KeyValue;
          QReceta.Open;


          QCuentas.Close;
          QCuentas.Parameters.ParamByName('emp').Value   := dm.vp_cia;
          QCuentas.Parameters.ParamByName('tipo').Value  := frmBuscaFactura.DBLookupComboBox1.KeyValue;
          QCuentas.Parameters.ParamByName('forma').Value := frmBuscaFactura.rbForma.Items[frmBuscaFactura.rbForma.ItemIndex];
          QCuentas.Parameters.ParamByName('numero').Value   := strtoint(frmBuscaFactura.edNumero.text);
          QCuentas.Parameters.ParamByName('suc').Value   := frmBuscaFactura.DBLookupComboBox2.KeyValue;
          QCuentas.Open;

          QSerie.Close;
          QSerie.Parameters.ParamByName('emp').Value   := dm.QEmpresasEMP_CODIGO.value;
          QSerie.Parameters.ParamByName('tipo').Value  := frmBuscaFactura.DBLookupComboBox1.KeyValue;
          QSerie.Parameters.ParamByName('forma').Value := frmBuscaFactura.rbForma.Items[frmBuscaFactura.rbForma.ItemIndex];
          QSerie.Parameters.ParamByName('num').Value   := strtoint(frmBuscaFactura.edNumero.text);
          QSerie.Parameters.ParamByName('suc').Value   := frmBuscaFactura.DBLookupComboBox2.KeyValue;
          QSerie.Open;


          QEnvio.Close;
          QEnvio.Parameters.ParamByName('emp').Value   := dm.vp_cia;
          QEnvio.Parameters.ParamByName('fac').Value   := strtoint(frmBuscaFactura.edNumero.text);
          QEnvio.Parameters.ParamByName('suc').Value   := frmBuscaFactura.DBLookupComboBox2.KeyValue;
          QEnvio.Parameters.ParamByName('tfac').Value   := frmBuscaFactura.QTipoTFA_CODIGO.Value;
          QEnvio.Open;

          if dm.QParametrospar_formato_preimpreso.Value = 'QClinico' then
          begin
            QClinico.DisableControls;
            QClinico.close;
            QClinico.Parameters.ParamByName('emp').Value := dm.vp_cia;
            QClinico.Parameters.ParamByName('suc').Value := frmBuscaFactura.DBLookupComboBox2.KeyValue;
            QClinico.Parameters.ParamByName('for').Value := frmBuscaFactura.rbForma.Items[frmBuscaFactura.rbForma.ItemIndex];
            QClinico.Parameters.ParamByName('tfa').Value := frmBuscaFactura.DBLookupComboBox1.KeyValue;
            QClinico.Parameters.ParamByName('fac').Value := strtoint(frmBuscaFactura.edNumero.text);
            QClinico.open;
            QClinico.EnableControls;

            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('select 1 as cod, count(*) as cant from facturas_detalle_clinico where emp_codigo = :emp1');
            dm.Query1.SQL.Add('and suc_codigo = :suc1 and fac_forma = :for1 and tfa_codigo = :tfa1 and fac_numero = :fac1');
            dm.Query1.SQL.Add('and facturaid is not null');
            dm.Query1.SQL.Add('union all');
            dm.Query1.SQL.Add('select 2, count(*) from facturas_detalle_clinico where emp_codigo = :emp2');
            dm.Query1.SQL.Add('and suc_codigo = :suc2 and fac_forma = :for2 and tfa_codigo = :tfa2 and fac_numero = :fac2');
            dm.Query1.SQL.Add('and recordid is not null');
            dm.Query1.Parameters.ParamByName('emp1').Value := dm.vp_cia;
            dm.Query1.Parameters.ParamByName('suc1').Value := frmBuscaFactura.DBLookupComboBox2.KeyValue;
            dm.Query1.Parameters.ParamByName('for1').Value := frmBuscaFactura.rbForma.Items[frmBuscaFactura.rbForma.ItemIndex];
            dm.Query1.Parameters.ParamByName('tfa1').Value := frmBuscaFactura.DBLookupComboBox1.KeyValue;
            dm.Query1.Parameters.ParamByName('fac1').Value := strtoint(frmBuscaFactura.edNumero.text);
            dm.Query1.Parameters.ParamByName('emp2').Value := dm.vp_cia;
            dm.Query1.Parameters.ParamByName('suc2').Value := frmBuscaFactura.DBLookupComboBox2.KeyValue;
            dm.Query1.Parameters.ParamByName('for2').Value := frmBuscaFactura.rbForma.Items[frmBuscaFactura.rbForma.ItemIndex];
            dm.Query1.Parameters.ParamByName('tfa2').Value := frmBuscaFactura.DBLookupComboBox1.KeyValue;
            dm.Query1.Parameters.ParamByName('fac2').Value := strtoint(frmBuscaFactura.edNumero.text);
            dm.Query1.Open;

            if dm.Query1.Locate('cod', 1, []) then cli_facturas := dm.Query1.FieldByName('cant').AsInteger;
            if dm.Query1.Locate('cod', 2, []) then cli_records  := dm.Query1.FieldByName('cant').AsInteger;

            lbfacturas.Caption := inttostr(cli_facturas) + ' Facturas';
            lbrecords.Caption  := inttostr(cli_records) + ' Records';
          end;

          //actualizando # de serie en el grid que esta en la factura
          GridSerie.RowCount := 1;
          for a := 0 to GridSerie.RowCount-1 do
          begin
          if trim(GridSerie.Cells[0,a]) = inttostr(QDetallePRO_CODIGO.Value) then
            GridSerie.Cells[1,a] := '';
          end;

          QSerie.DisableControls;
          QSerie.First;
          while not QSerie.Eof do
          begin
            GridSerie.Cells[0,GridSerie.RowCount-1] := inttostr(QSeriePRO_CODIGO.Value);
            GridSerie.Cells[1,GridSerie.RowCount-1] := QSerieSER_NUMERO.Value;
            GridSerie.RowCount := GridSerie.RowCount + 1;

            QSerie.Next;
          end;
          QSerie.EnableControls;
          GridSerie.RowCount := GridSerie.RowCount - 1;

          if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
             edCliente.text := inttostr(QFacturaCLI_CODIGO.value)
          else
             edCliente.text := QFacturaCLI_REFERENCIA.value;

          Query1.close;
          Query1.sql.clear;
          Query1.sql.add('select cli_referencia, cli_codigo, cli_nombre, cli_balance,');
          Query1.sql.add('cli_limite, cli_precio, cli_descuento, cli_cuenta,');
          Query1.sql.add('cli_direccion, cli_localidad, cli_telefono, cli_fax,');
          Query1.sql.add('cli_factura_debajo_costo, cli_factura_debajo_minimo, tcl_codigo,');
          Query1.sql.add('cli_cedula, cli_rnc, cli_email');
          Query1.sql.add('from clientes');
          Query1.sql.add('where emp_codigo = :emp');
          Query1.sql.add('and cli_Status = '+#39+'ACT'+#39);
          if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
          begin
            Query1.sql.add('and cli_codigo = :cli');
            Query1.Parameters.parambyname('cli').Value := strtoint(edCliente.text);
          end
          else
          begin
            Query1.sql.add('and cli_referencia = :cli');
            Query1.Parameters.parambyname('cli').Value := edCliente.text;
          end;
          Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
          Query1.open;

          btBalance.caption := 'Bce:'+format('%n',[Query1.fieldbyname('cli_balance').asfloat]);
          tLimite.text  := format('%n',[Query1.fieldbyname('cli_limite').asfloat-
                                        Query1.fieldbyname('cli_balance').asfloat]);
          //tDesc.text    := format('%n',[Query1.fieldbyname('cli_descuento').asfloat]);
          descuento := Query1.fieldbyname('cli_descuento').asfloat;
          CtaCliente := Query1.fieldbyname('cli_cuenta').asstring;

          Limite    := StrToFloat(format('%10.2f',[Query1.fieldbyname('cli_limite').asfloat]))-
                       StrToFloat(format('%10.2f',[Query1.fieldbyname('cli_balance').asfloat]))+
                       StrToFloat(format('%10.2f',[QFacturaFAC_TOTAL.value]));

          FactDebajoCosto  := Query1.fieldbyname('cli_factura_debajo_costo').asstring;
          vl_dest          := Query1.fieldbyname('cli_email').AsString;
          FactDebajoMinimo := Query1.fieldbyname('cli_factura_debajo_minimo').asstring;
          Precio := Query1.fieldbyname('cli_precio').AsString;

          tcl_codigo := Query1.FieldByName('tcl_codigo').AsInteger;
          if (tcl_codigo > 0) and (Precio = '') then
          begin
            Query1.Close;
            Query1.SQL.Clear;
            Query1.SQL.Add('select tcl_precio from tipoclientes');
            Query1.SQL.Add('where emp_codigo = :emp');
            Query1.SQL.Add('and tcl_codigo = :tcl');
            Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
            Query1.Parameters.ParamByName('tcl').Value := tcl_codigo;
            Query1.Open;
            Precio := Query1.FieldByName('tcl_precio').AsString;
          end;

          if (tcl_codigo > 0) and (Precio = '') then
          begin
            if not Query1.fieldbyname('tcl_precio').IsNull then
              Precio := Query1.fieldbyname('tcl_precio').asstring
            else
              Precio := 'Precio1';
          end;
                                      
          QFactura.edit;

          Query1.close;
          Query1.sql.clear;
          Query1.sql.add('select tfa_nombre, tfa_selcondi, tfa_formatoimp, tfa_puertoimp,');
          Query1.sql.add('tfa_actbalance, tfa_cliente, ven_codigo, tfa_precio,');
          Query1.sql.add('tfa_mensaje1, tfa_mensaje2, tfa_mensaje3, tfa_modifica_nombre');
          Query1.sql.add('from tiposfactura');
          Query1.sql.add('where emp_codigo = :emp');
          Query1.sql.add('and tfa_codigo = :cod');
          Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
          Query1.Parameters.parambyname('cod').Value := QFacturaTFA_CODIGO.Value;
          Query1.open;

          if (Precio = '') or (Precio = 'Ninguno') then
            Precio     := Query1.fieldbyname('tfa_precio').asstring;

          ModificaNombre := Query1.fieldbyname('tfa_modifica_nombre').asstring;
          PuertoImp  := Query1.fieldbyname('tfa_puertoimp').asstring;
          FormatoImp := Query1.fieldbyname('tfa_formatoImp').asinteger;
          actbalance := Query1.fieldbyname('tfa_actbalance').asstring;
          SelCondi   := Query1.FieldByName('tfa_selcondi').AsBoolean;
          dbCondi.Enabled := SelCondi;
          btCondi.Enabled := SelCondi;

          //bloquear facturas
          QFacturafac_hold.Text := 'True';

          QFacturaFAC_MENSAJE1.Value := trim(Query1.fieldbyname('tfa_mensaje1').asstring);
          QFacturaFAC_MENSAJE2.Value := Query1.fieldbyname('tfa_mensaje2').asstring;
          QFacturaFAC_MENSAJE3.Value := Query1.fieldbyname('tfa_mensaje3').asstring;

          if Query1.fieldbyname('tfa_actbalance').asstring = 'False' then
          begin
            if QFacturaFAC_NOMBRE.isnull then
              QFacturaFAC_NOMBRE.Value := Query1.fieldbyname('tfa_cliente').asstring;
            if QFacturaVEN_CODIGO.isnull then
              QFacturaVEN_CODIGO.Value := Query1.fieldbyname('ven_codigo').asinteger;
          end;

          {Totaliza := false; //20170609} Totaliza := true;
          Totalizar;

          PageControl1.ActivePageIndex := 0;
          Grid.setfocus;


      end;
    end;
  end;
  end;
  frmBuscaFactura.release;

end;

procedure TfrmFactura.dsFacturaStateChange(Sender: TObject);
begin
  btTipo.enabled := dsFactura.State = dsInsert;
  edTipo.enabled := dsFactura.State = dsInsert;

  bttiponcf.enabled := dsFactura.State = dsInsert;
  DBEdit13.enabled  := dsFactura.State = dsInsert;

  if dsFactura.State = dsedit then
    frmFactura.Caption := 'Facturaci?n - Factura # '+QFacturaFAC_NUMERO.AsString
  else
    frmFactura.Caption := 'Facturaci?n';
end;

// Imprime QR nativo ESC/POS (module 1..16, EC: 48=L,49=M,50=Q,51=H)
procedure WriteQR(var F: TextFile; const Data: AnsiString; ModuleSize: Byte = 6; ECLevel: Byte = 48);
var pL, pH: AnsiChar;
begin
  // centrar
  Write(F, ESC($61) + AnsiChar(#1));              // ESC a 1

  // modelo
  Write(F, GS($28) + 'k' + #04#00 + #49#65#50#00); // GS ( k 4 0 1 41 2 0
  // tama?o de m?dulo
  Write(F, GS($28) + 'k' + #03#00 + #49#67 + AnsiChar(ModuleSize));
  // nivel de correcci?n
  Write(F, GS($28) + 'k' + #03#00 + #49#69 + AnsiChar(ECLevel));

  // almacenar datos
  pL := AnsiChar((Length(Data)+3) and $FF);
  pH := AnsiChar((Length(Data)+3) shr 8);
  Write(F, GS($28) + 'k' + pL + pH + #49#80#48 + Data);

  // imprimir
  Write(F, GS($28) + 'k' + #03#00 + #49#81 + #48);

  // salto y volver a izquierda
  Writeln(F); Writeln(F);
  Write(F, ESC($61) + AnsiChar(#0));              // ESC a 0
end;


// ---- Helper para imprimir cadenas largas envueltas a 40 columnas ----
procedure PrintWrap40(var F: TextFile; const S: string);
var
  i: Integer;
begin
  i := 1;
  while i <= Length(S) do
  begin
    Writeln(F, Copy(S, i, 40)); // imprime 40 caracteres por l?nea
    Inc(i, 40);
  end;
end;


procedure TfrmFactura.Imp40Columnas;
var
  arch, puertopeq : textfile;
  s, s1, s2, s3, s4, s5,s6 : array [0..20] of char;
  Tfac, Saldo, TDesc : double;
  puerto, lbitbis, impcodigo, pro_codigo, Unidad, codigoabre, t : string;
  a : integer;
  qrData: AnsiString;
  qrStr: string;
  qrBits: TBytes;
  qrW, qrH: Integer;
  qrURL, codSeg, fechaFirma, codDGII: string;
  aceptado: Boolean;
  msg: string;

begin
  codigoabre := Trim(DM.QParametrosPAR_CODIGO_ABRE_CAJA.Value);
      with dm.Query1 do begin
      close;
      sql.clear;
      sql.add('select ISNULL(tfa_copias,0) tfa_copias from tiposfactura');
      sql.add('where emp_codigo = :emp');
      sql.add('and tfa_codigo = :cod');
      Parameters.parambyname('emp').Value := dm.vp_cia;
      Parameters.parambyname('cod').Value := QFacturaTFA_CODIGO.Value;
      open;
      IF NOT IsEmpty THEN
      copias := FIELDBYNAME('tfa_copias').Value;
      end;

//Buscar Puerto
with dm.adoMultiUso do begin
Close;
sql.Clear;
sql.Add('select isnull(puerto,''PRN'') puerto');
sql.Add('from cajas_ip where caja = '+QuotedStr(IntToStr(QFacturaCAJ_CODIGO.Value))+
' and emp_codigo = '+QuotedStr(IntToStr(dm.vp_cia)));
Open;
if IsEmpty then
puerto := 'PRN' ELSE
puerto := fieldbyname('puerto').Text;
Close;
end;

  if FileExists('.\puerto.txt') then
  begin
    assignfile(puertopeq, '.\puerto.txt');
    reset(puertopeq);
    readln(puertopeq, puerto);
  end
  else
  begin
  assignfile(puertopeq, '.\puerto.txt');
  Rewrite(puertopeq);
  WriteLn(puertopeq, puerto);
  end;
    //puerto := 'PRN';

  closefile(puertopeq);

  AssignFile(arch, '.\imp.bat');
  rewrite(arch);
  writeln(arch, 'type .\t.txt > '+puerto);
  closefile(arch);


  tfac := 0;
  TDesc := 0;
  application.CreateForm(tRFactura, RFactura);
  RFactura.QFactura.Parameters.ParamByName('emp').Value     := DM.vp_cia;
  RFactura.QFactura.Parameters.ParamByName('tipo').Value    := QFacturaTFA_CODIGO.value;
  RFactura.QFactura.Parameters.ParamByName('forma').Value   := QFacturaFAC_FORMA.value;
  RFactura.QFactura.Parameters.ParamByName('numero').Value  := QFacturaFAC_NUMERO.value;
  RFactura.QFactura.Parameters.ParamByName('suc').Value     := QFacturaSUC_CODIGO.value;
  RFactura.QFactura.open;
  RFactura.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
  RFactura.QDetalle.open;
  RFactura.QFormasPago.Open;

  AssignFile(arch, '.\t.txt');
  rewrite(arch);
  // Inicializar impresora y codepage 850 (acentos y ?)
  Write(arch, ESC($40));                     // ESC @ (init)
  Write(arch, ESC($74) + AnsiChar(#2));      // ESC t 2 -> CP850
  Writeln(arch);
  ImprimirLogoTicket(arch);


  if ImprimeEncaqbezado = 'True' then
  begin
    writeln(arch, dm.centro(QSucursalsuc_nombre.Value));
    writeln(arch, dm.centro(QSucursalsuc_direccion.Value));
    writeln(arch, dm.centro(QSucursalsuc_localidad.Value));
    writeln(arch, dm.centro(QSucursalsuc_telefono.Value));
    writeln(arch, dm.centro('RNC:'+QSucursalsuc_rnc.Value));
    writeln(arch, ' ');
  end;
//20170608  writeln(arch, dm.centro('*** F A C T U R A ***'));
  writeln(arch, dm.Centro(trim(tTipo.text)));
  if QFacturaFAC_DOMICILIO.Value = 'True' then
     writeln(arch, dm.Centro('DOMICILIO'));
  writeln(arch, ' ');

  writeln(arch, 'Fecha .: '+DateToStr(RFactura.QFacturaFAC_FECHA.Value)+' Factura: '+formatfloat('0000000000',RFactura.QFacturaFAC_NUMERO.value));
  writeln(arch, 'Caja ..: '+RFactura.QFacturaCAJ_CODIGO.Text);  

  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add('select cli, dir, tel, ven, caj, fir, otros, CodigoProducto from parconfigimp');
  Query1.SQL.Add('where emp_codigo = :emp');
  Query1.SQL.Add('and tfa_codigo = :tfa');
  Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  Query1.Parameters.ParamByName('tfa').Value := RFactura.QFacturaTFA_CODIGO.Value;
  Query1.Open;
  impcodigo := Query1.FieldByName('CodigoProducto').AsString;

  if Query1.FieldByName('caj').AsString = 'Si' then
  begin
    dm.Query1.Close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select caj_nombre from cajeros');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and caj_codigo = :ven');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('ven').Value := RFactura.QFacturaCAJ_CODIGO.Value;
    dm.Query1.Open;

    s := '';
    fillchar(s, 15-length(copy(dm.Query1.FieldByName('caj_nombre').asstring,1,13)),' ');
    writeln(arch, 'Cajero: '+copy(dm.Query1.FieldByName('caj_nombre').asstring,1,13)+s+'Hora: '+RFactura.QFacturaFAC_HORA.AsString);
  end;

  if Trim(RFactura.QFacturaeNCF.Value) <> '' then
  begin
    writeln(arch, ' ');
    writeln(arch, 'eNCF: '+RFactura.QFacturaeNCF.Value);

    //buscar vencimiento
      with QDatos do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT TOP 1');
        SQL.Add('    FechaVencimientoSecuenciaDGII');
        SQL.Add('FROM SecuenciaDGII');
        SQL.Add('WHERE FechaVencimientoSecuenciaDGII IS NOT NULL');
        SQL.Add('  AND emp_codigo = :emp_codigo');
        SQL.Add('  AND tipo       = :tipo');
        SQL.Add('ORDER BY FechaVencimientoSecuenciaDGII');

        Parameters.ParamByName('emp_codigo').Value := QFacturaEMP_CODIGO.Value;
        Parameters.ParamByName('tipo').Value       := QFacturaTipoeNCF.Value;
        Open;

        if not IsEmpty then
          Writeln(arch, 'Fecha Venc.: ' + FieldByName('FechaVencimientoSecuenciaDGII').AsString);
      end;
      end
      else
      begin
      {
  //buscar vencimiento
      with QDatos do begin
      Close;
      sql.Clear;
      SQL.Add('select FechaVenc ');
      sql.Add('from NCF ');
      sql.Add('where VerificaVenc = 1 and emp_codigo = :emp_codigo');
      sql.Add('and suc_codigo = :suc_codigo');
      sql.Add('and NCF_Fijo   = :NCF_Fijo');
      Parameters.ParamByName('emp_codigo').Value := QFacturaEMP_CODIGO.Value;
      if DM.QContabpar_NCF_Sucursal.Value = True then
      Parameters.ParamByName('suc_codigo').Value := QFacturaSUC_CODIGO.Value else
      Parameters.ParamByName('suc_codigo').Value :=  1;
      Parameters.ParamByName('NCF_Fijo').Value   := RFactura.QFacturaNCF_Fijo.Text;
      Open;
      if not IsEmpty then
      writeln(arch,'Fecha Venc.: '+FieldByName('FechaVenc').text);
      end;        }

      //buscar tipo documentos
      with QDatos do begin
      Close;
      sql.Clear;
      SQL.Add('select b.tdo_nombre Nombre');
      sql.Add('from NCF a');
      sql.Add('inner join TiposDoc b on a.emp_codigo=b.emp_codigo and a.tdo_codigo=b.tdo_codigo');
      sql.Add('where a.emp_codigo = :emp_codigo');
      sql.Add('and a.suc_codigo = :suc_codigo');
      sql.Add('and a.NCF_Fijo   = :NCF_Fijo');
      Parameters.ParamByName('emp_codigo').Value := QFacturaEMP_CODIGO.Value;
      Parameters.ParamByName('suc_codigo').Value := QFacturaSUC_CODIGO.Value;
      Parameters.ParamByName('NCF_Fijo').Value   := RFactura.QFacturaNCF_Fijo.Text;
      Open;
      writeln(arch,FieldByName('Nombre').AsString);
      end;
      end;
      

  if Trim(RFactura.QFacturaNumeroCF.Value) <> '' then
  begin
    if RFactura.QFacturaFAC_RNC.Value <> '' then
      writeln(arch, 'RNC: '+RFactura.QFacturaFAC_RNC.Value);
  end;

  writeln(arch, ' ');

  if (actbalance = 'True') then
    writeln(arch, 'Vence : '+DateToStr(RFactura.QFacturaFAC_VENCE.value));

  if Query1.FieldByName('cli').AsString = 'Si' then
  begin
    if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
      writeln(arch, 'Nombre: '+RFactura.QFacturaFAC_NOMBRE.value)
    else
      writeln(arch, 'Nombre: '+RFactura.QFacturaFAC_NOMBRE.value);
  end;

  if Query1.FieldByName('dir').AsString = 'Si' then
    if Trim(RFactura.QFacturaFAC_DIRECCION.value) <> '' then
      writeln(arch, 'Dir.  : '+RFactura.QFacturaFAC_DIRECCION.value);
  if Query1.FieldByName('tel').AsString = 'Si' then
    if Trim(RFactura.QFacturaFAC_TELEFONO.value) <> '' then
      writeln(arch, 'Tel.  : '+RFactura.QFacturaFAC_TELEFONO.value);
  if Query1.FieldByName('ven').AsString = 'Si' then
  begin
    dm.Query1.Close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select ven_nombre from vendedores');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and ven_codigo = :ven');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('ven').Value := RFactura.QFacturaVEN_CODIGO.Value;
    dm.Query1.Open;

    writeln(arch, 'Vend. : '+dm.Query1.FieldByName('ven_nombre').asstring);
  end;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select Ciudad_Origen, Nombre_envia,');
  dm.Query1.SQL.Add('Telefono_Envia, Nombre_Recibe, Telefono_Recibe, Descripcion, Descripcion2');
  dm.Query1.SQL.Add(',(SELect suc_nombre from sucursales s');
  dm.Query1.SQL.Add('where emp_codigo = e.emp_codigo and suc_codigo =');
  dm.Query1.SQL.Add('(select top 1 env_suc_destino from envio where fac_numero = e.fac_numero and emp_codigo = s.emp_codigo)) Ciudad_Destino');
  dm.Query1.SQL.Add('from envio e where emp_codigo = :emp and suc_codigo = :suc');
  dm.Query1.SQL.Add('and fac_numero = :fac');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('suc').Value := RFactura.QFacturaSUC_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('fac').Value := RFactura.QFacturaFAC_NUMERO.Value;
  dm.Query1.Open;
  if dm.Query1.RecordCount > 0 then
  begin
    writeln(arch, ' ');
    writeln(arch, 'DATOS DEL ENVIO:');
    writeln(arch, ' ');
    writeln(arch, 'Envia : '+dm.Query1.FieldByNAme('Telefono_Envia').AsString);
    writeln(arch, '        '+dm.Query1.FieldByNAme('Nombre_envia').AsString);
    writeln(arch, '        '+dm.Query1.FieldByNAme('Ciudad_Origen').AsString);
    writeln(arch, '');
    writeln(arch, 'Recibe: '+dm.Query1.FieldByNAme('Telefono_Recibe').AsString);
    writeln(arch, '        '+dm.Query1.FieldByNAme('Nombre_Recibe').AsString);
    writeln(arch, '        '+dm.Query1.FieldByNAme('Ciudad_Destino').AsString);
    writeln(arch, '');
    writeln(arch, UpperCase(dm.Query1.FieldByNAme('Descripcion').AsString)+' / '+UpperCase(dm.Query1.FieldByNAme('Descripcion2').AsString));
  end;

  if impcodigo = 'Si' then
  begin
    writeln(arch, '----------------------------------------');
    //writeln(arch, 'CANT  UND  DESCRIPCION   ITBIS     TOTAL');
    writeln(arch, 'CANT/COD UND DESC/PRECIO  ITBIS    TOTAL');
    writeln(arch, '----------------------------------------');
  end
  else
  begin
    writeln(arch, '----------------------------------------');
    writeln(arch, 'CANT. PREC DESCRIPCION   ITBIS     TOTAL');
    writeln(arch, '----------------------------------------');
  end;
  while not RFactura.QDetalle.eof do
  begin
    tfac := tfac + RFactura.QDetallePrecioItbis.value;

    if RFactura.QDetalleTotalDescuento.Value >  0 then
    TDesc := TDesc + RFactura.QDetalleTotalDescuento.Value;

    {if RFactura.QDetalleDET_CONITBIS.value = 'N' then
       lbItbis := 'E'
    else
       lbItbis := ' ';}

    s := '';
    FillChar(s, 5-length(Trim(RFactura.QDetalleDET_CANTIDAD.Text)),' ');
    s1 := '';
    FillChar(s1, 10-length(trim(FORMAT('%n',[RFactura.QDetalleValor.value]))), ' ');
    s2 := '';
    s6 := '';
    FillChar(s6, 10-length(trim(FORMAT('%n',[RFactura.QDetalleDET_PRECIO.value]))), ' ');

    if impcodigo = 'Si' then
      FillChar(s2, 33-length(copy(trim(RFactura.QDetallePRO_NOMBRE.value),1,33)),' ')
    else
      FillChar(s2, 33-length(copy(trim(RFactura.QDetallePRO_NOMBRE.value),1,33)),' ');
      //FillChar(s2, 16-length(copy(trim(RFactura.QDetallePRO_NOMBRE.value),1,16)),' ');

    if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'I' then
      pro_codigo := RFactura.QDetallePRO_CODIGO.AsString
    else if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'O' then
      pro_codigo := RFactura.QDetallePRO_RORIGINAL.AsString;

    pro_codigo := '['+pro_codigo+']';

    s3 := '';
    FillChar(s3, 8-length(trim(FORMAT('%n',[RFactura.QDetallePrecioItbis.value]))),' ');
    s4 := '';
    FillChar(s4, 8-length(trim(FORMAT('%n',[RFactura.QDetalleCalcItbis.value]))),' ');

    lbitbis := 'E';
    if RFactura.QDetalleDET_CONITBIS.value = 'N' then
    begin
       lbitbis := ' ';
    end;
    if impcodigo = 'Si' then
    begin

      Unidad := copy(RFactura.QDetallepro_unidad_medida.Value,1,4);
      s1 := '';
      FillChar(s1, 10-length(trim(FORMAT('%n',[RFactura.QDetalleValor.value]))), ' ');
      s2 := '';
      FillChar(s2, 20-length(trim(RFactura.QDetalleDET_CANTIDAD.Text)+' X '+
                            trim(FORMAT('%n',[RFactura.QDetalleDET_PRECIO.value]))), ' ');
      s4 := '';
      FillChar(s4, 8-length(trim(FORMAT('%n',[RFactura.QDetalleCalcItbis.value]))),' ');
      s3 := '';
      FillChar(s3, 40-length(RFactura.QDetallePRO_NOMBRE.Value),' ');

      writeln(arch, (Trim(RFactura.QDetalleDET_CANTIDAD.Text)+' X ')+
                    (FORMAT('%n',[RFactura.QDetalleDET_PRECIO.value])+s2)+
                    s4+(FORMAT('%n',[RFactura.QDetalleCalcItbis.value]))+' '+
                    s1+(FORMAT('%n',[RFactura.QDetalleValor.value])));

      IF Unidad <> '' THEN begin
      if Length(Trim(unidad+' '+pro_codigo+' ' +RFactura.QDetallePRO_NOMBRE.Value))>40 then begin
      writeln(arch, Copy(unidad+' '+pro_codigo+' '+RFactura.QDetallePRO_NOMBRE.Value,1,40-Length(unidad+' '+pro_codigo+' ')));
      writeln(arch, Copy(Trim(unidad+' '+pro_codigo+' '+RFactura.QDetallePRO_NOMBRE.Value),40-Length(unidad+' '+pro_codigo+' '),80));
      end
      else
      begin
      writeln(arch, Copy(unidad+' '+pro_codigo+' '+RFactura.QDetallePRO_NOMBRE.Value,1,40-Length(unidad+' '+pro_codigo+' ')));
      end;
      end
      else
      begin
      if Length(Trim(pro_codigo+' ' +RFactura.QDetallePRO_NOMBRE.Value))>40 then begin
      writeln(arch, pro_codigo+' '+Copy(RFactura.QDetallePRO_NOMBRE.Value,1,40-Length(pro_codigo+' ')));
      writeln(arch, Copy(Trim(RFactura.QDetallePRO_NOMBRE.Value),40-Length(pro_codigo+' '),(40-Length(pro_codigo+' '))+40));
      end
      else
      begin
      writeln(arch, Copy(pro_codigo+' '+RFactura.QDetallePRO_NOMBRE.Value,1,40));
      end;
      end;

    end
    else
      begin
      Unidad := copy(RFactura.QDetallepro_unidad_medida.Value,1,4);
      s1 := '';
      FillChar(s1, 10-length(trim(FORMAT('%n',[RFactura.QDetalleValor.value]))), ' ');
      s2 := '';
      FillChar(s2, 20-length(trim(RFactura.QDetalleDET_CANTIDAD.Text)+' X '+
                            trim(FORMAT('%n',[RFactura.QDetalleDET_PRECIO.value]))), ' ');
      s4 := '';
      FillChar(s4, 8-length(trim(FORMAT('%n',[RFactura.QDetalleCalcItbis.value]))),' ');
      s3 := '';
      FillChar(s3, 40-length(RFactura.QDetallePRO_NOMBRE.Value),' ');

      writeln(arch, (Trim(RFactura.QDetalleDET_CANTIDAD.Text)+' X ')+
                    (FORMAT('%n',[RFactura.QDetalleDET_PRECIO.value])+s2)+
                    s4+(FORMAT('%n',[RFactura.QDetalleCalcItbis.value]))+' '+
                    s1+(FORMAT('%n',[RFactura.QDetalleValor.value])));

      if Length(Trim(RFactura.QDetallePRO_NOMBRE.Value))>40 then begin
      IF Unidad <> '' THEN begin
      writeln(arch, unidad+' '+Copy(Trim(RFactura.QDetallePRO_NOMBRE.Value),1,36));
      writeln(arch, Copy(Trim(RFactura.QDetallePRO_NOMBRE.Value),37,80));
      end
      else
      begin
      writeln(arch, Copy(Trim(RFactura.QDetallePRO_NOMBRE.Value),1,40));
      writeln(arch, Copy(Trim(RFactura.QDetallePRO_NOMBRE.Value),41,80));
      end;
      end
      else
      begin
      writeln(arch, unidad+' '+Copy(Trim(RFactura.QDetallePRO_NOMBRE.Value),1,40)+s3);
      end;


      end;

    if Trim(RFactura.QDetalleDET_NOTA.Value) <> '' then
    begin
      writeln(arch, ' ');
      writeln(arch, RFactura.QDetalleDET_NOTA.Value);
      writeln(arch, ' ');
    end;

    //Datos Serie
    if QSerie.RecordCount > 0 then
    begin
    t := '';
    QSerie.First;
    while not QSerie.Eof do
    begin
      t := t + QSerieser_numero.Value+', ';
      QSerie.next;
    end;
    IF QDetallepro_serializado.Value = 'S' then
    writeln(arch,'SN#:'+ copy(t,1,length(t)-2));
    end;


    //datos del medidor
    if (not RFactura.QDetalleMedidorID.IsNull) and (RFactura.QDetalleMedidorID.AsInteger > 0) then
    begin
      writeln(arch, ' ');
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select Nombre from medidores where MedidorID = :med');
      dm.Query1.Parameters.ParamByName('med').Value := RFactura.QDetalleMedidorID.Value;
      dm.Query1.Open;

      writeln(arch, 'DATOS DEL MEDIDOR:');
      writeln(arch, 'Medidor: '+dm.Query1.FieldByName('Nombre').AsString);
      writeln(arch, 'Conteo Anterior: '+RFactura.QDetalleMedidor_Secuencia.AsString);
      writeln(arch, 'Conteo Actual: '+RFactura.QDetalleMedidor_Cantidad.AsString);
      writeln(arch, 'Cantidad Galones: '+RFactura.QDetalleDET_CANTIDAD.AsString);
      writeln(arch, ' ');
    end;

    RFactura.QDetalle.next;
  end;
  s := '';
  fillchar(s, 14-length(format('%n',[RFactura.QFacturaFAC_TOTAL.value])),' ');
  s1:= '';
  fillchar(s1, 14-length(format('%n',[RFactura.QFacturaFAC_DESCUENTO.value])),' ');
  s2:= '';
  fillchar(s2, 14-length(format('%n',[TFac])),' ');
  s3:= '';
  fillchar(s3, 12-length(format('%n',[RFactura.QFacturaFAC_ITBIS.value])),' ');
  s4:= '';
  fillchar(s4, 40-length('-----------'),' ');
  s5:= '';
  fillchar(s5, 14-length(format('%n',[RFactura.QFacturaFAC_OTROS.value])),' ');

  writeln(arch, '                             -----------');
  writeln(arch, '              SubTotal   :'+s2+format('%n',[TFac]));
  writeln(arch, '              Descuento  :'+s1+format('%n',[RFactura.QFacturaTdesc_gral.Value+TDesc]));
  writeln(arch, '              Total Itbis:'+s3+format('%n',[RFactura.QFacturaFAC_ITBIS.value]));


  if Query1.FieldByName('otros').AsString = 'Si' then
     writeln(arch, '              Otros      :'+s5+format('%n',[RFactura.QFacturaFAC_OTROS.value]));
     writeln(arch, '              Total Neto :'+s2+format('%n',[RFactura.QFacturaFAC_TOTAL.value]));
     writeln(arch, '                             -----------');
     writeln(arch, '              Total Neto US$:'+s3+format('%n',[RFactura.QFacturaFAC_TOTAL_DOLAR.value]));


 { IF (QEnviofacpagodestino.Value= True) then
  begin
     writeln(arch, '');
     writeln(arch, #27'E' + 'PAGAR DESTINO:' + format('%n',[RFactura.QFacturaFAC_TOTAL.value]) + #27'F');
    // writeln(ar,'A1,225,0,2,1,2,R,"ORIGEN:'+vSucEnvia+'"');
   end;  }

  if   RFactura.QFacturafac_tasa.Value > 1 then begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select mon_sigla from moneda');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and mon_codigo = :mon');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('mon').Value := RFactura.QFacturaMON_CODIGO.Value;
    dm.Query1.Open;
    if not dm.Query1.IsEmpty then
      begin
       writeln(arch, '              Moneda     : '+dm.Query1.FieldByName('mon_sigla').AsString);
       writeln(arch, '              Tasa       : '+RFactura.QFacturafac_tasa.AsString);
      end;
  end;


 if (actbalance = 'True') then
  begin
    s := '';
    fillchar(s, 14-length(format('%n',[RFactura.QFacturaFAC_ABONO.value])),' ');
    Saldo := RFactura.QFacturaFAC_TOTAL.value - RFactura.QFacturaFAC_ABONO.value;
    s1 := '';
    fillchar(s1, 14-length(format('%n',[Saldo])),' ');
    writeln(arch, '              Abonado    :'+s+format('%n',[RFactura.QFacturaFAC_ABONO.value]));
    writeln(arch, '              Balance    :'+s1+format('%n',[Saldo]));

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cli_balance from clientes');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cli_codigo = :cli');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cli').Value := RFactura.QFacturaCLI_CODIGO.Value;
    dm.Query1.Open;

//    writeln(arch, ' ');
//    writeln(arch, dm.Centro('SU CUENTA REFLEJA UN BALANCE'));
//    writeln(arch, dm.Centro('A LA FECHA DE '+Format('%n',[dm.Query1.FieldByName('cli_balance').AsFloat])));

//    dm.Query1.Close;
//    dm.Query1.SQL.Clear;
//    dm.Query1.SQL.Add('select * from pr_Estadistica_cli (:emp, :cli, :fec)');
//    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
//    dm.Query1.Parameters.ParamByName('cli').Value := RFactura.QFacturaCLI_CODIGO.Value;
//    dm.Query1.Parameters.ParamByName('fec').Value    := Date;
//    dm.Query1.Open;
//    writeln(arch, dm.Centro('Y UN MONTO VENCIDO DE '+Format('%n',[dm.Query1.FieldByName('mtovencido').AsFloat])));
  end
  else
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select f.fpa_nombre, sum(p.for_monto) as monto');
    dm.Query1.SQL.Add('from formaspago f, facformapago p');
    dm.Query1.SQL.Add('where f.emp_codigo = p.emp_codigo');
    dm.Query1.SQL.Add('and f.fpa_codigo = p.fpa_codigo');
    dm.Query1.SQL.Add('and p.emp_codigo = :emp');
    dm.Query1.SQL.Add('and p.tfa_Codigo = :tfa');
    dm.Query1.SQL.Add('and p.fac_forma  = :for');
    dm.Query1.SQL.Add('and p.fac_numero = :num');
    dm.Query1.SQL.Add('and p.suc_codigo = :suc');
    dm.Query1.SQL.Add('group by f.fpa_nombre');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('tfa').Value := RFactura.QFacturaTFA_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('for').Value  := RFactura.QFacturaFAC_FORMA.Value;
    dm.Query1.Parameters.ParamByName('num').Value := RFactura.QFacturaFAC_NUMERO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := RFactura.QFacturaSUC_CODIGO.Value;
    dm.Query1.Open;

    writeln(arch, ' ');
    dm.Query1.DisableControls;
    dm.Query1.First;
    while not dm.Query1.Eof do
    begin
      s:= '';
      fillchar(s, 14-length(dm.Query1.FieldByName('fpa_nombre').asstring),' ');
      s1 := '';
      fillchar(s1, 10-length(format('%n',[dm.Query1.FieldByName('monto').asfloat])),' ');
      writeln(arch,  UpperCase(copy(dm.Query1.FieldByName('fpa_nombre').AsString, 1, 14))+' : '+s1+ format('%n',[dm.Query1.FieldByName('monto').AsFloat]) );

    //  writeln(arch,copy(dm.Query1.FieldByName('fpa_nombre').asstring,1,14)+' : '+s1+format('%n',[dm.Query1.FieldByName('monto').asfloat]));
      dm.Query1.Next;
    end;
    dm.Query1.EnableControls;

    if Recibido = '' then
    begin
       Recibido := Format('%n',[QFacturaFAC_TOTAL.Value]);
       Devuelta := '0.00';
    end;



    s := '';
    fillchar(s,  10-length(Recibido),' ');
    s1 := '';
    fillchar(s1, 10-length(Devuelta),' ');

    writeln(arch, ' ');
    writeln(arch, 'Recibido : '+s+Recibido);
    writeln(arch, 'Devuelta : '+s1+Devuelta);
  end;

    msg := Trim(RFactura.QFacturaFAC_MENSAJE1.Value);
  if msg <> '' then
  begin
    writeln(arch, ' '); // una l?nea en blanco antes del mensaje

    if Length(copy(msg,1,39)) > 0 then
      writeln(arch, copy(msg,1,39));
    if Length(copy(msg,40,40)) > 0 then
      writeln(arch, copy(msg,40,40));
    if Length(copy(msg,81,40)) > 0 then
      writeln(arch, copy(msg,81,40));
    if Length(copy(msg,121,40)) > 0 then
      writeln(arch, copy(msg,121,40));
    if Length(copy(msg,161,40)) > 0 then
      writeln(arch, copy(msg,161,40));
  end;
         

  {writeln(arch, ' ');
  IF Length(Trim(copy(RFactura.QFacturaFAC_MENSAJE1.Value,1,39))) <=40  THEN
  writeln(arch, copy(RFactura.QFacturaFAC_MENSAJE1.Value,1,39));
  IF Length(Trim(copy(RFactura.QFacturaFAC_MENSAJE1.Value,40,80)))<=40 THEN
  writeln(arch, copy(RFactura.QFacturaFAC_MENSAJE1.Value,40,80));
  IF Length(Trim(copy(RFactura.QFacturaFAC_MENSAJE1.Value,81,120)))<=40  THEN
  writeln(arch, copy(RFactura.QFacturaFAC_MENSAJE1.Value,81,120));
  IF Length(Trim(copy(RFactura.QFacturaFAC_MENSAJE1.Value,121,160)))<=40  THEN
  writeln(arch, copy(RFactura.QFacturaFAC_MENSAJE1.Value,121,160));
  IF Length(Trim(copy(RFactura.QFacturaFAC_MENSAJE1.Value,161,200)))<=40  THEN
  writeln(arch, copy(RFactura.QFacturaFAC_MENSAJE1.Value,161,200));}
  //writeln(arch, ' ');
  //writeln(arch, ' ');
  //writeln(arch, ' ');
  
  if Query1.FieldByName('fir').AsString = 'Si' then
  begin
    writeln(arch, dm.Centro('_________________________'));
    writeln(arch, dm.Centro('Realizado por '));
    writeln(arch, ' ');
    //writeln(arch, ' ');
    writeln(arch, ' ');
    writeln(arch, dm.Centro('_________________________'));
    writeln(arch, dm.Centro('Firma del Cliente '));
  end;
  
  //writeln(arch, ' ');
  {writeln(arch, ' ');
  writeln(arch, ' ');   }


 {if codigoabre = 'Termica' then
  writeln(arch,chr(27)+chr(109));  }

   //Informacion necesaria para el codigo QR
    {dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select ');
    dm.Query1.SQL.Add('(select top 1 UrlCodigoQR from vwFacturasXMLRptCodigoBarra cb ');
    dm.Query1.SQL.Add(' where cb.emp_codigo=f.emp_codigo and cb.fac_numero=f.fac_numero ');
    dm.Query1.SQL.Add(' and cb.tfa_codigo=f.tfa_codigo and cb.fac_forma=f.fac_forma) as UrlCodigoQR,');
    dm.Query1.SQL.Add('f.codigoseguridad, ');
    dm.Query1.SQL.Add('CONVERT(varchar(23), f.fechafirma, 121) AS fechafirma,');
    dm.Query1.SQL.Add('(select top 1 tf.cod_dgii from TipoNCF tf where tf.tip_codigo=f.tip_codigo) as cod_dgii,');
    dm.Query1.SQL.Add('ISNULL(f.AceptadoDGII,0) AS AceptadoDGII ');
    dm.Query1.SQL.Add('from FACTURAS f ');
    dm.Query1.SQL.Add('where f.emp_codigo=:emp and f.tfa_codigo=:tipo ');
    dm.Query1.SQL.Add('and f.fac_numero=:numero and f.fac_forma=:forma ');
    dm.Query1.SQL.Add('and f.suc_codigo=:suc');
    dm.Query1.Parameters.ParamByName('emp').Value    := DM.vp_cia;
    dm.Query1.Parameters.ParamByName('tipo').Value   := QFacturaTFA_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('numero').Value := QFacturaFAC_NUMERO.Value;
    dm.Query1.Parameters.ParamByName('forma').Value  := QFacturaFAC_FORMA.Value;
    dm.Query1.Parameters.ParamByName('suc').Value    := QFacturaSUC_CODIGO.Value;
    dm.Query1.Open;

    qrURL      := dm.Query1.FieldByName('UrlCodigoQR').AsString;
    codSeg     := dm.Query1.FieldByName('codigoseguridad').AsString;
    fechaFirma := dm.Query1.FieldByName('fechafirma').AsString;
        codDGII    := dm.Query1.FieldByName('cod_dgii').AsString;      }

    dm.Query1.Close;
    dm.Query1.SQL.Clear;

    dm.Query1.SQL.Add('SELECT');
    dm.Query1.SQL.Add('  dbo.fnGenerarUrlTimbre(');
    dm.Query1.SQL.Add('      f.emp_codigo,');
    dm.Query1.SQL.Add('      e.emp_rnc,');
    dm.Query1.SQL.Add('      cl.cli_rnc,');
    dm.Query1.SQL.Add('      ENC.eNCF_calculado,');
    dm.Query1.SQL.Add('      f.fac_fecha,');
    dm.Query1.SQL.Add('      (dbo.fn_obtenerTotalGravadoDGINew_ForQR(');
    dm.Query1.SQL.Add('           f.emp_codigo,f.suc_codigo, f.fac_numero, 1, f.tfa_codigo, f.fac_forma');
    dm.Query1.SQL.Add('       ) + ISNULL(f.fac_itbis,0) + ISNULL(Det.monto_exento,0)');
    dm.Query1.SQL.Add('      ),');
    dm.Query1.SQL.Add('      f.fechafirma,');
    dm.Query1.SQL.Add('      f.codigoseguridad');
    dm.Query1.SQL.Add('  ) AS UrlCodigoQR,');
    dm.Query1.SQL.Add('  f.codigoseguridad,');
    dm.Query1.SQL.Add('  CONVERT(varchar(23), f.fechafirma, 121) AS fechafirma,');
    dm.Query1.SQL.Add('  (SELECT TOP 1 tf.cod_dgii FROM TipoNCF tf WHERE tf.tip_codigo = f.tip_codigo) AS cod_dgii,');
    dm.Query1.SQL.Add('  ISNULL(f.AceptadoDGII,0) AS AceptadoDGII'); // <-- solo esta vez

    dm.Query1.SQL.Add('FROM FACTURAS f');
    dm.Query1.SQL.Add('INNER JOIN EMPRESAS e ON e.emp_codigo = f.emp_codigo');
    dm.Query1.SQL.Add('LEFT  JOIN CLIENTES cl ON cl.emp_codigo = f.emp_codigo AND cl.cli_codigo = f.cli_codigo');

    dm.Query1.SQL.Add('CROSS APPLY (');
    dm.Query1.SQL.Add('  SELECT eNCF_calculado = COALESCE(');
    dm.Query1.SQL.Add('      NULLIF(LTRIM(RTRIM(f.eNCF)),''''),');
    dm.Query1.SQL.Add('      CASE WHEN LTRIM(RTRIM(ISNULL(f.NCF_Fijo,''''))) <> ''''');
    dm.Query1.SQL.Add('           THEN LTRIM(RTRIM(f.NCF_Fijo)) + RIGHT(REPLICATE(''0'',8) + CAST(ISNULL(f.NCF_Secuencia,0) AS varchar(20)), 8)');
    dm.Query1.SQL.Add('           ELSE '''' END)');
    dm.Query1.SQL.Add(') ENC');

    dm.Query1.SQL.Add('OUTER APPLY (');
    dm.Query1.SQL.Add('  SELECT SUM(CASE');
    dm.Query1.SQL.Add('       WHEN ISNULL(pro.pro_montoitbis,0)=0 THEN ISNULL(df.det_cantidad,0)*ISNULL(df.det_precio,0)');
    dm.Query1.SQL.Add('       WHEN ISNULL(df.det_itbis,0)=0       THEN ISNULL(df.det_cantidad,0)*ISNULL(df.det_precio,0)');
    dm.Query1.SQL.Add('       ELSE 0 END) AS monto_exento');
    dm.Query1.SQL.Add('  FROM det_factura df');
    dm.Query1.SQL.Add('  LEFT JOIN Productos pro ON pro.emp_codigo=df.emp_codigo AND pro.pro_codigo=df.pro_codigo');
    dm.Query1.SQL.Add('  WHERE df.emp_codigo=f.emp_codigo AND df.suc_codigo=f.suc_codigo');
    dm.Query1.SQL.Add('    AND df.fac_forma=f.fac_forma AND df.tfa_codigo=f.tfa_codigo AND df.fac_numero=f.fac_numero');
    dm.Query1.SQL.Add(') Det');

    dm.Query1.SQL.Add('WHERE f.emp_codigo = :emp');
    dm.Query1.SQL.Add('  AND f.tfa_codigo = :tipo');
    dm.Query1.SQL.Add('  AND f.fac_numero = :numero');
    dm.Query1.SQL.Add('  AND f.fac_forma  = :forma');
    dm.Query1.SQL.Add('  AND f.suc_codigo = :suc');

    dm.Query1.Parameters.ParamByName('emp').Value    := DM.vp_cia;
    dm.Query1.Parameters.ParamByName('tipo').Value   := QFacturaTFA_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('numero').Value := QFacturaFAC_NUMERO.Value;
    dm.Query1.Parameters.ParamByName('forma').Value  := QFacturaFAC_FORMA.Value;
    dm.Query1.Parameters.ParamByName('suc').Value    := QFacturaSUC_CODIGO.Value;

    dm.Query1.Open; // <-- IMPORTANTE
      qrURL      := dm.Query1.FieldByName('UrlCodigoQR').AsString;
    codSeg     := dm.Query1.FieldByName('codigoseguridad').AsString;
    fechaFirma := dm.Query1.FieldByName('fechafirma').AsString;
        codDGII    := dm.Query1.FieldByName('cod_dgii').AsString;
    if dm.Query1.FieldByName('AceptadoDGII').AsBoolean
       and (Trim(qrURL) <> '') then
    begin

     qrData := AnsiString(Trim(qrURL));
    WriteQR(arch, qrData, 6, 48);   // m?dulo 6, nivel L (r?pido y legible)
     Writeln(arch, 'Fecha firma: ' + fechaFirma);
    Writeln(arch, 'Cod. seguridad: ' + codSeg);

     {
    qrData := AnsiString(qrURL);
    WriteQR(arch, qrData, 6, 48);  // m?dulo 6, nivel L
    Writeln(arch, 'Fecha firma: ' + fechaFirma);
    Writeln(arch, 'Cod. seguridad: ' + codSeg);   
    Writeln(arch); // l?nea en blanco antes del corte
    }
  end
  else
  begin
    // No imprime QR ni datos;
    // Writeln(arch, 'Documento pendiente de aceptaci?n DGII');
  end;
  writeln(arch, ' ');
  // Mensaje final opcional
  Writeln(arch, dm.Centro('?Gracias por su compra!'));
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  Writeln(arch);

  // ---- Corte de papel ----
  Write(arch, GS($56) + AnsiChar(#66) + AnsiChar(#0));  // GS V B 0  (corte parcial)
  Writeln(arch);   

  CloseFile(arch);
  dm.AbreCaja;
//  if (actbalance = 'False') then
//  begin
//    if QFacturaFAC_DOMICILIO.Value = 'True' then
//    begin
IF copias > 1 THEN begin
      a := 1;
      while a <= copias do
      begin
        winexec('.\imp.bat',0);
        a := a + 1;
      end;
    end
    else
    begin
      winexec('.\imp.bat',0);
    end;
{  end
  else
  begin
    if QFacturaFAC_DOMICILIO.Value = 'True' then
    begin
      a := 1;
      while a <= dm.QParametrospar_copias_domicilio.Value do
      begin
        winexec('.\imp.bat',0);
        a := a + 1;
      end;
    end
    else
      winexec('.\imp.bat',0);
    if copias = 0 then copias := 1;
    a := 1;
    while a <= copias do
    begin
      winexec('.\imp.bat',0);
//      winexec('.\imp.bat',0);
      a := a + 1;
    end;}
    RFactura.Destroy;
end;

procedure TfrmFactura.ckAEnter(Sender: TObject);
begin
  if dm.QParametrosPAR_FACBAJARLINEA.Value <> 'True' then
    edTipo.setfocus
  else
  begin
    PageControl1.ActivePageIndex := 0;
    Grid.setfocus;
  end;
end;

procedure TfrmFactura.QFacturaBeforePost(DataSet: TDataSet);
var
   TipoMov : String;
   a : Integer;
begin
 Vendedor := QFacturaVEN_CODIGO.AsInteger;

if not (ckItbis.Checked)  then
QFacturaFAC_CONITBIS.Value:= 'False';
  

  if actbalance = 'False' then
    QFacturafac_hold.Value := QFacturaFAC_DOMICILIO.Value
  else
    QFacturafac_hold.Clear;

  if QFacturaMON_CODIGO.IsNull then
     QFacturaMON_CODIGO.Value := dm.QParametrosMON_CODIGO.Value;

  QFacturaFAC_ANO.Value := YearOf(QFacturaFAC_FECHA.Value);
  QFacturaFAC_MES.Value := MonthOf(QFacturaFAC_FECHA.Value);
  QFacturaFAC_PORCCOMISION.Value := Comision;
  QFacturaFAC_HORA.Value := TimeToStr(Time);



  if DM.ExistTable('Ordenes_Taller') then begin
  if qOrdenesTaller.Active then begin
  if DM.QParametrospar_formato_preimpreso.Value = 'Cepinta' then
  QFacturaPED_NUMERO.Value := qOrdenesTallernum.Value;
  end;
  end;

  if QPedidos.Active then
  if QPedidosped_numero.Value > 0 then
  QFacturaPED_NUMERO.value := QPedidosped_numero.Value;

  if QFacturaFAC_COMISION.IsNull then
    QFacturaFAC_COMISION.Value := 0;

{  if vl_accion = 1 then
  begin
  IF FileExists('.\Transporte.txt') then begin
      dm.Query1.sql.clear;
 end;


    if dm.qparametrospar_numerofactura_tipo.Value = 'True' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select isnull(max(fac_numero),0) as maximo');
      dm.Query1.sql.add('from facturas');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and fac_forma = :forma');
      dm.Query1.sql.add('and tfa_Codigo = :tipo');
      dm.Query1.sql.add('and suc_codigo = :suc');
      dm.Query1.Parameters.parambyname('emp').Value  := dm.vp_cia;
      dm.Query1.Parameters.parambyname('forma').Value := QFacturaFAC_FORMA.value;
      dm.Query1.Parameters.parambyname('tipo').Value := QFacturaTFA_CODIGO.value;
      dm.Query1.Parameters.parambyname('suc').Value := QFacturaSUC_CODIGO.value;
      dm.Query1.open;
      QFacturaFAC_NUMERO.value := dm.Query1.fieldbyname('maximo').asinteger+1;
    end
    else
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select isnull(max(fac_numero),0) as maximo');
      dm.Query1.sql.add('from facturas');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and fac_forma = :forma');
      dm.Query1.sql.add('and suc_codigo = :suc');
      dm.Query1.Parameters.parambyname('emp').Value  := dm.vp_cia;
      dm.Query1.Parameters.parambyname('forma').Value := QFacturaFAC_FORMA.value;
      dm.Query1.Parameters.parambyname('suc').Value := QFacturaSUC_CODIGO.value;
      dm.Query1.open;
      QFacturaFAC_NUMERO.value := dm.Query1.fieldbyname('maximo').asinteger+1;
    end;
  end
  else
  begin
    // elminando movimiento
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select tmo_siglas from tiposmov');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and tmo_codigo = :tipo');
    dm.Query1.Parameters.parambyname('emp').Value  := dm.vp_cia;
    dm.Query1.Parameters.parambyname('tipo').Value := CodMov;
    dm.Query1.open;
    TipoMov := dm.Query1.FieldByName('tmo_siglas').asstring;

    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('delete from movimientos');
    dm.Query1.sql.add('where  emp_codigo = :emp');
    dm.Query1.sql.add('and mov_tipo = :tipo');
    dm.Query1.sql.add('and mov_numero = :num');
    dm.Query1.sql.add('and suc_codigo = :suc');
    dm.Query1.Parameters.parambyname('emp').Value  := dm.vp_cia;
    dm.Query1.Parameters.parambyname('tipo').Value  := TipoMov;
    dm.Query1.Parameters.parambyname('num').Value  := QFacturaFAC_NUMERO.value;
    dm.Query1.Parameters.parambyname('suc').Value  := QFacturaSUC_CODIGO.value;
    dm.Query1.ExecSQL;

end;}
end;

procedure TfrmFactura.GridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if QDetalleDET_OFERTA.Value = 'S' then
  begin
    Grid.canvas.font.color := clBlue;
    Grid.canvas.font.Style := Grid.canvas.font.Style + [fsUnderLine];
  end;
  Grid.DefaultDrawcolumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmFactura.btCotizaClick(Sender: TObject);
var
  a, Moneda : integer;
   PrecioReal:Double;
   vieneConDescuento:Boolean;
begin
  vieneConDescuento:= false;
  Search.AliasFields.clear;
  Search.AliasFields.add('Numero');
  Search.AliasFields.add('Nombre del Cliente');
  Search.Query.clear;
  Search.Query.add('select cot_numero, substring(cot_nombre,1,40) as cot_nombre');
  Search.Query.add('from cotizacion');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'cot_numero';
  Search.Title := 'Cotizaciones';
  if Search.execute then
  begin
    Totaliza := false;
    Buscando := True;
    QDetalle.close;
    QDetalle.open;
    QDetalle.disablecontrols;

    Query1.close;
    Query1.sql.clear;
    Query1.sql.add('select t.cli_codigo, t.cot_nombre, t.cli_referencia,');
    Query1.sql.add('ISNULL(c.cli_limite, 0) as cli_limite, t.ven_codigo, t.cot_direccion,');
    Query1.sql.add('t.cot_localidad, t.cot_rnc, ISNULL(c.cli_balance, 0) as cli_balance,');
    Query1.sql.add('t.cot_telefono, t.cot_fax, t.cot_numero, t.mon_codigo, c.cli_cuenta, t.cot_proyecto,');
    Query1.sql.add('ISNULL(c.cli_facturarbce, ''S'') as cli_facturarbce,');
    Query1.sql.add('ISNULL(c.cli_facturarvencida, ''S'') as cli_facturarvencida,');
    Query1.sql.add('ISNULL(c.pro_codigo, 0) as pro_codigo,');
    Query1.sql.add('ISNULL(c.cli_nombre, t.cot_nombre) as cli_nombre,');
    Query1.sql.add('ISNULL(c.cli_direccion, t.cot_direccion) as cli_direccion,');
    Query1.sql.add('ISNULL(c.cli_localidad, t.cot_localidad) as cli_localidad,');
    Query1.sql.add('ISNULL(c.cli_telefono, t.cot_telefono) as cli_telefono,');
    Query1.sql.add('ISNULL(c.cli_fax, t.cot_fax) as cli_fax,');
    Query1.sql.add('ISNULL(c.cli_rnc, t.cot_rnc) as cli_rnc, c.cli_cedula,');
    Query1.sql.add('ISNULL(c.cli_descuento, ISNULL(t.cot_descuento, 0)) as cli_descuento, c.cpa_codigo');
    Query1.sql.add('from cotizacion t left outer join clientes c on (t.emp_codigo = c.emp_codigo and t.cli_codigo = c.cli_codigo)');
    Query1.sql.add('where t.emp_codigo = :emp');
    Query1.sql.add('and t.cot_numero = :numero');
    Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    Query1.Parameters.parambyname('numero').Value := strtoint(search.valuefield);
    Query1.open;

    if Query1.IsEmpty then
    begin
      MessageDlg('No se encontro la cotizacion seleccionada.', mtError, [mbOK], 0);
      QDetalle.EnableControls;
      Buscando := False;
      Exit;
    end;


    if Query1.FieldByName('cli_codigo').Value > 0 then
    begin
      CtaCliente := Query1.fieldbyname('cli_cuenta').asstring;
      QFacturaCLI_CODIGO.value := Query1.fieldbyname('cli_codigo').asinteger;
      QFacturaCLI_REFERENCIA.value := Query1.fieldbyname('cli_referencia').asstring;
      if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
         edCliente.text := Query1.fieldbyname('cli_codigo').asstring
      else
         edCliente.text := Query1.fieldbyname('cli_referencia').asstring;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select * from PR_BUSCA_VENCIDO (:emp, :cli, :fec)');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cli').Value := Query1.fieldbyname('cli_codigo').asstring;
    dm.Query1.Parameters.ParamByName('fec').Value := Date;
    dm.Query1.Open;
    Vencidos := dm.Query1.FieldByName('vencido').asstring;

    if (actbalance = 'True') and (VerLimite = 'True') and
    (StrToFloat(Format('%10.2f',[Query1.fieldbyname('cli_limite').asfloat])) = 0) then
    begin
      MessageDlg('ESTE CLIENTE NO TIENE LIMITE DE CREDITO ASIGNADO,'+#13+
                 'NO PUEDE REALIZARLE UNA FACTURA DE ESTE TIPO',mtError,[mbok],0);
      edCliente.SetFocus;
    end
    else if (actbalance = 'True') and (VerLimite = 'True') and
    (StrToFLoat(Format('%10.2f',[Query1.fieldbyname('cli_limite').asfloat])) -
    StrToFLoat(Format('%10.2f',[Query1.fieldbyname('cli_balance').asfloat])) <= 0) then
    begin
      MessageDlg('ESTE CLIENTE NO TIENE LIMITE DE CREDITO DISPONIBLE,'+#13+
                 'NO PUEDE REALIZARLE UNA FACTURA DE ESTE TIPO',mtError,[mbok],0);
      edCliente.SetFocus;
    end
    else if (actbalance = 'True') and (Query1.fieldbyname('cli_balance').asfloat > 0)
    and (FactPendiente = 'N') then
    begin
      MessageDlg('ESTE CLIENTE TIENE BALANCE PENDIENTE, Y NO'+#13+
                 'PUEDE REALIZARLE UNA FACTURA DE ESTE TIPO',mtError,[mbok],0);
      edCliente.SetFocus;
    end
    else if (actbalance = 'True') and (Query1.fieldbyname('cli_balance').asfloat > 0)
    and (FactVencida = 'N') and (Vencidos = 'S') then
    begin
      MessageDlg('ESTE CLIENTE TIENE FACTURAS VENCIDAS, Y NO'+#13+
                 'PUEDE REALIZARLE UNA FACTURA DE ESTE TIPO',mtError,[mbok],0);
      edCliente.SetFocus;
    end;
    end
    else
    begin
     // edTipo.Enabled := False;
     // btTipo.Enabled := False;
      end;

      FactPendiente                := Query1.fieldbyname('cli_facturarbce').asstring;
      FactVencida                  := Query1.fieldbyname('cli_facturarvencida').asstring;
      QFacturaPRO_CODIGO.Value     := Query1.fieldbyname('pro_codigo').asinteger;
      QFacturaFAC_NOMBRE.value     := Query1.fieldbyname('cli_nombre').asstring;
      QFacturaCLI_CODIGO.value     := Query1.fieldbyname('cli_Codigo').asinteger;
      QFacturaCLI_REFERENCIA.value := Query1.fieldbyname('cli_referencia').asstring;
      btBalance.caption            := 'Bce:'+format('%n',[Query1.fieldbyname('cli_balance').asfloat]);
      Balance                      := Query1.fieldbyname('cli_balance').asfloat;
      tLimite.text                 := format('%n',[Query1.fieldbyname('cli_limite').asfloat -
                                      Query1.fieldbyname('cli_balance').asfloat]);
      Limite                       := StrToFloat(format('%10.2f',[Query1.fieldbyname('cli_limite').asfloat]))-
                                      StrToFloat(format('%10.2f',[Query1.fieldbyname('cli_balance').asfloat]));
      //tDesc.text                   := format('%n',[Query1.fieldbyname('cli_descuento').asfloat]);
      QFacturaFAC_DIRECCION.value  := Query1.fieldbyname('cli_direccion').asstring;
      QFacturaFAC_LOCALIDAD.value  := Query1.fieldbyname('cli_localidad').asstring;
      QFacturaFAC_TELEFONO.value   := Query1.fieldbyname('cli_telefono').asstring;
      QFacturaFAC_FAX.value        := Query1.fieldbyname('cli_fax').asstring;

      if (Query1.fieldbyname('cli_rnc').isnull) or (Trim(Query1.fieldbyname('cli_rnc').asstring) = '') then
        QFacturaFAC_RNC.Value := Query1.fieldbyname('cli_cedula').asstring
      else
        QFacturaFAC_RNC.Value := Query1.fieldbyname('cli_rnc').asstring;

      descuento                    := Query1.fieldbyname('cli_descuento').asfloat;
      if actbalance = 'True' then
        QFacturaCPA_CODIGO.Value     := Query1.fieldbyname('cpa_codigo').asinteger
      else
        QFacturaCPA_CODIGO.Clear;
      if not Query1.fieldbyname('ven_Codigo').IsNull then
        QFacturaVEN_CODIGO.Value     := Query1.fieldbyname('ven_Codigo').asinteger;


    Moneda := Query1.fieldbyname('mon_codigo').asinteger;
    QFacturaFAC_NOMBRE.Value    := Query1.fieldbyname('cot_nombre').asstring;
    QFacturaFAC_DIRECCION.value := Query1.fieldbyname('cot_direccion').asstring;
    QFacturaFAC_TELEFONO.value  := Query1.fieldbyname('cot_telefono').asstring;
    QFacturaFAC_LOCALIDAD.value := Query1.fieldbyname('cot_localidad').asstring;
    QFacturaFAC_FAX.value       := Query1.fieldbyname('cot_fax').asstring;
    QFacturaVEN_CODIGO.Value    := Query1.fieldbyname('ven_codigo').asinteger;
    QFacturaCOT_NUMERO.Value    := Query1.fieldbyname('cot_numero').asinteger;
    QFacturafac_rnc.Value       := Query1.fieldbyname('cot_rnc').asstring;

    QFacturacot_proyecto.value := Query1.fieldbyname('cot_proyecto').asstring;

    Query1.close;
    Query1.sql.clear;
    Query1.sql.add('select d.pro_codigo, d.pro_roriginal, d.pro_rfabric, d.det_descuento,');
    Query1.sql.add('d.det_cantidad, d.det_precio, d.det_conitbis, d.det_itbis, p.dep_codigo,');
    Query1.sql.add('d.det_precio1, d.det_precio2, d.det_precio3, d.det_precio4, ISNULL(pro_serializado,'+QuotedStr('N')+') pro_serializado,');
    Query1.sql.add('d.det_manejaescala, d.det_escala, d.pro_nombre, d.det_medida, d.det_nota, p.pro_costo,');
    Query1.sql.add('d.pro_unidad_medida, d.UnidadID, isnull(d.Medida_Precio1,d.det_precio1)Medida_Precio1, ');
    Query1.sql.add('isnull(d.Medida_Precio2,d.det_precio2)Medida_Precio2, isnull(d.Medida_Precio3,d.det_precio3)Medida_Precio3,');
    Query1.sql.add('isnull(d.Medida_Precio4,d.det_precio4)Medida_Precio4, d.det_cant_unidad_medida,d.det_cantidad, p.pro_servicio, d.DET_DESCMAX, pro_preciomenor,pro_preciomenoremp, pro_precio4 ');

    Query1.sql.add('from det_cotizacion d, productos p');
    Query1.sql.add('where d.pro_codigo = p.pro_codigo');
    Query1.sql.add('and d.emp_codigo = :emp');
    Query1.sql.add('and d.cot_numero = :numero');
    Query1.sql.add('order by d.det_secuencia');
    Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    Query1.Parameters.parambyname('numero').Value := strtoint(search.valuefield);
    Query1.open;

    Totaliza := false;

    a := 0;
    while not Query1.eof do
    begin
      a := a + 1;
      if not Query1.fieldbyname('pro_codigo').isnull then
      begin
        QDetalle.append;
        QDetalleEMP_CODIGO.value    := dm.vp_cia;
        QDetalleDET_SECUENCIA.value := a;
        QDetallepro_servicio.Value  := Query1.fieldbyname('pro_servicio').Value;
  IF Query1.fieldbyname('pro_servicio').AsBoolean then
     QDetalleDET_CANTIDAD.value  := Query1.fieldbyname('det_cantidad').asfloat
  else
     if not dm.pr_verifica_disp(QFacturaEMP_CODIGO.AsString,
                       QFacturaALM_CODIGO.AsString,
                       Query1.fieldbyname('PRO_CODIGO').AsString,
                       Query1.fieldbyname('DET_CANTIDAD').AsString,
                       Query1.fieldbyname('DET_MEDIDA').AsString,
                       IntToStr(dm.Usuario),
                       inttostr(DBLookupComboBox2.KeyValue),
                       '1',//QFacturatip_codigo.AsString,
                       QFacturaFAC_FORMA.AsString,
                       QFactura.Parameters.parambyname('numero').Value)then
      QDetalleDET_CANTIDAD.value  := dm.vCantArt
    else
      QDetalleDET_CANTIDAD.value  := Query1.fieldbyname('det_cantidad').asfloat;

        QDetallePRO_CODIGO.value    := Query1.fieldbyname('pro_codigo').asinteger;
        QDetalleDET_ITBIS.value     := Query1.fieldbyname('det_itbis').asfloat;
        QDetallePRO_NOMBRE.value    := Query1.fieldbyname('pro_nombre').AsString;
        QDetallePRO_RORIGINAL.value := Query1.fieldbyname('pro_roriginal').asstring;
        QDetallePRO_RFABRIC.value   := Query1.fieldbyname('pro_rfabric').asstring;
        QDetalleDET_CONITBIS.value  := Query1.fieldbyname('det_conitbis').asstring;
        QDetalleDET_MANEJAESCALA.Value := Query1.fieldbyname('det_manejaescala').asstring;
        QDetalleDET_ESCALA.Value    := Query1.fieldbyname('det_escala').asstring;
        QDetalleDET_COSTO.Value     := Query1.fieldbyname('pro_costo').asfloat;
        QDetalleDET_DESCMAX.Value   := Query1.fieldbyname('DET_DESCMAX').asfloat;
        QDetalleDET_PRECIO1.Value    := Query1.fieldbyname('Det_Precio1').AsFloat;
        QDetalleDET_PRECIO2.Value    := Query1.fieldbyname('Det_Precio2').AsFloat;
        QDetalleDET_PRECIO3.Value    := Query1.fieldbyname('Det_Precio3').AsFloat;
        QDetalleDET_PRECIO4.Value    := Query1.fieldbyname('pro_precio4').AsFloat;  
        QDetallepro_serializado.Value := Query1.FieldByName('pro_serializado').Value;

       if VarIsNull(Query1.FieldByName('pro_preciomenor').Value) or VarIsEmpty(Query1.FieldByName('pro_preciomenor').Value) then
          QDetalleDET_PRECIOMINIMO.Value := 0  // Ajusta esto seg?n el tipo de campo si no es num?rico
       else
          QDetalleDET_PRECIOMINIMO.Value := Query1.FieldByName('pro_preciomenor').Value;


        if dm.QParametrospar_inv_unidad_medida.AsString = 'True' then
        begin
          if not Query1.fieldbyname('UnidadID').IsNull then
          begin
            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('select Nombre, UnidadID from UnidadMedida');
            dm.Query1.SQL.Add('where emp_codigo = :emp');
            dm.Query1.SQL.Add('and UnidadID = :und');
            dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
            dm.Query1.Parameters.ParamByName('und').Value := Query1.fieldbyname('UnidadID').AsString;
            dm.Query1.Open;
            if dm.Query1.RecordCount > 0 then BEGIN
            QDetallepro_unidad_medida.Value := dm.Query1.FieldByName('Nombre').AsString ;
            QDetalleUnidadID.Value          := DM.Query1.fieldbyname('UnidadID').asstring;
            end
            ELSE
            BEGIN
            QDetallepro_unidad_medida.Value := Query1.fieldbyname('pro_unidad_medida').asstring;
            QDetalleUnidadID.Value          := Query1.fieldbyname('UnidadID').asstring;
            end;
            QDetalleMedida_Precio1.Value    := Query1.fieldbyname('Medida_Precio1').AsFloat;
            QDetalleMedida_Precio2.Value    := Query1.fieldbyname('Medida_Precio2').AsFloat;
            QDetalleMedida_Precio3.Value    := Query1.fieldbyname('Medida_Precio3').AsFloat;
            QDetalleMedida_Precio4.Value    := Query1.fieldbyname('Medida_Precio4').AsFloat;
            QDetalledet_cant_unidad_medida.Value := Query1.fieldbyname('det_cant_unidad_medida').AsFloat;
          end;
        end;
        if trim(Query1.fieldbyname('det_medida').asstring) <> '' then
          QDetalleDET_MEDIDA.Value    := Query1.fieldbyname('det_medida').asstring
        else
          QDetalleDET_MEDIDA.Value := 'Und';
        QDetalleDET_PRECIO.value    := Query1.fieldbyname('det_precio').asfloat;

        if Moneda <> dm.QParametrospar_moneda_local.Value then
           QDetalleDET_PRECIO.value := QDetalleDET_PRECIO.value * QFacturaFAC_TASA.Value;
        if QDetalleDET_DESCUENTO.ReadOnly = False then 
        QDetalleDET_DESCUENTO.Value := Query1.fieldbyname('det_descuento').asfloat;
        QDetalleDET_NOTA.Value      := Query1.fieldbyname('det_nota').Value;

        QDetallealm_codigo.Value    := QFacturaALM_CODIGO.Value;
             with qVerProductos do begin
           Close;
           Parameters.ParamByName('emp').Value  := DM.vp_cia;
           Parameters.ParamByName('alm').Value  := QFacturaALM_CODIGO.Value;
           Parameters.ParamByName('pro').Value  := QDetallePRO_CODIGO.Value;

           if dm.QParametrospar_inv_unidad_medida.Value = 'True' then
               Parameters.ParamByName('can').Value  := QDetalleDET_CANTIDAD.Value * QDetalledet_cant_unidad_medida.Value
            else
               Parameters.ParamByName('can').Value  := QDetalleDET_CANTIDAD.Value;

            Parameters.ParamByName('med').Value  := QDetalleDET_MEDIDA.Value;
            Parameters.ParamByName('usu').Value  := dm.Usuario;
            Parameters.ParamByName('suc').Value  := QFacturaSUC_CODIGO.Value;
            Parameters.ParamByName('tfa').Value  := QFacturaTFA_CODIGO.Value;
            Parameters.ParamByName('for').Value  := QFacturaFAC_FORMA.Value;
            Parameters.ParamByName('num').Value  := QFacturaFAC_NUMERO.Value;
            Open;
        end;

        //Verificamos que el precio no sea inferior al costo y al precio minimo
         if (FactDebajoCosto <> 'True') and (dm.QUsuariosusu_debajo_costo.Value <> 'True')
          then
          begin
            if (StrToFloat(format('%10.2F',[qVerProductos.FieldByName('costo').AsFloat])) > 0) and
            (dm.QParametrosPAR_DEBAJOCOSTO.Value = 'False') then
              begin
                PrecioReal := QDetalleDET_PRECIO.Value - ((QDetalleDET_PRECIO.Value*QDetalleDET_DESCUENTO.Value)/100);
                if dm.QParametrospar_itbisincluido.Value <> 'True' then
                  begin
                  PrecioReal := (QDetalleDET_PRECIO.Value - ((QDetalleDET_PRECIO.Value*QDetalleDET_DESCUENTO.Value)/100));
                  PrecioReal := QDetallePrecioItbis.value;
               end;

          if (StrToFloat(format('%10.2F',[qVerProductos.FieldByName('costo').AsFloat])) >
            PrecioReal)
          and (QDetalleDET_OFERTA.Value <> 'S') and (dm.QParametrosPAR_DEBAJOCOSTO.Value = 'False')
          then
          begin
            MessageDlg('NO PUEDE FACTURAR UN PRODUCTO POR DEBAJO DEL COSTO',mtError,[mbok],0);

          Application.CreateForm(tfrmPideClave, frmPideClave);
          frmPideClave.ShowModal;
          if frmPideClave.acepto = 1 then
          begin
            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('select usu_debajo_costo from usuarios');
            dm.Query1.SQL.Add('where usu_clave = :cla');
            dm.Query1.Parameters.ParamByName('cla').Value := MimeEncodeString(frmPideClave.edclave.Text);
            dm.Query1.Open;
            if (dm.Query1.RecordCount = 0) or (dm.Query1.FieldByName('usu_debajo_costo').Value <> 'True') then
            begin
              MessageDlg('NO TIENE ACCESO PARA FACTURAR UN PRODUCTO POR DEBAJO DEL COSTO '+Format('%n',[QDetalleDET_COSTO.Value])+'%',mtError,[mbok],0);
              QDetalleDET_PRECIO.Value := QDetalleDET_PRECIO1.Value;
              Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
              PageControl1.ActivePageIndex := 0;
              Grid.SetFocus;
              Grid.SelectedIndex := 5;
              QDetalle.EnableControls;
              abort;
            end;
          end
          else
          begin
            QDetalleDET_PRECIO.Value := QDetalleDET_PRECIO1.Value;
            Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
            PageControl1.ActivePageIndex := 0;
            Grid.SetFocus;
            Grid.SelectedIndex := 5;
            QDetalle.EnableControls;
            abort;
          end;
          frmPideClave.Release;
          end;
        end;
      end;

       //Verificando Precio Minimo

     if (FactDebajoMinimo <> 'True') and (dm.QUsuariosusu_debajo_minimo.Value <> 'True')
     then
      begin
        if QDetalleDET_MEDIDA.Value = 'Und' then //Unidad
        begin
          if (dm.QParametrosPAR_DEBAJOPRECIO.Value <> 'False') and
          (StrToFloat(Format('%10.2f',[QDetalleDET_PRECIOMINIMO.Value])) > 0) then
          begin
            if StrToFloat(Format('%10.2f',[QDetalleValor.Value])) <
            StrToFloat(Format('%10.2f',[QDetalleDET_PRECIOMINIMO.Value])) then
            begin
              MessageDlg('EL PRECIO MINIMO PARA ESTE PRODUCTO ES '+
              Format('%n',[QDetalleDET_PRECIOMINIMO.Value]),mtError,[mbok],0);
              //Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
              //QDetalleDET_PRECIO.Clear;
              //Grid.SelectedIndex := 3;
              //abort;
          Application.CreateForm(tfrmPideClave, frmPideClave);
          frmPideClave.ShowModal;
          if frmPideClave.acepto = 1 then
          begin
            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('select usu_debajo_minimo from usuarios');
            dm.Query1.SQL.Add('where usu_clave = :cla');
            dm.Query1.Parameters.ParamByName('cla').Value := MimeEncodeString(frmPideClave.edclave.Text);
            dm.Query1.Open;
            if (dm.Query1.RecordCount = 0) or (dm.Query1.FieldByName('usu_debajo_minimo').Value <> 'True') then
            begin
              MessageDlg('NO TIENE ACCESO PARA FACTURAR UN PRODUCTO POR DEBAJO DEL PRECIO '+Format('%n',[QDetalleDET_PRECIOMINIMO.Value]),mtError,[mbok],0);
              QDetalleDET_PRECIO.Value := QDetalleDET_PRECIO1.Value;
              Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
              PageControl1.ActivePageIndex := 0;
              Grid.SetFocus;
              Grid.SelectedIndex := 5;
              QDetalle.EnableControls;
              abort;
            end;
          end
          else
          begin
            QDetalleDET_PRECIO.Value := QDetalleDET_PRECIO1.Value;
            Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
            PageControl1.ActivePageIndex := 0;
            Grid.SetFocus;
            Grid.SelectedIndex := 5;
            QDetalle.EnableControls;
            abort;
          end;
          frmPideClave.Release;

            end;
          end;
        end
        else
         if QDetalleDET_MEDIDA.Value = 'Emp' then //Empaque
        begin
          if (dm.QParametrosPAR_DEBAJOPRECIO.Value <> 'False') and
          (StrToFloat(Format('%10.2f',[QDetalleDET_PRECIOMINIMOEMP.Value])) > 0) then
          begin
            if StrToFloat(Format('%10.2f',[QDetalleValor.Value])) <
            StrToFloat(Format('%10.2f',[QDetalleDET_PRECIOMINIMOEMP.Value])) then
            begin
              MessageDlg('EL PRECIO MINIMO PARA ESTE PRODUCTO ES '+
              Format('%n',[QDetalleDET_PRECIOMINIMOEMP.Value]),mtError,[mbok],0);
              Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
              QDetalleDET_PRECIO.Clear;
              Grid.SelectedIndex := 3;
              abort;
            end;
          end;
        end;
      end;

          end;
       //Verificar que no sea mayor al precio 4
        if (dm.QParametrosPAR_DEBAJOPRECIO.Value <> 'False') and
          (StrToFloat(Format('%10.2f',[QDetalleDET_PRECIO4.Value])) > 0) then
          begin
            if StrToFloat(Format('%10.2f',[QDetalleValor.Value])) <
            StrToFloat(Format('%10.2f',[QDetalleDET_PRECIO4.Value])) then
            begin
              MessageDlg('EL PRECIO MINIMO PARA ESTE PRODUCTO ES '+
              Format('%n',[QDetalleDET_PRECIO4.Value]),mtError,[mbok],0);

          Application.CreateForm(tfrmPideClave, frmPideClave);
          frmPideClave.ShowModal;
          if frmPideClave.acepto = 1 then
          begin
            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('select usu_debajo_minimo from usuarios');
            dm.Query1.SQL.Add('where usu_clave = :cla');
            dm.Query1.Parameters.ParamByName('cla').Value := MimeEncodeString(frmPideClave.edclave.Text);
            dm.Query1.Open;
            if (dm.Query1.RecordCount = 0) or (dm.Query1.FieldByName('usu_debajo_minimo').Value <> 'True') then
            begin
              MessageDlg('NO TIENE ACCESO PARA FACTURAR UN PRODUCTO POR DEBAJO DEL PRECIO '+Format('%n',[QDetalleDET_PRECIO4.Value]),mtError,[mbok],0);
              QDetalleDET_PRECIO.Value := QDetalleDET_PRECIO1.Value;
              Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
              PageControl1.ActivePageIndex := 0;
              Grid.SetFocus;
              Grid.SelectedIndex := 5;
              QDetalle.EnableControls;
              abort;
            end;
          end
          else
          begin
            QDetalleDET_PRECIO.Value := QDetalleDET_PRECIO1.Value;
            Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
            PageControl1.ActivePageIndex := 0;
            Grid.SetFocus;
            Grid.SelectedIndex := 5;
            QDetalle.EnableControls;
            abort;
          end;
          frmPideClave.Release;

            end;
        end;

          
        /// //Buscando comision para el producto

          if (not QDetalleVEN_CODIGO.IsNull) and (not QDetallePRO_CODIGO.IsNull) then
          begin  
            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('select * from pr_busca_comision (:emp, :pro, :ven)');
            dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
            dm.Query1.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
            dm.Query1.Parameters.ParamByName('ven').Value := QDetalleVEN_CODIGO.Value;
            dm.Query1.Open;
            if QDetalleDET_DESCUENTO.Value > 0 then
              QDetalleDET_COMISION.Value := StrToFloat(format('%10.2f',[dm.Query1.FieldByName('comisiondescuento').AsFloat]))
            else
              QDetalleDET_COMISION.Value := StrToFloat(format('%10.2f',[dm.Query1.FieldByName('comision').AsFloat]));
          end;
          QDetallealm_codigo.Value := vAlmacen;
          QMsnExistencia.Close;
          QMsnExistencia.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
          QMsnExistencia.Parameters.ParamByName('usu').Value := dm.Usuario;
          QMsnExistencia.Open;

          IF (QDetalleDET_DESCUENTO.Value > 0) then
            vieneConDescuento:=true;

         IF ((QDetalleDET_DESCUENTO.Value > 0) and (QDetalleDET_DESCUENTO.Value> QDetalleDET_DESCMAX.Value)
        AND (dm.QUsuariosusu_excede_descuento.Value <> 'True')) AND (QDetalleDET_DESCMAX.Value > 0) THEN BEGIN
        IF MessageDlg('ESTE PRODUCTO NO ACEPTA EL PORCIENTO DE DESCUENTO APLICADO DE UN '+QDetalleDET_DESCUENTO.Text+QuotedStr('%')+CHAR(13)+
        'DEBE SER AUTORIZADO POR UN SUPERVISOR'+CHAR(13)+
        'DESEA CONTINUAR?',mtConfirmation,[mbYes,mbNo],0)=MRYES THEN BEGIN
                  Application.CreateForm(tfrmPideClave, frmPideClave);
          frmPideClave.ShowModal;
          if frmPideClave.acepto = 1 then
          begin
            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('select usu_excede_descuento from usuarios');
            dm.Query1.SQL.Add('where usu_clave = :cla');
            dm.Query1.Parameters.ParamByName('cla').Value := MimeEncodeString(frmPideClave.edclave.Text);
            dm.Query1.Open;
            if (dm.Query1.RecordCount = 0) or (dm.Query1.FieldByName('usu_excede_descuento').Value <> 'True') then
            begin
              MessageDlg('NO TIENE ACCESO PARA EXCEDER EL DESCUENTO MAXIMO DE '+Format('%n',[QDetalleDET_DESCMAX.Value])+'%',mtError,[mbok],0);

              QDetalleDET_DESCUENTO.Value := 0;
              vieneConDescuento:=false;
              Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
              PageControl1.ActivePageIndex := 0;
              Grid.SetFocus;
              Grid.SelectedIndex := 5;
              QDetalle.EnableControls;
              abort;

            end;
          end
          else
          begin
            QDetalleDET_DESCUENTO.Value := 0;
              Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
              PageControl1.ActivePageIndex := 0;
              Grid.SetFocus;
              Grid.SelectedIndex := 5;
              QDetalle.EnableControls;
              abort;
          end;
          frmPideClave.Release;
      end; 

        {if not Query1.fieldbyname('dep_codigo').IsNull then
        begin
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('select alm_codigo from departamentos');
          dm.Query1.SQL.Add('where emp_codigo = :emp');
          dm.Query1.SQL.Add('and dep_codigo = :dep');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
          dm.Query1.Parameters.ParamByName('dep').Value := Query1.fieldbyname('dep_codigo').AsInteger;
          dm.Query1.Open;
          if not dm.Query1.FieldByName('alm_codigo').IsNull then
            QDetallealm_codigo.Value := dm.Query1.FieldByName('alm_codigo').AsInteger;
        end; }

        QDetalle.post;
      end;
      Query1.next;
    end;

    {for a := QDetalleDET_SECUENCIA.value to 30 do
    begin
      QDetalle.append;
      QDetalleEMP_CODIGO.value := dm.vp_cia;
      QDetalleFAC_FORMA.value  := QFacturaFAC_FORMA.value;
      QDetalleDET_SECUENCIA.value := a;
      QDetalle.post;
    end;
    QDetalle.first;}
    QDetalle.enablecontrols;
    QDetalle.first;

    Totaliza := true;
    totalizar;
     //Descuento General - S
    if QFacturaCLI_CODIGO.Value > 0 then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select cli_referencia, cli_codigo, cli_nombre, cli_balance,');
      dm.Query1.sql.add('cli_limite, cli_precio, cli_descuento, cli_cuenta, cli_rnc,');
      dm.Query1.sql.add('cli_direccion, cli_localidad, cli_telefono, cli_fax, cli_cedula');
      dm.Query1.sql.add('from clientes');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and cli_codigo = :cli');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('cli').Value := QFacturaCLI_CODIGO.Value;
      dm.Query1.open;
      if not dm.Query1.IsEmpty then
      begin
      CtaCliente := dm.Query1.fieldbyname('cli_cuenta').asstring;
      QFacturaFAC_NOMBRE.value := dm.Query1.fieldbyname('cli_nombre').asstring;
      QFacturaCLI_CODIGO.value := dm.Query1.fieldbyname('cli_Codigo').asinteger;
      QFacturaCLI_REFERENCIA.value := dm.Query1.fieldbyname('cli_referencia').asstring;
      btBalance.caption := 'Bce:'+format('%n',[dm.Query1.fieldbyname('cli_balance').asfloat]);
      tLimite.text  := format('%n',[dm.Query1.fieldbyname('cli_limite').asfloat-
                                    dm.Query1.fieldbyname('cli_balance').asfloat]);
      Limite        := StrToFloat(format('%10.2f',[dm.Query1.fieldbyname('cli_balance').asfloat]))-
                       StrToFloat(format('%10.2f',[dm.Query1.fieldbyname('cli_limite').asfloat]));
      //tDesc.text    := format('%n',[dm.Query1.fieldbyname('cli_descuento').asfloat]);
      QFacturaFAC_DIRECCION.value := dm.Query1.fieldbyname('cli_direccion').asstring;
      QFacturaFAC_LOCALIDAD.value := dm.Query1.fieldbyname('cli_localidad').asstring;
      QFacturaFAC_TELEFONO.value  := dm.Query1.fieldbyname('cli_telefono').asstring;
      QFacturaFAC_FAX.value       := dm.Query1.fieldbyname('cli_fax').asstring;

      if (dm.Query1.fieldbyname('cli_rnc').isnull) or (Trim(dm.Query1.fieldbyname('cli_rnc').asstring) = '') then
        QFacturaFAC_RNC.Value := dm.Query1.fieldbyname('cli_cedula').asstring
      else
        QFacturaFAC_RNC.Value := dm.Query1.fieldbyname('cli_rnc').asstring;

      descuento := dm.Query1.fieldbyname('cli_descuento').asfloat;
      end;
       //Si tiene descuento aplicado a nivel de items - no permitir aplicar el descuento por cliente
      {  if ( vieneConDescuento and (descuento>0)) then
        begin
          MessageDlg('LOS PRODUCTOS TIENEN DESCUENTO APLICADO, NO ES POSIBLE APLIAR UN DESCUENTO GENERAL QUE TIENE ESTE CLIENTE. ', mtError,[mbok],0);

        end
        else   totalizar;   }
    end;
    Buscando := False;



    PageControl1.ActivePageIndex := 0;
    Grid.setfocus;
  end;
end;

procedure TfrmFactura.btnGuardaTemporalClick(Sender: TObject);
var
  a, b, factmp, id : integer;
begin
  if QDetalleDET_CANTIDAD.Value = 0 then begin
    ShowMessage('NO PUEDE GUARDAR ESTA FACTURA PRODUCTO EN CERO');
    Exit;
  end;

  if not (DM. QParametrosPAR_FACTEMPORAL.Value = 'True')   then
    begin
      MessageDlg('ESTA OPCION NO ESTA HABILITADA EN PARAMETROS DEL SISTEMA,'+#13+
                'CONSULTE CON EL ADMINISTRADOR DEL SISTEMA',
                mtError,[ mbOK],0) ;
      exit;
    end;


  if MessageDlg('DESEA GRABAR LA FACTURA TEMPORALMENTE,'+#13+
                'PARA LUEGO COBRARLA O TERMINAR DE REALIZARLA',
                mtConfirmation,[ mbyes,mbno],0) = mryes then
  begin
if Trim(edTipo.Text)='' then begin
    ShowMessage('Debes indicar el tipo de Factura');
    edTipo.SetFocus;
    Abort;
  end;

    factmp := 0;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;

    //si es un cliente de contado no realizar esta validacion
    if (DBEdit11.Text<>'CLIENTE CONTADO') then
    begin
    dm.Query1.SQL.Add('select fac_numero, id_facturatemporal from facturastmp');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    //dm.Query1.SQL.Add('and tfa_codigo = :tfa');
    dm.Query1.SQL.Add('and fac_nombre = :cli');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    //dm.Query1.Parameters.ParamByName('tfa').Value := strtoint(edtipo.Text);
    dm.Query1.Parameters.ParamByName('cli').Value := DBEdit11.Text;

    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then begin
    if MessageDlg('Existe ya una factura grabada con el nombre'+Char(13)+
    DBEdit11.Text+char(13)+
    'Desea reemplazar esta factura por esta?',mtConfirmation,[mbYes,mbNo],0) = mryes then begin
    factmp := dm.Query1.FieldByName('fac_numero').Value;
    id := dm.Query1.FieldByName('id_facturatemporal').Value;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('delete from facturastmp');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    //dm.Query1.SQL.Add('and tfa_codigo = :tfa');
    dm.Query1.SQL.Add('and fac_forma = '+QuotedStr('A'));
    dm.Query1.SQL.Add('and fac_nombre = :cli');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    // dm.Query1.Parameters.ParamByName('tfa').Value := strtoint(edtipo.Text);
    dm.Query1.Parameters.ParamByName('cli').Value := DBEdit11.Text;
    dm.Query1.ExecSQL;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('delete from det_facturatmp');
    dm.Query1.SQL.Add('where id_facturatemporal = :id');  
   // dm.Query1.SQL.Add('where emp_codigo = :emp');
   // dm.Query1.SQL.Add('and suc_codigo = :suc');
   // dm.Query1.SQL.Add('and tfa_codigo = :tfa');
   // dm.Query1.SQL.Add('and fac_numero = :num');
   // dm.Query1.SQL.Add('and fac_nombre = :fac_nombre');
    dm.Query1.Parameters.ParamByName('id').Value := id;

   // dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
   // dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    //dm.Query1.Parameters.ParamByName('tfa').Value := strtoint(edtipo.Text);
  //  dm.Query1.Parameters.ParamByName('num').Value := factmp;
   // dm.Query1.Parameters.ParamByName('fac_nombre').Value :=DBEdit11.Text;

    dm.Query1.ExecSQL;
    end;

    end;
    end;

    QFacTMP.Close;
    QFacTMP.Parameters.ParamByName('emp').Value := dm.vp_cia;
    QFacTMP.Parameters.ParamByName('num').Value := -1;
    QFacTMP.Parameters.ParamByName('for').Value := 'A';
    QFacTMP.Parameters.ParamByName('tfa').Value := -1;
    QFacTMP.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    QFacTMP.Parameters.ParamByName('id_facturatemporal').Value := -1;
    QFacTMP.Open;
    QFacTMP.Insert;

    QDetalleTMP.Close;
    QDetalleTMP.Parameters.ParamByName('emp').Value := dm.vp_cia;
    QDetalleTMP.Parameters.ParamByName('num').Value := -1;
    QDetalleTMP.Parameters.ParamByName('for').Value := 'A';
    QDetalleTMP.Parameters.ParamByName('tfa').Value := -1;
    QDetalleTMP.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    QDetalleTMP.Parameters.ParamByName('id_facturatemporal').Value := -1;
    QDetalleTMP.Open;


    QFactura.DisableControls;
    QDetalle.DisableControls;

    for a := 0 to QFactura.FieldCount -1 do
      if QFactura.Fields[a].FieldKind <> fkCalculated then
      if not QFactura.Fields[a].IsNull then
      if QFactura.Fields[a].FieldName <> 'FAC_NUMERO' then
      QFacTMP.FieldByName(QFactura.Fields[a].FieldName).Value := QFactura.Fields[a].Value;
    QFacTMPCAJ_CODIGO.IsNull;
    QFacTMPfac_caja.IsNull;
    QFacTMPFAC_NUMERO.Value := factmp;
    QFacTMPTFA_CODIGO.Value := StrToInt(edTipo.Text);
    QFacTMPCLI_CODIGO.Value := QFacturaCLI_CODIGO.Value;
    QFacTMPCLI_REFERENCIA.Value := QFacturaCLI_REFERENCIA.Value;

    QFacTMP.Post;
    QFacTMP.UpdateBatch;

    Totaliza := False;
    QDetalle.First;
    b := 0;
    while not QDetalle.eof do
    begin
      if not QDetallePRO_CODIGO.IsNull then
      begin
        b := b + 1;

        QDetalleTMP.Append;
        QDetalleTMPDET_SECUENCIA.value := b;
        QDetalleTMPDET_CANTDEVUELTA.Value         := QDetalleDET_CANTDEVUELTA.Value;
        QDetalleTMPDET_CANTIDAD.Value             := QDetalleDET_CANTIDAD.Value;
        QDetalleTMPDET_CONITBIS.Value             := QDetalleDET_CONITBIS.Value;
        QDetalleTMPDET_COSTO.Value                := QDetalleDET_COSTO.Value;
        QDetalleTMPDET_DESCUENTO.Value            := QDetalleDET_DESCUENTO.Value;
        QDetalleTMPDET_ITBIS.Value                := QDetalleDET_ITBIS.Value;
        QDetalleTMPDET_PRECIO.Value               := QDetalleDET_PRECIO.Value;
        QDetalleTMPDET_STATUS.Value               := QDetalleDET_STATUS.Value;
        QDetalleTMPDET_TOTAL.Value                := QDetalleDET_TOTAL.Value;
        QDetalleTMPDET_COMISION.Value             := QDetalleDET_COMISION.Value;
        QDetalleTMPDET_OFERTA.Value               := QDetalleDET_OFERTA.Value;
        QDetalleTMPDET_DESCMAX.Value              := QDetalleDET_DESCMAX.Value;
        QDetalleTMPDET_LOTE.Value                 := QDetalleDET_LOTE.Value;
        QDetalleTMPDET_VENCE.Value                := QDetalleDET_VENCE.Value;
        QDetalleTMPDET_TOTALDESC.Value            := QDetalleDET_TOTALDESC.Value;
        QDetalleTMPDET_TOTALITBIS.Value           := QDetalleDET_TOTALITBIS.Value;
        QDetalleTMPDET_PRECIOMINIMO.Value         := QDetalleDET_PRECIOMINIMO.Value;
        QDetalleTMPDET_ESCALA.Value               := QDetalleDET_ESCALA.Value;
        QDetalleTMPDET_MANEJAESCALA.Value         := QDetalleDET_MANEJAESCALA.Value;
        QDetalleTMPDET_MEDIDA.Value               := QDetalleDET_MEDIDA.Value;
        QDetalleTMPDET_COSTOEMP.Value             := QDetalleDET_COSTOEMP.Value;
        QDetalleTMPDET_PRECIO1.Value              := QDetalleDET_PRECIO1.Value;
        QDetalleTMPDET_PRECIO2.Value              := QDetalleDET_PRECIO2.Value;
        QDetalleTMPDET_PRECIO3.Value              := QDetalleDET_PRECIO3.Value;
        QDetalleTMPDET_PRECIO4.Value              := QDetalleDET_PRECIO4.Value;
        QDetalleTMPDET_PRECIOMINIMOEMP.Value      := QDetalleDET_PRECIOMINIMO.Value;
        QDetalleTMPdet_cant_oferta.Value          := QDetalledet_cant_oferta.Value;
        QDetalleTMPdet_nota.Value                 := QDetalleDET_NOTA.Value;
        QDetalleTMPdet_selectivo_ad.Value         := QDetalledet_selectivo_ad.Value;
        QDetalleTMPdet_selectivo_con.Value        := QDetalledet_selectivo_con.Value;
        QDetalleTMPdet_minimo_venta.Value         := QDetalledet_minimo_venta.Value;
        QDetalleTMPdet_cantempaque.Value          := QDetalledet_cantempaque.Value;
        QDetalleTMPdet_cant_unidad_medida.Value   := QDetalledet_cant_unidad_medida.Value;
        QDetalleTMPEMP_CODIGO.Value               := QDetalleEMP_CODIGO.Value;
        QDetalleTMPPRO_BARRA.Value                := QDetallePRO_BARRA.Value;
        QDetalleTMPPRO_CODIGO.Value               := QDetallePRO_CODIGO.Value;
        QDetalleTMPPRO_NOMBRE.Value               := QDetallePRO_NOMBRE.Value;
        QDetalleTMPPRO_RFABRIC.Value              := QDetallePRO_RFABRIC.Value;
        QDetalleTMPPRO_RORIGINAL.Value            := QDetallePRO_RORIGINAL.Value;
        QDetalleTMPPRO_SERVICIO.Value             := QDetallePRO_SERVICIO.Value;
        QDetalleTMPPRO_COMBO.Value                := QDetallePRO_COMBO.Value;
        QDetalleTMPpro_ctacosto.Value             := QDetallepro_ctacosto.Value;
        QDetalleTMPpro_ctainvent.Value            := QDetallepro_ctainvent.Value;
        QDetalleTMPpro_ctaingreso.Value           := QDetallepro_ctaingreso.Value;
        QDetalleTMPpro_ctadescuento.Value         := QDetallepro_ctadescuento.Value;
        QDetalleTMPpro_unidad_medida.Value        := QDetallepro_unidad_medida.Value;
        QDetalleTMPpro_utilizamedidor.Value       := QDetallepro_utilizamedidor.Value;
        QDetalleTMPpro_serializado.Value          := QDetallepro_serializado.Value;
        QDetalleTMPpro_UtilizaRenta.Value         := QDetallepro_UtilizaRenta.Value;
        QDetalleTMPSUC_CODIGO.Value               := QDetalleSUC_CODIGO.Value;
        QDetalleTMPFAC_NUMERO.Value               := QFacTMPFAC_NUMERO.Value;
        QDetalleTMPTFA_CODIGO.Value               := QFacTMPTFA_CODIGO.Value;
        QDetalleTMPFAC_FORMA.Value                := QFacTMPFAC_FORMA.Value;
        QDetalleTMPfac_nombre.value               := DBEdit11.Text;
        QDetalleTMP.post;
      end;
      QDetalle.Next;
    end;
    QDetalleTMP.UpdateBatch;

    QFactura.EnableControls;
    QDetalle.EnableControls;

    Totaliza := true;
    QDetalle.close;
    QFactura.close;
    QFactura.Parameters.ParamByName('emp').Value    := DM.vp_cia;
    QFactura.Parameters.ParamByName('tipo').Value   := -1;
    QFactura.Parameters.ParamByName('forma').Value   := 'A';
    QFactura.Parameters.ParamByName('numero').Value := -1;
    QFactura.Parameters.ParamByName('suc').Value := -1;
    QFactura.open;
    QFactura.insert;
    if dm.QParametrosPAR_FACBAJARLINEA.Value <> 'True' then
      edTipo.setfocus;
  end
  else
  begin
    PageControl1.ActivePageIndex := 0;
    Grid.SetFocus;
  end;
end;


procedure TfrmFactura.q(DataSet: TDataSet);
begin
  QDetalleTMP.close;
  QDetalleTMP.Parameters.ParamByName('emp').Value    := QFacTMPEMP_CODIGO.value;
  QDetalleTMP.Parameters.ParamByName('suc').Value    := QFacTMPSUC_CODIGO.value;
  QDetalleTMP.Parameters.ParamByName('num').Value := QFacTMPFAC_NUMERO.value;
  QDetalleTMP.open;

end;

procedure TfrmFactura.btnBuscaTemporalClick(Sender: TObject);
var
  a : integer;
  TIPO : String;
begin


  if not (DM. QParametrosPAR_FACTEMPORAL.Value = 'True')   then
    begin
      MessageDlg('ESTA OPCION NO ESTA HABILITADA EN PARAMETROS DEL SISTEMA,'+#13+
                'CONSULTE CON EL ADMINISTRADOR DEL SISTEMA',
                mtError,[ mbOK],0) ;
      exit;
    end;

      if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
         dm.ADOSigma.Execute('UPDATE facturastmp SET CLI_CODIGO = NULL, CLI_REFERENCIA = NULL WHERE CLI_CODIGO = 0')
      else
         dm.ADOSigma.Execute('UPDATE facturastmp SET CLI_CODIGO = NULL, CLI_REFERENCIA = NULL WHERE CLI_REFERENCIA = ''0''');

  Application.createform(tfrmBuscaTemporal, frmBuscaTemporal);
  frmBuscaTemporal.QFacturas.Parameters.ParamByName('suc_codigo').Value := DBLookupComboBox2.KeyValue;
  frmBuscaTemporal.QFacturas.Open;
  frmBuscaTemporal.ShowModal;
  if frmBuscaTemporal.acepto = 1 then
  begin
    vl_accion := 1;
    Buscando := True;
    Totaliza := false;
    QDetalle.close;
    QDetalle.open;
    QDetalle.disablecontrols;

    QFacTMP.Close;
    QFacTMP.Parameters.ParamByName('emp').Value    := dm.vp_cia;
    QFacTMP.Parameters.ParamByName('num').Value    := frmBuscaTemporal.QFacturasfac_numero.Value;
    QFacTMP.Parameters.ParamByName('for').Value    := frmBuscaTemporal.QFacturasfac_forma.Value;
    QFacTMP.Parameters.ParamByName('tfa').Value    := frmBuscaTemporal.QFacturastfa_codigo.Value;
    QFacTMP.Parameters.ParamByName('suc').Value    := DBLookupComboBox2.KeyValue;
    QFacTMP.Parameters.ParamByName('id_facturatemporal').Value    := frmBuscaTemporal.QFacturasid_facturatemporal.Value;

    QFacTMP.Open;

    NumFacturaTemporal :=  frmBuscaTemporal.QFacturasfac_numero.Value;


    if not QFacTMPCLI_CODIGO.IsNull then
      if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
         edCliente.text := IntToStr(QFacTMPCLI_CODIGO.value)
      else
         edCliente.text := QFacTMPCLI_REFERENCIA.Value;



    QFactura.DisableControls;

    for a := 1 to QFacTMP.FieldCount -1 do begin
     if QFacTMP.Fields[a].FieldNo <> 43 then
      if (QFacTMP.Fields[a].FieldKind <> fkCalculated) then begin
         QFactura.FieldByName(QFacTMP.Fields[a].FieldName).Value := QFacTMP.Fields[a].Value;
       // TipoFacturas;
        edTipo.Text := frmBuscaTemporal.QFacturastfa_codigo.AsString;
        edTipoExit(Sender);

       end;
       end;



       QFacturaUSU_CODIGO.Value := dm.Usuario;
       QFacturaFAC_FECHA.Value  := Date;
       QFacturaVEN_CODIGO.Value := QFacTMPVEN_CODIGO.Value;
       QFacturatip_codigo.Value := QFacTMPtip_codigo.Value;
       QFacturaCLI_CODIGO.Value := qfactmpcli_codigo.Value;

  if not QFacturatip_codigo.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tip_nombre, tdo_codigo, nombre_dgii from TipoNCF');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tip_codigo = :tip');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('tip').Value  := QFacturatip_codigo.Value;
    dm.Query1.Open;
    TIPO := DM.Query1.FieldByName('tdo_codigo').AsString;
    if dm.Query1.RecordCount > 0 then
      ttiponcf.Text := dm.Query1.FieldByName('nombre_dgii').AsString
    else
      ttiponcf.Text := '';
  end
  else
    ttiponcf.Text := '';

if TIPO = 'REG' then begin
ckItbis.Checked := False;
ckItbisClick(Sender);
end;
if QFacturatip_codigo.Value  <> 4 then
ckItbis.Checked := True;

    QFactura.EnableControls;

    QDetalleTMP.close;
    QDetalleTMP.Parameters.ParamByName('emp').Value    := dm.vp_cia;
    QDetalleTMP.Parameters.ParamByName('num').Value    := frmBuscaTemporal.QFacturasfac_numero.Value;
    QDetalleTMP.Parameters.ParamByName('for').Value    := frmBuscaTemporal.QFacturasfac_forma.Value;
    QDetalleTMP.Parameters.ParamByName('tfa').Value    := frmBuscaTemporal.QFacturastfa_codigo.Value;
    QDetalleTMP.Parameters.ParamByName('suc').Value    := DBLookupComboBox2.KeyValue;
    QDetalleTMP.Parameters.ParamByName('id_facturatemporal').Value    := frmBuscaTemporal.QFacturasid_facturatemporal.value;
    QDetalleTMP.open;

    QDetalleTMP.First;
    QDetalleTMP.disablecontrols;
    a := 0;
    while not QDetalleTMP.Eof do
    begin
      a := a+1;
      QDetalle.Append;
      QDetalleEMP_CODIGO.value    := dm.vp_cia;
      QDetalleDET_SECUENCIA.value := a;
      QDetalleDET_MEDIDA.Value    := QDetalleTMPDET_MEDIDA.Value;
      QDetalleDET_CANTIDAD.value  := QDetalleTMPDET_CANTIDAD.value;
      QDetallePRO_CODIGO.value    := QDetalleTMPPRO_CODIGO.value;
      IF QDetalleTMPDET_DESCUENTO.ReadOnly = False THEN 
      QDetalleDET_DESCUENTO.value := QDetalleTMPDET_DESCUENTO.value;
      QDetalleDET_ITBIS.value     := QDetalleTMPDET_ITBIS.value;
      QDetallePRO_NOMBRE.value    := QDetalleTMPPRO_NOMBRE.value;
      QDetallePRO_RORIGINAL.value := QDetalleTMPPRO_RORIGINAL.value;
      QDetallePRO_RFABRIC.value   := QDetalleTMPPRO_RFABRIC.value;
      QDetalleDET_CONITBIS.value  := QDetalleTMPDET_CONITBIS.value;
      QDetalleDET_MANEJAESCALA.Value := QDetalleTMPDET_MANEJAESCALA.Value;
      QDetalleDET_ESCALA.Value := QDetalleTMPDET_ESCALA.Value;
      QDetallepro_unidad_medida.Value := QDetalleTMPpro_unidad_medida.Value;
      QDetalleUnidadID.Value := QDetalleTMPUnidadID.Value;
      QDetalleMedida_Precio1.Value := QDetalleTMPMedida_Precio1.Value;
      QDetalleMedida_Precio2.Value := QDetalleTMPMedida_Precio2.Value;
      QDetalleMedida_Precio3.Value := QDetalleTMPMedida_Precio3.Value;
      QDetalleMedida_Precio4.Value := QDetalleTMPMedida_Precio4.Value;
      QDetalleDET_PRECIO.value     := QDetalleTMPDET_PRECIO.value;
      QDetalleDET_OFERTA.Value     := QDetalleTMPDET_OFERTA.value;
      QDetalleDET_DESCMAX.Value    := QDetalleTMPDET_DESCMAX.Value;
      QDetalleDET_PRECIO1.value    := QDetalleTMPDET_PRECIO1.value;
      QDetalleDET_PRECIO2.value    := QDetalleTMPDET_PRECIO2.value;
      QDetalleDET_PRECIO3.value    := QDetalleTMPDET_PRECIO3.value;
      QDetalleDET_PRECIO4.value    := QDetalleTMPDET_PRECIO4.value;
      QDetalle.Post;
      QDetalleTMP.Next;
    end;
    QDETALLE.EnableControls;

    Totaliza := true;
    totalizar;

    if not QFacTMPCLI_CODIGO.IsNull then begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select cli_referencia, cli_codigo, cli_nombre, cli_balance,');
      dm.Query1.sql.add('cli_limite, cli_precio, cli_descuento, cli_cuenta,');
      dm.Query1.sql.add('cli_direccion, cli_localidad, cli_telefono, cli_fax');
      dm.Query1.sql.add('from clientes');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and cli_Status = '+#39+'ACT'+#39);
      if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
      begin
        if not QFacTMPCLI_CODIGO.IsNull then BEGIN
        dm.Query1.sql.add('and cli_codigo = :cli');
        dm.Query1.Parameters.parambyname('cli').Value := QFacTMPCLI_CODIGO.Value;
        END
        ELSE
        BEGIN
        dm.Query1.sql.add('and cli_referencia = :cli');
        dm.Query1.Parameters.parambyname('cli').Value := QFacTMPCLI_REFERENCIA.Text;
        end;
      end
      else
      begin
        dm.Query1.sql.add('and cli_referencia = :cli');
        dm.Query1.Parameters.parambyname('cli').Value := QFacTMPCLI_REFERENCIA.text;
      end;
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.open;
      if not DM.Query1.fieldbyname('cli_codigo').IsNull then begin
      QFacturaCLI_CODIGO.Value := DM.Query1.fieldbyname('cli_codigo').Value;
      CtaCliente := dm.Query1.fieldbyname('cli_cuenta').asstring;
      btBalance.caption := 'Bce:'+format('%n',[dm.Query1.fieldbyname('cli_balance').asfloat]);
      tLimite.text  := format('%n',[dm.Query1.fieldbyname('cli_limite').asfloat-
                                    dm.Query1.fieldbyname('cli_balance').asfloat]);
      //tDesc.text    := format('%n',[dm.Query1.fieldbyname('cli_descuento').asfloat]);
      descuento := dm.Query1.fieldbyname('cli_descuento').asfloat;
      Limite        := StrToFloat(format('%10.2f',[dm.Query1.fieldbyname('cli_limite').asfloat]))-
                       StrToFloat(format('%10.2f',[dm.Query1.fieldbyname('cli_balance').asfloat]));

      end;
      end;
    Buscando := False;

    PageControl1.ActivePageIndex := 0;
    
  end;
  frmBuscaTemporal.Release;
end;

procedure TfrmFactura.btBalanceClick(Sender: TObject);
begin
  if not QFacturaCLI_CODIGO.IsNull then
  begin
    Application.CreateForm(tfrmConsBalance, frmConsBalance);
    frmConsBalance.QCXC.Parameters.ParamByName('emp').Value := dm.vp_cia;
    frmConsBalance.QCXC.Parameters.ParamByName('cli').Value := QFacturaCLI_CODIGO.Value;
    frmConsBalance.QCXC.Open;
    frmConsBalance.ShowModal;
    frmConsBalance.Release;
  end;
  SelectNext(ActiveControl, true, true);
end;

procedure TfrmFactura.QFacturaFAC_FORMAChange(Sender: TField);
begin
  if not QFacturaFAC_FORMA.IsNull then
    frmMain.stBar1.Panels[1].Text := QFacturaFAC_FORMA.Value;
end;

procedure TfrmFactura.DBLookupComboBox1Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  Grid.SetFocus;
end;

procedure TfrmFactura.DBLookupComboBox1Enter(Sender: TObject);
begin
  QVendedores.Close;
  QVendedores.Open;
end;

procedure TfrmFactura.DBLookupComboBox1CloseUp(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  Grid.SetFocus;
end;



procedure TfrmFactura.edTipoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  tiponcf : integer;
begin

  if key = vk_return then
  begin
    if Trim(edTipo.Text) <> '' then
    begin
    with qEjecutar do begin
    close;
    sql.clear;
    sql.add('select tfa_nombre, tfa_selcondi, tfa_formatoimp, tfa_puertoimp,');
    sql.add('tfa_actbalance, tfa_cliente, ven_codigo, tfa_precio,');
    sql.add('tfa_mensaje1, tfa_mensaje2, tfa_mensaje3, fpa_codigo,');
    sql.add('tfa_verlimite, tfa_copias, tfa_permite_abonar, tfa_itbis, isnull(tip_codigo,0)tipo,');
    sql.add('tfa_imprimie_encabezado, tfa_rnc, cat_cuenta, tfa_modifica_nombre, tfa_espcliente espcliente');
    sql.add(',Envio_Correo, Envio_Estadocta');
    sql.add('from tiposfactura');
    sql.add('where emp_codigo = '+QuotedStr(DM.QEmpresasEMP_CODIGO.text));
    sql.add('and tfa_codigo = '+QuotedStr(edTipo.text));
    open;

    if qEjecutar.RecordCount > 0 then begin

      ConItbis        := FieldByName('tfa_itbis').AsString;
      QFacturaFAC_CONITBIS.Value := ConItbis;
      vtfa_espcliente := FieldByName('espcliente').AsString;
      PermiteAbonar   := fieldbyname('tfa_permite_abonar').AsString;
      ImprimeEncaqbezado := fieldbyname('tfa_imprimie_encabezado').AsString;
      vEnvioEstadoCta := FieldByName('Envio_Estadocta').Value;
      chkMail.Checked := FieldByName('Envio_Correo').Value;
      ModificaNombre := fieldbyname('tfa_modifica_nombre').asstring;
      CtaTipoFactura := fieldbyname('cat_cuenta').asstring;
      copias     := fieldbyname('tfa_copias').asinteger;
      FPagoIni   := fieldbyname('fpa_codigo').asinteger;
      Precio     := fieldbyname('tfa_precio').asstring;
      PuertoImp  := fieldbyname('tfa_puertoimp').asstring;
      FormatoImp := fieldbyname('tfa_formatoImp').asinteger;
      tTipo.text := fieldbyname('tfa_nombre').asstring;
      actbalance := fieldbyname('tfa_actbalance').asstring;
      VerLimite  := fieldbyname('tfa_verlimite').asstring;
      SelCondi   := FieldByName('tfa_selcondi').AsBoolean;
      SelRNC     := fieldbyname('tfa_rnc').asString;
      tiponcf    := fieldbyname('tipo').AsInteger;
      dbCondi.Enabled := SelCondi;
      btCondi.Enabled := SelCondi;
      QFacturaFAC_MENSAJE1.Value := trim(fieldbyname('tfa_mensaje1').asstring);
      QFacturaFAC_MENSAJE2.Value := fieldbyname('tfa_mensaje2').asstring;
      QFacturaFAC_MENSAJE3.Value := fieldbyname('tfa_mensaje3').asstring;
      if fieldbyname('tfa_actbalance').asstring = 'False' then
      begin
      if QFacturaFAC_NOMBRE.isnull then
      QFacturaFAC_NOMBRE.Value := fieldbyname('tfa_cliente').asstring;
      end;

      if not fieldbyname('ven_codigo').IsNull then
      QFacturaVEN_CODIGO.Value := fieldbyname('ven_codigo').asinteger;


      QFacturafac_abono.Value := 0;
      end
      else
      begin
      ShowMessage('ESTE TIPO DE FACTURA NO EXISTE FAVOR REVISAR');
      edTipo.SetFocus;
      tTipo.Clear;
      Exit;
      end;
      end;


      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('select fpa_codigo from formaspago');
      Query1.SQL.Add('where emp_codigo = :emp');
      Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      Query1.Open;
      if Query1.RecordCount = 0 then
      begin
        edTipo.Text := '';
        MessageDlg('PARA REALIZAR UNA FACTURA DE ESTE TIPO'+#13+
                   'DEBE CREAR LAS FORMAS DE PAGO',mtError,[mbok],0);
        Abort;
        edTipo.SetFocus;
      end;

        totalizar;


      if tiponcf > 0 then
         QFacturatip_codigo.Value := tiponcf;

    end;

    SelectNext(activecontrol, true, true);
  end;
  end;

procedure TfrmFactura.btconduceClick(Sender: TObject);
var
  a, Moneda : integer;
  CtaCosto, CtaInvent, CtaIngreso, CtaDescuento : String;
begin
  Search.AliasFields.clear;
  Search.AliasFields.add('Numero');
  Search.AliasFields.add('Nombre del Cliente');
  Search.Query.clear;
  Search.Query.add('select con_numero, substring(con_nombre,1,40) as con_nombre');
  Search.Query.add('from conduce');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.Query.add('and suc_codigo = '+inttostr(DBLookupComboBox2.KeyValue));
  Search.Query.add('and con_status = '+QuotedStr('EMI'));
  if not QFacturaCLI_CODIGO.IsNull then
    Search.Query.add('and cli_codigo = '+inttostr(QFacturaCLI_CODIGO.Value));
  Search.ResultField := 'con_numero';
  Search.Title := 'Conduces';
  if Search.execute then
  begin
    Totaliza := false;
    Buscando := True;

    if not (QFactura.State in [dsEdit, dsInsert]) then
    QFactura.Edit;

    QDetalle.close;
    QDetalle.open;
    QDetalle.disablecontrols;

    Query1.close;
    Query1.sql.clear;
    Query1.sql.add('select d.cli_codigo, d.con_nombre, d.cli_referencia,');
    Query1.sql.add('d.con_direccion, d.con_localidad, d.ven_codigo, c.cpa_codigo, ');
    Query1.sql.add('d.con_telefono, d.con_fax, d.con_numero, d.suc_codigo, c.cli_cuenta');
    Query1.SQL.Add(',cli_facturarbce, cli_facturarvencida, cli_balance, cli_limite, cli_descuento');
    Query1.SQL.Add(',cli_direccion, cli_localidad, cli_telefono, cli_fax, cli_cedula, cli_rnc');
    Query1.sql.add('from conduce d left outer join clientes c on (d.emp_codigo = c.emp_codigo and d.cli_codigo = c.cli_codigo)');
    Query1.sql.add('where d.emp_codigo = :emp');
    Query1.sql.add('and d.con_numero = :numero');
    Query1.sql.add('and d.suc_codigo = '+inttostr(DBLookupComboBox2.KeyValue));
    Query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    Query1.Parameters.parambyname('numero').Value := strtoint(search.valuefield);
    Query1.open;


    if Query1.FieldByName('cli_codigo').Value > 0 then
    begin
      CtaCliente := Query1.fieldbyname('cli_cuenta').asstring;
      QFacturaCLI_CODIGO.value := Query1.fieldbyname('cli_codigo').asinteger;
      QFacturaCLI_REFERENCIA.value := Query1.fieldbyname('cli_referencia').asstring;
      if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
         edCliente.text := Query1.fieldbyname('cli_codigo').asstring
      else
         edCliente.text := Query1.fieldbyname('cli_referencia').asstring;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select * from PR_BUSCA_VENCIDO (:emp, :cli, :fec)');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cli').Value := Query1.fieldbyname('cli_codigo').asstring;
    dm.Query1.Parameters.ParamByName('fec').Value := Date;
    dm.Query1.Open;
    Vencidos := dm.Query1.FieldByName('vencido').asstring;

    if (actbalance = 'True') and (VerLimite = 'True') and
    (StrToFloat(Format('%10.2f',[Query1.fieldbyname('cli_limite').asfloat])) = 0) then
    begin
      MessageDlg('ESTE CLIENTE NO TIENE LIMITE DE CREDITO ASIGNADO,'+#13+
                 'NO PUEDE REALIZARLE UNA FACTURA DE ESTE TIPO',mtError,[mbok],0);
      edCliente.SetFocus;
    end
    else if (actbalance = 'True') and (VerLimite = 'True') and
    (StrToFLoat(Format('%10.2f',[Query1.fieldbyname('cli_limite').asfloat])) -
    StrToFLoat(Format('%10.2f',[Query1.fieldbyname('cli_balance').asfloat])) <= 0) then
    begin
      MessageDlg('ESTE CLIENTE NO TIENE LIMITE DE CREDITO DISPONIBLE,'+#13+
                 'NO PUEDE REALIZARLE UNA FACTURA DE ESTE TIPO',mtError,[mbok],0);
      edCliente.SetFocus;
    end
    else if (actbalance = 'True') and (Query1.fieldbyname('cli_balance').asfloat > 0)
    and (FactPendiente = 'N') then
    begin
      MessageDlg('ESTE CLIENTE TIENE BALANCE PENDIENTE, Y NO'+#13+
                 'PUEDE REALIZARLE UNA FACTURA DE ESTE TIPO',mtError,[mbok],0);
      edCliente.SetFocus;
    end
    else if (actbalance = 'True') and (Query1.fieldbyname('cli_balance').asfloat > 0)
    and (FactVencida = 'N') and (Vencidos = 'S') then
    begin
      MessageDlg('ESTE CLIENTE TIENE FACTURAS VENCIDAS, Y NO'+#13+
                 'PUEDE REALIZARLE UNA FACTURA DE ESTE TIPO',mtError,[mbok],0);
      edCliente.SetFocus;
    end;
    end
    else
    begin
     // edTipo.Enabled := False;
     // btTipo.Enabled := False;
      end;

      FactPendiente                := Query1.fieldbyname('cli_facturarbce').asstring;
      FactVencida                  := Query1.fieldbyname('cli_facturarvencida').asstring;
      //QFacturaPRO_CODIGO.Value     := Query1.fieldbyname('pro_codigo').asinteger;
      QFacturaFAC_NOMBRE.value     := Query1.fieldbyname('con_nombre').asstring;
      QFacturaCLI_CODIGO.value     := Query1.fieldbyname('cli_Codigo').asinteger;
      QFacturaCLI_REFERENCIA.value := Query1.fieldbyname('cli_referencia').asstring;
      btBalance.caption            := 'Bce:'+format('%n',[Query1.fieldbyname('cli_balance').asfloat]);
      Balance                      := Query1.fieldbyname('cli_balance').asfloat;
      tLimite.text                 := format('%n',[Query1.fieldbyname('cli_limite').asfloat -
                                      Query1.fieldbyname('cli_balance').asfloat]);
      Limite                       := StrToFloat(format('%10.2f',[Query1.fieldbyname('cli_limite').asfloat]))-
                                      StrToFloat(format('%10.2f',[Query1.fieldbyname('cli_balance').asfloat]));
      //tDesc.text                   := format('%n',[Query1.fieldbyname('cli_descuento').asfloat]);
      QFacturaFAC_DIRECCION.value  := Query1.fieldbyname('cli_direccion').asstring;
      QFacturaFAC_LOCALIDAD.value  := Query1.fieldbyname('cli_localidad').asstring;
      QFacturaFAC_TELEFONO.value   := Query1.fieldbyname('cli_telefono').asstring;
      QFacturaFAC_FAX.value        := Query1.fieldbyname('cli_fax').asstring;

      if (Query1.fieldbyname('cli_rnc').isnull) or (Trim(Query1.fieldbyname('cli_rnc').asstring) = '') then
        QFacturaFAC_RNC.Value := Query1.fieldbyname('cli_cedula').asstring
      else
        QFacturaFAC_RNC.Value := Query1.fieldbyname('cli_rnc').asstring;

      descuento                    := Query1.fieldbyname('cli_descuento').asfloat;
      if actbalance = 'True' then
        QFacturaCPA_CODIGO.Value     := Query1.fieldbyname('cpa_Codigo').asinteger
      else
        QFacturaCPA_CODIGO.Clear;
      if not Query1.fieldbyname('ven_Codigo').IsNull then
        QFacturaVEN_CODIGO.Value     := Query1.fieldbyname('ven_Codigo').asinteger;


    //Moneda := Query1.fieldbyname('mon_codigo').asinteger;
    QFacturaFAC_NOMBRE.Value    := Query1.fieldbyname('con_nombre').asstring;
    QFacturaFAC_DIRECCION.value := Query1.fieldbyname('con_direccion').asstring;
    QFacturaFAC_TELEFONO.value  := Query1.fieldbyname('con_telefono').asstring;
    QFacturaFAC_LOCALIDAD.value := Query1.fieldbyname('con_localidad').asstring;
    QFacturaFAC_FAX.value       := Query1.fieldbyname('con_fax').asstring;
    QFacturaVEN_CODIGO.Value    := Query1.fieldbyname('ven_codigo').asinteger;
    QFacturacon_NUMERO.Value    := Query1.fieldbyname('con_numero').asinteger;
    QFacturafac_rnc.Value       := Query1.fieldbyname('cli_rnc').asstring;


    Query1.close;
    Query1.sql.clear;
    Query1.sql.add('select d.pro_codigo, d.pro_roriginal, d.pro_rfabric,');
    Query1.sql.add('d.det_cantidad, d.det_precio, d.det_conitbis, d.det_itbis,');
    Query1.sql.add('d.det_escala, d.det_manejaescala, d.pro_nombre, d.det_medida,');
    Query1.sql.add('d.det_descuento, d.det_nota, p.pro_costo, p.dep_codigo, p.fam_codigo,');
    Query1.sql.add('d.pro_unidad_medida, d.UnidadID, d.det_cantempaque, d.Medida_Precio1,');
    Query1.sql.add('d.Medida_Precio2, d.Medida_Precio3, d.Medida_Precio4, d.det_cant_unidad_medida');
    Query1.sql.add('from det_conduce d, productos p');
    Query1.sql.add('where d.pro_codigo = p.pro_codigo');
    Query1.sql.add('and p.emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.AsInteger));
    Query1.sql.add('and d.emp_codigo = :emp');
    Query1.sql.add('and d.con_numero = :numero');
    Query1.sql.add('and d.suc_codigo = '+inttostr(DBLookupComboBox2.KeyValue));
    Query1.sql.add('order by d.det_secuencia');
    Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    Query1.Parameters.parambyname('numero').Value := strtoint(search.valuefield);
    Query1.open;

    Totaliza := false;

    a := 0;
    while not Query1.eof do
    begin
      a := a + 1;
      if not Query1.fieldbyname('pro_codigo').isnull then
      begin
        QDetalle.append;

        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select fam_cta_costo, fam_cta_inventario, fam_cta_ingreso, fam_cta_descuento from familias');
        dm.Query1.SQL.Add('where emp_codigo = :emp');
        dm.Query1.SQL.Add('and fam_codigo = :fam');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
        dm.Query1.Parameters.ParamByName('fam').Value := Query1.fieldbyname('fam_codigo').AsInteger;
        dm.Query1.Open;

        CtaCosto     := '';
        CtaInvent    := '';
        CtaIngreso   := '';
        CtaDescuento := '';
        if Query1.RecordCount > 0 then
        begin
          CtaCosto     := dm.Query1.fieldbyname('fam_cta_costo').AsString;
          CtaInvent    := dm.Query1.fieldbyname('fam_cta_inventario').AsString;
          CtaIngreso   := dm.Query1.fieldbyname('fam_cta_ingreso').AsString;
          CtaDescuento := dm.Query1.fieldbyname('fam_cta_descuento').AsString;
          QDetallepro_ctacosto.Value      := CtaCosto;
          QDetallepro_ctainvent.Value     := CtaInvent;
          QDetallepro_ctaingreso.Value    := CtaIngreso;
          QDetallepro_ctadescuento.Value  := CtaDescuento;
        end;

        QDetalleEMP_CODIGO.value    := dm.vp_cia;
        QDetalleDET_SECUENCIA.value := a;
        QDetalleTFA_CODIGO.Value    := QFacturaTFA_CODIGO.Value;
        QDetalleFAC_FORMA.Value     := QFacturaFAC_FORMA.Value;
        QDetalleDET_MEDIDA.Value    := Query1.fieldbyname('det_medida').AsString;
        QDetalleDET_CANTIDAD.value  := Query1.fieldbyname('det_cantidad').asfloat;
        QDetallePRO_CODIGO.value    := Query1.fieldbyname('pro_codigo').asinteger;
        QDetalleDET_ITBIS.value     := Query1.fieldbyname('det_itbis').asfloat;
        QDetallePRO_NOMBRE.value    := Query1.fieldbyname('pro_nombre').AsString;
        QDetallePRO_RORIGINAL.value := Query1.fieldbyname('pro_roriginal').asstring;
        QDetallePRO_RFABRIC.value   := Query1.fieldbyname('pro_rfabric').asstring;
        QDetalleDET_PRECIO.value    := Query1.fieldbyname('det_precio').asfloat;
        QDetalleDET_CONITBIS.value  := Query1.fieldbyname('det_conitbis').asstring;
        QDetalleDET_MANEJAESCALA.Value := Query1.fieldbyname('det_manejaescala').asstring;
        QDetalleDET_ESCALA.Value    := Query1.fieldbyname('det_escala').asstring;
        if QDetalleDET_DESCUENTO.ReadOnly = False then
        QDetalleDET_DESCUENTO.Value := Query1.fieldbyname('det_descuento').asfloat;
        QDetalleDET_NOTA.Value      := Query1.fieldbyname('det_nota').AsString;
        QDetalleDET_COSTO.Value     := Query1.fieldbyname('pro_costo').asfloat;
        QDetallealm_codigo.Value    := QFacturaALM_CODIGO.Value;
        QDetallepro_unidad_medida.Value := Query1.fieldbyname('pro_unidad_medida').asstring;
        QDetalleUnidadID.Value := Query1.fieldbyname('UnidadID').asstring;
        QDetalledet_cantempaque.Value := Query1.fieldbyname('det_cantempaque').asfloat;
        QDetalleMedida_Precio1.Value := Query1.fieldbyname('Medida_Precio1').asfloat;
        QDetalleMedida_Precio2.Value := Query1.fieldbyname('Medida_Precio2').asfloat;
        QDetalleMedida_Precio3.Value := Query1.fieldbyname('Medida_Precio3').asfloat;
        QDetalleMedida_Precio4.Value := Query1.fieldbyname('Medida_Precio4').asfloat;
        QDetalledet_cant_unidad_medida.Value := Query1.fieldbyname('det_cant_unidad_medida').asfloat;

        {if not Query1.fieldbyname('dep_codigo').IsNull then
        begin
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('select alm_codigo from departamentos');
          dm.Query1.SQL.Add('where emp_codigo = :emp');
          dm.Query1.SQL.Add('and dep_codigo = :dep');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
          dm.Query1.Parameters.ParamByName('dep').Value := Query1.fieldbyname('dep_codigo').AsInteger;
          dm.Query1.Open;
          if not dm.Query1.FieldByName('alm_codigo').IsNull then
            QDetallealm_codigo.Value := dm.Query1.FieldByName('alm_codigo').AsInteger;
        end;}

      if CtaIngreso <> '' then
      begin
        if not QCuentas.Locate('cat_cuenta', CtaIngreso, []) then
        begin
          QCuentas.Append;
          QCuentascat_cuenta.Value := CtaIngreso;
          QCuentasdet_origen.Value := 'Credito';
          if dm.QParametrospar_itbisincluido.Value = 'True' then
              QCuentasdet_monto.Value  := QCuentasdet_monto.Value + ((QDetalleValor.Value +
                                                                  (QDetalleDET_TOTALDESC.Value * QDetalleDET_CANTIDAD.Value)) -
                                                                  (QDetalleDET_TOTALITBIS.Value * QDetalleDET_CANTIDAD.Value))
            //QCuentasdet_monto.Value  := QCuentasdet_monto.Value + (QDetalleValor.Value - (QDetalleDET_TOTALITBIS.Value * QDetalleDET_CANTIDAD.Value))
          else
            QCuentasdet_monto.Value  := QCuentasdet_monto.Value +(QDetalleDET_PRECIO.Value * QDetalleDET_CANTIDAD.Value);

          QCuentas.Post;
        end
        else
        begin
          QCuentas.Edit;;
          QCuentasdet_origen.Value := 'Credito';
          if dm.QParametrospar_itbisincluido.Value = 'True' then
            QCuentasdet_monto.Value  := QCuentasdet_monto.Value + ((QDetalleValor.Value +
                                                                (QDetalleDET_TOTALDESC.Value * QDetalleDET_CANTIDAD.Value)) -
                                                                (QDetalleDET_TOTALITBIS.Value * QDetalleDET_CANTIDAD.Value))
          else
            QCuentasdet_monto.Value  := QCuentasdet_monto.Value +((QDetalleDET_PRECIO.Value - QDetalleCalcDesc.Value) * QDetalleDET_CANTIDAD.Value);

          QCuentas.Post;
        end;
      end;

      //Cuentas de Costo
      if Trim(CtaCosto) <> '' then
      begin
        if not QCuentas.Locate('cat_cuenta', CtaCosto, []) then
        begin
          QCuentas.Append;
          QCuentascat_cuenta.Value := CtaCosto;
          QCuentasdet_origen.Value := 'Debito';
          QCuentasdet_monto.Value  :=(QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value);
          QCuentas.Post;
        end
        else
        begin
          QCuentas.Edit;;
          QCuentasdet_origen.Value := 'Debito';
          QCuentasdet_monto.Value  := QCuentasdet_monto.Value + (QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value);
          QCuentas.Post;
        end;
      end;

      //Cuenta de Inventario
      if Trim(CtaInvent) <> '' then
      begin
        if not QCuentas.Locate('cat_cuenta', CtaInvent, []) then
        begin
          QCuentas.Append;
          QCuentascat_cuenta.Value := CtaInvent;
          QCuentasdet_origen.Value := 'Credito';
          QCuentasdet_monto.Value  := (QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value);
          QCuentas.Post;
        end
        else
        begin
          QCuentas.Edit;;
          QCuentasdet_origen.Value := 'Credito';
          QCuentasdet_monto.Value  := QCuentasdet_monto.Value + (QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value);
          QCuentas.Post;
        end;
      end;

      //Cuenta de Descuento
      if Trim(CtaDescuento) <> '' then
      begin
        if not QCuentas.Locate('cat_cuenta', CtaDescuento, []) then
        begin
          QCuentas.Append;
          QCuentascat_cuenta.Value := CtaDescuento;
          QCuentasdet_origen.Value := 'Debito';
          QCuentasdet_monto.Value  := QDetalleCalcDesc.Value;
          QCuentas.Post;
        end
        else
        begin
          QCuentas.Edit;;
          QCuentasdet_origen.Value := 'Debito';
          QCuentasdet_monto.Value  := QCuentasdet_monto.Value + QDetalleCalcDesc.Value;
          QCuentas.Post;
        end;
      end;

        QDetalle.post;
      end;
      Query1.next;
    end;

    TotalizarCuentas;

    {for a := QDetalleDET_SECUENCIA.value to 30 do
    begin
      QDetalle.append;
      QDetalleEMP_CODIGO.value := dm.vp_cia;
      QDetalleFAC_FORMA.value  := QFacturaFAC_FORMA.value;
      QDetalleDET_SECUENCIA.value := a;
      QDetalle.post;
    end;
    QDetalle.first;}
    QDetalle.enablecontrols;
    QDetalle.first;

    Totaliza := true;
    totalizar;

    if not (QFactura.State in [dsEdit, dsInsert]) then
    QFactura.Edit;
    
    if not QFacturaCLI_CODIGO.IsNull then
    begin
      Query1.close;
          Query1.sql.clear;
          Query1.sql.add('select cli_referencia, cli_codigo, cli_nombre, cli_balance,');
          Query1.sql.add('cli_limite, cli_precio, cli_descuento, cli_cuenta,');
          Query1.sql.add('cli_direccion, cli_localidad, cli_telefono, cli_fax,');
          Query1.sql.add('cli_factura_debajo_costo, cli_factura_debajo_minimo, tcl_codigo,');
          Query1.sql.add('cli_cedula, cli_rnc, cli_email');
          Query1.sql.add('from clientes');
          Query1.sql.add('where emp_codigo = :emp');
          Query1.sql.add('and cli_Status = '+#39+'ACT'+#39);
          if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
          begin
            Query1.sql.add('and cli_codigo = :cli');
            Query1.Parameters.parambyname('cli').Value := QFacturaCLI_CODIGO.Value;
          end
          else
          begin
            Query1.sql.add('and cli_referencia = :cli');
            Query1.Parameters.parambyname('cli').Value := QFacturaCLI_CODIGO.Value;
          end;
          Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
          Query1.open;

          btBalance.caption := 'Bce:'+format('%n',[Query1.fieldbyname('cli_balance').asfloat]);
          tLimite.text  := format('%n',[Query1.fieldbyname('cli_limite').asfloat-
                                        Query1.fieldbyname('cli_balance').asfloat]);
          //tDesc.text    := format('%n',[Query1.fieldbyname('cli_descuento').asfloat]);
          descuento := Query1.fieldbyname('cli_descuento').asfloat;
          CtaCliente := Query1.fieldbyname('cli_cuenta').asstring;
          Limite    := StrToFloat(format('%10.2f',[Query1.fieldbyname('cli_limite').asfloat]))-
                       StrToFloat(format('%10.2f',[Query1.fieldbyname('cli_balance').asfloat]))+
                       StrToFloat(format('%10.2f',[QFacturaFAC_TOTAL.value]));

          FactDebajoCosto  := Query1.fieldbyname('cli_factura_debajo_costo').asstring;
          vl_dest          := Query1.fieldbyname('cli_email').AsString;
          FactDebajoMinimo := Query1.fieldbyname('cli_factura_debajo_minimo').asstring;
          Precio := Query1.fieldbyname('cli_precio').AsString;

          
    end;
    Buscando := False;

    PageControl1.ActivePageIndex := 0;
    //Grid.setfocus;
  end;
end;

procedure TfrmFactura.QDetalleAfterEdit(DataSet: TDataSet);
begin
  Realizado := False;
  //if not (dm.QParametrospar_fac_preimpresa.Value = 'True') and (dm.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados') then begin
  if (QFacturaCON_NUMERO.Value > 0) and (Totaliza = True) then
  begin
    Messagedlg('ESTA FACTURA ESTA SIENDO GENERADA POR UN'+#13+
               'CONDUCE. NO PUEDE MODIFICARSE',mterror,[mbok],0);
    QDetalle.Cancel;
  //end;
end;  
end;

procedure TfrmFactura.dsFacturaDataChange(Sender: TObject; Field: TField);
begin
  DBEdit5.Enabled   := dm.QParametrospar_modifica_fecha_factura.Value = 'True';
  DBEdit14.ReadOnly := (QFacturaCLI_CODIGO.Value > 0) and (ModificaNombre <> 'True');
  DBEdit11.ReadOnly := (QFacturaCLI_CODIGO.Value > 0) and (ModificaNombre <> 'True');
  DBEdit1.ReadOnly  := (QFacturaCLI_CODIGO.Value > 0) and (ModificaNombre <> 'True');
  DBEdit2.ReadOnly  := (QFacturaCLI_CODIGO.Value > 0) and (ModificaNombre <> 'True');
  DBEdit3.ReadOnly  := (QFacturaCLI_CODIGO.Value > 0) and (ModificaNombre <> 'True');
  //dbinteres.Enabled := intereses = 'True';

  edCliente.Enabled    := QFacturaCON_NUMERO.IsNull;
  btBuscaCli.Enabled   := QFacturaCON_NUMERO.IsNull;
  
  //Panel2.Enabled    := QFacturaCON_NUMERO.IsNull;

  btBuscaProd.Enabled := QFacturaCON_NUMERO.IsNull;
end;

procedure TfrmFactura.btBuscaClienteClick(Sender: TObject);
begin
  if btBuscaCli.Enabled then
    btBuscaCliClick(Self)
  else
  begin
    PageControl1.ActivePageIndex := 0;
    Grid.SetFocus;
  end;
end;

procedure TfrmFactura.ckItbisClick(Sender: TObject);
begin
  if QDetalle.Active then
  begin
    Totalizar;
  end;
end;


procedure TfrmFactura.QDetalleDET_MEDIDAChange(Sender: TField);
begin

if QDetalle.State in [dsedit, dsinsert] then begin
  if (not QDetalleDET_MEDIDA.IsNull) and (dm.QParametrosPAR_FACMEDIDA.Value = 'True') then
  begin
    //Unidad
    if QDetalleDET_MEDIDA.Value = 'Und' then
      QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOUND.Value).AsFloat;

    //Empaque
    if QDetalleDET_MEDIDA.Value = 'Emp' then
      QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOEMP.Value).AsFloat;
  end
  else if (dm.QParametrosPAR_FACMEDIDA.Value = 'False') and (dm.QParametrospar_inv_unidad_medida.Value = 'False') then begin
    QDetalleDET_PRECIO.value := QDetalle.FieldByName('det_'+Precio).AsFloat;
  end;
end;
end;

procedure TfrmFactura.dsDetalleDataChange(Sender: TObject; Field: TField);
begin
  DatosdelMedidor1.Enabled := QDetallepro_utilizamedidor.Value = 'True';
  DatosdelEnvio1.Enabled := QDetallepro_UtilizaEnvio.Value = 'True';

  

end;

procedure TfrmFactura.Imp40ColumnasNC;
var
  arch, puertopeq : textfile;
  puerto : string;
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

  AssignFile(arch, '.\imp.bat');
  rewrite(arch);
  writeln(arch, 'type .\t.txt > '+puerto);
  closefile(arch);

  AssignFile(arch, '.\t.txt');
  rewrite(arch);
  writeln(arch, dm.centro(QSucursalsuc_nombre.Value));
  writeln(arch, dm.centro(QSucursalsuc_direccion.Value));
  writeln(arch, dm.centro(QSucursalsuc_localidad.Value));
  writeln(arch, dm.centro(QSucursalsuc_telefono.Value));
  writeln(arch, dm.centro('RNC:'+QSucursalsuc_rnc.Value));
{  writeln(arch, dm.Centro(trim(dm.QEmpresasEMP_NOMBRE.value)));
  writeln(arch, dm.Centro(trim(DM.QEmpresasEMP_DIRECCION.value)));
  writeln(arch, dm.Centro(trim(DM.QEmpresasEMP_LOCALIDAD.value)));
  writeln(arch, dm.Centro('Telefono : '+trim(dm.QEmpresasEMP_TELEFONO.value)));
  writeln(arch, dm.Centro('RNC: '+dm.QEmpresasEMP_RNC.value)); }
  writeln(arch, ' ');
  writeln(arch, dm.Centro('N O T A   D E   C R E D I T O'));
  writeln(arch, ' ');
  writeln(arch, 'Numero    : '+inttostr(RNotaCredito.QNotaNCR_NUMERO.value));
  writeln(arch, 'Cliente   : '+RNotaCredito.QNotaCLI_NOMBRE.value);
  writeln(arch, 'Fecha     : '+DateToStr(RNotaCredito.QNotaNCR_FECHA.Value));
  writeln(arch, 'Concepto  : '+RNotaCredito.QNotaNCR_CONCEPTO.value);
  writeln(arch, ' ');
  writeln(arch, 'MONTO     : '+chr(27)+chr(52)+Format('%n',[RNotaCredito.QNotaNCR_MONTO.value])+chr(27)+chr(53));
  writeln(arch, 'UTILIZADO : '+chr(27)+chr(52)+Format('%n',[RNotaCredito.QNotaNCR_MONTOUSADO.value])+chr(27)+chr(53));
  writeln(arch, 'DISPONIBLE: '+chr(27)+chr(52)+Format('%n',[RNotaCredito.QNotaDisp.value])+chr(27)+chr(53));

  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, dm.Centro('_____________________'));
  writeln(arch, dm.Centro('Realizado por'));
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  CloseFile(arch);
  winexec('imp.bat',0);
end;

procedure TfrmFactura.btmonedaClick(Sender: TObject);
begin
  Search.AliasFields.clear;
  Search.AliasFields.add('Nombre');
  Search.AliasFields.add('C?digo');
  Search.Query.clear;
  Search.Query.add('select mon_nombre, mon_codigo');
  Search.Query.add('from moneda');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.ResultField := 'mon_Codigo';
  Search.Title := 'Tipo de moneda';
  if Search.execute then
  begin
    QFacturaMON_CODIGO.value := strtoint(Search.ValueField);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select mon_sigla, MON_RELACIONPESOCOMPRA from moneda');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and mon_codigo = :mon');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('mon').Value := QFacturaMON_CODIGO.Value;
    dm.Query1.open;
    tmoneda.Text := dm.Query1.FieldByName('mon_sigla').AsString;
    QFacturaFAC_TASA.Value := dm.Query1.FieldByName('MON_RELACIONPESOCOMPRA').AsFloat;
  end;
end;

procedure TfrmFactura.BtDescGralClick(Sender: TObject);
var
  PorcReal : Double;
  mayor : string;
  aplicadescgral:Integer;
begin
  if dm.QUsuariosusu_descuento.Value = 'True' then
  begin
   aplicadescgral := 0;
   QDetalle.DisableControls;
   QDetalle.First;
   while not QDetalle.Eof do begin
   if QDetalleDET_DESCUENTO.Value >0 then begin
   aplicadescgral := aplicadescgral + 1;
   end;
   QDetalle.Next;
   end;
   QDetalle.EnableControls;
   if aplicadescgral > 0 then begin
   QDetalleDET_DESCUENTO.ReadOnly := False;
   Application.MessageBox('Esta factura ya tiene descuento por Items,'+CHAR(13)+
   ' NO es posible dar descuento General','Aviso',MB_OK+MB_ICONSTOP);
   end
   else
   begin
   QDetalleDET_DESCUENTO.ReadOnly := True;
    PorcReal:=0;
    Application.CreateForm(tfrmDescuentoGeneral, frmDescuentoGeneral);
    try
      frmDescuentoGeneral.ShowModal;
      if trim(frmDescuentoGeneral.edDesc.Text) <> '' then
        PorcReal:= StrToFloat(FormatCurr('#,0.00',StrToFloat(frmDescuentoGeneral.edDesc.Text)));
    finally
      frmDescuentoGeneral.Release();
    end;

    if (PorcReal > 100) then
      Application.MessageBox('El monto del porcentaje es Mayor a 100%','Aviso',MB_YESNO+MB_ICONSTOP)
    else
    begin
      Totaliza := false;
      QFacturaporc_desc_gral.value := PorcReal;
      Totaliza := true;
      totalizar();
      IF PorcReal = 0 THEN
      QDetalleDET_DESCUENTO.ReadOnly := False;
      Grid.SetFocus;
      QDetalle.Append;
    end;
end;
end;
end;

procedure TfrmFactura.QFacturaSUC_CODIGOChange(Sender: TField);
begin
//QFacturaALM_CODIGO.Value := QSucursalalm_codigo.Value;
end;

procedure TfrmFactura.ckdomicilioClick(Sender: TObject);
begin
  if QDetalle.Active then
  begin
    totalizar;
  end;
  PageControl1.ActivePageIndex := 0;
  Grid.SetFocus;
end;

procedure TfrmFactura.btrecetaClick(Sender: TObject);
var
  a : integer;
begin
  if not QReceta.Active then
  begin
    QReceta.Parameters.ParamByName('emp').Value := dm.vp_cia;
    QReceta.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    QReceta.Parameters.ParamByName('for').Value := QFacturaFAC_FORMA.Value;
    QReceta.Parameters.ParamByName('tfa').Value := QFacturaTFA_CODIGO.Value;
    QReceta.Parameters.ParamByName('num').Value := -1;
    QReceta.Open;
  end;
  Application.CreateForm(tfrmRecetaOptica, frmRecetaOptica);

  if not QReceta.Locate('pro_codigo',QDetallePRO_CODIGO.Value,[]) then
  begin
    QReceta.Insert;
    QRecetapro_codigo.Value    := QDetallePRO_CODIGO.Value;
    QRecetadet_secuencia.Value := 1;
    QRecetadet_tipo.Value      := 'OD';
    QReceta.Post;

    QReceta.Insert;
    QRecetapro_codigo.Value    := QDetallePRO_CODIGO.Value;
    QRecetadet_secuencia.Value := 2;
    QRecetadet_tipo.Value      := 'IO';
    QReceta.Post;
  end;

  QReceta.DisableControls;
  QReceta.First;
  a := 1;
  while not QReceta.Eof do
  begin
    if QRecetapro_codigo.Value = QDetallePRO_CODIGO.Value then
    begin
      frmRecetaOptica.Grid.Cells[1,a] := QRecetadet_esf.Value;
      frmRecetaOptica.Grid.Cells[2,a] := QRecetadet_cil.Value;
      frmRecetaOptica.Grid.Cells[3,a] := QRecetadet_eje.Value;
      frmRecetaOptica.Grid.Cells[4,a] := QRecetadet_add.Value;
      frmRecetaOptica.Grid.Cells[5,a] := QRecetadet_dist.Value;
      frmRecetaOptica.Grid.Cells[6,a] := QRecetadet_alt.Value;
      a := a + 1;
    end;
    QReceta.Next;
  end;
  QReceta.EnableControls;
  frmRecetaOptica.ShowModal;

  QReceta.DisableControls;
  QReceta.First;
  a := 1;
  while not QReceta.Eof do
  begin
    if QRecetapro_codigo.Value = QDetallePRO_CODIGO.Value then
    begin
      QReceta.Edit;
      QRecetadet_esf.Value := frmRecetaOptica.Grid.Cells[1,a];
      QRecetadet_cil.Value := frmRecetaOptica.Grid.Cells[2,a];
      QRecetadet_eje.Value := frmRecetaOptica.Grid.Cells[3,a];
      QRecetadet_add.Value := frmRecetaOptica.Grid.Cells[4,a];
      QRecetadet_dist.Value := frmRecetaOptica.Grid.Cells[5,a];
      QRecetadet_alt.Value := frmRecetaOptica.Grid.Cells[6,a];
      QReceta.Post;
      a := a + 1;
    end;
    QReceta.Next;
  end;
  QReceta.EnableControls;
  frmRecetaOptica.Release;
end;

procedure TfrmFactura.btcajaClick(Sender: TObject);
begin
  Search.AliasFields.clear;
  Search.AliasFields.add('Nombre');
  Search.AliasFields.add('C?digo');
  Search.Query.clear;
  Search.Query.add('select caj_nombre, caj_codigo');
  Search.Query.add('from cajas');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'caj_Codigo';
  Search.Title := 'Listado de Cajas';
  if Search.execute then
  begin
    QFacturafac_caja.value := strtoint(Search.ValueField);
    Grid.setfocus;
  end;
end;

procedure TfrmFactura.QFacturafac_cajaGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QFacturafac_caja.isnull then
  begin
    Text := inttostr(QFacturafac_caja.value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select caj_nombre');
    dm.Query1.sql.add('from cajas');
    dm.Query1.sql.add('where emp_Codigo = :emp');
    dm.Query1.sql.add('and caj_Codigo = :caj');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('caj').Value := QFacturafac_caja.value;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      tcaja.text := ''
    else
    begin
      tcaja.text := dm.Query1.fieldbyname('caj_nombre').asstring;
    end;
  end
  else
    tcaja.text := '';
end;

procedure TfrmFactura.DBEdit6Enter(Sender: TObject);
begin
  if not ((dm.QParametrospar_formato_preimpreso.Text = 'Sarita & Asociados') AND
          (DM.QParametrospar_fac_preimpresa.Value = 'True')) then begin
  PageControl1.ActivePageIndex := 0;
  Grid.SetFocus;
end
else
Caption := '';
end;

procedure TfrmFactura.tTipoEnter(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  Grid.SetFocus;
end;

procedure TfrmFactura.Imp40ColumnasREC;
var
  s, s1, s2, s3, s4, s5, s6 : array[0..20] of char;
  arch, puertopeq : textfile;
  puerto : string;
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

  if dm.QParametrosPAR_CAJA.Value = 'S' then
    dm.AbreCaja;

  AssignFile(arch, '.\imp.bat');
  rewrite(arch);
  writeln(arch, 'type .\t.txt > '+puerto);
  closefile(arch);

  AssignFile(arch, '.\t.txt');
  rewrite(arch);
  writeln(arch, dm.centro(QSucursalsuc_nombre.Value));
  writeln(arch, dm.centro(QSucursalsuc_direccion.Value));
  writeln(arch, dm.centro(QSucursalsuc_localidad.Value));
  writeln(arch, dm.centro(QSucursalsuc_telefono.Value));
  writeln(arch, dm.centro('RNC:'+QSucursalsuc_rnc.Value));
{  writeln(arch, dm.Centro(trim(dm.QEmpresasEMP_NOMBRE.value)));
  writeln(arch, dm.Centro(trim(DM.QEmpresasEMP_DIRECCION.value)));
  writeln(arch, dm.Centro(trim(DM.QEmpresasEMP_LOCALIDAD.value)));
  writeln(arch, dm.Centro('Telefono : '+trim(dm.QEmpresasEMP_TELEFONO.value)));
  writeln(arch, dm.Centro('RNC: '+dm.QEmpresasEMP_RNC.value));}
  writeln(arch, ' ');
  if RRecibo.QRecibosREC_TIPO.Value = 'C' then
    writeln(arch, dm.Centro('R E C I B O   D E   C O B R O'))
  else
    writeln(arch, dm.Centro('R E C I B O   D E   I N G R E S O'));
  writeln(arch, ' ');
  writeln(arch, 'Numero   : '+inttostr(RRecibo.QRecibosREC_NUMERO.value));
  writeln(arch, 'Fecha    : '+DateToStr(RRecibo.QRecibosREC_FECHA.value));
  writeln(arch, 'Cliente  : '+RRecibo.QRecibosREC_NOMBRE.value);
  writeln(arch, 'Concepto : '+copy(trim(RRecibo.QRecibosREC_CONCEPTO.value),1,40));
  writeln(arch, 'Monto    : '+chr(27)+chr(52)+Format('%n',[RRecibo.QRecibosREC_MONTO.value])+chr(27)+chr(53));
  writeln(arch, 'Descuento: '+chr(27)+chr(52)+Format('%n',[RRecibo.QRecibosREC_DESCUENTO.value])+chr(27)+chr(53));

  writeln(arch, '----------------------------------------');
  writeln(arch, 'Doc Grp Tipo Numero  Fecha      Aplicado');
  writeln(arch, '----------------------------------------');
  while not RRecibo.QDoc.eof do
  begin
    s := '';
    fillchar(S, 5-length(RRecibo.QDocDET_TIPO.value),' ');
    s1 := '';
    fillchar(S1, 4-length(trim(RRecibo.QDocFAC_FORMA.value)),' ');
    s2 := '';
    fillchar(S2, 4-length(inttostr(RRecibo.QDocTFA_CODIGO.value)),' ');
    s3:= '';
    fillchar(s3, 5-length(inttostr(RRecibo.QDocDET_NUMERO.value)),'0');
    s4 := '';
    fillchar(s4, 12-length(datetostr(RRecibo.QDocDET_FECHA.value)),' ');
    s5 := '';
    fillchar(s5, 5-length(Inttostr(RRecibo.QDocCuota.value)),'0');
    s6 := '';
    fillchar(s6, 10-length(format('%n',[RRecibo.QDocDET_MONTO.value])),' ');
    writeln(arch, RRecibo.QDocDET_TIPO.value+s+
                  RRecibo.QDocFAC_FORMA.value+s1+
                  inttostr(RRecibo.QDocTFA_CODIGO.value)+'  '+
                  s3+inttostr(RRecibo.QDocDET_NUMERO.value)+s4+
//                  s5+Inttostr(RRecibo.QDocCuota.value)+s4+
                  datetostr(RRecibo.QDocDET_FECHA.value)+s6+
                  format('%n',[RRecibo.QDocDET_MONTO.value]));

    RRecibo.QDoc.next;
  end;
  writeln(arch, ' ');
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select cli_balance, cli_limite from clientes');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and cli_codigo = :cli');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('cli').Value := RRecibo.QRecibosCLI_CODIGO.Value;
  dm.Query1.Open;

  writeln(arch, ' ');
  writeln(arch, dm.Centro('SU CUENTA REFLEJA UN BALANCE'));
  writeln(arch, dm.Centro('A LA FECHA DE '+Format('%n',[dm.Query1.FieldByName('cli_balance').AsFloat])));
  writeln(arch, dm.Centro('UN DISPONIBLE DE '+Format('%n',[dm.Query1.FieldByName('cli_limite').AsFloat-
                                                             dm.Query1.FieldByName('cli_balance').AsFloat])));

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select * from pr_Estadistica_cli (:emp, :cli, :fec)');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('cli').Value := RRecibo.QRecibosCLI_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('fec').Value    := Date;
  dm.Query1.Open;
  writeln(arch, dm.Centro('Y UN MONTO VENCIDO DE '+Format('%n',[dm.Query1.FieldByName('mtovencido').AsFloat])));

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select f.fpa_nombre, sum(p.for_monto) as monto');
  dm.Query1.SQL.Add('from formaspago f, recformapago p');
  dm.Query1.SQL.Add('where f.emp_codigo = p.emp_codigo');
  dm.Query1.SQL.Add('and f.fpa_codigo = p.fpa_codigo');
  dm.Query1.SQL.Add('and p.emp_codigo = :emp');
  dm.Query1.SQL.Add('and p.rec_numero = :num');
  dm.Query1.SQL.Add('and p.suc_codigo = :suc');
  dm.Query1.SQL.Add('and p.for_monto > 0');
  dm.Query1.SQL.Add('group by f.fpa_nombre');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('num').Value := RRecibo.QRecibosREC_NUMERO.Value;
  dm.Query1.Parameters.ParamByName('suc').Value := RRecibo.QRecibossuc_codigo.Value;
  dm.Query1.Open;

  writeln(arch, ' ');
  writeln(arch, 'FORMA DE PAGO     MONTO');
  writeln(arch, '-------------   ---------');
  dm.Query1.DisableControls;
  dm.Query1.First;
  while not dm.Query1.Eof do
  begin
    s:= '';
    fillchar(s, 14-length(dm.Query1.FieldByName('fpa_nombre').asstring),' ');
    s1 := '';
    fillchar(s1, 10-length(format('%n',[dm.Query1.FieldByName('monto').asfloat])),' ');
    writeln(arch,copy(dm.Query1.FieldByName('fpa_nombre').asstring,1,14)+s+s1+format('%n',[dm.Query1.FieldByName('monto').asfloat]));
    dm.Query1.Next;
  end;
  dm.Query1.EnableControls;

  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, dm.Centro('_______________________'));
  writeln(arch, dm.Centro('Recibido por'));
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, dm.Centro('Gracias por su pago...'));
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  CloseFile(arch);
  winexec('imp.bat',0);
end;

procedure TfrmFactura.btdeletecuentaClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR LA CUENTA?',mtconfirmation,[mbyes,mbno],0) = mryes then
    QCuentas.Delete;
  GridCuentas.setfocus;
end;

procedure TfrmFactura.btfindcuentaClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and cat_movimiento = '+#39+'S'+#39);
  Search.AliasFields.Add('Descripci?n');
  Search.AliasFields.Add('Cuenta');
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catalogo de Cuentas';
  if Search.execute then
  begin
    QCuentas.Edit;
    QCuentasCAT_CUENTA.Value := Search.ValueField;
  end;
end;

procedure TfrmFactura.GridCuentasColEnter(Sender: TObject);
begin
  if GridCuentas.SelectedIndex = 1 then
    GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1;
end;

procedure TfrmFactura.GridCuentasEnter(Sender: TObject);
begin
  GridCuentas.SelectedIndex := 0;
end;

procedure TfrmFactura.GridCuentasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if GridCuentas.SelectedIndex = 2 then
  begin
    if key = 68 then
    begin
      QCuentas.Edit;
      QCuentasDET_ORIGEN.Value := 'Debito';
      GridCuentas.SelectedIndex := 3;
    end
    else if key = 67 then
    begin
      QCuentas.Edit;
      QCuentasDET_ORIGEN.Value := 'Credito';
      GridCuentas.SelectedIndex := 3;
    end;
  end;
  if key = vk_insert then abort;
  if (ssCtrl in Shift) and (key = vk_delete) then abort;
  if key = vk_return then
     if GridCuentas.SelectedIndex <> 3 then
        GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1
     else
     begin
       GridCuentas.SelectedIndex := 0;
       QCuentas.Append;
     end;
end;

procedure TfrmFactura.QCuentascat_cuentaChange(Sender: TField);
begin
  if not QCuentasCAT_CUENTA.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre, cat_origen, cat_movimiento from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value  := QCuentasCAT_CUENTA.Value;
    dm.Query1.Open;
    {if dm.Query1.RecordCount = 0 then
    begin
      MessageDlg('ESTA CUENTA NO EXISTE',mtError,[mbok],0);
      QCuentasCAT_CUENTA.Clear;
      Abort;
    end
    else if dm.Query1.FieldByName('cat_movimiento').AsString = 'N' then
    begin
      MessageDlg('ESTA CUENTA NO ACEPTA MOVIMIENTO',mtError,[mbok],0);
      QCuentasCAT_CUENTA.Clear;
      Abort;
    end}
    if dm.Query1.RecordCount > 0 then
    begin
      QCuentas.Edit;
      QCuentasCAT_NOMBRE.Value := dm.Query1.FieldByName('cat_nombre').AsString;
      if dm.QUsuariosusu_factura_cuentas.Value = 'True' then
        GridCuentas.SelectedIndex := 2;
    end;
  end;
end;


procedure TfrmFactura.QSucursalAfterDelete(DataSet: TDataSet);
begin
  TotalizarCuentas;
end;

procedure TfrmFactura.QSucursalAfterPost(DataSet: TDataSet);
begin
  TotalizarCuentas;
end;

procedure TfrmFactura.QSucursalBeforePost(DataSet: TDataSet);
begin
  if QCuentasCAT_NOMBRE.IsNull then QCuentas.Cancel;
end;

procedure TfrmFactura.QFacturaFAC_ITBISChange(Sender: TField);
var
  CtaItbis : String;
begin
  if QFacturaFAC_ITBIS.AsFloat > 0 then
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
        QCuentasdet_monto.Value  := strtofloat(format('%10.2f',[QFacturaFAC_ITBIS.Value]));
        QCuentas.Post;
      end
      else
      begin
        QCuentas.Edit;
        QCuentasdet_origen.Value := 'Credito';
        QCuentasdet_monto.Value  := strtofloat(format('%10.2f',[QFacturaFAC_ITBIS.Value]));
        QCuentas.Post;
      end;
    end;
  end;
end;

procedure TfrmFactura.QFacturaMON_CODIGOChange(Sender: TField);
begin
  if not QFacturaMON_CODIGO.IsNull then
  begin
    //Text := IntToStr(QFacturaMON_CODIGO.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select mon_sigla, MON_RELACIONPESOCOMPRA from moneda');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and mon_codigo = :mon');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('mon').Value := QFacturaMON_CODIGO.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      tmoneda.Text := dm.Query1.FieldByName('mon_sigla').AsString;
      QFacturaFAC_TASA.Value := dm.Query1.FieldByName('MON_RELACIONPESOCOMPRA').AsFloat;
    end
    else
    begin
      tmoneda.Text := '';
      QFacturaFAC_TASA.Value := 1;
    end;
      //Buscamos la tasa de cambio del dolar
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select mon_sigla, MON_RELACIONPESOCOMPRA from moneda');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and mon_codigo = :mon');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('mon').Value := 2;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      QFacturafac_tasacambio.Value := dm.Query1.FieldByName('MON_RELACIONPESOCOMPRA').AsFloat;
    end
    else
    begin
      QFacturafac_tasacambio.Value := 1;
    end;
  end;
    //VERIFICAMOS SI TIENE ACTIVO MULTIMONEDA
    //modificargrid();
end;

procedure TfrmFactura.QFacturafac_cajaChange(Sender: TField);
begin
 if not QFacturafac_caja.IsNull then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select isnull(caj_codigo,0) as caj_codigo, cat_cuenta');
    dm.Query1.sql.add('from cajas');
    dm.Query1.sql.add('where emp_Codigo = :emp');
    dm.Query1.sql.add('and caj_Codigo = :caj');
    dm.Query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.Query1.Parameters.parambyname('caj').Value := QFacturafac_caja.value;
    dm.Query1.open;

    if dm.Query1.FieldByName('caj_codigo').Value > 0 then
    begin
      caja    := dm.Query1.FieldByName('caj_codigo').Value;
      CtaCaja := dm.Query1.FieldByName('cat_cuenta').AsString;
      //QFacturaALM_CODIGO.Value := dm.Query1.FieldByName('alm_codigo').Value;
    end
    else
    begin
       if MessageDlg('Esta caja no es valida, debes indicar una caja valida,'+Char(13)+
                     'Desea indicarla?',mtConfirmation,[mbyes,mbno],0)=Mryes then begin
       dbCaja.Clear;
       QFacturafac_caja.IsNull;
       dbCaja.SetFocus;
       Exit;
    end
    else
    begin
    frmFactura.Close;
    end;
    end;
  end
  else
  begin
  ShowMessage('Debes indicar una caja valida...');
  dbCaja.Clear;
  QFacturafac_caja.IsNull;
  end;
end;

procedure TfrmFactura.QFacturaALM_CODIGOChange(Sender: TField);
begin
  if not QFacturaALM_CODIGO.IsNull then
  begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select alm_medida from almacen');
    Query1.SQL.Add('where emp_codigo = :emp');
    Query1.SQL.Add('and alm_codigo = :alm');
    Query1.Parameters.ParamByName('alm').Value := QFacturaALM_CODIGO.Value;
    Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    Query1.Open;
    MedidaAlmacen := Query1.FieldByName('alm_medida').AsString;
  end;
end;

procedure TfrmFactura.btdeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR LA FILA?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    BorraSerial(QDetallePRO_CODIGO.AsString);
    Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
    if MDDetalle.Active then begin
    if MDDetalle.RecordCount>0 then begin
    If MDDetalle.Locate('pro_codigo',QDetallePRO_CODIGO.Text,[]) then begin
    DM.ADOSigma.Execute('update existencias set exi_cantidad = isnull(exi_cantidad,0)+ '+FloatToStr(MDDetallecantidadund.Value)+
    ' ,exi_empaque = isnull(exi_empaque,0) +'+FloatToStr(MDDetallecantidademp.Value)+' where emp_codigo ='+QFacturaEMP_CODIGO.Text+' and alm_codigo ='+IntToStr(QFacturaALM_CODIGO.Value)+
    ' and pro_codigo ='+MDDetallepro_codigo.Text);
    DM.ADOSigma.Execute('update productos set pro_existencia = isnull(pro_existencia,0)+ '+FloatToStr(MDDetallecantidadund.Value)+
    ' ,pro_existempaque = isnull(pro_existempaque,0) +'+FloatToStr(MDDetallecantidademp.Value)+' where emp_codigo ='+DM.QParametrosPAR_INVEMPRESA.Text+
    ' and pro_codigo ='+MDDetallepro_codigo.Text);
    MDDetalle.Delete;
    end;
    end;
    end;
    QDetalle.Delete;
//20170815    Totaliza := true;
    Totalizar;
//20170815    Totaliza := false;
  end;
  PageControl1.ActivePageIndex := 0;
  Grid.setfocus;
end;

procedure TfrmFactura.Escalas1Click(Sender: TObject);
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

procedure TfrmFactura.Vercombodelproducto1Click(Sender: TObject);
begin
  Application.CreateForm(tfrmConsCombo, frmConsCombo);
  frmConsCombo.QCombo.Parameters.ParamByName('emp').Value := dm.vp_cia;
  frmConsCombo.QCombo.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
  frmConsCombo.QCombo.Open;
  frmConsCombo.ShowModal;
  frmConsCombo.Release;
end;

procedure TfrmFactura.Crearnotaalproducto1Click(Sender: TObject);
begin
  application.createform(tfrmNota, frmNota);
  frmNota.DBMemo1.DataSource := frmFactura.dsDetalle;
  frmNota.DBMemo1.DataField := 'DET_NOTA';
  frmNota.showmodal;
  frmNota.release;
end;

procedure TfrmFactura.Preventasdelproducto1Click(Sender: TObject);
begin
  Search.AliasFields.clear;
  Search.AliasFields.add('Nombre');
  Search.AliasFields.add('C?digo');
  Search.Query.clear;
  Search.Query.add('select pre_nombre, pre_codigo');
  Search.Query.add('from Preventas');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'pre_Codigo';
  Search.Title := 'Preventas';
  if Search.execute then
  begin
    QDetalle.Edit;
    QDetallepre_codigo.value := strtoint(Search.ValueField);
  end;
  PageControl1.ActivePageIndex := 0;
  Grid.setfocus;
end;

procedure TfrmFactura.SpeedButton1Click(Sender: TObject);
begin
  application.createform(tfrmBuscaRNC, frmBuscaRNC);
  frmBuscaRNC.ShowModal;
  if frmBuscaRNC.seleccion = 1 then
  begin
    QFacturafac_rnc.Value := frmBuscaRNC.QRNCrnc_cedula.Value;
  end;
  DBEdit14.SetFocus;
end;

procedure TfrmFactura.Consultarmovimiento1Click(Sender: TObject);
begin
  application.createform(tfrmConsProdClienteFac, frmConsProdClienteFac);
  if not QFacturaCLI_CODIGO.IsNull then
  begin
    frmConsProdClienteFac.cli := QFacturaCLI_CODIGO.value;
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

procedure TfrmFactura.TotalizarCuentas;
var
  Punt : TBookMark;
  a, b : integer;
begin
  if dm.QUsuariosusu_factura_cuentas.Value = 'True' then
  begin
    if Totaliza = True then
    Begin
      Totaliza := false;
      Debitos  := 0;
      Creditos := 0;
      Punt := QCuentas.GetBookmark;
      QCuentas.DisableControls;
      QCuentas.First;
      while not QCuentas.Eof do
      begin
        if QCuentasDET_ORIGEN.Value = 'Debito' then
          Debitos  := Debitos  + StrToFloat(Format('%10.2f',[QCuentasDET_MONTO.Value]))
        else
          Creditos := Creditos + StrToFloat(Format('%10.2f',[QCuentasDET_MONTO.Value]));

        QCuentas.Next;
      end;
      QCuentas.GotoBookmark(Punt);
      QCuentas.EnableControls;
      lbCR.Caption  := Format('%n',[Creditos]);
      lbDB.Caption  := Format('%n',[Debitos]);
      lbBAL.Caption := Format('%n',[Debitos-Creditos]);

      Totaliza := true;

    end;
    if Trim(lbBAL.Caption) <> '0.00' then
      lbBAL.Font.Color := clRed
    else
      lbBAL.Font.Color := clBlack;
  end;
end;

procedure TfrmFactura.QCuentasAfterPost(DataSet: TDataSet);
begin
  TotalizarCuentas;
end;

procedure TfrmFactura.QCuentasAfterDelete(DataSet: TDataSet);
begin
  TotalizarCuentas;
end;

procedure TfrmFactura.btcamionClick(Sender: TObject);
begin
  Search.Query.clear;
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Placa');
  Search.AliasFields.Add('Chofer');
  Search.AliasFields.Add('Compa??a');
  Search.AliasFields.Add('Marca');
  Search.AliasFields.Add('Modelo');
  Search.AliasFields.Add('C?digo');
  Search.Query.add('select Placa, Chofer, Compania, Marca, Modelo, CamionID');
  Search.Query.add('from Camiones');
  Search.Title := 'Camiones';
  Search.ResultField := 'Placa';
  if Search.execute then
  begin
    QFacturaPlaca.value := Search.ValueField;
    DBEdit17.setfocus;
  end;
end;

procedure TfrmFactura.QFacturaPlacaChange(Sender: TField);
begin
  if not QFacturaPlaca.IsNull then
  begin
    memocamion.Lines.clear;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select CamionID, Marca, Modelo, Placa, Chofer, Metraje, Compania');
    dm.Query1.SQL.Add('from camiones where placa = '+QuotedStr(QFacturaPlaca.AsString));
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      memocamion.Lines.Add('Marca: '+dm.Query1.FieldByName('Marca').AsString);
      memocamion.Lines.Add('Modelo: '+dm.Query1.FieldByName('Modelo').AsString);
      memocamion.Lines.Add('Placa: '+dm.Query1.FieldByName('Placa').AsString);
      memocamion.Lines.Add('Chofer: '+dm.Query1.FieldByName('Chofer').AsString);
      memocamion.Lines.Add('Metraje: '+dm.Query1.FieldByName('Metraje').AsString);
      memocamion.Lines.Add('Compania: '+dm.Query1.FieldByName('Compania').AsString);
      QFacturaMarca.Value    := dm.Query1.FieldByName('Marca').AsString;
      QFacturaModelo.Value   := dm.Query1.FieldByName('Modelo').AsString;
      QFacturaCamionID.Value := dm.Query1.FieldByName('CamionID').AsInteger;
      QFacturaChofer.Value   := dm.Query1.FieldByName('Chofer').AsString;
      QFacturaMetraje.Value  := dm.Query1.FieldByName('Metraje').AsFloat;
      QFacturaCompania.Value := dm.Query1.FieldByName('Compania').AsString;
    end;
  end;
end;

procedure TfrmFactura.BuscaProducto(Cod: String);
var
  Prod : String;
  Lote : Integer;
  CtaCosto, CtaInvent, CtaIngreso, CtaDescuento : String;
begin
  if (dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O') and (Buscando = False) then
  begin
    if not QDetallePRO_RORIGINAL.isnull then
    begin
      if dm.QParametrosPAR_VENVERIFICA.Value = '1' then
      begin
        Prod := Copy(QDetallePRO_RORIGINAL.value,
                dm.QParametrosPAR_VENDIGITOSLOTE.Value+1,
                Length(Trim(QDetallePRO_RORIGINAL.value)));
        Lote := StrToInt(Copy(QDetallePRO_RORIGINAL.value,1,
                dm.QParametrosPAR_VENDIGITOSLOTE.Value));
        if Copy(QDetallePRO_RORIGINAL.value,1,3) = '000' then
        begin
          Lote := 1;
          Prod := Copy(QDetallePRO_RORIGINAL.value,
                dm.QParametrosPAR_VENDIGITOSLOTE.Value+2,
                Length(Trim(QDetallePRO_RORIGINAL.value)));
        end;
      end
      else
        Prod := QDetallePRO_RORIGINAL.Value;

      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select p.pro_codigo, p.pro_nombre, p.pro_costo, p.pro_precio1,');
      dm.Query1.sql.add('p.pro_precio2, p.pro_precio3, p.pro_precio4, p.dep_codigo,');
      dm.Query1.sql.add('p.pro_roriginal, p.pro_rfabric, p.pro_itbis, p.PRO_DESCMAX,');
      dm.Query1.sql.add('p.pro_servicio, p.pro_vence, p.PRO_PRECIOMENOR, p.pro_escala,');
      dm.Query1.sql.add('p.PRO_COSTOEMPAQUE, p.pro_combo, p.pro_preciomenoremp, p.pro_cantempaque,');
      dm.Query1.SQL.Add('p.pro_selectivo_ad, p.pro_selectivo_con, p.pro_minimo_venta,');
      dm.Query1.sql.add('p.mar_codigo, p.pro_ctainvent, p.pro_ctacosto, p.fam_codigo');
      dm.Query1.sql.add(',um.nombre NombreUM, with_servicio_construccion');
      dm.Query1.sql.add('from productos p');
      dm.Query1.sql.add('inner join unidadmedida um on p.emp_codigo=um.emp_codigo and p.unidadid=um.unidadid');
      dm.Query1.sql.add('where p.emp_codigo = :emp');
      //CAMBIO JHONATTAN GOMEZ 04/FEB/2018
      CASE RG_BuscaDet.ItemIndex OF
      0:dm.Query1.sql.add('and p.pro_codigo = :cod');
      1:dm.Query1.sql.add('and p.pro_roriginal = :cod');
      2:dm.Query1.sql.add('and p.pro_rfabric = :cod');
      end;
      //dm.Query1.sql.add('and p.pro_roriginal = :cod');
      //FIN CAMBIO JHONATTAN GOMEZ 04/FEB/2018
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.parambyname('cod').Value := UpperCase(Prod);
      dm.Query1.open;
      QDetallePRO_CODIGO.value := dm.Query1.fieldbyname('pro_codigo').asinteger;
      if (Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)) >= 0) and
      (dm.QParametrosPAR_FACREPITEPROD.Value = 'False') then
      begin
        MessageDlg('ESTE PRODUCTO ESTA INCLUIDO EN ESTA FACTURA',
        mtError,[mbok],0);
        Abort;
      end
      else
      begin
        Query1.Close;
        Query1.SQL.Clear;
        Query1.SQL.Add('select fam_cta_costo, fam_cta_inventario, fam_cta_ingreso, fam_cta_descuento from familias');
        Query1.SQL.Add('where emp_codigo = :emp');
        Query1.SQL.Add('and fam_codigo = :fam');
        Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
        Query1.Parameters.ParamByName('fam').Value := dm.Query1.fieldbyname('fam_codigo').AsInteger;
        Query1.Open;

        CtaCosto     := '';
        CtaInvent    := '';
        CtaIngreso   := '';
        CtaDescuento := '';
        if Query1.RecordCount > 0 then
        begin
          CtaCosto     := Query1.fieldbyname('fam_cta_costo').AsString;
          CtaInvent    := Query1.fieldbyname('fam_cta_inventario').AsString;
          CtaIngreso   := Query1.fieldbyname('fam_cta_ingreso').AsString;
          CtaDescuento := Query1.fieldbyname('fam_cta_descuento').AsString;
          QDetallepro_ctacosto.Value      := CtaCosto;
          QDetallepro_ctainvent.Value     := CtaInvent;
          QDetallepro_ctaingreso.Value    := CtaIngreso;
          QDetallepro_ctadescuento.Value  := CtaDescuento;
        end;

        QDetalledet_cantempaque.Value   := dm.Query1.fieldbyname('pro_cantempaque').asfloat;
        QDetalledet_selectivo_ad.Value := dm.Query1.fieldbyname('pro_selectivo_Ad').asfloat;
        QDetalledet_selectivo_con.Value := dm.Query1.fieldbyname('pro_selectivo_con').asfloat;
        QDetallePRO_COMBO.Value        := dm.Query1.fieldbyname('pro_combo').AsString;
        QDetalleDET_PRECIOMINIMO.Value := dm.Query1.fieldbyname('PRO_PRECIOMENOR').asfloat;
        QDetalleDET_PRECIOMINIMOEMP.Value := dm.Query1.fieldbyname('PRO_PRECIOMENOREMP').asfloat;
        QDetalleDET_VENCE.value        := dm.Query1.fieldbyname('pro_vence').asstring;
        QDetalleDET_MANEJAESCALA.Value := dm.Query1.fieldbyname('pro_escala').asstring;
        QDetallePRO_SERVICIO.Value     := dm.Query1.fieldbyname('pro_servicio').asstring;
        QDetallealm_codigo.Value          := QFacturaALM_CODIGO.Value;

        if dm.Query1.FieldByName('with_servicio_construccion').IsNull then
          QDetalleDet_servicio_construccion.Value := False
        else
          QDetalleDet_servicio_construccion.Value := dm.Query1.FieldByName('with_servicio_construccion').AsBoolean;

        {if not dm.Query1.fieldbyname('dep_codigo').IsNull then
        begin
          Query1.Close;
          Query1.SQL.Clear;
          Query1.SQL.Add('select alm_codigo from departamentos');
          Query1.SQL.Add('where emp_codigo = :emp');
          Query1.SQL.Add('and dep_codigo = :dep');
          Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
          Query1.Parameters.ParamByName('dep').Value := dm.Query1.fieldbyname('dep_codigo').AsInteger;
          Query1.Open;
          if not Query1.FieldByName('alm_codigo').IsNull then
            QDetallealm_codigo.Value := Query1.FieldByName('alm_codigo').AsInteger;
        end;}

        if dm.Query1.fieldbyname('pro_descmax').asfloat = 0 then
        begin
          Query1.Close;
          Query1.SQL.Clear;
          Query1.SQL.Add('select descuento from Prod_Descuentos_TipoFac');
          Query1.SQL.Add('where emp_codigo = :emp');
          Query1.SQL.Add('and tfa_codigo = :tfa');
          Query1.SQL.Add('and pro_codigo = :pro');
          Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
          Query1.Parameters.ParamByName('tfa').Value := StrToInt(Trim(edTipo.Text));
          Query1.Parameters.ParamByName('pro').Value := dm.Query1.fieldbyname('pro_codigo').AsInteger;
          Query1.Open;
          if Query1.RecordCount > 0 then
          begin
            if Query1.FieldByName('descuento').AsFloat > 0 then
              QDetalleDET_DESCMAX.Value := Query1.FieldByName('descuento').AsFloat;
          end;
        end
        else
          QDetalleDET_DESCMAX.Value   := dm.Query1.fieldbyname('pro_descmax').asfloat;

        QDetallePRO_RFABRIC.value      := dm.Query1.fieldbyname('pro_rfabric').asstring;
        QDetallePRO_NOMBRE.value       := dm.Query1.fieldbyname('pro_nombre').asstring;
        QDetalleDET_CONITBIS.value     := dm.Query1.fieldbyname('pro_itbis').asstring;
        QDetalleDET_COSTO.value        := dm.Query1.fieldbyname('pro_costo').asfloat;
        QDetalleDET_COSTOEMP.Value     := dm.Query1.fieldbyname('pro_costoempaque').asfloat;
        if QDetalleDET_DESCUENTO.ReadOnly = False then
        QDetalleDET_DESCUENTO.value    := descuento;
        QDetalleDEP_CODIGO.value       := dm.Query1.fieldbyname('dep_codigo').asinteger;
        QDetalleDET_PRECIO1.Value      := dm.Query1.fieldbyname('pro_precio1').AsFloat;
        QDetalleDET_PRECIO2.Value      := dm.Query1.fieldbyname('pro_precio2').AsFloat;
        QDetalleDET_PRECIO3.Value      := dm.Query1.fieldbyname('pro_precio3').AsFloat;
        QDetalleDET_PRECIO4.Value      := dm.Query1.fieldbyname('pro_precio4').AsFloat;
        QDetalledet_minimo_venta.Value := dm.Query1.fieldbyname('pro_minimo_venta').AsFloat;
        QDetallemar_codigo.Value       := dm.Query1.fieldbyname('mar_codigo').AsInteger;
        QDetalleDET_MEDIDA.Value       := DM.Query1.fieldbyname('NombreUM').Value;


        if Precio = 'Ninguno' then
        begin
          if (not QDetalleDET_MEDIDA.IsNull) and (dm.QParametrosPAR_FACMEDIDA.Value = 'True') then
          begin
            if dm.QParametrosPAR_PRECIOUND.Value <> 'Ninguno' then
            begin
              //Unidad
              if QDetalleDET_MEDIDA.Value = 'Und' then
                QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOUND.Value).AsFloat;
            end;

            if dm.QParametrosPAR_PRECIOEMP.Value <> 'Ninguno' then
            begin
              //Empaque
              if QDetalleDET_MEDIDA.Value = 'Emp' then
                QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOEMP.Value).AsFloat;
            end;
          end
          else if dm.QParametrosPAR_FACMEDIDA.Value = 'False' then
            QDetalleDET_PRECIO.value := QDetalle.FieldByName('det_precio1').AsFloat;
        end
        else
        begin
          if (not QDetalleDET_MEDIDA.IsNull) and (dm.QParametrosPAR_FACMEDIDA.Value = 'True') then
          begin
            //Unidad
            if (QDetalleDET_MEDIDA.Value = 'Und') then
            begin
              if Precio = dm.QParametrosPAR_PRECIOUND.Value then
                QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOUND.Value).AsFloat
              else if Precio = dm.QParametrospar_preciound_m.Value then
                QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrospar_preciound_m.Value).AsFloat;
            end;

            //Empaque
            if QDetalleDET_MEDIDA.Value = 'Emp' then
            begin
              if Precio = dm.QParametrosPAR_PRECIOEMP.Value then
                QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOEMP.Value).AsFloat
              else if Precio = dm.QParametrospar_precioemp_m.Value then
                QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrospar_precioemp_m.Value).AsFloat;
            end;
          end
          else if dm.QParametrosPAR_FACMEDIDA.Value = 'False' then
            QDetalleDET_PRECIO.value := QDetalle.FieldByName('det_'+Precio).AsFloat;

          {if QDetalle.FieldByName('det_'+Precio).AsFloat > 0 then
            QDetalleDET_PRECIO.value := QDetalle.FieldByName('det_'+Precio).AsFloat
          else
            QDetalleDET_PRECIO.value := QDetalle.FieldByName('det_precio1').AsFloat;}
        end;


        //buscando ofertas
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select descuento from pr_busca_oferta (:emp, :pro, :fec)');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
        dm.Query1.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
        dm.Query1.Parameters.ParamByName('fec').Value    := Date;
        dm.Query1.Open;
        if not dm.Query1.FieldByname('descuento').isnull then
        begin
          if QDetalleDET_DESCUENTO.ReadOnly = False then 
          QDetalleDET_DESCUENTO.Value := dm.Query1.FieldByname('descuento').asfloat;
          QDetalleDET_OFERTA.Value := 'S';
        end
        else
          QDetalleDET_OFERTA.Value := 'N';

        //buscando fecha de vencimiento
        if dm.QParametrosPAR_VENVERIFICA.Value = '2' then
        begin
          if QDetalleDET_VENCE.value = 'True' then
          begin
            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('select min(ven_lote) as lote from provence');
            dm.Query1.SQL.Add('where emp_codigo = :emp');
            dm.Query1.SQL.Add('and pro_codigo = :pro');
            dm.Query1.SQL.Add('and VEN_CANTPENDIENTE <= 0');
            dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
            dm.Query1.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
            dm.Query1.Open;
            QDetalleDET_LOTE.Value := dm.Query1.FieldByName('lote').AsInteger;
          end
          else
            QDetalleDET_LOTE.Value := 0;
        end
        else
        begin
          QDetalleDET_LOTE.Value := Lote;
        end;

        {if not ckItbis.Checked then
        begin
          if QDetalleDET_CONITBIS.Value = 'S' then
          begin
            if dm.QParametrospar_itbisincluido.Value = 'False' then
              QDetalleDET_PRECIO.Value := (QDetalleDET_PRECIO.Value / ((QDetalleDET_ITBIS.Value/100)+1));
          end;
        end;

        if ckItbis.Checked = False then
        QDetalleDET_PRECIO.Value := (QDetalleDET_PRECIO.Value);
        }

        if CtaIngreso <> '' then
        begin
          if not QCuentas.Locate('cat_cuenta', CtaIngreso, []) then
          begin
            QCuentas.Append;
            QCuentascat_cuenta.Value := CtaIngreso;
            QCuentasdet_origen.Value := 'Credito';
            if dm.QParametrospar_itbisincluido.Value = 'True' then
              QCuentasdet_monto.Value  := QCuentasdet_monto.Value + ((QDetalleValor.Value +
                                                                  (QDetalleDET_TOTALDESC.Value * QDetalleDET_CANTIDAD.Value)) -
                                                                  (QDetalleDET_TOTALITBIS.Value * QDetalleDET_CANTIDAD.Value))
              //QCuentasdet_monto.Value  := QCuentasdet_monto.Value + (QDetalleValor.Value - (QDetalleDET_TOTALITBIS.Value * QDetalleDET_CANTIDAD.Value))
            else
              QCuentasdet_monto.Value  := QCuentasdet_monto.Value +(QDetalleDET_PRECIO.Value * QDetalleDET_CANTIDAD.Value);

            QCuentas.Post;
          end
          else
          begin
            QCuentas.Edit;;
            QCuentasdet_origen.Value := 'Credito';
            if dm.QParametrospar_itbisincluido.Value = 'True' then
              QCuentasdet_monto.Value  := QCuentasdet_monto.Value + ((QDetalleValor.Value +
                                                                  (QDetalleDET_TOTALDESC.Value * QDetalleDET_CANTIDAD.Value)) -
                                                                  (QDetalleDET_TOTALITBIS.Value * QDetalleDET_CANTIDAD.Value))
            else
              QCuentasdet_monto.Value  := QCuentasdet_monto.Value +((QDetalleDET_PRECIO.Value - QDetalleCalcDesc.Value) * QDetalleDET_CANTIDAD.Value);

            QCuentas.Post;
          end;
        end;

        if QDetalleDET_CANTIDAD.IsNull then QDetalleDET_CANTIDAD.Value := 1;
        QDetalle.Post;
        if dm.QParametrosPAR_FACBAJARLINEA.Value = 'True' then
        begin
          QDetalle.Append;
          Grid.SelectedIndex := 0;
        end;

        //Cuentas de Costo
        if Trim(CtaCosto) <> '' then
        begin
          if not QCuentas.Locate('cat_cuenta', CtaCosto, []) then
          begin
            QCuentas.Append;
            QCuentascat_cuenta.Value := CtaCosto;
            QCuentasdet_origen.Value := 'Debito';
            QCuentasdet_monto.Value  :=(QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value);
            QCuentas.Post;
          end
          else
          begin
            QCuentas.Edit;;
            QCuentasdet_origen.Value := 'Debito';
            QCuentasdet_monto.Value  := QCuentasdet_monto.Value + (QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value);
            QCuentas.Post;
          end;
        end;

        //Cuenta de Inventario
        if Trim(CtaInvent) <> '' then
        begin
          if not QCuentas.Locate('cat_cuenta', CtaInvent, []) then
          begin
            QCuentas.Append;
            QCuentascat_cuenta.Value := CtaInvent;
            QCuentasdet_origen.Value := 'Credito';
            QCuentasdet_monto.Value  := (QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value);
            QCuentas.Post;
          end
          else
          begin
            QCuentas.Edit;;
            QCuentasdet_origen.Value := 'Credito';
            QCuentasdet_monto.Value  := QCuentasdet_monto.Value + (QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value);
            QCuentas.Post;
          end;
        end;

        //Cuenta de Descuento
        if Trim(CtaDescuento) <> '' then
        begin
          if not QCuentas.Locate('cat_cuenta', CtaDescuento, []) then
          begin
            QCuentas.Append;
            QCuentascat_cuenta.Value := CtaDescuento;
            QCuentasdet_origen.Value := 'Debito';
            QCuentasdet_monto.Value  := QDetalleCalcDesc.Value;
            QCuentas.Post;
          end
          else
          begin
            QCuentas.Edit;;
            QCuentasdet_origen.Value := 'Debito';
            QCuentasdet_monto.Value  := QCuentasdet_monto.Value + QDetalleCalcDesc.Value;
            QCuentas.Post;
          end;
        end;
    end;
  end;
end;
end;

procedure TfrmFactura.DatosEnvio(llenar:boolean = false);
begin
    //Si es un producto que utiliza envio
  {if QDetallepro_UtilizaEnvio.Value = 'True' then
  begin  //1

    frmEnvio :=TfrmEnvio.Create(self);
    try
      With frmEnvio do begin    //2
        if (llenar = true) then
          begin  //3
             frmEnvio.fillDatos(oCiudad,oNombre, oTelefono,
      										     dCiudad,dNombre, dTelefono,
                               Descripcion);
             frmEnvio.ShowModal;
          end //3
        else
          frmEnvio.ShowModal;

        frmEnvio.fillDatos(oCiudad,oNombre, oTelefono,
      										     dCiudad,dNombre, dTelefono,
                               Descripcion);
        ActualisarEnvio(llenar);
      end; //2
    finally
      frmEnvio.Release;
    end;
  end; //1}
end;

procedure TfrmFactura.DatosdelMedidor1Click(Sender: TObject);
begin
  //Si es un producto que utiliza medidor
  if QDetallepro_utilizamedidor.Value = 'True' then
  begin
    Application.CreateForm(tfrmDatosMedidor, frmDatosMedidor);
    frmDatosMedidor.edMedidor.Text  := QDetalleMedidorID.AsString;
    frmDatosMedidor.edAnterior.Text := QDetalleMedidor_Secuencia.AsString;
    frmDatosMedidor.edActual.Text   := QDetalleMedidor_Cantidad.AsString;
    frmDatosMedidor.ShowModal;
    frmDatosMedidor.Release;
  end;
end;

procedure TfrmFactura.QPedidosped_numeroChange(Sender: TField);
begin
  if QFactura.State in [dsedit,dsinsert] then begin
  if not QPedidosped_numero.IsNull then
  begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select ped_fecha, ped_nombre, ped_itbis, ped_total, cli_codigo, ped_tasa,');
    Query1.SQL.Add('mon_codigo, ped_status');
    Query1.SQL.Add('from pedidos where emp_codigo = :emp and suc_codigo = :suc');
    Query1.SQL.Add('and ped_tipo = '+QuotedStr('C')+' and ped_numero = :num');
    Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    Query1.Parameters.ParamByName('num').Value := QPedidosped_numero.Value;
    Query1.Open;
    if Query1.FieldByName('cli_codigo').AsInteger <> QFacturaCLI_CODIGO.AsInteger then
    begin
      MessageDlg('Este pedido no pertenece al cliente de la factura',mtError,[mbok],0);
      Abort;
    end
    else if Query1.FieldByName('ped_status').AsString = 'REC' then
    begin
      MessageDlg('Este pedido ya ha sido facturado',mtError,[mbok],0);
      Abort;
    end
    else if Query1.FieldByName('ped_status').AsString = 'ANU' then
    begin
      MessageDlg('Este pedido esta anulado',mtError,[mbok],0);
      Abort;
    end
    else
    begin
      QPedidosped_fecha.Value  := Query1.FieldByName('ped_fecha').Value;
      QPedidosped_nombre.Value := Query1.FieldByName('ped_nombre').Value;
      QPedidosped_total.Value  := Query1.FieldByName('ped_total').Value;
      QPedidosped_itbis.Value  := Query1.FieldByName('ped_itbis').Value;
      QPedidosped_tasa.Value   := Query1.FieldByName('ped_tasa').Value;
      QPedidosmon_codigo.Value := Query1.FieldByName('mon_codigo').Value;
    end;
  end;
  end;
end;

procedure TfrmFactura.QPedidosNewRecord(DataSet: TDataSet);
begin
  QPedidosemp_codigo.Value := dm.vp_cia;
  QPedidossuc_codigo.Value := DBLookupComboBox2.KeyValue;
  QPedidosfac_forma.Value  := 'A';
  QPedidostfa_codigo.Value := QFacturaTFA_CODIGO.Value;
end;

procedure TfrmFactura.SpeedButton3Click(Sender: TObject);
var
  tclinico : double;
begin
  //Buscando facturas del sistema clinico
  Application.CreateForm(tfrmSeleccionFecha, frmSeleccionFecha);
  frmSeleccionFecha.fecha2.Visible := false;
  frmSeleccionFecha.Label2.Visible := false;
  frmSeleccionFecha.ShowModal;
  if frmSeleccionFecha.accion = 1 then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select f.facturaid, f.fecha, f.paciente, f.poliza, f.cobertura,');
    dm.Query1.SQL.Add('f.autorizacion');
    dm.Query1.SQL.Add('from clinico.dbo.factura f, clinico.dbo.seguros s');
    dm.Query1.SQL.Add('where f.seguroid = s.seguroid');
    dm.Query1.SQL.Add('and f.fecha <= :fec');
    dm.Query1.SQL.Add('and s.cli_codigo = :cli');
    dm.Query1.SQL.Add('and (f.facturada_sigma is null or f.facturada_sigma = '+QuotedStr('')+')');
    dm.Query1.Parameters.ParamByName('fec').Value := frmSeleccionFecha.fecha1.Date;
    dm.Query1.Parameters.ParamByName('cli').Value := QFacturaCLI_CODIGO.Value;
    dm.Query1.Open;
    dm.Query1.DisableControls;
    QClinico.DisableControls;
    ProgressBar1.Position := 1;
    ProgressBar1.Max := dm.Query1.RecordCount;
    cli_facturas := ProgressBar1.Max;
    lbfacturas.Caption := inttostr(dm.Query1.RecordCount) + ' Facturas';
    dm.Query1.First;
    tclinico := 0;
    while not dm.Query1.Eof do
    begin
      ProgressBar1.Position := ProgressBar1.Position + 1;
      Application.ProcessMessages;
      if not QClinico.Locate('facturaid', dm.Query1.FieldByName('facturaid').Value, []) then
      begin
        QClinico.Append;
        QClinicofacturaid.Value := dm.Query1.FieldByName('facturaid').Value;
        QClinicofecha.Value     := dm.Query1.FieldByName('fecha').Value;
        QClinicopaciente.Value  := dm.Query1.FieldByName('paciente').Value;
        QClinicopoliza.Value    := dm.Query1.FieldByName('poliza').AsString;
        QClinicocobertura.Value := dm.Query1.FieldByName('cobertura').Value;
        QClinicoautorizacion.Value    := dm.Query1.FieldByName('autorizacion').AsString;
        QClinicofacturada_sigma.Value := 'Si'; 
        QClinico.Post;
      end;
      dm.Query1.Next;
    end;
    QClinico.First;
    QClinico.EnableControls;
    dm.Query1.EnableControls;

    TotalizaClinico;
  end;
  frmSeleccionFecha.Release;
end;

procedure TfrmFactura.SpeedButton4Click(Sender: TObject);
var
  tclinico : double;
begin
  //Buscando records del sistema clinico
  Application.CreateForm(tfrmSeleccionFecha, frmSeleccionFecha);
  frmSeleccionFecha.fecha2.Visible := false;
  frmSeleccionFecha.Label2.Visible := false;
  frmSeleccionFecha.ShowModal;
  if frmSeleccionFecha.accion = 1 then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select f.recordid, f.fecha_salilda, f.paciente, f.poliza,');
    dm.Query1.SQL.Add('isnull(f.cobertura,0) as cobertura, f.autorizacion');
    dm.Query1.SQL.Add('from clinico.dbo.record f, clinico.dbo.seguros s');
    dm.Query1.SQL.Add('where f.seguroid = s.seguroid');
    dm.Query1.SQL.Add('and f.fecha_salilda <= :fec');
    dm.Query1.SQL.Add('and s.cli_codigo = :cli');
    dm.Query1.SQL.Add('and (f.facturado_sigma is null or f.facturado_sigma = '+QuotedStr('')+')');
    dm.Query1.Parameters.ParamByName('fec').Value := frmSeleccionFecha.fecha1.Date;
    dm.Query1.Parameters.ParamByName('cli').Value := QFacturaCLI_CODIGO.Value;
    dm.Query1.Open;
    dm.Query1.DisableControls;
    QClinico.DisableControls;
    ProgressBar1.Position := 1;
    ProgressBar1.Max := dm.Query1.RecordCount;
    cli_records := ProgressBar1.Max;
    lbrecords.Caption := inttostr(dm.Query1.RecordCount) + ' Records';
    dm.Query1.First;
    while not dm.Query1.Eof do
    begin
      ProgressBar1.Position := ProgressBar1.Position + 1;
      Application.ProcessMessages;
      if not QClinico.Locate('recordid', dm.Query1.FieldByName('recordid').Value, []) then
      begin
        QClinico.Append;
        QClinicorecordid.Value  := dm.Query1.FieldByName('recordid').Value;
        QClinicofecha.Value     := dm.Query1.FieldByName('fecha_salilda').Value;
        QClinicopaciente.Value  := dm.Query1.FieldByName('paciente').Value;
        QClinicopoliza.Value    := dm.Query1.FieldByName('poliza').AsString;
        QClinicocobertura.Value := dm.Query1.FieldByName('cobertura').Value;
        QClinicoautorizacion.Value    := dm.Query1.FieldByName('autorizacion').AsString;
        QClinicofacturada_sigma.Value := 'Si'; 
        QClinico.Post;
      end;
      dm.Query1.Next;
    end;
    QClinico.First;
    QClinico.EnableControls;
    dm.Query1.EnableControls;

    TotalizaClinico;
  end;
  frmSeleccionFecha.Release;
end;

procedure TfrmFactura.SpeedButton2Click(Sender: TObject);
begin
  {if QClinicofacturaid.IsNull then
  begin
    if QDetalle.Locate('pro_roriginal', 'INTER', []) then
    begin
      QDetalle.Edit;
      QDetalleDET_PRECIO.Value := QDetalleDET_PRECIO.Value - QClinicocobertura.Value;
      QDetalle.Post;
      cli_records := cli_records - 1;
      lbrecords.Caption := inttostr(cli_records) + ' Records';
    end;
  end
  else
  begin
    if QDetalle.Locate('pro_roriginal', 'AMBUL', []) then
    begin
      QDetalle.Edit;
      QDetalleDET_PRECIO.Value := QDetalleDET_PRECIO.Value - QClinicocobertura.Value;
      QDetalle.Post;
      cli_facturas := cli_facturas - 1;
      lbfacturas.Caption := inttostr(cli_facturas) + ' Facturas';
    end;
  end;
  QClinico.Delete;
  gridclinico.setfocus;}
end;

procedure TfrmFactura.gridclinicoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_SPACE then
  begin
    QClinico.Edit;
    if QClinicofacturada_sigma.Value <> 'No' then
      QClinicofacturada_sigma.Value := 'No'
    else
      QClinicofacturada_sigma.Value := 'Si';
    QClinico.Post;
    TotalizaClinico;
  end;
end;

procedure TfrmFactura.TotalizaClinico;
var
  t: TBookmark;
  tfacturas, trecords : double;
begin
  Screen.Cursor := crHourGlass;
  t := QClinico.GetBookmark;
  QClinico.DisableControls;
  QClinico.First;
  tfacturas := 0;
  trecords  := 0;
  while not QClinico.Eof do
  begin
    if QClinicofacturada_sigma.Value = 'Si' then
    begin
      if not QClinicofacturaid.IsNull then
        tfacturas := tfacturas + QClinicocobertura.Value
      else
        trecords := trecords + QClinicocobertura.Value;
    end;

    QClinico.Next;
  end;
  QClinico.GotoBookmark(t);
  QClinico.EnableControls;

  if tfacturas > 0 then
  begin
    //insertando el producto de servicios ambulatorio en la factura
    if not QDetalle.Locate('PRO_RORIGINAL', 'AMBUL', []) then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select pro_codigo from productos where emp_codigo = :emp and pro_roriginal = :ref');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.ParamByName('ref').Value := 'AMBUL';
      dm.Query1.Open;
      if dm.Query1.RecordCount > 0 then
      begin
        QDetalle.Append;
        if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'I' then
          QDetallePRO_CODIGO.Value    := dm.Query1.FieldByName('pro_codigo').AsInteger
        else if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'O' then
          QDetallePRO_RORIGINAL.Value := 'AMBUL';

        QDetalle.Edit;
        QDetalleDET_PRECIO.Value    := tfacturas;
        QDetalleDET_CANTIDAD.Value  := 1;
        QDetalle.Post;
      end;
    end
    else
    begin
      QDetalle.Edit;
      QDetalleDET_PRECIO.Value    := tfacturas;
      QDetalleDET_CANTIDAD.Value  := 1;
      QDetalle.Post;
    end;
  end;

  if trecords > 0 then
  begin
    //insertando el producto de servicios de internamiento en la factura
    if not QDetalle.Locate('PRO_RORIGINAL', 'INTER', []) then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select pro_codigo from productos where emp_codigo = :emp and pro_roriginal = :ref');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.ParamByName('ref').Value := 'INTER';
      dm.Query1.Open;
      if dm.Query1.RecordCount > 0 then
      begin
        QDetalle.Append;
        if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'I' then
          QDetallePRO_CODIGO.Value    := dm.Query1.FieldByName('pro_codigo').AsInteger
        else if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'O' then
          QDetallePRO_RORIGINAL.Value := 'INTER';

        QDetalle.Edit;
        QDetalleDET_PRECIO.Value    := trecords;
        QDetalleDET_CANTIDAD.Value  := 1;
        QDetalle.Post;
      end;
    end
    else
    begin
      QDetalle.Edit;
      QDetalleDET_PRECIO.Value    := trecords;
      QDetalleDET_CANTIDAD.Value  := 1;
      QDetalle.Post;
    end;
  end;

  Totalizar;

  Screen.Cursor := crDefault;
end;

procedure TfrmFactura.Pantalladeproductos1Click(Sender: TObject);
var
  vIns, vMod, vDel : boolean;
begin
  {//actuliza producto
   with qActulizaProd do begin
   Close;
   Parameters.ParamByName('PROD').Value := QDetallePRO_CODIGO.Value;
   Parameters.ParamByName('EMP').Value  := DM.QParametrosPAR_INVEMPRESA.Value;
   ExecSQL;
   end;    }

  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('inv_productos');
  dm.Query1.open;
  if dm.Query1.RecordCount > 0 then
  begin
    vIns := dm.Query1.fieldbyname('Inserta').asboolean;
    vMod := dm.Query1.fieldbyname('Modifica').asboolean;
    vDel := dm.Query1.fieldbyname('Elimina').asboolean;
    frmMain.activaforma(tfrmProductos, tform(frmProductos));
    frmProductos.btEdit.visible   := vMod;
    frmProductos.btInsert.visible := vIns;
    frmProductos.btDelete.visible := vDel;
    frmProductos.QProductos.Close;
    frmProductos.QProductos.Parameters.ParamByName('par_invempresa').Value := DM.QParametrosPAR_INVEMPRESA.Value;
    frmProductos.QProductos.Parameters.ParamByName('prod').Value := QDetallePRO_CODIGO.Value;
    frmProductos.QProductos.Open;

    frmProductos.QProvee.Close;
    frmProductos.QProvee.Parameters.ParamByName('emp_codigo').Value := dm.vp_cia;
    frmProductos.QProvee.Parameters.ParamByName('pro_codigo').Value := frmProductos.QProductosPRO_CODIGO.value;
    frmProductos.QProvee.Open;
    if frmProductos.QProvee.RecordCount > 0 then begin
    frmProductos.vl_sup       := frmProductos.QProveeSUP_CODIGO.Value;
    frmProductos.edtProv.Text := frmProductos.QProveeSUP_CODIGO.Text;
    frmProductos.tProv.Text   := frmProductos.QProveeSUP_NOMBRE.Text;
    end;
  end;
end;

procedure TfrmFactura.Ajustedeinventario1Click(Sender: TObject);
var
  vIns, vMod, vDel : boolean;
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('inv_ajuste');
  dm.Query1.open;
  if dm.Query1.RecordCount > 0 then
  begin
    frmMain.activaforma(tfrmAjusteInventario, tform(frmAjusteInventario));
    frmAjusteInventario.QProductos.Locate('pro_codigo',QDetallePRO_CODIGO.Value,[]);
  end;
end;

procedure TfrmFactura.QFacturaMON_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QFacturaMON_CODIGO.IsNull then
  begin
    Text := IntToStr(QFacturaMON_CODIGO.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select mon_sigla, MON_RELACIONPESOCOMPRA, mon_nombre from moneda');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and mon_codigo = :mon');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('mon').Value := QFacturaMON_CODIGO.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      tmoneda.Text := dm.Query1.FieldByName('mon_nombre').AsString+' ('+dm.Query1.FieldByName('mon_sigla').AsString+')';
     
    end
    else
    begin
      tmoneda.Text := '';
    end;
  end;
  //VERIFICAMOS SI TIENE ACTIVO MULTIMONEDA
 // modificargrid();
end;

procedure TfrmFactura.bttiponcfClick(Sender: TObject);
begin
  Search.AliasFields.clear;
  Search.AliasFields.add('C?digo');
  Search.AliasFields.add('Nombre');
  Search.AliasFields.add('C?digo DGII');
  Search.Query.Clear;
  Search.Query.Add('select tip_codigo, (nombre_dgii) as tip_nombre, cod_dgii');
 // Search.Query.Add('select tip_codigo, trim(tip_nombre) as tip_nombre');
  Search.Query.Add('from vwTipoNCF');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'tip_codigo';
  Search.Title := 'Tipos de Comprobantes';
  if Search.execute then
  begin
    QFacturatip_codigo.Value := StrToInt(Search.ValueField);
    DBEdit13.SetFocus;
  end;
end;

procedure TfrmFactura.ttiponcfEnter(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  Grid.SetFocus;
end;

procedure TfrmFactura.QFacturatip_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
VAR TIPO:STRING;
begin
  if not QFacturatip_codigo.IsNull then
  begin
    Text := IntToStr(QFacturatip_codigo.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tip_nombre, tdo_codigo, nombre_dgii from TipoNCF');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tip_codigo = :tip');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('tip').Value  := QFacturatip_codigo.Value;
    dm.Query1.Open;
    TIPO := DM.Query1.FieldByName('tdo_codigo').AsString;
    if dm.Query1.RecordCount > 0 then
      ttiponcf.Text := dm.Query1.FieldByName('nombre_dgii').AsString
    else begin
      ttiponcf.Text := '';
      QFacturatip_codigo.IsNull;
    end;
  end
  else
  begin
    ttiponcf.Text := '';
    QFacturatip_codigo.IsNull;
    end;

if TIPO = 'REG' then begin
ckItbis.Checked := False;
ckItbisClick(Sender);
end;
if QFacturatip_codigo.Value  <> 4 then
ckItbis.Checked := True;

end;


procedure TfrmFactura.DatosdelEnvio1Click(Sender: TObject);
begin
  if QDetallepro_UtilizaEnvio.AsString = 'True' then
  begin
    Application.CreateForm(tfrmEnvio, frmEnvio);
    if QEnvio.Locate('pro_codigo', QDetallePRO_CODIGO.Value, []) then
    begin
      //frmEnvio.edoCiudad.Text := QEnvioCiudad_Origen.AsString;
      frmEnvio.edoNombre.Text := QEnvioNombre_envia.AsString;
      frmEnvio.edoTelefono.Text := QEnvioTelefono_Envia.AsString;
      //frmEnvio.eddCiudad.Text := QEnvioCiudad_Destino.AsString;
      frmEnvio.eddNombre.Text := QEnvioNombre_Recibe.AsString;
      frmEnvio.eddTelefono.Text := QEnvioTelefono_Recibe.AsString;
      frmEnvio.edDescripcion.Text := QEnvioDescripcion.AsString;
      frmEnvio.chkPagoDestino.Checked := QEnviofacpagodestino.Value;
    end;
    frmEnvio.ShowModal;
    frmEnvio.Release;
  end;
  //DatosEnvio(True);
end;

function TfrmFactura.Producto_sin_Serializar: boolean;
var a,b, fila:integer;
    Puntero : TBookmark;
begin
  Result := false;

  if not QSerie.Active then begin
  with QSerie do begin
    Close;
    QSerie.Parameters.ParamByName('emp').Value := QFacturaEMP_CODIGO.Value;
    QSerie.Parameters.ParamByName('suc').Value := QFacturaSUC_CODIGO.Value;
    QSerie.Parameters.ParamByName('num').Value := -1;
    QSerie.Parameters.ParamByName('forma').Value := 'A';
    QSerie.Parameters.ParamByName('tipo').Value := -1;
    QSerie.Open;
  end;
  end;


  QSerie.First;
  while not QSerie.Eof do begin
  QSerie.Delete;
  end;


fila := 0;
  QDetalle.DisableControls;
  QDetalle.First;
  while not QDetalle.Eof do begin
  for a := 0 to GridSerie.RowCount do
  begin
    if (trim(GridSerie.Cells[0,a]) = inttostr(QDetallePRO_CODIGO.Value)) and
    (trim(GridSerie.Cells[1,a]) <> '') then
    begin
      QSerie.Insert;
      QSeriePRO_CODIGO.Value := StrToInt(GridSerie.Cells[0,a]);
      QSerieSER_NUMERO.Value := GridSerie.Cells[1,a];
      QSerieEMP_CODIGO.Value := QFacturaEMP_CODIGO.Value;
      QSerieSUC_CODIGO.Value := QFacturaSUC_CODIGO.Value;
      QSerieFAC_FORMA.Value  := QFacturaFAC_FORMA.Value;
      QSerieFAC_NUMERO.Value := QFacturaFAC_NUMERO.Value;
      QSerie.Post;
    end;
    fila := fila + 1;
  end;
  QDetalle.Next;
  end;
  QDetalle.First;
  QDetalle.EnableControls;


  if QSerie.RecordCount > 0 then begin
  for a:= 0 to QSerie.RecordCount do begin
  QSerie.Edit;
  QSerieSER_SECUENCIA.Value := a+1;
  QSerie.Post;
  end;
  end;


  with QDetalle do
    begin
      QDetalle.DisableControls;
      Puntero := QDetalle.GetBookmark;
      QDetalle.First;
      while not QDetalle.eof do
      if QDetalle.fieldbyname('pro_serializado').AsString = 'S' then
      begin
         Result := QDetalleDET_CANTIDAD.AsInteger <> QSerie.RecordCount;
         if Result then
            begin
              QDetalle.EnableControls;
              exit;
            end
         else
            QDetalle.Next;
      end
      else QDetalle.next;
    QDetalle.GotoBookmark(Puntero);
    QDetalle.EnableControls;
    end;
end;

procedure TfrmFactura.NumerosdeserieFer1Click(Sender: TObject);
var
  a, fila : integer;
begin
  if not QSerie.Active then
  begin
    QSerie.Close;
    QSerie.Parameters.ParamByName('emp').Value  := dm.QEmpresasEMP_CODIGO.value;
    QSerie.Parameters.ParamByName('tipo').Value := -1;
    QSerie.Parameters.ParamByName('forma').Value := 'A';
    QSerie.Parameters.ParamByName('num').Value  := -1;
    QSerie.Parameters.ParamByName('suc').Value := -1;
    QSerie.Open;
  end;
  Application.CreateForm(tfrmSerieFactura, frmSerieFactura);
  frmSerieFactura.GridSerie.RowCount := trunc(QDetalleDET_CANTIDAD.AsInteger);
  for a := 0 to frmSerieFactura.GridSerie.RowCount-1 do
    frmSerieFactura.GridSerie.Cells[0,a] := '';

  fila := 0;
  for a := 0 to GridSerie.RowCount-1 do
  begin
    if (trim(GridSerie.Cells[0,a]) = inttostr(QDetallePRO_CODIGO.Value)) and
    (trim(GridSerie.Cells[1,a]) <> '') then
    begin
      frmSerieFactura.GridSerie.Cells[0,fila] := trim(GridSerie.Cells[1,a]);
      fila := fila + 1;
    end;
  end;

  //buscando #de serie y grabandolo en la pantalla de numeros de serie
  fila := 0;
  for a := 0 to GridSerie.RowCount-1 do
  begin
    if (trim(GridSerie.Cells[0,a]) = inttostr(QDetallePRO_CODIGO.Value)) and
    (trim(GridSerie.Cells[1,a]) <> '') then
    begin
      frmSerieFactura.GridSerie.Cells[0,fila] := trim(GridSerie.Cells[1,a]);
      fila := fila + 1;
    end;
  end;
  frmSerieFactura.ShowModal;

  //actualizando # de serie en el grid que esta en la factura
  for a := 0 to GridSerie.RowCount-1 do
  begin
    if trim(GridSerie.Cells[0,a]) = inttostr(QDetallePRO_CODIGO.Value) then
      GridSerie.Cells[1,a] := '';
  end;

  for a := 0 to frmSerieFactura.GridSerie.RowCount-1 do
  begin
    GridSerie.RowCount := GridSerie.RowCount + 1;
    GridSerie.Cells[0,GridSerie.RowCount-1] := inttostr(QDetallePRO_CODIGO.Value);
    GridSerie.Cells[1,GridSerie.RowCount-1] := frmSerieFactura.GridSerie.Cells[0,a];
  end;

  for a := 0 to GridSerie.RowCount-1 do
  begin
    if trim(GridSerie.Cells[0,a]) = '' then
      GridSerie.Cells[1,a] := '';
  end;

  frmSerieFactura.Release;
end;


procedure TfrmFactura.PageControl1Change(Sender: TObject);
begin
  dblExistencia.Visible := PageControl1.TabIndex = 0;
  dbtxtUBICACION.Visible := PageControl1.TabIndex = 0;
  dbtxtUlmPRecio.Visible := PageControl1.TabIndex = 0;
end;

procedure TfrmFactura.dsSerieDataChange(Sender: TObject;
  Field: TField);
begin
{if dm.QParametrospar_validar_serie_en_inventario.AsBoolean then
//validacion de la serie de los productos
  if (Field <> nil) and (field.FieldName = 'SER_NUMERO') and (QSerieFacSER_NUMERO.AsString <> '') then
     if not dm.validaSerie(QDetallePRO_CODIGO.AsString,QSerieFacSER_NUMERO.AsString) then
     begin
        ShowMessage('SERIE NO VALIDA, Verifique....');
        QSerieFacSER_NUMERO.Value := EmptyStr;
     end;   //}
end;

procedure TfrmFactura.BorraSerial(vCod_Producto:string);
begin
  if QSerie.Active then
     begin
      QSerie.First;
      while not QSerie.eof do begin
        if (vCod_Producto = EmptyStr) then
           QSerie.delete
        else
        if vCod_Producto = QSeriePRO_CODIGO.AsString then
           QSerie.delete;

        QSerie.Next;
      end;
     end;
end;

procedure TfrmFactura.QFacturaCLI_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if QFacturaCLI_CODIGO.isnull then
     edCliente.Text := EmptyStr;
end;

procedure TfrmFactura.QEnvioNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('env_status').Value := 'PE';
end;

procedure TfrmFactura.RG_BuscaDetClick(Sender: TObject);
begin
Grid.SetFocus;
//CAMBIO REALIZADO POR JHONATTAN GOMEZ 16/02/2018
  CASE RG_BuscaDet.ItemIndex OF
  0:begin
  Grid.Columns[0].FieldName := 'PRO_CODIGO';
  Grid.Columns[0].Width :=  90;
  end;
  1:begin
  Grid.Columns[0].FieldName := 'PRO_RORIGINAL';
  Grid.Columns[0].Width :=  90;
  end;
  2:begin
  Grid.Columns[0].FieldName := 'PRO_RFABRIC';
  Grid.Columns[0].Width :=  90;
  end;
  end;
//FIN CAMBIO REALIZADO POR JHONATTAN GOMEZ 16/02/2018
end;

procedure TfrmFactura.QFacTMPCalcFields(DataSet: TDataSet);
begin
  QFacTMPSubTotal.value := Total;
end;

procedure TfrmFactura.Imp40ColumnasNorma201806;
var
  arch, puertopeq : textfile;
  s, s1, s2, s3, s4, s5 : array [0..20] of char;
  Tfac, v_itbis, v_subtotal, Saldo, v_descuento : double;
  puerto, lbitbis, impcodigo, pro_codigo, Unidad, impuestoincluido : string;
  a : integer;
begin
      with dm.Query1 do begin
      close;
      sql.clear;
      sql.add('select tfa_copias from tiposfactura');
      sql.add('where emp_codigo = :emp');
      sql.add('and tfa_codigo = :cod');
      Parameters.parambyname('emp').Value := dm.vp_cia;
      Parameters.parambyname('cod').Value := QFacturaTFA_CODIGO.Value;
      open;
      IF NOT IsEmpty THEN
      copias := FIELDBYNAME('tfa_copias').Value;
      end;


  if FileExists('puerto.txt') then
  begin
    assignfile(puertopeq, 'puerto.txt');
    reset(puertopeq);
    readln(puertopeq, puerto);
  end
  else
    puerto := 'PRN';

  closefile(puertopeq);

  AssignFile(arch, '.\imp.bat');
  rewrite(arch);
  writeln(arch, 'type .\t.txt > '+puerto);
  closefile(arch);

  tfac := 0;
  RFacturaPreImpresa.QNorma201806.Parameters.ParamByName('emp').Value     := dm.vp_cia;
  RFacturaPreImpresa.QNorma201806.Parameters.ParamByName('tipo').Value    := QFacturaTFA_CODIGO.value;
  RFacturaPreImpresa.QNorma201806.Parameters.ParamByName('numero').Value  := QFacturaFAC_NUMERO.value;
  RFacturaPreImpresa.QNorma201806.Parameters.ParamByName('suc').Value     := QFacturaSUC_CODIGO.value;
  RFacturaPreImpresa.QNorma201806.open;
  AssignFile(arch, 't.txt');
  rewrite(arch);

  if ImprimeEncaqbezado = 'True' then
  begin
    writeln(arch, dm.centro(QSucursalsuc_nombre.Value));
    writeln(arch, dm.centro(QSucursalsuc_direccion.Value));
    writeln(arch, dm.centro(QSucursalsuc_localidad.Value));
    writeln(arch, dm.centro(QSucursalsuc_telefono.Value));
    writeln(arch, dm.centro('RNC:'+QSucursalsuc_rnc.Value));
    writeln(arch, ' ');
  end;
  writeln(arch, dm.Centro(trim(tTipo.text)));

  writeln(arch, 'Fecha .: '+DateToStr(RFacturaPreImpresa.QNorma201806fac_fecha.Value)+'    Hora: '+timetostr(time));

  if RFacturaPreImpresa.QNorma201806NCF.Text <> '' then
  writeln(arch, 'NCF: '+RFacturaPreImpresa.qnorma201806NCF.Value);

  if RFacturaPreImpresa.QNorma201806VENC_NCF.IsNull = False then
  writeln(arch, 'Vence: '+FormatDateTime('dd/mm/YYYY',RFacturaPreImpresa.qnorma201806VENC_NCF.Value));

  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add('select cli, dir, tel, ven, caj, fir, otros, CodigoProducto from parconfigimp');
  Query1.SQL.Add('where emp_codigo = :emp');
  Query1.SQL.Add('and tfa_codigo = :tfa');
  Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  Query1.Parameters.ParamByName('tfa').Value := QFacturaTFA_CODIGO.Value;
  Query1.Open;
  impcodigo := Query1.FieldByName('CodigoProducto').AsString;


  if Query1.FieldByName('cli').AsString = 'Si' then
  begin
    if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
      writeln(arch, 'Nombre: '+QFacturaFAC_NOMBRE.value)
    else
      writeln(arch, 'Nombre: '+QFacturaFAC_NOMBRE.value);
  end;
  if Trim(RFacturaPreImpresa.QNorma201806NCF.Value) <> '' then
  begin
    if QFacturaFAC_RNC.Value <> '' then
      writeln(arch, 'RNC: '+QFacturaFAC_RNC.Value);
  end;
  if Query1.FieldByName('tel').AsString = 'Si' then
  if Trim(QFacturaFAC_TELEFONO.value) <> '' then
    writeln(arch, 'Tel.  : '+QFacturaFAC_TELEFONO.value);

    writeln(arch, '----------------------------------------');
    writeln(arch, DM.centro(trim(UpperCase(ttiponcf.Text))));
    writeln(arch, '----------------------------------------');
    writeln(arch, 'DESCRIPCION           ITBIS        VALOR');
    writeln(arch, '----------------------------------------');

    with QParametros do begin
      Close;
      Parameters.ParamByName('emp_codigo').Value := dm.vp_cia;
      Open;
    end;

    v_subtotal := 0;
    v_itbis := 0;
    v_descuento := 0;
    Tfac := 0;
    RFacturaPreImpresa.QNorma201806.First;
  while not RFacturaPreImpresa.QNorma201806.eof do
  begin
    v_subtotal := v_subtotal+RFacturaPreImpresa.QNorma201806sub_total.Value*(1+(RFacturaPreImpresa.QNorma201806det_totalitbis.Value/100));
    v_itbis := v_itbis + RFacturaPreImpresa.QNorma201806sub_total.Value*(RFacturaPreImpresa.QNorma201806det_totalitbis.Value/100);
    v_descuento := v_descuento + (RFacturaPreImpresa.QNorma201806monto_desc.Value);
    Tfac := Tfac + v_subtotal - v_descuento;


    Writeln(arch, RFacturaPreImpresa.QNorma201806Cantidad.text);



    if RFacturaPreImpresa.QNorma201806monto_itbis.value > 0 then lbitbis := ' ' else lbitbis := 'E';

    if Length(trim(RFacturaPreImpresa.QNorma201806pro_nombre.value))>20 then begin
    writeln(arch, copy(trim(RFacturaPreImpresa.QNorma201806pro_nombre.value),1,20)+
                  dm.FillSpaces(FormatCurr('#,0.00',RFacturaPreImpresa.QNorma201806sub_total.Value*(RFacturaPreImpresa.QNorma201806det_totalitbis.Value/100)),8)+' '+
                  dm.FillSpaces(FormatCurr('#,0.00',RFacturaPreImpresa.QNorma201806sub_total.Value*(1+(RFacturaPreImpresa.QNorma201806det_totalitbis.Value/100))),9)+' '+
                  ' '+lbitbis);
    writeln(arch, copy(trim(RFacturaPreImpresa.QNorma201806pro_nombre.value),20,20));
    end;

    if Length(trim(RFacturaPreImpresa.QNorma201806pro_nombre.value))<21 then begin
    writeln(arch, copy(trim(RFacturaPreImpresa.QNorma201806pro_nombre.value),1,20)+
                  dm.FillSpaces(FormatCurr('#,0.00',RFacturaPreImpresa.QNorma201806monto_itbis.Value),8)+' '+
                  dm.FillSpaces(FormatCurr('#,0.00',RFacturaPreImpresa.QNorma201806valor.Value),9)+' '+
                  ' '+lbitbis);
    end;


    RFacturaPreImpresa.QNorma201806.next;

  end;

  writeln(arch, '                             -----------');
  writeln(arch, dm.FillSpacesLEFT('SUB-TOTAL',23)+
                  dm.FillSpaces(FormatCurr('#,0.00',v_itbis),8)+' '+
                  dm.FillSpaces(FormatCurr('#,0.00',v_subtotal),9));
  writeln(arch, dm.FillSpacesLEFT('DESCUENTO',32)+
                  dm.FillSpaces(FormatCurr('#,0.00',v_descuento),9));
  writeln(arch, dm.FillSpacesLEFT('TOTAL A PAGAR',23)+
                  dm.FillSpaces(FormatCurr('#,0.00',QFacturaFAC_ITBIS.Value),8)+' '+
                  dm.FillSpaces(FormatCurr('#,0.00',QFacturaFAC_TOTAL.Value),9));
  writeln(arch, ' ');



    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select f.fpa_nombre, sum(p.for_monto) as monto');
    dm.Query1.SQL.Add('from formaspago f, facformapago p');
    dm.Query1.SQL.Add('where f.emp_codigo = p.emp_codigo');
    dm.Query1.SQL.Add('and f.fpa_codigo = p.fpa_codigo');
    dm.Query1.SQL.Add('and p.emp_codigo = :emp');
    dm.Query1.SQL.Add('and p.tfa_Codigo = :tfa');
    dm.Query1.SQL.Add('and p.fac_forma  = :for');
    dm.Query1.SQL.Add('and p.fac_numero = :num');
    dm.Query1.SQL.Add('and p.suc_codigo = :suc');
    dm.Query1.SQL.Add('group by f.fpa_nombre');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('tfa').Value := QFacturaTFA_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('for').Value  := QFacturaFAC_FORMA.Value;
    dm.Query1.Parameters.ParamByName('num').Value := QFacturaFAC_NUMERO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := QFacturaSUC_CODIGO.Value;
    dm.Query1.Open;

    writeln(arch, ' ');
    dm.Query1.DisableControls;
    dm.Query1.First;
    while not dm.Query1.Eof do
    begin
      s:= '';
      fillchar(s, 14-length(dm.Query1.FieldByName('fpa_nombre').asstring),' ');
      s1 := '';
      fillchar(s1, 10-length(format('%n',[dm.Query1.FieldByName('monto').asfloat])),' ');
      writeln(arch,copy(dm.Query1.FieldByName('fpa_nombre').asstring,1,14)+' : '+s1+format('%n',[dm.Query1.FieldByName('monto').asfloat]));
      dm.Query1.Next;
    end;
    dm.Query1.EnableControls;

    if Recibido = '' then
    begin
       Recibido := FormatCurr('#,0.00',QFacturaFAC_TOTAL.Value);
       Devuelta := '0.00';
    end;


    s := '';
    fillchar(s,  10-length(Recibido),' ');
    s1 := '';
    fillchar(s1, 10-length(Devuelta),' ');

    writeln(arch, 'Recibido : '+s+Recibido);
    writeln(arch, 'Devuelta : '+s1+Devuelta);


  if Query1.FieldByName('caj').AsString = 'Si' then
  begin
    dm.Query1.Close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select caj_nombre from cajeros');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and caj_codigo = :ven');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('ven').Value := QFacturaCAJ_CODIGO.Value;
    dm.Query1.Open;

    s := '';
    fillchar(s, 15-length(copy(dm.Query1.FieldByName('caj_nombre').asstring,1,13)),' ');
    writeln(arch, 'Factura #: '+QFacturafac_numero.AsString);
    writeln(arch, 'Cajero: '+copy(dm.Query1.FieldByName('caj_nombre').asstring,1,13));
  end;

  writeln(arch, ' ');
  writeln(arch, copy(QFacturaFAC_MENSAJE1.Value,1,40));
  writeln(arch, copy(QFacturaFAC_MENSAJE2.Value,1,40));
  writeln(arch, copy(QFacturaFAC_MENSAJE3.Value,1,40));
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  if Query1.FieldByName('fir').AsString = 'Si' then
  begin
    writeln(arch, dm.Centro('_________________________'));
    writeln(arch, dm.Centro('Realizado por '));
    writeln(arch, ' ');
    writeln(arch, ' ');
    writeln(arch, ' ');
    writeln(arch, dm.Centro('_________________________'));
    writeln(arch, dm.Centro('Firma del Cliente '));
  end;
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  CloseFile(arch);

    if copias = 0 then copias := 1;
    a := 1;
    while a <= copias do
    begin
      winexec('imp.bat',0);
      a := a + 1;
    end;

end;


procedure TfrmFactura.DBEdit14KeyPress(Sender: TObject; var Key: Char);
begin
if QFacturatip_codigo.Value > 1 then 
if not (key in ['0'..'9',#8]) then key:=#0;
end;

procedure TfrmFactura.DBEdit14Exit(Sender: TObject);
begin
  QFacturafac_rncChange(QFacturafac_rnc);
end;

procedure TfrmFactura.QSeriesBeforeOpen(DataSet: TDataSet);
begin
{with QSeries do begin
Parameters.ParamByName('emp').Value        := dm.vp_cia;
Parameters.ParamByName('suc').Value        := QFacturaSUC_CODIGO.Value;
Parameters.ParamByName('PRO_CODIGO').Value := QDetallePRO_CODIGO.Value;
Parameters.ParamByName('numero').Value     := QFacturaFAC_NUMERO.Value;
end;
 }

end;

procedure TfrmFactura.QFacturaAfterOpen(DataSet: TDataSet);
begin
{  with QSeries do begin
        close;
        Parameters.ParamByName('emp').Value    := QFacturaEMP_CODIGO.Value;
        Parameters.ParamByName('suc').Value    := QFacturaSUC_CODIGO.Value;
        Parameters.ParamByName('numero').Value := QFacturaFAC_NUMERO.Value;
        open;
  end;
 }

end;

procedure TfrmFactura.TipoFacturas;
  var
  tiponcf : integer;
begin
 if Trim(edTipo.Text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select tfa_nombre, tfa_selcondi, tfa_formatoimp, tfa_puertoimp,');
      dm.Query1.sql.add('tfa_actbalance, tfa_cliente, ven_codigo, tfa_precio,');
      dm.Query1.sql.add('tfa_mensaje1, tfa_mensaje2, tfa_mensaje3, fpa_codigo,');
      dm.Query1.sql.add('tfa_verlimite, tfa_copias, tfa_permite_abonar, tfa_itbis, tip_codigo,');
      dm.Query1.sql.add('tfa_imprimie_encabezado, tfa_rnc, cat_cuenta, tfa_modifica_nombre,');
      dm.Query1.sql.add('tfa_espcliente espcliente');
      dm.Query1.sql.add(',Envio_Correo, Envio_Estadocta');
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
        ConItbis := dm.Query1.FieldByName('tfa_itbis').AsString;
        QFacturaFAC_CONITBIS.Value := ConItbis;
        if ConItbis = 'True' then
        ckItbis.Checked := True else
        ckItbis.Checked := False;
        QFacturafac_abono.Value := 0;

        Query1.Close;
        Query1.SQL.Clear;
        Query1.SQL.Add('select fpa_codigo from formaspago');
        Query1.SQL.Add('where emp_codigo = :emp');
        Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
        Query1.Open;
        if Query1.RecordCount = 0 then
        begin
          edTipo.Text := '';
          MessageDlg('PARA REALIZAR UNA FACTURA DE ESTE TIPO'+#13+
                     'DEBE CREAR LAS FORMAS DE PAGO',mtError,[mbok],0);
          edTipo.SetFocus;
        end
        else
        begin
          vtfa_espcliente := DM.Query1.FieldByName('espcliente').AsString;
          ModificaNombre := dm.Query1.fieldbyname('tfa_modifica_nombre').asstring;
          CtaTipoFactura := dm.Query1.fieldbyname('cat_cuenta').asstring;
          PermiteAbonar := dm.Query1.fieldbyname('tfa_permite_abonar').AsString;
          ImprimeEncaqbezado := dm.Query1.fieldbyname('tfa_imprimie_encabezado').AsString;
          copias     := dm.Query1.fieldbyname('tfa_copias').asinteger;
  CopiasExtraImp := copias;
          FPagoIni   := dm.Query1.fieldbyname('fpa_codigo').asinteger;
          Precio     := dm.Query1.fieldbyname('tfa_precio').asstring;
          vEnvioEstadoCta := DM.Query1.FieldByName('Envio_Estadocta').Value;
          chkMail.Checked := DM.Query1.FieldByName('Envio_Correo').Value;
          PuertoImp  := dm.Query1.fieldbyname('tfa_puertoimp').asstring;
          FormatoImp := dm.Query1.fieldbyname('tfa_formatoImp').asinteger;
          tTipo.text := dm.Query1.fieldbyname('tfa_nombre').asstring;
          actbalance := dm.Query1.fieldbyname('tfa_actbalance').asstring;
          SelCondi := dm.Query1.FieldByName('tfa_selcondi').AsBoolean;
          VerLimite  := dm.Query1.fieldbyname('tfa_verlimite').asString;
          SelRNC := dm.Query1.fieldbyname('tfa_rnc').asString;
          dbCondi.Enabled := SelCondi;
          btCondi.Enabled := SelCondi;


          if dm.Query1.fieldbyname('tip_codigo').AsInteger > 0 then
          tiponcf := dm.  Query1.fieldbyname('tip_codigo').AsInteger;

          Query1.Close;
          Query1.SQL.Clear;
          Query1.SQL.Add('select fpa_codigo from formaspago');
          Query1.SQL.Add('where emp_codigo = :emp');
          Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
          Query1.Open;
          if Query1.RecordCount = 0 then
          begin
            edTipo.Text := '';
            MessageDlg('PARA REALIZAR UNA FACTURA DE ESTE TIPO'+#13+
                       'DEBE CREAR LAS FORMAS DE PAGO',mtError,[mbok],0);
            Abort;
            edTipo.SetFocus;
          end
          else
          begin
            QFacturaFAC_MENSAJE1.Value := trim(dm.Query1.fieldbyname('tfa_mensaje1').asstring);
            QFacturaFAC_MENSAJE2.Value := dm.Query1.fieldbyname('tfa_mensaje2').asstring;
            QFacturaFAC_MENSAJE3.Value := dm.Query1.fieldbyname('tfa_mensaje3').asstring;
            if dm.Query1.fieldbyname('tfa_actbalance').asstring = 'False' then
            begin
              if QFacturaFAC_NOMBRE.isnull then
                QFacturaFAC_NOMBRE.Value := dm.Query1.fieldbyname('tfa_cliente').asstring;
              if QFacturaVEN_CODIGO.isnull then
                QFacturaVEN_CODIGO.Value := dm.Query1.fieldbyname('ven_codigo').asinteger;
            end;
          end;

          if tiponcf > 0 then
             QFacturatip_codigo.Value := tiponcf;

          totalizar;
        end;
      end;
    end;

end;

procedure TfrmFactura.QDetallepro_unidad_medidaChange(Sender: TField);
begin
  if (not QDetallepro_unidad_medida.IsNull) and (dm.QParametrospar_inv_unidad_medida.Value = 'True')  then
  begin
    //buscando precio por unidad de medida
    QUnidades.Close;
    QUnidades.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    QUnidades.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
    QUnidades.Parameters.ParamByName('und').Value := QDetallepro_unidad_medida.Value;
    QUnidades.Open;
    if QUnidades.RecordCount = 0 then
    begin
      MessageDlg('Esta unidad de medida no existe en el producto',mtError,[mbok],0);
      QDetallepro_unidad_medida.Clear;
      Abort;
    end
    else
    begin
      if actbalance = 'False' then
        QDetalleDET_PRECIO.Value := QUnidadesPrecio.Value
      else
        QDetalleDET_PRECIO.Value := QUnidadesCredito.Value;
      qdetalledet_cant_unidad_medida.Value := QUnidadesCantidad.AsFloat;
      //QDetalleUnidadID.Value := QUnidadesUnidadID.Value;
    end;
  end;
end;

procedure TfrmFactura.QDetalleBeforeEdit(DataSet: TDataSet);
begin
  if not QDetalleDET_CANTIDAD.IsNull then
    cantidadPrevia := QDetalleDET_CANTIDAD.Value;
  Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
    if QEnvio.Active and (not QEnvio.IsEmpty) then
    begin
      
      // Activamos el modo de edici?n del dataset
      QEnvio.Edit;

      // Actualizamos el valor del campo Cantidad en base a otro dataset
      QEnvioCantidad.Value := StrToInt(dCantidad);

      // Guardamos los cambios
      QEnvio.Post;
    end

end;

procedure TfrmFactura.DBGrid_1DblClick(Sender: TObject);
begin
DesactivarCargaProductos := False;
if not QSelectIncrem1.IsEmpty then begin
case RG_BuscaDet.ItemIndex of
0:begin
QDetallePRO_CODIGO.Value := QSelectIncrem1.fieldbyname('codigo').AsInteger;
end;
1:begin
QDetallePRO_RORIGINAL.Value := QSelectIncrem1.fieldbyname('codigo').AsString;
end;
2:begin
QDetallePRO_RFABRIC.Value := QSelectIncrem1.fieldbyname('codigo').AsString;
end;
end;
end;
Grid.SetFocus;
DBGrid_1.Visible := False;
if DM.QParametrosPAR_FACBAJARLINEA.Value = 'True' then begin
QDetalle.Append;
Grid.SelectedIndex := 0;
Exit;
end
else
Grid.SelectedIndex := 0;
ed1.Clear;
end;


procedure TfrmFactura.DBGrid_1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then DBGrid_1DblClick(Sender);
if key = #27 then
begin
ed1.Clear;
DBGrid_1.Visible := False;
Grid.SetFocus;
end;
end;

procedure TfrmFactura.btnReservaClick(Sender: TObject);
begin
  Search.AliasFields.clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C?digo');
  Search.Query.clear;
  Search.Query.add('select Numero_Reserva, Reserva_nombre');
  Search.Query.add('from Hotel_Reservas');
  Search.Query.add('where checkedout = 0');
  Search.Query.add('and  Numero_Reserva not in (select Numero_Reserva from Facturas where fac_status not in ('+QuotedStr('"ABI","ANU"')+'))');
  Search.ResultField := 'Numero_Reserva';
  Search.Title := 'Listado de Reservas';
  if Search.execute then
  begin
    QFacturaNUMERO_RESERVA.value := strtoint(Search.ValueField);
    dbedtNumReserva.setfocus;
end;
end;

procedure TfrmFactura.QFacturaNUMERO_RESERVAGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  IF QFactura.State IN [DSEDIT, DSINSERT] THEN BEGIN
  if not QFacturaNUMERO_RESERVA.isnull then
  begin
    Text := inttostr(QFacturaNUMERO_RESERVA.value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select Reserva_nombre, cli_codi, Reserva_direcion,');
    dm.Query1.sql.add('Reserva_localidad, Reserva_telefono1, Reserva_rnc, reserva_cedula, numero_huespedes');
    dm.Query1.sql.add('from Hotel_Reservas');  //
    dm.Query1.sql.add('where checkedout = 0');
    dm.Query1.sql.add('and Numero_Reserva = :res');
    dm.Query1.Parameters.parambyname('res').Value := QFacturaNumero_Reserva.value;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then begin
      edtNoReserva.text := '';
      Exit;
    end
    else
    begin
      edCliente.Text              := DM.Query1.fieldbyname('cli_codi').AsString;
      edtNoReserva.Text           := dm.Query1.fieldbyname('Reserva_nombre').asstring;
      QFacturafac_rnc.Value       := dm.Query1.fieldbyname('Reserva_rnc').asstring;
      QFacturaFAC_NOMBRE.Value    := dm.Query1.fieldbyname('Reserva_nombre').asstring;
      QFacturaFAC_DIRECCION.Value := dm.Query1.fieldbyname('Reserva_direcion').asstring;
      QFacturaFAC_LOCALIDAD.Value := dm.Query1.fieldbyname('Reserva_localidad').asstring;
      QFacturaFAC_TELEFONO.Value  := dm.Query1.fieldbyname('Reserva_telefono1').asstring;
      BuscarProdReservas;

      //CARGO A CUENTA PROPINA
      if Trim(DM.QContabpar_ctaproplegvent.Value) <> '' then
        begin
          if not QCuentas.Locate('cat_cuenta',DM.QContabpar_ctaproplegvent.Value,[]) then
          begin
            QCuentas.Append;
            QCuentascat_cuenta.Value := DM.QContabpar_ctaproplegvent.Value;
            QCuentasdet_origen.Value := 'Credito';
            QCuentasdet_monto.Value  := QFacturaFAC_PROPINA.Value;
            QCuentas.Post;
          end
          else
          begin
            QCuentas.Edit;
            QCuentasdet_origen.Value := 'Credito';
            QCuentasdet_monto.Value  := QFacturaFAC_PROPINA.Value;
            QCuentas.Post;
          end;
        end;
    end;
  Abort;
  end
  else
    edtNoReserva.text := '';
    END;
end;

procedure TfrmFactura.BuscarProdReservas;
var
  vl_cantidad :   Integer;
begin
QDetalle.Close;
QDetalle.Open;
//buscar Productos
with qBuscaProdReserva do begin
  Close;
  Parameters.ParamByName('EMP').Value   :=  QFacturaEMP_CODIGO.Value;
  Parameters.ParamByName('RES').Value   :=  QFacturaNUMERO_RESERVA.Value;
  Parameters.ParamByName('SUC').Value   :=  QFacturaSUC_CODIGO.Value;
  Parameters.ParamByName('VEN').Value   :=  QFacturaVEN_CODIGO.Value;
  Parameters.ParamByName('FORMA').Value :=  QFacturaFAC_FORMA.Value;
  Parameters.ParamByName('TFAC').Value  :=  QFacturaTFA_CODIGO.Value;
  Parameters.ParamByName('NUM').Value   :=  QFacturaFAC_NUMERO.Value;
  Open;
  vl_cantidad := qBuscaProdReserva.RecordCount;
  IF NOT qBuscaProdReserva.IsEmpty THEN BEGIN
    qBuscaProdReserva.First;
    WHILE NOT qBuscaProdReserva.EOF do begin
    IF qBuscaProdReserva.FIELDBYNAME('PRO_CODIGO').Value > 0 THEN BEGIN
    QDetalle.Append;
    QDetalleDET_CANTIDAD.Value           := FIELDBYNAME('DET_CANTIDAD').Value;
    QDetalleDET_CONITBIS.Value           := FIELDBYNAME('DET_CONITBIS').Value;
    QDetalleDET_COSTO.Value              := FIELDBYNAME('DET_COSTO').Value;
    if QDetalleDET_DESCUENTO.ReadOnly = False then
    QDetalleDET_DESCUENTO.Value          := FIELDBYNAME('DET_DESCUENTO').Value;
    QDetalleDET_ITBIS.Value              := FIELDBYNAME('DET_ITBIS').Value;
    QDetalleDET_PRECIO.Value             := FIELDBYNAME('DET_PRECIO').Value;
    QDetalleDET_SECUENCIA.Value          := FIELDBYNAME('DET_SECUENCIA').Value;
    QDetalleDET_TOTAL.Value              := FIELDBYNAME('DET_TOTAL').Value;
    QDetalleDET_COMISION.Value           := FIELDBYNAME('DET_COMISION').Value;
    QDetalleDET_TOTALDESC.Value          := FIELDBYNAME('DET_TOTALDESC').Value;
    QDetalleDET_TOTALITBIS.Value         := FIELDBYNAME('DET_TOTALITBIS').Value;
    QDetalleEMP_CODIGO.Value             := FIELDBYNAME('EMP_CODIGO').Value;
    QDetalleFAC_FORMA.Value              := FIELDBYNAME('FAC_FORMA').Value;
    QDetallePRO_CODIGO.Value             := FIELDBYNAME('PRO_CODIGO').Value;
    QDetallePRO_RFABRIC.Value            := FIELDBYNAME('PRO_RFABRIC').Value;
    QDetallePRO_RORIGINAL.Value          := FIELDBYNAME('PRO_RORIGINAL').Value;
    QDetalleTFA_CODIGO.Value             := FIELDBYNAME('TFA_CODIGO').Value;
    QDetallePRO_NOMBRE.Value             := FIELDBYNAME('PRO_NOMBRE').Value;
    QDetalle.Post;
    end;
    qBuscaProdReserva.Next;
    end;
  end;
  end;

  //Buscar Propina Legal
  with DM.Query1 do begin
    Close;
    SQL.Clear;
    sql.Add('SELECT propleg_cuenta FROM Hotel_cuenta_reserva where cod_reserva = :RES');
    Parameters[0].Value := QFacturaNUMERO_RESERVA.Value;
    Open;
    QFacturaFAC_PROPINA.Value := FIELDBYNAME('propleg_cuenta').AsCurrency;
    QFacturaFAC_TOTAL.Value := QFacturaFAC_TOTAL.Value + QFacturaFAC_PROPINA.Value;
    Close;
  end;
end;

procedure TfrmFactura.Imp40ColumnasHotel;
var
  arch, puertopeq : textfile;
  s, s1, s2, s3, s4, s5, s6 : array [0..20] of char;
  Tfac, Saldo : double;
  puerto, lbitbis, impcodigo, pro_codigo, Unidad, codigoabre : string;
  a : integer;
begin
      with dm.Query1 do begin
      close;
      sql.clear;
      sql.add('select tfa_copias from tiposfactura');
      sql.add('where emp_codigo = :emp');
      sql.add('and tfa_codigo = :cod');
      Parameters.parambyname('emp').Value := dm.vp_cia;
      Parameters.parambyname('cod').Value := QFacturaTFA_CODIGO.Value;
      open;
      IF NOT IsEmpty THEN
      copias := FIELDBYNAME('tfa_copias').Value;
      end;


  if FileExists('.\puerto.txt') then
  begin
    assignfile(puertopeq, '.\puerto.txt');
    reset(puertopeq);
    readln(puertopeq, puerto);
  end
  else
    puerto := 'PRN';

  closefile(puertopeq);

  AssignFile(arch, '.\imp.bat');
  rewrite(arch);
  writeln(arch, 'type .\t.txt > '+puerto);
  closefile(arch);

  tfac := 0;
  application.CreateForm(tRFactura, RFactura);
  RFactura.QFactura.Parameters.ParamByName('emp').Value     := DM.vp_cia;
  RFactura.QFactura.Parameters.ParamByName('tipo').Value    := QFacturaTFA_CODIGO.value;
  RFactura.QFactura.Parameters.ParamByName('forma').Value   := QFacturaFAC_FORMA.value;
  RFactura.QFactura.Parameters.ParamByName('numero').Value  := QFacturaFAC_NUMERO.value;
  RFactura.QFactura.Parameters.ParamByName('suc').Value     := QFacturaSUC_CODIGO.value;
  RFactura.QFactura.open;
  RFactura.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
  RFactura.QDetalle.open;
  RFactura.QFormasPago.Open;
  AssignFile(arch, '.\t.txt');
  rewrite(arch);

  if ImprimeEncaqbezado = 'True' then
  begin
    writeln(arch, dm.centro(QSucursalsuc_nombre.Value));
    writeln(arch, dm.centro(QSucursalsuc_direccion.Value));
    writeln(arch, dm.centro(QSucursalsuc_localidad.Value));
    writeln(arch, dm.centro(QSucursalsuc_telefono.Value));
    writeln(arch, dm.centro('RNC:'+QSucursalsuc_rnc.Value));
    writeln(arch, '');
  end;
  writeln(arch, dm.Centro(trim(tTipo.text)));
  writeln(arch, '');

  writeln(arch, 'Fecha .: '+DateToStr(RFactura.QFacturaFAC_FECHA.Value)+' Factura: '+formatfloat('0000000000',RFactura.QFacturaFAC_NUMERO.value));
  writeln(arch, 'Caja ..: '+RFactura.QFacturaCAJ_CODIGO.Text);


  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add('select cli, dir, tel, ven, caj, fir, otros, CodigoProducto from parconfigimp');
  Query1.SQL.Add('where emp_codigo = :emp');
  Query1.SQL.Add('and tfa_codigo = :tfa');
  Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  Query1.Parameters.ParamByName('tfa').Value := RFactura.QFacturaTFA_CODIGO.Value;
  Query1.Open;
  impcodigo := Query1.FieldByName('CodigoProducto').AsString;

  if Query1.FieldByName('caj').AsString = 'Si' then
  begin
    dm.Query1.Close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select caj_nombre from cajeros');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and caj_codigo = :ven');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('ven').Value := RFactura.QFacturaCAJ_CODIGO.Value;
    dm.Query1.Open;

    s := '';
    fillchar(s, 15-length(copy(dm.Query1.FieldByName('caj_nombre').asstring,1,13)),' ');
    writeln(arch, 'Cajero: '+copy(dm.Query1.FieldByName('caj_nombre').asstring,1,13)+s+'Hora: '+RFactura.QFacturaFAC_HORA.AsString);
  end;
    writeln(arch, '');

if Trim(RFactura.QFacturaNumeroCF.Value) <> '' then
  begin
 //buscar tipo documentos
      with QDatos do begin
      Close;
      sql.Clear;
      SQL.Add('select b.tdo_nombre Nombre');
      sql.Add('from NCF a');
      sql.Add('inner join TiposDoc b on a.emp_codigo=b.emp_codigo and a.tdo_codigo=b.tdo_codigo');
      sql.Add('where a.emp_codigo = :emp_codigo');
      sql.Add('and a.suc_codigo = :suc_codigo');
      sql.Add('and a.NCF_Fijo   = :NCF_Fijo');
      Parameters.ParamByName('emp_codigo').Value := QFacturaEMP_CODIGO.Value;
      Parameters.ParamByName('suc_codigo').Value := QFacturaSUC_CODIGO.Value;
      Parameters.ParamByName('NCF_Fijo').Value   := RFactura.QFacturaNCF_Fijo.Text;
      Open;
      writeln(arch,FieldByName('Nombre').AsString);
      end;

    writeln(arch, 'NCF: '+RFactura.QFacturaNumeroCF.Value);
  //buscar vencimiento
      with QDatos do begin
      Close;
      sql.Clear;
      SQL.Add('select FechaVenc ');
      sql.Add('from NCF ');
      sql.Add('where VerificaVenc = 1 and emp_codigo = :emp_codigo');
      sql.Add('and suc_codigo = :suc_codigo');
      sql.Add('and NCF_Fijo   = :NCF_Fijo');
      Parameters.ParamByName('emp_codigo').Value := QFacturaEMP_CODIGO.Value;
      if DM.QContabpar_NCF_Sucursal.Value = True then
      Parameters.ParamByName('suc_codigo').Value := QFacturaSUC_CODIGO.Value else
      Parameters.ParamByName('suc_codigo').Value :=  1;
      Parameters.ParamByName('NCF_Fijo').Value   := RFactura.QFacturaNCF_Fijo.Text;
      Open;
      if not IsEmpty then
      writeln(arch,'Fecha Venc.: '+FieldByName('FechaVenc').text);
      end;


   if RFactura.QFacturaFAC_RNC.Value <> '' then
      writeln(arch, 'RNC: '+RFactura.QFacturaFAC_RNC.Value);
  end;


  if (actbalance = 'True') then
    writeln(arch, 'Vence : '+DateToStr(RFactura.QFacturaFAC_VENCE.value));

  if Query1.FieldByName('cli').AsString = 'Si' then
  begin
    if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
      writeln(arch, 'Nombre: '+RFactura.QFacturaFAC_NOMBRE.value)
    else
      writeln(arch, 'Nombre: '+RFactura.QFacturaFAC_NOMBRE.value);
  end;
  if Query1.FieldByName('dir').AsString = 'Si' then
    if Trim(RFactura.QFacturaFAC_DIRECCION.value) <> '' then
      writeln(arch, 'Dir.  : '+RFactura.QFacturaFAC_DIRECCION.value);
  if Query1.FieldByName('tel').AsString = 'Si' then
    if Trim(RFactura.QFacturaFAC_TELEFONO.value) <> '' then
      writeln(arch, 'Tel.  : '+RFactura.QFacturaFAC_TELEFONO.value);
  if Query1.FieldByName('ven').AsString = 'Si' then
  begin
    dm.Query1.Close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select ven_nombre from vendedores');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and ven_codigo = :ven');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('ven').Value := RFactura.QFacturaVEN_CODIGO.Value;
    dm.Query1.Open;

    writeln(arch, 'Vend. : '+dm.Query1.FieldByName('ven_nombre').asstring);
  end;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select Ciudad_Origen, Ciudad_Destino, Nombre_envia,');
  dm.Query1.SQL.Add('Telefono_Envia, Nombre_Recibe, Telefono_Recibe, Descripcion');
  dm.Query1.SQL.Add('from envio where emp_codigo = :emp and suc_codigo = :suc');
  dm.Query1.SQL.Add('and fac_numero = :fac');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('suc').Value := RFactura.QFacturaSUC_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('fac').Value := RFactura.QFacturaFAC_NUMERO.Value;
  dm.Query1.Open;
  if dm.Query1.RecordCount > 0 then
  begin
    writeln(arch, ' ');
    writeln(arch, 'DATOS DEL ENVIO:');
    writeln(arch, ' ');
    writeln(arch, 'Envia : '+dm.Query1.FieldByNAme('Telefono_Envia').AsString);
    writeln(arch, '        '+dm.Query1.FieldByNAme('Nombre_envia').AsString);
    writeln(arch, '        '+dm.Query1.FieldByNAme('Ciudad_Origen').AsString);
    writeln(arch, '');
    writeln(arch, 'Recibe: '+dm.Query1.FieldByNAme('Telefono_Recibe').AsString);
    writeln(arch, '        '+dm.Query1.FieldByNAme('Nombre_Recibe').AsString);
    writeln(arch, '        '+dm.Query1.FieldByNAme('Ciudad_Destino').AsString);
    writeln(arch, '');
    writeln(arch, dm.Query1.FieldByNAme('Descripcion').AsString);
  end;

writeln(arch, '');

  //Buscar Datos Reservas
  IF chkTipoFacHotel.Checked = False THEN BEGIN
  with dm.Query1 do begin
    Close;
    SQL.Clear;
    sql.Add('SELECT Reserva_contacto, Numero_huespedes FROm Hotel_Reservas WHERE Numero_Reserva = :RES');
    Parameters[0].Value := RFactura.QFacturaNUMERO_RESERVA.Value;
    Open;
    IF NOT IsEmpty then begin
    writeln(arch, 'Huesped           : '+Fieldbyname('Reserva_contacto').value);
    writeln(arch, 'Cantidad Huesped  : '+Fieldbyname('Numero_huespedes').asstring);
    end;
    Close;
    SQL.Clear;
    sql.Add('SELECT Numero_Habitacion, cod_tipo FROM Hotel_habitaciones');
    sql.Add('WHERE Cod_habitacion IN');
    sql.Add('(SELECT cod_habitacion FROM Hotel_cal A WHERE cod_reserva = :RES)');
    Parameters[0].Value := RFactura.QFacturaNUMERO_RESERVA.Value;
    Open;
    IF NOT IsEmpty then begin
    writeln(arch, 'Habitacion #      : '+Fieldbyname('Numero_Habitacion').asstring);
    writeln(arch, 'Tipo Hababitacion : '+Fieldbyname('cod_tipo').value);
    writeln(arch, 'Reserva #         : '+RFactura.QFacturaNumero_Reserva.asstring);
    end;
  end;
  end;


  if impcodigo = 'Si' then
  begin
    writeln(arch, '----------------------------------------');
    writeln(arch, 'CANT  UND  DESCRIPCION   ITBIS     TOTAL');
    writeln(arch, '----------------------------------------');
  end
  else
  begin
    writeln(arch, '----------------------------------------');
    writeln(arch, 'CANT.   DESCRIPCION      ITBIS     TOTAL');
    writeln(arch, '----------------------------------------');
  end;
  while not RFactura.QDetalle.eof do
  begin
    tfac := tfac + RFactura.QDetallePrecioItbis.value;

    {if RFactura.QDetalleDET_CONITBIS.value = 'N' then
       lbItbis := 'E'
    else
       lbItbis := ' ';}

    s := '';
    FillChar(s, 5-length(format('%n',[RFactura.QDetalleDET_CANTIDAD.value])),' ');
    s1 := '';
    FillChar(s1, 10-length(trim(FORMAT('%n',[RFactura.QDetalleValor.value]))), ' ');
    s2 := '';

    if impcodigo = 'Si' then
      FillChar(s2, 33-length(copy(trim(RFactura.QDetallePRO_NOMBRE.value),1,33)),' ')
    else
      FillChar(s2, 16-length(copy(trim(RFactura.QDetallePRO_NOMBRE.value),1,16)),' ');

    if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'I' then
      pro_codigo := RFactura.QDetallePRO_CODIGO.AsString
    else if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'O' then
      pro_codigo := RFactura.QDetallePRO_RORIGINAL.AsString;

    s3 := '';
    FillChar(s3, 8-length(trim(FORMAT('%n',[RFactura.QDetallePrecioItbis.value]))),' ');
    s4 := '';
    FillChar(s4, 8-length(trim(FORMAT('%n',[RFactura.QDetalleCalcItbis.value]))),' ');

    lbitbis := 'E';
    if RFactura.QDetalleDET_CONITBIS.value = 'N' then
    begin
       lbitbis := ' ';
    end;
    if impcodigo = 'Si' then
    begin
      //Unidad := copy(RFactura.QDetallepro_unidad_medida.Value,1,4);
      Unidad := copy(RFactura.QDetalleMEDIDA.Value,1,4);
      if trim(Unidad) <> '' then
        writeln(arch, s+format('%n',[RFactura.QDetalledet_cantidad.value])+' '+Unidad+
                      ' '+copy(trim(RFactura.QDetallePRO_NOMBRE.value),1,33))
      else
        writeln(arch, s+format('%n',[RFactura.QDetalledet_cantidad.value])+
                      ' '+copy(trim(RFactura.QDetallePRO_NOMBRE.value),1,33));

      s1 := '';
      FillChar(s1, 10-length(trim(FORMAT('%n',[RFactura.QDetalleValor.value]))), ' ');
      s2 := '';
      FillChar(s2, 3,' ');
      s4 := '';
      FillChar(s4, 12-length(trim(FORMAT('%n',[RFactura.QDetalleCalcItbis.value]))),' ');
      s3 := '';
      FillChar(s3, 15-length(pro_codigo),' ');

      writeln(arch, pro_codigo+s3+s2+s4+FORMAT('%n',[RFactura.QDetalleCalcItbis.value])+s1+
                    format('%n',[RFactura.QDetalleValor.value]));

       writeln(arch, ' ');
    end
    else
      writeln(arch, s+format('%n',[RFactura.QDetalledet_cantidad.value])+
                    ' '+copy(trim(RFactura.QDetallePRO_NOMBRE.value),1,16)+s2+s4+FORMAT('%n',[RFactura.QDetalleCalcItbis.value])+s1+
                    format('%n',[RFactura.QDetalleValor.value]));


    if Trim(RFactura.QDetalleDET_NOTA.Value) <> '' then
    begin
      writeln(arch, ' ');
      writeln(arch, RFactura.QDetalleDET_NOTA.Value);
      writeln(arch, ' ');
    end;
    RFactura.QDetalle.next;
  end;
  s := '';
  fillchar(s, 14-length(format('%n',[RFactura.QFacturaFAC_TOTAL.value])),' ');
  s1:= '';
  fillchar(s1, 14-length(format('%n',[RFactura.QFacturaFAC_DESCUENTO.value])),' ');
  s2:= '';
  fillchar(s2, 14-length(format('%n',[TFac])),' ');
  s3:= '';
  fillchar(s3, 14-length(format('%n',[RFactura.QFacturaFAC_ITBIS.value])),' ');
  s4:= '';
  fillchar(s4, 40-length('-----------'),' ');
  s5:= '';
  fillchar(s5, 14-length(format('%n',[RFactura.QFacturaFAC_OTROS.value])),' ');
  s6:= '';
  fillchar(s6, 14-length(format('%n',[RFactura.QFacturaFAC_PROPINA.value])),' ');


  writeln(arch, '                             -----------');
  writeln(arch, '              SubTotal   :'+s2+format('%n',[TFac]));
  writeln(arch, '              Descuento  :'+s1+format('%n',[RFactura.QFacturaFAC_DESCUENTO.value]));
  writeln(arch, '              Propina    :'+s6+format('%n',[RFactura.QFacturaFAC_PROPINA.value]));
  writeln(arch, '              Total Itbis:'+s3+format('%n',[RFactura.QFacturaFAC_ITBIS.value]));



  if Query1.FieldByName('otros').AsString = 'Si' then
     writeln(arch, '              Otros      :'+s5+format('%n',[RFactura.QFacturaFAC_OTROS.value]));
  writeln(arch, '              Total Neto :'+s+format('%n',[RFactura.QFacturaFAC_TOTAL.value]));


  if   RFactura.QFacturafac_tasa.Value > 1 then begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select mon_sigla from moneda');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and mon_codigo = :mon');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('mon').Value := RFactura.QFacturaMON_CODIGO.Value;
    dm.Query1.Open;
    if not dm.Query1.IsEmpty then
      begin
       writeln(arch, '              Moneda     : '+dm.Query1.FieldByName('mon_sigla').AsString);
       writeln(arch, '              Tasa       : '+RFactura.QFacturafac_tasa.AsString);
      end;
  end;




  if (actbalance = 'True') then
  begin
    s := '';
    fillchar(s, 14-length(format('%n',[RFactura.QFacturaFAC_ABONO.value])),' ');
    Saldo := RFactura.QFacturaFAC_TOTAL.value - RFactura.QFacturaFAC_ABONO.value;
    s1 := '';
    fillchar(s1, 14-length(format('%n',[Saldo])),' ');
    writeln(arch, '              Abonado    :'+s+format('%n',[RFactura.QFacturaFAC_ABONO.value]));
    writeln(arch, '              Balance    :'+s1+format('%n',[Saldo]));

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cli_balance from clientes');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cli_codigo = :cli');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cli').Value := RFactura.QFacturaCLI_CODIGO.Value;
    dm.Query1.Open;

    writeln(arch, ' ');
    writeln(arch, dm.Centro('SU CUENTA REFLEJA UN BALANCE'));
    writeln(arch, dm.Centro('A LA FECHA DE '+Format('%n',[dm.Query1.FieldByName('cli_balance').AsFloat])));

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select * from pr_Estadistica_cli (:emp, :cli, :fec)');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cli').Value := RFactura.QFacturaCLI_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('fec').Value    := Date;
    dm.Query1.Open;
    writeln(arch, dm.Centro('Y UN MONTO VENCIDO DE '+Format('%n',[dm.Query1.FieldByName('mtovencido').AsFloat])));
  end
  else
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select f.fpa_nombre, sum(p.for_monto) as monto');
    dm.Query1.SQL.Add('from formaspago f, facformapago p');
    dm.Query1.SQL.Add('where f.emp_codigo = p.emp_codigo');
    dm.Query1.SQL.Add('and f.fpa_codigo = p.fpa_codigo');
    dm.Query1.SQL.Add('and p.emp_codigo = :emp');
    dm.Query1.SQL.Add('and p.tfa_Codigo = :tfa');
    dm.Query1.SQL.Add('and p.fac_forma  = :for');
    dm.Query1.SQL.Add('and p.fac_numero = :num');
    dm.Query1.SQL.Add('and p.suc_codigo = :suc');
    dm.Query1.SQL.Add('group by f.fpa_nombre');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('tfa').Value := RFactura.QFacturaTFA_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('for').Value  := RFactura.QFacturaFAC_FORMA.Value;
    dm.Query1.Parameters.ParamByName('num').Value := RFactura.QFacturaFAC_NUMERO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := RFactura.QFacturaSUC_CODIGO.Value;
    dm.Query1.Open;

    writeln(arch, ' ');
    dm.Query1.DisableControls;
    dm.Query1.First;
    while not dm.Query1.Eof do
    begin
      s:= '';
      fillchar(s, 14-length(dm.Query1.FieldByName('fpa_nombre').asstring),' ');
      s1 := '';
      fillchar(s1, 10-length(format('%n',[dm.Query1.FieldByName('monto').asfloat])),' ');
      writeln(arch,copy(dm.Query1.FieldByName('fpa_nombre').asstring,1,14)+' : '+s1+format('%n',[dm.Query1.FieldByName('monto').asfloat]));
      dm.Query1.Next;
    end;
    dm.Query1.EnableControls;

    if Recibido = '' then
    begin
       Recibido := FormatCurr('#,0.00',QFacturaFAC_TOTAL.Value);
       Devuelta := '0.00';
    end;



    s := '';
    fillchar(s,  10-length(Recibido),' ');
    s1 := '';
    fillchar(s1, 10-length(Devuelta),' ');

    writeln(arch, ' ');
    writeln(arch, 'Recibido : '+s+Recibido);
    writeln(arch, 'Devuelta : '+s1+Devuelta);
  end;
  writeln(arch, ' ');
  writeln(arch, copy(RFactura.QFacturaFAC_MENSAJE1.Value,1,40));
  writeln(arch, copy(RFactura.QFacturaFAC_MENSAJE2.Value,1,40));
  writeln(arch, copy(RFactura.QFacturaFAC_MENSAJE3.Value,1,40));
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  if Query1.FieldByName('fir').AsString = 'Si' then
  begin
    writeln(arch, dm.Centro('_________________________'));
    writeln(arch, dm.Centro('Realizado por '));
    writeln(arch, ' ');
    writeln(arch, ' ');
    writeln(arch, ' ');
    writeln(arch, dm.Centro('_________________________'));
    writeln(arch, dm.Centro('Firma del Cliente '));
  end;
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select Puerto, codigo_abre_caja from cajas_IP');
  dm.Query1.SQL.Add('where caja = :caj');
  dm.Query1.Parameters.ParamByName('caj').Value := caja;
  dm.Query1.Open;
  codigoabre := dm.Query1.FieldByName('codigo_abre_caja').AsString;

  if codigoabre = 'Termica' then
  writeln(arch,chr(27)+chr(109));


  CloseFile(arch);
  dm.AbreCaja;
  if (actbalance = 'False') then
  begin
    if QFacturaFAC_DOMICILIO.Value = 'True' then
    begin
      a := 1;
      while a <= dm.QParametrospar_copias_domicilio.Value do
      begin
        winexec('.\imp.bat',0);
        a := a + 1;
      end;
    end
    else
      winexec('.\imp.bat',0);
  end
  else
  begin
    if copias = 0 then copias := 1;
    a := 1;
    while a <= copias do
    begin
      winexec('.\imp.bat',0);
      a := a + 1;
    end;
  end;


    RFactura.Destroy;

end;


procedure TfrmFactura.QMsnExistenciaBeforeOpen(DataSet: TDataSet);
begin
  QMsnExistencia.Parameters.ParamByName('EMP').Value := DM.vp_cia;
  QMsnExistencia.Parameters.ParamByName('CAJ').Value := QFacturafac_caja.Value;
  QMsnExistencia.Parameters.ParamByName('SUC_CODIGO').Value := DBLookupComboBox2.KeyValue;
end;

procedure TfrmFactura.QMsnExistenciaAfterOpen(DataSet: TDataSet);
begin
vAlmacen := QMsnExistenciaALMACEN.Value;
end;

procedure TfrmFactura.ExistenciaxAlmacen1Click(Sender: TObject);
begin
  if  ((QDetalle.Active = false ) or (QDetalle.RecordCount < 1)) then
    exit;

  application.createform(tfrmProductosXAlmacen, frmProductosXAlmacen);

  frmProductosXAlmacen.idEmpresa   := dm.vp_cia;//QDetalle['EMP_CODIGO'];
  frmProductosXAlmacen.idProducto  := QDetalle['PRO_CODIGO'];
  frmProductosXAlmacen.Descripcion := QDetalle['PRO_NOMBRE'];
  frmProductosXAlmacen.showmodal;
  frmProductosXAlmacen.release;
end;

procedure TfrmFactura.DBEdit7Exit(Sender: TObject);
begin
DBEdit19.SetFocus;
if not ((dm.QParametrospar_formato_preimpreso.Text = 'Sarita & Asociados') AND
          (DM.QParametrospar_fac_preimpresa.Value = 'True')) then
QFacturaFAC_ITBIS.Value := QFacturaFAC_ITBIS.Value;

if (ckItbis.Checked)  then begin
QFacturaFAC_TOTAL.Value := QFacturaSubTotal.Value -  QFacturaFAC_DESCUENTO.Value+
QFacturaFAC_ITBIS.Value + QFacturaRecargo.Value + QFacturaFAC_PROPINA.Value
end
ELSE
QFacturaFAC_TOTAL.Value := QFacturaSubTotal.Value -  QFacturaFAC_DESCUENTO.Value+
QFacturaRecargo.Value + QFacturaFAC_PROPINA.Value;
end;


procedure TfrmFactura.edClienteExit(Sender: TObject);
begin
if (trim(edCliente.text) <> '') AND (Trim(edCliente.text) = '0') THEN BEGIN
if MessageDlg('ESTE CLIENTE NO EXISTE, DESEA CREARLO',mtError,[mbno, mbyes],0) = mryes then
begin
edCliente.SetFocus;
frmMain.ActivaForma(tfrmClientes, TForm(frmClientes));
frmClientes.btInsertClick(Self);
if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'R' then
frmClientes.QClientesCLI_REFERENCIA.Value := Trim(edCliente.Text);
end
else
edCliente.SetFocus;
end;
end;

procedure TfrmFactura.edClienteKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8]) then
      key:=#0;

end;



procedure TfrmFactura.QDetalleAfterInsert(DataSet: TDataSet);
begin
Grid.SelectedIndex := 0;
end;

function TfrmFactura.IDEnvio: Integer;
begin
with dm.Query1 do begin
Close;
SQL.Clear;
SQL.Add('select (isnull(max(idenvio),0) + 1) as maximo from envio where emp_codigo = :emp');
SQL.Add('and suc_codigo = :suc and fac_numero = :fac and pro_codigo = :pro');
Parameters.parambyname('emp').Value := dm.vp_cia;
Parameters.parambyname('suc').Value := QFacturaSUC_CODIGO.value;
Parameters.parambyname('fac').Value := QFacturaFAC_NUMERO.Value;
Parameters.parambyname('pro').Value := QDetallePRO_CODIGO.value;
Open;
if not IsEmpty then
Result := fieldbyname('maximo').AsInteger else
Result := 0;
end;

end;

procedure TfrmFactura.QEnvioBeforePost(DataSet: TDataSet);
begin
QEnvioIDEnvio.Value := IDEnvio;
end;

procedure TfrmFactura.BuscarProdLiquidacionTickets;
var
  vl_cantidad :   Integer;
begin

QDetalle.Close;
QDetalle.Open;
//buscar Productos
with qBuscaProdLiqTickets do begin
  Close;
  Parameters.ParamByName('EMP').Value   :=  QFacturaEMP_CODIGO.Value;
  Parameters.ParamByName('SUC').Value   :=  QFacturaSUC_CODIGO.Value;
  Parameters.ParamByName('VEN').Value   :=  QFacturaVEN_CODIGO.Value;
  Parameters.ParamByName('CLI').Value   :=  vl_cliente;
  Parameters.ParamByName('DESDE').Value :=  DEdt_Desde.Date;
  Parameters.ParamByName('HASTA').Value :=  DEdt_Hasta.Date;
  Open;
  vl_cantidad := qBuscaProdLiqTickets.RecordCount;
  IF NOT qBuscaProdLiqTickets.IsEmpty THEN BEGIN
    qBuscaProdLiqTickets.First;
    WHILE NOT qBuscaProdLiqTickets.EOF do begin
    QDetalle.Append;
    QDetalleDET_CANTIDAD.Value           := FIELDBYNAME('DET_CANTIDAD').Value;
    QDetalleDET_CONITBIS.Value           := FIELDBYNAME('DET_CONITBIS').Value;
    QDetalleDET_COSTO.Value              := FIELDBYNAME('DET_COSTO').Value;
    if QDetalleDET_DESCUENTO.ReadOnly = False then 
    QDetalleDET_DESCUENTO.Value          := FIELDBYNAME('DET_DESCUENTO').Value;
    QDetalleDET_ITBIS.Value              := FIELDBYNAME('DET_ITBIS').Value;
    QDetalleDET_PRECIO.Value             := FIELDBYNAME('DET_PRECIO').Value;
    QDetalleDET_SECUENCIA.Value          := FIELDBYNAME('DET_SECUENCIA').Value;
    QDetalleDET_TOTAL.Value              := FIELDBYNAME('DET_TOTAL').Value;
    QDetalleDET_COMISION.Value           := FIELDBYNAME('DET_COMISION').Value;
    QDetalleDET_TOTALDESC.Value          := FIELDBYNAME('DET_TOTALDESC').Value;
    QDetalleDET_TOTALITBIS.Value         := FIELDBYNAME('DET_TOTALITBIS').Value;
    QDetalleEMP_CODIGO.Value             := FIELDBYNAME('EMP_CODIGO').Value;
    QDetalleFAC_FORMA.Value              := QFacturaFAC_FORMA.Value;
    QDetallePRO_CODIGO.Value             := FIELDBYNAME('PRO_CODIGO').Value;
    if Trim(FIELDBYNAME('PRO_RFABRIC').Text) <> '' then
    QDetallePRO_RFABRIC.Value            := FIELDBYNAME('PRO_RFABRIC').Value;
    QDetallePRO_RORIGINAL.Value          := FIELDBYNAME('PRO_RORIGINAL').Value;
    QDetallePRO_NOMBRE.Value             := FIELDBYNAME('PRO_NOMBRE').Value;
    QDetalleFAC_NUMERO.Value             := QFacturaFAC_NUMERO.Value;
    QDetalleTFA_CODIGO.Value             := QFacturaTFA_CODIGO.Value;   
    QDetalle.Post;
    qBuscaProdLiqTickets.Next;
    end;
  end;
  end;
end;

procedure TfrmFactura.Rpt_FacOrdTallerBeforePrint(
  Sender: TfrxReportComponent);
begin
if qFacturaOrdTallerLOGO.IsNull then begin
TfrxMemoView(Rpt_FacOrdTaller.FindObject('Logo')).Visible := False;
TfrxMemoView(Rpt_FacOrdTaller.FindObject('MCia')).Visible := True;
end;
if not qFacturaOrdTallerLOGO.IsNull then begin
TfrxMemoView(Rpt_FacOrdTaller.FindObject('Logo')).Visible := True;
TfrxMemoView(Rpt_FacOrdTaller.FindObject('MCia')).Visible := False;
end;
IF qFacturaOrdTallerNCF_VENCE.IsNull THEN
TfrxMemoView(Rpt_FacOrdTaller.FindObject('MVenceNCF')).Visible := False ELSE
TfrxMemoView(Rpt_FacOrdTaller.FindObject('MVenceNCF')).Visible := True;
end;

procedure TfrmFactura.QFacTMPBeforePost(DataSet: TDataSet);
begin
 //Buscar Numero Factura Temporal
  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select isnull(max(fac_numero),0) as maximo');
  dm.Query1.sql.add('from facturasTMP');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and suc_codigo = :suc');
  dm.Query1.sql.add('and tfa_codigo = :tfa');
  dm.Query1.sql.add('and fac_forma = :for');
  dm.Query1.Parameters.parambyname('emp').Value  := dm.vp_cia;
  dm.Query1.Parameters.parambyname('suc').Value  := DBLookupComboBox2.KeyValue;
  dm.Query1.Parameters.parambyname('tfa').Value  := StrToInt(edTipo.Text);
  dm.Query1.Parameters.parambyname('for').Value  := 'A';
  dm.Query1.open;
  QFacTMPFAC_NUMERO.Value := dm.Query1.fieldbyName('maximo').Value + 1;

end;




procedure TfrmFactura.FormShow(Sender: TObject);
begin
IF DM.QParametrospar_fac_preimpresa.Value = 'False'  then BEGIN
  chkTipoFacHotel.Visible := False;
  LbPropinaLegal.Visible := False;
  LbPropinaLegal.Top := 69;
  dbedtFAC_PROPINA.Visible := False;
  dbedtFAC_PROPINA.Top := 66;
  Panel2.Height := 100;
  LBReserva.Visible := False;
  lbHasta.Visible := False;
  lbHasta.Caption := 'Hasta:';
  DEdt_Desde.Visible := False;
  DEdt_Hasta.Visible := False;
  dbedtNumReserva.Visible := False;
  btnReserva.Visible := False;
  edtNoReserva.Visible := False;
  LBReserva.Visible := False;
  dbedtNumReserva.Visible := False;
  btnReserva.Visible := False;
  edtNoReserva.Visible := False;
  lblRecargos.Visible := False;
  lblRecargos.Top := 8;
  dbedt_RECARGOS.Visible := False;
  //dbedt_RECARGOS.Top := 66;
  //DBEdit7.Visible            := True;
  Label16.Visible            := True;
  //DBEdit7.Top                := 24;
  Label16.Top                := 27;
  Label23.Visible            := False;
  dbedtFAC_SERVICIOS.Visible := False;
 // dbedtFAC_SERVICIOS.Top     := 115;
  //Label23.Top                := 112;
  QDetalleSubPedido.Visible         := False;
  QDetalleOrden.Visible             := QDetalleSubPedido.Visible;
  QDetalleDET_MEDIDA.Visible        := True;
  QDetalleValor.Visible             := True;
  IF DM.QParametrospar_visualizar_cant_empaque.Value = 'True' THEN
  QDetalledet_cantempaque.Visible   := True else
  QDetalledet_cantempaque.Visible   := False;
  IF DM.QParametrosPAR_FACMEDIDA.Value = 'True' THEN
  QDetalleDET_MEDIDA.Visible   := True else
  QDetalleDET_MEDIDA.Visible   := False;
  IF DM.QParametrospar_inv_unidad_medida.Value = 'True' THEN
  QDetallepro_unidad_medida.Visible   := True else
  QDetallepro_unidad_medida.Visible   := False;
  IF DM.QParametrospar_fac_oferta.Value = 'True' THEN
  QDetalledet_cant_oferta.Visible   := True else
  QDetalledet_cant_oferta.Visible   := False;
  IF DM.QParametrosPAR_FACESCALA.Value = 'True' THEN
  QDetalleDET_ESCALA.Visible        := True;
  QDetalleOrden.Visible             := False;
  lblRecargos.Visible               := False;
  Grid.Columns.Items[0].Width       := 70;
  Grid.Columns.Items[1].Width       := 250;
  Grid.Columns.Items[2].Width       := 60;
  Grid.Columns.Items[8].Width       := 90;
  Grid.Columns.Items[7].Width       := 90;
  Grid.Columns.Items[6].Width       := 90;
  //if Grid.Columns.Items[9].Title.Caption  = 'SubPedido' then
  //Grid.Columns.Items[9].Visible     := False ELSE
  //Grid.Columns.Items[9].Visible     := True;
  lbReferencia.Visible              := False;
  lbPedido.Visible                  := lbReferencia.Visible;
  dbedtPedidoNo.Visible             := lbReferencia.Visible;
  dbedtReferencia.Visible           := lbReferencia.Visible;
  dbedt_RECARGOS.Visible            := lbReferencia.Visible;
  lblRecargos.Visible               := lbReferencia.Visible;
  frmFactura.Width                  := 760;
  DBEdit6.ReadOnly                  := True;
  //DBEdit7.ReadOnly                  := True;
  DBEdit19.ReadOnly                  := True;
  DBEdit19.Enabled                  := False;
  dbedt_RECARGOS.ReadOnly           := True;
  dbedt_RECARGOS.Enabled            := False;
  DBEdit8.Enabled                   := False;
  DBEdit8.ReadOnly                  := True;
  Exit;
end
else
if ((dm.QParametrospar_formato_preimpreso.Text = 'Sarita & Asociados') AND
          (DM.QParametrospar_fac_preimpresa.Value = 'True') ) then begin
QDetalleSubPedido.Visible         := True;
QDetalleOrden.Visible             := QDetalleSubPedido.Visible;
QDetalleDET_MEDIDA.Visible        := False;
QDetalledet_cantempaque.Visible   := QDetalleDET_MEDIDA.Visible;
QDetallepro_unidad_medida.Visible := QDetalleDET_MEDIDA.Visible;
QDetalledet_cant_oferta.Visible   := QDetalleDET_MEDIDA.Visible;
QDetalleDET_ESCALA.Visible        := QDetalleDET_MEDIDA.Visible;
dbedt_RECARGOS.Visible            := QDetalleSubPedido.Visible;
lblRecargos.Visible               := QDetalleSubPedido.Visible;
Grid.Columns.Items[7].Visible     := QDetalleSubPedido.Visible;
Grid.Columns.Items[8].Visible     := QDetalleSubPedido.Visible;
Grid.Columns.Items[9].Visible     := QDetalleSubPedido.Visible;
//Grid.Columns.Items[10].Visible     := QDetalleSubPedido.Visible;
//Grid.Columns.Items[11].Visible     := QDetalleSubPedido.Visible;
Grid.Columns.Items[0].Width       := 50;
Grid.Columns.Items[1].Width       := 160;
Grid.Columns.Items[2].Width       := 30;
frmFactura.Width                  := 938;
lblRecargos.Visible := True;
lblRecargos.Top := 8;
dbedt_RECARGOS.Visible := True;
//dbedt_RECARGOS.Top := 66;

lbReferencia.Visible              := QDetalleSubPedido.Visible;
lbPedido.Visible                  := QDetalleSubPedido.Visible;
dbedtPedidoNo.Visible             := QDetalleSubPedido.Visible;
dbedtReferencia.Visible           := QDetalleSubPedido.Visible;
dbedt_RECARGOS.Visible            := QDetalleSubPedido.Visible;
lblRecargos.Visible               := QDetalleSubPedido.Visible;
frmFactura.Width                  := 935;
DBEdit6.ReadOnly                  := False;
//DBEdit7.ReadOnly                  := False;
DBEdit19.ReadOnly                  := False;
DBEdit19.Enabled                  := True;
dbedt_RECARGOS.ReadOnly           := False;
Grid.Columns.Items[3].Visible     := True;
Grid.Columns.Items[4].Visible     := False;
dbedt_RECARGOS.Enabled            := True;
DBEdit8.Enabled                   := True;
DBEdit8.ReadOnly                  := False;
Label23.Visible                   := False;

Exit;
end
else
 //if ((dm.QParametrospar_formato_preimpreso.Text = 'SteelTec')
 if ((dm.QParametrosservicio_construccion.AsBoolean = True)
 AND
          (DM.QParametrospar_fac_preimpresa.Value = 'True')) then begin
  DBEdit7.Visible            := False;
  Label16.Visible            := False;
  dbedt_RECARGOS.Visible     := False;
  lblRecargos.Visible        := False;
  DBEdit7.Top                := 115;
  Label16.Top                := 112;
  Label23.Visible            := True;
  dbedtFAC_SERVICIOS.Visible := True;
  dbedtFAC_SERVICIOS.Top     := 24;
  Label23.Top                := 27;
  Label23.Visible            := True;
Exit;
end
else
if (DM.QParametrospar_fac_preimpresa.Value = 'True') then begin
if (dm.QParametrospar_formato_preimpreso.Text = 'Hotel') or
   (dm.QParametrospar_formato_preimpreso.Text = 'Cepinta') then begin
  chkTipoFacHotel.Visible := True;
  LbPropinaLegal.Visible := True;
  LbPropinaLegal.Top := 31;
  dbedtFAC_PROPINA.Visible := True;
  dbedtFAC_PROPINA.Top := 28;
  Panel2.Height := 133;
  LBReserva.Visible := True;
  LBReserva.Visible := True;
  LBReserva.Caption := 'Reserva:';
  lbHasta.Visible := False;
  lbHasta.Caption := 'Hasta:';
  DEdt_Desde.Visible := False;
  DEdt_Hasta.Visible := False;
  dbedtNumReserva.Visible := True;
  btnReserva.Visible := True;
  edtNoReserva.Visible := True;
end;
end;

if FileExists('.\Transporte.Txt') then begin
  chkTipoFacHotel.Visible := False;
  LbPropinaLegal.Visible := False;
  LbPropinaLegal.Top := 69;
  dbedtFAC_PROPINA.Visible := False;
  dbedtFAC_PROPINA.Top := 66;
  Panel2.Height := 133;
  LBReserva.Visible := True;
  LBReserva.Caption := 'Desde:';
  lbHasta.Visible := True;
  lbHasta.Caption := 'Hasta:';
  DEdt_Desde.Visible := True;
  DEdt_Hasta.Visible := True;
  dbedtNumReserva.Visible := False;
  btnReserva.Visible := False;
  edtNoReserva.Visible := False;
end;



dm.Query1.Close;
dm.Query1.SQL.Clear;
dm.Query1.SQL.Add('select cast(cast(DATEADD(day,(day(getdate())-1)*-1,getdate()) as char(11)) as datetime) Desde');
dm.Query1.SQL.Add(',cast(cast(getdate() as char(11)) as datetime) Hasta');
dm.Query1.Open;
DEdt_Desde.Date := DM.Query1.fieldbyname('Desde').AsDateTime;
DEdt_Hasta.Date := DM.Query1.fieldbyname('Hasta').AsDateTime;
dm.Query1.Close;
end;


procedure TfrmFactura.QFacturaAfterPost(DataSet: TDataSet);
var
  a :  Integer;
begin

if QFacturaNUMERO_RESERVA.Value > 0 THEN begin
  with qReservas do begin
  Close;
  Parameters.ParamByName('res').Value := QFacturaNUMERO_RESERVA.Value;
  ExecSQL;
  ShowMessage('CHECK-OUT REALIZADO CORRECTAMENTE');
end;
end;
vl_fecha := FormatDateTime('ddddmmyy#',QFacturaFAC_FECHA.Value);


              //Detalle de la factura
 {             QDetalle.DisableControls;
              QDetalle.first;
              a := 0;
              while not QDetalle.eof do
              begin
                a := a + 1;
                if QDetalleDET_SECUENCIA.IsNull then begin
                QDetalle.edit;
                QDetalleDET_SECUENCIA.value := a;
                QDetalle.post;
                end;
                QDetalle.edit;
                QDetalleEMP_CODIGO.value := dm.vp_cia;
                QDetalleFAC_NUMERO.value := QFacturaFAC_NUMERO.value;
                QDetalleFAC_FORMA.value  := QFacturaFAC_FORMA.value;
                QDetalleTFA_CODIGO.value := QFacturaTFA_CODIGO.Value;
                QDetalleSUC_CODIGO.Value := QFacturaSUC_CODIGO.Value;
                QDetallealm_codigo.Value := QFacturaALM_CODIGO.Value;
                QDetalle.post;
                if ((ConItbis = 'False') and (QDetalleDET_CONITBIS.Text = 'S')) then begin
                QDetalle.Edit;
                QDetalleDET_CONITBIS.Text := 'N';
                QDetalleDET_ITBIS.Value   := 0;
                QDetalle.Post;
                end;
                QDetalle.next;
              end;
              QDetalle.enableControls;
              QDetalle.UpdateBatch;
  }

end;

procedure TfrmFactura.EnvioMail(Reporte: TQuickRep; Tipo: String);
begin
if (vEnvioEstadoCta = True) then
vl_asunto := 'Envio de Factura No. '+vl_factnum+'y su Estado de Cuenta al dia '+FormatDateTime('dd/mm/yyyy',Date) else
vl_asunto := 'Envio de Factura No. '+vl_factnum;

//Cuerpo del mensaje
  mmo1.Clear;
  mmo1.Lines.Add('Buenas,');
  mmo1.Lines.Add('');
  mmo1.Lines.Add('Sres. '+vl_clienteN+',');
  if vEnvioEstadoCta = True then
  mmo1.Lines.Add('Adjunto encontraras la factura No. '+vl_factnum+', y el estado de cuenta al dia '+FormatDateTime('dd/mm/yyyy',Date)) else
  mmo1.Lines.Add('Adjunto encontraras la factura No. '+vl_factnum);
  mmo1.Lines.Add('');
  mmo1.Lines.Add('Saludos, ');
  mmo1.Lines.Add(DBLookupComboBox2.Text);
  frmMain.EnviarCorreo2(vl_dest,
                       vl_asunto,
                       vl_adjunto1,
                       vl_adjunto2,
                       mmo1.Lines.GetText);
  Reporte.Destroy;

end;

procedure TfrmFactura.GeneraFactEnvioMail;
begin
pnCorreo.Visible := True;
vl_suc      := QFacturaSUC_CODIGO.Value;
vl_clienteN := QFacturaFAC_NOMBRE.Text;
vl_cliente  := QFacturaCLI_CODIGO.Value;
vl_factnum  := QFacturaFAC_NUMERO.Text;
if vEnvioEstadoCta = True then GenerarEstadoCxC;
vl_adjunto1 := '.\Factura_No_'+vl_factnum+'.PDF';

if (dm.QParametrospar_fac_preimpresa.Value = 'True') then begin
if (dm.QParametrospar_formato_preimpreso.Value <> 'QRAgregados') then
begin
application.CreateForm(tRFacturaPreImpresa, RFacturaPreImpresa);
RFacturaPreImpresa.QFactura.Parameters.ParamByName('emp').Value    := DM.vp_cia;
RFacturaPreImpresa.QFactura.Parameters.ParamByName('tipo').Value   := QFacturaTFA_CODIGO.value;
RFacturaPreImpresa.QFactura.Parameters.ParamByName('forma').Value  := QFacturaFAC_FORMA.value;
RFacturaPreImpresa.QFactura.Parameters.ParamByName('numero').Value := QFacturaFAC_NUMERO.value;
RFacturaPreImpresa.QFactura.Parameters.ParamByName('suc').Value    := QFacturaSUC_CODIGO.Value;
RFacturaPreImpresa.QFactura.open;
RFacturaPreImpresa.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
RFacturaPreImpresa.QDetalle.open;
if dm.QParametrospar_formato_preimpreso.Value = 'QRBelkis' then
begin
RFacturaPreImpresa.QRBelkis.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
EnvioMail(RFacturaPreImpresa.QRBelkis,'Fac');
end;


//Norma 201806 Normal
if dm.QParametrospar_formato_preimpreso.Value = 'Norma 201806 Normal' then
begin
with RFacturaPreImpresa.QNorma201806 do begin
Close;
Parameters.ParamByName('emp').Value    := dm.vp_cia;
Parameters.ParamByName('tipo').Value   := QFacturaTFA_CODIGO.Value;
Parameters.ParamByName('numero').Value := QFacturaFAC_NUMERO.Value;
Parameters.ParamByName('suc').Value    := QFacturaSUC_CODIGO.Value;
Open;
RFacturaPreImpresa.frxPDFExport1.FileName := vl_adjunto1;
RFacturaPreImpresa.Rpt_ReImpresionFact.Export(RFacturaPreImpresa.frxPDFExport1);
EnvioMail2;
end;
end;

if dm.QParametrospar_formato_preimpreso.Value = 'QRSoloAutos' then
begin
RFacturaPreImpresa.QRBelkis.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
EnvioMail(RFacturaPreImpresa.QRBelkis,'Fac');
end;

if dm.QParametrospar_formato_preimpreso.Value = 'QRBB' then
begin
RFacturaPreImpresa.QRBB.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
EnvioMail(RFacturaPreImpresa.QRBB,'Fac');
end;

if dm.QParametrospar_formato_preimpreso.Value = 'QRMSConsulting' then
begin
RFacturaPreImpresa.QRMSConsulting.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
EnvioMail(RFacturaPreImpresa.QRMSConsulting,'Fac');
end;

if dm.QParametrospar_formato_preimpreso.Value = 'QRThorton' then
begin
RFacturaPreImpresa.frxPDFExport1.FileName := vl_adjunto1;
RFacturaPreImpresa.Rpt_Thorton.Export(RFacturaPreImpresa.frxPDFExport1);
EnvioMail2;
end;

if dm.QParametrospar_formato_preimpreso.Value = 'QRMadeco' then
begin
RFacturaPreImpresa.QRMadeco.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
EnvioMail(RFacturaPreImpresa.QRMadeco,'Fac');
end;

if dm.QParametrospar_formato_preimpreso.Value = 'QRMateirosa' then
begin
RFacturaPreImpresa.QRMateirosa.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
EnvioMail(RFacturaPreImpresa.QRMateirosa,'Fac');
end;

if dm.QParametrospar_formato_preimpreso.Value = 'QRImpresosDuran' then
begin
RFacturaPreImpresa.QRImpresosDuran.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
EnvioMail(RFacturaPreImpresa.QRImpresosDuran,'Fac');
end;

if dm.QParametrospar_formato_preimpreso.Value = 'QClinico' then
begin
application.createform(tRFactura, RFactura);
RFactura.QFactura.Parameters.ParamByName('emp').Value    := DM.vp_cia;
RFactura.QFactura.Parameters.ParamByName('tipo').Value   := QFacturaTFA_CODIGO.value;
RFactura.QFactura.Parameters.ParamByName('forma').Value  := QFacturaFAC_FORMA.value;
RFactura.QFactura.Parameters.ParamByName('numero').Value := QFacturaFAC_NUMERO.value;
RFactura.QFactura.Parameters.ParamByName('suc').Value    := QFacturaSUC_CODIGO.Value;
RFactura.QFactura.open;
RFactura.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
RFactura.QDetalle.open;
RFactura.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
EnvioMail(RFactura,'Fac');


if QClinico.RecordCount > 0 then
begin
if MessageDlg('Desea imprimir el detalle de facturas y records?',mtConfirmation, [mbyes,mbno], 0) = mryes then
begin
application.createform(tRFacturaClinico, RFacturaClinico);
RFacturaClinico.QFactura.Parameters.ParamByName('emp').Value    := DM.vp_cia;
RFacturaClinico.QFactura.Parameters.ParamByName('tipo').Value   := QFacturaTFA_CODIGO.value;
RFacturaClinico.QFactura.Parameters.ParamByName('forma').Value  := QFacturaFAC_FORMA.value;
RFacturaClinico.QFactura.Parameters.ParamByName('numero').Value := QFacturaFAC_NUMERO.value;
RFacturaClinico.QFactura.Parameters.ParamByName('suc').Value    := QFacturaSUC_CODIGO.Value;
RFacturaClinico.QFactura.open;
RFacturaClinico.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
EnvioMail(RFacturaClinico,'Fac');
end;
end;
end;

if (dm.QParametrospar_formato_preimpreso.Text = 'Sarita & Asociados') then begin
application.createform(tRFacturaSarita, RFacturaSarita);
RFacturaSarita.QFactura.Parameters.ParamByName('emp').Value    := DM.vp_cia;
RFacturaSarita.QFactura.Parameters.ParamByName('tipo').Value   := QFacturaTFA_CODIGO.value;
RFacturaSarita.QFactura.Parameters.ParamByName('forma').Value   := QFacturaFAC_FORMA.value;
RFacturaSarita.QFactura.Parameters.ParamByName('numero').Value := QFacturaFAC_NUMERO.value;
RFacturaSarita.QFactura.Parameters.ParamByName('suc').Value := QFacturaSUC_CODIGO.Value;
RFacturaSarita.QFactura.open;
RFacturaSarita.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
RFacturaSarita.QDetalle.open;
RFacturaSarita.lbReimpresion.Enabled := False;
RFacturaSarita.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
EnvioMail(RFacturaSarita,'Fac');
end;

if (dm.QParametrospar_formato_preimpreso.Text = 'Cepinta') then begin
qFacturaOrdTaller.Parameters.ParamByName('emp').Value    := DM.vp_cia;
qFacturaOrdTaller.Parameters.ParamByName('num').Value := QFacturaFAC_NUMERO.value;
qFacturaOrdTaller.Parameters.ParamByName('suc').Value := QFacturaSUC_CODIGO.Value;
qFacturaOrdTaller.Parameters.ParamByName('tip').Value := QFacturaTFA_CODIGO.Value;
qFacturaOrdTaller.open;
if qFacturaOrdTaller.RecordCount > 0 then
Rpt_FacOrdTaller.ShowReport();
RFacturaPreImpresa.QRBelkis.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
EnvioMail(RFacturaPreImpresa.QRBelkis,'Fac');
end;

if (dm.QParametrospar_formato_preimpreso.Text = 'SteelTec') then begin
application.createform(tRFacturaSteelTec, RFacturaSteelTec);
RFacturaSteelTec.QFactura.Parameters.ParamByName('emp').Value    := DM.vp_cia;
RFacturaSteelTec.QFactura.Parameters.ParamByName('tipo').Value   := QFacturaTFA_CODIGO.value;
RFacturaSteelTec.QFactura.Parameters.ParamByName('forma').Value   := QFacturaFAC_FORMA.value;
RFacturaSteelTec.QFactura.Parameters.ParamByName('numero').Value := QFacturaFAC_NUMERO.value;
RFacturaSteelTec.QFactura.Parameters.ParamByName('suc').Value := QFacturaSUC_CODIGO.Value;
RFacturaSteelTec.QFactura.open;
RFacturaSteelTec.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
RFacturaSteelTec.QDetalle.open;
RFacturaSteelTec.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
EnvioMail(RFacturaSteelTec,'Fac');
end;

if (dm.QParametrospar_formato_preimpreso.Value = 'Grabado_Exento') then begin
application.createform(tRFacturaGrabadoExento, RFacturaGrabadoExento);
RFacturaGrabadoExento.QFactura.Parameters.ParamByName('emp').Value    := DM.vp_cia;
RFacturaGrabadoExento.QFactura.Parameters.ParamByName('tipo').Value   := QFacturaTFA_CODIGO.value;
RFacturaGrabadoExento.QFactura.Parameters.ParamByName('forma').Value  := QFacturaFAC_FORMA.value;
RFacturaGrabadoExento.QFactura.Parameters.ParamByName('numero').Value := QFacturaFAC_NUMERO.value;
RFacturaGrabadoExento.QFactura.Parameters.ParamByName('suc').Value    := QFacturaSUC_CODIGO.Value;
RFacturaGrabadoExento.QFactura.open;
RFacturaGrabadoExento.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
RFacturaGrabadoExento.QDetalle.open;
RFacturaGrabadoExento.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
EnvioMail(RFacturaGrabadoExento,'Fac');
end;
end;
end
else
begin
if FormatoImp = 2 then
begin
application.createform(tRFactura, RFactura);
RFactura.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
RFactura.QFactura.Parameters.ParamByName('tipo').Value   := QFacturaTFA_CODIGO.value;
RFactura.QFactura.Parameters.ParamByName('forma').Value  := QFacturaFAC_FORMA.value;
RFactura.QFactura.Parameters.ParamByName('numero').Value := QFacturaFAC_NUMERO.value;
RFactura.QFactura.Parameters.ParamByName('suc').Value    := QFacturaSUC_CODIGO.Value;
RFactura.QFactura.open;
RFactura.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
RFactura.QDetalle.open;
RFactura.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
frmFactura.EnvioMail(RFactura,'Fac');
end;

if FormatoImp = 4 then
begin
application.createform(tRFacturaElegante, RFacturaElegante);
RFacturaElegante.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
RFacturaElegante.QFactura.Parameters.ParamByName('tipo').Value   := QFacturaTFA_CODIGO.value;
RFacturaElegante.QFactura.Parameters.ParamByName('forma').Value   := QFacturaFAC_FORMA.value;
RFacturaElegante.QFactura.Parameters.ParamByName('numero').Value := QFacturaFAC_NUMERO.value;
RFacturaElegante.QFactura.Parameters.ParamByName('suc').Value := QFacturaSUC_CODIGO.Value;
RFacturaElegante.QFactura.open;
RFacturaElegante.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
RFacturaElegante.QDetalle.open;
RFacturaElegante.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
EnvioMail(RFacturaElegante,'Fac');
end;

if FormatoImp = 5 then
begin
application.createform(tRFactura2Columnas, RFactura2Columnas);
RFactura2Columnas.QFactura.Parameters.ParamByName('emp').Value    := DM.vp_cia;
RFactura2Columnas.QFactura.Parameters.ParamByName('tipo').Value   := QFacturaTFA_CODIGO.value;
RFactura2Columnas.QFactura.Parameters.ParamByName('forma').Value   := QFacturaFAC_FORMA.value;
RFactura2Columnas.QFactura.Parameters.ParamByName('numero').Value := QFacturaFAC_NUMERO.value;
RFactura2Columnas.QFactura.Parameters.ParamByName('suc').Value := QFacturaSUC_CODIGO.Value;
RFactura2Columnas.QFactura.open;
RFactura2Columnas.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
RFactura2Columnas.QDetalle.open;
RFactura2Columnas.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
EnvioMail(RFactura2Columnas,'Fac');
end;
end;
pnCorreo.Visible := False;
end;

procedure TfrmFactura.GenerarEstadoCxC;
begin
try
  Application.CreateForm(tREstadoCtaCli, REstadoCtaCli);
  REstadoCtaCli.suc := QSucursalsuc_codigo.Value;
  REstadoCtaCli.lbVendedor.Caption := ' ';
  REstadoCtaCli.QClientes.Close;
  REstadoCtaCli.QClientes.SQL.Clear;
  REstadoCtaCli.QClientes.SQL.Add('DECLARE @fecha datetime, @EMPRESA int; set @fecha = :fecha; set @EMPRESA = '+IntToStr(DM.vp_cia));
  REstadoCtaCli.QClientes.SQL.Add('select');
  REstadoCtaCli.QClientes.SQL.Add('cli_codigo, cli_referencia, cli_nombre,');
  REstadoCtaCli.QClientes.SQL.Add('cli_telefono, cli_balance, emp_codigo, cli_cedula, cli_rnc, @fecha fecha, cli_email');
  REstadoCtaCli.QClientes.SQL.Add('from clientes');
  REstadoCtaCli.QClientes.SQL.Add('where emp_codigo = :emp_codigo');
  REstadoCtaCli.QClientes.SQL.Add('and cli_codigo = '+IntToStr(vl_cliente));
  REstadoCtaCli.QClientes.SQL.Add('order by cli_codigo');
  REstadoCtaCli.QClientes.Parameters.ParamByName('emp_codigo').Value  := dm.vp_cia;
  REstadoCtaCli.QClientes.Parameters.ParamByName('fecha').DataType    := ftDate;
  REstadoCtaCli.QClientes.Parameters.ParamByName('fecha').Value       := Date;
  REstadoCtaCli.QClientes.Open;

  IF DBLookupComboBox2.KeyValue > 0 then
    REstadoCtaCli.suc := REstadoCtaCli.suc ELSE
    REstadoCtaCli.suc := REstadoCtaCli.suc;

  REstadoCtaCli.QDocs.Close;
  REstadoCtaCli.QDocs.SQL.Clear;
  REstadoCtaCli.QDocs.SQL.Add('DECLARE @fecha datetime;');
  REstadoCtaCli.QDocs.SQL.Add('set @fecha = :fecha; ');
  REstadoCtaCli.QDocs.SQL.Add('SELECT * FROM(');
  REstadoCtaCli.QDocs.SQL.Add('select M.FAC_FORMA, (M.MOV_ABONO) as mov_abono,');
  REstadoCtaCli.QDocs.SQL.Add('M.MOV_FECHA, (M.MOV_MONTO) as mov_monto, M.MOV_NUMERO, M.MOV_STATUS,');
  REstadoCtaCli.QDocs.SQL.Add('M.MOV_TIPO, M.TFA_CODIGO, M.EMP_CODIGO, M.MOV_SECUENCIA,');
  REstadoCtaCli.QDocs.SQL.Add('M.MOV_CUOTA, M.MOV_TASA, (m.mov_interes) mov_interes, m.mov_fechavence, M.SUC_CODIGO, @fecha FECHA,');
  REstadoCtaCli.QDocs.SQL.Add('datediff(day,MOV_FECHA, @FECHA) DIASVENC, M.CLI_CODIGO,');
  REstadoCtaCli.QDocs.SQL.Add('(ISNULL((SELECT SUM(MOV_MONTO) FROM PR_CONS_PAGOS_NC_FACTURA(M.EMP_CODIGO,M.suc_codigo,M.tfa_codigo, M.fac_forma, M.MOV_NUMERO, GETDATE())');
  REstadoCtaCli.QDocs.SQL.Add('where MOV_FECHA <= @fecha),0)) ABONO,');
  REstadoCtaCli.QDocs.SQL.Add('M.MON_CODIGO');
  REstadoCtaCli.QDocs.SQL.Add('FROM  Movimientos M WHERE M.TFA_CODIGO <> 1 AND CLI_CODIGO = :CLI_CODIGO AND EMP_CODIGO = :EMP_CODIGO AND MOV_STATUS <> ''ANU'')  AS TEMP');
  REstadoCtaCli.QDocs.SQL.Add('WHERE MOV_FECHA <= @FECHA');
  REstadoCtaCli.QDocs.SQL.Add('AND MOV_STATUS ='+QuotedStr('PEN') );
  IF DBLookupComboBox2.KeyValue > 0 THEN
  REstadoCtaCli.QDocs.SQL.Add('and SUC_CODIGO = :SUC');
  REstadoCtaCli.QDocs.SQL.Add('order by mov_fecha');
  REstadoCtaCli.QDocs.Parameters.ParamByName('fecha').DataType := ftDate;
  REstadoCtaCli.QDocs.Parameters.ParamByName('fecha').Value := Date;
  REstadoCtaCli.QDocs.Parameters.ParamByName('emp_codigo').DataType := ftInteger;
  REstadoCtaCli.QDocs.Parameters.ParamByName('cli_codigo').DataType := ftInteger;
  IF DBLookupComboBox2.KeyValue > 0 THEN
  REstadoCtaCli.QDocs.Parameters.ParamByName('SUC').Value         := REstadoCtaCli.suc;
  REstadoCtaCli.QDocs.Open;
  REstadoCtaCli.lbTipo.Caption := tTipo.Text;
  REstadoCtaCli.lbFecha.Caption := 'Al '+DateToStr(Date);

  if not VarIsNull(REstadoCtaCli.QDocs['mov_tasa']) then
    REstadoCtaCli.tasa:= REstadoCtaCli.QDocs['mov_tasa']
  else REstadoCtaCli.tasa:=1;
  REstadoCtaCli.QRecibos.Close;
  REstadoCtaCli.QRecibos.Parameters.ParamByName('FECHA').DataType := ftDate;
  REstadoCtaCli.QRecibos.Open;
  REstadoCtaCli.QNC.Close;
  REstadoCtaCli.QNC.Parameters.ParamByName('fecha').DataType := ftDate;
  REstadoCtaCli.QNC.Parameters.ParamByName('fecha').Value    := Date;
  REstadoCtaCli.QNC.Open;
  REstadoCtaCli.QCredito.Close;
  REstadoCtaCli.QCredito.Parameters.ParamByName('fecha').DataType := ftDate;
  REstadoCtaCli.QCredito.Parameters.ParamByName('fecha').Value    := Date;
  REstadoCtaCli.QCredito.Open;
  REstadoCtaCli.QDepositos.Close;
  REstadoCtaCli.QDepositos.Parameters.ParamByName('fecha').DataType := ftDate;
  REstadoCtaCli.QDepositos.Open;
  REstadoCtaCli.QAntig.Close;
  REstadoCtaCli.QAntig.Parameters[1].Value := Date;
  if DBLookupComboBox2.KeyValue > 0 then
  REstadoCtaCli.QAntig.Parameters[3].Value := DBLookupComboBox2.KeyValue else
  REstadoCtaCli.QAntig.Parameters[3].Value := REstadoCtaCli.suc;
  REstadoCtaCli.QAntig.Parameters.ParamByName('fecha').DataType := ftDate;
  REstadoCtaCli.QAntig.Parameters.ParamByName('fecha').Value    := Date;
  REstadoCtaCli.QAntig.Open;
  REstadoCtaCli.qMora.Close;
  REstadoCtaCli.qMora.Parameters.ParamByName('fecha').DataType := ftDate;
  REstadoCtaCli.qMora.Parameters.ParamByName('fecha').Value    := Date;
  REstadoCtaCli.qMora.Open;
  vl_adjunto2 := '.\Estado de Cuenta.PDF';
  REstadoCtaCli.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto2));
  REstadoCtaCli.Destroy;

except
    REstadoCtaCli.Destroy;
end;

end;

procedure TfrmFactura.EnvioMail2;
begin
if (vEnvioEstadoCta = True) then
vl_asunto := 'Envio de Factura No. '+vl_factnum+'y su Estado de Cuenta al dia '+FormatDateTime('dd/mm/yyyy',Date) else
vl_asunto := 'Envio de Factura No. '+vl_factnum;

//Cuerpo del mensaje
  mmo1.Clear;
  mmo1.Lines.Add('Buenas,');
  mmo1.Lines.Add('');
  mmo1.Lines.Add('Sres. '+vl_clienteN+',');
  if vEnvioEstadoCta = True then
  mmo1.Lines.Add('Adjunto encontraras Factura No. '+vl_factnum+', y el estado de cuenta al dia '+FormatDateTime('dd/mm/yyyy',Date)) else
  mmo1.Lines.Add('Adjunto encontraras Factura No. '+vl_factnum);
  mmo1.Lines.Add('');
  mmo1.Lines.Add('Saludos, ');
  mmo1.Lines.Add(DBLookupComboBox2.Text);
  frmMain.EnviarCorreo2(vl_dest,
                       vl_asunto,
                       vl_adjunto1,
                       vl_adjunto2,
                       mmo1.Lines.GetText);

end;

procedure TfrmFactura.QDetalleTMPBeforePost(DataSet: TDataSet);
begin
if QDetalleTMPPRO_SERVICIO.Value <> 'True' then
    begin
     with qVerProductos do begin
     Close;
     Parameters.ParamByName('emp').Value  := DM.vp_cia;
     Parameters.ParamByName('alm').Value  := QFacturaALM_CODIGO.Value;
     Parameters.ParamByName('pro').Value  := QDetalleTMPPRO_CODIGO.Value;

     if dm.QParametrospar_inv_unidad_medida.Value = 'True' then
         Parameters.ParamByName('can').Value  := QDetalleTMPDET_CANTIDAD.Value * QDetalleTMPdet_cant_unidad_medida.Value
      else
         Parameters.ParamByName('can').Value  := QDetalleTMPDET_CANTIDAD.Value;

      Parameters.ParamByName('med').Value  := QDetalleTMPDET_MEDIDA.Value;
      Parameters.ParamByName('usu').Value  := dm.Usuario;
      Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
      Parameters.ParamByName('tfa').Value  := QFacturaTFA_CODIGO.Value;
      Parameters.ParamByName('for').Value  := QFacturaFAC_FORMA.Value;
      Parameters.ParamByName('num').Value  := QFacturaFAC_NUMERO.Value;
      Open;
      end;          //fer

      if qVerProductos.FieldByName('facturar').AsString = 'False' then
      begin
        Query1.Close;
        Query1.SQL.Clear;
        Query1.SQL.Add('update productos set pro_realizar_pedido = '+QuotedStr('True'));
        Query1.SQL.Add('where emp_codigo = :emp');
        Query1.SQL.Add('and pro_codigo = :pro');
        Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
        Query1.Parameters.ParamByName('pro').Value := QDetalleTMPPRO_CODIGO.Value;
        Query1.ExecSQL;
        MessageDlg('NO HAY SUFICIENTE DE ESTE PRODUCTO PARA'+#13+
                   'FACTURAR ESTA CANTIDAD',mtError,[mbok],0);
        BorraSerial(QDetallePRO_CODIGO.AsString);
        Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
        QDetalle.Delete;
        Totalizar;
        QDetalleTMPDET_CANTIDAD.Value := 0;
        Grid.SelectedIndex := 2;
        realizado := false;
        abort;
      end
      else
      IF QDetalleTMPPRO_SERVICIO.Value = 'False' THEN BEGIN
      if ((QDetalleTMPDET_CANTIDAD.Value <=0)) then
      begin
        MessageDlg('NO SE PUEDE FACTURAR NEGATIVO O EN CERO',mtError,[mbok],0);
        BorraSerial(QDetallePRO_CODIGO.AsString);
        Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
        QDetalle.Delete;
        Totalizar;
        QDetalleTMPDET_CANTIDAD.Value := 0;
        Grid.SelectedIndex := 2;
        realizado := false;
        abort;
      end;
end;
end;
end;


{
procedure TfrmFactura.ImpTicketFiscal(aCopia:byte = 0);
var
  arch, puertopeq : textfile;
  s, s1, s2, s3, s4, s5 : array [0..20] of char;
  Tfac, Saldo : double;
  puerto, lbitbis, impcodigo, pro_codigo, Unidad : string;
  a : integer;
   copias: integer;
  DriverFiscal1 : TDriverFiscal;
  s_SubTotal:String;
  v_subtotal,v_diferencia:Double;
  v_TotalPagado :double;
  v_DescItems:Double;
  s_TotalFacturado,s_Devuelta:String;
  s_NIF : String;
  v_TAMANO_MAX_DESCRIP: Word;
  tmpDescripcion:String;
  vLogo:Word;
  v_descripItem,v_descripItem1,v_descripItem2,v_descripItem3 :String;


    xCopias : byte;
  stringTMP,stringTMP2,stringTipoITBIS:String;
  x:byte;
  NIF:String;
   s_TotalItbis_From_Printer:String;
   v_TotalItbis_From_Printer:double;
  ///---reimpresion

procedure re_ImprimirTicketEpson();
var
  arch, ptocaja : textfile;
  s, s1, s2, s3, s4 : array[0..100] of char;
  TFac, MontoItbis, Venta, tCambio,subTotal,tItbis : double;
  PuntosPrinc, FactorPrin, TotalPuntos, CalcDesc, NumItbis, TotalDescuento : Double;
  Puntos, pg, cantpg : integer;
  Msg1, Msg2, Msg3, Msg4, Puerto, Forma, ImpItbis, lbItbis, codigoabre, pregunta : String;
  Devuelta:String;
  StatusFiscal:String;
  vTotalgral,v_ItbisDescGral:Double;

begin
  vTotalgral:=0;
  SetLength(arrayMultiUso, 17);

    //Obtiene los datos de fiscalizaci?n
    err := DriverFiscal1.IF_WRITE('@GetInitData');
    arrayMultiUso[0] := DriverFiscal1.IF_READ(1);
    arrayMultiUso[1] := DriverFiscal1.IF_READ(2);
    arrayMultiUso[2] := DriverFiscal1.IF_READ(3);
    arrayMultiUso[3] := DriverFiscal1.IF_READ(4);
    //Obtiene las caracter?sticas fiscales
    err := DriverFiscal1.IF_WRITE('@GetFiscalFeatures');
    arrayMultiUso[4] := DriverFiscal1.IF_READ(1); //--Tauru
    arrayMultiUso[5] := DriverFiscal1.IF_READ(2); //
    arrayMultiUso[6] := DriverFiscal1.IF_READ(3); //3
    arrayMultiUso[7] := DriverFiscal1.IF_READ(4); //0
    arrayMultiUso[8] := DriverFiscal1.IF_READ(5); //0
    arrayMultiUso[9] := DriverFiscal1.IF_READ(6);
    arrayMultiUso[10] := DriverFiscal1.IF_READ(7);
    arrayMultiUso[11] := DriverFiscal1.IF_READ(8);
    arrayMultiUso[12] := DriverFiscal1.IF_READ(9);
    //Obtiene los datos de serializaci?n
    err := DriverFiscal1.IF_WRITE('@GetPrinterVersion');
    arrayMultiUso[13] := DriverFiscal1.IF_READ(1);  //Serie
    arrayMultiUso[14] := DriverFiscal1.IF_READ(2);  //id

   //Retorna los valores de respuesta del ?ltimo comprobante cerrado
    err := DriverFiscal1.IF_WRITE('@GetLastTicketStatus');
    arrayMultiUso[15] := DriverFiscal1.IF_READ(1);  //NIF
    //arrayMultiUso[17]
     Devuelta :=  DriverFiscal1.IF_READ(3);  //DEVUELTA
    NIF :=arrayMultiUso[15];

    err := DriverFiscal1.IF_WRITE('@OpenNonFiscalReceipt');
    if (err <> 0) then
      begin
        err := DriverFiscal1.IF_ERROR1(0);  //verifica Mecanismo
        err := DriverFiscal1.IF_ERROR2(0);  //Verifica Controlador Fiscal

        StatusFiscal:=IntToBinRec(err,16);    //207
        if StatusFiscal[5] = '1' then
          Application.MessageBox('Se requiere un Cierre Z','Error',MB_OK+MB_ICONERROR);
      end
    else
      begin
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select par_ticket_itbis from parametros');
        dm.Query1.SQL.Add('where emp_codigo = :emp');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
        dm.Query1.Open;
        ImpItbis := dm.Query1.FieldByName('par_ticket_itbis').AsString;

        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'            *** COPIA DE DOCUMENTO FISCAL ***');
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+arrayMultiUso[0]);
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'RNC '+arrayMultiUso[1]);
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+arrayMultiUso[2]);
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'            COMPROBANTE AUTORIZADO POR DGII');
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+FormatDateTime('dd/mm/yyyy hh:mm:ss', RFactura.QFacturaFAC_FECHA.value)+' '+RFactura.QFacturaFAC_HORA.AsString);
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'NIF: '+NIF);
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'NCF: '+RFactura.QFacturaNumeroCF.value);
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'-------------------------------------------------------');

        case RFactura.QFacturatip_codigo.Value of
          1:err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'              FACTURA PARA CONSUMIDOR FINAL');
          2:err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'              FACTURA PARA CREDITO FISCAL');
          3:err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'              FACTURA PARA CREDITO FISCAL');
          4:err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'              FACTURA PARA CREDITO FISCAL');
        end;


        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'-------------------------------------------------------');
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'DESCRIPCION                 ITBIS           VALOR');
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'-------------------------------------------------------');
        tItbis :=0;
        v_subtotal:=0;
        //----IMPRIME iNICIO CUERPO
        RFactura.QDetalle.DisableControls;
        RFactura.QDetalle.First;
        while not RFactura.QDetalle.eof do
        begin //--[0]--
          v_DescItems:=0;
          v_descripItem1 :='';  v_descripItem2 :=''; v_descripItem3 := '';
          tmpDescripcion:='';  v_descripItem :='';

          MontoItbis := RFactura.QDetalleDET_ITBIS.value ;


          if MontoItbis >= 18 then
            stringTipoITBIS :='  I2'
          else
            if MontoItbis >= 16 then
              stringTipoITBIS :='  I1'
            else
              if MontoItbis >= 13 then
                stringTipoITBIS :='  I5'
              else
                if MontoItbis >= 11 then
                  stringTipoITBIS :='  I4'
                else
                  if MontoItbis >= 8 then
                    stringTipoITBIS :='  I3'
                  else
                    stringTipoITBIS :='  E';



          //--[000]--
          //--------------------------------------------------------------------------
          {--El objetivo de este bloque de codidog es resolver el sigte. problema
            la impresora epson solo admite 22 carateres, pero si una descripcion
            es muy grande y pasa de los 22, entonces no se imprime el resto de la
            informacion, entonces lo que hacesmo es dividir la descripcion en
            3 grupos para poder imprimir la descripcion completa de manera parcial
            en la definicion de la ayuda podra notar que las descripciones van desde
            Descripcion hasta Descripci?n extra #9, pero el titulo de descripcion
            se imprime ultimo a las descripciones extra . Aqui capturamo el valor
            de la descripcion del producto en base de datos, y lo asignamos a una
            variable y a esta la dividimos.  Manuel Titin Abril/2018}

       {v_descripItem1 := EmptyStr;
          v_descripItem2 := EmptyStr;
          v_descripItem3 := EmptyStr;
          tmpDescripcion:= TrimLeft(TrimRight(RFactura.QDetallePRO_NOMBRE.value));

          if Length( tmpDescripcion ) <= v_TAMANO_MAX_DESCRIP then
            v_descripItem := tmpDescripcion
          else
            begin //-[*]--
              if Length( tmpDescripcion ) > v_TAMANO_MAX_DESCRIP then
                begin  //-[*1]--
                  v_descripItem1 := copy(tmpDescripcion,1,v_TAMANO_MAX_DESCRIP);
                  v_descripItem2 := copy(tmpDescripcion,23,Length( tmpDescripcion ));

                  if Length( v_descripItem2 ) > v_TAMANO_MAX_DESCRIP then
                    begin     //-[*1.1]--
                      v_descripItem3 := copy(v_descripItem2,23,Length(v_descripItem2)) ;
                      v_descripItem2 := copy(v_descripItem2,1,v_TAMANO_MAX_DESCRIP) ;
                      v_descripItem := v_descripItem3;
                      v_descripItem3 :='';
                    end //-[*1.1]--
                  else
                    begin  //-[*1.2]--
                      v_descripItem := v_descripItem2;
                      v_descripItem2 :='';
                    end;  //-[*1.2]--
                end //-[*1]--

            end; //-[*]--
          //--------------------------------------------------------------------------


          if dm.QParametrospar_itbisincluido.Value = 'True' then
          begin //--[1]--

            if ( RFactura.QFacturatip_codigo.Value < 4 ) then
            begin
              stringTMP := FormatFloat(',,,0.00',RFactura.QDetalleDET_CANTIDAD.value) + ' x '+
                           FormatFloat(',,,0.00',RFactura.QDetalleDET_PRECIO.value);
              err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+stringTMP);

              if not (RFactura.QDetallePRO_RORIGINAL.IsNull) then
                err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+RFactura.QDetallePRO_RORIGINAL.VALUE);
              if trim(v_descripItem1) <> EmptyStr then
                err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+v_descripItem1);
              if trim(v_descripItem2) <> EmptyStr then
                err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+v_descripItem2);
              if trim(v_descripItem3) <> EmptyStr then
                err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+v_descripItem3);

              subtotal := (RFactura.QDetalleDET_PRECIO.value - (RFactura.QDetalleDET_PRECIO.value /(1+(MontoItbis/100)))) * RFactura.QDetalleDET_CANTIDAD.value;
              tItbis := tItbis + subtotal;
              v_subtotal := v_subtotal + (RFactura.QDetalleDET_PRECIO.value * RFactura.QDetalleDET_CANTIDAD.value);
              Msg1 :=FormatFloat(',,,0.00',subtotal);
              Msg1:= dm.PAD(' ','L',15,Msg1);

              Msg2 :=FormatFloat(',,,0.00', (RFactura.QDetalleDET_PRECIO.value * RFactura.QDetalleDET_CANTIDAD.value));
              Msg2:= dm.PAD(' ','L',15,Msg2);


             Msg3:=dm.PAD(' ','R',22,v_descripItem);
              stringTMP2 := Msg3+Msg1+Msg2+stringTipoITBIS;
              err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+stringTMP2);


            end
            else if RFactura.QFacturatip_codigo.Value = 4 then
            begin

              stringTMP := FormatFloat(',,,0.00', RFactura.QDetalleDET_CANTIDAD.value) + ' x '+
                           FormatFloat(',,,0.00', RFactura.QDetalleDET_PRECIO.value);

              err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+stringTMP);
              if not (RFactura.QDetallePRO_RORIGINAL.IsNull) then
                err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+RFactura.QDetallePRO_RORIGINAL.VALUE);
              if trim(v_descripItem1) <> EmptyStr then
                err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+v_descripItem1);
              if trim(v_descripItem2) <> EmptyStr then
                err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+v_descripItem2);
              if trim(v_descripItem3) <> EmptyStr then
                err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+v_descripItem3);

              Msg1 :=FormatFloat(',,,0.00', RFactura.QDetalleDET_ITBIS.value);
              Msg1:=dm.PAD(' ','L',15,Msg1);
              tItbis := tItbis + RFactura.QDetalleDET_ITBIS.value ;
              v_subtotal := v_subtotal + (RFactura.QDetalledet_Precio.value + ((RFactura.QDetalledet_Precio.value*MontoItbis)/100) * RFactura.QDetalleDET_CANTIDAD.value);
              Msg2 :=FormatFloat(',,,0.00', (RFactura.QDetalledet_Precio.value + ((RFactura.QDetalledet_Precio.value*MontoItbis)/100) * RFactura.QDetalleDET_CANTIDAD.value));
              Msg2:=dm.PAD(' ','L',15,Msg2);
              ////Msg3:=dm.PAD(' ','R',22,copy(trim(RFactura.QDetallePRO_NOMBRE.value),1,22));

              ////err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+Msg3+Msg1+Msg2+' '+stringTipoITBIS);

              Msg3:=dm.PAD(' ','R',22,v_descripItem);
              stringTMP2 := Msg3+Msg1+Msg2+stringTipoITBIS;
              err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+stringTMP2);
            end;
           if RFactura.QDetalleDET_DESCUENTO.Value > 0 then
            begin
              v_DescItems:= (RFactura.QDetalleDET_CANTIDAD.Value*RFactura.QDetalleDET_PRECIO.Value)*(RFactura.QDetalleDET_DESCUENTO.Value/100);
              stringTMP := FormatFloat(',,,0.00', RFactura.QDetalleDET_CANTIDAD.value) + ' x '+
                           FormatFloat(',,,0.00', v_DescItems);

              //err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+stringTMP);
              err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+stringTMP);
              //v_DescItems := v_DescItems * RFactura.QDetalleDET_CANTIDAD.value;
              tItbis := tItbis - ((v_DescItems/(1+(RFactura.QDetalleDET_ITBIS.Value /100)))*(RFactura.QDetalleDET_ITBIS.Value /100));
              //tItbis := tItbis +(-(v_DescItems - (v_DescItems / (1+(RFactura.QDetalleDET_ITBIS.Value/100)))));
              v_subtotal := v_subtotal - (v_DescItems);

              Msg1 :=FormatFloat(',,,0.00', ((v_DescItems/(1+(RFactura.QDetalleDET_ITBIS.Value/100)) * ((RFactura.QDetalleDET_ITBIS.Value/100))))) + '-';
              //Msg1 :=FormatFloat(',,,0.00', (v_DescItems - (v_DescItems / (1+(RFactura.QDetalleDET_ITBIS.Value/100))))) + '-';
              Msg1:= dm.PAD(' ','L',15,Msg1);

              Msg2 :=FormatFloat(',,,0.00', v_DescItems)+'-';
              Msg2:=dm.PAD(' ','L',15,Msg2);
              Msg3:=dm.PAD(' ','R',22,'DESC. '+FormatFloat(',,,0.00',RFactura.QDetalleDET_DESCUENTO.Value)+'%');

              stringTMP2 := Msg3+ Msg1+Msg2+ stringTipoITBIS;
              err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+stringTMP2);
            end;



            err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+copy(RFactura.QDetallePRO_NOMBRE.value,1,v_TAMANO_MAX_DESCRIP)+'|'+RFactura.QDetalleDET_CANTIDAD.AsString+'|'+
            floattostr(v_DescItems*(1+(RFactura.QDetalleDET_ITBIS.Value/100)))+'|'+FloatToStr(RFactura.QDetalleDET_ITBIS.Value)+'|D');
          end  //--[1]--
          else
          begin //--[2]-- itbis no incluido.
            err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+copy(RFactura.QDetallePRO_NOMBRE.value,1,v_TAMANO_MAX_DESCRIP)+'|'+RFactura.QDetalleDET_CANTIDAD.AsString+'|'+
                   floattostr(RFactura.QDetalleDET_PRECIO.value + ((RFactura.QDetalleDET_PRECIO.value * RFactura.QDetalleDET_ITBIS.Value)/100) )+'|'+FloatToStr(RFactura.QDetalleDET_ITBIS.Value));

            if RFactura.QDetalleDET_DESCUENTO.Value > 0 then
            begin
              err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+copy(RFactura.QDetallePRO_NOMBRE.value,1,v_TAMANO_MAX_DESCRIP)+'|'+RFactura.QDetalleDET_CANTIDAD.AsString+'|'+
              floattostr(RFactura.QDetalleTotalDescuento.Value + ((RFactura.QDetalleTotalDescuento.value * RFactura.QDetalleDET_ITBIS.Value)/100) )+'|'+FloatToStr(RFactura.QDetalleDET_ITBIS.Value)+'|D');
            end;
          end; //--[2]--
          RFactura.QDetalle.next;
        end;  //--[0]--
        RFactura.QDetalle.First;
        RFactura.QDetalle.EnableControls;

        //----IMPRIME fIN CUERPO
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'-------------------------------------------------------');
        ///Msg1:=dm.PAD(' ','L',15,FormatFloat(',,,0.00', RFactura.QFacturaFAC_ITBIS.value));
        Msg1:=dm.PAD(' ','L',15,FormatFloat(',,,0.00',tItbis));
        Msg2 :=dm.PAD(' ','L',15,FormatFloat(',,,0.00',v_subtotal));

        Msg3:= dm.PAD(' ','R',22,'Subtotal')+Msg1+Msg2;
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+Msg3);

        vTotalgral:= RFactura.QFacturaFAC_TOTAL.value;
        if (v_subtotal <> vTotalgral) and
           (RFactura.QFacturaTdesc_gral.AsFloat = 0) then
            vTotalgral:= v_subtotal;

        Msg2 :=dm.PAD(' ','L',15,FormatFloat(',,,0.00', vTotalgral));

        v_ItbisDescGral :=tItbis;
        {if RFactura.QFacturaTdesc_gral.AsFloat > 0 then
          begin
               Msg3 :=FormatFloat(',,,0.00',RFactura.QFacturaTdesc_gral.AsFloat);
               Msg3:=dm.PAD(' ','R',37,'Desc. Global : '+FormatFloat(',,,0.00',RFactura.QFacturaporc_desc_gral.value)+'%') +dm.PAD(' ','L',15,Msg3)+'-';
               err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+Msg3);

               v_ItbisDescGral := tItbis / ((RFactura.QFacturaporc_desc_gral.value / 100) + 1);
          end;}


      {  if RFactura.QFacturaTdesc_gral.Value > 0 then
        begin
        if RFactura.QFacturaFAC_CONITBIS.Value = 'True' then
        err := DriverFiscal1.IF_WRITE('@TicketReturnRecharge|Desc. Global : '+
             floattostr(RFactura.QFacturaporc_desc_gral.value)+'%|'+
             floattostr(RFactura.QFacturaTdesc_gral.Value*1.18)+'|D') else
        err := DriverFiscal1.IF_WRITE('@TicketReturnRecharge|Desc. Global : '+
             floattostr(RFactura.QFacturaporc_desc_gral.value)+'%|'+
             floattostr(RFactura.QFacturaTdesc_gral.Value)+'|D');
        end;



        //Msg1:=dm.PAD(' ','L',15,FormatFloat(',,,0.00', RFactura.QFacturaFAC_ITBIS.value));
        if v_TotalItbis_From_Printer > 0 then
          Msg1:=dm.PAD(' ','L',15,FormatFloat(',,,0.00',v_TotalItbis_From_Printer))
        else Msg1:=dm.PAD(' ','L',15,FormatFloat(',,,0.00',v_ItbisDescGral));

        Msg3:=dm.PAD(' ','R',22,'TOTAL')+Msg1+Msg2;
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+Msg3);


        Query1.close;
        Query1.SQL.clear;
        Query1.SQL.add('select PAR_TKMENSAJE1,PAR_TKMENSAJE2,PAR_TKMENSAJE3,');
        Query1.SQL.add('PAR_TKMENSAJE4,PAR_TKCLAVEDELETE,PAR_TKCLAVEMODIFICA');
        Query1.SQL.add('from parametros where emp_codigo = :emp');
        Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.AsInteger;
        Query1.open;
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+ ' ');

        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select f.fpa_codigo, upper(f.fpa_nombre) nombre, sum(p.for_monto) as monto');
        dm.Query1.SQL.Add('from formaspago f, facformapago p');
        dm.Query1.SQL.Add('where f.emp_codigo = p.emp_codigo');
        dm.Query1.SQL.Add('and f.fpa_codigo = p.fpa_codigo');
        dm.Query1.SQL.Add('and p.emp_codigo = :emp');
        dm.Query1.SQL.Add('and p.tfa_Codigo = :tfa');
        dm.Query1.SQL.Add('and p.fac_forma  = :for');
        dm.Query1.SQL.Add('and p.fac_numero = :num');
        dm.Query1.SQL.Add('and p.suc_codigo = :suc');
        dm.Query1.SQL.Add('group by f.fpa_codigo, f.fpa_nombre');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        dm.Query1.Parameters.ParamByName('tfa').Value := RFactura.QFacturaTFA_CODIGO.Value;
        dm.Query1.Parameters.ParamByName('for').Value  := RFactura.QFacturaFAC_FORMA.Value;
        dm.Query1.Parameters.ParamByName('num').Value := RFactura.QFacturaFAC_NUMERO.Value;
        dm.Query1.Parameters.ParamByName('suc').Value := RFactura.QFacturaSUC_CODIGO.Value;
        dm.Query1.Open;

        v_TotalPagado :=0;
        //--[busca todos los pagos]--
        dm.Query1.DisableControls;
        dm.Query1.First;
        while not dm.Query1.Eof do
        begin
          v_TotalPagado := v_TotalPagado + dm.Query1.FieldByName('monto').Value;
          x:= dm.Query1.FieldByName('fpa_codigo').value -1;
          if x > 14 then x := 7;  // = a Otros 1
            Msg2:= formapago[x];

          Msg1:=dm.PAD(' ','L',15,FormatFloat(',,,0.00',dm.Query1.FieldByName('monto').asfloat)) ;
          Msg2:=dm.PAD(' ','R',37,Msg2);
          err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+Msg2+Msg1);

          dm.Query1.Next;
        end;

        Devuelta:= copy(devuelta, 1,Length(Devuelta)-2)+'.'+copy(devuelta, Length(Devuelta)-1,2) ;

        if ((Devuelta = '') or ( Devuelta = '.0') or (Devuelta = '0')) then
          Devuelta := '0.00';

        Devuelta:=dm.PAD(' ','L',15,Devuelta);
       /// err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+ ' ');
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+dm.PAD(' ','R',37,'CAMBIO')+Devuelta);
        err := DriverFiscal1.IF_WRITE('@PaperFeed|1');

        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|Factura #: '+RFactura.QFacturaFAC_NUMERO.AsString);
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|Cliente  : '+RFactura.QFacturaFAC_NOMBRE.AsString);
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|Vendedor : '+tVendedor.text);
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|Caja     : '+RFactura.QFacturafac_caja.AsString);

        if (actbalance = 'True') then
        begin
           err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+ ' ');
           err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+ ' ');
           err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|     -------------------------');
           err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|            Firma Clte.');
        end;

        err := DriverFiscal1.IF_WRITE('@PaperFeed|1');
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+copy(RFactura.QFacturaFAC_MENSAJE1.AsString,1,42));
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+copy(RFactura.QFacturaFAC_MENSAJE2.AsString,1,42));
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+copy(RFactura.QFacturaFAC_MENSAJE3.AsString,1,42));
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'-------------------------------------------------------');
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'NIF: '+NIF);
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+arrayMultiUso[13]+'               '+
                                       arrayMultiUso[14] +'          '+
                                       'V: '+arrayMultiUso[6]+'.'+arrayMultiUso[7]+arrayMultiUso[8]+'  '+arrayMultiUso[4]);
        ////err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'            *** FIN DOCUMENTO NO VENTA ***');
        err := DriverFiscal1.IF_WRITE('@CloseNonFiscalReceipt|C');
    end;

 end;

  ///--fin re-impresion
var
  MontoItbis, Venta, tCambio,subTotal,tItbis : double;
  PuntosPrinc, FactorPrin, TotalPuntos, CalcDesc, NumItbis, TotalDescuento : Double;
  Msg1, Msg2, Msg3 :String;
begin
  v_TAMANO_MAX_DESCRIP:=22;
  v_TotalItbis_From_Printer :=0;
  if ((aCopia > 0 ) and ( Impresora.SustituirCopia = true)) then
    copias := 0
  else
    copias := aCopia;

///  copias := aCopia;
 //// if ckcopia.Checked then copias := 1;

  if dm.QParametrospar_imprime_logo.Value = 'True' then
    vLogo :=1
  else
    vLogo :=0;

  if FileExists('.\puerto.ini') then
  begin
    assignfile(puertopeq, '.\puerto.ini');
    reset(puertopeq);
    readln(puertopeq, puerto);
  end
  else
    puerto := 'COM1';



  application.CreateForm(tRFactura, RFactura);
  RFactura.QFactura.Parameters.ParamByName('emp').Value    := dm.QEmpresasEMP_CODIGO.value;
  RFactura.QFactura.Parameters.ParamByName('tipo').Value   := QFacturaTFA_CODIGO.value;
  RFactura.QFactura.Parameters.ParamByName('forma').Value   := QFacturaFAC_FORMA.value;
  RFactura.QFactura.Parameters.ParamByName('numero').Value := QFacturaFAC_NUMERO.value;
  RFactura.QFactura.Parameters.ParamByName('suc').Value := QFacturaSUC_CODIGO.value;
  RFactura.QFactura.open;
  RFactura.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
  RFactura.QDetalle.open;
  RFactura.QFormasPago.Open;

  DriverFiscal1 := TDriverFiscal.Create(Self);
  DriverFiscal1.SerialNumber := '27-0163848-435';

  try
    err := DriverFiscal1.IF_OPEN(puerto, 9600);

    if (err < 0 ) then
      begin
        ShowMessage('Error : No hay comunicacion con el printer'+#13+#10+
        'Impresion cancelada');
        exit;
      end;

    //  DriverFiscal1.IF_TRACE(1) ; //esta linea es para ver un log con lo que hace el printer
  {
  'Habilitar la depuraci?n y captura de comandos enviados al archivo debug.log
  IF_TRACE(1)
  'Deshabilitar el debugging
  IF_TRACE(0)

  }
  {if RFactura.QFacturatip_codigo.Value = 1 then //consumidor final
   begin
     err := DriverFiscal1.IF_WRITE('@TicketOpen|a|0001|'+FormatFloat('000', RFactura.QFacturafac_caja.Value)+'|'+
           RFactura.QFacturaNumeroCF.AsString+'||||P|'+inttostr(copias)+'|'+IntToStr(vLogo));
   end
  else if RFactura.QFacturatip_codigo.Value = 2 then //con Valor Fiscal
  begin


    err := DriverFiscal1.IF_WRITE('@TicketOpen|b|0001|'+FormatFloat('000', RFactura.QFacturafac_caja.Value)+'|'+
           RFactura.QFacturaNumeroCF.AsString+'|'+ Copy(RFactura.QFacturaFAC_NOMBRE.AsString,1,40) +'|'+RFactura.QFacturafac_rnc.AsString+
           '||P|'+inttostr(copias)+'|'+IntToStr(vLogo));
  end
  else if RFactura.QFacturatip_codigo.Value = 3 then //Gubernamental
  begin
    err := DriverFiscal1.IF_WRITE('@TicketOpen|b|0001|'+FormatFloat('000', RFactura.QFacturafac_caja.Value)+'|'+
           RFactura.QFacturaNumeroCF.AsString+'|'+Copy(RFactura.QFacturaFAC_NOMBRE.AsString,1,40)+'|'+RFactura.QFacturafac_rnc.AsString+
           '||P|'+inttostr(copias)+'|'+IntToStr(vLogo));
  end
  else if RFactura.QFacturatip_codigo.Value = 4 then //Regimen Especial
  begin
    err := DriverFiscal1.IF_WRITE('@TicketOpen|f|0001|'+FormatFloat('000', RFactura.QFacturafac_caja.Value)+'|'+
           RFactura.QFacturaNumeroCF.AsString+'|'+Copy(RFactura.QFacturaFAC_NOMBRE.AsString,1,40)+'|'+RFactura.QFacturafac_rnc.AsString+
           '||P|'+inttostr(copias)+'|'+IntToStr(vLogo));
  end;

  if err <> 0 then
  begin
    err:=DriverFiscal1.IF_ERROR2(12);

    if  ( err > 0) then begin
      ShowMessage('Se requiere un cierre Z'+#13+#10+
                  'Impresion cancelada');
      exit;
    end;
  end;


  RFactura.QDetalle.DisableControls;
  RFactura.QDetalle.First;
  while not RFactura.QDetalle.eof do
  begin //--[0]--
    v_DescItems:=0;
    v_descripItem1 :='';  v_descripItem2 :=''; v_descripItem3 := '';
    tmpDescripcion:='';  v_descripItem :='';


    //--[000]--
    //--------------------------------------------------------------------------
    {--El objetivo de este bloque de codidog es resolver el sigte. problema
      la impresora epson solo admite 22 carateres, pero si una descripcion
      es muy grande y pasa de los 22, entonces no se imprime el resto de la
      informacion, entonces lo que hacesmo es dividir la descripcion en
      3 grupos para poder imprimir la descripcion completa de manera parcial
      en la definicion de la ayuda podra notar que las descripciones van desde
      Descripcion hasta Descripci?n extra #9, pero el titulo de descripcion
      se imprime ultimo a las descripciones extra . Aqui capturamo el valor
      de la descripcion del producto en base de datos, y lo asignamos a una
      variable y a esta la dividimos.  Manuel Titin Abril/2018}

  {  tmpDescripcion:= TrimLeft(TrimRight(RFactura.QDetallePRO_NOMBRE.value));

    if Length( tmpDescripcion ) <= v_TAMANO_MAX_DESCRIP then
      v_descripItem := tmpDescripcion
    else
      begin //-[*]--
        if Length( tmpDescripcion ) > v_TAMANO_MAX_DESCRIP then
          begin  //-[*1]--
            v_descripItem1 := copy(tmpDescripcion,1,v_TAMANO_MAX_DESCRIP);
            v_descripItem2 := copy(tmpDescripcion,23,Length( tmpDescripcion ));

            if Length( v_descripItem2 ) > v_TAMANO_MAX_DESCRIP then
              begin     //-[*1.1]--
                v_descripItem3 := copy(v_descripItem2,23,Length(v_descripItem2)) ;
                v_descripItem2 := copy(v_descripItem2,1,v_TAMANO_MAX_DESCRIP) ;
                v_descripItem := v_descripItem3;
                v_descripItem3 :='';
              end //-[*1.1]--
            else
              begin  //-[*1.2]--
                v_descripItem := v_descripItem2;
                v_descripItem2 :='';
              end;  //-[*1.2]--
          end //-[*1]--

      end; //-[*]--
    //--------------------------------------------------------------------------

    v_descripItem1 :='Linea 1 - Impresora epson de carro ancho';
    v_descripItem2 :='Linea 2 - Impresora epson de carro ancho';
    v_descripItem3 :='Linea 3 - Impresora epson de carro ancho';
    v_descripItem  :='Linea 0 - Impresora epson de carro ancho';

   { v_descripItem1 :='Linea 1 - Impresora 22';
    v_descripItem2 :='Linea 2 - Impresora 22';
    v_descripItem3 :='Linea 3 - Impresora 22';
    v_descripItem  :='Linea 0 - Impresora 22';
    }

  {  if dm.QParametrospar_itbisincluido.Value = 'True' then
    begin //--[1]--

      if ( RFactura.QFacturatip_codigo.Value < 4 ) then
      begin


        {err := DriverFiscal1.IF_WRITE('@TicketItem|'+
                 copy(trim(RFactura.QDetallePRO_NOMBRE.value),1,v_TAMANO_MAX_DESCRIP)+'|'+
                 RFactura.QDetalleDET_CANTIDAD.AsString+'|'+
                 floattostr(RFactura.QDetalleDET_PRECIO.value)+'|'+
                 FloatToStr(RFactura.QDetalleDET_ITBIS.Value)+'|||'+
                 RFactura.QDetallePRO_RORIGINAL.VALUE+'|'+
                 aqui); }

    {   err := DriverFiscal1.IF_WRITE('@TicketItem|'+
                 v_descripItem+'|'+
                 RFactura.QDetalleDET_CANTIDAD.AsString+'|'+
                 floattostr(RFactura.QDetalleDET_PRECIO.value)+'|'+
                 FloatToStr(RFactura.QDetalleDET_ITBIS.Value)+'|||'+
                 RFactura.QDetallePRO_RORIGINAL.VALUE+'|'+
                 v_descripItem1+'|'+
                 v_descripItem2+'|'+
                 v_descripItem3);

      end
      else if RFactura.QFacturatip_codigo.Value = 4 then
      begin
        err := DriverFiscal1.IF_WRITE('@TicketItem|'+
                 v_descripItem+'|'+
                 RFactura.QDetalleDET_CANTIDAD.AsString+'|'+
                 floattostr(RoundTo(RFactura.QDetalleDET_PRECIO.value,-2))+'|'+
                 FloatToStr(RFactura.QDetalleDET_ITBIS.Value)+'|||'+
                 RFactura.QDetallePRO_RORIGINAL.VALUE +'|'+
                 v_descripItem1+'|'+
                 v_descripItem2+'|'+
                 v_descripItem3);
      end;

     if RFactura.QDetalleDET_DESCUENTO.Value > 0 then
      begin
        if RFactura.QDetalleDET_CONITBIS.Value = 'True' then
        v_DescItems := ((RFactura.QDetalleDET_PRECIO.Value/(1+(RFactura.QDetalleDET_ITBIS.Value/100)))*(RFactura.QDetalleDET_DESCUENTO.Value/100))*(RFactura.QDetalleDET_CANTIDAD.Value) else
        v_DescItems := ((RFactura.QDetalleDET_PRECIO.Value)*(RFactura.QDetalleDET_DESCUENTO.Value/100))*(RFactura.QDetalleDET_CANTIDAD.Value);

       err := DriverFiscal1.IF_WRITE('@TicketItem|'+copy(trim(RFactura.QDetallePRO_NOMBRE.value),1,v_TAMANO_MAX_DESCRIP)+'|'+RFactura.QDetalleDET_CANTIDAD.AsString+'|'+
       floattostr(v_DescItems)+'|'+FloatToStr(RFactura.QDetalleDET_ITBIS.Value)+'|D');
        //floattostr(RFactura.QDetalleTotalDescuento.Value + ((RFactura.QDetalleTotalDescuento.value * RFactura.QDetalleDET_ITBIS.Value)/100) )+'|'+FloatToStr(RFactura.QDetalleDET_ITBIS.Value)+'|D');
      end;
      {if RFactura.QDetalleDET_DESCUENTO.Value > 0 then
            begin
              v_DescItems:= (RFactura.QDetalleDET_CANTIDAD.Value*RFactura.QDetalleDET_PRECIO.Value)*(RFactura.QDetalleDET_DESCUENTO.Value/100);
              stringTMP := FormatFloat(',,,0.00', RFactura.QDetalleDET_CANTIDAD.value) + ' x '+
                           FormatFloat(',,,0.00', v_DescItems);

              //err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+stringTMP);
              err := DriverFiscal1.IF_WRITE('@TicketItem|'+stringTMP);
              //v_DescItems := v_DescItems * RFactura.QDetalleDET_CANTIDAD.value;
              tItbis := tItbis - ((v_DescItems/(1+(RFactura.QDetalleDET_ITBIS.Value /100)))*(RFactura.QDetalleDET_ITBIS.Value /100));
              //tItbis := tItbis +(-(v_DescItems - (v_DescItems / (1+(RFactura.QDetalleDET_ITBIS.Value/100)))));
              v_subtotal := v_subtotal - (v_DescItems);

              Msg1 :=FormatFloat(',,,0.00', ((v_DescItems/(1+(RFactura.QDetalleDET_ITBIS.Value/100)) * ((RFactura.QDetalleDET_ITBIS.Value/100))))) + '-';
              //Msg1 :=FormatFloat(',,,0.00', (v_DescItems - (v_DescItems / (1+(RFactura.QDetalleDET_ITBIS.Value/100))))) + '-';
              Msg1:= dm.PAD(' ','L',15,Msg1);

              Msg2 :=FormatFloat(',,,0.00', v_DescItems)+'-';
              Msg2:=dm.PAD(' ','L',15,Msg2);
              Msg3:=dm.PAD(' ','R',22,'DESC. '+FormatFloat(',,,0.00',RFactura.QDetalleDET_DESCUENTO.Value)+'%');

              stringTMP2 := Msg3+ Msg1+Msg2+ stringTipoITBIS;
              err := DriverFiscal1.IF_WRITE('@TicketItem|'+stringTMP2);
            end;
       }

{  end  //--[1]--
    else
    begin //--[2]-- itbis no incluido.
      err := DriverFiscal1.IF_WRITE('@TicketItem|'+
                 v_descripItem+'|'+
                 RFactura.QDetalleDET_CANTIDAD.AsString+'|'+
                 floattostr(RFactura.QDetalleDET_PRECIO.value + ((RFactura.QDetalleDET_PRECIO.value * RFactura.QDetalleDET_ITBIS.Value)/100) )+'|'+
                 FloatToStr(RFactura.QDetalleDET_ITBIS.Value)+'|||'+
                 RFactura.QDetallePRO_RORIGINAL.VALUE+'|'+
                 v_descripItem1+'|'+
                 v_descripItem2+'|'+
                 v_descripItem3);


     err := DriverFiscal1.IF_WRITE('@TicketItem|'+copy(trim(RFactura.QDetallePRO_NOMBRE.value),1,v_TAMANO_MAX_DESCRIP)+'|'+
                     RFactura.QDetalleDET_CANTIDAD.AsString+'|'+
                     floattostr(RFactura.QDetalleDET_PRECIO.value + ((RFactura.QDetalleDET_PRECIO.value * RFactura.QDetalleDET_ITBIS.Value)/100) )+'|'+
                     FloatToStr(RFactura.QDetalleDET_ITBIS.Value));

      if RFactura.QDetalleDET_DESCUENTO.Value > 0 then
      begin
        v_DescItems := 100;//((RFactura.QDetalleDET_PRECIO.Value*RFactura.QDetalleDET_CANTIDAD.Value)*(RFactura.QDetalleDET_DESCUENTO.Value/100));

       err := DriverFiscal1.IF_WRITE('@TicketItem|'+copy(RFactura.QDetallePRO_NOMBRE.value,1,v_TAMANO_MAX_DESCRIP)+'|'+RFactura.QDetalleDET_CANTIDAD.AsString+'|'+
        floattostr(v_DescItems)+'|'+FloatToStr(RFactura.QDetalleDET_ITBIS.Value)+'|D');
        //floattostr(RFactura.QDetalleTotalDescuento.Value + ((RFactura.QDetalleTotalDescuento.value * RFactura.QDetalleDET_ITBIS.Value)/100) )+'|'+FloatToStr(RFactura.QDetalleDET_ITBIS.Value)+'|D');
      end;
    end; //--[2]--
    RFactura.QDetalle.next;
  end;  //--[0]--
  RFactura.QDetalle.First;
  RFactura.QDetalle.EnableControls;

  //Busca el sub-Total

 { if err <> 0 then
  begin
    ShowMessage('Se produjo un error  con el printer'+#13+#10+
                'Impresion cancelada');
    exit;
  end;}

    {if (err <> 0) then
      begin
        err := DriverFiscal1.IF_ERROR1(0);  //verifica Mecanismo
        //err := DriverFiscal1.IF_ERROR2(0);  //Verifica Controlador Fiscal

        statusMPrinter:=IntToBinRec(err,16);    //207
        if ((statusMPrinter[4] = '1') or
            (statusMPrinter[6] = '1') or
            (statusMPrinter[12] = '1') or
            (statusMPrinter[15] = '1') ) then
         begin
            Application.MessageBox(pchar('Impresora fuera de Linea'+#13+#12+
                                 'Favor Vericar Papel'),'Error',MB_OK+MB_ICONERROR);
                                 exit;
         end
         else
           begin
    ShowMessage('Se produjo un error  con el printer'+#13+#10+
                'Impresion cancelada');
    exit;
  end;
      end;


  err := DriverFiscal1.IF_WRITE('@TicketSubtotal|P');
  s_subtotal :=DriverFiscal1.IF_READ(1) ;
  v_subtotal := (StrToFloat(s_SubTotal) * 0.01);

  if RFactura.QFacturaTdesc_gral.Value > 0 then
    begin
      err := DriverFiscal1.IF_WRITE('@TicketReturnRecharge|Desc. Global : '+
             floattostr(RFactura.QFacturaporc_desc_gral.value)+'%|'+
             floattostr(RFactura.QFacturaTdesc_gral.Value)+'|D');
    end;





  ///----------------------------------------------------------
  if (actbalance = 'True') then
  begin
     v_diferencia :=0;


    if (v_subtotal > RFactura.QFacturaFAC_TOTAL.value) then
      begin
        v_diferencia := v_subtotal - RFactura.QFacturaFAC_TOTAL.value;
        if (v_diferencia <= 0.99) then
          err := DriverFiscal1.IF_WRITE('@TicketPayment|7|'+floattostr(v_subtotal)+'|Credito')
        else
          begin

            Application.MessageBox(pchar('Existe diferencia entre el Monto de la factura y la impresora de : '+ FormatFloat(',,,0.00',v_diferencia)) ,'Error',MB_OK+MB_ICONERROR);

          end;

      end
    else
      err := DriverFiscal1.IF_WRITE('@TicketPayment|7|'+floattostr(RFactura.QFacturaFAC_TOTAL.value));

    s := '';
    fillchar(s, 14-length(format('%n',[RFactura.QFacturaFAC_ABONO.value])),' ');
    Saldo := (RFactura.QFacturaFAC_TOTAL.value+v_diferencia) - RFactura.QFacturaFAC_ABONO.value;
    s1 := '';
    fillchar(s1, 14-length(format('%n',[Saldo])),' ');
    err := DriverFiscal1.IF_WRITE('@TicketFiscalText|'+ 'Abonado :'+s+format('%n',[RFactura.QFacturaFAC_ABONO.value]));
    err := DriverFiscal1.IF_WRITE('@TicketFiscalText|'+ 'Balance :'+s1+format('%n',[Saldo]));

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cli_balance from clientes');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cli_codigo = :cli');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cli').Value := RFactura.QFacturaCLI_CODIGO.Value;
    dm.Query1.Open;

    err := DriverFiscal1.IF_WRITE('@TicketFiscalText|'+ ' ');
    err := DriverFiscal1.IF_WRITE('@TicketFiscalText|'+ dm.Centro('SU CUENTA REFLEJA UN BALANCE'));
    err := DriverFiscal1.IF_WRITE('@TicketFiscalText|'+ dm.Centro('A LA FECHA DE '+Format('%n',[dm.Query1.FieldByName('cli_balance').AsFloat])));

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select * from pr_Estadistica_cli (:emp, :cli, :fec)');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cli').Value := RFactura.QFacturaCLI_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('fec').Value    := Date;
    dm.Query1.Open;
    err := DriverFiscal1.IF_WRITE('@TicketFiscalText|'+ dm.Centro('Y UN MONTO VENCIDO DE '+Format('%n',[dm.Query1.FieldByName('mtovencido').AsFloat])));
  end
  else
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select f.fpa_codigo, f.fpa_nombre, sum(p.for_monto) as monto');
    dm.Query1.SQL.Add('from formaspago f, facformapago p');
    dm.Query1.SQL.Add('where f.emp_codigo = p.emp_codigo');
    dm.Query1.SQL.Add('and f.fpa_codigo = p.fpa_codigo');
    dm.Query1.SQL.Add('and p.emp_codigo = :emp');
    dm.Query1.SQL.Add('and p.tfa_Codigo = :tfa');
    dm.Query1.SQL.Add('and p.fac_forma  = :for');
    dm.Query1.SQL.Add('and p.fac_numero = :num');
    dm.Query1.SQL.Add('and p.suc_codigo = :suc');
    dm.Query1.SQL.Add('group by f.fpa_codigo, f.fpa_nombre');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('tfa').Value := RFactura.QFacturaTFA_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('for').Value  := RFactura.QFacturaFAC_FORMA.Value;
    dm.Query1.Parameters.ParamByName('num').Value := RFactura.QFacturaFAC_NUMERO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := RFactura.QFacturaSUC_CODIGO.Value;
    dm.Query1.Open;

    v_TotalPagado :=0;
    //--[busca todos los pagos]--
    dm.Query1.DisableControls;
    dm.Query1.First;
    while not dm.Query1.Eof do
    begin
      v_TotalPagado := v_TotalPagado + dm.Query1.FieldByName('monto').Value;
      s:= '';
      fillchar(s, 14-length(dm.Query1.FieldByName('fpa_nombre').asstring),' ');
      s1 := '';
      fillchar(s1, 10-length(format('%n',[dm.Query1.FieldByName('monto').asfloat])),' ');

      err := DriverFiscal1.IF_WRITE('@TicketPayment|'+dm.Query1.FieldByName('fpa_codigo').AsString+'|'+
      floattostr(dm.Query1.FieldByName('monto').asfloat));

      dm.Query1.Next;



    end;

    v_diferencia :=0;

    v_TotalPagado:=v_TotalPagado+RFactura.QFacturaTdesc_gral.Value;


    //--[Verifica si falta monto por pagar]
    if (v_subtotal > (v_TotalPagado)) then
      begin
        v_diferencia := v_subtotal - v_TotalPagado;

        if (v_diferencia <= 0.99) then
          err := DriverFiscal1.IF_WRITE('@TicketPayment|7|'+floattostr(v_diferencia));
      end;

    dm.Query1.EnableControls;
  end;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select ven_nombre from vendedores where emp_codigo = :emp and ven_codigo = :ven');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('ven').Value := RFactura.QFacturaVEN_CODIGO.Value;
    dm.Query1.Open;

    err := DriverFiscal1.IF_WRITE('@TicketFiscalText|Factura #: '+RFactura.QFacturaFAC_NUMERO.AsString);
    err := DriverFiscal1.IF_WRITE('@TicketFiscalText|Cliente  : '+RFactura.QFacturaFAC_NOMBRE.AsString);
    err := DriverFiscal1.IF_WRITE('@TicketFiscalText|Vendedor : '+dm.Query1.FieldByName('ven_nombre').AsString);
    err := DriverFiscal1.IF_WRITE('@TicketFiscalText|Caja     : '+RFactura.QFacturafac_caja.AsString);

    if (actbalance = 'True') then
    begin
      err := DriverFiscal1.IF_WRITE('@TicketFiscalText|'+ ' ');
      err := DriverFiscal1.IF_WRITE('@TicketFiscalText|'+ ' ');
      err := DriverFiscal1.IF_WRITE('@TicketFiscalText|     -------------------------');
      err := DriverFiscal1.IF_WRITE('@TicketFiscalText|            Firma Clte.');
    end;


    err := DriverFiscal1.IF_WRITE('@TicketFiscalText|'+' ');
    err := DriverFiscal1.IF_WRITE('@TicketFiscalText|'+copy(RFactura.QFacturaFAC_MENSAJE1.AsString,1,42));
    err := DriverFiscal1.IF_WRITE('@TicketFiscalText|'+copy(RFactura.QFacturaFAC_MENSAJE2.AsString,1,42));
    err := DriverFiscal1.IF_WRITE('@TicketFiscalText|'+copy(RFactura.QFacturaFAC_MENSAJE3.AsString,1,42));

    // err := DriverFiscal1.IF_WRITE('@TicketFiscalText|[F3x;Texto Fiscal II');


    //err := DriverFiscal1.IF_WRITE('@TicketFiscalText|[E2x;*1234567*');

    //Busca el total de itbis pagado.
    err := DriverFiscal1.IF_WRITE('@GetTicketVatInfo');
    if (err = 0) then
      s_TotalItbis_From_Printer :=DriverFiscal1.IF_READ(1)
    else s_TotalItbis_From_Printer := '';

    if s_TotalItbis_From_Printer <> '' then
      v_TotalItbis_From_Printer := (StrToFloat(s_TotalItbis_From_Printer) * 0.01);

    err := DriverFiscal1.IF_WRITE('@TicketClose');

    //--busca el NIF y otros datos
    err := DriverFiscal1.IF_WRITE('@GetLastTicketStatus');
    if (err = 0) then
      begin
        s_NIF :=DriverFiscal1.IF_READ(1);  //s_NIF : Long;
        s_TotalFacturado :=DriverFiscal1.IF_READ(2);  //s_TotalFacturado :Double;
        s_Devuelta :=DriverFiscal1.IF_READ(3);    //s_Devuelta:Double;
        if s_NIF <> EmptyStr then
          begin
            QFactura.edit;
            QFacturaNIF.value := s_NIF;
            if v_TotalItbis_From_Printer > 0 then
              QFacturaFAC_ITBIS.value :=v_TotalItbis_From_Printer;

            QFactura.post;
            QFactura.UpdateBatch;
          end;
      end;

    err := DriverFiscal1.IF_WRITE('@PaperFeed|1');
    err := DriverFiscal1.IF_WRITE('@PaperCut|P');
    /// DriverFiscal1.IF_TRACE(0) ;

    if ((aCopia > 0 ) and ( Impresora.SustituirCopia = true)) then
      for x:=1 to aCopia do
        re_ImprimirTicketEpson();

    err := DriverFiscal1.IF_CLOSE;
  finally
    DriverFiscal1.Destroy;
    RFactura.Destroy;
  //Limpiar pantalla
  QDetalle.DisableControls;
    QDetalle.close;
    QFactura.DisableControls;
    QFactura.close;
    QFactura.Parameters.ParamByName('emp').Value    := dm.QEmpresasEMP_CODIGO.value;
    QFactura.Parameters.ParamByName('tipo').Value   := -1;
    QFactura.Parameters.ParamByName('forma').Value   := 'A';
    QFactura.Parameters.ParamByName('numero').Value := -1;
    QFactura.Parameters.ParamByName('suc').Value := -1;
    QFactura.open;
    QFactura.EnableControls;
    QFactura.insert;
    QDetalle.EnableControls;
    if dm.QParametrosPAR_FACBAJARLINEA.Value <> 'True' then
       edTipo.setfocus;
    
  end;
end;
}

procedure TfrmFactura.ImpTicketVmaxFiscal(aPuerto:Integer = 1;
                                          aVelocidad : Integer = 9600;
                                          aCopia:byte = 0;
                                          aTipo:String = 'P';
                                          aPrinter_usa_Precioconitbis:string = 'N');
var
  arch, puertopeq : textfile;
  s, s1, s2, s3, s4, s5 : array [0..20] of char;
  Tfac, Saldo : double;
  puerto, lbitbis, impcodigo, pro_codigo, Unidad,Und_Medida_Real : string;
  a : integer;
  sPrecio, sDescuento, sDecuentoItbis:Double;
  DescRecGlobal :Double;
  err, copias: integer;
  DriverFiscal1 : TvmaxFiscal;
  TipoNCF:byte;
  NombreCajero,TipoFactura,NombreVendedor :string;
  ItbisIncluido:boolean;
  sAjuste:Double;
  sMontoPagado : Double;
  sPorcDescGral:Double;
  sTmp,sStringTmp:String;
  sNombreCliente,srncCliente:String;
begin
{//ejecutando procedimiento de grabar facturas
              dm.Query1.close;
              dm.Query1.sql.clear;
              dm.Query1.sql.add('exec pr_graba_factura :emp, :suc, :forma, :tipo, :numero');
              dm.Query1.Parameters.parambyname('emp').Value    := QFacturaEMP_CODIGO.value;
              dm.Query1.Parameters.parambyname('suc').Value    := QFacturaSUC_CODIGO.Value;
              dm.Query1.Parameters.parambyname('forma').Value   := QFacturaFAC_FORMA.value;
              dm.Query1.Parameters.parambyname('tipo').Value   := QFacturaTFA_CODIGO.Value;
              dm.Query1.Parameters.parambyname('numero').Value := QFacturaFAC_NUMERO.value;
              dm.Query1.ExecSQL;
 }
  ItbisIncluido :=dm.QParametrospar_itbisincluido.Value = 'True';
  pro_codigo :=''; Unidad :='';
  copias := 0;
  if (acopia = 0) and (ckcopia.Checked = true) then
    copias := 1
  else
    Copias := aCopia;

  try
    application.CreateForm(tRFactura, RFactura);
  except
    ;
  end;

  if RFactura.QFactura.Active  then
    RFactura.QFactura.close;
  RFactura.QFactura.Parameters.ParamByName('emp').Value    := dm.QEmpresasEMP_CODIGO.value;
  RFactura.QFactura.Parameters.ParamByName('tipo').Value   := QFacturaTFA_CODIGO.value;
  RFactura.QFactura.Parameters.ParamByName('forma').Value   := QFacturaFAC_FORMA.value;
  RFactura.QFactura.Parameters.ParamByName('numero').Value := QFacturaFAC_NUMERO.value;
  RFactura.QFactura.Parameters.ParamByName('suc').Value := QFacturaSUC_CODIGO.value;
  RFactura.QFactura.open;
  RFactura.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
  RFactura.QDetalle.open;
  RFactura.QFormasPago.Open;

  {if (length(RFactura.QFacturaNumeroCF.AsString) < 19) then
  begin
    Application.MessageBox('El n?mero de comprobante fiscal debe de tener 19 digitos','Error',MB_OK);

    exit;
  end;}

  sNombreCliente :='';
  srncCliente :='';
  if (((not RFactura.QFacturaFAC_NOMBRE.IsNull) and
       (not RFactura.QFacturafac_rnc.IsNull)) and
       (Length(trim(RFactura.QFacturafac_rnc.AsString)) >= 9 )) then
      begin
        sNombreCliente :=Trim(RFactura.QFacturaFAC_NOMBRE.AsString);
        srncCliente := trim(RFactura.QFacturafac_rnc.AsString);
      end;




 //----------------------------------------------
 //Timer1.Enabled :=true;
 if not Assigned(DriverFiscal1) then
  DriverFiscal1 := TvmaxFiscal.Create();

  try
    pnMsgImpresion.visible :=true;

    lblWait.Caption:='Buscando puerto, espere...';
    Application.ProcessMessages();
    err := DriverFiscal1.OpenPort(aPuerto, aVelocidad);
    if (err <> SUCCESS ) then
      begin
        ShowMessage('Error : No hay comunicacion con el printer'+#13+#10+
        'Impresion cancelada');
        exit;
      end
    else begin //--[0]--
     // DriverFiscal1.AbrirCajonDinero();

      lblWait.Caption:='Procesando Impresion, Espere...';
      Application.ProcessMessages();
      /// err :=  DriverFiscal1.LineaComentario( 'Este es un comentario...');

      (*
      A = Factura a consumidor final (predeterminado).

      B = Factura con derecho a cr?dito fiscal.

      C = Nota de cr?dito a consumidor final

      D = Nota de cr?dito con derecho a cr?dito fiscal.

      E = Factura a consumidor final con exoneraci?n de ITBIS.

      F = Factura con derecho a cr?dito fiscal con exoneraci?n de ITBIS

      "000" ? Factura a consumidor final.
      "001" ? Factura con derecho a cr?dito fiscal.
      "010" ? Nota de cr?dito a consumidor final.
      "011" ? Nota de cr?dito con derecho a cr?dito fiscal.
      "100" ? Factura a consumidor final con exoneraci?n de ITBIS.
      "101" ? Factura con derecho a cr?dito fiscal con exoneraci?n de ITBIS.
      "110" ? Nota de Cr?dito consumidor final con exoneraci?n ITBIS
      "111" ? Nota de Cr?dito para cr?dito fiscal con exoneraci?n ITBIS.

      01 Facturas que Generan Cr?dito y Sustentan
Costos y/o Gastos
02 Facturas para Consumidores Finales
03 Nota de D?bito
04 Nota de Cr?dito
11 Proveedores Informales
12 Registro ?nico de Ingresos
13 Gastos Menores
14 Reg?menes Especiales de Tributaci?n
15 Comprobantes Gubernamentales

      *)

    //  err := DriverFiscal1.AbrirCF(copias,1, 0, '0001',IntToStr(RFactura.QFacturafac_caja.Value), 'A000000000000000002', Trim(Copy(RFactura.QFacturaFAC_NOMBRE.AsString,1,40)), RFactura.QFacturafac_rnc.AsString, '');
    // //  err := DriverFiscal1.AbrirCF(copias,1, 0, '0001',IntToStr(RFactura.QFacturafac_caja.Value), RFactura.QFacturaNumeroCF.AsString, Trim(Copy(RFactura.QFacturaFAC_NOMBRE.AsString,1,40)), RFactura.QFacturafac_rnc.AsString, '');

     case RFactura.QFacturatip_codigo.Value of
      //case TipoNCF of
          //consumidor final

        1:  err := DriverFiscal1.AbrirCF(copias,0, 0, '0001', IntToStr(RFactura.QFacturafac_caja.Value), RFactura.QFacturaNumeroCF.AsString, sNombreCliente, srncCliente, '');
            //con Valor Fiscal
        2:  err := DriverFiscal1.AbrirCF(copias,1, 0, '0001',IntToStr(RFactura.QFacturafac_caja.Value), RFactura.QFacturaNumeroCF.AsString, Copy(RFactura.QFacturaFAC_NOMBRE.AsString,1,40), RFactura.QFacturafac_rnc.AsString, '');
            //Gubernamental
        3:  err := DriverFiscal1.AbrirCF(copias,1, 0, '0001',IntToStr(RFactura.QFacturafac_caja.Value), RFactura.QFacturaNumeroCF.AsString, Copy(RFactura.QFacturaFAC_NOMBRE.AsString,1,40), RFactura.QFacturafac_rnc.AsString, '');
            //Regimen Especial
        4:  err := DriverFiscal1.AbrirCF(copias,101,0,'0001', IntToStr(RFactura.QFacturafac_caja.Value), RFactura.QFacturaNumeroCF.AsString, Copy(RFactura.QFacturaFAC_NOMBRE.AsString,1,40), RFactura.QFacturafac_rnc.AsString, '');
      end; //fin case

      If err = SUCCESS then begin //--[1]--
        sPrecio:=0;

        //aqui debes de pedir status
        RFactura.QDetalle.DisableControls;
        RFactura.QDetalle.First;
        while not RFactura.QDetalle.eof do
        begin
          sPrecio := RFactura.QDetalleDET_PRECIO.value;
          sDescuento := RFactura.QDetalleTotalDescuento.Value;

          if (ItbisIncluido = true) then
            begin    ///[0]
              if (aPrinter_usa_Precioconitbis = 'N') then
                begin
                //saca el itbis del precio y del descuento
                 sPrecio := (RFactura.QDetalleDET_PRECIO.value -
                              RFactura.QDetalleTotalDescuento.Value) /
                                      (1+(RFactura.QDetalleDET_ITBIS.Value/100));
                 //Jhonattan Gomez
                 sDescuento := (RFactura.QDetalleTotalDescuento.Value)*
                 (1+(RFactura.QDetalleDET_ITBIS.Value/100));
                end
              else
                begin
                  {sPrecio := RFactura.QDetalleDET_PRECIO.value  /
                       //               (1+(RFactura.QDetalleDET_ITBIS.Value/100));

                  //sPrecio := ((sPrecio - RFactura.QDetalleTotalDescuento.Value) *
                               (1+ (RFactura.QDetalleDET_ITBIS.Value/100))) ; }
                 if  (RFactura.QDetalleTotalDescuento.Value > 0) then
                 sDescuento := (RFactura.QDetalleTotalDescuento.Value *
                                     (1+ (RFactura.QDetalleDET_ITBIS.Value/100)) );

                end;
            end ///[0]//fin Itbis Incluidos
          else //itbis no incluido
            begin
              //Agrega el itbis al precio si la impresora lo requiere
              if ((aPrinter_usa_Precioconitbis = 'S') and (ItbisIncluido = false)) then
                begin
                  sPrecio := (RFactura.QDetalleDET_PRECIO.value *
                              (1+(RFactura.QDetalleDET_ITBIS.Value/100)));
                 //El Descuento tiene que sumarle el itbis, cuando la impresora lo requiera
                 sDescuento := (RFactura.QDetalleTotalDescuento.Value *
                                     (1+ (RFactura.QDetalleDET_ITBIS.Value/100)) );
                end;
            end ;




            if aTipo = 'N' then
              begin
                if not RFactura.QDetallePRO_RORIGINAL.IsNull then
                  pro_codigo :=(RFactura.QDetallePRO_RORIGINAL.value)
                else
                  if not RFactura.QDetallePRO_CODIGO.IsNull then
                    pro_codigo :=IntToStr(RFactura.QDetallePRO_CODIGO.value)
                  else pro_codigo :='0';

                if not RFactura.QDetallepro_unidad_medida.IsNull then
                  Unidad :=Copy(RFactura.QDetallepro_unidad_medida.value,1,6)
                else
                  Unidad :='UNIDAD';

                if (Length(trim(pro_codigo))= 0) then
                  pro_codigo :='0';

                if (Length(trim(Unidad))= 0) then
                  Unidad :='UNIDAD';
              end
            else
             begin
               pro_codigo :=''; Unidad :='';  Und_Medida_Real:='';
             end;

          //--[Imprime Detalle]--



         err := DriverFiscal1.ItemCF(0, '','','','','','','',pro_codigo,Unidad,
                copy(trim(RFactura.QDetallePRO_NOMBRE.value),1,35),
                        RFactura.QDetalleDET_CANTIDAD.value,
                        sPrecio,RFactura.QDetalleDET_ITBIS.Value);
         //Jhonattan Gomez
         sDescuento := (QDetalleCalcDesc.Value*
                 (1+(RFactura.QDetalleDET_ITBIS.Value/100)))/RFactura.QDetalleDET_CANTIDAD.value;

          //--[Imprime Descuentos]--
          if RFactura.QDetalleCalcDesc.Value > 0 then
            err := DriverFiscal1.ItemCF(2, '','','','','','','','','',
                             'Descuento por Item',
                             RFactura.QDetalleDET_CANTIDAD.value,
                             sDescuento,
                             RFactura.QDetalleDET_ITBIS.Value);

          //--[No hay recargo por Items]--


          RFactura.QDetalle.next;
        end;  //--[fin while]--
        RFactura.QDetalle.First;
        RFactura.QDetalle.EnableControls;
        /// err :=  DriverFiscal1.LineaComentario( 'Este es un comentario...');

        err := DriverFiscal1.getSubtotalCF();


        if (QFacturaTdesc_gral.Value > 0 ) then
        begin

          sStringTmp := FormatFloat(',,0.00', QFacturaporc_desc_gral.value);
          IF QFacturaFAC_CONITBIS.Value = 'True' then
          DescRecGlobal := RFactura.QFacturaTdesc_gral.Value*1.18 else
          DescRecGlobal := RFactura.QFacturaTdesc_gral.Value;{*
                                     (1+ (RFactura.QDetalleDET_ITBIS.Value/100))} ;
          err := DriverFiscal1.DescRecGlobal(0, sStringTmp+'% Desc. Global',DescRecGlobal);
          err := DriverFiscal1.getSubtotalCF();
        end;

        //--[Aplica descuento Gra.]

        if (actbalance = 'True') then
        begin
         //err :=  DriverFiscal1.LineaComentario( '----------------------------------------------');
         //procesa el pago...
          sMontoPagado :=  RFactura.QFacturaFAC_TOTAL.value;

          //Ajusta el pago
          if ( DriverFiscal1.SubTotal > sMontoPagado ) then
            begin
              sAjuste := ((DriverFiscal1.SubTotal - sMontoPagado) * 100);
              if (sAjuste = 1)  then
               sMontoPagado := sMontoPagado +(sAjuste /100);
            end;

          err := DriverFiscal1.PagoCF(0, 5, sMontoPagado);

           //Ajusta pago por si queda centavos que pagar
          if ( DriverFiscal1.SubTotal > sMontoPagado )  then
          begin
            sAjuste := DriverFiscal1.SubTotal - sMontoPagado;
            err := DriverFiscal1.PagoCF(0, 5,sAjuste,' ' );
          end;

          s := '';
          fillchar(s, 14-length(format('%n',[RFactura.QFacturaFAC_ABONO.value])),' ');
          Saldo := RFactura.QFacturaFAC_TOTAL.value - RFactura.QFacturaFAC_ABONO.value;
          s1 := '';
          fillchar(s1, 14-length(format('%n',[Saldo])),' ');
          err := DriverFiscal1.LineaComentario('Abonado :'+s+format('%n',[RFactura.QFacturaFAC_ABONO.value]));
          err := DriverFiscal1.LineaComentario('Balance :'+s1+format('%n',[Saldo]));

          {dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('select cli_balance from clientes');
          dm.Query1.SQL.Add('where emp_codigo = :emp');
          dm.Query1.SQL.Add('and cli_codigo = :cli');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
          dm.Query1.Parameters.ParamByName('cli').Value := RFactura.QFacturaCLI_CODIGO.Value;
          dm.Query1.Open;

          err := DriverFiscal1.LineaComentario( ' ');
          err := DriverFiscal1.LineaComentario(dm.Centro('SU CUENTA REFLEJA UN BALANCE'));
          err := DriverFiscal1.LineaComentario(dm.Centro('A LA FECHA DE '+Format('%n',[dm.Query1.FieldByName('cli_balance').AsFloat])));

          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('select * from pr_Estadistica_cli (:emp, :cli, :fec)');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
          dm.Query1.Parameters.ParamByName('cli').Value := RFactura.QFacturaCLI_CODIGO.Value;
          dm.Query1.Parameters.ParamByName('fec').Value    := Date;
          dm.Query1.Open;
          err := DriverFiscal1.LineaComentario( dm.Centro('Y UN MONTO VENCIDO DE '+Format('%n',[dm.Query1.FieldByName('mtovencido').AsFloat])));
        }
        end
        else
        begin
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('select f.fpa_codigo, f.fpa_nombre, sum(p.for_monto) as monto');
          dm.Query1.SQL.Add('from formaspago f, facformapago p');
          dm.Query1.SQL.Add('where f.emp_codigo = p.emp_codigo');
          dm.Query1.SQL.Add('and f.fpa_codigo = p.fpa_codigo');
          dm.Query1.SQL.Add('and p.emp_codigo = :emp');
          dm.Query1.SQL.Add('and p.tfa_Codigo = :tfa');
          dm.Query1.SQL.Add('and p.fac_forma  = :for');
          dm.Query1.SQL.Add('and p.fac_numero = :num');
          dm.Query1.SQL.Add('and p.suc_codigo = :suc');
          dm.Query1.SQL.Add('group by f.fpa_codigo, f.fpa_nombre');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
          dm.Query1.Parameters.ParamByName('tfa').Value := RFactura.QFacturaTFA_CODIGO.Value;
          dm.Query1.Parameters.ParamByName('for').Value  := RFactura.QFacturaFAC_FORMA.Value;
          dm.Query1.Parameters.ParamByName('num').Value := RFactura.QFacturaFAC_NUMERO.Value;
          dm.Query1.Parameters.ParamByName('suc').Value := RFactura.QFacturaSUC_CODIGO.Value;
          dm.Query1.Open;

          dm.Query1.DisableControls;
          dm.Query1.First;

          //--[Aplica pago]--
          sAjuste:=0;
          sMontoPagado:=0;
          while not dm.Query1.Eof do
          begin
            s:= '';
            fillchar(s, 14-length(dm.Query1.FieldByName('fpa_nombre').asstring),' ');
            s1 := '';
            fillchar(s1, 10-length(format('%n',[dm.Query1.FieldByName('monto').asfloat])),' ');
            sMontoPagado :=sMontoPagado + dm.Query1.FieldByName('monto').value;

            //Procesa el Pago...
            err := DriverFiscal1.PagoCF(0, dm.Query1.FieldByName('fpa_codigo').value,
                                           dm.Query1.FieldByName('monto').value);


            dm.Query1.Next;
          end;
          if Devuelta <> '' then
          err := DriverFiscal1.LineaComentario('Devuelta :'+s+Devuelta);
          dm.Query1.EnableControls;


          //Ajusta pago por si queda centavos que pagar
          if ( DriverFiscal1.SubTotal > sMontoPagado )  then
          begin
            sAjuste := DriverFiscal1.SubTotal - sMontoPagado;
            err := DriverFiscal1.PagoCF(0, 7,sAjuste,' ' );
          end;
         { else  ///force, esto es para resolver problema que dice falta un centavo
            if aTipo = 'N' then
            begin
              err := DriverFiscal1.PagoCF(0, 7,0.01,' ' );
            end; }

        end;

       {// err :=DriverFiscal1.ObtenerInformacionPago();
       // sAjuste := DriverFiscal1.PagoPendiente;
       // if ((err = 0 ) and  (DriverFiscal1.PagoPendiente > 0 )) then
           err := DriverFiscal1.PagoCF(0, 7,sAjuste,'Ajuste' );   }
      err :=  DriverFiscal1.LineaComentario( '----------------------------------------------');


        NombreCajero := '';
        TipoFactura := '';
        NombreVendedor :='';
        With dm.Query1 do begin
          Close;
          Sql.clear();
          SQL.Add('select ven_nombre from vendedores where emp_codigo = :emp and ven_codigo = :ven');
          Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
          Parameters.ParamByName('ven').Value := RFactura.QFacturaVEN_CODIGO.Value;
          Open;
          if not IsEmpty then
            NombreVendedor := dm.Query1.FieldByName('ven_nombre').AsString;

          Close;
          Sql.clear();
          Sql.add('Select caj_nombre from Cajeros Where emp_codigo = :empresa');
          sql.add(' and caj_codigo = :cajero');
          Parameters.ParamByName('empresa').value :=  dm.QEmpresasEMP_CODIGO.Value;
          Parameters.ParamByName('cajero').value :=RFactura.QFacturaUSU_CODIGO.value;
          Open;
          if not IsEmpty then
            NombreCajero := dm.Query1['caj_nombre'];

          Close;
          Sql.clear();
          sql.add('select tfa_nombre from tiposfactura Where emp_codigo = :empresa');
          sql.add(' and tfa_codigo = :codigo ');
          Parameters.ParamByName('empresa').value :=  dm.QEmpresasEMP_CODIGO.Value;
          Parameters.ParamByName('codigo').value :=RFactura.QFacturaTFA_CODIGO.value;
          Open;
          if not IsEmpty then
            TipoFactura := dm.Query1['tfa_nombre'];
          close;

        end;


        err := DriverFiscal1.LineaComentario(  'Factura #: '+RFactura.QFacturaFAC_NUMERO.AsString);
        if tipoFactura <> '' then
          err := DriverFiscal1.LineaComentario('Tipo     : '+TipoFactura);

        err := DriverFiscal1.LineaComentario( 'Cliente  : '+RFactura.QFacturaFAC_NOMBRE.AsString);
        err := DriverFiscal1.LineaComentario( 'Caja     : '+RFactura.QFacturafac_caja.AsString);
        if NombreCajero <> '' then
          err := DriverFiscal1.LineaComentario( 'Cajero   : '+NombreCajero);
        if NombreVendedor <> '' then
          err := DriverFiscal1.LineaComentario( 'Vendedor : '+NombreVendedor);
                      //   CPA_CODIGO
        err :=  DriverFiscal1.LineaComentario( ' ');
        err :=  DriverFiscal1.LineaComentario( copy(RFactura.QFacturaFAC_MENSAJE1.AsString,1,42));
        err :=  DriverFiscal1.LineaComentario( copy(RFactura.QFacturaFAC_MENSAJE2.AsString,1,42));
        err :=  DriverFiscal1.LineaComentario( copy(RFactura.QFacturaFAC_MENSAJE3.AsString,1,42));

        lblWait.Caption:='Imprimiendo, espere...';
        Application.ProcessMessages();

        DriverFiscal1.CerrarCF();
      end; //--[1]--
    end; //--[0]--
  finally
    RFactura.Destroy;
    lblWait.Caption:='Cerrando puerto';
    Application.ProcessMessages();
    DriverFiscal1.ClosePort();
    DriverFiscal1.Destroy;

    Timer1.Enabled :=false;
    lblWait.Caption:='';
    pnMsgImpresion.visible :=false;
    Application.ProcessMessages();
  end;

end;


procedure TfrmFactura.ImpTicketFiscalBixolon(vImpresora:TImpresora);
Var PuertoPeq: TextFile;
  Puerto,s_NIF: String;
  Respuesta: Boolean;
  Stat, Err, Cant: Integer;
  Precio, Saldo: Double;
  s, s1, s2, s3, s4, s5 : array [0..20] of char;
    Credito : Boolean;


  sAjuste,MontoItbis:Double;
  sMontoPagado : Double;
  sPorcDescGral:Double;
  sStringTmp:String;
  sPrecio:double;
  vord:byte;
  Unidad:string;
  sDescuento:Double;
  DescRecGlobal :Double;
  v_TotalPagado , v_TotalImp :double;
begin
{   //ejecutando procedimiento de grabar facturas
              dm.Query1.close;
              dm.Query1.sql.clear;
              dm.Query1.sql.add('exec pr_graba_factura :emp, :suc, :forma, :tipo, :numero');
              dm.Query1.Parameters.parambyname('emp').Value    := QFacturaEMP_CODIGO.value;
              dm.Query1.Parameters.parambyname('suc').Value    := QFacturaSUC_CODIGO.Value;
              dm.Query1.Parameters.parambyname('forma').Value   := QFacturaFAC_FORMA.value;
              dm.Query1.Parameters.parambyname('tipo').Value   := QFacturaTFA_CODIGO.Value;
              dm.Query1.Parameters.parambyname('numero').Value := QFacturaFAC_NUMERO.value;
              dm.Query1.ExecSQL;
 }
  Copias := vImpresora.Copia;
  Credito := False;
  //cambiar puerto
  Puerto := PuertoSerial[Impresora.Puerto -1];

  OpenFpctrl(PChar(Puerto));
  Respuesta := CheckFprinter();
  if Not Respuesta then
  begin
    ShowMessage('Impresora NO conectada');
    RFactura.Destroy;
    Abort;
  end;


  application.CreateForm(tRFactura, RFactura);
  RFactura.QFactura.Parameters.ParamByName('emp').Value    := dm.QEmpresasEMP_CODIGO.value;
  RFactura.QFactura.Parameters.ParamByName('tipo').Value   := QFacturaTFA_CODIGO.value;
  RFactura.QFactura.Parameters.ParamByName('forma').Value   := QFacturaFAC_FORMA.value;
  RFactura.QFactura.Parameters.ParamByName('numero').Value := QFacturaFAC_NUMERO.value;
  RFactura.QFactura.Parameters.ParamByName('suc').Value := QFacturaSUC_CODIGO.value;
  RFactura.QFactura.open;
  RFactura.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
  RFactura.QDetalle.open;
  RFactura.QFormasPago.Open;

  with RFactura do
  begin
    //informacion del cliente
    if Trim(QFacturaFAC_NOMBRE.Value) <> '' Then
      SendCmd(Stat, Err, PChar('iS0'+Copy(QFacturaFAC_NOMBRE.Value, 0, 30)));

    if Trim(QFacturafac_rnc.Value) <> '' Then
      SendCmd(Stat, Err, PChar('iR0'+QFacturafac_rnc.Value));

    //informacion del NCF
    SendCmd(Stat, Err, PChar('F'+QFacturaNumeroCF.Value));

    //apertura de la factura
    case QFacturatip_codigo.Value of
      1:SendCmd(Stat, Err, PChar('/0'));    //Factura Para Consumidor Final
      2:SendCmd(Stat, Err, PChar('/1'));     //Factura Para Cr?dito Fiscal
      3:SendCmd(Stat, Err, PChar('/1'));     ////Gubernamental
      4:SendCmd(Stat, Err, PChar('/4'));    ////Regimen Especial (Factura Para Cr?dito Fiscal con Exoneraci?n ITBIS)
    end;


    while not QDetalle.eof do
    begin
      sPrecio := 0;
      sDescuento :=0;
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select isnull(pro_montoitbis,0) as pro_montoitbis from productos where emp_codigo = 1 and pro_codigo = :pro');
      dm.Query1.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
      dm.Query1.Open;
      MontoItbis := dm.Query1.FieldByName('pro_montoitbis').AsFloat;
      sPrecio :=QDetalledet_precio.Value;
      sDescuento := QDetalleTotalDescuento.Value ;

      if (ItbisIncluido = true) then
        begin    ///[0]
          if (vImpresora.Precioconitbis = 'N' ) then
            begin
              //saca el itbis del precio y del descuento
              sPrecio := (QDetalledet_precio.Value -
                                QDetalleTotalDescuento.Value) /
                                        (1+(QDetalledet_ITBIS.Value/100));

              sDescuento := (QDetalleTotalDescuento.Value /
                                       (1+ (QDetalledet_ITBIS.Value/100)) );
            end
          else
            begin
              {sPrecio := RFactura.QDetalleDET_PRECIO.value  /
                //               (1+(RFactura.QDetalleDET_ITBIS.Value/100));

              sPrecio := ((sPrecio - RFactura.QDetalleTotalDescuento.Value) *
                           (1+ (RFactura.QDetalleDET_ITBIS.Value/100))) ;

              if  (QDetalleTotalDescuento.Value > 0) then
                sDescuento := (QDetalleTotalDescuento.Value *
                              (1+ (QDetalledet_ITBIS.Value/100)) );          }

            end;
        end ///[0]//fin Itbis Incluidos
      else //itbis no incluido
        begin
          //Agrega el itbis al precio si la impresora lo requiere
          //y no esta contenido en el precio
          if ((vImpresora.Precioconitbis = 'S') and (ItbisIncluido = false)) then
            begin
              sPrecio := (QDetalleDET_PRECIO.value *
                          (1+(QDetalleDET_ITBIS.Value/100)));
              //El Descuento tiene que sumarle el itbis, cuando la impresora lo requiera
              sDescuento := (QDetalleTotalDescuento.Value *
                            (1+ (QDetalledet_ITBIS.Value/100)) );
            end;
        end ; //Fin //itbis no incluido

      vord:= Trunc(MontoItbis);

      case  vord of
        0:  SendCmd(Stat, Err, PChar(' '+ FormatFloat('0000000000', sPrecio * 100) + FormatFloat('00000000', QDetalleDet_cantidad.Value*100) + QDetallePRO_NOMBRE.Value));
        8:  SendCmd(Stat, Err, PChar('#'+ FormatFloat('0000000000', sPrecio * 100) + FormatFloat('00000000', QDetalleDet_cantidad.Value*100) + QDetallePRO_NOMBRE.Value));
       11:  SendCmd(Stat, Err, PChar('$'+ FormatFloat('0000000000', sPrecio * 100) + FormatFloat('00000000', QDetalleDet_cantidad.Value*100) + QDetallePRO_NOMBRE.Value));
       13:  SendCmd(Stat, Err, PChar('%'+ FormatFloat('0000000000', sPrecio * 100) + FormatFloat('00000000', QDetalleDet_cantidad.Value*100) + QDetallePRO_NOMBRE.Value));
       16:  SendCmd(Stat, Err, PChar('!'+ FormatFloat('0000000000', sPrecio * 100) + FormatFloat('00000000', QDetalleDet_cantidad.Value*100) + QDetallePRO_NOMBRE.Value));
       18:  SendCmd(Stat, Err, PChar('"'+ FormatFloat('0000000000', sPrecio * 100) + FormatFloat('00000000', QDetalleDet_cantidad.Value*100) + QDetallePRO_NOMBRE.Value));
      end;


     if QDetalleDET_DESCUENTO.Value > 0 then
       SendCmd(Stat, Err, PChar('p-'+ FormatFloat('0000', QDetalleCalcDesc.Value*100)));


    //  if QDetalleDET_recargo.Value > 0 then
    //    SendCmd(Stat, Err, PChar('p+'+ FormatFloat('0000', QDetalleDET_recargo.Value*100)));

     /// trecargo := trecargo + QDetalleDET_recargo.AsFloat;

      QDetalle.next;
    end;
    QDetalle.First;
    QDetalle.EnableControls;

  {
    if QFacturaTdesc_gral.Value > 0 then
      SendCmd(Stat, Err, PChar('p*'+ FormatFloat('0000', QFacturaporc_desc_gral.value*100)));
    //Informacion del pago
    //SendCmd(Stat, Err, PChar('101'));

    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select tfa_nombre, tfa_selcondi, tfa_formatoimp, tfa_puertoimp,');
    dm.Query1.sql.add('tfa_actbalance, tfa_cliente, ven_codigo, tfa_precio, tfa_permite_abonar,');
    dm.Query1.sql.add('tfa_mensaje1, tfa_mensaje2, tfa_mensaje3, fpa_codigo, tfa_copias, tip_codigo,');
    dm.Query1.sql.add('tfa_verlimite, tfa_itbis, tfa_imprimie_encabezado, tfa_rnc, cat_cuenta, tfa_modifica_nombre');
    dm.Query1.sql.add('from tiposfactura');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and tfa_codigo = :cod');
    dm.Query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edTipo.text));
    dm.Query1.open;
    actbalance := dm.Query1.fieldbyname('tfa_actbalance').asstring;


    if (actbalance = 'True') then
    begin
      SendCmd(Stat, Err, PChar('107'));
    end
    else
    begin
      v_TotalImp := getTotalaPagar(); //Pide total al printer
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select f.fpa_codigo, f.fpa_nombre, sum(p.for_monto) as monto');
      dm.Query1.SQL.Add('from formaspago f, facformapago p');
      dm.Query1.SQL.Add('where f.emp_codigo = p.emp_codigo');
      dm.Query1.SQL.Add('and f.fpa_codigo = p.fpa_codigo');
      dm.Query1.SQL.Add('and p.emp_codigo = :emp');
      dm.Query1.SQL.Add('and p.tfa_Codigo = :tfa');
      dm.Query1.SQL.Add('and p.fac_forma  = :for');
      dm.Query1.SQL.Add('and p.fac_numero = :num');
      dm.Query1.SQL.Add('and p.suc_codigo = :suc');
      dm.Query1.SQL.Add('group by f.fpa_codigo, f.fpa_nombre');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('tfa').Value := QFacturaTFA_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('for').Value  := QFacturaFAC_FORMA.Value;
      dm.Query1.Parameters.ParamByName('num').Value := QFacturaFAC_NUMERO.Value;
      dm.Query1.Parameters.ParamByName('suc').Value := QFacturaSUC_CODIGO.Value;
      dm.Query1.Open;

      dm.Query1.DisableControls;
      dm.Query1.First;
      v_TotalPagado:= 0;
      while not dm.Query1.Eof do
      begin
        v_TotalPagado:= v_TotalPagado + dm.Query1.FieldByName('monto').asfloat;
        case dm.Query1.FieldByName('fpa_codigo').value of
          1:SendCmd(Stat, Err, PChar('201'+FormatFloat('000000000000', dm.Query1.FieldByName('monto').asfloat * 100))); //Efectivo
          2:SendCmd(Stat, Err, PChar('202'+FormatFloat('000000000000', dm.Query1.FieldByName('monto').asfloat * 100)));
          3:SendCmd(Stat, Err, PChar('203'+FormatFloat('000000000000', dm.Query1.FieldByName('monto').asfloat * 100)));
          4:SendCmd(Stat, Err, PChar('204'+FormatFloat('000000000000', dm.Query1.FieldByName('monto').asfloat * 100)));
          else
          SendCmd(Stat, Err, PChar('208'+FormatFloat('000000000000', dm.Query1.FieldByName('monto').asfloat * 100)));
        end;
        dm.Query1.Next;
      end;
      dm.Query1.EnableControls;
    end;
  end;        }

(*    v_TotalPagado:=0;
  QFormaPago.DisableControls;
  QFormaPago.First;
  while not QFormaPago.Eof do
  begin
    v_TotalPagado:= v_TotalPagado + QFormaPagopagado.Value;

    if QFormaPagoforma.AsString = 'TAR' then
    begin
      SendCmd(Stat, Err, PChar('203'+FormatFloat('000000000000', QFormaPagopagado.Value*100)));
    end
    else if QFormaPagoforma.AsString = 'CHE' then
    begin
      SendCmd(Stat, Err, PChar('202'+FormatFloat('000000000000', QFormaPagopagado.Value*100)));
    end
    else if QFormaPagoforma.AsString = 'DEV' then
    begin
      SendCmd(Stat, Err, PChar('204'+FormatFloat('000000000000', QFormaPagopagado.Value*100)));
    end
    else if QFormaPagoforma.AsString = 'CRE' then
    begin
      SendCmd(Stat, Err, PChar('207'+FormatFloat('000000000000', QFormaPagopagado.Value*100)));
      copias := copias + 1;
      Credito := True;
    end
    else if QFormaPagoforma.AsString = 'BOC' then
    begin
      SendCmd(Stat, Err, PChar('206'+FormatFloat('000000000000', QFormaPagopagado.Value*100)));
    end
    else if QFormaPagoforma.AsString = 'OBO' then
    begin
      SendCmd(Stat, Err, PChar('208'+FormatFloat('000000000000', QFormaPagopagado.Value*100)));
    end
    else if QFormaPagoforma.AsString = 'EFE' then
    begin
      SendCmd(Stat, Err, PChar('201'+FormatFloat('000000000000', QFormaPagopagado.Value*100)));
      puedeAbrirCaja :=true;
    end;
    QFormaPago.Next;
  end;    *)

 if ((v_TotalImp > 0 ) and (v_TotalPagado <> v_TotalImp)) then
   begin
      if (v_TotalImp > v_TotalPagado) then
      begin  //Esta rutina es para poder ajustar el pago faltante
        v_TotalPagado := v_TotalImp - v_TotalPagado;
        SendCmd(Stat, Err, PChar('208'+FormatFloat('000000000000', v_TotalPagado*100)));
      end;
     ///  SendCmd(Stat, Err, PChar('101'));
   end;


  //informacion de comentarios
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select ven_nombre from vendedores where emp_codigo = :emp and ven_codigo = :ven');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('ven').Value := QFacturaVEN_CODIGO.Value;
  dm.Query1.Open;

  SendCmd(Stat, Err, PChar('@ '));
  SendCmd(Stat, Err, PChar('@Factura #: '+QFacturaFAC_NUMERO.AsString));
  if (tCondicion.Text) = '' Then
    SendCmd(Stat, Err, PChar('@Condicion de Pago #: Contado'))
  Else
    SendCmd(Stat, Err, PChar('@Condicion de Pago #: '+tCondicion.Text));
  SendCmd(Stat, Err, PChar('@Vendedor : '+dm.Query1.FieldByName('ven_nombre').AsString));
  SendCmd(Stat, Err, PChar('@Caja     : '+QFacturafac_caja.AsString));

  if actbalance = 'True' Then
  Begin
    SendCmd(Stat, Err, PChar('@ '));
    SendCmd(Stat, Err, PChar('@ '));
    SendCmd(Stat, Err, PChar('@ '));
    SendCmd(Stat, Err, PChar('@_________________________'));
    SendCmd(Stat, Err, PChar('@     Firma Cliente'));
      SendCmd(Stat, Err, PChar('@ '));
  End;


  SendCmd(Stat, Err, PChar('@ '));
  SendCmd(Stat, Err, PChar('@'+copy(QFacturaFAC_MENSAJE1.AsString,1,40)));
  SendCmd(Stat, Err, PChar('@'+copy(QFacturaFAC_MENSAJE2.AsString,1,40)));
  SendCmd(Stat, Err, PChar('@'+copy(QFacturaFAC_MENSAJE3.AsString,1,40)));

  SendCmd(Stat, Err, PChar('199'));

  For cant := 1 To vImpresora.Copia Do
    SendCmd(Stat, Err, PChar('RU')) ;


  //--Busca y guarda el NIF
  s_NIF :=UltimoNIF;
  if s_NIF <> EmptyStr then
    begin
  {  QFactura.edit;
            QFacturaNIF.value := s_NIF;     }
          with DM.adoMultiUso do begin
          Close;
          SQL.Clear;
          SQL.Add('UPDATE FACTURAS');
          SQL.Add('SET NIF = :NIC');
          SQL.Add('WHERE EMP_CODIGO = :EMP AND SUC_CODIGO = :SUC');
          SQL.Add('AND FAC_NUMERO = :FAC AND TFA_CODIGO = :TFA AND FAC_FORMA = :FOR');
          Parameters.ParamByName('NIC').Value := s_NIF;
          Parameters.ParamByName('EMP').Value := QFacturaEMP_CODIGO.Value;
          Parameters.ParamByName('SUC').Value := QFacturaSUC_CODIGO.Value;
          Parameters.ParamByName('FAC').Value := QFacturaFAC_NUMERO.Value;
          Parameters.ParamByName('TFA').Value := QFacturaTFA_CODIGO.Value;
          Parameters.ParamByName('FOR').Value := QFacturaFAC_FORMA.Value;
          ExecSQL;
          end;
      {QFactura.edit;
      QFacturaNIF.value := s_NIF;
      QFactura.post;
      QFactura.UpdateBatch;}
    end;

  CloseFpctrl;
  RFactura.Destroy;
end;
end;

    procedure TfrmFactura.QFacturaAfterInsert(DataSet: TDataSet);
begin
frmFactura.Caption := 'Facturaci?n';
end;

procedure TfrmFactura.QFacturaTFA_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
var
  tiponcf : integer;
begin
  if Trim(edTipo.Text) <> '' then
    begin
    with qEjecutar do begin
    close;
    sql.clear;
    sql.add('select tfa_nombre, tfa_selcondi, tfa_formatoimp, tfa_puertoimp,');
    sql.add('tfa_actbalance, tfa_cliente, ven_codigo, tfa_precio,');
    sql.add('tfa_mensaje1, tfa_mensaje2, tfa_mensaje3, fpa_codigo,');
    sql.add('tfa_verlimite, tfa_copias, tfa_permite_abonar, tfa_itbis, isnull(tip_codigo,0)tipo,');
    sql.add('tfa_imprimie_encabezado, tfa_rnc, cat_cuenta, tfa_modifica_nombre, tfa_espcliente espcliente');
    sql.add(',Envio_Correo, Envio_Estadocta');
    sql.add('from tiposfactura');
    sql.add('where emp_codigo = '+QuotedStr(DM.QEmpresasEMP_CODIGO.text));
    sql.add('and tfa_codigo = '+QuotedStr(edTipo.text));
    open;

    if qEjecutar.RecordCount > 0 then begin

      ConItbis        := FieldByName('tfa_itbis').AsString;
      QFacturaFAC_CONITBIS.Value := ConItbis;
      vtfa_espcliente := FieldByName('espcliente').AsString;
      PermiteAbonar   := fieldbyname('tfa_permite_abonar').AsString;
      ImprimeEncaqbezado := fieldbyname('tfa_imprimie_encabezado').AsString;
      vEnvioEstadoCta := FieldByName('Envio_Estadocta').Value;
      chkMail.Checked := FieldByName('Envio_Correo').Value;
      ModificaNombre := fieldbyname('tfa_modifica_nombre').asstring;
      CtaTipoFactura := fieldbyname('cat_cuenta').asstring;
      copias     := fieldbyname('tfa_copias').asinteger;
      FPagoIni   := fieldbyname('fpa_codigo').asinteger;
      Precio     := fieldbyname('tfa_precio').asstring;
      PuertoImp  := fieldbyname('tfa_puertoimp').asstring;
      FormatoImp := fieldbyname('tfa_formatoImp').asinteger;
      tTipo.text := fieldbyname('tfa_nombre').asstring;
      actbalance := fieldbyname('tfa_actbalance').asstring;
      VerLimite  := fieldbyname('tfa_verlimite').asstring;
      SelCondi   := FieldByName('tfa_selcondi').AsBoolean;
      SelRNC     := fieldbyname('tfa_rnc').asString;
      tiponcf    := fieldbyname('tipo').AsInteger;
      dbCondi.Enabled := SelCondi;
      btCondi.Enabled := SelCondi;
      QFacturaFAC_MENSAJE1.Value := trim(fieldbyname('tfa_mensaje1').asstring);
      QFacturaFAC_MENSAJE2.Value := fieldbyname('tfa_mensaje2').asstring;
      QFacturaFAC_MENSAJE3.Value := fieldbyname('tfa_mensaje3').asstring;
      if fieldbyname('tfa_actbalance').asstring = 'False' then
      begin
      if QFacturaFAC_NOMBRE.isnull then
      QFacturaFAC_NOMBRE.Value := fieldbyname('tfa_cliente').asstring;
      end;

      if not fieldbyname('ven_codigo').IsNull then
      QFacturaVEN_CODIGO.Value := fieldbyname('ven_codigo').asinteger;


      QFacturafac_abono.Value := 0;
      end
      else
      begin
      ShowMessage('ESTE TIPO DE FACTURA NO EXISTE FAVOR REVISAR');
      edTipo.SetFocus;
      tTipo.Clear;
      Exit;
      end;
      end;


      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('select fpa_codigo from formaspago');
      Query1.SQL.Add('where emp_codigo = :emp');
      Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      Query1.Open;
      if Query1.RecordCount = 0 then
      begin
        edTipo.Text := '';
        MessageDlg('PARA REALIZAR UNA FACTURA DE ESTE TIPO'+#13+
                   'DEBE CREAR LAS FORMAS DE PAGO',mtError,[mbok],0);
        Abort;
        edTipo.SetFocus;
      end;

        totalizar;


      if tiponcf > 0 then
         QFacturatip_codigo.Value := tiponcf;

    end;

    SelectNext(activecontrol, true, true);
  end;



procedure TfrmFactura.edTipoExit(Sender: TObject);
var
  tiponcf : integer;
begin
  if Trim(edTipo.Text) <> '' then
    begin
    with qEjecutar do begin
    close;
    sql.clear;
    sql.add('select tfa_nombre, tfa_selcondi, tfa_formatoimp, tfa_puertoimp,');
    sql.add('tfa_actbalance, tfa_cliente, ven_codigo, tfa_precio,');
    sql.add('tfa_mensaje1, tfa_mensaje2, tfa_mensaje3, fpa_codigo,');
    sql.add('tfa_verlimite, tfa_copias, tfa_permite_abonar, tfa_itbis, isnull(tip_codigo,0)tipo,');
    sql.add('tfa_imprimie_encabezado, tfa_rnc, cat_cuenta, tfa_modifica_nombre, tfa_espcliente espcliente');
    sql.add(',Envio_Correo, Envio_Estadocta');
    sql.add('from tiposfactura');
    sql.add('where emp_codigo = '+QuotedStr(DM.QEmpresasEMP_CODIGO.text));
    sql.add('and tfa_codigo = '+QuotedStr(edTipo.text));
    open;

    if qEjecutar.RecordCount > 0 then begin

      ConItbis        := FieldByName('tfa_itbis').AsString;
      QFacturaFAC_CONITBIS.Value := ConItbis;
      vtfa_espcliente := FieldByName('espcliente').AsString;
      PermiteAbonar   := fieldbyname('tfa_permite_abonar').AsString;
      ImprimeEncaqbezado := fieldbyname('tfa_imprimie_encabezado').AsString;
      vEnvioEstadoCta := FieldByName('Envio_Estadocta').Value;
      chkMail.Checked := FieldByName('Envio_Correo').Value;
      ModificaNombre := fieldbyname('tfa_modifica_nombre').asstring;
      CtaTipoFactura := fieldbyname('cat_cuenta').asstring;
      copias     := fieldbyname('tfa_copias').asinteger;
      FPagoIni   := fieldbyname('fpa_codigo').asinteger;
      Precio     := fieldbyname('tfa_precio').asstring;
      PuertoImp  := fieldbyname('tfa_puertoimp').asstring;
      FormatoImp := fieldbyname('tfa_formatoImp').asinteger;
      tTipo.text := fieldbyname('tfa_nombre').asstring;
      actbalance := fieldbyname('tfa_actbalance').asstring;
      VerLimite  := fieldbyname('tfa_verlimite').asstring;
      SelCondi   := FieldByName('tfa_selcondi').AsBoolean;
      SelRNC     := fieldbyname('tfa_rnc').asString;
      tiponcf    := fieldbyname('tipo').AsInteger;
      dbCondi.Enabled := SelCondi;
      btCondi.Enabled := SelCondi;
      QFacturaFAC_MENSAJE1.Value := trim(fieldbyname('tfa_mensaje1').asstring);
      QFacturaFAC_MENSAJE2.Value := fieldbyname('tfa_mensaje2').asstring;
      QFacturaFAC_MENSAJE3.Value := fieldbyname('tfa_mensaje3').asstring;
      if fieldbyname('tfa_actbalance').asstring = 'False' then
      begin
      if QFacturaFAC_NOMBRE.isnull then
      QFacturaFAC_NOMBRE.Value := fieldbyname('tfa_cliente').asstring;
      end;

      if not fieldbyname('ven_codigo').IsNull then
      QFacturaVEN_CODIGO.Value := fieldbyname('ven_codigo').asinteger;


      QFacturafac_abono.Value := 0;
      end
      else
      begin
      ShowMessage('ESTE TIPO DE FACTURA NO EXISTE FAVOR REVISAR');
      edTipo.SetFocus;
      tTipo.Clear;
      Exit;
      end;
      end;


      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('select fpa_codigo from formaspago');
      Query1.SQL.Add('where emp_codigo = :emp');
      Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      Query1.Open;
      if Query1.RecordCount = 0 then
      begin
        edTipo.Text := '';
        MessageDlg('PARA REALIZAR UNA FACTURA DE ESTE TIPO'+#13+
                   'DEBE CREAR LAS FORMAS DE PAGO',mtError,[mbok],0);
        Abort;
        edTipo.SetFocus;
      end;

        totalizar;


      if tiponcf > 0 then
         QFacturatip_codigo.Value := tiponcf;

    end;

    SelectNext(activecontrol, true, true);
  end;
procedure TfrmFactura.ImpTicketEnvio(vSucEnvia, vSucRecibe, vRecibe, vRecibeTel, vEnvia, vDescripcion, vCodigo, vCodigo2: String; vPagoDestino: Boolean; vnumero: Integer; vcantidad: Integer);
var
  ar, puertopeq: textfile;
  Lote, a: Integer;
  s: array[0..20] of char;
  Relleno, IniBarra, vCodigoBarra,FileName, desTicket:String;
  i: Integer;
begin
  if DM.QParametrospar_puerto_envios.Text = '' then
  begin
    ShowMessage('Debes indicar el printer para imprimir estos envios' + char(13) +
      'Ruta es Tabla = "Parametros"' + ' Campo = "par_puerto_envios"');
    Exit;
  end;

  IniBarra := DM.QParametrospar_puerto_envios.Text;
  vCodigoBarra := vCodigo + vCodigo2;

  if not FileExists('.\BarraEnv.ini') then
  begin
    AssignFile(puertopeq, '.\BarraEnv.ini');
    rewrite(puertopeq);
    writeln(puertopeq, IniBarra);
    closefile(puertopeq);
  end
  else
  begin
    AssignFile(puertopeq, '.\BarraEnv.ini');
    reset(puertopeq);
    Readln(puertopeq, IniBarra);
    closefile(puertopeq);
  end;

  if not (dm.QParametrospar_formato_preimpreso.Value = 'Emtraba') AND not (dm.QParametrospar_formato_preimpreso.Value = 'QRAgregados')  then
  begin
    AssignFile(ar, '.\impEnv.bat');
    rewrite(ar);
    writeln(ar, 'type .\Envio.txt > ' + IniBarra);
    closefile(ar);

    AssignFile(ar, '.\Envio.txt');
    rewrite(ar);

    writeln(ar, 'q288');
    writeln(ar, 'Q152,40');
    writeln(ar, 'N');
    writeln(ar, 'ZT');
    writeln(ar, 'A25,15,0,1,1,1,N,"RECIBE:' + vRecibe + '"');
    writeln(ar, 'A25,35,0,1,1,1,N,"TEL REC:' + vRecibeTel + '"');
    writeln(ar, 'A35,135,0,1,1,1,N,"ENVIA:' + vEnvia + '"');
    writeln(ar, 'A135,150,0,1,1,1,N,"' + vDescripcion + '"');
    writeln(ar, 'B30,55,0,1,2,1,50,B,"' + vCodigoBarra + '"');
    writeln(ar, 'P1');
    writeln(ar, 'FK');
    closefile(ar);

    AssignFile(ar, '.\impEnv.bat');
    rewrite(ar);
    writeln(ar, 'type .\Envio.txt > ' + IniBarra);
    closefile(ar);
    WinExec('.\impEnv.bat', 0);
  end;

  if (dm.QParametrospar_formato_preimpreso.Value = 'Emtraba') or (dm.QParametrospar_formato_preimpreso.Value = 'QRAgregados') then
  begin
    for i := 1 to vcantidad do
    begin
      try
        // Generar un nombre de archivo ?nico por ticket
        FileName := '.\Envio_' + IntToStr(i) + '_' + IntToStr(vnumero) + '.txt';
         desTicket := '';
        // Abrir y escribir en el archivo
        AssignFile(ar, FileName);
        rewrite(ar);

        writeln(ar, 'q750');
        writeln(ar, 'Q560,20');
        writeln(ar, 'N');
        writeln(ar, 'ZT');
        writeln(ar, 'A05,50,0,4,0,1,N,"ORIGEN:' + vSucEnvia + '"');
        writeln(ar, 'A05,120,0,4,0,1,N,"DESTINO:' + vSucRecibe + '"');
        writeln(ar, 'A05,190,0,5,0,1,N,"RECIBE:' + vRecibe + '"');
        writeln(ar, 'A05,260,0,4,0,0,N,"TEL REC:' + vRecibeTel + '"');
        writeln(ar, 'A05,330,0,5,0,0,N,"ENVIA:' + vEnvia + '"');
        writeln(ar, 'A05,400,0,4,0,0,N,"' + vDescripcion + '"');
        writeln(ar, 'B05,500,0,1,6,2,140,B,"' + vCodigoBarra + '"');
        writeln(ar, 'A100,730,0,5,0,1,N,"NUMERO:' + IntToStr(vnumero) + '"');

        // Validaci?n y modificaci?n de la descripci?n
        if (vDescripcion = '') or (vDescripcion = null) then
          desTicket := 'TICKET'
        else
        // Cortar la descripci?n al primer espacio
        desTicket := Copy(vDescripcion, 1, Pos(' ', vDescripcion) - 1);

      // Luego lo usamos en la escritura del archivo:
        writeln(ar, 'A100,800,0,5,0,1,N,"' + desTicket + ' ' + IntToStr(i) + '/' + IntToStr(vcantidad) + '"');

        if vPagoDestino then
          writeln(ar, 'A100,800,0,5,0,1,N,"PAGO DESTINO"');

        writeln(ar, 'P1');
        writeln(ar, 'FK');
        closefile(ar);

        // Crear un archivo .bat temporal para ejecutar la impresi?n
        AssignFile(ar, '.\impEnv_' + IntToStr(i) + '.bat');
        rewrite(ar);

        writeln(ar, 'type ' + FileName + ' > ' + IniBarra);
       // writeln(ar, 'type .\Envio.txt > ' + IniBarra);
        closefile(ar);
         // Ejecutar la impresi?n
        WinExec(PAnsiChar('.\impEnv_' + IntToStr(i) + '.bat'), 0);
        
       // WinExec('.\impEnv.bat', 0);
      except
        on E: Exception do
          ShowMessage('Error al generar archivo impEnv.bat para el ticket ' + IntToStr(i) + ': ' + E.Message);
      end;
    end;
  end;
end;


{

procedure TfrmFactura.ImpTicketEnvio(vSucEnvia, vSucRecibe, vRecibe, vRecibeTel, vEnvia, vDescripcion, vCodigo, vCodigo2:String;vPagoDestino:Boolean;vnumero:Integer; vcantidad:Integer);
var
   ar, puertopeq : textfile;
  Lote, a : Integer;
  s : array[0..20] of char;
  Relleno, IniBarra, vCodigoBarra: String;
  i: Integer;
begin
    if DM.QParametrospar_puerto_envios.Text = '' then begin
    ShowMessage('Debes indicar el printer para imprimir estos envios'+char(13)+
    'Ruta es Tabla = "Parametros"'+' Campo = "par_puerto_envios"');
    Exit;
    end;

if DM.QParametrospar_puerto_envios.Text <> '' then begin
    IniBarra := DM.QParametrospar_puerto_envios.Text;
    if not FileExists('.\BarraEnv.ini') then
    begin
      AssignFile(puertopeq, '.\BarraEnv.ini');
      rewrite(puertopeq);
      writeln(puertopeq,IniBarra);
    end
    else
    begin
      AssignFile(puertopeq, '.\BarraEnv.ini');
      reset(puertopeq);
      Readln(puertopeq,IniBarra);
    end;
    end;
    closefile(puertopeq);
    vCodigoBarra:= vCodigo+vCodigo2;

    AssignFile(ar, '.\impEnv.bat');
    rewrite(ar);
    writeln(ar, 'type .\Envio.txt > '+IniBarra);
    closefile(ar);

    AssignFile(ar, '.\Envio.txt');
    rewrite(ar);

    if not (dm.QParametrospar_formato_preimpreso.Value = 'Emtraba') then
    begin
    writeln(ar,'q288');
    writeln(ar,'Q152,40');
    writeln(ar,'N');
    writeln(ar,'ZT');
    writeln(ar,'A25,15,0,1,1,1,N,"RECIBE:'+vRecibe+'"');
    writeln(ar,'A25,35,0,1,1,1,N,"TEL REC:'+vRecibeTel+'"');
    writeln(ar,'A35,135,0,1,1,1,N,"ENVIA:'+vEnvia+'"');
    writeln(ar,'A135,150,0,1,1,1,N,"'+vDescripcion+'"');
    writeln(ar,'B30,55,0,1,2,1,50,B,"'+vCodigoBarra+'"');
    writeln(ar,'P1');
    writeln(ar,'FK');

    closefile(ar);

    AssignFile(ar, '.\impEnv.bat');
    rewrite(ar);
    writeln(ar, 'type .\Envio.txt > ' + IniBarra);
    closefile(ar);
    WinExec('.\impEnv.bat', 0);
    end;
    if (dm.QParametrospar_formato_preimpreso.Value = 'Emtraba') then
          begin
     for i := 1 to vcantidad do
      begin
        try
        //ShowMessage('Error al generar' + IntToStr(vcantidad));
          // Asigna el nombre del archivo con la variable i concatenada
          AssignFile(ar, '.\impEnv' + IntToStr(i) + '.bat');
          rewrite(ar);
          writeln(ar, 'type .\Envio' + IntToStr(i) + '.txt > ' + IniBarra);
          Flush(ar);  // Asegura que los datos se escriban en el archivo
          closefile(ar);

          AssignFile(ar, '.\Envio' + IntToStr(i) + '.txt');
          rewrite(ar);

            writeln(ar, 'q750');
            writeln(ar, 'Q560,20');
            writeln(ar, 'N');
            writeln(ar, 'ZT');
            writeln(ar, 'q750');
            writeln(ar, 'Q560,20');
            writeln(ar, 'N');
            writeln(ar, 'ZT');
            writeln(ar, 'A05,50,0,5,0,1,N,"ORIGEN:' + vSucEnvia + '"');
            writeln(ar, 'A05,120,0,5,0,1,N,"DESTINO:' + vSucRecibe + '"');
            writeln(ar, 'A05,190,0,5,0,1,N,"RECIBE:' + vRecibe + '"');
            writeln(ar, 'A05,260,0,4,0,0,N,"TEL REC:' + vRecibeTel + '"');
            writeln(ar, 'A05,330,0,5,0,0,N,"ENVIA:' + vEnvia + '"');
            writeln(ar, 'A05,400,0,5,0,0,N,"' + vDescripcion + '"');
            writeln(ar, 'B05,500,0,1,6,2,140,B,"' + vCodigoBarra + '"');
            writeln(ar, 'A100,730,0,5,0,1,N,"NUMERO:' + IntToStr(vnumero) + '"');

            if vPagoDestino = True then
              writeln(ar, 'A100,800,0,5,0,1,N,"PAGO DESTINO"');

            writeln(ar, 'P1');
            writeln(ar, 'FK');


          Flush(ar);  // Asegura que los datos se escriban en el archivo
          closefile(ar);

          // Nuevamente, con la variable i concatenada en el archivo .bat
          AssignFile(ar, '.\impEnv' + IntToStr(i) + '.bat');
          rewrite(ar);
          writeln(ar, 'type .\Envio' + IntToStr(i) + '.txt > ' + IniBarra);
          Flush(ar);
          closefile(ar);

          // Ejecutar el archivo .bat generado
          WinExec(PAnsiChar('.\impEnv' + IntToStr(i) + '.bat'), 0);

        except
          on E: Exception do
            ShowMessage('Error al generar archivo impEnv' + IntToStr(i) + '.bat: ' + E.Message);
        end;
           end;
      end;

end;
       }
procedure TfrmFactura.QFacturaCalcFields(DataSet: TDataSet);
var
  vTotalUS: Double;
begin
QFacturaSubTotal.Value := sSubTotal;
//modificargrid();
IF  QFacturaMON_CODIGO.value = 2 THEN BEGIN
lblLbTotalUS.Visible :=  True;
EDT_FAC_TOTALUS.Visible :=  True;

if (not Assigned(QFacturaFAC_TASA)) or (not Assigned(QFacturaFAC_TOTAL)) then
  Exit;

if VarIsNull(QFacturaFAC_TASA.Value) or (QFacturaFAC_TASA.Value = 0) then
  vTotalUS := 0
else
  vTotalUS := QFacturaFAC_TOTAL.Value / QFacturaFAC_TASA.Value;

if Assigned(QFacturaFAC_TOTALUS) then
  QFacturaFAC_TOTALUS.Value := vTotalUS
else if Assigned(QFacturafac_total_dolar) then
  QFacturafac_total_dolar.Value := vTotalUS;
    end
else
begin
lblLbTotalUS.Visible :=  False;
EDT_FAC_TOTALUS.Visible :=  False;
end;


end;

procedure TfrmFactura.CodificarCuentas;
var
  a : integer;
  CtaTipoFactura, todo : String;
  TotalCosto : double;
begin
  if dm.QContabpar_codifica_venta_familia.Value <> 'True' then
  begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('delete from contdet_facturas where emp_codigo = :emp and suc_codigo = :suc');
      dm.Query1.sql.add('and fac_forma = :for and tfa_codigo = :tfa and fac_numero = :num');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('tfa').Value := QFacturaTFA_CODIGO.Value;
      dm.Query1.Parameters.parambyname('suc').Value := QFacturasuc_codigo.Value;
      dm.Query1.Parameters.parambyname('for').Value := QFacturaFAC_FORMA.Value;
      dm.Query1.Parameters.parambyname('num').Value := QFacturaFAC_NUMERO.Value;
      dm.Query1.ExecSQL;
      QCuentas.Close;
      QCuentas.Open;

      Query1.close;
      Query1.sql.clear;
      Query1.sql.add('select tfa_nombre, tfa_selcondi, tfa_formatoimp, tfa_puertoimp,');
      Query1.sql.add('tfa_actbalance, tfa_cliente, ven_codigo, tfa_precio,');
      Query1.sql.add('tfa_mensaje1, tfa_mensaje2, tfa_mensaje3, fpa_codigo,');
      Query1.sql.add('tfa_verlimite, tfa_copias, tfa_permite_abonar, tfa_itbis,');
      Query1.sql.add('tfa_imprimie_encabezado, tfa_rnc, cat_cuenta');
      Query1.sql.add('from tiposfactura');
      Query1.sql.add('where emp_codigo = :emp');
      Query1.sql.add('and tfa_codigo = :cod');
      Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      Query1.Parameters.parambyname('cod').Value := QFacturaTFA_CODIGO.Value;
      Query1.open;
      CtaTipoFactura := Query1.fieldbyname('cat_cuenta').asstring;


      QDetalle.disablecontrols;
      QDetalle.first;
      TotalCosto := 0;
      while not QDetalle.eof do
      begin
        TotalCosto := TotalCosto + (QDetalleDET_COSTO.Value * (QDetalleDET_CANTIDAD.Value*QDetalledet_cant_unidad_medida.Value));
        QDetalle.next;
      end;
      QDetalle.first;
      QDetalle.EnableControls;


      //Insertando cuenta contable de ingreso
      if QCuentas.Locate('cat_cuenta',CtaTipoFactura,[]) then
      begin
        QCuentas.Edit;
        QCuentasdet_monto.Value := (QFacturaFAC_TOTAL.Value - QFacturaFAC_ITBIS.Value - QFacturaFAC_PROPINA.Value) + QFacturaFAC_DESCUENTO.Value+QFacturaTdesc_gral_sin_Itbis.Value;
        QCuentas.Post;
      end
      else
      begin
        QCuentas.Append;
        QCuentascat_cuenta.Value := CtaTipoFactura;
        QCuentasdet_monto.Value  := (QFacturaFAC_TOTAL.Value - QFacturaFAC_ITBIS.Value - QFacturafac_PROPINA.Value) + QFacturaFAC_DESCUENTO.Value+QFacturaTdesc_gral_sin_Itbis.Value;
        QCuentasdet_origen.Value := 'Credito';
        QCuentas.Post;
      end;

      //Insertando cuenta contable de itbis
      if QFacturaFAC_ITBIS.Value > 0 then
      begin
        if QCuentas.Locate('cat_cuenta',dm.QContabPAR_CTAITBIS.Value ,[]) then
        begin
          QCuentas.Edit;
          QCuentasdet_monto.Value := QFacturaFAC_ITBIS.Value;
          QCuentas.Post;
        end
        else
        begin
          QCuentas.Append;
          QCuentascat_cuenta.Value := dm.QContabPAR_CTAITBIS.Value;
          QCuentasdet_monto.Value  := QFacturaFAC_ITBIS.Value;
          QCuentasdet_origen.Value := 'Credito';
          QCuentas.Post;
        end;
      end;

      //Insertando cuenta contable de propina
      if QFacturaFAC_PROPINA.Value > 0 then
      begin
        if QCuentas.Locate('cat_cuenta',dm.QContabpar_ctaproplegvent.Value ,[]) then
        begin
          QCuentas.Edit;
          QCuentasdet_monto.Value := QFacturaFAC_PROPINA.Value;
          QCuentas.Post;
        end
        else
        begin
          QCuentas.Append;
          QCuentascat_cuenta.Value := dm.QContabpar_ctaproplegvent.Value;
          QCuentasdet_monto.Value  := QFacturaFAC_PROPINA.Value;
          QCuentasdet_origen.Value := 'Credito';
          QCuentas.Post;
        end;
      end;

      //Insertando cuenta contable de descuento
      if QFacturaFAC_DESCUENTO.Value > 0 then
      begin
        if QCuentas.Locate('cat_cuenta',dm.QContabPAR_CTADESC.Value ,[]) then
        begin
          QCuentas.Edit;
          QCuentasdet_monto.Value := QFacturaFAC_DESCUENTO.Value+QFacturaTdesc_gral_sin_Itbis.Value;
          QCuentas.Post;
        end
        else
        begin
          QCuentas.Append;
          QCuentascat_cuenta.Value := dm.QContabPAR_CTADESC.Value;
          QCuentasdet_monto.Value  := QFacturaFAC_DESCUENTO.Value+QFacturaTdesc_gral_sin_Itbis.Value;
          QCuentasdet_origen.Value := 'Debito';
          QCuentas.Post;
        end;
      end;

      //Insertando cuenta contable de inventario
      if TotalCosto > 0 then
      begin
        if QCuentas.Locate('cat_cuenta',dm.QContabPAR_CTAINVEnT.Value ,[]) then
        begin
          QCuentas.Edit;
          QCuentasdet_monto.Value := TotalCosto;
          QCuentas.Post;
        end
        else
        begin
          QCuentas.Append;
          QCuentascat_cuenta.Value := dm.QContabPAR_CTAINVEnT.Value;
          QCuentasdet_monto.Value  := TotalCosto;
          QCuentasdet_origen.Value := 'Credito';
          QCuentas.Post;
        end;

        //Insertando cuenta contable de costo
        if QCuentas.Locate('cat_cuenta',dm.QContabPAR_CTACOSTO.Value ,[]) then
        begin
          QCuentas.Edit;
          QCuentasdet_monto.Value := TotalCosto;
          QCuentas.Post;
        end
        else
        begin
          QCuentas.Append;
          QCuentascat_cuenta.Value := dm.QContabPAR_CTACOSTO.Value;
          QCuentasdet_monto.Value  := TotalCosto;
          QCuentasdet_origen.Value := 'Debito';
          QCuentas.Post;
        end;
      end;

      //Insertando cuenta de caja
      if Query1.fieldbyname('tfa_actbalance').asstring <> 'True' then
      begin
        Query1.Close;
        Query1.SQL.Clear;
        Query1.SQL.Add('select fp.cat_cuenta, a.for_monto from FacFormaPago a');
        Query1.SQL.Add('inner join FormasPago fp on a.emp_codigo=fp.emp_codigo and a.fpa_codigo=fp.fpa_codigo');
        Query1.SQL.Add('where a.emp_codigo = :emp and a.fac_numero = :num and a.tfa_codigo = :tip and a.fac_forma = :for and a.suc_codigo = :suc');
        Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
        Query1.Parameters.ParamByName('num').Value := QFacturaFAC_NUMERO.Value;
        Query1.Parameters.ParamByName('tip').Value := QFacturaTFA_CODIGO.Value;
        Query1.Parameters.ParamByName('for').Value := QFacturaFAC_FORMA.Value;
        Query1.Parameters.ParamByName('suc').Value := QFacturasuc_codigo.Value;
        Query1.Open;

        if QCuentas.Locate('cat_cuenta',Query1.FieldByName('cat_cuenta').AsString ,[]) then
        begin
          QCuentas.Edit;
          QCuentasdet_monto.Value := QFacturaFAC_TOTAL.Value;
          QCuentas.Post;
        end
        else
        begin
          Query1.First;
          while not Query1.Eof do begin
          QCuentas.Append;
          QCuentascat_cuenta.Value := Query1.FieldByName('cat_cuenta').AsString;
          QCuentasdet_monto.Value  := Query1.FieldbyName('for_monto').Value;
          QCuentasdet_origen.Value := 'Debito';
          QCuentas.Post;
          Query1.Next;
          end;
        end;
      end
      else
      begin //Insertando cuenta de cxc
        if QCuentas.Locate('cat_cuenta',CtaCliente ,[]) then
        begin
          QCuentas.Edit;
          QCuentasdet_monto.Value := QFacturaFAC_TOTAL.Value;
          QCuentas.Post;
        end
        else
        begin
          QCuentas.Append;
          QCuentascat_cuenta.Value := CtaCliente;
          QCuentasdet_monto.Value  := QFacturaFAC_TOTAL.Value;
          QCuentasdet_origen.Value := 'Debito';
          QCuentas.Post;
        end;
      end;
end;
end;

procedure TfrmFactura.ImpTicketCardNet;
var
  arch, puertopeq : textfile;
  s, s1, s2, s3, s4, s5,s6 : array [0..20] of char;
  Tfac, Saldo : double;
  puerto, lbitbis, impcodigo, parametro, Unidad, codigoabre : string;
  a,x : integer;
  b : myJSONItem;
begin
with qImpCardNet do begin
Close;
Parameters.ParamByName('emp').Value :=  vl_empfact;
Parameters.ParamByName('suc').Value :=  vl_suc;
Parameters.ParamByName('fac').Value :=  vl_fact;
Parameters.ParamByName('tip').Value :=  vl_tfa;
Parameters.ParamByName('for').Value :=  vl_forma;
Open;
end;

  codigoabre := Trim(DM.QParametrosPAR_CODIGO_ABRE_CAJA.Value);

  b := myJSONItem.Create;
  b.Code :=  qImpCardNet.fieldByName('JSON').Value;

  if Impresora.IDPrinter = 0 then begin
  if FileExists('.\puerto.txt') then
  begin
    assignfile(puertopeq, '.\puerto.txt');
    reset(puertopeq);
    readln(puertopeq, puerto);
  end
  else
    puerto := 'PRN';

  closefile(puertopeq);

  AssignFile(arch, '.\impverifone.bat');
  rewrite(arch);
  writeln(arch, 'type .\tverifone.txt > '+puerto);
  closefile(arch);

  //Ticket Comercio
  AssignFile(arch, '.\tverifone.txt');
  rewrite(arch);
  parametro := qImpCardNet.fieldbyname('SUCURSAL').Text;
  writeln(arch,dm.centro(parametro));
  writeln(arch,dm.centro(qImpCardNet.FieldByName('DIRECCION').text));
  writeln(arch,b['DataTime'].getStr);
  parametro := IntToStr(b['Transaction']['Reference'].getInt);
  writeln(arch,'No. Trans.      : '+parametro);
  writeln(arch,'');
  writeln(arch,dm.centro('REGISTRO DE LA TRANSACCION'));
  writeln(arch,'No. de Terminal : '+b['TerminalID'].getStr);
  writeln(arch,'ID Comerciante  : '+b['MerchantID'].getStr);
  writeln(arch,'');
  writeln(arch,'TARJETA         : ' +b['Card']['Product'].getStr);
  writeln(arch,'TIPO COMPRA     : '+b['Transaction']['LoyaltyDeferredNumber'].getStr);
  parametro  := copy(b['Card']['CardNumber'].getStr,Length(b['Card']['CardNumber'].getStr)-3,Length(b['Card']['CardNumber'].getStr));
  writeln(arch,'No. tarjeta     : '+parametro);
  writeln(arch,'Modo Entrada    : '+b['Host']['Description'].getStr);
  writeln(arch,'APROBADA        : EN LINEA');
  writeln(arch,'Cliente         : '+copy(b['Card']['HolderName'].getStr,1,24));
  writeln(arch,'');
  writeln(arch,'');
  writeln(arch,'Monto RD$       : '+qImpCardNet.FieldByName('montosinitbis').text);
  writeln(arch,'Tax   RD$       : '+qImpCardNet.FieldByName('monto_itbis').text);
  writeln(arch,'Total RD$       : '+qImpCardNet.FieldByName('monto').text);
  writeln(arch,'');
  writeln(arch,'');
  writeln(arch,DM.CENTRO('APROBADA'));
  writeln(arch,'');
  writeln(arch,'');
  writeln(arch,'No de referencia: '+b['Transaction']['RetrievalReference'].getStr);
  writeln(arch,'No Autorizacion : '+b['Transaction']['AuthorizationNumber'].getStr);
  writeln(arch,'Fecha            : '+copy(b['Transaction']['DataTime'].getStr,1,10));
  writeln(arch,'Hora             : '+trim(copy(b['Transaction']['DataTime'].getStr,12,20)));
  writeln(arch,'');
  writeln(arch,'');
  writeln(arch,dm.Centro('_________________________'));
  writeln(arch,dm.centro(copy(b['Card']['HolderName'].getStr,1,24)));
  writeln(arch,'');
  writeln(arch,'');
  writeln(arch,dm.centro('***Original Comercio***'));
  writeln(arch,'');
  writeln(arch,dm.centro('***FIN DOCUMENTO NO VENTA***'));
  for x:= 1 to 12 do begin
  writeln(arch,'');
  end;

  if codigoabre = 'Termica' then
  writeln(arch,chr(27)+chr(109));

  CloseFile(arch);

 winexec('.\impverifone.bat',0);

 //Ticket Copia
  AssignFile(arch, '.\tverifoneCopia.bat');
  rewrite(arch);
  writeln(arch, 'type .\tverifoneCopia.txt > '+puerto);
  closefile(arch);

  AssignFile(arch, '.\tverifoneCopia.txt');
  rewrite(arch);
  parametro := qImpCardNet.fieldbyname('SUCURSAL').Text;
  writeln(arch,dm.centro(parametro));
  writeln(arch,dm.centro(qImpCardNet.FieldByName('DIRECCION').text));
  writeln(arch,b['DataTime'].getStr);
  parametro := IntToStr(b['Transaction']['Reference'].getInt);
  writeln(arch,'No. Trans.      : '+parametro);
  writeln(arch,'');
  writeln(arch,dm.centro('REGISTRO DE LA TRANSACCION'));
  writeln(arch,'No. de Terminal : '+b['TerminalID'].getStr);
  writeln(arch,'ID Comerciante  : '+b['MerchantID'].getStr);
  writeln(arch,'');
  writeln(arch,'TARJETA         : ' +b['Card']['Product'].getStr);
  writeln(arch,'TIPO COMPRA     : '+b['Transaction']['LoyaltyDeferredNumber'].getStr);
  parametro  := copy(b['Card']['CardNumber'].getStr,Length(b['Card']['CardNumber'].getStr)-3,Length(b['Card']['CardNumber'].getStr));
  writeln(arch,'No. tarjeta     : '+parametro);
  writeln(arch,'Modo Entrada    : '+b['Host']['Description'].getStr);
  writeln(arch,'APROBADA        : EN LINEA');
  writeln(arch,'Cliente         : '+copy(b['Card']['HolderName'].getStr,1,24));
  writeln(arch,'');
  writeln(arch,'');
  writeln(arch,'Monto RD$       : '+qImpCardNet.FieldByName('montosinitbis').text);
  writeln(arch,'Tax   RD$       : '+qImpCardNet.FieldByName('monto_itbis').text);
  writeln(arch,'Total RD$       : '+qImpCardNet.FieldByName('monto').text);
  writeln(arch,'');
  writeln(arch,'');
  writeln(arch,DM.CENTRO('APROBADA'));
  writeln(arch,'');
  writeln(arch,'');
  writeln(arch,'No de referencia: '+b['Transaction']['RetrievalReference'].getStr);
  writeln(arch,'No Autorizacion : '+b['Transaction']['AuthorizationNumber'].getStr);
  writeln(arch,'Fecha            : '+copy(b['Transaction']['DataTime'].getStr,1,12));
  writeln(arch,'Hora             : '+trim(copy(b['Transaction']['DataTime'].getStr,12,20)));
  writeln(arch,'');
  writeln(arch,'');
  writeln(arch,dm.centro('***Copia Cliente***'));
  writeln(arch,'');
  writeln(arch,dm.centro('***FIN DOCUMENTO NO VENTA***'));

  for x:= 1 to 12 do begin
  writeln(arch,'');
  end;

  if codigoabre = 'Termica' then
  writeln(arch,chr(27)+chr(109));

  CloseFile(arch);

 winexec('.\tverifoneCopia.bat',0);


end;

end;

procedure TfrmFactura.DBEdit19Exit(Sender: TObject);
begin
dbedt_RECARGOS.SetFocus;
if not ((dm.QParametrospar_formato_preimpreso.Text = 'Sarita & Asociados') AND
          (DM.QParametrospar_fac_preimpresa.Value = 'True')) then
QFacturaFAC_ITBIS.Value := QFacturaFAC_ITBIS.Value;

if (ckItbis.Checked)  then begin
QFacturaFAC_TOTAL.Value := QFacturaSubTotal.Value -  QFacturaFAC_DESCUENTO.Value+
QFacturaFAC_ITBIS.Value + QFacturaRecargo.Value + QFacturaFAC_PROPINA.Value
end
ELSE
QFacturaFAC_TOTAL.Value := QFacturaSubTotal.Value -  QFacturaFAC_DESCUENTO.Value+
QFacturaRecargo.Value + QFacturaFAC_PROPINA.Value;
end;

procedure TfrmFactura.dbedt_RECARGOSExit(Sender: TObject);
begin
if not ((dm.QParametrospar_formato_preimpreso.Text = 'Sarita & Asociados') AND
          (DM.QParametrospar_fac_preimpresa.Value = 'True')) then
QFacturaFAC_ITBIS.Value := QFacturaFAC_ITBIS.Value;

if (ckItbis.Checked)  then begin
QFacturaFAC_TOTAL.Value := QFacturaSubTotal.Value -  QFacturaFAC_DESCUENTO.Value+
QFacturaFAC_ITBIS.Value + QFacturaRecargo.Value + QFacturaFAC_PROPINA.Value
end
ELSE
QFacturaFAC_TOTAL.Value := QFacturaSubTotal.Value -  QFacturaFAC_DESCUENTO.Value+
QFacturaRecargo.Value + QFacturaFAC_PROPINA.Value;
end;

procedure TfrmFactura.DevolverExistencia;
begin
if vl_accion = 2 then begin
  if MDDetalle.RecordCount > 0 then begin
  MDDetalle.First;
  while not MDDetalle.Eof do begin
  DM.ADOSigma.Execute('update existencias set exi_cantidad = isnull(exi_cantidad,0)- '+FloatToStr(MDDetallecantidadund.Value)+
  ' ,exi_empaque = isnull(exi_empaque,0) -'+FloatToStr(MDDetallecantidademp.Value)+' where emp_codigo ='+QFacturaEMP_CODIGO.Text+' and alm_codigo ='+IntToStr(QFacturaALM_CODIGO.Value)+
  ' and pro_codigo ='+MDDetallepro_codigo.Text);
  DM.ADOSigma.Execute('update productos set pro_existencia = isnull(pro_existencia,0)- '+FloatToStr(MDDetallecantidadund.Value)+
  ' ,pro_existempaque = isnull(pro_existempaque,0) -'+FloatToStr(MDDetallecantidademp.Value)+' where emp_codigo ='+DM.QParametrosPAR_INVEMPRESA.Text+
  ' and pro_codigo ='+MDDetallepro_codigo.Text);
  MDDetalle.Next;
  end;
  MDDetalle.Close;
  end;
  end;

end;

procedure TfrmFactura.ImpTicketFiscalCardNet(aCopia: byte);
var
  arch, ptocaja, puertopeq : textfile;
  s, s1, s2, s3, s4, s5, s6, s7, s8 : array[0..100] of char;
  TFac, MontoItbis, Venta, tCambio : double;
  PuntosPrinc, FactorPrin, TotalPuntos, CalcDesc, NumItbis, TotalDescuento : Double;
  Puntos, a, ln, pg, cantpg : integer;
  Msg1, Msg2, Msg3, Msg4, Forma, ImpItbis, lbItbis : String;
  err, x: integer;
  puerto, parametro, codigoabre : string;
  DriverFiscal1 : TDriverFiscal;
  b : myJSONItem;
begin

with qImpCardNet do begin
Close;
Parameters.ParamByName('emp').Value :=  vl_empfact;
Parameters.ParamByName('suc').Value :=  vl_suc;
Parameters.ParamByName('fac').Value :=  vl_fact;
Parameters.ParamByName('tip').Value :=  vl_tfa;
Parameters.ParamByName('for').Value :=  vl_forma;
Open;
end;
  if ((aCopia > 0 ) and ( Impresora.SustituirCopia = true)) then
    copias := 0
  else
    copias := aCopia;

///  copias := aCopia;
 //// if ckcopia.Checked then copias := 1;


  if FileExists('.\puerto.ini') then
  begin
    assignfile(puertopeq, '.\puerto.ini');
    reset(puertopeq);
    readln(puertopeq, puerto);
  end
  else
    puerto := 'COM1';


  codigoabre := Trim(DM.QParametrosPAR_CODIGO_ABRE_CAJA.Value);

  b := myJSONItem.Create;
  b.Code :=  qImpCardNet.fieldByName('JSON').Value;

  DriverFiscal1 := TDriverFiscal.Create(Self);
  DriverFiscal1.SerialNumber := '27-0163848-435';

  try
    err := DriverFiscal1.IF_OPEN(puerto, 9600);

    if (err < 0 ) then
      begin
        ShowMessage('Error : No hay comunicacion con el printer'+#13+#10+
        'Impresion cancelada');
        exit;
      end;

  //Obtiene los datos de fiscalizaci?n
    err := DriverFiscal1.IF_WRITE('@GetInitData');
    //Obtiene las caracter?sticas fiscales
    err := DriverFiscal1.IF_WRITE('@GetFiscalFeatures');
    //Obtiene los datos de serializaci?n
    err := DriverFiscal1.IF_WRITE('@GetPrinterVersion');

   //Retorna los valores de respuesta del ?ltimo comprobante cerrado
    err := DriverFiscal1.IF_WRITE('@GetLastTicketStatus');
    //arrayMultiUso[17]

    err := DriverFiscal1.IF_WRITE('@OpenNonFiscalReceipt');
    if (err <> 0) then
      begin
        err := DriverFiscal1.IF_ERROR1(0);  //verifica Mecanismo
        err := DriverFiscal1.IF_ERROR2(0);  //Verifica Controlador Fiscal

        StatusFiscal:=IntToBinRec(err,16);    //207
        if StatusFiscal[5] = '1' then
          Application.MessageBox('Se requiere un Cierre Z','Error',MB_OK+MB_ICONERROR);
      end
    else
      begin

  parametro := qImpCardNet.fieldbyname('SUCURSAL').Text;
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+dm.centro(parametro));
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+dm.centro(parametro));
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+b['DataTime'].getStr);
  parametro := IntToStr(b['Transaction']['Reference'].getInt);
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'No. Trans.      : '+parametro);
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'');
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+dm.centro('REGISTRO DE LA TRANSACCION'));
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'No. de Terminal : '+b['TerminalID'].getStr);
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'ID Comerciante  : '+b['MerchantID'].getStr);
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'');
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'TARJETA         : ' +b['Card']['Product'].getStr);
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'TIPO COMPRA     : '+b['Transaction']['LoyaltyDeferredNumber'].getStr);
  parametro  := copy(b['Card']['CardNumber'].getStr,Length(b['Card']['CardNumber'].getStr)-3,Length(b['Card']['CardNumber'].getStr));
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'No. tarjeta     : '+parametro);
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'Modo Entrada    : '+b['Host']['Description'].getStr);
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'APROBADA        : EN LINEA');
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'Cliente         : '+copy(b['Card']['HolderName'].getStr,1,24));
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'');
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'');
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'Monto RD$       : '+qImpCardNet.FieldByName('montosinitbis').text);
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'Tax   RD$       : '+qImpCardNet.FieldByName('monto_itbis').text);
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'Total RD$       : '+qImpCardNet.FieldByName('monto').text);
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'');
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'');
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+DM.CENTRO('APROBADA'));
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'');
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'');
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'No de referencia: '+b['Transaction']['RetrievalReference'].getStr);
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'No Autorizacion : '+b['Transaction']['AuthorizationNumber'].getStr);
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'Fecha            : '+copy(b['Transaction']['DataTime'].getStr,1,10));
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'Hora             : '+trim(copy(b['Transaction']['DataTime'].getStr,12,20)));
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'');
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'');
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+dm.Centro('_________________________'));
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+dm.centro(copy(b['Card']['HolderName'].getStr,1,24)));
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'');
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'');
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+dm.centro('***Original Comercio***'));
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'');
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+dm.centro('***FIN DOCUMENTO NO VENTA***'));
  for x:= 1 to 12 do begin
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'');
  end;

  if codigoabre = 'Termica' then
  err := DriverFiscal1.IF_WRITE('@PaperCut|P');

  err := DriverFiscal1.IF_WRITE('@CloseNonFiscalReceipt|C');
  err := DriverFiscal1.IF_CLOSE;


  DriverFiscal1 := TDriverFiscal.Create(Self);
  DriverFiscal1.SerialNumber := '27-0163848-435';

  
    err := DriverFiscal1.IF_OPEN(puerto, 9600);

    if (err < 0 ) then
      begin
        ShowMessage('Error : No hay comunicacion con el printer'+#13+#10+
        'Impresion cancelada');
        exit;
      end;

  //Obtiene los datos de fiscalizaci?n
    err := DriverFiscal1.IF_WRITE('@GetInitData');
    //Obtiene las caracter?sticas fiscales
    err := DriverFiscal1.IF_WRITE('@GetFiscalFeatures');
    //Obtiene los datos de serializaci?n
    err := DriverFiscal1.IF_WRITE('@GetPrinterVersion');

   //Retorna los valores de respuesta del ?ltimo comprobante cerrado
    err := DriverFiscal1.IF_WRITE('@GetLastTicketStatus');
    //arrayMultiUso[17]

    err := DriverFiscal1.IF_WRITE('@OpenNonFiscalReceipt');
    if (err <> 0) then
      begin
        err := DriverFiscal1.IF_ERROR1(0);  //verifica Mecanismo
        err := DriverFiscal1.IF_ERROR2(0);  //Verifica Controlador Fiscal

        StatusFiscal:=IntToBinRec(err,16);    //207
        if StatusFiscal[5] = '1' then
          Application.MessageBox('Se requiere un Cierre Z','Error',MB_OK+MB_ICONERROR);
      end
    else
    begin
  //Copia Ccliente

  parametro := qImpCardNet.fieldbyname('SUCURSAL').Text;
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+dm.centro(parametro));
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+dm.centro(parametro));
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+b['DataTime'].getStr);
  parametro := IntToStr(b['Transaction']['Reference'].getInt);
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'No. Trans.      : '+parametro);
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'');
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+dm.centro('REGISTRO DE LA TRANSACCION'));
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'No. de Terminal : '+b['TerminalID'].getStr);
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'ID Comerciante  : '+b['MerchantID'].getStr);
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'');
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'TARJETA         : ' +b['Card']['Product'].getStr);
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'TIPO COMPRA     : '+b['Transaction']['LoyaltyDeferredNumber'].getStr);
  parametro  := copy(b['Card']['CardNumber'].getStr,Length(b['Card']['CardNumber'].getStr)-3,Length(b['Card']['CardNumber'].getStr));
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'No. tarjeta     : '+parametro);
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'Modo Entrada    : '+b['Host']['Description'].getStr);
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'APROBADA        : EN LINEA');
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'Cliente         : '+copy(b['Card']['HolderName'].getStr,1,24));
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'');
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'');
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'Monto RD$       : '+qImpCardNet.FieldByName('montosinitbis').text);
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'Tax   RD$       : '+qImpCardNet.FieldByName('monto_itbis').text);
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'Total RD$       : '+qImpCardNet.FieldByName('monto').text);
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'');
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'');
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+DM.CENTRO('APROBADA'));
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'');
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'');
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'No de referencia: '+b['Transaction']['RetrievalReference'].getStr);
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'No Autorizacion : '+b['Transaction']['AuthorizationNumber'].getStr);
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'Fecha            : '+copy(b['Transaction']['DataTime'].getStr,1,10));
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'Hora             : '+trim(copy(b['Transaction']['DataTime'].getStr,12,20)));
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'');
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'');
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+dm.Centro('***COPIA CLIENTE***'));
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'');
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+dm.centro('***FIN DOCUMENTO NO VENTA***'));
  for x:= 1 to 12 do begin
  err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'');
  end;

  if codigoabre = 'Termica' then
  err := DriverFiscal1.IF_WRITE('@PaperCut|P');

  err := DriverFiscal1.IF_WRITE('@CloseNonFiscalReceipt|C');
  err := DriverFiscal1.IF_CLOSE;
end;

end;
  finally
    DriverFiscal1.Destroy;
  end;
end;


procedure TfrmFactura.ImpTicketVmaxFiscalCardNet(aPuerto,
  aVelocidad: Integer; aCopia: byte; aTipo,
  aPrinter_usa_Precioconitbis: string);
var
  arch, puertopeq : textfile;
  s, s1, s2, s3, s4, s5 : array [0..20] of char;
  Tfac, Saldo : double;
  puerto, lbitbis, impcodigo, pro_codigo, Unidad,Und_Medida_Real : string;
  a : integer;
  sPrecio, sDescuento, sDecuentoItbis:Double;
  DescRecGlobal :Double;
  err, copias, x: integer;
  DriverFiscal1 : TvmaxFiscal;
  TipoNCF:byte;
  NombreCajero,TipoFactura,NombreVendedor :string;
  ItbisIncluido:boolean;
  sAjuste:Double;
  sMontoPagado : Double;
  sPorcDescGral:Double;
  sTmp,sStringTmp:String;
  parametro, sNombreCliente,srncCliente:String;
  b : myJSONItem;
begin
with qImpCardNet do begin
Close;
Parameters.ParamByName('emp').Value :=  vl_empfact;
Parameters.ParamByName('suc').Value :=  vl_suc;
Parameters.ParamByName('fac').Value :=  vl_fact;
Parameters.ParamByName('tip').Value :=  vl_tfa;
Parameters.ParamByName('for').Value :=  vl_forma;
Open;
end;
 copias := 0;

 if not Assigned(DriverFiscal1) then
  DriverFiscal1 := TvmaxFiscal.Create();

  try
    pnMsgImpresion.visible :=true;
    lblWait.Caption:='Buscando puerto, espere...';
    Application.ProcessMessages();
    err := DriverFiscal1.OpenPort(aPuerto, aVelocidad);
    if (err <> SUCCESS ) then
      begin
        ShowMessage('Error : No hay comunicacion con el printer'+#13+#10+
        'Impresion cancelada');
        exit;
      end
    else begin //--[0]--
      lblWait.Caption:='Procesando Impresion, Espere...';
      Application.ProcessMessages();

  If err = SUCCESS then begin //--[1]--
  b := myJSONItem.Create;
  b.Code :=  qImpCardNet.fieldByName('JSON').Value;
  err := DriverFiscal1.AbrirNoFiscal(copias,0, 0, '0001', IntToStr(QFacturafac_caja.Value), QFacturaFAC_NOMBRE.Text, QFacturafac_rnc.Text);

  //Ticket Comercio
  parametro := qImpCardNet.fieldbyname('SUCURSAL').Text;
  err :=  DriverFiscal1.LineaComentario( dm.centro(parametro));
  err :=  DriverFiscal1.LineaComentario( dm.centro(qImpCardNet.FieldByName('DIRECCION').text));
  err :=  DriverFiscal1.LineaComentario( b['DataTime'].getStr);
  parametro := IntToStr(b['Transaction']['Reference'].getInt);
  err :=  DriverFiscal1.LineaComentario( 'No. Trans.      : '+parametro);
  err :=  DriverFiscal1.LineaComentario( '');
  err :=  DriverFiscal1.LineaComentario( dm.centro('REGISTRO DE LA TRANSACCION'));
  err :=  DriverFiscal1.LineaComentario( 'No. de Terminal : '+b['TerminalID'].getStr);
  err :=  DriverFiscal1.LineaComentario( 'ID Comerciante  : '+b['MerchantID'].getStr);
  err :=  DriverFiscal1.LineaComentario( '');
  err :=  DriverFiscal1.LineaComentario( 'TARJETA         : ' +b['Card']['Product'].getStr);
  err :=  DriverFiscal1.LineaComentario( 'TIPO COMPRA     : '+b['Transaction']['LoyaltyDeferredNumber'].getStr);
  parametro  := copy(b['Card']['CardNumber'].getStr,Length(b['Card']['CardNumber'].getStr)-3,Length(b['Card']['CardNumber'].getStr));
  err :=  DriverFiscal1.LineaComentario( 'No. tarjeta     : '+parametro);
  err :=  DriverFiscal1.LineaComentario( 'Modo Entrada    : '+b['Host']['Description'].getStr);
  err :=  DriverFiscal1.LineaComentario( 'APROBADA        : EN LINEA');
  err :=  DriverFiscal1.LineaComentario( 'Cliente         : '+copy(b['Card']['HolderName'].getStr,1,24));
  err :=  DriverFiscal1.LineaComentario( ' ');
  err :=  DriverFiscal1.LineaComentario( ' ');
  err :=  DriverFiscal1.LineaComentario( 'Monto RD$       : '+qImpCardNet.FieldByName('montosinitbis').text);
  err :=  DriverFiscal1.LineaComentario( 'Tax   RD$       : '+qImpCardNet.FieldByName('monto_itbis').text);
  err :=  DriverFiscal1.LineaComentario( 'Total RD$       : '+qImpCardNet.FieldByName('monto').text);
  err :=  DriverFiscal1.LineaComentario( ' ');
  err :=  DriverFiscal1.LineaComentario( ' ');
  err :=  DriverFiscal1.LineaComentario( DM.CENTRO('APROBADA'));
  err :=  DriverFiscal1.LineaComentario( ' ');
  err :=  DriverFiscal1.LineaComentario( ' ');
  err :=  DriverFiscal1.LineaComentario( 'No de referencia: '+b['Transaction']['RetrievalReference'].getStr);
  err :=  DriverFiscal1.LineaComentario( 'No Autorizacion : '+b['Transaction']['AuthorizationNumber'].getStr);
  err :=  DriverFiscal1.LineaComentario( 'Fecha            : '+copy(b['Transaction']['DataTime'].getStr,1,10));
  err :=  DriverFiscal1.LineaComentario( 'Hora             : '+trim(copy(b['Transaction']['DataTime'].getStr,12,20)));
  err :=  DriverFiscal1.LineaComentario( ' ');
  err :=  DriverFiscal1.LineaComentario( ' ');
  err :=  DriverFiscal1.LineaComentario( dm.Centro('_________________________'));
  err :=  DriverFiscal1.LineaComentario( dm.centro(copy(b['Card']['HolderName'].getStr,1,24)));
  err :=  DriverFiscal1.LineaComentario( ' ');
  err :=  DriverFiscal1.LineaComentario( ' ');
  err :=  DriverFiscal1.LineaComentario( dm.centro('***Original Comercio***'));
  err :=  DriverFiscal1.LineaComentario( ' ');
  err :=  DriverFiscal1.LineaComentario( dm.centro('***FIN DOCUMENTO NO VENTA***'));
  for x:= 1 to 12 do begin
  err :=  DriverFiscal1.LineaComentario( ' ');
  end;

  lblWait.Caption:='Imprimiendo ticket CardNet, espere...';
  Application.ProcessMessages();
  DriverFiscal1.CerrarNoFiscal();
 end;
 end;
 finally
    lblWait.Caption:='Cerrando puerto';
    Application.ProcessMessages();
    DriverFiscal1.ClosePort();
    DriverFiscal1.Destroy;

    Timer1.Enabled :=false;
    lblWait.Caption:='';
    pnMsgImpresion.visible :=false;
    Application.ProcessMessages();
  end;



  end;

procedure TfrmFactura.QDetalleDET_SECUENCIAValidate(Sender: TField);
begin
IF QDetalleDET_DESCUENTO.Value > 0 THEN BEGIN
if QFacturaporc_desc_gral.Value > 0 then
begin
MessageDlg('NO PUEDE APLICAR DESCUENTO POR ITEMS,'+char(13)+
           'YA EXISTE EL DESCUENTO GENERAL', mterror, [mbok],0);
abort;
end;
end;
end;

procedure TfrmFactura.dbCajaChange(Sender: TObject);
begin
 if dbCaja.Text<>'' then
  begin
    Text := dbCaja.Text;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select c.caj_nombre, c.caj_codigo,');
    dm.Query1.sql.add('case when (p.par_inv_ventas = 1) and (isnull(c.alm_codigo,0)>0) then isnull(c.alm_codigo,0) else isnull(s.alm_codigo,0) end alm_codigo');
    dm.Query1.sql.add('from cajas c');
    dm.Query1.sql.add('inner join parametros p on c.emp_codigo = p.emp_codigo');
    dm.Query1.sql.add('inner join sucursales s on c.emp_codigo = s.emp_codigo');
    dm.Query1.sql.add('where c.emp_codigo = :emp and c.caj_codigo = :caj and s.suc_codigo = :suc');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('caj').Value := StrToInt(Text);
    dm.Query1.Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      tcaja.text := ''
    else
    begin
     // QFacturaCAJ_CODIGO.Value := dm.Query1.fieldbyname('caj_codigo').Value;
      tcaja.text := dm.Query1.fieldbyname('caj_nombre').asstring;
      QFacturaALM_CODIGO.Value := dm.Query1.fieldbyname('alm_codigo').Value;
    end;
  end
  else
    tcaja.text := '';
end;





procedure TfrmFactura.ImpTicketFiscal(aCopia:byte = 0);
var


  arch, puertopeq : textfile;
  s, s1, s2, s3, s4, s5 : array [0..20] of char;
  Tfac, Saldo : double;
  puerto, lbitbis, impcodigo, pro_codigo, Unidad : string;
  a : integer;
   copias: integer;
  DriverFiscal1 : TDriverFiscal;
  s_SubTotal:String;
  v_subtotal,v_diferencia:Double;
  v_TotalPagado :double;
  v_DescItems:Double;
  s_TotalFacturado,s_Devuelta:String;
  s_NIF : String;
  v_TAMANO_MAX_DESCRIP: Word;
  tmpDescripcion:String;
  vLogo:Word;
  v_descripItem,v_descripItem1,v_descripItem2,v_descripItem3 :String;


    xCopias : byte;
  stringTMP,stringTMP2,stringTipoITBIS:String;
  x:byte;
  NIF:String;
   s_TotalItbis_From_Printer:String;
   v_TotalItbis_From_Printer:double;
  ///---reimpresion

procedure re_ImprimirTicketEpson();
var
  arch, ptocaja : textfile;
  s, s1, s2, s3, s4 : array[0..100] of char;
  TFac, MontoItbis, Venta, tCambio,subTotal,tItbis : double;
  PuntosPrinc, FactorPrin, TotalPuntos, CalcDesc, NumItbis, TotalDescuento : Double;
  Puntos, pg, cantpg : integer;
  Msg1, Msg2, Msg3, Msg4, Puerto, Forma, ImpItbis, lbItbis, codigoabre, pregunta : String;
  Devuelta:String;
  StatusFiscal:String;
  vTotalgral,v_ItbisDescGral:Double;

begin
  vTotalgral:=0;
  SetLength(arrayMultiUso, 17);

    //Obtiene los datos de fiscalizaci?n
    err := DriverFiscal1.IF_WRITE('@GetInitData');
    arrayMultiUso[0] := DriverFiscal1.IF_READ(1);
    arrayMultiUso[1] := DriverFiscal1.IF_READ(2);
    arrayMultiUso[2] := DriverFiscal1.IF_READ(3);
    arrayMultiUso[3] := DriverFiscal1.IF_READ(4);
    //Obtiene las caracter?sticas fiscales
    err := DriverFiscal1.IF_WRITE('@GetFiscalFeatures');
    arrayMultiUso[4] := DriverFiscal1.IF_READ(1); //--Tauru
    arrayMultiUso[5] := DriverFiscal1.IF_READ(2); //
    arrayMultiUso[6] := DriverFiscal1.IF_READ(3); //3
    arrayMultiUso[7] := DriverFiscal1.IF_READ(4); //0
    arrayMultiUso[8] := DriverFiscal1.IF_READ(5); //0
    arrayMultiUso[9] := DriverFiscal1.IF_READ(6);
    arrayMultiUso[10] := DriverFiscal1.IF_READ(7);
    arrayMultiUso[11] := DriverFiscal1.IF_READ(8);
    arrayMultiUso[12] := DriverFiscal1.IF_READ(9);
    //Obtiene los datos de serializaci?n
    err := DriverFiscal1.IF_WRITE('@GetPrinterVersion');
    arrayMultiUso[13] := DriverFiscal1.IF_READ(1);  //Serie
    arrayMultiUso[14] := DriverFiscal1.IF_READ(2);  //id

   //Retorna los valores de respuesta del ?ltimo comprobante cerrado
    err := DriverFiscal1.IF_WRITE('@GetLastTicketStatus');
    arrayMultiUso[15] := DriverFiscal1.IF_READ(1);  //NIF
    //arrayMultiUso[17]
     Devuelta :=  DriverFiscal1.IF_READ(3);  //DEVUELTA
    NIF :=arrayMultiUso[15];

    err := DriverFiscal1.IF_WRITE('@OpenNonFiscalReceipt');
    if (err <> 0) then
      begin
        err := DriverFiscal1.IF_ERROR1(0);  //verifica Mecanismo
        err := DriverFiscal1.IF_ERROR2(0);  //Verifica Controlador Fiscal

        StatusFiscal:=IntToBinRec(err,16);    //207
        if StatusFiscal[5] = '1' then
          Application.MessageBox('Se requiere un Cierre Z','Error',MB_OK+MB_ICONERROR);
      end
    else
      begin
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select par_ticket_itbis from parametros');
        dm.Query1.SQL.Add('where emp_codigo = :emp');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
        dm.Query1.Open;
        ImpItbis := dm.Query1.FieldByName('par_ticket_itbis').AsString;

        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'            *** COPIA DE DOCUMENTO FISCAL ***');
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+arrayMultiUso[0]);
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'RNC '+arrayMultiUso[1]);
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+arrayMultiUso[2]);
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'            COMPROBANTE AUTORIZADO POR DGII');
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+FormatDateTime('dd/mm/yyyy hh:mm:ss', RFactura.QFacturaFAC_FECHA.value)+' '+RFactura.QFacturaFAC_HORA.AsString);
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'NIF: '+NIF);
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'NCF: '+RFactura.QFacturaNumeroCF.value);
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'-------------------------------------------------------');

        case RFactura.QFacturatip_codigo.Value of
          1:err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'              FACTURA PARA CONSUMIDOR FINAL');
          2:err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'              FACTURA PARA CREDITO FISCAL');
          3:err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'              FACTURA PARA CREDITO FISCAL');
          4:err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'              FACTURA PARA CREDITO FISCAL');
        end;


        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'-------------------------------------------------------');
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'DESCRIPCION                 ITBIS           VALOR');
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'-------------------------------------------------------');
        tItbis :=0;
        v_subtotal:=0;
        //----IMPRIME iNICIO CUERPO
        RFactura.QDetalle.DisableControls;
        RFactura.QDetalle.First;
        while not RFactura.QDetalle.eof do
        begin //--[0]--
          v_DescItems:=0;
          v_descripItem1 :='';  v_descripItem2 :=''; v_descripItem3 := '';
          tmpDescripcion:='';  v_descripItem :='';

          MontoItbis := RFactura.QDetalleDET_ITBIS.value ;


          if MontoItbis >= 18 then
            stringTipoITBIS :='  I2'
          else
            if MontoItbis >= 16 then
              stringTipoITBIS :='  I1'
            else
              if MontoItbis >= 13 then
                stringTipoITBIS :='  I5'
              else
                if MontoItbis >= 11 then
                  stringTipoITBIS :='  I4'
                else
                  if MontoItbis >= 8 then
                    stringTipoITBIS :='  I3'
                  else
                    stringTipoITBIS :='  E';



          //--[000]--
          //--------------------------------------------------------------------------
          {--El objetivo de este bloque de codidog es resolver el sigte. problema
            la impresora epson solo admite 22 carateres, pero si una descripcion
            es muy grande y pasa de los 22, entonces no se imprime el resto de la
            informacion, entonces lo que hacesmo es dividir la descripcion en
            3 grupos para poder imprimir la descripcion completa de manera parcial
            en la definicion de la ayuda podra notar que las descripciones van desde
            Descripcion hasta Descripci?n extra #9, pero el titulo de descripcion
            se imprime ultimo a las descripciones extra . Aqui capturamo el valor
            de la descripcion del producto en base de datos, y lo asignamos a una
            variable y a esta la dividimos.  Manuel Titin Abril/2018}

          v_descripItem1 := EmptyStr;
          v_descripItem2 := EmptyStr;
          v_descripItem3 := EmptyStr;
          tmpDescripcion:= TrimLeft(TrimRight(RFactura.QDetallePRO_NOMBRE.value));

          if Length( tmpDescripcion ) <= v_TAMANO_MAX_DESCRIP then
            v_descripItem := tmpDescripcion
          else
            begin //-[*]--
              if Length( tmpDescripcion ) > v_TAMANO_MAX_DESCRIP then
                begin  //-[*1]--
                  v_descripItem1 := copy(tmpDescripcion,1,v_TAMANO_MAX_DESCRIP);
                  v_descripItem2 := copy(tmpDescripcion,23,Length( tmpDescripcion ));

                  if Length( v_descripItem2 ) > v_TAMANO_MAX_DESCRIP then
                    begin     //-[*1.1]--
                      v_descripItem3 := copy(v_descripItem2,23,Length(v_descripItem2)) ;
                      v_descripItem2 := copy(v_descripItem2,1,v_TAMANO_MAX_DESCRIP) ;
                      v_descripItem := v_descripItem3;
                      v_descripItem3 :='';
                    end //-[*1.1]--
                  else
                    begin  //-[*1.2]--
                      v_descripItem := v_descripItem2;
                      v_descripItem2 :='';
                    end;  //-[*1.2]--
                end //-[*1]--

            end; //-[*]--
          //--------------------------------------------------------------------------


          if dm.QParametrospar_itbisincluido.Value = 'True' then
          begin //--[1]--

            if ( RFactura.QFacturatip_codigo.Value < 4 ) then
            begin
              stringTMP := FormatFloat(',,,0.00',RFactura.QDetalleDET_CANTIDAD.value) + ' x '+
                           FormatFloat(',,,0.00',RFactura.QDetalleDET_PRECIO.value);
              err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+stringTMP);

              if not (RFactura.QDetallePRO_RORIGINAL.IsNull) then
                err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+RFactura.QDetallePRO_RORIGINAL.VALUE);
              if trim(v_descripItem1) <> EmptyStr then
                err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+v_descripItem1);
              if trim(v_descripItem2) <> EmptyStr then
                err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+v_descripItem2);
              if trim(v_descripItem3) <> EmptyStr then
                err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+v_descripItem3);

              subtotal := (RFactura.QDetalleDET_PRECIO.value - (RFactura.QDetalleDET_PRECIO.value /(1+(MontoItbis/100)))) * RFactura.QDetalleDET_CANTIDAD.value;
              tItbis := tItbis + subtotal;
              v_subtotal := v_subtotal + (RFactura.QDetalleDET_PRECIO.value * RFactura.QDetalleDET_CANTIDAD.value);
              Msg1 :=FormatFloat(',,,0.00',subtotal);
              Msg1:= dm.PAD(' ','L',15,Msg1);

              Msg2 :=FormatFloat(',,,0.00', (RFactura.QDetalleDET_PRECIO.value * RFactura.QDetalleDET_CANTIDAD.value));
              Msg2:= dm.PAD(' ','L',15,Msg2);


             Msg3:=dm.PAD(' ','R',22,v_descripItem);
              stringTMP2 := Msg3+Msg1+Msg2+stringTipoITBIS;
              err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+stringTMP2);


            end
            else if RFactura.QFacturatip_codigo.Value = 4 then
            begin

              stringTMP := FormatFloat(',,,0.00', RFactura.QDetalleDET_CANTIDAD.value) + ' x '+
                           FormatFloat(',,,0.00', RFactura.QDetalleDET_PRECIO.value);

              err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+stringTMP);
              if not (RFactura.QDetallePRO_RORIGINAL.IsNull) then
                err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+RFactura.QDetallePRO_RORIGINAL.VALUE);
              if trim(v_descripItem1) <> EmptyStr then
                err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+v_descripItem1);
              if trim(v_descripItem2) <> EmptyStr then
                err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+v_descripItem2);
              if trim(v_descripItem3) <> EmptyStr then
                err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+v_descripItem3);

              Msg1 :=FormatFloat(',,,0.00', RFactura.QDetalleDET_ITBIS.value);
              Msg1:=dm.PAD(' ','L',15,Msg1);
              tItbis := tItbis + RFactura.QDetalleDET_ITBIS.value ;
              v_subtotal := v_subtotal + (RFactura.QDetalledet_Precio.value + ((RFactura.QDetalledet_Precio.value*MontoItbis)/100) * RFactura.QDetalleDET_CANTIDAD.value);
              Msg2 :=FormatFloat(',,,0.00', (RFactura.QDetalledet_Precio.value + ((RFactura.QDetalledet_Precio.value*MontoItbis)/100) * RFactura.QDetalleDET_CANTIDAD.value));
              Msg2:=dm.PAD(' ','L',15,Msg2);
              ////Msg3:=dm.PAD(' ','R',22,copy(trim(RFactura.QDetallePRO_NOMBRE.value),1,22));

              ////err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+Msg3+Msg1+Msg2+' '+stringTipoITBIS);

              Msg3:=dm.PAD(' ','R',22,v_descripItem);
              stringTMP2 := Msg3+Msg1+Msg2+stringTipoITBIS;
              err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+stringTMP2);
            end;

            if RFactura.QDetalleDET_DESCUENTO.Value > 0 then
            begin
              v_DescItems:= RFactura.QDetalleTotalDescuento.Value * ((RFactura.QDetalleDET_ITBIS.Value /100)+1) ;
              stringTMP := FormatFloat(',,,0.00', RFactura.QDetalleDET_CANTIDAD.value) + ' x '+
                           FormatFloat(',,,0.00', v_DescItems/RFactura.QDetalleDET_CANTIDAD.value);

              err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+stringTMP);
              v_DescItems := v_DescItems ;
              tItbis := tItbis +(-(v_DescItems - (v_DescItems / (1+(RFactura.QDetalleDET_ITBIS.Value/100)))));
              v_subtotal := v_subtotal + ( - v_DescItems);

              Msg1 :=FormatFloat(',,,0.00', (v_DescItems - (v_DescItems / (1+(RFactura.QDetalleDET_ITBIS.Value/100))))) + '-';
              Msg1:= dm.PAD(' ','L',15,Msg1);

              Msg2 :=FormatFloat(',,,0.00', v_DescItems)+'-';
              Msg2:=dm.PAD(' ','L',15,Msg2);
              Msg3:=dm.PAD(' ','R',22,'DESC. '+FormatFloat(',,,0.00',RFactura.QDetalleDET_DESCUENTO.Value)+'%');

              stringTMP2 := Msg3+ Msg1+Msg2+ stringTipoITBIS;
              err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+stringTMP2);
            end;
          end  //--[1]--
          else
          begin //--[2]-- itbis no incluido.
            err := DriverFiscal1.IF_WRITE('@TicketItem|'+copy(trim(RFactura.QDetallePRO_NOMBRE.value),1,v_TAMANO_MAX_DESCRIP)+'|'+RFactura.QDetalleDET_CANTIDAD.AsString+'|'+
                   floattostr(RFactura.QDetalleDET_PRECIO.value + ((RFactura.QDetalleDET_PRECIO.value * RFactura.QDetalleDET_ITBIS.Value)/100) )+'|'+FloatToStr(RFactura.QDetalleDET_ITBIS.Value));

            if RFactura.QDetalleDET_DESCUENTO.Value > 0 then
            begin
              err := DriverFiscal1.IF_WRITE('@TicketItem|'+copy(trim(RFactura.QDetallePRO_NOMBRE.value),1,v_TAMANO_MAX_DESCRIP)+'|'+RFactura.QDetalleDET_CANTIDAD.AsString+'|'+
              floattostr(RFactura.QDetalleTotalDescuento.Value + ((RFactura.QDetalleTotalDescuento.value * RFactura.QDetalleDET_ITBIS.Value)/100) )+'|'+FloatToStr(RFactura.QDetalleDET_ITBIS.Value)+'|D');
            end;
          end; //--[2]--
          RFactura.QDetalle.next;
        end;  //--[0]--
        RFactura.QDetalle.First;
        RFactura.QDetalle.EnableControls;

        //----IMPRIME fIN CUERPO
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'-------------------------------------------------------');
        ///Msg1:=dm.PAD(' ','L',15,FormatFloat(',,,0.00', RFactura.QFacturaFAC_ITBIS.value));
        Msg1:=dm.PAD(' ','L',15,FormatFloat(',,,0.00',tItbis));
        Msg2 :=dm.PAD(' ','L',15,FormatFloat(',,,0.00',v_subtotal));

        Msg3:= dm.PAD(' ','R',22,'Subtotal')+Msg1+Msg2;
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+Msg3);

        vTotalgral:= RFactura.QFacturaFAC_TOTAL.value;
        if (v_subtotal <> vTotalgral) and
           (RFactura.QFacturaTdesc_gral.AsFloat = 0) then
            vTotalgral:= v_subtotal;

        Msg2 :=dm.PAD(' ','L',15,FormatFloat(',,,0.00', vTotalgral));

        v_ItbisDescGral :=tItbis;
        if RFactura.QFacturaTdesc_gral.AsFloat > 0 then
          begin
               if RFactura.QFacturaFAC_ITBIS.Value > 0 then
               Msg3 :=FormatFloat(',,,0.00',RFactura.QFacturaTdesc_gral.AsFloat*1.18) else
               Msg3 :=FormatFloat(',,,0.00',RFactura.QFacturaTdesc_gral.AsFloat);
               Msg3:=dm.PAD(' ','R',37,'Desc. Global : '+FormatFloat(',,,0.00',RFactura.QFacturaporc_desc_gral.value)+'%') +dm.PAD(' ','L',15,Msg3)+'-';
               err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+Msg3);

               v_ItbisDescGral := tItbis / ((RFactura.QFacturaporc_desc_gral.value / 100) + 1);
          end;


        //Msg1:=dm.PAD(' ','L',15,FormatFloat(',,,0.00', RFactura.QFacturaFAC_ITBIS.value));
        if v_TotalItbis_From_Printer > 0 then
          Msg1:=dm.PAD(' ','L',15,FormatFloat(',,,0.00',v_TotalItbis_From_Printer))
        else Msg1:=dm.PAD(' ','L',15,FormatFloat(',,,0.00',v_ItbisDescGral));

        Msg3:=dm.PAD(' ','R',22,'TOTAL')+Msg1+Msg2;
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+Msg3);


        Query1.close;
        Query1.SQL.clear;
        Query1.SQL.add('select PAR_TKMENSAJE1,PAR_TKMENSAJE2,PAR_TKMENSAJE3,');
        Query1.SQL.add('PAR_TKMENSAJE4,PAR_TKCLAVEDELETE,PAR_TKCLAVEMODIFICA');
        Query1.SQL.add('from parametros where emp_codigo = :emp');
        Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.AsInteger;
        Query1.open;
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+ ' ');

        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select f.fpa_codigo, upper(f.fpa_nombre) nombre, sum(p.for_monto) as monto');
        dm.Query1.SQL.Add('from formaspago f, facformapago p');
        dm.Query1.SQL.Add('where f.emp_codigo = p.emp_codigo');
        dm.Query1.SQL.Add('and f.fpa_codigo = p.fpa_codigo');
        dm.Query1.SQL.Add('and p.emp_codigo = :emp');
        dm.Query1.SQL.Add('and p.tfa_Codigo = :tfa');
        dm.Query1.SQL.Add('and p.fac_forma  = :for');
        dm.Query1.SQL.Add('and p.fac_numero = :num');
        dm.Query1.SQL.Add('and p.suc_codigo = :suc');
        dm.Query1.SQL.Add('group by f.fpa_codigo, f.fpa_nombre');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        dm.Query1.Parameters.ParamByName('tfa').Value := RFactura.QFacturaTFA_CODIGO.Value;
        dm.Query1.Parameters.ParamByName('for').Value  := RFactura.QFacturaFAC_FORMA.Value;
        dm.Query1.Parameters.ParamByName('num').Value := RFactura.QFacturaFAC_NUMERO.Value;
        dm.Query1.Parameters.ParamByName('suc').Value := RFactura.QFacturaSUC_CODIGO.Value;
        dm.Query1.Open;

        v_TotalPagado :=0;
        //--[busca todos los pagos]--
        dm.Query1.DisableControls;
        dm.Query1.First;
        while not dm.Query1.Eof do
        begin
          v_TotalPagado := v_TotalPagado + dm.Query1.FieldByName('monto').Value+QFacturafac_devuelto.Value;
          x:= dm.Query1.FieldByName('fpa_codigo').value -1;
          if x > 14 then x := 7;  // = a Otros 1
            Msg2:= formapago[x];


          Msg1:=dm.PAD(' ','L',15,FormatFloat(',,,0.00',RoundTo(dm.Query1.FieldByName('monto').Value+RFactura.QFacturafac_devuelto.Value,-2))) ;
          Msg2:=dm.PAD(' ','R',37,Msg2);
          err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+Msg2+Msg1);

          dm.Query1.Next;
        end;

        IF QFacturafac_devuelto.Value > 0 THEN
        Devuelta := QFacturaFAC_DEVUELTO.Text;

        Devuelta:= FormatCurr('#,0.00',RoundTo(RFactura.QFacturafac_devuelto.Value,-2));

        if ((Devuelta = '') or ( Devuelta = '.0') or (Devuelta = '0')) then
          Devuelta := '0.00';

        Devuelta:=dm.PAD(' ','L',15,Devuelta);
       /// err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+ ' ');
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+dm.PAD(' ','R',37,'CAMBIO')+Devuelta);
        err := DriverFiscal1.IF_WRITE('@PaperFeed|1');

        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|Factura #: '+RFactura.QFacturaFAC_NUMERO.AsString);
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|Cliente  : '+RFactura.QFacturaFAC_NOMBRE.AsString);
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|Vendedor : '+tVendedor.text);
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|Caja     : '+RFactura.QFacturafac_caja.AsString);

        if (actbalance = 'True') then
        begin
           err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+ ' ');
           err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+ ' ');
           err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|     -------------------------');
           err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|            Firma Clte.');
        end;

        err := DriverFiscal1.IF_WRITE('@PaperFeed|1');
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+copy(RFactura.QFacturaFAC_MENSAJE1.AsString,1,42));
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+copy(RFactura.QFacturaFAC_MENSAJE2.AsString,1,42));
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+copy(RFactura.QFacturaFAC_MENSAJE3.AsString,1,42));
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'-------------------------------------------------------');
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'NIF: '+NIF);
        err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+arrayMultiUso[13]+'               '+
                                       arrayMultiUso[14] +'          '+
                                       'V: '+arrayMultiUso[6]+'.'+arrayMultiUso[7]+arrayMultiUso[8]+'  '+arrayMultiUso[4]);
        ////err := DriverFiscal1.IF_WRITE('@PrintNonFiscalText|'+'            *** FIN DOCUMENTO NO VENTA ***');
        err := DriverFiscal1.IF_WRITE('@CloseNonFiscalReceipt|C');
    end;

 end;

  ///--fin re-impresion

begin
 v_TAMANO_MAX_DESCRIP:=22;
  v_TotalItbis_From_Printer :=0;
  if ((aCopia > 0 ) and ( Impresora.SustituirCopia = true)) then
    copias := 0
  else
    copias := aCopia;

///  copias := aCopia;
 //// if ckcopia.Checked then copias := 1;

  if dm.QParametrospar_imprime_logo.Value = 'True' then
    vLogo :=1
  else
    vLogo :=0;

  if FileExists('.\puerto.ini') then
  begin
    assignfile(puertopeq, '.\puerto.ini');
    reset(puertopeq);
    readln(puertopeq, puerto);
  end
  else
    puerto := 'COM1';



  application.CreateForm(tRFactura, RFactura);
  RFactura.QFactura.Parameters.ParamByName('emp').Value    := dm.QEmpresasEMP_CODIGO.value;
  RFactura.QFactura.Parameters.ParamByName('tipo').Value   := QFacturaTFA_CODIGO.value;
  RFactura.QFactura.Parameters.ParamByName('forma').Value   := QFacturaFAC_FORMA.value;
  RFactura.QFactura.Parameters.ParamByName('numero').Value := QFacturaFAC_NUMERO.value;
  RFactura.QFactura.Parameters.ParamByName('suc').Value := QFacturaSUC_CODIGO.value;
  RFactura.QFactura.open;
  RFactura.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
  RFactura.QDetalle.open;
  RFactura.QFormasPago.Open;

  DriverFiscal1 := TDriverFiscal.Create(Self);
  DriverFiscal1.SerialNumber := '27-0163848-435';

  try
    err := DriverFiscal1.IF_OPEN(puerto, 9600);

    if (err < 0 ) then
      begin
        ShowMessage('Error : No hay comunicacion con el printer'+#13+#10+
        'Impresion cancelada');
        exit;
      end;

    //  DriverFiscal1.IF_TRACE(1) ; //esta linea es para ver un log con lo que hace el printer
  {
  'Habilitar la depuraci?n y captura de comandos enviados al archivo debug.log
  IF_TRACE(1)
  'Deshabilitar el debugging
  IF_TRACE(0)

  }
  if RFactura.QFacturatip_codigo.Value = 1 then //consumidor final
   begin
     err := DriverFiscal1.IF_WRITE('@TicketOpen|a|0001|'+FormatFloat('000', RFactura.QFacturafac_caja.Value)+'|'+
           RFactura.QFacturaNumeroCF.AsString+'||||P|'+inttostr(copias)+'|'+IntToStr(vLogo));
   end
  else if RFactura.QFacturatip_codigo.Value = 2 then //con Valor Fiscal
  begin


    err := DriverFiscal1.IF_WRITE('@TicketOpen|b|0001|'+FormatFloat('000', RFactura.QFacturafac_caja.Value)+'|'+
           RFactura.QFacturaNumeroCF.AsString+'|'+ Copy(Trim(RFactura.QFacturaFAC_NOMBRE.AsString),1,40) +'|'+RFactura.QFacturafac_rnc.AsString+
           '||P|'+inttostr(copias)+'|'+IntToStr(vLogo));
  end
  else if RFactura.QFacturatip_codigo.Value = 3 then //Gubernamental
  begin
    err := DriverFiscal1.IF_WRITE('@TicketOpen|b|0001|'+FormatFloat('000', RFactura.QFacturafac_caja.Value)+'|'+
           RFactura.QFacturaNumeroCF.AsString+'|'+Copy(Trim(RFactura.QFacturaFAC_NOMBRE.AsString),1,40)+'|'+RFactura.QFacturafac_rnc.AsString+
           '||P|'+inttostr(copias)+'|'+IntToStr(vLogo));
  end
  else if RFactura.QFacturatip_codigo.Value = 4 then //Regimen Especial
  begin
    err := DriverFiscal1.IF_WRITE('@TicketOpen|f|0001|'+FormatFloat('000', RFactura.QFacturafac_caja.Value)+'|'+
           RFactura.QFacturaNumeroCF.AsString+'|'+Copy(Trim(RFactura.QFacturaFAC_NOMBRE.AsString),1,40)+'|'+RFactura.QFacturafac_rnc.AsString+
           '||P|'+inttostr(copias)+'|'+IntToStr(vLogo));
  end;

  if err <> 0 then
  begin
    err:=DriverFiscal1.IF_ERROR2(12);

    if  ( err > 0) then begin
      ShowMessage('Se requiere un cierre Z'+#13+#10+
                  'Impresion cancelada');
      exit;
    end;
  end;


  RFactura.QDetalle.DisableControls;
  RFactura.QDetalle.First;
  while not RFactura.QDetalle.eof do
  begin //--[0]--
    v_DescItems:=0;
    v_descripItem1 :='';  v_descripItem2 :=''; v_descripItem3 := '';
    tmpDescripcion:='';  v_descripItem :='';


    //--[000]--
    //--------------------------------------------------------------------------
    {--El objetivo de este bloque de codidog es resolver el sigte. problema
      la impresora epson solo admite 22 carateres, pero si una descripcion
      es muy grande y pasa de los 22, entonces no se imprime el resto de la
      informacion, entonces lo que hacesmo es dividir la descripcion en
      3 grupos para poder imprimir la descripcion completa de manera parcial
      en la definicion de la ayuda podra notar que las descripciones van desde
      Descripcion hasta Descripci?n extra #9, pero el titulo de descripcion
      se imprime ultimo a las descripciones extra . Aqui capturamo el valor
      de la descripcion del producto en base de datos, y lo asignamos a una
      variable y a esta la dividimos.  Manuel Titin Abril/2018}

    tmpDescripcion:= TrimLeft(TrimRight(RFactura.QDetallePRO_NOMBRE.value));

    if Length( tmpDescripcion ) <= v_TAMANO_MAX_DESCRIP then
      v_descripItem := tmpDescripcion
    else
      begin //-[*]--
        if Length( tmpDescripcion ) > v_TAMANO_MAX_DESCRIP then
          begin  //-[*1]--
            v_descripItem1 := copy(tmpDescripcion,1,v_TAMANO_MAX_DESCRIP);
            v_descripItem2 := copy(tmpDescripcion,23,Length( tmpDescripcion ));

            if Length( v_descripItem2 ) > v_TAMANO_MAX_DESCRIP then
              begin     //-[*1.1]--
                v_descripItem3 := copy(v_descripItem2,23,Length(v_descripItem2)) ;
                v_descripItem2 := copy(v_descripItem2,1,v_TAMANO_MAX_DESCRIP) ;
                v_descripItem := v_descripItem3;
                v_descripItem3 :='';
              end //-[*1.1]--
            else
              begin  //-[*1.2]--
                v_descripItem := v_descripItem2;
                v_descripItem2 :='';
              end;  //-[*1.2]--
          end //-[*1]--

      end; //-[*]--
    //--------------------------------------------------------------------------

   { v_descripItem1 :='Linea 1 - Impresora epson de carro ancho';
    v_descripItem2 :='Linea 2 - Impresora epson de carro ancho';
    v_descripItem3 :='Linea 3 - Impresora epson de carro ancho';
    v_descripItem  :='Linea 0 - Impresora epson de carro ancho';   }

   { v_descripItem1 :='Linea 1 - Impresora 22';
    v_descripItem2 :='Linea 2 - Impresora 22';
    v_descripItem3 :='Linea 3 - Impresora 22';
    v_descripItem  :='Linea 0 - Impresora 22';
    }

    if dm.QParametrospar_itbisincluido.Value = 'True' then
    begin //--[1]--

      if ( RFactura.QFacturatip_codigo.Value < 4 ) then
      begin


        {err := DriverFiscal1.IF_WRITE('@TicketItem|'+
                 copy(trim(RFactura.QDetallePRO_NOMBRE.value),1,v_TAMANO_MAX_DESCRIP)+'|'+
                 RFactura.QDetalleDET_CANTIDAD.AsString+'|'+
                 floattostr(RFactura.QDetalleDET_PRECIO.value)+'|'+
                 FloatToStr(RFactura.QDetalleDET_ITBIS.Value)+'|||'+
                 RFactura.QDetallePRO_RORIGINAL.VALUE+'|'+
                 aqui); }

         err := DriverFiscal1.IF_WRITE('@TicketItem|'+
                 v_descripItem+'|'+
                 RFactura.QDetalleDET_CANTIDAD.AsString+'|'+
                 floattostr(RFactura.QDetalleDET_PRECIO.value)+'|'+
                 FloatToStr(RFactura.QDetalleDET_ITBIS.Value)+'|||'+
                 RFactura.QDetallePRO_RORIGINAL.VALUE+'|'+
                 v_descripItem1+'|'+
                 v_descripItem2+'|'+
                 v_descripItem3);

      end
      else if RFactura.QFacturatip_codigo.Value = 4 then
      begin
        err := DriverFiscal1.IF_WRITE('@TicketItem|'+
                 v_descripItem+'|'+
                 RFactura.QDetalleDET_CANTIDAD.AsString+'|'+
                 floattostr(RFactura.QDetalleDET_PRECIO.value)+'|'+
                 FloatToStr(RFactura.QDetalleDET_ITBIS.Value)+'|||'+
                 RFactura.QDetallePRO_RORIGINAL.VALUE +'|'+
                 v_descripItem1+'|'+
                 v_descripItem2+'|'+
                 v_descripItem3);
      end;

      if RFactura.QDetalleDET_DESCUENTO.Value > 0 then
      begin
        v_DescItems:= 0;
        v_DescItems:= RFactura.QDetalleTotalDescuento.Value * ((RFactura.QDetalleDET_ITBIS.Value /100)+1) ;
        err := DriverFiscal1.IF_WRITE('@TicketItem|'+
               copy(trim(RFactura.QDetallePRO_NOMBRE.value),1,v_TAMANO_MAX_DESCRIP)+'|'+RFactura.QDetalleDET_CANTIDAD.AsString+'|'+
               floattostr(v_descItems/RFactura.QDetalleDET_CANTIDAD.Value)+'|'+FloatToStr(RFactura.QDetalleDET_ITBIS.Value)+'|D');
      end;

    end  //--[1]--
    else
    begin //--[2]-- itbis no incluido.
      err := DriverFiscal1.IF_WRITE('@TicketItem|'+
                 v_descripItem+'|'+
                 RFactura.QDetalleDET_CANTIDAD.AsString+'|'+
                 floattostr((RFactura.QDetalleTotalDescuento.Value)*(1+(RFactura.QDetalleDET_ITBIS.Value/100)))+'|||'+
                 RFactura.QDetallePRO_RORIGINAL.VALUE+'|'+
                 v_descripItem1+'|'+
                 v_descripItem2+'|'+
                 v_descripItem3);


    { err := DriverFiscal1.IF_WRITE('@TicketItem|'+copy(trim(RFactura.QDetallePRO_NOMBRE.value),1,v_TAMANO_MAX_DESCRIP)+'|'+
                     RFactura.QDetalleDET_CANTIDAD.AsString+'|'+
                     floattostr(RFactura.QDetalleDET_PRECIO.value + ((RFactura.QDetalleDET_PRECIO.value * RFactura.QDetalleDET_ITBIS.Value)/100) )+'|'+
                     FloatToStr(RFactura.QDetalleDET_ITBIS.Value));   }

      if RFactura.QDetalleDET_DESCUENTO.Value > 0 then
      begin


        err := DriverFiscal1.IF_WRITE('@TicketItem|'+copy(trim(RFactura.QDetallePRO_NOMBRE.value),1,v_TAMANO_MAX_DESCRIP)+'|'+RFactura.QDetalleDET_CANTIDAD.AsString+'|'+
        floattostr(RFactura.QDetalleTotalDescuento.Value + ((RFactura.QDetalleTotalDescuento.value * RFactura.QDetalleDET_ITBIS.Value)/100) )+'|'+FloatToStr(RFactura.QDetalleDET_ITBIS.Value)+'|D');
      end;
    end; //--[2]--
    RFactura.QDetalle.next;
  end;  //--[0]--
  RFactura.QDetalle.First;
  RFactura.QDetalle.EnableControls;

  //Busca el sub-Total

 { if err <> 0 then
  begin
    ShowMessage('Se produjo un error  con el printer'+#13+#10+
                'Impresion cancelada');
    exit;
  end;}

    if (err <> 0) then
      begin
        err := DriverFiscal1.IF_ERROR1(0);  //verifica Mecanismo
        //err := DriverFiscal1.IF_ERROR2(0);  //Verifica Controlador Fiscal

        statusMPrinter:=IntToBinRec(err,16);    //207
        if ((statusMPrinter[4] = '1') or
            (statusMPrinter[6] = '1') or
            (statusMPrinter[12] = '1') or
            (statusMPrinter[15] = '1') ) then
         begin
            Application.MessageBox(pchar('Impresora fuera de Linea'+#13+#12+
                                 'Favor Vericar Papel'),'Error',MB_OK+MB_ICONERROR);
                                 exit;
         end
         else
           begin
    ShowMessage('Se produjo un error  con el printer'+#13+#10+
                'Impresion cancelada');
    exit;
  end;
      end;


  err := DriverFiscal1.IF_WRITE('@TicketSubtotal|P');
  s_subtotal :=DriverFiscal1.IF_READ(1) ;
  v_subtotal := (StrToFloat(s_SubTotal)*0.01);
  //v_subtotal := (StrToFloat(s_SubTotal) * 0.01) else


  if RFactura.QFacturaTdesc_gral.Value > 0 then
    begin
      if RFactura.QFacturaFAC_ITBIS.Value >  0 then
      err := DriverFiscal1.IF_WRITE('@TicketReturnRecharge|Desc. Global : '+
             floattostr(RFactura.QFacturaporc_desc_gral.value*0.18)+'%|'+
             floattostr(RFactura.QFacturaTdesc_gral.Value*1.18)+'|D') else
             err := DriverFiscal1.IF_WRITE('@TicketReturnRecharge|Desc. Global : '+
             floattostr(RFactura.QFacturaporc_desc_gral.value)+'%|'+
             floattostr(RFactura.QFacturaTdesc_gral.Value)+'|D');
    end;



  v_diferencia := 0;

  ///----------------------------------------------------------
  if (actbalance = 'True') then
  begin
     if (v_subtotal > RFactura.QFacturaFAC_TOTAL.value) then
      begin
        v_diferencia := v_subtotal - RFactura.QFacturaFAC_TOTAL.value;
        if (v_diferencia <= 0.99) then
          err := DriverFiscal1.IF_WRITE('@TicketPayment|7|'+floattostr(v_subtotal)+'|Credito')
        else
          begin
            Application.MessageBox(pchar('Existe diferencia entre el Monto de la factura y la impresora de : '+ FormatFloat(',,,0.00',v_diferencia)) ,'Error',MB_OK+MB_ICONERROR);
          end;

      end
    else
      err := DriverFiscal1.IF_WRITE('@TicketPayment|7|'+floattostr(RFactura.QFacturaFAC_TOTAL.value));

    s := '';
    fillchar(s, 14-length(format('%n',[RFactura.QFacturaFAC_ABONO.value])),' ');
    Saldo := (RFactura.QFacturaFAC_TOTAL.value+v_diferencia) - RFactura.QFacturaFAC_ABONO.value;
    s1 := '';
    fillchar(s1, 14-length(format('%n',[Saldo])),' ');
    err := DriverFiscal1.IF_WRITE('@TicketFiscalText|'+ 'Abonado :'+s+format('%n',[RFactura.QFacturaFAC_ABONO.value]));
    err := DriverFiscal1.IF_WRITE('@TicketFiscalText|'+ 'Balance :'+s1+format('%n',[Saldo]));

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cli_balance from clientes');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cli_codigo = :cli');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cli').Value := RFactura.QFacturaCLI_CODIGO.Value;
    dm.Query1.Open;

    err := DriverFiscal1.IF_WRITE('@TicketFiscalText|'+ ' ');
    err := DriverFiscal1.IF_WRITE('@TicketFiscalText|'+ dm.Centro('SU CUENTA REFLEJA UN BALANCE'));
    err := DriverFiscal1.IF_WRITE('@TicketFiscalText|'+ dm.Centro('A LA FECHA DE '+Format('%n',[dm.Query1.FieldByName('cli_balance').AsFloat])));

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select * from pr_Estadistica_cli (:emp, :cli, :fec)');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cli').Value := RFactura.QFacturaCLI_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('fec').Value    := Date;
    dm.Query1.Open;
    err := DriverFiscal1.IF_WRITE('@TicketFiscalText|'+ dm.Centro('Y UN MONTO VENCIDO DE '+Format('%n',[dm.Query1.FieldByName('mtovencido').AsFloat])));
  end
  else
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select f.fpa_codigo, f.fpa_nombre, CAST(sum(p.for_monto) AS NUMERIC(18,2)) as monto');
    dm.Query1.SQL.Add('from formaspago f, facformapago p');
    dm.Query1.SQL.Add('where f.emp_codigo = p.emp_codigo');
    dm.Query1.SQL.Add('and f.fpa_codigo = p.fpa_codigo');
    dm.Query1.SQL.Add('and p.emp_codigo = :emp');
    dm.Query1.SQL.Add('and p.tfa_Codigo = :tfa');
    dm.Query1.SQL.Add('and p.fac_forma  = :for');
    dm.Query1.SQL.Add('and p.fac_numero = :num');
    dm.Query1.SQL.Add('and p.suc_codigo = :suc');
    dm.Query1.SQL.Add('group by f.fpa_codigo, f.fpa_nombre');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('tfa').Value := RFactura.QFacturaTFA_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('for').Value  := RFactura.QFacturaFAC_FORMA.Value;
    dm.Query1.Parameters.ParamByName('num').Value := RFactura.QFacturaFAC_NUMERO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := RFactura.QFacturaSUC_CODIGO.Value;
    dm.Query1.Open;

    v_TotalPagado :=0;
    //--[busca todos los pagos]--
    dm.Query1.DisableControls;
    dm.Query1.First;
    while not dm.Query1.Eof do
    begin
      v_TotalPagado := v_TotalPagado + dm.Query1.FieldByName('monto').Value;
      s:= '';
      fillchar(s, 14-length(dm.Query1.FieldByName('fpa_nombre').asstring),' ');
      s1 := '';
      fillchar(s1, 10-length(FormatCurr('#,0.00',dm.Query1.FieldByName('monto').Value)),' ');

      if RFactura.QFacturafac_devuelto.Value =  0 then
      err := DriverFiscal1.IF_WRITE('@TicketPayment|'+dm.Query1.FieldByName('fpa_codigo').AsString+'|'+
      floattostr(dm.Query1.FieldByName('monto').Value)) else
      err := DriverFiscal1.IF_WRITE('@TicketPayment|'+dm.Query1.FieldByName('fpa_codigo').AsString+'|'+
      floattostr(RoundTo(dm.Query1.FieldByName('monto').Value+RFactura.QFacturafac_devuelto.Value,-2)));

      dm.Query1.Next;
    end;

    IF RFactura.QFacturafac_devuelto.Value > 0 THEN
    err := DriverFiscal1.IF_WRITE('@TicketPayment|7|'+CurrToStr(RoundTo(RFactura.QFacturafac_devuelto.Value,-2)));


    //v_TotalPagado:=v_TotalPagado+RFactura.QFacturaTdesc_gral.Value;


    //--[Verifica si falta monto por pagar]
    //if (v_subtotal > (v_TotalPagado)) then
   // if (RFactura.QFacturaFAC_TOTAL.Value > (v_TotalPagado)) then
   //  begin
         //v_diferencia := v_subtotal - v_TotalPagado;
        if RFactura.QFacturaFAC_TOTAL.Value = v_TotalPagado then
        v_diferencia :=  0 else
        v_diferencia := RFactura.QFacturaFAC_TOTAL.Value - v_TotalPagado;

       if (v_diferencia <= 1) then
          err := DriverFiscal1.IF_WRITE('@TicketPayment|7|'+floattostr(v_diferencia));
    //  end;

    dm.Query1.EnableControls;
  end;



    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select ven_nombre from vendedores where emp_codigo = :emp and ven_codigo = :ven');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('ven').Value := RFactura.QFacturaVEN_CODIGO.Value;
    dm.Query1.Open;


    err := DriverFiscal1.IF_WRITE('@TicketFiscalText|Factura #: '+RFactura.QFacturaFAC_NUMERO.AsString);
    err := DriverFiscal1.IF_WRITE('@TicketFiscalText|Cliente  : '+RFactura.QFacturaFAC_NOMBRE.AsString);
    err := DriverFiscal1.IF_WRITE('@TicketFiscalText|Vendedor : '+dm.Query1.FieldByName('ven_nombre').AsString);
    err := DriverFiscal1.IF_WRITE('@TicketFiscalText|Caja     : '+RFactura.QFacturafac_caja.AsString);

    if (actbalance = 'True') then
    begin
      err := DriverFiscal1.IF_WRITE('@TicketFiscalText|'+ ' ');
      err := DriverFiscal1.IF_WRITE('@TicketFiscalText|'+ ' ');
      err := DriverFiscal1.IF_WRITE('@TicketFiscalText|     -------------------------');
      err := DriverFiscal1.IF_WRITE('@TicketFiscalText|            Firma Clte.');
    end;


    err := DriverFiscal1.IF_WRITE('@TicketFiscalText|'+' ');
    err := DriverFiscal1.IF_WRITE('@TicketFiscalText|'+copy(RFactura.QFacturaFAC_MENSAJE1.AsString,1,42));
    err := DriverFiscal1.IF_WRITE('@TicketFiscalText|'+copy(RFactura.QFacturaFAC_MENSAJE2.AsString,1,42));
    err := DriverFiscal1.IF_WRITE('@TicketFiscalText|'+copy(RFactura.QFacturaFAC_MENSAJE3.AsString,1,42));

    // err := DriverFiscal1.IF_WRITE('@TicketFiscalText|[F3x;Texto Fiscal II');


    //err := DriverFiscal1.IF_WRITE('@TicketFiscalText|[E2x;*1234567*');

    //Busca el total de itbis pagado.
    err := DriverFiscal1.IF_WRITE('@GetTicketVatInfo');
    if (err = 0) then
      s_TotalItbis_From_Printer :=DriverFiscal1.IF_READ(1)
    else s_TotalItbis_From_Printer := '';

    if s_TotalItbis_From_Printer <> '' then
      v_TotalItbis_From_Printer := (StrToFloat(s_TotalItbis_From_Printer) * 0.01);

    err := DriverFiscal1.IF_WRITE('@TicketClose');

    //--busca el NIF y otros datos
    err := DriverFiscal1.IF_WRITE('@GetLastTicketStatus');
    if (err = 0) then
      begin
        s_NIF :=DriverFiscal1.IF_READ(1);  //s_NIF : Long;
        s_TotalFacturado :=DriverFiscal1.IF_READ(2);  //s_TotalFacturado :Double;
        s_Devuelta :=DriverFiscal1.IF_READ(3);    //s_Devuelta:Double;
        if s_NIF <> EmptyStr then
          begin
            QFactura.edit;
            QFacturaNIF.value := s_NIF;
            if v_TotalItbis_From_Printer > 0 then
              QFacturaFAC_ITBIS.value :=v_TotalItbis_From_Printer;

            QFactura.post;
            QFactura.UpdateBatch;
          end;
      end;

    err := DriverFiscal1.IF_WRITE('@PaperFeed|1');
    err := DriverFiscal1.IF_WRITE('@PaperCut|P');
    /// DriverFiscal1.IF_TRACE(0) ;

    if ((aCopia > 0 ) and ( Impresora.SustituirCopia = true)) then
      for x:=1 to aCopia do
        re_ImprimirTicketEpson();

    err := DriverFiscal1.IF_CLOSE;
  finally
    DriverFiscal1.Destroy;
    RFactura.Destroy;
  //Limpiar pantalla
    QDetalle.close;
    QFactura.close;
  end;
end;

procedure TfrmFactura.BuscarTipoFacturas;
var
tiponcf :Integer;
begin
if Trim(edTipo.Text) <> '' then
    begin
    with qEjecutar do begin
    close;
    sql.clear;
    sql.add('select tfa_nombre, tfa_selcondi, tfa_formatoimp, tfa_puertoimp,');
    sql.add('tfa_actbalance, tfa_cliente, ven_codigo, tfa_precio,');
    sql.add('tfa_mensaje1, tfa_mensaje2, tfa_mensaje3, fpa_codigo,');
    sql.add('tfa_verlimite, tfa_copias, tfa_permite_abonar, tfa_itbis, isnull(tip_codigo,0)tipo,');
    sql.add('tfa_imprimie_encabezado, tfa_rnc, cat_cuenta, tfa_modifica_nombre, tfa_espcliente espcliente');
    sql.add(',Envio_Correo, Envio_Estadocta');
    sql.add('from tiposfactura');
    sql.add('where emp_codigo = '+QuotedStr(DM.QEmpresasEMP_CODIGO.text));
    sql.add('and tfa_codigo = '+QuotedStr(edTipo.text));
    open;

    if qEjecutar.RecordCount > 0 then begin

      ConItbis        := FieldByName('tfa_itbis').AsString;
      QFacturaFAC_CONITBIS.Value := ConItbis;
      vtfa_espcliente := FieldByName('espcliente').AsString;
      PermiteAbonar   := fieldbyname('tfa_permite_abonar').AsString;
      ImprimeEncaqbezado := fieldbyname('tfa_imprimie_encabezado').AsString;
      vEnvioEstadoCta := FieldByName('Envio_Estadocta').Value;
      chkMail.Checked := FieldByName('Envio_Correo').Value;
      ModificaNombre := fieldbyname('tfa_modifica_nombre').asstring;
      CtaTipoFactura := fieldbyname('cat_cuenta').asstring;
      copias     := fieldbyname('tfa_copias').asinteger;
      FPagoIni   := fieldbyname('fpa_codigo').asinteger;
      Precio     := fieldbyname('tfa_precio').asstring;
      PuertoImp  := fieldbyname('tfa_puertoimp').asstring;
      FormatoImp := fieldbyname('tfa_formatoImp').asinteger;
      tTipo.text := fieldbyname('tfa_nombre').asstring;
      actbalance := fieldbyname('tfa_actbalance').asstring;
      VerLimite  := fieldbyname('tfa_verlimite').asstring;
      SelCondi   := FieldByName('tfa_selcondi').AsBoolean;
      SelRNC     := fieldbyname('tfa_rnc').asString;
      tiponcf    := fieldbyname('tipo').AsInteger;
      dbCondi.Enabled := SelCondi;
      btCondi.Enabled := SelCondi;
      QFacturaFAC_MENSAJE1.Value := trim(fieldbyname('tfa_mensaje1').asstring);
      QFacturaFAC_MENSAJE2.Value := fieldbyname('tfa_mensaje2').asstring;
      QFacturaFAC_MENSAJE3.Value := fieldbyname('tfa_mensaje3').asstring;
      if fieldbyname('tfa_actbalance').asstring = 'False' then
      begin
      if QFacturaFAC_NOMBRE.isnull then
      QFacturaFAC_NOMBRE.Value := fieldbyname('tfa_cliente').asstring;
      end;

      if not fieldbyname('ven_codigo').IsNull then
      QFacturaVEN_CODIGO.Value := fieldbyname('ven_codigo').asinteger;


      QFacturafac_abono.Value := 0;
      end
      else
      begin
      ShowMessage('ESTE TIPO DE FACTURA NO EXISTE FAVOR REVISAR');
      edTipo.SetFocus;
      tTipo.Clear;
      Exit;
      end;
      end;


      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('select fpa_codigo from formaspago');
      Query1.SQL.Add('where emp_codigo = :emp');
      Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      Query1.Open;
      if Query1.RecordCount = 0 then
      begin
        edTipo.Text := '';
        MessageDlg('PARA REALIZAR UNA FACTURA DE ESTE TIPO'+#13+
                   'DEBE CREAR LAS FORMAS DE PAGO',mtError,[mbok],0);
        Abort;
        edTipo.SetFocus;
      end;

        totalizar;


      if tiponcf > 0 then
         QFacturatip_codigo.Value := tiponcf;

    end;
end;

function TfrmFactura.DescuentoGeneral(desc_gral:Real): Boolean;
var
  X : Integer;
begin
  X := 0;
with QDetalle do begin
  First;
  while not Eof do begin
    IF QDetalleDET_DESCMAX.Value > 0 THEN BEGIN
    if QDetalleDET_DESCMAX.Value < desc_gral then
    X := X + 1;
    end;
    Next;
  end;

end;

if X > 0 then Result := False
else Result := True;
end;

function TfrmFactura.TIPOFACTURA(emp,tipo:Integer): String;
begin
WITH DM.adoMultiUso DO BEGIN
  Close;
  SQL.Clear;
  SQL.Add('SELECT ISNULL(tdo_codigo,''FAC'') TIPO FROM TiposFactura WHERE emp_codigo = '+
  QuotedStr(IntToStr(emp))+'  AND tfa_codigo = '+QuotedStr(IntToStr(tipo)));
  Open;
  if DM.adoMultiUso.RecordCount > 0 then
  Result := DM.adoMultiUso.Fields.fieldbyname('TIPO').Text ELSE
  Result := 'FAC';
  end;
end;

procedure TfrmFactura.DBLookupComboBox2Click(Sender: TObject);
begin
dbCajaChange(Sender);
end;

procedure TfrmFactura.QEnvioBeforeOpen(DataSet: TDataSet);
begin
QSucOrigen.Close;
QSucOrigen.Parameters[0].Value := QFacturaEMP_CODIGO.Value;
QSucOrigen.Parameters[1].Value := QFacturaUSU_CODIGO.Value;
QSucOrigen.Open;

qSucDestino.Close;
qSucDestino.Parameters[0].Value := QFacturaEMP_CODIGO.Value;
qSucDestino.Parameters[1].Value := QFacturaUSU_CODIGO.Value;
qSucDestino.Open;

end;

procedure TfrmFactura.QFacturaFechaLimitePagoValidate(Sender: TField);
begin
QFacturaFAC_VENCE.Value := QFacturaFechaLimitePago.Value;
end;

procedure TfrmFactura.btBuscaVendPorcClick(Sender: TObject);
var
  vl_producto_comis : Currency;
begin
 if (not QDetallePRO_CODIGO.isnull)  then
  begin
    application.createform(TfrmSelVendPorc, frmSelVendPorc);
    begin
       with qEjecutar do begin
       Close;
       SQL.Add('SELECT PRO_COMISION COM FROM PRODUCTOS WHERE PRO_CODIGO = :COD');
       Parameters.ParamByName('COD').Value := QDetallePRO_CODIGO.Value;
       Open;
       if FieldByName('COM').AsCurrency > 0 THEN
       vl_producto_comis := FieldByName('COM').AsCurrency;
       Close;
       end;

      IF vl_producto_comis > 0 THEN BEGIN
      frmSelVendPorc.QVendedores.Close;
      frmSelVendPorc.QVendedores.Parameters.ParamByName('EMP').Value := QFacturaEMP_CODIGO.Value;
      frmSelVendPorc.QVendedores.Open;


      if not frmSelVendPorc.QVendedores.IsEmpty then begin
      frmSelVendPorc.showmodal;

      if (frmSelVendPorc.vl_porciento <> 0) and (frmSelVendPorc.vl_vendedor <> 0) then
      begin
        QDetalle.edit;
        QDetalleVEN_CODIGO.value := frmSelVendPorc.vl_vendedor;
        if vl_producto_comis < frmSelVendPorc.vl_porciento then
        QDetalleporc_vendedor.value := vl_producto_comis else
        QDetalleporc_vendedor.value := frmSelVendPorc.vl_porciento;
        QDetalle.post;
      end;
    end
    else
    begin
    ShowMessage('Debes indicar los vendedores en el maestro de vendedores, para aplicar la comision');
    end;
    end;
    frmSelVendPorc.Release;
    end;
end;
end;

procedure TfrmFactura.QParametrosAfterOpen(DataSet: TDataSet);
begin
if QParametrospar_comision_vend.Value =  False then 
btBuscaVendPorc.Visible := False else
btBuscaVendPorc.Visible := True;
end;

end.

