unit PVENTA206;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, QuerySearchDlgADO;

type
  TfrmRepInvTransferencia = class(TForm)
    btAlma: TSpeedButton;
    Label6: TLabel;
    tAlma: TEdit;
    edAlma: TEdit;
    Label2: TLabel;
    fecha1: TDateTimePicker;
    fecha2: TDateTimePicker;
    btClose: TBitBtn;
    btPrint: TBitBtn;
    Search: TQrySearchDlgADO;
    Label3: TLabel;
    btProveedor: TSpeedButton;
    edProveedor: TEdit;
    tProveedor: TEdit;
    btFamilia: TSpeedButton;
    Label5: TLabel;
    tFamilia: TEdit;
    edFamilia: TEdit;
    btDepto: TSpeedButton;
    Label27: TLabel;
    tDepto: TEdit;
    edDepto: TEdit;
    btgerente: TSpeedButton;
    Label15: TLabel;
    tgerente: TEdit;
    edGerente: TEdit;
    procedure btAlmaClick(Sender: TObject);
    procedure edAlmaChange(Sender: TObject);
    procedure edAlmaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btPrintClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edProveedorChange(Sender: TObject);
    procedure edProveedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edFamiliaChange(Sender: TObject);
    procedure edFamiliaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDeptoChange(Sender: TObject);
    procedure edDeptoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edGerenteChange(Sender: TObject);
    procedure edGerenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btProveedorClick(Sender: TObject);
    procedure btFamiliaClick(Sender: TObject);
    procedure btDeptoClick(Sender: TObject);
    procedure btgerenteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRepInvTransferencia: TfrmRepInvTransferencia;

implementation

uses SIGMA01, RVENTA111, DB;

{$R *.dfm}

procedure TfrmRepInvTransferencia.btAlmaClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Query.clear;
  Search.Query.add('select alm_nombre, alm_codigo');
  Search.Query.add('from almacen');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.ResultField := 'alm_codigo';
  Search.Title := 'Listado de Almacenes';
  if Search.execute then
  begin
    edAlma.text := search.valuefield;
    edAlma.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select alm_nombre');
    dm.Query1.sql.add('from almacen');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and alm_codigo = :alm');
    dm.Query1.Parameters.parambyname('alm').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tAlma.text := dm.Query1.fieldbyname('alm_nombre').asstring;
    edAlma.setfocus;
  end;
end;

procedure TfrmRepInvTransferencia.edAlmaChange(Sender: TObject);
begin
  if trim(edAlma.text) = '' then tAlma.text := '';
end;

procedure TfrmRepInvTransferencia.edAlmaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edAlma.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select alm_nombre');
      dm.Query1.sql.add('from almacen');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and alm_codigo = :alm');
      dm.Query1.Parameters.parambyname('alm').Value := strtoint(edAlma.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tAlma.text := dm.Query1.fieldbyname('alm_nombre').asstring;
    end
    else
      tAlma.text := '';
  end;
end;

procedure TfrmRepInvTransferencia.FormCreate(Sender: TObject);
begin
  fecha1.Date := date;
  fecha2.Date := date;
end;

procedure TfrmRepInvTransferencia.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepInvTransferencia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmRepInvTransferencia.btPrintClick(Sender: TObject);
begin
  if Trim(edAlma.Text) = '' then
  begin
    MessageDlg('Debe especificar el almac�n',mtError,[mbok],0);
    edAlma.SetFocus;
  end
  else
  begin
    Application.CreateForm(tRInvTransferencia, RInvTransferencia);
    RInvTransferencia.lbAlmacen.Caption := tAlma.Text;
    RInvTransferencia.lbdepto.caption   := tdepto.Text;
    RInvTransferencia.lbfam.caption     := tFamilia.Text;
    RInvTransferencia.lbger.caption     := tgerente.Text;
    RInvTransferencia.lbprov.caption    := tProveedor.Text;
    RInvTransferencia.lbFecha.Caption     := 'Del '+DateToStr(fecha1.Date)+' Al '+DateToStr(fecha2.Date);
    RInvTransferencia.QTrans.SQL.Add('and p.emp_codigo = '+IntToStr(dm.QParametrosPAR_INVEMPRESA.Value));

    if Trim(edProveedor.Text) <> '' then
       RInvTransferencia.QTrans.SQL.Add('and p.sup_codigo = '+ Trim(edProveedor.Text));

    if Trim(edDepto.Text) <> '' then
       RInvTransferencia.QTrans.SQL.Add('and p.dep_codigo = '+ Trim(edDepto.Text));

    if Trim(edFamilia.Text) <> '' then
       RInvTransferencia.QTrans.SQL.Add('and p.fam_codigo = '+ Trim(edFamilia.Text));

    if Trim(edGerente.Text) <> '' then
       RInvTransferencia.QTrans.SQL.Add('and p.ger_codigo = '+ Trim(edGerente.Text));

    RInvTransferencia.QTrans.SQL.Add('group by d.pro_codigo, d.pro_roriginal, d.pro_nombre, p.pro_costo');
    RInvTransferencia.QTrans.SQL.Add('order by d.pro_nombre');

    RInvTransferencia.QTrans.Parameters.ParamByName('emp').Value := dm.vp_cia;
    RInvTransferencia.QTrans.Parameters.ParamByName('fec1').DataType := ftDate;
    RInvTransferencia.QTrans.Parameters.ParamByName('fec2').DataType := ftDate;
    RInvTransferencia.QTrans.Parameters.ParamByName('fec1').Value := fecha1.Date;
    RInvTransferencia.QTrans.Parameters.ParamByName('fec2').Value := fecha2.Date;
    RInvTransferencia.QTrans.Parameters.ParamByName('alm').Value  := StrToInt(edAlma.Text);
    RInvTransferencia.QTrans.Open;
    RInvTransferencia.PrinterSetup;
    RInvTransferencia.Preview;
    RInvTransferencia.Destroy;
  end;
end;

procedure TfrmRepInvTransferencia.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmRepInvTransferencia.edProveedorChange(Sender: TObject);
begin
  if trim(edProveedor.text) = '' then tProveedor.text := '';
end;

procedure TfrmRepInvTransferencia.edProveedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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

procedure TfrmRepInvTransferencia.edFamiliaChange(Sender: TObject);
begin
  if trim(edFamilia.text) = '' then tFamilia.text := '';
end;

procedure TfrmRepInvTransferencia.edFamiliaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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

procedure TfrmRepInvTransferencia.edDeptoChange(Sender: TObject);
begin
  if trim(edDepto.text) = '' then tDepto.text := '';
end;

procedure TfrmRepInvTransferencia.edDeptoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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

procedure TfrmRepInvTransferencia.edGerenteChange(Sender: TObject);
begin
  if trim(edGerente.text) = '' then tgerente.text := '';
end;

procedure TfrmRepInvTransferencia.edGerenteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edGerente.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select ger_nombre from Gerentes');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and ger_codigo = :ger');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('ger').Value := strtoint(trim(edGerente.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('PREVENTA NO EXISTE',mterror,[mbok],0);
        edGerente.SetFocus;
      end
      else
        tgerente.text := dm.Query1.fieldbyname('ger_nombre').asstring;
    end;
  end;
end;

procedure TfrmRepInvTransferencia.btProveedorClick(Sender: TObject);
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

procedure TfrmRepInvTransferencia.btFamiliaClick(Sender: TObject);
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

procedure TfrmRepInvTransferencia.btDeptoClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Query.clear;
  Search.Query.add('select dep_nombre, dep_codigo');
  Search.Query.add('from departamentos');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.Query.add('and dep_tipo = '+QuotedStr('V'));
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
    dm.Query1.sql.add('and dep_tipo = '+QuotedStr('V'));
    dm.Query1.Parameters.parambyname('dep').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tDepto.text := dm.Query1.fieldbyname('dep_nombre').asstring;
    edDepto.setfocus;
  end;
end;

procedure TfrmRepInvTransferencia.btgerenteClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C�digo');
  Search.Query.clear;
  Search.Query.add('select ger_nombre, ger_codigo');
  Search.Query.add('from gerentes');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'ger_Codigo';
  Search.Title := 'Gerentes';
  if Search.execute then
  begin
    edGerente.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select ger_nombre from gerentes');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and ger_Codigo = :ger');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('ger').Value := strtoint(trim(edGerente.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('PREVENTA NO EXISTE',mterror,[mbok],0)
    else
      tgerente.text := dm.Query1.fieldbyname('ger_nombre').asstring;
    edGerente.setfocus;
  end;
end;

end.

