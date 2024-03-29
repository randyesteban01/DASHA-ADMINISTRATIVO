unit PVENTA130;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids, DB,
  IBCustomDataSet, IBQuery, IBUpdateSQL, Spin, ADODB,
  QuerySearchDlgADO;

type
  TfrmCotMultiple = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    SpeedButton2: TSpeedButton;
    tprov1: TEdit;
    Panel5: TPanel;
    Grid: TDBGrid;
    btBusca: TBitBtn;
    btGRabar: TBitBtn;
    btLimpiar: TBitBtn;
    BitBtn6: TBitBtn;
    btBuscaProd: TBitBtn;
    btElimina: TBitBtn;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    QCotizacion: TADOQuery;
    dsCot: TDataSource;
    QDetalle: TADOQuery;
    dsDetalle: TDataSource;
    Search: TQrySearchDlgADO;
    Query1: TADOQuery;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    tprov2: TEdit;
    Label7: TLabel;
    SpeedButton3: TSpeedButton;
    tprov3: TEdit;
    Label3: TLabel;
    SpeedButton4: TSpeedButton;
    tprov4: TEdit;
    Label8: TLabel;
    SpeedButton5: TSpeedButton;
    tprov5: TEdit;
    dbprov1: TDBEdit;
    dbprov2: TDBEdit;
    dbprov3: TDBEdit;
    dbprov4: TDBEdit;
    dbprov5: TDBEdit;
    QCotizacionCOT_CONCEPTO: TIBStringField;
    QCotizacionCOT_FECHA: TDateTimeField;
    QCotizacionCOT_NUMERO: TIntegerField;
    QCotizacionEMP_CODIGO: TIntegerField;
    QCotizacionSUP_CODIGO1: TIntegerField;
    QCotizacionSUP_CODIGO2: TIntegerField;
    QCotizacionSUP_CODIGO3: TIntegerField;
    QCotizacionSUP_CODIGO4: TIntegerField;
    QCotizacionSUP_CODIGO5: TIntegerField;
    QCotizacionUSU_CODIGO: TIntegerField;
    QDetalleCOT_NUMERO: TIntegerField;
    QDetalleDET_CANTIDAD: TFloatField;
    QDetalleDET_MEDIDA: TIBStringField;
    QDetalleDET_MEJORPRECIO: TFloatField;
    QDetalleDET_PRECIOSUP1: TFloatField;
    QDetalleDET_PRECIOSUP2: TFloatField;
    QDetalleDET_PRECIOSUP3: TFloatField;
    QDetalleDET_PRECIOSUP4: TFloatField;
    QDetalleDET_PRECIOSUP5: TFloatField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    QDetallePRO_CODIGO: TIntegerField;
    QDetallePRO_NOMBRE: TIBStringField;
    QDetallePRO_RFABRIC: TIBStringField;
    QDetallePRO_RORIGINAL: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QCotizacionNewRecord(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure QCotizacionBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure GridEnter(Sender: TObject);
    procedure GridColEnter(Sender: TObject);
    procedure btBuscaProdClick(Sender: TObject);
    procedure QDetallePRO_CODIGOChange(Sender: TField);
    procedure QDetallePRO_RFABRICChange(Sender: TField);
    procedure QDetallePRO_RORIGINALChange(Sender: TField);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure QDetalleBeforePost(DataSet: TDataSet);
    procedure btGRabarClick(Sender: TObject);
    procedure btBuscaClick(Sender: TObject);
    procedure btEliminaClick(Sender: TObject);
    procedure btLimpiarClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure QCotizacionSUP_CODIGO1GetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QCotizacionSUP_CODIGO2GetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QCotizacionSUP_CODIGO3GetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QCotizacionSUP_CODIGO4GetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QCotizacionSUP_CODIGO5GetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QDetalleDET_MEDIDAChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    Sec : integer;
    Ins, Totaliza : boolean;
    Total : Double;
    Procedure Totalizar;
    procedure buscacostos;
  end;

var
  frmCotMultiple: TfrmCotMultiple;

implementation

uses PVENTA33, RVENTA37, SIGMA01, SIGMA00, RVENTA67;

{$R *.DFM}

procedure TfrmCotMultiple.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmCotMultiple.FormPaint(Sender: TObject);
begin
  frmCotMultiple.top := 5;
  frmCotMultiple.left := 0;
end;

procedure TfrmCotMultiple.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10    then close;
  if key = vk_f2     then btGrabarClick(Self);
  if key = vk_f3     then btLimpiarClick(Self);
  if key = vk_f6     then btEliminaClick(Self);
end;

procedure TfrmCotMultiple.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmCotMultiple.QCotizacionNewRecord(DataSet: TDataSet);
var
  a : integer;
begin
  tprov1.Text := '';
  tprov2.Text := '';
  tprov3.Text := '';
  tprov4.Text := '';
  tprov5.Text := '';
  QCotizacionEMP_CODIGO.value := dm.vp_cia;
  QCotizacionCOT_FECHA.value  := date;
  QCotizacionUSU_CODIGO.value := dm.Usuario;

  QDetalle.close;
  QDetalle.Parameters.parambyname('emp').Value := dm.vp_cia;
  QDetalle.Parameters.parambyname('numero').Value := -1;
  QDetalle.open;
  QDetalle.disablecontrols;
  sec := 0;
  for a := 1 to 50 do
  begin
    QDetalle.append;
    QDetalleDET_SECUENCIA.value := a;
    QDetalle.post;
    QDetalle.next;
    Sec := Sec + 1;
  end;
  QDetalle.first;
  QDetalle.enablecontrols;
  Ins := False;
end;

procedure TfrmCotMultiple.FormActivate(Sender: TObject);
begin
  if not QCotizacion.active then
  begin
    QCotizacion.Parameters.parambyname('emp').Value := dm.vp_cia;
    QCotizacion.Parameters.parambyname('numero').Value := -1;
    QCotizacion.open;
    QCotizacion.insert;
  end;
end;

procedure TfrmCotMultiple.QCotizacionBeforePost(DataSet: TDataSet);
begin
  if QCotizacion.state = dsinsert then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select isnull(max(cot_numero),0) as maximo');
    dm.Query1.sql.add('from cotizacion_multiple');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.open;
    QCotizacionCOT_NUMERO.value := dm.Query1.fieldbyname('maximo').asinteger + 1;
  end;
end;

procedure TfrmCotMultiple.FormCreate(Sender: TObject);
var
  a : integer;
begin
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

  if dm.QParametrosPAR_FACMEDIDA.Value <> 'True' then
  begin
     Grid.Columns[3].Destroy;
     Grid.Columns[1].Width := Grid.Columns[1].Width + 30;
  end;

end;

procedure TfrmCotMultiple.GridEnter(Sender: TObject);
begin
  Grid.SelectedIndex := 0;
end;

procedure TfrmCotMultiple.GridColEnter(Sender: TObject);
begin
  if Grid.SelectedIndex = 1 then
    Grid.SelectedIndex := Grid.SelectedIndex + 1;
end;

procedure TfrmCotMultiple.btBuscaProdClick(Sender: TObject);
begin
  application.createform(tfrmBuscaProducto, frmBuscaProducto);
  frmBuscaProducto.showmodal;
  if frmBuscaProducto.seleccion = 1 then
  begin
    QDetalle.Edit;
    if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
       QDetallePRO_CODIGO.value := frmBuscaProducto.QProductosPRO_CODIGO.value
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
       QDetallePRO_RFABRIC.value := frmBuscaProducto.QProductosPRO_RFABRIC.value
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
       QDetallePRO_RORIGINAL.value := frmBuscaProducto.QProductosPRO_RORIGINAL.value;
  end;
  frmBuscaProducto.release;
  Grid.setfocus;
end;

procedure TfrmCotMultiple.QDetallePRO_CODIGOChange(Sender: TField);
begin
  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
  begin
    if not QDetallePRO_CODIGO.isnull then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select pro_codigo, pro_nombre, pro_costo, pro_precio1,');
      dm.Query1.sql.add('pro_precio2, pro_precio3, pro_precio4, pro_servicio,');
      dm.Query1.sql.add('pro_roriginal, pro_rfabric, pro_itbis, pro_vence, pro_escala,');
      dm.Query1.sql.add('pro_costoempaque');
      dm.Query1.sql.add('from productos');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and pro_codigo = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.parambyname('cod').Value := QDetallePRO_CODIGO.value;
      dm.Query1.open;
      if dm.Query1.FieldByName('pro_servicio').AsString = 'True' then
      begin
        MessageDlg('NO PUEDE INCLUIR ESTE PRODUCTO, DEBIDO A QUE'+#13+
                   'ES UN SERVICIO',mtError,[mbok],0);
        QDetalle.Cancel;
        Grid.SelectedIndex := 0;
      end
      else
      begin
        QDetallePRO_RORIGINAL.value := dm.Query1.fieldbyname('pro_roriginal').asstring;
        QDetallePRO_RFABRIC.value   := dm.Query1.fieldbyname('pro_rfabric').asstring;
        QDetallePRO_NOMBRE.value    := dm.Query1.fieldbyname('pro_nombre').asstring;
        buscacostos;
      end;
    end;
  end;
end;

procedure TfrmCotMultiple.QDetallePRO_RFABRICChange(Sender: TField);
begin
  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
  begin
    if not QDetallePRO_RFABRIC.isnull then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select pro_codigo, pro_nombre, pro_costo, pro_precio1,');
      dm.Query1.sql.add('pro_precio2, pro_precio3, pro_precio4, pro_servicio,');
      dm.Query1.sql.add('pro_roriginal, pro_rfabric, pro_itbis, pro_vence, pro_escala,');
      dm.Query1.sql.add('pro_costoempaque');
      dm.Query1.sql.add('from productos ');
      dm.Query1.sql.add('where emp_codigo = :emp ');
      dm.Query1.sql.add('and pro_rfabric = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.parambyname('cod').Value := QDetallePRO_RFABRIC.value;
      dm.Query1.open;
      if dm.Query1.FieldByName('pro_servicio').AsString = 'True' then
      begin
        MessageDlg('NO PUEDE INCLUIR ESTE PRODUCTO, DEBIDO A QUE'+#13+
                   'ES UN SERVICIO',mtError,[mbok],0);
        QDetalle.Cancel;
        Grid.SelectedIndex := 0;
      end
      else
      begin
        QDetallePRO_CODIGO.value    := dm.Query1.fieldbyname('pro_codigo').asinteger;
        QDetallePRO_RORIGINAL.value := dm.Query1.fieldbyname('pro_roriginal').asstring;
        QDetallePRO_NOMBRE.value    := dm.Query1.fieldbyname('pro_nombre').asstring;
        buscacostos;
      end;
    end;
  end;
end;

procedure TfrmCotMultiple.QDetallePRO_RORIGINALChange(Sender: TField);
begin
  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
  begin
    if not QDetallePRO_RORIGINAL.isnull then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select pro_codigo, pro_nombre, pro_costo, pro_precio1,');
      dm.Query1.sql.add('pro_precio2, pro_precio3, pro_precio4, pro_servicio,');
      dm.Query1.sql.add('pro_roriginal, pro_rfabric, pro_itbis, pro_vence, pro_escala,');
      dm.Query1.sql.add('pro_costoempaque');
      dm.Query1.sql.add('from productos ');
      dm.Query1.sql.add('where emp_codigo = :emp ');
      dm.Query1.sql.add('and pro_roriginal = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.parambyname('cod').Value := QDetallePRO_RORIGINAL.value;
      dm.Query1.open;
      if dm.Query1.FieldByName('pro_servicio').AsString = 'True' then
      begin
        MessageDlg('NO PUEDE INCLUIR ESTE PRODUCTO, DEBIDO A QUE'+#13+
                   'ES UN SERVICIO',mtError,[mbok],0);
        QDetalle.Cancel;
        Grid.SelectedIndex := 0;
      end
      else
      begin
        QDetallePRO_CODIGO.value    := dm.Query1.fieldbyname('pro_codigo').asinteger;
        QDetallePRO_RFABRIC.value   := dm.Query1.fieldbyname('pro_rfabric').asstring;
        QDetallePRO_NOMBRE.value    := dm.Query1.fieldbyname('pro_nombre').asstring;
        buscacostos;
      end;
    end;
  end;
end;

procedure TfrmCotMultiple.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f4 then btBuscaProdClick(self);
end;

procedure TfrmCotMultiple.SpeedButton2Click(Sender: TObject);
begin
  Search.Query.clear;
  Search.Query.add('select sup_nombre, sup_codigo');
  Search.ResultField := 'sup_codigo';
  Search.Query.add('from proveedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.Query.add('and sup_Status = '+#39+'ACT'+#39);
  Search.Title := 'Listado de Proveedores';
  if Search.execute then
  begin
    QCotizacionSUP_CODIGO1.value := StrToInt(Search.ValueField);
    dbprov1.setfocus;
  end;
end;

procedure TfrmCotMultiple.QDetalleBeforePost(DataSet: TDataSet);
begin
  if trim(QDetalleDET_MEDIDA.Value) = '' then QDetalleDET_MEDIDA.Value := 'Und';
end;

procedure TfrmCotMultiple.btGRabarClick(Sender: TObject);
var
  a : integer;
begin
  if QCotizacionSUP_CODIGO1.IsNull then
  begin
    MessageDlg('DEBE ESPECIFICAR EL PRIMER PROVEEDOR',mtError,[mbok],0);
    dbprov1.SetFocus;
  end
  else if messagedlg('TODOS LOS DATOS ESTAN CORECTOS?',mtconfirmation,[mbyes,mbno],0)=mryes then
  begin
    QCotizacion.post;
    QCotizacion.UpdateBatch;

    QDetalle.disablecontrols;
    QDetalle.First;
    a := 0;
    while not QDetalle.eof do
    begin
      a := a + 1;
      QDetalle.Edit;
      QDetalleDET_SECUENCIA.value := a;
      QDetalleEMP_CODIGO.value    := dm.vp_cia;
      QDetalleCOT_NUMERO.value    := QCotizacionCOT_NUMERO.value;
      QDetalle.post;
      QDetalle.next;
    end;
    QDetalle.First;
    QDetalle.enablecontrols;
    QDetalle.UpdateBatch;

    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('delete from det_cotizacion_multiple where pro_Codigo is null');
    dm.Query1.sql.add('and emp_Codigo = :emp and cot_numero = :num');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('num').Value := QCotizacionCOT_NUMERO.value;
    dm.Query1.ExecSQL;

    if MessageDlg('SE HA GENERADO LA COTIZACION NUMERO '+inttostr(QCotizacionCOT_NUMERO.value)+#13+
                  'DESEA IMPRIMIRLA?',mtConfirmation,[mbyes,mbno],0) = mryes then
    begin
      Application.CreateForm(tRCotMultiple, RCotMultiple);
      RCotMultiple.QCotizacion.Parameters.ParamByName('emp').Value := dm.vp_cia;
      RCotMultiple.QCotizacion.Parameters.ParamByName('num').Value := QCotizacionCOT_NUMERO.Value;
      RCotMultiple.QCotizacion.Open;
      RCotMultiple.QDetalle.Open;
      RCotMultiple.PrinterSetup;
      RCotMultiple.Preview;
      RCotMultiple.Destroy;
    end;

    QCotizacion.Close;
    QCotizacion.Parameters.parambyname('numero').Value := -1;
    QCotizacion.open;
    DBEdit5.setfocus;
    QCotizacion.insert;
  end;
end;

procedure TfrmCotMultiple.btBuscaClick(Sender: TObject);
var
  a : integer;
begin
  Search.Query.clear;
  Search.AliasFields.clear;
  Search.Query.add('select cot_numero, cot_fecha, cot_concepto');
  Search.Query.add('from cotizacion_multiple');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.AliasFields.add('N�mero');
  Search.AliasFields.add('Fecha');
  Search.AliasFields.add('Concepto');
  Search.Title := 'Cotizaciones M�ltiples';
  Search.ResultField := 'cot_numero';
  if Search.execute then
  begin
    QCotizacion.close;
    QCotizacion.Parameters.parambyname('numero').Value := strtoint(Search.valuefield);
    QCotizacion.open;

    QDetalle.close;
    QDetalle.Parameters.parambyname('numero').Value := strtoint(Search.valuefield);
    QDetalle.open;
    
    QDetalle.disablecontrols;
    QDetalle.last;
    for a := QDetalleDET_SECUENCIA.value+1 to 50 do
    begin
      QDetalle.append;
      QDetalleDET_SECUENCIA.value := a;
      QDetalleEMP_CODIGO.Value    := dm.vp_cia;
      QDetalleCOT_NUMERO.value    := QCotizacionCOT_NUMERO.value;
      QDetalle.post;
      QDetalle.next;
    end;
    QDetalle.first;
    QDetalle.enablecontrols;

    QCotizacion.Edit;
    DBEdit5.SetFocus;
  end;
end;

procedure TfrmCotMultiple.Totalizar;
begin
end;

procedure TfrmCotMultiple.btEliminaClick(Sender: TObject);
begin
  if messagedlg('ELIMINAR LA LINEA?',mtconfirmation,[mbyes,mbno],0)=mryes then
    QDetalle.Delete;
  Grid.SetFocus;
end;

procedure TfrmCotMultiple.btLimpiarClick(Sender: TObject);
begin
  if messagedlg('DESEA CANCELAR ESTA COTIZACION?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QCotizacion.close;
    QCotizacion.Parameters.parambyname('numero').Value := -1;
    QCotizacion.open;
    DBEdit5.SetFocus;
    QCotizacion.insert;
  end
  else
    Grid.SetFocus;
end;

procedure TfrmCotMultiple.BitBtn6Click(Sender: TObject);
begin
  close;
end;

procedure TfrmCotMultiple.GridKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if uppercase(Grid.Columns[Grid.selectedindex].FieldName) <> 'DET_PRECIOSUP5' then
      Grid.selectedindex := Grid.selectedindex + 1
    else
    begin
      Grid.selectedindex := 0;
      QDetalle.Next;
    end;
  end;
  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_MEDIDA' then
  begin
    QDetalle.Edit;
    if uppercase(key) = 'E' then
      QDetalleDET_MEDIDA.Value := 'Emp'
    else if uppercase(key) = 'U' then
      QDetalleDET_MEDIDA.Value := 'Und';
  end;
end;

procedure TfrmCotMultiple.SpeedButton1Click(Sender: TObject);
begin
  Search.Query.clear;
  Search.Query.add('select sup_nombre, sup_codigo');
  Search.ResultField := 'sup_codigo';
  Search.Query.add('from proveedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.Query.add('and sup_Status = '+#39+'ACT'+#39);
  Search.Title := 'Listado de Proveedores';
  if Search.execute then
  begin
    QCotizacionSUP_CODIGO2.value := StrToInt(Search.ValueField);
    dbprov2.setfocus;
  end;
end;

procedure TfrmCotMultiple.SpeedButton3Click(Sender: TObject);
begin
  Search.Query.clear;
  Search.Query.add('select sup_nombre, sup_codigo');
  Search.ResultField := 'sup_codigo';
  Search.Query.add('from proveedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.Query.add('and sup_Status = '+#39+'ACT'+#39);
  Search.Title := 'Listado de Proveedores';
  if Search.execute then
  begin
    QCotizacionSUP_CODIGO3.value := StrToInt(Search.ValueField);
    dbprov3.setfocus;
  end;
end;

procedure TfrmCotMultiple.SpeedButton4Click(Sender: TObject);
begin
  Search.Query.clear;
  Search.Query.add('select sup_nombre, sup_codigo');
  Search.ResultField := 'sup_codigo';
  Search.Query.add('from proveedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.Query.add('and sup_Status = '+#39+'ACT'+#39);
  Search.Title := 'Listado de Proveedores';
  if Search.execute then
  begin
    QCotizacionSUP_CODIGO4.value := StrToInt(Search.ValueField);
    dbprov4.setfocus;
  end;
end;

procedure TfrmCotMultiple.SpeedButton5Click(Sender: TObject);
begin
  Search.Query.clear;
  Search.Query.add('select sup_nombre, sup_codigo');
  Search.ResultField := 'sup_codigo';
  Search.Query.add('from proveedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.Query.add('and sup_Status = '+#39+'ACT'+#39);
  Search.Title := 'Listado de Proveedores';
  if Search.execute then
  begin
    QCotizacionSUP_CODIGO5.value := StrToInt(Search.ValueField);
    dbprov5.setfocus;
  end;
end;

procedure TfrmCotMultiple.QCotizacionSUP_CODIGO1GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QCotizacionSUP_CODIGO1.IsNull then
  begin
    Text := IntToStr(QCotizacionSUP_CODIGO1.value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select sup_nombre from proveedores');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and sup_codigo = :sup');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.ParamByName('sup').Value := QCotizacionSUP_CODIGO1.value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
    begin
      tprov1.Text := '';
      MessageDlg('ESTE PROVEEDOR NO EXISTE',mtError,[mbok],0);
      QCotizacionSUP_CODIGO1.Clear;
      Abort;
    end
    else
      tprov1.Text := dm.Query1.FieldByName('sup_nombre').AsString;
  end;
end;

procedure TfrmCotMultiple.QCotizacionSUP_CODIGO2GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QCotizacionSUP_CODIGO2.IsNull then
  begin
    Text := IntToStr(QCotizacionSUP_CODIGO2.value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select sup_nombre from proveedores');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and sup_codigo = :sup');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.ParamByName('sup').Value := QCotizacionSUP_CODIGO2.value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
    begin
      tprov2.Text := '';
      MessageDlg('ESTE PROVEEDOR NO EXISTE',mtError,[mbok],0);
      QCotizacionSUP_CODIGO2.Clear;
      Abort;
    end
    else
      tprov2.Text := dm.Query1.FieldByName('sup_nombre').AsString;
  end;
end;

procedure TfrmCotMultiple.QCotizacionSUP_CODIGO3GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QCotizacionSUP_CODIGO3.IsNull then
  begin
    Text := IntToStr(QCotizacionSUP_CODIGO3.value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select sup_nombre from proveedores');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and sup_codigo = :sup');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.ParamByName('sup').Value := QCotizacionSUP_CODIGO3.value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
    begin
      tprov3.Text := '';
      MessageDlg('ESTE PROVEEDOR NO EXISTE',mtError,[mbok],0);
      QCotizacionSUP_CODIGO3.Clear;
      Abort;
    end
    else
      tprov3.Text := dm.Query1.FieldByName('sup_nombre').AsString;
  end;
end;

procedure TfrmCotMultiple.QCotizacionSUP_CODIGO4GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QCotizacionSUP_CODIGO4.IsNull then
  begin
    Text := IntToStr(QCotizacionSUP_CODIGO4.value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select sup_nombre from proveedores');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and sup_codigo = :sup');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.ParamByName('sup').Value := QCotizacionSUP_CODIGO4.value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
    begin
      tprov4.Text := '';
      MessageDlg('ESTE PROVEEDOR NO EXISTE',mtError,[mbok],0);
      QCotizacionSUP_CODIGO4.Clear;
      Abort;
    end
    else
      tprov4.Text := dm.Query1.FieldByName('sup_nombre').AsString;
  end;
end;

procedure TfrmCotMultiple.QCotizacionSUP_CODIGO5GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QCotizacionSUP_CODIGO5.IsNull then
  begin
    Text := IntToStr(QCotizacionSUP_CODIGO5.value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select sup_nombre from proveedores');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and sup_codigo = :sup');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.ParamByName('sup').Value := QCotizacionSUP_CODIGO5.value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
    begin
      tprov5.Text := '';
      MessageDlg('ESTE PROVEEDOR NO EXISTE',mtError,[mbok],0);
      QCotizacionSUP_CODIGO5.Clear;
      Abort;
    end
    else
      tprov5.Text := dm.Query1.FieldByName('sup_nombre').AsString;
  end;
end;

procedure TfrmCotMultiple.QDetalleDET_MEDIDAChange(Sender: TField);
begin
  if (not QDetalleDET_MEDIDA.IsNull) and (not QDetallePRO_CODIGO.IsNull) then
  begin
    buscacostos;
  end;
end;

procedure TfrmCotMultiple.buscacostos;
begin
  if (not QDetalleDET_MEDIDA.IsNull) and (not QDetallePRO_CODIGO.IsNull) then
  begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select * from PR_COTIZACIOM_MULTIPLE_COSTOS (:emp, :pro, :med, :sup1,');
    Query1.SQL.Add(':sup2, :sup3, :sup4, :sup5)');
    Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    Query1.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
    Query1.Parameters.ParamByName('med').Value  := QDetalleDET_MEDIDA.Value;
    Query1.Parameters.ParamByName('sup1').Value := QCotizacionSUP_CODIGO1.Value;
    Query1.Parameters.ParamByName('sup2').Value := QCotizacionSUP_CODIGO2.Value;
    Query1.Parameters.ParamByName('sup3').Value := QCotizacionSUP_CODIGO3.Value;
    Query1.Parameters.ParamByName('sup4').Value := QCotizacionSUP_CODIGO4.Value;
    Query1.Parameters.ParamByName('sup5').Value := QCotizacionSUP_CODIGO5.Value;
    Query1.Open;
    QDetalleDET_PRECIOSUP1.Value := Query1.fieldbyname('costo1').AsFloat;
    QDetalleDET_PRECIOSUP2.Value := Query1.fieldbyname('costo2').AsFloat;
    QDetalleDET_PRECIOSUP3.Value := Query1.fieldbyname('costo3').AsFloat;
    QDetalleDET_PRECIOSUP4.Value := Query1.fieldbyname('costo4').AsFloat;
    QDetalleDET_PRECIOSUP5.Value := Query1.fieldbyname('costo5').AsFloat;
  end;
end;

end.
