unit PVENTA160;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Grids, DBGrids, DB,
  IBCustomDataSet, ADODB, QuerySearchDlgADO, ComCtrls, cxGraphics,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCheckComboBox, cxCheckBox, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxExportGrid4Link, Mask, DBCtrls, cxLookAndFeels, cxLookAndFeelPainters;

type
  TfrmConsProductos = class(TForm)
    Panel2: TPanel;
    lbCantidad: TLabel;
    btRefresh: TBitBtn;
    btClose: TBitBtn;
    Panel1: TPanel;
    Label2: TLabel;
    SpeedButton2: TSpeedButton;
    Label10: TLabel;
    btCondi: TSpeedButton;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    Label11: TLabel;
    SpeedButton4: TSpeedButton;
    edFamilia: TEdit;
    tfamilia: TEdit;
    tcolor: TEdit;
    edColor: TEdit;
    tmarca: TEdit;
    edMarca: TEdit;
    tdepto: TEdit;
    edDepto: TEdit;
    Label4: TLabel;
    edBuscar: TEdit;
    QListado: TADOQuery;
    QListadoPRO_CODIGO: TIntegerField;
    QListadoPRO_RORIGINAL: TIBStringField;
    QListadoPRO_RFABRIC: TIBStringField;
    QListadoPRO_NOMBRE: TIBStringField;
    QListadoPRO_PRECIO1: TFloatField;
    QListadoPRO_PRECIO2: TFloatField;
    QListadoPRO_PRECIO3: TFloatField;
    QListadoPRO_PRECIO4: TFloatField;
    QListadoPRO_EXISTENCIA: TFloatField;
    QListadoPRO_UBICACION: TIBStringField;
    QListadoPRO_ULTCOSTO: TFloatField;
    QListadoPRO_COSTO: TFloatField;
    QListadoPRO_COSTOEMPAQUE: TFloatField;
    QListadoPRO_EXISTEMPAQUE: TFloatField;
    QListadoFAM_NOMBRE: TIBStringField;
    QListadoMAR_NOMBRE: TIBStringField;
    QListadoDEP_NOMBRE: TIBStringField;
    QListadoCOL_NOMBRE: TIBStringField;
    QListadoPRO_NUEVOUSADO: TIBStringField;
    QListadoPRO_ITBIS: TIBStringField;
    dsListado: TDataSource;
    Memo1: TMemo;
    Search: TQrySearchDlgADO;
    QListadoSUP_NOMBRE: TStringField;
    QListadoPRO_VOLUMEN: TBCDField;
    QListadoPRO_UNIDAD_MEDIDA: TStringField;
    QListadoPRO_MINIMO_VENTA: TBCDField;
    BitBtn2: TBitBtn;
    QListadoPRO_STATUS: TStringField;
    QListadoPRO_COMENTARIO: TMemoField;
    QListadoemp_codigo: TIntegerField;
    ckopciones: TcxCheckComboBox;
    Label1: TLabel;
    Label5: TLabel;
    btProveedor: TSpeedButton;
    edProveedor: TEdit;
    tProveedor: TEdit;
    Label7: TLabel;
    btgerente: TSpeedButton;
    edgerente: TEdit;
    tgerente: TEdit;
    btgondolero: TSpeedButton;
    Label17: TLabel;
    tgondolero: TEdit;
    edGondolero: TEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1PRO_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1PRO_RORIGINAL: TcxGridDBColumn;
    cxGrid1DBTableView1PRO_RFABRIC: TcxGridDBColumn;
    cxGrid1DBTableView1PRO_NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1PRO_PRECIO1: TcxGridDBColumn;
    cxGrid1DBTableView1PRO_PRECIO2: TcxGridDBColumn;
    cxGrid1DBTableView1PRO_PRECIO3: TcxGridDBColumn;
    cxGrid1DBTableView1PRO_PRECIO4: TcxGridDBColumn;
    cxGrid1DBTableView1PRO_EXISTENCIA: TcxGridDBColumn;
    cxGrid1DBTableView1PRO_UBICACION: TcxGridDBColumn;
    cxGrid1DBTableView1PRO_COSTO: TcxGridDBColumn;
    cxGrid1DBTableView1PRO_COSTOEMPAQUE: TcxGridDBColumn;
    cxGrid1DBTableView1PRO_EXISTEMPAQUE: TcxGridDBColumn;
    cxGrid1DBTableView1FAM_NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1MAR_NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1DEP_NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1COL_NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1PRO_ITBIS: TcxGridDBColumn;
    cxGrid1DBTableView1SUP_NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1PRO_VOLUMEN: TcxGridDBColumn;
    cxGrid1DBTableView1PRO_UNIDAD_MEDIDA: TcxGridDBColumn;
    cxGrid1DBTableView1PRO_MINIMO_VENTA: TcxGridDBColumn;
    cxGrid1DBTableView1PRO_STATUS: TcxGridDBColumn;
    SaveDialog1: TSaveDialog;
    BitBtn1: TBitBtn;
    QListadoger_nombre: TStringField;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    btitbis: TSpeedButton;
    Label6: TLabel;
    titbis: TEdit;
    editbis: TEdit;
    QListadopro_montoitbis: TFloatField;
    procedure FormPaint(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btCondiClick(Sender: TObject);
    procedure edDeptoChange(Sender: TObject);
    procedure edDeptoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edFamiliaChange(Sender: TObject);
    procedure edFamiliaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edMarcaChange(Sender: TObject);
    procedure edMarcaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edColorChange(Sender: TObject);
    procedure edColorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edBuscarKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btProveedorClick(Sender: TObject);
    procedure btgerenteClick(Sender: TObject);
    procedure btgondoleroClick(Sender: TObject);
    procedure edProveedorChange(Sender: TObject);
    procedure edgerenteChange(Sender: TObject);
    procedure edGondoleroChange(Sender: TObject);
    procedure edProveedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edgerenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edGondoleroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ckopcionesPropertiesChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btitbisClick(Sender: TObject);
    procedure editbisChange(Sender: TObject);
    procedure editbisKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsProductos: TfrmConsProductos;

implementation

uses SIGMA01, SIGMA00, RVENTA80;

{$R *.dfm}

procedure TfrmConsProductos.FormPaint(Sender: TObject);
begin
  with frmConsProductos do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmConsProductos.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsProductos.btRefreshClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  QListado.Close;
  QListado.SQl.Clear;
  QListado.SQl.Add('select p.PRO_CODIGO, p.PRO_RORIGINAL, p.PRO_RFABRIC, p.PRO_NOMBRE, p.PRO_PRECIO1,');
  QListado.SQl.Add('p.PRO_PRECIO2, p.PRO_PRECIO3, p.PRO_PRECIO4, p.PRO_EXISTENCIA, p.PRO_UBICACION,');
  QListado.SQl.Add('p.PRO_ULTCOSTO, p.PRO_COSTO, p.PRO_COSTOEMPAQUE, p.PRO_EXISTEMPAQUE, F.FAM_NOMBRE,');
  QListado.SQl.Add('M.MAR_NOMBRE, D.DEP_NOMBRE,C.COL_NOMBRE, P.PRO_NUEVOUSADO, P.PRO_ITBIS,P.PRO_VOLUMEN,');
  QListado.SQl.Add('P.PRO_UNIDAD_MEDIDA, P.PRO_MINIMO_VENTA, P.PRO_STATUS, p.PRO_COMENTARIO, p.emp_codigo, ');
  QListado.SQl.Add('g.ger_nombre, p.pro_montoitbis');
  IF edProveedor.Text <> '' THEN BEGIN
  QListado.SQL.Add(',(SELECT ISNULL(SUP_NOMBRE,'+QuotedStr('')+') FROM PROVEEDORES WHERE EMP_CODIGO = '+IntToStr(DM.vp_cia)+' AND SUP_CODIGO = '+edProveedor.Text+') SUP_NOMBRE');
  end;
  IF edProveedor.Text = '' THEN BEGIN
  QListado.SQL.Add(','+QuotedStr('')+'  SUP_NOMBRE');
  end;
  QListado.SQl.Add('FROM PRODUCTOS P');
  QListado.SQl.Add('LEFT OUTER JOIN DEPARTAMENTOS D ON (D.DEP_CODIGO = P.DEP_CODIGO AND D.EMP_CODIGO = P.EMP_CODIGO)');
  QListado.SQl.Add('LEFT OUTER JOIN FAMILIAS F ON (F.FAM_CODIGO = P.FAM_CODIGO AND F.EMP_CODIGO = P.EMP_CODIGO)');
  QListado.SQl.Add('LEFT OUTER JOIN MARCAS M ON (M.MAR_CODIGO = P.MAR_CODIGO AND M.EMP_CODIGO = P.EMP_CODIGO)');
  QListado.SQl.Add('LEFT OUTER JOIN COLORES C ON (C.COL_CODIGO = P.COL_CODIGO)');
  QListado.SQl.Add('LEFT OUTER JOIN GERENTES G ON (G.GER_CODIGO = P.GER_CODIGO AND G.EMP_CODIGO = P.EMP_CODIGO)');
  QListado.SQl.Add('WHERE P.EMP_CODIGO = :par_invempresa');
  
  if ckopciones.States[0] = cbsChecked then
    QListado.SQL.Add('and isnull(p.pro_existencia,0) = 0');

  if ckopciones.States[1] = cbsChecked then
    QListado.SQL.Add('and isnull(p.pro_costo,0) = 0');

  if ckopciones.States[2] = cbsChecked then
  begin
    QListado.SQL.Add('and isnull(p.pro_precio1,0) = 0');
    QListado.SQL.Add('and isnull(p.pro_precio2,0) = 0');
    QListado.SQL.Add('and isnull(p.pro_precio3,0) = 0');
    QListado.SQL.Add('and isnull(p.pro_precio4,0) = 0');
  end;

  if ckopciones.States[3] = cbsChecked then
    QListado.SQL.Add('and p.pro_controlado = '+QuotedStr('True'));

  if ckopciones.States[4] = cbsChecked then
    QListado.SQL.Add('and p.pro_vence = '+QuotedStr('True'));

  if ckopciones.States[5] = cbsChecked then
    QListado.SQL.Add('and p.pro_combo = '+QuotedStr('True'));

  if ckopciones.States[6] = cbsChecked then
    QListado.SQL.Add('and p.pro_servicio = '+QuotedStr('True'));

  if ckopciones.States[7] = cbsChecked then
    QListado.SQL.Add('and p.pro_detallado = '+QuotedStr('True'));

  if ckopciones.States[8] = cbsChecked then
    QListado.SQL.Add('and p.pro_comentario is not null');

  if ckopciones.States[9] = cbsChecked then
    QListado.SQL.Add('and p.pro_patrocinador = '+QuotedStr('True'));

  if ckopciones.States[10] = cbsChecked then
    QListado.SQL.Add('and p.pro_status = '+QuotedStr('ACT'));

  if ckopciones.States[11] = cbsChecked then
    QListado.SQL.Add('and p.pro_status = '+QuotedStr('INA'));

  if ckopciones.States[12] = cbsChecked then
    QListado.SQL.Add('and p.pro_itbis = '+QuotedStr('S'));

  if ckopciones.States[13] = cbsChecked then
    QListado.SQL.Add('and p.pro_itbis = '+QuotedStr('N'));

  if ckopciones.States[14] = cbsChecked then
    QListado.SQL.Add('and p.pro_nuevousado = '+QuotedStr('N'));

  if ckopciones.States[15] = cbsChecked then
    QListado.SQL.Add('and p.pro_nuevousado = '+QuotedStr('U'));

  if Trim(edDepto.Text) <> '' then
    QListado.SQL.add('and p.dep_codigo = '+Trim(edDepto.text));

  if Trim(edFamilia.Text) <> '' then
    QListado.SQL.add('and p.fam_codigo = '+Trim(edFamilia.text));

  if Trim(edMarca.Text) <> '' then
    QListado.SQL.add('and p.mar_codigo = '+Trim(edMarca.text));

  if Trim(edColor.Text) <> '' then
    QListado.SQL.add('and p.col_codigo = '+Trim(edColor.text));

  if Trim(edProveedor.Text) <> '' then
  QListado.SQL.add('and p.pro_codigo in (select pro_codigo from ProdProveedores where emp_codigo = '+IntToStr(DM.vp_cia)+' and sup_codigo = '+Trim(edProveedor.text)+')');


  if Trim(edgerente.Text) <> '' then
    QListado.SQL.add('and p.ger_codigo = '+Trim(edgerente.text));

  if Trim(edGondolero.Text) <> '' then
    QListado.SQL.add('and p.gon_codigo = '+Trim(edGondolero.text));

  if Trim(editbis.Text) <> '' then
    QListado.SQL.add('and p.pro_montoitbis = '+Trim(editbis.text));

  if Trim(edBuscar.Text) = '' then
    edBuscar.Text := '%'
  else
  begin
    if Pos('%',Trim(edBuscar.text)) = 0 then
      edBuscar.text := edBuscar.text + '%';
  end;

  QListado.sql.add('and p.pro_nombre like '+#39+trim(edBuscar.text)+#39);
  QListado.Parameters.ParamByName('par_invempresa').DataType := ftInteger;
  QListado.Open;

  lbCantidad.Caption := IntToStr(QListado.recordcount)+' Productos';

  Screen.Cursor := crDefault;
end;

procedure TfrmConsProductos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsProductos.FormCreate(Sender: TObject);
begin
  Memo1.Lines := QListado.SQL;
end;

procedure TfrmConsProductos.SpeedButton4Click(Sender: TObject);
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
  Search.Title := 'Departamentos';
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
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsProductos.SpeedButton2Click(Sender: TObject);
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
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsProductos.SpeedButton1Click(Sender: TObject);
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
    dm.Query1.sql.add('select mar_codigo, mar_nombre');
    dm.Query1.sql.add('from marcas');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and mar_codigo = :mar');
    dm.Query1.Parameters.parambyname('mar').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tMarca.text := dm.Query1.fieldbyname('mar_nombre').asstring;
    edMarca.setfocus;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsProductos.btCondiClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Query.clear;
  Search.Query.add('select col_nombre, col_codigo');
  Search.Query.add('from colores');
  Search.ResultField := 'col_codigo';
  Search.Title := 'Listado de Colores';
  if Search.execute then
  begin
    edColor.text := search.valuefield;
    edColor.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select col_codigo, col_nombre');
    dm.Query1.sql.add('from colores');
    dm.Query1.sql.add('where col_codigo = :col');
    dm.Query1.Parameters.parambyname('col').Value := strtoint(search.valuefield);
    dm.Query1.open;
    tColor.text := dm.Query1.fieldbyname('col_nombre').asstring;
    edColor.setfocus;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsProductos.edDeptoChange(Sender: TObject);
begin
  if trim(edDepto.text) = '' then tDepto.text := '';
end;

procedure TfrmConsProductos.edDeptoKeyDown(Sender: TObject; var Key: Word;
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
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsProductos.edFamiliaChange(Sender: TObject);
begin
  if trim(edFamilia.text) = '' then tFamilia.text := '';
end;

procedure TfrmConsProductos.edFamiliaKeyDown(Sender: TObject;
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
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsProductos.edMarcaChange(Sender: TObject);
begin
  if trim(edMarca.text) = '' then tMarca.text := '';
end;

procedure TfrmConsProductos.edMarcaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edMarca.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select mar_codigo, mar_nombre');
      dm.Query1.sql.add('from marcas');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and mar_codigo = :mar');
      dm.Query1.Parameters.parambyname('mar').Value := strtoint(edMarca.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tMarca.text := dm.Query1.fieldbyname('mar_nombre').asstring;
    end
    else
      tMarca.text := '';
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsProductos.edColorChange(Sender: TObject);
begin
  if trim(edColor.text) = '' then tColor.text := '';
end;

procedure TfrmConsProductos.edColorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edColor.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select col_codigo, col_nombre');
      dm.Query1.sql.add('from colores');
      dm.Query1.sql.add('where col_codigo = :col');
      dm.Query1.Parameters.parambyname('col').Value := strtoint(edColor.text);
      dm.Query1.open;
      tColor.text := dm.Query1.fieldbyname('col_nombre').asstring;
    end
    else
      tColor.text := '';
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsProductos.edBuscarKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    btRefreshClick(Self);
    key := #0;
  end;
end;

procedure TfrmConsProductos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     if activecontrol.classtype <> tdbgrid then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmConsProductos.FormActivate(Sender: TObject);
begin
  {frmMain.ExportXLS.FileName := 'Productos.XLS';
  frmMain.ExportXLS.Sheets[0].DBGrid := DBGrid5;}
  frmMain.ExportXLS.Sheets[1].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[0].Exported := False;
end;

procedure TfrmConsProductos.BitBtn2Click(Sender: TObject);
begin
  Application.CreateForm(tRRepProductos, RRepProductos);
  RRepProductos.lbFamilia.Caption := tfamilia.Text;
  RRepProductos.lbDepto.Caption   := tdepto.Text;
  RRepProductos.lbFecha.Caption   := 'Al '+DateToStr(date);
  RRepProductos.lbmarca.Caption   := tmarca.Text;
  RRepProductos.Comentario := ckopciones.States[8] = cbsChecked;

  RRepProductos.QProductos.SQL.Clear;
  RRepProductos.QProductos.SQL := QListado.SQL;
  RRepProductos.QProductos.Parameters.ParamByName('par_invempresa').DataType := ftInteger;
  RRepProductos.QProductos.Open;

  if ckopciones.States[5] = cbsChecked then RRepProductos.QCombo.Open;

  if edProveedor.Text <> '' then
  RRepProductos.lbProveedor.Caption := 'Proveedor: ['+UpperCase(tProveedor.Text)+']' else
  RRepProductos.lbProveedor.Caption := 'Proveedor : [TODOS]';

  RRepProductos.PrinterSetup;
  RRepProductos.Preview;
  RRepProductos.Destroy;
end;

procedure TfrmConsProductos.btProveedorClick(Sender: TObject);
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
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsProductos.btgerenteClick(Sender: TObject);
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
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsProductos.btgondoleroClick(Sender: TObject);
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
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsProductos.edProveedorChange(Sender: TObject);
begin
  if trim(edProveedor.text) = '' then tProveedor.text := '';
end;

procedure TfrmConsProductos.edgerenteChange(Sender: TObject);
begin
  if trim(edgerente.text) = '' then tgerente.text := '';
end;

procedure TfrmConsProductos.edGondoleroChange(Sender: TObject);
begin
  if trim(edGondolero.text) = '' then tgondolero.text := '';
end;

procedure TfrmConsProductos.edProveedorKeyDown(Sender: TObject;
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
      btRefreshClick(Self);
    end
    else
      tProveedor.text := '';
  end;
end;

procedure TfrmConsProductos.edgerenteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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
      btRefreshClick(Self);
    end
    else
      tgerente.text := '';
  end;
end;

procedure TfrmConsProductos.edGondoleroKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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
      begin
        tgondolero.text := dm.Query1.fieldbyname('gon_nombre').asstring;
        btRefreshClick(Self);
      end;
    end;
  end;
end;

procedure TfrmConsProductos.ckopcionesPropertiesChange(Sender: TObject);
begin
  btRefreshClick(Self);
end;

procedure TfrmConsProductos.BitBtn1Click(Sender: TObject);
begin
  SaveDialog1.DefaultExt := '.xls';
  if SaveDialog1.Execute then
  begin
    ExportGrid4ToExcel(SaveDialog1.FileName, cxGrid1, true, true, true, 'xls');
  end;
end;

procedure TfrmConsProductos.btitbisClick(Sender: TObject);
begin
  Search.Title := 'Impuestos';
  Search.ResultField := 'porciento';
  Search.query.Clear;
  Search.query.add('select nombre, porciento');
  Search.query.add('from impuestos');
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('porciento');
  if search.execute then
  begin
    editbis.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select nombre from impuestos');
    dm.Query1.sql.add('where porciento = :id');
    dm.Query1.Parameters.parambyname('id').Value := editbis.Text;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('IMPUESTO NO EXISTE',mterror,[mbok],0)
    else
      titbis.text := dm.Query1.fieldbyname('nombre').asstring;
    editbis.setfocus;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsProductos.editbisChange(Sender: TObject);
begin
  if trim(editbis.text) = '' then titbis.text := '';
end;

procedure TfrmConsProductos.editbisKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(editbis.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select nombre from impuestos');
      dm.Query1.sql.add('where porciento = :id');
      dm.Query1.Parameters.parambyname('id').Value := strtoint(trim(editbis.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('IMPUESTO NO EXISTE',mterror,[mbok],0);
        editbis.SetFocus;
      end
      else
      begin
        titbis.text := dm.Query1.fieldbyname('nombre').asstring;
        btRefreshClick(Self);
      end;
    end;
  end;
end;

end.
