unit CONT38;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids,
  DB, IBCustomDataSet, IBQuery, IBUpdateSQL, DateUtils,
  ADODB, QuerySearchDlgADO, ComCtrls, DBGridObj;

type
  TfrmDepositos = class(TForm)
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
    btSalir: TBitBtn;
    rbTipo: TDBRadioGroup;
    Search: TQrySearchDlgADO;
    QDepositos: TADOQuery;
    dsDepositos: TDataSource;
    QDetalle: TADOQuery;
    dsDetalle: TDataSource;
    QFacturas: TADOQuery;
    dsFacturas: TDataSource;
    Query1: TADOQuery;
    QDepositosBAN_CODIGO: TIntegerField;
    QDepositosCLI_CODIGO: TIntegerField;
    QDepositosDEP_ANO: TIntegerField;
    QDepositosDEP_CONCEPTO1: TIBStringField;
    QDepositosDEP_CONCEPTO2: TIBStringField;
    QDepositosDEP_FECHA: TDateTimeField;
    QDepositosDEP_MES: TIntegerField;
    QDepositosDEP_MONTO: TFloatField;
    QDepositosDEP_NUMERO: TIntegerField;
    QDepositosDEP_STATUS: TIBStringField;
    QDepositosEMP_CODIGO: TIntegerField;
    QDepositosSUP_CODIGO: TIntegerField;
    QDepositosDEP_TIPO: TIBStringField;
    Label5: TLabel;
    btCliente: TSpeedButton;
    tCliente: TEdit;
    btSupli: TSpeedButton;
    tSupli: TEdit;
    QDetalleBAN_CODIGO: TIntegerField;
    QDetalleCAT_CUENTA: TIBStringField;
    QDetalleCAT_NOMBRE: TIBStringField;
    QDetalleDEP_ANO: TIntegerField;
    QDetalleDEP_MES: TIntegerField;
    QDetalleDEP_NUMERO: TIntegerField;
    QDetalleDET_MONTO: TFloatField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    QFacturasBAN_CODIGO: TIntegerField;
    QFacturasDEP_ANO: TIntegerField;
    QFacturasDEP_MES: TIntegerField;
    QFacturasDEP_NUMERO: TIntegerField;
    QFacturasDET_SECUENCIA: TIntegerField;
    QFacturasEMP_CODIGO: TIntegerField;
    QFacturasFAC_FORMA: TIBStringField;
    QFacturasFAC_NUMERO: TIntegerField;
    QFacturasFAC_NUMEROSUP: TIBStringField;
    QFacturasFAC_PAGO: TFloatField;
    QFacturasFAC_SALDO: TFloatField;
    QFacturasTFA_CODIGO: TIntegerField;
    QFacturasFAC_FECHA: TDateTimeField;
    QFacturasFAC_DESCUENTO: TFloatField;
    Label11: TLabel;
    DBEdit5: TDBEdit;
    QDepositosDEP_DESCUENTO: TFloatField;
    QDepositosUSU_CODIGO: TIntegerField;
    QDetalleDET_ORIGEN: TIBStringField;
    QFacturasMOV_TIPO: TIBStringField;
    QFacturasCuota: TIntegerField;
    QFacturasDET_CUOTA: TIBStringField;
    QFacturasMOV_CUOTA: TIntegerField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    lbFacturas: TStaticText;
    GriFacturas: TDBGrid;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalemp_codigo: TIntegerField;
    dsSuc: TDataSource;
    Label14: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QDetalleSUC_CODIGO: TIntegerField;
    QFacturasSUC_CODIGO: TIntegerField;
    QDepositosSUC_CODIGO: TIntegerField;
    QSucursalalm_codigo: TIntegerField;
    btElimina: TSpeedButton;
    btBuscaCta: TSpeedButton;
    SpeedButton1: TSpeedButton;
    QCentro: TADOQuery;
    QCentroemp_codigo: TIntegerField;
    QCentroban_codigo: TIntegerField;
    QCentrodep_ano: TIntegerField;
    QCentrodep_mes: TIntegerField;
    QCentrodep_numero: TIntegerField;
    QCentrocen_codigo: TIntegerField;
    QCentrodet_secuencia: TIntegerField;
    QCentrocen_nombre: TStringField;
    QCentrodet_monto: TBCDField;
    QCentrosuc_codigo: TIntegerField;
    QCentrocen_referencia: TStringField;
    QCentrosub_secuencia: TIntegerField;
    GridCuentas: TDBGridObj;
    spcentros: TSpeedButton;
    QCentrocat_cuenta: TStringField;
    QDepositosDEP_CONCILIADO: TStringField;
    QDetallecont_numeroSucursal: TStringField;
    QDepositoscont_numeroSucursal: TStringField;
    lbLocSuc: TLabel;
    dbedtcont_numeroSucursal: TDBEdit;
    btLocalidad: TSpeedButton;
    TSucLoc: TEdit;
    QCentrosub_referencia: TStringField;
    procedure FormPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btSalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btBancoClick(Sender: TObject);
    procedure QDepositosNewRecord(DataSet: TDataSet);
    procedure QDetalleNewRecord(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure GridCuentasColEnter(Sender: TObject);
    procedure GridCuentasEnter(Sender: TObject);
    procedure GridCuentasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QDetalleCAT_CUENTAChange(Sender: TField);
    procedure btBuscaCtaClick(Sender: TObject);
    procedure rbTipoClick(Sender: TObject);
    procedure btEliminaClick(Sender: TObject);
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
    procedure QDepositosAfterPost(DataSet: TDataSet);
    procedure QDepositosBAN_CODIGOChange(Sender: TField);
    procedure QDepositosBeforePost(DataSet: TDataSet);
    procedure QDepositosAfterInsert(DataSet: TDataSet);
    procedure QDepositosAfterEdit(DataSet: TDataSet);
    procedure QDepositosDEP_FECHAChange(Sender: TField);
    procedure QDepositosDEP_NUMEROChange(Sender: TField);
    procedure QDepositosDEP_MONTOChange(Sender: TField);
    procedure QDepositosSUP_CODIGOChange(Sender: TField);
    procedure btSupliClick(Sender: TObject);
    procedure QDepositosCLI_CODIGOChange(Sender: TField);
    procedure btClienteClick(Sender: TObject);
    procedure QFacturasBeforeInsert(DataSet: TDataSet);
    procedure QFacturasCalcFields(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure spcentrosClick(Sender: TObject);
    procedure GridCuentasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure dbedtcont_numeroSucursalChange(Sender: TObject);
    procedure dbedtcont_numeroSucursalKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure btLocalidadClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CtaBanco, CtaBenef : String;
    Debitos, Creditos, TotalPagoFacturas : Double;
    Totaliza, Inserta : Boolean;
    Accion : Integer;
    Procedure Totalizar;
    Procedure TotalizaFac;
  end;

var
  frmDepositos: TfrmDepositos;

implementation

uses SIGMA00, SIGMA01, SIGMA08;


{$R *.dfm}

procedure TfrmDepositos.FormPaint(Sender: TObject);
begin
  with frmDepositos do
  begin
    Top  := 2;
    Left := 2;
  end;
end;

procedure TfrmDepositos.FormCreate(Sender: TObject);
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

procedure TfrmDepositos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then btSalirClick(Self);
  if key = vk_f3  then btLimpiarClick(Self);
  if key = vk_f2  then btGrabarClick(self);
end;

procedure TfrmDepositos.btSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmDepositos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmDepositos.btBancoClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select ban_nombre, ban_codigo');
  Search.Query.Add('from bancos');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.Query.Add('and suc_codigo = '+IntToStr(DBLookupComboBox2.KeyValue));
  Search.Query.Add('and ban_tarjeta = '+QuotedStr('False'));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.ResultField := 'ban_codigo';
  Search.Title := 'Bancos';
  if Search.execute then
  begin
    QDepositosBAN_CODIGO.Value := StrToInt(Search.ValueField);
    DBEdit1.SetFocus;
  end;
end;

procedure TfrmDepositos.QDepositosNewRecord(DataSet: TDataSet);
begin
  PageControl1.ActivePageIndex := 0;
  TotalPagoFacturas := 0;
  tCliente.Text := '';
  tSupli.Text   := '';
  Totaliza := True;
  lbCR.Caption := '0.00';
  lbDB.Caption := '0.00';
  lbBAL.Caption := '0.00';
  QDepositosSUC_CODIGO.Value := QSucursalsuc_codigo.Value;
  QDepositosDEP_FECHA.Value  := Date;
  QDepositosDEP_STATUS.Value := 'EMI';
  QDepositosDEP_TIPO.Value   := 'OTR';
  QDepositosDEP_DESCUENTO.Value := 0;
  QDepositosEMP_CODIGO.Value := dm.QEmpresasEMP_CODIGO.Value;
  QDepositosUSU_CODIGO.Value := dm.Usuario;
  QDepositosDEP_CONCILIADO.Value := 'N';
  rbTipoClick(Self);

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
  QCentro.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  QCentro.Parameters.ParamByName('ban').Value := -1;
  QCentro.Parameters.ParamByName('ano').Value := -1;
  QCentro.Parameters.ParamByName('mes').Value := -1;
  QCentro.Parameters.ParamByName('num').Value := -1;
  QCentro.Parameters.ParamByName('suc').Value := -1;
  QCentro.Open;
end;

procedure TfrmDepositos.QDetalleNewRecord(DataSet: TDataSet);
begin
  QDetalleBAN_CODIGO.Value := QDepositosBAN_CODIGO.Value;
  QDetalleDEP_NUMERO.Value := QDepositosDEP_NUMERO.Value;
  QDetalleDEP_ANO.Value    := QDepositosDEP_ANO.Value;
  QDetalleDEP_MES.Value    := QDepositosDEP_MES.Value;
  QDetalleEMP_CODIGO.Value := dm.QEmpresasEMP_CODIGO.Value;
  QDetalleSUC_CODIGO.Value := QDepositosSUC_CODIGO.Value;
end;

procedure TfrmDepositos.FormActivate(Sender: TObject);
begin
  if not QDepositos.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;

    QDepositos.Parameters.ParamByName('banco').Value := -1;
    QDepositos.Parameters.ParamByName('ano').Value := -1;
    QDepositos.Parameters.ParamByName('mes').Value := -1;
    QDepositos.Parameters.ParamByName('num').Value := -1;
    QDepositos.Parameters.ParamByName('suc').Value := -1;
    QDepositos.Open;
    QDepositos.Insert;
  end;
end;

procedure TfrmDepositos.GridCuentasColEnter(Sender: TObject);
begin
  if GridCuentas.SelectedIndex = 2 then
    GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1;
end;

procedure TfrmDepositos.GridCuentasEnter(Sender: TObject);
begin
  GridCuentas.SelectedIndex := 1;
end;

procedure TfrmDepositos.GridCuentasKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmDepositos.QDetalleCAT_CUENTAChange(Sender: TField);
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
      GridCuentas.SelectedIndex := 2;
    end;
  end;
end;

procedure TfrmDepositos.btBuscaCtaClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
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

procedure TfrmDepositos.rbTipoClick(Sender: TObject);
begin
  btCliente.Enabled   := rbTipo.ItemIndex = 1;
  btSupli.Enabled     := rbTipo.ItemIndex <> 1 ;
end;

procedure TfrmDepositos.btEliminaClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR LA CUENTA?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QDetalle.Delete
  end;
  GridCuentas.setfocus;
end;

procedure TfrmDepositos.Totalizar;
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

procedure TfrmDepositos.QDetalleAfterPost(DataSet: TDataSet);
begin
  Totalizar;
end;

procedure TfrmDepositos.QDetalleAfterDelete(DataSet: TDataSet);
begin
  Totalizar;
end;

procedure TfrmDepositos.btLimpiarClick(Sender: TObject);
begin
  if messagedlg('DESEA LIMPIAR LA PANTALLA Y EMPEZAR UN DEPOSITO NUEVO?',
  mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QDepositos.Close;
    QDepositos.Parameters.ParamByName('banco').Value := -1;
    QDepositos.Parameters.ParamByName('ano').Value := -1;
    QDepositos.Parameters.ParamByName('mes').Value := -1;
    QDepositos.Parameters.ParamByName('num').Value := -1;
    QDepositos.Parameters.ParamByName('suc').Value := -1;
    QDepositos.Open;
    QDepositos.Insert;
    DBEdit1.SetFocus;
  end;
end;

procedure TfrmDepositos.QDetalleBeforePost(DataSet: TDataSet);
begin
  if QDetalleCAT_NOMBRE.IsNull then QDetalle.Cancel;
end;

procedure TfrmDepositos.GriFacturasEnter(Sender: TObject);
begin
  GriFacturas.SelectedIndex := 7;
end;

procedure TfrmDepositos.GriFacturasColEnter(Sender: TObject);
begin
  if GriFacturas.SelectedIndex < 7 then
    GriFacturas.SelectedIndex := 7;
end;

procedure TfrmDepositos.GriFacturasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if GriFacturas.SelectedIndex < 8 then
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
    QFacturasFAC_PAGO.Value      := StrToFloat(Format('%10.2f',[QFacturasFAC_SALDO.Value]));
    QFacturasFAC_DESCUENTO.Value := 0;
  end;
end;

procedure TfrmDepositos.QFacturasFAC_DESCUENTOChange(Sender: TField);
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

procedure TfrmDepositos.TotalizaFac;
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
    TotalPagoFacturas := 0;
    while not QFacturas.Eof do
    Begin
      Total := Total + StrToFloat(Format('%10.2f',[QFacturasFAC_PAGO.Value]));
      Desc  := Desc  + StrToFloat(Format('%10.2f',[QFacturasFAC_DESCUENTO.Value]));
      TotalPagoFacturas := TotalPagoFacturas + StrToFloat(Format('%10.2f',[QFacturasFAC_PAGO.Value]));
      QFacturas.Next;
    End;
    QFacturas.GotoBookmark(punt);
    QFacturas.EnableControls;
    QDepositosDEP_MONTO.Value := StrToFloat(Format('%10.2f',[Total]));
    QDepositosDEP_DESCUENTO.Value := StrToFloat(Format('%10.2f',[Desc]));
    if QDetalle.Locate('cat_cuenta',CtaBenef,[]) then
    Begin
      QDetalle.Edit;
      QDetalleDET_MONTO.Value := Total;
      QDetalle.Post;
    End;
  End;
end;

procedure TfrmDepositos.QFacturasAfterPost(DataSet: TDataSet);
begin
  TotalizaFac;
end;

procedure TfrmDepositos.QFacturasBeforeDelete(DataSet: TDataSet);
begin
  Abort;
end;

procedure TfrmDepositos.btGrabarClick(Sender: TObject);
var
  a : integer;
begin
  if lbBAL.Caption <> '0.00' then
  begin
    MessageDlg('LAS CUENTAS CONTABLES DE ESTE DEPOSITO'+#13+
               'NO ESTAN CUADRADAS',mtError,[mbok],0);
    GridCuentas.SetFocus;
  end
  else if Trim(DBEdit6.Text) = '' then
  begin
    MessageDlg('DEBE ESPECIFICAR LA PRIMERA LINEA DEL CONCEPTO',mtError,[mbok],0);
    DBEdit6.SetFocus;
  end
  else if (QDepositosDEP_NUMERO.Value = 0) or (QDepositosDEP_NUMERO.isnull) then
  begin
    MessageDlg('DEBE ESPECIFICAR EL NUMERO DE DEPOSITO',mtError,[mbok],0);
    DBEdit2.SetFocus;
  end
  else if QDepositosDEP_MONTO.Value <= 0 then
  begin
    MessageDlg('EL MONTO DEBE SER MAYOR QUE CERO (0)',mtError,[mbok],0);
    DBEdit4.SetFocus;
  end
  else if (rbtipo.ItemIndex = 0) and (TotalPagoFacturas = 0) then
  begin
    MessageDlg('DEBE ESPECIFICAR LAS FACTURAS QUE SE VAN A PAGAR',mtError,[mbok],0);
    PageControl1.ActivePageIndex := 1;
  end
  else if (QDepositosBAN_CODIGO.Value = 0) or (QDepositosBAN_CODIGO.isnull) then
  begin
    MessageDlg('DEBE ESPECIFICAR EL NUMERO BANCO',mtError,[mbok],0);
    DBEdit1.SetFocus;
  end
  else if Trim(tBanco.Text) = '' then
  begin
    MessageDlg('ESTE BANCO NO EXISTE',mtError,[mbok],0);
    DBEdit1.SetFocus;
  end
  else if MessageDlg('TODOS LOS DATOS ESTAN CORRECTOS?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    Totaliza := False;
    //Otro
    QDepositos.Post;

    QDetalle.DisableControls;
    QDetalle.First;
    a := 0;
    while not QDetalle.eof do
    begin
      a := a + 1;
      QDetalle.Edit;
      QDetalleBAN_CODIGO.Value := QDepositosBAN_CODIGO.Value;
      QDetalleDEP_NUMERO.Value := QDepositosDEP_NUMERO.Value;
      QDetalleDEP_ANO.Value    := QDepositosDEP_ANO.Value;
      QDetalleDEP_MES.Value    := QDepositosDEP_MES.Value;
      QDetalleDET_SECUENCIA.Value := a;
      QDetalleEMP_CODIGO.Value := dm.QEmpresasEMP_CODIGO.Value;
      QDetalleSUC_CODIGO.Value := QDepositosSUC_CODIGO.Value;
      QDetallecont_numeroSucursal.Value := QDepositoscont_numeroSucursal.Value;
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
        QCentroBAN_CODIGO.Value := QDepositosBAN_CODIGO.Value;
        QCentrodep_numero.Value := QDepositosDEP_NUMERO.Value;
        QCentrodep_ano.Value    := QDepositosDEP_ANO.Value;
        QCentrodep_mes.Value    := QDepositosDEP_MES.Value;
        QCentroDET_SECUENCIA.Value := a;
        QCentroEMP_CODIGO.Value := dm.QEmpresasEMP_CODIGO.Value;
        QCentrosuc_codigo.Value := QDepositosSUC_CODIGO.Value;
        QCentro.Next;
      end;
      QCentro.First;
      QCentro.EnableControls;
      QCentro.UpdateBatch;
    
    //Cuentas por Pagar o Cobrar
    if rbTipo.ItemIndex <= 1 then
    begin
      QFacturas.DisableControls;
      QFacturas.First;
      a := 0;
      while not QFacturas.Eof do
      begin
        a := a + 1;
        QFacturas.Edit;
        QFacturasBAN_CODIGO.Value := QDepositosBAN_CODIGO.Value;
        QFacturasDEP_NUMERO.Value := QDepositosDEP_NUMERO.Value;
        QFacturasDEP_ANO.Value    := QDepositosDEP_ANO.Value;
        QFacturasDEP_MES.Value    := QDepositosDEP_MES.Value;
        QFacturasEMP_CODIGO.Value := dm.QEmpresasEMP_CODIGO.Value;
        QFacturasSUC_CODIGO.Value := QDepositosSUC_CODIGO.Value;
        if QFacturasFAC_DESCUENTO.IsNull then QFacturasFAC_DESCUENTO.Value := 0;
        if QDepositosDEP_TIPO.Value <> 'CLI' then
           QFacturasDET_SECUENCIA.Value := a;
        QFacturas.Post;
        QFacturas.Next;
      end;
      QFacturas.First;
      QFacturas.EnableControls;
      QFacturas.UpdateBatch;

      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('delete from DET_DEPOSITOFACTURA');
      dm.Query1.sql.add('where emp_Codigo = :emp');
      dm.Query1.sql.add('and ban_codigo = :ban');
      dm.Query1.sql.add('and dep_ano = :ano');
      dm.Query1.sql.add('and dep_mes = :mes');
      dm.Query1.sql.add('and dep_numero = :num');
      dm.Query1.sql.add('and suc_codigo = :suc');
      dm.Query1.sql.add('and (fac_pago is null or fac_pago = 0)');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('ban').Value := QDepositosBAN_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('ano').Value := QDepositosDEP_ANO.Value;
      dm.Query1.Parameters.ParamByName('mes').Value := QDepositosDEP_MES.Value;
      dm.Query1.Parameters.ParamByName('num').Value := QDepositosDEP_NUMERO.Value;
      dm.Query1.Parameters.ParamByName('suc').Value := QDepositosSUC_CODIGO.Value;
      dm.Query1.ExecSQL;
    end;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('execute contpr_graba_deposito :emp, :suc, :ban,');
    dm.Query1.SQL.Add(':ano, :mes, :num');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('ban').Value := QDepositosBAN_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('num').Value := QDepositosDEP_NUMERO.Value;
    dm.Query1.Parameters.ParamByName('ano').Value := QDepositosDEP_ANO.Value;
    dm.Query1.Parameters.ParamByName('mes').Value := QDepositosDEP_MES.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := QDepositosSUC_CODIGO.Value;
    dm.Query1.ExecSQL;

    QDepositos.Parameters.ParamByName('banco').Value := -1;
    QDepositos.Parameters.ParamByName('ano').Value := -1;
    QDepositos.Parameters.ParamByName('mes').Value := -1;
    QDepositos.Parameters.ParamByName('num').Value := -1;
    QDepositos.Parameters.ParamByName('suc').Value := -1;
    QDepositos.Open;
    QDepositos.Insert;
    DBEdit1.SetFocus;
  end
  else
    GridCuentas.SetFocus;
end;

procedure TfrmDepositos.QDepositosAfterPost(DataSet: TDataSet);
begin
  QDepositos.UpdateBatch;
end;

procedure TfrmDepositos.QDepositosBAN_CODIGOChange(Sender: TField);
begin
  if not QDepositosBAN_CODIGO.IsNull then
  Begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select ban_nombre, cat_cuenta, BAN_MODSECUENCIA');
    dm.Query1.SQL.Add('from bancos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ban_codigo = :ban');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.SQL.Add('and ban_tarjeta = '+QuotedStr('False'));
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('ban').Value := QDepositosBAN_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := QDepositosSUC_CODIGO.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
      tBanco.Text := ''
    else
    begin
      tBanco.Text := dm.Query1.FieldByName('ban_nombre').AsString;
      CtaBanco := dm.Query1.FieldByName('cat_cuenta').AsString;
      if not dm.Query1.FieldByName('cat_cuenta').IsNull then
      begin
        if not QDetalle.Locate('cat_cuenta',
        dm.Query1.FieldByName('cat_cuenta').AsString,[]) then
        Begin
          QDetalle.Append;
          QDetalleCAT_CUENTA.Value := dm.Query1.FieldByName('cat_cuenta').AsString;
          QDetalleDET_ORIGEN.Value := 'Debito';
          QDetalleDET_MONTO.Value  := QDepositosDEP_MONTO.Value;
          QDetalle.Post;
        End;
      end;

      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select isnull(max(dep_numero),0) as maximo');
      dm.Query1.SQL.Add('from depositos');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and ban_codigo = :ban');
      dm.Query1.SQL.Add('and dep_ano = :ano');
      dm.Query1.SQL.Add('and dep_mes = :mes');
      dm.Query1.SQL.Add('and suc_codigo = :suc');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('ban').Value := QDepositosBAN_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('ano').Value := QDepositosDEP_ANO.Value;
      dm.Query1.Parameters.ParamByName('mes').Value := QDepositosDEP_MES.Value;
      dm.Query1.Parameters.ParamByName('suc').Value := QDepositosSUC_CODIGO.Value;
      dm.Query1.Open;
      QDepositosDEP_NUMERO.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
    end;
  End
  else
    tBanco.Text := '';
end;

procedure TfrmDepositos.QDepositosBeforePost(DataSet: TDataSet);
begin
  QDepositosDEP_ANO.Value := YearOf(QDepositosDEP_FECHA.Value);
  QDepositosDEP_MES.Value := MonthOf(QDepositosDEP_FECHA.Value);
  QDepositosDEP_CONCILIADO.Value := 'N';
end;

procedure TfrmDepositos.QDepositosAfterInsert(DataSet: TDataSet);
begin
  accion := 1;
end;

procedure TfrmDepositos.QDepositosAfterEdit(DataSet: TDataSet);
begin
  accion := 2;
end;

procedure TfrmDepositos.QDepositosDEP_FECHAChange(Sender: TField);
begin
  QDepositosDEP_ANO.Value := YearOf(QDepositosDEP_FECHA.Value);
  QDepositosDEP_MES.Value := MonthOf(QDepositosDEP_FECHA.Value);
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select isnull(max(dep_numero),0) as maximo');
  dm.Query1.SQL.Add('from depositos');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and ban_codigo = :ban');
  dm.Query1.SQL.Add('and dep_ano = :ano');
  dm.Query1.SQL.Add('and dep_mes = :mes');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('ban').Value := QDepositosBAN_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('ano').Value := QDepositosDEP_ANO.Value;
  dm.Query1.Parameters.ParamByName('mes').Value := QDepositosDEP_MES.Value;
  dm.Query1.Open;
  QDepositosDEP_NUMERO.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
end;

procedure TfrmDepositos.QDepositosDEP_NUMEROChange(Sender: TField);
var
  Suc : Integer;
begin
  Suc := QDepositosSUC_CODIGO.Value;
  if not QDepositosDEP_NUMERO.IsNull then
  begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select dep_numero, ban_codigo, dep_tipo, dep_status,');
    Query1.SQL.Add('dep_ano, dep_mes');
    Query1.SQL.Add('from depositos');
    Query1.SQL.Add('where ban_codigo = :ban');
    Query1.SQL.Add('and dep_numero = :num');
    Query1.SQL.Add('and emp_codigo = :emp');
    Query1.SQL.Add('and dep_ano = :ano');
    Query1.SQL.Add('and dep_mes = :mes');
    Query1.SQL.Add('and suc_codigo = :suc');
    Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    Query1.Parameters.ParamByName('ban').Value := QDepositosBAN_CODIGO.Value;
    Query1.Parameters.ParamByName('num').Value := QDepositosDEP_NUMERO.Value;
    Query1.Parameters.ParamByName('ano').Value := QDepositosDEP_ANO.Value;
    Query1.Parameters.ParamByName('mes').Value := QDepositosDEP_MES.Value;
    Query1.Parameters.ParamByName('suc').Value := Suc;
    Query1.Open;
    if Query1.RecordCount > 0 then
    begin
      if Query1.FieldByName('dep_tipo').AsString = 'SUP' then
      begin
        MessageDlg('ESTE DEPOSITO NO PUEDE MODIFICARSE, DEBIDO A'+#13+
                   'QUE ES UN DEPOSITO DE CUENTAS POR PAGAR Y YA'+#13+
                   'HAY FACTURAS QUE FUERON PAGADAS CON EL MISMO',mtError,[mbok],0);
        QDepositosDEP_NUMERO.Clear;
        Abort;
      end
      else if Query1.FieldByName('dep_tipo').AsString = 'CLI' then
      begin
        MessageDlg('ESTE DEPOSITO NO PUEDE MODIFICARSE, DEBIDO A'+#13+
                   'QUE ES UN DEPOSITO DE CUENTAS POR COBRAR Y YA'+#13+
                   'HAY FACTURAS QUE FUERON PAGADAS CON EL MISMO',mtError,[mbok],0);
        QDepositosDEP_NUMERO.Clear;
        Abort;
      end
      else if Query1.FieldByName('dep_status').AsString = 'ANU' then
      begin
        MessageDlg('ESTE DEPOSITO NO PUEDE MODIFICARSE, DEBIDO A'+#13+
                   'QUE ESTA ANULADO',mtError,[mbok],0);
        QDepositosDEP_NUMERO.Clear;
        Abort;
      end
      else
      Begin
        QDepositos.Close;
        QDepositos.Parameters.ParamByName('banco').Value := Query1.FieldByName('ban_codigo').AsInteger;
        QDepositos.Parameters.ParamByName('num').Value   := Query1.FieldByName('dep_numero').AsInteger;
        QDepositos.Parameters.ParamByName('ano').Value   := Query1.FieldByName('dep_ano').AsInteger;
        QDepositos.Parameters.ParamByName('mes').Value   := Query1.FieldByName('dep_mes').AsInteger;
        QDepositos.Parameters.ParamByName('suc').Value   := Suc;
        QDepositos.Open;

        QDetalle.Close;
        QDetalle.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        QDetalle.Parameters.ParamByName('ban').Value := QDepositosBAN_CODIGO.Value;
        QDetalle.Parameters.ParamByName('num').Value := QDepositosDEP_NUMERO.Value;
        QDetalle.Parameters.ParamByName('ano').Value := QDepositosDEP_ANO.Value;
        QDetalle.Parameters.ParamByName('mes').Value := QDepositosDEP_MES.Value;
        QDetalle.Parameters.ParamByName('suc').Value := Suc;
        QDetalle.Open;

        Totalizar;
        QDepositos.Edit;
      end;
    end;
  end;
end;

procedure TfrmDepositos.QDepositosDEP_MONTOChange(Sender: TField);
begin
  if (not QDepositosDEP_MONTO.IsNull) and (CtaBanco <> '') then
  Begin
    QDetalle.Locate('cat_cuenta',CtaBanco,[]);
    QDetalle.Edit;
    QDetalleDET_MONTO.Value := QDepositosDEP_MONTO.Value;
    QDetalle.Post;
  End;
end;

procedure TfrmDepositos.QDepositosSUP_CODIGOChange(Sender: TField);
var
  a : integer;
begin
  if not QDepositosSUP_CODIGO.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select sup_nombre, sup_cuenta');
    dm.Query1.SQL.Add('from proveedores');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and sup_codigo = :sup');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.ParamByName('sup').Value := QDepositosSUP_CODIGO.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      CtaBenef    := dm.Query1.FieldByName('sup_cuenta').AsString;
      tSupli.Text := dm.Query1.FieldByName('sup_nombre').AsString;
      if CtaBenef <> '' then
      begin
        if not QDetalle.Locate('cat_cuenta', CtaBenef, []) then
        begin
          QDetalle.Append;
          QDetalleCAT_CUENTA.Value := CtaBenef;
          QDetalleDET_MONTO.Value  := QDepositosDEP_MONTO.Value;
          QDetalleDET_ORIGEN.Value := 'Credito';
          QDetalle.Post;
        end
        else
        begin
          QDetalle.Edit;
          QDetalleDET_MONTO.Value  := QDepositosDEP_MONTO.Value;
          QDetalleDET_ORIGEN.Value := 'Credito';
          QDetalle.Post;
        end;
      end;
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('select fac_numero, fac_fecha, fac_total, fac_abono');
      Query1.SQL.Add('from provfacturas');
      Query1.SQL.Add('where emp_Codigo = :emp');
      Query1.SQL.Add('and sup_codigo = :sup');
      Query1.SQL.Add('and fac_status = '+#39+'PEN'+#39);
      Query1.SQL.Add('order by fac_fecha');
      Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      Query1.Parameters.ParamByName('sup').Value := QDepositosSUP_CODIGO.Value;
      Query1.Open;
      Query1.DisableControls;
      QFacturas.DisableControls;
      GriFacturas.Columns[3].FieldName := 'FAC_NUMEROSUP';
      a := 0;
      Inserta := True;
      while not Query1.eof do
      begin
        a := a + 1;
        QFacturas.Append;
        QFacturasBAN_CODIGO.Value    := QDepositosBAN_CODIGO.Value;
        QFacturasDEP_ANO.Value       := QDepositosDEP_ANO.Value;
        QFacturasDEP_MES.Value       := QDepositosDEP_MES.Value;
        QFacturasDEP_NUMERO.Value    := QDepositosDEP_NUMERO.Value;
        QFacturasDET_SECUENCIA.Value := a;
        QFacturasEMP_CODIGO.Value    := dm.QEmpresasEMP_CODIGO.Value;
        QFacturasFAC_NUMEROSUP.Value := Query1.FieldByName('fac_numero').AsString;
        QFacturasFAC_SALDO.Value     := StrToFloat(Format('%10.2f',
                                        [Query1.FieldByName('fac_total').AsFloat]))-
                                        StrToFloat(Format('%10.2f',
                                        [Query1.FieldByName('fac_abono').AsFloat]));
        QFacturasFAC_FECHA.Value     := Query1.FieldByName('fac_fecha').AsDateTime;
        QFacturas.Post;
        Query1.Next;
      end;
      Query1.EnableControls;
      QFacturas.First;
      QFacturas.EnableControls;
      Inserta := False;
    end
    else
      tSupli.Text := '';
  end
  else
    tSupli.Text := '';
end;

procedure TfrmDepositos.btSupliClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select sup_nombre, sup_codigo');
  Search.Query.Add('from proveedores');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  if rbTipo.ItemIndex = 0 then
  Search.Query.Add('and sup_balance > 0') else
  if rbTipo.ItemIndex = 0 then
  Search.Query.Add('and sup_balance = 0');
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.ResultField := 'sup_codigo';
  Search.Title := 'Proveedores';
  if Search.execute then
  begin
    QDepositosSUP_CODIGO.Value := StrToInt(Search.ValueField);
    GriFacturas.SetFocus;
  end;
end;

procedure TfrmDepositos.QDepositosCLI_CODIGOChange(Sender: TField);
var
  a : integer;
begin
  if not QDepositosCLI_CODIGO.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cli_nombre, cli_cuenta');
    dm.Query1.SQL.Add('from clientes');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cli_codigo = :cli');
    dm.Query1.Parameters.ParamByName('cli').Value := QDepositosCLI_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      CtaBenef    := dm.Query1.FieldByName('cli_cuenta').AsString;
      tCliente.Text := dm.Query1.FieldByName('cli_nombre').AsString;
      if CtaBenef <> '' then
      begin
        if not QDetalle.Locate('cat_cuenta', CtaBenef, []) then
        begin
          QDetalle.Append;
          QDetalleCAT_CUENTA.Value := CtaBenef;
          QDetalleDET_MONTO.Value  := QDepositosDEP_MONTO.Value;
          QDetalleDET_ORIGEN.Value := 'Credito';
          QDetalle.Post;
        end
        else
        begin
          QDetalle.Edit;
          QDetalleDET_MONTO.Value  := QDepositosDEP_MONTO.Value;
          QDetalleDET_ORIGEN.Value := 'Credito';
          QDetalle.Post;
        end;
      end;
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('select mov_tipo, mov_numero, fac_forma, mov_monto, mov_abono,');
      Query1.SQL.Add('tfa_codigo, mov_cuota, mov_fecha, mov_cuota, mov_secuencia');
      Query1.SQL.Add('from movimientos');
      Query1.SQL.Add('where emp_Codigo = :emp');
      Query1.SQL.Add('and cli_codigo = :cli');
      Query1.SQL.Add('and mov_status = '+#39+'PEN'+#39);
      Query1.SQL.Add('order by mov_fecha');
      Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      Query1.Parameters.ParamByName('cli').Value := QDepositosCLI_CODIGO.Value;
      Query1.Open;
      Query1.DisableControls;
      QFacturas.DisableControls;
      GriFacturas.Columns[3].FieldName := 'FAC_NUMERO';
      a := 0;
      Inserta := True;
      while not Query1.eof do
      begin
        a := a + 1;
        QFacturas.Append;
        QFacturasBAN_CODIGO.Value    := QDepositosBAN_CODIGO.Value;
        QFacturasDEP_ANO.Value       := QDepositosDEP_ANO.Value;
        QFacturasDEP_MES.Value       := QDepositosDEP_MES.Value;
        QFacturasDEP_NUMERO.Value    := QDepositosDEP_NUMERO.Value;
        QFacturasDET_SECUENCIA.Value := a;
        QFacturasEMP_CODIGO.Value    := dm.QEmpresasEMP_CODIGO.Value;
        QFacturasFAC_NUMERO.Value    := Query1.FieldByName('mov_numero').AsInteger;
        QFacturasTFA_CODIGO.Value    := Query1.FieldByName('tfa_codigo').AsInteger;
        QFacturasFAC_FORMA.Value     := Query1.FieldByName('fac_forma').AsString;
        QFacturasMOV_TIPO.Value      := Query1.FieldByName('mov_tipo').AsString;
        QFacturasFAC_SALDO.Value     := StrToFloat(Format('%10.2f',
                                        [Query1.FieldByName('mov_monto').AsFloat]))-
                                        StrToFloat(Format('%10.2f',
                                        [Query1.FieldByName('mov_abono').AsFloat]));
        QFacturasFAC_FECHA.Value     := Query1.FieldByName('mov_fecha').AsDateTime;
        QFacturasMOV_CUOTA.Value     := Query1.FieldByName('mov_secuencia').AsInteger;
        QFacturasDET_CUOTA.Value     := Query1.FieldByName('mov_cuota').AsString;
        QFacturas.Post;
        Query1.Next;
      end;
      Query1.EnableControls;
      QFacturas.First;
      QFacturas.EnableControls;
      Inserta := False;
    end
    else
      tCliente.Text := '';
  end
  else
    tCliente.Text := '';
end;

procedure TfrmDepositos.btClienteClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cli_nombre, cli_codigo');
  Search.Query.Add('from clientes');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.Query.Add('and cli_balance > 0');
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.ResultField := 'cli_codigo';
  Search.Title := 'Clientes';
  if Search.execute then
  begin
    QDepositosCLI_CODIGO.Value := StrToInt(Search.ValueField);
    PageControl1.ActivePageIndex := 1;
    GriFacturas.SetFocus;
  end;
end;

procedure TfrmDepositos.QFacturasBeforeInsert(DataSet: TDataSet);
begin
  if inserta = False then Abort;
end;

procedure TfrmDepositos.QFacturasCalcFields(DataSet: TDataSet);
begin
  if QFacturasDET_CUOTA.Value = 'True' then
    QFacturasCuota.Value := QFacturasMOV_CUOTA.Value;
end;

procedure TfrmDepositos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     if (activecontrol.classtype <> tdbgrid) and (activecontrol.classtype <> TDBGridObj) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmDepositos.SpeedButton1Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select con_nombre, con_codigo');
  Search.Query.Add('from conceptos');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
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
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('con').Value := StrToInt(Search.ValueField);
    dm.Query1.Open;
    QDepositosDEP_CONCEPTO1.Value := dm.Query1.FieldByName('con_nombre').AsString;
    if not dm.Query1.FieldByName('cat_cuenta').IsNull then
    begin
      if not QDetalle.Locate('cat_cuenta', dm.Query1.FieldByName('cat_cuenta').AsString,[]) then
      Begin
        QDetalle.Append;
        QDetalleCAT_CUENTA.Value := dm.Query1.FieldByName('cat_cuenta').AsString;
        QDetalleDET_ORIGEN.Value := 'Credito';
        QDetalleDET_MONTO.Value  := QDepositosDEP_MONTO.Value;
        QDetalle.Post;
      End;
    end;
  end;
end;

procedure TfrmDepositos.spcentrosClick(Sender: TObject);
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
        QCentro.Delete;

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

procedure TfrmDepositos.GridCuentasDrawColumnCell(Sender: TObject;
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

procedure TfrmDepositos.FormShow(Sender: TObject);
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

procedure TfrmDepositos.dbedtcont_numeroSucursalChange(Sender: TObject);
begin
if Trim(dbedtcont_numeroSucursal.Text) = '' then TSucLoc.Text := '';
end;

procedure TfrmDepositos.dbedtcont_numeroSucursalKeyDown(Sender: TObject;
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

procedure TfrmDepositos.btLocalidadClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select suc_nombre, cont_numeroSucursal from sucursales');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
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
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Open;
    TSucLoc.Text := dm.Query1.FieldByName('suc_nombre').AsString;
  end;

end;

end.
