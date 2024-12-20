unit PVENTA110;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, QuerySearchDlgADO;

type
  TfrmCambiaStatus = class(TForm)
    Search: TQrySearchDlgADO;
    cbOpcion: TRadioGroup;
    edEmp: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edCli: TEdit;
    edProv: TEdit;
    edVend: TEdit;
    edUsu: TEdit;
    edCaj: TEdit;
    btEmp: TSpeedButton;
    tEmp: TEdit;
    btCli: TSpeedButton;
    tCli: TEdit;
    btProv: TSpeedButton;
    tProv: TEdit;
    btVend: TSpeedButton;
    tVend: TEdit;
    btUsu: TSpeedButton;
    tUsu: TEdit;
    btCaj: TSpeedButton;
    tCaj: TEdit;
    btClose: TBitBtn;
    btAnula: TBitBtn;
    stEmp: TStaticText;
    stCli: TStaticText;
    stProv: TStaticText;
    stVend: TStaticText;
    stUsu: TStaticText;
    stCAj: TStaticText;
    Label7: TLabel;
    btProd: TSpeedButton;
    edProd: TEdit;
    tProd: TEdit;
    stProd: TStaticText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure btEmpClick(Sender: TObject);
    procedure btCliClick(Sender: TObject);
    procedure btProvClick(Sender: TObject);
    procedure btVendClick(Sender: TObject);
    procedure btUsuClick(Sender: TObject);
    procedure btCajClick(Sender: TObject);
    procedure edEmpChange(Sender: TObject);
    procedure edCliChange(Sender: TObject);
    procedure edProvChange(Sender: TObject);
    procedure edVendChange(Sender: TObject);
    procedure edUsuChange(Sender: TObject);
    procedure edCajChange(Sender: TObject);
    procedure edEmpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edCliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edProvKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edVendKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edUsuKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edCajKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbOpcionClick(Sender: TObject);
    procedure btAnulaClick(Sender: TObject);
    procedure btProdClick(Sender: TObject);
    procedure edProdChange(Sender: TObject);
    procedure edProdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCambiaStatus: TfrmCambiaStatus;

implementation

uses SIGMA01, PVENTA33;


{$R *.dfm}

procedure TfrmCambiaStatus.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmCambiaStatus.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCambiaStatus.btEmpClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select emp_nombre, emp_codigo');
  Search.Query.Add('from empresas');
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.ResultField := 'emp_codigo';
  Search.Title := 'Empresas';
  if Search.execute then
  begin
    edEmp.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select emp_nombre, emp_status from empresas');
    dm.Query1.SQL.Add('where emp_codigo = '+Search.ValueField);
    dm.Query1.Open;
    tEmp.Text := dm.Query1.FieldByName('emp_nombre').AsString;
    stEmp.Caption := dm.Query1.FieldByName('emp_status').AsString;
  end;
  edEmp.SetFocus;
end;

procedure TfrmCambiaStatus.btCliClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cli_nombre, cli_referencia, cli_codigo');
  Search.Query.Add('from clientes');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Referencia');
  Search.AliasFields.Add('C�digo');
  if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
    Search.ResultField := 'cli_codigo'
  else
    Search.ResultField := 'cli_referencia';
  Search.Title := 'Clientes';
  if Search.execute then
  begin
    edCli.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cli_nombre, cli_status from clientes');
    if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
      dm.Query1.SQL.Add('where cli_codigo = '+Search.ValueField)
    else
      dm.Query1.SQL.Add('where cli_referencia = '+QuotedStr(Search.ValueField));
    dm.Query1.SQL.Add('and emp_codigo = '+IntToStr(dm.vp_cia));
    dm.Query1.Open;
    tCli.Text := dm.Query1.FieldByName('cli_nombre').AsString;
    stCli.Caption := dm.Query1.FieldByName('cli_status').AsString;
  end;
  edCli.SetFocus;
end;

procedure TfrmCambiaStatus.btProvClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select sup_nombre, sup_codigo');
  Search.Query.Add('from proveedores');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.ResultField := 'sup_codigo';
  Search.Title := 'Proveedores';
  if Search.execute then
  begin
    edProv.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select sup_nombre, sup_status from proveedores');
    dm.Query1.SQL.Add('where sup_codigo = '+Search.ValueField);
    dm.Query1.SQL.Add('and emp_codigo = '+IntToStr(dm.QParametrosPAR_INVEMPRESA.Value));
    dm.Query1.Open;
    tProv.Text := dm.Query1.FieldByName('sup_nombre').AsString;
    stProv.Caption := dm.Query1.FieldByName('sup_status').AsString;
  end;
  edProv.SetFocus;
end;

procedure TfrmCambiaStatus.btVendClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select ven_nombre, ven_codigo');
  Search.Query.Add('from vendedores');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.ResultField := 'ven_codigo';
  Search.Title := 'Vendedores';
  if Search.execute then
  begin
    edVend.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select ven_nombre, ven_status from vendedores');
    dm.Query1.SQL.Add('where ven_codigo = '+Search.ValueField);
    dm.Query1.SQL.Add('and emp_codigo = '+IntToStr(dm.vp_cia));
    dm.Query1.Open;
    tVend.Text := dm.Query1.FieldByName('ven_nombre').AsString;
    stVend.Caption := dm.Query1.FieldByName('ven_status').AsString;
  end;
  edVend.SetFocus;
end;

procedure TfrmCambiaStatus.btUsuClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select usu_nombre, usu_codigo');
  Search.Query.Add('from usuarios');
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.ResultField := 'usu_codigo';
  Search.Title := 'Usuarios';
  if Search.execute then
  begin
    edUsu.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select usu_nombre, usu_status from usuarios');
    dm.Query1.SQL.Add('where usu_codigo = '+Search.ValueField);
    dm.Query1.Open;
    tUsu.Text := dm.Query1.FieldByName('usu_nombre').AsString;
    stUsu.Caption := dm.Query1.FieldByName('usu_status').AsString;
  end;
  edUsu.SetFocus;
end;

procedure TfrmCambiaStatus.btCajClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select caj_nombre, caj_codigo');
  Search.Query.Add('from cajeros');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.ResultField := 'caj_codigo';
  Search.Title := 'Cajeros';
  if Search.execute then
  begin
    edCaj.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select caj_nombre, caj_status from cajeros');
    dm.Query1.SQL.Add('where caj_codigo = '+Search.ValueField);
    dm.Query1.SQL.Add('and emp_codigo = '+IntToStr(dm.vp_cia));
    dm.Query1.Open;
    tCaj.Text := dm.Query1.FieldByName('caj_nombre').AsString;
    stCaj.Caption := dm.Query1.FieldByName('caj_status').AsString;
  end;
  edCaj.SetFocus;
end;

procedure TfrmCambiaStatus.edEmpChange(Sender: TObject);
begin
  if Trim(edEmp.Text) = '' then
  begin
    tEmp.Text := '';
    stEmp.Caption := '';
  end;
end;

procedure TfrmCambiaStatus.edCliChange(Sender: TObject);
begin
  if Trim(edCli.Text) = '' then
  begin
    tCli.Text := '';
    stCli.Caption := '';
  end;
end;

procedure TfrmCambiaStatus.edProvChange(Sender: TObject);
begin
  if Trim(edProv.Text) = '' then
  begin
    tProv.Text := '';
    stProv.Caption := '';
  end;
end;

procedure TfrmCambiaStatus.edVendChange(Sender: TObject);
begin
  if Trim(edVend.Text) = '' then
  begin
    tVend.Text := '';
    stVend.Caption := '';
  end;
end;

procedure TfrmCambiaStatus.edUsuChange(Sender: TObject);
begin
  if Trim(edUsu.Text) = '' then
  begin
    tUsu.Text := '';
    stUsu.Caption := '';
  end;
end;

procedure TfrmCambiaStatus.edCajChange(Sender: TObject);
begin
  if Trim(edCaj.Text) = '' then
  begin
    tCaj.Text := '';
    stCAj.Caption := '';
  end;
end;

procedure TfrmCambiaStatus.edEmpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edEmp.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select emp_nombre, emp_status from empresas');
      dm.Query1.SQL.Add('where emp_codigo = '+trim(edEmp.Text));
      dm.Query1.Open;
      if dm.Query1.RecordCount > 0 then
      begin
        tEmp.Text := dm.Query1.FieldByName('emp_nombre').AsString;
        stEmp.Caption := dm.Query1.FieldByName('emp_status').AsString;
      end
      else
      begin
        tEmp.Text := '';
        MessageDlg('ESTA EMPRESA NO EXISTE',mtError,[mbok],0);
        edEmp.SetFocus;
      end;
    end
    else
      tEmp.Text := '';
  end;
end;

procedure TfrmCambiaStatus.edCliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edCli.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select cli_nombre, cli_status from clientes');
      if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
        dm.Query1.SQL.Add('where cli_codigo = '+trim(edCli.Text))
      else
        dm.Query1.SQL.Add('where cli_referencia = '+QuotedStr(trim(edCli.Text)));
      dm.Query1.SQL.Add('and emp_codigo = '+IntToStr(dm.vp_cia));
      dm.Query1.Open;
      if dm.Query1.RecordCount > 0 then
      begin
        tCli.Text := dm.Query1.FieldByName('cli_nombre').AsString;
        stCli.Caption := dm.Query1.FieldByName('cli_status').AsString;
      end
      else
      begin
        tCli.Text := '';
        MessageDlg('ESTA EMPRESA NO EXISTE',mtError,[mbok],0);
        edCli.SetFocus;
      end;
    end
    else
      tCli.Text := '';
  end;
end;

procedure TfrmCambiaStatus.edProvKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edProv.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select sup_nombre, sup_status from proveedores');
      dm.Query1.SQL.Add('where sup_codigo = '+trim(edProv.Text));
      dm.Query1.SQL.Add('and emp_codigo = '+IntToStr(dm.QParametrosPAR_INVEMPRESA.Value));
      dm.Query1.Open;
      if dm.Query1.RecordCount > 0 then
      begin
        tProv.Text := dm.Query1.FieldByName('sup_nombre').AsString;
        stProv.Caption := dm.Query1.FieldByName('sup_status').AsString;
      end
      else
      begin
        tProv.Text := '';
        MessageDlg('ESTA EMPRESA NO EXISTE',mtError,[mbok],0);
        edProv.SetFocus;
      end;
    end
    else
      tProv.Text := '';
  end;
end;

procedure TfrmCambiaStatus.edVendKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edVend.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select ven_nombre, ven_status from vendedores');
      dm.Query1.SQL.Add('where ven_codigo = '+trim(edVend.Text));
      dm.Query1.SQL.Add('and emp_codigo = '+IntToStr(dm.vp_cia));
      dm.Query1.Open;
      if dm.Query1.RecordCount > 0 then
      begin
        tVend.Text := dm.Query1.FieldByName('ven_nombre').AsString;
        stVend.Caption := dm.Query1.FieldByName('ven_status').AsString;
      end
      else
      begin
        tVend.Text := '';
        MessageDlg('ESTA EMPRESA NO EXISTE',mtError,[mbok],0);
        edVend.SetFocus;
      end;
    end
    else
      tVend.Text := '';
  end;
end;

procedure TfrmCambiaStatus.edUsuKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edUsu.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select usu_nombre, usu_status from usuarios');
      dm.Query1.SQL.Add('where usu_codigo = '+trim(edVend.Text));
      dm.Query1.Open;
      if dm.Query1.RecordCount > 0 then
      begin
        tUsu.Text := dm.Query1.FieldByName('usu_nombre').AsString;
        stUsu.Caption := dm.Query1.FieldByName('usu_status').AsString;
      end
      else
      begin
        tUsu.Text := '';
        MessageDlg('ESTA EMPRESA NO EXISTE',mtError,[mbok],0);
        edUsu.SetFocus;
      end;
    end
    else
      tUsu.Text := '';
  end;
end;

procedure TfrmCambiaStatus.edCajKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edCaj.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select caj_nombre, caj_status from cajeros');
      dm.Query1.SQL.Add('where caj_codigo = '+trim(edVend.Text));
      dm.Query1.SQL.Add('and emp_codigo = '+IntToStr(dm.vp_cia));
      dm.Query1.Open;
      if dm.Query1.RecordCount > 0 then
      begin
        tCaj.Text := dm.Query1.FieldByName('caj_nombre').AsString;
        stCaj.Caption := dm.Query1.FieldByName('caj_status').AsString;
      end
      else
      begin
        tCaj.Text := '';
        MessageDlg('ESTA EMPRESA NO EXISTE',mtError,[mbok],0);
        edCaj.SetFocus;
      end;
    end
    else
      tCaj.Text := '';
  end;
end;

procedure TfrmCambiaStatus.cbOpcionClick(Sender: TObject);
begin
  edEmp.Enabled  := cbOpcion.ItemIndex = 0;
  btEmp.Enabled  := cbOpcion.ItemIndex = 0;
  edCli.Enabled  := cbOpcion.ItemIndex = 1;
  btCli.Enabled  := cbOpcion.ItemIndex = 1;
  edProv.Enabled := cbOpcion.ItemIndex = 2;
  btProv.Enabled := cbOpcion.ItemIndex = 2;
  edVend.Enabled := cbOpcion.ItemIndex = 3;
  btVend.Enabled := cbOpcion.ItemIndex = 3;
  edUsu.Enabled  := cbOpcion.ItemIndex = 4;
  btUsu.Enabled  := cbOpcion.ItemIndex = 4;
  edCaj.Enabled  := cbOpcion.ItemIndex = 5;
  btCaj.Enabled  := cbOpcion.ItemIndex = 5;
  edProd.Enabled  := cbOpcion.ItemIndex = 6;
  btProd.Enabled  := cbOpcion.ItemIndex = 6;
end;

procedure TfrmCambiaStatus.btAnulaClick(Sender: TObject);
var
  a : integer;
begin
  if MessageDlg('SEGURO QUE QUIERE CAMBIAR EL STATUS?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    case cbOpcion.ItemIndex of
    0 : begin //Empresas
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('update empresas set emp_status = :st');
          dm.Query1.SQL.Add('where emp_codigo = '+Trim(edEmp.Text));
          if Trim(stEmp.Caption) = 'ACT' then
            dm.Query1.Parameters.ParamByName('st').Value := 'INA'
          else
            dm.Query1.Parameters.ParamByName('st').Value := 'ACT';
          dm.Query1.ExecSQL;
        end;
    1 : begin //Clientes
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('update clientes set cli_status = :st');
          if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
            dm.Query1.SQL.Add('where cli_codigo = '+Trim(edCli.Text))
          else
            dm.Query1.SQL.Add('where cli_referencia = '+QuotedStr(Trim(edCli.Text)));
          dm.Query1.SQL.Add('and emp_codigo = :emp');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
          if Trim(stCli.Caption) = 'ACT' then
            dm.Query1.Parameters.ParamByName('st').Value := 'INA'
          else
            dm.Query1.Parameters.ParamByName('st').Value := 'ACT';
          dm.Query1.ExecSQL;
        end;
    2 : begin //Proveedores
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('update proveedores set sup_status = :st');
          dm.Query1.SQL.Add('where sup_codigo = '+Trim(edProv.Text));
          dm.Query1.SQL.Add('and emp_codigo = :emp');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
          if Trim(stProv.Caption) = 'ACT' then
            dm.Query1.Parameters.ParamByName('st').Value := 'INA'
          else
            dm.Query1.Parameters.ParamByName('st').Value := 'ACT';
          dm.Query1.ExecSQL;
        end;
    3 : begin //Vendedores
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('update vendedores set ven_status = :st');
          dm.Query1.SQL.Add('where ven_codigo = '+Trim(edVend.Text));
          dm.Query1.SQL.Add('and emp_codigo = :emp');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
          if Trim(stVend.Caption) = 'ACT' then
            dm.Query1.Parameters.ParamByName('st').Value := 'INA'
          else
            dm.Query1.Parameters.ParamByName('st').Value := 'ACT';
          dm.Query1.ExecSQL;
        end;
    4 : begin //Usuarios
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('update usuarios set usu_status = :st');
          dm.Query1.SQL.Add('where usu_codigo = '+Trim(edUsu.Text));
          if Trim(stUsu.Caption) = 'ACT' then
            dm.Query1.Parameters.ParamByName('st').Value := 'INA'
          else
            dm.Query1.Parameters.ParamByName('st').Value := 'ACT';
          dm.Query1.ExecSQL;
        end;
    5 : begin //Cajeros
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('update cajeros set caj_status = :st');
          dm.Query1.SQL.Add('where caj_codigo = '+Trim(edCaj.Text));
          dm.Query1.SQL.Add('and emp_codigo = :emp');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
          if Trim(stCaj.Caption) = 'ACT' then
            dm.Query1.Parameters.ParamByName('st').Value := 'INA'
          else
            dm.Query1.Parameters.ParamByName('st').Value := 'ACT';
          dm.Query1.ExecSQL;
        end;
    6 : begin //Productos
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('update productos set pro_status = :st');
          if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'I' then
            dm.Query1.SQL.Add('where pro_codigo = '+Trim(edProd.Text))
          else if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'O' then
            dm.Query1.SQL.Add('where pro_roriginal = '+QuotedStr(Trim(edProd.Text)))
          else if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'F' then
            dm.Query1.SQL.Add('where pro_rfabric = '+QuotedStr(Trim(edProd.Text)));
          dm.Query1.SQL.Add('and emp_codigo = :emp');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
          if Trim(stProd.Caption) = 'ACT' then
            dm.Query1.Parameters.ParamByName('st').Value := 'INA'
          else
            dm.Query1.Parameters.ParamByName('st').Value := 'ACT';
          dm.Query1.ExecSQL;
        end;
    end;
    MessageDlg(cbOpcion.Items[cbOpcion.ItemIndex]+' CAMBIO DE STATUS',mtInformation,[mbok],0);
    with frmCambiaStatus do
    begin
      for a := 0 to ComponentCount -1 do
        if Components[a].ClassType = TEdit then
          (Components[a] as TEdit).Text := ''
        else if Components[a].ClassType = TStaticText then
          (Components[a] as TStaticText).Caption := '';
    end;
    cbOpcion.ItemIndex := 0;
  end;
end;

procedure TfrmCambiaStatus.btProdClick(Sender: TObject);
begin
  application.createform(tfrmBuscaProducto, frmBuscaProducto);
  frmBuscaProducto.st := 'r';
  frmBuscaProducto.showmodal;
  if frmBuscaProducto.seleccion = 1 then
  begin
    if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
       edProd.text := inttostr(frmBuscaProducto.QProductosPRO_CODIGO.value)
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
       edProd.text := frmBuscaProducto.QProductosPRO_RFABRIC.value
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
       edProd.text := frmBuscaProducto.QProductosPRO_RORIGINAL.value;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select pro_nombre, pro_codigo, pro_status from productos');
    dm.Query1.sql.add('where emp_codigo = :emp');
    if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
       dm.Query1.sql.add('and pro_codigo = '+edProd.text)
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
       dm.Query1.sql.add('and pro_rfabric = '+#39+edProd.text+#39)
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
       dm.Query1.sql.add('and pro_roriginal = '+#39+edProd.text+#39);
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.value;
    dm.Query1.open;

    tProd.text := dm.Query1.FieldByName('pro_nombre').AsString;
    stProd.Caption := dm.Query1.FieldByName('pro_status').AsString;
  end;
  frmBuscaProducto.release;
  edProd.setfocus;
end;

procedure TfrmCambiaStatus.edProdChange(Sender: TObject);
begin
  if Trim(edProd.Text) = '' then
  begin
    tProd.Text := '';
    stProd.Caption := '';
  end;
end;

procedure TfrmCambiaStatus.edProdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edProd.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select pro_codigo, pro_nombre, pro_Status from productos');
      dm.Query1.sql.add('where emp_codigo = :emp');
      if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
         dm.Query1.sql.add('and pro_codigo = '+edProd.text)
      else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
         dm.Query1.sql.add('and pro_rfabric = '+#39+edProd.text+#39)
      else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
         dm.Query1.sql.add('and pro_roriginal = '+#39+edProd.text+#39);
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('ESTE PRODUCTO NO EXISTE',mterror,[mbyes,mbno],0);
        edProd.setfocus;
      end
      else
      begin
        tProd.text := dm.Query1.FieldByName('pro_nombre').AsString;
        stProd.Caption := dm.Query1.FieldByName('pro_status').AsString;
      end;
    end;
  end;
end;

procedure TfrmCambiaStatus.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

end.
