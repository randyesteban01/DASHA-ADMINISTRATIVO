unit PVENTA155;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, QuerySearchDlgADO, DBCtrls, DB,
  ADODB, ExtCtrls, QuickRpt, idMessage, QRPDFFilt, QRCtrls;

type
  TfrmRepHistorialCliente = class(TForm)
    btClose: TBitBtn;
    btPrint: TBitBtn;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    edHasta: TEdit;
    tHasta: TEdit;
    ckmail: TCheckBox;
    Label5: TLabel;
    Fecha1: TDateTimePicker;
    Label1: TLabel;
    Fecha2: TDateTimePicker;
    Search: TQrySearchDlgADO;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    dsSuc: TDataSource;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    cbDestino: TRadioGroup;
    ckpendientes: TCheckBox;
    Label12: TLabel;
    btTipo: TSpeedButton;
    edTipo: TEdit;
    tTipo: TEdit;
    cborden: TComboBox;
    Label2: TLabel;
    Label4: TLabel;
    btVendedor: TSpeedButton;
    edVendedor: TEdit;
    tVendedor: TEdit;
    ckPagina: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edHastaChange(Sender: TObject);
    procedure edHastaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btPrintClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btTipoClick(Sender: TObject);
    procedure edTipoChange(Sender: TObject);
    procedure edTipoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btVendedorClick(Sender: TObject);
    procedure edVendedorChange(Sender: TObject);
    procedure edVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    cli : integer;
    Bal : Double;
    procedure EnvioMail (Rep : TQuickRep);
  end;

var
  frmRepHistorialCliente: TfrmRepHistorialCliente;

implementation

uses SIGMA01, RVENTA77, SIGMA00, RVENTA108;

{$R *.dfm}

procedure TfrmRepHistorialCliente.FormCreate(Sender: TObject);
begin
  Fecha1.Date := Date;
  Fecha2.Date := Date;
end;

procedure TfrmRepHistorialCliente.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmRepHistorialCliente.SpeedButton1Click(Sender: TObject);
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
    edHasta.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cli_nombre, cli_codigo, cli_referencia, cli_balance from clientes');
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
    begin
      cli := dm.Query1.fieldbyname('cli_codigo').AsInteger;
      Bal := dm.Query1.fieldbyname('cli_balance').AsFloat;
      tHasta.text := dm.Query1.fieldbyname('cli_nombre').asstring;
    end;
    edHasta.setfocus;
  end;
end;

procedure TfrmRepHistorialCliente.edHastaChange(Sender: TObject);
begin
  if trim(edHasta.text) = '' then tHasta.text := '';
end;

procedure TfrmRepHistorialCliente.edHastaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edHasta.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select cli_codigo, cli_nombre, cli_balance from clientes');
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
        cli := dm.Query1.fieldbyname('cli_codigo').AsInteger;
        Bal := dm.Query1.fieldbyname('cli_balance').ASFloat;
        tHasta.text := dm.Query1.fieldbyname('cli_nombre').asstring;
    end;
  end;
end;

procedure TfrmRepHistorialCliente.btPrintClick(Sender: TObject);
begin
  if Trim(edTipo.Text) = '' then
  begin
    if trim(edHasta.Text) <> '' then
    begin
      Application.CreateForm(tRRepHistorialCli, RRepHistorialCli);
      RRepHistorialCli.lbBalance.Caption := 'Balance: '+format('%n',[Bal]);
      RRepHistorialCli.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+ ' Al ' + DateToStr(Fecha2.Date);
      RRepHistorialCli.lbCliente.Caption := tHasta.Text;
      RRepHistorialCli.QHistorial.Parameters.ParamByName('emp').Value  := dm.vp_cia;
      RRepHistorialCli.QHistorial.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
      RRepHistorialCli.QHistorial.Parameters.ParamByName('fec1').Value := Fecha1.Date;
      RRepHistorialCli.QHistorial.Parameters.ParamByName('fec2').Value := Fecha2.Date;
      RRepHistorialCli.QHistorial.Parameters.ParamByName('cli').Value  := edHasta.Text;
      RRepHistorialCli.pendientes := ckpendientes.Checked;
      if ckpendientes.Checked then
        RRepHistorialCli.QHistorial.Parameters.ParamByName('tip').Value := 'True'
      else
        RRepHistorialCli.QHistorial.Parameters.ParamByName('tip').Value := 'False';

      RRepHistorialCli.QHistorial.Open;
      if ckmail.Checked then
        try
          EnvioMail(RRepHistorialCli);
        finally
          RRepHistorialCli.destroy;
        end
      else
      begin
        RRepHistorialCli.PrinterSetup;
        if cbDestino.ItemIndex = 0 then
          RRepHistorialCli.Preview
        else
          RRepHistorialCli.print;
        RRepHistorialCli.Destroy;
      end;
    end
    else
    begin
      Application.createform(tRRepHistorialCliTipo, RRepHistorialCliTipo);
      RRepHistorialCliTipo.QRBand3.ForceNewPage := ckPagina.Checked;
      RRepHistorialCliTipo.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+ ' Al ' + DateToStr(Fecha2.Date);

      if trim(edVendedor.Text) <> '' then
        RRepHistorialCliTipo.QClientes.SQL.Add('and ven_codigo = '+edVendedor.Text);

      if ckpendientes.Checked then
      begin
        RRepHistorialCliTipo.QClientes.SQL.Add('and cli_balance > 0');
        RRepHistorialCliTipo.QClientes.SQL.Add('and cli_codigo in (select cli_codigo from movimientos');
        RRepHistorialCliTipo.QClientes.SQL.Add('where emp_codigo = clientes.emp_codigo');
        RRepHistorialCliTipo.QClientes.SQL.Add('and cli_codigo = clientes.cli_codigo');
        RRepHistorialCliTipo.QClientes.SQL.Add('and mov_status = '+QuotedStr('PEN'));
        RRepHistorialCliTipo.QClientes.SQL.Add('and mov_fecha between convert(datetime, :vfec1, 105)');
        RRepHistorialCliTipo.QClientes.SQL.Add('and convert(datetime, :vfec2, 105))');

        RRepHistorialCliTipo.QClientes.Parameters.ParamByName('vfec1').DataType := ftDate;
        RRepHistorialCliTipo.QClientes.Parameters.ParamByName('vfec2').DataType := ftDate;
        RRepHistorialCliTipo.QClientes.Parameters.ParamByName('vfec1').Value := Fecha1.Date;
        RRepHistorialCliTipo.QClientes.Parameters.ParamByName('vfec2').Value := Fecha2.Date;
      end;

      case cborden.ItemIndex of
      0 : RRepHistorialCliTipo.QClientes.SQL.Add('order by cli_codigo');
      1 : RRepHistorialCliTipo.QClientes.SQL.Add('order by cli_referencia');
      2 : RRepHistorialCliTipo.QClientes.SQL.Add('order by cli_nombre');
      end;

      RRepHistorialCliTipo.QClientes.Parameters.ParamByName('emp').Value  := dm.vp_cia;
      RRepHistorialCliTipo.QClientes.Open;

      RRepHistorialCliTipo.QHistorial.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
      RRepHistorialCliTipo.QHistorial.Parameters.ParamByName('fec1').Value := Fecha1.Date;
      RRepHistorialCliTipo.QHistorial.Parameters.ParamByName('fec2').Value := Fecha2.Date;
      RRepHistorialCliTipo.pendientes := ckpendientes.Checked;
      if ckpendientes.Checked then
        RRepHistorialCliTipo.QHistorial.Parameters.ParamByName('tip').Value := 'True'
      else
        RRepHistorialCliTipo.QHistorial.Parameters.ParamByName('tip').Value := 'False';

      RRepHistorialCliTipo.QHistorial.Open;
      if ckmail.Checked then
        try
          EnvioMail(RRepHistorialCliTipo);
        finally
          RRepHistorialCliTipo.destroy;
        end
      else
      begin
        RRepHistorialCliTipo.PrinterSetup;
        if cbDestino.ItemIndex = 0 then
          RRepHistorialCliTipo.Preview
        else
          RRepHistorialCliTipo.print;
        RRepHistorialCliTipo.Destroy;
      end;
    end;
  end
  else
  begin
    Application.createform(tRRepHistorialCliTipo, RRepHistorialCliTipo);
    RRepHistorialCliTipo.QRBand3.ForceNewPage := ckPagina.Checked;
    RRepHistorialCliTipo.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+ ' Al ' + DateToStr(Fecha2.Date);
    RRepHistorialCliTipo.QClientes.SQL.Add('and tcl_codigo = :tipo');

    if trim(edVendedor.Text) <> '' then
      RRepHistorialCliTipo.QClientes.SQL.Add('and ven_codigo = '+edVendedor.Text);

    if ckpendientes.Checked then
    begin
      RRepHistorialCliTipo.QClientes.SQL.Add('and cli_balance > 0');
      RRepHistorialCliTipo.QClientes.SQL.Add('and cli_codigo in (select cli_codigo from movimientos');
      RRepHistorialCliTipo.QClientes.SQL.Add('where emp_codigo = clientes.emp_codigo');
      RRepHistorialCliTipo.QClientes.SQL.Add('and cli_codigo = clientes.cli_codigo');
      RRepHistorialCliTipo.QClientes.SQL.Add('and mov_status = '+QuotedStr('PEN'));
      RRepHistorialCliTipo.QClientes.SQL.Add('and mov_fecha between convert(datetime, :vfec1, 105)');
      RRepHistorialCliTipo.QClientes.SQL.Add('and convert(datetime, :vfec2, 105))');

      RRepHistorialCliTipo.QClientes.Parameters.ParamByName('vfec1').DataType := ftDate;
      RRepHistorialCliTipo.QClientes.Parameters.ParamByName('vfec2').DataType := ftDate;
      RRepHistorialCliTipo.QClientes.Parameters.ParamByName('vfec1').Value := Fecha1.Date;
      RRepHistorialCliTipo.QClientes.Parameters.ParamByName('vfec2').Value := Fecha2.Date;
    end;

    case cborden.ItemIndex of
    0 : RRepHistorialCliTipo.QClientes.SQL.Add('order by cli_codigo');
    1 : RRepHistorialCliTipo.QClientes.SQL.Add('order by cli_referencia');
    2 : RRepHistorialCliTipo.QClientes.SQL.Add('order by cli_nombre');
    end;

    RRepHistorialCliTipo.QClientes.Parameters.ParamByName('emp').Value  := dm.vp_cia;
    RRepHistorialCliTipo.QClientes.Parameters.ParamByName('tipo').Value := StrToInt(edTipo.Text);
    RRepHistorialCliTipo.QClientes.Open;

    RRepHistorialCliTipo.QHistorial.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
    RRepHistorialCliTipo.QHistorial.Parameters.ParamByName('fec1').Value := Fecha1.Date;
    RRepHistorialCliTipo.QHistorial.Parameters.ParamByName('fec2').Value := Fecha2.Date;
    RRepHistorialCliTipo.pendientes := ckpendientes.Checked;
    if ckpendientes.Checked then
      RRepHistorialCliTipo.QHistorial.Parameters.ParamByName('tip').Value := 'True'
    else
      RRepHistorialCliTipo.QHistorial.Parameters.ParamByName('tip').Value := 'False';

    RRepHistorialCliTipo.QHistorial.Open;
    if ckmail.Checked then
      try
        EnvioMail(RRepHistorialCliTipo);
      finally
        RRepHistorialCliTipo.destroy;
      end
    else
    begin
      RRepHistorialCliTipo.PrinterSetup;
      if cbDestino.ItemIndex = 0 then
        RRepHistorialCliTipo.Preview
      else
        RRepHistorialCliTipo.print;
      RRepHistorialCliTipo.Destroy;
    end;
  end;
end;

procedure TfrmRepHistorialCliente.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
end;

procedure TfrmRepHistorialCliente.EnvioMail(Rep: TQuickRep);
var
   MailMsg : TIdMessage;
   //Archivo : TIdAttachment;
   nArchivo : string;
begin
   nArchivo := InputBox('Envio de Mail','Correo : ','');
   if trim(nArchivo) <> '' then
   begin
     frmMain.filtroreporte := TQRPDFDocumentFilter.Create('c:\historialcliente.pdf');
     Rep.ExportToFilter(frmMain.filtroreporte);
     if frmMain.IdSMTP1.Connected then frmMain.IdSMTP1.Disconnect;
     MailMsg := TidMessage.Create(frmMain.IdSMTP1);
     MailMsg.Subject      := 'Historial';
     MailMsg.From.Address := dm.QParametrospar_mailcorreo.Value;
     MailMsg.From.Name    := dm.QParametrospar_mailcorreo.Value;
     MailMsg.ReplyTo.EMailAddresses :=  dm.QParametrospar_mailcorreo.Value;
     MailMsg.Recipients.Add;
     MailMsg.Recipients.Items[0].Address := nArchivo;
    // TIdAttachmentFile.Create(MailMsg.MessageParts, 'c:\historialcliente.pdf');
     frmMain.IdSMTP1.Host := dm.QParametrospar_mailservidor.Value;
     frmMain.IdSMTP1.Port := dm.QParametrospar_mailpuerto.AsInteger;
     frmMain.IdSMTP1.Username := dm.QParametrospar_mailusuario.Value;
     frmMain.IdSMTP1.Password := dm.QParametrospar_mailclave.Value;
     frmMain.IdSMTP1.Connect();
     frmMain.IdSMTP1.Send(MailMsg);
     frmMain.IdSMTP1.Disconnect;
     MailMsg.Free;
     frmMain.filtroreporte.Free;
   end;
end;

procedure TfrmRepHistorialCliente.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmRepHistorialCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmRepHistorialCliente.btTipoClick(Sender: TObject);
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

procedure TfrmRepHistorialCliente.edTipoChange(Sender: TObject);
begin
  if trim(edTipo.text) = '' then tTipo.text := '';
end;

procedure TfrmRepHistorialCliente.edTipoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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

procedure TfrmRepHistorialCliente.btVendedorClick(Sender: TObject);
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

procedure TfrmRepHistorialCliente.edVendedorChange(Sender: TObject);
begin
  if trim(edVendedor.text) = '' then tVendedor.text := '';
end;

procedure TfrmRepHistorialCliente.edVendedorKeyDown(Sender: TObject;
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

end.
