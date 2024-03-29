unit PVENTA65;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, DBCtrls, Buttons, 
  DB, IBCustomDataSet, IBQuery, Grids, DBGrids, QuerySearchDlgADO, ComCtrls;

type
  TfrmRepClientes = class(TForm)
    cbStatus: TRadioGroup;
    cbBalance: TRadioGroup;
    Label12: TLabel;
    btTipo: TSpeedButton;
    tTipo: TEdit;
    edTipo: TEdit;
    Label1: TLabel;
    btDesde: TSpeedButton;
    tDesde: TEdit;
    edDesde: TEdit;
    Label2: TLabel;
    btHasta: TSpeedButton;
    tHasta: TEdit;
    edHasta: TEdit;
    Label3: TLabel;
    cbPrecio: TComboBox;
    ckDesk: TCheckBox;
    Label10: TLabel;
    btCondi: TSpeedButton;
    tCondi: TEdit;
    edCondi: TEdit;
    btClose: TBitBtn;
    btPrint: TBitBtn;
    cbOrden: TComboBox;
    Label4: TLabel;
    Search: TQrySearchDlgADO;
    Label5: TLabel;
    btVendedor: TSpeedButton;
    tVendedor: TEdit;
    edVendedor: TEdit;
    Label6: TLabel;
    btProvincia: TSpeedButton;
    tProvincia: TEdit;
    edProvincia: TEdit;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    fecha1: TDateTimePicker;
    fecha2: TDateTimePicker;
    ckrecetas: TCheckBox;
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCondiClick(Sender: TObject);
    procedure btDesdeClick(Sender: TObject);
    procedure btHastaClick(Sender: TObject);
    procedure btTipoClick(Sender: TObject);
    procedure edTipoChange(Sender: TObject);
    procedure edTipoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDesdeChange(Sender: TObject);
    procedure edDesdeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edHastaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edHastaChange(Sender: TObject);
    procedure edCondiChange(Sender: TObject);
    procedure edCondiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure btPrintClick(Sender: TObject);
    procedure edVendedorChange(Sender: TObject);
    procedure edVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btVendedorClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edProvinciaChange(Sender: TObject);
    procedure btProvinciaClick(Sender: TObject);
    procedure edProvinciaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRepClientes: TfrmRepClientes;

implementation

uses RVENTA21, SIGMA01, RVENTA83;

{$R *.dfm}

procedure TfrmRepClientes.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmRepClientes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
end;

procedure TfrmRepClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmRepClientes.btCondiClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C�digo');
  Search.Query.clear;
  Search.Query.add('select cpa_nombre, cpa_codigo');
  Search.Query.add('from condiciones');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'cpa_Codigo';
  Search.Title := 'Condiciones de Pago';
  if Search.execute then
  begin
    edCondi.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cpa_nombre from condiciones');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and cpa_codigo = :cod');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edCondi.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('CONDICION NO EXISTE',mterror,[mbok],0)
    else
      tCondi.text := dm.Query1.fieldbyname('cpa_nombre').asstring;
    edCondi.setfocus;
  end;
end;

procedure TfrmRepClientes.btDesdeClick(Sender: TObject);
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

procedure TfrmRepClientes.btHastaClick(Sender: TObject);
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

procedure TfrmRepClientes.btTipoClick(Sender: TObject);
begin
  Search.query.clear;
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C�digo');
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

procedure TfrmRepClientes.edTipoChange(Sender: TObject);
begin
  if trim(edTipo.text) = '' then tTipo.text := '';
end;

procedure TfrmRepClientes.edTipoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edTipo.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select tcl_nombre, tcl_codigo');
      dm.Query1.sql.add('from tipoclientes');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and tcl_codigo = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edTipo.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        tTipo.text := '';
        showmessage('ESTE TIPO DE CLIENTE NO EXISTE');
        edTipo.setfocus;
      end
      else
        tTipo.text := dm.Query1.fieldbyname('tcl_nombre').asstring;
    end;
  end;
end;

procedure TfrmRepClientes.edDesdeChange(Sender: TObject);
begin
  if trim(edDesde.text) = '' then tDesde.text := '';
end;

procedure TfrmRepClientes.edDesdeKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmRepClientes.edHastaKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmRepClientes.edHastaChange(Sender: TObject);
begin
  if trim(edHasta.text) = '' then tHasta.text := '';
end;

procedure TfrmRepClientes.edCondiChange(Sender: TObject);
begin
  if trim(edCondi.text) = '' then tCondi.text := '';
end;

procedure TfrmRepClientes.edCondiKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edCondi.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select cpa_nombre from condiciones');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and cpa_codigo = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edCondi.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('CONDICION NO EXISTE',mterror,[mbok],0);
        edCondi.SetFocus;
      end
      else
        tCondi.text := dm.Query1.fieldbyname('cpa_nombre').asstring;
    end;
  end;
end;

procedure TfrmRepClientes.FormCreate(Sender: TObject);
begin
  cbPrecio.ItemIndex := 0;
  cbOrden.ItemIndex  := 0;
  fecha1.Date := Date;
  fecha2.Date := Date;
end;

procedure TfrmRepClientes.btPrintClick(Sender: TObject);
begin
  if not ckrecetas.Checked then
  begin
    Application.CreateForm(tRRepClientes, RRepClientes);
    RRepClientes.lbFecha.Caption     := 'Al '+DateToStr(Date);
    RRepClientes.lbTipo.Caption      := tTipo.Text;
    RRepClientes.lbVend.Caption      := tVendedor.Text;
    RRepClientes.lbCondi.Caption     := tCondi.Text;
    RRepClientes.lbUsuario.Caption   := cbBalance.Items[cbBalance.ItemIndex];
    RRepClientes.lbStatus.Caption    := cbStatus.Items[cbStatus.ItemIndex];
    RRepClientes.lbProvincia.Caption := UpperCase(Trim(tProvincia.Text));
    if ckDesk.Checked = True then
      RRepClientes.lbDesc.Caption := 'Con descuento'
    else
      RRepClientes.lbDesc.Caption := ' ';
    RRepClientes.lbPrecio.Caption := cbPrecio.Items[cbPrecio.ItemIndex];
    if Trim(edTipo.Text) <> '' then
      RRepClientes.QClientes.SQL.Add('and c.tcl_codigo = '+Trim(edTipo.Text));
    if (Trim(edDesde.Text) <> '') and (Trim(edHasta.Text) <> '') then
    begin
      if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
         RRepClientes.QClientes.SQL.Add('and c.cli_codigo between '+Trim(edDesde.Text)+
                                         ' and '+Trim(edHasta.Text))
      else
         RRepClientes.QClientes.SQL.Add('and c.cli_referencia between '+#39+Trim(edDesde.Text)+#39+
                                         ' and '+#39+Trim(edHasta.Text)+#39);
    end;
    if Trim(edCondi.Text) <> '' then
      RRepClientes.QClientes.SQL.Add('and c.cpa_codigo = '+Trim(edCondi.Text));
    if Trim(edVendedor.Text) <> '' then
      RRepClientes.QClientes.SQL.Add('and c.ven_codigo = '+Trim(edVendedor.Text));
    if Trim(edProvincia.Text) <> '' then
      RRepClientes.QClientes.SQL.Add('and c.pro_codigo = '+Trim(edProvincia.Text));

    case cbStatus.ItemIndex of
    1 : RRepClientes.QClientes.SQL.Add('and c.cli_status = '+#39+'ACT'+#39);
    2 : RRepClientes.QClientes.SQL.Add('and c.cli_status = '+#39+'INA'+#39);
    end;

    case cbBalance.ItemIndex of
    1 : RRepClientes.QClientes.SQL.Add('and c.cli_balance = 0');
    2 : RRepClientes.QClientes.SQL.Add('and c.cli_balance > 0');
    3 : RRepClientes.QClientes.SQL.Add('and c.cli_balance < 0');
    end;

    case cbPrecio.ItemIndex of
    1 : RRepClientes.QClientes.SQL.Add('and c.cli_precio = '+#39+'Precio 1'+#39);
    2 : RRepClientes.QClientes.SQL.Add('and c.cli_precio = '+#39+'Precio 2'+#39);
    3 : RRepClientes.QClientes.SQL.Add('and c.cli_precio = '+#39+'Precio 3'+#39);
    4 : RRepClientes.QClientes.SQL.Add('and c.cli_precio = '+#39+'Precio 4'+#39);
    end;

    case cbOrden.ItemIndex of
    0 : RRepClientes.QClientes.SQL.Add('Order by c.cli_codigo');
    1 : RRepClientes.QClientes.SQL.Add('Order by c.cli_referencia');
    2 : RRepClientes.QClientes.SQL.Add('Order by c.cli_nombre');
    3 : RRepClientes.QClientes.SQL.Add('Order by c.cli_cedula');
    4 : RRepClientes.QClientes.SQL.Add('Order by ccli_rnc');
    end;
    RRepClientes.QClientes.Open;
    RRepClientes.PrinterSetup;
    RRepClientes.Preview;
    RRepClientes.Destroy;
  end
  else
  begin
    Application.CreateForm(tRepRecetas, RepRecetas);
    RepRecetas.QClientes.Parameters.ParamByName('emp').Value  := dm.vp_cia;
    RepRecetas.QClientes.Parameters.ParamByName('fec1').DataType := ftDate;
    RepRecetas.QClientes.Parameters.ParamByName('fec2').DataType := ftDate;
    RepRecetas.QClientes.Parameters.ParamByName('fec1').Value := fecha1.Date;
    RepRecetas.QClientes.Parameters.ParamByName('fec2').Value := fecha2.Date;
    RepRecetas.QClientes.Open;

    RepRecetas.QRecetas.Parameters.ParamByName('fec1').DataType := ftDate;
    RepRecetas.QRecetas.Parameters.ParamByName('fec2').DataType := ftDate;
    RepRecetas.QRecetas.Parameters.ParamByName('fec1').Value := fecha1.Date;
    RepRecetas.QRecetas.Parameters.ParamByName('fec2').Value := fecha2.Date;
    RepRecetas.QRecetas.Open;

    RepRecetas.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
    RepRecetas.PrinterSetup;
    RepRecetas.Preview;
    RepRecetas.Destroy;
  end;
end;

procedure TfrmRepClientes.edVendedorChange(Sender: TObject);
begin
  if trim(edVendedor.text) = '' then tVendedor.text := '';
end;

procedure TfrmRepClientes.edVendedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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

procedure TfrmRepClientes.btVendedorClick(Sender: TObject);
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
  end;
end;

procedure TfrmRepClientes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     if activecontrol.classtype <> tdbgrid then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmRepClientes.edProvinciaChange(Sender: TObject);
begin
  if trim(edProvincia.text) = '' then tProvincia.text := '';
end;

procedure TfrmRepClientes.btProvinciaClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C�digo');
  Search.Query.clear;
  Search.Query.add('select pro_nombre, pro_codigo');
  Search.Query.add('from provincias');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'pro_Codigo';
  Search.Title := 'Listado de Provincias';
  if Search.execute then
  begin
    edProvincia.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select pro_nombre from provincias');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and pro_codigo = :pro');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('pro').Value := strtoint(trim(edProvincia.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('PROVINCIA NO EXISTE',mterror,[mbok],0)
    else
      tProvincia.text := dm.Query1.fieldbyname('pro_nombre').asstring;
    edProvincia.setfocus;
  end;
end;

procedure TfrmRepClientes.edProvinciaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edProvincia.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select pro_nombre from provincias');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and pro_codigo = :pro');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('pro').Value := strtoint(trim(edProvincia.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('PROVINCIA NO EXISTE',mterror,[mbok],0);
        edProvincia.SetFocus;
      end
      else
        tProvincia.text := dm.Query1.fieldbyname('pro_nombre').asstring;
    end;
  end;
end;

end.
