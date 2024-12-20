unit PVENTA237;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DBCtrls, StdCtrls, Buttons, ExtCtrls, ComCtrls,
  DB, ADODB, frxClass, frxDBSet, QuerySearchDlgADO;

type
  TfrmConsTicketTransp = class(TForm)
    Panel1: TPanel;
    Label6: TLabel;
    Label4: TLabel;
    btnProductos: TSpeedButton;
    Label7: TLabel;
    btnClientes: TSpeedButton;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    rgTipo: TRadioGroup;
    cborden: TComboBox;
    edProd: TEdit;
    tProd: TEdit;
    edCliente: TEdit;
    tCliente: TEdit;
    Panel2: TPanel;
    lbcant: TLabel;
    btRefresh: TBitBtn;
    btClose: TBitBtn;
    DBGrid1: TDBGrid;
    Label12: TLabel;
    btVendedor: TSpeedButton;
    tVendedor: TEdit;
    edtVendedor: TEdit;
    lblFicha: TLabel;
    edtFicha: TEdit;
    Rpt_Liq_Ticket: TfrxReport;
    DB_Liq_Ticket: TfrxDBDataset;
    qLiqTicket: TADOQuery;
    qLiqTicketVENDEDOR: TStringField;
    qLiqTicketTOTAL: TCurrencyField;
    qLiqTicketTOTAL_LET: TStringField;
    qLiqTicketCODIGO: TStringField;
    qLiqTicketPRODUCTO: TStringField;
    qLiqTicketCANTIDAD: TCurrencyField;
    qLiqTicketPRECIO: TCurrencyField;
    qLiqTicketIMPORTE: TCurrencyField;
    qLiqTicketFECHA: TDateField;
    qLiqTicketNUM: TIntegerField;
    qLiqTicketFICHA: TStringField;
    btnImprimir: TBitBtn;
    qBuscar: TADOQuery;
    Label13: TLabel;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    QSucursalsuc_direccion: TStringField;
    QSucursalsuc_localidad: TStringField;
    QSucursalsuc_telefono: TStringField;
    QSucursalsuc_rnc: TStringField;
    dsBuscar: TDataSource;
    Search: TQrySearchDlgADO;
    qBuscarNUM: TIntegerField;
    qBuscarVENDEDOR: TStringField;
    qBuscarCLIENTEN: TStringField;
    qBuscarPRODUCTON: TStringField;
    qBuscarCANTIDAD: TCurrencyField;
    qBuscarPRECIO: TCurrencyField;
    qBuscarIMPORTE: TCurrencyField;
    qBuscarFECHA: TDateField;
    qBuscarFICHA: TStringField;
    qBuscarESTATUS: TStringField;
    DBLookupComboBox2: TDBLookupComboBox;
    dsSuc: TDataSource;
    Rpt_Listado: TfrxReport;
    DB_Listado: TfrxDBDataset;
    btnListado: TBitBtn;
    btnFicha: TSpeedButton;
    tFicha: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btVendedorClick(Sender: TObject);
    procedure btnProductosClick(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Fecha1Change(Sender: TObject);
    procedure Fecha2Change(Sender: TObject);
    procedure rgTipoClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure edClienteChange(Sender: TObject);
    procedure edProdChange(Sender: TObject);
    procedure edtVendedorChange(Sender: TObject);
    procedure edtFichaChange(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
    procedure btnListadoClick(Sender: TObject);
    procedure btnFichaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsTicketTransp: TfrmConsTicketTransp;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmConsTicketTransp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
end;

procedure TfrmConsTicketTransp.btVendedorClick(Sender: TObject);
begin
  Search.Query.clear;
  Search.Query.add('select substring(ven_nombre,1,50) as ven_nombre, ven_codigo');
  Search.Query.add('from vendedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'ven_Codigo';
  Search.Title := 'Listado de Vendedores';
  if Search.execute then
  begin
    edtVendedor.Text := Search.ValueField;
    edtFicha.setfocus;
    btRefreshClick(Sender);
  end;
end;

procedure TfrmConsTicketTransp.btnProductosClick(Sender: TObject);
begin
  Search.Query.clear;
  Search.Query.add('select substring(pro_nombre,1,50) as pro_nombre, pro_codigo');
  Search.Query.add('from productos');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'pro_codigo';
  Search.Title := 'Listado de Productos';
  if Search.execute then
  begin
    tProd.Text := Search.ValueField;
    edtVendedor.setfocus;
    btRefreshClick(Sender);
  end;
end;

procedure TfrmConsTicketTransp.btRefreshClick(Sender: TObject);
begin
with qBuscar do begin
  Close;
  SQL.Clear;
  sql.Add('SELECT T.numero_ticket NUM, V.ven_nombre VENDEDOR, T.TotalImporte TOTAL,');
  sql.Add('UPPER(RTRIM(C.cli_nombre)) CLIENTEN, PR.pro_nombre PRODUCTON, DT.det_cantidad CANTIDAD,');
  sql.Add('DT.prod_precio PRECIO, (DT.DET_CANTIDAD*DT.prod_precio) IMPORTE, DT.FECHA, ');
  sql.Add('FT.ficha_nombre FICHA, DT.status_ticket ESTATUS');
  sql.Add('FROM Ticket_Transp T');
  sql.Add('INNER JOIN Det_Ticket_Transp DT ON T.emp_codigo=DT.emp_codigo AND T.SUC_CODIGO=DT.SUC_CODIGO AND T.NUMERO_TICKET=DT.NUMERO_TICKET');
  sql.Add('INNER JOIN PRODUCTOS PR ON DT.prod_codigo=PR.pro_codigo AND DT.emp_codigo = PR.emp_codigo');
  sql.Add('INNER JOIN USUARIOS U ON T.usu_codigo = U.USU_NOMBRE');
  sql.Add('INNER JOIN VENDEDORES V ON T.EMP_CODIGO = V.emp_codigo AND T.ven_codigo = V.ven_codigo');
  sql.Add('INNER JOIN CLIENTES C ON DT.CLIENTE_ID = C.CLI_CODIGO');
  sql.Add('INNER JOIN Fichas_Transp FT ON T.ficha_id = FT.ficha_id AND T.emp_codigo = FT.emp_codigo');
  sql.Add('WHERE T.emp_codigo = :EMP AND T.SUC_CODIGO = :SUC');
  sql.Add('AND DT.FECHA BETWEEN :Fecha1 AND :Fecha2 + '+QuotedStr('23:59:59.999'));
  case rgTipo.ItemIndex of
  1:sql.Add('AND DT.status_ticket ='+QuotedStr('EMI'));
  2:sql.Add('AND DT.status_ticket ='+QuotedStr('FAC'));
  end;
  IF tCliente.Text <> '' THEN
  sql.Add('AND UPPER(RTRIM(C.cli_nombre)) = '+QuotedStr(tCliente.Text));
  IF tProd.Text <> '' THEN
  sql.Add('AND PR.pro_nombre = '+QuotedStr(tProd.Text));
  IF tVendedor.Text <> '' THEN
  sql.Add('AND V.ven_nombre = '+QuotedStr(tVendedor.Text));
  IF edtFicha.Text <> '' THEN
  sql.Add('AND FT.ficha_nombre = '+QuotedStr(tFicha.Text));
  CASE cborden.ItemIndex OF
  0:SQL.Add('ORDER BY FECHA');
  1:SQL.Add('ORDER BY CLIENTEN');
  2:SQL.Add('ORDER BY PRODUCTON');
  3:SQL.Add('ORDER BY VENDEDOR');
  4:SQL.Add('ORDER BY FICHA');
  end;
  Parameters.ParamByName('EMP').Value := DM.vp_cia;
  Parameters.ParamByName('SUC').Value := DBLookupComboBox2.KeyValue;
  Parameters.ParamByName('Fecha1').Value := Fecha1.Date;
  Parameters.ParamByName('Fecha2').Value := Fecha2.Date;
  Open;
end;
end;

procedure TfrmConsTicketTransp.FormActivate(Sender: TObject);
begin
with QSucursal do begin
  Close;
  Parameters.ParamByName('emp').Value := dm.vp_cia;
  Parameters.ParamByName('usu').Value := dm.Usuario;
  Open;
  DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;

dm.Query1.Close;
dm.Query1.SQL.Clear;
dm.Query1.SQL.Add('select cast(cast(DATEADD(day,(day(getdate())-1)*-1,getdate()) as char(11)) as datetime) Desde');
dm.Query1.SQL.Add(',cast(cast(getdate() as char(11)) as datetime) Hasta');
dm.Query1.Open;
Fecha1.Date := DM.Query1.fieldbyname('Desde').AsDateTime;
Fecha2.Date := DM.Query1.fieldbyname('Hasta').AsDateTime;
dm.Query1.Close;

btRefreshClick(Sender);
end;

procedure TfrmConsTicketTransp.Fecha1Change(Sender: TObject);
begin
if Fecha1.Date > Fecha2.Date then begin
  ShowMessage('La Fecha de Inicio no puede ser mayor que la Fecha Final....');
  Abort;
end;
btRefreshClick(Sender);
end;

procedure TfrmConsTicketTransp.Fecha2Change(Sender: TObject);
begin
if Fecha1.Date > Fecha2.Date then begin
  ShowMessage('La Fecha de Inicio no puede ser menor que la Fecha Final....');
  Abort;
end;
btRefreshClick(Sender);
end;

procedure TfrmConsTicketTransp.rgTipoClick(Sender: TObject);
begin
btRefreshClick(Sender);
end;

procedure TfrmConsTicketTransp.btnImprimirClick(Sender: TObject);
begin
with qLiqTicket do begin
Close;
Parameters.ParamByName('EMP').Value := DM.vp_cia;
Parameters.ParamByName('SUC').Value := DBLookupComboBox2.KeyValue;
Parameters.ParamByName('NUM').Value := qBuscarNUM.Value;
Open;
IF not qLiqTicket.IsEmpty then
Rpt_Liq_Ticket.ShowReport(True);
end;

end;

procedure TfrmConsTicketTransp.edClienteChange(Sender: TObject);
begin
IF Trim(edCliente.Text)<>'' THEN BEGIN
dm.Query1.Close;
dm.Query1.SQL.Clear;
dm.Query1.SQL.Add('select UPPER(RTRIM(cli_nombre)) CLIENTEN FROM CLIENTES WHERE CLI_CODIGO = '+QuotedStr(edCliente.Text));
dm.Query1.Open;
IF NOT DM.Query1.IsEmpty THEN
tCliente.Text := DM.Query1.FieldbyName('CLIENTEN').AsString;
end
ELSE
tCliente.Clear;

btRefreshClick(Sender);

end;

procedure TfrmConsTicketTransp.edProdChange(Sender: TObject);
begin
IF Trim(edProd.Text)<>'' THEN BEGIN
dm.Query1.Close;
dm.Query1.SQL.Clear;
dm.Query1.SQL.Add('select UPPER(RTRIM(pro_nombre)) PRODUCTON FROM PRODUCTOS WHERE emp_codigo = '+
QuotedStr(IntToStr(dm.QParametrosPAR_INVEMPRESA.value))+' AND pro_codigo = '+QuotedStr(edProd.Text));
dm.Query1.Open;
IF NOT DM.Query1.IsEmpty THEN
tProd.Text := DM.Query1.FieldbyName('PRODUCTON').AsString;
end
ELSE
edProd.Clear;

btRefreshClick(Sender);
end;

procedure TfrmConsTicketTransp.edtVendedorChange(Sender: TObject);
begin
IF Trim(edtVendedor.Text)<>'' THEN BEGIN
dm.Query1.Close;
dm.Query1.SQL.Clear;
dm.Query1.SQL.Add('select UPPER(RTRIM(ven_nombre)) VENDEDOR FROM VENDEDORES WHERE emp_codigo = '+
QuotedStr(IntToStr(DM.vp_cia))+' AND ven_codigo = '+QuotedStr(edtVendedor.Text));
dm.Query1.Open;
IF NOT DM.Query1.IsEmpty THEN
tVendedor.Text := DM.Query1.FieldbyName('VENDEDOR').AsString;
end
ELSE
tVendedor.Clear;

btRefreshClick(Sender);
end;

procedure TfrmConsTicketTransp.edtFichaChange(Sender: TObject);
begin
IF Trim(edtFicha.Text)<>'' THEN BEGIN
dm.Query1.Close;
dm.Query1.SQL.Clear;
dm.Query1.SQL.Add('select UPPER(RTRIM(ficha_nombre)) NOMBRE FROM fichas_transp WHERE emp_codigo = '+
QuotedStr(IntToStr(DM.vp_cia))+' AND ficha_id = '+QuotedStr(edtFicha.Text));
dm.Query1.Open;
IF NOT DM.Query1.IsEmpty THEN
tFicha.Text := DM.Query1.FieldbyName('NOMBRE').AsString;
end
ELSE
tFicha.Clear;

btRefreshClick(Sender);
end;

procedure TfrmConsTicketTransp.btnClientesClick(Sender: TObject);
begin
  Search.Query.clear;
  Search.Query.add('select substring(cli_nombre,1,50) as cli_nombre, cli_codigo');
  Search.Query.add('from clientes');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'cli_codigo';
  Search.Title := 'Listado de Clientes';
  if Search.execute then
  begin
    edCliente.Text := Search.ValueField;
    edProd.setfocus;
    btRefreshClick(Sender);
  end;
end;

procedure TfrmConsTicketTransp.btnListadoClick(Sender: TObject);
begin
IF not qBuscar.IsEmpty then
Rpt_Listado.ShowReport(True);
end;

procedure TfrmConsTicketTransp.btnFichaClick(Sender: TObject);
begin
  Search.Query.clear;
  Search.Query.add('select substring(ficha_nombre,1,50) as ficha_nombre, ficha_id');
  Search.Query.add('from fichas_transp');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'ficha_id';
  Search.Title := 'Listado de Fichas';
  if Search.execute then
  begin
    edtFicha.Text := Search.ValueField;
    edtFicha.setfocus;
    btRefreshClick(Sender);
  end;
end;

end.
