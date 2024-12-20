unit PVENTA80;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, CheckLst,
  Grids, DBGrids, DB, IBCustomDataSet, IBUpdateSQL,
  IBQuery, DateUtils, Printers, ADODB, QuerySearchDlgADO, cxCurrencyEdit,
  cxDBEdit, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxSpinEdit, cxCheckBox, DIMime, ToolWin, cxGraphics, cxDropDownEdit;

type
  TfrmParametros = class(TForm)
    tvOpciones: TTreeView;
    pnGenerales: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    tTipoMov: TEdit;
    DBEdit2: TDBEdit;
    pnInvent: TPanel;
    pnPrecios: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Search: TQrySearchDlgADO;
    pnPedidoCli: TPanel;
    DBCheckBox14: TDBCheckBox;
    DBRadioGroup5: TDBRadioGroup;
    pnPedidoProv: TPanel;
    DBRadioGroup6: TDBRadioGroup;
    DBCheckBox18: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    pnCotizacion: TPanel;
    DBCheckBox20: TDBCheckBox;
    DBRadioGroup7: TDBRadioGroup;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    pnDevol: TPanel;
    DBCheckBox21: TDBCheckBox;
    Label16: TLabel;
    DBEdit12: TDBEdit;
    pnFormatosImpOrig: TPanel;
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
    dsParametros: TDataSource;
    btPost: TBitBtn;
    btClose: TBitBtn;
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
    QTipo: TADOQuery;
    dsTipo: TDataSource;
    QAntigCli: TADOQuery;
    QAntigCliEMP_CODIGO: TIntegerField;
    QAntigCliPAR_DIA1DESDE: TIntegerField;
    QAntigCliPAR_DIA1HASTA: TIntegerField;
    QAntigCliPAR_DIA1LABEL: TIBStringField;
    QAntigCliPAR_DIA2DESDE: TIntegerField;
    QAntigCliPAR_DIA2HASTA: TIntegerField;
    QAntigCliPAR_DIA2LABEL: TIBStringField;
    QAntigCliPAR_DIA3DESDE: TIntegerField;
    QAntigCliPAR_DIA3HASTA: TIntegerField;
    QAntigCliPAR_DIA3LABEL: TIBStringField;
    QAntigCliPAR_DIA4DESDE: TIntegerField;
    QAntigCliPAR_DIA4HASTA: TIntegerField;
    QAntigCliPAR_DIA4LABEL: TIBStringField;
    QAntigProv: TADOQuery;
    QAntigProvEMP_CODIGO: TIntegerField;
    QAntigProvPAR_DIA1DESDE: TIntegerField;
    QAntigProvPAR_DIA1HASTA: TIntegerField;
    QAntigProvPAR_DIA1LABEL: TIBStringField;
    QAntigProvPAR_DIA2DESDE: TIntegerField;
    QAntigProvPAR_DIA2HASTA: TIntegerField;
    QAntigProvPAR_DIA2LABEL: TIBStringField;
    QAntigProvPAR_DIA3DESDE: TIntegerField;
    QAntigProvPAR_DIA3HASTA: TIntegerField;
    QAntigProvPAR_DIA3LABEL: TIBStringField;
    QAntigProvPAR_DIA4DESDE: TIntegerField;
    QAntigProvPAR_DIA4HASTA: TIntegerField;
    QAntigProvPAR_DIA4LABEL: TIBStringField;
    QParametrosPAR_DEVDIAS: TIntegerField;
    QParametrosPAR_DEVEFECTIVO: TIBStringField;
    QParametrosPAR_FORMATOCUADRE: TIntegerField;
    QParametrosPAR_AHORA1: TDateTimeField;
    QParametrosPAR_AHORA2: TDateTimeField;
    QParametrosPAR_BHORA1: TDateTimeField;
    QParametrosPAR_BHORA2: TDateTimeField;
    QParametrosPAR_FACMODPRECIO: TIBStringField;
    QParametrosPAR_FORMATOCON: TIntegerField;
    QConfigImp: TADOQuery;
    QConfigImpCAJ: TIBStringField;
    QConfigImpCLI: TIBStringField;
    QConfigImpDIR: TIBStringField;
    QConfigImpEMP_CODIGO: TIntegerField;
    QConfigImpFIR: TIBStringField;
    QConfigImpTEL: TIBStringField;
    QConfigImpTFA_CODIGO: TIntegerField;
    QConfigImpVEN: TIBStringField;
    QParametrosPAR_CAJA: TIBStringField;
    QConfigImpInv: TADOQuery;
    QConfigImpInvEMP_CODIGO: TIntegerField;
    QConfigImpInvREP1: TIBStringField;
    QConfigImpInvREP2: TIBStringField;
    QConfigImpInvREP3: TIBStringField;
    QConfigImpInvREP4: TIBStringField;
    QConfigImpInvREP5: TIBStringField;
    QConfigImpInvREP6: TIBStringField;
    QConfigImpInvREP7: TIBStringField;
    QConfigImpInvREP8: TIBStringField;
    QParametrosPAR_IMPCODIGOBARRA: TIBStringField;
    QParametrosCPA_CODIGOCLIENTE: TIntegerField;
    QParametrosPAR_LIMITEINICIAL: TFloatField;
    Label20: TLabel;
    SpeedButton2: TSpeedButton;
    tTipoMovCK: TEdit;
    DBEdit16: TDBEdit;
    QParametrosPAR_MOVCK: TIntegerField;
    QParametrosPAR_MOVCARGO: TIntegerField;
    Label21: TLabel;
    SpeedButton3: TSpeedButton;
    tTipoMovCargo: TEdit;
    DBEdit17: TDBEdit;
    pnContab: TPanel;
    QContab: TADOQuery;
    QContabEMP_CODIGO: TIntegerField;
    QContabPAR_CTARESULTADO: TIBStringField;
    QContabPAR_DOCCARGOS: TIBStringField;
    QContabPAR_DOCCHEQUE: TIBStringField;
    QContabPAR_DOCDEPOSITO: TIBStringField;
    dsContab: TDataSource;
    QContabPAR_DOCCOMPRAS: TIBStringField;
    QContabPAR_DOCDESEM: TIBStringField;
    QContabPAR_DOCNCCLI: TIBStringField;
    QContabPAR_DOCNDCLI: TIBStringField;
    QContabPAR_DOCRC: TIBStringField;
    QContabPAR_DOCDEV: TIBStringField;
    QParametrosPAR_PRECIOLETRA_0: TIBStringField;
    QParametrosPAR_PRECIOLETRA_1: TIBStringField;
    QParametrosPAR_PRECIOLETRA_2: TIBStringField;
    QParametrosPAR_PRECIOLETRA_3: TIBStringField;
    QParametrosPAR_PRECIOLETRA_4: TIBStringField;
    QParametrosPAR_PRECIOLETRA_5: TIBStringField;
    QParametrosPAR_PRECIOLETRA_6: TIBStringField;
    QParametrosPAR_PRECIOLETRA_8: TIBStringField;
    QParametrosPAR_PRECIOLETRA_9: TIBStringField;
    GroupBox4: TGroupBox;
    Label36: TLabel;
    DBEdit29: TDBEdit;
    Label37: TLabel;
    DBEdit30: TDBEdit;
    Label38: TLabel;
    DBEdit31: TDBEdit;
    Label39: TLabel;
    DBEdit32: TDBEdit;
    Label40: TLabel;
    DBEdit33: TDBEdit;
    Label41: TLabel;
    DBEdit34: TDBEdit;
    Label42: TLabel;
    DBEdit35: TDBEdit;
    Label43: TLabel;
    DBEdit36: TDBEdit;
    Label44: TLabel;
    DBEdit37: TDBEdit;
    Label45: TLabel;
    DBEdit38: TDBEdit;
    QParametrosPAR_PRECIOLETRA_7: TIBStringField;
    QParametrosPAR_NUEVOUSADO: TIBStringField;
    QContabPAR_CTAINVENT: TIBStringField;
    QContabPAR_CTACOSTO: TIBStringField;
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
    QContabPAR_CTADESC: TIBStringField;
    QContabPAR_CTAITBIS: TIBStringField;
    QContabPAR_CTADESCCOMP: TIBStringField;
    QParametrosPAR_FPADESEM: TIntegerField;
    Label57: TLabel;
    btFpaDsesem: TSpeedButton;
    tFpaDesem: TEdit;
    DBEdit50: TDBEdit;
    QContabPAR_CTACOSTOSINDIRECTOS: TIBStringField;
    QContabPAR_CTALABORDIRECTA: TIBStringField;
    QContabPAR_CTAMATERIAPRIMA: TIBStringField;
    QContabPAR_CTAPRODPROCESO: TIBStringField;
    QContabPAR_CTAPRODTERMINADOS: TIBStringField;
    QParametrosPAR_FACBAJARLINEA: TIBStringField;
    DBRadioGroup18: TDBRadioGroup;
    QContabPAR_REPANEXOS: TIBStringField;
    QContabPAR_REPRESULTCOL1: TIBStringField;
    QContabPAR_REPRESULTCOL2: TIBStringField;
    QContabPAR_REPRESULTCOL3: TIBStringField;
    GroupBox7: TGroupBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox22: TDBCheckBox;
    QContabPAR_REPANEXOSCTA: TIBStringField;
    QParametrosPAR_FACTOTALIZAPIE: TIBStringField;
    QParametrosPAR_FACREPITEPROD: TIBStringField;
    QParametrosPAR_DEBAJOPRECIO: TIBStringField;
    pnBusquedaProd: TPanel;
    lCampos: TListBox;
    Label58: TLabel;
    gCampos: TDBGrid;
    Label63: TLabel;
    SpeedButton5: TSpeedButton;
    SpeedButton10: TSpeedButton;
    QBusquedaProd: TADOQuery;
    QBusquedaProdBUS_CAMPO: TIBStringField;
    QBusquedaProdBUS_POSICION: TIntegerField;
    QBusquedaProdBUS_SECUENCIA: TIntegerField;
    QBusquedaProdEMP_CODIGO: TIntegerField;
    dsBusqueda: TDataSource;
    QParametrosPAR_FACCONITBIS: TIBStringField;
    QParametrosPAR_FACESCALA: TIBStringField;
    QParametrosPAR_FACMEDIDA: TIBStringField;
    QParametrosPAR_PRECIOEMP: TIBStringField;
    QParametrosPAR_PRECIOUND: TIBStringField;
    Label64: TLabel;
    Label65: TLabel;
    DBComboBox3: TDBComboBox;
    DBComboBox4: TDBComboBox;
    QParametrosPAR_FISICOSOLOLLENO: TIBStringField;
    QParametrosPAR_DEVFORMA: TIBStringField;
    DBRadioGroup20: TDBRadioGroup;
    QParametrosPAR_FORMATOCOT: TIntegerField;
    QParametrosPAR_INVMOSTRARVENCE: TIBStringField;
    QParametrosPAR_VERIMAGEN: TIBStringField;
    pntickets: TPanel;
    QParametrosPAR_TKMENSAJE1: TIBStringField;
    QParametrosPAR_TKMENSAJE2: TIBStringField;
    QParametrosPAR_TKMENSAJE3: TIBStringField;
    QParametrosPAR_TKMENSAJE4: TIBStringField;
    QParametrosPAR_TKCLAVEDELETE: TIBStringField;
    QParametrosPAR_TKCLAVEMODIFICA: TIBStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    ScrollBox2: TScrollBox;
    Label17: TLabel;
    Label53: TLabel;
    DBCheckBox27: TDBCheckBox;
    DBCheckBox28: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox29: TDBCheckBox;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit4: TDBEdit;
    DBRadioGroup16: TDBRadioGroup;
    DBRadioGroup17: TDBRadioGroup;
    DBEdit46: TDBEdit;
    pnsgInvent: TPanel;
    cbsgInvent: TComboBox;
    sgInventario: TStringGrid;
    Label69: TLabel;
    DBComboBox5: TDBComboBox;
    DBComboBox6: TDBComboBox;
    QParametrosPAR_COMBINAORIGINAL: TIBStringField;
    QParametrosPAR_COMBINAFABRIC: TIBStringField;
    QParametrosPAR_TKCLAVECREDITO: TIBStringField;
    QParametrosPAR_TKCLAVECANCELA: TIBStringField;
    QParametrosPAR_INVEMPRESA: TIntegerField;
    QParametrosPAR_INVALMACEN: TIntegerField;
    Label72: TLabel;
    Label73: TLabel;
    DBEdit63: TDBEdit;
    SpeedButton11: TSpeedButton;
    tempresa: TEdit;
    DBEdit64: TDBEdit;
    SpeedButton12: TSpeedButton;
    talmacenemp: TEdit;
    Label1: TLabel;
    btTipo: TSpeedButton;
    tAlmacen: TEdit;
    DBEdit1: TDBEdit;
    QParametrosMON_CODIGO: TIntegerField;
    Label74: TLabel;
    btmoneda: TSpeedButton;
    tmoneda: TEdit;
    DBEdit65: TDBEdit;
    QParametrosPAR_SOLGENERACHEQUE: TIBStringField;
    ckgeneracks: TDBCheckBox;
    QTipoEMP_CODIGO: TIntegerField;
    QTipoTFA_ACTBALANCE: TStringField;
    QTipoTFA_CLIENTE: TStringField;
    QTipoTFA_CODIGO: TIntegerField;
    QTipoTFA_ESPCLIENTE: TStringField;
    QTipoTFA_FORMATOIMP: TIntegerField;
    QTipoTFA_MENSAJE1: TStringField;
    QTipoTFA_MENSAJE2: TStringField;
    QTipoTFA_MENSAJE3: TStringField;
    QTipoTFA_NOMBRE: TStringField;
    QTipoTFA_PRECIO: TStringField;
    QTipoTFA_PUERTOIMP: TStringField;
    QTipoTFA_SELCONDI: TStringField;
    QTipoTMO_CODIGO: TIntegerField;
    QTipoVEN_CODIGO: TIntegerField;
    Label4: TLabel;
    QParametrospar_invprecioconduce: TStringField;
    DBCheckBox30: TDBCheckBox;
    QParametrospar_mailservidor: TStringField;
    QParametrospar_mailcorreo: TStringField;
    QParametrospar_mailusuario: TStringField;
    QParametrospar_mailclave: TStringField;
    pnmail: TPanel;
    Label75: TLabel;
    DBEdit66: TDBEdit;
    Label76: TLabel;
    DBEdit67: TDBEdit;
    Label77: TLabel;
    DBEdit68: TDBEdit;
    Label78: TLabel;
    QParametrospar_mailpuerto: TStringField;
    Label79: TLabel;
    DBEdit70: TDBEdit;
    QParametrospar_itbisincluido: TStringField;
    DBCheckBox31: TDBCheckBox;
    QParametroscaj_codigo: TIntegerField;
    Label80: TLabel;
    btcaja: TSpeedButton;
    tcaja: TEdit;
    DBEdit71: TDBEdit;
    QParametrospar_domicilio: TStringField;
    QParametrospar_monto_domicilio: TBCDField;
    QParametrospar_copias_domicilio: TIntegerField;
    QTipotfa_copias: TIntegerField;
    DBEdit74: TDBEdit;
    QParametrospar_beneficio: TBCDField;
    Label84: TLabel;
    DBEdit75: TDBEdit;
    QParametrospar_tkclavereimprime: TStringField;
    QParametrospar_igualartelefonocliente: TStringField;
    QParametrospar_valor_punto: TBCDField;
    QParametrospar_punto_principal: TBCDField;
    QParametrospar_punto_depen: TBCDField;
    sgRedondeo: TStringGrid;
    QParametrospar_redondeo: TStringField;
    ckRedondeo: TDBCheckBox;
    QRedondeo: TADOQuery;
    QRedondeoemp_codigo: TIntegerField;
    QRedondeopar_secuencia: TIntegerField;
    QRedondeopar_desde: TBCDField;
    QRedondeopar_hasta: TBCDField;
    QRedondeopar_valor: TBCDField;
    QParametrospar_barra_header: TMemoField;
    QParametrospar_fac_preimpresa: TStringField;
    QParametrospar_preciound_m: TStringField;
    QParametrospar_precioemp_m: TStringField;
    Label90: TLabel;
    Label91: TLabel;
    DBComboBox7: TDBComboBox;
    DBComboBox8: TDBComboBox;
    QParametrospar_fac_oferta: TStringField;
    TabSheet3: TTabSheet;
    QParametrospar_nombre_familia: TStringField;
    QParametrospar_nombre_depto: TStringField;
    QParametrospar_nombre_color: TStringField;
    QParametrospar_nombre_marca: TStringField;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    DBEdit80: TDBEdit;
    DBEdit81: TDBEdit;
    DBEdit82: TDBEdit;
    DBEdit83: TDBEdit;
    QRedondeopar_sumar: TStringField;
    QConfigImpOTROS: TStringField;
    DBCheckBox36: TDBCheckBox;
    QParametrospar_inv_compra_centro_costo: TStringField;
    QParametrospar_imprime_logo: TStringField;
    DBCheckBox37: TDBCheckBox;
    TabSheet4: TTabSheet;
    GroupBox11: TGroupBox;
    Label96: TLabel;
    DBEdit84: TDBEdit;
    Label97: TLabel;
    DBEdit85: TDBEdit;
    Label98: TLabel;
    ListaEnvia: TCheckListBox;
    GroupBox12: TGroupBox;
    Label99: TLabel;
    DBEdit86: TDBEdit;
    Label100: TLabel;
    DBEdit87: TDBEdit;
    Label101: TLabel;
    ListaRecibe: TCheckListBox;
    QParametrospar_arch_copiar_colector: TStringField;
    QParametrospar_arch_recibe_colector: TStringField;
    QParametrospar_delimitador_envia: TStringField;
    QParametrospar_delimitador_recibe: TStringField;
    QEnviaColector: TADOQuery;
    QRecibeColector: TADOQuery;
    QEnviaColectoremp_codigo: TIntegerField;
    QEnviaColectorcampo: TStringField;
    QRecibeColectoremp_codigo: TIntegerField;
    QRecibeColectorcampo: TStringField;
    QParametrospar_modifica_fecha_factura: TStringField;
    QParametrospar_pago_mayor_balance: TStringField;
    QParametrospar_nota_orden_servicio: TMemoField;
    pnServicio: TPanel;
    DBRichEdit1: TDBRichEdit;
    Label102: TLabel;
    QParametrospar_controlar: TStringField;
    QParametrospar_formato_preimpreso: TStringField;
    QParametrospar_usuario_cuadra: TStringField;
    QParametrospar_inv_entrada_modifica_precio: TStringField;
    DBCheckBox41: TDBCheckBox;
    QNCF: TADOQuery;
    QNCFNCF_Fijo: TStringField;
    QNCFNCF_Inicial: TBCDField;
    QNCFNCF_Final: TBCDField;
    QNCFNCF_Secuencia: TBCDField;
    QNCFNCF_Status: TStringField;
    QNCFCantidad: TFloatField;
    QNCFNCF_Fecha_Creacion: TDateTimeField;
    dsNCF: TDataSource;
    QNCFcaja: TIntegerField;
    Label66: TLabel;
    SpeedButton13: TSpeedButton;
    tmovtk: TEdit;
    tdbpar_movtk: TDBEdit;
    QParametrospar_movtk: TStringField;
    pnNCF: TPanel;
    GroupBox13: TGroupBox;
    QNCF_Unico: TADOQuery;
    QNCF_Unicoemp_codigo: TIntegerField;
    QNCF_Unicosuc_codigo: TIntegerField;
    QNCF_UnicoNCF_Fijo: TStringField;
    QNCF_UnicoNCF_Inicial: TBCDField;
    QNCF_UnicoNCF_Final: TBCDField;
    QNCF_UnicoNCF_Secuencia: TBCDField;
    QNCF_UnicoNCF_Status: TStringField;
    QNCF_Unicosuc_nombre: TStringField;
    QNCF_UnicoNCF_Fecha_Creacion: TDateTimeField;
    DBGrid3: TDBGrid;
    dsNCF_Unico: TDataSource;
    QNCF_UnicoCantidad: TFloatField;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    GroupBox14: TGroupBox;
    DBGrid4: TDBGrid;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    QNCF_Menores: TADOQuery;
    QNCF_Menoresemp_codigo: TIntegerField;
    QNCF_Menoressuc_codigo: TIntegerField;
    QNCF_MenoresNCF_Fijo: TStringField;
    QNCF_MenoresNCF_Inicial: TBCDField;
    QNCF_MenoresNCF_Final: TBCDField;
    QNCF_MenoresNCF_Secuencia: TBCDField;
    QNCF_MenoresNCF_Status: TStringField;
    QNCF_Menoressuc_nombre: TStringField;
    QNCF_MenoresNCF_Fecha_Creacion: TDateTimeField;
    dsNCF_Menores: TDataSource;
    QNCF_MenoresCantidad: TFloatField;
    QParametrospar_visualizadesc: TStringField;
    QParametrospar_visualiza_selectivo: TStringField;
    QContabPAR_CTA_SELECTIVO_AD: TStringField;
    QContabPAR_CTA_SELECTIVO_CON: TStringField;
    QParametrospar_cantidad_primero: TStringField;
    DBCheckBox45: TDBCheckBox;
    QParametrospar_busqueda_porciento: TStringField;
    QConfigImpCodigoProducto: TStringField;
    QParametrospar_busqueda_cxp: TStringField;
    Label71: TLabel;
    DBComboBox10: TDBComboBox;
    pnrhh: TPanel;
    Label85: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    QParamRH: TADOQuery;
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
    dsParamRH: TDataSource;
    DBEdit62: TDBEdit;
    QTipoIngreso: TADOQuery;
    QTipoIngresotin_codigo: TIntegerField;
    QTipoIngresotin_nombre: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    dsTipoIngreso: TDataSource;
    QTipoDesc: TADOQuery;
    QTipoDesctde_codigo: TIntegerField;
    QTipoDesctde_nombre: TStringField;
    dsTipoDesc: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    QTipoCliente: TADOQuery;
    QTipoClientetcl_codigo: TIntegerField;
    QTipoClientetcl_nombre: TStringField;
    dsTipoCliente: TDataSource;
    DBLookupComboBox7: TDBLookupComboBox;
    QParamRHemp_codigo: TIntegerField;
    QParametrospar_moneda_local: TIntegerField;
    Label110: TLabel;
    mtmonedalocal: TSpeedButton;
    tmonedalocal: TEdit;
    DBEdit76: TDBEdit;
    QParametrospar_envio: TMemoField;
    QParametrospar_nota_cotizacion: TMemoField;
    Label111: TLabel;
    DBMemo2: TDBMemo;
    QContabpar_cta_prima: TStringField;
    QContabpar_cta_ingreso_cambio: TStringField;
    QContabpar_cta_gasto_cambio: TStringField;
    QParametrospar_almacendevolucion: TIntegerField;
    Label115: TLabel;
    btalmacendev: TSpeedButton;
    talmacendev: TEdit;
    DBEdit91: TDBEdit;
    QContabpar_estado_resultado_inventario: TStringField;
    DBCheckBox46: TDBCheckBox;
    QParametrospar_boletos_monto: TBCDField;
    QParametrospar_boletos_cantidad: TIntegerField;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    GroupBox8: TGroupBox;
    DBEdit25: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    gbNCF: TGroupBox;
    DBGrid2: TDBGrid;
    btinsertNCF: TBitBtn;
    btdeleteNCF: TBitBtn;
    BitBtn7: TBitBtn;
    QCuentasTicket: TADOQuery;
    QCuentasTicketemp_codigo: TIntegerField;
    QCuentasTicketcaja: TStringField;
    QCuentasTicketcontado: TStringField;
    QCuentasTicketcredito: TStringField;
    QCuentasTicketcxc: TStringField;
    QCuentasTicketnumero_entrada: TIntegerField;
    Label118: TLabel;
    DBEdit94: TDBEdit;
    dsCuentasTicket: TDataSource;
    Label119: TLabel;
    DBEdit95: TDBEdit;
    Label120: TLabel;
    DBEdit96: TDBEdit;
    Label121: TLabel;
    DBEdit97: TDBEdit;
    Label122: TLabel;
    DBEdit98: TDBEdit;
    QContabpar_docnomina: TStringField;
    QContabpar_ctasueldopagar: TStringField;
    QContabpar_provision_regalia: TStringField;
    QParametrospar_ticket_itbis: TStringField;
    DBCheckBox47: TDBCheckBox;
    pnlogistica: TPanel;
    QParametrospar_ftp_site: TStringField;
    QParametrospar_ftp_usuario: TStringField;
    QParametrospar_ftp_password: TStringField;
    QParametrospar_ftp_ruta: TStringField;
    Label126: TLabel;
    DBEdit102: TDBEdit;
    Label127: TLabel;
    DBEdit103: TDBEdit;
    Label128: TLabel;
    DBEdit104: TDBEdit;
    Label129: TLabel;
    DBEdit105: TDBEdit;
    QContabpar_docnc_cxp: TStringField;
    QContabpar_docnd_cxp: TStringField;
    QParametrospar_modifica_precio_automatico: TStringField;
    DBCheckBox48: TDBCheckBox;
    QParametrospar_inv_forma_inventario: TStringField;
    QContabpar_cta_mercancia_transito: TStringField;
    QContabpar_docliq: TStringField;
    QParametrospar_visualizar_cant_empaque: TStringField;
    QParametrospar_imprimir_calculo_empaque: TStringField;
    QParametrospar_inv_transferencia_auto: TStringField;
    DBCheckBox51: TDBCheckBox;
    QParametrospar_boletos_monto_patrocinador: TBCDField;
    QParametrospar_boletos_cantidad_patrocinador: TIntegerField;
    QParametrospar_movdc: TIntegerField;
    Label136: TLabel;
    SpeedButton19: TSpeedButton;
    tmovdc: TEdit;
    DBEdit112: TDBEdit;
    DBGrid5: TDBGrid;
    QPasar: TADOQuery;
    QPasarCaja: TIntegerField;
    QPasarHasta: TIntegerField;
    QPasarTipo: TStringField;
    dsPasar: TDataSource;
    QPasarCajero: TIntegerField;
    Label137: TLabel;
    QParamRHpar_cajero: TIntegerField;
    QParamRHpar_caja: TIntegerField;
    DBEdit113: TDBEdit;
    Label138: TLabel;
    DBEdit114: TDBEdit;
    QParametrospar_busqueda_dejar_ultimo: TStringField;
    DBCheckBox52: TDBCheckBox;
    QParametrospar_compras_visualiza_diferencia: TStringField;
    DBCheckBox53: TDBCheckBox;
    QPasarPorciento: TBCDField;
    QContabpar_cta_itbis_compra: TStringField;
    QParametrospar_genera_puntos_credito: TStringField;
    QParametrospar_inv_unidad_medida: TStringField;
    DBCheckBox55: TDBCheckBox;
    QParamRHpar_acumulado: TStringField;
    DBCheckBox56: TDBCheckBox;
    QContabpar_codifica_venta_familia: TStringField;
    DBCheckBox57: TDBCheckBox;
    QParametrospar_numerofactura_tipo: TStringField;
    QParametrospar_facturarcero: TStringField;
    QParametrospar_textobarra7: TStringField;
    QParametrospar_opc6talinea: TStringField;
    QParametrospar_opc7malinea: TStringField;
    QContabpar_cta_intereses: TStringField;
    QParametrosIdioma: TStringField;
    DBRadioGroup22: TDBRadioGroup;
    QContabpar_cta_retencion_itbis: TStringField;
    QContabpar_cta_retencion_isr: TStringField;
    QParametrospar_compras_valores_aut: TStringField;
    DBCheckBox60: TDBCheckBox;
    DBCheckBox61: TDBCheckBox;
    QParametrospar_inv_imprime_comentario: TStringField;
    QContabpar_doc_conduce: TStringField;
    QContabpar_doc_dev_compra: TStringField;
    QContabpar_doc_trans_banco: TStringField;
    QParamRHpar_banco: TIntegerField;
    Label147: TLabel;
    DBEdit123: TDBEdit;
    pnRangoDescuentoVtas: TPanel;
    GroupBox18: TGroupBox;
    dbcbxAplicaDescuentoVenta: TDBCheckBox;
    gbDescuento: TGroupBox;
    DBGrid6: TDBGrid;
    DBNavigator1: TDBNavigator;
    adoRangoDescVta: TADOQuery;
    dsadoRangoDescVta: TDataSource;
    QParametrospar_aplica_desc_por_rango_venta: TStringField;
    Label148: TLabel;
    DBComboBox11: TDBComboBox;
    DBEdit124: TDBEdit;
    Label149: TLabel;
    QParametrospar_cantidad_caducidad: TIntegerField;
    QParametrospar_periodo_caducidad: TStringField;
    QParametrospar_imprimir_sin_detalle_RI: TStringField;
    QParametroscot_dias_valides: TIntegerField;
    DBCheckBox62: TDBCheckBox;
    QParametrospar_validar_serie_en_inventario: TStringField;
    QParametrosPAR_FORMATOENVIOCON: TIntegerField;
    pnBoleto: TPanel;
    Label151: TLabel;
    DBEdit126: TDBEdit;
    QParametrospar_impresora_boleto: TStringField;
    PageControl3: TPageControl;
    nomina: TTabSheet;
    bancos: TTabSheet;
    PageControl4: TPageControl;
    Popular: TTabSheet;
    Bhd: TTabSheet;
    BanResevas: TTabSheet;
    DBEdit127: TDBEdit;
    Label152: TLabel;
    Label153: TLabel;
    DBEdit128: TDBEdit;
    Label154: TLabel;
    DBEdit129: TDBEdit;
    Label155: TLabel;
    Label156: TLabel;
    DBEdit130: TDBEdit;
    Label157: TLabel;
    QParamRHpar_rrhh_codigo_banco_popular: TIntegerField;
    QParamRHpar_rrhh_numero_asignado: TIntegerField;
    QParamRHpar_rrhh_secuencia_H: TIntegerField;
    QParamRHpar_rrhh_email: TStringField;
    QParamRHpar_rrhh_numeroafiliacion: TIntegerField;
    QParamRHpar_rrhh_suc_codigo_banco_popular: TIntegerField;
    QSucurs: TADOQuery;
    dsEmp: TDataSource;
    dsBancos: TDataSource;
    QBancos: TADOQuery;
    QBancosban_codigo: TIntegerField;
    QBancosban_nombre: TStringField;
    DBLookupComboBox8: TDBLookupComboBox;
    DBLookupComboBox9: TDBLookupComboBox;
    Label158: TLabel;
    QBancosban_nombre1: TStringField;
    QSucursemp_codigo: TIntegerField;
    QSucursemp_nombre: TStringField;
    QSucursSUC_CODIGO: TIntegerField;
    QSucursSUCNAME: TStringField;
    dsSuc: TDataSource;
    QSucursal: TADOQuery;
    QSucursalemp_codigo: TIntegerField;
    QSucursalemp_nombre: TStringField;
    QBancosGenNomina: TADOQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    dsBancosGenNomina: TDataSource;
    pnClientes: TPanel;
    Label18: TLabel;
    btCondicion: TSpeedButton;
    Label19: TLabel;
    rbCodigoCliente: TDBRadioGroup;
    tCondi: TEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBCheckBox33: TDBCheckBox;
    GroupBox10: TGroupBox;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    DBEdit77: TDBEdit;
    DBEdit78: TDBEdit;
    DBEdit79: TDBEdit;
    DBCheckBox54: TDBCheckBox;
    DBCheckBox39: TDBCheckBox;
    GroupBox15: TGroupBox;
    Label116: TLabel;
    Label117: TLabel;
    DBEdit92: TDBEdit;
    DBEdit93: TDBEdit;
    GroupBox16: TGroupBox;
    Label134: TLabel;
    Label135: TLabel;
    DBEdit110: TDBEdit;
    DBEdit111: TDBEdit;
    pnConteo: TPanel;
    DBRadioGroup4: TDBRadioGroup;
    DBRadioGroup19: TDBRadioGroup;
    pnBarra: TPanel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label89: TLabel;
    Label140: TLabel;
    Label141: TLabel;
    DBCheckBox4: TDBCheckBox;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit45: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit44: TDBEdit;
    DBComboBox2: TDBComboBox;
    BitBtn2: TBitBtn;
    DBMemo1: TDBMemo;
    DBEdit116: TDBEdit;
    DBEdit117: TDBEdit;
    pnFactura: TPanel;
    btVendedor: TSpeedButton;
    Label12: TLabel;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    DBCheckBox12: TDBCheckBox;
    DBEdit9: TDBEdit;
    GroupBox2: TGroupBox;
    Label11: TLabel;
    DBCheckBox13: TDBCheckBox;
    DBEdit10: TDBEdit;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    tTipo: TEdit;
    DBCheckBox17: TDBCheckBox;
    DBEdit13: TDBEdit;
    GroupBox5: TGroupBox;
    Label5: TLabel;
    Label22: TLabel;
    aHora1: TDateTimePicker;
    ahora2: TDateTimePicker;
    GroupBox6: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    bhora1: TDateTimePicker;
    bhora2: TDateTimePicker;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox24: TDBCheckBox;
    DBCheckBox26: TDBCheckBox;
    GroupBox9: TGroupBox;
    Label81: TLabel;
    Label82: TLabel;
    DBCheckBox32: TDBCheckBox;
    DBEdit72: TDBEdit;
    DBEdit73: TDBEdit;
    DBCheckBox35: TDBCheckBox;
    DBCheckBox38: TDBCheckBox;
    DBCheckBox40: TDBCheckBox;
    DBCheckBox42: TDBCheckBox;
    DBCheckBox43: TDBCheckBox;
    DBCheckBox44: TDBCheckBox;
    DBCheckBox49: TDBCheckBox;
    DBCheckBox50: TDBCheckBox;
    DBCheckBox59: TDBCheckBox;
    pnAntiguedad: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    GridAntigCli: TStringGrid;
    GridAntigProv: TStringGrid;
    pnEstadoCosto: TPanel;
    Label32: TLabel;
    SpeedButton4: TSpeedButton;
    Label59: TLabel;
    SpeedButton6: TSpeedButton;
    Label60: TLabel;
    SpeedButton7: TSpeedButton;
    Label61: TLabel;
    SpeedButton8: TSpeedButton;
    Label62: TLabel;
    SpeedButton9: TSpeedButton;
    DBEdit56: TDBEdit;
    tCtaTerminados: TEdit;
    DBEdit52: TDBEdit;
    tCtaProceso: TEdit;
    DBEdit53: TDBEdit;
    tCtaPrima: TEdit;
    DBEdit54: TDBEdit;
    tCtaLabor: TEdit;
    DBEdit55: TDBEdit;
    tCtaIndirec: TEdit;
    dbchkpar_imprimir_sin_detalle_RI: TDBCheckBox;
    Label150: TLabel;
    ScrollBox1: TScrollBox;
    dbedtpar_ctaresultado: TDBEdit;
    btCtaResult: TSpeedButton;
    tCtaResult: TEdit;
    Label26: TLabel;
    dbedtPAR_DOCCARGOS: TDBEdit;
    btDocCB: TSpeedButton;
    tDocCB: TEdit;
    LB_par_doccheque: TLabel;
    dbedtpar_doccheque: TDBEdit;
    btDocCK: TSpeedButton;
    tDocCK: TEdit;
    LB_par_docdeposito: TLabel;
    dbedtpar_docdeposito: TDBEdit;
    btDocDep: TSpeedButton;
    tDocDP: TEdit;
    LB_par_doc_trans_banco: TLabel;
    tdbtDocTB: TDBEdit;
    btDocTB: TSpeedButton;
    tDocTB: TEdit;
    LB_par_doccompras: TLabel;
    tdbtDocCompra: TDBEdit;
    btDocCompra: TSpeedButton;
    tDocCompra: TEdit;
    LB_par_docdesem: TLabel;
    tdbtDesem: TDBEdit;
    btDesem: TSpeedButton;
    tDesem: TEdit;
    tRC: TEdit;
    btRC: TSpeedButton;
    tdbtRC: TDBEdit;
    LB_par_docrc: TLabel;
    LB_par_docnccli: TLabel;
    tdbtNCCli: TDBEdit;
    btNCCli: TSpeedButton;
    tNCCli: TEdit;
    LB_par_docndcli: TLabel;
    tdbtNDCli: TDBEdit;
    btNDCli: TSpeedButton;
    tNDCli: TEdit;
    LB_par_docdev: TLabel;
    tdbtDevol: TDBEdit;
    btDevol: TSpeedButton;
    tDevol: TEdit;
    LB_par_docnomina: TLabel;
    tdbtDocNom: TDBEdit;
    btDocNom: TSpeedButton;
    tDocNom: TEdit;
    LB_par_docnc_cxp: TLabel;
    tdbtNCProv: TDBEdit;
    btNCProv: TSpeedButton;
    tNCProv: TEdit;
    LB_par_doc_dev_compra: TLabel;
    tdbtnd_cxp: TDBEdit;
    btnd_cxp: TSpeedButton;
    tnd_cxp: TEdit;
    tDocLiq: TEdit;
    tDocCond: TEdit;
    tCtaInvent: TEdit;
    tCtaCosto: TEdit;
    tCtaItbis: TEdit;
    tCtaItbisComp: TEdit;
    tCtaDesc: TEdit;
    tCtaDescComp: TEdit;
    tctaselectivoadv: TEdit;
    tselectivocon: TEdit;
    tctaSueldPag: TEdit;
    tctaprimacont: TEdit;
    tctagastodif: TEdit;
    tctaRGP: TEdit;
    btctaRGP: TSpeedButton;
    btctagastodif: TSpeedButton;
    btctaprimacont: TSpeedButton;
    btctaSueldPag: TSpeedButton;
    btselectivocon: TSpeedButton;
    btctaselectivoadv: TSpeedButton;
    btCtaDescComp: TSpeedButton;
    btCtaDesc: TSpeedButton;
    btCtaItbisComp: TSpeedButton;
    btCtaItbis: TSpeedButton;
    btCtaCosto: TSpeedButton;
    btCtaInvent: TSpeedButton;
    btDocCond: TSpeedButton;
    btDocLiq: TSpeedButton;
    tdbtDocLiq: TDBEdit;
    tdbtDocCond: TDBEdit;
    tdbtCtaInvent: TDBEdit;
    tdbtCtaCosto: TDBEdit;
    tdbtCtaItbis: TDBEdit;
    tdbtCtaItbisComp: TDBEdit;
    tdbtCtaDesc: TDBEdit;
    tdbtCtaDescComp: TDBEdit;
    tdbtctaselectivoadv: TDBEdit;
    tdbtselectivocon: TDBEdit;
    tdbtctaSueldPag: TDBEdit;
    tdbtctaprimacont: TDBEdit;
    tdbtctagastodif: TDBEdit;
    tdbctaRGP: TDBEdit;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label67: TLabel;
    Label70: TLabel;
    tdbtctamerctrans: TDBEdit;
    btctamerctrans: TSpeedButton;
    tctamerctrans: TEdit;
    tctaingcobint: TEdit;
    tctaretitbis: TEdit;
    tctaretisr: TEdit;
    btctaretisr: TSpeedButton;
    btctaretitbis: TSpeedButton;
    btctaingcobint: TSpeedButton;
    tdbtctaingcobint: TDBEdit;
    tdbtctaretitbis: TDBEdit;
    tdbtctaretisr: TDBEdit;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    tdbpar_impresora_boleto: TDBEdit;
    dbchkpar_igualartelefonocliente: TDBCheckBox;
    dbchkPAR_REPRESULTCOL1: TDBCheckBox;
    dbchkPAR_REPRESULTCOL2: TDBCheckBox;
    dbchkPAR_REPRESULTCOL3: TDBCheckBox;
    dbchkPAR_REPANEXOSCTA: TDBCheckBox;
    dbchkpar_estado_resultado_inventario: TDBCheckBox;
    grp1: TGroupBox;
    RG_PAR_CAJA: TDBRadioGroup;
    btn1: TBitBtn;
    LB_1: TLabel;
    tdbpuerto_display: TDBEdit;
    LB_2: TLabel;
    QParametrosPAR_CODIGO_ABRE_CAJA: TStringField;
    QParametrosPAR_PUERTO_ABRE_CAJA: TStringField;
    dbcbbPAR_CODIGO_ABRE_CAJA: TDBComboBox;
    dbchkpar_estado_resultado_inventario1: TDBCheckBox;
    QContabpar_NCF_Sucursal: TBooleanField;
    tdbPAR_SUC_NCF: TDBEdit;
    edSucursal: TEdit;
    bPAR_SUC_NCF: TSpeedButton;
    LB_3: TLabel;
    LB_4: TLabel;
    QParametrosPAR_SUC_NCF: TIntegerField;
    LB_5: TLabel;
    edtctaproplegvent: TEdit;
    btctaservcomp: TSpeedButton;
    dbedtpar_ctaproplegvent: TDBEdit;
    LB_6: TLabel;
    QContabpar_ctaproplegvent: TStringField;
    dbchkpar_cantidad_primero: TDBCheckBox;
    QParametrospar_busq_incrementada: TBooleanField;
    dbchkpar_inv_unidad_medida: TDBCheckBox;
    QParametrospar_concat_prod_exist_ubic: TBooleanField;
    dbchkpar_busq_por_referencia: TDBCheckBox;
    QParametrospar_busq_por_referencia: TBooleanField;
    Label25: TLabel;
    dbedtpar_ctaotrosimp: TDBEdit;
    btnbtctaotrosimp: TSpeedButton;
    edttctaotrosimp: TEdit;
    QContabpar_ctaotrosimp: TStringField;
    Label123: TLabel;
    dbedtpar_ctaproplegcomp: TDBEdit;
    btnpar_ctaproplegcomp: TSpeedButton;
    edtpar_ctaproplegcomp: TEdit;
    edtpar_ctafletecomp: TEdit;
    btnpar_ctafletecomp: TSpeedButton;
    dbedtpar_ctafletecomp: TDBEdit;
    Label124: TLabel;
    QContabpar_ctaproplegcomp: TStringField;
    QContabpar_ctafletecomp: TStringField;
    QParametrospar_envio_maxivo_fact: TBooleanField;
    btnPruebaEmail: TBitBtn;
    SEdt_DiasGracia: TcxDBSpinEdit;
    SEdt_DiasAplicar: TcxDBSpinEdit;
    CEdt_PorcMora: TcxDBCurrencyEdit;
    QParametrosPAR_MORA_DIAS_APLICAR: TIntegerField;
    QParametrosPAR_MORA_PORC: TCurrencyField;
    QParametrosPAR_MORA_DIAS_GRACIA: TIntegerField;
    Label125: TLabel;
    Label130: TLabel;
    Label131: TLabel;
    dbchkpar_imprimir_con_detalle_prod: TDBCheckBox;
    QParametrospar_imprimir_con_detalle_prod: TBooleanField;
    Label132: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    QParametrospar_cotizacion_notif: TBooleanField;
    Label133: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    QParametrospar_dias_cotizacion_notif: TIntegerField;
    pnAtrasos: TPanel;
    qParamAtraso: TADOQuery;
    DS_ParamAtraso: TDataSource;
    qParamAtrasoParametro: TStringField;
    qParamAtrasoDesde: TIntegerField;
    qParamAtrasoHasta: TIntegerField;
    qParamAtrasoCodigo: TStringField;
    qParamAtrasoUsuC: TStringField;
    qParamAtrasoFechaC: TDateTimeField;
    qParamAtrasoUsuM: TStringField;
    qParamAtrasoFechaM: TDateTimeField;
    DBGrid_1: TDBGrid;
    btnCancelar: TBitBtn;
    btnEliminar: TBitBtn;
    btnGrabar: TBitBtn;
    btnEditar: TBitBtn;
    btnNuevo: TBitBtn;
    EdtPassMail: TEdit;
    dbchkPar_Envio_Rec_Correo: TDBCheckBox;
    dbchkPar_Envio_Rec_Estadocta: TDBCheckBox;
    QParametrosPar_Envio_Rec_Estadocta: TBooleanField;
    QParametrosPar_Envio_Rec_Correo: TBooleanField;
    dbchkPar_Envio_Conduce_Correo: TDBCheckBox;
    QParametrosPar_Envio_Conduce_Correo: TBooleanField;
    QParametrosPar_Envio_Cotiz_Correo: TBooleanField;
    dbchkPar_Envio_Cotiz_Correo: TDBCheckBox;
    dbrgrpPAR_CONT_BALANU_COMPROB: TDBRadioGroup;
    QContabPAR_CONT_BALANU_COMPROB: TIntegerField;
    tsRestBar: TTabSheet;
    Label139: TLabel;
    dbedtRestBar_PropLegal: TDBEdit;
    QParametrosRestBar_PropLegal: TCurrencyField;
    tsBalanza: TTabSheet;
    Label142: TLabel;
    dbedtpar_digitos_entero: TDBEdit;
    dbedtpar_digitos_decimal: TDBEdit;
    dbedtpar_digitos_precio_pesar: TDBEdit;
    dbedtpar_forma_ticket_peso: TDBEdit;
    Label143: TLabel;
    Label144: TLabel;
    Label145: TLabel;
    Label146: TLabel;
    dbedtdepa_codigo_peso: TDBEdit;
    btnDeptoPesos: TSpeedButton;
    edtDeptoPeso: TEdit;
    QParametrospar_digitos_entero: TIntegerField;
    QParametrospar_digitos_decimal: TIntegerField;
    QParametrospar_digitos_precio_pesar: TIntegerField;
    QParametrospar_forma_ticket_peso: TStringField;
    btnListProdPeso: TBitBtn;
    QParametrosdepa_codigo_peso: TIntegerField;
    dbrgrppar_treporte_peso: TDBRadioGroup;
    QParametrospar_treporte_peso: TIntegerField;
    dbchkPAR_IMPCODBARRAFAM: TDBCheckBox;
    QParametrosPAR_IMPCODBARRAFAM: TBooleanField;
    dbchkpar_banca_apuestas: TDBCheckBox;
    QParametrospar_banca_apuestas: TBooleanField;
    GroupBox3: TGroupBox;
    Label83: TLabel;
    DBGrid1: TDBGrid;
    DBRadioGroup11: TDBRadioGroup;
    DBCheckBox23: TDBCheckBox;
    pnFacturas: TPanel;
    DBRadioGroup21: TDBRadioGroup;
    dbcbbpar_formato_preimpreso: TDBComboBox;
    DBCheckBox34: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    dbchkpar_envio_maxivo_fact: TDBCheckBox;
    DBRadioGroup12: TDBRadioGroup;
    DBRadioGroup13: TDBRadioGroup;
    DBRadioGroup14: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup23: TDBRadioGroup;
    DBRadioGroup10: TDBRadioGroup;
    DBRadioGroup9: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    DBRadioGroup8: TDBRadioGroup;
    pnFormatosImp: TPanel;
    pcFormatosImpresion: TPageControl;
    tbsFormatos: TTabSheet;
    Panel1: TPanel;
    DBRadioGroup15: TDBRadioGroup;
    DBRadioGroup24: TDBRadioGroup;
    DBRadioGroup25: TDBRadioGroup;
    DBRadioGroup26: TDBRadioGroup;
    DBRadioGroup27: TDBRadioGroup;
    DBRadioGroup28: TDBRadioGroup;
    DBRadioGroup29: TDBRadioGroup;
    DBRadioGroup30: TDBRadioGroup;
    DBCheckBox58: TDBCheckBox;
    DBCheckBox63: TDBCheckBox;
    DBComboBox9: TDBComboBox;
    DBRadioGroup31: TDBRadioGroup;
    GroupBox19: TGroupBox;
    Label159: TLabel;
    Label160: TLabel;
    Label161: TLabel;
    Label162: TLabel;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBLookupComboBox10: TDBLookupComboBox;
    DBComboBox12: TDBComboBox;
    tbsConfPrinter: TTabSheet;
    GroupBox20: TGroupBox;
    DBGrid8: TDBGrid;
    GroupBox21: TGroupBox;
    Label163: TLabel;
    Label164: TLabel;
    Label165: TLabel;
    DBEdit20: TDBEdit;
    dbeNombre: TDBEdit;
    DBRadioGroup33: TDBRadioGroup;
    DBRadioGroup34: TDBRadioGroup;
    GroupBox23: TGroupBox;
    btnAnterior: TBitBtn;
    btnProximo: TBitBtn;
    btnInsertar: TBitBtn;
    btnEditarPrinter: TBitBtn;
    btnBorrar: TBitBtn;
    btnCancelarPrinter: TBitBtn;
    btnGrabarPrinter: TBitBtn;
    BitBtn15: TBitBtn;
    tbsConfPrinterPC: TTabSheet;
    ToolBar2: TToolBar;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    GroupBox22: TGroupBox;
    Label166: TLabel;
    Label167: TLabel;
    Label168: TLabel;
    Label169: TLabel;
    Label170: TLabel;
    pcname: TDBEdit;
    DBEdit21: TDBEdit;
    dblPrinters: TDBLookupComboBox;
    dbcPuerto: TDBComboBox;
    DBEdit22: TDBEdit;
    dbcSustituirCopia: TDBCheckBox;
    GroupBox24: TGroupBox;
    DBGrid9: TDBGrid;
    QParametrospar_puerto_Printer: TStringField;
    QParametrospar_Marca_Printer: TStringField;
    QParametrospar_velocidad_Printer: TIntegerField;
    adoPrinters: TADOQuery;
    dsPrinters: TDataSource;
    adoPrinterxPC: TADOQuery;
    adoPrinterxPCID: TAutoIncField;
    adoPrinterxPCNombre_PC: TStringField;
    adoPrinterxPCIDPrinter: TIntegerField;
    adoPrinterxPCPuerto: TStringField;
    adoPrinterxPCVelocidad: TIntegerField;
    adoPrinterxPCcntCopia: TIntegerField;
    adoPrinterxPCPrinterName: TStringField;
    adoPrinterxPCsustiruir_copia: TStringField;
    dsadoPrinterxPC: TDataSource;
    pnVerifone: TPanel;
    pgc1: TPageControl;
    tsAsignaVerifone: TTabSheet;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    GroupBox28: TGroupBox;
    Label174: TLabel;
    Label177: TLabel;
    DBEdit26: TDBEdit;
    GroupBox29: TGroupBox;
    qAsignaVerifione: TADOQuery;
    StringField3: TStringField;
    ds_AsignaVerifione: TDataSource;
    cxDBSpinEdit3: TcxDBSpinEdit;
    Label176: TLabel;
    cxDBSpinEdit4: TcxDBSpinEdit;
    Label178: TLabel;
    cxDBSpinEdit5: TcxDBSpinEdit;
    qAsignaVerifioneID: TIntegerField;
    qAsignaVerifioneIP: TStringField;
    qAsignaVerifionePortCaja: TIntegerField;
    qAsignaVerifionePortPOS: TIntegerField;
    qAsignaVerifioneTimeOut: TIntegerField;
    DBGrid11: TDBGrid;
    Label179: TLabel;
    DBEdit27: TDBEdit;
    GroupBox17: TGroupBox;
    DBGrid7: TDBGrid;
    DBRadioGroup32: TDBRadioGroup;
    DBCheckBox64: TDBCheckBox;
    sgFacturas: TStringGrid;
    cbFacturas: TComboBox;
    Label68: TLabel;
    edpuerto: TEdit;
    cxDBComboBox1: TcxDBComboBox;
    Label171: TLabel;
    QParametrospar_puerto_envios: TStringField;
    dbedtpar_puerto_envios: TDBEdit;
    dbedtpar_ctadevventas: TDBEdit;
    QContabpar_ctadevventas: TStringField;
    Label172: TLabel;
    btnpar_ctadevventas: TSpeedButton;
    Edt_ctadevventas: TEdit;
    Label173: TLabel;
    dbedtpar_digitos_: TDBEdit;
    QParametrospar_digitos_banderita: TIntegerField;
    dbrgrpPAR_INV_VENTAS: TDBRadioGroup;
    QParametrosPAR_INV_VENTAS: TIntegerField;
    dbrgrppar_tlector_balanza: TDBRadioGroup;
    QParametrospar_tlector_balanza: TIntegerField;
    QParametrosRestBar_FactConItbis: TBooleanField;
    QParametrospar_mostrarfacturadolares: TBooleanField;
    QParametrosPAR_UnidadMedida_Producto: TBooleanField;
    QParametrospar_totalizardolaresPOS: TBooleanField;
    QParametrospar_codigobarrasdolares: TBooleanField;
    QParametrospar_vouchercardnet: TBooleanField;
    QParametrosPAR_MESERO: TBooleanField;
    DBCheckBox65: TDBCheckBox;
    DBCheckBox66: TDBCheckBox;
    DBEdit3: TDBEdit;
    Label175: TLabel;
    DBCheckBox67: TDBCheckBox;
    DBCheckBox68: TDBCheckBox;
    QParametrosPAR_cantidadRecibosImprimir: TIntegerField;
    DBCheckBox69: TDBCheckBox;
    QParametrosPAR_mostrarsubcategorias: TBooleanField;
    QParametrosPAR_AutorizacionNoRequerida: TBooleanField;
    dbchkpar_posAutorizacion: TDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure tvOpcionesChange(Sender: TObject; Node: TTreeNode);
    procedure FormActivate(Sender: TObject);
    procedure QParametrosPAR_ALMACENVENTAGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure btTipoClick(Sender: TObject);
    procedure QParametrosPAR_MOVNDEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure btCloseClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure QParametrosAfterPost(DataSet: TDataSet);
    procedure QParametrosNewRecord(DataSet: TDataSet);
    procedure QParametrosPAR_TFACODIGOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure btVendedorClick(Sender: TObject);
    procedure QTipoAfterPost(DataSet: TDataSet);
    procedure QAntigCliNewRecord(DataSet: TDataSet);
    procedure QAntigProvNewRecord(DataSet: TDataSet);
    procedure QAntigCliAfterPost(DataSet: TDataSet);
    procedure QAntigProvAfterPost(DataSet: TDataSet);
    procedure sgFacturasDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure sgFacturasSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure cbFacturasExit(Sender: TObject);
    procedure QConfigImpAfterPost(DataSet: TDataSet);
    procedure QConfigImpNewRecord(DataSet: TDataSet);
    procedure dsTipoDataChange(Sender: TObject; Field: TField);
    procedure btn1Click(Sender: TObject);
    procedure QConfigImpInvNewRecord(DataSet: TDataSet);
    procedure QConfigImpInvAfterPost(DataSet: TDataSet);
    procedure sgInventarioDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure sgInventarioSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure cbsgInventExit(Sender: TObject);
    procedure btCondicionClick(Sender: TObject);
    procedure QParametrosCPA_CODIGOCLIENTEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure SpeedButton2Click(Sender: TObject);
    procedure QParametrosPAR_MOVCKGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QParametrosPAR_MOVCARGOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure SpeedButton3Click(Sender: TObject);
    procedure QContabNewRecord(DataSet: TDataSet);
    procedure btCtaResultClick(Sender: TObject);
    procedure btDocCBClick(Sender: TObject);
    procedure btDocCKClick(Sender: TObject);
    procedure btDocDepClick(Sender: TObject);
    procedure QContabAfterPost(DataSet: TDataSet);
    procedure QContabPAR_CTARESULTADOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QContabPAR_DOCCARGOSGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QContabPAR_DOCCHEQUEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QContabPAR_DOCDEPOSITOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure btDocComprasClick(Sender: TObject);
    procedure QContabPAR_DOCCOMPRASGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure btDocDesemClick(Sender: TObject);
    procedure btDocRCClick(Sender: TObject);
    procedure btDocNCClick(Sender: TObject);
    procedure btDocNDClick(Sender: TObject);
    procedure QContabPAR_DOCDESEMGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QContabPAR_DOCNCCLIGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QContabPAR_DOCNDCLIGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QContabPAR_DOCRCGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure btDevolClick(Sender: TObject);
    procedure QContabPAR_DOCDEVGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure btCtaInventClick(Sender: TObject);
    procedure btCtaCostoClick(Sender: TObject);
    procedure QContabPAR_CTAINVENTGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QContabPAR_CTACOSTOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btCtaItbisClick(Sender: TObject);
    procedure btCtaDesc1Click(Sender: TObject);
    procedure btCtaDesc2Click(Sender: TObject);
    procedure QContabPAR_CTADESCGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QContabPAR_CTAITBISGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QContabPAR_CTADESCCOMPGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure btFpaDsesemClick(Sender: TObject);
    procedure QParametrosPAR_FPADESEMGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QContabPAR_CTACOSTOSINDIRECTOSGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QContabPAR_CTALABORDIRECTAGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QContabPAR_CTAMATERIAPRIMAGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QContabPAR_CTAPRODPROCESOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QContabPAR_CTAPRODTERMINADOSGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure QParametrosPAR_INVEMPRESAGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QParametrosPAR_INVALMACENGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure btmonedaClick(Sender: TObject);
    procedure QParametrosMON_CODIGOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure btcajaClick(Sender: TObject);
    procedure QParametroscaj_codigoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QNCFCalcFields(DataSet: TDataSet);
    procedure btinsertNCFClick(Sender: TObject);
    procedure btdeleteNCFClick(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure QParametrospar_movtkGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure QNCF_UnicoCalcFields(DataSet: TDataSet);
    procedure QNCF_MenoresCalcFields(DataSet: TDataSet);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure btctaselectivoadClick(Sender: TObject);
    procedure btctaselectivoconClick(Sender: TObject);
    procedure QContabPAR_CTA_SELECTIVO_ADGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QContabPAR_CTA_SELECTIVO_CONGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QNCFAfterPost(DataSet: TDataSet);
    procedure BitBtn7Click(Sender: TObject);
    procedure QParamRHAfterPost(DataSet: TDataSet);
    procedure QParamRHNewRecord(DataSet: TDataSet);
    procedure mtmonedalocalClick(Sender: TObject);
    procedure QParametrospar_moneda_localGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure btctaprimaClick(Sender: TObject);
    procedure btctaingresodifClick(Sender: TObject);
    procedure btctagastodifClick(Sender: TObject);
    procedure QContabpar_cta_primaGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QContabpar_cta_ingreso_cambioGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QContabpar_cta_gasto_cambioGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure btalmacendevClick(Sender: TObject);
    procedure QParametrospar_almacendevolucionGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure btdocnominaClick(Sender: TObject);
    procedure QContabpar_docnominaGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure btsueldopagarClick(Sender: TObject);
    procedure QContabpar_ctasueldopagarGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure SpeedButton14Click(Sender: TObject);
    procedure QContabpar_provision_regaliaGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    
    procedure QContabpar_docnc_cxpGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure SpeedButton17Click(Sender: TObject);
    procedure QContabpar_cta_mercancia_transitoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QContabpar_docliqGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QCuentasTicketNewRecord(DataSet: TDataSet);
    procedure SpeedButton19Click(Sender: TObject);
    procedure QParametrospar_movdcGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QPasarBeforePost(DataSet: TDataSet);
    procedure QContabpar_cta_itbis_compraGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QContabpar_cta_interesesGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QContabpar_cta_retencion_itbisGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QContabpar_cta_retencion_isrGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QContabpar_doc_dev_compraGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QContabpar_doc_conduceGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QContabpar_doc_trans_bancoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure adoRangoDescVtaNewRecord(DataSet: TDataSet);
    procedure QTipoBeforePost(DataSet: TDataSet);
    procedure Btn_par_ctaresultadoClick(Sender: TObject);
    procedure Btn_PAR_DOCCARGOSClick(Sender: TObject);
    procedure QContabpar_docnd_cxpGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure btNCProvClick(Sender: TObject);
    procedure btnd_cxpClick(Sender: TObject);
    procedure btDocTBClick(Sender: TObject);
    procedure btDocCompraClick(Sender: TObject);
    procedure btDesemClick(Sender: TObject);
    procedure btDocLiqClick(Sender: TObject);
    procedure btCtaItbisCompClick(Sender: TObject);
    procedure btctaingcobintClick(Sender: TObject);
    procedure btctaretitbisClick(Sender: TObject);
    procedure btctaretisrClick(Sender: TObject);
    procedure btDocCondClick(Sender: TObject);
    procedure btNDCliClick(Sender: TObject);
    procedure btNCCliClick(Sender: TObject);
    procedure btRCClick(Sender: TObject);
    procedure btCtaDescClick(Sender: TObject);
    procedure btCtaDescCompClick(Sender: TObject);
    procedure btctaselectivoadvClick(Sender: TObject);
    procedure btselectivoconClick(Sender: TObject);
    procedure btctaSueldPagClick(Sender: TObject);
    procedure btctaprimacontClick(Sender: TObject);
    procedure btctaRGPClick(Sender: TObject);
    procedure btctamerctransClick(Sender: TObject);
    procedure bPAR_SUC_NCFClick(Sender: TObject);
    procedure tdbPAR_SUC_NCFKeyPress(Sender: TObject; var Key: Char);
    procedure tdbPAR_SUC_NCFChange(Sender: TObject);
    procedure QContabpar_ctaproplegventGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure btctaservcompClick(Sender: TObject);
    procedure btnbtctaotrosimpClick(Sender: TObject);
    procedure QContabpar_ctaotrosimpGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure btnpar_ctafletecompClick(Sender: TObject);
    procedure btnpar_ctaproplegcompClick(Sender: TObject);
    procedure QContabpar_ctaproplegcompGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QContabpar_ctafletecompGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure btnPruebaEmailClick(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnGrabarClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure qParamAtrasoAfterCancel(DataSet: TDataSet);
    procedure qParamAtrasoAfterPost(DataSet: TDataSet);
    procedure qParamAtrasoAfterEdit(DataSet: TDataSet);
    procedure qParamAtrasoAfterInsert(DataSet: TDataSet);
    procedure QParametrosBeforePost(DataSet: TDataSet);
    procedure QParametrosAfterOpen(DataSet: TDataSet);
    procedure btnDeptoPesosClick(Sender: TObject);
    procedure QParametrosdepa_codigo_pesoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure btnListProdPesoClick(Sender: TObject);
    procedure dsadoPrinterxPCDataChange(Sender: TObject; Field: TField);
    procedure ToolButton9Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure ToolButton14Click(Sender: TObject);
    procedure ToolButton15Click(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnInsertarClick(Sender: TObject);
    procedure btnEditarPrinterClick(Sender: TObject);
    procedure btnBorrarClick(Sender: TObject);
    procedure btnCancelarPrinterClick(Sender: TObject);
    procedure btnGrabarPrinterClick(Sender: TObject);
    procedure adoPrintersNewRecord(DataSet: TDataSet);
    procedure dsPrintersStateChange(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure qAsignaVerifioneNewRecord(DataSet: TDataSet);
    procedure btnpar_ctadevventasClick(Sender: TObject);
    procedure QContabpar_ctadevventasGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure edpuertoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure UpdateOptions(const Grid : TStringGrid; const Panel : TPanel;
       const Combo : TComboBox; const ACol, ARow: Integer);
  end;

var
  frmParametros: TfrmParametros;


implementation

uses SIGMA01, CONT64, SIGMA00, Math;

{$R *.dfm}

procedure TfrmParametros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmParametros.FormPaint(Sender: TObject);
begin
  frmParametros.Top := 1;
  frmParametros.left := 25;
end;

procedure TfrmParametros.tvOpcionesChange(Sender: TObject; Node: TTreeNode);
var
  a, b : integer;
begin
  pnGenerales.Visible   := tvOpciones.Selected.AbsoluteIndex = 0;
  pnClientes.Visible    := tvOpciones.Selected.AbsoluteIndex = 1;
  pnInvent.Visible      := tvOpciones.Selected.AbsoluteIndex = 2;
  pnConteo.Visible      := tvOpciones.Selected.AbsoluteIndex = 3;
  pnBarra.Visible       := tvOpciones.Selected.AbsoluteIndex = 4;
  pnBusquedaProd.Visible:= tvOpciones.Selected.AbsoluteIndex = 5;
  pnPrecios.Visible     := tvOpciones.Selected.AbsoluteIndex = 6;
  pnFactura.Visible     := tvOpciones.Selected.AbsoluteIndex = 7;
  pnAntiguedad.Visible  := tvOpciones.Selected.AbsoluteIndex = 8;
  pnDevol.Visible       := tvOpciones.Selected.AbsoluteIndex = 9;
  pnFormatosImp.Visible := tvOpciones.Selected.AbsoluteIndex = 10;
  pnContab.Visible      := tvOpciones.Selected.AbsoluteIndex = 11;
  pnEstadoCosto.Visible := tvOpciones.Selected.AbsoluteIndex = 12;
  pnrhh.Visible         := tvOpciones.Selected.AbsoluteIndex = 13;
  pntickets.Visible     := tvOpciones.Selected.AbsoluteIndex = 14;
  pnmail.Visible        := tvOpciones.Selected.AbsoluteIndex = 15;
  pnServicio.Visible    := tvOpciones.Selected.AbsoluteIndex = 16;
  pnNCF.Visible         := tvOpciones.Selected.AbsoluteIndex = 17;
  pnlogistica.Visible   := tvOpciones.Selected.AbsoluteIndex = 18;
  pnRangoDescuentoVtas.Visible   := tvOpciones.Selected.AbsoluteIndex = 19;
  pnBoleto.Visible      := tvOpciones.Selected.AbsoluteIndex = 20;
  pnCotizacion.Visible  := tvOpciones.Selected.AbsoluteIndex = 21;
  pnAtrasos.Visible     := tvOpciones.Selected.AbsoluteIndex = 22;
  pnVerifone.Visible    := tvOpciones.Selected.AbsoluteIndex = 23;

  case tvOpciones.Selected.AbsoluteIndex of
  6 : begin
         if not QRedondeo.Active  then QRedondeo.Open;

         sgRedondeo.Cells[0,0] := 'Desde';
         sgRedondeo.Cells[1,0] := 'Hasta';
         sgRedondeo.Cells[2,0] := 'Valor';
         sgRedondeo.Cells[3,0] := 'Sumar?';

         while not QRedondeo.Eof do
         begin
           sgRedondeo.Cells[0,QRedondeopar_secuencia.Value] := QRedondeopar_desde.AsString;
           sgRedondeo.Cells[1,QRedondeopar_secuencia.Value] := QRedondeopar_hasta.AsString;
           sgRedondeo.Cells[2,QRedondeopar_secuencia.Value] := QRedondeopar_valor.AsString;
           sgRedondeo.Cells[3,QRedondeopar_secuencia.Value] := QRedondeopar_sumar.AsString;
           QRedondeo.Next;
         end;
      end;
  5 : begin
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select bus_campo from prodbusqueda');
        dm.Query1.SQL.Add('where emp_codigo = :emp');
        dm.Query1.SQL.Add('order by bus_secuencia');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
        dm.Query1.Open;
        dm.Query1.DisableControls;
        while not dm.Query1.Eof do
        begin
          lCampos.Items.Delete(lCampos.Items.IndexOf(trim(dm.Query1.FieldByName('bus_campo').AsString)));
          dm.Query1.Next;
        end;
        dm.Query1.EnableControls;
      end;
  2 : begin
        for a := 0 to sgInventario.RowCount -1 do
          for b := 0 to sgInventario.ColCount -1 do
            sgInventario.Cells[b,a] := '';
        sgInventario.Cells[0,0] := 'Listado de Precios';
        sgInventario.Cells[0,1] := 'Valor del Inventario';
        sgInventario.Cells[0,2] := 'Por Familia';
        sgInventario.Cells[0,3] := 'Por Proveedor';
        sgInventario.Cells[0,4] := 'Por Departamento';
        sgInventario.Cells[0,5] := 'Por Marca';

        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select rep1, rep2, rep3, rep4, rep5, rep6');
        dm.Query1.SQL.Add('from parconfigimpinv');
        dm.Query1.SQL.Add('where emp_codigo = :emp');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
        dm.Query1.Open;
        sgInventario.Cells[1,0] := dm.Query1.FieldByName('rep1').AsString;
        sgInventario.Cells[1,1] := dm.Query1.FieldByName('rep2').AsString;
        sgInventario.Cells[1,2] := dm.Query1.FieldByName('rep3').AsString;
        sgInventario.Cells[1,3] := dm.Query1.FieldByName('rep4').AsString;
        sgInventario.Cells[1,4] := dm.Query1.FieldByName('rep5').AsString;
        sgInventario.Cells[1,5] := dm.Query1.FieldByName('rep6').AsString;

        cbsgInvent.Items.Clear;
        cbsgInvent.Items.Add('Con Existencia > 0');
        cbsgInvent.Items.Add('Con Existencia = 0');
        cbsgInvent.Items.Add('Con Existencia < 0');
        cbsgInvent.Items.Add('Todos los Productos');
        cbsgInvent.ItemIndex := 0;
        if sgInventario.Cells[1,0] = 'Con Existencia > 0' then
          cbsgInvent.ItemIndex := 0
        else if sgFacturas.Cells[1,0] = 'Con Existencia = 0' then
          cbsgInvent.ItemIndex := 1
        else if sgFacturas.Cells[1,0] = 'Con Existencia < 0' then
          cbsgInvent.ItemIndex := 1
        else if sgFacturas.Cells[1,0] = 'Todos los Productos' then
          cbsgInvent.ItemIndex := 1
        else
          cbsgInvent.ItemIndex := -1;
        UpdateOptions(sgInventario, pnsgInvent, cbsgInvent, 0, 0);

        //Colector
        if not QRecibeColector.Active then QRecibeColector.Open;
        if not QEnviaColector.Active  then QEnviaColector.Open;

        for a := 0 to listaenvia.Items.Count -1 do
          listaenvia.Checked[a] := false;

        for a := 0 to listaenvia.Items.Count -1 do
        begin
          if QEnviaColector.Locate('campo',listaenvia.Items[a],[]) then
            listaenvia.Checked[a] := true;
        end;

        for a := 0 to ListaRecibe.Items.Count -1 do
          ListaRecibe.Checked[a] := false;

        for a := 0 to ListaRecibe.Items.Count -1 do
        begin
          if QRecibeColector.Locate('campo',ListaRecibe.Items[a],[]) then
            ListaRecibe.Checked[a] := true;
        end;
      end;
  8 : begin
         if not QAntigCli.Active  then QAntigCli.Open;
         if not QAntigProv.Active then QAntigProv.Open;

         //Clientes
         GridAntigCli.Cells[0,0] := 'Descripci�n';
         GridAntigCli.Cells[1,0] := 'Desde';
         GridAntigCli.Cells[2,0] := 'Hasta';

         GridAntigCli.Cells[0,1] := QAntigCliPAR_DIA1LABEL.Value;
         GridAntigCli.Cells[0,2] := QAntigCliPAR_DIA2LABEL.Value;
         GridAntigCli.Cells[0,3] := QAntigCliPAR_DIA3LABEL.Value;
         GridAntigCli.Cells[0,4] := QAntigCliPAR_DIA4LABEL.Value;

         GridAntigCli.Cells[1,1] := QAntigCliPAR_DIA1DESDE.AsString;
         GridAntigCli.Cells[1,2] := QAntigCliPAR_DIA2DESDE.AsString;
         GridAntigCli.Cells[1,3] := QAntigCliPAR_DIA3DESDE.AsString;
         GridAntigCli.Cells[1,4] := QAntigCliPAR_DIA4DESDE.AsString;

         GridAntigCli.Cells[2,1] := QAntigCliPAR_DIA1HASTA.AsString;
         GridAntigCli.Cells[2,2] := QAntigCliPAR_DIA2HASTA.AsString;
         GridAntigCli.Cells[2,3] := QAntigCliPAR_DIA3HASTA.AsString;
         GridAntigCli.Cells[2,4] := QAntigCliPAR_DIA4HASTA.AsString;

         //Proveedores
         GridAntigProv.Cells[0,0] := 'Descripci�n';
         GridAntigProv.Cells[1,0] := 'Desde';
         GridAntigProv.Cells[2,0] := 'Hasta';

         GridAntigProv.Cells[0,1] := QAntigProvPAR_DIA1LABEL.Value;
         GridAntigProv.Cells[0,2] := QAntigProvPAR_DIA2LABEL.Value;
         GridAntigProv.Cells[0,3] := QAntigProvPAR_DIA3LABEL.Value;
         GridAntigProv.Cells[0,4] := QAntigProvPAR_DIA4LABEL.Value;

         GridAntigProv.Cells[1,1] := QAntigProvPAR_DIA1DESDE.AsString;
         GridAntigProv.Cells[1,2] := QAntigProvPAR_DIA2DESDE.AsString;
         GridAntigProv.Cells[1,3] := QAntigProvPAR_DIA3DESDE.AsString;
         GridAntigProv.Cells[1,4] := QAntigProvPAR_DIA4DESDE.AsString;

         GridAntigProv.Cells[2,1] := QAntigProvPAR_DIA1HASTA.AsString;
         GridAntigProv.Cells[2,2] := QAntigProvPAR_DIA2HASTA.AsString;
         GridAntigProv.Cells[2,3] := QAntigProvPAR_DIA3HASTA.AsString;
         GridAntigProv.Cells[2,4] := QAntigProvPAR_DIA4HASTA.AsString;
      end;
  10 : begin
        for a := 0 to sgFacturas.RowCount -1 do
          for b := 0 to sgFacturas.ColCount -1 do
            sgFacturas.Cells[b,a] := '';
        sgFacturas.Cells[0,0] := 'Cliente';
        sgFacturas.Cells[0,1] := 'Direccion';
        sgFacturas.Cells[0,2] := 'Telefono';
        sgFacturas.Cells[0,3] := 'Vendedor';
        sgFacturas.Cells[0,4] := 'Cajero';
        sgFacturas.Cells[0,5] := 'Firma del Cliente';
        sgFacturas.Cells[0,6] := 'Total Otros';
        sgFacturas.Cells[0,7] := 'Codigo Producto';

        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select cli, dir, tel, ven, caj, fir, otros, CodigoProducto');
        dm.Query1.SQL.Add('from parconfigimp');
        dm.Query1.SQL.Add('where emp_codigo = :emp');
        dm.Query1.SQL.Add('and tfa_Codigo = :tfa');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
        dm.Query1.Parameters.ParamByName('tfa').Value := QTipoTFA_CODIGO.Value;
        dm.Query1.Open;
        sgFacturas.Cells[1,0] := dm.Query1.FieldByName('cli').AsString;
        sgFacturas.Cells[1,1] := dm.Query1.FieldByName('dir').AsString;
        sgFacturas.Cells[1,2] := dm.Query1.FieldByName('tel').AsString;
        sgFacturas.Cells[1,3] := dm.Query1.FieldByName('ven').AsString;
        sgFacturas.Cells[1,4] := dm.Query1.FieldByName('caj').AsString;
        sgFacturas.Cells[1,5] := dm.Query1.FieldByName('fir').AsString;
        sgFacturas.Cells[1,6] := dm.Query1.FieldByName('otros').AsString;
        sgFacturas.Cells[1,7] := dm.Query1.FieldByName('CodigoProducto').AsString;

        cbFacturas.Items.Clear;
        cbFacturas.Items.Add('Si');
        cbFacturas.Items.Add('No');
        cbFacturas.ItemIndex := 0;
        if sgFacturas.Cells[1,0] = 'Si' then
          cbFacturas.ItemIndex := 0
        else if sgFacturas.Cells[1,0] = 'No' then
          cbFacturas.ItemIndex := 1
        else
          cbFacturas.ItemIndex := -1;
        UpdateOptions(sgFacturas, pnFacturas, cbFacturas, 0, 0);
         adoPrinters.open;
        adoPrinterxPC.OPEN;
        pcFormatosImpresion.ActivePageIndex := 0;
      end;
  13: begin //Recursos Humanos
        if not QTipoIngreso.Active then QTipoIngreso.Open;
        if not QTipoDesc.Active then QTipoDesc.Open;
        if not QTipoCliente.Active then QTipoCliente.Open;
        if not QParamRH.Active then QParamRH.Open;
      end;
  14: begin
        if not QNCF.Active then QNCF.Open;
        if not QCuentasTicket.Active then QCuentasTicket.Open;
      end;
  17: begin
        if not QNCF_Unico.Active   then QNCF_Unico.Open;
        if not QNCF_Menores.Active then QNCF_Menores.Open;
      end;

   19:begin
       pnRangoDescuentoVtas.Top := 8;
       pnRangoDescuentoVtas.Left := 168;
       adoRangoDescVta.Open;
     end;

   22:begin
     DBGrid_1.Visible := True;
   end;

    23:begin
    // pgc1.ActivePageIndex := 0;
   end;
  end;
end;

procedure TfrmParametros.FormActivate(Sender: TObject);
var
  puertoimp : textfile;
  linea : string;
begin
  tvOpciones.FullExpand;
  if not QParametros.Active then
  begin
    AssignFile(puertoimp, '.\puerto.txt');
    if not FileExists('.\puerto.txt') then
    begin
      Rewrite(puertoimp);
      writeln(puertoimp,'PRN');
      edpuerto.text := 'PRN';
    end
    else
    begin
      reset(puertoimp);
      readln(puertoimp,linea);
      edpuerto.text := linea;
    end;
    closefile(puertoimp);

    QParametros.Close;
    QParametros.Open;
    QParametros.Edit;
    QContab.Close;
    QContab.Open;
    QContab.Edit;
    QBusquedaProd.Open;
    QPasar.Open;
    if not QParametrosPAR_AHORA1.IsNull then
    begin
      aHora1.Time := TimeOf(QParametrosPAR_AHORA1.Value);
      aHora2.Time := TimeOf(QParametrosPAR_AHORA2.Value);
      bHora1.Time := TimeOf(QParametrosPAR_BHORA1.Value);
      bHora2.Time := TimeOf(QParametrosPAR_BHORA2.Value);
    end
    else
    begin
      aHora1.Time := Now;
      aHora2.Time := Now;
      bHora1.Time := Now;
      bHora2.Time := Now;
    end;

    if QParametrosPAR_INVALMACEN.IsNull then BEGIN
    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('SELECT TOP 1 ALM_CODIGO FROM SUCURSALES WHERE EMP_CODIGO = '+IntToStr(DM.vp_cia));
    DM.Query1.Open;
    IF DM.Query1.RecordCount > 0 THEN
    QParametrosPAR_INVALMACEN.Value := DM.Query1.FieldByName('ALM_CODIGO').Value;
    DM.Query1.Close;
    end;

    //Formatos de Impresi�n
    QTipo.open;
    QTipo.Edit;
    QConfigImp.Open;
    QConfigImpInv.Open;
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    QBancos.Open;
    qParamAtraso.Open;
  end;
end;

procedure TfrmParametros.QParametrosPAR_ALMACENVENTAGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QParametrosPAR_ALMACENVENTA.IsNull then
  begin
    Text := IntToStr(QParametrosPAR_ALMACENVENTA.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select alm_nombre from almacen');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and alm_codigo = :alm');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;//QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.ParamByName('alm').Value := QParametrosPAR_ALMACENVENTA.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tAlmacen.Text := dm.Query1.FieldByname('alm_nombre').AsString
      else begin
    ShowMessage('DEBES INDICAR UN ALMACEN VENTA VALIDO.....');
    talmacenemp.Text := '';
    DBEdit1.SetFocus;
    Exit;
end;

  end;
end;

procedure TfrmParametros.btTipoClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select alm_nombre, alm_codigo');
  Search.Query.Add('from almacen');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));//IntToStr(QParametrosPAR_INVEMPRESA.Value));
  Search.ResultField := 'alm_codigo';
  Search.Title := 'Almacenes';
  if Search.execute then
  begin
    QParametrosPAR_ALMACENVENTA.Value := StrToInt(Search.ValueField);
    DBEdit1.SetFocus;
  end;
end;

procedure TfrmParametros.QParametrosPAR_MOVNDEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QParametrosPAR_MOVNDE.IsNull then
  begin
    Text := IntToStr(QParametrosPAR_MOVNDE.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tmo_nombre from tiposmov');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tmo_codigo = :tmo');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('tmo').Value := QParametrosPAR_MOVNDE.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
      tTipoMov.Text := ''
    else
      tTipoMov.Text := dm.Query1.FieldByname('tmo_nombre').AsString;
  end;
end;

procedure TfrmParametros.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmParametros.btPostClick(Sender: TObject);
var
  Col, Fil : integer;
  puertoimp : textfile;
begin
  //Puerto de impresion
  assignfile(puertoimp,'puerto.txt');
  rewrite(puertoimp);
  writeln(puertoimp,edpuerto.text);
  closefile(puertoimp);
                 
  try
  if not qpasar.IsEmpty then begin
    QPasar.Edit;
    QPasar.Post;
    end;
  except
    begin
      pntickets.BringToFront;
    end;
  end;

  QParametros.Edit;
  QParametrosPAR_AHORA1.Value := aHora1.Time;
  QParametrosPAR_AHORA2.Value := aHora2.Time;
  QParametrosPAR_BHORA1.Value := bHora1.Time;
  QParametrosPAR_BHORA2.Value := bHora2.Time;
  QParametros.Post;
  QParametros.Edit;

  if QCuentasTicket.Active then
  begin
    QCuentasTicket.Edit;
    QCuentasTicket.Post;
  end;

  QContab.Edit;
  QContab.Post;
  QContab.Edit;

  if QRecibeColector.Active then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('delete from recibir_colector where emp_codigo = :emp');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.ExecSQL;

    for Fil := 0 to ListaRecibe.Items.Count -1 do
    begin
      if ListaRecibe.Checked[Fil] then
      begin
        QRecibeColector.Insert;
        QRecibeColectoremp_codigo.Value := dm.vp_cia;
        QRecibeColectorcampo.Value      := ListaRecibe.Items[Fil];
        QRecibeColector.Post;
      end;
    end;
    QRecibeColector.UpdateBatch;
  end;

  if QEnviaColector.Active then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('delete from copiar_colector where emp_codigo = :emp');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.ExecSQL;

    for Fil := 0 to ListaEnvia.Items.Count -1 do
    begin
      if ListaEnvia.Checked[Fil] then
      begin
        QEnviaColector.Insert;
        QEnviaColectoremp_codigo.Value := dm.vp_cia;
        QEnviaColectorcampo.Value      := ListaEnvia.Items[Fil];
        QEnviaColector.Post;
      end;
    end;
    QEnviaColector.UpdateBatch;
  end;

  if QConfigImp.Active then
  begin
    QConfigImp.Edit;
    QConfigImpCLI.Value := sgFacturas.Cells[1,0];
    QConfigImpDIR.Value := sgFacturas.Cells[1,1];
    QConfigImpTEL.Value := sgFacturas.Cells[1,2];
    QConfigImpVEN.Value := sgFacturas.Cells[1,3];
    QConfigImpCAJ.Value := sgFacturas.Cells[1,4];
    QConfigImpFIR.Value := sgFacturas.Cells[1,5];
    QConfigImpOTROS.Value := sgFacturas.Cells[1,6];
    QConfigImpCodigoProducto.Value := sgFacturas.Cells[1,7];
    QConfigImp.Post;
  end;

  if QConfigImpInv.Active then
  begin
    QConfigImpInv.Edit;
    QConfigImpInvREP1.Value := sgInventario.Cells[1,0];
    QConfigImpInvREP2.Value := sgInventario.Cells[1,1];
    QConfigImpInvREP3.Value := sgInventario.Cells[1,2];
    QConfigImpInvREP4.Value := sgInventario.Cells[1,3];
    QConfigImpInvREP5.Value := sgInventario.Cells[1,4];
    QConfigImpInvREP6.Value := sgInventario.Cells[1,5];
    QConfigImpInv.Post;
  end;

  if QTipo.RecordCount > 0 then
  begin
    QTipo.Edit;
    QTipo.Post;
    QTipo.Edit;
  end;

  if ckRedondeo.Checked then
    if QRedondeo.Active then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('delete from redondeo_precios where emp_codigo = :emp');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.ExecSQL;

      for Fil := 1 to sgRedondeo.RowCount-1 do
        For Col := 0 to sgRedondeo.ColCount-1 do
           if Trim(sgRedondeo.Cells[Col,Fil]) = '' then
              sgRedondeo.Cells[Col,Fil] := '';

      for Fil := 1 to sgRedondeo.RowCount-1 do
      begin
        if (Trim(sgRedondeo.Cells[0,Fil]) <> '') and (Trim(sgRedondeo.Cells[1,Fil]) <> '') and
        (Trim(sgRedondeo.Cells[2,Fil]) <> '') then
        begin
          QRedondeo.Insert;
          QRedondeoemp_codigo.Value := dm.vp_cia;
          QRedondeopar_secuencia.Value := Fil;
          QRedondeopar_desde.Value     := StrToFloat(sgRedondeo.Cells[0,Fil]);
          QRedondeopar_hasta.Value     := StrToFloat(sgRedondeo.Cells[1,Fil]);
          QRedondeopar_valor.Value     := StrToFloat(sgRedondeo.Cells[2,Fil]);
          QRedondeopar_sumar.Value     := sgRedondeo.Cells[3,Fil];
          QRedondeo.Post;
        end;
      end;
      QRedondeo.UpdateBatch;
    end;

  if QAntigCli.Active then
  begin
    //Antiguedad de Saldo de Clientes
    for Fil := 1 to GridAntigCli.RowCount-1 do
      for Col := 1 to GridAntigCli.ColCount-1 do
         if Trim(GridAntigCli.Cells[Col,Fil]) = '' then
            GridAntigCli.Cells[Col,Fil] := '0';
    QAntigCli.Edit;
    QAntigCliPAR_DIA1LABEL.Value := GridAntigCli.Cells[0,1];
    QAntigCliPAR_DIA2LABEL.Value := GridAntigCli.Cells[0,2];
    QAntigCliPAR_DIA3LABEL.Value := GridAntigCli.Cells[0,3];
    QAntigCliPAR_DIA4LABEL.Value := GridAntigCli.Cells[0,4];

    QAntigCliPAR_DIA1DESDE.Value := StrToInt(GridAntigCli.Cells[1,1]);
    QAntigCliPAR_DIA2DESDE.Value := StrToInt(GridAntigCli.Cells[1,2]);
    QAntigCliPAR_DIA3DESDE.Value := StrToInt(GridAntigCli.Cells[1,3]);
    QAntigCliPAR_DIA4DESDE.Value := StrToInt(GridAntigCli.Cells[1,4]);

    QAntigCliPAR_DIA1HASTA.Value := StrToInt(GridAntigCli.Cells[2,1]);
    QAntigCliPAR_DIA2HASTA.Value := StrToInt(GridAntigCli.Cells[2,2]);
    QAntigCliPAR_DIA3HASTA.Value := StrToInt(GridAntigCli.Cells[2,3]);
    QAntigCliPAR_DIA4HASTA.Value := StrToInt(GridAntigCli.Cells[2,4]);
    QAntigCli.Post;
    QAntigCli.Edit;

    //Antiguedad de Saldo de Proveedores
    for Fil := 1 to GridAntigProv.RowCount-1 do
      for Col := 1 to GridAntigProv.ColCount-1 do
         if Trim(GridAntigProv.Cells[Col,Fil]) = '' then
            GridAntigProv.Cells[Col,Fil] := '0';
    QAntigCli.Edit;
    QAntigProv.Edit;
    QAntigProvPAR_DIA1LABEL.Value := GridAntigProv.Cells[0,1];
    QAntigProvPAR_DIA2LABEL.Value := GridAntigProv.Cells[0,2];
    QAntigProvPAR_DIA3LABEL.Value := GridAntigProv.Cells[0,3];
    QAntigProvPAR_DIA4LABEL.Value := GridAntigProv.Cells[0,4];

    QAntigProvPAR_DIA1DESDE.Value := StrToInt(GridAntigProv.Cells[1,1]);
    QAntigProvPAR_DIA2DESDE.Value := StrToInt(GridAntigProv.Cells[1,2]);
    QAntigProvPAR_DIA3DESDE.Value := StrToInt(GridAntigProv.Cells[1,3]);
    QAntigProvPAR_DIA4DESDE.Value := StrToInt(GridAntigProv.Cells[1,4]);

    QAntigProvPAR_DIA1HASTA.Value := StrToInt(GridAntigProv.Cells[2,1]);
    QAntigProvPAR_DIA2HASTA.Value := StrToInt(GridAntigProv.Cells[2,2]);
    QAntigProvPAR_DIA3HASTA.Value := StrToInt(GridAntigProv.Cells[2,3]);
    QAntigProvPAR_DIA4HASTA.Value := StrToInt(GridAntigProv.Cells[2,4]);
    QAntigProv.Post;
    QAntigProv.Edit;
  end;

  if not QParamRH.Active then
  begin
    if not QTipoCliente.Active then QTipoCliente.Open;
    if not QTipoIngreso.Active then QTipoIngreso.Open;
    if not QTipoDesc.Active then QTipoDesc.Open;
    QParamRH.Open;
  end;
  QParamRH.Edit;
  QParamRH.Post;

    if adoRangoDescVta.State in [dsInsert,dsEdit] then
    adoRangoDescVta.Post;

MessageDlg('CAMBIOS REALIZADOS CORRECTAMENTE...',mtInformation,[mbOK],mrOk);
end;

procedure TfrmParametros.QParametrosAfterPost(DataSet: TDataSet);
begin
  QParametros.UpdateBatch;
  dm.QParametros.Close;
  dm.QParametros.Open;
end;

procedure TfrmParametros.QParametrosNewRecord(DataSet: TDataSet);
begin
  QParametrospar_inv_imprime_comentario.Value := 'False';
  QParametrospar_compras_valores_aut.Value := 'False';
  QParametrospar_numerofactura_tipo.Value := 'True';
  QParametrospar_inv_unidad_medida.Value := 'False';
  QParametrospar_compras_visualiza_diferencia.value := 'True';
  QParametrospar_busqueda_dejar_ultimo.value := 'False';
  QParametrospar_inv_transferencia_auto.Value := 'False';
  QParametrospar_visualizar_cant_empaque.Value := 'False';
  QParametrospar_imprimir_calculo_empaque.Value := 'False';
  QParametrospar_modifica_precio_automatico.Value := 'True';
  QParametrospar_busqueda_porciento.Value := 'False';
  QParametrospar_cantidad_primero.Value   := 'False';
  QParametrospar_visualizadesc.Value      := 'True';
  QParametrospar_inv_entrada_modifica_precio.Value := 'True';
  QParametrospar_usuario_cuadra.Value     := 'True';
  QParametrospar_pago_mayor_balance.Value := 'False';
  QParametrospar_controlar.Value          := 'False';
  QParametrospar_modifica_fecha_factura.Value  := 'False';
  QParametrospar_inv_compra_centro_costo.Value := 'False';
  QParametrospar_nombre_familia.Value := 'Familia';
  QParametrospar_nombre_depto.Value   := 'Departamento';
  QParametrospar_nombre_color.Value   := 'Color';
  QParametrospar_nombre_marca.Value   := 'Marca';
  QParametrospar_fac_oferta.Value     := 'False';
  QParametrospar_fac_preimpresa.Value := 'False';
  QParametrospar_redondeo.Value       := 'False';
  QParametrospar_igualartelefonocliente.value := 'False';
  QParametrospar_domicilio.Value        := 'False';
  QParametrospar_itbisincluido.Value    := 'True';
  QParametrospar_invprecioconduce.Value := 'False';
  QParametrosPAR_INVEMPRESA.Value       := dm.vp_cia;
  QParametrosPAR_SOLGENERACHEQUE.Value  := 'True';
  QParametrosPAR_INVALMACEN.Value       := 1;
  QParametrosPAR_VERIMAGEN.Value        := 'True';
  QParametrosPAR_INVMOSTRARVENCE.Value  := 'False';
  QParametrosPAR_DEVFORMA.value         := 'E';
  QParametrosPAR_FISICOSOLOLLENO.Value  := 'True';
  QParametrosPAR_PRECIOUND.Value        := 'Precio1';
  QParametrosPAR_PRECIOEMP.Value        := 'Precio2';
  QParametrosPAR_PRECIOUND_M.Value      := 'Precio3';
  QParametrosPAR_PRECIOEMP_M.Value      := 'Precio4';
  QParametrosPAR_FACESCALA.Value        := 'False';
  QParametrosPAR_FACMEDIDA.Value        := 'False';
  QParametrosPAR_FACCONITBIS.Value      := 'True';
  QParametrosEMP_CODIGO.Value           := dm.vp_cia;
  QParametrosPAR_CODIGOCLIENTE.Value    := 'I';
  QParametrosPAR_CODIGOPRODUCTO.Value   := 'O';
  QParametrosPAR_FACFORMA.Value         := 'A';
  QParametrosPAR_FORMATOCOT.Value       := 2;
  QParametrosPAR_FORMATODES.Value       := 2;
  QParametrosPAR_FORMATODEV.Value       := 2;
  QParametrosPAR_FORMATORC.Value        := 2;
  QParametrosPAR_FORMATORI.Value        := 2;
  QParametrosPAR_FORMATOCON.Value       := 2;
  QParametrosPAR_ITBIS.Value            := 0;
  QParametrosPAR_TFACODIGO.Value        := 1;
  QParametrosPAR_CONTROLAMAXIMO.Value   := 'False';
  QParametrosPAR_CONTROLAMINIMO.Value   := 'False';
  QParametrosPAR_DEBAJOCOSTO.Value      := 'True';
  QParametrosPAR_COMBOCOTIZACION.Value  := 'True';
  QParametrosPAR_COMBOIMPDETALLE.Value  := 'False';
  QParametrosPAR_COMBOREBAJA.Value      := 'True';
  QParametrosPAR_VENDIGITOSLOTE.Value   := 2;
  QParametrosPAR_VENPERMITIR.Value      := 'True';
  QParametrosPAR_VENVERIFICA.Value      := 'L';
  QParametrosPAR_CONTEOLIMPIA.Value     := 'S';
  QParametrosPAR_PREDESCRIP1.Value      := 'Precio1';
  QParametrosPAR_PREDESCRIP2.Value      := 'Precio2';
  QParametrosPAR_PREDESCRIP3.Value      := 'Precio3';
  QParametrosPAR_PREDESCRIP4.Value      := 'Precio4';
  QParametrosPAR_FACANULA.Value         := 'True';
  QParametrosPAR_FACDIASANULA.Value     := 1;
  QParametrosPAR_FACDIASMODIFICA.Value  := 1;
  QParametrosPAR_FACDISPONIBLE.Value    := 'True';
  QParametrosPAR_FACMODIFICA.Value      := 'True';
  QParametrosPAR_FACSELPRECIO.Value     := 'True';
  QParametrosPAR_FACMODPRECIO.Value     := 'True';
  QParametrosPAR_FACTEMPORAL.Value      := 'True';
  QParametrosPAR_DEVDIAS.Value          := 15;
  QParametrosPAR_DEVEFECTIVO.Value      := 'True';
  QParametrosPAR_AHORA1.Value           := Now;
  QParametrosPAR_AHORA2.Value           := Now;
  QParametrosPAR_BHORA1.Value           := Now;
  QParametrosPAR_BHORA2.Value           := Now;
  QParametrosPAR_ITBISDEFECTO.Value     := 'S';
  QParametrosPAR_FACREPITEPROD.value    := 'False';
  QParametrosPAR_DEBAJOPRECIO.value     := 'False';
  QParametrosPAR_TIPOPRECIO.Value       := 'Precio1';
  QParametrospar_visualiza_selectivo.Value := 'False';
  QParametrospar_validar_serie_en_inventario.Value := 'False';
  QParametrosPAR_FORMATOENVIOCON.Value  := 2;
end;

procedure TfrmParametros.QParametrosPAR_TFACODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QParametrosPAR_TFACODIGO.IsNull then
  begin
    Text := IntToStr(QParametrosPAR_TFACODIGO.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tfa_nombre');
    dm.Query1.SQL.Add('from tiposfactura');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tfa_codigo = :tfa');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('tfa').Value := QParametrosPAR_TFACODIGO.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tTipo.Text := dm.Query1.FieldByname('tfa_nombre').AsString
    else
      tTipo.Text := '';
  end;
end;

procedure TfrmParametros.btVendedorClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select tfa_nombre, tfa_codigo');
  Search.Query.Add('from tiposfactura');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'tfa_codigo';
  Search.Title := 'Tipos de Factura';
  if Search.execute then
  begin
    QParametrosPAR_TFACODIGO.Value := StrToInt(Search.ValueField);
    DBEdit13.SetFocus;
  end;
end;

procedure TfrmParametros.QTipoAfterPost(DataSet: TDataSet);
begin
  QTipo.UpdateBatch;
end;

procedure TfrmParametros.QAntigCliNewRecord(DataSet: TDataSet);
begin
  QAntigCliEMP_CODIGO.Value := dm.vp_cia;
end;

procedure TfrmParametros.QAntigProvNewRecord(DataSet: TDataSet);
begin
  QAntigProvEMP_CODIGO.Value := dm.vp_cia;
end;

procedure TfrmParametros.QAntigCliAfterPost(DataSet: TDataSet);
begin
  QAntigCli.UpdateBatch;
end;

procedure TfrmParametros.QAntigProvAfterPost(DataSet: TDataSet);
begin
  QAntigProv.UpdateBatch;
end;

procedure TfrmParametros.sgFacturasDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
const
  INDENT = 2;
var
  lLeft: integer;
  lText: string;
begin
  with (Sender as TStringGrid).canvas do
  begin
    if ACol = 1 then
    begin
      font.color := clBlue;
      if brush.color = clHighlight then
        font.color := clWhite;
      lText := (Sender as TStringGrid).Cells[ACol,ARow];
      lLeft := Rect.Left + INDENT;
      TextRect(Rect, lLeft, Rect.top + INDENT, lText);
    end;
  end;
end;

procedure TfrmParametros.sgFacturasSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  cbFacturas.Items.Clear;
  cbFacturas.Items.Add('Si');
  cbFacturas.Items.Add('No');
  UpdateOptions(sgFacturas, pnFacturas, cbFacturas, ACol, ARow);
end;

procedure TfrmParametros.UpdateOptions(const Grid: TStringGrid;
  const Panel: TPanel; const Combo: TComboBox; const ACol, ARow: Integer);
var
  lR, lName : TRect;
begin
  Panel.Caption := Grid.Cells[0, ARow];

  if ACol = 0 then
    Combo.ItemIndex := Combo.Items.IndexOf(Grid.Cells[ACol+1,ARow])
  else
    if ACol = 1 then
      Combo.ItemIndex := Combo.Items.IndexOf(Grid.Cells[ACol,ARow]);

  Combo.Tag := ARow;
  if ACol = 0 then
  begin
    lName := Grid.CellRect(ACol, ARow);
    lR := Grid.CellRect(ACol + 1, ARow);
  end
  else
  begin
    lName := Grid.CellRect(ACol - 1, ARow);
    lR := Grid.CellRect(ACol, ARow);
  end;

  // lName := sgOptions.CellRect(ACol, ARow);
  lName.Left := lName.Left + Grid.Left;
  lName.Right := lName.Right + Grid.Left;
  lName.Top := lName.Top + Grid.Top;
  lName.Bottom := lName.Bottom + Grid.Top;
  Panel.Left := lName.Left + 1;
  Panel.Top := lName.Top + 1;
  Panel.Width := (lName.Right + 1) - lName.Left;
  Panel.Height := (lName.Bottom + 1) - lName.Top;

  // lR := sgOptions.CellRect(ACol, ARow);
  lR.Left := lR.Left + Grid.Left;
  lR.Right := lR.Right + Grid.Left;
  lR.Top := lR.Top + Grid.Top;
  lR.Bottom := lR.Bottom + Grid.Top;
  Combo.Left := lR.Left + 1;
  Combo.Top := lR.Top + 1;
  Combo.Width := (lR.Right + 1) - lR.Left;
  Combo.Height := (lR.Bottom + 1) - lR.Top;

//  Combo.SetFocus;
end;

procedure TfrmParametros.cbFacturasExit(Sender: TObject);
begin
  sgFacturas.Cells[1,cbFacturas.Tag] := cbFacturas.Text;
end;

procedure TfrmParametros.QConfigImpAfterPost(DataSet: TDataSet);
begin
  QConfigImp.UpdateBatch;
end;

procedure TfrmParametros.QConfigImpNewRecord(DataSet: TDataSet);
begin
  QConfigImpEMP_CODIGO.Value := dm.vp_cia;
  QConfigImpTFA_CODIGO.Value := QTipoTFA_CODIGO.Value;
end;

procedure TfrmParametros.dsTipoDataChange(Sender: TObject; Field: TField);
var
  a, b : integer;
begin
  for a := 0 to sgFacturas.RowCount -1 do
    for b := 0 to sgFacturas.ColCount -1 do
      sgFacturas.Cells[b,a] := '';
  sgFacturas.Cells[0,0] := 'Cliente';
  sgFacturas.Cells[0,1] := 'Direccion';
  sgFacturas.Cells[0,2] := 'Telefono';
  sgFacturas.Cells[0,3] := 'Vendedor';
  sgFacturas.Cells[0,4] := 'Cajero';
  sgFacturas.Cells[0,5] := 'Firma del Cliente';
  sgFacturas.Cells[0,6] := 'Total Otros';
  sgFacturas.Cells[0,7] := 'Codigo Producto';

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select cli, dir, tel, ven, caj, fir, otros, CodigoProducto');
  dm.Query1.SQL.Add('from parconfigimp');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and tfa_Codigo = :tfa');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('tfa').Value := QTipoTFA_CODIGO.Value;
  dm.Query1.Open;
  sgFacturas.Cells[1,0] := dm.Query1.FieldByName('cli').AsString;
  sgFacturas.Cells[1,1] := dm.Query1.FieldByName('dir').AsString;
  sgFacturas.Cells[1,2] := dm.Query1.FieldByName('tel').AsString;
  sgFacturas.Cells[1,3] := dm.Query1.FieldByName('ven').AsString;
  sgFacturas.Cells[1,4] := dm.Query1.FieldByName('caj').AsString;
  sgFacturas.Cells[1,5] := dm.Query1.FieldByName('fir').AsString;
  sgFacturas.Cells[1,6] := dm.Query1.FieldByName('otros').AsString;
  sgFacturas.Cells[1,7] := dm.Query1.FieldByName('CodigoProducto').AsString;

  cbFacturas.Items.Clear;
  cbFacturas.Items.Add('Si');
  cbFacturas.Items.Add('No');
  cbFacturas.ItemIndex := 0;
  if sgFacturas.Cells[1,0] = 'Si' then
    cbFacturas.ItemIndex := 0
  else if sgFacturas.Cells[1,0] = 'No' then
    cbFacturas.ItemIndex := 1
  else
    cbFacturas.ItemIndex := -1;

  UpdateOptions(sgFacturas, pnFacturas, cbFacturas, 0, 0);
  sgFacturas.Row := 0;
end;

procedure TfrmParametros.btn1Click(Sender: TObject);
begin
  dm.AbreCaja;
end;


procedure TfrmParametros.QConfigImpInvNewRecord(DataSet: TDataSet);
begin
  QConfigImpInvEMP_CODIGO.Value := dm.vp_cia;
end;

procedure TfrmParametros.QConfigImpInvAfterPost(DataSet: TDataSet);
begin
  QConfigImpInv.UpdateBatch;
end;

procedure TfrmParametros.sgInventarioDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
const
  INDENT = 2;
var
  lLeft: integer;
  lText: string;
begin
  with (Sender as TStringGrid).canvas do
  begin
    if ACol = 1 then
    begin
      font.color := clBlue;
      if brush.color = clHighlight then
        font.color := clWhite;
      lText := (Sender as TStringGrid).Cells[ACol,ARow];
      lLeft := Rect.Left + INDENT;
      TextRect(Rect, lLeft, Rect.top + INDENT, lText);
    end;
  end;
end;

procedure TfrmParametros.sgInventarioSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  cbsgInvent.Items.Clear;
  cbsgInvent.Items.Add('Con Existencia > 0');
  cbsgInvent.Items.Add('Con Existencia = 0');
  cbsgInvent.Items.Add('Con Existencia < 0');
  cbsgInvent.Items.Add('Todos los Productos');
  UpdateOptions(sgInventario, pnsgInvent, cbsgInvent, ACol, ARow);
end;

procedure TfrmParametros.cbsgInventExit(Sender: TObject);
begin
  sgInventario.Cells[1,cbsgInvent.Tag] := cbsgInvent.Text;
end;

procedure TfrmParametros.btCondicionClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cpa_nombre, cpa_codigo');
  Search.Query.Add('from condiciones');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'cpa_codigo';
  Search.Title := 'Condiciones de pago';
  if Search.execute then
  begin
    QParametrosCPA_CODIGOCLIENTE.Value := StrToInt(Search.ValueField);
    DBEdit14.SetFocus;
  end;
end;

procedure TfrmParametros.QParametrosCPA_CODIGOCLIENTEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if not QParametrosCPA_CODIGOCLIENTE.IsNull then
  begin
    Text := IntToStr(QParametrosCPA_CODIGOCLIENTE.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cpa_nombre from condiciones');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cpa_codigo = :cpa');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cpa').Value := QParametrosCPA_CODIGOCLIENTE.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
      tCondi.Text := ''
    else
      tCondi.Text := dm.Query1.FieldByname('cpa_nombre').AsString;
  end;
end;

procedure TfrmParametros.SpeedButton2Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select tmo_nombre, tmo_codigo');
  Search.Query.Add('from tiposmov');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'tmo_codigo';
  Search.Title := 'Tipos de movimientos';
  if Search.execute then
  begin
    QParametrosPAR_MOVCK.Value := StrToInt(Search.ValueField);
    DBEdit16.SetFocus;
  end;
end;

procedure TfrmParametros.QParametrosPAR_MOVCKGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QParametrosPAR_MOVCK.IsNull then
  begin
    Text := IntToStr(QParametrosPAR_MOVCK.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tmo_nombre from tiposmov');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tmo_codigo = :tmo');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('tmo').Value := QParametrosPAR_MOVCK.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
      tTipoMovCK.Text := ''
    else
      tTipoMovCK.Text := dm.Query1.FieldByname('tmo_nombre').AsString;
  end;
end;

procedure TfrmParametros.QParametrosPAR_MOVCARGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QParametrosPAR_MOVCARGO.IsNull then
  begin
    Text := IntToStr(QParametrosPAR_MOVCARGO.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tmo_nombre from tiposmov');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tmo_codigo = :tmo');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('tmo').Value := QParametrosPAR_MOVCARGO.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
      tTipoMovCargo.Text := ''
    else
      tTipoMovCargo.Text := dm.Query1.FieldByname('tmo_nombre').AsString;
  end;
end;

procedure TfrmParametros.SpeedButton3Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select tmo_nombre, tmo_codigo');
  Search.Query.Add('from tiposmov');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'tmo_codigo';
  Search.Title := 'Tipos de movimientos';
  if Search.execute then
  begin
    QParametrosPAR_MOVCARGO.Value := StrToInt(Search.ValueField);
    DBEdit17.SetFocus;
  end;
end;

procedure TfrmParametros.QContabNewRecord(DataSet: TDataSet);
begin
  QContabEMP_CODIGO.Value := dm.vp_cia;
  QContabpar_estado_resultado_inventario.Value := 'False';
  QContabpar_codifica_venta_familia.Value := 'False';
end;

procedure TfrmParametros.btCtaResultClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and cat_tipo = '+#39+'CA'+#39);
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Cuentas de Capital';
  if Search.execute then
  begin
    QContabPAR_CTARESULTADO.Value := Search.ValueField;
    dbedtpar_ctaresultado.SetFocus;
  end;
end;

procedure TfrmParametros.btDocCBClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select tdo_nombre, tdo_codigo');
  Search.Query.Add('from tiposdoc');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'tdo_Codigo';
  Search.Title := 'Tipos de Documentos';
  if Search.execute then
  begin
    QContabPAR_DOCCARGOS.Value := Search.ValueField;
    dbedtPAR_DOCCARGOS.SetFocus;
  end;
end;

procedure TfrmParametros.btDocCKClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select tdo_nombre, tdo_codigo');
  Search.Query.Add('from tiposdoc');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'tdo_Codigo';
  Search.Title := 'Tipos de Documentos';
  if Search.execute then
  begin
    QContabPAR_DOCCHEQUE.Value := Search.ValueField;
    dbedtpar_doccheque.SetFocus;
  end;
end;

procedure TfrmParametros.btDocDepClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select tdo_nombre, tdo_codigo');
  Search.Query.Add('from tiposdoc');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'tdo_Codigo';
  Search.Title := 'Tipos de Documentos';
  if Search.execute then
  begin
    QContabPAR_DOCDEPOSITO.Value := Search.ValueField;
    dbedtpar_docdeposito.SetFocus;
  end;
end;

procedure TfrmParametros.QContabAfterPost(DataSet: TDataSet);
begin
  QContab.UpdateBatch;
  dm.QContab.Close;
  dm.QContab.Open;
end;

procedure TfrmParametros.QContabPAR_CTARESULTADOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QContabPAR_CTARESULTADO.IsNull then
  begin
    Text := QContabPAR_CTARESULTADO.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value  := QContabPAR_CTARESULTADO.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tCtaResult.Text := dm.Query1.FieldByName('cat_nombre').AsString
    else
      tCtaResult.Text := '';
  end
  else
    tCtaResult.Text := '';
end;

procedure TfrmParametros.QContabPAR_DOCCARGOSGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QContabPAR_DOCCARGOS.IsNull then
  begin
    Text := QContabPAR_DOCCARGOS.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tdo_nombre from tiposdoc');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tdo_Codigo = :tdo');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('tdo').Value  := QContabPAR_DOCCARGOS.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tDocCB.Text := dm.Query1.FieldByName('tdo_nombre').AsString
    else
      tDocCB.Text := '';
  end
  else
    tDocCB.Text := '';
end;

procedure TfrmParametros.QContabPAR_DOCCHEQUEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QContabPAR_DOCCHEQUE.IsNull then
  begin
    Text := QContabPAR_DOCCHEQUE.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tdo_nombre from tiposdoc');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tdo_Codigo = :tdo');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('tdo').Value  := QContabPAR_DOCCHEQUE.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tDocCK.Text := dm.Query1.FieldByName('tdo_nombre').AsString
    else
      tDocCK.Text := '';
  end
  else
    tDocCK.Text := '';
end;

procedure TfrmParametros.QContabPAR_DOCDEPOSITOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QContabPAR_DOCDEPOSITO.IsNull then
  begin
    Text := QContabPAR_DOCDEPOSITO.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tdo_nombre from tiposdoc');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tdo_Codigo = :tdo');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('tdo').Value  := QContabPAR_DOCDEPOSITO.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tDocDP.Text := dm.Query1.FieldByName('tdo_nombre').AsString
    else
      tDocDP.Text := '';
  end
  else
    tDocDP.Text := '';
end;

procedure TfrmParametros.btDocComprasClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select tdo_nombre, tdo_codigo');
  Search.Query.Add('from tiposdoc');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'tdo_Codigo';
  Search.Title := 'Tipos de Documentos';
  if Search.execute then
  begin
    QContabPAR_DOCCOMPRAS.Value := Search.ValueField;
    tDocTB.SetFocus;
  end;
end;

procedure TfrmParametros.QContabPAR_DOCCOMPRASGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QContabPAR_DOCCOMPRAS.IsNull then
  begin
    Text := QContabPAR_DOCCOMPRAS.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tdo_nombre from tiposdoc');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tdo_Codigo = :tdo');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('tdo').Value  := QContabPAR_DOCCOMPRAS.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tDocCompra.Text := dm.Query1.FieldByName('tdo_nombre').AsString
    else
      tDocCompra.Text := '';
  end
  else
    tDocCompra.Text := '';
end;

procedure TfrmParametros.btDocDesemClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select tdo_nombre, tdo_codigo');
  Search.Query.Add('from tiposdoc');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'tdo_Codigo';
  Search.Title := 'Tipos de Documentos';
  if Search.execute then
  begin
    QContabPAR_DOCDESEM.Value := Search.ValueField;
    tDesem.SetFocus;
  end;
end;

procedure TfrmParametros.btDocRCClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select tdo_nombre, tdo_codigo');
  Search.Query.Add('from tiposdoc');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'tdo_Codigo';
  Search.Title := 'Tipos de Documentos';
  if Search.execute then
  begin
    QContabPAR_DOCRC.Value := Search.ValueField;
    tRC.SetFocus;
  end;
end;

procedure TfrmParametros.btDocNCClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select tdo_nombre, tdo_codigo');
  Search.Query.Add('from tiposdoc');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'tdo_Codigo';
  Search.Title := 'Tipos de Documentos';
  if Search.execute then
  begin
    QContabPAR_DOCNCCLI.Value := Search.ValueField;
    tNDCli.SetFocus;
  end;
end;

procedure TfrmParametros.btDocNDClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select tdo_nombre, tdo_codigo');
  Search.Query.Add('from tiposdoc');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'tdo_Codigo';
  Search.Title := 'Tipos de Documentos';
  if Search.execute then
  begin
    QContabPAR_DOCNDCLI.Value := Search.ValueField;
    tNDCli.SetFocus;
  end;
end;

procedure TfrmParametros.QContabPAR_DOCDESEMGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QContabPAR_DOCDESEM.IsNull then
  begin
    Text := QContabPAR_DOCDESEM.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tdo_nombre from tiposdoc');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tdo_Codigo = :tdo');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('tdo').Value  := QContabPAR_DOCDESEM.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tDesem.Text := dm.Query1.FieldByName('tdo_nombre').AsString
    else
      tDesem.Text := '';
  end
  else
    tDesem.Text := '';
end;

procedure TfrmParametros.QContabPAR_DOCNCCLIGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QContabPAR_DOCNCCLI.IsNull then
  begin
    Text := QContabPAR_DOCNCCLI.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tdo_nombre from tiposdoc');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tdo_Codigo = :tdo');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('tdo').Value  := QContabPAR_DOCNCCLI.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tNCCli.Text := dm.Query1.FieldByName('tdo_nombre').AsString
    else
      tNCCli.Text := '';
  end
  else
    tNCCli.Text := '';
end;

procedure TfrmParametros.QContabPAR_DOCNDCLIGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QContabPAR_DOCNDCLI.IsNull then
  begin
    Text := QContabPAR_DOCNDCLI.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tdo_nombre from tiposdoc');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tdo_Codigo = :tdo');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('tdo').Value  := QContabPAR_DOCNDCLI.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tNDCli.Text := dm.Query1.FieldByName('tdo_nombre').AsString
    else
      tNDCli.Text := '';
  end
  else
    tNDCli.Text := '';
end;

procedure TfrmParametros.QContabPAR_DOCRCGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QContabPAR_DOCRC.IsNull then
  begin
    Text := QContabPAR_DOCRC.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tdo_nombre from tiposdoc');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tdo_Codigo = :tdo');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('tdo').Value  := QContabPAR_DOCRC.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tRC.Text := dm.Query1.FieldByName('tdo_nombre').AsString
    else
      tRC.Text := '';
  end
  else
    tRC.Text := '';
end;

procedure TfrmParametros.btDevolClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select tdo_nombre, tdo_codigo');
  Search.Query.Add('from tiposdoc');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'tdo_Codigo';
  Search.Title := 'Tipos de Documentos';
  if Search.execute then
  begin
    QContabPAR_DOCDEV.Value := Search.ValueField;
    tDevol.SetFocus;
  end;
end;

procedure TfrmParametros.QContabPAR_DOCDEVGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QContabPAR_DOCDEV.IsNull then
  begin
    Text := QContabPAR_DOCDEV.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tdo_nombre from tiposdoc');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tdo_Codigo = :tdo');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('tdo').Value  := QContabPAR_DOCDEV.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tDevol.Text := dm.Query1.FieldByName('tdo_nombre').AsString
    else
      tDevol.Text := '';
  end
  else
    tDevol.Text := '';
end;

procedure TfrmParametros.btCtaInventClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and cat_tipo = '+#39+'AC'+#39);
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Cat�logo de Cuentas';
  if Search.execute then
  begin
    QContabPAR_CTAINVENT.Value := Search.ValueField;
    tCtaInvent.SetFocus;
  end;
end;

procedure TfrmParametros.btCtaCostoClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and cat_tipo = '+#39+'CO'+#39);
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Cuentas de Costos';
  if Search.execute then
  begin
    QContabPAR_CTACOSTO.Value := Search.ValueField;
    tdbtCtaCosto.SetFocus;
end;
end;

procedure TfrmParametros.QContabPAR_CTAINVENTGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QContabPAR_CTAINVENT.IsNull then
  begin
    Text := QContabPAR_CTAINVENT.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value  := QContabPAR_CTAINVENT.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tCtaInvent.Text := dm.Query1.FieldByName('cat_nombre').AsString
    else
      tCtaInvent.Text := '';
  end
  else
    tCtaInvent.Text := '';
end;

procedure TfrmParametros.QContabPAR_CTACOSTOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QContabPAR_CTACOSTO.IsNull then
  begin
    Text := QContabPAR_CTACOSTO.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value  := QContabPAR_CTACOSTO.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tCtaCosto.Text := dm.Query1.FieldByName('cat_nombre').AsString
    else
      tCtaCosto.Text := '';
  end
  else
    tCtaCosto.Text := '';
end;

procedure TfrmParametros.BitBtn2Click(Sender: TObject);
begin
  QParametros.Edit;
  QParametrosPAR_TEXTOBARRA1.Value := 'A10,05,0,1,1,2,R,';
  QParametrosPAR_TEXTOBARRA2.Value := 'A02,40,0,2,1,1,N,';
  QParametrosPAR_TEXTOBARRA3.Value := 'B50,60,0,1,2,2,55';
  QParametrosPAR_TEXTOBARRA4.Value := 'A10,145,0,1,1,2,N';
  QParametrosPAR_TEXTOBARRA5.Value := 'A10,170,0,1,1,2,N';
  QParametrosPAR_OPC1RALINEA.Value := 'Clave de Precio';
  QParametrosPAR_OPC5TALINEA.Value := 'Ref. Original';
end;

procedure TfrmParametros.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     if (activecontrol.classtype <> tdbgrid) and
     (activecontrol.classtype <> tstringgrid) and
     (activecontrol.classtype <> TDBRichEdit) and
     (activecontrol.classtype <> TDBMemo) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmParametros.btCtaItbisClick(Sender: TObject);
begin
 Search.Query.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and cat_tipo = '+#39+'PA'+#39);
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catalogo de Cuentas';
  if Search.execute then
  begin
    QContabPAR_CTAITBIS.Value := Search.ValueField;
    tdbtCtaItbis.SetFocus;
end;
end;

procedure TfrmParametros.btCtaDesc1Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Cat�logo de Cuentas';
  if Search.execute then
  begin
    QContabPAR_CTADESC.Value := Search.ValueField;
    tCtaDesc.SetFocus;
  end;
end;

procedure TfrmParametros.btCtaDesc2Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Cat�logo de Cuentas';
  if Search.execute then
  begin
    QContabPAR_CTADESCCOMP.Value := Search.ValueField;
    tCtaDesc.SetFocus;
  end;
end;

procedure TfrmParametros.QContabPAR_CTADESCGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QContabPAR_CTADESC.IsNull then
  begin
    Text := QContabPAR_CTADESC.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value  := QContabPAR_CTADESC.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tCtaDesc.Text := dm.Query1.FieldByName('cat_nombre').AsString
    else
      tCtaDesc.Text := '';
  end
  else
    tCtaDesc.Text := '';
end;

procedure TfrmParametros.QContabPAR_CTAITBISGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QContabPAR_CTAITBIS.IsNull then
  begin
    Text := QContabPAR_CTAITBIS.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value  := QContabPAR_CTAITBIS.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tCtaItbis.Text := dm.Query1.FieldByName('cat_nombre').AsString
    else
      tCtaItbis.Text := '';
  end
  else
    tCtaItbis.Text := '';
end;

procedure TfrmParametros.QContabPAR_CTADESCCOMPGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QContabPAR_CTADESCCOMP.IsNull then
  begin
    Text := QContabPAR_CTADESCCOMP.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value  := QContabPAR_CTADESCCOMP.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tCtaDescComp.Text := dm.Query1.FieldByName('cat_nombre').AsString
    else
      tCtaDescComp.Text := '';
  end
  else
    tCtaDescComp.Text := '';
end;

procedure TfrmParametros.btFpaDsesemClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select fpa_nombre, fpa_codigo');
  Search.Query.Add('from formaspago');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'fpa_codigo';
  Search.Title := 'Formas de Pago';
  if Search.execute then
  begin
    QParametrosPAR_FPADESEM.Value := StrToInt(Search.ValueField);
    DBEdit50.SetFocus;
  end;
end;

procedure TfrmParametros.QParametrosPAR_FPADESEMGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QParametrosPAR_FPADESEM.IsNull then
  begin
    Text := IntToStr(QParametrosPAR_FPADESEM.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select fpa_nombre from formaspago');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and fpa_codigo = :fpa');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('fpa').Value := QParametrosPAR_FPADESEM.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
      tFpaDesem.Text := ''
    else
      tFpaDesem.Text := dm.Query1.FieldByname('fpa_nombre').AsString;
  end;
end;

procedure TfrmParametros.QContabPAR_CTACOSTOSINDIRECTOSGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if not QContabPAR_CTACOSTOSINDIRECTOS.IsNull then
  begin
    Text := QContabPAR_CTACOSTOSINDIRECTOS.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value  := QContabPAR_CTACOSTOSINDIRECTOS.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tCtaIndirec.Text := dm.Query1.FieldByName('cat_nombre').AsString
    else
      tCtaIndirec.Text := '';
  end
  else
    tCtaIndirec.Text := '';
end;

procedure TfrmParametros.QContabPAR_CTALABORDIRECTAGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QContabPAR_CTALABORDIRECTA.IsNull then
  begin
    Text := QContabPAR_CTALABORDIRECTA.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value  := QContabPAR_CTALABORDIRECTA.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tCtaLabor.Text := dm.Query1.FieldByName('cat_nombre').AsString
    else
      tCtaLabor.Text := '';
  end
  else
    tCtaLabor.Text := '';
end;

procedure TfrmParametros.QContabPAR_CTAMATERIAPRIMAGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QContabPAR_CTAMATERIAPRIMA.IsNull then
  begin
    Text := QContabPAR_CTAMATERIAPRIMA.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value  := QContabPAR_CTAMATERIAPRIMA.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tCtaPrima.Text := dm.Query1.FieldByName('cat_nombre').AsString
    else
      tCtaPrima.Text := '';
  end
  else
    tCtaPrima.Text := '';
end;

procedure TfrmParametros.QContabPAR_CTAPRODPROCESOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QContabPAR_CTAPRODPROCESO.IsNull then
  begin
    Text := QContabPAR_CTAPRODPROCESO.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value  := QContabPAR_CTAPRODPROCESO.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tCtaProceso.Text := dm.Query1.FieldByName('cat_nombre').AsString
    else
      tCtaProceso.Text := '';
  end
  else
    tCtaProceso.Text := '';
end;

procedure TfrmParametros.QContabPAR_CTAPRODTERMINADOSGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if not QContabPAR_CTAPRODTERMINADOS.IsNull then
  begin
    Text := QContabPAR_CTAPRODTERMINADOS.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value  := QContabPAR_CTAPRODTERMINADOS.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tCtaTerminados.Text := dm.Query1.FieldByName('cat_nombre').AsString
    else
      tCtaTerminados.Text := '';
  end
  else
    tCtaTerminados.Text := '';
end;

procedure TfrmParametros.SpeedButton6Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Cat�logo de Cuentas';
  if Search.execute then
  begin
    QContabPAR_CTAPRODPROCESO.Value := Search.ValueField;
    DBEdit52.SetFocus;
  end;
end;

procedure TfrmParametros.SpeedButton7Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Cat�logo de Cuentas';
  if Search.execute then
  begin
    QContabPAR_CTAMATERIAPRIMA.Value := Search.ValueField;
    DBEdit53.SetFocus;
  end;
end;

procedure TfrmParametros.SpeedButton8Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Cat�logo de Cuentas';
  if Search.execute then
  begin
    QContabPAR_CTALABORDIRECTA.Value := Search.ValueField;
    DBEdit54.SetFocus;
  end;
end;

procedure TfrmParametros.SpeedButton9Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Cat�logo de Cuentas';
  if Search.execute then
  begin
    QContabPAR_CTACOSTOSINDIRECTOS.Value := Search.ValueField;
    DBEdit55.SetFocus;
  end;
end;

procedure TfrmParametros.SpeedButton4Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Cat�logo de Cuentas';
  if Search.execute then
  begin
    QContabPAR_CTAPRODTERMINADOS.Value := Search.ValueField;
    DBEdit56.SetFocus;
  end;
end;

procedure TfrmParametros.SpeedButton5Click(Sender: TObject);
var
  sec : integer;
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select isnull(max(bus_secuencia),0) as maximo');
  dm.Query1.SQL.Add('from prodbusqueda');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Open;
  Sec := dm.Query1.FieldByName('maximo').AsInteger + 1;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('insert into prodbusqueda');
  dm.Query1.SQL.Add('(BUS_CAMPO, BUS_SECUENCIA, EMP_CODIGO)');
  dm.Query1.SQL.Add('values (:cam, :sec, :emp)');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('sec').Value := sec;
  dm.Query1.Parameters.ParamByName('cam').Value  := lCampos.Items[lCampos.ItemIndex];
  dm.Query1.ExecSQL;
  lCampos.DeleteSelected;
  QBusquedaProd.DisableControls;
  QBusquedaProd.Close;
  QBusquedaProd.Open;
  QBusquedaProd.EnableControls;
end;

procedure TfrmParametros.SpeedButton10Click(Sender: TObject);
begin
  lCampos.Items.Add(QBusquedaProdBUS_CAMPO.Value);
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('delete from prodbusqueda');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and bus_secuencia = :sec');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('sec').Value := QBusquedaProdBUS_SECUENCIA.Value;
  dm.Query1.ExecSQL;
  QBusquedaProd.DisableControls;
  QBusquedaProd.Close;
  QBusquedaProd.Open;
  QBusquedaProd.EnableControls;
end;

procedure TfrmParametros.SpeedButton11Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select emp_nombre, emp_codigo');
  Search.Query.Add('from Empresas');
  Search.ResultField := 'emp_codigo';
  Search.Title := 'Empresas';
  if Search.execute then
  begin
    QParametrosPAR_INVEMPRESA.Value := StrToInt(Search.ValueField);
    DBEdit63.SetFocus;
  end;
end;

procedure TfrmParametros.SpeedButton12Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select alm_nombre, alm_codigo');
  Search.Query.Add('from almacen');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));//IntToStr(QParametrosPAR_INVEMPRESA.Value));
  Search.ResultField := 'alm_codigo';
  Search.Title := 'Almacenes';
  if Search.execute then
  begin
    QParametrosPAR_INVALMACEN.Value := StrToInt(Search.ValueField);
    DBEdit64.SetFocus;
  end;
end;

procedure TfrmParametros.QParametrosPAR_INVEMPRESAGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QParametrosPAR_INVEMPRESA.IsNull then
  begin
    Text := IntToStr(QParametrosPAR_INVEMPRESA.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select emp_nombre from empresas');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.Parameters.ParamByName('emp').Value := QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tempresa.Text := dm.Query1.FieldByName('emp_nombre').AsString
    else
      tempresa.Text := '';
  end
  else
    tempresa.Text := '';
end;

procedure TfrmParametros.QParametrosPAR_INVALMACENGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QParametrosPAR_INVALMACEN.IsNull then
  begin
    Text := IntToStr(QParametrosPAR_INVALMACEN.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select alm_nombre from almacen');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and alm_codigo = :alm');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;//QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.ParamByName('alm').Value := QParametrosPAR_INVALMACEN.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      talmacenemp.Text := dm.Query1.FieldByName('alm_nombre').AsString
    else begin
    ShowMessage('DEBES INDICAR UN ALMACEN DE INVENTARIO VALIDO.....');
    talmacenemp.Text := '';
    DBEdit64.SetFocus;
    Exit;
end;
end;
end;

procedure TfrmParametros.btmonedaClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select mon_nombre, mon_codigo');
  Search.Query.Add('from moneda');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'mon_codigo';
  Search.Title := 'Tipo de moneda';
  if Search.execute then
  begin
    QParametrosMON_CODIGO.Value := StrToInt(Search.ValueField);
    DBEdit65.SetFocus;
  end;
end;

procedure TfrmParametros.QParametrosMON_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QParametrosMON_CODIGO.IsNull then
  begin
    Text := IntToStr(QParametrosMON_CODIGO.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select mon_nombre from moneda');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and mon_codigo = :mon');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('mon').Value := QParametrosMON_CODIGO.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
      tmoneda.Text := ''
    else
      tmoneda.Text := dm.Query1.FieldByname('mon_nombre').AsString;
  end;
end;

procedure TfrmParametros.btcajaClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select caj_nombre, caj_codigo');
  Search.Query.Add('from cajas');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'caj_codigo';
  Search.Title := 'Cajas de efectivo';
  if Search.execute then
  begin
    QParametrosCAJ_CODIGO.Value := StrToInt(Search.ValueField);
    DBEdit71.SetFocus;
  end;
end;

procedure TfrmParametros.QParametroscaj_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QParametroscaj_codigo.IsNull then
  begin
    Text := IntToStr(QParametroscaj_codigo.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select caj_nombre from cajas');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and caj_codigo = :caj');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('caj').Value := QParametroscaj_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
      tcaja.Text := ''
    else
      tcaja.Text := dm.Query1.FieldByname('caj_nombre').AsString;
  end;
end;

procedure TfrmParametros.QNCFCalcFields(DataSet: TDataSet);
begin
  QNCFCantidad.Value := (QNCFNCF_Final.Value - QNCFNCF_Inicial.Value) + 1;
end;

procedure TfrmParametros.btinsertNCFClick(Sender: TObject);
begin
  Application.CreateForm(tfrmNCF, frmNCF);
  frmNCF.DBLookupComboBox2.KeyValue := frmNCF.QSucursalsuc_codigo.Value;
  frmNCF.DBLookupComboBox2.visible := false;
  frmNCF.label3.visible := false;
  frmNCF.ShowModal;
  if frmNCF.ModalResult = mrOk then
  begin
    if Trim(frmNCF.edActual.Text) = '' then frmNCF.edActual.Text := Trim(frmNCF.edInicial.Text);

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('insert into NCF_Ticket (caja, NCF_Fijo, NCF_Inicial, NCF_Final,');
    dm.Query1.SQL.Add('NCF_Secuencia, NCF_Status, NCF_Fecha_Creacion)');
    dm.Query1.SQL.Add('values (:caja, :fijo, :ini, :fin,');
    dm.Query1.SQL.Add(':sec, :st, Convert(datetime, getdate(), 105))');
    dm.Query1.Parameters.ParamByName('caja').Value  := StrToInt(Trim(frmNCF.edcaja.Text));
    dm.Query1.Parameters.ParamByName('fijo').Value := Trim(frmNCF.edFijo.Text);
    dm.Query1.Parameters.ParamByName('ini').Value  := StrToFloat(Trim(frmNCF.edInicial.Text));
    dm.Query1.Parameters.ParamByName('fin').Value  := StrToFloat(Trim(frmNCF.edFinal.Text));
    dm.Query1.Parameters.ParamByName('sec').Value  := StrToFloat(Trim(frmNCF.edActual.Text));
    dm.Query1.Parameters.ParamByName('st').Value   := 'ACT';
    dm.Query1.ExecSQL;

    QNCF.Close;
    QNCF.Open;
  end;
end;

procedure TfrmParametros.btdeleteNCFClick(Sender: TObject);
begin
  if MessageDlg('Est� seguro?', mtConfirmation, [mbyes, mbno], 0) = mryes then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('delete from NCF_Ticket');
    dm.Query1.SQL.Add('where caja = :caja');
    dm.Query1.SQL.Add('and ncf_fijo = :fijo');
    dm.Query1.SQL.Add('and ncf_inicial = :ini');
    dm.Query1.SQL.Add('and ncf_final = :fin');
    dm.Query1.Parameters.ParamByName('caja').Value  := QNCFcaja.Value;
    dm.Query1.Parameters.ParamByName('fijo').Value := QNCFNCF_Fijo.Value;
    dm.Query1.Parameters.ParamByName('ini').Value  := QNCFNCF_Inicial.Value;
    dm.Query1.Parameters.ParamByName('fin').Value  := QNCFNCF_Final.Value;
    dm.Query1.ExecSQL;

    QNCF.Close;
    QNCF.Open;
  end;
end;

procedure TfrmParametros.SpeedButton13Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select tdo_nombre, tdo_codigo');
  Search.Query.Add('from tiposdoc');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'tdo_codigo';
  Search.Title := 'Tipos de documentos';
  if Search.execute then
  begin
    QParametrosPAR_MOVTK.Value := Search.ValueField;
    //DBEdit59.SetFocus;
  end;
end;

procedure TfrmParametros.QParametrospar_movtkGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QParametrosPAR_MOVTK.IsNull then
  begin
    Text := QParametrosPAR_MOVTK.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tdo_nombre from tiposdoc');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tdo_codigo = :tmo');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('tmo').Value := QParametrosPAR_MOVTK.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
      tMovTK.Text := ''
    else
      tMovTK.Text := dm.Query1.FieldByname('tdo_nombre').AsString;
  end;
end;

procedure TfrmParametros.BitBtn3Click(Sender: TObject);
begin
  Application.CreateForm(tfrmNCF, frmNCF);
  frmNCF.Label6.visible := false;
  frmNCF.edcaja.visible := false;
  frmNCF.DBLookupComboBox2.KeyValue := frmNCF.QSucursalsuc_codigo.Value;
  frmNCF.ShowModal;
  if frmNCF.ModalResult = mrOk then
  begin
    if Trim(frmNCF.edActual.Text) = '' then frmNCF.edActual.Text := Trim(frmNCF.edInicial.Text);

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('insert into NCF_Unico (emp_codigo, suc_codigo,');
    dm.Query1.SQL.Add('NCF_Fijo, NCF_Inicial, NCF_Final,');
    dm.Query1.SQL.Add('NCF_Secuencia, NCF_Status, NCF_Fecha_Creacion)');
    dm.Query1.SQL.Add('values (:emp, :suc, :fijo, :ini, :fin,');
    dm.Query1.SQL.Add(':sec, :st, Convert(datetime, getdate(), 105))');
    dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('suc').Value  := frmNCF.DBLookupComboBox2.KeyValue;
    dm.Query1.Parameters.ParamByName('fijo').Value := Trim(frmNCF.edFijo.Text);
    dm.Query1.Parameters.ParamByName('ini').Value  := StrToFloat(Trim(frmNCF.edInicial.Text));
    dm.Query1.Parameters.ParamByName('fin').Value  := StrToFloat(Trim(frmNCF.edFinal.Text));
    dm.Query1.Parameters.ParamByName('sec').Value  := StrToFloat(Trim(frmNCF.edActual.Text));
    dm.Query1.Parameters.ParamByName('st').Value   := 'ACT';
    dm.Query1.ExecSQL;

    QNCF_Unico.Close;
    QNCF_Unico.Open;
  end;
end;

procedure TfrmParametros.BitBtn4Click(Sender: TObject);
begin
  if MessageDlg('Est� seguro?', mtConfirmation, [mbyes, mbno], 0) = mryes then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('delete from NCF_Unico');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.SQL.Add('and ncf_fijo = :fijo');
    dm.Query1.SQL.Add('and ncf_inicial = :ini');
    dm.Query1.SQL.Add('and ncf_final = :fin');
    dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('suc').Value  := QNCF_Unicosuc_codigo.Value;
    dm.Query1.Parameters.ParamByName('fijo').Value := QNCF_UnicoNCF_Fijo.Value;
    dm.Query1.Parameters.ParamByName('ini').Value  := QNCF_UnicoNCF_Inicial.Value;
    dm.Query1.Parameters.ParamByName('fin').Value  := QNCF_UnicoNCF_Final.Value;
    dm.Query1.ExecSQL;

    QNCF_Unico.Close;
    QNCF_Unico.Open;
  end;
end;

procedure TfrmParametros.QNCF_UnicoCalcFields(DataSet: TDataSet);
begin
  QNCF_UnicoCantidad.Value := (QNCF_UnicoNCF_Final.Value - QNCF_UnicoNCF_Inicial.Value) + 1;
end;

procedure TfrmParametros.QNCF_MenoresCalcFields(DataSet: TDataSet);
begin
  QNCF_MenoresCantidad.Value := (QNCF_MenoresNCF_Final.Value - QNCF_MenoresNCF_Inicial.Value) + 1;
end;

procedure TfrmParametros.BitBtn5Click(Sender: TObject);
begin
  Application.CreateForm(tfrmNCF, frmNCF);
  frmNCF.Label6.visible := false;
  frmNCF.edcaja.visible := false;
  frmNCF.DBLookupComboBox2.KeyValue := frmNCF.QSucursalsuc_codigo.Value;
  frmNCF.ShowModal;
  if frmNCF.ModalResult = mrOk then
  begin
    if Trim(frmNCF.edActual.Text) = '' then frmNCF.edActual.Text := Trim(frmNCF.edInicial.Text);

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('insert into NCF_Menores (emp_codigo, suc_codigo,');
    dm.Query1.SQL.Add('NCF_Fijo, NCF_Inicial, NCF_Final,');
    dm.Query1.SQL.Add('NCF_Secuencia, NCF_Status, NCF_Fecha_Creacion)');
    dm.Query1.SQL.Add('values (:emp, :suc, :fijo, :ini, :fin,');
    dm.Query1.SQL.Add(':sec, :st, Convert(datetime, getdate(), 105))');
    dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('suc').Value  := frmNCF.DBLookupComboBox2.KeyValue;
    dm.Query1.Parameters.ParamByName('fijo').Value := Trim(frmNCF.edFijo.Text);
    dm.Query1.Parameters.ParamByName('ini').Value  := StrToFloat(Trim(frmNCF.edInicial.Text));
    dm.Query1.Parameters.ParamByName('fin').Value  := StrToFloat(Trim(frmNCF.edFinal.Text));
    dm.Query1.Parameters.ParamByName('sec').Value  := StrToFloat(Trim(frmNCF.edActual.Text));
    dm.Query1.Parameters.ParamByName('st').Value   := 'ACT';
    dm.Query1.ExecSQL;

    QNCF_Menores.Close;
    QNCF_Menores.Open;
  end;
end;

procedure TfrmParametros.BitBtn6Click(Sender: TObject);
begin
  if MessageDlg('Est� seguro?', mtConfirmation, [mbyes, mbno], 0) = mryes then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('delete from NCF_Menores');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.SQL.Add('and ncf_fijo = :fijo');
    dm.Query1.SQL.Add('and ncf_inicial = :ini');
    dm.Query1.SQL.Add('and ncf_final = :fin');
    dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('suc').Value  := QNCF_Menoressuc_codigo.Value;
    dm.Query1.Parameters.ParamByName('fijo').Value := QNCF_MenoresNCF_Fijo.Value;
    dm.Query1.Parameters.ParamByName('ini').Value  := QNCF_MenoresNCF_Inicial.Value;
    dm.Query1.Parameters.ParamByName('fin').Value  := QNCF_MenoresNCF_Final.Value;
    dm.Query1.ExecSQL;

    QNCF_Menores.Close;
    QNCF_Menores.Open;
  end;
end;

procedure TfrmParametros.btctaselectivoadClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Cat�logo de Cuentas';
  if Search.execute then
  begin
    QContabPAR_CTA_SELECTIVO_AD.Value := Search.ValueField;
    tctaselectivoadv.SetFocus;
  end;
end;

procedure TfrmParametros.btctaselectivoconClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Cat�logo de Cuentas';
  if Search.execute then
  begin
    QContabPAR_CTA_SELECTIVO_CON.Value := Search.ValueField;
    tselectivocon.SetFocus;
  end;
end;

procedure TfrmParametros.QContabPAR_CTA_SELECTIVO_ADGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QContabPAR_CTA_SELECTIVO_AD.IsNull then
  begin
    Text := QContabPAR_CTA_SELECTIVO_AD.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value  := QContabPAR_CTA_SELECTIVO_AD.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tctaselectivoadv.Text := dm.Query1.FieldByName('cat_nombre').AsString
    else
      tctaselectivoadv.Text := '';
  end
  else
    tctaselectivoadv.Text := '';
end;

procedure TfrmParametros.QContabPAR_CTA_SELECTIVO_CONGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if not QContabPAR_CTA_SELECTIVO_CON.IsNull then
  begin
    Text := QContabPAR_CTA_SELECTIVO_CON.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value := QContabPAR_CTA_SELECTIVO_CON.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tselectivocon.Text := dm.Query1.FieldByName('cat_nombre').AsString
    else
      tselectivocon.Text := '';
  end
  else
    tselectivocon.Text := '';
end;

procedure TfrmParametros.QNCFAfterPost(DataSet: TDataSet);
begin
  QNCF.UpdateBatch;
end;

procedure TfrmParametros.BitBtn7Click(Sender: TObject);
begin
  Application.CreateForm(tfrmNCF, frmNCF);
  frmNCF.DBLookupComboBox2.KeyValue := frmNCF.QSucursalsuc_codigo.Value;
  frmNCF.DBLookupComboBox2.visible := false;
  frmNCF.label3.visible := false;
  frmNCF.edCaja.Text := QNCFcaja.AsString;
  frmNCF.edCaja.ReadOnly := True;
  frmNCF.edFijo.ReadOnly := True;
  frmNCF.edFijo.Text := QNCFNCF_Fijo.AsString;
  frmNCF.edInicial.Text := formatfloat('00000000',QNCFNCF_Inicial.AsFloat);
  frmNCF.edFinal.Text   := formatfloat('00000000',QNCFNCF_Final.AsFloat);
  frmNCF.edActual.Text  := formatfloat('00000000',QNCFNCF_Secuencia.AsFloat);
  frmNCF.ShowModal;
  if frmNCF.ModalResult = mrOk then
  begin
    if Trim(frmNCF.edActual.Text) = '' then frmNCF.edActual.Text := Trim(frmNCF.edInicial.Text);

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('update NCF_Ticket');
    dm.Query1.SQL.Add('set NCF_Inicial = :ini,');
    dm.Query1.SQL.Add('NCF_Final = :fin,');
    dm.Query1.SQL.Add('NCF_Secuencia = :sec');
    dm.Query1.SQL.Add('where caja = :caj');
    dm.Query1.Parameters.ParamByName('ini').Value := StrToFloat(Trim(frmNCF.edInicial.Text));
    dm.Query1.Parameters.ParamByName('fin').Value := StrToFloat(Trim(frmNCF.edFinal.Text));
    dm.Query1.Parameters.ParamByName('sec').Value := StrToFloat(Trim(frmNCF.edActual.Text));
    dm.Query1.Parameters.ParamByName('caj').Value := StrToInt(Trim(frmNCF.edcaja.Text));
    dm.Query1.ExecSQL;

    QNCF.Close;
    QNCF.Open;
  end;
end;

procedure TfrmParametros.QParamRHAfterPost(DataSet: TDataSet);
begin
  QParamRH.UpdateBatch;
  dm.QParamRH.Close;
  dm.QParamRH.Open;
end;

procedure TfrmParametros.QParamRHNewRecord(DataSet: TDataSet);
begin
  QParamRHemp_codigo.Value := dm.vp_cia;
end;

procedure TfrmParametros.mtmonedalocalClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select mon_nombre, mon_codigo');
  Search.Query.Add('from moneda');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'mon_codigo';
  Search.Title := 'Tipo de moneda';
  if Search.execute then
  begin
    QParametrospar_moneda_local.Value := StrToInt(Search.ValueField);
    DBEdit76.SetFocus;
  end;
end;

procedure TfrmParametros.QParametrospar_moneda_localGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QParametrospar_moneda_local.IsNull then
  begin
    Text := IntToStr(QParametrospar_moneda_local.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select mon_nombre from moneda');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and mon_codigo = :mon');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('mon').Value := QParametrospar_moneda_local.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
      tmonedalocal.Text := ''
    else
      tmonedalocal.Text := dm.Query1.FieldByname('mon_nombre').AsString;
  end;
end;

procedure TfrmParametros.btctaprimaClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Cat�logo de Cuentas';
  if Search.execute then
  begin
    QContabpar_cta_prima.Value := Search.ValueField;
    tctaprimacont.SetFocus;
  end;
end;

procedure TfrmParametros.btctaingresodifClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Cat�logo de Cuentas';
  if Search.execute then
  begin
    QContabpar_cta_ingreso_cambio.Value := Search.ValueField;
    tctagastodif.SetFocus;
  end;
end;

procedure TfrmParametros.btctagastodifClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and cat_tipo = '+#39+'IN'+#39);
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Cat�logo de Cuentas';
  if Search.execute then
  begin
    QContabpar_cta_gasto_cambio.Value := Search.ValueField;
    tctagastodif.SetFocus;
  end;
end;

procedure TfrmParametros.QContabpar_cta_primaGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QContabpar_cta_prima.IsNull then
  begin
    Text := QContabpar_cta_prima.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value := QContabpar_cta_prima.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tctaprimacont.Text := dm.Query1.FieldByName('cat_nombre').AsString
    else
      tctaprimacont.Text := '';
  end
  else
    tctaprimacont.Text := '';
end;

procedure TfrmParametros.QContabpar_cta_ingreso_cambioGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if not QContabpar_cta_ingreso_cambio.IsNull then
  begin
    Text := QContabpar_cta_ingreso_cambio.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value := QContabpar_cta_ingreso_cambio.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tctagastodif.Text := dm.Query1.FieldByName('cat_nombre').AsString
    else
      tctagastodif.Text := '';
  end
  else
    tctagastodif.Text := '';
end;

procedure TfrmParametros.QContabpar_cta_gasto_cambioGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QContabpar_cta_gasto_cambio.IsNull then
  begin
    Text := QContabpar_cta_gasto_cambio.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value := QContabpar_cta_gasto_cambio.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tctagastodif.Text := dm.Query1.FieldByName('cat_nombre').AsString
    else
      tctagastodif.Text := '';
  end
  else
    tctagastodif.Text := '';
end;

procedure TfrmParametros.btalmacendevClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select alm_nombre, alm_codigo');
  Search.Query.Add('from almacen');
  Search.Query.Add('where emp_codigo = '+IntToStr(QParametrosPAR_INVEMPRESA.Value));
  Search.ResultField := 'alm_codigo';
  Search.Title := 'Almacenes';
  if Search.execute then
  begin
    QParametrospar_almacendevolucion.Value := StrToInt(Search.ValueField);
    DBEdit91.SetFocus;
  end;
end;

procedure TfrmParametros.QParametrospar_almacendevolucionGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if not QParametrospar_almacendevolucion.IsNull then
  begin
    Text := IntToStr(QParametrospar_almacendevolucion.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select alm_nombre from almacen');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and alm_codigo = :alm');
    dm.Query1.Parameters.ParamByName('emp').Value := QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.ParamByName('alm').Value := QParametrospar_almacendevolucion.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
      talmacendev.Text := ''
    else
      talmacendev.Text := dm.Query1.FieldByname('alm_nombre').AsString;
  end;
end;

procedure TfrmParametros.btdocnominaClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select tdo_nombre, tdo_codigo');
  Search.Query.Add('from tiposdoc');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'tdo_Codigo';
  Search.Title := 'Tipos de Documentos';
  if Search.execute then
  begin
    QContabPAR_DOCnomina.Value := Search.ValueField;
    tDocNom.SetFocus;
  end;
end;

procedure TfrmParametros.QContabpar_docnominaGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QContabpar_docnomina.IsNull then
  begin
    Text := QContabpar_docnomina.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tdo_nombre from tiposdoc');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tdo_Codigo = :tdo');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('tdo').Value  := QContabpar_docnomina.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tDocNom.Text := dm.Query1.FieldByName('tdo_nombre').AsString
    else
      tDocNom.Text := '';
  end
  else
    tDocNom.Text := '';
end;

procedure TfrmParametros.btsueldopagarClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Cat�logo de Cuentas';
  if Search.execute then
  begin
    QContabpar_ctasueldopagar.Value := Search.ValueField;
    tctaSueldPag.SetFocus;
  end;
end;

procedure TfrmParametros.QContabpar_ctasueldopagarGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QContabpar_ctasueldopagar.IsNull then
  begin
    Text := QContabpar_ctasueldopagar.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value  := QContabpar_ctasueldopagar.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tctaSueldPag.Text := dm.Query1.FieldByName('cat_nombre').AsString
    else
      tctaSueldPag.Text := '';
  end
  else
    tctaSueldPag.Text := '';
end;

procedure TfrmParametros.SpeedButton14Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Cat�logo de Cuentas';
  if Search.execute then
  begin
    QContabpar_provision_regalia.Value := Search.ValueField;
    tdbctaRGP.SetFocus;
  end;
end;

procedure TfrmParametros.QContabpar_provision_regaliaGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if not QContabpar_provision_regalia.IsNull then
  begin
    Text := QContabpar_provision_regalia.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value  := QContabpar_provision_regalia.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tctaRGP.Text := dm.Query1.FieldByName('cat_nombre').AsString
    else
      tctaRGP.Text := '';
  end
  else
    tctaRGP.Text := '';
end;



procedure TfrmParametros.QContabpar_docnc_cxpGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QContabpar_docnc_cxp.IsNull then
  begin
    Text := QContabpar_docnc_cxp.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tdo_nombre from tiposdoc');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tdo_Codigo = :tdo');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('tdo').Value  := QContabpar_docnc_cxp.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tNCProv.Text := dm.Query1.FieldByName('tdo_nombre').AsString
    else
      tNCProv.Text := '';
  end
  else
    tNCProv.Text := '';
end;

procedure TfrmParametros.SpeedButton17Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Cat�logo de Cuentas';
  if Search.execute then
  begin
    QContabpar_cta_mercancia_transito.Value := Search.ValueField;
    tdbtctamerctrans.SetFocus;
  end;
end;

procedure TfrmParametros.QContabpar_cta_mercancia_transitoGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if not QContabpar_cta_mercancia_transito.IsNull then
  begin
    Text := QContabpar_cta_mercancia_transito.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value  := QContabpar_cta_mercancia_transito.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tctamerctrans.Text := dm.Query1.FieldByName('cat_nombre').AsString
    else
      tctamerctrans.Text := '';
  end
  else
    tctamerctrans.Text := '';
end;

procedure TfrmParametros.QContabpar_docliqGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QContabpar_docliq.IsNull then
  begin
    Text := QContabpar_docliq.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tdo_nombre from tiposdoc');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tdo_Codigo = :tdo');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('tdo').Value  := QContabpar_docliq.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tdocliq.Text := dm.Query1.FieldByName('tdo_nombre').AsString
    else
      tdocliq.Text := '';
  end
  else
    tdocliq.Text := '';
end;

procedure TfrmParametros.QCuentasTicketNewRecord(DataSet: TDataSet);
begin
  QCuentasTicketemp_codigo.Value := dm.vp_cia;
end;

procedure TfrmParametros.SpeedButton19Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select tmo_nombre, tmo_codigo');
  Search.Query.Add('from tiposmov');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'tmo_codigo';
  Search.Title := 'Tipos de movimientos';
  if Search.execute then
  begin
    QParametrospar_movdc.Value := StrToInt(Search.ValueField);
    DBEdit112.SetFocus;
  end;
end;

procedure TfrmParametros.QParametrospar_movdcGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QParametrospar_movdc.IsNull then
  begin
    Text := IntToStr(QParametrospar_movdc.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tmo_nombre from tiposmov');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tmo_codigo = :tmo');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('tmo').Value := QParametrospar_movdc.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
      tmovdc.Text := ''
    else
      tmovdc.Text := dm.Query1.FieldByname('tmo_nombre').AsString;
  end;
end;

procedure TfrmParametros.QPasarBeforePost(DataSet: TDataSet);
begin
  QPasarTipo.Value := UpperCase(QPasarTipo.Value);
end;

procedure TfrmParametros.QContabpar_cta_itbis_compraGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QContabpar_cta_itbis_compra.IsNull then
  begin
    Text := QContabpar_cta_itbis_compra.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value  := QContabpar_cta_itbis_compra.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tCtaItbisComp.Text := dm.Query1.FieldByName('cat_nombre').AsString
    else
      tCtaItbisComp.Text := '';
  end
  else
    tCtaItbisComp.Text := '';
end;

procedure TfrmParametros.QContabpar_cta_interesesGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QContabpar_cta_intereses.IsNull then
  begin
    Text := QContabpar_cta_intereses.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value  := QContabpar_cta_intereses.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tctaingcobint.Text := dm.Query1.FieldByName('cat_nombre').AsString
    else
      tctaingcobint.Text := '';
  end
  else
    tctaingcobint.Text := '';
end;

procedure TfrmParametros.QContabpar_cta_retencion_itbisGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if not QContabpar_cta_retencion_itbis.IsNull then
  begin
    Text := QContabpar_cta_retencion_itbis.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value  := QContabpar_cta_retencion_itbis.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tctaretitbis.Text := dm.Query1.FieldByName('cat_nombre').AsString
    else
      tctaretitbis.Text := '';
  end
  else
    tctaretitbis.Text := '';
end;

procedure TfrmParametros.QContabpar_cta_retencion_isrGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if not QContabpar_cta_retencion_isr.IsNull then
  begin
    Text := QContabpar_cta_retencion_isr.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value  := QContabpar_cta_retencion_isr.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tctaretisr.Text := dm.Query1.FieldByName('cat_nombre').AsString
    else
      tctaretisr.Text := '';
  end
  else
    tctaretisr.Text := '';
end;

procedure TfrmParametros.QContabpar_doc_dev_compraGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QContabpar_doc_dev_compra.IsNull then
  begin
    Text := QContabpar_doc_dev_compra.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tdo_nombre from tiposdoc');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tdo_Codigo = :tdo');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('tdo').Value  := QContabpar_doc_dev_compra.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tnd_cxp.Text := dm.Query1.FieldByName('tdo_nombre').AsString
    else
      tnd_cxp.Text := '';
  end
  else
    tnd_cxp.Text := '';
end;

procedure TfrmParametros.QContabpar_doc_conduceGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QContabpar_doc_conduce.IsNull then
  begin
    Text := QContabpar_doc_conduce.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tdo_nombre from tiposdoc');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tdo_Codigo = :tdo');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('tdo').Value  := QContabpar_doc_conduce.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tDocCond.Text := dm.Query1.FieldByName('tdo_nombre').AsString
    else
      tDocCond.Text := '';
  end
  else
    tDocCond.Text := '';
end;

procedure TfrmParametros.QContabpar_doc_trans_bancoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QContabpar_doc_trans_banco.IsNull then
  begin
    Text := QContabpar_doc_trans_banco.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tdo_nombre from tiposdoc');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tdo_Codigo = :tdo');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('tdo').Value  := QContabpar_doc_trans_banco.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tDocTB.Text := dm.Query1.FieldByName('tdo_nombre').AsString
    else
      tDocTB.Text := '';
  end
  else
    tDocTB.Text := '';
end;

procedure TfrmParametros.FormCreate(Sender: TObject);
var x:Word;
begin
 Width := 625;
  Height:= 469;
   for x :=0 to frmParametros.ComponentCount -1 do
   begin
     if (frmParametros.Components[x] is TPanel) then
       begin
         (frmParametros.Components[x] as TPanel).Width := 437; //417;
         if frmParametros.Components[x].Name = 'pnFormatosImp' then
         (frmParametros.Components[x] as TPanel).Height:=  413 else
         (frmParametros.Components[x] as TPanel).Height:=  385;
         (frmParametros.Components[x] as TPanel).Left := 168;
         (frmParametros.Components[x] as TPanel).Top := 8;
       end;
   end;




end;

procedure TfrmParametros.adoRangoDescVtaNewRecord(DataSet: TDataSet);
begin
  dataset['emp_codigo']:= dm.QParametros['emp_codigo'];
  Dataset['porciento']:=0;
end;

procedure TfrmParametros.QTipoBeforePost(DataSet: TDataSet);
begin
CASE DBRadioGroup1.ItemIndex OF
0:QParametrosPAR_CODIGOPRODUCTO.Value := 'I';
1:QParametrosPAR_CODIGOPRODUCTO.Value := 'O';
2:QParametrosPAR_CODIGOPRODUCTO.Value := 'F';
end;
end;

procedure TfrmParametros.Btn_par_ctaresultadoClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta ');
  Search.Query.Add('from ContCatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Cuentas de Capital';
  if Search.execute then
  begin
    QContabPAR_CTARESULTADO.Value := Search.ValueField;
    dbedtpar_ctaresultado.SetFocus;
  end;

end;

procedure TfrmParametros.Btn_PAR_DOCCARGOSClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select tdo_nombre, tdo_codigo ');
  Search.Query.Add('from TiposDoc ');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'tdo_codigo';
  Search.Title := 'Tipo de Documentos';
  if Search.execute then
  begin
    QContabPAR_DOCCARGOS.Value := Search.ValueField;
    dbedtPAR_DOCCARGOS.SetFocus;
  end;


end;

procedure TfrmParametros.QContabpar_docnd_cxpGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QContabpar_docnd_cxp.IsNull then
  begin
    Text := QContabpar_docnd_cxp.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tdo_nombre from tiposdoc');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tdo_Codigo = :tdo');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('tdo').Value  := QContabpar_docnd_cxp.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tnd_cxp.Text := dm.Query1.FieldByName('tdo_nombre').AsString
    else
      tnd_cxp.Text := '';
  end
  else
    tnd_cxp.Text := '';
end;

procedure TfrmParametros.btNCProvClick(Sender: TObject);
begin
 Search.Query.Clear;
  Search.Query.Add('select tdo_nombre, tdo_codigo');
  Search.Query.Add('from tiposdoc');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'tdo_Codigo';
  Search.Title := 'Tipos de Documentos';
  if Search.execute then
  begin
    QContabpar_docnc_cxp.Value := Search.ValueField;
    tNCProv.SetFocus;
  end;
end;

procedure TfrmParametros.btnd_cxpClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select tdo_nombre, tdo_codigo');
  Search.Query.Add('from tiposdoc');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'tdo_Codigo';
  Search.Title := 'Tipos de Documentos';
  if Search.execute then
  begin
    QContabpar_doc_dev_compra.Value := Search.ValueField;
    tdbtnd_cxp.SetFocus;
  end;
end;

procedure TfrmParametros.btDocTBClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select tdo_nombre, tdo_codigo');
  Search.Query.Add('from tiposdoc');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'tdo_Codigo';
  Search.Title := 'Tipos de Documentos';
  if Search.execute then
  begin
    QContabpar_doc_trans_banco.Value := Search.ValueField;
    tdbtDocTB.SetFocus;
  end;
end;

procedure TfrmParametros.btDocCompraClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select tdo_nombre, tdo_codigo');
  Search.Query.Add('from tiposdoc');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'tdo_Codigo';
  Search.Title := 'Tipos de Documentos';
  if Search.execute then
  begin
    QContabPAR_DOCCOMPRAS.Value := Search.ValueField;
    tdbtDocCompra.SetFocus;
  end;
end;

procedure TfrmParametros.btDesemClick(Sender: TObject);
begin
 Search.Query.Clear;
  Search.Query.Add('select tdo_nombre, tdo_codigo');
  Search.Query.Add('from tiposdoc');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'tdo_Codigo';
  Search.Title := 'Tipos de Documentos';
  if Search.execute then
  begin
    QContabPAR_DOCDESEM.Value := Search.ValueField;
    tdbtDesem.SetFocus;
  end;
end;

procedure TfrmParametros.btDocLiqClick(Sender: TObject);
begin
 Search.Query.Clear;
  Search.Query.Add('select tdo_nombre, tdo_codigo');
  Search.Query.Add('from tiposdoc');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'tdo_Codigo';
  Search.Title := 'Tipos de Documentos';
  if Search.execute then
  begin
    QContabpar_docliq.Value := Search.ValueField;
    tdbtDocLiq.SetFocus;
  end;
end;

procedure TfrmParametros.btCtaItbisCompClick(Sender: TObject);
begin
 Search.Query.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and cat_tipo = '+#39+'AC'+#39);
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catalogo de Cuentas';
  if Search.execute then
  begin
    QContabpar_cta_itbis_compra.Value := Search.ValueField;
    tdbtCtaItbisComp.SetFocus;
end;
end;

procedure TfrmParametros.btctaingcobintClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and cat_tipo = '+#39+'IN'+#39);
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Cat�logo de Cuentas';
  if Search.execute then
  begin
    QContabpar_cta_intereses.Value := Search.ValueField;
    tdbtctaingcobint.SetFocus;
  end;
end;

procedure TfrmParametros.btctaretitbisClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and '+'cat_movimiento = '+#39+'S'+#39+ 'AND cat_tipo = '+#39+'PA'+#39);
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Cat�logo de Cuentas';
  if Search.execute then
  begin
    QContabpar_cta_retencion_itbis.Value := Search.ValueField;
    tdbtctaretitbis.SetFocus;
  end;
end;

procedure TfrmParametros.btctaretisrClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and '+'cat_movimiento = '+#39+'S'+#39+ 'AND cat_tipo = '+#39+'PA'+#39);
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Cat�logo de Cuentas';
  if Search.execute then
  begin
    QContabpar_cta_retencion_isr.Value := Search.ValueField;
    tdbtctaretisr.SetFocus;
  end;
end;

procedure TfrmParametros.btDocCondClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select tdo_nombre, tdo_codigo');
  Search.Query.Add('from tiposdoc');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'tdo_Codigo';
  Search.Title := 'Tipos de Documentos';
  if Search.execute then
  begin
    QContabpar_doc_conduce.Value := Search.ValueField;
    tdbtDocCond.SetFocus;
  end;
end;

procedure TfrmParametros.btNDCliClick(Sender: TObject);
begin
 Search.Query.Clear;
  Search.Query.Add('select tdo_nombre, tdo_codigo');
  Search.Query.Add('from tiposdoc');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'tdo_Codigo';
  Search.Title := 'Tipos de Documentos';
  if Search.execute then
  begin
    QContabPAR_DOCNDCLI.Value := Search.ValueField;
    tdbtNDCli.SetFocus;
  end;
end;

procedure TfrmParametros.btNCCliClick(Sender: TObject);
begin
 Search.Query.Clear;
  Search.Query.Add('select tdo_nombre, tdo_codigo');
  Search.Query.Add('from tiposdoc');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'tdo_Codigo';
  Search.Title := 'Tipos de Documentos';
  if Search.execute then
  begin
    QContabPAR_DOCNCCLI.Value := Search.ValueField;
    tdbtNCCli.SetFocus;
  end;
end;

procedure TfrmParametros.btRCClick(Sender: TObject);
begin
 Search.Query.Clear;
  Search.Query.Add('select tdo_nombre, tdo_codigo');
  Search.Query.Add('from tiposdoc');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'tdo_Codigo';
  Search.Title := 'Tipos de Documentos';
  if Search.execute then
  begin
    QContabPAR_DOCRC.Value := Search.ValueField;
    tdbtRC.SetFocus;
  end;
end;

procedure TfrmParametros.btCtaDescClick(Sender: TObject);
begin
 Search.Query.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and cat_tipo = '+#39+'CO'+#39);
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Cuentas de Costos';
  if Search.execute then
  begin
    QContabPAR_CTADESC.Value := Search.ValueField;
    tdbtCtaDesc.SetFocus;
end;
end;

procedure TfrmParametros.btCtaDescCompClick(Sender: TObject);
begin
Search.Query.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and cat_tipo = '+#39+'CO'+#39);
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Cuentas de Costos';
  if Search.execute then
  begin
    QContabPAR_CTADESCCOMP.Value := Search.ValueField;
    tdbtCtaDescComp.SetFocus;
end;
end;

procedure TfrmParametros.btctaselectivoadvClick(Sender: TObject);
begin
Search.Query.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and cat_tipo = '+#39+'PA'+#39);
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catalogo de Cuentas';
  if Search.execute then
  begin
    QContabPAR_CTA_SELECTIVO_AD.Value := Search.ValueField;
    tdbtctaselectivoadv.SetFocus;
end;
end;

procedure TfrmParametros.btselectivoconClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and '+'cat_movimiento = '+#39+'S'+#39+ 'AND cat_tipo = '+#39+'AC'+#39);
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catalogo de Cuentas';
  if Search.execute then
  begin
    QContabPAR_CTA_SELECTIVO_CON.Value := Search.ValueField;
    tdbtselectivocon.SetFocus;
end;
end;

procedure TfrmParametros.btctaSueldPagClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and cat_tipo = '+#39+'PA'+#39);
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catalogo de Cuentas';
  if Search.execute then
  begin
    QContabpar_ctasueldopagar.Value := Search.ValueField;
    tdbtctaSueldPag.SetFocus;
end;
end;

procedure TfrmParametros.btctaprimacontClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and cat_tipo = '+#39+'AC'+#39);
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catalogo de Cuentas';
  if Search.execute then
  begin
    QContabpar_cta_prima.Value := Search.ValueField;
    tdbtctaprimacont.SetFocus;
end;
end;

procedure TfrmParametros.btctaRGPClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and cat_tipo = '+#39+'GA'+#39);
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Cat�logo de Cuentas';
  if Search.execute then
  begin
    QContabpar_provision_regalia.Value := Search.ValueField;
    tdbctaRGP.SetFocus;
  end;
end;

procedure TfrmParametros.btctamerctransClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Cat�logo de Cuentas';
  if Search.execute then
  begin
    QContabpar_cta_mercancia_transito.Value := Search.ValueField;
    tdbtctamerctrans.SetFocus;
  end;
end;

procedure TfrmParametros.bPAR_SUC_NCFClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select suc_nombre, suc_codigo');
  Search.Query.Add('FROM Sucursales');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and suc_status = '+#39+'ACT'+#39);
  Search.ResultField := 'suc_codigo';
  Search.Title := 'Sucursales';
  if Search.execute then
  begin
    QParametrosPAR_SUC_NCF.Value := StrToInt(Search.ValueField);
    tdbPAR_SUC_NCF.SetFocus;
  end;
end;

procedure TfrmParametros.tdbPAR_SUC_NCFKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in ['0'..'9',#8]) then
    begin
      key:=#0;
      end;
end;

procedure TfrmParametros.tdbPAR_SUC_NCFChange(Sender: TObject);
begin
if Trim(tdbPAR_SUC_NCF.Text) <> '' then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select suc_nombre from Sucursales');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('suc').Value  := StrToInt(tdbPAR_SUC_NCF.Text);
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      edSucursal.Text := dm.Query1.FieldByName('suc_nombre').AsString
    else
      edSucursal.Clear;
  Exit;
  end
  else
    edSucursal.Clear;
end;

procedure TfrmParametros.QContabpar_ctaproplegventGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QContabpar_ctaproplegvent.IsNull then
  begin
    Text := QContabpar_ctaproplegvent.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value  := QContabpar_ctaproplegvent.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      edtctaproplegvent.Text := dm.Query1.FieldByName('cat_nombre').AsString
    else
      edtctaproplegvent.Text := '';
  end
  else
    edtctaproplegvent.Text := '';
end;

procedure TfrmParametros.btctaservcompClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and '+'cat_movimiento = '+#39+'S'+#39+ 'AND cat_tipo = '+#39+'PA'+#39);
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Cat�logo de Cuentas';
  if Search.execute then
  begin
    QContabpar_ctaproplegvent.Value := Search.ValueField;
    dbedtpar_ctaproplegvent.SetFocus;
  end;
end;

procedure TfrmParametros.btnbtctaotrosimpClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and '+'cat_movimiento = '+#39+'S'+#39+ 'AND cat_tipo = '+#39+'AC'+#39);
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Cat�logo de Cuentas';
  if Search.execute then
  begin
    QContabpar_ctaotrosimp.Value := Search.ValueField;
    dbedtpar_ctaotrosimp.SetFocus;
  end;
end;

procedure TfrmParametros.QContabpar_ctaotrosimpGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QContabpar_ctaotrosimp.IsNull then
  begin
    Text := QContabpar_ctaotrosimp.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value  := QContabpar_ctaotrosimp.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      edttctaotrosimp.Text := dm.Query1.FieldByName('cat_nombre').AsString
    else
      edttctaotrosimp.Text := '';
  end
  else
    edttctaotrosimp.Text := '';
end;

procedure TfrmParametros.btnpar_ctafletecompClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and '+'cat_movimiento = '+#39+'S'+#39+ 'AND cat_tipo = '+#39+'AC'+#39);
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Cat�logo de Cuentas';
  if Search.execute then
  begin
    QContabpar_ctafletecomp.Value := Search.ValueField;
    dbedtpar_ctafletecomp.SetFocus;
  end;
end;

procedure TfrmParametros.btnpar_ctaproplegcompClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and '+'cat_movimiento = '+#39+'S'+#39+ 'AND cat_tipo = '+#39+'AC'+#39);
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Cat�logo de Cuentas';
  if Search.execute then
  begin
    QContabpar_ctaproplegcomp.Value := Search.ValueField;
    dbedtpar_ctaproplegcomp.SetFocus;
  end;
end;

procedure TfrmParametros.QContabpar_ctaproplegcompGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
if not QContabpar_ctaproplegcomp.IsNull then
  begin
    Text := QContabpar_ctaproplegcomp.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value  := Text;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      edtpar_ctaproplegcomp.Text := dm.Query1.FieldByName('cat_nombre').AsString
    else
      edtpar_ctaproplegcomp.Text := '';
  end
  else
    edtpar_ctaproplegcomp.Text := '';
end;

procedure TfrmParametros.QContabpar_ctafletecompGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QContabpar_ctafletecomp.IsNull then
  begin
    Text := QContabpar_ctafletecomp.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value  := Text;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      edtpar_ctafletecomp.Text := dm.Query1.FieldByName('cat_nombre').AsString
    else
      edtpar_ctafletecomp.Text := '';
  end
  else
    edtpar_ctafletecomp.Text := '';
end;

procedure TfrmParametros.btnPruebaEmailClick(Sender: TObject);
begin
{     frmMain.IdSMTP1.Host     := QParametrospar_mailservidor.Value;
     frmMain.IdSMTP1.Port     := QParametrospar_mailpuerto.AsInteger;
     frmMain.IdSMTP1.Username := QParametrospar_mailusuario.Value;
     frmMain.IdSMTP1.Password := QParametrospar_mailclave.Value;
     frmMain.IdSMTP1.Connect();
     if frmMain.IdSMTP1.Connected = True then begin
     ShowMessage('Conexion existosa...');
     Abort;
     end
     else begin
     ShowMessage('Conexion Fallida...');
     end;}

frmMain.EnviarCorreo(QParametrospar_mailusuario.Text,'Prueba del Correo','','Prueba del Sistema!');
end;

procedure TfrmParametros.btnNuevoClick(Sender: TObject);
begin
if qParamAtraso.Active then
qParamAtraso.Append;
DBGrid_1.SetFocus;
end;

procedure TfrmParametros.btnEditarClick(Sender: TObject);
begin
if qParamAtraso.Active then
qParamAtraso.Edit;
DBGrid_1.SetFocus;
end;

procedure TfrmParametros.btnGrabarClick(Sender: TObject);
begin
if Trim(qParamAtrasoParametro.Text)='' then begin
  ShowMessage('Debes indicar el Parametro...');
  DBGrid_1.SetFocus;
  Exit;
end;

if Trim(qParamAtrasoCodigo.Text)='' then begin
  ShowMessage('Debes indicar el Codigo...');
  DBGrid_1.SetFocus;
  Exit;
end;

If qParamAtraso.State in [dsedit] then begin
  ShowMessage('Parametros Atraso Modificados correctamente');
end;

If qParamAtraso.State in [dsinsert] then begin
  ShowMessage('Parametros Atraso Insertados correctamente');
end;
end;


procedure TfrmParametros.btnEliminarClick(Sender: TObject);
begin
if qParamAtraso.Active then begin
if MessageDlg('Desea Eliminar '+qParamAtrasoParametro.Text+'?',mtConfirmation,[mbYes,mbno],0)=mryes then begin
 qParamAtraso.Delete;
end;
end;
end;

procedure TfrmParametros.btnCancelarClick(Sender: TObject);
begin
if qParamAtraso.Active then begin
if qParamAtraso.State in [dsinsert, dsedit] then begin
if MessageDlg('Desea Cancelar el Registro?',mtConfirmation,[mbYes,mbno],0)=mryes then begin
 qParamAtraso.Cancel;

end;
end;
end;
end;

procedure TfrmParametros.qParamAtrasoAfterCancel(DataSet: TDataSet);
begin
btnNuevo.Enabled    := True;
btnEditar.Enabled   := btnNuevo.Enabled;
btnEliminar.Enabled := btnNuevo.Enabled;
btnGrabar.Enabled   := False;
btnCancelar.Enabled := btnGrabar.Enabled;
end;

procedure TfrmParametros.qParamAtrasoAfterPost(DataSet: TDataSet);
begin
btnNuevo.Enabled    := True;
btnEditar.Enabled   := btnNuevo.Enabled;
btnEliminar.Enabled := btnNuevo.Enabled;
btnGrabar.Enabled   := False;
btnCancelar.Enabled := btnGrabar.Enabled;
end;

procedure TfrmParametros.qParamAtrasoAfterEdit(DataSet: TDataSet);
begin
btnNuevo.Enabled    := False;
btnEditar.Enabled   := btnNuevo.Enabled;
btnEliminar.Enabled := btnNuevo.Enabled;
btnGrabar.Enabled   := True;
btnCancelar.Enabled := btnGrabar.Enabled;
end;

procedure TfrmParametros.qParamAtrasoAfterInsert(DataSet: TDataSet);
begin
btnNuevo.Enabled    := False;
btnEditar.Enabled   := btnNuevo.Enabled;
btnEliminar.Enabled := btnNuevo.Enabled;
btnGrabar.Enabled   := True;
btnCancelar.Enabled := btnGrabar.Enabled;
end;

procedure TfrmParametros.QParametrosBeforePost(DataSet: TDataSet);
begin
QParametrospar_mailclave.Value := MimeEncodeString(EdtPassMail.Text);
if QParametrosPAR_SUC_NCF.IsNull then
QParametrosPAR_SUC_NCF.Value := 0;
end;

procedure TfrmParametros.QParametrosAfterOpen(DataSet: TDataSet);
begin
EdtPassMail.Text := MimeDecodeString(QParametrospar_mailclave.Text);
adoPrinters.Close;
adoPrinters.Open;
adoPrinterxPC.Close;
adoPrinterxPC.Open;
qAsignaVerifione.Close;
qAsignaVerifione.Open;

end;

procedure TfrmParametros.btnDeptoPesosClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select dep_nombre, dep_codigo');
  Search.Query.Add('from departamentos');
  Search.Query.Add('where emp_codigo = '+IntToStr(QParametrosPAR_INVEMPRESA.Value));
  Search.ResultField := 'dep_codigo';
  Search.Title := 'Departamentos';
  if Search.execute then
  begin
    QParametrosdepa_codigo_peso.Value := StrToInt(Search.ValueField);
    dbedtdepa_codigo_peso.SetFocus;
  end;
end;

procedure TfrmParametros.QParametrosdepa_codigo_pesoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QParametrosdepa_codigo_peso.IsNull then
  begin
    Text := IntToStr(QParametrosdepa_codigo_peso.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select dep_nombre from departamentos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and dep_codigo = :dep');
    dm.Query1.Parameters.ParamByName('emp').Value := QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.ParamByName('dep').Value := QParametrosdepa_codigo_peso.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      edtDeptoPeso.Text := dm.Query1.FieldByname('dep_nombre').AsString
      else begin
    talmacenemp.Text := '';
    dbedtdepa_codigo_peso.SetFocus;
    Exit;
end;

  end;
end;

procedure TfrmParametros.btnListProdPesoClick(Sender: TObject);
begin
dm.GenerarArchivoBalanza;
end;

procedure TfrmParametros.dsadoPrinterxPCDataChange(Sender: TObject;
  Field: TField);
begin
    dbcSustituirCopia.Visible := dsadoPrinterxPC.DataSet['cntCopia'] > 0;
end;

procedure TfrmParametros.ToolButton9Click(Sender: TObject);
begin
adoPrinterxPC.Prior();
end;

procedure TfrmParametros.ToolButton10Click(Sender: TObject);
begin
adoPrinterxPC.Next();
end;

procedure TfrmParametros.ToolButton11Click(Sender: TObject);
begin
  adoPrinterxPC.Insert;
  adoPrinterxPCVelocidad.Value := 9600;
  adoPrinterxPCcntCopia.Value  := 0;
  pcname.SetFocus;
end;

procedure TfrmParametros.ToolButton12Click(Sender: TObject);
begin
adoPrinterxPC.Edit;
pcname.SetFocus;
end;

procedure TfrmParametros.ToolButton13Click(Sender: TObject);
begin
 adoPrinterxPC.Delete;
end;

procedure TfrmParametros.ToolButton14Click(Sender: TObject);
begin
  adoPrinterxPC.Cancel;
end;

procedure TfrmParametros.ToolButton15Click(Sender: TObject);
begin
  try
    adoPrinterxPC.Post;
  except
    raise;
  end;  
end;

procedure TfrmParametros.btnAnteriorClick(Sender: TObject);
begin
  adoPrinters.Prior;
end;

procedure TfrmParametros.btnProximoClick(Sender: TObject);
begin
  adoPrinters.Next;
end;

procedure TfrmParametros.btnInsertarClick(Sender: TObject);
begin
  adoPrinters.Insert;
  dbeNombre.SetFocus();
end;

procedure TfrmParametros.btnEditarPrinterClick(Sender: TObject);
begin
adoPrinters.Edit;
end;

procedure TfrmParametros.btnBorrarClick(Sender: TObject);
begin
  adoPrinters.Delete;
end;

procedure TfrmParametros.btnCancelarPrinterClick(Sender: TObject);
begin
  adoPrinters.Cancel;
end;

procedure TfrmParametros.btnGrabarPrinterClick(Sender: TObject);
begin
 if adoPrinters.State = dsInsert then begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(IDPrinter),0)+1 sec from Printers');
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    adoPrinters['IDPrinter']:=  dm.Query1.FieldByName('sec').AsString;
end;
adoPrinters.Post;
end; 

procedure TfrmParametros.adoPrintersNewRecord(DataSet: TDataSet);
begin
  dataset['Tipo']:='P';
  dataset['PrecioconItbis'] :=  'N';
end;

procedure TfrmParametros.dsPrintersStateChange(Sender: TObject);
begin
if dsPrinters.State in [dsedit, dsinsert] then begin
  btnAnterior.Enabled := False;
  btnProximo.Enabled := False;
  btnInsertar.Enabled := False;
  btnEditarPrinter.Enabled := False;
  btnBorrar.Enabled := False;
  btnCancelarPrinter.Enabled := True;
  btnGrabarPrinter.Enabled := True;
end
else
begin
  btnAnterior.Enabled := True;
  btnProximo.Enabled := True;
  btnInsertar.Enabled := True;
  btnEditarPrinter.Enabled := True;
  btnBorrar.Enabled := True;
  btnCancelarPrinter.Enabled := False;
  btnGrabarPrinter.Enabled := False;
end;
end;

procedure TfrmParametros.ToolButton1Click(Sender: TObject);
begin
qAsignaVerifione.Prior;
end;

procedure TfrmParametros.ToolButton2Click(Sender: TObject);
begin
qAsignaVerifione.Next;
end;

procedure TfrmParametros.ToolButton3Click(Sender: TObject);
begin
qAsignaVerifione.Insert;
DBEdit26.SetFocus;
end;

procedure TfrmParametros.ToolButton4Click(Sender: TObject);
begin
qAsignaVerifione.Edit;
end;

procedure TfrmParametros.ToolButton5Click(Sender: TObject);
begin
qAsignaVerifione.Delete;
end;

procedure TfrmParametros.ToolButton6Click(Sender: TObject);
begin
qAsignaVerifione.Cancel;
end;

procedure TfrmParametros.ToolButton7Click(Sender: TObject);
begin
qAsignaVerifione.Post;
end;

procedure TfrmParametros.qAsignaVerifioneNewRecord(DataSet: TDataSet);
begin
qAsignaVerifionePortCaja.Value := 2018;
qAsignaVerifionePortPOS.Value  := 7060;
qAsignaVerifioneTimeOut.Value  := 30790;
end;

procedure TfrmParametros.btnpar_ctadevventasClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and '+'cat_movimiento = '+#39+'S'+#39+ 'AND cat_tipo = '+#39+'PA'+#39);
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Cat�logo de Cuentas';
  if Search.execute then
  begin
    QContabpar_ctadevventas.Value := Search.ValueField;
    dbedtpar_ctadevventas.SetFocus;
  end;
end;

procedure TfrmParametros.QContabpar_ctadevventasGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QContabpar_ctadevventas.IsNull then
  begin
    Text := QContabpar_ctadevventas.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value  := Text;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      Edt_ctadevventas.Text := dm.Query1.FieldByName('cat_nombre').AsString
    else
      edtpar_ctafletecomp.Text := '';
  end
  else
    edtpar_ctafletecomp.Text := '';
end;

procedure TfrmParametros.edpuertoChange(Sender: TObject);
VAR
  X :  Integer;
begin
DBComboBox12.Clear;
If Trim(edpuerto.Text)= '' THEN BEGIN
  DBComboBox12.Clear;
  for X := 1 TO 15 DO BEGIN
  DBComboBox12.Items.Add('COM'+IntToStr(X));
  end;
  for X := 1 TO 5 DO BEGIN
  DBComboBox12.Items.Add('LPT'+IntToStr(X));
  end;
  DBComboBox12.Items.Add(edpuerto.Text);
end
else
BEGIN
  for X := 1 TO 15 DO BEGIN
  DBComboBox12.Items.Add('COM'+IntToStr(X));
  end;
  for X := 1 TO 5 DO BEGIN
  DBComboBox12.Items.Add('LPT'+IntToStr(X));
  end;
  DBComboBox12.Items.Add(edpuerto.Text);
end;

end;

end.
