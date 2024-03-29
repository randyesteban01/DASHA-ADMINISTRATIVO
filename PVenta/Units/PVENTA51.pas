unit PVENTA51;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, DB,
  IBCustomDataSet, IBQuery, ComCtrls, IBUpdateSQL, ADODB,
  QuerySearchDlgADO, DBCtrls;

type
  TfrmConsNC = class(TForm)
    Panel1: TPanel;
    cbGrupo: TRadioGroup;
    Label1: TLabel;
    edTipo: TEdit;
    btTipo: TSpeedButton;
    tTipo: TEdit;
    Label2: TLabel;
    edCliente: TEdit;
    SpeedButton2: TSpeedButton;
    tCliente: TEdit;
    Label12: TLabel;
    btVendedor: TSpeedButton;
    tVendedor: TEdit;
    edVendedor: TEdit;
    cbStatus: TRadioGroup;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    btRefresh: TBitBtn;
    lbCantidad: TLabel;
    DBGrid1: TDBGrid;
    QNotas: TADOQuery;
    Label5: TLabel;
    cbOrden: TComboBox;
    dsNota: TDataSource;
    btClose: TBitBtn;
    Label6: TLabel;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    Memo1: TMemo;
    Search: TQrySearchDlgADO;
    Label7: TLabel;
    SpeedButton3: TSpeedButton;
    tUsuario: TEdit;
    edUsuario: TEdit;
    QNotasFAC_FORMA: TIBStringField;
    QNotasFAC_NUMERO: TIntegerField;
    QNotasNCR_CONCEPTO: TIBStringField;
    QNotasNCR_DEVOLUCION: TIntegerField;
    QNotasNCR_FECHA: TDateTimeField;
    QNotasNCR_MONTO: TFloatField;
    QNotasNCR_MONTOUSADO: TFloatField;
    QNotasNCR_NUMERO: TIntegerField;
    QNotasNCR_STATUS: TIBStringField;
    QNotasTFA_CODIGO: TIntegerField;
    QNotasUSU_CODIGO: TIntegerField;
    QNotasVEN_CODIGO: TIntegerField;
    QNotasCLI_NOMBRE: TIBStringField;
    QNotasUSU_NOMBRE: TIBStringField;
    QMov: TADOQuery;
    dsMov: TDataSource;
    QMovDET_MONTO: TFloatField;
    QMovFAC_FORMA: TIBStringField;
    QMovMOV_NUMERO: TIntegerField;
    QMovMOV_TIPO: TIBStringField;
    QMovNCR_NUMERO: TIntegerField;
    QMovTFA_CODIGO: TIntegerField;
    QNotasEMP_CODIGO: TIntegerField;
    dsTipo: TDataSource;
    QTipo: TADOQuery;
    QTipoTFA_CODIGO: TIntegerField;
    QTipoTFA_NOMBRE: TIBStringField;
    QMovTipo: TStringField;
    QMovDET_CUOTA: TIBStringField;
    QMovMOV_CUOTA: TIntegerField;
    QMovCuota: TIntegerField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    GridCuentas: TDBGrid;
    btBuscaCta: TSpeedButton;
    btElimina: TSpeedButton;
    lbCR: TStaticText;
    lbDB: TStaticText;
    lbBAL: TStaticText;
    TabSheet2: TTabSheet;
    GridMov: TDBGrid;
    QDetalle: TADOQuery;
    QDetalleCAT_CUENTA: TIBStringField;
    QDetalleCAT_NOMBRE: TIBStringField;
    QDetalleNCR_NUMERO: TIntegerField;
    QDetalleDET_MONTO: TFloatField;
    QDetalleDET_ORIGEN: TIBStringField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    dsDetalle: TDataSource;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalemp_codigo: TIntegerField;
    dsSuc: TDataSource;
    QNotassuc_codigo: TIntegerField;
    QMovSUC_CODIGO: TIntegerField;
    Label14: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursalalm_codigo: TIntegerField;
    QNotasNCF_Fijo: TStringField;
    QNotasNCF_Secuencia: TBCDField;
    QNotasNCF: TStringField;
    QNotasNCF_Modifica: TStringField;
    QDetalleSUC_CODIGO: TIntegerField;
    Splitter1: TSplitter;
    QNotasncr_fecha_factura: TDateTimeField;
    QUpdNC: TADOQuery;
    procedure FormCreate(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure btTipoClick(Sender: TObject);
    procedure edTipoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btVendedorClick(Sender: TObject);
    procedure edVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure edTipoChange(Sender: TObject);
    procedure edVendedorChange(Sender: TObject);
    procedure edClienteChange(Sender: TObject);
    procedure edUsuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure edUsuarioChange(Sender: TObject);
    procedure cbStatusClick(Sender: TObject);
    procedure cbGrupoClick(Sender: TObject);
    procedure ckItbisClick(Sender: TObject);
    procedure ckDescClick(Sender: TObject);
    procedure cbOrdenClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure QNotasAfterOpen(DataSet: TDataSet);
    procedure QMovCalcFields(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QDetalleAfterDelete(DataSet: TDataSet);
    procedure QDetalleAfterPost(DataSet: TDataSet);
    procedure QDetalleBeforePost(DataSet: TDataSet);
    procedure QDetalleNewRecord(DataSet: TDataSet);
    procedure QDetalleCAT_CUENTAChange(Sender: TField);
    procedure GridCuentasColEnter(Sender: TObject);
    procedure GridCuentasEnter(Sender: TObject);
    procedure GridCuentasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btEliminaClick(Sender: TObject);
    procedure btBuscaCtaClick(Sender: TObject);
    procedure QNotasAfterScroll(DataSet: TDataSet);
    procedure QNotasCalcFields(DataSet: TDataSet);
    procedure QDetalleAfterEdit(DataSet: TDataSet);
    procedure QDetalleAfterInsert(DataSet: TDataSet);
    procedure QDetalleBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Debitos, Creditos : Double;
    Modifica, Elimina : Boolean;
    Procedure TotalizaCuentas;
  end;

var
  frmConsNC: TfrmConsNC;

implementation

uses RVENTA09, SIGMA00, SIGMA01;

{$R *.dfm}

procedure TfrmConsNC.FormCreate(Sender: TObject);
begin
  Fecha1.date := date;
  Fecha2.date := date;
  Memo1.lines := QNotas.sql;
  cbOrden.itemindex := 0;
end;

procedure TfrmConsNC.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmConsNC.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
end;

procedure TfrmConsNC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConsNC.FormActivate(Sender: TObject);
begin
  if not QTipo.active then QTipo.open;
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

procedure TfrmConsNC.btRefreshClick(Sender: TObject);
begin
  QUpdNC.ExecSQL;
  
  QNotas.close;
  QNotas.sql.clear;
  QNotas.sql := Memo1.Lines;
  if cbGrupo.itemindex = 0 then
    QNotas.sql.add('and n.fac_forma = '+#39+'A'+#39)
  else if cbGrupo.itemindex = 1 then
    QNotas.sql.add('and n.fac_forma = '+#39+'B'+#39);
  if trim(edTipo.text) <> '' then
    QNotas.sql.add('and n.tfa_codigo = '+trim(edTipo.text));
  if trim(edVendedor.text) <> '' then
    QNotas.sql.add('and n.ven_codigo = '+trim(edVendedor.text));
  if trim(edCliente.text) <> '' then
    if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
       QNotas.sql.add('and c.cli_codigo = '+trim(edCliente.text))
    else
       QNotas.sql.add('and c.cli_referencia = '+#39+trim(edCliente.text)+#39);
  if trim(edUsuario.text) <> '' then
    QNotas.sql.add('and n.usu_codigo = '+trim(edUsuario.text));

  if cbStatus.ItemIndex = 1 then
     QNotas.sql.add('and n.ncr_status = '+#39+'ANU'+#39)
  else if cbStatus.ItemIndex = 2 then
     QNotas.sql.add('and n.ncr_status = '+#39+'EMI'+#39);

  if cbOrden.ItemIndex = 0 then
     QNotas.sql.add('order by n.ncr_numero')
  else if cbOrden.ItemIndex = 1 then
     QNotas.sql.add('order by n.ncr_fecha');

  QNotas.Parameters.parambyname('fecha1').DataType := ftDate;
  QNotas.Parameters.parambyname('fecha2').DataType := ftDate;
  QNotas.Parameters.parambyname('fecha1').Value := fecha1.date;
  QNotas.Parameters.parambyname('fecha2').Value := fecha2.date;
  QNotas.Parameters.parambyname('emp').Value := dm.vp_cia;
  QNotas.Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;
  QNotas.open;
  lbCantidad.caption := inttostr(QNotas.recordcount)+' Notas de cr�dito';

//  DBGrid1.setfocus;
end;

procedure TfrmConsNC.btTipoClick(Sender: TObject);
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
    dm.Query1.sql.add('select tfa_nombre, tfa_selcondi, tfa_formatoimp, tfa_puertoimp');
    dm.Query1.sql.add('from tiposfactura');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and tfa_codigo = :cod');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edTipo.text));
    dm.Query1.open;
    tTipo.text := dm.Query1.fieldbyname('tfa_nombre').asstring;
    edTipo.SetFocus;
    btRefreshClick(self);
  end;
end;

procedure TfrmConsNC.edTipoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edTipo.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select tfa_nombre, tfa_selcondi, tfa_formatoimp, tfa_puertoimp');
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
        tTipo.text := dm.Query1.fieldbyname('tfa_nombre').asstring;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsNC.btVendedorClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C�digo');
  Search.Query.clear;
  Search.Query.add('select ven_nombre, ven_codigo');
  Search.Query.add('from vendedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'ven_Codigo';
  Search.Title := 'Listado de Vendedores';
  if Search.execute then
  begin
    edVendedor.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select ven_nombre from vendedores');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and ven_codigo = :ven');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('ven').Value := strtoint(trim(edVendedor.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('VENDEDOR NO EXISTE',mterror,[mbok],0)
    else
      tVendedor.text := dm.Query1.fieldbyname('ven_nombre').asstring;
    edVendedor.setfocus;
    btRefreshClick(self);
  end;
end;

procedure TfrmConsNC.edVendedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edVendedor.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select ven_nombre from vendedores');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and ven_codigo = :ven');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('ven').Value := strtoint(trim(edVendedor.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('VENDEDOR NO EXISTE',mterror,[mbok],0);
        edVendedor.SetFocus;
      end
      else
        tVendedor.text := dm.Query1.fieldbyname('ven_nombre').asstring;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsNC.edClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edCliente.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select cli_nombre from clientes');
      dm.Query1.sql.add('where emp_codigo = :emp');
      if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
         dm.Query1.sql.add('and cli_codigo = :cod')
      else
         dm.Query1.sql.add('and cli_referencia = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
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
        tCliente.text := dm.Query1.fieldbyname('cli_nombre').asstring;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsNC.SpeedButton2Click(Sender: TObject);
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
      tCliente.text := dm.Query1.fieldbyname('cli_nombre').asstring;
    edCliente.setfocus;
    btRefreshClick(self);
  end;
end;

procedure TfrmConsNC.edTipoChange(Sender: TObject);
begin
  if trim(edTipo.text) = '' then tTipo.text := '';
end;

procedure TfrmConsNC.edVendedorChange(Sender: TObject);
begin
  if trim(edVendedor.text) = '' then tVendedor.text := '';
end;

procedure TfrmConsNC.edClienteChange(Sender: TObject);
begin
  if trim(edCliente.text) = '' then tCliente.text := '';
end;

procedure TfrmConsNC.edUsuarioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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

procedure TfrmConsNC.SpeedButton3Click(Sender: TObject);
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

procedure TfrmConsNC.edUsuarioChange(Sender: TObject);
begin
  if trim(edUsuario.text) = '' then tUsuario.text := '';
end;

procedure TfrmConsNC.cbStatusClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsNC.cbGrupoClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsNC.ckItbisClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsNC.ckDescClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsNC.cbOrdenClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsNC.BitBtn2Click(Sender: TObject);
begin
  Application.CreateForm(tRConsNC, RConsNC);
  RConsNC.QNotas.SQL := QNotas.SQL;
  RConsNC.lbGrupo.Caption    := cbGrupo.Items[cbGrupo.ItemIndex];
  RConsNC.lbTipo.Caption     := tTipo.Text;
  RConsNC.lbVendedor.Caption := tVendedor.Text;
  RConsNC.lbCliente.Caption  := tCliente.Text;
  RConsNC.lbUsuario.Caption  := tUsuario.Text;
  RConsNC.lbStatus.Caption   := cbStatus.Items[cbStatus.ItemIndex];
  RConsNC.lbFecha.Caption    := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
  RConsNC.QNotas.Parameters.parambyname('fecha1').DataType := ftDate;
  RConsNC.QNotas.Parameters.parambyname('fecha2').DataType := ftDate;
  RConsNC.QNotas.Parameters.parambyname('fecha1').Value := fecha1.date;
  RConsNC.QNotas.Parameters.parambyname('fecha2').Value := fecha2.date;
  RConsNC.QNotas.Parameters.parambyname('emp').Value := dm.vp_cia;
  RConsNC.QNotas.Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;
  RConsNC.QNotas.open;
  RConsNC.PrinterSetup;
  RConsNC.Preview;
  RConsNC.Destroy;
end;

procedure TfrmConsNC.FormPaint(Sender: TObject);
begin
  with frmConsNC do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmConsNC.QNotasAfterOpen(DataSet: TDataSet);
begin
  if not QMov.Active then QMov.open;
  if not QDetalle.Active then QDetalle.Open;
end;

procedure TfrmConsNC.QMovCalcFields(DataSet: TDataSet);
begin
  if QMovDET_CUOTA.Value = 'True' then
     QMovCuota.Value := QMovMOV_CUOTA.Value;
end;

procedure TfrmConsNC.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     if activecontrol.classtype <> tdbgrid then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmConsNC.QDetalleAfterDelete(DataSet: TDataSet);
begin
  QDetalle.UpdateBatch;
  TotalizaCuentas;
end;

procedure TfrmConsNC.QDetalleAfterPost(DataSet: TDataSet);
begin
  QDetalle.UpdateBatch;
  TotalizaCuentas;
end;

procedure TfrmConsNC.QDetalleBeforePost(DataSet: TDataSet);
begin
  if QDetalleCAT_NOMBRE.IsNull then QDetalle.Cancel;
  if QDetalle.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(det_secuencia),0) as maximo');
    dm.Query1.SQL.Add('from contdet_notacredito');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ncr_numero = :num');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('num').Value := QNotasNCR_NUMERO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := QNotasSUC_CODIGO.Value;
    dm.Query1.Open;
    QDetalleDET_SECUENCIA.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  end;
end;

procedure TfrmConsNC.QDetalleNewRecord(DataSet: TDataSet);
begin
  QDetalleEMP_CODIGO.Value := dm.vp_cia;
  QDetalleNCR_NUMERO.Value := QNotasNCR_NUMERO.Value;
  QDetalleSUC_CODIGO.Value := QNotassuc_codigo.Value;
end;

procedure TfrmConsNC.QDetalleCAT_CUENTAChange(Sender: TField);
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

procedure TfrmConsNC.TotalizaCuentas;
var
  Punt : TBookMark;
begin
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

procedure TfrmConsNC.GridCuentasColEnter(Sender: TObject);
begin
  if GridCuentas.SelectedIndex = 1 then
    GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1;
end;

procedure TfrmConsNC.GridCuentasEnter(Sender: TObject);
begin
  GridCuentas.SelectedIndex := 0;
end;

procedure TfrmConsNC.GridCuentasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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

procedure TfrmConsNC.btEliminaClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR LA CUENTA?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QDetalle.Delete
  end;
  GridCuentas.setfocus;
end;

procedure TfrmConsNC.btBuscaCtaClick(Sender: TObject);
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

procedure TfrmConsNC.QNotasAfterScroll(DataSet: TDataSet);
begin
  TotalizaCuentas;
end;

procedure TfrmConsNC.QNotasCalcFields(DataSet: TDataSet);
begin
  if not QNotasNCF_Fijo.IsNull then
    QNotasNCF.Value := QNotasNCF_Fijo.Value + FormatFloat('00000000',QNotasNCF_Secuencia.Value);
end;

procedure TfrmConsNC.QDetalleAfterEdit(DataSet: TDataSet);
begin
  if not Modifica then QDetalle.Cancel;
end;

procedure TfrmConsNC.QDetalleAfterInsert(DataSet: TDataSet);
begin
  if not Modifica then QDetalle.Cancel;
end;

procedure TfrmConsNC.QDetalleBeforeDelete(DataSet: TDataSet);
begin
  if not Elimina then Abort;
end;

end.
