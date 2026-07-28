unit PVENTA254;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuerySearchDlgADO, DB, IBCustomDataSet, ADODB, StdCtrls, Grids,
  DBGrids, ComCtrls, Buttons, DBCtrls, ExtCtrls, DateUtils, IBQuery;

type
  TfrmConsFacturasProdPlaca = class(TForm)
    Panel1: TPanel;
    Label6: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    btVendedor: TSpeedButton;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    cbGrupo: TRadioGroup;
    DBLookupComboBox2: TDBLookupComboBox;
    ckSuc: TCheckBox;
    edPlaca: TEdit;
    tVendedor: TEdit;
    edVendedor: TEdit;
    Panel2: TPanel;
    lbCantidad: TLabel;
    BitBtn2: TBitBtn;
    btRefresh: TBitBtn;
    btClose: TBitBtn;
    Memo1: TMemo;
    QFacturas: TADOQuery;
    dsFacturas: TDataSource;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    dsSuc: TDataSource;
    Search: TQrySearchDlgADO;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Grid: TDBGrid;
    Label1: TLabel;
    edTecnico: TEdit;
    btnTecnico: TSpeedButton;
    edtTenicoN: TEdit;
    QFacturasValor: TCurrencyField;
    QFacturassuc_nombre: TStringField;
    QFacturasfac_forma: TStringField;
    QFacturastfa_codigo: TIntegerField;
    QFacturasfac_numero: TIntegerField;
    QFacturasfac_fecha: TDateTimeField;
    QFacturasfac_vence: TDateTimeField;
    QFacturasfac_nombre: TStringField;
    QFacturasdet_cantidad: TBCDField;
    QFacturasdet_cant_oferta: TBCDField;
    QFacturasdet_medida: TStringField;
    QFacturasdet_precio: TBCDField;
    QFacturasdet_descuento: TBCDField;
    QFacturaspro_nombre: TStringField;
    QFacturasDET_CONITBIS: TStringField;
    QFacturasCalcDesc: TCurrencyField;
    QFacturasplaca: TStringField;
    QFacturasTecnico: TStringField;
    btnbVehiculo: TSpeedButton;
    lblProximoChequeo: TLabel;
    procedure btVendedorClick(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure btnTecnicoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure QFacturasCalcFields(DataSet: TDataSet);
    procedure btnbVehiculoClick(Sender: TObject);
    procedure edPlacaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsFacturasProdPlaca: TfrmConsFacturasProdPlaca;

implementation

uses SIGMA01, PVENTA33, SIGMA00;

{$R *.dfm}

procedure TfrmConsFacturasProdPlaca.btVendedorClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Query.clear;
  Search.Query.add('select ven_nombre, ven_codigo');
  Search.Query.add('from vendedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'ven_Codigo';
  Search.Title := 'Listado de Vendedores';
  if Search.execute then
  begin
    edVendedor.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select ven_nombre from vendedores');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and ven_codigo = :ven');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('ven').Value := strtoint(trim(edVendedor.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('VENDEDOR NO EXISTE',mterror,[mbok],0)
    else
      tVendedor.text := dm.Query1.fieldbyname('ven_nombre').asstring;
    edVendedor.setfocus;
    btRefreshClick(self);
  end;
end;

procedure TfrmConsFacturasProdPlaca.btRefreshClick(Sender: TObject);
var
  cant, tot : double;
begin
    lblProximoChequeo.Visible := False;
    
    PageControl1.ActivePageIndex := 0;

    Screen.Cursor := crHourGlass;

    QFacturas.close;
    QFacturas.sql.clear;
    QFacturas.sql := Memo1.Lines;
    if Trim(edPlaca.Text) <> '' then
    QFacturas.sql.add('and f.placa like '+QuotedStr('%'+edPlaca.Text+'%'));
    if cbGrupo.itemindex = 0 then
      QFacturas.sql.add('and f.fac_forma = '+#39+'A'+#39)
    else if cbGrupo.itemindex = 1 then
      QFacturas.sql.add('and f.fac_forma = '+#39+'B'+#39);
    if ckSuc.Checked then
    begin
      QFacturas.sql.add('and f.suc_codigo = :suc_codigo');
      QFacturas.Parameters.parambyname('suc_codigo').Value := DBLookupComboBox2.KeyValue;
    end;

    if Trim(edVendedor.Text) <> '' then
       QFacturas.sql.add('and f.ven_codigo = '+Trim(edVendedor.Text));

    if Trim(edTecnico.Text) <> '' then
       QFacturas.sql.add('and d.ven_codigo = '+Trim(edTecnico.Text));

    QFacturas.sql.add('order by f.fac_forma, f.tfa_codigo, f.fac_numero');
    QFacturas.Parameters.parambyname('fecha1').DataType := ftDate;
    QFacturas.Parameters.parambyname('fecha2').DataType := ftDate;
    QFacturas.Parameters.parambyname('fecha1').Value := fecha1.date;
    QFacturas.Parameters.parambyname('fecha2').Value := fecha2.date;
    QFacturas.Parameters.parambyname('emp_codigo').Value := dm.vp_cia;
    QFacturas.open;
    lbCantidad.caption := inttostr(QFacturas.recordcount)+' Facturas';
    Grid.SetFocus;

    Screen.Cursor := crDefault;

end;

procedure TfrmConsFacturasProdPlaca.btnTecnicoClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Query.clear;
  Search.Query.add('select ven_nombre, ven_codigo');
  Search.Query.add('from vendedores');
  Search.Query.add('where ven_comision_venta = '+QuotedStr('True'));
  Search.Query.add('and emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'ven_Codigo';
  Search.Title := 'Listado de Tecnicos';
  if Search.execute then
  begin
    edTecnico.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select ven_nombre from vendedores');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and ven_codigo = :ven');
    dm.Query1.sql.add('and ven_comision_venta = '+QuotedStr('True'));
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('ven').Value := strtoint(trim(edTecnico.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('VENDEDOR NO EXISTE',mterror,[mbok],0)
    else
      edtTenicoN.text := dm.Query1.fieldbyname('ven_nombre').asstring;
    edTecnico.setfocus;
    btRefreshClick(self);
  end;
end;

procedure TfrmConsFacturasProdPlaca.FormActivate(Sender: TObject);
begin
//  if not QFacturas.active then QFacturas.open;
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
  frmMain.ExportXLS.Sheets[0].DBGrid := Grid;
  frmMain.ExportXLS.Sheets[1].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[0].Exported := True;
  if (Time >= TimeOf(dm.QParametrosPAR_AHORA1.Value)) and
  (Time <= TimeOf(dm.QParametrosPAR_AHORA2.Value)) then
     cbGrupo.ItemIndex := 0
  else
     cbGrupo.ItemIndex := 1;
  frmMain.stBar1.Panels[1].Text := Copy(cbGrupo.Items[cbGrupo.ItemIndex],1,1);
end;

procedure TfrmConsFacturasProdPlaca.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConsFacturasProdPlaca.FormCreate(Sender: TObject);
begin
  if dm.QParametrosPAR_FACMEDIDA.Value <> 'True' then
    Grid.Columns[9].Destroy;
  Fecha1.date := date;
  Fecha2.date := date;
  Memo1.lines := QFacturas.sql;
end;

procedure TfrmConsFacturasProdPlaca.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = vk_f10 then close;
  if (ssCtrl in Shift) and (ord(key) = 66) and (ssAlt in Shift) then
    cbGrupo.ItemIndex := 1;
  if (ssCtrl in Shift) and (ord(key) = 65) and (ssAlt in Shift) then
    cbGrupo.ItemIndex := 0;
  if (ssCtrl in Shift) and (ord(key) = 84) and (ssAlt in Shift) then
    cbGrupo.ItemIndex := 2;
  frmMain.stBar1.Panels[1].Text := Copy(cbGrupo.Items[cbGrupo.ItemIndex],1,1);
end;

procedure TfrmConsFacturasProdPlaca.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(vk_return) then
     if activecontrol.classtype <> tdbgrid then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmConsFacturasProdPlaca.FormPaint(Sender: TObject);
begin
  with frmConsFacturasProdPlaca do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmConsFacturasProdPlaca.btCloseClick(Sender: TObject);
begin
close;
end;

procedure TfrmConsFacturasProdPlaca.QFacturasCalcFields(DataSet: TDataSet);
var
  Venta: Double;
begin
  if QFacturasDET_CONITBIS.value = 'S' then
  begin
    Venta    := strtofloat(format('%10.2f',[(QFacturasDET_PRECIO.value)]));
    QFacturasCalcDesc.value    := strtofloat(format('%10.2f',[(Venta *
                                 strtofloat(format('%10.2f',[QFacturasDET_DESCUENTO.value])))/100]));
    QFacturasValor.value       := ((strtofloat(format('%10.2f',[Venta]))-
                                 strtofloat(format('%10.2f',[QFacturasCalcDesc.value])))*
                                 strtofloat(format('%10.2f',[QFacturasDET_CANTIDAD.value])));
  end
  else
  begin
    Venta := strtofloat(format('%10.2f',[QFacturasDET_PRECIO.value]));
    QFacturasCalcDesc.value    := strtofloat(format('%10.2f',[(Venta * QFacturasDET_DESCUENTO.value)/100]));
    QFacturasValor.value       := strtofloat(format('%10.2f',[(Venta-QFacturasCalcDesc.value)*QFacturasDET_CANTIDAD.value]));
  end;
end;

procedure TfrmConsFacturasProdPlaca.btnbVehiculoClick(Sender: TObject);
begin
  Search.Query.clear;
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Placa');
  Search.AliasFields.Add('Chofer');
  Search.AliasFields.Add('Compania');
  Search.AliasFields.Add('Marca');
  Search.AliasFields.Add('Modelo');
  Search.AliasFields.Add('Codigo');
  Search.Query.add('select Placa, Chofer, Compania, Marca, Modelo, CamionID, KM_ACTUAL, KM_PROXMANT');
  Search.Query.add('from Camiones');
  Search.Title := 'Camiones';
  Search.ResultField := 'Placa';
  if Search.execute then
  begin
    edPlaca.Text := Search.ValueField;
    edPlaca.setfocus;
    btRefreshClick(Sender);

    if edPlaca.Text <> '' then begin
   WITH DM.qEjecutar do begin
   Close;
   SQL.Add('SELECT MAX(KM_PROXMANT) PROXMANT FROM FACTURAS');
   SQL.Add('WHERE fac_status <> ''ANU'' AND EMP_CODIGO = :EMP AND SUC_CODIGO = :SUC AND Placa = :PLA AND ISNULL(KM_PROXMANT,0)>0');
   Parameters.ParamByName('EMP').DataType := ftInteger;
   Parameters.ParamByName('SUC').DataType := ftInteger;
   Parameters.ParamByName('PLA').DataType := ftString;

   Parameters.ParamByName('EMP').Value := DM.vp_cia;
   Parameters.ParamByName('SUC').Value := DBLookupComboBox2.KeyValue;
   Parameters.ParamByName('PLA').Value := Trim(edPlaca.Text);
   Open;
   if DM.qEjecutar.RecordCount > 0 THEN begin
   lblProximoChequeo.Caption := 'Proximo mant '+FormatCurr('#,0',fieldbyname('PROXMANT').Value);
   lblProximoChequeo.Visible := True;
   end
   else
   lblProximoChequeo.Visible := False;



 end;
end;
  end;
end;

procedure TfrmConsFacturasProdPlaca.edPlacaKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13  then btRefreshClick(Sender);
end;

end.
