unit PVENTA120;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DB, IBCustomDataSet, IBQuery, Grids, DBGrids,
  TeEngine, Series, ExtCtrls, TeeProcs, Chart, DbChart, StdCtrls, Spin,
  Buttons, ADODB, cxClasses, dxNavBarBase, dxNavBarCollns, dxNavBar,
  ActnList, XPStyleActnCtrls, ActnMan, ToolWin, ActnCtrls, ActnMenus,
  AdvChartView, DBAdvChartView, Mask, DBCtrls, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridLevel, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxLookAndFeels,
  cxLookAndFeelPainters, cxNavigator;

type
  TfrmEstadisticas = class(TForm)
    Group1: TdxNavBarGroup;
    Group2: TdxNavBarGroup;
    dxCompraGeneral: TdxNavBarItem;
    dxCompraFamilia: TdxNavBarItem;
    dxCompraProducto: TdxNavBarItem;
    dxCompraGerente: TdxNavBarItem;
    dxCompraDepto: TdxNavBarItem;
    ActionList1: TActionList;
    aSalir: TAction;
    aExportar: TAction;
    aImprimir: TAction;
    ActionManager1: TActionManager;
    ActionMainMenuBar1: TActionMainMenuBar;
    CoolBar1: TCoolBar;
    QCompras: TADOQuery;
    QComprasMes: TStringField;
    QComprasNMes: TIntegerField;
    QComprasTotal: TBCDField;
    aComprasGeneral: TAction;
    Panel1: TPanel;
    cbAno: TComboBox;
    pnProveedor: TPanel;
    dsCompras: TDataSource;
    dxComprasProveedor: TdxNavBarItem;
    QMaster: TADOQuery;
    dsMaster: TDataSource;
    aComprasProveedor: TAction;
    aComprasProducto: TAction;
    DBAdvChartView1: TDBAdvChartView;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    aComprasGerente: TAction;
    aCompraFamilia: TAction;
    aCompraDepartamento: TAction;
    dxVentaGeneral: TdxNavBarItem;
    dxVentaProducto: TdxNavBarItem;
    dxVentaGerente: TdxNavBarItem;
    dxVentaDepto: TdxNavBarItem;
    dxVentaFamilia: TdxNavBarItem;
    aVentaGeneral: TAction;
    QVentas: TADOQuery;
    dsVentas: TDataSource;
    QVentasMes: TStringField;
    QVentasNMes: TIntegerField;
    QVentasTotal: TBCDField;
    aVentaFamilia: TAction;
    dxNavBar1: TdxNavBar;
    aVentaDepto: TAction;
    aVentaGerente: TAction;
    aVentaProveedor: TAction;
    aVentaPasillo: TAction;
    dxVentaPasillo: TdxNavBarItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure aSalirExecute(Sender: TObject);
    procedure aComprasGeneralExecute(Sender: TObject);
    procedure aComprasProveedorExecute(Sender: TObject);
    procedure aComprasProductoExecute(Sender: TObject);
    procedure dsMasterDataChange(Sender: TObject; Field: TField);
    procedure aComprasGerenteExecute(Sender: TObject);
    procedure aCompraFamiliaExecute(Sender: TObject);
    procedure aCompraDepartamentoExecute(Sender: TObject);
    procedure aVentaGeneralExecute(Sender: TObject);
    procedure aVentaFamiliaExecute(Sender: TObject);
    procedure aVentaDeptoExecute(Sender: TObject);
    procedure aVentaGerenteExecute(Sender: TObject);
    procedure aVentaPasilloExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Const
  DMes : array[1..12] of String = ('Enero','Febrero','Marzo',
                                  'Abril','Mayo','Junio',
                                  'Julio','Agosto','Septiembre',
                                  'Octubre','Noviembre','Diciembre');

var
  frmEstadisticas: TfrmEstadisticas;

implementation

uses SIGMA01, SIGMA00, DateUtils;

{$R *.dfm}

procedure TfrmEstadisticas.FormCreate(Sender: TObject);
var I,vAno:integer;
begin
  vAno := YearOf(now)-10;
  cbAno.Items.Clear;
  for I := 0 to 20 do
      begin
        cbAno.Items.Add(inttostr(vAno));
        Inc(vAno);
      end;
  //end;
  cbAno.ItemIndex := cbAno.Items.IndexOf(inttostr(yearof(date)));
end;

procedure TfrmEstadisticas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?', mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmEstadisticas.FormPaint(Sender: TObject);
begin
  with frmEstadisticas do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmEstadisticas.aSalirExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmEstadisticas.aComprasGeneralExecute(Sender: TObject);
var
  a : integer;
begin
  Screen.Cursor := crHourGlass;

  QMaster.SQL.Clear;

  QCompras.Close;

  DBAdvChartView1.Panes[0]. DataSource := dsCompras;

  QCompras.SQL.Clear;
  QCompras.SQL.Add('select case when month(f.fac_fecha) = 01 then '+QuotedStr('Ene'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 02 then '+QuotedStr('Feb'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 03 then '+QuotedStr('Mar'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 04 then '+QuotedStr('Abr'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 05 then '+QuotedStr('May'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 06 then '+QuotedStr('Jun'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 07 then '+QuotedStr('Jul'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 08 then '+QuotedStr('Ago'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 09 then '+QuotedStr('Sep'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 10 then '+QuotedStr('Oct'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 11 then '+QuotedStr('Nov'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 12 then '+QuotedStr('Dic'));
  QCompras.SQL.Add('end Mes, month(f.fac_fecha) as NMes,');
  QCompras.SQL.Add('sum(f.fac_total - f.fac_itbis) as Total');
  QCompras.SQL.Add('from provfacturas f where f.emp_codigo = :emp and year(f.fac_fecha) = :ano');
  QCompras.SQL.Add('and f.fac_status <> '+QuotedStr('ANU'));
  QCompras.SQL.Add('group by case when month(f.fac_fecha) = 01 then '+QuotedStr('Ene'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 02 then '+QuotedStr('Feb'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 03 then '+QuotedStr('Mar'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 04 then '+QuotedStr('Abr'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 05 then '+QuotedStr('May'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 06 then '+QuotedStr('Jun'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 07 then '+QuotedStr('Jul'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 08 then '+QuotedStr('Ago'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 09 then '+QuotedStr('Sep'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 10 then '+QuotedStr('Oct'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 11 then '+QuotedStr('Nov'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 12 then '+QuotedStr('Dic'));
  QCompras.SQL.Add('end, month(f.fac_fecha)');
  QCompras.SQL.Add('order by month(f.fac_fecha)');
  QCompras.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QCompras.Parameters.ParamByName('ano').Value := StrToInt(cbAno.Text);
  QCompras.Open;

  for a := 0 to cxGrid1DBTableView1.ColumnCount -1 do
    cxGrid1DBTableView1.Columns[0].Destroy;

  for a := 0 to QCompras.FieldCount-1 do
  begin
    cxGrid1DBTableView1.CreateColumn;
    cxGrid1DBTableView1.Columns[a].DataBinding.FieldName := QCompras.Fields[a].FieldName;
  end;

  cxGrid1DBTableView1.DataController.DataSource := dsCompras;
  QCompras.DataSource := nil;

  Screen.Cursor := crDefault;
end;

procedure TfrmEstadisticas.aComprasProveedorExecute(Sender: TObject);
var
  a : integer;
begin
  Screen.Cursor := crHourGlass;

  for a := 0 to cxGrid1DBTableView1.ColumnCount -1 do
    cxGrid1DBTableView1.Columns[0].Destroy;

  QCompras.Close;

  DBAdvChartView1.Panes[0]. DataSource := dsCompras;

  QCompras.SQL.Clear;
  QCompras.SQL.Add('select case when month(f.fac_fecha) = 01 then '+QuotedStr('Ene'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 02 then '+QuotedStr('Feb'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 03 then '+QuotedStr('Mar'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 04 then '+QuotedStr('Abr'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 05 then '+QuotedStr('May'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 06 then '+QuotedStr('Jun'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 07 then '+QuotedStr('Jul'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 08 then '+QuotedStr('Ago'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 09 then '+QuotedStr('Sep'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 10 then '+QuotedStr('Oct'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 11 then '+QuotedStr('Nov'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 12 then '+QuotedStr('Dic'));
  QCompras.SQL.Add('end Mes, month(f.fac_fecha) as NMes,');
  QCompras.SQL.Add('sum(f.fac_total - f.fac_itbis) as Total');
  QCompras.SQL.Add('from provfacturas f where f.emp_codigo = :emp and year(f.fac_fecha) = :ano');
  QCompras.SQL.Add('and f.fac_status <> '+QuotedStr('ANU'));
  QCompras.SQL.Add('and f.sup_codigo = :cod');
  QCompras.SQL.Add('group by case when month(f.fac_fecha) = 01 then '+QuotedStr('Ene'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 02 then '+QuotedStr('Feb'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 03 then '+QuotedStr('Mar'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 04 then '+QuotedStr('Abr'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 05 then '+QuotedStr('May'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 06 then '+QuotedStr('Jun'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 07 then '+QuotedStr('Jul'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 08 then '+QuotedStr('Ago'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 09 then '+QuotedStr('Sep'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 10 then '+QuotedStr('Oct'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 11 then '+QuotedStr('Nov'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 12 then '+QuotedStr('Dic'));
  QCompras.SQL.Add('end, month(f.fac_fecha)');
  QCompras.SQL.Add('order by month(f.fac_fecha)');
  //QCompras.DataSource := dsMaster;

  QMaster.Close;
  QMaster.SQL.Clear;
  QMaster.SQL.Add('select p.sup_codigo as Codigo,');
  QMaster.SQL.Add('p.sup_nombre as Nombre, p.sup_rnc as RNC,');
  QMaster.SQL.Add('sum(f.fac_total-f.fac_itbis) as Total');
  QMaster.SQL.Add('from proveedores p, provfacturas f');
  QMaster.SQL.Add('where p.sup_codigo = f.sup_codigo');
  QMaster.SQl.Add('and p.emp_codigo = :invemp');
  QMaster.SQL.Add('and f.emp_codigo = :emp');
  QMaster.SQL.Add('and year(f.fac_fecha) = :ano');
  QMaster.SQL.Add('and p.sup_status = :st');
  QMaster.SQL.Add('group by p.sup_codigo, p.sup_nombre, p.sup_rnc');
  QMaster.SQL.Add('order by p.sup_nombre');
  QMaster.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QMaster.Parameters.ParamByName('invemp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
  QMaster.Parameters.ParamByName('st').Value  := 'ACT';
  QMaster.Parameters.ParamByName('ano').Value := StrToInt(cbAno.Text);
  cxGrid1DBTableView1.DataController.DataSource := dsMaster;
  QMaster.Open;
  cxGrid1.SetFocus;
  (QMaster.Fields[3] as TBCDField).currency := true;
  QMaster.Fields[2].DisplayWidth := 15;
  QMaster.Fields[3].DisplayWidth := 15;

  QCompras.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QCompras.Parameters.ParamByName('ano').Value := StrToInt(cbAno.Text);
  QCompras.Parameters.ParamByName('cod').Value := QMaster.FieldByName('Codigo').Value;
  QCompras.Open;

  for a := 0 to QMaster.FieldCount-1 do
  begin
    cxGrid1DBTableView1.CreateColumn;
    cxGrid1DBTableView1.Columns[a].DataBinding.FieldName := QMaster.Fields[a].FieldName;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfrmEstadisticas.aComprasProductoExecute(Sender: TObject);
var
  a : integer;
begin
  Screen.Cursor := crHourGlass;

  for a := 0 to cxGrid1DBTableView1.ColumnCount -1 do
    cxGrid1DBTableView1.Columns[0].Destroy;

  QMaster.Close;
  QMaster.SQL.Clear;
  QMaster.SQL.Add('select p.pro_codigo as Codigo, substring(p.pro_roriginal,1,30) as [Ref Original],');
  QMaster.SQL.Add('substring(p.pro_nombre,1,100) as Nombre,');
  QMaster.SQL.Add('sum(d.det_cantidad) as Cantidad, sum(d.det_cantidad * d.det_costo) as Total');
  QMaster.SQL.Add('from productos p, provfacturas f, det_provfacturas d');
  QMaster.SQL.Add('where f.emp_codigo = d.emp_codigo');
  QMaster.SQL.Add('and f.sup_codigo = d.sup_codigo');
  QMaster.SQL.Add('and f.fac_numero = d.fac_numero');
  QMaster.SQL.Add('and p.pro_codigo = d.pro_codigo');
  QMaster.SQL.Add('and f.emp_codigo = :emp');
  QMaster.SQL.Add('and year(f.fac_fecha) = :ano');
  QMaster.SQL.Add('and f.fac_status <> :st');
  QMaster.SQL.Add('group by p.pro_codigo, p.pro_roriginal, p.pro_nombre');
  QMaster.SQL.Add('order by p.pro_nombre');
  QMaster.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QMaster.Parameters.ParamByName('st').Value  := 'ANU';
  QMaster.Parameters.ParamByName('ano').Value := StrToInt(cbAno.Text);
  cxGrid1DBTableView1.DataController.DataSource := dsMaster;
  QMaster.Open;
  (QMaster.Fields[4] as TBCDField).currency := true;
  QMaster.Fields[1].DisplayWidth := 15;
  QMaster.Fields[2].DisplayWidth := 60;
  QMaster.Fields[3].DisplayWidth := 10;
  QMaster.Fields[4].DisplayWidth := 20;

  QCompras.Close;

  DBAdvChartView1.Panes[0]. DataSource := dsCompras;

  QCompras.SQL.Clear;
  QCompras.SQL.Add('select case when month(f.fac_fecha) = 01 then '+QuotedStr('Ene'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 02 then '+QuotedStr('Feb'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 03 then '+QuotedStr('Mar'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 04 then '+QuotedStr('Abr'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 05 then '+QuotedStr('May'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 06 then '+QuotedStr('Jun'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 07 then '+QuotedStr('Jul'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 08 then '+QuotedStr('Ago'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 09 then '+QuotedStr('Sep'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 10 then '+QuotedStr('Oct'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 11 then '+QuotedStr('Nov'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 12 then '+QuotedStr('Dic'));
  QCompras.SQL.Add('end Mes, month(f.fac_fecha) as NMes,');
  QCompras.SQL.Add('sum(d.det_cantidad * d.det_costo) as Total');
  QCompras.SQL.Add('from provfacturas f, det_provfacturas d');
  QCompras.SQL.Add('where f.emp_codigo = d.emp_codigo');
  QCompras.SQL.Add('and f.sup_codigo = d.sup_codigo');
  QCompras.SQL.Add('and f.fac_numero = d.fac_numero');
  QCompras.SQL.Add('and f.emp_codigo = :emp and year(f.fac_fecha) = :ano');
  QCompras.SQL.Add('and f.fac_status <> '+QuotedStr('ANU'));
  QCompras.SQL.Add('and d.pro_codigo = :cod');
  QCompras.SQL.Add('group by case when month(f.fac_fecha) = 01 then '+QuotedStr('Ene'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 02 then '+QuotedStr('Feb'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 03 then '+QuotedStr('Mar'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 04 then '+QuotedStr('Abr'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 05 then '+QuotedStr('May'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 06 then '+QuotedStr('Jun'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 07 then '+QuotedStr('Jul'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 08 then '+QuotedStr('Ago'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 09 then '+QuotedStr('Sep'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 10 then '+QuotedStr('Oct'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 11 then '+QuotedStr('Nov'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 12 then '+QuotedStr('Dic'));
  QCompras.SQL.Add('end, month(f.fac_fecha)');
  QCompras.SQL.Add('order by month(f.fac_fecha)');
  QCompras.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QCompras.Parameters.ParamByName('ano').Value := StrToInt(cbAno.Text);
  QCompras.DataSource := dsMaster;
  QCompras.Open;

  for a := 0 to QMaster.FieldCount-1 do
  begin
    cxGrid1DBTableView1.CreateColumn;
    cxGrid1DBTableView1.Columns[a].DataBinding.FieldName := QMaster.Fields[a].FieldName;
  end;

  cxGrid1DBTableView1.ViewData;

  Screen.Cursor := crDefault;
end;

procedure TfrmEstadisticas.dsMasterDataChange(Sender: TObject;
  Field: TField);
begin
  if dxNavBar1.ActiveGroupIndex = 0 then
  begin
    Screen.Cursor := crHourGlass;

    QCompras.Close;
    QCompras.Parameters.ParamByName('emp').Value := dm.vp_cia;
    QCompras.Parameters.ParamByName('ano').Value := StrToInt(cbAno.Text);
    QCompras.Parameters.ParamByName('cod').Value := QMaster.FieldByName('Codigo').Value;
    QCompras.Open;

    Screen.Cursor := crDefault;
  end
  else if dxNavBar1.ActiveGroupIndex = 1 then
  begin
    Screen.Cursor := crHourGlass;

    QVentas.Close;
    QVentas.Parameters.ParamByName('emp').Value := dm.vp_cia;
    QVentas.Parameters.ParamByName('ano').Value := StrToInt(cbAno.Text);
    QVentas.Parameters.ParamByName('cod').Value := QMaster.FieldByName('Codigo').Value;
    QVentas.Open;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmEstadisticas.aComprasGerenteExecute(Sender: TObject);
var
  a : integer;
begin
  Screen.Cursor := crHourGlass;

  for a := 0 to cxGrid1DBTableView1.ColumnCount -1 do
    cxGrid1DBTableView1.Columns[0].Destroy;

  QCompras.Close;

  DBAdvChartView1.Panes[0]. DataSource := dsCompras;

  QCompras.SQL.Clear;
  QCompras.SQL.Add('select case when month(f.fac_fecha) = 01 then '+QuotedStr('Ene'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 02 then '+QuotedStr('Feb'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 03 then '+QuotedStr('Mar'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 04 then '+QuotedStr('Abr'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 05 then '+QuotedStr('May'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 06 then '+QuotedStr('Jun'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 07 then '+QuotedStr('Jul'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 08 then '+QuotedStr('Ago'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 09 then '+QuotedStr('Sep'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 10 then '+QuotedStr('Oct'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 11 then '+QuotedStr('Nov'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 12 then '+QuotedStr('Dic'));
  QCompras.SQL.Add('end Mes, month(f.fac_fecha) as NMes,');
  QCompras.SQL.Add('sum(d.det_cantidad * d.det_costo) as Total');
  QCompras.SQL.Add('from provfacturas f, det_provfacturas d, productos p');
  QCompras.SQL.Add('where f.emp_codigo = :emp and year(f.fac_fecha) = :ano');
  QCompras.SQL.Add('and f.fac_status <> '+QuotedStr('ANU'));
  QCompras.SQL.Add('and f.emp_codigo = d.emp_codigo');
  QCompras.SQL.Add('and f.sup_codigo = d.sup_codigo');
  QCompras.SQL.Add('and f.fac_numero = d.fac_numero');
  QCompras.SQL.Add('and d.pro_codigo = p.pro_codigo');
  QCompras.SQL.Add('and p.ger_codigo = :cod');
  QCompras.SQL.Add('group by case when month(f.fac_fecha) = 01 then '+QuotedStr('Ene'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 02 then '+QuotedStr('Feb'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 03 then '+QuotedStr('Mar'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 04 then '+QuotedStr('Abr'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 05 then '+QuotedStr('May'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 06 then '+QuotedStr('Jun'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 07 then '+QuotedStr('Jul'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 08 then '+QuotedStr('Ago'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 09 then '+QuotedStr('Sep'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 10 then '+QuotedStr('Oct'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 11 then '+QuotedStr('Nov'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 12 then '+QuotedStr('Dic'));
  QCompras.SQL.Add('end, month(f.fac_fecha)');
  QCompras.SQL.Add('order by month(f.fac_fecha)');
  //QCompras.DataSource := dsMaster;

  QMaster.Close;
  QMaster.SQL.Clear;
  QMaster.SQL.Add('select g.ger_codigo as Codigo,');
  QMaster.SQL.Add('g.ger_nombre as Nombre,');
  QMaster.SQL.Add('sum(d.det_cantidad * d.det_costo) as Total');
  QMaster.SQL.Add('from provfacturas f, det_provfacturas d, productos p, gerentes g');
  QMaster.SQL.Add('where f.emp_codigo = d.emp_codigo');
  QMaster.SQL.Add('and f.sup_codigo = d.sup_codigo');
  QMaster.SQL.Add('and f.fac_numero = d.fac_numero');
  QMaster.SQL.Add('and p.pro_codigo = d.pro_codigo');
  QMaster.SQL.Add('and g.ger_codigo = p.ger_codigo');
  QMaster.SQL.Add('and f.emp_codigo = :emp');
  QMaster.SQL.Add('and year(f.fac_fecha) = :ano');
  QMaster.SQL.Add('and p.pro_status = :st');
  QMaster.SQL.Add('group by g.ger_codigo, g.ger_nombre');
  QMaster.SQL.Add('order by g.ger_nombre');
  QMaster.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QMaster.Parameters.ParamByName('st').Value  := 'ACT';
  QMaster.Parameters.ParamByName('ano').Value := StrToInt(cbAno.Text);
  cxGrid1DBTableView1.DataController.DataSource := dsMaster;
  QMaster.Open;
  cxGrid1.SetFocus;
  (QMaster.Fields[2] as TBCDField).currency := true;
  QMaster.Fields[1].DisplayWidth := 60;
  QMaster.Fields[2].DisplayWidth := 15;

  QCompras.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QCompras.Parameters.ParamByName('ano').Value := StrToInt(cbAno.Text);
  QCompras.Parameters.ParamByName('cod').Value := QMaster.FieldByName('Codigo').Value;
  QCompras.Open;

  for a := 0 to QMaster.FieldCount-1 do
  begin
    cxGrid1DBTableView1.CreateColumn;
    cxGrid1DBTableView1.Columns[a].DataBinding.FieldName := QMaster.Fields[a].FieldName;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfrmEstadisticas.aCompraFamiliaExecute(Sender: TObject);
var
  a : integer;
begin
  Screen.Cursor := crHourGlass;

  for a := 0 to cxGrid1DBTableView1.ColumnCount -1 do
    cxGrid1DBTableView1.Columns[0].Destroy;

  QCompras.Close;

  DBAdvChartView1.Panes[0]. DataSource := dsCompras;

  QCompras.SQL.Clear;
  QCompras.SQL.Add('select case when month(f.fac_fecha) = 01 then '+QuotedStr('Ene'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 02 then '+QuotedStr('Feb'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 03 then '+QuotedStr('Mar'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 04 then '+QuotedStr('Abr'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 05 then '+QuotedStr('May'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 06 then '+QuotedStr('Jun'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 07 then '+QuotedStr('Jul'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 08 then '+QuotedStr('Ago'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 09 then '+QuotedStr('Sep'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 10 then '+QuotedStr('Oct'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 11 then '+QuotedStr('Nov'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 12 then '+QuotedStr('Dic'));
  QCompras.SQL.Add('end Mes, month(f.fac_fecha) as NMes,');
  QCompras.SQL.Add('sum(d.det_cantidad * d.det_costo) as Total');
  QCompras.SQL.Add('from provfacturas f, det_provfacturas d, productos p');
  QCompras.SQL.Add('where f.emp_codigo = :emp and year(f.fac_fecha) = :ano');
  QCompras.SQL.Add('and f.fac_status <> '+QuotedStr('ANU'));
  QCompras.SQL.Add('and f.emp_codigo = d.emp_codigo');
  QCompras.SQL.Add('and f.sup_codigo = d.sup_codigo');
  QCompras.SQL.Add('and f.fac_numero = d.fac_numero');
  QCompras.SQL.Add('and d.pro_codigo = p.pro_codigo');
  QCompras.SQL.Add('and p.fam_codigo = :cod');
  QCompras.SQL.Add('group by case when month(f.fac_fecha) = 01 then '+QuotedStr('Ene'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 02 then '+QuotedStr('Feb'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 03 then '+QuotedStr('Mar'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 04 then '+QuotedStr('Abr'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 05 then '+QuotedStr('May'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 06 then '+QuotedStr('Jun'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 07 then '+QuotedStr('Jul'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 08 then '+QuotedStr('Ago'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 09 then '+QuotedStr('Sep'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 10 then '+QuotedStr('Oct'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 11 then '+QuotedStr('Nov'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 12 then '+QuotedStr('Dic'));
  QCompras.SQL.Add('end, month(f.fac_fecha)');
  QCompras.SQL.Add('order by month(f.fac_fecha)');
  //QCompras.DataSource := dsMaster;

  QMaster.Close;
  QMaster.SQL.Clear;
  QMaster.SQL.Add('select m.fam_codigo as Codigo,');
  QMaster.SQL.Add('m.fam_nombre as Nombre,');
  QMaster.SQL.Add('sum(d.det_cantidad * d.det_costo) as Total');
  QMaster.SQL.Add('from provfacturas f, det_provfacturas d, productos p, familias m');
  QMaster.SQL.Add('where f.emp_codigo = d.emp_codigo');
  QMaster.SQL.Add('and f.sup_codigo = d.sup_codigo');
  QMaster.SQL.Add('and f.fac_numero = d.fac_numero');
  QMaster.SQL.Add('and p.pro_codigo = d.pro_codigo');
  QMaster.SQL.Add('and m.fam_codigo = p.fam_codigo');
  QMaster.SQL.Add('and f.emp_codigo = :emp');
  QMaster.SQL.Add('and year(f.fac_fecha) = :ano');
  QMaster.SQL.Add('and p.pro_status = :st');
  QMaster.SQL.Add('group by m.fam_codigo, m.fam_nombre');
  QMaster.SQL.Add('order by m.fam_nombre');
  QMaster.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QMaster.Parameters.ParamByName('st').Value  := 'ACT';
  QMaster.Parameters.ParamByName('ano').Value := StrToInt(cbAno.Text);
  cxGrid1DBTableView1.DataController.DataSource := dsMaster;
  QMaster.Open;
  cxGrid1.SetFocus;
  (QMaster.Fields[2] as TBCDField).currency := true;
  QMaster.Fields[1].DisplayWidth := 60;
  QMaster.Fields[2].DisplayWidth := 15;

  QCompras.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QCompras.Parameters.ParamByName('ano').Value := StrToInt(cbAno.Text);
  QCompras.Parameters.ParamByName('cod').Value := QMaster.FieldByName('Codigo').Value;
  QCompras.Open;

  for a := 0 to QMaster.FieldCount-1 do
  begin
    cxGrid1DBTableView1.CreateColumn;
    cxGrid1DBTableView1.Columns[a].DataBinding.FieldName := QMaster.Fields[a].FieldName;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfrmEstadisticas.aCompraDepartamentoExecute(Sender: TObject);
var
  a : integer;
begin
  Screen.Cursor := crHourGlass;

  for a := 0 to cxGrid1DBTableView1.ColumnCount -1 do
    cxGrid1DBTableView1.Columns[0].Destroy;

  QCompras.Close;

  DBAdvChartView1.Panes[0]. DataSource := dsCompras;

  QCompras.SQL.Clear;
  QCompras.SQL.Add('select case when month(f.fac_fecha) = 01 then '+QuotedStr('Ene'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 02 then '+QuotedStr('Feb'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 03 then '+QuotedStr('Mar'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 04 then '+QuotedStr('Abr'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 05 then '+QuotedStr('May'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 06 then '+QuotedStr('Jun'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 07 then '+QuotedStr('Jul'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 08 then '+QuotedStr('Ago'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 09 then '+QuotedStr('Sep'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 10 then '+QuotedStr('Oct'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 11 then '+QuotedStr('Nov'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 12 then '+QuotedStr('Dic'));
  QCompras.SQL.Add('end Mes, month(f.fac_fecha) as NMes,');
  QCompras.SQL.Add('sum(d.det_cantidad * d.det_costo) as Total');
  QCompras.SQL.Add('from provfacturas f, det_provfacturas d, productos p');
  QCompras.SQL.Add('where f.emp_codigo = :emp and year(f.fac_fecha) = :ano');
  QCompras.SQL.Add('and f.fac_status <> '+QuotedStr('ANU'));
  QCompras.SQL.Add('and f.emp_codigo = d.emp_codigo');
  QCompras.SQL.Add('and f.sup_codigo = d.sup_codigo');
  QCompras.SQL.Add('and f.fac_numero = d.fac_numero');
  QCompras.SQL.Add('and d.pro_codigo = p.pro_codigo');
  QCompras.SQL.Add('and p.dep_codigo = :cod');
  QCompras.SQL.Add('group by case when month(f.fac_fecha) = 01 then '+QuotedStr('Ene'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 02 then '+QuotedStr('Feb'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 03 then '+QuotedStr('Mar'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 04 then '+QuotedStr('Abr'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 05 then '+QuotedStr('May'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 06 then '+QuotedStr('Jun'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 07 then '+QuotedStr('Jul'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 08 then '+QuotedStr('Ago'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 09 then '+QuotedStr('Sep'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 10 then '+QuotedStr('Oct'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 11 then '+QuotedStr('Nov'));
  QCompras.SQL.Add('when month(f.fac_fecha) = 12 then '+QuotedStr('Dic'));
  QCompras.SQL.Add('end, month(f.fac_fecha)');
  QCompras.SQL.Add('order by month(f.fac_fecha)');
  //QCompras.DataSource := dsMaster;

  QMaster.Close;
  QMaster.SQL.Clear;
  QMaster.SQL.Add('select m.dep_codigo as Codigo,');
  QMaster.SQL.Add('m.dep_nombre as Nombre,');
  QMaster.SQL.Add('sum(d.det_cantidad * d.det_costo) as Total');
  QMaster.SQL.Add('from provfacturas f, det_provfacturas d, productos p, departamentos m');
  QMaster.SQL.Add('where f.emp_codigo = d.emp_codigo');
  QMaster.SQL.Add('and f.sup_codigo = d.sup_codigo');
  QMaster.SQL.Add('and f.fac_numero = d.fac_numero');
  QMaster.SQL.Add('and p.pro_codigo = d.pro_codigo');
  QMaster.SQL.Add('and m.dep_codigo = p.dep_codigo');
  QMaster.SQL.Add('and f.emp_codigo = :emp');
  QMaster.SQL.Add('and year(f.fac_fecha) = :ano');
  QMaster.SQL.Add('and p.pro_status = :st');
  QMaster.SQL.Add('group by m.dep_codigo, m.dep_nombre');
  QMaster.SQL.Add('order by m.dep_nombre');
  QMaster.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QMaster.Parameters.ParamByName('st').Value  := 'ACT';
  QMaster.Parameters.ParamByName('ano').Value := StrToInt(cbAno.Text);
  cxGrid1DBTableView1.DataController.DataSource := dsMaster;
  QMaster.Open;
  cxGrid1.SetFocus;
  (QMaster.Fields[2] as TBCDField).currency := true;
  QMaster.Fields[1].DisplayWidth := 60;
  QMaster.Fields[2].DisplayWidth := 15;

  QCompras.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QCompras.Parameters.ParamByName('ano').Value := StrToInt(cbAno.Text);
  QCompras.Parameters.ParamByName('cod').Value := QMaster.FieldByName('Codigo').Value;
  QCompras.Open;

  for a := 0 to QMaster.FieldCount-1 do
  begin
    cxGrid1DBTableView1.CreateColumn;
    cxGrid1DBTableView1.Columns[a].DataBinding.FieldName := QMaster.Fields[a].FieldName;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfrmEstadisticas.aVentaGeneralExecute(Sender: TObject);
var
  a : integer;
begin
  Screen.Cursor := crHourGlass;

  QMaster.SQL.Clear;

  QVentas.Close;

  DBAdvChartView1.Panes[0]. DataSource := dsVentas;

  QVentas.SQL.Clear;
  QVentas.SQL.Add('select case when mes = 1 then '+QuotedStr('Ene'));
  QVentas.SQL.Add('when mes = 2 then '+QuotedStr('Feb'));
  QVentas.SQL.Add('when mes = 3 then '+QuotedStr('Mar'));
  QVentas.SQL.Add('when mes = 4 then '+QuotedStr('Abr'));
  QVentas.SQL.Add('when mes = 5 then '+QuotedStr('May'));
  QVentas.SQL.Add('when mes = 6 then '+QuotedStr('Jun'));
  QVentas.SQL.Add('when mes = 7 then '+QuotedStr('Jul'));
  QVentas.SQL.Add('when mes = 8 then '+QuotedStr('Ago'));
  QVentas.SQL.Add('when mes = 9 then '+QuotedStr('Sep'));
  QVentas.SQL.Add('when mes = 10 then '+QuotedStr('Oct'));
  QVentas.SQL.Add('when mes = 11 then '+QuotedStr('Nov'));
  QVentas.SQL.Add('when mes = 12 then '+QuotedStr('Dic'));
  QVentas.SQL.Add('end Mes, mes as NMes,');
  QVentas.SQL.Add('sum(total) as Total');
  QVentas.SQL.Add('from pr_estadistica_venta (:emp, :ano, :G)');
  //QVentas.SQL.Add('from pr_estadistica_venta (:emp, :ano)');
  QVentas.SQL.Add('group by case when mes = 1 then '+QuotedStr('Ene'));
  QVentas.SQL.Add('when mes = 2 then '+QuotedStr('Feb'));
  QVentas.SQL.Add('when mes = 3 then '+QuotedStr('Mar'));
  QVentas.SQL.Add('when mes = 4 then '+QuotedStr('Abr'));
  QVentas.SQL.Add('when mes = 5 then '+QuotedStr('May'));
  QVentas.SQL.Add('when mes = 6 then '+QuotedStr('Jun'));
  QVentas.SQL.Add('when mes = 7 then '+QuotedStr('Jul'));
  QVentas.SQL.Add('when mes = 8 then '+QuotedStr('Ago'));
  QVentas.SQL.Add('when mes = 9 then '+QuotedStr('Sep'));
  QVentas.SQL.Add('when mes = 10 then '+QuotedStr('Oct'));
  QVentas.SQL.Add('when mes = 11 then '+QuotedStr('Nov'));
  QVentas.SQL.Add('when mes = 12 then '+QuotedStr('Dic'));
  QVentas.SQL.Add('end, mes');
  QVentas.SQL.Add('order by 2');
  QVentas.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QVentas.Parameters.ParamByName('ano').Value := StrToInt(cbAno.Text);
  QVentas.Parameters.ParamByName('G').Value   := 'S';
  QVentas.Open;

  for a := 0 to cxGrid1DBTableView1.ColumnCount -1 do
    cxGrid1DBTableView1.Columns[0].Destroy;

  for a := 0 to QVentas.FieldCount-1 do
  begin
    cxGrid1DBTableView1.CreateColumn;
    cxGrid1DBTableView1.Columns[a].DataBinding.FieldName := QVentas.Fields[a].FieldName;
  end;

  cxGrid1DBTableView1.DataController.DataSource := dsVentas;
  QVentas.DataSource := nil;
  Screen.Cursor := crDefault;
end;

procedure TfrmEstadisticas.aVentaFamiliaExecute(Sender: TObject);
var
  a : integer;
begin
  Screen.Cursor := crHourGlass;

  for a := 0 to cxGrid1DBTableView1.ColumnCount -1 do
    cxGrid1DBTableView1.Columns[0].Destroy;

  QVentas.Close;
  QVentas.SQL.Clear;
  QVentas.SQL.Add('select case when mes = 1 then '+QuotedStr('Ene'));
  QVentas.SQL.Add('when mes = 2 then '+QuotedStr('Feb'));
  QVentas.SQL.Add('when mes = 3 then '+QuotedStr('Mar'));
  QVentas.SQL.Add('when mes = 4 then '+QuotedStr('Abr'));
  QVentas.SQL.Add('when mes = 5 then '+QuotedStr('May'));
  QVentas.SQL.Add('when mes = 6 then '+QuotedStr('Jun'));
  QVentas.SQL.Add('when mes = 7 then '+QuotedStr('Jul'));
  QVentas.SQL.Add('when mes = 8 then '+QuotedStr('Ago'));
  QVentas.SQL.Add('when mes = 9 then '+QuotedStr('Sep'));
  QVentas.SQL.Add('when mes = 10 then '+QuotedStr('Oct'));
  QVentas.SQL.Add('when mes = 11 then '+QuotedStr('Nov'));
  QVentas.SQL.Add('when mes = 12 then '+QuotedStr('Dic'));
  QVentas.SQL.Add('end Mes, mes as NMes,');
  QVentas.SQL.Add('sum(total) as Total');
  QVentas.SQL.Add('from pr_estadistica_venta_fam (:emp, :ano, :cod)');
  ////////QVentas.SQL.Add('from pr_estadistica_venta (:emp, :ano, :G, :cod, :dep, :pro, :cli, :sup, :ven, :ger)');
  QVentas.SQL.Add('group by case when mes = 1 then '+QuotedStr('Ene'));
  QVentas.SQL.Add('when mes = 2 then '+QuotedStr('Feb'));
  QVentas.SQL.Add('when mes = 3 then '+QuotedStr('Mar'));
  QVentas.SQL.Add('when mes = 4 then '+QuotedStr('Abr'));
  QVentas.SQL.Add('when mes = 5 then '+QuotedStr('May'));
  QVentas.SQL.Add('when mes = 6 then '+QuotedStr('Jun'));
  QVentas.SQL.Add('when mes = 7 then '+QuotedStr('Jul'));
  QVentas.SQL.Add('when mes = 8 then '+QuotedStr('Ago'));
  QVentas.SQL.Add('when mes = 9 then '+QuotedStr('Sep'));
  QVentas.SQL.Add('when mes = 10 then '+QuotedStr('Oct'));
  QVentas.SQL.Add('when mes = 11 then '+QuotedStr('Nov'));
  QVentas.SQL.Add('when mes = 12 then '+QuotedStr('Dic'));
  QVentas.SQL.Add('end, mes');
  QVentas.SQL.Add('order by 2');
  
  QMaster.Close;
  QMaster.SQL.Clear;
  QMaster.SQL.Add('select fam_codigo as Codigo,');
  QMaster.SQL.Add('fam_nombre as Nombre');
  QMaster.SQL.Add('from familias');
  QMaster.SQL.Add('where emp_codigo = :emp');
  QMaster.SQL.Add('order by fam_nombre');
  QMaster.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
  QMaster.Open;

  for a := 0 to QMaster.FieldCount-1 do
  begin
    cxGrid1DBTableView1.CreateColumn;
    cxGrid1DBTableView1.Columns[a].DataBinding.FieldName := QMaster.Fields[a].FieldName;
  end;

  QMaster.Fields[1].DisplayWidth := 60;
  QMaster.Fields[0].DisplayWidth := 15;

  DBAdvChartView1.Panes[0]. DataSource := dsVentas;
  cxGrid1DBTableView1.DataController.DataSource := dsMaster;
  
  QVentas.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QVentas.Parameters.ParamByName('ano').Value := StrToInt(cbAno.Text);
  QVentas.Parameters.ParamByName('cod').Value := QMaster.FieldByName('Codigo').Value;
  QVentas.Open;

  cxGrid1.SetFocus;

  Screen.Cursor := crDefault;
end;

procedure TfrmEstadisticas.aVentaDeptoExecute(Sender: TObject);
var
  a : integer;
begin
  Screen.Cursor := crHourGlass;

  for a := 0 to cxGrid1DBTableView1.ColumnCount -1 do
    cxGrid1DBTableView1.Columns[0].Destroy;

  QVentas.Close;
  QVentas.SQL.Clear;
  QVentas.SQL.Add('select case when mes = 1 then '+QuotedStr('Ene'));
  QVentas.SQL.Add('when mes = 2 then '+QuotedStr('Feb'));
  QVentas.SQL.Add('when mes = 3 then '+QuotedStr('Mar'));
  QVentas.SQL.Add('when mes = 4 then '+QuotedStr('Abr'));
  QVentas.SQL.Add('when mes = 5 then '+QuotedStr('May'));
  QVentas.SQL.Add('when mes = 6 then '+QuotedStr('Jun'));
  QVentas.SQL.Add('when mes = 7 then '+QuotedStr('Jul'));
  QVentas.SQL.Add('when mes = 8 then '+QuotedStr('Ago'));
  QVentas.SQL.Add('when mes = 9 then '+QuotedStr('Sep'));
  QVentas.SQL.Add('when mes = 10 then '+QuotedStr('Oct'));
  QVentas.SQL.Add('when mes = 11 then '+QuotedStr('Nov'));
  QVentas.SQL.Add('when mes = 12 then '+QuotedStr('Dic'));
  QVentas.SQL.Add('end Mes, mes as NMes,');
  QVentas.SQL.Add('sum(total) as Total');
  QVentas.SQL.Add('from pr_estadistica_venta_dep (:emp, :ano, :cod)');
  QVentas.SQL.Add('group by case when mes = 1 then '+QuotedStr('Ene'));
  QVentas.SQL.Add('when mes = 2 then '+QuotedStr('Feb'));
  QVentas.SQL.Add('when mes = 3 then '+QuotedStr('Mar'));
  QVentas.SQL.Add('when mes = 4 then '+QuotedStr('Abr'));
  QVentas.SQL.Add('when mes = 5 then '+QuotedStr('May'));
  QVentas.SQL.Add('when mes = 6 then '+QuotedStr('Jun'));
  QVentas.SQL.Add('when mes = 7 then '+QuotedStr('Jul'));
  QVentas.SQL.Add('when mes = 8 then '+QuotedStr('Ago'));
  QVentas.SQL.Add('when mes = 9 then '+QuotedStr('Sep'));
  QVentas.SQL.Add('when mes = 10 then '+QuotedStr('Oct'));
  QVentas.SQL.Add('when mes = 11 then '+QuotedStr('Nov'));
  QVentas.SQL.Add('when mes = 12 then '+QuotedStr('Dic'));
  QVentas.SQL.Add('end, mes');
  QVentas.SQL.Add('order by 2');
  
  QMaster.Close;
  QMaster.SQL.Clear;
  QMaster.SQL.Add('select dep_codigo as Codigo,');
  QMaster.SQL.Add('dep_nombre as Nombre');
  QMaster.SQL.Add('from departamentos');
  QMaster.SQL.Add('where emp_codigo = :emp');
  QMaster.SQL.Add('order by dep_nombre');
  QMaster.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
  QMaster.Open;

  for a := 0 to QMaster.FieldCount-1 do
  begin
    cxGrid1DBTableView1.CreateColumn;
    cxGrid1DBTableView1.Columns[a].DataBinding.FieldName := QMaster.Fields[a].FieldName;
  end;

  QMaster.Fields[1].DisplayWidth := 60;
  QMaster.Fields[0].DisplayWidth := 15;

  DBAdvChartView1.Panes[0]. DataSource := dsVentas;
  cxGrid1DBTableView1.DataController.DataSource := dsMaster;

  QVentas.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QVentas.Parameters.ParamByName('ano').Value := StrToInt(cbAno.Text);
  QVentas.Parameters.ParamByName('cod').Value := QMaster.FieldByName('Codigo').Value;
  QVentas.Open;

  cxGrid1.SetFocus;

  Screen.Cursor := crDefault;
end;

procedure TfrmEstadisticas.aVentaGerenteExecute(Sender: TObject);
var
  a : integer;
begin
  Screen.Cursor := crHourGlass;

  for a := 0 to cxGrid1DBTableView1.ColumnCount -1 do
    cxGrid1DBTableView1.Columns[0].Destroy;

  QVentas.Close;
  QVentas.SQL.Clear;
  QVentas.SQL.Add('select case when mes = 1 then '+QuotedStr('Ene'));
  QVentas.SQL.Add('when mes = 2 then '+QuotedStr('Feb'));
  QVentas.SQL.Add('when mes = 3 then '+QuotedStr('Mar'));
  QVentas.SQL.Add('when mes = 4 then '+QuotedStr('Abr'));
  QVentas.SQL.Add('when mes = 5 then '+QuotedStr('May'));
  QVentas.SQL.Add('when mes = 6 then '+QuotedStr('Jun'));
  QVentas.SQL.Add('when mes = 7 then '+QuotedStr('Jul'));
  QVentas.SQL.Add('when mes = 8 then '+QuotedStr('Ago'));
  QVentas.SQL.Add('when mes = 9 then '+QuotedStr('Sep'));
  QVentas.SQL.Add('when mes = 10 then '+QuotedStr('Oct'));
  QVentas.SQL.Add('when mes = 11 then '+QuotedStr('Nov'));
  QVentas.SQL.Add('when mes = 12 then '+QuotedStr('Dic'));
  QVentas.SQL.Add('end Mes, mes as NMes,');
  QVentas.SQL.Add('sum(total) as Total');
  QVentas.SQL.Add('from pr_estadistica_venta_ger (:emp, :ano, :cod)');
  QVentas.SQL.Add('group by case when mes = 1 then '+QuotedStr('Ene'));
  QVentas.SQL.Add('when mes = 2 then '+QuotedStr('Feb'));
  QVentas.SQL.Add('when mes = 3 then '+QuotedStr('Mar'));
  QVentas.SQL.Add('when mes = 4 then '+QuotedStr('Abr'));
  QVentas.SQL.Add('when mes = 5 then '+QuotedStr('May'));
  QVentas.SQL.Add('when mes = 6 then '+QuotedStr('Jun'));
  QVentas.SQL.Add('when mes = 7 then '+QuotedStr('Jul'));
  QVentas.SQL.Add('when mes = 8 then '+QuotedStr('Ago'));
  QVentas.SQL.Add('when mes = 9 then '+QuotedStr('Sep'));
  QVentas.SQL.Add('when mes = 10 then '+QuotedStr('Oct'));
  QVentas.SQL.Add('when mes = 11 then '+QuotedStr('Nov'));
  QVentas.SQL.Add('when mes = 12 then '+QuotedStr('Dic'));
  QVentas.SQL.Add('end, mes');
  QVentas.SQL.Add('order by 2');

  QMaster.Close;
  QMaster.SQL.Clear;
  QMaster.SQL.Add('select ger_codigo as Codigo,');
  QMaster.SQL.Add('ger_nombre as Nombre');
  QMaster.SQL.Add('from gerentes');
  QMaster.SQL.Add('where emp_codigo = :emp');
  QMaster.SQL.Add('order by ger_nombre');
  QMaster.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
  QMaster.Open;

  for a := 0 to QMaster.FieldCount-1 do
  begin
    cxGrid1DBTableView1.CreateColumn;
    cxGrid1DBTableView1.Columns[a].DataBinding.FieldName := QMaster.Fields[a].FieldName;
  end;

  QMaster.Fields[1].DisplayWidth := 60;
  QMaster.Fields[0].DisplayWidth := 15;

  DBAdvChartView1.Panes[0]. DataSource := dsVentas;
  cxGrid1DBTableView1.DataController.DataSource := dsMaster;

  QVentas.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QVentas.Parameters.ParamByName('ano').Value := StrToInt(cbAno.Text);
  QVentas.Parameters.ParamByName('cod').Value := QMaster.FieldByName('Codigo').Value;
  QVentas.Open;

  cxGrid1.SetFocus;

  Screen.Cursor := crDefault;
end;

procedure TfrmEstadisticas.aVentaPasilloExecute(Sender: TObject);
var
  a : integer;
begin
  Screen.Cursor := crHourGlass;

  for a := 0 to cxGrid1DBTableView1.ColumnCount -1 do
    cxGrid1DBTableView1.Columns[0].Destroy;

  QVentas.Close;
  QVentas.SQL.Clear;
  QVentas.SQL.Add('select case when mes = 1 then '+QuotedStr('Ene'));
  QVentas.SQL.Add('when mes = 2 then '+QuotedStr('Feb'));
  QVentas.SQL.Add('when mes = 3 then '+QuotedStr('Mar'));
  QVentas.SQL.Add('when mes = 4 then '+QuotedStr('Abr'));
  QVentas.SQL.Add('when mes = 5 then '+QuotedStr('May'));
  QVentas.SQL.Add('when mes = 6 then '+QuotedStr('Jun'));
  QVentas.SQL.Add('when mes = 7 then '+QuotedStr('Jul'));
  QVentas.SQL.Add('when mes = 8 then '+QuotedStr('Ago'));
  QVentas.SQL.Add('when mes = 9 then '+QuotedStr('Sep'));
  QVentas.SQL.Add('when mes = 10 then '+QuotedStr('Oct'));
  QVentas.SQL.Add('when mes = 11 then '+QuotedStr('Nov'));
  QVentas.SQL.Add('when mes = 12 then '+QuotedStr('Dic'));
  QVentas.SQL.Add('end Mes, mes as NMes,');
  QVentas.SQL.Add('sum(total) as Total');
  QVentas.SQL.Add('from pr_estadistica_venta_gon (:emp, :ano, :cod)');
  QVentas.SQL.Add('group by case when mes = 1 then '+QuotedStr('Ene'));
  QVentas.SQL.Add('when mes = 2 then '+QuotedStr('Feb'));
  QVentas.SQL.Add('when mes = 3 then '+QuotedStr('Mar'));
  QVentas.SQL.Add('when mes = 4 then '+QuotedStr('Abr'));
  QVentas.SQL.Add('when mes = 5 then '+QuotedStr('May'));
  QVentas.SQL.Add('when mes = 6 then '+QuotedStr('Jun'));
  QVentas.SQL.Add('when mes = 7 then '+QuotedStr('Jul'));
  QVentas.SQL.Add('when mes = 8 then '+QuotedStr('Ago'));
  QVentas.SQL.Add('when mes = 9 then '+QuotedStr('Sep'));
  QVentas.SQL.Add('when mes = 10 then '+QuotedStr('Oct'));
  QVentas.SQL.Add('when mes = 11 then '+QuotedStr('Nov'));
  QVentas.SQL.Add('when mes = 12 then '+QuotedStr('Dic'));
  QVentas.SQL.Add('end, mes');
  QVentas.SQL.Add('order by 2');

  QMaster.Close;
  QMaster.SQL.Clear;
  QMaster.SQL.Add('select gon_codigo as Codigo,');
  QMaster.SQL.Add('gon_nombre as Nombre');
  QMaster.SQL.Add('from gondoleros');
  QMaster.SQL.Add('where emp_codigo = :emp');
  QMaster.SQL.Add('order by gon_nombre');
  QMaster.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
  QMaster.Open;

  for a := 0 to QMaster.FieldCount-1 do
  begin
    cxGrid1DBTableView1.CreateColumn;
    cxGrid1DBTableView1.Columns[a].DataBinding.FieldName := QMaster.Fields[a].FieldName;
  end;

  QMaster.Fields[1].DisplayWidth := 60;
  QMaster.Fields[0].DisplayWidth := 15;

  DBAdvChartView1.Panes[0]. DataSource := dsVentas;
  cxGrid1DBTableView1.DataController.DataSource := dsMaster;

  QVentas.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QVentas.Parameters.ParamByName('ano').Value := StrToInt(cbAno.Text);
  QVentas.Parameters.ParamByName('cod').Value := QMaster.FieldByName('Codigo').Value;
  QVentas.Open;

  cxGrid1.SetFocus;

  Screen.Cursor := crDefault;
end;

end.
