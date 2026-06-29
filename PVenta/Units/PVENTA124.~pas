unit PVENTA124;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, IBCustomDataSet, IBQuery,
  IBUpdateSQL, ADODB, QuerySearchDlgADO, ComCtrls, ToolWin, ActnList,
  Grids, DBGrids;

type
  TfrmCentroCosto = class(TForm)
    QCentro: TADOQuery;
    dsCentros: TDataSource;
    Search: TQrySearchDlgADO;
    QCentroCAT_CUENTA: TIBStringField;
    QCentroCEN_CODIGO: TIntegerField;
    QCentroCEN_NOMBRE: TIBStringField;
    QCentroEMP_CODIGO: TIntegerField;
    ActionList2: TActionList;
    btPrior: TAction;
    btNext: TAction;
    btInsert: TAction;
    btEdit: TAction;
    btDelete: TAction;
    btPost: TAction;
    btCancel: TAction;
    btFind: TAction;
    btPrint: TAction;
    btClose: TAction;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton13: TToolButton;
    ToolButton12: TToolButton;
    ToolButton14: TToolButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    QCentrocen_presupuesto: TStringField;
    QCentrocen_descripcion: TMemoField;
    QCentrocen_centro_padre: TIntegerField;
    QCentrocen_monto_presupuesto: TBCDField;
    QCentromon_codigo: TIntegerField;
    QCentrocen_monto_ejecutado: TBCDField;
    QCuentas: TADOQuery;
    dsCuentas: TDataSource;
    QCentrocen_referencia: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBMemo1: TDBMemo;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Action5: TAction;
    Action6: TAction;
    Action7: TAction;
    Action8: TAction;
    Action9: TAction;
    Action10: TAction;
    c_btprior: TAction;
    c_btnext: TAction;
    c_btinsert: TAction;
    c_btedit: TAction;
    c_btdelete: TAction;
    c_btpost: TAction;
    c_btcancel: TAction;
    CoolBar2: TCoolBar;
    ToolBar2: TToolBar;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    ToolButton20: TToolButton;
    ToolButton21: TToolButton;
    ToolButton22: TToolButton;
    ToolButton23: TToolButton;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBMemo2: TDBMemo;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    c_btfind: TAction;
    pncuentas: TPanel;
    Label7: TLabel;
    Panel3: TPanel;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    GridCuentas: TDBGrid;
    QSubCentro: TADOQuery;
    QSubCentroemp_codigo: TIntegerField;
    QSubCentrocen_codigo: TIntegerField;
    QSubCentrosub_secuencia: TIntegerField;
    QSubCentrosub_referencia: TStringField;
    QSubCentrosub_nombre: TStringField;
    QSubCentrosub_descripcion: TMemoField;
    dsSubCentro: TDataSource;
    QCuentasemp_codigo: TIntegerField;
    QCuentascen_codigo: TIntegerField;
    QCuentassub_secuencia: TIntegerField;
    QCuentascat_cuenta: TStringField;
    QCuentascat_nombre: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QCentroNewRecord(DataSet: TDataSet);
    procedure QCentroAfterDelete(DataSet: TDataSet);
    procedure QCentroAfterPost(DataSet: TDataSet);
    procedure QCentroBeforePost(DataSet: TDataSet);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btPriorClick(Sender: TObject);
    procedure btNextClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsCentrosStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btCuentaClick(Sender: TObject);
    procedure btcentroClick(Sender: TObject);
    procedure btdelcuentaClick(Sender: TObject);
    procedure btfindcuentaClick(Sender: TObject);
    procedure GridCuentasKeyPress(Sender: TObject; var Key: Char);
    procedure GridCuentasColEnter(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure QCuentasNewRecord(DataSet: TDataSet);
    procedure QCuentasAfterPost(DataSet: TDataSet);
    procedure QCuentasAfterDelete(DataSet: TDataSet);
    procedure c_btinsertExecute(Sender: TObject);
    procedure c_bteditExecute(Sender: TObject);
    procedure c_btpostExecute(Sender: TObject);
    procedure c_btcancelExecute(Sender: TObject);
    procedure c_btdeleteExecute(Sender: TObject);
    procedure c_btfindExecute(Sender: TObject);
    procedure QSubCentroNewRecord(DataSet: TDataSet);
    procedure QSubCentroBeforePost(DataSet: TDataSet);
    procedure dsSubCentroStateChange(Sender: TObject);
    procedure QSubCentroAfterPost(DataSet: TDataSet);
    procedure QCuentascat_cuentaChange(Sender: TField);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure GridCuentasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QSubCentroAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCentroCosto: TfrmCentroCosto;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmCentroCosto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmCentroCosto.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCentroCosto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmCentroCosto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    if (ActiveControl.ClassType <> TDBMemo) and (ActiveControl.ClassType <> TDBGrid) then
    begin
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    end;
  end;
end;

procedure TfrmCentroCosto.QCentroNewRecord(DataSet: TDataSet);
begin
  QCentroEMP_CODIGO.value := dm.vp_cia;
  QCentrocen_presupuesto.Value := 'False';
  QCentrocen_monto_presupuesto.Value := 0;
  QCentrocen_monto_ejecutado.Value := 0;
end;

procedure TfrmCentroCosto.QCentroAfterDelete(DataSet: TDataSet);
begin
  QCentro.UpdateBatch;
end;

procedure TfrmCentroCosto.QCentroAfterPost(DataSet: TDataSet);
var
  a : integer;
begin
  QCentro.UpdateBatch;
  QCuentas.DisableControls;
  QCuentas.First;
  a := 1;
  while not QCuentas.Eof do
  begin
    QCuentas.Edit;
    QCuentasemp_codigo.Value := dm.vp_cia;
    QCuentascen_codigo.Value := QCentroCEN_CODIGO.Value;
    QCuentassub_secuencia.Value := a;
    QCuentas.Post;
    a := a + 1;
    QCuentas.Next;
  end;
  QCuentas.First;
  QCuentas.EnableControls;
  QCuentas.UpdateBatch;
end;

procedure TfrmCentroCosto.QCentroBeforePost(DataSet: TDataSet);
begin
  if trim(QCentroCEN_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    PageControl1.ActivePageIndex := 0;
    DBEdit2.setfocus;
    abort;
  end;
  if trim(QCentrocen_referencia.value) = '' then
  begin
    showmessage('EL CODIGO NO PUEDE ESTAR EN BLANCO');
    PageControl1.ActivePageIndex := 0;
    DBEdit1.setfocus;
    abort;
  end;
  if QCentro.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(cen_codigo),0) as maximo');
    dm.query1.sql.add('from centrocostos');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.query1.open;
    QCentroCEN_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmCentroCosto.btPostClick(Sender: TObject);
begin
  QCentro.post;
end;

procedure TfrmCentroCosto.btCancelClick(Sender: TObject);
begin
  QCentro.cancel;
end;

procedure TfrmCentroCosto.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?', mtConfirmation, [mbyes, mbno],0) = mryes then
    QCentro.delete;
end;

procedure TfrmCentroCosto.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QCentro.edit;
end;

procedure TfrmCentroCosto.btInsertClick(Sender: TObject);
begin
  DBEdit1.setfocus;
  QCentro.insert;
end;

procedure TfrmCentroCosto.btPriorClick(Sender: TObject);
begin
  if not QCentro.bof then
    QCentro.prior;
end;

procedure TfrmCentroCosto.btNextClick(Sender: TObject);
begin
  if not QCentro.eof then
    QCentro.next;
end;

procedure TfrmCentroCosto.btFindClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Codigo');
  Search.query.clear;
  Search.query.add('select cen_nombre, cen_referencia');
  Search.query.add('from centrocostos');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'cen_referencia';
  Search.Title := 'Centros de Costos';
  if search.execute then
     QCentro.locate('cen_referencia',search.valuefield,[]);
end;

procedure TfrmCentroCosto.FormActivate(Sender: TObject);
begin
  if not QCentro.active then
  begin
    QCentro.open;
    QCuentas.Open;
    QSubCentro.Open;
  end;
  frmMain.ExportXLS.Sheets[1].DataSet := QCentro;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmCentroCosto.dsCentrosStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsCentros.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
  GridCuentas.ReadOnly := not btInsert.Enabled;
  CoolBar2.Visible := btInsert.Enabled;
end;

procedure TfrmCentroCosto.FormCreate(Sender: TObject);
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
end;

procedure TfrmCentroCosto.btCuentaClick(Sender: TObject);
begin
  {Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Cuenta');
  Search.query.clear;
  Search.query.add('select cat_nombre, cat_cuenta');
  Search.query.add('from contcatalogo');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catalogo de Cuentas';
  if search.execute then
  begin
     QCentroCAT_CUENTA.Value := Search.ValueField;
     DBEdit34.SetFocus;
  end;}
end;

procedure TfrmCentroCosto.btcentroClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Codigo');
  Search.query.clear;
  Search.query.add('select cen_nombre, cen_codigo');
  Search.query.add('from centrocostos');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'cen_codigo';
  Search.Title := 'Centros de Costos';
  if search.execute then
  begin
     QCentrocen_centro_padre.Value := StrToInt(Search.ValueField);
     DBEdit3.SetFocus;
  end;
end;

procedure TfrmCentroCosto.btdelcuentaClick(Sender: TObject);
begin
  QCuentas.Delete;
  GridCuentas.SetFocus;
end;

procedure TfrmCentroCosto.btfindcuentaClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and cat_movimiento = '+#39+'S'+#39);
  Search.AliasFields.Add('Descripción');
  Search.AliasFields.Add('Cuenta');
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catalogo de Cuentas';
  if Search.execute then
  begin
    QCuentas.Edit;
    QCuentasCAT_CUENTA.Value := Search.ValueField;
  end;
  GridCuentas.SetFocus;
end;

procedure TfrmCentroCosto.GridCuentasKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if GridCuentas.SelectedIndex <> 2 then
      GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1
    else
    begin
      GridCuentas.SelectedIndex := 0;
      QCuentas.Append;
    end;
  end;
end;

procedure TfrmCentroCosto.GridCuentasColEnter(Sender: TObject);
begin
  if GridCuentas.SelectedIndex = 1 then
  begin
    GridCuentas.SelectedIndex := 2;
  end;
end;

procedure TfrmCentroCosto.FormPaint(Sender: TObject);
begin
  Left := 1;
  Top  := 2;
end;

procedure TfrmCentroCosto.QCuentasNewRecord(DataSet: TDataSet);
begin
  QCuentasemp_codigo.Value := dm.vp_cia;
  QCuentascen_codigo.Value := QCentroCEN_CODIGO.Value;
  QCuentassub_secuencia.Value := QSubCentrosub_secuencia.Value;
end;

procedure TfrmCentroCosto.QCuentasAfterPost(DataSet: TDataSet);
begin
  QCuentas.UpdateBatch;
end;

procedure TfrmCentroCosto.QCuentasAfterDelete(DataSet: TDataSet);
begin
  QCuentas.UpdateBatch;
end;

procedure TfrmCentroCosto.c_btinsertExecute(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
  DBEdit4.SetFocus;
  QSubCentro.Insert;
end;

procedure TfrmCentroCosto.c_bteditExecute(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
  DBEdit4.SetFocus;
  QSubCentro.Edit;
end;

procedure TfrmCentroCosto.c_btpostExecute(Sender: TObject);
begin
  QSubCentro.Post;
end;

procedure TfrmCentroCosto.c_btcancelExecute(Sender: TObject);
begin
  QSubCentro.Cancel;
end;

procedure TfrmCentroCosto.c_btdeleteExecute(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?', mtConfirmation, [mbyes, mbno],0) = mryes then
    QSubCentro.Delete;
end;

procedure TfrmCentroCosto.c_btfindExecute(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Codigo');
  Search.query.clear;
  Search.query.add('select sub_nombre, sub_referencia');
  Search.query.add('from CentroCostos_Hijos');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.query.add('and cen_codigo = '+IntToStr(QCentroCEN_CODIGO.Value));
  Search.ResultField := 'sub_referencia';
  Search.Title := 'SubCentros de Costos';
  if search.execute then
     QSubCentro.locate('sub_referencia',search.valuefield,[]);
end;

procedure TfrmCentroCosto.QSubCentroNewRecord(DataSet: TDataSet);
begin
  QSubCentroemp_codigo.Value := dm.vp_cia;
  QSubCentrocen_codigo.Value := QCentroCEN_CODIGO.Value;
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select isnull(max(sub_secuencia),0) as maximo');
  dm.Query1.SQL.Add('from CentroCostos_Hijos');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and cen_Codigo = :cen');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('cen').Value := QCentroCEN_CODIGO.Value;
  dm.Query1.Open;
  QSubCentrosub_referencia.Value := FormatFloat('000',dm.Query1.FieldByName('maximo').AsFloat+1);
end;

procedure TfrmCentroCosto.QSubCentroBeforePost(DataSet: TDataSet);
begin
  if trim(QSubCentrosub_nombre.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    PageControl1.ActivePageIndex := 0;
    DBEdit4.setfocus;
    abort;
  end;
  if trim(QSubCentrosub_referencia.value) = '' then
  begin
    showmessage('EL CODIGO NO PUEDE ESTAR EN BLANCO');
    PageControl1.ActivePageIndex := 0;
    DBEdit3.setfocus;
    abort;
  end;
  if QSubCentro.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(sub_secuencia),0) as maximo');
    dm.query1.sql.add('from CentroCostos_Hijos');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.sql.add('and cen_codigo = :cen');
    dm.query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.query1.Parameters.parambyname('cen').Value := QCentroCEN_CODIGO.Value;
    dm.query1.open;
    QSubCentrosub_secuencia.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmCentroCosto.dsSubCentroStateChange(Sender: TObject);
begin
  c_btinsert.enabled  := dsSubCentro.State = dsbrowse;
  c_btedit.enabled    := c_btinsert.enabled;
  c_btdelete.enabled  := c_btinsert.enabled;
  c_btpost.enabled    := not c_btinsert.enabled;
  c_btcancel.enabled  := not c_btinsert.enabled;
  c_btfind.enabled    := c_btinsert.enabled;
  pncuentas.Enabled   := c_btinsert.enabled;
end;

procedure TfrmCentroCosto.QSubCentroAfterPost(DataSet: TDataSet);
begin
  QSubCentro.UpdateBatch;
end;

procedure TfrmCentroCosto.QCuentascat_cuentaChange(Sender: TField);
begin
  if not QCuentascat_cuenta.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre, cat_origen, cat_movimiento, cat_maneja_centro from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value  := QCuentascat_cuenta.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
    begin
      MessageDlg('ESTA CUENTA NO EXISTE',mtError,[mbok],0);
      QCuentascat_cuenta.Clear;
      Abort;
    end
    else if dm.Query1.FieldByName('cat_movimiento').AsString = 'N' then
    begin
      MessageDlg('ESTA CUENTA NO ACEPTA MOVIMIENTO',mtError,[mbok],0);
      QCuentascat_cuenta.Clear;
      Abort;
    end
    else if dm.Query1.FieldByName('cat_maneja_centro').AsString <> 'S' then
    begin
      MessageDlg('ESTA CUENTA NO MANEJA CENTROS DE COSTO',mtError,[mbok],0);
      QCuentascat_cuenta.Clear;
      Abort;
    end
    else if dm.Query1.RecordCount > 0 then
    begin
      QCuentas.Edit;
      QCuentascat_nombre.Value := dm.Query1.FieldByName('cat_nombre').AsString;
      GridCuentas.SelectedIndex := 2;
    end;
  end;
end;

procedure TfrmCentroCosto.SpeedButton6Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and cat_movimiento = '+#39+'S'+#39);
  Search.Query.Add('and cat_maneja_centro = '+#39+'S'+#39);
  Search.AliasFields.Add('Descripción');
  Search.AliasFields.Add('Cuenta');
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catalogo de Cuentas';
  if Search.execute then
  begin
    QCuentas.Edit;
    QCuentascat_cuenta.Value := Search.ValueField;
    QCuentas.Post;
  end;
  GridCuentas.SetFocus;
end;

procedure TfrmCentroCosto.SpeedButton5Click(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?', mtConfirmation, [mbyes, mbno],0) = mryes then
    QCuentas.Delete;
end;

procedure TfrmCentroCosto.GridCuentasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
     if GridCuentas.SelectedIndex <> 1 then
        GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1
     else
     begin
       GridCuentas.SelectedIndex := 0;
       QCuentas.Append;
     end;
end;

procedure TfrmCentroCosto.QSubCentroAfterDelete(DataSet: TDataSet);
begin
  QSubCentro.UpdateBatch;
end;

end.
