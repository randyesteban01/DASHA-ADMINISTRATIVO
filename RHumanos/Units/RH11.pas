unit RH11;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList;

type
  TfrmEstadoCivil = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    dsEstado: TDataSource;
    Search: TQrySearchDlgADO;
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
    QEstados: TADOQuery;
    QEstadosest_codigo: TIntegerField;
    QEstadosest_nombre: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QEstadosAfterDelete(DataSet: TDataSet);
    procedure QEstadosAfterPost(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsEstadoStateChange(Sender: TObject);
    procedure QEstadosBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstadoCivil: TfrmEstadoCivil;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmEstadoCivil.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmEstadoCivil.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmEstadoCivil.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmEstadoCivil.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmEstadoCivil.QEstadosAfterDelete(DataSet: TDataSet);
begin
  QEstados.UpdateBatch;
end;

procedure TfrmEstadoCivil.QEstadosAfterPost(DataSet: TDataSet);
begin
  QEstados.UpdateBatch;
end;

procedure TfrmEstadoCivil.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select est_nombre, est_codigo');
  Search.Query.Add('from estado_civil');
  if search.execute then
     QEstados.locate('est_codigo',search.valuefield,[]);
end;

procedure TfrmEstadoCivil.btPostClick(Sender: TObject);
begin
  QEstados.post;
end;

procedure TfrmEstadoCivil.btCancelClick(Sender: TObject);
begin
  QEstados.cancel;
end;

procedure TfrmEstadoCivil.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QEstados.delete;
end;

procedure TfrmEstadoCivil.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QEstados.edit;
end;

procedure TfrmEstadoCivil.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QEstados.insert;
end;

procedure TfrmEstadoCivil.btpriorClick(Sender: TObject);
begin
  if not QEstados.Bof then QEstados.prior;
end;

procedure TfrmEstadoCivil.btnextClick(Sender: TObject);
begin
  if not QEstados.eof then QEstados.next;
end;

procedure TfrmEstadoCivil.FormActivate(Sender: TObject);
begin
  if not QEstados.active then QEstados.open;
  frmMain.ExportXLS.Sheets[1].DataSet := QEstados;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmEstadoCivil.dsEstadoStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsEstado.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmEstadoCivil.QEstadosBeforePost(DataSet: TDataSet);
begin
  if trim(QEstadosest_nombre.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QEstados.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(est_codigo),0) as maximo');
    dm.query1.sql.add('from estado_civil');
    dm.query1.open;
    QEstadosest_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmEstadoCivil.FormCreate(Sender: TObject);
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
