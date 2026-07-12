unit PVENTA55;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, DB, DateUtils,
  IBCustomDataSet, IBQuery, ComCtrls, ADODB,
  QuerySearchDlgADO, DBCtrls, TeeProcs, TeEngine, Chart, DbChart, Series,
  TeeFunci;

type
  TfrmConsBeneficio = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    btRefresh: TBitBtn;
    QFacturas: TADOQuery;
    dsFacturas: TDataSource;
    btClose: TBitBtn;
    Label6: TLabel;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    Memo1: TMemo;
    Search: TQrySearchDlgADO;
    QFacturasBeneficio: TFloatField;
    cbGrupo: TRadioGroup;
    QFacturasFORMA: TIBStringField;
    QFacturasTIPO: TIntegerField;
    QFacturasNUMERO: TIntegerField;
    QFacturasFECHA: TDateTimeField;
    QFacturasCLIENTE: TIBStringField;
    QFacturasCOSTO: TFloatField;
    QFacturasPRECIO: TFloatField;
    QFacturasDESCUENTO: TFloatField;
    QFacturasITBIS: TFloatField;
    QFacturasEMPRESA: TIntegerField;
    QFacturasid: TAutoIncField;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    Label8: TLabel;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    QBeneficioProd: TADOQuery;
    dsBeneficioProd: TDataSource;
    QBeneficioProdcodigo: TIntegerField;
    QBeneficioProdreferencia: TStringField;
    QBeneficioProdnombre: TStringField;
    QBeneficioProdcantidad: TBCDField;
    QBeneficioProdprecio: TBCDField;
    QBeneficioProddescuento: TBCDField;
    QBeneficioProdcomision: TBCDField;
    QBeneficioProditbis: TBCDField;
    QBeneficioProdbeneficio: TBCDField;
    QBeneficioProdtotal: TBCDField;
    QBeneficioProdcosto: TBCDField;
    Label1: TLabel;
    edCaja: TEdit;
    btcaja: TSpeedButton;
    tcaja: TEdit;
    TabSheet3: TTabSheet;
    DBGrid3: TDBGrid;
    QTickets: TADOQuery;
    QTicketsusu_codigo: TIntegerField;
    QTicketsfecha: TDateTimeField;
    QTicketsticket: TIntegerField;
    QTicketsusu_nombre: TStringField;
    QTicketstotal: TBCDField;
    QTicketsdescuento: TBCDField;
    QTicketsTipo: TStringField;
    dsTickets: TDataSource;
    QTicketsCosto: TBCDField;
    QTicketsItbis: TBCDField;
    QTicketsBeneficio: TFloatField;
    TabSheet4: TTabSheet;
    DBGrid4: TDBGrid;
    QBeneficioFam: TADOQuery;
    QBeneficioFamcodigo: TIntegerField;
    QBeneficioFamnombre: TStringField;
    QBeneficioFamcantidad: TBCDField;
    QBeneficioFamprecio: TBCDField;
    QBeneficioFamdescuento: TBCDField;
    QBeneficioFamcomision: TBCDField;
    QBeneficioFamitbis: TBCDField;
    QBeneficioFambeneficio: TBCDField;
    QBeneficioFamtotal: TBCDField;
    QBeneficioFamcosto: TBCDField;
    dsBeneficioFam: TDataSource;
    QEstadisticaGral: TADOQuery;
    dsEstGral: TDataSource;
    QEstadisticaGralCosto: TBCDField;
    QEstadisticaGralPrecio: TBCDField;
    QEstadisticaGralBeneficio: TBCDField;
    QEstadisticaFam: TADOQuery;
    QEstadisticaFamNombre: TStringField;
    QEstadisticaFamCosto: TBCDField;
    QEstadisticaFamComision: TBCDField;
    QEstadisticaFamDescuento: TBCDField;
    QEstadisticaFamPrecio: TBCDField;
    QEstadisticaFamBeneficio: TBCDField;
    dsEstFam: TDataSource;
    QFacturasCOMISION: TBCDField;
    QTicketscaja: TIntegerField;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    DBChart1: TDBChart;
    Series1: TBarSeries;
    QDetalleFac: TADOQuery;
    QDetalleFacpro_codigo: TIntegerField;
    QDetalleFacpro_roriginal: TStringField;
    QDetalleFacpro_nombre: TStringField;
    QDetalleFacdet_precio: TBCDField;
    QDetalleFacdet_costo: TBCDField;
    QDetalleFacdet_conitbis: TStringField;
    QDetalleFacdet_itbis: TBCDField;
    QDetalleFacdet_cantidad: TBCDField;
    Grid: TDBGrid;
    dsDetalleFac: TDataSource;
    QDetalleFacdet_medida: TStringField;
    QDetalleFacdet_descuento: TBCDField;
    QDetalleFacCalcItbis: TFloatField;
    QDetalleFacBeneficio: TFloatField;
    QDetalleFacCalcDesc: TFloatField;
    QDetalleFacPrecioItbis: TFloatField;
    QDetalleFacValor: TFloatField;
    QDetalleFacTotalCosto: TFloatField;
    QFacturasSUC_CODIGO: TIntegerField;
    QDetalleFaccomision: TBCDField;
    QDetalleFacdet_totalitbis: TBCDField;
    QDetalleFacTotalDesc: TFloatField;
    QDetalleFacTotalItbis: TFloatField;
    QDetalleFacdet_selectivo_ad: TBCDField;
    QDetalleFacdet_selectivo_con: TBCDField;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    QFacturasPorciento: TFloatField;
    QBeneficioProdPorciento: TFloatField;
    QTicketsPorciento: TFloatField;
    QBeneficioFamPorciento: TFloatField;
    Label2: TLabel;
    edVendedor: TEdit;
    btnVendedor: TSpeedButton;
    edtVendedorN: TEdit;
    DBChart2: TDBChart;
    Series2: TBarSeries;
    Series3: TBarSeries;
    QFacturasCOMISION_BRUTA: TCurrencyField;
    procedure FormCreate(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure cbStatusClick(Sender: TObject);
    procedure cbGrupoClick(Sender: TObject);
    procedure ckItbisClick(Sender: TObject);
    procedure ckDescClick(Sender: TObject);
    procedure cbOrdenClick(Sender: TObject);
    procedure QFacturasCalcFields(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btcajaClick(Sender: TObject);
    procedure edCajaChange(Sender: TObject);
    procedure edCajaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QTicketsCalcFields(DataSet: TDataSet);
    procedure QDetalleFacCalcFields(DataSet: TDataSet);
    procedure QFacturasAfterOpen(DataSet: TDataSet);
    procedure QBeneficioProdCalcFields(DataSet: TDataSet);
    procedure QBeneficioFamCalcFields(DataSet: TDataSet);
    procedure edVendedorChange(Sender: TObject);
    procedure edVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnVendedorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Ejecuto : Boolean;
  end;

var
  frmConsBeneficio: TfrmConsBeneficio;

implementation

uses RVENTA05, SIGMA01, SIGMA00, RVENTA95, RVENTA96, RVENTA97;

{$R *.dfm}

procedure TfrmConsBeneficio.FormCreate(Sender: TObject);
begin
  Ejecuto := False;
  Fecha1.date := date;
  Fecha2.date := date;
  Memo1.lines := QFacturas.sql;
end;

procedure TfrmConsBeneficio.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmConsBeneficio.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
  if (ssCtrl in Shift) and (ord(key) = 66) and (ssAlt in Shift) then
    cbGrupo.ItemIndex := 1;
  if (ssCtrl in Shift) and (ord(key) = 65) and (ssAlt in Shift) then
    cbGrupo.ItemIndex := 0;
  if (ssCtrl in Shift) and (ord(key) = 84) and (ssAlt in Shift) then
    cbGrupo.ItemIndex := 2;
  frmMain.stBar1.Panels[1].Text := Copy(cbGrupo.Items[cbGrupo.ItemIndex],1,1);
end;

procedure TfrmConsBeneficio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConsBeneficio.FormActivate(Sender: TObject);
begin
//  if not QFacturas.active then QFacturas.open;
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.PAramByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
  frmMain.ExportXLS.Sheets[0].DBGrid := DBGrid1;
  frmMain.ExportXLS.Sheets[1].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[0].Exported := True;
  if ejecuto = False then
    if (Time >= TimeOf(dm.QParametrosPAR_AHORA1.Value)) and
    (Time <= TimeOf(dm.QParametrosPAR_AHORA2.Value)) then
       cbGrupo.ItemIndex := 0
    else
       cbGrupo.ItemIndex := 1;
  frmMain.stBar1.Panels[1].Text := Copy(cbGrupo.Items[cbGrupo.ItemIndex],1,1);
end;

procedure TfrmConsBeneficio.btRefreshClick(Sender: TObject);
var
   Benef : double;
begin
  screen.Cursor := crHourGlass;

  QFacturas.close;
  QFacturas.sql.clear;
  QFacturas.sql := Memo1.Lines;
  QFacturas.Parameters.parambyname('fec1').DataType := ftDate;
  QFacturas.Parameters.parambyname('fec2').DataType := ftDate;
  QFacturas.Parameters.parambyname('fec1').Value := fecha1.date;
  QFacturas.Parameters.parambyname('fec2').Value := fecha2.date;
  QFacturas.Parameters.parambyname('emp').Value := dm.vp_cia;
  QFacturas.Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;
  if Trim(edCaja.Text) = '' then
    QFacturas.Parameters.parambyname('caja').Value := 0
  else
    QFacturas.Parameters.parambyname('caja').Value := StrToInt(Trim(edCaja.Text));

  if Trim(edVendedor.Text) = '' then
    QFacturas.Parameters.parambyname('vendedor').Value := 0
  else
    QFacturas.Parameters.parambyname('vendedor').Value := StrToInt(Trim(edVendedor.Text));

  if cbGrupo.itemindex = 0 then
  begin
    QFacturas.Parameters.parambyname('for1').Value := 'A';
    QFacturas.Parameters.parambyname('for2').Value := 'A';
  end
  else if cbGrupo.itemindex = 1 then
  begin
    QFacturas.Parameters.parambyname('for1').Value := 'B';
    QFacturas.Parameters.parambyname('for2').Value := 'B';
  end
  else
  begin
    QFacturas.Parameters.parambyname('for1').Value := 'A';
    QFacturas.Parameters.parambyname('for2').Value := 'B';
  end;
  QFacturas.open;

  QBeneficioProd.Close;
  QBeneficioProd.Parameters.parambyname('fec1').DataType := ftDate;
  QBeneficioProd.Parameters.parambyname('fec2').DataType := ftDate;
  QBeneficioProd.Parameters.parambyname('fec1').Value := fecha1.date;
  QBeneficioProd.Parameters.parambyname('fec2').Value := fecha2.date;
  QBeneficioProd.Parameters.parambyname('emp').Value := dm.vp_cia;
  QBeneficioProd.Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;
  if Trim(edCaja.Text) = '' then
    QBeneficioProd.Parameters.parambyname('caja').Value := 0
  else
    QBeneficioProd.Parameters.parambyname('caja').Value := StrToInt(Trim(edCaja.Text));

  if Trim(edVendedor.Text) = '' then
    QBeneficioProd.Parameters.parambyname('vendedor').Value := 0
  else
    QBeneficioProd.Parameters.parambyname('vendedor').Value := StrToInt(Trim(edVendedor.Text));

  QBeneficioProd.Open;

  QBeneficioFam.Close;
  QBeneficioFam.Parameters.parambyname('fec1').DataType := ftDate;
  QBeneficioFam.Parameters.parambyname('fec2').DataType := ftDate;
  QBeneficioFam.Parameters.parambyname('fec1').Value := fecha1.date;
  QBeneficioFam.Parameters.parambyname('fec2').Value := fecha2.date;
  QBeneficioFam.Parameters.parambyname('emp').Value := dm.vp_cia;
  QBeneficioFam.Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;
  if Trim(edCaja.Text) = '' then
    QBeneficioFam.Parameters.parambyname('caja').Value := 0
  else
    QBeneficioFam.Parameters.parambyname('caja').Value := StrToInt(Trim(edCaja.Text));

  if Trim(edVendedor.Text) = '' then
    QBeneficioFam.Parameters.parambyname('vendedor').Value := 0
  else
    QBeneficioFam.Parameters.parambyname('vendedor').Value := StrToInt(Trim(edVendedor.Text));

  QBeneficioFam.Open;

  Benef := 0;
  QFacturas.disablecontrols;
  while not QFacturas.eof do
  begin
    Benef := Benef + QFacturasBeneficio.value;
    QFacturas.next;
  end;
  QFacturas.first;
  QFacturas.enablecontrols;
  //lbCantidad.caption := format('%n',[Benef])+' en Beneficios aproximadamente';

  QTickets.Close;
  QTickets.Parameters.parambyname('fec1').DataType := ftDate;
  QTickets.Parameters.parambyname('fec2').DataType := ftDate;
  QTickets.Parameters.ParamByName('fec1').Value    := fecha1.Date;
  QTickets.Parameters.ParamByName('fec2').Value    := fecha2.Date;
  QTickets.Parameters.parambyname('emp').Value     := dm.vp_cia;
  if Trim(edVendedor.Text) = '' then
    QTickets.Parameters.parambyname('vendedor').Value := 0
  else
    QTickets.Parameters.parambyname('vendedor').Value := StrToInt(Trim(edVendedor.Text));
  QTickets.Open;

  //Estadistica general
  QEstadisticaGral.Close;
  QEstadisticaGral.Parameters.parambyname('fec1').DataType := ftDate;
  QEstadisticaGral.Parameters.parambyname('fec2').DataType := ftDate;
  QEstadisticaGral.Parameters.parambyname('fec1').Value := fecha1.date;
  QEstadisticaGral.Parameters.parambyname('fec2').Value := fecha2.date;
  QEstadisticaGral.Parameters.parambyname('emp').Value := dm.vp_cia;
  QEstadisticaGral.Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;
  if Trim(edCaja.Text) = '' then
    QEstadisticaGral.Parameters.parambyname('caja').Value := 0
  else
    QEstadisticaGral.Parameters.parambyname('caja').Value := StrToInt(Trim(edCaja.Text));

  if Trim(edVendedor.Text) = '' then
    QEstadisticaGral.Parameters.parambyname('vendedor').Value := 0
  else
    QEstadisticaGral.Parameters.parambyname('vendedor').Value := StrToInt(Trim(edVendedor.Text));


  if cbGrupo.itemindex = 0 then
  begin
    QEstadisticaGral.Parameters.parambyname('for1').Value := 'A';
    QEstadisticaGral.Parameters.parambyname('for2').Value := 'A';
  end
  else if cbGrupo.itemindex = 1 then
  begin
    QEstadisticaGral.Parameters.parambyname('for1').Value := 'B';
    QEstadisticaGral.Parameters.parambyname('for2').Value := 'B';
  end
  else
  begin
    QEstadisticaGral.Parameters.parambyname('for1').Value := 'A';
    QEstadisticaGral.Parameters.parambyname('for2').Value := 'B';
  end;
  QEstadisticaGral.open;

  //Estadisticas por Familia
  QEstadisticaFam.Close;
  QEstadisticaFam.Parameters.parambyname('fec1').DataType := ftDate;
  QEstadisticaFam.Parameters.parambyname('fec2').DataType := ftDate;
  QEstadisticaFam.Parameters.parambyname('fec1').Value := fecha1.date;
  QEstadisticaFam.Parameters.parambyname('fec2').Value := fecha2.date;
  QEstadisticaFam.Parameters.parambyname('emp').Value := dm.vp_cia;
  QEstadisticaFam.Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;
  if Trim(edCaja.Text) = '' then
    QEstadisticaFam.Parameters.parambyname('caja').Value := 0
  else
    QEstadisticaFam.Parameters.parambyname('caja').Value := StrToInt(Trim(edCaja.Text));

  if Trim(edVendedor.Text) = '' then
    QEstadisticaFam.Parameters.parambyname('vendedor').Value := 0
  else
    QEstadisticaFam.Parameters.parambyname('vendedor').Value := StrToInt(Trim(edVendedor.Text));
  QEstadisticaFam.Open;

  screen.Cursor := crDefault;

  PageControl1.ActivePageIndex := 0;
  DBGrid1.setfocus;
end;

procedure TfrmConsBeneficio.cbStatusClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsBeneficio.cbGrupoClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsBeneficio.ckItbisClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsBeneficio.ckDescClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsBeneficio.cbOrdenClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsBeneficio.QFacturasCalcFields(DataSet: TDataSet);
begin
 if  QFacturasCOSTO.value = 0 then
 QFacturasBeneficio.value := QFacturasPRECIO.value-(QFacturasITBIS.Value) else 
  QFacturasBeneficio.value := QFacturasPRECIO.value-(QFacturasCOSTO.value+QFacturasITBIS.Value+QFacturasCOMISION.Value);
  if ((QFacturasPRECIO.value > 0) AND (QFacturasCOSTO.value > 0)) then
    QFacturasPorciento.Value := (QFacturasBeneficio.Value/QFacturasCOSTO.value )*100 else
    QFacturasPorciento.Value := 100;
end;

procedure TfrmConsBeneficio.BitBtn2Click(Sender: TObject);
begin
  screen.Cursor := crHourGlass;
  if PageControl1.ActivePageIndex = 0 then
  begin
    Ejecuto := True;
    application.createform(tRConsBeneficio, RConsBeneficio);
    RConsBeneficio.lbCaja.Caption := tcaja.Text;
    RConsBeneficio.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
    RConsBeneficio.QFacturas.Parameters.parambyname('fec1').DataType := ftDate;
    RConsBeneficio.QFacturas.Parameters.parambyname('fec2').DataType := ftDate;
    RConsBeneficio.QFacturas.Parameters.parambyname('fec1').Value := fecha1.date;
    RConsBeneficio.QFacturas.Parameters.parambyname('fec2').Value := fecha2.date;
    RConsBeneficio.QFacturas.Parameters.parambyname('emp').Value := dm.vp_cia;
    RConsBeneficio.QFacturas.Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;
    if Trim(edCaja.Text) = '' then
      RConsBeneficio.QFacturas.Parameters.parambyname('caja').Value := 0
    else
      RConsBeneficio.QFacturas.Parameters.parambyname('caja').Value := StrToInt(Trim(edCaja.Text));

   if Trim(edVendedor.Text) = '' then
      RConsBeneficio.QFacturas.Parameters.parambyname('VENDEDOR').Value := 0
    else
      RConsBeneficio.QFacturas.Parameters.parambyname('VENDEDOR').Value := StrToInt(Trim(edVendedor.Text));

    if cbGrupo.itemindex = 0 then
    begin
      RConsBeneficio.QFacturas.Parameters.parambyname('for1').Value := 'A';
      RConsBeneficio.QFacturas.Parameters.parambyname('for2').Value := 'A';
    end
    else if cbGrupo.itemindex = 1 then
    begin
      RConsBeneficio.QFacturas.Parameters.parambyname('for1').Value := 'B';
      RConsBeneficio.QFacturas.Parameters.parambyname('for2').Value := 'B';
    end
    else
    begin
      RConsBeneficio.QFacturas.Parameters.parambyname('for1').Value := 'A';
      RConsBeneficio.QFacturas.Parameters.parambyname('for2').Value := 'B';
    end;
    RConsBeneficio.QFacturas.open;
    if MessageDlg('Desea Imprimir el Detalle de las facturas?',mtConfirmation,[mbyes,mbno],0) = mryes then
      RConsBeneficio.QDetalleFac.Open;

    screen.Cursor := crDefault;
    RConsBeneficio.PrinterSetup;
    RConsBeneficio.Preview;
    RConsBeneficio.Destroy;
  end
  else if PageControl1.ActivePageIndex = 1 then
  begin
    Application.CreateForm(tRConsBeneficioFamilia, RConsBeneficioFamilia);
    RConsBeneficioFamilia.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
    RConsBeneficioFamilia.lbCaja.Caption  := tcaja.Text;
    RConsBeneficioFamilia.QBeneficioFam.Parameters.parambyname('fec1').DataType := ftDate;
    RConsBeneficioFamilia.QBeneficioFam.Parameters.parambyname('fec2').DataType := ftDate;
    RConsBeneficioFamilia.QBeneficioFam.Parameters.parambyname('fec1').Value := fecha1.date;
    RConsBeneficioFamilia.QBeneficioFam.Parameters.parambyname('fec2').Value := fecha2.date;
    RConsBeneficioFamilia.QBeneficioFam.Parameters.parambyname('emp').Value := dm.vp_cia;
    RConsBeneficioFamilia.QBeneficioFam.Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;
    if Trim(edCaja.Text) = '' then
      RConsBeneficioFamilia.QBeneficioFam.Parameters.parambyname('caja').Value := 0
    else
      RConsBeneficioFamilia.QBeneficioFam.Parameters.parambyname('caja').Value := StrToInt(Trim(edCaja.Text));

     if Trim(edVendedor.Text) = '' then
      RConsBeneficioFamilia.QBeneficioFam.Parameters.parambyname('VENDEDOR').Value := 0
    else
      RConsBeneficioFamilia.QBeneficioFam.Parameters.parambyname('VENDEDOR').Value := StrToInt(Trim(edVendedor.Text));

    RConsBeneficioFamilia.QBeneficioFam.Open;
    screen.Cursor := crDefault;
    RConsBeneficioFamilia.PrinterSetup;
    RConsBeneficioFamilia.Preview;
    RConsBeneficioFamilia.Destroy;
  end
  else if PageControl1.ActivePageIndex = 3 then
  begin
    Application.CreateForm(tRConsBeneficioTickets, RConsBeneficioTickets);
    RConsBeneficioTickets.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
    RConsBeneficioTickets.QTickets.Parameters.parambyname('fec1').DataType := ftDate;
    RConsBeneficioTickets.QTickets.Parameters.parambyname('fec2').DataType := ftDate;
    RConsBeneficioTickets.QTickets.Parameters.parambyname('fec1').Value := fecha1.date;
    RConsBeneficioTickets.QTickets.Parameters.parambyname('fec2').Value := fecha2.date;
    RConsBeneficioTickets.QTickets.Parameters.parambyname('emp').Value := dm.vp_cia;
    RConsBeneficioTickets.QTickets.Open;
    screen.Cursor := crDefault;
    RConsBeneficioTickets.PrinterSetup;
    RConsBeneficioTickets.Preview;
    RConsBeneficioTickets.Destroy;
  end
  else if PageControl1.ActivePageIndex = 2 then
  begin
    Application.CreateForm(tRConsBeneficioProductos, RConsBeneficioProductos);
    RConsBeneficioProductos.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
    RConsBeneficioProductos.lbCaja.Caption  := tcaja.Text;
    RConsBeneficioProductos.QBeneficioProd.Close;
    RConsBeneficioProductos.QBeneficioProd.Parameters.parambyname('fec1').DataType := ftDate;
    RConsBeneficioProductos.QBeneficioProd.Parameters.parambyname('fec2').DataType := ftDate;
    RConsBeneficioProductos.QBeneficioProd.Parameters.parambyname('fec1').Value := fecha1.date;
    RConsBeneficioProductos.QBeneficioProd.Parameters.parambyname('fec2').Value := fecha2.date;
    RConsBeneficioProductos.QBeneficioProd.Parameters.parambyname('emp').Value := dm.vp_cia;
    RConsBeneficioProductos.QBeneficioProd.Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;
    if Trim(edCaja.Text) = '' then
      RConsBeneficioProductos.QBeneficioProd.Parameters.parambyname('caja').Value := 0
    else
      RConsBeneficioProductos.QBeneficioProd.Parameters.parambyname('caja').Value := StrToInt(Trim(edCaja.Text));
    if Trim(edVendedor.Text) = '' then
      RConsBeneficioProductos.QBeneficioProd.Parameters.parambyname('VENDEDOR').Value := 0
    else
      RConsBeneficioProductos.QBeneficioProd.Parameters.parambyname('VENDEDOR').Value := StrToInt(Trim(edVendedor.Text));

    RConsBeneficioProductos.QBeneficioProd.Open;
    screen.Cursor := crDefault;
    RConsBeneficioProductos.PrinterSetup;
    RConsBeneficioProductos.Preview;
    RConsBeneficioProductos.Destroy;
  end;
end;

procedure TfrmConsBeneficio.FormPaint(Sender: TObject);
begin
  with frmConsBeneficio do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmConsBeneficio.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     if activecontrol.classtype <> tdbgrid then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmConsBeneficio.btcajaClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Query.clear;
  Search.Query.add('select caj_nombre, caj_codigo');
  Search.Query.add('from cajas');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'caj_Codigo';
  Search.Title := 'Cajas de Efectivo';
  if Search.execute then
  begin
    edCaja.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select caj_nombre from cajas');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and caj_codigo = :cod');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edCaja.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('CAJA NO EXISTE',mterror,[mbok],0)
    else
      tcaja.text := dm.Query1.fieldbyname('caj_nombre').asstring;
    edCaja.setfocus;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsBeneficio.edCajaChange(Sender: TObject);
begin
  if trim(edCaja.text) = '' then tCaja.text := '';
end;

procedure TfrmConsBeneficio.edCajaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edCaja.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select caj_nombre from cajas');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and caj_codigo = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edCaja.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('CAJA NO EXISTE',mterror,[mbok],0);
        edCaja.SetFocus;
      end
      else
      begin
        tCaja.text := dm.Query1.fieldbyname('caj_nombre').asstring;
        btRefreshClick(Self);
      end;
    end;
  end;
end;

procedure TfrmConsBeneficio.QTicketsCalcFields(DataSet: TDataSet);
begin
  if QTicketsCosto.Value = 0 then
    QTicketsBeneficio.Value := QTicketstotal.Value - (QTicketsItbis.Value) else 
  QTicketsBeneficio.Value := QTicketstotal.Value - (QTicketsCosto.Value + QTicketsItbis.Value + QTicketsdescuento.Value);
  if QTicketstotal.value > 0 then
    QTicketsPorciento.Value := (QTicketsBeneficio.Value /QTicketsCosto.value)*100;
end;

procedure TfrmConsBeneficio.QDetalleFacCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis : Double;
  a : integer;
begin
 QDetalleFacTotalCosto.Value := QDetalleFacdet_costo.Value * QDetalleFacdet_cantidad.Value;
  if QDetalleFacDET_CONITBIS.value = 'S' then
  begin
    NumItbis := strtofloat(format('%10.2f',[(QDetalleFacdet_itbis.asfloat/100)+1]));

    if NumItbis = 0 then
    NumItbis := 1;

    if dm.QParametrospar_itbisincluido.Value = 'True' then
    begin
      Venta    := strtofloat(format('%10.2f',[(QDetalleFacDET_PRECIO.value)/NumItbis]));
      QDetalleFacCalcDesc.value    := strtofloat(format('%10.2f',[(Venta *
                                   strtofloat(format('%10.2f',[QDetalleFacDET_DESCUENTO.value])))/100]));

      //Venta    := strtofloat(format('%10.2f',[(QDetalleDET_PRECIO.value)/NumItbis]));
      QDetalleFacPrecioItbis.value := strtofloat(format('%10.2f',[Venta]));
      QDetalleFacCalcDesc.value    := strtofloat(format('%10.2f',[(Venta *
                                 strtofloat(format('%10.2f',[QDetalleFacDET_DESCUENTO.value])))/100]));

      QDetalleFacCalcItbis.value   := strtofloat(format('%10.2f',[(((Venta-QDetalleFacCalcDesc.value)+
                                                                (QDetalleFacdet_selectivo_ad.Value+
                                                                QDetalleFacdet_selectivo_con.Value))*
                                   strtofloat(format('%10.2f',[QDetalleFacdet_itbis.Value])))/100]));
      QDetalleFacValor.value       := ((strtofloat(format('%10.2f',[Venta]))-
                                   strtofloat(format('%10.2f',[QDetalleFacCalcDesc.value])))+
                                   strtofloat(format('%10.2f',[QDetalleFacdet_selectivo_ad.Value]))+
                                   strtofloat(format('%10.2f',[QDetalleFacdet_selectivo_con.Value]))+
                                   strtofloat(format('%10.2f',[QDetalleFacCalcItbis.value])))*
                                   strtofloat(format('%10.2f',[QDetalleFacDET_CANTIDAD.value]));
    end
    else
    begin
      Venta    := strtofloat(format('%10.2f',[(QDetalleFacDET_PRECIO.value)]));
      QDetalleFacPrecioItbis.value := strtofloat(format('%10.2f',[QDetalleFacDET_PRECIO.value+
                                                              QDetalleFacdet_selectivo_ad.Value+
                                                              QDetalleFacdet_selectivo_con.Value]));
      QDetalleFacCalcDesc.value    := strtofloat(format('%10.2f',[(Venta *
                                 strtofloat(format('%10.2f',[QDetalleFacDET_DESCUENTO.value])))/100]));
      if QDetalleFacDET_CONITBIS.value = 'S' then
        QDetalleFacCalcItbis.value   := strtofloat(format('%10.2f',[(((Venta-QDetalleFacCalcDesc.value)+
                                                                  (QDetalleFacdet_selectivo_ad.Value+
                                                                  QDetalleFacdet_selectivo_con.Value))*
                                     strtofloat(format('%10.2f',[QDetalleFacdet_itbis.Value])))/100]))
      else
        QDetalleFacCalcItbis.value   := 0;

      {QDetalleValor.value       := (((strtofloat(format('%10.2f',[QDetalleDET_PRECIO.value]))-
                                   strtofloat(format('%10.2f',[QDetalleCalcDesc.value])))+
                                   strtofloat(format('%10.2f',[QDetalledet_selectivo_ad.Value]))+
                                   strtofloat(format('%10.2f',[QDetalledet_selectivo_con.Value])))+
                                   strtofloat(format('%10.2f',[QDetalleCalcItbis.value])))*
                                   strtofloat(format('%10.2f',[QDetalleDET_CANTIDAD.value]));}
      QDetalleFacValor.value := (strtofloat(format('%10.2f',[QDetalleFacDET_PRECIO.value])) - strtofloat(format('%10.2f',[QDetalleFacCalcDesc.value])))*
                             strtofloat(format('%10.2f',[QDetalleFacDET_CANTIDAD.value]));

    end;
  end
  else
  begin
    Venta := strtofloat(format('%10.2f',[QDetalleFacDET_PRECIO.value]));
    QDetalleFacCalcDesc.value    := strtofloat(format('%10.2f',[(Venta * QDetalleFacDET_DESCUENTO.value)/100]));
    QDetalleFacPrecioItbis.value := strtofloat(format('%10.2f',[Venta]));
    QDetalleFacCalcItbis.value   := 0;
    QDetalleFacValor.value       := strtofloat(format('%10.2f',[(Venta-QDetalleFacCalcDesc.value)*QDetalleFacDET_CANTIDAD.value]));
  end;
  QDetalleFacTotalDesc.Value  := QDetalleFacCalcDesc.value * QDetalleFacdet_cantidad.Value;
  QDetalleFacTotalItbis.Value := QDetalleFacCalcItbis.value * QDetalleFacdet_cantidad.Value;
  QDetalleFacBeneficio.Value := QDetalleFacValor.Value - (QDetalleFacTotalCosto.Value +
                                                          (QDetalleFaccomision.Value)+
                                                          (QDetalleFacCalcItbis.Value * QDetalleFacdet_cantidad.Value));

end;

procedure TfrmConsBeneficio.QFacturasAfterOpen(DataSet: TDataSet);
begin
  if not QDetalleFac.Active then QDetalleFac.Open;
end;

procedure TfrmConsBeneficio.QBeneficioProdCalcFields(DataSet: TDataSet);
begin
if ((QBeneficioProdbeneficio.value > 0) AND (QBeneficioProdcosto.value > 0)) then
    QBeneficioProdPorciento.Value := (QBeneficioProdbeneficio.Value /QBeneficioProdcosto.value)*100 else
    QBeneficioProdPorciento.Value := 100;

end;

procedure TfrmConsBeneficio.QBeneficioFamCalcFields(DataSet: TDataSet);
begin
if ((QBeneficioFambeneficio.value > 0) AND (QBeneficioFamcosto.value > 0)) then
    QBeneficioFamPorciento.Value := (QBeneficioFambeneficio.Value /QBeneficioFamcosto.value)*100 else
    QBeneficioFamPorciento.Value := 100;

end;

procedure TfrmConsBeneficio.edVendedorChange(Sender: TObject);
begin
  if trim(edVendedor.text) = '' then edtVendedorN.text := '';
end;

procedure TfrmConsBeneficio.edVendedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edCaja.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select ven_nombre from vendedores');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and ven_codigo = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edVendedor.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('VENDEDOR NO EXISTE',mterror,[mbok],0);
        edVendedor.SetFocus;
      end
      else
      begin
        edtVendedorN.text := dm.Query1.fieldbyname('ven_nombre').asstring;
        btRefreshClick(Self);
      end;
    end;
  end;
end;

procedure TfrmConsBeneficio.btnVendedorClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Query.clear;
  Search.Query.add('select ven_nombre, ven_codigo');
  Search.Query.add('from vendedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'ven_Codigo';
  Search.Title := 'Vendedores';
  if Search.execute then
  begin
    edVendedor.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select ven_nombre from vendedores');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and ven_codigo = :cod');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edVendedor.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('VENDEDOR NO EXISTE',mterror,[mbok],0)
    else
    edtVendedorN.text := dm.Query1.fieldbyname('ven_nombre').asstring;
    edVendedor.setfocus;
    btRefreshClick(Self);
  end;
end;

end.
