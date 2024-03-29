unit PVENTA142;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuerySearchDlgADO, StdCtrls, Buttons, Grids, DBGrids, DB, ADODB,
  ComCtrls, DBCtrls, Mask, ExtCtrls, IBCustomDataSet;

type
  TfrmDevolucionCxpProductos = class(TForm)
    Search: TQrySearchDlgADO;
    QProductos: TADOQuery;
    QProductospro_codigo: TIntegerField;
    QProductospro_roriginal: TStringField;
    QProductospro_nombre: TStringField;
    QProductospro_existencia: TBCDField;
    QProductosemp_codigo: TIntegerField;
    QProductospro_escala: TStringField;
    QProductospro_vence: TStringField;
    Panel3: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label1: TLabel;
    btProveedor: TSpeedButton;
    Label14: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    DBEdit5: TDBEdit;
    tCondicion: TEdit;
    edProveedor: TEdit;
    tProveedor: TEdit;
    tPendiente: TEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit10: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    Panel5: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    btGrabar: TBitBtn;
    btLimpiar: TBitBtn;
    btClose: TBitBtn;
    btEliminaCta: TBitBtn;
    btBuscaCta: TBitBtn;
    lbCR: TStaticText;
    lbDB: TStaticText;
    lbBAL: TStaticText;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    dsSuc: TDataSource;
    QDevolucion: TADOQuery;
    QDevolucionDEV_FECHA: TDateTimeField;
    QDevolucionDEV_ITBIS: TFloatField;
    QDevolucionDEV_NOMBRE: TIBStringField;
    QDevolucionDEV_NUMERO: TIntegerField;
    QDevolucionDEV_STATUS: TIBStringField;
    QDevolucionDEV_TOTAL: TFloatField;
    QDevolucionEMP_CODIGO: TIntegerField;
    QDevolucionSUP_CODIGO: TIntegerField;
    QDevolucionUSU_CODIGO: TIntegerField;
    QDevolucionDEV_GRABADO: TFloatField;
    QDevolucionDEV_EXCENTO: TFloatField;
    QDevolucionTotal: TFloatField;
    QDevolucionFAC_NUMERO: TIBStringField;
    QDevolucionSUC_CODIGO: TIntegerField;
    dsDevolucion: TDataSource;
    QDetalle: TADOQuery;
    QDetalleValor: TFloatField;
    QDetalleDEP_CODIGO: TIntegerField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleDEV_CANTFACTURADA: TFloatField;
    QDetalleDEV_CANTIDAD: TFloatField;
    QDetalleDEV_CONITBIS: TIBStringField;
    QDetalleDEV_COSTO: TFloatField;
    QDetalleDEV_ITBIS: TFloatField;
    QDetalleDEV_NUMERO: TIntegerField;
    QDetalleDEV_TOPECANTIDAD: TFloatField;
    QDetalleEMP_CODIGO: TIntegerField;
    QDetalleFAM_CODIGO: TIntegerField;
    QDetalleMAR_CODIGO: TIntegerField;
    QDetallePRO_CODIGO: TIntegerField;
    QDetallePRO_NOMBRE: TIBStringField;
    QDetallePRO_RFABRIC: TIBStringField;
    QDetallePRO_RORIGINAL: TIBStringField;
    QDetallePRO_SERVICIO: TIBStringField;
    QDetalleDevuelta: TFloatField;
    QDetalleDET_COSTOEMP: TFloatField;
    QDetalleDET_COSTOITBIS: TFloatField;
    QDetalleDET_COSTOUND: TFloatField;
    QDetalleDET_MEDIDA: TIBStringField;
    QDetallePrecioItbis: TFloatField;
    QDetalleCalcItbis: TFloatField;
    QDetalleCalcDesc: TFloatField;
    QDetalleDET_FECHAVENCE: TDateTimeField;
    QDetalleSUC_CODIGO: TIntegerField;
    dsDetalle: TDataSource;
    QCuentas: TADOQuery;
    QCuentasCAT_CUENTA: TIBStringField;
    QCuentasCAT_NOMBRE: TIBStringField;
    QCuentasDET_MONTO: TFloatField;
    QCuentasDET_ORIGEN: TIBStringField;
    QCuentasDET_SECUENCIA: TIntegerField;
    QCuentasEMP_CODIGO: TIntegerField;
    QCuentasDEV_NUMERO: TIntegerField;
    QCuentasSUC_CODIGO: TIntegerField;
    dsCuentas: TDataSource;
    Query1: TADOQuery;
    Grid: TDBGrid;
    procedure btProveedorClick(Sender: TObject);
    procedure edProveedorChange(Sender: TObject);
    procedure edProveedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormPaint(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDevolucionCxpProductos: TfrmDevolucionCxpProductos;

implementation

uses SIGMA01, RVENTA70;

{$R *.dfm}

procedure TfrmDevolucionCxpProductos.btProveedorClick(Sender: TObject);
var
  a : integer;
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
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
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tProveedor.text := dm.Query1.fieldbyname('sup_nombre').asstring;
    edProveedor.setfocus;
  end;
end;

procedure TfrmDevolucionCxpProductos.edProveedorChange(Sender: TObject);
begin
  if trim(edProveedor.text) = '' then tProveedor.text := '';
end;

procedure TfrmDevolucionCxpProductos.edProveedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  a : integer;
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

procedure TfrmDevolucionCxpProductos.FormPaint(Sender: TObject);
begin
  frmDevolucionCxpProductos.top := 5;
  frmDevolucionCxpProductos.Left := 0;
end;

procedure TfrmDevolucionCxpProductos.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmDevolucionCxpProductos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmDevolucionCxpProductos.btPrintClick(Sender: TObject);
var
  criterio : string;
  fil : integer;
begin
  {Application.CreateForm(tRepOrdenPedido, RepOrdenPedido);
  RepOrdenPedido.lbFecha.Caption := datetostr(date);
  RepOrdenPedido.QProv.Parameters.ParamByName('sup').Value := strtoint(trim(edProveedor.Text));

  criterio := '';
  for fil := 1 to gProductos.RowCount -1 do
    if gProductos.Cells[4,fil] = 'X' then
      criterio := criterio + gProductos.Cells[0,fil]+',';

  criterio := copy(criterio,1,length(criterio)-1);

  if trim(criterio) = '' then
    MessageDlg('Debe seleccionar los productos',mtError,[mbok],0)
  else
  begin
    RepOrdenPedido.QProductos.SQL.Clear;
    RepOrdenPedido.QProductos.SQL.Add('select p.PRO_CODIGO, p.PRO_EXISTENCIA, p.PRO_NOMBRE,');
    RepOrdenPedido.QProductos.SQL.Add('p.PRO_PRECIO1, p.PRO_PRECIO2, p.PRO_PRECIO3, p.PRO_PRECIO4,');
    RepOrdenPedido.QProductos.SQL.Add('p.PRO_RFABRIC, p.PRO_RORIGINAL, p.PRO_COSTO,');
    RepOrdenPedido.QProductos.SQL.Add('p.pro_existempaque, p.pro_costoempaque');
    RepOrdenPedido.QProductos.SQL.Add('from PRODUCTOS p');
    RepOrdenPedido.QProductos.SQL.Add('where p.emp_codigo = :emp_codigo');
    RepOrdenPedido.QProductos.SQL.Add('and p.sup_codigo = :sup_codigo');
    RepOrdenPedido.QProductos.SQL.Add('and p.pro_codigo in ('+criterio+')');
    RepOrdenPedido.QProductos.SQL.Add('order by p.pro_nombre');

    RepOrdenPedido.QProv.Open;
    RepOrdenPedido.QProductos.Open;
    RepOrdenPedido.edNota.Lines := edNota.Lines;
    RepOrdenPedido.PrinterSetup;
    RepOrdenPedido.Preview;
    RepOrdenPedido.Destroy;
  end;
  gProductos.SetFocus; }
end;

end.

