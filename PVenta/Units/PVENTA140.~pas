unit PVENTA140;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuerySearchDlgADO, StdCtrls, Buttons, Grids, DBGrids, DB, ADODB,
  ComCtrls, ExtCtrls, Menus, Spin, DBCtrls, IBCustomDataSet;

type
  TfrmOrdenPedido = class(TForm)
    Search: TQrySearchDlgADO;
    dsProductos: TDataSource;
    Panel1: TPanel;
    Label2: TLabel;
    btProveedor: TSpeedButton;
    Label3: TLabel;
    edProveedor: TEdit;
    tProveedor: TEdit;
    fecha1: TDateTimePicker;
    fecha2: TDateTimePicker;
    Panel2: TPanel;
    Label1: TLabel;
    btClose: TBitBtn;
    btPrint: TBitBtn;
    edNota: TRichEdit;
    BitBtn1: TBitBtn;
    CheckBox1: TCheckBox;
    QProductos: TADOStoredProc;
    QProductospro_codigo: TIntegerField;
    QProductospro_roriginal: TStringField;
    QProductospro_nombre: TStringField;
    QProductospro_existencia: TBCDField;
    QProductoscompras: TBCDField;
    QProductosventas: TBCDField;
    QProductosult_compra: TDateTimeField;
    QProductoscantidad: TBCDField;
    QProductosCosto: TBCDField;
    btAlma: TSpeedButton;
    Label6: TLabel;
    tAlma: TEdit;
    edAlma: TEdit;
    QProductosprecio: TBCDField;
    QProductosconitbis: TStringField;
    QProductosCalcCosto: TFloatField;
    QProductosCostoNeto: TFloatField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Grid: TDBGrid;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    DBGrid10: TDBGrid;
    DBGrid11: TDBGrid;
    Label43: TLabel;
    spano: TSpinEdit;
    QEstadisticaVenta: TADOQuery;
    QEstadisticaVentames: TStringField;
    QEstadisticaVentamonto: TBCDField;
    QEstadisticaVentacodmes: TIntegerField;
    QEstadisticaVentacantidad: TBCDField;
    QEstadisticaCompra: TADOQuery;
    StringField1: TStringField;
    BCDField1: TBCDField;
    QEstadisticaCompracantidad: TBCDField;
    dsEstadisticaMes: TDataSource;
    dsEstCompras: TDataSource;
    BitBtn2: TBitBtn;
    sgCompras: TDBGrid;
    DBText3: TDBText;
    DBText1: TDBText;
    QCompras: TADOQuery;
    QComprasSUP_NOMBRE: TIBStringField;
    QComprasFAC_NUMERO: TIBStringField;
    QComprasFAC_FECHA: TDateTimeField;
    QComprasDET_COSTO: TFloatField;
    QComprasDET_CANTIDAD: TFloatField;
    QComprasDET_MEDIDA: TIBStringField;
    QComprasdet_oferta: TBCDField;
    dsCompras: TDataSource;
    PopupMenu1: TPopupMenu;
    Pantalladeproductos1: TMenuItem;
    Pantalladeajuste1: TMenuItem;
    QProductositbis: TBCDField;
    QProductoscant_ult_compra: TBCDField;
    procedure btProveedorClick(Sender: TObject);
    procedure edProveedorChange(Sender: TObject);
    procedure edProveedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormPaint(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btPrintClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure edAlmaChange(Sender: TObject);
    procedure edAlmaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btAlmaClick(Sender: TObject);
    procedure QProductosCalcFields(DataSet: TDataSet);
    procedure GridDblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Pantalladeproductos1Click(Sender: TObject);
    procedure Pantalladeajuste1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure UpdateOptions(const Grid : TStringGrid; const Check : TCheckBox; const ACol, ARow: Integer);
  end;

var
  frmOrdenPedido: TfrmOrdenPedido;

implementation

uses SIGMA01, RVENTA70, SIGMA00, DateUtils, PVENTA15, PVENTA138;

{$R *.dfm}

procedure TfrmOrdenPedido.btProveedorClick(Sender: TObject);
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
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.open;
    tProveedor.text := dm.Query1.fieldbyname('sup_nombre').asstring;
    BitBtn1Click(Self);
  end;
end;

procedure TfrmOrdenPedido.edProveedorChange(Sender: TObject);
begin
  if trim(edProveedor.text) = '' then tProveedor.text := '';
end;

procedure TfrmOrdenPedido.edProveedorKeyDown(Sender: TObject;
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
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.open;
      tProveedor.text := dm.Query1.fieldbyname('sup_nombre').asstring;
      BitBtn1Click(Self);
    end
    else
      tProveedor.text := '';
  end;
end;

procedure TfrmOrdenPedido.FormPaint(Sender: TObject);
begin
  with frmOrdenPedido do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmOrdenPedido.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmOrdenPedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmOrdenPedido.FormCreate(Sender: TObject);
begin
  spano.Value := YearOf(date);
  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
  begin
     Grid.Columns[0].FieldName := 'PRO_CODIGO';
     Grid.Columns[0].Title.Caption := 'Código';
  end
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
  begin
     Grid.Columns[0].FieldName := 'PRO_RFABRIC';
     Grid.Columns[0].Title.Caption := 'No. Parte';
  end
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
  begin
     Grid.Columns[0].FieldName := 'PRO_RORIGINAL';
     Grid.Columns[0].Title.Caption := 'Ref. Original';
  end;

  fecha1.Date := date;
  fecha2.Date := date;
end;

procedure TfrmOrdenPedido.UpdateOptions(const Grid: TStringGrid;
  const Check: TCheckBox; const ACol, ARow: Integer);
var
  lR, lName : TRect;
begin
  if ACol < 7 then
    Check.Checked := Grid.Cells[6,ARow] = 'X'
  else
    if ACol = 7 then
      Check.Checked := Grid.Cells[ACol,ARow] = 'X';

  Check.Tag := ARow;
  if ACol < 7 then
  begin
    lR := Grid.CellRect(7, ARow);
  end
  else
  begin
    lR := Grid.CellRect(ACol, ARow);
  end;

  // lName := sgOptions.CellRect(ACol, ARow);
  {lName.Left := lName.Left + Grid.Left;
  lName.Right := lName.Right + Grid.Left;
  lName.Top := lName.Top + Grid.Top;
  lName.Bottom := lName.Bottom + Grid.Top;
  Panel.Left := lName.Left + 1;
  Panel.Top := lName.Top + 1;
  Panel.Width := (lName.Right + 1) - lName.Left;
  Panel.Height := (lName.Bottom + 1) - lName.Top;}

  // lR := sgOptions.CellRect(ACol, ARow);
  lR.Left := lR.Left + Grid.Left;
  lR.Right := lR.Right + Grid.Left;
  lR.Top := lR.Top + Grid.Top;
  lR.Bottom := lR.Bottom + Grid.Top;
  Check.Left := lR.Left + 5;
  Check.Top := lR.Top + 1;
  Check.Width := (lR.Right + 1) - lR.Left;
  Check.Height := (lR.Bottom + 1) - lR.Top;

//  Combo.SetFocus;
end;

procedure TfrmOrdenPedido.btPrintClick(Sender: TObject);
var
  criterio : string;
  fil : integer;
begin
  Application.CreateForm(tRepOrdenPedido, RepOrdenPedido);
  RepOrdenPedido.lbFecha.Caption := datetostr(date);
  RepOrdenPedido.QProv.Parameters.ParamByName('sup').Value := strtoint(trim(edProveedor.Text));

  {RepOrdenPedido.QProductos.SQL.Clear;
  RepOrdenPedido.QProductos.SQL.Add('select p.PRO_CODIGO, p.PRO_EXISTENCIA, p.PRO_NOMBRE,');
  RepOrdenPedido.QProductos.SQL.Add('p.PRO_PRECIO1, p.PRO_PRECIO2, p.PRO_PRECIO3, p.PRO_PRECIO4,');
  RepOrdenPedido.QProductos.SQL.Add('p.PRO_RFABRIC, p.PRO_RORIGINAL, p.PRO_COSTO,');
  RepOrdenPedido.QProductos.SQL.Add('p.pro_existempaque, p.pro_costoempaque');
  RepOrdenPedido.QProductos.SQL.Add('from PRODUCTOS p');
  RepOrdenPedido.QProductos.SQL.Add('where p.emp_codigo = :emp_codigo');
  RepOrdenPedido.QProductos.SQL.Add('and p.sup_codigo = :sup_codigo');
  RepOrdenPedido.QProductos.SQL.Add('and p.pro_codigo in ('+criterio+')');
  RepOrdenPedido.QProductos.SQL.Add('order by p.pro_nombre');

  RepOrdenPedido.QProductos.Open;}
  RepOrdenPedido.QProv.Open;
  RepOrdenPedido.edNota.Lines := edNota.Lines;
  QProductos.DisableControls;
  QProductos.Filter := 'cantidad > 0';
  QProductos.Filtered := true;
  RepOrdenPedido.PrinterSetup;
  QProductos.EnableControls;
  RepOrdenPedido.Preview;
  RepOrdenPedido.Destroy;
  QProductos.Filtered := false;
end;

procedure TfrmOrdenPedido.BitBtn1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  QProductos.Close;
  QProductos.Parameters.ParamByName('@sup').Value  := strtoint(trim(edProveedor.Text));
  QProductos.Parameters.ParamByName('@fec1').DataType := ftDate;
  QProductos.Parameters.ParamByName('@fec2').DataType := ftDate;
  QProductos.Parameters.ParamByName('@fec1').Value := fecha1.Date;
  QProductos.Parameters.ParamByName('@fec2').Value := fecha2.Date;
  if CheckBox1.Checked then
    QProductos.Parameters.ParamByName('@ckcompra').Value := 'TRUE'
  else
    QProductos.Parameters.ParamByName('@ckcompra').Value := 'FALSE';

  if trim(edAlma.Text) = '' then
    QProductos.Parameters.ParamByName('@alm').Value := 0
  else
    QProductos.Parameters.ParamByName('@alm').Value := StrToInt(edAlma.Text);

  QProductos.Open;

  QCompras.Close;
  QCompras.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QCompras.Parameters.ParamByName('fecha1').DataType := ftDate;
  QCompras.Parameters.ParamByName('fecha2').DataType := ftDate;
  QCompras.Parameters.ParamByName('fecha1').Value := fecha1.Date;
  QCompras.Parameters.ParamByName('fecha2').Value := fecha2.Date;
  QCompras.Open;

  Screen.Cursor := crDefault;
end;

procedure TfrmOrdenPedido.edAlmaChange(Sender: TObject);
begin
  if trim(edAlma.text) = '' then tAlma.text := '';
end;

procedure TfrmOrdenPedido.edAlmaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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

procedure TfrmOrdenPedido.btAlmaClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
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

procedure TfrmOrdenPedido.QProductosCalcFields(DataSet: TDataSet);
begin
  if QProductosconitbis.Value = 'S' then
    QProductosCalcCosto.Value    := (QProductosCosto.Value * QProductositbis.Value)/100
  else
    QProductosCalcCosto.Value    := 0;

  QProductosCostoNeto.Value := QProductosCosto.Value + QProductosCalcCosto.Value
end;

procedure TfrmOrdenPedido.GridDblClick(Sender: TObject);
begin
  QEstadisticaVenta.Close;
  QEstadisticaVenta.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QEstadisticaVenta.Parameters.ParamByName('ano').Value := spano.Value;
  QEstadisticaVenta.Parameters.ParamByName('pro').Value := QProductospro_codigo.Value;
  QEstadisticaVenta.Open;

  QEstadisticaCompra.Close;
  QEstadisticaCompra.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QEstadisticaCompra.Parameters.ParamByName('ano').Value := spano.Value;
  QEstadisticaCompra.Parameters.ParamByName('pro').Value := QProductospro_codigo.Value;
  QEstadisticaCompra.Open;
end;

procedure TfrmOrdenPedido.BitBtn2Click(Sender: TObject);
begin
  QEstadisticaVenta.Close;
  QEstadisticaVenta.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QEstadisticaVenta.Parameters.ParamByName('ano').Value := spano.Value;
  QEstadisticaVenta.Parameters.ParamByName('pro').Value := QProductospro_codigo.Value;
  QEstadisticaVenta.Open;

  QEstadisticaCompra.Close;
  QEstadisticaCompra.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QEstadisticaCompra.Parameters.ParamByName('ano').Value := spano.Value;
  QEstadisticaCompra.Parameters.ParamByName('pro').Value := QProductospro_codigo.Value;
  QEstadisticaCompra.Open;
end;

procedure TfrmOrdenPedido.Pantalladeproductos1Click(Sender: TObject);
var
  vIns, vMod, vDel : boolean;
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('Productos1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  frmMain.activaforma(tfrmProductos, tform(frmProductos));
  frmProductos.btEdit.visible   := vMod;
  frmProductos.btInsert.visible := vIns;
  frmProductos.btDelete.visible := vDel;
  frmProductos.QProductos.Close;
  frmProductos.QProductos.Parameters.ParamByName('prod').Value := QProductospro_codigo.Value;
  frmProductos.QProductos.Open;
end;

procedure TfrmOrdenPedido.Pantalladeajuste1Click(Sender: TObject);
begin
  frmMain.activaforma(tfrmAjusteInventario, tform(frmAjusteInventario));
  frmAjusteInventario.QProductos.Locate('pro_codigo',QProductospro_codigo.Value,[]);
end;

end.

