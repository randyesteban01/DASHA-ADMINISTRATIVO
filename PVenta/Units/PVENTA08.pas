unit PVENTA08;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList;

type
  TfrmFormasPago = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    QFormas: TADOQuery;
    QFormasEMP_CODIGO: TIntegerField;
    QFormasFPA_CODIGO: TIntegerField;
    QFormasFPA_NOMBRE: TIBStringField;
    dsFormas: TDataSource;
    Search: TQrySearchDlgADO;
    QFormasFPA_ESPDESCRIP: TIBStringField;
    DBCheckBox1: TDBCheckBox;
    QFormasCAT_CUENTA: TIBStringField;
    QFormasFPA_PANTALLADEVOLVER: TIBStringField;
    DBCheckBox2: TDBCheckBox;
    btCuenta: TSpeedButton;
    Label3: TLabel;
    tcuenta: TEdit;
    DBEdit3: TDBEdit;
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
    QFormasfpa_sumaefectivocuadre: TStringField;
    DBCheckBox3: TDBCheckBox;
    QFormasfpa_actualizabalance: TStringField;
    DBCheckBox4: TDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QFormasAfterDelete(DataSet: TDataSet);
    procedure QFormasAfterPost(DataSet: TDataSet);
    procedure QFormasNewRecord(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsFormasStateChange(Sender: TObject);
    procedure QFormasBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btCuentaClick(Sender: TObject);
    procedure QFormasCAT_CUENTAGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFormasPago: TfrmFormasPago;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmFormasPago.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmFormasPago.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmFormasPago.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmFormasPago.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmFormasPago.QFormasAfterDelete(DataSet: TDataSet);
begin
  QFormas.UpdateBatch;
end;

procedure TfrmFormasPago.QFormasAfterPost(DataSet: TDataSet);
begin
  QFormas.UpdateBatch;
end;

procedure TfrmFormasPago.QFormasNewRecord(DataSet: TDataSet);
begin
  QFormasEMP_CODIGO.value := dm.vp_cia;
  QFormasFPA_ESPDESCRIP.value := 'False';
  QFormasFPA_PANTALLADEVOLVER.value := 'False';
  QFormasfpa_sumaefectivocuadre.Value := 'False';
  QFormasfpa_actualizabalance.Value := 'True';
end;

procedure TfrmFormasPago.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select fpa_nombre, fpa_codigo');
  Search.Query.Add('from formaspago');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'fpa_codigo';
  Search.Title := 'Formas de Pago';
  if search.execute then
     QFormas.locate('fpa_codigo',search.valuefield,[]);
end;

procedure TfrmFormasPago.btPostClick(Sender: TObject);
begin
  QFormas.post;
end;

procedure TfrmFormasPago.btCancelClick(Sender: TObject);
begin
  QFormas.cancel;
end;

procedure TfrmFormasPago.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QFormas.delete;
end;

procedure TfrmFormasPago.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QFormas.edit;
end;

procedure TfrmFormasPago.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QFormas.insert;
end;

procedure TfrmFormasPago.btpriorClick(Sender: TObject);
begin
  if not QFormas.Bof then QFormas.prior;
end;

procedure TfrmFormasPago.btnextClick(Sender: TObject);
begin
  if not QFormas.eof then QFormas.next;
end;

procedure TfrmFormasPago.FormActivate(Sender: TObject);
begin
  if not QFormas.active then QFormas.open;
  frmMain.ExportXLS.Sheets[1].DataSet := QFormas;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmFormasPago.dsFormasStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsFormas.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
  btCuenta.enabled    := not btInsert.enabled;
end;

procedure TfrmFormasPago.QFormasBeforePost(DataSet: TDataSet);
begin
  if trim(QFormasFPA_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QFormas.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(fpa_codigo),0) as maximo');
    dm.query1.sql.add('from formaspago');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.query1.open;
    QFormasFPA_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmFormasPago.FormCreate(Sender: TObject);
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

procedure TfrmFormasPago.btCuentaClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select cat_nombre, cat_cuenta');
  Search.query.add('from contcatalogo');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Cat�logo de Cuentas';
  if search.execute then
  begin
     QFormasCAT_CUENTA.Value := Search.ValueField;
     DBEdit3.SetFocus;
  end;
end;

procedure TfrmFormasPago.QFormasCAT_CUENTAGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QFormasCAT_CUENTA.IsNull then
  begin
    Text := QFormasCAT_CUENTA.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and CAT_CUENTA = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value := QFormasCAT_CUENTA.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      tCuenta.Text := dm.Query1.FieldByName('cat_nombre').AsString;
    end
    else
      tCuenta.Text := '';
  end
  else
    tCuenta.Text := '';
end;

end.
