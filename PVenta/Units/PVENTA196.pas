unit PVENTA196;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Spin, Grids, DBGrids, DB, ADODB, Buttons,
  QuerySearchDlgADO, ComCtrls, DBCtrls;

type
  TfrmMargenBruto = class(TForm)
    Panel1: TPanel;
    spAno: TSpinEdit;
    cbMes: TComboBox;
    QFamilia: TADOStoredProc;
    DS_Familia: TDataSource;
    QFamiliatipo: TStringField;
    QFamiliacodigo: TIntegerField;
    QFamilianombre: TStringField;
    QFamiliaact_venta: TBCDField;
    QFamiliaact_costo: TBCDField;
    QFamiliaact_beneficio_bruto: TFloatField;
    QFamiliaact_margen_bruto: TFloatField;
    Label7: TLabel;
    btgerente: TSpeedButton;
    edgerente: TEdit;
    tgerente: TEdit;
    Search: TQrySearchDlgADO;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    edProveedor: TEdit;
    tProveedor: TEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    cbtipo: TComboBox;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    Panel2: TPanel;
    btrefresh: TBitBtn;
    btprint: TBitBtn;
    btClose: TBitBtn;
    ckperiodo: TCheckBox;
    ChkB_Itbis: TCheckBox;
    LB_1: TLabel;
    dblkcbb1: TDBLookupComboBox;
    DS_Suc: TDataSource;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    ChkB_PorSucursal: TCheckBox;
    ts1: TTabSheet;
    DBGrid_1: TDBGrid;
    procedure FormPaint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btrefreshClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QFamiliaCalcFields(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btgerenteClick(Sender: TObject);
    procedure edgerenteChange(Sender: TObject);
    procedure edgerenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure edProveedorChange(Sender: TObject);
    procedure edProveedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btprintClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure dblkcbb1Click(Sender: TObject);
    procedure ChkB_PorSucursalClick(Sender: TObject);
    procedure ChkB_ItbisClick(Sender: TObject);
    procedure ckperiodoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMargenBruto: TfrmMargenBruto;

implementation

uses SIGMA01, SIGMA00, DateUtils, RVENTA113, PVENTA208;

{$R *.dfm}

procedure TfrmMargenBruto.FormPaint(Sender: TObject);
begin
  with frmMargenBruto do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmMargenBruto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmMargenBruto.btrefreshClick(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;

  QFamilia.DisableControls;
  QFamilia.Close;
  QFamilia.Parameters.ParamByName('@emp').Value := dm.vp_cia;
  if ChkB_PorSucursal.Checked = False then
  QFamilia.Parameters.ParamByName('@suc').Value := 0 else
  QFamilia.Parameters.ParamByName('@suc').Value := dblkcbb1.KeyValue;
  QFamilia.Parameters.ParamByName('@ano').Value := spAno.Value;
  QFamilia.Parameters.ParamByName('@mes').Value := cbMes.ItemIndex+1;
  
  case PageControl1.ActivePageIndex OF
  0:QFamilia.Parameters.ParamByName('@tipo').Value := 'P';
  1:QFamilia.Parameters.ParamByName('@tipo').Value := 'F';
  2:QFamilia.Parameters.ParamByName('@tipo').Value := 'D';
  end;
  QFamilia.Parameters.ParamByName('@incluyeitbis').Value := ChkB_Itbis.Checked;


  case cbtipo.ItemIndex of
  0 : QFamilia.Parameters.ParamByName('@pormayor').Value := 'A';
  1 : QFamilia.Parameters.ParamByName('@pormayor').Value := 'K';
  2 : QFamilia.Parameters.ParamByName('@pormayor').Value := 'S';
  end;

  if Trim(edgerente.Text) <> '' then
    QFamilia.Parameters.ParamByName('@ger').Value := StrToInt(Trim(edgerente.Text))
  else
    QFamilia.Parameters.ParamByName('@ger').Value := 0;

  if Trim(edProveedor.Text) <> '' then
    QFamilia.Parameters.ParamByName('@prov').Value := StrToInt(Trim(edProveedor.Text))
  else
    QFamilia.Parameters.ParamByName('@prov').Value := 0;

  if ckperiodo.Checked then
    QFamilia.Parameters.ParamByName('@periodo').Value := 'True'
  else
    QFamilia.Parameters.ParamByName('@periodo').Value := 'False';

  QFamilia.Parameters.ParamByName('@fec1').DataType := ftDate;
  QFamilia.Parameters.ParamByName('@fec2').DataType := ftDate;

  QFamilia.Parameters.ParamByName('@fec1').Value    := fecha1.Date;
  QFamilia.Parameters.ParamByName('@fec2').Value    := fecha2.Date;

  QFamilia.Open;
  QFamilia.EnableControls;

  Screen.Cursor := crDefault;

end;

procedure TfrmMargenBruto.FormCreate(Sender: TObject);
begin
  spAno.Value := YearOf(Date);
  cbMes.ItemIndex := MonthOf(Date)-1;
  fecha1.Date := date;
  fecha2.Date := date;
end;

procedure TfrmMargenBruto.QFamiliaCalcFields(DataSet: TDataSet);
begin
  {if QFamiliaant_venta.Value > 0 then
    QFamiliaant_beneficio_bruto.Value := QFamiliaant_venta.Value - QFamiliaant_costo.Value;

  if QFamiliaant_venta.Value > 0 then
    QFamiliaant_margen_bruto.Value    := (QFamiliaant_beneficio_bruto.Value / QFamiliaant_venta.Value)*100;}

  if QFamiliaact_venta.Value > 0 then
    QFamiliaact_beneficio_bruto.Value := QFamiliaact_venta.Value - QFamiliaact_costo.Value;

  if ((QFamiliaact_beneficio_bruto.Value > 0) and (QFamiliaact_costo.Value > 0)) then
    QFamiliaact_margen_bruto.Value    := (QFamiliaact_beneficio_bruto.Value / QFamiliaact_costo.Value)*100;
end;

procedure TfrmMargenBruto.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if copy(QFamilianombre.Value,1,5) = 'TOTAL' then
  begin
     DBGrid1.canvas.font.Style := [fsBold];
     DBGrid1.DefaultDrawcolumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TfrmMargenBruto.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if copy(QFamilianombre.Value,1,5) = 'TOTAL' then
  begin
     DBGrid2.canvas.font.Style := [fsBold];
     DBGrid2.DefaultDrawcolumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TfrmMargenBruto.btgerenteClick(Sender: TObject);
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

procedure TfrmMargenBruto.edgerenteChange(Sender: TObject);
begin
  if trim(edgerente.text) = '' then tgerente.text := '';
end;

procedure TfrmMargenBruto.edgerenteKeyDown(Sender: TObject; var Key: Word;
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
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      if dm.Query1.Recordcount > 0 then
      begin
        tgerente.text := dm.Query1.fieldbyname('ger_nombre').asstring;
      end;
    end
    else
      tgerente.text := '';
  end;
end;

procedure TfrmMargenBruto.FormActivate(Sender: TObject);
begin
  //  if not QFacturas.active then QFacturas.open;
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.PAramByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    dblkcbb1.KeyValue := QSucursalsuc_codigo.Value;
  end;
  
  frmMain.ExportXLS.Sheets[0].DBGrid := DBGrid1;
  frmMain.ExportXLS.Sheets[1].DBGrid := DBGrid2;
  frmMain.ExportXLS.Sheets[2].DBGrid := DBGrid2;

  frmMain.ExportXLS.Sheets[0].Exported := True;
  frmMain.ExportXLS.Sheets[1].Exported := true;
  frmMain.ExportXLS.Sheets[2].Exported := False;

  frmMain.ExportXLS.Sheets[0].Header.Clear;
  frmMain.ExportXLS.Sheets[0].Header.Add('Ventas por Familia');

  frmMain.ExportXLS.Sheets[1].Header.Clear;
  frmMain.ExportXLS.Sheets[1].Header.Add('Ventas por Departamento');

  {if frmMain.GrabaXLS.Execute then
  begin
    frmMain.ExportXLS.FileName := frmMain.GrabaXLS.FileName;
    frmMain.ExportXLS.Execute;
  end;}
end;

procedure TfrmMargenBruto.edProveedorChange(Sender: TObject);
begin
  if trim(edProveedor.text) = '' then tProveedor.text := '';
end;

procedure TfrmMargenBruto.edProveedorKeyDown(Sender: TObject;
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

procedure TfrmMargenBruto.SpeedButton1Click(Sender: TObject);
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

procedure TfrmMargenBruto.btprintClick(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  case PageControl1.ActivePageIndex of
  0:begin
    Application.CreateForm(tRBeneficioBruto, RBeneficioBruto);
    RBeneficioBruto.lbGerente.Caption   := tgerente.Text;
    RBeneficioBruto.lbProveedor.Caption := tProveedor.Text;
    if ckperiodo.Checked then
      RBeneficioBruto.lbMes.Caption     := 'Del '+DateToStr(fecha1.Date) + ' Al '+DateToStr(fecha2.Date)
    else
      RBeneficioBruto.lbMes.Caption     := cbMes.Text+'/'+inttostr(spAno.Value);
    RBeneficioBruto.lbTipo.Caption      := cbtipo.Text;

    RBeneficioBruto.lbnombre.Caption := 'NOMBRE DEL PRODUCTO';
  end;
  1:begin
    Application.CreateForm(tRBeneficioBruto, RBeneficioBruto);
    RBeneficioBruto.lbGerente.Caption   := tgerente.Text;
    RBeneficioBruto.lbProveedor.Caption := tProveedor.Text;
    if ckperiodo.Checked then
      RBeneficioBruto.lbMes.Caption     := 'Del '+DateToStr(fecha1.Date) + ' Al '+DateToStr(fecha2.Date)
    else
      RBeneficioBruto.lbMes.Caption     := cbMes.Text+'/'+inttostr(spAno.Value);
    RBeneficioBruto.lbTipo.Caption      := cbtipo.Text;

    RBeneficioBruto.lbnombre.Caption := 'NOMBRE DE LA FAMILIA';
  end;
  2:begin
    Application.CreateForm(tRBeneficioBruto, RBeneficioBruto);
    RBeneficioBruto.lbGerente.Caption   := tgerente.Text;
    RBeneficioBruto.lbProveedor.Caption := tProveedor.Text;
    if ckperiodo.Checked then
      RBeneficioBruto.lbMes.Caption     := 'Del '+DateToStr(fecha1.Date) + ' Al '+DateToStr(fecha2.Date)
    else
      RBeneficioBruto.lbMes.Caption     := cbMes.Text+'/'+inttostr(spAno.Value);
    RBeneficioBruto.lbTipo.Caption      := cbtipo.Text;

    RBeneficioBruto.lbnombre.Caption := 'NOMBRE DEL DEPARTAMENTO';
  end;
  end;
  Screen.Cursor := crDefault;
  RBeneficioBruto.PrinterSetup;
  RBeneficioBruto.Preview;
  RBeneficioBruto.Destroy;
end;

procedure TfrmMargenBruto.DBGrid1DblClick(Sender: TObject);
begin
  Application.CreateForm(tfrmDetalleMargen, frmDetalleMargen);
  if cbtipo.ItemIndex = 1 then
  begin
    frmDetalleMargen.QDetalle.SQL.Clear;
    frmDetalleMargen.QDetalle.SQL.Add('select');
    frmDetalleMargen.QDetalle.SQL.Add('null as fecha, null as tipo, null as numero, null as nombre,');
    frmDetalleMargen.QDetalle.SQL.Add('null as total, null as costo,');
    frmDetalleMargen.QDetalle.SQL.Add('null as precio, null as itbis, null as producto, null as cantidad');
    frmDetalleMargen.QDetalle.SQL.Add('union all');
    frmDetalleMargen.QDetalle.SQL.Add('select m.fecha, null, m.ticket, m.nombre, m.total, t.costo,');
    frmDetalleMargen.QDetalle.SQL.Add('t.precio, t.itbis, t.descripcion, t.cantidad');
    frmDetalleMargen.QDetalle.SQL.Add('from montos_ticket m, ticket t, productos p');
    frmDetalleMargen.QDetalle.SQL.Add('where m.caja = t.caja and m.fecha = t.fecha and m.usu_codigo = t.usu_codigo');
    frmDetalleMargen.QDetalle.SQL.Add('and m.ticket = t.ticket and t.producto = p.pro_codigo');
    frmDetalleMargen.QDetalle.SQL.Add('and p.fam_codigo = :fam1 and year(m.fecha) = :ano1');
    frmDetalleMargen.QDetalle.SQL.Add('and month(m.fecha) = :mes1 order by 1,2');
    frmDetalleMargen.QDetalle.SQL.Add('and p.emp_codigo = :emp');
    frmDetalleMargen.QDetalle.Parameters.ParamByName('fam1').Value := QFamiliacodigo.Value;
    frmDetalleMargen.QDetalle.Parameters.ParamByName('ano1').Value := spAno.Value;
    frmDetalleMargen.QDetalle.Parameters.ParamByName('mes1').Value := cbMes.ItemIndex+1;
    frmDetalleMargen.QDetalle.Parameters.ParamByName('emp').Value  := dm.QParametrosPAR_INVEMPRESA.Value;
  end
  else if cbtipo.ItemIndex = 2 then
  begin
    frmDetalleMargen.QDetalle.SQL.Clear;
    frmDetalleMargen.QDetalle.SQL.Add('select');
    frmDetalleMargen.QDetalle.SQL.Add('null as fecha, null as tipo, null as numero, null as nombre,');
    frmDetalleMargen.QDetalle.SQL.Add('null as total, null as costo,');
    frmDetalleMargen.QDetalle.SQL.Add('null as precio, null as itbis, null as producto, null as cantidad');
    frmDetalleMargen.QDetalle.SQL.Add('union all');
    frmDetalleMargen.QDetalle.SQL.Add('select');
    frmDetalleMargen.QDetalle.SQL.Add('f.fac_fecha, f.tfa_codigo, f.fac_numero, f.fac_nombre, f.fac_total,');
    frmDetalleMargen.QDetalle.SQL.Add('d.det_costo, d.det_precio, case d.det_conitbis when '+QuotedStr('S')+' then d.det_itbis else 0 end, d.pro_nombre, d.det_cantidad');
    frmDetalleMargen.QDetalle.SQL.Add('from facturas f, det_factura d, productos p');
    frmDetalleMargen.QDetalle.SQL.Add('where f.emp_codigo = d.emp_codigo');
    frmDetalleMargen.QDetalle.SQL.Add('and f.suc_codigo = d.suc_codigo');
    frmDetalleMargen.QDetalle.SQL.Add('and f.tfa_codigo = d.tfa_codigo');
    frmDetalleMargen.QDetalle.SQL.Add('and f.fac_forma = d.fac_forma');
    frmDetalleMargen.QDetalle.SQL.Add('and f.fac_numero = d.fac_numero');
    frmDetalleMargen.QDetalle.SQL.Add('and d.pro_codigo = p.pro_codigo');
    frmDetalleMargen.QDetalle.SQL.Add('and p.emp_codigo = :emp');
    frmDetalleMargen.QDetalle.SQL.Add('and p.fam_codigo = :fam1');
    frmDetalleMargen.QDetalle.SQL.Add('and year(f.fac_fecha) = :ano1');
    frmDetalleMargen.QDetalle.SQL.Add('and month(f.fac_fecha) = :mes1');
    frmDetalleMargen.QDetalle.SQL.Add('order by 1,2');
    frmDetalleMargen.QDetalle.Parameters.ParamByName('fam1').Value := QFamiliacodigo.Value;
    frmDetalleMargen.QDetalle.Parameters.ParamByName('ano1').Value := spAno.Value;
    frmDetalleMargen.QDetalle.Parameters.ParamByName('mes1').Value := cbMes.ItemIndex+1;
    frmDetalleMargen.QDetalle.Parameters.ParamByName('emp').Value  := dm.QParametrosPAR_INVEMPRESA.Value;
  end
  else
  begin
    frmDetalleMargen.QDetalle.Parameters.ParamByName('fam1').Value := QFamiliacodigo.Value;
    frmDetalleMargen.QDetalle.Parameters.ParamByName('fam2').Value := QFamiliacodigo.Value;
    frmDetalleMargen.QDetalle.Parameters.ParamByName('ano1').Value := spAno.Value;
    frmDetalleMargen.QDetalle.Parameters.ParamByName('ano2').Value := spAno.Value;
    frmDetalleMargen.QDetalle.Parameters.ParamByName('mes1').Value := cbMes.ItemIndex+1;
    frmDetalleMargen.QDetalle.Parameters.ParamByName('mes2').Value := cbMes.ItemIndex+1;
    frmDetalleMargen.QDetalle.Parameters.ParamByName('emp').Value  := dm.QParametrosPAR_INVEMPRESA.Value;
  end;
  frmDetalleMargen.QDetalle.open;
  frmDetalleMargen.ShowModal;
  frmDetalleMargen.Release;
end;

procedure TfrmMargenBruto.DBGrid2DblClick(Sender: TObject);
begin
  Application.CreateForm(tfrmDetalleMargen, frmDetalleMargen);
  if cbtipo.ItemIndex = 1 then
  begin
    frmDetalleMargen.QDetalle.SQL.Clear;
    frmDetalleMargen.QDetalle.SQL.Add('select');
    frmDetalleMargen.QDetalle.SQL.Add('null as fecha, null as tipo, null as numero, null as nombre,');
    frmDetalleMargen.QDetalle.SQL.Add('null as total, null as costo,');
    frmDetalleMargen.QDetalle.SQL.Add('null as precio, null as itbis, null as producto, null as cantidad');
    frmDetalleMargen.QDetalle.SQL.Add('union all');
    frmDetalleMargen.QDetalle.SQL.Add('select m.fecha, null, m.ticket, m.nombre, m.total, t.costo,');
    frmDetalleMargen.QDetalle.SQL.Add('t.precio, t.itbis, t.descripcion, t.cantidad');
    frmDetalleMargen.QDetalle.SQL.Add('from montos_ticket m, ticket t, productos p');
    frmDetalleMargen.QDetalle.SQL.Add('where m.caja = t.caja and m.fecha = t.fecha and m.usu_codigo = t.usu_codigo');
    frmDetalleMargen.QDetalle.SQL.Add('and m.ticket = t.ticket and t.producto = p.pro_codigo');
    frmDetalleMargen.QDetalle.SQL.Add('and p.dep_codigo = :fam1 and year(m.fecha) = :ano1');
    frmDetalleMargen.QDetalle.SQL.Add('and month(m.fecha) = :mes1 order by 1,2');
    frmDetalleMargen.QDetalle.Parameters.ParamByName('fam1').Value := QFamiliacodigo.Value;
    frmDetalleMargen.QDetalle.Parameters.ParamByName('ano1').Value := spAno.Value;
    frmDetalleMargen.QDetalle.Parameters.ParamByName('mes1').Value := cbMes.ItemIndex+1;
  end
  else if cbtipo.ItemIndex = 2 then
  begin
    frmDetalleMargen.QDetalle.SQL.Clear;
    frmDetalleMargen.QDetalle.SQL.Add('select');
    frmDetalleMargen.QDetalle.SQL.Add('null as fecha, null as tipo, null as numero, null as nombre,');
    frmDetalleMargen.QDetalle.SQL.Add('null as total, null as costo,');
    frmDetalleMargen.QDetalle.SQL.Add('null as precio, null as itbis, null as producto, null as cantidad');
    frmDetalleMargen.QDetalle.SQL.Add('union all');
    frmDetalleMargen.QDetalle.SQL.Add('select');
    frmDetalleMargen.QDetalle.SQL.Add('f.fac_fecha, f.tfa_codigo, f.fac_numero, f.fac_nombre, f.fac_total,');
    frmDetalleMargen.QDetalle.SQL.Add('d.det_costo, d.det_precio, case d.det_conitbis when '+QuotedStr('S')+' then d.det_itbis else 0 end, d.pro_nombre, d.det_cantidad');
    frmDetalleMargen.QDetalle.SQL.Add('from facturas f, det_factura d, productos p');
    frmDetalleMargen.QDetalle.SQL.Add('where f.emp_codigo = d.emp_codigo');
    frmDetalleMargen.QDetalle.SQL.Add('and f.suc_codigo = d.suc_codigo');
    frmDetalleMargen.QDetalle.SQL.Add('and f.tfa_codigo = d.tfa_codigo');
    frmDetalleMargen.QDetalle.SQL.Add('and f.fac_forma = d.fac_forma');
    frmDetalleMargen.QDetalle.SQL.Add('and f.fac_numero = d.fac_numero');
    frmDetalleMargen.QDetalle.SQL.Add('and d.pro_codigo = p.pro_codigo');
    frmDetalleMargen.QDetalle.SQL.Add('and p.dep_codigo = :fam1');
    frmDetalleMargen.QDetalle.SQL.Add('and year(f.fac_fecha) = :ano1');
    frmDetalleMargen.QDetalle.SQL.Add('and month(f.fac_fecha) = :mes1');
    frmDetalleMargen.QDetalle.SQL.Add('order by 1,2');
    frmDetalleMargen.QDetalle.Parameters.ParamByName('fam1').Value := QFamiliacodigo.Value;
    frmDetalleMargen.QDetalle.Parameters.ParamByName('ano1').Value := spAno.Value;
    frmDetalleMargen.QDetalle.Parameters.ParamByName('mes1').Value := cbMes.ItemIndex+1;
  end
  else
  begin
    frmDetalleMargen.QDetalle.SQL.Clear;
    frmDetalleMargen.QDetalle.SQL.Add('select');
    frmDetalleMargen.QDetalle.SQL.Add('null as fecha, null as tipo, null as numero, null as nombre,');
    frmDetalleMargen.QDetalle.SQL.Add('null as total, null as costo,');
    frmDetalleMargen.QDetalle.SQL.Add('null as precio, null as itbis, null as producto, null as cantidad');
    frmDetalleMargen.QDetalle.SQL.Add('union all');
    frmDetalleMargen.QDetalle.SQL.Add('select');
    frmDetalleMargen.QDetalle.SQL.Add('f.fac_fecha, f.tfa_codigo, f.fac_numero, f.fac_nombre, f.fac_total,');
    frmDetalleMargen.QDetalle.SQL.Add('d.det_costo, d.det_precio, case d.det_conitbis when '+QuotedStr('S')+' then d.det_itbis else 0 end, d.pro_nombre, d.det_cantidad');
    frmDetalleMargen.QDetalle.SQL.Add('from facturas f, det_factura d, productos p');
    frmDetalleMargen.QDetalle.SQL.Add('where f.emp_codigo = d.emp_codigo');
    frmDetalleMargen.QDetalle.SQL.Add('and f.suc_codigo = d.suc_codigo');
    frmDetalleMargen.QDetalle.SQL.Add('and f.tfa_codigo = d.tfa_codigo');
    frmDetalleMargen.QDetalle.SQL.Add('and f.fac_forma = d.fac_forma');
    frmDetalleMargen.QDetalle.SQL.Add('and f.fac_numero = d.fac_numero');
    frmDetalleMargen.QDetalle.SQL.Add('and d.pro_codigo = p.pro_codigo');
    frmDetalleMargen.QDetalle.SQL.Add('and p.dep_codigo = :fam1');
    frmDetalleMargen.QDetalle.SQL.Add('and year(f.fac_fecha) = :ano1');
    frmDetalleMargen.QDetalle.SQL.Add('and month(f.fac_fecha) = :mes1');
    frmDetalleMargen.QDetalle.SQL.Add('union all');
    frmDetalleMargen.QDetalle.SQL.Add('select m.fecha, null, m.ticket, m.nombre, m.total, t.costo,');
    frmDetalleMargen.QDetalle.SQL.Add('t.precio, t.itbis, t.descripcion, t.cantidad');
    frmDetalleMargen.QDetalle.SQL.Add('from montos_ticket m, ticket t, productos p');
    frmDetalleMargen.QDetalle.SQL.Add('where m.caja = t.caja and m.fecha = t.fecha and m.usu_codigo = t.usu_codigo');
    frmDetalleMargen.QDetalle.SQL.Add('and m.ticket = t.ticket and t.producto = p.pro_codigo');
    frmDetalleMargen.QDetalle.SQL.Add('and p.dep_codigo = :fam2 and year(m.fecha) = :ano2');
    frmDetalleMargen.QDetalle.SQL.Add('and month(m.fecha) = :mes2 order by 1,2');
    frmDetalleMargen.QDetalle.Parameters.ParamByName('fam1').Value := QFamiliacodigo.Value;
    frmDetalleMargen.QDetalle.Parameters.ParamByName('fam2').Value := QFamiliacodigo.Value;
    frmDetalleMargen.QDetalle.Parameters.ParamByName('ano1').Value := spAno.Value;
    frmDetalleMargen.QDetalle.Parameters.ParamByName('ano2').Value := spAno.Value;
    frmDetalleMargen.QDetalle.Parameters.ParamByName('mes1').Value := cbMes.ItemIndex+1;
    frmDetalleMargen.QDetalle.Parameters.ParamByName('mes2').Value := cbMes.ItemIndex+1;
  end;
  frmDetalleMargen.QDetalle.open;
  frmDetalleMargen.ShowModal;
  frmDetalleMargen.Release;
end;

procedure TfrmMargenBruto.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMargenBruto.PageControl1Change(Sender: TObject);
begin
btrefreshClick(Sender);
end;

procedure TfrmMargenBruto.dblkcbb1Click(Sender: TObject);
begin
btrefreshClick(Sender);
end;

procedure TfrmMargenBruto.ChkB_PorSucursalClick(Sender: TObject);
begin
btrefreshClick(Sender);
end;

procedure TfrmMargenBruto.ChkB_ItbisClick(Sender: TObject);
begin
btrefreshClick(Sender);
end;

procedure TfrmMargenBruto.ckperiodoClick(Sender: TObject);
begin
btrefreshClick(Sender);
end;

end.
