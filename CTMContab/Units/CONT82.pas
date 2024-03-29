unit CONT82;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, Grids, DBGrids, DB, ADODB,
  ComCtrls, DateUtils;

type
  TfrmConsGastosMenores = class(TForm)
    Panel2: TPanel;
    lbCantidad: TLabel;
    BitBtn2: TBitBtn;
    btRefresh: TBitBtn;
    btClose: TBitBtn;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBGrid1: TDBGrid;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalemp_codigo: TIntegerField;
    QSucursalalm_codigo: TIntegerField;
    dsSuc: TDataSource;
    Label6: TLabel;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    QGastos: TADOQuery;
    QGastoscaj_nombre: TStringField;
    QGastoscom_fecha: TDateTimeField;
    QGastosncf_fijo: TStringField;
    QGastosncf_secuencia: TBCDField;
    QGastoscom_fecha_ini: TDateTimeField;
    QGastoscom_fecha_fin: TDateTimeField;
    dsGastos: TDataSource;
    QGastosNCF: TStringField;
    QGastosMonto: TBCDField;
    QGastoscaj_codigo: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure QGastosCalcFields(DataSet: TDataSet);
    procedure btCloseClick(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsGastosMenores: TfrmConsGastosMenores;

implementation

uses SIGMA01, SIGMA00, RCONT26, RCONT32;

{$R *.dfm}

procedure TfrmConsGastosMenores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConsGastosMenores.FormCreate(Sender: TObject);
begin
  Fecha1.Date := StartOfTheMonth(Date);
  Fecha2.Date := EndOfTheMonth(Date);
end;

procedure TfrmConsGastosMenores.QGastosCalcFields(DataSet: TDataSet);
begin
  if not QGastosncf_fijo.IsNull then
    QGastosNCF.Value := QGastosncf_fijo.Value + formatfloat('00000000',QGastosncf_secuencia.Value)
  else
    QGastosNCF.Value := '';
end;

procedure TfrmConsGastosMenores.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsGastosMenores.btRefreshClick(Sender: TObject);
begin
  QGastos.Close;
  QGastos.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  QGastos.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
  QGastos.Parameters.ParamByName('fec1').DataType := ftDate;
  QGastos.Parameters.ParamByName('fec2').DataType := ftDate;
  QGastos.Parameters.ParamByName('fec1').Value := Fecha1.Date;
  QGastos.Parameters.ParamByName('fec2').Value := Fecha2.Date;
  QGastos.Open;
  lbCantidad.Caption := inttostr(QGastos.RecordCount) + ' Comprobantes';
  DBGrid1.SetFocus;
end;

procedure TfrmConsGastosMenores.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
  frmMain.ExportXLS.Sheets[0].DBGrid := DBGrid1;
  frmMain.ExportXLS.Sheets[1].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[0].Exported := True;
end;

procedure TfrmConsGastosMenores.BitBtn1Click(Sender: TObject);
begin

  Application.CreateForm(tRNCF_Gastos_Menores, RNCF_Gastos_Menores);
  RNCF_Gastos_Menores.lbperiodo.caption                                 := 'Periodo: '+DateToStr(fecha1.Date)+' Al '+ DateToStr(fecha2.Date);
  RNCF_Gastos_Menores.lbfecha.Caption                                   := 'Fecha emision: '+DateToStr(QGastoscom_fecha.Value);
  RNCF_Gastos_Menores.lbncf.Caption                                     := 'NCF: '+QGastosNCF.Value;
  RNCF_Gastos_Menores.QDetalle.Parameters.ParamByName('emp').Value      := dm.QEmpresasEMP_CODIGO.Value;
  RNCF_Gastos_Menores.QDetalle.Parameters.ParamByName('suc').Value      := DBLookupComboBox2.KeyValue;
  RNCF_Gastos_Menores.QDetalle.Parameters.ParamByName('fec').DataType   := ftDate;
  RNCF_Gastos_Menores.QDetalle.Parameters.ParamByName('fec').Value      := QGastoscom_fecha.Value;
  RNCF_Gastos_Menores.QDetalle.Parameters.ParamByName('caj').Value      := QGastoscaj_codigo.Value;
  RNCF_Gastos_Menores.QDetalle.Parameters.ParamByName('fec1').DataType  := ftDate;
  RNCF_Gastos_Menores.QDetalle.Parameters.ParamByName('fec1').Value     := QGastoscom_fecha_ini.Value;
  RNCF_Gastos_Menores.QDetalle.Parameters.ParamByName('fec2').DataType  := ftDate;
  RNCF_Gastos_Menores.QDetalle.Parameters.ParamByName('fec2').Value     := QGastoscom_fecha_fin.Value;
  RNCF_Gastos_Menores.QDetalle.Open;
  RNCF_Gastos_Menores.PrinterSetup;
  RNCF_Gastos_Menores.Preview;
  RNCF_Gastos_Menores.Destroy;
end;

procedure TfrmConsGastosMenores.BitBtn2Click(Sender: TObject);
begin
  Application.CreateForm(tRNCF_Gastos_Menores_lista, RNCF_Gastos_Menores_lista);
//  RNCF_Gastos_Menores_lista.lbperiodo.caption                                 := 'Periodo: '+DateToStr(fecha1.Date)+' Al '+ DateToStr(fecha2.Date);
  RNCF_Gastos_Menores_lista.PrinterSetup;
  RNCF_Gastos_Menores_lista.Preview;
  RNCF_Gastos_Menores_lista.Destroy;
end;

end.
