unit PVENTA62;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, ExtCtrls, Grids,
  DBGrids, DB, IBCustomDataSet, IBQuery, IBUpdateSQL, ADODB,
  QuerySearchDlgADO, DBCtrls, Menus,uFrmPopupDGII;

type
  TfrmConsFacProvee = class(TForm)
    Panel1: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    SpeedButton3: TSpeedButton;
    Label2: TLabel;
    btProveedor: TSpeedButton;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    tUsuario: TEdit;
    edUsuario: TEdit;
    edProveedor: TEdit;
    tProveedor: TEdit;
    Panel2: TPanel;
    lbCantidad: TLabel;
    BitBtn2: TBitBtn;
    btRefresh: TBitBtn;
    btClose: TBitBtn;
    Search: TQrySearchDlgADO;
    QFacturas: TADOQuery;
    QFacturasALM_CODIGO: TIntegerField;
    QFacturasEMP_CODIGO: TIntegerField;
    QFacturasFAC_ABONO: TFloatField;
    QFacturasFAC_DESCUENTO: TFloatField;
    QFacturasFAC_DIAS: TIntegerField;
    QFacturasFAC_EXENTO: TFloatField;
    QFacturasFAC_FECHA: TDateTimeField;
    QFacturasFAC_GRABADO: TFloatField;
    QFacturasFAC_NUMERO: TIBStringField;
    QFacturasFAC_STATUS: TIBStringField;
    QFacturasFAC_TOTAL: TFloatField;
    QFacturasFAC_VENCE: TDateTimeField;
    QFacturasSUP_CODIGO: TIntegerField;
    QFacturasSUP_NOMBRE: TIBStringField;
    QFacturasUSU_NOMBRE: TIBStringField;
    QFacturasUSU_CODIGO: TIntegerField;
    dsFacturas: TDataSource;
    QFacturasFAC_ITBIS: TFloatField;
    QProductos: TADOQuery;
    QProductosDET_CANTIDAD: TFloatField;
    QProductosDET_CONITBIS: TIBStringField;
    QProductosDET_ITBIS: TFloatField;
    QProductosDET_SECUENCIA: TIntegerField;
    QProductosEMP_CODIGO: TIntegerField;
    QProductosFAC_NUMERO: TIBStringField;
    QProductosPRO_CODIGO: TIntegerField;
    QProductosPRO_NOMBRE: TIBStringField;
    QProductosPRO_RFABRIC: TIBStringField;
    QProductosPRO_RORIGINAL: TIBStringField;
    QProductosSUP_CODIGO: TIntegerField;
    QProductosDET_COSTO: TFloatField;
    QProductosDET_FECHAVENCE: TDateTimeField;
    QProductosDET_LOTE: TIntegerField;
    QProductosDET_VENCE: TIBStringField;
    dsProductos: TDataSource;
    QDetalle: TADOQuery;
    QDetalleCAT_CUENTA: TIBStringField;
    QDetalleCAT_NOMBRE: TIBStringField;
    QDetalleDET_MONTO: TFloatField;
    QDetalleDET_ORIGEN: TIBStringField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    QDetalleFAC_NUMERO: TIBStringField;
    QDetalleSUP_CODIGO: TIntegerField;
    dsDetalle: TDataSource;
    ckDetalle: TCheckBox;
    Memo1: TMemo;
    QProductosValor: TFloatField;
    QProductosPrecioItbis: TFloatField;
    QProductosCalcItbis: TFloatField;
    QProductosCalcDesc: TFloatField;
    QProductosDET_MEDIDA: TIBStringField;
    QDevol: TADOQuery;
    QDevolDEP_CODIGO: TIntegerField;
    QDevolDET_COSTOEMP: TFloatField;
    QDevolDET_COSTOITBIS: TFloatField;
    QDevolDET_COSTOUND: TFloatField;
    QDevolDET_FECHAVENCE: TDateTimeField;
    QDevolDET_MEDIDA: TIBStringField;
    QDevolDET_SECUENCIA: TIntegerField;
    QDevolDEV_CANTFACTURADA: TFloatField;
    QDevolDEV_CANTIDAD: TFloatField;
    QDevolDEV_CONITBIS: TIBStringField;
    QDevolDEV_COSTO: TFloatField;
    QDevolDEV_ITBIS: TFloatField;
    QDevolDEV_NUMERO: TIntegerField;
    QDevolDEV_TOPECANTIDAD: TFloatField;
    QDevolEMP_CODIGO: TIntegerField;
    QDevolFAM_CODIGO: TIntegerField;
    QDevolMAR_CODIGO: TIntegerField;
    QDevolPRO_CODIGO: TIntegerField;
    QDevolPRO_NOMBRE: TIBStringField;
    QDevolPRO_RFABRIC: TIBStringField;
    QDevolPRO_RORIGINAL: TIBStringField;
    QDevolPRO_SERVICIO: TIBStringField;
    QDevolValor: TFloatField;
    QDevolPrecioItbis: TFloatField;
    QDevolCalcItbis: TFloatField;
    QDevolCalcDesc: TFloatField;
    dsDevol: TDataSource;
    QProductosDET_CANTDEVUELTA: TFloatField;
    QCheques: TADOQuery;
    dsCheques: TDataSource;
    QDevolDEV_FECHA: TDateTimeField;
    QFacturasfac_flete: TBCDField;
    QFacturasfac_selectivo: TBCDField;
    QFacturassup_rnc: TStringField;
    QCentro: TADOQuery;
    QCentrocen_codigo: TIntegerField;
    QCentrocen_nombre: TStringField;
    QCentrodet_monto: TBCDField;
    QCentrodet_secuencia: TIntegerField;
    dsCentro: TDataSource;
    Label3: TLabel;
    btCentro: TSpeedButton;
    edCEntro: TEdit;
    tcentro: TEdit;
    BitBtn1: TBitBtn;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    dsSuc: TDataSource;
    cksucursal: TCheckBox;
    lbproductos: TLabel;
    QFacturasNCF: TStringField;
    PageControl2: TPageControl;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    DBGrid1: TDBGrid;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    Grid: TDBGrid;
    TabSheet1: TTabSheet;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    GridCuentas: TDBGrid;
    lbCR: TStaticText;
    lbDB: TStaticText;
    lbBAL: TStaticText;
    TabSheet3: TTabSheet;
    DBGrid2: TDBGrid;
    TabSheet4: TTabSheet;
    DBGrid3: TDBGrid;
    TabSheet5: TTabSheet;
    GridCentro: TDBGrid;
    DBGrid4: TDBGrid;
    QProductosComprados: TADOQuery;
    dsProdctosComprados: TDataSource;
    QProductosCompradosPRO_CODIGO: TIntegerField;
    QProductosCompradosPRO_NOMBRE: TStringField;
    QProductosCompradosPRO_RFABRIC: TStringField;
    QProductosCompradosPRO_RORIGINAL: TStringField;
    QProductosCompradosDET_MEDIDA: TStringField;
    QProductosCompradoscantidad: TBCDField;
    QProductosCompradoscosto: TBCDField;
    Memo2: TMemo;
    QFacturasncf_fijo: TStringField;
    QFacturasncf_secuencia: TBCDField;
    QFacturasNumeroCF: TStringField;
    QFacturasfac_selectivo_ad: TBCDField;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    QCentroemp_codigo: TIntegerField;
    QCentrosup_codigo: TIntegerField;
    QCentrofac_numero: TStringField;
    QProductosdet_oferta: TBCDField;
    Splitter1: TSplitter;
    Panel3: TPanel;
    btelimina: TSpeedButton;
    btbuscacta: TSpeedButton;
    QFacturasfac_tasa: TBCDField;
    QFacturasmon_sigla: TStringField;
    PopupMenu1: TPopupMenu;
    CambiarTasa1: TMenuItem;
    CambiarMoneda1: TMenuItem;
    CambiarNCF1: TMenuItem;
    QFacturasfac_retencion: TBCDField;
    QFacturasped_numero: TIntegerField;
    QFacturasent_numero: TIntegerField;
    QFacturastip_nombre: TStringField;
    cbstatus: TComboBox;
    rgtipo: TComboBox;
    Label1: TLabel;
    Label4: TLabel;
    QFacturasfac_concepto: TStringField;
    Label5: TLabel;
    cbfiltro: TComboBox;
    Label8: TLabel;
    eddia1: TEdit;
    eddia2: TEdit;
    Label12: TLabel;
    edMoneda: TEdit;
    btMoneda: TSpeedButton;
    tMoneda: TEdit;
    QChequesDescripcion: TStringField;
    QChequesNumero: TIntegerField;
    QChequesFecha: TDateTimeField;
    QChequesPago: TBCDField;
    QChequesTipo: TStringField;
    QChequesConcepto1: TStringField;
    QChequesConcepto2: TStringField;
    QChequesTasa: TBCDField;
    CambiarTipodeBienyServicio1: TMenuItem;
    CambiarEmpresa1: TMenuItem;
    QProductosdet_costound: TBCDField;
    QProductosdet_costoemp: TBCDField;
    QProductosPrecioItbisEmp: TFloatField;
    QProductosCalcItbisEmp: TFloatField;
    QProductosValorEmp: TFloatField;
    QProductosCalcDescEmp: TFloatField;
    Label13: TLabel;
    bttipo: TSpeedButton;
    tTipo: TEdit;
    edTipo: TEdit;
    QFacturasfac_retencion_isr: TBCDField;
    QMedidas: TADOQuery;
    QMedidasUnidadID: TStringField;
    QMedidasNombre: TStringField;
    dsMedida: TDataSource;
    QProductospro_unidad_medida: TStringField;
    QProductosUnidadID: TStringField;
    QProductosMedida_Precio1: TBCDField;
    QProductosMedida_Precio2: TBCDField;
    QProductosMedida_Precio3: TBCDField;
    QProductosMedida_Precio4: TBCDField;
    QProductosdet_cant_unidad_medida: TBCDField;
    QProductosUnidadMedida: TStringField;
    QProductosCompradosUnidadID: TStringField;
    QProductosCompradosUnidadMedida: TStringField;
    PopupMenu2: TPopupMenu;
    Pantalladeproductos1: TMenuItem;
    Pantalladeajuste1: TMenuItem;
    QCentrosub_referencia: TStringField;
    QCentrocen_referencia: TStringField;
    QCentrosub_secuencia: TIntegerField;
    btnSubCentro: TSpeedButton;
    Label14: TLabel;
    edtTipoPago: TEdit;
    btnTipoPago: TSpeedButton;
    edtTipoPagoN: TEdit;
    QFacturasfac_otrosimpuestos: TCurrencyField;
    QFacturasfac_proplegal: TCurrencyField;
    QFacturasfac_servicios: TCurrencyField;
    Label15: TLabel;
    cbbTipoFact: TComboBox;
    QFacturasSUC_CODIGO: TIntegerField;
    lbLocSuc: TLabel;
    edtSucLoc: TEdit;
    btLocalidad: TSpeedButton;
    TSucLoc: TEdit;
    CambiarLocalidad1: TMenuItem;
    QFacturaseNCF: TStringField;
    QFacturasEnviado_DGII: TBooleanField;
    QFacturasError_DGII: TBooleanField;
    btnEnviarDGII: TBitBtn;
    QFacturasemp_rnc: TStringField;
    QFacturascod_dgii: TIntegerField;
    cbStatusDGII: TRadioGroup;
    QFacturasAceptadoDGII: TBooleanField;
    QFacturassup_tipo: TStringField;
    InformacionDGII1: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btProveedorClick(Sender: TObject);
    procedure edProveedorChange(Sender: TObject);
    procedure edProveedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure edUsuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edUsuarioChange(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure GridCuentasColEnter(Sender: TObject);
    procedure GridCuentasEnter(Sender: TObject);
    procedure GridCuentasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QDetalleCAT_CUENTAChange(Sender: TField);
    procedure QDetalleAfterDelete(DataSet: TDataSet);
    procedure QDetalleAfterPost(DataSet: TDataSet);
    procedure QDetalleBeforePost(DataSet: TDataSet);
    procedure QDetalleNewRecord(DataSet: TDataSet);
    procedure QFacturasAfterOpen(DataSet: TDataSet);
    procedure QFacturasAfterScroll(DataSet: TDataSet);
    procedure QProductosCalcFields(DataSet: TDataSet);
    procedure QDevolCalcFields(DataSet: TDataSet);
    procedure btCentroClick(Sender: TObject);
    procedure edCEntroChange(Sender: TObject);
    procedure edCEntroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure PageControl2Change(Sender: TObject);
    procedure QFacturasCalcFields(DataSet: TDataSet);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure GridCentroColEnter(Sender: TObject);
    procedure GridCentroEnter(Sender: TObject);
    procedure GridCentroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QCentroAfterDelete(DataSet: TDataSet);
    procedure QCentroAfterPost(DataSet: TDataSet);
    procedure QCentroBeforePost(DataSet: TDataSet);
    procedure QCentroNewRecord(DataSet: TDataSet);
    procedure QDetalleAfterEdit(DataSet: TDataSet);
    procedure QDetalleAfterInsert(DataSet: TDataSet);
    procedure QDetalleBeforeDelete(DataSet: TDataSet);
    procedure bteliminaClick(Sender: TObject);
    procedure btbuscactaClick(Sender: TObject);
    procedure CambiarTasa1Click(Sender: TObject);
    procedure CambiarMoneda1Click(Sender: TObject);
    procedure CambiarNCF1Click(Sender: TObject);
    procedure btMonedaClick(Sender: TObject);
    procedure edMonedaChange(Sender: TObject);
    procedure edMonedaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CambiarTipodeBienyServicio1Click(Sender: TObject);
    procedure CambiarEmpresa1Click(Sender: TObject);
    procedure edTipoChange(Sender: TObject);
    procedure edTipoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Pantalladeproductos1Click(Sender: TObject);
    procedure Pantalladeajuste1Click(Sender: TObject);
    procedure QCentrosub_referenciaChange(Sender: TField);
    procedure QCentrocen_referenciaChange(Sender: TField);
    procedure GridCentroKeyPress(Sender: TObject; var Key: Char);
    procedure btnSubCentroClick(Sender: TObject);
    procedure btnTipoPagoClick(Sender: TObject);
    procedure bttipoClick(Sender: TObject);
    procedure edtSucLocChange(Sender: TObject);
    procedure edtSucLocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btLocalidadClick(Sender: TObject);
    procedure CambiarLocalidad1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnEnviarDGIIClick(Sender: TObject);
    procedure cbStatusDGIIClick(Sender: TObject);
    procedure InformacionDGII1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Debitos, Creditos : Double;
    Modifica, Elimina : Boolean;
    Procedure Totalizar;

    function ValidarENCFDisponible(
      AEmp: Integer; ATipo: Integer;
      out AMsg: string;
      out ASiguienteCorrelativo: Int64
    ): Boolean;

  end;

var
  frmConsFacProvee: TfrmConsFacProvee;

implementation

uses RVENTA13, SIGMA00, SIGMA01, RVENTA76, PVENTA15, PVENTA138, SIGMA08,FacturacionElectronicaDGII_TLB,ComObj;

{$R *.dfm}

function TipoDGIICompraProveedor(const ATipoProv: string): Integer;
begin
  if ATipoProv = 'I' then
    Result := 41
  else if ATipoProv = 'E' then
    Result := 47
  else
    Result := 0;
end;

function ProveedorEnviaCompraDGII(const ATipoProv: string): Boolean;
begin
  Result := (ATipoProv = 'I') or (ATipoProv = 'E');
end;

function TfrmConsFacProvee.ValidarENCFDisponible(
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

procedure TfrmConsFacProvee.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;

  frmMain.ExportXLS.Sheets[0].DBGrid := DBGrid1;
  frmMain.ExportXLS.Sheets[1].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[0].Exported := True;
end;

procedure TfrmConsFacProvee.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmConsFacProvee.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConsFacProvee.FormCreate(Sender: TObject);
begin
  Memo2.Lines := QProductosComprados.SQL;

  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
     Grid.Columns[0].FieldName := 'PRO_CODIGO'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
     Grid.Columns[0].FieldName := 'PRO_RFABRIC'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
     Grid.Columns[0].FieldName := 'PRO_RORIGINAL';

  if dm.QParametrospar_inv_unidad_medida.Value <> 'True' then
  begin
    Grid.Columns[5].Destroy;
    DBGrid4.Columns[3].Destroy;
    Grid.Columns[1].Width := Grid.Columns[1].Width + 40;
  end;

  if dm.QParametrosPAR_FACMEDIDA.Value <> 'True' then
  begin
    Grid.Columns[4].Destroy;
    DBGrid4.Columns[2].Destroy;
    Grid.Columns[1].Width := Grid.Columns[1].Width + 40;
  end;

  if dm.QParametrospar_fac_oferta.Value <> 'True' then
  begin
    Grid.Columns[3].Destroy;
    Grid.Columns[1].Width := Grid.Columns[1].Width + 36;
  end;
  
  if dm.QParametrosPAR_INVMOSTRARVENCE.Value <> 'True' then
  begin
    Grid.Columns[Grid.Columns.Count-2].Destroy;
    Grid.Columns[1].Width := Grid.Columns[1].Width + 30;

    DBGrid2.Columns[DBGrid2.Columns.Count-2].Destroy;
    DBGrid2.Columns[2].Width := DBGrid2.Columns[2].Width + 30;
  end;

  if (dm.QParametrosintegracion_luganis.AsBoolean)  then
  begin
    btnEnviarDGII.Visible := False;
  end ;

  Memo1.Lines := QFacturas.SQL;
  Fecha1.Date := Date;
  Fecha2.Date := Date;
end;

procedure TfrmConsFacProvee.btProveedorClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C?digo');
  Search.Query.clear;
  Search.Query.add('select sup_nombre, sup_codigo');
  Search.ResultField := 'sup_codigo';
  Search.Query.add('from proveedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.Query.add('and sup_Status = '+#39+'ACT'+#39);
  Search.Title := 'Listado de Proveedores';
  if Search.execute then
  begin
    edProveedor.text := search.valuefield;
    edProveedor.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select sup_codigo, sup_nombre, sup_balance,');
    dm.Query1.sql.add('sup_direccion, sup_localidad, sup_telefono, sup_fax');
    dm.Query1.sql.add('from proveedores');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and sup_Status = '+#39+'ACT'+#39);
    dm.Query1.sql.add('and sup_codigo = :sup');
    dm.Query1.Parameters.parambyname('sup').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.open;
    tProveedor.text := dm.Query1.fieldbyname('sup_nombre').asstring;
    edProveedor.setfocus;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsFacProvee.edProveedorChange(Sender: TObject);
begin
  if trim(edProveedor.text) = '' then tProveedor.text := '';
end;

procedure TfrmConsFacProvee.edProveedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edProveedor.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select sup_codigo, sup_nombre, sup_balance,');
      dm.Query1.sql.add('sup_direccion, sup_localidad, sup_telefono, sup_fax');
      dm.Query1.sql.add('from proveedores');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and sup_Status = '+#39+'ACT'+#39);
      dm.Query1.sql.add('and sup_codigo = :sup');
      dm.Query1.Parameters.parambyname('sup').Value := strtoint(edProveedor.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tProveedor.text := dm.Query1.fieldbyname('sup_nombre').asstring;
    end
    else
      tProveedor.text := '';
  end;
end;

procedure TfrmConsFacProvee.SpeedButton3Click(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C?digo');
  Search.Query.clear;
  Search.Query.add('select usu_nombre, usu_codigo');
  Search.Query.add('from usuarios');
  Search.ResultField := 'usu_Codigo';
  Search.Title := 'Usuarios';
  if Search.execute then
  begin
    edUsuario.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select usu_nombre from usuarios');
    dm.Query1.sql.add('where usu_codigo = :cod');
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edUsuario.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('USUARIO NO EXISTE',mterror,[mbok],0)
    else
      tUsuario.text := dm.Query1.fieldbyname('usu_nombre').asstring;
    edUsuario.setfocus;
    btRefreshClick(self);
  end;
end;

procedure TfrmConsFacProvee.edUsuarioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edUsuario.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select usu_nombre from usuarios');
      dm.Query1.sql.add('where usu_codigo = :cod');
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edUsuario.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('USUARIO NO EXISTE',mterror,[mbok],0);
        edUsuario.setFocus;
      end
      else
        tUsuario.text := dm.Query1.fieldbyname('usu_nombre').asstring;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsFacProvee.edUsuarioChange(Sender: TObject);
begin
  if trim(edUsuario.text) = '' then tUsuario.text := '';
end;

procedure TfrmConsFacProvee.btRefreshClick(Sender: TObject);
begin
Screen.Cursor := crHourGlass;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('SELECT count(*) as cantidad');
  dm.Query1.SQL.Add('from DET_PROVFACTURAS d,');
  dm.Query1.SQL.Add('provfacturas f');
  dm.Query1.SQL.Add('left outer join ProvFacturasCentros c on');
  dm.Query1.SQL.Add('(f.emp_codigo = c.emp_codigo');
  dm.Query1.SQL.Add('and f.sup_codigo = c.sup_codigo');
  dm.Query1.SQL.Add('and f.fac_numero = c.fac_numero), proveedores s, usuarios u');
  dm.Query1.SQL.Add('where f.sup_codigo = s.sup_codigo');
  //dm.Query1.SQL.Add('and s.emp_codigo = '+IntToStr(DM.vp_cia));
  dm.Query1.SQL.Add('and f.usu_codigo = u.usu_codigo');
  dm.Query1.SQL.Add('and f.fac_fecha between convert(datetime,:fecha1,105) and convert(datetime,:fecha2,105)');
  dm.Query1.SQL.Add('AND F.EMP_CODIGO = :emp');
  dm.Query1.SQL.Add('AND S.EMP_CODIGO = :emp');
  dm.Query1.SQL.Add('and d.emp_codigo = f.emp_codigo');
  dm.Query1.SQL.Add('and d.sup_codigo = f.sup_codigo');
  dm.Query1.SQL.Add('and d.fac_numero = f.fac_numero');

  if Trim(edProveedor.text) <> '' then
     dm.Query1.SQL.Add('and f.sup_codigo = '+Trim(edProveedor.text));

  if Trim(edMoneda.text) <> '' then
     dm.Query1.SQL.Add('and f.mon_codigo = '+Trim(edMoneda.text));


  IF Trim(edtSucLoc.Text)<>'' THEN
    DM.Query1.SQL.Add('and f.cont_numeroSucursal = '+QuotedStr(edtSucLoc.Text));


  if Trim(edUsuario.text) <> '' then
     dm.Query1.SQL.Add('and f.usu_codigo = '+Trim(edUsuario.text));

  if (Trim(eddia1.text) <> '') and (Trim(eddia2.text) <> '') then
     dm.Query1.SQL.Add('and f.FAC_DIAS between '+Trim(eddia1.text)+' and '+Trim(eddia2.text));

  if cksucursal.Checked then
     dm.Query1.SQL.Add('and f.suc_codigo = '+IntToStr(DBLookupComboBox2.KeyValue));

  case cbStatus.ItemIndex of
  1 : dm.Query1.SQL.Add('and f.fac_status = '+#39+'PEN'+#39);
  2 : dm.Query1.SQL.Add('and f.fac_status = '+#39+'PAG'+#39);
  3 : dm.Query1.SQL.Add('and f.fac_status = '+#39+'ANU'+#39);
  end;

  if Trim(edCEntro.Text) <> '' then
     dm.Query1.SQL.Add('and c.cen_codigo = '+Trim(edCentro.Text));

  dm.Query1.Parameters.ParamByName('Fecha1').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('Fecha2').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('Fecha1').Value    := Fecha1.Date;
  dm.Query1.Parameters.ParamByName('Fecha2').Value    := Fecha2.Date;
  dm.Query1.Parameters.ParamByName('emp').Value       := dm.vp_cia;
  dm.Query1.Open;
  lbproductos.Caption := dm.Query1.FieldByName('cantidad').AsString+' Productos en total';

  QFacturas.Close;
  QFacturas.SQL.Clear;
  QFacturas.SQL := Memo1.Lines;

  QProductosComprados.Close;
  QProductosComprados.SQL.Clear;
  QProductosComprados.SQL := Memo2.lines;

  if Trim(edMoneda.text) <> '' then
     QFacturas.SQL.Add('and f.mon_codigo = '+Trim(edMoneda.text));

  if Trim(edProveedor.text) <> '' then
  begin
    QFacturas.SQL.Add('and f.sup_codigo = '+Trim(edProveedor.text));
    QProductosComprados.SQL.Add('and f.sup_codigo = '+Trim(edProveedor.text));
  end;

  if Trim(edUsuario.text) <> '' then
  begin
    QFacturas.SQL.Add('and f.usu_codigo = '+Trim(edUsuario.text));
    QProductosComprados.SQL.Add('and f.usu_codigo = '+Trim(edUsuario.text));
  end;

  if cksucursal.Checked then
  begin
    QFacturas.SQL.Add('and f.suc_codigo = '+IntToStr(DBLookupComboBox2.KeyValue));
    QProductosComprados.SQL.Add('and f.suc_codigo = '+IntToStr(DBLookupComboBox2.KeyValue));
  end;
  
    if cbStatusDGII.ItemIndex = 1 then
     QFacturas.sql.add('and AceptadoDGII = 1 and (Error_DGII=0 or Error_DGII is null)')
  else if cbStatusDGII.ItemIndex = 2 then
     QFacturas.sql.add('and (AceptadoDGII = 0 or AceptadoDGII is null) and  Error_DGII=1 ')
  else if cbStatusDGII.ItemIndex = 3 then
     QFacturas.sql.add('and  ((Error_DGII=0 and AceptadoDGII = 0) or (Error_DGII is null and AceptadoDGII is null))');


  case cbStatus.ItemIndex of
  1 : begin
        QFacturas.SQL.Add('and f.fac_status = '+#39+'PEN'+#39);
        QProductosComprados.SQL.Add('and f.fac_status = '+#39+'PEN'+#39);
      end;
  2 : begin
        QFacturas.SQL.Add('and f.fac_status = '+#39+'PAG'+#39);
        QProductosComprados.SQL.Add('and f.fac_status = '+#39+'PAG'+#39);
      end;
  3 : begin
        QFacturas.SQL.Add('and f.fac_status = '+#39+'ANU'+#39);
        QProductosComprados.SQL.Add('and f.fac_status = '+#39+'ANU'+#39);
      end;
  end;

  case cbbTipoFact.ItemIndex of
  1:QFacturas.SQL.Add('and f.fac_form_pago = 4');
  2:QFacturas.SQL.Add('and f.fac_form_pago <> 4');
  end;


  if Trim(edCEntro.Text) <> '' then
  begin
    QFacturas.SQL.Add('and c.cen_codigo = '+Trim(edCentro.Text));
    QProductosComprados.SQL.Add('and c.cen_codigo = '+Trim(edCentro.Text));
  end;

  if Trim(edTipo.Text) <> '' then
    QFacturas.SQL.Add('and s.tip_codigo = '+Trim(edTipo.Text));

  if Trim(edtTipoPago.Text) <> '' then
    QFacturas.SQL.Add('and f.fac_form_pago = '+Trim(edtTipoPago.Text));

  Case rgtipo.ItemIndex of
  1 : QFacturas.SQL.Add('and s.SUP_TIPO = '+QuotedStr('F'));
  2 : QFacturas.SQL.Add('and s.SUP_TIPO = '+QuotedStr('I'));
  3 : QFacturas.SQL.Add('and s.SUP_TIPO = '+QuotedStr('S'));
  4 : QFacturas.SQL.Add('and s.SUP_TIPO = '+QuotedStr('E'));
  end;

  case cbfiltro.ItemIndex of
  1 : QFacturas.SQL.Add('and f.Pasadas_606 is null');
  2 : QFacturas.SQL.Add('and f.Pasadas_606 = '+QuotedStr('True'));
  end;

  QFacturas.SQL.Add('order by s.sup_nombre, f.fac_fecha');

  QFacturas.Parameters.ParamByName('par_invempresa').Value := DM.vp_cia;
  QFacturas.Parameters.ParamByName('Fecha1').DataType := ftDate;
  QFacturas.Parameters.ParamByName('Fecha2').DataType := ftDate;
  QFacturas.Parameters.ParamByName('Fecha1').Value := Fecha1.Date;
  QFacturas.Parameters.ParamByName('Fecha2').Value := Fecha2.Date;
  QFacturas.Open;

  QProductosComprados.SQL.Add('group by');
  QProductosComprados.SQL.Add('d.PRO_CODIGO, d.PRO_NOMBRE,');
  QProductosComprados.SQL.Add('d.PRO_RFABRIC, d.PRO_RORIGINAL,');
  QProductosComprados.SQL.Add('d.DET_MEDIDA, d.UnidadID');
  QProductosComprados.SQL.Add('order by d.pro_nombre');
  QProductosComprados.Parameters.ParamByName('Fecha1').DataType := ftDate;
  QProductosComprados.Parameters.ParamByName('Fecha2').DataType := ftDate;
  QProductosComprados.Parameters.ParamByName('Fecha1').Value := Fecha1.Date;
  QProductosComprados.Parameters.ParamByName('Fecha2').Value := Fecha2.Date;
  QProductosComprados.Open;

  lbCantidad.Caption := inttostr(QFacturas.RecordCount)+' Facturas';
  DBGrid1.SetFocus;

  Screen.Cursor := crDefault;
end;

procedure TfrmConsFacProvee.BitBtn2Click(Sender: TObject);
begin
  Application.CreateForm(tRConsFacProvee, RConsFacProvee);
  RConsFacProvee.QFacturas.SQL := QFacturas.SQL;
  RConsFacProvee.QFacturas.Parameters.ParamByName('par_invempresa').Value := DM.vp_cia;
  RConsFacProvee.QFacturas.Parameters.ParamByName('Fecha1').DataType := ftDate;
  RConsFacProvee.QFacturas.Parameters.ParamByName('Fecha2').DataType := ftDate;
  RConsFacProvee.QFacturas.Parameters.ParamByName('Fecha1').Value := Fecha1.Date;
  RConsFacProvee.QFacturas.Parameters.ParamByName('Fecha2').Value := Fecha2.Date;
  RConsFacProvee.QFacturas.Open;
  if ckDetalle.Checked then
    RConsFacProvee.QDetalle.Open;

  RConsFacProvee.lbCliente.Caption := tProveedor.Text;
  RConsFacProvee.lbUsuario.Caption := tUsuario.Text;
  RConsFacProvee.lbCentro.CAption  := tcentro.text;
  RConsFacProvee.lbStatus.Caption  := cbStatus.Items[cbStatus.ItemIndex];
  RConsFacProvee.lbFecha.Caption   := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
  RConsFacProvee.PrinterSetup;
  RConsFacProvee.Preview;
  RConsFacProvee.Destroy;
end;

procedure TfrmConsFacProvee.FormPaint(Sender: TObject);
begin
  with frmConsFacProvee do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmConsFacProvee.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     if activecontrol.classtype <> tdbgrid then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmConsFacProvee.GridCuentasColEnter(Sender: TObject);
begin
  if GridCuentas.SelectedIndex = 1 then
    GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1;
end;

procedure TfrmConsFacProvee.GridCuentasEnter(Sender: TObject);
begin
  GridCuentas.SelectedIndex := 0;
end;

procedure TfrmConsFacProvee.GridCuentasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if GridCuentas.SelectedIndex = 2 then
  begin
    if key = 68 then
    begin
      QDetalle.Edit;
      QDetalleDET_ORIGEN.Value := 'Debito';
      GridCuentas.SelectedIndex := 3;
    end
    else if key = 67 then
    begin
      QDetalle.Edit;
      QDetalleDET_ORIGEN.Value := 'Credito';
      GridCuentas.SelectedIndex := 3;
    end;
  end;
  if key = vk_f5 then btBuscaCtaClick(Self);
  if key = vk_f4 then btEliminaClick(Self);
  if key = vk_insert then abort;
  if (ssCtrl in Shift) and (key = vk_delete) then abort;
  if key = vk_return then
     if GridCuentas.SelectedIndex <> 3 then
        GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1
     else
     begin
       GridCuentas.SelectedIndex := 0;
       QDetalle.Append;
     end;
end;

procedure TfrmConsFacProvee.QDetalleCAT_CUENTAChange(Sender: TField);
begin
  if not QDetalleCAT_CUENTA.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre, cat_origen, cat_movimiento from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value  := QDetalleCAT_CUENTA.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
    begin
      MessageDlg('ESTA CUENTA NO EXISTE',mtError,[mbok],0);
      QDetalleCAT_CUENTA.Clear;
      Abort;
    end
    else if dm.Query1.FieldByName('cat_movimiento').AsString = 'N' then
    begin
      MessageDlg('ESTA CUENTA NO ACEPTA MOVIMIENTO',mtError,[mbok],0);
      QDetalleCAT_CUENTA.Clear;
      Abort;
    end
    else if dm.Query1.RecordCount > 0 then
    begin
      QDetalle.Edit;
      QDetalleCAT_NOMBRE.Value := dm.Query1.FieldByName('cat_nombre').AsString;
      GridCuentas.SelectedIndex := 2;
    end;
  end;
end;

procedure TfrmConsFacProvee.QDetalleAfterDelete(DataSet: TDataSet);
begin
  QDetalle.UpdateBatch;
  Totalizar;
end;

procedure TfrmConsFacProvee.QDetalleAfterPost(DataSet: TDataSet);
begin
  QDetalle.UpdateBatch;
  Totalizar;
end;

procedure TfrmConsFacProvee.QDetalleBeforePost(DataSet: TDataSet);
begin
  if QDetalle.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(det_secuencia),0) as maximo');
    dm.Query1.SQL.Add('from CONTDET_PROVFACTURAS');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and sup_codigo = :sup');
    dm.Query1.SQL.Add('and fac_numero = :num');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('sup').Value := QFacturasSUP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('num').Value  := QFacturasFAC_NUMERO.Value;
    dm.Query1.Open;
    QDetalleDET_SECUENCIA.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  end;
end;

procedure TfrmConsFacProvee.QDetalleNewRecord(DataSet: TDataSet);
begin
  QDetalleEMP_CODIGO.Value := dm.vp_cia;
  QDetalleSUP_CODIGO.Value := QFacturasSUP_CODIGO.Value;
  QDetalleFAC_NUMERO.Value := QFacturasFAC_NUMERO.Value;
end;

procedure TfrmConsFacProvee.Totalizar;
var
  Punt : TBookMark;
begin
  if not QDetalle.Active then QDetalle.Open;
  Debitos  := 0;
  Creditos := 0;
  Punt := QDetalle.GetBookmark;
  QDetalle.DisableControls;
  QDetalle.First;
  while not QDetalle.Eof do
  begin
    if QDetalleDET_ORIGEN.Value = 'Debito' then
      Debitos  := Debitos  + StrToFloat(Format('%10.2f',[QDetalleDET_MONTO.Value]))
    else
      Creditos := Creditos + StrToFloat(Format('%10.2f',[QDetalleDET_MONTO.Value]));
    QDetalle.Next;
  end;
  QDetalle.GotoBookmark(Punt);
  QDetalle.EnableControls;
  lbCR.Caption  := Format('%n',[Creditos]);
  lbDB.Caption  := Format('%n',[Debitos]);
  lbBAL.Caption := Format('%n',[Debitos-Creditos]);
  if Trim(lbBAL.Caption) <> '0.00' then
    lbBAL.Font.Color := clRed
  else
    lbBAL.Font.Color := clBlack;
end;

procedure TfrmConsFacProvee.QFacturasAfterOpen(DataSet: TDataSet);
begin
  if not QProductos.Active then QProductos.Open;
  if not QDetalle.Active   then QDetalle.Open;
  if not QDevol.Active     then QDevol.Open;
  if not QCentro.Active    then QCentro.Open;
  if not QCheques.Active   then QCheques.Open;
end;

procedure TfrmConsFacProvee.QFacturasAfterScroll(DataSet: TDataSet);
begin
  Totalizar;
end;

procedure TfrmConsFacProvee.QProductosCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis : Double;
  VentaEmp, NumItbisEmp : Double;
begin
  //Unidad
  if QProductosDET_CONITBIS.value = 'S' then
  begin
    NumItbis := strtofloat(format('%10.2f',[(QProductosDET_ITBIS.asfloat/100)+1]));
    Venta    := QProductosDET_COSTOUND.value;
    QProductosPrecioItbis.value := Venta;
    QProductosCalcItbis.value   := ((Venta-QProductosCalcDesc.value)*QProductosDET_ITBIS.Value)/100;
    QProductosValor.value       := (Venta-QProductosCalcDesc.value)*QProductosDET_CANTIDAD.value;
  end
  else
  begin
    Venta := QProductosDET_COSTOUND.value;
    QProductosPrecioItbis.value := Venta;
    QProductosValor.value       := (Venta-QProductosCalcDesc.value)*QProductosDET_CANTIDAD.value;
    QProductosCalcItbis.value   := 0;
  end;

  //Empaque
  if QProductosDET_CONITBIS.value = 'S' then
  begin
    NumItbisEmp := strtofloat(format('%10.2f',[(QProductosDET_ITBIS.asfloat/100)+1]));
    VentaEmp    := QProductosDET_COSTOEMP.value;
    QProductosPrecioItbisEmp.value := VentaEmp;
    QProductosCalcItbisEmp.value   := ((VentaEmp-QProductosCalcDescEmp.value)*QProductosDET_ITBIS.Value)/100;
    QProductosValorEmp.value       := (VentaEmp-QProductosCalcDescEmp.value)*QProductosDET_CANTIDAD.value;
  end
  else
  begin
    VentaEmp := QProductosDET_COSTOEMP.value;
    QProductosPrecioItbisEmp.value := VentaEmp;
    QProductosValorEmp.value       := (VentaEmp-QProductosCalcDescEmp.value)*QProductosDET_CANTIDAD.value;
    QProductosCalcItbisEmp.value   := 0;
  end;

  if QProductosDET_VENCE.Value = 'False' then
     QProductosDET_FECHAVENCE.ReadOnly := True
  else
     QProductosDET_FECHAVENCE.ReadOnly := False;
end;

procedure TfrmConsFacProvee.QDevolCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis : Double;
begin
  if QDevolDEV_CONITBIS.value = 'S' then
  begin
    NumItbis := strtofloat(format('%10.2f',[(QDevolDEV_ITBIS.asfloat/100)+1]));
    Venta    := strtofloat(format('%10.2f',[(QDevolDEV_COSTO.value)/NumItbis]));
    QDevolPrecioItbis.value := strtofloat(format('%10.2f',[Venta]));
    QDevolCalcItbis.value   := strtofloat(format('%10.2f',[((Venta-QDevolCalcDesc.value)*
                                 strtofloat(format('%10.2f',[QDevolDEV_ITBIS.Value])))/100]));
    QDevolValor.value       := ((strtofloat(format('%10.2f',[Venta]))-
                                 strtofloat(format('%10.2f',[QDevolCalcDesc.value])))+
                                 strtofloat(format('%10.2f',[QDevolCalcItbis.value])))*
                                 strtofloat(format('%10.2f',[QDevolDEV_CANTIDAD.value]));
  end
  else
  begin
    Venta := strtofloat(format('%10.2f',[QDevolDEV_COSTO.value]));
    QDevolPrecioItbis.value := strtofloat(format('%10.2f',[Venta]));
    QDevolValor.value       := strtofloat(format('%10.2f',[(Venta-QDevolCalcDesc.value)*QDevolDEV_CANTIDAD.value]));
    QDevolCalcItbis.value   := 0;
  end;
end;

procedure TfrmConsFacProvee.btCentroClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select cen_nombre, cen_codigo');
  Search.Query.Add('from centrocostos');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C?digo');
  Search.Title := 'Centro de Costos';
  Search.ResultField := 'cen_codigo';
  if Search.execute then
  begin
    edCEntro.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cen_nombre, cen_codigo from centrocostos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cen_codigo = :cod');
    dm.Query1.Parameters.ParamByName('cod').Value := StrToInt(edCEntro.Text);
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Open;
    tcentro.Text := dm.Query1.FieldByName('cen_nombre').AsString;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsFacProvee.edCEntroChange(Sender: TObject);
begin
  if Trim(edCEntro.Text) = '' then tcentro.Text := '';
end;

procedure TfrmConsFacProvee.edCEntroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edCEntro.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select cen_nombre, cen_codigo from centrocostos');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and cen_codigo = :cod');
      dm.Query1.Parameters.ParamByName('cod').Value := StrToInt(edCEntro.Text);
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Open;
      tcentro.Text := dm.Query1.FieldByName('cen_nombre').AsString;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsFacProvee.BitBtn1Click(Sender: TObject);
begin
  Application.CreateForm(tRFacturaProvee, RFacturaProvee);
  RFacturaProvee.QFactura.Parameters.ParamByName('emp').Value    := QFacturasEMP_CODIGO.Value;
  RFacturaProvee.QFactura.Parameters.ParamByName('emp2').Value   := dm.vp_cia;
  RFacturaProvee.QFactura.Parameters.ParamByName('sup').Value    := QFacturasSUP_CODIGO.Value;
  RFacturaProvee.QFactura.Parameters.ParamByName('fac').Value    := QFacturasFAC_NUMERO.Value;
  RFacturaProvee.QFactura.Open;
  RFacturaProvee.QProductos.Open;
  RFacturaProvee.QCuentas.Open;
  RFacturaProvee.qCentro.Open;
  RFacturaProvee.PrinterSetup;
  RFacturaProvee.Preview;
  RFacturaProvee.Destroy;
end;

procedure TfrmConsFacProvee.PageControl2Change(Sender: TObject);
begin
  case PageControl2.ActivePageIndex of
  0 : frmMain.ExportXLS.Sheets[0].DBGrid := DBGrid1;
  1 : frmMain.ExportXLS.Sheets[0].DBGrid := DBGrid4;
  end;
end;

procedure TfrmConsFacProvee.QFacturasCalcFields(DataSet: TDataSet);
begin
  if QFacturasNCF_Fijo.IsNull then
    QFacturasNumeroCF.Value := QFacturasNCF.Value
  else if not QFacturasNCF_Fijo.IsNull then
    QFacturasNumeroCF.Value := QFacturasNCF_Fijo.Value + formatfloat('00000000',Qfacturasncf_secuencia.value)
  else
    QFacturasNumeroCF.Value := ' ';
end;

procedure TfrmConsFacProvee.SpeedButton4Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select cen_nombre, cen_codigo');
  Search.Query.Add('from centrocostos');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.AliasFields.Add('Descripci?n');
  Search.AliasFields.Add('Cuenta');
  Search.ResultField := 'cen_codigo';
  Search.Title := 'Centros de Costo';
  if Search.execute then
  begin
    QCentro.Edit;
    QCentrocen_referencia.Value := Search.ValueField;
  end;
end;

procedure TfrmConsFacProvee.SpeedButton1Click(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR ESTE CENTRO?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QCentro.Delete
  end;
  GridCentro.setfocus;
end;

procedure TfrmConsFacProvee.GridCentroColEnter(Sender: TObject);
begin
  if GridCentro.SelectedIndex = 2 then GridCentro.SelectedIndex := GridCentro.SelectedIndex + 1;
end;

procedure TfrmConsFacProvee.GridCentroEnter(Sender: TObject);
begin
//  GridCentro.SelectedIndex := 0;
end;

procedure TfrmConsFacProvee.GridCentroKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
{  if key = vk_insert then abort;
  if (ssCtrl in Shift) and (key = vk_delete) then abort;
  if key = vk_return then
     if GridCentro.SelectedIndex <> 2 then
        GridCentro.SelectedIndex := GridCentro.SelectedIndex + 1
     else
     begin
       GridCentro.SelectedIndex := 0;
       QCentro.Append;
     end;}
end;

procedure TfrmConsFacProvee.QCentroAfterDelete(DataSet: TDataSet);
begin
  QCentro.UpdateBatch;
end;

procedure TfrmConsFacProvee.QCentroAfterPost(DataSet: TDataSet);
begin
  QCentro.UpdateBatch;
end;

procedure TfrmConsFacProvee.QCentroBeforePost(DataSet: TDataSet);
begin
  if QCentrocen_nombre.IsNull then QCentro.Cancel;
  if QCentro.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(det_secuencia),0) as maximo');
    dm.Query1.SQL.Add('from ProvFacturasCentros');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and sup_codigo = :sup');
    dm.Query1.SQL.Add('and fac_numero = :num');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('sup').Value := QFacturasSUP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('num').Value := QFacturasFAC_NUMERO.Value;
    dm.Query1.Open;
    QCentrodet_secuencia.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  end;
end;

procedure TfrmConsFacProvee.QCentroNewRecord(DataSet: TDataSet);
begin
  QCentrofac_numero.Value := Qfacturasfac_NUMERO.Value;
  QCentroemp_codigo.Value := dm.vp_cia;
  QCentrosup_codigo.Value := Qfacturassup_CODIGO.Value;
end;

procedure TfrmConsFacProvee.QDetalleAfterEdit(DataSet: TDataSet);
begin
  if not Modifica then QDetalle.Cancel;
end;

procedure TfrmConsFacProvee.QDetalleAfterInsert(DataSet: TDataSet);
begin
  if not Modifica then QDetalle.Cancel;
end;

procedure TfrmConsFacProvee.QDetalleBeforeDelete(DataSet: TDataSet);
begin
  if not Elimina then Abort;
end;

procedure TfrmConsFacProvee.bteliminaClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR LA CUENTA?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QDetalle.Delete
  end;
  GridCuentas.setfocus;
end;

procedure TfrmConsFacProvee.btbuscactaClick(Sender: TObject);
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
    QDetalle.Edit;
    QDetalleCAT_CUENTA.Value := Search.ValueField;
  end;
end;

procedure TfrmConsFacProvee.CambiarTasa1Click(Sender: TObject);
var
  Texto : String;
  p : TBookmark;
begin
  Texto := InputBox('Tasa','Tasa:',QFacturasfac_tasa.AsString);
  if Trim(Text) <> '' then
  begin
    p := QFacturas.GetBookmark;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('update provfacturas set fac_tasa = :tasa');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and sup_codigo = :sup');
    dm.Query1.SQL.Add('and fac_numero = :num');
    dm.Query1.Parameters.ParamByName('tasa').Value := StrToFloat(Texto);
    dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('sup').Value  := QFacturasSUP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('num').Value  := QFacturasFAC_NUMERO.Value;
    dm.Query1.ExecSQL;

    QFacturas.DisableControls;
    QFacturas.Close;
    QFacturas.Open;
    QFacturas.GotoBookmark(p);
    QFacturas.EnableControls;
  end;
end;

procedure TfrmConsFacProvee.CambiarMoneda1Click(Sender: TObject);
var
  Texto : String;
  p : TBookmark;
begin
  Search.query.clear;
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C?digo');
  Search.Title := 'Moneda';
  Search.ResultField := 'mon_codigo';
  Search.query.add('select mon_nombre, mon_codigo');
  Search.query.add('from Moneda');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  if search.execute then
  begin
    Texto := search.valuefield;
    
    p := QFacturas.GetBookmark;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('update provfacturas set mon_codigo = :mon');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and sup_codigo = :sup');
    dm.Query1.SQL.Add('and fac_numero = :num');
    dm.Query1.Parameters.ParamByName('mon').Value  := StrToInt(Texto);
    dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('sup').Value  := QFacturasSUP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('num').Value  := QFacturasFAC_NUMERO.Value;
    dm.Query1.ExecSQL;

    QFacturas.DisableControls;
    QFacturas.Close;
    QFacturas.Open;
    QFacturas.GotoBookmark(p);
    QFacturas.EnableControls;
  end;
end;

procedure TfrmConsFacProvee.CambiarNCF1Click(Sender: TObject);
var
  Texto : String;
  p : TBookmark;
begin
  Texto := InputBox('NCF','NCF:',QFacturasncf.AsString);
  if Trim(Text) <> '' then
  begin
    p := QFacturas.GetBookmark;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('update provfacturas set ncf = :ncf');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and sup_codigo = :sup');
    dm.Query1.SQL.Add('and fac_numero = :num');
    dm.Query1.Parameters.ParamByName('ncf').Value := Texto;
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('sup').Value := QFacturasSUP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('num').Value := QFacturasFAC_NUMERO.Value;
    dm.Query1.ExecSQL;

    QFacturas.DisableControls;
    QFacturas.Close;
    QFacturas.Open;
    QFacturas.GotoBookmark(p);
    QFacturas.EnableControls;
  end;
end;

procedure TfrmConsFacProvee.btMonedaClick(Sender: TObject);
begin
  Search.query.clear;
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C?digo');
  Search.Title := 'Moneda';
  Search.ResultField := 'mon_codigo';
  Search.query.add('select mon_nombre, mon_codigo');
  Search.query.add('from Moneda');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  if search.execute then
  begin
    edMoneda.text := search.valuefield;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select mon_nombre from Moneda');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and mon_codigo = '+edMoneda.Text);
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Open;
    tMoneda.Text := dm.Query1.FieldByname('mon_nombre').AsString;
    edMoneda.SetFocus;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsFacProvee.edMonedaChange(Sender: TObject);
begin
  if trim(edMoneda.text) = '' then tMoneda.text := '';
end;

procedure TfrmConsFacProvee.edMonedaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edMoneda.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select mon_nombre');
      dm.Query1.sql.add('from Moneda');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and mon_codigo = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edMoneda.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        tMoneda.text := '';
        showmessage('ESTA MONEDA NO EXISTE');
        edMoneda.setfocus;
      end
      else
      begin
        tMoneda.text := dm.Query1.fieldbyname('mon_nombre').asstring;
        btRefreshClick(Self);
      end;
    end;
  end;
end;

procedure TfrmConsFacProvee.CambiarTipodeBienyServicio1Click(
  Sender: TObject);
begin
  Search.query.clear;
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C?digo');
  Search.Title := 'Tipo de Bien';
  Search.ResultField := 'tip_codigo';
  Search.query.add('select tip_nombre, tip_codigo');
  Search.query.add('from tipo_bienes_servicios');
  if search.execute then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('update provfacturas set tip_codigo = :tip');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and sup_codigo = :sup');
    dm.Query1.SQL.Add('and fac_numero = :fac');
    dm.Query1.Parameters.ParamByName('tip').Value := StrToInt(Search.ValueField);
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('sup').Value := QFacturasSUP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('fac').Value := QFacturasFAC_NUMERO.Value;
    dm.Query1.ExecSQL;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsFacProvee.CambiarEmpresa1Click(Sender: TObject);
var
  empticket, empnueva, supfac, supnuevo : integer;
begin
  empticket := QFacturasEMP_CODIGO.Value;
  supfac    := QFacturasSUP_CODIGO.Value;
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C?digo');
  Search.Query.clear;
  Search.Query.add('select emp_nombre, emp_codigo');
  Search.Query.add('from empresas');
  Search.Query.add('where emp_codigo <> '+inttostr(empticket));
  Search.ResultField := 'emp_codigo';
  Search.Title := 'Listado de Empresas';
  if Search.execute then
  begin
    empnueva := StrToInt(Search.ValueField);
    search.AliasFields.clear;
    search.AliasFields.add('Nombre');
    search.AliasFields.add('C?digo');
    Search.Query.clear;
    Search.Query.add('select sup_nombre, sup_codigo');
    Search.Query.add('from proveedores');
    Search.Query.add('where emp_codigo = '+ IntToStr(dm.vp_cia));
    Search.ResultField := 'sup_codigo';
    Search.Title := 'Listado de Proveedores';
    if Search.execute then
    begin
      supnuevo := StrToInt(Search.ValueField);
      //Verificando Duplicidad
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select fac_numero from provfacturas where emp_codigo = :emp');
      dm.Query1.SQL.Add('and sup_codigo = :sup and fac_numero = :fac');
      dm.Query1.Parameters.ParamByName('emp').Value := empnueva;
      dm.Query1.Parameters.ParamByName('sup').Value := supnuevo;
      dm.Query1.Parameters.ParamByName('fac').Value := QFacturasFAC_NUMERO.Value;
      dm.Query1.Open;
      if dm.Query1.RecordCount > 0 then
      begin
        MessageDlg('ESTA FACTURA EXISTE EN LA EMPRESA ' + Search.ValueField, mtError, [mbok], 0);
        DBGrid1.SetFocus;
      end
      else
      begin
        Screen.Cursor := crHourGlass;
        
        //Actualizando la empresa de la factura
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('update provfacturas set emp_codigo = :emp1, sup_codigo = :sup1');
        dm.Query1.SQL.Add('where emp_codigo = :emp2 and sup_codigo = :sup2');
        dm.Query1.SQL.Add('and fac_numero = :fac');
        dm.Query1.Parameters.ParamByName('emp1').Value := empnueva;
        dm.Query1.Parameters.ParamByName('sup1').Value := supnuevo;
        dm.Query1.Parameters.ParamByName('emp2').Value := empticket;
        dm.Query1.Parameters.ParamByName('sup2').Value := supfac;
        dm.Query1.Parameters.ParamByName('fac').Value  := QFacturasFAC_NUMERO.Value;
        dm.Query1.ExecSQL;

        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('update det_provfacturas set emp_codigo = :emp1, sup_codigo = :sup1');
        dm.Query1.SQL.Add('where emp_codigo = :emp2 and sup_codigo = :sup2');
        dm.Query1.SQL.Add('and fac_numero = :fac');
        dm.Query1.Parameters.ParamByName('emp1').Value := empnueva;
        dm.Query1.Parameters.ParamByName('sup1').Value := supnuevo;
        dm.Query1.Parameters.ParamByName('emp2').Value := empticket;
        dm.Query1.Parameters.ParamByName('sup2').Value := supfac;
        dm.Query1.Parameters.ParamByName('fac').Value  := QFacturasFAC_NUMERO.Value;
        dm.Query1.ExecSQL;

        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('update contdet_provfacturas set emp_codigo = :emp1, sup_codigo = :sup1');
        dm.Query1.SQL.Add('where emp_codigo = :emp2 and sup_codigo = :sup2');
        dm.Query1.SQL.Add('and fac_numero = :fac');
        dm.Query1.Parameters.ParamByName('emp1').Value := empnueva;
        dm.Query1.Parameters.ParamByName('sup1').Value := supnuevo;
        dm.Query1.Parameters.ParamByName('emp2').Value := empticket;
        dm.Query1.Parameters.ParamByName('sup2').Value := supfac;
        dm.Query1.Parameters.ParamByName('fac').Value  := QFacturasFAC_NUMERO.Value;
        dm.Query1.ExecSQL;

        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('update ProvFacturasCentros set emp_codigo = :emp1, sup_codigo = :sup1');
        dm.Query1.SQL.Add('where emp_codigo = :emp2 and sup_codigo = :sup2');
        dm.Query1.SQL.Add('and fac_numero = :fac');
        dm.Query1.Parameters.ParamByName('emp1').Value := empnueva;
        dm.Query1.Parameters.ParamByName('sup1').Value := supnuevo;
        dm.Query1.Parameters.ParamByName('emp2').Value := empticket;
        dm.Query1.Parameters.ParamByName('sup2').Value := supfac;
        dm.Query1.Parameters.ParamByName('fac').Value  := QFacturasFAC_NUMERO.Value;
        dm.Query1.ExecSQL;

        //Actualizando balances de las dos empresas
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('execute pr_actualiza_bce :emp');
        dm.Query1.Parameters.ParamByName('emp').Value := empticket;
        dm.Query1.ExecSQL;

        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('execute pr_actualiza_bce :emp');
        dm.Query1.Parameters.ParamByName('emp').Value := empnueva;
        dm.Query1.ExecSQL;

        Screen.Cursor := crDefault;

        MessageDlg('EL PROCESO HA SIDO EJECUTADO', mtError, [mbok], 0);
      end;

      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsFacProvee.edTipoChange(Sender: TObject);
begin
  if trim(edTipo.text) = '' then tTipo.text := '';
end;

procedure TfrmConsFacProvee.edTipoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edTipo.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select tip_nombre');
      dm.Query1.sql.add('from tipo_proveedor');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and tip_codigo = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edTipo.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        tTipo.text := '';
        showmessage('ESTE TIPO NO EXISTE');
        edTipo.setfocus;
      end
      else
      begin
        tTipo.text := dm.Query1.fieldbyname('tip_nombre').asstring;
        btRefreshClick(Self);
      end;
    end;
  end;
end;

procedure TfrmConsFacProvee.Pantalladeproductos1Click(Sender: TObject);
var
  vIns, vMod, vDel : boolean;
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
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
    frmProductos.QProductos.Parameters.ParamByName('prod').Value := QProductosPRO_CODIGO.Value;
    frmProductos.QProductos.Open;
  end;
end;

procedure TfrmConsFacProvee.Pantalladeajuste1Click(Sender: TObject);
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
    frmAjusteInventario.QProductos.Locate('pro_codigo',QProductosPRO_CODIGO.Value,[]);
  end;
end;

procedure TfrmConsFacProvee.QCentrosub_referenciaChange(Sender: TField);
begin
  if (not QCentrocen_referencia.IsNull) and (not QCentrosub_referencia.IsNull) then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cen_nombre, cen_codigo from CentroCostos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cen_referencia = :ref');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('ref').Value := QCentrocen_referencia.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      QCentrocen_nombre.Value := dm.Query1.FieldByName('cen_nombre').AsString;
      QCentrocen_codigo.Value := dm.Query1.FieldByName('cen_codigo').AsInteger;
    end;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select sub_nombre, sub_secuencia  from CentroCostos_Hijos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cen_codigo in (select cen_codigo from CentroCostos');
    dm.Query1.SQL.Add('where emp_codigo = '+dm.QEmpresasEMP_CODIGO.AsString);
    dm.Query1.SQL.Add('and cen_referencia = '+QuotedStr(QCentrocen_referencia.AsString)+')');
    dm.Query1.SQL.Add('and sub_referencia = :ref');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('ref').Value := QCentrosub_referencia.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      QCentrocen_nombre.Value := QCentrocen_nombre.Value+' - '+dm.Query1.FieldByName('sub_nombre').AsString;
      QCentrosub_secuencia.Value := dm.Query1.FieldByName('sub_secuencia').AsInteger;
    end
    else
    ShowMessage('Esta sub centro no existe favor verificar....');
  end;
end;

procedure TfrmConsFacProvee.QCentrocen_referenciaChange(Sender: TField);
begin
if not QCentrocen_referencia.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cen_nombre, cen_codigo from CentroCostos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cen_referencia = :ref');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('ref').Value := QCentrocen_referencia.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      QCentrocen_nombre.Value := dm.Query1.FieldByName('cen_nombre').AsString;
      QCentrocen_codigo.Value := dm.Query1.FieldByName('cen_codigo').AsInteger;
    end;
  end;
end;

procedure TfrmConsFacProvee.GridCentroKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if GridCentro.SelectedIndex <> 3 then
      GridCentro.SelectedIndex := GridCentro.SelectedIndex + 1
    else
    begin
      GridCentro.SelectedIndex := 0;
      QCentro.Append;
    end;
  end;

  

end;

procedure TfrmConsFacProvee.btnSubCentroClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select sub_nombre, sub_referencia');
  Search.Query.Add('from CentroCostos_Hijos');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and cen_codigo = '+IntToStr(QCentrocen_codigo.Value));
  Search.AliasFields.Add('SubCentro');
  Search.AliasFields.Add('ID');
  Search.ResultField := 'sub_referencia';
  Search.Title := 'Sub-Centro de Costo';
  if Search.execute then
  begin
    QCentro.Edit;
    QCentrosub_referencia.Value := Search.ValueField;
  end;

end;

procedure TfrmConsFacProvee.btnTipoPagoClick(Sender: TObject);
begin
Search.query.clear;
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C?digo');
  Search.Title := 'Formas Pagos Proveedor';
  Search.ResultField := 'fpap_codigo';
  Search.query.add('select fpap_nombre, fpap_codigo');
  Search.query.add('from FormasPagoProv');
  if search.execute then
  begin
    edtTipoPago.text := search.valuefield;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select fpap_nombre from FormasPagoProv');
    dm.Query1.SQL.Add('where fpap_codigo = '+search.valuefield);
    dm.Query1.Open;
    edtTipoPagoN.Text := dm.Query1.FieldByname('fpap_nombre').AsString;
    edtTipoPago.SetFocus;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsFacProvee.bttipoClick(Sender: TObject);
begin
Search.query.clear;
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C?digo');
  Search.Title := 'Tipo de Proveedor';
  Search.ResultField := 'tip_codigo';
  Search.query.add('select tip_nombre, tip_codigo');
  Search.query.add('from TIPO_PROVEEDOR');
  if search.execute then
  begin
    edTipo.text := search.valuefield;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tip_nombre from TIPO_PROVEEDOR');
    dm.Query1.SQL.Add('where tip_codigo = '+search.valuefield);
    dm.Query1.Open;
    tTipo.Text := dm.Query1.FieldByname('tip_nombre').AsString;
    edTipo.SetFocus;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsFacProvee.edtSucLocChange(Sender: TObject);
begin
if Trim(edtSucLoc.Text) = '' then TSucLoc.Text := '';
btRefreshClick(Sender);
end;

procedure TfrmConsFacProvee.edtSucLocKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edtSucLoc.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select suc_nombre, cont_numeroSucursal from sucursales');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and cont_numeroSucursal = '+QuotedStr(edtSucLoc.Text));
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Open;
      TSucLoc.Text := dm.Query1.FieldByName('suc_nombre').AsString;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsFacProvee.btLocalidadClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select suc_nombre, cont_numeroSucursal from sucursales');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C?digo');
  Search.Title := 'Localidades / Sucursales';
  Search.ResultField := 'cont_numeroSucursal';
  if Search.execute then
  begin
    edtSucLoc.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select suc_nombre, cont_numeroSucursal from sucursales');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cont_numeroSucursal = '+QuotedStr(edtSucLoc.Text));
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Open;
    TSucLoc.Text := dm.Query1.FieldByName('suc_nombre').AsString;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsFacProvee.CambiarLocalidad1Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select suc_nombre, cont_numeroSucursal from sucursales');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C?digo');
  Search.Title := 'Localidades / Sucursales';
  Search.ResultField := 'cont_numeroSucursal';
  if Search.execute then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('update provfacturas set cont_numeroSucursal = :sucloc');
    dm.Query1.SQL.Add('where emp_codigo = :emp and fac_numero = :fac AND sup_codigo = :sup');
    dm.Query1.Parameters.ParamByName('sucloc').DataType := ftString;
    dm.Query1.Parameters.ParamByName('emp').DataType := ftInteger;
    dm.Query1.Parameters.ParamByName('fac').DataType := ftString;
    dm.Query1.Parameters.ParamByName('sup').DataType := ftInteger;
    dm.Query1.Parameters.ParamByName('sucloc').Value := edtSucLoc.Text;
    dm.Query1.Parameters.ParamByName('emp').Value    := QFacturasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('fac').Value    := QFacturasFAC_NUMERO.Value;
    dm.Query1.Parameters.ParamByName('sup').Value    := QFacturasSUP_CODIGO.Value;
    DM.Query1.ExecSQL;
    ShowMessage('CAMBIADA A LA LOCALIDAD '+Search.ValueField);

end;


end;

procedure TfrmConsFacProvee.FormShow(Sender: TObject);
begin
if dm.QParametrospar_banca_apuestas.Value = True then begin
lbLocSuc.Visible := True;
edtSucLoc.Visible := True;
btLocalidad.Visible := True;
TSucLoc.Visible := True;
end;
if not dm.QParametrospar_banca_apuestas.Value = True then begin
LbLocSuc.Visible := False;
edtSucLoc.Visible := False;
btLocalidad.Visible := False;
TSucLoc.Visible := False;
end;
end;

procedure TfrmConsFacProvee.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
 function SafeBool(ADataSet: TDataSet; const AField: string): Boolean;
  var F: TField;
  begin
    Result := False;
    if (ADataSet = nil) then Exit;
    F := ADataSet.FindField(AField);
    if (F <> nil) and (not F.IsNull) then
      Result := F.AsBoolean;
  end;

var
  DS: TDataSet;
  aceptado, enviado, errorDGII: Boolean;
  tipoproveedor: string;
  COLOR_ERROR_SUAVE, COLOR_AZUL_CLARO: TColor;
begin
  COLOR_ERROR_SUAVE := RGB(255, 204, 204); // Rojo claro
  COLOR_AZUL_CLARO  := RGB(204, 229, 255); // Azul claro

  if (not dm.QParametrosUsa_FacturacionElectronica.AsBoolean) or (dm.QParametrosintegracion_luganis.AsBoolean)  then
  begin
    DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    Exit;
  end;

  if (DBGrid1.DataSource = nil) or (DBGrid1.DataSource.DataSet = nil) then
  begin
    DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    Exit;
  end;

  DS := DBGrid1.DataSource.DataSet;
  if not DS.Active then
  begin
    DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    Exit;
  end;

  aceptado  := SafeBool(DS, 'AceptadoDGII');
  enviado   := SafeBool(DS, 'Enviado_DGII');
  errorDGII := SafeBool(DS, 'Error_DGII');
  tipoproveedor := DS.FindField('sup_tipo').AsString;
 
  if gdSelected in State then
  begin
    DBGrid1.Canvas.Brush.Color := clHighlight;
    DBGrid1.Canvas.Font.Color  := clHighlightText;
  end
  else
  begin
    if ((aceptado) or (tipoproveedor='F')) then
    begin
      DBGrid1.Canvas.Brush.Color := clWhite;
      DBGrid1.Canvas.Font.Color  := clBlack;
    end
    else if errorDGII then
    begin
      DBGrid1.Canvas.Brush.Color := COLOR_ERROR_SUAVE;
      DBGrid1.Canvas.Font.Color  := clBlack;
    end
    else if enviado then
    begin
      DBGrid1.Canvas.Brush.Color := COLOR_AZUL_CLARO;
      DBGrid1.Canvas.Font.Color  := clBlack;
    end
    else
    begin
      DBGrid1.Canvas.Brush.Color := COLOR_AZUL_CLARO;
      DBGrid1.Canvas.Font.Color  := clBlack;
    end;
  end;

  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;




procedure TfrmConsFacProvee.btnEnviarDGIIClick(Sender: TObject);
var
Servicio: FacturaElectronicaService;
resultado: WideString;
ok: Boolean;
   msg: string;
   prox: Int64;
   ncfNuevo : string;
   tipoDGII: Integer;
begin
//QFacturassup_tipo

if not ProveedorEnviaCompraDGII(QFacturassup_tipo.AsString) then
begin
      ShowMessage('Solo se deben enviar facturas a proveedores Informales o Extranjeros.');
       Exit; // Salimos del procedimiento para no reenviar
end;

tipoDGII := TipoDGIICompraProveedor(QFacturassup_tipo.AsString);

 if (DM.QParametrosPAR_FE_DetenerFacturacion.Value and dm.QParametrosUsa_FacturacionElectronica.Value ) then
        begin
          ok := ValidarENCFDisponible(
                        dm.vp_cia,
                        tipoDGII,
                        msg, prox);
          if (not ok) then
          begin
            ShowMessage('No hay comprobantes fiscales disponibles para esta compra.');
            Exit;
          end;
        end;

   // Validar que el proveedor tenga RNC
  if Trim(QFacturassup_rnc.AsString) = '' then
  begin
    ShowMessage('El proveedor no tiene RNC registrado, no puede enviarse a la DGII.');
    Exit;
  end;

  // Validar si ya fue enviada
  if not QFacturasAceptadoDGII.IsNull then
  begin

      if QFacturasAceptadoDGII.Value then
      begin
        ShowMessage('Esta factura ya fue enviada y ACEPTADA por la DGII.');
        Exit;
      end
      else if QFacturasError_DGII.Value then
      begin
        // Verificar permiso para reenviar rechazadas
        if VarIsNull(dm.usu_reenvia_dgii) or not dm.usu_reenvia_dgii then
        begin
          ShowMessage('Esta factura ya fue enviada y RECHAZADA por la DGII.');
          Exit;
        end
        else
        begin
          // >>> CONFIRMACI?N <<<
          if MessageDlg(
               'Esta factura fue RECHAZADA por la DGII.' + sLineBreak +
               '?Est? seguro que desea reenviarla?' + sLineBreak +
               'Se generar? una NUEVA SECUENCIA.',
               mtConfirmation, [mbYes, mbNo], 0
             ) = mrNo then
          begin
            Exit; // si cancela, no hace nada
          end;
          // 1) Obtener NUEVA SECUENCIA desde SQL
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('SELECT dbo.fn_obtenerSecuenciaDGI(:emp, :tipo) AS NuevaSecuencia;');
          dm.Query1.Parameters.ParamByName('emp').Value  := QFacturasEMP_CODIGO.Value;
          dm.Query1.Parameters.ParamByName('tipo').Value := tipoDGII;
          dm.Query1.Open;
          if not dm.Query1.Fields[0].IsNull then
            ncfNuevo := dm.Query1.FieldByName('NuevaSecuencia').AsString
          else
          begin
            ShowMessage('No se pudo obtener una nueva secuencia DGII.');
            Exit;
          end;
          dm.Query1.Close;
          // 2) Guardar ese NCF nuevo en la factura
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('UPDATE ProvFacturas SET eNCF = :ncfNuevo, Enviado_DGII = 1, AceptadoDGII = 0, Error_DGII = 0 ');
          dm.Query1.SQL.Add('WHERE emp_codigo = :emp AND fac_numero = :num AND sup_codigo = :sup ');
          dm.Query1.Parameters.ParamByName('ncfNuevo').Value := ncfNuevo;
          dm.Query1.Parameters.ParamByName('emp').Value      := QFacturasEMP_CODIGO.Value;
          dm.Query1.Parameters.ParamByName('num').Value      := QFacturasFAC_NUMERO.Value;
          dm.Query1.Parameters.ParamByName('sup').Value      := QFacturassup_codigo.Value;
          dm.Query1.ExecSQL;
          // Actualizar secuencia
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('UPDATE SecuenciaDGII SET Ultima_secuencia_DGII = Ultima_secuencia_DGII + 1 ');
          dm.Query1.SQL.Add('WHERE emp_codigo = :emp AND Tipo = :tipo');
          dm.Query1.Parameters.ParamByName('emp').Value      := QFacturasEMP_CODIGO.Value;
          dm.Query1.Parameters.ParamByName('tipo').Value     := tipoDGII;
          dm.Query1.ExecSQL;
        end;
      end;
  
  end;

    try
    Servicio := CoFacturaElectronicaService.Create;
    try
    Servicio := CoFacturaElectronicaService.Create;
                      resultado := Servicio.EnviarCompras(
                      IntToStr(QFacturasEMP_CODIGO.Value),
                      IntToStr(QFacturasSUC_CODIGO.Value),
                      IntToStr(QFacturasSUP_CODIGO.Value),
                      (QFacturasFAC_NUMERO.Value),
                      QFacturasemp_rnc.Value,
                      QFacturaseNCF.Value,
                      QFacturassup_rnc.Value,
                      '',
                      '',
                      IntToStr(QFacturascod_dgii.Value)
                    );
                          //   ShowMessage(resultado);
                     // Solo muestra si contiene "ACEPTADO" (insensible a may?sculas)
    if Pos(UpperCase('ACEPTADO'), UpperCase(resultado)) > 0 then
    begin
      ShowMessage('Factura enviada correctamente.');
    end
    else
    begin
      ShowMessage('Factura enviada, pero el estado no es ACEPTADO.' );
    end;
    finally
      Servicio := nil;
    end;
  except
    on E:EOleSysError do
      ShowMessage(Format('COM 0x%x: %s', [E.ErrorCode, E.Message]));
    on E:Exception do
      ShowMessage('Error: ' + E.Message);
  end;

  btRefreshClick(Self);

              
end;



procedure TfrmConsFacProvee.cbStatusDGIIClick(Sender: TObject);
begin
btRefreshClick(self);
end;

procedure TfrmConsFacProvee.InformacionDGII1Click(Sender: TObject);
begin
Application.CreateForm(TFrmPopupDGII, FrmPopupDGII);
try
  FrmPopupDGII.QDGII.Close;
  FrmPopupDGII.QDGII.Parameters.ParamByName('tipo').Value := 'PROV_FACTURAS';
  FrmPopupDGII.QDGII.Parameters.ParamByName('emp_codigo').Value := QFacturasEMP_CODIGO.Value;
  FrmPopupDGII.QDGII.Parameters.ParamByName('fac_numero').Value := QFacturasFAC_NUMERO.Value;
  FrmPopupDGII.QDGII.Parameters.ParamByName('caja').Value := 0;
  FrmPopupDGII.QDGII.Parameters.ParamByName('usu_codigo').Value := 0;
  FrmPopupDGII.QDGII.Parameters.ParamByName('sup_codigo').Value := QFacturasSUP_CODIGO.Value;
  FrmPopupDGII.QDGII.Open;

  FrmPopupDGII.ShowModal;
finally
  FrmPopupDGII.Free;
  FrmPopupDGII := nil;
end;
end;

end.

