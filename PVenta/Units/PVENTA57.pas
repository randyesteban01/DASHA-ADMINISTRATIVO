unit PVENTA57;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, DB, DateUtils, 
  IBCustomDataSet, IBQuery, ComCtrls, ADODB, DBCtrls, QuerySearchDlgADO;

type
  TfrmConsFacturasProd = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    btRefresh: TBitBtn;
    lbCantidad: TLabel;
    QFacturas: TADOQuery;
    dsFacturas: TDataSource;
    QFacturasALM_CODIGO: TIntegerField;
    QFacturasCAJ_CODIGO: TIntegerField;
    QFacturasCLI_CODIGO: TIntegerField;
    QFacturasCLI_REFERENCIA: TIBStringField;
    QFacturasCOT_NUMERO: TIntegerField;
    QFacturasCPA_CODIGO: TIntegerField;
    QFacturasEMP_CODIGO: TIntegerField;
    QFacturasFAC_ABONO: TFloatField;
    QFacturasFAC_DESCUENTO: TFloatField;
    QFacturasFAC_DIRECCION: TIBStringField;
    QFacturasFAC_FAX: TIBStringField;
    QFacturasFAC_FECHA: TDateTimeField;
    QFacturasFAC_FORMA: TIBStringField;
    QFacturasFAC_ITBIS: TFloatField;
    QFacturasFAC_LOCALIDAD: TIBStringField;
    QFacturasFAC_NOMBRE: TIBStringField;
    QFacturasFAC_NUMERO: TIntegerField;
    QFacturasFAC_OTROS: TFloatField;
    QFacturasFAC_STATUS: TIBStringField;
    QFacturasFAC_TELEFONO: TIBStringField;
    QFacturasFAC_TOTAL: TFloatField;
    QFacturasPED_NUMERO: TIntegerField;
    QFacturasTFA_CODIGO: TIntegerField;
    QFacturasUSU_CODIGO: TIntegerField;
    QFacturasVEN_CODIGO: TIntegerField;
    QFacturasUSU_NOMBRE: TIBStringField;
    QFacturasCAJ_NOMBRE: TIBStringField;
    btClose: TBitBtn;
    Label6: TLabel;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    Memo1: TMemo;
    QFacturasFAC_VENCE: TDateTimeField;
    Label1: TLabel;
    edProd: TEdit;
    SpeedButton1: TSpeedButton;
    tProd: TEdit;
    cbGrupo: TRadioGroup;
    QFacturasDET_CANTIDAD: TFloatField;
    QFacturasDET_MEDIDA: TIBStringField;
    QFacturasDET_PRECIO: TFloatField;
    QFacturasDET_DESCUENTO: TFloatField;
    QFacturasValor: TFloatField;
    QFacturasDET_ITBIS: TFloatField;
    QFacturasDET_CONITBIS: TIBStringField;
    QFacturasCalcDesc: TFloatField;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    Label8: TLabel;
    ckSuc: TCheckBox;
    QFacturassuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    QFacturasdet_cant_oferta: TBCDField;
    Label4: TLabel;
    SpeedButton2: TSpeedButton;
    edProv: TEdit;
    tProvincia: TEdit;
    Search: TQrySearchDlgADO;
    Label12: TLabel;
    btVendedor: TSpeedButton;
    tVendedor: TEdit;
    edVendedor: TEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Grid: TDBGrid;
    DBGrid3: TDBGrid;
    QTickets: TADOQuery;
    QTicketsusu_codigo: TIntegerField;
    QTicketsfecha: TDateTimeField;
    QTicketsticket: TIntegerField;
    QTicketsusu_nombre: TStringField;
    QTicketstotal: TBCDField;
    QTicketsTipo: TStringField;
    QTicketsItbis: TBCDField;
    QTicketsBeneficio: TFloatField;
    QTicketscaja: TIntegerField;
    dsTickets: TDataSource;
    QTicketsprecio: TBCDField;
    QTicketscantidad: TBCDField;
    lbtotal: TStaticText;
    lbcant: TStaticText;
    QFacturasFAC_NOTA: TMemoField;
    procedure FormCreate(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure cbStatusClick(Sender: TObject);
    procedure cbGrupoClick(Sender: TObject);
    procedure ckItbisClick(Sender: TObject);
    procedure ckDescClick(Sender: TObject);
    procedure cbOrdenClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edProdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QFacturasCalcFields(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
    procedure edProvChange(Sender: TObject);
    procedure edProvKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btVendedorClick(Sender: TObject);
    procedure edVendedorChange(Sender: TObject);
    procedure edVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ckSucClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Producto : integer;
  end;

var
  frmConsFacturasProd: TfrmConsFacturasProd;

implementation

uses PVENTA33, RVENTA07, SIGMA00, SIGMA01, RVENTA121;

{$R *.dfm}

procedure TfrmConsFacturasProd.FormCreate(Sender: TObject);
begin
  if dm.QParametrosPAR_FACMEDIDA.Value <> 'True' then
    Grid.Columns[9].Destroy;
  Fecha1.date := date;
  Fecha2.date := date;
  Memo1.lines := QFacturas.sql;
end;

procedure TfrmConsFacturasProd.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmConsFacturasProd.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
  if (ssCtrl in Shift) and (ord(key) = 66) and (ssAlt in Shift) then
    cbGrupo.ItemIndex := 1;
  if (ssCtrl in Shift) and (ord(key) = 65) and (ssAlt in Shift) then
    cbGrupo.ItemIndex := 0;
  if (ssCtrl in Shift) and (ord(key) = 84) and (ssAlt in Shift) then
    cbGrupo.ItemIndex := 2;
  frmMain.stBar1.Panels[1].Text := Copy(cbGrupo.Items[cbGrupo.ItemIndex],1,1);
end;

procedure TfrmConsFacturasProd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConsFacturasProd.FormActivate(Sender: TObject);
begin
//  if not QFacturas.active then QFacturas.open;
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
  frmMain.ExportXLS.Sheets[0].DBGrid := Grid;
  frmMain.ExportXLS.Sheets[1].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[0].Exported := True;
  if (Time >= TimeOf(dm.QParametrosPAR_AHORA1.Value)) and
  (Time <= TimeOf(dm.QParametrosPAR_AHORA2.Value)) then
     cbGrupo.ItemIndex := 0
  else
     cbGrupo.ItemIndex := 1;
  frmMain.stBar1.Panels[1].Text := Copy(cbGrupo.Items[cbGrupo.ItemIndex],1,1);
end;

procedure TfrmConsFacturasProd.btRefreshClick(Sender: TObject);
var
  cant, tot : double;
begin
  if trim(edProd.Text) <> '' then
  begin
    PageControl1.ActivePageIndex := 0;
    
    Screen.Cursor := crHourGlass;

    QFacturas.close;
    QFacturas.sql.clear;
    QFacturas.sql := Memo1.Lines;
    QFacturas.sql.add('and d.pro_codigo = '+IntToStr(producto));
    if cbGrupo.itemindex = 0 then
      QFacturas.sql.add('and f.fac_forma = '+#39+'A'+#39)
    else if cbGrupo.itemindex = 1 then
      QFacturas.sql.add('and f.fac_forma = '+#39+'B'+#39);
    if ckSuc.Checked then
    begin
      QFacturas.sql.add('and f.suc_codigo = :suc_codigo');
      QFacturas.Parameters.parambyname('suc_codigo').Value := DBLookupComboBox2.KeyValue;
    end;

    if Trim(edProv.Text) <> '' then
       QFacturas.sql.add('and f.pro_codigo = '+Trim(edProv.Text));

    if Trim(edVendedor.Text) <> '' then
       QFacturas.sql.add('and f.ven_codigo = '+Trim(edVendedor.Text));

    QFacturas.sql.add('order by f.fac_forma, f.tfa_codigo, f.fac_numero');
    QFacturas.Parameters.parambyname('fecha1').DataType := ftDate;
    QFacturas.Parameters.parambyname('fecha2').DataType := ftDate;
    QFacturas.Parameters.parambyname('fecha1').Value := fecha1.date;
    QFacturas.Parameters.parambyname('fecha2').Value := fecha2.date;
    QFacturas.Parameters.parambyname('emp_codigo').Value := dm.vp_cia;
    QFacturas.open;
    lbCantidad.caption := inttostr(QFacturas.recordcount)+' Facturas';
    Grid.SetFocus;

    QTickets.Close;
    QTickets.Parameters.parambyname('fec1').DataType := ftDate;
    QTickets.Parameters.parambyname('fec2').DataType := ftDate;
    QTickets.Parameters.parambyname('fec1').Value    := fecha1.date;
    QTickets.Parameters.parambyname('fec2').Value    := fecha2.date;
    QTickets.Parameters.parambyname('prod').Value    := IntToStr(producto);
    QTickets.Open;

    QTickets.DisableControls;
    QTickets.first;
    cant := 0;
    tot  := 0;
    while not QTickets.Eof do
    begin
      cant := cant + QTicketscantidad.Value;
      tot  := tot  + QTicketstotal.Value;
      QTickets.Next;
    end;
    lbcant.Caption  := FloatToStr(cant);
    lbtotal.Caption := format('%n',[tot]);
    QTickets.First;
    QTickets.EnableControls;
    
    Screen.Cursor := crDefault;
  end
  else
  begin
    MessageDlg('DEBE ESPECIFICAR EL PRODUCTO',mtError,[mbok],0);
    edProd.SetFocus;
  end;
end;

procedure TfrmConsFacturasProd.cbStatusClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsFacturasProd.cbGrupoClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsFacturasProd.ckItbisClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsFacturasProd.ckDescClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsFacturasProd.cbOrdenClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsFacturasProd.SpeedButton1Click(Sender: TObject);
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

    Producto := dm.Query1.FieldByName('pro_codigo').Value;

    tProd.text := dm.Query1.FieldByName('pro_nombre').AsString;
    btRefreshClick(Self);
  end;
  frmBuscaProducto.release;
  Grid.setfocus;
end;

procedure TfrmConsFacturasProd.edProdKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edProd.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select pro_codigo, pro_nombre from productos');
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
        Producto := dm.Query1.FieldByName('pro_codigo').Value;
        btRefreshClick(Self);
      end;
    end;
  end;
end;

procedure TfrmConsFacturasProd.BitBtn2Click(Sender: TObject);
begin
  if Trim(edProd.Text) <> '' then
  begin
    if PageControl1.ActivePageIndex = 0 then
    begin
      Application.CreateForm(tRConsFacturasProd, RConsFacturasProd);
      RConsFacturasProd.QFacturas.Close;
      RConsFacturasProd.QSucursal.Close;

      RConsFacturasProd.QFacturas.SQL.Clear;
      RConsFacturasProd.QSucursal.SQL.Clear;

      RConsFacturasProd.QSucursal.sql      := RConsFacturasProd.QSucursal2.SQL;
      RConsFacturasProd.QFacturas.sql      := QFacturas.SQL;
      if ckSuc.Checked then begin
        RConsFacturasProd.QFacturas.sql.add('and f.suc_codigo = :suc');
        RConsFacturasProd.QSucursal.sql.add('and f.suc_codigo = :suc');
      end;

      RConsFacturasProd.lbProv.Caption     := tProvincia.Text;
      RConsFacturasProd.lbVendedor.Caption := tVendedor.Text;

      RConsFacturasProd.QSucursal.Parameters.parambyname('fecha1').DataType := ftDate;
      RConsFacturasProd.QSucursal.Parameters.parambyname('fecha2').DataType := ftDate;
      RConsFacturasProd.QSucursal.Parameters.parambyname('fecha1').Value := fecha1.date;
      RConsFacturasProd.QSucursal.Parameters.parambyname('fecha2').Value := fecha2.date;
      RConsFacturasProd.QSucursal.Parameters.parambyname('emp').Value := dm.vp_cia;
      if ckSuc.Checked then
      RConsFacturasProd.QSucursal.Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;

      RConsFacturasProd.QSucursal.Open;

      RConsFacturasProd.lbProd.Caption := tProd.Text;
      RConsFacturasProd.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
      RConsFacturasProd.QFacturas.Parameters.parambyname('fecha1').DataType := ftDate;
      RConsFacturasProd.QFacturas.Parameters.parambyname('fecha2').DataType := ftDate;
      RConsFacturasProd.QFacturas.Parameters.parambyname('fecha1').Value := fecha1.date;
      RConsFacturasProd.QFacturas.Parameters.parambyname('fecha2').Value := fecha2.date;
      if ckSuc.Checked then
      RConsFacturasProd.QFacturas.Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;

      RConsFacturasProd.QFacturas.open;
      RConsFacturasProd.PrinterSetup;
      RConsFacturasProd.Preview;
      RConsFacturasProd.Destroy;
    end
    else
    begin
      Application.CreateForm(tRConsTicketsProd, RConsTicketsProd);
      RConsTicketsProd.QTickets.sql      := QTickets.SQL;
      RConsTicketsProd.lbProd.Caption := tProd.Text;
      RConsTicketsProd.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
      RConsTicketsProd.QTickets.Parameters.parambyname('fec1').DataType := ftDate;
      RConsTicketsProd.QTickets.Parameters.parambyname('fec2').DataType := ftDate;
      RConsTicketsProd.QTickets.Parameters.parambyname('fec1').Value    := fecha1.date;
      RConsTicketsProd.QTickets.Parameters.parambyname('fec2').Value    := fecha2.date;
      RConsTicketsProd.QTickets.Parameters.parambyname('prod').Value    := IntToStr(producto);
      RConsTicketsProd.QTickets.open;
      RConsTicketsProd.PrinterSetup;
      RConsTicketsProd.Preview;
      RConsTicketsProd.Destroy;
    end;
  end
  else
  begin
    MessageDlg('DEBE ESPECIFICAR EL PRODUCTO',mtError,[mbok],0);
    edProd.SetFocus;
  end;
end;

procedure TfrmConsFacturasProd.FormPaint(Sender: TObject);
begin
  with frmConsFacturasProd do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmConsFacturasProd.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(vk_return) then
     if activecontrol.classtype <> tdbgrid then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmConsFacturasProd.QFacturasCalcFields(DataSet: TDataSet);
var
  Venta: Double;
begin
  if QFacturasDET_CONITBIS.value = 'S' then
  begin
    Venta    := strtofloat(format('%10.2f',[(QFacturasDET_PRECIO.value)]));
    QFacturasCalcDesc.value    := strtofloat(format('%10.2f',[(Venta *
                                 strtofloat(format('%10.2f',[QFacturasDET_DESCUENTO.value])))/100]));
    QFacturasValor.value       := ((strtofloat(format('%10.2f',[Venta]))-
                                 strtofloat(format('%10.2f',[QFacturasCalcDesc.value])))*
                                 strtofloat(format('%10.2f',[QFacturasDET_CANTIDAD.value])));
  end
  else
  begin
    Venta := strtofloat(format('%10.2f',[QFacturasDET_PRECIO.value]));
    QFacturasCalcDesc.value    := strtofloat(format('%10.2f',[(Venta * QFacturasDET_DESCUENTO.value)/100]));
    QFacturasValor.value       := strtofloat(format('%10.2f',[(Venta-QFacturasCalcDesc.value)*QFacturasDET_CANTIDAD.value]));
  end;
end;

procedure TfrmConsFacturasProd.SpeedButton2Click(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C�digo');
  Search.Query.clear;
  Search.Query.add('select pro_nombre, pro_codigo');
  Search.Query.add('from provincias');
  Search.Query.add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'pro_Codigo';
  Search.Title := 'Provincias';
  if Search.execute then
  begin
    edProv.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select pro_nombre from provincias');
    dm.Query1.sql.add('where pro_codigo = :cod');
    dm.Query1.sql.add('and emp_codigo = :emp');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edProv.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('PROVINCIA NO EXISTE',mterror,[mbok],0)
    else
      tprovincia.text := dm.Query1.fieldbyname('pro_nombre').asstring;
    edProv.setfocus;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsFacturasProd.edProvChange(Sender: TObject);
begin
  if trim(edProv.text) = '' then tprovincia.text := '';
end;

procedure TfrmConsFacturasProd.edProvKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edProv.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select pro_nombre from provincias');
      dm.Query1.sql.add('where pro_codigo = :cod');
      dm.Query1.sql.add('and emp_codigo = :emp');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edProv.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('PROVINCIA NO EXISTE',mterror,[mbok],0);
        edProv.setFocus;
      end
      else
        tprovincia.text := dm.Query1.fieldbyname('pro_nombre').asstring;

      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsFacturasProd.btVendedorClick(Sender: TObject);
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
    btRefreshClick(self);
  end;
end;

procedure TfrmConsFacturasProd.edVendedorChange(Sender: TObject);
begin
  if trim(edVendedor.text) = '' then tVendedor.text := '';
end;

procedure TfrmConsFacturasProd.edVendedorKeyDown(Sender: TObject;
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
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsFacturasProd.ckSucClick(Sender: TObject);
begin
WITH DM.QParametros do BEGIN
  Close;
  Parameters.ParamByName('EMP_CODIGO').Value := dm.vp_cia;
  Open;
  end;

  IF ckSuc.Checked then BEGIN
  IF DM.QParametrosPAR_SUC_NCF.Value > 0 THEN BEGIN
  DBLookupComboBox2.KeyValue := DM.QParametrosPAR_SUC_NCF.Value;
  end;
  END;
end;

end.
