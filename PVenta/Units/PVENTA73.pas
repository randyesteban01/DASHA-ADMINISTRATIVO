unit PVENTA73;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, Db,
  QuerySearchDlgADO, IdMessageClient, 
  IdSMTP, idMessage, QRPDFFilt, QuickRpt, QRCtrls, ADODB, DBCtrls;

type
  TfrmEstadoCtaCli = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edVendedor: TEdit;
    btVendedor: TSpeedButton;
    tVendedor: TEdit;
    Search: TQrySearchDlgADO;
    edDesde: TEdit;
    SpeedButton2: TSpeedButton;
    tDesde: TEdit;
    edHasta: TEdit;
    SpeedButton1: TSpeedButton;
    tHasta: TEdit;
    btClose: TBitBtn;
    btPrint: TBitBtn;
    cbStatus: TRadioGroup;
    cbBalance: TRadioGroup;
    Label4: TLabel;
    cbOrden: TComboBox;
    Label5: TLabel;
    Fecha: TDateTimePicker;
    ckPagina: TCheckBox;
    ckMov: TCheckBox;
    ckmail: TCheckBox;
    Label12: TLabel;
    btTipo: TSpeedButton;
    tTipo: TEdit;
    edTipo: TEdit;
    Label14: TLabel;
    btmoneda: TSpeedButton;
    edmoneda: TEdit;
    tmoneda: TEdit;
    btConsolidado: TBitBtn;
    ChkB_cksucursal: TCheckBox;
    dblkcbb1: TDBLookupComboBox;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    DS_Suc: TDataSource;
    mmo1: TMemo;
    mmoCliente0: TMemo;
    mmoClientemas0: TMemo;
    mmoClientemenos0: TMemo;
    qBuscar: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btVendedorClick(Sender: TObject);
    procedure edVendedorChange(Sender: TObject);
    procedure edVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDesdeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDesdeChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edHastaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edHastaChange(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btPrintClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btTipoClick(Sender: TObject);
    procedure edTipoChange(Sender: TObject);
    procedure edTipoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btmonedaClick(Sender: TObject);
    procedure btConsolidadoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ckMovClick(Sender: TObject);
  private
    vl_destino : String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstadoCtaCli: TfrmEstadoCtaCli;

implementation

uses RVENTA41, SIGMA01, SIGMA00, RVENTA124;

{$R *.dfm}

procedure TfrmEstadoCtaCli.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmEstadoCtaCli.btVendedorClick(Sender: TObject);
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
  end;
end;

procedure TfrmEstadoCtaCli.edVendedorChange(Sender: TObject);
begin
  if trim(edVendedor.text) = '' then tVendedor.text := '';
end;

procedure TfrmEstadoCtaCli.edVendedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edVendedor.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select ven_nombre from vendedores');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and ven_codigo = :ven');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('ven').Value := strtoint(trim(edVendedor.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('VENDEDOR NO EXISTE',mterror,[mbok],0);
        edVendedor.SetFocus;
      end
      else
        tVendedor.text := dm.Query1.fieldbyname('ven_nombre').asstring;
    end;
  end;
end;

procedure TfrmEstadoCtaCli.edDesdeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edDesde.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select cli_nombre from clientes');
      dm.Query1.sql.add('where emp_codigo = :emp');
      if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
         dm.Query1.sql.add('and cli_codigo = :cod')
      else
         dm.Query1.sql.add('and cli_referencia = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
         dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edDesde.text))
      else
         dm.Query1.Parameters.parambyname('cod').Value := trim(edDesde.text);
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('CLIENTE NO EXISTE',mterror,[mbok],0);
        edDesde.SetFocus;
      end
      else
        tDesde.text := dm.Query1.fieldbyname('cli_nombre').asstring;
    end;
  end;
end;

procedure TfrmEstadoCtaCli.edDesdeChange(Sender: TObject);
begin
  if trim(edDesde.text) = '' then tDesde.text := '';
end;

procedure TfrmEstadoCtaCli.SpeedButton2Click(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  search.AliasFields.add('Referencia');
  Search.Query.clear;
  Search.Query.add('select cli_nombre, cli_codigo, cli_referencia');
  Search.Query.add('from clientes');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
     Search.ResultField := 'cli_Codigo'
  else
     Search.ResultField := 'cli_referencia';
  Search.Title := 'Listado de Clientes';
  if Search.execute then
  begin
    edDesde.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cli_nombre, cli_codigo, cli_referencia from clientes');
    dm.Query1.sql.add('where emp_codigo = :emp');
    if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
       dm.Query1.sql.add('and cli_codigo = :cod')
    else
       dm.Query1.sql.add('and cli_referencia = :cod');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
       dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edDesde.text))
    else
       dm.Query1.Parameters.parambyname('cod').Value := trim(edDesde.text);
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('CLIENTE NO EXISTE',mterror,[mbok],0)
    else
      tDesde.text := dm.Query1.fieldbyname('cli_nombre').asstring;
    edDesde.setfocus;
  end;
end;

procedure TfrmEstadoCtaCli.SpeedButton1Click(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  search.AliasFields.add('Referencia');
  Search.Query.clear;
  Search.Query.add('select cli_nombre, cli_codigo, cli_referencia');
  Search.Query.add('from clientes');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  if trim(edVendedor.Text) <> '' then
     Search.Query.add('and ven_codigo = '+edVendedor.Text);
  if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
     Search.ResultField := 'cli_Codigo'
  else
     Search.ResultField := 'cli_referencia';
  Search.Title := 'Listado de Clientes';
  if Search.execute then
  begin
    edHasta.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cli_nombre, cli_codigo, cli_referencia from clientes');
    dm.Query1.sql.add('where emp_codigo = :emp');
    if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
       dm.Query1.sql.add('and cli_codigo = :cod')
    else
       dm.Query1.sql.add('and cli_referencia = :cod');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
       dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edHasta.text))
    else
       dm.Query1.Parameters.parambyname('cod').Value := trim(edHasta.text);
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('CLIENTE NO EXISTE',mterror,[mbok],0)
    else
      tHasta.text := dm.Query1.fieldbyname('cli_nombre').asstring;
    edHasta.setfocus;
  end;
end;

procedure TfrmEstadoCtaCli.edHastaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edHasta.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select cli_nombre from clientes');
      dm.Query1.sql.add('where emp_codigo = :emp');
      if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
         dm.Query1.sql.add('and cli_codigo = :cod')
      else
         dm.Query1.sql.add('and cli_referencia = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
         dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edHasta.text))
      else
         dm.Query1.Parameters.parambyname('cod').Value := trim(edHasta.text);
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('CLIENTE NO EXISTE',mterror,[mbok],0);
        edHasta.SetFocus;
      end
      else
        tHasta.text := dm.Query1.fieldbyname('cli_nombre').asstring;
    end;
  end;
end;

procedure TfrmEstadoCtaCli.edHastaChange(Sender: TObject);
begin
  if trim(edHasta.text) = '' then tHasta.text := '';
end;

procedure TfrmEstadoCtaCli.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmEstadoCtaCli.FormCreate(Sender: TObject);
begin
  cbOrden.ItemIndex := 0;
  cbBalance.ItemIndex := 2;
  Fecha.Date := Date;
end;

procedure TfrmEstadoCtaCli.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
end;

procedure TfrmEstadoCtaCli.btPrintClick(Sender: TObject);
var
  cliDesde, cliHasta : string;
begin
  ckMovClick(Sender);
  try
  with qBuscar do begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT MIN(CLI_REFERENCIA)DESDEREF, MAX(CLI_REFERENCIA)HASTAREF,');
  SQL.Add('MIN(CLI_CODIGO)DESDECOD, MAX(CLI_CODIGO)HASTACOD FROM CLIENTES');
  SQL.Add('WHERE EMP_CODIGO = '+IntToStr(dm.vp_cia));
  if DM.QParametrosPAR_CODIGOCLIENTE.Text = 'R' then
  SQL.Add('AND CLI_REFERENCIA BETWEEN '+QuotedStr(edDesde.Text)+ ' AND '+QuotedStr(edHasta.Text)) ELSE
  SQL.Add('AND CLI_CODIGO BETWEEN '+QuotedStr(edDesde.Text)+ ' AND '+QuotedStr(edHasta.Text));
  Open;
  IF IsEmpty then BEGIN
  ShowMessage('No existen clientes con estos codigos.....');
  Exit;
  end
  else
  if DM.QParametrosPAR_CODIGOCLIENTE.Text = 'R' then BEGIN
  cliDesde := fieldbyname('DESDEREF').AsString;
  cliHasta := fieldbyname('HASTAREF').AsString;
  end
  ELSE
  BEGIN
  cliDesde := fieldbyname('DESDECOD').AsString;
  cliHasta := fieldbyname('HASTACOD').AsString;
  end;
  end;


  Application.CreateForm(tREstadoCtaCli, REstadoCtaCli);
  if not ChkB_cksucursal.Checked then
  REstadoCtaCli.suc := 0 else
  REstadoCtaCli.suc := dblkcbb1.KeyValue;
  if Trim(tVendedor.Text)<>'' then
  REstadoCtaCli.lbVendedor.Caption := 'Vendedor : '+tVendedor.Text ELSE
  REstadoCtaCli.lbVendedor.Caption := '';
  if Trim(tTipo.Text)<>'' then
  REstadoCtaCli.lbTipo.Caption := 'Tipo : '+tTipo.Text ELSE
  REstadoCtaCli.lbTipo.Caption := '';
  if not ChkB_cksucursal.Checked then
  REstadoCtaCli.QRLSucursal.Caption := DM.QEmpresasEMP_NOMBRE.Text else
  REstadoCtaCli.QRLSucursal.Caption := dblkcbb1.Text;
  REstadoCtaCli.QClientes.Close;
  REstadoCtaCli.QClientes.SQL.Clear;
  REstadoCtaCli.QClientes.SQL.Add('DECLARE @fecha datetime, @EMPRESA int; set @fecha = :fecha; set @EMPRESA = '+IntToStr(DM.vp_cia));
  REstadoCtaCli.QClientes.SQL.Add('select');
  REstadoCtaCli.QClientes.SQL.Add('cli_codigo, cli_referencia, cli_nombre,');
  REstadoCtaCli.QClientes.SQL.Add('cli_telefono, cli_balance, emp_codigo, cli_cedula, cli_rnc, @fecha fecha, cli_email');
  REstadoCtaCli.QClientes.SQL.Add('from clientes C');
  REstadoCtaCli.QClientes.SQL.Add('where emp_codigo = :emp_codigo');
  case cbStatus.ItemIndex of
  1:REstadoCtaCli.QClientes.SQL.Add('and cli_status = '+QuotedStr('ACT'));
  2:REstadoCtaCli.QClientes.SQL.Add('and cli_status = '+QuotedStr('INA'));
  end;
  if DM.QParametrosPAR_CODIGOCLIENTE.Text = 'I' then begin
  if ((Trim(edDesde.Text)<>'') and (Trim(edHasta.Text)='')) then
  REstadoCtaCli.QClientes.SQL.Add('and cli_codigo = '+cliDesde);
  if ((Trim(edDesde.Text)='') and (Trim(edHasta.Text)<>'')) then
  REstadoCtaCli.QClientes.SQL.Add('and cli_codigo = '+cliDesde);
  if ((Trim(edDesde.Text)<>'') and (Trim(edHasta.Text)<>'')) then
  REstadoCtaCli.QClientes.SQL.Add('and cli_codigo between '+cliDesde + ' and '+cliHasta);
  end;
  if DM.QParametrosPAR_CODIGOCLIENTE.Text = 'R' then begin
  if ((Trim(edDesde.Text)<>'') and (Trim(edHasta.Text)='')) then
  REstadoCtaCli.QClientes.SQL.Add('and cli_referencia = '+cliDesde);
  if ((Trim(edDesde.Text)='') and (Trim(edHasta.Text)<>'')) then
  REstadoCtaCli.QClientes.SQL.Add('and cli_referencia = '+cliHasta);
  if ((Trim(edDesde.Text)<>'') and (Trim(edHasta.Text)<>'')) then
  REstadoCtaCli.QClientes.SQL.Add('and cli_referencia between '+cliDesde + ' and '+cliHasta);
  end;
  if Trim(edVendedor.Text)<>'' then
  REstadoCtaCli.QClientes.SQL.Add('and ven_codigo = '+edVendedor.Text);
  case cbBalance.ItemIndex of
  1:REstadoCtaCli.QClientes.SQL.Add(mmoCliente0.Lines.GetText);
  2:REstadoCtaCli.QClientes.SQL.Add(mmoClientemas0.Lines.GetText);
  3:REstadoCtaCli.QClientes.SQL.Add(mmoClientemenos0.Lines.GetText);
  end;
  if Trim(edTipo.Text) <> '' then
  REstadoCtaCli.QClientes.SQL.Add('and tcl_codigo = '+Trim(edTipo.Text));



  case cbOrden.ItemIndex of
  0:REstadoCtaCli.QClientes.SQL.Add('order by cli_codigo');
  1:REstadoCtaCli.QClientes.SQL.Add('order by cli_referencia');
  2:REstadoCtaCli.QClientes.SQL.Add('order by cli_nombre');
  3:REstadoCtaCli.QClientes.SQL.Add('order by cli_cedula');
  4:REstadoCtaCli.QClientes.SQL.Add('order by cli_rnc');
  end;
  REstadoCtaCli.QClientes.Parameters.ParamByName('emp_codigo').Value  := dm.vp_cia;
  REstadoCtaCli.QClientes.Parameters.ParamByName('fecha').DataType    := ftDate;
  REstadoCtaCli.QClientes.Parameters.ParamByName('fecha').Value       := Fecha.Date;
  REstadoCtaCli.QClientes.Open;

  REstadoCtaCli.QDocs.Close;
  REstadoCtaCli.QDocs.SQL.Clear;
  REstadoCtaCli.QDocs.SQL.Add('DECLARE @fecha datetime;');
  REstadoCtaCli.QDocs.SQL.Add('set @fecha = :fecha; ');
  REstadoCtaCli.QDocs.SQL.Add('SELECT ROUND(CASE WHEN MOV_TASA = 1 THEN 0 ELSE MOV_MONTO/MOV_TASA END,2) MOV_MONTOUS,');
  REstadoCtaCli.QDocs.SQL.Add('ROUND(CASE WHEN MOV_TASA = 1 THEN 0 ELSE ABONO/MOV_TASA END,2) ABONOUS,');
  REstadoCtaCli.QDocs.SQL.Add('* FROM(');
  REstadoCtaCli.QDocs.SQL.Add('select M.FAC_FORMA, ');
  REstadoCtaCli.QDocs.SQL.Add('(M.MOV_ABONO) as mov_abono, (M.MOV_MONTO), CASE WHEN M.MOV_TASA = 1 THEN (M.MOV_MONTO) ELSE 0 END as monto,');
  REstadoCtaCli.QDocs.SQL.Add('M.MOV_FECHA, M.MOV_NUMERO,');
  REstadoCtaCli.QDocs.SQL.Add('cast(CASE WHEN ISNULL(M.MOV_TASA,0)> 1 THEN ISNULL(M.MOV_TASA,0) ELSE 1 END  as numeric(18,2)) MOV_TASA,');
  REstadoCtaCli.QDocs.SQL.Add('M.MOV_TIPO, M.TFA_CODIGO, M.EMP_CODIGO, M.MOV_SECUENCIA,M.MOV_STATUS,M.MOV_CUOTA,');
  REstadoCtaCli.QDocs.SQL.Add('(m.mov_interes) mov_interes, m.mov_fechavence, m.suc_codigo, @fecha fecha,');
  REstadoCtaCli.QDocs.SQL.Add('datediff(day,MOV_FECHA, @FECHA) DIASVENC, M.CLI_CODIGO,');
  REstadoCtaCli.QDocs.SQL.Add('(ISNULL((SELECT SUM(MOV_MONTO) FROM PR_CONS_PAGOS_NC_FACTURA(M.EMP_CODIGO,M.suc_codigo,M.tfa_codigo, M.fac_forma, M.MOV_NUMERO, @FECHA)');
  REstadoCtaCli.QDocs.SQL.Add('where MOV_FECHA <= @fecha),0)) ABONO,');
  REstadoCtaCli.QDocs.SQL.Add('M.MON_CODIGO');
  REstadoCtaCli.QDocs.SQL.Add('FROM  Movimientos M WHERE M.TFA_CODIGO <> 1 ');
  if DM.QParametrosPAR_CODIGOCLIENTE.Text = 'R' then
  REstadoCtaCli.QDocs.SQL.Add('AND CLI_CODIGO BETWEEN (SELECT MIN(CLI_CODIGO) FROM CLIENTES WHERE EMP_CODIGO = '+IntToStr(DM.vp_cia)+' AND CLI_REFERENCIA = '+QuotedStr(cliDesde)+') AND '+
                                                       '(SELECT MAX(CLI_CODIGO) FROM CLIENTES WHERE EMP_CODIGO = '+IntToStr(DM.vp_cia)+' AND CLI_REFERENCIA = '+QuotedStr(cliHasta)+')') ELSE
  REstadoCtaCli.QDocs.SQL.Add('AND CLI_CODIGO BETWEEN (SELECT MIN(CLI_CODIGO) FROM CLIENTES WHERE EMP_CODIGO = '+IntToStr(DM.vp_cia)+' AND CLI_CODIGO = '+QuotedStr(cliDesde)+') AND '+
                                                       '(SELECT MAX(CLI_CODIGO) FROM CLIENTES WHERE EMP_CODIGO = '+IntToStr(DM.vp_cia)+' AND CLI_CODIGO = '+QuotedStr(cliHasta)+')');
  REstadoCtaCli.QDocs.SQL.Add('AND EMP_CODIGO = :EMP_CODIGO AND MOV_STATUS <> ''ANU'')  AS TEMP');
  REstadoCtaCli.QDocs.SQL.Add('WHERE MOV_FECHA <= @FECHA');
  CASE cbBalance.ItemIndex OF
  1:REstadoCtaCli.QDocs.SQL.Add('AND (((MOV_MONTO-ABONO)=0) OR ((ROUND(CASE WHEN MOV_TASA = 1 THEN 0 ELSE MOV_MONTO/MOV_TASA END,2) -ROUND(CASE WHEN MOV_TASA = 1 THEN 0 ELSE ABONO/MOV_TASA END,2))=0))');
  2:REstadoCtaCli.QDocs.SQL.Add('AND (((MOV_MONTO-ABONO)>1) OR ((ROUND(CASE WHEN MOV_TASA = 1 THEN 0 ELSE MOV_MONTO/MOV_TASA END,2) -ROUND(CASE WHEN MOV_TASA = 1 THEN 0 ELSE ABONO/MOV_TASA END,2))>1))');
  3:REstadoCtaCli.QDocs.SQL.Add('AND (((MOV_MONTO-ABONO)<0) OR ((ROUND(CASE WHEN MOV_TASA = 1 THEN 0 ELSE MOV_MONTO/MOV_TASA END,2) -ROUND(CASE WHEN MOV_TASA = 1 THEN 0 ELSE ABONO/MOV_TASA END,2))<0))');
  END;

  //IF ckMov.Checked THEN
  //REstadoCtaCli.QDocs.SQL.Add('AND MOV_STATUS ='+QuotedStr('PEN') );
  IF ChkB_cksucursal.Checked THEN
  REstadoCtaCli.QDocs.SQL.Add('and SUC_CODIGO = :SUC');
  IF Trim(edmoneda.Text)<>'' THEN
  REstadoCtaCli.QDocs.SQL.Add('and mon_CODIGO = '+QuotedStr(edmoneda.Text));
  REstadoCtaCli.QDocs.SQL.Add('order by mov_fecha');
  REstadoCtaCli.QDocs.Parameters.ParamByName('fecha').DataType := ftDate;
  REstadoCtaCli.QDocs.Parameters.ParamByName('fecha').Value := Fecha.Date;
  REstadoCtaCli.QDocs.Parameters.ParamByName('emp_codigo').DataType := ftInteger;

  //REstadoCtaCli.QDocs.Parameters.ParamByName('cli_codigo').DataType := ftInteger;

  IF ChkB_cksucursal.Checked = true THEN
  REstadoCtaCli.QDocs.Parameters.ParamByName('SUC').Value := REstadoCtaCli.suc;
  REstadoCtaCli.QDocs.Open;
  {REstadoCtaCli.QDocs.Close;
  REstadoCtaCli.QDocs.SQL.Clear;
  REstadoCtaCli.QDocs.SQL.Add('DECLARE @fecha datetime, @EMP INT, @CLI INT');
  REstadoCtaCli.QDocs.SQL.Add('set @fecha = :FECHA ');
  REstadoCtaCli.QDocs.SQL.Add('set @EMP = :EMP_CODIGO ');
  REstadoCtaCli.QDocs.SQL.Add('set @CLI = :CLI_CODIGO ');
  REstadoCtaCli.QDocs.SQL.Add('select M.FAC_FORMA, (M.MOV_ABONO) as mov_abono,');
  REstadoCtaCli.QDocs.SQL.Add('M.MOV_FECHA, (M.MOV_MONTO) as mov_monto, M.MOV_NUMERO,');
  REstadoCtaCli.QDocs.SQL.Add('M.MOV_TIPO, M.TFA_CODIGO, M.EMP_CODIGO, M.MOV_SECUENCIA,');
  REstadoCtaCli.QDocs.SQL.Add('M.MOV_CUOTA, M.MOV_TASA, (m.mov_interes) mov_interes, m.mov_fechavence, m.suc_codigo, @fecha fecha,');
  REstadoCtaCli.QDocs.SQL.Add('datediff(day,MOV_FECHA, @FECHA) DIASVENC, M.CLI_CODIGO');
  IF ckMov.Checked THEN
  REstadoCtaCli.QDocs.SQL.Add('FROM  [dbo].[pr_buscar_mov_cxc] (@EMP, @FECHA, @CLI, 0) M') ELSE
  REstadoCtaCli.QDocs.SQL.Add('FROM  [dbo].[pr_buscar_mov_cxc] (@EMP, @FECHA, @CLI, 1) M');
  REstadoCtaCli.QDocs.SQL.Add('where CLI_CODIGO > 0');
  IF ChkB_cksucursal.Checked THEN
  REstadoCtaCli.QDocs.SQL.Add('and SUC_CODIGO = :SUC');
  IF Trim(edmoneda.Text)<>'' THEN
  REstadoCtaCli.QDocs.SQL.Add('and mon_CODIGO = '+QuotedStr(edmoneda.Text));
  case cbBalance.ItemIndex of
  1:REstadoCtaCli.QDocs.SQL.Add('and MOV_BALANCE = 0');
  2:REstadoCtaCli.QDocs.SQL.Add('and MOV_BALANCE > 0');
  3:REstadoCtaCli.QDocs.SQL.Add('and MOV_BALANCE < 0');
  end;
  REstadoCtaCli.QDocs.SQL.Add('order by mov_fecha');
  REstadoCtaCli.QDocs.Parameters.ParamByName('fecha').DataType := ftDate;
  REstadoCtaCli.QDocs.Parameters.ParamByName('fecha').Value    := Fecha.Date;
  REstadoCtaCli.QDocs.Parameters.ParamByName('EMP_CODIGO').DataType := ftInteger;
  REstadoCtaCli.QDocs.Parameters.ParamByName('CLI_CODIGO').DataType := ftInteger;
  REstadoCtaCli.QDocs.Parameters.ParamByName('EMP_CODIGO').Value := DM.vp_cia;
  IF ChkB_cksucursal.Checked = true THEN
  REstadoCtaCli.QDocs.Parameters.ParamByName('SUC').Value         := REstadoCtaCli.suc;
  REstadoCtaCli.QDocs.Open;}
  REstadoCtaCli.lbTipo.Caption := tTipo.Text;
  REstadoCtaCli.lbFecha.Caption := 'Al '+DateToStr(Date);

IF ChkB_cksucursal.Checked = True then
    REstadoCtaCli.suc := REstadoCtaCli.suc ELSE
    REstadoCtaCli.suc := REstadoCtaCli.suc;
  if not VarIsNull(REstadoCtaCli.QDocs['mov_tasa']) then
    REstadoCtaCli.tasa:= REstadoCtaCli.QDocs['mov_tasa']
  else REstadoCtaCli.tasa:=1;
  REstadoCtaCli.QRecibos.Close;
  REstadoCtaCli.QRecibos.Parameters.ParamByName('FECHA').DataType := ftDate;
  REstadoCtaCli.QRecibos.Open;
  REstadoCtaCli.QNC.Close;
  REstadoCtaCli.QNC.Parameters.ParamByName('fecha').DataType := ftDate;
  REstadoCtaCli.QNC.Parameters.ParamByName('EMP_CODIGO').DataType := ftInteger;
  REstadoCtaCli.QNC.Parameters.ParamByName('SUC_CODIGO').DataType := ftInteger;
  REstadoCtaCli.QNC.Parameters.ParamByName('CLI_CODIGO').DataType := ftInteger;
  REstadoCtaCli.QNC.Open;
  {REstadoCtaCli.QCredito.Close;
  REstadoCtaCli.QCredito.Parameters.ParamByName('fecha').DataType := ftDate;
  REstadoCtaCli.QCredito.Parameters.ParamByName('fecha').Value    := Fecha.Date;
  REstadoCtaCli.QCredito.Open;  }
  REstadoCtaCli.QDepositos.Close;
  REstadoCtaCli.QDepositos.Parameters.ParamByName('fecha').DataType := ftDate;
  REstadoCtaCli.QDepositos.Open;
  REstadoCtaCli.QAntig.Close;
  REstadoCtaCli.QAntig.Parameters[1].Value := Fecha.Date;
  if ChkB_cksucursal.Checked then
  REstadoCtaCli.QAntig.Parameters[3].Value := dblkcbb1.KeyValue else
  REstadoCtaCli.QAntig.Parameters[3].Value := REstadoCtaCli.suc;
  REstadoCtaCli.QAntig.Parameters.ParamByName('fecha').DataType := ftDate;
  REstadoCtaCli.QAntig.Parameters.ParamByName('fecha').Value    := Fecha.Date;
  REstadoCtaCli.QAntig.Open;
  REstadoCtaCli.qMora.Close;
  REstadoCtaCli.qMora.Parameters.ParamByName('fecha').DataType := ftDate;
  REstadoCtaCli.qMora.Parameters.ParamByName('fecha').Value    := Fecha.Date;
  REstadoCtaCli.qMora.Open;
  REstadoCtaCli.qMoraUS.Close;
  REstadoCtaCli.qMoraUS.Parameters.ParamByName('fecha').DataType := ftDate;
  REstadoCtaCli.qMoraUS.Parameters.ParamByName('fecha').Value    := Fecha.Date;
  REstadoCtaCli.qMoraUS.Open;

  REstadoCtaCli.QRBand3.ForceNewPage := ckPagina.Checked;
  REstadoCtaCli.lbFecha.Caption := 'Al '+DateToStr(Fecha.Date);
  if not ckmail.Checked then begin
  REstadoCtaCli.PrinterSetup;
  REstadoCtaCli.Preview;
  REstadoCtaCli.Destroy;
  end;
  if ckmail.Checked then begin
  if edDesde.Text<>edHasta.Text then begin
  ShowMessage('El cliente desde debe ser igual que hasta....');
  REstadoCtaCli.Destroy;
  Exit;
  end;
  if Trim(edDesde.Text)<>'' then begin
  if (REstadoCtaCli.QClientescli_email.Text)= '' then begin
    ShowMessage('Debes asignar el correo del cliente para poder enviar el correo!');
    REstadoCtaCli.Destroy;
    Exit;
  end;
  end;

  if ((Trim(edDesde.Text)='') and (Trim(edVendedor.Text)<>'')) then begin
  with DM.Query1 do begin
  Close;
  SQL.Clear;
  SQL.Add('select ven_email from vendedores where ven_codigo = '+edVendedor.Text+' and emp_codigo = '+IntToStr(DM.vp_cia));
  Open;
  if FieldByName('ven_email').Text = '' then begin
  ShowMessage('Debes asignar el correo al vendedor para poder enviar el correo!');
  REstadoCtaCli.Destroy;
  Exit;
  end;
  if FieldByName('ven_email').Text <> '' then
  vl_destino := fieldbyName('ven_email').Text;
  end;
  end;

  if Trim(edDesde.Text)<>'' then begin
  dm.vl_exportar := 'Estado de Cuenta al '+FormatDateTime('dd/mm/yyyy',Fecha.Date)+'.PDF';
  mmo1.Clear;
  mmo1.Lines.Add('Buenas,');
  mmo1.Lines.Add('');
  mmo1.Lines.Add('Sr. '+REstadoCtaCli.QClientesCLI_NOMBRE.Text+',');
  mmo1.Lines.Add('Adjunto encontrara su estado de cuentas al dia '+FormatDateTime('dd/mm/yyyy',Fecha.Date));
  mmo1.Lines.Add('');
  mmo1.Lines.Add('Saludos, ');
  if ChkB_cksucursal.Checked then
  mmo1.Lines.Add(dblkcbb1.Text) else
  mmo1.Lines.Add(dm.QEmpresasEMP_NOMBRE.Text);
  REstadoCtaCli.ExportToFilter(TQRPDFDocumentFilter.Create('.\'+dm.vl_exportar));
  frmMain.EnviarCorreo(REstadoCtaCli.QClientescli_email.Text,
                       'Estado de Cuenta de '+REstadoCtaCli.QClientesCLI_NOMBRE.Text,
                       dm.vl_exportar,
                       mmo1.Lines.GetText);

  REstadoCtaCli.Destroy;
  end;

  //Vendores
  if ((Trim(edDesde.Text)='') and (Trim(edVendedor.Text)<>'')) then begin
  dm.vl_exportar := 'Listado de Cuentas por cobrar del vendedor '+Trim(UpperCase(tVendedor.Text))+'.PDF';
  mmo1.Clear;
  mmo1.Lines.Add('Buenas,');
  mmo1.Lines.Add('');
  mmo1.Lines.Add('Sr(a) '+UpperCase(tVendedor.Text)+',');
  mmo1.Lines.Add('Adjunto encontrara el listado de cuentas por cobrar al dia '+FormatDateTime('dd/mm/yyyy',Fecha.Date));
  mmo1.Lines.Add('');
  mmo1.Lines.Add('Saludos, ');
  if ChkB_cksucursal.Checked then
  mmo1.Lines.Add(dblkcbb1.Text) else
  mmo1.Lines.Add(dm.QEmpresasEMP_NOMBRE.Text);
  REstadoCtaCli.ExportToFilter(TQRPDFDocumentFilter.Create('.\'+dm.vl_exportar));
  frmMain.EnviarCorreo(vl_destino,
                       'Listado de Cuentas por cobrar del vendedor '+Trim(UpperCase(tVendedor.Text)),
                       dm.vl_exportar,
                       mmo1.Lines.GetText);
  REstadoCtaCli.Destroy;
  end;

  end;
  except
    REstadoCtaCli.Free;
  end;
end;


procedure TfrmEstadoCtaCli.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;


procedure TfrmEstadoCtaCli.btTipoClick(Sender: TObject);
begin
  Search.query.clear;
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Title := 'Tipos de Clientes';
  Search.ResultField := 'tcl_codigo';
  Search.query.add('select tcl_nombre, tcl_codigo');
  Search.query.add('from tipoclientes');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  if search.execute then
  begin
    edTipo.text := search.valuefield;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tcl_nombre from tipoclientes');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tcl_codigo = '+edTipo.Text);
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Open;
    tTipo.Text := dm.Query1.FieldByname('tcl_nombre').AsString;
    edTipo.SetFocus;
  end;
end;

procedure TfrmEstadoCtaCli.edTipoChange(Sender: TObject);
begin
  if trim(edTipo.text) = '' then tTipo.text := '';
end;

procedure TfrmEstadoCtaCli.edTipoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edTipo.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.SQL.Add('select tcl_nombre from tipoclientes');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and tcl_codigo = '+edTipo.Text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        tTipo.text := '';
        showmessage('ESTE TIPO DE FACTURA NO EXISTE');
        edTipo.setfocus;
      end
      else
        tTipo.text := dm.Query1.fieldbyname('tcl_nombre').asstring;
    end;
  end;
end;

procedure TfrmEstadoCtaCli.btmonedaClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.clear;
  Search.Query.add('select mon_sigla, mon_codigo');
  Search.Query.add('from moneda');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.ResultField := 'mon_codigo';
  Search.Title := 'Moneda';
  if Search.execute then
  begin
    edmoneda.text := search.valuefield;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select mon_codigo, mon_sigla');
    dm.Query1.sql.add('from moneda');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and mon_codigo = :mon');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('mon').Value := StrToInt(edmoneda.Text);
    dm.Query1.open;
    tmoneda.text := dm.Query1.fieldbyname('mon_sigla').asstring;
  end;
end;

procedure TfrmEstadoCtaCli.btConsolidadoClick(Sender: TObject);
begin
if edDesde.Text = EmptyStr then
   messagedlg('PARA ESTE ESTADO DEBE ELEGIR UN CLIENTE',mterror,[mbok],0)
else begin
    Application.CreateForm(TREstadoCtaCliConsolidado, REstadoCtaCliConsolidado);
  if ChkB_cksucursal.Checked = False then
  REstadoCtaCliConsolidado.vl_suc := 0 else
  REstadoCtaCliConsolidado.vl_suc := dblkcbb1.KeyValue;
  
  REstadoCtaCliConsolidado.QRBand3.ForceNewPage := false;
  REstadoCtaCliConsolidado.lbVendedor.Caption := '';
  REstadoCtaCliConsolidado.lbTipo.Caption := 'Tipo : '+tTipo.Text;
  WITH REstadoCtaCliConsolidado.QClientes do begin
  Close;
  case cbStatus.ItemIndex of
  1 : SQL.Add('and cli_status = '+#39+'ACT'+#39);
  2 : SQL.Add('and cli_status = '+#39+'INA'+#39);
  end;

  case cbBalance.ItemIndex of
  1 : SQL.Add('and cli_balance = 0');
  2 : SQL.Add('and cli_balance > 0');
  3 : SQL.Add('and cli_balance < 0');
  end;

  if Trim(edTipo.Text)<>'' then
  SQL.Add('and tcl_codigo = '+QuotedStr(edTipo.Text));

  Parameters.ParamByName('emp_codigo').Value := dm.vp_cia;
  Parameters.ParamByName('cli_codigo').Value := StrToInt(edDesde.Text);
  Parameters.ParamByName('fecha').DataType   := ftDate;
  Parameters.ParamByName('fecha').Value      := now; //Fecha.Date;
  IF ChkB_cksucursal.Checked then BEGIN
  Parameters.ParamByName('suc1').Value := dblkcbb1.KeyValue;
  Parameters.ParamByName('suc2').Value := dblkcbb1.KeyValue;
  end;
  IF not ChkB_cksucursal.Checked then BEGIN
  Parameters.ParamByName('suc1').Value := 0;
  Parameters.ParamByName('suc2').Value := 999;
  end;
  open;
  end;

  REstadoCtaCliConsolidado.QClienteTitular.Close;
  case cbBalance.ItemIndex of
  1 : REstadoCtaCliConsolidado.QClienteTitular.SQL.Add('and cli_balance = 0');
  2 : REstadoCtaCliConsolidado.QClienteTitular.SQL.Add('and cli_balance > 0');
  3 : REstadoCtaCliConsolidado.QClienteTitular.SQL.Add('and cli_balance < 0');
  end;
  IF ChkB_cksucursal.Checked then BEGIN
  REstadoCtaCliConsolidado.QClienteTitular.Parameters.ParamByName('suc1').Value := dblkcbb1.KeyValue;
  REstadoCtaCliConsolidado.QClienteTitular.Parameters.ParamByName('suc2').Value := dblkcbb1.KeyValue;
  end;
  IF not ChkB_cksucursal.Checked then BEGIN
  REstadoCtaCliConsolidado.QClienteTitular.Parameters.ParamByName('suc1').Value := 0;
  REstadoCtaCliConsolidado.QClienteTitular.Parameters.ParamByName('suc2').Value := 999;
  end;
  REstadoCtaCliConsolidado.QClienteTitular.open;
  REstadoCtaCliConsolidado.QDocs.Close;
  if ckMov.Checked then
  REstadoCtaCliConsolidado.QDocs.SQL.Add('and M.mov_status = '+#39+'PEN'+#39);

  if Trim(edmoneda.Text) <> '' then
  REstadoCtaCliConsolidado.QDocs.SQL.Add('and M.mon_codigo = '+QuotedStr(edmoneda.Text));
  REstadoCtaCliConsolidado.QDocs.SQL.Add('order by M.mov_fecha');
  IF ChkB_cksucursal.Checked then BEGIN
  REstadoCtaCliConsolidado.QDocs.Parameters.ParamByName('suc1').Value := dblkcbb1.KeyValue;
  REstadoCtaCliConsolidado.QDocs.Parameters.ParamByName('suc2').Value := dblkcbb1.KeyValue;
  end;
  IF not ChkB_cksucursal.Checked then BEGIN
  REstadoCtaCliConsolidado.QDocs.Parameters.ParamByName('suc1').Value := 0;
  REstadoCtaCliConsolidado.QDocs.Parameters.ParamByName('suc2').Value := 999;
  end;
  REstadoCtaCliConsolidado.QDocs.open;
  if not VarIsNull(REstadoCtaCliConsolidado.QDocs['mov_tasa']) then
    REstadoCtaCliConsolidado.tasa:= REstadoCtaCliConsolidado.QDocs['mov_tasa']
  else REstadoCtaCliConsolidado.tasa:=1;

  REstadoCtaCliConsolidado.QRecibos.Close;
  IF ChkB_cksucursal.Checked then BEGIN
  REstadoCtaCliConsolidado.QRecibos.Parameters.ParamByName('suc1').Value := dblkcbb1.KeyValue;
  REstadoCtaCliConsolidado.QRecibos.Parameters.ParamByName('suc2').Value := dblkcbb1.KeyValue;
  end;
  IF not ChkB_cksucursal.Checked then BEGIN
  REstadoCtaCliConsolidado.QRecibos.Parameters.ParamByName('suc1').Value := 0;
  REstadoCtaCliConsolidado.QRecibos.Parameters.ParamByName('suc2').Value := 999;
  end;
  REstadoCtaCliConsolidado.QRecibos.open;
  REstadoCtaCliConsolidado.QNC.Close;
  IF ChkB_cksucursal.Checked then BEGIN
  REstadoCtaCliConsolidado.QNC.Parameters.ParamByName('suc').Value := dblkcbb1.KeyValue;
  end;
  IF not ChkB_cksucursal.Checked then BEGIN
  REstadoCtaCliConsolidado.QNC.Parameters.ParamByName('suc').Value := 0;
  end;
  REstadoCtaCliConsolidado.QNC.open;
  REstadoCtaCliConsolidado.QCredito.Close;
  IF ChkB_cksucursal.Checked then BEGIN
  REstadoCtaCliConsolidado.QCredito.Parameters.ParamByName('suc1').Value := dblkcbb1.KeyValue;
  REstadoCtaCliConsolidado.QCredito.Parameters.ParamByName('suc2').Value := dblkcbb1.KeyValue;
  end;
  IF not ChkB_cksucursal.Checked then BEGIN
  REstadoCtaCliConsolidado.QCredito.Parameters.ParamByName('suc1').Value := 0;
  REstadoCtaCliConsolidado.QCredito.Parameters.ParamByName('suc2').Value := 999;
  end;
  REstadoCtaCliConsolidado.QCredito.open;
  REstadoCtaCliConsolidado.QDepositos.Close;
    IF ChkB_cksucursal.Checked then BEGIN
  REstadoCtaCliConsolidado.QDepositos.Parameters.ParamByName('suc1').Value := dblkcbb1.KeyValue;
  REstadoCtaCliConsolidado.QDepositos.Parameters.ParamByName('suc2').Value := dblkcbb1.KeyValue;
  end;
  IF not ChkB_cksucursal.Checked then BEGIN
  REstadoCtaCliConsolidado.QDepositos.Parameters.ParamByName('suc1').Value := 0;
  REstadoCtaCliConsolidado.QDepositos.Parameters.ParamByName('suc2').Value := 999;
  end;
  REstadoCtaCliConsolidado.QDepositos.open;
  REstadoCtaCliConsolidado.QAntig.Close;
    IF ChkB_cksucursal.Checked then BEGIN
  REstadoCtaCliConsolidado.QAntig.Parameters.ParamByName('suc').Value := dblkcbb1.KeyValue;
  end;
  IF not ChkB_cksucursal.Checked then BEGIN
  REstadoCtaCliConsolidado.QAntig.Parameters.ParamByName('suc').Value := 0;
  end;
  REstadoCtaCliConsolidado.QAntig.open;
  REstadoCtaCliConsolidado.lbFecha.Caption := 'Al '+DateToStr(Fecha.Date);
  REstadoCtaCliConsolidado.PrinterSetup;
  REstadoCtaCliConsolidado.Preview;
  REstadoCtaCliConsolidado.Destroy;
end;
end;

procedure TfrmEstadoCtaCli.FormActivate(Sender: TObject);
begin
if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    QSucursal.First;
  end;

IF ChkB_cksucursal.Checked THEN
dblkcbb1.KeyValue := DM.QParametrosPAR_SUC_NCF.Value;
end;

procedure TfrmEstadoCtaCli.ckMovClick(Sender: TObject);
begin
IF ckMov.Checked THEN 
cbBalance.ItemIndex := 2;
end;

end.
