unit PVENTA77;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, QuerySearchDlgADO, Db, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, cxTimeEdit,
  cxDropDownEdit, cxCalendar, DateUtils;

type
  TfrmExistProducto = class(TForm)
    Label6: TLabel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    edProd: TEdit;
    tProd: TEdit;
    btPrint: TBitBtn;
    btClose: TBitBtn;
    Label4: TLabel;
    btAlmacen: TSpeedButton;
    edAlmacen: TEdit;
    tAlmacen: TEdit;
    Search: TQrySearchDlgADO;
    ckcompra: TCheckBox;
    ckentrada: TCheckBox;
    ckdevolventa: TCheckBox;
    ckfactura: TCheckBox;
    cksalilda: TCheckBox;
    ckdevolcompra: TCheckBox;
    chkAjusteInv: TCheckBox;
    chkInvInicial: TCheckBox;
    CkVencimiento: TCheckBox;
    lblDepto: TLabel;
    lblCliente: TLabel;
    EdtDepto: TEdit;
    EdtCliente: TEdit;
    btnDepto: TSpeedButton;
    btnCliente: TSpeedButton;
    EdtCienteN: TEdit;
    EdtDeptoN: TEdit;
    lblSuplidor: TLabel;
    EdtSuplidor: TEdit;
    btnSuplidor: TSpeedButton;
    EdtSuplidorN: TEdit;
    Fecha2: TDateTimePicker;
    Fecha1: TDateTimePicker;
    Time1: TDateTimePicker;
    procedure SpeedButton1Click(Sender: TObject);
    procedure edProdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edAlmacenChange(Sender: TObject);
    procedure edAlmacenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btAlmacenClick(Sender: TObject);
    procedure btPrintClick(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnDeptoClick(Sender: TObject);
    procedure btnClienteClick(Sender: TObject);
    procedure EdtDeptoChange(Sender: TObject);
    procedure EdtDeptoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtClienteChange(Sender: TObject);
    procedure EdtClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtSuplidorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtSuplidorChange(Sender: TObject);
    procedure btnSuplidorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    prod : integer;
  end;

var
  frmExistProducto: TfrmExistProducto;

implementation

uses PVENTA33, RVENTA42, SIGMA01, RVENTA92;

{$R *.dfm}

procedure TfrmExistProducto.SpeedButton1Click(Sender: TObject);
begin
  application.createform(tfrmBuscaProducto, frmBuscaProducto);
  frmBuscaProducto.showmodal;
  if frmBuscaProducto.seleccion = 1 then
  begin
    if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
       edProd.text := inttostr(frmBuscaProducto.QProductosPRO_CODIGO.value)
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
       edProd.text := frmBuscaProducto.QProductosPRO_RFABRIC.value
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
       edProd.text := frmBuscaProducto.QProductosPRO_RORIGINAL.value;
    prod := frmBuscaProducto.QProductosPRO_CODIGO.value;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select pro_nombre from productos');
    dm.Query1.sql.add('where emp_codigo = :emp');
    if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
       dm.Query1.sql.add('and pro_codigo = '+edProd.text)
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
       dm.Query1.sql.add('and pro_rfabric = '+#39+edProd.text+#39)
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
       dm.Query1.sql.add('and pro_roriginal = '+#39+edProd.text+#39);
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tProd.text := dm.Query1.FieldByName('pro_nombre').AsString;
    edProd.SetFocus;
  end;
  frmBuscaProducto.release;
end;

procedure TfrmExistProducto.edProdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edProd.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select pro_nombre, pro_codigo from productos');
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
        messagedlg('ESTE PRODUCTO NO EXISTE',mterror,[mbok],0);
        edProd.setfocus;
      end
      else
      begin
        tProd.text := dm.Query1.FieldByName('pro_nombre').AsString;
        prod := dm.Query1.FieldByName('pro_codigo').asinteger;
      end;
    end;
  end;
end;

procedure TfrmExistProducto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmExistProducto.FormCreate(Sender: TObject);
begin
  Fecha1.Date := StartOfTheMonth(date);
  Fecha2.Date := Date;

  


if not (DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados') then
  lblDepto.Caption := 'Depto' else
  lblDepto.Caption := 'Proyecto';
end;

procedure TfrmExistProducto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
end;

procedure TfrmExistProducto.edAlmacenChange(Sender: TObject);
begin
  if trim(edAlmacen.text) = '' then tAlmacen.text := '';
end;

procedure TfrmExistProducto.edAlmacenKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edAlmacen.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select alm_nombre, alm_codigo');
      dm.Query1.sql.add('from almacen');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and alm_codigo = :alm');
      dm.Query1.Parameters.parambyname('alm').Value := strtoint(edAlmacen.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('ALMACEN NO EXISTE',mterror,[mbok],0);
        edAlmacen.setFocus;
      end
      else
        tAlmacen.text := dm.Query1.fieldbyname('alm_nombre').asstring;
    end;
  end;
end;

procedure TfrmExistProducto.btAlmacenClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C�digo');
  Search.Query.clear;
  Search.Query.add('select alm_nombre, alm_codigo');
  Search.ResultField := 'alm_codigo';
  Search.Query.add('from almacen');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.Title := 'Listado de Almacenes';
  if Search.execute then
  begin
    edAlmacen.text := search.valuefield;
    edAlmacen.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select alm_codigo, alm_nombre');
    dm.Query1.sql.add('from almacen');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and alm_codigo = :alm');
    dm.Query1.Parameters.parambyname('alm').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tAlmacen.text := dm.Query1.fieldbyname('alm_nombre').asstring;
    edAlmacen.setfocus;
  end;
end;

procedure TfrmExistProducto.btPrintClick(Sender: TObject);
begin
  TRY
  if Trim(edProd.Text) = '' then
  begin
    if Trim(edAlmacen.Text) <> '' then
    begin
      Application.CreateForm(tRExistProdGeneral, RExistProdGeneral);
      screen.Cursor := crHourGlass;

      //RExistProdGeneral.entradas := ckEntradas.Checked;
      //RExistProdGeneral.salidas  := ckConduces.Checked;

      RExistProdGeneral.entradas := True;
      RExistProdGeneral.salidas  := True;

      RExistProdGeneral.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
      RExistProdGeneral.lbAlmacen.Caption := tAlmacen.Text;

      RExistProdGeneral.QProductos.Parameters.ParamByName('fec1').DataType := ftDate;
      RExistProdGeneral.QProductos.Parameters.ParamByName('fec2').DataType := ftDate;
      RExistProdGeneral.QProductos.Parameters.ParamByName('fec1').Value    := FormatDateTime('dd/mm/yyyy',Fecha1.Date);//+' '+FormatDateTime('hh:mm',TEdt_Timer.Time);
      RExistProdGeneral.QProductos.Parameters.ParamByName('fec2').Value    := Fecha2.Date;
      if edAlmacen.Text <> '' then begin
      RExistProdGeneral.QProductos.Parameters.ParamByName('alm').Value     := StrToInt(edAlmacen.Text);
      RExistProdGeneral.QProductos.Parameters.ParamByName('alm2').Value    := StrToInt(edAlmacen.Text);
      Exit;
      end
      else
      begin
      RExistProdGeneral.QProductos.Parameters.ParamByName('alm').Value     := 0;
      RExistProdGeneral.QProductos.Parameters.ParamByName('alm2').Value    := 0;
      end;
      RExistProdGeneral.QProductos.Open;

      screen.Cursor := crDefault;
      RExistProdGeneral.PrinterSetup;
      RExistProdGeneral.Preview;
      RExistProdGeneral.Destroy;
    end;
  end
  else
  begin
    Application.CreateForm(tRExistProd, RExistProd);
    screen.Cursor := crHourGlass;
    RExistProd.lbAlmacen.Caption := tAlmacen.Text;
      RExistProd.QProductos.Close;
      RExistProd.QProductos.SQL.Clear;
      RExistProd.QProductos.SQL.Add('select p.PRO_CODIGO, ');
      RExistProd.QProductos.SQL.Add('ISNULL(sum(e.exi_Cantidad),0) as PRO_EXISTENCIA,');
      RExistProd.QProductos.SQL.Add('ISNULL(p.PRO_INVINICIAL,0) PRO_INVINICIAL, p.PRO_NOMBRE, p.PRO_RFABRIC,');
      RExistProd.QProductos.SQL.Add('p.PRO_RORIGINAL, sum(e.exi_fisico) as PRO_INVFISICO,');
      RExistProd.QProductos.SQL.Add('p.EMP_CODIGO, sum(e.exi_empaque) as PRO_EXISTEMPAQUE');
      RExistProd.QProductos.SQL.Add('from PRODUCTOS p, existencias e');
      RExistProd.QProductos.SQL.Add('where p.pro_codigo = e.pro_codigo');
      if edAlmacen.Text <> '' then
      RExistProd.QProductos.SQL.Add('and e.alm_codigo = '+Trim(edAlmacen.Text));
      //RExistProd.QProductos.SQL.Add('and e.alm_codigo > 0 ');
      RExistProd.QProductos.SQL.Add('and p.emp_codigo = '+DM.QParametrosPAR_INVEMPRESA.Text);
      RExistProd.QProductos.SQL.Add('and e.emp_codigo = :emp');
      RExistProd.QProductos.SQL.Add('and p.pro_codigo = :prod');
      RExistProd.QProductos.SQL.Add('group by p.pro_codigo, p.pro_invinicial, p.pro_nombre, p.pro_rfabric, p.pro_roriginal, p.emp_codigo');

      RExistProd.QEntradas.Close;
      RExistProd.QEntradas.SQL.Clear;
      RExistProd.QEntradas.SQL.Add('SELECT E.ENT_NUMERO, E.ENT_FECHA_HORA ENT_FECHA, D.DET_MEDIDA, U.USU_NOMBRE,');
      RExistProd.QEntradas.SQL.Add('e.ent_concepto,');
      RExistProd.QEntradas.SQL.Add('SUM(D.DET_CANTIDAD) AS CANTIDAD');
      RExistProd.QEntradas.SQL.Add('FROM ENTRADAINV E, DET_ENTRADA D, USUARIOS U');
      RExistProd.QEntradas.SQL.Add('WHERE E.EMP_CODIGO = D.EMP_CODIGO AND E.SUC_CODIGO = D.SUC_CODIGO ');
      RExistProd.QEntradas.SQL.Add('AND E.ENT_NUMERO = D.ENT_NUMERO');
      RExistProd.QEntradas.SQL.Add('AND D.DET_CANTIDAD IS NOT NULL');
      //RExistProd.QEntradas.SQL.Add('AND E.ENT_STATUS <> '+#39+'ANU'+#39);
      RExistProd.QEntradas.SQL.Add('AND D.PRO_CODIGO = :PRO_CODIGO');
      RExistProd.QEntradas.SQL.Add('AND D.EMP_CODIGO = :EMP');
      RExistProd.QEntradas.SQL.Add('AND E.USU_CODIGO = U.USU_CODIGO');
      RExistProd.QEntradas.SQL.Add('AND E.ENT_FECHA_HORA BETWEEN :fecha1 AND :fecha2');
      IF edAlmacen.Text <> '' THEN
      RExistProd.QEntradas.SQL.Add('and e.alm_codigo = '+Trim(edAlmacen.Text));
      IF EdtSuplidor.Text <> '' THEN
      RExistProd.QEntradas.SQL.Add('and e.sup_codigo = '+Trim(EdtSuplidor.Text));

      //RExistProd.QEntradas.SQL.Add('and e.alm_codigo > 0 ');
      RExistProd.QEntradas.SQL.Add('GROUP BY E.ENT_NUMERO, E.ENT_FECHA_HORA, D.DET_MEDIDA, U.USU_NOMBRE, e.ent_concepto,e.sup_codigo');
      RExistProd.QEntradas.SQL.Add('ORDER BY E.ENT_FECHA_HORA');

      RExistProd.QDevol.Close;
      RExistProd.QDevol.SQL.Clear;
      RExistProd.QDevol.SQL.Add('SELECT V.DEV_NUMERO, (dev_fecha+DEV_HORA) DEV_FECHA, D.DET_MEDIDA, U.USU_NOMBRE, v.dev_nombre,');
      RExistProd.QDevol.SQL.Add('SUM(D.DEV_CANTIDAD) AS CANTIDAD');
      RExistProd.QDevol.SQL.Add('FROM DEVOLUCION V, DET_DEVOLUCION D, FACTURAS F, USUARIOS U');
      RExistProd.QDevol.SQL.Add('WHERE V.EMP_CODIGO = D.EMP_CODIGO AND V.SUC_CODIGO = D.SUC_CODIGO');
      RExistProd.QDevol.SQL.Add('AND V.DEV_NUMERO = D.DEV_NUMERO');
      RExistProd.QDevol.SQL.Add('AND V.EMP_CODIGO = F.EMP_CODIGO  AND V.SUC_CODIGO = D.SUC_CODIGO ');
      RExistProd.QDevol.SQL.Add('AND V.FAC_FORMA = F.FAC_FORMA');
      RExistProd.QDevol.SQL.Add('AND V.TFA_CODIGO = F.TFA_CODIGO');
      RExistProd.QDevol.SQL.Add('AND V.FAC_NUMERO = F.FAC_NUMERO');
      //RExistProd.QDevol.SQL.Add('AND V.DEV_STATUS <> '+#39+'ANU'+#39);
      RExistProd.QDevol.SQL.Add('AND D.EMP_CODIGO = :EMP');
      RExistProd.QDevol.SQL.Add('AND D.PRO_CODIGO = :PRO_CODIGO');
      RExistProd.QDevol.SQL.Add('AND D.DEV_CANTIDAD IS NOT NULL');
      RExistProd.QDevol.SQL.Add('AND V.USU_CODIGO = U.USU_CODIGO');
      RExistProd.QDevol.SQL.Add('AND V.DEV_FECHA BETWEEN :fecha1 AND :fecha2');
      IF edAlmacen.Text <> '' THEN
      RExistProd.QDevol.SQL.Add('and d.alm_codigo = '+Trim(edAlmacen.Text));
      IF EdtCliente.Text <> '' THEN
      RExistProd.QDevol.SQL.Add('and d.cli_codigo = '+Trim(EdtCliente.Text));

      //RExistProd.QDevol.SQL.Add('and d.alm_codigo > 0 ');
      RExistProd.QDevol.SQL.Add('GROUP BY V.DEV_NUMERO, V.DEV_FECHA, V.DEV_HORA, D.DET_MEDIDA, U.USU_NOMBRE, v.dev_nombre');
      RExistProd.QDevol.SQL.Add('ORDER BY V.DEV_FECHA');

      RExistProd.QDevol2.Close;
      RExistProd.QDevol2.SQL.Clear;
      RExistProd.QDevol2.SQL.Add('SELECT V.DEV_NUMERO, (dev_fecha+DEV_HORA) DEV_FECHA, D.DET_MEDIDA, U.USU_NOMBRE, v.dev_nombre,');
      RExistProd.QDevol2.SQL.Add('SUM(D.DEV_CANTIDAD) AS CANTIDAD, ''Devolucion de Tikets'' Concepto');
      RExistProd.QDevol2.SQL.Add('FROM DEVOLUCION V');
      RExistProd.QDevol2.SQL.Add('INNER JOIN DET_DEVOLUCION D ON V.EMP_CODIGO = D.EMP_CODIGO AND V.SUC_CODIGO = D.SUC_CODIGO AND V.DEV_NUMERO = D.DEV_NUMERO');
      RExistProd.QDevol2.SQL.Add('inner JOIN MONTOS_TICKET F ON V.TICKET_NUMERO = F.TICKET AND V.TICKET_CAJA = F.CAJA');
      RExistProd.QDevol2.SQL.Add('INNER JOIN USUARIOS U on v.usu_codigo = u.usu_codigo');
      //RExistProd.QDevol2.SQL.Add('WHERE V.DEV_STATUS <> '+#39+'ANU'+#39);
      RExistProd.QDevol2.SQL.Add('WHERE D.EMP_CODIGO = :EMP');
      RExistProd.QDevol2.SQL.Add('AND D.PRO_CODIGO = :PRO_CODIGO');
      RExistProd.QDevol2.SQL.Add('AND V.dev_fecha BETWEEN :fecha1 AND :fecha2');
      IF edAlmacen.Text <> '' THEN
      RExistProd.QDevol2.SQL.Add('and d.alm_codigo = '+Trim(edAlmacen.Text));
      IF EdtCliente.Text <> '' THEN
      RExistProd.QDevol2.SQL.Add('and v.cli_codigo = '+Trim(EdtCliente.Text));
//RExistProd.QDevol.SQL.Add('and d.alm_codigo > 0 ');
      RExistProd.QDevol2.SQL.Add('GROUP BY V.DEV_NUMERO, V.DEV_FECHA, V.DEV_HORA, D.DET_MEDIDA, U.USU_NOMBRE, v.dev_nombre');
      RExistProd.QDevol2.SQL.Add('ORDER BY V.DEV_FECHA');


      RExistProd.QConduces.Close;
      RExistProd.QConduces.SQL.Clear;
      RExistProd.QConduces.SQL.Add('SELECT C.CON_NUMERO, C.CON_FECHA_HORA CON_FECHA, D.DET_MEDIDA, U.USU_NOMBRE, c.con_nombre,');
      RExistProd.QConduces.SQL.Add('SUM(D.DET_CANTIDAD) AS CANTIDAD');
      RExistProd.QConduces.SQL.Add('FROM CONDUCE C, DET_CONDUCE D, USUARIOS U');
      RExistProd.QConduces.SQL.Add('WHERE C.EMP_CODIGO = D.EMP_CODIGO AND C.SUC_CODIGO = D.SUC_CODIGO');
      RExistProd.QConduces.SQL.Add('AND C.CON_NUMERO = D.CON_NUMERO');
      //RExistProd.QConduces.SQL.Add('AND C.CON_STATUS <> '+#39+'ANU'+#39);
      RExistProd.QConduces.SQL.Add('AND D.DET_CANTIDAD IS NOT NULL');
      RExistProd.QConduces.SQL.Add('AND D.PRO_CODIGO = :PRO_CODIGO');
      RExistProd.QConduces.SQL.Add('AND D.EMP_CODIGO = :EMP');
      RExistProd.QConduces.SQL.Add('AND ISNULL(C.FAC_NUMERO,0) = 0');
      RExistProd.QConduces.SQL.Add('AND C.USU_CODIGO = U.USU_CODIGO');
      RExistProd.QConduces.SQL.Add('AND C.CON_FECHA BETWEEN convert(datetime, :fecha1, 105) AND convert(datetime,convert(datetime, :fecha2, 105),105)');
      IF edAlmacen.Text <> '' THEN
      RExistProd.QConduces.SQL.Add('and c.alm_codigo = '+Trim(edAlmacen.Text));
      IF EdtCliente.Text <> '' THEN
      RExistProd.QConduces.SQL.Add('and c.cli_codigo = '+Trim(EdtCliente.Text));
      IF EdtSuplidor.Text <> '' THEN
      RExistProd.QConduces.SQL.Add('and c.sup_codigo = '+Trim(EdtSuplidor.Text));
      //RExistProd.QConduces.SQL.Add('and c.alm_codigo > 0 ');
      RExistProd.QConduces.SQL.Add('GROUP BY C.CON_NUMERO, C.CON_FECHA_HORA, D.DET_MEDIDA, U.USU_NOMBRE, c.con_nombre');
      RExistProd.QConduces.SQL.Add('ORDER BY C.CON_FECHA_HORA');

      RExistProd.QFacturas.Close;
      RExistProd.QFacturas.SQL.Clear;
      RExistProd.QFacturas.SQL.Add('SELECT F.FAC_FORMA, F.TFA_CODIGO, D.DET_MEDIDA,');
      RExistProd.QFacturas.SQL.Add('F.FAC_NUMERO, F.FAC_FECHA+F.FAC_HORA FAC_FECHA, U.USU_NOMBRE,f.fac_nombre,');
      RExistProd.QFacturas.SQL.Add('sum((d.det_cantidad+isnull(d.det_cant_oferta,0)) * isnull(d.det_cant_unidad_medida,1)) AS CANTIDAD');
      RExistProd.QFacturas.SQL.Add('FROM FACTURAS F, DET_FACTURA D, USUARIOS U');
      RExistProd.QFacturas.SQL.Add('WHERE F.EMP_CODIGO = D.EMP_CODIGO AND F.SUC_CODIGO = D.SUC_CODIGO ');
      RExistProd.QFacturas.SQL.Add('AND F.FAC_FORMA = D.FAC_FORMA');
      RExistProd.QFacturas.SQL.Add('AND F.TFA_CODIGO = D.TFA_CODIGO');
      RExistProd.QFacturas.SQL.Add('AND F.FAC_NUMERO = D.FAC_NUMERO');
      //RExistProd.QFacturas.SQL.Add('AND F.FAC_STATUS <> '+#39+'ANU'+#39);
      RExistProd.QFacturas.SQL.Add('AND D.DET_CANTIDAD IS NOT NULL AND ISNULL(F.CON_NUMERO,0)=0');
      RExistProd.QFacturas.SQL.Add('AND D.EMP_CODIGO = :EMP');
      RExistProd.QFacturas.SQL.Add('AND D.PRO_CODIGO = :PRO_CODIGO');
      RExistProd.QFacturas.SQL.Add('AND U.USU_CODIGO = F.USU_CODIGO');
      RExistProd.QFacturas.SQL.Add('AND F.FAC_FECHA BETWEEN convert(datetime, :fecha1, 105) AND convert(datetime,convert(datetime, :fecha2, 105),105)');
      IF edAlmacen.Text <> '' THEN
      RExistProd.QFacturas.SQL.Add('and d.alm_codigo = '+Trim(edAlmacen.Text));
      IF EdtCliente.Text <> '' THEN
      RExistProd.QFacturas.SQL.Add('and f.cli_codigo = '+Trim(EdtCliente.Text));
      //RExistProd.QFacturas.SQL.Add('and d.alm_codigo > 0 ');
      RExistProd.QFacturas.SQL.Add('GROUP BY F.FAC_FORMA, F.TFA_CODIGO, D.DET_MEDIDA,');
      RExistProd.QFacturas.SQL.Add('F.FAC_NUMERO, F.FAC_FECHA, F.FAC_HORA, U.USU_NOMBRE,f.fac_nombre');
      RExistProd.QFacturas.SQL.Add('ORDER BY F.FAC_FECHA+F.FAC_HORA');


      RExistProd.qFacturasCombos.Close;
      RExistProd.QFacturasCombos.SQL.Clear;
      RExistProd.QFacturasCombos.SQL.Add('SELECT F.FAC_FORMA, F.TFA_CODIGO, F.FAC_NUMERO, F.FAC_FECHA+F.FAC_HORA FAC_FECHA,');
      RExistProd.QFacturasCombos.SQL.Add('U.USU_NOMBRE, f.fac_nombre,');
      RExistProd.QFacturasCombos.SQL.Add('ISNULL((select isnull(nombre,''Und'') from UnidadMedida where emp_codigo = f.emp_codigo and UnidadID = p.UnidadID),''Und'') DET_MEDIDA,');
      RExistProd.QFacturasCombos.SQL.Add('SUM(D.DET_CANTIDAD) AS CANTIDAD');
      RExistProd.QFacturasCombos.SQL.Add('FROM FACTURAS F, DET_FACTURA_COMBOS D, USUARIOS U, PARAMETROS PR, PRODUCTOS P');
      RExistProd.QFacturasCombos.SQL.Add('WHERE F.EMP_CODIGO = D.EMP_CODIGO AND F.SUC_CODIGO = D.SUC_CODIGO');
      RExistProd.QFacturasCombos.SQL.Add('AND F.FAC_FORMA = D.FAC_FORMA AND F.TFA_CODIGO = D.TFA_CODIGO');
      RExistProd.QFacturasCombos.SQL.Add('AND F.FAC_NUMERO = D.FAC_NUMERO ');//AND F.FAC_STATUS <> '+#39+'ANU'+#39);
      RExistProd.QFacturasCombos.SQL.Add('AND D.DET_CANTIDAD IS NOT NULL AND F.EMP_CODIGO = PR.emp_codigo');
      RExistProd.QFacturasCombos.SQL.Add('AND PR.par_invempresa = P.EMP_CODIGO AND D.COM_PRODUCTO = P.PRO_CODIGO');
      RExistProd.QFacturasCombos.SQL.Add('AND F.EMP_CODIGO = :EMP');
      RExistProd.QFacturasCombos.SQL.Add('AND D.com_producto = :PRO_CODIGO');
      RExistProd.QFacturasCombos.SQL.Add('AND U.USU_CODIGO = F.USU_CODIGO AND ISNULL(F.CON_NUMERO,0)=0');
      RExistProd.QFacturasCombos.SQL.Add('AND F.FAC_FECHA BETWEEN convert(datetime,:FECHA1,105) AND convert(datetime,:FECHA2,105)');
      IF edAlmacen.Text <> '' then
      RExistProd.QFacturasCombos.SQL.Add('and F.alm_codigo = '+Trim(edAlmacen.Text));
      IF EdtCliente.Text <> '' THEN
      RExistProd.qFacturasCombos.SQL.Add('and f.cli_codigo = '+Trim(EdtCliente.Text));

      RExistProd.QFacturasCombos.SQL.Add('GROUP BY F.FAC_FORMA, F.TFA_CODIGO, F.FAC_NUMERO, F.FAC_FECHA, F.FAC_HORA, U.USU_NOMBRE,');
      RExistProd.QFacturasCombos.SQL.Add('f.fac_nombre, F.emp_codigo, P.UnidadID');
      RExistProd.QFacturasCombos.SQL.Add('ORDER BY F.FAC_FECHA+F.FAC_HORA');

      RExistProd.QTickets.Close;
      RExistProd.QTickets.SQL.Clear;
      RExistProd.QTickets.SQL.Add('SELECT m.TICKET, m.FECHA, m.caja, u.usu_nombre, SUM(t.CANTIDAD) AS CANTIDAD');
      RExistProd.QTickets.SQL.Add('FROM TICKET t, montos_ticket m, usuarios u, cajas_ip c');
      RExistProd.QTickets.SQL.Add('WHERE t.fecha = m.fecha');
      RExistProd.QTickets.SQL.Add('and t.ticket = m.ticket');
      RExistProd.QTickets.SQL.Add('and t.usu_codigo = m.usu_codigo');
      RExistProd.QTickets.SQL.Add('and t.caja = m.caja');
      RExistProd.QTickets.SQL.Add('and m.usu_codigo = u.usu_codigo');
      //RExistProd.QTickets.SQL.Add('and m.status <> '+QuotedStr('ANU'));
      RExistProd.QTickets.SQL.Add('and m.FECHA BETWEEN convert(datetime, :fecha1, 105) AND convert(datetime,convert(datetime, :fecha2, 105),105)');
      RExistProd.QTickets.SQL.Add('and t.producto = :pro_codigo');
      RExistProd.QTickets.SQL.Add('and m.caja = c.caja');
      IF edAlmacen.Text <> '' then
      RExistProd.QTickets.SQL.Add('and c.alm_codigo = '+Trim(edAlmacen.Text));
      IF EdtCliente.Text <> '' THEN
      RExistProd.QTickets.SQL.Add('and m.cli_codigo = '+Trim(EdtCliente.Text));

      //RExistProd.QTickets.SQL.Add('and c.alm_codigo > 0 ');
      RExistProd.QTickets.SQL.Add('GROUP BY m.TICKET, m.FECHA, m.caja, u.usu_nombre');
      RExistProd.QTickets.SQL.Add('ORDER BY m.FECHA');

      RExistProd.qTicketCombos.Close;
      RExistProd.QTicketCombos.SQL.Clear;
      RExistProd.QTicketCombos.SQL.Add('SELECT m.TICKET, m.FECHA, m.caja, u.usu_nombre, SUM(t.CANTIDAD) AS CANTIDAD');
      RExistProd.QTicketCombos.SQL.Add('FROM TICKET_COMBOS t, montos_ticket m, usuarios u, cajas_ip c');
      RExistProd.QTicketCombos.SQL.Add('WHERE t.fecha = m.fecha');
      RExistProd.qTicketCombos.SQL.Add('and t.ticket = m.ticket');
      RExistProd.QTicketCombos.SQL.Add('and t.usu_codigo = m.usu_codigo');
      RExistProd.QTicketCombos.SQL.Add('and t.caja = m.caja');
      RExistProd.QTicketCombos.SQL.Add('and m.usu_codigo = u.usu_codigo');
      //RExistProd.QTicketCombos.SQL.Add('and m.status <> '+QuotedStr('ANU'));
      RExistProd.QTicketCombos.SQL.Add('and m.FECHA BETWEEN convert(datetime, :fecha1, 105) AND convert(datetime,convert(datetime, :fecha2, 105),105)');
      RExistProd.QTicketCombos.SQL.Add('and t.com_producto = :pro_codigo');
      RExistProd.QTicketCombos.SQL.Add('and m.caja = c.caja');
      IF edAlmacen.Text <> '' then
      RExistProd.QTicketCombos.SQL.Add('and c.alm_codigo = '+Trim(edAlmacen.Text));
      IF EdtCliente.Text <> '' THEN
      RExistProd.qTicketCombos.SQL.Add('and m.cli_codigo = '+Trim(EdtCliente.Text));
//RExistProd.QTickets.SQL.Add('and c.alm_codigo > 0 ');
      RExistProd.QTicketCombos.SQL.Add('GROUP BY m.TICKET, m.FECHA, m.caja, u.usu_nombre');
      RExistProd.QTicketCombos.SQL.Add('ORDER BY m.FECHA');

      RExistProd.QTransferSalida.Close;
      RExistProd.QTransferSalida.SQL.Clear;
      RExistProd.QTransferSalida.SQL.Add('SELECT t.tra_numero, t.TRA_FECHA_HORA tra_fecha, t.tra_concepto, u.usu_nombre,');
      RExistProd.QTransferSalida.SQL.Add('d.det_medida, sum(d.det_cantidad) as cantidad');
      RExistProd.QTransferSalida.SQL.Add('FROM transfer t, det_transfer d, usuarios u');
      RExistProd.QTransferSalida.SQL.Add('WHERE t.emp_codigo = d.emp_codigo AND t.SUC_codigo = d.SUC_codigo');
      RExistProd.QTransferSalida.SQL.Add('and t.tra_numero = d.tra_numero');
      //RExistProd.QTransferSalida.SQL.Add('and t.tra_status <> '+QuotedStr('ANU'));
      RExistProd.QTransferSalida.SQL.Add('and t.emp_codigo = :emp');
      RExistProd.QTransferSalida.SQL.Add('and d.pro_codigo = :pro_codigo');
      RExistProd.QTransferSalida.SQL.Add('and t.usu_codigo = u.usu_codigo');
      RExistProd.QTransferSalida.SQL.Add('and t.tra_fecha between convert(datetime, :fecha1, 105) AND convert(datetime,convert(datetime, :fecha2, 105),105)');
      IF edAlmacen.Text <> '' then
      RExistProd.QTransferSalida.SQL.Add('and t.tra_almacen1 = '+trim(edAlmacen.Text));
      IF EdtSuplidor.Text <> '' THEN
      RExistProd.QTransferSalida.SQL.Add('and t.sup_codigo = '+Trim(EdtSuplidor.Text));
      //RExistProd.QTransferSalida.SQL.Add('and t.tra_almacen1 > 0');
      RExistProd.QTransferSalida.SQL.Add('GROUP BY t.tra_numero, t.TRA_FECHA_HORA, t.tra_concepto, u.usu_nombre, d.det_medida');
      RExistProd.QTransferSalida.SQL.Add('ORDER BY t.TRA_FECHA_HORA');

      RExistProd.QTransferEntrada.Close;
      RExistProd.QTransferEntrada.SQL.Clear;
      RExistProd.QTransferEntrada.SQL.Add('SELECT t.tra_numero, t.TRA_FECHA_HORA tra_fecha, t.tra_concepto, u.usu_nombre,');
      RExistProd.QTransferEntrada.SQL.Add('d.det_medida2, sum(d.det_cantidad2) as cantidad');
      RExistProd.QTransferEntrada.SQL.Add('FROM transfer t, det_transfer d, usuarios u');
      RExistProd.QTransferEntrada.SQL.Add('WHERE t.tra_numero = d.tra_numero AND t.EMP_CODIGO = d.EMP_CODIGO AND t.SUC_CODIGO = d.SUC_CODIGO');
      RExistProd.QTransferEntrada.SQL.Add('and t.tra_status = '+QuotedStr('PRO'));
      RExistProd.QTransferEntrada.SQL.Add('and t.emp_codigo = :emp');
      RExistProd.QTransferEntrada.SQL.Add('and d.pro_codigo = :pro_codigo');
      RExistProd.QTransferEntrada.SQL.Add('and t.usu_codigo = u.usu_codigo');
      RExistProd.QTransferEntrada.SQL.Add('and t.tra_fecha between convert(datetime, :fecha1, 105) AND convert(datetime,convert(datetime, :fecha2, 105),105)');
      if edAlmacen.Text <> '' then
      RExistProd.QTransferEntrada.SQL.Add('and t.tra_almacen2 = '+trim(edAlmacen.Text));
      IF EdtSuplidor.Text <> '' THEN
      RExistProd.QTransferEntrada.SQL.Add('and c.sup_codigo = '+Trim(EdtSuplidor.Text));

      //RExistProd.QTransferEntrada.SQL.Add('and t.tra_almacen2 > 0 ');
      RExistProd.QTransferEntrada.SQL.Add('GROUP BY t.tra_numero, t.TRA_FECHA_HORA, t.tra_concepto, u.usu_nombre, d.det_medida2');
      RExistProd.QTransferEntrada.SQL.Add('ORDER BY t.TRA_FECHA_HORA');

      RExistProd.QCompras.Close;
      RExistProd.QCompras.SQL.Clear;
      RExistProd.QCompras.SQL.Add('SELECT P.SUP_NOMBRE, F.FAC_NUMERO, F.FAC_FECHA,');
      RExistProd.QCompras.SQL.Add('U.USU_NOMBRE, D.DET_MEDIDA, SUM(D.DET_CANTIDAD+isnull(d.det_oferta,0)) AS CANTIDAD');
      RExistProd.QCompras.SQL.Add('FROM DET_PROVFACTURAS D, PROVFACTURAS F, PROVEEDORES P, USUARIOS U');
      RExistProd.QCompras.SQL.Add('WHERE F.EMP_CODIGO = D.EMP_CODIGO ');
      RExistProd.QCompras.SQL.Add('AND F.FAC_NUMERO = D.FAC_NUMERO');
      RExistProd.QCompras.SQL.Add('AND F.SUP_CODIGO = D.SUP_CODIGO /*Fernando 20170720*/');
      RExistProd.QCompras.SQL.Add('AND F.SUP_CODIGO = P.SUP_CODIGO');
      RExistProd.QCompras.SQL.Add('AND P.EMP_CODIGO = '+dm.QParametrosPAR_INVEMPRESA.AsString);
      RExistProd.QCompras.SQL.Add('AND D.EMP_CODIGO = :EMP');
      RExistProd.QCompras.SQL.Add('AND D.PRO_CODIGO = :PRO_CODIGO');
      RExistProd.QCompras.SQL.Add('AND F.USU_CODIGO = U.USU_CODIGO');
      RExistProd.QCompras.SQL.Add('and isnull(F.ent_numero,0)=0');
      if edAlmacen.Text <> '' then
      RExistProd.QCompras.SQL.Add('and f.alm_codigo = '+trim(edAlmacen.Text));
      IF EdtSuplidor.Text <> '' THEN
      RExistProd.QCompras.SQL.Add('and f.sup_codigo = '+Trim(EdtSuplidor.Text));

      RExistProd.QCompras.SQL.Add('AND F.FAC_FECHA_EFECTIVA BETWEEN CAST(CAST(:fecha1 AS CHAR(11)) AS DATETIME) AND convert(datetime,convert(datetime, :fecha2, 105),105)');
      RExistProd.QCompras.SQL.Add('GROUP BY P.EMP_CODIGO, P.SUP_NOMBRE, F.FAC_NUMERO, F.FAC_FECHA,');
      RExistProd.QCompras.SQL.Add('D.DET_MEDIDA, U.USU_NOMBRE, P.EMP_CODIGO');
      RExistProd.QCompras.SQL.Add('ORDER BY F.FAC_FECHA');

      RExistProd.QDevCompra.Close;
      RExistProd.QDevCompra.SQL.Clear;
      RExistProd.QDevCompra.SQL.Add('SELECT P.SUP_NOMBRE, V.DEV_NUMERO, V.DEV_FECHA,');
      RExistProd.QDevCompra.SQL.Add('U.USU_NOMBRE, D.DET_MEDIDA, SUM(D.DEV_CANTIDAD) AS CANTIDAD');
      RExistProd.QDevCompra.SQL.Add('FROM DET_DEVOLUCIONCOMPRA D, DEVOLUCIONCOMPRA V,PROVEEDORES P, USUARIOS U');
      RExistProd.QDevCompra.SQL.Add('WHERE V.EMP_CODIGO = D.EMP_CODIGO');
      RExistProd.QDevCompra.SQL.Add('AND D.SUC_CODIGO = V.SUC_CODIGO');
      RExistProd.QDevCompra.SQL.Add('AND V.DEV_NUMERO = D.DEV_NUMERO');
      RExistProd.QDevCompra.SQL.Add('AND V.EMP_CODIGO = P.EMP_CODIGO');
      RExistProd.QDevCompra.SQL.Add('AND V.DEV_STATUS <> '+QuotedStr('ANU'));
      RExistProd.QDevCompra.SQL.Add('AND D.EMP_CODIGO = :EMP');
      RExistProd.QDevCompra.SQL.Add('AND D.PRO_CODIGO = :PRO_CODIGO');
      RExistProd.QDevCompra.SQL.Add('AND U.USU_CODIGO = V.USU_CODIGO');
      RExistProd.QDevCompra.SQL.Add('AND V.DEV_FECHA BETWEEN convert(datetime,:FECHA1,105) AND convert(datetime,:FECHA2,105)');
      if edAlmacen.Text <> '' then
      RExistProd.QDevCompra.SQL.Add('and V.SUC_CODIGO IN  (SELECT TOP 1 SUC_CODIGO FROM SUCURSALES WHERE alm_codigo = '+trim(edAlmacen.Text)+')');
      IF EdtSuplidor.Text <> '' THEN
      RExistProd.QDevCompra.SQL.Add('and V.sup_codigo = '+Trim(EdtSuplidor.Text));

      RExistProd.QDevCompra.SQL.Add('GROUP BY P.SUP_NOMBRE, V.DEV_NUMERO, V.DEV_FECHA,');
      RExistProd.QDevCompra.SQL.Add('D.DET_MEDIDA, U.USU_NOMBRE');
      RExistProd.QDevCompra.SQL.Add('ORDER BY V.DEV_FECHA');



      RExistProd.qAjusteInv.Close;
      RExistProd.qAjusteInv.SQL.Clear;
      RExistProd.qAjusteInv.SQL.Add('SELECT t.AjusteID, t.fecha_ajuste,');
      RExistProd.qAjusteInv.SQL.Add('CASE WHEN TIPO = '+QuotedStr('AJU')+' THEN '+QuotedStr('AJUSTE DE INVENTARIO'));
      RExistProd.qAjusteInv.SQL.Add('     WHEN TIPO = '+QuotedStr('FIS')+' THEN '+QuotedStr('AJUSTE DE INVENT FISICO'));
      RExistProd.qAjusteInv.SQL.Add('     WHEN TIPO = '+QuotedStr('ZER')+' THEN '+QuotedStr('AJUSTE DE INVENT ZERO'));
      RExistProd.qAjusteInv.SQL.Add('     ELSE TRIM(t.TIPO) END concepto, ');
      RExistProd.qAjusteInv.SQL.Add('t.usu_codigo,');
      RExistProd.qAjusteInv.SQL.Add('isnull(p.pro_unidad_medida, ''UND'') MEDIDA, sum(t.exist_ant_und) as cantidad_ant, sum(t.exist_ajuste_und) as cantidad_desp, sum(t.exist_ajuste_und-t.exist_ant_und) as cantidad');
      RExistProd.qAjusteInv.SQL.Add('FROM Ajuste_Inventario t, Productos P');
      RExistProd.qAjusteInv.SQL.Add('WHERE t.pro_codigo = p.pro_codigo');
      RExistProd.qAjusteInv.SQL.Add('and t.emp_codigo = :emp');
      RExistProd.qAjusteInv.SQL.Add('and p.emp_codigo = '+DM.QParametrosPAR_INVEMPRESA.Text);
      RExistProd.qAjusteInv.SQL.Add('and t.pro_codigo = :pro_codigo');
      if edAlmacen.Text <> '' then
      RExistProd.qAjusteInv.SQL.Add('and t.alm_codigo = '+trim(edAlmacen.Text));

      RExistProd.qAjusteInv.SQL.Add('AND t.fecha_ajuste BETWEEN convert(datetime, :fecha1, 105) AND convert(datetime, :fecha2, 105)');
      RExistProd.qAjusteInv.SQL.Add('GROUP BY t.tipo, P.EMP_CODIGO, t.AjusteID, t.fecha_ajuste, p.pro_unidad_medida, t.usu_codigo');
      RExistProd.qAjusteInv.SQL.Add('ORDER BY t.fecha_ajuste desc');

    RExistProd.QProductos.Parameters.ParamByName('prod').Value    := prod;
    RExistProd.QProductos.Parameters.ParamByName('emp').Value     := dm.vp_cia;
    //RExistProd.QProductos.SaveToFile('.\Ajuste.txt');
    RExistProd.QProductos.Open;


    if Trim(edAlmacen.Text) <> '' then
    RExistProd.qInvInicial.Parameters.ParamByName('alm').Value := StrToInt(edAlmacen.Text);
    //else RExistProd.qInvInicial.Parameters.ParamByName('alm').Value := 0
    RExistProd.qInvInicial.Parameters.ParamByName('emp').Value    := dm.vp_cia;

    if Trim(edAlmacen.Text) <> '' then
    RExistProd.qVencimmiento.Parameters.ParamByName('alm').Value := StrToInt(edAlmacen.Text);
    //else RExistProd.qVencimmiento.Parameters.ParamByName('alm').Value := 0 else
    RExistProd.qVencimmiento.Parameters.ParamByName('emp').Value    := dm.vp_cia;


    RExistProd.qAjusteInv.Parameters.ParamByName('fecha1').DataType := ftDateTime;
    RExistProd.qAjusteInv.Parameters.ParamByName('fecha2').DataType := ftDateTime;
    RExistProd.qAjusteInv.Parameters.ParamByName('emp').Value    := dm.vp_cia;

    RExistProd.QEntradas.Parameters.ParamByName('fecha1').DataType := ftDateTime;
    RExistProd.QEntradas.Parameters.ParamByName('fecha2').DataType := ftDateTime;
    RExistProd.QEntradas.Parameters.ParamByName('emp').Value       := dm.vp_cia;



    RExistProd.QConduces.Parameters.ParamByName('fecha1').DataType := ftDateTime;
    RExistProd.QConduces.Parameters.ParamByName('fecha2').DataType := ftDateTime;
    RExistProd.QConduces.Parameters.ParamByName('emp').Value       := dm.vp_cia;

    RExistProd.QFacturas.Parameters.ParamByName('fecha1').DataType := ftDateTime;
    RExistProd.QFacturas.Parameters.ParamByName('fecha2').DataType := ftDateTime;
    RExistProd.QFacturas.Parameters.ParamByName('emp').Value       := dm.vp_cia;

    RExistProd.qFacturasCombos.Parameters.ParamByName('fecha1').DataType := ftDateTime;
    RExistProd.qFacturasCombos.Parameters.ParamByName('fecha2').DataType := ftDateTime;
    RExistProd.qFacturasCombos.Parameters.ParamByName('emp').DataType := ftInteger;
    RExistProd.qFacturasCombos.Parameters.ParamByName('pro_codigo').DataType := ftInteger;
    RExistProd.qFacturasCombos.Parameters.ParamByName('emp').Value       := dm.vp_cia;


    RExistProd.QDevol.Parameters.ParamByName('fecha1').DataType := ftDateTime;
    RExistProd.QDevol.Parameters.ParamByName('fecha2').DataType := ftDateTime;
    RExistProd.QDevol.Parameters.ParamByName('EMP').DataType    := ftInteger;
    RExistProd.QDevol.Parameters.ParamByName('EMP').Value       := dm.vp_cia;

    RExistProd.QDevol2.Parameters.ParamByName('fecha1').DataType := ftDateTime;
    RExistProd.QDevol2.Parameters.ParamByName('fecha2').DataType := ftDateTime;
    RExistProd.QDevol2.Parameters.ParamByName('EMP').DataType    := ftInteger;
    RExistProd.QDevol2.Parameters.ParamByName('EMP').Value       := dm.vp_cia;

    RExistProd.QCompras.Parameters.ParamByName('fecha1').DataType := ftDateTime;
    RExistProd.QCompras.Parameters.ParamByName('fecha2').DataType := ftDateTime;
    RExistProd.QCompras.Parameters.ParamByName('emp').Value       := dm.vp_cia;

    RExistProd.QDevCompra.Parameters.ParamByName('fecha1').DataType := ftDateTime;
    RExistProd.QDevCompra.Parameters.ParamByName('fecha2').DataType := ftDateTime;
    RExistProd.QDevCompra.Parameters.ParamByName('emp').Value       := dm.vp_cia;

    RExistProd.QTransferSalida.Parameters.ParamByName('fecha1').DataType := ftDateTime;
    RExistProd.QTransferSalida.Parameters.ParamByName('fecha2').DataType := ftDateTime;
    RExistProd.QTransferSalida.Parameters.ParamByName('emp').Value       := dm.vp_cia;

    RExistProd.QTransferEntrada.Parameters.ParamByName('fecha1').DataType := ftDateTime;
    RExistProd.QTransferEntrada.Parameters.ParamByName('fecha2').DataType := ftDateTime;
    RExistProd.QTransferEntrada.Parameters.ParamByName('emp').Value       := dm.vp_cia;

    RExistProd.QEntradas.Parameters.ParamByName('fecha1').DataType := ftDateTime;
    RExistProd.QEntradas.Parameters.ParamByName('fecha2').DataType := ftDateTime;

    RExistProd.QTickets.Parameters.ParamByName('fecha1').DataType := ftDateTime;
    RExistProd.QTickets.Parameters.ParamByName('fecha2').DataType := ftDateTime;

    RExistProd.qTicketCombos.Parameters.ParamByName('fecha1').DataType := ftDateTime;
    RExistProd.qTicketCombos.Parameters.ParamByName('fecha2').DataType := ftDateTime;
    RExistProd.qTicketCombos.Parameters.ParamByName('pro_codigo').DataType := ftInteger;

    RExistProd.qAjusteInv.Parameters.ParamByName('fecha1').Value       := Fecha1.Date+Time1.Time;
    RExistProd.qAjusteInv.Parameters.ParamByName('fecha2').Value       := Fecha2.Date;
    RExistProd.QConduces.Parameters.ParamByName('fecha1').Value        := Fecha1.Date+Time1.Time;
    RExistProd.QConduces.Parameters.ParamByName('fecha2').Value        := Fecha2.DateTime;
    RExistProd.QEntradas.Parameters.ParamByName('fecha1').Value        := Fecha1.Date+Time1.Time;
    RExistProd.QEntradas.Parameters.ParamByName('fecha2').Value        := Fecha2.DateTime;
    RExistProd.QFacturas.Parameters.ParamByName('fecha1').Value        := Fecha1.Date+Time1.Time;
    RExistProd.QFacturas.Parameters.ParamByName('fecha2').Value        := Fecha2.DateTime;
    RExistProd.qFacturasCombos.Parameters.ParamByName('fecha1').Value        := Fecha1.Date+Time1.Time;
    RExistProd.qFacturasCombos.Parameters.ParamByName('fecha2').Value        := Fecha2.DateTime;
    RExistProd.QDevol.Parameters.ParamByName('fecha1').Value           := Fecha1.Date+Time1.Time;
    RExistProd.QDevol.Parameters.ParamByName('fecha2').Value           := Fecha2.DateTime;
    RExistProd.QDevol2.Parameters.ParamByName('fecha1').Value          := Fecha1.Date+Time1.Time;
    RExistProd.QDevol2.Parameters.ParamByName('fecha2').Value          := Fecha2.DateTime;
    RExistProd.QCompras.Parameters.ParamByName('fecha1').Value         := Fecha1.Date+Time1.Time;
    RExistProd.QCompras.Parameters.ParamByName('fecha2').Value         := Fecha2.DateTime;
    RExistProd.QDevCompra.Parameters.ParamByName('fecha1').Value       := Fecha1.Date+Time1.Time;
    RExistProd.QDevCompra.Parameters.ParamByName('fecha2').Value       := Fecha2.DateTime;
    RExistProd.QTickets.Parameters.ParamByName('fecha1').Value         := Fecha1.Date+Time1.Time;
    RExistProd.QTickets.Parameters.ParamByName('fecha2').Value         := Fecha2.DateTime;
    RExistProd.qTicketCombos.Parameters.ParamByName('fecha1').Value    := Fecha1.Date+Time1.Time;
    RExistProd.qTicketCombos.Parameters.ParamByName('fecha2').Value    := Fecha2.DateTime;
    RExistProd.QTransferSalida.Parameters.ParamByName('fecha1').Value  := Fecha1.Date+Time1.Time;
    RExistProd.QTransferSalida.Parameters.ParamByName('fecha2').Value  := Fecha2.DateTime;
    RExistProd.QTransferEntrada.Parameters.ParamByName('fecha1').Value := Fecha1.Date+Time1.Time;
    RExistProd.QTransferEntrada.Parameters.ParamByName('fecha2').Value := Fecha2.DateTime;

    if ckentrada.Checked     then
    begin
      RExistProd.QEntradas.Open;
      RExistProd.QTransferEntrada.Open;
    end;
    if ckcompra.Checked      then RExistProd.QCompras.Open;

    if ckdevolventa.Checked  then begin
    RExistProd.QDevol.Open;
    RExistProd.QDevol2.Open;
    end;
    if cksalilda.Checked     then
    begin
      RExistProd.QConduces.Open;
      RExistProd.QTransferSalida.Open;
    end;
    if ckdevolcompra.Checked then  RExistProd.QDevCompra.Open;

    if ckfactura.Checked then
    begin
      RExistProd.QFacturas.Open;
      RExistProd.QTickets.Open;
      RExistProd.qTicketCombos.Open;
      RExistProd.qFacturasCombos.Open;
    end;

    if chkAjusteInv.Checked then
    begin
      RExistProd.qAjusteInv.Open;
    end;
    if chkInvInicial.Checked then
    begin
      RExistProd.qInvInicial.Open;
    end;
    if CkVencimiento.Checked then
    begin
      RExistProd.qVencimmiento.Open;
    end;

    RExistProd.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
    screen.Cursor := crDefault;
    RExistProd.PrinterSetup;
    RExistProd.Preview;
    RExistProd.Destroy;
  end;
  except
    RExistProd.Destroy;
  END;
end;

procedure TfrmExistProducto.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmExistProducto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmExistProducto.btnDeptoClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C�digo');
  Search.Query.clear;
  Search.Query.add('select dep_nombre, dep_codigo');
  Search.ResultField := 'dep_codigo';
  Search.Query.add('from departamentos');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  if not (DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados') then
  Search.Title := 'Listado de Departamentos' else
  Search.Title := 'Listado de Proyectos';
  if Search.execute then
  begin
    EdtDepto.text := search.valuefield;
    EdtDepto.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    DM.Query1.SQL.add('select dep_nombre, dep_codigo');;
    DM.Query1.SQL.add('from departamentos');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and dep_codigo = :dep');
    dm.Query1.Parameters.parambyname('dep').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    EdtDeptoN.text := dm.Query1.fieldbyname('dep_nombre').asstring;
    EdtDepto.setfocus;
  end;
end;

procedure TfrmExistProducto.btnClienteClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C�digo');
  Search.Query.clear;
  Search.Query.add('select cli_nombre, cli_codigo');
  Search.ResultField := 'cli_codigo';
  Search.Query.add('from clientes');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  if Search.execute then
  begin
    EdtCliente.text := search.valuefield;
    EdtCliente.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    DM.Query1.SQL.add('select cli_nombre, cli_codigo');;
    DM.Query1.SQL.add('from clientes');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and cli_codigo = :cli');
    dm.Query1.Parameters.parambyname('cli').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    EdtCienteN.text := dm.Query1.fieldbyname('cli_nombre').asstring;
    EdtCliente.setfocus;
  end;
end;

procedure TfrmExistProducto.EdtDeptoChange(Sender: TObject);
begin
  if trim(EdtDepto.text) = '' then EdtDeptoN.text := '';
end;

procedure TfrmExistProducto.EdtDeptoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  vl_depto : String;
begin
  vl_depto := UpperCase(lblDepto.Caption)+' NO EXISTE';
  if key = vk_return then
  begin
    if trim(EdtDepto.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select dep_nombre, dep_codigo');
      dm.Query1.sql.add('from departamentos');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and dep_codigo = :dep');
      dm.Query1.Parameters.parambyname('dep').Value := strtoint(EdtDepto.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg(vl_depto,mterror,[mbok],0);
        EdtDepto.setFocus;
      end
      else
        EdtDeptoN.text := dm.Query1.fieldbyname('dep_nombre').asstring;
    end;
  end;
end;

procedure TfrmExistProducto.EdtClienteChange(Sender: TObject);
begin
  if trim(EdtCliente.text) = '' then EdtCienteN.text := '';
end;

procedure TfrmExistProducto.EdtClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(EdtCliente.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select cli_nombre, cli_codigo');
      dm.Query1.sql.add('from clientes');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and cli_codigo = :cli');
      dm.Query1.Parameters.parambyname('cli').Value := strtoint(EdtCliente.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('CLIENTE NO EXISTE',mterror,[mbok],0);
        EdtCliente.setFocus;
      end
      else
        EdtCienteN.text := dm.Query1.fieldbyname('cli_nombre').asstring;
    end;
  end;
end;

procedure TfrmExistProducto.EdtSuplidorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(EdtSuplidor.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select sup_nombre, sup_codigo');
      dm.Query1.sql.add('from proveedores');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and sup_codigo = :sup');
      dm.Query1.Parameters.parambyname('sup').Value := strtoint(EdtSuplidor.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('SUPLIDOR NO EXISTE',mterror,[mbok],0);
        EdtSuplidor.setFocus;
      end
      else
        EdtSuplidorN.text := dm.Query1.fieldbyname('sup_nombre').asstring;
    end;
  end;
end;

procedure TfrmExistProducto.EdtSuplidorChange(Sender: TObject);
begin
  if trim(EdtSuplidor.text) = '' then EdtSuplidorN.text := '';
end;

procedure TfrmExistProducto.btnSuplidorClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C�digo');
  Search.Query.clear;
  Search.Query.add('select sup_nombre, sup_codigo');
  Search.ResultField := 'sup_codigo';
  Search.Query.add('from proveedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  if Search.execute then
  begin
    EdtSuplidor.text := search.valuefield;
    EdtSuplidor.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    DM.Query1.SQL.add('select sup_nombre, sup_codigo');;
    DM.Query1.SQL.add('from proveedores');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and sup_codigo = :sup');
    dm.Query1.Parameters.parambyname('sup').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    EdtSuplidorN.text := dm.Query1.fieldbyname('sup_nombre').asstring;
    EdtSuplidor.setfocus;
  end;
end;

end.
