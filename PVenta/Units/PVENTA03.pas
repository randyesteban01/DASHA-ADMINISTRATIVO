unit PVENTA03;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, ComCtrls, Db,
  ActnList, ExtDlgs, jpeg,
  Provider, SqlExpr, DBClient, DBLocal, IBCustomDataSet, IBQuery,
  IBUpdateSQL, ADODB, QuerySearchDlgADO, Menus, ToolWin;

type
  TfrmEmpresas = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    dsEmpresas: TDataSource;
    Search: TQrySearchDlgADO;
    QEmpresas: TADOQuery;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    TabSheet2: TTabSheet;
    PopupMenu1: TPopupMenu;
    Quitarfoto1: TMenuItem;
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
    DBImage1: TDBImage;
    AgregaFoto1: TMenuItem;
    QEmpresasEMP_CODIGO: TIntegerField;
    QEmpresasEMP_DIRECCION: TStringField;
    QEmpresasEMP_EMAIL: TStringField;
    QEmpresasEMP_FAX: TStringField;
    QEmpresasEMP_LOCALIDAD: TStringField;
    QEmpresasEMP_NOMBRE: TStringField;
    QEmpresasEMP_RNC: TStringField;
    QEmpresasEMP_STATUS: TStringField;
    QEmpresasEMP_TELEFONO: TStringField;
    QEmpresasEMP_WEB: TStringField;
    QEmpresasEMP_CONSOLIDAR: TStringField;
    QEmpresasEMP_PUEDECONSOLIDAR: TStringField;
    QEmpresasEMP_LOGO: TBlobField;
    dlgOpenPic1: TOpenPictureDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dsEmpresasStateChange(Sender: TObject);
    procedure btPriorClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure QEmpresasAfterDelete(DataSet: TDataSet);
    procedure QEmpresasBeforePost(DataSet: TDataSet);
    procedure QEmpresasAfterPost(DataSet: TDataSet);
    procedure btNextClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QEmpresasNewRecord(DataSet: TDataSet);
    procedure Abrir1Click(Sender: TObject);
    procedure Quitarfoto1Click(Sender: TObject);
    procedure dsEmpresasDataChange(Sender: TObject; Field: TField);
    procedure QEmpresasAfterEdit(DataSet: TDataSet);
    procedure AgregaFoto1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Insertando : Boolean;
  end;

var
  frmEmpresas: TfrmEmpresas;

implementation

uses SIGMA00, SIGMA01;


{$R *.DFM}

procedure TfrmEmpresas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmEmpresas.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmEmpresas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmEmpresas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmEmpresas.dsEmpresasStateChange(Sender: TObject);
begin
  btInsert.enabled := dsEmpresas.State = dsbrowse;
  btEdit.enabled   := btInsert.enabled;
  btDelete.enabled := btInsert.enabled;
  btNext.enabled   := btInsert.enabled;
  btPrior.enabled  := btInsert.enabled;
  btPost.enabled   := not btInsert.enabled;
  btCancel.enabled := not btInsert.enabled;
  btFind.enabled   := btInsert.enabled;
  //Abrir1.Enabled   := not btInsert.Enabled;
  Quitarfoto1.Enabled := not btInsert.Enabled;
  DBedit1.Enabled  := dsEmpresas.State = dsInsert;
end;

procedure TfrmEmpresas.btPriorClick(Sender: TObject);
begin
  if not QEmpresas.bof then
    QEmpresas.prior;
end;

procedure TfrmEmpresas.btInsertClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QEmpresas.Insert;
end;

procedure TfrmEmpresas.btEditClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QEmpresas.edit;
end;

procedure TfrmEmpresas.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QEmpresas.delete;
end;

procedure TfrmEmpresas.btPostClick(Sender: TObject);
begin
  QEmpresas.post;
end;

procedure TfrmEmpresas.btCancelClick(Sender: TObject);
begin
  QEmpresas.cancel;
end;

procedure TfrmEmpresas.FormActivate(Sender: TObject);
begin
  if not QEmpresas.active then
     QEmpresas.open;
  frmMain.ExportXLS.Sheets[1].DataSet := QEmpresas;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmEmpresas.btFindClick(Sender: TObject);
begin
  if search.execute then
     QEmpresas.locate('emp_codigo',search.valuefield,[]);
end;

procedure TfrmEmpresas.BitBtn4Click(Sender: TObject);
begin
  QEmpresas.edit;
  QEmpresasEMP_LOGO.clear;
end;

procedure TfrmEmpresas.QEmpresasAfterDelete(DataSet: TDataSet);
begin
  QEmpresas.UpdateBatch;
end;

procedure TfrmEmpresas.QEmpresasBeforePost(DataSet: TDataSet);
begin
  if trim(QEmpresasEMP_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QEmpresas.State = dsInsert then
  begin
    if QEmpresasEMP_CODIGO.IsNull then
    begin
      dm.query1.close;
      dm.query1.sql.clear;
      dm.query1.sql.add('select isnull(max(emp_codigo),0) as maximo');
      dm.query1.sql.add('from empresas');
      dm.query1.open;
      QEmpresasEMP_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
    end;
  end;

end;

procedure TfrmEmpresas.QEmpresasAfterPost(DataSet: TDataSet);
begin
  QEmpresas.UpdateBatch;
  if Insertando then
  begin
    if QEmpresasEMP_CODIGO.Value > 1 then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('execute pr_copia_empresa :hasta, :usu');
      dm.Query1.Parameters.ParamByName('hasta').Value := QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('usu').Value   := dm.Usuario;
      dm.Query1.ExecSQL;
    end;
  end;
end;

procedure TfrmEmpresas.btNextClick(Sender: TObject);
begin
  if not QEmpresas.eof then
    QEmpresas.next;
end;

procedure TfrmEmpresas.FormCreate(Sender: TObject);
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

procedure TfrmEmpresas.QEmpresasNewRecord(DataSet: TDataSet);
begin
  QEmpresasEMP_STATUS.Value     := 'ACT';
  QEmpresasEMP_CONSOLIDAR.Value := 'False';
  QEmpresasEMP_PUEDECONSOLIDAR.Value := 'False';
  Insertando := True;
end;

procedure TfrmEmpresas.Abrir1Click(Sender: TObject);
begin
  if dlgOpenPic1.Execute then
    QEmpresasEMP_LOGO.Value := dlgOpenPic1.FileName;
end;

procedure TfrmEmpresas.Quitarfoto1Click(Sender: TObject);
begin
  QEmpresasEMP_LOGO.Clear;
end;

procedure TfrmEmpresas.dsEmpresasDataChange(Sender: TObject;
  Field: TField);
begin
  {if Trim(QEmpresasEMP_LOGO.Value) <> '' then
    Image1.Picture.LoadFromFile(QEmpresasEMP_LOGO.Value)
  else
    Image1.Picture := nil;}
end;

procedure TfrmEmpresas.QEmpresasAfterEdit(DataSet: TDataSet);
begin
  Insertando := False;
end;

procedure TfrmEmpresas.AgregaFoto1Click(Sender: TObject);
var
MS : TMemoryStream;
begin
if dlgOpenPic1.Execute then
begin
  MS := TMemoryStream.Create;
  MS.LoadFromFile(dlgOpenPic1.FileName);

  with dm.adoMultiUso do begin
    SQL.Clear;
    SQL.Add('update Empresas set EMP_LOGO = :logo Where emp_codigo = :id');

    Parameters.ParamByName('logo').LoadFromStream(MS,ftGraphic);
    Parameters.ParamByName('id').Value := QEmpresasEMP_CODIGO.value;
    ExecSQL;
    MS.Free;
  end; // del with
  end;
  if QEmpresas.State in [dsInsert,dsEdit] then
    QEmpresas.post;
end; // del procedure



end.
