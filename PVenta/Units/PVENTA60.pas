unit PVENTA60;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, ExtCtrls, Grids, DBGrids, StdCtrls,
  ComCtrls, Buttons, DBCtrls, Menus, ADODB,
  QuerySearchDlgADO, QRPDFFilt, QuickRpt, QRCtrls, frxClass, frxDBSet,
  frxExportPDF;

type
  TfrmConsCxC = class(TForm)
    QCliente: TADOQuery;
    dsCliente: TDataSource;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    btRefresh: TBitBtn;
    BitBtn2: TBitBtn;
    btClose: TBitBtn;
    BitBtn1: TBitBtn;
    QClienteEMP_CODIGO: TIntegerField;
    QClienteCLI_CODIGO: TIntegerField;
    QClienteCLI_NOMBRE: TIBStringField;
    QClienteBALANCE: TFloatField;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    QMovimientos: TADOQuery;
    QMovimientosFAC_FORMA: TIBStringField;
    QMovimientosMOV_ABONO: TFloatField;
    QMovimientosMOV_FECHA: TDateTimeField;
    QMovimientosMOV_MONTO: TFloatField;
    QMovimientosMOV_NUMERO: TIntegerField;
    QMovimientosMOV_TIPO: TIBStringField;
    QMovimientosTFA_CODIGO: TIntegerField;
    dsMov: TDataSource;
    QMovimientosSaldo: TFloatField;
    QClienteCLI_REFERENCIA: TIBStringField;
    Panel3: TPanel;
    QAntig: TADOQuery;
    QAntigCLI_CODIGO: TIntegerField;
    QAntigCLI_REFERENCIA: TIBStringField;
    QAntigCLI_NOMBRE: TIBStringField;
    QAntigCLI_TELEFONO: TIBStringField;
    QAntigBALANCE: TFloatField;
    QAntigDIA1: TFloatField;
    QAntigDIA2: TFloatField;
    QAntigDIA3: TFloatField;
    QAntigDIA4: TFloatField;
    dsAntig: TDataSource;
    QMovimientosMOV_FECHAVENCE: TDateTimeField;
    QMovimientosMOV_SECUENCIA: TIntegerField;
    QMovimientosCuota: TIntegerField;
    QMovimientosMOV_CUOTA: TIBStringField;
    QClienteCLI_LIMITE: TFloatField;
    QClienteCLI_TELEFONO: TIBStringField;
    BitBtn3: TBitBtn;
    Search: TQrySearchDlgADO;
    QClienteVENCIDO: TFloatField;
    ckVence: TCheckBox;
    pFactura: TPopupMenu;
    Imprimir1: TMenuItem;
    Query1: TADOQuery;
    LabelDia1: TLabel;
    LabelDia2: TLabel;
    LabelDia3: TLabel;
    LabelDia4: TLabel;
    lbCondi1: TStaticText;
    lbCondi2: TStaticText;
    lbCondi3: TStaticText;
    lbCondi4: TStaticText;
    Label1: TLabel;
    lbVencido: TStaticText;
    Label2: TLabel;
    lbTotal: TStaticText;
    QMovimientosDIASFAC: TIntegerField;
    QMovimientosDIASVENC: TIntegerField;
    QMovimientosSUC_CODIGO: TIntegerField;
    Panel4: TPanel;
    Label12: TLabel;
    btTipo: TSpeedButton;
    tTipo: TEdit;
    edTipo: TEdit;
    cbtipo: TRadioGroup;
    QMovimientossuc_nombre: TStringField;
    Splitter1: TSplitter;
    btConsolidado: TBitBtn;
    ChkB_cksucursal: TCheckBox;
    dblkcbb1: TDBLookupComboBox;
    DS_Suc: TDataSource;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    QClienteMORA: TCurrencyField;
    mmo1: TMemo;
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
    DB_qFacturaOrdTaller: TfrxDBDataset;
    Rpt_FacOrdTaller: TfrxReport;
    btnEmail: TBitBtn;
    Correo1: TMenuItem;
    frxPDFExport1: TfrxPDFExport;
    pnCorreo: TPanel;
    qAplicaNC: TADOQuery;
    AplicarNC1: TMenuItem;
    QMovimientosTicket: TIntegerField;
    QClienteNOTASPORAPLICAR: TStringField;
    qRepBalanceFact: TADOQuery;
    pm1: TPopupMenu;
    RepararFacturas1: TMenuItem;
    qVerificarNCMontoUsados: TADOQuery;
    QQClientesPrueba: TADOQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IBStringField1: TIBStringField;
    FloatField1: TFloatField;
    IBStringField2: TIBStringField;
    QClienteid: TAutoIncField;
    BCDField1: TBCDField;
    StringField1: TStringField;
    BCDField2: TBCDField;
    QClienteSUC_CODIGO: TIntegerField;
    dsCliente1: TDataSource;
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QMovimientosCalcFields(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure QClienteAfterScroll(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure ckVenceClick(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure dsMovDataChange(Sender: TObject; Field: TField);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dsAntigDataChange(Sender: TObject; Field: TField);
    procedure btTipoClick(Sender: TObject);
    procedure edTipoChange(Sender: TObject);
    procedure edTipoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbtipoClick(Sender: TObject);
    procedure btConsolidadoClick(Sender: TObject);
    procedure dblkcbb1Click(Sender: TObject);
    procedure ChkB_cksucursalClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Correo1Click(Sender: TObject);
    procedure btnEmailClick(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure AplicarNC1Click(Sender: TObject);
    procedure RepararFacturas1Click(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
    FormatoImp, vl_cliente, vl_suc : Integer;
    PuertoImp, RecTipo, ActBalance : String;
    vl_dest, vl_clienteN, vl_asunto, vl_factnum, vl_adjunto1, vl_adjunto2, vl_cuerpo :String;
    procedure Imp40ColumnasFac;
    procedure EnvioMail(Reporte: TQuickRep; Tipo: String);
    procedure EnvioMail2(Tipo: String);
    procedure GenerarEstadoCxC;
    procedure GenerarFactura;
  end;

var
  frmConsCxC: TfrmConsCxC;

implementation

uses RVENTA11, RVENTA41, SIGMA01, SIGMA00, RVENTA02, PVENTA83, RVENTA71,
  RVENTA105, PVENTA91, RVENTA124, StdConvs, RVENTA126, RVENTA128,
  RVENTA122, RVENTA115, RVENTA64, RVENTA79, DateUtils, RVENTA137;

{$R *.dfm}

procedure TfrmConsCxC.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmConsCxC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConsCxC.QMovimientosCalcFields(DataSet: TDataSet);
begin
  QMovimientosSaldo.value := QMovimientosMOV_MONTO.value - QMovimientosMOV_ABONO.value;
  if QMovimientosMOV_CUOTA.Value = 'True' then
    QMovimientosCuota.Value := QMovimientosMOV_SECUENCIA.Value;
end;

procedure TfrmConsCxC.BitBtn2Click(Sender: TObject);
var cantidad : integer;
begin
  if MessageDlg('Imprimir Detallado?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    if (Trim(edTipo.Text)) = '' then edTipo.Text := '0';

    Application.CreateForm(tRConsCxC, RConsCxC);
    RConsCxC.QCliente.Close;
    RConsCxC.QCliente.Parameters.ParamByName('emp').Value := dm.vp_cia;    
    RConsCxC.QCliente.Parameters.parambyname('tip').Value := StrToInt(edTipo.Text);
    RConsCxC.QCliente.Parameters.ParamByName('fec').DataType    := ftDate;
    RConsCxC.QCliente.Parameters.ParamByName('fec').Value    := Date;         

    if cbtipo.ItemIndex = 0 then
      RConsCxC.QCliente.Parameters.parambyname('st').Value  := 'T'
    else if cbtipo.ItemIndex = 1 then
      RConsCxC.QCliente.Parameters.parambyname('st').Value  := 'A'
    else if cbtipo.ItemIndex = 2 then
      RConsCxC.QCliente.Parameters.parambyname('st').Value  := 'I';
    IF ChkB_cksucursal.Checked THEN
    begin
      RConsCxC.QCliente.Parameters.parambyname('suc').Value  := dblkcbb1.KeyValue;
      RConsCxC.QCliente.Parameters.parambyname('suci').Value  := dblkcbb1.KeyValue;
    end;
    IF not ChkB_cksucursal.Checked THEN
    begin
      RConsCxC.QCliente.Parameters.parambyname('suc').Value  := 0;
      RConsCxC.QCliente.Parameters.parambyname('suci').Value :=0;
    end;

    if ckVence.Checked then
    begin
    RConsCxC.QCliente.Filter := 'VENCIDO > 0';
    RConsCxC.QCliente.Filtered := True;
    end;
    if NOT ckVence.Checked then
    begin
    RConsCxC.QCliente.Filter := '';
    RConsCxC.QCliente.Filtered := False;
    end;

    RConsCxC.QCliente.Open;

    RConsCxC.vl_sucA := ChkB_cksucursal.Checked;
    if ChkB_cksucursal.Checked = True then
    RConsCxC.vl_suc := dblkcbb1.KeyValue else
    RConsCxC.vl_suc := 0;

    RConsCxC.lbFecha.Caption := DateToStr(Date);
    RConsCxC.PrinterSetup;
    RConsCxC.Preview;
    RConsCxC.Destroy;
  end
  else
  begin
    Application.CreateForm(tRCxCGeneral, RCxCGeneral);
    RCxCGeneral.QClientes.SQL.Clear;
    RCxCGeneral.QClientes.SQL.Add('select C.CLI_BALANCE, C.CLI_CEDULA, C.CLI_CODIGO, C.CLI_CUENTA,');
    RCxCGeneral.QClientes.SQL.Add('C.CLI_DESCUENTO, C.CLI_DIRECCION, C.CLI_EMAIL, C.CLI_FAX, C.CLI_LIMITE,');
    RCxCGeneral.QClientes.SQL.Add('C.CLI_LOCALIDAD, C.CLI_NOMBRE, C.CLI_PRECIO, C.CLI_REFERENCIA,');
    RCxCGeneral.QClientes.SQL.Add('C.CLI_RNC, C.CLI_STATUS, C.CLI_TELEFONO, C.CLI_WEB, C.CPA_CODIGO,');
    RCxCGeneral.QClientes.SQL.Add('C.EMP_CODIGO, C.FPA_CODIGO, C.TCL_CODIGO, CP.CPA_NOMBRE, T.TCL_NOMBRE');
    RCxCGeneral.QClientes.SQL.Add('from CLIENTES C LEFT OUTER JOIN CONDICIONES CP ON (C.EMP_CODIGO = CP.EMP_CODIGO');
    RCxCGeneral.QClientes.SQL.Add('AND C.CPA_CODIGO = CP.CPA_CODIGO) LEFT OUTER JOIN TIPOCLIENTES T ON (C.EMP_CODIGO = T.EMP_CODIGO');
    RCxCGeneral.QClientes.SQL.Add('AND C.TCL_CODIGO = T.TCL_CODIGO) where c.emp_codigo = :emp_codigo');
    RCxCGeneral.QClientes.SQL.Add('and c.cli_balance > 0');
    if (trim(edTipo.Text) <> '') and (trim(edTipo.Text) <> '0') then
       RCxCGeneral.QClientes.SQL.Add('and c.tcl_codigo = '+trim(edTipo.Text));

    case cbtipo.ItemIndex of
    1: RCxCGeneral.QClientes.SQL.Add('and c.cli_status = '+QuotedStr('ACT'));
    2: RCxCGeneral.QClientes.SQL.Add('and c.cli_status = '+QuotedStr('INA'));
    end;

    RCxCGeneral.QClientes.SQL.Add('order by c.cli_nombre');


    RCxCGeneral.QClientes.Open;
    RCxCGeneral.lbFecha.Caption := 'Al '+DateToStr(date);
    RCxCGeneral.PrinterSetup;
    RCxCGeneral.Preview;
    RCxCGeneral.Destroy;
  end;
end;

procedure TfrmConsCxC.BitBtn1Click(Sender: TObject);
begin
  //Reparar Balance del cliente
  qRepBalanceFact.Close;
    qRepBalanceFact.Parameters.ParamByName('emp').Value := dm.vp_cia;
    qRepBalanceFact.Parameters.ParamByName('cli').Value := QClienteCLI_CODIGO.Value;
    qRepBalanceFact.ExecSQL;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('execute pr_actualiza_bce :emp');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.ExecSQL;  

    
  Application.CreateForm(tREstadoCtaCli, REstadoCtaCli);
if not ChkB_cksucursal.Checked then
  REstadoCtaCli.suc := 0 else
  REstadoCtaCli.suc := dblkcbb1.KeyValue;
  REstadoCtaCli.lbVendedor.Caption := 'Vendedor : N/A';

  if Trim(tTipo.Text)<>'' then
  REstadoCtaCli.lbTipo.Caption := 'Tipo : '+tTipo.Text ELSE
  REstadoCtaCli.lbTipo.Caption := '';
  if not ChkB_cksucursal.Checked then
  REstadoCtaCli.QRLSucursal.Caption := DM.QEmpresasEMP_NOMBRE.Text else
  REstadoCtaCli.QRLSucursal.Caption := dblkcbb1.Text;
  REstadoCtaCli.QClientes.Close;
  REstadoCtaCli.QClientes.SQL.Clear;
  REstadoCtaCli.QClientes.SQL.Add('DECLARE @fecha datetime, @EMPRESA int; set @fecha = :fecha; set @EMPRESA = '+IntToStr(DM.vp_cia));
  REstadoCtaCli.QClientes.SQL.Add('select');
  REstadoCtaCli.QClientes.SQL.Add('cli_codigo, cli_referencia, cli_nombre,');
  REstadoCtaCli.QClientes.SQL.Add('cli_telefono, cli_balance, emp_codigo, cli_cedula, cli_rnc, @fecha fecha, cli_email');
  REstadoCtaCli.QClientes.SQL.Add('from clientes');
  REstadoCtaCli.QClientes.SQL.Add('where emp_codigo = :emp_codigo');
  REstadoCtaCli.QClientes.SQL.Add('and cli_codigo = '+QClienteCLI_CODIGO.Text);
  REstadoCtaCli.QClientes.SQL.Add('order by cli_codigo');
  REstadoCtaCli.QClientes.Parameters.ParamByName('emp_codigo').Value  := dm.vp_cia;
  REstadoCtaCli.QClientes.Parameters.ParamByName('fecha').DataType    := ftDate;
  REstadoCtaCli.QClientes.Parameters.ParamByName('fecha').Value       := Date;
  REstadoCtaCli.QClientes.Open;

  REstadoCtaCli.QDocs.Close;
  REstadoCtaCli.QDocs.SQL.Clear;
  REstadoCtaCli.QDocs.SQL.Add('DECLARE @fecha datetime;');
  REstadoCtaCli.QDocs.SQL.Add('set @fecha = :fecha; ');
  REstadoCtaCli.QDocs.SQL.Add('SELECT ROUND(CASE WHEN MOV_TASA = 1 THEN 0 ELSE MOV_MONTO/MOV_TASA END,2) MOV_MONTOUS,');
  REstadoCtaCli.QDocs.SQL.Add('ROUND(CASE WHEN MOV_TASA = 1 THEN 0 ELSE ABONO/MOV_TASA END,2) ABONOUS,');
  REstadoCtaCli.QDocs.SQL.Add('* FROM(');
  REstadoCtaCli.QDocs.SQL.Add('select M.FAC_FORMA, ');
  REstadoCtaCli.QDocs.SQL.Add('(M.MOV_ABONO+ISNULL(FP.FOR_MONTO,0)) as mov_abono, (M.MOV_MONTO), CASE WHEN M.MOV_TASA = 1 THEN (M.MOV_MONTO) ELSE 0 END as monto,');
  REstadoCtaCli.QDocs.SQL.Add('M.MOV_FECHA, M.MOV_NUMERO,');
  REstadoCtaCli.QDocs.SQL.Add('cast(CASE WHEN ISNULL(M.MOV_TASA,0)> 1 THEN ISNULL(M.MOV_TASA,0) ELSE 1 END  as numeric(18,2)) MOV_TASA,');
  REstadoCtaCli.QDocs.SQL.Add('M.MOV_TIPO, M.TFA_CODIGO, M.EMP_CODIGO, M.MOV_SECUENCIA,M.MOV_STATUS,M.MOV_CUOTA,');
  REstadoCtaCli.QDocs.SQL.Add('(m.mov_interes) mov_interes, m.mov_fechavence, m.suc_codigo, @fecha fecha,');
  REstadoCtaCli.QDocs.SQL.Add('datediff(day,MOV_FECHA, @FECHA) DIASVENC, M.CLI_CODIGO,');
  REstadoCtaCli.QDocs.SQL.Add('(ISNULL((SELECT SUM(MOV_MONTO) FROM PR_CONS_PAGOS_NC_FACTURA(M.EMP_CODIGO,M.suc_codigo,M.tfa_codigo, M.fac_forma, M.MOV_NUMERO, @FECHA)');
  REstadoCtaCli.QDocs.SQL.Add('where MOV_FECHA <= @fecha),0)) ABONO,');
  REstadoCtaCli.QDocs.SQL.Add('M.MON_CODIGO, ISNULL(FP.for_monto,0) ABONO2');
  REstadoCtaCli.QDocs.SQL.Add('FROM  Movimientos M ');
  REstadoCtaCli.QDocs.SQL.Add('LEFT JOIN FacFormaPago FP ON M.emp_codigo = FP.emp_codigo AND M.suc_codigo = FP.suc_codigo AND M.tfa_codigo = FP.tfa_codigo AND M.FAC_FORMA = FP.FAC_FORMA AND M.MOV_NUMERO = FP.FAC_NUMERO ');
  REstadoCtaCli.QDocs.SQL.Add('WHERE M.TFA_CODIGO <> 1 AND CLI_CODIGO = :CLI_CODIGO AND M.EMP_CODIGO = :EMP_CODIGO AND M.MOV_STATUS = ''PEN'')  AS TEMP');
  REstadoCtaCli.QDocs.SQL.Add('WHERE MOV_FECHA <= @FECHA');
  REstadoCtaCli.QDocs.SQL.Add('AND (((MOV_MONTO-(ABONO+ABONO2))>1) OR ((ROUND(CASE WHEN MOV_TASA = 1 THEN 0 ELSE MOV_MONTO/MOV_TASA END,2) -ROUND(CASE WHEN MOV_TASA = 1 THEN 0 ELSE (ABONO+ABONO2)/MOV_TASA END,2))>1))');

  IF ChkB_cksucursal.Checked THEN
  REstadoCtaCli.QDocs.SQL.Add('and SUC_CODIGO = :SUC');
  REstadoCtaCli.QDocs.SQL.Add('order by mov_fecha');
  REstadoCtaCli.QDocs.Parameters.ParamByName('fecha').DataType := ftDate;
  REstadoCtaCli.QDocs.Parameters.ParamByName('fecha').Value := Now;
  REstadoCtaCli.QDocs.Parameters.ParamByName('emp_codigo').DataType := ftInteger;
  REstadoCtaCli.QDocs.Parameters.ParamByName('cli_codigo').DataType := ftInteger;
  IF ChkB_cksucursal.Checked = true THEN
  REstadoCtaCli.QDocs.Parameters.ParamByName('SUC').Value         := REstadoCtaCli.suc;
  //REstadoCtaCli.QDocs.SQL.SaveToFile('.\DOC.TXT');
  REstadoCtaCli.QDocs.Open;


  REstadoCtaCli.lbTipo.Caption := tTipo.Text;
  REstadoCtaCli.lbFecha.Caption := 'Al '+DateToStr(Date);

IF ChkB_cksucursal.Checked = True then
    REstadoCtaCli.suc := REstadoCtaCli.suc ELSE
    REstadoCtaCli.suc := REstadoCtaCli.suc;
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
  if ChkB_cksucursal.Checked then
  REstadoCtaCli.QAntig.Parameters[3].Value := dblkcbb1.KeyValue else
  REstadoCtaCli.QAntig.Parameters[3].Value := REstadoCtaCli.suc;
  REstadoCtaCli.QAntig.Parameters.ParamByName('fecha').DataType := ftDate;
  REstadoCtaCli.QAntig.Parameters.ParamByName('fecha').Value    := Date;
  REstadoCtaCli.QAntig.Open;
  REstadoCtaCli.qMora.Close;
  REstadoCtaCli.qMora.Parameters.ParamByName('fecha').DataType := ftDate;
  REstadoCtaCli.qMora.Parameters.ParamByName('fecha').Value    := Date;

  REstadoCtaCli.qMora.Open;
  REstadoCtaCli.qMoraUS.Close;
  REstadoCtaCli.qMoraUS.Parameters.ParamByName('fecha').DataType := ftDate;
  REstadoCtaCli.qMoraUS.Parameters.ParamByName('fecha').Value    := Now;
  REstadoCtaCli.qMoraUS.Open;

  REstadoCtaCli.QRBand3.ForceNewPage := False;
  REstadoCtaCli.lbFecha.Caption := 'Al '+DateToStr(Date);
  REstadoCtaCli.PrinterSetup;
  REstadoCtaCli.Preview;
  REstadoCtaCli.Destroy;
{  Application.CreateForm(tREstadoCtaCli, REstadoCtaCli);
  if ChkB_cksucursal.Checked then
  REstadoCtaCli.suc := dblkcbb1.KeyValue;
  if Trim(tTipo.Text)<>'' then
  REstadoCtaCli.lbTipo.Caption := 'Tipo : '+tTipo.Text ELSE
  REstadoCtaCli.lbTipo.Caption := '';
  if not ChkB_cksucursal.Checked then
  REstadoCtaCli.QRLSucursal.Caption := DM.QEmpresasEMP_NOMBRE.Text else
  REstadoCtaCli.QRLSucursal.Caption := dblkcbb1.Text;
  REstadoCtaCli.QClientes.Close;
  REstadoCtaCli.QClientes.SQL.Clear;
  REstadoCtaCli.QClientes.SQL.Add('DECLARE @fecha datetime, @EMPRESA int; set @fecha = :fecha; set @EMPRESA = '+IntToStr(DM.vp_cia));
  REstadoCtaCli.QClientes.SQL.Add('select');
  REstadoCtaCli.QClientes.SQL.Add('cli_codigo, cli_referencia, cli_nombre,');
  REstadoCtaCli.QClientes.SQL.Add('cli_telefono, cli_balance, emp_codigo, cli_cedula, cli_rnc, @fecha fecha, cli_email');
  REstadoCtaCli.QClientes.SQL.Add('from clientes');
  REstadoCtaCli.QClientes.SQL.Add('where emp_codigo = :emp_codigo');
  REstadoCtaCli.QClientes.SQL.Add('and cli_status = '+QuotedStr('ACT'));
  REstadoCtaCli.QClientes.SQL.Add('and cli_codigo = '+QClienteCLI_CODIGO.Text);
  REstadoCtaCli.QClientes.SQL.Add('order by cli_codigo');
  REstadoCtaCli.QClientes.Parameters.ParamByName('emp_codigo').Value  := dm.vp_cia;
  REstadoCtaCli.QClientes.Parameters.ParamByName('fecha').DataType    := ftDate;
  REstadoCtaCli.QClientes.Parameters.ParamByName('fecha').Value       := Date;
  REstadoCtaCli.QClientes.Open;

  REstadoCtaCli.QDocs.Close;
  REstadoCtaCli.QDocs.SQL.Clear;
  REstadoCtaCli.QDocs.SQL.Add('DECLARE @fecha datetime;');
  REstadoCtaCli.QDocs.SQL.Add('set @fecha = :fecha; ');
  REstadoCtaCli.QDocs.SQL.Add('SELECT * FROM(');
  REstadoCtaCli.QDocs.SQL.Add('select M.FAC_FORMA, (M.MOV_ABONO) as mov_abono,');
  REstadoCtaCli.QDocs.SQL.Add('M.MOV_FECHA, (M.MOV_MONTO) as mov_monto, M.MOV_NUMERO,');
  REstadoCtaCli.QDocs.SQL.Add('M.MOV_TIPO, M.TFA_CODIGO, M.EMP_CODIGO, M.MOV_SECUENCIA,');
  REstadoCtaCli.QDocs.SQL.Add('M.MOV_CUOTA, M.MOV_TASA, (m.mov_interes) mov_interes, m.mov_fechavence, m.suc_codigo, @fecha fecha,');
  REstadoCtaCli.QDocs.SQL.Add('datediff(day,MOV_FECHA, @FECHA) DIASVENC, M.CLI_CODIGO, M.MOV_ABONO ABONO,');
  REstadoCtaCli.QDocs.SQL.Add('M.MON_CODIGO');
  REstadoCtaCli.QDocs.SQL.Add('FROM  Movimientos M WHERE M.TFA_CODIGO <> 1 AND CLI_CODIGO = :CLI_CODIGO AND EMP_CODIGO = :EMP_CODIGO AND MOV_STATUS = ''PEN'')  AS TEMP');
  REstadoCtaCli.QDocs.SQL.Add('WHERE MOV_FECHA <= @FECHA');

  IF ChkB_cksucursal.Checked THEN
  REstadoCtaCli.QDocs.SQL.Add('and SUC_CODIGO = :SUC');
  REstadoCtaCli.QDocs.SQL.Add('order by mov_fecha');
  REstadoCtaCli.QDocs.Parameters.ParamByName('fecha').DataType := ftDate;
  REstadoCtaCli.QDocs.Parameters.ParamByName('fecha').Value := Date;
  REstadoCtaCli.QDocs.Parameters.ParamByName('emp_codigo').DataType := ftInteger;
  REstadoCtaCli.QDocs.Parameters.ParamByName('cli_codigo').DataType := ftInteger;
  IF ChkB_cksucursal.Checked = true THEN
  REstadoCtaCli.QDocs.Parameters.ParamByName('SUC').Value         := REstadoCtaCli.suc;
  REstadoCtaCli.QDocs.Open;

  REstadoCtaCli.lbTipo.Caption := tTipo.Text;
  REstadoCtaCli.lbFecha.Caption := 'Al '+DateToStr(Date);

IF ChkB_cksucursal.Checked = True then
    REstadoCtaCli.suc := REstadoCtaCli.suc ELSE
    REstadoCtaCli.suc := REstadoCtaCli.suc;
  if not VarIsNull(REstadoCtaCli.QDocs['mov_tasa']) then
    REstadoCtaCli.tasa:= REstadoCtaCli.QDocs['mov_tasa']
  else REstadoCtaCli.tasa:=1;
  REstadoCtaCli.QRecibos.Close;
  REstadoCtaCli.QRecibos.Parameters.ParamByName('FECHA').DataType := ftDate;
  REstadoCtaCli.QRecibos.Open;
  REstadoCtaCli.QNC.Close;
  REstadoCtaCli.QNC.Parameters.ParamByName('fecha').DataType := ftDate;
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
  if ChkB_cksucursal.Checked then
  REstadoCtaCli.QAntig.Parameters[3].Value := dblkcbb1.KeyValue else
  REstadoCtaCli.QAntig.Parameters[3].Value := REstadoCtaCli.suc;
  REstadoCtaCli.QAntig.Parameters.ParamByName('fecha').DataType := ftDate;
  REstadoCtaCli.QAntig.Parameters.ParamByName('fecha').Value    := Date;
  REstadoCtaCli.QAntig.Open;
  REstadoCtaCli.qMora.Close;
  REstadoCtaCli.qMora.Parameters.ParamByName('fecha').DataType := ftDate;
  REstadoCtaCli.qMora.Parameters.ParamByName('fecha').Value    := Date;
  REstadoCtaCli.qMora.Open;
  REstadoCtaCli.lbFecha.Caption := 'Al '+DateToStr(Date);
  REstadoCtaCli.PrinterSetup;
  REstadoCtaCli.Preview;
  REstadoCtaCli.Destroy;
end;    }
end;

procedure TfrmConsCxC.btRefreshClick(Sender: TObject);
var
  punt : TBookmark;
  Total, Vencido, Mora : Double;
begin
  //ACTUALIZA BALANCES
  DM.ADOSigma.Execute('EXEC pr_actualiza_bce '+IntToStr(DM.vp_cia));
  //punt := QCliente.GetBookmark;

  //VERIFICAR NOTAS CREDITO
  qVerificarNCMontoUsados.ExecSQL;

  if (Trim(edTipo.Text)) = '' then edTipo.Text := '0';

  QCliente.close;
  QCliente.Parameters.parambyname('emp').Value := dm.vp_cia;
  QCliente.Parameters.parambyname('fec').Value := Date;
  QCliente.Parameters.parambyname('tip').Value := StrToInt(edTipo.Text);
  if ChkB_cksucursal.Checked then
  QCliente.Parameters.ParamByName('suc').Value := QSucursalsuc_codigo.Value else
  QCliente.Parameters.ParamByName('suc').Value := 0;
  if cbtipo.ItemIndex = 0 then
    QCliente.Parameters.parambyname('st').Value  := 'T'
  else if cbtipo.ItemIndex = 1 then
    QCliente.Parameters.parambyname('st').Value  := 'A'
  else if cbtipo.ItemIndex = 2 then
    QCliente.Parameters.parambyname('st').Value  := 'I';
  //QCliente.open;
  QCliente.disablecontrols;
  Total := 0;
  Vencido := 0;

   if ckVence.Checked then
    begin
    QCliente.Filter := 'VENCIDO > 0';
    QCliente.Filtered := True;
    end;
    if NOT ckVence.Checked then
    begin
    QCliente.Filter := '';
    QCliente.Filtered := False;
    end;

    QCliente.open;
    

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('set dateformat ymd');
  dm.Query1.SQL.Add('select isnull(sum(balance),0) as total, isnull(sum(vencido),0) as vencido, isnull(sum(mora),0) as mora');
  dm.Query1.SQL.Add('from pr_cxc (:emp, :fec, :tip, :st, :suc)');
  IF ckVence.Checked THEN
  dm.Query1.SQL.Add('WHERE VENCIDO > 0');
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.parambyname('fec').Value    := Date;
  dm.Query1.Parameters.parambyname('tip').Value := StrToInt(edTipo.Text);
  if ChkB_cksucursal.Checked then
  dm.Query1.Parameters.ParamByName('suc').Value := QSucursalsuc_codigo.Value else
  dm.Query1.Parameters.ParamByName('suc').Value := 0;
  if cbtipo.ItemIndex = 0 then
    dm.Query1.Parameters.parambyname('st').Value  := 'T'
  else if cbtipo.ItemIndex = 1 then
    dm.Query1.Parameters.parambyname('st').Value  := 'A'
  else if cbtipo.ItemIndex = 2 then
    dm.Query1.Parameters.parambyname('st').Value  := 'I';

  dm.Query1.Open;
  Total   := dm.Query1.FieldByName('total').Value;
  Vencido := dm.Query1.FieldByName('vencido').Value;
  Mora    := dm.Query1.FieldByName('mora').Value;

  lbTotal.caption := format('%n',[Total]);
  lbVencido.caption := format('%n',[Vencido]);
  //QCliente.GotoBookmark(punt);

  QCliente.Enablecontrols; 



end;

procedure TfrmConsCxC.FormPaint(Sender: TObject);
begin
  with frmConsCxC do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmConsCxC.QClienteAfterScroll(DataSet: TDataSet);
begin
with QAntig do begin
  Close;
  Parameters.ParamByName('emp_codigo').Value := DM.vp_cia;
  Parameters.ParamByName('fecha').Value := Date;
  Parameters.ParamByName('cli_codigo').Value := QClienteCLI_CODIGO.Value;
  if ChkB_cksucursal.Checked then
  Parameters.ParamByName('suc').Value := dblkcbb1.KeyValue ELSE
  Parameters.ParamByName('suc').Value := 0;
  Open;
end;


with QMovimientos do begin
Close;
Parameters.ParamByName('emp_codigo').Value := QClienteEMP_CODIGO.Value;
Parameters.ParamByName('cli_codigo').Value := QClienteCLI_CODIGO.Value;
if ChkB_cksucursal.Checked  then begin
Parameters.ParamByName('suc1').Value := dblkcbb1.KeyValue;
Parameters.ParamByName('suc2').Value := dblkcbb1.KeyValue;
end;
if not ChkB_cksucursal.Checked  then begin
Parameters.ParamByName('suc1').Value := 0;
Parameters.ParamByName('suc2').Value := 999;
end;
Open;
END;
end;

procedure TfrmConsCxC.BitBtn3Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cli_nombre, cli_referencia, cli_codigo');
  Search.Query.Add('from clientes where cli_balance > 0');
  Search.Query.Add('and emp_codigo = '+IntToStr(dm.vp_cia));
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Referencia');
  Search.AliasFields.Add('Código');
  Search.ResultField := 'cli_codigo';
  Search.Title := 'Clientes con Cuentas por Cobrar';
  if Search.execute then
    QCliente.Locate('cli_codigo', Search.ValueField, []);
end;

procedure TfrmConsCxC.ckVenceClick(Sender: TObject);
begin
  btRefreshClick(Self);
end;

procedure TfrmConsCxC.Imprimir1Click(Sender: TObject);
begin
  if QMovimientosFAC_FORMA.Value <> 'X' then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select tfa_formatoimp, tfa_puertoimp, tfa_actbalance');
    dm.Query1.sql.add('from tiposfactura');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and tfa_codigo = :cod');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('cod').Value := QMovimientosTFA_CODIGO.Value;
    dm.Query1.open;
    PuertoImp  := dm.Query1.fieldbyname('tfa_puertoimp').asstring;
    FormatoImp := dm.Query1.fieldbyname('tfa_formatoImp').asinteger;
    ActBalance := dm.Query1.fieldbyname('tfa_actbalance').AsString;

    if dm.QParametrospar_fac_preimpresa.Value = 'True' then
    begin
      application.CreateForm(tRFacturaPreImpresa, RFacturaPreImpresa);
      RFacturaPreImpresa.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
      RFacturaPreImpresa.QFactura.Parameters.ParamByName('tipo').Value   := QMovimientosTFA_CODIGO.value;
      RFacturaPreImpresa.QFactura.Parameters.ParamByName('forma').Value  := QMovimientosFAC_FORMA.value;
      RFacturaPreImpresa.QFactura.Parameters.ParamByName('numero').Value := QMovimientosMOV_NUMERO.value;
      RFacturaPreImpresa.QFactura.Parameters.ParamByName('suc').Value    := QMovimientosSUC_CODIGO.Value;
      RFacturaPreImpresa.QFactura.open;
      RFacturaPreImpresa.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      RFacturaPreImpresa.QDetalle.open;
      if dm.QParametrospar_formato_preimpreso.Value = 'QRLencyn' then
      begin
        RFacturaPreImpresa.QRLencyn.PrinterSetup;
        RFacturaPreImpresa.QRLencyn.preview;
      end
      else if dm.QParametrospar_formato_preimpreso.Value = 'QRSoloAutos' then
      begin
        RFacturaPreImpresa.QRSoloAutos.PrinterSetup;
        RFacturaPreImpresa.QRSoloAutos.preview;
      end
      else if dm.QParametrospar_formato_preimpreso.Value = 'QRBB' then
      begin
        RFacturaPreImpresa.QRBB.PrinterSetup;
        RFacturaPreImpresa.QRBB.preview;
      end
      else if dm.QParametrospar_formato_preimpreso.Value = 'QRMSConsulting' then
      begin
        RFacturaPreImpresa.QRMSConsulting.PrinterSetup;
        RFacturaPreImpresa.QRMSConsulting.preview;
      end
      else if dm.QParametrospar_formato_preimpreso.Value = 'QRBelkis' then
      begin
        //RFacturaPreImpresa.lbPagado.Caption := '';
        //RFacturaPreImpresa.lbDevuelta.Caption := '';
        RFacturaPreImpresa.QRBelkis.PrinterSetup;
        RFacturaPreImpresa.QRBelkis.preview;
      end
      else if dm.QParametrospar_formato_preimpreso.Value = 'QRThorton' then
      begin
    RFacturaPreImpresa.QFactura.Close;
    RFacturaPreImpresa.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
      RFacturaPreImpresa.QFactura.Parameters.ParamByName('tipo').Value   := QMovimientosTFA_CODIGO.value;
      RFacturaPreImpresa.QFactura.Parameters.ParamByName('forma').Value  := QMovimientosFAC_FORMA.value;
      RFacturaPreImpresa.QFactura.Parameters.ParamByName('numero').Value := QMovimientosMOV_NUMERO.value;
      RFacturaPreImpresa.QFactura.Parameters.ParamByName('suc').Value    := QMovimientosSUC_CODIGO.Value;
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
        RFacturaPreImpresa.QRMadeco.Preview;
      end
      else if dm.QParametrospar_formato_preimpreso.Value = 'QRImpresosDuran' then
      begin
        RFacturaPreImpresa.QRImpresosDuran.PrinterSetup;
        RFacturaPreImpresa.QRImpresosDuran.preview;
      end;
      RFacturaPreImpresa.Release;
    end
    else if FormatoImp = 2 then
    begin
      if DM.QParametrospar_formato_preimpreso.Value <> 'Sarita & Asociados' then begin
      application.createform(tRFactura, RFactura);
      RFactura.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
      RFactura.QFactura.Parameters.ParamByName('tipo').Value   := QMovimientosTFA_CODIGO.value;
      RFactura.QFactura.Parameters.ParamByName('forma').Value  := QMovimientosFAC_FORMA.value;
      RFactura.QFactura.Parameters.ParamByName('numero').Value := QMovimientosMOV_NUMERO.value;
      RFactura.QFactura.Parameters.ParamByName('suc').Value    := QMovimientosSUC_CODIGO.Value;
      RFactura.QFactura.open;
      RFactura.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      RFactura.QDetalle.open;
      RFactura.Preview;
      RFactura.Destroy;
      end;

      if DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados' then begin
                    application.createform(tRFacturaSarita, RFacturaSarita);
                    RFacturaSarita.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
                    RFacturaSarita.QFactura.Parameters.ParamByName('tipo').Value   := QMovimientosTFA_CODIGO.value;
                    RFacturaSarita.QFactura.Parameters.ParamByName('forma').Value   := QMovimientosFAC_FORMA.value;
                    RFacturaSarita.QFactura.Parameters.ParamByName('numero').Value := QMovimientosMOV_NUMERO.value;
                    RFacturaSarita.QFactura.Parameters.ParamByName('suc').Value := QMovimientosSUC_CODIGO.Value;
                    RFacturaSarita.QFactura.open;
                    RFacturaSarita.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
                    RFacturaSarita.QDetalle.open;
                    RFacturaSarita.lbReimpresion.Enabled := False;
                    RFacturaSarita.PrinterSetup;
                    RFacturaSarita.print;
                    RFacturaSarita.Destroy;
                    end;

    end
    else if FormatoImp = 3 then
          begin
            application.createform(tRFactura, RFactura);
            RFactura.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
            RFactura.QFactura.Parameters.ParamByName('tipo').Value   := QMovimientosTFA_CODIGO.value;
            RFactura.QFactura.Parameters.ParamByName('forma').Value   := QMovimientosFAC_FORMA.value;
            RFactura.QFactura.Parameters.ParamByName('numero').Value := QMovimientosMOV_NUMERO.value;
            RFactura.QFactura.Parameters.ParamByName('suc').Value := QMovimientosSUC_CODIGO.Value;
            RFactura.QFactura.open;
            RFactura.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
            RFactura.QDetalle.open;
            RFactura.QFormasPago.open;
            RFactura.Preview;
            RFactura.Destroy; 
          end;
  end;
  
end;

procedure TfrmConsCxC.Imp40ColumnasFac;
var
  arch : textfile;
  s, s1, s2, s3, s4 : array [0..20] of char;
  Tfac, Saldo : double;
  puertopeq : textfile;
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

  AssignFile(arch, 'c:\imp.bat');
  rewrite(arch);
  writeln(arch, 'type c:\t.txt > '+puerto);
  closefile(arch);

  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select ven_nombre from vendedores');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and ven_codigo = :ven');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('ven').Value := RFactura.QFacturaVEN_CODIGO.Value;
  dm.Query1.Open;

  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add('select tfa_nombre from tiposfactura');
  Query1.SQL.Add('where emp_codigo = :emp');
  Query1.SQL.Add('and tfa_codigo = :tfa');
  Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  Query1.Parameters.ParamByName('tfa').Value := QMovimientosTFA_CODIGO.Value;
  Query1.Open;


  tfac := 0;
  AssignFile(arch, 'c:\t.txt');
  rewrite(arch);
  writeln(arch, dm.Centro(trim(dm.QEmpresasEMP_NOMBRE.value)));
  writeln(arch, dm.Centro(trim(DM.QEmpresasEMP_DIRECCION.value)));
  writeln(arch, dm.Centro(trim(DM.QEmpresasEMP_LOCALIDAD.value)));
  writeln(arch, dm.Centro('Telefono : '+trim(dm.QEmpresasEMP_TELEFONO.value)));
  writeln(arch, dm.Centro('RNC: '+dm.QEmpresasEMP_RNC.value));
  writeln(arch, ' ');
  writeln(arch, dm.Centro('FACTURA DE '+trim(Query1.FieldByName('tfa_nombre').AssTring)));
  writeln(arch, ' ');
  writeln(arch, 'Numero    : '+inttostr(RFactura.QFacturaFAC_NUMERO.value));
  writeln(arch, 'Fecha     : '+DateToStr(RFactura.QFacturaFAC_FECHA.value));
  if (actbalance = 'True') then
    writeln(arch, 'Vence     : '+DateToStr(RFactura.QFacturaFAC_VENCE.value));

  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add('select cli, dir, tel, ven, caj, fir from parconfigimp');
  Query1.SQL.Add('where emp_codigo = :emp');
  Query1.SQL.Add('and tfa_codigo = :tfa');
  Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  Query1.Parameters.ParamByName('tfa').Value := RFactura.QFacturaTFA_CODIGO.Value;
  Query1.Open;
  if Query1.FieldByName('cli').AsString = 'Si' then
    writeln(arch, 'Cliente   : '+RFactura.QFacturaFAC_NOMBRE.value);
  if Query1.FieldByName('dir').AsString = 'Si' then
    writeln(arch, 'Direccion : '+RFactura.QFacturaFAC_DIRECCION.value);
  if Query1.FieldByName('tel').AsString = 'Si' then
    writeln(arch, 'Telefono  : '+RFactura.QFacturaFAC_TELEFONO.value);
  if Query1.FieldByName('ven').AsString = 'Si' then
    writeln(arch, 'Vendedor  : '+dm.Query1.FieldByName('ven_nombre').asstring);

  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select caj_nombre from cajeros');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and caj_codigo = :ven');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('ven').Value := RFactura.QFacturaCAJ_CODIGO.Value;
  dm.Query1.Open;

  if Query1.FieldByName('caj').AsString = 'Si' then
    writeln(arch, 'Cajero    : '+dm.Query1.FieldByName('caj_nombre').asstring);

  writeln(arch, '----------------------------------------');
  writeln(arch, 'Can. Descripcion  Prec.  Itbis     Valor');
  writeln(arch, '----------------------------------------');
  while not RFactura.QDetalle.eof do
  begin
    tfac := tfac + RFactura.QDetalleDET_CANTIDAD.value*
                   RFactura.QDetallePrecioItbis.value;
    s := '';
    fillchar(S, 5-length(floattostr(RFactura.QDetalleDET_CANTIDAD.value)),' ');
    s1 := '';
    fillchar(S1, 26-length(copy(trim(RFactura.QDetallePRO_NOMBRE.value),1,32)),' ');
    s2 := '';
    fillchar(S2, 9-length(format('%n',[RFactura.QDetalleVAlor.value])),' ');
    writeln(arch, floattostr(RFactura.QDetalleDET_CANTIDAD.value)+s+
            copy(trim(RFactura.QDetallePRO_NOMBRE.value),1,32)+' '+
            RFactura.QDetalleDET_ESCALA.Value);

    s := '';
    fillchar(s, 22-length(format('%n',[RFactura.QDetallePrecioItbis.value])),' ');
    s1 := '';
    fillchar(s1, 8-length(format('%n',[RFactura.QDetalleCalcItbis.value])),' ');
    s2 := '';
    fillchar(s2, 10-length(format('%n',[RFactura.QDetalleValor.value])),' ');
    writeln(arch, s+format('%n',[RFactura.QDetallePrecioItbis.value])+s1+
                  format('%n',[RFactura.QDetalleCalcItbis.value])+
                  s2+format('%n',[RFactura.QDetalleValor.value]));

    RFactura.QDetalle.next;
  end;
  s := '';
  fillchar(s, 18-length(format('%n',[RFactura.QFacturaFAC_TOTAL.value])),' ');
  s1:= '';
  fillchar(s1, 18-length(format('%n',[RFactura.QFacturaFAC_DESCUENTO.value])),' ');
  s2:= '';
  fillchar(s2, 18-length(format('%n',[TFac])),' ');
  s3:= '';
  fillchar(s3, 18-length(format('%n',[RFactura.QFacturaFAC_ITBIS.value])),' ');
  s4:= '';
  fillchar(s4, 18-length(format('%n',[RFactura.QFacturaFAC_OTROS.value])),' ');

  writeln(arch, '----------------------------------------');
  writeln(arch, 'SubTotal        ----> '+s2+format('%n',[TFac]));
  writeln(arch, 'Descuento       ----> '+s1+format('%n',[RFactura.QFacturaFAC_DESCUENTO.value]));
  writeln(arch, 'Itbis           ----> '+s3+format('%n',[RFactura.QFacturaFAC_ITBIS.value]));
  writeln(arch, 'Otros           ----> '+s4+format('%n',[RFactura.QFacturaFAC_OTROS.value]));
  writeln(arch, 'Total Facturado ----> '+s+chr(27)+chr(52)+format('%n',[RFactura.QFacturaFAC_TOTAL.value])+chr(27)+chr(53));
  if (actbalance = 'True') then
  begin
    s := '';
    fillchar(s, 18-length(format('%n',[RFactura.QFacturaFAC_ABONO.value])),' ');
    Saldo := RFactura.QFacturaFAC_TOTAL.value - RFactura.QFacturaFAC_ABONO.value;
    s1 := '';
    fillchar(s1, 18-length(format('%n',[Saldo])),' ');
    writeln(arch, 'Total Abonado   ----> '+s+chr(27)+chr(52)+format('%n',[RFactura.QFacturaFAC_ABONO.value])+chr(27)+chr(53));
    writeln(arch, 'Deuda Factura   ----> '+s1+chr(27)+chr(52)+format('%n',[Saldo])+chr(27)+chr(53));

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
  end;
  writeln(arch, ' ');
  writeln(arch, copy(RFactura.QFacturaFAC_MENSAJE1.Value,1,40));
  writeln(arch, copy(RFactura.QFacturaFAC_MENSAJE2.Value,1,40));
  writeln(arch, copy(RFactura.QFacturaFAC_MENSAJE3.Value,1,40));
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
  Application.CreateForm(tfrmImpPantalla, frmImpPantalla);
  frmImpPantalla.Memo1.Lines.LoadFromFile('c:\t.txt');
  frmImpPantalla.ShowModal;
  frmImpPantalla.Release;
  RFactura.Destroy;
end;

procedure TfrmConsCxC.dsMovDataChange(Sender: TObject; Field: TField);
begin
  Imprimir1.Enabled := QMovimientosFAC_FORMA.Value <> 'X';
end;

procedure TfrmConsCxC.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
{if Date >= QMovMOV_FECHAVENCE.Value then
  begin
     DBGrid2.canvas.font.color := clMaroon;
     DBGrid2.DefaultDrawcolumnCell(Rect, DataCol, Column, State);
  end;}
end;

procedure TfrmConsCxC.dsAntigDataChange(Sender: TObject; Field: TField);
begin
  lbCondi1.Caption := format('%n',[QAntigDIA1.value]);
  lbCondi2.Caption := format('%n',[QAntigDIA2.value]);
  lbCondi3.Caption := format('%n',[QAntigDIA3.value]);
  lbCondi4.Caption := format('%n',[QAntigDIA4.value]);
end;

procedure TfrmConsCxC.btTipoClick(Sender: TObject);
begin
  Search.query.clear;
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Title := 'Tipos de Clientes';
  Search.ResultField := 'tcl_codigo';
  Search.query.add('select tcl_nombre, tcl_codigo');
  Search.query.add('from tipoclientes');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  if search.execute then
  begin
    edTipo.text := search.valuefield;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tcl_nombre from tipoclientes');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tcl_codigo = '+edTipo.Text);
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Open;
    tTipo.Text := dm.Query1.FieldByname('tcl_nombre').AsString;
    edTipo.SetFocus;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsCxC.edTipoChange(Sender: TObject);
begin
  if trim(edTipo.text) = '' then tTipo.text := '';
end;

procedure TfrmConsCxC.edTipoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edTipo.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select tcl_nombre, tcl_codigo');
      dm.Query1.sql.add('from tipoclientes');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and tcl_codigo = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edTipo.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        tTipo.text := '';
        showmessage('ESTE TIPO DE CLIENTE NO EXISTE');
        edTipo.setfocus;
      end
      else
      begin
        tTipo.text := dm.Query1.fieldbyname('tcl_nombre').asstring;
        btRefreshClick(Self);
      end;
    end;
  end;
end;

procedure TfrmConsCxC.cbtipoClick(Sender: TObject);
begin
  btRefreshClick(Self);
end;

procedure TfrmConsCxC.btConsolidadoClick(Sender: TObject);
begin
  Application.CreateForm(TREstadoCtaCliConsolidado, REstadoCtaCliConsolidado);
  if ChkB_cksucursal.Checked = False then
  REstadoCtaCliConsolidado.vl_suc := 0 else
  REstadoCtaCliConsolidado.vl_suc := QSucursalsuc_codigo.Value;
  REstadoCtaCliConsolidado.QRBand3.ForceNewPage := false;
  REstadoCtaCliConsolidado.lbVendedor.Caption := '';
  REstadoCtaCliConsolidado.lbTipo.Caption := 'Tipo : '+tTipo.Text;
  WITH REstadoCtaCliConsolidado.QClientes do begin
  Close;
  case cbtipo.ItemIndex of
  1 : SQL.Add('and cli_status = '+#39+'ACT'+#39);
  2 : SQL.Add('and cli_status = '+#39+'INA'+#39);
  end;

  Parameters.ParamByName('emp_codigo').Value := dm.vp_cia;
  Parameters.ParamByName('cli_codigo').Value := QClienteCLI_CODIGO.AsString;
  Parameters.ParamByName('fecha').DataType   := ftDate;
  Parameters.ParamByName('fecha').Value      := now; //Fecha.Date;
  IF ChkB_cksucursal.Checked then BEGIN
  Parameters.ParamByName('suc1').Value := dblkcbb1.KeyValue;
  Parameters.ParamByName('suc2').Value := dblkcbb1.KeyValue;
  end;
  IF not ChkB_cksucursal.Checked then BEGIN
  Parameters.ParamByName('suc1').Value := 0;
  Parameters.ParamByName('suc2').Value := 999;
  end;
  open;
  end;

  REstadoCtaCliConsolidado.QClienteTitular.Close;
  REstadoCtaCliConsolidado.QClienteTitular.SQL.Add('and cli_balance > 0');
  IF ChkB_cksucursal.Checked then BEGIN
  REstadoCtaCliConsolidado.QClienteTitular.Parameters.ParamByName('suc1').Value := dblkcbb1.KeyValue;
  REstadoCtaCliConsolidado.QClienteTitular.Parameters.ParamByName('suc2').Value := dblkcbb1.KeyValue;
  end;
  IF not ChkB_cksucursal.Checked then BEGIN
  REstadoCtaCliConsolidado.QClienteTitular.Parameters.ParamByName('suc1').Value := 0;
  REstadoCtaCliConsolidado.QClienteTitular.Parameters.ParamByName('suc2').Value := 999;
  end;
  REstadoCtaCliConsolidado.QClienteTitular.open;
  REstadoCtaCliConsolidado.QDocs.Close;
  REstadoCtaCliConsolidado.QDocs.SQL.Add('and M.mov_status = '+#39+'PEN'+#39);
  REstadoCtaCliConsolidado.QDocs.SQL.Add('order by M.mov_fecha');
  IF ChkB_cksucursal.Checked then BEGIN
  REstadoCtaCliConsolidado.QDocs.Parameters.ParamByName('suc1').Value := dblkcbb1.KeyValue;
  REstadoCtaCliConsolidado.QDocs.Parameters.ParamByName('suc2').Value := dblkcbb1.KeyValue;
  end;
  IF not ChkB_cksucursal.Checked then BEGIN
  REstadoCtaCliConsolidado.QDocs.Parameters.ParamByName('suc1').Value := 0;
  REstadoCtaCliConsolidado.QDocs.Parameters.ParamByName('suc2').Value := 999;
  end;
  REstadoCtaCliConsolidado.QDocs.open;
  if not VarIsNull(REstadoCtaCliConsolidado.QDocs['mov_tasa']) then
    REstadoCtaCliConsolidado.tasa:= REstadoCtaCliConsolidado.QDocs['mov_tasa']
  else REstadoCtaCliConsolidado.tasa:=1;

  REstadoCtaCliConsolidado.QRecibos.Close;
  IF ChkB_cksucursal.Checked then BEGIN
  REstadoCtaCliConsolidado.QRecibos.Parameters.ParamByName('suc1').Value := dblkcbb1.KeyValue;
  REstadoCtaCliConsolidado.QRecibos.Parameters.ParamByName('suc2').Value := dblkcbb1.KeyValue;
  end;
  IF not ChkB_cksucursal.Checked then BEGIN
  REstadoCtaCliConsolidado.QRecibos.Parameters.ParamByName('suc1').Value := 0;
  REstadoCtaCliConsolidado.QRecibos.Parameters.ParamByName('suc2').Value := 999;
  end;
  REstadoCtaCliConsolidado.QRecibos.open;
  REstadoCtaCliConsolidado.QNC.Close;
  IF ChkB_cksucursal.Checked then BEGIN
  REstadoCtaCliConsolidado.QNC.Parameters.ParamByName('suc').Value := dblkcbb1.KeyValue;
  end;
  IF not ChkB_cksucursal.Checked then BEGIN
  REstadoCtaCliConsolidado.QNC.Parameters.ParamByName('suc').Value := 0;
  end;
  REstadoCtaCliConsolidado.QNC.open;
  REstadoCtaCliConsolidado.QCredito.Close;
  IF ChkB_cksucursal.Checked then BEGIN
  REstadoCtaCliConsolidado.QCredito.Parameters.ParamByName('suc1').Value := dblkcbb1.KeyValue;
  REstadoCtaCliConsolidado.QCredito.Parameters.ParamByName('suc2').Value := dblkcbb1.KeyValue;
  end;
  IF not ChkB_cksucursal.Checked then BEGIN
  REstadoCtaCliConsolidado.QCredito.Parameters.ParamByName('suc1').Value := 0;
  REstadoCtaCliConsolidado.QCredito.Parameters.ParamByName('suc2').Value := 999;
  end;
  REstadoCtaCliConsolidado.QCredito.open;
  REstadoCtaCliConsolidado.QDepositos.Close;
    IF ChkB_cksucursal.Checked then BEGIN
  REstadoCtaCliConsolidado.QDepositos.Parameters.ParamByName('suc1').Value := dblkcbb1.KeyValue;
  REstadoCtaCliConsolidado.QDepositos.Parameters.ParamByName('suc2').Value := dblkcbb1.KeyValue;
  end;
  IF not ChkB_cksucursal.Checked then BEGIN
  REstadoCtaCliConsolidado.QDepositos.Parameters.ParamByName('suc1').Value := 0;
  REstadoCtaCliConsolidado.QDepositos.Parameters.ParamByName('suc2').Value := 999;
  end;
  REstadoCtaCliConsolidado.QDepositos.open;
  REstadoCtaCliConsolidado.QAntig.Close;
    IF ChkB_cksucursal.Checked then BEGIN
  REstadoCtaCliConsolidado.QAntig.Parameters.ParamByName('suc').Value := dblkcbb1.KeyValue;
  end;
  IF not ChkB_cksucursal.Checked then BEGIN
  REstadoCtaCliConsolidado.QAntig.Parameters.ParamByName('suc').Value := 0;
  end;
  REstadoCtaCliConsolidado.QAntig.open;
  REstadoCtaCliConsolidado.lbFecha.Caption := 'Al '+DateToStr(Date);
  REstadoCtaCliConsolidado.PrinterSetup;
  REstadoCtaCliConsolidado.Preview;
  REstadoCtaCliConsolidado.Destroy;
end;

procedure TfrmConsCxC.dblkcbb1Click(Sender: TObject);
begin
btRefreshClick(Self);
end;

procedure TfrmConsCxC.ChkB_cksucursalClick(Sender: TObject);
begin
WITH DM.QParametros do BEGIN
  Close;
  Parameters.ParamByName('EMP_CODIGO').Value := dm.vp_cia;
  Open;
  end;

  IF ChkB_cksucursal.Checked then BEGIN
  IF DM.QParametrosPAR_SUC_NCF.Value > 0 THEN BEGIN
  dblkcbb1.KeyValue := DM.QParametrosPAR_SUC_NCF.Value;
  end;
  END;


btRefreshClick(Sender);
end;

procedure TfrmConsCxC.FormActivate(Sender: TObject);
var
  Total, Vencido : double;
begin

 // dm.ADOSigma.Execute('UPDATE FACTURAS SET FAC_ABONO = ISNULL(FAC_TOTAL,0), FAC_STATUS = '+QuotedStr('PAG')+' WHERE (ISNULL(FAC_TOTAL,0)-ISNULL(FAC_ABONO,0))<1');
 // dm.ADOSigma.Execute('UPDATE MOVIMIENTOS SET MOV_ABONO = ISNULL(MOV_MONTO,0), MOV_STATUS = '+QuotedStr('PAG')+' WHERE (ISNULL(MOV_MONTO,0)-ISNULL(MOV_ABONO,0))<1 ');


  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select par_dia1label, par_dia2label,');
  dm.Query1.SQL.Add('par_dia3label, par_dia4label');
  dm.Query1.SQL.Add('from PARAMANTIGSALDO');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Open;
  LabelDia1.Caption := dm.Query1.FieldByName('par_dia1label').AsString;
  LabelDia2.Caption := dm.Query1.FieldByName('par_dia2label').AsString;
  LabelDia3.Caption := dm.Query1.FieldByName('par_dia3label').AsString;
  LabelDia4.Caption := dm.Query1.FieldByName('par_dia4label').AsString;

  if not QCliente.Active then
  begin
    btRefreshClick(Sender);

    lbTotal.caption := format('%n',[Total]);
    lbVencido.caption := format('%n',[Vencido]);

    QAntig.Parameters.ParamByName('fecha').DataType := ftDate;
    QAntig.Parameters.ParamByName('fecha').Value := Date;
    IF ChkB_cksucursal.Checked then
    QAntig.Parameters.ParamByName('SUC').Value := QSucursalsuc_codigo.Value ELSE
    QAntig.Parameters.ParamByName('SUC').Value := 0;
    QAntig.Open;
    DBGrid1.SetFocus;
  end;
  frmMain.ExportXLS.Sheets[0].DBGrid := DBGrid1;
  frmMain.ExportXLS.Sheets[1].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[0].Exported := True;

  


end;

procedure TfrmConsCxC.FormShow(Sender: TObject);
begin
if not QSucursal.Active then
  begin
    QSucursal.Close;
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    QSucursal.First;
  end;

ChkB_cksucursal.Checked := False;
btRefreshClick(Sender);   

end;

procedure TfrmConsCxC.EnvioMail(Reporte: TQuickRep; Tipo: String);
begin
pnCorreo.Visible := True;
with dm.Query1 do begin
Close;
SQL.Clear;
SQL.Add('select * from clientes where cli_codigo = '+QClienteCLI_CODIGO.Text);
SQL.Add('and emp_codigo = '+QClienteEMP_CODIGO.Text);
Open;
if DM.Query1.RecordCount = 0 then begin
ShowMessage('El cliente no tiene Email asignado, favor verificar!');
Reporte.Destroy;
Exit;
end;
vl_dest := DM.Query1.fieldbyname('cli_email').Text;
end;

vl_factnum := QMovimientosMOV_NUMERO.Text;
if Tipo = 'Fac' then
vl_asunto := 'Envio de Factura No. '+vl_factnum else
vl_asunto := 'Envio de estado al dia '+FormatDateTime('dd/mm/yyyy',Date);

//Cuerpo del mensaje
  mmo1.Clear;
  mmo1.Lines.Add('Buenas,');
  mmo1.Lines.Add('');
  mmo1.Lines.Add('Sres. '+vl_clienteN+',');
  if Tipo = 'Fac' then
  mmo1.Lines.Add('Adjunto encontrara la Factura No. '+vl_factnum) else
  mmo1.Lines.Add('Adjunto encontrara el estado al dia '+FormatDateTime('dd/mm/yyyy',Date));
  mmo1.Lines.Add('');
  mmo1.Lines.Add('Saludos, ');
  IF ChkB_cksucursal.Checked THEN
  mmo1.Lines.Add(dblkcbb1.Text) ELSE
  mmo1.Lines.Add(DM.QEmpresasEMP_NOMBRE.Text);
  frmMain.EnviarCorreo2(vl_dest,
                       vl_asunto,
                       vl_adjunto1,
                       vl_adjunto2,
                       mmo1.Lines.GetText);
  Reporte.Destroy;
pnCorreo.Visible := False;
end;

procedure TfrmConsCxC.EnvioMail2(Tipo: String);
begin
pnCorreo.Visible := True;
with dm.Query1 do begin
Close;
SQL.Clear;
SQL.Add('select * from clientes where cli_codigo = '+QClienteCLI_CODIGO.Text);
SQL.Add('and emp_codigo = '+QClienteEMP_CODIGO.Text);
Open;
if DM.Query1.RecordCount = 0 then begin
ShowMessage('El cliente no tiene Email asignado, favor verificar!');
Exit;
end;
vl_dest := DM.Query1.fieldbyname('cli_email').Text;
end;

vl_factnum := QMovimientosMOV_NUMERO.Text;
if Tipo = 'Fac' then
vl_asunto := 'Envio de Factura No. '+vl_factnum else
vl_asunto := 'Envio de estado al dia '+FormatDateTime('dd/mm/yyyy',Date);


//Cuerpo del mensaje
  mmo1.Clear;
  mmo1.Lines.Add('Buenas,');
  mmo1.Lines.Add('');
  mmo1.Lines.Add('Sres. '+vl_clienteN+',');
  if Tipo = 'Fac' then
  mmo1.Lines.Add('Adjunto encontrara la Factura No. '+vl_factnum) else
  mmo1.Lines.Add('Adjunto encontrara el estado al dia '+FormatDateTime('dd/mm/yyyy',Date));
  mmo1.Lines.Add('');
  mmo1.Lines.Add('Saludos, ');
  IF ChkB_cksucursal.Checked THEN
  mmo1.Lines.Add(dblkcbb1.Text) ELSE
  mmo1.Lines.Add(DM.QEmpresasEMP_NOMBRE.Text);
  frmMain.EnviarCorreo2(vl_dest,
                       vl_asunto,
                       vl_adjunto1,
                       vl_adjunto2,
                       mmo1.Lines.GetText);
pnCorreo.Visible := False;
end;

procedure TfrmConsCxC.GenerarEstadoCxC;
begin
try
  Application.CreateForm(tREstadoCtaCli, REstadoCtaCli);
  if ChkB_cksucursal.Checked then
  REstadoCtaCli.suc := dblkcbb1.KeyValue ELSE
  REstadoCtaCli.suc := 0;
  REstadoCtaCli.lbVendedor.Visible := False;
  if Trim(tTipo.Text)<>'' then
  REstadoCtaCli.lbTipo.Caption := 'Tipo : '+tTipo.Text ELSE
  REstadoCtaCli.lbTipo.Caption := '';
  if not ChkB_cksucursal.Checked then
  REstadoCtaCli.QRLSucursal.Caption := DM.QEmpresasEMP_NOMBRE.Text else
  REstadoCtaCli.QRLSucursal.Caption := dblkcbb1.Text;
  REstadoCtaCli.QClientes.Close;
  REstadoCtaCli.QClientes.SQL.Clear;
  REstadoCtaCli.QClientes.SQL.Add('DECLARE @fecha datetime, @EMPRESA int; set @fecha = :fecha; set @EMPRESA = '+IntToStr(DM.vp_cia));
  REstadoCtaCli.QClientes.SQL.Add('select');
  REstadoCtaCli.QClientes.SQL.Add('cli_codigo, cli_referencia, cli_nombre,');
  REstadoCtaCli.QClientes.SQL.Add('cli_telefono, cli_balance, emp_codigo, cli_cedula, cli_rnc, @fecha fecha, cli_email');
  REstadoCtaCli.QClientes.SQL.Add('from clientes');
  REstadoCtaCli.QClientes.SQL.Add('where emp_codigo = :emp_codigo');
  REstadoCtaCli.QClientes.SQL.Add('and cli_status = '+QuotedStr('ACT'));
  REstadoCtaCli.QClientes.SQL.Add('and cli_codigo = '+QClienteCLI_CODIGO.Text);
  REstadoCtaCli.QClientes.SQL.Add('order by cli_codigo');
  REstadoCtaCli.QClientes.Parameters.ParamByName('emp_codigo').Value  := dm.vp_cia;
  REstadoCtaCli.QClientes.Parameters.ParamByName('fecha').DataType    := ftDate;
  REstadoCtaCli.QClientes.Parameters.ParamByName('fecha').Value       := Date;
  REstadoCtaCli.QClientes.Open;

  REstadoCtaCli.QDocs.Close;
  REstadoCtaCli.QDocs.SQL.Clear;
  REstadoCtaCli.QDocs.SQL.Add('DECLARE @fecha datetime;');
  REstadoCtaCli.QDocs.SQL.Add('set @fecha = :fecha; ');
  REstadoCtaCli.QDocs.SQL.Add('SELECT * FROM(');
  REstadoCtaCli.QDocs.SQL.Add('select M.FAC_FORMA, (M.MOV_ABONO) as mov_abono,');
  REstadoCtaCli.QDocs.SQL.Add('M.MOV_FECHA, (M.MOV_MONTO) as mov_monto, M.MOV_NUMERO,');
  REstadoCtaCli.QDocs.SQL.Add('M.MOV_TIPO, M.TFA_CODIGO, M.EMP_CODIGO, M.MOV_SECUENCIA,');
  REstadoCtaCli.QDocs.SQL.Add('M.MOV_CUOTA, M.MOV_TASA, (m.mov_interes) mov_interes, m.mov_fechavence, m.suc_codigo, @fecha fecha,');
  REstadoCtaCli.QDocs.SQL.Add('datediff(day,MOV_FECHA, @FECHA) DIASVENC, M.CLI_CODIGO, M.MOV_ABONO ABONO,');
  REstadoCtaCli.QDocs.SQL.Add('M.MON_CODIGO');
  REstadoCtaCli.QDocs.SQL.Add('FROM  Movimientos M WHERE M.TFA_CODIGO <> 1 AND CLI_CODIGO = :CLI_CODIGO AND EMP_CODIGO = :EMP_CODIGO AND MOV_STATUS = ''PEN'')  AS TEMP');
  REstadoCtaCli.QDocs.SQL.Add('WHERE MOV_FECHA <= @FECHA');

  IF ChkB_cksucursal.Checked THEN
  REstadoCtaCli.QDocs.SQL.Add('and SUC_CODIGO = :SUC');
  REstadoCtaCli.QDocs.SQL.Add('order by mov_fecha');
  REstadoCtaCli.QDocs.Parameters.ParamByName('fecha').DataType := ftDate;
  REstadoCtaCli.QDocs.Parameters.ParamByName('fecha').Value := Date;
  REstadoCtaCli.QDocs.Parameters.ParamByName('emp_codigo').DataType := ftInteger;
  REstadoCtaCli.QDocs.Parameters.ParamByName('cli_codigo').DataType := ftInteger;
  IF ChkB_cksucursal.Checked = true THEN
  REstadoCtaCli.QDocs.Parameters.ParamByName('SUC').Value         := REstadoCtaCli.suc;
  REstadoCtaCli.QDocs.Open;

  REstadoCtaCli.lbTipo.Caption := tTipo.Text;
  REstadoCtaCli.lbFecha.Caption := 'Al '+DateToStr(Date);

IF ChkB_cksucursal.Checked = True then
    REstadoCtaCli.suc := REstadoCtaCli.suc ELSE
    REstadoCtaCli.suc := REstadoCtaCli.suc;
  if not VarIsNull(REstadoCtaCli.QDocs['mov_tasa']) then
    REstadoCtaCli.tasa:= REstadoCtaCli.QDocs['mov_tasa']
  else REstadoCtaCli.tasa:=1;
  REstadoCtaCli.QRecibos.Close;
  REstadoCtaCli.QRecibos.Parameters.ParamByName('FECHA').DataType := ftDate;
  REstadoCtaCli.QRecibos.Open;
  REstadoCtaCli.QNC.Close;
  REstadoCtaCli.QNC.Parameters.ParamByName('fecha').DataType := ftDate;
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
  if ChkB_cksucursal.Checked then
  REstadoCtaCli.QAntig.Parameters[3].Value := dblkcbb1.KeyValue else
  REstadoCtaCli.QAntig.Parameters[3].Value := REstadoCtaCli.suc;
  REstadoCtaCli.QAntig.Parameters.ParamByName('fecha').DataType := ftDate;
  REstadoCtaCli.QAntig.Parameters.ParamByName('fecha').Value    := Date;
  REstadoCtaCli.QAntig.Open;
  REstadoCtaCli.qMora.Close;
  REstadoCtaCli.qMora.Parameters.ParamByName('fecha').DataType := ftDate;
  REstadoCtaCli.qMora.Parameters.ParamByName('fecha').Value    := Date;
  REstadoCtaCli.qMora.Open;
  REstadoCtaCli.lbFecha.Caption := 'Al '+DateToStr(Date);
  vl_adjunto1 := '.\Estado de Cuenta.PDF';
  REstadoCtaCli.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
  REstadoCtaCli.Destroy;

except
    REstadoCtaCli.Destroy;
end;

end;

procedure TfrmConsCxC.GenerarFactura;
begin
  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select tfa_formatoimp, tfa_puertoimp, tfa_actbalance');
  dm.Query1.sql.add('from tiposfactura');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and tfa_codigo = :cod');
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.parambyname('cod').Value := QMovimientosTFA_CODIGO.Value;
  dm.Query1.open;
  PuertoImp  := dm.Query1.fieldbyname('tfa_puertoimp').asstring;
  FormatoImp := dm.Query1.fieldbyname('tfa_formatoImp').asinteger;
  ActBalance := dm.Query1.fieldbyname('tfa_actbalance').AsString;

  if (dm.QParametrospar_fac_preimpresa.Value = 'True') and (dm.QParametrospar_formato_preimpreso.Value <> 'QRAgregados')
  and (dm.QParametrospar_formato_preimpreso.Value <> 'Grabado_Exento') then begin

    application.CreateForm(tRFacturaPreImpresa, RFacturaPreImpresa);
    RFacturaPreImpresa.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
    RFacturaPreImpresa.QFactura.Parameters.ParamByName('tipo').Value   := QMovimientosTFA_CODIGO.Value;
    RFacturaPreImpresa.QFactura.Parameters.ParamByName('forma').Value  := QMovimientosFAC_FORMA.Value;
    RFacturaPreImpresa.QFactura.Parameters.ParamByName('numero').Value := QMovimientosMOV_NUMERO.Value;
    RFacturaPreImpresa.QFactura.Parameters.ParamByName('suc').Value    := QMovimientosSUC_CODIGO.Value;
    RFacturaPreImpresa.QFactura.open;
    RFacturaPreImpresa.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    RFacturaPreImpresa.QDetalle.open;
    //RFacturaPreImpresa.lbDevuelta.Caption := ' ';
    //RFacturaPreImpresa.lbPagado.Caption   := ' ';

    if dm.QParametrospar_formato_preimpreso.Value = 'QRBelkis' then
    begin
      vl_clienteN := RFacturaPreImpresa.QFacturaFAC_NOMBRE.Text;
      vl_cliente  := RFacturaPreImpresa.QFacturaCLI_CODIGO.Value;
      vl_suc      := RFacturaPreImpresa.QFacturaSUC_CODIGO.Value;
      vl_factnum  := RFacturaPreImpresa.QFacturaFAC_NUMERO.Text;
      vl_adjunto1 := '.\Factura_No_'+vl_factnum+'.PDF';
      RFacturaPreImpresa.QRBelkis.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
      vl_adjunto2 := '';
      EnvioMail(RFacturaPreImpresa.QRBelkis,'Fac');

    end
    else
    if dm.QParametrospar_formato_preimpreso.Value = 'Norma 201806 Normal' then
                      begin
                        with RFacturaPreImpresa.QNorma201806 do begin
                        Close;
                        Parameters.ParamByName('emp').Value    := dm.vp_cia;
                        Parameters.ParamByName('tipo').Value   := QMovimientosTFA_CODIGO.Value;
                        Parameters.ParamByName('numero').Value := QMovimientosMOV_NUMERO.Value;
                        Parameters.ParamByName('suc').Value    := QMovimientosSUC_CODIGO.Value;
                        Open;
                        if RFacturaPreImpresa.QNorma201806.IsEmpty then begin
                          ShowMessage('No existen datos para la impresion....');
                          Abort;
                        end;
                        if not RFacturaPreImpresa.QNorma201806.IsEmpty then begin
                        vl_adjunto1 := '.\Factura_No_'+QMovimientosMOV_NUMERO.Text+'.PDF';
                        RFacturaPreImpresa.frxPDFExport1.FileName := vl_adjunto1;
                        RFacturaPreImpresa.Rpt_ReImpresionFact.PrepareReport();
                        RFacturaPreImpresa.Rpt_ReImpresionFact.Export(RFacturaPreImpresa.frxPDFExport1);
                        EnvioMail2('Fac');
                        end;
                        end;
                        RFacturaPreImpresa.Release;
                      end
                      else

    if dm.QParametrospar_formato_preimpreso.Value = 'QRSoloAutos' then
    begin
      vl_clienteN := RFacturaPreImpresa.QFacturaFAC_NOMBRE.Text;
      vl_cliente  := RFacturaPreImpresa.QFacturaCLI_CODIGO.Value;
      vl_suc      := RFacturaPreImpresa.QFacturaSUC_CODIGO.Value;
      vl_factnum  := RFacturaPreImpresa.QFacturaFAC_NUMERO.Text;
      vl_adjunto1 := '.\Factura_No_'+vl_factnum+'.PDF';
      RFacturaPreImpresa.QRSoloAutos.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
      vl_adjunto2 := '';
      EnvioMail(RFacturaPreImpresa.QRSoloAutos,'Fac');
    end
    else if dm.QParametrospar_formato_preimpreso.Value = 'QRBB' then
    begin
      RFacturaPreImpresa.lbReimpresion.Enabled := True;
      //RFacturaPreImpresa.QRBB.BackImageControl := '';
      RFacturaPreImpresa.QRBB.PrinterSetup;
      RFacturaPreImpresa.QRBB.Preview;
      RFacturaPreImpresa.Release;
    end
    else if dm.QParametrospar_formato_preimpreso.Value = 'QRThorton' then
    begin
    RFacturaPreImpresa.QFactura.Close;
    RFacturaPreImpresa.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
    RFacturaPreImpresa.QFactura.Parameters.ParamByName('tipo').Value   := QMovimientosTFA_CODIGO.Value;
    RFacturaPreImpresa.QFactura.Parameters.ParamByName('forma').Value  := QMovimientosFAC_FORMA.Value;
    RFacturaPreImpresa.QFactura.Parameters.ParamByName('numero').Value := QMovimientosMOV_NUMERO.Value;
    RFacturaPreImpresa.QFactura.Parameters.ParamByName('suc').Value    := QMovimientosSUC_CODIGO.Value;
    RFacturaPreImpresa.QFactura.open;
    IF RFacturaPreImpresa.QFactura.RecordCount > 0 THEN begin
    RFacturaPreImpresa.QDetalle.Close;
    RFacturaPreImpresa.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    RFacturaPreImpresa.QDetalle.open;
    vl_clienteN := RFacturaPreImpresa.QFacturaFAC_NOMBRE.Text;
    vl_cliente  := RFacturaPreImpresa.QFacturaCLI_CODIGO.Value;
    vl_suc      := RFacturaPreImpresa.QFacturaSUC_CODIGO.Value;
    vl_factnum  := RFacturaPreImpresa.QFacturaFAC_NUMERO.Text;
    vl_adjunto1 := '.\Factura_No_'+vl_factnum+'.PDF';
    RFacturaPreImpresa.QRTHorton.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
    vl_adjunto2 := '';
    EnvioMail(RFacturaPreImpresa.QRTHorton,'Fac');

    end;
    end
    else if dm.QParametrospar_formato_preimpreso.Value = 'QRMSConsulting' then
    begin
    vl_clienteN := RFacturaPreImpresa.QFacturaFAC_NOMBRE.Text;
    vl_cliente  := RFacturaPreImpresa.QFacturaCLI_CODIGO.Value;
    vl_suc      := RFacturaPreImpresa.QFacturaSUC_CODIGO.Value;
    vl_factnum  := RFacturaPreImpresa.QFacturaFAC_NUMERO.Text;
    vl_adjunto1 := '.\Factura_No_'+vl_factnum+'.PDF';
    RFacturaPreImpresa.QRMSConsulting.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
    vl_adjunto2 := '';
    EnvioMail(RFacturaPreImpresa.QRMSConsulting,'Fac');
    end
    else if dm.QParametrospar_formato_preimpreso.Value = 'QRImpresosDuran' then
    begin
      vl_clienteN := RFacturaPreImpresa.QFacturaFAC_NOMBRE.Text;
    vl_cliente  := RFacturaPreImpresa.QFacturaCLI_CODIGO.Value;
    vl_suc      := RFacturaPreImpresa.QFacturaSUC_CODIGO.Value;
    vl_factnum  := RFacturaPreImpresa.QFacturaFAC_NUMERO.Text;
    vl_adjunto1 := '.\Factura_No_'+vl_factnum+'.PDF';
    RFacturaPreImpresa.QRImpresosDuran.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
    vl_adjunto2 := '';
    EnvioMail(RFacturaPreImpresa.QRImpresosDuran,'Fac');
    end
    else if dm.QParametrospar_formato_preimpreso.Value = 'QRMadeco' then
    begin
    vl_clienteN := RFacturaPreImpresa.QFacturaFAC_NOMBRE.Text;
    vl_cliente  := RFacturaPreImpresa.QFacturaCLI_CODIGO.Value;
    vl_suc      := RFacturaPreImpresa.QFacturaSUC_CODIGO.Value;
    vl_factnum  := RFacturaPreImpresa.QFacturaFAC_NUMERO.Text;
    vl_adjunto1 := '.\Factura_No_'+vl_factnum+'.PDF';
    RFacturaPreImpresa.QRMadeco.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
    vl_adjunto2 := '';
    EnvioMail(RFacturaPreImpresa.QRMadeco,'Fac');
    end else if DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados' then begin
      application.createform(TRFacturaSarita, RFacturaSarita);
      RFacturaSarita.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
      RFacturaSarita.QFactura.Parameters.ParamByName('tipo').Value   := QMovimientosTFA_CODIGO.Value;
      RFacturaSarita.QFactura.Parameters.ParamByName('forma').Value  := QMovimientosFAC_FORMA.Value;
      RFacturaSarita.QFactura.Parameters.ParamByName('numero').Value := QMovimientosMOV_NUMERO.Value;
      RFacturaSarita.QFactura.Parameters.ParamByName('suc').Value    := QMovimientosSUC_CODIGO.Value;
      RFacturaSarita.QFactura.open;
      RFacturaSarita.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      RFacturaSarita.QDetalle.open;
      vl_clienteN := RFacturaSarita.QFacturaFAC_NOMBRE.Text;
      vl_cliente  := RFacturaSarita.QFacturaCLI_CODIGO.Value;
      vl_suc      := RFacturaSarita.QFacturaSUC_CODIGO.Value;
      vl_factnum  := RFacturaSarita.QFacturaFAC_NUMERO.Text;
      vl_adjunto1 := '.\Factura_No_'+vl_factnum+'.PDF';
      RFacturaSarita.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
      vl_adjunto2 := '';
      EnvioMail(RFacturaSarita,'Fac');
       end else if DM.QParametrospar_formato_preimpreso.Value = 'Cepinta' then begin
      qFacturaOrdTaller.Parameters.ParamByName('emp').Value    := DM.vp_cia;
      qFacturaOrdTaller.Parameters.ParamByName('num').Value := QMovimientosMOV_NUMERO.value;
      qFacturaOrdTaller.Parameters.ParamByName('suc').Value := QMovimientosSUC_CODIGO.Value;
      qFacturaOrdTaller.Parameters.ParamByName('tip').Value := QMovimientosTFA_CODIGO.Value;
      qFacturaOrdTaller.open;
      if qFacturaOrdTaller.RecordCount = 0 then begin
      vl_clienteN := RFacturaPreImpresa.QFacturaFAC_NOMBRE.Text;
      vl_cliente  := RFacturaPreImpresa.QFacturaCLI_CODIGO.Value;
      vl_suc      := RFacturaPreImpresa.QFacturaSUC_CODIGO.Value;
      vl_factnum  := RFacturaPreImpresa.QFacturaFAC_NUMERO.Text;
      vl_adjunto1 := '.\Factura_No_'+vl_factnum+'.PDF';
      RFacturaPreImpresa.QRBelkis.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
      vl_adjunto2 := '';
      EnvioMail(RFacturaPreImpresa.QRBelkis,'Fac');
      end else begin
      //Rpt_FacOrdTaller.ShowReport();
      vl_adjunto1 := '.\Factura_No_'+QMovimientosMOV_NUMERO.Text+'.PDF';
      frxPDFExport1.FileName := vl_adjunto1;
      Rpt_FacOrdTaller.PrepareReport();
      Rpt_FacOrdTaller.Export(frxPDFExport1);
      EnvioMail2('Fac');
      end;
      end else if ((DM.QParametrospar_formato_preimpreso.Value = 'SteelTec') ) then begin
      application.createform(TRFacturaSteelTec, RFacturaSteelTec);
      RFacturaSteelTec.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
      RFacturaSteelTec.QFactura.Parameters.ParamByName('tipo').Value   := QMovimientosTFA_CODIGO.Value;
      RFacturaSteelTec.QFactura.Parameters.ParamByName('forma').Value  := QMovimientosFAC_FORMA.Value;
      RFacturaSteelTec.QFactura.Parameters.ParamByName('numero').Value := QMovimientosMOV_NUMERO.Value;
      RFacturaSteelTec.QFactura.Parameters.ParamByName('suc').Value    := QMovimientosSUC_CODIGO.Value;
      RFacturaSteelTec.QFactura.open;
      RFacturaSteelTec.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      RFacturaSteelTec.QDetalle.open;
      vl_clienteN := RFacturaSteelTec.QFacturaFAC_NOMBRE.Text;
      vl_cliente  := RFacturaSteelTec.QFacturaCLI_CODIGO.Value;
      vl_suc      := RFacturaSteelTec.QFacturaSUC_CODIGO.Value;
      vl_factnum  := RFacturaSteelTec.QFacturaFAC_NUMERO.Text;
      vl_adjunto1 := '.\Factura_No_'+vl_factnum+'.PDF';
      RFacturaSteelTec.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
      vl_adjunto2 := '';
      EnvioMail(RFacturaSteelTec,'Fac');
       end else if DM.QParametrospar_formato_preimpreso.Value = 'Construccion' then begin
      application.createform(TRFacturaSteelTec, RFacturaSteelTec);
      RFacturaSteelTec.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
      RFacturaSteelTec.QFactura.Parameters.ParamByName('tipo').Value   := QMovimientosTFA_CODIGO.Value;
      RFacturaSteelTec.QFactura.Parameters.ParamByName('forma').Value  := QMovimientosFAC_FORMA.Value;
      RFacturaSteelTec.QFactura.Parameters.ParamByName('numero').Value := QMovimientosMOV_NUMERO.Value;
      RFacturaSteelTec.QFactura.Parameters.ParamByName('suc').Value    := QMovimientosSUC_CODIGO.Value;
      RFacturaSteelTec.QFactura.open;
      RFacturaSteelTec.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      RFacturaSteelTec.QDetalle.open;
      vl_clienteN := RFacturaSteelTec.QFacturaFAC_NOMBRE.Text;
      vl_cliente  := RFacturaSteelTec.QFacturaCLI_CODIGO.Value;
      vl_suc      := RFacturaSteelTec.QFacturaSUC_CODIGO.Value;
      vl_factnum  := RFacturaSteelTec.QFacturaFAC_NUMERO.Text;
      vl_adjunto1 := '.\Factura_No_'+vl_factnum+'.PDF';
      RFacturaSteelTec.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
      vl_adjunto2 := '';
      EnvioMail(RFacturaSteelTec,'Fac');

    end else

    if dm.QParametrospar_formato_preimpreso.Value = 'QClinico' then
    begin
    if MessageDlg('Desea imprimir el detalle de facturas y records?',mtConfirmation, [mbyes,mbno], 0) = mryes then
      begin
        application.createform(tRFacturaClinico, RFacturaClinico);
        RFacturaClinico.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
        RFacturaClinico.QFactura.Parameters.ParamByName('tipo').Value   := QMovimientosTFA_CODIGO.value;
        RFacturaClinico.QFactura.Parameters.ParamByName('forma').Value  := QMovimientosFAC_FORMA.value;
        RFacturaClinico.QFactura.Parameters.ParamByName('numero').Value := QMovimientosMOV_NUMERO.value;
        RFacturaClinico.QFactura.Parameters.ParamByName('suc').Value    := QMovimientosSUC_CODIGO.Value;
        RFacturaClinico.QFactura.open;
        vl_clienteN := RFacturaClinico.QFacturaFAC_NOMBRE.Text;
        vl_cliente  := RFacturaClinico.QFacturaCLI_CODIGO.Value;
        vl_suc      := RFacturaClinico.QFacturaSUC_CODIGO.Value;
        vl_factnum  := RFacturaClinico.QFacturaFAC_NUMERO.Text;
        vl_adjunto1 := '.\Factura_No_'+vl_factnum+'.PDF';
        RFacturaClinico.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
        vl_adjunto2 := '';
        EnvioMail(RFacturaClinico,'Fac');
      end;
    end;
  end
  else if (dm.QParametrospar_fac_preimpresa.Value = 'True') and (dm.QParametrospar_formato_preimpreso.Value = 'Grabado_Exento') then
  begin
    application.createform(tRFacturaGrabadoExento, RFacturaGrabadoExento);
    RFacturaGrabadoExento.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
    RFacturaGrabadoExento.QFactura.Parameters.ParamByName('tipo').Value   := QMovimientosTFA_CODIGO.value;
    RFacturaGrabadoExento.QFactura.Parameters.ParamByName('forma').Value  := QMovimientosFAC_FORMA.value;
    RFacturaGrabadoExento.QFactura.Parameters.ParamByName('numero').Value := QMovimientosMOV_NUMERO.value;
    RFacturaGrabadoExento.QFactura.Parameters.ParamByName('suc').Value    := QMovimientosSUC_CODIGO.Value;
    RFacturaGrabadoExento.QFactura.open;
    RFacturaGrabadoExento.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    RFacturaGrabadoExento.QDetalle.open;
    vl_clienteN := RFacturaGrabadoExento.QFacturaFAC_NOMBRE.Text;
    vl_cliente  := RFacturaGrabadoExento.QFacturaCLI_CODIGO.Value;
    vl_suc      := RFacturaGrabadoExento.QFacturaSUC_CODIGO.Value;
    vl_factnum  := RFacturaGrabadoExento.QFacturaFAC_NUMERO.Text;
    vl_adjunto1 := '.\Factura_No_'+vl_factnum+'.PDF';
    RFacturaGrabadoExento.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
    vl_adjunto2 := '';
    EnvioMail(RFacturaGrabadoExento,'Fac');

  end
  else
  begin
    if ((FormatoImp = 2) OR FileExists('.\Transporte.Txt')) then
    begin
      if not (DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados') then begin
      application.createform(tRFactura, RFactura);
      RFactura.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
      RFactura.QFactura.Parameters.ParamByName('tipo').Value   := QMovimientosTFA_CODIGO.Value;
      RFactura.QFactura.Parameters.ParamByName('forma').Value  := QMovimientosFAC_FORMA.Value;
      RFactura.QFactura.Parameters.ParamByName('numero').Value := QMovimientosMOV_NUMERO.Value;
      RFactura.QFactura.Parameters.ParamByName('suc').Value := QMovimientosSUC_CODIGO.Value;
      RFactura.QFactura.open;
      RFactura.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      RFactura.QDetalle.open;
      vl_clienteN := RFactura.QFacturaFAC_NOMBRE.Text;
      vl_cliente  := RFactura.QFacturaCLI_CODIGO.Value;
      vl_suc      := RFactura.QFacturaSUC_CODIGO.Value;
      vl_factnum  := RFactura.QFacturaFAC_NUMERO.Text;
      vl_adjunto1 := '.\Factura_No_'+vl_factnum+'.PDF';
      RFactura.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
      vl_adjunto2 := '';
      EnvioMail(RFactura,'Fac');
      end;
    end
    else if FormatoImp = 3 then
    begin
      if MessageDlg('Desea imprimir en impresora grande?',mtConfirmation,[mbyes,mbno],0) = mryes then
      begin
        application.createform(tRFactura, RFactura);
        RFactura.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
        RFactura.QFactura.Parameters.ParamByName('tipo').Value   := QMovimientosTFA_CODIGO.Value;
        RFactura.QFactura.Parameters.ParamByName('forma').Value  := QMovimientosFAC_FORMA.Value;
        RFactura.QFactura.Parameters.ParamByName('numero').Value := QMovimientosMOV_NUMERO.Value;
        RFactura.QFactura.Parameters.ParamByName('suc').Value := QMovimientosSUC_CODIGO.Value;
        RFactura.QFactura.open;
        RFactura.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
        RFactura.QDetalle.open;
        vl_clienteN := RFactura.QFacturaFAC_NOMBRE.Text;
        vl_cliente  := RFactura.QFacturaCLI_CODIGO.Value;
        vl_suc      := RFactura.QFacturaSUC_CODIGO.Value;
        vl_factnum  := RFactura.QFacturaFAC_NUMERO.Text;
        vl_adjunto1 := '.\Factura_No_'+vl_factnum+'.PDF';
        RFactura.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
        vl_adjunto2 := '';
        EnvioMail(RFactura,'Fac');

      end
      else
        Imp40ColumnasFac
    end
    else if FormatoImp = 4 then
    begin
      application.createform(tRFacturaElegante, RFacturaElegante);
      RFacturaElegante.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
      RFacturaElegante.QFactura.Parameters.ParamByName('tipo').Value   := QMovimientosTFA_CODIGO.Value;
      RFacturaElegante.QFactura.Parameters.ParamByName('forma').Value  := QMovimientosFAC_FORMA.Value;
      RFacturaElegante.QFactura.Parameters.ParamByName('numero').Value := QMovimientosMOV_NUMERO.Value;
      RFacturaElegante.QFactura.Parameters.ParamByName('suc').Value    := QMovimientosSUC_CODIGO.Value;
      RFacturaElegante.QFactura.open;
      RFacturaElegante.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      RFacturaElegante.QDetalle.open;
      vl_clienteN := RFacturaElegante.QFacturaFAC_NOMBRE.Text;
      vl_cliente  := RFacturaElegante.QFacturaCLI_CODIGO.Value;
      vl_suc      := RFacturaElegante.QFacturaSUC_CODIGO.Value;
      vl_factnum  := RFacturaElegante.QFacturaFAC_NUMERO.Text;
      vl_adjunto1 := '.\Factura_No_'+vl_factnum+'.PDF';
      RFacturaElegante.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
      vl_adjunto2 := '';
      EnvioMail(RFacturaElegante,'Fac');
    end
    else if FormatoImp = 5 then
    begin
      application.createform(tRFactura2Columnas, RFactura2Columnas);
      RFactura2Columnas.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
      RFactura2Columnas.QFactura.Parameters.ParamByName('tipo').Value   := QMovimientosTFA_CODIGO.Value;
      RFactura2Columnas.QFactura.Parameters.ParamByName('forma').Value  := QMovimientosFAC_FORMA.Value;
      RFactura2Columnas.QFactura.Parameters.ParamByName('numero').Value := QMovimientosMOV_NUMERO.Value;
      RFactura2Columnas.QFactura.Parameters.ParamByName('suc').Value    := QMovimientosSUC_CODIGO.Value;
      RFactura2Columnas.QFactura.open;
      RFactura2Columnas.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      RFactura2Columnas.QDetalle.open;
      vl_clienteN := RFactura2Columnas.QFacturaFAC_NOMBRE.Text;
      vl_cliente  := RFactura2Columnas.QFacturaCLI_CODIGO.Value;
      vl_suc      := RFactura2Columnas.QFacturaSUC_CODIGO.Value;
      vl_factnum  := RFactura2Columnas.QFacturaFAC_NUMERO.Text;
      vl_adjunto1 := '.\Factura_No_'+vl_factnum+'.PDF';
      RFactura2Columnas.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
      vl_adjunto2 := '';
      EnvioMail(RFactura2Columnas,'Fac');
    end;
  end;          {
  if DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados' then begin
      application.createform(TRFacturaSarita, RFacturaSarita);
      RFacturaSarita.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
      RFacturaSarita.QFactura.Parameters.ParamByName('tipo').Value   := QMovimientosTFA_CODIGO.Value;
      RFacturaSarita.QFactura.Parameters.ParamByName('forma').Value  := QMovimientosFAC_FORMA.Value;
      RFacturaSarita.QFactura.Parameters.ParamByName('numero').Value := QMovimientosFAC_NUMERO.Value;
      RFacturaSarita.QFactura.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
      RFacturaSarita.QFactura.open;
      RFacturaSarita.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      RFacturaSarita.QDetalle.open;
      RFacturaSarita.lbReimpresion.Enabled := True;
      RFacturaSarita.PrinterSetup;
      RFacturaSarita.Preview;
      RFacturaSarita.Destroy;
      end;     }

      if ((DM.QParametrospar_formato_preimpreso.Value = 'SteelTec') ) then begin
      application.createform(TRFacturaSteelTec, RFacturaSteelTec);
      RFacturaSteelTec.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
      RFacturaSteelTec.QFactura.Parameters.ParamByName('tipo').Value   := QMovimientosTFA_CODIGO.Value;
      RFacturaSteelTec.QFactura.Parameters.ParamByName('forma').Value  := QMovimientosFAC_FORMA.Value;
      RFacturaSteelTec.QFactura.Parameters.ParamByName('numero').Value := QMovimientosMOV_NUMERO.Value;
      RFacturaSteelTec.QFactura.Parameters.ParamByName('suc').Value    := QMovimientosSUC_CODIGO.Value;
      RFacturaSteelTec.QFactura.open;
      RFacturaSteelTec.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      RFacturaSteelTec.QDetalle.open;
      vl_clienteN := RFacturaSteelTec.QFacturaFAC_NOMBRE.Text;
      vl_cliente  := RFacturaSteelTec.QFacturaCLI_CODIGO.Value;
      vl_suc      := RFacturaSteelTec.QFacturaSUC_CODIGO.Value;
      vl_factnum  := RFacturaSteelTec.QFacturaFAC_NUMERO.Text;
      vl_adjunto1 := '.\Factura_No_'+vl_factnum+'.PDF';
      RFacturaSteelTec.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
      vl_adjunto2 := '';
      EnvioMail(RFacturaSteelTec,'Fac');
      end;

       if ( (dm.QParametrospar_formato_preimpreso.Value = 'Construccion')) then begin
      application.createform(TRFacturaConstruccion, RFacturaContruccion);
      RFacturaContruccion.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
      RFacturaContruccion.QFactura.Parameters.ParamByName('tipo').Value   := QMovimientosTFA_CODIGO.Value;
      RFacturaContruccion.QFactura.Parameters.ParamByName('forma').Value  := QMovimientosFAC_FORMA.Value;
      RFacturaContruccion.QFactura.Parameters.ParamByName('numero').Value := QMovimientosMOV_NUMERO.Value;
      RFacturaContruccion.QFactura.Parameters.ParamByName('suc').Value    := QMovimientosSUC_CODIGO.Value;
      RFacturaContruccion.QFactura.open;
      RFacturaContruccion.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      RFacturaContruccion.QDetalle.open;
      vl_clienteN := RFacturaContruccion.QFacturaFAC_NOMBRE.Text;
      vl_cliente  := RFacturaContruccion.QFacturaCLI_CODIGO.Value;
      vl_suc      := RFacturaContruccion.QFacturaSUC_CODIGO.Value;
      vl_factnum  := RFacturaContruccion.QFacturaFAC_NUMERO.Text;
      vl_adjunto1 := '.\Factura_No_'+vl_factnum+'.PDF';
      RFacturaContruccion.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
      vl_adjunto2 := '';
      EnvioMail(RFacturaContruccion,'Fac');
      end;

end;

procedure TfrmConsCxC.Correo1Click(Sender: TObject);
begin
GenerarFactura;
end;

procedure TfrmConsCxC.btnEmailClick(Sender: TObject);
begin
vl_clienteN := QClienteCLI_NOMBRE.Text;
vl_cliente  := QClienteCLI_CODIGO.Value;
vl_suc      := QMovimientosSUC_CODIGO.Value;
GenerarEstadoCxC;
vl_adjunto2 := '';
EnvioMail2('Est');
end;



procedure TfrmConsCxC.AplicarNC1Click(Sender: TObject);
begin
  search.Query.clear;
  search.Query.add('select ncr_numero, ncr_fecha, ncr_monto Monto, isnull(ncr_montousado,0) MontoUsado, ncr_monto - isnull(ncr_montousado,0) disponible');
  search.Query.add('from NotasCredito where ncr_montousado < ncr_monto and cli_codigo = '+QClienteCLI_CODIGO.Text);
  search.Query.add('and emp_codigo = '+QClienteEMP_CODIGO.Text);
  search.AliasFields.clear;
  search.AliasFields.add('Numero');
  search.AliasFields.add('Fecha');
  search.AliasFields.add('MontoNC');
  search.AliasFields.add('MontoUsado');
  Search.ResultField := 'ncr_numero';
  search.Title := 'Notas de Credito Pendientes por Aplicar';
  if search.execute then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select ncr_numero, ncr_fecha, ncr_monto, ncr_montousado, suc_codigo from NotasCredito');
    dm.Query1.sql.add('where cli_codigo = '+QClienteCLI_CODIGO.Text);
    dm.Query1.sql.add('and emp_codigo = '+QClienteEMP_CODIGO.Text);
    dm.Query1.sql.add('and suc_codigo = '+QMovimientosSUC_CODIGO.Text);
    dm.Query1.sql.add('and ncr_numero ='+Search.ValueField);
    dm.Query1.open;
    IF dm.Query1.FieldByName('SUC_CODIGO').Value <> QMovimientosSUC_CODIGO.Value THEN BEGIN
    ShowMessage('No se puede aplicar una Nota de Credito a una factura de otra sucursal....');
    Abort;
    end
    else
    begin
    //APLICANDO NOTA DE CREDITO
    qAplicaNC.Close;
    qAplicaNC.Parameters.ParamByName('NCID').Value := StrToInt(Search.ValueField);
    qAplicaNC.Parameters.ParamByName('EMP').Value  := dm.vp_cia;
    qAplicaNC.Parameters.ParamByName('SUC').Value  := QMovimientosSUC_CODIGO.Value;
    qAplicaNC.Parameters.ParamByName('FAC').Value  := QMovimientosMOV_NUMERO.Value;
    qAplicaNC.Parameters.ParamByName('TIPO').Value := QMovimientosMOV_TIPO.Value;
    qAplicaNC.Parameters.ParamByName('FOR').Value  := QMovimientosFAC_FORMA.Value;
    qAplicaNC.Parameters.ParamByName('TFA').Value  := QMovimientosTFA_CODIGO.Value;
    qAplicaNC.ExecSQL;
    ShowMessage('Aplicada correctamente...');
    end;

    btRefreshClick(self);
end;
end;

procedure TfrmConsCxC.RepararFacturas1Click(Sender: TObject);
begin
  if MessageDlg('DESEA REPARAR LOS BALANCES DE LAS FACTURAS?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    Application.CreateForm(tfrmActBalance, frmActBalance);
    frmActBalance.Update;
    frmActBalance.Label1.Caption := 'Espere un momento reparando balances...';
    qRepBalanceFact.Close;
    qRepBalanceFact.Parameters.ParamByName('emp').Value := dm.vp_cia;
    qRepBalanceFact.Parameters.ParamByName('cli').Value := QClienteCLI_CODIGO.Value;
    qRepBalanceFact.ExecSQL;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('execute pr_actualiza_bce :emp');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.ExecSQL;
    frmActBalance.Close;
  end;
end;

end.

