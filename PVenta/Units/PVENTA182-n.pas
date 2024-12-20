unit PVENTA182;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, IBCustomDataSet,
  IBUpdateSQL, IBQuery, ADODB, QuerySearchDlgADO, ComCtrls, ToolWin,
  ActnList, Grids, DBGrids;

type
  TfrmCajasIP = class(TForm)
    QCajas: TADOQuery;
    Search: TQrySearchDlgADO;
    dsCajas: TDataSource;
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
    DBGrid1: TDBGrid;
    QListado: TADOQuery;
    dsListado: TDataSource;
    QCajasip: TStringField;
    QCajascaja: TIntegerField;
    QCajasprimer_campo: TStringField;
    QCajasporciento: TBCDField;
    QCajasforma_numeracion: TIntegerField;
    QCajasncf_tarjeta: TStringField;
    QCajaspuerto: TStringField;
    QCajasprecio: TStringField;
    QCajasalm_codigo: TIntegerField;
    QCajasemp_codigo: TIntegerField;
    QListadoip: TStringField;
    QListadocaja: TIntegerField;
    QListadoprimer_campo: TStringField;
    QListadoporciento: TBCDField;
    QListadoforma_numeracion: TIntegerField;
    QListadoncf_tarjeta: TStringField;
    QListadopuerto: TStringField;
    QListadoprecio: TStringField;
    QListadoalm_codigo: TIntegerField;
    QListadoemp_codigo: TIntegerField;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBEdit8: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    QAlmacen: TADOQuery;
    QAlmacenalm_codigo: TIntegerField;
    QAlmacenalm_nombre: TStringField;
    QEmpresas: TADOQuery;
    QEmpresasemp_codigo: TIntegerField;
    QEmpresasemp_nombre: TStringField;
    dsAlmacen: TDataSource;
    dsEmpresas: TDataSource;
    QCajascodigo_abre_caja: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    QCajascuenta: TStringField;
    QCajaspuerto_display: TStringField;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBComboBox2: TDBComboBox;
    QCajasimprime_credito: TStringField;
    DBRadioGroup3: TDBRadioGroup;
    QCajasclave_empaque: TStringField;
    QCajasclave_temporal: TStringField;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    QCajasPrecio_Emp: TStringField;
    DBComboBox3: TDBComboBox;
    DBCheckBox4: TDBCheckBox;
    QCajasVerifica_Precio: TStringField;
    QCajasNombre: TStringField;
    Label12: TLabel;
    DBEdit1: TDBEdit;
    QListadoNombre: TStringField;
    QCajasTipo_Cuadre: TStringField;
    DBRadioGroup4: TDBRadioGroup;
    QCajasCuadrar_Empresa: TStringField;
    DBRadioGroup5: TDBRadioGroup;
    QCajasRedondea: TStringField;
    DBCheckBox2: TDBCheckBox;
    DBRadioGroup6: TDBRadioGroup;
    QCajaspregunta_imprimir: TStringField;
    DBEdit2: TDBEdit;
    btCuenta: TSpeedButton;
    tCuenta: TEdit;
    DBEdit95: TDBEdit;
    DBEdit96: TDBEdit;
    DBEdit97: TDBEdit;
    DBEdit98: TDBEdit;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    SpeedButton2: TSpeedButton;
    Edit2: TEdit;
    Edit3: TEdit;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Edit4: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QCajasNewRecord(DataSet: TDataSet);
    procedure QCajasAfterPost(DataSet: TDataSet);
    procedure QCajasAfterDelete(DataSet: TDataSet);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsCajasStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure QListadoNewRecord(DataSet: TDataSet);
    procedure DBEdit8DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    accion : integer;
  end;

var
  frmCajasIP: TfrmCajasIP;

implementation

uses SIGMA01, SIGMA00, Printers;


{$R *.DFM}

procedure TfrmCajasIP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmCajasIP.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCajasIP.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmCajasIP.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmCajasIP.QCajasNewRecord(DataSet: TDataSet);
begin
  QCajasRedondea.Value := 'False';
  QCajasCuadrar_Empresa.Value := 'T';
  QCajasEMP_CODIGO.value := dm.vp_cia;
  QCajascodigo_abre_caja.Value := 'chr(28)';
  QCajasimprime_credito.Value := 'True';
  QCajasclave_empaque.Value := 'False';
  QCajasclave_temporal.Value := 'False';
  QCajasTipo_Cuadre.Value := 'R';
  QCajaspregunta_imprimir.Value := 'N';
end;

procedure TfrmCajasIP.QCajasAfterPost(DataSet: TDataSet);
begin
  QCajas.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmCajasIP.QCajasAfterDelete(DataSet: TDataSet);
begin
  QCajas.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmCajasIP.btPostClick(Sender: TObject);
begin
  QCajas.post;
end;

procedure TfrmCajasIP.btCancelClick(Sender: TObject);
begin
  QCajas.cancel;
end;

procedure TfrmCajasIP.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QCajas.delete;
end;

procedure TfrmCajasIP.btEditClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit6.setfocus;
  QCajas.edit;
end;

procedure TfrmCajasIP.btInsertClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit6.setfocus;
  QCajas.insert;
end;

procedure TfrmCajasIP.btFindClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select caja, ip');
  Search.query.add('from cajas_ip');
  if search.execute then
     QCajas.locate('caja',search.valuefield,[]);
end;

procedure TfrmCajasIP.btpriorClick(Sender: TObject);
begin
  if not QCajas.bof then
    QCajas.prior;
end;

procedure TfrmCajasIP.btnextClick(Sender: TObject);
begin
  if not QCajas.eof then
    QCajas.next;
end;

procedure TfrmCajasIP.FormActivate(Sender: TObject);
begin
  if not QCajas.active then
  begin
    QAlmacen.Open;
    QEmpresas.Open;
    QCajas.open;
    QListado.Open;
  end;
  frmMain.ExportXLS.FileName := 'CajasIP.xls';
  frmMain.ExportXLS.Sheets[1].DataSet := QCajas;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmCajasIP.dsCajasStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsCajas.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmCajasIP.FormCreate(Sender: TObject);
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

procedure TfrmCajasIP.DBGrid1DblClick(Sender: TObject);
begin
  QCajas.locate('caja',QListadocaja.Value,[]);
  PageControl1.ActivePageIndex := 0;
end;

procedure TfrmCajasIP.QListadoNewRecord(DataSet: TDataSet);
begin
  QCajasforma_numeracion.Value := 0;
  QCajasncf_tarjeta.Value := 'C';
  QCajasPuerto.Value := 'PRN';
  QCajasPrecio.Value := 'Precio1';
  QCajasalm_codigo.Value := DBLookupComboBox1.KeyValue;
  QCajasemp_codigo.Value := DBLookupComboBox2.KeyValue;
end;

procedure TfrmCajasIP.DBEdit8DblClick(Sender: TObject);
begin
   ShowMessage('LAS IMPRESORAS INSTALADAS SON : '
    +#13+Printer.Printers.Text);
end;

end.
