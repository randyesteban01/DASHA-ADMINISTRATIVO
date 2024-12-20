unit PVENTA202;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Buttons, Grids, DBGrids, DB, ADODB,
  QuerySearchDlgADO;

type
  TfrmConsMovimientoInventario = class(TForm)
    Panel2: TPanel;
    Label6: TLabel;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    Panel1: TPanel;
    btClose: TBitBtn;
    BitBtn2: TBitBtn;
    btRefresh: TBitBtn;
    DBGrid1: TDBGrid;
    QInventario: TADOQuery;
    Label1: TLabel;
    btProveedor: TSpeedButton;
    edProveedor: TEdit;
    tProveedor: TEdit;
    btFamilia: TSpeedButton;
    Label4: TLabel;
    tFamilia: TEdit;
    edFamilia: TEdit;
    btgerente: TSpeedButton;
    Label15: TLabel;
    tgerente: TEdit;
    edGerente: TEdit;
    Search: TQrySearchDlgADO;
    QInventariopro_codigo: TIntegerField;
    QInventariopro_roriginal: TStringField;
    QInventariopro_nombre: TStringField;
    QInventariopro_existencia: TBCDField;
    QInventarioentradas: TBCDField;
    QInventariosalidas: TBCDField;
    dsInventario: TDataSource;
    Memo1: TMemo;
    procedure FormPaint(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btgerenteClick(Sender: TObject);
    procedure btProveedorClick(Sender: TObject);
    procedure btFamiliaClick(Sender: TObject);
    procedure edProveedorChange(Sender: TObject);
    procedure edProveedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edFamiliaChange(Sender: TObject);
    procedure edFamiliaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edGerenteChange(Sender: TObject);
    procedure edGerenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btRefreshClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsMovimientoInventario: TfrmConsMovimientoInventario;

implementation

uses SIGMA01, SIGMA00, RVENTA107, RVENTA42;

{$R *.dfm}

procedure TfrmConsMovimientoInventario.FormPaint(Sender: TObject);
begin
  with frmConsMovimientoInventario do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmConsMovimientoInventario.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsMovimientoInventario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmConsMovimientoInventario.FormCreate(Sender: TObject);
begin
  fecha1.Date := Date;
  fecha2.Date := Date;
  Memo1.Lines := QInventario.SQL;
end;

procedure TfrmConsMovimientoInventario.FormActivate(Sender: TObject);
begin
  frmMain.ExportXLS.Sheets[0].DBGrid := DBGrid1;
  frmMain.ExportXLS.Sheets[1].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[0].Exported := True;
end;

procedure TfrmConsMovimientoInventario.btgerenteClick(Sender: TObject);
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

procedure TfrmConsMovimientoInventario.btProveedorClick(Sender: TObject);
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

procedure TfrmConsMovimientoInventario.btFamiliaClick(Sender: TObject);
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

procedure TfrmConsMovimientoInventario.edProveedorChange(Sender: TObject);
begin
  if trim(edProveedor.text) = '' then tProveedor.text := '';
end;

procedure TfrmConsMovimientoInventario.edProveedorKeyDown(Sender: TObject;
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

procedure TfrmConsMovimientoInventario.edFamiliaChange(Sender: TObject);
begin
  if trim(edFamilia.text) = '' then tFamilia.text := '';
end;

procedure TfrmConsMovimientoInventario.edFamiliaKeyDown(Sender: TObject;
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

procedure TfrmConsMovimientoInventario.edGerenteChange(Sender: TObject);
begin
  if trim(edGerente.text) = '' then tgerente.text := '';
end;

procedure TfrmConsMovimientoInventario.edGerenteKeyDown(Sender: TObject;
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

procedure TfrmConsMovimientoInventario.btRefreshClick(Sender: TObject);
begin
  screen.Cursor := crHourGlass;
  QInventario.Close;
  QInventario.SQL.Clear;
  QInventario.SQL := Memo1.Lines;
  QInventario.SQL.Add('where 1=1');

  if Trim(edProveedor.Text) <> '' then
    QInventario.SQL.Add('and pro_codigo in (select pro_codigo from prodproveedores where emp_codigo = '+IntToStr(DM.vp_cia)+' and sup_codigo = '+edProveedor.Text+')');

  if Trim(edFamilia.Text) <> '' then
    QInventario.SQL.Add('and fam_codigo = '+Trim(edFamilia.Text));

  if Trim(edGerente.Text) <> '' then
    QInventario.SQL.Add('and ger_codigo = '+Trim(edGerente.Text));

  QInventario.SQL.Add('order by pro_nombre');

  QInventario.Parameters.ParamByName('fec1').DataType := ftDate;
  QInventario.Parameters.ParamByName('fec2').DataType := ftDate;
  QInventario.Parameters.ParamByName('fec1').Value := Fecha1.Date;
  QInventario.Parameters.ParamByName('fec2').Value := Fecha2.Date;
  QInventario.Parameters.ParamByName('tipo').Value := 'E';
  QInventario.Open;
  screen.Cursor := crDefault;
  DBGrid1.SetFocus;
end;

procedure TfrmConsMovimientoInventario.BitBtn2Click(Sender: TObject);
begin
  screen.Cursor := crHourGlass;
  Application.CreateForm(tRMovimientoInventario, RMovimientoInventario);
  RMovimientoInventario.lbGerente.Caption := tgerente.Text;
  RMovimientoInventario.lbFamilia.Caption := tFamilia.Text;
  RMovimientoInventario.lbProveedor.Caption := tProveedor.Text;
  RMovimientoInventario.lbFecha.Caption := 'Del '+DateToStr(fecha1.Date)+' Al '+DateToStr(fecha2.Date);
  RMovimientoInventario.QInventario.SQL := QInventario.SQL;
  RMovimientoInventario.QInventario.Parameters.ParamByName('fec1').DataType := ftDate;
  RMovimientoInventario.QInventario.Parameters.ParamByName('fec2').DataType := ftDate;
  RMovimientoInventario.QInventario.Parameters.ParamByName('fec1').Value := Fecha1.Date;
  RMovimientoInventario.QInventario.Parameters.ParamByName('fec2').Value := Fecha2.Date;
  RMovimientoInventario.QInventario.Parameters.ParamByName('tipo').Value := 'E';
  RMovimientoInventario.QInventario.Open;
  screen.Cursor := crDefault;
  RMovimientoInventario.PrinterSetup;
  RMovimientoInventario.Preview;
  RMovimientoInventario.Destroy;

end;

procedure TfrmConsMovimientoInventario.DBGrid1DblClick(Sender: TObject);
begin
  Application.CreateForm(tRExistProd, RExistProd);
  RExistProd.lbAlmacen.Caption := '';
  RExistProd.QProductos.Parameters.ParamByName('prod').Value := QInventariopro_codigo.Value;
  RExistProd.QProductos.Parameters.ParamByName('emp').Value  := dm.QParametrosPAR_INVEMPRESA.Value;
  RExistProd.QProductos.Open;

  RExistProd.QEntradas.Parameters.ParamByName('fecha1').DataType := ftDate;
  RExistProd.QEntradas.Parameters.ParamByName('fecha2').DataType := ftDate;
  RExistProd.QEntradas.Parameters.ParamByName('emp').Value       := dm.vp_cia;

  RExistProd.QCompras.Parameters.ParamByName('fecha1').DataType := ftDate;
  RExistProd.QCompras.Parameters.ParamByName('fecha2').DataType := ftDate;
  RExistProd.QCompras.Parameters.ParamByName('emp').Value       := dm.vp_cia;

  RExistProd.QDevCompra.Parameters.ParamByName('fecha1').DataType := ftDate;
  RExistProd.QDevCompra.Parameters.ParamByName('fecha2').DataType := ftDate;
  RExistProd.QDevCompra.Parameters.ParamByName('emp').Value       := dm.vp_cia;

  RExistProd.QTransferEntrada.Parameters.ParamByName('fecha1').DataType := ftDate;
  RExistProd.QTransferEntrada.Parameters.ParamByName('fecha2').DataType := ftDate;
  RExistProd.QTransferEntrada.Parameters.ParamByName('emp').Value       := dm.vp_cia;

  RExistProd.QEntradas.Parameters.ParamByName('fecha1').DataType := ftDate;
  RExistProd.QEntradas.Parameters.ParamByName('fecha2').DataType := ftDate;

  RExistProd.QEntradas.Parameters.ParamByName('fecha1').Value    := Fecha1.Date;
  RExistProd.QEntradas.Parameters.ParamByName('fecha2').Value    := Fecha2.Date;

  RExistProd.QCompras.Parameters.ParamByName('fecha1').Value     := Fecha1.Date;
  RExistProd.QCompras.Parameters.ParamByName('fecha2').Value     := Fecha2.Date;

  RExistProd.QDevCompra.Parameters.ParamByName('fecha1').Value   := Fecha1.Date;
  RExistProd.QDevCompra.Parameters.ParamByName('fecha2').Value   := Fecha2.Date;

  RExistProd.QTransferEntrada.Parameters.ParamByName('fecha1').Value    := Fecha1.Date;
  RExistProd.QTransferEntrada.Parameters.ParamByName('fecha2').Value    := Fecha2.Date;

  RExistProd.QEntradas.Open;
  RExistProd.QTransferEntrada.Open;
  RExistProd.QCompras.Open;
  RExistProd.QDevCompra.Open;
  RExistProd.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
  RExistProd.PrinterSetup;
  RExistProd.Preview;
  RExistProd.Destroy;
end;

end.
