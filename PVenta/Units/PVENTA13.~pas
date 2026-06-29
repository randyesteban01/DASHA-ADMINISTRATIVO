unit PVENTA13;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db,
  IBCustomDataSet, IBQuery, IBUpdateSQL, ComCtrls, Grids, DBGrids, ADODB,
  QuerySearchDlgADO, ToolWin, ActnList;

type
  TfrmProveedores = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit10: TDBEdit;
    Label10: TLabel;
    Search: TQrySearchDlgADO;
    QProveedores: TADOQuery;
    QProveedoresEMP_CODIGO: TIntegerField;
    QProveedoresSUP_CODIGO: TIntegerField;
    QProveedoresSUP_NOMBRE: TIBStringField;
    QProveedoresSUP_RNC: TIBStringField;
    QProveedoresSUP_DIRECCION: TIBStringField;
    QProveedoresSUP_LOCALIDAD: TIBStringField;
    QProveedoresSUP_TELEFONO: TIBStringField;
    QProveedoresSUP_FAX: TIBStringField;
    QProveedoresSUP_WEB: TIBStringField;
    QProveedoresSUP_EMAIL: TIBStringField;
    QProveedoresSUP_CUENTA: TIBStringField;
    QProveedoresSUP_STATUS: TIBStringField;
    QProveedoresSUP_BALANCE: TFloatField;
    dsProveedores: TDataSource;
    QProveedoresSUP_VENDEDOR: TIBStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
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
    DBEdit11: TDBEdit;
    DBGrid3: TDBGrid;
    QCxP: TADOQuery;
    QCxPFAC_NUMERO: TIBStringField;
    QCxPFAC_FECHA: TDateTimeField;
    QCxPFAC_TOTAL: TFloatField;
    QCxPFAC_ABONO: TFloatField;
    QCxPSaldo: TFloatField;
    dsCxP: TDataSource;
    TabSheet3: TTabSheet;
    Label25: TLabel;
    btCuenta: TSpeedButton;
    DBEdit34: TDBEdit;
    tCuenta: TEdit;
    QProveedoresSUP_CTACOMPRA: TIBStringField;
    Label12: TLabel;
    btctacompra: TSpeedButton;
    DBEdit12: TDBEdit;
    tCtaCompra: TEdit;
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
    QProveedoresSUP_TIPO: TStringField;
    DBRadioGroup1: TDBRadioGroup;
    QProveedoresSUP_LIMITE: TBCDField;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    QProveedoressup_telefono2: TStringField;
    QProveedoressup_telefono3: TStringField;
    QProveedoresger_codigo: TIntegerField;
    QProveedoressup_contacto2: TStringField;
    QProveedoressup_contacto3: TStringField;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    Label11: TLabel;
    DBEdit23: TDBEdit;
    btgerente: TSpeedButton;
    tgerente: TEdit;
    btrnc: TSpeedButton;
    QProveedoressup_concepto_cheque: TStringField;
    DBCheckBox1: TDBCheckBox;
    Label16: TLabel;
    bttipo: TSpeedButton;
    DBEdit18: TDBEdit;
    ttipo: TEdit;
    QProveedorestip_codigo: TIntegerField;
    QProveedorestipobienid: TIntegerField;
    Label17: TLabel;
    bttipobien: TSpeedButton;
    DBEdit19: TDBEdit;
    ttipobien: TEdit;
    Query1: TADOQuery;
    Label18: TLabel;
    DBEdit20: TDBEdit;
    QProveedoresdias_creditos: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btFindClick(Sender: TObject);
    procedure QProveedoresAfterDelete(DataSet: TDataSet);
    procedure QProveedoresAfterPost(DataSet: TDataSet);
    procedure QProveedoresNewRecord(DataSet: TDataSet);
    procedure QProveedoresBeforePost(DataSet: TDataSet);
    procedure dsProveedoresStateChange(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure QProveedoresAfterOpen(DataSet: TDataSet);
    procedure QCxPCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btCuentaClick(Sender: TObject);
    procedure QProveedoresSUP_CUENTAGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure btctacompraClick(Sender: TObject);
    procedure QProveedoresSUP_CTACOMPRAGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure btgerenteClick(Sender: TObject);
    procedure btrncClick(Sender: TObject);
    procedure bttipoClick(Sender: TObject);
    procedure QProveedorestip_codigoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QProveedoresger_codigoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure FormPaint(Sender: TObject);
    procedure bttipobienClick(Sender: TObject);
    procedure QProveedorestipobienidGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QProveedoresSUP_RNCChange(Sender: TField);
    procedure QProveedoresBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
    CargandoDatosRnc: Boolean;
    procedure CargarDatosRnc(const ARnc: string);
  public
    { Public declarations }
  end;

var
  frmProveedores: TfrmProveedores;

implementation

uses SIGMA01, SIGMA00, CONT77;


{$R *.DFM}

procedure TfrmProveedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmProveedores.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmProveedores.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmProveedores.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmProveedores.btFindClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select sup_nombre, sup_rnc, sup_telefono, sup_codigo');
  Search.query.add('from proveedores');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('RNC');
  Search.AliasFields.Add('Telefono');
  Search.AliasFields.Add('Codigo');
  Search.ResultField := 'sup_codigo';
  if search.execute then
     QProveedores.locate('sup_codigo',search.valuefield,[]);
end;

procedure TfrmProveedores.QProveedoresAfterDelete(DataSet: TDataSet);
begin
  QProveedores.UpdateBatch;
end;

procedure TfrmProveedores.QProveedoresAfterPost(DataSet: TDataSet);
begin
  QProveedores.UpdateBatch;
end;

procedure TfrmProveedores.QProveedoresNewRecord(DataSet: TDataSet);
begin
  QProveedoresEMP_CODIGO.value := dm.vp_cia;
  QProveedoresSUP_BALANCE.value := 0;
  QProveedoresSUP_STATUS.value := 'ACT';
  QProveedoresSUP_TIPO.Value := 'F';
  QProveedoresSUP_LIMIte.Value := 0;
  QProveedoressup_concepto_cheque.Value := 'False';
end;

procedure TfrmProveedores.QProveedoresBeforePost(DataSet: TDataSet);
var
  valido : boolean;
  a : integer;
begin
  valido := true;
  if QProveedoresSUP_TIPO.AsString <> 'E' then
  begin
    for a := 1 to length(QProveedoresSUP_RNC.AsString) do
    begin
      if (copy(QProveedoresSUP_RNC.AsString,a,1) <> '0') and (copy(QProveedoresSUP_RNC.AsString,a,1) <> '1') and
      (copy(QProveedoresSUP_RNC.AsString,a,1) <> '2') and (copy(QProveedoresSUP_RNC.AsString,a,1) <> '3') and
      (copy(QProveedoresSUP_RNC.AsString,a,1) <> '4') and (copy(QProveedoresSUP_RNC.AsString,a,1) <> '5') and
      (copy(QProveedoresSUP_RNC.AsString,a,1) <> '6') and (copy(QProveedoresSUP_RNC.AsString,a,1) <> '7') and
      (copy(QProveedoresSUP_RNC.AsString,a,1) <> '8') and (copy(QProveedoresSUP_RNC.AsString,a,1) <> '9') then
      begin
        valido := false;
        break;
      end;
    end;
  end;

  if not valido then
  begin
    showmessage('DEBE DIGITAR UN RNC VALIDO');
    DBEdit2.setfocus;
    abort;
  end;

  if trim(QProveedoresSUP_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QProveedores.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(sup_codigo),0) as maximo');
    dm.query1.sql.add('from proveedores');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.query1.open;
    QProveedoresSUP_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmProveedores.dsProveedoresStateChange(Sender: TObject);
begin
  btInsert.enabled    := dsProveedores.State = dsbrowse;
  btEdit.enabled      := btInsert.enabled;
  btDelete.enabled    := btInsert.enabled;
  btNext.enabled      := btInsert.enabled;
  btPrior.enabled     := btInsert.enabled;
  btPost.enabled      := not btInsert.enabled;
  btCancel.enabled    := not btInsert.enabled;
  btFind.enabled      := btInsert.enabled;
  btgerente.enabled   := not btInsert.enabled;
  btrnc.enabled       := not btInsert.enabled;
  bttipo.enabled      := not btInsert.enabled;
  btCuenta.enabled    := not btInsert.enabled;
  btctacompra.enabled := not btInsert.enabled;
  bttipobien.enabled  := not btInsert.enabled;
end;

procedure TfrmProveedores.btPostClick(Sender: TObject);
begin
  QProveedores.post;
end;

procedure TfrmProveedores.btCancelClick(Sender: TObject);
begin
  QProveedores.cancel;
end;

procedure TfrmProveedores.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QProveedores.delete;
end;

procedure TfrmProveedores.btEditClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QProveedores.edit;
end;

procedure TfrmProveedores.btInsertClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QProveedores.insert;
end;

procedure TfrmProveedores.btpriorClick(Sender: TObject);
begin
  if not QProveedores.bof then
    QProveedores.prior;
end;

procedure TfrmProveedores.btnextClick(Sender: TObject);
begin
  if not QProveedores.eof then
    QProveedores.next;
end;

procedure TfrmProveedores.FormActivate(Sender: TObject);
begin
  if not QProveedores.active then QProveedores.open;

  frmMain.ExportXLS.Sheets[2].DataSet  := QProveedores;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := True;
end;

procedure TfrmProveedores.QProveedoresAfterOpen(DataSet: TDataSet);
begin
  if not QCxP.active then QCxP.Open;
end;

procedure TfrmProveedores.QCxPCalcFields(DataSet: TDataSet);
begin
  QCxPSaldo.value := QCxPFAC_TOTAL.value - QCxPFAC_ABONO.value;
end;

procedure TfrmProveedores.FormCreate(Sender: TObject);
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

QProveedores.Close;
QProveedores.Open;
end;

procedure TfrmProveedores.btCuentaClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select cat_nombre, cat_cuenta');
  Search.query.add('from contcatalogo');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Cuenta');
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catalogo de Cuentas';
  if search.execute then
  begin
     QProveedoresSUP_CUENTA.Value := Search.ValueField;
     DBEdit34.SetFocus;
  end;
end;

procedure TfrmProveedores.QProveedoresSUP_CUENTAGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QProveedoresSUP_CUENTA.IsNull then
  begin
    Text := QProveedoresSUP_CUENTA.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value  := QProveedoresSUP_CUENTA.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tCuenta.Text := dm.Query1.FieldByName('cat_nombre').AsString
    else
      tCuenta.Text := '';
  end
  else
    tCuenta.Text := '';
end;

procedure TfrmProveedores.btctacompraClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select cat_nombre, cat_cuenta');
  Search.query.add('from contcatalogo');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Cuenta');
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catalogo de Cuentas';
  if search.execute then
  begin
     QProveedoresSUP_CTACOMPRA.Value := Search.ValueField;
     DBEdit12.SetFocus;
  end;
end;

procedure TfrmProveedores.QProveedoresSUP_CTACOMPRAGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QProveedoresSUP_CTACOMPRA.IsNull then
  begin
    Text := QProveedoresSUP_CTACOMPRA.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value  := QProveedoresSUP_CTACOMPRA.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tCtaCompra.Text := dm.Query1.FieldByName('cat_nombre').AsString
    else
      tCtaCompra.Text := '';
  end
  else
    tCtaCompra.Text := '';
end;

procedure TfrmProveedores.btgerenteClick(Sender: TObject);
begin
  Search.Title := 'Gerentes';
  Search.ResultField := 'ger_codigo';
  Search.query.Clear;
  Search.query.add('select ger_nombre, ger_codigo');
  Search.query.add('from gerentes');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  if search.execute then
     QProveedoresger_codigo.value := strtoint(search.valuefield);
end;

procedure TfrmProveedores.btrncClick(Sender: TObject);
begin
  CargarDatosRnc(DBEdit3.Text);
end;

procedure TfrmProveedores.CargarDatosRnc(const ARnc: string);
var
  D: TDatoRncConsulta;
begin
  D := dm.ConsultarRncCompleto(ARnc);
  if not D.Encontrado then
  begin
    if D.Mensaje <> '' then
      MessageDlg(D.Mensaje, mtInformation, [mbok], 0);
    Exit;
  end;

  if MessageDlg('Desea actualizar los datos del proveedor con '+D.RazonSocial+'?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    CargandoDatosRnc := True;
    try
      if Trim(D.RncCedula) <> '' then
        QProveedoresSUP_RNC.Value := D.RncCedula;
      QProveedoresSUP_NOMBRE.Value := D.RazonSocial;
      QProveedoresSUP_DIRECCION.Value := D.Direccion;
      QProveedoresSUP_LOCALIDAD.Value := Trim(D.Urbanizacion)+Trim(D.Numero);
      QProveedoresSUP_TELEFONO.Value := D.Telefono;
    finally
      CargandoDatosRnc := False;
    end;
  end;
end;

procedure TfrmProveedores.bttipoClick(Sender: TObject);
begin
  Search.Title := 'Tipo de proveedor';
  Search.ResultField := 'tip_codigo';
  Search.query.Clear;
  Search.query.add('select tip_nombre, tip_codigo');
  Search.query.add('from tipo_proveedor');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  if search.execute then
     QProveedorestip_codigo.value := strtoint(search.valuefield);
end;

procedure TfrmProveedores.QProveedorestip_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QProveedorestip_codigo.isnull then
  begin
    Text := IntToStr(QProveedorestip_codigo.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tip_nombre');
    dm.Query1.SQL.Add('from tipo_proveedor');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tip_codigo = :tip');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('tip').Value := QProveedorestip_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      ttipo.Text := dm.Query1.FieldByName('tip_nombre').AsString
    else
      ttipo.Text := '';
  end
  else
    ttipo.text := '';
end;

procedure TfrmProveedores.QProveedoresger_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QProveedoresger_codigo.isnull then
  begin
    Text := IntToStr(QProveedoresger_codigo.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select ger_nombre');
    dm.Query1.SQL.Add('from gerentes');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ger_codigo = :ger');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('ger').Value := QProveedoresger_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tgerente.Text := dm.Query1.FieldByName('ger_nombre').AsString
    else
      tgerente.Text := '';
  end
  else
    tgerente.text := '';
end;

procedure TfrmProveedores.FormPaint(Sender: TObject);
begin
  with frmProveedores do
  begin
    Top  := 2;
  end;
end;

procedure TfrmProveedores.bttipobienClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select tip_nombre, tip_codigo');
  Search.query.add('from Tipo_Bienes_Servicios');
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Codigo');
  Search.ResultField := 'tip_codigo';
  Search.Title := 'Tipo de bienes y servicios';
  if search.execute then
  begin
     QProveedorestipobienid.Value := StrToInt(Search.ValueField);
     DBEdit19.SetFocus;
  end;
end;

procedure TfrmProveedores.QProveedorestipobienidGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QProveedorestipobienid.isnull then
  begin
    Text := IntToStr(QProveedorestipobienid.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tip_nombre');
    dm.Query1.SQL.Add('from Tipo_Bienes_Servicios');
    dm.Query1.SQL.Add('where tip_codigo = :tip');
    dm.Query1.Parameters.ParamByName('tip').Value := QProveedorestipobienid.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      ttipobien.Text := dm.Query1.FieldByName('tip_nombre').AsString
    else
      ttipobien.Text := '';
  end
  else
    ttipobien.text := '';
end;

procedure TfrmProveedores.QProveedoresSUP_RNCChange(Sender: TField);
begin
  if CargandoDatosRnc then
    Exit;

  if not QProveedoresSUP_RNC.IsNull then
  begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select sup_rnc from proveedores');
    Query1.SQL.Add('where emp_codigo = :emp');
    Query1.SQL.Add('and sup_rnc = :rnc');
    if not QProveedoresSUP_CODIGO.IsNull then
      Query1.SQL.Add('and sup_codigo <> :cod');
    Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    Query1.Parameters.ParamByName('rnc').Value := trim(QProveedoresSUP_RNC.Value);
    if not QProveedoresSUP_CODIGO.IsNull then
      Query1.Parameters.ParamByName('cod').Value := QProveedoresSUP_CODIGO.AsInteger;
    Query1.Open;
    if Query1.RecordCount > 0 then
    begin
      MessageDlg('EL RNC DEL PROVEEDOR YA EXISTE',mtError,[mbok],0);
      Abort;
    end;
  end;
end;

procedure TfrmProveedores.QProveedoresBeforeOpen(DataSet: TDataSet);
begin
QProveedores.Parameters.ParamByName('par_invempresa').Value := dm.vp_cia;
end;

end.
