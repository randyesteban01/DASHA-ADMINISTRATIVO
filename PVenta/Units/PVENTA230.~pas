unit PVENTA230;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, DB, DateUtils, 
  IBCustomDataSet, IBQuery, ComCtrls, 
  ADODB, QuerySearchDlgADO, DBCtrls, Menus, Math;

type
  TfrmConsFTEnvios = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    edCliente: TEdit;
    SpeedButton2: TSpeedButton;
    tCliente: TEdit;
    Label12: TLabel;
    btOrigen: TSpeedButton;
    tOrigen: TEdit;
    edOrigen: TEdit;
    Label4: TLabel;
    edNombreEnvia: TEdit;
    cbStatus: TRadioGroup;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    btRefresh: TBitBtn;
    lbCantidad: TLabel;
    DBGrid1: TDBGrid;
    QEnvios: TADOQuery;
    QDetalle: TADOQuery;
    Label5: TLabel;
    cbOrden: TComboBox;
    dsEnvios: TDataSource;
    dsDetalle: TDataSource;
    btClose: TBitBtn;
    Label6: TLabel;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    Memo1: TMemo;
    Search: TQrySearchDlgADO;
    Label9: TLabel;
    edFac1: TEdit;
    edFac2: TEdit;
    ckrango: TCheckBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label8: TLabel;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    PopupMenu1: TPopupMenu;
    QClientes: TADOQuery;
    QClientesCLI_TELEFONO: TStringField;
    QClientesCLI_FAX: TStringField;
    QClientesCLI_WEB: TStringField;
    QClientesCLI_EMAIL: TStringField;
    QClientesTCL_CODIGO: TIntegerField;
    QClientesCLI_DESCUENTO: TBCDField;
    QClientesCLI_PRECIO: TStringField;
    QClientesCLI_STATUS: TStringField;
    QClientesFPA_CODIGO: TIntegerField;
    QClientesCPA_CODIGO: TIntegerField;
    QClientesCLI_CUENTA: TStringField;
    QClientesCLI_BALANCE: TBCDField;
    QClientesEMP_CODIGO: TIntegerField;
    QClientesCLI_CODIGO: TIntegerField;
    QClientesCLI_REFERENCIA: TStringField;
    QClientesCLI_NOMBRE: TStringField;
    QClientesCLI_RNC: TStringField;
    QClientesCLI_CEDULA: TStringField;
    QClientesCLI_DIRECCION: TStringField;
    QClientesCLI_LOCALIDAD: TStringField;
    QClientesCLI_LIMITE: TBCDField;
    QClientesVEN_CODIGO: TIntegerField;
    QClientesCLI_FACTURARBCE: TStringField;
    QClientesCLI_FACTURARVENCIDA: TStringField;
    QClientesCLI_INSTNOMBRE: TStringField;
    QClientesCLI_INSTTEL: TStringField;
    QClientesCLI_PERNOMBRE1: TStringField;
    QClientesCLI_PERNOMBRE2: TStringField;
    QClientesCLI_PERPARENT1: TStringField;
    QClientesCLI_PERPARENT2: TStringField;
    QClientesCLI_PERTEL1: TStringField;
    QClientesCLI_PERTEL2: TStringField;
    QClientesCLI_REFNOMBRE1: TStringField;
    QClientesCLI_REFNOMBRE2: TStringField;
    QClientesCLI_REFTEL1: TStringField;
    QClientesCLI_REFTEL2: TStringField;
    QClientesCLI_FECHA: TDateTimeField;
    QClientesCLI_FECHANAC: TDateTimeField;
    QClientesCLI_CONTACTO: TStringField;
    QClientesCLI_TELEFONO2: TStringField;
    QClientesSUC_CODIGO: TIntegerField;
    QClientesPRO_CODIGO: TIntegerField;
    QClientescli_factura_debajo_costo: TStringField;
    QClientescli_factura_debajo_minimo: TStringField;
    QClientesusu_codigo: TIntegerField;
    QClientescli_comentario: TMemoField;
    QClientesemp_numero: TIntegerField;
    BitBtn1: TBitBtn;
    Query1: TADOQuery;
    ProgressBar1: TProgressBar;
    QEnviosemp_codigo: TIntegerField;
    QEnviossuc_codigo: TIntegerField;
    QEnviosfac_numero: TIntegerField;
    QEnviospro_codigo: TIntegerField;
    QEnviosIDEnvio: TIntegerField;
    QEnviosFecha: TDateTimeField;
    QEnviosCiudad_Origen: TStringField;
    QEnviosCiudad_Destino: TStringField;
    QEnviosNombre_envia: TStringField;
    QEnviosTelefono_Envia: TStringField;
    QEnviosNombre_Recibe: TStringField;
    QEnviosTelefono_Recibe: TStringField;
    QEnviosDescripcion: TStringField;
    Label1: TLabel;
    edNombreRecibe: TEdit;
    QEnviosstatus: TStringField;
    QDetalleemp_codigo: TIntegerField;
    QDetallesuc_codigo: TIntegerField;
    QDetallefac_numero: TIntegerField;
    QDetallepro_codigo: TIntegerField;
    QDetalleIDEnvio: TIntegerField;
    QDetalleFecha: TDateTimeField;
    QDetalleCiudad_Origen: TStringField;
    QDetalleCiudad_Destino: TStringField;
    QDetalleNombre_envia: TStringField;
    QDetalleTelefono_Envia: TStringField;
    QDetalleNombre_Recibe: TStringField;
    QDetalleTelefono_Recibe: TStringField;
    QDetalleDescripcion: TStringField;
    QDetalleenv_suc_destino: TIntegerField;
    QDetalleenv_status: TStringField;
    QDetalleenv_recibido: TStringField;
    QDetalleenv_rec_cedula: TStringField;
    QDetalleenv_rec_fecha: TDateTimeField;
    Entregadeenvio1: TMenuItem;
    QEnviosTFA_CODIGO: TIntegerField;
    QEnviosCAJ_CODIGO: TIntegerField;
    QEnviosFAC_MENSAJE1: TStringField;
    QEnviosFAC_MENSAJE2: TStringField;
    QEnviosFAC_MENSAJE3: TStringField;
    QEnviosenv_recibido: TStringField;
    QEnviosenv_rec_cedula: TStringField;
    QSucursalsuc_direccion: TStringField;
    QSucursalsuc_localidad: TStringField;
    QSucursalsuc_telefono: TStringField;
    QSucursalsuc_rnc: TStringField;
    QEnviosOrigen: TStringField;
    QEnviosDestino: TStringField;
    DespachodeEnvio1: TMenuItem;
    RecepciondeEnvios1: TMenuItem;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    rg: TRadioGroup;
    QEnviosFICHA: TStringField;
    QEnviosCHOFER: TStringField;
    Label3: TLabel;
    EdtCodigoBarra: TEdit;
    QEnviosfacpagodestino: TBooleanField;
    mniPagarEnvio1: TMenuItem;
    QEnviosmonto: TCurrencyField;
    QEnviosenv_suc_destino: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure btOrigenClick(Sender: TObject);
    procedure edOrigenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure edOrigenChange(Sender: TObject);
    procedure edClienteChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DespachodeEnvio1Click(Sender: TObject);
    procedure RecepciondeEnvios1Click(Sender: TObject);
    procedure rgClick(Sender: TObject);
    procedure EdtCodigoBarraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dsEnviosDataChange(Sender: TObject; Field: TField);
    procedure mniPagarEnvio1Click(Sender: TObject);
  private
  vl_factura, vl_envio : Integer;
  public
    chofer, ficha:String;
    procedure Imp40Columnas;
  end;

var
  frmConsFTEnvios: TfrmConsFTEnvios;

implementation

uses SIGMA01, SIGMA00, PVENTA231, RENVIO01, RLISTADOENVIO01, PENVIO02,
  StdConvs, PVENTA246;

{$R *.dfm}

procedure TfrmConsFTEnvios.FormCreate(Sender: TObject);
begin
//  Ejecuto := False;
  Fecha1.date := date; //StartOfTheMonth(date);
  Fecha2.date := date;

  Memo1.Clear;
  Memo1.Lines.Add(QEnvios.SQL.GetText);
  cbOrden.itemindex := 0;
end;

procedure TfrmConsFTEnvios.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmConsFTEnvios.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  vemp : string;
begin
  if key = vk_f10 then close;
end;

procedure TfrmConsFTEnvios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConsFTEnvios.FormActivate(Sender: TObject);
begin
//  if not QFacturas.active then QFacturas.open;
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
  frmMain.ExportXLS.Sheets[0].DBGrid := DBGrid1;
  frmMain.ExportXLS.Sheets[1].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[0].Exported := True;

  btRefreshClick(Sender);

    //Verificar si el usuario tiene sucursal por defecto
  if not VarIsNull(dm.suc_default) and (dm.suc_default > 0) then
  begin
    DBLookupComboBox2.KeyValue := dm.suc_default;
  end;

end;

procedure TfrmConsFTEnvios.btRefreshClick(Sender: TObject);
begin
  Screen.cursor := crSQLWait;
  QEnvios.close;
  QEnvios.sql.clear;
  QEnvios.sql := Memo1.Lines;
  if EdtCodigoBarra.Text = '' then begin
  if (trim(edFac1.Text) <> '') and (trim(edFac2.Text) <> '') then
     QEnvios.sql.add('and e.fac_numero between '+edFac1.Text+' and '+edFac2.Text);

 { if trim(edOrigen.text) <> '' then
    QEnvios.sql.add('and e.suc_codigo = '+trim(edOrigen.text));
  }

  if trim(edCliente.text) <> '' then
    if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
       QEnvios.sql.add('and f.cli_codigo = '+trim(edCliente.text))
    else
       QEnvios.sql.add('and f.cli_referencia = '+QuotedStr(trim(edCliente.text)));

  if trim(edNombreEnvia.text) <> '' then
    QEnvios.sql.add('and nombre_envia like '+QuotedStr('%'+trim(edNombreEnvia.text)+'%'));

  if trim(edNombreRecibe.text) <> '' then
    QEnvios.sql.add('and nombre_recibe like '+QuotedStr('%'+trim(edNombreRecibe.text)+'%'));
                            

  if cbStatus.ItemIndex = 1 then
     QEnvios.sql.add('and env_status = '+#39+'PE'+#39)
  else if cbStatus.ItemIndex = 2 then
     QEnvios.sql.add('and env_status = '+#39+'PR'+#39)
  else if cbStatus.ItemIndex = 3 then
     QEnvios.sql.add('and env_status = '+#39+'R'+#39)
  else if cbStatus.ItemIndex = 4 then
     QEnvios.sql.add('and env_status = '+#39+'E'+#39);

  
  case rg.ItemIndex of
  1:begin
  if tOrigen.Text <> '' then
  QEnvios.SQL.Add('and e.suc_codigo = '+edOrigen.Text);
  if DBLookupComboBox2.KeyValue > 0 then
  QEnvios.SQL.Add('and e.env_suc_destino = '+IntToStr(DBLookupComboBox2.KeyValue));
  QEnvios.SQL.Add('and e.env_status = '+QuotedStr('PR'));
  end;

  2:begin
  if tOrigen.Text <> '' then
  QEnvios.SQL.Add('and e.env_suc_destino = '+edOrigen.Text);
  if DBLookupComboBox2.KeyValue > 0 then
  QEnvios.SQL.Add('and e.suc_codigo = '+IntToStr(DBLookupComboBox2.KeyValue));
  QEnvios.SQL.Add('and e.env_status = '+QuotedStr('PE'));
  end;
  end;

  if ckrango.Checked then
  begin
    QEnvios.SQL.Add('and fecha between convert(datetime,:fecha1,105) and convert(datetime,:fecha2,105)');
    QEnvios.Parameters.parambyname('fecha1').DataType := ftDate;
    QEnvios.Parameters.parambyname('fecha2').DataType := ftDate;
    QEnvios.Parameters.parambyname('fecha1').Value := fecha1.date;
    QEnvios.Parameters.parambyname('fecha2').Value := fecha2.date;
  end;
  end
  ELSE
  BEGIN
  QEnvios.SQL.Add('and e.fac_numero = '+QuotedStr(IntToStr(vl_factura)));
  QEnvios.SQL.Add('and e.IDEnvio = '+QuotedStr(IntToStr(vl_envio)));
  QEnvios.SQL.Add('and e.env_status ='+QuotedStr('R'));
  end;


  

  case cbOrden.ItemIndex of
   0 : QEnvios.sql.add('order by idEnvio desc, fecha desc, e.fac_numero');
   1 : QEnvios.sql.add('order by e.fac_numero desc, fecha desc, idEnvio');
   2 : QEnvios.sql.add('order by fecha desc, idEnvio, e.fac_numero');
   end;
  //QEnvios.Parameters.parambyname('suc_destino').Value := DBLookupComboBox2.KeyValue;
  QEnvios.Parameters.parambyname('emp').Value := dm.vp_cia;
  QEnvios.open;

  lbCantidad.caption := inttostr(QEnvios.recordcount)+' Envio(s)';
  DBGrid1.setfocus;
  Screen.cursor := crDefault;

  
  
end;

procedure TfrmConsFTEnvios.btOrigenClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Código');
  search.AliasFields.add('Nombre');
  Search.Query.clear;
  Search.Query.add('select suc_codigo, suc_nombre');
  Search.Query.add('from sucursales');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.Query.add('  and suc_codigo <>'+inttostr(DBLookupComboBox2.KeyValue));
  Search.ResultField := 'suc_codigo';
  Search.Title := 'Listado de Sucursales de Origen';
  if Search.execute then
  begin
    edOrigen.text := Search.ValueField;
    edOrigen.SetFocus;
    if Search.ValueField <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select suc_nombre from sucursales');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and suc_codigo = :suc');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('suc').Value := strtoint(trim(Search.ValueField));
      dm.Query1.open;
      tOrigen.text := dm.Query1.fieldbyname('suc_nombre').asstring;
    end;
    btRefreshClick(self);
  end;
end;

procedure TfrmConsFTEnvios.edOrigenKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edOrigen.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select suc_nombre from sucursales');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and suc_codigo = :suc');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('suc').Value := strtoint(trim(edOrigen.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('SUCURSAL NO EXISTE',mterror,[mbok],0);
        edOrigen.SetFocus;
      end
      else
        tOrigen.text := dm.Query1.fieldbyname('suc_nombre').asstring;
      btRefreshClick(Self);
    end;
  end;
end;


procedure TfrmConsFTEnvios.edClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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

procedure TfrmConsFTEnvios.SpeedButton2Click(Sender: TObject);
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

procedure TfrmConsFTEnvios.edOrigenChange(Sender: TObject);
begin
  if trim(edOrigen.text) = '' then tOrigen.text := '';
end;

procedure TfrmConsFTEnvios.edClienteChange(Sender: TObject);
begin
  if trim(edCliente.text) = '' then tCliente.text := '';
end;

procedure TfrmConsFTEnvios.BitBtn2Click(Sender: TObject);
begin
  Application.CreateForm(tRListadoEnvio, RListadoEnvio);
  RListadoEnvio.lbCant.Caption := IntToStr(QEnvios.RecordCount);

         RListadoEnvio.QEnvios.Close;
         RListadoEnvio.QEnvios.SQL.Clear;
         RListadoEnvio.QEnvios.sql.Add('select');
         RListadoEnvio.QEnvios.sql.Add('CASE WHEN E.ENV_STATUS = ''PE'' THEN ''POR ENVIAR''');
         RListadoEnvio.QEnvios.sql.Add('     WHEN E.ENV_STATUS = ''PR'' THEN ''POR RECIBIR''');
         RListadoEnvio.QEnvios.sql.Add('     WHEN E.ENV_STATUS = ''R'' THEN ''RECIBIDO''');
         RListadoEnvio.QEnvios.sql.Add('     WHEN E.ENV_STATUS = ''E'' THEN ''ENTREGADO''');
         RListadoEnvio.QEnvios.sql.Add('end status,');
         RListadoEnvio.QEnvios.sql.Add('(select suc_nombre from sucursales where suc_codigo=e.suc_codigo and emp_codigo=e.emp_codigo)Origen,');
         RListadoEnvio.QEnvios.sql.Add('(select suc_nombre from sucursales where suc_codigo=e.env_suc_destino and emp_codigo=e.emp_codigo)Destino,');
         RListadoEnvio.QEnvios.sql.Add('e.emp_codigo,e.suc_codigo,e.fac_numero,e.pro_codigo,IDEnvio,Fecha,Ciudad_Origen,Ciudad_Destino,Nombre_envia,');
         RListadoEnvio.QEnvios.sql.Add('Telefono_Envia,Nombre_Recibe,Telefono_Recibe,Descripcion,f.TFA_CODIGO,f.CAJ_CODIGO,FAC_MENSAJE1,FAC_MENSAJE2,FAC_MENSAJE3,');
         RListadoEnvio.QEnvios.sql.Add('env_recibido, env_rec_cedula,');
         RListadoEnvio.QEnvios.sql.Add('(select ficha_nombre from Fichas_Transp where ficha_id = e.ficha_id)FICHA,');
         RListadoEnvio.QEnvios.sql.Add('e.nombrechofer CHOFER');
         RListadoEnvio.QEnvios.sql.Add('from Envio e');
         RListadoEnvio.QEnvios.sql.Add('join det_factura df on e.pro_codigo=df.pro_codigo and e.fac_numero= df.fac_numero and e.emp_codigo=df.emp_codigo and e.suc_codigo=df.suc_codigo');
         RListadoEnvio.QEnvios.sql.Add('join facturas f on df.fac_numero= f.fac_numero and df.emp_codigo=f.emp_codigo and df.suc_codigo=f.suc_codigo and df.tfa_codigo=f.tfa_codigo');
         RListadoEnvio.QEnvios.sql.Add('where e.emp_codigo = :emp');
         RListadoEnvio.QEnvios.sql.Add('and e.fecha between :fec1 and :fec2');


  if cbStatus.ItemIndex in [1] then begin
  RListadoEnvio.lbSucOrigen.Enabled := False;
  RListadoEnvio.QRLabel16.Enabled := False;
  RListadoEnvio.QRLabel6.Enabled := False;
  RListadoEnvio.QRLabel14.Enabled := False;
  RListadoEnvio.QRLabel15.Enabled := False;
  RListadoEnvio.QRLFicha.Enabled := False;
  RListadoEnvio.QRLNombreChofer.Enabled := False;
  RListadoEnvio.QEnvios.SQL.Add('and e.env_status = '+QuotedStr('PR'));
  end;


  if cbStatus.ItemIndex = 2 then begin
  RListadoEnvio.QRLabel7.Caption    := 'Suc. Origen';
  RListadoEnvio.lbSuc.Caption       := DBLookupComboBox2.Text;
  RListadoEnvio.lbSucOrigen.Enabled := True;
  RListadoEnvio.QRLabel16.Enabled   := True;
  RListadoEnvio.QRLabel6.Enabled    := True;
  if QEnviosDestino.Text <> '' then begin
  RListadoEnvio.lbSucOrigen.Enabled := True;
  RListadoEnvio.QRLabel6.Caption    := 'Suc. Destino';
  RListadoEnvio.lbSucOrigen.Caption := QEnviosDestino.Text;
  RListadoEnvio.QRLabel14.Enabled := True;
  RListadoEnvio.QRLabel15.Enabled := True;
  RListadoEnvio.QRLFicha.Enabled := True;
  RListadoEnvio.QRLFicha.Caption := QEnviosFICHA.Text;
  RListadoEnvio.QRLNombreChofer.Caption := QEnviosCHOFER.Text;
  RListadoEnvio.QEnvios.SQL.Add('and e.env_status = '+QuotedStr('PE'));
  end;
  end;
  if cbStatus.ItemIndex = 3 then begin
  RListadoEnvio.lbSucOrigen.Enabled := False;
  RListadoEnvio.QRLabel16.Enabled := False;
  RListadoEnvio.QRLabel6.Enabled := False;
  RListadoEnvio.QRLabel14.Enabled := False;
  RListadoEnvio.QRLabel15.Enabled := False;
  RListadoEnvio.QRLFicha.Enabled := False;
  RListadoEnvio.QRLNombreChofer.Enabled := False;
  RListadoEnvio.QEnvios.SQL.Add('and e.env_status = '+QuotedStr('R'));
  end;
  if cbStatus.ItemIndex = 4 then begin
  RListadoEnvio.lbSucOrigen.Enabled := False;
  RListadoEnvio.QRLabel16.Enabled := False;
  RListadoEnvio.QRLabel6.Enabled := False;
  RListadoEnvio.QRLabel14.Enabled := False;
  RListadoEnvio.QRLabel15.Enabled := False;
  RListadoEnvio.QRLFicha.Enabled := False;
  RListadoEnvio.QRLNombreChofer.Enabled := False;
  RListadoEnvio.QEnvios.SQL.Add('and e.env_status = '+QuotedStr('E'));
  end;
         if edOrigen.Text <> '' then
         RListadoEnvio.QEnvios.SQL.Add('and e.env_suc_destino = '+edOrigen.Text);
         RListadoEnvio.QEnvios.SQL.Add('and e.suc_codigo = '+IntToStr(DBLookupComboBox2.KeyValue));
         case cbOrden.ItemIndex of
         0 : RListadoEnvio.QEnvios.sql.add('order by idEnvio desc, fecha desc, e.fac_numero');
         1 : RListadoEnvio.QEnvios.sql.add('order by e.fac_numero desc, fecha desc, idEnvio');
         2 : RListadoEnvio.QEnvios.sql.add('order by fecha desc, idEnvio, e.fac_numero');
         end;
         RListadoEnvio.QEnvios.Parameters.parambyname('emp').Value := dm.vp_cia;
         RListadoEnvio.QEnvios.Parameters.ParamByName('fec1').DataType := ftDateTime;
         RListadoEnvio.QEnvios.Parameters.ParamByName('fec2').DataType := ftDateTime;
         RListadoEnvio.QEnvios.Parameters.ParamByName('fec1').Value := Fecha1.DateTime;
         RListadoEnvio.QEnvios.Parameters.ParamByName('fec2').Value := Fecha2.DateTime;
         RListadoEnvio.QEnvios.open;

  if cbStatus.ItemIndex in [1,3,4] then begin
  RListadoEnvio.QRLabel7.Caption    := 'Suc. Destino';
  RListadoEnvio.lbSuc.Caption       := RListadoEnvio.QEnviosDestino.Text;
  end;

  RListadoEnvio.lbEmp.Caption       := dm.NombreEmp;
  RListadoEnvio.lbLocalidad.Caption := QSucursalsuc_localidad.AsString;
  RListadoEnvio.lbTelefono.Caption  := QSucursalsuc_telefono.AsString;
  RListadoEnvio.lbRnc.Caption       := QSucursalsuc_rnc.AsString;
  RListadoEnvio.PrinterSetup;
  RListadoEnvio.Preview;
  RListadoEnvio.Destroy;
end;

procedure TfrmConsFTEnvios.FormPaint(Sender: TObject);
begin
  with frmConsFTEnvios do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmConsFTEnvios.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     if activecontrol.classtype <> tdbgrid then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmConsFTEnvios.BitBtn1Click(Sender: TObject);
begin
if (QEnviosstatus.Value = 'RECIBIDO') AND (QEnviosfacpagodestino.Value = False) THEN BEGIN
  if (QEnviosenv_recibido.Value = EmptyStr)or(QEnviosenv_rec_cedula.Value = EmptyStr)then
      DBGrid1DblClick(self)
  else
    if MessageDlg('Desea imprimir en impresora grande?',mtConfirmation,[mbyes,mbno],0) = mryes then
       begin
        application.createform(tRENVIO, RENVIO);
        RENVIO.QEnvios.close;
        RENVIO.QEnvios.Parameters.ParamByName('emp_codigo').Value   := QEnviosemp_codigo.value;
        RENVIO.QEnvios.Parameters.ParamByName('suc_codigo').Value   := QEnviossuc_codigo.Value;
        RENVIO.QEnvios.Parameters.ParamByName('fac_numero').Value   := QEnviosfac_numero.Value;
        RENVIO.QEnvios.open;
        RENVIO.PrinterSetup;
        RENVIO.Preview;
        RENVIO.Destroy;
      end
      else
        Imp40Columnas ;
        end;

end;

procedure TfrmConsFTEnvios.Imp40Columnas;
var
  arch, puertopeq : textfile;
  s, s1, s2, s3, s4, s5 : array [0..50] of char;
  Tfac, Saldo : double;
  puerto, lbitbis, impcodigo, pro_codigo, Unidad : string;
  a : integer;
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

  AssignFile(arch, 'imp.bat');
  rewrite(arch);
  writeln(arch, 'type t.txt > '+puerto);
  closefile(arch);
          
  AssignFile(arch, 't.txt');
  rewrite(arch);
{  writeln(arch, dm.centro(dm.QEmpresasemp_nombre.Value));
  writeln(arch, dm.centro(dm.QEmpresasemp_direccion.Value));
  writeln(arch, dm.centro(dm.QEmpresasEMP_LOCALIDAD.Value));
  writeln(arch, dm.centro(dm.QEmpresasEMP_TELEFONO.Value));
  writeln(arch, dm.centro('RNC:'+dm.QEmpresasEMP_RNC.Value));
}
  writeln(arch, dm.centro(QSucursalsuc_nombre.Value));
  writeln(arch, dm.centro(QSucursalsuc_direccion.Value));
  writeln(arch, dm.centro(QSucursalsuc_localidad.Value));
  writeln(arch, dm.centro(QSucursalsuc_telefono.Value));
  writeln(arch, dm.centro('RNC:'+QSucursalsuc_rnc.Value));
  writeln(arch, ' ');

  writeln(arch, dm.centro('*** E N T R E G A   D E   E N V I O ***'));
  writeln(arch, ' ');
  writeln(arch, 'Fecha .: '+DateToStr(QEnviosFecha.Value)+' Envio: '+formatfloat('0000000000',QEnviosfac_numero.value));
  writeln(arch, 'Caja ..: '+'001'+'        Hora ..: '+timetostr(time));

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select Ciudad_Origen, Ciudad_Destino, Nombre_envia,');
  dm.Query1.SQL.Add('Telefono_Envia, Nombre_Recibe, Telefono_Recibe, Descripcion');
  dm.Query1.SQL.Add('from envio where emp_codigo = :emp and suc_codigo = :suc');
  dm.Query1.SQL.Add('and fac_numero = :fac');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('suc').Value := QEnviossuc_codigo.Value;
  dm.Query1.Parameters.ParamByName('fac').Value := QEnviosfac_numero.Value;
  dm.Query1.Open;
  if dm.Query1.RecordCount > 0 then
  begin
    writeln(arch, ' ');
    writeln(arch, 'DATOS DEL ENVIO');
    writeln(arch, ' ');
    writeln(arch, 'Envia : '+dm.Query1.FieldByNAme('Telefono_Envia').AsString);
    writeln(arch, '        '+dm.Query1.FieldByNAme('Nombre_envia').AsString);
    writeln(arch, '        '+dm.Query1.FieldByNAme('Ciudad_Origen').AsString);
    writeln(arch, '');
    writeln(arch, 'Recibe: '+dm.Query1.FieldByNAme('Telefono_Recibe').AsString);
    writeln(arch, '        '+dm.Query1.FieldByNAme('Nombre_Recibe').AsString);
    writeln(arch, '        '+dm.Query1.FieldByNAme('Ciudad_Destino').AsString);
 //   writeln(arch, '');
    writeln(arch, '');
    writeln(arch, 'Descripcion: '+dm.Query1.FieldByNAme('Descripcion').AsString);
  end;

  writeln(arch, '');
  writeln(arch, '');
  writeln(arch, '');
  s2 := '';
  FillChar(s2, length(trim(QEnviosenv_recibido.AsString+' '+QEnviosenv_rec_cedula.AsString)),'-');
  writeln(arch, dm.Centro(QEnviosenv_recibido.AsString+' '+QEnviosenv_rec_cedula.AsString));
  writeln(arch, dm.Centro(s2));
  writeln(arch, dm.Centro('Recibido por '));
  writeln(arch, '');
  writeln(arch, '');
  writeln(arch, '');
  s2 := '';
  FillChar(s2, 8+length(trim(dm.NomUsu)),'-');
  writeln(arch, dm.Centro(dm.NomUsu));
  writeln(arch, dm.Centro(s2));
  writeln(arch, dm.Centro('Entregado por '));
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  CloseFile(arch);
  winexec('imp.bat',0);
end;

procedure TfrmConsFTEnvios.DBGrid1DblClick(Sender: TObject);
begin
if (QEnviosstatus.Value = 'RECIBIDO') AND (QEnviosfacpagodestino.Value = False) THEN BEGIN
  application.createform(TfrmEnvioMant, frmEnvioMant);
  if not QDetalle.Active then
     QDetalle.Active := true;
  frmEnvioMant.pTop.Caption :='[' +QEnviosIDEnvio.AsString+'] Envia : '+QEnviosNombre_envia.AsString+' ==> '+QEnviosNombre_Recibe.AsString;
  If frmEnvioMant.showmodal= mrAll then
      if (QDetalle.State in [dsEdit,dsInsert])and(QDetalleenv_recibido.Value<>EmptyStr)and(QDetalleenv_rec_cedula.Value<>EmptyStr) then
         begin
           QDetalleenv_status.Value := 'E';
           QDetalleenv_rec_fecha.Value := now;
           QDetalle.Post;
          // btRefreshClick(self);

             if MessageDlg('Desea imprimir en impresora grande?',mtConfirmation,[mbyes,mbno],0) = mryes then
             begin
              application.createform(tRENVIO, RENVIO);
              RENVIO.QEnvios.close;
              RENVIO.QEnvios.Parameters.ParamByName('emp_codigo').Value   := QEnviosemp_codigo.value;
              RENVIO.QEnvios.Parameters.ParamByName('suc_codigo').Value   := QEnviossuc_codigo.Value;
              RENVIO.QEnvios.Parameters.ParamByName('fac_numero').Value   := QEnviosfac_numero.Value;
              RENVIO.QEnvios.open;
              RENVIO.PrinterSetup;
              RENVIO.Preview;
              RENVIO.Destroy;
            end
            else
              Imp40Columnas ;
              


         end
      else MessageDlg('DEBE INGRESAR NOMBRE Y CEDULA DE QUIEN RECIBE EL ENVIO',
        mtError,[mbok],0);
  frmEnvioMant.Release;
end;
end;

procedure TfrmConsFTEnvios.DespachodeEnvio1Click(Sender: TObject);
begin
  IF tOrigen.Text = '' THEN BEGIN
  ShowMessage('Debes indicar la Sucursal Destino...');
  Exit;
  end;
  IF tOrigen.Text <> '' THEN BEGIN
  application.createform(tfrmEnvioM2, frmEnvioM2);
  frmEnvioM2.Label4.Visible :=  True;
  frmEnvioM2.Label5.Visible :=  True;
  frmEnvioM2.cbbFicha.Visible :=  True;
  frmEnvioM2.EdtNombreChofer.Visible :=  True;
  with frmEnvioM2 do
    begin
      if Sender is TButton then
      begin
        rg.ItemIndex := 2;
        Caption := TButton(Sender).Caption;
      end;

      //rg.ItemIndex := 2;
      //Caption := TButton(Sender).Caption;
      QEn.close;
      QEn.SQL.Clear;
      QEn.SQL.Add('select (select suc_nombre from sucursales where suc_codigo=Envio.env_suc_destino and emp_codigo=Envio.emp_codigo)Destino,');
      QEn.SQL.Add('seleccion,env_status,fac_numero,IDEnvio,Fecha,Ciudad_Destino,Nombre_envia,');
      QEn.SQL.Add('Telefono_Envia,Nombre_Recibe,Telefono_Recibe,Ficha_id, NombreChofer, SUC_CODIGO,');
      QEn.SQL.Add('Descripcion, Descripcion2');
      QEn.SQL.Add('from Envio');
      QEn.SQL.Add('where emp_codigo = '+IntToStr(DM.vp_cia));
      QEn.SQL.Add('and env_suc_destino = '+edOrigen.Text);
      QEn.SQL.Add('and ISNULL(env_status,'+QuotedStr('PE')+') ='+QuotedStr('PE'));
      if ckrango.Checked then
      begin
      QEn.SQL.Add('and fecha between convert(datetime,:fecha1,105) and convert(datetime,:fecha2,105)');
      QEn.Parameters.parambyname('fecha1').DataType := ftDate;
      QEn.Parameters.parambyname('fecha2').DataType := ftDate;
      QEn.Parameters.parambyname('fecha1').Value := fecha1.date;
      QEn.Parameters.parambyname('fecha2').Value := fecha2.date;
      end;
      QEn.SQL.Add('order by fac_numero desc');
      QEn.open;
      DBGrid1.Columns[4].FieldName := 'Destino';
      DBGrid1.Columns[4].Title.Caption := 'Terminal de Destino';
  end;
  If frmEnvioM2.showmodal= mrOk then begin
        //Imprimir Despacho de envios
         Application.CreateForm(tRListadoEnvio, RListadoEnvio);
         RListadoEnvio.QEnvios.Close;
         RListadoEnvio.QEnvios.SQL.Clear;
         RListadoEnvio.QEnvios.sql.Add('select');
         RListadoEnvio.QEnvios.sql.Add('CASE WHEN E.ENV_STATUS = ''PE'' THEN ''POR ENVIAR''');
         RListadoEnvio.QEnvios.sql.Add('     WHEN E.ENV_STATUS = ''PR'' THEN ''POR RECIBIR''');
         RListadoEnvio.QEnvios.sql.Add('     WHEN E.ENV_STATUS = ''R'' THEN ''RECIBIDO''');
         RListadoEnvio.QEnvios.sql.Add('     WHEN E.ENV_STATUS = ''E'' THEN ''ENTREGADO''');
         RListadoEnvio.QEnvios.sql.Add('end status,');
         RListadoEnvio.QEnvios.sql.Add('(select suc_nombre from sucursales where suc_codigo=e.suc_codigo and emp_codigo=e.emp_codigo)Origen,');
         RListadoEnvio.QEnvios.sql.Add('(select suc_nombre from sucursales where suc_codigo=e.env_suc_destino and emp_codigo=e.emp_codigo)Destino,');
         RListadoEnvio.QEnvios.sql.Add('e.emp_codigo,e.suc_codigo,e.fac_numero,e.pro_codigo,IDEnvio,Fecha,Ciudad_Origen,Ciudad_Destino,Nombre_envia,');
         RListadoEnvio.QEnvios.sql.Add('Telefono_Envia,Nombre_Recibe,Telefono_Recibe,f.TFA_CODIGO,f.CAJ_CODIGO,FAC_MENSAJE1,FAC_MENSAJE2,FAC_MENSAJE3,');
         RListadoEnvio.QEnvios.sql.Add('env_recibido, env_rec_cedula,');
         RListadoEnvio.QEnvios.sql.Add('(select ficha_nombre from Fichas_Transp where ficha_id = e.ficha_id)FICHA,');
         RListadoEnvio.QEnvios.sql.Add('e.nombrechofer CHOFER,');
         RListadoEnvio.QEnvios.SQL.Add('upper(e.Descripcion) Descripcion, upper(e.Descripcion2) Descripcion2');
         RListadoEnvio.QEnvios.sql.Add('from Envio e');
         RListadoEnvio.QEnvios.sql.Add('join det_factura df on e.pro_codigo=df.pro_codigo and e.fac_numero= df.fac_numero and e.emp_codigo=df.emp_codigo and e.suc_codigo=df.suc_codigo');
         RListadoEnvio.QEnvios.sql.Add('join facturas f on df.fac_numero= f.fac_numero and df.emp_codigo=f.emp_codigo and df.suc_codigo=f.suc_codigo and df.tfa_codigo=f.tfa_codigo');
         RListadoEnvio.QEnvios.sql.Add('where e.emp_codigo = :emp and e.SELECCION = 1');
         RListadoEnvio.QEnvios.SQL.Add('and e.env_status = '+QuotedStr('PR'));
         RListadoEnvio.QEnvios.SQL.Add('and e.env_suc_destino = '+edOrigen.Text);
        // RListadoEnvio.QEnvios.SQL.Add('and e.suc_codigo = '+IntToStr(DBLookupComboBox2.KeyValue));
         RListadoEnvio.QEnvios.SQL.Add('and e.nombrechofer = '+QuotedStr(chofer));
         RListadoEnvio.QEnvios.SQL.Add('and e.Ficha_id = (select Ficha_id from Fichas_Transp where ficha_nombre ='+QuotedStr(ficha)+')');
         RListadoEnvio.QEnvios.SQL.Add('and e.fecha between convert(datetime,:fecha1,105) and convert(datetime,:fecha2,105)');
         RListadoEnvio.QEnvios.SQL.Add('and e.USU_REPORTE ='+IntToStr(DM.Usuario));
         case cbOrden.ItemIndex of
         0 : RListadoEnvio.QEnvios.sql.add('order by idEnvio desc, fecha desc, e.fac_numero');
         1 : RListadoEnvio.QEnvios.sql.add('order by e.fac_numero desc, fecha desc, idEnvio');
         2 : RListadoEnvio.QEnvios.sql.add('order by fecha desc, idEnvio, e.fac_numero');
         end;
         RListadoEnvio.QEnvios.Parameters.parambyname('emp').Value := dm.vp_cia;
         RListadoEnvio.QEnvios.Parameters.parambyname('fecha1').DataType := ftDate;
         RListadoEnvio.QEnvios.Parameters.parambyname('fecha2').DataType := ftDate;
         RListadoEnvio.QEnvios.Parameters.parambyname('fecha1').Value := fecha1.date;
         RListadoEnvio.QEnvios.Parameters.parambyname('fecha2').Value := fecha2.date;
         RListadoEnvio.QEnvios.open;
         if RListadoEnvio.QEnvios.RecordCount > 0 then begin
         RListadoEnvio.lbCant.Caption := IntToStr(RListadoEnvio.QEnvios.RecordCount);
         RListadoEnvio.QRLabel7.Caption    := 'Suc. Origen';
         RListadoEnvio.lbSuc.Caption       := DBLookupComboBox2.Text;
         RListadoEnvio.lbSucOrigen.Enabled := True;
         RListadoEnvio.QRLabel16.Enabled   := True;
         RListadoEnvio.QRLabel6.Enabled    := True;
         RListadoEnvio.lbSucOrigen.Enabled := True;
         RListadoEnvio.QRLabel6.Caption    := 'Suc. Destino';
         RListadoEnvio.lbSucOrigen.Caption := RListadoEnvio.QEnviosDestino.Text;
         RListadoEnvio.QRLabel14.Enabled := True;
         RListadoEnvio.QRLabel15.Enabled := True;
         RListadoEnvio.QRLFicha.Enabled := True;
         RListadoEnvio.QRLNombreChofer.Enabled := True;
         RListadoEnvio.QRLFicha.Caption := RListadoEnvio.QEnviosFICHA.Text;
         RListadoEnvio.QRLNombreChofer.Caption := RListadoEnvio.QEnviosCHOFER.Text;
         RListadoEnvio.lbEmp.Caption       := dm.NombreEmp;
         RListadoEnvio.lbLocalidad.Caption := QSucursalsuc_localidad.AsString;
         RListadoEnvio.lbTelefono.Caption  := QSucursalsuc_telefono.AsString;
         RListadoEnvio.lbRnc.Caption       := QSucursalsuc_rnc.AsString;
         RListadoEnvio.PrinterSetup;
         RListadoEnvio.Preview;
         with dm.Query1 do begin
         Close;
         SQL.Clear;
         sql.Add('UPDATE ENVIO');
         SQL.Add('SET SELECCION = 0, USU_REPORTE = NULL');
         SQL.Add('WHERE EMP_CODIGO = :EMP AND SUC_CODIGO = :SUC AND SELECCION = 1 AND ENV_STATUS ='+QuotedStr('PR')+
         ' AND USU_REPORTE ='+IntToStr(DM.Usuario));
         Parameters.ParamByName('EMP').Value := DM.vp_cia;
         Parameters.ParamByName('SUC').Value := DBLookupComboBox2.KeyValue;
         ExecSQL;
         end;
         RListadoEnvio.Destroy;
         end;
       end;
  btRefreshClick(Sender);
  end;

  end;


procedure TfrmConsFTEnvios.RecepciondeEnvios1Click(Sender: TObject);
begin
  application.createform(tfrmEnvioM2, frmEnvioM2);
  frmEnvioM2.Label4.Visible :=  False;
  frmEnvioM2.Label5.Visible :=  False;
  frmEnvioM2.cbbFicha.Visible :=  False;
  frmEnvioM2.EdtNombreChofer.Visible :=  False;
  with frmEnvioM2 do
    begin
      rg.ItemIndex := 0;
      cbStatus.ItemIndex := 2;
     // Caption := TButton(Sender).Caption;
      QEn.close;
      QEn.SQL.Clear;
      QEn.SQL.Add('select (select suc_nombre from sucursales where suc_codigo=Envio.env_suc_destino and emp_codigo=Envio.emp_codigo)Origen,');
      QEn.SQL.Add('seleccion,env_status,fac_numero,IDEnvio,Fecha,Ciudad_Destino,Nombre_envia,');
      QEn.SQL.Add('Telefono_Envia,Nombre_Recibe,Telefono_Recibe,Ficha_id, NombreChofer, SUC_CODIGO,');
      QEn.SQL.Add('Descripcion, Descripcion2');
      QEn.SQL.Add('from Envio');
      QEn.SQL.Add('where emp_codigo = :emp');
      QEn.SQL.Add('and env_suc_destino = :suc');
      QEn.SQL.Add('and env_status ='+QuotedStr('PR'));
      QEn.SQL.Add('order by suc_codigo');
      QEn.Parameters[0].Value := dm.vp_cia;
      QEn.Parameters[1].Value := DBLookupComboBox2.KeyValue;
      QEn.open;
      DBGrid1.Columns[4].FieldName := 'Origen';
      DBGrid1.Columns[4].Title.Caption := 'Terminal de Destino';
  end;
  If frmEnvioM2.showmodal= mrOk then begin
          Application.CreateForm(tRListadoEnvio, RListadoEnvio);
         RListadoEnvio.QEnvios.Close;
         RListadoEnvio.QEnvios.SQL.Clear;
         RListadoEnvio.QEnvios.sql.Add('select');
         RListadoEnvio.QEnvios.sql.Add('CASE WHEN E.ENV_STATUS = ''PE'' THEN ''POR ENVIAR''');
         RListadoEnvio.QEnvios.sql.Add('     WHEN E.ENV_STATUS = ''PR'' THEN ''POR RECIBIR''');
         RListadoEnvio.QEnvios.sql.Add('     WHEN E.ENV_STATUS = ''R'' THEN ''RECIBIDO''');
         RListadoEnvio.QEnvios.sql.Add('     WHEN E.ENV_STATUS = ''E'' THEN ''ENTREGADO''');
         RListadoEnvio.QEnvios.sql.Add('end status,');
         RListadoEnvio.QEnvios.sql.Add('(select suc_nombre from sucursales where suc_codigo=e.suc_codigo and emp_codigo=e.emp_codigo)Origen,');
         RListadoEnvio.QEnvios.sql.Add('(select suc_nombre from sucursales where suc_codigo=e.env_suc_destino and emp_codigo=e.emp_codigo)Destino,');
         RListadoEnvio.QEnvios.sql.Add('e.emp_codigo,e.suc_codigo,e.fac_numero,e.pro_codigo,IDEnvio,Fecha,Ciudad_Origen,Ciudad_Destino,Nombre_envia,');
         RListadoEnvio.QEnvios.sql.Add('Telefono_Envia,Nombre_Recibe,Telefono_Recibe,f.TFA_CODIGO,f.CAJ_CODIGO,FAC_MENSAJE1,FAC_MENSAJE2,FAC_MENSAJE3,');
         RListadoEnvio.QEnvios.sql.Add('env_recibido, env_rec_cedula,');
         RListadoEnvio.QEnvios.sql.Add('(select ficha_nombre from Fichas_Transp where ficha_id = e.ficha_id)FICHA,');
         RListadoEnvio.QEnvios.sql.Add('e.nombrechofer CHOFER,');
         RListadoEnvio.QEnvios.SQL.Add('upper(e.Descripcion) Descripcion, upper(e.Descripcion2) Descripcion2');
         RListadoEnvio.QEnvios.sql.Add('from Envio e');
         RListadoEnvio.QEnvios.sql.Add('join det_factura df on e.pro_codigo=df.pro_codigo and e.fac_numero= df.fac_numero and e.emp_codigo=df.emp_codigo and e.suc_codigo=df.suc_codigo');
         RListadoEnvio.QEnvios.sql.Add('join facturas f on df.fac_numero= f.fac_numero and df.emp_codigo=f.emp_codigo and df.suc_codigo=f.suc_codigo and df.tfa_codigo=f.tfa_codigo');
         RListadoEnvio.QEnvios.sql.Add('where e.emp_codigo = :emp and SELECCION = 1 and E.USU_REPORTE ='+IntToStr(DM.Usuario));
         RListadoEnvio.QEnvios.SQL.Add('and e.env_status = '+QuotedStr('R'));
         if tOrigen.Text <> '' then
         QEnvios.SQL.Add('and e.suc_codigo = '+edOrigen.Text);
         if DBLookupComboBox2.KeyValue > 0 then
         QEnvios.SQL.Add('and e.env_suc_destino = '+IntToStr(DBLookupComboBox2.KeyValue));
         QEnvios.SQL.Add('and e.env_status = '+QuotedStr('E'));
         RListadoEnvio.QEnvios.SQL.Add('and e.fecha between convert(datetime,:fecha1,105) and convert(datetime,:fecha2,105)');
         case cbOrden.ItemIndex of
         0 : RListadoEnvio.QEnvios.sql.add('order by idEnvio desc, fecha desc, e.fac_numero');
         1 : RListadoEnvio.QEnvios.sql.add('order by e.fac_numero desc, fecha desc, idEnvio');
         2 : RListadoEnvio.QEnvios.sql.add('order by fecha desc, idEnvio, e.fac_numero');
         end;
         RListadoEnvio.QEnvios.Parameters.parambyname('emp').Value := dm.vp_cia;
         RListadoEnvio.QEnvios.Parameters.parambyname('fecha1').DataType := ftDate;
         RListadoEnvio.QEnvios.Parameters.parambyname('fecha2').DataType := ftDate;
         RListadoEnvio.QEnvios.Parameters.parambyname('fecha1').Value := fecha1.date;
         RListadoEnvio.QEnvios.Parameters.parambyname('fecha2').Value := fecha2.date;
         RListadoEnvio.QEnvios.open;
         RListadoEnvio.QEnvios.open;
         if RListadoEnvio.QEnvios.RecordCount > 0 then begin
         RListadoEnvio.lbCant.Caption := IntToStr(RListadoEnvio.QEnvios.RecordCount);
         RListadoEnvio.QRLabel7.Caption    := 'Suc. Origen';
         RListadoEnvio.lbSuc.Caption       := RListadoEnvio.QEnviosOrigen.Text;
         RListadoEnvio.lbSucOrigen.Enabled := True;
         RListadoEnvio.QRLabel16.Enabled   := True;
         RListadoEnvio.QRLabel6.Enabled    := True;
         RListadoEnvio.lbSucOrigen.Enabled := True;
         RListadoEnvio.QRLabel6.Caption    := 'Suc. Destino';
         RListadoEnvio.lbSucOrigen.Caption := RListadoEnvio.QEnviosDestino.Text;
         RListadoEnvio.QRLabel14.Enabled := False;
         RListadoEnvio.QRLabel15.Enabled := False;
         RListadoEnvio.QRLFicha.Enabled := False;
         RListadoEnvio.QRLNombreChofer.Enabled := False;
         RListadoEnvio.lbEmp.Caption       := dm.NombreEmp;
         RListadoEnvio.lbLocalidad.Caption := QSucursalsuc_localidad.AsString;
         RListadoEnvio.lbTelefono.Caption  := QSucursalsuc_telefono.AsString;
         RListadoEnvio.lbRnc.Caption       := QSucursalsuc_rnc.AsString;
         RListadoEnvio.PrinterSetup;
         RListadoEnvio.Preview;
         with dm.Query1 do begin
         Close;
         SQL.Clear;
         sql.Add('UPDATE ENVIO');
         SQL.Add('SET SELECCION = 0, USU_REPORTE = NULL');
         SQL.Add('WHERE EMP_CODIGO = :EMP AND env_suc_destino = :SUC AND SELECCION = 1 AND ENV_STATUS ='+QuotedStr('R')+
         ' AND USU_REPORTE ='+IntToStr(DM.Usuario));
         Parameters.ParamByName('EMP').Value := DM.vp_cia;
         Parameters.ParamByName('SUC').Value := DBLookupComboBox2.KeyValue;
         ExecSQL;
         end;
         end;
         RListadoEnvio.Destroy;
  end;
  end;


procedure TfrmConsFTEnvios.rgClick(Sender: TObject);
begin
  case rg.ItemIndex of
  1:begin
  Label12.Caption := 'Origen';
  //cbStatus.ItemIndex := 2;
  end;
  2:begin
  Label12.Caption := 'Destino';
  cbStatus.ItemIndex := 1;
  end;
  end;
  btRefreshClick(Self);
end;

procedure TfrmConsFTEnvios.EdtCodigoBarraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key = VK_RETURN then begin
if EdtCodigoBarra.Text <> '' then begin
  vl_factura := StrToInt(Copy(EdtCodigoBarra.Text,1,7));
  vl_envio   := StrToInt(Copy(EdtCodigoBarra.Text,8,11));
btRefreshClick(Sender);
end;

IF QEnvios.RecordCount > 0 THEN BEGIN
  IF EdtCodigoBarra.Text <> '' THEN BEGIN
    application.createform(TfrmEnvioMant, frmEnvioMant);
  if not QDetalle.Active then
  QDetalle.Active := true;

 // mniPagarEnvio1Click(Sender);

  {frmEnvioMant.pTop.Caption :='[' +QEnviosIDEnvio.AsString+'] Envia : '+QEnviosNombre_envia.AsString+' ==> '+QEnviosNombre_Recibe.AsString;
  If frmEnvioMant.showmodal= mrAll then
      if (QDetalle.State in [dsEdit,dsInsert])and(QDetalleenv_recibido.Value<>EmptyStr)and(QDetalleenv_rec_cedula.Value<>EmptyStr) then
         begin
           QDetalleenv_status.Value := 'E';
           QDetalleenv_rec_fecha.Value := now;
           QDetalle.Post;
           btRefreshClick(self);
           EdtCodigoBarra.Clear;
           EdtCodigoBarra.SetFocus;
         end
      else MessageDlg('DEBE INGRESAR NOMBRE Y CEDULA DE QUIEN RECIBE EL ENVIO',
        mtError,[mbok],0);
  frmEnvioMant.Release;
  }
  end;
  end
  else
  EdtCodigoBarra.Clear;
  EdtCodigoBarra.SetFocus;
end;
end;



procedure TfrmConsFTEnvios.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  f:TField;
const
   CtrlState: array[Boolean] of integer = (DFCS_BUTTONCHECK, DFCS_BUTTONCHECK or DFCS_CHECKED) ;
begin
if (Column.Field.DataType=ftBoolean) then
  begin
    DBGrid1.Canvas.FillRect(Rect) ;
    if (VarIsNull(Column.Field.Value)) then
      DrawFrameControl(DBGrid1.Canvas.Handle,Rect, DFC_BUTTON, DFCS_BUTTONCHECK or DFCS_INACTIVE)
    else
      DrawFrameControl(DBGrid1.Canvas.Handle,Rect, DFC_BUTTON, CtrlState[Column.Field.AsBoolean]);
  end;

  // Acceder al campo que tiene el dato que quieres como referencia para pintar
  f := Column.Field.DataSet.FieldByName('facpagodestino');
  // Si lo encuentro, continuo
  if Assigned(f) then begin
    // Valor para la condición de si PINTAR o NO
    if (f.AsBoolean = True)  then
      DBGrid1.Canvas.Brush.Color := clRed;

    // Pinto la celda del color seleccionado
    DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;


end;

procedure TfrmConsFTEnvios.dsEnviosDataChange(Sender: TObject;
  Field: TField);
begin
IF QEnviosstatus.Value = 'POR ENVIAR' THEN BEGIN
DespachodeEnvio1.Visible  := True;
RecepciondeEnvios1.Visible := False;
mniPagarEnvio1.Visible    := RecepciondeEnvios1.Visible;
Entregadeenvio1.Visible   := RecepciondeEnvios1.Visible;
end;

IF QEnviosstatus.Value = 'POR RECIBIR' THEN BEGIN
RecepciondeEnvios1.Visible  := True;
DespachodeEnvio1.Visible    := False;
mniPagarEnvio1.Visible      := DespachodeEnvio1.Visible;
Entregadeenvio1.Visible     := DespachodeEnvio1.Visible;
end;

IF QEnviosstatus.Value = 'ENTREGADO' THEN BEGIN
RecepciondeEnvios1.Visible  := False;
DespachodeEnvio1.Visible    := False;
mniPagarEnvio1.Visible      := DespachodeEnvio1.Visible;
Entregadeenvio1.Visible     := DespachodeEnvio1.Visible;
end;


IF (QEnviosstatus.Value = 'RECIBIDO') and (QEnviosfacpagodestino.Value = False) THEN BEGIN
Entregadeenvio1.Visible  := True;
DespachodeEnvio1.Visible    := False;
mniPagarEnvio1.Visible      := DespachodeEnvio1.Visible;
RecepciondeEnvios1.Visible  := DespachodeEnvio1.Visible;
end;

IF (QEnviosstatus.Value = 'RECIBIDO') and (QEnviosfacpagodestino.Value = True) THEN BEGIN
mniPagarEnvio1.Visible  := True;
DespachodeEnvio1.Visible    := False;
Entregadeenvio1.Visible     := DespachodeEnvio1.Visible;
RecepciondeEnvios1.Visible  := DespachodeEnvio1.Visible;
end;
end;

procedure TfrmConsFTEnvios.mniPagarEnvio1Click(Sender: TObject);
begin
if (QEnviosstatus.Value = 'RECIBIDO') AND (QEnviosfacpagodestino.Value = True) THEN BEGIN
 frmMain.activaforma(tFrmRecibosPagoDestino, tform(FrmRecibosPagoDestino));

  if (QEnviosenv_recibido.Value = EmptyStr)or(QEnviosenv_rec_cedula.Value = EmptyStr)then
     DBGrid1DblClick(self)
  else
    if MessageDlg('Desea imprimir en impresora grande?',mtConfirmation,[mbyes,mbno],0) = mryes then
       begin
        application.createform(tRENVIO, RENVIO);
        RENVIO.QEnvios.close;
        RENVIO.QEnvios.Parameters.ParamByName('emp_codigo').Value   := QEnviosemp_codigo.value;
        RENVIO.QEnvios.Parameters.ParamByName('suc_codigo').Value   := QEnviossuc_codigo.Value;
        RENVIO.QEnvios.Parameters.ParamByName('fac_numero').Value   := QEnviosfac_numero.Value;
        RENVIO.QEnvios.open;
        RENVIO.PrinterSetup;
        RENVIO.Preview;
        RENVIO.Destroy;
      end
      else
        Imp40Columnas ;
end;

end;

end.
