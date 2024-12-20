unit PVENTA189;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, Grids, DBGrids,
  QuerySearchDlgADO, DB, ADODB;

type
  TfrmAnalisisCompra_Venta = class(TForm)
    Label2: TLabel;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    Label3: TLabel;
    btProveedor: TSpeedButton;
    edProveedor: TEdit;
    tProveedor: TEdit;
    btFamilia: TSpeedButton;
    Label5: TLabel;
    btDepto: TSpeedButton;
    Label27: TLabel;
    tFamilia: TEdit;
    tDepto: TEdit;
    edDepto: TEdit;
    edFamilia: TEdit;
    btClose: TBitBtn;
    DBGrid1: TDBGrid;
    Search: TQrySearchDlgADO;
    btRefresh: TBitBtn;
    QAnalisis: TADOQuery;
    QAnalisisCodigo: TIntegerField;
    QAnalisisNombre: TStringField;
    QAnalisisCant_Vendida: TBCDField;
    QAnalisisTotal_Vendido: TBCDField;
    QAnalisisCant_Compra: TBCDField;
    QAnalisisTotal_Compra: TBCDField;
    dsAnalisis: TDataSource;
    GroupBox1: TGroupBox;
    lNombres: TListBox;
    BitBtn1: TBitBtn;
    lCodigos: TListBox;
    Memo1: TMemo;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    edcantcompra: TEdit;
    edtotcompra: TEdit;
    edcantventa: TEdit;
    edtotventa: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    btgondolero: TSpeedButton;
    Label17: TLabel;
    tgondolero: TEdit;
    edGondolero: TEdit;
    BitBtn3: TBitBtn;
    procedure btCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btProveedorClick(Sender: TObject);
    procedure btFamiliaClick(Sender: TObject);
    procedure btDeptoClick(Sender: TObject);
    procedure edProveedorChange(Sender: TObject);
    procedure edProveedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edFamiliaChange(Sender: TObject);
    procedure edFamiliaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDeptoChange(Sender: TObject);
    procedure edDeptoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btRefreshClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btgondoleroClick(Sender: TObject);
    procedure edGondoleroChange(Sender: TObject);
    procedure edGondoleroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAnalisisCompra_Venta: TfrmAnalisisCompra_Venta;

implementation

uses SIGMA01, SIGMA00, PVENTA33, RVENTA123;

{$R *.dfm}

procedure TfrmAnalisisCompra_Venta.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAnalisisCompra_Venta.FormCreate(Sender: TObject);
begin
  Fecha1.Date := Date;
  Fecha2.Date := Date;
  Memo1.Lines := QAnalisis.SQL;
end;

procedure TfrmAnalisisCompra_Venta.btProveedorClick(Sender: TObject);
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

procedure TfrmAnalisisCompra_Venta.btFamiliaClick(Sender: TObject);
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

procedure TfrmAnalisisCompra_Venta.btDeptoClick(Sender: TObject);
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
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tDepto.text := dm.Query1.fieldbyname('dep_nombre').asstring;
    edDepto.setfocus;
  end;
end;

procedure TfrmAnalisisCompra_Venta.edProveedorChange(Sender: TObject);
begin
  if trim(edProveedor.text) = '' then tProveedor.text := '';
end;

procedure TfrmAnalisisCompra_Venta.edProveedorKeyDown(Sender: TObject;
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

procedure TfrmAnalisisCompra_Venta.edFamiliaChange(Sender: TObject);
begin
  if trim(edFamilia.text) = '' then tFamilia.text := '';
end;

procedure TfrmAnalisisCompra_Venta.edFamiliaKeyDown(Sender: TObject;
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

procedure TfrmAnalisisCompra_Venta.edDeptoChange(Sender: TObject);
begin
  if trim(edDepto.text) = '' then tDepto.text := '';
end;

procedure TfrmAnalisisCompra_Venta.edDeptoKeyDown(Sender: TObject;
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

procedure TfrmAnalisisCompra_Venta.btRefreshClick(Sender: TObject);
var
  prod : string;
  a : integer;

  totventa, totcompra, cantventa, cantcompra : double;
begin
  if trim(edProveedor.Text) = '' then edProveedor.Text := '0';
  if trim(edFamilia.Text) = '' then edFamilia.Text := '0';
  if trim(edDepto.Text) = '' then edDepto.Text := '0';
  if trim(edGondolero.Text) = '' then edGondolero.Text := '0';
  prod := '%';

  Screen.Cursor := crHourGlass;
  
  QAnalisis.Close;
  QAnalisis.SQL.Clear;
  QAnalisis.SQL := Memo1.Lines;

  if trim(edFamilia.Text) <> '0' then
    QAnalisis.SQL.Add('and codigo in (select pro_codigo from productos where fam_codigo = '+edFamilia.Text+')');

  if trim(edDepto.Text) <> '0' then
    QAnalisis.SQL.Add('and codigo in (select pro_codigo from productos where dep_codigo = '+edDepto.Text+')');

  if trim(edProveedor.Text) <> '0' then
    QAnalisis.SQL.Add('and codigo in (select pro_codigo from productos where sup_codigo = '+edProveedor.Text+')');

  if lCodigos.Items.Count > 0 then
    QAnalisis.SQL.Add('and Codigo in (');
    
  for a := 0 to lCodigos.Items.Count-1 do
    QAnalisis.SQL.Add(lCodigos.Items[a]+',');

  if lCodigos.Items.Count > 0 then
    QAnalisis.SQL.Add(lCodigos.Items[lCodigos.Items.Count-1]+')');

  QAnalisis.Sql.Add('group	by Codigo, Nombre');
  QAnalisis.Parameters.ParamByName('emp').Value  := dm.vp_cia;
  QAnalisis.Parameters.ParamByName('fec1').Value := Fecha1.Date;
  QAnalisis.Parameters.ParamByName('fec2').Value := Fecha2.Date;
  QAnalisis.Parameters.ParamByName('fec1').DataType := ftDate;
  QAnalisis.Parameters.ParamByName('fec2').DataType := ftDate;
  QAnalisis.Parameters.ParamByName('fam').Value  := StrToInt(edFamilia.Text);
  QAnalisis.Parameters.ParamByName('dep').Value  := StrToInt(edDepto.Text);
  QAnalisis.Parameters.ParamByName('sup').Value  := StrToInt(edProveedor.Text);
  QAnalisis.Parameters.ParamByName('gon').Value  := StrToInt(edGondolero.Text);
  QAnalisis.Parameters.ParamByName('fnd').Value  := prod;
  QAnalisis.Open;

  QAnalisis.DisableControls;
  totventa := 0;
  totcompra := 0;
  cantventa := 0;
  cantcompra := 0;
  while not QAnalisis.Eof do
  begin
    totventa := totventa + QAnalisisTotal_Vendido.Value;
    totcompra := totcompra + QAnalisisTotal_Compra.Value;
    cantventa := cantventa + QAnalisisCant_Vendida.Value;
    cantcompra := cantcompra + QAnalisisCant_Compra.Value;
    QAnalisis.Next;
  end;
  QAnalisis.First;
  QAnalisis.EnableControls;

  edcantcompra.Text := format('%n',[cantcompra]);
  edcantventa.Text := format('%n',[cantventa]);
  edtotcompra.Text := format('%n',[totcompra]);
  edtotventa.Text := format('%n',[totventa]);
  Screen.Cursor := crDefault;

  DBGrid1.SetFocus;
end;

procedure TfrmAnalisisCompra_Venta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TfrmAnalisisCompra_Venta.FormPaint(Sender: TObject);
begin
  with frmAnalisisCompra_Venta do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmAnalisisCompra_Venta.BitBtn1Click(Sender: TObject);
var
  Prod : string;
begin
  application.createform(tfrmBuscaProducto, frmBuscaProducto);
  frmBuscaProducto.showmodal;
  if frmBuscaProducto.seleccion = 1 then
  begin
    if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
       Prod := inttostr(frmBuscaProducto.QProductosPRO_CODIGO.value)
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
       Prod := frmBuscaProducto.QProductosPRO_RFABRIC.value
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
       Prod := frmBuscaProducto.QProductosPRO_RORIGINAL.value;

    lNombres.Items.Add(frmBuscaProducto.QProductosPRO_NOMBRE.Value);
    lCodigos.Items.Add(frmBuscaProducto.QProductosPRO_CODIGO.AsString);
    Prod := '';

  end;
  frmBuscaProducto.release;
end;

procedure TfrmAnalisisCompra_Venta.BitBtn2Click(Sender: TObject);
begin
  lCodigos.Items.Delete(lNombres.ItemIndex);
  lNombres.Items.Delete(lNombres.ItemIndex);
end;

procedure TfrmAnalisisCompra_Venta.btgondoleroClick(Sender: TObject);
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

procedure TfrmAnalisisCompra_Venta.edGondoleroChange(Sender: TObject);
begin
  if trim(edGondolero.text) = '' then tgondolero.text := '';
end;

procedure TfrmAnalisisCompra_Venta.edGondoleroKeyDown(Sender: TObject;
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

procedure TfrmAnalisisCompra_Venta.BitBtn3Click(Sender: TObject);
begin
  Application.CreateForm(tRAnalisisCompra_Venta, RAnalisisCompra_Venta);
  RAnalisisCompra_Venta.lbperioro.Caption := 'Del '+DateToStr(Fecha1.Date)+' al '+DateToStr(fecha2.Date);
  RAnalisisCompra_Venta.QAnalisis.SQL := QAnalisis.SQL;
  RAnalisisCompra_Venta.QAnalisis.Parameters.ParamByName('emp').Value  := dm.vp_cia;
  RAnalisisCompra_Venta.QAnalisis.Parameters.ParamByName('fec1').Value := Fecha1.Date;
  RAnalisisCompra_Venta.QAnalisis.Parameters.ParamByName('fec2').Value := Fecha2.Date;
  RAnalisisCompra_Venta.QAnalisis.Parameters.ParamByName('fec1').DataType := ftDate;
  RAnalisisCompra_Venta.QAnalisis.Parameters.ParamByName('fec2').DataType := ftDate;
  RAnalisisCompra_Venta.QAnalisis.Parameters.ParamByName('fam').Value  := StrToInt(edFamilia.Text);
  RAnalisisCompra_Venta.QAnalisis.Parameters.ParamByName('dep').Value  := StrToInt(edDepto.Text);
  RAnalisisCompra_Venta.QAnalisis.Parameters.ParamByName('sup').Value  := StrToInt(edProveedor.Text);
  RAnalisisCompra_Venta.QAnalisis.Parameters.ParamByName('gon').Value  := StrToInt(edGondolero.Text);
  RAnalisisCompra_Venta.QAnalisis.Parameters.ParamByName('fnd').Value  := QAnalisis.Parameters.ParamByName('fnd').Value;
  RAnalisisCompra_Venta.QAnalisis.Open;
  RAnalisisCompra_Venta.PrinterSetup;
  RAnalisisCompra_Venta.Preview;
  RAnalisisCompra_Venta.Destroy;  
end;

end.
