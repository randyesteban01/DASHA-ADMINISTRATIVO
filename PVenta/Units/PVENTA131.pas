unit PVENTA131;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, QuerySearchDlgADO;

type
  TfrmRepValorInventario = class(TForm)
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
    btMarca: TSpeedButton;
    Label3: TLabel;
    tMArca: TEdit;
    edMarca: TEdit;
    Label5: TLabel;
    cbTipo: TComboBox;
    btAlma: TSpeedButton;
    Label6: TLabel;
    tAlma: TEdit;
    edAlma: TEdit;
    Label7: TLabel;
    btgerente: TSpeedButton;
    edgerente: TEdit;
    tgerente: TEdit;
    Label8: TLabel;
    cbexistencia: TComboBox;
    ckitbis: TCheckBox;
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
    procedure edAlmaChange(Sender: TObject);
    procedure edAlmaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edMarcaChange(Sender: TObject);
    procedure edMarcaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btAlmaClick(Sender: TObject);
    procedure btMarcaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edgerenteChange(Sender: TObject);
    procedure edgerenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btgerenteClick(Sender: TObject);
    procedure edColorChange(Sender: TObject);
    procedure edColorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btcolorClick(Sender: TObject);
    procedure btgondoleroClick(Sender: TObject);
    procedure edGondoleroChange(Sender: TObject);
    procedure edGondoleroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRepValorInventario: TfrmRepValorInventario;

implementation

uses SIGMA01, RVENTA26, RVENTA26_SARITA;

{$R *.dfm}

procedure TfrmRepValorInventario.btProveedorClick(Sender: TObject);
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

procedure TfrmRepValorInventario.edProveedorChange(Sender: TObject);
begin
  if trim(edProveedor.text) = '' then tProveedor.text := '';
end;

procedure TfrmRepValorInventario.btFamiliaClick(Sender: TObject);
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

procedure TfrmRepValorInventario.btDeptoClick(Sender: TObject);
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

procedure TfrmRepValorInventario.edDeptoChange(Sender: TObject);
begin
  if trim(edDepto.text) = '' then tDepto.text := '';
end;

procedure TfrmRepValorInventario.edFamiliaChange(Sender: TObject);
begin
  if trim(edFamilia.text) = '' then tFamilia.text := '';
end;

procedure TfrmRepValorInventario.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepValorInventario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
end;

procedure TfrmRepValorInventario.btPrintClick(Sender: TObject);
begin
if not (DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados') then
begin
  Application.CreateForm(tRValorInv, RValorInv);
  RValorInv.lbFecha.Caption := 'Al '+DateToStr(Date);
  RValorInv.lbitbis.Caption := 'No incluido en el costo';
  if ckitbis.Checked then RValorInv.lbitbis.Caption := 'Incluido en el costo';
  RValorInv.itbisincluido       := ckitbis.checked;
  RValorInv.lbFamilia.Caption   := tFamilia.Text;
  RValorInv.lbDepto.Caption     := tDepto.Text;
  RValorInv.lbProveedor.Caption := tProveedor.Text;
  RValorInv.lbmarca.Caption     := tMArca.Text;
  RValorInv.lbAlmacen.Caption   := tAlma.Text;
  RValorInv.lbTipo.Caption      := cbTipo.Items[cbTipo.itemindex];
  RValorInv.lbGerente.Caption   := tGerente.Text;
  RValorInv.lbcolor.Caption     := tcolor.Text;
  RValorInv.lbpasillo.Caption   := tgondolero.Text;

  if Trim(edAlma.Text) <> '' then
  begin
    RValorInv.QProductos.SQL.Clear;
    RValorInv.QProductos.SQL.Add('select');
    RValorInv.QProductos.SQL.Add('p.PRO_CODIGO, e.exi_Cantidad as PRO_EXISTENCIA, p.PRO_NOMBRE,');
    RValorInv.QProductos.SQL.Add('p.PRO_PRECIO1, p.PRO_PRECIO2, p.PRO_PRECIO3,');
    RValorInv.QProductos.SQL.Add('p.PRO_PRECIO4, p.PRO_RFABRIC, p.PRO_RORIGINAL,');
    RValorInv.QProductos.SQL.Add('p.PRO_COSTO, e.exi_empaque as pro_existempaque, p.pro_costoempaque,');
    RValorInv.QProductos.SQL.Add('p.pro_itbis, isnull(p.pro_selectivo_ad,0) as pro_selectivo_ad,');
    RValorInv.QProductos.SQL.Add('isnull(p.pro_selectivo_con,0) as pro_selectivo_con, p.pro_montoitbis');
    RValorInv.QProductos.SQL.Add('from PRODUCTOS p, existencias e');
    RValorInv.QProductos.SQL.Add('where p.emp_codigo = :par_invempresa');
    RValorInv.QProductos.SQL.Add('and e.emp_codigo='+IntToStr(dm.vp_cia));
    RValorInv.QProductos.SQL.Add('and p.pro_codigo = e.pro_codigo');
    RValorInv.QProductos.SQL.Add('and e.alm_codigo = :alm');
    RValorInv.QProductos.SQL.Add('and p.pro_status = '+QuotedStr('ACT'));
    RValorInv.QProductos.Parameters.ParamByName('alm').Value := StrToInt(Trim(edAlma.Text));
  end;

  if Trim(edAlma.Text) = '' then
  begin
    RValorInv.QProductos.SQL.Clear;
    RValorInv.QProductos.SQL.Add('select');
    RValorInv.QProductos.SQL.Add('p.PRO_CODIGO, sum(e.exi_Cantidad) as PRO_EXISTENCIA, p.PRO_NOMBRE,');
    RValorInv.QProductos.SQL.Add('p.PRO_PRECIO1, p.PRO_PRECIO2, p.PRO_PRECIO3,');
    RValorInv.QProductos.SQL.Add('p.PRO_PRECIO4, p.PRO_RFABRIC, p.PRO_RORIGINAL,');
    RValorInv.QProductos.SQL.Add('p.PRO_COSTO, sum(e.exi_empaque) as pro_existempaque, p.pro_costoempaque,');
    RValorInv.QProductos.SQL.Add('p.pro_itbis, isnull(p.pro_selectivo_ad,0) as pro_selectivo_ad,');
    RValorInv.QProductos.SQL.Add('isnull(p.pro_selectivo_con,0) as pro_selectivo_con, p.pro_montoitbis');
    RValorInv.QProductos.SQL.Add('from PRODUCTOS p, existencias e');
    RValorInv.QProductos.SQL.Add('where p.emp_codigo = :par_invempresa');
    RValorInv.QProductos.SQL.Add('and e.emp_codigo='+IntToStr(dm.vp_cia));
    RValorInv.QProductos.SQL.Add('and p.pro_codigo = e.pro_codigo');
    RValorInv.QProductos.SQL.Add('and p.pro_status = '+QuotedStr('ACT'));
  end;

  if Trim(edProveedor.Text) <> '' then
    RValorInv.QProductos.SQL.Add('and P.pro_codigo in (select pro_codigo from prodproveedores where sup_codigo = '+Trim(edProveedor.Text)+')');

  if Trim(edDepto.Text) <> '' then
    RValorInv.QProductos.SQL.Add('and p.dep_codigo = '+Trim(edDepto.Text));

  if Trim(edFamilia.Text) <> '' then
    RValorInv.QProductos.SQL.Add('and p.fam_codigo = '+Trim(edFamilia.Text));

  if Trim(edMarca.Text) <> '' then
    RValorInv.QProductos.SQL.Add('and p.mar_codigo = '+Trim(edMarca.Text));

  if Trim(edgerente.Text) <> '' then
    RValorInv.QProductos.SQL.Add('and p.ger_codigo = '+Trim(edgerente.Text));

  if Trim(edColor.Text) <> '' then
    RValorInv.QProductos.SQL.Add('and p.col_codigo = '+Trim(edColor.Text));

  if Trim(edGondolero.Text) <> '' then
    RValorInv.QProductos.SQL.Add('and p.gon_codigo = '+Trim(edGondolero.Text));

  if cbTipo.ItemIndex <> 2 then
  begin
    if cbTipo.ItemIndex = 0 then
      RValorInv.QProductos.SQL.Add('and p.PRO_NUEVOUSADO = '+#39+'N'+#39)
    else
      RValorInv.QProductos.SQL.Add('and p.PRO_NUEVOUSADO = '+#39+'U'+#39);
  end;

  if cbexistencia.ItemIndex = 1 then
  begin
    if Trim(edAlma.Text) <> '' then
      RValorInv.QProductos.SQL.Add('and e.exi_cantidad > 0')
    else
      RValorInv.QProductos.SQL.Add('and p.pro_existencia > 0');
  end
  else if cbexistencia.ItemIndex = 2 then
  begin
    if Trim(edAlma.Text) <> '' then
      RValorInv.QProductos.SQL.Add('and e.exi_cantidad < 0')
    else
      RValorInv.QProductos.SQL.Add('and p.pro_existencia < 0');
  end
  else if cbexistencia.ItemIndex = 3 then
  begin
    if Trim(edAlma.Text) <> '' then
      RValorInv.QProductos.SQL.Add('and e.exi_cantidad = 0')
    else
      RValorInv.QProductos.SQL.Add('and p.pro_existencia = 0');
  end
  else if cbexistencia.ItemIndex = 4 then
  begin
    if Trim(edAlma.Text) <> '' then
      RValorInv.QProductos.SQL.Add('and e.exi_cantidad <> 0')
    else
      RValorInv.QProductos.SQL.Add('and p.pro_existencia <> 0');
  end;

  if Trim(edAlma.Text) = '' then
  begin
    RValorInv.QProductos.SQL.Add('group by p.PRO_CODIGO, p.PRO_NOMBRE,');
    RValorInv.QProductos.SQL.Add('p.PRO_PRECIO1, p.PRO_PRECIO2, p.PRO_PRECIO3,');
    RValorInv.QProductos.SQL.Add('p.PRO_PRECIO4, p.PRO_RFABRIC, p.PRO_RORIGINAL,');
    RValorInv.QProductos.SQL.Add('p.PRO_COSTO, p.pro_costoempaque,');
    RValorInv.QProductos.SQL.Add('p.pro_itbis, p.pro_selectivo_ad,');
    RValorInv.QProductos.SQL.Add('p.pro_selectivo_con, p.pro_montoitbis');
  end;

  case cbOrden.ItemIndex of
  0 : RValorInv.QProductos.SQL.Add('order by p.pro_codigo');
  1 : RValorInv.QProductos.SQL.Add('order by p.PRO_RORIGINAL');
  2 : RValorInv.QProductos.SQL.Add('order by p.PRO_RFABRIC');
  3 : RValorInv.QProductos.SQL.Add('order by p.pro_nombre');
  end;
  RValorInv.QProductos.Open;
  RValorInv.PrinterSetup;
  RValorInv.Preview;
  RValorInv.Destroy;
end
else
begin
Application.CreateForm(tRValorInvSarita, RValorInvSarita);
  RValorInvSarita.lbFecha.Caption := 'Al '+DateToStr(Date);
  RValorInvSarita.lbitbis.Caption := 'No incluido en el costo';
  if ckitbis.Checked then RValorInvSarita.lbitbis.Caption := 'Incluido en el costo';
  RValorInvSarita.itbisincluido       := ckitbis.checked;
  RValorInvSarita.lbFamilia.Caption   := tFamilia.Text;
  RValorInvSarita.lbDepto.Caption     := tDepto.Text;
  RValorInvSarita.lbProveedor.Caption := tProveedor.Text;
  RValorInvSarita.lbmarca.Caption     := tMArca.Text;
  RValorInvSarita.lbAlmacen.Caption   := tAlma.Text;
  RValorInvSarita.lbTipo.Caption      := cbTipo.Items[cbTipo.itemindex];
  RValorInvSarita.lbGerente.Caption   := tGerente.Text;
  RValorInvSarita.lbcolor.Caption     := tcolor.Text;
  RValorInvSarita.lbpasillo.Caption   := tgondolero.Text;

  if Trim(edAlma.Text) <> '' then
  begin
    RValorInvSarita.QProductos.SQL.Clear;
    RValorInvSarita.QProductos.SQL.Add('select');
    RValorInvSarita.QProductos.SQL.Add('p.PRO_CODIGO, e.exi_Cantidad as PRO_EXISTENCIA, p.PRO_NOMBRE,');
    RValorInvSarita.QProductos.SQL.Add('p.PRO_PRECIO1, p.PRO_PRECIO2, p.PRO_PRECIO3,');
    RValorInvSarita.QProductos.SQL.Add('p.PRO_PRECIO4, p.PRO_RFABRIC, p.PRO_RORIGINAL,');
    RValorInvSarita.QProductos.SQL.Add('p.PRO_COSTO, e.exi_empaque as pro_existempaque, p.pro_costoempaque,');
    RValorInvSarita.QProductos.SQL.Add('p.pro_itbis, isnull(p.pro_selectivo_ad,0) as pro_selectivo_ad,');
    RValorInvSarita.QProductos.SQL.Add('isnull(p.pro_selectivo_con,0) as pro_selectivo_con, p.pro_montoitbis');
    RValorInvSarita.QProductos.SQL.Add('from PRODUCTOS p, existencias e');
    RValorInvSarita.QProductos.SQL.Add('where p.emp_codigo = :par_invempresa');
    RValorInvSarita.QProductos.SQL.Add('and e.emp_codigo='+IntToStr(dm.vp_cia));
    RValorInvSarita.QProductos.SQL.Add('and p.pro_codigo = e.pro_codigo');
    RValorInvSarita.QProductos.SQL.Add('and e.alm_codigo = :alm');
    RValorInvSarita.QProductos.SQL.Add('and p.pro_status = '+QuotedStr('ACT'));
    RValorInvSarita.QProductos.Parameters.ParamByName('alm').Value := StrToInt(Trim(edAlma.Text));
  end;

  if Trim(edAlma.Text) = '' then
  begin
    RValorInvSarita.QProductos.SQL.Clear;
    RValorInvSarita.QProductos.SQL.Add('select');
    RValorInvSarita.QProductos.SQL.Add('p.PRO_CODIGO, sum(e.exi_Cantidad) as PRO_EXISTENCIA, p.PRO_NOMBRE,');
    RValorInvSarita.QProductos.SQL.Add('p.PRO_PRECIO1, p.PRO_PRECIO2, p.PRO_PRECIO3,');
    RValorInvSarita.QProductos.SQL.Add('p.PRO_PRECIO4, p.PRO_RFABRIC, p.PRO_RORIGINAL,');
    RValorInvSarita.QProductos.SQL.Add('p.PRO_COSTO, sum(e.exi_empaque) as pro_existempaque, p.pro_costoempaque,');
    RValorInvSarita.QProductos.SQL.Add('p.pro_itbis, isnull(p.pro_selectivo_ad,0) as pro_selectivo_ad,');
    RValorInvSarita.QProductos.SQL.Add('isnull(p.pro_selectivo_con,0) as pro_selectivo_con, p.pro_montoitbis');
    RValorInvSarita.QProductos.SQL.Add('from PRODUCTOS p, existencias e');
    RValorInvSarita.QProductos.SQL.Add('where p.emp_codigo = :par_invempresa');
    RValorInvSarita.QProductos.SQL.Add('and e.emp_codigo='+IntToStr(dm.vp_cia));
    RValorInvSarita.QProductos.SQL.Add('and p.pro_codigo = e.pro_codigo');
    RValorInvSarita.QProductos.SQL.Add('and p.pro_status = '+QuotedStr('ACT'));
  end;

  if Trim(edProveedor.Text) <> '' then
    RValorInvSarita.QProductos.SQL.Add('and P.pro_codigo in (select pro_codigo from prodproveedores where sup_codigo = '+Trim(edProveedor.Text)+')');

  if Trim(edDepto.Text) <> '' then
    RValorInvSarita.QProductos.SQL.Add('and p.dep_codigo = '+Trim(edDepto.Text));

  if Trim(edFamilia.Text) <> '' then
    RValorInvSarita.QProductos.SQL.Add('and p.fam_codigo = '+Trim(edFamilia.Text));

  if Trim(edMarca.Text) <> '' then
    RValorInvSarita.QProductos.SQL.Add('and p.mar_codigo = '+Trim(edMarca.Text));

  if Trim(edgerente.Text) <> '' then
    RValorInvSarita.QProductos.SQL.Add('and p.ger_codigo = '+Trim(edgerente.Text));

  if Trim(edColor.Text) <> '' then
    RValorInvSarita.QProductos.SQL.Add('and p.col_codigo = '+Trim(edColor.Text));

  if Trim(edGondolero.Text) <> '' then
    RValorInvSarita.QProductos.SQL.Add('and p.gon_codigo = '+Trim(edGondolero.Text));

  if cbTipo.ItemIndex <> 2 then
  begin
    if cbTipo.ItemIndex = 0 then
      RValorInvSarita.QProductos.SQL.Add('and p.PRO_NUEVOUSADO = '+#39+'N'+#39)
    else
      RValorInvSarita.QProductos.SQL.Add('and p.PRO_NUEVOUSADO = '+#39+'U'+#39);
  end;

  if cbexistencia.ItemIndex = 1 then
  begin
    if Trim(edAlma.Text) <> '' then
      RValorInvSarita.QProductos.SQL.Add('and (e.exi_cantidad > 0 or e.exi_empaque > 0)')
    else
      RValorInvSarita.QProductos.SQL.Add('and (p.pro_existencia > 0 or p.pro_existempaque > 0)');
  end
  else if cbexistencia.ItemIndex = 2 then
  begin
    if Trim(edAlma.Text) <> '' then
      RValorInvSarita.QProductos.SQL.Add('and (e.exi_cantidad < 0 or e.exi_empaque < 0)')
    else
      RValorInvSarita.QProductos.SQL.Add('and (p.pro_existencia < 0 or p.pro_existempaque < 0)');
  end
  else if cbexistencia.ItemIndex = 3 then
  begin
    if Trim(edAlma.Text) <> '' then
      RValorInvSarita.QProductos.SQL.Add('and (e.exi_cantidad = 0 and e.exi_empaque = 0)')
    else
      RValorInvSarita.QProductos.SQL.Add('and (p.pro_existencia = 0 and p.pro_existempaque = 0)');
  end
  else if cbexistencia.ItemIndex = 4 then
  begin
    if Trim(edAlma.Text) <> '' then
      RValorInvSarita.QProductos.SQL.Add('and (e.exi_cantidad <> 0 or e.exi_empaque <> 0)')
    else
      RValorInvSarita.QProductos.SQL.Add('and (p.pro_existencia <> 0 or p.pro_existempaque <> 0)');
  end;

  if Trim(edAlma.Text) = '' then
  begin
    RValorInvSarita.QProductos.SQL.Add('group by p.PRO_CODIGO, p.PRO_NOMBRE,');
    RValorInvSarita.QProductos.SQL.Add('p.PRO_PRECIO1, p.PRO_PRECIO2, p.PRO_PRECIO3,');
    RValorInvSarita.QProductos.SQL.Add('p.PRO_PRECIO4, p.PRO_RFABRIC, p.PRO_RORIGINAL,');
    RValorInvSarita.QProductos.SQL.Add('p.PRO_COSTO, p.pro_costoempaque,');
    RValorInvSarita.QProductos.SQL.Add('p.pro_itbis, p.pro_selectivo_ad,');
    RValorInvSarita.QProductos.SQL.Add('p.pro_selectivo_con, p.pro_montoitbis');
  end;

  case cbOrden.ItemIndex of
  0 : RValorInvSarita.QProductos.SQL.Add('order by p.pro_codigo');
  1 : RValorInvSarita.QProductos.SQL.Add('order by p.PRO_RORIGINAL');
  2 : RValorInvSarita.QProductos.SQL.Add('order by p.PRO_RFABRIC');
  3 : RValorInvSarita.QProductos.SQL.Add('order by p.pro_nombre');
  end;
  RValorInvSarita.QProductos.Open;
  RValorInvSarita.PrinterSetup;
  RValorInvSarita.Preview;
  RValorInvSarita.Destroy;
end;
end;
procedure TfrmRepValorInventario.FormCreate(Sender: TObject);
begin
  cbOrden.ItemIndex := 3;
end;

procedure TfrmRepValorInventario.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmRepValorInventario.edFamiliaKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmRepValorInventario.edDeptoKeyDown(Sender: TObject; var Key: Word;
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
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tDepto.text := dm.Query1.fieldbyname('dep_nombre').asstring;
    end
    else
      tDepto.text := '';
  end;
end;

procedure TfrmRepValorInventario.edProveedorKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmRepValorInventario.edAlmaChange(Sender: TObject);
begin
  if trim(edAlma.text) = '' then tAlma.text := '';
end;

procedure TfrmRepValorInventario.edAlmaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edAlma.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select alm_nombre');
      dm.Query1.sql.add('from almacen');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and alm_codigo = :alm');
      dm.Query1.Parameters.parambyname('alm').Value := strtoint(edAlma.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tAlma.text := dm.Query1.fieldbyname('alm_nombre').asstring;
    end
    else
      tAlma.text := '';
  end;
end;

procedure TfrmRepValorInventario.edMarcaChange(Sender: TObject);
begin
  if trim(edMarca.text) = '' then tMArca.text := '';
end;

procedure TfrmRepValorInventario.edMarcaKeyDown(Sender: TObject;
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

procedure TfrmRepValorInventario.btAlmaClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Query.clear;
  Search.Query.add('select alm_nombre, alm_codigo');
  Search.Query.add('from almacen');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.ResultField := 'alm_codigo';
  Search.Title := 'Listado de Almacenes';
  if Search.execute then
  begin
    edAlma.text := search.valuefield;
    edAlma.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select alm_nombre');
    dm.Query1.sql.add('from almacen');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and alm_codigo = :alm');
    dm.Query1.Parameters.parambyname('alm').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tAlma.text := dm.Query1.fieldbyname('alm_nombre').asstring;
    edAlma.setfocus;
  end;
end;

procedure TfrmRepValorInventario.btMarcaClick(Sender: TObject);
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

procedure TfrmRepValorInventario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmRepValorInventario.edgerenteChange(Sender: TObject);
begin
  if trim(edgerente.text) = '' then tgerente.text := '';
end;

procedure TfrmRepValorInventario.edgerenteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tgerente.text := dm.Query1.fieldbyname('ger_nombre').asstring;
    end
    else
      tgerente.text := '';
  end;
end;

procedure TfrmRepValorInventario.btgerenteClick(Sender: TObject);
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

procedure TfrmRepValorInventario.edColorChange(Sender: TObject);
begin
  if trim(edColor.text) = '' then tcolor.text := '';
end;

procedure TfrmRepValorInventario.edColorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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

procedure TfrmRepValorInventario.btcolorClick(Sender: TObject);
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

procedure TfrmRepValorInventario.btgondoleroClick(Sender: TObject);
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

procedure TfrmRepValorInventario.edGondoleroChange(Sender: TObject);
begin
  if trim(edGondolero.text) = '' then tgondolero.text := '';
end;

procedure TfrmRepValorInventario.edGondoleroKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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
