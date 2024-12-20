unit PVENTA217;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, ComCtrls, StdCtrls, Buttons, DB, ADODB,
  QuerySearchDlgADO;

type
  TfrmRepProductosDespachados = class(TForm)
    Label2: TLabel;
    Label8: TLabel;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    DBLookupComboBox2: TDBLookupComboBox;
    Label3: TLabel;
    btProveedor: TSpeedButton;
    edProveedor: TEdit;
    tProveedor: TEdit;
    Label12: TLabel;
    btcliente: TSpeedButton;
    edCliente: TEdit;
    tCliente: TEdit;
    btFamilia: TSpeedButton;
    Label5: TLabel;
    tFamilia: TEdit;
    edFamilia: TEdit;
    btDepto: TSpeedButton;
    Label27: TLabel;
    tDepto: TEdit;
    edDepto: TEdit;
    btMarca: TSpeedButton;
    Label6: TLabel;
    tMArca: TEdit;
    edMarca: TEdit;
    btVendedor: TSpeedButton;
    Label11: TLabel;
    tVendedor: TEdit;
    edVendedor: TEdit;
    btgerente: TSpeedButton;
    Label15: TLabel;
    tgerente: TEdit;
    edGerente: TEdit;
    btPrint: TBitBtn;
    btClose: TBitBtn;
    Search: TQrySearchDlgADO;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    dsSuc: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btProveedorClick(Sender: TObject);
    procedure btclienteClick(Sender: TObject);
    procedure btFamiliaClick(Sender: TObject);
    procedure btMarcaClick(Sender: TObject);
    procedure btVendedorClick(Sender: TObject);
    procedure btgerenteClick(Sender: TObject);
    procedure edProveedorChange(Sender: TObject);
    procedure edProveedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edClienteChange(Sender: TObject);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edFamiliaChange(Sender: TObject);
    procedure edFamiliaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDeptoChange(Sender: TObject);
    procedure edDeptoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btDeptoClick(Sender: TObject);
    procedure edMarcaChange(Sender: TObject);
    procedure edMarcaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edVendedorChange(Sender: TObject);
    procedure edVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edGerenteChange(Sender: TObject);
    procedure edGerenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btCloseClick(Sender: TObject);
    procedure btPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRepProductosDespachados: TfrmRepProductosDespachados;

implementation

uses SIGMA01, RVENTA117;

{$R *.dfm}

procedure TfrmRepProductosDespachados.FormCreate(Sender: TObject);
begin
  Fecha1.Date := Date;
  Fecha2.Date := Date;
end;

procedure TfrmRepProductosDespachados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmRepProductosDespachados.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
end;

procedure TfrmRepProductosDespachados.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmRepProductosDespachados.btProveedorClick(Sender: TObject);
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

procedure TfrmRepProductosDespachados.btclienteClick(Sender: TObject);
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
  end;
end;

procedure TfrmRepProductosDespachados.btFamiliaClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Query.clear;
  Search.Query.add('select fam_nombre, fam_codigo');
  Search.Query.add('from familias');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.ResultField := 'fam_codigo';
  Search.Title := 'Listado de Familias';
  if Search.execute then
  begin
    edFamilia.text := search.valuefield;
    edFamilia.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select fam_codigo, fam_nombre');
    dm.Query1.sql.add('from familias');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and fam_codigo = :fam');
    dm.Query1.Parameters.parambyname('fam').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tFamilia.text := dm.Query1.fieldbyname('fam_nombre').asstring;
    edFamilia.setfocus;
  end;
end;

procedure TfrmRepProductosDespachados.btMarcaClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Query.clear;
  Search.Query.add('select mar_nombre, mar_codigo');
  Search.Query.add('from marcas');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.ResultField := 'mar_codigo';
  Search.Title := 'Listado de Marcas';
  if Search.execute then
  begin
    edMarca.text := search.valuefield;
    edMarca.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select mar_nombre');
    dm.Query1.sql.add('from marcas');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and mar_codigo = :mar');
    dm.Query1.Parameters.parambyname('mar').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tMArca.text := dm.Query1.fieldbyname('mar_nombre').asstring;
    edMarca.setfocus;
  end;
end;

procedure TfrmRepProductosDespachados.btVendedorClick(Sender: TObject);
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
  end;
end;

procedure TfrmRepProductosDespachados.btgerenteClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C�digo');
  Search.Query.clear;
  Search.Query.add('select ger_nombre, ger_codigo');
  Search.Query.add('from gerentes');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'ger_Codigo';
  Search.Title := 'Gerentes';
  if Search.execute then
  begin
    edGerente.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select ger_nombre from gerentes');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and ger_Codigo = :ger');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('ger').Value := strtoint(trim(edGerente.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('PREVENTA NO EXISTE',mterror,[mbok],0)
    else
      tgerente.text := dm.Query1.fieldbyname('ger_nombre').asstring;
    edGerente.setfocus;
  end;
end;

procedure TfrmRepProductosDespachados.edProveedorChange(Sender: TObject);
begin
  if trim(edProveedor.text) = '' then tProveedor.text := '';
end;

procedure TfrmRepProductosDespachados.edProveedorKeyDown(Sender: TObject;
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

procedure TfrmRepProductosDespachados.edClienteChange(Sender: TObject);
begin
  if trim(edCliente.text) = '' then tcliente.text := '';
end;

procedure TfrmRepProductosDespachados.edClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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
         dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edCliente.text))
      else
         dm.Query1.Parameters.parambyname('cod').Value := trim(edCliente.text);
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('CLIENTE NO EXISTE',mterror,[mbok],0);
        edCliente.SetFocus;
      end
      else
        tCliente.text := dm.Query1.fieldbyname('cli_nombre').asstring;
    end;
  end;
end;

procedure TfrmRepProductosDespachados.edFamiliaChange(Sender: TObject);
begin
  if trim(edFamilia.text) = '' then tFamilia.text := '';
end;

procedure TfrmRepProductosDespachados.edFamiliaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edFamilia.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select fam_codigo, fam_nombre');
      dm.Query1.sql.add('from familias');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and fam_codigo = :fam');
      dm.Query1.Parameters.parambyname('fam').Value := strtoint(edFamilia.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tFamilia.text := dm.Query1.fieldbyname('fam_nombre').asstring;
    end
    else
      tFamilia.text := '';
  end;
end;

procedure TfrmRepProductosDespachados.edDeptoChange(Sender: TObject);
begin
  if trim(edDepto.text) = '' then tDepto.text := '';
end;

procedure TfrmRepProductosDespachados.edDeptoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edDepto.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select dep_codigo, dep_nombre');
      dm.Query1.sql.add('from departamentos');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and dep_codigo = :dep');
      dm.Query1.Parameters.parambyname('dep').Value := strtoint(edDepto.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tDepto.text := dm.Query1.fieldbyname('dep_nombre').asstring;
    end
    else
      tDepto.text := '';
  end;
end;

procedure TfrmRepProductosDespachados.btDeptoClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Query.clear;
  Search.Query.add('select dep_nombre, dep_codigo');
  Search.Query.add('from departamentos');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.Query.add('and dep_tipo = '+QuotedStr('V'));
  Search.ResultField := 'dep_codigo';
  Search.Title := 'Listado de Departamentos';
  if Search.execute then
  begin
    edDepto.text := search.valuefield;
    edDepto.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select dep_codigo, dep_nombre');
    dm.Query1.sql.add('from departamentos');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and dep_codigo = :dep');
    dm.Query1.sql.add('and dep_tipo = '+QuotedStr('V'));
    dm.Query1.Parameters.parambyname('dep').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tDepto.text := dm.Query1.fieldbyname('dep_nombre').asstring;
    edDepto.setfocus;
  end;
end;

procedure TfrmRepProductosDespachados.edMarcaChange(Sender: TObject);
begin
  if trim(edMarca.text) = '' then tMArca.text := '';
end;

procedure TfrmRepProductosDespachados.edMarcaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edMarca.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select mar_nombre');
      dm.Query1.sql.add('from marcas');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and mar_codigo = :mar');
      dm.Query1.Parameters.parambyname('mar').Value := strtoint(edMarca.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tMArca.text := dm.Query1.fieldbyname('mar_nombre').asstring;
    end
    else
      tMArca.text := '';
  end;
end;

procedure TfrmRepProductosDespachados.edVendedorChange(Sender: TObject);
begin
  if trim(edVendedor.text) = '' then tVendedor.text := '';
end;

procedure TfrmRepProductosDespachados.edVendedorKeyDown(Sender: TObject;
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
    end;
  end;
end;

procedure TfrmRepProductosDespachados.edGerenteChange(Sender: TObject);
begin
  if trim(edGerente.text) = '' then tgerente.text := '';
end;

procedure TfrmRepProductosDespachados.edGerenteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edGerente.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select ger_nombre from Gerentes');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and ger_codigo = :ger');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('ger').Value := strtoint(trim(edGerente.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('PREVENTA NO EXISTE',mterror,[mbok],0);
        edGerente.SetFocus;
      end
      else
        tgerente.text := dm.Query1.fieldbyname('ger_nombre').asstring;
    end;
  end;
end;

procedure TfrmRepProductosDespachados.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepProductosDespachados.btPrintClick(Sender: TObject);
begin
  Application.CreateForm(tRRepProdDespachados, RRepProdDespachados);
  RRepProdDespachados.lbProveedor.Caption := tProveedor.Text;
  RRepProdDespachados.lbCliente.Caption   := tCliente.Text;
  RRepProdDespachados.lbMarca.Caption     := tMArca.Text;
  RRepProdDespachados.lbFamilia.Caption   := tFamilia.Text;
  RRepProdDespachados.lbDepto.Caption     := tDepto.Text;
  RRepProdDespachados.lbVendedor.Caption  := tVendedor.Text;
  RRepProdDespachados.lbGerente.Caption  := tgerente.Text;
  RRepProdDespachados.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);

  RRepProdDespachados.QProductos.SQL.Clear;
  RRepProdDespachados.QProductos.SQL.Add('select p.pro_codigo, p.pro_roriginal, p.pro_nombre, sum(isnull(d.det_cantidad,0)) as Cantidad');
  RRepProdDespachados.QProductos.SQL.Add('from productos p, conduce c, det_conduce d');
  RRepProdDespachados.QProductos.SQL.Add('where c.emp_codigo = d.emp_codigo');
  RRepProdDespachados.QProductos.SQL.Add('and c.suc_codigo = d.suc_codigo');
  RRepProdDespachados.QProductos.SQL.Add('and c.con_numero = d.con_numero');
  RRepProdDespachados.QProductos.SQL.Add('and d.pro_codigo = p.pro_codigo');
  RRepProdDespachados.QProductos.SQL.Add('and c.con_fecha between convert(datetime, :fec1, 105)');
  RRepProdDespachados.QProductos.SQL.Add('and convert(datetime, :fec2, 105)');

  if Trim(edProveedor.Text) <> '' then
     RRepProdDespachados.QProductos.SQL.Add('and P.pro_codigo in (select pro_codigo from prodproveedores where sup_codigo = '+Trim(edProveedor.Text)+')');

  if Trim(edGerente.Text) <> '' then
     RRepProdDespachados.QProductos.SQL.Add('and p.ger_codigo = '+Trim(edGerente.Text));

  if Trim(edCliente.Text) <> '' then
  begin
    if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
       RRepProdDespachados.QProductos.SQL.Add('and c.cli_codigo = '+Trim(edCliente.Text))
    else
       RRepProdDespachados.QProductos.SQL.Add('and c.cli_referencia = '+QuotedStr(Trim(edCliente.Text)));
  end;

  if Trim(edFamilia.Text) <> '' then
     RRepProdDespachados.QProductos.SQL.Add('and p.fam_codigo = '+Trim(edFamilia.Text));

  if Trim(edDepto.Text) <> '' then
     RRepProdDespachados.QProductos.SQL.Add('and p.dep_codigo = '+Trim(edDepto.Text));

  if Trim(edMarca.Text) <> '' then
     RRepProdDespachados.QProductos.SQL.Add('and p.mar_codigo = '+Trim(edMarca.Text));

  if Trim(edVendedor.Text) <> '' then
     RRepProdDespachados.QProductos.SQL.Add('and c.ven_codigo = '+Trim(edVendedor.Text));

  if Trim(edVendedor.Text) <> '' then
     RRepProdDespachados.QProductos.SQL.Add('and c.ven_codigo = '+Trim(edVendedor.Text));

  if Trim(DBLookupComboBox2.Text) <> '' then
    RRepProdDespachados.QProductos.SQL.Add('and c.suc_codigo = ' + FloatToStr(DBLookupComboBox2.KeyValue));

  RRepProdDespachados.QProductos.SQL.Add('group by p.pro_codigo, p.pro_roriginal, p.pro_nombre');
  RRepProdDespachados.QProductos.Parameters.ParamByName('fec1').DataType := ftDate;
  RRepProdDespachados.QProductos.Parameters.ParamByName('fec2').DataType := ftDate;
  RRepProdDespachados.QProductos.Parameters.ParamByName('fec1').Value := fecha1.date;
  RRepProdDespachados.QProductos.Parameters.ParamByName('fec2').Value := fecha2.date;
  RRepProdDespachados.QProductos.Open;
  RRepProdDespachados.QRLSUCURSAL.Caption := DBLookupComboBox2.Text;
  RRepProdDespachados.PrinterSetup;
  RRepProdDespachados.Preview;
  RRepProdDespachados.Destroy;

end;

end.
