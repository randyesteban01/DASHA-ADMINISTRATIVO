unit PVENTA20;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids,
  IBCustomDataSet, IBUpdateSQL, DB, IBQuery, ADODB,
  QuerySearchDlgADO, ComCtrls, Menus, Math;

type
  TfrmPedidosProv = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    edProveedor: TEdit;
    btProveedor: TSpeedButton;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    tBalance: TEdit;
    Panel5: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    Search: TQrySearchDlgADO;
    Query1: TADOQuery;
    QPedidos: TADOQuery;
    QPedidosEMP_CODIGO: TIntegerField;
    QPedidosPED_TIPO: TIBStringField;
    QPedidosPED_NUMERO: TIntegerField;
    QPedidosPED_FECHA: TDateTimeField;
    QPedidosVEN_CODIGO: TIntegerField;
    QPedidosCPA_CODIGO: TIntegerField;
    QPedidosPED_DIRECCION: TIBStringField;
    QPedidosPED_LOCALIDAD: TIBStringField;
    QPedidosPED_TELEFONO: TIBStringField;
    QPedidosPED_FAX: TIBStringField;
    QPedidosPED_DESCUENTO: TFloatField;
    QPedidosPED_ITBIS: TFloatField;
    QPedidosPED_OTROS: TFloatField;
    QPedidosPED_TOTAL: TFloatField;
    QPedidosPED_STATUS: TIBStringField;
    QPedidosSUP_CODIGO: TIntegerField;
    QPedidosSubTotal: TFloatField;
    QPedidosCLI_CODIGO: TIntegerField;
    QPedidosPED_NOMBRE: TIBStringField;
    QPedidosCLI_REFERENCIA: TIBStringField;
    QPedidosPED_NOTA: TMemoField;
    dsPedidos: TDataSource;
    QDetalle: TADOQuery;
    QDetalleEMP_CODIGO: TIntegerField;
    QDetallePED_TIPO: TIBStringField;
    QDetallePED_NUMERO: TIntegerField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetallePRO_CODIGO: TIntegerField;
    QDetallePRO_RORIGINAL: TIBStringField;
    QDetallePRO_RFABRIC: TIBStringField;
    QDetalleDET_DESCRIPCION: TIBStringField;
    QDetalleDET_CANTIDAD: TFloatField;
    QDetalleDET_PRECIO: TFloatField;
    QDetalleDET_CONITBIS: TIBStringField;
    QDetalleDET_ITBIS: TFloatField;
    QDetalleDET_DESCUENTO: TFloatField;
    QDetalleDET_FACTURADO: TFloatField;
    QDetalleDET_STATUS: TIBStringField;
    QDetalleCalcItbis: TFloatField;
    QDetalleCalcDesc: TFloatField;
    QDetalleValor: TFloatField;
    QDetallePrecioItbis: TFloatField;
    dsDetalle: TDataSource;
    Grid: TDBGrid;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    btCondicion: TSpeedButton;
    tCondicion: TEdit;
    btBuscaPedido: TSpeedButton;
    btGrabar: TSpeedButton;
    btLimpiar: TSpeedButton;
    btSalir: TSpeedButton;
    btBuscaProd: TSpeedButton;
    btElimina: TSpeedButton;
    btNota: TSpeedButton;
    DBEdit12: TDBEdit;
    DBEdit6: TDBEdit;
    Label1: TLabel;
    DBEdit9: TDBEdit;
    QPedidosUSU_CODIGO: TIntegerField;
    QDetalleDET_MEDIDA: TIBStringField;
    QDetalleDET_COSTOUND: TFloatField;
    QDetalleDET_COSTOEMP: TFloatField;
    Label7: TLabel;
    DBEdit11: TDBEdit;
    QPedidosSUC_CODIGO: TIntegerField;
    QDetalleSUC_CODIGO: TIntegerField;
    DBLookupComboBox2: TDBLookupComboBox;
    Label14: TLabel;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    btBuscaProdProv: TSpeedButton;
    Label11: TLabel;
    DBEdit13: TDBEdit;
    QDetalleDET_NOTA: TMemoField;
    Label12: TLabel;
    QPedidosped_envio: TMemoField;
    DBRichEdit1: TDBRichEdit;
    QDetalleValor2: TFloatField;
    Label13: TLabel;
    btmoneda: TSpeedButton;
    tmoneda: TEdit;
    QPedidosmon_codigo: TIntegerField;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    DBEdit14: TDBEdit;
    Label18: TLabel;
    cbidioma: TComboBox;
    QDetalledet_despachado: TBCDField;
    DBLookupComboBox1: TDBLookupComboBox;
    QCourrier: TADOQuery;
    QCourriercou_codigo: TIntegerField;
    QCourriercou_nombre: TStringField;
    QCourriercou_direccion_envio: TMemoField;
    dsCourriers: TDataSource;
    QPedidoscou_codigo: TIntegerField;
    DBText1: TDBText;
    QPedidoscen_codigo: TIntegerField;
    Label20: TLabel;
    DBEdit16: TDBEdit;
    btcentro: TSpeedButton;
    tcentro: TEdit;
    QPedidosped_confirmado: TStringField;
    ADOLogistica: TADOConnection;
    QryLogistica: TADOQuery;
    btlogistica: TSpeedButton;
    QDetalledet_cantempaque: TBCDField;
    QDetalleCalcCosto: TFloatField;
    QDetalleCalcCostoEmp: TFloatField;
    QDetalleValorItbisUnd: TFloatField;
    QDetalleValorItbisEmp: TFloatField;
    QDetalleCostoNeto: TFloatField;
    QDetallePrecioItbisEmp: TFloatField;
    QDetalleCalcItbisEmp: TFloatField;
    QDetalleCalcDescEmp: TFloatField;
    QDetalleValorEmp: TFloatField;
    PopupMenu1: TPopupMenu;
    Notaalproducto1: TMenuItem;
    Panel1: TPanel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    sbPrecios: TScrollBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    Label25: TLabel;
    btdepto: TSpeedButton;
    DBEdit25: TDBEdit;
    tdepto: TEdit;
    QPedidosdep_codigo: TIntegerField;
    Pantalladeproductos1: TMenuItem;
    Pantalladeajustedeinventario1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Consultarmovimientos1: TMenuItem;
    btprecios: TBitBtn;
    QUnidades: TADOQuery;
    QUnidadesemp_codigo: TIntegerField;
    QUnidadesped_numero: TIntegerField;
    QUnidadespro_codigo: TIntegerField;
    QUnidadesUnidadID: TStringField;
    QUnidadesPrecio: TBCDField;
    QUnidadesCantidad: TBCDField;
    QUnidadesSecuencia: TIntegerField;
    QUnidadesCredito: TBCDField;
    QUnidadesMinimo: TBCDField;
    QUnidadessuc_codigo: TIntegerField;
    QUnidadesped_tipo: TStringField;
    N3: TMenuItem;
    buscarproductoenellistado1: TMenuItem;
    Lista: TListBox;
    QPedidosped_tasa: TFloatField;
    QDetalledet_costound_ant: TFloatField;
    QDetalledet_costoemp_ant: TFloatField;
    QDetallepro_beneficio: TFloatField;
    QDetallepro_beneficio2: TFloatField;
    QDetallepro_beneficio3: TFloatField;
    QDetallepro_beneficio4: TFloatField;
    QDetallepro_precio1: TFloatField;
    QDetallepro_precio2: TFloatField;
    QDetallepro_precio3: TFloatField;
    QDetallepro_precio4: TFloatField;
    QDetalledet_oferta: TFloatField;
    QPedidosPED_COTIZACION: TStringField;
    QPedidosped_solicitud_compra: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QPedidosNewRecord(DataSet: TDataSet);
    procedure QPedidosAfterPost(DataSet: TDataSet);
    procedure QPedidosBeforePost(DataSet: TDataSet);
    procedure QPedidosCalcFields(DataSet: TDataSet);
    procedure GridColEnter(Sender: TObject);
    procedure GridEnter(Sender: TObject);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure btSalirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btNotaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QPedidosCPA_CODIGOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure btCondicionClick(Sender: TObject);
    procedure QDetalleAfterPost(DataSet: TDataSet);
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure QDetallePRO_CODIGOChange(Sender: TField);
    procedure QDetallePRO_RORIGINALChange(Sender: TField);
    procedure QDetallePRO_RFABRICChange(Sender: TField);
    procedure btBuscaProdClick(Sender: TObject);
    procedure btEliminaClick(Sender: TObject);
    procedure btLimpiarClick(Sender: TObject);
    procedure btBuscaPedidoClick(Sender: TObject);
    procedure btGrabarClick(Sender: TObject);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btProveedorClick(Sender: TObject);
    procedure QDetalledet_(DataSet: TDataSet);
    procedure QDetalleDET_MEDIDAChange(Sender: TField);
    procedure QDetalleNewRecord(DataSet: TDataSet);
    procedure btBuscaProdProvClick(Sender: TObject);
    procedure btmonedaClick(Sender: TObject);
    procedure QPedidosmon_codigoChange(Sender: TField);
    procedure QPedidosmon_codigoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QPedidoscou_codigoChange(Sender: TField);
    procedure btcentroClick(Sender: TObject);
    procedure QPedidoscen_codigoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure btconfirmarClick(Sender: TObject);
    procedure dsPedidosDataChange(Sender: TObject; Field: TField);
    procedure btlogisticaClick(Sender: TObject);
    procedure edProveedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QDetalleDET_COSTOUNDChange(Sender: TField);
    procedure QDetalleDET_COSTOEMPChange(Sender: TField);
    procedure Notaalproducto1Click(Sender: TObject);
    procedure DBEdit18KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit20KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit22KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit24KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QDetallepro_beneficioChange(Sender: TField);
    procedure QDetallepro_beneficio2Change(Sender: TField);
    procedure QDetallepro_beneficio3Change(Sender: TField);
    procedure QDetallepro_beneficio4Change(Sender: TField);
    procedure btdeptoClick(Sender: TObject);
    procedure QPedidosdep_codigoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure Pantalladeproductos1Click(Sender: TObject);
    procedure Pantalladeajustedeinventario1Click(Sender: TObject);
    procedure Consultarmovimientos1Click(Sender: TObject);
    procedure btpreciosClick(Sender: TObject);
    procedure QDetalleAfterDelete(DataSet: TDataSet);
    procedure buscarproductoenellistado1Click(Sender: TObject);
    procedure QDetalleBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    SubTotal, Total, descuento : double;
    Totaliza, Buscando, Busco : boolean;
    DecisionPrecio, MedidaAlm : string;
    procedure totalizar;
    procedure precios;
  end;
var
  frmPedidosProv: TfrmPedidosProv;

implementation

uses PVENTA33, PVENTA34, PVENTA36, RVENTA01, SIGMA01, SIGMA00, RVENTA88,
  PVENTA15, PVENTA138, PVENTA186, PVENTA227;

{$R *.DFM}

procedure TfrmPedidosProv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmPedidosProv.FormPaint(Sender: TObject);
begin
  frmPedidosProv.top := 5;
  frmPedidosProv.left := 0;
end;

procedure TfrmPedidosProv.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then btSalirClick(self);
  if key = vk_f2  then btGrabarClick(self);
  if key = vk_f3  then btLimpiarClick(self);
  if key = vk_f7  then btNotaClick(self);
end;

procedure TfrmPedidosProv.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    if (ActiveControl.classtype <> tdbgrid) and (ActiveControl.classtype <> TDBRichEdit) then
    begin
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    end;
  end;
end;

procedure TfrmPedidosProv.QPedidosNewRecord(DataSet: TDataSet);
var
  a : integer;
begin
  Lista.Items.Clear;

  Total := 0;
  Totaliza := true;
  QPedidosped_confirmado.Value := 'False';
  Qpedidoscou_codigo.Value := QCourriercou_codigo.Value;
  QPedidosmon_codigo.Value := dm.QParametrosMON_CODIGO.Value;
  QPedidosSUC_CODIGO.Value := QSucursalsuc_codigo.Value;
  QPedidosUSU_CODIGO.value := dm.Usuario;
  QPedidosEMP_CODIGO.value := dm.vp_cia;
  QPedidosPED_TIPO.value   := 'S';
  QPedidosPED_STATUS.value := 'EMI';
  QPedidosPED_TOTAL.value  := 0;
  QPedidosPED_DESCUENTO.value := 0;
  QPedidosPED_ITBIS.value  := 0;
  QPedidosPED_OTROS.value  := 0;
  QPedidosPED_FECHA.value  := date;
  
  QDetalle.close;
  QDetalle.Parameters.parambyname('emp').Value := dm.vp_cia;
  QDetalle.Parameters.parambyname('suc').Value := -1;
  QDetalle.Parameters.parambyname('num').Value := -1;
  QDetalle.open;

  QUnidades.close;
  QUnidades.Parameters.parambyname('emp').Value := dm.vp_cia;
  QUnidades.Parameters.parambyname('suc').Value := -1;;
  QUnidades.Parameters.parambyname('num').Value := -1;
  QUnidades.open;

  edProveedor.Text := '';
  tBalance.Text := '';
  tdepto.Text := '';
end;

procedure TfrmPedidosProv.QPedidosAfterPost(DataSet: TDataSet);
begin
  QPedidos.UpdateBatch;
end;

procedure TfrmPedidosProv.QPedidosBeforePost(DataSet: TDataSet);
begin
  if QPedidos.state = dsInsert then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select isnull(max(ped_numero),0) as maximo');
    dm.Query1.sql.add('from pedidos where emp_codigo = :emp');
    dm.Query1.sql.add('and ped_tipo = '+#39+'S'+#39);
    dm.Query1.sql.add('and suc_codigo = :suc');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('suc').Value := QPedidosSUC_CODIGO.Value;
    dm.Query1.open;
    QPedidosPED_NUMERO.value := dm.Query1.fieldbyname('maximo').asinteger + 1;
  end;
end;

procedure TfrmPedidosProv.QPedidosCalcFields(DataSet: TDataSet);
begin
  QPedidosSubTotal.value := Total;
end;

procedure TfrmPedidosProv.totalizar;
var
  Puntero : TBookmark;
  TItbis, TDesc, NumItbis, grabado : Double;
begin
  if Totaliza = true then
  begin
    Puntero := QDetalle.GetBookmark;
    QDetalle.disablecontrols;
    QDetalle.first;
    Total  := 0;
    TItbis := 0;
    TDesc  := 0;
    NumItbis := (QDetalleDET_ITBIS.asfloat/100)+1;
    while not QDetalle.eof do
    begin
      if QDetalleDET_MEDIDA.Value = 'Und' then
      begin
        Total  := Total  + QDetalleDET_CANTIDAD.value*QDetallePrecioItbis.value;
        TItbis := TItbis + QDetalleCalcItbis.value*QDetalleDET_CANTIDAD.value;
        TDesc  := TDesc  + QDetalleCalcDesc.value*QDetalleDET_CANTIDAD.value;
        if QDetalleDET_CONITBIS.Value = 'S' then
          grabado := grabado + ((QDetallePrecioItbis.value-QDetalleCalcDesc.Value)*QDetalleDET_CANTIDAD.value);
      end
      else
      begin
        Total  := Total  + QDetalleDET_CANTIDAD.value*QDetallePrecioItbisEmp.value;
        TItbis := TItbis + QDetalleCalcItbisEmp.value*QDetalleDET_CANTIDAD.value;
        TDesc  := TDesc  + QDetalleCalcDescEmp.value*QDetalleDET_CANTIDAD.value;
        if QDetalleDET_CONITBIS.Value = 'S' then
          grabado := grabado + ((QDetalleCalcItbisEmp.value-QDetalleCalcDescEmp.Value)*QDetalleDET_CANTIDAD.value);
      end;
      QDetalle.next;
    end;
    QPedidos.edit;
    QPedidosPED_ITBIS.value     := RoundTo(TItbis, -2);
    QPedidosPED_DESCUENTO.value := TDesc;
    QPedidosPED_TOTAL.value     := (Total-TDesc)+QPedidosPED_ITBIS.value;
    QDetalle.GotoBookmark(Puntero);
    QDetalle.enablecontrols;
  end;
end;

procedure TfrmPedidosProv.GridColEnter(Sender: TObject);
begin
{  if Grid.selectedindex = 1 then
     Grid.selectedindex := Grid.selectedindex + 1;}

  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_CANTEMPAQUE' then
     Grid.selectedindex := Grid.selectedindex + 1;

  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'CALCITBIS' then
     Grid.selectedindex := Grid.selectedindex + 1;

  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'PRECIOITBIS' then
     Grid.selectedindex := Grid.selectedindex + 1;

  if (uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_COSTOUND') and (UpperCase(QDetalleDET_MEDIDA.Value) = 'EMP') then
    Grid.SelectedIndex := Grid.SelectedIndex + 1;

  if (uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_COSTOEMP') and (UpperCase(QDetalleDET_MEDIDA.Value) = 'UND') then
    Grid.SelectedIndex := Grid.SelectedIndex + 1;
     
  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'VALOR' then
  begin
    Grid.selectedindex := 0;
    QDetalle.append;
  end;
end;

procedure TfrmPedidosProv.GridEnter(Sender: TObject);
begin
  Grid.selectedindex := 0;
end;

procedure TfrmPedidosProv.GridKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then Grid.selectedindex := Grid.selectedindex + 1;
  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_MEDIDA' then
  begin
    QDetalle.Edit;
    if uppercase(key) = 'E' then
      QDetalleDET_MEDIDA.Value := 'Emp'
    else if uppercase(key) = 'U' then
      QDetalleDET_MEDIDA.Value := 'Und';
  end;
end;

procedure TfrmPedidosProv.btSalirClick(Sender: TObject);
begin
  close;
end;

procedure TfrmPedidosProv.FormActivate(Sender: TObject);
begin
  if not QPedidos.active then
  begin
    totaliza := true;
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;

    QCourrier.Open;

    QPedidos.Parameters.parambyname('num').Value := -1;
    QPedidos.Parameters.parambyname('suc').Value := -1;
    QPedidos.open;
    QPedidos.insert;
  end;
end;

procedure TfrmPedidosProv.btNotaClick(Sender: TObject);
begin
  application.createform(tfrmNota, frmNota);
  frmNota.DBMemo1.DataSource := frmPedidosProv.dsPedidos;
  frmNota.DBMemo1.DataField := 'PED_NOTA';
  frmNota.showmodal;
  frmNota.release;
end;

procedure TfrmPedidosProv.FormCreate(Sender: TObject);
var
  a : integer;
begin
  sbPrecios.Visible := dm.QParametrospar_inv_unidad_medida.Value <> 'True';
  btprecios.Visible := dm.QParametrospar_inv_unidad_medida.Value = 'True';
  btlogistica.Visible := Trim(dm.QParametrospar_ftp_ruta.Value) <> '';
  for a := 0 to (Sender as TForm).ComponentCount -1 DO
  begin
    if Components[a].ClassType = tdbedit then
    begin
      (Components[a] as tdbedit).OnEnter := frmMain.Entra;
      (Components[a] as tdbedit).OnExit := frmMain.sale;
    end;
  end;
  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
     Grid.Columns[0].FieldName := 'PRO_CODIGO'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
     Grid.Columns[0].FieldName := 'PRO_RFABRIC'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
     Grid.Columns[0].FieldName := 'PRO_RORIGINAL';

  if dm.QParametrospar_visualizadesc.Value <> 'True' then
  begin
    Grid.Columns[9].Destroy;
    Grid.Columns[2].Width := Grid.Columns[2].Width + 13;
  end;

  if dm.QParametrosPAR_FACMEDIDA.Value <> 'True' then
  begin
    Grid.Columns[7].Destroy;
    Grid.Columns[5].Destroy;
    Grid.Columns[3].Destroy;
    Grid.Columns[2].Width := Grid.Columns[2].Width + 130;
  end;     
end;

procedure TfrmPedidosProv.QPedidosCPA_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QPedidosCPA_CODIGO.isnull then
  begin
    Text := inttostr(QPedidosCPA_CODIGO.value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cpa_nombre from condiciones');
    dm.Query1.sql.add('where emp_Codigo = :emp');
    dm.Query1.sql.add('and cpa_Codigo = :con');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('con').Value := QPedidosCPA_CODIGO.value;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      tCondicion.text := ''
    else
      tCondicion.text := dm.Query1.fieldbyname('cpa_nombre').asstring;
  end
  else
    tCondicion.text := '';
end;

procedure TfrmPedidosProv.btCondicionClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Condicion');
  Search.AliasFields.Add('Codigo');
  Search.Query.clear;
  Search.Query.add('select cpa_nombre, cpa_codigo');
  Search.Query.add('from condiciones');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'cpa_Codigo';
  Search.Title := 'Condiciones de pago';
  if Search.execute then
  begin
    QPedidosCPA_CODIGO.value := strtoint(Search.ValueField);
    dbEdit12.setfocus;
  end;
end;

procedure TfrmPedidosProv.QDetalleAfterPost(DataSet: TDataSet);
begin
  totalizar;
end;

procedure TfrmPedidosProv.QDetalleCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis : Double;
  VentaEmp, NumItbisEmp : Double;
begin
  if QDetalleDET_CONITBIS.Value = 'S' then
  begin
    QDetalleCalcCosto.Value    := (QDetalleDET_COSTOUND.Value * QDetalleDET_ITBIS.Value)/100;
    QDetalleCalcCostoemp.Value := (QDetalleDET_COSTOEMP.Value * QDetalleDET_ITBIS.Value)/100;
  end
  else
  begin
    QDetalleCalcCosto.Value    := 0;
    QDetalleCalcCostoemp.Value := 0;
  end;
  QDetalleValorItbisUnd.value := QDetalleCalcCosto.Value + QDetalleDET_COSTOUND.Value;
  QDetalleValorItbisEmp.value := QDetalleCalcCostoemp.Value + QDetalleDET_COSTOEMP.Value;

  if QDetalledet_medida.AsString = 'Und' then
    QDetalleCostoNeto.Value := QDetalleDET_COSTOUND.Value + QDetalleCalcCosto.Value
  else
    QDetalleCostoNeto.Value := QDetalleDET_COSTOEMP.Value + QDetalleCalcCostoEmp.Value;

  //Unidad
  if QDetalleDET_CONITBIS.value = 'S' then
  begin
    NumItbis := strtofloat(format('%10.2f',[(QDetalleDET_ITBIS.asfloat/100)+1]));
    Venta    := QDetalleDET_COSTOUND.value;
    QDetallePrecioItbis.value := Venta;
    QDetalleCalcDesc.value    := RoundTo((Venta * QDetalleDET_DESCUENTO.value)/100, -4);
    QDetalleCalcItbis.value   := ((Venta-QDetalleCalcDesc.value)*QDetalleDET_ITBIS.Value)/100;
    QDetalleValor.value       := (Venta-QDetalleCalcDesc.value)*QDetalleDET_CANTIDAD.value;
  end
  else
  begin
    Venta := QDetalleDET_COSTOUND.value;
    QDetalleCalcDesc.value    := RoundTo((Venta * QDetalleDET_DESCUENTO.value)/100, -4);
    QDetallePrecioItbis.value := Venta;
    QDetalleValor.value       := (Venta-QDetalleCalcDesc.value)*QDetalleDET_CANTIDAD.value;
    QDetalleCalcItbis.value   := 0;
  end;

  //Empaque
  if QDetalleDET_CONITBIS.value = 'S' then
  begin
    NumItbisEmp := strtofloat(format('%10.2f',[(QDetalleDET_ITBIS.asfloat/100)+1]));
    VentaEmp    := QDetalleDET_COSTOEMP.value;
    QDetalleCalcDescEmp.value    := RoundTo((VentaEmp * QDetalleDET_DESCUENTO.value)/100, -4);
    QDetallePrecioItbisEmp.value := VentaEmp;
    QDetalleCalcItbisEmp.value   := ((VentaEmp-QDetalleCalcDescEmp.value)*QDetalleDET_ITBIS.Value)/100;
    QDetalleValorEmp.value       := (VentaEmp-QDetalleCalcDescEmp.value)*QDetalleDET_CANTIDAD.value;
  end
  else
  begin
    VentaEmp := QDetalleDET_COSTOEMP.value;
    QDetalleCalcDescEmp.value    := RoundTo((VentaEmp * QDetalleDET_DESCUENTO.value)/100, -4);
    QDetallePrecioItbisEmp.value := VentaEmp;
    QDetalleValorEmp.value       := (VentaEmp-QDetalleCalcDescEmp.value)*QDetalleDET_CANTIDAD.value;
    QDetalleCalcItbisEmp.value   := 0;
  end;
  if QDetalleDET_MEDIDA.Value = 'Emp' then QDetalleValor.Value := QDetalleValorEmp.Value;
end;

procedure TfrmPedidosProv.QDetallePRO_CODIGOChange(Sender: TField);
var
  puede : boolean;
  cod : integer;
begin
  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
  begin
    if (not QDetallePRO_CODIGO.isnull) and (Busco = false) then
    begin
      puede := true;
      if Lista.Items.IndexOf(QDetallePRO_CODIGO.AsString) >= 0 then
      begin
        if MessageDlg('Ya este producto existe en la lista, desea continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        begin
          Puede := false;
          cod := QDetallePRO_CODIGO.Value;
          QDetalle.Cancel;
          QDetalle.Locate('pro_codigo', cod, []);
        end;
      end;

      if puede then
      begin
        Busco := False;
        dm.Query1.close;
        dm.Query1.sql.clear;
        dm.Query1.sql.add('select pro_codigo, pro_nombre, pro_costo, pro_precio1,');
        dm.Query1.sql.add('pro_precio2, pro_precio3, pro_precio4, pro_servicio,');
        dm.Query1.sql.add('pro_roriginal, pro_rfabric, pro_itbis, pro_costoempaque, pro_cantempaque,');
        dm.Query1.sql.add('pro_beneficio, pro_beneficio2, pro_beneficio3, pro_beneficio4,');
        dm.Query1.sql.add('pro_precio1, pro_precio2, pro_precio3, pro_precio4, pro_montoitbis');
        dm.Query1.sql.add('from productos');
        dm.Query1.sql.add('where emp_codigo = :emp');
        dm.Query1.sql.add('and pro_codigo = :cod');
        dm.Query1.sql.add('and pro_status = '+QuotedStr('ACT'));
        dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
        dm.Query1.Parameters.parambyname('cod').Value := QDetallePRO_CODIGO.value;
        dm.Query1.open;
        if dm.Query1.RecordCount = 0 then
        begin
          MessageDlg('ESTE PRODUCTO NO ESTA REGISTRADO EN EL MAESTRO',
          mtError,[mbok],0);
          Abort;
        end
        else
        begin
          QDetallePRO_RORIGINAL.value   := dm.Query1.fieldbyname('pro_roriginal').asstring;
          QDetalleDET_DESCRIPCION.value := dm.Query1.fieldbyname('pro_nombre').asstring;
          QDetalleDET_CONITBIS.value    := dm.Query1.fieldbyname('pro_itbis').asstring;
          QDetalledet_cantempaque.Value := dm.Query1.fieldbyname('pro_cantempaque').AsFloat;
          QDetalleDET_COSTOUND.Value    := dm.Query1.fieldbyname('pro_costo').AsFloat;
          QDetalleDET_COSTOEMP.Value    := dm.Query1.fieldbyname('pro_costoempaque').AsFloat;
          QDetallePRO_BENEFICIO.Value     := dm.Query1.fieldbyname('pro_beneficio').AsFloat;
          QDetallePRO_BENEFICIO2.Value    := dm.Query1.fieldbyname('pro_beneficio2').AsFloat;
          QDetallePRO_BENEFICIO3.Value    := dm.Query1.fieldbyname('pro_beneficio3').AsFloat;
          QDetallePRO_BENEFICIO4.Value    := dm.Query1.fieldbyname('pro_beneficio4').AsFloat;
          QDetallePRO_PRECIO1.Value   := dm.Query1.fieldbyname('pro_precio1').AsFloat;
          QDetallePRO_PRECIO2.Value   := dm.Query1.fieldbyname('pro_precio2').AsFloat;
          QDetallePRO_PRECIO3.Value   := dm.Query1.fieldbyname('pro_precio3').AsFloat;
          QDetallePRO_PRECIO4.Value   := dm.Query1.fieldbyname('pro_precio4').AsFloat;
          QDetalledet_costound_ant.Value  := dm.Query1.fieldbyname('pro_costo').AsFloat;
          QDetalledet_costoemp_ant.Value  := dm.Query1.fieldbyname('pro_costoempaque').AsFloat;
          QDetallePRO_RFABRIC.value     := dm.Query1.fieldbyname('pro_rfabric').asstring;
          QDetalleDET_ITBIS.Value       := dm.Query1.fieldbyname('pro_montoitbis').AsFloat;
          if not Buscando then
          begin
            if QDetalleDET_MEDIDA.Value = 'Und' then
              QDetalleDET_PRECIO.value := QDetalleDET_COSTOUND.Value
            else if QDetalleDET_MEDIDA.Value = 'Emp' then
              QDetalleDET_PRECIO.value := QDetalleDET_COSTOEMP.Value;

            if QDetalleDET_ITBIS.Value > 0 then
              QDetalleDET_CONITBIS.Value := 'S'
            else
              QDetalleDET_CONITBIS.Value := 'N';
          end;
        end;
      end
      else
        abort;
    end;
  end;
end;

procedure TfrmPedidosProv.QDetallePRO_RORIGINALChange(Sender: TField);
var
  puede : boolean;
  cod : integer;
begin
  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
  begin
    if (not QDetallePRO_RORIGINAL.isnull) and (Busco = False) then
    begin
      Busco := True;
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select pro_codigo, pro_nombre, pro_costo, pro_precio1,');
      dm.Query1.sql.add('pro_precio2, pro_precio3, pro_precio4, pro_servicio,');
      dm.Query1.sql.add('pro_roriginal, pro_rfabric, pro_itbis, pro_costoempaque, pro_cantempaque,');
      dm.Query1.sql.add('pro_beneficio, pro_beneficio2, pro_beneficio3, pro_beneficio4,');
      dm.Query1.sql.add('pro_precio1, pro_precio2, pro_precio3, pro_precio4, pro_montoitbis');
      dm.Query1.sql.add('from productos');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and pro_roriginal = :cod');
      dm.Query1.sql.add('and pro_status = '+QuotedStr('ACT'));
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.parambyname('cod').Value := QDetallePRO_RORIGINAL.value;
      dm.Query1.open;
      if dm.Query1.RecordCount = 0 then
      begin
        Busco := False;
        MessageDlg('ESTE PRODUCTO NO ESTA REGISTRADO EN EL MAESTRO',
        mtError,[mbok],0);
        Abort;
      end
      else
      begin
        QDetallePRO_CODIGO.value := dm.Query1.fieldbyname('pro_codigo').asinteger;

        puede := true;
        if Lista.Items.IndexOf(QDetallePRO_CODIGO.AsString) >= 0 then
        begin
          if MessageDlg('Ya este producto existe en la lista, desea continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
          begin
            Puede := false;
            cod := QDetallePRO_CODIGO.Value;
            QDetalle.Cancel;
            QDetalle.Locate('pro_codigo', cod, []);
            Lista.Items.Add(IntToStr(QDetallePRO_CODIGO.Value));
          end;
        end;

        if puede then
        begin
          QDetalleDET_DESCRIPCION.value := dm.Query1.fieldbyname('pro_nombre').asstring;
          QDetalleDET_CONITBIS.value := dm.Query1.fieldbyname('pro_itbis').asstring;
          QDetalledet_cantempaque.Value := dm.Query1.fieldbyname('pro_cantempaque').AsFloat;
          QDetalleDET_COSTOUND.Value    := dm.Query1.fieldbyname('pro_costo').AsFloat;
          QDetalleDET_COSTOEMP.Value    := dm.Query1.fieldbyname('pro_costoempaque').AsFloat;
          QDetallePRO_BENEFICIO.Value     := dm.Query1.fieldbyname('pro_beneficio').AsFloat;
          QDetallePRO_BENEFICIO2.Value    := dm.Query1.fieldbyname('pro_beneficio2').AsFloat;
          QDetallePRO_BENEFICIO3.Value    := dm.Query1.fieldbyname('pro_beneficio3').AsFloat;
          QDetallePRO_BENEFICIO4.Value    := dm.Query1.fieldbyname('pro_beneficio4').AsFloat;
          QDetallePRO_PRECIO1.Value   := dm.Query1.fieldbyname('pro_precio1').AsFloat;
          QDetallePRO_PRECIO2.Value   := dm.Query1.fieldbyname('pro_precio2').AsFloat;
          QDetallePRO_PRECIO3.Value   := dm.Query1.fieldbyname('pro_precio3').AsFloat;
          QDetallePRO_PRECIO4.Value   := dm.Query1.fieldbyname('pro_precio4').AsFloat;
          QDetalledet_costound_ant.Value  := dm.Query1.fieldbyname('pro_costo').AsFloat;
          QDetalledet_costoemp_ant.Value  := dm.Query1.fieldbyname('pro_costoempaque').AsFloat;
          QDetallePRO_RFABRIC.value   := dm.Query1.fieldbyname('pro_rfabric').asstring;
          QDetalleDET_ITBIS.Value       := dm.Query1.fieldbyname('pro_montoitbis').AsFloat;

          if not Buscando then
          begin
            if QDetalleDET_MEDIDA.Value = 'Und' then
              QDetalleDET_PRECIO.value := QDetalleDET_COSTOUND.Value
            else if QDetalleDET_MEDIDA.Value = 'Emp' then
              QDetalleDET_PRECIO.value := QDetalleDET_COSTOEMP.Value;

            if QDetalleDET_ITBIS.Value > 0 then
              QDetalleDET_CONITBIS.Value := 'S'
            else
              QDetalleDET_CONITBIS.Value := 'N';
          end;
        end;
      end;
      Busco := False;
    end;
  end;
end;

procedure TfrmPedidosProv.QDetallePRO_RFABRICChange(Sender: TField);
begin
  //if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
  //begin
    if (not QDetallePRO_RFABRIC.isnull) and (trim(QDetallePRO_RFABRIC.AsString) <> '') and (not QPedidosSUP_CODIGO.IsNull) then
    begin
      Busco := True;
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select pro_codigo, pro_nombre, pro_costo, pro_precio1,');
      dm.Query1.sql.add('pro_precio2, pro_precio3, pro_precio4, pro_servicio,');
      dm.Query1.sql.add('pro_roriginal, pro_rfabric, pro_itbis, pro_cantempaque, pro_costoempaque,');
      dm.Query1.sql.add('pro_beneficio, pro_beneficio2, pro_beneficio3, pro_beneficio4,');
      dm.Query1.sql.add('pro_precio1, pro_precio2, pro_precio3, pro_precio4, pro_montoitbis');
      dm.Query1.sql.add('from productos');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and pro_rfabric = :cod');
      dm.Query1.sql.add('and pro_status = '+QuotedStr('ACT'));
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.parambyname('cod').Value := QDetallePRO_RFABRIC.value;
      dm.Query1.open;
      if dm.Query1.RecordCount = 0 then
      begin
        Busco := False;
        MessageDlg('ESTE PRODUCTO NO ESTA REGISTRADO EN EL MAESTRO',
        mtError,[mbok],0);
        Abort;
      end
      else
      begin
        QDetallePRO_CODIGO.value := dm.Query1.fieldbyname('pro_codigo').asinteger;
        QDetallePRO_RORIGINAL.value   := dm.Query1.fieldbyname('pro_roriginal').asstring;
        QDetalleDET_DESCRIPCION.value := dm.Query1.fieldbyname('pro_nombre').asstring;
        QDetalleDET_CONITBIS.value := dm.Query1.fieldbyname('pro_itbis').asstring;
        QDetalledet_cantempaque.Value := dm.Query1.fieldbyname('pro_cantempaque').AsFloat;
        QDetalleDET_COSTOUND.Value    := dm.Query1.fieldbyname('pro_costo').AsFloat;
        QDetalleDET_COSTOEMP.Value    := dm.Query1.fieldbyname('pro_costoempaque').AsFloat;
        QDetallePRO_BENEFICIO.Value     := dm.Query1.fieldbyname('pro_beneficio').AsFloat;
        QDetallePRO_BENEFICIO2.Value    := dm.Query1.fieldbyname('pro_beneficio2').AsFloat;
        QDetallePRO_BENEFICIO3.Value    := dm.Query1.fieldbyname('pro_beneficio3').AsFloat;
        QDetallePRO_BENEFICIO4.Value    := dm.Query1.fieldbyname('pro_beneficio4').AsFloat;
        QDetallePRO_PRECIO1.Value   := dm.Query1.fieldbyname('pro_precio1').AsFloat;
        QDetallePRO_PRECIO2.Value   := dm.Query1.fieldbyname('pro_precio2').AsFloat;
        QDetallePRO_PRECIO3.Value   := dm.Query1.fieldbyname('pro_precio3').AsFloat;
        QDetallePRO_PRECIO4.Value   := dm.Query1.fieldbyname('pro_precio4').AsFloat;
        QDetalledet_costound_ant.Value  := dm.Query1.fieldbyname('pro_costo').AsFloat;
        QDetalledet_costoemp_ant.Value  := dm.Query1.fieldbyname('pro_costoempaque').AsFloat;
        QDetalleDET_ITBIS.Value       := dm.Query1.fieldbyname('pro_montoitbis').AsFloat;

        if not Buscando then
        begin
          if QDetalleDET_MEDIDA.Value = 'Und' then
            QDetalleDET_PRECIO.value := QDetalleDET_COSTOUND.Value
          else if QDetalleDET_MEDIDA.Value = 'Emp' then
            QDetalleDET_PRECIO.value := QDetalleDET_COSTOEMP.Value;

          if QDetalleDET_ITBIS.Value > 0 then
            QDetalleDET_CONITBIS.Value := 'S'
          else
            QDetalleDET_CONITBIS.Value := 'N';

        end;
      end;
      Busco := False;
    end;
  //end;
end;

procedure TfrmPedidosProv.btBuscaProdClick(Sender: TObject);
var
   primera : boolean;
begin
  application.createform(tfrmBuscaProducto, frmBuscaProducto);
  if trim(tdepto.Text) <> '' then
  begin
    frmBuscaProducto.edDepto.Text := QPedidosdep_codigo.AsString;
    frmBuscaProducto.tDepto.Text  := tdepto.Text;
    //frmBuscaProducto.QProductos.Filter := 'dep_codigo = '+IntToStr(QPedidosdep_codigo.Value);
    //frmBuscaProducto.QProductos.Filtered := True;
  end;
  primera := true;
  Buscando := True;
  while (frmBuscaProducto.ckactiva.Checked) or (Primera) do
  begin
    frmBuscaProducto.showmodal;
    Primera := false;
    if frmBuscaProducto.seleccion = 1 then
    begin
      QDetalle.Edit;
      if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
         QDetallePRO_CODIGO.value := frmBuscaProducto.QProductosPRO_CODIGO.value
      else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
         QDetallePRO_RFABRIC.value := frmBuscaProducto.QProductosPRO_RFABRIC.value
      else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
         QDetallePRO_RORIGINAL.value := frmBuscaProducto.QProductosPRO_RORIGINAL.value;

      if frmBuscaProducto.ckactiva.Checked then
      begin
        QDetalle.Append;
        Grid.SelectedIndex := 0;
      end;
    end;
  end;
  Buscando := False;
  frmBuscaProducto.release;
  Grid.setfocus;
end;

procedure TfrmPedidosProv.btEliminaClick(Sender: TObject);
begin
  Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
  QDetalle.Delete;
end;

procedure TfrmPedidosProv.btLimpiarClick(Sender: TObject);
begin
  if messagedlg('DESEA CANCELAR ESTA ORDEN?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QPedidos.close;
    QPedidos.Parameters.parambyname('num').Value := -1;
    QPedidos.open;
    QPedidos.insert;
    DBEdit5.setfocus;
  end
  else
    Grid.SetFocus;
end;

procedure TfrmPedidosProv.btBuscaPedidoClick(Sender: TObject);
var
  a, Suc : integer;
begin
  Suc := QPedidosSUC_CODIGO.Value;
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Numero');
  Search.AliasFields.Add('Proveedor');
  Search.Query.clear;
  Search.Query.add('select ped_numero, substring(ped_nombre,1,50) as ped_nombre');
  Search.Query.add('from pedidos');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.Query.add('and ped_tipo = '+QuotedStr('S'));
  Search.Query.add('and suc_codigo = '+IntToStr(Suc));
  Search.Query.add('and ped_status = '+QuotedStr('EMI'));
  Search.ResultField := 'ped_numero';
  Search.Title := 'Pedidos a Proveedores';
  if Search.execute then
  begin
    Buscando := true;
    Totaliza := false;
    QPedidos.close;
    QPedidos.Parameters.parambyname('num').Value := strtoint(Search.ValueField);
    QPedidos.Parameters.parambyname('suc').Value := Suc;
    QPedidos.open;

    QDetalle.close;
    QDetalle.Parameters.parambyname('emp').Value := dm.vp_cia;
    QDetalle.Parameters.parambyname('num').Value := strtoint(Search.ValueField);
    QDetalle.Parameters.parambyname('suc').Value := Suc;
    QDetalle.open;

    lista.Items.Clear;
    QDetalle.disablecontrols;
    while not QDetalle.Eof do
    begin
      if not QDetallePRO_CODIGO.isnull then
        Lista.Items.Add(IntToStr(QDetallePRO_CODIGO.Value));
      QDetalle.Next;
    end;
    QDetalle.First;
    QDetalle.enablecontrols;

    QUnidades.close;
    QUnidades.Parameters.parambyname('emp').Value := dm.vp_cia;
    QUnidades.Parameters.parambyname('num').Value := strtoint(Search.ValueField);
    QUnidades.Parameters.parambyname('suc').Value := Suc;
    QUnidades.open;

    edProveedor.text := inttostr(QPedidosSUP_CODIGO.value);

    Query1.close;
    Query1.sql.clear;
    Query1.sql.add('select sup_codigo, sup_nombre, sup_balance,');
    Query1.sql.add('sup_direccion, sup_localidad, sup_telefono, sup_fax');
    Query1.sql.add('from proveedores');
    Query1.sql.add('where emp_codigo = :emp');
    Query1.sql.add('and sup_Status = '+#39+'ACT'+#39);
    Query1.sql.add('and sup_codigo = :sup');
    Query1.Parameters.parambyname('sup').Value := strtoint(edProveedor.text);
    Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    //Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    Query1.open;
    QPedidos.edit;
    QPedidosPED_NOMBRE.value := Query1.fieldbyname('sup_nombre').asstring;
    QPedidosSUP_CODIGO.value := Query1.fieldbyname('sup_Codigo').asinteger;
    tBalance.text := format('%n',[Query1.fieldbyname('sup_balance').asfloat]);
    QPedidosPED_DIRECCION.value := Query1.fieldbyname('sup_direccion').asstring;
    QPedidosPED_LOCALIDAD.value := Query1.fieldbyname('sup_localidad').asstring;
    QPedidosPED_TELEFONO.value  := Query1.fieldbyname('sup_telefono').asstring;
    QPedidosPED_FAX.value       := Query1.fieldbyname('sup_fax').asstring;

    Totaliza := true;
    totalizar;
    Grid.setfocus;
  end
  else
    DBEdit5.SetFocus;
end;

procedure TfrmPedidosProv.btGrabarClick(Sender: TObject);
var
  a : integer;
begin
  if QPedidosPED_NOMBRE.isnull then
  begin
    showmessage('DEBE ESPECIFICAR EL PROVEEDOR');
    edProveedor.setfocus;
  end
  else if QPedidosCPA_CODIGO.isnull then
  begin
    showmessage('DEBE ESPECIFICAR LAS CONDICIONES');
    DBEdit12.setfocus;
  end
  else if QPedidosPED_TOTAL.value = 0 then
  begin
    showmessage('ESTE PEDIDO ESTA INCOMPLETO');
    Grid.setfocus;
    abort;
  end
  else
  begin
    if messagedlg('ESTA SEGURO QUE DESEA GRABAR?',mtconfirmation,[mbyes,mbno],0) = mryes then
    begin
      totaliza := false;
      if QPedidos.State = dsinsert then
      begin
        dm.Query1.close;
        dm.Query1.sql.clear;
        dm.Query1.sql.add('select isnull(max(ped_numero),0) as maximo');
        dm.Query1.sql.add('from pedidos where emp_codigo = :emp');
        dm.Query1.sql.add('and ped_tipo = '+#39+'S'+#39);
        dm.Query1.sql.add('and suc_codigo = :suc');
        dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
        dm.Query1.Parameters.parambyname('suc').Value := QPedidosSUC_CODIGO.Value;
        dm.Query1.open;
        QPedidosPED_NUMERO.value := dm.Query1.fieldbyname('maximo').asinteger + 1;
      end;
      QPedidos.post;

      a := 0;
      QDetalle.disablecontrols;
      QDetalle.first;
      while not QDetalle.eof do
      begin
        a := a + 1;
        QDetalle.edit;
        QDetalleEMP_CODIGO.value := dm.vp_cia;
        QDetallePED_TIPO.value   := 'S';
        QDetallePED_NUMERO.value := QPedidosPED_NUMERO.value;
        QDetalleDET_SECUENCIA.value := a;
        QDetalleSUC_CODIGO.Value := QPedidosSUC_CODIGO.Value;

        QDetalle.post;
        QDetalle.next;
      end;
      QDetalle.first;
      QDetalle.enablecontrols;
      QDetalle.UpdateBatch;

      //Unidades de Medida
      a := 0;
      QUnidades.disablecontrols;
      QUnidades.first;
      while not QUnidades.eof do
      begin
        a := a + 1;
        QUnidades.edit;
        QUnidadesEMP_CODIGO.value := dm.vp_cia;
        QUnidadesPED_TIPO.value   := 'S';
        QUnidadesPED_NUMERO.value := QPedidosPED_NUMERO.value;
        QUnidadesSecuencia.value := a;
        QUnidadesSUC_CODIGO.Value := QPedidosSUC_CODIGO.Value;

        QUnidades.post;
        QUnidades.next;
      end;
      QUnidades.first;
      QUnidades.enablecontrols;
      QUnidades.UpdateBatch;

      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('execute pr_graba_ped :emp, :suc, :tip, :num');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('num').Value := QPedidosPED_NUMERO.value;
      dm.Query1.Parameters.parambyname('tip').Value  := 'P';
      dm.Query1.Parameters.parambyname('suc').Value  := QPedidosSUC_CODIGO.Value;
      dm.Query1.ExecSQL;

      if messagedlg('SE HA GENERADO LA ORDEN NO. '+inttostr(QPedidosPED_NUMERO.value)+#13+
      'DESEA IMPRIMIRLO?',mtconfirmation,[mbyes,mbno],0) = mryes then
      begin
        if dm.QParametrospar_fac_preimpresa.Value = 'True' then
        begin
          if dm.QParametrospar_formato_preimpreso.Value = 'QRThorton' then
          begin
            application.createform(tRPedidoSup_Preimpreso, RPedidoSup_Preimpreso);
            RPedidoSup_Preimpreso.QPedido.close;
            RPedidoSup_Preimpreso.QPedido.Parameters.parambyname('numero').Value := QPedidosPED_NUMERO.value;
            RPedidoSup_Preimpreso.QPedido.Parameters.parambyname('suc').Value := QPedidosSUC_CODIGO.value;
            RPedidoSup_Preimpreso.QPedido.open;
            RPedidoSup_Preimpreso.QDetalle.open;

            RPedidoSup_Preimpreso.idioma := UpperCase(copy(cbidioma.Text,1,2));
            RPedidoSup_Preimpreso.QRTHorton.PrinterSetup;
            RPedidoSup_Preimpreso.QRTHorton.print;

            RPedidoSup_Preimpreso.Release;
          end
          else
          begin
            application.createform(tRPedidoSup, RPedidoSup);
            RPedidoSup.QPedido.close;
            RPedidoSup.QPedido.Parameters.parambyname('numero').Value := QPedidosPED_NUMERO.value;
            RPedidoSup.QPedido.Parameters.parambyname('suc').Value := QPedidosSUC_CODIGO.value;
            RPedidoSup.QPedido.open;
            RPedidoSup.QDetalle.open;
            RPedidoSup.printersetup;
            RPedidoSup.Print;
            RPedidoSup.Destroy;
          end;
        end
        else
        begin
          application.createform(tRPedidoSup, RPedidoSup);
          RPedidoSup.QPedido.close;
          RPedidoSup.QPedido.Parameters.parambyname('numero').Value := QPedidosPED_NUMERO.value;
          RPedidoSup.QPedido.Parameters.parambyname('suc').Value := QPedidosSUC_CODIGO.value;
          RPedidoSup.QPedido.open;
          RPedidoSup.QDetalle.open;
          RPedidoSup.printersetup;
          RPedidoSup.Print;
          RPedidoSup.Destroy;
        end;
      end;

      QPedidos.close;
      QPedidos.Parameters.parambyname('num').Value := -1;
      QPedidos.open;
      QPedidos.insert;
      DBEdit5.setfocus;
    end
    else
      Grid.setfocus;
  end;
end;

procedure TfrmPedidosProv.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f4 then btBuscaProdClick(self);
  if key = vk_f5 then btEliminaClick(self);
  if key = vk_f6 then btBuscaProdProvClick(Self);
  if key = vk_f8 then btpreciosClick(Self);
end;

procedure TfrmPedidosProv.btProveedorClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Proveedor');
  Search.AliasFields.Add('Codigo');
  Search.Query.clear;
  Search.Query.add('select substring(sup_nombre,1,50) as sup_nombre, sup_codigo');
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
    //dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    QPedidosPED_NOMBRE.value := dm.Query1.fieldbyname('sup_nombre').asstring;
    QPedidosSUP_CODIGO.value := dm.Query1.fieldbyname('sup_Codigo').asinteger;
    tBalance.text := format('%n',[dm.Query1.fieldbyname('sup_balance').asfloat]);
    QPedidosPED_DIRECCION.value := dm.Query1.fieldbyname('sup_direccion').asstring;
    QPedidosPED_LOCALIDAD.value := dm.Query1.fieldbyname('sup_localidad').asstring;
    QPedidosPED_TELEFONO.value  := dm.Query1.fieldbyname('sup_telefono').asstring;
    QPedidosPED_FAX.value       := dm.Query1.fieldbyname('sup_fax').asstring;
    dbedit1.setfocus;
  end;
end;

procedure TfrmPedidosProv.QDetalledet_(DataSet: TDataSet);
begin
  if not QDetallePRO_CODIGO.isnull then
    Lista.Items.Add(IntToStr(QDetallePRO_CODIGO.Value));

  {if dm.QParametrospar_inv_unidad_medida.Value <> 'True' then
  begin
    if QDetalleDET_COSTOUND.AsFloat > 0 then
    begin
      if QDetalleDET_COSTOUND.Value < QDetalleCostoNeto.Value then
      begin
        MessageDlg('EL PRECIO NO PUEDE SER MENOR QUE EL COSTO', mtError, [mbok], 0);
        abort;
      end;
    end;
  end;}



  if QDetalleDET_ITBIS.Value > 0 then
  QDetalleDET_CONITBIS.Value := 'S' else
  QDetalleDET_CONITBIS.Value := 'N';

  QDetalleDET_CONITBIS.Value := UpperCase(QDetalleDET_CONITBIS.Value);
  if trim(QDetalleDET_MEDIDA.Value) = '' then QDetalleDET_MEDIDA.Value := 'Und';
  if QDetalleDET_MEDIDA.Value = 'Und' then
    QDetalleDET_PRECIO.Value := QDetalleDET_COSTOUND.Value
  else
    QDetalleDET_PRECIO.Value := QDetalleDET_COSTOEMP.Value;

end;

procedure TfrmPedidosProv.QDetalleDET_MEDIDAChange(Sender: TField);
begin
  if QDetalleDET_MEDIDA.Value = 'Und' then
    QDetalleDET_PRECIO.value := QDetalleDET_COSTOUND.Value
  else if QDetalleDET_MEDIDA.Value = 'Emp' then
    QDetalleDET_PRECIO.value := QDetalleDET_COSTOEMP.Value;
end;

procedure TfrmPedidosProv.QDetalleNewRecord(DataSet: TDataSet);
begin
  QDetalleDET_FACTURADO.value := 0;
  QDetalleDET_STATUS.value := 'PED';
  QDetalledet_despachado.Value := 0;
  QDetalledet_medida.Value := 'Und';
end;

procedure TfrmPedidosProv.btBuscaProdProvClick(Sender: TObject);
var
   primera : boolean;
begin
  application.createform(tfrmBuscaProducto, frmBuscaProducto);
  //frmBuscaProducto.QProductos.Filter := 'sup_codigo = '+IntToStr(QPedidosSUP_CODIGO.Value);
  //frmBuscaProducto.QProductos.Filtered := True;
  if edProveedor.Text <> '' then begin
  frmBuscaProducto.edProveedor.Text := edProveedor.Text;
  frmBuscaProducto.spAccionClick(Self);
  end;
  primera := true;
  while (frmBuscaProducto.ckactiva.Checked) or (Primera) do
  begin
    frmBuscaProducto.showmodal;
    Primera := false;
    if frmBuscaProducto.seleccion = 1 then
    begin
      QDetalle.Edit;
      if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
         QDetallePRO_CODIGO.value := frmBuscaProducto.QProductosPRO_CODIGO.value
      else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
         QDetallePRO_RFABRIC.value := frmBuscaProducto.QProductosPRO_RFABRIC.value
      else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
         QDetallePRO_RORIGINAL.value := frmBuscaProducto.QProductosPRO_RORIGINAL.value;

      if frmBuscaProducto.ckactiva.Checked then
      begin
        QDetalle.Append;
        Grid.SelectedIndex := 0;
      end;
    end;
  end;
  frmBuscaProducto.release;
  Grid.setfocus;
end;

procedure TfrmPedidosProv.btmonedaClick(Sender: TObject);
begin
  Search.AliasFields.clear;
  Search.AliasFields.add('Nombre');
  Search.AliasFields.add('Código');
  Search.Query.clear;
  Search.Query.add('select mon_nombre, mon_codigo');
  Search.Query.add('from moneda');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.ResultField := 'mon_Codigo';
  Search.Title := 'Tipo de moneda';
  if Search.execute then
  begin
    QPedidosMON_CODIGO.value := strtoint(Search.ValueField);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select mon_sigla, MON_RELACIONPESOCOMPRA from moneda');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and mon_codigo = :mon');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('mon').Value := QPedidosMON_CODIGO.Value;
    dm.Query1.open;
    tmoneda.Text := dm.Query1.FieldByName('mon_sigla').AsString;
    QPedidosPED_TASA.Value := dm.Query1.FieldByName('MON_RELACIONPESOCOMPRA').AsFloat;
  end;
end;

procedure TfrmPedidosProv.QPedidosmon_codigoChange(Sender: TField);
begin
  if not QPedidosmon_codigo.IsNull then
  begin
    //Text := IntToStr(QFacturaMON_CODIGO.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select mon_sigla, MON_RELACIONPESOCOMPRA from moneda');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and mon_codigo = :mon');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('mon').Value := QPedidosmon_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      tmoneda.Text := dm.Query1.FieldByName('mon_sigla').AsString;
      QPedidosPED_TASA.Value := dm.Query1.FieldByName('MON_RELACIONPESOCOMPRA').AsFloat;
    end
    else
    begin
      tmoneda.Text := '';
      QPedidosPED_TASA.Value := 1;
    end;
  end;
end;

procedure TfrmPedidosProv.QPedidosmon_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QPedidosmon_codigo.IsNull then
  begin
    Text := IntToStr(QPedidosmon_codigo.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select mon_sigla, MON_RELACIONPESOCOMPRA from moneda');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and mon_codigo = :mon');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('mon').Value := QPedidosmon_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      tmoneda.Text := dm.Query1.FieldByName('mon_sigla').AsString;
      //QPedidosPED_TASA.Value := dm.Query1.FieldByName('MON_RELACIONPESOCOMPRA').AsFloat;
    end
    else
    begin
      tmoneda.Text := '';
      //QPedidosPED_TASA.Value := 1;
    end;
  end;
end;

procedure TfrmPedidosProv.QPedidoscou_codigoChange(Sender: TField);
begin
  if not QPedidoscou_codigo.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cou_direccion_envio');
    dm.Query1.SQL.Add('from courriers');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cou_codigo = :cou');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cou').Value := QPedidoscou_codigo.Value;
    dm.Query1.Open;
    QPedidos.Edit;
    QPedidosped_envio.Value := dm.Query1.FieldByName('cou_direccion_envio').AsString;
  end;
end;

procedure TfrmPedidosProv.btcentroClick(Sender: TObject);
begin
  Search.AliasFields.clear;
  Search.AliasFields.add('Nombre');
  Search.AliasFields.add('Código');
  Search.Query.clear;
  Search.Query.add('select cen_nombre, cen_codigo');
  Search.Query.add('from CentroCostos');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  //Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.ResultField := 'cen_Codigo';
  Search.Title := 'Centros de Costo';
  if Search.execute then
  begin
    QPedidoscen_codigo.value := strtoint(Search.ValueField);
    DBEdit16.SetFocus;
  end;
end;

procedure TfrmPedidosProv.QPedidoscen_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QPedidoscen_codigo.IsNull then
  begin
    Text := QPedidoscen_codigo.AsString;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cen_nombre from CentroCostos');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and cen_codigo = :cen');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('cen').Value := QPedidoscen_codigo.Value;
    dm.Query1.open;
    if dm.Query1.RecordCount > 0 then
      tcentro.Text := dm.Query1.FieldByName('cen_nombre').AsString
    else
      tcentro.Text := '';
  end
  else
    tcentro.Text := '';
end;

procedure TfrmPedidosProv.btconfirmarClick(Sender: TObject);
var
  a : integer;
  xml, ini : textfile;
  db, Nombre : string;
  Fftp, Fbat : TextFile;
  Sftp, Sbat, ruta : string;
begin
  QPedidosped_confirmado.Value := 'True';
  QPedidos.Post;
  a := 0;
  QDetalle.disablecontrols;
  QDetalle.first;
  while not QDetalle.eof do
  begin
    a := a + 1;
    QDetalle.edit;
    QDetalleEMP_CODIGO.value := dm.vp_cia;
    QDetallePED_TIPO.value   := 'S';
    QDetallePED_NUMERO.value := QPedidosPED_NUMERO.value;
    QDetalleDET_SECUENCIA.value := a;
    QDetalleSUC_CODIGO.Value := QPedidosSUC_CODIGO.Value;
    QDetalle.post;
    QDetalle.next;
  end;
  QDetalle.first;
  QDetalle.enablecontrols;
  QDetalle.UpdateBatch;

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('execute pr_graba_ped :emp, :suc, :tip, :num');
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.parambyname('num').Value := QPedidosPED_NUMERO.value;
  dm.Query1.Parameters.parambyname('tip').Value  := 'S';
  dm.Query1.Parameters.parambyname('suc').Value  := QPedidosSUC_CODIGO.Value;
  dm.Query1.ExecSQL;

  //Enviando a Logistica
  {if FileExists('logistica.ini') then
  begin
    assignfile(ini,'logistica.ini');
    reset(ini);
    readln(ini, db);
    closefile(ini);

    db := db + ';User ID=sa;password=ehcm00105293104';

    ADOLogistica.Close;
    ADOLogistica.ConnectionString := db;
    ADOLogistica.Open;

    QryLogistica.Close;
    QryLogistica.SQL.Clear;
    QryLogistica.SQL.Add('select r.reqClientName, r.reqVendedorID, r.reqOrderNumber, u.userFirstName, u.userLastName, u.userEmail');
    QryLogistica.SQL.Add('from req_requisiciones r, sys_users u where r.reqID = :req');
    QryLogistica.SQL.Add('and r.reqVendedorID = u.userID');
    QryLogistica.Parameters.ParamByName('req').Value := QPedidosped_solicitud_compra.Value;
    QryLogistica.Open;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cli_codigo, cli_email, cli_rnc, cli_cedula, cli_telefono from clientes where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cli_nombre like'+QuotedStr('%'+QryLogistica.FieldByName('reqClientName').AsString+'%'));
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Open;

    if QryLogistica.RecordCount > 0 then
    begin
      if Trim(dm.QParametrospar_ftp_site.Value) <> '' then
      begin
        //Creando archivo xml
        assignfile(xml, ruta+QPedidosPED_NUMERO.AsString+'.xml');
        rewrite(xml);
        
        writeln(xml, '<?xml version="1.0" encoding="iso-8859-1" ?>');
        writeln(xml, '<pedido>');

        //Header
        writeln(xml, '<pedido_numero>'+QPedidosPED_NUMERO.AsString+'</pedido_numero>');
        writeln(xml, '<pedido_fecha>'+qpedidosped_fecha.asstring+'</pedido_fecha>');
        writeln(xml, '<pedido_cotizacion>'+qpedidosPED_COTIZACION.asstring+'</pedido_cotizacion>');
        writeln(xml, '<pedido_fecha_entrega></pedido_fecha_entrega>');
        writeln(xml, '<cliente_codigo>'+dm.Query1.FieldByName('cli_codigo').AsString+'</cliente_codigo>');
        writeln(xml, '<cliente_nombre>'+QryLogistica.FieldByName('reqClientName').AsString+'</cliente_nombre>');
        writeln(xml, '<cliente_email>' + dm.Query1.FieldByName('cli_email').AsString + '</cliente_email>');
        writeln(xml, '<cliente_rnc>' + dm.Query1.FieldByName('cli_rnc').AsString + '</cliente_rnc>');
        writeln(xml, '<cliente_telefono>' + dm.Query1.FieldByName('cli_telefono').AsString + '</cliente_telefono>');
        writeln(xml, '<cliente_cid>' + dm.Query1.FieldByName('cli_cedula').AsString + '</cliente_cid>');
        writeln(xml, '<cliente_orden>'+QryLogistica.FieldByName('reqOrderNumber').AsString+'</cliente_orden>');
        writeln(xml, '<vendedor_codigo>'+QryLogistica.FieldByName('reqVendedorID').AsString+'</vendedor_codigo>');
        writeln(xml, '<vendedor_nombre>'+QryLogistica.FieldByName('userFirstName').AsString+' '+
                     QryLogistica.FieldByName('userLastName').AsString+'</vendedor_nombre>');
        writeln(xml, '<vendedor_telefono></vendedor_telefono>');
        writeln(xml, '<vendedor_email>'+QryLogistica.FieldByName('userEmail').AsString+'</vendedor_email>');
                                    
        //Detalle
        QDetalle.DisableControls;
        QDetalle.First;
        while not QDetalle.eof do
        begin
          writeln(xml, '<articulo cantidad='+'"'+QDetalleDET_CANTIDAD.AsString+'"'+' codigo='+'"'+Qdetallepro_rfabric.AsString+'"'+
              ' descripcion='+'"'+QDetalledet_descripcion.AsString+'"'+'>');
          writeln(xml, '<memo>'+QDetalledet_nota.AsString+'</memo>');
          writeln(xml, '<suplidor codigo='+'"'+QPedidossup_codigo.AsString+'"'+' nombre='+'"'+QPedidosPED_NOMBRE.AsString+'"'+'/>');
          writeln(xml, '</articulo>');

          QDetalle.Next;
        end;

        QDetalle.First;
        QDetalle.EnableControls;

        writeln(xml, '</pedido>');
        closefile(xml);

        //Realizando FTP
        ruta := ExtractFilePath(Application.ExeName);
        Sftp := 'envia.ftp';
        Sbat := 'envia.bat';

        if FileExists(sftp) then
          DeleteFile(sftp);

        if FileExists(sbat) then
          DeleteFile(sbat);

        AssignFile(Fbat, sbat);
        AssignFile(Fftp, sftp);

        Rewrite(Fftp);
        Rewrite(Fbat);

        Rewrite(Fbat);
        Writeln(Fbat, '@echo off');
        Writeln(Fbat, 'ftp -s:'+ sftp);
        writeln(Fbat, 'del envia.ftp');
        writeln(Fbat, 'del envia.bat');
        closeFile(fbat);

        writeln(Fftp, 'open '+dm.QParametrospar_ftp_site.Value);
        writeln(Fftp, dm.QParametrospar_ftp_usuario.Value);
        writeln(Fftp, dm.QParametrospar_ftp_password.Value);
        writeln(Fftp, 'cd '+dm.QParametrospar_ftp_ruta.Value);
        writeln(Fftp, 'put '+ ruta + QPedidosPED_NUMERO.AsString + '.xml '+ QPedidosPED_NUMERO.AsString + '.xml');
        writeln(Fftp, 'bye');

        closeFile(fftp);

        //WinExec('envia.bat',1);
      end;
    end;
  end;}
end;

procedure TfrmPedidosProv.dsPedidosDataChange(Sender: TObject;
  Field: TField);
begin
  btGrabar.Enabled := QPedidosped_confirmado.Value <> 'True';
  //btconfirmar.Enabled := QPedidosped_confirmado.Value <> 'True';
end;

procedure TfrmPedidosProv.btlogisticaClick(Sender: TObject);
var
  a : integer;
  xml, ini : textfile;
  db, Nombre : string;
  Fftp, Fbat : TextFile;
  Sftp, Sbat, ruta : string;
begin
  //Enviando a Logistica
  ruta := ExtractFilePath(Application.ExeName);
  if FileExists(ruta+'logistica.ini') then
  begin
    assignfile(ini,ruta+'logistica.ini');
    reset(ini);
    readln(ini, db);
    closefile(ini);

    db := db + ';User ID=sa;password=ehcm00105293104';

    ADOLogistica.Close;
    ADOLogistica.ConnectionString := db;
    ADOLogistica.Open;

    QryLogistica.Close;
    QryLogistica.SQL.Clear;
    QryLogistica.SQL.Add('select distinct s.solicitudid, s.cli_codigo, c.cli_nombre, s.ven_codigo, p2.orden_cliente,');
    QryLogistica.SQL.Add('v.ven_nombre, v.ven_email, v.ven_celular');
    QryLogistica.SQL.Add('from Solicitud_Compra s, sigma.dbo.vendedores v, sigma.dbo.pedidos p1, sigma.dbo.clientes c,');
    QryLogistica.SQL.Add('sigma.dbo.pedidos p2 where s.ven_codigo = v.ven_codigo and s.emp_codigo = v.emp_codigo');
    QryLogistica.SQL.Add('and s.emp_codigo = p1.emp_codigo and s.solicitudid = p1.ped_solicitud_compra');
    QryLogistica.SQL.Add('and s.emp_codigo = c.emp_codigo and s.cli_codigo = c.cli_codigo');
    QryLogistica.SQL.Add('and p1.ped_tipo = :tip1 and s.emp_codigo = p2.emp_codigo');
    QryLogistica.SQL.Add('and s.ped_numero = p2.ped_numero and p2.ped_tipo = :tip2');
    QryLogistica.SQL.Add('and s.emp_codigo = :emp');
    QryLogistica.SQL.Add('and s.solicitudid = :sol');
    QryLogistica.Parameters.ParamByName('emp').Value  := dm.vp_cia;
    QryLogistica.Parameters.ParamByName('sol').Value  := QPedidosped_solicitud_compra.Value;
    QryLogistica.Parameters.ParamByName('tip1').Value := 'S';
    QryLogistica.Parameters.ParamByName('tip2').Value := 'C';
    QryLogistica.Open;

    if QryLogistica.RecordCount > 0 then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select cli_codigo, cli_email, cli_rnc, cli_cedula, cli_telefono from clientes where emp_codigo = :emp');
      dm.Query1.SQL.Add('and cli_codigo = :cli');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.ParamByName('cli').Value := QryLogistica.FieldByName('cli_codigo').AsInteger;
      dm.Query1.Open;

      if Trim(dm.QParametrospar_ftp_ruta.Value) <> '' then
      begin
        //Creando archivo xml
        assignfile(xml, ruta+QPedidosPED_NUMERO.AsString+'.xml');
        rewrite(xml);
        
        writeln(xml, '<?xml version="1.0" encoding="iso-8859-1" ?>');
        writeln(xml, '<pedido>');

        //Header
        writeln(xml, '<pedido_numero>'+QPedidosPED_NUMERO.AsString+'</pedido_numero>');
        writeln(xml, '<pedido_fecha>'+qpedidosped_fecha.asstring+'</pedido_fecha>');
        writeln(xml, '<pedido_cotizacion>'+qpedidosPED_COTIZACION.asstring+'</pedido_cotizacion>');
        writeln(xml, '<pedido_fecha_entrega></pedido_fecha_entrega>');
        writeln(xml, '<cliente_codigo>'+dm.Query1.FieldByName('cli_codigo').AsString+'</cliente_codigo>');
        writeln(xml, '<cliente_nombre>'+QryLogistica.FieldByName('cli_nombre').AsString+'</cliente_nombre>');
        writeln(xml, '<cliente_email>' + dm.Query1.FieldByName('cli_email').AsString + '</cliente_email>');
        writeln(xml, '<cliente_rnc>' + dm.Query1.FieldByName('cli_rnc').AsString + '</cliente_rnc>');
        writeln(xml, '<cliente_telefono>' + dm.Query1.FieldByName('cli_telefono').AsString + '</cliente_telefono>');
        writeln(xml, '<cliente_cid>' + dm.Query1.FieldByName('cli_cedula').AsString + '</cliente_cid>');
        writeln(xml, '<cliente_orden>'+QryLogistica.FieldByName('orden_cliente').AsString+'</cliente_orden>');
        writeln(xml, '<vendedor_codigo>'+QryLogistica.FieldByName('ven_codigo').AsString+'</vendedor_codigo>');
        writeln(xml, '<vendedor_nombre>'+QryLogistica.FieldByName('ven_nombre').AsString+'</vendedor_nombre>');
        writeln(xml, '<vendedor_telefono>'+QryLogistica.FieldByName('ven_celular').AsString+'</vendedor_telefono>');
        writeln(xml, '<vendedor_email>'+QryLogistica.FieldByName('ven_email').AsString+'</vendedor_email>');
                                    
        //Detalle
        QDetalle.DisableControls;
        QDetalle.First;
        while not QDetalle.eof do
        begin
          writeln(xml, '<articulo cantidad='+'"'+QDetalleDET_CANTIDAD.AsString+'"'+' codigo='+'"'+Qdetallepro_rfabric.AsString+'"'+
              ' descripcion='+'"'+QDetalledet_descripcion.AsString+'"'+'>');
          writeln(xml, '<memo>'+QDetalledet_nota.AsString+'</memo>');
          writeln(xml, '<suplidor codigo='+'"'+QPedidossup_codigo.AsString+'"'+' nombre='+'"'+QPedidosPED_NOMBRE.AsString+'"'+'/>');
          writeln(xml, '</articulo>');

          QDetalle.Next;
        end;

        QDetalle.First;
        QDetalle.EnableControls;

        writeln(xml, '</pedido>');
        closefile(xml);

        if trim(dm.QParametrospar_ftp_site.AsString) <> '' then
        begin
          //Realizando FTP
          Sftp := 'envia.ftp';
          Sbat := 'envia.bat';

          if FileExists(sftp) then
            DeleteFile(sftp);

          if FileExists(sbat) then
            DeleteFile(sbat);

          AssignFile(Fbat, sbat);
          AssignFile(Fftp, sftp);

          Rewrite(Fftp);
          Rewrite(Fbat);

          Rewrite(Fbat);
          Writeln(Fbat, '@echo off');
          Writeln(Fbat, 'ftp -s:'+ sftp);
          writeln(Fbat, 'del envia.ftp');
          writeln(Fbat, 'del envia.bat');
          closeFile(fbat);

          writeln(Fftp, 'open '+dm.QParametrospar_ftp_site.Value);
          writeln(Fftp, dm.QParametrospar_ftp_usuario.Value);
          writeln(Fftp, dm.QParametrospar_ftp_password.Value);
          writeln(Fftp, 'cd '+dm.QParametrospar_ftp_ruta.Value);
          writeln(Fftp, 'put '+ ruta + QPedidosPED_NUMERO.AsString + '.xml '+ QPedidosPED_NUMERO.AsString + '.xml');
          writeln(Fftp, 'bye');

          closeFile(fftp);

          //WinExec('envia.bat',1);
        end;
      end;
    end;
  end;
end;

procedure TfrmPedidosProv.edProveedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edProveedor.Text) <> '' then
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
      //dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      QPedidosPED_NOMBRE.value := dm.Query1.fieldbyname('sup_nombre').asstring;
      QPedidosSUP_CODIGO.value := dm.Query1.fieldbyname('sup_Codigo').asinteger;
      tBalance.text := format('%n',[dm.Query1.fieldbyname('sup_balance').asfloat]);
      QPedidosPED_DIRECCION.value := dm.Query1.fieldbyname('sup_direccion').asstring;
      QPedidosPED_LOCALIDAD.value := dm.Query1.fieldbyname('sup_localidad').asstring;
      QPedidosPED_TELEFONO.value  := dm.Query1.fieldbyname('sup_telefono').asstring;
      QPedidosPED_FAX.value       := dm.Query1.fieldbyname('sup_fax').asstring;
    end;
  end;
end;

procedure TfrmPedidosProv.QDetalleDET_COSTOUNDChange(Sender: TField);
begin
{  if (not QDetalleDET_COSTOUND.IsNull) and (not Buscando) then
  begin
    if QDetalleDET_MEDIDA.Value = 'Und' then
    begin
      if QDetalledet_cantempaque.Value > 0 then
        QDetalleDET_COSTOEMP.Value := QDetalleDET_COSTOUND.Value * QDetalledet_cantempaque.Value;
    end;
  end;}
if dm.QParametrospar_inv_unidad_medida.Value <> 'True' then
  begin
    if (not QDetalleDET_COSTOUND.IsNull) and (not Buscando) then
    begin
      if QDetalleDET_MEDIDA.Value = 'Und' then
      begin
        if QDetalledet_cantempaque.Value > 0 then
          QDetalleDET_COSTOEMP.Value := QDetalleDET_COSTOUND.Value * QDetalledet_cantempaque.Value;
        if StrToFloat(Format('%10.2F',[QDetalleDET_COSTOUND.Value])) <> StrToFloat(Format('%10.2F',[QDetalledet_costound_ant.Value])) then
        begin
          if dm.QParametrospar_inv_entrada_modifica_precio.Value = 'False' then
          begin
            if DecisionPrecio = '' then
            begin
              if MessageDlg('El Costo cambió, desea actualizar los precios?',mtConfirmation,[mbyes,mbno], 0) = mryes then
              begin
                DecisionPrecio := 'S';
                Precios;

              end
              else
                DecisionPrecio := 'N';
                if ((DBEdit12.Text <> '') and (QDetallepro_precio1.Value>0)) then
                QDetallePRO_BENEFICIO.Value := ((QDetallepro_precio1.Value / QDetalleValorItbisUnd.Value)*100)-100;
                DBEdit11.Text := FormatCurr('#,0.00',QDetallepro_beneficio.Value);
                if ((DBEdit14.Text <> '') and (QDetallepro_precio2.Value>0)) then
                QDetallePRO_BENEFICIO2.Value := ((QDetallepro_precio2.Value / QDetalleValorItbisUnd.Value)*100)-100;
                DBEdit13.Text := FormatCurr('#,0.00',QDetallepro_beneficio2.Value);
                if ((DBEdit17.Text <> '') and (QDetallepro_precio3.Value>0)) then
                QDetallePRO_BENEFICIO3.Value := ((QDetallepro_precio3.Value / QDetalleValorItbisUnd.Value)*100)-100;
                DBEdit15.Text := FormatCurr('#,0.00',QDetallepro_beneficio3.Value);
                if ((DBEdit18.Text <> '') and (QDetallepro_precio4.Value>0)) then
                QDetallePRO_BENEFICIO4.Value := ((QDetallepro_precio4.Value / QDetalleValorItbisUnd.Value)*100)-100;
                DBEdit23.Text := FormatCurr('#,0.00',QDetallepro_beneficio4.Value);
            end
            else
            begin
              if DecisionPrecio = 'S' then precios;
              if DecisionPrecio = 'N' then begin
              if ((DBEdit12.Text <> '') and (QDetallepro_precio1.Value>0)) then
                QDetallePRO_BENEFICIO.Value := ((QDetallepro_precio1.Value / QDetalleValorItbisUnd.Value)*100)-100;
                DBEdit11.Text := FormatCurr('#,0.00',QDetallepro_beneficio.Value);
                if ((DBEdit14.Text <> '') and (QDetallepro_precio2.Value>0)) then
                QDetallePRO_BENEFICIO2.Value := ((QDetallepro_precio2.Value / QDetalleValorItbisUnd.Value)*100)-100;
                DBEdit13.Text := FormatCurr('#,0.00',QDetallepro_beneficio2.Value);
                if ((DBEdit17.Text <> '') and (QDetallepro_precio3.Value>0)) then
                QDetallePRO_BENEFICIO3.Value := ((QDetallepro_precio3.Value / QDetalleValorItbisUnd.Value)*100)-100;
                DBEdit15.Text := FormatCurr('#,0.00',QDetallepro_beneficio3.Value);
                if ((DBEdit18.Text <> '') and (QDetallepro_precio4.Value>0)) then
                QDetallePRO_BENEFICIO4.Value := ((QDetallepro_precio4.Value / QDetalleValorItbisUnd.Value)*100)-100;
                DBEdit23.Text := FormatCurr('#,0.00',QDetallepro_beneficio4.Value);
            end;
            end;
          end
          else
           Precios;
        end
      end;
    end;
  end;
  DecisionPrecio := '';

end;

procedure TfrmPedidosProv.QDetalleDET_COSTOEMPChange(Sender: TField);
begin
{  if (not QDetalleDET_COSTOEMP.IsNull) and (not Buscando) then
  begin
    if QDetalleDET_MEDIDA.Value = 'Emp' then
    begin
      if QDetalledet_cantempaque.Value > 0 then
        QDetalleDET_COSTOUND.Value := QDetalleDET_COSTOEMP.Value / QDetalledet_cantempaque.Value;
    end;
  end;}
  if dm.QParametrospar_inv_unidad_medida.Value <> 'True' then
  begin
    if (not QDetalleDET_COSTOEMP.IsNull) and (not Buscando) then
    begin
      if QDetalleDET_MEDIDA.Value = 'Emp' then
      begin
        if QDetalledet_cantempaque.Value > 0 then
          QDetalleDET_COSTOUND.Value := QDetalleDET_COSTOEMP.Value / QDetalledet_cantempaque.Value;
        if StrToFloat(Format('%10.2F',[QDetalleDET_COSTOEMP.Value])) <> StrToFloat(Format('%10.2F',[QDetalledet_costoemp_ant.Value])) then
        begin
          if dm.QParametrospar_modifica_precio_automatico.Value = 'False' then
          begin
            if DecisionPrecio = '' then
            begin
              if MessageDlg('El Costo cambió, desea actualizar los precios?',mtConfirmation,[mbyes,mbno], 0) = mryes then
              begin
                DecisionPrecio := 'S';
                Precios;
              end
              else
                DecisionPrecio := 'N';
            end
            else
            begin
              if DecisionPrecio = 'S' then precios;
            end;
          end
          else
            Precios;
        end
      end;
    end;
  end;

end;

procedure TfrmPedidosProv.Notaalproducto1Click(Sender: TObject);
begin
  application.createform(tfrmNota, frmNota);
  frmNota.DBMemo1.DataSource := frmPedidosProv.dsDetalle;
  frmNota.DBMemo1.DataField := 'DET_NOTA';
  frmNota.showmodal;
  frmNota.release;
end;

procedure TfrmPedidosProv.DBEdit18KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    QDetalle.Edit;
    if QDetalle.State <> dsbrowse then
    begin
      if (StrToFloat(DBEdit18.Text) > 0) and (QDetalleValorItbisUnd.Value > 0) then
      begin
        QDetallePRO_BENEFICIO.Value := ((StrToFloat(DBEdit18.Text) / QDetalleValorItbisUnd.Value)*100)-100;
      end;
    end;
  end;
end;

procedure TfrmPedidosProv.DBEdit20KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    QDetalle.Edit;
    if QDetalle.State <> dsbrowse then
    begin
      if QDetalledet_cantempaque.Value = 0 then
      begin
        if (StrToFloat(DBEdit20.Text) > 0) and (QDetalleValorItbisUnd.Value > 0) then
        begin
          QDetallePRO_BENEFICIO2.Value := ((StrToFloat(DBEdit20.Text) / QDetalleValorItbisUnd.Value)*100)-100;
        end;
      end
      else
      begin
        if (StrToFloat(DBEdit20.Text) > 0) and (QDetalleValorItbisEmp.Value > 0) then
        begin
          QDetallePRO_BENEFICIO2.Value := ((StrToFloat(DBEdit20.Text) / QDetalleValorItbisEmp.Value)*100)-100;
        end;
      end;
    end;
  end;
end;

procedure TfrmPedidosProv.DBEdit22KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    QDetalle.Edit;
    if QDetalle.State <> dsbrowse then
    begin
      if (StrToFloat(DBEdit22.Text) > 0) and (QDetalleValorItbisUnd.Value > 0) then
      begin
        QDetallePRO_BENEFICIO3.Value := ((StrToFloat(DBEdit22.Text) / QDetalleValorItbisUnd.Value)*100)-100;
      end;
    end;
  end;
end;

procedure TfrmPedidosProv.DBEdit24KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    QDetalle.Edit;
    if QDetalle.State <> dsbrowse then
    begin
      if QDetalledet_cantempaque.Value = 0 then
      begin
        if (StrToFloat(DBEdit24.Text) > 0) and (QDetalleValorItbisUnd.Value > 0) then
        begin
          QDetallePRO_BENEFICIO4.Value := ((StrToFloat(DBEdit24.Text) / QDetalleValorItbisUnd.Value)*100)-100;
        end;
      end
      else
      begin
        if (StrToFloat(DBEdit24.Text) > 0) and (QDetalleValorItbisEmp.Value > 0) then
        begin
          QDetallePRO_BENEFICIO4.Value := ((StrToFloat(DBEdit24.Text) / QDetalleValorItbisEmp.Value)*100)-100;
        end;
      end;
    end;
  end;
end;

procedure TfrmPedidosProv.precios;
var
  tcosto, rdesde, rhasta, rvalor : double;
  nValor, nEntero : String;
begin
  if QDetalledet_cantempaque.Value > 0 then
  begin
    //Precio al Detalle
    //Unidad
    //Precio1
    if QDetallePRO_BENEFICIO.Value > 0 then
      if dm.QParametrosPAR_PRECIOUND.Value = 'Precio1' then
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO.Value)/100))]))
        else
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO.Value)/100))]));

    //Precio2
    if QDetallePRO_BENEFICIO2.Value > 0 then
      if dm.QParametrosPAR_PRECIOUND.Value = 'Precio2' then
         if dm.QParametrospar_itbisincluido.Value = 'True' then
           QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO2.Value)/100))]))
         else
           QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO2.Value)/100))]));

    //Precio3
    if QDetallePRO_BENEFICIO3.Value > 0 then
      if dm.QParametrosPAR_PRECIOUND.Value = 'Precio3' then
         if dm.QParametrospar_itbisincluido.Value = 'True' then
           QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO3.Value)/100))]))
         else
           QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO3.Value)/100))]));

    //Precio4
    if QDetallePRO_BENEFICIO4.Value > 0 then
      if dm.QParametrosPAR_PRECIOUND.Value = 'Precio4' then
         if dm.QParametrospar_itbisincluido.Value = 'True' then
           QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO4.Value)/100))]))
         else
           QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO4.Value)/100))]));


    //Empaque
    //Precio1
    if QDetallePRO_BENEFICIO.Value > 0 then
      if dm.QParametrosPAR_PRECIOEMP.Value = 'Precio1' then
         if dm.QParametrospar_itbisincluido.Value = 'True' then
           QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisEmp.Value+((QDetalleValorItbisEmp.Value*QDetallePRO_BENEFICIO.Value)/100))]))
         else
           QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOEMP.Value+((QDetalleDET_COSTOEMP.Value*QDetallePRO_BENEFICIO.Value)/100))]));

    //Precio2
    if QDetallePRO_BENEFICIO2.Value > 0 then
      if dm.QParametrosPAR_PRECIOEMP.Value = 'Precio2' then
         if dm.QParametrospar_itbisincluido.Value = 'True' then
           QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisEmp.Value+((QDetalleValorItbisEmp.Value*QDetallePRO_BENEFICIO2.Value)/100))]))
         else
           QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOEMP.Value+((QDetalleDET_COSTOEMP.Value*QDetallePRO_BENEFICIO2.Value)/100))]));

    //Precio3
    if QDetallePRO_BENEFICIO3.Value > 0 then
      if dm.QParametrosPAR_PRECIOEMP.Value = 'Precio3' then
         if dm.QParametrospar_itbisincluido.Value = 'True' then
           QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisEmp.Value+((QDetalleValorItbisEmp.Value*QDetallePRO_BENEFICIO3.Value)/100))]))
         else
           QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOEMP.Value+((QDetalleDET_COSTOEMP.Value*QDetallePRO_BENEFICIO3.Value)/100))]));

    //Precio4
    if QDetallePRO_BENEFICIO4.Value > 0 then
      if dm.QParametrosPAR_PRECIOEMP.Value = 'Precio4' then
         if dm.QParametrospar_itbisincluido.Value = 'True' then
           QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisEmp.Value+((QDetalleValorItbisEmp.Value*QDetallePRO_BENEFICIO4.Value)/100))]))
         else
           QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOEMP.Value+((QDetalleDET_COSTOEMP.Value*QDetallePRO_BENEFICIO4.Value)/100))]));

    //Empaque
    //Precio1
    if QDetallePRO_BENEFICIO.Value > 0 then
    begin
      if dm.QParametrosPAR_PRECIOEMP.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO.Value)/100))]))
        else
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO.Value)/100))]));
      end
      else if dm.QParametrosPAR_PRECIOEMP.Value = 'Precio1' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisEmp.Value+((QDetalleValorItbisEmp.Value*QDetallePRO_BENEFICIO.Value)/100))]))
        else
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOEMP.Value+((QDetalleDET_COSTOEMP.Value*QDetallePRO_BENEFICIO.Value)/100))]));
      end;
    end;

    //Precio2
    if QDetallePRO_BENEFICIO2.Value > 0 then
    begin
      if dm.QParametrosPAR_PRECIOEMP.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO2.Value)/100))]))
        else
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO2.Value)/100))]));
      end
      else if dm.QParametrosPAR_PRECIOEMP.Value = 'Precio2' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisEmp.Value+((QDetalleValorItbisEmp.Value*QDetallePRO_BENEFICIO2.Value)/100))]))
        else
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOEMP.Value+((QDetalleDET_COSTOEMP.Value*QDetallePRO_BENEFICIO2.Value)/100))]));
      end;
    end;

    //Precio3
    if QDetallePRO_BENEFICIO3.Value > 0 then
    begin
      if dm.QParametrosPAR_PRECIOEMP.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO3.Value)/100))]))
        else
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO3.Value)/100))]));
      end
      else if dm.QParametrosPAR_PRECIOEMP.Value = 'Precio3' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisEmp.Value+((QDetalleValorItbisEmp.Value*QDetallePRO_BENEFICIO3.Value)/100))]))
        else
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOEMP.Value+((QDetalleDET_COSTOEMP.Value*QDetallePRO_BENEFICIO3.Value)/100))]));
      end;
    end;

    //Precio4
    if QDetallePRO_BENEFICIO4.Value > 0 then
    begin
      if dm.QParametrosPAR_PRECIOEMP.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO4.Value)/100))]))
        else
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO4.Value)/100))]));
      end
      else if dm.QParametrosPAR_PRECIOEMP.Value = 'Precio4' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisEmp.Value+((QDetalleValorItbisEmp.Value*QDetallePRO_BENEFICIO4.Value)/100))]))
        else
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOEMP.Value+((QDetalleDET_COSTOEMP.Value*QDetallePRO_BENEFICIO4.Value)/100))]));
      end;
    end;

    //Precio al x Mayor
    //Unidad
    //Precio1
    if QDetallePRO_BENEFICIO.Value > 0 then
    begin
      if dm.QParametrospar_preciound_m.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO.Value)/100))]))
        else
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO.Value)/100))]));
      end
      else if dm.QParametrospar_preciound_m.Value = 'Precio1' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO.Value)/100))]))
        else
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO.Value)/100))]));
      end;
    end;

    //Precio2
    if QDetallePRO_BENEFICIO2.Value > 0 then
    begin
      if dm.QParametrospar_preciound_m.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO2.Value)/100))]))
        else
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO2.Value)/100))]));
      end
      else if dm.QParametrospar_preciound_m.Value = 'Precio2' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO2.Value)/100))]))
        else
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO2.Value)/100))]));
      end;
    end;

    //Precio3
    if QDetallePRO_BENEFICIO3.Value > 0 then
    begin
      if dm.QParametrospar_preciound_m.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO3.Value)/100))]))
        else
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO3.Value)/100))]));
      end
      else if dm.QParametrospar_preciound_m.Value = 'Precio3' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO3.Value)/100))]))
        else
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO3.Value)/100))]));
      end;
    end;

    //Precio4
    if QDetallePRO_BENEFICIO4.Value > 0 then
    begin
      if dm.QParametrospar_preciound_m.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO4.Value)/100))]))
        else
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO4.Value)/100))]));
      end
      else if dm.QParametrospar_preciound_m.Value = 'Precio4' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO4.Value)/100))]))
        else
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO4.Value)/100))]));
      end;
    end;

    //Empaque
    //Precio1
    if QDetallePRO_BENEFICIO.Value > 0 then
    begin
      if dm.QParametrospar_precioemp_m.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO.Value)/100))]))
        else
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO.Value)/100))]));
      end
      else if dm.QParametrospar_precioemp_m.Value = 'Precio1' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisEmp.Value+((QDetalleValorItbisEmp.Value*QDetallePRO_BENEFICIO.Value)/100))]))
        else
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOEMP.Value+((QDetalleDET_COSTOEMP.Value*QDetallePRO_BENEFICIO.Value)/100))]));
      end;
    end;

    //Precio2
    if QDetallePRO_BENEFICIO2.Value > 0 then
    begin
      if dm.QParametrospar_precioemp_m.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO2.Value)/100))]))
        else
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO2.Value)/100))]));
      end
      else if dm.QParametrospar_precioemp_m.Value = 'Precio2' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisEmp.Value+((QDetalleValorItbisEmp.Value*QDetallePRO_BENEFICIO2.Value)/100))]))
        else
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOEMP.Value+((QDetalleDET_COSTOEMP.Value*QDetallePRO_BENEFICIO2.Value)/100))]));
      end;
    end;

    //Precio3
    if QDetallePRO_BENEFICIO3.Value > 0 then
    begin
      if dm.QParametrospar_precioemp_m.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO3.Value)/100))]))
        else
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO3.Value)/100))]));
      end
      else if dm.QParametrospar_precioemp_m.Value = 'Precio3' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisEmp.Value+((QDetalleValorItbisEmp.Value*QDetallePRO_BENEFICIO3.Value)/100))]))
        else
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOEMP.Value+((QDetalleDET_COSTOEMP.Value*QDetallePRO_BENEFICIO3.Value)/100))]));
      end;
    end;

    //Precio4
    if QDetallePRO_BENEFICIO4.Value > 0 then
    begin
      if dm.QParametrospar_precioemp_m.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO4.Value)/100))]))
        else
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO4.Value)/100))]));
      end
      else if dm.QParametrospar_precioemp_m.Value = 'Precio4' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisEmp.Value+((QDetalleValorItbisEmp.Value*QDetallePRO_BENEFICIO4.Value)/100))]))
        else
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOEMP.Value+((QDetalleDET_COSTOEMP.Value*QDetallePRO_BENEFICIO4.Value)/100))]));
      end;
    end;
  end
  else //Si no tiene cantidad por empaque
  begin
    if (QDetalleDET_COSTOEMP.Value = 0) or (QDetalleDET_COSTOEMP.IsNull) then
    begin
      if dm.QParametrospar_itbisincluido.Value = 'True' then
      begin
        if QDetallePRO_BENEFICIO.Value > 0 then
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO.Value)/100))]));

        if QDetallePRO_BENEFICIO2.Value > 0 then
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO2.Value)/100))]));

        if QDetallePRO_BENEFICIO3.Value > 0 then
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO3.Value)/100))]));

        if QDetallePRO_BENEFICIO4.Value > 0 then
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleValorItbisUnd.Value+((QDetalleValorItbisUnd.Value*QDetallePRO_BENEFICIO4.Value)/100))]));
      end
      else
      begin
        if QDetallePRO_BENEFICIO.Value > 0 then
          QDetallePRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO.Value)/100))]));

        if QDetallePRO_BENEFICIO2.Value > 0 then
          QDetallePRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO2.Value)/100))]));

        if QDetallePRO_BENEFICIO3.Value > 0 then
          QDetallePRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO3.Value)/100))]));

        if QDetallePRO_BENEFICIO4.Value > 0 then
          QDetallePRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QDetalleDET_COSTOUND.Value+((QDetalleDET_COSTOUND.Value*QDetallePRO_BENEFICIO4.Value)/100))]));
      end;
    end;
  end;

  //Redondeo
  if dm.QParametrospar_redondeo.Value = 'True' then
  begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select par_desde, par_hasta, par_valor, par_sumar from redondeo_precios where emp_codigo = :emp');
    Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    Query1.Open;
    Query1.First;
    while not Query1.Eof do
    begin
      //Precio1
      if (Frac(StrToFloat(Format('%10.2F',[QDetallePRO_PRECIO1.Value]))) >= StrToFloat(Format('%10.2F',[Query1.FieldByName('par_desde').AsFloat]))) and
      (Frac(StrToFloat(Format('%10.2F',[QDetallePRO_PRECIO1.Value]))) <= StrToFloat(Format('%10.2F',[Query1.FieldByName('par_hasta').AsFloat]))) then
      begin
        if UpperCase(Query1.FieldByName('par_sumar').Value) <> 'S' then
        begin
          nEntero := Copy(FloatToStr(QDetallePRO_PRECIO1.Value), 1,
                     Pos('.',FloatToStr(QDetallePRO_PRECIO1.Value))-1);
          nValor  := nEntero+Copy(Query1.FieldByName('par_valor').AsString,pos('.',Query1.FieldByName('par_valor').AsString),3);
        end
        else
        begin
          nEntero := Copy(FloatToStr(QDetallePRO_PRECIO1.Value), 1,
                     Pos('.',FloatToStr(QDetallePRO_PRECIO1.Value))-1);
          nValor  := (FloatToStr((strtofloat(nEntero)+Query1.FieldByName('par_valor').AsFloat)))+'.00';
        end;
        QDetallePRO_PRECIO1.Value := StrToFloat(nValor)
      end;

      //Precio2
      if (Frac(StrToFloat(Format('%10.2F',[QDetallePRO_PRECIO2.Value]))) >= StrToFloat(Format('%10.2F',[Query1.FieldByName('par_desde').AsFloat]))) and
      (Frac(StrToFloat(Format('%10.2F',[QDetallePRO_PRECIO2.Value]))) <= StrToFloat(Format('%10.2F',[Query1.FieldByName('par_hasta').AsFloat]))) then
      begin
        if UpperCase(Query1.FieldByName('par_sumar').Value) <> 'S' then
        begin
          nEntero := Copy(FloatToStr(QDetallePRO_PRECIO2.Value), 1,
                     Pos('.',FloatToStr(QDetallePRO_PRECIO2.Value))-1);
          nValor  := nEntero+Copy(Query1.FieldByName('par_valor').AsString,pos('.',Query1.FieldByName('par_valor').AsString),3);
        end
        else
        begin
          nEntero := Copy(FloatToStr(QDetallePRO_PRECIO2.Value), 1,
                     Pos('.',FloatToStr(QDetallePRO_PRECIO2.Value))-1);
          nValor  := (FloatToStr((strtofloat(nEntero)+Query1.FieldByName('par_valor').AsFloat)))+'.00';
        end;
        QDetallePRO_PRECIO2.Value := StrToFloat(nValor)
      end;

      //Precio3
      if (Frac(StrToFloat(Format('%10.2F',[QDetallePRO_PRECIO3.Value]))) >= StrToFloat(Format('%10.2F',[Query1.FieldByName('par_desde').AsFloat]))) and
      (Frac(StrToFloat(Format('%10.2F',[QDetallePRO_PRECIO3.Value]))) <= StrToFloat(Format('%10.2F',[Query1.FieldByName('par_hasta').AsFloat]))) then
      begin
        if UpperCase(Query1.FieldByName('par_sumar').Value) <> 'S' then
        begin
          nEntero := Copy(FloatToStr(QDetallePRO_PRECIO3.Value), 1,
                     Pos('.',FloatToStr(QDetallePRO_PRECIO3.Value))-1);
          nValor  := nEntero+Copy(Query1.FieldByName('par_valor').AsString,pos('.',Query1.FieldByName('par_valor').AsString),3);
        end
        else
        begin
          nEntero := Copy(FloatToStr(QDetallePRO_PRECIO3.Value), 1,
                     Pos('.',FloatToStr(QDetallePRO_PRECIO3.Value))-1);
          nValor  := (FloatToStr((strtofloat(nEntero)+Query1.FieldByName('par_valor').AsFloat)))+'.00';
        end;
        QDetallePRO_PRECIO3.Value := StrToFloat(nValor)
      end;

      //Precio4
      if (Frac(StrToFloat(Format('%10.2F',[QDetallePRO_PRECIO4.Value]))) >= StrToFloat(Format('%10.2F',[Query1.FieldByName('par_desde').AsFloat]))) and
      (Frac(StrToFloat(Format('%10.2F',[QDetallePRO_PRECIO4.Value]))) <= StrToFloat(Format('%10.2F',[Query1.FieldByName('par_hasta').AsFloat]))) then
      begin
        if UpperCase(Query1.FieldByName('par_sumar').Value) <> 'S' then
        begin
          nEntero := Copy(FloatToStr(QDetallePRO_PRECIO4.Value), 1,
                     Pos('.',FloatToStr(QDetallePRO_PRECIO4.Value))-1);
          nValor  := nEntero+Copy(Query1.FieldByName('par_valor').AsString,pos('.',Query1.FieldByName('par_valor').AsString),3);
        end
        else
        begin
          nEntero := Copy(FloatToStr(QDetallePRO_PRECIO4.Value), 1,
                     Pos('.',FloatToStr(QDetallePRO_PRECIO4.Value))-1);
          nValor  := (FloatToStr((strtofloat(nEntero)+Query1.FieldByName('par_valor').AsFloat)))+'.00';
        end;
        QDetallePRO_PRECIO4.Value := StrToFloat(nValor)
      end;

      Query1.Next;
    end;
  end;
end;

procedure TfrmPedidosProv.QDetallepro_beneficioChange(Sender: TField);
begin
  Precios;
end;

procedure TfrmPedidosProv.QDetallepro_beneficio2Change(Sender: TField);
begin
  Precios;
end;

procedure TfrmPedidosProv.QDetallepro_beneficio3Change(Sender: TField);
begin
  Precios;
end;

procedure TfrmPedidosProv.QDetallepro_beneficio4Change(Sender: TField);
begin
  Precios;
end;

procedure TfrmPedidosProv.btdeptoClick(Sender: TObject);
begin
  Search.Query.clear;
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.add('select dep_nombre, dep_codigo');
  Search.Query.add('from departamentos');
  //Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.Title := 'Departamentos';
  Search.ResultField := 'dep_codigo';
  if Search.execute then
  begin
    QPedidosdep_codigo.value := StrToInt(Search.ValueField);
    DBEdit25.setfocus;
  end;
end;

procedure TfrmPedidosProv.QPedidosdep_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QPedidosdep_codigo.IsNull then
  begin
    Text := IntToStr(QPedidosdep_codigo.value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select dep_nombre from departamentos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and dep_codigo = :dep');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    //dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.ParamByName('dep').Value := QPedidosdep_codigo.value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
    begin
      tDepto.Text := '';
      MessageDlg('ESTE DEPARTAMENTO NO EXISTE',mtError,[mbok],0);
      QPedidosdep_codigo.Clear;
      Abort;
    end
    else
      tDepto.Text := dm.Query1.FieldByName('dep_nombre').AsString;
  end;
end;

procedure TfrmPedidosProv.Pantalladeproductos1Click(Sender: TObject);
var
  vIns, vMod, vDel : boolean;
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('inv_productos');
  dm.Query1.open;
  if dm.Query1.RecordCount > 0 then
  begin
    vIns := dm.Query1.fieldbyname('Inserta').asboolean;
    vMod := dm.Query1.fieldbyname('Modifica').asboolean;
    vDel := dm.Query1.fieldbyname('Elimina').asboolean;
    frmMain.activaforma(tfrmProductos, tform(frmProductos));
    frmProductos.btEdit.visible   := vMod;
    frmProductos.btInsert.visible := vIns;
    frmProductos.btDelete.visible := vDel;
    frmProductos.QProductos.Close;
    frmProductos.QProductos.Parameters.ParamByName('prod').Value := QDetallePRO_CODIGO.Value;
    frmProductos.QProductos.Open;
  end;
end;

procedure TfrmPedidosProv.Pantalladeajustedeinventario1Click(
  Sender: TObject);
var
  vIns, vMod, vDel : boolean;
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('inv_ajuste');
  dm.Query1.open;
  if dm.Query1.RecordCount > 0 then
  begin
    frmMain.activaforma(tfrmAjusteInventario, tform(frmAjusteInventario));
    frmAjusteInventario.QProductos.Locate('pro_codigo',QDetallePRO_CODIGO.Value,[]);
  end;
end;

procedure TfrmPedidosProv.Consultarmovimientos1Click(Sender: TObject);
begin
  application.createform(tfrmConsProdClienteFac, frmConsProdClienteFac);
  frmConsProdClienteFac.CheckBox1.Caption := 'Todos los proveedores';
  frmConsProdClienteFac.QFacturas.Close;
  frmConsProdClienteFac.QFacturas.SQL.Clear;
  frmConsProdClienteFac.QFacturas.SQL.Add('select null as tfa_codigo, 0 as fac_numero, f.fac_fecha,');
  frmConsProdClienteFac.QFacturas.SQL.Add('f.fac_numero as numero, p.sup_nombre as fac_nombre,');
  frmConsProdClienteFac.QFacturas.SQL.Add('d.det_costo as det_precio,');
  frmConsProdClienteFac.QFacturas.SQL.Add('d.det_descuento, d.det_cantidad, m.mon_sigla');
  frmConsProdClienteFac.QFacturas.SQL.Add('from provfacturas f, moneda m, proveedores p, det_provfacturas d');
  frmConsProdClienteFac.QFacturas.SQL.Add('where f.emp_codigo = m.emp_codigo');
  frmConsProdClienteFac.QFacturas.SQL.Add('and f.mon_codigo = m.mon_codigo');
  frmConsProdClienteFac.QFacturas.SQL.Add('and f.emp_codigo = d.emp_codigo');
  frmConsProdClienteFac.QFacturas.SQL.Add('and f.sup_codigo = d.sup_codigo');
  frmConsProdClienteFac.QFacturas.SQL.Add('and f.fac_numero = d.fac_numero');
  frmConsProdClienteFac.QFacturas.SQL.Add('and f.sup_codigo = p.sup_codigo');
  frmConsProdClienteFac.QFacturas.SQL.Add('and p.emp_codigo = '+dm.QParametrosPAR_INVEMPRESA.AsString);
  frmConsProdClienteFac.QFacturas.SQL.Add('and f.emp_codigo = :emp');
  frmConsProdClienteFac.QFacturas.SQL.Add('and f.fac_status <> '+QuotedStr('ANU'));
  frmConsProdClienteFac.QFacturas.SQL.Add('and d.pro_codigo = :pro');
  frmConsProdClienteFac.Memo1.Lines := frmConsProdClienteFac.QFacturas.SQL;

  frmConsProdClienteFac.tipo := 'sup';
  if not QPedidosSUP_CODIGO.IsNull then
  begin
    frmConsProdClienteFac.cli := QPedidosSUP_CODIGO.value;
    frmConsProdClienteFac.CheckBox1.Checked := false;
  end
  else
  begin
    frmConsProdClienteFac.cli := 0;
    frmConsProdClienteFac.CheckBox1.Checked := true;
  end;
  frmConsProdClienteFac.pro := QDetallePRO_CODIGO.Value;
  frmConsProdClienteFac.QFacturas.Parameters.ParamByName('emp').Value := dm.vp_cia;
  frmConsProdClienteFac.QFacturas.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
  frmConsProdClienteFac.pr_consultar;
  frmConsProdClienteFac.ShowModal;
  frmConsProdClienteFac.Release;
end;

procedure TfrmPedidosProv.btpreciosClick(Sender: TObject);
var
  a : integer;
begin
  Application.CreateForm(tfrmPreciosUnidadMedidaFacProvee, frmPreciosUnidadMedidaFacProvee);
  frmPreciosUnidadMedidaFacProvee.QUnidades.Open;

  QUnidades.DisableControls;
  QUnidades.First;
  while not QUnidades.Eof do
  begin
    if QUnidadespro_codigo.Value = QDetallePRO_CODIGO.Value then
    begin
      frmPreciosUnidadMedidaFacProvee.QUnidades.Append;
      frmPreciosUnidadMedidaFacProvee.QUnidadesUnidadID.Value   := QUnidadesUnidadID.Value;
      frmPreciosUnidadMedidaFacProvee.QUnidadesPrecio.Value     := QUnidadesPrecio.Value;
      frmPreciosUnidadMedidaFacProvee.QUnidadesCantidad.Value   := QUnidadesCantidad.Value;
      frmPreciosUnidadMedidaFacProvee.QUnidadesSecuencia.Value  := QUnidadesSecuencia.Value;
      frmPreciosUnidadMedidaFacProvee.QUnidadesCredito.Value    := QUnidadesCredito.Value;
      frmPreciosUnidadMedidaFacProvee.QUnidadesMinimo.Value     := QUnidadesMinimo.Value;
      frmPreciosUnidadMedidaFacProvee.QUnidadespro_codigo.Value := QDetallePRO_CODIGO.Value;
      frmPreciosUnidadMedidaFacProvee.QUnidades.Post;
    end;
    QUnidades.Next;
  end;
  QUnidades.First;
  QUnidades.EnableControls;
  frmPreciosUnidadMedidaFacProvee.QUnidades.First;

  frmPreciosUnidadMedidaFacProvee.ShowModal;
  if frmPreciosUnidadMedidaFacProvee.acepto = 1 then
  begin
    //eliminando registros del producto seleccionado para actualizarlo
    QUnidades.DisableControls;
    QUnidades.First;
    a := QUnidades.RecordCount;
    while a > 0 do
    begin
      if QUnidadespro_codigo.Value = QDetallePRO_CODIGO.Value then
        QUnidades.Delete
      else
        QUnidades.Next;

      a := a - 1;
    end;
    QUnidades.EnableControls;

    //insertando los registros actualizados
    frmPreciosUnidadMedidaFacProvee.QUnidades.First;
    while not frmPreciosUnidadMedidaFacProvee.QUnidades.Eof do
    begin
      QUnidades.Append;
      QUnidadespro_codigo.Value := QDetallePRO_CODIGO.Value;
      QUnidadesPrecio.Value     := frmPreciosUnidadMedidaFacProvee.QUnidadesPrecio.Value;
      QUnidadesCredito.Value    := frmPreciosUnidadMedidaFacProvee.QUnidadesCredito.Value;
      QUnidadesMinimo.Value     := frmPreciosUnidadMedidaFacProvee.QUnidadesMinimo.Value;
      QUnidadesCantidad.Value   := frmPreciosUnidadMedidaFacProvee.QUnidadesCantidad.Value;
      QUnidadesUnidadID.Value   := frmPreciosUnidadMedidaFacProvee.QUnidadesUnidadID.Value;
      QUnidades.Post;
      
      frmPreciosUnidadMedidaFacProvee.QUnidades.Next;
    end;
  end;
  frmPreciosUnidadMedidaFacProvee.Release;
end;

procedure TfrmPedidosProv.QDetalleAfterDelete(DataSet: TDataSet);
begin
  totalizar;
end;

procedure TfrmPedidosProv.buscarproductoenellistado1Click(Sender: TObject);
var
  nom : string;
begin
  nom := InputBox('Buscar producto', 'Nombre', '');
  if length(nom) > 0 then
  begin
    if not QDetalle.Locate('det_descripcion', nom, [loPartialKey]) then
    begin
      MessageDlg('Producto no encontrato en la lista', mtError, [mbOK], 0);
      Grid.SetFocus;
    end;
  end;
end;

procedure TfrmPedidosProv.QDetalleBeforeEdit(DataSet: TDataSet);
begin
  Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
end;

end.
