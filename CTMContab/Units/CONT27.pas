unit CONT27;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids,
  DB, IBCustomDataSet, IBQuery, IBUpdateSQL, DateUtils,
  ADODB, QuerySearchDlgADO, ComCtrls, DBGridObj;

type
  TfrmCheque = class(TForm)
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
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    btBenef: TBitBtn;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    lbCR: TStaticText;
    lbDB: TStaticText;
    lbBAL: TStaticText;
    btGrabar: TBitBtn;
    btLimpiar: TBitBtn;
    btSalir: TBitBtn;
    rbTipo: TDBRadioGroup;
    Search: TQrySearchDlgADO;
    QCheques: TADOQuery;
    QChequesBAN_CODIGO: TIntegerField;
    QChequesCHE_ANO: TIntegerField;
    QChequesCHE_BENEF: TIBStringField;
    QChequesCHE_CONCEPTO1: TIBStringField;
    QChequesCHE_CONCEPTO2: TIBStringField;
    QChequesCHE_FECANULO: TDateTimeField;
    QChequesCHE_FECHA: TDateTimeField;
    QChequesCHE_MES: TIntegerField;
    QChequesCHE_MONTO: TFloatField;
    QChequesCHE_MOTIVOANULO: TIBStringField;
    QChequesCHE_NUMERO: TIntegerField;
    QChequesCHE_STATUS: TIBStringField;
    QChequesCHE_TIPO: TIBStringField;
    QChequesCLI_CODIGO: TIntegerField;
    QChequesEMP_CODIGO: TIntegerField;
    QChequesEMP_NUMERO: TIntegerField;
    QChequesSUP_CODIGO: TIntegerField;
    QChequesUSU_CODIGO: TIntegerField;
    QChequesCHE_DESCUENTO: TFloatField;
    dsCheques: TDataSource;
    QDetalle: TADOQuery;
    QDetalleBAN_CODIGO: TIntegerField;
    QDetalleCAT_CUENTA: TIBStringField;
    QDetalleCAT_NOMBRE: TIBStringField;
    QDetalleCHE_NUMERO: TIntegerField;
    QDetalleDET_MONTO: TFloatField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    dsDetalle: TDataSource;
    QDetalleDET_ORIGEN: TIBStringField;
    QFacturas: TADOQuery;
    QFacturasBAN_CODIGO: TIntegerField;
    QFacturasCHE_NUMERO: TIntegerField;
    QFacturasEMP_CODIGO: TIntegerField;
    QFacturasFAC_ABONO: TFloatField;
    QFacturasFAC_NUMERO: TIBStringField;
    QFacturasFAC_SALDO: TFloatField;
    QFacturasFAC_SECUENCIA: TIntegerField;
    QFacturasSUP_CODIGO: TIntegerField;
    QFacturasFAC_FECHA: TDateTimeField;
    QFacturasFAC_VENCE: TDateTimeField;
    dsFacturas: TDataSource;
    QFacturasFAC_TOTAL: TFloatField;
    QFacturasFAC_PAGO: TFloatField;
    QFacturasFAC_DESCUENTO: TFloatField;
    Query1: TADOQuery;
    QChequesCHE_IMPRESO: TIBStringField;
    QChequesCHE_ABONO: TFloatField;
    QChequesCEN_CODIGO: TIntegerField;
    QChequesCHE_CONCEPTO3: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GriFacturas: TDBGrid;
    lbFacturas: TStaticText;
    QCentro: TADOQuery;
    QCentroemp_codigo: TIntegerField;
    QCentroban_codigo: TIntegerField;
    QCentroche_numero: TIntegerField;
    QCentrocen_codigo: TIntegerField;
    QCentrodet_secuencia: TIntegerField;
    QCentrocen_nombre: TStringField;
    QCentrodet_monto: TBCDField;
    TabSheet4: TTabSheet;
    QRetenciones: TADOQuery;
    QRetencionesemp_codigo: TIntegerField;
    QRetencionesret_codigo: TIntegerField;
    QRetencionesdet_nombre: TStringField;
    QRetencionesdet_porciento: TBCDField;
    QRetencionesdet_monto: TBCDField;
    QRetencionesdet_secuencia: TIntegerField;
    QRetencionesdet_cuenta: TStringField;
    dsRet: TDataSource;
    QRetencionesban_codigo: TIntegerField;
    QRetencionesche_numero: TIntegerField;
    GridRet: TDBGrid;
    Panel3: TPanel;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    QChequesSUC_CODIGO: TIntegerField;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    Label14: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QDetalleSUC_CODIGO: TIntegerField;
    QFacturasSUC_CODIGO: TIntegerField;
    QCentrosuc_codigo: TIntegerField;
    QRetencionessuc_codigo: TIntegerField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    SpeedButton1: TSpeedButton;
    QChequesCHE_RETENCION: TBCDField;
    QFacturasFAC_ITBIS: TBCDField;
    QFacturasFAC_RETENCION: TBCDField;
    Label6: TLabel;
    DBEdit9: TDBEdit;
    QChequesCHE_MONTO_BANCO: TBCDField;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    btfindcuenta: TSpeedButton;
    btdelete: TSpeedButton;
    QChequesCHE_TASA: TBCDField;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    edCodigo: TEdit;
    spcentros: TSpeedButton;
    GridCuentas: TDBGridObj;
    QCentrocen_referencia: TStringField;
    QCentrosub_referencia: TStringField;
    QCentrosub_secuencia: TIntegerField;
    QCentrocat_cuenta: TStringField;
    lbLocSuc: TLabel;
    dbedtcont_numeroSucursal: TDBEdit;
    btLocalidad: TSpeedButton;
    TSucLoc: TEdit;
    QChequescont_numeroSucursal: TStringField;
    procedure FormPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btSalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btBancoClick(Sender: TObject);
    procedure QChequesNewRecord(DataSet: TDataSet);
    procedure QDetalleNewRecord(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure GridCuentasColEnter(Sender: TObject);
    procedure GridCuentasEnter(Sender: TObject);
    procedure GridCuentasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QDetalleCAT_CUENTAChange(Sender: TField);
    procedure rbTipoClick(Sender: TObject);
    procedure btBenefClick(Sender: TObject);
    procedure QChequesCHE_MONTOChange(Sender: TField);
    procedure QDetalleAfterPost(DataSet: TDataSet);
    procedure QDetalleAfterDelete(DataSet: TDataSet);
    procedure btLimpiarClick(Sender: TObject);
    procedure QDetalleBeforePost(DataSet: TDataSet);
    procedure GriFacturasEnter(Sender: TObject);
    procedure GriFacturasColEnter(Sender: TObject);
    procedure GriFacturasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QFacturasFAC_DESCUENTOChange(Sender: TField);
    procedure QFacturasAfterPost(DataSet: TDataSet);
    procedure QFacturasBeforeDelete(DataSet: TDataSet);
    procedure btGrabarClick(Sender: TObject);
    procedure QChequesAfterPost(DataSet: TDataSet);
    procedure QChequesBAN_CODIGOChange(Sender: TField);
    procedure QChequesBeforePost(DataSet: TDataSet);
    procedure QChequesCHE_NUMEROChange(Sender: TField);
    procedure QChequesAfterInsert(DataSet: TDataSet);
    procedure QChequesAfterEdit(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QCentroBeforePost(DataSet: TDataSet);
    procedure QCentroNewRecord(DataSet: TDataSet);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure QRetencionesNewRecord(DataSet: TDataSet);
    procedure GridRetColEnter(Sender: TObject);
    procedure GridRetEnter(Sender: TObject);
    procedure GridRetKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QRetencionesret_codigoChange(Sender: TField);
    procedure QRetencionesdet_montoChange(Sender: TField);
    procedure QChequesSUC_CODIGOChange(Sender: TField);
    procedure SpeedButton1Click(Sender: TObject);
    procedure QRetencionesAfterPost(DataSet: TDataSet);
    procedure QFacturasFAC_RETENCIONChange(Sender: TField);
    procedure QRetencionesAfterDelete(DataSet: TDataSet);
    procedure QChequesCHE_DESCUENTOChange(Sender: TField);
    procedure QChequesCHE_RETENCIONChange(Sender: TField);
    procedure btfindcuentaClick(Sender: TObject);
    procedure btdeleteClick(Sender: TObject);
    procedure QChequesCHE_MONTO_BANCOChange(Sender: TField);
    procedure QFacturasAfterInsert(DataSet: TDataSet);
    procedure edCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridCuentasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure spcentrosClick(Sender: TObject);
    procedure dbedtcont_numeroSucursalChange(Sender: TObject);
    procedure dbedtcont_numeroSucursalKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure btLocalidadClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CtaBanco, CtaBenef, Tiposecuencia, TipoCheque, permitesobregiro : String;
    Debitos, Creditos, TotalPagoFacturas, balanceminimo : Double;
    Totaliza, PuedeInsertar : Boolean;
    Accion, rOW, cOL : Integer;

    procedure Beneficiario(Tipo: string);
    procedure Totalizar;
    procedure TotalizaFac;
    procedure TotalizaRet;

  end;

var
  frmCheque: TfrmCheque;

implementation

uses RCONT17, SIGMA00, SIGMA01, SIGMA08;

{$R *.dfm}

procedure TfrmCheque.FormPaint(Sender: TObject);
begin
  with frmCheque do
  begin
    Top  := 2;
    Left := 2;
    //width := frmMain.Width - 100;
    //height := frmMain.Height - 120;
  end;
end;

procedure TfrmCheque.FormCreate(Sender: TObject);
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
  GridCuentas.Height := 220;
end;

procedure TfrmCheque.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then btSalirClick(Self);
  if key = vk_f3  then btLimpiarClick(Self);
  if key = vk_f2  then btGrabarClick(self);
end;

procedure TfrmCheque.btSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCheque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmCheque.btBancoClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select ban_nombre, ban_codigo');
  Search.Query.Add('from bancos');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.Query.Add('and suc_codigo = '+IntToStr(DBLookupComboBox2.KeyValue));
  Search.Query.Add('and ban_tarjeta = '+QuotedStr('False'));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.ResultField := 'ban_codigo';
  Search.Title := 'Bancos';
  if Search.execute then
  begin
    QChequesBAN_CODIGO.Value := StrToInt(Search.ValueField);
    DBEdit1.SetFocus;
  end;
end;

procedure TfrmCheque.QChequesNewRecord(DataSet: TDataSet);
begin
  QDetalle.Close;
  QDetalle.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  QDetalle.Parameters.ParamByName('ban').Value := -1;
  QDetalle.Parameters.ParamByName('num').Value := -1;
  QDetalle.Parameters.ParamByName('suc').Value := -1;
  QDetalle.Open;

  QCentro.Close;
  QCentro.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  QCentro.Parameters.ParamByName('ban').Value := -1;
  QCentro.Parameters.ParamByName('num').Value := -1;
  QCentro.Parameters.ParamByName('suc').Value := -1;
  QCentro.Open;

  QRetenciones.Close;
  QRetenciones.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  QRetenciones.Parameters.ParamByName('ban').Value := -1;
  QRetenciones.Parameters.ParamByName('num').Value := -1;
  QRetenciones.Parameters.ParamByName('suc').Value := -1;
  QRetenciones.Open;

  QFacturas.Close;
  QFacturas.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  QFacturas.Parameters.ParamByName('ban').Value := -1;
  QFacturas.Parameters.ParamByName('num').Value := -1;
  QFacturas.Parameters.ParamByName('suc').Value := -1;
  QFacturas.Open;

  PageControl1.ActivePageIndex := 0;

  if TipoCheque = '' then TipoCheque := 'GAS';
  edCodigo.Text := '';
  TotalPagoFacturas := 0;
  Totaliza := True;
  lbCR.Caption := '0.00';
  lbDB.Caption := '0.00';
  lbBAL.Caption := '0.00';
  accion := 1;
  QChequesCHE_IMPRESO.Value := 'N';
  QChequesCHE_FECHA.Value  := Date;
  QChequesCHE_STATUS.Value := 'EMI';
  QChequesCHE_TIPO.Value   := TipoCheque;
  QChequesCHE_DESCUENTO.Value := 0;
  QChequesCHE_RETENCION.Value := 0;
  QChequesEMP_CODIGO.Value := dm.QEmpresasEMP_CODIGO.Value;
  QChequesUSU_CODIGO.Value := dm.Usuario;
  QChequesCHE_ABONO.Value  := 0;
  QChequesSUC_CODIGO.Value := QSucursalsuc_codigo.Value;
  rbTipoClick(Self);

end;

procedure TfrmCheque.QDetalleNewRecord(DataSet: TDataSet);
begin
  QDetalleBAN_CODIGO.Value := QChequesBAN_CODIGO.Value;
  QDetalleCHE_NUMERO.Value := QChequesCHE_NUMERO.Value;
  QDetalleEMP_CODIGO.Value := dm.QEmpresasEMP_CODIGO.Value;
  QDetalleSUC_CODIGO.Value := QChequesSUC_CODIGO.Value;
end;

procedure TfrmCheque.FormActivate(Sender: TObject);
begin
  if not QCheques.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    QCheques.Parameters.ParamByName('banco').Value  := -1;
    QCheques.Parameters.ParamByName('numero').Value := -1;
    QCheques.Parameters.ParamByName('suc').Value    := -1;
    QCheques.Open;
    QCheques.Insert;
  end;
end;

procedure TfrmCheque.GridCuentasColEnter(Sender: TObject);
begin
  if GridCuentas.SelectedIndex = 2 then
    GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1;
end;

procedure TfrmCheque.GridCuentasEnter(Sender: TObject);
begin
  GridCuentas.SelectedIndex := 1;
end;

procedure TfrmCheque.GridCuentasKeyDown(Sender: TObject; var Key: Word;
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

  if key = vk_f4 then btfindcuentaClick(Self);
  if key = vk_f6 then btdeleteClick(Self);
end;

procedure TfrmCheque.QDetalleCAT_CUENTAChange(Sender: TField);
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
      QDetalleDET_ORIGEN.VALUE := dm.Query1.FieldByName('cat_origen').AsString;
      GridCuentas.SelectedIndex := 3;
    end;
  end;
end;

procedure TfrmCheque.rbTipoClick(Sender: TObject);
begin
  DBEdit8.Enabled := rbTipo.ItemIndex = 3;
  btBenef.Enabled := rbTipo.ItemIndex <= 3;
  edCodigo.Enabled := rbTipo.ItemIndex < 3;
  //GriFacturas.Visible := rbTipo.ItemIndex = 0;
  //lbFacturas.Visible  := rbTipo.ItemIndex = 0;
  {if rbTipo.ItemIndex > 0 then
    GridCuentas.Height := 180
  else
    GridCuentas.Height := 92;}
end;

procedure TfrmCheque.btBenefClick(Sender: TObject);
begin
  case rbTipo.ItemIndex of
  0 : begin
        Search.Query.Clear;
        Search.AliasFields.Clear;
        Search.Query.Add('select sup_nombre, sup_codigo');
        Search.Query.Add('from proveedores');
        Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
        Search.Query.Add('and sup_balance > 0');
        Search.AliasFields.Add('Nombre');
        Search.AliasFields.Add('Código');
        Search.ResultField := 'sup_codigo';
        Search.Title := 'Proveedores';
        if Search.execute then
        begin
          QChequesSUP_CODIGO.Value := StrToInt(Search.ValueField);
          edCodigo.Text := Search.ValueField;
          Beneficiario('SUP');
        end;
      end;
  1 : begin
        Search.Query.Clear;
        Search.AliasFields.Clear;
        Search.Query.Add('select cli_nombre, cli_codigo');
        Search.Query.Add('from clientes');
        Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
        Search.AliasFields.Add('Nombre');
        Search.AliasFields.Add('Código');
        Search.ResultField := 'cli_codigo';
        Search.Title := 'Clientes';
        if Search.execute then
        begin
          QChequesCLI_CODIGO.Value := StrToInt(Search.ValueField);
          edCodigo.Text := Search.ValueField;
          Beneficiario('CLI');
        end;
      end;
  2 : begin
        Search.Query.Clear;
        Search.AliasFields.Clear;
        Search.Query.Add('select emp_nombres, emp_apellido_paterno, emp_cedula, emp_numero');
        Search.Query.Add('from empleados');
        Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
        Search.Query.Add('and emp_status = '+QuotedStr('ACT'));
        Search.AliasFields.Add('Nombre');
        Search.AliasFields.Add('Apellido');
        Search.AliasFields.Add('Cédula');
        Search.AliasFields.Add('Código');
        Search.ResultField := 'emp_numero';
        Search.Title := 'Empleados';
        if Search.execute then
        begin
          QChequesEMP_NUMERO.Value := StrToInt(Search.ValueField);
          edCodigo.Text := Search.ValueField;
          Beneficiario('EMP');
        end;
      end;
  3 : begin
        Search.Query.Clear;
        Search.AliasFields.Clear;
        Search.Query.Add('select sup_nombre, sup_codigo');
        Search.Query.Add('from proveedores');
        Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
        Search.Query.Add('and sup_balance = 0');
        Search.AliasFields.Add('Nombre');
        Search.AliasFields.Add('Código');
        Search.ResultField := 'sup_codigo';
        Search.Title := 'Proveedores';
        if Search.execute then
        begin
          QChequesSUP_CODIGO.Value := StrToInt(Search.ValueField);
          edCodigo.Text := Search.ValueField;
          Beneficiario('SUP');
        end;
      end;

  end;
end;

procedure TfrmCheque.QChequesCHE_MONTOChange(Sender: TField);
begin
  if (not QChequesCHE_MONTO.IsNull) and (CtaBanco <> '') and (QChequesCHE_MONTO.Value > 0) then
  Begin
    QChequesCHE_MONTO_BANCO.Value := QChequesCHE_MONTO.Value -
                                       (QChequesCHE_DESCUENTO.Value +
                                        (QChequesCHE_RETENCION.Value/QChequesCHE_TASA.Value));
    if rbTipo.ItemIndex <> 0 then
    begin
      QDetalle.DisableControls;
      QDetalle.First;
      while not QDetalle.Eof do
      begin
        QDetalle.Edit;
        QDetalleDET_MONTO.Value := QChequesCHE_MONTO_BANCO.Value;
        QDetalle.Post;
        QDetalle.Next;
      end;
      QDetalle.First;
      QDetalle.EnableControls;
    end
    else
    begin
      QDetalle.Locate('cat_cuenta',CtaBanco,[]);
      QDetalle.Edit;
      QDetalleDET_MONTO.Value := QChequesCHE_MONTO_BANCO.Value;
      QDetalle.Post;
    end;
  End
  else
  begin
    QChequesCHE_MONTO_BANCO.Value := QChequesCHE_MONTO.Value -
                                       (QChequesCHE_DESCUENTO.Value +
                                        (QChequesCHE_RETENCION.Value/QChequesCHE_TASA.Value));
  end;
end;

procedure TfrmCheque.Totalizar;
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

procedure TfrmCheque.QDetalleAfterPost(DataSet: TDataSet);
begin
  Totalizar;
end;

procedure TfrmCheque.QDetalleAfterDelete(DataSet: TDataSet);
begin
  Totalizar;
end;

procedure TfrmCheque.btLimpiarClick(Sender: TObject);
begin
  if messagedlg('DESEA LIMPIAR LA PANTALLA Y EMPEZAR UN CHEQUE NUEVO?',
  mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QCheques.Close;
    QCheques.Parameters.ParamByName('banco').Value := -1;
    QCheques.Parameters.ParamByName('numero').Value := -1;
    QCheques.Parameters.ParamByName('suc').Value := -1;
    QCheques.Open;
    QCheques.Insert;
    DBEdit1.SetFocus;
  end;
end;

procedure TfrmCheque.QDetalleBeforePost(DataSet: TDataSet);
begin
  if QDetalleCAT_NOMBRE.IsNull then QDetalle.Cancel;
end;

procedure TfrmCheque.GriFacturasEnter(Sender: TObject);
begin
  GriFacturas.SelectedIndex := 6;
end;

procedure TfrmCheque.GriFacturasColEnter(Sender: TObject);
begin
  if GriFacturas.SelectedIndex < 7 then
    GriFacturas.SelectedIndex := 7;
end;

procedure TfrmCheque.GriFacturasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if GriFacturas.SelectedIndex < 7 then
       GriFacturas.SelectedIndex := GriFacturas.SelectedIndex + 1
    else
    begin
      GriFacturas.SelectedIndex := 7;
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
  end;
end;

procedure TfrmCheque.QFacturasFAC_DESCUENTOChange(Sender: TField);
begin
  if Totaliza = True then
    if not QFacturasFAC_DESCUENTO.IsNull then
    Begin
      QFacturasFAC_PAGO.Value := StrToFloat(Format('%10.2f',[QFacturasFAC_SALDO.Value]))-
                                 StrToFloat(Format('%10.2f',[QFacturasFAC_DESCUENTO.Value]));
      QFacturas.Post;
    End
    else
    begin
      QFacturasFAC_PAGO.Value := StrToFloat(Format('%10.2f',[QFacturasFAC_SALDO.Value]));
      QFacturas.Post;
    end;
end;

procedure TfrmCheque.TotalizaFac;
var
  Total, Desc, Ret : Double;
  punt : TBookmark;
  vConcepto1, vConcepto2, vConcepto3 : String;
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
    vConcepto1 := 'Pago Factura: ';
    vConcepto2 := '';
    vConcepto3 := '';
    while not QFacturas.Eof do
    Begin
      Total := Total + QFacturasFAC_PAGO.Value;
      Desc  := Desc  + QFacturasFAC_DESCUENTO.Value;
      Ret   := Ret   + QfacturasFAC_RETENCION.Value;
      TotalPagoFacturas := TotalPagoFacturas + QFacturasFAC_PAGO.Value;
      if (QFacturasFAC_PAGO.Value > 0) then
      begin
        if ((length(vConcepto1)+length(QFacturasFAC_NUMERO.AsString+',')) < 80) then
          vConcepto1 := vConcepto1 + QFacturasFAC_NUMERO.AsString+','
        else
        begin
          if ((length(vConcepto2)+length(QFacturasFAC_NUMERO.AsString+',')) < 80) then
            vConcepto2 := vConcepto2 + QFacturasFAC_NUMERO.AsString+','
          else
          begin
            if ((length(vConcepto3)+length(QFacturasFAC_NUMERO.AsString+',')) < 80) then
            vConcepto3 := vConcepto3 + QFacturasFAC_NUMERO.AsString+',';
          end;
        end;
      end;
      QFacturas.Next;
    end;
    QFacturas.GotoBookmark(punt);
    QFacturas.EnableControls;
    QChequesCHE_MONTO.Value := (Total+Ret+Desc)/QChequesCHE_TASA.Value;
    QChequesCHE_DESCUENTO.Value := Desc/QChequesCHE_TASA.Value;
    QChequesCHE_RETENCION.Value := Ret;
    QChequesCHE_concepto1.Value := vConcepto1;
    QChequesCHE_concepto2.Value := vConcepto2;
    QChequesCHE_concepto3.Value := vConcepto3;
    if CtaBenef <> '' then
      if QDetalle.Locate('cat_cuenta',CtaBenef,[]) then
      Begin
        QDetalle.Edit;
        QDetalleDET_MONTO.Value := Total + QChequesCHE_RETENCION.Value+QChequesCHE_DESCUENTO.Value;
        QDetalle.Post;
      End;
  End;
end;

procedure TfrmCheque.QFacturasAfterPost(DataSet: TDataSet);
begin
  TotalizaFac;
end;

procedure TfrmCheque.QFacturasBeforeDelete(DataSet: TDataSet);
begin
  Abort;
end;

procedure TfrmCheque.btGrabarClick(Sender: TObject);
var
  a : integer;
  BalanceBanco : Double;
  permite : Boolean;
begin
  //datos del banco
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select b.ban_nombre, b.cat_cuenta, b.BAN_MODSECUENCIA,');
  dm.Query1.SQL.Add('isnull(m.mon_relacionpesocompra,1) as tasa, ban_tipo_secuencia,');
  dm.Query1.SQL.Add('ban_permite_sobregiro, ban_balance_minimo');
  dm.Query1.SQL.Add('from bancos b');
  dm.Query1.SQL.Add('left outer join moneda m on (b.emp_codigo = m.emp_codigo');
  dm.Query1.SQL.Add('and b.mon_codigo = m.mon_codigo)');
  dm.Query1.SQL.Add('where b.emp_codigo = :emp');
  dm.Query1.SQL.Add('and b.ban_codigo = :ban');
  dm.Query1.SQL.Add('and b.suc_codigo = :suc');
  dm.Query1.SQL.Add('and b.ban_tarjeta = '+QuotedStr('False'));
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('ban').Value := QChequesBAN_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('suc').Value := QChequesSUC_CODIGO.Value;
  dm.Query1.Open;
  balanceminimo      := dm.Query1.FieldByName('ban_balance_minimo').AsFloat;
  permitesobregiro := dm.Query1.FieldByName('ban_permite_sobregiro').AsString;

  //buscando balance del banco
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('SELECT * FROM CONTPR_LIBRO_BANCO (:EMP, :SUC, :BANCO, :FECHA1, :FECHA2, :sucloc)');
  dm.Query1.Parameters.ParamByName('emp').Value       := dm.vp_cia;//dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('banco').Value     := QChequesBAN_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('fecha1').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fecha2').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('sucloc').DataType := ftInteger;
  dm.Query1.Parameters.ParamByName('fecha1').Value    := Date;
  dm.Query1.Parameters.ParamByName('fecha2').Value    := Date;
  dm.Query1.Parameters.ParamByName('suc').Value       := DBLookupComboBox2.KeyValue;
  if QChequescont_numeroSucursal.Value = '' then
  dm.Query1.Parameters.ParamByName('sucloc').Value    := '0' else
  dm.Query1.Parameters.ParamByName('sucloc').Value    := QChequescont_numeroSucursal.Value;
  dm.Query1.Open;
  dm.Query1.Last;
  BalanceBanco := dm.Query1.FieldByName('balance').AsFloat;

  permite := true;
  if (permitesobregiro = 'False') then
  begin
    if (BalanceBanco < QChequesCHE_MONTO_BANCO.AsFloat) then
    begin
      if balanceminimo = 0 then
        permite := false
      else
      begin
        if (balanceminimo > (BalanceBanco - QChequesCHE_MONTO_BANCO.AsFloat)) then
          permite := false;
      end;
    end
  end
  else if (permitesobregiro = 'True') then
  begin
     if (QChequesCHE_MONTO_BANCO.AsFloat > BalanceBanco) then
     begin
       if balanceminimo <> 0 then
       begin
         if (balanceminimo > (BalanceBanco - QChequesCHE_MONTO_BANCO.AsFloat)) then
           permite := false;
       end;
     end
     else
     begin
       if (BalanceBanco - QChequesCHE_MONTO_BANCO.AsFloat < balanceminimo) then
         permite := false;
     end;
  end;

  if lbBAL.Caption <> '0.00' then
  begin
    MessageDlg('LAS CUENTAS CONTABLES DE ESTE CHEQUE'+#13+
               'NO ESTAN CUADRADAS',mtError,[mbok],0);
    GridCuentas.SetFocus;
  end
  else if Trim(DBEdit6.Text) = '' then
  begin
    MessageDlg('DEBE ESPECIFICAR LA PRIMERA LINEA DEL CONCEPTO',mtError,[mbok],0);
    DBEdit6.SetFocus;
  end
  else if Trim(DBEdit8.Text) = '' then
  begin
    MessageDlg('DEBE ESPECIFICAR EL BENEFICIARIO',mtError,[mbok],0);
    DBEdit8.SetFocus;
  end
  else if QChequesCHE_MONTO_BANCO.Value <= 0 then
  begin
    MessageDlg('EL MONTO DEBE SER MAYOR QUE CERO (0)',mtError,[mbok],0);
    DBEdit4.SetFocus;
  end
  else if (QChequesCHE_NUMERO.Value = 0) or (QChequesCHE_NUMERO.isnull) then
  begin
    MessageDlg('DEBE ESPECIFICAR EL NUMERO DE CHEQUE',mtError,[mbok],0);
    DBEdit2.SetFocus;
  end
  else if (rbtipo.ItemIndex = 0) and (TotalPagoFacturas = 0) then
  begin
    MessageDlg('DEBE ESPECIFICAR LAS FACTURAS QUE SE VAN A PAGAR',mtError,[mbok],0);
    PageControl1.ActivePageIndex := 1;
  end
  else if (QChequesBAN_CODIGO.Value = 0) or (QChequesBAN_CODIGO.isnull) then
  begin
    MessageDlg('DEBE ESPECIFICAR EL NUMERO BANCO',mtError,[mbok],0);
    DBEdit1.SetFocus;
  end
  else if Trim(tBanco.Text) = '' then
  begin
    MessageDlg('ESTE BANCO NO EXISTE',mtError,[mbok],0);
    DBEdit1.SetFocus;
  end
  else if permite = false then
  begin
    MessageDlg('ESTA CUENTA NO PERMITE SOBREGIRO',mtError,[mbok],0);
    DBEdit1.SetFocus;
  end
  else if MessageDlg('TODOS LOS DATOS ESTAN CORRECTOS?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    Totaliza := False;
    //Otro
    QCheques.Post;

    QDetalle.DisableControls;
    QDetalle.First;
    a := 0;
    while not QDetalle.eof do
    begin
      a := a + 1;
      QDetalle.Edit;
      QDetalleDET_SECUENCIA.Value := a;
      QDetalleBAN_CODIGO.Value := QChequesBAN_CODIGO.Value;
      QDetalleCHE_NUMERO.Value := QChequesCHE_NUMERO.Value;
      QDetalleEMP_CODIGO.Value := dm.vp_cia;//dm.QEmpresasEMP_CODIGO.Value;
      QDetalleSUC_CODIGO.Value := QChequesSUC_CODIGO.Value;
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
      QCentroBAN_CODIGO.Value := QChequesBAN_CODIGO.Value;
      QCentroCHE_NUMERO.Value := QChequesCHE_NUMERO.Value;
      QCentroDET_SECUENCIA.Value := a;
      QCentroEMP_CODIGO.Value := dm.vp_cia;//dm.QEmpresasEMP_CODIGO.Value;
      QCentrosuc_codigo.Value := QChequesSUC_CODIGO.Value;
      QCentro.Post;
      QCentro.Next;
    end;
    QCentro.First;
    QCentro.EnableControls;
    QCentro.UpdateBatch;

    //Retenciones
    QRetenciones.DisableControls;
    QRetenciones.First;
    a := 0;
    while not QRetenciones.eof do
    begin
      a := a + 1;
      QRetenciones.Edit;
      QRetencionesBAN_CODIGO.Value := QChequesBAN_CODIGO.Value;
      QRetencionesCHE_NUMERO.Value := QChequesCHE_NUMERO.Value;
      QRetencionesDET_SECUENCIA.Value := a;
      QRetencionesEMP_CODIGO.Value := dm.vp_cia;//dm.QEmpresasEMP_CODIGO.Value;
      QRetencionessuc_codigo.Value := QChequesSUC_CODIGO.Value;
      QRetenciones.Post;
      QRetenciones.Next;
    end;
    QRetenciones.First;
    QRetenciones.EnableControls;
    QRetenciones.UpdateBatch;

    //Cuentas por Pagar
    if rbTipo.ItemIndex = 0 then
    begin
      QFacturas.DisableControls;
      QFacturas.First;
      a := 0;
      while not QFacturas.Eof do
      begin
        a := a + 1;
        QFacturas.Edit;
        QFacturasBAN_CODIGO.Value := QChequesBAN_CODIGO.Value;
        QFacturasCHE_NUMERO.Value := QChequesCHE_NUMERO.Value;
        QFacturasEMP_CODIGO.Value := dm.vp_cia;//dm.QEmpresasEMP_CODIGO.Value;
        if QFacturasFAC_DESCUENTO.IsNull then QFacturasFAC_DESCUENTO.Value := 0;
        QFacturasFAC_SECUENCIA.Value := a;
        QFacturasSUC_CODIGO.Value := QChequesSUC_CODIGO.Value;
        QFacturas.Post;
        QFacturas.Next;
      end;
      QFacturas.First;
      QFacturas.EnableControls;
      QFacturas.UpdateBatch;
    end;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('execute contpr_graba_cheque :emp, :suc, :ban, :num');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('ban').Value := QChequesBAN_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('num').Value := QChequesCHE_NUMERO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := QChequesSUC_CODIGO.Value;
    dm.Query1.ExecSQL;

    if MessageDlg('DESEA IMPRIMIR ESTE CHEQUE?',mtConfirmation,[mbyes,mbno],0) = mryes then
    begin
      Application.CreateForm(tRepCheque, RepCheque);
      RepCheque.QCheques.Parameters.ParamByName('emp').Value   := dm.vp_cia;//dm.QEmpresasEMP_CODIGO.Value;
      RepCheque.QCheques.Parameters.ParamByName('banco').Value := QChequesBAN_CODIGO.Value;
      RepCheque.QCheques.Parameters.ParamByName('num1').Value  := QChequesCHE_NUMERO.Value;
      RepCheque.QCheques.Parameters.ParamByName('num2').Value  := QChequesCHE_NUMERO.Value;
      RepCheque.QCheques.Parameters.ParamByName('suc').Value   := QChequesSUC_CODIGO.Value;
      RepCheque.QCheques.Open;
      RepCheque.QDetalle.Open;
      RepCheque.PrinterSetup;
      RepCheque.Print;
      RepCheque.Destroy;
    end;

    TipoCheque := QChequesCHE_TIPO.Value;
    QCheques.Close;
    QCheques.Parameters.ParamByName('banco').Value := -1;
    QCheques.Parameters.ParamByName('numero').Value := -1;
    QCheques.Parameters.ParamByName('suc').Value := -1;
    QCheques.Open;
    QCheques.Insert;
    DBEdit1.SetFocus;
  end
  else
    GridCuentas.SetFocus;
end;

procedure TfrmCheque.QChequesAfterPost(DataSet: TDataSet);
begin
  QCheques.UpdateBatch;
  if accion = 1 then
  begin
    if Tiposecuencia = 'B' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('update bancos set ban_cheque = ban_cheque + 1');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and suc_codigo = :suc');
      dm.Query1.SQL.Add('and ban_codigo = :ban');
      dm.Query1.SQL.Add('and ban_cheque < '+IntToStr(QChequesCHE_NUMERO.Value));
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('suc').Value := QChequesSUC_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('ban').Value := QChequesBAN_CODIGO.Value;
      dm.Query1.ExecSQL;
    end;
  end;
end;

procedure TfrmCheque.QChequesBAN_CODIGOChange(Sender: TField);
begin
  if not QChequesBAN_CODIGO.IsNull then
  Begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select b.ban_nombre, b.cat_cuenta, b.BAN_MODSECUENCIA,');
    dm.Query1.SQL.Add('isnull(m.mon_relacionpesocompra,1) as tasa, ban_tipo_secuencia,');
    dm.Query1.SQL.Add('ban_permite_sobregiro, ban_monto_sobregiro');
    dm.Query1.SQL.Add('from bancos b');
    dm.Query1.SQL.Add('left outer join moneda m on (b.emp_codigo = m.emp_codigo');
    dm.Query1.SQL.Add('and b.mon_codigo = m.mon_codigo)');
    dm.Query1.SQL.Add('where b.emp_codigo = :emp');
    dm.Query1.SQL.Add('and b.ban_codigo = :ban');
    dm.Query1.SQL.Add('and b.suc_codigo = :suc');
    dm.Query1.SQL.Add('and b.ban_tarjeta = '+QuotedStr('False'));
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('ban').Value := QChequesBAN_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := QChequesSUC_CODIGO.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
      tBanco.Text := ''
    else
    begin
      tBanco.Text := dm.Query1.FieldByName('ban_nombre').AsString;
      CtaBanco := dm.Query1.FieldByName('cat_cuenta').AsString;
      Qchequesche_tasa.Value := dm.Query1.FieldByName('tasa').AsFloat;
      Tiposecuencia := dm.Query1.FieldByName('ban_tipo_secuencia').AsString;
      DBEdit2.ReadOnly := dm.Query1.FieldByName('ban_modsecuencia').AsString = 'N';
      balanceminimo   := dm.Query1.FieldByName('ban_monto_sobregiro').AsFloat;
      permitesobregiro := dm.Query1.FieldByName('ban_permite_sobregiro').AsString;
      if not dm.Query1.FieldByName('cat_cuenta').IsNull then
      begin
        if Trim(dm.Query1.FieldByName('cat_cuenta').AsString) <> '' then
        begin
          if not QDetalle.Locate('cat_cuenta', dm.Query1.FieldByName('cat_cuenta').AsString,[]) then
          Begin
            QDetalle.Append;
            QDetalleCAT_CUENTA.Value := dm.Query1.FieldByName('cat_cuenta').AsString;
            QDetalleDET_ORIGEN.Value := 'Credito';
            QDetalleDET_MONTO.Value  := QChequesCHE_MONTO.Value;
            QDetalle.Post;
          End;
        end;
      end;

      if Tiposecuencia = 'U' then
      begin
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select isnull(max(che_numero),0) as maximo');
        dm.Query1.SQL.Add('from cheques');
        dm.Query1.SQL.Add('where emp_codigo = :emp');
        dm.Query1.SQL.Add('and ban_codigo = :ban');
        dm.Query1.SQL.Add('and suc_codigo = :suc');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QEmpresasEMP_CODIGO.Value;
        dm.Query1.Parameters.ParamByName('ban').Value := QChequesBAN_CODIGO.Value;
        dm.Query1.Parameters.ParamByName('suc').Value := QChequesSUC_CODIGO.Value;
        dm.Query1.Open;
        QChequesCHE_NUMERO.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
      end
      else
      begin
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select isnull(max(BAN_CHEQUE),0) as maximo');
        dm.Query1.SQL.Add('from bancos');
        dm.Query1.SQL.Add('where emp_codigo = :emp');
        dm.Query1.SQL.Add('and ban_codigo = :ban');
        dm.Query1.SQL.Add('and suc_codigo = :suc');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QEmpresasEMP_CODIGO.Value;
        dm.Query1.Parameters.ParamByName('ban').Value := QChequesBAN_CODIGO.Value;
        dm.Query1.Parameters.ParamByName('suc').Value := QChequesSUC_CODIGO.Value;
        dm.Query1.Open;
        QChequesCHE_NUMERO.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
      end;
    end;
  End
  else
    tBanco.Text := '';
end;

procedure TfrmCheque.QChequesBeforePost(DataSet: TDataSet);
begin
  if dm.QParametrospar_inv_compra_centro_costo.Value = 'True' then
  begin
    if QCentro.RecordCount = 0 then
    begin
      MessageDlg('Debe Digitar los Centros de Costos',mtError,[mbok],0);
      PageControl1.ActivePageIndex := 3;
      Abort;
    end;
  end;

  QChequesCHE_ANO.Value := YearOf(QChequesCHE_FECHA.Value);
  QChequesCHE_MES.Value := MonthOf(QChequesCHE_FECHA.Value);
end;

procedure TfrmCheque.QChequesCHE_NUMEROChange(Sender: TField);
var
   Suc : Integer;
begin
  if not QChequesCHE_NUMERO.IsNull then
  begin
    Suc := QChequesSUC_CODIGO.Value;
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select che_numero, ban_codigo, che_numero, che_tipo, che_status,');
    Query1.SQL.Add('che_abono');
    Query1.SQL.Add('from cheques');
    Query1.SQL.Add('where ban_codigo = :ban');
    Query1.SQL.Add('and che_numero = :num');
    Query1.SQL.Add('and emp_codigo = :emp');
    Query1.SQL.Add('and suc_codigo = :suc');
    Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QEmpresasEMP_CODIGO.Value;
    Query1.Parameters.ParamByName('ban').Value := QChequesBAN_CODIGO.Value;
    Query1.Parameters.ParamByName('num').Value := QChequesCHE_NUMERO.Value;
    Query1.Parameters.ParamByName('suc').Value := Suc;
    Query1.Open;
    if Query1.RecordCount > 0 then
    begin
      if Query1.FieldByName('che_tipo').AsString = 'SUP' then
      begin
        MessageDlg('ESTE CHEQUE NO PUEDE MODIFICARSE, DEBIDO A'+#13+
                   'QUE ES UN CHEQUE DE CUENTAS POR PAGAR Y YA'+#13+
                   'HAY FACTURAS QUE FUERON PAGADAS CON EL MISMO',mtError,[mbok],0);
        QChequesCHE_NUMERO.Clear;
        Abort;
      end
      else if Query1.FieldByName('che_abono').AsFloat > 0 then
      begin
        MessageDlg('ESTE CHEQUE NO PUEDE MODIFICARSE, DEBIDO A'+#13+
                   'QUE ES UN CHEQUE DE CUENTAS POR COBRAR Y YA'+#13+
                   'TIENE ABONOS EFECTUADOS',mtError,[mbok],0);
        QChequesCHE_NUMERO.Clear;
        Abort;
      end
      else if Query1.FieldByName('che_status').AsString = 'ANU' then
      begin
        MessageDlg('ESTE CHEQUE NO PUEDE MODIFICARSE, DEBIDO A'+#13+
                   'QUE ESTA ANULADO',mtError,[mbok],0);
        QChequesCHE_NUMERO.Clear;
        Abort;
      end
      else
      Begin
        accion := 2;
        QCheques.Close;
        QCheques.Parameters.ParamByName('banco').Value  := Query1.FieldByName('ban_codigo').AsInteger;
        QCheques.Parameters.ParamByName('numero').Value := Query1.FieldByName('che_numero').AsInteger;
        QCheques.Parameters.ParamByName('suc').Value := Suc;
        QCheques.Open;

        DBEdit8.Enabled := rbTipo.ItemIndex = 3;
        btBenef.Enabled := rbTipo.ItemIndex < 3;

        QDetalle.Close;
        QDetalle.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QEmpresasEMP_CODIGO.Value;
        QDetalle.Parameters.ParamByName('ban').Value := QChequesBAN_CODIGO.Value;
        QDetalle.Parameters.ParamByName('num').Value := QChequesCHE_NUMERO.Value;
        QDetalle.Parameters.ParamByName('suc').Value := Suc;
        QDetalle.Open;

        QCentro.Close;
        QCentro.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QEmpresasEMP_CODIGO.Value;
        QCentro.Parameters.ParamByName('ban').Value := QChequesBAN_CODIGO.Value;
        QCentro.Parameters.ParamByName('num').Value := QChequesCHE_NUMERO.Value;
        QCentro.Parameters.ParamByName('suc').Value := Suc;
        QCentro.Open;

        QRetenciones.Close;
        QRetenciones.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QEmpresasEMP_CODIGO.Value;
        QRetenciones.Parameters.ParamByName('ban').Value := QChequesBAN_CODIGO.Value;
        QRetenciones.Parameters.ParamByName('num').Value := QChequesCHE_NUMERO.Value;
        QRetenciones.Parameters.ParamByName('suc').Value := Suc;
        QRetenciones.Open;

        if QChequesCHE_TIPO.Value = 'SUP' then
        begin
          QFacturas.Close;
          QFacturas.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QEmpresasEMP_CODIGO.Value;
          QFacturas.Parameters.ParamByName('num').Value := QChequesCHE_NUMERO.Value;
          QFacturas.Parameters.ParamByName('ban').Value := QChequesBAN_CODIGO.Value;
          QFacturas.Parameters.ParamByName('suc').Value := Suc;
          QFacturas.Open;
        end;
        
        Totalizar;
        QCheques.Edit;
      end;
    end;
  end;
end;

procedure TfrmCheque.QChequesAfterInsert(DataSet: TDataSet);
begin
  accion := 1;
end;

procedure TfrmCheque.QChequesAfterEdit(DataSet: TDataSet);
begin
  accion := 2;
end;

procedure TfrmCheque.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     if (activecontrol.classtype <> tdbgrid) and (activecontrol.classtype <> TDBGridObj) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmCheque.QCentroBeforePost(DataSet: TDataSet);
begin
  if QCentrocen_nombre.IsNull then QCentro.Cancel;
end;

procedure TfrmCheque.QCentroNewRecord(DataSet: TDataSet);
begin
  QCentroban_codigo.Value := QChequesBAN_CODIGO.Value;
  QCentroche_numero.Value := QChequesCHE_NUMERO.Value;
  QCentroemp_codigo.Value := dm.vp_cia;//dm.QEmpresasEMP_CODIGO.Value;
end;

procedure TfrmCheque.SpeedButton5Click(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR ESTA RETENCION?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QRetenciones.Delete
  end;
  GridRet.setfocus;
end;

procedure TfrmCheque.SpeedButton6Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select ret_nombre, ret_codigo');
  Search.Query.Add('from retenciones');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));//IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.AliasFields.Add('Descripción');
  Search.AliasFields.Add('Cuenta');
  Search.ResultField := 'ret_codigo';
  Search.Title := 'Retenciones';
  if Search.execute then
  begin
    QRetenciones.Edit;
    QRetencionesret_codigo.Value := StrToInt(Search.ValueField);
  end;
end;

procedure TfrmCheque.QRetencionesNewRecord(DataSet: TDataSet);
begin
  QRetencionesche_numero.Value := QChequesCHE_NUMERO.Value;
  QRetencionesemp_codigo.Value := dm.vp_cia;//dm.QEmpresasEMP_CODIGO.Value;
  QRetencionesban_codigo.Value := QChequesBAN_CODIGO.Value;
end;

procedure TfrmCheque.GridRetColEnter(Sender: TObject);
begin
  if GridRet.SelectedIndex = 1 then
    GridRet.SelectedIndex := GridRet.SelectedIndex + 1;
end;

procedure TfrmCheque.GridRetEnter(Sender: TObject);
begin
  GridRet.SelectedIndex := 0;
end;

procedure TfrmCheque.GridRetKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_insert then abort;
  if (ssCtrl in Shift) and (key = vk_delete) then abort;
  if key = vk_return then
     if GridRet.SelectedIndex <> 2 then
        GridRet.SelectedIndex := GridRet.SelectedIndex + 1
     else
     begin
       GridRet.SelectedIndex := 0;
       QRetenciones.Append;
     end;
end;

procedure TfrmCheque.QRetencionesret_codigoChange(Sender: TField);
begin
  if not QRetencionesret_codigo.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select ret_nombre, ret_porciento, cat_cuenta from retenciones');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ret_codigo = :ret');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('ret').Value  := QRetencionesret_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
    begin
      MessageDlg('ESTA RETENCION NO EXISTE',mtError,[mbok],0);
      QRetencionesret_codigo.Clear;
      Abort;
    end
    else if dm.Query1.RecordCount > 0 then
    begin
      QRetenciones.Edit;
      QRetencionesdet_nombre.Value := dm.Query1.FieldByName('ret_nombre').AsString;
      QRetencionesdet_cuenta.Value := dm.Query1.FieldByName('cat_cuenta').AsString;
      if dm.Query1.FieldByName('ret_porciento').AsFloat > 0 then
        QRetencionesdet_monto.Value := (QChequesCHE_MONTO.Value * dm.Query1.FieldByName('ret_porciento').AsFloat)/100;

      GridRet.SelectedIndex := 2;
    end;
  end;
end;

procedure TfrmCheque.QRetencionesdet_montoChange(Sender: TField);
begin
  if not QRetencionesdet_monto.IsNull then
  begin
    if not QDetalle.Locate('cat_cuenta',QRetencionesdet_cuenta.Value,[]) then
    begin
      QDetalle.Append;
      QDetalleCAT_CUENTA.Value := QRetencionesdet_cuenta.Value;
      QDetalleDET_ORIGEN.Value := 'Credito';
      QDetalleDET_MONTO.Value  := QRetencionesdet_monto.Value;
      QDetalle.Post;
    end
    else
    begin
      QDetalle.Edit;
      QDetalleDET_MONTO.Value  := QRetencionesdet_monto.Value;
      QDetalle.Post;
    end;
  end;
end;

procedure TfrmCheque.QChequesSUC_CODIGOChange(Sender: TField);
var
   Suc : Integer;
begin
    Suc := QChequesSUC_CODIGO.Value;
    if not QChequesBAN_CODIGO.IsNull then
    Begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select ban_nombre, cat_cuenta, BAN_MODSECUENCIA');
      dm.Query1.SQL.Add('from bancos');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and ban_codigo = :ban');
      dm.Query1.SQL.Add('and suc_codigo = :suc');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('ban').Value := QChequesBAN_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('suc').Value := Suc;
      dm.Query1.Open;
      if dm.Query1.RecordCount = 0 then
        tBanco.Text := ''
      else
      begin
        tBanco.Text := dm.Query1.FieldByName('ban_nombre').AsString;
        CtaBanco := dm.Query1.FieldByName('cat_cuenta').AsString;
        DBEdit2.ReadOnly := dm.Query1.FieldByName('ban_modsecuencia').AsString = 'N';
        if not dm.Query1.FieldByName('cat_cuenta').IsNull then
        begin
          if not QDetalle.Locate('cat_cuenta',
          dm.Query1.FieldByName('cat_cuenta').AsString,[]) then
          Begin
            QDetalle.Append;
            QDetalleCAT_CUENTA.Value := dm.Query1.FieldByName('cat_cuenta').AsString;
            QDetalleDET_ORIGEN.Value := 'Credito';
            QDetalleDET_MONTO.Value  := QChequesCHE_MONTO.Value;
            QDetalle.Post;
          End;
        end;

        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select isnull(max(che_numero),0) as maximo');
        dm.Query1.SQL.Add('from cheques');
        dm.Query1.SQL.Add('where emp_codigo = :emp');
        dm.Query1.SQL.Add('and ban_codigo = :ban');
        dm.Query1.SQL.Add('and suc_codigo = :suc');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QEmpresasEMP_CODIGO.Value;
        dm.Query1.Parameters.ParamByName('ban').Value := QChequesBAN_CODIGO.Value;
        dm.Query1.Parameters.ParamByName('suc').Value := Suc;
        dm.Query1.Open;
        QChequesCHE_NUMERO.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
      end;
    End
    else
      tBanco.Text := '';
end;

procedure TfrmCheque.SpeedButton1Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select con_nombre, con_codigo');
  Search.Query.Add('from conceptos');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));//IntToStr(dm.QEmpresasEMP_CODIGO.Value));
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
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('con').Value := StrToInt(Search.ValueField);
    dm.Query1.Open;
    QChequesCHE_CONCEPTO1.Value := dm.Query1.FieldByName('con_nombre').AsString;
    if not dm.Query1.FieldByName('cat_cuenta').IsNull then
    begin
      if not QDetalle.Locate('cat_cuenta', dm.Query1.FieldByName('cat_cuenta').AsString,[]) then
      Begin
        QDetalle.Append;
        QDetalleCAT_CUENTA.Value := dm.Query1.FieldByName('cat_cuenta').AsString;
        QDetalleDET_ORIGEN.Value := 'Debito';
        QDetalleDET_MONTO.Value  := QChequesCHE_MONTO.Value;
        QDetalle.Post;
      End;
    end;
  end;
end;

procedure TfrmCheque.TotalizaRet;
var
  Ret : Double;
  punt : TBookmark;
begin
  if Totaliza = True then
  Begin
    Ret   := 0;
    punt := QRetenciones.GetBookmark;
    QRetenciones.DisableControls;
    QRetenciones.First;
    while not QRetenciones.Eof do
    Begin
      Ret  := Ret  + QRetencionesdet_monto.Value;
      QRetenciones.Next;
    End;
    QRetenciones.GotoBookmark(punt);
    QRetenciones.EnableControls;
    QChequesCHE_RETENCION.Value := Ret;
  End;
end;

procedure TfrmCheque.QRetencionesAfterPost(DataSet: TDataSet);
begin
  TotalizaRet;
  if rbTipo.ItemIndex = 0 then
    TotalizaFac;
end;

procedure TfrmCheque.QFacturasFAC_RETENCIONChange(Sender: TField);
begin
  if not QFacturasFAC_RETENCION.IsNull then
    QFacturasFAC_PAGO.Value := QFacturasFAC_SALDO.Value -
                               (QFacturasFAC_DESCUENTO.Value + QFacturasFAC_RETENCION.Value)
  else if not QFacturasFAC_DESCUENTO.IsNull then
    QFacturasFAC_PAGO.Value := QFacturasFAC_SALDO.Value -
                               (QFacturasFAC_DESCUENTO.Value + QFacturasFAC_RETENCION.Value)
  else
    QFacturasFAC_PAGO.Value := QFacturasFAC_SALDO.Value;
end;

procedure TfrmCheque.QRetencionesAfterDelete(DataSet: TDataSet);
begin
  TotalizaRet;
end;

procedure TfrmCheque.QChequesCHE_DESCUENTOChange(Sender: TField);
begin
  if (not QChequesCHE_DESCUENTO.IsNull) and (QChequesCHE_DESCUENTO.Value > 0) then
  begin
    QChequesCHE_MONTO_BANCO.Value := QChequesCHE_MONTO.Value -
                                       (QChequesCHE_DESCUENTO.Value +
                                        (QChequesCHE_RETENCION.Value/QchequesCHE_TASA.Value));
    if QDetalle.Locate('cat_cuenta',CtaBanco,[]) then
    begin
      QDetalle.Edit;
      QDetalleDET_MONTO.Value := QChequesCHE_MONTO_BANCO.Value;
      QDetalle.Post;
    end;

    if not QDetalle.Locate('cat_cuenta',dm.QContabPAR_CTADESCCOMP.AsString,[]) then
    begin
      QDetalle.Append;
      QDetalleCAT_CUENTA.Value := dm.QContabPAR_CTADESCCOMP.AsString;
      QDetalleDET_MONTO.Value  := QChequesCHE_DESCUENTO.Value;
      QDetalleDET_ORIGEN.Value := 'Credito';
      QDetalle.Post;
    end
    else
    begin
      QDetalle.Edit;
      QDetalleCAT_CUENTA.Value := dm.QContabPAR_CTADESCCOMP.AsString;
      QDetalleDET_MONTO.Value  := QChequesCHE_DESCUENTO.Value;
      QDetalleDET_ORIGEN.Value := 'Credito';
      QDetalle.Post;
    end;
  end;
end;

procedure TfrmCheque.QChequesCHE_RETENCIONChange(Sender: TField);
begin
  if (not QChequesCHE_RETENCION.IsNull) and (QChequesCHE_RETENCION.Value > 0) then
  begin
    QChequesCHE_MONTO_BANCO.Value := QChequesCHE_MONTO.Value -
                                       (QChequesCHE_DESCUENTO.Value +
                                        (QChequesCHE_RETENCION.Value/QchequesCHE_TASA.Value));
    if QDetalle.Locate('cat_cuenta',CtaBanco,[]) then
    begin
      QDetalle.Edit;
      QDetalleDET_MONTO.Value := QChequesCHE_MONTO_BANCO.Value;
      QDetalle.Post;
    end;
  end;
end;

procedure TfrmCheque.btfindcuentaClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));//IntToStr(dm.QEmpresasEMP_CODIGO.Value));
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
  PageControl1.ActivePageIndex := 0;
  GridCuentas.SetFocus;
end;

procedure TfrmCheque.btdeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR LA CUENTA?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QDetalle.Delete
  end;
  PageControl1.ActivePageIndex := 0;
  GridCuentas.setfocus;
end;

procedure TfrmCheque.QChequesCHE_MONTO_BANCOChange(Sender: TField);
begin
  if not QChequesCHE_MONTO_BANCO.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(mon_codigo,0) as mon_codigo from bancos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ban_codigo = :ban');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('ban').Value := QChequesban_codigo.Value;
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
            QDetalleDET_MONTO.Value  := (QChequesCHE_MONTO_BANCO.Value*Qchequesche_tasa.Value) - QChequesCHE_MONTO_BANCO.Value;
            QDetalle.Post;
          End
          else
          Begin
            QDetalle.Edit;
            QDetalleCAT_CUENTA.Value := dm.QContabpar_cta_prima.Value;
            QDetalleDET_ORIGEN.Value := 'Credito';
            QDetalleDET_MONTO.Value  := (QChequesCHE_MONTO_BANCO.Value*Qchequesche_tasa.Value) - QChequesCHE_MONTO_BANCO.Value;
            QDetalle.Post;
          End;
        end;
      end;
    end;
  end;
end;

procedure TfrmCheque.QFacturasAfterInsert(DataSet: TDataSet);
begin
  if not PuedeInsertar then QFacturas.Cancel;
end;

procedure TfrmCheque.Beneficiario(Tipo: string);
var
  a : integer;
begin
  if Tipo = 'SUP' then
  begin
    QChequesSUP_CODIGO.Value := StrToInt(edCodigo.Text);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select sup_nombre, sup_cuenta');
    dm.Query1.SQL.Add('from proveedores');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and sup_codigo = :sup');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('sup').Value := QChequesSUP_CODIGO.Value;
    dm.Query1.Open;
    QChequesCHE_BENEF.Value := '*'+dm.Query1.FieldByName('sup_nombre').AsString+'*';
    CtaBenef := dm.Query1.FieldByName('sup_cuenta').AsString;
    if not dm.Query1.FieldByName('sup_cuenta').IsNull then
    begin
      if not QDetalle.Locate('cat_cuenta',
      dm.Query1.FieldByName('sup_cuenta').AsString,[]) then
      Begin
        QDetalle.Append;
        QDetalleCAT_CUENTA.Value := dm.Query1.FieldByName('sup_cuenta').AsString;
        QDetalleDET_ORIGEN.Value := 'Debito';
        QDetalleDET_MONTO.Value  := QChequesCHE_MONTO.Value;
        QDetalle.Post;
      End;
    end;

    PuedeInsertar := True;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select fac_numero, fac_fecha, fac_vence,');
    dm.Query1.SQL.Add('fac_total, fac_abono, fac_itbis');
    dm.Query1.SQL.Add('from provfacturas');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and sup_codigo = :sup');
    dm.Query1.SQL.Add('and fac_status = '+#39+'PEN'+#39);
    dm.Query1.SQL.Add('order by fac_fecha');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('sup').Value := QChequesSUP_CODIGO.Value;
    dm.Query1.Open;
    dm.Query1.DisableControls;
    QFacturas.Close;
    QFacturas.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QEmpresasEMP_CODIGO.Value;
    QFacturas.Parameters.ParamByName('ban').Value := QChequesBAN_CODIGO.Value;
    QFacturas.Parameters.ParamByName('num').Value := QChequesCHE_NUMERO.Value;
    QFacturas.Parameters.ParamByName('suc').Value := QChequesSUC_CODIGO.Value;
    QFacturas.Open;
    QFacturas.DisableControls;
    a := 0;
    Totaliza := false;
    while not dm.Query1.Eof do
    Begin
      a := a + 1;
      QFacturas.Insert;
      QFacturasSUC_CODIGO.Value := QChequesSUC_CODIGO.Value;
      QFacturasFAC_ABONO.Value  := StrToFloat(Format('%10.2f',[
                                   dm.Query1.FieldByName('fac_abono').AsFloat]));
      QFacturasFAC_NUMERO.Value := dm.Query1.FieldByName('fac_numero').AsString;
      QFacturasFAC_SALDO.Value  := StrToFloat(Format('%10.2f',[
                                   dm.Query1.FieldByName('fac_total').AsFloat]))-
                                   StrToFloat(Format('%10.2f',[
                                   dm.Query1.FieldByName('fac_abono').AsFloat]));
      QFacturasFAC_SECUENCIA.Value := a;
      QFacturasSUP_CODIGO.Value := QChequesSUP_CODIGO.Value;
      QFacturasEMP_CODIGO.Value := dm.QEmpresasEMP_CODIGO.Value;
      QFacturasCHE_NUMERO.Value := QChequesCHE_NUMERO.Value;
      QFacturasBAN_CODIGO.Value := QChequesBAN_CODIGO.Value;
      QFacturasFAC_FECHA.Value  := Dateof(dm.Query1.FieldByName('fac_fecha').AsDateTime);
      QFacturasFAC_VENCE.Value  := Dateof(dm.Query1.FieldByName('fac_vence').AsDateTime);
      QFacturasFAC_TOTAL.Value  := StrToFloat(Format('%10.2f',[
                                   dm.Query1.FieldByName('fac_total').AsFloat]));
      QFacturasFAC_ITBIS.Value  := dm.Query1.FieldByName('fac_itbis').AsFloat;
      QFacturas.Post;
      dm.Query1.Next;
    End;
    Totaliza := true;
    dm.Query1.EnableControls;
    QFacturas.EnableControls;
    QFacturas.First;
    PageControl1.ActivePageIndex := 0;

    PuedeInsertar := False;

    GridCuentas.SetFocus;
  end;
  if Tipo = 'CLI' then
  begin
    QChequesCLI_CODIGO.Value := StrToInt(edCodigo.Text);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cli_nombre, cli_cuenta');
    dm.Query1.SQL.Add('from clientes');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cli_codigo = :cli');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cli').Value := QChequesCLI_CODIGO.Value;
    dm.Query1.Open;
    QChequesCHE_BENEF.Value := '*'+dm.Query1.FieldByName('cli_nombre').AsString+'*';
    CtaBenef := dm.Query1.FieldByName('cli_cuenta').AsString;
    if not dm.Query1.FieldByName('cli_cuenta').IsNull then
    begin
      if not QDetalle.Locate('cat_cuenta',
      dm.Query1.FieldByName('cli_cuenta').AsString,[]) then
      Begin
        QDetalle.Append;
        QDetalleCAT_CUENTA.Value := dm.Query1.FieldByName('cli_cuenta').AsString;
        QDetalleDET_ORIGEN.Value := 'Debito';
        QDetalleDET_MONTO.Value  := QChequesCHE_MONTO.Value;
        QDetalle.Post;
      end;
    end;
    PageControl1.ActivePageIndex := 0;
    GridCuentas.SetFocus;
  end;
  if Tipo = 'EMP' then
  begin
    QChequesEMP_NUMERO.Value := StrToInt(edCodigo.Text);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select emp_nombres, emp_apellido_paterno, cat_cuenta');
    dm.Query1.SQL.Add('from empleados');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and emp_numero = :num');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('num').Value := QChequesEMP_NUMERO.Value;
    dm.Query1.Open;
    QChequesCHE_BENEF.Value := dm.Query1.FieldByName('emp_nombres').AsString + ' ' +dm.Query1.FieldByName('emp_apellido_paterno').AsString;
    CtaBenef := dm.Query1.FieldByName('cat_cuenta').AsString;
    if not dm.Query1.FieldByName('cat_cuenta').IsNull then
    begin
      if not QDetalle.Locate('cat_cuenta',
      dm.Query1.FieldByName('cat_cuenta').AsString,[]) then
      Begin
        QDetalle.Append;
        QDetalleCAT_CUENTA.Value := dm.Query1.FieldByName('cat_cuenta').AsString;
        QDetalleDET_ORIGEN.Value := 'Debito';
        QDetalleDET_MONTO.Value  := QChequesCHE_MONTO.Value;
        QDetalle.Post;
      End;
    end;
    PageControl1.ActivePageIndex := 0;
    GridCuentas.SetFocus;
  end;
end;

procedure TfrmCheque.edCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edCodigo.Text) <> '' then
    begin
      case rbTipo.ItemIndex of
      0 : Beneficiario('SUP');
      1 : Beneficiario('CLI');
      2 : Beneficiario('EMP');
      end;
    end;
  end;
end;

procedure TfrmCheque.GridCuentasDrawColumnCell(Sender: TObject;
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

procedure TfrmCheque.spcentrosClick(Sender: TObject);
var
  a : integer;
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select cat_maneja_centro from contcatalogo');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and cat_cuenta = :cta');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QEmpresasEMP_CODIGO.Value;
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
    frmCentrosXCuenta.QCentro.First;
    frmCentrosXCuenta.QCentro.EnableControls;
    frmCentrosXCuenta.Release;
  end;
end;

procedure TfrmCheque.dbedtcont_numeroSucursalChange(Sender: TObject);
begin
if Trim(dbedtcont_numeroSucursal.Text) = '' then TSucLoc.Text := '';
end;

procedure TfrmCheque.dbedtcont_numeroSucursalKeyDown(Sender: TObject;
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
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Open;
      TSucLoc.Text := dm.Query1.FieldByName('suc_nombre').AsString;
      end;
  end;

end;

procedure TfrmCheque.btLocalidadClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select suc_nombre, cont_numeroSucursal from sucursales');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
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
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Open;
    TSucLoc.Text := dm.Query1.FieldByName('suc_nombre').AsString;
  end;

end;

procedure TfrmCheque.FormShow(Sender: TObject);
begin
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

end.
