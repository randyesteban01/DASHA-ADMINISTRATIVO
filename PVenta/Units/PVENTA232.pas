unit PVENTA232;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids,
  DB, DateUtils, DIMime, Math, 
  ADODB, QuerySearchDlgADO, ComCtrls, Menus, IBCustomDataSet;

type
  TfrmFacturaRenta = class(TForm)
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
    btBusca: TBitBtn;
    Label11: TLabel;
    Label16: TLabel;
    lbItbis: TLabel;
    Label19: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    btGrabar: TBitBtn;
    btLimpiar: TBitBtn;
    btSalir: TBitBtn;
    btBuscaCliente: TBitBtn;
    Search: TQrySearchDlgADO;
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
    dsFactura: TDataSource;
    QFacturaCLI_REFERENCIA: TIBStringField;
    DBEdit11: TDBEdit;
    dsDetalle: TDataSource;
    Label1: TLabel;
    btTipo: TSpeedButton;
    edTipo: TEdit;
    tTipo: TEdit;
    QFacturaSubTotal: TFloatField;
    btNota: TBitBtn;
    QFacturaALM_CODIGO: TIntegerField;
    Query1: TADOQuery;
    QFacturaFAC_VENCE: TDateTimeField;
    QFacturaFAC_COMISION: TFloatField;
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
    Lista: TListBox;
    QFacturaFAC_MENSAJE2: TIBStringField;
    QFacturaFAC_MENSAJE3: TIBStringField;
    QFacturaFAC_PORCCOMISION: TFloatField;
    QVendedores: TADOQuery;
    QVendedoresVEN_CODIGO: TIntegerField;
    QVendedoresVEN_NOMBRE: TIBStringField;
    dsVend: TDataSource;
    DBEdit12: TDBEdit;
    QFacturaFAC_CUOTAS: TIntegerField;
    QFacturaFAC_HORA: TIBStringField;
    QFacturaCON_NUMERO: TIntegerField;
    btBalance: TBitBtn;
    QFacturaFAC_ANO: TIntegerField;
    QFacturaFAC_MES: TIntegerField;
    QFacturaFAC_CONITBIS: TIBStringField;
    ckItbis: TDBCheckBox;
    QFacturaFAC_DEVUELTO: TFloatField;
    GridSerie: TStringGrid;
    QSerie: TADOQuery;
    QFacTMPCAJ_CODIGO: TIntegerField;
    QFacTMPCLI_CODIGO: TIntegerField;
    QFacTMPCOT_NUMERO: TIntegerField;
    QFacTMPCPA_CODIGO: TIntegerField;
    QFacTMPEMP_CODIGO: TIntegerField;
    QFacTMPFAC_ABONO: TFloatField;
    QFacTMPFAC_DESCUENTO: TFloatField;
    QFacTMPFAC_DIRECCION: TIBStringField;
    QFacTMPFAC_FAX: TIBStringField;
    QFacTMPFAC_FECHA: TDateTimeField;
    QFacTMPFAC_FORMA: TIBStringField;
    QFacTMPFAC_ITBIS: TFloatField;
    QFacTMPFAC_LOCALIDAD: TIBStringField;
    QFacTMPFAC_NOMBRE: TIBStringField;
    QFacTMPFAC_NUMERO: TIntegerField;
    QFacTMPFAC_OTROS: TFloatField;
    QFacTMPFAC_STATUS: TIBStringField;
    QFacTMPFAC_TELEFONO: TIBStringField;
    QFacTMPFAC_TOTAL: TFloatField;
    QFacTMPPED_NUMERO: TIntegerField;
    QFacTMPTFA_CODIGO: TIntegerField;
    QFacTMPUSU_CODIGO: TIntegerField;
    QFacTMPVEN_CODIGO: TIntegerField;
    QFacTMPCLI_REFERENCIA: TIBStringField;
    QFacTMPALM_CODIGO: TIntegerField;
    QFacTMPFAC_VENCE: TDateTimeField;
    QFacTMPFAC_COMISION: TFloatField;
    QFacTMPFAC_MENSAJE1: TIBStringField;
    QFacTMPFAC_MENSAJE2: TIBStringField;
    QFacTMPFAC_MENSAJE3: TIBStringField;
    QFacTMPFAC_PORCCOMISION: TFloatField;
    QFacTMPFAC_CUOTAS: TIntegerField;
    QFacTMPFAC_HORA: TIBStringField;
    QFacTMPCON_NUMERO: TIntegerField;
    QFacTMPFAC_ANO: TIntegerField;
    QFacTMPFAC_MES: TIntegerField;
    QFacTMPFAC_CONITBIS: TIBStringField;
    QFacTMPFAC_DEVUELTO: TFloatField;
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
    QDetalleTMPPRO_CODIGO: TIntegerField;
    QDetalleTMPPRO_NOMBRE: TIBStringField;
    QDetalleTMPPRO_RFABRIC: TIBStringField;
    QDetalleTMPPRO_RORIGINAL: TIBStringField;
    QDetalleTMPTFA_CODIGO: TIntegerField;
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
    QFacturaFAC_TASA: TFloatField;
    QFacturaMON_CODIGO: TIntegerField;
    QFacTMPFAC_TASA: TFloatField;
    QFacTMPMON_CODIGO: TIntegerField;
    QDetalleTMPPED_NUMERO: TIntegerField;
    BitBtn3: TBitBtn;
    QSerieEMP_CODIGO: TIntegerField;
    QSerieFAC_FORMA: TStringField;
    QSerieFAC_NUMERO: TIntegerField;
    QSeriePRO_CODIGO: TIntegerField;
    QSerieSER_NUMERO: TStringField;
    QSerieSER_SECUENCIA: TIntegerField;
    QSerieTFA_CODIGO: TIntegerField;
    btBuscaProd: TSpeedButton;
    btPrecio: TSpeedButton;
    Label8: TLabel;
    QFacturaSUC_CODIGO: TIntegerField;
    QSerieSUC_CODIGO: TIntegerField;
    QFacTMPSUC_CODIGO: TIntegerField;
    QDetalleTMPSUC_CODIGO: TIntegerField;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    QSucursalalm_codigo: TIntegerField;
    btdelete: TBitBtn;
    QFacturaFAC_DOMICILIO: TStringField;
    QFacTMPFAC_DOMICILIO: TStringField;
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
    QFacturafac_comisionpagada: TBCDField;
    QFacTMPfac_comisionpagada: TBCDField;
    QFacturafac_caja: TIntegerField;
    QFacTMPfac_caja: TIntegerField;
    Label6: TLabel;
    btcaja: TSpeedButton;
    dbCaja: TDBEdit;
    tcaja: TEdit;
    QDetalleTMPdet_cant_oferta: TBCDField;
    QDetalleTMPdet_nota: TMemoField;
    QFacturapro_codigo: TIntegerField;
    QFacTMPpro_codigo: TIntegerField;
    QFacturaNCF_Fijo: TStringField;
    QFacturaNCF_Secuencia: TBCDField;
    QFacTMPNCF_Fijo: TStringField;
    QFacTMPNCF_Secuencia: TBCDField;
    QFacturafac_selectivo_ad: TBCDField;
    QFacturafac_selectivo_con: TBCDField;
    QFacTMPfac_selectivo_ad: TBCDField;
    QFacTMPfac_selectivo_con: TBCDField;
    QDetalleTMPdet_selectivo_ad: TBCDField;
    QDetalleTMPdet_selectivo_con: TBCDField;
    QFacturafac_hold: TStringField;
    QFacTMPfac_hold: TStringField;
    QDetalleTMPdet_minimo_venta: TBCDField;
    QDetalleTMPmar_codigo: TIntegerField;
    QFacturafac_rnc: TStringField;
    QFacTMPfac_rnc: TStringField;
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
    QDetalleTMPpro_ctacosto: TStringField;
    QDetalleTMPpro_ctainvent: TStringField;
    QDetalleTMPpro_ctaingreso: TStringField;
    Label22: TLabel;
    btmoneda: TSpeedButton;
    tmoneda: TEdit;
    QDetalleTMPpre_codigo: TIntegerField;
    DBEdit15: TDBEdit;
    QDetalleTMPalm_codigo: TIntegerField;
    ckdomicilio: TDBCheckBox;
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
    Introducirn1: TMenuItem;
    Crearnotaalproducto1: TMenuItem;
    Preventasdelproducto1: TMenuItem;
    Vercombodelproducto1: TMenuItem;
    Escalas1: TMenuItem;
    N1: TMenuItem;
    Consultarmovimiento1: TMenuItem;
    SpeedButton1: TSpeedButton;
    QDetallepro_ctadescuento: TStringField;
    QDetalleTMPpro_ctadescuento: TStringField;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    lbBAL: TStaticText;
    lbDB: TStaticText;
    lbCR: TStaticText;
    QDetalledet_cantempaque: TBCDField;
    QDetalleTMPdet_cantempaque: TBCDField;
    QFacturaPlaca: TStringField;
    QFacturaChofer: TStringField;
    QFacTMPOrdenID: TIntegerField;
    QFacTMPPlaca: TStringField;
    QFacTMPChofer: TStringField;
    TabSheet3: TTabSheet;
    Label28: TLabel;
    DBEdit17: TDBEdit;
    Label27: TLabel;
    DBEdit16: TDBEdit;
    memocamion: TMemo;
    btcamion: TSpeedButton;
    QFacturaModelo: TStringField;
    QFacturaMarca: TStringField;
    QFacturaCompania: TStringField;
    QFacTMPModelo: TStringField;
    QFacTMPMarca: TStringField;
    QFacTMPCompania: TStringField;
    QFacturaCamionID: TIntegerField;
    QFacTMPCamionID: TIntegerField;
    QFacturaMetraje: TBCDField;
    QFacTMPMetraje: TBCDField;
    QDetallepro_unidad_medida: TStringField;
    QDetalleUnidadID: TStringField;
    QDetalleTMPpro_unidad_medida: TStringField;
    QDetalleTMPUnidadID: TStringField;
    QDetalleMedida_Precio1: TBCDField;
    QDetalleMedida_Precio2: TBCDField;
    QDetalleMedida_Precio3: TBCDField;
    QDetalleMedida_Precio4: TBCDField;
    QDetalleTMPMedida_Precio1: TBCDField;
    QDetalleTMPMedida_Precio2: TBCDField;
    QDetalleTMPMedida_Precio3: TBCDField;
    QDetalleTMPMedida_Precio4: TBCDField;
    QUnidades: TADOQuery;
    QUnidadesPrecio: TBCDField;
    QUnidadesCantidad: TBCDField;
    QUnidadesNombre: TStringField;
    QDetalledet_cant_unidad_medida: TBCDField;
    QDetalleTMPdet_cant_unidad_medida: TBCDField;
    QUnidadesCredito: TBCDField;
    QUnidadesMinimo: TBCDField;
    QUnidadesUnidadID: TStringField;
    QDetalleMedidorID: TIntegerField;
    QDetalleMedidor_Secuencia: TBCDField;
    QDetalleMedidor_Cantidad: TBCDField;
    QDetallepro_utilizamedidor: TStringField;
    QDetalleTMPMedidorID: TIntegerField;
    QDetalleTMPMedidor_Secuencia: TBCDField;
    QDetalleTMPMedidor_Cantidad: TBCDField;
    QDetalleTMPpro_utilizamedidor: TStringField;
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
    QFacturafac_interes: TBCDField;
    QFacTMPfac_interes: TBCDField;
    dbinteres: TDBEdit;
    Label30: TLabel;
    N2: TMenuItem;
    Pantalladeproductos1: TMenuItem;
    Ajustedeinventario1: TMenuItem;
    QFacturatip_codigo: TIntegerField;
    QFacTMPtip_codigo: TIntegerField;
    DBEdit9: TDBEdit;
    Label18: TLabel;
    bttiponcf: TSpeedButton;
    ttiponcf: TEdit;
    DBEdit13: TDBEdit;
    btreceta: TMenuItem;
    QFacturaOrdenID: TStringField;
    QFacturacot_proyecto: TStringField;
    Label15: TLabel;
    DBEdit4: TDBEdit;
    QFacturaFAC_MENSAJE1: TStringField;
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
    QDetallepro_UtilizaRenta: TStringField;
    DatosdelaRenta1: TMenuItem;
    QRenta: TADOQuery;
    QRentaemp_codigo: TIntegerField;
    QRentasuc_codigo: TIntegerField;
    QRentafac_numero: TIntegerField;
    QRentapro_codigo: TIntegerField;
    QRentaidrenta: TIntegerField;
    QRentafecha_inicio: TDateTimeField;
    QRentafecha_entrega: TDateTimeField;
    QRentaren_cantidad: TIntegerField;
    QRentaren_periodo: TStringField;
    QRentaren_valor: TBCDField;
    QRentaren_status: TStringField;
    QFacturaFAC_NOTA: TMemoField;
    QFacTMPFAC_NOTA: TMemoField;
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
    procedure GridEnter(Sender: TObject);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure btBuscaProdClick(Sender: TObject);
    procedure btSalirClick(Sender: TObject);
    procedure QDetalleBeforePost(DataSet: TDataSet);
    procedure QDetalleAfterPost(DataSet: TDataSet);
    procedure QDetalleBeforeDelete(DataSet: TDataSet);
    procedure QFacturaCalcFields(DataSet: TDataSet);
    procedure btPrecioClick(Sender: TObject);
    procedure btNotaClick(Sender: TObject);
    procedure btLimpiarClick(Sender: TObject);
    procedure btGrabarClick(Sender: TObject);
    procedure QDetalleNewRecord(DataSet: TDataSet);
    procedure btBuscaClick(Sender: TObject);
    procedure dsFacturaStateChange(Sender: TObject);
    procedure ckAEnter(Sender: TObject);
    procedure QFacturaBeforePost(DataSet: TDataSet);
    procedure GridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnGuardaTemporalClick(Sender: TObject);
    procedure QFacTMPNewRecord(DataSet: TDataSet);
    procedure QFacTMPBeforePost(DataSet: TDataSet);
    procedure btnBuscaTemporalClick(Sender: TObject);
    procedure QDetalleBeforeEdit(DataSet: TDataSet);
    procedure btBalanceClick(Sender: TObject);
    procedure QFacturaFAC_FORMAChange(Sender: TField);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
    procedure edTipoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QDetalleAfterEdit(DataSet: TDataSet);
    procedure dsFacturaDataChange(Sender: TObject; Field: TField);
    procedure btBuscaClienteClick(Sender: TObject);
    procedure ckItbisClick(Sender: TObject);
    procedure QDetalleDET_MEDIDAChange(Sender: TField);
    procedure dsDetalleDataChange(Sender: TObject; Field: TField);
    procedure btmonedaClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure QFacturaSUC_CODIGOChange(Sender: TField);
    procedure ckdomicilioClick(Sender: TObject);
    procedure btcajaClick(Sender: TObject);
    procedure QFacturafac_cajaGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure DBEdit6Enter(Sender: TObject);
    procedure tTipoEnter(Sender: TObject);
    procedure QFacturafac_rncChange(Sender: TField);
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
    procedure QDetallepro_unidad_medidaChange(Sender: TField);
    procedure QFacturaAfterEdit(DataSet: TDataSet);
    procedure DatosdelMedidor1Click(Sender: TObject);
    procedure QPedidosped_numeroChange(Sender: TField);
    procedure QPedidosNewRecord(DataSet: TDataSet);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure gridclinicoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Pantalladeproductos1Click(Sender: TObject);
    procedure QFacturaMON_CODIGOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure bttiponcfClick(Sender: TObject);
    procedure ttiponcfEnter(Sender: TObject);
    procedure QFacturatip_codigoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure PageControl1Change(Sender: TObject);
    procedure QFacturaCLI_CODIGOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QEnvioNewRecord(DataSet: TDataSet);
    procedure QSerieNewRecord(DataSet: TDataSet);
    procedure QSerieAfterInsert(DataSet: TDataSet);
  private
    vSer :Boolean;    
    procedure DatosEnvio(llenar: boolean = false);
    procedure ActualisarEnvio(actualizar: boolean = false);
    function  Producto_sin_Serializar(const key : string):boolean;
  public
    { Public declarations }
    SelCajero, SelCondi, facturar : boolean;
    descuento, total, TotalOtros, Limite, Balance, Comision, PorcFijo, MontoFijo : double;
    Totaliza, Buscando, Realizado : boolean;
    Cajero, FormatoImp, Dias, CodMov, Intervalo, FPagoIni, copias, caja, TipoFac, Vendedor, accion : integer;
    PuertoImp, TraerFormaPago, actbalance, FactPendiente, FactVencida,
    TieneVencido, Vencidos, Precio, Cuotas, CtaCliente, VerLimite,
    PantallaDevolver, Devuelta, Recibido, PermiteAbonar, NombreOtro, CtaCaja, ModificaNombre, intereses,
    FactDebajoCosto, FactDebajoMinimo, ConItbis, ImprimeEncaqbezado, SelRNC, MedidaAlmacen, CtaTipoFactura : string;
    Debitos, Creditos : Double;
    cli_facturas, cli_records,idFacturaTmp : integer;
    procedure Totalizar;
    Procedure TotalizarCuentas;
    procedure TotalizaClinico;
    procedure Imp40Columnas;
    procedure Imp40ColumnasNC;
    procedure Imp40ColumnasREC;

    procedure BuscaProducto (Cod : String);
  end;

var
  frmFacturaRenta: TfrmFacturaRenta;
  cantidadPrevia:Double = 0;
  UtilizaEnvio :String = 'False';
  UtilizaRenta :String = 'False';
  utilizamedidor :String = 'False';
  IDProducto :Integer;

  oNombre:String;
  oTelefono:String;
  oCiudad,dCiudad:String;
  dCodCiudad:integer;
  dNombre:String;
  dTelefono:String;
  Descripcion:String;

implementation

uses PVENTA37, PVENTA33, PVENTA34, PVENTA36, PVENTA40, PVENTA42,
  RVENTA02, PVENTA43, RVENTA43, PVENTA82, PVENTA14, PVENTA114, SIGMA00,
  SIGMA01, PVENTA117, RVENTA64, PVENTA41, PVENTA121, RVENTA33, PVENTA134,
  RVENTA71, RVENTA79, RVENTA32, PVENTA185, PVENTA186, PVENTA209,
  RVENTA115, PVENTA28, PVENTA83, PVENTA222, PVENTA223, PVENTA224,
  SIGMA06, RVENTA122, PVENTA15, PRENTA001;

{$R *.DFM}

function NumeroRandom():Integer ;
begin
  Randomize;
  Result := Random( 1000000 ) + 1 ;

end;

procedure TfrmFacturaRenta.ActualisarEnvio(actualizar:boolean = false);
var
  envio : integer;
begin
   if not actualizar then
     begin
       QEnvio.Insert;
       QEnvioemp_codigo.Value := dm.vp_cia;
       QEnviosuc_codigo.Value := QFacturaSUC_CODIGO.Value;
       QEnviopro_codigo.Value := QDetallePRO_CODIGO.Value;
       QEnvioFecha.Value      := QFacturaFAC_FECHA.Value;
       QEnvioCiudad_Origen.Value := oCiudad;
       QEnvioCiudad_Destino.Value := dCiudad;
       QEnvioNombre_envia.Value := ONombre;
       QEnvioTelefono_Envia.Value := OTelefono;
       QEnvioNombre_Recibe.Value := dNombre;
       QEnvioTelefono_Recibe.Value := dTelefono;
       QEnvioDescripcion.Value := Descripcion;
       QEnvioenv_suc_destino.Value := dCodCiudad;
       QEnvio.Post;
     end
   else
     begin
       QEnvio.Edit;
       QEnvioemp_codigo.Value := dm.vp_cia;
       QEnviosuc_codigo.Value := QFacturaSUC_CODIGO.Value;
       QEnviopro_codigo.Value := QDetallePRO_CODIGO.Value;
       QEnvioFecha.Value      := QFacturaFAC_FECHA.Value;
       QEnvioCiudad_Origen.Value := oCiudad;
       QEnvioCiudad_Destino.Value := dCiudad;
       QEnvioNombre_envia.Value := ONombre;
       QEnvioTelefono_Envia.Value := OTelefono;
       QEnvioNombre_Recibe.Value := dNombre;
       QEnvioTelefono_Recibe.Value := dTelefono;
       QEnvioDescripcion.Value := Descripcion;
       QEnvioenv_suc_destino.Value := dCodCiudad;
       QEnvio.Post;
     end;
end;


procedure TfrmFacturaRenta.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TfrmFacturaRenta.FormPaint(Sender: TObject);
begin
  with frmFacturaRenta do
  begin
    Top  := 2;
    Left := 2;
    //width := frmMain.Width - 100;
    //height := frmMain.Height - 120;
  end;
end;

procedure TfrmFacturaRenta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
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

procedure TfrmFacturaRenta.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmFacturaRenta.FormActivate(Sender: TObject);
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
      tCajero.text := dm.Query1.fieldbyname('caj_nombre').asstring;
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
    if not QFactura.active then
    begin
      QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
      QSucursal.Open;
      QSucursal.Locate('suc_codigo',dm.vp_cia, []);

      QSucursalDestino.Open;
      QVendedores.Open;

      application.createform(tfrmFormaPagoFac, frmFormaPagoFac);
      Totaliza := true;
      QDetalle.DisableControls;

      QFactura.Close;
      QFactura.Parameters.ParamByName('emp').Value  := dm.vp_cia;
      QFactura.Parameters.ParamByName('tipo').Value := -1;
      QFactura.Parameters.ParamByName('forma').Value := 'A';
      QFactura.Parameters.ParamByName('numero').Value := -1;
      QFactura.Parameters.ParamByName('suc').Value := -1;
      QFactura.open;
      QFactura.insert;
      QFacturaALM_CODIGO.Value := QSucursalalm_codigo.Value;

      if not QFacturaFAC_FORMA.IsNull then
        frmMain.stBar1.Panels[1].Text := QFacturaFAC_FORMA.Value;
      QDetalle.EnableControls;
      QSerie.Open;
    end;
  end;

  btnGuardaTemporal.Enabled := (dm.QParametrosPAR_FACTEMPORAL.Value = 'True');
  btnBuscaTemporal.Enabled  := (dm.QParametrosPAR_FACTEMPORAL.Value = 'True');
{20170627
  if dm.QParametrospar_formato_preimpreso.Value = 'QRMateirosa' then
    Panel2.Height := 126
  else Panel2.Height := 100;

  QMsnExistencia.Active := true;}
end;

procedure TfrmFacturaRenta.ckAClick(Sender: TObject);
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

procedure TfrmFacturaRenta.ckBClick(Sender: TObject);
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

procedure TfrmFacturaRenta.btTipoClick(Sender: TObject);
var
  tiponcf : integer;
begin
  search.Query.clear;
  search.Query.add('select tfa_nombre, tfa_codigo');
  search.Query.add('from tiposfactura');
  search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C�digo');
  search.ResultField := 'tfa_codigo';
  search.Title := 'Tipos de factura';
  if search.execute then
  begin
    edTipo.text := search.valuefield;

    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select tfa_nombre, tfa_selcondi, tfa_formatoimp, tfa_puertoimp,');
    dm.Query1.sql.add('tfa_actbalance, tfa_cliente, ven_codigo, tfa_precio,');
    dm.Query1.sql.add('tfa_mensaje1, tfa_mensaje2, tfa_mensaje3, fpa_codigo,');
    dm.Query1.sql.add('tfa_verlimite, tfa_copias, tfa_permite_abonar, tfa_itbis, tip_codigo,');
    dm.Query1.sql.add('tfa_imprimie_encabezado, tfa_rnc, cat_cuenta, tfa_modifica_nombre');
    dm.Query1.sql.add('from tiposfactura');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and tfa_codigo = :cod');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edTipo.text));
    dm.Query1.open;

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
      ConItbis := dm.Query1.FieldByName('tfa_itbis').AsString;

      QFacturaFAC_CONITBIS.Value := ConItbis;
      QFacturafac_abono.Value := 0;
      PermiteAbonar := dm.Query1.fieldbyname('tfa_permite_abonar').AsString;
      ImprimeEncaqbezado := dm.Query1.fieldbyname('tfa_imprimie_encabezado').AsString;

      ModificaNombre := dm.Query1.fieldbyname('tfa_modifica_nombre').asstring;
      CtaTipoFactura := dm.Query1.fieldbyname('cat_cuenta').asstring;
      copias     := dm.Query1.fieldbyname('tfa_copias').asinteger;
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

      if dm.Query1.fieldbyname('tip_codigo').AsInteger > 0 then
        tiponcf := dm.Query1.fieldbyname('tip_codigo').AsInteger;

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

        end;
         if not dm.Query1.fieldbyname('ven_codigo').IsNull then
           QFacturaVEN_CODIGO.Value := dm.Query1.fieldbyname('ven_codigo').asinteger;
        totalizar;
      end;

      if tiponcf > 0 then
         QFacturatip_codigo.Value := tiponcf;

    end;

    SelectNext(activecontrol, true, true);
  end;
end;

procedure TfrmFacturaRenta.btCondiClick(Sender: TObject);
begin
  Search.AliasFields.clear;
  Search.AliasFields.add('Nombre');
  Search.AliasFields.add('C�digo');
  Search.Query.clear;
  Search.Query.add('select cpa_nombre, cpa_codigo');
  Search.Query.add('from condiciones');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'cpa_Codigo';
  Search.Title := 'Condiciones de pago';
  if Search.execute then
  begin
    QFacturaCPA_CODIGO.value := strtoint(Search.ValueField);
    dbCondi.setfocus;
  end;
end;

procedure TfrmFacturaRenta.btVendedorClick(Sender: TObject);
begin
  Search.AliasFields.clear;
  Search.AliasFields.add('Nombre');
  Search.AliasFields.add('C�digo');
  Search.Query.clear;
  Search.Query.add('select ven_nombre, ven_codigo');
  Search.Query.add('from vendedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'ven_Codigo';
  Search.Title := 'Listado de Vendedores';
  if Search.execute then
  begin
    QFacturaVEN_CODIGO.value := strtoint(Search.ValueField);
    dbVendedor.setfocus;
  end;
end;

procedure TfrmFacturaRenta.QFacturaVEN_CODIGOGetText(Sender: TField;
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

procedure TfrmFacturaRenta.QFacturaCPA_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
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
      dbinteres.Enabled := intereses = 'True';
    end;
  end
  else
    tCondicion.text := '';
end;

procedure TfrmFacturaRenta.QFacturaNewRecord(DataSet: TDataSet);
var
  a, tiponcf : integer;
begin
  accion := 1;
   idFacturaTmp :=NumeroRandom;
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
  copias := 1;

  edTipo.Text := IntToStr(TipoFac);
  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select tfa_nombre, tfa_selcondi, tfa_formatoimp, tfa_puertoimp,');
  dm.Query1.sql.add('tfa_actbalance, tfa_cliente, ven_codigo, tfa_precio, tfa_permite_abonar,');
  dm.Query1.sql.add('tfa_mensaje1, tfa_mensaje2, tfa_mensaje3, fpa_codigo, tfa_copias, tip_codigo,');
  dm.Query1.sql.add('tfa_verlimite, tfa_itbis, tfa_imprimie_encabezado, tfa_rnc, cat_cuenta, tfa_modifica_nombre');
  dm.Query1.sql.add('from tiposfactura');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and tfa_codigo = :cod');
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edTipo.text));
  dm.Query1.open;

  CtaTipoFactura := dm.Query1.fieldbyname('cat_cuenta').asstring;
  SelRNC := dm.Query1.fieldbyname('tfa_rnc').asString;
  ConItbis := dm.Query1.fieldbyname('tfa_itbis').AsString;
  PermiteAbonar := dm.Query1.fieldbyname('tfa_permite_abonar').AsString;
  ImprimeEncaqbezado := dm.Query1.fieldbyname('tfa_imprimie_encabezado').AsString;

  ModificaNombre := dm.Query1.fieldbyname('tfa_modifica_nombre').asstring;
  copias     := dm.Query1.fieldbyname('tfa_copias').asinteger;
  FPagoIni   := dm.Query1.fieldbyname('fpa_codigo').asinteger;
  Precio     := dm.Query1.fieldbyname('tfa_precio').asstring;
  PuertoImp  := dm.Query1.fieldbyname('tfa_puertoimp').asstring;
  FormatoImp := dm.Query1.fieldbyname('tfa_formatoImp').asinteger;
  tTipo.text := dm.Query1.fieldbyname('tfa_nombre').asstring;
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
  QFacturaFAC_STATUS.value := 'EMI';
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

  QSerie.DisableControls;
  QSerie.close;
  QSerie.Parameters.ParamByName('emp').Value    := dm.vp_cia;
  QSerie.Parameters.ParamByName('suc').Value    := -1;
  QSerie.Parameters.ParamByName('tipo').Value   := -1;
  QSerie.Parameters.ParamByName('forma').Value  := 'A';
  QSerie.Parameters.ParamByName('numero').Value := -1;
  QSerie.open;
  QSerie.EnableControls;

  QEnvio.DisableControls;
  QEnvio.close;
  QEnvio.Parameters.ParamByName('emp').Value  := dm.vp_cia;
  QEnvio.Parameters.ParamByName('fac').Value := -1;
  QEnvio.Parameters.ParamByName('suc').Value := -1;
  QEnvio.open;
  QEnvio.EnableControls;

  QReceta.Close;

  edCliente.text := '';

  Totaliza := True;
  if (dm.QParametrospar_itbisincluido.Value <> 'True') and (ConItbis <> 'True') then
    QFacturaFAC_CONITBIS.Value := dm.QParametrosPAR_FACCONITBIS.Value
  else
    if ConItbis = 'True' then
      QFacturaFAC_CONITBIS.Value := 'True'
    else
      QFacturaFAC_CONITBIS.Value := 'False';

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

procedure TfrmFacturaRenta.edClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Cliente : integer;
begin
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
      Query1.sql.add('cli_factura_debajo_costo, cli_factura_debajo_minimo, tcl_codigo, cli_cedula, cli_rnc');
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
      CtaCliente       := Query1.fieldbyname('cli_cuenta').asstring;
      FactPendiente    := Query1.fieldbyname('cli_facturarbce').asstring;
      FactVencida      := Query1.fieldbyname('cli_facturarvencida').asstring;
      FactDebajoCosto  := Query1.fieldbyname('cli_factura_debajo_costo').asstring;
      FactDebajoMinimo := Query1.fieldbyname('cli_factura_debajo_minimo').asstring;

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
        edTipo.Enabled := False;
        btTipo.Enabled := False;
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
end;

procedure TfrmFacturaRenta.btBuscaCliClick(Sender: TObject);
var
  Cliente : integer;
begin
  Search.Query.clear;
  Search.AliasFields.clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Telefono');
  Search.AliasFields.Add('C�dula/RNC');
  Search.AliasFields.Add('C�digo');
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
    Query1.sql.add('cli_cedula, cli_rnc, tfa_codigo');
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
    FactDebajoMinimo := Query1.fieldbyname('cli_factura_debajo_minimo').asstring;
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
      edTipo.Enabled := False;
      btTipo.Enabled := False;
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
        dbCondi.SetFocus
      else
      begin
        PageControl1.ActivePageIndex := 0;
        Grid.setfocus;
      end;
    end;
  end;
end;

procedure TfrmFacturaRenta.QDetalleCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis : Double;
  a : integer;
begin
  if (QDetalleDET_CONITBIS.value = 'S') and (QFacturaFAC_CONITBIS.Value = 'True') then
  begin
    NumItbis := RoundTo((QDetalleDET_ITBIS.asfloat/100)+1, -2);
    if dm.QParametrospar_itbisincluido.Value = 'True' then
    begin
      Venta := (QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value)/NumItbis;
      QDetallePrecioItbis.value := RoundTo((QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value)/NumItbis, -2);
      QDetalleCalcDesc.value    := RoundTo(((QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value)/NumItbis * QDetalleDET_DESCUENTO.value)/100, -2);
      if ckItbis.Checked then
        QDetalleCalcItbis.value   := RoundTo(((((QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value)/NumItbis) - QDetalleCalcDesc.value) * QDetalleDET_ITBIS.value) / 100, -2)
      else
        QDetalleCalcItbis.value   := 0;

      QDetalleValor.value     := (QDetallePrecioItbis.value - QDetalleCalcDesc.value + QDetalleCalcItbis.value);
      QDetalleCalcItbis.value := RoundTo(QDetalleCalcItbis.value, -2);
    end
    else
    begin
      Venta := QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value;
      QDetallePrecioItbis.value := Venta;
      QDetalleCalcDesc.value    := RoundTo(((QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value) * QDetalleDET_DESCUENTO.value)/100, -4);
      if ckItbis.Checked then
        QDetalleCalcItbis.value := RoundTo((((QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value) - QDetalleCalcDesc.value)* QDetalleDET_ITBIS.value) / 100, -2)
      else
        QDetalleCalcItbis.value := 0;

      QDetalleCalcItbis.value := RoundTo(QDetalleCalcItbis.value, -2);
      QDetalleValor.value     := (QDetallePrecioItbis.value - QDetalleCalcDesc.value + QDetalleCalcItbis.value);
    end;
  end
  else
  begin
    Venta := QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value;
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
        if Grid.Columns[a].FieldName = 'DET_PRECIO' then
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
        if Grid.Columns[a].FieldName = 'DET_PRECIO' then
        begin
           Grid.Columns[a].ReadOnly := False;
           break;
        end;
      end
      else
      begin
        if Grid.Columns[a].FieldName = 'DET_PRECIO' then
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
      if Grid.Columns[a].FieldName = 'DET_DESCUENTO' then
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
      if Grid.Columns[a].FieldName = 'DET_DESCUENTO' then
      begin
        if dm.QUsuariosusu_descuento.Value = 'True' then
          Grid.Columns[a].ReadOnly := False
        else
          Grid.Columns[a].ReadOnly := true;
         break;
      end;
    end;
  end;
end;

procedure TfrmFacturaRenta.FormCreate(Sender: TObject);
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

  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
     Grid.Columns[0].FieldName := 'PRO_CODIGO'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
     Grid.Columns[0].FieldName := 'PRO_RFABRIC'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
     Grid.Columns[0].FieldName := 'PRO_RORIGINAL';

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

  if dm.QParametrosPAR_FACMEDIDA.Value <> 'True' then
  begin
    Grid.Columns[4].Destroy;
    Grid.Columns[3].Destroy;
    Grid.Columns[1].Width := Grid.Columns[1].Width + 87;
  end;

  if dm.QParametrospar_cantidad_primero.Value = 'True' then
  begin
    Grid.Columns[0].FieldName := 'DET_CANTIDAD';
    Grid.Columns[0].Width     := 30;
    Grid.Columns[0].Title.Caption := 'Cant.';
    Grid.Columns[2].Width     := 60;
    Grid.Columns[2].Title.Caption := 'C�digo';
    if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
       Grid.Columns[2].FieldName := 'PRO_CODIGO'
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
       Grid.Columns[2].FieldName := 'PRO_RFABRIC'
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
       Grid.Columns[2].FieldName := 'PRO_RORIGINAL';
  end;

  if dm.QParametrospar_formato_preimpreso.Value = 'QRMateirosa' then
    Panel2.Height := 126
  else Panel2.Height := 100;

end;

procedure TfrmFacturaRenta.QDetallePRO_RFABRICChange(Sender: TField);
var
  Prod : String;
  Lote : Integer;
  CtaCosto, CtaInvent, CtaIngreso, CtaDescuento : String;
begin
  if (dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F') and (Buscando = False) and (Not realizado) then
  begin
    Realizado := True;
    if not QDetallePRO_RFABRIC.isnull then
    begin
      if dm.QParametrosPAR_VENVERIFICA.Value = '1' then
      begin
        Prod := Copy(QDetallePRO_RFABRIC.value,
                dm.QParametrosPAR_VENDIGITOSLOTE.Value+1,
                Length(Trim(QDetallePRO_RFABRIC.value)));
        Lote := StrToInt(Copy(QDetallePRO_RFABRIC.value,1,
                dm.QParametrosPAR_VENDIGITOSLOTE.Value));
      end
      else
        Prod := QDetallePRO_RFABRIC.Value;
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select p.pro_codigo, p.pro_nombre, p.pro_costo, p.pro_precio1,');
      dm.Query1.sql.add('p.pro_precio2, p.pro_precio3, p.pro_precio4, p.dep_codigo,');
      dm.Query1.sql.add('p.pro_roriginal, p.pro_rfabric, p.pro_itbis, p.PRO_DESCMAX,');
      dm.Query1.sql.add('p.pro_servicio, p.pro_vence, p.PRO_PRECIOMENOR, p.pro_escala,');
      dm.Query1.sql.add('p.PRO_COSTOEMPAQUE, p.pro_combo, p.pro_preciomenoremp, p.pro_cantempaque,');
      dm.Query1.sql.add('p.pro_selectivo_ad, p.pro_selectivo_con, p.pro_minimo_venta, p.pro_montoitbis,p.pro_UtilizaRenta,');
      dm.Query1.sql.add('p.mar_codigo, p.pro_ctainvent, p.pro_ctacosto, p.fam_codigo, p.pro_utilizamedidor,p.pro_UtilizaEnvio');
      dm.Query1.sql.add('from productos p');
      dm.Query1.sql.add('where p.emp_codigo = :emp');
      dm.Query1.sql.add('and p.pro_rfabric = :cod');
      dm.Query1.sql.add('and pro_status = '+QuotedStr('ACT'));
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.parambyname('cod').Value := UpperCase(Prod);
      dm.Query1.open;

       if not dm.Query1.fieldbyname('pro_codigo').IsNull  then
        IDProducto := dm.Query1.fieldbyname('pro_codigo').AsInteger;
        
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
        if (Query1.RecordCount > 0) and (dm.QContabpar_codifica_venta_familia.Value = 'True') then
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

        QDetallepro_utilizamedidor.Value := dm.Query1.fieldbyname('pro_utilizamedidor').AsString;
        QDetallepro_UtilizaEnvio.Value := dm.Query1.fieldbyname('pro_UtilizaEnvio').AsString;
        QDetallepro_UtilizaRenta.Value := dm.Query1.fieldbyname('pro_UtilizaRenta').AsString;
        QDetalledet_cantempaque.Value   := dm.Query1.fieldbyname('pro_cantempaque').asfloat;
        QDetalledet_selectivo_ad.Value  := dm.Query1.fieldbyname('pro_selectivo_Ad').asfloat;
        QDetalledet_selectivo_con.Value := dm.Query1.fieldbyname('pro_selectivo_con').asfloat;
        QDetallePRO_COMBO.Value         := dm.Query1.fieldbyname('pro_combo').AsString;
        QDetalleDET_PRECIOMINIMO.Value  := dm.Query1.fieldbyname('PRO_PRECIOMENOR').asfloat;
        QDetalleDET_PRECIOMINIMOEMP.Value := dm.Query1.fieldbyname('PRO_PRECIOMENOREMP').asfloat;
        QDetalleDET_VENCE.Value     := dm.Query1.FieldByName('pro_vence').AsString;
        QDetalleDET_MANEJAESCALA.Value := dm.Query1.fieldbyname('pro_escala').asstring;
        QDetalleVEN_CODIGO.Value    := QFacturaVEN_CODIGO.Value;
        QDetallePRO_SERVICIO.Value  := dm.Query1.fieldbyname('pro_servicio').asstring;

        if not QFacturaALM_CODIGO.IsNull then
          QDetallealm_codigo.Value  := QFacturaALM_CODIGO.Value
        else
          QDetallealm_codigo.Value  := 1;

        if not dm.Query1.fieldbyname('dep_codigo').IsNull then
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
            QDetallealm_codigo.Value := 1;
        end;

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
        QDetallePRO_NOMBRE.value    := dm.Query1.fieldbyname('pro_nombre').asstring;
        QDetalleDET_CONITBIS.value  := dm.Query1.fieldbyname('pro_itbis').asstring;
        QDetalleDET_ITBIS.Value := dm.Query1.fieldbyname('pro_montoitbis').asfloat;
        QDetalleDET_COSTO.value     := dm.Query1.fieldbyname('pro_costo').asfloat;
        QDetalleDET_COSTOEMP.Value  := dm.Query1.fieldbyname('pro_costoempaque').asfloat;
        QDetalleDET_DESCUENTO.value := descuento;
        QDetalleDEP_CODIGO.value    := dm.Query1.fieldbyname('dep_codigo').asinteger;
        QDetalleDET_PRECIO1.Value      := dm.Query1.fieldbyname('pro_precio1').AsFloat;
        QDetalleDET_PRECIO2.Value      := dm.Query1.fieldbyname('pro_precio2').AsFloat;
        QDetalleDET_PRECIO3.Value      := dm.Query1.fieldbyname('pro_precio3').AsFloat;
        QDetalleDET_PRECIO4.Value      := dm.Query1.fieldbyname('pro_precio4').AsFloat;
        QDetalledet_minimo_venta.Value := dm.Query1.fieldbyname('pro_minimo_venta').AsFloat;
        QDetallemar_codigo.Value       := dm.Query1.fieldbyname('mar_codigo').AsInteger;

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

        //buscando ofertasn
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select descuento from pr_busca_oferta (:emp, :pro, :fec)');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
        dm.Query1.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
        dm.Query1.Parameters.ParamByName('fec').Value    := Date;
        dm.Query1.Open;
        if not dm.Query1.FieldByname('descuento').isnull then
        begin
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

        if not ckItbis.Checked then
        begin
          if QDetalleDET_CONITBIS.Value = 'S' then
          begin
            if dm.QParametrospar_itbisincluido.Value = 'False' then
              QDetalleDET_PRECIO.Value := (QDetalleDET_PRECIO.Value / ((QDetalleDET_ITBIS.Value/100)+1));
          end;
        end;

//estaba aqui...

        if dm.QContabpar_codifica_venta_familia.Value = 'True' then
        begin
          //Cuenta de Ingreso
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

        if QDetallepro_UtilizaEnvio.Value = 'True' then
          DatosEnvio();

        if ((QDetalleDET_CANTIDAD.IsNull) or (QDetalleDET_CANTIDAD.Value = 0)) then QDetalleDET_CANTIDAD.Value := 1;
        QDetalle.Post;
        if dm.QParametrosPAR_FACBAJARLINEA.Value = 'True' then
        begin
          QDetalle.Append;
          Grid.SelectedIndex := 0;
        end;

        //Si es un producto que utiliza medidor
        if QDetallepro_utilizamedidor.Value = 'True' then
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
      end;
    end;
  end;
end;

procedure TfrmFacturaRenta.QDetallePRO_RORIGINALChange(Sender: TField);
var
  Prod : String;
  Lote : Integer;
  CtaCosto, CtaInvent, CtaIngreso, CtaDescuento : String;
begin
  if (dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O') and (Buscando = False) and (Not realizado) then
  begin
    Realizado := True;
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
      dm.Query1.SQL.Add('p.pro_selectivo_ad, p.pro_selectivo_con, p.pro_minimo_venta, p.pro_montoitbis, p.pro_UtilizaRenta,');
      dm.Query1.sql.add('p.mar_codigo, p.pro_ctainvent, p.pro_ctacosto, p.fam_codigo, p.UnidadID,p.pro_utilizamedidor,p.pro_UtilizaEnvio');
      dm.Query1.sql.add('from productos p');
      dm.Query1.sql.add('where p.emp_codigo = :emp');
      dm.Query1.sql.add('and p.pro_roriginal = :cod');
      dm.Query1.sql.add('and pro_status = '+QuotedStr('ACT'));
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.parambyname('cod').Value := UpperCase(Prod);
      dm.Query1.open;

       if not dm.Query1.fieldbyname('pro_codigo').IsNull  then
        IDProducto := dm.Query1.fieldbyname('pro_codigo').AsInteger;
      QDetallePRO_CODIGO.value := dm.Query1.fieldbyname('pro_codigo').asinteger;
      if (Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)) >= 0) and
      (dm.QParametrosPAR_FACREPITEPROD.Value = 'False') then
      begin
        MessageDlg('ESTE PRODUCTO ESTA INCLUIDO EN ESTA FACTURA',
        mtError,[mbok],0);
        Abort;
      end
      else if dm.Query1.RecordCount = 0 then
      begin
        MessageDlg('ESTE PRODUCTO NO ESTA REGISTRADO EN EL MAESTRO',
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
        if (Query1.RecordCount > 0) and (dm.QContabpar_codifica_venta_familia.Value = 'True')then
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

        QDetallepro_utilizamedidor.Value := dm.Query1.fieldbyname('pro_utilizamedidor').AsString;
        QDetallepro_UtilizaEnvio.Value := dm.Query1.fieldbyname('pro_UtilizaEnvio').AsString;
        QDetallepro_UtilizaRenta.Value := dm.Query1.fieldbyname('pro_UtilizaRenta').AsString;

          UtilizaEnvio := dm.Query1.fieldbyname('pro_UtilizaEnvio').AsString;
          UtilizaRenta := dm.Query1.fieldbyname('pro_UtilizaRenta').AsString;
          utilizamedidor :=dm.Query1.fieldbyname('pro_utilizamedidor').AsString;

        QDetalledet_cantempaque.Value   := dm.Query1.fieldbyname('pro_cantempaque').asfloat;
        QDetalledet_selectivo_ad.Value := dm.Query1.fieldbyname('pro_selectivo_Ad').asfloat;
        QDetalledet_selectivo_con.Value := dm.Query1.fieldbyname('pro_selectivo_con').asfloat;
        QDetallePRO_COMBO.Value        := dm.Query1.fieldbyname('pro_combo').AsString;
        QDetalleDET_PRECIOMINIMO.Value := dm.Query1.fieldbyname('PRO_PRECIOMENOR').asfloat;
        QDetalleDET_PRECIOMINIMOEMP.Value := dm.Query1.fieldbyname('PRO_PRECIOMENOREMP').asfloat;
        QDetalleDET_VENCE.value        := dm.Query1.fieldbyname('pro_vence').asstring;
        QDetalleDET_MANEJAESCALA.Value := dm.Query1.fieldbyname('pro_escala').asstring;
        QDetallePRO_SERVICIO.Value     := dm.Query1.fieldbyname('pro_servicio').asstring;
        if not QFacturaALM_CODIGO.IsNull then
          QDetallealm_codigo.Value := QFacturaALM_CODIGO.Value
        else
          QDetallealm_codigo.Value := 1;

        if not dm.Query1.fieldbyname('dep_codigo').IsNull then
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
        end;

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
        QDetalleVEN_CODIGO.Value       := QFacturaVEN_CODIGO.Value;
        QDetalleDET_ITBIS.Value := dm.Query1.fieldbyname('pro_montoitbis').asfloat;
        QDetalleDET_CONITBIS.value     := dm.Query1.fieldbyname('pro_itbis').asstring;
        QDetalleDET_COSTO.value        := dm.Query1.fieldbyname('pro_costo').asfloat;
        QDetalleDET_COSTOEMP.Value     := dm.Query1.fieldbyname('pro_costoempaque').asfloat;
        QDetalleDET_DESCUENTO.value    := descuento;
        QDetalleDEP_CODIGO.value       := dm.Query1.fieldbyname('dep_codigo').asinteger;
        QDetalleDET_PRECIO1.Value      := dm.Query1.fieldbyname('pro_precio1').AsFloat;
        QDetalleDET_PRECIO2.Value      := dm.Query1.fieldbyname('pro_precio2').AsFloat;
        QDetalleDET_PRECIO3.Value      := dm.Query1.fieldbyname('pro_precio3').AsFloat;
        QDetalleDET_PRECIO4.Value      := dm.Query1.fieldbyname('pro_precio4').AsFloat;
        QDetalledet_minimo_venta.Value := dm.Query1.fieldbyname('pro_minimo_venta').AsFloat;
        QDetallemar_codigo.Value       := dm.Query1.fieldbyname('mar_codigo').AsInteger;
        QDetalleUnidadID.Value         := dm.Query1.fieldbyname('UnidadID').AsString;

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
                if actbalance = 'False' then
                  QDetalleDET_PRECIO.Value := QUnidadesPrecio.Value
                else
                  QDetalleDET_PRECIO.Value := QUnidadesCredito.Value;
                QDetalledet_cant_unidad_medida.Value := QUnidadesCantidad.AsFloat;
              end;
            end;
          end;
        //end;

        //buscando ofertas
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select descuento from pr_busca_oferta (:emp, :pro, :fec)');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
        dm.Query1.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
        dm.Query1.Parameters.ParamByName('fec').Value := Date;
        dm.Query1.Open;
        if not dm.Query1.FieldByname('descuento').isnull then
        begin
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
          dm.Query1.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
          dm.Query1.Parameters.ParamByName('cli').Value := QFacturaCLI_CODIGO.Value;
          dm.Query1.Open;
          if dm.Query1.RecordCount > 0 then
          begin
            if not dm.Query1.FieldByname('clp_descuento').isnull then
            begin
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

        if not ckItbis.Checked then
        begin
          if QDetalleDET_CONITBIS.Value = 'S' then
          begin
            if dm.QParametrospar_itbisincluido.Value = 'False' then
              QDetalleDET_PRECIO.Value := (QDetalleDET_PRECIO.Value / ((QDetalleDET_ITBIS.Value/100)+1));
          end;
        end;



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

        if UtilizaRenta = 'True' then
          begin
            QDetalle.Edit;
            QDetallepro_UtilizaRenta.Value := 'True' ;
           // DatosEnvio();
          end;

        if UtilizaEnvio = 'True' then
          begin
            QDetalle.Edit;
            QDetallepro_UtilizaEnvio.Value := 'True' ;
            DatosEnvio();
          end;

        if ((QDetalleDET_CANTIDAD.IsNull) or (QDetalleDET_CANTIDAD.Value=0)) then QDetalleDET_CANTIDAD.Value := 1;
           QDetalle.Post;

        if dm.QParametrosPAR_FACBAJARLINEA.Value = 'True' then
        begin
          QDetalle.Append;
          Grid.SelectedIndex := 0;
        end;

        //Si es un producto que utiliza medidor
        if utilizamedidor = 'True' then
        begin
          Application.CreateForm(tfrmDatosMedidor, frmDatosMedidor);
          frmDatosMedidor.ShowModal;
          if frmDatosMedidor.edActual.Text <> '' then
          begin
            QDetalle.Edit;
            QDetallepro_utilizamedidor.Value :='True';
              QDetalleMedidorID.Value := StrToInt(frmDatosMedidor.edMedidor.Text);
              QDetalleMedidor_Secuencia.Value := StrToFloat(frmDatosMedidor.edAnterior.Text);
              QDetalleMedidor_Cantidad.Value  := StrToFloat(frmDatosMedidor.edActual.Text);
              QDetalleDET_CANTIDAD.Value      := QDetalleMedidor_Cantidad.Value - QDetalleMedidor_Secuencia.Value;
            QDetalle.Post;
          end;
          frmDatosMedidor.Release;
        end;
      end;
    end;
  end;
end;

procedure TfrmFacturaRenta.QDetallePRO_CODIGOChange(Sender: TField);
var
  Prod, Lote : Integer;
  CtaCosto, CtaInvent, CtaIngreso, CtaDescuento : String;
begin
  if (dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I') and (Buscando = False) and (Not realizado) then
  begin
    Realizado := True;
    if not QDetallePRO_CODIGO.isnull then
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
        Prod := QDetallePRO_CODIGO.Value;

      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select p.pro_codigo, p.pro_nombre, p.pro_costo, p.pro_precio1,');
      dm.Query1.sql.add('p.pro_precio2, p.pro_precio3, p.pro_precio4, p.dep_codigo, ');
      dm.Query1.sql.add('p.pro_roriginal, p.pro_rfabric, p.pro_itbis, p.PRO_DESCMAX,');
      dm.Query1.sql.add('p.pro_servicio, p.pro_vence, p.PRO_PRECIOMENOR, p.pro_escala,');
      dm.Query1.sql.add('p.PRO_COSTOEMPAQUE, p.pro_combo, p.pro_preciomenoremp, p.pro_cantempaque,');
      dm.Query1.sql.add('p.pro_selectivo_ad, p.pro_selectivo_con, p.pro_minimo_venta, p.pro_montoitbis, p.pro_UtilizaRenta,');
      dm.Query1.sql.add('p.mar_codigo, p.pro_ctainvent, p.pro_ctacosto, p.fam_codigo, p.UnidadID, p.pro_utilizamedidor,p.pro_UtilizaEnvio,p.pro_serializado');
      dm.Query1.sql.add('from productos p');
      dm.Query1.sql.add('where p.emp_codigo = :emp');
      dm.Query1.sql.add('and p.pro_codigo = :cod');
      dm.Query1.sql.add('and p.pro_status = '+QuotedStr('ACT'));
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.parambyname('cod').Value := Prod;
      dm.Query1.open;

      if not dm.Query1.fieldbyname('pro_codigo').IsNull  then
        IDProducto := dm.Query1.fieldbyname('pro_codigo').AsInteger;

      if dm.Query1.RecordCount = 0 then
      begin
        MessageDlg('ESTE PRODUCTO NO ESTA REGISTRADO EN EL MAESTRO',
        mtError,[mbok],0);
        Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
        QDetalle.Delete;
        Totalizar;
//        realizado := false;
        Abort;
      end
      else if (Lista.Items.IndexOf(IntToStr(Prod)) >= 0) and
      (dm.QParametrosPAR_FACREPITEPROD.Value = 'False') then
      begin
        MessageDlg('ESTE PRODUCTO ESTA INCLUIDO EN ESTA FACTURA',
        mtError,[mbok],0);
        realizado := false;
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
        UtilizaRenta := dm.Query1.fieldbyname('pro_UtilizaRenta').AsString;
        utilizamedidor :=dm.Query1.fieldbyname('pro_utilizamedidor').AsString;

        QDetalledet_cantempaque.Value   := dm.Query1.fieldbyname('pro_cantempaque').asfloat;
        QDetalledet_selectivo_ad.Value  := dm.Query1.fieldbyname('pro_selectivo_Ad').asfloat;
        QDetalledet_selectivo_con.Value := dm.Query1.fieldbyname('pro_selectivo_con').asfloat;
        QDetallePRO_COMBO.Value         := dm.Query1.fieldbyname('pro_combo').AsString;
        QDetalleDET_PRECIOMINIMO.Value  := dm.Query1.fieldbyname('PRO_PRECIOMENOR').asfloat;
        QDetalleDET_PRECIOMINIMOEMP.Value := dm.Query1.fieldbyname('PRO_PRECIOMENOREMP').asfloat;
        QDetalleDET_VENCE.value           := dm.Query1.fieldbyname('pro_vence').asstring;
        QDetalleDET_MANEJAESCALA.Value    := dm.Query1.fieldbyname('pro_escala').asstring;
        QDetallePRO_SERVICIO.Value        := dm.Query1.fieldbyname('pro_servicio').asstring;
        QDetalleDET_ITBIS.Value := dm.Query1.fieldbyname('pro_montoitbis').asfloat;
        if not QFacturaALM_CODIGO.IsNull then
          QDetallealm_codigo.Value  := QFacturaALM_CODIGO.Value
        else
          QDetallealm_codigo.Value  := 1;

        QDetalleUnidadID.Value := dm.Query1.fieldbyname('UnidadID').AsString;

        if not dm.Query1.fieldbyname('dep_codigo').IsNull then
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
        end;

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
        QDetalleDET_DESCUENTO.value := descuento;
        QDetalleDEP_CODIGO.value    := dm.Query1.fieldbyname('dep_codigo').asinteger;
        QDetalleVEN_CODIGO.Value    := QFacturaVEN_CODIGO.Value;
        QDetalleDET_PRECIO1.Value      := dm.Query1.fieldbyname('pro_precio1').AsFloat;
        QDetalleDET_PRECIO2.Value      := dm.Query1.fieldbyname('pro_precio2').AsFloat;
        QDetalleDET_PRECIO3.Value      := dm.Query1.fieldbyname('pro_precio3').AsFloat;
        QDetalleDET_PRECIO4.Value      := dm.Query1.fieldbyname('pro_precio4').AsFloat;
        QDetalledet_minimo_venta.Value := dm.Query1.fieldbyname('pro_minimo_venta').AsFloat;
        QDetallemar_codigo.Value       := dm.Query1.fieldbyname('mar_codigo').AsInteger;
        QDetallepro_serializado.Value  := dm.Query1.fieldbyname('pro_serializado').AsString;

        QDetallepro_utilizamedidor.Value := utilizamedidor;
        QDetallepro_UtilizaEnvio.Value := UtilizaEnvio;
        QDetallepro_UtilizaRenta.Value := UtilizaRenta;

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
            if dm.QParametrosPAR_FACMEDIDA.Value = 'False' then
              QDetalleDET_PRECIO.value := QDetalle.FieldByName('det_'+Precio).AsFloat;
          end;
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
              if actbalance = 'False' then
                QDetalleDET_PRECIO.Value := QUnidadesPrecio.Value
              else
                QDetalleDET_PRECIO.Value := QUnidadesCredito.Value;
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

        if not ckItbis.Checked then
        begin
          if QDetalleDET_CONITBIS.Value = 'S' then
          begin
            if dm.QParametrospar_itbisincluido.Value = 'False' then
              QDetalleDET_PRECIO.Value := (QDetalleDET_PRECIO.Value / ((QDetalleDET_ITBIS.Value/100)+1));
          end;
        end;

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

        if dm.QParametrosPAR_FACBAJARLINEA.Value = 'True' then
        begin
          QDetalle.Append;
          Grid.SelectedIndex := 0;
        end;
      end;
    end;
  end;
end;

procedure TfrmFacturaRenta.GridColEnter(Sender: TObject);
begin
 (*
   --Pone la columna descripcion de solo lectura
   if Grid.selectedindex = 1 then
     Grid.selectedindex := 2
  else

  *)
if QDetalle.state in [dsEdit,dsInsert]then
begin
   if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_CANTEMPAQUE' then
     Grid.selectedindex := Grid.selectedindex + 1
  else if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_ESCALA' then
     Grid.selectedindex := Grid.selectedindex + 1
  else if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'CALCITBIS' then
     Grid.selectedindex := Grid.selectedindex + 1
  else if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_SELECTIVO_AD' then
     Grid.selectedindex := Grid.selectedindex + 1
  else if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_SELECTIVO_CON' then
     Grid.selectedindex := Grid.selectedindex + 1
  else if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'PRECIOITBIS' then
     Grid.selectedindex := Grid.selectedindex + 1
  else if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'VALOR' then
  begin
    Grid.selectedindex := 0;
    QDetalle.Append;
  end;
  if (Grid.selectedindex <> 0) and (QDetalle.FieldByName(Grid.Columns[0].FieldName).IsNull) then
    Grid.selectedindex := 0;

  {if Grid.Columns[0].FieldName <> 'DET_CANTIDAD' then
  begin
    if (Grid.selectedindex <> 0) and (QDetallePRO_CODIGO.IsNull)  then
       Grid.selectedindex := 0;
  end
  else
    if (Grid.selectedindex <> 0) and (QDetalleDET_CANTIDAD.IsNull)  then
       Grid.selectedindex := 0;}
end;
end;

procedure TfrmFacturaRenta.GridEnter(Sender: TObject);
begin
  Grid.selectedindex := 0;
end;

procedure TfrmFacturaRenta.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_f4) and (btBuscaProd.Enabled = True) then btBuscaProdClick(self);
  if key = vk_f7  then btPrecioClick(Self);

end;

procedure TfrmFacturaRenta.GridKeyPress(Sender: TObject; var Key: Char);
var
  a : integer;
begin
  if key = #13 then Grid.selectedindex := Grid.selectedindex + 1;
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
  end;
end;

procedure TfrmFacturaRenta.btBuscaProdClick(Sender: TObject);
var
  primera : boolean;
  Relleno, Lote : string;
  s : array[0..20] of char;
begin
  application.createform(tfrmBuscaProducto, frmBuscaProducto);
  frmBuscaProducto.almacen := DM.QParametrosPAR_INVALMACEN.Value;
  frmBuscaProducto.facturando := True;
  primera := true;
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
      if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
         QDetallePRO_CODIGO.value := frmBuscaProducto.QProductosPRO_CODIGO.value
      else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
         QDetallePRO_RFABRIC.value := Relleno+frmBuscaProducto.QProductosPRO_RFABRIC.value
      else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
         QDetallePRO_RORIGINAL.value := Relleno+frmBuscaProducto.QProductosPRO_RORIGINAL.value;

      if frmBuscaProducto.ckactiva.Checked then
      begin
        QDetalle.Append;
        Grid.SelectedIndex := 0;
      end;
    end;
  end;
  frmBuscaProducto.release;
  PageControl1.ActivePageIndex := 0;
  Grid.setfocus;
end;

procedure TfrmFacturaRenta.btSalirClick(Sender: TObject);
begin
  close;
end;

procedure TfrmFacturaRenta.QDetalleBeforePost(DataSet: TDataSet);
var
  PorcReal : Double;
  PrecioReal:Double;
begin
  PrecioReal:=0;
  if QDetalledet_cant_oferta.IsNull then QDetalledet_cant_oferta.Value := 0;

  if trim(QDetalleDET_MEDIDA.Value) = '' then
     QDetalleDET_MEDIDA.Value := 'Und';

  QDetalleDET_TOTALDESC.Value  := QDetalleCalcDesc.Value;
  QDetalleDET_TOTALITBIS.Value := QDetalleCalcItbis.Value;
  if not QDetallePRO_CODIGO.isnull then
  begin
    Lista.Items.Add(IntToStr(QDetallePRO_CODIGO.Value));
    if ((QDetalleDET_CANTIDAD.isnull) or (QDetalleDET_CANTIDAD.Value=0)) then
       QDetalleDET_CANTIDAD.value := 1;
  end;
  if QDetalleDET_DESCUENTO.isnull then
     QDetalleDET_DESCUENTO.Value := 0;
  if QDetalleDET_COMISION.IsNull then
    QDetalleDET_COMISION.Value := 0;
  QDetalleDET_TOTAL.value := QDetalleValor.value;


  if (dm.QUsuariosusu_disminuye_precio.Value <> 'True') and
  (dm.QUsuariosusu_debajo_minimo.Value = 'True') then
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

       if (PorcReal > StrToFloat(Format('%10.2f',[QDetalleDET_DESCMAX.Value]))) and
       (dm.QUsuariosusu_excede_descuento.Value <> 'True') then
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
    end;

    if QDetallePRO_SERVICIO.Value <> 'True' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select * from pr_verifica_disp (:emp, :alm, :pro, :can, :med, :usu, :suc, :tfa, :for, :num)');
      dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
      //dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.ParamByName('alm').Value  := QDetalleALM_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('pro').Value  := QDetallePRO_CODIGO.Value;


      if dm.QParametrospar_inv_unidad_medida.Value = 'True' then
         dm.Query1.Parameters.ParamByName('can').Value  := QDetalleDET_CANTIDAD.Value * QDetalledet_cant_unidad_medida.Value
      else
         dm.Query1.Parameters.ParamByName('can').Value  := QDetalleDET_CANTIDAD.Value;

      dm.Query1.Parameters.ParamByName('med').Value  := QDetalleDET_MEDIDA.Value;
      dm.Query1.Parameters.ParamByName('usu').Value  := dm.Usuario;
      dm.Query1.Parameters.ParamByName('suc').Value  := QFacturaSUC_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('tfa').Value  := QFacturaTFA_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('for').Value  := QFacturaFAC_FORMA.Value;
      dm.Query1.Parameters.ParamByName('num').Value  := QFacturaFAC_NUMERO.Value;
      //dm.Query1.Parameters.ParamByName('emp2').Value := QFacturaEMP_CODIGO.Value;
      dm.Query1.Open;
                //fer
      if dm.Query1.FieldByName('facturar').AsString = 'False' then
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
      else if (FactDebajoCosto <> 'True') and (dm.QUsuariosusu_debajo_costo.Value <> 'True') then
      begin
        if (StrToFloat(format('%10.2F',[dm.Query1.FieldByName('costo').AsFloat])) > 0) and (dm.QParametrosPAR_DEBAJOCOSTO.Value = 'False') then
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

          if (StrToFloat(format('%10.2F',[dm.Query1.FieldByName('costo').AsFloat])) >
            PrecioReal)
          and (QDetalleDET_OFERTA.Value <> 'S') and (dm.QParametrosPAR_DEBAJOCOSTO.Value = 'False') then
          begin
            MessageDlg('NO PUEDE FACTURAR UN PRODUCTO POR DEBAJO DEL COSTO',mtError,[mbok],0);
            Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
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
              MessageDlg('NO TIENE ACCESO PARA EXCEDER FACTURAR EL PRODUCTO POR DEBAJO DEL COSTO '+Format('%n',[QDetalleDET_COSTO.Value])+'%',mtError,[mbok],0);
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
      if (FactDebajoMinimo <> 'True') and (dm.QUsuariosusu_debajo_minimo.Value <> 'True') then
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
              Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
              QDetalleDET_PRECIO.Clear;
              Grid.SelectedIndex := 3;
              abort;
            end;
          end;
        end
        else if QDetalleDET_MEDIDA.Value = 'Emp' then //Empaque
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
  QMsnExistencia.Close;
  QMsnExistencia.Parameters.ParamByName('emp').Value := dm.vp_cia;
  //QMsnExistencia.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
  QMsnExistencia.Parameters.ParamByName('alm').Value := QFacturaALM_CODIGO.Value;
  QMsnExistencia.Parameters.ParamByName('usu').Value := dm.Usuario;
  QMsnExistencia.Parameters.ParamByName('SUC_CODIGO').Value := dsSuc.DataSet.fieldbyname('suc_codigo').Value;
  QMsnExistencia.Open;

  {if (QDetalledet_minimo_venta.Value > 0) and (not QDetalledet_minimo_venta.IsNull) then
  begin
    if (QDetalleDET_CANTIDAD.Value / Trunt(QDetalleDET_CANTIDAD.Value)
    begin
      MessageDlg('LA CANTIDAD MINIMA PARA VENDER DE ESTE PRODUCTO ES: '+QDetalledet_minimo_venta.AsString,mtError,[mbok],0);
      QDetalleDET_CANTIDAD.Clear;
      Grid.SelectedIndex := 2;
      Abort;
    end;
  end;}

end;

procedure TfrmFacturaRenta.totalizar;
var
  Puntero : TBookmark;
  TItbis, TDesc, TComision, SelectivoAd, SelectivoCon, TotalCosto, grabado : Double;
  cant : integer;
begin
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
    while not QDetalle.eof do
    begin
      Totaliza := False;
      TotalCosto := TotalCosto + (QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value);
      QDetalle.Edit;
      if not QDetallePRO_CODIGO.isnull then
        cant := cant + 1;

      if (ckItbis.Checked) then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          Total  := Total  + QDetallePrecioItbis.value
        else
          Total  := Total  + QDetalleDET_PRECIO.value*QDetalledet_cantidad.Value;
      end
      else
        begin
          QDetalleDET_CONITBIS.Value := 'N'; //Agregado por Titin porque devolucion trae itbis
          QDetalleDET_ITBIS.value := 0;
          Total  := Total  + QDetalleDET_PRECIO.value*QDetalledet_cantidad.Value;
        end;

      if QDetalleDET_CONITBIS.Value = 'S' then
        grabado := grabado + ((QDetallePrecioItbis.value-QDetalleCalcDesc.Value));

      SelectivoAd  := SelectivoAd  + (QDetalledet_selectivo_ad.Value);
      SelectivoCon := SelectivoCon + (QDetalledet_selectivo_con.Value);
      TDesc   := TDesc  + strtofloat(format('%10.2f',[QDetalleCalcDesc.value]));
      TItbis  := TItbis + QDetalleCalcItbis.value;

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
    if ckItbis.Checked then
      QFacturaFAC_ITBIS.Value := RoundTo(titbis, -2)
    else
      QFacturaFAC_ITBIS.value   := 0;

    QFacturaFAC_DESCUENTO.value := strtofloat(format('%10.2f',[TDesc]));
    QFacturaFAC_COMISION.Value  := strtofloat(format('%10.2f',[TComision]));
    QFacturaFAC_OTROS.Value := MontoFijo + ((total * PorcFijo)/100);
    QFacturafac_selectivo_ad.Value := SelectivoAd;
    QFacturafac_selectivo_con.Value := SelectivoCon;
    if ckdomicilio.Checked then
      QFacturaFAC_TOTAL.value     := (Total-TDesc)+QFacturaFAC_ITBIS.value+QFacturaFAC_OTROS.Value+
                                     dm.QParametrospar_monto_domicilio.Value+
                                     QFacturafac_selectivo_con.Value+QFacturafac_selectivo_ad.Value
    else
      QFacturaFAC_TOTAL.value     := (Total-TDesc)+QFacturaFAC_ITBIS.value+QFacturaFAC_OTROS.Value+
                                     QFacturafac_selectivo_con.Value+QFacturafac_selectivo_ad.Value;
      {QFacturaFAC_TOTAL.value     := strtofloat(format('%10.2f',[(Total-TDesc)+QFacturaFAC_ITBIS.value+QFacturaFAC_OTROS.Value]))+
                                     QFacturafac_selectivo_con.Value+QFacturafac_selectivo_ad.Value;}


    QDetalle.GotoBookmark(Puntero); //20170610
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

procedure TfrmFacturaRenta.QDetalleAfterPost(DataSet: TDataSet);
begin
  if not QDetallePRO_CODIGO.isnull then
    Totalizar;
end;

procedure TfrmFacturaRenta.QDetalleBeforeDelete(DataSet: TDataSet);
begin
  //abort;
     if not QFacturaFAC_NUMERO.IsNull then
       idFacturaTmp:=QFacturaFAC_NUMERO.value;
    //aCTUALIZA eNVIO
  with dm.adoMultiUso do begin
    close;
    Sql.clear();
    Sql.add('Delete From Envio Where fac_numero = :Fac');
    Parameters.parambyname('fac').Value :=  idFacturaTmp;
    ExecSQL;
  end;
end;

procedure TfrmFacturaRenta.QFacturaCalcFields(DataSet: TDataSet);
begin
  QFacturaSubTotal.value := Total;
end;

procedure TfrmFacturaRenta.btPrecioClick(Sender: TObject);
begin
  if (not QDetallePRO_CODIGO.isnull) and (QDetalleDET_OFERTA.Value = 'N') then
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
      frmPrecios.QProductos.Parameters.ParamByName('prod').Value := QDetallePRO_CODIGO.Value;
      frmPrecios.QProductos.Open;

      frmPrecios.QUnidades.Close;
      frmPrecios.QUnidades.Parameters.ParamByName('emp_codigo').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      frmPrecios.QUnidades.Parameters.ParamByName('pro_codigo').Value := QDetallePRO_CODIGO.Value;
      frmPrecios.QUnidades.Parameters.ParamByName('uni').Value        := QDetalleUnidadID.Value;
      frmPrecios.QUnidades.Open;

      frmPrecios.ActiveControl := frmPrecios.gunidades; 
      frmPrecios.ShowModal;
      if frmPrecios.acepto = 1 then
      begin
        QDetalle.edit;
        if actbalance <> 'True' then
          QDetalleDET_PRECIO.value := frmPrecios.QUnidadesPrecio.Value
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

procedure TfrmFacturaRenta.btNotaClick(Sender: TObject);
begin
  application.createform(tfrmNota, frmNota);
  frmNota.DBMemo1.DataSource := frmFacturaRenta.dsFactura;
  frmNota.DBMemo1.DataField := 'FAC_NOTA';
  frmNota.showmodal;
  frmNota.release;
end;

procedure TfrmFacturaRenta.btLimpiarClick(Sender: TObject);
var I :integer;
begin
  if messagedlg('DESEA CANCELAR LA FACTURA?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QDetalle.DisableControls;
    QDetalle.close;
    QFactura.DisableControls;
    QFactura.close;
    QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
    QFactura.Parameters.ParamByName('tipo').Value   := -1;
    QFactura.Parameters.ParamByName('forma').Value   := 'A';
    QFactura.Parameters.ParamByName('numero').Value := -1;
    QFactura.Parameters.ParamByName('suc').Value := -1;
    QFactura.open;
    QFactura.EnableControls;
    QFactura.insert;
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

procedure TfrmFacturaRenta.btGrabarClick(Sender: TObject);
var
  I, a, rec, fila : integer;
  TipoMov, Abono, rnc, nombre : String;
  valido : boolean;
begin
  if Producto_sin_Serializar(EmptyStr) then
     begin
      ShowMessage('HAY PRODUCTOS SERIALIZADOS SIN SERIALIZAR, Verifique...');
      Exit;
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
  end
  else if (StrToFloat(Format('%10.2f',[QFacturaFAC_TOTAL.Value])) = 0) and (dm.QParametrospar_facturarcero.Value <> 'True') then
  begin
    showmessage('LA FACTURA NO PUEDE ESTAR EN CERO');
    PageControl1.ActivePageIndex := 0;
    Grid.setfocus;
  end
  else if trim(edTipo.text) = '' then
  begin
    showmessage('DEBE ESPECIFICAR EL TIPO DE FACTURA');
    edTipo.setfocus;
  end
  else if trim(DBEdit11.text) = '' then
  begin
    showmessage('DEBE ESPECIFICAR EL NOMBRE DEL CLIENTE');
    DBEdit11.setfocus;
  end
  else if (dm.QUsuariosusu_factura_cuentas.Value = 'True') and (lbBAL.Caption <> '0.00') then
  begin
    MessageDlg('LAS CUENTAS CONTABLES DE ESTA FACTURA'+#13+
               'NO ESTAN CUADRADAS',mtError,[mbok],0);
    PageControl1.ActivePageIndex := 1;
    GridCuentas.SetFocus;
  end
  else if ((not valido) and (rnc <> '')) or ((length(rnc) < 9) and (SelRNC = 'True')) then
  begin
    MessageDlg('DEBE DIGITAR UN RNC VALIDO, SIN GUIONES U OTROS SIGNOS',mtError,[mbok],0);
    DBEdit14.setfocus;
  end
  else
  begin
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
      edTipo.SetFocus;
    end
    else
    begin
      if QDetalle.State <> dsBrowse then
      begin
        QDetalle.Edit;
        QDetalle.Post;
      end;
      QFacturafac_abono.Value := 0;
      Totaliza := False;
      {QDetalle.Edit;
      Totaliza := True;
      QDetalle.Post;}
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
      end
      else if (dm.Query1.fieldbyname('tfa_selcondi').asstring = 'True')
      and ((QFacturaCPA_CODIGO.isnull) or (QFacturaCPA_CODIGO.Value = 0)) then
      begin
        showmessage('DEBE ESPECIFICAR LAS CONDICIONES DE PAGO');
        dbCondi.setfocus;
      end
      else if (QFacturaVEN_CODIGO.IsNull) or (QFacturaVEN_CODIGO.Value = 0) then
      begin
        showmessage('DEBE ESPECIFICAR EL VENDEDOR');
        dbVendedor.setfocus;
      end
      else
      begin
          QFacturaTFA_CODIGO.Value := StrToInt(Trim(edTipo.Text));
          frmFormaPagoFac.QNota.Close;
          frmFormaPagoFac.QNota.Open;
          if not frmFormaPagoFac.QFormaPago.Active then
          begin
            frmFormaPagoFac.QFormaPago.close;
            frmFormaPagoFac.QFormaPago.Parameters.ParamByName('emp').Value    := dm.vp_cia;
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
          TraerFormaPago := dm.Query1.fieldbyname('tfa_traerformapago').asstring;
          CodMov := dm.Query1.fieldbyname('tmo_codigo').asinteger;
          Facturar := True;

          if TraerFormaPago = 'True' then
          begin
            frmFormaPagoFac.Pendiente := QFacturaFAC_TOTAL.value;
            frmFormaPagoFac.Total := QFacturaFAC_TOTAL.value;
            {dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('select ncr_numero from notascredito');
            dm.Query1.SQL.Add('where emp_codigo = :emp');
            dm.Query1.SQL.Add('and cli_codigo = :cli');
            dm.Query1.SQL.Add('and ncr_montousado < ncr_monto');
            dm.Query1.SQL.Add('and suc_codigo = :suc');
            dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
            dm.Query1.Parameters.ParamByName('cli').Value := QFacturaCLI_CODIGO.Value;
            dm.Query1.Parameters.ParamByName('suc').Value := QFacturaSUC_CODIGO.Value;
            dm.Query1.Open;
            dm.Query1.DisableControls;
            while not dm.Query1.Eof do
            begin
              frmFormaPagoFac.QNota.Append;
              frmFormaPagoFac.QNotaNCR_NUMERO.Value := dm.Query1.FieldByName('ncr_numero').AsInteger;
              frmFormaPagoFac.QNotasuc_codigo.Value := QFacturaSUC_CODIGO.Value;
              frmFormaPagoFac.QNota.Post;
              dm.Query1.Next;
            end;
            dm.Query1.EnableControls;}

            frmFormaPagoFac.Total := QFacturaFAC_TOTAL.value;
            frmFormaPagoFac.lbTotal.caption := format('%n',[QFacturaFAC_TOTAL.value]);
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
                Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
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
            facturar := frmFormaPagoFac.facturar;
            QFacturaFAC_ABONO.value := QFacturaFAC_TOTAL.value;
            QFacturaFAC_STATUS.value := 'PAG';
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
            if (StrToFloat(Format('%10.2f',[QFacturaFAC_TOTAL.Value])) -
            StrToFloat(Format('%10.2f',[QFacturaFAC_ABONO.Value])) >
            StrToFloat(format('%10.2f',[Limite]))) and (actbalance = 'True')
            and (VerLimite = 'True') and (dm.QUsuariosusu_excede_limite.Value <> 'True') then
            begin
              MessageDlg('LO FACTURADO SOBREPASA EL CREDITO DISPONIBLE'+#13+
                       'DEL CLIENTE', mtError, [mbok],0);
              PageControl1.ActivePageIndex := 0;
              Grid.setfocus;
            end
            else
            begin
              QFactura.post;
              QFactura.UpdateBatch;

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
                QDetalleTFA_CODIGO.value := strtoint(edTipo.text);
                QDetalleSUC_CODIGO.Value := QFacturaSUC_CODIGO.Value;
                QDetalle.post;
                QDetalle.next;
              end;
              QDetalle.enableControls;
              QDetalle.UpdateBatch;

              //Cuentas contables
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

               dm.Query1.Close;
               dm.Query1.SQL.Clear;
               dm.Query1.SQL.Add('select (isnull(max(idenvio),0) + 1) as maximo from envio where emp_codigo = :emp');
               dm.Query1.SQL.Add('and suc_codigo = :suc and fac_numero = :fac and pro_codigo = :pro');
               dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
               dm.Query1.Parameters.parambyname('suc').Value := QFacturaSUC_CODIGO.value;
               dm.Query1.Parameters.parambyname('fac').Value := QFacturaFAC_NUMERO.Value;
               dm.Query1.Parameters.parambyname('pro').Value := QDetallePRO_CODIGO.value;
               dm.Query1.Open;

                QEnvio.edit;
                QEnvioemp_codigo.value := dm.vp_cia;
                QEnviofac_numero.value := QFacturaFAC_NUMERO.value;
                QEnviosuc_codigo.Value := QFacturaSUC_CODIGO.Value;
                QEnvioIDEnvio.Value := dm.Query1.FieldByName('maximo').AsInteger;
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
              end;
              //Numeros de Serie
              if QSerie.Active then
              begin
                QSerie.DisableControls;
                QSerie.First;
                while not QSerie.Eof do
                begin
                  QSerie.Edit;
                  QSerieFAC_NUMERO.Value := QFacturaFAC_NUMERO.Value;
                  QSerieTFA_CODIGO.value := strtoint(edTipo.text);
                  QSerieFAC_FORMA.value  := QFacturaFAC_FORMA.value;
                  QSerieEMP_CODIGO.value := dm.vp_cia;
                  QSerieSUC_CODIGO.Value := QFacturaSUC_CODIGO.Value;
                  QSerie.Post;
                  QSerie.Next;
                end;
                QSerie.EnableControls;
                QSerie.UpdateBatch;
              end;   //}

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

              //ejecutando procedimiento de grabar facturas
              dm.Query1.close;
              dm.Query1.sql.clear;
              dm.Query1.sql.add('execute pr_graba_factura :emp, :suc, :forma, :tipo, :numero');
              dm.Query1.Parameters.parambyname('emp').Value    := dm.vp_cia;
              dm.Query1.Parameters.parambyname('suc').Value    := QFacturaSUC_CODIGO.Value;
              dm.Query1.Parameters.parambyname('forma').Value   := QFacturaFAC_FORMA.value;
              dm.Query1.Parameters.parambyname('tipo').Value   := strtoint(edTipo.text);
              dm.Query1.Parameters.parambyname('numero').Value := QFacturaFAC_NUMERO.value;
              dm.Query1.ExecSQL;

              if Cuotas = 'True' then
              Begin
                Application.CreateForm(tfrmGeneraCuotas, frmGeneraCuotas);
                frmGeneraCuotas.Fecha  := QFacturaFAC_FECHA.Value;
                frmGeneraCuotas.Forma  := QFacturaFAC_FORMA.Value;
                frmGeneraCuotas.Tipo   := QFacturaTFA_CODIGO.Value;
                frmGeneraCuotas.Numero := QFacturaFAC_NUMERO.Value;
                frmGeneraCuotas.Total  := QFacturaFAC_TOTAL.Value - QFacturaFAC_ABONO.Value;
                frmGeneraCuotas.Intervalo := Intervalo;
                frmGeneraCuotas.ShowModal;
                frmGeneraCuotas.Release;
              End;

              if messagedlg('SE HA GENERADO LA FACTURA DE '+tTipo.text+
                         ' NUMERO '+inttostr(QFacturaFAC_NUMERO.value)+',DESEA IMPRIMIRLA?',
                         mtconfirmation,[mbyes,mbno],0) = mryes then
              begin
                if dm.QParametrosPAR_PREGUNTAPEQ.Value = 'True' then
                begin
                  if MessageDLG('DESEA IMPRIMIR EN IMPRESORA PEQUE�A?',mtConfirmation,
                  [mbyes,mbno],0) = mryes then
                  begin
                    if dm.QParametrosPAR_CAJA.Value = 'S' then
                      dm.AbreCaja;
                    Imp40Columnas;
                  end
                  else
                  begin
                    if dm.QParametrosPAR_CAJA.Value = 'S' then dm.AbreCaja;

                    if (dm.QParametrospar_fac_preimpresa.Value = 'True') and (dm.QParametrospar_formato_preimpreso.Value <> 'QRAgregados') then
                    begin
                      application.CreateForm(tRFacturaPreImpresa, RFacturaPreImpresa);
                      RFacturaPreImpresa.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
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

                      if dm.QParametrospar_formato_preimpreso.Value = 'QRBelkis' then
                      begin
                        RFacturaPreImpresa.QRBelkis.PrinterSetup;
                        RFacturaPreImpresa.QRBelkis.print;
                        RFacturaPreImpresa.Release;
                      end
                      else if dm.QParametrospar_formato_preimpreso.Value = 'QRSoloAutos' then
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
                        RFacturaPreImpresa.QFactura.Close;
    RFacturaPreImpresa.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
    RFacturaPreImpresa.QFactura.Parameters.ParamByName('tipo').Value   := QFacturaTFA_CODIGO.Value;
    RFacturaPreImpresa.QFactura.Parameters.ParamByName('forma').Value  := QFacturaFAC_FORMA.Value;
    RFacturaPreImpresa.QFactura.Parameters.ParamByName('numero').Value := QFacturaFAC_NUMERO.Value;
    RFacturaPreImpresa.QFactura.Parameters.ParamByName('suc').Value    := DBLookupComboBox2.KeyValue;
    RFacturaPreImpresa.QFactura.open;
    IF RFacturaPreImpresa.QFactura.RecordCount > 0 THEN begin
    RFacturaPreImpresa.QDetalle.Close;
    RFacturaPreImpresa.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    RFacturaPreImpresa.QDetalle.open;
    RFacturaPreImpresa.Rpt_Thorton.PrepareReport();
    RFacturaPreImpresa.Rpt_Thorton.ShowReport();

      //RFacturaPreImpresa.QRTHorton.PrinterSetup;
      //RFacturaPreImpresa.QRTHorton.Preview;
      RFacturaPreImpresa.Release;
      end;
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
                      else if dm.QParametrospar_formato_preimpreso.Value = 'QClinico' then
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
                        RFactura.PrinterSetup;
                        RFactura.print;
                        RFactura.Destroy;

                        if QClinico.RecordCount > 0 then
                        begin
                          if MessageDlg('Desea imprimir el detalle de facturas y records?',mtConfirmation, [mbyes,mbno], 0) = mryes then
                          begin
                            application.createform(tRFacturaClinico, RFacturaClinico);
                            RFacturaClinico.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
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
                        RFactura.PrinterSetup;

                        if dm.QParametrospar_domicilio.Value = 'True' then
                        begin
                          a := 1;
                          while a <= dm.QParametrospar_copias_domicilio.Value do
                          begin
                             RFactura.print;
                             a := a + 1;
                          end;
                        end
                        else
                          RFactura.print;

                        RFactura.Destroy;
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
                            a := a + 1;
                          end;
                        end
                        else
                          RFacturaElegante.print;

                        RFacturaElegante.Destroy;
                      end;
                    end;
                  end;
                end
                else
                if (dm.QParametrospar_fac_preimpresa.Value = 'True') and (dm.QParametrospar_formato_preimpreso.Value <> 'QRAgregados')
                and (dm.QParametrospar_formato_preimpreso.Value <> 'Grabado_Exento') then
                begin
                  application.CreateForm(tRFacturaPreImpresa, RFacturaPreImpresa);
                  RFacturaPreImpresa.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
                  RFacturaPreImpresa.QFactura.Parameters.ParamByName('tipo').Value   := QFacturaTFA_CODIGO.value;
                  RFacturaPreImpresa.QFactura.Parameters.ParamByName('forma').Value  := QFacturaFAC_FORMA.value;
                  RFacturaPreImpresa.QFactura.Parameters.ParamByName('numero').Value := QFacturaFAC_NUMERO.value;
                  RFacturaPreImpresa.QFactura.Parameters.ParamByName('suc').Value    := QFacturaSUC_CODIGO.Value;
                  RFacturaPreImpresa.QFactura.open;
                  RFacturaPreImpresa.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.vp_cia;
                  //RFacturaPreImpresa.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
                  RFacturaPreImpresa.QDetalle.open;
                  if actbalance = 'False' then
                  begin
                    {if Trim(Devuelta) <> '' then
                    begin
                      RFacturaPreImpresa.lbDevuelta.Caption := Devuelta;
                      RFacturaPreImpresa.lbPagado.Caption   := Format('%n',[StrToFloat(Recibido)]);
                    end;}
                  end;

                  if dm.QParametrospar_formato_preimpreso.Value = 'QRBelkis' then
                  begin
                    RFacturaPreImpresa.QRBelkis.PrinterSetup;
                    RFacturaPreImpresa.QRBelkis.print;
                  end
                  else if dm.QParametrospar_formato_preimpreso.Value = 'QRMSConsulting' then
                  begin
                    RFacturaPreImpresa.QRMSConsulting.PrinterSetup;
                    RFacturaPreImpresa.QRMSConsulting.print;
                  end
                  else if dm.QParametrospar_formato_preimpreso.Value = 'QRThorton' then
                  begin
                    RFacturaPreImpresa.QFactura.Close;
    RFacturaPreImpresa.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
    RFacturaPreImpresa.QFactura.Parameters.ParamByName('tipo').Value   := QFacturaTFA_CODIGO.Value;
    RFacturaPreImpresa.QFactura.Parameters.ParamByName('forma').Value  := QFacturaFAC_FORMA.Value;
    RFacturaPreImpresa.QFactura.Parameters.ParamByName('numero').Value := QFacturaFAC_NUMERO.Value;
    RFacturaPreImpresa.QFactura.Parameters.ParamByName('suc').Value    := DBLookupComboBox2.KeyValue;
    RFacturaPreImpresa.QFactura.open;
    IF RFacturaPreImpresa.QFactura.RecordCount > 0 THEN begin
    RFacturaPreImpresa.QDetalle.Close;
    RFacturaPreImpresa.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    RFacturaPreImpresa.QDetalle.open;
    RFacturaPreImpresa.Rpt_Thorton.PrepareReport();
    RFacturaPreImpresa.Rpt_Thorton.ShowReport();

      //RFacturaPreImpresa.QRTHorton.PrinterSetup;
      //RFacturaPreImpresa.QRTHorton.Preview;
      RFacturaPreImpresa.Release;
     end;
                  end
                  else if dm.QParametrospar_formato_preimpreso.Value = 'QRMadeco' then
                  begin
                    RFacturaPreImpresa.QRMadeco.PrinterSetup;
                    RFacturaPreImpresa.QRMadeco.print;
                  end
                  else if dm.QParametrospar_formato_preimpreso.Value = 'QRBB' then
                  begin
                    RFacturaPreImpresa.lbReimpresion.Enabled := False;
                    RFacturaPreImpresa.QRBB.PrinterSetup;
                    RFacturaPreImpresa.QRBB.print;
                  end
                  else if dm.QParametrospar_formato_preimpreso.Value = 'QRSoloAutos' then
                  begin
                    RFacturaPreImpresa.QRSoloAutos.PrinterSetup;
                    RFacturaPreImpresa.QRSoloAutos.print;
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
                  end
                  else if dm.QParametrospar_formato_preimpreso.Value = 'QClinico' then
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
                    RFactura.PrinterSetup;
                    RFactura.print;
                    RFactura.Destroy;

                    if QClinico.RecordCount > 0 then
                    begin
                      if MessageDlg('Desea imprimir el detalle de facturas y records?',mtConfirmation, [mbyes,mbno], 0) = mryes then
                      begin
                        application.createform(tRFacturaClinico, RFacturaClinico);
                        RFacturaClinico.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
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
                  end;
                  RFacturaPreImpresa.Release;
                end
                else if (dm.QParametrospar_fac_preimpresa.Value = 'True') and (dm.QParametrospar_formato_preimpreso.Value = 'Grabado_Exento') then
                begin
                  if dm.QParametrosPAR_CAJA.Value = 'S' then
                    dm.AbreCaja;
                  application.createform(tRFacturaGrabadoExento, RFacturaGrabadoExento);
                  RFacturaGrabadoExento.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
                  RFacturaGrabadoExento.QFactura.Parameters.ParamByName('tipo').Value   := QFacturaTFA_CODIGO.value;
                  RFacturaGrabadoExento.QFactura.Parameters.ParamByName('forma').Value  := QFacturaFAC_FORMA.value;
                  RFacturaGrabadoExento.QFactura.Parameters.ParamByName('numero').Value := QFacturaFAC_NUMERO.value;
                  RFacturaGrabadoExento.QFactura.Parameters.ParamByName('suc').Value    := QFacturaSUC_CODIGO.Value;
                  RFacturaGrabadoExento.QFactura.open;
                  RFacturaGrabadoExento.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
                  RFacturaGrabadoExento.QDetalle.open;
                  RFacturaGrabadoExento.PrinterSetup;

                  if dm.QParametrospar_domicilio.Value = 'True' then
                  begin
                    a := 1;
                    while a <= dm.QParametrospar_copias_domicilio.Value do
                    begin
                      RFacturaGrabadoExento.print;
                      a := a + 1;
                    end;
                  end
                  else
                    RFacturaGrabadoExento.print;

                  RFacturaGrabadoExento.Destroy;
                end
                else
                begin
                  if FormatoImp = 2 then
                  begin
                    if dm.QParametrosPAR_CAJA.Value = 'S' then
                      dm.AbreCaja;
                    application.createform(tRFactura, RFactura);
                    RFactura.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
                    RFactura.QFactura.Parameters.ParamByName('tipo').Value   := QFacturaTFA_CODIGO.value;
                    RFactura.QFactura.Parameters.ParamByName('forma').Value   := QFacturaFAC_FORMA.value;
                    RFactura.QFactura.Parameters.ParamByName('numero').Value := QFacturaFAC_NUMERO.value;
                    RFactura.QFactura.Parameters.ParamByName('suc').Value := QFacturaSUC_CODIGO.Value;
                    RFactura.QFactura.open;
                    RFactura.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
                    RFactura.QDetalle.open;
                    RFactura.PrinterSetup;

                    if dm.QParametrospar_domicilio.Value = 'True' then
                    begin
                      a := 1;
                      while a <= dm.QParametrospar_copias_domicilio.Value do
                      begin
                        RFactura.print;
                        a := a + 1;
                      end;
                    end
                    else
                      RFactura.print;

                    RFactura.Destroy;
                  end
                  else if FormatoImp = 3 then
                  begin
                    if dm.QParametrosPAR_CAJA.Value = 'S' then
                      dm.AbreCaja;
                    Imp40Columnas;
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
                        a := a + 1;
                      end;
                    end
                    else
                      RFacturaElegante.print;

                    RFacturaElegante.Destroy;
                  end
                  else if FormatoImp = 5 then
                  begin
                    application.createform(tRFactura2Columnas, RFactura2Columnas);
                    RFactura2Columnas.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
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
                        a := a + 1;
                      end;
                    end
                    else
                      RFactura2Columnas.print;

                    RFactura2Columnas.Destroy;
                  end;
                end;
              end;

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

              //Si una nota de credito se utiliz�
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
              end;

              //si es para agregados
              if accion = 1 then
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

              Totaliza := true;
              QDetalle.close;
              QFactura.close;
              QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
              QFactura.Parameters.ParamByName('tipo').Value   := -1;
              QFactura.Parameters.ParamByName('forma').Value   := 'A';
              QFactura.Parameters.ParamByName('numero').Value := -1;
              QFactura.Parameters.ParamByName('suc').Value := -1;
              QFactura.open;
              QFactura.insert;

              if dm.QParametrosPAR_FACBAJARLINEA.Value <> 'True' then
                edTipo.setfocus;
            end;
          end
          else
          begin
            Totaliza := true;
            PageControl1.ActivePageIndex := 0;
            Grid.SetFocus;
          end;
      end;
    end;
  end;
end;


procedure TfrmFacturaRenta.QDetalleNewRecord(DataSet: TDataSet);
var medida:String;
begin
  IDProducto := 0;
  oNombre:=EmptyStr;
  oTelefono:=EmptyStr;
  oCiudad:= dm.QEmpresasEMP_LOCALIDAD.Value;
  dCiudad:=EmptyStr;
  dNombre:=EmptyStr;
  dTelefono:=EmptyStr;
  Descripcion:=EmptyStr;

  Realizado := False;
  QDetalledet_selectivo_ad.Value  := 0;
  QDetalledet_selectivo_con.Value := 0;
  QDetalleEMP_CODIGO.value := dm.vp_cia;
  QDetalleFAC_FORMA.value  := QFacturaFAC_FORMA.value;
  QDetalleDET_STATUS.value := 'FAC';
  QDetalleDET_COSTO.value  := 0;
  QDetalleDET_CANTDEVUELTA.value := 0;
  QDetalleDET_DESCUENTO.Value    := 0;
  QDetalleDET_ITBIS.value  := 0;
  QDetalleVEN_CODIGO.Value := QFacturaVEN_CODIGO.Value;
  QDetalleSUC_CODIGO.Value := QFacturaSUC_CODIGO.Value;
  QDetalleDET_CANTIDAD.Value  := 1;{20170705}

  if not QDetallePRO_CODIGO.isnull then
   medida := dm.getUnidadMedida (QDetallePRO_CODIGO.value)
 else
   medida := MedidaAlmacen;

  QDetalleDET_MEDIDA.Value :=medida;
  QDetalleTFA_CODIGO.Value := StrToInt(trim(edTipo.Text));
end;

procedure TfrmFacturaRenta.btBuscaClick(Sender: TObject);
var
  a, tcl_codigo : integer;
begin
  application.createform(tfrmBuscaFactura, frmBuscaFactura);
  frmBuscaFactura.DBLookupComboBox1.KeyValue := frmBuscaFactura.QTipoTFA_CODIGO.Value;
  frmBuscaFactura.DBLookupComboBox2.KeyValue := QFacturaSUC_CODIGO.Value;
  frmBuscaFactura.showmodal;
  if frmBuscaFactura.Busco = true then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select fac_numero, fac_status, fac_abono, fac_fecha');
    dm.Query1.sql.add('from facturas');
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
    end
    else if (dm.Query1.fieldbyname('fac_abono').asfloat > 0) and
    (dm.Query1.fieldbyname('fac_status').asstring = 'PEN') then
    begin
      messagedlg('ESTA FACTURA NO PUEDE MODIFICARSE'+#13+
                 'DEBIDO A QUE TIENE UN ABONO REALIZADO',mterror,[mbok],0);
      PageControl1.ActivePageIndex := 0;
      Grid.setfocus;
    end
    else if DaysBetween(dm.Query1.fieldbyname('fac_fecha').asdatetime, Date) >
    dm.QParametrosPAR_FACDIASMODIFICA.Value then
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
          MessageDlg('ESTA FACTURA TIENE UN CONDUCE'+#13+
                     'NO PUEDE MODIFICARSE',mtError,[mbok],0);
          PageControl1.ActivePageIndex := 0;
          Grid.SetFocus;
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
          QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
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

          QSerie.Close;
          QSerie.Parameters.ParamByName('emp').Value   := dm.vp_cia;
          QSerie.Parameters.ParamByName('tipo').Value  := frmBuscaFactura.DBLookupComboBox1.KeyValue;
          QSerie.Parameters.ParamByName('forma').Value := frmBuscaFactura.rbForma.Items[frmBuscaFactura.rbForma.ItemIndex];
          QSerie.Parameters.ParamByName('numero').Value:= strtoint(frmBuscaFactura.edNumero.text);
          QSerie.Parameters.ParamByName('suc').Value   := frmBuscaFactura.DBLookupComboBox2.KeyValue;
          QSerie.Open;

          QCuentas.Close;
          QCuentas.Parameters.ParamByName('emp').Value   := dm.vp_cia;
          QCuentas.Parameters.ParamByName('tipo').Value  := frmBuscaFactura.DBLookupComboBox1.KeyValue;
          QCuentas.Parameters.ParamByName('forma').Value := frmBuscaFactura.rbForma.Items[frmBuscaFactura.rbForma.ItemIndex];
          QCuentas.Parameters.ParamByName('numero').Value   := strtoint(frmBuscaFactura.edNumero.text);
          QCuentas.Parameters.ParamByName('suc').Value   := frmBuscaFactura.DBLookupComboBox2.KeyValue;
          QCuentas.Open;

          QEnvio.Close;
          QEnvio.Parameters.ParamByName('emp').Value   := dm.vp_cia;
          QEnvio.Parameters.ParamByName('fac').Value   := strtoint(frmBuscaFactura.edNumero.text);
          QEnvio.Parameters.ParamByName('suc').Value   := frmBuscaFactura.DBLookupComboBox2.KeyValue;
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
          Query1.sql.add('cli_cedula, cli_rnc');
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

procedure TfrmFacturaRenta.dsFacturaStateChange(Sender: TObject);
begin
  btTipo.enabled := dsFactura.State = dsInsert;
  edTipo.enabled := dsFactura.State = dsInsert;

  bttiponcf.enabled := dsFactura.State = dsInsert;
  DBEdit13.enabled  := dsFactura.State = dsInsert;

  if dsFactura.State = dsedit then
    Caption := 'Facturaci�n - Factura # '+QFacturaFAC_NUMERO.AsString
  else
    Caption := 'Facturaci�n';
end;

procedure TfrmFacturaRenta.Imp40Columnas;
var
  arch, puertopeq : textfile;
  s, s1, s2, s3, s4, s5 : array [0..20] of char;
  Tfac, Saldo : double;
  puerto, lbitbis, impcodigo, pro_codigo, Unidad : string;
  a : integer;
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
  writeln(arch, 'type t.txt > '+puerto);
  closefile(arch);

  tfac := 0;
  application.CreateForm(tRFactura, RFactura);
  RFactura.QFactura.Parameters.ParamByName('emp').Value     := dm.vp_cia;
  RFactura.QFactura.Parameters.ParamByName('tipo').Value    := QFacturaTFA_CODIGO.value;
  RFactura.QFactura.Parameters.ParamByName('forma').Value   := QFacturaFAC_FORMA.value;
  RFactura.QFactura.Parameters.ParamByName('numero').Value  := QFacturaFAC_NUMERO.value;
  RFactura.QFactura.Parameters.ParamByName('suc').Value     := QFacturaSUC_CODIGO.value;
  RFactura.QFactura.open;
  RFactura.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
  RFactura.QDetalle.open;
  RFactura.QFormasPago.Open;
  AssignFile(arch, 't.txt');
  rewrite(arch);

  if ImprimeEncaqbezado = 'True' then
  begin
    writeln(arch, dm.centro(QSucursalsuc_nombre.Value));
    writeln(arch, dm.centro(QSucursalsuc_direccion.Value));
    writeln(arch, dm.centro(QSucursalsuc_localidad.Value));
    writeln(arch, dm.centro(QSucursalsuc_telefono.Value));
    writeln(arch, dm.centro('RNC:'+QSucursalsuc_rnc.Value));
{    writeln(arch, dm.centro(dm.QEmpresasemp_nombre.Value));
    writeln(arch, dm.centro(dm.QEmpresasemp_direccion.Value));
    writeln(arch, dm.centro(dm.QEmpresasEMP_LOCALIDAD.Value));
    writeln(arch, dm.centro(dm.QEmpresasEMP_TELEFONO.Value));
    writeln(arch, dm.centro('RNC:'+dm.QEmpresasEMP_RNC.Value));  }
    writeln(arch, ' ');
  end;
//20170608  writeln(arch, dm.centro('*** F A C T U R A ***'));
  writeln(arch, dm.Centro(trim(tTipo.text)));
  if QFacturaFAC_DOMICILIO.Value = 'True' then
     writeln(arch, dm.Centro('DOMICILIO'));
  writeln(arch, ' ');

  writeln(arch, 'Fecha .: '+DateToStr(RFactura.QFacturaFAC_FECHA.Value)+' Factura: '+formatfloat('0000000000',RFactura.QFacturaFAC_NUMERO.value));
  writeln(arch, 'Caja ..: '+'001'+'        Hora ..: '+timetostr(time));

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
  
  if Trim(RFactura.QFacturaNumeroCF.Value) <> '' then
  begin
    writeln(arch, ' ');
    writeln(arch, 'NCF: '+RFactura.QFacturaNumeroCF.Value);
    writeln(arch, trim(ttiponcf.Text));
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

{        //datos del Envio
    if (not RFactura.QDetallepro_UtilizaEnvio.IsNull) and (RFactura.QDetallepro_UtilizaEnvio.AsString = 'True') then
    begin
      writeln(arch, ' ');
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('Select * From Envio Where emp_codigo = :emp_codigo');
  		dm.Query1.SQL.Add(' and suc_codigo = :suc_codigo and fac_numero = :fac_numero ');
			dm.Query1.SQL.Add('and pro_codigo = :pro_codigo');
      dm.Query1.Parameters.ParamByName('emp_codigo').Value := RFactura.QDetalleEMP_CODIGO.value;
      dm.Query1.Parameters.ParamByName('suc_codigo').Value := RFactura.QDetallesuc_codigo.value;
      dm.Query1.Parameters.ParamByName('fac_numero').Value := RFactura.QDetalleFAC_NUMERO.value;
      dm.Query1.Parameters.ParamByName('pro_codigo').Value := RFactura.QDetallePRO_CODIGO.value;
      dm.Query1.Open;

      if dm.Query1.RecordCount > 0 then begin
        writeln(arch, 'DATOS DEL ENVIO:');
        writeln(arch, 'Ciudad Origen : '+dm.Query1.FieldByName('Ciudad_Origen').AsString);
        writeln(arch, 'Envia : '+dm.Query1.FieldByName('Nombre_envia').AsString);
        writeln(arch, 'Telefon: '+dm.Query1.FieldByName('Telefono_Envia').AsString);

        writeln(arch, 'Ciudad Recibe: '+dm.Query1.FieldByName('Ciudad_Destino').AsString);
        writeln(arch, 'Recibe : '+dm.Query1.FieldByName('Nombre_Recibe').AsString);
        writeln(arch, 'Telefono: '+dm.Query1.FieldByName('Telefono_Recibe').AsString);
        writeln(arch, 'Descripcion : '+dm.Query1.FieldByName('Descripcion').AsString);
        writeln(arch, ' ');
      end;
    end;   //fernando 2017 05 24}


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
  fillchar(s3, 14-length(format('%n',[RFactura.QFacturaFAC_ITBIS.value])),' ');
  s4:= '';
  fillchar(s4, 40-length('-----------'),' ');
  s5:= '';
  fillchar(s5, 14-length(format('%n',[RFactura.QFacturaFAC_OTROS.value])),' ');

  writeln(arch, '                             -----------');
  writeln(arch, '              SubTotal   :'+s2+format('%n',[TFac]));
  writeln(arch, '              Descuento  :'+s1+format('%n',[RFactura.QFacturaFAC_DESCUENTO.value]));
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
  CloseFile(arch);
  if (actbalance = 'False') then
  begin
    if QFacturaFAC_DOMICILIO.Value = 'True' then
    begin
      a := 1;
      while a <= dm.QParametrospar_copias_domicilio.Value do
      begin
//20171008        dm.Imp40Columnas(arch);
        winexec('imp.bat',0);
        a := a + 1;
      end;
    end
    else
//20171008      dm.Imp40Columnas(arch);
      winexec('imp.bat',0);
  end
  else
  begin
    if copias = 0 then copias := 1;
    a := 1;
    while a <= copias do
    begin
//20171008      dm.Imp40Columnas(arch);
      winexec('imp.bat',0);
//      winexec('c:\imp.bat',0);
      a := a + 1;
    end;
  end;
  RFactura.Destroy;
end;

procedure TfrmFacturaRenta.ckAEnter(Sender: TObject);
begin
  if dm.QParametrosPAR_FACBAJARLINEA.Value <> 'True' then
    edTipo.setfocus
  else
  begin
    PageControl1.ActivePageIndex := 0;
    Grid.setfocus;
  end;
end;

procedure TfrmFacturaRenta.QFacturaBeforePost(DataSet: TDataSet);
var
   TipoMov : String;
begin
  Vendedor := QFacturaVEN_CODIGO.AsInteger;

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

  if (not QFacturaCPA_CODIGO.isnull) and (QFacturaCPA_CODIGO.Value > 0) then
    QFacturaFAC_VENCE.Value := QFacturaFAC_FECHA.value + Dias;
  if QFacturaFAC_COMISION.IsNull then
    QFacturaFAC_COMISION.Value := 0;

  if QFactura.State = dsInsert then
  begin
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
      dm.Query1.Parameters.parambyname('emp').Value   := dm.vp_cia;
      dm.Query1.Parameters.parambyname('forma').Value := QFacturaFAC_FORMA.value;
      dm.Query1.Parameters.parambyname('suc').Value   := QFacturaSUC_CODIGO.value;
      dm.Query1.open;
    end;
    QFacturaFAC_NUMERO.value := dm.Query1.fieldbyname('maximo').asinteger+1;
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

    //ejecutando para modificar facturas
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('execute pr_modifica_fac :emp, :suc, :forma, :tipo, :numero');
    dm.Query1.Parameters.parambyname('emp').Value    := dm.vp_cia;
    dm.Query1.Parameters.parambyname('suc').Value    :=   QFacturaSUC_CODIGO.Value;
    dm.Query1.Parameters.parambyname('forma').Value   := QFacturaFAC_FORMA.value;
    dm.Query1.Parameters.parambyname('tipo').Value   := strtoint(edTipo.text);
    dm.Query1.Parameters.parambyname('numero').Value := QFacturaFAC_NUMERO.value;
    dm.Query1.ExecSQL;
  end;

  if actbalance = 'True' then
    QFacturaFAC_STATUS.value := 'PEN'
  else
  begin
    QFacturaFAC_STATUS.value := 'PAG';
    QFacturafac_comisionpagada.Value := QFacturaFAC_COMISION.Value;
  end ;

  //aCTUALIZA eNVIO
  with dm.adoMultiUso do begin
    close;
    Sql.clear();
    Sql.add('UPDATE ENVIO SET FAC_NUMERO = :fac WHERE FAC_NUMERO = :oldFac');
    Parameters.parambyname('fac').Value :=  QFacturaFAC_NUMERO.value;
    Parameters.parambyname('oldFac').Value := idFacturaTmp;
    ExecSQL;
  end;

  idFacturaTmp := QFacturaFAC_NUMERO.value;
end;

procedure TfrmFacturaRenta.GridDrawColumnCell(Sender: TObject;
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

procedure TfrmFacturaRenta.btnGuardaTemporalClick(Sender: TObject);
var
  a, b, factmp : integer;
begin
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
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select fac_numero from facturastmp');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.SQL.Add('and tfa_codigo = :tfa');
    dm.Query1.SQL.Add('and fac_nombre = :cli');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    dm.Query1.Parameters.ParamByName('tfa').Value := strtoint(edtipo.Text);
    dm.Query1.Parameters.ParamByName('cli').Value := QFacturaFAC_NOMBRE.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      factmp := dm.Query1.FieldByName('fac_numero').Value;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('delete from facturastmp');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.SQL.Add('and tfa_codigo = :tfa');
    dm.Query1.SQL.Add('and fac_nombre = :cli');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    dm.Query1.Parameters.ParamByName('tfa').Value := strtoint(edtipo.Text);
    dm.Query1.Parameters.ParamByName('cli').Value := QFacturaFAC_NOMBRE.Value;
    dm.Query1.ExecSQL;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('delete from det_facturatmp');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.SQL.Add('and tfa_codigo = :tfa');
    dm.Query1.SQL.Add('and fac_numero = :num');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    dm.Query1.Parameters.ParamByName('tfa').Value := strtoint(edtipo.Text);
    dm.Query1.Parameters.ParamByName('num').Value := factmp;
    dm.Query1.ExecSQL;

    QFacTMP.Close;
    QFacTMP.Parameters.ParamByName('emp').Value    := dm.vp_cia;
    QFacTMP.Parameters.ParamByName('numero').Value := -1;
    QFacTMP.Parameters.ParamByName('for').Value    := 'A';
    QFacTMP.Parameters.ParamByName('tfa').Value    := -1;
    QFacTMP.Open;
    QFacTMP.Insert;

    QFactura.DisableControls;
    QDetalle.DisableControls;

    for a := 0 to QFactura.FieldCount -1 do
      if QFactura.Fields[a].FieldKind <> fkCalculated then
        QFacTMP.FieldByName(QFactura.Fields[a].FieldName).Value := QFactura.Fields[a].Value;
    QFacTMPTFA_CODIGO.value := strtoint(edTipo.text);
    QFacTMP.Post;
    QFacTMP.UpdateBatch;

    Totaliza := False;

    QDetalle.First;
    b := 0;
    while not QDetalle.eof do
    begin
      if not QDetallePRO_CODIGO.IsNull then
      begin
        QDetalleTMP.Append;
        for a := 0 to QDetalle.FieldCount -1 do
          if QDetalle.Fields[a].FieldKind <> fkCalculated then
             QDetalleTMP.FieldByName(QDetalle.Fields[a].FieldName).Value := QDetalle.Fields[a].Value;
        b := b + 1;
        QDetalleTMP.edit;
        QDetalleTMPDET_SECUENCIA.value := b;
        QDetalleTMPEMP_CODIGO.value := dm.vp_cia;
        QDetalleTMPFAC_NUMERO.value := QFacTMPFAC_NUMERO.value;
        QDetalleTMPFAC_FORMA.value  := QFacTMPFAC_FORMA.value;
        QDetalleTMPTFA_CODIGO.value := strtoint(edTipo.text);
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
    QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
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

procedure TfrmFacturaRenta.QFacTMPNewRecord(DataSet: TDataSet);
begin
  QDetalleTMP.close;
  QDetalleTMP.Parameters.ParamByName('emp').Value  := dm.vp_cia;
  QDetalleTMP.Parameters.ParamByName('numero').Value := -1;
  QDetalleTMP.open;
end;

procedure TfrmFacturaRenta.QFacTMPBeforePost(DataSet: TDataSet);
begin
  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select isnull(max(fac_numero),0) as maximo');
  dm.Query1.sql.add('from facturasTMP');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and fac_forma = :forma');
  dm.Query1.sql.add('and tfa_Codigo = :tipo');
  dm.Query1.sql.add('and suc_codigo = :suc');
  dm.Query1.Parameters.parambyname('emp').Value  := dm.vp_cia;
  dm.Query1.Parameters.parambyname('forma').Value := QFacTMPFAC_FORMA.value;
  dm.Query1.Parameters.parambyname('tipo').Value := QFacTMPTFA_CODIGO.value;
  dm.Query1.Parameters.parambyname('suc').Value := QFacturaSUC_CODIGO.Value;
  dm.Query1.open;
  QFacTMPFAC_NUMERO.value := dm.Query1.fieldbyname('maximo').asinteger+1;
end;

procedure TfrmFacturaRenta.btnBuscaTemporalClick(Sender: TObject);
var
  a : integer;
begin

  if not (DM. QParametrosPAR_FACTEMPORAL.Value = 'True')   then
    begin
      MessageDlg('ESTA OPCION NO ESTA HABILITADA EN PARAMETROS DEL SISTEMA,'+#13+
                'CONSULTE CON EL ADMINISTRADOR DEL SISTEMA',
                mtError,[ mbOK],0) ;
      exit;
    end;

  Application.createform(tfrmBuscaTemporal, frmBuscaTemporal);
  frmBuscaTemporal.QFacturas.Open;
  frmBuscaTemporal.ShowModal;
  if frmBuscaTemporal.acepto = 1 then
  begin
    Buscando := True;
    Totaliza := false;
    QDetalle.close;
    QDetalle.open;
    QDetalle.disablecontrols;

    QFacTMP.Close;
    QFacTMP.Parameters.ParamByName('emp').Value    := dm.vp_cia;
    QFacTMP.Parameters.ParamByName('numero').Value := frmBuscaTemporal.QFacturasfac_numero.Value;
    QFacTMP.Parameters.ParamByName('for').Value    := frmBuscaTemporal.QFacturasfac_forma.Value;
    QFacTMP.Parameters.ParamByName('tfa').Value    := frmBuscaTemporal.QFacturastfa_codigo.Value;
    QFacTMP.Open;

    if not QFacTMPCLI_CODIGO.IsNull then
      if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
         edCliente.text := IntToStr(QFacTMPCLI_CODIGO.value)
      else
         edCliente.text := QFacTMPCLI_REFERENCIA.Value;

    QFactura.DisableControls;

    for a := 0 to QFacTMP.FieldCount -1 do
      if QFacTMP.Fields[a].FieldKind <> fkCalculated then
        QFactura.FieldByName(QFacTMP.Fields[a].FieldName).Value := QFacTMP.Fields[a].Value;

    QFactura.EnableControls;

    QDetalleTMP.close;
    QDetalleTMP.Parameters.ParamByName('emp').Value    := dm.vp_cia;
    QDetalleTMP.Parameters.ParamByName('numero').Value := frmBuscaTemporal.QFacturasfac_numero.Value;
    QDetalleTMP.Parameters.ParamByName('for').Value    := frmBuscaTemporal.QFacturasfac_forma.Value;
    QDetalleTMP.Parameters.ParamByName('tfa').Value    := frmBuscaTemporal.QFacturastfa_codigo.Value;
    QDetalleTMP.open;

    QDetalleTMP.First;
    QDetalleTMP.disablecontrols;
    while not QDetalleTMP.Eof do
    begin
      QDetalle.Append;
      QDetalleEMP_CODIGO.value    := dm.vp_cia;
      QDetalleDET_SECUENCIA.value := QDetalleTMPDET_SECUENCIA.Value;
      QDetalleDET_MEDIDA.Value    := QDetalleTMPDET_MEDIDA.Value;
      QDetalleDET_CANTIDAD.value  := QDetalleTMPDET_CANTIDAD.value;
      QDetallePRO_CODIGO.value    := QDetalleTMPPRO_CODIGO.value;
      QDetalleDET_ITBIS.value     := QDetalleTMPDET_ITBIS.value;
      QDetallePRO_NOMBRE.value    := QDetalleTMPPRO_NOMBRE.value;
      QDetallePRO_RORIGINAL.value := QDetalleTMPPRO_RORIGINAL.value;
      QDetallePRO_RFABRIC.value   := QDetalleTMPPRO_RFABRIC.value;
      QDetalleDET_CONITBIS.value  := QDetalleTMPDET_CONITBIS.value;
      QDetalleDET_MANEJAESCALA.Value := QDetalleTMPDET_MANEJAESCALA.Value;
      QDetalleDET_ESCALA.Value := QDetalleTMPDET_ESCALA.Value;
      QDetallepro_unidad_medida.Value := QDetalleTMPpro_unidad_medida.Value;
      QDetalleMedida_Precio1.Value := QDetalleTMPMedida_Precio1.Value;
      QDetalleMedida_Precio2.Value := QDetalleTMPMedida_Precio2.Value;
      QDetalleMedida_Precio3.Value := QDetalleTMPMedida_Precio3.Value;
      QDetalleMedida_Precio4.Value := QDetalleTMPMedida_Precio4.Value;
      QDetalleDET_PRECIO.value     := QDetalleTMPDET_PRECIO.value;
      QDetalleDET_OFERTA.Value     := QDetalleTMPDET_OFERTA.value;
      QDetalle.Post;
      QDetalleTMP.Next;
    end;

    {for a := QDetalleDET_SECUENCIA.value to 30 do
    begin
      QDetalle.append;
      QDetalleEMP_CODIGO.value := dm.vp_cia;
      QDetalleFAC_FORMA.value  := QFacturaFAC_FORMA.value;
      QDetalleDET_SECUENCIA.value := a;
      QDetalle.post;
    end;
    QDetalle.First;}
    QDetalle.enablecontrols;
    QDetalleTMP.enablecontrols;
    QDetalle.first;

    Totaliza := true;
    totalizar;

    if not QFacTMPCLI_CODIGO.IsNull then
    begin
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
        dm.Query1.sql.add('and cli_codigo = :cli');
        dm.Query1.Parameters.parambyname('cli').Value := strtoint(edCliente.text);
      end
      else
      begin
        dm.Query1.sql.add('and cli_referencia = :cli');
        dm.Query1.Parameters.parambyname('cli').Value := edCliente.text;
      end;
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.open;
      CtaCliente := dm.Query1.fieldbyname('cli_cuenta').asstring;
      btBalance.caption := 'Bce:'+format('%n',[dm.Query1.fieldbyname('cli_balance').asfloat]);
      tLimite.text  := format('%n',[dm.Query1.fieldbyname('cli_limite').asfloat-
                                    dm.Query1.fieldbyname('cli_balance').asfloat]);
      //tDesc.text    := format('%n',[dm.Query1.fieldbyname('cli_descuento').asfloat]);
      descuento := dm.Query1.fieldbyname('cli_descuento').asfloat;
      Limite        := StrToFloat(format('%10.2f',[dm.Query1.fieldbyname('cli_limite').asfloat]))-
                       StrToFloat(format('%10.2f',[dm.Query1.fieldbyname('cli_balance').asfloat]));
    end;
    Buscando := False;

    PageControl1.ActivePageIndex := 0;
    Grid.setfocus;
  end;
  frmBuscaTemporal.Release;
end;

procedure TfrmFacturaRenta.QDetalleBeforeEdit(DataSet: TDataSet);
begin
  if not QDetalleDET_CANTIDAD.IsNull then
    cantidadPrevia := QDetalleDET_CANTIDAD.Value;
  Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
end;

procedure TfrmFacturaRenta.btBalanceClick(Sender: TObject);
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

procedure TfrmFacturaRenta.QFacturaFAC_FORMAChange(Sender: TField);
begin
  if not QFacturaFAC_FORMA.IsNull then
    frmMain.stBar1.Panels[1].Text := QFacturaFAC_FORMA.Value;
end;

procedure TfrmFacturaRenta.DBLookupComboBox1Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  Grid.SetFocus;
end;

procedure TfrmFacturaRenta.DBLookupComboBox1Enter(Sender: TObject);
begin
  QVendedores.Close;
  QVendedores.Open;
end;

procedure TfrmFacturaRenta.DBLookupComboBox1CloseUp(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  Grid.SetFocus;
end;



procedure TfrmFacturaRenta.edTipoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  tiponcf : integer;
begin
  if key = vk_return then
  begin
    if Trim(edTipo.Text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select tfa_nombre, tfa_selcondi, tfa_formatoimp, tfa_puertoimp,');
      dm.Query1.sql.add('tfa_actbalance, tfa_cliente, ven_codigo, tfa_precio,');
      dm.Query1.sql.add('tfa_mensaje1, tfa_mensaje2, tfa_mensaje3, fpa_codigo,');
      dm.Query1.sql.add('tfa_verlimite, tfa_copias, tfa_permite_abonar, tfa_itbis, tip_codigo,');
      dm.Query1.sql.add('tfa_imprimie_encabezado, tfa_rnc, cat_cuenta, tfa_modifica_nombre');
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
          ModificaNombre := dm.Query1.fieldbyname('tfa_modifica_nombre').asstring;
          CtaTipoFactura := dm.Query1.fieldbyname('cat_cuenta').asstring;
          PermiteAbonar := dm.Query1.fieldbyname('tfa_permite_abonar').AsString;
          ImprimeEncaqbezado := dm.Query1.fieldbyname('tfa_imprimie_encabezado').AsString;
          copias     := dm.Query1.fieldbyname('tfa_copias').asinteger;
          FPagoIni   := dm.Query1.fieldbyname('fpa_codigo').asinteger;
          Precio     := dm.Query1.fieldbyname('tfa_precio').asstring;
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
            tiponcf := dm.Query1.fieldbyname('tip_codigo').AsInteger;

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
end;

procedure TfrmFacturaRenta.QDetalleAfterEdit(DataSet: TDataSet);
begin
  Realizado := False;
  if (QFacturaCON_NUMERO.Value > 0) and (Totaliza = True) then
  begin
    Messagedlg('ESTA FACTURA ESTA SIENDO GENERADA POR UN'+#13+
               'CONDUCE. NO PUEDE MODIFICARSE',mterror,[mbok],0);
    QDetalle.Cancel;
  end;
end;

procedure TfrmFacturaRenta.dsFacturaDataChange(Sender: TObject; Field: TField);
begin
  DBEdit5.Enabled   := dm.QParametrospar_modifica_fecha_factura.Value = 'True';
  DBEdit14.ReadOnly := (QFacturaCLI_CODIGO.Value > 0) and (ModificaNombre <> 'True');
  DBEdit11.ReadOnly := (QFacturaCLI_CODIGO.Value > 0) and (ModificaNombre <> 'True');
  DBEdit1.ReadOnly  := (QFacturaCLI_CODIGO.Value > 0) and (ModificaNombre <> 'True');
  DBEdit2.ReadOnly  := (QFacturaCLI_CODIGO.Value > 0) and (ModificaNombre <> 'True');
  DBEdit3.ReadOnly  := (QFacturaCLI_CODIGO.Value > 0) and (ModificaNombre <> 'True');
  dbinteres.Enabled := intereses = 'True';

  edCliente.Enabled    := QFacturaCON_NUMERO.IsNull;
  btBuscaCli.Enabled   := QFacturaCON_NUMERO.IsNull;
  
  //Panel2.Enabled    := QFacturaCON_NUMERO.IsNull;

  btBuscaProd.Enabled := QFacturaCON_NUMERO.IsNull;
end;

procedure TfrmFacturaRenta.btBuscaClienteClick(Sender: TObject);
begin
  if btBuscaCli.Enabled then
    btBuscaCliClick(Self)
  else
  begin
    PageControl1.ActivePageIndex := 0;
    Grid.SetFocus;
  end;
end;

procedure TfrmFacturaRenta.ckItbisClick(Sender: TObject);
begin
  if QDetalle.Active then
  begin
    Totalizar;
  end;
end;


procedure TfrmFacturaRenta.QDetalleDET_MEDIDAChange(Sender: TField);
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
  else if (dm.QParametrosPAR_FACMEDIDA.Value = 'False') and (dm.QParametrospar_inv_unidad_medida.Value = 'False') then
    QDetalleDET_PRECIO.value := QDetalle.FieldByName('det_'+Precio).AsFloat;
end;

procedure TfrmFacturaRenta.dsDetalleDataChange(Sender: TObject; Field: TField);
begin
  DatosdelMedidor1.Enabled  := QDetallepro_utilizamedidor.Value = 'True';
  DatosdelEnvio1.Enabled    := QDetallepro_UtilizaEnvio.Value   = 'True';
  DatosdelaRenta1.Enabled   := QDetallepro_UtilizaRenta.Value   = 'True';
  //btcombo.Enabled   := QDetallePRO_COMBO.Value  = 'True';
  //btescalas.Enabled := QDetalleDET_ESCALA.Value = 'True';
  //btreceta.Enabled  := not QDetallePRO_CODIGO.IsNull;
end;

procedure TfrmFacturaRenta.Imp40ColumnasNC;
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

  AssignFile(arch, 'imp.bat');
  rewrite(arch);
  writeln(arch, 'type t.txt > '+puerto);
  closefile(arch);

  AssignFile(arch, 't.txt');
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
      dm.Imp40Columnas(arch);
//20171008  winexec('imp.bat',0);
end;

procedure TfrmFacturaRenta.btmonedaClick(Sender: TObject);
begin
  Search.AliasFields.clear;
  Search.AliasFields.add('Nombre');
  Search.AliasFields.add('C�digo');
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

procedure TfrmFacturaRenta.BitBtn3Click(Sender: TObject);
var
  PorcReal : Double;
  mayor : string;
begin
if not dm.pr_verifica_disp(dm.QParametrosPAR_INVEMPRESA.AsString,
                       QDetallealm_codigo.AsString,
                       QDetallePRO_CODIGO.AsString,
                       QDetalleDET_CANTIDAD.AsString,
                       QDetalleDET_MEDIDA.AsString,
                       IntToStr(dm.Usuario),
                       QDetalleSUC_CODIGO.AsString,
                       QDetalleTFA_CODIGO.AsString,
                       QDetalleFAC_FORMA.AsString,
                       QDetalle.Parameters.parambyname('numero').Value)then
MessageDlg('NO HAY SUFICIENTE DE ESTE PRODUCTO PARA'+#13+
                   'FACTURAR ESTA CANTIDAD',mtError,[mbok],0)
else
  if dm.QUsuariosusu_descuento.Value = 'True' then
  begin
    Application.CreateForm(tfrmDescuentoGeneral, frmDescuentoGeneral);
    frmDescuentoGeneral.ShowModal;
    if trim(frmDescuentoGeneral.edDesc.Text) <> '' then
    begin
      Totaliza := false;
      QDetalle.DisableControls;
      QDetalle.First;
      while not QDetalle.Eof do
      begin
        if QDetalleValor.Value > 0 then
        begin
          Mayor := 'N';
          QDetalle.Edit;
          QDetalleDET_DESCUENTO.Value := StrToFloat(frmDescuentoGeneral.edDesc.Text);

          if (QDetalleDET_DESCMAX.Value > 0) and (QDetalleDET_OFERTA.Value <> 'S') then
          begin
             if (dm.QParametrosPAR_PRECIOUND.Value = 'Precio1') and (QDetalleDET_MEDIDA.Value = 'Und') then
               PorcReal := 100 - (((QDetalleValor.Value/QDetalleDET_CANTIDAD.Value) / QDetalleDET_PRECIO1.Value) * 100)
             else if (dm.QParametrosPAR_PRECIOUND.Value = 'Precio2') and (QDetalleDET_MEDIDA.Value = 'Und') then
               PorcReal := 100 - (((QDetalleValor.Value/QDetalleDET_CANTIDAD.Value) / QDetalleDET_PRECIO2.Value) * 100)
             else if (dm.QParametrosPAR_PRECIOEMP.Value = 'Precio1') and (QDetalleDET_MEDIDA.Value = 'Emp') then
               PorcReal := 100 - (((QDetalleValor.Value/QDetalleDET_CANTIDAD.Value) / QDetalleDET_PRECIO1.Value) * 100)
             else if (dm.QParametrosPAR_PRECIOEMP.Value = 'Precio2') and (QDetalleDET_MEDIDA.Value = 'Emp') then
               PorcReal := 100 - (((QDetalleValor.Value/QDetalleDET_CANTIDAD.Value) / QDetalleDET_PRECIO2.Value) * 100);

             PorcReal := StrToFloat(format('%10.2f',[PorcReal]));

             if PorcReal > StrToFloat(Format('%10.2f',[QDetalleDET_DESCMAX.Value])) then
             begin
                Mayor := 'S';
                QDetalleDET_DESCUENTO.Value := 0;
             end;
          end;
          QDetalle.Post;
        end;
        QDetalle.Next;
      end;
      QDetalle.First;
      QDetalle.EnableControls;
      Totaliza := true;
      totalizar;
    end;
    frmDescuentoGeneral.Release;
    if Mayor = 'S' then
    begin
      MessageDlg('EL PORCENTAJE MAXIMO PACTADO PARA '+#13+
                 QDetallePRO_NOMBRE.Value+#13+
                 'ES '+Format('%n',[QDetalleDET_DESCMAX.Value])+'%',mtError,[mbok],0);
    end;
  end;
  PageControl1.ActivePageIndex := 0;
  Grid.SetFocus;
end;

procedure TfrmFacturaRenta.QFacturaSUC_CODIGOChange(Sender: TField);
begin
  QFacturaALM_CODIGO.Value := QSucursalalm_codigo.Value;
end;

procedure TfrmFacturaRenta.ckdomicilioClick(Sender: TObject);
begin
  if QDetalle.Active then
  begin
    totalizar;
  end;
  PageControl1.ActivePageIndex := 0;
  Grid.SetFocus;
end;

procedure TfrmFacturaRenta.btcajaClick(Sender: TObject);
begin
  Search.AliasFields.clear;
  Search.AliasFields.add('Nombre');
  Search.AliasFields.add('C�digo');
  Search.Query.clear;
  Search.Query.add('select caj_nombre, caj_codigo');
  Search.Query.add('from cajas');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'caj_Codigo';
  Search.Title := 'Listado de Cajas';
  if Search.execute then
  begin
    QFacturafac_caja.value := strtoint(Search.ValueField);
    dbCaja.setfocus;
  end;
end;

procedure TfrmFacturaRenta.QFacturafac_cajaGetText(Sender: TField;
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

procedure TfrmFacturaRenta.DBEdit6Enter(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  Grid.SetFocus;
end;

procedure TfrmFacturaRenta.tTipoEnter(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  Grid.SetFocus;
end;

procedure TfrmFacturaRenta.Imp40ColumnasREC;
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

  AssignFile(arch, 'imp.bat');
  rewrite(arch);
  writeln(arch, 'type t.txt > '+puerto);
  closefile(arch);

  AssignFile(arch, 't.txt');
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
      dm.Imp40Columnas(arch);
//20171008  winexec('imp.bat',0);
end;

procedure TfrmFacturaRenta.QFacturafac_rncChange(Sender: TField);
var
  D: TDatoRncConsulta;
begin
  if (QFacturafac_rnc.IsNull) or (Trim(edCliente.Text) <> '') then
    Exit;

  D := dm.ConsultarRncCompleto(QFacturafac_rnc.Value);
  if D.Encontrado then
  begin
    if D.CliCodigo > 0 then
    begin
      edCliente.Text := IntToStr(D.CliCodigo);
      QFacturaCLI_CODIGO.Value := D.CliCodigo;
    end;
    QFacturaFAC_NOMBRE.Value := D.RazonSocial;
    QFacturaFAC_DIRECCION.Value := D.Direccion;
    QFacturaFAC_LOCALIDAD.Value := Trim(D.Urbanizacion) + Trim(D.Numero);
    QFacturaFAC_TELEFONO.Value := D.Telefono;
  end;
end;

procedure TfrmFacturaRenta.btdeletecuentaClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR LA CUENTA?',mtconfirmation,[mbyes,mbno],0) = mryes then
    QCuentas.Delete;
  GridCuentas.setfocus;
end;

procedure TfrmFacturaRenta.btfindcuentaClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and cat_movimiento = '+#39+'S'+#39);
  Search.AliasFields.Add('Descripci�n');
  Search.AliasFields.Add('Cuenta');
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catalogo de Cuentas';
  if Search.execute then
  begin
    QCuentas.Edit;
    QCuentasCAT_CUENTA.Value := Search.ValueField;
  end;
end;

procedure TfrmFacturaRenta.GridCuentasColEnter(Sender: TObject);
begin
  if GridCuentas.SelectedIndex = 1 then
    GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1;
end;

procedure TfrmFacturaRenta.GridCuentasEnter(Sender: TObject);
begin
  GridCuentas.SelectedIndex := 0;
end;

procedure TfrmFacturaRenta.GridCuentasKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmFacturaRenta.QCuentascat_cuentaChange(Sender: TField);
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


procedure TfrmFacturaRenta.QSucursalAfterDelete(DataSet: TDataSet);
begin
  TotalizarCuentas;
end;

procedure TfrmFacturaRenta.QSucursalAfterPost(DataSet: TDataSet);
begin
  TotalizarCuentas;
end;

procedure TfrmFacturaRenta.QSucursalBeforePost(DataSet: TDataSet);
begin
  if QCuentasCAT_NOMBRE.IsNull then QCuentas.Cancel;
end;

procedure TfrmFacturaRenta.QFacturaFAC_ITBISChange(Sender: TField);
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

procedure TfrmFacturaRenta.QFacturaMON_CODIGOChange(Sender: TField);
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
  end;
end;

procedure TfrmFacturaRenta.QFacturafac_cajaChange(Sender: TField);
begin
  if not QFacturafac_caja.IsNull then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select isnull(alm_codigo,0) as alm_codigo, cat_cuenta');
    dm.Query1.sql.add('from cajas');
    dm.Query1.sql.add('where emp_Codigo = :emp');
    dm.Query1.sql.add('and caj_Codigo = :caj');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('caj').Value := QFacturafac_caja.value;
    dm.Query1.open;

    if dm.Query1.FieldByName('alm_codigo').Value > 0 then
    begin
      CtaCaja := dm.Query1.FieldByName('cat_cuenta').AsString;
      QFacturaALM_CODIGO.Value := dm.Query1.FieldByName('alm_codigo').Value;
    end
    else
    begin
      QFacturaALM_CODIGO.Value := QSucursalalm_codigo.Value;
    end;
  end;
end;

procedure TfrmFacturaRenta.QFacturaALM_CODIGOChange(Sender: TField);
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

procedure TfrmFacturaRenta.btdeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR LA FILA?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
    QDetalle.Delete;
//20170815    Totaliza := true;
    Totalizar;
//20170815    Totaliza := false;
  end;
  PageControl1.ActivePageIndex := 0;
  Grid.setfocus;
end;

procedure TfrmFacturaRenta.Escalas1Click(Sender: TObject);
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

procedure TfrmFacturaRenta.Vercombodelproducto1Click(Sender: TObject);
begin
  Application.CreateForm(tfrmConsCombo, frmConsCombo);
  frmConsCombo.QCombo.Parameters.ParamByName('emp').Value := dm.vp_cia;
  frmConsCombo.QCombo.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
  frmConsCombo.QCombo.Open;
  frmConsCombo.ShowModal;
  frmConsCombo.Release;
end;

procedure TfrmFacturaRenta.Crearnotaalproducto1Click(Sender: TObject);
begin
  application.createform(tfrmNota, frmNota);
  frmNota.DBMemo1.DataSource := frmFacturaRenta.dsDetalle;
  frmNota.DBMemo1.DataField := 'DET_NOTA';
  frmNota.showmodal;
  frmNota.release;
end;

procedure TfrmFacturaRenta.Preventasdelproducto1Click(Sender: TObject);
begin
  Search.AliasFields.clear;
  Search.AliasFields.add('Nombre');
  Search.AliasFields.add('C�digo');
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

procedure TfrmFacturaRenta.SpeedButton1Click(Sender: TObject);
begin
  application.createform(tfrmBuscaRNC, frmBuscaRNC);
  frmBuscaRNC.ShowModal;
  if frmBuscaRNC.seleccion = 1 then
  begin
    QFacturafac_rnc.Value := frmBuscaRNC.QRNCrnc_cedula.Value;
  end;
  DBEdit14.SetFocus;
end;

procedure TfrmFacturaRenta.Consultarmovimiento1Click(Sender: TObject);
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

procedure TfrmFacturaRenta.TotalizarCuentas;
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

procedure TfrmFacturaRenta.QCuentasAfterPost(DataSet: TDataSet);
begin
  TotalizarCuentas;
end;

procedure TfrmFacturaRenta.QCuentasAfterDelete(DataSet: TDataSet);
begin
  TotalizarCuentas;
end;

procedure TfrmFacturaRenta.btcamionClick(Sender: TObject);
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
    QFacturaPlaca.value := Search.ValueField;
    DBEdit17.setfocus;
  end;
end;

procedure TfrmFacturaRenta.QFacturaPlacaChange(Sender: TField);
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

procedure TfrmFacturaRenta.BuscaProducto(Cod: String);
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
      dm.Query1.sql.add('from productos p');
      dm.Query1.sql.add('where p.emp_codigo = :emp');
      dm.Query1.sql.add('and p.pro_roriginal = :cod');
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

        if not dm.Query1.fieldbyname('dep_codigo').IsNull then
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
        end;

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
        QDetalleVEN_CODIGO.Value       := QFacturaVEN_CODIGO.Value;
        QDetalleDET_CONITBIS.value     := dm.Query1.fieldbyname('pro_itbis').asstring;
        QDetalleDET_COSTO.value        := dm.Query1.fieldbyname('pro_costo').asfloat;
        QDetalleDET_COSTOEMP.Value     := dm.Query1.fieldbyname('pro_costoempaque').asfloat;
        QDetalleDET_DESCUENTO.value    := descuento;
        QDetalleDEP_CODIGO.value       := dm.Query1.fieldbyname('dep_codigo').asinteger;
        QDetalleDET_PRECIO1.Value      := dm.Query1.fieldbyname('pro_precio1').AsFloat;
        QDetalleDET_PRECIO2.Value      := dm.Query1.fieldbyname('pro_precio2').AsFloat;
        QDetalleDET_PRECIO3.Value      := dm.Query1.fieldbyname('pro_precio3').AsFloat;
        QDetalleDET_PRECIO4.Value      := dm.Query1.fieldbyname('pro_precio4').AsFloat;
        QDetalledet_minimo_venta.Value := dm.Query1.fieldbyname('pro_minimo_venta').AsFloat;
        QDetallemar_codigo.Value       := dm.Query1.fieldbyname('mar_codigo').AsInteger;

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

        if not ckItbis.Checked then
        begin
          if QDetalleDET_CONITBIS.Value = 'S' then
          begin
            if dm.QParametrospar_itbisincluido.Value = 'False' then
              QDetalleDET_PRECIO.Value := (QDetalleDET_PRECIO.Value / ((QDetalleDET_ITBIS.Value/100)+1));
          end;
        end;

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

procedure TfrmFacturaRenta.QDetallepro_unidad_medidaChange(Sender: TField);
begin
  if (not QDetallepro_unidad_medida.IsNull) and (dm.QParametrospar_inv_unidad_medida.Value = 'True') then
  begin
    //buscando precio por unidad de medida
    QUnidades.Close;
    QUnidades.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    QUnidades.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
    QUnidades.Parameters.ParamByName('und').Value := QDetalleUnidadID.Value; // QDetallepro_unidad_medida.value; // QDetallepro_unidad_medida.Value;
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
      QDetalleUnidadID.Value := QUnidadesUnidadID.Value;
    end;
  end;
end;

procedure TfrmFacturaRenta.QFacturaAfterEdit(DataSet: TDataSet);
begin
  accion := 2;
end;


procedure TfrmFacturaRenta.DatosEnvio(llenar:boolean = false);
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

procedure TfrmFacturaRenta.DatosdelMedidor1Click(Sender: TObject);
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

procedure TfrmFacturaRenta.QPedidosped_numeroChange(Sender: TField);
begin
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

procedure TfrmFacturaRenta.QPedidosNewRecord(DataSet: TDataSet);
begin
  QPedidosemp_codigo.Value := dm.vp_cia;
  QPedidossuc_codigo.Value := DBLookupComboBox2.KeyValue;
  QPedidosfac_forma.Value  := 'A';
  QPedidostfa_codigo.Value := QFacturaTFA_CODIGO.Value;
end;

procedure TfrmFacturaRenta.SpeedButton3Click(Sender: TObject);
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

procedure TfrmFacturaRenta.SpeedButton4Click(Sender: TObject);
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

procedure TfrmFacturaRenta.SpeedButton2Click(Sender: TObject);
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

procedure TfrmFacturaRenta.gridclinicoKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmFacturaRenta.TotalizaClinico;
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

procedure TfrmFacturaRenta.Pantalladeproductos1Click(Sender: TObject);
var
  vIns, vMod, vDel : boolean;
begin
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
    frmProductos.QProductos.Parameters.ParamByName('prod').Value := QDetallePRO_CODIGO.Value;
    frmProductos.QProductos.Open;
  end;
end;

procedure TfrmFacturaRenta.QFacturaMON_CODIGOGetText(Sender: TField;
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
end;

procedure TfrmFacturaRenta.bttiponcfClick(Sender: TObject);
begin
  Search.AliasFields.clear;
  Search.AliasFields.add('Nombre');
  Search.AliasFields.add('C�digo');
  Search.Query.Clear;
  Search.Query.Add('select tip_nombre, tip_codigo');
  Search.Query.Add('from TipoNCF');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'tip_codigo';
  Search.Title := 'Tipos de Comprobantes';
  if Search.execute then
  begin
    QFacturatip_codigo.Value := StrToInt(Search.ValueField);
    DBEdit13.SetFocus;
  end;
end;

procedure TfrmFacturaRenta.ttiponcfEnter(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  Grid.SetFocus;
end;

procedure TfrmFacturaRenta.QFacturatip_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QFacturatip_codigo.IsNull then
  begin
    Text := IntToStr(QFacturatip_codigo.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tip_nombre from TipoNCF');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tip_codigo = :tip');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('tip').Value  := QFacturatip_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      ttiponcf.Text := dm.Query1.FieldByName('tip_nombre').AsString
    else
      ttiponcf.Text := '';
  end
  else
    ttiponcf.Text := '';
end;

function TfrmFacturaRenta.Producto_sin_Serializar(const key: string): boolean;
var a:integer;
    Puntero : TBookmark;
begin
  Result := false;

  with QDetalle do
    begin
      QDetalle.DisableControls;
      Puntero := QDetalle.GetBookmark;
      QDetalle.First;
      while not QDetalle.eof do
      if QDetalle.fieldbyname('pro_serializado').AsString = 'S' then
      begin
         QSerie.Filter := 'PRO_CODIGO=' +QuotedStr(QDetallePRO_CODIGO.AsString);
         QSerie.Filtered := true;
         Result := QDetalleDET_CANTIDAD.AsInteger <> QSerie.RecordCount;
         QSerie.Filtered := false;
         QSerie.Filter := '';
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

procedure TfrmFacturaRenta.PageControl1Change(Sender: TObject);
begin
  dblExistencia.Visible := PageControl1.TabIndex = 0;
end;

procedure TfrmFacturaRenta.QFacturaCLI_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if QFacturaCLI_CODIGO.isnull then
     edCliente.Text := EmptyStr;
end;

procedure TfrmFacturaRenta.QEnvioNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('env_status').Value := 'PE';
end;

procedure TfrmFacturaRenta.QSerieNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ser_secuencia').Value  := DataSet.RecordCount+1;
  DataSet.FieldByName('PRO_CODIGO').Value     := QDetallePRO_CODIGO.Value;
end;

procedure TfrmFacturaRenta.QSerieAfterInsert(DataSet: TDataSet);
begin
  if DataSet.RecordCount = QDetalleDET_CANTIDAD.AsInteger then
     begin
      DataSet.cancel;
      ShowMessage('A EXEDIDO LA CANTIDAD MAXIMA DE REGISTROS');
     end;
end;

end.


