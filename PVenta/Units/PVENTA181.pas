unit PVENTA181;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Buttons, Grids, DBGrids, DB,
  IBCustomDataSet, ADODB, QuerySearchDlgADO, Math, cxPC, cxControls, Menus;

type
  TfrmConsCotizaciones = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    Label12: TLabel;
    btVendedor: TSpeedButton;
    tVendedor: TEdit;
    edVendedor: TEdit;
    Label2: TLabel;
    SpeedButton2: TSpeedButton;
    edCliente: TEdit;
    tCliente: TEdit;
    btusuario: TSpeedButton;
    tUsuario: TEdit;
    edUsuario: TEdit;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    QCotizacion: TADOQuery;
    QCotizacionCLI_CODIGO: TIntegerField;
    QCotizacionCLI_REFERENCIA: TIBStringField;
    QCotizacionCOT_DIRECCION: TIBStringField;
    QCotizacionCOT_FAX: TIBStringField;
    QCotizacionCOT_FECHA: TDateTimeField;
    QCotizacionCOT_ITBIS: TFloatField;
    QCotizacionCOT_LOCALIDAD: TIBStringField;
    QCotizacionCOT_NOMBRE: TIBStringField;
    QCotizacionCOT_NUMERO: TIntegerField;
    QCotizacionCOT_STATUS: TIBStringField;
    QCotizacionCOT_TELEFONO: TIBStringField;
    QCotizacionCOT_TOTAL: TFloatField;
    QCotizacionEMP_CODIGO: TIntegerField;
    QCotizacionUSU_CODIGO: TIntegerField;
    QCotizacionVEN_CODIGO: TIntegerField;
    QCotizacionSUC_CODIGO: TIntegerField;
    QCotizacionCOT_DESCUENTO: TBCDField;
    QCotizacionmon_codigo: TIntegerField;
    QCotizacioncot_Tasa: TBCDField;
    QCotizacioncpa_codigo: TIntegerField;
    QCotizacioncot_validez: TIntegerField;
    QCotizacioncot_tiempo_entrega: TStringField;
    QCotizacioncot_contacto: TStringField;
    dsCotizacion: TDataSource;
    QCotizacionusu_nombre: TStringField;
    QCotizacionven_nombre: TStringField;
    QCotizacionmon_nombre: TStringField;
    Memo1: TMemo;
    Search: TQrySearchDlgADO;
    QCotizacionMargen: TBCDField;
    btmoneda: TSpeedButton;
    Label4: TLabel;
    tmoneda: TEdit;
    edmoneda: TEdit;
    Panel2: TPanel;
    btClose: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    btrefresh: TBitBtn;
    QDetalle: TADOQuery;
    QDetalleCOT_NUMERO: TIntegerField;
    QDetalleDET_CANTIDAD: TFloatField;
    QDetalleDET_CONITBIS: TIBStringField;
    QDetalleDET_ITBIS: TFloatField;
    QDetalleDET_PRECIO: TFloatField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    QDetallePRO_BARRA: TIBStringField;
    QDetallePRO_CODIGO: TIntegerField;
    QDetallePRO_NOMBRE: TIBStringField;
    QDetallePRO_RFABRIC: TIBStringField;
    QDetallePRO_RORIGINAL: TIBStringField;
    QDetalleCalcItbis: TFloatField;
    QDetalleCalcDesc: TFloatField;
    QDetallePrecioItbis: TFloatField;
    QDetalleValor: TFloatField;
    QDetalleDET_ESCALA: TIBStringField;
    QDetalleDET_MANEJAESCALA: TIBStringField;
    QDetalleDET_PRECIO1: TFloatField;
    QDetalleDET_PRECIO2: TFloatField;
    QDetalleDET_PRECIO3: TFloatField;
    QDetalleDET_PRECIO4: TFloatField;
    QDetalleDET_MEDIDA: TIBStringField;
    QDetalleDET_NOTA: TMemoField;
    QDetalleDET_DESCUENTO: TBCDField;
    QDetalledet_margen: TBCDField;
    QDetalledet_costo: TBCDField;
    QDetallePrecioTasa: TFloatField;
    QDetallepro_servicio: TStringField;
    QDetallepro_combo: TStringField;
    QDetallemar_codigo: TIntegerField;
    QDetallepro_unidad_medida: TStringField;
    QDetalleUnidadID: TStringField;
    QDetalleMedida_Precio1: TBCDField;
    QDetalleMedida_Precio2: TBCDField;
    QDetalleMedida_Precio3: TBCDField;
    QDetalleMedida_Precio4: TBCDField;
    QDetalledet_cant_unidad_medida: TBCDField;
    dsDetalle: TDataSource;
    Splitter1: TSplitter;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Grid: TDBGrid;
    dsMedida: TDataSource;
    QMedidas: TADOQuery;
    QMedidasUnidadID: TStringField;
    QMedidasNombre: TStringField;
    QDetalleUnidadMedida: TStringField;
    cxTabSheet2: TcxTabSheet;
    DBGrid_Comentarios: TDBGrid;
    qComentarios: TADOQuery;
    dsComentarios: TDataSource;
    qComentariosCOMENT1: TStringField;
    qComentariosCOMENT2: TStringField;
    qComentariosCOMENT3: TStringField;
    qComentariosUSU1: TStringField;
    qComentariosUSU2: TStringField;
    qComentariosUSU3: TStringField;
    qComentariosESTATUS: TStringField;
    qComentariosFEC1: TDateTimeField;
    qComentariosFEC2: TDateTimeField;
    qComentariosFEC3: TDateTimeField;
    procedure FormPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btusuarioClick(Sender: TObject);
    procedure edUsuarioChange(Sender: TObject);
    procedure edUsuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edClienteChange(Sender: TObject);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edVendedorChange(Sender: TObject);
    procedure edVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btrefreshClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btVendedorClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btmonedaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QCotizacionAfterOpen(DataSet: TDataSet);
    procedure QDetalleCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsCotizaciones: TfrmConsCotizaciones;

implementation

uses SIGMA01, SIGMA00, RVENTA85, RVENTA36, RVENTA65, RVENTA90;

{$R *.dfm}

procedure TfrmConsCotizaciones.FormPaint(Sender: TObject);
begin
  with frmConsCotizaciones do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmConsCotizaciones.FormCreate(Sender: TObject);
begin
  fecha1.Date := date;
  fecha2.Date := date;
  memo1.lines := QCotizacion.SQL;
  if dm.QUsuariosusu_modifica_otras_cotizaciones.Value = 'False' then
  begin
    edUsuario.Text := dm.QUsuariosusu_codigo.AsString;
    tUsuario.Text  := dm.QUsuariosUSU_NOMBRE.Value;
    edUsuario.Enabled := false;
    btusuario.Enabled := false;
  end;

  if dm.QParametrospar_visualizadesc.Value <> 'True' then
  begin
    Grid.Columns[7].Destroy;
    Grid.Columns[1].Width := Grid.Columns[1].Width + 35;
  end;

  if dm.QParametrosPAR_FACESCALA.Value <> 'True' then
  begin
    Grid.Columns[5].Destroy;
    Grid.Columns[1].Width := Grid.Columns[1].Width + 10;
  end;

  if dm.QParametrospar_inv_unidad_medida.Value <> 'True' then
  begin
    Grid.Columns[3].Destroy;
    Grid.Columns[1].Width := Grid.Columns[1].Width + 40;
  end;

  if dm.QParametrosPAR_FACMEDIDA.Value <> 'True' then
  begin
    Grid.Columns[3].Destroy;
    Grid.Columns[1].Width := Grid.Columns[1].Width + 80;
  end;
end;

procedure TfrmConsCotizaciones.btusuarioClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C�digo');
  Search.Query.clear;
  Search.Query.add('select usu_nombre, usu_codigo');
  Search.Query.add('from usuarios');
  Search.ResultField := 'usu_Codigo';
  Search.Title := 'Usuarios';
  if Search.execute then
  begin
    edUsuario.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select usu_nombre from usuarios');
    dm.Query1.sql.add('where usu_codigo = :cod');
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edUsuario.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('USUARIO NO EXISTE',mterror,[mbok],0)
    else
      tUsuario.text := dm.Query1.fieldbyname('usu_nombre').asstring;
    edUsuario.setfocus;
    btRefreshClick(self);
  end;
end;

procedure TfrmConsCotizaciones.edUsuarioChange(Sender: TObject);
begin
  if trim(edUsuario.text) = '' then tUsuario.text := '';
end;

procedure TfrmConsCotizaciones.edUsuarioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edUsuario.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select usu_nombre from usuarios');
      dm.Query1.sql.add('where usu_codigo = :cod');
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edUsuario.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('USUARIO NO EXISTE',mterror,[mbok],0);
        edUsuario.setFocus;
      end
      else
        tUsuario.text := dm.Query1.fieldbyname('usu_nombre').asstring;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsCotizaciones.edClienteChange(Sender: TObject);
begin
  if trim(edCliente.text) = '' then tCliente.text := '';
end;

procedure TfrmConsCotizaciones.edClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edCliente.text) <> '' then
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
         dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edcliente.text))
      else
         dm.Query1.Parameters.parambyname('cod').Value := trim(edcliente.text);
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('CLIENTE NO EXISTE',mterror,[mbok],0);
        edCliente.SetFocus;
      end
      else
        tCliente.text := dm.Query1.fieldbyname('cli_nombre').asstring;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsCotizaciones.edVendedorChange(Sender: TObject);
begin
  if trim(edVendedor.text) = '' then tVendedor.text := '';
end;

procedure TfrmConsCotizaciones.edVendedorKeyDown(Sender: TObject;
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
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsCotizaciones.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsCotizaciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TfrmConsCotizaciones.btrefreshClick(Sender: TObject);
begin
  QCotizacion.Close;
  QCotizacion.SQL.Clear;
  QCotizacion.SQL := Memo1.Lines;

  if Trim(edVendedor.Text) <> '' then QCotizacion.SQL.Add('and c.ven_codigo = '+edVendedor.Text);
  if Trim(edCliente.Text) <> ''  then QCotizacion.SQL.Add('and c.cli_codigo = '+edCliente.Text);
  if Trim(edUsuario.Text) <> ''  then QCotizacion.SQL.Add('and c.usu_codigo = '+edUsuario.Text);

  QCotizacion.SQL.Add('group by c.CLI_CODIGO, c.CLI_REFERENCIA, c.COT_DIRECCION,');
  QCotizacion.SQL.Add('c.COT_FAX, c.COT_FECHA, c.COT_ITBIS, c.COT_LOCALIDAD,');
  QCotizacion.SQL.Add('c.COT_NOMBRE, c.COT_NUMERO, c.COT_STATUS, c.COT_TELEFONO,');
  QCotizacion.SQL.Add('c.COT_TOTAL, c.EMP_CODIGO, c.USU_CODIGO, c.VEN_CODIGO,');
  QCotizacion.SQL.Add('c.SUC_CODIGO, c.COT_DESCUENTO, c.mon_codigo, c.cot_Tasa,');
  QCotizacion.SQL.Add('c.cpa_codigo, c.cot_validez, c.cot_tiempo_entrega,');
  QCotizacion.SQL.Add('c.cot_contacto, u.usu_nombre, v.ven_nombre, m.mon_sigla');
  QCotizacion.SQL.Add('order by c.cot_fecha desc');
  QCotizacion.Parameters.ParamByName('fec1').DataType := ftDate;
  QCotizacion.Parameters.ParamByName('fec2').DataType := ftDate;
  QCotizacion.Parameters.ParamByName('fec1').Value := Fecha1.Date;
  QCotizacion.Parameters.ParamByName('fec2').Value := Fecha2.Date;
  QCotizacion.Open;
  DBGrid1.SetFocus;
  QDetalle.Close;
  qComentarios.Close;
  QDetalle.Open;
  qComentarios.Open;
end;

procedure TfrmConsCotizaciones.SpeedButton2Click(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C�digo');
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
    edCliente.text := Search.ValueField;
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
       dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edCliente.text))
    else
       dm.Query1.Parameters.parambyname('cod').Value := trim(edCliente.text);
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('CLIENTE NO EXISTE',mterror,[mbok],0)
    else
      tCliente.text := dm.Query1.fieldbyname('cli_nombre').asstring;
    edCliente.setfocus;
    btRefreshClick(self);
  end;
end;

procedure TfrmConsCotizaciones.btVendedorClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C�digo');
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

procedure TfrmConsCotizaciones.FormActivate(Sender: TObject);
begin
  frmMain.ExportXLS.Sheets[0].DBGrid := DBGrid1;
  frmMain.ExportXLS.Sheets[1].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[0].Exported := True;
end;

procedure TfrmConsCotizaciones.BitBtn2Click(Sender: TObject);
begin
  if dm.QParametrospar_fac_preimpresa.Value = 'True' then
  begin
    if dm.QParametrospar_formato_preimpreso.Value = 'QRMSConsulting' then
    begin
      application.CreateForm(tRCotizacionPreimpresa, RCotizacionPreimpresa);
      RCotizacionPreimpresa.lbReimpresion.Enabled := True;
      RCotizacionPreimpresa.QCotizacion.Close;
      RCotizacionPreimpresa.QCotizacion.Parameters.ParamByName('emp_codigo').Value := dm.vp_cia;
      RCotizacionPreimpresa.QCotizacion.Parameters.ParamByName('numero').Value     := QCotizacionCOT_NUMERO.Value;
      RCotizacionPreimpresa.QCotizacion.Open;
      RCotizacionPreimpresa.QDetalle.Close;
      RCotizacionPreimpresa.QDetalle.Parameters.ParamByName('emp_codigo').Value := dm.vp_cia;
      RCotizacionPreimpresa.QDetalle.Parameters.ParamByName('numero').Value     := QCotizacionCOT_NUMERO.Value;
      RCotizacionPreimpresa.QDetalle.Open;
      RCotizacionPreimpresa.QRMSConsulting.PrinterSetup;
      RCotizacionPreimpresa.QRMSConsulting.Preview;
      RCotizacionPreimpresa.Release;
    end
    else if dm.QParametrospar_formato_preimpreso.Value = 'QRThorton' then
    begin
      application.CreateForm(tRCotizacionPreimpresa, RCotizacionPreimpresa);
      RCotizacionPreimpresa.lbReimpresion.Enabled := True;
      RCotizacionPreimpresa.QCotizacion.Parameters.ParamByName('numero').Value := QCotizacionCOT_NUMERO.Value;
      RCotizacionPreimpresa.QCotizacion.Open;
      RCotizacionPreimpresa.QDetalle.Open;
      RCotizacionPreimpresa.QRTHorton.PrinterSetup;
      RCotizacionPreimpresa.QRTHorton.Preview;
      RCotizacionPreimpresa.Release;
    end
    else if dm.QParametrospar_formato_preimpreso.Value = 'QRBelkis' then
    begin
      application.CreateForm(tRCotizacionPreimpresa, RCotizacionPreimpresa);
      RCotizacionPreimpresa.lbReimpresion.Enabled := True;
      RCotizacionPreimpresa.QCotizacion.Parameters.ParamByName('numero').Value := QCotizacionCOT_NUMERO.Value;
      RCotizacionPreimpresa.QCotizacion.Open;
      RCotizacionPreimpresa.QDetalle.Open;
      RCotizacionPreimpresa.QRBelkis.PrinterSetup;
      RCotizacionPreimpresa.QRBelkis.Preview;
      RCotizacionPreimpresa.Release;
    end
    else
    begin
      if dm.QParametrosPAR_FORMATOCOT.Value = 2 then
      begin
        Application.CreateForm(tRCotizacion, RCotizacion);
        RCotizacion.QCotizacion.Parameters.ParamByName('numero').Value := QCotizacionCOT_NUMERO.Value;
        RCotizacion.QCotizacion.Open;
        RCotizacion.QDetalle.Open;
        RCotizacion.Imprime := true;
        if Trim(dm.QParametrospar_imprime_logo.Value) = 'True' then
          RCotizacion.Imprime := false
        else if MessageDLG('DESEA IMPRIMIR EL ENCABEZADO?', mtConfirmation, [mbyes,mbno],0) = mrno then
        begin
          RCotizacion.Imprime := false;
          RCotizacion.lbEmp1.Enabled := False;
          RCotizacion.lbEmp2.Enabled := False;
          RCotizacion.lbEmp3.Enabled := False;
          RCotizacion.lbEmp4.Enabled := False;
          RCotizacion.lbEmp5.Enabled := False;
          RCotizacion.lbEmp6.Enabled := False;
          RCotizacion.lbEmp7.Enabled := False;
          RCotizacion.lbEmp8.Enabled := False;
          RCotizacion.lbEmp9.Enabled := False;
        end;
        RCotizacion.PrinterSetup;
        RCotizacion.Preview;
        RCotizacion.Destroy;
      end
      else
      begin
        Application.CreateForm(tRCotizacionElegante, RCotizacionElegante);
        RCotizacionElegante.QCotizacion.Parameters.ParamByName('numero').Value := QCotizacionCOT_NUMERO.Value;
        RCotizacionElegante.QCotizacion.Open;
        RCotizacionElegante.QDetalle.Open;
        RCotizacionElegante.PrinterSetup;
        RCotizacionElegante.Preview;
        RCotizacionElegante.Destroy;
      end;
    end;
  end
  else if dm.QParametrosPAR_FORMATOCOT.Value = 2 then
  begin
    Application.CreateForm(tRCotizacion, RCotizacion);
    RCotizacion.QCotizacion.Parameters.ParamByName('numero').Value := QCotizacionCOT_NUMERO.Value;
    RCotizacion.QCotizacion.Open;
    RCotizacion.QDetalle.Open;
    RCotizacion.lbReimpresion.Enabled := True;
    RCotizacion.Imprime := true;
    if Trim(dm.QParametrospar_imprime_logo.Value) = 'True' then
      RCotizacion.Imprime := false
    else if MessageDLG('DESEA IMPRIMIR EL ENCABEZADO?', mtConfirmation, [mbyes,mbno],0) = mrno then
    begin
      RCotizacion.Imprime := false;
      RCotizacion.lbEmp1.Enabled := False;
      RCotizacion.lbEmp2.Enabled := False;
      RCotizacion.lbEmp3.Enabled := False;
      RCotizacion.lbEmp4.Enabled := False;
      RCotizacion.lbEmp5.Enabled := False;
      RCotizacion.lbEmp6.Enabled := False;
      RCotizacion.lbEmp7.Enabled := False;
      RCotizacion.lbEmp8.Enabled := False;
      RCotizacion.lbEmp9.Enabled := False;
    end;
    RCotizacion.PrinterSetup;
    RCotizacion.Preview;
    RCotizacion.Destroy;
  end
  else
  begin
    Application.CreateForm(tRCotizacionElegante, RCotizacionElegante);
    RCotizacionElegante.QCotizacion.Parameters.ParamByName('numero').Value := QCotizacionCOT_NUMERO.Value;
    RCotizacionElegante.QCotizacion.Open;
    RCotizacionElegante.QDetalle.Open;
    RCotizacionElegante.PrinterSetup;
    RCotizacionElegante.lbReimpresion.Enabled := True;
    RCotizacionElegante.PrinterSetup;
    RCotizacionElegante.Preview;
    RCotizacionElegante.Destroy;
  end;
end;

procedure TfrmConsCotizaciones.BitBtn1Click(Sender: TObject);
begin
  application.CreateForm(tRepCotizaciones, RepCotizaciones);
  RepCotizaciones.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
  RepCotizaciones.lbCliente.Caption := tCliente.Text;
  RepCotizaciones.lbvendedor.Caption := tVendedor.Text;
  RepCotizaciones.lbusuario.Caption := tUsuario.Text;

  RepCotizaciones.QCotizacion.SQL := Memo1.Lines;

  if Trim(edVendedor.Text) <> '' then RepCotizaciones.QCotizacion.SQL.Add('and c.ven_codigo = '+edVendedor.Text);
  if Trim(edCliente.Text) <> ''  then RepCotizaciones.QCotizacion.SQL.Add('and c.cli_codigo = '+edCliente.Text);
  if Trim(edUsuario.Text) <> ''  then RepCotizaciones.QCotizacion.SQL.Add('and c.usu_codigo = '+edUsuario.Text);

  RepCotizaciones.QCotizacion.SQL.Add('and c.mon_codigo = :mon_codigo');
  RepCotizaciones.QCotizacion.SQL.Add('group by c.CLI_CODIGO, c.CLI_REFERENCIA, c.COT_DIRECCION,');
  RepCotizaciones.QCotizacion.SQL.Add('c.COT_FAX, c.COT_FECHA, c.COT_ITBIS, c.COT_LOCALIDAD,');
  RepCotizaciones.QCotizacion.SQL.Add('c.COT_NOMBRE, c.COT_NUMERO, c.COT_STATUS, c.COT_TELEFONO,');
  RepCotizaciones.QCotizacion.SQL.Add('c.COT_TOTAL, c.EMP_CODIGO, c.USU_CODIGO, c.VEN_CODIGO,');
  RepCotizaciones.QCotizacion.SQL.Add('c.SUC_CODIGO, c.COT_DESCUENTO, c.mon_codigo, c.cot_Tasa,');
  RepCotizaciones.QCotizacion.SQL.Add('c.cpa_codigo, c.cot_validez, c.cot_tiempo_entrega,');
  RepCotizaciones.QCotizacion.SQL.Add('c.cot_contacto, u.usu_nombre, v.ven_nombre, m.mon_sigla');
  RepCotizaciones.QCotizacion.SQL.Add('order by c.cot_fecha desc');

  RepCotizaciones.QMoneda.Parameters.ParamByName('fec1').DataType := ftDate;
  RepCotizaciones.QMoneda.Parameters.ParamByName('fec2').DataType := ftDate;
  RepCotizaciones.QMoneda.Parameters.ParamByName('fec1').Value := Fecha1.Date;
  RepCotizaciones.QMoneda.Parameters.ParamByName('fec2').Value := Fecha2.Date;
  RepCotizaciones.QMoneda.Open;

  RepCotizaciones.QCotizacion.Parameters.ParamByName('fec1').DataType := ftDate;
  RepCotizaciones.QCotizacion.Parameters.ParamByName('fec2').DataType := ftDate;
  RepCotizaciones.QCotizacion.Parameters.ParamByName('fec1').Value := Fecha1.Date;
  RepCotizaciones.QCotizacion.Parameters.ParamByName('fec2').Value := Fecha2.Date;
  RepCotizaciones.QCotizacion.Open;
  RepCotizaciones.PrinterSetup;
  RepCotizaciones.Preview;
  RepCotizaciones.Destroy;
end;

procedure TfrmConsCotizaciones.btmonedaClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C�digo');
  Search.Query.clear;
  Search.Query.add('select mon_nombre, mon_codigo');
  Search.Query.add('from moneda');
  Search.ResultField := 'mon_codigo';
  Search.Title := 'Moneda';
  if Search.execute then
  begin
    edUsuario.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select mon_nombre from moneda');
    dm.Query1.sql.add('where mon_codigo = :cod');
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edmoneda.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('USUARIO NO EXISTE',mterror,[mbok],0)
    else
      tmoneda.text := dm.Query1.fieldbyname('mon_nombre').asstring;
    edmoneda.setfocus;
    btRefreshClick(self);
  end;
end;

procedure TfrmConsCotizaciones.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(vk_return) then
     if activecontrol.classtype <> tdbgrid then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmConsCotizaciones.QCotizacionAfterOpen(DataSet: TDataSet);
begin
  if not QDetalle.Active then QDetalle.Open;
  if not QCotizacion.Active then qComentarios.Open;
end;

procedure TfrmConsCotizaciones.QDetalleCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis, vPrec, vDesc, vCant : Double;
  a : integer;
begin
  if QDetalleDET_CONITBIS.value = 'S' then
  begin
    NumItbis := RoundTo((QDetalleDET_ITBIS.asfloat/100)+1, -2);
    if dm.QParametrospar_itbisincluido.Value = 'True' then
    begin
      Venta    := QDetalleDET_PRECIO.value/NumItbis;
      QDetallePrecioItbis.value := RoundTo(Venta, -2);
      QDetalleCalcDesc.value    := RoundTo((Venta * QDetalleDET_DESCUENTO.value)/100, -4);
      if QDetalleDET_CONITBIS.value = 'S' then
        QDetalleCalcItbis.value   := RoundTo(((Venta - QDetalleCalcDesc.value) * QDetalleDET_ITBIS.value) / 100, -4)
      else
        QDetalleCalcItbis.value   := 0;

      QDetalleValor.value     := (QDetallePrecioItbis.value - QDetalleCalcDesc.value + QDetalleCalcItbis.value) * QDetalleDET_CANTIDAD.value;
      QDetalleCalcItbis.value := RoundTo(QDetalleCalcItbis.value * QDetalleDET_CANTIDAD.value, -2);
    end
    else
    begin
      Venta := QDetalleDET_PRECIO.value;
      QDetallePrecioItbis.value := Venta;
      QDetalleCalcDesc.value    := RoundTo((Venta * QDetalleDET_DESCUENTO.value)/100, -4);
      if QDetalleDET_CONITBIS.value = 'S' then
        QDetalleCalcItbis.value := RoundTo(((Venta - QDetalleCalcDesc.value)* QDetalleDET_ITBIS.value) / 100, -4)
      else
        QDetalleCalcItbis.value := 0;

      QDetalleValor.value     := (QDetallePrecioItbis.value - QDetalleCalcDesc.value + QDetalleCalcItbis.value) * QDetalleDET_CANTIDAD.value;
      QDetalleCalcItbis.value := RoundTo(QDetalleCalcItbis.value * QDetalleDET_CANTIDAD.value, -2);
    end;
  end
  else
  begin
    Venta := QDetalleDET_PRECIO.value;
    QDetalleCalcDesc.value    := (Venta * QDetalleDET_DESCUENTO.value)/100;
    QDetallePrecioItbis.value := Venta;
    QDetalleCalcItbis.value   := 0;
    QDetalleValor.value       := (Venta-QDetalleCalcDesc.value)*QDetalleDET_CANTIDAD.value;
  end;
  QDetallePrecioTasa.Value := QDetalleDET_PRECIO.Value * QCotizacioncot_Tasa.Value;
end;

end.
