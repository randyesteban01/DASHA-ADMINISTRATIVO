unit PVENTA06;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, IBCustomDataSet,
  IBUpdateSQL, IBQuery, ADODB, QuerySearchDlgADO, dxNavBar, dxNavBarCollns,
  cxClasses, dxNavBarBase, ComCtrls, ToolWin, ImgList, ActnList;

type
  TfrmAlmacenes = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    QAlmacen: TADOQuery;
    Search: TQrySearchDlgADO;
    dsAlmacen: TDataSource;
    QAlmacenEMP_CODIGO: TIntegerField;
    QAlmacenALM_CODIGO: TIntegerField;
    QAlmacenALM_EXISTNEG: TIBStringField;
    DBCheckBox1: TDBCheckBox;
    QAlmacenALM_NOMBRE: TIBStringField;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
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
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    ActionList1: TActionList;
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
    QAlmacenalm_medida: TStringField;
    DBRadioGroup1: TDBRadioGroup;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    QAlmacenGERENTE: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QAlmacenNewRecord(DataSet: TDataSet);
    procedure QAlmacenAfterPost(DataSet: TDataSet);
    procedure QAlmacenAfterDelete(DataSet: TDataSet);
    procedure QAlmacenBeforePost(DataSet: TDataSet);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsAlmacenStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    accion : integer;
  end;

var
  frmAlmacenes: TfrmAlmacenes;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmAlmacenes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmAlmacenes.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmAlmacenes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmAlmacenes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmAlmacenes.QAlmacenNewRecord(DataSet: TDataSet);
begin
  QAlmacenEMP_CODIGO.value := DM.vp_cia;
  QAlmacenALM_EXISTNEG.value := 'False';
  QAlmacenalm_medida.Value   := 'Und';
end;

procedure TfrmAlmacenes.QAlmacenAfterPost(DataSet: TDataSet);
begin
  QAlmacen.UpdateBatch;

  screen.Cursor := crHourGlass;
  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('execute pr_almacen_nuevo :emp, :alm');
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.parambyname('alm').Value := QAlmacenALM_CODIGO.value;
  dm.Query1.ExecSQL;

  screen.Cursor := crDefault;

end;

procedure TfrmAlmacenes.QAlmacenAfterDelete(DataSet: TDataSet);
begin
  QAlmacen.UpdateBatch;
end;

procedure TfrmAlmacenes.QAlmacenBeforePost(DataSet: TDataSet);
begin
  if trim(QAlmacenALM_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QAlmacen.State = dsInsert then
  begin
    accion := 1;
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(alm_codigo),0) as maximo');
    dm.query1.sql.add('from almacen');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    //dm.query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.query1.open;
    QAlmacenALM_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end
  else
    accion := 2;
end;

procedure TfrmAlmacenes.btPostClick(Sender: TObject);
begin
  QAlmacen.post;
end;

procedure TfrmAlmacenes.btCancelClick(Sender: TObject);
begin
  QAlmacen.cancel;
end;

procedure TfrmAlmacenes.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QAlmacen.delete;
end;

procedure TfrmAlmacenes.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QAlmacen.edit;
end;

procedure TfrmAlmacenes.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QAlmacen.insert;
end;

procedure TfrmAlmacenes.btFindClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select alm_nombre, alm_codigo');
  Search.query.add('from almacen');
  //Search.query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  if search.execute then
     QAlmacen.locate('alm_codigo',search.valuefield,[]);
end;

procedure TfrmAlmacenes.btpriorClick(Sender: TObject);
begin
  if not QAlmacen.bof then
    QAlmacen.prior;
end;

procedure TfrmAlmacenes.btnextClick(Sender: TObject);
begin
  if not QAlmacen.eof then
    QAlmacen.next;
end;

procedure TfrmAlmacenes.FormActivate(Sender: TObject);
begin
  if not QAlmacen.active then QAlmacen.open;
  frmMain.ExportXLS.FileName := 'Almacenes.xls';
  frmMain.ExportXLS.Sheets[1].DataSet := QAlmacen;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmAlmacenes.dsAlmacenStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsAlmacen.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmAlmacenes.FormCreate(Sender: TObject);
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

end.
