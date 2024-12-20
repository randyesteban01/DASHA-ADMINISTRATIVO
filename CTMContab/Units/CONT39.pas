unit CONT39;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, Grids, DBGrids, DB,
  IBCustomDataSet, IBQuery, DateUtils, IBUpdateSQL, ADODB,
  QuerySearchDlgADO, DBCtrls;

type
  TfrmConsDepositos = class(TForm)
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
    QDepositos: TADOQuery;
    dsDepositos: TDataSource;
    QDetalle: TADOQuery;
    dsDetalle: TDataSource;
    Memo1: TMemo;
    Search: TQrySearchDlgADO;
    Label4: TLabel;
    edConc: TEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    QFacturas: TADOQuery;
    dsFacturas: TDataSource;
    btAnula: TSpeedButton;
    btTransito: TSpeedButton;
    btPagados: TSpeedButton;
    Label3: TLabel;
    btBanco: TSpeedButton;
    edBanco: TEdit;
    tBanco: TEdit;
    ckDetalle: TCheckBox;
    GridCuentas: TDBGrid;
    btBuscaCta: TSpeedButton;
    btElimina: TSpeedButton;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    lbCR: TStaticText;
    lbDB: TStaticText;
    lbBAL: TStaticText;
    QDepositosBAN_NOMBRE: TIBStringField;
    QDepositosDEP_NUMERO: TIntegerField;
    QDepositosDEP_FECHA: TDateTimeField;
    QDepositosDEP_CONCEPTO1: TIBStringField;
    QDepositosDEP_CONCEPTO2: TIBStringField;
    QDepositosDEP_MONTO: TFloatField;
    QDepositosDEP_STATUS: TIBStringField;
    QDepositosDEP_DESCUENTO: TFloatField;
    QDepositosDEP_TIPO: TIBStringField;
    QDepositosUSU_NOMBRE: TIBStringField;
    QDepositosEMP_CODIGO: TIntegerField;
    QDepositosBAN_CODIGO: TIntegerField;
    QDepositosDEP_ANO: TIntegerField;
    QDepositosDEP_MES: TIntegerField;
    QDetalleBAN_CODIGO: TIntegerField;
    QDetalleCAT_CUENTA: TIBStringField;
    QDetalleCAT_NOMBRE: TIBStringField;
    QDetalleDEP_NUMERO: TIntegerField;
    QDetalleDET_MONTO: TFloatField;
    QDetalleDET_ORIGEN: TIBStringField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    QDetalleDEP_ANO: TIntegerField;
    QDetalleDEP_MES: TIntegerField;
    GriFacturas: TDBGrid;
    QFacturasBAN_CODIGO: TIntegerField;
    QFacturasDEP_ANO: TIntegerField;
    QFacturasDEP_MES: TIntegerField;
    QFacturasDEP_NUMERO: TIntegerField;
    QFacturasDET_SECUENCIA: TIntegerField;
    QFacturasEMP_CODIGO: TIntegerField;
    QFacturasFAC_FORMA: TIBStringField;
    QFacturasFAC_NUMERO: TIntegerField;
    QFacturasFAC_NUMEROSUP: TIBStringField;
    QFacturasFAC_PAGO: TFloatField;
    QFacturasFAC_SALDO: TFloatField;
    QFacturasTFA_CODIGO: TIntegerField;
    QFacturasFAC_FECHA: TDateTimeField;
    QFacturasFAC_DESCUENTO: TFloatField;
    QFacturasMOV_TIPO: TIBStringField;
    QFacturasMOV_CUOTA: TIntegerField;
    QFacturasDET_CUOTA: TIBStringField;
    QFacturasCuota: TIntegerField;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalemp_codigo: TIntegerField;
    dsSuc: TDataSource;
    Label14: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QDepositosSUC_CODIGO: TIntegerField;
    QDetalleSUC_CODIGO: TIntegerField;
    QSucursalalm_codigo: TIntegerField;
    Splitter1: TSplitter;
    Label12: TLabel;
    Label15: TLabel;
    edDesde: TEdit;
    edHasta: TEdit;
    edMonto1: TEdit;
    edMonto2: TEdit;
    tsCentroCostos: TTabSheet;
    GridCentro: TDBGrid;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    btnSubCentro: TSpeedButton;
    lbLocSuc: TLabel;
    edtSucLoc: TEdit;
    btLocalidad: TSpeedButton;
    TSucLoc: TEdit;
    rgTipoDebCre: TRadioGroup;
    Memo2: TMemo;
    QCentro: TADOQuery;
    QCentrocen_codigo: TIntegerField;
    QCentrocen_nombre: TStringField;
    QCentrodet_monto: TBCDField;
    QCentrodet_secuencia: TIntegerField;
    QCentroemp_codigo: TIntegerField;
    QCentrosub_referencia: TStringField;
    QCentrocen_referencia: TStringField;
    QCentrosub_secuencia: TIntegerField;
    QCentrodep_numero: TIntegerField;
    QCentroban_codigo: TIntegerField;
    QCentrosuc_codigo: TIntegerField;
    QCentrocat_cuenta: TStringField;
    dsCentro: TDataSource;
    QCentrodep_ano: TIntegerField;
    QCentrodep_mes: TIntegerField;
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure QDepositosAfterOpen(DataSet: TDataSet);
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
    procedure dsDepositosDataChange(Sender: TObject; Field: TField);
    procedure QFacturasCalcFields(DataSet: TDataSet);
    procedure QDepositosAfterScroll(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure QDetalleBeforeDelete(DataSet: TDataSet);
    procedure QDetalleAfterEdit(DataSet: TDataSet);
    procedure QDetalleAfterInsert(DataSet: TDataSet);
    procedure QCentroAfterDelete(DataSet: TDataSet);
    procedure QCentroAfterPost(DataSet: TDataSet);
    procedure QCentroBeforePost(DataSet: TDataSet);
    procedure QCentroNewRecord(DataSet: TDataSet);
    procedure GridCentroColEnter(Sender: TObject);
    procedure GridCentroEnter(Sender: TObject);
    procedure GridCentroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton4Click(Sender: TObject);
    procedure btnSubCentroClick(Sender: TObject);
    procedure QCentrocen_codigoChange(Sender: TField);
    procedure QCentrocen_referenciaChange(Sender: TField);
    procedure edtSucLocChange(Sender: TObject);
    procedure edtSucLocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btLocalidadClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rgTipoDebCreClick(Sender: TObject);
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
  frmConsDepositos: TfrmConsDepositos;

implementation

uses CONT15, RCONT18, SIGMA00, SIGMA01, SIGMA08;

{$R *.dfm}

procedure TfrmConsDepositos.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsDepositos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConsDepositos.FormPaint(Sender: TObject);
begin
  with frmConsDepositos do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmConsDepositos.FormCreate(Sender: TObject);
begin
  Memo1.Lines := QDepositos.SQL;
  Memo2.Lines := QDetalle.SQL;
  cbOrden.ItemIndex := 0;
  Fecha1.Date := StartOfTheMonth(Date);
  Fecha2.Date := EndOfTheMonth(Date);
end;

procedure TfrmConsDepositos.btRefreshClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  QDepositos.Close;
  QDetalle.Close;
  QDepositos.SQL.Clear;
  QDepositos.SQL := Memo1.Lines;
  case cbStatus.ItemIndex of
  1 : QDepositos.SQL.Add('and d.dep_tipo = '+#39+'SUP'+#39);
  2 : QDepositos.SQL.Add('and d.dep_tipo = '+#39+'CLI'+#39);
  3 : QDepositos.SQL.Add('and d.dep_tipo = '+#39+'OTR'+#39);
  end;
  
  if btAnula.Down then
    QDepositos.SQL.Add('and d.dep_status = '+#39+'ANU'+#39)
  else if btTransito.Down then
    QDepositos.SQL.Add('and d.dep_conciliado = '+#39+'N'+#39)
  else if btPagados.Down then
    QDepositos.SQL.Add('and d.dep_status = '+#39+'APL'+#39);

  if trim(edConc.Text) <> '' then
    QDepositos.SQL.Add('and d.dep_concepto1 like '+#39+trim(edConc.Text)+#39);

  if trim(edBanco.Text) <> '' then
    QDepositos.SQL.Add('and d.ban_codigo = '+edBanco.Text);

  if Trim(edCliente.Text) <> '' then
  begin
    QDepositos.SQL.Add('and d.cli_codigo = :cli');
    QDepositos.Parameters.ParamByName('cli').Value := Cliente;
  end;

  if Trim(edProveedor.Text) <> '' then
  begin
    QDepositos.SQL.Add('and d.sup_codigo = :sup');
    QDepositos.Parameters.ParamByName('sup').Value := Prov;
  end;

  if Trim(edUsuario.Text) <> '' then
  begin
    QDepositos.SQL.Add('and d.usu_codigo = :usu');
    QDepositos.Parameters.ParamByName('usu').Value := StrToInt(Trim(edUsuario.Text));
  end;

  if (trim(edDesde.Text) <> '') and (trim(edHasta.Text) <> '') then
    QDepositos.SQL.Add('and d.dep_numero between '+edDesde.Text+' and '+edHasta.Text);

  if (trim(edMonto1.Text) <> '') and (trim(edMonto2.Text) <> '') then
    QDepositos.SQL.Add('and d.dep_monto between '+edMonto1.Text+' and '+edMonto2.Text);

  IF Trim(edtSucLoc.Text)<>'' THEN
  QDepositos.SQL.Add('and d.cont_numeroSucursal = '+QuotedStr(edtSucLoc.Text));
  
  QDepositos.Parameters.ParamByName('emp_codigo').Value := dm.QEmpresasEMP_CODIGO.Value;
  QDepositos.Parameters.ParamByName('suc_codigo').Value := DBLookupComboBox2.KeyValue;
  QDepositos.Parameters.ParamByName('fec1').DataType := ftDate;
  QDepositos.Parameters.ParamByName('fec2').DataType := ftDate;
  QDepositos.Parameters.ParamByName('fec1').Value := Fecha1.Date;
  QDepositos.Parameters.ParamByName('fec2').Value := Fecha2.Date;
  case cbOrden.ItemIndex of
  0 : QDepositos.SQL.Add('order by d.ban_codigo, d.dep_ano, d.dep_mes, d.dep_numero');
  1 : QDepositos.SQL.Add('order by d.dep_fecha');
  2 : QDepositos.SQL.Add('order by d.dep_concepto1');
  end;
  QDepositos.Open;
  lbCantidad.Caption := IntToStr(QDepositos.REcordCount)+' Dep�sitoss';
  Screen.Cursor := crDefault;
  QCentro.Open;
end;

procedure TfrmConsDepositos.QDepositosAfterOpen(DataSet: TDataSet);
begin
  if not QFacturas.Active  then begin
  QDetalle.SQL.Clear;
  QDetalle.SQL.Add(Memo2.Lines.GetText);
  case rgTipoDebCre.ItemIndex of
  1:QDetalle.SQL.Add('AND DET_ORIGEN LIKE '+QuotedStr('%DEB%'));
  2:QDetalle.SQL.Add('AND DET_ORIGEN LIKE '+QuotedStr('%CRE%'));
  end;
  QDetalle.SQL.Add('ORDER BY DET_SECUENCIA');
  QDetalle.Open;
  end;
  if not QDepositos.Active then QFacturas.Open;
  if not QDepositos.Active   then QCentro.Open;
end;

procedure TfrmConsDepositos.edProveedorChange(Sender: TObject);
begin
  if Trim(edProveedor.Text) = '' then tProv.Text := '';
end;

procedure TfrmConsDepositos.edUsuarioChange(Sender: TObject);
begin
  if Trim(edUsuario.Text) = '' then tUsu.Text := '';
end;

procedure TfrmConsDepositos.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmConsDepositos.edClienteKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmConsDepositos.btProvClick(Sender: TObject);
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

procedure TfrmConsDepositos.edProveedorKeyDown(Sender: TObject;
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

procedure TfrmConsDepositos.btUsuClick(Sender: TObject);
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

procedure TfrmConsDepositos.edUsuarioKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmConsDepositos.edClienteChange(Sender: TObject);
begin
  if Trim(edCliente.Text) = '' then tCliente.Text := '';
end;

procedure TfrmConsDepositos.btClienteClick(Sender: TObject);
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

procedure TfrmConsDepositos.btBancoClick(Sender: TObject);
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

procedure TfrmConsDepositos.edBancoChange(Sender: TObject);
begin
  if Trim(edBanco.Text) = '' then tBanco.Text := '';
end;

procedure TfrmConsDepositos.edBancoKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmConsDepositos.BitBtn2Click(Sender: TObject);
begin
  Application.CreateForm(tRepListaDepositos, RepListaDepositos);
  RepListaDepositos.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+
                                     DateToStr(Fecha2.Date);

  case cbStatus.ItemIndex of
  1 : RepListaDepositos.QBancos.SQL.Add('and d.dep_tipo = '+#39+'SUP'+#39);
  2 : RepListaDepositos.QBancos.SQL.Add('and d.dep_tipo = '+#39+'CLI'+#39);
  3 : RepListaDepositos.QBancos.SQL.Add('and d.dep_tipo = '+#39+'OTR'+#39);
  end;
  if btAnula.Down then
    RepListaDepositos.QBancos.SQL.Add('and d.dep_status = '+#39+'ANU'+#39)
  else if btTransito.Down then
    RepListaDepositos.QBancos.SQL.Add('and d.dep_conciliado = '+#39+'N'+#39)
  else if btPagados.Down then
    RepListaDepositos.QBancos.SQL.Add('and d.dep_status = '+#39+'APL'+#39);

  if trim(edConc.Text) <> '' then
    RepListaDepositos.QBancos.SQL.Add('and d.dep_concepto1 like '+#39+trim(edConc.Text)+#39);

  if trim(edBanco.Text) <> '' then
    RepListaDepositos.QBancos.SQL.Add('and d.ban_codigo = '+edBanco.Text);

  if Trim(edCliente.Text) <> '' then
  begin
    RepListaDepositos.QBancos.SQL.Add('and d.cli_codigo = :cli');
    RepListaDepositos.QBancos.Parameters.ParamByName('cli').Value := Cliente;
  end;

  if Trim(edProveedor.Text) <> '' then
  begin
    RepListaDepositos.QBancos.SQL.Add('and d.sup_codigo = :sup');
    RepListaDepositos.QBancos.Parameters.ParamByName('sup').Value := Prov;
  end;

  if Trim(edUsuario.Text) <> '' then
  begin
    RepListaDepositos.QBancos.SQL.Add('and d.usu_codigo = :usu');
    RepListaDepositos.QBancos.Parameters.ParamByName('usu').Value := StrToInt(Trim(edUsuario.Text));
  end;

  if (trim(edDesde.Text) <> '') and (trim(edHasta.Text) <> '') then
    RepListaDepositos.QDepositos.SQL.Add('and d.dep_numero between '+edDesde.Text+' and '+edHasta.Text);

  if (trim(edMonto1.Text) <> '') and (trim(edMonto2.Text) <> '') then
    RepListaDepositos.QDepositos.SQL.Add('and d.dep_monto between '+edMonto1.Text+' and '+edMonto2.Text);
  
  RepListaDepositos.QBancos.SQL.Add('order by d.ban_codigo');

  RepListaDepositos.QBancos.Parameters.ParamByName('emp_codigo').Value := dm.QEmpresasEMP_CODIGO.Value;
  RepListaDepositos.QBancos.Parameters.ParamByName('suc_codigo').Value := DBLookupComboBox2.KeyValue;
  RepListaDepositos.QBancos.Parameters.ParamByName('fec1').DataType := ftDate;
  RepListaDepositos.QBancos.Parameters.ParamByName('fec2').DataType := ftDate;
  RepListaDepositos.QBancos.Parameters.ParamByName('fec1').Value := Fecha1.Date;
  RepListaDepositos.QBancos.Parameters.ParamByName('fec2').Value := Fecha2.Date;
  RepListaDepositos.QBancos.Open;

  RepListaDepositos.QDepositos.SQL := QDepositos.SQL;

  if Trim(edCliente.Text) <> '' then
    RepListaDepositos.QDepositos.Parameters.ParamByName('cli').Value := Cliente;
  if Trim(edProveedor.Text) <> '' then
    RepListaDepositos.QDepositos.Parameters.ParamByName('sup').Value := Prov;
  if Trim(edUsuario.Text) <> '' then
    RepListaDepositos.QDepositos.Parameters.ParamByName('usu').Value := StrToInt(Trim(edUsuario.Text));


  RepListaDepositos.QDepositos.SQL.Delete(RepListaDepositos.QDepositos.SQL.Count-1);
  RepListaDepositos.QDepositos.SQL.Add('and d.ban_codigo = :ban_codigo');

  RepListaDepositos.QDepositos.Parameters.ParamByName('fec1').Value := Fecha1.Date;
  RepListaDepositos.QDepositos.Parameters.ParamByName('fec2').Value := Fecha2.Date;
  RepListaDepositos.QDepositos.Open;
  if ckDetalle.Checked then
     RepListaDepositos.QDetalle.Open;
  case cbStatus.ItemIndex of
  0 : RepListaDepositos.lbOpcion.Caption := ' ';
  1 : RepListaDepositos.lbOpcion.Caption := 'CxP Proveedores';
  2 : RepListaDepositos.lbOpcion.Caption := 'CxC Clientes';
  3 : RepListaDepositos.lbOpcion.Caption := 'Otros';
  end;
  if btAnula.Down then
     RepListaDepositos.lbOpcion.Caption := RepListaDepositos.lbOpcion.Caption+' Anulados';
  if btTransito.Down then
     RepListaDepositos.lbOpcion.Caption := RepListaDepositos.lbOpcion.Caption+' En Transito';
  if btPagados.Down then
     RepListaDepositos.lbOpcion.Caption := RepListaDepositos.lbOpcion.Caption+' Pagados';
  RepListaDepositos.PrinterSetup;
  RepListaDepositos.Preview;
  RepListaDepositos.Destroy;
end;

procedure TfrmConsDepositos.GridCuentasColEnter(Sender: TObject);
begin
  if GridCuentas.SelectedIndex = 1 then
    GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1;
end;

procedure TfrmConsDepositos.GridCuentasEnter(Sender: TObject);
begin
  GridCuentas.SelectedIndex := 0;
end;

procedure TfrmConsDepositos.GridCuentasKeyDown(Sender: TObject;
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

procedure TfrmConsDepositos.btBuscaCtaClick(Sender: TObject);
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

procedure TfrmConsDepositos.btEliminaClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR LA CUENTA?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QDetalle.Delete
  end;
  GridCuentas.setfocus;
end;

procedure TfrmConsDepositos.QDetalleAfterPost(DataSet: TDataSet);
begin
  QDetalle.UpdateBatch;
  Totalizar;
end;

procedure TfrmConsDepositos.QDetalleAfterDelete(DataSet: TDataSet);
begin
  QDetalle.UpdateBatch;
  Totalizar;
end;

procedure TfrmConsDepositos.QDetalleNewRecord(DataSet: TDataSet);
begin
  QDetalleEMP_CODIGO.Value := DM.QEmpresasEMP_CODIGO.Value;
  QDetalleBAN_CODIGO.Value := QDepositosBAN_CODIGO.Value;
  QDetalleDEP_NUMERO.Value := QDepositosDEP_NUMERO.Value;
  QDetalleDEP_ANO.Value    := QDepositosDEP_ANO.Value;
  QDetalleDEP_MES.Value    := QDepositosDEP_MES.Value;
  QDetalleSUC_CODIGO.Value := QDepositosSUC_CODIGO.Value;
end;

procedure TfrmConsDepositos.QDetalleBeforePost(DataSet: TDataSet);
begin
  if QDetalle.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(det_secuencia),0) as maximo');
    dm.Query1.SQL.Add('from det_deposito');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ban_codigo = :ban');
    dm.Query1.SQL.Add('and dep_numero = :num');
    dm.Query1.SQL.Add('and dep_ano = :ano');
    dm.Query1.SQL.Add('and dep_mes = :mes');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('ban').Value := QDepositosBAN_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('num').Value := QDepositosDEP_NUMERO.Value;
    dm.Query1.Parameters.ParamByName('ano').Value := QDepositosDEP_ANO.Value;
    dm.Query1.Parameters.ParamByName('mes').Value := QDepositosDEP_MES.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := QDepositosSUC_CODIGO.Value;
    dm.Query1.Open;
    QDetalleDET_SECUENCIA.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  end;
end;

procedure TfrmConsDepositos.QDetalleCAT_CUENTAChange(Sender: TField);
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

procedure TfrmConsDepositos.Totalizar;
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

procedure TfrmConsDepositos.dsDepositosDataChange(Sender: TObject;
  Field: TField);
begin
  if QDepositosDEP_TIPO.Value = 'CLI' then
    GriFacturas.Columns[3].FieldName := 'FAC_NUMERO'
  else if QDepositosDEP_TIPO.Value = 'SUP' then
    GriFacturas.Columns[3].FieldName := 'FAC_NUMEROSUP';
  Totalizar;
end;

procedure TfrmConsDepositos.QFacturasCalcFields(DataSet: TDataSet);
begin
  if QFacturasDET_CUOTA.Value = 'True' then
    QFacturasCuota.Value := QFacturasMOV_CUOTA.Value;
end;

procedure TfrmConsDepositos.QDepositosAfterScroll(DataSet: TDataSet);
begin
  Totalizar;
end;

procedure TfrmConsDepositos.FormActivate(Sender: TObject);
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

procedure TfrmConsDepositos.QDetalleBeforeDelete(DataSet: TDataSet);
begin
  if not Elimina then Abort;
end;

procedure TfrmConsDepositos.QDetalleAfterEdit(DataSet: TDataSet);
begin
  if not Modifica then QDetalle.Cancel;
end;

procedure TfrmConsDepositos.QDetalleAfterInsert(DataSet: TDataSet);
begin
  if not Modifica then QDetalle.Cancel;
end;

procedure TfrmConsDepositos.QCentroAfterDelete(DataSet: TDataSet);
begin
QCentro.UpdateBatch;
end;

procedure TfrmConsDepositos.QCentroAfterPost(DataSet: TDataSet);
begin
QCentro.UpdateBatch;
end;

procedure TfrmConsDepositos.QCentroBeforePost(DataSet: TDataSet);
begin
  if QCentrocen_nombre.IsNull then QCentro.Cancel;
  if QCentro.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(det_secuencia),0) as maximo');
    dm.Query1.SQL.Add('from DepositoCentrosCosto');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ban_codigo = :ban');
    dm.Query1.SQL.Add('and dep_ano = :ano');
    dm.Query1.SQL.Add('and dep_mes = :mes');
    dm.Query1.SQL.Add('and dep_numero = :num');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('ban').Value := QDepositosBAN_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('num').Value := QDepositosDEP_NUMERO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := QDepositosSUC_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('ano').Value := QDepositosDEP_ANO.Value;
    dm.Query1.Parameters.ParamByName('mes').Value := QDepositosDEP_MES.Value;
    dm.Query1.Open;
    QCentrodet_secuencia.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  end;

end;

procedure TfrmConsDepositos.QCentroNewRecord(DataSet: TDataSet);
begin
  QCentrodep_numero.Value := QDepositosDEP_NUMERO.Value;
  QCentroemp_codigo.Value := dm.QEmpresasEMP_CODIGO.Value;
  QCentroban_codigo.Value := QDepositosBAN_CODIGO.Value;
  QCentrosuc_codigo.Value := QDepositosSUC_CODIGO.Value;
  QCentrodep_ano.Value := QDepositosDEP_ANO.Value;
  QCentrodep_mes.Value := QDepositosDEP_MES.Value;

end;

procedure TfrmConsDepositos.GridCentroColEnter(Sender: TObject);
begin
  if GridCentro.SelectedIndex = 1 then
    GridCentro.SelectedIndex := GridCentro.SelectedIndex + 1;

end;

procedure TfrmConsDepositos.GridCentroEnter(Sender: TObject);
begin
GridCentro.SelectedIndex := 0;
end;

procedure TfrmConsDepositos.GridCentroKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_insert then abort;
  if (ssCtrl in Shift) and (key = vk_delete) then abort;
  if key = vk_return then
  begin
   if GridCentro.SelectedIndex <> 2 then
      GridCentro.SelectedIndex := GridCentro.SelectedIndex + 1
   else
   begin
     GridCentro.SelectedIndex := 0;
     QCentro.Append;
   end;
  end;

end;

procedure TfrmConsDepositos.SpeedButton4Click(Sender: TObject);
var
  a : Integer;
begin
{  Search.Query.Clear;
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
    QCentrocen_referencia.Value := Search.ValueField;
  end;}
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select cat_maneja_centro from contcatalogo');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and cat_cuenta = :cta');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
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
    frmCentrosXCuenta.QCentro.First;
    frmCentrosXCuenta.QCentro.EnableControls;
    frmCentrosXCuenta.Release;
  end;

end;

procedure TfrmConsDepositos.btnSubCentroClick(Sender: TObject);
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

procedure TfrmConsDepositos.QCentrocen_codigoChange(Sender: TField);
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

procedure TfrmConsDepositos.QCentrocen_referenciaChange(Sender: TField);
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

procedure TfrmConsDepositos.edtSucLocChange(Sender: TObject);
begin
if Trim(edtSucLoc.Text) = '' then TSucLoc.Text := '';
btRefreshClick(Sender);
end;

procedure TfrmConsDepositos.edtSucLocKeyDown(Sender: TObject;
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

procedure TfrmConsDepositos.btLocalidadClick(Sender: TObject);
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

procedure TfrmConsDepositos.FormShow(Sender: TObject);
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

procedure TfrmConsDepositos.rgTipoDebCreClick(Sender: TObject);
begin
btRefreshClick(Sender);
end;

procedure TfrmConsDepositos.SpeedButton1Click(Sender: TObject);
begin
if MessageDlg('DESEAS ELIMINAR EL CENTRO DE COSTO'+char(13)+
QCentrocen_nombre.Text+char(13)+
'POR UN MONTO DE '+FormatCurr('#,0.00',QCentrodet_monto.Value)+'?',mtConfirmation,[mbYes,mbNo],0)=mrYes THEN BEGIN
WITH DM.adoMultiUso DO BEGIN
Close;
SQL.Clear;
SQL.Add('DELETE DepositoCentrosCosto');
SQL.Add('where emp_codigo = :emp and suc_codigo = :suc and ban_codigo = :ban');
SQL.Add('and dep_numero =  :che and det_secuencia = :sec');
Parameters.ParamByName('emp').DataType := ftInteger;
Parameters.ParamByName('suc').DataType := ftInteger;
Parameters.ParamByName('ban').DataType := ftInteger;
Parameters.ParamByName('dep').DataType := ftInteger;
Parameters.ParamByName('sec').DataType := ftInteger;
Parameters.ParamByName('emp').Value := QCentroemp_codigo.Value;
Parameters.ParamByName('suc').Value := QCentrosuc_codigo.Value;
Parameters.ParamByName('ban').Value := QCentroban_codigo.Value;
Parameters.ParamByName('dep').Value := QCentrodep_numero.Value;
Parameters.ParamByName('sec').Value := QCentrodet_secuencia.Value;
ExecSQL;
QCentro.Close;
QCentro.Open;
end;
end;

end;

end.
