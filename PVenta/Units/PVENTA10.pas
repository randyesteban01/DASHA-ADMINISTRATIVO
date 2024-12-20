unit PVENTA10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, IBCustomDataSet, IBQuery,
  IBUpdateSQL, ADODB, QuerySearchDlgADO, ComCtrls, ToolWin, ActnList,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxCurrencyEdit, cxDBEdit;

type
  TfrmDeptos = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    QDeptos: TADOQuery;
    QDeptosEMP_CODIGO: TIntegerField;
    QDeptosDEP_CODIGO: TIntegerField;
    QDeptosDEP_NOMBRE: TIBStringField;
    dsDeptos: TDataSource;
    Search: TQrySearchDlgADO;
    QDeptosDEP_TIPO: TStringField;
    DBRadioGroup1: TDBRadioGroup;
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
    lbDepto: TLabel;
    btAlmacen: TSpeedButton;
    DBEdit12: TDBEdit;
    tAlmacen: TEdit;
    QDeptosALM_CODIGO: TIntegerField;
    QDeptosGER_CODIGO: TIntegerField;
    Label11: TLabel;
    btgerente: TSpeedButton;
    DBEdit23: TDBEdit;
    tgerente: TEdit;
    CEdt_Monto: TcxDBCurrencyEdit;
    lblMonto: TLabel;
    QDeptosDEP_MONTO: TCurrencyField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btPriorClick(Sender: TObject);
    procedure btNextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsDeptosStateChange(Sender: TObject);
    procedure QDeptosAfterDelete(DataSet: TDataSet);
    procedure QDeptosAfterPost(DataSet: TDataSet);
    procedure QDeptosNewRecord(DataSet: TDataSet);
    procedure QDeptosBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btAlmacenClick(Sender: TObject);
    procedure QDeptosALM_CODIGOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure btgerenteClick(Sender: TObject);
    procedure QDeptosGER_CODIGOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDeptos: TfrmDeptos;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmDeptos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmDeptos.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmDeptos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmDeptos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmDeptos.btPostClick(Sender: TObject);
begin
  QDeptos.post;
end;

procedure TfrmDeptos.btCancelClick(Sender: TObject);
begin
  QDeptos.cancel;
end;

procedure TfrmDeptos.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QDeptos.delete;
end;

procedure TfrmDeptos.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QDeptos.edit;
end;

procedure TfrmDeptos.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QDeptos.insert;;
end;

procedure TfrmDeptos.btFindClick(Sender: TObject);
begin
  Search.Title := 'Departamentos';
  Search.ResultField := 'dep_codigo';
  Search.query.clear;
  Search.query.add('select dep_nombre, dep_codigo');
  Search.query.add('from departamentos');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  //Search.query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.Value));
  if search.execute then
     QDeptos.locate('dep_codigo',search.valuefield,[]);
end;

procedure TfrmDeptos.btPriorClick(Sender: TObject);
begin
  if not QDeptos.bof then
    QDeptos.prior;
end;

procedure TfrmDeptos.btNextClick(Sender: TObject);
begin
  if not QDeptos.eof then
    QDeptos.next;
end;

procedure TfrmDeptos.FormActivate(Sender: TObject);
begin
  if not QDeptos.active then QDeptos.open;
  frmMain.ExportXLS.Sheets[2].DataSet := QDeptos;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := True;
end;

procedure TfrmDeptos.dsDeptosStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsDeptos.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
  btAlmacen.enabled := not btInsert.enabled;
  btgerente.enabled := not btInsert.enabled;
end;

procedure TfrmDeptos.QDeptosAfterDelete(DataSet: TDataSet);
begin
  QDeptos.UpdateBatch;
end;

procedure TfrmDeptos.QDeptosAfterPost(DataSet: TDataSet);
begin
  QDeptos.UpdateBatch;
end;

procedure TfrmDeptos.QDeptosNewRecord(DataSet: TDataSet);
begin
  QDeptosEMP_CODIGO.value := dm.vp_cia;
end;

procedure TfrmDeptos.QDeptosBeforePost(DataSet: TDataSet);
begin
  if trim(QDeptosDEP_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QDeptos.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(dep_codigo),0) as maximo');
    dm.query1.sql.add('from departamentos');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    //dm.query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.query1.open;
    QDeptosDEP_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmDeptos.FormCreate(Sender: TObject);
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

procedure TfrmDeptos.btAlmacenClick(Sender: TObject);
begin
  Search.Title := 'Almacenes';
  Search.ResultField := 'alm_codigo';
  Search.query.clear;
  Search.query.add('select alm_nombre, alm_codigo');
  Search.query.add('from almacen');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  //Search.query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  if search.execute then
     QDeptosALM_CODIGO.value := strtoint(search.valuefield);
end;

procedure TfrmDeptos.QDeptosALM_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QDeptosALM_CODIGO.isnull then
  begin
    Text := inttostr(QDeptosALM_CODIGO.value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select alm_nombre from almacen');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and alm_Codigo = :alm');
    //dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('alm').Value := QDeptosALM_CODIGO.value;
    dm.Query1.open;
    if dm.Query1.RecordCount > 0 then
    begin
      tAlmacen.text := dm.Query1.fieldbyname('alm_nombre').asstring;
    end
    else
      tAlmacen.text := '';
  end
  else
    tAlmacen.text := '';
end;

procedure TfrmDeptos.btgerenteClick(Sender: TObject);
begin
  Search.Title := 'Gerentes';
  Search.ResultField := 'ger_codigo';
  Search.query.Clear;
  Search.query.add('select ger_nombre, ger_codigo');
  Search.query.add('from gerentes');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  //Search.query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  if search.execute then
     QDeptosGER_CODIGO.value := strtoint(search.valuefield);
end;

procedure TfrmDeptos.QDeptosGER_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QDeptosGER_CODIGO.isnull then
  begin
    Text := IntToStr(QDeptosGER_CODIGO.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select ger_nombre');
    dm.Query1.SQL.Add('from gerentes');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ger_codigo = :ger');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.ParamByName('ger').Value := QDeptosGER_CODIGO.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tgerente.Text := dm.Query1.FieldByName('ger_nombre').AsString
    else
      tgerente.Text := '';
  end
  else
    tgerente.text := '';
end;

procedure TfrmDeptos.FormShow(Sender: TObject);
begin
if DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados' then begin
frmDeptos.Caption := 'Proyectos';
Label11.Caption := 'Ingenie.:';
DBRadioGroup1.Visible := False;
end;
end;

end.
