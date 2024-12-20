unit PVENTA115;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, QuerySearchDlgADO;

type
  TfrmRepFisico = class(TForm)
    btClose: TBitBtn;
    btPrint: TBitBtn;
    btFamilia: TSpeedButton;
    Label4: TLabel;
    btDepto: TSpeedButton;
    Label27: TLabel;
    Label1: TLabel;
    tFamilia: TEdit;
    tDepto: TEdit;
    edDepto: TEdit;
    edFamilia: TEdit;
    cbOrden: TComboBox;
    Search: TQrySearchDlgADO;
    btAlmacen: TSpeedButton;
    Label3: TLabel;
    tAlmacen: TEdit;
    edAlmacen: TEdit;
    rgtipo: TRadioGroup;
    Label2: TLabel;
    edLetra1: TEdit;
    edLetra2: TEdit;
    Label5: TLabel;
    edUbicacion: TEdit;
    Label6: TLabel;
    btProveedor: TSpeedButton;
    edProveedor: TEdit;
    tProveedor: TEdit;
    Label7: TLabel;
    btgerente: TSpeedButton;
    edgerente: TEdit;
    tgerente: TEdit;
    Label8: TLabel;
    cbexistencia: TComboBox;
    btMarca: TSpeedButton;
    Label9: TLabel;
    tMArca: TEdit;
    edMarca: TEdit;
    btcolor: TSpeedButton;
    Label18: TLabel;
    tcolor: TEdit;
    edColor: TEdit;
    btgondolero: TSpeedButton;
    Label17: TLabel;
    tgondolero: TEdit;
    edGondolero: TEdit;
    procedure btCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btFamiliaClick(Sender: TObject);
    procedure btDeptoClick(Sender: TObject);
    procedure edFamiliaChange(Sender: TObject);
    procedure edDeptoChange(Sender: TObject);
    procedure btAlmacenClick(Sender: TObject);
    procedure btPrintClick(Sender: TObject);
    procedure edAlmacenChange(Sender: TObject);
    procedure edAlmacenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edFamiliaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDeptoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btProveedorClick(Sender: TObject);
    procedure edProveedorChange(Sender: TObject);
    procedure edProveedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btgerenteClick(Sender: TObject);
    procedure edgerenteChange(Sender: TObject);
    procedure edgerenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btMarcaClick(Sender: TObject);
    procedure btcolorClick(Sender: TObject);
    procedure btgondoleroClick(Sender: TObject);
    procedure edMarcaChange(Sender: TObject);
    procedure edColorChange(Sender: TObject);
    procedure edGondoleroChange(Sender: TObject);
    procedure edGondoleroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edColorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edMarcaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRepFisico: TfrmRepFisico;

implementation

uses SIGMA01, RVENTA29, RVENTA63;

{$R *.dfm}

procedure TfrmRepFisico.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepFisico.FormCreate(Sender: TObject);
begin
  cbOrden.ItemIndex := 3;
end;

procedure TfrmRepFisico.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
end;

procedure TfrmRepFisico.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmRepFisico.btFamiliaClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Query.clear;
  Search.Query.add('select fam_nombre, fam_codigo');
  Search.Query.add('from familias');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.ResultField := 'fam_codigo';
  Search.Title := 'Listado de Familias';
  if Search.execute then
  begin
    edFamilia.text := search.valuefield;
    edFamilia.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select fam_codigo, fam_nombre');
    dm.Query1.sql.add('from familias');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and fam_codigo = :fam');
    dm.Query1.Parameters.parambyname('fam').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tFamilia.text := dm.Query1.fieldbyname('fam_nombre').asstring;
    edFamilia.setfocus;
  end;
end;

procedure TfrmRepFisico.btDeptoClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Query.clear;
  Search.Query.add('select dep_nombre, dep_codigo');
  Search.Query.add('from departamentos');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.ResultField := 'dep_codigo';
  Search.Title := 'Listado de Departamentos';
  if Search.execute then
  begin
    edDepto.text := search.valuefield;
    edDepto.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select dep_codigo, dep_nombre');
    dm.Query1.sql.add('from departamentos');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and dep_codigo = :dep');
    dm.Query1.Parameters.parambyname('dep').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tDepto.text := dm.Query1.fieldbyname('dep_nombre').asstring;
    edDepto.setfocus;
  end;
end;

procedure TfrmRepFisico.edFamiliaChange(Sender: TObject);
begin
  if trim(edFamilia.text) = '' then tFamilia.text := '';
end;

procedure TfrmRepFisico.edDeptoChange(Sender: TObject);
begin
  if trim(edDepto.text) = '' then tDepto.text := '';
end;

procedure TfrmRepFisico.btAlmacenClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select alm_nombre, alm_codigo');
  Search.Query.Add('from almacen');
  Search.Query.Add('where emp_Codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.Value));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.ResultField := 'alm_codigo';
  Search.Title := 'Almacenes';
  if Search.execute then
  begin
    edAlmacen.text := search.valuefield;
    edAlmacen.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select alm_nombre');
    dm.Query1.sql.add('from almacen');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and alm_codigo = :alm');
    dm.Query1.Parameters.parambyname('alm').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tAlmacen.text := dm.Query1.fieldbyname('alm_nombre').asstring;
    edAlmacen.setfocus;
  end;
end;

procedure TfrmRepFisico.btPrintClick(Sender: TObject);
begin
  if rgtipo.ItemIndex = 1 then
  begin
    if Trim(edAlmacen.Text) <> '' then
    begin
      Application.CreateForm(tRInvFisico, RInvFisico);
      RInvFisico.lbAlmacen.Caption := tAlmacen.Text;
      RInvFisico.lbFamilia.Caption := tFamilia.Text;
      RInvFisico.lbDepto.Caption := tDepto.Text;
      RInvFisico.lbProveedor.Caption := tProveedor.Text;
      RInvFisico.lbFecha.Caption := 'Al '+DateToStr(Date);
      RInvFisico.lbGerente.Caption := tgerente.Text;
      RInvFisico.lbmarca.Caption := tMArca.Text;
      RInvFisico.lbcolor.Caption := tcolor.Text;
      RInvFisico.lbpasillo.Caption := tgondolero.Text;

      if cbexistencia.ItemIndex = 1 then
          RInvFisico.QProd.SQL.Add('and (e.exi_cantidad > 0 or e.exi_empaque > 0)')
      else if cbexistencia.ItemIndex = 2 then
          RInvFisico.QProd.SQL.Add('and (e.exi_cantidad < 0 or e.exi_empaque < 0)')
      else if cbexistencia.ItemIndex = 3 then
          RInvFisico.QProd.SQL.Add('and (e.exi_cantidad = 0 and e.exi_empaque = 0)')
      else if cbexistencia.ItemIndex = 4 then
          RInvFisico.QProd.SQL.Add('and (e.exi_cantidad <> 0 or e.exi_empaque <> 0)');

      if trim(edFamilia.Text) <> '' then
        RInvFisico.QProd.SQL.Add('and p.fam_codigo = '+trim(edFamilia.Text));

      if trim(edDepto.Text) <> '' then
        RInvFisico.QProd.SQL.Add('and p.dep_codigo = '+trim(edDepto.Text));

      if trim(edProveedor.Text) <> '' then
        RInvFisico.QProd.SQL.Add('and P.pro_codigo in (select pro_codigo from prodproveedores where sup_codigo = '+Trim(edProveedor.Text)+')');

      if trim(edgerente.Text) <> '' then
        RInvFisico.QProd.SQL.Add('and p.ger_codigo = '+trim(edgerente.Text));

      if trim(edGondolero.Text) <> '' then
        RInvFisico.QProd.SQL.Add('and p.gon_codigo = '+trim(edGondolero.Text));

      if trim(edMarca.Text) <> '' then
        RInvFisico.QProd.SQL.Add('and p.mar_codigo = '+trim(edMarca.Text));

      if trim(edColor.Text) <> '' then
        RInvFisico.QProd.SQL.Add('and p.col_codigo = '+trim(edColor.Text));

      if (trim(edLetra1.Text) <> '') and (trim(edLetra2.Text) <> '') then
      begin
        RInvFisico.QProd.SQL.Add('and upper(substring(p.pro_nombre,1,1)) between '+QuotedStr(edLetra1.Text)+' and '+QuotedStr(edLetra2.Text));
      end;

      if (trim(edUbicacion.Text) <> '') then
        RInvFisico.QProd.SQL.Add('and upper(p.pro_ubicacion) = '+QuotedStr(edUbicacion.Text));

      case cbOrden.ItemIndex of
        0 : RInvFisico.QProd.SQL.Add('order by p.pro_codigo');
        1 : RInvFisico.QProd.SQL.Add('order by p.pro_roriginal');
        2 : RInvFisico.QProd.SQL.Add('order by p.pro_rfabric');
        3 : RInvFisico.QProd.SQL.Add('order by p.pro_nombre');
        4 : RInvFisico.QProd.SQL.Add('order by p.pro_ubicacion');
      end;

      RInvFisico.QProd.Parameters.ParamByName('alm').Value := StrToInt(edAlmacen.Text);
      RInvFisico.QProd.Open;
      RInvFisico.PrinterSetup;
      RInvFisico.Preview;
      RInvFisico.Destroy;
    end
    else
    begin
      showmessage('debe especificar el almac�n');
      edAlmacen.SetFocus;
    end;
  end
  else
  begin
    if Trim(edAlmacen.Text) <> '' then
    begin
      Application.CreateForm(tRConteoFisico, RConteoFisico);
      RConteoFisico.lbAlmacen.Caption := tAlmacen.Text;
      RConteoFisico.lbFamilia.Caption := tFamilia.Text;
      RConteoFisico.lbDepto.Caption := tDepto.Text;
      RConteoFisico.lbProveedor.Caption := tProveedor.Text;
      RConteoFisico.lbFecha.Caption := 'Al '+DateToStr(Date);
      RConteoFisico.lbmarca.Caption := tMArca.Text;
      RConteoFisico.lbcolor.Caption := tcolor.Text;
      RConteoFisico.lbpasillo.Caption := tgondolero.Text;
      RConteoFisico.lbGerente.Caption := tgerente.Text;

      if cbexistencia.ItemIndex = 1 then
          RConteoFisico.QProd.SQL.Add('and (e.exi_cantidad > 0 or e.exi_empaque > 0)')
      else if cbexistencia.ItemIndex = 2 then
          RConteoFisico.QProd.SQL.Add('and (e.exi_cantidad < 0 or e.exi_empaque < 0)')
      else if cbexistencia.ItemIndex = 3 then
          RConteoFisico.QProd.SQL.Add('and (e.exi_cantidad = 0 and e.exi_empaque = 0)')
      else if cbexistencia.ItemIndex = 4 then
          RConteoFisico.QProd.SQL.Add('and (e.exi_cantidad <> 0 or e.exi_empaque <> 0)');

      if trim(edFamilia.Text) <> '' then
        RConteoFisico.QProd.SQL.Add('and p.fam_codigo = '+trim(edFamilia.Text));

      if trim(edgerente.Text) <> '' then
        RConteoFisico.QProd.SQL.Add('and p.ger_codigo = '+trim(edgerente.Text));

      if trim(edDepto.Text) <> '' then
        RConteoFisico.QProd.SQL.Add('and p.dep_codigo = '+trim(edDepto.Text));

      if trim(edProveedor.Text) <> '' then
        RConteoFisico.QProd.SQL.Add('and P.pro_codigo in (select pro_codigo from prodproveedores where sup_codigo = '+Trim(edProveedor.Text)+')');

      if trim(edGondolero.Text) <> '' then
        RConteoFisico.QProd.SQL.Add('and p.gon_codigo = '+trim(edGondolero.Text));

      if trim(edMarca.Text) <> '' then
        RConteoFisico.QProd.SQL.Add('and p.mar_codigo = '+trim(edMarca.Text));

      if trim(edColor.Text) <> '' then
        RConteoFisico.QProd.SQL.Add('and p.col_codigo = '+trim(edColor.Text));

      if (trim(edLetra1.Text) <> '') and (trim(edLetra2.Text) <> '') then
      begin
        RConteoFisico.QProd.SQL.Add('and upper(substring(p.pro_nombre,1,1)) between '+QuotedStr(edLetra1.Text)+' and '+QuotedStr(edLetra2.Text)); 
      end;

      if (trim(edUbicacion.Text) <> '') then
        RConteoFisico.QProd.SQL.Add('and upper(p.pro_ubicacion) = '+QuotedStr(edUbicacion.Text));

      case cbOrden.ItemIndex of
        0 : RConteoFisico.QProd.SQL.Add('order by p.pro_codigo');
        1 : RConteoFisico.QProd.SQL.Add('order by p.pro_roriginal');
        2 : RConteoFisico.QProd.SQL.Add('order by p.pro_rfabric');
        3 : RConteoFisico.QProd.SQL.Add('order by p.pro_nombre');
      end;

      
      RConteoFisico.QProd.Parameters.ParamByName('alm').Value := StrToInt(edAlmacen.Text);
      RConteoFisico.QProd.Open;
      RConteoFisico.PrinterSetup;
      RConteoFisico.Preview;
      RConteoFisico.Destroy;
    end
    else
    begin
      showmessage('debe especificar el almac�n');
      edAlmacen.SetFocus;
    end;
  end;
end;

procedure TfrmRepFisico.edAlmacenChange(Sender: TObject);
begin
  if trim(edAlmacen.text) = '' then tAlmacen.text := '';
end;

procedure TfrmRepFisico.edAlmacenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edAlmacen.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select alm_nombre');
      dm.Query1.sql.add('from almacen');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and alm_codigo = :alm');
      dm.Query1.Parameters.parambyname('alm').Value := strtoint(edAlmacen.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tAlmacen.text := dm.Query1.fieldbyname('alm_nombre').asstring;
    end
    else
      tAlmacen.text := '';
  end;
end;

procedure TfrmRepFisico.edFamiliaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edFamilia.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select fam_codigo, fam_nombre');
      dm.Query1.sql.add('from familias');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and fam_codigo = :fam');
      dm.Query1.Parameters.parambyname('fam').Value := strtoint(edFamilia.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tFamilia.text := dm.Query1.fieldbyname('fam_nombre').asstring;
    end
    else
      tFamilia.text := '';
  end;
end;

procedure TfrmRepFisico.edDeptoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edDepto.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select dep_codigo, dep_nombre');
      dm.Query1.sql.add('from departamentos');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and dep_codigo = :dep');
      dm.Query1.Parameters.parambyname('dep').Value := strtoint(edDepto.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tDepto.text := dm.Query1.fieldbyname('dep_nombre').asstring;
    end
    else
      tDepto.text := '';
  end;
end;

procedure TfrmRepFisico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmRepFisico.btProveedorClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Query.clear;
  Search.Query.add('select sup_nombre, sup_codigo');
  Search.ResultField := 'sup_codigo';
  Search.Query.add('from proveedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.Query.add('and sup_Status = '+#39+'ACT'+#39);
  Search.Title := 'Listado de Proveedores';
  if Search.execute then
  begin
    edProveedor.text := search.valuefield;
    edProveedor.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select sup_codigo, sup_nombre, sup_balance,');
    dm.Query1.sql.add('sup_direccion, sup_localidad, sup_telefono, sup_fax');
    dm.Query1.sql.add('from proveedores');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and sup_Status = '+#39+'ACT'+#39);
    dm.Query1.sql.add('and sup_codigo = :sup');
    dm.Query1.Parameters.parambyname('sup').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tProveedor.text := dm.Query1.fieldbyname('sup_nombre').asstring;
    edProveedor.setfocus;
  end;
end;

procedure TfrmRepFisico.edProveedorChange(Sender: TObject);
begin
  if trim(edProveedor.text) = '' then tProveedor.text := '';
end;

procedure TfrmRepFisico.edProveedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edProveedor.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select sup_codigo, sup_nombre, sup_balance,');
      dm.Query1.sql.add('sup_direccion, sup_localidad, sup_telefono, sup_fax');
      dm.Query1.sql.add('from proveedores');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and sup_Status = '+#39+'ACT'+#39);
      dm.Query1.sql.add('and sup_codigo = :sup');
      dm.Query1.Parameters.parambyname('sup').Value := strtoint(edProveedor.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tProveedor.text := dm.Query1.fieldbyname('sup_nombre').asstring;
    end
    else
      tProveedor.text := '';
  end;
end;

procedure TfrmRepFisico.btgerenteClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Query.clear;
  Search.Query.add('select ger_nombre, ger_codigo');
  Search.ResultField := 'ger_codigo';
  Search.Query.add('from gerentes');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.Title := 'Listado de Gerentes';
  if Search.execute then
  begin
    edgerente.text := search.valuefield;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select ger_codigo, ger_nombre');
    dm.Query1.sql.add('from gerentes');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and ger_codigo = :ger');
    dm.Query1.Parameters.parambyname('ger').Value := strtoint(edgerente.text);
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tgerente.text := dm.Query1.fieldbyname('ger_nombre').asstring;
    edgerente.setfocus;
  end;
end;

procedure TfrmRepFisico.edgerenteChange(Sender: TObject);
begin
  if trim(edgerente.text) = '' then tgerente.text := '';
end;

procedure TfrmRepFisico.edgerenteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edgerente.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select ger_codigo, ger_nombre');
      dm.Query1.sql.add('from gerentes');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and ger_codigo = :ger');
      dm.Query1.Parameters.parambyname('ger').Value := strtoint(edgerente.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tgerente.text := dm.Query1.fieldbyname('ger_nombre').asstring;
    end
    else
      tgerente.text := '';
  end;
end;

procedure TfrmRepFisico.btMarcaClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Query.clear;
  Search.Query.add('select mar_nombre, mar_codigo');
  Search.Query.add('from marcas');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.ResultField := 'mar_codigo';
  Search.Title := 'Listado de Marcas';
  if Search.execute then
  begin
    edMarca.text := search.valuefield;
    edMarca.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select mar_nombre');
    dm.Query1.sql.add('from marcas');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and mar_codigo = :mar');
    dm.Query1.Parameters.parambyname('mar').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tMArca.text := dm.Query1.fieldbyname('mar_nombre').asstring;
    edMarca.setfocus;
  end;
end;

procedure TfrmRepFisico.btcolorClick(Sender: TObject);
begin
  Search.Title := 'Colores';
  Search.ResultField := 'col_codigo';
  Search.query.Clear;
  Search.query.add('select col_nombre, col_codigo');
  Search.query.add('from colores');
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  if search.execute then
  begin
    edColor.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select col_nombre from colores');
    dm.Query1.sql.add('where col_codigo = :col');
    dm.Query1.Parameters.parambyname('col').Value := strtoint(trim(edColor.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('COLOR NO EXISTE',mterror,[mbok],0)
    else
      tcolor.text := dm.Query1.fieldbyname('col_nombre').asstring;
    edColor.setfocus;
  end;
end;

procedure TfrmRepFisico.btgondoleroClick(Sender: TObject);
begin
  Search.Title := 'Pasillo';
  Search.ResultField := 'gon_codigo';
  Search.query.Clear;
  Search.query.add('select gon_nombre, gon_codigo');
  Search.query.add('from gondoleros');
  Search.query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.Value));
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  if search.execute then
  begin
    edGondolero.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select gon_nombre from gondoleros');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and gon_codigo = :gon');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('gon').Value := strtoint(trim(edGondolero.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('PASILLO NO EXISTE',mterror,[mbok],0)
    else
      tgondolero.text := dm.Query1.fieldbyname('gon_nombre').asstring;
    edGondolero.setfocus;
  end;
end;

procedure TfrmRepFisico.edMarcaChange(Sender: TObject);
begin
  if trim(edMarca.text) = '' then tMArca.text := '';
end;

procedure TfrmRepFisico.edColorChange(Sender: TObject);
begin
  if trim(edColor.text) = '' then tcolor.text := '';
end;

procedure TfrmRepFisico.edGondoleroChange(Sender: TObject);
begin
  if trim(edGondolero.text) = '' then tgondolero.text := '';
end;

procedure TfrmRepFisico.edGondoleroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edGondolero.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select gon_nombre from gondoleros');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and gon_codigo = :gon');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('gon').Value := strtoint(trim(edGondolero.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('PASILLO NO EXISTE',mterror,[mbok],0);
        edGondolero.SetFocus;
      end
      else
        tgondolero.text := dm.Query1.fieldbyname('gon_nombre').asstring;
    end;
  end;
end;

procedure TfrmRepFisico.edColorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edColor.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select col_nombre from colores');
      dm.Query1.sql.add('where col_codigo = :col');
      dm.Query1.Parameters.parambyname('col').Value := strtoint(trim(edColor.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('COLOR NO EXISTE',mterror,[mbok],0);
        edColor.SetFocus;
      end
      else
        tcolor.text := dm.Query1.fieldbyname('col_nombre').asstring;
    end;
  end;
end;

procedure TfrmRepFisico.edMarcaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edMarca.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select mar_nombre');
      dm.Query1.sql.add('from marcas');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and mar_codigo = :mar');
      dm.Query1.Parameters.parambyname('mar').Value := strtoint(edMarca.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tMArca.text := dm.Query1.fieldbyname('mar_nombre').asstring;
    end
    else
      tMArca.text := '';
  end;
end;

end.
