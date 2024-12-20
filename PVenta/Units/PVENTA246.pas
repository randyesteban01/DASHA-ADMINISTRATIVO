unit PVENTA246;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Grids, DBGrids, StdCtrls, Mask, Buttons, ExtCtrls, DB,
  IBCustomDataSet, ADODB;

type
  TFrmRecibosPagoDestino = class(TForm)
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label14: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    GridForma: TDBGrid;
    DBEdit7: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    Panel3: TPanel;
    btClose: TSpeedButton;
    btGrabar: TSpeedButton;
    QRecibos: TADOQuery;
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
    QRecibosCAJ_CODIGO: TIntegerField;
    QRecibosREC_COMISION: TFloatField;
    QRecibosREC_PORCCOMISION: TFloatField;
    QRecibosREC_CONCEPTO2: TIBStringField;
    QRecibosPED_TIPO: TStringField;
    QRecibosPED_NUMERO: TIntegerField;
    QRecibosSUC_CODIGO: TIntegerField;
    QRecibosrec_comisionpagada: TBCDField;
    QRecibosrec_porc_descuento: TBCDField;
    QRecibosrec_caja: TIntegerField;
    QRecibospro_codigo: TIntegerField;
    QRecibosmon_codigo: TIntegerField;
    QRecibosrec_tasa: TBCDField;
    QRecibosrec_retencion: TBCDField;
    QRecibosrec_interes: TBCDField;
    QRecibosNUMERO_RESERVA: TIntegerField;
    QRecibosREC_MORA: TCurrencyField;
    dsRecibo: TDataSource;
    QFormasPago: TADOQuery;
    QFormasPagoEMP_CODIGO: TIntegerField;
    QFormasPagoFOR_DESCRIPCION: TIBStringField;
    QFormasPagoFOR_MONTO: TFloatField;
    QFormasPagoFPA_CODIGO: TIntegerField;
    QFormasPagoREC_NUMERO: TIntegerField;
    QFormasPagoSUC_CODIGO: TIntegerField;
    QFormasPagoforma: TStringField;
    dsFormaPago: TDataSource;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    dsSuc: TDataSource;
    dsDetalle: TDataSource;
    QDetalle: TADOQuery;
    QDetalleCAT_CUENTA: TIBStringField;
    QDetalleCAT_NOMBRE: TIBStringField;
    QDetalleREC_NUMERO: TIntegerField;
    QDetalleDET_MONTO: TFloatField;
    QDetalleDET_ORIGEN: TIBStringField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    QDetalleSUC_CODIGO: TIntegerField;
    QForma: TADOQuery;
    QFormaFPA_CODIGO: TIntegerField;
    QFormaFPA_NOMBRE: TIBStringField;
    dsForma: TDataSource;
    QFormasPagoCAT_CUENTA: TStringField;
    QFormaCAT_CUENTA: TStringField;
    QFormaCAT_NOMBRE: TStringField;
    QFormasPagoCAT_NOMBRE: TStringField;
    queryMU: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure QRecibosBeforePost(DataSet: TDataSet);
    procedure QRecibosNewRecord(DataSet: TDataSet);
    procedure QFormasPagoBeforeDelete(DataSet: TDataSet);
    procedure QFormasPagoAfterInsert(DataSet: TDataSet);
    procedure btGrabarClick(Sender: TObject);
    procedure QRecibosREC_MONTOChange(Sender: TField);
    procedure btCloseClick(Sender: TObject);
    procedure QRecibosAfterPost(DataSet: TDataSet);
    procedure ImprimirRecibo();
    procedure Imp40ColumnasRec();
  private
    { Private declarations }
    vl_cliente, vl_suc, vl_ticket, vl_MovSec :  Integer;
      vl_dest, vl_tipoclie, vl_clienteN, vl_asunto, vl_factnum, vl_adjunto1, vl_adjunto2, vl_cuerpo :String;

  public
    { Public declarations }
    ins, Totaliza, Distri, SelCajero : boolean;
    Deuda, TotalDetalle, Balance, Pendiente, Aplicar, Comision,
    Creditos, Debitos, AFavor, totalpositivo, totalnegativo, vl_mora, vl_mora2 : double;
    Cajero, FormatoImp, caja : integer;
    PuertoImp,puerto, CtaCliente : string;
   
  end;

var
  FrmRecibosPagoDestino: TFrmRecibosPagoDestino;

implementation

uses SIGMA00, PVENTA37, SIGMA01, PVENTA230, RVENTA32, PVENTA83;

{$R *.dfm}

procedure TFrmRecibosPagoDestino.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action := cafree;
end;


procedure TFrmRecibosPagoDestino.Imp40ColumnasRec;
var
  arch : textfile;
  s, s1, s2, s3, s4, s5, s6 : array [0..20] of char;
begin
  AssignFile(arch, '.\imp.bat');
  rewrite(arch);
  writeln(arch, 'type .\t.txt > '+puerto);
  closefile(arch);

  AssignFile(arch, '.\t.txt');
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
  writeln(arch, 'Monto    : '+Format('%n',[RRecibo.QRecibosREC_MONTO.value]));
  writeln(arch, 'Descuento: '+Format('%n',[RRecibo.QRecibosREC_DESCUENTO.value]));

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
  dm.Query1.SQL.Add('and p.for_monto > 0');
  dm.Query1.SQL.Add('group by f.fpa_nombre');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('num').Value := RRecibo.QRecibosREC_NUMERO.Value;
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

  WinExec(PAnsiChar('.\imp.bat'), 0);
  RRecibo.Destroy;

  {Application.CreateForm(tfrmImpPantalla, frmImpPantalla);
  frmImpPantalla.Memo1.Lines.LoadFromFile('t.txt');
  frmImpPantalla.ShowModal;
  frmImpPantalla.Release;
  RRecibo.Destroy;  }
  {
  if cbDestino.ItemIndex = 1 then
  begin
    winexec('imp.bat',0);
    RRecibo.Destroy;
  end
  else
  begin
    Application.CreateForm(tfrmImpPantalla, frmImpPantalla);
    frmImpPantalla.Memo1.Lines.LoadFromFile('t.txt');
    frmImpPantalla.ShowModal;
    frmImpPantalla.Release;
    RRecibo.Destroy;
  end;
  }
end;

procedure TFrmRecibosPagoDestino.ImprimirRecibo();
Begin       
//Recibo
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select rec_tipo from recibos');
        dm.Query1.SQL.Add('where emp_Codigo = :emp');
        dm.Query1.SQL.Add('and rec_numero = :num');
        dm.Query1.SQL.Add('and suc_codigo = :suc');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
        dm.Query1.Parameters.ParamByName('num').Value := (QRecibosREC_NUMERO.Value);
        dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
        dm.Query1.Open;

        application.createform(tRRecibo, RRecibo);
        RRecibo.QRecibos.Parameters.ParamByName('numero').Value := (QRecibosREC_NUMERO.Value);
        RRecibo.QRecibos.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;

        RRecibo.QRecibos.open;
        RRecibo.QDoc.Open;
        RRecibo.QFormasPago.Open;
        RRecibo.lbReimpresion.Enabled := True;

        Imp40ColumnasRec();

       // RRecibo.Preview;
       // RRecibo.Destroy;

       { RRecibo.PrinterSetup;
        RRecibo.Print;
        RRecibo.Destroy;          }
 
end;


procedure TFrmRecibosPagoDestino.FormCreate(Sender: TObject);
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

end;

procedure TFrmRecibosPagoDestino.FormActivate(Sender: TObject);
begin
 FrmRecibosPagoDestino.top := 10;
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
      QRecibosREC_NOMBRE.Text := FrmConsFTEnvios.QEnviosNombre_Recibe.Text;
      QRecibosREC_CONCEPTO.Text := 'PAGO DE ENVIO #'+frmConsFTEnvios.QEnviosfac_numero.Text+' / DESDE '+frmConsFTEnvios.QEnviosDestino.Text;
      DBLookupComboBox2.KeyValue := frmConsFTEnvios.QEnviosenv_suc_destino.Value;
      end;
      end;
end;

procedure TFrmRecibosPagoDestino.QRecibosBeforePost(DataSet: TDataSet);
var
  vl_recibo, vl_sec :  Integer;
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
    vl_recibo := dm.Query1.fieldbyname('maximo').asinteger + 1;
    QRecibosREC_NUMERO.value := vl_recibo;
end;
end;

procedure TFrmRecibosPagoDestino.QRecibosNewRecord(DataSet: TDataSet);
begin
  Balance   := 0;
  Pendiente := 0;
  Aplicar   := 0;
  Totaliza  := True;
  Distri    := True;
  Creditos  := 0;
  Debitos   := 0;
  AFavor    := 0;
  vl_mora2   := 0;

  ins := true;

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

  QRecibosREC_TIPO.value := 'I';
  FormatoImp := dm.QParametrosPAR_FORMATORI.Value;

  QRecibosREC_DESCUENTO.value := 0;

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select mon_sigla, MON_RELACIONPESOCOMPRA from moneda');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and mon_codigo = :mon');
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.parambyname('mon').Value := dm.QParametrosMON_CODIGO.Value;
  dm.Query1.open;
  QRecibosREC_TASA.Value := dm.Query1.FieldByName('MON_RELACIONPESOCOMPRA').Value;


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

  //Buscar Formas de Pagos
    QFormasPago.disablecontrols;
    queryMU.Close;
    queryMU.SQL.Clear;
    queryMU.SQL.Add('select distinct fpa_codigo from formaspago');
    queryMU.SQL.Add('where emp_codigo = :emp');
    queryMU.SQL.Add('order by fpa_codigo');
    queryMU.Parameters.ParamByName('emp').Value := dm.vp_cia;
    queryMU.Open;
    while not queryMU.Eof do begin
      QFormasPago.append;
      QFormasPagoEMP_CODIGO.value := dm.vp_cia;
      QFormasPagoFPA_CODIGO.value := queryMU.fieldbyname('fpa_codigo').asinteger;
      QFormasPago.post;
    queryMU.Next;
    end;
    QFormasPago.First;
    QFormasPago.enablecontrols;

    if frmConsFTEnvios.QEnviosmonto.Value > 0 then begin
    QFormasPago.Edit;
    QFormasPagoFOR_MONTO.Value := frmConsFTEnvios.QEnviosmonto.Value;
    QFormasPago.Post;
    QRecibosREC_MONTO.Value := QFormasPagoFOR_MONTO.Value;

    end;


end;

procedure TFrmRecibosPagoDestino.QFormasPagoBeforeDelete(
  DataSet: TDataSet);
begin
abort;
end;

procedure TFrmRecibosPagoDestino.QFormasPagoAfterInsert(DataSet: TDataSet);
begin
  if Ins = false then QFormasPago.cancel;
end;

procedure TFrmRecibosPagoDestino.btGrabarClick(Sender: TObject);
var i, cantidad : Integer;
begin
if totalpositivo = frmConsFTEnvios.QEnviosmonto.Value then begin
ins := False;
QRecibos.post;
QRecibos.UpdateBatch;
DM.ADOSigma.Execute('UPDATE ENVIO SET facpagodestino = 0 WHERE EMP_CODIGO ='+frmConsFTEnvios.QEnviosemp_codigo.Text+
' AND SUC_CODIGO ='+frmConsFTEnvios.QEnviossuc_codigo.Text + ' AND FAC_NUMERO ='+frmConsFTEnvios.QEnviosfac_numero.Text+
' AND TFA_CODIGO ='+frmConsFTEnvios.QEnviosTFA_CODIGO.Text + ' AND IDENVIO ='+frmConsFTEnvios.QEnviosIDEnvio.Text);

cantidad := dm.QParametrosPAR_cantidadRecibosImprimir.value ;
 for i := 1 to cantidad do
  begin
    ImprimirRecibo(); // Llama al procedimiento que imprime el recibo
  end;

frmConsFTEnvios.btRefreshClick(Sender);
Close;
end
else
ShowMessage('ERROR EL MONTO PAGADO ES DIRERENTE AL MONTO DEL ENVIO...');
end;


procedure TFrmRecibosPagoDestino.QRecibosREC_MONTOChange(Sender: TField);
begin
totalpositivo := QRecibosREC_MONTO.Value;
end;

procedure TFrmRecibosPagoDestino.btCloseClick(Sender: TObject);
begin
Close;
end;

procedure TFrmRecibosPagoDestino.QRecibosAfterPost(DataSet: TDataSet);
VAR
  VL_SEC :  Integer;
begin
QFormasPago.DisableControls;
    QFormasPago.First;
    while not QFormasPago.Eof do begin
    QFormasPago.Edit;
    QFormasPagoREC_NUMERO.Value := QRecibosREC_NUMERO.Value;
    QFormasPagoSUC_CODIGO.Value := QRecibosSUC_CODIGO.Value;
    QFormasPago.Post;
    QFormasPago.Next;
    end;
    QFormasPago.First;
    QFormasPago.EnableControls;
    QFormasPago.UpdateBatch;



    //Buscar Cuentas
    dm.adoMultiUso.Close;
    dm.adoMultiUso.SQL.Clear;
    dm.adoMultiUso.SQL.Add('select emp_codigo, suc_codigo, fac_forma, tfa_codigo,');
    dm.adoMultiUso.SQL.Add('fac_numero, det_secuencia, cat_nombre, det_monto, det_origen, cat_cuenta');
    dm.adoMultiUso.SQL.Add('from contdet_facturas');
    dm.adoMultiUso.SQL.Add('where emp_codigo = :emp and tfa_codigo = :tip and fac_numero = :num');
    dm.adoMultiUso.SQL.Add('and suc_codigo = :suc');
    dm.adoMultiUso.SQL.Add('and det_origen ='+QuotedStr('Debito'));
    dm.adoMultiUso.SQL.Add('order by det_secuencia');
    dm.adoMultiUso.Parameters.ParamByName('emp').Value := frmConsFTEnvios.QEnviosemp_codigo.Value;
    dm.adoMultiUso.Parameters.ParamByName('suc').Value := frmConsFTEnvios.QEnviossuc_codigo.Value;
    dm.adoMultiUso.Parameters.ParamByName('tip').Value := frmConsFTEnvios.QEnviosTFA_CODIGO.Value;
    dm.adoMultiUso.Parameters.ParamByName('num').Value := frmConsFTEnvios.QEnviosfac_numero.Value;
    dm.adoMultiUso.Open;
    vl_sec :=  0;

    while not dm.adoMultiUso.Eof do begin
    //Secuencia cuenta
      vl_sec := vl_sec + 1;
      QDetalle.append;
      QDetalleCAT_CUENTA.value := dm.adoMultiUso.fieldbyname('CAT_CUENTA').Value;
      QDetalleCAT_NOMBRE.value := dm.adoMultiUso.fieldbyname('CAT_NOMBRE').Value;
      QDetalleREC_NUMERO.value := QRecibosREC_NUMERO.Value;
      QDetalleDET_MONTO.value  := dm.adoMultiUso.fieldbyname('DET_MONTO').Value;
      QDetalleDET_ORIGEN.value := 'Credito';
      QDetalleDET_SECUENCIA.value := vl_sec;
      QDetalleEMP_CODIGO.value    := QRecibosEMP_CODIGO.Value;
      QDetalleSUC_CODIGO.value    := frmConsFTEnvios.QEnviosenv_suc_destino.Value;
      QDetalle.post;
    dm.adoMultiUso.Next;
    end;



    QFormasPago.DisableControls;
    QFormasPago.First;
    while not QFormasPago.Eof do begin
    IF QFormasPagoFOR_MONTO.Value > 0 THEN BEGIN
    vl_sec := vl_sec + 1;

      QDetalle.append;
      QDetalleCAT_CUENTA.value := QFormasPagoCAT_CUENTA.Value;
      QDetalleCAT_NOMBRE.value := QFormasPagoCAT_NOMBRE.Value;
      QDetalleREC_NUMERO.value := QRecibosREC_NUMERO.Value;
      QDetalleDET_MONTO.value  := QFormasPagoFOR_MONTO.Value;
      QDetalleDET_ORIGEN.value := 'Debito';
      QDetalleDET_SECUENCIA.value := vl_sec;
      QDetalleEMP_CODIGO.value    := QRecibosEMP_CODIGO.Value;
      QDetalleSUC_CODIGO.value    := frmConsFTEnvios.QEnviosenv_suc_destino.Value;
      QDetalle.post;
    end;
    QFormasPago.Next;
    end;
    QFormasPago.First;
    QFormasPago.EnableControls;
    QDetalle.UpdateBatch;

    DM.ADOSigma.Execute('DELETE FROM RECFORMAPAGO WHERE FOR_MONTO = 0 AND rec_numero = '+QRecibosREC_NUMERO.Text+
    ' AND suc_codigo = '+QRecibosSUC_CODIGO.Text+' AND emp_codigo = '+QRecibosEMP_CODIGO.Text);
end;

end.
