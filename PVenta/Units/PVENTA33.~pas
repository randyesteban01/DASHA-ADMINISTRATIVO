unit PVENTA33;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, Db, IBCustomDataSet, IBQuery,
  QuerySearchDlgADO, ADODB, Menus;

type
  TfrmBuscaProducto = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    cbOpcion: TRadioGroup;
    btSalir: TBitBtn;
    QProductos: TADOQuery;
    QProductosPRO_CODIGO: TIntegerField;
    QProductosPRO_RORIGINAL: TIBStringField;
    QProductosPRO_RFABRIC: TIBStringField;
    QProductosPRO_NOMBRE: TIBStringField;
    QProductosPRO_PRECIO1: TFloatField;
    QProductosPRO_PRECIO2: TFloatField;
    QProductosPRO_PRECIO3: TFloatField;
    QProductosPRO_PRECIO4: TFloatField;
    QProductosPRO_UBICACION: TIBStringField;
    dsProductos: TDataSource;
    edOpcion: TEdit;
    Label1: TLabel;
    QProductosPRO_NUEVOUSADO: TIBStringField;
    QProductosFAM_NOMBRE: TIBStringField;
    QProductosTipo: TStringField;
    rgTipo: TRadioGroup;
    btFamilia: TSpeedButton;
    Label4: TLabel;
    tFamilia: TEdit;
    edFamilia: TEdit;
    Search: TQrySearchDlgADO;
    spAccion: TSpeedButton;
    btMarca: TSpeedButton;
    Label2: TLabel;
    tMarca: TEdit;
    edMarca: TEdit;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    tColor: TEdit;
    edColor: TEdit;
    QProductosMAR_NOMBRE: TIBStringField;
    QProductosCOL_NOMBRE: TIBStringField;
    QProductosPRO_PRECIOMENOR: TFloatField;
    QEscalas: TADOQuery;
    QEscalasALM_CODIGO: TIntegerField;
    QEscalasEMP_CODIGO: TIntegerField;
    QEscalasESC_ESCALA: TIBStringField;
    QEscalasESC_EXISTENCIA: TFloatField;
    QEscalasESC_SECUENCIA: TIntegerField;
    QEscalasPRO_CODIGO: TIntegerField;
    QEscalasALM_NOMBRE: TIBStringField;
    dsEscala: TDataSource;
    QProductosEMP_CODIGO: TIntegerField;
    QProductosEXISTUND: TFloatField;
    QProductosEXISTEMP: TFloatField;
    BitBtn1: TBitBtn;
    ckactiva: TCheckBox;
    QProductosDEP_NOMBRE: TIBStringField;
    SpeedButton2: TSpeedButton;
    Label5: TLabel;
    tDepto: TEdit;
    edDepto: TEdit;
    cborden: TComboBox;
    QProductosPRO_ITBIS: TIBStringField;
    QVence: TADOQuery;
    QVenceven_lote: TIntegerField;
    QVenceven_fecha: TDateTimeField;
    QVenceven_cantpendiente: TBCDField;
    dsVence: TDataSource;
    QProductosSUP_CODIGO: TIntegerField;
    PopupMenu1: TPopupMenu;
    Verfoto1: TMenuItem;
    QProductosPRO_FOTO: TStringField;
    QProductosPRO_COSTO: TBCDField;
    Label6: TLabel;
    btProveedor: TSpeedButton;
    edProveedor: TEdit;
    tProveedor: TEdit;
    QProductosSUP_NOMBRE: TStringField;
    QProductosPrecioTasa: TFloatField;
    QProductospro_cantempaque: TBCDField;
    QUnidades: TADOQuery;
    QUnidadesemp_codigo: TIntegerField;
    QUnidadespro_codigo: TIntegerField;
    QUnidadesUnidadID: TStringField;
    QUnidadesCantidad: TBCDField;
    QUnidadesSecuencia: TIntegerField;
    QUnidadesNombre: TStringField;
    QUnidadesPrecio: TBCDField;
    QUnidadesCredito: TBCDField;
    QUnidadesMinimo: TBCDField;
    dsUnidades: TDataSource;
    QMedidas: TADOQuery;
    QMedidasUnidadID: TStringField;
    QMedidasNombre: TStringField;
    dsMedida: TDataSource;
    gunidades: TDBGrid;
    QProductospro_montoitbis: TBCDField;
    ExistenciaxAlmacen1: TMenuItem;
    edSerie: TEdit;
    Label7: TLabel;
    QProductosPRO_serializado: TStringField;
    QProductosUnidadMedida: TStringField;
    QProductosValorEmp: TFloatField;
    QProductospro_costoempaque: TCurrencyField;
    QProductoscostoitbis: TCurrencyField;
    QProductosPRO_COMENTARIO: TStringField;
    qActulizaProd: TADOQuery;
    procedure btSalirClick(Sender: TObject);
    procedure edOpcionKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure cbOpcionClick(Sender: TObject);
    procedure QProductosCalcFields(DataSet: TDataSet);
    procedure rgTipoClick(Sender: TObject);
    procedure btFamiliaClick(Sender: TObject);
    procedure edFamiliaChange(Sender: TObject);
    procedure edFamiliaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spAccionClick(Sender: TObject);
    procedure edMarcaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edMarcaChange(Sender: TObject);
    procedure edColorChange(Sender: TObject);
    procedure btMarcaClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edColorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure QProductosAfterOpen(DataSet: TDataSet);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure edDeptoChange(Sender: TObject);
    procedure edDeptoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ckactivaClick(Sender: TObject);
    procedure Verfoto1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btProveedorClick(Sender: TObject);
    procedure edProveedorChange(Sender: TObject);
    procedure edProveedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ExistenciaxAlmacen1Click(Sender: TObject);
    procedure CargarProductosDolares();
    procedure CargarProductos();

  private
    { Private declarations }
  public
    { Public declarations }
    seleccion, almacen, vp_suc : integer;
    facturando : boolean;
    st : string;
    Tasa : Double;
    TasaCambio:Double;
    codigomoneda:integer;
  end;

var
  frmBuscaProducto: TfrmBuscaProducto;

implementation

uses SIGMA01, PVENTA129, PVENTA161, PVENTAPRODUCTOSXALMACEN, PVENTA18;


{$R *.DFM}


procedure TfrmBuscaProducto.CargarProductos;
begin
if facturando = True then
  begin

    QProductos.SQL.add('select');
    IF edProveedor.Text <> '' THEN
    QProductos.sql.add(Trim(edProveedor.Text)+' SUP_CODIGO,') ELSE
    QProductos.sql.add('0 SUP_CODIGO,');
    QProductos.SQL.add('P.EMP_CODIGO, P.PRO_CODIGO, P.PRO_RORIGINAL, P.PRO_RFABRIC,');
    QProductos.SQL.add('P.PRO_NOMBRE, P.PRO_PRECIO1, P.PRO_PRECIO2, P.PRO_COSTO,');
    QProductos.SQL.add('P.PRO_PRECIO3, P.PRO_PRECIO4, SUM(ISNULL(E.EXI_CANTIDAD,0)) AS EXISTUND,');
    QProductos.SQL.add('P.PRO_UBICACION, P.PRO_NUEVOUSADO, P.PRO_PRECIOMENOR,');
    QProductos.SQL.add('F.FAM_NOMBRE, M.MAR_NOMBRE, C.COL_NOMBRE, P.PRO_FOTO,pro_costoempaque,');
    QProductos.SQL.add('E.EXI_EMPAQUE AS EXISTEMP, D.DEP_NOMBRE, P.PRO_ITBIS, substring(P.PRO_COMENTARIO,1,255) PRO_COMENTARIO,');
    QProductos.SQL.add('p.pro_cantempaque, p.pro_montoitbis,P.PRO_serializado, um.nombre as UnidadMedida');
     QProductos.SQL.Add(',cast(p.pro_costo*(1+(p.pro_montoitbis/100)) as numeric(18,2)) costoitbis');
      IF edProveedor.Text <> '' THEN
    QProductos.sql.add(',(SELECT SUP_NOMBRE FROM PROVEEDORES WHERE EMP_CODIGO = '+IntToStr(DM.vp_cia)+' AND SUP_CODIGO = '+edProveedor.Text+') SUP_NOMBRE') ELSE
    QProductos.sql.add(',(SELECT TOP 1 SUP_NOMBRE FROM PROVEEDORES WHERE SUP_CODIGO = (SELECT TOP 1 SUP_CODIGO FROM PRODPROVEEDORES WHERE PRO_CODIGO = P.PRO_CODIGO AND EMP_CODIGO = P.EMP_CODIGO))SUP_NOMBRE ');

    QProductos.SQL.add('FROM');
    QProductos.SQL.add('PRODUCTOS P');
    QProductos.SQL.add('LEFT JOIN DEPARTAMENTOS D ON');
    QProductos.SQL.add('(D.DEP_CODIGO = P.DEP_CODIGO AND D.EMP_CODIGO = P.EMP_CODIGO)');
    QProductos.SQL.add('LEFT JOIN FAMILIAS F ON');
    QProductos.SQL.add('(F.FAM_CODIGO = P.FAM_CODIGO');
    QProductos.SQL.add('AND F.EMP_CODIGO = P.EMP_CODIGO)');
    QProductos.SQL.add('LEFT JOIN MARCAS M ON');
    QProductos.SQL.add('(M.MAR_CODIGO = P.MAR_CODIGO');
    QProductos.SQL.add('AND M.EMP_CODIGO = P.EMP_CODIGO)');
    QProductos.SQL.add('LEFT JOIN COLORES C ON');
    QProductos.SQL.add('(C.COL_CODIGO = P.COL_CODIGO)');
    QProductos.SQL.add('LEFT JOIN UnidadMedida UM ON');
    QProductos.SQL.add('(p.UnidadID =um.UnidadID)');
    QProductos.SQL.add('');
    QProductos.SQL.add('');
    QProductos.SQL.add('');
    if almacen <> 0 then begin
    QProductos.SQL.add('INNER JOIN EXISTENCIAS E ON');
    QProductos.SQL.add('(e.emp_codigo = '+QuotedStr(IntToStr(DM.vp_cia)));
    QProductos.SQL.add('and p.pro_codigo = e.pro_codigo) ');
    QProductos.SQL.add('and p.emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.Value));
    if almacen = 0 then
    QProductos.SQL.add('and e.alm_codigo = (select top 1 (alm_codigo) from sucursales where suc_codigo = '+IntToStr(vp_suc)+ ' and emp_codigo = '+IntToStr(dm.vp_cia)+')') else
    QProductos.SQL.add('and e.alm_codigo = '+QuotedStr(IntToStr(almacen)));
    end;
    QProductos.SQL.add('and p.pro_status = '+#39+'ACT'+#39);
    IF almacen = 0 THEN
    QProductos.SQL.add('and e.alm_codigo > 0 ') ELSE
    QProductos.SQL.add('and e.alm_codigo = '+inttostr(almacen));
    if Trim(edFamilia.Text) <> '' then
      QProductos.SQL.add('and p.fam_codigo = '+Trim(edFamilia.text));
    if Trim(edMarca.Text) <> '' then
      QProductos.SQL.add('and p.mar_codigo = '+Trim(edMarca.text));
    if Trim(edColor.Text) <> '' then
      QProductos.SQL.add('and p.col_codigo = '+Trim(edColor.text));
    if Trim(edProveedor.Text) <> '' then
      QProductos.SQL.add('and p.pro_codigo in (select pro_codigo from ProdProveedores where emp_codigo = '+IntToStr(DM.vp_cia)+' and sup_codigo = '+Trim(edProveedor.text)+')');

    if Trim(edSerie.Text) <> '' then
      QProductos.SQL.add('and p.pro_codigo in (select pro_codigo FROM PRODUCTOS_SERIE z where z.ser_numero= '+Trim(edSerie.text)+')');
    if rgTipo.ItemIndex = 1 then
      QProductos.SQL.add('and p.pro_nuevousado = '+#39+'N'+#39)
    else if rgTipo.ItemIndex = 2 then
      QProductos.SQL.add('and p.pro_nuevousado = '+#39+'U'+#39);

    if cbOpcion.itemindex = 0 then
      QProductos.sql.add('and p.pro_codigo like '+#39+trim(edOpcion.text)+#39)
    else if cbOpcion.itemindex = 1 then
      QProductos.sql.add('and p.pro_roriginal like '+#39+trim(edOpcion.text)+#39)
    else if cbOpcion.itemindex = 2 then
      QProductos.sql.add('and p.pro_rfabric like '+#39+trim(edOpcion.text)+#39)
    else if cbOpcion.itemindex = 3 then
      QProductos.sql.add('and p.pro_nombre like '+#39+edOpcion.text+#39)
    else if cbOpcion.itemindex = 4 then
      QProductos.sql.add('and p.pro_uso like '+#39+trim(edOpcion.text)+#39)
    else if cbOpcion.itemindex = 5 then
      QProductos.sql.add('and p.pro_costo like '+#39+trim(edOpcion.text)+#39);
    QProductos.sql.add('group by P.EMP_CODIGO, P.PRO_CODIGO,');
    QProductos.sql.add('P.PRO_RORIGINAL, P.PRO_RFABRIC, P.PRO_NOMBRE, P.PRO_PRECIO1,');
    QProductos.sql.add('P.PRO_PRECIO2, P.PRO_COSTO, P.PRO_PRECIO3, P.PRO_PRECIO4,');
    QProductos.sql.add('P.PRO_UBICACION, P.PRO_NUEVOUSADO, P.PRO_PRECIOMENOR, F.FAM_NOMBRE,');
    QProductos.sql.add('M.MAR_NOMBRE, C.COL_NOMBRE, P.PRO_FOTO,pro_costoempaque,E.EXI_EMPAQUE,');
    QProductos.sql.add('D.DEP_NOMBRE, P.PRO_ITBIS, substring(P.PRO_COMENTARIO,1,255),');
    QProductos.sql.add('p.pro_cantempaque, p.pro_montoitbis,P.PRO_serializado, um.nombre');
  end
  else
  begin
    QProductos.SQL.add('select');
    IF edProveedor.Text <> '' THEN
    QProductos.sql.add(Trim(edProveedor.Text)+' SUP_CODIGO,') ELSE
    QProductos.sql.add('0 SUP_CODIGO,');
    QProductos.SQL.add('P.EMP_CODIGO, P.PRO_CODIGO, P.PRO_RORIGINAL, P.PRO_RFABRIC,');
    QProductos.SQL.add('P.PRO_NOMBRE, P.PRO_PRECIO1, P.PRO_PRECIO2, P.PRO_COSTO,');
    QProductos.SQL.add('P.PRO_PRECIO3, P.PRO_PRECIO4,');
    if almacen > 0 then
    QProductos.SQL.add('SUM(ISNULL(E.EXI_CANTIDAD,0)) AS EXISTUND,') else
    QProductos.SQL.add('(SELECT ISNULL(SUM(ISNULL(EXI_CANTIDAD,0)),0) FROM EXISTENCIAS WHERE PRO_CODIGO = P.PRO_CODIGO) AS EXISTUND,');
    QProductos.SQL.add('P.PRO_UBICACION, P.PRO_NUEVOUSADO,P.PRO_PRECIOMENOR,');
    QProductos.SQL.add('F.FAM_NOMBRE, M.MAR_NOMBRE, C.COL_NOMBRE, P.PRO_FOTO,pro_costoempaque,');
    QProductos.SQL.add('(SELECT ISNULL(SUM(ISNULL(EXI_EMPAQUE,0)),0) FROM EXISTENCIAS WHERE PRO_CODIGO = P.PRO_CODIGO) AS EXISTEMP, D.DEP_NOMBRE, P.PRO_ITBIS, substring(P.PRO_COMENTARIO,1,255) PRO_COMENTARIO,');
    QProductos.SQL.add('p.pro_cantempaque, p.pro_montoitbis,P.PRO_serializado, um.nombre as UnidadMedida');
    QProductos.SQL.Add(',cast(p.pro_costo*(1+(p.pro_montoitbis/100)) as numeric(18,4)) costoitbis');
    IF edProveedor.Text <> '' THEN
    QProductos.sql.add(',(SELECT SUP_NOMBRE FROM PROVEEDORES WHERE EMP_CODIGO = '+IntToStr(DM.vp_cia)+' AND SUP_CODIGO = '+edProveedor.Text+') SUP_NOMBRE') ELSE
    QProductos.sql.add(',(SELECT TOP 1 SUP_NOMBRE FROM PROVEEDORES WHERE SUP_CODIGO = (SELECT TOP 1 SUP_CODIGO FROM PRODPROVEEDORES WHERE PRO_CODIGO = P.PRO_CODIGO AND EMP_CODIGO = P.EMP_CODIGO))SUP_NOMBRE ');
    QProductos.SQL.add('FROM');
    QProductos.SQL.add('PRODUCTOS P');

    QProductos.SQL.add('LEFT OUTER JOIN DEPARTAMENTOS D ON');
    QProductos.SQL.add('(D.DEP_CODIGO = P.DEP_CODIGO AND D.EMP_CODIGO = P.EMP_CODIGO)');
    QProductos.SQL.add('LEFT  JOIN FAMILIAS F ON');
    QProductos.SQL.add('(F.FAM_CODIGO = P.FAM_CODIGO');
    QProductos.SQL.add('AND F.EMP_CODIGO = P.EMP_CODIGO)');
    QProductos.SQL.add('LEFT  JOIN MARCAS M ON');
    QProductos.SQL.add('(M.MAR_CODIGO = P.MAR_CODIGO');
    QProductos.SQL.add('AND M.EMP_CODIGO = P.EMP_CODIGO)');
    QProductos.SQL.add('LEFT  JOIN COLORES C ON');
    QProductos.SQL.add('(C.COL_CODIGO = P.COL_CODIGO)');

    QProductos.SQL.add('LEFT  JOIN UnidadMedida UM ON');
    QProductos.SQL.add('(p.UnidadID =um.UnidadID)');
    QProductos.SQL.add('');
    QProductos.SQL.add('');
    QProductos.SQL.add('');
    if almacen <> 0 then begin
    QProductos.SQL.add('INNER JOIN EXISTENCIAS E ON');
    QProductos.SQL.add('(e.emp_codigo = '+QuotedStr(IntToStr(DM.vp_cia)));
    QProductos.SQL.add('and p.pro_codigo = e.pro_codigo) ');
    QProductos.SQL.add('and p.emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.Value));
    if almacen = 0 then
    QProductos.SQL.add('and e.alm_codigo = (select top 1 (alm_codigo) from sucursales where suc_codigo = '+IntToStr(vp_suc)+ ' and emp_codigo = '+IntToStr(dm.vp_cia)+')') else
    QProductos.SQL.add('and e.alm_codigo = '+QuotedStr(IntToStr(almacen)));
    end;

    QProductos.sql.add('where p.emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.Value));

    if Trim(st) = '' then
      QProductos.sql.add('and p.pro_status = '+#39+'ACT'+#39);

    if Trim(edDepto.Text) <> '' then
      QProductos.SQL.add('and p.dep_codigo = '+Trim(edDepto.text));
    if Trim(edFamilia.Text) <> '' then
      QProductos.SQL.add('and p.fam_codigo = '+Trim(edFamilia.text));
    if Trim(edMarca.Text) <> '' then
      QProductos.SQL.add('and p.mar_codigo = '+Trim(edMarca.text));
    if Trim(edColor.Text) <> '' then
      QProductos.SQL.add('and p.col_codigo = '+Trim(edColor.text));
    if Trim(edProveedor.Text) <> '' then
      QProductos.SQL.add('and p.pro_codigo in (select pro_codigo from ProdProveedores where emp_codigo = '+IntToStr(DM.vp_cia)+' and sup_codigo = '+Trim(edProveedor.text)+')');
    if Trim(edSerie.Text) <> '' then
      QProductos.SQL.add('and p.pro_codigo in (select pro_codigo FROM PRODUCTOS_SERIE z where z.ser_numero= '+Trim(edSerie.text)+')');
    if rgTipo.ItemIndex = 1 then
      QProductos.SQL.add('and p.pro_nuevousado = '+#39+'N'+#39)
    else if rgTipo.ItemIndex = 2 then
      QProductos.SQL.add('and p.pro_nuevousado = '+#39+'U'+#39);

    if cbOpcion.itemindex = 0 then
      QProductos.sql.add('and p.pro_codigo like '+#39+trim(edOpcion.text)+#39)
    else if cbOpcion.itemindex = 1 then
      QProductos.sql.add('and p.pro_roriginal like '+#39+trim(edOpcion.text)+#39)
    else if cbOpcion.itemindex = 2 then
      QProductos.sql.add('and p.pro_rfabric like '+#39+trim(edOpcion.text)+#39)
    else if cbOpcion.itemindex = 3 then
      QProductos.sql.add('and p.pro_nombre like '+#39+edOpcion.text+#39)
    else if cbOpcion.itemindex = 4 then
      QProductos.sql.add('and p.pro_uso like '+#39+trim(edOpcion.text)+#39);
     QProductos.sql.add('group by P.EMP_CODIGO, P.PRO_CODIGO,');
    QProductos.sql.add('P.PRO_RORIGINAL, P.PRO_RFABRIC, P.PRO_NOMBRE, P.PRO_PRECIO1,');
    QProductos.sql.add('P.PRO_PRECIO2, P.PRO_COSTO, P.PRO_PRECIO3, P.PRO_PRECIO4,');
    QProductos.sql.add('P.PRO_UBICACION, P.PRO_NUEVOUSADO, P.PRO_PRECIOMENOR, F.FAM_NOMBRE,');
    QProductos.sql.add('M.MAR_NOMBRE, C.COL_NOMBRE, P.PRO_FOTO,pro_costoempaque,');
    QProductos.sql.add('D.DEP_NOMBRE, P.PRO_ITBIS, substring(P.PRO_COMENTARIO,1,255),');
    QProductos.sql.add('p.pro_cantempaque, p.pro_montoitbis,P.PRO_serializado, um.nombre');

  end ;

end;
procedure TfrmBuscaProducto.CargarProductosDolares;
begin
  if facturando = True then
  begin

    QProductos.SQL.add('select');
    IF edProveedor.Text <> '' THEN
    QProductos.sql.add(Trim(edProveedor.Text)+' SUP_CODIGO,') ELSE
    QProductos.sql.add('0 SUP_CODIGO,');
    QProductos.SQL.add('P.EMP_CODIGO, P.PRO_CODIGO, P.PRO_RORIGINAL, P.PRO_RFABRIC,');
    QProductos.SQL.add('P.PRO_NOMBRE, P.PRO_PRECIO1/:tasa AS PRO_PRECIO1, P.PRO_PRECIO2/:tasa2 as PRO_PRECIO2, P.PRO_COSTO/:tasacosto as PRO_COSTO,');
    QProductos.SQL.add('P.PRO_PRECIO3/:tasa3 as PRO_PRECIO3, P.PRO_PRECIO4/:tasa4 as PRO_PRECIO4, SUM(ISNULL(E.EXI_CANTIDAD,0)) AS EXISTUND,');
    QProductos.SQL.add('P.PRO_UBICACION, P.PRO_NUEVOUSADO, P.PRO_PRECIOMENOR/:tasamenor AS PRO_PRECIOMENOR,');
    QProductos.SQL.add('F.FAM_NOMBRE, M.MAR_NOMBRE, C.COL_NOMBRE, P.PRO_FOTO,pro_costoempaque/:tasacostoempaque AS pro_costoempaque,');
    QProductos.SQL.add('E.EXI_EMPAQUE AS EXISTEMP, D.DEP_NOMBRE, P.PRO_ITBIS, substring(P.PRO_COMENTARIO,1,255) PRO_COMENTARIO,');
    QProductos.SQL.add('p.pro_cantempaque, p.pro_montoitbis,P.PRO_serializado, um.nombre as UnidadMedida');
     QProductos.SQL.Add(',cast(p.pro_costo*(1+(p.pro_montoitbis/100)) as numeric(18,2)) costoitbis');
      IF edProveedor.Text <> '' THEN
    QProductos.sql.add(',(SELECT SUP_NOMBRE FROM PROVEEDORES WHERE EMP_CODIGO = '+IntToStr(DM.vp_cia)+' AND SUP_CODIGO = '+edProveedor.Text+') SUP_NOMBRE') ELSE
    QProductos.sql.add(',(SELECT TOP 1 SUP_NOMBRE FROM PROVEEDORES WHERE SUP_CODIGO = (SELECT TOP 1 SUP_CODIGO FROM PRODPROVEEDORES WHERE PRO_CODIGO = P.PRO_CODIGO AND EMP_CODIGO = P.EMP_CODIGO))SUP_NOMBRE ');

    QProductos.SQL.add('FROM');
    QProductos.SQL.add('PRODUCTOS P');
    QProductos.SQL.add('LEFT JOIN DEPARTAMENTOS D ON');
    QProductos.SQL.add('(D.DEP_CODIGO = P.DEP_CODIGO AND D.EMP_CODIGO = P.EMP_CODIGO)');
    QProductos.SQL.add('LEFT JOIN FAMILIAS F ON');
    QProductos.SQL.add('(F.FAM_CODIGO = P.FAM_CODIGO');
    QProductos.SQL.add('AND F.EMP_CODIGO = P.EMP_CODIGO)');
    QProductos.SQL.add('LEFT JOIN MARCAS M ON');
    QProductos.SQL.add('(M.MAR_CODIGO = P.MAR_CODIGO');
    QProductos.SQL.add('AND M.EMP_CODIGO = P.EMP_CODIGO)');
    QProductos.SQL.add('LEFT JOIN COLORES C ON');
    QProductos.SQL.add('(C.COL_CODIGO = P.COL_CODIGO)');
    QProductos.SQL.add('LEFT JOIN UnidadMedida UM ON');
    QProductos.SQL.add('(p.UnidadID =um.UnidadID)');
    QProductos.SQL.add('');
    QProductos.SQL.add('');
    QProductos.SQL.add('');
    if almacen <> 0 then begin
    QProductos.SQL.add('INNER JOIN EXISTENCIAS E ON');
    QProductos.SQL.add('(e.emp_codigo = '+QuotedStr(IntToStr(DM.vp_cia)));
    QProductos.SQL.add('and p.pro_codigo = e.pro_codigo) ');
    QProductos.SQL.add('and p.emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.Value));
    if almacen = 0 then
    QProductos.SQL.add('and e.alm_codigo = (select top 1 (alm_codigo) from sucursales where suc_codigo = '+IntToStr(vp_suc)+ ' and emp_codigo = '+IntToStr(dm.vp_cia)+')') else
    QProductos.SQL.add('and e.alm_codigo = '+QuotedStr(IntToStr(almacen)));
    end;
    QProductos.SQL.add('and p.pro_status = '+#39+'ACT'+#39);
    IF almacen = 0 THEN
    QProductos.SQL.add('and e.alm_codigo > 0 ') ELSE
    QProductos.SQL.add('and e.alm_codigo = '+inttostr(almacen));
    if Trim(edFamilia.Text) <> '' then
      QProductos.SQL.add('and p.fam_codigo = '+Trim(edFamilia.text));
    if Trim(edMarca.Text) <> '' then
      QProductos.SQL.add('and p.mar_codigo = '+Trim(edMarca.text));
    if Trim(edColor.Text) <> '' then
      QProductos.SQL.add('and p.col_codigo = '+Trim(edColor.text));
    if Trim(edProveedor.Text) <> '' then
      QProductos.SQL.add('and p.pro_codigo in (select pro_codigo from ProdProveedores where emp_codigo = '+IntToStr(DM.vp_cia)+' and sup_codigo = '+Trim(edProveedor.text)+')');

    if Trim(edSerie.Text) <> '' then
      QProductos.SQL.add('and p.pro_codigo in (select pro_codigo FROM PRODUCTOS_SERIE z where z.ser_numero= '+Trim(edSerie.text)+')');
    if rgTipo.ItemIndex = 1 then
      QProductos.SQL.add('and p.pro_nuevousado = '+#39+'N'+#39)
    else if rgTipo.ItemIndex = 2 then
      QProductos.SQL.add('and p.pro_nuevousado = '+#39+'U'+#39);

    if cbOpcion.itemindex = 0 then
      QProductos.sql.add('and p.pro_codigo like '+#39+trim(edOpcion.text)+#39)
    else if cbOpcion.itemindex = 1 then
      QProductos.sql.add('and p.pro_roriginal like '+#39+trim(edOpcion.text)+#39)
    else if cbOpcion.itemindex = 2 then
      QProductos.sql.add('and p.pro_rfabric like '+#39+trim(edOpcion.text)+#39)
    else if cbOpcion.itemindex = 3 then
      QProductos.sql.add('and p.pro_nombre like '+#39+edOpcion.text+#39)
    else if cbOpcion.itemindex = 4 then
      QProductos.sql.add('and p.pro_uso like '+#39+trim(edOpcion.text)+#39)
    else if cbOpcion.itemindex = 5 then
      QProductos.sql.add('and p.pro_costo like '+#39+trim(edOpcion.text)+#39);
    QProductos.sql.add('group by P.EMP_CODIGO, P.PRO_CODIGO,');
    QProductos.sql.add('P.PRO_RORIGINAL, P.PRO_RFABRIC, P.PRO_NOMBRE, P.PRO_PRECIO1,');
    QProductos.sql.add('P.PRO_PRECIO2, P.PRO_COSTO, P.PRO_PRECIO3, P.PRO_PRECIO4,');
    QProductos.sql.add('P.PRO_UBICACION, P.PRO_NUEVOUSADO, P.PRO_PRECIOMENOR, F.FAM_NOMBRE,');
    QProductos.sql.add('M.MAR_NOMBRE, C.COL_NOMBRE, P.PRO_FOTO,pro_costoempaque,E.EXI_EMPAQUE,');
    QProductos.sql.add('D.DEP_NOMBRE, P.PRO_ITBIS, substring(P.PRO_COMENTARIO,1,255),');
    QProductos.sql.add('p.pro_cantempaque, p.pro_montoitbis,P.PRO_serializado, um.nombre');
  end
  else
  begin
    QProductos.SQL.add('select');
    IF edProveedor.Text <> '' THEN
    QProductos.sql.add(Trim(edProveedor.Text)+' SUP_CODIGO,') ELSE
    QProductos.sql.add('0 SUP_CODIGO,');
    QProductos.SQL.add('P.EMP_CODIGO, P.PRO_CODIGO, P.PRO_RORIGINAL, P.PRO_RFABRIC,');
    QProductos.SQL.add('P.PRO_NOMBRE, P.PRO_PRECIO1/:tasa AS PRO_PRECIO1, P.PRO_PRECIO2/:tasa2 AS PRO_PRECIO2, P.PRO_COSTO/:tasacosto AS PRO_COSTO,');
    QProductos.SQL.add('P.PRO_PRECIO3/:tasa3 AS PRO_PRECIO3, P.PRO_PRECIO4/:tasa4 AS PRO_PRECIO4,');
    if almacen > 0 then
    QProductos.SQL.add('SUM(ISNULL(E.EXI_CANTIDAD,0)) AS EXISTUND,') else
    QProductos.SQL.add('(SELECT ISNULL(SUM(ISNULL(EXI_CANTIDAD,0)),0) FROM EXISTENCIAS WHERE PRO_CODIGO = P.PRO_CODIGO) AS EXISTUND,');
    QProductos.SQL.add('P.PRO_UBICACION, P.PRO_NUEVOUSADO,P.PRO_PRECIOMENOR/:tasamenor AS PRO_PRECIOMENOR,');
    QProductos.SQL.add('F.FAM_NOMBRE, M.MAR_NOMBRE, C.COL_NOMBRE, P.PRO_FOTO,pro_costoempaque/:tasacostoempaque AS pro_costoempaque,');
    QProductos.SQL.add('(SELECT ISNULL(SUM(ISNULL(EXI_EMPAQUE,0)),0) FROM EXISTENCIAS WHERE PRO_CODIGO = P.PRO_CODIGO) AS EXISTEMP, D.DEP_NOMBRE, P.PRO_ITBIS, substring(P.PRO_COMENTARIO,1,255) PRO_COMENTARIO,');
    QProductos.SQL.add('p.pro_cantempaque, p.pro_montoitbis,P.PRO_serializado, um.nombre as UnidadMedida');
    QProductos.SQL.Add(',cast(p.pro_costo*(1+(p.pro_montoitbis/100)) as numeric(18,4)) costoitbis');
    IF edProveedor.Text <> '' THEN
    QProductos.sql.add(',(SELECT SUP_NOMBRE FROM PROVEEDORES WHERE EMP_CODIGO = '+IntToStr(DM.vp_cia)+' AND SUP_CODIGO = '+edProveedor.Text+') SUP_NOMBRE') ELSE
    QProductos.sql.add(',(SELECT TOP 1 SUP_NOMBRE FROM PROVEEDORES WHERE SUP_CODIGO = (SELECT TOP 1 SUP_CODIGO FROM PRODPROVEEDORES WHERE PRO_CODIGO = P.PRO_CODIGO AND EMP_CODIGO = P.EMP_CODIGO))SUP_NOMBRE ');
    QProductos.SQL.add('FROM');
    QProductos.SQL.add('PRODUCTOS P');

    QProductos.SQL.add('LEFT OUTER JOIN DEPARTAMENTOS D ON');
    QProductos.SQL.add('(D.DEP_CODIGO = P.DEP_CODIGO AND D.EMP_CODIGO = P.EMP_CODIGO)');
    QProductos.SQL.add('LEFT  JOIN FAMILIAS F ON');
    QProductos.SQL.add('(F.FAM_CODIGO = P.FAM_CODIGO');
    QProductos.SQL.add('AND F.EMP_CODIGO = P.EMP_CODIGO)');
    QProductos.SQL.add('LEFT  JOIN MARCAS M ON');
    QProductos.SQL.add('(M.MAR_CODIGO = P.MAR_CODIGO');
    QProductos.SQL.add('AND M.EMP_CODIGO = P.EMP_CODIGO)');
    QProductos.SQL.add('LEFT  JOIN COLORES C ON');
    QProductos.SQL.add('(C.COL_CODIGO = P.COL_CODIGO)');

    QProductos.SQL.add('LEFT  JOIN UnidadMedida UM ON');
    QProductos.SQL.add('(p.UnidadID =um.UnidadID)');
    QProductos.SQL.add('');
    QProductos.SQL.add('');
    QProductos.SQL.add('');
    if almacen <> 0 then begin
    QProductos.SQL.add('INNER JOIN EXISTENCIAS E ON');
    QProductos.SQL.add('(e.emp_codigo = '+QuotedStr(IntToStr(DM.vp_cia)));
    QProductos.SQL.add('and p.pro_codigo = e.pro_codigo) ');
    QProductos.SQL.add('and p.emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.Value));
    if almacen = 0 then
    QProductos.SQL.add('and e.alm_codigo = (select top 1 (alm_codigo) from sucursales where suc_codigo = '+IntToStr(vp_suc)+ ' and emp_codigo = '+IntToStr(dm.vp_cia)+')') else
    QProductos.SQL.add('and e.alm_codigo = '+QuotedStr(IntToStr(almacen)));
    end;

    QProductos.sql.add('where p.emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.Value));

    if Trim(st) = '' then
      QProductos.sql.add('and p.pro_status = '+#39+'ACT'+#39);

    if Trim(edDepto.Text) <> '' then
      QProductos.SQL.add('and p.dep_codigo = '+Trim(edDepto.text));
    if Trim(edFamilia.Text) <> '' then
      QProductos.SQL.add('and p.fam_codigo = '+Trim(edFamilia.text));
    if Trim(edMarca.Text) <> '' then
      QProductos.SQL.add('and p.mar_codigo = '+Trim(edMarca.text));
    if Trim(edColor.Text) <> '' then
      QProductos.SQL.add('and p.col_codigo = '+Trim(edColor.text));
    if Trim(edProveedor.Text) <> '' then
      QProductos.SQL.add('and p.pro_codigo in (select pro_codigo from ProdProveedores where emp_codigo = '+IntToStr(DM.vp_cia)+' and sup_codigo = '+Trim(edProveedor.text)+')');
    if Trim(edSerie.Text) <> '' then
      QProductos.SQL.add('and p.pro_codigo in (select pro_codigo FROM PRODUCTOS_SERIE z where z.ser_numero= '+Trim(edSerie.text)+')');
    if rgTipo.ItemIndex = 1 then
      QProductos.SQL.add('and p.pro_nuevousado = '+#39+'N'+#39)
    else if rgTipo.ItemIndex = 2 then
      QProductos.SQL.add('and p.pro_nuevousado = '+#39+'U'+#39);

    if cbOpcion.itemindex = 0 then
      QProductos.sql.add('and p.pro_codigo like '+#39+trim(edOpcion.text)+#39)
    else if cbOpcion.itemindex = 1 then
      QProductos.sql.add('and p.pro_roriginal like '+#39+trim(edOpcion.text)+#39)
    else if cbOpcion.itemindex = 2 then
      QProductos.sql.add('and p.pro_rfabric like '+#39+trim(edOpcion.text)+#39)
    else if cbOpcion.itemindex = 3 then
      QProductos.sql.add('and p.pro_nombre like '+#39+edOpcion.text+#39)
    else if cbOpcion.itemindex = 4 then
      QProductos.sql.add('and p.pro_uso like '+#39+trim(edOpcion.text)+#39);
     QProductos.sql.add('group by P.EMP_CODIGO, P.PRO_CODIGO,');
    QProductos.sql.add('P.PRO_RORIGINAL, P.PRO_RFABRIC, P.PRO_NOMBRE, P.PRO_PRECIO1,');
    QProductos.sql.add('P.PRO_PRECIO2, P.PRO_COSTO, P.PRO_PRECIO3, P.PRO_PRECIO4,');
    QProductos.sql.add('P.PRO_UBICACION, P.PRO_NUEVOUSADO, P.PRO_PRECIOMENOR, F.FAM_NOMBRE,');
    QProductos.sql.add('M.MAR_NOMBRE, C.COL_NOMBRE, P.PRO_FOTO,pro_costoempaque,');
    QProductos.sql.add('D.DEP_NOMBRE, P.PRO_ITBIS, substring(P.PRO_COMENTARIO,1,255),');
    QProductos.sql.add('p.pro_cantempaque, p.pro_montoitbis,P.PRO_serializado, um.nombre');


  end ;
   QProductos.Parameters.ParamByName('tasa').Value := TasaCambio;
   QProductos.Parameters.ParamByName('tasa2').Value := TasaCambio;
   QProductos.Parameters.ParamByName('tasa3').Value := TasaCambio;
   QProductos.Parameters.ParamByName('tasa4').Value := TasaCambio;
   QProductos.Parameters.ParamByName('tasacosto').Value := TasaCambio;
   QProductos.Parameters.ParamByName('tasamenor').Value := TasaCambio;
   QProductos.Parameters.ParamByName('tasacostoempaque').Value := TasaCambio;
end;

procedure TfrmBuscaProducto.btSalirClick(Sender: TObject);
begin
  //actuliza producto
   if QProductos.Active then begin
   with qActulizaProd do begin
   Close;
   Parameters.ParamByName('PROD').Value := QProductospro_codigo.Value;
   Parameters.ParamByName('EMP').Value  := DM.vp_cia;
   ExecSQL;
   end;
   end;

  seleccion := 0;
  ckactiva.Checked := false;
  close;
end;

procedure TfrmBuscaProducto.edOpcionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    spAccionClick(Self);
    DBGrid1.SetFocus;
    dm.UltBusqueda := edOpcion.Text;
    key := #0;
  end;
end;

procedure TfrmBuscaProducto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_Escape then
  begin
    dm.UltBusqueda := '';
    dm.UltProducto := '';
    btSalirClick(self);
  end;
end;

procedure TfrmBuscaProducto.DBGrid1DblClick(Sender: TObject);
begin
  //actuliza producto
   with qActulizaProd do begin
   Close;
   Parameters.ParamByName('PROD').Value := QProductospro_codigo.Value;
   Parameters.ParamByName('EMP').Value  := DM.QParametrosPAR_INVEMPRESA.value;
   ExecSQL;
   end;
   //ckactiva.Checked := true;
  seleccion := 1;
  //CAMBIO REALIZADO POR JHONATTAN GOMEZ 16/02/2018
  IF DM.FormActivo('frmFactura') THEN BEGIN
  case frmFactura.RG_BuscaDet.ItemIndex of
  0:dm.UltProducto := QProductosPRO_CODIGO.AsString;
  1:dm.UltProducto := QProductosPRO_RORIGINAL.AsString;
  2:DM.UltProducto := QProductosPRO_RFABRIC.AsString;
  end;
  end;
  //FIN CAMBIO REALIZADO POR JHONATTAN GOMEZ 16/02/2018
  close;
end;

procedure TfrmBuscaProducto.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = #13) and (QProductosPRO_CODIGO.AsString <> '') then
  begin
    seleccion := 1;
    //CAMBIO REALIZADO POR JHONATTAN GOMEZ 16/02/2018
  DBGrid1DblClick(Sender);
  end;
  //FIN CAMBIO REALIZADO POR JHONATTAN GOMEZ 16/02/2018
    close;
end;

procedure TfrmBuscaProducto.FormCreate(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select mon_sigla, MON_RELACIONPESOCOMPRA from moneda');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and mon_codigo = :mon');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('mon').Value := dm.QParametrosMON_CODIGO.Value;
  dm.Query1.Open;
  Tasa := dm.Query1.FieldByName('MON_RELACIONPESOCOMPRA').AsFloat;

  if facturando = True then
  begin
   //si el parametro es multimoneda se procede a realizar el calculo en precio
     if (dm.QParametrospar_mostrarfacturadolares.Value = true) and  (codigomoneda = 2) then
      BEGIN
              IF TasaCambio>0 THEN
              BEGIN
		            QProductos.SQL.add('select');
                QProductos.SQL.add('P.EMP_CODIGO, P.PRO_CODIGO, P.PRO_RORIGINAL, P.PRO_RFABRIC,');
                QProductos.SQL.add('P.PRO_NOMBRE, P.PRO_PRECIO1*:tasa AS PRO_PRECIO1, P.PRO_PRECIO2,');
                QProductos.SQL.add('P.PRO_PRECIO3, P.PRO_PRECIO4, E.EXI_CANTIDAD AS EXISTUND,');
                QProductos.SQL.add('P.PRO_UBICACION, P.PRO_NUEVOUSADO,P.PRO_PRECIOMENOR,');
                QProductos.SQL.add('F.FAM_NOMBRE, M.MAR_NOMBRE, C.COL_NOMBRE, P.PRO_FOTO, p.pro_cantempaque,');
                QProductos.SQL.add('E.EXI_EMPAQUE AS EXISTEMP, D.DEP_NOMBRE, P.PRO_ITBIS, P.PRO_COMENTARIO, p.pro_montoitbis,P.PRO_serializado');
                QProductos.SQL.add('FROM');
                QProductos.SQL.add('PRODUCTOS P, EXISTENCIAS E');
                QProductos.SQL.add('LEFT OUTER JOIN FAMILIAS F ON');
                QProductos.SQL.add('(F.FAM_CODIGO = P.FAM_CODIGO');
                QProductos.SQL.add('AND F.EMP_CODIGO = P.EMP_CODIGO)');
                QProductos.SQL.add('LEFT OUTER JOIN MARCAS M ON');
                QProductos.SQL.add('(M.MAR_CODIGO = P.MAR_CODIGO');
                QProductos.SQL.add('AND M.EMP_CODIGO = P.EMP_CODIGO)');
                QProductos.SQL.add('LEFT OUTER JOIN COLORES C ON');
                QProductos.SQL.add('(C.COL_CODIGO = P.COL_CODIGO)');
                QProductos.SQL.add('where p.emp_codigo = e.emp_codigo');
                QProductos.SQL.add('and p.pro_codigo = e.pro_codigo');
                QProductos.SQL.add('and p.emp_codigo = :par_invempresa');
                QProductos.SQL.add('and p.pro_status = '+#39+'ACT'+#39);
                QProductos.SQL.add('and e.alm_codigo = :alm');
                QProductos.sql.add('and p.pro_nombre like '+#39+trim(edOpcion.text)+#39);
                QProductos.SQL.add('order by p.pro_nombre');
                QProductos.Parameters.ParamByName('alm').Value := almacen;
                QProductos.Parameters.ParamByName('tasa').Value := TasaCambio;

           END;
      END
      ELSE
      BEGIN
          QProductos.SQL.add('select');
          QProductos.SQL.add('P.EMP_CODIGO, P.PRO_CODIGO, P.PRO_RORIGINAL, P.PRO_RFABRIC,');
          QProductos.SQL.add('P.PRO_NOMBRE, P.PRO_PRECIO1, P.PRO_PRECIO2,');
          QProductos.SQL.add('P.PRO_PRECIO3, P.PRO_PRECIO4, E.EXI_CANTIDAD AS EXISTUND,');
          QProductos.SQL.add('P.PRO_UBICACION, P.PRO_NUEVOUSADO,P.PRO_PRECIOMENOR,');
          QProductos.SQL.add('F.FAM_NOMBRE, M.MAR_NOMBRE, C.COL_NOMBRE, P.PRO_FOTO, p.pro_cantempaque,');
          QProductos.SQL.add('E.EXI_EMPAQUE AS EXISTEMP, D.DEP_NOMBRE, P.PRO_ITBIS, P.PRO_COMENTARIO, p.pro_montoitbis,P.PRO_serializado');
          QProductos.SQL.add('FROM');
          QProductos.SQL.add('PRODUCTOS P, EXISTENCIAS E');
          QProductos.SQL.add('LEFT OUTER JOIN FAMILIAS F ON');
          QProductos.SQL.add('(F.FAM_CODIGO = P.FAM_CODIGO');
          QProductos.SQL.add('AND F.EMP_CODIGO = P.EMP_CODIGO)');
          QProductos.SQL.add('LEFT OUTER JOIN MARCAS M ON');
          QProductos.SQL.add('(M.MAR_CODIGO = P.MAR_CODIGO');
          QProductos.SQL.add('AND M.EMP_CODIGO = P.EMP_CODIGO)');
          QProductos.SQL.add('LEFT OUTER JOIN COLORES C ON');
          QProductos.SQL.add('(C.COL_CODIGO = P.COL_CODIGO)');
          QProductos.SQL.add('where p.emp_codigo = e.emp_codigo');
          QProductos.SQL.add('and p.pro_codigo = e.pro_codigo');
          QProductos.SQL.add('and p.emp_codigo = :par_invempresa');
          QProductos.SQL.add('and p.pro_status = '+#39+'ACT'+#39);
          QProductos.SQL.add('and e.alm_codigo = :alm');
          QProductos.sql.add('and p.pro_nombre like '+#39+trim(edOpcion.text)+#39);
          QProductos.SQL.add('order by p.pro_nombre');
          QProductos.Parameters.ParamByName('alm').Value := almacen;
    END
  end;
  cborden.ItemIndex := 3;
end;

procedure TfrmBuscaProducto.cbOpcionClick(Sender: TObject);
begin
  edOpcion.SetFocus;
  cborden.ItemIndex := cbOpcion.ItemIndex;
end;

procedure TfrmBuscaProducto.QProductosCalcFields(DataSet: TDataSet);
begin
  if QProductosPRO_NUEVOUSADO.Value = 'N' then
    QProductosTIPO.value := 'Nuevo'
  else if QProductosPRO_NUEVOUSADO.Value = 'U' then
    QProductosTIPO.value := 'Usado';

  QProductosPrecioTasa.Value := QProductosPRO_PRECIO1.Value / Tasa;
{  if QProductosPRO_ITBIS.Value = 'S' then
    QProductosCostoItbis.Value := QProductosPRO_COSTO.Value + ((QProductosPRO_COSTO.Value * QProductospro_montoitbis.Value)/100)
  else
    QProductosCostoItbis.Value := QProductosPRO_COSTO.Value;
 }
 
if QProductosPRO_ITBIS.Value = 'S' THEN
QProductosValorEmp.Value := QProductospro_costoempaque.Value * (1+(QProductospro_montoitbis.Value/100));

end;

procedure TfrmBuscaProducto.rgTipoClick(Sender: TObject);
begin
  edOpcion.SetFocus;
end;

procedure TfrmBuscaProducto.btFamiliaClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
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
    spAccionClick(Self);
    DBGrid1.SetFocus;
  end;
end;

procedure TfrmBuscaProducto.edFamiliaChange(Sender: TObject);
begin
  if trim(edFamilia.text) = '' then tFamilia.text := '';
end;

procedure TfrmBuscaProducto.edFamiliaKeyDown(Sender: TObject;
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
    spAccionClick(Self);
    DBGrid1.SetFocus;
  end;
end;

procedure TfrmBuscaProducto.spAccionClick(Sender: TObject);
begin
  screen.Cursor := crHourGlass;
  if Trim(edOpcion.Text) = '' then
    edOpcion.Text := '%'
  else
  begin
    if Pos('%',Trim(edOpcion.text)) = 0 then
      if dm.QParametrospar_busqueda_porciento.Value = 'True' then
        edOpcion.text := '%'+edOpcion.text+'%'
      else
        edOpcion.text := edOpcion.text + '%';
  end;

  QProductos.close;
  QProductos.sql.clear;

   if (dm.QParametrospar_mostrarfacturadolares.Value = true) and  (codigomoneda = 2) then
      CargarProductosDolares()
    ELSE CargarProductos();

 { if facturando = True then
  begin
    QProductos.SQL.add('select');
    IF edProveedor.Text <> '' THEN
    QProductos.sql.add(Trim(edProveedor.Text)+' SUP_CODIGO,') ELSE
    QProductos.sql.add('0 SUP_CODIGO,');
    QProductos.SQL.add('P.EMP_CODIGO, P.PRO_CODIGO, P.PRO_RORIGINAL, P.PRO_RFABRIC,');
    QProductos.SQL.add('P.PRO_NOMBRE, P.PRO_PRECIO1, P.PRO_PRECIO2, P.PRO_COSTO,');
    QProductos.SQL.add('P.PRO_PRECIO3, P.PRO_PRECIO4, SUM(ISNULL(E.EXI_CANTIDAD,0)) AS EXISTUND,');
    QProductos.SQL.add('P.PRO_UBICACION, P.PRO_NUEVOUSADO, P.PRO_PRECIOMENOR,');
    QProductos.SQL.add('F.FAM_NOMBRE, M.MAR_NOMBRE, C.COL_NOMBRE, P.PRO_FOTO,pro_costoempaque,');
    QProductos.SQL.add('E.EXI_EMPAQUE AS EXISTEMP, D.DEP_NOMBRE, P.PRO_ITBIS, substring(P.PRO_COMENTARIO,1,255) PRO_COMENTARIO,');
    QProductos.SQL.add('p.pro_cantempaque, p.pro_montoitbis,P.PRO_serializado, um.nombre as UnidadMedida');
     QProductos.SQL.Add(',cast(p.pro_costo*(1+(p.pro_montoitbis/100)) as numeric(18,4)) costoitbis');
    {IF edProveedor.Text <> '' THEN
    QProductos.sql.add(',(SELECT SUP_NOMBRE FROM PROVEEDORES WHERE EMP_CODIGO = '+IntToStr(DM.vp_cia)+' AND SUP_CODIGO = '+edProveedor.Text+') SUP_NOMBRE') ELSE
    QProductos.sql.add(',''N/A'' SUP_NOMBRE');}
  //   IF edProveedor.Text <> '' THEN
 //   QProductos.sql.add(',(SELECT SUP_NOMBRE FROM PROVEEDORES WHERE EMP_CODIGO = '+IntToStr(DM.vp_cia)+' AND SUP_CODIGO = '+edProveedor.Text+') SUP_NOMBRE') ELSE
 //   QProductos.sql.add(',(SELECT TOP 1 SUP_NOMBRE FROM PROVEEDORES WHERE SUP_CODIGO = (SELECT TOP 1 SUP_CODIGO FROM PRODPROVEEDORES WHERE PRO_CODIGO = P.PRO_CODIGO AND EMP_CODIGO = P.EMP_CODIGO))SUP_NOMBRE ');

  //  QProductos.SQL.add('FROM');
  //  QProductos.SQL.add('PRODUCTOS P');
//    QProductos.SQL.add('LEFT OUTER JOIN PRODUCTOS_SERIE Z ON');
//    QProductos.SQL.add('(Z.PRO_CODIGO = P.PRO_CODIGO AND Z.EMP_CODIGO = P.EMP_CODIGO)');
//    QProductos.SQL.add('LEFT JOIN DEPARTAMENTOS D ON');
 //   QProductos.SQL.add('(D.DEP_CODIGO = P.DEP_CODIGO AND D.EMP_CODIGO = P.EMP_CODIGO)');
 //   QProductos.SQL.add('LEFT JOIN FAMILIAS F ON');
 //   QProductos.SQL.add('(F.FAM_CODIGO = P.FAM_CODIGO');
 {   QProductos.SQL.add('AND F.EMP_CODIGO = P.EMP_CODIGO)');
    QProductos.SQL.add('LEFT JOIN MARCAS M ON');
    QProductos.SQL.add('(M.MAR_CODIGO = P.MAR_CODIGO');
    QProductos.SQL.add('AND M.EMP_CODIGO = P.EMP_CODIGO)');
    QProductos.SQL.add('LEFT JOIN COLORES C ON');
    QProductos.SQL.add('(C.COL_CODIGO = P.COL_CODIGO)');
    QProductos.SQL.add('LEFT JOIN UnidadMedida UM ON');
    QProductos.SQL.add('(p.UnidadID =um.UnidadID)');
    QProductos.SQL.add('');
    QProductos.SQL.add('');
    QProductos.SQL.add('');
    if almacen <> 0 then begin
    QProductos.SQL.add('INNER JOIN EXISTENCIAS E ON');
    QProductos.SQL.add('(e.emp_codigo = '+QuotedStr(IntToStr(DM.vp_cia)));
    QProductos.SQL.add('and p.pro_codigo = e.pro_codigo) ');
    QProductos.SQL.add('and p.emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.Value));
    if almacen = 0 then
    QProductos.SQL.add('and e.alm_codigo = (select top 1 (alm_codigo) from sucursales where suc_codigo = '+IntToStr(vp_suc)+ ' and emp_codigo = '+IntToStr(dm.vp_cia)+')') else
    QProductos.SQL.add('and e.alm_codigo = '+QuotedStr(IntToStr(almacen)));
    end;
    QProductos.SQL.add('and p.pro_status = '+#39+'ACT'+#39);
    IF almacen = 0 THEN
    QProductos.SQL.add('and e.alm_codigo > 0 ') ELSE
    QProductos.SQL.add('and e.alm_codigo = '+inttostr(almacen));
    if Trim(edFamilia.Text) <> '' then
      QProductos.SQL.add('and p.fam_codigo = '+Trim(edFamilia.text));
    if Trim(edMarca.Text) <> '' then
      QProductos.SQL.add('and p.mar_codigo = '+Trim(edMarca.text));
    if Trim(edColor.Text) <> '' then
      QProductos.SQL.add('and p.col_codigo = '+Trim(edColor.text));
    if Trim(edProveedor.Text) <> '' then
      QProductos.SQL.add('and p.pro_codigo in (select pro_codigo from ProdProveedores where emp_codigo = '+IntToStr(DM.vp_cia)+' and sup_codigo = '+Trim(edProveedor.text)+')');

    if Trim(edSerie.Text) <> '' then
      QProductos.SQL.add('and p.pro_codigo in (select pro_codigo FROM PRODUCTOS_SERIE z where z.ser_numero= '+Trim(edSerie.text)+')');
//      QProductos.SQL.add('and z.ser_numero = '+Trim(edSerie.text));

    if rgTipo.ItemIndex = 1 then
      QProductos.SQL.add('and p.pro_nuevousado = '+#39+'N'+#39)
    else if rgTipo.ItemIndex = 2 then
      QProductos.SQL.add('and p.pro_nuevousado = '+#39+'U'+#39);

    if cbOpcion.itemindex = 0 then
      QProductos.sql.add('and p.pro_codigo like '+#39+trim(edOpcion.text)+#39)
    else if cbOpcion.itemindex = 1 then
      QProductos.sql.add('and p.pro_roriginal like '+#39+trim(edOpcion.text)+#39)
    else if cbOpcion.itemindex = 2 then
      QProductos.sql.add('and p.pro_rfabric like '+#39+trim(edOpcion.text)+#39)
    else if cbOpcion.itemindex = 3 then
      QProductos.sql.add('and p.pro_nombre like '+#39+edOpcion.text+#39)
    else if cbOpcion.itemindex = 4 then
      QProductos.sql.add('and p.pro_uso like '+#39+trim(edOpcion.text)+#39)
    else if cbOpcion.itemindex = 5 then
      QProductos.sql.add('and p.pro_costo like '+#39+trim(edOpcion.text)+#39);
    QProductos.sql.add('group by P.EMP_CODIGO, P.PRO_CODIGO,');
    QProductos.sql.add('P.PRO_RORIGINAL, P.PRO_RFABRIC, P.PRO_NOMBRE, P.PRO_PRECIO1,');
    QProductos.sql.add('P.PRO_PRECIO2, P.PRO_COSTO, P.PRO_PRECIO3, P.PRO_PRECIO4,');
    QProductos.sql.add('P.PRO_UBICACION, P.PRO_NUEVOUSADO, P.PRO_PRECIOMENOR, F.FAM_NOMBRE,');
    QProductos.sql.add('M.MAR_NOMBRE, C.COL_NOMBRE, P.PRO_FOTO,pro_costoempaque,E.EXI_EMPAQUE,');
    QProductos.sql.add('D.DEP_NOMBRE, P.PRO_ITBIS, substring(P.PRO_COMENTARIO,1,255),');
    QProductos.sql.add('p.pro_cantempaque, p.pro_montoitbis,P.PRO_serializado, um.nombre');
  end
  else
  begin
    QProductos.SQL.add('select');
    IF edProveedor.Text <> '' THEN
    QProductos.sql.add(Trim(edProveedor.Text)+' SUP_CODIGO,') ELSE
    QProductos.sql.add('0 SUP_CODIGO,');
    QProductos.SQL.add('P.EMP_CODIGO, P.PRO_CODIGO, P.PRO_RORIGINAL, P.PRO_RFABRIC,');
    QProductos.SQL.add('P.PRO_NOMBRE, P.PRO_PRECIO1, P.PRO_PRECIO2, P.PRO_COSTO,');
    QProductos.SQL.add('P.PRO_PRECIO3, P.PRO_PRECIO4,');
    if almacen > 0 then
    QProductos.SQL.add('SUM(ISNULL(E.EXI_CANTIDAD,0)) AS EXISTUND,') else
    QProductos.SQL.add('(SELECT ISNULL(SUM(ISNULL(EXI_CANTIDAD,0)),0) FROM EXISTENCIAS WHERE PRO_CODIGO = P.PRO_CODIGO) AS EXISTUND,');
    QProductos.SQL.add('P.PRO_UBICACION, P.PRO_NUEVOUSADO,P.PRO_PRECIOMENOR,');
    QProductos.SQL.add('F.FAM_NOMBRE, M.MAR_NOMBRE, C.COL_NOMBRE, P.PRO_FOTO,pro_costoempaque,');
    QProductos.SQL.add('(SELECT ISNULL(SUM(ISNULL(EXI_EMPAQUE,0)),0) FROM EXISTENCIAS WHERE PRO_CODIGO = P.PRO_CODIGO) AS EXISTEMP, D.DEP_NOMBRE, P.PRO_ITBIS, substring(P.PRO_COMENTARIO,1,255) PRO_COMENTARIO,');
    QProductos.SQL.add('p.pro_cantempaque, p.pro_montoitbis,P.PRO_serializado, um.nombre as UnidadMedida');
    QProductos.SQL.Add(',cast(p.pro_costo*(1+(p.pro_montoitbis/100)) as numeric(18,4)) costoitbis');
    IF edProveedor.Text <> '' THEN
    QProductos.sql.add(',(SELECT SUP_NOMBRE FROM PROVEEDORES WHERE EMP_CODIGO = '+IntToStr(DM.vp_cia)+' AND SUP_CODIGO = '+edProveedor.Text+') SUP_NOMBRE') ELSE
    QProductos.sql.add(',(SELECT TOP 1 SUP_NOMBRE FROM PROVEEDORES WHERE SUP_CODIGO = (SELECT TOP 1 SUP_CODIGO FROM PRODPROVEEDORES WHERE PRO_CODIGO = P.PRO_CODIGO AND EMP_CODIGO = P.EMP_CODIGO))SUP_NOMBRE ');
    QProductos.SQL.add('FROM');
    QProductos.SQL.add('PRODUCTOS P');
   {QProductos.SQL.add('INNER JOIN EXISTENCIAS E ON');
    QProductos.SQL.add('(e.emp_codigo = '+QuotedStr(IntToStr(DM.vp_cia)));
    QProductos.SQL.add('and p.pro_codigo = e.pro_codigo) ');
    QProductos.SQL.add('and p.emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.Value));
    if almacen = 0 then
    QProductos.SQL.add('and e.alm_codigo = (select top 1 (alm_codigo) from sucursales where suc_codigo = '+IntToStr(vp_suc)+ ' and emp_codigo = '+IntToStr(dm.vp_cia)+')') else
    QProductos.SQL.add('and e.alm_codigo = '+QuotedStr(IntToStr(almacen)));
    QProductos.SQL.add('and p.pro_status = '+#39+'ACT'+#39);
    IF almacen = 0 THEN
    QProductos.SQL.add('and e.alm_codigo > 0 ') ELSE
    QProductos.SQL.add('and e.alm_codigo = '+inttostr(almacen));  }

//    QProductos.SQL.add('LEFT OUTER JOIN PRODUCTOS_SERIE Z ON');
//    QProductos.SQL.add('(Z.PRO_CODIGO = P.PRO_CODIGO AND Z.EMP_CODIGO = P.EMP_CODIGO)');

   { QProductos.SQL.add('LEFT OUTER JOIN DEPARTAMENTOS D ON');
    QProductos.SQL.add('(D.DEP_CODIGO = P.DEP_CODIGO AND D.EMP_CODIGO = P.EMP_CODIGO)');
    QProductos.SQL.add('LEFT  JOIN FAMILIAS F ON');
    QProductos.SQL.add('(F.FAM_CODIGO = P.FAM_CODIGO');
    QProductos.SQL.add('AND F.EMP_CODIGO = P.EMP_CODIGO)');
    QProductos.SQL.add('LEFT  JOIN MARCAS M ON');
    QProductos.SQL.add('(M.MAR_CODIGO = P.MAR_CODIGO');
    QProductos.SQL.add('AND M.EMP_CODIGO = P.EMP_CODIGO)');
    QProductos.SQL.add('LEFT  JOIN COLORES C ON');
    QProductos.SQL.add('(C.COL_CODIGO = P.COL_CODIGO)');

    QProductos.SQL.add('LEFT  JOIN UnidadMedida UM ON');
    QProductos.SQL.add('(p.UnidadID =um.UnidadID)');
    QProductos.SQL.add('');
    QProductos.SQL.add('');
    QProductos.SQL.add('');
    if almacen <> 0 then begin
    QProductos.SQL.add('INNER JOIN EXISTENCIAS E ON');
    QProductos.SQL.add('(e.emp_codigo = '+QuotedStr(IntToStr(DM.vp_cia)));
    QProductos.SQL.add('and p.pro_codigo = e.pro_codigo) ');
    QProductos.SQL.add('and p.emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.Value));
    if almacen = 0 then
    QProductos.SQL.add('and e.alm_codigo = (select top 1 (alm_codigo) from sucursales where suc_codigo = '+IntToStr(vp_suc)+ ' and emp_codigo = '+IntToStr(dm.vp_cia)+')') else
    QProductos.SQL.add('and e.alm_codigo = '+QuotedStr(IntToStr(almacen)));
    end;
    {QProductos.SQL.add('INNER JOIN EXISTENCIAS E ON');
    QProductos.SQL.add('(e.emp_codigo = '+QuotedStr(IntToStr(DM.vp_cia)));
    QProductos.SQL.add('and p.pro_codigo = e.pro_codigo) ');
    QProductos.SQL.add('and p.emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.Value));
    if almacen = 0 then
    QProductos.SQL.add('and e.alm_codigo = (select top 1 (alm_codigo) from sucursales where suc_codigo = '+IntToStr(vp_suc)+ ' and emp_codigo = '+IntToStr(dm.vp_cia)+')') else
    QProductos.SQL.add('and e.alm_codigo = '+QuotedStr(IntToStr(almacen)));
    QProductos.SQL.add('and p.pro_status = '+#39+'ACT'+#39);
    IF almacen = 0 THEN
    QProductos.SQL.add('and e.alm_codigo > 0 ') ELSE
    QProductos.SQL.add('and e.alm_codigo = '+inttostr(almacen));
     }
    {QProductos.sql.add('where p.emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.Value));

    if Trim(st) = '' then
      QProductos.sql.add('and p.pro_status = '+#39+'ACT'+#39);

    if Trim(edDepto.Text) <> '' then
      QProductos.SQL.add('and p.dep_codigo = '+Trim(edDepto.text));
    if Trim(edFamilia.Text) <> '' then
      QProductos.SQL.add('and p.fam_codigo = '+Trim(edFamilia.text));
    if Trim(edMarca.Text) <> '' then
      QProductos.SQL.add('and p.mar_codigo = '+Trim(edMarca.text));
    if Trim(edColor.Text) <> '' then
      QProductos.SQL.add('and p.col_codigo = '+Trim(edColor.text));
    if Trim(edProveedor.Text) <> '' then
      QProductos.SQL.add('and p.pro_codigo in (select pro_codigo from ProdProveedores where emp_codigo = '+IntToStr(DM.vp_cia)+' and sup_codigo = '+Trim(edProveedor.text)+')');
    if Trim(edSerie.Text) <> '' then
      QProductos.SQL.add('and p.pro_codigo in (select pro_codigo FROM PRODUCTOS_SERIE z where z.ser_numero= '+Trim(edSerie.text)+')');
//      QProductos.SQL.add('and z.ser_numero = '+Trim(edSerie.text));

    if rgTipo.ItemIndex = 1 then
      QProductos.SQL.add('and p.pro_nuevousado = '+#39+'N'+#39)
    else if rgTipo.ItemIndex = 2 then
      QProductos.SQL.add('and p.pro_nuevousado = '+#39+'U'+#39);

    if cbOpcion.itemindex = 0 then
      QProductos.sql.add('and p.pro_codigo like '+#39+trim(edOpcion.text)+#39)
    else if cbOpcion.itemindex = 1 then
      QProductos.sql.add('and p.pro_roriginal like '+#39+trim(edOpcion.text)+#39)
    else if cbOpcion.itemindex = 2 then
      QProductos.sql.add('and p.pro_rfabric like '+#39+trim(edOpcion.text)+#39)
    else if cbOpcion.itemindex = 3 then
      QProductos.sql.add('and p.pro_nombre like '+#39+edOpcion.text+#39)
    else if cbOpcion.itemindex = 4 then
      QProductos.sql.add('and p.pro_uso like '+#39+trim(edOpcion.text)+#39);
     QProductos.sql.add('group by P.EMP_CODIGO, P.PRO_CODIGO,');
    QProductos.sql.add('P.PRO_RORIGINAL, P.PRO_RFABRIC, P.PRO_NOMBRE, P.PRO_PRECIO1,');
    QProductos.sql.add('P.PRO_PRECIO2, P.PRO_COSTO, P.PRO_PRECIO3, P.PRO_PRECIO4,');
    QProductos.sql.add('P.PRO_UBICACION, P.PRO_NUEVOUSADO, P.PRO_PRECIOMENOR, F.FAM_NOMBRE,');
    QProductos.sql.add('M.MAR_NOMBRE, C.COL_NOMBRE, P.PRO_FOTO,pro_costoempaque,');
    QProductos.sql.add('D.DEP_NOMBRE, P.PRO_ITBIS, substring(P.PRO_COMENTARIO,1,255),');
    QProductos.sql.add('p.pro_cantempaque, p.pro_montoitbis,P.PRO_serializado, um.nombre');
  end;
      }
  case cborden.ItemIndex of
    0 : QProductos.SQL.add('order by p.pro_codigo');
    1 : QProductos.SQL.add('order by p.pro_roriginal');
    2 : QProductos.SQL.add('order by p.pro_rfabric');
    3 : QProductos.SQL.add('order by p.pro_nombre');
    4 : QProductos.SQL.add('order by p.pro_uso');
    5 : QProductos.SQL.add('order by p.pro_costo');
    6 : QProductos.SQL.add('order by z.ser_numero');
  end;
  QProductos.open;
  screen.Cursor := crDefault;
 // DBGrid1.setfocus;
end;

procedure TfrmBuscaProducto.edMarcaKeyDown(Sender: TObject; var Key: Word;
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
    spAccionClick(Self);
    DBGrid1.SetFocus;
  end;
end;

procedure TfrmBuscaProducto.edMarcaChange(Sender: TObject);
begin
  if trim(edMarca.text) = '' then tMarca.text := '';
end;

procedure TfrmBuscaProducto.edColorChange(Sender: TObject);
begin
  if trim(edColor.text) = '' then tColor.text := '';
end;

procedure TfrmBuscaProducto.btMarcaClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
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
    spAccionClick(Self);
    DBGrid1.SetFocus;
  end;
end;

procedure TfrmBuscaProducto.SpeedButton1Click(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
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
    spAccionClick(Self);
    DBGrid1.SetFocus;
  end;
end;

procedure TfrmBuscaProducto.edColorKeyDown(Sender: TObject; var Key: Word;
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
    spAccionClick(Self);
    DBGrid1.SetFocus;
  end;
end;

procedure TfrmBuscaProducto.FormActivate(Sender: TObject);
var
  a : integer;
begin
IF DM.FormActivo('frmFactura') THEN BEGIN
  if dm.QParametrospar_busq_por_referencia.Value = True then
  frmBuscaProducto.cbOpcion.ItemIndex := frmFactura.RG_BuscaDet.ItemIndex else
  frmBuscaProducto.cbOpcion.ItemIndex := 3;
end else begin
  if dm.QParametrospar_busq_por_referencia.Value = True then
  frmBuscaProducto.cbOpcion.ItemIndex := 1 else
  frmBuscaProducto.cbOpcion.ItemIndex := 3;
end;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select upper(bus_campo) as bus_campo from prodbusqueda');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('order by bus_secuencia');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Open;
  dm.Query1.DisableControls;

  QProductosPRO_PRECIO1.DisplayLabel := dm.QParametrosPAR_PREDESCRIP1.Value;
  QProductosPRO_PRECIO2.DisplayLabel := dm.QParametrosPAR_PREDESCRIP2.Value;
  QProductosPRO_PRECIO3.DisplayLabel := dm.QParametrosPAR_PREDESCRIP3.Value;
  QProductosPRO_PRECIO4.DisplayLabel := dm.QParametrosPAR_PREDESCRIP4.Value;

  a := 0;
  while not dm.Query1.Eof do
  begin
    DBGrid1.Columns.Add;
    if (dm.Query1.FieldByName('bus_campo').AsString = 'COSTO') then
    begin
      if dm.QUsuariosusu_ver_costo.Value = 'True' then
        DBGrid1.Columns[a].FieldName := 'PRO_COSTO'
      else
        DBGrid1.Columns[a].Destroy;
    end;

    if dm.Query1.FieldByName('bus_campo').AsString = 'EXISTENCIA UND' then
      DBGrid1.Columns[a].FieldName := 'EXISTUND';
    if dm.Query1.FieldByName('bus_campo').AsString = 'EXISTENCIA EMP' then
      DBGrid1.Columns[a].FieldName := 'EXISTEMP';
    if dm.Query1.FieldByName('bus_campo').AsString = 'CODIGO' then
      DBGrid1.Columns[a].FieldName := 'PRO_CODIGO';
    if dm.Query1.FieldByName('bus_campo').AsString = 'REF. ORIGINAL' then
      DBGrid1.Columns[a].FieldName := 'PRO_RORIGINAL';
    if dm.Query1.FieldByName('bus_campo').AsString = 'REF. FABRICANTE' then begin
      DBGrid1.Columns[a].FieldName := 'PRO_RFABRIC';
      DBGrid1.Columns[a].Width := DBGrid1.Columns[a].Width + 40;
      end;
    if dm.Query1.FieldByName('bus_campo').AsString = 'NOMBRE DEL PRODUCTO' then begin
      DBGrid1.Columns[a].FieldName := 'PRO_NOMBRE';
      DBGrid1.Columns[a].Width := DBGrid1.Columns[a].Width + 80;
    end;
    if dm.Query1.FieldByName('bus_campo').AsString = 'PRECIO1' then
      DBGrid1.Columns[a].FieldName := 'pro_precio1';
    if dm.Query1.FieldByName('bus_campo').AsString = 'PRECIO2' then
      DBGrid1.Columns[a].FieldName := 'pro_precio2';
    if dm.Query1.FieldByName('bus_campo').AsString = 'PRECIO3' then
      DBGrid1.Columns[a].FieldName := 'pro_precio3';
    if dm.Query1.FieldByName('bus_campo').AsString = 'PRECIO4' then
      DBGrid1.Columns[a].FieldName := 'pro_precio4';
    if dm.Query1.FieldByName('bus_campo').AsString = 'UBICACION' then
    begin
       DBGrid1.Columns[a].FieldName := 'PRO_UBICACION';
      DBGrid1.Columns[a].Width := DBGrid1.Columns[a].Width + 200;
    end;

    if dm.Query1.FieldByName('bus_campo').AsString = 'TIPO (NUEVO, USADO)' then
      DBGrid1.Columns[a].FieldName := 'Tipo';
    if dm.Query1.FieldByName('bus_campo').AsString = 'FAMILIA' then
      DBGrid1.Columns[a].FieldName := 'FAM_NOMBRE';
    if dm.Query1.FieldByName('bus_campo').AsString = 'PRECIO MINIMO' then
      DBGrid1.Columns[a].FieldName := 'PRO_PRECIOMENOR';
    if dm.Query1.FieldByName('bus_campo').AsString = 'MARCA' then
      DBGrid1.Columns[a].FieldName := 'MAR_NOMBRE';
    if dm.Query1.FieldByName('bus_campo').AsString = 'DEPARTAMENTO' then
      DBGrid1.Columns[a].FieldName := 'DEP_NOMBRE';
    if dm.Query1.FieldByName('bus_campo').AsString = 'COLOR' then
      DBGrid1.Columns[a].FieldName := 'COL_NOMBRE';
    if dm.Query1.FieldByName('bus_campo').AsString = 'ITBIS' then
      DBGrid1.Columns[a].FieldName := 'PRO_MONTOITBIS';
    if dm.Query1.FieldByName('bus_campo').AsString = 'PRECIO TASA' then
    begin
      DBGrid1.Columns[a].FieldName := 'PrecioTasa';
      DBGrid1.Columns[a].Title.Caption := 'Tasa '+format('%n',[Tasa]);
    end;
    if dm.Query1.FieldByName('bus_campo').AsString = 'SUPLIDOR' then
      DBGrid1.Columns[a].FieldName := 'SUP_NOMBRE';

    if dm.Query1.FieldByName('bus_campo').AsString = 'CANT/EMPAQUE' then
      DBGrid1.Columns[a].FieldName := 'pro_cantempaque';

    if (dm.Query1.FieldByName('bus_campo').AsString = 'COSTO+ITBIS') then
    begin
      if dm.QUsuariosusu_ver_costo.Value = 'True' then
        DBGrid1.Columns[a].FieldName := 'costoitbis'
      else
        DBGrid1.Columns[a].Destroy;
    end;

    if (dm.Query1.FieldByName('bus_campo').AsString = 'COSTOEMPAQUE') then
    begin
      if dm.QUsuariosusu_ver_costo.Value = 'True' then begin
      DBGrid1.Columns[a].FieldName := 'pro_costoempaque';
      DBGrid1.Columns[a].Title.Caption := 'COSTO EMPAQUE';
      end
      else
        DBGrid1.Columns[a].Destroy;
      end;

    //UNIDAD DE MEDIDA
    if dm.Query1.FieldByName('bus_campo').AsString = 'UNIDAD DE MEDIDA' then
      DBGrid1.Columns[a].FieldName := 'UnidadMedida';



    a := a + 1;
    dm.Query1.Next;
  end;
  dm.Query1.EnableControls;
  edOpcion.SetFocus;

  if not QProductos.Active then
  begin
    if QProductos.Filtered = false then
    begin
      if dm.UltBusqueda <> '' then
      begin
        if dm.QParametrospar_busqueda_dejar_ultimo.Value = 'True' then
        begin
          edOpcion.Text := dm.UltBusqueda;
          spAccionClick(Self);
          DBGrid1.SetFocus;
          if (dm.UltProducto <> '') then
            QProductos.Locate('pro_codigo',dm.UltProducto,[]);
        end;
      end
      else
      begin
        if eddepto.Text <> '' then
          spAccionClick(Self);
          DBGrid1.SetFocus;
      end;
    end
    else
    begin
      spAccionClick(Self);
      DBGrid1.SetFocus;
      if (dm.UltProducto <> '') then
        QProductos.Locate('pro_codigo',dm.UltProducto,[]);
    end;
  end;
  edOpcion.SetFocus;
  gunidades.Visible :=  dm.QParametrospar_inv_unidad_medida.Value = 'True';
//  facturando := false;
end;

procedure TfrmBuscaProducto.QProductosAfterOpen(DataSet: TDataSet);
begin
  if not QEscalas.Active then QEscalas.Open;
  if not QVence.Active   then QVence.Open;
  QUnidades.Close;
  QUnidades.Parameters.ParamByName('emp_codigo').Value := dm.QParametrosPAR_INVEMPRESA.Value;
  QUnidades.Parameters.ParamByName('pro_codigo').Value := QProductosPRO_CODIGO.Value;
  QUnidades.Open;
  if dm.QParametrospar_busqueda_dejar_ultimo.Value = 'True' THEN
  if dm.UltProducto <> '' then
  QProductos.Locate('PRO_CODIGO',DM.UltProducto,[])

end;

procedure TfrmBuscaProducto.DBGrid2CellClick(Column: TColumn);
begin
  DBGrid1.SetFocus;
end;

procedure TfrmBuscaProducto.BitBtn1Click(Sender: TObject);
begin
  Application.CreateForm(tfrmConsEquivalencias, frmConsEquivalencias);
  frmConsEquivalencias.QEquivalencia.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
  frmConsEquivalencias.QEquivalencia.Parameters.ParamByName('pro').Value := QProductosPRO_CODIGO.Value;
  frmConsEquivalencias.QEquivalencia.Open;
  frmConsEquivalencias.lbprod.Caption := QProductosPRO_NOMBRE.Value;
  frmConsEquivalencias.ShowModal;
  if frmConsEquivalencias.seleccion = 1 then
  begin
    cbOpcion.ItemIndex := 3;
    edOpcion.Text := '';
    spAccionClick(self);
    DBGrid1.SetFocus;
    QProductos.Locate('pro_codigo',frmConsEquivalencias.QEquivalenciaPRO_CODIGOEQUIVALENTE.Value,[]);
  end;
  frmConsEquivalencias.Release;
  DBGrid1.SetFocus;
end;

procedure TfrmBuscaProducto.SpeedButton2Click(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
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
    spAccionClick(Self);
    DBGrid1.SetFocus;
  end;
end;

procedure TfrmBuscaProducto.edDeptoChange(Sender: TObject);
begin
  if trim(edDepto.text) = '' then tDepto.text := '';
end;

procedure TfrmBuscaProducto.edDeptoKeyDown(Sender: TObject; var Key: Word;
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
    spAccionClick(Self);
    DBGrid1.SetFocus;
  end;
end;

procedure TfrmBuscaProducto.ckactivaClick(Sender: TObject);
begin
  try
    edOpcion.SetFocus;
  except
  end;
end;

procedure TfrmBuscaProducto.Verfoto1Click(Sender: TObject);
begin
  application.createform(tfrmverfoto, frmverfoto);
  frmverfoto.image1.picture.loadfromfile(qproductospro_foto.value);
  frmverfoto.showmodal;
  frmverfoto.release;
end;

procedure TfrmBuscaProducto.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if  Trim(QProductospro_comentario.Value) <> '' then
  begin
     DBGrid1.canvas.font.Style := DBGrid1.canvas.font.Style + [fsBold];
     DBGrid1.DefaultDrawcolumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TfrmBuscaProducto.btProveedorClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
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
    dm.Query1.open;
    tProveedor.text := dm.Query1.fieldbyname('sup_nombre').asstring;
    edProveedor.setfocus;
    spAccionClick(Self);
    DBGrid1.SetFocus;
  end;
end;

procedure TfrmBuscaProducto.edProveedorChange(Sender: TObject);
begin
  if trim(edProveedor.text) = '' then tProveedor.text := '';
end;

procedure TfrmBuscaProducto.edProveedorKeyDown(Sender: TObject;
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
    spAccionClick(Self);
    DBGrid1.SetFocus;
  end;
end;

procedure TfrmBuscaProducto.ExistenciaxAlmacen1Click(Sender: TObject);
begin
  if  ((QProductos.Active = false ) or (QProductos.RecordCount < 1)) then
    exit;

  application.createform(tfrmProductosXAlmacen, frmProductosXAlmacen);

  frmProductosXAlmacen.idEmpresa := dm.vp_cia;//QProductos['EMP_CODIGO'];
  frmProductosXAlmacen.idProducto :=  QProductos['PRO_CODIGO'];
  frmProductosXAlmacen.Descripcion := QProductos['PRO_NOMBRE'];
  frmProductosXAlmacen.showmodal;
  frmProductosXAlmacen.release;
end;

end.
