unit PVENTA25;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, DB, IBCustomDataSet, IBQuery,
  IBUpdateSQL, Grids, DBGrids, ADODB, QuerySearchDlgADO, ComCtrls,
  DBGridObj, ToolEdit, CurrEdit, dxmdaset, Menus,Variants;

type
  TfrmDesembolsos = class(TForm)
    Panel2: TPanel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    QDesem: TADOQuery;
    QDesemCLI_CODIGO: TIntegerField;
    QDesemDES_BENEFICIARIO: TIBStringField;
    QDesemDES_CONCEPTO: TIBStringField;
    QDesemDES_FECHA: TDateTimeField;
    QDesemDES_MONTO: TFloatField;
    QDesemDES_NUMERO: TIntegerField;
    QDesemDES_STATUS: TIBStringField;
    QDesemDEV_NUMERO: TIntegerField;
    QDesemEMP_CODIGO: TIntegerField;
    QDesemUSU_CODIGO: TIntegerField;
    dsDesem: TDataSource;
    Search: TQrySearchDlgADO;
    QDesemCAJ_CODIGO: TIntegerField;
    GridForma: TDBGrid;
    QForma: TADOQuery;
    QFormaFPA_CODIGO: TIntegerField;
    QFormaFPA_NOMBRE: TIBStringField;
    dsForma: TDataSource;
    QFormasPago: TADOQuery;
    QFormasPagoForma: TStringField;
    dsFormaPago: TDataSource;
    QFormasPagoEMP_CODIGO: TIntegerField;
    QFormasPagoFOR_DESCRIPCION: TIBStringField;
    QFormasPagoFOR_MONTO: TFloatField;
    QFormasPagoFPA_CODIGO: TIntegerField;
    QFormasPagoDES_NUMERO: TIntegerField;
    btElimina: TBitBtn;
    QDetalle: TADOQuery;
    dsDetalle: TDataSource;
    QDetalleCAT_CUENTA: TIBStringField;
    QDetalleCAT_NOMBRE: TIBStringField;
    QDetalleDET_MONTO: TFloatField;
    QDetalleDET_ORIGEN: TIBStringField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    lbCR: TStaticText;
    lbDB: TStaticText;
    lbBAL: TStaticText;
    QDetalleDES_NUMERO: TIntegerField;
    QDesemDES_CONCEPTO2: TIBStringField;
    btGrabar: TBitBtn;
    btLimpiar: TBitBtn;
    BitBtn1: TBitBtn;
    DBEdit6: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    btCaja: TSpeedButton;
    Label6: TLabel;
    tCaja: TEdit;
    DBEdit7: TDBEdit;
    QDesemDES_CAJA: TIntegerField;
    QDesemSUC_CODIGO: TIntegerField;
    QFormasPagoSUC_CODIGO: TIntegerField;
    QDetallesuc_codigo: TIntegerField;
    Label14: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    btBuscaCta: TSpeedButton;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    btbenef: TSpeedButton;
    QDesemSUP_CODIGO: TIntegerField;
    QFacturas: TADOQuery;
    QFacturasemp_codigo: TIntegerField;
    QFacturassuc_codigo: TIntegerField;
    QFacturasdes_numero: TIntegerField;
    QFacturasdet_secuencia: TIntegerField;
    QFacturassup_codigo: TIntegerField;
    QFacturasfac_numero: TStringField;
    QFacturasdet_monto: TBCDField;
    QFacturasdet_descuento: TBCDField;
    QFacturasfac_saldo: TBCDField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    lbFacturas: TStaticText;
    GriFacturas: TDBGrid;
    dsFacturas: TDataSource;
    QDesemDES_DESCUENTO: TBCDField;
    Label2: TLabel;
    DBEdit8: TDBEdit;
    rgtipo: TDBRadioGroup;
    QDesemdes_tipo: TStringField;
    QFacturasfac_fecha: TDateTimeField;
    QFacturasfac_vence: TDateTimeField;
    QDesemdes_ncf: TStringField;
    QDesemrnc_empresa: TStringField;
    QDesemtip_codigo: TIntegerField;
    Label7: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label22: TLabel;
    btTipo: TSpeedButton;
    DBEdit21: TDBEdit;
    tTipo: TEdit;
    QDesememp_numero: TIntegerField;
    QDesemdes_gasto_menor: TStringField;
    DBCheckBox1: TDBCheckBox;
    SpeedButton1: TSpeedButton;
    spcentros: TSpeedButton;
    GridCuentas: TDBGridObj;
    QDesemdes_itbis: TBCDField;
    Label4: TLabel;
    DBEdit11: TDBEdit;
    ts1: TTabSheet;
    grp1: TGroupBox;
    LB_2: TLabel;
    edtTipo: TEdit;
    bBuscarTipo: TSpeedButton;
    edtTipoN: TEdit;
    LB_3: TLabel;
    edtNumero: TEdit;
    grp2: TGroupBox;
    DBGrid_1: TDBGrid;
    CEdt_MontoFact: TCurrencyEdit;
    CEdt_Porc: TCurrencyEdit;
    LB_4: TLabel;
    LB_5: TLabel;
    CEdt_TotalPag: TCurrencyEdit;
    LB_6: TLabel;
    MD_PagoComis: TdxMemData;
    MD_PagoComisfac_numero: TStringField;
    MD_PagoComisfac_monto: TCurrencyField;
    MD_PagoComisfac_porc: TCurrencyField;
    MD_PagoComisfac_comispago: TCurrencyField;
    DS_PagoComs: TDataSource;
    btn1: TBitBtn;
    QComisiones: TADOQuery;
    pm1: TPopupMenu;
    Editar1: TMenuItem;
    MD_PagoComisTipo: TStringField;
    MD_PagoComisTipoN: TStringField;
    QCentro: TADOQuery;
    QCentroemp_codigo: TIntegerField;
    QCentrocen_codigo: TIntegerField;
    QCentrodet_secuencia: TIntegerField;
    QCentrocen_nombre: TStringField;
    QCentrodet_monto: TCurrencyField;
    QCentrocat_cuenta: TStringField;
    QCentrocen_referencia: TStringField;
    QCentrosub_referencia: TStringField;
    QCentrosub_secuencia: TIntegerField;
    QCentrodes_numero: TIntegerField;
    QCentrosuc_codigo: TIntegerField;
    QVerificarFP: TADOQuery;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    IBStringField1: TIBStringField;
    FloatField1: TFloatField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    dsVerificarFP: TDataSource;
    QDesememp_rnc: TStringField;
    QDesemcli_rnc: TStringField;
    QDesemeNCF: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QDesemNewRecord(DataSet: TDataSet);
    procedure QDesemBeforePost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QFormasPagoAfterInsert(DataSet: TDataSet);
    procedure QFormasPagoAfterPost(DataSet: TDataSet);
    procedure QFormasPagoBeforeDelete(DataSet: TDataSet);
    procedure GridFormaColEnter(Sender: TObject);
    procedure GridFormaEnter(Sender: TObject);
    procedure GridFormaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
    procedure QDetalleCAT_CUENTAChange(Sender: TField);
    procedure GridCuentasColEnter(Sender: TObject);
    procedure GridCuentasEnter(Sender: TObject);
    procedure GridCuentasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btEliminaClick(Sender: TObject);
    procedure btBuscaCtaClick(Sender: TObject);
    procedure QDetalleAfterDelete(DataSet: TDataSet);
    procedure QDetalleAfterPost(DataSet: TDataSet);
    procedure QDetalleBeforePost(DataSet: TDataSet);
    procedure QDetalleNewRecord(DataSet: TDataSet);
    procedure btGrabarClick(Sender: TObject);
    procedure btLimpiarClick(Sender: TObject);
    procedure QDesemDES_NUMEROChange(Sender: TField);
    procedure BitBtn1Click(Sender: TObject);
    procedure btCajaClick(Sender: TObject);
    procedure QDesemDES_CAJAGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QDesemSUC_CODIGOChange(Sender: TField);
    procedure btbenefClick(Sender: TObject);
    procedure QFacturasdet_descuentoChange(Sender: TField);
    procedure QFacturasBeforeDelete(DataSet: TDataSet);
    procedure QFacturasAfterPost(DataSet: TDataSet);
    procedure dsDesemDataChange(Sender: TObject; Field: TField);
    procedure GriFacturasColEnter(Sender: TObject);
    procedure GriFacturasEnter(Sender: TObject);
    procedure GriFacturasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rgtipoClick(Sender: TObject);
    procedure QDesemDES_DESCUENTOChange(Sender: TField);
    procedure QDesemDES_MONTOChange(Sender: TField);
    procedure btTipoClick(Sender: TObject);
    procedure QDesemtip_codigoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure spcentrosClick(Sender: TObject);
    procedure GridCuentasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure QDesemrnc_empresaChange(Sender: TField);
    procedure QDesemdes_itbisChange(Sender: TField);
    procedure edtTipoChange(Sender: TObject);
    procedure edtTipoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bBuscarTipoClick(Sender: TObject);
    procedure edtNumeroChange(Sender: TObject);
    procedure CEdt_PorcExit(Sender: TObject);
    procedure CEdt_TotalPagExit(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MD_PagoComisBeforeDelete(DataSet: TDataSet);
    procedure Editar1Click(Sender: TObject);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure QCentroNewRecord(DataSet: TDataSet);
    procedure QCentroBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    SelCajero, Totaliza, Ins, vMod : boolean;
    Cajero, Caja : integer;
    Debitos, Creditos : Double;
    CtaBEnef, CtaCaja : String;
    procedure Totalizar;
    procedure Imp40Columnas;

    procedure TotalizaCuentas;
    Procedure TotalizaFac;
  end;

var
  frmDesembolsos: TfrmDesembolsos;

implementation

uses PVENTA37, RVENTA35, SIGMA01, SIGMA00, SIGMA08, Math,FacturacionElectronicaDGII_TLB;

{$R *.DFM}

procedure TfrmDesembolsos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SelCajero = true then
  begin
    if messagedlg('SALIR DE ESTA PANTALLA?',
    mtconfirmation, [mbyes,mbno],0) = mrno then
      abort
    else
      action := cafree;
  end
  else
    action := cafree;
end;

procedure TfrmDesembolsos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
  if key = vk_f2  then btGrabarClick(Self);
  if key = vk_f3  then btLimpiarClick(Self);
end;

procedure TfrmDesembolsos.QDesemNewRecord(DataSet: TDataSet);
begin
  PageControl1.ActivePageIndex := 0;

  Ins := True;
  lbCR.Caption  := '0.00';
  lbDB.Caption  := '0.00';
  lbBAL.Caption := '0.00';

  QDEsemdes_gasto_menor.Value := 'False';
  QDesemdes_tipo.Value   := 'GAS';
  QDesemDES_CAJA.Value   := Caja;
  QDesemSUC_CODIGO.Value := QSucursalsuc_codigo.Value;
  QDesemDES_STATUS.value := 'EMI';
  QDesemDES_FECHA.value  := date;
  QDesemEMP_CODIGO.value := dm.vp_cia;
  QDesemUSU_CODIGO.value := dm.Usuario;
  QDesemCAJ_CODIGO.value := Cajero;

  Totaliza := False;
  QFormasPago.Close;
  QFormasPago.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QFormasPago.Parameters.ParamByName('numero').Value := -1;
  QFormasPago.Parameters.ParamByName('suc').Value := -1;
  QFormasPago.Open;

  QDetalle.Close;
  QDetalle.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QDetalle.Parameters.ParamByName('num').Value := -1;
  QDetalle.Parameters.ParamByName('suc').Value := -1;
  QDetalle.Open;

  QFacturas.Close;
  QFacturas.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QFacturas.Parameters.ParamByName('des').Value := -1;
  QFacturas.Parameters.ParamByName('suc').Value := -1;
  QFacturas.Open;

  QCentro.Close;
  QCentro.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QCentro.Parameters.ParamByName('num').Value := -1;
  QCentro.Parameters.ParamByName('suc').Value := -1;
  QCentro.Open;
  
  QFormasPago.append;
  QFormasPagoEMP_CODIGO.value := dm.vp_cia;
  QFormasPagoFPA_CODIGO.value := dm.QParametrosPAR_FPADESEM.Value;
  QFormasPagoSUC_CODIGO.Value := QDesemSUC_CODIGO.Value;
  QFormasPago.post;
  QFormasPago.first;
  Totaliza := True;
  Ins := False;
end;

procedure TfrmDesembolsos.QDesemBeforePost(DataSet: TDataSet);
begin
  if rgtipo.ItemIndex = -1 then rgtipo.ItemIndex := 0;

  if (QDesem.State = dsInsert) and
  ((QDesemDES_NUMERO.IsNull) or (QDesemDES_NUMERO.value = 0)) then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select isnull(max(des_numero),0) as maximo');
    dm.Query1.sql.add('from desembolsos');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('suc').Value := QDesemSUC_CODIGO.Value;
    dm.Query1.open;
    QDesemDES_NUMERO.value := dm.Query1.fieldbyname('maximo').asinteger + 1;
  end;
  Caja := QDesemDES_CAJA.Value;
end;

procedure TfrmDesembolsos.FormActivate(Sender: TObject);
begin
  if SelCajero = False then
  begin
    Application.CreateForm(tfrmPideCajero, frmPideCajero);
    if frmPideCajero.ShowModal <> mrOk then
    begin
      frmPideCajero.release;
      close;
    end
    else
    begin
      SelCajero := True;
      Cajero := dm.Query1.fieldbyname('caj_codigo').asinteger;
      Caja   := dm.Query1.fieldbyname('fac_caja').asinteger;
      frmPideCajero.release;
    end;
    if not QDesem.active then
    begin
      QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
      QSucursal.Open;
      DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;

      QForma.Open;
      QDesem.Parameters.parambyname('emp').Value := dm.vp_cia;
      QDesem.Parameters.parambyname('numero').Value := -1;
      QDesem.Parameters.parambyname('suc').Value := -1;
      QDesem.open;
      QDesem.insert;
    end;
  end;
end;

procedure TfrmDesembolsos.FormCreate(Sender: TObject);
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

procedure TfrmDesembolsos.QFormasPagoAfterInsert(DataSet: TDataSet);
begin
  if Ins = false then QFormasPago.cancel;
end;

procedure TfrmDesembolsos.QFormasPagoAfterPost(DataSet: TDataSet);
begin
  if Totaliza = True then
     Totalizar;
end;

procedure TfrmDesembolsos.QFormasPagoBeforeDelete(DataSet: TDataSet);
begin
  abort;
end;

procedure TfrmDesembolsos.GridFormaColEnter(Sender: TObject);
begin
  if GridForma.selectedindex = 0 then
     GridForma.selectedindex := 1;
end;

procedure TfrmDesembolsos.GridFormaEnter(Sender: TObject);
begin
  GridForma.selectedindex := 1;
end;

procedure TfrmDesembolsos.GridFormaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    QFormasPago.edit;
    QFormasPago.post;
  end;
end;

procedure TfrmDesembolsos.Totalizar;
var
  Total : Double;
  punt : TBookmark;
begin
  if Totaliza then
  begin
    Total := 0;
    punt := QFormasPago.GetBookmark;
    QFormasPago.DisableControls;
    QFormasPago.first;
    while not QFormasPago.Eof do
    begin
      Total := Total + QFormasPagoFOR_MONTO.Value;

      QFormasPago.Next;
    end;
    QFormasPago.EnableControls;
    QFormasPago.GotoBookmark(punt);
    QDesemDES_MONTO.Value := Total;
  end;
end;

procedure TfrmDesembolsos.Imp40Columnas;
var
  arch, puertopeq : textfile;
  puerto : string;
begin
  if FileExists('puerto.txt') then
  begin
    assignfile(puertopeq, 'puerto.txt');
    reset(puertopeq);
    readln(puertopeq, puerto);
  end
  else
    puerto := 'PRN';

  closefile(puertopeq);

  if dm.QParametrosPAR_CAJA.Value = 'S' then
    dm.AbreCaja;

  AssignFile(arch, 'c:\imprime.bat');
  rewrite(arch);
  writeln(arch, 'type c:\t.txt > '+puerto);
  closefile(arch);

  AssignFile(arch, 'c:\t.txt');
  rewrite(arch);
  writeln(arch, dm.Centro(trim(dm.QEmpresasEMP_NOMBRE.value)));
  writeln(arch, dm.Centro(trim(DM.QEmpresasEMP_DIRECCION.value)));
  writeln(arch, dm.Centro(trim(DM.QEmpresasEMP_LOCALIDAD.value)));
  writeln(arch, dm.Centro('Telefono : '+trim(dm.QEmpresasEMP_TELEFONO.value)));
  writeln(arch, dm.Centro('RNC: '+dm.QEmpresasEMP_RNC.value));
  writeln(arch, ' ');
  writeln(arch, dm.Centro('D E S E M B O L S O   D E   C A J A'));
  writeln(arch, ' ');
  writeln(arch, 'Numero  : '+inttostr(QDesemDES_NUMERO.value));
  writeln(arch, 'Benef.  : '+QDesemDES_BENEFICIARIO.value);
  writeln(arch, 'Fecha   : '+DateToStr(QDesemDES_FECHA.Value));
  writeln(arch, 'Concepto: '+QdesemDES_CONCEPTO.value);
  writeln(arch, ' ');
  writeln(arch, 'MONTO   : '+Format('%n',[QDesemDES_MONTO.value]));

  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, dm.Centro('_____________________'));
  writeln(arch, dm.Centro('Recibido por'));
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  CloseFile(arch);
  winexec('c:\imprime.bat',0);
  RDesembolso.Destroy;
end;



procedure TfrmDesembolsos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     if (activecontrol.classtype <> tdbgrid) and (activecontrol.classtype <> TDBGridObj) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmDesembolsos.FormPaint(Sender: TObject);
begin
  frmDesembolsos.Top := 4;
  frmDesembolsos.Left := 2;
end;

procedure TfrmDesembolsos.QDetalleCAT_CUENTAChange(Sender: TField);
begin
  if not QDetalleCAT_CUENTA.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre, cat_origen, cat_movimiento from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value  := QDetalleCAT_CUENTA.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
    begin
      MessageDlg('ESTA CUENTA NO EXISTE',mtError,[mbok],0);
      QDetalleCAT_CUENTA.Clear;
      Abort;
    end
    else if dm.Query1.FieldByName('cat_movimiento').AsString = 'N' then
    begin
      MessageDlg('ESTA CUENTA NO ACEPTA MOVIMIENTO',mtError,[mbok],0);
      QDetalleCAT_CUENTA.Clear;
      Abort;
    end
    else if dm.Query1.RecordCount > 0 then
    begin
      QDetalle.Edit;
      QDetalleCAT_NOMBRE.Value := dm.Query1.FieldByName('cat_nombre').AsString;
      GridCuentas.SelectedIndex := 2;
    end;
  end;
end;

procedure TfrmDesembolsos.GridCuentasColEnter(Sender: TObject);
begin
  if GridCuentas.SelectedIndex = 2 then
    GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1;
end;

procedure TfrmDesembolsos.GridCuentasEnter(Sender: TObject);
begin
  GridCuentas.SelectedIndex := 1;
end;

procedure TfrmDesembolsos.GridCuentasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if GridCuentas.SelectedIndex = 3 then
  begin
    if key = 68 then
    begin
      QDetalle.Edit;
      QDetalleDET_ORIGEN.Value := 'Debito';
      GridCuentas.SelectedIndex := 4;
    end
    else if key = 67 then
    begin
      QDetalle.Edit;
      QDetalleDET_ORIGEN.Value := 'Credito';
      GridCuentas.SelectedIndex := 4;
    end;
  end;
  if key = vk_f4 then btBuscaCtaClick(Self);
  if key = vk_f5 then btEliminaClick(Self);
  if key = vk_insert then abort;
  if (ssCtrl in Shift) and (key = vk_delete) then abort;
  if key = vk_return then
     if GridCuentas.SelectedIndex <> 4 then
        GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1
     else
     begin
       GridCuentas.SelectedIndex := 1;
       QDetalle.Append;
     end;
end;

procedure TfrmDesembolsos.btEliminaClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR LA CUENTA?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QDetalle.Delete
  end;
  GridCuentas.setfocus;
end;

procedure TfrmDesembolsos.btBuscaCtaClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and cat_movimiento = '+#39+'S'+#39);
  Search.AliasFields.Add('Descripci�n');
  Search.AliasFields.Add('Cuenta');
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catalogo de Cuentas';
  if Search.execute then
  begin
    QDetalle.Edit;
    QDetalleCAT_CUENTA.Value := Search.ValueField;
  end;
end;

procedure TfrmDesembolsos.QDetalleAfterDelete(DataSet: TDataSet);
begin
  TotalizaCuentas;
end;

procedure TfrmDesembolsos.QDetalleAfterPost(DataSet: TDataSet);
begin
  if Totaliza = True then
     TotalizaCuentas;
end;

procedure TfrmDesembolsos.QDetalleBeforePost(DataSet: TDataSet);
begin
  if QDetalleCAT_NOMBRE.IsNull then QDetalle.Cancel;
end;

procedure TfrmDesembolsos.QDetalleNewRecord(DataSet: TDataSet);
begin
  QDetalleEMP_CODIGO.Value := dm.vp_cia;
end;

procedure TfrmDesembolsos.TotalizaCuentas;
var
  Punt : TBookMark;
begin
  if Totaliza = True then
  Begin
    Debitos  := 0;
    Creditos := 0;
    Punt := QDetalle.GetBookmark;
    QDetalle.DisableControls;
    QDetalle.First;
    while not QDetalle.Eof do
    begin
      if QDetalleDET_ORIGEN.Value = 'Debito' then
        Debitos  := Debitos  + StrToFloat(Format('%10.2f',[QDetalleDET_MONTO.Value]))
      else
        Creditos := Creditos + StrToFloat(Format('%10.2f',[QDetalleDET_MONTO.Value]));
      QDetalle.Next;
    end;
    QDetalle.GotoBookmark(Punt);
    QDetalle.EnableControls;
    lbCR.Caption  := Format('%n',[Creditos]);
    lbDB.Caption  := Format('%n',[Debitos]);
    lbBAL.Caption := Format('%n',[Debitos-Creditos]);
  end;
  if Trim(lbBAL.Caption) <> '0.00' then
    lbBAL.Font.Color := clRed
  else
    lbBAL.Font.Color := clBlack;
end;

procedure TfrmDesembolsos.btGrabarClick(Sender: TObject);
var
  a : integer;
  repetido : boolean;
  Servicio: FacturaElectronicaService;
  resultado: WideString;

begin
  repetido := false;

  if (not QDesemdes_ncf.IsNull) and (not QDesemrnc_empresa.IsNull) then
  begin
    //Verificando si el numero de comprobantes esta repetido
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select count(*) as cant from provfacturas f, proveedores p');
    dm.Query1.SQL.Add('where f.sup_codigo = p.sup_codigo and f.emp_codigo = p.emp_codigo');
    dm.Query1.SQL.Add('and f.emp_codigo = :emp');
    dm.Query1.SQL.Add('and p.sup_rnc = :rnc');
    dm.Query1.SQL.Add('and f.ncf = :ncf');
    dm.Query1.SQL.Add('and p.emp_codigo = :invemp');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    //dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('invemp').Value := dm.vp_cia;
    //dm.Query1.Parameters.ParamByName('invemp').Value := dm.vp_cia;//dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.ParamByName('rnc').Value := QDesemrnc_empresa.Value;
    dm.Query1.Parameters.ParamByName('ncf').Value := QDesemdes_ncf.Value;
    dm.Query1.Open;
    if dm.Query1.FieldByName('cant').AsInteger > 0 then
    begin
      repetido := true;
    end;
  end;
  //verificando si el cierre se hizo para esta fecha
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select cie_fecha from cierre');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and cie_fecha = :fec');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('fec').Value    := QDesemDES_FECHA.Value;
  dm.Query1.Open;
  if dm.Query1.RecordCount > 0 then
  begin
    MessageDlg('EL DESEMBOLSO NO PUEDE REALIZARSE, DEBIDO A QUE ESTE'+#13+
               'DIA FUE CERRADO.',mtError,[mbok],0);
    GridForma.setfocus;
  end
  else if lbBAL.Caption <> '0.00' then
  begin
    MessageDlg('LAS CUENTAS CONTABLES DE ESTA FACTURA'+#13+
               'NO ESTAN CUADRADAS',mtError,[mbok],0);
    GridCuentas.SetFocus;
  end
  else if QDesemDES_MONTO.value <= 0 then
  begin
    messagedlg('EL MONTO DEL DESEMBOLSO ES ERONEO',mterror,[mbok],0);
    DBEdit5.setfocus;
  end
  else if trim(DBEdit4.text) = '' then
  begin
    messagedlg('DEBE ESPECIFICAR EL CONCEPTO',mterror,[mbok],0);
    DBEdit4.setfocus;
  end
  else if trim(DBEdit2.text) = '' then
  begin
    messagedlg('DEBE ESPECIFICAR EL BENEFICIARIO',mterror,[mbok],0);
    DBEdit2.setfocus;
  end
  else if (not QDesemdes_ncf.IsNull) and (QDesemrnc_empresa.IsNull) then
  begin
    MessageDlg('DEBE ESPECIFICAR EL RNC DE LA EMPRESA.',mtError,[mbok],0);
    DBEdit10.SetFocus;
  end
  else if (QDesemdes_ncf.IsNull) and (not QDesemrnc_empresa.IsNull) then
  begin
    MessageDlg('DEBE ESPECIFICAR EL NUMERO DE COMPROBANTE.',mtError,[mbok],0);
    DBEdit9.SetFocus;
  end
  else if (DBCheckBox1.Checked) and (QDesemtip_codigo.IsNull) then
  begin
    MessageDlg('DEBE ESPECIFICAR EL TIPO DE BIEN Y SERVICO',mtError,[mbok],0);
    DBEdit21.SetFocus;
  end
  else if repetido then
  begin
    MessageDlg('ESTE COMPROBANTE ESTA REPETIDO',mtError,[mbok],0);
    DBEdit9.SetFocus;
  end
  else
  begin
    if messagedlg('TODOS LOS DATOS ESTAN CORECTOS?',mtconfirmation,[mbyes,mbno],0)=mryes then
    begin
    if (not QDesemdes_ncf.isnull) and (Trim(QDesemdes_ncf.AsString) <> '') and NOT (length(Trim(QDesemdes_ncf.AsString)) IN [19,11,13]) then
      begin
        messagedlg('DEBE DIGITAR UN NCF CORRECTO',mterror,[mbok],0);
        DBEdit9.Setfocus;
        Abort;
      end
      else
      QDesem.Post;
      QDesem.UpdateBatch;

      Totaliza := False;

      //Formas de Pago
      QFormasPago.DisableControls;
      QFormasPago.First;
      while not QFormasPago.Eof do
      begin
        QFormasPago.Edit;
        QFormasPagoEMP_CODIGO.Value := dm.vp_cia;
        QFormasPagoDES_NUMERO.Value := QDesemDES_NUMERO.Value;
        QFormasPagoSUC_CODIGO.Value := QDesemSUC_CODIGO.Value;
        if QFormasPagoFOR_MONTO.IsNull then QFormasPagoFOR_MONTO.Value := 0;
        QFormasPago.Post;
        QFormasPago.Next;
      end;
      QFormasPago.EnableControls;
      QFormasPago.UpdateBatch;

      //Cuentas
      QDetalle.DisableControls;
      QDetalle.First;
      a := 0;
      while not QDetalle.Eof do
      begin
        a := a + 1;
        QDetalle.Edit;
        QDetalleDET_SECUENCIA.Value := a;
        QDetalleEMP_CODIGO.Value := dm.vp_cia;
        QDetalleDES_NUMERO.Value := QDesemDES_NUMERO.Value;
        QDetalleSUC_CODIGO.Value := QDesemSUC_CODIGO.Value;
        QDetalle.Post;
        QDetalle.Next;
      end;
      QDetalle.EnableControls;
      QDetalle.UpdateBatch;

      //Facturas
      QFacturas.DisableControls;
      QFacturas.First;
      a := 0;
      while not QFacturas.Eof do
      begin
        a := a + 1;
        QFacturas.Edit;
        QFacturasEMP_CODIGO.Value := dm.vp_cia;
        QFacturasDES_NUMERO.Value := QDesemDES_NUMERO.Value;
        QFacturasDET_SECUENCIA.Value := a;
        QFacturasSUC_CODIGO.Value := QDesemSUC_CODIGO.Value;
        if QFacturasdet_descuento.IsNull then QFacturasdet_descuento.Value := 0;
        QFacturas.Post;
        QFacturas.Next;
      end;
      QFacturas.EnableControls;
      QFacturas.UpdateBatch;

      //COMISIONES
      MD_PagoComis.DisableControls;
      MD_PagoComis.First;
      a := 0;
      while not MD_PagoComis.Eof do
      begin
        a := a + 1;
        with QComisiones do begin
        Close;
        SQL.Clear;
        sql.Add('INSERT INTO PagoComis_Desembolso');
        SQL.Add('(emp_codigo, suc_codigo, des_numero, fac_numero, fac_monto, ');
        SQL.Add('fac_porc, fac_comispago, usu_codigo, FECHAC)');
        SQL.Add('VALUES (:emp_codigo, :suc_codigo, :des_numero, :fac_numero, :fac_monto, ');
        SQL.Add(':fac_porc, :fac_comispago, :usu_codigo, GETDATE())');
        Parameters.ParamByName('emp_codigo').Value    := dm.vp_cia;
        Parameters.ParamByName('suc_codigo').Value    := QDesemSUC_CODIGO.Value;
        Parameters.ParamByName('des_numero').Value    := QDesemDES_NUMERO.Value;
        Parameters.ParamByName('fac_numero').Value    := MD_PagoComisfac_numero.Value;
        Parameters.ParamByName('fac_monto').Value     := MD_PagoComisfac_monto.Value;
        Parameters.ParamByName('fac_porc').Value      := MD_PagoComisfac_porc.Value;
        Parameters.ParamByName('fac_comispago').Value := MD_PagoComisfac_comispago.Value;
        Parameters.ParamByName('usu_codigo').Value    := QDesemUSU_CODIGO.Value;
        ExecSQL;
        end;
        MD_PagoComis.Next;
      end;
      MD_PagoComis.First;
      MD_PagoComis.EnableControls;
      
      //Desembolsos
      QCentro.DisableControls;
      QCentro.First;
      a := 0;
      while not QCentro.Eof do
      begin
        a := a + 1;
        QCentro.Edit;
        QCentroEMP_CODIGO.Value := dm.vp_cia;
        QCentrodes_numero.Value := QDesemDES_NUMERO.Value;
        QCentroDET_SECUENCIA.Value := a;
        QCentro.Post;
        QCentro.Next;
      end;
      QCentro.EnableControls;
      QCentro.UpdateBatch;

      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('execute pr_graba_desembolso :emp, :suc, :num');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.ParamByName('num').Value := QDesemDES_NUMERO.Value;
      dm.Query1.Parameters.ParamByName('suc').Value := QDesemSUC_CODIGO.Value;
      dm.Query1.ExecSQL;

       if  dm.QParametrosUsa_FacturacionElectronica.Value  then
          begin
         if QDesemdes_gasto_menor.AsString='True'   then
         begin
          QDesem.Edit;
                  dm.Query1.close;
                  dm.Query1.sql.clear;
                  dm.Query1.sql.add('select emp_rnc');
                  dm.Query1.sql.add('from empresas');
                  dm.Query1.sql.add('where emp_codigo = :emp');
                  dm.Query1.Parameters.parambyname('emp').Value  := dm.vp_cia;
                  dm.Query1.open;
                  QDesememp_rnc.value := dm.Query1.fieldbyname('emp_rnc').AsString;

                  dm.Query1.close;
                  dm.Query1.sql.clear;
                  dm.Query1.sql.add('select cli_rnc');
                  dm.Query1.sql.add('from Clientes');
                  dm.Query1.sql.add('where cli_rnc = :sup');
                  dm.Query1.sql.add(' and emp_codigo = :emp');
                  dm.Query1.Parameters.parambyname('sup').Value  := QDesemCLI_CODIGO.Value;
                  dm.Query1.Parameters.parambyname('emp').Value  := dm.vp_cia;
                  dm.Query1.open;
                  QDesemcli_rnc.value := dm.Query1.fieldbyname('cli_rnc').AsString;

                  dm.Query1.close;
                  dm.Query1.sql.clear;
                  dm.Query1.sql.add('select eNCF');
                  dm.Query1.sql.add('from Desembolsos');
                  dm.Query1.sql.add('where emp_codigo = :emp');
                  dm.Query1.sql.add('and des_numero = :numero');
                  dm.Query1.sql.add('and suc_codigo = :suc');

                  dm.Query1.Parameters.parambyname('emp').Value    := QDesemEMP_CODIGO.value;
                  dm.Query1.Parameters.parambyname('suc').Value    := QDesemSUC_CODIGO.Value;
                  dm.Query1.Parameters.parambyname('numero').Value := QDesemDES_NUMERO.value;
                  dm.Query1.open;
                  QDesemeNCF.value := dm.Query1.fieldbyname('eNCF').AsString;

                  Servicio := CoFacturaElectronicaService.Create;
                      resultado := Servicio.EnviarGastosMenores(
                      IntToStr(QDesemEMP_CODIGO.Value),
                      IntToStr(QDesemSUC_CODIGO.Value),
                     '',
                      IntToStr(QDesemDES_NUMERO.Value),
                      QDesememp_rnc.Value,
                     '',
                      QDesemcli_rnc.Value,
                      '',
                      '' ,'43'
                    );
                    end;

          end;

      if MessageDlg('SE HA GENERADO EL DESEMBOLSO NUMERO '+inttostr(QDesemDES_NUMERO.value)+#13+
                    'DESEA IMPRIMIR ESTE DESEMBOLSO?',mtConfirmation,[mbyes,mbno],0) = mryes then
      begin
        if dm.QParametrosPAR_CAJA.Value = 'S' then
          dm.AbreCaja;
        Application.CreateForm(tRDesembolso, RDesembolso);
        RDesembolso.QDesem.Parameters.ParamByName('numero').Value := QDesemDES_NUMERO.Value;
        RDesembolso.QDesem.Parameters.ParamByName('suc').Value := QDesemSUC_CODIGO.Value;
        RDesembolso.QDesem.Open;
        if dm.QParametrosPAR_FORMATODES.Value = 2 then
        begin
          RDesembolso.PrinterSetup;
          RDesembolso.Print;
          RDesembolso.Destroy;
        end
        else
          Imp40Columnas;
      end;

      DBEdit1.setfocus;
      Totaliza := True;
      QDesem.close;
      QDesem.Parameters.parambyname('emp').Value := dm.vp_cia;
      QDesem.Parameters.parambyname('numero').Value := -1;
      QDesem.Parameters.parambyname('suc').Value := -1;
      QDesem.open;
      QDesem.insert;
    end
    else
      DBEdit1.setfocus;
  end;
end;

procedure TfrmDesembolsos.btLimpiarClick(Sender: TObject);
begin
  if messagedlg('DESEA CANCELAR ESTE DESEMBOLSO?',mtconfirmation,[mbyes,mbno],0)=mryes then
  begin
    DBEdit1.setfocus;
    QDesem.close;
    QDesem.Parameters.parambyname('emp').Value := dm.vp_cia;
    QDesem.Parameters.parambyname('numero').Value := -1;
    QDesem.Parameters.parambyname('suc').Value := -1;
    QDesem.open;
    QDesem.insert;
    MD_PagoComis.Close;
    MD_PagoComis.Open;
    edtTipo.Clear;
    edtTipoN.Clear;
    edtNumero.Clear;
    CEdt_MontoFact.Value := 0;
    CEdt_Porc.Value      := 0;
    CEdt_TotalPag.Value  := 0;
  end;
end;

procedure TfrmDesembolsos.QDesemDES_NUMEROChange(Sender: TField);
var
  Num : Integer;
  Suc : Variant;
begin
  if not QDesemDES_NUMERO.IsNull then
  begin
    Num := QDesemDES_NUMERO.Value;
    Suc := QDesemSUC_CODIGO.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select des_numero from desembolsos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and des_numero = :num');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('num').Value := Num;
    dm.Query1.Parameters.ParamByName('suc').Value := Suc;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      if vMod = False then begin
      MessageDlg('USTED NO ESTA AUTORIZADO A MODIFICAR DESEMBOLSOS,'+Char(13)+
      'CONTACTE AL ADMINISTRADOR....',mtWarning,[mbOK],0);
      QDesemDES_NUMERO.IsNull;
      Exit;
      end;
      QDesem.Close;
      QDesem.Parameters.ParamByName('emp').Value    := dm.vp_cia;
      QDesem.Parameters.ParamByName('numero').Value := Num;
      QDesem.Parameters.ParamByName('suc').Value := Suc;
      QDesem.Open;

      QFormasPago.Close;
      QFormasPago.Parameters.ParamByName('emp').Value    := dm.vp_cia;
      QFormasPago.Parameters.ParamByName('numero').Value := Num;
      QFormasPago.Parameters.ParamByName('suc').Value := Suc;
      QFormasPago.Open;

      QDetalle.Close;
      QDetalle.Parameters.ParamByName('emp').Value := dm.vp_cia;
      QDetalle.Parameters.ParamByName('num').Value := Num;
      QDetalle.Parameters.ParamByName('suc').Value := Suc;
      QDetalle.Open;

      QCentro.Close;
      QCentro.Parameters.ParamByName('emp').Value := dm.vp_cia;
      QCentro.Parameters.ParamByName('num').Value := Num;
      QCentro.Parameters.ParamByName('suc').Value := Suc;
      QCentro.Open;

      QDesem.Edit;
      TotalizaCuentas;
    end;
  end;
end;

procedure TfrmDesembolsos.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmDesembolsos.btCajaClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.query.clear;
  Search.query.add('select caj_nombre, caj_codigo');
  Search.query.add('from cajas');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'caj_codigo';
  Search.Title := 'Cajas';
  if search.execute then
  begin
     QDesemDES_CAJA.Value := StrToInt(Search.ValueField);
     DBEdit7.SetFocus;
  end;
end;

procedure TfrmDesembolsos.QDesemDES_CAJAGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QDesemDES_CAJA.IsNull then
  begin
    Text := IntTostr(QDesemDES_CAJA.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select caj_nombre, cat_cuenta from cajas');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and CAJ_CODIGO = :caj');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('caj').Value := QDesemDES_CAJA.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      tCaja.Text := dm.Query1.FieldByName('caj_nombre').AsString;
      CtaCaja := dm.Query1.FieldByName('cat_cuenta').AsString;
    end
    else
      tCaja.Text := '';
  end
  else
    tCaja.Text := '';
end;

procedure TfrmDesembolsos.QDesemSUC_CODIGOChange(Sender: TField);
var
  Suc : variant;
begin
  Suc := QDesemSUC_CODIGO.Value;
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select isnull(max(des_numero),0) as maximo');
  dm.Query1.SQL.Add('from desembolsos');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and suc_codigo = :suc');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('suc').Value := Suc; 
  dm.Query1.Open;
  QDesemDES_NUMERO.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
end;

procedure TfrmDesembolsos.btbenefClick(Sender: TObject);
var
  a : integer;
begin
  if rgtipo.ItemIndex = 1 then //Proveedores
  begin
    Search.Query.Clear;
    Search.AliasFields.Clear;
    Search.Query.Add('select sup_nombre, sup_codigo');
    Search.Query.Add('from proveedores');
    Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
    Search.Query.Add('and sup_balance > 0');
    Search.AliasFields.Add('Nombre');
    Search.AliasFields.Add('C�digo');
    Search.ResultField := 'sup_codigo';
    Search.Title := 'Proveedores';
    if Search.execute then
    begin
      QDesemSUP_CODIGO.Value := StrToInt(Search.ValueField);
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select sup_nombre, sup_cuenta');
      dm.Query1.SQL.Add('from proveedores');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and sup_codigo = :sup');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      //dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.ParamByName('sup').Value := QDesemSUP_CODIGO.Value;
      dm.Query1.Open;
      QDesemDES_BENEFICIARIO.Value := dm.Query1.FieldByName('sup_nombre').AsString;
      CtaBenef := dm.Query1.FieldByName('sup_cuenta').AsString;
      if not dm.Query1.FieldByName('sup_cuenta').IsNull then
      begin
        if not QDetalle.Locate('cat_cuenta',
        dm.Query1.FieldByName('sup_cuenta').AsString,[]) then
        Begin
          QDetalle.Append;
          QDetalleCAT_CUENTA.Value := dm.Query1.FieldByName('sup_cuenta').AsString;
          QDetalleDET_ORIGEN.Value := 'Debito';
          QDetalleDET_MONTO.Value  := QDesemDES_MONTO.Value;
          QDetalle.Post;
        End;
      end;

      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select fac_numero, fac_fecha, fac_vence,');
      dm.Query1.SQL.Add('fac_total, fac_abono');
      dm.Query1.SQL.Add('from provfacturas');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and sup_codigo = :sup');
      dm.Query1.SQL.Add('and fac_status = '+#39+'PEN'+#39);
      dm.Query1.SQL.Add('order by fac_fecha');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.ParamByName('sup').Value := QDesemSUP_CODIGO.Value;
      dm.Query1.Open;
      dm.Query1.DisableControls;
      QFacturas.Close;
      QFacturas.Parameters.ParamByName('emp').Value := dm.vp_cia;
      QFacturas.Parameters.ParamByName('des').Value := QDesemDES_NUMERO.Value;
      QFacturas.Parameters.ParamByName('suc').Value := QDesemSUC_CODIGO.Value;
      QFacturas.Open;
      QFacturas.DisableControls;
      a := 0;
      while not dm.Query1.Eof do
      Begin
        a := a + 1;
        QFacturas.Insert;
        QFacturasSUC_CODIGO.Value := QDesemSUC_CODIGO.Value;
        QFacturasFAC_NUMERO.Value := dm.Query1.FieldByName('fac_numero').AsString;
        QFacturasFAC_SALDO.Value  := StrToFloat(Format('%10.2f',[
                                     dm.Query1.FieldByName('fac_total').AsFloat]))-
                                     StrToFloat(Format('%10.2f',[
                                     dm.Query1.FieldByName('fac_abono').AsFloat]));
        QFacturasfac_fecha.Value  := dm.Query1.FieldByName('fac_fecha').Value;
        QFacturasfac_vence.Value  := dm.Query1.FieldByName('fac_vence').Value;
        QFacturasdet_secuencia.Value := a;
        QFacturasSUP_CODIGO.Value := QDesemSUP_CODIGO.Value;
        QFacturasEMP_CODIGO.Value := dm.vp_cia;
        QFacturasdes_numero.Value := QDesemdes_NUMERO.Value;
        QFacturas.Post;
        dm.Query1.Next;
      End;
      dm.Query1.EnableControls;
      QFacturas.EnableControls;
      QFacturas.First;
    end
    else
    begin
      rgtipo.ItemIndex := 0;
    end;
  end
  else if rgtipo.ItemIndex = 2 then //Empleados
  begin
    Search.Query.Clear;
    Search.AliasFields.Clear;
    Search.Query.Add('select emp_nombres, emp_apellido_paterno, emp_cedula, emp_numero');
    Search.Query.Add('from empleados');
    Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
    Search.Query.Add('and emp_status = '+QuotedStr('ACT'));
    Search.AliasFields.Add('Nombre');
    Search.AliasFields.Add('Apellido');
    Search.AliasFields.Add('C�dula');
    Search.AliasFields.Add('C�digo');
    Search.ResultField := 'emp_numero';
    Search.Title := 'Empleados';
    if Search.execute then
    begin
      QDesememp_numero.Value := StrToInt(Search.ValueField);
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select emp_nombres, emp_apellido_paterno, cat_cuenta');
      dm.Query1.SQL.Add('from empleados');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and emp_numero = :num');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.ParamByName('num').Value := QDesememp_numero.Value;
      dm.Query1.Open;
      QDesemDES_BENEFICIARIO.Value := dm.Query1.FieldByName('emp_nombres').AsString + ' ' +dm.Query1.FieldByName('emp_apellido_paterno').AsString;
      CtaBenef := dm.Query1.FieldByName('cat_cuenta').AsString;
      if not dm.Query1.FieldByName('cat_cuenta').IsNull then
      begin
        if not QDetalle.Locate('cat_cuenta', dm.Query1.FieldByName('cat_cuenta').AsString,[]) then
        Begin
          QDetalle.Append;
          QDetalleCAT_CUENTA.Value := CtaBenef;
          QDetalleDET_ORIGEN.Value := 'Debito';
          QDetalleDET_MONTO.Value  := QDesemDES_MONTO.Value;
          QDetalle.Post;
        End;
      end;
    end
    else
    begin
      rgtipo.ItemIndex := 0;
    end;
  end
  else if rgtipo.ItemIndex = 3 then //Clientes
  begin
    Search.Query.Clear;
    Search.AliasFields.Clear;
    Search.Query.Add('select cli_nombre, cli_codigo');
    Search.Query.Add('from clientes');
    Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
    Search.Query.Add('and cli_status = '+QuotedStr('ACT'));
    Search.AliasFields.Add('Nombre');
    Search.AliasFields.Add('C�digo');
    Search.ResultField := 'cli_codigo';
    Search.Title := 'Clientes';
    if Search.execute then
    begin
      QDesemcli_codigo.Value := StrToInt(Search.ValueField);
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select cli_nombre, cli_cuenta');
      dm.Query1.SQL.Add('from clientes');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and cli_codigo = :num');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.ParamByName('num').Value := QDesemcli_codigo.Value;
      dm.Query1.Open;
      QDesemDES_BENEFICIARIO.Value := dm.Query1.FieldByName('cli_nombre').AsString;
      CtaBenef := dm.Query1.FieldByName('cli_cuenta').AsString;
      if not dm.Query1.FieldByName('cli_cuenta').IsNull then
      begin
        if not QDetalle.Locate('cat_cuenta', dm.Query1.FieldByName('cli_cuenta').AsString,[]) then
        Begin
          QDetalle.Append;
          QDetalleCAT_CUENTA.Value := CtaBenef;
          QDetalleDET_ORIGEN.Value := 'Debito';
          QDetalleDET_MONTO.Value  := QDesemDES_MONTO.Value;
          QDetalle.Post;
        End;
      end;
    end
    else
    begin
      rgtipo.ItemIndex := 0;
    end;
  end;
end;

procedure TfrmDesembolsos.QFacturasdet_descuentoChange(Sender: TField);
begin
  if Totaliza = True then
    if not QFacturasdet_descuento.IsNull then
    Begin
      QFacturasdet_monto.Value := StrToFloat(Format('%10.2f',[QFacturasFAC_SALDO.Value]))-
                                 StrToFloat(Format('%10.2f',[QFacturasdet_DESCUENTO.Value]));
      QFacturas.Post;
    End
    else
    begin
      QFacturasdet_monto.Value := StrToFloat(Format('%10.2f',[QFacturasFAC_SALDO.Value]));
      QFacturas.Post;
    end;
end;

procedure TfrmDesembolsos.QFacturasBeforeDelete(DataSet: TDataSet);
begin
  Abort;
end;

procedure TfrmDesembolsos.QFacturasAfterPost(DataSet: TDataSet);
begin
  TotalizaFac;
  Totalizar;
end;

procedure TfrmDesembolsos.TotalizaFac;
var
  Total, Desc : Double;
  punt : TBookmark;
begin
  if Totaliza = True then
  Begin
    Total := 0;
    Desc  := 0;
    punt := QFacturas.GetBookmark;
    QFacturas.DisableControls;
    QFacturas.First;
    while not QFacturas.Eof do
    Begin
      Total := Total + QFacturasdet_monto.Value;
      Desc  := Desc  + QFacturasdet_DESCUENTO.Value;
      QFacturas.Next;
    End;
    QFacturas.GotoBookmark(punt);
    QFacturas.EnableControls;

    QDesemDES_DESCUENTO.Value := Desc;

    QFormasPago.Edit;
    QFormasPagoFOR_MONTO.Value := Total;
    QFormasPago.Post;

    if CtaBenef <> '' then
      if QDetalle.Locate('cat_cuenta',CtaBenef,[]) then
      Begin
        QDetalle.Edit;
        QDetalleDET_MONTO.Value := Total + QDesemDES_DESCUENTO.Value;
        QDetalle.Post;
      End;
  End;
end;

procedure TfrmDesembolsos.dsDesemDataChange(Sender: TObject;
  Field: TField);
begin
    GridForma.ReadOnly := not QDesemSUP_CODIGO.IsNull;
    DBEdit2.ReadOnly := not QDesemSUP_CODIGO.IsNull;
end;

procedure TfrmDesembolsos.GriFacturasColEnter(Sender: TObject);
begin
  if GriFacturas.SelectedIndex < 4 then
    GriFacturas.SelectedIndex := 4;
end;

procedure TfrmDesembolsos.GriFacturasEnter(Sender: TObject);
begin
  GriFacturas.SelectedIndex := 4;
end;

procedure TfrmDesembolsos.GriFacturasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if GriFacturas.SelectedIndex < 5 then
       GriFacturas.SelectedIndex := GriFacturas.SelectedIndex + 1
    else
    begin
      GriFacturas.SelectedIndex := 4;
      QFacturas.Edit;
      QFacturas.Post;
      QFacturas.Next;
    end;
  end;
  if key = vk_f8 then
  begin
    QFacturas.Edit;
    QFacturasdet_monto.Value     := QFacturasFAC_SALDO.Value;
    QFacturasdet_DESCUENTO.Value := 0;
  end;
end;

procedure TfrmDesembolsos.rgtipoClick(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select caj_codigo from cajas where emp_codigo = :emp');
  dm.Query1.SQL.Add('order by caj_codigo');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Open;

  if rgtipo.ItemIndex >= 1 then
  begin
    if dm.Query1.RecordCount = 2 then
      if dm.Query1.FieldByName('caj_codigo').Value = QDesemDES_CAJA.Value then
      begin
        dm.Query1.Next;
        QDesemDES_CAJA.Value := dm.Query1.fieldbyname('caj_codigo').Value;
      end;

    btbenefClick(self);
  end
  else
  begin
    QDesemDES_CAJA.Value := dm.Query1.fieldbyname('caj_codigo').Value;
  end;
end;

procedure TfrmDesembolsos.QDesemDES_DESCUENTOChange(Sender: TField);
begin
  if (not QDesemDES_DESCUENTO.IsNull) and (QDesemDES_DESCUENTO.Value > 0)
  and (not dm.QContabPAR_CTADESCCOMP.isNull) then
  begin
    if not QDetalle.Locate('cat_cuenta', dm.QContabPAR_CTADESCCOMP.Value ,[]) then
    Begin
      QDetalle.Append;
      QDetalleCAT_CUENTA.Value := dm.QContabPAR_CTADESCCOMP.Value;
      QDetalleDET_ORIGEN.Value := 'Credito';
      QDetalleDET_MONTO.Value  := QDesemDES_DESCUENTO.Value;
      QDetalle.Post;
    end
    else
    Begin
      QDetalle.Edit;
      QDetalleCAT_CUENTA.Value := dm.QContabPAR_CTADESCCOMP.Value;
      QDetalleDET_ORIGEN.Value := 'Credito';
      QDetalleDET_MONTO.Value  := QDesemDES_DESCUENTO.Value;
      QDetalle.Post;
    End;
  end;
end;

procedure TfrmDesembolsos.QDesemDES_MONTOChange(Sender: TField);
begin
  if StrToFloat(Format('%10.2f',[QDesemDES_MONTO.Value])) > 0 then
  begin
    //Buscando Cuenta
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_cuenta from cajas');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and caj_codigo = :cod');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cod').Value := QDesemDES_CAJA.Value;
    dm.Query1.Open;
    if not dm.Query1.FieldByName('cat_cuenta').IsNull then
    begin
      if not QDetalle.Locate('cat_cuenta',dm.Query1.FieldByName('cat_cuenta').Value,[]) then
      begin
        QDetalle.Append;
        QDetalleCAT_CUENTA.Value := dm.Query1.FieldByName('cat_cuenta').AsString;
        QDetalleDET_MONTO.Value  := QDesemDES_MONTO.Value;
        QDetalleDET_ORIGEN.Value := 'Credito';
        QDetalle.Post;
      end
      else
      begin
        QDetalle.Edit;
        QDetalleCAT_CUENTA.Value := dm.Query1.FieldByName('cat_cuenta').AsString;
        QDetalleDET_MONTO.Value  := QDesemDES_MONTO.Value;
        QDetalleDET_ORIGEN.Value := 'Credito';
        QDetalle.Post;
      end;
    end;
  end;
end;

procedure TfrmDesembolsos.btTipoClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Query.clear;
  Search.Query.add('select tip_nombre, tip_codigo');
  Search.ResultField := 'tip_codigo';
  Search.Query.add('from Tipo_Bienes_Servicios');
  Search.Title := 'Tipo de Bienes y Servicios';
  if Search.execute then
  begin
    QDesemTIP_CODIGO.value := StrToInt(Search.ValueField);
    DBEdit21.setfocus;
  end;
end;

procedure TfrmDesembolsos.QDesemtip_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QDesemtip_codigo.IsNull then
  begin
    Text := IntToStr(QDesemtip_codigo.Value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select tip_codigo, tip_nombre');
    dm.Query1.sql.add('from Tipo_Bienes_Servicios');
    dm.Query1.sql.add('where tip_codigo = :tip');
    dm.Query1.Parameters.parambyname('tip').Value := QDesemtip_codigo.Value;
    dm.Query1.open;
    if dm.Query1.RecordCount > 0 then
      tTipo.text := dm.Query1.fieldbyname('tip_nombre').asstring
    else
      tTipo.text := '';
  end
  else
    tTipo.text := '';
end;

procedure TfrmDesembolsos.SpeedButton1Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select con_nombre, con_codigo');
  Search.Query.Add('from conceptos');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.ResultField := 'con_codigo';
  Search.Title := 'Conceptos';
  if Search.execute then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select con_nombre, cat_cuenta from conceptos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and con_codigo = :con');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('con').Value := StrToInt(Search.ValueField);
    dm.Query1.Open;
    QDesemDES_CONCEPTO.Value := dm.Query1.FieldByName('con_nombre').AsString;
    if not dm.Query1.FieldByName('cat_cuenta').IsNull then
    begin
      if not QDetalle.Locate('cat_cuenta', dm.Query1.FieldByName('cat_cuenta').AsString,[]) then
      Begin
        QDetalle.Append;
        QDetalleCAT_CUENTA.Value := dm.Query1.FieldByName('cat_cuenta').AsString;
        QDetalleDET_ORIGEN.Value := 'Debito';
        QDetalleDET_MONTO.Value  := QDesemDES_MONTO.Value;
        QDetalle.Post;
      End;
    end;
  end;
end;

procedure TfrmDesembolsos.spcentrosClick(Sender: TObject);
var
  a : integer;
begin
dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select cat_maneja_centro from contcatalogo');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and cat_cuenta = :cta');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('cta').Value := QDetalleCAT_CUENTA.AsString;
  dm.Query1.Open;
  if dm.Query1.FieldByName('cat_maneja_centro').AsString <> 'S' then
  begin
    MessageDlg('Esta cuenta no acepta Centros de Costo', mtError, [mbyes], 0);
    GridCuentas.SetFocus;
  end
  else
  begin
    Application.CreateForm(tfrmCentrosXCuenta, frmCentrosXCuenta);
    frmCentrosXCuenta.lbcuenta.Caption := QDetalleCAT_CUENTA.AsString+': '+QDetalleCAT_NOMBRE.AsString;
    frmCentrosXCuenta.cta := QDetalleCAT_CUENTA.AsString;
    frmCentrosXCuenta.vMontototal := QDetalleDET_MONTO.Value;
    //Grabando registro en la pantalla
    QCentro.DisableControls;
    QCentro.First;
    while not QCentro.Eof do
    begin
      if QCentrocat_cuenta.Value = QDetalleCAT_CUENTA.AsString then
      begin
        frmCentrosXCuenta.QCentro.Append;
        frmCentrosXCuenta.QCentrocen_nombre.Value := QCentrocen_nombre.AsString;
        frmCentrosXCuenta.QCentrodet_monto.Value  := QCentrodet_monto.Value;
        frmCentrosXCuenta.QCentrocen_referencia.Value := QCentrocen_referencia.AsString;
        frmCentrosXCuenta.QCentrosub_referencia.Value := QCentrosub_referencia.AsString;
        frmCentrosXCuenta.QCentrocen_codigo.Value     := QCentrocen_codigo.Value;
        frmCentrosXCuenta.QCentrosub_secuencia.Value  := QCentrosub_secuencia.Value;
        frmCentrosXCuenta.QCentro.Post;
      end;

      QCentro.Next;
    end;
    QCentro.EnableControls;

    frmCentrosXCuenta.ShowModal;

    //eliminando registros de la cuenta selccionada
    QCentro.DisableControls;
    QCentro.First;
    a := QCentro.RecordCount;
    while a > 0 do
    begin
      if QCentrocat_cuenta.Value = QDetalleCAT_CUENTA.AsString then
        QCentro.Delete
      else
        QCentro.Next;

      a := a - 1;
    end;
    QCentro.EnableControls;

    //insertando registros de la cuenta selccionada
    frmCentrosXCuenta.QCentro.DisableControls;
    frmCentrosXCuenta.QCentro.First;
    while not frmCentrosXCuenta.QCentro.Eof do
    begin
      QCentro.Append;
      QCentrocat_cuenta.Value := QDetalleCAT_CUENTA.AsString;
      QCentrocen_nombre.Value := frmCentrosXCuenta.QCentrocen_nombre.Value;
      QCentrodet_monto.Value  := frmCentrosXCuenta.QCentrodet_monto.Value;
      QCentrocen_referencia.Value := frmCentrosXCuenta.QCentrocen_referencia.Value;
      QCentrosub_referencia.Value := frmCentrosXCuenta.QCentrosub_referencia.Value;
      QCentrocen_codigo.Value     := frmCentrosXCuenta.QCentrocen_codigo.Value;
      QCentrosub_secuencia.Value  := frmCentrosXCuenta.QCentrosub_secuencia.Value;
      QCentrodet_secuencia.Value  := frmCentrosXCuenta.QCentro.IndexFieldCount;
      QCentro.Post;

      frmCentrosXCuenta.QCentro.Next;
    end;
    frmCentrosXCuenta.QCentro.EnableControls;
    frmCentrosXCuenta.Release;
  end;



  {dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select cat_maneja_centro from contcatalogo');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and cat_cuenta = :cta');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('cta').Value := QDetalleCAT_CUENTA.AsString;
  dm.Query1.Open;
  if dm.Query1.FieldByName('cat_maneja_centro').AsString <> 'S' then
  begin
    MessageDlg('Esta cuenta no acepta Centros de Costo', mtError, [mbyes], 0);
    GridCuentas.SetFocus;
  end
  else
  begin
    Application.CreateForm(tfrmCentrosXCuenta, frmCentrosXCuenta);
    frmCentrosXCuenta.lbcuenta.Caption := QDetalleCAT_CUENTA.AsString+': '+QDetalleCAT_NOMBRE.AsString;
    frmCentrosXCuenta.cta := QDetalleCAT_CUENTA.AsString;

    //Grabando registro en la pantalla
    QCentro.DisableControls;
    QCentro.First;
    while not QCentro.Eof do
    begin
      if QCentrocat_cuenta.Value = QDetalleCAT_CUENTA.AsString then
      begin
        frmCentrosXCuenta.QCentro.Append;
        frmCentrosXCuenta.QCentrocen_nombre.Value := QCentrocen_nombre.Value;
        frmCentrosXCuenta.QCentrodet_monto.Value  := QCentrodet_monto.Value;
        frmCentrosXCuenta.QCentrocen_referencia.Value := QCentrocen_referencia.Value;
        frmCentrosXCuenta.QCentrosub_referencia.Value := QCentrosub_referencia.Value;
        frmCentrosXCuenta.QCentrocen_codigo.Value     := QCentrocen_codigo.Value;
        frmCentrosXCuenta.QCentrosub_secuencia.Value  := QCentrosub_secuencia.Value;
        frmCentrosXCuenta.QCentro.Post;
      end;

      QCentro.Next;
    end;
    QCentro.EnableControls;

    frmCentrosXCuenta.ShowModal;

    //eliminando registros de la cuenta selccionada
    QCentro.DisableControls;
    QCentro.First;
    a := QCentro.RecordCount;
    while a > 0 do
    begin
      if QCentrocat_cuenta.Value = QDetalleCAT_CUENTA.AsString then
        QCentro.Delete
      else
        QCentro.Next;

      a := a - 1;
    end;
    QCentro.EnableControls;

    //insertando registros de la cuenta selccionada
    frmCentrosXCuenta.QCentro.DisableControls;
    frmCentrosXCuenta.QCentro.First;
    while not frmCentrosXCuenta.QCentro.Eof do
    begin
      QCentro.Append;
      QCentrocat_cuenta.Value := QDetalleCAT_CUENTA.AsString;
      QCentrocen_nombre.Value := frmCentrosXCuenta.QCentrocen_nombre.Value;
      QCentrodet_monto.Value  := frmCentrosXCuenta.QCentrodet_monto.Value;
      QCentrocen_referencia.Value := frmCentrosXCuenta.QCentrocen_referencia.Value;
      QCentrosub_referencia.Value := frmCentrosXCuenta.QCentrosub_referencia.Value;
      QCentrocen_codigo.Value     := frmCentrosXCuenta.QCentrocen_codigo.Value;
      QCentrosub_secuencia.Value  := frmCentrosXCuenta.QCentrosub_secuencia.Value;
      QCentro.Post;

      frmCentrosXCuenta.QCentro.Next;
    end;
    frmCentrosXCuenta.QCentro.EnableControls;
    frmCentrosXCuenta.Release;
  end;  }



end;

procedure TfrmDesembolsos.GridCuentasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
Var
  DataRect : TRect ;
Begin
   // Place the button in the first column.
   If (Column.Index = 0) Then
   Begin
      With GridCuentas Do
      Begin
         DataRect := CellRect(Column.Index,Row);
      End;
   // Assign the button's parent to the grid.
   If spcentros.Parent <> GridCuentas Then
      spcentros.Parent := GridCuentas ;
   // Set the button's coordinates.
   // In this case, right justify the button.
   If spcentros.Left <> (DataRect.Right - spcentros.Width) Then
      spcentros.Left := (DataRect.Right - spcentros.Width) ;
   If (spcentros.Top <> DataRect.Top) Then
      spcentros.Top := DataRect.Top ;

   // Make sure the button's height fits in row.
   If (spcentros.Height <> (DataRect.Bottom-DataRect.Top)) Then
      spcentros.Height := (DataRect.Bottom-DataRect.Top);

   End;
end;

procedure TfrmDesembolsos.QDesemrnc_empresaChange(Sender: TField);
var
  D: TDatoRncConsulta;
begin
  if QDesemrnc_empresa.IsNull then
    Exit;

  D := dm.ConsultarRncCompleto(QDesemrnc_empresa.AsString);
  if D.Encontrado then
    QDesemDES_BENEFICIARIO.Value := D.RazonSocial;
end;

procedure TfrmDesembolsos.QDesemdes_itbisChange(Sender: TField);
begin
  if (not QDesemdes_itbis.IsNull) and (QDesemdes_itbis.Value > 0)
  and (not dm.QContabpar_cta_itbis_compra.IsNull) then
  begin
    if not QDetalle.Locate('cat_cuenta', dm.QContabpar_cta_itbis_compra.Value ,[]) then
    Begin
      QDetalle.Append;
      QDetalleCAT_CUENTA.Value := dm.QContabpar_cta_itbis_compra.Value;
      QDetalleDET_ORIGEN.Value := 'Debito';
      QDetalleDET_MONTO.Value  := QDesemdes_itbis.Value;
      QDetalle.Post;
    End
    else
    Begin
      QDetalle.Edit;
      QDetalleCAT_CUENTA.Value := dm.QContabpar_cta_itbis_compra.Value;
      QDetalleDET_ORIGEN.Value := 'Debito';
      QDetalleDET_MONTO.Value  := QDesemdes_itbis.Value;
      QDetalle.Post;
    End;
  end;
  if (QDesemdes_itbis.Value > 0) and (CtaCaja <> '') then
  begin
    if not QDetalle.Locate('cat_cuenta', CtaCaja,[]) then
    Begin
      QDetalle.Append;
      QDetalleCAT_CUENTA.Value := CtaCaja;
      QDetalleDET_ORIGEN.Value := 'Credito';
      QDetalleDET_MONTO.Value  := QDesemDES_MONTO.Value;
      QDetalle.Post;
    End
    else
    Begin
      QDetalle.Edit;
      QDetalleCAT_CUENTA.Value := CtaCaja;
      QDetalleDET_ORIGEN.Value := 'Credito';
      QDetalleDET_MONTO.Value  := QDesemDES_MONTO.Value;
      QDetalle.Post;
    End;
  end;
end;

procedure TfrmDesembolsos.edtTipoChange(Sender: TObject);
begin
  if trim(edtTipo.text) = '' then tTipo.text := '';
end;

procedure TfrmDesembolsos.edtTipoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edtTipo.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select tfa_nombre, tfa_selcondi, tfa_formatoimp, tfa_puertoimp');
      dm.Query1.sql.add('from tiposfactura');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and tfa_codigo = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edtTipo.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        tTipo.text := '';
        showmessage('ESTE TIPO DE FACTURA NO EXISTE');
        edtTipo.setfocus;
      end
      else
        edtTipoN.text := dm.Query1.fieldbyname('tfa_nombre').asstring;
    end;
  end;
end;

procedure TfrmDesembolsos.bBuscarTipoClick(Sender: TObject);
begin
  search.Query.clear;
  search.Query.add('select tfa_nombre, tfa_codigo');
  search.Query.add('from tiposfactura');
  search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C�digo');
  search.ResultField := 'tfa_codigo';
  search.Title := 'Tipos de factura';
  if search.execute then
  begin
    edtTipo.text := search.valuefield;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select tfa_nombre, tfa_selcondi, tfa_formatoimp, tfa_puertoimp');
    dm.Query1.sql.add('from tiposfactura');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and tfa_codigo = :cod');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edtTipo.text));
    dm.Query1.open;
    edtTipoN.text := dm.Query1.fieldbyname('tfa_nombre').asstring;
    edtTipo.SetFocus;
  end;
end;

procedure TfrmDesembolsos.edtNumeroChange(Sender: TObject);
begin
 if Trim(edtNumero.Text)<> '' then begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select fac_numero, fac_total from facturas');
    dm.Query1.sql.add('where fac_numero = :fac');
    dm.Query1.sql.add('and tfa_codigo = :tfac');
    dm.Query1.Parameters.parambyname('fac').Value  := Trim(edtNumero.Text);
    dm.Query1.Parameters.parambyname('tfac').Value := strtoint(trim(edtTipo.text));
    dm.Query1.open;
    if dm .Query1.IsEmpty then begin
      CEdt_MontoFact.Value := 0;
      CEdt_Porc.Value      := 0;
      CEdt_TotalPag.Value  := 0;
    end;
    if not dm.Query1.IsEmpty then begin
      CEdt_MontoFact.Value := DM.Query1.fieldbyname('fac_total').Value;
      CEdt_Porc.Value      := 0;
      CEdt_TotalPag.Value  := 0;

    end;
 end;
end;

procedure TfrmDesembolsos.CEdt_PorcExit(Sender: TObject);
begin
if CEdt_MontoFact.Value > 0 then
CEdt_TotalPag.Value := CEdt_MontoFact.Value * (CEdt_Porc.Value/100);
edtNumero.SetFocus;
end;

procedure TfrmDesembolsos.CEdt_TotalPagExit(Sender: TObject);
begin
if CEdt_MontoFact.Value > 0 then
CEdt_Porc.Value := (CEdt_TotalPag.Value / CEdt_MontoFact.Value)*100;
edtNumero.SetFocus;
end;

procedure TfrmDesembolsos.btn1Click(Sender: TObject);
begin
if ((edtNumero.Text<>'') and (CEdt_Porc.Value>0)) then begin
IF MD_PagoComis.Locate('fac_numero',edtNumero.Text,[]) THEN BEGIN
ShowMessage('La factura ya existe para el desembolso, favor revisar.....');
Abort;
end;
with QComisiones do begin
Close;
SQL.Clear;
SQL.Add('SELECT DES_NUMERO FROM PagoComis_Desembolso WHERE FAC_NUMERO = :FAC');
Parameters[0].Value := StrToInt(edtNumero.Text);
Open;
IF NOT IsEmpty then BEGIN
  ShowMessage('LA COMISION YA FUE SALDADA EN EL DESEMBOLSO NO. '+IntToStr(FieldBYNAME('DES_NUMERO').AsInteger));
  Abort;
end;
Close;
end;
MD_PagoComis.Append;
MD_PagoComistipo.Value          := edtTipo.Text;
MD_PagoComisTipoN.Value         := edtTipoN.Text;
MD_PagoComisfac_numero.Value    := edtNumero.Text;
MD_PagoComisfac_monto.Value     := CEdt_MontoFact.Value;
MD_PagoComisfac_porc.Value      := CEdt_Porc.Value;
MD_PagoComisfac_comispago.Value := CEdt_TotalPag.Value;
QFormasPago.Edit;
QFormasPagoFOR_MONTO.Value := QFormasPagoFOR_MONTO.Value + CEdt_TotalPag.Value;
QFormasPago.Post;
MD_PagoComis.Post;
GridForma.Enabled:=False;
edtTipo.Clear;
edtTipoN.Clear;
edtNumero.Clear;
CEdt_MontoFact.Value := 0;
CEdt_Porc.Value      := 0;
CEdt_TotalPag.Value  := 0;
edtNumero.SetFocus;
end;

end;

procedure TfrmDesembolsos.FormShow(Sender: TObject);
begin
MD_PagoComis.Close;
MD_PagoComis.Open;
edtTipo.Clear;
edtNumero.Clear;
edtTipoN.Clear;
CEdt_MontoFact.Value:= 0;
CEdt_Porc.Value:= 0;
CEdt_TotalPag.Value:= 0;
end;

procedure TfrmDesembolsos.DBGrid_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF key = VK_DELETE then begin
  if MD_PagoComis.RecordCount > 0 then
  if MessageDlg('Desea eliminar la factura para este desembolso?',mtConfirmation,[mbyes,mbno],0)=mryes then begin
    MD_PagoComis.Delete;
  end;
end;
end;

procedure TfrmDesembolsos.MD_PagoComisBeforeDelete(DataSet: TDataSet);
begin
QFormasPago.Edit;
QFormasPagoFOR_MONTO.Value := QFormasPagoFOR_MONTO.Value - MD_PagoComisfac_comispago.Value;
QFormasPago.Post;
Totalizar;
end;

procedure TfrmDesembolsos.Editar1Click(Sender: TObject);
begin
edtTipo.Text         := MD_PagoComistipo.AsString;
edtTipoN.Text        := MD_PagoComistipoN.AsString;
edtNumero.Text       := MD_PagoComisfac_numero.AsString;
CEdt_MontoFact.Value := MD_PagoComisfac_monto.Value;
CEdt_Porc.Value      := MD_PagoComisfac_porc.Value;
CEdt_TotalPag.Value  := MD_PagoComisfac_comispago.Value;
MD_PagoComis.Delete;
end;

procedure TfrmDesembolsos.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8]) then key:=#0;
end;

procedure TfrmDesembolsos.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9','A','B','E',#8]) then key:=#0;
end;

procedure TfrmDesembolsos.QCentroNewRecord(DataSet: TDataSet);
begin
  QCentroemp_codigo.Value := dm.vp_cia;
  QCentrodes_numero.Value := QDesemDES_NUMERO.Value;
  QCentrosuc_codigo.Value := 1;

end;

procedure TfrmDesembolsos.QCentroBeforePost(DataSet: TDataSet);
begin
if QCentrocen_nombre.IsNull then QCentro.Cancel;
  if QCentro.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(det_secuencia),0) as maximo');
    dm.Query1.SQL.Add('from DesemCentroCostos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and des_numero = :num');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('num').Value := QDesemDES_NUMERO.Value;
    dm.Query1.Open;
    QCentrodet_secuencia.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  end;
end;

end.
