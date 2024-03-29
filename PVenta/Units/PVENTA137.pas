unit PVENTA137;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, ComCtrls, Db,
  ActnList, ExtDlgs,
  Provider, SqlExpr, DBClient, DBLocal, IBCustomDataSet, IBQuery,
  IBUpdateSQL, ADODB, QuerySearchDlgADO, ToolWin;

type
  TfrmSucursales = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    dsSucursal: TDataSource;
    Search: TQrySearchDlgADO;
    OpenDLG: TOpenPictureDialog;
    QSucursal: TADOQuery;
    QSucursalEMP_CODIGO: TIntegerField;
    QSucursalSUC_DIRECCION: TStringField;
    QSucursalSUC_EMAIL: TStringField;
    QSucursalSUC_FAX: TStringField;
    QSucursalSUC_LOCALIDAD: TStringField;
    QSucursalSUC_NOMBRE: TStringField;
    QSucursalSUC_RNC: TStringField;
    QSucursalSUC_STATUS: TStringField;
    QSucursalSUC_TELEFONO: TStringField;
    QSucursalSUC_CODIGO: TIntegerField;
    QSucursalALM_CODIGO: TIntegerField;
    Label15: TLabel;
    dbAlm: TDBEdit;
    btalm: TSpeedButton;
    tAlmacen: TEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
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
    QSucursalSUC_GENERANCF: TStringField;
    DBCheckBox1: TDBCheckBox;
    LbLocSuc: TLabel;
    dbedtcont_numeroSucursal: TDBEdit;
    QSucursalcont_numeroSucursal: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dsSucursalStateChange(Sender: TObject);
    procedure btPriorClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure QSucursalAfterDelete(DataSet: TDataSet);
    procedure QSucursalBeforePost(DataSet: TDataSet);
    procedure QSucursalAfterPost(DataSet: TDataSet);
    procedure btNextClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QSucursalNewRecord(DataSet: TDataSet);
    procedure btalmClick(Sender: TObject);
    procedure QSucursalALM_CODIGOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSucursales: TfrmSucursales;

implementation

uses SIGMA00, SIGMA01, StdConvs;


{$R *.DFM}

procedure TfrmSucursales.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmSucursales.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmSucursales.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmSucursales.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmSucursales.dsSucursalStateChange(Sender: TObject);
begin
  btInsert.enabled := dsSucursal.State = dsbrowse;
  btEdit.enabled   := btInsert.enabled;
  btDelete.enabled := btInsert.enabled;
  btNext.enabled   := btInsert.enabled;
  btPrior.enabled  := btInsert.enabled;
  btPost.enabled   := not btInsert.enabled;
  btCancel.enabled := not btInsert.enabled;
  btFind.enabled   := btInsert.enabled;
end;

procedure TfrmSucursales.btPriorClick(Sender: TObject);
begin
  if not QSucursal.bof then
    QSucursal.prior;
end;

procedure TfrmSucursales.btInsertClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QSucursal.Insert;
end;

procedure TfrmSucursales.btEditClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QSucursal.edit;
end;

procedure TfrmSucursales.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QSucursal.delete;
end;

procedure TfrmSucursales.btPostClick(Sender: TObject);
begin
  QSucursal.post;
end;

procedure TfrmSucursales.btCancelClick(Sender: TObject);
begin
  QSucursal.cancel;
end;

procedure TfrmSucursales.FormActivate(Sender: TObject);
begin
  if not QSucursal.active then
     QSucursal.open;
  frmMain.ExportXLS.Sheets[1].DataSet := QSucursal;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmSucursales.btFindClick(Sender: TObject);
begin
  search.Query.Clear;
  if NOT dm.QParametrospar_banca_apuestas.Value = True then
  search.Query.Add('select suc_nombre, suc_codigo') ELSE
  search.Query.Add('select suc_nombre, suc_codigo, cont_numeroSucursal Localidad');
  search.Query.Add('from sucursales where emp_Codigo = '+dm.QEmpresasEMP_CODIGO.AsString);
  search.Title := 'Sucursales';
  search.ResultField := 'suc_codigo';
  if search.execute then
     QSucursal.locate('suc_codigo',search.valuefield,[]);
end;

procedure TfrmSucursales.QSucursalAfterDelete(DataSet: TDataSet);
begin
  QSucursal.UpdateBatch;
end;

procedure TfrmSucursales.QSucursalBeforePost(DataSet: TDataSet);
begin
  if trim(QSucursalSUC_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QSucursalALM_CODIGO.IsNull then
  begin
    showmessage('DEBE SELECCIONAR UN ALMACEN');
    dbAlm.setfocus;
    abort;
  end;
  if QSucursal.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(suc_codigo),0) as maximo');
    dm.query1.sql.add('from sucursales');
    dm.query1.open;
    QSucursalSUC_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmSucursales.QSucursalAfterPost(DataSet: TDataSet);
begin
  QSucursal.UpdateBatch;
end;

procedure TfrmSucursales.btNextClick(Sender: TObject);
begin
  if not QSucursal.eof then
    QSucursal.next;
end;

procedure TfrmSucursales.FormCreate(Sender: TObject);
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

procedure TfrmSucursales.QSucursalNewRecord(DataSet: TDataSet);
begin
  QSucursalSUC_GENERANCF.Value := 'True';
  QSucursalSUC_STATUS.Value := 'ACT';
  QSucursalEMP_CODIGO.Value := dm.vp_cia;
  if QSucursal.RecordCount = 0 then
  begin
    QSucursalSUC_DIRECCION.Value := dm.QEmpresasEMP_DIRECCION.Value;
    QSucursalSUC_LOCALIDAD.Value := dm.QEmpresasEMP_LOCALIDAD.Value;
    QSucursalSUC_NOMBRE.Value    := dm.QEmpresasEMP_NOMBRE.Value;
    QSucursalSUC_TELEFONO.Value  := dm.QEmpresasEMP_TELEFONO.Value;
  end;
  QSucursalSUC_FAX.Value       := dm.QEmpresasEMP_FAX.Value;
  QSucursalSUC_EMAIL.Value     := dm.QEmpresasEMP_EMAIL.Value;
  QSucursalSUC_RNC.Value       := dm.QEmpresasEMP_RNC.Value;
end;

procedure TfrmSucursales.btalmClick(Sender: TObject);
begin
  search.Query.Clear;
  Search.Query.add('select alm_nombre, alm_codigo');
  Search.Query.add('from almacen');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));//inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.ResultField := 'alm_Codigo';
  Search.Title := 'Listado de Almacenes';
  if search.execute then
  begin
    QSucursalALM_CODIGO.Value := StrToint(Search.ValueField);
    dbAlm.SetFocus;
  end;
end;

procedure TfrmSucursales.QSucursalALM_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
 if not QSucursalALM_CODIGO.IsNull then
  begin
    Text := IntToStr(QSucursalALM_CODIGO.Value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select alm_codigo, alm_nombre, alm_medida');
    dm.Query1.sql.add('from almacen');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and alm_codigo = :alm');
    dm.Query1.Parameters.parambyname('alm').Value := QSucursalALM_CODIGO.Value;
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    if dm.Query1.RecordCount > 0 then
    begin
      tAlmacen.text := dm.Query1.fieldbyname('alm_nombre').asstring;
      Exit;
    end
    else
      BEGIN
      ShowMessage('ALMACEN INVALIDO.....');
      tAlmacen.text := '';
      dbAlm.Clear;
      dbAlm.SetFocus;
      Exit;
    end;
  end ELSE 
    tAlmacen.text := '';
end;

procedure TfrmSucursales.FormShow(Sender: TObject);
begin
if dm.QParametrospar_banca_apuestas.Value = True then begin
LbLocSuc.Visible := True;
dbedtcont_numeroSucursal.Visible := True;
end;
if not dm.QParametrospar_banca_apuestas.Value = True then begin
LbLocSuc.Visible := False;
dbedtcont_numeroSucursal.Visible := False;
end;

end;

end.
