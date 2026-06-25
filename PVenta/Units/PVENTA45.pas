unit PVENTA45;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, DBCtrls, StdCtrls, Buttons, DB, IBCustomDataSet, IBQuery,
  IBUpdateSQL, ExtCtrls, Grids, DBGrids, ComCtrls, ADODB,
  QuerySearchDlgADO, Math, DBGridObj, Menus;

type
  TfrmFacProvee = class(TForm)
    QFactura: TADOQuery;
    QFacturaEMP_CODIGO: TIntegerField;
    QFacturaFAC_ABONO: TFloatField;
    QFacturaFAC_DESCUENTO: TFloatField;
    QFacturaFAC_DIAS: TIntegerField;
    QFacturaFAC_EXENTO: TFloatField;
    QFacturaFAC_FECHA: TDateTimeField;
    QFacturaFAC_GRABADO: TFloatField;
    QFacturaFAC_NUMERO: TIBStringField;
    QFacturaFAC_STATUS: TIBStringField;
    QFacturaFAC_TOTAL: TFloatField;
    QFacturaFAC_VENCE: TDateTimeField;
    QFacturaSUP_CODIGO: TIntegerField;
    dsFactura: TDataSource;
    QDetalle: TADOQuery;
    QDetalleDET_CANTIDAD: TFloatField;
    QDetalleDET_CONITBIS: TIBStringField;
    QDetalleDET_ITBIS: TFloatField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    QDetalleFAC_NUMERO: TIBStringField;
    QDetallePRO_CODIGO: TIntegerField;
    QDetallePRO_NOMBRE: TIBStringField;
    QDetallePRO_RFABRIC: TIBStringField;
    QDetallePRO_RORIGINAL: TIBStringField;
    QDetalleSUP_CODIGO: TIntegerField;
    QDetalleDET_COSTO: TFloatField;
    dsDetalle: TDataSource;
    Panel1: TPanel;
    Label2: TLabel;
    btProveedor: TSpeedButton;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    Panel5: TPanel;
    btGRabar: TSpeedButton;
    btLimpiar: TSpeedButton;
    BitBtn6: TSpeedButton;
    btElimina: TSpeedButton;
    tProveedor: TEdit;
    QFacturaTotal: TFloatField;
    Search: TQrySearchDlgADO;
    QFacturaALM_CODIGO: TIntegerField;
    Label7: TLabel;
    btAlmacen: TSpeedButton;
    tAlmacen: TEdit;
    QFacturaUSU_CODIGO: TIntegerField;
    QDetalleDET_FECHAVENCE: TDateTimeField;
    QDetalleDET_LOTE: TIntegerField;
    QDetalleValor: TFloatField;
    QFacturaFAC_ITBIS: TFloatField;
    Label10: TLabel;
    DBEdit6: TDBEdit;
    BitBtn2: TSpeedButton;
    Query1: TADOQuery;
    QDetalleDET_VENCE: TIBStringField;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    QCuentas: TADOQuery;
    QCuentasCAT_CUENTA: TIBStringField;
    QCuentasCAT_NOMBRE: TIBStringField;
    QCuentasDET_MONTO: TFloatField;
    QCuentasDET_ORIGEN: TIBStringField;
    QCuentasDET_SECUENCIA: TIntegerField;
    QCuentasEMP_CODIGO: TIntegerField;
    QCuentasFAC_NUMERO: TIBStringField;
    QCuentasSUP_CODIGO: TIntegerField;
    dsCuentas: TDataSource;
    btBuscaCta: TSpeedButton;
    btEliminaCta: TSpeedButton;
    dbAlmacen: TDBEdit;
    QDetalleDET_CANTDEVUELTA: TFloatField;
    QDetalleDET_MEDIDA: TIBStringField;
    QDetallePrecioItbis: TFloatField;
    QDetalleCalcItbis: TFloatField;
    QDetalleDET_COSTOITBIS: TFloatField;
    QDetalleCalcDesc: TFloatField;
    QDetalleDET_COSTOUND: TFloatField;
    QDetalleDET_COSTOEMP: TFloatField;
    QFacturaPED_NUMERO: TIntegerField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Grid: TDBGrid;
    pnprecios: TPanel;
    QDetallePRO_BENEFICIO: TFloatField;
    QDetallePRO_BENEFICIO2: TFloatField;
    QDetallePRO_BENEFICIO3: TFloatField;
    QDetallePRO_BENEFICIO4: TFloatField;
    QDetallePRO_PRECIO1: TFloatField;
    QDetallePRO_PRECIO2: TFloatField;
    QDetallePRO_PRECIO3: TFloatField;
    QDetallePRO_PRECIO4: TFloatField;
    QDetallePRO_PRECIOMINIMO: TFloatField;
    QDetallePRO_PRECIOMINIMOEMP: TFloatField;
    QFacturaCEN_CODIGO: TIntegerField;
    QFacturaFAC_TASA: TFloatField;
    QCentro: TADOQuery;
    dsCentro: TDataSource;
    QFacturaSUC_CODIGO: TIntegerField;
    Label21: TLabel;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    QFacturaMON_CODIGO: TIntegerField;
    edProveedor: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    QDetalledet_oferta: TBCDField;
    QDetalledet_etiquetas: TIntegerField;
    QFacturafac_total_oferta: TBCDField;
    QDetallepro_detallado: TStringField;
    QDetallepro_pasaoferta: TStringField;
    sbPrecios: TScrollBox;
    Label14: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    DBEdit17: TDBEdit;
    Label17: TLabel;
    DBEdit16: TDBEdit;
    DBEdit18: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    lbCR: TStaticText;
    lbDB: TStaticText;
    lbBAL: TStaticText;
    QFacturafac_selectivo: TBCDField;
    QFacturafac_flete: TBCDField;
    Label26: TLabel;
    DBEdit25: TDBEdit;
    QDetallePrecioItbisEmp: TFloatField;
    QDetalleCalcItbisEmp: TFloatField;
    QDetalleCalcDescEmp: TFloatField;
    QDetalleValorEmp: TFloatField;
    btBuscaProd: TSpeedButton;
    Memo1: TMemo;
    QUtil: TADOQuery;
    lbgrabados: TStaticText;
    lbexcentos: TStaticText;
    lbcant: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    QFacturaNCF: TStringField;
    Label3: TLabel;
    DBEdit19: TDBEdit;
    Query2: TADOQuery;
    Label27: TLabel;
    DBEdit20: TDBEdit;
    Label19: TLabel;
    DBEdit10: TDBEdit;
    QFacturafac_selectivo_ad: TBCDField;
    BitBtn1: TSpeedButton;
    QFacturaent_numero: TIntegerField;
    Label28: TLabel;
    Label22: TLabel;
    DBEdit21: TDBEdit;
    btTipo: TSpeedButton;
    tTipo: TEdit;
    QFacturatip_codigo: TIntegerField;
    QFacturafac_concepto: TStringField;
    DBEdit22: TDBEdit;
    Label29: TLabel;
    btmoneda: TSpeedButton;
    tmoneda: TEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    Label30: TLabel;
    QDetalleValorItbisUnd: TFloatField;
    QDetalleValorItbisEmp: TFloatField;
    QDetalleCalcCosto: TFloatField;
    QDetalleCalcCostoEmp: TFloatField;
    QDetallepro_cantempaque: TBCDField;
    Label31: TLabel;
    Label32: TLabel;
    QDetalledet_costound_ant: TBCDField;
    QDetalledet_costoemp_ant: TBCDField;
    QDetalledet_cambiarprecio: TStringField;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    Label33: TLabel;
    DBEdit30: TDBEdit;
    QDetalleCostoNeto: TFloatField;
    QFacturafac_retencion: TBCDField;
    lbdiferencia: TStaticText;
    Labeldiferencia: TLabel;
    TabSheet4: TTabSheet;
    QFacturaCashflow_Grupo: TIntegerField;
    QFacturaCashflow_Subgrupo: TIntegerField;
    QFacturaCashflow_Concepto: TIntegerField;
    DBEdit23: TDBEdit;
    SpeedButton1: TSpeedButton;
    tgrupo: TEdit;
    DBEdit31: TDBEdit;
    SpeedButton2: TSpeedButton;
    tsubgrupo: TEdit;
    DBEdit32: TDBEdit;
    SpeedButton5: TSpeedButton;
    tconcepto: TEdit;
    Label24: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    DBEdit33: TDBEdit;
    QFacturamapid: TIntegerField;
    QFacturadetallemapid: TIntegerField;
    Label37: TLabel;
    Label38: TLabel;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    Label25: TLabel;
    DBEdit24: TDBEdit;
    QFacturafac_retencion_isr: TBCDField;
    Label39: TLabel;
    DBEdit36: TDBEdit;
    btprecios: TBitBtn;
    QCuentasCalculo: TStringField;
    QDetalledet_Descuento: TBCDField;
    QUnidades: TADOQuery;
    QUnidadesemp_codigo: TIntegerField;
    QUnidadessup_codigo: TIntegerField;
    QUnidadesfac_numero: TStringField;
    QUnidadespro_codigo: TIntegerField;
    QUnidadesUnidadID: TStringField;
    QUnidadesPrecio: TBCDField;
    QUnidadesCantidad: TBCDField;
    QUnidadesSecuencia: TIntegerField;
    QUnidadesCredito: TBCDField;
    QUnidadesMinimo: TBCDField;
    Label23: TLabel;
    GridCuentas: TDBGridObj;
    spcentros: TSpeedButton;
    QDetallepro_unidad_medida: TStringField;
    QDetalleUnidadID: TStringField;
    QDetalleMedida_Precio1: TBCDField;
    QDetalleMedida_Precio2: TBCDField;
    QDetalleMedida_Precio3: TBCDField;
    QDetalleMedida_Precio4: TBCDField;
    QDetalledet_cant_unidad_medida: TBCDField;
    QMedidas: TADOQuery;
    QMedidasPrecio: TBCDField;
    QMedidasCantidad: TBCDField;
    QMedidasNombre: TStringField;
    QMedidasCredito: TBCDField;
    QMedidasMinimo: TBCDField;
    QMedidasUnidadID: TStringField;
    QDetalledet_cant_pendiente: TBCDField;
    PopupMenu1: TPopupMenu;
    Buscarproductoenellistado1: TMenuItem;
    Lista: TListBox;
    LB_1: TLabel;
    tdbfac_servicios: TDBEdit;
    LB_2: TLabel;
    tdbfac_proplegal: TDBEdit;
    LB_3: TLabel;
    tdbTipo_Ret_Codigo: TDBEdit;
    bTipoRet: TSpeedButton;
    edtTipoRet: TEdit;
    QFacturafac_servicios: TCurrencyField;
    QFacturafac_proplegal: TCurrencyField;
    QFacturaTipo_Ret_Codigo: TIntegerField;
    LB_4: TLabel;
    tdbfac_otrosimpuestos: TDBEdit;
    QFacturafac_otrosimpuestos: TFloatField;
    LB_5: TLabel;
    tdbfac_form_pago: TDBEdit;
    bfac_form_pago: TSpeedButton;
    edtfac_form_pago: TEdit;
    QFacturafac_form_pago: TIntegerField;
    LB_6: TLabel;
    tdbpro_montoitbis: TDBEdit;
    tdbPRO_PRECIOMENOR: TDBEdit;
    LB_7: TLabel;
    QCentroemp_codigo: TIntegerField;
    QCentrosup_codigo: TIntegerField;
    QCentrofac_numero: TStringField;
    QCentrocen_codigo: TIntegerField;
    QCentrodet_secuencia: TIntegerField;
    QCentrocen_nombre: TStringField;
    QCentrodet_monto: TCurrencyField;
    QCentrocen_referencia: TStringField;
    QCentrosub_referencia: TStringField;
    QCentrosub_secuencia: TIntegerField;
    QCentrocat_cuenta: TStringField;
    Pantalladeproductos1: TMenuItem;
    TSucLoc: TEdit;
    btLocalidad: TSpeedButton;
    dbedtcont_numeroSucursal: TDBEdit;
    lbLocSuc: TLabel;
    QFacturacont_numeroSucursal: TStringField;
    QFacturaFAC_FECHA_EFECTIVA: TDateTimeField;
    QFacturanumero_orden: TStringField;
    QFacturaemp_rnc: TStringField;
    QFacturasup_rnc: TStringField;
    QFacturaeNCF: TStringField;
    QFacturaTipoeNCF: TIntegerField;
    procedure QFacturaNewRecord(DataSet: TDataSet);
    procedure QFacturaFAC_DIASChange(Sender: TField);
    procedure QFacturaFAC_NUMEROChange(Sender: TField);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridEnter(Sender: TObject);
    procedure GridColEnter(Sender: TObject);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure btEliminaClick(Sender: TObject);
    procedure btLimpiarClick(Sender: TObject);
    procedure btBuscaProdClick(Sender: TObject);
    procedure QDetallePRO_CODIGOChange(Sender: TField);
    procedure QDetallePRO_RFABRICChange(Sender: TField);
    procedure QDetallePRO_RORIGINALChange(Sender: TField);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn6Click(Sender: TObject);
    procedure QFacturaCalcFields(DataSet: TDataSet);
    procedure btGRabarClick(Sender: TObject);
    procedure btProveedorClick(Sender: TObject);
    procedure QFacturaBeforePost(DataSet: TDataSet);
    procedure btAlmacenClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dsFacturaStateChange(Sender: TObject);
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure QFacturaFAC_GRABADOChange(Sender: TField);
    procedure QDetalleDET_CONITBISChange(Sender: TField);
    procedure QDetalleBeforePost(DataSet: TDataSet);
    procedure FormPaint(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure QDetalleBeforeDelete(DataSet: TDataSet);
    procedure QFacturaAfterEdit(DataSet: TDataSet);
    procedure QDetalleAfterEdit(DataSet: TDataSet);
    procedure QFacturaFAC_DESCUENTOChange(Sender: TField);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure GridCuentasColEnter(Sender: TObject);
    procedure GridCuentasEnter(Sender: TObject);
    procedure GridCuentasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QCuentasCAT_CUENTAChange(Sender: TField);
    procedure btBuscaCtaClick(Sender: TObject);
    procedure btEliminaCtaClick(Sender: TObject);
    procedure QFacturaSUP_CODIGOChange(Sender: TField);
    procedure QFacturaFAC_EXENTOChange(Sender: TField);
    procedure QFacturaFAC_ITBISChange(Sender: TField);
    procedure QFacturaALM_CODIGOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QCuentasAfterPost(DataSet: TDataSet);
    procedure QCuentasAfterDelete(DataSet: TDataSet);
    procedure QCuentasAfterEdit(DataSet: TDataSet);
    procedure QCuentasBeforeDelete(DataSet: TDataSet);
    procedure QCuentasAfterInsert(DataSet: TDataSet);
    procedure QDetalleNewRecord(DataSet: TDataSet);
    procedure QDetalleDET_MEDIDAChange(Sender: TField);
    procedure dsFacturaDataChange(Sender: TObject; Field: TField);
    procedure PageControl1Enter(Sender: TObject);
    procedure QDetallePRO_BENEFICIO3Change(Sender: TField);
    procedure QCentroNewRecord(DataSet: TDataSet);
    procedure btmonedaClick(Sender: TObject);
    procedure QFacturaMON_CODIGOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QFacturaMON_CODIGOChange(Sender: TField);
    procedure QFacturaSUP_CODIGOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QDetalleDET_COSTOChange(Sender: TField);
    procedure QFacturafac_selectivoChange(Sender: TField);
    procedure QFacturafac_fleteChange(Sender: TField);
    procedure QDetalleDET_COSTOEMPChange(Sender: TField);
    procedure QFacturafac_selectivo_adChange(Sender: TField);
    procedure BitBtn1Click(Sender: TObject);
    procedure btTipoClick(Sender: TObject);
    procedure QFacturatip_codigoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure GridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure QFacturaFAC_FECHAChange(Sender: TField);
    procedure QDetallePRO_PRECIO1Change(Sender: TField);
    procedure DBEdit12KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit14KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit17KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit18KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure QFacturaCashflow_GrupoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QFacturaCashflow_SubgrupoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QFacturaCashflow_ConceptoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QFacturafac_retencionChange(Sender: TField);
    procedure QFacturafac_retencion_isrChange(Sender: TField);
    procedure btpreciosClick(Sender: TObject);
    procedure QCuentasCalcFields(DataSet: TDataSet);
    procedure spcentrosClick(Sender: TObject);
    procedure GridCuentasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure QDetallepro_unidad_medidaChange(Sender: TField);
    procedure Buscarproductoenellistado1Click(Sender: TObject);
    procedure QDetalleBeforeEdit(DataSet: TDataSet);
    procedure bTipoRetClick(Sender: TObject);
    procedure QFacturaTipo_Ret_CodigoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure bfac_form_pagoClick(Sender: TObject);
    procedure QFacturafac_form_pagoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QDetalleAfterPost(DataSet: TDataSet);
    procedure QFacturafac_serviciosChange(Sender: TField);
    procedure QFacturafac_proplegalChange(Sender: TField);
    procedure QFacturafac_otrosimpuestosChange(Sender: TField);
    procedure QDetallePRO_BENEFICIOChange(Sender: TField);
    procedure QDetallePRO_BENEFICIO2Change(Sender: TField);
    procedure QDetallePRO_BENEFICIO4Change(Sender: TField);
    procedure QDetalleDET_COSTOUNDChange(Sender: TField);
    procedure Pantalladeproductos1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbedtcont_numeroSucursalChange(Sender: TObject);
    procedure dbedtcont_numeroSucursalKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure btLocalidadClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Alm, Sup, Accion : integer;
    Num, CtaCxP, CtaCompra, TipoProv, MedidaAlm, DecisionPrecio, RNC : String;
    Modificar, Verifica, vMod : Boolean;
    Creditos, Debitos, Exento, Grabado, TotalProducto, TotalCentros : Double;
    Totaliza, Buscando : Boolean;
    Procedure PuedeModificar;
    Procedure Totalizar;
    Procedure TotalizarProd;
    Procedure TotalizaCentros;
    procedure BuscaProd (campo : string);
    procedure precios;
    procedure RepBarra;
    function ClavePrecio(Monto : Double) : String;

    function ValidarENCFDisponible(
      AEmp: Integer; ATipo: Integer;
      out AMsg: string;
      out ASiguienteCorrelativo: Int64
    ): Boolean;

  end;

var
  frmFacProvee: TfrmFacProvee;
  dias_creditos: integer = 30;
implementation

uses PVENTA33, SIGMA01, SIGMA00, PVENTA141, RVENTA76, PVENTA13, PVENTA214,
  PVENTA227, SIGMA08, PVENTA15,FacturacionElectronicaDGII_TLB;

{$R *.dfm}

function TfrmFacProvee.ValidarENCFDisponible(
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


procedure TfrmFacProvee.QFacturaNewRecord(DataSet: TDataSet);
begin
  Lista.Items.Clear;

  //unidades de medida
  if dm.QParametrospar_inv_unidad_medida.Value = 'True' then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select Nombre from UnidadMedida');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Open;

    Grid.Columns[3].PickList.Clear;
    dm.Query1.DisableControls;
    while not dm.Query1.Eof do
    begin
      Grid.Columns[3].PickList.Add(dm.Query1.fieldByName('Nombre').AsString);
      dm.Query1.Next;
    end;

    dm.Query1.EnableControls;
  end;

  PageControl1.ActivePageIndex := 0;
  //Grid.SetFocus;

  RNC := '';
  DecisionPrecio := '';
  lbcant.Caption := '0 Lineas';
  lbexcentos.Caption := '0.00';
  lbgrabados.Caption := '0.00';
  //lbOferta.Caption := '0';
  PageControl1.ActivePageIndex := 0;
  Modificar := True;
  Verifica  := False;
  Totaliza  := True;
  lbCR.Caption := '0.00';
  lbDB.Caption  := '0.00';
  lbBAL.Caption := '0.00';
  TotalProducto := 0;

  DBLookupComboBox2.KeyValue := DM.vp_cia;
  QFacturaFAC_ITBIS.Value := 0;
  QFacturafac_retencion_isr.Value := 0;
  QFacturafac_retencion.Value := 0;
  QFacturafac_flete.Value  := 0;
  QFacturafac_selectivo.Value := 0;
  QFacturaSUC_CODIGO.Value := QSucursalsuc_codigo.Value;
  QFacturaEMP_CODIGO.value := dm.vp_cia;
  QFacturaFAC_ABONO.value  := 0;
  QFacturaFAC_FECHA.value  := Date;
  QFacturaFAC_FECHA_EFECTIVA.Value := DM.getFechaBDA;
  QFacturaFAC_STATUS.value := 'PEN';
  QFacturaUSU_CODIGO.Value := dm.Usuario;
  QFacturaMON_CODIGO.Value := DM.QParametrosMON_CODIGO.Value;
  QFacturaFAC_DESCUENTO.Value := 0;
  //QFacturafac_selectivo_ad.Value := 0;
  QFacturaFAC_EXENTO.Value := 0;
  QFacturaFAC_GRABADO.Value := 0;
  QFacturafac_servicios.Value := 0;
  QFacturafac_proplegal.Value := 0;
  QFacturafac_otrosimpuestos.Value := 0;
  QFacturaFAC_DIAS.Value   := dias_creditos;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select alm_codigo, count(alm_codigo) from almacen');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('group by alm_codigo');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
  dm.Query1.Open;
  dbAlmacen.Enabled   := dm.Query1.RecordCount > 1;
  btAlmacen.Enabled := dm.Query1.RecordCount > 1;
  if dm.Query1.RecordCount = 1 then
  begin
    QFActuraALM_CODIGO.Value := dm.Query1.FieldByName('alm_codigo').AsInteger;
  end
  else
    QFacturaALM_CODIGO.Value := dm.QParametrosPAR_INVALMACEN.Value;

  QDetalle.close;
  QDetalle.Parameters.parambyname('emp').Value := dm.vp_cia;
  QDetalle.Parameters.parambyname('sup').Value := QFacturaSUP_CODIGO.value;
  QDetalle.Parameters.parambyname('num').Value  := '';
  QDetalle.open;
  QDetalleDET_CANTIDAD.ReadOnly := False;

  QCuentas.close;
  QCuentas.Parameters.parambyname('emp').Value := dm.vp_cia;
  QCuentas.Parameters.parambyname('sup').Value := QFacturaSUP_CODIGO.value;
  QCuentas.Parameters.parambyname('num').Value  := '';
  QCuentas.open;

  QCentro.close;
  QCentro.Parameters.parambyname('emp').Value := dm.vp_cia;
  QCentro.Parameters.parambyname('sup').Value := QFacturaSUP_CODIGO.value;
  QCentro.Parameters.parambyname('num').Value  := '';
  QCentro.open;

  QUnidades.close;
  QUnidades.Parameters.parambyname('emp').Value := dm.vp_cia;
  QUnidades.Parameters.parambyname('sup').Value := QFacturaSUP_CODIGO.value;
  QUnidades.Parameters.parambyname('num').Value := '';
  QUnidades.open;
end;

procedure TfrmFacProvee.QFacturaFAC_DIASChange(Sender: TField);
begin
  QFacturaFAC_VENCE.value := QFacturaFAC_FECHA.value + QFacturaFAC_DIAS.value;
end;

procedure TfrmFacProvee.QFacturaFAC_NUMEROChange(Sender: TField);
var
  a : integer;
  estatus : String;
begin
  estatus := 'ANU';
  if not QFacturaFAC_NUMERO.isnull then
  begin
    PageControl1.ActivePageIndex := 0;
    Num := QFacturaFAC_NUMERO.Value;
    Sup := QFacturaSUP_CODIGO.value;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select fac_abono, fac_total, fac_status, alm_Codigo');
    dm.Query1.sql.add('from provfacturas');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and sup_codigo = :sup');
    dm.Query1.sql.add('and fac_numero = :num');
    dm.Query1.sql.add('and fac_status <> '+QuotedStr(estatus));
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('sup').Value := QFacturaSUP_CODIGO.value;
    dm.Query1.Parameters.parambyname('num').Value := QFacturaFAC_NUMERO.value;
    dm.Query1.open;
    if dm.Query1.FieldByName('FAC_ABONO').Value > 0 then
    Begin
      Messagedlg('ESTA FACTURA TIENE ABONOS, NO PUEDE SER MODIFICADA',
      mtError, [mbok], 0);
      Abort;
    End;

    if dm.Query1.FieldByName('fac_status').value = 'PAG' then
      Modificar := False
    else if dm.Query1.FieldByName('fac_status').value = 'ANU' then
      Modificar := False
    else
      Modificar := True;
      
    if dm.Query1.RecordCount > 0 then
    begin
      Accion := 2;
      if vMod = False then
        Modificar := False;

      Verifica := False;
      QFactura.close;
      QFactura.Parameters.ParamByName('emp').Value := dm.vp_cia;
      QFactura.Parameters.ParamByName('Sup').Value := Sup;
      QFactura.Parameters.ParamByName('Num').Value := Num;
      QFactura.Open;
      Alm := QFacturaALM_CODIGO.value;

      QCuentas.close;
      QCuentas.Parameters.parambyname('emp').Value := dm.vp_cia;
      QCuentas.Parameters.parambyname('sup').Value := QFacturaSUP_CODIGO.value;
      QCuentas.Parameters.parambyname('num').Value  := QFacturaFAC_NUMERO.value;
      QCuentas.open;

      Totalizar;

      QDetalle.close;
      QDetalle.Parameters.parambyname('emp').Value := dm.vp_cia;
      QDetalle.Parameters.parambyname('sup').Value := QFacturaSUP_CODIGO.value;
      QDetalle.Parameters.parambyname('num').Value := QFacturaFAC_NUMERO.value;
      QDetalle.open;

      lista.Items.Clear;
      QDetalle.DisableControls;
      while not QDetalle.Eof do
      begin
        if not QDetallePRO_CODIGO.isnull then
          Lista.Items.Add(IntToStr(QDetallePRO_CODIGO.Value));

        QDetalle.Next;
      end;
      QDetalle.First;
      QDetalle.enablecontrols;

      QCentro.close;
      QCentro.Parameters.parambyname('emp').Value := dm.vp_cia;
      QCentro.Parameters.parambyname('sup').Value := QFacturaSUP_CODIGO.value;
      QCentro.Parameters.parambyname('num').Value := QFacturaFAC_NUMERO.value;
      QCentro.open;

      QUnidades.close;
      QUnidades.Parameters.parambyname('emp').Value := dm.vp_cia;
      QUnidades.Parameters.parambyname('sup').Value := QFacturaSUP_CODIGO.value;
      QUnidades.Parameters.parambyname('num').Value := QFacturaFAC_NUMERO.value;
      QUnidades.open;

    end
    else
    begin
      Accion := 1;
      Modificar := True;
    end;

    QFactura.Edit;

    Verifica := True;
  end;
end;

procedure TfrmFacProvee.FormActivate(Sender: TObject);
begin
  Labeldiferencia.Visible := dm.QParametrospar_compras_visualiza_diferencia.Value = 'True';
  lbdiferencia.Visible    := dm.QParametrospar_compras_visualiza_diferencia.Value = 'True';

  Label14.Caption := '%Beneficio / '+dm.QParametrosPAR_PREDESCRIP1.Value;
  Label15.Caption := '%Beneficio / '+dm.QParametrosPAR_PREDESCRIP2.Value;
  Label16.Caption := '%Beneficio / '+dm.QParametrosPAR_PREDESCRIP3.Value;
  Label17.Caption := '%Beneficio / '+dm.QParametrosPAR_PREDESCRIP4.Value;
  if not QFactura.active then
  begin
    QFactura.Parameters.parambyname('emp').Value := dm.vp_cia;
    QFactura.Parameters.parambyname('sup').Value := -1;
    QFactura.Parameters.parambyname('num').Value  := '-1';
    QFactura.open;
    QFactura.Insert;
  end;

  memo1.Lines.Clear;
  memo1.Lines.Text := dm.QParametrospar_barra_header.Value;

end;

procedure TfrmFacProvee.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmFacProvee.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
  if key = vk_f3 then btLimpiarClick(Self);
  if key = vk_f2 then btGRabarClick(Self);
end;

procedure TfrmFacProvee.GridEnter(Sender: TObject);
var
  a : integer;
begin
  for a := 0 to Grid.Columns.Count - 1 do
    Grid.Columns[a].ReadOnly := QFacturaPED_NUMERO.AsInteger > 0;

  Grid.Columns[2].ReadOnly := false;
  
  Grid.SelectedIndex := 0;
end;

procedure TfrmFacProvee.GridColEnter(Sender: TObject);
begin
if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'PRECIOITBIS' then
    Grid.SelectedIndex := Grid.SelectedIndex + 1;

 if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'PRO_NOMBRE' then
    Grid.SelectedIndex := Grid.SelectedIndex + 1;

 if (uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_OFERTA') AND
    (DM.QParametrospar_fac_oferta.Value <> 'True') then
    Grid.SelectedIndex := Grid.SelectedIndex + 1;

  if (uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'PRO_CANTEMPAQUE') AND
    (DM.QParametrospar_visualizar_cant_empaque.Value <> 'True')  then
    Grid.SelectedIndex := Grid.SelectedIndex + 1;

  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'PRO_UNIDAD_MEDIDA' then
    Grid.SelectedIndex := Grid.SelectedIndex + 1;

  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_MEDIDA' then
    Grid.SelectedIndex := Grid.SelectedIndex + 1;

  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'CALCITBIS' then
    Grid.SelectedIndex := Grid.SelectedIndex + 1;

  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_FECHAVENCE' then
    if QDetalleDET_VENCE.Value <> 'True' then
      Grid.SelectedIndex := Grid.SelectedIndex + 1;

  if (uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_COSTOUND') and (UpperCase(QDetalleDET_MEDIDA.Value) = 'EMP') then
    Grid.SelectedIndex := Grid.SelectedIndex + 1;

  if (uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_COSTOEMP') and (UpperCase(QDetalleDET_MEDIDA.Value) = 'UND') then
    Grid.SelectedIndex := Grid.SelectedIndex + 1;

  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'VALOR' then
  begin
    QDetalle.Append;
    Grid.SelectedIndex := 0;
  end;
end;

procedure TfrmFacProvee.GridKeyPress(Sender: TObject; var Key: Char);
var
  a : integer;
begin
  if key = #13 then Grid.selectedindex := Grid.selectedindex + 1;
  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_MEDIDA' then
  begin
    if QFacturaPED_NUMERO.IsNull then
    begin
      QDetalle.Edit;
      if uppercase(key) = 'E' then
        QDetalleDET_MEDIDA.Value := 'Emp'
      else if uppercase(key) = 'U' then
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

procedure TfrmFacProvee.btEliminaClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR LA FILA?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
    Modificar := true;
    Totaliza := True;
    QDetalle.Delete;
    TotalizarProd;
    Totalizar;
  end;
  PageControl1.ActivePageIndex := 0;
  Grid.setfocus;
end;

procedure TfrmFacProvee.btLimpiarClick(Sender: TObject);
begin
  if messagedlg('DESEA CANCELAR ESTA FACTURA?',mtconfirmation,[mbyes,mbno],0)= mryes then
  begin
    Modificar := True;
    QDetalle.CancelBatch;
    QCuentas.CancelBatch;
    QCentro.CancelBatch;
    QFactura.CancelBatch;
    QFactura.Close;
    QFactura.Parameters.parambyname('emp').Value := dm.vp_cia;
    QFactura.Parameters.parambyname('sup').Value := QFacturaSUP_CODIGO.value;
    QFactura.Parameters.parambyname('num').Value  := '-1';
    QFactura.open;
    QFactura.Insert;
    edProveedor.setfocus;
  end
  else
  begin
    PageControl1.ActivePageIndex := 0;
    Grid.SetFocus;
  end;
end;

procedure TfrmFacProvee.btBuscaProdClick(Sender: TObject);
var
   primera : boolean;
begin
  application.createform(tfrmBuscaProducto, frmBuscaProducto);
  Buscando := True;
  primera := true;
  while (frmBuscaProducto.ckactiva.Checked) or (Primera) do
  begin
    frmBuscaProducto.showmodal;
    Primera := false;
    if frmBuscaProducto.seleccion = 1 then
    begin
      QDetalle.Edit;
      if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
         QDetallePRO_CODIGO.value := frmBuscaProducto.QProductosPRO_CODIGO.value
      else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
         QDetallePRO_RFABRIC.value := frmBuscaProducto.QProductosPRO_RFABRIC.value
      else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
      begin
        QDetallePRO_RORIGINAL.value := frmBuscaProducto.QProductosPRO_RORIGINAL.value
      end;


      if frmBuscaProducto.ckactiva.Checked then
      begin
        QDetalle.Append;
        Grid.SelectedIndex := 0;
      end;
    end;
  end;
  Buscando := False;
  frmBuscaProducto.release;
  PageControl1.ActivePageIndex := 0;
  Grid.setfocus;
end;

procedure TfrmFacProvee.QDetallePRO_CODIGOChange(Sender: TField);
var
  cod : integer;
begin
 if ((dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I') ) then
  begin
    if not QDetallePRO_CODIGO.isnull then
    begin
      BuscaProd('I');
      if dm.QParametrosPAR_FACREPITEPROD.AsString = 'True' then begin
      if Lista.Items.IndexOf(QDetallePRO_CODIGO.AsString) >= 0 then
      begin
        if MessageDlg('Ya este producto existe en la lista, desea continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        begin
          cod := QDetallePRO_CODIGO.Value;
          QDetalle.Cancel;
          QDetalle.Locate('pro_codigo', cod, []);
          Grid.selectedindex := Grid.selectedindex + 1;
        end;
      end;
      end;
    end;
  end;
end;

procedure TfrmFacProvee.QDetallePRO_RFABRICChange(Sender: TField);
var
  cod : Integer;
begin
 if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
  begin
    if not QDetallePRO_RFABRIC.isnull then
    begin
      BuscaProd('F');
      if dm.QParametrosPAR_FACREPITEPROD.AsString = 'True' then begin
      if Lista.Items.IndexOf(QDetallePRO_RFABRIC.AsString) >= 0 then
      begin
        if MessageDlg('Ya este producto existe en la lista, desea continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        begin
          cod := QDetallePRO_CODIGO.Value;
          QDetalle.Cancel;
          QDetalle.Locate('pro_codigo', cod, []);
          Grid.selectedindex := Grid.selectedindex + 1;
        end;
      end;
      end;
    end;
  end;
end;

procedure TfrmFacProvee.QDetallePRO_RORIGINALChange(Sender: TField);
var
  cod : Integer;
begin
 if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
  begin
    if not QDetallePRO_RORIGINAL.isnull then
    begin
      BuscaProd('O');
      if dm.QParametrosPAR_FACREPITEPROD.AsString = 'True' then begin
      if Lista.Items.IndexOf(QDetallePRO_RORIGINAL.AsString) >= 0 then
      begin
        if MessageDlg('Ya este producto existe en la lista, desea continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        begin
          cod := QDetallePRO_CODIGO.Value;
          QDetalle.Cancel;
          QDetalle.Locate('pro_codigo', cod, []);
          Grid.selectedindex := Grid.selectedindex + 1;
        end;
      end;
      end;
    end;
  end;
end;

procedure TfrmFacProvee.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f4 then btBuscaProdClick(Self);
  if key = vk_f7 then btEliminaClick(Self);
  if key = vk_f8 then btpreciosClick(Self);
end;

procedure TfrmFacProvee.BitBtn6Click(Sender: TObject);
begin
  close;
end;

procedure TfrmFacProvee.QFacturaCalcFields(DataSet: TDataSet);
var
  vGrabado, vExento, vItbis, vOtrosImp, vSelectivo_ad, vSelectivo, vServicios, vPropinaLegal, vFlete, vDEscuento, vSubTotal, vRetencion, vRetencionISR: Double;
begin
  vGrabado := QFacturaFAC_GRABADO.value;
  vExento  := QFacturaFAC_EXENTO.value;
  vItbis   := QFacturaFAC_ITBIS.Value;
  vOtrosImp := QFacturafac_otrosimpuestos.Value;
  vSelectivo_ad := QFacturafac_selectivo_ad.value;
  vSelectivo := QFacturafac_selectivo.value;
  vServicios := QFacturafac_servicios.Value;
  vFlete := QFacturaFAC_FLETE.value;
  vDescuento := QFacturaFAC_DESCUENTO.value;
  vPropinaLegal := QFacturafac_proplegal.Value;
  vRetencion := QFacturaFAC_retencion.value;
  vRetencionISR := QFacturafac_retencion_isr.value;
  vSubtotal := (vGrabado + vExento + vFlete + vSelectivo_ad + vSelectivo + vServicios+ vPropinaLegal);
  QfacturaTotal.Value := (vSubtotal- vDescuento) + vItbis + vOtrosImp- (vRetencion + vRetencionISR);
  lbdiferencia.Caption := format('%n',[Creditos-Debitos-vDescuento]);
end;

procedure TfrmFacProvee.btGRabarClick(Sender: TObject);
var
  a : integer;
  realiza, Grabar : boolean;
  costo, codigo, empCodigo: String;
  Servicio: FacturaElectronicaService;
   resultado: WideString;

    ok: Boolean;
   msg: string;
   prox: Int64;
   
begin


  //Verificar fecha de factura
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('SELECT DATEDIFF(MONTH,:FECHAINI,:FECHAFIN) DIAS');
  dm.Query1.Parameters.ParamByName('FECHAINI').Value := QFacturaFAC_FECHA.Value;
  dm.Query1.Parameters.ParamByName('FECHAFIN').Value := Date;
  dm.Query1.Open;
  IF DM.Query1.FieldByName('DIAS').Value > 1 THEN BEGIN
  ShowMessage('La factura no puede ser mayor de 1 mes de la fecha del dia');
  Exit;
  DBEdit5.SetFocus;
  end;


  if messagedlg('TODOS LOS DATOS ESTAN CORRECTOS?',mtconfirmation,[mbyes,mbno],0)=mryes then
  begin
    if Trim(QFacturaNCF.Text)<>'' then begin
    if not ((Length(QFacturaNCF.Value) = 11) or (Length(QFacturaNCF.Value) = 19) or (Length(QFacturaNCF.Value) = 13))  then begin
      ShowMessage('El NCF contiene '+IntToStr(Length(QFacturaNCF.Value))+' digitos,'+Char(13)+
                  'Solo se permite 11, 13 o 19 digitos numericos......');

      DBEdit19.SetFocus;
      Abort;
    end;
  end;

  if QFacturafac_form_pago.Value = 0 then begin
  ShowMessage('Debes indicar la forma de pago....');
  Abort;
  end;


  if (not QFacturaNCF.IsNull) and (QFacturaNCF.AsString <> '') then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select count(*) as cant');
    dm.Query1.SQL.Add('from provfacturas');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ncf = :ncf');
    dm.Query1.SQL.Add('and fac_numero <> :fac');
    dm.Query1.SQL.Add('and sup_codigo = '+edProveedor.Text);
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('ncf').Value := QFacturaNCF.Value;
    dm.Query1.Parameters.ParamByName('fac').Value := QFacturaFAC_NUMERO.Value;
    dm.Query1.Open;
    if dm.Query1.FieldByName('cant').AsInteger > 0 then
    begin
      MessageDlg('ESTE NCF ESTA REPETIDO',mtError,[mbok],0);
      QFacturaNCF.Clear;
      Abort;
    end;
  end;




    QFactura.Edit;
    QFacturaFAC_TOTAL.value := QFacturaTotal.value;
    TotalizaCentros;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select sup_rnc from proveedores where emp_codigo = :emp and sup_codigo = :sup');
    dm.Query1.Parameters.ParamByName('emp').Value := QFacturaEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('sup').Value := QFacturaSUP_CODIGO.Value;
    dm.Query1.Open;
    RNC := dm.Query1.FieldByNAme('sup_rnc').AsString;

    if QFacturaFAC_TOTAL.value <= 0 then
    begin
      if messagedlg('LA FACTURA QUE SE ESTA POR GRABAR ESTA EN 0, DESEA GRABAR',mtConfirmation,[mbyes,mbno],0) = mrno then
        realiza := false
      else
        realiza := true;
    end
    else
      realiza := true;

    if realiza = true then
    begin
      if lbBAL.Caption <> '0.00' then
      begin
        MessageDlg('LAS CUENTAS CONTABLES DE ESTA FACTURA'+#13+
                   'NO ESTAN CUADRADAS',mtError,[mbok],0);
        PageControl1.ActivePageIndex := 1;
        GridCuentas.SetFocus;
      end
      else if (QFacturaFAC_DIAS.IsNull) or (QFacturaFAC_DIAS.Value = 0) then
      begin
        messagedlg('DEBE ESPECIFICAR LOS DIAS DE VENCIMIENTO',mterror,[mbok],0);
        DBEdit1.Setfocus;
      end
      else if QFacturaSUP_CODIGO.isnull then
      begin
        messagedlg('DEBE SELECCIONAR EL PROVEEDOR',mterror,[mbok],0);
        edProveedor.Setfocus;
      end
      else if QFacturafac_concepto.isnull then
      begin
        messagedlg('DEBE ESPECIFICAR EL CONCEPTO DE LA FACTURA',mterror,[mbok],0);
        DBEdit22.Setfocus;
      end
      else if QFacturaFAC_NUMERO.isnull then
      begin
        messagedlg('DEBE ESPECIFICAR EL NUMERO DE LA FACTURA',mterror,[mbok],0);
        DBEdit9.Setfocus;
      end
      else if QFacturaALM_CODIGO.isnull then
      begin
        messagedlg('DEBE ESPECIFICAR EL ALMACEN',mterror,[mbok],0);
        dbAlmacen.Setfocus;
      end
      else
      if (not QFacturaNCF.isnull) and (Trim(QFacturaNCF.AsString) <> '') and NOT (length(Trim(QFacturaNCF.AsString)) IN [19,11,13]) then
      begin
        messagedlg('DEBE DIGITAR UN NCF CORRECTO',mterror,[mbok],0);
        DBEdit19.Setfocus;
      end
      else
       if (QFacturatip_codigo.AsInteger > 0) and ((QFacturaNCF.isnull) or (Trim(QFacturaNCF.AsString) = '')) and
      (TipoProv <> 'I') and (TipoProv <> 'E') then
      begin
        messagedlg('DEBE DE DIGITAR EL NUMERO DE COMPROBANTE FISCAL',mterror,[mbok],0);
        DBEdit19.Setfocus;
      end
      else if (not QFacturaNCF.isnull) and (Trim(QFacturaNCF.AsString) <> '') and (length(Trim(RNC)) = 0) then
      begin
        messagedlg('EL PROVEEDOR NO POSEE RNC, DEBE ACTUALIZAR ESTE CAMPO',mterror,[mbok],0);
        DBEdit19.Setfocus;
        frmmain.ActivaForma(tfrmProveedores, tform(frmProveedores));
        frmProveedores.QProveedores.locate('sup_codigo',QFacturaSUP_CODIGO.Value,[]);
      end
      else
      begin
        Grabar := True;
        if (Exento + Grabado) = 0 then
        begin
          if MessageDlg('ESTA FACTURA NO TIENE PRODUCTOS, DESEA GRABARLA?',mtConfirmation,[mbyes,mbno],0) = mrno then
            Grabar := False;
        end;

        if (DM.QParametrosPAR_FE_DetenerFacturacion.Value and dm.QParametrosUsa_FacturacionElectronica.Value and  (TipoProv = 'I')) then
        begin
          ok := ValidarENCFDisponible(
                        dm.vp_cia,
                        41,
                        msg, prox);
          if (not ok) then
          begin
            ShowMessage('No hay comprobantes fiscales disponibles para esta compra.');
            Exit;
          end;
        end;


        if Grabar then
        begin
          QFactura.post;
          QFactura.UpdateBatch;

          Totaliza := False;
          //Productos
          QDetalle.disablecontrols;
          QDetalle.First;
          a := 0;
          while not QDetalle.eof do
          begin
            a := a + 1;
            QDetalle.Edit;
            QDetalleDET_SECUENCIA.value := a;
            QDetalleEMP_CODIGO.Value    := dm.vp_cia;
            QDetalleFAC_NUMERO.Value    := QFacturaFAC_NUMERO.Value;
            QDetalleSUP_CODIGO.Value    := QFacturaSUP_CODIGO.Value;

              // Asegurarse de que el costo no sea vacío y asignar un valor por defecto
              if Trim(QDetalleDET_COSTO.Text) = '' then
                costo := '0'  // O el valor predeterminado que consideres apropiado
              else
                costo := QDetalleDET_COSTO.Text;

              // Asignar valores de los otros campos
              codigo := QDetallePRO_CODIGO.Text;
              empCodigo := QDetalleEMP_CODIGO.Text;

              // Ejecutar la consulta SQL con los valores verificados
              dm.ADOSigma.Execute('update productos set pro_costo = case when ' + costo +
                      ' <> pro_costo then ' + costo + ' else pro_costo end' +
                      ' where pro_codigo = ' + codigo + ' and emp_codigo = ' + empCodigo);

            {dm.ADOSigma.Execute('update productos '+
            '  set pro_costo = case when '+QDetalleDET_COSTO.Text+ ' <> pro_costo then '+QDetalleDET_COSTO.Text +' else pro_costo end'+
            ' where pro_codigo ='+QDetallePRO_CODIGO.Text + ' and emp_codigo = '+QDetalleEMP_CODIGO.Text);

                     }
            {IF DM.QParametrospar_modifica_precio_automatico.Value = 'True'  then begin
            dm.ADOSigma.Execute('update productos '+
            '  set pro_beneficio = case when '+QDetallePRO_BENEFICIO.Text+ ' <> pro_beneficio then '+QDetallePRO_BENEFICIO.Text +' else pro_beneficio end'+
            ' ,pro_beneficio2 = case when '+QDetallePRO_BENEFICIO2.Text+ ' <> pro_beneficio2 then '+QDetallePRO_BENEFICIO2.Text +' else pro_beneficio2 end'+
            ' ,pro_beneficio3 = case when '+QDetallePRO_BENEFICIO3.Text+ ' <> pro_beneficio3 then '+QDetallePRO_BENEFICIO3.Text +' else pro_beneficio3 end'+
            ' ,pro_beneficio4 = case when '+QDetallePRO_BENEFICIO4.Text+ ' <> pro_beneficio3 then '+QDetallePRO_BENEFICIO4.Text +' else pro_beneficio4 end'+
            ' ,pro_precio1 = case when '+QDetallePRO_PRECIO1.Text+ ' <> pro_precio1 then '+QDetallePRO_PRECIO1.Text +' else pro_precio1 end'+
            ' ,pro_precio2 = case when '+QDetallePRO_PRECIO2.Text+ ' <> pro_precio1 then '+QDetallePRO_PRECIO2.Text +' else pro_precio2 end'+
            ' ,pro_precio3 = case when '+QDetallePRO_PRECIO3.Text+ ' <> pro_precio1 then '+QDetallePRO_PRECIO3.Text +' else pro_precio3 end'+
            ' ,pro_precio4 = case when '+QDetallePRO_PRECIO4.Text+ ' <> pro_precio1 then '+QDetallePRO_PRECIO4.Text +' else pro_precio4 end'+
            ' where pro_codigo ='+QDetallePRO_CODIGO.Text + ' and emp_codigo = '+QDetalleEMP_CODIGO.Text);
            end;

            IF QDetalledet_cambiarprecio.Value = 'S'  then begin
            dm.ADOSigma.Execute('update productos '+
            '  set pro_beneficio = case when '+QDetallePRO_BENEFICIO.Text+ ' <> pro_beneficio then '+QDetallePRO_BENEFICIO.Text +' else pro_beneficio end'+
            ' ,pro_beneficio2 = case when '+QDetallePRO_BENEFICIO2.Text+ ' <> pro_beneficio2 then '+QDetallePRO_BENEFICIO2.Text +' else pro_beneficio2 end'+
            ' ,pro_beneficio3 = case when '+QDetallePRO_BENEFICIO3.Text+ ' <> pro_beneficio3 then '+QDetallePRO_BENEFICIO3.Text +' else pro_beneficio3 end'+
            ' ,pro_beneficio4 = case when '+QDetallePRO_BENEFICIO4.Text+ ' <> pro_beneficio3 then '+QDetallePRO_BENEFICIO4.Text +' else pro_beneficio4 end'+
            ' ,pro_precio1 = case when '+QDetallePRO_PRECIO1.Text+ ' <> pro_precio1 then '+QDetallePRO_PRECIO1.Text +' else pro_precio1 end'+
            ' ,pro_precio2 = case when '+QDetallePRO_PRECIO2.Text+ ' <> pro_precio1 then '+QDetallePRO_PRECIO2.Text +' else pro_precio2 end'+
            ' ,pro_precio3 = case when '+QDetallePRO_PRECIO3.Text+ ' <> pro_precio1 then '+QDetallePRO_PRECIO3.Text +' else pro_precio3 end'+
            ' ,pro_precio4 = case when '+QDetallePRO_PRECIO4.Text+ ' <> pro_precio1 then '+QDetallePRO_PRECIO4.Text +' else pro_precio4 end'+
            ' where pro_codigo ='+QDetallePRO_CODIGO.Text + ' and emp_codigo = '+QDetalleEMP_CODIGO.Text);
            end;}

            if QDetalleDET_CANTIDAD.Value > 0 then
            begin
              if QDetallepro_detallado.Value = 'True' then
                QDetalledet_etiquetas.Value := 1
              else
                QDetalledet_etiquetas.Value := trunc(QDetalleDET_CANTIDAD.Value);
            end;
            QDetalle.Post;
            QDetalle.next;
          end;
          QDetalle.enablecontrols;
          QDetalle.UpdateBatch;

          //Centros de costo
          QCentro.disablecontrols;
          QCentro.First;
          a := 0;
          while not QCentro.eof do
          begin
            a := a + 1;
            QCentro.Edit;
            QCentroDET_SECUENCIA.value := a;
            QCentroEMP_CODIGO.Value    := QFacturaEMP_CODIGO.Value;
            QCentroFAC_NUMERO.Value    := QFacturaFAC_NUMERO.Value;
            QCentroSUP_CODIGO.Value    := QFacturaSUP_CODIGO.Value;
            QCentro.Post;
            QCentro.next;
          end;
          QCentro.enablecontrols;
          QCentro.UpdateBatch;

          //Cuentas
          QCuentas.disablecontrols;
          QCuentas.First;
          a := 0;
          while not QCuentas.eof do
          begin
            a := a + 1;
            QCuentas.Edit;
            QCuentasDET_SECUENCIA.value := a;
            QCuentasEMP_CODIGO.Value    := QFacturaEMP_CODIGO.Value;
            QCuentasFAC_NUMERO.Value    := QFacturaFAC_NUMERO.Value;
            QCuentasSUP_CODIGO.Value    := QFacturaSUP_CODIGO.Value;
            QCuentas.Post;
            QCuentas.next;
          end;
          QCuentas.enablecontrols;
          QCuentas.UpdateBatch;

          //Unidades de Medida
          QUnidades.disablecontrols;
          QUnidades.First;
          a := 0;
          while not QUnidades.eof do
          begin
            a := a + 1;
            QUnidades.Edit;
            QUnidadesSecuencia.value  := a;
            QUnidadesEMP_CODIGO.Value := QFacturaEMP_CODIGO.Value;
            QUnidadesFAC_NUMERO.Value := QFacturaFAC_NUMERO.Value;
            QUnidadesSUP_CODIGO.Value := QFacturaSUP_CODIGO.Value;
            QUnidades.Post;
            QUnidades.next;
          end;
          QUnidades.enablecontrols;
          QUnidades.UpdateBatch;

          //ejecutando para grabar facturas
          dm.Query1.close;
          dm.Query1.sql.clear;
          dm.Query1.sql.add('execute pr_graba_cxp :emp, :sup, :num, :alm, :usu');
          dm.Query1.Parameters.parambyname('emp').Value := DM.vp_cia;
          dm.Query1.Parameters.parambyname('sup').Value := QFacturaSUP_CODIGO.value;
          dm.Query1.Parameters.parambyname('num').Value := QFacturaFAC_NUMERO.value;
          dm.Query1.Parameters.parambyname('alm').Value := QFacturaALM_CODIGO.value;
          dm.Query1.Parameters.parambyname('usu').Value := dm.vp_usuario;
          dm.Query1.ExecSQL;

        if dm.QParametrosUsa_FacturacionElectronica.Value then
        begin
          if (TipoProv = 'I') then
          begin
            QFactura.Edit;

            // RNC de la empresa
            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('select emp_rnc from empresas where emp_codigo = :emp');
            dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
            dm.Query1.Open;
            QFacturaemp_rnc.AsString := dm.Query1.FieldByName('emp_rnc').AsString;

            // RNC del proveedor
            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('select sup_rnc from Proveedores where sup_codigo = :sup');
            dm.Query1.Parameters.ParamByName('sup').Value := QFacturaSUP_CODIGO.Value;
            dm.Query1.Open;
            QFacturasup_rnc.AsString := dm.Query1.FieldByName('sup_rnc').AsString;

            // Validar RNC proveedor
            if Trim(QFacturasup_rnc.AsString) = '' then
            begin
              ShowMessage('El proveedor no tiene RNC registrado, no puede enviarse a la DGII.');
             
            end
            else
            begin
              // eNCF de la compra si ya existe
              dm.Query1.Close;
              dm.Query1.SQL.Clear;
              dm.Query1.SQL.Add('select eNCF from ProvFacturas');
              dm.Query1.SQL.Add('where emp_codigo = :emp and fac_numero = :numero and sup_codigo = :sup');
              dm.Query1.Parameters.ParamByName('emp').Value    := QFacturaEMP_CODIGO.Value;
              dm.Query1.Parameters.ParamByName('sup').Value    := QFacturaSUP_CODIGO.Value;
              dm.Query1.Parameters.ParamByName('numero').Value := QFacturaFAC_NUMERO.Value;
              dm.Query1.Open;
              QFacturaeNCF.AsString := dm.Query1.FieldByName('eNCF').AsString;

              // Tipo eNCF (código DGII)
              {dm.Query1.Close;
              dm.Query1.SQL.Clear;
              dm.Query1.SQL.Add('select cod_dgii from TipoNCF where tip_codigo = :tip_codigo');
              dm.Query1.Parameters.ParamByName('tip_codigo').Value := QFacturatip_codigo.Value;
              dm.Query1.Open;
              QFacturaTipoeNCF.AsInteger := dm.Query1.FieldByName('cod_dgii').AsInteger;
              }

              // Guarda los cambios locales antes de enviar
              QFacturaTipoeNCF.AsInteger :=41;
              QFactura.Post;

              // Después de EnviarCompras a la DGII, si LUGANIS está activo
              if dm.QParametrosintegracion_luganis.AsBoolean then
              begin
                Servicio := CoFacturaElectronicaService.Create;
                try
                  resultado := Servicio.EnviarComprasLuganis(
                    IntToStr(QFacturaEMP_CODIGO.Value),      // emp
                    IntToStr(QFacturaSUC_CODIGO.Value),      // suc
                    IntToStr(QFacturaSUP_CODIGO.Value),      // sup (proveedor)
                    QFacturaFAC_NUMERO.AsString,             // facNumero
                    QFacturaemp_rnc.AsString,                // empRnc (RNC de tu empresa)
                    QFacturasup_rnc.AsString,                // RncProveedor
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
                    True,           // saveGeneratedTxt (si quieres guardar el TXT pon True)
                    '' ,             // outputFolder
                    True            // logDebug
                  );
                finally
                  // liberar si hace falta
                end;
              end
            else
            begin
              // Llamada al servicio
              Servicio := CoFacturaElectronicaService.Create;
              try
                resultado := Servicio.EnviarCompras(
                  IntToStr(QFacturaEMP_CODIGO.Value),
                  IntToStr(QFacturaSUC_CODIGO.Value),
                  IntToStr(QFacturaSUP_CODIGO.Value),
                  (QFacturaFAC_NUMERO.Value),
                  QFacturaemp_rnc.AsString,
                  QFacturaeNCF.AsString,
                  QFacturasup_rnc.AsString,
                  '',
                  '',
                  '41'
                );
              finally
                // liberar si es necesario
              end;
            end ;
            end;
          end;
        end;

          if dm.QParametrosPAR_IMPCODIGOBARRA.Value = 'True' then
          begin
            if MessageDlg('Imprimir Codigo de Barra?',mtConfirmation,[mbyes,mbno],0) = mryes then
            begin
              if dm.qparametrosPAR_INVMOSTRARVENCE.Value = 'True' then
              begin
                //QDetalle.Filter := 'pro_codigo > 0 and pro_detallado = '+QuotedStr('True');
                QDetalle.Filter := 'pro_codigo > 0';
                QDetalle.Filtered := true;
                QDetalle.First;

                if QDetalle.recordcount > 0 then
                begin
                  Application.CreateForm(tfrmImprimeBarraCompra, frmImprimeBarraCompra);
                  frmImprimeBarraCompra.ShowModal;
                  frmImprimeBarraCompra.Release;
                end;
              end
              else
              begin
                //QDetalle.Filter := 'det_cambiarprecio = '+QuotedStr('S');
                //QDetalle.Filtered := true;
                //QDetalle.First;

                if QDetalle.recordcount > 0 then
                begin
                  Application.CreateForm(tfrmImprimeBarraCompra, frmImprimeBarraCompra);
                  frmImprimeBarraCompra.ShowModal;
                  frmImprimeBarraCompra.Release;
                end;
              end;
              QDetalle.Filtered := false;
              QDetalle.First;
              RepBarra;
            end;
          end;

          if MessageDlg('Desea imprimir la factura?',mtConfirmation,[mbyes,mbno],0) = mryes then
          begin
            Application.CreateForm(tRFacturaProvee, RFacturaProvee);
            RFacturaProvee.QFactura.Close;
            RFacturaProvee.QProductos.Close;
            RFacturaProvee.QCuentas.Close;
            RFacturaProvee.qCentro.Close;
            RFacturaProvee.QFactura.Parameters.ParamByName('emp').Value  := QFacturaEMP_CODIGO.Value;
            RFacturaProvee.QFactura.Parameters.ParamByName('emp2').Value := DM.vp_cia;
            RFacturaProvee.QFactura.Parameters.ParamByName('sup').Value  := QFacturaSUP_CODIGO.Value;
            RFacturaProvee.QFactura.Parameters.ParamByName('fac').Value  := QFacturaFAC_NUMERO.Value;
            RFacturaProvee.QFactura.Open;
            RFacturaProvee.QProductos.Open;
            RFacturaProvee.QCuentas.Open;
            RFacturaProvee.qCentro.Open;
            RFacturaProvee.PrinterSetup;
            RFacturaProvee.Print;
            RFacturaProvee.Destroy;
          end;

          QFactura.Parameters.parambyname('emp').Value := dm.vp_cia;
          QFactura.Parameters.parambyname('sup').Value := QFacturaSUP_CODIGO.value;
          QFactura.Parameters.parambyname('num').Value  := '-1';
          QFactura.open;
          QFactura.Insert;
          edProveedor.setfocus;
        end
        else
        begin
          PageControl1.ActivePageIndex := 0;
          Grid.SetFocus;
        end;
      end;
    end
    else
    begin
      PageControl1.ActivePageIndex := 0;
      Grid.SetFocus;
    end;
  end
  else
  begin
    PageControl1.ActivePageIndex := 0;
    Grid.Setfocus;
  end;
  dm.GenerarArchivoBalanza;
end;

procedure TfrmFacProvee.btProveedorClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.Query.clear;
  if dm.QParametrospar_busqueda_cxp.Value = 'RNC' then
  begin
    Search.AliasFields.Add('RNC');
    Search.AliasFields.Add('Nombre');
    Search.AliasFields.Add('Código');
    Search.Query.add('select substring(sup_rnc,1,13) as sup_rnc, substring(sup_nombre,1,50) as sup_nombre, sup_codigo');
  end
  else
  begin
    Search.AliasFields.Add('Nombre');
    Search.AliasFields.Add('RNC');
    Search.AliasFields.Add('Código');
    Search.Query.add('select substring(sup_nombre,1,50) as sup_nombre, substring(sup_rnc,1,13) as sup_rnc, sup_codigo');
  end;
  Search.ResultField := 'sup_codigo';
  Search.Query.add('from proveedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.Query.add('and sup_Status = '+#39+'ACT'+#39);
  Search.Title := 'Listado de Proveedores';
  if Search.execute then
  begin
    QFacturaSUP_CODIGO.Value := StrToInt(search.valuefield);
    edProveedor.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select sup_codigo, sup_nombre, sup_balance,');
    dm.Query1.sql.add('sup_direccion, sup_localidad, sup_telefono, sup_fax,dias_creditos ');
    dm.Query1.sql.add('from proveedores');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and sup_Status = '+#39+'ACT'+#39);
    dm.Query1.sql.add('and sup_codigo = :sup');
    dm.Query1.Parameters.parambyname('sup').Value := QFacturaSUP_CODIGO.Value;
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.open;
    if not dm.Query1.fieldbyname('dias_creditos').IsNull then
      dias_creditos := dm.Query1.fieldbyname('dias_creditos').asinteger
    else
      dias_creditos := 30;
    QFacturaFAC_DIAS.Value := dias_creditos;
    tProveedor.text          := dm.Query1.fieldbyname('sup_nombre').asstring;
    QFacturaSUP_CODIGO.value := dm.Query1.fieldbyname('sup_codigo').asinteger;

    //DBEdit9.setfocus;
  end;
end;

procedure TfrmFacProvee.QFacturaBeforePost(DataSet: TDataSet);
begin
  if dm.QParametrospar_inv_compra_centro_costo.Value = 'True' then
  begin
    if QCentro.RecordCount = 0 then
    begin
      MessageDlg('Debe Digitar los Centros de Costos',mtError,[mbok],0);
      Abort;
    end;
  end;

  if QFacturaFAC_DESCUENTO.isnull then QFacturaFAC_DESCUENTO.value := 0;
  if QFacturaFAC_EXENTO.isnull    then QFacturaFAC_EXENTO.value    := 0;
  if QFacturaFAC_GRABADO.isnull   then QFacturaFAC_GRABADO.value   := 0;
  if QFacturaFAC_ITBIS.isnull     then QFacturaFAC_ITBIS.value     := 0;
  if QFacturafac_retencion.IsNull then QFacturafac_retencion.Value := 0;
  if QFactura.state = dsEdit then
  begin
    //ejecutando para modificar facturas
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('execute pr_modifica_cxp :emp, :sup, :num, :alm');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('sup').Value := QFacturaSUP_CODIGO.value;
    dm.Query1.Parameters.parambyname('num').Value := QFacturaFAC_NUMERO.value;
    dm.Query1.Parameters.parambyname('alm').Value := Alm;
    dm.Query1.ExecSQL;
  end;
end;

procedure TfrmFacProvee.btAlmacenClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.clear;
  Search.Query.add('select alm_nombre, alm_codigo');
  Search.ResultField := 'alm_codigo';
  Search.Query.add('from almacen');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.Title := 'Listado de Almacenes';
  if Search.execute then
  begin
    QFacturaALM_CODIGO.value := StrToInt(Search.ValueField);
    dbAlmacen.setfocus;
  end;
end;

procedure TfrmFacProvee.FormCreate(Sender: TObject);
var
  a : integer;
begin
  QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
  QSucursal.Open;
  
  
  sbPrecios.Visible := dm.QParametrospar_inv_unidad_medida.Value <> 'True';
  btprecios.Visible := dm.QParametrospar_inv_unidad_medida.Value = 'True';
  for a := 0 to (Sender as TForm).ComponentCount -1 DO
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

  if dm.QParametrospar_visualizar_cant_empaque.Value <> 'True' then
  begin
  Grid.Columns[8].Visible := False;
  Grid.Columns[2].Visible := False;
  Grid.Columns[1].Width := Grid.Columns[1].Width + 36;
  end;

  if dm.QParametrosPAR_INVMOSTRARVENCE.Value <> 'True' then
  begin
    Grid.Columns[Grid.Columns.Count-2].Destroy;
    Grid.Columns[1].Width := Grid.Columns[1].Width + 45;
  end;

  if dm.QParametrospar_inv_unidad_medida.Value <> 'True' then
  begin
    Grid.Columns[6].Visible := False;
    Grid.Columns[1].Width := Grid.Columns[1].Width + 30;
  end;

  if dm.QParametrosPAR_FACMEDIDA.Value <> 'True' then
  begin
    Grid.Columns[5].Visible := False;
    Grid.Columns[1].Width := Grid.Columns[1].Width + 105;
  end;

  if dm.QParametrospar_fac_oferta.Value <> 'True' then
  begin
  Grid.Columns[4].Visible := False;
  Grid.Columns[1].Width := Grid.Columns[1].Width + 36;
  end;



end;

procedure TfrmFacProvee.dsFacturaStateChange(Sender: TObject);
begin
  edProveedor.enabled := QFactura.State = dsInsert;
  btProveedor.enabled := QFactura.State = dsInsert;
  DBEdit9.enabled     := QFactura.State = dsInsert;
  dbAlmacen.enabled     := QFactura.State = dsInsert;
  btAlmacen.enabled   := QFactura.State = dsInsert;
end;

{procedure TfrmFacProvee.QDetalleCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis : Double;
  VentaEmp, NumItbisEmp : Double;
begin

  if QDetalleDET_CONITBIS.Value = 'S' then
  begin
    QDetalleCalcCosto.Value    := QDetalleDET_COSTOUND.Value * (1+(QDetalleDET_ITBIS.Value/100));
    QDetalleCalcCostoemp.Value := QDetalleDET_COSTOEMP.Value * (1+(QDetalleDET_ITBIS.Value/100));
  end
  else
  begin
    QDetalleCalcCosto.Value    := QDetalleDET_COSTOUND.Value;//0;
    QDetalleCalcCostoemp.Value := QDetalleDET_COSTOEMP.Value;//0;
  end;
  {QDetalleValorItbisUnd.value := QDetalleCalcCosto.Value + QDetalleDET_COSTOUND.Value;
  QDetalleValorItbisEmp.value := QDetalleCalcCostoemp.Value + QDetalleDET_COSTOEMP.Value;
  }

{  QDetalleValorItbisUnd.value := QDetalleDET_COSTOUND.Value;
  QDetalleValorItbisEmp.value :=  QDetalleDET_COSTOEMP.Value;

  if QDetalledet_medida.AsString = 'Und' then
  begin
    if QDetalleDET_ITBIS.Value>0 then
     QDetalleCostoNeto.Value := QDetalleDET_COSTOUND.Value + QDetalleCalcCosto.Value
     else QDetalleCostoNeto.Value := QDetalleDET_COSTOUND.Value;
  end
  else
  begin
    if QDetalleDET_ITBIS.Value>0 then
    QDetalleCostoNeto.Value := QDetalleDET_COSTOEMP.Value + QDetalleCalcCostoEmp.Value
    else QDetalleCostoNeto.Value := QDetalleDET_COSTOEMP.Value;
  end;



  //Unidad
  if QDetalleDET_CONITBIS.value = 'S' then
  begin
    NumItbis := strtofloat(format('%10.2f',[(QDetalleDET_ITBIS.asfloat/100)+1]));
    Venta    := QDetalleDET_COSTOUND.value;
    QDetalleCalcDesc.value    := RoundTo((Venta * QDetalleDET_DESCUENTO.value)/100, -4);
    QDetallePrecioItbis.value := Venta;
    QDetalleCalcItbis.value   := ((Venta-QDetalleCalcDesc.value)*QDetalleDET_ITBIS.Value)/100;
    QDetalleValor.value       := (Venta-QDetalleCalcDesc.value)*QDetalleDET_CANTIDAD.value;
  end
  else
  begin
    Venta := QDetalleDET_COSTOUND.value;
    QDetalleCalcDesc.value    := RoundTo((Venta * QDetalleDET_DESCUENTO.value)/100, -4);
    QDetallePrecioItbis.value := Venta;
    QDetalleValor.value       := (Venta-QDetalleCalcDesc.value)*QDetalleDET_CANTIDAD.value;
    QDetalleCalcItbis.value   := 0;
  end;

  //Empaque
  if QDetalleDET_CONITBIS.value = 'S' then
  begin
    NumItbisEmp := strtofloat(format('%10.2f',[(QDetalleDET_ITBIS.asfloat/100)+1]));
    VentaEmp    := QDetalleDET_COSTOEMP.value;
    QDetalleCalcDescEmp.value    := RoundTo((VentaEmp * QDetalleDET_DESCUENTO.value)/100, -4);
    QDetallePrecioItbisEmp.value := VentaEmp;
    QDetalleCalcItbisEmp.value   := ((VentaEmp-QDetalleCalcDescEmp.value)*QDetalleDET_ITBIS.Value)/100;
    QDetalleValorEmp.value       := (VentaEmp-QDetalleCalcDescEmp.value)*QDetalleDET_CANTIDAD.value;
  end
  else
  begin
    VentaEmp := QDetalleDET_COSTOEMP.value;
    QDetalleCalcDescEmp.value    := RoundTo((VentaEmp * QDetalleDET_DESCUENTO.value)/100, -4);
    QDetallePrecioItbisEmp.value := VentaEmp;
    QDetalleValorEmp.value       := (VentaEmp-QDetalleCalcDescEmp.value)*QDetalleDET_CANTIDAD.value;
    QDetalleCalcItbisEmp.value   := 0;
  end;
  if QDetalleDET_MEDIDA.Value = 'Emp' then QDetalleValor.Value := QDetalleValorEmp.Value;

  if QDetalleDET_VENCE.Value = 'False' then
     QDetalleDET_FECHAVENCE.ReadOnly := True
  else
     QDetalleDET_FECHAVENCE.ReadOnly := False;
end; }

procedure TfrmFacProvee.QDetalleCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis : Double;
  VentaEmp, NumItbisEmp : Double;
begin	
  if QDetalleDET_CONITBIS.Value = 'S' then
  begin
    QDetalleCalcCosto.Value    := (QDetalleDET_COSTOUND.Value * QDetalleDET_ITBIS.Value)/100;
    QDetalleCalcCostoemp.Value := (QDetalleDET_COSTOEMP.Value * QDetalleDET_ITBIS.Value)/100;
  end
  else
  begin
    QDetalleCalcCosto.Value    := 0;
    QDetalleCalcCostoemp.Value := 0;
  end;
  QDetalleValorItbisUnd.value := QDetalleCalcCosto.Value + QDetalleDET_COSTOUND.Value;
  QDetalleValorItbisEmp.value := QDetalleCalcCostoemp.Value + QDetalleDET_COSTOEMP.Value;

  if QDetalledet_medida.AsString = 'Und' then
    QDetalleCostoNeto.Value := QDetalleDET_COSTOUND.Value + QDetalleCalcCosto.Value
  else
    QDetalleCostoNeto.Value := QDetalleDET_COSTOEMP.Value + QDetalleCalcCostoEmp.Value;


  //Unidad
  if QDetalleDET_CONITBIS.value = 'S' then
  begin
    NumItbis := strtofloat(format('%10.2f',[(QDetalleDET_ITBIS.asfloat/100)+1]));
    Venta    := QDetalleDET_COSTOUND.value;
    QDetalleCalcDesc.value    := RoundTo((Venta * QDetalleDET_DESCUENTO.value)/100, -4);
    QDetallePrecioItbis.value := Venta;
    QDetalleCalcItbis.value   := ((Venta-QDetalleCalcDesc.value)*QDetalleDET_ITBIS.Value)/100;
    QDetalleValor.value       := (Venta-QDetalleCalcDesc.value)*QDetalleDET_CANTIDAD.value;
  end
  else
  begin
    Venta := QDetalleDET_COSTOUND.value;
    QDetalleCalcDesc.value    := RoundTo((Venta * QDetalleDET_DESCUENTO.value)/100, -4);
    QDetallePrecioItbis.value := Venta;
    QDetalleValor.value       := (Venta-QDetalleCalcDesc.value)*QDetalleDET_CANTIDAD.value;
    QDetalleCalcItbis.value   := 0;
  end;

  //Empaque
  if QDetalleDET_CONITBIS.value = 'S' then
  begin
    NumItbisEmp := strtofloat(format('%10.2f',[(QDetalleDET_ITBIS.asfloat/100)+1]));
    VentaEmp    := QDetalleDET_COSTOEMP.value;
    QDetalleCalcDescEmp.value    := RoundTo((VentaEmp * QDetalleDET_DESCUENTO.value)/100, -4);
    QDetallePrecioItbisEmp.value := VentaEmp;
    QDetalleCalcItbisEmp.value   := ((VentaEmp-QDetalleCalcDescEmp.value)*QDetalleDET_ITBIS.Value)/100;
    QDetalleValorEmp.value       := (VentaEmp-QDetalleCalcDescEmp.value)*QDetalleDET_CANTIDAD.value;
  end
  else
  begin
    VentaEmp := QDetalleDET_COSTOEMP.value;
    QDetalleCalcDescEmp.value    := RoundTo((VentaEmp * QDetalleDET_DESCUENTO.value)/100, -4);
    QDetallePrecioItbisEmp.value := VentaEmp;
    QDetalleValorEmp.value       := (VentaEmp-QDetalleCalcDescEmp.value)*QDetalleDET_CANTIDAD.value;
    QDetalleCalcItbisEmp.value   := 0;
  end;
  if QDetalleDET_MEDIDA.Value = 'Emp' then QDetalleValor.Value := QDetalleValorEmp.Value;

  if QDetalleDET_VENCE.Value = 'False' then
     QDetalleDET_FECHAVENCE.ReadOnly := True
  else
     QDetalleDET_FECHAVENCE.ReadOnly := False;
end;

procedure TfrmFacProvee.QFacturaFAC_GRABADOChange(Sender: TField);
begin
if (QCuentas.Active) and  (CtaCompra <> '') then
  begin
    if not QCuentas.Locate('cat_cuenta', CtaCompra,[]) then
    Begin
      QCuentas.Append;
      QcuentasCAT_CUENTA.Value := CtaCompra;
      QCuentasDET_ORIGEN.Value := 'Debito';
      QCuentasDET_MONTO.Value  := (QFacturaFAC_GRABADO.Value + QFacturaFAC_EXENTO.Value+
      QFacturafac_flete.Value + QFacturafac_servicios.Value + QFacturafac_selectivo.Value +
      QFacturaFAC_ITBIS.Value + QFacturafac_proplegal.Value + QFacturafac_otrosimpuestos.Value) -
      (QFacturaFAC_DESCUENTO.Value + QFacturafac_retencion.Value + QFacturafac_retencion_isr.Value);
      QCuentas.Post;

    End
    else
    Begin
      QCuentas.Edit;
      QcuentasCAT_CUENTA.Value := CtaCompra;
      QCuentasDET_ORIGEN.Value := 'Debito';
      QCuentasDET_MONTO.Value  := (QFacturaFAC_GRABADO.Value + QFacturaFAC_EXENTO.Value+
      QFacturafac_flete.Value + QFacturafac_servicios.Value + QFacturafac_selectivo.Value +
      QFacturaFAC_ITBIS.Value + QFacturafac_proplegal.Value + QFacturafac_otrosimpuestos.Value) -
      (QFacturaFAC_DESCUENTO.Value + QFacturafac_retencion.Value + QFacturafac_retencion_isr.Value);
      QCuentas.Post;

    End;

if not QCuentas.Locate('cat_cuenta', CtaCxP,[]) then
    Begin
      QCuentas.Append;
      QcuentasCAT_CUENTA.Value := CtaCxP;
      QCuentasDET_ORIGEN.Value := 'Credito';
      QCuentasDET_MONTO.Value  := (QFacturaFAC_GRABADO.Value +
      QFacturaFAC_EXENTO.Value + QFacturafac_selectivo.Value + QFacturafac_flete.Value +
      QFacturafac_servicios.Value + QFacturafac_proplegal.Value + QFacturafac_otrosimpuestos.Value) - QFacturafac_descuento.Value;
      QCuentas.Post;
    End
    else
    Begin
      QCuentas.Edit;
      QcuentasCAT_CUENTA.Value := CtaCxP;
      QCuentasDET_ORIGEN.Value := 'Credito';
      QCuentasDET_MONTO.Value  := (QFacturaFAC_GRABADO.Value +
      QFacturaFAC_EXENTO.Value + QFacturafac_selectivo.Value + QFacturafac_flete.Value +
      QFacturafac_servicios.Value + QFacturafac_proplegal.Value + QFacturafac_otrosimpuestos.Value) - QFacturafac_descuento.Value;
      QCuentas.Post;
    End;
  end;
END;

procedure TfrmFacProvee.QDetalleDET_CONITBISChange(Sender: TField);
begin
  if not QDetalleDET_CONITBIS.IsNull then
    if (UpperCase(QDetalleDET_CONITBIS.Value) <> 'S') and
    (UpperCase(QDetalleDET_CONITBIS.Value) <> 'N') then
        QDetalleDET_CONITBIS.Clear;
end;

procedure TfrmFacProvee.QDetalleBeforePost(DataSet: TDataSet);
begin
  if not QDetallePRO_CODIGO.isnull then
    Lista.Items.Add(IntToStr(QDetallePRO_CODIGO.Value));

  if trim(QDetalleDET_MEDIDA.Value) = '' then QDetalleDET_MEDIDA.Value := MedidaAlm;
  QDetalleDET_CONITBIS.value := UpperCase(QDetalleDET_CONITBIS.value);

  if (StrToFloat(Format('%10.2F',[QDetalleDET_COSTOUND.Value])) <>
  StrToFloat(Format('%10.2F',[QDetalledet_costound_ant.Value]))) or
  (StrToFloat(Format('%10.2F',[QDetalleDET_COSTOEMP.Value])) <>
  StrToFloat(Format('%10.2F',[QDetalledet_costoemp_ant.Value]))) then
  begin
    QDetalledet_cambiarprecio.Value := 'S';
  end;

  QDetalledet_cambiarprecio.Value := UpperCase(QDetalledet_cambiarprecio.Value);
  if QDetalleDET_MEDIDA.Value = 'Und' then
    QDetalleDET_COSTO.value := QDetalleDET_COSTOUND.Value
  else if QDetalleDET_MEDIDA.Value = 'Emp' then
    QDetalleDET_COSTO.value := QDetalleDET_COSTOEMP.Value;

  if (QDetalleDET_CANTIDAD.AsFloat > QDetalledet_cant_pendiente.AsFloat) and
  (QDetalledet_cant_pendiente.AsFloat > 0) then
  begin
    MessageDlg('No puedes recibir mas de la cantidad pedida', mtError, [mbOK], 0);
    QDetalleDET_CANTIDAD.Clear;
    abort;
  end;
  

end;

procedure TfrmFacProvee.FormPaint(Sender: TObject);
begin
  with frmFacProvee do
  begin
    Top  := 2;
    Left := 2;
    //width := frmMain.Width - 100;
    //height := frmMain.Height - 120;
  end;
end;

procedure TfrmFacProvee.BitBtn2Click(Sender: TObject);
var
  a, dias : integer;
begin
  if not QFacturaSUP_CODIGO.IsNull then
  begin
    Search.Query.clear;
    Search.AliasFields.clear;
    Search.Query.add('select ped_numero, ped_fecha, ped_nombre');
    Search.Query.add('from pedidos');
    Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
    Search.Query.add('and ped_tipo = '+#39+'S'+#39);
    Search.Query.add('and (ped_status = '+QuotedStr('EMI')+' or ped_status = '+QuotedStr('PAR')+')');
    Search.Query.add('and sup_codigo = '+IntToStr(QFacturaSUP_CODIGO.Value));
    Search.Query.add('and suc_codigo = '+IntToStr(DBLookupComboBox2.KeyValue));
    Search.AliasFields.add('Número');
    Search.AliasFields.add('Fecha');
    Search.AliasFields.add('Proveedor');
    Search.Title := 'Ordenes de Compra';
    Search.ResultField := 'ped_numero';
    if Search.execute then
    begin
      //Condiciones de pago
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select c.cpa_dias from condiciones c, pedidos p');
      dm.Query1.SQL.Add('where c.emp_codigo = p.emp_codigo');
      dm.Query1.SQL.Add('and c.cpa_codigo = p.cpa_codigo');
      dm.Query1.SQL.Add('and c.emp_codigo = :emp');
      dm.Query1.SQL.Add('and p.ped_tipo = '+#39+'S'+#39);
      dm.Query1.SQL.Add('and p.ped_numero = :num');
      dm.Query1.SQL.Add('and p.suc_codigo = :suc');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.ParamByName('num').Value := StrToInt(Search.ValueField);
      dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
      dm.Query1.Open;
      dias := dm.Query1.FieldByName('cpa_dias').AsInteger;

      QUtil.Close;
      QUtil.SQL.Clear;
      QUtil.SQL.Add('select sup_codigo, ped_nombre, ped_descuento');
      QUtil.SQL.Add('from pedidos');
      QUtil.SQL.Add('where emp_codigo = :emp');
      QUtil.SQL.Add('and ped_tipo = '+#39+'S'+#39);
      QUtil.SQL.Add('and ped_numero = :num');
      QUtil.SQL.Add('and suc_codigo = :suc');
      QUtil.Parameters.ParamByName('emp').Value := dm.vp_cia;
      QUtil.Parameters.ParamByName('num').Value := StrToInt(Search.ValueField);
      QUtil.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
      QUtil.Open;

      tProveedor.Text             := QUtil.FieldByName('ped_nombre').AsString;
      QFacturaFAC_DESCUENTO.Value := QUtil.FieldByName('ped_descuento').AsFloat;
      QFacturaSUP_CODIGO.Value    := QUtil.FieldByName('sup_codigo').AsInteger;

      QUtil.Close;
      QUtil.SQL.Clear;
      QUtil.SQL.Add('select p.det_secuencia, p.pro_codigo, p.pro_roriginal,');
      QUtil.SQL.Add('p.pro_rfabric, p.det_descripcion, p.det_cantidad, p.det_medida,');
      QUtil.SQL.Add('p.det_precio, p.det_conitbis, p.det_itbis, p.det_facturado,');
      QUtil.SQL.Add('isnull(p.det_descuento,0) as det_descuento,');
      QUtil.SQL.Add('isnull((select pro_preciomenor from productos where emp_codigo = p.emp_codigo and pro_codigo = p.pro_codigo),0) pro_preciomenor');
      QUtil.SQL.Add('from det_pedido p');
      QUtil.SQL.Add('where emp_codigo = :emp');
      QUtil.SQL.Add('and ped_tipo = '+#39+'S'+#39);
      QUtil.SQL.Add('and ped_numero = :num');
      QUtil.SQL.Add('and det_cantidad is not null');
      QUtil.SQL.Add('and det_status = '+#39+'PED'+#39);
      QUtil.SQL.Add('and suc_codigo = :suc');
      QUtil.Parameters.ParamByName('emp').Value := dm.vp_cia;
      QUtil.Parameters.ParamByName('num').Value := StrToInt(Search.ValueField);
      QUtil.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
      QUtil.Open;

      QDetalle.close;
      QDetalle.open;
      QDetalle.disablecontrols;
      QDetalle.First;
      while not QUtil.Eof do
      begin
        QDetalle.append;
        QDetalleDET_SECUENCIA.Value := QUtil.FieldByName('det_secuencia').AsInteger;
        QDetalleDET_CANTIDAD.Value  := QUtil.FieldByName('det_cantidad').AsFloat -
                                       QUtil.FieldByName('det_facturado').AsFloat;
        QDetallePRO_RFABRIC.Value   := QUtil.FieldByName('pro_rfabric').AsString;
        QDetallePRO_RORIGINAL.Value := QUtil.FieldByName('pro_roriginal').AsString;
        QDetallePRO_CODIGO.Value    := QUtil.FieldByName('pro_codigo').AsInteger;
        //QDetalleDET_COSTO.Value     := QUtil.FieldByName('det_precio').AsFloat;
        QDetalleEMP_CODIGO.Value    := dm.vp_cia;
        QDetalleDET_ITBIS.Value     := QUtil.FieldByName('det_itbis').AsFloat;
        QDetallePRO_PRECIOMINIMO.Value := QUtil.fieldbyname('pro_preciomenor').AsFloat;
        QDetallePRO_NOMBRE.Value    := QUtil.FieldByName('det_descripcion').AsString;
        QDetalleFAC_NUMERO.value    := QFacturaFAC_NUMERO.value;
        QDetalleSUP_CODIGO.Value    := QFacturaSUP_CODIGO.Value;
        QDetalledet_Descuento.Value := QUtil.FieldByName('det_descuento').AsFloat;
        QDetalleDET_MEDIDA.Value    := QUtil.FieldByName('det_medida').AsString;
        QDetalleDET_COSTO.Value     := QUtil.FieldByName('det_precio').AsFloat; {-
                                       ((QUtil.FieldByName('det_precio').AsFloat *
                                       QUtil.FieldByName('det_descuento').AsFloat)/100);
        QDetalleDET_CONITBIS.Value  := QUtil.FieldByName('det_conitbis').AsString;}
        if QDetalleDET_MEDIDA.Value = 'Und' then
          QDetalleDET_COSTOUND.Value  := QUtil.FieldByName('det_precio').AsFloat {-
                                       ((QUtil.FieldByName('det_precio').AsFloat *
                                       QUtil.FieldByName('det_descuento').AsFloat)/100)}
        else if QDetalleDET_MEDIDA.Value = 'Emp' then
          QDetalleDET_COSTOEMP.Value  := QUtil.FieldByName('det_precio').AsFloat; {-
                                       ((QUtil.FieldByName('det_precio').AsFloat *
                                       QUtil.FieldByName('det_descuento').AsFloat)/100);}


        //buscando la cantidad ya facturada
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select	sum(isnull(d.det_cantidad,0)) as cant');
        dm.Query1.SQL.Add('from Det_ProvFacturas d, provfacturas f');
        dm.Query1.SQL.Add('where d.emp_codigo = f.emp_codigo');
        dm.Query1.SQL.Add('and d.sup_codigo = f.sup_codigo');
        dm.Query1.SQL.Add('and d.fac_numero = f.fac_numero');
        dm.Query1.SQL.Add('and f.emp_codigo = :emp');
        dm.Query1.SQL.Add('and f.ped_numero = :ped');
        dm.Query1.SQL.Add('and d.pro_codigo = :pro');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
        dm.Query1.Parameters.ParamByName('ped').Value := StrToInt(Search.ValueField);
        dm.Query1.Parameters.ParamByName('pro').Value := QUtil.FieldByName('pro_codigo').AsInteger;
        dm.Query1.Open;
        QDetalledet_cant_pendiente.Value := QUtil.FieldByName('det_cantidad').AsFloat - dm.Query1.FieldByName('cant').AsFloat;

        QDetalleDET_CANTIDAD.Value   := QDetalledet_cant_pendiente.Value;
                                       
        QDetalle.Post;

        QUtil.Next;
      end;

{      QDetalle.last;
      for a := QDetalleDET_SECUENCIA.value+1 to 50 do
      begin
        QDetalle.append;
        QDetalleDET_SECUENCIA.value := a;
        QDetalleFAC_NUMERO.value    := QFacturaFAC_NUMERO.value;
        QDetalleSUP_CODIGO.Value    := QFacturaSUP_CODIGO.Value;
        QDetalle.post;
        QDetalle.next;
      end;}
      QDetalle.first;
      QDetalle.enablecontrols;

      Totalizar;

      QFactura.Edit;
      QFacturaPED_NUMERO.Value := StrToInt(Search.ValueField);
      QFacturaFAC_DIAS.Value   := dias;
      PageControl1.ActivePageIndex := 0;
      Grid.SetFocus;
    end;
  end
  else
  begin
    MessageDlg('DEBE SELECCIONAR EL PROVEEDOR',mtError,[mbok],0);
    edProveedor.SetFocus;
  end;
end;

procedure TfrmFacProvee.PuedeModificar;
begin
  if Modificar = False then
  begin
    if QFacturaFAC_STATUS.Value = 'PAG' then
    Begin
      Messagedlg('ESTA FACTURA YA ESTA PAGA, NO PUEDE SER MODIFICADA',
      mtError, [mbok], 0);
    End
    else if QFacturaFAC_STATUS.Value = 'ANU' then
    Begin
      Messagedlg('ESTA FACTURA YA ESTA ANULADA, NO PUEDE SER MODIFICADA',
      mtError, [mbok], 0);
    End
    else if StrToFloat(Format('%10.2f',[QFacturaFAC_ABONO.Value])) > 0 then
    Begin
      Messagedlg('ESTA FACTURA TIENE ABONOS, NO PUEDE SER MODIFICADA',
      mtError, [mbok], 0);
    End
    else if (vMod = False) and (Accion = 2) then
    Begin
      Messagedlg('USTED NO TIENE ACCESO A MODIFICAR ESTA FACTURA',
      mtError, [mbok], 0);
    End;
  end;
end;

procedure TfrmFacProvee.QDetalleBeforeDelete(DataSet: TDataSet);
begin
  if Verifica = True then
  Begin
    PuedeModificar;
    if Modificar = False then Abort;
  End;
end;

procedure TfrmFacProvee.QFacturaAfterEdit(DataSet: TDataSet);
begin
  if Verifica = True then
  Begin
    PuedeModificar;
    if Modificar = False then QFactura.Cancel;
  End;
end;

procedure TfrmFacProvee.QDetalleAfterEdit(DataSet: TDataSet);
begin
  if Verifica = True then
  Begin
    PuedeModificar;
    if Modificar = False then QDetalle.Cancel;
  End;
end;

procedure TfrmFacProvee.QFacturaFAC_DESCUENTOChange(Sender: TField);
begin
if (QCuentas.Active) and (not QFacturaFAC_DESCUENTO.IsNull) then begin
if (not dm.QContabPAR_CTADESCCOMP.isNull) then
  begin
    if not QCuentas.Locate('cat_cuenta', dm.QContabPAR_CTADESCCOMP.Value ,[]) then
    Begin
      QCuentas.Append;
      QcuentasCAT_CUENTA.Value := dm.QContabPAR_CTADESCCOMP.Value;
      QCuentasDET_ORIGEN.Value := 'Credito';
      QCuentasDET_MONTO.Value  := QFacturaFAC_DESCUENTO.Value;
      QCuentas.Post;
    end
    else
    Begin
      QCuentas.Edit;
      QcuentasCAT_CUENTA.Value := dm.QContabPAR_CTADESCCOMP.Value;
      QCuentasDET_ORIGEN.Value := 'Credito';
      QCuentasDET_MONTO.Value  := QFacturaFAC_DESCUENTO.Value;
      QCuentas.Post;
    End;
  end;
    if (not QCuentas.Locate('cat_cuenta', CtaCxP,[])) then
    Begin
      QCuentas.Append;
      QcuentasCAT_CUENTA.Value := CtaCxP;
      QCuentasDET_ORIGEN.Value := 'Credito';
      QCuentasDET_MONTO.Value  := (QFacturaFAC_GRABADO.Value + QFacturaFAC_EXENTO.Value+
      QFacturafac_flete.Value + QFacturafac_servicios.Value + QFacturafac_selectivo.Value +
      QFacturaFAC_ITBIS.Value + QFacturafac_proplegal.Value + QFacturafac_otrosimpuestos.Value) -
      (QFacturaFAC_DESCUENTO.Value + QFacturafac_retencion.Value + QFacturafac_retencion_isr.Value);
      QCuentas.Post;

    End
    else
    Begin
      QCuentas.Edit;
      QcuentasCAT_CUENTA.Value := CtaCxP;
      QCuentasDET_ORIGEN.Value := 'Credito';
      QCuentasDET_MONTO.Value  := QFacturaFAC_EXENTO.Value + QFacturaFAC_GRABADO.Value+
      QFacturaFAC_ITBIS.Value - QFacturaFAC_DESCUENTO.Value;
      QCuentas.Post;
    End;

  if (CtaCompra <> '') then
  begin
    if not QCuentas.Locate('cat_cuenta', CtaCompra,[]) then
    Begin
      QCuentas.Append;
      QcuentasCAT_CUENTA.Value := CtaCompra;
      QCuentasDET_ORIGEN.Value := 'Debito';
      QCuentasDET_MONTO.Value  := QFacturaFAC_EXENTO.Value + QFacturaFAC_GRABADO.Value;
      QCuentas.Post;
    End
    else
    Begin
      QCuentas.Edit;
      QcuentasCAT_CUENTA.Value := CtaCompra;
      QCuentasDET_ORIGEN.Value := 'Debito';
      QCuentasDET_MONTO.Value  := QFacturaFAC_EXENTO.Value + QFacturaFAC_GRABADO.Value;
      QCuentas.Post;
    End;
  end;
end;
end;

procedure TfrmFacProvee.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     if (activecontrol.classtype <> tdbgrid) and (activecontrol.classtype <> TDBGridObj) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmFacProvee.GridCuentasColEnter(Sender: TObject);
begin
  if GridCuentas.SelectedIndex = 2 then
    GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1;
end;

procedure TfrmFacProvee.GridCuentasEnter(Sender: TObject);
begin
  GridCuentas.SelectedIndex := 1;
end;

procedure TfrmFacProvee.GridCuentasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if GridCuentas.SelectedIndex = 3 then
  begin
    if key = 68 then
    begin
      QCuentas.Edit;
      QCuentasDET_ORIGEN.Value := 'Debito';
      GridCuentas.SelectedIndex := 4;
    end
    else if key = 67 then
    begin
      QCuentas.Edit;
      QCuentasDET_ORIGEN.Value := 'Credito';
      GridCuentas.SelectedIndex := 4;
    end;
  end;
  if key = vk_f5 then btBuscaCtaClick(Self);
  if key = vk_f6 then btEliminaCtaClick(Self);
  if key = vk_insert then abort;
  if (ssCtrl in Shift) and (key = vk_delete) then abort;
  if key = vk_return then
     if GridCuentas.SelectedIndex <> 4 then
        GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1
     else
     begin
       GridCuentas.SelectedIndex := 1;
       QCuentas.Append;
     end;
end;

procedure TfrmFacProvee.QCuentasCAT_CUENTAChange(Sender: TField);
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
    if dm.Query1.RecordCount = 0 then
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
    end
    else if dm.Query1.RecordCount > 0 then
    begin
      QCuentas.Edit;
      QCuentasCAT_NOMBRE.Value := dm.Query1.FieldByName('cat_nombre').AsString;
      GridCuentas.SelectedIndex := 2;
    end;
  end;
end;

procedure TfrmFacProvee.btBuscaCtaClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and cat_movimiento = '+#39+'S'+#39);
  Search.AliasFields.Add('Descripción');
  Search.AliasFields.Add('Cuenta');
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catalogo de Cuentas';
  if Search.execute then
  begin
    QCuentas.Edit;
    QcuentasCAT_CUENTA.Value := Search.ValueField;
  end;
end;

procedure TfrmFacProvee.btEliminaCtaClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR LA CUENTA?',mtconfirmation,[mbyes,mbno],0) = mryes then
    QCuentas.Delete;

  PageControl1.ActivePageIndex := 1;
  GridCuentas.setfocus;
end;

procedure TfrmFacProvee.QFacturaSUP_CODIGOChange(Sender: TField);
var
  ncf : string;
begin
  if not QFacturaSUP_CODIGO.IsNull then
  Begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select sup_cuenta, sup_ctacompra, sup_tipo, sup_rnc,dias_creditos from proveedores');
    Query1.SQL.Add('where emp_Codigo = :emp');
    Query1.SQL.Add('and sup_Codigo = :sup');
    Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    Query1.Parameters.ParamByName('sup').Value := QFacturaSUP_CODIGO.Value;
    Query1.Open;
    if Query1.RecordCount > 0 then
    begin
      TipoProv := Query1.FieldByName('sup_tipo').AsString;
      DBEdit19.Visible := (TipoProv <> 'I') and (TipoProv <> 'E');
      Label3.Visible := (TipoProv <> 'I') and (TipoProv <> 'E');
      RNC := Query1.FieldByName('sup_rnc').AsString;
      edProveedor.Text := QFacturaSUP_CODIGO.AsString;

    if not Query1.fieldbyname('dias_creditos').IsNull then
      dias_creditos := Query1.fieldbyname('dias_creditos').asinteger
    else
      dias_creditos := 30;
    QFacturaFAC_DIAS.Value := dias_creditos;


      //Cuenta de CxP
      if not Query1.FieldByName('sup_cuenta').IsNull then
      begin
        CtaCxP := Query1.FieldByName('sup_cuenta').AsString;
        if not QCuentas.Locate('cat_cuenta', Query1.FieldByName('sup_cuenta').AsString,[]) then
        Begin
          QCuentas.Append;
          QcuentasCAT_CUENTA.Value := CtaCxP;
          QCuentasDET_ORIGEN.Value := 'Credito';
          QCuentasDET_MONTO.Value  := QFacturaFAC_TOTAL.Value;
          QCuentas.Post;
        End;
      end;
      //Cuenta Compra
      if not Query1.FieldByName('sup_ctacompra').IsNull then
      begin
        CtaCompra := Query1.FieldByName('sup_ctacompra').AsString;
        if not QCuentas.Locate('cat_cuenta', Query1.FieldByName('sup_ctacompra').AsString,[]) then
        Begin
          QCuentas.Append;
          QcuentasCAT_CUENTA.Value := CtaCompra;
          QCuentasDET_ORIGEN.Value := 'Debito';
          QCuentasDET_MONTO.Value  := (QFacturaFAC_GRABADO.Value +
                                   QFacturaFAC_EXENTO.Value +
                                   QFacturafac_selectivo.Value +
                                   QFacturafac_servicios.Value +
                                   QFacturafac_flete.Value+
                                   QFacturaFAC_ITBIS.Value+
                                   QFacturafac_proplegal.Value+
                                   QFacturafac_otrosimpuestos.Value) -
                                   QFacturafac_descuento.Value -
                                   QFacturafac_retencion.Value -
                                   QFacturafac_retencion_isr.Value;
      QCuentas.Post;
        End
        else
        begin
          QCuentas.Edit;
          QcuentasCAT_CUENTA.Value := CtaCompra;
          QCuentasDET_ORIGEN.Value := 'Debito';
          QCuentasDET_MONTO.Value  := (QFacturaFAC_GRABADO.Value +
                                   QFacturaFAC_EXENTO.Value +
                                   QFacturafac_selectivo.Value +
                                   QFacturafac_servicios.Value +
                                   QFacturafac_flete.Value+
                                   QFacturaFAC_ITBIS.Value+
                                   QFacturafac_proplegal.Value+
                                   QFacturafac_otrosimpuestos.Value) -
                                   QFacturafac_descuento.Value -
                                   QFacturafac_retencion.Value -
                                   QFacturafac_retencion_isr.Value;
      QCuentas.Post;
        end;
      end;
      if (TipoProv <> 'I') and (TipoProv <> 'E') then
      begin
        Query2.Close;
        Query2.SQL.Clear;
        Query2.SQL.Add('select max(ncf) as ncf from provfacturas');
        Query2.SQL.Add('where emp_codigo = :emp');
        Query2.SQL.Add('and sup_codigo = :sup');
        Query2.Parameters.ParamByName('emp').Value := dm.vp_cia;
        Query2.Parameters.ParamByName('sup').Value := QFacturaSUP_CODIGO.Value;
        Query2.Open;
        ncf := Query2.FieldByName('ncf').AsString;
        QFacturaNCF.Value := copy(ncf,1,8);
      end
      else
        QFacturaNCF.Clear;

      //Datos de Cashflow
      Query2.Close;
      Query2.SQL.Clear;
      Query2.SQL.Add('select t.Cashflow_Grupo, t.Cashflow_Subgrupo, t.Cashflow_Concepto');
      Query2.SQL.Add('from Tipo_Proveedor t, proveedores p');
      Query2.SQL.Add('where t.emp_codigo = p.emp_codigo');
      Query2.SQL.Add('and t.tip_codigo = p.tip_codigo');
      Query2.SQL.Add('and p.emp_codigo = :emp');
      Query2.SQL.Add('and p.sup_codigo = :sup');
      Query2.Parameters.ParamByName('emp').Value := QFacturaEMP_CODIGO.Value;
      Query2.Parameters.ParamByName('sup').Value := QFacturaSUP_CODIGO.Value;
      Query2.Open;
      if Query2.RecordCount > 0 then
      begin
        if not Query2.FieldByName('Cashflow_Grupo').IsNull then
        begin
          if Query2.FieldByName('Cashflow_Grupo').AsInteger > 0 then
            QFacturaCashflow_Grupo.Value    := Query2.FieldByName('Cashflow_Grupo').AsInteger;

          if Query2.FieldByName('Cashflow_Subgrupo').AsInteger > 0 then
            QFacturaCashflow_Subgrupo.Value := Query2.FieldByName('Cashflow_Subgrupo').AsInteger;

          if Query2.FieldByName('Cashflow_Concepto').AsInteger > 0 then
            QFacturaCashflow_Concepto.Value := Query2.FieldByName('Cashflow_Concepto').AsInteger;
        end;
      end;
    end;
  end;
end;

procedure TfrmFacProvee.QFacturaFAC_EXENTOChange(Sender: TField);
begin
if (QCuentas.Active) and  (not QFacturaFAC_EXENTO.IsNull) and (CtaCompra <> '') then
  begin
    if not QCuentas.Locate('cat_cuenta', CtaCompra,[]) then
    Begin
      QCuentas.Append;
      QcuentasCAT_CUENTA.Value := CtaCompra;
      QCuentasDET_ORIGEN.Value := 'Debito';
      QCuentasDET_MONTO.Value  := QFacturaFAC_EXENTO.Value+QFacturaFAC_GRABADO.Value;
      QCuentas.Post;
    End
    else
    Begin
      QCuentas.Edit;
      QcuentasCAT_CUENTA.Value := CtaCompra;
      QCuentasDET_ORIGEN.Value := 'Debito';
      QCuentasDET_MONTO.Value  := QFacturaFAC_EXENTO.Value+QFacturaFAC_GRABADO.Value;
      QCuentas.Post;
    End;
  end;
  if (CtaCxP <> '') then
  begin
    if not QCuentas.Locate('cat_cuenta', CtaCxP,[]) then
    Begin
      QCuentas.Append;
      QcuentasCAT_CUENTA.Value := CtaCxP;
      QCuentasDET_ORIGEN.Value := 'Credito';
      QCuentasDET_MONTO.Value  := (QFacturaFAC_GRABADO.Value + QFacturaFAC_EXENTO.Value+
      QFacturafac_flete.Value + QFacturafac_servicios.Value + QFacturafac_selectivo.Value +
      QFacturaFAC_ITBIS.Value + QFacturafac_proplegal.Value + QFacturafac_otrosimpuestos.Value) -
      (QFacturaFAC_DESCUENTO.Value + QFacturafac_retencion.Value + QFacturafac_retencion_isr.Value);
      QCuentas.Post;
    End
    else
    Begin
      QCuentas.Edit;
      QcuentasCAT_CUENTA.Value := CtaCxP;
      QCuentasDET_ORIGEN.Value := 'Credito';
      QCuentasDET_MONTO.Value  := (QFacturaFAC_GRABADO.Value + QFacturaFAC_EXENTO.Value+
      QFacturafac_flete.Value + QFacturafac_servicios.Value + QFacturafac_selectivo.Value +
      QFacturaFAC_ITBIS.Value + QFacturafac_proplegal.Value + QFacturafac_otrosimpuestos.Value) -
      (QFacturaFAC_DESCUENTO.Value + QFacturafac_retencion.Value + QFacturafac_retencion_isr.Value);
      QCuentas.Post;
    End;
  end;
end;

procedure TfrmFacProvee.QFacturaFAC_ITBISChange(Sender: TField);
begin
   if (QCuentas.Active) and (not QFacturaFAC_ITBIS.IsNull) and (not dm.QContabpar_cta_itbis_compra.IsNull) then
  begin
    if not QCuentas.Locate('cat_cuenta', dm.QContabpar_cta_itbis_compra.Value ,[]) then
    Begin
      QCuentas.Append;
      QcuentasCAT_CUENTA.Value := dm.QContabpar_cta_itbis_compra.Value;
      QCuentasDET_ORIGEN.Value := 'Debito';
      QCuentasDET_MONTO.Value  := QFacturaFAC_ITBIS.Value;
      QCuentas.Post;
    End
    else
    Begin
      QCuentas.Edit;
      QcuentasCAT_CUENTA.Value := dm.QContabpar_cta_itbis_compra.Value;
      QCuentasDET_ORIGEN.Value := 'Debito';
      QCuentasDET_MONTO.Value  := QFacturaFAC_ITBIS.Value;
      QCuentas.Post;
    End;
  end;
  if (CtaCxP <> '') then
  begin
    if not QCuentas.Locate('cat_cuenta', CtaCxP,[]) then
    Begin
      QCuentas.Append;
      QcuentasCAT_CUENTA.Value := CtaCxP;
      QCuentasDET_ORIGEN.Value := 'Credito';
      QCuentasDET_MONTO.Value  := QFacturaTotal.Value;
      QCuentas.Post;
    End
    else
    Begin
      QCuentas.Edit;
      QcuentasCAT_CUENTA.Value := CtaCxP;
      QCuentasDET_ORIGEN.Value := 'Credito';
      QCuentasDET_MONTO.Value  := QFacturaTotal.Value;
      QCuentas.Post;
    End;
  end;
end;

procedure TfrmFacProvee.QFacturaALM_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QFacturaALM_CODIGO.IsNull then
  begin
    Text := IntToStr(QFacturaALM_CODIGO.Value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select alm_codigo, alm_nombre, alm_medida');
    dm.Query1.sql.add('from almacen');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and alm_codigo = :alm');
    dm.Query1.Parameters.parambyname('alm').Value := QFacturaALM_CODIGO.Value;
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    if dm.Query1.RecordCount > 0 then
    begin
      tAlmacen.text := dm.Query1.fieldbyname('alm_nombre').asstring;
      MedidaAlm     := dm.Query1.fieldbyname('alm_medida').AsString;
    end
    else
      tAlmacen.text := '';
  end
  else
    tAlmacen.text := '';
end;

procedure TfrmFacProvee.Totalizar;
var
  Punt : TBookMark;
begin
  if Totaliza = True then
  Begin
    Debitos  := 0;
    Creditos := 0;
    Punt := QCuentas.GetBookmark;
    QCuentas.DisableControls;
    QCuentas.First;
    while not QCuentas.Eof do
    begin
      if QCuentasDET_ORIGEN.Value = 'Debito' then
        Debitos  := Debitos  + QCuentasDET_MONTO.Value
      else
        Creditos := Creditos + QCuentasDET_MONTO.Value;
      QCuentas.Next;
    end;
    QCuentas.GotoBookmark(Punt);
    QCuentas.EnableControls;
    lbCR.Caption  := Format('%n',[Creditos]);
    lbDB.Caption  := Format('%n',[Debitos]);
    lbBAL.Caption := Format('%n',[Debitos-Creditos]);
  end;
  if Trim(lbBAL.Caption) <> '0.00' then
    lbBAL.Font.Color := clRed
  else
    lbBAL.Font.Color := clBlack;

lbdiferencia.Caption := lbBAL.Caption;
end;

procedure TfrmFacProvee.QCuentasAfterPost(DataSet: TDataSet);
begin
  Totalizar;
end;

procedure TfrmFacProvee.QCuentasAfterDelete(DataSet: TDataSet);
begin
  Totalizar;
end;

procedure TfrmFacProvee.QCuentasAfterEdit(DataSet: TDataSet);
begin
  if Verifica = True then
  Begin
    PuedeModificar;
    if Modificar = False then QCuentas.Cancel;
  End;
end;

procedure TfrmFacProvee.QCuentasBeforeDelete(DataSet: TDataSet);
begin
  if Verifica = True then
  Begin
    PuedeModificar;
    if Modificar = False then Abort;
  End;
end;

procedure TfrmFacProvee.QCuentasAfterInsert(DataSet: TDataSet);
begin
  if Verifica = True then
  Begin
    PuedeModificar;
    if Modificar = False then QCuentas.Cancel;
  End;
end;

procedure TfrmFacProvee.QDetalleNewRecord(DataSet: TDataSet);
begin
  QDetalleDET_CANTDEVUELTA.Value  := 0;
  QDetallepro_pasaoferta.Value    := 'False';
  QDetalleDET_MEDIDA.Value        := MedidaAlm;
  QDetalledet_cambiarprecio.Value := 'N';
end;

procedure TfrmFacProvee.TotalizarProd;
var
  Punt : TBookMark;
  Venta, NumItbis, Oferta, cant, dif, det_cant_unidad_medida, titbis : Double;
  CantLineas : Integer;
begin
  if Totaliza = True then
  Begin
    Punt := QDetalle.GetBookmark;
    QDetalle.DisableControls;
    QDetalle.First;
    Exento := 0;
    Grabado := 0;
    Oferta  := 0;
    cant    := 0;
    CantLineas := 0;
    TotalProducto := 0;
    titbis := 0;
    while not QDetalle.Eof do
    begin
      CantLineas := CantLineas + 1;
      if dm.QParametrospar_inv_unidad_medida.Value <> 'True' then
      begin
        if (QDetalledet_medida.Value = 'Und') or (QDetalledet_medida.Value = 'UND') then
        begin
          if QDetalleDET_ITBIS.AsFloat = 0 then
            Exento := Exento + (QDetallePrecioItbis.Value * QDetalleDET_CANTIDAD.Value)
          else
          Grabado := Grabado + (QDetallePrecioItbis.Value * QDetalleDET_CANTIDAD.Value);
          titbis := titbis +  ((((QDetallePrecioItbis.Value-(QDetallePrecioItbis.Value*(QDetalledet_Descuento.Value/100))) * QDetalleDET_ITBIS.Value)/100) * QDetalleDET_CANTIDAD.Value);
        end
        else
        begin
          if QDetalleDET_ITBIS.AsFloat = 0 then
            Exento := Exento + (QDetallePrecioItbisEmp.Value * QDetalleDET_CANTIDAD.Value)
          else
            Grabado := Grabado + (QDetallePrecioItbisEmp.Value * QDetalleDET_CANTIDAD.Value);
          titbis := titbis + (((QDetalleDET_COSTOEMP.Value * QDetalleDET_ITBIS.Value)/100) * QDetalleDET_CANTIDAD.Value);
        end;
      end
      else
      begin
        if QDetalledet_cant_unidad_medida.AsFloat = 0 then
          det_cant_unidad_medida := 1
        else
          det_cant_unidad_medida := QDetalledet_cant_unidad_medida.AsFloat;

        if QDetalleDET_ITBIS.AsFloat = 0 then
          Exento := Exento + (QDetallePrecioItbis.Value * (QDetalleDET_CANTIDAD.Value * det_cant_unidad_medida))
        else
          Grabado := Grabado + (QDetallePrecioItbis.Value * (QDetalleDET_CANTIDAD.Value * det_cant_unidad_medida));
      end;
      if QDetalledet_oferta.Value > 0 then
      begin
        cant := cant + (QDetalledet_oferta.Value* det_cant_unidad_medida);
        Oferta := Oferta + (QDetallePrecioItbis.Value * QDetalledet_oferta.Value);
      end;
      QDetalle.Next;
    end;
    QDetalle.GotoBookmark(Punt);
    QDetalle.EnableControls;
    lbcant.Caption := IntToStr(CantLineas)+' Líneas';
    lbexcentos.Caption := Format('%n',[Exento]);
    lbgrabados.Caption := Format('%n',[Grabado]);
    TotalProducto := (Exento + Grabado) + titbis;

    if dm.QParametrospar_compras_valores_aut.AsString = 'True' then
    begin
      QFacturaFAC_GRABADO.Value := Grabado;
      QFacturaFAC_EXENTO.Value  := Exento;
      QFacturaFAC_ITBIS.Value := titbis;
    end;

    QFacturafac_total_oferta.Value := oferta;
  end;
end;

procedure TfrmFacProvee.QDetalleDET_MEDIDAChange(Sender: TField);
begin
  QDetalle.Edit;
  if QDetalleDET_MEDIDA.Value = 'Und' then
    QDetalleDET_COSTO.value := QDetalleDET_COSTOUND.Value
  else if QDetalleDET_MEDIDA.Value = 'Emp' then
    QDetalleDET_COSTO.value := QDetalleDET_COSTOEMP.Value;
end;

procedure TfrmFacProvee.dsFacturaDataChange(Sender: TObject;
  Field: TField);
begin
{  DBEdit4.Enabled := QFacturaPED_NUMERO.IsNull;
  DBEdit7.Enabled := QFacturaPED_NUMERO.IsNull;}
end;


procedure TfrmFacProvee.BuscaProd(campo : string);
begin
  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select pro_codigo, pro_nombre, pro_costo, pro_precio1,');
  dm.Query1.sql.add('pro_precio2, pro_precio3, pro_precio4, pro_servicio,');
  dm.Query1.sql.add('pro_roriginal, pro_rfabric, pro_itbis, pro_vence,');
  dm.Query1.sql.add('pro_costoempaque, pro_beneficio, pro_beneficio2, PRO_COMBO,');
  dm.Query1.sql.add('pro_beneficio3, pro_beneficio4, pro_preciomenor, pro_status,');
  dm.Query1.sql.add('pro_preciomenoremp, pro_costous, pro_detallado, pro_cantempaque, UnidadID, pro_montoitbis');
  dm.Query1.sql.add('from productos');
  dm.Query1.sql.add('where emp_codigo = :emp');
  if campo = 'I' then
  begin
    dm.Query1.sql.add('and pro_codigo = :cod');
    dm.Query1.Parameters.parambyname('cod').Value := QDetallePRO_CODIGO.value;
  end
  else if campo = 'F' then
  begin
    dm.Query1.sql.add('and pro_rfabric = :cod');
    dm.Query1.Parameters.parambyname('cod').Value := QDetallePRO_RFABRIC.value;
  end
  else if campo = 'O' then
  begin
    dm.Query1.sql.add('and pro_roriginal = :cod');
    dm.Query1.Parameters.parambyname('cod').Value := QDetallePRO_RORIGINAL.value;
  end;
  dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
  dm.Query1.open;
  if (dm.Query1.FieldByName('pro_servicio').AsString = 'True') AND
     (dm.Query1.FieldByName('PRO_COMBO').AsString = 'False')  then
  begin
    MessageDlg('NO PUEDE INCLUIR ESTE PRODUCTO, DEBIDO A QUE'+#13+
               'ES UN SERVICIO',mtError,[mbok],0);
    QDetalle.Cancel;
    Grid.SelectedIndex := 0;
  end
  else
  if dm.Query1.FieldByName('pro_status').AsString = 'INA' then
  begin
    MessageDlg('NO PUEDE INCLUIR ESTE PRODUCTO, DEBIDO A QUE'+#13+
               'ESTA INACTIVO',mtError,[mbok],0);
    QDetalle.Cancel;
    Grid.SelectedIndex := 0;
  end
  else
  begin
    if campo = 'I' then
    begin
      QDetallePRO_RORIGINAL.value := dm.Query1.fieldbyname('pro_roriginal').asstring;
      QDetallePRO_RFABRIC.value   := dm.Query1.fieldbyname('pro_rfabric').asstring;
    end
    else if campo = 'F' then
    begin
      QDetallePRO_RORIGINAL.value := dm.Query1.fieldbyname('pro_roriginal').asstring;
      QDetallePRO_CODIGO.value    := dm.Query1.fieldbyname('pro_codigo').AsInteger;
    end
    else if campo = 'O' then
    begin
      QDetallePRO_RFABRIC.value   := dm.Query1.fieldbyname('pro_rfabric').asstring;
      QDetallePRO_CODIGO.value    := dm.Query1.fieldbyname('pro_codigo').AsInteger;
    end;
    QDetallepro_cantempaque.Value := dm.Query1.fieldbyname('pro_cantempaque').AsFloat;
    QDetallepro_detallado.Value := dm.Query1.fieldbyname('pro_detallado').asstring;
    QDetallePRO_NOMBRE.value    := dm.Query1.fieldbyname('pro_nombre').asstring;
    QDetalleDET_CONITBIS.value  := dm.Query1.fieldbyname('pro_itbis').asstring;
    QDetalleDET_VENCE.Value     := dm.Query1.fieldbyname('pro_vence').asstring;
    QDetalledet_costound_ant.Value  := dm.Query1.fieldbyname('pro_costo').AsFloat;
    QDetalledet_costoemp_ant.Value  := dm.Query1.fieldbyname('pro_costoempaque').AsFloat;
    QDetalleDET_COSTOUND.Value  := dm.Query1.fieldbyname('pro_costo').AsFloat;
    QDetalleDET_COSTOEMP.Value  := dm.Query1.fieldbyname('pro_costoempaque').AsFloat;
    QDetallePRO_BENEFICIO.Value     := dm.Query1.fieldbyname('pro_beneficio').AsFloat;
    QDetallePRO_BENEFICIO2.Value    := dm.Query1.fieldbyname('pro_beneficio2').AsFloat;
    QDetallePRO_BENEFICIO3.Value    := dm.Query1.fieldbyname('pro_beneficio3').AsFloat;
    QDetallePRO_BENEFICIO4.Value    := dm.Query1.fieldbyname('pro_beneficio4').AsFloat;
    QDetallePRO_PRECIO1.Value   := dm.Query1.fieldbyname('pro_precio1').AsFloat;
    QDetallePRO_PRECIO2.Value   := dm.Query1.fieldbyname('pro_precio2').AsFloat;
    QDetallePRO_PRECIO3.Value   := dm.Query1.fieldbyname('pro_precio3').AsFloat;
    QDetallePRO_PRECIO4.Value   := dm.Query1.fieldbyname('pro_precio4').AsFloat;
    QDetallePRO_PRECIOMINIMO.Value    := dm.Query1.fieldbyname('pro_preciomenor').AsFloat;
    QDetallePRO_PRECIOMINIMOEMP.Value := dm.Query1.fieldbyname('pro_preciomenoremp').AsFloat;
    QDetalleUnidadID.Value := dm.Query1.fieldbyname('UnidadID').AsString;
    QDetalleDET_ITBIS.Value := dm.Query1.fieldbyname('pro_montoitbis').AsFloat;


    if QDetalleDET_MEDIDA.Value = 'Und' then
      QDetalleDET_COSTO.value := QDetalleDET_COSTOUND.Value
    else if QDetalleDET_MEDIDA.Value = 'Emp' then                         
      QDetalleDET_COSTO.value := QDetalleDET_COSTOEMP.Value;

    if QFacturaMON_CODIGO.Value <> dm.QParametrosMON_CODIGO.Value then
      QDetalleDET_COSTO.Value := dm.Query1.fieldbyname('pro_costous').AsFloat;

    if QDetalleDET_ITBIS.Value > 0 then
      QDetalleDET_CONITBIS.Value := 'S'
    else
      QDetalleDET_CONITBIS.Value := 'N';

    if dm.QParametrospar_inv_unidad_medida.Value = 'True' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select secuencia, unidadid, precio, cantidad, credito, minimo from ProdUnidadMedida');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and pro_codigo = :pro');
      dm.Query1.SQL.Add('order by secuencia');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
      dm.Query1.Open;
      while not dm.Query1.Eof do
      begin
        QUnidades.Append;
        QUnidadespro_codigo.Value := QDetallePRO_CODIGO.Value;
        QUnidadesUnidadID.Value   := dm.Query1.FieldByName('unidadid').value;
        QUnidadesCantidad.Value   := dm.Query1.FieldByName('cantidad').value;
        QUnidadesPrecio.Value     := dm.Query1.FieldByName('precio').value;
        QUnidadesCredito.Value    := dm.Query1.FieldByName('credito').value;
        QUnidadesMinimo.Value     := dm.Query1.FieldByName('minimo').value;
        QUnidades.Post;

        dm.Query1.Next;
      end;

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
            QMedidas.Close;
            QMedidas.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
            QMedidas.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
            QMedidas.Parameters.ParamByName('und').Value := QDetallepro_unidad_medida.Value;
            QMedidas.Open;
            QDetalledet_cant_unidad_medida.Value := QMedidasCantidad.AsFloat;
          end;
        end;
      end;
    end;
  end;
end;

procedure TfrmFacProvee.precios;
var
  tcosto, rdesde, rhasta, rvalor : double;
  nValor, nEntero : String;
begin
  if QDetallepro_cantempaque.Value > 0 then
  begin
    //Precio al Detalle
    //Unidad
    //Precio1
    if QDetallePRO_BENEFICIO.Value > 0 then
      if dm.QParametrosPAR_PRECIOUND.Value = 'Precio1' then
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO.Value)/100))]))
        else
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO.Value)/100))]));

    //Precio2
    if QDetallePRO_BENEFICIO2.Value > 0 then
      if dm.QParametrosPAR_PRECIOUND.Value = 'Precio2' then
         if dm.QParametrospar_itbisincluido.Value = 'True' then
           QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO2.Value)/100))]))
         else
           QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO2.Value)/100))]));

    //Precio3
    if QDetallePRO_BENEFICIO3.Value > 0 then
      if dm.QParametrosPAR_PRECIOUND.Value = 'Precio3' then
         if dm.QParametrospar_itbisincluido.Value = 'True' then
           QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO3.Value)/100))]))
         else
           QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO3.Value)/100))]));

    //Precio4
    if QDetallePRO_BENEFICIO4.Value > 0 then
      if dm.QParametrosPAR_PRECIOUND.Value = 'Precio4' then
         if dm.QParametrospar_itbisincluido.Value = 'True' then
           QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO4.Value)/100))]))
         else
           QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO4.Value)/100))]));


    //Empaque
    //Precio1
    if QDetallePRO_BENEFICIO.Value > 0 then
      if dm.QParametrosPAR_PRECIOEMP.Value = 'Precio1' then
         if dm.QParametrospar_itbisincluido.Value = 'True' then
           QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisEmp.Value+((QDetalleValorItbisEmp.Value*QDetallePRO_BENEFICIO.Value)/100))]))
         else
           QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOEMP.Value+((QDetalleDET_COSTOEMP.Value*QDetallePRO_BENEFICIO.Value)/100))]));

    //Precio2
    if QDetallePRO_BENEFICIO2.Value > 0 then
      if dm.QParametrosPAR_PRECIOEMP.Value = 'Precio2' then
         if dm.QParametrospar_itbisincluido.Value = 'True' then
           QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisEmp.Value+((QDetalleValorItbisEmp.Value*QDetallePRO_BENEFICIO2.Value)/100))]))
         else
           QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOEMP.Value+((QDetalleDET_COSTOEMP.Value*QDetallePRO_BENEFICIO2.Value)/100))]));

    //Precio3
    if QDetallePRO_BENEFICIO3.Value > 0 then
      if dm.QParametrosPAR_PRECIOEMP.Value = 'Precio3' then
         if dm.QParametrospar_itbisincluido.Value = 'True' then
           QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisEmp.Value+((QDetalleValorItbisEmp.Value*QDetallePRO_BENEFICIO3.Value)/100))]))
         else
           QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOEMP.Value+((QDetalleDET_COSTOEMP.Value*QDetallePRO_BENEFICIO3.Value)/100))]));

    //Precio4
    if QDetallePRO_BENEFICIO4.Value > 0 then
      if dm.QParametrosPAR_PRECIOEMP.Value = 'Precio4' then
         if dm.QParametrospar_itbisincluido.Value = 'True' then
           QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisEmp.Value+((QDetalleValorItbisEmp.Value*QDetallePRO_BENEFICIO4.Value)/100))]))
         else
           QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOEMP.Value+((QDetalleDET_COSTOEMP.Value*QDetallePRO_BENEFICIO4.Value)/100))]));

    //Empaque
    //Precio1
    if QDetallePRO_BENEFICIO.Value > 0 then
    begin
      if dm.QParametrosPAR_PRECIOEMP.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO.Value)/100))]))
        else
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO.Value)/100))]));
      end
      else if dm.QParametrosPAR_PRECIOEMP.Value = 'Precio1' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisEmp.Value+((QDetalleValorItbisEmp.Value*QDetallePRO_BENEFICIO.Value)/100))]))
        else
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOEMP.Value+((QDetalleDET_COSTOEMP.Value*QDetallePRO_BENEFICIO.Value)/100))]));
      end;
    end;

    //Precio2
    if QDetallePRO_BENEFICIO2.Value > 0 then
    begin
      if dm.QParametrosPAR_PRECIOEMP.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO2.Value)/100))]))
        else
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO2.Value)/100))]));
      end
      else if dm.QParametrosPAR_PRECIOEMP.Value = 'Precio2' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisEmp.Value+((QDetalleValorItbisEmp.Value*QDetallePRO_BENEFICIO2.Value)/100))]))
        else
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOEMP.Value+((QDetalleDET_COSTOEMP.Value*QDetallePRO_BENEFICIO2.Value)/100))]));
      end;
    end;

    //Precio3
    if QDetallePRO_BENEFICIO3.Value > 0 then
    begin
      if dm.QParametrosPAR_PRECIOEMP.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO3.Value)/100))]))
        else
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO3.Value)/100))]));
      end
      else if dm.QParametrosPAR_PRECIOEMP.Value = 'Precio3' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisEmp.Value+((QDetalleValorItbisEmp.Value*QDetallePRO_BENEFICIO3.Value)/100))]))
        else
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOEMP.Value+((QDetalleDET_COSTOEMP.Value*QDetallePRO_BENEFICIO3.Value)/100))]));
      end;
    end;

    //Precio4
    if QDetallePRO_BENEFICIO4.Value > 0 then
    begin
      if dm.QParametrosPAR_PRECIOEMP.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO4.Value)/100))]))
        else
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO4.Value)/100))]));
      end
      else if dm.QParametrosPAR_PRECIOEMP.Value = 'Precio4' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisEmp.Value+((QDetalleValorItbisEmp.Value*QDetallePRO_BENEFICIO4.Value)/100))]))
        else
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOEMP.Value+((QDetalleDET_COSTOEMP.Value*QDetallePRO_BENEFICIO4.Value)/100))]));
      end;
    end;

    //Precio al x Mayor
    //Unidad
    //Precio1
    if QDetallePRO_BENEFICIO.Value > 0 then
    begin
      if dm.QParametrospar_preciound_m.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO.Value)/100))]))
        else
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO.Value)/100))]));
      end
      else if dm.QParametrospar_preciound_m.Value = 'Precio1' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO.Value)/100))]))
        else
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO.Value)/100))]));
      end;
    end;

    //Precio2
    if QDetallePRO_BENEFICIO2.Value > 0 then
    begin
      if dm.QParametrospar_preciound_m.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO2.Value)/100))]))
        else
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO2.Value)/100))]));
      end
      else if dm.QParametrospar_preciound_m.Value = 'Precio2' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO2.Value)/100))]))
        else
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO2.Value)/100))]));
      end;
    end;

    //Precio3
    if QDetallePRO_BENEFICIO3.Value > 0 then
    begin
      if dm.QParametrospar_preciound_m.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO3.Value)/100))]))
        else
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO3.Value)/100))]));
      end
      else if dm.QParametrospar_preciound_m.Value = 'Precio3' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO3.Value)/100))]))
        else
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO3.Value)/100))]));
      end;
    end;

    //Precio4
    if QDetallePRO_BENEFICIO4.Value > 0 then
    begin
      if dm.QParametrospar_preciound_m.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO4.Value)/100))]))
        else
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO4.Value)/100))]));
      end
      else if dm.QParametrospar_preciound_m.Value = 'Precio4' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO4.Value)/100))]))
        else
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO4.Value)/100))]));
      end;
    end;

    //Empaque
    //Precio1
    if QDetallePRO_BENEFICIO.Value > 0 then
    begin
      if dm.QParametrospar_precioemp_m.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO.Value)/100))]))
        else
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO.Value)/100))]));
      end
      else if dm.QParametrospar_precioemp_m.Value = 'Precio1' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisEmp.Value+((QDetalleValorItbisEmp.Value*QDetallePRO_BENEFICIO.Value)/100))]))
        else
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOEMP.Value+((QDetalleDET_COSTOEMP.Value*QDetallePRO_BENEFICIO.Value)/100))]));
      end;
    end;

    //Precio2
    if QDetallePRO_BENEFICIO2.Value > 0 then
    begin
      if dm.QParametrospar_precioemp_m.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO2.Value)/100))]))
        else
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO2.Value)/100))]));
      end
      else if dm.QParametrospar_precioemp_m.Value = 'Precio2' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisEmp.Value+((QDetalleValorItbisEmp.Value*QDetallePRO_BENEFICIO2.Value)/100))]))
        else
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOEMP.Value+((QDetalleDET_COSTOEMP.Value*QDetallePRO_BENEFICIO2.Value)/100))]));
      end;
    end;

    //Precio3
    if QDetallePRO_BENEFICIO3.Value > 0 then
    begin
      if dm.QParametrospar_precioemp_m.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO3.Value)/100))]))
        else
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO3.Value)/100))]));
      end
      else if dm.QParametrospar_precioemp_m.Value = 'Precio3' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisEmp.Value+((QDetalleValorItbisEmp.Value*QDetallePRO_BENEFICIO3.Value)/100))]))
        else
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOEMP.Value+((QDetalleDET_COSTOEMP.Value*QDetallePRO_BENEFICIO3.Value)/100))]));
      end;
    end;

    //Precio4
    if QDetallePRO_BENEFICIO4.Value > 0 then
    begin
      if dm.QParametrospar_precioemp_m.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO4.Value)/100))]))
        else
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO4.Value)/100))]));
      end
      else if dm.QParametrospar_precioemp_m.Value = 'Precio4' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisEmp.Value+((QDetalleValorItbisEmp.Value*QDetallePRO_BENEFICIO4.Value)/100))]))
        else
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOEMP.Value+((QDetalleDET_COSTOEMP.Value*QDetallePRO_BENEFICIO4.Value)/100))]));
      end;
    end;
  end
  else //Si no tiene cantidad por empaque
  begin
    if (QDetalleDET_COSTOEMP.Value = 0) or (QDetalleDET_COSTOEMP.IsNull) then
    begin
      if dm.QParametrospar_itbisincluido.Value = 'True' then
      begin
        if QDetallePRO_BENEFICIO.Value > 0 then
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO.Value)/100))]));

        if QDetallePRO_BENEFICIO2.Value > 0 then
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO2.Value)/100))]));

        if QDetallePRO_BENEFICIO3.Value > 0 then
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO3.Value)/100))]));

        if QDetallePRO_BENEFICIO4.Value > 0 then
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO4.Value)/100))]));
      end
      else
      begin
        if QDetallePRO_BENEFICIO.Value > 0 then
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO.Value)/100))]));

        if QDetallePRO_BENEFICIO2.Value > 0 then
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO2.Value)/100))]));

        if QDetallePRO_BENEFICIO3.Value > 0 then
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO3.Value)/100))]));

        if QDetallePRO_BENEFICIO4.Value > 0 then
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO4.Value)/100))]));
      end;
    end;
  end;

  {//Redondeo
  if dm.QParametrospar_redondeo.Value = 'True' then
  begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select par_desde, par_hasta, par_valor, par_sumar from redondeo_precios where emp_codigo = :emp');
    Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    Query1.Open;
    Query1.First;
    while not Query1.Eof do
    begin
      //Precio1
      if (Frac(StrToFloat(Format('%10.2F',[QDetallePRO_PRECIO1.Value]))) >= StrToFloat(Format('%10.2F',[Query1.FieldByName('par_desde').AsFloat]))) and
      (Frac(StrToFloat(Format('%10.2F',[QDetallePRO_PRECIO1.Value]))) <= StrToFloat(Format('%10.2F',[Query1.FieldByName('par_hasta').AsFloat]))) then
      begin
        if UpperCase(Query1.FieldByName('par_sumar').Value) <> 'S' then
        begin
          nEntero := Copy(FloatToStr(QDetallePRO_PRECIO1.Value), 1,
                     Pos('.',FloatToStr(QDetallePRO_PRECIO1.Value))-1);
          nValor  := nEntero+Copy(Query1.FieldByName('par_valor').AsString,pos('.',Query1.FieldByName('par_valor').AsString),3);
        end
        else
        begin
          nEntero := Copy(FloatToStr(QDetallePRO_PRECIO1.Value), 1,
                     Pos('.',FloatToStr(QDetallePRO_PRECIO1.Value))-1);
          nValor  := (FloatToStr((strtofloat(nEntero)+Query1.FieldByName('par_valor').AsFloat)))+'.00';
        end;
        QDetallePRO_PRECIO1.Value := StrToFloat(nValor)
      end;

      //Precio2
      if (Frac(StrToFloat(Format('%10.2F',[QDetallePRO_PRECIO2.Value]))) >= StrToFloat(Format('%10.2F',[Query1.FieldByName('par_desde').AsFloat]))) and
      (Frac(StrToFloat(Format('%10.2F',[QDetallePRO_PRECIO2.Value]))) <= StrToFloat(Format('%10.2F',[Query1.FieldByName('par_hasta').AsFloat]))) then
      begin
        if UpperCase(Query1.FieldByName('par_sumar').Value) <> 'S' then
        begin
          nEntero := Copy(FloatToStr(QDetallePRO_PRECIO2.Value), 1,
                     Pos('.',FloatToStr(QDetallePRO_PRECIO2.Value))-1);
          nValor  := nEntero+Copy(Query1.FieldByName('par_valor').AsString,pos('.',Query1.FieldByName('par_valor').AsString),3);
        end
        else
        begin
          nEntero := Copy(FloatToStr(QDetallePRO_PRECIO2.Value), 1,
                     Pos('.',FloatToStr(QDetallePRO_PRECIO2.Value))-1);
          nValor  := (FloatToStr((strtofloat(nEntero)+Query1.FieldByName('par_valor').AsFloat)))+'.00';
        end;
        QDetallePRO_PRECIO2.Value := StrToFloat(nValor)
      end;

      //Precio3
      if (Frac(StrToFloat(Format('%10.2F',[QDetallePRO_PRECIO3.Value]))) >= StrToFloat(Format('%10.2F',[Query1.FieldByName('par_desde').AsFloat]))) and
      (Frac(StrToFloat(Format('%10.2F',[QDetallePRO_PRECIO3.Value]))) <= StrToFloat(Format('%10.2F',[Query1.FieldByName('par_hasta').AsFloat]))) then
      begin
        if UpperCase(Query1.FieldByName('par_sumar').Value) <> 'S' then
        begin
          nEntero := Copy(FloatToStr(QDetallePRO_PRECIO3.Value), 1,
                     Pos('.',FloatToStr(QDetallePRO_PRECIO3.Value))-1);
          nValor  := nEntero+Copy(Query1.FieldByName('par_valor').AsString,pos('.',Query1.FieldByName('par_valor').AsString),3);
        end
        else
        begin
          nEntero := Copy(FloatToStr(QDetallePRO_PRECIO3.Value), 1,
                     Pos('.',FloatToStr(QDetallePRO_PRECIO3.Value))-1);
          nValor  := (FloatToStr((strtofloat(nEntero)+Query1.FieldByName('par_valor').AsFloat)))+'.00';
        end;
        QDetallePRO_PRECIO3.Value := StrToFloat(nValor)
      end;

      //Precio4
      if (Frac(StrToFloat(Format('%10.2F',[QDetallePRO_PRECIO4.Value]))) >= StrToFloat(Format('%10.2F',[Query1.FieldByName('par_desde').AsFloat]))) and
      (Frac(StrToFloat(Format('%10.2F',[QDetallePRO_PRECIO4.Value]))) <= StrToFloat(Format('%10.2F',[Query1.FieldByName('par_hasta').AsFloat]))) then
      begin
        if UpperCase(Query1.FieldByName('par_sumar').Value) <> 'S' then
        begin
          nEntero := Copy(FloatToStr(QDetallePRO_PRECIO4.Value), 1,
                     Pos('.',FloatToStr(QDetallePRO_PRECIO4.Value))-1);
          nValor  := nEntero+Copy(Query1.FieldByName('par_valor').AsString,pos('.',Query1.FieldByName('par_valor').AsString),3);
        end
        else
        begin
          nEntero := Copy(FloatToStr(QDetallePRO_PRECIO4.Value), 1,
                     Pos('.',FloatToStr(QDetallePRO_PRECIO4.Value))-1);
          nValor  := (FloatToStr((strtofloat(nEntero)+Query1.FieldByName('par_valor').AsFloat)))+'.00';
        end;
        QDetallePRO_PRECIO4.Value := StrToFloat(nValor)
      end;

      Query1.Next;
    end;
  end;  }
end;


procedure TfrmFacProvee.PageControl1Enter(Sender: TObject);
begin
  {PageControl1.ActivePageIndex := 0;
  Grid.SetFocus;}
end;

procedure TfrmFacProvee.QDetallePRO_BENEFICIO3Change(Sender: TField);
begin
 precios;
end;

procedure TfrmFacProvee.QCentroNewRecord(DataSet: TDataSet);
begin
  QCentrofac_numero.Value := QFacturaFAC_NUMERO.Value;
  QCentroemp_codigo.Value := dm.vp_cia;
  QCentrosup_codigo.Value := QFacturaSUP_CODIGO.Value;
end;

procedure TfrmFacProvee.btmonedaClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.clear;
  Search.Query.add('select mon_nombre, mon_codigo');
  Search.ResultField := 'mon_codigo';
  Search.Query.add('from moneda');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.Title := 'Tipos de moneda';
  if Search.execute then
  begin
    QFacturaMON_CODIGO.value := StrToInt(Search.ValueField);
    DBEdit26.setfocus;
  end;
end;

procedure TfrmFacProvee.QFacturaMON_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QFacturaMON_CODIGO.isnull then
  begin
    Text := IntToStr(QFacturaMON_CODIGO.Value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select mon_nombre from moneda');
    dm.Query1.sql.add('where mon_codigo = :mon');
    dm.Query1.sql.add('and emp_codigo = :emp');
    dm.Query1.Parameters.parambyname('mon').Value := QFacturaMON_CODIGO.value;
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.open;
    if dm.Query1.RecordCount > 0 then
      tmoneda.text := dm.Query1.fieldbyname('mon_nombre').asstring
    else
      tmoneda.text := '';
  end
  else
    tmoneda.text := '';
end;

procedure TfrmFacProvee.QFacturaMON_CODIGOChange(Sender: TField);
begin
  if not QFacturaMON_CODIGO.isnull then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select MON_RELACIONPESOCOMPRA from moneda');
    dm.Query1.sql.add('where mon_codigo = :mon');
    dm.Query1.sql.add('and emp_codigo = :emp');
    dm.Query1.Parameters.parambyname('mon').Value := QFacturaMON_CODIGO.value;
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.open;
    if dm.Query1.RecordCount > 0 then
      QFacturaFAC_TASA.Value := dm.Query1.fieldbyname('MON_RELACIONPESOCOMPRA').Value
    else
      QFacturaFAC_TASA.Value := 0;
  end;
end;

procedure TfrmFacProvee.QFacturaSUP_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QFacturaSUP_CODIGO.IsNull then
  begin
    Text := IntToStr(QFacturaSUP_CODIGO.Value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select sup_codigo, sup_nombre, sup_balance,');
    dm.Query1.sql.add('sup_direccion, sup_localidad, sup_telefono, sup_fax, ');
    dm.Query1.sql.add('sup_rnc,dias_creditos, tipobienid');
    dm.Query1.sql.add('from proveedores');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and sup_Status = '+#39+'ACT'+#39);
    dm.Query1.sql.add('and sup_codigo = :sup');
    dm.Query1.Parameters.parambyname('sup').Value := QFacturaSUP_CODIGO.Value;
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.open;
    RNC := dm.Query1.FieldByName('sup_rnc').AsString;
    tProveedor.text := dm.Query1.fieldbyname('sup_nombre').asstring;

    if not dm.Query1.fieldbyname('dias_creditos').IsNull then
      dias_creditos := dm.Query1.fieldbyname('dias_creditos').asinteger
    else
      dias_creditos := 0;
    if  QFactura.State in [dsinsert,dsEdit] then
      QFacturaFAC_DIAS.Value := dias_creditos;

    if  QFactura.State in [dsinsert,dsEdit] then
    if DM.Query1.fieldbyname('tipobienid').Value > 0 then
      QFacturatip_codigo.Value := DM.Query1.fieldbyname('tipobienid').Value;
  end
  else
    tProveedor.text := '';
end;

procedure TfrmFacProvee.RepBarra;
var
  ar : textfile;
  Lote, prod : Integer;
  s : array[0..20] of char;
  Relleno, IniBarra, oref, fref : String;
  Precio : double;
  a : integer;
begin
  if dm.qparametrosPAR_INVMOSTRARVENCE.Value = 'False' then
  begin
    if MessageDlg('Desea imprimir etiquetas para la gondola?', mtConfirmation, [mbyes, mbno], 0) = mryes then
    begin
      //Gondola
      //archivo de impresion de codigo de barra gondola
      if not FileExists('.\barra.ini') then
      begin
        AssignFile(ar, '.\barra.ini');
        rewrite(ar);
        writeln(ar,'prn');
        IniBarra := 'prn';
        closefile(ar);
      end
      else
      begin
        AssignFile(ar, '.\barra.ini');
        reset(ar);
        read(ar,IniBarra);
        closefile(ar);
      end;

      assignfile(ar, '.\t.txt');
      rewrite(ar);

      QDetalle.First;
      while not QDetalle.Eof do
      begin
        if QDetalledet_etiquetas.Value > 0 then
        begin
          writeln(ar,'N');
          writeln(ar,'q240');
          writeln(ar,'Q560,B24+0');
          writeln(ar,'S2');
          writeln(ar,'D8');
          writeln(ar,'ZT');
          writeln(ar,'TTh:m');
          writeln(ar,'TDy2.mn.dd');
          writeln(ar,'A42,520,3,4,2,1,N,"'+copy(QDetallePRO_NOMBRE.AsString,1,32)+'"');
          writeln(ar,'A95,520,3,3,2,1,N,"Cod:'+QDetallePRO_RORIGINAL.Value+'"');

          if dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio1' then
            Precio := QDetallePRO_PRECIO1.Value
          else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio2' then
            Precio := QDetallePRO_PRECIO2.Value
          else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio3' then
            Precio := QDetallePRO_PRECIO3.Value
          else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio4' then
            Precio := QDetallePRO_PRECIO4.Value
          else
            Precio := QDetallePRO_PRECIO1.Value;

          if QDetallePRO_PRECIO2.AsFloat > 0 then
            writeln(ar,'A130,520,3,4,5,3,N,"$'+format('%n',[Precio])+'"')
          else
            writeln(ar,'A130,520,3,4,5,3,N,"$'+format('%n',[Precio])+'"');
          writeln(ar,'P'+IntToStr(QDetalledet_etiquetas.Value));
        end;

        QDetalle.Next;
      end;
      closefile(ar);

      AssignFile(AR, '.\imp.bat');
      rewrite(ar);
      writeln(ar,'type .\t.txt > '+IniBarra);
      closefile(ar);
      WinExec('.\imp.bat',0);
    end
    else
    begin
      if not FileExists('.\barra.ini') then
      begin
        AssignFile(ar, '.\barra.ini');
        rewrite(ar);
        writeln(ar,'prn');
        IniBarra := 'prn';
        closefile(ar);
      end
      else
      begin
        AssignFile(ar, '.\barra.ini');
        reset(ar);
        read(ar,IniBarra);
        closefile(ar);
      end;

      AssignFile(ar, '.\imp.bat');
      rewrite(ar);
      writeln(ar, 'type .\t.txt > '+IniBarra);
      closefile(ar);

      assignfile(ar, '.\t.txt');
      Rewrite(ar);

      QDetalle.First;
      while not QDetalle.Eof do
      begin
        if QDetalledet_etiquetas.Value > 0 then
        begin
          if (dm.QParametrosPAR_VENVERIFICA.Value = '1') and (QDetalleDET_VENCE.Value = 'True') then
          begin
            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('select ven_lote from provence');
            dm.Query1.SQL.Add('where pro_codigo = :pro');
            dm.Query1.SQL.Add('and ven_fecha = :fec');
            dm.Query1.SQL.Add('and emp_codigo = :emp');
            dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
            dm.Query1.Parameters.ParamByName('fec').Value := QDetalleDET_FECHAVENCE.Value;
            dm.Query1.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
            dm.Query1.Open;
            if dm.Query1.RecordCount > 0 then
            begin
              s := '';
              Relleno := '';
              Lote := dm.Query1.FieldByName('ven_lote').AsInteger;
              FillChar(s, dm.QParametrosPAR_VENDIGITOSLOTE.Value-Length(IntToStr(Lote)),'0');
              Relleno := s+IntToStr(Lote);
            end
            else
              Relleno := '99';
          end
          else if (dm.QParametrosPAR_VENVERIFICA.Value = '1') and (QDetalleDET_VENCE.Value = 'False') then
            Relleno := '99';

      {    writeln(ar,'q288');
          writeln(ar,'Q152,40');
          writeln(ar,'q288');
          writeln(ar,'Q152,40');
          writeln(ar,'N');
          writeln(ar,'ZT');}

          for a := 0 to Memo1.Lines.Count-1 do
            if Trim(Memo1.Lines[a]) <> '' then
               writeln(ar,Memo1.Lines[a]);

          if dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio1' then
            Precio := QDetallePRO_PRECIO1.Value
          else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio2' then
            Precio := QDetallePRO_PRECIO2.Value
          else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio3' then
            Precio := QDetallePRO_PRECIO3.Value
          else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio4' then
            Precio := QDetallePRO_PRECIO4.Value
          else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Costo' then
            Precio := QDetalleDET_COSTO.Value
          else
            Precio := QDetallePRO_PRECIO1.Value;

          prod := QDetallePRO_CODIGO.Value;
          oref := QDetallePRO_RORIGINAL.Value;
          fref := QDetallePRO_RFABRIC.Value;
          //Cambios Titin
          if (dm.QParametrosPAR_OPC1RALINEA.Value = 'Precio1') or
          (dm.QParametrosPAR_OPC1RALINEA.Value = 'Precio2') or
          (dm.QParametrosPAR_OPC1RALINEA.Value = 'Precio3') or
          (dm.QParametrosPAR_OPC1RALINEA.Value = 'Precio4') or
          (dm.QParametrosPAR_OPC1RALINEA.Value = 'Costo') then
            writeln(ar,dm.QParametrosPAR_TEXTOBARRA1.value+#34+
                    copy(dm.QEmpresasEMP_NOMBRE.value,1,24)+' '+
                    'RD$'+format('%n',[Precio])+#34)
          else if dm.QParametrosPAR_OPC1RALINEA.Value = 'Ref. Original' then
            writeln(ar,dm.QParametrosPAR_TEXTOBARRA1.value+#34+
                    copy(dm.QEmpresasEMP_NOMBRE.value,1,24)+' '+
                    Relleno+oRef+#34)
          else if dm.QParametrosPAR_OPC1RALINEA.Value = 'Ref. Fabircante' then
            writeln(ar,dm.QParametrosPAR_TEXTOBARRA1.value+#34+
                    copy(dm.QEmpresasEMP_NOMBRE.value,1,24)+' '+
                    Relleno+fRef+#34)
          else if dm.QParametrosPAR_OPC1RALINEA.Value = 'Clave de Precio' then
            writeln(ar,dm.QParametrosPAR_TEXTOBARRA1.value+#34+
                    copy(dm.QEmpresasEMP_NOMBRE.value,1,24)+' '+
                    ClavePrecio(Precio)+#34)
          else
            writeln(ar,dm.QParametrosPAR_TEXTOBARRA1.value+#34+copy(dm.QEmpresasEMP_NOMBRE.value,1,24)+#34);

          writeln(ar,dm.QParametrosPAR_TEXTOBARRA2.value+#34+dm.QEmpresasEMP_TELEFONO.value+' p:'+QFacturaSUP_CODIGO.AsString+#34);
          if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'I' then
          begin
            writeln(ar,dm.QParametrosPAR_TEXTOBARRA3.value+#34+Relleno+inttostr(Prod)+#34);
          end
          else if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'O' then
          begin
            writeln(ar,dm.QParametrosPAR_TEXTOBARRA3.value+#34+Relleno+oRef+#34);
          end
          else if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'F' then
          begin
            writeln(ar,dm.QParametrosPAR_TEXTOBARRA3.value+#34+Relleno+fRef+#34);
          end;
          writeln(ar,dm.QParametrosPAR_TEXTOBARRA4.value+#34+copy(QDetallePRO_NOMBRE.Value,1,27)+#34);
          if (dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio1') or
          (dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio2') or
          (dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio3') or
          (dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio4') or
          (dm.QParametrosPAR_OPC5TALINEA.Value = 'Costo') then
            writeln(ar,dm.QParametrosPAR_TEXTOBARRA5.value+#34+'RD$'+format('%n',[Precio])+'  v:'+QDetalleDET_FECHAVENCE.Asstring+#34)
          else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Ref. Original' then
            writeln(ar,dm.QParametrosPAR_TEXTOBARRA5.value+#34+Relleno+oRef+#34)
          else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Ref. Fabircante' then
            writeln(ar,dm.QParametrosPAR_TEXTOBARRA5.value+#34+Relleno+fRef+#34)
          else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Clave de Precio' then
            writeln(ar,dm.QParametrosPAR_TEXTOBARRA5.value+#34+Relleno+ClavePrecio(Precio)+'  v:'+QDetalleDET_FECHAVENCE.Asstring+#34);

          if QDetallepro_detallado.Value = 'True' then
            writeln(ar,'P'+inttostr(QDetalledet_etiquetas.Value))
          else
            writeln(ar,'P'+inttostr(QDetalledet_etiquetas.Value+trunc(QDetalleDET_OFERTA.Value)));
        end;
        QDetalle.Next;
      end;
      closefile(ar);
      winexec('.\imp.bat',0);
    end;
  end
  else
  begin
    if not FileExists('.\barra.ini') then
    begin
      AssignFile(ar, '.\barra.ini');
      rewrite(ar);
      writeln(ar,'prn');
      IniBarra := 'prn';
      closefile(ar);
    end
    else
    begin
      AssignFile(ar, '.\barra.ini');
      reset(ar);
      read(ar,IniBarra);
      closefile(ar);
    end;

    AssignFile(ar, '.\imp.bat');
    rewrite(ar);
    writeln(ar, 'type .\t.txt > '+IniBarra);
    closefile(ar);

    assignfile(ar, '.\t.txt');
    Rewrite(ar);

    QDetalle.First;
    while not QDetalle.Eof do
    begin
      if QDetalledet_etiquetas.Value > 0 then
      begin
        if (dm.QParametrosPAR_VENVERIFICA.Value = '1') and (QDetalleDET_VENCE.Value = 'True') then
        begin
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('select ven_lote from provence');
          dm.Query1.SQL.Add('where pro_codigo = :pro');
          dm.Query1.SQL.Add('and ven_fecha = :fec');
          dm.Query1.SQL.Add('and emp_codigo = :emp');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
          dm.Query1.Parameters.ParamByName('fec').Value := QDetalleDET_FECHAVENCE.Value;
          dm.Query1.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
          dm.Query1.Open;
          if dm.Query1.RecordCount > 0 then
          begin
            s := '';
            Relleno := '';
            Lote := dm.Query1.FieldByName('ven_lote').AsInteger;
            FillChar(s, dm.QParametrosPAR_VENDIGITOSLOTE.Value-Length(IntToStr(Lote)),'0');
            Relleno := s+IntToStr(Lote);
          end
          else
            Relleno := '99';
        end
        else if (dm.QParametrosPAR_VENVERIFICA.Value = '1') and (QDetalleDET_VENCE.Value = 'False') then
          Relleno := '99';

    {    writeln(ar,'q288');
        writeln(ar,'Q152,40');
        writeln(ar,'q288');
        writeln(ar,'Q152,40');
        writeln(ar,'N');
        writeln(ar,'ZT');}

        for a := 0 to Memo1.Lines.Count-1 do
          if Trim(Memo1.Lines[a]) <> '' then
             writeln(ar,Memo1.Lines[a]);

        if dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio1' then
          Precio := QDetallePRO_PRECIO1.Value
        else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio2' then
          Precio := QDetallePRO_PRECIO2.Value
        else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio3' then
          Precio := QDetallePRO_PRECIO3.Value
        else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio4' then
          Precio := QDetallePRO_PRECIO4.Value
        else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Costo' then
          Precio := QDetalleDET_COSTO.Value
        else
          Precio := QDetallePRO_PRECIO1.Value;

        prod := QDetallePRO_CODIGO.Value;
        oref := QDetallePRO_RORIGINAL.Value;
        fref := QDetallePRO_RFABRIC.Value;

        if (dm.QParametrosPAR_OPC1RALINEA.Value = 'Precio1') or
        (dm.QParametrosPAR_OPC1RALINEA.Value = 'Precio2') or
        (dm.QParametrosPAR_OPC1RALINEA.Value = 'Precio3') or
        (dm.QParametrosPAR_OPC1RALINEA.Value = 'Precio4') or
        (dm.QParametrosPAR_OPC1RALINEA.Value = 'Costo') then
          writeln(ar,dm.QParametrosPAR_TEXTOBARRA1.value+#34+
                  copy(dm.QEmpresasEMP_NOMBRE.value,1,24)+' '+
                  'RD$'+format('%n',[Precio])+#34)
        else if dm.QParametrosPAR_OPC1RALINEA.Value = 'Ref. Original' then
          writeln(ar,dm.QParametrosPAR_TEXTOBARRA1.value+#34+
                  copy(dm.QEmpresasEMP_NOMBRE.value,1,24)+' '+
                  Relleno+oRef+#34)
        else if dm.QParametrosPAR_OPC1RALINEA.Value = 'Ref. Fabircante' then
          writeln(ar,dm.QParametrosPAR_TEXTOBARRA1.value+#34+
                  copy(dm.QEmpresasEMP_NOMBRE.value,1,24)+' '+
                  Relleno+fRef+#34)
        else if dm.QParametrosPAR_OPC1RALINEA.Value = 'Clave de Precio' then
          writeln(ar,dm.QParametrosPAR_TEXTOBARRA1.value+#34+
                  copy(dm.QEmpresasEMP_NOMBRE.value,1,24)+' '+
                  ClavePrecio(Precio)+#34)
        else
          writeln(ar,dm.QParametrosPAR_TEXTOBARRA1.value+#34+copy(dm.QEmpresasEMP_NOMBRE.value,1,24)+#34);

        writeln(ar,dm.QParametrosPAR_TEXTOBARRA2.value+#34+dm.QEmpresasEMP_TELEFONO.value+' p:'+QFacturaSUP_CODIGO.AsString+#34);
        if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'I' then
        begin
          writeln(ar,dm.QParametrosPAR_TEXTOBARRA3.value+#34+Relleno+inttostr(Prod)+#34);
        end
        else if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'O' then
        begin
          writeln(ar,dm.QParametrosPAR_TEXTOBARRA3.value+#34+Relleno+oRef+#34);
        end
        else if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'F' then
        begin
          writeln(ar,dm.QParametrosPAR_TEXTOBARRA3.value+#34+Relleno+fRef+#34);
        end;
        writeln(ar,dm.QParametrosPAR_TEXTOBARRA4.value+#34+copy(QDetallePRO_NOMBRE.Value,1,27)+#34);
        if (dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio1') or
        (dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio2') or
        (dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio3') or
        (dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio4') or
        (dm.QParametrosPAR_OPC5TALINEA.Value = 'Costo') then
          writeln(ar,dm.QParametrosPAR_TEXTOBARRA5.value+#34+'RD$'+format('%n',[Precio])+'  v:'+QDetalleDET_FECHAVENCE.Asstring+#34)
        else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Ref. Original' then
          writeln(ar,dm.QParametrosPAR_TEXTOBARRA5.value+#34+Relleno+oRef+#34)
        else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Ref. Fabircante' then
          writeln(ar,dm.QParametrosPAR_TEXTOBARRA5.value+#34+Relleno+fRef+#34)
        else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Clave de Precio' then
          writeln(ar,dm.QParametrosPAR_TEXTOBARRA5.value+#34+Relleno+ClavePrecio(Precio)+'  v:'+QDetalleDET_FECHAVENCE.Asstring+#34);

        if QDetallepro_detallado.Value = 'True' then
          writeln(ar,'P'+inttostr(QDetalledet_etiquetas.Value))
        else
          writeln(ar,'P'+inttostr(QDetalledet_etiquetas.Value+trunc(QDetalleDET_OFERTA.Value)));
      end;
      QDetalle.Next;
    end;
    closefile(ar);
    winexec('.\imp.bat',0);
  end;
end;

function TfrmFacProvee.ClavePrecio(Monto: Double): String;
var
  Precio, lbClave : String;
  a : Integer;
begin
    lbClave := '';
    Precio := Format('%n',[Monto]);
    For a := 1 To Length(Precio) do
    begin
      if Copy(Precio, a, 1) = '0' then
        lbClave := lbClave + dm.QParametrosPAR_PRECIOLETRA_0.Value;
      if Copy(Precio, a, 1) = '1' then
        lbClave := lbClave + dm.QParametrosPAR_PRECIOLETRA_1.Value;
      if Copy(Precio, a, 1) = '2' then
        lbClave := lbClave + dm.QParametrosPAR_PRECIOLETRA_2.Value;
      if Copy(Precio, a, 1) = '3' then
        lbClave := lbClave + dm.QParametrosPAR_PRECIOLETRA_3.Value;
      if Copy(Precio, a, 1) = '4' then
        lbClave := lbClave + dm.QParametrosPAR_PRECIOLETRA_4.Value;
      if Copy(Precio, a, 1) = '5' then
        lbClave := lbClave + dm.QParametrosPAR_PRECIOLETRA_5.Value;
      if Copy(Precio, a, 1) = '6' then
        lbClave := lbClave + dm.QParametrosPAR_PRECIOLETRA_6.Value;
      if Copy(Precio, a, 1) = '7' then
        lbClave := lbClave + dm.QParametrosPAR_PRECIOLETRA_7.Value;
      if Copy(Precio, a, 1) = '8' then
        lbClave := lbClave + dm.QParametrosPAR_PRECIOLETRA_8.Value;
      if Copy(Precio, a, 1) = '9' then
        lbClave := lbClave + dm.QParametrosPAR_PRECIOLETRA_9.Value;
    end;
  Result := lbClave;
end;

procedure TfrmFacProvee.QDetalleDET_COSTOChange(Sender: TField);
begin
{  if not QDetalleDET_COSTO.IsNull then
  begin
    if QDetallePRO_BENEFICIO.Value > 0 then
      QDetallePRO_PRECIO1.Value := QDetalleDET_COSTO.Value + ((QDetalleDET_COSTO.Value*QDetallePRO_BENEFICIO.Value)/100);
    if QDetallePRO_BENEFICIO2.Value > 0 then
      QDetallePRO_PRECIO2.Value := QDetalleDET_COSTO.Value + ((QDetalleDET_COSTO.Value*QDetallePRO_BENEFICIO2.Value)/100);
    if QDetallePRO_BENEFICIO3.Value > 0 then
      QDetallePRO_PRECIO3.Value := QDetalleDET_COSTO.Value + ((QDetalleDET_COSTO.Value*QDetallePRO_BENEFICIO3.Value)/100);
    if QDetallePRO_BENEFICIO4.Value > 0 then
      QDetallePRO_PRECIO4.Value := QDetalleDET_COSTO.Value + ((QDetalleDET_COSTO.Value*QDetallePRO_BENEFICIO4.Value)/100);

    Precios;
  end;      }
end;

procedure TfrmFacProvee.QFacturafac_selectivoChange(Sender: TField);
begin
  if (QCuentas.Active) and (DM.QContabPAR_CTA_SELECTIVO_CON.Value <> '') AND
  (NOT QFacturafac_selectivo.IsNull) then
  begin
    if not QCuentas.Locate('cat_cuenta', DM.QContabPAR_CTA_SELECTIVO_CON.Value,[]) then
    Begin
      QCuentas.Append;
      QcuentasCAT_CUENTA.Value := DM.QContabPAR_CTA_SELECTIVO_CON.Value;
      QCuentasDET_ORIGEN.Value := 'Debito';
      QCuentasDET_MONTO.Value  := QFacturafac_selectivo.Value;
      QCuentas.Post;
    End
    else
    Begin
      QCuentas.Edit;
      QcuentasCAT_CUENTA.Value := DM.QContabPAR_CTA_SELECTIVO_CON.Value;
      QCuentasDET_ORIGEN.Value := 'Debito';
      QCuentasDET_MONTO.Value  := QFacturafac_selectivo.Value;
      QCuentas.Post;
    End;
    END;

  if (CtaCxP <> '') then
  begin
    if not QCuentas.Locate('cat_cuenta', CtaCxP,[]) then
    Begin
      QCuentas.Append;
      QcuentasCAT_CUENTA.Value := CtaCxP;
      QCuentasDET_ORIGEN.Value := 'Credito';
      QCuentasDET_MONTO.Value  := QFacturaTotal.Value;
      QCuentas.Post;
    End
    else
    Begin
      QCuentas.Edit;
      QcuentasCAT_CUENTA.Value := CtaCxP;
      QCuentasDET_ORIGEN.Value := 'Credito';
      QCuentasDET_MONTO.Value  := QFacturaTotal.Value;
      QCuentas.Post;
    End;
  end;
END;


procedure TfrmFacProvee.QFacturafac_fleteChange(Sender: TField);
begin
  if (QCuentas.Active) and (DM.QContabpar_ctafletecomp.Value <> '') AND
  (NOT QFacturafac_flete.IsNull) then
  begin
    if not QCuentas.Locate('cat_cuenta', DM.QContabpar_ctafletecomp.Value,[]) then
    Begin
      QCuentas.Append;
      QcuentasCAT_CUENTA.Value := DM.QContabpar_ctafletecomp.Value;
      QCuentasDET_ORIGEN.Value := 'Debito';
      QCuentasDET_MONTO.Value  := QFacturafac_flete.Value;
      QCuentas.Post;
    End
    else
    Begin
      QCuentas.Edit;
      QcuentasCAT_CUENTA.Value := DM.QContabpar_ctafletecomp.Value;
      QCuentasDET_ORIGEN.Value := 'Debito';
      QCuentasDET_MONTO.Value  := QFacturafac_flete.Value;
      QCuentas.Post;
    End;
    END;

  if (CtaCxP <> '') then
  begin
    if not QCuentas.Locate('cat_cuenta', CtaCxP,[]) then
    Begin
      QCuentas.Append;
      QcuentasCAT_CUENTA.Value := CtaCxP;
      QCuentasDET_ORIGEN.Value := 'Credito';
      QCuentasDET_MONTO.Value  := QFacturaTotal.Value;
      QCuentas.Post;
    End
    else
    Begin
      QCuentas.Edit;
      QcuentasCAT_CUENTA.Value := CtaCxP;
      QCuentasDET_ORIGEN.Value := 'Credito';
      QCuentasDET_MONTO.Value  := QFacturaTotal.Value;
      QCuentas.Post;
    End;
  end;
end;


procedure TfrmFacProvee.QDetalleDET_COSTOEMPChange(Sender: TField);
var
  vl_costo : Currency;
begin
  vl_costo := QDetalledet_costound_ant.Value;
  if (not QDetalleDET_COSTOEMP.IsNull) and (not Buscando) then
  begin
    if QDetalleDET_MEDIDA.Value = 'Emp' then
    begin
      if QDetallepro_cantempaque.Value > 0 then
        QDetalleDET_COSTOUND.Value := QDetalleDET_COSTOEMP.Value / QDetallepro_cantempaque.Value;
      if StrToFloat(Format('%10.2F',[QDetalleDET_COSTOEMP.Value])) <> StrToFloat(Format('%10.2F',[QDetalledet_costoemp_ant.Value])) then
      begin
        if (dm.QParametrospar_modifica_precio_automatico.Value = 'False') and (QFacturaent_numero.IsNull) then
        begin
          if DecisionPrecio = '' then
          begin
            if MessageDlg('El Costo cambió, desea actualizar los precios?',mtConfirmation,[mbyes,mbno], 0) = mryes then
            begin
              DecisionPrecio := 'S';
              Precios;
            end
            else
            begin
              DecisionPrecio := 'N';
              if QDetallePRO_BENEFICIO.Value > 0 then
              QDetallePRO_BENEFICIO.Value  := QDetallePRO_BENEFICIO.Value/(QDetalleDET_COSTOUND.Value/vl_costo);
              if QDetallePRO_BENEFICIO2.Value > 0 then
              QDetallePRO_BENEFICIO2.Value := QDetallePRO_BENEFICIO2.Value/(QDetalleDET_COSTOUND.Value/vl_costo);
              if QDetallePRO_BENEFICIO3.Value > 0 then
              QDetallePRO_BENEFICIO3.Value := QDetallePRO_BENEFICIO3.Value/(QDetalleDET_COSTOUND.Value/vl_costo);
              if QDetallePRO_BENEFICIO4.Value > 0 then
              QDetallePRO_BENEFICIO4.Value := QDetallePRO_BENEFICIO4.Value/(QDetalleDET_COSTOUND.Value/vl_costo);
              end;
          end
          else
          begin
            if DecisionPrecio = 'S' then precios;
      end
    end;
    if (dm.QParametrospar_modifica_precio_automatico.Value = 'True') and (QFacturaent_numero.IsNull) then
    begin
    precios;
    end;
    end;
end;
end;
end;

procedure TfrmFacProvee.QFacturafac_selectivo_adChange(Sender: TField);
begin
if QCuentas.Active = True then begin
  if (not QFacturafac_selectivo_ad.IsNull) and (CtaCompra <> '') then
  begin
    if not QCuentas.Locate('cat_cuenta', CtaCompra,[]) then
    Begin
      QCuentas.Append;
      QcuentasCAT_CUENTA.Value := CtaCompra;
      QCuentasDET_ORIGEN.Value := 'Debito';
      QCuentasDET_MONTO.Value  := (QFacturaFAC_GRABADO.Value + QFacturaFAC_EXENTO.Value +
      QFacturafac_selectivo.Value + QFacturafac_flete.Value + QFacturafac_servicios.Value + QFacturafac_proplegal.Value + QFacturafac_otrosimpuestos.Value) - QFacturafac_descuento.Value;
      QCuentas.Post;
    End
    else
    Begin
      QCuentas.Edit;
      QcuentasCAT_CUENTA.Value := CtaCompra;
      QCuentasDET_ORIGEN.Value := 'Debito';
      QCuentasDET_MONTO.Value  := (QFacturaFAC_GRABADO.Value + QFacturaFAC_EXENTO.Value +
      QFacturafac_selectivo.Value + QFacturafac_flete.Value + QFacturafac_servicios.Value + QFacturafac_proplegal.Value + QFacturafac_otrosimpuestos.Value) - QFacturafac_descuento.Value;
      QCuentas.Post;
    End;
  end;
  if  (CtaCxP <> '') then
  begin
    if not QCuentas.Locate('cat_cuenta', CtaCxP,[]) then
    Begin
      QCuentas.Append;
      QcuentasCAT_CUENTA.Value := CtaCxP;
      QCuentasDET_ORIGEN.Value := 'Credito';
      QCuentasDET_MONTO.Value  := QFacturaTotal.Value;
      QCuentas.Post;
    End
    else
    Begin
      QCuentas.Edit;
      QcuentasCAT_CUENTA.Value := CtaCxP;
      QCuentasDET_ORIGEN.Value := 'Credito';
      QCuentasDET_MONTO.Value  := QFacturaTotal.Value;
      QCuentas.Post;
    End;
  end;
end;
end;

procedure TfrmFacProvee.BitBtn1Click(Sender: TObject);
var
  a, dias, Emp : integer;
begin
  {if MessageDlg('Desea seleccionar la EMPRESA?',mtConfirmation,[mbyes,mbno],0) = mryes then
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
  else}
    Emp := dm.vp_cia;

  if QFacturaSUP_CODIGO.Text = '' then begin
    ShowMessage('Debes seleccionar el suplidor...');
    Exit;
  end;

  Search.Query.clear;
  Search.AliasFields.clear;
  Search.Query.add('select ent_numero, ent_concepto, ent_fecha');
  Search.Query.add('from entradainv');
  Search.Query.add('where emp_codigo = '+inttostr(Emp));
  Search.Query.add('and ent_status = '+#39+'EMI'+#39);
  Search.Query.add('and suc_codigo = '+IntToStr(DBLookupComboBox2.KeyValue));
  Search.Query.add('and sup_codigo = '+QFacturasup_codigo.AsString);
  Search.AliasFields.add('Número');
  Search.AliasFields.add('Concepto');
  Search.AliasFields.add('Fecha');
  Search.Title := 'Entradas de Almacen';
  Search.ResultField := 'ent_numero';
  if Search.execute then
  begin
    QUtil.Close;
    QUtil.SQL.Clear;
    QUtil.SQL.Add('select ped_numero from entradainv');
    QUtil.SQL.Add('where emp_codigo = :emp');
    QUtil.SQL.Add('and suc_codigo = :suc');
    QUtil.SQL.Add('and ent_numero = :num');
    QUtil.Parameters.ParamByName('emp').Value := Emp;
    QUtil.Parameters.ParamByName('num').Value := StrToInt(Search.ValueField);
    QUtil.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    QUtil.Open;
    QFactura.Edit;
    QFacturaped_numero.value := QUtil.FieldByName('ped_numero').AsInteger;
    QFacturaENT_NUMERO.Value := StrToInt(Search.ValueField);

    QUtil.Close;
    QUtil.SQL.Clear;
    QUtil.SQL.Add('select det_secuencia, pro_codigo, pro_roriginal,');
    QUtil.SQL.Add('pro_rfabric, pro_nombre, det_cantidad, det_medida,');
    QUtil.SQL.Add('det_precio, det_conitbis, det_itbis, det_costo,');
    QUtil.SQL.Add('pro_cantempaque, det_costound_ant, det_costoemp_ant,');
    QUtil.SQL.Add('pro_beneficio, pro_beneficio2, pro_beneficio3, pro_beneficio4,');
    QUtil.SQL.Add('pro_precio1, pro_precio2, pro_precio3, pro_precio4, det_oferta,');
    QUtil.SQL.Add('pro_detallado, det_cambiarprecio');
    QUtil.SQL.Add('from det_entrada');
    QUtil.SQL.Add('where emp_codigo = :emp');
    QUtil.SQL.Add('and suc_codigo = :suc');
    QUtil.SQL.Add('and ent_numero = :num');
    QUtil.SQL.Add('and det_cantidad is not null');
    QUtil.Parameters.ParamByName('emp').Value := Emp;
    QUtil.Parameters.ParamByName('num').Value := StrToInt(Search.ValueField);
    QUtil.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    QUtil.Open;

    Totaliza := True;
    QDetalle.close;
    QDetalle.open;
    QDetalle.disablecontrols;
    QDetalle.First;
    while not QUtil.Eof do
    begin
      QDetalle.append;
      QDetalleDET_SECUENCIA.Value := QUtil.FieldByName('det_secuencia').AsInteger;
      QDetalleDET_CANTIDAD.Value  := QUtil.FieldByName('det_cantidad').AsFloat;
      QDetallePRO_RFABRIC.Value   := QUtil.FieldByName('pro_rfabric').AsString;
      QDetallePRO_RORIGINAL.Value := QUtil.FieldByName('pro_roriginal').AsString;
      QDetallePRO_CODIGO.Value    := QUtil.FieldByName('pro_codigo').AsInteger;
      //QDetalleDET_COSTO.Value     := QUtil.FieldByName('det_precio').AsFloat;
      QDetalleEMP_CODIGO.Value    := dm.vp_cia;
      QDetalleDET_ITBIS.Value     := QUtil.FieldByName('det_itbis').AsFloat;
      QDetallePRO_NOMBRE.Value    := QUtil.FieldByName('pro_nombre').AsString;
      QDetalleFAC_NUMERO.value    := QFacturaFAC_NUMERO.value;
      QDetalleSUP_CODIGO.Value    := QFacturaSUP_CODIGO.Value;
      QDetalleDET_MEDIDA.Value    := QUtil.FieldByName('det_medida').AsString;
      QDetalleDET_CONITBIS.Value  := QUtil.FieldByName('det_conitbis').AsString;
      if QDetalleDET_MEDIDA.Value = 'Und' then
        QDetalleDET_COSTOUND.Value  := QUtil.FieldByName('det_costo').AsFloat
      else if QDetalleDET_MEDIDA.Value = 'Emp' then
        QDetalleDET_COSTOEMP.Value  := QUtil.FieldByName('det_costo').AsFloat;

      QDetallepro_cantempaque.Value   := QUtil.FieldByName('pro_cantempaque').AsFloat;
      QDetalledet_costound_ant.Value  := QUtil.FieldByName('det_costound_ant').AsFloat;
      QDetalledet_costoemp_ant.Value  := QUtil.FieldByName('det_costoemp_ant').AsFloat;
      QDetallepro_beneficio.Value     := QUtil.FieldByName('pro_beneficio').AsFloat;
      QDetallepro_beneficio2.Value    := QUtil.FieldByName('pro_beneficio2').AsFloat;
      QDetallepro_beneficio3.Value    := QUtil.FieldByName('pro_beneficio3').AsFloat;
      QDetallepro_beneficio4.Value    := QUtil.FieldByName('pro_beneficio4').AsFloat;
      QDetallepro_precio1.Value       := QUtil.FieldByName('pro_precio1').AsFloat;
      QDetallepro_precio2.Value       := QUtil.FieldByName('pro_precio2').AsFloat;
      QDetallepro_precio3.Value       := QUtil.FieldByName('pro_precio3').AsFloat;
      QDetallepro_precio4.Value       := QUtil.FieldByName('pro_precio4').AsFloat;
      QDetalledet_oferta.Value        := QUtil.FieldByName('det_oferta').AsFloat;
      QDetallepro_detallado.Value     := QUtil.FieldByName('pro_detallado').AsString;
      QDetalledet_cambiarprecio.Value := QUtil.FieldByName('det_cambiarprecio').AsString;

      QDetalle.Post;

      QUtil.Next;
    end;

{      QDetalle.last;
    for a := QDetalleDET_SECUENCIA.value+1 to 50 do
    begin
      QDetalle.append;
      QDetalleDET_SECUENCIA.value := a;
      QDetalleFAC_NUMERO.value    := QFacturaFAC_NUMERO.value;
      QDetalleSUP_CODIGO.Value    := QFacturaSUP_CODIGO.Value;
      QDetalle.post;
      QDetalle.next;
    end;}
    QDetalle.first;
    QDetalle.enablecontrols;
    QDetalleDET_CANTIDAD.ReadOnly := True;
    TotalizarProd;


    DBEdit9.SetFocus;
  end;
end;

procedure TfrmFacProvee.TotalizaCentros;
begin
  if QCentro.RecordCount > 0 then begin
  TotalCentros := 0;
  QCentro.DisableControls;
  QCentro.First;
  while not QCentro.Eof do
  begin
    TotalCentros := TotalCentros + QCentrodet_monto.Value;
    QCentro.Next;
  end;
  QCentro.First;
  QCentro.EnableControls;
  end;
end;

procedure TfrmFacProvee.btTipoClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.clear;
  Search.Query.add('select tip_nombre, tip_codigo');
  Search.ResultField := 'tip_codigo';
  Search.Query.add('from Tipo_Bienes_Servicios');
  Search.Title := 'Tipo de Bienes y Servicios';
  if Search.execute then
  begin
    QFacturaTIP_CODIGO.value := StrToInt(Search.ValueField);
    DBEdit21.setfocus;
  end;
end;

procedure TfrmFacProvee.QFacturatip_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QFacturatip_codigo.IsNull then
  begin
    Text := IntToStr(QFacturatip_codigo.Value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select tip_codigo, tip_nombre');
    dm.Query1.sql.add('from Tipo_Bienes_Servicios');
    dm.Query1.sql.add('where tip_codigo = :tip');
    dm.Query1.Parameters.parambyname('tip').Value := QFacturatip_codigo.Value;
    dm.Query1.open;
    if dm.Query1.RecordCount > 0 then
      tTipo.text := dm.Query1.fieldbyname('tip_nombre').asstring
    else
      tTipo.text := '';
  end
  else
    tTipo.text := '';
end;

procedure TfrmFacProvee.GridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (StrToFloat(Format('%10.2F',[QDetalleDET_COSTOUND.Value])) <>
  StrToFloat(Format('%10.2F',[QDetalledet_costound_ant.Value]))) or
  (StrToFloat(Format('%10.2F',[QDetalleDET_COSTOEMP.Value])) <>
  StrToFloat(Format('%10.2F',[QDetalledet_costoemp_ant.Value]))) then
  begin
     Grid.canvas.font.Style := [fsBold];
     Grid.DefaultDrawcolumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TfrmFacProvee.QFacturaFAC_FECHAChange(Sender: TField);
begin
  QFacturaFAC_VENCE.value := QFacturaFAC_FECHA.value + QFacturaFAC_DIAS.value;
end;

procedure TfrmFacProvee.QDetallePRO_PRECIO1Change(Sender: TField);
begin
  if dm.QParametrospar_inv_unidad_medida.Value <> 'True' then
  begin
    if (dm.QParametrosPAR_DEBAJOCOSTO.Value <> 'True') and (not QDetallePRO_PRECIO1.IsNull) then
    begin
      if not QDetalleDET_COSTO.IsNull then
      begin
        if QDetallepro_precio1.AsFloat > 0 then
        begin
          if (QDetallePRO_PRECIO1.Value < QDetalleDET_COSTO.Value) and (QDetallePRO_PRECIO1.value > 0) then
          begin
            MessageDlg('EL PRECIO ESPECIFICADO EN EL PRODUCTO'+#13+
                       'NO PUEDE SER MENOR QUE EL COSTO, DEBIDO'+#13+
                       'A QUE DEBE DE HABER UN MARGEN MINIMO DE'+#13+
                       'BENEFICIO.',mtError,[mbok],0);
            abort;
          end;
        end;
      end;
    end;
  end;
end;

procedure TfrmFacProvee.DBEdit12KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if QDetalle.State <> dsbrowse then
    begin
      if (StrToFloat(DBEdit12.Text) > 0) and (QDetalleValorItbisUnd.Value > 0) then
      begin
        QDetallePRO_BENEFICIO.Value := ((StrToFloat(DBEdit12.Text) / QDetalleValorItbisUnd.Value)*100)-100;
      end;
    end;
  end;
end;

procedure TfrmFacProvee.DBEdit14KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if QDetalle.State <> dsbrowse then
    begin
      if QDetallePRO_CANTEMPAQUE.Value = 0 then
      begin
        if (StrToFloat(DBEdit14.Text) > 0) and (QDetalleValorItbisUnd.Value > 0) then
        begin
          QDetallePRO_BENEFICIO2.Value := ((StrToFloat(DBEdit14.Text) / QDetalleValorItbisUnd.Value)*100)-100;
        end;
      end
      else
      begin
        if (StrToFloat(DBEdit14.Text) > 0) and (QDetalleValorItbisEmp.Value > 0) then
        begin
          QDetallePRO_BENEFICIO2.Value := ((StrToFloat(DBEdit14.Text) / QDetalleValorItbisEmp.Value)*100)-100;
        end;
      end;
    end;
  end;
end;

procedure TfrmFacProvee.DBEdit17KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if QDetalle.State <> dsbrowse then
    begin
      if (StrToFloat(DBEdit17.Text) > 0) and (QDetalleValorItbisUnd.Value > 0) then
      begin
        QDetallePRO_BENEFICIO3.Value := ((StrToFloat(DBEdit17.Text) / QDetalleValorItbisUnd.Value)*100)-100;
      end;
    end;
  end;
end;

procedure TfrmFacProvee.DBEdit18KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if QDetalle.State <> dsbrowse then
    begin
      if QDetallePRO_CANTEMPAQUE.Value = 0 then
      begin
        if (StrToFloat(DBEdit18.Text) > 0) and (QDetalleValorItbisUnd.Value > 0) then
        begin
          QDetallePRO_BENEFICIO4.Value := ((StrToFloat(DBEdit18.Text) / QDetalleValorItbisUnd.Value)*100)-100;
        end;
      end
      else
      begin
        if (StrToFloat(DBEdit18.Text) > 0) and (QDetalleValorItbisEmp.Value > 0) then
        begin
          QDetallePRO_BENEFICIO4.Value := ((StrToFloat(DBEdit18.Text) / QDetalleValorItbisEmp.Value)*100)-100;
        end;
      end;
    end;
  end;
end;

procedure TfrmFacProvee.SpeedButton1Click(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.Clear;
  Search.Query.Add('select Nombre, GrupoID');
  Search.Query.Add('from Cashflow_Grupo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'GrupoID';
  Search.Title := 'Cashflow - Grupos';
  if Search.execute then
  begin
    QFacturaCashflow_Grupo.Value := StrToInt(Search.ValueField);
    DBEdit23.SetFocus;
  end;
end;

procedure TfrmFacProvee.SpeedButton2Click(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.Clear;
  Search.Query.Add('select Nombre, SubgrupoID');
  Search.Query.Add('from Cashflow_Subgrupo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and GrupoID = '+DBEdit23.Text);
  Search.ResultField := 'SubgrupoID';
  Search.Title := 'Cashflow - Subgrupos';
  if Search.execute then
  begin
    QFacturaCashflow_Subgrupo.Value := StrToInt(Search.ValueField);
    DBEdit31.SetFocus;
  end;
end;

procedure TfrmFacProvee.SpeedButton5Click(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.Clear;
  Search.Query.Add('select Nombre, ConceptoID');
  Search.Query.Add('from Cashflow_Conceptos');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and GrupoID = '+DBEdit23.Text);
  Search.Query.Add('and SubgrupoID = '+DBEdit31.Text);
  Search.ResultField := 'ConceptoID';
  Search.Title := 'Cashflow - Conceptos';
  if Search.execute then
  begin
    QFacturaCashflow_Concepto.Value := StrToInt(Search.ValueField);
    DBEdit32.SetFocus;
  end;
end;

procedure TfrmFacProvee.QFacturaCashflow_GrupoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QFacturaCashflow_Grupo.IsNull then
  begin
    Text := inttostr(QFacturaCashflow_Grupo.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select Nombre from Cashflow_Grupo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and GrupoID = :gru');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('gru').Value := QFacturaCashflow_Grupo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tgrupo.Text := dm.Query1.FieldByName('Nombre').AsString
    else
      tgrupo.Text := '';
  end
  else
    tgrupo.Text := '';
end;

procedure TfrmFacProvee.QFacturaCashflow_SubgrupoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QFacturaCashflow_Subgrupo.IsNull then
  begin
    Text := inttostr(QFacturaCashflow_Subgrupo.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select Nombre from Cashflow_Subgrupo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and SubgrupoID = :sub');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('sub').Value := QFacturaCashflow_Subgrupo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tsubgrupo.Text := dm.Query1.FieldByName('Nombre').AsString
    else
      tsubgrupo.Text := '';
  end
  else
    tsubgrupo.Text := '';
end;

procedure TfrmFacProvee.QFacturaCashflow_ConceptoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QFacturaCashflow_Concepto.IsNull then
  begin
    Text := inttostr(QFacturaCashflow_Concepto.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select Nombre from Cashflow_Conceptos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ConceptoID = :sub');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('sub').Value := QFacturaCashflow_Concepto.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tconcepto.Text := dm.Query1.FieldByName('Nombre').AsString
    else
      tconcepto.Text := '';
  end
  else
    tconcepto.Text := '';
end;

procedure TfrmFacProvee.QFacturafac_retencionChange(Sender: TField);
begin
 if (QCuentas.Active) and  (not QFacturafac_retencion.IsNull) and (not dm.QContabpar_cta_retencion_itbis.IsNull) then
  begin
    if not QCuentas.Locate('cat_cuenta', dm.QContabpar_cta_retencion_itbis.Value ,[]) then
    Begin
      QCuentas.Append;
      QcuentasCAT_CUENTA.Value := dm.QContabpar_cta_retencion_itbis.Value;
      QCuentasDET_ORIGEN.Value := 'Credito';
      QCuentasDET_MONTO.Value  := QFacturafac_retencion.Value;
      QCuentas.Post;
    End
    else
    Begin
      QCuentas.Edit;
      QcuentasCAT_CUENTA.Value := dm.QContabpar_cta_retencion_itbis.Value;
      QCuentasDET_ORIGEN.Value := 'Credito';
      QCuentasDET_MONTO.Value  := QFacturafac_retencion.Value;
      QCuentas.Post;
    End;
  end;
  if (CtaCxP <> '') then
  begin
    if not QCuentas.Locate('cat_cuenta', CtaCxP,[]) then
    Begin
      QCuentas.Append;
      QcuentasCAT_CUENTA.Value := CtaCxP;
      QCuentasDET_ORIGEN.Value := 'Credito';
      QCuentasDET_MONTO.Value  := QFacturaTotal.Value;
      QCuentas.Post;
    End
    else
    Begin
      QCuentas.Edit;
      QcuentasCAT_CUENTA.Value := CtaCxP;
      QCuentasDET_ORIGEN.Value := 'Credito';
      QCuentasDET_MONTO.Value  := QFacturaTotal.Value;
      QCuentas.Post;
    End;
  end;
end;

procedure TfrmFacProvee.QFacturafac_retencion_isrChange(Sender: TField);
begin
if (QCuentas.Active) and  (not QFacturafac_retencion_isr.IsNull)  and (not dm.QContabpar_cta_retencion_isr.IsNull) then
  begin
    if not QCuentas.Locate('cat_cuenta', dm.QContabpar_cta_retencion_isr.Value ,[]) then
    Begin
      QCuentas.Append;
      QcuentasCAT_CUENTA.Value := dm.QContabpar_cta_retencion_isr.Value;
      QCuentasDET_ORIGEN.Value := 'Credito';
      QCuentasDET_MONTO.Value  := QFacturafac_retencion_isr.Value;
      QCuentas.Post;
    End
    else
    Begin
      QCuentas.Edit;
      QcuentasCAT_CUENTA.Value := dm.QContabpar_cta_retencion_isr.Value;
      QCuentasDET_ORIGEN.Value := 'Credito';
      QCuentasDET_MONTO.Value  := QFacturafac_retencion_isr.Value;
      QCuentas.Post;
    End;
  end;
  if (CtaCxP <> '') then
  begin
    if not QCuentas.Locate('cat_cuenta', CtaCxP,[]) then
    Begin
      QCuentas.Append;
      QcuentasCAT_CUENTA.Value := CtaCxP;
      QCuentasDET_ORIGEN.Value := 'Credito';
      QCuentasDET_MONTO.Value  := QFacturaTotal.Value;
      QCuentas.Post;
    End
    else
    Begin
      QCuentas.Edit;
      QcuentasCAT_CUENTA.Value := CtaCxP;
      QCuentasDET_ORIGEN.Value := 'Credito';
      QCuentasDET_MONTO.Value  := QFacturaTotal.Value;
      QCuentas.Post;
    End;
  end;
end;

procedure TfrmFacProvee.btpreciosClick(Sender: TObject);
var
  a : integer;
begin
  Application.CreateForm(tfrmPreciosUnidadMedidaFacProvee, frmPreciosUnidadMedidaFacProvee);
  frmPreciosUnidadMedidaFacProvee.QUnidades.Open;

  QUnidades.DisableControls;
  QUnidades.First;
  while not QUnidades.Eof do
  begin
    if QUnidadespro_codigo.Value = QDetallePRO_CODIGO.Value then
    begin
      frmPreciosUnidadMedidaFacProvee.QUnidades.Append;
      frmPreciosUnidadMedidaFacProvee.QUnidadesUnidadID.Value   := QUnidadesUnidadID.Value;
      frmPreciosUnidadMedidaFacProvee.QUnidadesPrecio.Value     := QUnidadesPrecio.Value;
      frmPreciosUnidadMedidaFacProvee.QUnidadesCantidad.Value   := QUnidadesCantidad.Value;
      frmPreciosUnidadMedidaFacProvee.QUnidadesSecuencia.Value  := QUnidadesSecuencia.Value;
      frmPreciosUnidadMedidaFacProvee.QUnidadesCredito.Value    := QUnidadesCredito.Value;
      frmPreciosUnidadMedidaFacProvee.QUnidadesMinimo.Value     := QUnidadesMinimo.Value;
      frmPreciosUnidadMedidaFacProvee.QUnidadespro_codigo.Value := QDetallePRO_CODIGO.Value;
      frmPreciosUnidadMedidaFacProvee.QUnidades.Post;
    end;
    QUnidades.Next;
  end;
  QUnidades.First;
  QUnidades.EnableControls;
  frmPreciosUnidadMedidaFacProvee.QUnidades.First;

  frmPreciosUnidadMedidaFacProvee.ShowModal;
  if frmPreciosUnidadMedidaFacProvee.acepto = 1 then
  begin
    //eliminando registros del producto seleccionado para actualizarlo
    QUnidades.DisableControls;
    QUnidades.First;
    a := QUnidades.RecordCount;
    while a > 0 do
    begin
      if QUnidadespro_codigo.Value = QDetallePRO_CODIGO.Value then
        QUnidades.Delete
      else
        QUnidades.Next;

      a := a - 1;
    end;
    QUnidades.EnableControls;

    //insertando los registros actualizados
    frmPreciosUnidadMedidaFacProvee.QUnidades.First;
    while not frmPreciosUnidadMedidaFacProvee.QUnidades.Eof do
    begin
      QUnidades.Append;
      QUnidadespro_codigo.Value := QDetallePRO_CODIGO.Value;
      QUnidadesPrecio.Value     := frmPreciosUnidadMedidaFacProvee.QUnidadesPrecio.Value;
      QUnidadesCredito.Value    := frmPreciosUnidadMedidaFacProvee.QUnidadesCredito.Value;
      QUnidadesMinimo.Value     := frmPreciosUnidadMedidaFacProvee.QUnidadesMinimo.Value;
      QUnidadesCantidad.Value   := frmPreciosUnidadMedidaFacProvee.QUnidadesCantidad.Value;
      QUnidadesUnidadID.Value   := frmPreciosUnidadMedidaFacProvee.QUnidadesUnidadID.Value;
      QUnidades.Post;
      
      frmPreciosUnidadMedidaFacProvee.QUnidades.Next;
    end;
  end;
  frmPreciosUnidadMedidaFacProvee.Release;
end;

procedure TfrmFacProvee.QCuentasCalcFields(DataSet: TDataSet);
var
  a : integer;
begin
  {if QCuentasCAT_CUENTA.AsString = CtaCxP then
  begin
    for a := 0 to GridCuentas.Columns.Count -1 do
    begin
      if GridCuentas.Columns[a].FieldName = 'DET_MONTO' then
      begin
         GridCuentas.Columns[a].ReadOnly := True;
         break;
      end;
    end;
  end
  else
  begin
    for a := 0 to GridCuentas.Columns.Count -1 do
    begin
      if GridCuentas.Columns[a].FieldName = 'DET_MONTO' then
      begin
         GridCuentas.Columns[a].ReadOnly := False;
         break;
      end;
    end;
  end;}
end;

procedure TfrmFacProvee.spcentrosClick(Sender: TObject);
var
  a : integer;
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select cat_maneja_centro from contcatalogo');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and cat_cuenta = :cta');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('cta').Value := QCuentasCAT_CUENTA.AsString;
  dm.Query1.Open;
  if dm.Query1.FieldByName('cat_maneja_centro').AsString <> 'S' then
  begin
    MessageDlg('Esta cuenta no acepta Centros de Costo', mtError, [mbyes], 0);
    GridCuentas.SetFocus;
  end
  else
  begin
    Application.CreateForm(tfrmCentrosXCuenta, frmCentrosXCuenta);
    frmCentrosXCuenta.lbcuenta.Caption := QCuentasCAT_CUENTA.AsString+': '+QCuentasCAT_NOMBRE.AsString;
    frmCentrosXCuenta.cta := QCuentasCAT_CUENTA.AsString;
    frmCentrosXCuenta.vMontototal := QCuentasDET_MONTO.Value;
    //Grabando registro en la pantalla
    QCentro.DisableControls;
    QCentro.First;
    while not QCentro.Eof do
    begin
      if QCentrocat_cuenta.Value = QCuentasCAT_CUENTA.AsString then
      begin
        frmCentrosXCuenta.QCentro.Append;
        frmCentrosXCuenta.QCentrocen_nombre.Value := QCentrocen_nombre.AsString;
        frmCentrosXCuenta.QCentrodet_monto.Value  := QCentrodet_monto.Value;
        frmCentrosXCuenta.QCentrocen_referencia.Value := QCentrocen_referencia.AsString;
        frmCentrosXCuenta.QCentrosub_referencia.Value := QCentrosub_referencia.AsString;
        frmCentrosXCuenta.QCentrocen_codigo.Value     := QCentrocen_codigo.Value;
        frmCentrosXCuenta.QCentrosub_secuencia.Value  := QCentrosub_secuencia.Value;
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
      QCentrodet_monto.Value  := frmCentrosXCuenta.QCentrodet_monto.Value;
      QCentrocen_referencia.Value := frmCentrosXCuenta.QCentrocen_referencia.Value;
      QCentrosub_referencia.Value := frmCentrosXCuenta.QCentrosub_referencia.Value;
      QCentrocen_codigo.Value     := frmCentrosXCuenta.QCentrocen_codigo.Value;
      QCentrosub_secuencia.Value  := frmCentrosXCuenta.QCentrosub_secuencia.Value;
      QCentrodet_secuencia.Value  := frmCentrosXCuenta.QCentro.IndexFieldCount;
      QCentro.Post;

      frmCentrosXCuenta.QCentro.Next;
    end;
    frmCentrosXCuenta.QCentro.EnableControls;
    frmCentrosXCuenta.Release;
  end;
end;

procedure TfrmFacProvee.GridCuentasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
Var
  DataRect : TRect ;
Begin
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
end;

procedure TfrmFacProvee.QDetallepro_unidad_medidaChange(Sender: TField);
begin
  if (not QDetallepro_unidad_medida.IsNull) and (dm.QParametrospar_inv_unidad_medida.Value = 'True') then
  begin
    //buscando precio por unidad de medida
    QMedidas.Close;
    QMedidas.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    QMedidas.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
    QMedidas.Parameters.ParamByName('und').Value := QDetallepro_unidad_medida.Value;
    QMedidas.Open;
    if QMedidas.RecordCount = 0 then
    begin
      MessageDlg('Esta unidad de medida no existe en el producto',mtError,[mbok],0);
      QDetallepro_unidad_medida.Clear;
      Abort;
    end
    else
    begin
      qdetalledet_cant_unidad_medida.Value := QMedidasCantidad.AsFloat;
      QDetalleUnidadID.Value := QMedidasUnidadID.Value;
    end;
  end;
end;

procedure TfrmFacProvee.Buscarproductoenellistado1Click(Sender: TObject);
var
  nom : string;
begin
  nom := InputBox('Buscar producto', 'Nombre', '');
  if length(nom) > 0 then
  begin
    if not QDetalle.Locate('pro_nombre', nom, [loPartialKey]) then
    begin
      MessageDlg('Producto no encontrato en la lista', mtError, [mbOK], 0);
      Grid.SetFocus;
    end;
  end;
end;

procedure TfrmFacProvee.QDetalleBeforeEdit(DataSet: TDataSet);
begin
  Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
end;

procedure TfrmFacProvee.bTipoRetClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.clear;
  Search.Query.add('select ret_nombre, ret_codigo');
  Search.ResultField := 'ret_codigo';
  Search.Query.add('from Retenciones');
  Search.Title := 'Tipo de Retenciones ISR';
  if Search.execute then
  begin
    QFacturaTipo_Ret_Codigo.value := StrToInt(Search.ValueField);
    DBEdit22.setfocus;
  end;
end;

procedure TfrmFacProvee.QFacturaTipo_Ret_CodigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QFacturaTipo_Ret_Codigo.IsNull then
  begin
    Text := IntToStr(QFacturaTipo_Ret_Codigo.Value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select ret_codigo, ret_nombre');
    dm.Query1.sql.add('from Retenciones');
    dm.Query1.sql.add('where ret_codigo = :tip');
    dm.Query1.Parameters.parambyname('tip').Value := QFacturaTipo_Ret_Codigo.Value;
    dm.Query1.open;
    if dm.Query1.RecordCount > 0 then
      edtTipoRet.text := dm.Query1.fieldbyname('ret_nombre').asstring
    else
      edtTipoRet.text := '';
  end
  else
    edtTipoRet.text := '';
end;

procedure TfrmFacProvee.bfac_form_pagoClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.clear;
  Search.Query.add('select fpap_nombre, fpap_codigo');
  Search.ResultField := 'fpap_codigo';
  Search.Query.add('from FormasPagoProv');
  Search.Title := 'Forma de Pago';
  if Search.execute then
  begin
    QFacturafac_form_pago.value := StrToInt(Search.ValueField);
    DBEdit22.setfocus;
  end;
end;

procedure TfrmFacProvee.QFacturafac_form_pagoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QFacturafac_form_pago.IsNull then
  begin
    Text := IntToStr(QFacturafac_form_pago.Value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select fpap_codigo, fpap_nombre');
    dm.Query1.sql.add('from FormasPagoProv');
    dm.Query1.sql.add('where fpap_codigo = :tip');
    dm.Query1.Parameters.parambyname('tip').Value := QFacturafac_form_pago.Value;
    dm.Query1.open;
    if dm.Query1.RecordCount > 0 then
      edtfac_form_pago.text := dm.Query1.fieldbyname('fpap_nombre').asstring
    else
      edtfac_form_pago.text := '';
  end
  else
    edtfac_form_pago.text := '';
end;

procedure TfrmFacProvee.QDetalleAfterPost(DataSet: TDataSet);
begin
TotalizarProd;
Totalizar;
end;

procedure TfrmFacProvee.QFacturafac_serviciosChange(Sender: TField);
begin
if (QCuentas.Active) and (CtaCompra <> '') AND
  (NOT QFacturafac_servicios.IsNull) then
  begin
    if not QCuentas.Locate('cat_cuenta', CtaCompra,[]) then
    Begin
      QCuentas.Append;
      QcuentasCAT_CUENTA.Value := CtaCompra;
      QCuentasDET_ORIGEN.Value := 'Debito';
      QCuentasDET_MONTO.Value  := QFacturafac_servicios.Value;
      QCuentas.Post;
    End
    else
    Begin
      QCuentas.Edit;
      QcuentasCAT_CUENTA.Value := CtaCompra;
      QCuentasDET_ORIGEN.Value := 'Debito';
      QCuentasDET_MONTO.Value  := QFacturafac_servicios.Value;
      QCuentas.Post;
    End;
    END;

  if (CtaCxP <> '') then
  begin
    if not QCuentas.Locate('cat_cuenta', CtaCxP,[]) then
    Begin
      QCuentas.Append;
      QcuentasCAT_CUENTA.Value := CtaCxP;
      QCuentasDET_ORIGEN.Value := 'Credito';
      QCuentasDET_MONTO.Value  := QFacturaTotal.Value;
      QCuentas.Post;
    End
    else
    Begin
      QCuentas.Edit;
      QcuentasCAT_CUENTA.Value := CtaCxP;
      QCuentasDET_ORIGEN.Value := 'Credito';
      QCuentasDET_MONTO.Value  := QFacturaTotal.Value;
      QCuentas.Post;
    End;
  end;
end;

procedure TfrmFacProvee.QFacturafac_proplegalChange(Sender: TField);
begin
 if (QCuentas.Active) and (DM.QContabpar_ctaproplegcomp.Value <> '') AND
  (NOT QFacturafac_proplegal.IsNull) then
  begin
    if not QCuentas.Locate('cat_cuenta', DM.QContabpar_ctaproplegcomp.Value,[]) then
    Begin
      QCuentas.Append;
      QcuentasCAT_CUENTA.Value := DM.QContabpar_ctaproplegcomp.Value;
      QCuentasDET_ORIGEN.Value := 'Debito';
      QCuentasDET_MONTO.Value  := QFacturafac_proplegal.Value;
      QCuentas.Post;
    End
    else
    Begin
      QCuentas.Edit;
      QcuentasCAT_CUENTA.Value := DM.QContabpar_ctaproplegcomp.Value;
      QCuentasDET_ORIGEN.Value := 'Debito';
      QCuentasDET_MONTO.Value  := QFacturafac_proplegal.Value;
      QCuentas.Post;
    End;
    END;

  if (CtaCxP <> '') then
  begin
    if not QCuentas.Locate('cat_cuenta', CtaCxP,[]) then
    Begin
      QCuentas.Append;
      QcuentasCAT_CUENTA.Value := CtaCxP;
      QCuentasDET_ORIGEN.Value := 'Credito';
      QCuentasDET_MONTO.Value  := (QFacturaFAC_EXENTO.Value + QFacturaFAC_GRABADO.Value +
      QFacturafac_flete.Value + QFacturafac_selectivo.Value + QFacturafac_servicios.Value+
      QFacturaFAC_ITBIS.Value + QFacturafac_proplegal.Value + QFacturafac_otrosimpuestos.Value)-
      (QFacturaFAC_DESCUENTO.Value + QFacturafac_retencion.Value + QFacturafac_retencion_isr.Value);
      QCuentas.Post;
    End
    else
    Begin
      QCuentas.Edit;
      QcuentasCAT_CUENTA.Value := CtaCxP;
      QCuentasDET_ORIGEN.Value := 'Credito';
      QCuentasDET_MONTO.Value  := (QFacturaFAC_EXENTO.Value + QFacturaFAC_GRABADO.Value +
      QFacturafac_flete.Value + QFacturafac_selectivo.Value + QFacturafac_servicios.Value+
      QFacturaFAC_ITBIS.Value + QFacturafac_proplegal.Value + QFacturafac_otrosimpuestos.Value)-
      (QFacturaFAC_DESCUENTO.Value + QFacturafac_retencion.Value + QFacturafac_retencion_isr.Value);
      QCuentas.Post;
    End;
  end;
end;

procedure TfrmFacProvee.QFacturafac_otrosimpuestosChange(Sender: TField);
begin
   if (QCuentas.Active) and (DM.QContabpar_ctaotrosimp.Value <> '') AND
  (NOT QFacturafac_proplegal.IsNull) then
  begin
    if not QCuentas.Locate('cat_cuenta', DM.QContabpar_ctaotrosimp.Value,[]) then
    Begin
      QCuentas.Append;
      QcuentasCAT_CUENTA.Value := DM.QContabpar_ctaotrosimp.Value;
      QCuentasDET_ORIGEN.Value := 'Debito';
      QCuentasDET_MONTO.Value  := QFacturafac_otrosimpuestos.Value;
      QCuentas.Post;
    End
    else
    Begin
      QCuentas.Edit;
      QcuentasCAT_CUENTA.Value := DM.QContabpar_ctaotrosimp.Value;
      QCuentasDET_ORIGEN.Value := 'Debito';
      QCuentasDET_MONTO.Value  := QFacturafac_otrosimpuestos.Value;
      QCuentas.Post;
    End;
    END;

  if (CtaCxP <> '') then
  begin
    if not QCuentas.Locate('cat_cuenta', CtaCxP,[]) then
    Begin
      QCuentas.Append;
      QcuentasCAT_CUENTA.Value := CtaCxP;
      QCuentasDET_ORIGEN.Value := 'Credito';
      QCuentasDET_MONTO.Value  := (QFacturaFAC_EXENTO.Value + QFacturaFAC_GRABADO.Value +
      QFacturafac_flete.Value + QFacturafac_selectivo.Value + QFacturafac_servicios.Value+
      QFacturaFAC_ITBIS.Value + QFacturafac_proplegal.Value + QFacturafac_otrosimpuestos.Value)-
      (QFacturaFAC_DESCUENTO.Value + QFacturafac_retencion.Value + QFacturafac_retencion_isr.Value);
      QCuentas.Post;
    End
    else
    Begin
      QCuentas.Edit;
      QcuentasCAT_CUENTA.Value := CtaCxP;
      QCuentasDET_ORIGEN.Value := 'Credito';
      QCuentasDET_MONTO.Value  := (QFacturaFAC_EXENTO.Value + QFacturaFAC_GRABADO.Value +
      QFacturafac_flete.Value + QFacturafac_selectivo.Value + QFacturafac_servicios.Value+
      QFacturaFAC_ITBIS.Value + QFacturafac_proplegal.Value + QFacturafac_otrosimpuestos.Value)-
      (QFacturaFAC_DESCUENTO.Value + QFacturafac_retencion.Value + QFacturafac_retencion_isr.Value);
      QCuentas.Post;
    End;
  end;
end;

procedure TfrmFacProvee.QDetallePRO_BENEFICIOChange(Sender: TField);
begin
precios;
end;

procedure TfrmFacProvee.QDetallePRO_BENEFICIO2Change(Sender: TField);
begin
precios;
end;

procedure TfrmFacProvee.QDetallePRO_BENEFICIO4Change(Sender: TField);
begin
precios;
end;

procedure TfrmFacProvee.QDetalleDET_COSTOUNDChange(Sender: TField);
begin
 if dm.QParametrospar_inv_unidad_medida.Value <> 'True' then
  begin
    if (not QDetalleDET_COSTOUND.IsNull) and (not Buscando) then
    begin
      if QDetalleDET_MEDIDA.Value = 'Und' then
      begin
        if QDetallepro_cantempaque.Value > 0 then
          QDetalleDET_COSTOEMP.Value := QDetalleDET_COSTOUND.Value * QDetallepro_cantempaque.Value;
        if StrToFloat(Format('%10.2F',[QDetalleDET_COSTOUND.Value])) <> StrToFloat(Format('%10.2F',[QDetalledet_costound_ant.Value])) then
        begin
          if dm.QParametrospar_inv_entrada_modifica_precio.Value = 'False' then
          begin
            if DecisionPrecio = '' then
            begin
              if MessageDlg('El Costo cambió, desea actualizar los precios?',mtConfirmation,[mbyes,mbno], 0) = mryes then
              begin
                DecisionPrecio := 'S';
                Precios;
              end
              else
                DecisionPrecio := 'N';
                if ((DBEdit12.Text <> '') and (QDetallepro_precio1.Value>0)) then
                QDetallePRO_BENEFICIO.Value := ((QDetallepro_precio1.Value / QDetalleValorItbisUnd.Value)*100)-100;
                DBEdit11.Text := FormatCurr('#,0.00',QDetallepro_beneficio.Value);
                if ((DBEdit14.Text <> '') and (QDetallepro_precio2.Value>0)) then
                QDetallePRO_BENEFICIO2.Value := ((QDetallepro_precio2.Value / QDetalleValorItbisUnd.Value)*100)-100;
                DBEdit13.Text := FormatCurr('#,0.00',QDetallepro_beneficio2.Value);
                if ((DBEdit17.Text <> '') and (QDetallepro_precio3.Value>0)) then
                QDetallePRO_BENEFICIO3.Value := ((QDetallepro_precio3.Value / QDetalleValorItbisUnd.Value)*100)-100;
                DBEdit15.Text := FormatCurr('#,0.00',QDetallepro_beneficio3.Value);
                if ((DBEdit18.Text <> '') and (QDetallepro_precio4.Value>0)) then
                QDetallePRO_BENEFICIO4.Value := ((QDetallepro_precio4.Value / QDetalleValorItbisUnd.Value)*100)-100;
                DBEdit16.Text := FormatCurr('#,0.00',QDetallepro_beneficio4.Value);
            end
            else
            begin
              if DecisionPrecio = 'S' then precios;
              if DecisionPrecio = 'N' then begin
              if ((DBEdit12.Text <> '') and (QDetallepro_precio1.Value>0)) then
                QDetallePRO_BENEFICIO.Value := ((QDetallepro_precio1.Value / QDetalleValorItbisUnd.Value)*100)-100;
                DBEdit11.Text := FormatCurr('#,0.00',QDetallepro_beneficio.Value);
                if ((DBEdit14.Text <> '') and (QDetallepro_precio2.Value>0)) then
                QDetallePRO_BENEFICIO2.Value := ((QDetallepro_precio2.Value / QDetalleValorItbisUnd.Value)*100)-100;
                DBEdit13.Text := FormatCurr('#,0.00',QDetallepro_beneficio2.Value);
                if ((DBEdit17.Text <> '') and (QDetallepro_precio3.Value>0)) then
                QDetallePRO_BENEFICIO3.Value := ((QDetallepro_precio3.Value / QDetalleValorItbisUnd.Value)*100)-100;
                DBEdit15.Text := FormatCurr('#,0.00',QDetallepro_beneficio3.Value);
                if ((DBEdit18.Text <> '') and (QDetallepro_precio4.Value>0)) then
                QDetallePRO_BENEFICIO4.Value := ((QDetallepro_precio4.Value / QDetalleValorItbisUnd.Value)*100)-100;
                DBEdit16.Text := FormatCurr('#,0.00',QDetallepro_beneficio4.Value);
            end;
            end;
          end
          else
           Precios;
        end
      end;
    end;
  end;
  DecisionPrecio := '';
end;

procedure TfrmFacProvee.Pantalladeproductos1Click(Sender: TObject);
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

procedure TfrmFacProvee.FormShow(Sender: TObject);
begin
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

procedure TfrmFacProvee.dbedtcont_numeroSucursalChange(Sender: TObject);
begin
if Trim(dbedtcont_numeroSucursal.Text) = '' then TSucLoc.Text := '';
end;

procedure TfrmFacProvee.dbedtcont_numeroSucursalKeyDown(Sender: TObject;
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

procedure TfrmFacProvee.btLocalidadClick(Sender: TObject);
begin
Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select suc_nombre, cont_numeroSucursal from sucursales');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
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

end.
