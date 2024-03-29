unit PVENTA68;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, QuerySearchDlgADO;

type
  TfrmRepPrecios = class(TForm)
    btFamilia: TSpeedButton;
    Label4: TLabel;
    tFamilia: TEdit;
    btDepto: TSpeedButton;
    Label27: TLabel;
    tDepto: TEdit;
    Label2: TLabel;
    btProveedor: TSpeedButton;
    edProveedor: TEdit;
    tProveedor: TEdit;
    edDepto: TEdit;
    edFamilia: TEdit;
    Search: TQrySearchDlgADO;
    btClose: TBitBtn;
    btPrint: TBitBtn;
    cbOrden: TComboBox;
    Label1: TLabel;
    ckExistencia: TCheckBox;
    cbPrecios: TComboBox;
    Label3: TLabel;
    Label12: TLabel;
    btTipo: TSpeedButton;
    tTipo: TEdit;
    edTipo: TEdit;
    ckcostos: TCheckBox;
    btMarca: TSpeedButton;
    Label5: TLabel;
    tMArca: TEdit;
    edMarca: TEdit;
    Label7: TLabel;
    btgerente: TSpeedButton;
    edgerente: TEdit;
    tgerente: TEdit;
    ckimpuestos: TCheckBox;
    Label8: TLabel;
    cbexistencia: TComboBox;
    ckpatrocinador: TCheckBox;
    btcolor: TSpeedButton;
    Label18: TLabel;
    tcolor: TEdit;
    edColor: TEdit;
    btgondolero: TSpeedButton;
    Label17: TLabel;
    tgondolero: TEdit;
    edGondolero: TEdit;
    procedure btProveedorClick(Sender: TObject);
    procedure edProveedorChange(Sender: TObject);
    procedure btFamiliaClick(Sender: TObject);
    procedure btDeptoClick(Sender: TObject);
    procedure edDeptoChange(Sender: TObject);
    procedure edFamiliaChange(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btPrintClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edFamiliaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDeptoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edProveedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btTipoClick(Sender: TObject);
    procedure edTipoChange(Sender: TObject);
    procedure edTipoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btMarcaClick(Sender: TObject);
    procedure edMarcaChange(Sender: TObject);
    procedure edMarcaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edgerenteChange(Sender: TObject);
    procedure edgerenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btgerenteClick(Sender: TObject);
    procedure edColorChange(Sender: TObject);
    procedure edGondoleroChange(Sender: TObject);
    procedure btcolorClick(Sender: TObject);
    procedure btgondoleroClick(Sender: TObject);
    procedure edColorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edGondoleroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Imprime40Columnas;
  end;

var
  frmRepPrecios: TfrmRepPrecios;

implementation

uses RVENTA25, SIGMA01;

{$R *.dfm}

procedure TfrmRepPrecios.btProveedorClick(Sender: TObject);
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

procedure TfrmRepPrecios.edProveedorChange(Sender: TObject);
begin
  if trim(edProveedor.text) = '' then tProveedor.text := '';
end;

procedure TfrmRepPrecios.btFamiliaClick(Sender: TObject);
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

procedure TfrmRepPrecios.btDeptoClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Query.clear;
  Search.Query.add('select dep_nombre, dep_codigo');
  Search.Query.add('from departamentos');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
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
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.open;
    tDepto.text := dm.Query1.fieldbyname('dep_nombre').asstring;
    edDepto.setfocus;
  end;
end;

procedure TfrmRepPrecios.edDeptoChange(Sender: TObject);
begin
  if trim(edDepto.text) = '' then tDepto.text := '';
end;

procedure TfrmRepPrecios.edFamiliaChange(Sender: TObject);
begin
  if trim(edFamilia.text) = '' then tFamilia.text := '';
end;

procedure TfrmRepPrecios.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepPrecios.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
end;

procedure TfrmRepPrecios.btPrintClick(Sender: TObject);
begin
  Application.CreateForm(tRRepPrecios, RRepPrecios);
  if dm.QParametrospar_inv_unidad_medida.Value = 'True' then
  begin
    RRepPrecios.QProductos.SQL.Clear;
    RRepPrecios.QProductos.SQL.Add('select p.PRO_CODIGO, p.PRO_EXISTENCIA, p.PRO_NOMBRE, u.Precio as PRO_PRECIO1,');
    RRepPrecios.QProductos.SQL.Add('0.00 as PRO_PRECIO2, 0.00 as PRO_PRECIO3, 0.00 as PRO_PRECIO4, p.PRO_RFABRIC,');
    RRepPrecios.QProductos.SQL.Add('p.PRO_RORIGINAL, p.pro_existempaque, p.pro_comision, p.pro_comisiondescuento,');
    RRepPrecios.QProductos.SQL.Add('p.pro_itbis, p.pro_selectivo_ad, p.pro_selectivo_con,');
    RRepPrecios.QProductos.SQL.Add('p.pro_costo, p.pro_costoempaque');
    RRepPrecios.QProductos.SQL.Add('from PRODUCTOS p');
    RRepPrecios.QProductos.SQL.Add('left outer join ProdUnidadMedida u on (p.emp_codigo = u.emp_codigo');
    RRepPrecios.QProductos.SQL.Add('and p.pro_codigo = u.pro_codigo)');
    RRepPrecios.QProductos.SQL.Add('where p.emp_codigo = :par_invempresa');
    RRepPrecios.QProductos.SQL.Add('and u.secuencia in (select min(secuencia) from ProdUnidadMedida where emp_codigo = p.emp_codigo');
    RRepPrecios.QProductos.SQL.Add('and pro_codigo = p.pro_codigo)');
    RRepPrecios.QProductos.SQL.Add('and pro_status = '+QuotedStr('ACT'));
  end;

  RRepPrecios.precios := cbPrecios.Text;
  RRepPrecios.lbmarca.Caption     := tMArca.Text;
  RRepPrecios.lbFamilia.Caption   := tFamilia.Text;
  RRepPrecios.lbtipo.Caption      := tTipo.Text;
  RRepPrecios.lbDepto.Caption     := tDepto.Text;
  RRepPrecios.lbProveedor.Caption := tProveedor.Text;
  RRepPrecios.lbFecha.Caption     := 'Al '+DateToStr(Date);
  RRepPrecios.lbGerente.Caption   := tgerente.Text;
  RRepPrecios.lbpasillo.Caption   := tgondolero.Text;
  RRepPrecios.lbcolor.Caption     := tcolor.Text;
  RRepPrecios.Existencia := ckExistencia.Checked;
  RRepPrecios.Costos := ckcostos.Checked;
  RRepPrecios.Impuestos := ckimpuestos.Checked;

  if Trim(edProveedor.Text) <> '' then
    RRepPrecios.QProductos.SQL.Add('and sup_codigo = '+Trim(edProveedor.Text));

  if Trim(edDepto.Text) <> '' then
    RRepPrecios.QProductos.SQL.Add('and dep_codigo = '+Trim(edDepto.Text));

  if ckpatrocinador.Checked then
    RRepPrecios.QProductos.SQL.Add('and pro_patrocinador = '+QuotedStr('True'));

  if Trim(edFamilia.Text) <> '' then
    RRepPrecios.QProductos.SQL.Add('and fam_codigo = '+Trim(edFamilia.Text));

  if Trim(edMarca.Text) <> '' then
    RRepPrecios.QProductos.SQL.Add('and mar_codigo = '+Trim(edMarca.Text));

  if Trim(edgerente.Text) <> '' then
    RRepPrecios.QProductos.SQL.Add('and ger_codigo = '+Trim(edgerente.Text));

  if Trim(edColor.Text) <> '' then
    RRepPrecios.QProductos.SQL.Add('and col_codigo = '+Trim(edColor.Text));

  if Trim(edGondolero.Text) <> '' then
    RRepPrecios.QProductos.SQL.Add('and gon_codigo = '+Trim(edGondolero.Text));
    
  case cbexistencia.ItemIndex of
  1: RRepPrecios.QProductos.SQL.Add('and (pro_existencia > 0 or pro_existempaque > 0)');
  2: RRepPrecios.QProductos.SQL.Add('and (pro_existencia < 0 or pro_existempaque < 0)');
  3: RRepPrecios.QProductos.SQL.Add('and (pro_existencia = 0 and pro_existempaque = 0)');
  4: RRepPrecios.QProductos.SQL.Add('and (pro_existencia <> 0 or pro_existempaque <> 0)');
  end;

  if cbPrecios.Text = 'Precio1 y Precio2' then
    RRepPrecios.QProductos.SQL.Add('and (isnull(pro_precio1,0)+isnull(pro_precio2,0)) > 0')
  else if cbPrecios.Text = 'Precio1 y Precio3' then
    RRepPrecios.QProductos.SQL.Add('and (isnull(pro_precio1,0)+isnull(pro_precio3,0)) > 0')
  else if cbPrecios.Text = 'Precio1 y Precio4' then
    RRepPrecios.QProductos.SQL.Add('and (isnull(pro_precio1,0)+isnull(pro_precio4,0)) > 0')
  else if cbPrecios.Text = 'Precio2 y Precio3' then
    RRepPrecios.QProductos.SQL.Add('and (isnull(pro_precio2,0)+isnull(pro_precio3,0)) > 0')
  else if cbPrecios.Text = 'Precio2 y Precio4' then
    RRepPrecios.QProductos.SQL.Add('and (isnull(pro_precio2,0)+isnull(pro_precio4,0)) > 0')
  else if cbPrecios.Text = 'Precio3 y Precio4' then
    RRepPrecios.QProductos.SQL.Add('and (isnull(pro_precio3,0)+isnull(pro_precio4,0)) > 0')
  else if cbPrecios.Text = 'Precio1' then
    RRepPrecios.QProductos.SQL.Add('and isnull(pro_precio1,0) > 0')
  else if cbPrecios.Text = 'Precio2' then
    RRepPrecios.QProductos.SQL.Add('and isnull(pro_precio2,0) > 0')
  else if cbPrecios.Text = 'Precio3' then
    RRepPrecios.QProductos.SQL.Add('and isnull(pro_precio3,0) > 0')
  else if cbPrecios.Text = 'Precio4' then
    RRepPrecios.QProductos.SQL.Add('and isnull(pro_precio4,0) > 0');

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select rep1 from parconfigimpinv');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Open;
  if UpperCase(dm.Query1.FieldByName('rep1').AsString) = 'CON EXISTENCIA = 0' then
    RRepPrecios.QProductos.SQL.Add('and pro_existencia = 0')
  else if UpperCase(dm.Query1.FieldByName('rep1').AsString) = 'CON EXISTENCIA > 0' then
    RRepPrecios.QProductos.SQL.Add('and pro_existencia > 0')
  else if UpperCase(dm.Query1.FieldByName('rep1').AsString) = 'CON EXISTENCIA < 0' then
    RRepPrecios.QProductos.SQL.Add('and pro_existencia < 0');

  case cbOrden.ItemIndex of
  0 : RRepPrecios.QProductos.SQL.Add('order by pro_codigo');
  1 : RRepPrecios.QProductos.SQL.Add('order by PRO_RORIGINAL');
  2 : RRepPrecios.QProductos.SQL.Add('order by PRO_RFABRIC');
  3 : RRepPrecios.QProductos.SQL.Add('order by pro_nombre');
  end;
  RRepPrecios.QProductos.Open;
  RRepPrecios.PrinterSetup;
  RRepPrecios.Preview;
  RRepPrecios.Destroy;
end;

procedure TfrmRepPrecios.FormCreate(Sender: TObject);
begin
  cbOrden.ItemIndex := 3;
  cbPrecios.Enabled := dm.QParametrospar_inv_unidad_medida.Value <> 'True';
end;

procedure TfrmRepPrecios.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmRepPrecios.edFamiliaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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

procedure TfrmRepPrecios.edDeptoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.open;
      tDepto.text := dm.Query1.fieldbyname('dep_nombre').asstring;
    end
    else
      tDepto.text := '';
  end;
end;

procedure TfrmRepPrecios.edProveedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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

procedure TfrmRepPrecios.Imprime40Columnas;
var
  ar : textfile;
  l  : string;
  s, s1 : array[0..20] of char;
  puertopeq : textfile;
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

  assignfile(ar, 'imp.bat');
  rewrite(ar);
  writeln(ar, 'type c:\precios.txt > '+puerto);
  closefile(ar);

  assignfile(ar, 'c:\precios.txt');
  rewrite(ar);

  writeln(ar, dm.Centro(trim(dm.QEmpresasEMP_NOMBRE.value)));
  writeln(ar, dm.Centro(trim(DM.QEmpresasEMP_DIRECCION.value)));
  writeln(ar, dm.Centro(trim(DM.QEmpresasEMP_LOCALIDAD.value)));
  writeln(ar, dm.Centro('Telefono : '+trim(dm.QEmpresasEMP_TELEFONO.value)));
  writeln(ar, dm.Centro('RNC: '+dm.QEmpresasEMP_RNC.value));
  writeln(ar, ' ');
  writeln(ar, dm.Centro('LISTADO DE PRECIOS'));
  writeln(ar, ' ');
  writeln(ar, '--------------------------------------');
  writeln(ar, 'DESCRIPCION DEL PRODUCTO       PRECIO ');
  writeln(ar, '--------------------------------------');
  while not RRepPrecios.QProductos.Eof do
  begin
    s := '';
    fillchar(s, length(Copy(RRepPrecios.QProductosPRO_NOMBRE.value,1,30)),' ');
    writeln(ar, Copy(RRepPrecios.QProductosPRO_NOMBRE.value,1,30));
    RRepPrecios.QProductos.Next;
  end;

  closefile(ar);
  winexec('c:\imp.bat',1);
end;

procedure TfrmRepPrecios.btTipoClick(Sender: TObject);
begin
  Search.query.clear;
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C�digo');
  Search.Title := 'Tipos de Clientes';
  Search.ResultField := 'tcl_codigo';
  Search.query.add('select tcl_nombre, tcl_codigo');
  Search.query.add('from tipoclientes');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  if search.execute then
  begin
    edTipo.text := search.valuefield;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tcl_nombre, TCL_PRECIO from tipoclientes');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tcl_codigo = '+edTipo.Text);
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Open;
    tTipo.Text := dm.Query1.FieldByname('tcl_nombre').AsString;
    cbPrecios.Items.IndexOf(dm.Query1.FieldByname('TCL_PRECIO').AsString);
    edTipo.SetFocus;
  end;
end;

procedure TfrmRepPrecios.edTipoChange(Sender: TObject);
begin
  if trim(edTipo.text) = '' then tTipo.text := '';
end;

procedure TfrmRepPrecios.edTipoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edTipo.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select tfa_nombre, TCL_PRECIO');
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
      begin
        tTipo.text := dm.Query1.fieldbyname('tfa_nombre').asstring;
        cbPrecios.Items.IndexOf(dm.Query1.FieldByname('TCL_PRECIO').AsString);
      end;
    end;
  end;
end;

procedure TfrmRepPrecios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmRepPrecios.btMarcaClick(Sender: TObject);
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

procedure TfrmRepPrecios.edMarcaChange(Sender: TObject);
begin
  if trim(edMarca.text) = '' then tMArca.text := '';
end;

procedure TfrmRepPrecios.edMarcaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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

procedure TfrmRepPrecios.edgerenteChange(Sender: TObject);
begin
  if trim(edgerente.text) = '' then tgerente.text := '';
end;

procedure TfrmRepPrecios.edgerenteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edgerente.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select ger_codigo, ger_nombre');
      dm.Query1.sql.add('from gerentes');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and ger_codigo = :ger');
      dm.Query1.Parameters.parambyname('ger').Value := strtoint(edgerente.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tgerente.text := dm.Query1.fieldbyname('ger_nombre').asstring;
    end
    else
      tgerente.text := '';
  end;
end;

procedure TfrmRepPrecios.btgerenteClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Query.clear;
  Search.Query.add('select ger_nombre, ger_codigo');
  Search.ResultField := 'ger_codigo';
  Search.Query.add('from gerentes');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.Title := 'Listado de Gerentes';
  if Search.execute then
  begin
    edgerente.text := search.valuefield;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select ger_codigo, ger_nombre');
    dm.Query1.sql.add('from gerentes');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and ger_codigo = :ger');
    dm.Query1.Parameters.parambyname('ger').Value := strtoint(edgerente.text);
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tgerente.text := dm.Query1.fieldbyname('ger_nombre').asstring;
    edgerente.setfocus;
  end;
end;

procedure TfrmRepPrecios.edColorChange(Sender: TObject);
begin
  if trim(edColor.text) = '' then tcolor.text := '';
end;

procedure TfrmRepPrecios.edGondoleroChange(Sender: TObject);
begin
  if trim(edGondolero.text) = '' then tgondolero.text := '';
end;

procedure TfrmRepPrecios.btcolorClick(Sender: TObject);
begin
  Search.Title := 'Colores';
  Search.ResultField := 'col_codigo';
  Search.query.Clear;
  Search.query.add('select col_nombre, col_codigo');
  Search.query.add('from colores');
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  if search.execute then
  begin
    edColor.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select col_nombre from colores');
    dm.Query1.sql.add('where col_codigo = :col');
    dm.Query1.Parameters.parambyname('col').Value := strtoint(trim(edColor.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('COLOR NO EXISTE',mterror,[mbok],0)
    else
      tcolor.text := dm.Query1.fieldbyname('col_nombre').asstring;
    edColor.setfocus;
  end;
end;

procedure TfrmRepPrecios.btgondoleroClick(Sender: TObject);
begin
  Search.Title := 'Pasillo';
  Search.ResultField := 'gon_codigo';
  Search.query.Clear;
  Search.query.add('select gon_nombre, gon_codigo');
  Search.query.add('from gondoleros');
  Search.query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.Value));
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  if search.execute then
  begin
    edGondolero.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select gon_nombre from gondoleros');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and gon_codigo = :gon');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('gon').Value := strtoint(trim(edGondolero.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('PASILLO NO EXISTE',mterror,[mbok],0)
    else
      tgondolero.text := dm.Query1.fieldbyname('gon_nombre').asstring;
    edGondolero.setfocus;
  end;
end;

procedure TfrmRepPrecios.edColorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edColor.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select col_nombre from colores');
      dm.Query1.sql.add('where col_codigo = :col');
      dm.Query1.Parameters.parambyname('col').Value := strtoint(trim(edColor.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('COLOR NO EXISTE',mterror,[mbok],0);
        edColor.SetFocus;
      end
      else
        tcolor.text := dm.Query1.fieldbyname('col_nombre').asstring;
    end;
  end;
end;

procedure TfrmRepPrecios.edGondoleroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edGondolero.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select gon_nombre from gondoleros');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and gon_codigo = :gon');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('gon').Value := strtoint(trim(edGondolero.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('PASILLO NO EXISTE',mterror,[mbok],0);
        edGondolero.SetFocus;
      end
      else
        tgondolero.text := dm.Query1.fieldbyname('gon_nombre').asstring;
    end;
  end;
end;

end.
