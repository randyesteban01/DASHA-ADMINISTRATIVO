unit PVENTA22;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Grids, DBGrids,
  IBCustomDataSet, IBUpdateSQL, DB, IBQuery, ComCtrls,
  ADODB, QuerySearchDlgADO, DBGridObj;

type
  TfrmNotasDB = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel2: TPanel;
    SpeedButton2: TSpeedButton;
    edCliente: TEdit;
    tCliente: TEdit;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Label2: TLabel;
    QNota: TADOQuery;
    dsNota: TDataSource;
    Search: TQrySearchDlgADO;
    QNotaCLI_CODIGO: TIntegerField;
    QNotaCLI_REFERENCIA: TIBStringField;
    QNotaEMP_CODIGO: TIntegerField;
    QNotaNDE_CONCEPTO: TIBStringField;
    QNotaNDE_FECHA: TDateTimeField;
    QNotaNDE_MONTO: TFloatField;
    QNotaNDE_NUMERO: TIntegerField;
    QNotaNDE_STATUS: TIBStringField;
    QNotaUSU_CODIGO: TIntegerField;
    QNotaNDE_ABONO: TFloatField;
    btLimpiar: TBitBtn;
    BitBtn2: TBitBtn;
    btPost: TBitBtn;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    btBuscaCta: TBitBtn;
    btElimina: TBitBtn;
    lbCR: TStaticText;
    lbBAL: TStaticText;
    lbDB: TStaticText;
    QDetalle: TADOQuery;
    dsDetalle: TDataSource;
    QDetalleCAT_CUENTA: TIBStringField;
    QDetalleCAT_NOMBRE: TIBStringField;
    QDetalleNDE_NUMERO: TIntegerField;
    QDetalleDET_MONTO: TFloatField;
    QDetalleDET_ORIGEN: TIBStringField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    QNotaNDE_VENCE: TDateTimeField;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    QNotaSUC_CODIGO: TIntegerField;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    Label14: TLabel;
    QDetalleSUC_CODIGO: TIntegerField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    DBCheckBox1: TDBCheckBox;
    QNotaNDE_GENERA_NCF: TStringField;
    QCentro: TADOQuery;
    QCentroemp_codigo: TIntegerField;
    QCentrocen_codigo: TIntegerField;
    QCentrodet_secuencia: TIntegerField;
    QCentrocen_nombre: TStringField;
    QCentrodet_monto: TBCDField;
    QCentrosuc_codigo: TIntegerField;
    QCentrocen_referencia: TStringField;
    QCentrosub_referencia: TStringField;
    QCentrosub_secuencia: TIntegerField;
    GridCuentas: TDBGridObj;
    spcentros: TSpeedButton;
    QCentronde_numero: TIntegerField;
    QCentrocat_cuenta: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure QNotaBeforePost(DataSet: TDataSet);
    procedure QNotaNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btLimpiarClick(Sender: TObject);
    procedure QDetalleAfterDelete(DataSet: TDataSet);
    procedure QDetalleAfterPost(DataSet: TDataSet);
    procedure QDetalleBeforePost(DataSet: TDataSet);
    procedure QDetalleNewRecord(DataSet: TDataSet);
    procedure QDetalleCAT_CUENTAChange(Sender: TField);
    procedure QNotaNDE_MONTOChange(Sender: TField);
    procedure GridCuentasColEnter(Sender: TObject);
    procedure GridCuentasEnter(Sender: TObject);
    procedure GridCuentasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btBuscaCtaClick(Sender: TObject);
    procedure btEliminaClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure spcentrosClick(Sender: TObject);
    procedure GridCuentasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    MontoAnterior, Balance, Debitos, Creditos : double;
    Totaliza : Boolean;
    CliAnterior : integer;
    CtaCliente : String;
    procedure Imp40Columnas;
    Procedure TotalizaCuentas;
  end;

var
  frmNotasDB: TfrmNotasDB;

implementation

uses RVENTA34, SIGMA01, SIGMA00, SIGMA08;

{$R *.DFM}

procedure TfrmNotasDB.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmNotasDB.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmNotasDB.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
  if key = vk_f2  then btPostClick(Self);
  if key = vk_f3  then btLimpiarClick(Self);
end;

procedure TfrmNotasDB.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
     if (activecontrol.classtype <> tdbgrid) and (activecontrol.classtype <> TDBGridObj) then
    begin
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    end;
  end;
end;

procedure TfrmNotasDB.FormActivate(Sender: TObject);
begin
  if not QNota.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    QNota.Parameters.parambyname('emp').Value := dm.vp_cia;
    QNota.Parameters.parambyname('numero').Value := -1;
    QNota.Parameters.parambyname('suc').Value := -1;
    QNota.open;
    QNota.insert;
  end;
end;

procedure TfrmNotasDB.edClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edCliente.text) <> '' then
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
      Balance := StrToFloat(Format('%10.2f',[dm.Query1.fieldbyname('cli_balance').asfloat]));
      QNotaCLI_CODIGO.value := dm.Query1.fieldbyname('cli_Codigo').asinteger;
      QNotaCLI_REFERENCIA.value := dm.Query1.fieldbyname('cli_referencia').asstring;
      tCliente.text := dm.Query1.fieldbyname('cli_nombre').asstring;

      CtaCliente := dm.Query1.fieldbyname('cli_cuenta').asstring;
      if CtaCliente <> '' then
      begin
        if QDetalle.Locate('cat_cuenta', CtaCliente,[]) then
        begin
          QDetalle.Edit;
          QDetalleDET_MONTO.Value := QNotaNDE_MONTO.Value;
          QDetalle.Post;
        end
        else
        begin
          QDetalle.Append;
          QDetalleCAT_CUENTA.Value := CtaCliente;
          QDetalleDET_MONTO.Value  := QNotaNDE_MONTO.Value;
          QDetalleDET_ORIGEN.Value := 'Debito';
          QDetalle.Post;
        end;
      end;

    end
    else
      edCliente.SetFocus;
  end;
end;

procedure TfrmNotasDB.SpeedButton2Click(Sender: TObject);
begin
  Search.Query.clear;
  Search.AliasFields.clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Referencia');
  Search.AliasFields.Add('Telefono');
  Search.AliasFields.Add('C�dula');
  Search.AliasFields.Add('C�digo');
  Search.Query.add('select cli_nombre, cli_referencia, cli_telefono, cli_cedula, cli_codigo');
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
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cli_codigo, cli_nombre, cli_balance, cli_referencia,');
    dm.Query1.sql.add('cli_limite, cli_precio, cli_descuento, cli_cuenta,');
    dm.Query1.sql.add('cli_direccion, cli_localidad, cli_telefono, cli_fax');
    dm.Query1.sql.add('from clientes');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and cli_Status = '+#39+'ACT'+#39);
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
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.open;
    Balance := StrToFloat(Format('%10.2f',[dm.Query1.fieldbyname('cli_balance').asfloat]));
    QNotaCLI_CODIGO.value := dm.Query1.fieldbyname('cli_Codigo').asinteger;
    QNotaCLI_REFERENCIA.value := dm.Query1.fieldbyname('cli_referencia').asstring;
    tCliente.text := dm.Query1.fieldbyname('cli_nombre').asstring;

    CtaCliente := dm.Query1.fieldbyname('cli_cuenta').asstring;
    if CtaCliente <> '' then
    begin
      if QDetalle.Locate('cat_cuenta', CtaCliente,[]) then
      begin
        QDetalle.Edit;
        QDetalleDET_MONTO.Value := QNotaNDE_MONTO.Value;
        QDetalle.Post;
      end
      else
      begin
        QDetalle.Append;
        QDetalleCAT_CUENTA.Value := CtaCliente;
        QDetalleDET_MONTO.Value  := QNotaNDE_MONTO.Value;
        QDetalleDET_ORIGEN.Value := 'Debito';
        QDetalle.Post;
      end;
    end;

    dbedit2.setfocus;
  end;
end;

procedure TfrmNotasDB.btPostClick(Sender: TObject);
var
  a : integer;
begin
  if messagedlg('TODOS LOS DATOS ESTAN CORECTOS?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QNota.Post;
    QNota.UpdateBatch;

    //Actualizando balance del cliente
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('execute pr_graba_nde :emp, :suc, :num, :fec, :bal');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('num').Value := QNotaNDE_NUMERO.Value;
    dm.Query1.Parameters.parambyname('fec').Value := QNotaNDE_FECHA.Value;
    dm.Query1.Parameters.parambyname('bal').Value := Balance;
    dm.Query1.Parameters.parambyname('suc').Value := QNotaSUC_CODIGO.Value;
    dm.Query1.ExecSQL;

    Totaliza := False;

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
      QDetalleNDE_NUMERO.Value    := QNotaNDE_NUMERO.Value;
      QDetalleSUC_CODIGO.Value    := QNotaSUC_CODIGO.Value;
      QDetalle.Post;
      QDetalle.Next;
    end;
    QDetalle.EnableControls;
    QDetalle.UpdateBatch;

    //Centros de Costo
    QCentro.First;
    QCentro.DisableControls;
    a := 0;
    while not QCentro.Eof do
    begin
      a := a + 1;
      QCentro.Edit;
      QCentroDET_SECUENCIA.Value := a;
      QCentroEMP_CODIGO.Value    := dm.vp_cia;
      QCentroNDE_NUMERO.Value    := QNotaNDE_NUMERO.Value;
      QCentroSUC_CODIGO.Value    := QNotaSUC_CODIGO.Value;
      QCentro.Post;
      QCentro.Next;
    end;
    QCentro.EnableControls;
    QCentro.UpdateBatch;

    if MessageDlg('SE HA GENERADO LA NOTA DE DEBITO NUMERO '+inttostr(QNotaNDE_NUMERO.value)+#13+
                  'DESEA IMPRIMIR ESTA NOTA?',mtConfirmation,[mbyes,mbno],0) = mryes then
    begin
      if dm.QParametrosPAR_FORMATOND.Value = 2 then
      begin
        Application.CreateForm(tRNotaDebito, RNotaDebito);
        RNotaDebito.QNota.Parameters.ParamByName('numero').Value := QNotaNDE_NUMERO.Value;
        RNotaDebito.QNota.Parameters.ParamByName('suc').Value    := QNotaSUC_CODIGO.Value;
        RNotaDebito.QNota.Open;
        RNotaDebito.PrinterSetup;
        RNotaDebito.Print;
        RNotaDebito.Destroy;
      end
      else
        Imp40Columnas;
    end;

    QNota.close;
    QNota.Parameters.parambyname('emp').Value := dm.vp_cia;
    QNota.Parameters.parambyname('numero').Value := -1;
    QNota.Parameters.parambyname('suc').Value := -1;
    QNota.open;
    QNota.insert;
  end;
  edCliente.setfocus;
end;

procedure TfrmNotasDB.QNotaBeforePost(DataSet: TDataSet);
var
  TipoM : string;
begin
  if QNotaCLI_CODIGO.IsNull then
  begin
    showmessage('DEBE SELECCIONAR EL CLIENTE');
    edCliente.setfocus;
    abort;
  end;
  if QNotaNDE_CONCEPTO.isnull then
  begin
    showmessage('DEBE ESPECIFICAR EL CONCEPTO');
    DBEdit2.setfocus;
    abort;
  end;
  if QNotaNDE_MONTO.Value = 0 then
  begin
    showmessage('DEBE ESPECIFICAR EL MONTO');
    DBEdit5.setfocus;
    abort;
  end;

  if QNota.State = dsinsert then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select isnull(max(nde_numero),0) as maximo');
    dm.Query1.sql.add('from notasdebito');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and suc_codigo = :suc');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('suc').Value := QNotaSUC_CODIGO.Value;
    dm.Query1.open;
    QNotaNDE_NUMERO.value := dm.Query1.fieldbyname('maximo').asinteger + 1;
  end
  else
  begin
    //Reversando balance del cliente
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('execute pr_balance_cte :emp, :cli, :ope, :monto');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('cli').Value := CliAnterior;
    dm.Query1.Parameters.parambyname('ope').Value  := 'resta';
    dm.Query1.Parameters.parambyname('monto').Value := MontoAnterior;
    dm.Query1.ExecSQL;

    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select tmo_siglas from tiposmov');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and tmo_codigo = :tipo');
    dm.Query1.Parameters.parambyname('tipo').Value := dm.QParametrosPAR_MOVNDE.value;
    dm.Query1.Parameters.parambyname('emp').Value  := dm.vp_cia;
    dm.Query1.open;
    TipoM := dm.Query1.FieldByName('tmo_siglas').asstring;

    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('delete from movimientos');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and mov_tipo = :tipo');
    dm.Query1.sql.add('and mov_numero = :num');
    dm.Query1.sql.add('and suc_codigo = :suc');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('num').Value := QNotaNDE_NUMERO.value;
    dm.Query1.Parameters.parambyname('tipo').Value := TipoM;
    dm.Query1.Parameters.parambyname('suc').Value := QNotaSUC_CODIGO.Value;
    dm.Query1.ExecSQL;
  end;
end;

procedure TfrmNotasDB.QNotaNewRecord(DataSet: TDataSet);
begin
  CtaCliente      := '';
  lbCR.Caption    := '0.00';
  lbDB.Caption    := '0.00';
  lbBAL.Caption   := '0.00';
  Debitos  := 0;
  Creditos := 0;
  Totaliza := True;
  MontoAnterior := 0;
  CliAnterior   := 0;

  QDetalle.close;
  QDetalle.Parameters.parambyname('emp').Value := dm.vp_cia;
  QDetalle.Parameters.parambyname('num').Value := -1;
  QDetalle.Parameters.parambyname('suc').Value := -1;
  QDetalle.open;

  QCentro.close;
  QCentro.Parameters.parambyname('emp').Value := dm.vp_cia;
  QCentro.Parameters.parambyname('num').Value := -1;
  QCentro.Parameters.parambyname('suc').Value := -1;
  QCentro.open;

  QNotaNDE_GENERA_NCF.Value := 'False';
  QNotaSUC_CODIGO.Value := QSucursalsuc_codigo.Value;
  QNotaEMP_CODIGO.value := dm.vp_cia;
  QNotaNDE_FECHA.value  := date;
  QNotaNDE_MONTO.value  := 0;
  QNotaNDE_STATUS.value := 'PEN';
  QNotaNDE_ABONO.value  := 0;
  edCliente.text        := '';
  tCliente.text         := '';
  QNotaUSU_CODIGO.value := dm.Usuario;
end;

procedure TfrmNotasDB.FormCreate(Sender: TObject);
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
end;

procedure TfrmNotasDB.Imp40Columnas;
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

  AssignFile(arch, 'c:\imp.bat');
  rewrite(arch);
  writeln(arch, 'type c:\t.txt > '+puerto);
  closefile(arch);

  AssignFile(arch, 'c:\t.txt');
  rewrite(arch);
  writeln(arch, dm.Centro(trim(dm.QEmpresasEMP_NOMBRE.value)));
  writeln(arch, dm.Centro(trim(DM.QEmpresasEMP_DIRECCION.value)));
  writeln(arch, dm.Centro(trim(DM.QEmpresasEMP_LOCALIDAD.value)));
  writeln(arch, dm.Centro('Telefono : '+trim(dm.QEmpresasEMP_TELEFONO.value)));
  writeln(arch, dm.Centro('RNC: '+dm.QEmpresasEMP_RNC.value));
  writeln(arch, ' ');
  writeln(arch, dm.Centro('N O T A   D E   D E B I T O'));
  writeln(arch, ' ');
  writeln(arch, 'Numero  : '+inttostr(QNotaNDE_NUMERO.value));
  writeln(arch, 'Cliente : '+tCliente.text);
  writeln(arch, 'Fecha   : '+DateToStr(QNotaNDE_FECHA.Value));
  writeln(arch, 'Concepto: '+QNotaNDE_CONCEPTO.value);
  writeln(arch, ' ');
  writeln(arch, 'MONTO   : '+chr(27)+chr(52)+Format('%n',[QNotaNDE_MONTO.value])+chr(27)+chr(53));

  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, dm.Centro('_____________________'));
  writeln(arch, dm.Centro('Recibido Por'));
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  CloseFile(arch);
  winexec('c:\imp.bat',0);
  RNotaDebito.Destroy;
end;

procedure TfrmNotasDB.btLimpiarClick(Sender: TObject);
begin
  if messagedlg('DESEA CANCELAR ESTA NOTA DE CREDITO?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QNota.close;
    QNota.Parameters.parambyname('emp').Value := dm.vp_cia;
    QNota.Parameters.parambyname('numero').Value := -1;
    QNota.Parameters.parambyname('suc').Value := -1;
    QNota.open;
    QNota.insert;
  end;
  edCliente.setfocus;
end;

procedure TfrmNotasDB.QDetalleAfterDelete(DataSet: TDataSet);
begin
  TotalizaCuentas;
end;

procedure TfrmNotasDB.QDetalleAfterPost(DataSet: TDataSet);
begin
  TotalizaCuentas;
end;

procedure TfrmNotasDB.QDetalleBeforePost(DataSet: TDataSet);
begin
  if QDetalleCAT_NOMBRE.IsNull then QDetalle.Cancel;
end;

procedure TfrmNotasDB.QDetalleNewRecord(DataSet: TDataSet);
begin
  QDetalleEMP_CODIGO.Value := dm.vp_cia;
end;

procedure TfrmNotasDB.QDetalleCAT_CUENTAChange(Sender: TField);
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

procedure TfrmNotasDB.QNotaNDE_MONTOChange(Sender: TField);
begin
  if (not QNotaNDE_MONTO.IsNull) and (Totaliza = True) then
  begin
    QDetalle.DisableControls;
    QDetalle.First;
    While not QDetalle.Eof do
    begin
      QDetalle.Edit;
      QDetalleDET_MONTO.Value := QNotaNDE_MONTO.Value;
      QDetalle.Post;
      QDetalle.Next;
    end;
    QDetalle.First;
    QDetalle.EnableControls;
    TotalizaCuentas;
  end;
end;

procedure TfrmNotasDB.TotalizaCuentas;
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
  end;
  if Trim(lbBAL.Caption) <> '0.00' then
    lbBAL.Font.Color := clRed
  else
    lbBAL.Font.Color := clBlack;
end;

procedure TfrmNotasDB.GridCuentasColEnter(Sender: TObject);
begin
  if GridCuentas.SelectedIndex = 2 then
    GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1;
end;

procedure TfrmNotasDB.GridCuentasEnter(Sender: TObject);
begin
  GridCuentas.SelectedIndex := 1;
end;

procedure TfrmNotasDB.GridCuentasKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmNotasDB.btBuscaCtaClick(Sender: TObject);
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
    QDetalle.Edit;
    QDetalleCAT_CUENTA.Value := Search.ValueField;
  end;
end;

procedure TfrmNotasDB.btEliminaClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR LA CUENTA?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QDetalle.Delete
  end;
  GridCuentas.setfocus;
end;

procedure TfrmNotasDB.FormPaint(Sender: TObject);
begin
  frmNotasDB.Top := 1;
  frmNotasDB.Left := 1;
end;

procedure TfrmNotasDB.spcentrosClick(Sender: TObject);
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

procedure TfrmNotasDB.GridCuentasDrawColumnCell(Sender: TObject;
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

end.
