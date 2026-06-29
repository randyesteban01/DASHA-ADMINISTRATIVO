unit PVENTA85;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, Db, DBCtrls, ADODB,
  QuerySearchDlgADO;

type
  TfrmRepProdVendidos = class(TForm)
    btClose: TBitBtn;
    btPrint: TBitBtn;
    Label1: TLabel;
    cbOrden: TComboBox;
    Label2: TLabel;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    Label3: TLabel;
    btProveedor: TSpeedButton;
    edProveedor: TEdit;
    tProveedor: TEdit;
    Search: TQrySearchDlgADO;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    edProv: TEdit;
    tProvincia: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btCloseClick(Sender: TObject);
    procedure btPrintClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure btProveedorClick(Sender: TObject);
    procedure edProveedorChange(Sender: TObject);
    procedure edProveedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edProvChange(Sender: TObject);
    procedure edProvKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRepProdVendidos: TfrmRepProdVendidos;

implementation

uses RVENTA51, SIGMA01;

{$R *.dfm}

procedure TfrmRepProdVendidos.FormCreate(Sender: TObject);
begin
  Fecha1.Date := Date;
  Fecha2.Date := Date;
  cbOrden.ItemIndex := 0;
end;

procedure TfrmRepProdVendidos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
end;

procedure TfrmRepProdVendidos.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepProdVendidos.btPrintClick(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;

  Application.CreateForm(tRRepProdVendidos, RRepProdVendidos);

  RRepProdVendidos.lbProveedor.Caption := tProveedor.Text;
  RRepProdVendidos.lbProvincia.Caption := tProvincia.Text;

  RRepProdVendidos.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
  RRepProdVendidos.QProductos.SQL.Clear;
  RRepProdVendidos.QProductos.SQL.Add('SELECT');
  RRepProdVendidos.QProductos.SQL.Add('a.pro_codigo, a.pro_rfabric, a.pro_roriginal, a.pro_nombre,');
  RRepProdVendidos.QProductos.SQL.Add('sum(a.cantidad) as cantidad,');
  RRepProdVendidos.QProductos.SQL.Add('sum(a.precio) as precio,');
  RRepProdVendidos.QProductos.SQL.Add('sum(a.descuento) as descuento,');
  RRepProdVendidos.QProductos.SQL.Add('sum(a.itbis) as itbis,');
  RRepProdVendidos.QProductos.SQL.Add('sum(a.selectivo_ad) as selectivo_ad,');
  RRepProdVendidos.QProductos.SQL.Add('sum(a.selectivo_con) as selectivo_con');
  RRepProdVendidos.QProductos.SQL.Add('from');
  RRepProdVendidos.QProductos.SQL.Add('(select');
  RRepProdVendidos.QProductos.SQL.Add('P.PRO_CODIGO, P.PRO_RFABRIC, P.PRO_RORIGINAL, D.PRO_NOMBRE,');
  RRepProdVendidos.QProductos.SQL.Add('SUM(D.DET_CANTIDAD) AS CANTIDAD,');
  RRepProdVendidos.QProductos.SQL.Add('SUM(D.DET_PRECIO*D.DET_CANTIDAD) AS PRECIO,');
  RRepProdVendidos.QProductos.SQL.Add('SUM(D.DET_TOTALDESC*D.DET_CANTIDAD) AS DESCUENTO,');
  RRepProdVendidos.QProductos.SQL.Add('SUM(D.DET_TOTALITBIS*D.DET_CANTIDAD) AS ITBIS,');
  RRepProdVendidos.QProductos.SQL.Add('SUM(D.det_selectivo_ad*D.DET_CANTIDAD) AS SELECTIVO_AD,');
  RRepProdVendidos.QProductos.SQL.Add('SUM(D.det_selectivo_con*D.DET_CANTIDAD) AS SELECTIVO_CON');
  RRepProdVendidos.QProductos.SQL.Add('FROM');
  RRepProdVendidos.QProductos.SQL.Add('PRODUCTOS P, FACTURAS F, DET_FACTURA D');
  RRepProdVendidos.QProductos.SQL.Add('WHERE');
  RRepProdVendidos.QProductos.SQL.Add('F.EMP_CODIGO = D.EMP_CODIGO');
  RRepProdVendidos.QProductos.SQL.Add('AND F.FAC_FORMA = D.FAC_FORMA');
  RRepProdVendidos.QProductos.SQL.Add('AND F.TFA_CODIGO = D.TFA_CODIGO');
  RRepProdVendidos.QProductos.SQL.Add('AND F.FAC_NUMERO = D.FAC_NUMERO');
  RRepProdVendidos.QProductos.SQL.Add('AND F.SUC_CODIGO = D.SUC_CODIGO');
  RRepProdVendidos.QProductos.SQL.Add('AND D.EMP_CODIGO = P.EMP_CODIGO');
  RRepProdVendidos.QProductos.SQL.Add('AND D.PRO_CODIGO = P.PRO_CODIGO');
  RRepProdVendidos.QProductos.SQL.Add('AND F.EMP_CODIGO = :emp');
  RRepProdVendidos.QProductos.SQL.Add('AND F.SUC_CODIGO = :suc');
  RRepProdVendidos.QProductos.SQL.Add('AND F.FAC_STATUS <> '+QuotedStr('ANU'));
  RRepProdVendidos.QProductos.SQL.Add('AND isnull(D.DET_CANTIDAD,0) > 0');
  RRepProdVendidos.QProductos.SQL.Add('AND F.FAC_FECHA BETWEEN convert(datetime,:fec1,105)');
  RRepProdVendidos.QProductos.SQL.Add('AND convert(datetime,:fec2,105)');

  if Trim(edProveedor.Text) <> '' then
     RRepProdVendidos.QProductos.SQL.Add('and P.pro_codigo in (select pro_codigo from prodproveedores where sup_codigo = '+Trim(edProveedor.Text)+')');

  if Trim(edProv.Text) <> '' then
     RRepProdVendidos.QProductos.SQL.Add('and f.pro_codigo = '+Trim(edProv.Text));

  RRepProdVendidos.QProductos.SQL.Add('GROUP BY');
  RRepProdVendidos.QProductos.SQL.Add('P.PRO_CODIGO, P.PRO_RFABRIC, P.PRO_RORIGINAL, D.PRO_NOMBRE');
  RRepProdVendidos.QProductos.SQL.Add('union all');
  RRepProdVendidos.QProductos.SQL.Add('select');
  RRepProdVendidos.QProductos.SQL.Add('t.producto, p.pro_roriginal, p.pro_rfabric, t.descripcion,');
  RRepProdVendidos.QProductos.SQL.Add('sum(t.cantidad) as cantidad,');
  RRepProdVendidos.QProductos.SQL.Add('sum(t.PRECIO*t.CANTIDAD) AS PRECIO,');
  RRepProdVendidos.QProductos.SQL.Add('0 as descuento,');
  RRepProdVendidos.QProductos.SQL.Add('SUM(((t.precio*t.itbis)/100)*t.cantidad) as itbis,');
  RRepProdVendidos.QProductos.SQL.Add('0 as selectivo_ad,');
  RRepProdVendidos.QProductos.SQL.Add('0 as selectivo_con');
  RRepProdVendidos.QProductos.SQL.Add('from productos p, ticket t');
  RRepProdVendidos.QProductos.SQL.Add('where');
  RRepProdVendidos.QProductos.SQL.Add('p.pro_codigo = t.producto');
  RRepProdVendidos.QProductos.SQL.Add('AND isnull(t.CANTIDAD,0) > 0');
  RRepProdVendidos.QProductos.SQL.Add('AND t.FECHA BETWEEN convert(datetime,:fec3,105)');
  RRepProdVendidos.QProductos.SQL.Add('AND convert(datetime,:fec4,105)');

  if Trim(edProveedor.Text) <> '' then
     RRepProdVendidos.QProductos.SQL.Add('and P.pro_codigo in (select pro_codigo from prodproveedores where sup_codigo = '+Trim(edProveedor.Text)+')');

  if Trim(edProv.Text) <> '' then
     RRepProdVendidos.QProductos.SQL.Add('and f.pro_codigo = '+Trim(edProv.Text));
  
  RRepProdVendidos.QProductos.SQL.Add('group by t.producto, p.pro_roriginal, p.pro_rfabric, t.descripcion) a');
  RRepProdVendidos.QProductos.SQL.Add('group by pro_codigo, pro_rfabric, pro_roriginal, pro_nombre');

  case cbOrden.ItemIndex of
  0 : RRepProdVendidos.QProductos.SQL.Add('ORDER BY PRO_CODIGO');
  1 : RRepProdVendidos.QProductos.SQL.Add('ORDER BY PRO_RORIGINAL');
  2 : RRepProdVendidos.QProductos.SQL.Add('ORDER BY PRO_RFABRIC');
  3 : RRepProdVendidos.QProductos.SQL.Add('ORDER BY PRO_NOMBRE');
  end;

  RRepProdVendidos.QProductos.Parameters.ParamByName('fec1').DataType := ftDate;
  RRepProdVendidos.QProductos.Parameters.ParamByName('fec2').DataType := ftDate;
  RRepProdVendidos.QProductos.Parameters.ParamByName('fec3').DataType := ftDate;
  RRepProdVendidos.QProductos.Parameters.ParamByName('fec4').DataType := ftDate;
  RRepProdVendidos.QProductos.Parameters.ParamByName('fec1').Value := fecha1.date;
  RRepProdVendidos.QProductos.Parameters.ParamByName('fec2').Value := fecha2.date;
  RRepProdVendidos.QProductos.Parameters.ParamByName('fec3').Value := fecha1.date;
  RRepProdVendidos.QProductos.Parameters.ParamByName('fec4').Value := fecha2.date;
  RRepProdVendidos.QProductos.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
  RRepProdVendidos.QProductos.Parameters.ParamByName('emp').Value := dm.vp_cia;
  RRepProdVendidos.QProductos.Open;

  Screen.Cursor := crDefault;

  RRepProdVendidos.PrinterSetup;
  RRepProdVendidos.Preview;
  RRepProdVendidos.Destroy;
end;

procedure TfrmRepProdVendidos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmRepProdVendidos.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
end;

procedure TfrmRepProdVendidos.btProveedorClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
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

procedure TfrmRepProdVendidos.edProveedorChange(Sender: TObject);
begin
  if trim(edProveedor.text) = '' then tProveedor.text := '';
end;

procedure TfrmRepProdVendidos.edProveedorKeyDown(Sender: TObject;
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

procedure TfrmRepProdVendidos.SpeedButton1Click(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Query.clear;
  Search.Query.add('select pro_nombre, pro_codigo');
  Search.Query.add('from provincias');
  Search.Query.add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'pro_Codigo';
  Search.Title := 'Provincias';
  if Search.execute then
  begin
    edProv.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select pro_nombre from provincias');
    dm.Query1.sql.add('where pro_codigo = :cod');
    dm.Query1.sql.add('and emp_codigo = :emp');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edProv.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('PROVINCIA NO EXISTE',mterror,[mbok],0)
    else
      tprovincia.text := dm.Query1.fieldbyname('pro_nombre').asstring;
    edProv.setfocus;
  end;
end;

procedure TfrmRepProdVendidos.edProvChange(Sender: TObject);
begin
  if trim(edProv.text) = '' then tprovincia.text := '';
end;

procedure TfrmRepProdVendidos.edProvKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edProv.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select pro_nombre from provincias');
      dm.Query1.sql.add('where pro_codigo = :cod');
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edProv.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('PROVINCIA NO EXISTE',mterror,[mbok],0);
        edProv.setFocus;
      end
      else
        tprovincia.text := dm.Query1.fieldbyname('pro_nombre').asstring;
    end;
  end;
end;

procedure TfrmRepProdVendidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.
