unit CONT33;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, Grids, DBGrids, DB,
  IBCustomDataSet, IBQuery, DateUtils, IBUpdateSQL, ADODB,
  QuerySearchDlgADO, DBCtrls;

type
  TfrmConsSolicitud = class(TForm)
    Panel1: TPanel;
    btClose: TBitBtn;
    BitBtn2: TBitBtn;
    btRefresh: TBitBtn;
    Panel2: TPanel;
    Label6: TLabel;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    cbStatus: TRadioGroup;
    Label7: TLabel;
    btUsu: TSpeedButton;
    tUsu: TEdit;
    edUsuario: TEdit;
    Label2: TLabel;
    btCliente: TSpeedButton;
    edCliente: TEdit;
    tCliente: TEdit;
    Label5: TLabel;
    cbOrden: TComboBox;
    Label1: TLabel;
    btProv: TSpeedButton;
    edProveedor: TEdit;
    tProv: TEdit;
    lbCantidad: TLabel;
    DBGrid1: TDBGrid;
    QSolicitud: TADOQuery;
    dsSolicitud: TDataSource;
    QDetalle: TADOQuery;
    dsDetalle: TDataSource;
    Memo1: TMemo;
    Search: TQrySearchDlgADO;
    Label4: TLabel;
    edConc: TEdit;
    Label8: TLabel;
    edBenef: TEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid3: TDBGrid;
    QFacturas: TADOQuery;
    QFacturasFAC_NUMERO: TIBStringField;
    QFacturasFAC_FECHA: TDateTimeField;
    QFacturasFAC_PAGO: TFloatField;
    QFacturasFAC_VENCE: TDateTimeField;
    dsFacturas: TDataSource;
    Label3: TLabel;
    btBanco: TSpeedButton;
    edBanco: TEdit;
    tBanco: TEdit;
    GridCuentas: TDBGrid;
    btBuscaCta: TSpeedButton;
    btElimina: TSpeedButton;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    lbCR: TStaticText;
    lbDB: TStaticText;
    lbBAL: TStaticText;
    QSolicitudBAN_NOMBRE: TIBStringField;
    QSolicitudSOL_NUMERO: TIntegerField;
    QSolicitudSOL_FECHA: TDateTimeField;
    QSolicitudSOL_CONCEPTO1: TIBStringField;
    QSolicitudSOL_CONCEPTO2: TIBStringField;
    QSolicitudSOL_BENEF: TIBStringField;
    QSolicitudSOL_MONTO: TFloatField;
    QSolicitudSOL_STATUS: TIBStringField;
    QSolicitudSOL_TIPO: TIBStringField;
    QSolicitudUSU_NOMBRE: TIBStringField;
    QSolicitudEMP_CODIGO: TIntegerField;
    QSolicitudBAN_CODIGO: TIntegerField;
    QDetalleCAT_CUENTA: TIBStringField;
    QDetalleCAT_NOMBRE: TIBStringField;
    QDetalleSOL_NUMERO: TIntegerField;
    QDetalleDET_MONTO: TFloatField;
    QDetalleDET_ORIGEN: TIBStringField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    QSolicitudSOL_CHEQUE: TIntegerField;
    QSolicitudSOL_CONCEPTO3: TStringField;
    TabSheet3: TTabSheet;
    QSolicitudSUC_CODIGO: TIntegerField;
    QDetalleSUC_CODIGO: TIntegerField;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    Label14: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursalemp_codigo: TIntegerField;
    QSucursalalm_codigo: TIntegerField;
    QSolicitudSOL_MONTO_BANCO: TBCDField;
    TabSheet4: TTabSheet;
    QRetenciones: TADOQuery;
    QRetencionesemp_codigo: TIntegerField;
    QRetencionessol_numero: TIntegerField;
    QRetencionesret_codigo: TIntegerField;
    QRetencionesdet_nombre: TStringField;
    QRetencionesdet_porciento: TBCDField;
    QRetencionesdet_monto: TBCDField;
    QRetencionesdet_secuencia: TIntegerField;
    QRetencionesdet_cuenta: TStringField;
    QRetencionessuc_codigo: TIntegerField;
    dsRet: TDataSource;
    Panel3: TPanel;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    GridRet: TDBGrid;
    Splitter1: TSplitter;
    Label12: TLabel;
    btEmpleado: TSpeedButton;
    edEmpleado: TEdit;
    tEmp: TEdit;
    dsCentro: TDataSource;
    QCentro: TADOQuery;
    QCentrocen_codigo: TIntegerField;
    QCentrocen_nombre: TStringField;
    QCentrodet_monto: TBCDField;
    QCentrodet_secuencia: TIntegerField;
    QCentroemp_codigo: TIntegerField;
    QCentrosub_referencia: TStringField;
    QCentrocen_referencia: TStringField;
    QCentrosub_secuencia: TIntegerField;
    QCentrosol_numero: TIntegerField;
    QCentrosuc_codigo: TIntegerField;
    QCentrocat_cuenta: TStringField;
    GridCentro: TDBGrid;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    btnSubCentro: TSpeedButton;
    lbLocSuc: TLabel;
    edtSucLoc: TEdit;
    btLocalidad: TSpeedButton;
    TSucLoc: TEdit;
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure QSolicitudAfterOpen(DataSet: TDataSet);
    procedure edProveedorChange(Sender: TObject);
    procedure edUsuarioChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btProvClick(Sender: TObject);
    procedure edProveedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btUsuClick(Sender: TObject);
    procedure edUsuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edClienteChange(Sender: TObject);
    procedure btClienteClick(Sender: TObject);
    procedure btBancoClick(Sender: TObject);
    procedure edBancoChange(Sender: TObject);
    procedure edBancoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure GridCuentasColEnter(Sender: TObject);
    procedure GridCuentasEnter(Sender: TObject);
    procedure GridCuentasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btBuscaCtaClick(Sender: TObject);
    procedure btEliminaClick(Sender: TObject);
    procedure QDetalleAfterPost(DataSet: TDataSet);
    procedure QDetalleAfterDelete(DataSet: TDataSet);
    procedure QDetalleNewRecord(DataSet: TDataSet);
    procedure QDetalleBeforePost(DataSet: TDataSet);
    procedure QDetalleCAT_CUENTAChange(Sender: TField);
    procedure dsSolicitudDataChange(Sender: TObject; Field: TField);
    procedure QDetalleBeforeEdit(DataSet: TDataSet);
    procedure QDetalleBeforeInsert(DataSet: TDataSet);
    procedure QDetalleBeforeDelete(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure GridRetColEnter(Sender: TObject);
    procedure GridRetEnter(Sender: TObject);
    procedure GridRetKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QRetencionesAfterDelete(DataSet: TDataSet);
    procedure QRetencionesAfterPost(DataSet: TDataSet);
    procedure QRetencionesNewRecord(DataSet: TDataSet);
    procedure QRetencionesret_codigoChange(Sender: TField);
    procedure QRetencionesBeforePost(DataSet: TDataSet);
    procedure GridCentroColEnter(Sender: TObject);
    procedure GridCentroEnter(Sender: TObject);
    procedure GridCentroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure QCentrocen_codigoChange(Sender: TField);
    procedure QCentroAfterDelete(DataSet: TDataSet);
    procedure QCentroAfterPost(DataSet: TDataSet);
    procedure QCentroNewRecord(DataSet: TDataSet);
    procedure QCentroBeforePost(DataSet: TDataSet);
    procedure QDetalleAfterEdit(DataSet: TDataSet);
    procedure QDetalleAfterInsert(DataSet: TDataSet);
    procedure btEmpleadoClick(Sender: TObject);
    procedure edEmpleadoChange(Sender: TObject);
    procedure edEmpleadoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSubCentroClick(Sender: TObject);
    procedure QCentrocen_referenciaChange(Sender: TField);
    procedure edtSucLocChange(Sender: TObject);
    procedure edtSucLocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btLocalidadClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Cliente, Prov : Integer;
    Debitos, Creditos : Double;
    Modifica, Elimina : Boolean;
    Procedure Totalizar;
  end;

var
  frmConsSolicitud: TfrmConsSolicitud;

implementation

uses RCONT16, CONT36, SIGMA00, SIGMA01;

{$R *.dfm}

procedure TfrmConsSolicitud.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsSolicitud.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConsSolicitud.FormPaint(Sender: TObject);
begin
  with frmConsSolicitud do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmConsSolicitud.FormCreate(Sender: TObject);
begin
  Memo1.Lines := QSolicitud.SQL;
  cbOrden.ItemIndex := 0;
  Fecha1.Date := StartOfTheMonth(Date);
  Fecha2.Date := EndOfTheMonth(Date);
end;

procedure TfrmConsSolicitud.btRefreshClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  QSolicitud.Close;
  QSolicitud.SQL.Clear;
  QSolicitud.SQL := Memo1.Lines;
  case cbStatus.ItemIndex of
  1 : QSolicitud.SQL.Add('and s.sol_status = '+#39+'APR'+#39);
  2 : QSolicitud.SQL.Add('and s.sol_status = '+#39+'EMI'+#39);
  3 : QSolicitud.SQL.Add('and s.sol_status = '+#39+'ANU'+#39);
  end;
  if trim(edBenef.Text) <> '' then
    QSolicitud.SQL.Add('and s.sol_benef like '+#39+trim(edBenef.Text)+#39);

  if trim(edConc.Text) <> '' then
    QSolicitud.SQL.Add('and s.sol_concepto1 like '+#39+trim(edConc.Text)+#39);

  if Trim(edBanco.Text) <> '' then
    QSolicitud.SQL.Add('and s.ban_codigo = '+edBanco.text);

  if Trim(edCliente.Text) <> '' then
    QSolicitud.SQL.Add('and s.cli_codigo = '+edCliente.Text);

  if Trim(edProveedor.Text) <> '' then
    QSolicitud.SQL.Add('and s.sup_codigo = '+edProveedor.Text);

  if Trim(edUsuario.Text) <> '' then
    QSolicitud.SQL.Add('and s.usu_codigo = '+edUsuario.Text);

  if Trim(edEmpleado.Text) <> '' then
    QSolicitud.SQL.Add('and s.emp_numero = '+edEmpleado.Text);

    IF Trim(edtSucLoc.Text)<>'' THEN
  QSolicitud.SQL.Add('and s.cont_numeroSucursal = '+QuotedStr(edtSucLoc.Text));

  QSolicitud.Parameters.ParamByName('fec1').Value := Fecha1.Date;
  QSolicitud.Parameters.ParamByName('fec2').Value := Fecha2.Date;
  case cbOrden.ItemIndex of
  0 : QSolicitud.SQL.Add('order by s.sol_numero');
  1 : QSolicitud.SQL.Add('order by s.sol_fecha');
  2 : QSolicitud.SQL.Add('order by s.sol_concepto1');
  3 : QSolicitud.SQL.Add('order by s.sol_benef');
  end;
  QSolicitud.Open;
  lbCantidad.Caption := IntToStr(QSolicitud.REcordCount)+' Solicitudes';
  Screen.Cursor := crDefault;
end;

procedure TfrmConsSolicitud.QSolicitudAfterOpen(DataSet: TDataSet);
begin
  if not QDetalle.Active  then QDetalle.Open;
  if not QFacturas.Active then QFacturas.Open;
  if not QCentro.Active   then QCentro.Open;
  if not QRetenciones.Active then QRetenciones.Open;
end;

procedure TfrmConsSolicitud.edProveedorChange(Sender: TObject);
begin
  if Trim(edProveedor.Text) = '' then tProv.Text := '';
end;

procedure TfrmConsSolicitud.edUsuarioChange(Sender: TObject);
begin
  if Trim(edUsuario.Text) = '' then tUsu.Text := '';
end;

procedure TfrmConsSolicitud.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    if activecontrol.ClassType <> tdbGrid then
    begin
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    end;
  end;
end;

procedure TfrmConsSolicitud.edClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edCliente.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select cli_nombre, cli_codigo from clientes');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
      begin
        dm.Query1.SQL.Add('and cli_codigo = :cod');
        dm.Query1.Parameters.ParamByName('cod').Value  := StrToInt(edCliente.Text);
      end
      else
      begin
        dm.Query1.SQL.Add('and cli_referencia = :cod');
        dm.Query1.Parameters.ParamByName('cod').Value  := edCliente.Text;
      end;
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Open;
      tCliente.Text := dm.Query1.FieldByName('cli_nombre').AsString;
      Cliente := dm.Query1.FieldByName('cli_codigo').AsInteger;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsSolicitud.btProvClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select sup_nombre, sup_codigo');
  Search.Query.Add('from proveedores');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Title := 'Proveedores';
  Search.ResultField := 'sup_codigo';
  if Search.execute then
  begin
    edProveedor.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select sup_nombre, sup_codigo from proveedores');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and sup_codigo = :cod');
    dm.Query1.Parameters.ParamByName('cod').Value  := StrToInt(edProveedor.Text);
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Open;
    tProv.Text := dm.Query1.FieldByName('sup_nombre').AsString;
    Prov := dm.Query1.FieldByName('sup_codigo').AsInteger;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsSolicitud.edProveedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edProveedor.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select sup_nombre, sup_codigo from proveedores');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and sup_codigo = :cod');
      dm.Query1.Parameters.ParamByName('cod').Value  := StrToInt(edProveedor.Text);
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Open;
      tProv.Text := dm.Query1.FieldByName('sup_nombre').AsString;
      Prov := dm.Query1.FieldByName('sup_codigo').AsInteger;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsSolicitud.btUsuClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select usu_nombre, usu_codigo');
  Search.Query.Add('from usuarios');
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Title := 'Usuarios';
  Search.ResultField := 'usu_codigo';
  if Search.execute then
  begin
    edUsuario.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select usu_nombre from usuarios');
    dm.Query1.SQL.Add('where usu_codigo = :cod');
    dm.Query1.Parameters.ParamByName('cod').Value  := StrToInt(edUsuario.Text);
    dm.Query1.Open;
    tUsu.Text := dm.Query1.FieldByName('usu_nombre').AsString;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsSolicitud.edUsuarioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edUsuario.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select usu_nombre from usuarios');
      dm.Query1.SQL.Add('where usu_codigo = :cod');
      dm.Query1.Parameters.ParamByName('cod').Value  := StrToInt(edUsuario.Text);
      dm.Query1.Open;
      tUsu.Text := dm.Query1.FieldByName('usu_nombre').AsString;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsSolicitud.edClienteChange(Sender: TObject);
begin
  if Trim(edCliente.Text) = '' then tCliente.Text := '';
end;

procedure TfrmConsSolicitud.btClienteClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select cli_nombre, cli_referencia, cli_codigo');
  Search.Query.Add('from clientes');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Referencia');
  Search.AliasFields.Add('C�digo');
  Search.Title := 'Clientes';
  if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
    Search.ResultField := 'cli_codigo'
  else
    Search.ResultField := 'cli_referencia';
  if Search.execute then
  begin
    edCliente.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cli_nombre, cli_codigo from clientes');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
    begin
      dm.Query1.SQL.Add('and cli_codigo = :cod');
      dm.Query1.Parameters.ParamByName('cod').Value  := StrToInt(edCliente.Text);
    end
    else
    begin
      dm.Query1.SQL.Add('and cli_referencia = :cod');
      dm.Query1.Parameters.ParamByName('cod').Value  := edCliente.Text;
    end;
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Open;
    tCliente.Text := dm.Query1.FieldByName('cli_nombre').AsString;
    Cliente := dm.Query1.FieldByName('cli_codigo').AsInteger;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsSolicitud.btBancoClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select ban_nombre, ban_codigo');
  Search.Query.Add('from bancos');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.Query.Add('and suc_codigo = '+IntToStr(DBLookupComboBox2.KeyValue));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Title := 'Bancos';
  Search.ResultField := 'ban_codigo';
  if Search.execute then
  begin
    edBanco.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select ban_nombre, ban_codigo from bancos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ban_codigo = :cod');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('cod').Value := StrToInt(edBanco.Text);
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    dm.Query1.Open;
    tBanco.Text := dm.Query1.FieldByName('ban_nombre').AsString;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsSolicitud.edBancoChange(Sender: TObject);
begin
  if Trim(edBanco.Text) = '' then tBanco.Text := '';
end;

procedure TfrmConsSolicitud.edBancoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edBanco.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select ban_nombre, ban_codigo from bancos');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and ban_codigo = :cod');
      dm.Query1.SQL.Add('and suc_codigo = :suc');
      dm.Query1.Parameters.ParamByName('cod').Value := StrToInt(edBanco.Text);
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
      dm.Query1.Open;
      tBanco.Text := dm.Query1.FieldByName('ban_nombre').AsString;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsSolicitud.BitBtn2Click(Sender: TObject);
begin
  Application.CreateForm(tRepListaSolicitudes, RepListaSolicitudes);
  RepListaSolicitudes.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+
                                     DateToStr(Fecha2.Date);
  RepListaSolicitudes.QSolicitud.SQL := QSolicitud.SQL;
  RepListaSolicitudes.QSolicitud.Parameters.ParamByName('emp_codigo').Value := dm.QEmpresasEMP_CODIGO.Value;
  RepListaSolicitudes.QSolicitud.Parameters.ParamByName('suc_codigo').Value := DBLookupComboBox2.KeyValue;
  RepListaSolicitudes.QSolicitud.Parameters.ParamByName('fec1').Value := Fecha1.Date;
  RepListaSolicitudes.QSolicitud.Parameters.ParamByName('fec2').Value := Fecha2.Date;
  RepListaSolicitudes.QSolicitud.Open;
  RepListaSolicitudes.PrinterSetup;
  RepListaSolicitudes.Preview;
  RepListaSolicitudes.Destroy;
end;

procedure TfrmConsSolicitud.GridCuentasColEnter(Sender: TObject);
begin
  if GridCuentas.SelectedIndex = 1 then
    GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1;
end;

procedure TfrmConsSolicitud.GridCuentasEnter(Sender: TObject);
begin
  GridCuentas.SelectedIndex := 0;
end;

procedure TfrmConsSolicitud.GridCuentasKeyDown(Sender: TObject;
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

procedure TfrmConsSolicitud.btBuscaCtaClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
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

procedure TfrmConsSolicitud.btEliminaClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR LA CUENTA?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QDetalle.Delete
  end;
  GridCuentas.setfocus;
end;

procedure TfrmConsSolicitud.QDetalleAfterPost(DataSet: TDataSet);
begin
  QDetalle.UpdateBatch;
  Totalizar;
end;

procedure TfrmConsSolicitud.QDetalleAfterDelete(DataSet: TDataSet);
begin
  QDetalle.UpdateBatch;
  Totalizar;
end;

procedure TfrmConsSolicitud.QDetalleNewRecord(DataSet: TDataSet);
begin
  QDetalleEMP_CODIGO.Value := DM.QEmpresasEMP_CODIGO.Value;
  QDetalleSOL_NUMERO.Value := QSolicitudSOL_NUMERO.Value;
  QDetalleSUC_CODIGO.Value := QSolicitudSUC_CODIGO.Value;
end;

procedure TfrmConsSolicitud.QDetalleBeforePost(DataSet: TDataSet);
begin
  if QDetalle.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(det_secuencia),0) as maximo');
    dm.Query1.SQL.Add('from det_solicitud');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and che_numero = :num');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('num').Value := QSolicitudSOL_NUMERO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := QSolicitudSUC_CODIGO.Value;
    dm.Query1.Open;
    QDetalleDET_SECUENCIA.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  end;
end;

procedure TfrmConsSolicitud.QDetalleCAT_CUENTAChange(Sender: TField);
begin
  if not QDetalleCAT_CUENTA.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre, cat_origen, cat_movimiento from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
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

procedure TfrmConsSolicitud.Totalizar;
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

procedure TfrmConsSolicitud.dsSolicitudDataChange(Sender: TObject;
  Field: TField);
begin
  Totalizar;
end;

procedure TfrmConsSolicitud.QDetalleBeforeEdit(DataSet: TDataSet);
begin
  if QSolicitudSOL_STATUS.Value = 'APR' then
  begin
    MessageDlg('ESTA SOLICITUD ESTA APROBADA Y NO PUEDE MODIFICARSE',mtError,[mbok],0);
    abort;
  end;
end;

procedure TfrmConsSolicitud.QDetalleBeforeInsert(DataSet: TDataSet);
begin
  if QSolicitudSOL_STATUS.Value = 'APR' then
  begin
    MessageDlg('ESTA SOLICITUD ESTA APROBADA Y NO PUEDE MODIFICARSE',mtError,[mbok],0);
    abort;
  end;
end;

procedure TfrmConsSolicitud.QDetalleBeforeDelete(DataSet: TDataSet);
begin
  if not Elimina then Abort;
  if QSolicitudSOL_STATUS.Value = 'APR' then
  begin
    MessageDlg('ESTA SOLICITUD ESTA APROBADA Y NO PUEDE MODIFICARSE',mtError,[mbok],0);
    abort;
  end;
end;

procedure TfrmConsSolicitud.FormActivate(Sender: TObject);
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

procedure TfrmConsSolicitud.SpeedButton5Click(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR ESTA RETENCION?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QRetenciones.Delete
  end;
  GridRet.setfocus;
end;

procedure TfrmConsSolicitud.SpeedButton6Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select ret_nombre, ret_codigo');
  Search.Query.Add('from retenciones');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.AliasFields.Add('Descripci�n');
  Search.AliasFields.Add('Cuenta');
  Search.ResultField := 'ret_codigo';
  Search.Title := 'Retenciones';
  if Search.execute then
  begin
    QRetenciones.Edit;
    QRetencionesret_codigo.Value := StrToInt(Search.ValueField);
  end;
end;

procedure TfrmConsSolicitud.GridRetColEnter(Sender: TObject);
begin
  if GridRet.SelectedIndex = 1 then
    GridRet.SelectedIndex := GridRet.SelectedIndex + 1;
end;

procedure TfrmConsSolicitud.GridRetEnter(Sender: TObject);
begin
  GridRet.SelectedIndex := 0;
end;

procedure TfrmConsSolicitud.GridRetKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmConsSolicitud.QRetencionesAfterDelete(DataSet: TDataSet);
begin
  QRetenciones.UpdateBatch;
end;

procedure TfrmConsSolicitud.QRetencionesAfterPost(DataSet: TDataSet);
begin
  QRetenciones.UpdateBatch;
end;

procedure TfrmConsSolicitud.QRetencionesNewRecord(DataSet: TDataSet);
begin
  QRetencionessol_numero.Value := QSolicitudSOL_NUMERO.Value;
  QRetencionesemp_codigo.Value := dm.QEmpresasEMP_CODIGO.Value;
  QRetencionessuc_codigo.Value := QSolicitudSUC_CODIGO.Value;
end;

procedure TfrmConsSolicitud.QRetencionesret_codigoChange(Sender: TField);
begin
  if not QRetencionesret_codigo.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select ret_nombre, ret_porciento, cat_cuenta from retenciones');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ret_codigo = :ret');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
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
      if dm.Query1.FieldByName('ret_porciento').AsFloat > 0 then
        QRetencionesdet_monto.Value := (QSolicitudSOL_MONTO.Value * dm.Query1.FieldByName('ret_porciento').AsFloat)/100;

      GridRet.SelectedIndex := 2;
    end;
  end;
end;

procedure TfrmConsSolicitud.QRetencionesBeforePost(DataSet: TDataSet);
begin
  if QRetencionesdet_nombre.IsNull then QRetenciones.Cancel;
  if QRetenciones.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(det_secuencia),0) as maximo');
    dm.Query1.SQL.Add('from solicitudretencion');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and sol_numero = :num');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('num').Value := QSolicitudSOL_NUMERO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := QSolicitudSUC_CODIGO.Value;
    dm.Query1.Open;
    QRetencionesdet_secuencia.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  end;
end;

procedure TfrmConsSolicitud.GridCentroColEnter(Sender: TObject);
begin
  if GridCentro.SelectedIndex = 1 then
    GridCentro.SelectedIndex := GridCentro.SelectedIndex + 1;
end;

procedure TfrmConsSolicitud.GridCentroEnter(Sender: TObject);
begin
  GridCentro.SelectedIndex := 0;
end;

procedure TfrmConsSolicitud.GridCentroKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_insert then abort;
  if (ssCtrl in Shift) and (key = vk_delete) then abort;
  if key = vk_return then
     if GridCentro.SelectedIndex <> 2 then
        GridCentro.SelectedIndex := GridCentro.SelectedIndex + 1
     else
     begin
       GridCentro.SelectedIndex := 0;
       QCentro.Append;
     end;
end;

procedure TfrmConsSolicitud.SpeedButton3Click(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR ESTE CENTRO?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QCentro.Delete
  end;
  GridCentro.setfocus;
end;

procedure TfrmConsSolicitud.SpeedButton4Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select cen_nombre, cen_codigo');
  Search.Query.Add('from centrocostos');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.AliasFields.Add('Descripci�n');
  Search.AliasFields.Add('Cuenta');
  Search.ResultField := 'cen_codigo';
  Search.Title := 'Centros de Costo';
  if Search.execute then
  begin
    QCentro.Edit;
    QCentrocen_codigo.Value := StrToInt(Search.ValueField);
  end;
end;

procedure TfrmConsSolicitud.QCentrocen_codigoChange(Sender: TField);
begin
  if not QCentrocen_codigo.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cen_nombre from centrocostos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cen_codigo = :cen');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cen').Value  := QCentrocen_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
    begin
      MessageDlg('ESTE CENTRO DE COSTO NO EXISTE',mtError,[mbok],0);
      QCentrocen_codigo.Clear;
      Abort;
    end
    else if dm.Query1.RecordCount > 0 then
    begin
      QCentro.Edit;
      QCentrocen_nombre.Value := dm.Query1.FieldByName('cen_nombre').AsString;
      GridCentro.SelectedIndex := 2;
    end;
  end;
end;

procedure TfrmConsSolicitud.QCentroAfterDelete(DataSet: TDataSet);
begin
  QCentro.UpdateBatch;
end;

procedure TfrmConsSolicitud.QCentroAfterPost(DataSet: TDataSet);
begin
  QCentro.UpdateBatch;
end;

procedure TfrmConsSolicitud.QCentroNewRecord(DataSet: TDataSet);
begin
  QCentrosol_numero.Value := QSolicitudSOL_NUMERO.Value;
  QCentroemp_codigo.Value := dm.QEmpresasEMP_CODIGO.Value;
  QCentrosuc_codigo.Value := QSolicitudSUC_CODIGO.Value;
  QCentrocat_cuenta.Value := '';
end;

procedure TfrmConsSolicitud.QCentroBeforePost(DataSet: TDataSet);
begin
  if QCentrocen_nombre.IsNull then QCentro.Cancel;
  if QCentro.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(det_secuencia),0) as maximo');
    dm.Query1.SQL.Add('from SolicitudCentroCostos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and sol_numero = :num');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('num').Value := QSolicitudSOL_NUMERO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := QSolicitudSUC_CODIGO.Value;
    dm.Query1.Open;
    QCentrodet_secuencia.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  end;
end;

procedure TfrmConsSolicitud.QDetalleAfterEdit(DataSet: TDataSet);
begin
  if not Modifica then QDetalle.Cancel;
end;

procedure TfrmConsSolicitud.QDetalleAfterInsert(DataSet: TDataSet);
begin
  if not Modifica then QDetalle.Cancel;
end;

procedure TfrmConsSolicitud.btEmpleadoClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select emp_nombres, emp_apellido_paterno, emp_cedula, emp_numero');
  Search.Query.Add('from empleados');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.Query.Add('and emp_status = '+QuotedStr('ACT'));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Apellido');
  Search.AliasFields.Add('C�dula');
  Search.AliasFields.Add('C�digo');
  Search.ResultField := 'emp_numero';
  Search.Title := 'Empleados';
  if Search.execute then
  begin
    edEmpleado.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select emp_nombres, emp_apellido_paterno, cat_cuenta');
    dm.Query1.SQL.Add('from empleados');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and emp_numero = :num');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('num').Value := StrToInt(edEmpleado.Text);
    dm.Query1.Open;
    tEmp.Text := dm.Query1.FieldByName('emp_nombres').AsString + ' ' +dm.Query1.FieldByName('emp_apellido_paterno').AsString;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsSolicitud.edEmpleadoChange(Sender: TObject);
begin
  if Trim(edEmpleado.Text) = '' then tEmp.Text := '';
end;

procedure TfrmConsSolicitud.edEmpleadoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edEmpleado.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select emp_nombres, emp_apellido_paterno, cat_cuenta');
      dm.Query1.SQL.Add('from empleados');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and emp_numero = :num');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('num').Value := StrToInt(edEmpleado.Text);
      dm.Query1.Open;
      tEmp.Text := dm.Query1.FieldByName('emp_nombres').AsString + ' ' +dm.Query1.FieldByName('emp_apellido_paterno').AsString;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsSolicitud.btnSubCentroClick(Sender: TObject);
begin
Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select sub_nombre, sub_referencia');
  Search.Query.Add('from CentroCostos_Hijos');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
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

procedure TfrmConsSolicitud.QCentrocen_referenciaChange(Sender: TField);
begin
if not QCentrocen_referencia.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cen_nombre, cen_codigo from CentroCostos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cen_referencia = :ref');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('ref').Value := QCentrocen_referencia.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      QCentrocen_nombre.Value := dm.Query1.FieldByName('cen_nombre').AsString;
      QCentrocen_codigo.Value := dm.Query1.FieldByName('cen_codigo').AsInteger;
    end;
  end;

end;

procedure TfrmConsSolicitud.edtSucLocChange(Sender: TObject);
begin
if Trim(edtSucLoc.Text) = '' then TSucLoc.Text := '';
btRefreshClick(Sender);
end;

procedure TfrmConsSolicitud.edtSucLocKeyDown(Sender: TObject;
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

procedure TfrmConsSolicitud.btLocalidadClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select suc_nombre, cont_numeroSucursal from sucursales');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
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

procedure TfrmConsSolicitud.FormShow(Sender: TObject);
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

procedure TfrmConsSolicitud.SpeedButton1Click(Sender: TObject);
begin
if MessageDlg('DESEAS ELIMINAR EL CENTRO DE COSTO'+char(13)+
QCentrocen_nombre.Text+char(13)+
'POR UN MONTO DE '+FormatCurr('#,0.00',QCentrodet_monto.Value)+'?',mtConfirmation,[mbYes,mbNo],0)=mrYes THEN BEGIN
WITH DM.adoMultiUso DO BEGIN
Close;
SQL.Clear;
SQL.Add('DELETE SolicitudCentroCostos');
SQL.Add('where emp_codigo = :emp and suc_codigo = :suc ');
SQL.Add('and sol_numero =  :che and det_secuencia = :sec');
Parameters.ParamByName('emp').DataType := ftInteger;
Parameters.ParamByName('suc').DataType := ftInteger;
Parameters.ParamByName('sol').DataType := ftInteger;
Parameters.ParamByName('sec').DataType := ftInteger;
Parameters.ParamByName('emp').Value := QCentroemp_codigo.Value;
Parameters.ParamByName('suc').Value := QCentrosuc_codigo.Value;
Parameters.ParamByName('sol').Value := QCentrosol_numero.Value;
Parameters.ParamByName('sec').Value := QCentrodet_secuencia.Value;
ExecSQL;
QCentro.Close;
QCentro.Open;
end;
end;

end;

end.
