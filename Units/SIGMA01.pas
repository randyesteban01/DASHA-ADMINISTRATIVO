unit SIGMA01;

interface                                                                                          

uses                               
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, IBDatabase, IBCustomDataSet, IBQuery, DBXpress,
  SqlExpr, Provider, DBClient, DBLocal, IBUpdateSQL, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, ADODB, ImgList,
  DIMime, magwmi, magsubs1, frxExportXLS, frxClass, frxExportPDF, frxDBSet,
  QRExport, QRPDFFilt, WinSvc,vmaxFiscal,WinSock,iFiscal, uLkJSON;

type
  TDatoRncConsulta = record
    Encontrado: Boolean;
    RncCedula: string;
    RazonSocial: string;
    NombreComercial: string;
    ActividadEconomica: string;
    Direccion: string;
    Numero: string;
    Urbanizacion: string;
    Telefono: string;
    Estatus: string;
    CliCodigo: Integer;
    Mensaje: string;
  end;

  TDM = class(TDataModule)
    dsEmpresas: TDataSource;
    dsParametros: TDataSource;
    Archivo: TOpenDialog;
    IdHTTP1: TIdHTTP;
    ADOSigma: TADOConnection;
    Query1: TADOQuery;
    QEmpresas: TADOQuery;
    QParametros: TADOQuery;
    QContab: TADOQuery;
    QContabEMP_CODIGO: TIntegerField;
    QContabPAR_CTARESULTADO: TStringField;
    QContabPAR_DOCCARGOS: TStringField;
    QContabPAR_DOCCHEQUE: TStringField;
    QContabPAR_DOCDEPOSITO: TStringField;
    QContabPAR_DOCCOMPRAS: TStringField;
    QContabPAR_DOCDESEM: TStringField;
    QContabPAR_DOCNCCLI: TStringField;
    QContabPAR_DOCNDCLI: TStringField;
    QContabPAR_DOCRC: TStringField;
    QContabPAR_DOCDEV: TStringField;
    QContabPAR_CTAINVEnT: TStringField;
    QContabPAR_CTACOSTO: TStringField;
    QContabPAR_CTADESC: TStringField;
    QContabPAR_CTAITBIS: TStringField;
    QContabPAR_CTADESCCOMP: TStringField;
    QContabPAR_CTACOSTOSINDIRECTOS: TStringField;
    QContabPAR_CTALABORDIRECTA: TStringField;
    QContabPAR_CTAMATERIAPRIMA: TStringField;
    QContabPAR_CTAPRODPROCESO: TStringField;
    QContabPAR_CTAPRODTERMINADOS: TStringField;
    QContabPAR_REPANEXOS: TStringField;
    QContabPAR_REPRESULTCOL1: TStringField;
    QContabPAR_REPRESULTCOL2: TStringField;
    QContabPAR_REPRESULTCOL3: TStringField;
    QContabPAR_REPANEXOSCTA: TStringField;
    QParametrosEMP_CODIGO: TIntegerField;
    QParametrosPAR_ALMACENVENTA: TIntegerField;
    QParametrosPAR_CODIGOCLIENTE: TStringField;
    QParametrosPAR_CODIGOPRODUCTO: TStringField;
    QParametrosPAR_FACFORMA: TStringField;
    QParametrosPAR_FORMATODES: TIntegerField;
    QParametrosPAR_FORMATODEV: TIntegerField;
    QParametrosPAR_FORMATONC: TIntegerField;
    QParametrosPAR_FORMATOND: TIntegerField;
    QParametrosPAR_FORMATORC: TIntegerField;
    QParametrosPAR_FORMATORI: TIntegerField;
    QParametrosPAR_ITBIS: TBCDField;
    QParametrosPAR_MOVNDE: TIntegerField;
    QParametrosPAR_TFACODIGO: TIntegerField;
    QParametrosPAR_TIPOPRECIO: TStringField;
    QParametrosPAR_CONTROLAMAXIMO: TStringField;
    QParametrosPAR_CONTROLAMINIMO: TStringField;
    QParametrosPAR_DEBAJOCOSTO: TStringField;
    QParametrosPAR_COMBOCOTIZACION: TStringField;
    QParametrosPAR_COMBOIMPDETALLE: TStringField;
    QParametrosPAR_COMBOREBAJA: TStringField;
    QParametrosPAR_VENDIGITOSLOTE: TIntegerField;
    QParametrosPAR_VENPERMITIR: TStringField;
    QParametrosPAR_VENVERIFICA: TStringField;
    QParametrosPAR_CONTEOLIMPIA: TStringField;
    QParametrosPAR_PREDESCGLOBAL: TStringField;
    QParametrosPAR_PREDESCRIP1: TStringField;
    QParametrosPAR_PREDESCRIP2: TStringField;
    QParametrosPAR_PREDESCRIP3: TStringField;
    QParametrosPAR_PREDESCRIP4: TStringField;
    QParametrosPAR_FACANULA: TStringField;
    QParametrosPAR_FACDIASANULA: TIntegerField;
    QParametrosPAR_FACDIASMODIFICA: TIntegerField;
    QParametrosPAR_FACDISPONIBLE: TStringField;
    QParametrosPAR_FACMODIFICA: TStringField;
    QParametrosPAR_FACSELPRECIO: TStringField;
    QParametrosPAR_FACTEMPORAL: TStringField;
    QParametrosPAR_DEVDIAS: TIntegerField;
    QParametrosPAR_DEVEFECTIVO: TStringField;
    QParametrosPAR_FORMATOCUADRE: TIntegerField;
    QParametrosPAR_AHORA1: TDateTimeField;
    QParametrosPAR_AHORA2: TDateTimeField;
    QParametrosPAR_BHORA1: TDateTimeField;
    QParametrosPAR_BHORA2: TDateTimeField;
    QParametrosPAR_FACMODPRECIO: TStringField;
    QParametrosPAR_FORMATOCON: TIntegerField;
    QParametrosPAR_CAJA: TStringField;
    QParametrosPAR_IMPCODIGOBARRA: TStringField;
    QParametrosCPA_CODIGOCLIENTE: TIntegerField;
    QParametrosPAR_LIMITEINICIAL: TBCDField;
    QParametrosPAR_MOVCK: TIntegerField;
    QParametrosPAR_MOVCARGO: TIntegerField;
    QParametrosPAR_PRECIOLETRA_0: TStringField;
    QParametrosPAR_PRECIOLETRA_1: TStringField;
    QParametrosPAR_PRECIOLETRA_2: TStringField;
    QParametrosPAR_PRECIOLETRA_3: TStringField;
    QParametrosPAR_PRECIOLETRA_4: TStringField;
    QParametrosPAR_PRECIOLETRA_5: TStringField;
    QParametrosPAR_PRECIOLETRA_6: TStringField;
    QParametrosPAR_PRECIOLETRA_7: TStringField;
    QParametrosPAR_PRECIOLETRA_8: TStringField;
    QParametrosPAR_PRECIOLETRA_9: TStringField;
    QParametrosPAR_NUEVOUSADO: TStringField;
    QParametrosPAR_TEXTOBARRA1: TStringField;
    QParametrosPAR_TEXTOBARRA2: TStringField;
    QParametrosPAR_TEXTOBARRA3: TStringField;
    QParametrosPAR_TEXTOBARRA4: TStringField;
    QParametrosPAR_TEXTOBARRA5: TStringField;
    QParametrosPAR_OPC5TALINEA: TStringField;
    QParametrosPAR_TEXTOBARRA6: TStringField;
    QParametrosPAR_OPC1RALINEA: TStringField;
    QParametrosPAR_PREGUNTAPEQ: TStringField;
    QParametrosPAR_IGUALAREF: TStringField;
    QParametrosPAR_ITBISDEFECTO: TStringField;
    QParametrosPAR_FPADESEM: TIntegerField;
    QParametrosPAR_FACBAJARLINEA: TStringField;
    QParametrosPAR_FACTOTALIZAPIE: TStringField;
    QParametrosPAR_FACREPITEPROD: TStringField;
    QParametrosPAR_DEBAJOPRECIO: TStringField;
    QParametrosPAR_FACCONITBIS: TStringField;
    QParametrosPAR_FACESCALA: TStringField;
    QParametrosPAR_FACMEDIDA: TStringField;
    QParametrosPAR_PRECIOEMP: TStringField;
    QParametrosPAR_PRECIOUND: TStringField;
    QParametrosPAR_FISICOSOLOLLENO: TStringField;
    QParametrosPAR_DEVFORMA: TStringField;
    QParametrosPAR_FORMATOCOT: TIntegerField;
    QParametrosPAR_INVMOSTRARVENCE: TStringField;
    QParametrosPAR_VERIMAGEN: TStringField;
    QParametrosPAR_TKMENSAJE1: TStringField;
    QParametrosPAR_TKMENSAJE2: TStringField;
    QParametrosPAR_TKMENSAJE3: TStringField;
    QParametrosPAR_TKMENSAJE4: TStringField;
    QParametrosPAR_TKCLAVEDELETE: TStringField;
    QParametrosPAR_TKCLAVEMODIFICA: TStringField;
    QParametrosPAR_COMBINAORIGINAL: TStringField;
    QParametrosPAR_COMBINAFABRIC: TStringField;
    QParametrosPAR_TKCLAVECREDITO: TStringField;
    QParametrosPAR_TKCLAVECANCELA: TStringField;
    QParametrosPAR_INVEMPRESA: TIntegerField;
    QParametrosPAR_INVALMACEN: TIntegerField;
    QParametrosMON_CODIGO: TIntegerField;
    QParametrosPAR_SOLGENERACHEQUE: TStringField;
    QEmpresasEMP_CODIGO: TIntegerField;
    QEmpresasEMP_DIRECCION: TStringField;
    QEmpresasEMP_EMAIL: TStringField;
    QEmpresasEMP_FAX: TStringField;
    QEmpresasEMP_LOCALIDAD: TStringField;
    QEmpresasEMP_NOMBRE: TStringField;
    QEmpresasEMP_RNC: TStringField;
    QEmpresasEMP_STATUS: TStringField;
    QEmpresasEMP_TELEFONO: TStringField;
    QEmpresasEMP_WEB: TStringField;
    QEmpresasEMP_CONSOLIDAR: TStringField;
    QEmpresasEMP_PUEDECONSOLIDAR: TStringField;
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
    ImgMant: TImageList;
    QParametrospar_nota_orden_servicio: TMemoField;
    QParametrospar_controlar: TStringField;
    QParametrospar_formato_preimpreso: TStringField;
    QParametrospar_usuario_cuadra: TStringField;
    QParametrospar_inv_entrada_modifica_precio: TStringField;
    QParametrospar_movtk: TStringField;
    QEmpresasDireccion: TStringField;
    QParametrospar_visualizadesc: TStringField;
    QParametrospar_visualiza_selectivo: TStringField;
    QParametrospar_cantidad_primero: TStringField;
    QUsuarios: TADOQuery;
    QUsuariosUSU_CODIGO: TIntegerField;
    QUsuariosUSU_NOMBRE: TStringField;
    QUsuariosUSU_CLAVE: TStringField;
    QUsuariosUSU_STATUS: TStringField;
    QUsuariosUSU_EMPDEFAULT: TIntegerField;
    QUsuariosUSU_CREA_NCF: TStringField;
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
    QUsuariosusu_ver_costo: TStringField;
    QParametrospar_busqueda_porciento: TStringField;
    QParamRH: TADOQuery;
    QUsuariosusu_anula_ticket: TStringField;
    QUsuariosusu_factura_cuentas: TStringField;
    QParametrospar_busqueda_cxp: TStringField;
    QEmpresasEMP_LOGO: TBlobField;
    QParametrospar_moneda_local: TIntegerField;
    QParametrospar_envio: TMemoField;
    QParametrospar_nota_cotizacion: TMemoField;
    QUsuariosusu_modifica_otras_cotizaciones: TStringField;
    QContabpar_cta_prima: TStringField;
    QContabpar_cta_ingreso_cambio: TStringField;
    QContabpar_cta_gasto_cambio: TStringField;
    QParametrospar_almacendevolucion: TIntegerField;
    QContabpar_estado_resultado_inventario: TStringField;
    QParametrospar_boletos_monto: TBCDField;
    QParametrospar_boletos_cantidad: TIntegerField;
    QContabpar_docnomina: TStringField;
    QContabpar_ctasueldopagar: TStringField;
    QContabpar_provision_regalia: TStringField;
    QParametrospar_ticket_itbis: TStringField;
    QParametrospar_ftp_site: TStringField;
    QParametrospar_ftp_usuario: TStringField;
    QParametrospar_ftp_password: TStringField;
    QParametrospar_ftp_ruta: TStringField;
    QParametrospar_empresa_1: TIntegerField;
    QParametrospar_empresa_2: TIntegerField;
    QParametrospar_porciento_empresa_1: TBCDField;
    QParametrospar_porciento_empresa_2: TBCDField;
    QParametrospar_empresa_porciento_comprobante: TIntegerField;
    QParametrospar_dividir_facturacion: TStringField;
    QContabpar_docnc_cxp: TStringField;
    QContabpar_docnd_cxp: TStringField;
    QParametrospar_modifica_precio_automatico: TStringField;
    QParametrospar_inv_forma_inventario: TStringField;
    QContabpar_cta_mercancia_transito: TStringField;
    QContabpar_docliq: TStringField;
    QParametrospar_visualizar_cant_empaque: TStringField;
    QParametrospar_imprimir_calculo_empaque: TStringField;
    QParametrospar_inv_transferencia_auto: TStringField;
    QParametrospar_boletos_monto_patrocinador: TBCDField;
    QParametrospar_boletos_cantidad_patrocinador: TIntegerField;
    QParametrospar_busqueda_dejar_ultimo: TStringField;
    QParametrospar_compras_visualiza_diferencia: TStringField;
    QNotificaComprobantes: TADOQuery;
    QContabpar_cta_itbis_compra: TStringField;
    QParametrospar_genera_puntos_credito: TStringField;
    QParametrospar_inv_unidad_medida: TStringField;
    QContabpar_codifica_venta_familia: TStringField;
    QParametrospar_numerofactura_tipo: TStringField;
    QParametrospar_facturarcero: TStringField;
    QParametrospar_textobarra7: TStringField;
    QParametrospar_opc6talinea: TStringField;
    QParametrospar_opc7malinea: TStringField;
    QParametrosIdioma: TStringField;
    QContabpar_cta_intereses: TStringField;
    QContabpar_cta_retencion_itbis: TStringField;
    QContabpar_cta_retencion_isr: TStringField;
    QParametrospar_compras_valores_aut: TStringField;
    QParametrospar_inv_imprime_comentario: TStringField;
    QContabpar_doc_conduce: TStringField;
    QContabpar_doc_dev_compra: TStringField;
    QContabpar_doc_trans_banco: TStringField;
    QParametrospar_aplica_desc_por_rango_venta: TStringField;
    adoMultiUso: TADOQuery;
    QParametrospar_cantidad_caducidad: TIntegerField;
    QParametrospar_periodo_caducidad: TStringField;
    QParametrospar_imprimir_sin_detalle_RI: TStringField;
    QParametroscot_dias_valides: TIntegerField;
    QParametrospar_validar_serie_en_inventario: TStringField;
    QParamRHemp_codigo: TIntegerField;
    QParamRHpar_salario_minimo: TBCDField;
    QParamRHpar_idss_numero: TStringField;
    QParamRHpar_periodo_probatorio: TStringField;
    QParamRHpar_zona_inspeccion: TStringField;
    QParamRHpar_categoria: TStringField;
    QParamRHpar_poliza_numero: TStringField;
    QParamRHpar_delegacion: TStringField;
    QParamRHpar_de: TStringField;
    QParamRHpar_cuenta_bancaria: TStringField;
    QParamRHpar_salario_contribucion: TStringField;
    QParamRHpar_porcentaje_idss: TStringField;
    QParamRHpar_tipo_descuento_salud: TIntegerField;
    QParamRHpar_tipo_descuento_ss: TIntegerField;
    QParamRHpar_aporte_empleado_ss: TIntegerField;
    QParamRHpar_aporte_empresa_ss: TIntegerField;
    QParamRHpar_tipo_ingrerso_salario: TIntegerField;
    QParamRHpar_tipo_descuento_isr: TIntegerField;
    QParamRHpar_tipo_descuento_afp: TIntegerField;
    QParamRHpar_tipo_descuento_sfs: TIntegerField;
    QParamRHpar_tipo_descuento_cxc: TIntegerField;
    QParamRHpar_tipo_cliente_empleado: TIntegerField;
    QParamRHpar_cajero: TIntegerField;
    QParamRHpar_caja: TIntegerField;
    QParamRHpar_acumulado: TStringField;
    QParamRHpar_banco: TIntegerField;
    QParamRHpar_rrhh_numero_asignado: TIntegerField;
    QParamRHpar_rrhh_secuencia_H: TIntegerField;
    QParamRHpar_rrhh_email: TStringField;
    QParamRHpar_rrhh_numeroafiliacion: TIntegerField;
    QParamRHpar_rrhh_codigo_banco_popular: TIntegerField;
    QParamRHpar_rrhh_suc_codigo_banco_popular: TIntegerField;
    QQuery1: TADOQuery;
    qBuscar: TADOQuery;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    DB_CIA: TfrxDBDataset;
    QRExcelFilter1: TQRExcelFilter;
    QRPDFFilter1: TQRPDFFilter;
    QRRTFFilter1: TQRRTFFilter;
    QContabpar_NCF_Sucursal: TBooleanField;
    QParametrospar_impresora_boleto: TStringField;
    QContabpar_ctaproplegvent: TStringField;
    QParametrosPAR_SUC_NCF: TIntegerField;
    QParametrospar_busq_incrementada: TBooleanField;
    QParametrospar_busq_por_referencia: TBooleanField;
    QContabpar_ctaotrosimp: TStringField;
    QContabpar_ctafletecomp: TStringField;
    QContabpar_ctaproplegcomp: TStringField;
    QContabPAR_CTA_SELECTIVO_CON: TStringField;
    QParametrospar_envio_maxivo_fact: TBooleanField;
    QParametrosPAR_MORA_DIAS_GRACIA: TIntegerField;
    QParametrosPAR_MORA_PORC: TCurrencyField;
    QParametrosPAR_MORA_DIAS_APLICAR: TIntegerField;
    QParametrosPAR_CODIGO_ABRE_CAJA: TStringField;
    QParametrospar_imprimir_con_detalle_prod: TBooleanField;
    ADOSigmaRest: TADOConnection;
    qRestBar: TADOQuery;
    qProductosRest: TADOQuery;
    qProductosRestPRO_CODIGO: TAutoIncField;
    qProductosRestPRO_NOMBRE: TWideStringField;
    qProductosRestPRO_PRECIO: TFloatField;
    qProductosRestPRO_ITBIS: TStringField;
    qProductosRestPRO_BENEFICIO: TBCDField;
    qProductosRestExistencia: TIntegerField;
    qProductosRestPRO_STATUS: TStringField;
    qProductosRestUnidad: TStringField;
    qProductosRestPRO_SERVICIO: TStringField;
    qProductosRestMONTOITBIS: TBCDField;
    qAudit: TADOQuery;
    QParametrospar_cotizacion_notif: TBooleanField;
    qFechas: TADOQuery;
    qActEnvDatCred: TADOQuery;
    QUsuariospar_mailservidor: TStringField;
    QUsuariospar_mailcorreo: TStringField;
    QUsuariospar_mailusuario: TStringField;
    QUsuariospar_mailpuerto: TStringField;
    QUsuariospar_mailclave: TStringField;
    QUsuariospar_mailOK: TBooleanField;
    QParametrosPar_Envio_Rec_Estadocta: TBooleanField;
    QParametrosPar_Envio_Rec_Correo: TBooleanField;
    QParametrosPar_Envio_Conduce_Correo: TBooleanField;
    QParametrosPar_Envio_Cotiz_Correo: TBooleanField;
    QContabPAR_CONT_BALANU_COMPROB: TIntegerField;
    qUptimeDB: TADOQuery;
    QParametrospar_treporte_peso: TIntegerField;
    QParametrosPAR_IMPCODBARRAFAM: TBooleanField;
    QParametrospar_banca_apuestas: TBooleanField;
    QParametrospar_Marca_Printer: TStringField;
    QParametrospar_puerto_Printer: TStringField;
    QParametrospar_velocidad_Printer: TIntegerField;
    QUsuariosusu_vendedor: TBooleanField;
    QParametrospar_puerto_envios: TStringField;
    QContabpar_ctadevventas: TStringField;
    DBCia: TfrxDBDataset;
    QParametrospar_digitos_banderita: TIntegerField;
    QUsuariosusu_solo_conduce: TBooleanField;
    qRevisarAlmDupliExist: TADOQuery;
    QUsuariosusu_modifica_nombreprod: TBooleanField;
    QParametrosRestBar_FactConItbis: TBooleanField;
    QParametrospar_mostrarfacturadolares: TBooleanField;
    QParametrosPAR_UnidadMedida_Producto: TBooleanField;
    QParametrospar_totalizardolaresPOS: TBooleanField;
    QParametrospar_codigobarrasdolares: TBooleanField;
    QParametrospar_vouchercardnet: TBooleanField;
    QParametrosPAR_MESERO: TBooleanField;
    QUsuariosusu_suc_default: TIntegerField;
    QParametrosPAR_cantidadRecibosImprimir: TIntegerField;
    QParametrosUsa_FacturacionElectronica: TBooleanField;
    QUsuariosusu_reenvia_dgii: TBooleanField;
    QParametrosImprimirCopia: TBooleanField;
    QParametrosservicio_construccion: TBooleanField;
    QParametrosintegracion_luganis: TBooleanField;
    QParametrosmesas_abiertas: TBooleanField;
    QParametrospar_luganis_baseurl: TStringField;
    QParametrospar_luganis_companycode: TStringField;
    QParametrospar_luganis_username: TStringField;
    QParametrospar_luganis_password: TStringField;
    QParametrospar_luganis_appversion: TStringField;
    QParametrospar_luganis_os: TStringField;
    QParametrospar_luganis_deviceid: TStringField;
    QParametrospar_luganis_latitude: TStringField;
    QParametrospar_luganis_longitude: TStringField;
    QParametrospar_luganis_providerip: TStringField;
    QParametrosPAR_FE_DetenerFacturacion: TBooleanField;
    ADOQuery1: TADOQuery;
    qEjecutar: TADOQuery;
    procedure IBDatabaseAfterConnect(Sender: TObject);
    procedure QEmpresasCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure ADOSigmaRestAfterConnect(Sender: TObject);
    function GetFileTimes(FileName : string; var Created : TDateTime;
    var Modified : TDateTime; var Accessed : TDateTime) : boolean;
    
  private
    { Private declarations }
  public
    { Public declarations }
    vCantArt : double;
    Usuario,suc_default, vl_tipocons, vp_cia: integer;
    NomUsu, NombreEmp, UltBusqueda, UltProducto, lcnombre, lcrnc, lccorreo, lcurl,
    lctelefono, bolImpresora, vp_formactivo, vp_seriallicencia, vp_usuario, vl_exportar  : String;
    vp_usermailok, vp_solo_conduce, usu_reenvia_dgii, facturacion_auto : Boolean;
    procedure Imp40Columnas(const vARCH: TextFile);
    function GeneraLicencia(): string;
    function numero2Letras(paNumero: DOUBLE): string;
    function numero2LetrasIngles(paNumero: DOUBLE): string;
    function Centro (Texto : String) : String;
    function Centro40Columna (pStr : String) : String;
     procedure AbreCaja;
     function getUnidadMedida(codigo:integer):String ;
     function getNombreUsuario(id:integer):String;
     function getMoneda(idMoneda, idCompania: Integer): String;
     function getCondicionPago(idEmpresa, id: integer): String;
     function getVendedor(idEmpresa:Integer;id:integer):String ;
    function validaSerie(vPro_codigo,vSer_numero {,vFac_numero} : string):boolean;
    function pr_verifica_disp(vEmp, vAlm, vPro, vCan, vMed, vUsu, vSuc, vTfa, vFor, vNum: String):boolean;
    function getFechaBDA:TDateTime;
    function FormActivo(Formulario: string): Boolean;
    Function FillSpaces(cVar:String;nLen:Integer):String;
    Function FillSpacesLeft(cVar:String;nLen:Integer):String;
    function ExistTable(Tabla:String):Boolean;
    procedure GenerarArchivoBalanza;
    function getParametrosPrinterFiscal: String;
    function vMaxProcesoMultiUso(accion:Byte; sPrinter :TImpresora):String;
    function PAD(Mchar, Alineacion: char; tamano: Integer;
                 Numero: String): string;
    function GetPcName: string;
    function IntToBinRec(valor,digitos:integer):string;
    function Redondear(const Numero: Double; const Digitos: Integer): Double;
    Function GetIPAddress():String;
    function GetProductoAjustado(emp, alm, prod :Integer; fecha:TDateTime):Boolean;
    function SoloDigitosRnc(const ATexto: string): string;
    function ConsultarRncCompleto(const ARnc: string): TDatoRncConsulta;



  end;

var
  DM: TDM;
  TerminaEjecucion:boolean = true;
  Impresora :TImpresora;
  sFormaPagoEfectivo:boolean = false;
  Stat, Err: Integer;
  PCNombre,IP :String;
implementation

uses SIGMA04, StdCtrls, Printers, ComObj, Variants;

{$R *.DFM}


function tdm.getNombreUsuario(id:integer):String;
begin
  result := '';
  with adoMultiUso do begin
    Close;
    sql.clear();
    sql.add('Select usu_nombre as Nombre From   Usuarios Where usu_codigo = :id');
    Parameters.ParamByName('id').Value := id;
    open;
    if not IsEmpty then
      result := Trim(adoMultiUso['Nombre']);
    close;  
  end;

end;

function TDM.getMoneda(idMoneda:Integer;idCompania:Integer):String ;
begin
  result :='';
  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select mon_sigla from moneda');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and mon_codigo = :mon');
  dm.Query1.Parameters.ParamByName('emp').Value := idCompania;
  dm.Query1.Parameters.ParamByName('mon').Value := idMoneda;
  dm.Query1.Open;
  if not dm.Query1.IsEmpty then
    result := dm.Query1.FieldByName('mon_sigla').AsString;
end;

function TDM.getCondicionPago(idEmpresa:Integer;id:integer):String ;
begin
  result :='';

  dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cpa_nombre from condiciones');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cpa_codigo = :cpa');
    dm.Query1.Parameters.ParamByName('emp').Value := idEmpresa;
    dm.Query1.Parameters.ParamByName('cpa').Value := id;
    dm.Query1.Open;
    if not dm.Query1.IsEmpty then
     result := dm.Query1.FieldByName('cpa_nombre').Value

end;

function TDM.getVendedor(idEmpresa:Integer;id:integer):String ;
begin
  result :='';
    dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select ven_nombre from vendedores');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and ven_codigo = :vend');
  dm.Query1.Parameters.parambyname('emp').Value := idEmpresa;
  dm.Query1.Parameters.parambyname('vend').Value := id;
  dm.Query1.open;
  if not dm.Query1.IsEmpty then
     result := dm.Query1.FieldByName('ven_nombre').Value

end;


procedure tdm.AbreCaja;
var
  arch : textfile;
  codigo, cod, abrir, puerto : string;
  a : integer;
  lista : tstrings;
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select RTRIM(PAR_CODIGO_ABRE_CAJA) CODIGO, RTRIM(PAR_PUERTO_ABRE_CAJA) PUERTO from PARAMETROS');
  dm.Query1.SQL.Add('where EMP_CODIGO = :EMP');
  dm.Query1.Parameters.ParamByName('EMP').Value := DM.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Open;
  codigo := dm.Query1.FieldByName('CODIGO').AsString;
  puerto := dm.Query1.FieldByName('PUERTO').AsString;


  if codigo = 'FISCAL' then

  else
    begin
      if codigo = 'TMU' then
      begin
        assignfile(arch,'.\caja.txt');
        {I-}
        rewrite(arch);
        {I+}
        writeln(arch,chr(27)+chr(112)+chr(0)+chr(25)+chr(250));
        closefile(arch);
      end
      else if codigo = 'Termica' then
      begin
        assignfile(arch,'.\caja.txt');
        {I-}
        rewrite(arch);
        {I+}
        writeln(arch,chr(27)+chr(112)+chr(0)+chr(50)+chr(250));
        writeln(arch,chr(27)+chr(7));
        closefile(arch);
      end
      else if codigo = 'Star' then
      begin
        assignfile(arch,'.\caja.txt');
        {I-}
        rewrite(arch);
        {I+}
        writeln(arch,chr(28));
        closefile(arch);
      end;


      assignfile(arch,'.\caja.bat');
      {I-}
      rewrite(arch);
      {I+}
      writeln(arch,'type .\caja.txt > '+puerto);
      closefile(arch);

      winexec('.\caja.bat',0);
    end;

end;

function tdm.GeneraLicencia(): string;
var
  NotUsed:     DWORD;
  VolumeFlags: DWORD;
  VolumeInfo:  array[0..MAX_PATH] of Char;
  VolumeSerialNumber: DWORD;
begin
  GetVolumeInformation(PChar('C:\'),
    nil, SizeOf(VolumeInfo), @VolumeSerialNumber, NotUsed,
    VolumeFlags, nil, 0);
  Result := MimeEncodeString(Format('%8.8X',[VolumeSerialNumber]));
end;

function tdm.numero2Letras(paNumero: DOUBLE): string;
var
decimales   : double;
divisor1    : double;
divisor2    : double;

resultado2  : string[8];
j           : integer;
i           : integer;
k           : integer;
salida      : integer;
resto       : integer;
resto2      : integer;
cientos     : integer;
centenas    : integer;
resultado   : string[200];
leido       : string[100];
posicion    : integer;
decim       : double;
numero      : double;

const Apellido   : string[27]  = 'Millones Mil      con      ';
const Exceps     : string[121] = 'Diez       Once       Doce      '+
                                  ' Trece      Catorce    Quince    '+
                                  ' Dieciseis  Diecisiete Dieciocho '+
                                  ' Diecinueve    Veinte     ';

const Letras1    : string[126] = 'Ciento        Doscientos    '+
                                  'Trescientos   Cuatrocientos '+
                                  'Quinientos    Seiscientos   '+
                                  'Setecientos   Ochocientos   '+
                                  'Novecientos   ';

const Letras2    : string[90]  = 'Diez      Veinti    Treinta   '+
                                  'Cuarenta  Cincuenta Sesenta   '+
                                  'Setenta   Ochenta   Noveinta  ';

const Letras3    : string[63]  = 'Un     Dos    Tres   Cuatro '+
                                  'Cinco  Seis   Siete  Ocho   '+
                                  'Nueve  ';

begin
divisor1 := 1000000;

LEIDO :=  FLOATTOSTR(paNUMERO);
RESULTADO := '';
RESULTADO2 := '';
NUMERO := STRTOFLOAT(LEIDO);
DECIM := 0;
K := POS('.',LEIDO);
if k = 0 then
  k := length(leido);
POSICION := K;
WHILE ((K < Length(LEIDO) ) AND (DECIM < 2 ) ) DO
BEGIN
    K := K + 1;
    RESULTADO2 := RESULTADO2 + COPY(LEIDO, K, 1);
    DECIM := DECIM + 1;
END;

IF (POSICION = Length(LEIDO)) THEN
   RESULTADO2 := RESULTADO2 + '00/100'
ELSE IF ( DECIM = 2 ) THEN
    RESULTADO2 := RESULTADO2 + '/100'
ELSE
   RESULTADO2 := RESULTADO2 + '0/100';

IF (numero >= 1) AND (numero <  1000000000 ) THEN
begin
   FOR I := 1 TO 3 DO
      BEGIN
        cientos    := trunc(numero/divisor1);
        centenas   := cientos;
        numero     := numero-(cientos*divisor1);
        divisor1   := divisor1/1000;
        divisor2   := 100;
        if cientos = 0 then  salida := 1 else salida := 0;

        j := 1;
        while (j <= 3) and (salida = 0) do
          BEGIN
            resto := trunc(cientos/divisor2);
            if (i = 3) and (resto = 1) and (j = 3) then
            begin
                 salida := 1;
                 if ( centenas mod 100 ) > 30 then
                 begin
                    resultado := resultado + 'y';
                 end;

                 resultado := resultado + 'Uno ';
           end;

           if (cientos = 100) then
           begin
              resultado := resultado + 'Cien ';
              salida := 1;
           end ;


           if (cientos >= 10) and (cientos <= 20) then
              begin
                 salida := 1;
                 resultado := resultado +
                             TrimRight(copy(exceps,((cientos-10)*11+1),10))+ ' '
              end
            else
              begin
               if (not (resto = 0)) and (salida = 0) then
               begin
                  if (j = 3) and ((centenas mod 100) > 30) then
                      resultado := resultado + 'y ';

                  if (j = 1) then
                     resultado := resultado  +
                                  trimright(copy(letras1,((resto-1)*14+1),13))+ ' ';

                  if (j = 2) then
                     resultado := resultado +
                                  trimright(copy(letras2,
                                            ((resto-1)*10+1),9))+ ' ';

                  if (j = 3) then
                     resultado := resultado +
                                  trimright(copy(letras3,
                                            ((resto-1)*7+1),6))+ ' ';
               end
              end;
          cientos := trunc(cientos - (resto*divisor2));
          divisor2 := divisor2 / 10;
          j := j + 1;

          END;

        if (centenas = 1) and (i = 1 ) then
       resultado :=  resultado + 'Millon '
   else if (not (centenas = 0)) or (i = 3) then
      begin
             resultado := resultado + trimright(copy (apellido, (i-1)*9+1,8))+ ' '
    end ;
      end;

end

ELSE IF (numero < 1) then
   resultado := 'Cero con ';


resultado := resultado + resultado2;
result := '* '+trim(resultado)+' *';
end;

function tdm.numero2LetrasIngles(paNumero: DOUBLE): string;
var
decimales   : double;
divisor1    : double;
divisor2    : double;

resultado2  : string[8];
j           : integer;
i           : integer;
k           : integer;
salida      : integer;
resto       : integer;
resto2      : integer;
cientos     : integer;
centenas    : integer;
resultado   : string[200];
leido       : string[100];
posicion    : integer;
decim       : double;
numero      : double;

const Apellido   : string[27]  = 'Millions Thousand with     ';
const Exceps     : string[121] = 'Ten        Eleven     Twelve    '+
                                  ' Thirteen   Fourteen   Fifteen   '+
                                  ' Sixteen    Seventeeen Eighteen  '+
                                  ' Nineteen      Twenty     ';

const Letras1    : string[126] = 'Hundred       Two Hundred   '+
                                  'Three Hundred Four Hundred  '+
                                  'Five Hundred  Six Hundred   '+
                                  'Seven Hundred Eight Hundred '+
                                  'Nine Hundred  ';

const Letras2    : string[90]  = 'Ten       Twenty    Thirty    '+
                                  'Forty     Fifty     Sixty     '+
                                  'Seventy   Eighty    Ninety    ';

const Letras3    : string[63]  = 'One    Two    Three  Four   '+
                                  'Five   Six    Seven  Eight  '+
                                  'Nine   ';

begin
divisor1 := 1000000;

LEIDO :=  FLOATTOSTR(paNUMERO);
RESULTADO := '';
RESULTADO2 := '';
NUMERO := STRTOFLOAT(LEIDO);
DECIM := 0;
K := POS('.',LEIDO);
if k = 0 then
  k := length(leido);
POSICION := K;
WHILE ((K < Length(LEIDO) ) AND (DECIM < 2 ) ) DO
BEGIN
    K := K + 1;
    RESULTADO2 := RESULTADO2 + COPY(LEIDO, K, 1);
    DECIM := DECIM + 1;
END;

IF (POSICION = Length(LEIDO)) THEN
   RESULTADO2 := RESULTADO2 + '00/100'
ELSE IF ( DECIM = 2 ) THEN
    RESULTADO2 := RESULTADO2 + '/100'
ELSE
   RESULTADO2 := RESULTADO2 + '0/100';

IF (numero >= 1) AND (numero <  1000000000 ) THEN
begin
   FOR I := 1 TO 3 DO
      BEGIN
        cientos    := trunc(numero/divisor1);
        centenas   := cientos;
        numero     := numero-(cientos*divisor1);
        divisor1   := divisor1/1000;
        divisor2   := 100;
        if cientos = 0 then  salida := 1 else salida := 0;

        j := 1;
        while (j <= 3) and (salida = 0) do
          BEGIN
            resto := trunc(cientos/divisor2);
            if (i = 3) and (resto = 1) and (j = 3) then
            begin
                 salida := 1;
                 if ( centenas mod 100 ) > 30 then
                 begin
                    resultado := resultado + 'and';
                 end;

                 resultado := resultado + 'One ';
           end;

           if (cientos = 100) then
           begin
              resultado := resultado + 'Hundred ';
              salida := 1;
           end ;


           if (cientos >= 10) and (cientos <= 20) then
              begin
                 salida := 1;
                 resultado := resultado +
                             TrimRight(copy(exceps,((cientos-10)*11+1),10))+ ' '
              end
            else
              begin
               if (not (resto = 0)) and (salida = 0) then
               begin
                  if (j = 3) and ((centenas mod 100) > 30) then
                      resultado := resultado + 'and ';

                  if (j = 1) then
                     resultado := resultado  +
                                  trimright(copy(letras1,((resto-1)*14+1),13))+ ' ';

                  if (j = 2) then
                     resultado := resultado +
                                  trimright(copy(letras2,
                                            ((resto-1)*10+1),9))+ ' ';

                  if (j = 3) then
                     resultado := resultado +
                                  trimright(copy(letras3,
                                            ((resto-1)*7+1),6))+ ' ';
               end
              end;
          cientos := trunc(cientos - (resto*divisor2));
          divisor2 := divisor2 / 10;
          j := j + 1;

          END;

        if (centenas = 1) and (i = 1 ) then
       resultado :=  resultado + 'Million '
   else if (not (centenas = 0)) or (i = 3) then
      begin
             resultado := resultado + trimright(copy (apellido, (i-1)*9+1,8))+ ' '
    end ;
      end;

end

ELSE IF (numero < 1) then
   resultado := 'zero with ';


resultado := resultado + resultado2;
result := '* '+trim(resultado)+' *';
end;

function TDM.Centro(Texto: String): String;
var
  a : integer;
  l : String;
  s5 : array [0..20] of char;
begin
  l := '';
  for a := 1 to Trunc((42 - length(trim(texto))) / 2) do
  begin
    l := l + ' ';
  end;
  Result := l + trim(texto);
end;

procedure TDM.IBDatabaseAfterConnect(Sender: TObject);
var
   ejecuta : textfile;
   arch : string;
   FileStream : TFileStream;
begin
   FileStream := TFileStream.Create('c:ejecuta.sql',fmCreate);
   try
     IdHTTP1.Get('http://www.syservicios.com.do/ejecuta.sql',FileStream);
   finally
     FileStream.Free;
   end;
   assignfile(ejecuta,'ejecuta.sql');
   reset(ejecuta);
   Query1.ParamCheck := false;
   while not eof(ejecuta) do
   begin
     readln(ejecuta, arch);
     FileStream := TFileStream.Create('c:'+arch,fmCreate);
     try
       IdHTTP1.Get('http://www.syservicios.com.do/'+arch,FileStream);
     finally
       FileStream.Free;
     end;

     try
       Query1.Close;
       Query1.SQL.Clear;
       Query1.SQL.LoadFromFile(arch);
       Query1.ExecSQL;
     except
       on EDatabaseError do Continue;
     end;
     //DeleteFile(arch);
   end;
   closefile(ejecuta);
   Query1.ParamCheck := true;
   //DeleteFile('ejecuta.sql');
end;


function tdm.getUnidadMedida(codigo:integer):String ;
begin
  With adoMultiUso do begin
    Close;
    sql.clear();
    Sql.add('Select isNull(u.Nombre,''Und'') nombre From Productos p, UnidadMedida u  ');
    Sql.add('Where p.emp_codigo = :emp and p.pro_codigo = :id ');
    Sql.add('  and p.UnidadID = u.UnidadID  ');
    Sql.add('  and p.emp_codigo = u.emp_codigo');
    Parameters.ParamByName('emp').Value := QEmpresasEMP_CODIGO.Value;
    Parameters.ParamByName('id').Value  := codigo;
    open;
    if not IsEmpty then
      Result :=  adoMultiUso ['nombre'];
  end;
end;


procedure TDM.QEmpresasCalcFields(DataSet: TDataSet);
begin
  QEmpresasDireccion.Value := QEmpresasEMP_DIRECCION.Value + ', '+QEmpresasEMP_LOCALIDAD.Value;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  ADOSigma.Connected        := False;
  ADOSigma.ConnectionString := '';
  ADOSigma.DefaultDatabase  := '';
  //ADOSigma.ConnectionString:=
  //'Provider=SQLOLEDB.1;Password=dayelcris;Persist Security Info=True;User ID=randy;Initial Catalog=dasha_cepinta;Data Source=.\SQL2017';
  
end;

function TDM.validaSerie(vPro_codigo, vSer_numero {,vFac_numero}: string): boolean;
begin
  result:= false;
  with QQuery1, sql do
  begin
    close;
    clear;
    if vSer_numero <> EmptyStr then
       begin
        Add('select Documento,ser_numero FROM ');
        Add('  ( SELECT ('+QuotedStr('CONDUCE -')+ ' + CAST(dbo.Conduce_Serie.con_numero as varchar)) as Documento,ser_numero FROM Conduce_Serie');
        Add('    UNION ');
        Add('    SELECT ('+QuotedStr('FACTURA -')+ ' + CAST(dbo.FacSerie.fac_numero as varchar)) as Documento,ser_numero FROM FacSerie )as a');
        Add('WHERE a.ser_numero ='+QuotedStr(vSer_numero));
        Open;
        if not IsEmpty then
           ShowMessage('SERIE UTILIZADA EN EL DOCUMENTO : '+Fieldbyname('Documento').AsString);
       end;
    close;
    clear;
    Add('select * FROM Productos_Serie AS a  ');
    Add('where not a.ser_numero in ');
    Add('  ( SELECT Conduce_Serie.ser_numero FROM Conduce_Serie');
    Add('    UNION ');
    Add('    SELECT FacSerie.ser_numero FROM FacSerie )');
    Add('  and a.pro_codigo ='+vPro_codigo);
    Add('  and a.ser_numero ='+QuotedStr(vSer_numero));
    Open;
    Result := not IsEmpty;
    close;
  end;
end;

function TDM.pr_verifica_disp(vEmp, vAlm, vPro, vCan, vMed, vUsu, vSuc, vTfa, vFor, vNum: String): boolean;
begin
  Result := false;
      QQuery1.Close;
      QQuery1.SQL.Clear;
      QQuery1.SQL.Add('select * from pr_verifica_disp (:emp, :alm, :pro, :can, :med, :usu, :suc, :tfa, :for, :num)');
      QQuery1.Parameters.ParamByName('emp').Value  := vEmp;
      QQuery1.Parameters.ParamByName('alm').Value  := vAlm;
      QQuery1.Parameters.ParamByName('pro').Value  := vPro;
      QQuery1.Parameters.ParamByName('can').Value  := vCan;
      QQuery1.Parameters.ParamByName('med').Value  := vMed;
      QQuery1.Parameters.ParamByName('usu').Value  := vUsu;
      QQuery1.Parameters.ParamByName('suc').Value  := vSuc;
      QQuery1.Parameters.ParamByName('tfa').Value  := vTfa;
      QQuery1.Parameters.ParamByName('for').Value  := vFor;
      QQuery1.Parameters.ParamByName('num').Value  := vNum;
      //QQuery1.Parameters.ParamByName('emp2').Value := vEmp2;
      QQuery1.Open;
      if not QQuery1.IsEmpty then begin
         Result := QQuery1.FieldByName('facturar').AsBoolean;
         IF QQuery1.FieldByName('DISPONIBLE').AsCurrency < 0 then
            vCantArt := 0
         else
            vCantArt := QQuery1.FieldByName('DISPONIBLE').AsCurrency;
      end else vCantArt := 0;
end;

function TDM.getFechaBDA: TDateTime;
begin
  QQuery1.Close;
  QQuery1.SQL.Clear;
  QQuery1.SQL.Add('select getdate()');
  QQuery1.open;
  Result := QQuery1.Fields[0].AsDateTime;
end;

function TDM.Centro40Columna(pStr: String): String;
var
  posStr,len : integer; 
begin
  len := 40;
  if Length(pStr) > Len then
    Result := Copy(pStr, 1, Len)
  else
  begin
    posStr := (len - Length(pStr)) div 2;
    Result := Format('%*s', [len, pStr + Format('%-*s', [posStr, ''])]);
  end;
end;

procedure TDM.Imp40Columnas(const vARCH: textfile);
var puertopeq,
    Prn       : textfile;
    puerto,
    text      : string;
    pr        : TPrinter;
begin
  if FileExists('puerto.txt') then
  begin
    assignfile(puertopeq, 'puerto.txt');
    reset(puertopeq);
    readln(puertopeq, puerto);
    closefile(puertopeq);
  end
  else
    puerto := 'PRN';
//----------------------------------
pr := TPrinter.Create;
//  ShowMessage(pr.Printers.Names[pr.Printers.IndexOf(puerto)]);
  printer.PrinterIndex := pr.Printers.IndexOf(puerto);
  Reset(vARCH);
  AssignPrn(Prn);
  try
    Rewrite(Prn);
    try
    while not Eof(vARCH) do
      begin
        ReadLn(vARCH, text);
        writeln(Prn, text);
      end;
    finally
      CloseFile(Prn);
    end;
    except on EInOutError do MessageDlg('Error al imprimir el Documento', mtError, [mbOk], 0);
  end;
  CloseFile(vARCH);
pr.Free;
end;

function TDM.FormActivo(Formulario: string): Boolean;
var
i:Integer;
begin
for i:=0 to Screen.FormCount -1  do
if Screen.Forms[i].Name = Formulario then
begin
  Result:=True;
  Exit;
  end;
  Result:=False;
end;

function TDM.FillSpaces(cVar: String; nLen: Integer): String;
begin
Result:=StringOfChar(' ',nLen - Length(cVar))+cVar;
end;

function TDM.FillSpacesLeft(cVar: String; nLen: Integer): String;
begin
Result:=cVar+StringOfChar(' ',nLen - Length(cVar));
end;

function TDM.ExistTable(Tabla: String): Boolean;
begin
with adoMultiUso do begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT * FROM sysobjects WHERE type = '+QuotedStr('U')+' AND name = '+QuotedStr(Tabla));
  Open;
  if IsEmpty then
  Result := False else
  Result := True;
end;
end;

procedure TDM.ADOSigmaRestAfterConnect(Sender: TObject);
begin
qFechas.ExecSQL;
end;

function TDM.GetFileTimes(FileName: string; var Created, Modified,
  Accessed: TDateTime): boolean;
var
   FileHandle : integer;
   Retvar : boolean;
   FTimeC,FTimeA,FTimeM : TFileTime;
   LTime : TFileTime;
   STime : TSystemTime;
begin
  // Abrir el fichero
  FileHandle := FileOpen(FileName,fmShareDenyNone);
  // inicializar
  Created := 0.0;
  Modified := 0.0;
  Accessed := 0.0;
  // Ha tenido acceso al fichero?
  if FileHandle < 0 then
    RetVar := false
  else begin

    // Obtener las fechas
    RetVar := true;
    GetFileTime(FileHandle,@FTimeC,@FTimeA,@FTimeM);
    // Cerrar
    FileClose(FileHandle);
    // Creado
    FileTimeToLocalFileTime(FTimeC,LTime);

    if FileTimeToSystemTime(LTime,STime) then begin
      Created := EncodeDate(STime.wYear,STime.wMonth,STime.wDay);
      Created := Created + EncodeTime(STime.wHour,STime.wMinute,
              STime.wSecond, STime.wMilliSeconds);
    end;

    // Accedido
    FileTimeToLocalFileTime(FTimeA,LTime);

    if FileTimeToSystemTime(LTime,STime) then begin
      Accessed := EncodeDate(STime.wYear,STime.wMonth,STime.wDay);
      Accessed := Accessed + EncodeTime(STime.wHour,STime.wMinute,
              STime.wSecond, STime.wMilliSeconds);
    end;

    // Modificado
    FileTimeToLocalFileTime(FTimeM,LTime);

    if FileTimeToSystemTime(LTime,STime) then begin
      Modified := EncodeDate(STime.wYear,STime.wMonth,STime.wDay);
      Modified := Modified + EncodeTime(STime.wHour,STime.wMinute,
                     STime.wSecond, STime.wMilliSeconds);
    end;
  end;
  Result := RetVar;
end;

procedure TDM.GenerarArchivoBalanza;
var
vCodigo,vNombre,vPrecio, vMarca: String;
BanderitaACT, TipoLEcto : Integer;
F:TextFile;
begin
dm.Query1.Close;
dm.Query1.SQL.Clear;
DM.Query1.SQL.Add('SELECT isnull(par_digitos_banderita,0)banderita, ISNULL(PAR_TLECTOR_BALANZA,0)TipoLector from parametros where emp_codigo ='+IntToStr(dm.vp_cia));
DM.Query1.Open;
BanderitaACT := dm.Query1.fieldbyname('banderita').Value;
TipoLEcto := dm.Query1.fieldbyname('TipoLector').Value;


if TipoLEcto = 1 then
DM.ADOSigma.Execute('UPDATE PARAMETROS SET par_digitos_banderita = 1 WHERE EMP_CODIGO = '+IntToStr(dm.vp_cia));


dm.Query1.Close;
dm.Query1.SQL.Clear;
DM.Query1.SQL.Add('select isnull(mar_codigo,0) marca, substring(pro_roriginal,p2.par_digitos_banderita+1,p2.par_digitos_precio_pesar-p2.par_digitos_banderita)  Codigo, RTRIM(pro_nombre) Nombre,');
DM.Query1.SQL.Add('case when par_treporte_peso = 0 then cast(p.pro_precio1 as int)*100 else p.pro_precio1 end Precio');
DM.Query1.SQL.Add('from productos p');
DM.Query1.SQL.Add('inner join Parametros p2 on p.emp_codigo = p2.emp_codigo');
DM.Query1.SQL.Add('where dep_codigo = p2.depa_codigo_peso');
dm.Query1.SQL.Add('and pro_codigo in');
dm.Query1.SQL.Add('(select pro_codigo from productos where ISNUMERIC(pro_roriginal) > 0)');
dm.Query1.SQL.Add('and dep_codigo = (select depa_codigo_peso from parametros where emp_codigo = p2.emp_codigo)');
DM.Query1.SQL.Add('ORDER BY p.pro_roriginal');
DM.Query1.Open;
if not dm.Query1.IsEmpty then begin
dm.Query1.First;
vCodigo:= '';
vNombre:= '';
vPrecio:= '';
if not DirectoryExists('C:\Balanza') then
CreateDir('C:\Balanza');
AssignFile(F,'C:\Balanza\Productos.txt');
Rewrite(F);
Writeln(F,'C?digo,Nombre del producto,precio');
while not dm.Query1.Eof do begin
vCodigo := DM.Query1.FieldByName('Codigo').Text;
vNombre := DM.Query1.FieldByName('Nombre').Text;
vMarca  := dm.Query1.fieldbyname('Marca').Text;
if QParametrospar_treporte_peso.Value = 0 then
vPrecio :=  DM.Query1.FieldByName('Precio').AsString else
vPrecio :=  FormatCurr('#,0.00',DM.Query1.FieldByName('Precio').Value);
Writeln(F,vCodigo+','+vNombre+','+vPrecio+','+vMarca);
dm.Query1.next;
end;
CloseFile(F);
end;

if TipoLEcto = 1 then
DM.ADOSigma.Execute('UPDATE PARAMETROS SET par_digitos_banderita = '+IntToStr(BanderitaACT)+' WHERE EMP_CODIGO = '+IntToStr(dm.vp_cia));

//ShowMessage('Archivo creado correctamente');
end;

function TDM.getParametrosPrinterFiscal: String;
begin
  ///if not Assigned(Impresora) then
    Impresora:=TImpresora.create(nil);

  With dm.adoMultiUso do begin
    Close;
    Sql.clear();
    sql.add('Select pc.nombre_pc,isnull(pc.idPrinter,0)idPrinter,pc.Puerto,pc.Velocidad,');
    sql.Add('       pc.cntCopia,pr.Nombre,pr.Tipo,pr.Precioconitbis,pc.sustiruir_copia ');
    sql.Add('From Printer_en_PC pc , Printers pr ');
    sql.Add('Where pc.idPrinter = pr.IDPrinter');
    sql.add('And ((pc.nombre_pc = :nombrepc) or (pc.nombre_pc = :ip)) ');
    Parameters.ParamByName('nombrepc').value := GetPcName;
    Parameters.ParamByName('ip').value := IP ;
    open;
    if not IsEmpty then
      begin //1
        With Impresora do begin
          NombrePC  := dm.adoMultiUso['nombre_pc'];
          IDPrinter := dm.adoMultiUso['idPrinter'];
          Nombre    := dm.adoMultiUso['Nombre'];              
          Puerto    := StrToInt(copy(dm.adoMultiUso['Puerto'],4,length(dm.adoMultiUso['Puerto']) ));
          Velocidad := dm.adoMultiUso['Velocidad'];
          Tipo      := dm.adoMultiUso['Tipo'];
          Precioconitbis := dm.adoMultiUso['Precioconitbis'];
          Copia     := dm.adoMultiUso['cntCopia'];
          esFiscal  := true;
          SustituirCopia := dm.adoMultiUso['sustiruir_copia'] = 'True';
        end;
      end // 1
    else
      begin
        Impresora.IDPrinter := 0;
        //2
 {       if not  dm.QParametrospar_Marca_Printer.IsNull then
          begin //--[2.1]--
            Close;
            Sql.clear();
            sql.add('Select IDPrinter,Nombre,Tipo,Precioconitbis From Printers');
				    sql.add('Where IDPrinter = :ID ');
            Parameters.ParamByName('ID').value := dm.QParametrospar_Marca_Printer.value;
            open;
            if not IsEmpty then begin  //--[2.1.1]--
              With Impresora do begin
                IDPrinter := dm.adoMultiUso['idPrinter'];
                Nombre := dm.adoMultiUso['Nombre'];
                Tipo      := dm.adoMultiUso['Tipo'];
                Precioconitbis := dm.adoMultiUso['Precioconitbis'];
                Copia     := 0; //dm.adoMultiUso['cntCopia'];
                esFiscal  := true;

                if not dm.QParametrospar_puerto_Printer.IsNull then
                  Puerto := StrToInt(Copy(dm.QParametrospar_puerto_Printer.value,4,1));
                if not dm.QParametrospar_velocidad_Printer.IsNull then
                  Velocidad := dm.QParametrospar_velocidad_Printer.value ;
              end;
            end; //--[2.1.1]--
          end;  //--[2.1]--

        end; //2
        }
      end;
      end;

end;

function TDM.vMaxProcesoMultiUso(accion: Byte;
  sPrinter: TImpresora): String;
var
  vmaxPrinter : TvmaxFiscal;
  PortOpened :integer;
begin

  vmaxPrinter := TvmaxFiscal.Create();
  try
    With vmaxPrinter do begin //--[0]--
      PortOpened := OpenPort(sPrinter.Puerto,sPrinter.Velocidad );
      if PortOpened = SUCCESS then begin //--[1]--
        result := '0';
        case accion of
          1: ReporteX(); //Cierre de turno
          2: ReporteZ();  //Cierra Jornada Fiscal
          3: CancelarCF(); //Cancela comprobante en proceso
          4: AbrirCajonDinero();   //AbrecAja
          5: AvanzarPapel(1);     //AvansaPapel
          6: CortaPapel();         //CortaPapel
          7: result := ObtenerEstado();  //Estado
          8: Resert();                   //reset
          //9: ShowMessage(ObtenerEstado());
        end;
        ClosePort();
      end //--[1]--
      else
        begin
          case PortOpened of
            PORT_ALREADY_OPEN   : result := 'El puerto ya esta abierto'; //= 1;  //Puerto serial abierto.
            PORT_IN_USE         : result := 'Puerto Serial en uso por otra aplicaci?n. o no existe'; //= 2; //Puerto Serial en uso por otra aplicaci?n. o no existe
            PORT_NOT_OPEN       : result := 'El puerto no pudo ser abierto'; //=3;
            INVALID_COM         : result := 'Pueto inv?lido o no Existe'; //  = 4; //(0x0004) Puerto Serial utilizado en la apertura inv?lido o inexistente.
            INVALID_BAUD_RATE   : result := 'Velocidad del Puerto Serial inv?lido'; //5; // (0x0005) Velocidad del Puerto Serial inv?lido o no soportada.
            PRINTER_OFF_OR_DISCONNECTED : result := 'Impresora fuera de l?nea'; // = 8;  ///Impresora desconectada o fuera de l?nea.
          end;
        end;
    end; //--[0]--
  finally
    vmaxPrinter.Free();
  end

end;

function TDM.PAD(Mchar, Alineacion: char; tamano: Integer;
  Numero: String): string;
{**-[Esta funci?n es para rellenar una cadena con un valor recibido a un
     tama?o dado recibe como par?metro lo sigte :
     Mchar:Es un carater cualquiera.
     Tama?o :Es el tama?o al cual sera combertida la cadena
     N?mero :Es la cadena enviada
     Tiene como resultado una cadena con el tama?o dado < S >  ]-**}

var S:String;
begin
  ///Numero :=Copy(aCero,1,(Tamano - Length(Trim(Numero))))+Numero;

  Alineacion :=UpCase(Alineacion);
  S:=Numero;
  while Length(S) < Tamano do begin
    if Alineacion = 'L' then
      S:=Mchar+S
    else if Alineacion = 'R' then
      S:=S+Mchar
    else if Alineacion = 'C' then
      S:=S;
  end;

  Result:=S;

end;

function TDM.GetPcName: string;
var
  Buffer: array[0..MAX_COMPUTERNAME_LENGTH] of Char;
  Size: Cardinal;
begin
  FillChar(Buffer,Sizeof(Buffer),0);
  Size:= Sizeof(Buffer);
  if GetComputerName(Buffer,Size) then
    Result:= String(PChar(@Buffer))
  else
    Result:= '';

end;

function TDM.IntToBinRec(valor, digitos: integer): string;
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


function TDM.Redondear(const Numero: Double;
  const Digitos: Integer): Double;
var
  Factor: Double;
begin
  Factor:= Abs(Exp(Ln(10)*(-Digitos)));
  Result:= Trunc((Numero/Factor)) * Factor;
  //Result := Result - Factor;

end;

function TDM.GetIPAddress: String;
type
  pu_long = ^u_long;
var
  varTWSAData : TWSAData;
  varPHostEnt : PHostEnt;
  varTInAddr : TInAddr;
  namebuf : Array[0..255] of char;
begin
  If WSAStartup($101,varTWSAData) <> 0 Then
  Result := 'No. IP Address'
  Else Begin
    gethostname(namebuf,sizeof(namebuf));
    varPHostEnt := gethostbyname(namebuf);
    varTInAddr.S_addr := u_long(pu_long(varPHostEnt^.h_addr_list^)^);
    Result := inet_ntoa(varTInAddr);
    //Result := 'IP Address: '+inet_ntoa(varTInAddr);
  End;
  WSACleanup;

end;

function TDM.GetProductoAjustado(emp, alm, prod: Integer; fecha:TDateTime): Boolean;
begin
with adoMultiUso do begin
  Close;
  SQL.Clear;
  SQL.Add('select min(fecha_ajuste) fecha');
  SQL.Add('from ajuste_inventario');
  SQL.Add('where emp_codigo = :emp and alm_codigo = :alm and pro_codigo = :prod');
  SQL.Add('AND FECHA_AJUSTE BETWEEN :fec AND GETDATE()');
  Parameters.ParamByName('emp').DataType   := ftInteger;
  Parameters.ParamByName('alm').DataType   := ftInteger;
  Parameters.ParamByName('prod').DataType  := ftInteger;
  Parameters.ParamByName('fec').DataType := ftDate;
  Parameters.ParamByName('emp').Value      := emp;
  Parameters.ParamByName('alm').Value      := alm;
  Parameters.ParamByName('prod').Value     := prod;
  Parameters.ParamByName('fec').Value    := fecha;
  Open;
  if adoMultiUso.RecordCount = 0 then
  Result := False else
  Result := True;
  end;
end;

function TDM.SoloDigitosRnc(const ATexto: string): string;
var
  i: Integer;
begin
  Result := '';
  for i := 1 to Length(ATexto) do
    if ATexto[i] in ['0'..'9'] then
      Result := Result + ATexto[i];
end;

function JsonExtraerCadena(const AJson, AClave: string): string;
var
  p, q, r: Integer;
  sKey: string;
begin
  Result := '';
  sKey := '"' + AClave + '"';
  p := Pos(LowerCase(sKey), LowerCase(AJson));
  if p = 0 then Exit;
  q := p + Length(sKey);
  while (q <= Length(AJson)) and (AJson[q] in [' ', ':', #9]) do
    Inc(q);
  if q > Length(AJson) then Exit;
  if AJson[q] = '"' then
  begin
    Inc(q);
    r := q;
    while (r <= Length(AJson)) and (AJson[r] <> '"') do
      Inc(r);
    Result := Copy(AJson, q, r - q);
  end
  else if SameText(Copy(AJson, q, 4), 'true') then
    Result := 'true'
  else if SameText(Copy(AJson, q, 5), 'false') then
    Result := 'false';
end;

function JsonExtraerBoolean(const AJson, AClave: string): Boolean;
begin
  Result := SameText(JsonExtraerCadena(AJson, AClave), 'true');
end;

procedure LimpiarDatoRnc(var ADatos: TDatoRncConsulta);
begin
  ADatos.Encontrado := False;
  ADatos.RncCedula := '';
  ADatos.RazonSocial := '';
  ADatos.NombreComercial := '';
  ADatos.ActividadEconomica := '';
  ADatos.Direccion := '';
  ADatos.Numero := '';
  ADatos.Urbanizacion := '';
  ADatos.Telefono := '';
  ADatos.Estatus := '';
  ADatos.CliCodigo := 0;
  ADatos.Mensaje := '';
end;

procedure CargarRncLocal(const ARnc: string; var ADatos: TDatoRncConsulta);
begin
  LimpiarDatoRnc(ADatos);

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select rnc_cedula, razon_social, nombre_comercial,');
  dm.Query1.SQL.Add('actividad_economica, direccion, numero, urbanizacion,');
  dm.Query1.SQL.Add('telefono, estatus from rnc');
  dm.Query1.SQL.Add('where rnc_cedula = :rnc');
  dm.Query1.Parameters.ParamByName('rnc').Value := ARnc;
  dm.Query1.Open;

  if dm.Query1.RecordCount = 0 then
    Exit;

  ADatos.Encontrado := True;
  ADatos.RncCedula := dm.Query1.FieldByName('rnc_cedula').AsString;
  ADatos.RazonSocial := dm.Query1.FieldByName('razon_social').AsString;
  ADatos.NombreComercial := dm.Query1.FieldByName('nombre_comercial').AsString;
  ADatos.ActividadEconomica := dm.Query1.FieldByName('actividad_economica').AsString;
  ADatos.Direccion := dm.Query1.FieldByName('direccion').AsString;
  ADatos.Numero := dm.Query1.FieldByName('numero').AsString;
  ADatos.Urbanizacion := dm.Query1.FieldByName('urbanizacion').AsString;
  ADatos.Telefono := dm.Query1.FieldByName('telefono').AsString;
  ADatos.Estatus := dm.Query1.FieldByName('estatus').AsString;
end;

procedure InsertarRncDesdeDirectorio(const ADatos: TDatoRncConsulta);
begin
  if Trim(ADatos.RncCedula) = '' then
    Exit;

  with dm.adoMultiUso do
  begin
    Close;
    SQL.Clear;
    SQL.Add('insert into rnc (rnc_cedula, razon_social, nombre_comercial,');
    SQL.Add('actividad_economica, direccion, numero, urbanizacion, telefono, estatus)');
    SQL.Add('values (:rnc, :razon, :nomcom, :actividad, :dir, :num, :urb, :tel, :estatus)');
    Parameters.ParamByName('rnc').Value := Trim(ADatos.RncCedula);
    Parameters.ParamByName('razon').Value := ADatos.RazonSocial;
    Parameters.ParamByName('nomcom').Value := ADatos.NombreComercial;
    Parameters.ParamByName('actividad').Value := ADatos.ActividadEconomica;
    Parameters.ParamByName('dir').Value := ADatos.Direccion;
    Parameters.ParamByName('num').Value := ADatos.Numero;
    Parameters.ParamByName('urb').Value := ADatos.Urbanizacion;
    Parameters.ParamByName('tel').Value := ADatos.Telefono;
    Parameters.ParamByName('estatus').Value := ADatos.Estatus;
    ExecSQL;
    Close;
  end;
end;

function ConsultarRncDirectorioDGII(const ARnc: string; var ADatos: TDatoRncConsulta): Boolean;
var
  Servicio: OleVariant;
  ResJSON, ResConfig, RncEmpresa: string;
  Ok, Encontrado: Boolean;
  Nombre, RncResp, Mensaje: string;
begin
  Result := False;
  Ok := False;
  Encontrado := False;

  try
    Servicio := CreateOleObject('FacturacionElectronicaDGII.FacturaElectronicaService');
  except
    ADatos.Mensaje := 'No se pudo conectar con FacturacionElectronicaDGII.dll';
    Exit;
  end;

  try
    try
      RncEmpresa := Trim(dm.QEmpresasEMP_RNC.AsString);
      if RncEmpresa <> '' then
      begin
        ResConfig := Servicio.ConfigurarPorRnc(RncEmpresa);
        if (ResConfig <> '') and (Pos('OK', UpperCase(ResConfig)) <> 1) then
        begin
          ADatos.Mensaje := ResConfig;
          Exit;
        end;
      end;

      ResJSON := Servicio.ConsultarDirectorioPorRnc(
        ARnc,
        '',
        RncEmpresa,
        '', '', '',
        IntToStr(dm.vp_cia)
      );

      Ok := JsonExtraerBoolean(ResJSON, 'ok');
      Encontrado := JsonExtraerBoolean(ResJSON, 'encontrado');
      Nombre := JsonExtraerCadena(ResJSON, 'nombre');
      RncResp := JsonExtraerCadena(ResJSON, 'rnc');
      Mensaje := JsonExtraerCadena(ResJSON, 'message');
      if Trim(Mensaje) = '' then
        Mensaje := JsonExtraerCadena(ResJSON, 'mensaje');
      if Trim(Nombre) = '' then
        Nombre := Mensaje;

      if Encontrado or (Ok and (Trim(Nombre) <> '')) then
      begin
        RncResp := ARnc;
        ADatos.Encontrado := True;
        ADatos.RncCedula := RncResp;
        ADatos.RazonSocial := Nombre;
        ADatos.NombreComercial := Nombre;
        ADatos.ActividadEconomica := '';
        ADatos.Direccion := '';
        ADatos.Numero := '';
        ADatos.Urbanizacion := '';
        ADatos.Telefono := '';
        ADatos.Estatus := 'DGII';
        ADatos.CliCodigo := 0;
        ADatos.Mensaje := Mensaje;
        InsertarRncDesdeDirectorio(ADatos);
        Result := True;
      end
      else
        ADatos.Mensaje := Mensaje;
    except
      on E: Exception do
      begin
        ADatos.Encontrado := False;
        ADatos.Mensaje := 'No se pudo consultar el RNC en DGII: ' + E.Message;
      end;
    end;
  finally
    Servicio := Unassigned;
  end;
end;

function TDM.ConsultarRncCompleto(const ARnc: string): TDatoRncConsulta;
var
  RncNorm: string;
begin
  LimpiarDatoRnc(Result);

  RncNorm := SoloDigitosRnc(ARnc);
  if Length(RncNorm) < 9 then
  begin
    Result.Mensaje := 'RNC vac?o o inv?lido';
    Exit;
  end;

  CargarRncLocal(RncNorm, Result);
  if Result.Encontrado then
    Exit;

  ConsultarRncDirectorioDGII(RncNorm, Result);
  if Result.Encontrado then
  begin
    if Trim(Result.RncCedula) <> '' then
      CargarRncLocal(Result.RncCedula, Result)
    else
      CargarRncLocal(RncNorm, Result);
  end;
end;

end.
