unit PVENTA34;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery, Grids, DBGrids, IBUpdateSQL, Buttons,
  StdCtrls, ComCtrls, ADODB;

type
  TfrmPrecios = class(TForm)
    BitBtn1: TBitBtn;
    Label1: TLabel;
    edProducto: TEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edPrecio1: TEdit;
    edPrecio2: TEdit;
    edPrecio3: TEdit;
    edPrecio4: TEdit;
    btClose: TBitBtn;
    QProductos: TADOQuery;
    QProductosEMP_CODIGO: TIntegerField;
    QProductosPRO_CODIGO: TIntegerField;
    QProductosPRO_RORIGINAL: TIBStringField;
    QProductosPRO_RFABRIC: TIBStringField;
    QProductosPRO_NOMBRE: TIBStringField;
    QProductosFAM_CODIGO: TIntegerField;
    QProductosCOL_CODIGO: TIntegerField;
    QProductosPRO_BARRA: TIBStringField;
    QProductosPRO_DESCMAX: TFloatField;
    QProductosPRO_ULTCOSTO: TFloatField;
    QProductosPRO_COSTO: TFloatField;
    QProductosPRO_PRECIO1: TFloatField;
    QProductosPRO_PRECIO2: TFloatField;
    QProductosPRO_PRECIO3: TFloatField;
    QProductosPRO_PRECIO4: TFloatField;
    QProductosPRO_DISPLAY: TIBStringField;
    QProductosPRO_STATUS: TIBStringField;
    QProductosPRO_INVINICIAL: TFloatField;
    QProductosPRO_EXISTENCIA: TFloatField;
    QProductosPRO_UBICACION: TIBStringField;
    QProductosPRO_STKMINIMO: TFloatField;
    QProductosPRO_STKMAXIMO: TFloatField;
    QProductosPRO_INVFISICO: TFloatField;
    QProductosPRO_PEDIDOPRV: TFloatField;
    QProductosPRO_PEDIDOCLI: TFloatField;
    QProductosPRO_CTAINVENT: TIBStringField;
    QProductosPRO_CTACOSTO: TIBStringField;
    QProductosDEP_CODIGO: TIntegerField;
    QProductosPRO_ITBIS: TIBStringField;
    QProductosPRO_BENEFICIO: TFloatField;
    QProductosPRO_ESCALA: TIBStringField;
    QProductosPRO_SERVICIO: TIBStringField;
    QProductosMAR_CODIGO: TIntegerField;
    QProductosPRO_COMISION: TFloatField;
    QProductosPRO_VENCE: TIBStringField;
    QProductosPRO_BENEFICIO2: TFloatField;
    QProductosPRO_BENEFICIO3: TFloatField;
    QProductosPRO_BENEFICIO4: TFloatField;
    QProductosPRO_USO: TIBStringField;
    QProductosSUP_CODIGO: TIntegerField;
    QProductosPRO_NUEVOUSADO: TIBStringField;
    QProductosPRO_COSTOUS: TFloatField;
    QProductosPRO_TASACOMPRA: TFloatField;
    QProductosPRO_TASAVENTA: TFloatField;
    QProductosPRO_PRECIOMENOR: TFloatField;
    QProductosPRO_EXISTEMPAQUE: TFloatField;
    QProductosPRO_CANTEMPAQUE: TFloatField;
    QProductosPRO_COSTOEMPAQUE: TFloatField;
    QProductosPRO_COMBO: TIBStringField;
    QProductosPRO_INVINICIALEMP: TFloatField;
    QProductosPRO_STKMINIMOEMP: TFloatField;
    QProductosPRO_STKMAXIMOEMP: TFloatField;
    QProductosPRO_PRECIOMENOREMP: TFloatField;
    QProductosPRO_ALMACENBAR: TIntegerField;
    QProductosMON_CODIGO: TIntegerField;
    QProductosPRO_COMISIONDESCUENTO: TBCDField;
    QProductosPRO_CONTROLADO: TStringField;
    QProductosPRO_DETALLADO: TStringField;
    QProductospro_realizar_pedido: TStringField;
    QProductosCalcCosto: TFloatField;
    QProductosCalcCostoEmp: TFloatField;
    QProductosValor: TFloatField;
    QProductosValorEmp: TFloatField;
    QProductosusu_codigo: TIntegerField;
    QProductospro_fecha_modifico: TDateTimeField;
    QProductospro_comentario: TMemoField;
    QProductospro_foto: TStringField;
    QProductospro_selectivo_ad: TBCDField;
    QProductospro_selectivo_con: TBCDField;
    QProductospro_unidad_medida: TStringField;
    QProductospro_minimo_venta: TBCDField;
    QProductospro_volumen: TBCDField;
    QProductosger_codigo: TIntegerField;
    QProductosgon_codigo: TIntegerField;
    QProductospro_patrocinador: TStringField;
    QProductosUnidadID: TStringField;
    dsProductos: TDataSource;
    QUnidades: TADOQuery;
    QUnidadesemp_codigo: TIntegerField;
    QUnidadespro_codigo: TIntegerField;
    QUnidadesUnidadID: TStringField;
    QUnidadesCantidad: TBCDField;
    QUnidadesSecuencia: TIntegerField;
    QUnidadesNombre: TStringField;
    QUnidadesPrecio: TBCDField;
    QUnidadesCredito: TBCDField;
    QUnidadesMinimo: TBCDField;
    QMedidas: TADOQuery;
    QMedidasUnidadID: TStringField;
    QMedidasNombre: TStringField;
    dsMedida: TDataSource;
    dsUnidades: TDataSource;
    QUnidadesPrecioNeto: TFloatField;
    gunidades: TDBGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btCloseClick(Sender: TObject);
    procedure QUnidadesCalcFields(DataSet: TDataSet);
    procedure gunidadesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gunidadesDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    precio, actbalance : string;
    acepto : integer;
    vl_precio : Currency;
  end;

var
  frmPrecios: TfrmPrecios;

implementation

uses SIGMA01, PVENTA18;


{$R *.DFM}

procedure TfrmPrecios.BitBtn1Click(Sender: TObject);
begin
  precio := 'null';
  close;
end;

procedure TfrmPrecios.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_escape then
  begin
    precio := 'null';
    close;
  end;
  if key = vk_f2 then
  begin
    if dm.QParametrospar_inv_unidad_medida.Value <> 'True' then
    begin
      precio := 'pro_precio1';
      close;
    end;
  end;
  if key = vk_f3 then
  begin
    if dm.QParametrospar_inv_unidad_medida.Value <> 'True' then
    begin
      precio := 'pro_precio2';
      close;
    end;
  end;
  if key = vk_f4 then
  begin
    if dm.QParametrospar_inv_unidad_medida.Value <> 'True' then
    begin
      precio := 'pro_precio3';
      close;
    end;
  end;
  if key = vk_f5 then
  begin
    if dm.QParametrospar_inv_unidad_medida.Value <> 'True' then
    begin
      precio := 'pro_precio4';
      close;
    end;
  end;
end;

procedure TfrmPrecios.btCloseClick(Sender: TObject);
begin
  acepto := 0;
  Close;
end;

procedure TfrmPrecios.QUnidadesCalcFields(DataSet: TDataSet);
begin
  if actbalance = 'True' then
    QUnidadesPrecioNeto.Value := QUnidadesCredito.Value
  else
    QUnidadesPrecioNeto.Value := QUnidadesPrecio.Value;
end;

procedure TfrmPrecios.gunidadesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    acepto := 1;
    close;
  end;
end;

procedure TfrmPrecios.gunidadesDblClick(Sender: TObject);
begin
if gunidades.SelectedIndex = 2 then
vl_precio := QUnidadesPrecio.Value;
if gunidades.SelectedIndex = 3 then
vl_precio := QUnidadesCredito.Value;
if gunidades.SelectedIndex = 4 then
vl_precio := QUnidadesMinimo.Value;

acepto := 1;
Close;
end;

end.
