unit PVENTA29;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Grids, DBGrids, DB,
  IBCustomDataSet, IBQuery, IBUpdateSQL, ADODB, QuerySearchDlgADO;

type
  TfrmInvFisico = class(TForm)
    btClose: TBitBtn;
    QExistencias: TADOQuery;
    dsExistencias: TDataSource;
    Panel1: TPanel;
    QExistenciasALM_CODIGO: TIntegerField;
    QExistenciasEMP_CODIGO: TIntegerField;
    QExistenciasEXI_CANTIDAD: TFloatField;
    QExistenciasPRO_CODIGO: TIntegerField;
    Grid: TDBGrid;
    QProd: TADOQuery;
    QProdPRO_CODIGO: TIntegerField;
    QProdPRO_NOMBRE: TIBStringField;
    QExistenciasEXI_FISICO: TFloatField;
    QExistenciasPRO_NOMBRE: TIBStringField;
    QExistenciasEXI_EMPAQUE: TFloatField;
    QExistenciasEXI_FISICOEMP: TFloatField;
    Memo1: TMemo;
    btFind: TBitBtn;
    ckunidad: TCheckBox;
    btFamilia: TSpeedButton;
    Label4: TLabel;
    btDepto: TSpeedButton;
    Label27: TLabel;
    Label2: TLabel;
    btProveedor: TSpeedButton;
    btMarca: TSpeedButton;
    Label3: TLabel;
    btAlma: TSpeedButton;
    Label6: TLabel;
    tFamilia: TEdit;
    tDepto: TEdit;
    edProveedor: TEdit;
    tProveedor: TEdit;
    edDepto: TEdit;
    edFamilia: TEdit;
    tMArca: TEdit;
    edMarca: TEdit;
    tAlma: TEdit;
    edAlma: TEdit;
    btrefresca: TBitBtn;
    Search: TQrySearchDlgADO;
    ckempaque: TCheckBox;
    ckunidad2: TCheckBox;
    ckempaque2: TCheckBox;
    ADOQuery1: TADOQuery;
    QExistenciasPRO_RORIGINAL: TStringField;
    Edit1: TEdit;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure GridColEnter(Sender: TObject);
    procedure GridEnter(Sender: TObject);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QExistenciasAfterInsert(DataSet: TDataSet);
    procedure QExistenciasBeforeDelete(DataSet: TDataSet);
    procedure QExistenciasAfterPost(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure ckunidadClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btAlmaClick(Sender: TObject);
    procedure btFamiliaClick(Sender: TObject);
    procedure btDeptoClick(Sender: TObject);
    procedure btMarcaClick(Sender: TObject);
    procedure btProveedorClick(Sender: TObject);
    procedure edAlmaChange(Sender: TObject);
    procedure edAlmaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edFamiliaChange(Sender: TObject);
    procedure edFamiliaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDeptoChange(Sender: TObject);
    procedure edDeptoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edMarcaChange(Sender: TObject);
    procedure edMarcaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edProveedorChange(Sender: TObject);
    procedure edProveedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btrefrescaClick(Sender: TObject);
    procedure QExistenciasAfterEdit(DataSet: TDataSet);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Enter(Sender: TObject);
    procedure QProdBeforeOpen(DataSet: TDataSet);
  private
    vl_cant_emp, vl_cant_und : Real;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInvFisico: TfrmInvFisico;

implementation

uses SIGMA00, SIGMA01, PVENTA33;


{$R *.DFM}

procedure TfrmInvFisico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmInvFisico.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmInvFisico.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
end;

procedure TfrmInvFisico.FormActivate(Sender: TObject);
begin
  frmInvFisico.top := 1;
  if not QExistencias.active then
  begin
    QProd.open;
  end;
  frmMain.ExportXLS.FileName := 'Fisico.XLS';
  frmMain.ExportXLS.Sheets[0].DBGrid := Grid;
  frmMain.ExportXLS.Sheets[1].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[0].Exported := True;
  
end;

procedure TfrmInvFisico.GridColEnter(Sender: TObject);
begin
  if Grid.selectedindex > 1 then Grid.selectedindex := 0;
end;

procedure TfrmInvFisico.GridEnter(Sender: TObject);
begin
  Grid.selectedindex := 0;
end;

procedure TfrmInvFisico.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
  if Grid.SelectedIndex = 1 then
    begin
      Grid.SelectedIndex := 0;
      QExistencias.Next;
      Edit1.SetFocus;
    end
    else
      Grid.SelectedIndex := Grid.SelectedIndex + 1;
  end;
end;

procedure TfrmInvFisico.QExistenciasAfterInsert(DataSet: TDataSet);
begin
  QExistencias.cancel;
end;

procedure TfrmInvFisico.QExistenciasBeforeDelete(DataSet: TDataSet);
begin
  abort;
end;

procedure TfrmInvFisico.QExistenciasAfterPost(DataSet: TDataSet);
begin
QExistencias.UpdateBatch;
Edit1.SetFocus;
end;

procedure TfrmInvFisico.FormKeyPress(Sender: TObject; var Key: Char);
begin
{  if key = chr(vk_return) then
     if activecontrol.classtype <> tdbgrid then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;}
end;

procedure TfrmInvFisico.FormCreate(Sender: TObject);
begin
  Memo1.Lines := QExistencias.SQL;
  QExistencias.SQL.Clear;
  QExistencias.SQL := Memo1.Lines;
  QExistencias.SQL.Add('order by p.pro_nombre');
end;

procedure TfrmInvFisico.ckunidadClick(Sender: TObject);
begin
  btrefrescaClick(Self);
end;

procedure TfrmInvFisico.btFindClick(Sender: TObject);
begin
  application.createform(tfrmBuscaProducto, frmBuscaProducto);
  frmBuscaProducto.showmodal;
  if frmBuscaProducto.seleccion = 1 then
  begin
    QExistencias.Locate('pro_codigo',frmBuscaProducto.QProductosPRO_CODIGO.Value, []);
    Grid.SetFocus;
  end;
  frmBuscaProducto.release;
end;

procedure TfrmInvFisico.btAlmaClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Query.clear;
  Search.Query.add('select alm_nombre, alm_codigo');
  Search.Query.add('from almacen');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  //Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
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
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    //dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tAlma.text := dm.Query1.fieldbyname('alm_nombre').asstring;
    edAlma.setfocus;
    btrefrescaClick(Self);
  end;
end;

procedure TfrmInvFisico.btFamiliaClick(Sender: TObject);
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
    btrefrescaClick(Self);
  end;
end;

procedure TfrmInvFisico.btDeptoClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Query.clear;
  Search.Query.add('select dep_nombre, dep_codigo');
  Search.Query.add('from departamentos');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  //Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
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
    btrefrescaClick(Self);
  end;
end;

procedure TfrmInvFisico.btMarcaClick(Sender: TObject);
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
    btrefrescaClick(Self);
  end;
end;

procedure TfrmInvFisico.btProveedorClick(Sender: TObject);
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
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    //dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tProveedor.text := dm.Query1.fieldbyname('sup_nombre').asstring;
    edProveedor.setfocus;
    btrefrescaClick(Self);
  end;
end;

procedure TfrmInvFisico.edAlmaChange(Sender: TObject);
begin
  if trim(edAlma.text) = '' then tAlma.text := '';
end;

procedure TfrmInvFisico.edAlmaKeyDown(Sender: TObject; var Key: Word;
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
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      //dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tAlma.text := dm.Query1.fieldbyname('alm_nombre').asstring;
      btrefrescaClick(Self);
    end
    else
      tAlma.text := '';
  end;
end;

procedure TfrmInvFisico.edFamiliaChange(Sender: TObject);
begin
  if trim(edFamilia.text) = '' then tFamilia.text := '';
end;

procedure TfrmInvFisico.edFamiliaKeyDown(Sender: TObject; var Key: Word;
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
      btrefrescaClick(Self);
    end
    else
      tFamilia.text := '';
  end;
end;

procedure TfrmInvFisico.edDeptoChange(Sender: TObject);
begin
  if trim(edDepto.text) = '' then tDepto.text := '';
end;

procedure TfrmInvFisico.edDeptoKeyDown(Sender: TObject; var Key: Word;
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
      btrefrescaClick(Self);
    end
    else
      tDepto.text := '';
  end;
end;

procedure TfrmInvFisico.edMarcaChange(Sender: TObject);
begin
  if trim(edMarca.text) = '' then tMArca.text := '';
end;

procedure TfrmInvFisico.edMarcaKeyDown(Sender: TObject; var Key: Word;
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
      btrefrescaClick(Self);
    end
    else
      tMArca.text := '';
  end;
end;

procedure TfrmInvFisico.edProveedorChange(Sender: TObject);
begin
  if trim(edProveedor.text) = '' then tProveedor.text := '';
end;

procedure TfrmInvFisico.edProveedorKeyDown(Sender: TObject; var Key: Word;
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
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      //dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tProveedor.text := dm.Query1.fieldbyname('sup_nombre').asstring;
      btrefrescaClick(Self);
    end
    else
      tProveedor.text := '';
  end;
end;

procedure TfrmInvFisico.btrefrescaClick(Sender: TObject);
begin
  if Trim(edAlma.Text) = '' then
  begin
    MessageDlg('DEBE SELECCIONAR EL ALMACEN',mtError,[mbok],0);
    edAlma.SetFocus;
  end
  else
  begin
    Screen.Cursor := crSQLWait;

    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('insert into existencias (ALM_CODIGO, EMP_CODIGO,');
    dm.Query1.sql.add('EXI_CANTIDAD, PRO_CODIGO) select '+edAlma.Text+', emp_codigo,');
    dm.Query1.sql.add('0, pro_codigo from productos');
    dm.Query1.sql.add('where emp_codigo = '+IntToStr(dm.QParametrosPAR_INVEMPRESA.value));
    dm.Query1.sql.add('and pro_codigo not in (select pro_codigo from existencias');
    dm.Query1.sql.add('where emp_codigo = '+IntToStr(dm.QParametrosPAR_INVEMPRESA.value));
    dm.Query1.sql.add('and alm_codigo = '+edAlma.Text+')');
    dm.Query1.ExecSQL;

    QExistencias.SQL.Clear;
    QExistencias.SQL := Memo1.Lines;

    if Trim(edProveedor.Text) <> '' then
    begin
      QExistencias.SQL.Add('and p.pro_codigo in');
      QExistencias.SQL.Add('(select pro_codigo from PRODPROVEEDORES');
      QExistencias.SQL.Add('where emp_codigo = '+inttostr(DM.vp_cia));
      //QExistencias.SQL.Add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
      QExistencias.SQL.Add('and sup_codigo = '+Trim(edProveedor.text)+')');
    end;
    if Trim(edDepto.Text) <> '' then
      QExistencias.SQL.Add('and p.dep_codigo = '+Trim(edDepto.Text));

    if Trim(edFamilia.Text) <> '' then
      QExistencias.SQL.Add('and p.fam_codigo = '+Trim(edFamilia.Text));

    if Trim(edMarca.Text) <> '' then
      QExistencias.SQL.Add('and p.mar_codigo = '+Trim(edMarca.Text));

    if ckunidad.Checked then
      QExistencias.SQL.Add('and e.exi_cantidad = 0');

    if ckempaque.Checked then
      QExistencias.SQL.Add('and e.exi_empaque = 0');

    if ckunidad2.Checked then
      QExistencias.SQL.Add('and e.exi_cantidad < 0');

    if ckempaque2.Checked then
      QExistencias.SQL.Add('and e.exi_empaque < 0');

    QExistencias.SQL.Add('order by p.pro_nombre');
    QExistencias.Parameters.ParamByName('emp').Value := dm.vp_cia;
    QExistencias.Parameters.ParamByName('alm').Value := StrToInt(edAlma.Text);
    QExistencias.Open;

    Grid.Refresh;
    
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmInvFisico.QExistenciasAfterEdit(DataSet: TDataSet);
begin
vl_cant_emp := QExistenciasEXI_EMPAQUE.Value;
vl_cant_und := QExistenciasEXI_CANTIDAD.value;
end;

procedure TfrmInvFisico.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF Trim(Edit1.Text) <> '' then BEGIN
if Key = vk_RETURN then begin
btrefrescaClick(Sender);
IF QExistencias.Locate('PRO_RORIGINAL',Edit1.Text,[]) THEN
Grid.SetFocus;
end;
end;
end;

procedure TfrmInvFisico.Edit1Enter(Sender: TObject);
begin
if Trim(edAlma.Text) <> '' then
btrefrescaClick(Sender);
Edit1.Clear;
end;

procedure TfrmInvFisico.QProdBeforeOpen(DataSet: TDataSet);
begin
QProd.Parameters[0].Value := DM.QParametrosPAR_INVEMPRESA.Value;
end;

end.
