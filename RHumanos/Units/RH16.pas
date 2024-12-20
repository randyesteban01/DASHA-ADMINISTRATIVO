unit RH16;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList,
  Grids, DBGrids;

type
  TfrmTipoHora = class(TForm)
    QTipos: TADOQuery;
    dsTipos: TDataSource;
    Search: TQrySearchDlgADO;
    QTiposemp_codigo: TIntegerField;
    QTipostho_codigo: TIntegerField;
    QTipostho_nombre: TStringField;
    QTipostho_porciento: TBCDField;
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
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    btinsertnom: TSpeedButton;
    btdeletenom: TSpeedButton;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    DBLookupListBox1: TDBLookupListBox;
    DBLookupListBox2: TDBLookupListBox;
    StaticText3: TStaticText;
    QNominaHora: TADOQuery;
    QNominaHoratno_nombre: TStringField;
    QNominaHoratno_codigo: TIntegerField;
    QListado: TADOQuery;
    dsListado: TDataSource;
    dsNominaHora: TDataSource;
    QTipoNomina: TADOQuery;
    QTipoNominatno_codigo: TIntegerField;
    QTipoNominatno_nombre: TStringField;
    dsTipoNomina: TDataSource;
    QListadotho_codigo: TIntegerField;
    QListadotho_nombre: TStringField;
    QTipostho_orden_nomina: TIntegerField;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QTiposAfterDelete(DataSet: TDataSet);
    procedure QTiposAfterPost(DataSet: TDataSet);
    procedure QTiposNewRecord(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsTiposStateChange(Sender: TObject);
    procedure QTiposBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btinsertnomClick(Sender: TObject);
    procedure btdeletenomClick(Sender: TObject);
    procedure DBLookupListBox1Click(Sender: TObject);
    procedure dsTipoNominaDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTipoHora: TfrmTipoHora;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmTipoHora.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmTipoHora.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmTipoHora.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmTipoHora.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmTipoHora.QTiposAfterDelete(DataSet: TDataSet);
begin
  QTipos.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmTipoHora.QTiposAfterPost(DataSet: TDataSet);
begin
  QTipos.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmTipoHora.QTiposNewRecord(DataSet: TDataSet);
begin
  QTiposEMP_CODIGO.value := dm.QEmpresasEMP_CODIGO.value;
end;

procedure TfrmTipoHora.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select tho_nombre, tho_codigo');
  Search.Query.Add('from tipo_horas_trabajadas');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  if search.execute then
     QTipos.locate('tho_codigo',search.valuefield,[]);
end;

procedure TfrmTipoHora.btPostClick(Sender: TObject);
begin
  QTipos.post;
end;

procedure TfrmTipoHora.btCancelClick(Sender: TObject);
begin
  QTipos.cancel;
end;

procedure TfrmTipoHora.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QTipos.delete;
end;

procedure TfrmTipoHora.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QTipos.edit;
end;

procedure TfrmTipoHora.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QTipos.insert;
end;

procedure TfrmTipoHora.btpriorClick(Sender: TObject);
begin
  if not QTipos.Bof then QTipos.prior;
end;

procedure TfrmTipoHora.btnextClick(Sender: TObject);
begin
  if not QTipos.eof then QTipos.next;
end;

procedure TfrmTipoHora.FormActivate(Sender: TObject);
begin
  if not QTipos.active then
  begin
    QTipos.open;
    QNominaHora.Open;
    QTipoNomina.Open;
    QListado.Open;
  end;
  frmMain.ExportXLS.Sheets[1].DataSet := QTipos;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmTipoHora.dsTiposStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsTipos.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmTipoHora.QTiposBeforePost(DataSet: TDataSet);
begin
  if trim(QTipostho_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QTipos.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(tho_codigo),0) as maximo');
    dm.query1.sql.add('from tipo_horas_trabajadas');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QTipostho_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmTipoHora.FormCreate(Sender: TObject);
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

procedure TfrmTipoHora.btinsertnomClick(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('insert into tipo_horas_nomina');
  dm.Query1.SQL.Add('(emp_codigo, tho_codigo, tno_codigo)');
  dm.Query1.SQL.Add('values (:emp, :tho, :tno)');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('tho').Value := QTipostho_codigo.Value;
  dm.Query1.Parameters.ParamByName('tno').Value := DBLookupListBox1.KeyValue;
  dm.Query1.ExecSQL;

  QNominaHora.Close;
  QNominaHora.Open;
end;

procedure TfrmTipoHora.btdeletenomClick(Sender: TObject);
begin
  if QNominaHora.RecordCount > 0 then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('delete from tipo_ingresos_nomina');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tho_codigo = :tho');
    dm.Query1.SQL.Add('and tno_codigo = :tno');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('tho').Value := QTipostho_codigo.Value;
    dm.Query1.Parameters.ParamByName('tno').Value := DBLookupListBox2.KeyValue;
    dm.Query1.ExecSQL;

    QNominaHora.Close;
    QNominaHora.Open;

    if QNominaHora.Locate('tno_codigo',QTipoNominatno_codigo.Value,[]) then
      btinsertnom.Enabled := false
    else
      btinsertnom.Enabled := true;
  end;
end;

procedure TfrmTipoHora.DBLookupListBox1Click(Sender: TObject);
begin
    if QNominaHora.Locate('tno_codigo',QTipoNominatno_codigo.Value,[]) then
      btinsertnom.Enabled := false
    else
      btinsertnom.Enabled := true;
end;

procedure TfrmTipoHora.dsTipoNominaDataChange(Sender: TObject;
  Field: TField);
begin
    if QNominaHora.Locate('tno_codigo',QTipoNominatno_codigo.Value,[]) then
      btinsertnom.Enabled := false
    else
      btinsertnom.Enabled := true;
end;

end.
