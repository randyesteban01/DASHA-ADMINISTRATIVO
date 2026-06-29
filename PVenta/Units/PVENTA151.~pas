unit PVENTA151;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, ComCtrls, StdCtrls, ExtCtrls, Buttons, Grids, DBGrids,
  DB, ADODB, QuerySearchDlgADO, QuickRpt, QRCtrls, Menus,uFrmPopupDGII;

type
  TEnvioResultado = (erAceptado, erRechazado, erError);
  TfrmConsTicket = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    Label6: TLabel;
    Label11: TLabel;
    tCajero: TEdit;
    edCajero: TEdit;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    edCaja: TEdit;
    Panel2: TPanel;
    btRefresh: TBitBtn;
    btClose: TBitBtn;
    rgTipo: TRadioGroup;
    QTickets: TADOQuery;
    dsTickets: TDataSource;
    QDetalle: TADOQuery;
    QDetalleproducto: TIntegerField;
    QDetalledescripcion: TStringField;
    QDetallecantidad: TBCDField;
    QDetalleprecio: TBCDField;
    QDetalleItbis: TBCDField;
    dsDetalle: TDataSource;
    Search: TQrySearchDlgADO;
    BitBtn2: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    QMovimientos: TADOQuery;
    dsMovimiento: TDataSource;
    DBGrid2: TDBGrid;
    QMovimientosemp_codigo: TIntegerField;
    QMovimientossuc_codigo: TIntegerField;
    QMovimientosmov_tipo: TStringField;
    QMovimientosmov_numero: TIntegerField;
    QMovimientosmov_fecha: TDateTimeField;
    QMovimientosmov_monto: TBCDField;
    QMovimientosmov_abono: TBCDField;
    QMovimientosmov_status: TStringField;
    QMovimientosmov_fechavence: TDateTimeField;
    QMovimientosmov_ticket: TStringField;
    QMovimientoscli_nombre: TStringField;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Grid: TDBGrid;
    QFormapago: TADOQuery;
    QFormapagoforma_pago: TStringField;
    QFormapagopagado: TBCDField;
    QFormapagodevuelta: TBCDField;
    dsForma: TDataSource;
    DBGrid3: TDBGrid;
    Label1: TLabel;
    eddesde: TEdit;
    edhasta: TEdit;
    Label2: TLabel;
    sec1: TEdit;
    sec2: TEdit;
    cbncf_fijo: TComboBox;
    ckgrabada: TCheckBox;
    ckexento: TCheckBox;
    cborden: TComboBox;
    btAnula: TBitBtn;
    BitBtn4: TBitBtn;
    QDetalledescuento: TBCDField;
    QDetalleTotalDescuento: TFloatField;
    QDetalleValor: TFloatField;
    QDetallePrecioItbis: TFloatField;
    QDetalleCalcItbis: TFloatField;
    TabSheet5: TTabSheet;
    QResumen: TADOQuery;
    dsResumen: TDataSource;
    Memo1: TMemo;
    QFormapagodocumento: TStringField;
    BitBtn5: TBitBtn;
    Label4: TLabel;
    edProd: TEdit;
    SpeedButton2: TSpeedButton;
    tProd: TEdit;
    BitBtn6: TBitBtn;
    Splitter1: TSplitter;
    Label5: TLabel;
    edCarnet: TEdit;
    Label7: TLabel;
    SpeedButton3: TSpeedButton;
    edCliente: TEdit;
    tCliente: TEdit;
    QEmpresas: TADOQuery;
    QEmpresasemp_codigo: TIntegerField;
    QEmpresasemp_nombre: TStringField;
    dsEmpresas: TDataSource;
    btcambiar: TBitBtn;
    ProcNCF: TADOStoredProc;
    QResumenusu_codigo: TIntegerField;
    QResumenusu_nombre: TStringField;
    QResumencaja: TIntegerField;
    QResumentotal: TBCDField;
    QResumenefectivo: TBCDField;
    QResumencheque: TBCDField;
    QResumentarjeta: TBCDField;
    QResumencredito: TBCDField;
    QResumenbonos: TBCDField;
    ckdomicilio: TCheckBox;
    QDetallepatrocinador: TStringField;
    QDetalleEsPatrocinador: TStringField;
    QTicketsNCF: TStringField;
    QResumennc: TBCDField;
    QResumendescuento: TBCDField;
    QResumenNombreCaja: TStringField;
    btcambiarnc: TBitBtn;
    lbcant: TLabel;
    PopupMenu1: TPopupMenu;
    Cambiarformadepago1: TMenuItem;
    PopupMenu2: TPopupMenu;
    Cambiarempresa1: TMenuItem;
    QTicketsusu_codigo: TIntegerField;
    QTicketsfecha: TDateTimeField;
    QTicketsfecha_hora: TDateTimeField;
    QTicketscaja: TIntegerField;
    QTicketsticket: TIntegerField;
    QTicketstotal: TBCDField;
    QTicketsitbis: TBCDField;
    QTicketsdescuento: TBCDField;
    QTicketsstatus: TStringField;
    QTicketsmov_numero: TIntegerField;
    QTicketsrnc: TStringField;
    QTicketsNCF_Fijo: TStringField;
    QTicketsNCF_Secuencia: TBCDField;
    QTicketssorteo: TStringField;
    QTicketsBoletos: TIntegerField;
    QTicketsnombre_domicilio: TStringField;
    QTicketstelefono_domicilio: TStringField;
    QTicketsDomicilio: TStringField;
    QTicketsncf_tipo: TIntegerField;
    QTicketsnombre: TStringField;
    QTicketsNombreCaja: TStringField;
    QTicketsusu_nombre: TStringField;
    QTicketsSupervisor: TStringField;
    QTicketsemp_codigo: TIntegerField;
    QFormapagocliente: TIntegerField;
    QFormapagocredito: TStringField;
    QTicketsgrabado: TBCDField;
    QTicketsexento: TBCDField;
    DBGrid4: TDBGrid;
    QResumenOtrosBonos: TBCDField;
    QFormapagoPagoTicket: TCurrencyField;
    QFormapagofor_veriphone_desc: TStringField;
    QFormapagofor_veriphone_devolucion: TStringField;
    cbempresa: TDBLookupComboBox;
    cbSucursal: TDBLookupComboBox;
    qSucursal: TADOQuery;
    DS_Sucursal: TDataSource;
    qSucursalsuc_codigo: TIntegerField;
    qSucursalsuc_nombre: TStringField;
    QEmpresasusu_codigo: TIntegerField;
    chkEmpresa: TCheckBox;
    chkSucursal: TCheckBox;
    QTicketssuc_codigo: TIntegerField;
    btnEnviarDGII: TBitBtn;
    QTicketsError_DGII: TBooleanField;
    QTicketsemp_rnc: TStringField;
    QTicketseNCF: TStringField;
    QTicketscod_dgii: TIntegerField;
    QTicketsEnviado_DGII: TBooleanField;
    QTicketsAceptadoDGII: TBooleanField;
    cbStatusDGII: TRadioGroup;
    btnEnviarDGIIMasivo: TBitBtn;
    ProgressBar1: TProgressBar;
    FrmPopupDGIIQDGIIParametersParamByNamecaja1: TMenuItem;
    procedure FormPaint(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure QTicketsCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btRefreshClick(Sender: TObject);
    procedure QTicketsAfterOpen(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure edCajeroChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure QTicketsFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure ckgrabadaClick(Sender: TObject);
    procedure ckexentaClick(Sender: TObject);
    procedure ckexentoClick(Sender: TObject);
    procedure btAnulaClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure edCajeroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure QResumenCalcFields(DataSet: TDataSet);
    procedure PageControl1Change(Sender: TObject);
    procedure dsTicketsDataChange(Sender: TObject; Field: TField);
    procedure BitBtn5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure edProdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn6Click(Sender: TObject);
    procedure edClienteChange(Sender: TObject);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure cbempresaClick(Sender: TObject);
    procedure btcambiarClick(Sender: TObject);
    procedure btcambiarncClick(Sender: TObject);
    procedure Cambiarformadepago1Click(Sender: TObject);
    procedure Cambiarempresa1Click(Sender: TObject);
    procedure QFormapagoCalcFields(DataSet: TDataSet);
    procedure QEmpresasAfterOpen(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cbStatusDGIIClick(Sender: TObject);
    procedure btnEnviarDGIIClick(Sender: TObject);
    procedure btnEnviarDGIIMasivoClick(Sender: TObject);
    procedure FrmPopupDGIIQDGIIParametersParamByNamecaja1Click(
      Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Producto, CodCliente : Integer;
    function EnviarFacturaActual(
      out ResultadoTexto: WideString;
      MostrarMensajes: Boolean = True
    ): TEnvioResultado;

        function ValidarENCFDisponible(
      AEmp: Integer; ATipo: Integer;
      out AMsg: string;
      out ASiguienteCorrelativo: Int64
    ): Boolean;

  end;

var
  frmConsTicket: TfrmConsTicket;

implementation

uses SIGMA00, SIGMA01, RVENTA73, RVENTA74, CAJA12, RVENTA91, RVENTA101,
  PVENTA33, RVENTA102, CONT76, PVENTA218,DelphiZXingQRCode,FacturacionElectronicaDGII_TLB;

{$R *.dfm}
function TfrmConsTicket.ValidarENCFDisponible(
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
  Q.SQL.Add('WHERE s.emp_codigo = :emp AND t.cod_dgii = :tip');
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
      AMsg := 'La secuencia est� vencida.';
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

  // Hay secuencia v�lida y disponible (sin reservar)
  ASiguienteCorrelativo := siguiente;
  Result := True;
end;

procedure TfrmConsTicket.FormPaint(Sender: TObject);
begin
  with frmConsTicket do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmConsTicket.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsTicket.QTicketsCalcFields(DataSet: TDataSet);
begin
  if QTicketsNCF_Fijo.IsNull then
    QTicketsNCF.Value := ''
  else
    QTicketsNCF.Value := QTicketsNCF_Fijo.Value + formatfloat('00000000',QTicketsNCF_Secuencia.Value);

  //QTicketsGrabado.Value := StrToFloat(Format('%10.2F',[((StrToFloat(Format('%10.2F',[QTicketsitbis.Value]))*100)/16)]));
  {QTicketsExcento.Value := StrToFloat(Format('%10.2F',[QTicketsmonto.Value])) -
          (StrToFloat(Format('%10.2F',[QTicketsgrabado.Value])) +
          StrToFloat(Format('%10.2F',[QTicketsitbis.Value]))) ;
  if QTicketsExcento.Value < 0 then QTicketsExcento.Value := 0;}
end;

procedure TfrmConsTicket.FormCreate(Sender: TObject);
begin
  btAnula.Visible := dm.qusuariosusu_anula_ticket.Value = 'True';
  btcambiarnc.Visible := dm.qusuariosusu_anula_ticket.Value = 'True';

  if not dm.QParametrosUsa_FacturacionElectronica.AsBoolean then
  begin
    btnEnviarDGII.Visible := False;
   
  end
  else
  begin
    btnEnviarDGII.Visible := True;
    DBGrid1.Columns[4].FieldName := 'eNCF';
    DBGrid1.Columns[4].Title.Caption :='eNCF';
  end;

  Memo1.Lines := QTickets.SQL;
  fecha1.Date := date;
  fecha2.Date := date;
end;

procedure TfrmConsTicket.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConsTicket.btRefreshClick(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  PageControl1.ActivePageIndex := 0;

  QTickets.Close;
  QTickets.Filtered := (ckgrabada.Checked) or (ckexento.Checked);
  QTickets.SQL := Memo1.Lines;
  case rgTipo.ItemIndex of
  1 : begin
        QTickets.SQL.Add('and m.ticket in (select ticket from formas_pago_ticket where fecha = m.fecha');
        QTickets.SQL.Add('and usu_codigo = m.usu_codigo and caja = m.caja and ticket = m.ticket');
        QTickets.SQL.Add('and credito = '+QuotedStr('True')+')');
        QTickets.SQL.Add('and m.status = '+QuotedStr('FAC'));
      end;
  2 : begin
        QTickets.SQL.Add('and m.ticket in (select ticket from formas_pago_ticket where fecha = m.fecha');
        QTickets.SQL.Add('and usu_codigo = m.usu_codigo and caja = m.caja and ticket = m.ticket');
        QTickets.SQL.Add('and credito = '+QuotedStr('False')+')');
        QTickets.SQL.Add('and m.status = '+QuotedStr('FAC'));
      end;
  3 : QTickets.SQL.Add('and m.status = '+QuotedStr('ANU'));
  4 : QTickets.SQL.Add('and m.status = '+QuotedStr('CAN'));
  5 : QTickets.SQL.Add('and m.status = '+QuotedStr('TMP'));
  end;
  if Trim(edCliente.Text) <> '' then
  begin
    QTickets.SQL.Add('and m.ticket in (select ticket from formas_pago_ticket where fecha = m.fecha');
    QTickets.SQL.Add('and usu_codigo = m.usu_codigo and caja = m.caja and ticket = m.ticket');
    QTickets.SQL.Add('and cliente = '+IntToStr(CodCliente)+')');
  end;

  if ckdomicilio.Checked then
    QTickets.SQL.Add('and m.domicilio = '+QuotedStr('True'));

  if Trim(edCarnet.Text) <> '' then
    QTickets.SQL.Add('and m.sorteo = '+edCarnet.Text);

  if Trim(edCaja.Text) <> '' then
    QTickets.SQL.Add('and m.caja = '+edcaja.Text);

  if Trim(edCajero.Text) <> '' then
    QTickets.SQL.Add('and m.usu_codigo = '+edCajero.Text);

  if Trim(edProd.Text) <> '' then
  begin
    QTickets.SQL.Add('and exists (select * from ticket t where t.fecha = m.fecha');
    QTickets.SQL.Add('and t.caja = m.caja and t.usu_codigo = m.usu_codigo and t.ticket = m.ticket and t.producto = '+IntToStr(Producto)+')');
  end;

  if (Trim(eddesde.Text) <> '') and (Trim(edhasta.Text) <> '') then
    QTickets.SQL.Add('and m.ticket between '+eddesde.Text+' and '+edhasta.Text);

  if (Trim(sec1.Text) <> '') and (Trim(sec2.Text) <> '') then
  begin
    QTickets.SQL.Add('and m.ncf_fijo = '+QuotedStr(cbncf_fijo.Text));
    QTickets.SQL.Add('and m.ncf_secuencia between '+sec1.Text+' and '+sec2.Text);
  end;

  IF cbncf_fijo.Text <> '*** Todos ***' then
  begin
    QTickets.SQL.Add('and m.ncf_fijo = '+QuotedStr(cbncf_fijo.Text));
    QTickets.SQL.Add('and m.ncf_secuencia between 1 and 10000000');

  end;

  if chkEmpresa.Checked then
  QTickets.SQL.Add('and m.emp_codigo = :emp_codigo');

  if chkSucursal.Checked then
  QTickets.SQL.Add('and m.suc_codigo = :suc_codigo');

    if cbStatusDGII.ItemIndex = 1 then
     QTickets.sql.add('and AceptadoDGII = 1')
  else if cbStatusDGII.ItemIndex = 2 then
     QTickets.sql.add('and  Error_DGII=1 ')
  else if cbStatusDGII.ItemIndex = 3 then
     QTickets.sql.add('and m.Error_DGII=0 and (m.AceptadoDGII = 0 OR m.AceptadoDGII IS NULL)');



  case cborden.ItemIndex of
  0 : QTickets.SQL.Add('order by m.fecha desc');
  1 : QTickets.SQL.Add('order by m.caja desc');
  2 : QTickets.SQL.Add('order by m.usu_codigo desc');
  3 : QTickets.SQL.Add('order by m.ticket desc');
  4 : QTickets.SQL.Add('order by m.fecha desc, m.caja desc, m.usu_codigo desc, m.ticket desc');
  5 : QTickets.SQL.Add('order by m.ncf_fijo desc, m.ncf_secuencia desc');
  6 : QTickets.SQL.Add('order by m.nombre desc');
  end;

  QTickets.Parameters.parambyname('fec1').DataType := ftDate;
  QTickets.Parameters.parambyname('fec2').DataType := ftDate;
  QTickets.Parameters.ParamByName('fec1').Value := fecha1.Date;
  QTickets.Parameters.ParamByName('fec2').Value := fecha2.Date;

  if chkEmpresa.Checked then begin
  QTickets.Parameters.ParamByName('emp_codigo').DataType := ftInteger;
  QTickets.Parameters.ParamByName('emp_codigo').Value    := cbempresa.KeyValue;
  end;

  if chkSucursal.Checked then begin
  QTickets.Parameters.ParamByName('suc_codigo').DataType := ftInteger;
  QTickets.Parameters.ParamByName('suc_codigo').Value    := cbSucursal.KeyValue;
  end;

  QTickets.Open;

  QMovimientos.Close;
  QMovimientos.SQL.clear;
  QMovimientos.SQL.Add('select m.emp_codigo, m.suc_codigo, m.mov_tipo, m.mov_numero,');
  QMovimientos.SQL.Add('m.mov_fecha, m.mov_monto, m.mov_abono, m.mov_status,');
  QMovimientos.SQL.Add('m.mov_fechavence, m.mov_ticket, c.cli_nombre');
  QMovimientos.SQL.Add('from movimientos m, clientes c, montos_ticket t');
  QMovimientos.SQL.Add('where m.mov_tipo = '+QuotedStr('TK'));
  QMovimientos.SQL.Add('and m.emp_codigo = c.emp_codigo');
  QMovimientos.SQL.Add('and m.cli_codigo = c.cli_codigo');
  QMovimientos.SQL.Add('and m.mov_fecha between convert(datetime, :fec1, 105) and convert(datetime, :fec2, 105)');
  QMovimientos.SQL.Add('and m.mov_fecha = t.fecha');
  QMovimientos.SQL.Add('and m.mov_numero = t.mov_numero');
  QMovimientos.SQL.Add('and m.emp_codigo = t.emp_codigo');

  if Trim(edCaja.Text) <> '' then
    QMovimientos.SQL.Add('and t.caja = '+edcaja.Text);

  if ckdomicilio.Checked then
    QMovimientos.SQL.Add('and t.domicilio = '+QuotedStr('True'));

  if Trim(edCarnet.Text) <> '' then
    QMovimientos.SQL.Add('and t.sorteo = '+edCarnet.Text);

  if Trim(edCajero.Text) <> '' then
    QMovimientos.SQL.Add('and t.usu_codigo = '+edCajero.Text);

  if (Trim(eddesde.Text) <> '') and (Trim(edhasta.Text) <> '') then
    QMovimientos.SQL.Add('and t.ticket between '+eddesde.Text+' and '+edhasta.Text);

  if (Trim(sec1.Text) <> '') and (Trim(sec2.Text) <> '') then
  begin
    QMovimientos.SQL.Add('and t.ncf_fijo = '+QuotedStr(cbncf_fijo.Text));
    QMovimientos.SQL.Add('and t.ncf_secuencia between '+sec1.Text+' and '+sec2.Text);
  end;

  if cbncf_fijo.Text <> '*** Todos ***' then
  begin
    QMovimientos.SQL.Add('and t.ncf_fijo = '+QuotedStr(cbncf_fijo.Text));
    QMovimientos.SQL.Add('and t.ncf_secuencia between 1 and 10000000');
  end;

  if chkEmpresa.Checked then
  QMovimientos.SQL.Add('and m.emp_codigo = :emp_codigo');

  if chkSucursal.Checked then
  QMovimientos.SQL.Add('and m.suc_codigo = :suc_codigo');


  QMovimientos.SQL.Add('order by m.mov_fecha desc, m.mov_numero desc');
  QMovimientos.Parameters.parambyname('fec1').DataType := ftDate;
  QMovimientos.Parameters.parambyname('fec2').DataType := ftDate;
  QMovimientos.Parameters.ParamByName('fec1').Value := fecha1.Date;
  QMovimientos.Parameters.ParamByName('fec2').Value := fecha2.Date;

  if chkEmpresa.Checked then begin
  QMovimientos.Parameters.ParamByName('emp_codigo').DataType := ftInteger;
  QMovimientos.Parameters.ParamByName('emp_codigo').Value    := cbempresa.KeyValue;
  end;

  if chkSucursal.Checked then begin
  QMovimientos.Parameters.ParamByName('suc_codigo').DataType := ftInteger;
  QMovimientos.Parameters.ParamByName('suc_codigo').Value    := cbSucursal.KeyValue;
  end;

  QMovimientos.Open;

  //Resumen
  QResumen.Close;
  QResumen.SQL.Clear;
  QResumen.SQL.Add('select * from pr_resumen_ejecutivo_caja (:emp, :fec1, :fec2) where 1=1');

  if Trim(edCaja.Text) <> '' then
    QResumen.SQL.Add('and caja = '+edcaja.Text);

  if Trim(edCajero.Text) <> '' then
    QResumen.SQL.Add('and usu_codigo = '+edCajero.Text);

  QResumen.Parameters.parambyname('emp').Value := cbempresa.KeyValue;
  QResumen.Parameters.parambyname('fec1').DataType := ftDate;
  QResumen.Parameters.parambyname('fec2').DataType := ftDate;
  QResumen.Parameters.ParamByName('fec1').Value := fecha1.Date;
  QResumen.Parameters.ParamByName('fec2').Value := fecha2.Date;
  QResumen.Open;

  PageControl1.ActivePageIndex := 0;
  DBGrid1.SetFocus;

  lbcant.Caption := IntToStr(QTickets.RecordCount)+' Tickets';

  Screen.Cursor := crDefault;
end;

procedure TfrmConsTicket.QTicketsAfterOpen(DataSet: TDataSet);
begin
  if not QDetalle.Active then QDetalle.Open;
  if not QFormapago.Active then QFormapago.Open;
end;

procedure TfrmConsTicket.SpeedButton1Click(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C�digo');
  Search.Query.clear;
  Search.Query.add('select usu_nombre, usu_codigo');
  Search.Query.add('from usuarios');
  Search.ResultField := 'usu_Codigo';
  Search.Title := 'Usuarios';
  if Search.execute then
  begin
    edCajero.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select usu_nombre from usuarios');
    dm.Query1.sql.add('where usu_codigo = :cod');
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edCajero.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('USUARIO NO EXISTE',mterror,[mbok],0)
    else
      tCajero.text := dm.Query1.fieldbyname('usu_nombre').asstring;
    edCajero.setfocus;
    btRefreshClick(self);
  end;
end;

procedure TfrmConsTicket.BitBtn2Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;

  if PageControl1.ActivePageIndex = 0 then
  begin
    Application.CreateForm(tRepListaTickets, RepListaTickets);
    RepListaTickets.lbFecha.Caption := 'Del ' + DateToStr(Fecha1.Date) + ' Al ' + DateToStr(Fecha2.Date);
    RepListaTickets.lbCajero.Caption := tCajero.Text;
    RepListaTickets.lbCaja.Caption   := edCaja.Text;
    RepListaTickets.lbprod.Caption   := tProd.Text;

    RepListaTickets.ckgrabado := ckgrabada.Checked;
    RepListaTickets.ckexento  := ckexento.Checked;

    RepListaTickets.QTickets.Close;
    RepListaTickets.QTickets.SQL.Clear;
    RepListaTickets.QTickets.SQL  := QTickets.SQL;

    if chkEmpresa.Checked then begin
  RepListaTickets.QTickets.Parameters.ParamByName('emp_codigo').DataType := ftInteger;
  RepListaTickets.QTickets.Parameters.ParamByName('emp_codigo').Value    := cbempresa.KeyValue;
  end;

  if chkSucursal.Checked then begin
  RepListaTickets.QTickets.Parameters.ParamByName('suc_codigo').DataType := ftInteger;
  RepListaTickets.QTickets.Parameters.ParamByName('suc_codigo').Value    := cbSucursal.KeyValue;
  end;

    RepListaTickets.QTickets.Parameters.parambyname('fec1').DataType := ftDate;
    RepListaTickets.QTickets.Parameters.parambyname('fec2').DataType := ftDate;
    RepListaTickets.QTickets.Parameters.ParamByName('fec1').Value := fecha1.Date;
    RepListaTickets.QTickets.Parameters.ParamByName('fec2').Value := fecha2.Date;
    RepListaTickets.QTickets.Open;

    RepListaTickets.QEmpresas.Parameters.ParamByName('emp').Value := cbempresa.KeyValue;
    RepListaTickets.QEmpresas.Parameters.ParamByName('usu').Value := dm.Usuario;
    RepListaTickets.QEmpresas.Open;

    Screen.Cursor := crDefault;

    RepListaTickets.PrinterSetup;
    RepListaTickets.Preview;
    RepListaTickets.Destroy;
  end
  else if PageControl1.ActivePageIndex = 2 then
  begin
    Application.CreateForm(tRepResumenTicket, RepResumenTicket);
    RepResumenTicket.lbFecha.Caption := 'Del ' + DateToStr(Fecha1.Date) + ' Al ' + DateToStr(Fecha2.Date);
    RepResumenTicket.QResumen.SQL := QResumen.SQL;

    RepResumenTicket.QResumen.Parameters.parambyname('emp').Value := cbempresa.KeyValue;
    RepResumenTicket.QResumen.Parameters.parambyname('fec1').DataType := ftDate;
    RepResumenTicket.QResumen.Parameters.parambyname('fec2').DataType := ftDate;
    RepResumenTicket.QResumen.Parameters.ParamByName('fec1').Value := fecha1.Date;
    RepResumenTicket.QResumen.Parameters.ParamByName('fec2').Value := fecha2.Date;
    RepResumenTicket.QResumen.Open;

    RepResumenTicket.QEmpresas.Parameters.ParamByName('emp').Value := cbempresa.KeyValue;
    RepResumenTicket.QEmpresas.Parameters.ParamByName('usu').Value := dm.Usuario;
    RepResumenTicket.QEmpresas.Open;

    Screen.Cursor := crDefault;
    RepResumenTicket.PrinterSetup;
    RepResumenTicket.Preview;
    RepResumenTicket.Destroy;
  end;
end;

procedure TfrmConsTicket.BitBtn1Click(Sender: TObject);
begin
  Application.CreateForm(tRepTicketsCR, RepTicketsCR);
  RepTicketsCR.lbFecha.Caption := 'Del ' + DateToStr(Fecha1.Date) + ' Al ' + DateToStr(Fecha2.Date);
  RepTicketsCR.lbCajero.Caption := tCajero.Text;
  RepTicketsCR.lbCaja.Caption   := edCaja.Text;
  RepTicketsCR.QMovimientos.SQL := QMovimientos.SQL;
  RepTicketsCR.QMovimientos.Parameters.parambyname('fec1').DataType := ftDate;
  RepTicketsCR.QMovimientos.Parameters.parambyname('fec2').DataType := ftDate;
  RepTicketsCR.QMovimientos.Parameters.ParamByName('fec1').Value := fecha1.Date;
  RepTicketsCR.QMovimientos.Parameters.ParamByName('fec2').Value := fecha2.Date;
  RepTicketsCR.QMovimientos.Open;

  RepTicketsCR.QEmpresas.Parameters.ParamByName('emp').Value := cbempresa.KeyValue;
  RepTicketsCR.QEmpresas.Parameters.ParamByName('usu').Value := dm.Usuario;
  RepTicketsCR.QEmpresas.Open;

  RepTicketsCR.PrinterSetup;
  RepTicketsCR.Preview;
  RepTicketsCR.Destroy;
end;

procedure TfrmConsTicket.BitBtn3Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  application.createform(tRTicketFormal, RTicketFormal);
  RTicketFormal.tiponcf := QTicketsncf_tipo.AsInteger;
  RTicketFormal.empresa := cbempresa.KeyValue;
  RTicketFormal.cliente := QFormapagocliente.Value;
  RTicketFormal.Credito := QFormapagocredito.Value;

  RTicketFormal.QEmpresas.Parameters.ParamByName('emp').Value := cbempresa.KeyValue;
  RTicketFormal.QEmpresas.Open;

  RTicketFormal.QCliente.Parameters.ParamByName('emp').Value  := cbempresa.KeyValue;
  RTicketFormal.QCliente.Parameters.ParamByName('cli').Value  := QFormapagocliente.Value;
  RTicketFormal.QCliente.Open;

  RTicketFormal.QMaster.Parameters.ParamByName('caj').Value := QTicketscaja.Value;
  RTicketFormal.QMaster.Parameters.ParamByName('usu').Value := QTicketsusu_codigo.Value;
  RTicketFormal.QMaster.Parameters.ParamByName('fec').Value := QTicketsfecha.Value;
  RTicketFormal.QMaster.Parameters.ParamByName('tik').Value := QTicketsticket.Value;
  RTicketFormal.QMaster.Open;
  RTicketFormal.QDetalle.Open;

  if Messagedlg('DESEA IMPRIMIR EL DETALLE?',mtConfirmation,[mbyes,mbno],0) = mrYes then
    RTicketFormal.PrintDetalle := True
  else
    RTicketFormal.PrintDetalle := False;

  Screen.Cursor := crDefault;
  RTicketFormal.PrinterSetup;
  RTicketFormal.Preview;
  RTicketFormal.Destroy;
end;

procedure TfrmConsTicket.edCajeroChange(Sender: TObject);
begin
  if Trim(edCajero.Text) = '' then tCajero.Text := '';
end;

procedure TfrmConsTicket.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     if activecontrol.classtype <> tdbgrid then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmConsTicket.FormActivate(Sender: TObject);
begin
  if not QEmpresas.Active then
  begin
    QEmpresas.Parameters.ParamByName('usu').Value := dm.Usuario;
    QEmpresas.Open;
    cbempresa.KeyValue := QEmpresasemp_codigo.Value;
  end;

  frmMain.ExportXLS.Sheets[0].DBGrid   := DBGrid1;
  frmMain.ExportXLS.Sheets[1].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[0].Exported := True;

  if cbncf_fijo.Items.Count = 0 then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select distinct ncf_fijo');
    dm.Query1.SQL.Add('from ncf_ticket');
    dm.Query1.Open;
    while not dm.Query1.Eof do
    begin
      cbncf_fijo.Items.Add(dm.Query1.FieldByName('ncf_fijo').AsString);
      dm.Query1.Next;
    end;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select distinct ncf_fijo');
    dm.Query1.SQL.Add('from ncf');
    //dm.Query1.SQL.Add('where emp_codigo = :emp');
    //dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Open;
    while not dm.Query1.Eof do
    begin
      cbncf_fijo.Items.Add(dm.Query1.FieldByName('ncf_fijo').AsString);
      dm.Query1.Next;
    end;

    cbncf_fijo.Items.Add('*** Todos ***');
    cbncf_fijo.ItemIndex := cbncf_fijo.Items.IndexOf('*** Todos ***');
  end;
end;

procedure TfrmConsTicket.QTicketsFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  if (ckgrabada.Checked) and (not ckexento.Checked) then
  begin
    if QTicketsitbis.Value > 0 then
      Accept := True
    else
      Accept := False;
  end
  else if (not ckgrabada.Checked) and (ckexento.Checked) then
  begin
    if QTicketsitbis.Value = 0 then
      Accept := True
    else
      Accept := False;
  end;
end;

procedure TfrmConsTicket.ckgrabadaClick(Sender: TObject);
begin
  btRefreshClick(Self);
end;

procedure TfrmConsTicket.ckexentaClick(Sender: TObject);
begin
  btRefreshClick(Self);
end;

procedure TfrmConsTicket.ckexentoClick(Sender: TObject);
begin
  btRefreshClick(Self);
end;

procedure TfrmConsTicket.btAnulaClick(Sender: TObject);
var
  t : TBookmark;
begin
  if MessageDlg('Est� seguro?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    t := QTickets.GetBookmark;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('execute pr_anula_ticket :usu, :caj, :fec, :tic');
    dm.Query1.Parameters.ParamByName('usu').Value := QTicketsusu_codigo.Value;
    dm.Query1.Parameters.ParamByName('caj').Value := QTicketscaja.Value;
    dm.Query1.Parameters.ParamByName('fec').DataType := ftDate;
    dm.Query1.Parameters.ParamByName('fec').Value := QTicketsfecha.Value;
    dm.Query1.Parameters.ParamByName('tic').Value := QTicketsticket.Value;
    dm.Query1.ExecSQL;

    QTickets.DisableControls;
    QTickets.Close;
    QTickets.Open;
    QTickets.GotoBookmark(t);
    QTickets.EnableControls;
  end;
end;

procedure TfrmConsTicket.BitBtn4Click(Sender: TObject);
begin
 Screen.Cursor := crSQLWait;
  {if fecha1.Date <> fecha2.Date then
    MessageDlg('Debe seleccionar una sola fecha',mtError,[mbok],0)
  else
  begin}
    if MessageDlg('Est� seguro que desea generar la entrada?',mtConfirmation,[mbyes,mbno],0) = mryes then
    begin
     { if PageControl1.ActivePageIndex = 0 then
      begin
        if Trim(edCaja.Text) = '' then
          MessageDlg('Debe especificar la caja',mtError,[mbok],0)
        else if Trim(edCajero.Text) = '' then
          MessageDlg('Debe especificar el cajero',mtError,[mbok],0)
        else
        begin
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('execute CONTPR_PASE_TICKETS :emp, :suc, :fec1, :fec2, :caja, :cajero, :usu');
          dm.Query1.Parameters.ParamByName('emp').Value     := cbempresa.KeyValue;
          dm.Query1.Parameters.ParamByName('suc').Value     := 1;
          dm.Query1.Parameters.ParamByName('fec1').DataType := ftDate;
          dm.Query1.Parameters.ParamByName('fec2').DataType := ftDate;
          dm.Query1.Parameters.ParamByName('fec1').Value    := Fecha1.Date;
          dm.Query1.Parameters.ParamByName('fec2').Value    := Fecha1.Date;
          dm.Query1.Parameters.ParamByName('caja').Value    := StrToInt(Trim(edCaja.Text));
          dm.Query1.Parameters.ParamByName('cajero').Value  := StrToInt(Trim(edCajero.Text));
          dm.Query1.Parameters.ParamByName('usu').Value     := dm.Usuario;
          dm.Query1.ExecSQL;
        end;
      end
      else
      begin  }
          dm.Query1.Close;
          DM.Query1.SQL.Clear;
          dm.Query1.SQL.Add('execute CONTPR_PASE_TICKETS :emp, :suc, :fec1, :fec2, :caja, :cajero, :usu');
          dm.Query1.Parameters.ParamByName('emp').Value     := cbempresa.KeyValue;
          if chkSucursal.Checked = True then
          dm.Query1.Parameters.ParamByName('suc').Value     := cbSucursal.KeyValue else
          dm.Query1.Parameters.ParamByName('suc').Value     := 0;
          dm.Query1.Parameters.ParamByName('fec1').DataType := ftDate;
          dm.Query1.Parameters.ParamByName('fec2').DataType := ftDate;
          dm.Query1.Parameters.ParamByName('fec1').Value    := Fecha1.Date;
          dm.Query1.Parameters.ParamByName('fec2').Value    := Fecha2.Date;
          if edCaja.Text = '' then
          dm.Query1.Parameters.ParamByName('caja').Value    := 0 else
          dm.Query1.Parameters.ParamByName('caja').Value    := StrToInt(Trim(edCaja.Text));
          if edCajero.Text = '' then
          dm.Query1.Parameters.ParamByName('cajero').Value    := 0 else
          dm.Query1.Parameters.ParamByName('cajero').Value  := StrToInt(Trim(edCajero.Text));
          dm.Query1.Parameters.ParamByName('usu').Value     := dm.Query1.Parameters.ParamByName('cajero').Value;//dm.Usuario;
          dm.Query1.ExecSQL;
     // end;
      showmessage('Proceso Terminado!');
      Screen.Cursor := crDefault;
   // end;
  end;

end;

procedure TfrmConsTicket.edCajeroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edCajero.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.SQL.clear;
      dm.Query1.sql.add('select usu_nombre from usuarios');
      dm.Query1.sql.add('where usu_codigo = :cod');
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edCajero.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
        messagedlg('USUARIO NO EXISTE',mterror,[mbok],0)
      else
        tCajero.text := dm.Query1.fieldbyname('usu_nombre').asstring;
      btRefreshClick(self);
    end;
  end;
end;

procedure TfrmConsTicket.QDetalleCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis : Double;
begin
  if QDetallepatrocinador.Value = 'True' then
    QDetalleEsPatrocinador.Value := 'Si'
  else
    QDetalleEsPatrocinador.Value := 'No';

  if QDetalleITBIS.value > 0 then
  begin
    NumItbis := strtofloat(format('%10.2f',[(QDetalleITBIS.value/100)+1]));
    Venta    := strtofloat(format('%10.2f',[(QDetallePRECIO.value)/NumItbis]));

    QDetalleTotalDescuento.Value := (Venta * QDetalledescuento.Value) / 100;
    Venta := Venta - QDetalleTotalDescuento.Value;

    QDetallePrecioItbis.value := strtofloat(format('%10.2f',[Venta]));
    QDetalleCalcItbis.value   := strtofloat(format('%10.2f',[((Venta)*
                                 strtofloat(format('%10.2f',[QDetalleITBIS.Value])))/100]));
    QDetalleValor.value       := ((strtofloat(format('%10.2f',[Venta])))+
                                 strtofloat(format('%10.2f',[QDetalleCalcItbis.value])))*
                                 strtofloat(format('%10.2f',[QDetalleCANTIDAD.value]));
  end
  else
  begin
    Venta := strtofloat(format('%10.2f',[QDetallePRECIO.value]));
    QDetalleTotalDescuento.Value := (Venta * QDetalledescuento.Value) / 100;
    Venta := Venta - QDetalleTotalDescuento.Value;

    QDetallePrecioItbis.value := strtofloat(format('%10.2f',[Venta]));
    QDetalleCalcItbis.value   := 0;
    QDetalleValor.value       := strtofloat(format('%10.2f',[(Venta)*QDetalleCANTIDAD.value]));
  end;
  QDetalleCalcItbis.Value := QDetalleCalcItbis.Value * QDetallecantidad.Value;
  //QDetalleValor.Value := QDetalleprecio.Value * QDetallecantidad.Value;

  {if QDetalleitbis.Value >0 then
    QDetalleExcento.Value := ''
  else
    QDetalleExcento.Value := 'E';}
end;

procedure TfrmConsTicket.QResumenCalcFields(DataSet: TDataSet);
begin
  //QResumenGrabado.Value := StrToFloat(Format('%10.2F',[((StrToFloat(Format('%10.2F',[QResumenItbis.Value]))*100)/16)]));
end;

procedure TfrmConsTicket.PageControl1Change(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
  0 : begin
        frmMain.ExportXLS.Sheets[0].DBGrid   := DBGrid1;
        frmMain.ExportXLS.Sheets[1].Exported := False;
        frmMain.ExportXLS.Sheets[2].Exported := False;
        frmMain.ExportXLS.Sheets[0].Exported := True;
      end;
  1 : begin
        frmMain.ExportXLS.Sheets[0].DBGrid   := DBGrid2;
        frmMain.ExportXLS.Sheets[1].Exported := False;
        frmMain.ExportXLS.Sheets[2].Exported := False;
        frmMain.ExportXLS.Sheets[0].Exported := True;
      end;
  2 : begin
        frmMain.ExportXLS.Sheets[0].DBGrid   := DBGrid4;
        frmMain.ExportXLS.Sheets[1].Exported := False;
        frmMain.ExportXLS.Sheets[2].Exported := False;
        frmMain.ExportXLS.Sheets[0].Exported := True;
      end;
  end;
end;

procedure TfrmConsTicket.dsTicketsDataChange(Sender: TObject;
  Field: TField);
begin
  btAnula.Enabled   := (QTicketsstatus.Value <> 'ANU') and (QTicketsstatus.Value <> 'CAN');
  btcambiar.Enabled := btAnula.Enabled;
  Cambiarempresa1.Enabled := (QTicketsstatus.Value <> 'ANU') and (QTicketsstatus.Value <> 'CAN')
      and (QTicketsncf_tipo.Value = 1);
end;

procedure TfrmConsTicket.BitBtn5Click(Sender: TObject);
begin
  Application.CreateForm(tRepListaTicketsxHora, RepListaTicketsxHora);
  RepListaTicketsxHora.lbFecha.Caption   := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
  RepListaTicketsxHora.lbCajero.Caption  := tCajero.Text;
  RepListaTicketsxHora.lbCaja.Caption    := edCaja.Text;
  RepListaTicketsxHora.lbprod.Caption    := tProd.Text;
  RepListaTicketsxHora.QRDBText8.Enabled := Trim(edProd.Text) <> '';
  RepListaTicketsxHora.QRExpr5.Enabled   := Trim(edProd.Text) <> ''; 
  RepListaTicketsxHora.QRExpr6.Enabled   := Trim(edProd.Text) <> '';

  RepListaTicketsxHora.QHoras.Parameters.ParamByName('fec1').DataType := ftDate;
  RepListaTicketsxHora.QHoras.Parameters.ParamByName('fec2').DataType := ftDate;
  RepListaTicketsxHora.QHoras.Parameters.ParamByName('fec1').Value    := Fecha1.Date;
  RepListaTicketsxHora.QHoras.Parameters.ParamByName('fec2').Value    := Fecha2.Date;

  RepListaTicketsxHora.QTotal.Parameters.ParamByName('fec1').DataType := ftDate;
  RepListaTicketsxHora.QTotal.Parameters.ParamByName('fec2').DataType := ftDate;
  RepListaTicketsxHora.QTotal.Parameters.ParamByName('fec1').Value    := Fecha1.Date;
  RepListaTicketsxHora.QTotal.Parameters.ParamByName('fec2').Value    := Fecha2.Date;

  if Trim(edProd.Text) <> '' then
  begin
    RepListaTicketsxHora.QHoras.SQL.Add('and t.producto = '+IntToStr(Producto));
    RepListaTicketsxHora.QTotal.SQL.Add('and t.producto = '+IntToStr(Producto));
  end;

  if Trim(edCaja.Text) <> '' then
  begin
    RepListaTicketsxHora.QHoras.SQL.Add('and m.caja = '+edCaja.Text);
    RepListaTicketsxHora.QTotal.SQL.Add('and m.caja = '+edCaja.Text);
  end;

  if Trim(edCajero.Text) <> '' then
  begin
    RepListaTicketsxHora.QHoras.SQL.Add('and m.usu_codigo = '+edCajero.Text);
    RepListaTicketsxHora.QTotal.SQL.Add('and m.usu_codigo = '+edCajero.Text);
  end;

  if (Trim(eddesde.Text) <> '') and (Trim(edhasta.Text) <> '') then
  begin
    RepListaTicketsxHora.QHoras.SQL.Add('and m.ticket between '+eddesde.Text+' and '+edhasta.Text);
    RepListaTicketsxHora.QTotal.SQL.Add('and m.ticket between '+eddesde.Text+' and '+edhasta.Text);
  end;

  RepListaTicketsxHora.QHoras.SQL.Add('group by convert(varchar(2), m.fecha_hora, 8)');
  RepListaTicketsxHora.QHoras.SQL.Add('order by 1');
  RepListaTicketsxHora.QTotal.SQL.Add('group by m.caja, u.usu_nombre'); 

  RepListaTicketsxHora.QHoras.Open;
  RepListaTicketsxHora.QTotal.Open;

  RepListaTicketsxHora.QEmpresas.Parameters.ParamByName('emp').Value := cbempresa.KeyValue;
  RepListaTicketsxHora.QEmpresas.Parameters.ParamByName('usu').Value := dm.Usuario;
  RepListaTicketsxHora.QEmpresas.Open;

  RepListaTicketsxHora.PrinterSetup;
  RepListaTicketsxHora.Preview;
  RepListaTicketsxHora.Destroy;

end;

procedure TfrmConsTicket.SpeedButton2Click(Sender: TObject);
begin
  application.createform(tfrmBuscaProducto, frmBuscaProducto);
  frmBuscaProducto.showmodal;
  if frmBuscaProducto.seleccion = 1 then
  begin
    if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
       edProd.text := inttostr(frmBuscaProducto.QProductosPRO_CODIGO.value)
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
       edProd.text := frmBuscaProducto.QProductosPRO_RFABRIC.value
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
       edProd.text := frmBuscaProducto.QProductosPRO_RORIGINAL.value;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select pro_nombre, pro_codigo from productos');
    dm.Query1.sql.add('where emp_codigo = :emp');
    if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
       dm.Query1.sql.add('and pro_codigo = '+edProd.text)
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
       dm.Query1.sql.add('and pro_rfabric = '+#39+edProd.text+#39)
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
       dm.Query1.sql.add('and pro_roriginal = '+#39+edProd.text+#39);
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;

    Producto   := dm.Query1.FieldByName('pro_codigo').AsInteger;
    tProd.text := dm.Query1.FieldByName('pro_nombre').AsString;
  end;
  frmBuscaProducto.release;
end;

procedure TfrmConsTicket.edProdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edProd.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select pro_codigo, pro_nombre from productos');
      dm.Query1.sql.add('where emp_codigo = :emp');
      if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
         dm.Query1.sql.add('and pro_codigo = '+edProd.text)
      else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
         dm.Query1.sql.add('and pro_rfabric = '+#39+edProd.text+#39)
      else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
         dm.Query1.sql.add('and pro_roriginal = '+#39+edProd.text+#39);
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('ESTE PRODUCTO NO EXISTE',mterror,[mbyes,mbno],0);
        edProd.setfocus;
      end
      else
      begin
        Producto   := dm.Query1.FieldByName('pro_codigo').AsInteger;
        tProd.text := dm.Query1.FieldByName('pro_nombre').AsString;
      end;
    end;
  end;
end;

procedure TfrmConsTicket.BitBtn6Click(Sender: TObject);
begin
  Application.CreateForm(tRepListaTicketsxCajera, RepListaTicketsxCajera);
  RepListaTicketsxCajera.lbFecha.Caption   := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
  RepListaTicketsxCajera.lbCajero.Caption  := tCajero.Text;
  RepListaTicketsxCajera.lbCaja.Caption    := edCaja.Text;
  RepListaTicketsxCajera.lbprod.Caption    := tProd.Text;
  RepListaTicketsxCajera.QRDBText8.Enabled := Trim(edProd.Text) <> '';
  RepListaTicketsxCajera.QRExpr6.Enabled   := Trim(edProd.Text) <> '';

  RepListaTicketsxCajera.QTotal.Parameters.ParamByName('fec1').DataType := ftDate;
  RepListaTicketsxCajera.QTotal.Parameters.ParamByName('fec2').DataType := ftDate;
  RepListaTicketsxCajera.QTotal.Parameters.ParamByName('fec1').Value    := Fecha1.Date;
  RepListaTicketsxCajera.QTotal.Parameters.ParamByName('fec2').Value    := Fecha2.Date;

  if Trim(edProd.Text) <> '' then
    RepListaTicketsxCajera.QTotal.SQL.Add('and t.producto = '+IntToStr(Producto));

  if Trim(edCaja.Text) <> '' then
    RepListaTicketsxCajera.QTotal.SQL.Add('and m.caja = '+edCaja.Text);

  if Trim(edCajero.Text) <> '' then
    RepListaTicketsxCajera.QTotal.SQL.Add('and m.usu_codigo = '+edCajero.Text);

  if (Trim(eddesde.Text) <> '') and (Trim(edhasta.Text) <> '') then
    RepListaTicketsxCajera.QTotal.SQL.Add('and m.ticket between '+eddesde.Text+' and '+edhasta.Text);
    
  RepListaTicketsxCajera.QTotal.SQL.Add('group by u.usu_nombre');

  RepListaTicketsxCajera.QTotal.Open;

  RepListaTicketsxCajera.QEmpresas.Parameters.ParamByName('emp').Value := cbempresa.KeyValue;
  RepListaTicketsxCajera.QEmpresas.Parameters.ParamByName('usu').Value := dm.Usuario;
  RepListaTicketsxCajera.QEmpresas.Open;

  RepListaTicketsxCajera.PrinterSetup;
  RepListaTicketsxCajera.Preview;
  RepListaTicketsxCajera.Destroy;
end;

procedure TfrmConsTicket.edClienteChange(Sender: TObject);
begin
  if trim(edCliente.text) = '' then tCliente.text := '';
end;

procedure TfrmConsTicket.edClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edCliente.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select cli_nombre, cli_codigo from clientes');
      dm.Query1.sql.add('where emp_codigo = :emp');
      if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
         dm.Query1.sql.add('and cli_codigo = :cod')
      else
         dm.Query1.sql.add('and cli_referencia = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := cbempresa.KeyValue;
      if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
         dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edcliente.text))
      else
         dm.Query1.Parameters.parambyname('cod').Value := trim(edcliente.text);
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('CLIENTE NO EXISTE',mterror,[mbok],0);
        edCliente.SetFocus;
      end
      else
      begin
        tCliente.text := dm.Query1.fieldbyname('cli_nombre').asstring;
        CodCliente := dm.Query1.fieldbyname('cli_codigo').AsInteger;
      end;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsTicket.SpeedButton3Click(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C�digo');
  search.AliasFields.add('Referencia');
  Search.Query.clear;
  Search.Query.add('select cli_nombre, cli_codigo, cli_referencia');
  Search.Query.add('from clientes');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
     Search.ResultField := 'cli_Codigo'
  else
     Search.ResultField := 'cli_referencia';
  Search.Title := 'Listado de Clientes';
  if Search.execute then
  begin
    edCliente.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cli_nombre, cli_codigo, cli_referencia from clientes');
    dm.Query1.sql.add('where emp_codigo = :emp');
    if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
       dm.Query1.sql.add('and cli_codigo = :cod')
    else
       dm.Query1.sql.add('and cli_referencia = :cod');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
       dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edCliente.text))
    else
       dm.Query1.Parameters.parambyname('cod').Value := trim(edCliente.text);
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('CLIENTE NO EXISTE',mterror,[mbok],0)
    else
    begin
      tCliente.text := dm.Query1.fieldbyname('cli_nombre').asstring;
      CodCliente := dm.Query1.fieldbyname('cli_codigo').AsInteger;
    end;
    edCliente.setfocus;
    btRefreshClick(self);
  end;
end;

procedure TfrmConsTicket.cbempresaClick(Sender: TObject);
begin
  btRefreshClick(Self);
end;

procedure TfrmConsTicket.btcambiarClick(Sender: TObject);
var
  forma, rnc, cliente : string;
  num, emp, suc, cli, sec, mov, dias : integer;
  t : TBookmark;
begin
  if QTicketsncf_tipo.IsNull then
  begin
    MessageDlg('ESTE TICKET NO TIENE COMPROBANTE',mtError,[mbok],0);
    PageControl1.ActivePageIndex := 0;
    DBGrid1.SetFocus;
  end
  else if QTicketsncf_tipo.AsInteger > 1 then
  begin
    MessageDlg('SOLO PUEDEN CAMBIARSE TICKETS DE CONSUMIDOR FINAL',mtError,[mbok],0);
    PageControl1.ActivePageIndex := 0;
    DBGrid1.SetFocus;
  end
  else
  begin
    rnc := InputBox('RNC','RNC:',QTicketsrnc.AsString);
    if trim(rnc) <> '' then
    begin
      with dm.ConsultarRncCompleto(trim(rnc)) do
      begin
        if not Encontrado then
        begin
          if Mensaje <> '' then
            MessageDlg(Mensaje, mtInformation, [mbok], 0);
          Exit;
        end;
        if MessageDlg('EL NUEVO CLIENTE ES '+RazonSocial+'?',mtConfirmation,[mbyes,mbno],0) = mryes then
        begin
          Application.CreateForm(tfrmSeleccionNCF, frmSeleccionNCF);
          frmSeleccionNCF.ShowModal;
          if frmSeleccionNCF.ncf > 0 then
          begin
          cliente := RazonSocial;

          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('select emp_codigo from NCF_Ticket_TipoDoc');
          dm.Query1.SQL.Add('where ncf_numero = 2');
          dm.Query1.Open;
          emp := dm.Query1.FieldByName('emp_codigo').AsInteger;

          ProcNCF.Parameters.ParamByName('@empcomprobante').Value := 0;
          ProcNCF.Parameters.ParamByName('@tipo').Value := frmSeleccionNCF.ncf;
          ProcNCF.Parameters.ParamByName('@caja').Value := QTicketscaja.Value;
          ProcNCF.ExecProc;
          if Trim(ProcNCF.Parameters[3].Value) <> '' then
          begin
            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('select forma_numeracion from cajas_ip');
            dm.Query1.SQL.Add('where caja = :caj');
            dm.Query1.Parameters.ParamByName('caj').Value := QTicketscaja.Value;
            dm.Query1.Open;
            forma := dm.Query1.FieldByName('forma_numeracion').AsString;

            if forma = '0' then
            begin
              dm.Query1.Close;
              dm.Query1.SQL.Clear;
              dm.Query1.SQL.Add('select isnull(max(ticket),0)as maximo from montos_ticket');
              dm.Query1.SQL.Add('where caja = :caj');
              dm.Query1.Parameters.ParamByName('caj').Value := QTicketscaja.Value;
              dm.Query1.Open;
              num := dm.Query1.FieldByName('maximo').AsInteger + 1;
            end
            else
            begin
              dm.Query1.Close;
              dm.Query1.SQL.Clear;
              dm.Query1.SQL.Add('select isnull(max(ticket),0)as maximo from montos_ticket');
              dm.Query1.SQL.Add('where caja = :caj and fecha = convert(datetime, :fec, 105) and usu_codigo = :usu');
              dm.Query1.SQL.Add('and emp_codigo = :emp and suc_codigo = :suc');
              dm.Query1.Parameters.ParamByName('emp').Value := QTicketsemp_codigo.Value;
              dm.Query1.Parameters.ParamByName('suc').Value := QTicketssuc_codigo.Value;
              dm.Query1.Parameters.ParamByName('caj').Value := QTicketscaja.Value;
              dm.Query1.Parameters.ParamByName('fec').DataType := ftdate;
              dm.Query1.Parameters.ParamByName('fec').Value := QTicketsfecha.Value;
              dm.Query1.Parameters.ParamByName('usu').Value := QTicketsusu_codigo.Value;
              dm.Query1.Open;
              num := dm.Query1.FieldByName('maximo').AsInteger + 1;
            end;

            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            DM.Query1.SQL.Add('declare @num int, @fij varchar(3), @sec int, @nom varchar(255), @rnc varchar(20), @tip int,');
            DM.Query1.SQL.Add('@emp int, @caj int, @usu int, @fec datetime, @tik int, @suc int');
            DM.Query1.SQL.Add('select @num = :num, @fij = :fij, @sec = :sec, @nom = :nom, @rnc = :rnc,');
            DM.Query1.SQL.Add('@tip = :tip, @emp = :emp, @caj = :caj, @usu = :usu, @fec = :fec, @tik = :tik, @suc = :suc');
            dm.Query1.SQL.Add('insert into montos_ticket (usu_codigo,fecha,caja,ticket,total,descuento,sorteo,');
            dm.Query1.SQL.Add('tksorteo,ncf_fijo,ncf_secuencia,itbis,nombre,rnc,status,mov_numero,NCF_Tipo,fecha_hora,');
            dm.Query1.SQL.Add('usuario_original,ticket_original,caja_original,Devuelto,Boletos,Cuadre,supervisor, Domicilio, emp_codigo,');
            dm.Query1.SQL.Add('Grabado, Exento)');
            dm.Query1.SQL.Add('select usu_codigo, fecha, caja, @num, total, descuento, sorteo,');
            dm.Query1.SQL.Add('tksorteo, @fij, @sec, itbis, @nom, @rnc, status, mov_numero, @tip, fecha_hora,');
            dm.Query1.SQL.Add('usuario_original, ticket_original, caja_original, Devuelto, Boletos, Cuadre, supervisor, Domicilio, @emp,');
            dm.Query1.SQL.Add('Grabado, Exento');
            dm.Query1.SQL.Add('from montos_ticket');
            dm.Query1.SQL.Add('where caja = @caj and usu_codigo = @usu and fecha = @fec and ticket = @tik');
            dm.Query1.SQL.Add('and emp_codigo = @emp and suc_codigo = @suc');
            dm.Query1.Parameters.ParamByName('emp').DataType := ftInteger;
            dm.Query1.Parameters.ParamByName('suc').DataType := ftInteger;
            dm.Query1.Parameters.ParamByName('nom').DataType := ftString;
            dm.Query1.Parameters.ParamByName('rnc').DataType := ftString;
            dm.Query1.Parameters.ParamByName('num').DataType := ftInteger;
            dm.Query1.Parameters.ParamByName('caj').DataType := ftInteger;
            dm.Query1.Parameters.ParamByName('usu').DataType := ftInteger;
            dm.Query1.Parameters.ParamByName('fec').DataType := ftDate;
            dm.Query1.Parameters.ParamByName('tik').DataType := ftInteger;
            dm.Query1.Parameters.ParamByName('fij').DataType := ftString;
            dm.Query1.Parameters.ParamByName('sec').DataType := ftInteger;
            dm.Query1.Parameters.ParamByName('tip').DataType := ftInteger;

            dm.Query1.Parameters.ParamByName('emp').Value := QTicketsemp_codigo.Value;
            dm.Query1.Parameters.ParamByName('suc').Value := QTicketssuc_codigo.Value;
            dm.Query1.Parameters.ParamByName('nom').Value := cliente;
            dm.Query1.Parameters.ParamByName('rnc').Value := RncCedula;
            dm.Query1.Parameters.ParamByName('num').Value := num;
            dm.Query1.Parameters.ParamByName('caj').Value := QTicketscaja.Value;
            dm.Query1.Parameters.ParamByName('usu').Value := QTicketsusu_codigo.Value;
            dm.Query1.Parameters.ParamByName('fec').DataType := ftDate;
            dm.Query1.Parameters.ParamByName('fec').Value := QTicketsfecha.Value;
            dm.Query1.Parameters.ParamByName('tik').Value := QTicketsticket.Value;
            dm.Query1.Parameters.ParamByName('fij').Value := ProcNCF.Parameters[4].Value;
            dm.Query1.Parameters.ParamByName('sec').Value := ProcNCF.Parameters[5].Value;
            dm.Query1.Parameters.ParamByName('tip').Value := frmSeleccionNCF.ncf;
            dm.Query1.ExecSQL;

            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('insert into ticket (usu_codigo,fecha,ticket,secuencia,caja,hora,producto,descripcion,cantidad,precio,empaque,');
            dm.Query1.SQL.Add('itbis,Costo,Descuento,Devuelta,Realizo_Oferta,Oferta, Patrocinador)');
            dm.Query1.SQL.Add('select usu_codigo,fecha,:num,secuencia,caja,hora,producto,descripcion,cantidad,precio,empaque,');
            dm.Query1.SQL.Add('itbis,Costo,Descuento,Devuelta,Realizo_Oferta,Oferta, Patrocinador');
            dm.Query1.SQL.Add('from ticket');
            dm.Query1.SQL.Add('where caja = :caj and usu_codigo = :usu and fecha = :fec and ticket = :tik');
            dm.Query1.SQL.Add('and emp_codigo = :emp and suc_codigo = :suc');
            dm.Query1.Parameters.ParamByName('emp').Value := QTicketsemp_codigo.Value;
            dm.Query1.Parameters.ParamByName('suc').Value := QTicketssuc_codigo.Value;
            dm.Query1.Parameters.ParamByName('num').Value := num;
            dm.Query1.Parameters.ParamByName('caj').Value := QTicketscaja.Value;
            dm.Query1.Parameters.ParamByName('usu').Value := QTicketsusu_codigo.Value;
            dm.Query1.Parameters.ParamByName('fec').Value := QTicketsfecha.Value;
            dm.Query1.Parameters.ParamByName('fec').DataType := ftDate;
            dm.Query1.Parameters.ParamByName('tik').Value := QTicketsticket.Value;
            dm.Query1.ExecSQL;

            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('insert into formas_pago_ticket (caja,usu_codigo,fecha,ticket,forma,pagado,devuelta,empresa,credito,cliente,banco,documento)');
            dm.Query1.SQL.Add('select caja,usu_codigo,fecha,:num,forma,pagado,devuelta,empresa,credito,cliente,banco,documento');
            dm.Query1.SQL.Add('from formas_pago_ticket');
            dm.Query1.SQL.Add('where caja = :caj and usu_codigo = :usu and fecha = :fec and ticket = :tik');
            dm.Query1.SQL.Add('and emp_codigo = :emp and suc_codigo = :suc');
            dm.Query1.Parameters.ParamByName('emp').Value := QTicketsemp_codigo.Value;
            dm.Query1.Parameters.ParamByName('suc').Value := QTicketssuc_codigo.Value;
            dm.Query1.Parameters.ParamByName('num').Value := num;
            dm.Query1.Parameters.ParamByName('caj').Value := QTicketscaja.Value;
            dm.Query1.Parameters.ParamByName('usu').Value := QTicketsusu_codigo.Value;
            dm.Query1.Parameters.ParamByName('fec').Value := QTicketsfecha.Value;
            dm.Query1.Parameters.ParamByName('fec').DataType := ftDate;
            dm.Query1.Parameters.ParamByName('tik').Value := QTicketsticket.Value;
            dm.Query1.ExecSQL;

            if QFormapagocredito.Value = 'True' then
            begin
              dm.Query1.Close;
              dm.Query1.SQL.Clear;
              dm.Query1.SQL.Add('select cliente, emp_codigo, suc_codigo from formas_pago_ticket');
              dm.Query1.SQL.Add('where caja = :caj and usu_codigo = :usu and fecha = :fec and ticket = :tik');
              dm.Query1.SQL.Add('and emp_codigo = :emp and suc_codigo = :suc');
              dm.Query1.Parameters.ParamByName('emp').Value := QTicketsemp_codigo.Value;
              dm.Query1.Parameters.ParamByName('suc').Value := QTicketssuc_codigo.Value;
              dm.Query1.Parameters.ParamByName('caj').Value := QTicketscaja.Value;
              dm.Query1.Parameters.ParamByName('usu').Value := QTicketsusu_codigo.Value;
              dm.Query1.Parameters.ParamByName('fec').Value := QTicketsfecha.Value;
              dm.Query1.Parameters.ParamByName('fec').DataType := ftDate;
              dm.Query1.Parameters.ParamByName('tik').Value := QTicketsticket.Value;
              dm.Query1.Open;
              cli := dm.Query1.FieldByNAme('cliente').AsInteger;
              emp := dm.Query1.FieldByNAme('emp_codigo').AsInteger;
              suc := dm.Query1.FieldByNAme('suc_codigo').AsInteger;

              dm.Query1.Close;
              dm.Query1.SQL.Clear;
              dm.Query1.SQL.Add('select isnull(max(mov_secuencia),0)+1 as maximo');
              dm.Query1.SQL.Add('from movimientos');
              dm.Query1.SQL.Add('where emp_codigo = :emp');
              dm.Query1.SQL.Add('and suc_codigo = :suc');
              dm.Query1.Parameters.ParamByName('emp').Value := emp;
              dm.Query1.Parameters.ParamByName('suc').Value := 1;
              dm.Query1.Open;
              sec := dm.Query1.FieldByName('maximo').AsInteger;

              dm.Query1.Close;
              dm.Query1.SQL.Clear;
              dm.Query1.SQL.Add('select isnull(max(mov_numero),0)+1 as maximo');
              dm.Query1.SQL.Add('from movimientos');
              dm.Query1.SQL.Add('where emp_codigo = :emp');
              dm.Query1.SQL.Add('and suc_codigo = :suc');
              dm.Query1.SQL.Add('and mov_tipo = :tip');
              dm.Query1.Parameters.ParamByName('emp').Value := emp;
              dm.Query1.Parameters.ParamByName('suc').Value := suc;
              dm.Query1.Parameters.ParamByName('tip').Value := dm.QParametrospar_movtk.AsString;
              dm.Query1.Open;
              mov := dm.Query1.FieldByName('maximo').AsInteger;

              dm.Query1.Close;
              dm.Query1.SQL.Clear;
              dm.Query1.SQL.Add('select isnull(p.cpa_dias,0) as dias from condiciones p, clientes c');
              dm.Query1.SQL.Add('where p.cpa_codigo = c.cpa_codigo');
              dm.Query1.SQL.Add('and p.emp_codigo = c.emp_codigo');
              dm.Query1.SQL.Add('and c.emp_codigo = :emp');
              dm.Query1.SQL.Add('and c.cli_codigo = :cli');
              dm.Query1.Parameters.ParamByName('emp').Value := emp;
              dm.Query1.Parameters.ParamByName('cli').Value := cli;
              dm.Query1.Open;
              dias := dm.Query1.FieldByName('dias').AsInteger;
              if dias = 0 then dias := 15;

              dm.Query1.Close;
              dm.Query1.SQL.Clear;
              dm.Query1.SQL.Add('insert into movimientos (emp_codigo,suc_codigo,mov_tipo,mov_numero,mov_secuencia,fac_forma,');
              dm.Query1.SQL.Add('tfa_codigo,mov_fecha,mov_monto,mov_abono,mov_status,mov_fechavence,cli_codigo,');
              dm.Query1.SQL.Add('mon_codigo,mov_tasa)');
              dm.Query1.SQL.Add('values (:emp, :suc, :tip, :num, :sec, :for,');
              dm.Query1.SQL.Add('0, :fec, :mto, 0, :st, :ven, :cli, 1, 1)');
              dm.Query1.Parameters.ParamByName('emp').Value := emp;
              dm.Query1.Parameters.ParamByName('suc').Value := suc;
              dm.Query1.Parameters.ParamByName('tip').Value := dm.QParametrospar_movtk.AsString;
              dm.Query1.Parameters.ParamByName('num').Value := mov;
              dm.Query1.Parameters.ParamByName('sec').Value := sec;
              dm.Query1.Parameters.ParamByName('for').Value := 'X';
              dm.Query1.Parameters.ParamByName('fec').Value := QTicketsfecha.Value;
              dm.Query1.Parameters.ParamByName('fec').DataType := ftDate;
              dm.Query1.Parameters.ParamByName('mto').Value := QTicketstotal.Value;
              dm.Query1.Parameters.ParamByName('st').Value  := 'PEN';
              dm.Query1.Parameters.ParamByName('ven').DataType := ftDate;
              dm.Query1.Parameters.ParamByName('ven').Value := QTicketsfecha.Value + dias;
              dm.Query1.Parameters.ParamByName('cli').Value := cli;
              dm.Query1.ExecSQL;

            end;

            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('execute pr_anula_ticket :usu, :caj, :fec, :tic');
            dm.Query1.Parameters.ParamByName('usu').Value := QTicketsusu_codigo.Value;
            dm.Query1.Parameters.ParamByName('caj').Value := QTicketscaja.Value;
            dm.Query1.Parameters.ParamByName('fec').DataType := ftDate;
            dm.Query1.Parameters.ParamByName('fec').Value := QTicketsfecha.Value;
            dm.Query1.Parameters.ParamByName('tic').Value := QTicketsticket.Value;
            dm.Query1.ExecSQL;

            frmSeleccionNCF.Release;
        
            QTickets.DisableControls;
            QTickets.Close;
            QTickets.Open;
            QTickets.EnableControls;
          end;
          PageControl1.ActivePageIndex := 0;
          DBGrid1.SetFocus;
        end;
      end;
    end;
  end;
end;
end;

procedure TfrmConsTicket.btcambiarncClick(Sender: TObject);
var
  rnc, nombre : string;
  punt : tbookmark;
begin
  if MessageDlg('Esta seguro que desea cambiar el RNC?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    rnc := InputBox('RNC','RNC:','');

    if trim(rnc) <> '' then
    begin
      with dm.ConsultarRncCompleto(trim(rnc)) do
      begin
        if not Encontrado then
        begin
          if Mensaje <> '' then
            MessageDlg(Mensaje, mtInformation, [mbok], 0);
          Exit;
        end;
        if MessageDlg('EL NUEVO CLIENTE ES '+RazonSocial+'?',mtConfirmation,[mbyes,mbno],0) = mryes then
        begin
          nombre := RazonSocial;
          Screen.Cursor := crHourGlass;

        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('update montos_ticket set rnc = :rnc, nombre = :nom');
        dm.Query1.SQL.Add('where caja = :caj and ticket = :tic and usu_codigo = :usu');
        dm.Query1.SQL.Add('and fecha = convert(datetime, :fec, 103)');
        dm.Query1.Parameters.ParamByName('usu').Value := QTicketsusu_codigo.Value;
        dm.Query1.Parameters.ParamByName('caj').Value := QTicketscaja.Value;
        dm.Query1.Parameters.ParamByName('fec').DataType := ftDate;
        dm.Query1.Parameters.ParamByName('fec').Value := QTicketsfecha.Value;
        dm.Query1.Parameters.ParamByName('tic').Value := QTicketsticket.Value;
        dm.Query1.Parameters.ParamByName('rnc').Value := RncCedula;
        dm.Query1.Parameters.ParamByName('nom').Value := nombre;
        dm.Query1.ExecSQL;

        punt := QTickets.GetBookmark;
        QTickets.Close;
        QTickets.Open;
        QTickets.GotoBookmark(punt);

        Screen.Cursor := crDefault;
      end;
      end;
    end;
  end;
end;

procedure TfrmConsTicket.Cambiarformadepago1Click(Sender: TObject);
begin
  application.CreateForm(tfrmFormaPagoTicket, frmFormaPagoTicket);
  frmFormaPagoTicket.QForma.Parameters.ParamByName('caj').Value := QTicketscaja.Value;
  frmFormaPagoTicket.QForma.Parameters.ParamByName('usu').Value := QTicketsusu_codigo.Value;
  frmFormaPagoTicket.QForma.Parameters.ParamByName('fec').Value := QTicketsfecha.Value;
  frmFormaPagoTicket.QForma.Parameters.ParamByName('tic').Value := QTicketsticket.Value;
  frmFormaPagoTicket.QForma.Open;
  frmFormaPagoTicket.ShowModal;
  frmFormaPagoTicket.Release;
end;

procedure TfrmConsTicket.Cambiarempresa1Click(Sender: TObject);
var
  empticket, empnueva : integer;
begin
  empticket := QTicketsemp_codigo.Value;
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C�digo');
  Search.Query.clear;
  Search.Query.add('select emp_nombre, emp_codigo');
  Search.Query.add('from empresas');
  Search.Query.add('where emp_codigo <> '+inttostr(empticket));
  Search.ResultField := 'emp_codigo';
  Search.Title := 'Listado de Empresas';
  if Search.execute then
  begin
    //buscando comprobante que le toca
    {ProcNCF.Parameters.ParamByName('@empcomprobante').Value := StrToInt(Search.ValueField);;
    ProcNCF.Parameters.ParamByName('@tipo').Value := 1;
    ProcNCF.Parameters.ParamByName('@caja').Value := QTicketscaja.Value;
    ProcNCF.ExecProc;}

    //Actualizando la empresa del ticket y el comprobante
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('update montos_ticket set emp_codigo = :emp');
    dm.Query1.SQL.Add('where fecha = convert(datetime, :fec, 105)');
    dm.Query1.SQL.Add('and caja = :caj and usu_codigo = :usu');
    dm.Query1.SQL.Add('and ticket = :num');
    dm.Query1.Parameters.ParamByName('emp').Value := StrToInt(Search.ValueField);
    dm.Query1.Parameters.ParamByName('fec').Value := QTicketsfecha.Value;
    dm.Query1.Parameters.ParamByName('fec').DataType := ftDate;
    dm.Query1.Parameters.ParamByName('caj').Value := QTicketscaja.Value;
    dm.Query1.Parameters.ParamByName('usu').Value := QTicketsusu_codigo.Value;
    dm.Query1.Parameters.ParamByName('num').Value := QTicketsticket.Value;
    dm.Query1.ExecSQL;

    btRefreshClick(Self);
  end;
end;

procedure TfrmConsTicket.QFormapagoCalcFields(DataSet: TDataSet);
begin
QFormapagoPagoTicket.Value := QFormapagopagado.Value - QFormapagodevuelta.Value;
end;

procedure TfrmConsTicket.QEmpresasAfterOpen(DataSet: TDataSet);
begin
qSucursal.Close;
qSucursal.Open;
end;

procedure TfrmConsTicket.DBGrid1DrawColumnCell(Sender: TObject;
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
  COLOR_ERROR_SUAVE, COLOR_AZUL_CLARO: TColor;

begin
  COLOR_ERROR_SUAVE := RGB(255, 204, 204); // Rojo claro
  COLOR_AZUL_CLARO  := RGB(204, 229, 255); // Azul claro

  if not dm.QParametrosUsa_FacturacionElectronica.AsBoolean then
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

  if gdSelected in State then
  begin
    DBGrid1.Canvas.Brush.Color := clHighlight;
    DBGrid1.Canvas.Font.Color  := clHighlightText;
  end
  else
  begin
    if aceptado then
    begin
      DBGrid1.Canvas.Brush.Color := clWhite;
      DBGrid1.Canvas.Font.Color  := clBlack;
    end
    else if errorDGII then
    begin
      DBGrid1.Canvas.Brush.Color := COLOR_ERROR_SUAVE;
      DBGrid1.Canvas.Font.Color  := clBlack;
    end
    else if enviado
    then
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

procedure TfrmConsTicket.cbStatusDGIIClick(Sender: TObject);
begin
btRefreshClick(self);
end;
function ExtraerValorJSON(const JSON, Campo: string): string;
var
  P1, P2: Integer;
  Buscar: string;
begin
  Result := '';
  Buscar := '"' + Campo + '":"';

  P1 := Pos(Buscar, JSON);
  if P1 > 0 then
  begin
    P1 := P1 + Length(Buscar);
    P2 := P1;
    while (P2 <= Length(JSON)) and (JSON[P2] <> '"') do
      Inc(P2);

    Result := Copy(JSON, P1, P2 - P1);
  end;
end;

procedure TfrmConsTicket.btnEnviarDGIIClick(Sender: TObject);
var
  Servicio : FacturaElectronicaService;
  resultado: WideString;
  ncfNuevo : string;

  ok: Boolean;
  msg: string;
  prox: Int64;

begin
 ncfNuevo := '';

  if DM.QParametrosPAR_FE_DetenerFacturacion.Value then
        begin
          ok := ValidarENCFDisponible(
                        QTicketsemp_codigo.Value,
                        QTicketscod_dgii.Value,
                        msg, prox);
          if (not ok) then
          begin
            ShowMessage('No hay comprobantes fiscales disponibles para esta factura.');
            Exit;
          end;
        end;

  // Validar si ya fue enviada
  if not QTicketsAceptadoDGII.IsNull then
  begin
    if QTicketsEnviado_DGII.Value then
    begin
      if QTicketsAceptadoDGII.Value then
      begin
        ShowMessage('Esta factura ya fue enviada y ACEPTADA por la DGII.');
        Exit;
      end
      else if QTicketsError_DGII.Value then
      begin
        // Verificar permiso para reenviar rechazadas
        if VarIsNull(dm.usu_reenvia_dgii) or not dm.usu_reenvia_dgii then
        begin
          ShowMessage('Esta factura ya fue enviada y RECHAZADA por la DGII.');
          Exit;
        end
        else
        begin
            // >>> CONFIRMACI�N <<<
          if MessageDlg(
               'Esta factura fue RECHAZADA por la DGII.' + sLineBreak +
               '�Est� seguro que desea reenviarla?' + sLineBreak +
               'Se generar� una NUEVA SECUENCIA.',
               mtConfirmation, [mbYes, mbNo], 0
             ) = mrNo then
          begin
            Exit; // si cancela, no hace nada
          end;
          // 1) Obtener NUEVA SECUENCIA desde SQL
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('SELECT dbo.fn_obtenerSecuenciaDGI(:emp, :tipo) AS NuevaSecuencia;');
          dm.Query1.Parameters.ParamByName('emp').Value  := QTicketsemp_codigo.Value;
          dm.Query1.Parameters.ParamByName('tipo').Value := QTicketscod_dgii.Value;

          // IMPORTANTE: usar Open (no ExecSQL) para leer resultados
          dm.Query1.Open;

          if not dm.Query1.Fields[0].IsNull then
            ncfNuevo := dm.Query1.FieldByName('NuevaSecuencia').AsString
          else
          begin
            ShowMessage('No se pudo obtener una nueva secuencia DGII.');
            Exit;
          end;

          dm.Query1.Close;

          // 2) Guardar ese NCF nuevo en la factura (en dataset o directo en BD)
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('UPDATE Montos_Ticket SET eNCF = :ncfNuevo, Enviado_DGII = 1, AceptadoDGII = 0, Error_DGII = 0 ');
          dm.Query1.SQL.Add('WHERE emp_codigo = :emp AND ticket = :ticket AND suc_codigo = :suc and usu_codigo= :usu_codigo and caja= :caja');
          dm.Query1.Parameters.ParamByName('ncfNuevo').Value := ncfNuevo;
          dm.Query1.Parameters.ParamByName('emp').Value      := QTicketsemp_codigo.Value;
          dm.Query1.Parameters.ParamByName('ticket').Value      := QTicketsticket.Value;
          dm.Query1.Parameters.ParamByName('suc').Value      := QTicketssuc_codigo.Value;
          dm.Query1.Parameters.ParamByName('caja').Value    := QTicketscaja.Value;
          dm.Query1.Parameters.ParamByName('usu_codigo').Value      := QTicketsusu_codigo.Value;
          dm.Query1.ExecSQL;

          //Actualizar secuencia
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('UPDATE SecuenciaDGII SET Ultima_secuencia_DGII = Ultima_secuencia_DGII + 1 ');
          dm.Query1.SQL.Add('WHERE emp_codigo = :emp AND Tipo = :tipo');
          dm.Query1.Parameters.ParamByName('emp').Value      := QTicketsemp_codigo.Value;
          dm.Query1.Parameters.ParamByName('tipo').Value     := QTicketscod_dgii.Value;
          dm.Query1.ExecSQL;

        end;
      end;
    end;
  end;

  // Si hubo nueva secuencia, ya est� en QFacturaseNCF.Value
  // Enviar seg�n tipo
  if (QTicketstotal.Value <= 250000) and (QTicketscod_dgii.Value = 32) then
  begin
    Servicio := CoFacturaElectronicaService.Create;
    resultado := Servicio.EnviarFacturaResumenPOS(
      IntToStr(QTicketsemp_codigo.Value),
      IntToStr(QTicketssuc_codigo.Value),
      IntToStr(QTicketsticket.Value),
      QTicketsemp_rnc.Value,
      QTicketseNCF.Value,         // aqu� ya va el NCF actualizado
      QTicketsrnc.Value,
      IntToStr(QTicketsusu_codigo.Value),
      IntToStr(QTicketscaja.Value),
      IntToStr(QTicketscod_dgii.Value)
    );

    if SameText(resultado, 'Aceptado') then
      ShowMessage('Factura enviada y ACEPTADA por DGII.')
    else
      begin
        ShowMessage(
          'Factura no es ACEPTADA: ' +
          ExtraerValorJSON(resultado, 'mensaje')
        );
      end;
  end
  else
  begin
    Servicio := CoFacturaElectronicaService.Create;
    resultado := Servicio.EnviarFacturaElectronicaPOS(
      IntToStr(QTicketsemp_codigo.Value),
      IntToStr(QTicketssuc_codigo.Value),
      IntToStr(QTicketsticket.Value),
      QTicketsemp_rnc.Value,
      QTicketseNCF.Value,         // NCF ya con nueva secuencia si aplic�
      QTicketsrnc.Value,
      IntToStr(QTicketsusu_codigo.Value),
      IntToStr(QTicketscaja.Value),
      IntToStr(QTicketscod_dgii.Value)
    );

    if Pos(UpperCase('ACEPTADO'), UpperCase(resultado)) > 0 then
      ShowMessage('Factura enviada correctamente.')
   else
      begin
        ShowMessage(
          'Factura no es ACEPTADA: ' +
          ExtraerValorJSON(resultado, 'mensaje')
        );
      end;
  end;

  btRefreshClick(Self);
end;

procedure TfrmConsTicket.btnEnviarDGIIMasivoClick(Sender: TObject);
var
  total, proc, acept, rech, errores: Integer;
  r: TEnvioResultado;
  txt: WideString;
  wasActive: Boolean;
begin
  if QTickets.IsEmpty then
  begin
    ShowMessage('No hay facturas cargadas.');
    Exit;
  end;
  // CONFIRMACI�N
  if MessageDlg('�Est� seguro que desea enviar todas las facturas pendientes a la DGII?',
                mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
    Exit;
  // prepara progreso
  ProgressBar1.Position := 0;
  ProgressBar1.Min := 0;
  ProgressBar1.Max := QTickets.RecordCount;
  ProgressBar1.Visible := True;

  acept := 0; rech := 0; errores := 0; proc := 0;

  // evita refrescos/lookup mientras recorres
  QTickets.DisableControls;
  try
    QTickets.First;

    // contar solo las pendientes (para un progreso real opcional)
    total := 0;
    while not QTickets.Eof do
    begin
      if  (QTicketsAceptadoDGII.AsBoolean=False) and (QTicketsError_DGII.AsBoolean = False)  then
        Inc(total);
      QTickets.Next;
    end;

    // si quieres que el Max sea las pendientes:
    if total > 0 then ProgressBar1.Max := total else ProgressBar1.Max := 1;

    // vuelta a empezar y procesar
    QTickets.First;
    while not QTickets.Eof do
    begin
      if  (QTicketsAceptadoDGII.AsBoolean=False) and (QTicketsError_DGII.AsBoolean = False) then
      begin
        r := EnviarFacturaActual(txt, False);  // funci�n que llama al webservice

        case r of
          erAceptado:  Inc(acept);
          erRechazado: Inc(rech);
          erError:     Inc(errores);
        end;

        Inc(proc);
        ProgressBar1.Position := proc;
        Application.ProcessMessages; // para que la UI avance
      end;

      QTickets.Next;
    end;
  finally
    QTickets.EnableControls;
    ProgressBar1.Visible := False;
  end;

  btRefreshClick(Self); // refresca grilla si corresponde

  ShowMessage(Format('Env�o terminado.'#13#10 +
                     'Aceptadas: %d  |  Rechazadas: %d  |  Errores: %d',
                     [acept, rech, errores]));

end;

function TfrmConsTicket.EnviarFacturaActual(
  out ResultadoTexto: WideString;
  MostrarMensajes: Boolean = True
): TEnvioResultado;
var
  Servicio: FacturaElectronicaService;
  resultado: WideString;
begin
  ResultadoTexto := '';
  Result := erError;

  try
    Servicio := CoFacturaElectronicaService.Create;
    try
      // DECIDIR QU� SERVICIO USAR
      if (QTicketstotal.Value <= 250000) and (QTicketscod_dgii.Value = 32) then
      begin
        resultado := Servicio.EnviarFacturaResumenPOS(
          IntToStr(QTicketsemp_codigo.Value),
          IntToStr(QTicketssuc_codigo.Value),
          IntToStr(QTicketsticket.Value),
          QTicketsemp_rnc.Value,
          QTicketseNCF.Value,
          QTicketsrnc.Value,
          IntToStr(QTicketsusu_codigo.Value),
          IntToStr(QTicketscaja.Value),
          IntToStr(QTicketscod_dgii.Value)
        );

        if MostrarMensajes then
        begin
          if SameText(resultado, 'Aceptado') then
            ShowMessage('Factura enviada y ACEPTADA por DGII.')
          else
            ShowMessage('Factura enviada pero RECHAZADA por DGII.');
        end;
      end
      else
      begin
        resultado := Servicio.EnviarFacturaElectronicaPOS(
          IntToStr(QTicketsemp_codigo.Value),
          IntToStr(QTicketssuc_codigo.Value),
          IntToStr(QTicketsticket.Value),
          QTicketsemp_rnc.Value,
          QTicketseNCF.Value,
          QTicketsrnc.Value,
          IntToStr(QTicketsusu_codigo.Value),
          IntToStr(QTicketscaja.Value),
          IntToStr(QTicketscod_dgii.Value)
        );

        if MostrarMensajes then
        begin
          if Pos('ACEPTADO', UpperCase(resultado)) > 0 then
            ShowMessage('Factura enviada y ACEPTADA por DGII.')
          else
            ShowMessage('Factura enviada pero RECHAZADA por DGII.');
        end;
      end;

      ResultadoTexto := resultado;

      if Pos('ACEPTADO', UpperCase(resultado)) > 0 then
        Result := erAceptado
      else
        Result := erRechazado;

    finally
      Servicio := nil;
    end;
  except
    on E: Exception do
    begin
      ResultadoTexto := 'ERROR: ' + E.Message;
      Result := erError;

      if MostrarMensajes then
        ShowMessage('Error enviando factura: ' + E.Message);
    end;
  end;
end;
procedure TfrmConsTicket.FrmPopupDGIIQDGIIParametersParamByNamecaja1Click(
  Sender: TObject);
begin
Application.CreateForm(TFrmPopupDGII, FrmPopupDGII);
try
  FrmPopupDGII.QDGII.Close;
  FrmPopupDGII.QDGII.Parameters.ParamByName('tipo').Value := 'MONTOS_TICKET';
  FrmPopupDGII.QDGII.Parameters.ParamByName('emp_codigo').Value := QTicketsemp_codigo.Value;
  FrmPopupDGII.QDGII.Parameters.ParamByName('fac_numero').Value := QTicketsticket.Value;
  FrmPopupDGII.QDGII.Parameters.ParamByName('caja').Value := QTicketscaja.Value;
  FrmPopupDGII.QDGII.Parameters.ParamByName('usu_codigo').Value := QTicketsusu_codigo.Value;
  FrmPopupDGII.QDGII.Parameters.ParamByName('sup_codigo').Value := 0;
  FrmPopupDGII.QDGII.Open;

  FrmPopupDGII.ShowModal;
finally
  FrmPopupDGII.Free;
  FrmPopupDGII := nil;
end;
 end;
end.

