unit CONT41;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids,
  DB, IBCustomDataSet, IBQuery, IBUpdateSQL, DateUtils,
  ADODB, QuerySearchDlgADO, ComCtrls, DBGridObj;

type
  TfrmCargosBanco = class(TForm)
    Panel1: TPanel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    btBanco: TSpeedButton;
    tBanco: TEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    DBEdit3: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    lbCR: TStaticText;
    lbDB: TStaticText;
    lbBAL: TStaticText;
    btGrabar: TBitBtn;
    btLimpiar: TBitBtn;
    btElimina: TSpeedButton;
    btBuscaCta: TSpeedButton;
    btSalir: TBitBtn;
    rbTipo: TDBRadioGroup;
    Search: TQrySearchDlgADO;
    QCargos: TADOQuery;
    dsCargos: TDataSource;
    QDetalle: TADOQuery;
    dsDetalle: TDataSource;
    Query1: TADOQuery;
    btbenef: TSpeedButton;
    QCargosBAN_CODIGO: TIntegerField;
    QCargosCLI_CODIGO: TIntegerField;
    QCargosCAR_ANO: TIntegerField;
    QCargosCAR_CONCEPTO1: TIBStringField;
    QCargosCAR_CONCEPTO2: TIBStringField;
    QCargosCAR_FECHA: TDateTimeField;
    QCargosCAR_MES: TIntegerField;
    QCargosCAR_MONTO: TFloatField;
    QCargosCAR_NUMERO: TIntegerField;
    QCargosCAR_STATUS: TIBStringField;
    QCargosCAR_TIPO: TIBStringField;
    QCargosEMP_CODIGO: TIntegerField;
    QCargosUSU_CODIGO: TIntegerField;
    QCargosCAR_FORMA: TIBStringField;
    rbForma: TDBRadioGroup;
    QDetalleBAN_CODIGO: TIntegerField;
    QDetalleCAT_CUENTA: TIBStringField;
    QDetalleCAT_NOMBRE: TIBStringField;
    QDetalleCAR_ANO: TIntegerField;
    QDetalleCAR_MES: TIntegerField;
    QDetalleCAR_NUMERO: TIntegerField;
    QDetalleDET_MONTO: TFloatField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    QCargosCAR_ABONO: TFloatField;
    QDetalleDET_ORIGEN: TIBStringField;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    Label14: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursalemp_codigo: TIntegerField;
    QCargosSUC_CODIGO: TIntegerField;
    QDetalleSUC_CODIGO: TIntegerField;
    QSucursalalm_codigo: TIntegerField;
    QCargosREC_NUMERO: TIntegerField;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    QCargosCAR_COMISION: TBCDField;
    btrecibo: TSpeedButton;
    QCargosCAR_MONTO_BANCO: TBCDField;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    lbFacturas: TStaticText;
    GriFacturas: TDBGrid;
    QFacturas: TADOQuery;
    dsFacturas: TDataSource;
    QFacturasemp_codigo: TIntegerField;
    QFacturassuc_codigo: TIntegerField;
    QFacturasban_codigo: TIntegerField;
    QFacturascar_ano: TIntegerField;
    QFacturascar_mes: TIntegerField;
    QFacturascar_numero: TIntegerField;
    QFacturasfac_secuencia: TIntegerField;
    QFacturassup_codigo: TIntegerField;
    QFacturasfac_numero: TStringField;
    QFacturasfac_saldo: TBCDField;
    QFacturasfac_abono: TBCDField;
    QFacturasfac_fecha: TDateTimeField;
    QFacturasfac_vence: TDateTimeField;
    QFacturasfac_total: TBCDField;
    QFacturasfac_pago: TBCDField;
    QFacturasfac_descuento: TBCDField;
    QFacturasfac_itbis: TBCDField;
    QFacturasfac_retencion: TBCDField;
    QCargosSUP_CODIGO: TIntegerField;
    QCargosCAR_TASA: TBCDField;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit9: TDBEdit;
    QCargoscar_descuento: TBCDField;
    QCargoscar_retencion: TBCDField;
    Label15: TLabel;
    DBEdit10: TDBEdit;
    Label16: TLabel;
    DBEdit12: TDBEdit;
    QCargoscar_rnc: TStringField;
    QCargoscar_ncf: TStringField;
    QCargostip_codigo: TIntegerField;
    Label17: TLabel;
    DBEdit13: TDBEdit;
    Label18: TLabel;
    DBEdit14: TDBEdit;
    Label22: TLabel;
    DBEdit21: TDBEdit;
    btTipo: TSpeedButton;
    tTipo: TEdit;
    QCentro: TADOQuery;
    QCentroemp_codigo: TIntegerField;
    QCentroban_codigo: TIntegerField;
    QCentrocen_codigo: TIntegerField;
    QCentrodet_secuencia: TIntegerField;
    QCentrocen_nombre: TStringField;
    QCentrodet_monto: TBCDField;
    QCentrosuc_codigo: TIntegerField;
    dsCentro: TDataSource;
    QCentrocar_ano: TIntegerField;
    QCentrocar_mes: TIntegerField;
    QCentrocar_numero: TIntegerField;
    GridCuentas: TDBGridObj;
    spcentros: TSpeedButton;
    QCentrocen_referencia: TStringField;
    QCentrosub_referencia: TStringField;
    QCentrosub_secuencia: TIntegerField;
    SpeedButton1: TSpeedButton;
    QCentrocat_cuenta: TStringField;
    dbedtcont_numeroSucursal: TDBEdit;
    btLocalidad: TSpeedButton;
    TSucLoc: TEdit;
    lbLocSuc: TLabel;
    QCargoscont_numeroSucursal: TStringField;
    tbenef: TDBEdit;
    QCargoscar_benef: TStringField;
    qRepBalanceFact: TADOQuery;
    procedure FormPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btSalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btBancoClick(Sender: TObject);
    procedure QCargosNewRecord(DataSet: TDataSet);
    procedure QDetalleNewRecord(DataSet: TDataSet);
    procedure GridCuentasColEnter(Sender: TObject);
    procedure GridCuentasEnter(Sender: TObject);
    procedure GridCuentasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QDetalleCAT_CUENTAChange(Sender: TField);
    procedure btBuscaCtaClick(Sender: TObject);
    procedure btEliminaClick(Sender: TObject);
    procedure QDetalleAfterPost(DataSet: TDataSet);
    procedure QDetalleAfterDelete(DataSet: TDataSet);
    procedure btLimpiarClick(Sender: TObject);
    procedure QDetalleBeforePost(DataSet: TDataSet);
    procedure btGrabarClick(Sender: TObject);
    procedure QCargosBAN_CODIGOChange(Sender: TField);
    procedure QCargosAfterInsert(DataSet: TDataSet);
    procedure QCargosAfterEdit(DataSet: TDataSet);
    procedure QCargosCLI_CODIGOChange(Sender: TField);
    procedure btbenefClick(Sender: TObject);
    procedure rbFormaClick(Sender: TObject);
    procedure QCargosCAR_NUMEROChange(Sender: TField);
    procedure QCargosCAR_MONTOChange(Sender: TField);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QCargosSUC_CODIGOChange(Sender: TField);
    procedure QCargosREC_NUMEROChange(Sender: TField);
    procedure btreciboClick(Sender: TObject);
    procedure GriFacturasColEnter(Sender: TObject);
    procedure GriFactuasEnter(Sender: TObject);
    procedure GriFacturasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QFacturasBeforeDelete(DataSet: TDataSet);
    procedure QFacturasAfterPost(DataSet: TDataSet);
    procedure QCargosSUP_CODIGOChange(Sender: TField);
    procedure QCargosCAR_MONTO_BANCOChange(Sender: TField);
    procedure QCargoscar_descuentoChange(Sender: TField);
    procedure QCargoscar_retencionChange(Sender: TField);
    procedure QFacturasfac_descuentoChange(Sender: TField);
    procedure QFacturasfac_retencionChange(Sender: TField);
    procedure btTipoClick(Sender: TObject);
    procedure QCargostip_codigoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QCentroBeforePost(DataSet: TDataSet);
    procedure QCentroNewRecord(DataSet: TDataSet);
    procedure spcentrosClick(Sender: TObject);
    procedure GridCuentasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure dbedtcont_numeroSucursalChange(Sender: TObject);
    procedure dbedtcont_numeroSucursalKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure btLocalidadClick(Sender: TObject);
    procedure rbTipoChange(Sender: TObject);
    procedure QCargosCAR_FECHAChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    CtaBanco, CtaBenef : String;
    Debitos, Creditos, TotalPagoFacturas : Double;
    Totaliza, Inserta : Boolean;
    Accion : Integer;
    buscar : boolean;
    Procedure Totalizar;
    Procedure TotalizaFac;
  end;

var
  frmCargosBanco: TfrmCargosBanco;

implementation

uses SIGMA00, SIGMA01, SIGMA08, RCONT34;


{$R *.dfm}

procedure TfrmCargosBanco.FormPaint(Sender: TObject);
begin
  with frmCargosBanco do
  begin
    Top  := 2;
    Left := 2;
    //width := frmMain.Width - 100;
    //height := frmMain.Height - 120;
  end;
end;

procedure TfrmCargosBanco.FormCreate(Sender: TObject);
var
  a : integer;
begin
  buscar:=False;
  for a := 0 to (Sender as TForm).ComponentCount -1 DO
  begin
    if Components[a].ClassType = tdbedit then
    begin
      (Components[a] as tdbedit).OnEnter := frmMain.Entra;
      (Components[a] as tdbedit).OnExit := frmMain.sale;
    end;
  end;
//  GridCuentas.Height := 220;

end;

procedure TfrmCargosBanco.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then btSalirClick(Self);
  if key = vk_f3  then btLimpiarClick(Self);
  if key = vk_f2  then btGrabarClick(self);
end;

procedure TfrmCargosBanco.btSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCargosBanco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
  Exit
  else
    action := cafree;
end;

procedure TfrmCargosBanco.btBancoClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select ban_nombre, ban_codigo');
  Search.Query.Add('from bancos');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.Query.Add('and suc_codigo = '+IntToStr(DBLookupComboBox2.KeyValue));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.ResultField := 'ban_codigo';
  Search.Title := 'Bancos';
  if Search.execute then
  begin
    QCargosBAN_CODIGO.Value := StrToInt(Search.ValueField);
    DBEdit1.SetFocus;
  end;
end;

procedure TfrmCargosBanco.QCargosNewRecord(DataSet: TDataSet);
begin
  TotalPagoFacturas := 0;
  tbenef.Text := '';
  Totaliza := True;
  lbCR.Caption := '0.00';
  lbDB.Caption := '0.00';
  lbBAL.Caption := '0.00';
  
  QCargosSUC_CODIGO.Value := QSucursalsuc_codigo.Value;
  QCargosCAR_FECHA.Value  := Date;
  QCargosCAR_STATUS.Value := 'APL';
  QCargosCAR_TIPO.Value   := 'OTR';
  QCargosCAR_FORMA.Value  := 'D';
  QCargosEMP_CODIGO.Value := dm.QEmpresasEMP_CODIGO.Value;
  QCargosUSU_CODIGO.Value := dm.Usuario;
  QCargosCAR_ABONO.Value  := 0;
  QCargoscar_retencion.Value := 0;
  QCargoscar_descuento.Value := 0;
  QCargosCAR_MONTO.Value := 0;
  QCargosCAR_RETENCION.Value := 0;
  QCargosCAR_TASA.Value := 1;
  

  QDetalle.Close;
  QDetalle.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  QDetalle.Parameters.ParamByName('ban').Value := -1;
  QDetalle.Parameters.ParamByName('num').Value := -1;
  QDetalle.Parameters.ParamByName('ano').Value := -1;
  QDetalle.Parameters.ParamByName('mes').Value := -1;
  QDetalle.Parameters.ParamByName('suc').Value := -1;
  QDetalle.Open;

  QFacturas.Close;
  QFacturas.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  QFacturas.Parameters.ParamByName('ban').Value := -1;
  QFacturas.Parameters.ParamByName('num').Value := -1;
  QFacturas.Parameters.ParamByName('ano').Value := -1;
  QFacturas.Parameters.ParamByName('mes').Value := -1;
  QFacturas.Parameters.ParamByName('suc').Value := -1;
  QFacturas.Open;

  QCentro.Close;
  QCentro.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;;
  QCentro.Parameters.ParamByName('ano').Value := -1;
  QCentro.Parameters.ParamByName('mes').Value := -1;
  QCentro.Parameters.ParamByName('num').Value := -1;
  QCentro.Parameters.ParamByName('suc').Value := -1;
  QCentro.Open;
end;

procedure TfrmCargosBanco.QDetalleNewRecord(DataSet: TDataSet);
begin
  QDetalleBAN_CODIGO.Value := QCargosBAN_CODIGO.Value;
  QDetalleCAR_NUMERO.Value := QCargosCAR_NUMERO.Value;
  QDetalleCAR_ANO.Value    := QCargosCAR_ANO.Value;
  QDetalleCAR_MES.Value    := QCargosCAR_MES.Value;
  QDetalleEMP_CODIGO.Value := dm.QEmpresasEMP_CODIGO.Value;
  QDetalleSUC_CODIGO.Value := QCargosSUC_CODIGO.Value;
end;

procedure TfrmCargosBanco.GridCuentasColEnter(Sender: TObject);
begin
  if GridCuentas.SelectedIndex = 2 then
    GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1;
end;

procedure TfrmCargosBanco.GridCuentasEnter(Sender: TObject);
begin
  GridCuentas.SelectedIndex := 1;
end;

procedure TfrmCargosBanco.GridCuentasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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
  if key = vk_f6 then btEliminaClick(Self);
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

procedure TfrmCargosBanco.QDetalleCAT_CUENTAChange(Sender: TField);
begin
  if not QDetalleCAT_CUENTA.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre, cat_origen, cat_movimiento from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
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

procedure TfrmCargosBanco.btBuscaCtaClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.Query.Add('and cat_movimiento = '+#39+'S'+#39);
  Search.AliasFields.Add('Descripción');
  Search.AliasFields.Add('Cuenta');
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catalogo de Cuentas';
  if Search.execute then
  begin
    QDetalle.Edit;
    QDetalleCAT_CUENTA.Value := Search.ValueField;
  end;
end;

procedure TfrmCargosBanco.btEliminaClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR LA CUENTA?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QDetalle.Delete
  end;
  GridCuentas.setfocus;
end;

procedure TfrmCargosBanco.Totalizar;
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

procedure TfrmCargosBanco.QDetalleAfterPost(DataSet: TDataSet);
begin
  Totalizar;
end;

procedure TfrmCargosBanco.QDetalleAfterDelete(DataSet: TDataSet);
begin
  Totalizar;
end;

procedure TfrmCargosBanco.btLimpiarClick(Sender: TObject);
begin
  if messagedlg('DESEA LIMPIAR LA PANTALLA Y EMPEZAR UN CARGO NUEVO?',
  mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QCargos.Close;
    QCargos.Parameters.ParamByName('banco').Value := -1;
    QCargos.Parameters.ParamByName('ano').Value := -1;
    QCargos.Parameters.ParamByName('mes').Value := -1;
    QCargos.Parameters.ParamByName('num').Value := -1;
    QCargos.Parameters.ParamByName('suc').Value := -1;
    QCargos.Open;
    end;
    QCargos.Insert;
    DBEdit1.SetFocus;
end;

procedure TfrmCargosBanco.QDetalleBeforePost(DataSet: TDataSet);
begin
  if QDetalleCAT_NOMBRE.IsNull then QDetalle.Cancel;
end;

procedure TfrmCargosBanco.btGrabarClick(Sender: TObject);
var
  a : integer;
begin
  if lbBAL.Caption <> '0.00' then
  begin
    MessageDlg('LAS CUENTAS CONTABLES DE ESTE CARGO'+#13+
               'NO ESTAN CUADRADAS',mtError,[mbok],0);
    GridCuentas.SetFocus;
  end
  else if Trim(DBEdit6.Text) = '' then
  begin
    MessageDlg('DEBE ESPECIFICAR LA PRIMERA LINEA DEL CONCEPTO',mtError,[mbok],0);
    DBEdit6.SetFocus;
  end
  else if (QCargosCAR_NUMERO.Value = 0) or (QCargosCAR_NUMERO.isnull) then
  begin
    MessageDlg('DEBE ESPECIFICAR EL NUMERO DE DEPOSITO',mtError,[mbok],0);
    DBEdit2.SetFocus;
  end
  else if (QCargosBAN_CODIGO.Value = 0) or (QCargosBAN_CODIGO.isnull) then
  begin
    MessageDlg('DEBE ESPECIFICAR EL NUMERO BANCO',mtError,[mbok],0);
    DBEdit1.SetFocus;
  end
  else if QCargosCAR_MONTO_BANCO.Value <= 0 then
  begin
    MessageDlg('EL MONTO DEBE SER MAYOR QUE CERO (0)',mtError,[mbok],0);
    DBEdit4.SetFocus;
  end
  else if (rbtipo.ItemIndex = 0) and (TotalPagoFacturas = 0) then
  begin
    MessageDlg('DEBE ESPECIFICAR LAS FACTURAS QUE SE VAN A PAGAR',mtError,[mbok],0);
    PageControl1.ActivePageIndex := 1;
  end
  else if Trim(tBanco.Text) = '' then
  begin
    MessageDlg('ESTE BANCO NO EXISTE',mtError,[mbok],0);
    DBEdit1.SetFocus;
  end
  else if (not QCargoscar_ncf.isnull) and (Trim(QCargoscar_ncf.AsString) <> '') and
  NOT (length(Trim(QCargoscar_ncf.AsString)) IN [19,11,13]) then
  begin
    messagedlg('DEBE DIGITAR UN NCF CORRECTO',mterror,[mbok],0);
    DBEdit13.Setfocus;
  end
  else if (not QCargoscar_ncf.isnull) and (Trim(QCargoscar_ncf.AsString) <> '') and (length(Trim(QCargoscar_rnc.AsString )) = 0) then
  begin
    messagedlg('EL PROVEEDOR NO POSEE RNC, DEBE ACTUALIZAR ESTE CAMPO',mterror,[mbok],0);
    DBEdit14.Setfocus;
  end
  else if (not QCargoscar_ncf.isnull) and (Trim(QCargoscar_ncf.AsString) <> '') and (length(Trim(QCargoscar_rnc.AsString )) < 9) then
  begin
    messagedlg('EL PROVEEDOR NO POSEE RNC, DEBE ACTUALIZAR ESTE CAMPO',mterror,[mbok],0);
    DBEdit14.Setfocus;
  end
  else if (not QCargoscar_ncf.isnull) and (Trim(QCargoscar_ncf.AsString) <> '') and (length(Trim(QCargoscar_rnc.AsString )) > 11) then
  begin
    messagedlg('EL PROVEEDOR NO POSEE RNC, DEBE ACTUALIZAR ESTE CAMPO',mterror,[mbok],0);
    DBEdit14.Setfocus;
  end
  else if MessageDlg('TODOS LOS DATOS ESTAN CORRECTOS?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select count(*) as cant');
    dm.Query1.SQL.Add('from cargosbanco');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and car_NCF = :ncf');
    dm.Query1.SQL.Add('and car_rnc = '+QuotedStr(DBEdit14.Text));
    dm.Query1.SQL.Add('and car_ncf is not null');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('ncf').Value := QCargoscar_ncf.Value;
    dm.Query1.Open;
    if (not QCargoscar_ncf.isnull) and (Trim(QCargoscar_ncf.AsString) <> '') and NOT (length(Trim(QCargoscar_ncf.AsString)) IN [11,19,13]) then
    begin
      messagedlg('DEBE DIGITAR UN NCF CORRECTO',mterror,[mbok],0);
      DBEdit13.Setfocus;
    end
    else if (not QCargoscar_ncf.isnull) and (Trim(QCargoscar_ncf.AsString) <> '') and
    ((copy(Trim(QCargoscar_ncf.AsString),3,1) <> '1') and (copy(Trim(QCargoscar_ncf.AsString),11,1) <> '1')) then
    begin
      messagedlg('EL NCF DIGITADO SOLO DEBE SER CON VALOR FISCAL',mterror,[mbok],0);
      DBEdit13.Setfocus;
    end
    else if (not QCargoscar_ncf.isnull) and (Trim(QCargoscar_ncf.AsString) <> '') and (dm.Query1.FieldByName('cant').AsInteger > 0) then
    begin
      MessageDlg('ESTE NCF ESTA REPETIDO',mtError,[mbok],0);
      DBEdit13.Setfocus;
    end
    else
    begin
      Totaliza := False;
      QCargosEMP_CODIGO.Value := dm.QEmpresasEMP_CODIGO.Value;
      //Otro
      QCargos.Post;
      QCargos.UpdateBatch;

      QDetalle.DisableControls;
      QDetalle.First;
      a := 0;
      while not QDetalle.eof do
      begin
        a := a + 1;
        QDetalle.Edit;
        QDetalleBAN_CODIGO.Value := QCargosBAN_CODIGO.Value;
        QDetalleCAR_NUMERO.Value := QCargosCAR_NUMERO.Value;
        QDetalleCAR_ANO.Value    := QCargosCAR_ANO.Value;
        QDetalleCAR_MES.Value    := QCargosCAR_MES.Value;
        QDetalleDET_SECUENCIA.Value := a;
        QDetalleEMP_CODIGO.Value := dm.QEmpresasEMP_CODIGO.Value;
        QDetalleSUC_CODIGO.Value := QCargosSUC_CODIGO.Value;
        QDetalle.Post;
        QDetalle.Next;
      end;
      QDetalle.First;
      QDetalle.EnableControls;
      QDetalle.UpdateBatch;

      //Centros de costo
      QCentro.DisableControls;
      QCentro.First;
      a := 0;
      while not QCentro.eof do
      begin
        a := a + 1;
        QCentro.Edit;
        QCentroBAN_CODIGO.Value := QCargosBAN_CODIGO.Value;
        QCentrocar_numero.Value := QCargosCAR_NUMERO.Value;
        QCentrocar_ano.Value    := QCargosCAR_ANO.Value;
        QCentrocar_mes.Value    := QCargosCAR_MES.Value;
        QCentroDET_SECUENCIA.Value := a;
        QCentroEMP_CODIGO.Value := dm.QEmpresasEMP_CODIGO.Value;
        QCentrosuc_codigo.Value := QCargosSUC_CODIGO.Value;
        QCentro.Post;
        QCentro.Next;
      end;
      QCentro.First;
      QCentro.EnableControls;
      QCentro.UpdateBatch;

      //Facturas CxP
      if rbtipo.ItemIndex = 0 then
      begin
        QFacturas.DisableControls;
        QFacturas.First;
        a := 0;
        while not QFacturas.eof do
        begin
          a := a + 1;
          QFacturas.Edit;
          QFacturasBAN_CODIGO.Value := QCargosBAN_CODIGO.Value;
          QFacturasCAR_NUMERO.Value := QCargosCAR_NUMERO.Value;
          QFacturasCAR_ANO.Value    := QCargosCAR_ANO.Value;
          QFacturasCAR_MES.Value    := QCargosCAR_MES.Value;
          QFacturasFAC_SECUENCIA.Value := a;
          QFacturasEMP_CODIGO.Value := dm.QEmpresasEMP_CODIGO.Value;
          QFacturasSUC_CODIGO.Value := QCargosSUC_CODIGO.Value;
          QFacturas.Post;
          QFacturas.Next;
        end;
        QFacturas.First;
        QFacturas.EnableControls;
        QFacturas.UpdateBatch;
      end;

 {       if QCargos.State = dsEdit then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('execute contpr_graba_cargosbanco :emp, :suc, :ban,');
    dm.Query1.SQL.Add(':ano, :mes, :num, :acc');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('ban').Value := QCargosBAN_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('num').Value := QCargosCAR_NUMERO.Value;
    dm.Query1.Parameters.ParamByName('ano').Value := QCargosCAR_ANO.Value;
    dm.Query1.Parameters.ParamByName('mes').Value := QCargosCAR_MES.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := QCargosSUC_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('acc').Value := 2;
    dm.Query1.ExecSQL;
  end;

  QCargosCAR_ANO.Value := YearOf(QCargosCAR_FECHA.Value);
  QCargosCAR_MES.Value := MonthOf(QCargosCAR_FECHA.Value);
  }
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('execute contpr_graba_cargosbanco :emp, :suc, :ban,');
      dm.Query1.SQL.Add(':ano, :mes, :num, :acc');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('ban').Value := QCargosBAN_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('num').Value := QCargosCAR_NUMERO.Value;
      dm.Query1.Parameters.ParamByName('ano').Value := QCargosCAR_ANO.Value;
      dm.Query1.Parameters.ParamByName('mes').Value := QCargosCAR_MES.Value;
      dm.Query1.Parameters.ParamByName('suc').Value := QCargosSUC_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('acc').Value := 1;
      dm.Query1.ExecSQL;

      if QCargosSUP_CODIGO.Value > 0 then begin
      qRepBalanceFact.Close;
      qRepBalanceFact.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      qRepBalanceFact.Parameters.ParamByName('SUP').Value := QCargosSUP_CODIGO.Value;
      qRepBalanceFact.ExecSQL;
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('execute pr_actualiza_bce :emp');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.ExecSQL;
      end;

      if MessageDlg('DESEA IMPRIMIR ESTE CARGO BANCARIO?',mtConfirmation,[mbyes,mbno],0) = mryes then
    begin
      Application.CreateForm(TRepCargoBancario, RepCargoBancario);
      RepCargoBancario.QCargo.Close;
      RepCargoBancario.QDetalle.Close;
      RepCargoBancario.QFacturas.Close;
      RepCargoBancario.QCargo.Parameters.ParamByName('EMP').Value := QCargosEMP_CODIGO.Value;
      RepCargoBancario.QCargo.Parameters.ParamByName('CAR').Value := QCargosCAR_NUMERO.Value;
      RepCargoBancario.QCargo.Parameters.ParamByName('BAN').Value := QCargosBAN_CODIGO.Value;
      RepCargoBancario.QCargo.Parameters.ParamByName('SUC').Value := QCargosSUC_CODIGO.Value;
      RepCargoBancario.QCargo.Open;
      RepCargoBancario.QDetalle.Open;
      RepCargoBancario.QFacturas.Open;
      RepCargoBancario.PrinterSetup;
      RepCargoBancario.Print;
      RepCargoBancario.Destroy;
    end;

      QCargos.Parameters.ParamByName('banco').Value := -1;
      QCargos.Parameters.ParamByName('ano').Value := -1;
      QCargos.Parameters.ParamByName('mes').Value := -1;
      QCargos.Parameters.ParamByName('num').Value := -1;
      QCargos.Parameters.ParamByName('suc').Value := -1;
      QCargos.Open;
      QCargos.Insert;
      DBEdit1.SetFocus;
    end;
  end
  else
    GridCuentas.SetFocus;
end;

procedure TfrmCargosBanco.QCargosBAN_CODIGOChange(Sender: TField);
begin
  if not QCargosBAN_CODIGO.IsNull then
  Begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select ban_nombre, cat_cuenta, BAN_MODSECUENCIA,');
    dm.Query1.SQL.Add('isnull(m.mon_relacionpesocompra,1) as tasa');
    dm.Query1.SQL.Add('from bancos b');
    dm.Query1.SQL.Add('left outer join moneda m on (b.emp_codigo = m.emp_codigo');
    dm.Query1.SQL.Add('and b.mon_codigo = m.mon_codigo)');
    dm.Query1.SQL.Add('where b.emp_codigo = :emp');
    dm.Query1.SQL.Add('and b.ban_codigo = :ban');
    dm.Query1.SQL.Add('and b.suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('ban').Value := QCargosBAN_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := QCargosSUC_CODIGO.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
      tBanco.Text := ''
    else
    begin
      tBanco.Text := dm.Query1.FieldByName('ban_nombre').AsString;
      CtaBanco := dm.Query1.FieldByName('cat_cuenta').AsString;
      QCargosCAR_TASA.Value := dm.Query1.FieldByName('tasa').AsFloat;
      if not dm.Query1.FieldByName('cat_cuenta').IsNull then
      begin
        if not QDetalle.Locate('cat_cuenta',
        dm.Query1.FieldByName('cat_cuenta').AsString,[]) then
        Begin
          QDetalle.Append;
          QDetalleCAT_CUENTA.Value := dm.Query1.FieldByName('cat_cuenta').AsString;
          if rbForma.ItemIndex = 0 then
            QDetalleDET_ORIGEN.Value := 'Credito'
          else
            QDetalleDET_ORIGEN.Value := 'Debito';
          QDetalleDET_MONTO.Value  := QCargosCAR_MONTO.Value;
          QDetalle.Post;
        End;
      end;

      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select isnull(max(car_numero),0) as maximo');
      dm.Query1.SQL.Add('from cargosbanco');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and ban_codigo = :ban');
      //dm.Query1.SQL.Add('and car_ano = :ano');
      //dm.Query1.SQL.Add('and car_mes = :mes');
      dm.Query1.SQL.Add('and suc_codigo = :suc');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('ban').Value := QCargosBAN_CODIGO.Value;
      //dm.Query1.Parameters.ParamByName('ano').Value := QCargosCAR_ANO.Value;
      //dm.Query1.Parameters.ParamByName('mes').Value := QCargosCAR_MES.Value;
      dm.Query1.Parameters.ParamByName('suc').Value := QCargosSUC_CODIGO.Value;
      dm.Query1.Open;
      QCargosCAR_NUMERO.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
    end;
  End
  else
    tBanco.Text := '';
    
end;

procedure TfrmCargosBanco.QCargosAfterInsert(DataSet: TDataSet);
begin
  accion := 1;
end;

procedure TfrmCargosBanco.QCargosAfterEdit(DataSet: TDataSet);
begin
  accion := 2;
end;

procedure TfrmCargosBanco.QCargosCLI_CODIGOChange(Sender: TField);
var
  a : integer;
begin
  if not QCargosCLI_CODIGO.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cli_nombre, cli_cuenta');
    dm.Query1.SQL.Add('from clientes');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cli_codigo = :cli');
    dm.Query1.Parameters.ParamByName('cli').Value := QCargosCLI_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      CtaBenef    := dm.Query1.FieldByName('cli_cuenta').AsString;
      tbenef.Text := dm.Query1.FieldByName('cli_nombre').AsString;
      if CtaBenef <> '' then
      begin
        if not QDetalle.Locate('cat_cuenta', CtaBenef, []) then
        begin
          QDetalle.Append;
          QDetalleCAT_CUENTA.Value := CtaBenef;
          QDetalleDET_MONTO.Value  := QCargosCAR_MONTO_BANCO.Value;
          QDetalleDET_ORIGEN.Value := 'Credito';
          QDetalle.Post;
        end
        else
        begin
          QDetalle.Edit;
          QDetalleDET_MONTO.Value  := QCargosCAR_MONTO_BANCO.Value;
          QDetalleDET_ORIGEN.Value := 'Credito';
          QDetalle.Post;
        end;
      end;
    end
    else
      tbenef.text := '';
  end
  else
    tbenef.Text := '';
end;

procedure TfrmCargosBanco.btbenefClick(Sender: TObject);
begin
  if rbtipo.ItemIndex = 1 then
  begin
    Search.Query.Clear;
    Search.Query.Add('select cli_nombre, cli_codigo');
    Search.Query.Add('from clientes');
    Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
    Search.AliasFields.Clear;
    Search.AliasFields.Add('Nombre');
    Search.AliasFields.Add('Código');
    Search.ResultField := 'cli_codigo';
    Search.Title := 'Clientes';
    if Search.execute then
    begin
      QCargosCLI_CODIGO.Value := StrToInt(Search.ValueField);
      PageControl1.ActivePageIndex := 0;
      GridCuentas.SetFocus;
    end;
  end
  else
  if rbtipo.ItemIndex = 0 then
  begin
    Search.Query.Clear;
    Search.Query.Add('select sup_nombre, sup_codigo');
    Search.Query.Add('from proveedores');
    Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
    Search.Query.Add('and sup_balance > 0');
    Search.AliasFields.Clear;
    Search.AliasFields.Add('Nombre');
    Search.AliasFields.Add('Código');
    Search.ResultField := 'sup_codigo';
    Search.Title := 'Proveedores';
    if Search.execute then
    begin
      QCargosSUP_CODIGO.Value := StrToInt(Search.ValueField);
      PageControl1.ActivePageIndex := 0;
      GridCuentas.SetFocus;
    end;
  end
  else
  if rbtipo.ItemIndex = 2 then
  begin
    Search.Query.Clear;
    Search.Query.Add('select sup_nombre, sup_codigo');
    Search.Query.Add('from proveedores');
    Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
    Search.Query.Add('and sup_balance = 0');
    Search.AliasFields.Clear;
    Search.AliasFields.Add('Nombre');
    Search.AliasFields.Add('Código');
    Search.ResultField := 'sup_codigo';
    Search.Title := 'Proveedores';
    if Search.execute then
    begin
      QCargosSUP_CODIGO.Value := StrToInt(Search.ValueField);
      PageControl1.ActivePageIndex := 0;
      GridCuentas.SetFocus;
    end;
  end;

end;

procedure TfrmCargosBanco.rbFormaClick(Sender: TObject);
begin
  if CtaBanco <> '' then
  begin
    if not QDetalle.Locate('cat_cuenta', CtaBanco, []) then
    begin
      QDetalle.Append;
      QDetalleBAN_CODIGO.Value := QCargosBAN_CODIGO.Value;
      QDetalleCAT_CUENTA.Value := CtaBanco;
      if rbForma.ItemIndex = 0 then
        QDetalleDET_ORIGEN.Value := 'Credito'
      else
        QDetalleDET_ORIGEN.Value := 'Debito';
      QDetalleDET_MONTO.Value  := QCargosCAR_MONTO_BANCO.Value;
      QDetalle.Post;
    end
    else
    begin
      QDetalle.Edit;
      QDetalleBAN_CODIGO.Value := QCargosBAN_CODIGO.Value;
      QDetalleCAT_CUENTA.Value := CtaBanco;
      if rbForma.ItemIndex = 0 then
        QDetalleDET_ORIGEN.Value := 'Credito'
      else
        QDetalleDET_ORIGEN.Value := 'Debito';
      QDetalleDET_MONTO.Value  := QCargosCAR_MONTO_BANCO.Value;
      QDetalle.Post;
    end;
  end;
end;

procedure TfrmCargosBanco.QCargosCAR_NUMEROChange(Sender: TField);
var
   Suc : Integer;
begin
  if not QCargosCAR_NUMERO.IsNull then
  begin
    Suc := QCargosSUC_CODIGO.Value;
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select car_numero, ban_codigo, car_tipo, car_status,');
    Query1.SQL.Add('car_ano, car_mes, car_abono, emp_codigo');
    Query1.SQL.Add('from cargosbanco');
    Query1.SQL.Add('where ban_codigo = :ban');
    Query1.SQL.Add('and car_numero = :num');
    Query1.SQL.Add('and emp_codigo = :emp');
    //Query1.SQL.Add('and car_ano = :ano');
    //Query1.SQL.Add('and car_mes = :mes');
    Query1.SQL.Add('and suc_codigo = :suc');
    Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    Query1.Parameters.ParamByName('ban').Value := QCargosBAN_CODIGO.Value;
    Query1.Parameters.ParamByName('num').Value := QCargosCAR_NUMERO.Value;
    //Query1.Parameters.ParamByName('ano').Value := QCargosCAR_ANO.Value;
    //Query1.Parameters.ParamByName('mes').Value := QCargosCAR_MES.Value;
    Query1.Parameters.ParamByName('suc').Value := Suc;
    Query1.Open;
    if Query1.RecordCount > 0 then
    begin
      if Query1.FieldByName('car_status').AsString = 'ANU' then
      begin
        MessageDlg('ESTE CARGO NO PUEDE MODIFICARSE, DEBIDO A'+#13+
                   'QUE ESTA ANULADO',mtError,[mbok],0);
        QCargosCAR_NUMERO.Clear;
        Abort;
      end
      else if Query1.FieldByName('car_abono').AsFloat > 0 then
      begin
        MessageDlg('ESTE CARGO NO PUEDE MODIFICARSE, DEBIDO A'+#13+
                   'QUE TIENE ABONOS',mtError,[mbok],0);
        QCargosCAR_NUMERO.Clear;
        Abort;
      end
      else if Query1.FieldByName('car_tipo').AsString = 'SUP' then
      begin
        MessageDlg('ESTE CARGO NO PUEDE MODIFICARSE, DEBIDO A'+#13+
                   'QUE ES DE TIPO CUENTAS POR PAGAR',mtError,[mbok],0);
        QCargosCAR_NUMERO.Clear;
        Abort;
      end
      else
      Begin
        QCargos.Close;
        QCargos.Parameters.ParamByName('emp_codigo').Value := dm.QEmpresasEMP_CODIGO.Value;
        QCargos.Parameters.ParamByName('banco').Value := Query1.FieldByName('ban_codigo').AsInteger;
        QCargos.Parameters.ParamByName('num').Value   := Query1.FieldByName('car_numero').AsInteger;
        QCargos.Parameters.ParamByName('ano').Value   := Query1.FieldByName('car_ano').AsInteger;
        QCargos.Parameters.ParamByName('mes').Value   := Query1.FieldByName('car_mes').AsInteger;
        QCargos.Parameters.ParamByName('suc').Value   := Suc;
        QCargos.Open;

        QDetalle.Close;
        QDetalle.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        QDetalle.Parameters.ParamByName('ban').Value := QCargosBAN_CODIGO.Value;
        QDetalle.Parameters.ParamByName('num').Value := QCargosCAR_NUMERO.Value;
        QDetalle.Parameters.ParamByName('ano').Value := QCargosCAR_ANO.Value;
        QDetalle.Parameters.ParamByName('mes').Value := QCargosCAR_MES.Value;
        QDetalle.Parameters.ParamByName('suc').Value := Suc;
        QDetalle.Open;

        QCentro.Close;
        QCentro.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        QCentro.Parameters.ParamByName('ban').Value := QCargosBAN_CODIGO.Value;
        QCentro.Parameters.ParamByName('num').Value := QCargosCAR_NUMERO.Value;
        QCentro.Parameters.ParamByName('suc').Value := Suc;
        QCentro.Parameters.ParamByName('ano').Value := QCargosCAR_ANO.Value;
        QCentro.Parameters.ParamByName('mes').Value := QCargosCAR_MES.Value;
        QCentro.Open;

        Totalizar;
        QCargos.Edit;
      end;
    end;
  end;
end;

procedure TfrmCargosBanco.QCargosCAR_MONTOChange(Sender: TField);
begin
  if (not QCargosCAR_MONTO.IsNull) and (CtaBanco <> '') and (QCargosCAR_MONTO.Value > 0) then
  Begin
    QCargosCAR_MONTO_BANCO.Value := QCargosCAR_MONTO.Value -
                                       (QCargosCAR_DESCUENTO.Value +
                                        (QCargosCAR_RETENCION.Value/QCargosCAR_TASA.Value));
    if rbTipo.ItemIndex <> 0 then
    begin
      QDetalle.DisableControls;
      QDetalle.First;
      while not QDetalle.Eof do
      begin
        QDetalle.Edit;
        QDetalleDET_MONTO.Value := QCargosCAR_MONTO_BANCO.Value;
        QDetalle.Post;
        QDetalle.Next;
      end;
      QDetalle.First;
      QDetalle.EnableControls;
      if rbTipo.ItemIndex = 1 then
      begin
        QDetalle.Locate('cat_cuenta',CtaBanco,[]);
        QDetalle.Edit;
        QDetalleDET_MONTO.Value := QCargosCAR_MONTO_BANCO.Value;
        QDetalle.Post;
      end;
    end
    else
    begin
      QDetalle.Locate('cat_cuenta',CtaBanco,[]);
      QDetalle.Edit;
      QDetalleDET_MONTO.Value := QCargosCAR_MONTO_BANCO.Value;
      QDetalle.Post;
    end;
 { Exit;
  End
  else
  begin
  IF DBEdit4.Text <> '' THEN BEGIN
    QCargosCAR_MONTO_BANCO.Value := QCargosCAR_MONTO.Value -
                                       (QCargosCAR_DESCUENTO.Value +
                                        (QCargosCAR_RETENCION.Value/QCargosCAR_TASA.Value));
  end;}
  end;
end;


procedure TfrmCargosBanco.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     if (activecontrol.classtype <> tdbgrid) and (activecontrol.classtype <> TDBGridObj) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmCargosBanco.QCargosSUC_CODIGOChange(Sender: TField);
var
  Suc : integer;
begin
  QCargosCAR_ANO.Value := YearOf(QCargosCAR_FECHA.Value);
  QCargosCAR_MES.Value := MonthOf(QCargosCAR_FECHA.Value);
  Suc := QCargosSUC_CODIGO.Value;
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select isnull(max(car_numero),0) as maximo');
  dm.Query1.SQL.Add('from cargosbanco');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and ban_codigo = :ban');
  //dm.Query1.SQL.Add('and car_ano = :ano');
  //dm.Query1.SQL.Add('and car_mes = :mes');
  dm.Query1.SQL.Add('and suc_codigo = :suc');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('ban').Value := QCargosBAN_CODIGO.Value;
  //dm.Query1.Parameters.ParamByName('ano').Value := QCargosCAR_ANO.Value;
  //dm.Query1.Parameters.ParamByName('mes').Value := QCargosCAR_MES.Value;
  dm.Query1.Parameters.ParamByName('suc').Value := Suc;
  dm.Query1.Open;
  QCargosCAR_NUMERO.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;

end;

procedure TfrmCargosBanco.QCargosREC_NUMEROChange(Sender: TField);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select isnull(rec_comisionpagada,0) as rec_comisionpagada from recibos');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and suc_codigo = :suc');
  dm.Query1.SQL.Add('and rec_numero = :rec');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
  dm.Query1.Parameters.ParamByName('rec').Value := QCargosREC_NUMERO.Value;
  dm.Query1.Open;
  if (dm.Query1.RecordCount > 0) and (dm.Query1.FieldByName('rec_comisionpagada').Value > 0) then
    QCargosCAR_COMISION.Value := dm.Query1.FieldByName('rec_comisionpagada').Value;
end;

procedure TfrmCargosBanco.btreciboClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select rec_nombre, rec_numeromanual, rec_numero');
  Search.Query.Add('from recibos');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.Query.Add('and suc_codigo = '+IntToStr(DBLookupComboBox2.KeyValue));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Recibo Manual');
  Search.AliasFields.Add('Numero');
  Search.ResultField := 'rec_numero';
  Search.Title := 'Recibos';
  if Search.execute then
  begin
    QCargosREC_NUMERO.Value := StrToInt(Search.ValueField);
    DBEdit5.SetFocus;
  end;
end;

procedure TfrmCargosBanco.GriFacturasColEnter(Sender: TObject);
begin
  if GriFacturas.SelectedIndex < 6 then
    GriFacturas.SelectedIndex := 6;
end;

procedure TfrmCargosBanco.GriFactuasEnter(Sender: TObject);
begin
  GriFacturas.SelectedIndex := 6;
end;

procedure TfrmCargosBanco.GriFacturasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if GriFacturas.SelectedIndex < 8 then
       GriFacturas.SelectedIndex := GriFacturas.SelectedIndex + 1
    else
    begin
      GriFacturas.SelectedIndex := 6;
      QFacturas.Edit;
      QFacturas.Post;
      QFacturas.Next;
    end;
  end;
  if key = vk_f8 then
  begin
    QFacturas.Edit;
    QFacturasFAC_PAGO.Value      := QFacturasFAC_SALDO.Value;
    QFacturasFAC_DESCUENTO.Value := 0;
    QFacturas.Post;
  end;
end;

procedure TfrmCargosBanco.TotalizaFac;
var
  Total, Desc, Ret : Double;
  punt : TBookmark;
begin
  if Totaliza = True then
  Begin
    Total := 0;
    Desc  := 0;
    Ret   := 0;
    punt := QFacturas.GetBookmark;
    QFacturas.DisableControls;
    QFacturas.First;
    TotalPagoFacturas := 0;
    while not QFacturas.Eof do
    Begin
      Total := Total + QFacturasFAC_PAGO.Value;
      Desc  := Desc  + QFacturasFAC_DESCUENTO.Value;
      Ret   := Ret   + QFacturasFAC_RETENCION.Value;
      TotalPagoFacturas := TotalPagoFacturas + QFacturasFAC_PAGO.Value;
      QFacturas.Next;
    End;
    QFacturas.GotoBookmark(punt);
    QFacturas.EnableControls;
    QCargosCAR_MONTO.Value := (Total+Ret+Desc)/QCargoscar_tasa.Value;
    QCargosCAR_DESCUENTO.Value := Desc/QCargoscar_TASA.Value;
    QCargosCAR_RETENCION.Value := Ret;
    if CtaBenef <> '' then
      if QDetalle.Locate('cat_cuenta',CtaBenef,[]) then
      Begin
        QDetalle.Edit;
        QDetalleDET_MONTO.Value := Total + QCargoscar_RETENCION.Value + QCargoscar_DESCUENTO.Value;
        QDetalle.Post;
      End;
  End;
end;

procedure TfrmCargosBanco.QFacturasBeforeDelete(DataSet: TDataSet);
begin
  Abort;
end;

procedure TfrmCargosBanco.QFacturasAfterPost(DataSet: TDataSet);
begin
  TotalizaFac;
end;

procedure TfrmCargosBanco.QCargosSUP_CODIGOChange(Sender: TField);
var
  a : integer;
begin
  if not QCargosSUP_CODIGO.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select sup_nombre, sup_cuenta from proveedores');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and sup_codigo = :sup');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.ParamByName('sup').Value := QCargosSUP_CODIGO.Value;
    dm.Query1.Open;
    tbenef.Text := dm.Query1.FieldByName('sup_nombre').AsString;

    CtaBenef    := dm.Query1.FieldByName('sup_cuenta').AsString;
    if CtaBenef <> '' then
    begin
      if not QDetalle.Locate('cat_cuenta', CtaBenef, []) then
      begin
        QDetalle.Append;
        QDetalleCAT_CUENTA.Value := CtaBenef;
        QDetalleDET_MONTO.Value  := QCargosCAR_MONTO.Value;
        QDetalleDET_ORIGEN.Value := 'Debito';
        QDetalle.Post;
      end
      else
      begin
        QDetalle.Edit;
        QDetalleDET_MONTO.Value  := QCargosCAR_MONTO.Value;
        QDetalleDET_ORIGEN.Value := 'Debito';
        QDetalle.Post;
      end;
    end;

    //Buscando Facturas
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select fac_numero, fac_fecha, fac_vence,');
    Query1.SQL.Add('fac_total, fac_abono, fac_itbis');
    Query1.SQL.Add('from provfacturas');
    Query1.SQL.Add('where emp_codigo = :emp');
    Query1.SQL.Add('and sup_codigo = :sup');
    Query1.SQL.Add('and fac_status = '+#39+'PEN'+#39);
    Query1.SQL.Add('order by fac_fecha');
    Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    Query1.Parameters.ParamByName('sup').Value := QCargosSUP_CODIGO.Value;
    Query1.Open;
    Query1.DisableControls;
    QFacturas.Close;
    QFacturas.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QFacturas.Parameters.ParamByName('suc').Value := QCargosSUC_CODIGO.Value;
    QFacturas.Parameters.ParamByName('ban').Value := QCargosBAN_CODIGO.Value;
    QFacturas.Parameters.ParamByName('ano').Value := QCargosCAR_ANO.Value;
    QFacturas.Parameters.ParamByName('mes').Value := QCargosCAR_MES.Value;
    QFacturas.Parameters.ParamByName('num').Value := QCargosCAR_NUMERO.Value;
    QFacturas.Open;
    QFacturas.DisableControls;
    a := 0;
    while not Query1.Eof do
    Begin
      a := a + 1;
      QFacturas.Insert;
      QFacturasSUC_CODIGO.Value := QCargosSUC_CODIGO.Value;
      QFacturasFAC_ABONO.Value  := StrToFloat(Format('%10.2f',[
                                   Query1.FieldByName('fac_abono').AsFloat]));
      QFacturasFAC_NUMERO.Value := Query1.FieldByName('fac_numero').AsString;
      QFacturasFAC_SALDO.Value  := StrToFloat(Format('%10.2f',[
                                   Query1.FieldByName('fac_total').AsFloat]))-
                                   StrToFloat(Format('%10.2f',[
                                   Query1.FieldByName('fac_abono').AsFloat]));
      QFacturasFAC_SECUENCIA.Value := a;
      QFacturasSUP_CODIGO.Value := QCargosSUP_CODIGO.Value;
      QFacturasEMP_CODIGO.Value := dm.QEmpresasEMP_CODIGO.Value;
      QFacturasCAR_NUMERO.Value := QCargosCAR_NUMERO.Value;
      QFacturasBAN_CODIGO.Value := QCargosBAN_CODIGO.Value;
      QFacturascar_ano.Value    := QCargosCAR_ANO.Value;
      QFacturascar_mes.Value    := QCargosCAR_MES.Value;
      QFacturassuc_codigo.Value := QCargosSUC_CODIGO.Value;
      QFacturasFAC_FECHA.Value  := Dateof(Query1.FieldByName('fac_fecha').AsDateTime);
      QFacturasFAC_VENCE.Value  := Dateof(Query1.FieldByName('fac_vence').AsDateTime);
      QFacturasFAC_TOTAL.Value  := StrToFloat(Format('%10.2f',[
                                   Query1.FieldByName('fac_total').AsFloat]));
      QFacturasFAC_ITBIS.Value  := Query1.FieldByName('fac_itbis').AsFloat;
      QFacturas.Post;
      Query1.Next;
    End;
    Query1.EnableControls;
    QFacturas.EnableControls;
    QFacturas.First;
    PageControl1.ActivePageIndex := 0;
    GridCuentas.SetFocus;
  end;
end;

procedure TfrmCargosBanco.QCargosCAR_MONTO_BANCOChange(Sender: TField);
begin
  if not QCargosCAR_MONTO_BANCO.IsNull then
  begin
    if rbTipo.ItemIndex = 1 then
    begin
      QDetalle.Locate('cat_cuenta',CtaBanco,[]);
      QDetalle.Edit;
      QDetalleDET_MONTO.Value  := QCargosCAR_MONTO_BANCO.Value;
      QDetalleDET_ORIGEN.Value := 'Debito';
      QDetalle.Post;
    end;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(mon_codigo,0) as mon_codigo from bancos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ban_codigo = :ban');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('ban').Value := QCargosBAN_CODIGO.Value;
    dm.Query1.Open;
    if dm.Query1.FieldByName('mon_codigo').AsInteger > 0 then
    begin
      if dm.Query1.FieldByName('mon_codigo').AsInteger <> dm.QParametrospar_moneda_local.Value then
      begin
        if not dm.QContabpar_cta_prima.IsNull then
        begin
          if not QDetalle.Locate('cat_cuenta', dm.QContabpar_cta_prima.Value,[]) then
          Begin
            QDetalle.Append;
            QDetalleCAT_CUENTA.Value := dm.QContabpar_cta_prima.Value;
            QDetalleDET_ORIGEN.Value := 'Credito';
            QDetalleDET_MONTO.Value  := (QCargosCAR_MONTO_BANCO.Value*QCargoscar_tasa.Value) - QCargosCAR_MONTO_BANCO.Value;
            QDetalle.Post;
          End
          else
          Begin
            QDetalle.Edit;
            QDetalleCAT_CUENTA.Value := dm.QContabpar_cta_prima.Value;
            QDetalleDET_ORIGEN.Value := 'Credito';
            QDetalleDET_MONTO.Value  := (QCargosCAR_MONTO_BANCO.Value*QCargoscar_tasa.Value) - QCargosCAR_MONTO_BANCO.Value;
            QDetalle.Post;
          End;
        end;
      end;
    end;
  end;
end;

procedure TfrmCargosBanco.QCargoscar_descuentoChange(Sender: TField);
begin
  if (not QCargoscar_DESCUENTO.IsNull) and (QCargoscar_DESCUENTO.Value > 0) then
  begin
    QCargoscar_MONTO_BANCO.Value := QCargoscar_MONTO.Value -
                                       (QCargoscar_DESCUENTO.Value +
                                        (QCargoscar_RETENCION.Value/QCargoscar_TASA.Value));
    if QDetalle.Locate('cat_cuenta',CtaBanco,[]) then
    begin
      QDetalle.Edit;
      QDetalleDET_MONTO.Value := QCargoscar_MONTO_BANCO.Value;
      QDetalle.Post;
    end;

    if not QDetalle.Locate('cat_cuenta',dm.QContabPAR_CTADESCCOMP.AsString,[]) then
    begin
      QDetalle.Append;
      QDetalleCAT_CUENTA.Value := dm.QContabPAR_CTADESCCOMP.AsString;
      QDetalleDET_MONTO.Value  := QCargoscar_DESCUENTO.Value;
      QDetalleDET_ORIGEN.Value := 'Credito';
      QDetalle.Post;
    end
    else
    begin
      QDetalle.Edit;
      QDetalleCAT_CUENTA.Value := dm.QContabPAR_CTADESCCOMP.AsString;
      QDetalleDET_MONTO.Value  := QCargoscar_DESCUENTO.Value;
      QDetalleDET_ORIGEN.Value := 'Credito';
      QDetalle.Post;
    end;
  end;
end;

procedure TfrmCargosBanco.QCargoscar_retencionChange(Sender: TField);
begin
  if (not QCargoscar_RETENCION.IsNull) and (QCargoscar_RETENCION.Value > 0) then
  begin
    QCargoscar_MONTO_BANCO.Value := QCargoscar_MONTO.Value -
                                       (QCargoscar_DESCUENTO.Value +
                                        (QCargoscar_RETENCION.Value/QCargoscar_TASA.Value));
    if QDetalle.Locate('cat_cuenta',CtaBanco,[]) then
    begin
      QDetalle.Edit;
      QDetalleDET_MONTO.Value := QCargoscar_MONTO_BANCO.Value;
      QDetalle.Post;
    end;
  end;
end;

procedure TfrmCargosBanco.QFacturasfac_descuentoChange(Sender: TField);
begin
  if Totaliza = True then
    if not QFacturasFAC_DESCUENTO.IsNull then
    Begin
      QFacturas.Edit;
      QFacturasFAC_PAGO.Value := StrToFloat(Format('%10.2f',[QFacturasFAC_SALDO.Value]))-
                                 StrToFloat(Format('%10.2f',[QFacturasFAC_DESCUENTO.Value]));
    End
    else
    begin
      QFacturas.Edit;
      QFacturasFAC_PAGO.Value := StrToFloat(Format('%10.2f',[QFacturasFAC_SALDO.Value]));
    end;
end;

procedure TfrmCargosBanco.QFacturasfac_retencionChange(Sender: TField);
begin
  if not QFacturasFAC_RETENCION.IsNull then
  begin
    QFacturas.Edit;
    QFacturasFAC_PAGO.Value := QFacturasFAC_SALDO.Value -
                               (QFacturasFAC_DESCUENTO.Value + QFacturasFAC_RETENCION.Value);
  end
  else if not QFacturasFAC_DESCUENTO.IsNull then
  begin
    QFacturas.Edit;
    QFacturasFAC_PAGO.Value := QFacturasFAC_SALDO.Value -
                               (QFacturasFAC_DESCUENTO.Value + QFacturasFAC_RETENCION.Value);
  end
  else
  begin
    QFacturas.Edit;
    QFacturasFAC_PAGO.Value := QFacturasFAC_SALDO.Value;
  end;
end;

procedure TfrmCargosBanco.btTipoClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.clear;
  Search.Query.add('select tip_nombre, tip_codigo');
  Search.ResultField := 'tip_codigo';
  Search.Query.add('from Tipo_Bienes_Servicios');
  Search.Title := 'Tipo de Bienes y Servicios';
  if Search.execute then
  begin
    QCargosTIP_CODIGO.value := StrToInt(Search.ValueField);
    DBEdit21.setfocus;
  end;
end;

procedure TfrmCargosBanco.QCargostip_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QCargostip_codigo.IsNull then
  begin
    Text := IntToStr(QCargostip_codigo.Value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select tip_codigo, tip_nombre');
    dm.Query1.sql.add('from Tipo_Bienes_Servicios');
    dm.Query1.sql.add('where tip_codigo = :tip');
    dm.Query1.Parameters.parambyname('tip').Value := QCargostip_codigo.Value;
    dm.Query1.open;
    if dm.Query1.RecordCount > 0 then
      tTipo.text := dm.Query1.fieldbyname('tip_nombre').asstring
    else
      tTipo.text := '';
  end
  else
    tTipo.text := '';
end;

procedure TfrmCargosBanco.QCentroBeforePost(DataSet: TDataSet);
begin
  if QCentrocen_nombre.IsNull then QCentro.Cancel;
end;

procedure TfrmCargosBanco.QCentroNewRecord(DataSet: TDataSet);
begin
  QCentroban_codigo.Value := QCargosBAN_CODIGO.Value;
  QCentrocar_numero.Value := QCargosCAR_NUMERO.Value;
  QCentrocar_ano.Value    := QCargosCAR_ANO.Value;
  QCentrocar_mes.Value    := QCargosCAR_MES.Value;
  QCentroemp_codigo.Value := dm.QEmpresasEMP_CODIGO.Value;
end;

procedure TfrmCargosBanco.spcentrosClick(Sender: TObject);
var
  a : integer;
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select cat_maneja_centro from contcatalogo');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and cat_cuenta = :cta');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
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
  end;
end;

procedure TfrmCargosBanco.GridCuentasDrawColumnCell(Sender: TObject;
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

procedure TfrmCargosBanco.SpeedButton1Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select con_nombre, con_codigo');
  Search.Query.Add('from conceptos');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.ResultField := 'con_codigo';
  Search.Title := 'Conceptos';
  if Search.execute then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select con_nombre, cat_cuenta from conceptos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and con_codigo = :con');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('con').Value := StrToInt(Search.ValueField);
    dm.Query1.Open;
    QCargosCAR_CONCEPTO1.Value := dm.Query1.FieldByName('con_nombre').AsString;
    if not dm.Query1.FieldByName('cat_cuenta').IsNull then
    begin
      if not QDetalle.Locate('cat_cuenta', dm.Query1.FieldByName('cat_cuenta').AsString,[]) then
      Begin
        QDetalle.Append;
        QDetalleCAT_CUENTA.Value := dm.Query1.FieldByName('cat_cuenta').AsString;
        if rbForma.ItemIndex = 0 then
          QDetalleDET_ORIGEN.Value := 'Credito'
        else
          QDetalleDET_ORIGEN.Value := 'Debito';
        QDetalleDET_MONTO.Value  := QCargosCAR_MONTO_BANCO.Value;
        QDetalle.Post;
      End;
    end;
  end;
end;

procedure TfrmCargosBanco.DBEdit14KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8]) then key:=#0;
end;

procedure TfrmCargosBanco.DBEdit13KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9','A','B',#8]) then key:=#0;
end;

procedure TfrmCargosBanco.FormShow(Sender: TObject);
begin
  if not QCargos.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    QCargos.Parameters.ParamByName('banco').Value := -1;
    QCargos.Parameters.ParamByName('ano').Value := -1;
    QCargos.Parameters.ParamByName('mes').Value := -1;
    QCargos.Parameters.ParamByName('num').Value := -1;
    QCargos.Parameters.ParamByName('suc').Value := -1;
    QCargos.Open;
    end;
    QCargos.Insert;

if dm.QParametrospar_banca_apuestas.Value = True then begin
lbLocSuc.Visible := True;
dbedtcont_numeroSucursal.Visible := True;
btLocalidad.Visible := True;
TSucLoc.Visible := True;
end;
if not dm.QParametrospar_banca_apuestas.Value = True then begin
LbLocSuc.Visible := False;
dbedtcont_numeroSucursal.Visible := False;
btLocalidad.Visible := False;
TSucLoc.Visible := False;
end;
end;

procedure TfrmCargosBanco.dbedtcont_numeroSucursalChange(Sender: TObject);
begin
if Trim(dbedtcont_numeroSucursal.Text) = '' then TSucLoc.Text := '';
end;

procedure TfrmCargosBanco.dbedtcont_numeroSucursalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(dbedtcont_numeroSucursal.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select suc_nombre, cont_numeroSucursal from sucursales');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and cont_numeroSucursal = '+QuotedStr(dbedtcont_numeroSucursal.Text));
      dm.Query1.Parameters.ParamByName('emp').Value :=  dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Open;
      TSucLoc.Text := dm.Query1.FieldByName('suc_nombre').AsString;
      end;
  end;

end;

procedure TfrmCargosBanco.btLocalidadClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select suc_nombre, cont_numeroSucursal from sucursales');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Title := 'Localidades / Sucursales';
  Search.ResultField := 'cont_numeroSucursal';
  if Search.execute then
  begin
    dbedtcont_numeroSucursal.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select suc_nombre, cont_numeroSucursal from sucursales');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cont_numeroSucursal = '+QuotedStr(dbedtcont_numeroSucursal.Text));
    dm.Query1.Parameters.ParamByName('emp').Value :=dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Open;
    TSucLoc.Text := dm.Query1.FieldByName('suc_nombre').AsString;
  end;

end;

procedure TfrmCargosBanco.rbTipoChange(Sender: TObject);
begin
  case rbTipo.ItemIndex of
  0,1:begin
  DBEdit5.Enabled   := False;
  tbenef.Enabled    := DBEdit5.Enabled;

  tbenef.Text := '';
  tbenef.Color := clInfoBk;
  end;
  2:begin
  DBEdit5.Enabled   := False;

  btbenef.Enabled := True;
  tbenef.Enabled  := True;
  tbenef.Text     := '';
  tbenef.Color    := clWindow;
  end;
  end;
end;

procedure TfrmCargosBanco.QCargosCAR_FECHAChange(Sender: TField);
var
  Suc : integer;
begin

  QCargosCAR_ANO.Value := YearOf(QCargosCAR_FECHA.Value);
  QCargosCAR_MES.Value := MonthOf(QCargosCAR_FECHA.Value);
  Suc := QCargosSUC_CODIGO.Value;
  if QCargosCAR_NUMERO.IsNull or (QCargosCAR_NUMERO.Value = 0) then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(car_numero),0) as maximo');
    dm.Query1.SQL.Add('from cargosbanco');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ban_codigo = :ban');
    //dm.Query1.SQL.Add('and car_ano = :ano');
    //dm.Query1.SQL.Add('and car_mes = :mes');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('ban').Value := QCargosBAN_CODIGO.Value;
    //dm.Query1.Parameters.ParamByName('ano').Value := QCargosCAR_ANO.Value;
    //dm.Query1.Parameters.ParamByName('mes').Value := QCargosCAR_MES.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := Suc;
    dm.Query1.Open;
    QCargosCAR_NUMERO.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  end;


end;

end.
