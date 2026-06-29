unit PVENTA226;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ExtCtrls, StdCtrls, DBCtrls, Grids, DBGrids, Buttons,
  QuerySearchDlgADO, Mask, Menus;

type
  TfrmFacturaAutomatica = class(TForm)
    QFactura: TADOQuery;
    QFacturaemp_codigo: TIntegerField;
    QFacturafacturaid: TIntegerField;
    QFacturadia: TIntegerField;
    QFacturatfa_codigo: TIntegerField;
    QFacturaven_codigo: TIntegerField;
    QFacturacaj_codigo: TIntegerField;
    QFacturafac_caja: TIntegerField;
    QFacturacpa_codigo: TIntegerField;
    QFacturamon_codigo: TIntegerField;
    QFacturausu_codigo: TIntegerField;
    dsFactura: TDataSource;
    QDetalle: TADOQuery;
    QDetalleemp_codigo: TIntegerField;
    QDetallefacturaid: TIntegerField;
    QDetalledetalleid: TIntegerField;
    QDetallepro_codigo: TIntegerField;
    QDetallepro_roriginal: TStringField;
    QDetallepro_nombre: TStringField;
    QDetallecantidad: TBCDField;
    QDetalleprecio: TBCDField;
    QDetalledescuento: TBCDField;
    Panel1: TPanel;
    dsDetalle: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    dsSuc: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    QFacturasuc_codigo: TIntegerField;
    QDetallesuc_codigo: TIntegerField;
    DBLookupComboBox1: TDBLookupComboBox;
    QTipo: TADOQuery;
    QTipotfa_codigo: TIntegerField;
    QTipotfa_nombre: TStringField;
    dsTipo: TDataSource;
    QCajas: TADOQuery;
    QCajascaj_codigo: TIntegerField;
    QCajascaj_nombre: TStringField;
    dsCajas: TDataSource;
    DBLookupComboBox3: TDBLookupComboBox;
    QCajeros: TADOQuery;
    QCajeroscaj_codigo: TIntegerField;
    QCajeroscaj_nombre: TStringField;
    dsCajeros: TDataSource;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    QCondicion: TADOQuery;
    QCondicioncpa_codigo: TIntegerField;
    QCondicioncpa_nombre: TStringField;
    dsCondicion: TDataSource;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    QVendedor: TADOQuery;
    QVendedorven_codigo: TIntegerField;
    QVendedorven_nombre: TStringField;
    dsVendedor: TDataSource;
    QMoneda: TADOQuery;
    QMonedamon_codigo: TIntegerField;
    QMonedamon_nombre: TStringField;
    dsMoneda: TDataSource;
    Grid: TDBGrid;
    Panel2: TPanel;
    btgrabar: TBitBtn;
    btlimpiar: TBitBtn;
    btBuscaProd: TSpeedButton;
    btdelete: TBitBtn;
    QDetalledet_nota: TMemoField;
    btNota: TBitBtn;
    btSalir: TBitBtn;
    btNotaProducto: TBitBtn;
    Query1: TADOQuery;
    QDetalledet_conitbis: TStringField;
    QDetalledet_medida: TStringField;
    QDetalledet_itbis: TBCDField;
    btBusca: TBitBtn;
    Search: TQrySearchDlgADO;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    QFacturanombre: TStringField;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    QFacturafac_total: TBCDField;
    QFacturafac_itbis: TBCDField;
    QFacturafac_descuento: TBCDField;
    QDetalleCalcItbis: TFloatField;
    QDetalleCalcDesc: TFloatField;
    QDetallePrecioItbis: TFloatField;
    QDetalleValor: TFloatField;
    Label16: TLabel;
    DBEdit7: TDBEdit;
    lbItbis: TLabel;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    Label19: TLabel;
    PopupMenu1: TPopupMenu;
    Crearnotaalproducto1: TMenuItem;
    Consultarmovimiento1: TMenuItem;
    Label18: TLabel;
    DBEdit13: TDBEdit;
    bttiponcf: TSpeedButton;
    ttiponcf: TEdit;
    QFacturatip_codigo: TIntegerField;
    QFacturaFAC_NOTA: TMemoField;
    procedure QFacturaNewRecord(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure btSalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GridColEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormPaint(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btlimpiarClick(Sender: TObject);
    procedure GridEnter(Sender: TObject);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure QDetallepro_roriginalChange(Sender: TField);
    procedure QDetalleBeforePost(DataSet: TDataSet);
    procedure QDetalleNewRecord(DataSet: TDataSet);
    procedure btBuscaProdClick(Sender: TObject);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btNotaClick(Sender: TObject);
    procedure btNotaProductoClick(Sender: TObject);
    procedure btdeleteClick(Sender: TObject);
    procedure btgrabarClick(Sender: TObject);
    procedure QFacturaBeforePost(DataSet: TDataSet);
    procedure btBuscaClick(Sender: TObject);
    procedure QDetallepro_codigoChange(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure QDetalleAfterPost(DataSet: TDataSet);
    procedure QDetalleAfterDelete(DataSet: TDataSet);
    procedure Crearnotaalproducto1Click(Sender: TObject);
    procedure bttiponcfClick(Sender: TObject);
    procedure QFacturatip_codigoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Totaliza : boolean;
    procedure BuscaProd (campo : string);
    procedure Totalizar;
  end;

var
  frmFacturaAutomatica: TfrmFacturaAutomatica;

implementation

uses SIGMA01, PVENTA33, PVENTA36, PVENTA186;

{$R *.dfm}

procedure TfrmFacturaAutomatica.QFacturaNewRecord(DataSet: TDataSet);
begin
  Totaliza := true;
  QFacturaemp_codigo.Value := dm.vp_cia;
  QFacturasuc_codigo.Value := QSucursalsuc_codigo.Value;
  QFacturausu_codigo.Value := dm.Usuario;

  QDetalle.Close;
  QDetalle.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QDetalle.Parameters.ParamByName('num').Value := -1;
  QDetalle.Open;
end;

procedure TfrmFacturaAutomatica.FormActivate(Sender: TObject);
begin
  if not QFactura.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    QTipo.Open;
    QCajas.Open;
    QCajeros.Open;
    QVendedor.Open;
    QCondicion.Open;
    QMoneda.Open;
    QFactura.Parameters.ParamByName('num').Value := -1;
    QFactura.Open;
    QFactura.Insert;
  end;
end;

procedure TfrmFacturaAutomatica.btSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmFacturaAutomatica.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?', mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmFacturaAutomatica.GridColEnter(Sender: TObject);
begin
  if Grid.selectedindex = 1 then Grid.selectedindex := 2
end;

procedure TfrmFacturaAutomatica.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  nom : string;
  pre : double;
begin
  if key = vk_f2  then btgrabarClick(Self);
  if key = vk_f3  then btlimpiarClick(Self);
  if key = vk_f7  then btBuscaClick(Self);
  if key = vk_f8  then btNotaClick(Self);
  if key = vk_f10 then btSalirClick(Self);
  if key = vk_f11 then
  begin
    Search.Query.Clear;
    Search.AliasFields.Clear;
    Search.Query.Add('select substring(nombre,1,60) as nombre, facturaid, dia from factura_automatica');
    Search.Query.Add('where emp_codigo = '+dm.QEmpresasEMP_CODIGO.AsString);
    Search.AliasFields.Add('Descripcion');
    Search.AliasFields.Add('ID');
    Search.AliasFields.Add('Dia');
    Search.ResultField := 'facturaid';
    Search.Title := 'Facturas automáticas';
    if Search.execute then
    begin
      Totaliza := false;

      //Copiando Maestro
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select emp_codigo, suc_codigo, facturaid, dia, tfa_codigo, ven_codigo, caj_codigo, fac_caja,');
      dm.Query1.SQL.Add('cpa_codigo, mon_codigo, usu_codigo, fac_nota, nombre, fac_total, fac_itbis, fac_descuento');
      dm.Query1.SQL.Add('from factura_automatica where emp_codigo = :emp and facturaid = :fac');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.ParamByName('fac').Value := StrToInt(Search.ValueField);
      dm.Query1.Open;

      QFactura.Close;
      QFactura.Parameters.ParamByName('num').Value := -1;
      QFactura.Open;

      QFactura.Insert;
      QFacturatfa_codigo.Value := dm.Query1.FieldByName('tfa_codigo').Value;
      QFacturaven_codigo.Value := dm.Query1.FieldByName('ven_codigo').Value;
      QFacturacaj_codigo.Value := dm.Query1.FieldByName('caj_codigo').Value;
      QFacturafac_caja.Value   := dm.Query1.FieldByName('fac_caja').Value;
      QFacturacpa_codigo.Value := dm.Query1.FieldByName('cpa_codigo').Value;
      QFacturadia.Value        := dm.Query1.FieldByName('dia').Value;
      QFacturamon_codigo.Value := dm.Query1.FieldByName('mon_codigo').Value;
      QFacturasuc_codigo.Value := dm.Query1.FieldByName('suc_codigo').Value;
      QFacturanombre.Value     := dm.Query1.FieldByName('nombre').Value;

      //Copiando Detalle
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('select emp_codigo, suc_codigo, facturaid, detalleid, pro_codigo, pro_roriginal, pro_nombre,');
      Query1.SQL.Add('cantidad, precio, descuento, det_nota, det_conitbis, det_medida, det_itbis');
      Query1.SQL.Add('from factura_detalle_automatica where emp_codigo = :emp and facturaid = :fac');
      Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      Query1.Parameters.ParamByName('fac').Value := StrToInt(Search.ValueField);
      Query1.Open;

      QDetalle.Close;
      QDetalle.Parameters.ParamByName('emp').Value := dm.vp_cia;
      QDetalle.Parameters.ParamByName('num').Value := -1;
      QDetalle.Open;

      while not Query1.Eof do
      begin
        QDetalle.Append;
        QDetallepro_nombre.Value    := Query1.FieldbyName('pro_nombre').Value;
        QDetallecantidad.Value      := Query1.FieldbyName('cantidad').Value;
        QDetalleprecio.Value        := Query1.FieldbyName('precio').Value;
        QDetalledescuento.Value     := Query1.FieldbyName('descuento').Value;
        QDetalledet_conitbis.Value  := Query1.FieldbyName('det_conitbis').Value;
        QDetalledet_medida.Value    := Query1.FieldbyName('det_medida').Value;
        QDetallepro_codigo.Value    := Query1.FieldbyName('pro_codigo').Value;
        qdetalle.Post;

        Query1.Next;
      end;

      Totaliza := true;
      Totalizar;
      QFactura.Edit;

      Grid.SetFocus;

    end;
  end;
end;

procedure TfrmFacturaAutomatica.FormPaint(Sender: TObject);
begin
  with frmFacturaAutomatica do
  begin
    frmFacturaAutomatica.Left := 10;
    frmFacturaAutomatica.Top  := 10;
  end;
end;

procedure TfrmFacturaAutomatica.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    if ActiveControl.classtype <> tdbgrid then
    begin
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    end;
  end;
end;

procedure TfrmFacturaAutomatica.btlimpiarClick(Sender: TObject);
begin
  if messagedlg('ESTA SEGURO QUE DESEA CANCELAR?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QFactura.DisableControls;
    QFactura.close;
    QFactura.Parameters.ParamByName('num').Value := -1;
    QFactura.open;
    QFactura.EnableControls;
    QFactura.insert;
    DBEdit1.SetFocus;
  end
  else
    Grid.setfocus;
end;

procedure TfrmFacturaAutomatica.GridEnter(Sender: TObject);
begin
  Grid.SelectedIndex := 0;
end;

procedure TfrmFacturaAutomatica.GridKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if Grid.selectedindex <> 6 then
      Grid.selectedindex := Grid.selectedindex + 1
    else
    begin
      Grid.selectedindex := 0;
      QDetalle.Append;
    end;
  end;
  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_MEDIDA' then
  begin
    QDetalle.Edit;
    if uppercase(key) = 'E' then
      QDetalledet_medida.Value := 'Emp'
    else if uppercase(key) = 'U' then
      QDetalledet_medida.Value := 'Und';
  end;
end;

procedure TfrmFacturaAutomatica.BuscaProd(campo: string);
begin
  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select pro_codigo, pro_nombre, pro_costo, pro_precio1,');
  dm.Query1.sql.add('pro_precio2, pro_precio3, pro_precio4, pro_servicio,');
  dm.Query1.sql.add('pro_roriginal, pro_rfabric, pro_itbis, pro_vence,');
  dm.Query1.sql.add('pro_costoempaque, pro_beneficio, pro_beneficio2,');
  dm.Query1.sql.add('pro_beneficio3, pro_beneficio4, pro_preciomenor, pro_status,');
  dm.Query1.sql.add('pro_preciomenoremp, pro_costous, pro_detallado, pro_cantempaque, pro_montoitbis');
  dm.Query1.sql.add('from productos');
  dm.Query1.sql.add('where emp_codigo = :emp');
  if campo = 'I' then
  begin
    dm.Query1.sql.add('and pro_codigo = :cod');
    dm.Query1.Parameters.parambyname('cod').Value := QDetallepro_codigo.value;
  end
  else if campo = 'O' then
  begin
    dm.Query1.sql.add('and pro_roriginal = :cod');
    dm.Query1.Parameters.parambyname('cod').Value := QDetallepro_roriginal.value;
  end;
  dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
  dm.Query1.open;
  if dm.Query1.FieldByName('pro_status').AsString = 'INA' then
  begin
    MessageDlg('NO PUEDE INCLUIR ESTE PRODUCTO, DEBIDO A QUE'+#13+'ESTA INACTIVO',mtError,[mbok],0);
    QDetalle.Cancel;
    Grid.SelectedIndex := 0;
  end
  else
  begin
    if campo = 'I' then
    begin
      QDetallepro_roriginal.value := dm.Query1.fieldbyname('pro_roriginal').asstring;
    end
    else if campo = 'O' then
    begin
      QDetallepro_codigo.value    := dm.Query1.fieldbyname('pro_codigo').AsInteger;
    end;
    QDetallepro_nombre.value    := dm.Query1.fieldbyname('pro_nombre').asstring;
    QDetalledet_conitbis.value  := dm.Query1.fieldbyname('pro_itbis').asstring;
    QDetalleprecio.Value        := dm.Query1.fieldbyname('pro_precio1').AsFloat;
    QDetalledet_itbis.Value     := dm.Query1.fieldbyname('pro_montoitbis').AsFloat;
    QDetalledescuento.Value     := 0;
    QDetallecantidad.Value      := 1;

    if QDetalledet_itbis.value > 0 then
       QDetalledet_conitbis.value := 'S'
    else
       QDetalledet_conitbis.value := 'N';
  end;
end;

procedure TfrmFacturaAutomatica.QDetallepro_roriginalChange(
  Sender: TField);
begin
  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
  begin
    if not QDetallePRO_RORIGINAL.isnull then
    begin
      BuscaProd('O');
    end;
  end;
end;

procedure TfrmFacturaAutomatica.QDetalleBeforePost(DataSet: TDataSet);
begin
  if QDetalledescuento.IsNull then QDetalledescuento.Value := 0;
end;

procedure TfrmFacturaAutomatica.QDetalleNewRecord(DataSet: TDataSet);
begin
  QDetalleemp_codigo.Value := dm.vp_cia;
  QDetallesuc_codigo.Value := DBLookupComboBox2.KeyValue;
  QDetalledet_medida.Value := 'Und';
end;

procedure TfrmFacturaAutomatica.btBuscaProdClick(Sender: TObject);
var
  primera : boolean;
  Relleno, Lote : string;
  s : array[0..20] of char;
begin
  application.createform(tfrmBuscaProducto, frmBuscaProducto);
  frmBuscaProducto.facturando := False;
  primera := true;
  while (frmBuscaProducto.ckactiva.Checked) or (Primera) do
  begin
    frmBuscaProducto.showmodal;
    Primera := false;
    if frmBuscaProducto.seleccion = 1 then
    begin
      Relleno := '';
      if dm.QParametrosPAR_VENVERIFICA.Value = '1' then
      begin
        Relleno := '';
        if frmBuscaProducto.QVence.RecordCount > 0 then
        begin
          FillChar(s, dm.QParametrosPAR_VENDIGITOSLOTE.Value-Length(IntToStr(frmBuscaProducto.QVenceven_lote.Value)),'0');
          Relleno := s+IntToStr(frmBuscaProducto.QVenceven_lote.Value);
        end
        else
        begin
          FillChar(s, dm.QParametrosPAR_VENDIGITOSLOTE.Value,'9');
          Relleno := s;
        end;
      end;

      QDetalle.Edit;
      if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
         QDetallepro_codigo.value := frmBuscaProducto.QProductosPRO_CODIGO.value
      else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
         QDetallepro_roriginal.value := Relleno+frmBuscaProducto.QProductosPRO_RORIGINAL.value;

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

procedure TfrmFacturaAutomatica.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_f4) and (btBuscaProd.Enabled = True) then btBuscaProdClick(self);
  if key = vk_f5 then btNotaProductoClick(Self);
  if key = vk_f6 then btdeleteClick(Self);
end;

procedure TfrmFacturaAutomatica.btNotaClick(Sender: TObject);
begin
  application.createform(tfrmNota, frmNota);
  frmNota.DBMemo1.DataSource := frmFacturaAutomatica.dsFactura;
  frmNota.DBMemo1.DataField := 'FAC_NOTA';
  frmNota.showmodal;
  frmNota.release;
end;

procedure TfrmFacturaAutomatica.btNotaProductoClick(Sender: TObject);
begin
  application.createform(tfrmNota, frmNota);
  frmNota.DBMemo1.DataSource := frmFacturaAutomatica.dsDetalle;
  frmNota.DBMemo1.DataField := 'DET_NOTA';
  frmNota.showmodal;
  frmNota.release;
end;

procedure TfrmFacturaAutomatica.btdeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR LA FILA?',mtconfirmation,[mbyes,mbno],0) = mryes then
    QDetalle.Delete;
  Grid.setfocus;
end;

procedure TfrmFacturaAutomatica.btgrabarClick(Sender: TObject);
var
  a : integer;
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select tfa_actbalance from tiposfactura where emp_codigo = :emp');
  dm.Query1.SQL.Add('and tfa_codigo = :tfa');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('tfa').Value := DBLookupComboBox1.KeyValue;
  dm.Query1.Open;
  if QFacturaven_codigo.IsNull then
     MessageDlg('Debe seleccionar el Vendedor',mtError,[mbok],0)
  else if QFacturafac_caja.IsNull then
     MessageDlg('Debe seleccionar la Caja',mtError,[mbok],0)
  else if QFacturacaj_codigo.IsNull then
     MessageDlg('Debe seleccionar el Cajero',mtError,[mbok],0)
  else if QFacturamon_codigo.IsNull then
     MessageDlg('Debe seleccionar la Moneda',mtError,[mbok],0)
  else if QFacturatfa_codigo.IsNull then
     MessageDlg('Debe seleccionar el Tipo de factura',mtError,[mbok],0)
  else if (QFacturacpa_codigo.IsNull) and (dm.Query1.FieldbyName('tfa_actbalance').AsString = 'True') then
     MessageDlg('Debe seleccionar la Condición de pago',mtError,[mbok],0)
  else if QDetalle.RecordCount = 0 then
     MessageDlg('Debe incluir los productos',mtError,[mbok],0)
  else if QFacturadia.IsNull then
     MessageDlg('Debe especificar el día',mtError,[mbok],0) //}
  else if QFacturanombre.IsNull then
     MessageDlg('Debe especificar la descvripción',mtError,[mbok],0)
  else
  begin
    if MessageDlg('Todos los datos están correctos?', mtConfirmation, [mbyes,mbno],0) = mryes then
    begin
      QFactura.Post;
      QFactura.UpdateBatch;

      a := 0;
      QDetalle.DisableControls;
      QDetalle.First;
      while not QDetalle.Eof do
      begin
        a := a + 1;
        QDetalle.Edit;
        QDetalleemp_codigo.Value := dm.vp_cia;
        QDetallesuc_codigo.Value := QFacturasuc_codigo.Value;
        QDetallefacturaid.Value  := QFacturafacturaid.Value;
        QDetalledetalleid.Value  := a;
        QDetalle.Post;
        QDetalle.Next;
      end;
      QDetalle.first;
      QDetalle.EnableControls;
      QDetalle.UpdateBatch;

      QFactura.DisableControls;
      QFactura.close;
      QFactura.Parameters.ParamByName('num').Value := -1;
      QFactura.open;
      QFactura.EnableControls;
      QFactura.insert;
    end;
  end;
  DBEdit1.SetFocus;
end;

procedure TfrmFacturaAutomatica.QFacturaBeforePost(DataSet: TDataSet);
begin
  if QFactura.State = dsinsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(facturaid),0) + 1 as maximo');
    dm.Query1.SQL.Add('from factura_automatica where emp_codigo = :emp');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Open;
    QFacturafacturaid.Value := dm.Query1.FieldByName('maximo').Value;
  end;
end;

procedure TfrmFacturaAutomatica.btBuscaClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select substring(nombre,1,60) as nombre, facturaid, dia');
  Search.Query.Add('from factura_automatica');
  Search.Query.Add('where emp_codigo = '+dm.QEmpresasEMP_CODIGO.AsString);
  Search.AliasFields.Add('Descripcion');
  Search.AliasFields.Add('ID');
  Search.AliasFields.Add('Dia');
  Search.ResultField := 'facturaid';
  Search.Title := 'Facturas automáticas';
  if Search.execute then
  begin
    Totaliza := false;
    QFactura.Close;
    QFactura.Parameters.ParamByName('num').Value := StrToInt(Search.ValueField);
    QFactura.Open;

    QDetalle.Close;
    QDetalle.Parameters.ParamByName('emp').Value := dm.vp_cia;
    QDetalle.Parameters.ParamByName('num').Value := StrToInt(Search.ValueField);
    QDetalle.Open;

    Totaliza := true;
    Totalizar;
    QFactura.Edit;

    Grid.SetFocus;

  end;
end;

procedure TfrmFacturaAutomatica.QDetallepro_codigoChange(Sender: TField);
begin
  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
  begin
    if not QDetallepro_codigo.isnull then
    begin
      BuscaProd('I');
    end;
  end;
end;

procedure TfrmFacturaAutomatica.FormCreate(Sender: TObject);
begin
  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
     Grid.Columns[0].FieldName := 'PRO_CODIGO'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
     Grid.Columns[0].FieldName := 'PRO_RORIGINAL';
end;

procedure TfrmFacturaAutomatica.Totalizar;
var
  Puntero : TBookmark;
  TItbis, TDesc, Total : Double;
begin
  if Totaliza = true then
  begin
    Puntero := QDetalle.GetBookmark;
    QDetalle.disablecontrols;
    QDetalle.first;
    Total  := 0;
    TItbis := 0;
    TDesc  := 0;
    while not QDetalle.eof do
    begin
      if dm.QParametrospar_itbisincluido.Value = 'True' then
        Total  := Total  + strtofloat(format('%10.2f',[QDetallecantidad.value]))* strtofloat(format('%10.2f',[QDetallePrecioItbis.value]))
      else
        Total  := Total  + (strtofloat(format('%10.2f',[QDetalleprecio.value]))*QDetallecantidad.value);

      TDesc  := TDesc  + strtofloat(format('%10.2f',[QDetalleCalcDesc.value*QDetallecantidad.value]));
      TItbis := strtofloat(format('%10.2f',[TItbis])) + strtofloat(format('%10.2f',[QDetalleCalcItbis.value*QDetallecantidad.value]));

      QDetalle.next;
    end;
    QFactura.Edit;
    QFacturafac_itbis.value     := strtofloat(format('%10.2f',[TItbis]));
    QFacturafac_descuento.value := strtofloat(format('%10.2f',[TDesc]));
    QFacturafac_total.value     := strtofloat(format('%10.2f',[(Total-TDesc)+QFacturafac_itbis.value]));

    QDetalle.GotoBookmark(Puntero);
    QDetalle.enablecontrols;
  end;
end;

procedure TfrmFacturaAutomatica.QDetalleCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis, vPrec, vDesc, vCant : Double;
  a : integer;
begin
  if QDetalledet_conitbis.value = 'S' then
  begin
    NumItbis := strtofloat(format('%10.2f',[(QDetalledet_itbis.asfloat/100)+1]));

    if dm.QParametrospar_itbisincluido.Value = 'True' then
    begin
      Venta    := strtofloat(format('%10.2f',[(QDetalleprecio.value)/NumItbis]));
      QDetalleCalcDesc.value    := strtofloat(format('%10.2f',[(Venta *
                                   strtofloat(format('%10.2f',[QDetalledescuento.value])))/100]));

      //Venta    := strtofloat(format('%10.2f',[(QDetalleDET_PRECIO.value)/NumItbis]));
      QDetallePrecioItbis.value := strtofloat(format('%10.2f',[Venta]));
      QDetalleCalcDesc.value    := strtofloat(format('%10.2f',[(Venta *
                                 strtofloat(format('%10.2f',[QDetalledescuento.value])))/100]));

      QDetalleCalcItbis.value   := strtofloat(format('%10.2f',[(((Venta-QDetalleCalcDesc.value))*
                                   strtofloat(format('%10.2f',[QDetalledet_itbis.Value])))/100]));
      QDetalleValor.value       := ((strtofloat(format('%10.2f',[Venta]))-
                                   strtofloat(format('%10.2f',[QDetalleCalcDesc.value])))+
                                   strtofloat(format('%10.2f',[QDetalleCalcItbis.value])))*
                                   strtofloat(format('%10.2f',[QDetallecantidad.value]));
    end
    else
    begin
      Venta    := strtofloat(format('%10.2f',[(QDetalleprecio.value)]));
      QDetallePrecioItbis.value := strtofloat(format('%10.2f',[QDetalleprecio.value]));
      QDetalleCalcDesc.value    := strtofloat(format('%10.2f',[(Venta *
                                 strtofloat(format('%10.2f',[QDetalledescuento.value])))/100]));
      QDetalleCalcItbis.value   := strtofloat(format('%10.2f',[(((Venta-QDetalleCalcDesc.value))*
                                   strtofloat(format('%10.2f',[QDetalledet_itbis.Value])))/100]));

      vPrec := strtofloat(format('%10.2f',[QDetalleprecio.value]));
      vDesc := strtofloat(format('%10.2f',[QDetalleCalcDesc.value]));
      vCant := strtofloat(format('%10.2f',[QDetallecantidad.value]));
      QDetalleValor.Value := ((vPrec - vDesc) + QDetalleCalcItbis.value) * vCant;

    end;
  end
  else
  begin
    Venta := strtofloat(format('%10.2f',[QDetalleprecio.value]));
    QDetalleCalcDesc.value    := strtofloat(format('%10.2f',[(Venta * QDetalledescuento.value)/100]));
    QDetallePrecioItbis.value := strtofloat(format('%10.2f',[Venta]));
    QDetalleCalcItbis.value   := 0;
    QDetalleValor.value       := strtofloat(format('%10.2f',[(Venta-strtofloat(format('%10.2f',[QDetalleCalcDesc.value])))*QDetallecantidad.value]));
  end;

end;

procedure TfrmFacturaAutomatica.QDetalleAfterPost(DataSet: TDataSet);
begin
  if not QDetallepro_codigo.isnull then Totalizar;
end;

procedure TfrmFacturaAutomatica.QDetalleAfterDelete(DataSet: TDataSet);
begin
  Totalizar;
end;

procedure TfrmFacturaAutomatica.Crearnotaalproducto1Click(Sender: TObject);
begin
  application.createform(tfrmNota, frmNota);
  frmNota.DBMemo1.DataSource := frmFacturaAutomatica.dsDetalle;
  frmNota.DBMemo1.DataField := 'DET_NOTA';
  frmNota.showmodal;
  frmNota.release;
end;

procedure TfrmFacturaAutomatica.bttiponcfClick(Sender: TObject);
begin
  Search.AliasFields.clear;
  Search.AliasFields.add('Nombre');
  Search.AliasFields.add('Código');
  Search.Query.Clear;
  Search.Query.Add('select tip_nombre, tip_codigo');
  Search.Query.Add('from TipoNCF');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'tip_codigo';
  Search.Title := 'Tipos de Comprobantes';
  if Search.execute then
  begin
    QFacturatip_codigo.Value := StrToInt(Search.ValueField);
    DBEdit13.SetFocus;
  end;
end;

procedure TfrmFacturaAutomatica.QFacturatip_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QFacturatip_codigo.IsNull then
  begin
    Text := IntToStr(QFacturatip_codigo.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tip_nombre from TipoNCF');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tip_codigo = :tip');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('tip').Value  := QFacturatip_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      ttiponcf.Text := dm.Query1.FieldByName('tip_nombre').AsString
    else
      ttiponcf.Text := '';
  end
  else
    ttiponcf.Text := '';

end;

end.
