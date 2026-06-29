unit PVENTA24;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Grids, DBGrids, DB,
  IBCustomDataSet, IBQuery, IBUpdateSQL, ComCtrls, ADODB,
  QuerySearchDlgADO, DBGridObj, frxClass, frxDBSet, QRPDFFilt, QuickRpt, QRCtrls,
  Variants, QRExport;

type
  TfrmRecibos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ckIngreso: TRadioButton;
    ckCobro: TRadioButton;
    SpeedButton2: TSpeedButton;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    edCliente: TEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    GridForma: TDBGrid;
    Label2: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    QRecibos: TADOQuery;
    QFormasPago: TADOQuery;
    QDoc: TADOQuery;
    QForma: TADOQuery;
    dsRecibo: TDataSource;
    dsFormaPago: TDataSource;
    dsForma: TDataSource;
    dsDoc: TDataSource;
    QRecibosCLI_CODIGO: TIntegerField;
    QRecibosEMP_CODIGO: TIntegerField;
    QRecibosREC_CONCEPTO: TIBStringField;
    QRecibosREC_DESCUENTO: TFloatField;
    QRecibosREC_FECHA: TDateTimeField;
    QRecibosREC_MONTO: TIBBCDField;
    QRecibosREC_NOMBRE: TIBStringField;
    QRecibosREC_NUMERO: TIntegerField;
    QRecibosREC_NUMEROMANUAL: TIBStringField;
    QRecibosREC_STATUS: TIBStringField;
    QRecibosREC_TIPO: TIBStringField;
    QRecibosUSU_CODIGO: TIntegerField;
    QRecibosVEN_CODIGO: TIntegerField;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    Search: TQrySearchDlgADO;
    QDocDET_NUMERO: TIntegerField;
    QDocDET_PENDIENTE: TFloatField;
    QDocDET_SECUENCIA: TIntegerField;
    QDocDET_TIPO: TIBStringField;
    QDocEMP_CODIGO: TIntegerField;
    QDocREC_NUMERO: TIntegerField;
    QDocFAC_FORMA: TIBStringField;
    QDocTFA_CODIGO: TIntegerField;
    QDocDET_FECHA: TDateTimeField;
    QFormasPagoEMP_CODIGO: TIntegerField;
    QFormasPagoFOR_DESCRIPCION: TIBStringField;
    QFormasPagoFOR_MONTO: TFloatField;
    QFormasPagoFPA_CODIGO: TIntegerField;
    QFormasPagoREC_NUMERO: TIntegerField;
    QFormaFPA_CODIGO: TIntegerField;
    QFormaFPA_NOMBRE: TIBStringField;
    DBEdit7: TDBEdit;
    QRecibosCAJ_CODIGO: TIntegerField;
    Label12: TLabel;
    btVendedor: TSpeedButton;
    dbVendedor: TDBEdit;
    tVendedor: TEdit;
    QRecibosREC_COMISION: TFloatField;
    QRecibosREC_PORCCOMISION: TFloatField;
    Query1: TADOQuery;
    QDocSec: TIntegerField;
    QDocDET_CUOTA: TIBStringField;
    QDocMOV_CUOTA: TIntegerField;
    QRecibosREC_CONCEPTO2: TIBStringField;
    btGrabar: TSpeedButton;
    btLimpiar: TSpeedButton;
    btClose: TSpeedButton;
    DBEdit8: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GridMov: TDBGrid;
    QDetalle: TADOQuery;
    dsDetalle: TDataSource;
    QDetalleCAT_CUENTA: TIBStringField;
    QDetalleCAT_NOMBRE: TIBStringField;
    QDetalleREC_NUMERO: TIntegerField;
    QDetalleDET_MONTO: TFloatField;
    QDetalleDET_ORIGEN: TIBStringField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    Panel4: TPanel;
    lbSaldo: TStaticText;
    lbAplicar: TStaticText;
    btBuscaCta: TSpeedButton;
    btElimina: TSpeedButton;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    lbCR: TStaticText;
    lbDB: TStaticText;
    lbBAL: TStaticText;
    lbFacturas: TStaticText;
    btBuscaCli: TSpeedButton;
    QRecibosPED_TIPO: TStringField;
    QRecibosPED_NUMERO: TIntegerField;
    Label13: TLabel;
    DBEdit9: TDBEdit;
    SpeedButton1: TSpeedButton;
    QRecibosSUC_CODIGO: TIntegerField;
    Label14: TLabel;
    QFormasPagoSUC_CODIGO: TIntegerField;
    QDocSUC_CODIGO: TIntegerField;
    QDetalleSUC_CODIGO: TIntegerField;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    QRecibosrec_comisionpagada: TBCDField;
    QRecibosrec_porc_descuento: TBCDField;
    QDocdet_descuento: TBCDField;
    QDocDescuento: TFloatField;
    DBEdit10: TDBEdit;
    QRecibosrec_caja: TIntegerField;
    Label16: TLabel;
    btcaja: TSpeedButton;
    dbCaja: TDBEdit;
    tcaja: TEdit;
    QRecibospro_codigo: TIntegerField;
    Panel3: TPanel;
    Label17: TLabel;
    lbBalance: TStaticText;
    QDocdet_totalitbis: TBCDField;
    QDocmon_codigo: TIntegerField;
    QDocmon_sigla: TStringField;
    Label1: TLabel;
    btmoneda: TSpeedButton;
    tmoneda: TEdit;
    QRecibosmon_codigo: TIntegerField;
    QDocmon_tasa: TBCDField;
    QRecibosrec_tasa: TBCDField;
    QDocConversion: TFloatField;
    DBEdit1: TDBEdit;
    SpeedButton3: TSpeedButton;
    lbDesc: TStaticText;
    Label7: TLabel;
    lbDescAplicado: TStaticText;
    QDocdet_porc_descuento: TBCDField;
    QRetenciones: TADOQuery;
    dsRet: TDataSource;
    QRetencionesemp_codigo: TIntegerField;
    QRetencionessuc_codigo: TIntegerField;
    QRetencionesrec_numero: TIntegerField;
    QRetencionesret_codigo: TIntegerField;
    QRetencionesdet_nombre: TStringField;
    QRetencionesdet_porciento: TBCDField;
    QRetencionesdet_monto: TBCDField;
    QRetencionesdet_secuencia: TIntegerField;
    QRetencionesdet_cuenta: TStringField;
    TabSheet3: TTabSheet;
    Panel5: TPanel;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    GridRet: TDBGrid;
    Label19: TLabel;
    DBEdit11: TDBEdit;
    QRecibosrec_retencion: TBCDField;
    QRecibosrec_interes: TBCDField;
    Label20: TLabel;
    DBEdit12: TDBEdit;
    QCentro: TADOQuery;
    dsCentro: TDataSource;
    QCentroemp_codigo: TIntegerField;
    QCentrosuc_codigo: TIntegerField;
    QCentrorec_numero: TIntegerField;
    QCentrocen_codigo: TIntegerField;
    QCentrodet_secuencia: TIntegerField;
    QCentrocen_nombre: TStringField;
    ckautomatico: TCheckBox;
    QDocdet_interes: TBCDField;
    QDocTotalInteres: TFloatField;
    QDocdet_vence: TDateTimeField;
    QDocdet_totalinteres: TBCDField;
    
    spcentros: TSpeedButton;
    QCentrodet_monto: TBCDField;
    QCentrocen_referencia: TStringField;
    QCentrosub_referencia: TStringField;
    QCentrosub_secuencia: TIntegerField;
    QCentrocat_cuenta: TStringField;
    DBCheckBox1: TDBCheckBox;
    Label18: TLabel;
    lbVencido: TStaticText;
    lbCant: TStaticText;
    PageControl2: TPageControl;
    Bal: TTabSheet;
    Doc: TTabSheet;
    DBGrid1: TDBGrid;
    dsDocPendiente: TDataSource;
    QDocPendiente: TADOQuery;
    QDocPendientetmo_nombre: TStringField;
    QDocPendientecantida: TIntegerField;
    dbedtNumReserva: TDBEdit;
    btnReserva: TSpeedButton;
    edtNoReserva: TEdit;
    QRecibosNUMERO_RESERVA: TIntegerField;
    Label15: TLabel;
    qMora: TADOQuery;
    QDocDET_MORA: TCurrencyField;
    QRecibosREC_MORA: TCurrencyField;
    Label21: TLabel;
    dbedtREC_MORA: TDBEdit;
    GridCuentas: TDBGridObj;
    qRepRecibo: TADOQuery;
    DB_RepRecibo: TfrxDBDataset;
    Rpt_Recibo_Det: TfrxReport;
    qRepReciboEMPRESA: TStringField;
    qRepReciboDIRECCION: TStringField;
    qRepReciboLOCALIDAD: TStringField;
    qRepReciboTELEFONO: TStringField;
    qRepReciboRNC: TStringField;
    qRepReciboRECIBO: TStringField;
    qRepReciboFECHA: TDateTimeField;
    qRepReciboMONEDA: TStringField;
    qRepReciboCLIENTE: TStringField;
    qRepRecibocli_nombre: TStringField;
    qRepReciboMONTOLET: TStringField;
    qRepReciboMONTO: TBCDField;
    qRepReciboDESCUENTO: TBCDField;
    qRepReciboMORA: TBCDField;
    qRepReciboRETENCION: TBCDField;
    qRepReciboVENDEDOR: TStringField;
    qRepReciboBALANCE: TBCDField;
    qRepRecibofac_numero: TIntegerField;
    qRepReciboFAC_FECHA: TDateTimeField;
    qRepReciboPROD: TStringField;
    qRepReciboPRODUCTO: TStringField;
    qRepReciboCANTIDAD: TBCDField;
    qRepReciboDET_PRECIO: TBCDField;
    qRepReciboTOTAL: TBCDField;
    qDetRepRecibo: TADOQuery;
    DB_DetRepRecibo: TfrxDBDataset;
    qDetRepRecibofpa_nombre: TStringField;
    qDetRepReciboMONTO: TBCDField;
    qRepReciboREALIZADO: TStringField;
    chkMail: TCheckBox;
    mmo1: TMemo;
    pnCorreo: TPanel;
    qEjecutar: TADOQuery;
    QDocDET_MONTO: TCurrencyField;
    QDocSaldo: TCurrencyField;
    qQuery: TADOQuery;
    qRepBalanceFact: TADOQuery;
    QFormasPagoFORMA: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QRecibosNewRecord(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure QRecibosCLI_CODIGOChange(Sender: TField);
    procedure QDocAfterInsert(DataSet: TDataSet);
    procedure GridMovEnter(Sender: TObject);
    procedure GridMovColEnter(Sender: TObject);
    procedure QFormasPagoAfterInsert(DataSet: TDataSet);
    procedure GridFormaEnter(Sender: TObject);
    procedure GridFormaColEnter(Sender: TObject);
    procedure GridFormaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridMovKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QFormasPagoAfterPost(DataSet: TDataSet);
    procedure QDocAfterPost(DataSet: TDataSet);
    procedure QRecibosREC_MONTOChange(Sender: TField);
    procedure btGrabarClick(Sender: TObject);
    procedure QFormasPagoBeforeDelete(DataSet: TDataSet);
    procedure QDocBeforeDelete(DataSet: TDataSet);
    procedure QRecibosBeforePost(DataSet: TDataSet);
    procedure QDocBeforePost(DataSet: TDataSet);
    procedure ckIngresoClick(Sender: TObject);
    procedure ckCobroClick(Sender: TObject);
    procedure btLimpiarClick(Sender: TObject);
    procedure btVendedorClick(Sender: TObject);
    procedure QRecibosVEN_CODIGOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure QDocCalcFields(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
    procedure QDetalleCAT_CUENTAChange(Sender: TField);
    procedure GridCuentasColEnter(Sender: TObject);
    procedure GridCuentasEnter(Sender: TObject);
    procedure GridCuentasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btEliminaClick(Sender: TObject);
    procedure btBuscaCtaClick(Sender: TObject);
    procedure QDetalleAfterDelete(DataSet: TDataSet);
    procedure QDetalleAfterPost(DataSet: TDataSet);
    procedure QDetalleBeforePost(DataSet: TDataSet);
    procedure QDetalleNewRecord(DataSet: TDataSet);
    procedure btBuscaCliClick(Sender: TObject);
    procedure QRecibosREC_DESCUENTOChange(Sender: TField);
    procedure SpeedButton1Click(Sender: TObject);
    procedure QRecibosPED_NUMEROChange(Sender: TField);
    procedure QRecibosrec_porc_descuentoChange(Sender: TField);
    procedure btcajaClick(Sender: TObject);
    procedure QRecibosrec_cajaGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure btmonedaClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure GridRetColEnter(Sender: TObject);
    procedure GridRetEnter(Sender: TObject);
    procedure GridRetKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure QRetencionesret_codigoChange(Sender: TField);
    procedure QRetencionesdet_montoChange(Sender: TField);
    procedure QRetencionesAfterPost(DataSet: TDataSet);
    procedure QRetencionesAfterDelete(DataSet: TDataSet);
    procedure QCentroBeforePost(DataSet: TDataSet);
    procedure QCentroNewRecord(DataSet: TDataSet);
    procedure ckautomaticoClick(Sender: TObject);
    procedure QRecibosrec_interesChange(Sender: TField);
    procedure GridCuentasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure spcentrosClick(Sender: TObject);
    procedure dsDocDataChange(Sender: TObject; Field: TField);
    procedure dsReciboDataChange(Sender: TObject; Field: TField);
    procedure DocShow(Sender: TObject);
    procedure DocExit(Sender: TObject);
    procedure btnReservaClick(Sender: TObject);
    procedure QRecibosNUMERO_RESERVAGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QDocAfterOpen(DataSet: TDataSet);
    procedure tmrCorreoTimer(Sender: TObject);
    procedure QRecibosREC_MORAChange(Sender: TField);
    procedure GridMovExit(Sender: TObject);
    procedure QDocPendienteBeforeOpen(DataSet: TDataSet);
    procedure DBLookupComboBox2CloseUp(Sender: TObject);
    procedure QFormasPagoBeforeOpen(DataSet: TDataSet);
    procedure QFormaBeforeOpen(DataSet: TDataSet);
  private
    vl_cliente, vl_suc, vl_ticket, vl_MovSec: Integer;
      vl_dest, vl_tipoclie, vl_clienteN, vl_asunto, vl_factnum, vl_adjunto1, vl_adjunto2, vl_cuerpo :String;
    { Private declarations }
    procedure EnvioMail(Reporte: TQuickRep; Tipo: String);
    function CalcComision:Double;
    procedure GenerarEstadoCxC;

  public
    { Public declarations }
    ins, Totaliza, Distri, SelCajero : boolean;
    Deuda, TotalDetalle, Balance, Pendiente, Aplicar, Comision,
    Creditos, Debitos, AFavor, totalpositivo, totalnegativo, vl_mora, vl_mora2 : double;
    Cajero, FormatoImp, caja : integer;
    PuertoImp, CtaCliente : string;

    procedure Distribuir;
    procedure Totalizar;
    procedure TotalizaFormas;
    procedure TotalizaCuentas;
    procedure Imp40Columnas;
    procedure Imp40ColumnasDet;

    procedure BuscaPendientes;
    procedure CorregirError;
    Procedure TotalizaRet;
  end;

var
  frmRecibos: TfrmRecibos;

implementation

uses PVENTA37, RVENTA32, SIGMA01, SIGMA00, DateUtils, SIGMA08, Math,
  StrUtils, RVENTA41, PVENTA230;

{$R *.DFM}

procedure TfrmRecibos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SelCajero = true then
  begin
    if messagedlg('SALIR DE ESTA PANTALLA?',
    mtconfirmation, [mbyes,mbno],0) = mrno then
      abort
    else
      action := cafree;
  end
  else
    action := cafree;
end;

procedure TfrmRecibos.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmRecibos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f5  then btBuscaCliClick(Self);
  if key = vk_f10 then close;
  if key = vk_f2  then btGrabarClick(Self);
  if key = vk_f3  then btLimpiarClick(Self);
end;

procedure TfrmRecibos.QRecibosNewRecord(DataSet: TDataSet);
begin
  lbBalance.Caption := '0.00';
  lbVencido.Caption := '0.00';
  CtaCliente := '';
  ckCobro.Checked;
  Balance   := 0;
  Pendiente := 0;
  Aplicar   := 0;
  Totaliza  := True;
  Distri    := True;
  Creditos  := 0;
  Debitos   := 0;
  AFavor    := 0;
  vl_mora2   := 0;
  lbSaldo.caption   := '0.00';
  lbAplicar.caption     := '0.00';
  PageControl1.TabIndex := 0;

  QRecibosrec_caja.Value     := caja;
  QRecibosREC_COMISION.Value := 0;
  QRecibosrec_comisionpagada.Value := 0;
  QRecibosSUC_CODIGO.Value :=  QSucursalsuc_codigo.Value;
  QRecibosCAJ_CODIGO.value := Cajero;
  QRecibosEMP_CODIGO.value := dm.vp_cia;
  QRecibosREC_FECHA.value  := date;
  QRecibosREC_STATUS.value := 'EMI';
  QRecibosUSU_CODIGO.value := dm.Usuario;
  QRecibosmon_codigo.Value := dm.QParametrosMON_CODIGO.Value;
  QRecibosrec_descuento.Value := 0;
  QRecibosrec_retencion.Value := 0;
  QRecibosrec_interes.Value   := 0;

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select mon_sigla, MON_RELACIONPESOCOMPRA from moneda');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and mon_codigo = :mon');
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.parambyname('mon').Value := dm.QParametrosMON_CODIGO.Value;
  dm.Query1.open;
  tmoneda.Text := dm.Query1.FieldByName('mon_sigla').AsString;
  QRecibosREC_TASA.Value := dm.Query1.FieldByName('MON_RELACIONPESOCOMPRA').Value;

  QDoc.close;
  QDoc.Parameters.parambyname('emp').Value    := dm.vp_cia;
  QDoc.Parameters.parambyname('numero').Value := -1;
  QDoc.Parameters.parambyname('suc').Value := -1;
  QDoc.open;

  QFormasPago.close;
  QFormasPago.Parameters.parambyname('emp').Value    := dm.vp_cia;
  QFormasPago.Parameters.parambyname('numero').Value := -1;
  QFormasPago.Parameters.parambyname('suc').Value := -1;
  QFormasPago.open;

  QDetalle.close;
  QDetalle.Parameters.parambyname('emp').Value := dm.vp_cia;
  QDetalle.Parameters.parambyname('num').Value := -1;
  QDetalle.Parameters.parambyname('suc').Value := -1;
  QDetalle.open;

  QRetenciones.close;
  QRetenciones.Parameters.parambyname('emp').Value := dm.vp_cia;
  QRetenciones.Parameters.parambyname('num').Value := -1;
  QRetenciones.Parameters.parambyname('suc').Value := -1;
  QRetenciones.open;

  QCentro.Close;
  QCentro.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QCentro.Parameters.ParamByName('suc').Value := -1;
  QCentro.Parameters.ParamByName('num').Value := -1;
  QCentro.Open;
end;

procedure TfrmRecibos.FormActivate(Sender: TObject);
begin
  frmRecibos.top := 10;
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
      caja   := dm.Query1.fieldbyname('fac_caja').asinteger;

      frmPideCajero.release;
    end;
    if not QRecibos.active then
    begin
      QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
      QSucursal.Open;

      QRecibos.Parameters.parambyname('numero').Value := -1;
      QRecibos.Parameters.parambyname('suc').Value := -1;
      QRecibos.open;
      QRecibos.insert;
      end;
      end;
    end;


procedure TfrmRecibos.edClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  cli : integer;
begin
  if key = vk_return then
  begin
    if trim(edCliente.text) <> '' then
    begin
      //ACTUALIZA BALANCES
     // DM.ADOSigma.Execute('EXEC pr_actualiza_bce '+IntToStr(DM.vp_cia));

      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select isnull(sum(vencido),0) as vencido');
      dm.Query1.sql.add('from pr_cxc (:emp, :fec, 0,'+QuotedStr('T')+',:suc)');
      dm.Query1.sql.add('where 1=1');
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
      dm.Query1.Parameters.parambyname('fec').Value := Now;
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      DM.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
      dm.Query1.open;
      lbVencido.Caption := FormatCurr('#,0.00',dm.Query1.fieldbyname('vencido').Value);

      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select cli_referencia, cli_codigo, cli_nombre, isnull(cli_balance,0)cli_balance,');
      dm.Query1.sql.add('isnull(cli_limite,0)cli_limite, cli_precio, cli_descuento, isnull(ven_codigo,0) ven_codigo,');
      dm.Query1.sql.add('cli_direccion, cli_localidad, cli_telefono, cli_fax, pro_codigo');
      dm.Query1.sql.add('from clientes');
      dm.Query1.sql.add('where emp_codigo = :emp');
      //dm.Query1.sql.add('and cli_Status = '+#39+'ACT'+#39);
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
      QRecibospro_codigo.Value := dm.Query1.fieldbyname('pro_Codigo').asinteger;
      QRecibosREC_NOMBRE.value := dm.Query1.fieldbyname('cli_nombre').asstring;
      cli := dm.Query1.fieldbyname('cli_Codigo').asinteger;
      if dm.Query1.fieldbyname('cli_balance').IsNull then
      lbBalance.Caption := '0.00' else
      lbBalance.Caption := FormatCurr('#,0.00',dm.Query1.fieldbyname('cli_balance').Value);
      if dm.Query1.fieldbyname('ven_Codigo').Value = 0 then
      QRecibosVEN_CODIGO.Value := 0 else
      QRecibosVEN_CODIGO.Value := dm.Query1.fieldbyname('ven_Codigo').asinteger;
      QRecibosCLI_CODIGO.value := cli;
    end;
  end;
end;

procedure TfrmRecibos.SpeedButton2Click(Sender: TObject);
var
  cli : String;
begin
  Search.Query.clear;
  Search.AliasFields.clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Referencia');
  Search.AliasFields.Add('Telefono');
  Search.AliasFields.Add('Cédula');
  Search.AliasFields.Add('Código');
  Search.Query.add('select cli_nombre, cli_referencia, cli_telefono, cli_cedula, cli_codigo');
  if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
    Search.ResultField := 'cli_codigo'
  else
    Search.ResultField := 'cli_referencia';
  Search.Query.add('from clientes');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  if (dm.QParametrospar_pago_mayor_balance.AsString <> 'True') and (ckCobro.Checked) then
     Search.Query.add('and cli_balance > 0');

  Search.Title := 'Listado de clientes';
  if Search.execute then
  begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select isnull(sum(vencido),0) as vencido');
      dm.Query1.sql.add('from pr_cxc (:emp, :fec, 0,'+QuotedStr('T')+',:suc)');
      dm.Query1.sql.add('where 1=1');
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
      dm.Query1.Parameters.parambyname('fec').Value := now;
      dm.Query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
      DM.Query1.Parameters.ParamByName('suc').Value := QSucursalsuc_codigo.Value;
      dm.Query1.open;
      lbVencido.Caption := Format('%n',[dm.Query1.fieldbyname('vencido').AsFloat]);

    edCliente.text := search.valuefield;


    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cli_codigo, cli_nombre, cli_balance, cli_referencia,');
    dm.Query1.sql.add('cli_limite, cli_precio, cli_descuento, ven_codigo, pro_codigo,');
    dm.Query1.sql.add('cli_direccion, cli_localidad, cli_telefono, cli_fax');
    dm.Query1.sql.add('from clientes');
    dm.Query1.sql.add('where emp_codigo = :emp');
    //dm.Query1.sql.add('and cli_Status = '+#39+'ACT'+#39);
    if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
    begin
      dm.Query1.sql.add('and cli_codigo = :cli');
      dm.Query1.Parameters.parambyname('cli').Value := search.valuefield;
    end
    else
    begin
      dm.Query1.sql.add('and cli_referencia = :cli');
      dm.Query1.Parameters.parambyname('cli').Value := search.valuefield;
    end;
    dm.Query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.Query1.open;
    QRecibospro_codigo.Value := dm.Query1.fieldbyname('pro_Codigo').asinteger;
    QRecibosREC_NOMBRE.value := dm.Query1.fieldbyname('cli_nombre').asstring;
    vl_cliente := dm.Query1.fieldbyname('cli_Codigo').asinteger;
    lbBalance.Caption := Format('%n',[dm.Query1.fieldbyname('cli_balance').AsFloat]);
    QRecibosVEN_CODIGO.Value := dm.Query1.fieldbyname('ven_Codigo').asinteger;
    QRecibosCLI_CODIGO.value := vl_cliente;
    dbedit2.setfocus;
  end;
end;

procedure TfrmRecibos.QRecibosCLI_CODIGOChange(Sender: TField);
var
  a : integer;
begin
  ins := true;
  if (not QRecibosCLI_CODIGO.isnull) and (ckCobro.Checked) then
  begin
    BuscaPendientes;
  end;
           ins := false;
end;

procedure TfrmRecibos.QDocAfterInsert(DataSet: TDataSet);
begin
  if ins = false then QDoc.cancel;
end;

procedure TfrmRecibos.GridMovEnter(Sender: TObject);
begin
  GridMov.selectedindex := 8;
end;

procedure TfrmRecibos.GridMovColEnter(Sender: TObject);
begin
  if GridMov.selectedindex < 8 then
    GridMov.selectedindex := 8;
end;

procedure TfrmRecibos.QFormasPagoAfterInsert(DataSet: TDataSet);
begin
  if Ins = false then QFormasPago.cancel;
end;

procedure TfrmRecibos.GridFormaEnter(Sender: TObject);
begin
  TDBGrid(Sender).selectedindex := 1;
  //GridForma.selectedindex := 1;
end;

procedure TfrmRecibos.GridFormaColEnter(Sender: TObject);
begin
  if GridForma.selectedindex = 0 then
     GridForma.selectedindex := 1;
end;

procedure TfrmRecibos.GridFormaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    QFormasPago.edit;
    QFormasPago.post;
  end;
end;

procedure TfrmRecibos.GridMovKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    QDoc.edit;
    QDoc.post;
  end;
  if key = vk_f8 then
  begin
    QDoc.Edit;
    QDocDET_MONTO.Value := QDocSaldo.Value;
    QDoc.Post;
  end;
end;

procedure TfrmRecibos.Distribuir;
var
  total, tdesc : double;
  punt : tbookmark;
begin
    if ckautomatico.Checked then
  begin
       if distri = true then
    begin
      totaliza := false;
      //total := StrToFloat(FormatCurr('%10.2f',[QRecibosREC_MONTO.value])) +
               //StrToFloat(FormatCurr('%10.2f',[QRecibosREC_DESCUENTO.value]));

      totalpositivo := 0;
      totalnegativo := 0;
      QFormasPago.DisableControls;
      punt := QFormasPago.GetBookmark;
      QFormasPago.First;
      while not QFormasPago.Eof do
      begin
        //Cuenta contable
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select cat_cuenta, fpa_actualizabalance from formaspago');
        dm.Query1.SQL.Add('where emp_codigo = :emp');
        dm.Query1.SQL.Add('and fpa_codigo = :fpa');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        dm.Query1.Parameters.ParamByName('fpa').Value := QFormasPagoFPA_CODIGO.Value;
        dm.Query1.Open;
        if dm.Query1.RecordCount > 0 then
        begin
          if dm.Query1.FieldByName('fpa_actualizabalance').AsString = 'True' then
            totalpositivo := totalpositivo + QFormasPagoFOR_MONTO.value
          else
            totalnegativo := totalnegativo + QFormasPagoFOR_MONTO.value;
        end;
        QFormasPago.Next;
      end;
      QFormasPago.GotoBookmark(punt);
      QFormasPago.EnableControls;
         total := totalpositivo + QRecibosREC_RETENCION.value - totalnegativo -
      QRecibosREC_INTERES.value;
      balance := total;
      QDoc.disablecontrols;
      QDoc.first;
      while not QDoc.eof do
      begin
        QDoc.edit;
        QDocDET_MONTO.value := 0;
        QDocdet_porc_descuento.Value := 0;

   if QDocDET_MORA.Value > 0 then begin
   WITH qMora DO BEGIN
   Close;
   Parameters[0].Value := QDocEMP_CODIGO.Value;
   Parameters[1].Value := QRecibosSUC_CODIGO.Value;
   Parameters[2].Value := QRecibosCLI_CODIGO.Value;
   Parameters[3].Value := QDocDET_NUMERO.Value;
   Parameters[4].Value := QDocFAC_FORMA.Value;
   Parameters[6].Value := QDocMOV_CUOTA.Value;//dm.Query1.fieldbyname('mov_secuencia').Value;
   Parameters[5].Value := QDocTFA_CODIGO.Value;
   Open;



   if IsEmpty then
   QDocDET_MORA.Value := 0 else
   QDocDET_MORA.Value := FieldByName('TOTALMORA').Value;
   end;
   end;

        QDoc.Post;

 if QDocDET_MORA.value > 0 then begin
if QDocDET_MORA.value > QDocSaldo.value then
begin
messagedlg('LA MORA NO PUEDES SER MAYOR AL SALDO',mterror,[mbok],0);
QDoc.Edit;
QDocDET_MONTO.value := 0;
QDoc.Post;
end;
end;

 if StrToCurr(FormatCurr('#0.00',Balance)) > 0 then begin
if QDocDET_MORA.Value > 0 then begin
if Balance <= QDocDET_MORA.Value then begin
QDoc.Edit;
QDocDET_MORA.value  := Balance;
QDocDET_MONTO.value := 0;
QDoc.Post;
end;
if Balance > QDocDET_MORA.Value then begin
QDoc.Edit;
QDocDET_MORA.value  := QDocDET_MORA.Value;
if (Balance-QDocDET_MORA.Value)<=QDocSaldo.Value then
QDocDET_MONTO.value := Balance-QDocDET_MORA.Value else
QDocDET_MONTO.value := QDocDET_PENDIENTE.Value;
QDoc.Post;
end;

if Balance < QDocDET_MORA.Value then begin
QDoc.Edit;
QDocDET_MORA.value  := Balance;
QDocDET_MONTO.value := 0;
QDoc.Post;
end;

if Balance = 0 then begin
QDoc.Edit;
QDocDET_MORA.value  := 0;
QDocDET_MONTO.value := 0;
QDoc.Post;
end;


end;

if QDocDET_MORA.Value = 0 then begin
if Balance > 0 then begin
if (Balance <= QDocSaldo.Value) then begin
QDoc.Edit;
QDocDET_MONTO.value := Balance;
QDoc.Post;
end
else
begin
QDoc.Edit;
QDocDET_MONTO.value := QDocDET_PENDIENTE.Value;//QDocSaldo.Value;
QDoc.Post;
end;
end;
end;
Balance := balance - (QDocDET_MONTO.Value+QDocDET_MORA.Value);
end
ELSE
BEGIN
if ((QFormasPagoFOR_MONTO.Value > 0) and (Balance = 0)) then begin
QDoc.Edit;
QDocDET_MONTO.value := 0;
QDocDET_MORA.value  := 0;
QDoc.Post;
end;
end;


if ((balance <= 0.02) and (balance > 0)) then begin
QDoc.Edit;
QDocDET_MONTO.value := QDocDET_MONTO.value + Balance;
QDoc.Post;
balance := 0;
end;

QDoc.next;
end;

QDoc.first;
tdesc := 0;
while not QDoc.eof do begin
    if QRecibosrec_porc_descuento.Value > 0 then begin
          QDoc.edit;
          QDocdet_porc_descuento.Value := QRecibosrec_porc_descuento.Value;
          QDocdet_Descuento.Value := (((QDocDET_PENDIENTE.Value-QDocdet_totalitbis.Value) * QDocdet_porc_descuento.Value)/100);
          total := total - QDocSaldo.value;

          if QDocdet_Descuento.Value > 0 then
            tdesc := tdesc + QDocdet_Descuento.Value;
          QDoc.post;
end;
QDoc.next;
end;
      QDoc.first;
      QDoc.enablecontrols;
      totaliza := true;
      totalizar;
      QRecibosREC_DESCUENTO.Value := tdesc;
    end;
  end;
 end;

procedure TfrmRecibos.Totalizar;
var
  puntero : tbookmark;
  Descuento, DescAplicado, TotalInteres, TotalMora2 : Double;
  vConcepto1, vConcepto2, vConcepto3 : String;
begin
  if totaliza then
  begin
    puntero := QDoc.GetBookmark;
    totaldetalle := 0;
    vl_mora := 0;
    deuda := 0;
    Descuento := 0;
    DescAplicado := 0;
    TotalInteres := 0;
    Aplicar :=  0;
    TotalMora2 := 0;
    QDoc.disablecontrols;
    QDoc.first;
    vConcepto1 := 'Pago Factura: ';
    vConcepto2 := '';
    vConcepto3 := '';
    while not QDoc.eof do
    begin
      //totaldetalle := totaldetalle + QDocDET_MONTO.value + QDocDET_MORA.Value;
      deuda := deuda + QDocDET_PENDIENTE.value-QDocdet_descuento.Value;
      TotalMora2 := TotalMora2 + QDocDET_MORA.Value;
      vl_mora := TotalMora2;
      Descuento := Descuento + QDocDescuento.Value;
      Aplicar   := Aplicar + QDocDET_MONTO.Value + QDocDET_MORA.Value;
      //totaldetalle := totaldetalle + QDocDET_MONTO.value + QDocDET_MORA.value;

      if QDocDET_MONTO.Value > 0 then
      begin
        DescAplicado := DescAplicado + QDocDescuento.Value;
        TotalInteres := TotalInteres + QDocTotalInteres.Value;
        if ((length(vConcepto1)+length(QDocDET_NUMERO.AsString+',')) < 80) then
          vConcepto1 := vConcepto1 + QDocDET_NUMERO.AsString+','
        else
        begin
          if ((length(vConcepto2)+length(QDocDET_NUMERO.AsString+',')) < 80) then
            vConcepto2 := vConcepto2 + QDocDET_NUMERO.AsString+','
          else
          begin
            if ((length(vConcepto3)+length(QDocDET_NUMERO.AsString+',')) < 80) then
            vConcepto3 := vConcepto3 + QDocDET_NUMERO.AsString+',';
          end;
        end;
        totaldetalle := totaldetalle + QDocSaldo.Value + QDocDET_MORA.value;//QDocDET_MONTO.value + QDocDET_MORA.value;
      end;

      QDoc.next;
    end;
    QDoc.GotoBookmark(puntero);
    QDoc.enablecontrols;
    lbDesc.Caption := formatCurr('#,0.00',Descuento);
    lbDescAplicado.Caption := formatCurr('#,0.00',DescAplicado);
    lbSaldo.Caption := formatCurr('#,0.00',deuda);
    QRecibosREC_DESCUENTO.Value := DescAplicado;
    IF DM.QParametrospar_imprimir_con_detalle_prod.Value = False THEN BEGIN
    QRecibosREC_concepto.Value := vConcepto1;
    QRecibosREC_concepto2.Value := vConcepto2;
    end;
    IF DM.QParametrospar_imprimir_con_detalle_prod.Value = True THEN BEGIN
    DBEdit2.Hint := 'DEBE INDICAR RECIBIDO POR ';
    DBEdit2.ShowHint := True;
    DBEdit2.SetFocus;
    end;
    QRecibosrec_interes.Value   := TotalInteres;
    QRecibosREC_MORA.Value   :=  TotalMora2;
    lbBalance.Caption := formatCurr('#,0.00',deuda);
    lbVencido.Caption := formatCurr('#,0.00',deuda+QRecibosREC_MORA.Value);
    lbAplicar.Caption := formatCurr('#,0.00',Aplicar);
  end;
end;

procedure TfrmRecibos.QFormasPagoAfterPost(DataSet: TDataSet);
var
cli : Integer;
dif : Double;
begin
if QFormasPagoFOR_MONTO.Value >= 0 then begin
if ckautomatico.Checked then Distribuir;
TotalizaFormas;
end;


end;

procedure TfrmRecibos.QDocAfterPost(DataSet: TDataSet);
VAR
  vMora:Double;
begin
  Totalizar;
end;

procedure TfrmRecibos.TotalizaFormas;
var
  punt : tbookmark;
begin
  if totaliza = true then
  begin
    totalpositivo := 0;
    totalnegativo := 0;
    punt := QFormasPago.GetBookmark;
    QFormasPago.disablecontrols;
    QFormasPago.first;
    totaliza := false;
    QDetalle.DisableControls;
    QDetalle.First;
    while not QDetalle.Eof do
    begin
      QDetalle.Edit;
      QDetalleDET_MONTO.Value := 0;
      QDetalle.Post;
      QDetalle.Next;
    end;
    QDetalle.First;
    QDetalle.EnableControls;
    totaliza := true;

    while not QFormasPago.eof do
    begin
      if (QFormasPagoFOR_MONTO.value > 0) and (not QFormasPagoFOR_MONTO.IsNull) then
      begin
        //Cuenta contable
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select cat_cuenta, fpa_actualizabalance from formaspago');
        dm.Query1.SQL.Add('where emp_codigo = :emp');
        dm.Query1.SQL.Add('and fpa_codigo = :fpa');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
        dm.Query1.Parameters.ParamByName('fpa').Value := QFormasPagoFPA_CODIGO.Value;
        dm.Query1.Open;
        if dm.Query1.RecordCount > 0 then
        begin
          if dm.Query1.FieldByName('fpa_actualizabalance').AsString = 'True' then
            totalpositivo := totalpositivo + QFormasPagoFOR_MONTO.value
          else
            totalnegativo := totalnegativo + QFormasPagoFOR_MONTO.value;

          if (Trim(dm.Query1.FieldByName('cat_cuenta').AsString) <> '') and (not dm.Query1.FieldByName('cat_cuenta').IsNull) then
          begin
            if QDetalle.Locate('cat_cuenta', dm.Query1.FieldByName('cat_cuenta').AsString,[]) then
            begin
              QDetalle.Edit;
              QDetalleDET_MONTO.Value := QDetalleDET_MONTO.Value + QFormasPagoFOR_MONTO.value;
              QDetalle.Post;
            end
            else
            begin
              QDetalle.Append;
              if dm.Query1.FieldByName('fpa_actualizabalance').AsString = 'True' then
                QDetalleDET_ORIGEN.Value := 'Debito'
              else
                QDetalleDET_ORIGEN.Value := 'Credito';

              QDetalleCAT_CUENTA.Value := dm.Query1.FieldByName('cat_cuenta').AsString;
              QDetalleDET_MONTO.Value  := QFormasPagoFOR_MONTO.value;
              QDetalle.Post;
            end;
          end;
        end;
      end;

      QFormasPago.next;
    end;
    QFormasPago.GotoBookmark(punt);
    QFormasPago.enablecontrols;
    QRecibosREC_MONTO.value := totalpositivo;

    if CtaCliente <> '' then
    begin
      if QDetalle.Locate('cat_cuenta', CtaCliente,[]) then
      begin
        QDetalle.Edit;
        QDetalleDET_MONTO.Value := (QRecibosREC_DESCUENTO.value + totalpositivo + QRecibosREC_RETENCION.Value) - totalnegativo - QRecibosrec_interes.Value-QRecibosREC_MORA.Value;
        QDetalle.Post;
      end
      else
      begin
        QDetalle.Append;
        QDetalleCAT_CUENTA.Value := CtaCliente;
        QDetalleDET_MONTO.Value  := (QRecibosREC_DESCUENTO.value + totalpositivo + QRecibosREC_RETENCION.Value) - totalnegativo - QRecibosrec_interes.Value-QRecibosREC_MORA.Value;
        QDetalleDET_ORIGEN.Value := 'Debito';
        QDetalle.Post;
      end;
    end;

    if QRecibosREC_DESCUENTO.Value > 0 then
    begin
      if (not dm.QContabPAR_CTADESC.IsNull) or (dm.QContabPAR_CTADESC.Value <> '') then
      begin
        if QDetalle.Locate('cat_cuenta', dm.QContabPAR_CTADESC.Value ,[]) then
        begin
          QDetalle.Edit;
          QDetalleDET_MONTO.Value := QRecibosREC_DESCUENTO.value;
          QDetalle.Post;
        end
        else
        begin
          QDetalle.Append;
          QDetalleCAT_CUENTA.Value := dm.QContabPAR_CTADESC.Value;
          QDetalleDET_MONTO.Value  := QRecibosREC_DESCUENTO.value;
          QDetalleDET_ORIGEN.Value := 'Debito';
          QDetalle.Post;
        end;
      end;
    end;
  end;
end;

procedure TfrmRecibos.QRecibosREC_MONTOChange(Sender: TField);
begin
  //if (ckCobro.Checked) and (QRecibosREC_MONTO.Value > 0) then

{    if strtofloat(Format('%10.2f',[QRecibosREC_MONTO.value])) > strtofloat(Format('%10.2f',[Balance])) then
    begin
      showmessage('EL MONTO DEL RECIBO NO PUEDE SER MAYOR'+#13+
                  'AL BALANCE DEL CLIENTE');
      QFormasPago.edit;
      QFormasPagoFOR_MONTO.value := 0;
      QFormasPago.post;
    end
    else}

end;

procedure TfrmRecibos.btGrabarClick(Sender: TObject);
var
  a : integer;
  continua : boolean;
  TotRecibo : Double;
begin
  continua := true;
  if Aplicar <> (QRecibosREC_MONTO.Value+QRecibosrec_retencion.Value) then
  begin
    if MessageDlg('EL BALANCE DEL CLIENTE ES DIFERENTE AL MONTO PAGADO'+#13+
               'DESEA CONTINUAR?',mtConfirmation,[mbyes,mbno],0) = mrno then
               continua := false;
  end;

  TotRecibo := totalpositivo + QRecibosREC_RETENCION.value - totalnegativo; //QRecibosREC_MONTO.Value; 

  if continua then
  begin
    //verificando si el cierre se hizo para esta fecha
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cie_fecha from cierre');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cie_fecha = :fec');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('fec').Value    := QRecibosREC_FECHA.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      MessageDlg('EL RECIBO NO PUEDE REALIZARSE, DEBIDO A QUE ESTE'+#13+
                 'DIA FUE CERRADO.',mtError,[mbok],0);
      GridForma.setfocus;
    end
    //else if ((TotRecibo <> TotalDetalle) and (ckCobro.Checked))
    else if ((FormatCurr('#,0.00',aplicar) <> FormatCurr('#,0.00',QRecibosREC_MONTO.Value+QRecibosrec_retencion.Value)) and (ckCobro.Checked))
    and (dm.qparametrospar_pago_mayor_balance.Value = 'False') then
    begin
      messagedlg('NO SE PUEDE GRABAR EL RECIBO, DEBIDO A'+#13+
                  'QUE EL TOTAL DE LO APLICADO A LAS FACTURAS'+#13+
                  'ES DIFERENTE AL TOTAL DE LAS FORMAS DE PAGO'+#13+
                  'DEL RECIBO',mterror,[mbok],0);
      GridMov.SetFocus;
    end
    else if QRecibosREC_MONTO.value = 0 then
    begin
      messagedlg('EL MONTO DEL RECIBO NO PUEDE SER CERO',mterror,[mbok],0);
      GridForma.SetFocus;
    end
    else if trim(DBEdit2.text) = '' then
    begin
      messagedlg('DEBE ESPECIFICAR EL CONCEPTO',mterror,[mbok],0);
      DBEdit2.SetFocus;
    end
    else if (ckCobro.Checked) and (QRecibosCLI_CODIGO.IsNull) then
    begin
      messagedlg('DEBE ESPECIFICAR EL CLIENTE',mterror,[mbok],0);
      edCliente.SetFocus;
    end
    else if lbBaL.Caption <> '0.00' then
    begin
      MessageDlg('LAS CUENTAS CONTABLES DE ESTA FACTURA'+#13+
                 'NO ESTAN CUADRADAS',mtError,[mbok],0);
      PageControl1.ActivePageIndex := 1;
      GridCuentas.SetFocus;
    end
    else
    begin
      if messagedlg('TODOS LOS DATOS ESTAN CORECTOS?',mtconfirmation,[mbyes,mbno],0) = mryes then
      begin
        Distri := False;
        Totaliza := false;

        QFormasPago.edit;
        QFormasPago.post;

        AFavor := QRecibosREC_MONTO.value-totalpositivo;

        if (ckCobro.Checked) and (QDoc.RecordCount > 0) then
        begin
          QDoc.edit;
          QDoc.post;
        end;

        QRecibosREC_COMISION.Value := (CalcComision * Comision)/100;
        QRecibos.post;
        QRecibos.UpdateBatch;

        Totaliza := False;

        if (ckCobro.Checked) and (QDoc.RecordCount > 0) then
        begin
          //detalle del recibo
          QDoc.First;
          QDoc.disablecontrols;
          a := 0;
          while not QDoc.eof do
          begin
            a := a + 1;
            QDoc.edit;
            QDocDET_SECUENCIA.value    := a;
            QDocREC_NUMERO.value       := QRecibosREC_NUMERO.value;
            QDocEMP_CODIGO.value       := dm.vp_cia;
            QDocSUC_CODIGO.Value       := QRecibosSUC_CODIGO.Value;
            QDocdet_totalinteres.Value := QDocTotalInteres.Value;
            //QDocdet_descuento.Value := QDocDescuento.Value;
            {if QDocdet_totalitbis.Value < QDocDET_PENDIENTE.Value then
              QDocDescuento.Value   := (((QDocDET_PENDIENTE.Value - QDocdet_totalitbis.Value) * QDocdet_porc_descuento.Value)/100)
            else
              QDocDescuento.Value   := 0;}
            QDoc.post;
            QDoc.next;
          end;
          QDoc.enablecontrols;
          QDoc.UpdateBatch;
        end;

        //detalle formas de pago
        QFormasPago.First;
        QFormasPago.disablecontrols;
        while not QFormasPago.eof do
        begin
          QFormasPago.edit;
          QFormasPagoREC_NUMERO.value    := QRecibosREC_NUMERO.value;
          QFormasPagoEMP_CODIGO.value    := dm.vp_cia;
          QFormasPagoSUC_CODIGO.Value    := QRecibosSUC_CODIGO.Value;
          if QFormasPagoFOR_MONTO.IsNull then QFormasPagoFOR_MONTO.value := 0;
          QFormasPago.post;
          QFormasPago.next;
        end;
        QFormasPago.enablecontrols;
        QFormasPago.UpdateBatch;

        //Cuentas contables
        QDetalle.First;
        QDetalle.DisableControls;
        a := 0;
        while not QDetalle.Eof do
        begin
          a := a + 1;
          QDetalle.Edit;
          QDetalleDET_SECUENCIA.Value := a;
          QDetalleEMP_CODIGO.Value    := dm.vp_cia;
          QDetalleREC_NUMERO.Value    := QRecibosREC_NUMERO.Value;
          QDetalleSUC_CODIGO.Value    := QRecibosSUC_CODIGO.Value;
          QDetalle.Post;
          QDetalle.Next;
        end;
        QDetalle.EnableControls;
        QDetalle.UpdateBatch;

        //Retenciones
        QRetenciones.First;
        QRetenciones.DisableControls;
        a := 0;
        while not QRetenciones.Eof do
        begin
          a := a + 1;
          QRetenciones.Edit;
          QRetencionesdet_secuencia.Value := a;
          QRetencionesemp_codigo.Value    := dm.vp_cia;
          QRetencionesrec_numero.Value    := QRecibosREC_NUMERO.Value;
          QRetencionessuc_codigo.Value    := QRecibosSUC_CODIGO.Value;
          QRetenciones.Post;
          QRetenciones.Next;
        end;
        QRetenciones.EnableControls;
        QRetenciones.UpdateBatch;

        //Centros de Costo
        QCentro.First;
        QCentro.DisableControls;
        a := 0;
        while not QCentro.Eof do
        begin
          a := a + 1;
          QCentro.Edit;
          QCentrodet_secuencia.Value := a;
          QCentroemp_codigo.Value := dm.vp_cia;
          QCentrorec_numero.Value := QRecibosREC_NUMERO.Value;
          QCentrosuc_codigo.Value := QRecibosSUC_CODIGO.Value;
          QCentro.Post;
          QCentro.Next;
        end;
        QCentro.EnableControls;
        QCentro.UpdateBatch;

        if ckCobro.Checked then
        begin
          DM.Query1.close;
          DM.Query1.sql.clear;
          DM.Query1.sql.add('execute pr_graba_rec :emp, :suc, :num, :tipo, :afavor');
          DM.Query1.Parameters.parambyname('emp').Value  := dm.vp_cia;
          DM.Query1.Parameters.parambyname('suc').Value  := QRecibosSUC_CODIGO.Value;
          DM.Query1.Parameters.parambyname('num').Value  := QRecibosREC_NUMERO.value;
          DM.Query1.Parameters.parambyname('tipo').Value  := QRecibosREC_TIPO.value;
          DM.Query1.Parameters.parambyname('afavor').Value := AFavor;
          DM.Query1.ExecSQL;
        end;

        if messagedlg('SE HA GENERADO EL RECIBO NUMERO '+inttostr(QRecibosREC_NUMERO.value)+#13+
                      'DESEA IMPRIMIR ESTE RECIBO?',mtconfirmation,[mbyes,mbno],0) = mryes then
        begin
          if dm.QParametrosPAR_CAJA.Value = 'S' then
            dm.AbreCaja;
          if FormatoImp = 2 then
          begin
           application.createform(tRRecibo, RRecibo);
            RRecibo.QRecibos.Parameters.ParamByName('numero').Value := QRecibosREC_NUMERO.value;
            RRecibo.QRecibos.Parameters.ParamByName('suc').Value := QRecibosSUC_CODIGO.value;
            RRecibo.QRecibos.open;
            RRecibo.QDoc.Open;
            RRecibo.QFormasPago.Open;
            RRecibo.PrinterSetup;
            RRecibo.print;
            RRecibo.Destroy;
            end
          else if FormatoImp = 3 then
          begin
            IF DM.QParametrospar_imprimir_con_detalle_prod.Value = False THEN
            Imp40Columnas ELSE
            Imp40ColumnasDet;
          end;
        end;

            if chkMail.Checked then begin
            pnCorreo.Visible := True;
            with dm.Query1 do begin
            Close;
            SQL.Clear;
            SQL.Add('select cli_email, tcl_codigo from clientes where emp_codigo ='+QRecibosEMP_CODIGO.Text);
            SQL.Add('and cli_codigo ='+QRecibosCLI_CODIGO.Text);
            Open;
            vl_dest := fieldbyname('cli_email').Text;
            vl_tipoclie := fieldbyname('tcl_codigo').Text;
            if dm.QParametrosPar_Envio_Rec_Estadocta.Value = True then GenerarEstadoCxC;
            vl_adjunto1 := '.\Recibo_No_'+vl_factnum+'.PDF';
            application.createform(tRRecibo, RRecibo);
            RRecibo.QRecibos.Parameters.ParamByName('numero').Value := QRecibosREC_NUMERO.value;
            RRecibo.QRecibos.Parameters.ParamByName('suc').Value := QRecibosSUC_CODIGO.value;
            RRecibo.QRecibos.open;
            RRecibo.QDoc.Open;
            RRecibo.QFormasPago.Open;
            RRecibo.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
            EnvioMail(RRecibo,'Rec');
            pnCorreo.Visible := False;

            end;
            end;

      //ACTUALIZA BALANCES
     // DM.ADOSigma.Execute('EXEC pr_actualiza_bce '+IntToStr(DM.vp_cia));

        Totaliza := true;
        DBEDit6.setfocus;
        ckCobro.Checked := True;
        ckCobroClick(Self);
      end
      else
        GridForma.setfocus;
    end;
  end
  else
    GridForma.SetFocus;
end;

procedure TfrmRecibos.QFormasPagoBeforeDelete(DataSet: TDataSet);
begin
  abort;
end;

procedure TfrmRecibos.QDocBeforeDelete(DataSet: TDataSet);
begin
  abort;
end;

procedure TfrmRecibos.QRecibosBeforePost(DataSet: TDataSet);
begin
  QRecibosREC_PORCCOMISION.Value := Comision;
  if QRecibosrec_porc_descuento.IsNull then QRecibosrec_porc_descuento.Value := 0;


  if QRecibos.state = dsinsert then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select isnull(max(rec_numero),0) as maximo');
    dm.Query1.sql.add('from recibos');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and suc_codigo = :suc');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('suc').Value := QRecibosSUC_CODIGO.Value;
    dm.Query1.open;
    QRecibosREC_NUMERO.value := dm.Query1.fieldbyname('maximo').asinteger + 1;
  end;
  if ckIngreso.Checked then
  begin
    QRecibosREC_TIPO.value := 'I';
    //PuertoImp  := dm.QParametrosPAR_PUERTORI.Value;
    FormatoImp := dm.QParametrosPAR_FORMATORI.Value;
  end
  else
  begin
    QRecibosREC_TIPO.value := 'C';
    //PuertoImp  := dm.QParametrosPAR_PUERTORC.Value;
    FormatoImp := dm.QParametrosPAR_FORMATORC.Value;
  end;

  if QRecibosREC_DESCUENTO.IsNull then QRecibosREC_DESCUENTO.value := 0;
end;

procedure TfrmRecibos.QDocBeforePost(DataSet: TDataSet);
begin
{  if QDocDET_MONTO.value > QDocSaldo.value then
  begin
    messagedlg('EL PAGO NO PUEDE SER MAYOR AL SALDO',mterror,[mbok],0);
    QDocDET_MONTO.value := 0;
  end;

}

end;

procedure TfrmRecibos.ckIngresoClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  QRecibos.Close;
  QRecibos.Parameters.parambyname('numero').Value := -1;
  QRecibos.Parameters.parambyname('suc').Value := -1;
  QRecibos.open;
  QRecibos.insert;
  DBEdit7.enabled := True;
  DBEdit5.enabled := False;
  GridMov.Visible := false;

  ins := True;

  QForma.Close;
  QForma.Open;

  QFormasPago.close;
  QFormasPago.open;



  //formas de pago
  dm.Query1.close;
  dm.adoMultiUso.sql.clear;
  dm.adoMultiUso.sql.add('select fpa_codigo, fpa_nombre');
  dm.adoMultiUso.sql.add('from formaspago');
  dm.adoMultiUso.sql.add('where emp_codigo = :emp');
  dm.adoMultiUso.sql.add('order by fpa_codigo');
  dm.adoMultiUso.Parameters.parambyname('emp').Value := dm.vp_cia;
  dm.adoMultiUso.open;

  dm.adoMultiUso.disablecontrols;
  while not dm.adoMultiUso.eof do
  begin
    QFormasPago.append;
    QFormasPagoEMP_CODIGO.value := dm.vp_cia;
    QFormasPagoFPA_CODIGO.value := dm.adoMultiUso.fieldbyname('fpa_codigo').AsInteger;
    QFormasPago.post;
    dm.adoMultiUso.next;
  end;
  dm.adoMultiUso.enablecontrols;
  QFormasPago.first;
  ins := False;
  edCliente.SetFocus;
end;

procedure TfrmRecibos.ckCobroClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  QRecibos.Close;
  QRecibos.Parameters.parambyname('numero').Value := -1;
  QRecibos.Parameters.parambyname('suc').Value := -1;
  QRecibos.open;
  QRecibos.insert;
  DBEdit7.enabled := False;
  DBEdit5.enabled := True;
  GridMov.Visible := true;
  QFormasPago.close;
  QFormasPago.open;
  edCliente.Clear;
  edCliente.SetFocus;
  QDoc.Close;
  QDoc.Open;
  QDocPendiente.Close;
  QDocPendiente.Open;
end;

procedure TfrmRecibos.btLimpiarClick(Sender: TObject);
begin
  if messagedlg('CANCELAR EL RECIBO?',mtconfirmation,[mbyes,mbno],0)=mryes then
  begin
    ckCobro.Checked;
    ckCobroClick(Self);
  end;
end;

procedure TfrmRecibos.btVendedorClick(Sender: TObject);
begin
  Search.AliasFields.clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.clear;
  Search.Query.add('select ven_nombre, ven_codigo');
  Search.Query.add('from vendedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'ven_Codigo';
  Search.Title := 'Listado de Vendedores';
  if Search.execute then
  begin
    QRecibosVEN_CODIGO.value := strtoint(Search.ValueField);
    dbVendedor.setfocus;
  end;
end;

procedure TfrmRecibos.QRecibosVEN_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QRecibosVEN_CODIGO.isnull then
  begin
    Text := inttostr(QRecibosVEN_CODIGO.value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select ven_nombre, ISNULL(ven_comcobro,0) ven_comcobro from vendedores');
    dm.Query1.sql.add('where emp_Codigo = :emp');
    dm.Query1.sql.add('and ven_Codigo = :ven');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('ven').Value := QRecibosVEN_CODIGO.value;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      tVendedor.text := ''
    else
    begin
      tVendedor.text := dm.Query1.fieldbyname('ven_nombre').asstring;
      Comision := dm.Query1.fieldbyname('ven_comcobro').Value;
    end;
  end
  else
    tVendedor.text := '';
end;

procedure TfrmRecibos.Imp40Columnas;
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

//  AssignFile(arch, 'c:\imp.bat');
  AssignFile(arch, 'imp.bat');
  rewrite(arch);
  writeln(arch, 'type t.txt > '+puerto);
  closefile(arch);

  application.createform(tRRecibo, RRecibo);
  RRecibo.QRecibos.Parameters.ParamByName('numero').Value := QRecibosREC_NUMERO.value;
  RRecibo.QRecibos.Parameters.ParamByName('suc').Value := QRecibosSUC_CODIGO.value;
  RRecibo.QRecibos.open;
  RRecibo.QDoc.Close;
  RRecibo.QDoc.Open;
  RRecibo.QFormasPago.Open;
  AssignFile(arch, 't.txt');
  rewrite(arch);
  writeln(arch, dm.Centro(trim(dm.QEmpresasEMP_NOMBRE.value)));
  writeln(arch, dm.Centro(trim(DM.QEmpresasEMP_DIRECCION.value)));
  writeln(arch, dm.Centro(trim(DM.QEmpresasEMP_LOCALIDAD.value)));
  writeln(arch, dm.Centro('Telefono : '+trim(dm.QEmpresasEMP_TELEFONO.value)));
  writeln(arch, dm.Centro('RNC: '+dm.QEmpresasEMP_RNC.value));
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
  writeln(arch, 'Monto    : '+FormatCurr('#,0.00',RRecibo.QRecibosREC_MONTO.value));
  writeln(arch, 'Descuento: '+FormatCurr('#,0.00',RRecibo.QRecibosREC_DESCUENTO.value));

  writeln(arch, '----------------------------------------');
  writeln(arch, 'Doc Grp Tipo Numero  Fecha      Aplicado');
  writeln(arch, '----------------------------------------');
  IF RRecibo.QDoc.RecordCount>0 THEN BEGIN
  RRecibo.QDoc.First;
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
    fillchar(s6, 10-length(FormatCurr('#,0.00',RRecibo.QDocDET_MONTO.value)),' ');
    writeln(arch, RRecibo.QDocDET_TIPO.value+s+
                  RRecibo.QDocFAC_FORMA.value+s1+
                  inttostr(RRecibo.QDocTFA_CODIGO.value)+'  '+
                  s3+inttostr(RRecibo.QDocDET_NUMERO.value)+s4+
//                  s5+Inttostr(RRecibo.QDocCuota.value)+s4+
                  datetostr(RRecibo.QDocDET_FECHA.value)+s6+
                  FormatCurr('#,0.00',RRecibo.QDocDET_MONTO.value));

    RRecibo.QDoc.next;
  end;
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
  writeln(arch, dm.Centro('A LA FECHA DE '+FormatCurr('#,0.00',dm.Query1.FieldByName('cli_balance').Value)));
  writeln(arch, dm.Centro('UN DISPONIBLE DE '+FormatCurr('#,0.00',dm.Query1.FieldByName('cli_limite').Value-
                                                             dm.Query1.FieldByName('cli_balance').Value)));

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select * from pr_Estadistica_cli (:emp, :cli, :fec)');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('cli').Value := RRecibo.QRecibosCLI_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('fec').Value    := Date;
  dm.Query1.Open;
  writeln(arch, dm.Centro('Y UN MONTO VENCIDO DE '+FormatCurr('#,0.00',dm.Query1.FieldByName('mtovencido').Value)));

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
    fillchar(s1, 10-length(FormatCurr('#,0.00',dm.Query1.FieldByName('monto').Value)),' ');
    writeln(arch,copy(dm.Query1.FieldByName('fpa_nombre').asstring,1,14)+s+s1+FormatCurr('#,0.00',dm.Query1.FieldByName('monto').Value));
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
  RRecibo.Destroy;
end;

procedure TfrmRecibos.FormCreate(Sender: TObject);
var
  a : integer;
begin

  for a := 0 to (Sender as TForm).ComponentCount -1 DO
  begin
    if Components[a].ClassType = tdbedit then
    begin
      (Components[a] as tdbedit).OnEnter := frmMain.Entra;
      (Components[a] as tdbedit).OnExit := frmMain.sale;
    end;
  end;
  QForma.Active := true;
  QDocPendiente.open;
  chkMail.Checked := DM.QParametrosPar_Envio_Rec_Correo.Value;
end;

procedure TfrmRecibos.QDocCalcFields(DataSet: TDataSet);
begin
 if QDocDET_CUOTA.Value = 'True' then QDocSec.Value := QDocMOV_CUOTA.Value;


     QDocDescuento.Value := (((QDocDET_PENDIENTE.Value - QDocdet_totalitbis.Value) * QDocdet_porc_descuento.Value)/100);
  //else
    //QDocDescuento.Value := 0;

  if Date >= QDocdet_vence.Value then
  begin
    QDocTotalInteres.Value := ((QDocDET_PENDIENTE.Value - QDocDescuento.Value) * QDocdet_interes.Value)/100;
    QDocTotalInteres.Value := (QDocTotalInteres.Value / 30) * DaysBetween(Date, QDocdet_vence.Value);
  end
  else
    QDocTotalInteres.Value := 0;

  QDocSaldo.Value := (QDocDET_PENDIENTE.Value-QDocdet_descuento.Value) + QDocTotalInteres.Value + QDocDET_MORA.Value;
  //QDocSaldo.Value := (QDocDET_PENDIENTE.Value) + QDocTotalInteres.Value + QDocDET_MORA.Value;
end;

procedure TfrmRecibos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     if (activecontrol.classtype <> tdbgrid) and (activecontrol.classtype <> TDBGridObj) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmRecibos.FormPaint(Sender: TObject);
begin
  with frmRecibos do
  begin
    Top  := 2;
    Left := 2;
    //width := frmMain.Width - 100;
    //height := frmMain.Height - 120;
  end;
end;

procedure TfrmRecibos.QDetalleCAT_CUENTAChange(Sender: TField);
begin
  if (not QDetalleCAT_CUENTA.IsNull) and (Trim(QDetalleCAT_CUENTA.Value) <> '') then
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

procedure TfrmRecibos.GridCuentasColEnter(Sender: TObject);
begin
  if GridCuentas.SelectedIndex = 2 then
    GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1;
end;

procedure TfrmRecibos.GridCuentasEnter(Sender: TObject);
begin
  GridCuentas.SelectedIndex := 1;
end;

procedure TfrmRecibos.GridCuentasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if GridCuentas.SelectedIndex = 3 then
  begin
    if key = 68 then
    begin
      QDetalle.Edit;
      QDetalleDET_ORIGEN.Value := 'Debito';
      GridCuentas.SelectedIndex := 4;
    end
    else if key = 67 then
    begin
      QDetalle.Edit;
      QDetalleDET_ORIGEN.Value := 'Credito';
      GridCuentas.SelectedIndex := 4;
    end;
  end;
  if key = vk_f4 then btBuscaCtaClick(Self);
  if key = vk_f6 then btEliminaClick(Self);
  if key = vk_insert then abort;
  if (ssCtrl in Shift) and (key = vk_delete) then abort;
  if key = vk_return then
     if GridCuentas.SelectedIndex <> 4 then
        GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1
     else
     begin
       GridCuentas.SelectedIndex := 1;
       QDetalle.Append;
     end;
end;

procedure TfrmRecibos.btEliminaClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR LA CUENTA?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QDetalle.Delete
  end;
  GridCuentas.setfocus;
end;

procedure TfrmRecibos.btBuscaCtaClick(Sender: TObject);
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
    QDetalle.Edit;
    QDetalleCAT_CUENTA.Value := Search.ValueField;
  end;
end;

procedure TfrmRecibos.QDetalleAfterDelete(DataSet: TDataSet);
begin
  TotalizaCuentas;
end;

procedure TfrmRecibos.QDetalleAfterPost(DataSet: TDataSet);
begin
  TotalizaCuentas;
end;

procedure TfrmRecibos.QDetalleBeforePost(DataSet: TDataSet);
begin
  if QDetalleCAT_NOMBRE.IsNull then QDetalle.Cancel;
end;

procedure TfrmRecibos.QDetalleNewRecord(DataSet: TDataSet);
begin
  QDetalleEMP_CODIGO.Value := dm.vp_cia;
end;

procedure TfrmRecibos.TotalizaCuentas;
var
  Punt : TBookMark;
begin
  if Totaliza = True then
  Begin
    Debitos  := 0;
    Creditos := 0;
    Punt := QDetalle.GetBookmark;
    QDetalle.DisableControls;
    QDetalle.First;
    while not QDetalle.Eof do
    begin
      if QDetalleDET_ORIGEN.Value = 'Debito' then
        Debitos  := Debitos  + QDetalleDET_MONTO.Value
      else
        Creditos := Creditos + QDetalleDET_MONTO.Value;
      QDetalle.Next;
    end;

    QDetalle.GotoBookmark(Punt);
    QDetalle.EnableControls;
    lbCR.Caption  := FormatCurr('#,0.00',Creditos);
    lbDB.Caption  := FormatCurr('#,0.00',Debitos);
    lbBAL.Caption := FormatCurr('#,0.00',Debitos-Creditos);
  end;
  if Trim(lbBAL.Caption) <> '0.00' then
    lbBAL.Font.Color := clRed
  else
    lbBAL.Font.Color := clBlack;
end;

procedure TfrmRecibos.btBuscaCliClick(Sender: TObject);
begin
  SpeedButton2Click(Self)
end;

procedure TfrmRecibos.QRecibosREC_DESCUENTOChange(Sender: TField);
begin
    if StrToFloat(Format('%10.2f',[QRecibosREC_DESCUENTO.Value])) > 0 then
  begin
    if (not dm.QContabPAR_CTADESC.IsNull) or (dm.QContabPAR_CTADESC.Value <> '') then
    begin
      if QDetalle.Locate('cat_cuenta', dm.QContabPAR_CTADESC.Value ,[]) then
      begin
        QDetalle.Edit;
        QDetalleDET_MONTO.Value := QRecibosREC_DESCUENTO.value;
        QDetalle.Post;
      end
      else
      begin
        QDetalle.Append;
        QDetalleCAT_CUENTA.Value := dm.QContabPAR_CTADESC.Value;
        QDetalleDET_MONTO.Value  := QRecibosREC_DESCUENTO.value;
        QDetalleDET_ORIGEN.Value := 'Debito';
        QDetalle.Post;
      end;

      if QDetalle.Locate('cat_cuenta', CtaCliente ,[]) then
      begin
        QDetalle.Edit;
        QDetalleDET_MONTO.Value := QRecibosREC_MONTO.Value + QRecibosREC_DESCUENTO.Value - QRecibosrec_interes.value;
        QDetalle.Post;
      end;
    end;



end;



 { if QRecibosREC_DESCUENTO.Value > 0 then
  begin
    if (not dm.QContabPAR_CTADESC.IsNull) or (dm.QContabPAR_CTADESC.Value <> '') then
    begin
      if QDetalle.Locate('cat_cuenta', dm.QContabPAR_CTADESC.Value ,[]) then
      begin
        QDetalle.Edit;
        QDetalleDET_MONTO.Value := QRecibosREC_DESCUENTO.value;
        QDetalle.Post;
      end
      else
      begin
        QDetalle.Append;
        QDetalleCAT_CUENTA.Value := dm.QContabPAR_CTADESC.Value;
        QDetalleDET_MONTO.Value  := QRecibosREC_DESCUENTO.value;
        QDetalleDET_ORIGEN.Value := 'Debito';
        QDetalle.Post;
      end;

      if QDetalle.Locate('cat_cuenta', CtaCliente ,[]) then
      begin
        QDetalle.Edit;
        QDetalleDET_MONTO.Value := QRecibosREC_MONTO.Value + QRecibosrec_retencion.Value + QRecibosREC_DESCUENTO.Value - QRecibosrec_interes.value;
        QDetalle.Post;
      end;
    end;
  end;
}

  {if not QRecibosREC_DESCUENTO.IsNull then
    Distribuir;}
end;

procedure TfrmRecibos.SpeedButton1Click(Sender: TObject);
begin
  Search.AliasFields.clear;
  Search.AliasFields.add('Cliente');
  Search.AliasFields.add('Numero');
  Search.Query.clear;
  Search.Query.add('select ped_nombre, ped_numero');
  Search.Query.add('from pedidos');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.Query.add('and ped_tipo = '+#39+'C'+#39);
  Search.ResultField := 'ped_numero';
  Search.Title := 'Pedido del Cliente';
  if Search.execute then
  begin
    QRecibosPED_TIPO.Value := 'C';
    QRecibosPED_NUMERO.Value := StrToInt(Search.ValueField);
    DBEdit2.SetFocus;
  end;
end;

procedure TfrmRecibos.QRecibosPED_NUMEROChange(Sender: TField);
begin
  if not QRecibosPED_NUMERO.IsNull then
  begin
    Query1.close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select cli_codigo, cli_referencia, ped_nombre from pedidos');
    Query1.SQL.Add('where emp_codigo = :emp');
    Query1.SQL.Add('and ped_tipo = :tip');
    Query1.SQL.Add('and ped_numero = :num');
    Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    Query1.Parameters.ParamByName('tip').Value := 'C';
    Query1.Parameters.ParamByName('num').Value := QRecibosPED_NUMERO.Value;
    Query1.Open;
    if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
      edCliente.Text := Query1.FieldByName('cli_codigo').AsString
    else
      edCliente.Text := Query1.FieldByName('cli_referencia').AsString;
    QRecibosREC_NOMBRE.Value := Query1.FieldByName('ped_nombre').Value;
    QRecibosCLI_CODIGO.Value := Query1.FieldByName('cli_codigo').Value;
  end;
end;

procedure TfrmRecibos.QRecibosrec_porc_descuentoChange(Sender: TField);
begin
  if not QRecibosrec_porc_descuento.IsNull then
  begin
    if ckautomatico.Checked then Distribuir;
  end;
end;

procedure TfrmRecibos.btcajaClick(Sender: TObject);
begin
  Search.AliasFields.clear;
  Search.AliasFields.add('Nombre');
  Search.AliasFields.add('Código');
  Search.Query.clear;
  Search.Query.add('select caj_nombre, caj_codigo');
  Search.Query.add('from cajas');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'caj_Codigo';
  Search.Title := 'Listado de Cajas';
  if Search.execute then
  begin
    QRecibosrec_caja.value := strtoint(Search.ValueField);
    dbCaja.setfocus;
  end;
end;

procedure TfrmRecibos.QRecibosrec_cajaGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QRecibosrec_caja.isnull then
  begin
    Text := inttostr(QRecibosrec_caja.value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select caj_nombre');
    dm.Query1.sql.add('from cajas');
    dm.Query1.sql.add('where emp_Codigo = :emp');
    dm.Query1.sql.add('and caj_Codigo = :caj');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('caj').Value := QRecibosrec_caja.value;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      tcaja.text := ''
    else
      tcaja.text := dm.Query1.fieldbyname('caj_nombre').asstring;
  end
  else
    tcaja.text := '';
end;

procedure TfrmRecibos.btmonedaClick(Sender: TObject);
begin
  Search.AliasFields.clear;
  Search.AliasFields.add('Nombre');
  Search.AliasFields.add('Código');
  Search.Query.clear;
  Search.Query.add('select mon_nombre, mon_codigo');
  Search.Query.add('from moneda');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.ResultField := 'mon_Codigo';
  Search.Title := 'Tipo de moneda';
  if Search.execute then
  begin
    QRecibosMON_CODIGO.value := strtoint(Search.ValueField);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select mon_sigla, MON_RELACIONPESOCOMPRA from moneda');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and mon_codigo = :mon');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('mon').Value := QRecibosMON_CODIGO.Value;
    dm.Query1.open;
    tmoneda.Text := dm.Query1.FieldByName('mon_sigla').AsString;
    QRecibosREC_TASA.Value := dm.Query1.FieldByName('MON_RELACIONPESOCOMPRA').Value;
    BuscaPendientes;
  end;
end;

procedure TfrmRecibos.BuscaPendientes;
var
   a : integer;
begin
  ins := true;

  CorregirError;

  Pendiente := 0;
  //movimientos
  qQuery.Close;
  qQuery.SQL.Clear;
  qQuery.SQL.Add('execute pr_actualiza_bce :emp');
  qQuery.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  qQuery.ExecSQL;



  qQuery.close;
  qQuery.sql.clear;
  qQuery.sql.add('select distinct m.mov_tipo, m.fac_forma, m.tfa_codigo, m.mov_numero,');
  qQuery.sql.add('isnull(c.cli_balance,0) cli_balance, m.mov_monto, m.mov_abono, m.mov_fecha,');
  qQuery.sql.add('m.mov_secuencia, m.mov_cuota, c.cli_cuenta, m.mov_interes, m.mov_fechavence,');
  qQuery.SQL.Add('ISNULL(t.ticket, 0) AS ticket');
  qQuery.sql.add('FROM movimientos m JOIN clientes c ON m.emp_codigo = c.emp_codigo AND m.cli_codigo = c.cli_codigo');
  qQuery.sql.add('LEFT JOIN montos_ticket t ON t.mov_numero = m.mov_numero AND t.emp_codigo = m.emp_codigo AND t.cli_codigo = m.cli_codigo');

  {qQuery.sql.add('where m.emp_codigo = c.emp_codigo');
  qQuery.sql.add('and m.cli_Codigo = c.cli_codigo');  }

  qQuery.sql.add('where m.emp_codigo = :emp');
  qQuery.sql.add('and m.cli_Codigo = :cli');
  qQuery.sql.add('and m.mov_status = '+#39+'PEN'+#39);
  qQuery.sql.add('and m.suc_codigo = :suc');
  qQuery.sql.add('order by mov_tipo, mov_fecha asc');
  qQuery.Parameters.parambyname('emp').Value := dm.vp_cia;
  qQuery.Parameters.parambyname('cli').Value := QRecibosCLI_CODIGO.value;
  qQuery.Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;
  qQuery.open;
  if qQuery.RecordCount > 0 then begin
  Balance := qQuery.fieldbyname('cli_balance').Value;
  CtaCliente := qQuery.FieldByName('cli_cuenta').AsString;
  a := 0;
  qQuery.disablecontrols;
  QDoc.Close;
  QDoc.Open;
  qQuery.First;
  while not qQuery.eof do
  begin
    a := a + 1;
    QDoc.Append;

    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select distinct ((f.fac_itbis + isnull(f.fac_selectivo_ad,0) + isnull(f.fac_selectivo_con,0))*(1-(f.fac_abono/f.fac_total))) as itbis');
    Query1.SQL.Add('from facturas f');
    Query1.SQL.Add('where f.emp_codigo = :emp');
    Query1.SQL.Add('and f.tfa_codigo = :tfa');
    Query1.SQL.Add('and f.fac_forma = :for');
    Query1.SQL.Add('and f.fac_numero = :num');
    Query1.SQL.Add('and f.suc_codigo = :suc');
    Query1.sql.add('and f.fac_status = '+#39+'PEN'+#39);
    Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    Query1.Parameters.ParamByName('tfa').Value := qQuery.FieldByName('tfa_codigo').Value;
    Query1.Parameters.ParamByName('for').Value := qQuery.FieldByName('fac_forma').Value;
    Query1.Parameters.ParamByName('num').Value := qQuery.FieldByName('mov_numero').Value;
    Query1.Open;
    if Query1.RecordCount > 0 then
    begin
      QDocdet_totalitbis.Value := Query1.FieldByName('itbis').Value;
      //QDocmon_codigo.Value     := Query1.FieldByName('mon_codigo').AsInteger;
      //QDocmon_sigla.Value      := Query1.FieldByName('mon_sigla').AsString;
      //QDocmon_tasa.Value       := Query1.FieldByName('fac_tasa').Value;
    end
    else
      QDocdet_totalitbis.Value := 0;

    QDocEMP_CODIGO.Value    := dm.vp_cia;
    QDocDET_TIPO.value      := qQuery.fieldbyname('mov_tipo').asstring;

    QDocDET_CUOTA.Value     := qQuery.fieldbyname('mov_cuota').AsString;



    QDocMOV_CUOTA.Value     := qQuery.fieldbyname('mov_secuencia').AsInteger;
    QDocDET_SECUENCIA.value := a;
    QDocDET_PENDIENTE.value := qQuery.fieldbyname('mov_monto').Value-
                               qQuery.fieldbyname('mov_abono').Value;
    QDocDET_NUMERO.value    := qQuery.fieldbyname('mov_numero').asinteger;
    QDocTFA_CODIGO.value    := qQuery.fieldbyname('tfa_Codigo').asinteger;
    QDocFAC_FORMA.value     := qQuery.fieldbyname('fac_forma').asstring;
    QDocDET_FECHA.value     := qQuery.fieldbyname('mov_fecha').asdatetime;
    QDocdet_vence.value     := qQuery.fieldbyname('mov_fechavence').asdatetime;
    QDocdet_interes.Value   := qQuery.fieldbyname('mov_interes').Value;
    if qQuery.fieldbyname('mov_tipo').asstring  = 'ND' then
    QDocDET_MORA.Value  := 0;
    if qQuery.fieldbyname('mov_tipo').asstring  = 'TK' then
    QDocDET_MORA.Value  := 0;

   WITH qMora DO BEGIN
   Close;
   Parameters[0].Value := QDocEMP_CODIGO.Value;
   Parameters[1].Value := DBLookupComboBox2.KeyValue;
   Parameters[2].Value := QRecibosCLI_CODIGO.Value;
   Parameters[3].Value := QDocDET_NUMERO.Value;
   Parameters[4].Value := QDocFAC_FORMA.Value;
   Parameters[6].Value := QDocMOV_CUOTA.Value;//qQuery.fieldbyname('mov_secuencia').Value;
   Parameters[5].Value := QDocTFA_CODIGO.Value;
   Open;


   if IsEmpty then
   QDocDET_MORA.Value := 0 else
   QDocDET_MORA.Value := FieldByName('TOTALMORA').Value;
   end;



    if qQuery.fieldbyname('mov_tipo').asstring  = 'TK' then begin
    qEjecutar.Close;
    qEjecutar.SQL.Clear;
    qEjecutar.SQL.Add('SELECT TICKET FROM MONTOS_TICKET WHERE MOV_NUMERO = '+qQuery.fieldbyname('MOV_NUMERO').Text);
    qEjecutar.Open;
    IF NOT qEjecutar.IsEmpty THEN BEGIN
    vl_ticket := qEjecutar.FieldByName('TICKET').Value;
    QDocMOV_CUOTA.Value := vl_ticket;
    end;
    GridMov.Columns[2].Title.Caption := 'Ticket';
    GridMov.Columns[2].FieldName := 'MOV_CUOTA';
    end
    ELSE
    BEGIN
    GridMov.Columns[2].Title.Caption := 'Cuota';
    GridMov.Columns[2].FieldName := 'DET_CUOTA';
    end;
    QDoc.post;
    Pendiente := Pendiente + QDocSaldo.value;
    qQuery.next;
    END;

  if trim(CtaCliente) <> '' then
  begin
    if QDetalle.Locate('cat_cuenta',CtaCliente,[]) then
    begin
      QDetalle.Edit;
      QDetalleDET_MONTO.Value := QRecibosREC_MONTO.Value+QRecibosrec_retencion.Value;
      QDetalle.Post;
    end
    else
    begin
      QDetalle.Append;
      QDetalleCAT_CUENTA.Value := CtaCliente;
      QDetalleDET_MONTO.Value  := QRecibosREC_MONTO.Value+QRecibosrec_retencion.Value;
      QDetalleDET_ORIGEN.Value := 'Credito';
      QDetalle.Post;
    end;
  end;
  end;
  qQuery.enablecontrols;
  QDoc.first;
  lbSaldo.caption := FormatCurr('#,0.00',Pendiente);
  lbVencido.caption := FormatCurr('#,0.00',Pendiente);

  QFormasPago.close;
  QFormasPago.open;

  //formas de pago
  qQuery.close;
  qQuery.sql.clear;
  qQuery.sql.add('select distinct fpa_codigo, fpa_nombre');
  qQuery.sql.add('from formaspago');
  qQuery.sql.add('where emp_codigo = :emp');
  qQuery.sql.add('order by fpa_codigo');
  qQuery.Parameters.parambyname('emp').Value := dm.vp_cia;
  qQuery.open;

  qQuery.disablecontrols;
  QFormasPago.disablecontrols;
  while not qQuery.eof do
  begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select distinct fpa_codigo from clirestfpago');
    Query1.SQL.Add('where emp_codigo = :emp');
    Query1.SQL.Add('and cli_codigo = :cli');
    Query1.SQL.Add('and fpa_codigo = :fpa');
    Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    Query1.Parameters.ParamByName('cli').Value := QRecibosCLI_CODIGO.Value;
    Query1.Parameters.ParamByName('fpa').Value := qQuery.FieldByName('fpa_codigo').AsInteger;
    Query1.Open;
    if Query1.RecordCount = 0 then
    begin
      QFormasPago.append;
      QFormasPagoEMP_CODIGO.value := dm.vp_cia;
      QFormasPagoFPA_CODIGO.value := qQuery.fieldbyname('fpa_codigo').asinteger;
      QFormasPago.post;
    end;
    qQuery.next;
  end;
  QFormasPago.enablecontrols;
  qQuery.enablecontrols;
  QFormasPago.first;
  ins := false;
end;

procedure TfrmRecibos.SpeedButton3Click(Sender: TObject);
var
  tasa : string;
begin
{  tasa := InputBox('Tasa','Tasa',QRecibosrec_tasa.AsString);
  if Trim(tasa) <> '' then
  begin
    QRecibosrec_tasa.Value := strtofloat(trim(tasa));
    BuscaPendientes;
  end;}
end;

procedure TfrmRecibos.CorregirError;
var
  mov : string;
begin
  screen.Cursor := crHourGlass;

  qRepBalanceFact.Close;
  qRepBalanceFact.Parameters.ParamByName('emp').Value := dm.vp_cia;
  qRepBalanceFact.Parameters.ParamByName('cli').Value := QRecibosCLI_CODIGO.Value;
  qRepBalanceFact.Parameters.ParamByName('SUC').Value := DBLookupComboBox2.KeyValue;
  qRepBalanceFact.ExecSQL;
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('execute pr_actualiza_bce :emp');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.ExecSQL;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('insert into movimientos (emp_codigo,suc_codigo,mov_tipo,mov_numero,mov_secuencia,fac_forma,');
  dm.Query1.SQL.Add('tfa_codigo,mov_fecha,mov_monto,mov_abono,mov_status,mov_fechavence,mov_cuota,');
  dm.Query1.SQL.Add('cli_codigo,mon_codigo,mov_tasa)');
  dm.Query1.SQL.Add('select f.emp_codigo, f.suc_codigo, tm.tmo_siglas, f.fac_numero,(select max(mov_secuencia)+1');
  dm.Query1.SQL.Add('from movimientos where emp_codigo = :emp1), f.fac_forma,');
  dm.Query1.SQL.Add('f.tfa_codigo, f.fac_fecha, f.fac_total, f.fac_abono, f.fac_status, f.fac_vence, '+QuotedStr('False')+',');
  dm.Query1.SQL.Add('f.cli_codigo,1,1');
  dm.Query1.SQL.Add('from facturas f, tiposmov tm, tiposfactura tf');
  dm.Query1.SQL.Add('where f.emp_codigo = tf.emp_codigo');
  dm.Query1.SQL.Add('and f.tfa_codigo = tf.tfa_codigo');
  dm.Query1.SQL.Add('and tm.emp_codigo = tf.emp_codigo');
  dm.Query1.SQL.Add('and tm.tmo_codigo = tf.tmo_codigo');
  dm.Query1.SQL.Add('and f.fac_numero not in (select mov_numero');
  dm.Query1.SQL.Add('from movimientos');
  dm.Query1.SQL.Add('where emp_codigo = f.emp_codigo');
  dm.Query1.SQL.Add('and suc_codigo = f.suc_codigo');
  dm.Query1.SQL.Add('and tfa_codigo = f.tfa_codigo');
  dm.Query1.SQL.Add('and fac_forma = f.fac_forma');
  dm.Query1.SQL.Add('and mov_numero = f.fac_numero)');
  dm.Query1.SQL.Add('and tf.tfa_actbalance = '+QuotedStr('True'));
  dm.Query1.SQL.Add('and f.emp_codigo = :emp2');
  dm.Query1.SQL.Add('and f.cli_codigo = :cli');
  dm.Query1.SQL.Add('and suc_codigo = :suc');
  dm.Query1.Parameters.ParamByName('emp1').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('emp2').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('cli').Value  := QRecibosCLI_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
  dm.Query1.ExecSQL;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('update clientes');
  dm.Query1.SQL.Add('set	cli_balance = (select isnull(sum(mov_monto-mov_abono),0)');
  dm.Query1.SQL.Add('from movimientos');
  dm.Query1.SQL.Add('where emp_codigo = clientes.emp_codigo');
  dm.Query1.SQL.Add('and cli_codigo = clientes.cli_codigo');
  dm.Query1.SQL.Add('and mov_status = '+QuotedStr('PEN')+')');
  dm.Query1.SQL.Add('where SUC_CODIGO = :suc');
  dm.Query1.SQL.Add('and emp_codigo = :emp');
  dm.Query1.SQL.Add('and cli_codigo = :cli');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
  dm.Query1.Parameters.ParamByName('cli').Value := QRecibosCLI_CODIGO.Value;
  dm.Query1.ExecSQL;
  screen.Cursor := crDefault;
end;

procedure TfrmRecibos.GridRetColEnter(Sender: TObject);
begin
  if GridRet.SelectedIndex = 1 then
    GridRet.SelectedIndex := GridRet.SelectedIndex + 1;
end;

procedure TfrmRecibos.GridRetEnter(Sender: TObject);
begin
  GridRet.SelectedIndex := 0;
end;

procedure TfrmRecibos.GridRetKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_insert then abort;
  if (ssCtrl in Shift) and (key = vk_delete) then abort;
  if key = vk_return then
     if GridRet.SelectedIndex <> 2 then
        GridRet.SelectedIndex := GridRet.SelectedIndex + 1
     else
     begin
       GridRet.SelectedIndex := 0;
       QRetenciones.Append;
     end;
end;

procedure TfrmRecibos.SpeedButton5Click(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR ESTA RETENCION?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QRetenciones.Delete
  end;
  GridRet.setfocus;
end;

procedure TfrmRecibos.SpeedButton6Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select ret_nombre, ret_codigo');
  Search.Query.Add('from retenciones');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.AliasFields.Add('Descripción');
  Search.AliasFields.Add('Cuenta');
  Search.ResultField := 'ret_codigo';
  Search.Title := 'Retenciones';
  if Search.execute then
  begin
    QRetenciones.Edit;
    QRetencionesret_codigo.Value := StrToInt(Search.ValueField);
  end;
end;

procedure TfrmRecibos.TotalizaRet;
var
  Ret, tot : Double;
  punt : TBookmark;
begin
  if Totaliza = True then
  Begin
    Ret   := 0;
    punt := QRetenciones.GetBookmark;
    QRetenciones.DisableControls;
    QRetenciones.First;
    while not QRetenciones.Eof do
    Begin
      Ret  := Ret  + QRetencionesdet_monto.Value;
      QRetenciones.Next;
    End;
    QRetenciones.GotoBookmark(punt);
    QRetenciones.EnableControls;
    QRecibosREC_RETENCION.Value := Ret;

    punt := QFormasPago.GetBookmark;
    QFormasPago.disablecontrols;
    QFormasPago.first;
    while not QFormasPago.eof do
    begin
      tot := tot + QFormasPagoFOR_MONTO.value;

      if (QFormasPagoFOR_MONTO.value > 0) and (not QFormasPagoFOR_MONTO.IsNull) then
      begin
        //Cuenta contable
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select cat_cuenta from formaspago');
        dm.Query1.SQL.Add('where emp_codigo = :emp');
        dm.Query1.SQL.Add('and fpa_codigo = :fpa');
        dm.Query1.SQL.Add('and (cat_cuenta is not null or cat_cuenta <> '+#39+#39+')');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
        dm.Query1.Parameters.ParamByName('fpa').Value := QFormasPagoFPA_CODIGO.Value;
        dm.Query1.Open;
        if dm.Query1.RecordCount > 0 then
        begin
          if (Trim(dm.Query1.FieldByName('cat_cuenta').AsString) <> '') and (not dm.Query1.FieldByName('cat_cuenta').IsNull) then
          begin
            if QDetalle.Locate('cat_cuenta', dm.Query1.FieldByName('cat_cuenta').AsString,[]) then
            begin
              QDetalle.Edit;
              QDetalleDET_MONTO.Value := QFormasPagoFOR_MONTO.value;
              QDetalle.Post;
            end
            else
            begin
              QDetalle.Append;
              QDetalleCAT_CUENTA.Value := dm.Query1.FieldByName('cat_cuenta').AsString;
              QDetalleDET_MONTO.Value  := QFormasPagoFOR_MONTO.value;
              QDetalleDET_ORIGEN.Value := 'Debito';
              QDetalle.Post;
            end;
          end;

    if CtaCliente <> '' then
    begin
      if QDetalle.Locate('cat_cuenta', CtaCliente,[]) then
      begin
        QDetalle.Edit;
        QDetalleDET_MONTO.Value := (QRecibosREC_DESCUENTO.value + totalpositivo + QRecibosREC_RETENCION.Value) - totalnegativo - QRecibosrec_interes.Value-QRecibosREC_MORA.Value;
        QDetalle.Post;
      end
      else
      begin
        QDetalle.Append;
        QDetalleCAT_CUENTA.Value := CtaCliente;
        QDetalleDET_MONTO.Value  := (QRecibosREC_DESCUENTO.value + totalpositivo + QRecibosREC_RETENCION.Value) - totalnegativo - QRecibosrec_interes.Value-QRecibosREC_MORA.Value;
        QDetalleDET_ORIGEN.Value := 'Debito';
        QDetalle.Post;
      end;
    end;
        end;
      end;

      QFormasPago.next;
    end;
    QFormasPago.GotoBookmark(punt);
    QFormasPago.enablecontrols;
    QRecibosREC_MONTO.value := tot;
  End;
end;

procedure TfrmRecibos.QRetencionesret_codigoChange(Sender: TField);
begin
  if not QRetencionesret_codigo.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select ret_nombre, ret_porciento, cat_cuenta from retenciones');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ret_codigo = :ret');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('ret').Value  := QRetencionesret_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
    begin
      MessageDlg('ESTA RETENCION NO EXISTE',mtError,[mbok],0);
      QRetencionesret_codigo.Clear;
      Abort;
    end
    else if dm.Query1.RecordCount > 0 then
    begin
      QRetenciones.Edit;
      QRetencionesdet_nombre.Value := dm.Query1.FieldByName('ret_nombre').AsString;
      QRetencionesdet_cuenta.Value := dm.Query1.FieldByName('cat_cuenta').AsString;
      if dm.Query1.FieldByName('ret_porciento').Value > 0 then begin
        QRetencionesdet_monto.Value := (QRecibosREC_MONTO.Value * dm.Query1.FieldByName('ret_porciento').Value)/100;

      if QRecibos.State in [dsEdit, dsInsert] then
      QRecibosrec_retencion.Value := QRetencionesdet_monto.Value;
      if QRecibos.State in [dsBrowse] then begin
      QRecibos.Edit;
      QRecibosrec_retencion.Value := QRetencionesdet_monto.Value;
      QRecibos.Post;
      end;

       if QDetalle.Locate('cat_cuenta', CtaCliente ,[]) then
      begin
        QDetalle.Edit;
        QDetalleDET_MONTO.Value := QRecibosREC_MONTO.Value + QRecibosREC_DESCUENTO.Value - QRecibosrec_interes.value+QRecibosrec_retencion.Value;
        QDetalle.Post;
      end;
      
      end;
      GridRet.SelectedIndex := 2;
      if ckautomatico.Checked then Distribuir;

    end;
  end;
end;

procedure TfrmRecibos.QRetencionesdet_montoChange(Sender: TField);
begin
  if not QRetencionesdet_monto.IsNull then
  begin
    if not QDetalle.Locate('cat_cuenta',QRetencionesdet_cuenta.Value,[]) then
    begin
      QDetalle.Append;
      QDetalleCAT_CUENTA.Value := QRetencionesdet_cuenta.Value;
      QDetalleDET_ORIGEN.Value := 'Debito';
      QDetalleDET_MONTO.Value  := QRetencionesdet_monto.Value;
      QDetalle.Post;
    end
    else
    begin
      QDetalle.Edit;
      QDetalleDET_MONTO.Value  := QRetencionesdet_monto.Value;
      QDetalle.Post;
    end;
  end;
end;

procedure TfrmRecibos.QRetencionesAfterPost(DataSet: TDataSet);
begin
  TotalizaRet;
  
end;

procedure TfrmRecibos.QRetencionesAfterDelete(DataSet: TDataSet);
begin
  TotalizaRet;
end;

procedure TfrmRecibos.QCentroBeforePost(DataSet: TDataSet);
begin
  if QCentrocen_nombre.IsNull then QCentro.Cancel;
end;

procedure TfrmRecibos.QCentroNewRecord(DataSet: TDataSet);
begin
  QCentroemp_codigo.Value := dm.vp_cia;
end;

procedure TfrmRecibos.ckautomaticoClick(Sender: TObject);
begin
  if ckautomatico.Checked then Distribuir;
end;

procedure TfrmRecibos.QRecibosrec_interesChange(Sender: TField);
begin
  if QRecibosrec_interes.Value > 0 then
  begin
    if (not dm.QContabpar_cta_intereses.IsNull) or (dm.QContabpar_cta_intereses.Value <> '') then
    begin
      if QDetalle.Locate('cat_cuenta', dm.QContabpar_cta_intereses.Value ,[]) then
      begin
        QDetalle.Edit;
        QDetalleDET_MONTO.Value := QRecibosrec_interes.value;
        QDetalle.Post;
      end
      else
      begin
        QDetalle.Append;
        QDetalleCAT_CUENTA.Value := dm.QContabpar_cta_intereses.Value;
        QDetalleDET_MONTO.Value  := QRecibosrec_interes.value;
        QDetalleDET_ORIGEN.Value := 'Credito';
        QDetalle.Post;
      end;

      if QDetalle.Locate('cat_cuenta', CtaCliente ,[]) then
      begin
        QDetalle.Edit;
        QDetalleDET_MONTO.Value := QRecibosREC_MONTO.Value + QRecibosREC_DESCUENTO.Value - QRecibosrec_interes.value+QRecibosrec_retencion.Value;
        QDetalle.Post;
      end;
    end;
  end;
end;

procedure TfrmRecibos.GridCuentasDrawColumnCell(Sender: TObject;
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

procedure TfrmRecibos.spcentrosClick(Sender: TObject);
var
  a : integer;
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select cat_maneja_centro from contcatalogo');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and cat_cuenta = :cta');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('cta').Value := QDetalleCAT_CUENTA.AsString;
  dm.Query1.Open;
  if dm.Query1.FieldByName('cat_maneja_centro').AsString <> 'S' then
  begin
    MessageDlg('Esta cuenta no acepta Centros de Costo', mtError, [mbyes], 0);
    GridCuentas.SetFocus;
  end
  else
  begin
    Application.CreateForm(tfrmCentrosXCuenta, frmCentrosXCuenta);
    frmCentrosXCuenta.lbcuenta.Caption := QDetalleCAT_CUENTA.AsString+': '+QDetalleCAT_NOMBRE.AsString;
    frmCentrosXCuenta.cta := QDetalleCAT_CUENTA.AsString;
    frmCentrosXCuenta.vMontototal := QDetalleDET_MONTO.Value;

    //Grabando registro en la pantalla
    QCentro.DisableControls;
    QCentro.First;
    while not QCentro.Eof do
    begin
      if QCentrocat_cuenta.Value = QDetalleCAT_CUENTA.AsString then
      begin
        frmCentrosXCuenta.QCentro.Append;
        frmCentrosXCuenta.QCentrocen_nombre.Value := QCentrocen_nombre.Value;
        frmCentrosXCuenta.QCentrodet_monto.Value  := QCentrodet_monto.Value;
        frmCentrosXCuenta.QCentrocen_referencia.Value := QCentrocen_referencia.Value;
        frmCentrosXCuenta.QCentrosub_referencia.Value := QCentrosub_referencia.Value;
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
      if QCentrocat_cuenta.Value = QDetalleCAT_CUENTA.AsString then
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
      QCentrocat_cuenta.Value := QDetalleCAT_CUENTA.AsString;
      QCentrocen_nombre.Value := frmCentrosXCuenta.QCentrocen_nombre.Value;
      QCentrodet_monto.Value  := frmCentrosXCuenta.QCentrodet_monto.Value;
      QCentrocen_referencia.Value := frmCentrosXCuenta.QCentrocen_referencia.Value;
      QCentrosub_referencia.Value := frmCentrosXCuenta.QCentrosub_referencia.Value;
      QCentrocen_codigo.Value     := frmCentrosXCuenta.QCentrocen_codigo.Value;
      QCentrosub_secuencia.Value  := frmCentrosXCuenta.QCentrosub_secuencia.Value;
      QCentro.Post;

      frmCentrosXCuenta.QCentro.Next;
    end;
    frmCentrosXCuenta.QCentro.EnableControls;
    frmCentrosXCuenta.Release;
  end;
end;

procedure TfrmRecibos.dsDocDataChange(Sender: TObject; Field: TField);
begin
  lbCant.Caption := ' CANT.: '+IntToStr(TDataSource(sender).DataSet.RecordCount)+' ';
end;

procedure TfrmRecibos.dsReciboDataChange(Sender: TObject; Field: TField);
begin
if (Field<>nil)and(Field.FieldName='CLI_CODIGO') then
  QDocPendiente.Parameters.ParamByName('CLI_CODIGO').Value := Field.Value;
end;

procedure TfrmRecibos.DocShow(Sender: TObject);
begin
  QDocPendiente.Close;
  QDocPendiente.open;
end;

procedure TfrmRecibos.DocExit(Sender: TObject);
begin
  QDocPendiente.Close;
end;

procedure TfrmRecibos.btnReservaClick(Sender: TObject);
begin
  Search.AliasFields.clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.clear;
  Search.Query.add('select Numero_Reserva, Reserva_nombre');
  Search.Query.add('from Hotel_Reservas');
  Search.Query.add('where checkedout = 0');
  Search.ResultField := 'Numero_Reserva';
  Search.Title := 'Listado de Reservas';
  if Search.execute then
  begin
    QRecibosNUMERO_RESERVA.value := strtoint(Search.ValueField);
    dbedtNumReserva.setfocus;
  end;
end;

procedure TfrmRecibos.QRecibosNUMERO_RESERVAGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QRecibosNUMERO_RESERVA.isnull then
  begin
    Text := inttostr(QRecibosNUMERO_RESERVA.value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select Numero_Reserva, Reserva_nombre, cli_codi from Hotel_Reservas');
    dm.Query1.sql.add('where checkedout = 0');
    dm.Query1.sql.add('and Numero_Reserva = :res');
    dm.Query1.Parameters.parambyname('res').Value := QRecibosNumero_Reserva.value;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      edtNoReserva.text := ''
    else
    begin
      edtNoReserva.text := dm.Query1.fieldbyname('Reserva_nombre').asstring;
      edCliente.Text    := DM.Query1.fieldbyname('cli_codi').AsString;
      DBEdit7.Text      := dm.Query1.fieldbyname('Reserva_nombre').asstring;
    end;
  end
  else
    edtNoReserva.text := '';
end;





procedure TfrmRecibos.QDocAfterOpen(DataSet: TDataSet);
begin
Totalizar;
end;

procedure TfrmRecibos.Imp40ColumnasDet;
var
  s, s1, s2, s3, s4, s5, s6 : array[0..20] of char;
  arch, puertopeq : textfile;
  puerto, tipodet : string;
begin
  if FileExists('.\puerto.txt') then
  begin
    assignfile(puertopeq, '.\puerto.txt');
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

  application.createform(tRRecibo, RRecibo);
  RRecibo.QRecibos.Parameters.ParamByName('numero').Value := QRecibosREC_NUMERO.value;
  RRecibo.QRecibos.Parameters.ParamByName('suc').Value := QRecibosSUC_CODIGO.value;
  RRecibo.QRecibos.open;
  RRecibo.QDoc.Open;
  RRecibo.QFormasPago.Open;
  AssignFile(arch, '.\t.txt');
  rewrite(arch);
  writeln(arch, dm.Centro(trim(dm.QEmpresasEMP_NOMBRE.value)));
  writeln(arch, dm.Centro(trim(DM.QEmpresasEMP_DIRECCION.value)));
  writeln(arch, dm.Centro(trim(DM.QEmpresasEMP_LOCALIDAD.value)));
  writeln(arch, dm.Centro('Telefono : '+trim(dm.QEmpresasEMP_TELEFONO.value)));
  writeln(arch, dm.Centro('RNC: '+dm.QEmpresasEMP_RNC.value));
  writeln(arch, ' ');
  writeln(arch, '----------------------------------------');
  writeln(arch, dm.Centro('RECIBO DEL PAGO DEL CONTROL'));
  writeln(arch, '----------------------------------------');


  writeln(arch, ' ');
  writeln(arch, 'RECIBO #       : '+inttostr(RRecibo.QRecibosREC_NUMERO.value));
  writeln(arch, 'Fecha  Ingreso : '+DateToStr(RRecibo.QRecibosREC_FECHA.value)+' '+TimeToStr(Now));

  DM.Query1.Close;
  DM.Query1.SQL.Clear;
  DM.Query1.SQL.Add('select MIN(f.fac_fecha) DESDE, MAX(f.fac_fecha) HASTA');
  DM.Query1.SQL.Add('from Det_Recibo DR');
  DM.Query1.SQL.Add('inner join Facturas F on DR.emp_codigo = F.emp_codigo and');
  DM.Query1.SQL.Add('DR.suc_codigo = f.suc_codigo and DR.det_numero = F.fac_numero');
  DM.Query1.SQL.Add('and dr.fac_forma = f.fac_forma and dr.tfa_codigo = f.tfa_codigo');
  DM.Query1.SQL.Add('INNER JOIN Det_Factura DF ON F.emp_codigo = DF.emp_codigo AND');
  DM.Query1.SQL.Add('F.suc_codigo = DF.suc_codigo AND F.fac_numero = DF.fac_numero');
  DM.Query1.SQL.Add('AND F.fac_forma = DR.fac_forma AND F.tfa_codigo = DR.tfa_codigo');
  DM.Query1.SQL.Add('where Dr.emp_codigo = :EMP and Dr.suc_codigo = :SUC and Dr.rec_numero = :NUM');
  DM.Query1.Parameters.ParamByName('EMP').Value := RRecibo.QRecibosEMP_CODIGO.Value;
  DM.Query1.Parameters.ParamByName('SUC').Value := RRecibo.QRecibossuc_codigo.Value;
  DM.Query1.Parameters.ParamByName('NUM').Value := RRecibo.QRecibosREC_NUMERO.Value;
  DM.Query1.Open;

   
  writeln(arch, 'Fecha Desde    : '+FormatDateTime('dd/mm/yyyy',DM.Query1.FieldByName('DESDE').Value));
  writeln(arch, 'Fecha Hasta    : '+FormatDateTime('dd/mm/yyyy',DM.Query1.FieldByName('HASTA').Value));
  writeln(arch, '');
  writeln(arch, 'Ficha       : '+LeftStr(RRecibo.QRecibosREC_NOMBRE.value,40-14));
  writeln(arch, 'Recibo de   : '+DM.VP_USUARIO);
  writeln(arch, 'La Suma de  : '+FormatCurr('#,0.00',RRecibo.QRecibosREC_MONTO.value));
  DM.Query1.Close;
  DM.Query1.SQL.Clear;
  DM.Query1.SQL.Add('SELECT [dbo].[CantidadConLetra] (:MONTO) LETRAS');
  DM.Query1.Parameters.ParamByName('MONTO').Value := RRecibo.QRecibosREC_MONTO.Value;
  DM.Query1.Open;
  writeln(arch,LeftStr(DM.Query1.FieldByName('LETRAS').VALUE,40));




  writeln(arch, '');

  with dm.Query1 do begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT LEFT(DF.pro_nombre,18) SERVICIO, DF.PRO_CODIGO CODIGO, ');
  SQL.Add('SUM(det_cantidad * det_precio) IMPORTE');
  SQL.Add('from Recibos R');
  SQL.Add('inner join Det_Recibo DR on R.emp_codigo = DR.emp_codigo and ');
  SQL.Add('R.suc_codigo = DR.suc_codigo and R.rec_numero = DR.rec_numero');
  SQL.Add('inner join Facturas F on DR.emp_codigo = F.emp_codigo and ');
  SQL.Add('DR.suc_codigo = f.suc_codigo and DR.det_numero = F.fac_numero');
  SQL.Add('and dr.fac_forma = f.fac_forma and dr.tfa_codigo = f.tfa_codigo');
  SQL.Add('INNER JOIN Det_Factura DF ON F.emp_codigo = DF.emp_codigo AND');
  SQL.Add('F.suc_codigo = DF.suc_codigo AND F.fac_numero = DF.fac_numero');
  SQL.Add('AND F.fac_forma = DR.fac_forma AND F.tfa_codigo = DR.tfa_codigo');
  SQL.Add('where r.emp_codigo = :EMP and r.suc_codigo = :SUC and r.rec_numero = :NUM');
  SQL.Add('GROUP BY DF.pro_nombre, DF.PRO_CODIGO');
  SQL.Add('ORDER BY DF.pro_nombre');
  Parameters.ParamByName('EMP').Value := RRecibo.QRecibosEMP_CODIGO.Value;
  Parameters.ParamByName('SUC').Value := RRecibo.QRecibossuc_codigo.Value;
  Parameters.ParamByName('NUM').Value := RRecibo.QRecibosREC_NUMERO.Value;
  Open;
  IF NOT IsEmpty THEN BEGIN
  writeln(arch, '----------------------------------------');
  writeln(arch,DM.Centro('DETALLE DE SERVICIOS PAGADOS'));
  writeln(arch, '----------------------------------------');
  writeln(arch, 'CODIGO CARGO                     IMPORTE');
  writeln(arch, '----------------------------------------');
  writeln(arch, ' ');
  while not DM.Query1.eof do
  begin
    s := '';
    fillchar(S, 6-LENGTH(DM.Query1.FieldByName('CODIGO').Text),' ');
    s1 := '';
    fillchar(S1, 24-LENGTH(DM.Query1.FieldByName('SERVICIO').Text),' ');
    s2 := '';
    fillchar(s3, 9-length(FormatCurr('#,0',DM.Query1.FieldByName('IMPORTE').Value)),' ');
    writeln(arch, (S+DM.Query1.FieldByName('CODIGO').Text+' '+
                  DM.Query1.FieldByName('SERVICIO').Text+' '+S1+S2+
                  FormatCurr('#,0.00',DM.Query1.FieldByName('IMPORTE').value)));
    DM.Query1.next;
  end;

  end;
  end;
  dm.Query1.Close;

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
    fillchar(s1, 10-length(FormatCurr('#,0.00',dm.Query1.FieldByName('monto').Value)),' ');
    writeln(arch,copy(dm.Query1.FieldByName('fpa_nombre').asstring,1,14)+s+s1+FormatCurr('#,0.00',dm.Query1.FieldByName('monto').Value));
    dm.Query1.Next;
  end;
  dm.Query1.EnableControls;
  s2 := '';
    fillchar(s2, 9-length(FormatCurr('#,0.00',RRecibo.QRecibosREC_MONTO.value)),' ');
  writeln(arch, 'Total Pagado '+s1+FormatCurr('#,0.00',RRecibo.QRecibosREC_MONTO.value));

  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, dm.Centro(RRecibo.QRecibosREC_CONCEPTO.value));
  writeln(arch, dm.Centro('_______________________'));
  writeln(arch, dm.Centro('Recibido por'));
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, dm.Centro(UpperCase(dm.vp_usuario)));
  writeln(arch, dm.Centro('_______________________'));
  writeln(arch, dm.Centro('Entregado por'));
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  CloseFile(arch);
  winexec('.\imp.bat',0);
  RRecibo.Destroy;

end;


function TfrmRecibos.CalcComision: Double;
begin
Result := 0;
with QDoc do begin
DisableControls;
First;
while not Eof do begin
if QDocDET_MONTO.Value>0 then
Result := Result + QDocDET_MONTO.Value - QDocdet_totalitbis.Value;
Next;
end;
First;
EnableControls;
end;


end;

procedure TfrmRecibos.EnvioMail(Reporte: TQuickRep; Tipo: String);
begin
with dm.Query1 do begin
Close;
SQL.Clear;
SQL.Add('select * from clientes where cli_codigo = '+QRecibosCLI_CODIGO.Text);
SQL.Add('and emp_codigo = '+QRecibosEMP_CODIGO.Text);
Open;
if DM.Query1.RecordCount = 0 then begin
ShowMessage('El cliente no tiene Email asignado, favor verificar!');
Reporte.Destroy;
Exit;
end;
vl_dest := DM.Query1.fieldbyname('cli_email').Text;
vl_clienteN := Trim(DM.Query1.fieldbyname('cli_nombre').Text);
end;

vl_factnum := QRecibosREC_NUMERO.Text;
if (DM.QParametrosPar_Envio_Rec_Estadocta.Value = True) then
vl_asunto := 'Envio de Recibo No. '+vl_factnum+'y su Estado de Cuenta al dia '+FormatDateTime('dd/mm/yyyy',Date) else
vl_asunto := 'Envio de Recibo No. '+vl_factnum;

//Cuerpo del mensaje
  mmo1.Clear;
  mmo1.Lines.Add('Buenas,');
  mmo1.Lines.Add('');
  mmo1.Lines.Add('Sres. '+vl_clienteN+',');
  if DM.QParametrosPar_Envio_Rec_Estadocta.Value = True then
  mmo1.Lines.Add('Adjunto encontraras Recibo de Pago No. '+vl_factnum+', y el estado de cuenta al dia '+FormatDateTime('dd/mm/yyyy',Date)) else
  mmo1.Lines.Add('Adjunto encontraras Recibo de Pago No. '+vl_factnum);
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

procedure TfrmRecibos.GenerarEstadoCxC;
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
  REstadoCtaCli.QClientes.SQL.Add('and cli_codigo = '+IntToStr(QRecibosCLI_CODIGO.Value));
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
  //REstadoCtaCli.lbTipo.Caption := tTipo.Text;
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

procedure TfrmRecibos.tmrCorreoTimer(Sender: TObject);
begin
frmRecibos.Caption := 'Favor Espere Enviado Correo...... ';
Application.ProcessMessages;
end;

procedure TfrmRecibos.QRecibosREC_MORAChange(Sender: TField);
begin
  if QRecibosREC_MORA.Value > 0 then
  begin
    if (not dm.QContabpar_cta_intereses.IsNull) or (dm.QContabpar_cta_intereses.Value <> '') then
    begin
      if QDetalle.Locate('cat_cuenta', dm.QContabpar_cta_intereses.Value ,[]) then
      begin
        QDetalle.Edit;
        QDetalleDET_MONTO.Value := QRecibosREC_MORA.value;
        QDetalle.Post;
      end
      else
      begin
        QDetalle.Append;
        QDetalleCAT_CUENTA.Value := dm.QContabpar_cta_intereses.Value;
        QDetalleDET_MONTO.Value  := QRecibosREC_MORA.value;
        QDetalleDET_ORIGEN.Value := 'Credito';
        QDetalle.Post;
      end;

      if CtaCliente <> '' then begin
      if QDetalle.Locate('cat_cuenta', CtaCliente ,[]) then
      begin
        QDetalle.Edit;
        QDetalleDET_MONTO
        .Value := QRecibosREC_MONTO.Value + QRecibosREC_DESCUENTO.Value - QRecibosrec_interes.value - QRecibosREC_MORA.Value+QRecibosrec_retencion.Value;
        QDetalle.Post;
      end;
      end;
    end;
  end;

end;

procedure TfrmRecibos.GridMovExit(Sender: TObject);
begin
if TotalDetalle > 0 then begin
if QRecibos.State in [dsEdit, dsInsert] then
QRecibosREC_MONTO.Value := TotalDetalle;
if QRecibos.State in [dsBrowse] then begin
QRecibos.Edit;
QRecibosREC_MONTO.Value := TotalDetalle;
QRecibos.Post;
end;
end;
end;

procedure TfrmRecibos.QDocPendienteBeforeOpen(DataSet: TDataSet);
begin
QDocPendiente.Parameters.ParamByName('SUC').Value := DBLookupComboBox2.KeyValue;
end;

procedure TfrmRecibos.DBLookupComboBox2CloseUp(Sender: TObject);
begin
 ckCobro.Checked;
 ckCobroClick(Self);
end;

procedure TfrmRecibos.QFormasPagoBeforeOpen(DataSet: TDataSet);
begin
QForma.Close;
QForma.Open;
end;

procedure TfrmRecibos.QFormaBeforeOpen(DataSet: TDataSet);
begin
QForma.Parameters.ParamByName('emp_codigo').Value := DM.vp_cia;
end;

end.
