unit RH31;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList,
  Grids, DBGrids, ExtDlgs, DateUtils, cxGraphics, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxDBEdit;

type
  TfrmEmpleados = class(TForm)
    QEmpleados: TADOQuery;
    dsEmpleados: TDataSource;
    Search: TQrySearchDlgADO;
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
    QEmpleadosemp_codigo: TIntegerField;
    QEmpleadosemp_numero: TIntegerField;
    QEmpleadossuc_codigo: TIntegerField;
    QEmpleadosemp_codigo_viejo: TStringField;
    QEmpleadosemp_edad: TIntegerField;
    QEmpleadosemp_nombres: TStringField;
    QEmpleadosemp_apellido_paterno: TStringField;
    QEmpleadosemp_apellido_materno: TStringField;
    QEmpleadossol_numero: TIntegerField;
    QEmpleadosemp_fecha_nacimiento: TDateTimeField;
    QEmpleadosemp_lugar_nacimiento: TStringField;
    QEmpleadospai_codigo: TIntegerField;
    QEmpleadosidi_codigo: TIntegerField;
    QEmpleadosemp_cedula: TStringField;
    QEmpleadosemp_pasaporte: TStringField;
    QEmpleadosest_codigo: TIntegerField;
    QEmpleadosemp_acta_nacimiento: TStringField;
    QEmpleadosemp_celular: TStringField;
    QEmpleadosemp_telefono1: TStringField;
    QEmpleadosemp_telefono2: TStringField;
    QEmpleadosemp_direccion: TMemoField;
    QEmpleadosemp_telefono_oficina: TStringField;
    QEmpleadosemp_foto: TStringField;
    QEmpleadosemp_fecha_entrada: TDateTimeField;
    QEmpleadosemp_status: TStringField;
    QEmpleadosemp_fecha_nombramiento: TDateTimeField;
    QEmpleadosniv_codigo: TIntegerField;
    QEmpleadospos_codigo: TIntegerField;
    QEmpleadoscla_codigo: TIntegerField;
    QEmpleadosemp_salario: TBCDField;
    QEmpleadosemp_salario_hora: TBCDField;
    QEmpleadosemp_cuenta_bancaria: TStringField;
    QEmpleadosban_codigo: TIntegerField;
    QEmpleadosemp_fecha_status: TDateTimeField;
    QEmpleadosemp_poncha: TStringField;
    QEmpleadostip_codigo: TIntegerField;
    QEmpleadosgru_codigo: TIntegerField;
    QEmpleadosemp_tarjeta: TStringField;
    QEmpleadosemp_forma_pago: TStringField;
    QEmpleadosemp_nivel_salarial: TIntegerField;
    QEmpleadosemp_numero_afiliado: TStringField;
    QEmpleadosemp_seguro_social: TStringField;
    QEmpleadosemp_titular: TStringField;
    QEmpleadosemp_licencia: TStringField;
    QEmpleadoscat_codigo: TIntegerField;
    QEmpleadosemp_licencia_vence: TDateTimeField;
    QEmpleadosemp_emer_nombre: TStringField;
    QEmpleadosemp_emer_telefono: TStringField;
    QEmpleadosemp_emer_direccion: TMemoField;
    QEmpleadosemp_emer_medico: TStringField;
    QEmpleadosemp_emer_telefono_medico: TStringField;
    QEmpleadosemp_emer_alergia: TMemoField;
    QEmpleadosemp_tipo_sangre: TStringField;
    QEmpleadosemp_diabetivo: TStringField;
    QEmpleadosemp_donante_activo: TStringField;
    QEmpleadosemp_dependiente_insulina: TStringField;
    TabControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label14: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    btpais: TSpeedButton;
    btidioma: TSpeedButton;
    btestcivil: TSpeedButton;
    Label33: TLabel;
    Label34: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    tpais: TEdit;
    DBEdit9: TDBEdit;
    tidioma: TEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    testcivil: TEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit15: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBComboBox7: TDBComboBox;
    TabSheet2: TTabSheet;
    DBGrid3: TDBGrid;
    Label35: TLabel;
    DBEdit5: TDBEdit;
    Label36: TLabel;
    DBEdit26: TDBEdit;
    Label17: TLabel;
    DBEdit27: TDBEdit;
    Label37: TLabel;
    DBEdit28: TDBEdit;
    btbuscarfoto: TSpeedButton;
    btverfoto: TSpeedButton;
    btsolicitud: TSpeedButton;
    OpenPictureDialog1: TOpenPictureDialog;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    dsSuc: TDataSource;
    Query1: TADOQuery;
    QEmpleadosemp_email: TStringField;
    QEmpleadosemp_sexo: TStringField;
    TabSheet3: TTabSheet;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    Label41: TLabel;
    DBCheckBox1: TDBCheckBox;
    Label42: TLabel;
    DBEdit16: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    QNiveles: TADOQuery;
    QNivelesemp_codigo: TIntegerField;
    QNivelesniv_codigo: TIntegerField;
    QNivelesniv_nombre: TStringField;
    dsNiveles: TDataSource;
    dsClasif: TDataSource;
    QClasif: TADOQuery;
    QClasifemp_codigo: TIntegerField;
    QClasifniv_nombre: TStringField;
    QClasifcla_nivel: TIntegerField;
    QPosicion: TADOQuery;
    dsPosicion: TDataSource;
    DBEdit18: TDBEdit;
    DBEdit20: TDBEdit;
    QBancos: TADOQuery;
    QBancosban_codigo: TIntegerField;
    QBancosban_nombre: TStringField;
    dsBancos: TDataSource;
    DBLookupComboBox5: TDBLookupComboBox;
    QEmpleadosemp_tipo_cuenta: TStringField;
    DBComboBox1: TDBComboBox;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    QTipoEmp: TADOQuery;
    QTipoEmptip_codigo: TIntegerField;
    QTipoEmptip_nombre: TStringField;
    dsTipoEmp: TDataSource;
    QGrupo: TADOQuery;
    QGrupogru_codigo: TIntegerField;
    QGrupogru_nombre: TStringField;
    dsGrupo: TDataSource;
    DBLookupComboBox7: TDBLookupComboBox;
    QTipoNomina: TADOQuery;
    QTipoNominatno_codigo: TIntegerField;
    QTipoNominatno_nombre: TStringField;
    dsTipoNomina: TDataSource;
    DBLookupComboBox8: TDBLookupComboBox;
    QEmpleadostno_codigo: TIntegerField;
    DBComboBox3: TDBComboBox;
    QEmpleadosemp_tipo_asalariado: TStringField;
    DBComboBox4: TDBComboBox;
    QNivelSalarial: TADOQuery;
    QNivelSalarialniv_codigo: TIntegerField;
    QNivelSalarialniv_nombre: TStringField;
    dsNivelSalarial: TDataSource;
    DBLookupComboBox9: TDBLookupComboBox;
    DBEdit23: TDBEdit;
    DBComboBox5: TDBComboBox;
    QEmpleadosemp_excluir_pago: TStringField;
    DBComboBox6: TDBComboBox;
    Label43: TLabel;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    btinsertnom: TSpeedButton;
    btdeletenom: TSpeedButton;
    Label44: TLabel;
    DBEdit29: TDBEdit;
    Label45: TLabel;
    TabSheet4: TTabSheet;
    QEmpleadosemp_salario_tesoreria: TStringField;
    QSucursalemp_codigo: TIntegerField;
    GroupBox1: TGroupBox;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    QCategoria: TADOQuery;
    QCategoriacat_codigo: TIntegerField;
    QCategoriacat_nombre: TStringField;
    DBEdit30: TDBEdit;
    DBLookupComboBox10: TDBLookupComboBox;
    DBEdit31: TDBEdit;
    dsCategoria: TDataSource;
    GroupBox2: TGroupBox;
    DBMemo2: TDBMemo;
    QEmpleadosemp_observacion: TMemoField;
    GroupBox3: TGroupBox;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBMemo3: TDBMemo;
    DBMemo4: TDBMemo;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    btestudios: TSpeedButton;
    btexperiencia: TSpeedButton;
    btdependientes: TSpeedButton;
    btpermisos: TSpeedButton;
    btlicencias: TSpeedButton;
    btausencias: TSpeedButton;
    bthabilidad: TSpeedButton;
    QListado: TADOQuery;
    QListadoemp_numero: TIntegerField;
    QListadosuc_nombre: TStringField;
    QListadoNombre: TStringField;
    QListadoemp_sexo: TStringField;
    QListadoemp_cedula: TStringField;
    QListadoemp_edad: TIntegerField;
    QListadoemp_fecha_entrada: TDateTimeField;
    QListadoemp_status: TStringField;
    QListadoemp_tarjeta: TStringField;
    dsListado: TDataSource;
    QTipoNominaEmp: TADOQuery;
    QTipoNominaEmptno_codigo: TIntegerField;
    QTipoNominaEmptno_nombre: TStringField;
    dsTipoNominaEmp: TDataSource;
    DBLookupListBox1: TDBLookupListBox;
    DBLookupListBox2: TDBLookupListBox;
    QNominaEmp: TADOQuery;
    QNominaEmptno_nombre: TStringField;
    dsNominaEmp: TDataSource;
    QNominaEmptno_codigo: TIntegerField;
    GroupBox4: TGroupBox;
    DBEdit37: TDBEdit;
    Label56: TLabel;
    QEmpleadosemp_sfs_padres: TIntegerField;
    QPosicionpos_codigo: TIntegerField;
    QPosicionpos_nombre: TStringField;
    QEmpleadosemp_salario_dia: TBCDField;
    QEmpleadosTiempoLabor: TStringField;
    DBText1: TDBText;
    btCuenta: TSpeedButton;
    Label19: TLabel;
    DBEdit17: TDBEdit;
    tCuenta: TEdit;
    QEmpleadoscat_cuenta: TStringField;
    DBEdit39: TDBEdit;
    tsPrecios: TTabSheet;
    Label24: TLabel;
    DBEdit19: TDBEdit;
    Label57: TLabel;
    DBEdit38: TDBEdit;
    Label58: TLabel;
    DBEdt_emp_salario_horasext: TDBEdit;
    DBEdt_emp_salario_horasnoct: TDBEdit;
    Label59: TLabel;
    Label60: TLabel;
    DBEdt_emp_salario_diasfer: TDBEdit;
    Label61: TLabel;
    QEmpleadosemp_tipo_doc: TStringField;
    QEmpleadosemp_salario_horasext: TCurrencyField;
    QEmpleadosemp_salario_horasnoct: TCurrencyField;
    QEmpleadosemp_salario_diasfer: TCurrencyField;
    cxComboBox1: TcxComboBox;
    QEmpleadosemp_fecha_salida: TDateField;
    Label62: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QEmpleadosAfterDelete(DataSet: TDataSet);
    procedure QEmpleadosAfterPost(DataSet: TDataSet);
    procedure QEmpleadosNewRecord(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsEmpleadosStateChange(Sender: TObject);
    procedure QEmpleadosBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btpaisClick(Sender: TObject);
    procedure btestcivilClick(Sender: TObject);
    procedure btidiomaClick(Sender: TObject);
    procedure btbuscarfotoClick(Sender: TObject);
    procedure btverfotoClick(Sender: TObject);
    procedure QEmpleadospai_codigoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QEmpleadosidi_codigoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QEmpleadosest_codigoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure btsolicitudClick(Sender: TObject);
    procedure QEmpleadosemp_fecha_nacimientoChange(Sender: TField);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure btestudiosClick(Sender: TObject);
    procedure btexperienciaClick(Sender: TObject);
    procedure btdependientesClick(Sender: TObject);
    procedure btpermisosClick(Sender: TObject);
    procedure btlicenciasClick(Sender: TObject);
    procedure btausenciasClick(Sender: TObject);
    procedure bthabilidadClick(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure btinsertnomClick(Sender: TObject);
    procedure DBLookupListBox1Click(Sender: TObject);
    procedure QEmpleadosAfterOpen(DataSet: TDataSet);
    procedure btdeletenomClick(Sender: TObject);
    procedure QEmpleadosemp_salarioChange(Sender: TField);
    procedure QEmpleadosCalcFields(DataSet: TDataSet);
    procedure btCuentaClick(Sender: TObject);
    procedure QEmpleadoscat_cuentaGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dsEmpleadosDataChange(Sender: TObject; Field: TField);
    procedure QEmpleadosAfterEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmpleados: TfrmEmpleados;

implementation

uses SIGMA01, SIGMA00, PVENTA161, RH32, RH33, RH34, RH35, RH36, RH37, RH38,
  Math;


{$R *.DFM}

procedure TfrmEmpleados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmEmpleados.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmEmpleados.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmEmpleados.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    if (ActiveControl.ClassType <> TDBGrid) and (ActiveControl.ClassType <> TDBMemo) then
    begin
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    end;
  end;
end;

procedure TfrmEmpleados.QEmpleadosAfterDelete(DataSet: TDataSet);
begin
  QEmpleados.UpdateBatch;
end;

procedure TfrmEmpleados.QEmpleadosAfterPost(DataSet: TDataSet);
begin
  QEmpleados.UpdateBatch;
  QListado.Close;
  QListado.Open;
  cxComboBox1.Properties.ReadOnly := True;
end;

procedure TfrmEmpleados.QEmpleadosNewRecord(DataSet: TDataSet);
begin
  QEmpleadosemp_codigo.value := dm.QEmpresasEMP_CODIGO.value;
  QEmpleadossuc_codigo.Value := QSucursalsuc_codigo.Value;
  QEmpleadosemp_status.Value := 'ACT';
  QEmpleadosemp_fecha_entrada.Value      := Date;
  QEmpleadosemp_fecha_nombramiento.Value := Date;
  QEmpleadosemp_fecha_status.Value       := Date;
  QEmpleadosemp_titular.Value            := 'True';
  QEmpleadosemp_seguro_social.Value      := 'No';
  cxComboBox1.Properties.ReadOnly := False;
end;

procedure TfrmEmpleados.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select emp_nombres, emp_apellido_paterno, emp_cedula, emp_numero');
  Search.Query.Add('from empleados');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  Search.ResultField := 'emp_numero';
  Search.Title := 'Empleados';
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Apellido');
  Search.AliasFields.Add('Cédula');
  Search.AliasFields.Add('Código');
  if search.execute then
  begin
    QEmpleados.Locate('emp_numero',StrToInt(Search.ValueField),[]);

    QNiveles.Close;
    QNiveles.Open;

    QClasif.Close;
    QClasif.Open;

    QPosicion.Close;
    QPosicion.Open;

    TabControl1.ActivePageIndex := 0;
  end;
end;

procedure TfrmEmpleados.btPostClick(Sender: TObject);
begin

if not QEmpleadosemp_fecha_salida.IsNull then
  QEmpleadosemp_status.Value := 'INA';

QEmpleados.post;
end;

procedure TfrmEmpleados.btCancelClick(Sender: TObject);
begin
  QEmpleados.cancel;
end;

procedure TfrmEmpleados.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QEmpleados.delete;
end;

procedure TfrmEmpleados.btEditClick(Sender: TObject);
begin
  TabControl1.ActivePageIndex := 0;
  DBEdit24.setfocus;
  QEmpleados.edit;
end;

procedure TfrmEmpleados.btInsertClick(Sender: TObject);
begin
  TabControl1.ActivePageIndex := 0;
  DBEdit24.setfocus;
  QEmpleados.insert;
end;

procedure TfrmEmpleados.btpriorClick(Sender: TObject);
begin
  if not QEmpleados.Bof then QEmpleados.prior;
end;

procedure TfrmEmpleados.btnextClick(Sender: TObject);
begin
  if not QEmpleados.eof then QEmpleados.next;
end;

procedure TfrmEmpleados.FormActivate(Sender: TObject);
begin
  if not QEmpleados.active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;

    QBancos.Open;
    QTipoEmp.Open;
    QTipoNomina.Open;
    QNiveles.Open;
    QNivelSalarial.Open;
    QClasif.Open;
    QPosicion.Open;
    QGrupo.Open;
    QCategoria.Open;
    QListado.Open;
    QNominaEmp.Open;
    QTipoNominaEmp.Open;
    QEmpleados.open;
  end;
  frmMain.ExportXLS.Sheets[1].DataSet := QEmpleados;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmEmpleados.dsEmpleadosStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsEmpleados.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  //btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
  btsolicitud.Enabled  := not btInsert.Enabled;
  btidioma.Enabled     := not btInsert.Enabled;
  btpais.Enabled       := not btInsert.Enabled;
  btestcivil.Enabled   := not btInsert.Enabled;
  btbuscarfoto.Enabled := not btInsert.Enabled;
  btverfoto.Enabled    := not btInsert.Enabled;
  btcuenta.Enabled    := not btInsert.Enabled;
end;

procedure TfrmEmpleados.QEmpleadosBeforePost(DataSet: TDataSet);
begin
  if (trim(QEmpleadosemp_nombres.value) = '') then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if (trim(QEmpleadosemp_apellido_materno.value) = '') AND
     (trim(QEmpleadosemp_apellido_paterno.value) = '') then
  begin
    showmessage('EL APELLIDO MATERNO / PATERNO NO PUEDE ESTAR EN BLANCO');
    DBEdit3.setfocus;
    abort;
  end;

  case cxComboBox1.ItemIndex of
  0:QEmpleadosemp_tipo_doc.Value := 'RN';
  1:QEmpleadosemp_tipo_doc.Value := 'CE';
  2:QEmpleadosemp_tipo_doc.Value := 'PS';
  end;

  if QEmpleados.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(emp_numero),0) as maximo');
    dm.query1.sql.add('from empleados');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QEmpleadosemp_numero.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmEmpleados.FormCreate(Sender: TObject);
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

procedure TfrmEmpleados.btpaisClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select pai_nacionalidad, pai_codigo');
  Search.query.add('from paises');
  Search.ResultField := 'pai_codigo';
  Search.Title := 'Países';
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Codigo');
  if search.execute then
  begin
     QEmpleadospai_codigo.Value := StrToInt(Search.ValueField);
     DBEdit8.SetFocus;
  end;
end;

procedure TfrmEmpleados.btestcivilClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select est_nombre, est_codigo');
  Search.query.add('from estado_civil');
  Search.ResultField := 'est_codigo';
  Search.Title := 'Estado cívil';
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Codigo');
  if search.execute then
  begin
     QEmpleadosest_codigo.Value := StrToInt(Search.ValueField);
     DBEdit12.SetFocus;
  end;
end;

procedure TfrmEmpleados.btidiomaClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select idi_nombre, idi_codigo');
  Search.query.add('from idiomas');
  Search.ResultField := 'idi_codigo';
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Codigo');
  Search.Title := 'Idiomas';
  if search.execute then
  begin
     QEmpleadosidi_codigo.Value := StrToInt(Search.ValueField);
     DBEdit9.SetFocus;
  end;
end;

procedure TfrmEmpleados.btbuscarfotoClick(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    QEmpleadosemp_foto.Value := OpenPictureDialog1.FileName;
    DBEdit27.SetFocus;
  end;
end;

procedure TfrmEmpleados.btverfotoClick(Sender: TObject);
begin
  Application.CreateForm(tfrmverfoto, frmverfoto);
  frmverfoto.Image1.Picture.LoadFromFile(QEmpleadosemp_foto.Value);
  frmverfoto.ShowModal;
  frmverfoto.Release;
end;

procedure TfrmEmpleados.QEmpleadospai_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QEmpleadospai_codigo.IsNull then
  begin
    Text := IntToStr(QEmpleadospai_codigo.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select pai_nacionalidad from paises');
    dm.Query1.SQL.Add('where pai_codigo = :pai');
    dm.Query1.Parameters.ParamByName('pai').Value := QEmpleadospai_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      tpais.Text := dm.Query1.FieldByName('pai_nacionalidad').AsString;
    end
    else
      tpais.Text := '';
  end
  else
    tpais.Text := '';
end;

procedure TfrmEmpleados.QEmpleadosidi_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QEmpleadosidi_codigo.IsNull then
  begin
    Text := IntToStr(QEmpleadosidi_codigo.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select idi_nombre from idiomas');
    dm.Query1.SQL.Add('where idi_codigo = :idi');
    dm.Query1.Parameters.ParamByName('idi').Value := QEmpleadosidi_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      tidioma.Text := dm.Query1.FieldByName('idi_nombre').AsString;
    end
    else
      tidioma.Text := '';
  end
  else
    tidioma.Text := '';
end;

procedure TfrmEmpleados.QEmpleadosest_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QEmpleadosest_codigo.IsNull then
  begin
    Text := IntToStr(QEmpleadosest_codigo.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select est_nombre from estado_civil');
    dm.Query1.SQL.Add('where est_codigo = :est');
    dm.Query1.Parameters.ParamByName('est').Value := QEmpleadosest_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      testcivil.Text := dm.Query1.FieldByName('est_nombre').AsString;
    end
    else
      testcivil.Text := '';
  end
  else
    testcivil.Text := '';
end;

procedure TfrmEmpleados.btsolicitudClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select sol_nombre, sol_apellido_paterno, sol_numero');
  Search.Query.Add('from solicitud_empleo');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  Search.ResultField := 'sol_numero';
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Apellido');
  Search.AliasFields.Add('Número');
  Search.Title := 'Solicitud de Empleo';
  if Search.execute then
  begin
    QEmpleadossol_numero.Value := StrToInt(Search.ValueField);

    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select sol_nombre, sol_apellido_materno, sol_apellido_paterno, sol_sexo,');
    Query1.SQL.Add('sol_fecha_nacimiento, sol_lugar_nacimiento, pai_codigo, idi_codigo, sol_cedula,');
    Query1.SQL.Add('sol_pasaporte, est_codigo, sol_telefono1, sol_telefono2, sol_direccion, sol_email,');
    Query1.SQL.Add('sol_emer_nombre, sol_emer_telefono, sol_emer_direccion, sol_telefono_medico, sol_medico,');
    Query1.SQL.Add('sol_emer_alergia, sol_tipo_sangre');
    Query1.SQL.Add('from solicitud_empleo where emp_codigo = :emp and sol_numero = :sol');
    Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    Query1.Parameters.ParamByName('sol').Value := QEmpleadossol_numero.Value;
    Query1.Open;

    QEmpleadosemp_nombres.Value          := Query1.FieldByName('sol_nombre').AsString;
    QEmpleadosemp_apellido_materno.Value := Query1.FieldByName('sol_apellido_materno').AsString;
    QEmpleadosemp_apellido_paterno.Value := Query1.FieldByName('sol_apellido_paterno').AsString;
    QEmpleadosemp_sexo.Value             := Query1.FieldByName('sol_sexo').AsString;
    QEmpleadosemp_fecha_nacimiento.Value := Query1.FieldByName('sol_fecha_nacimiento').AsDateTime;
    QEmpleadosemp_lugar_nacimiento.Value := Query1.FieldByName('sol_lugar_nacimiento').AsString;
    QEmpleadospai_codigo.Value           := Query1.FieldByName('pai_codigo').AsInteger;
    QEmpleadosidi_codigo.Value           := Query1.FieldByName('idi_codigo').AsInteger;
    QEmpleadosemp_cedula.Value           := Query1.FieldByName('sol_cedula').AsString;
    QEmpleadosemp_pasaporte.Value        := Query1.FieldByName('sol_pasaporte').AsString;
    QEmpleadosest_codigo.Value           := Query1.FieldByName('est_codigo').AsInteger;
    QEmpleadosemp_telefono1.Value        := Query1.FieldByName('sol_telefono1').AsString;
    QEmpleadosemp_telefono2.Value        := Query1.FieldByName('sol_telefono2').AsString;
    QEmpleadosemp_direccion.Value        := Query1.FieldByName('sol_direccion').Value;
    QEmpleadosemp_email.Value            := Query1.FieldByName('sol_email').AsString;
    QEmpleadosemp_emer_nombre.Value      := Query1.FieldByName('sol_emer_nombre').AsString;
    QEmpleadosemp_emer_telefono.Value    := Query1.FieldByName('sol_emer_telefono').AsString;
    QEmpleadosemp_emer_direccion.Value   := Query1.FieldByName('sol_emer_direccion').AsString;
    QEmpleadosemp_emer_medico.Value      := Query1.FieldByName('sol_medico').AsString;
    QEmpleadosemp_emer_telefono_medico.Value := Query1.FieldByName('sol_telefono_medico').AsString;
    QEmpleadosemp_emer_alergia.Value     := Query1.FieldByName('sol_emer_alergia').AsString;
    QEmpleadosemp_tipo_sangre.Value      := Query1.FieldByName('sol_tipo_sangre').AsString;
    DBEdit2.SetFocus;
  end;
end;

procedure TfrmEmpleados.QEmpleadosemp_fecha_nacimientoChange(
  Sender: TField);
begin
  if not QEmpleadosemp_fecha_nacimiento.IsNull then
  begin
    QEmpleadosemp_edad.Value := YearsBetween(QEmpleadosemp_fecha_nacimiento.Value,Date);
  end;
end;

procedure TfrmEmpleados.DBLookupComboBox3Click(Sender: TObject);
begin
  QPosicion.Close;
  QPosicion.Open;
end;

procedure TfrmEmpleados.DBLookupComboBox1Click(Sender: TObject);
begin
  QClasif.Close;
  QClasif.Open;
end;

procedure TfrmEmpleados.btestudiosClick(Sender: TObject);
begin
  Application.CreateForm(tfrmEmpleadosEstudios, frmEmpleadosEstudios);
  frmEmpleadosEstudios.empleado := QEmpleadosemp_numero.Value;
  frmEmpleadosEstudios.ShowModal;
  frmEmpleadosEstudios.Release;
end;

procedure TfrmEmpleados.btexperienciaClick(Sender: TObject);
begin
  Application.CreateForm(tfrmEmpleadosExperiencia, frmEmpleadosExperiencia);
  frmEmpleadosExperiencia.empleado := QEmpleadosemp_numero.Value;
  frmEmpleadosExperiencia.ShowModal;
  frmEmpleadosExperiencia.Release;
end;

procedure TfrmEmpleados.btdependientesClick(Sender: TObject);
begin
  Application.CreateForm(tfrmEmpleadosDependientes, frmEmpleadosDependientes);
  frmEmpleadosDependientes.empleado := QEmpleadosemp_numero.Value;
  frmEmpleadosDependientes.ShowModal;
  frmEmpleadosDependientes.Release;
end;

procedure TfrmEmpleados.btpermisosClick(Sender: TObject);
begin
  Application.CreateForm(tfrmEmpleadosPermisos, frmEmpleadosPermisos);
  frmEmpleadosPermisos.empleado := QEmpleadosemp_numero.Value;
  frmEmpleadosPermisos.ShowModal;
  frmEmpleadosPermisos.Release;
end;

procedure TfrmEmpleados.btlicenciasClick(Sender: TObject);
begin
  Application.CreateForm(tfrmEmpleadosLicencias, frmEmpleadosLicencias);
  frmEmpleadosLicencias.empleado := QEmpleadosemp_numero.Value;
  frmEmpleadosLicencias.ShowModal;
  frmEmpleadosLicencias.Release;
end;

procedure TfrmEmpleados.btausenciasClick(Sender: TObject);
begin
  Application.CreateForm(tfrmEmpleadosAusencias, frmEmpleadosAusencias);
  frmEmpleadosAusencias.empleado := QEmpleadosemp_numero.Value;
  frmEmpleadosAusencias.ShowModal;
  frmEmpleadosAusencias.Release;
end;

procedure TfrmEmpleados.bthabilidadClick(Sender: TObject);
begin
  Application.CreateForm(tfrmEmpleadosHabilidades, frmEmpleadosHabilidades);
  frmEmpleadosHabilidades.empleado := QEmpleadosemp_numero.Value;
  frmEmpleadosHabilidades.ShowModal;
  frmEmpleadosHabilidades.Release;
end;

procedure TfrmEmpleados.DBGrid3DblClick(Sender: TObject);
begin
  QEmpleados.Locate('emp_numero',QListadoemp_numero.Value,[]);

  QNiveles.Close;
  QNiveles.Open;

  QClasif.Close;
  QClasif.Open;

  QPosicion.Close;
  QPosicion.Open;

  TabControl1.ActivePageIndex := 0;
end;

procedure TfrmEmpleados.btinsertnomClick(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('insert into empleados_tipo_nomina');
  dm.Query1.SQL.Add('(emp_codigo, emp_numero, tno_codigo)');
  dm.Query1.SQL.Add('values (:emp, :num, :tno)');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('num').Value := QEmpleadosemp_numero.Value;
  dm.Query1.Parameters.ParamByName('tno').Value := DBLookupListBox1.KeyValue;
  dm.Query1.ExecSQL;

  QNominaEmp.Close;
  QNominaEmp.Open;
end;

procedure TfrmEmpleados.DBLookupListBox1Click(Sender: TObject);
begin
  if QNominaEmp.Locate('tno_codigo',QTipoNominaEmptno_codigo.Value,[]) then
    btinsertnom.Enabled := false
  else
    btinsertnom.Enabled := true;
end;

procedure TfrmEmpleados.QEmpleadosAfterOpen(DataSet: TDataSet);
begin
  if QNominaEmp.Locate('tno_codigo',QTipoNominaEmptno_codigo.Value,[]) then
    btinsertnom.Enabled := false
  else
    btinsertnom.Enabled := true;

cxComboBox1.Properties.ReadOnly := True;
end;

procedure TfrmEmpleados.btdeletenomClick(Sender: TObject);
begin
  if QNominaEmp.RecordCount > 0 then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('delete from empleados_tipo_nomina');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and emp_numero = :num');
    dm.Query1.SQL.Add('and tno_codigo = :tno');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('num').Value := QEmpleadosemp_numero.Value;
    dm.Query1.Parameters.ParamByName('tno').Value := DBLookupListBox2.KeyValue;
    dm.Query1.ExecSQL;

    QNominaEmp.Close;
    QNominaEmp.Open;

    if QNominaEmp.Locate('tno_codigo',QTipoNominaEmptno_codigo.Value,[]) then
      btinsertnom.Enabled := false
    else
      btinsertnom.Enabled := true;
  end;
end;

procedure TfrmEmpleados.QEmpleadosemp_salarioChange(Sender: TField);
begin
  if not QEmpleadosemp_salario.IsNull then
  begin
    QEmpleadosemp_salario_hora.Value := (QEmpleadosemp_salario.Value/23.83)/8;
    QEmpleadosemp_salario_dia.Value  := (QEmpleadosemp_salario.Value/23.83);
  end;
end;

procedure TfrmEmpleados.QEmpleadosCalcFields(DataSet: TDataSet);
var
  anos, meses : integer;
  lbano, lbmes : string;
begin
  if not QEmpleadosemp_fecha_entrada.IsNull then
  begin
    anos  := Trunc(MonthsBetween(Date,QEmpleadosemp_fecha_entrada.Value)/12);
    meses := MonthsBetween(Date,QEmpleadosemp_fecha_entrada.Value) - (12*anos);
    if anos = 1 then
      lbano := inttostr(anos)+' Año, '
    else if anos > 1 then
      lbano := inttostr(anos)+' Años, '
    else
      lbano := '';

    if meses = 1 then
      lbmes := inttostr(meses)+' mes'
    else if meses > 1 then
      lbmes := inttostr(meses)+' meses'
    else
      lbmes := '';

    QEmpleadosTiempoLabor.Value := lbano+lbmes;
  end;
end;

procedure TfrmEmpleados.btCuentaClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Cuenta');
  Search.query.clear;
  Search.query.add('select cat_nombre, cat_cuenta');
  Search.query.add('from contcatalogo');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catálogo de Cuentas';
  if search.execute then
  begin
     QEmpleadoscat_cuenta.Value := Search.ValueField;
     DBEdit17.SetFocus;
  end;
end;

procedure TfrmEmpleados.QEmpleadoscat_cuentaGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QEmpleadoscat_cuenta.IsNull then
  begin
    Text := QEmpleadoscat_cuenta.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and CAT_CUENTA = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cta').Value := QEmpleadoscat_cuenta.Value;
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

procedure TfrmEmpleados.dsEmpleadosDataChange(Sender: TObject;
  Field: TField);
begin
If QEmpleadosemp_tipo_doc.Value = 'RN' then
cxComboBox1.ItemIndex := 0;
If QEmpleadosemp_tipo_doc.Value = 'CE' then
cxComboBox1.ItemIndex := 1;
If QEmpleadosemp_tipo_doc.Value = 'PS' then
cxComboBox1.ItemIndex := 2;

end;

procedure TfrmEmpleados.QEmpleadosAfterEdit(DataSet: TDataSet);
begin
cxComboBox1.Properties.ReadOnly := False;
end;

end.
