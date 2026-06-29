unit PVENTA47;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, Grids,
  DBGrids, DB, IBCustomDataSet, IBQuery, QRCtrls, DateUtils, ADODB,
  QuerySearchDlgADO, DBCtrls;

type
  TfrmCuadre = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    tCajero: TEdit;
    edCajero: TEdit;
    Search: TQrySearchDlgADO;
    Fecha1: TDateTimePicker;
    btRefresh: TBitBtn;
    BitBtn2: TBitBtn;
    btClose: TBitBtn;
    Query1: TADOQuery;
    QFormas: TADOQuery;
    dsFormas: TDataSource;
    QFormasCODIGO: TIntegerField;
    QFormasFORMA: TIBStringField;
    QFormasMONTO: TFloatField;
    QFacturas: TADOQuery;
    QFacturasTFA_NOMBRE: TIBStringField;
    QFacturasMONTO: TFloatField;
    dsFacturas: TDataSource;
    cbGrupo: TRadioGroup;
    Fecha2: TDateTimePicker;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    Label10: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    Label6: TLabel;
    btcaja: TSpeedButton;
    tcaja: TEdit;
    edCaja: TEdit;
    StaticText1: TStaticText;
    DBGrid1: TDBGrid;
    StaticText2: TStaticText;
    DBGrid2: TDBGrid;
    StaticText3: TStaticText;
    DBGrid3: TDBGrid;
    QDetalleFactura: TADOQuery;
    QFacturasEMP_CODIGO: TIntegerField;
    QFacturasSUC_CODIGO: TIntegerField;
    QFacturasFAC_FORMA: TStringField;
    QFacturasTFA_CODIGO: TIntegerField;
    QDetalleFacturafac_numero: TIntegerField;
    QDetalleFacturafecha: TDateTimeField;
    QDetalleFacturafac_total: TBCDField;
    QDetalleFacturafac_status: TStringField;
    dsDetalle: TDataSource;
    StaticText4: TStaticText;
    DBGrid4: TDBGrid;
    QDesembolsos: TADOQuery;
    QDesembolsosdes_numero: TIntegerField;
    QDesembolsosdes_fecha: TDateTimeField;
    QDesembolsosdes_monto: TBCDField;
    QDesembolsosdes_status: TStringField;
    dsDesem: TDataSource;
    StaticText5: TStaticText;
    QRecibos: TADOQuery;
    QRecibosrec_numero: TIntegerField;
    QRecibosrec_fecha: TDateTimeField;
    QRecibosrec_monto: TBCDField;
    QRecibosrec_status: TStringField;
    dsRecibos: TDataSource;
    DBGrid5: TDBGrid;
    Label3: TLabel;
    lbTotal: TStaticText;
    Label4: TLabel;
    lbefectivo: TStaticText;
    Label5: TLabel;
    lbinicial: TStaticText;
    QFormasid: TAutoIncField;
    QFormasfpa_sumaefectivocuadre: TStringField;
    QFacturasTFA_ACTBALANCE: TStringField;
    QItbis: TADOQuery;
    QItbisitbis: TBCDField;
    Label7: TLabel;
    lbItbis: TStaticText;
    Label8: TLabel;
    lbretenciones: TStaticText;
    QRecibosrec_retencion: TBCDField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure edCajeroChange(Sender: TObject);
    procedure edCajeroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cbGrupoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btcajaClick(Sender: TObject);
    procedure edCajaChange(Sender: TObject);
    procedure edCajaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Total, Efectivo, Facturas, Recibos, Desem, NC, Ret : Double;
  end;

var
  frmCuadre: TfrmCuadre;

implementation

uses PVENTA44, PVENTA48, PVENTA49, RVENTA56, SIGMA01, SIGMA00, RVENTA132;

{$R *.dfm}

procedure TfrmCuadre.SpeedButton1Click(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Query.clear;
  Search.Query.add('select caj_nombre, caj_codigo');
  Search.Query.add('from cajeros');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'caj_Codigo';
  Search.Title := 'Listado de Cajeros';
  if Search.execute then
  begin
    edCajero.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select caj_nombre from cajeros');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and caj_codigo = :cod');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edCajero.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('CAJERO NO EXISTE',mterror,[mbok],0)
    else
      tCajero.text := dm.Query1.fieldbyname('caj_nombre').asstring;
    edCajero.setfocus;
//    btRefreshClick(self);
  end;
end;

procedure TfrmCuadre.edCajeroChange(Sender: TObject);
begin
  if trim(edCajero.text) = '' then tCajero.text := '';
end;

procedure TfrmCuadre.edCajeroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edCajero.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select caj_nombre from cajeros');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and caj_codigo = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edCajero.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('CAJERO NO EXISTE',mterror,[mbok],0);
        edCajero.SetFocus;
      end
      else
        tCajero.text := dm.Query1.fieldbyname('caj_nombre').asstring;
//      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmCuadre.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmCuadre.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCuadre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmCuadre.FormCreate(Sender: TObject);
begin
  Fecha1.date := Date;
  Fecha2.date := Date;
end;

procedure TfrmCuadre.FormPaint(Sender: TObject);
begin
  frmCuadre.Top := 4;
  frmCuadre.left := 1;
end;

procedure TfrmCuadre.btRefreshClick(Sender: TObject);
var
  caja1, caja2, cajero1, cajero2 : integer;
  totalefectivo : double;
begin
  if Trim(edCajero.Text) <> '' then
  begin
    cajero1 := StrToInt(Trim(edCajero.Text));
    cajero2 := StrToInt(Trim(edCajero.Text));
  end
  else
  begin
    cajero1 := 1;
    cajero2 := 1000;
  end;

  if Trim(edCaja.Text) <> '' then
  begin
    caja1 := StrToInt(Trim(edCaja.Text));
    caja2 := StrToInt(Trim(edCaja.Text));
  end
  else
  begin
    caja1 := 1;
    caja2 := 1000;
  end;

  frmMain.stBar1.Panels[1].Text := Copy(cbGrupo.Items[cbGrupo.ItemIndex],1,1);
  Efectivo := 0;
  Total := 0;
  totalefectivo := 0;

  //buscando retenciones
  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add('select sum(isnull(rec_retencion,0)) as valor from recibos');
  Query1.SQL.Add('where emp_codigo = :emp');
  Query1.SQL.Add('and caj_codigo between :caj1 and :caj2');
  Query1.SQL.Add('and rec_caja between :caja1 and :caja2');
  Query1.SQL.Add('and rec_fecha between convert(datetime, :fec1, 105) and convert(datetime, :fec2, 105)');
  Query1.Parameters.ParamByName('emp').Value   := dm.vp_cia;
  Query1.Parameters.ParamByName('caj1').Value  := cajero1;
  Query1.Parameters.ParamByName('caj2').Value  := cajero2;
  Query1.Parameters.ParamByName('caja1').Value := caja1;
  Query1.Parameters.ParamByName('caja2').Value := caja2;
  Query1.Parameters.ParamByName('fec1').DataType := ftDate;
  Query1.Parameters.ParamByName('fec2').DataType := ftDate;
  Query1.Parameters.ParamByName('fec1').Value    := Fecha1.Date;
  Query1.Parameters.ParamByName('fec2').Value    := Fecha2.Date;
  Query1.Open;
  Ret := Query1.FieldByName('valor').AsFloat;
  lbretenciones.Caption := format('%n',[Ret]);

  //buscando efectivo asignado al cajero
  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add('select caj_efectivo from cajeros');
  Query1.SQL.Add('where emp_codigo = :emp');
  Query1.SQL.Add('and caj_codigo between :caj1 and :caj2');
  Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  Query1.Parameters.ParamByName('caj1').Value := cajero1;
  Query1.Parameters.ParamByName('caj2').Value := cajero2;
  Query1.Open;
  Efectivo := Query1.FieldByName('caj_efectivo').AsFloat;
  lbinicial.Caption := format('%n',[Efectivo]);

  QFormas.Close;
  QFormas.SQL.Clear;
  if cbGrupo.ItemIndex = 0 then
  begin
    QFormas.SQL.Add('SELECT a.*, f.fpa_sumaefectivocuadre FROM PR_CUADRE_FORMASPAGO (:EMP, :SUC, :FEC1, :FEC2, :CAJ1, :CAJ2, '+#39+'A'+#39+', :caja) a,');
    QFormas.SQL.Add('formaspago f where f.emp_codigo = :emp2 and f.fpa_codigo = a.codigo');
  end
  else if cbGrupo.ItemIndex = 1 then
  begin
    QFormas.SQL.Add('SELECT a.*, f.fpa_sumaefectivocuadre FROM PR_CUADRE_FORMASPAGO (:EMP, :SUC, :FEC1, :FEC2, :CAJ1, :CAJ2, '+#39+'B'+#39+', :caja) a,');
    QFormas.SQL.Add('formaspago f where f.emp_codigo = :emp2 and f.fpa_codigo = a.codigo');
  end
  else
  begin
    QFormas.SQL.Add('SELECT a.*, f.fpa_sumaefectivocuadre FROM PR_CUADRE_FORMASPAGO (:EMP, :SUC, :FEC1, :FEC2, :CAJ1, :CAJ2, '+#39+'T'+#39+', :caja) a,');
    QFormas.SQL.Add('formaspago f where f.emp_codigo = :emp2 and f.fpa_codigo = a.codigo');
  end;
  QFormas.Parameters.ParamByName('emp2').Value    := dm.vp_cia;
  QFormas.Parameters.ParamByName('emp').Value     := dm.vp_cia;
  QFormas.Parameters.ParamByName('fec1').DataType := ftDate;
  QFormas.Parameters.ParamByName('fec2').DataType := ftDate;
  QFormas.Parameters.ParamByName('fec1').Value    := Fecha1.Date;
  QFormas.Parameters.ParamByName('fec2').Value    := Fecha2.Date;
  QFormas.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;

  if TRim(edCaja.Text) <> '' then
    QFormas.Parameters.ParamByName('caja').Value    := StrToInt(edCaja.Text)
  else
    QFormas.Parameters.ParamByName('caja').Value    := 0;

  QFormas.Parameters.ParamByName('caj1').Value := cajero1;
  QFormas.Parameters.ParamByName('caj2').Value := cajero2;
  QFormas.Open;

  QFormas.DisableControls;
  while not QFormas.Eof do
  begin
    if QFormasfpa_sumaefectivocuadre.Value = 'True' then
      totalefectivo := totalefectivo + QFormasMONTO.Value;
    QFormas.Next;
  end;
  QFormas.First;
  QFormas.EnableControls;
  lbefectivo.Caption := format('%n',[totalefectivo]);
  lbTotal.Caption := format('%n',[(Efectivo + totalefectivo)]);

  QFacturas.Close;
  QFacturas.SQL.Clear;
  QFacturas.SQL.Add('SELECT F.EMP_CODIGO, F.SUC_CODIGO, F.FAC_FORMA, F.TFA_CODIGO,');
  QFacturas.SQL.Add('T.TFA_NOMBRE, T.TFA_ACTBALANCE, SUM(F.FAC_TOTAL) AS MONTO');
  QFacturas.SQL.Add('FROM FACTURAS F, TIPOSFACTURA T');
  QFacturas.SQL.Add('WHERE F.EMP_CODIGO = T.EMP_CODIGO');
  QFacturas.SQL.Add('AND F.TFA_CODIGO = T.TFA_CODIGO');
  QFacturas.SQL.Add('AND F.FAC_STATUS <> '+#39+'ANU'+#39);
  QFacturas.SQL.Add('AND F.FAC_FECHA between convert(datetime,:FEC1,105) and convert(datetime,:FEC2,105)');
  QFacturas.SQL.Add('AND F.CAJ_CODIGO BETWEEN :CAJ1 AND :CAJ2');
  QFacturas.SQL.Add('AND F.EMP_CODIGO = :EMP');
  QFacturas.SQL.Add('AND (F.FAC_HOLD IS NULL OR F.FAC_HOLD <> '+QuotedStr('True')+')');
  QFacturas.SQL.Add('and f.suc_codigo = :suc');
  if Trim(edCaja.Text) <> '' then
    QFacturas.SQL.Add('and f.fac_caja = '+edCaja.Text)
  else
    QFacturas.SQL.Add('and f.fac_caja between 1 and 100');

  if cbGrupo.ItemIndex = 0 then
     QFacturas.SQL.Add('and f.fac_forma = '+#39+'A'+#39)
  else if cbGrupo.ItemIndex = 1 then
     QFacturas.SQL.Add('and f.fac_forma = '+#39+'B'+#39);
  QFacturas.SQL.Add('GROUP BY F.EMP_CODIGO, F.SUC_CODIGO, F.FAC_FORMA, F.TFA_CODIGO, T.TFA_NOMBRE, T.TFA_ACTBALANCE');
  QFacturas.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QFacturas.Parameters.ParamByName('fec1').DataType := ftDate;
  QFacturas.Parameters.ParamByName('fec2').DataType := ftDate;
  QFacturas.Parameters.ParamByName('fec1').Value    := Fecha1.Date;
  QFacturas.Parameters.ParamByName('fec2').Value    := Fecha2.Date;
  QFacturas.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
  QFacturas.Parameters.ParamByName('caj1').Value := cajero1;
  QFacturas.Parameters.ParamByName('caj2').Value := cajero2;
  QFacturas.Open;

  QDetalleFactura.Close;
  QDetalleFactura.Parameters.ParamByName('fec1').Value  := Fecha1.Date;
  QDetalleFactura.Parameters.ParamByName('fec2').Value  := Fecha2.Date;
  QDetalleFactura.Parameters.ParamByName('caja1').Value := caja1;
  QDetalleFactura.Parameters.ParamByName('caja2').Value := caja2;
  QDetalleFactura.Parameters.ParamByName('cajero1').Value := cajero1;
  QDetalleFactura.Parameters.ParamByName('cajero2').Value := cajero2;

  if cbGrupo.ItemIndex = 0 then
  begin
     QDetalleFactura.Parameters.ParamByName('forma1').Value := 'A';
     QDetalleFactura.Parameters.ParamByName('forma2').Value := 'A';
  end
  else if cbGrupo.ItemIndex = 1 then
  begin
     QDetalleFactura.Parameters.ParamByName('forma1').Value := 'B';
     QDetalleFactura.Parameters.ParamByName('forma2').Value := 'B';
  end
  else
  begin
     QDetalleFactura.Parameters.ParamByName('forma1').Value := 'A';
     QDetalleFactura.Parameters.ParamByName('forma2').Value := 'B';
  end;

  QDetalleFactura.Open;

  //Itbis
  QItbis.Close;
  QItbis.Parameters.ParamByName('fec1').Value  := Fecha1.Date;
  QItbis.Parameters.ParamByName('fec2').Value  := Fecha2.Date;
  QItbis.Parameters.ParamByName('caja1').Value := caja1;
  QItbis.Parameters.ParamByName('caja2').Value := caja2;
  QItbis.Parameters.ParamByName('cajero1').Value := cajero1;
  QItbis.Parameters.ParamByName('cajero2').Value := cajero2;
  QItbis.Parameters.ParamByName('emp_codigo').Value := dm.vp_cia;
  QItbis.Parameters.ParamByName('suc_codigo').Value := DBLookupComboBox2.KeyValue;

  if cbGrupo.ItemIndex = 0 then
  begin
     QItbis.Parameters.ParamByName('forma1').Value := 'A';
     QItbis.Parameters.ParamByName('forma2').Value := 'A';
  end
  else if cbGrupo.ItemIndex = 1 then
  begin
     QItbis.Parameters.ParamByName('forma1').Value := 'B';
     QItbis.Parameters.ParamByName('forma2').Value := 'B';
  end
  else
  begin
     QItbis.Parameters.ParamByName('forma1').Value := 'A';
     QItbis.Parameters.ParamByName('forma2').Value := 'B';
  end;
  QItbis.Open;
  lbItbis.Caption := format('%n',[QItbisitbis.Value]);

  //Desembolsos de caja
  QDesembolsos.Close;
  QDesembolsos.Parameters.ParamByName('emp').Value   := dm.vp_cia;
  QDesembolsos.Parameters.ParamByName('suc').Value   := DBLookupComboBox2.KeyValue;
  QDesembolsos.Parameters.ParamByName('fec1').Value  := Fecha1.Date;
  QDesembolsos.Parameters.ParamByName('fec2').Value  := Fecha2.Date;
  QDesembolsos.Parameters.ParamByName('caja1').Value := caja1;
  QDesembolsos.Parameters.ParamByName('caja2').Value := caja2;
  QDesembolsos.Parameters.ParamByName('cajero1').Value := cajero1;
  QDesembolsos.Parameters.ParamByName('cajero2').Value := cajero2;
  QDesembolsos.Open;

  //Recibos
  QRecibos.Close;
  QRecibos.Parameters.ParamByName('emp').Value   := dm.vp_cia;
  QRecibos.Parameters.ParamByName('suc').Value   := DBLookupComboBox2.KeyValue;
  QRecibos.Parameters.ParamByName('fec1').Value  := Fecha1.Date;
  QRecibos.Parameters.ParamByName('fec2').Value  := Fecha2.Date;
  QRecibos.Parameters.ParamByName('caja1').Value := caja1;
  QRecibos.Parameters.ParamByName('caja2').Value := caja2;
  QRecibos.Parameters.ParamByName('cajero1').Value := cajero1;
  QRecibos.Parameters.ParamByName('cajero2').Value := cajero2;
  QRecibos.Open;
end;

procedure TfrmCuadre.BitBtn2Click(Sender: TObject);
var
  a, b : integer;
  ar : textfile;
  s, s1 : array[0..50] of char;
  puertopeq : textfile;
  puerto : string;
  TVenta, TCobro, TDesem : Double;
begin
  btRefreshClick(Self);
  if DM.QParametrospar_formato_preimpreso.Value = 'Caceres&Equipos' then begin
   Application.CreateForm(tRCuadreCaceres, RCuadreCaceres);
    RCuadreCaceres.QSucursal.Close;
    RCuadreCaceres.QSucursal.Parameters.ParamByName('emp').Value := dm.vp_cia;
    RCuadreCaceres.QSucursal.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    RCuadreCaceres.QSucursal.Open;

    RCuadreCaceres.lbitbis.Caption   := lbItbis.Caption;
    RCuadreCaceres.lbGrupo.Caption   := cbGrupo.Items[cbGrupo.itemindex];
    RCuadreCaceres.lbFecha.Caption   := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
    RCuadreCaceres.lbinicial.Caption := lbinicial.Caption;
    RCuadreCaceres.lbTotal.Caption   := lbTotal.Caption;
    RCuadreCaceres.lbCobrado.Caption := lbefectivo.Caption;
    RCuadreCaceres.lbretencion.Caption := lbretenciones.Caption;
    if Trim(edCajero.text) <> '' then
      RCuadreCaceres.lbCajero.Caption := 'Cajero : '+tCajero.Text
    else
      RCuadreCaceres.lbCajero.Caption := ' ';

    if Trim(edCajero.text) <> '' then
    begin
      RCuadreCaceres.QDetalle.Parameters.ParamByName('cajero1').Value := StrToInt(Trim(edCajero.Text));
      RCuadreCaceres.QDetalle.Parameters.ParamByName('cajero2').Value := StrToInt(Trim(edCajero.Text));

      RCuadreCaceres.QTipo.Parameters.ParamByName('cajero1').Value := StrToInt(Trim(edCajero.Text));
      RCuadreCaceres.QTipo.Parameters.ParamByName('cajero2').Value := StrToInt(Trim(edCajero.Text));
    end
    else
    begin
      RCuadreCaceres.QDetalle.Parameters.ParamByName('cajero1').Value := 1;
      RCuadreCaceres.QDetalle.Parameters.ParamByName('cajero2').Value := 100;

      RCuadreCaceres.QTipo.Parameters.ParamByName('cajero1').Value := 1;
      RCuadreCaceres.QTipo.Parameters.ParamByName('cajero2').Value := 100;
    end;

    if Trim(edCaja.text) <> '' then
    begin
      RCuadreCaceres.QDetalle.Parameters.ParamByName('caja1').Value := StrToInt(Trim(edCaja.Text));
      RCuadreCaceres.QDetalle.Parameters.ParamByName('caja2').Value := StrToInt(Trim(edCaja.Text));

      RCuadreCaceres.QTipo.Parameters.ParamByName('caja1').Value := StrToInt(Trim(edCaja.Text));
      RCuadreCaceres.QTipo.Parameters.ParamByName('caja2').Value := StrToInt(Trim(edCaja.Text));
    end
    else
    begin
      RCuadreCaceres.QDetalle.Parameters.ParamByName('caja1').Value := 1;
      RCuadreCaceres.QDetalle.Parameters.ParamByName('caja2').Value := 100;

      RCuadreCaceres.QTipo.Parameters.ParamByName('caja1').Value := 1;
      RCuadreCaceres.QTipo.Parameters.ParamByName('caja2').Value := 100;
    end;

    if cbGrupo.ItemIndex < 2 then
    begin
      RCuadreCaceres.QDetalle.Parameters.ParamByName('forma1').Value := cbGrupo.Items[cbGrupo.ItemIndex];
      RCuadreCaceres.QDetalle.Parameters.ParamByName('forma2').Value := cbGrupo.Items[cbGrupo.ItemIndex];

      RCuadreCaceres.QTipo.Parameters.ParamByName('forma1').Value := cbGrupo.Items[cbGrupo.ItemIndex];
      RCuadreCaceres.QTipo.Parameters.ParamByName('forma2').Value := cbGrupo.Items[cbGrupo.ItemIndex];
    end
    else
    begin
      RCuadreCaceres.QDetalle.Parameters.ParamByName('forma1').Value := 'A';
      RCuadreCaceres.QDetalle.Parameters.ParamByName('forma2').Value := 'B';

      RCuadreCaceres.QTipo.Parameters.ParamByName('forma1').Value := 'A';
      RCuadreCaceres.QTipo.Parameters.ParamByName('forma2').Value := 'B';
    end;
    RCuadreCaceres.QDetalle.Parameters.ParamByName('fec1').DataType := ftDate;
    RCuadreCaceres.QDetalle.Parameters.ParamByName('fec2').DataType := ftDate;
    RCuadreCaceres.QDetalle.Parameters.ParamByName('fec1').Value := Fecha1.Date;
    RCuadreCaceres.QDetalle.Parameters.ParamByName('fec2').Value := Fecha2.Date;
    RCuadreCaceres.QDetalle.Parameters.ParamByName('emp').Value := dm.vp_cia;
    RCuadreCaceres.QDetalle.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;

    RCuadreCaceres.QTipo.Parameters.ParamByName('fec1').DataType := ftDate;
    RCuadreCaceres.QTipo.Parameters.ParamByName('fec2').DataType := ftDate;
    RCuadreCaceres.QTipo.Parameters.ParamByName('fec1').Value := Fecha1.Date;
    RCuadreCaceres.QTipo.Parameters.ParamByName('fec2').Value := Fecha2.Date;
    RCuadreCaceres.QTipo.Parameters.ParamByName('emp').Value := dm.vp_cia;
    RCuadreCaceres.QTipo.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;

    RCuadreCaceres.QForma.Parameters.ParamByName('emp').Value := dm.vp_cia;
    RCuadreCaceres.QForma.Open;
    RCuadreCaceres.QTipo.Open;
    RCuadreCaceres.QDetalle.Open;

    RCuadreCaceres.PrinterSetup;
    RCuadreCaceres.Preview;
    RCuadreCaceres.Destroy;
  end
  else
  if dm.QParametrosPAR_FORMATOCUADRE.Value = 2 then
  begin
    Application.CreateForm(tRCuadre, RCuadre);
    RCuadre.QSucursal.Close;
    RCuadre.QSucursal.Parameters.ParamByName('emp').Value := dm.vp_cia;
    RCuadre.QSucursal.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    RCuadre.QSucursal.Open;

    RCuadre.lbitbis.Caption   := lbItbis.Caption;
    RCuadre.lbGrupo.Caption   := cbGrupo.Items[cbGrupo.itemindex];
    RCuadre.lbFecha.Caption   := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
    RCuadre.lbinicial.Caption := lbinicial.Caption;
    RCuadre.lbTotal.Caption   := lbTotal.Caption;
    RCuadre.lbCobrado.Caption := lbefectivo.Caption;
    RCuadre.lbretencion.Caption := lbretenciones.Caption;
    if Trim(edCajero.text) <> '' then
      RCuadre.lbCajero.Caption := 'Cajero : '+tCajero.Text
    else
      RCuadre.lbCajero.Caption := ' ';

    if Trim(edCajero.text) <> '' then
    begin
      RCuadre.QDetalle.Parameters.ParamByName('cajero1').Value := StrToInt(Trim(edCajero.Text));
      RCuadre.QDetalle.Parameters.ParamByName('cajero2').Value := StrToInt(Trim(edCajero.Text));

      RCuadre.QTipo.Parameters.ParamByName('cajero1').Value := StrToInt(Trim(edCajero.Text));
      RCuadre.QTipo.Parameters.ParamByName('cajero2').Value := StrToInt(Trim(edCajero.Text));
    end
    else
    begin
      RCuadre.QDetalle.Parameters.ParamByName('cajero1').Value := 1;
      RCuadre.QDetalle.Parameters.ParamByName('cajero2').Value := 100;

      RCuadre.QTipo.Parameters.ParamByName('cajero1').Value := 1;
      RCuadre.QTipo.Parameters.ParamByName('cajero2').Value := 100;
    end;

    if Trim(edCaja.text) <> '' then
    begin
      RCuadre.QDetalle.Parameters.ParamByName('caja1').Value := StrToInt(Trim(edCaja.Text));
      RCuadre.QDetalle.Parameters.ParamByName('caja2').Value := StrToInt(Trim(edCaja.Text));

      RCuadre.QTipo.Parameters.ParamByName('caja1').Value := StrToInt(Trim(edCaja.Text));
      RCuadre.QTipo.Parameters.ParamByName('caja2').Value := StrToInt(Trim(edCaja.Text));
    end
    else
    begin
      RCuadre.QDetalle.Parameters.ParamByName('caja1').Value := 1;
      RCuadre.QDetalle.Parameters.ParamByName('caja2').Value := 100;

      RCuadre.QTipo.Parameters.ParamByName('caja1').Value := 1;
      RCuadre.QTipo.Parameters.ParamByName('caja2').Value := 100;
    end;

    if cbGrupo.ItemIndex < 2 then
    begin
      RCuadre.QDetalle.Parameters.ParamByName('forma1').Value := cbGrupo.Items[cbGrupo.ItemIndex];
      RCuadre.QDetalle.Parameters.ParamByName('forma2').Value := cbGrupo.Items[cbGrupo.ItemIndex];

      RCuadre.QTipo.Parameters.ParamByName('forma1').Value := cbGrupo.Items[cbGrupo.ItemIndex];
      RCuadre.QTipo.Parameters.ParamByName('forma2').Value := cbGrupo.Items[cbGrupo.ItemIndex];
    end
    else
    begin
      RCuadre.QDetalle.Parameters.ParamByName('forma1').Value := 'A';
      RCuadre.QDetalle.Parameters.ParamByName('forma2').Value := 'B';

      RCuadre.QTipo.Parameters.ParamByName('forma1').Value := 'A';
      RCuadre.QTipo.Parameters.ParamByName('forma2').Value := 'B';
    end;
    RCuadre.QDetalle.Parameters.ParamByName('fec1').DataType := ftDate;
    RCuadre.QDetalle.Parameters.ParamByName('fec2').DataType := ftDate;
    RCuadre.QDetalle.Parameters.ParamByName('fec1').Value := Fecha1.Date;
    RCuadre.QDetalle.Parameters.ParamByName('fec2').Value := Fecha2.Date;
    RCuadre.QDetalle.Parameters.ParamByName('emp').Value := dm.vp_cia;
    RCuadre.QDetalle.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;

    RCuadre.QTipo.Parameters.ParamByName('fec1').DataType := ftDate;
    RCuadre.QTipo.Parameters.ParamByName('fec2').DataType := ftDate;
    RCuadre.QTipo.Parameters.ParamByName('fec1').Value := Fecha1.Date;
    RCuadre.QTipo.Parameters.ParamByName('fec2').Value := Fecha2.Date;
    RCuadre.QTipo.Parameters.ParamByName('emp').Value := dm.vp_cia;
    RCuadre.QTipo.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;

    RCuadre.QForma.Parameters.ParamByName('emp').Value := dm.vp_cia;
    RCuadre.QForma.Open;
    RCuadre.QTipo.Open;
    RCuadre.QDetalle.Open;

    RCuadre.PrinterSetup;
    RCuadre.Preview;
    RCuadre.Destroy;
  end
  else
  begin
    if FileExists('puerto.txt') then
    begin
      assignfile(puertopeq, 'puerto.txt');
      reset(puertopeq);
      readln(puertopeq, puerto);
    end
    else
      puerto := 'PRN';

    closefile(puertopeq);

    AssignFile(ar, 'c:\imp.bat');
    rewrite(ar);
    writeln(ar, 'type c:\cuadre.txt > '+puerto);
    closefile(ar);

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select SUC_NOMBRE, SUC_RNC, SUC_DIRECCION, SUC_LOCALIDAD, SUC_TELEFONO');
    dm.Query1.SQL.Add('from sucursales where emp_codigo = :emp');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    dm.Query1.Open;

    AssignFile(ar, 'c:\cuadre.txt');
    rewrite(ar);
    writeln(ar, chr(27)+chr(52)+trim(dm.Query1.FieldByName('SUC_NOMBRE').AsString)+chr(27)+chr(53));
    writeln(ar, trim(dm.Query1.FieldByName('SUC_DIRECCION').AsString));
    writeln(ar, trim(dm.Query1.FieldByName('SUC_LOCALIDAD').AsString));
    writeln(ar, 'Telefono : '+trim(dm.Query1.FieldByName('SUC_TELEFONO').AsString));
    writeln(ar, 'RNC: '+dm.Query1.FieldByName('SUC_RNC').AsString);
    writeln(ar, ' ');
    writeln(ar, '    C U A D R E   D E L   D I A');
    writeln(ar, ' ');
    writeln(ar, cbGrupo.Items[cbGrupo.itemindex]);
    if Trim(edCajero.text) <> '' then
      writeln(ar, 'Cajero   : '+tCajero.text);

    if Trim(edCaja.text) <> '' then
      writeln(ar, 'Caja     : '+tCaja.text);

    writeln(ar, 'Fecha    : '+'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date));
    writeln(ar, ' ');

    //Venta
    QFacturas.DisableControls;
    QFacturas.First;
    TVenta := 0;
    while not QFacturas.Eof do
    begin
      if QFacturasTFA_ACTBALANCE.Value <> 'True' then
        TVenta := TVenta + QFacturasMONTO.Value;
      QFacturas.Next;
    end;
    QFacturas.First;
    QFacturas.EnableControls;

    //Recibos
    QRecibos.DisableControls;
    QRecibos.First;
    TCobro := 0;
    while not QRecibos.Eof do
    begin
      TCobro := TCobro + QRecibosrec_monto.Value;
      QRecibos.Next;
    end;
    QRecibos.First;
    QRecibos.EnableControls;

    //Desembolsos
    QDesembolsos.DisableControls;
    QDesembolsos.First;
    while not QDesembolsos.Eof do
    begin
      TDesem := TDesem + QDesembolsosdes_monto.Value;
      QDesembolsos.Next;
    end;
    QDesembolsos.First;
    QDesembolsos.EnableControls;

    writeln(ar, 'TOTAL VENTA       : '+Format('%15.2m',[TVenta]));
    writeln(ar, 'TOTAL RECIBOS     : '+Format('%15.2m',[TCobro]));
    writeln(ar, 'TOTAL DESEMBOLSOS : '+Format('%15.2m',[TDesem]));
    writeln(ar, ' ');
    writeln(ar, 'SUBTOTAL          : '+Format('%15.2m',[(TVenta+TCobro)-(TDesem)]));
    writeln(ar, 'EFECTIVO ASIGNADO : '+lbInicial.Caption);
    writeln(ar, 'RETENCIONES       : '+lbretenciones.Caption);
    writeln(ar, 'TOTAL EN CAJA     : '+chr(27)+chr(52)+lbTotal.Caption+chr(27)+chr(53));
    writeln(ar, ' ');
    writeln(ar, 'Forma de Pago         Total');
    writeln(ar, '-----------------------------------');
    QFormas.DisableControls;
    QFormas.First;
    while not QFormas.eof do
    begin
      s := ' ';
      FillChar(s, 23-length(QFormasFORMA.value),' ');
      s1 := ' ';
      FillChar(s1, 12-length(Format('%n',[QFormasMONTO.value])),' ');
      writeln(ar, QFormasFORMA.value+s+s1+Format('%n',[QFormasMONTO.value]));
      QFormas.Next;
    end;
    QFormas.EnableControls;

    writeln(ar, ' ');
    writeln(ar, 'Tipo de Factura       Total');
    writeln(ar, '-----------------------------------');
    QFacturas.DisableControls;
    QFacturas.First;
    while not QFacturas.eof do
    begin
      s := ' ';
      FillChar(s, 23-length(QFacturasTFA_NOMBRE.value),' ');
      s1 := ' ';
      FillChar(s1, 12-length(Format('%n',[QFacturasMONTO.value])),' ');
      writeln(ar, QFacturasTFA_NOMBRE.value+s+s1+Format('%n',[QFacturasMONTO.value]));
      QFacturas.Next;
    end;
    QFacturas.EnableControls;
    writeln(ar, ' ');
    writeln(ar, ' ');
    writeln(ar, ' ');
    writeln(ar, '------------------------ ');
    writeln(ar, 'Firma del Cajero ');
    writeln(ar, ' ');
    writeln(ar, ' ');
    writeln(ar, ' ');
    writeln(ar, ' ');
    writeln(ar, ' ');
    writeln(ar, ' ');

    closefile(ar);
    winexec('c:\imp.bat', 0);
  end;
end;

procedure TfrmCuadre.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;

    edcaja.Text := dm.QParametroscaj_codigo.AsString;
    if trim(edcaja.Text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select caj_nombre from cajas');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and caj_codigo = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edCaja.text));
      dm.Query1.open;
      tcaja.text := dm.Query1.fieldbyname('caj_nombre').asstring;
    end;
  end;
  if (Time >= TimeOf(dm.QParametrosPAR_AHORA1.Value)) and
  (Time <= TimeOf(dm.QParametrosPAR_AHORA2.Value)) then
     cbGrupo.ItemIndex := 0
  else
     cbGrupo.ItemIndex := 1;
  frmMain.stBar1.Panels[1].Text := Copy(cbGrupo.Items[cbGrupo.ItemIndex],1,1);
end;

procedure TfrmCuadre.cbGrupoClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmCuadre.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     if activecontrol.classtype <> tdbgrid then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmCuadre.btcajaClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Query.clear;
  Search.Query.add('select caj_nombre, caj_codigo');
  Search.Query.add('from cajas');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'caj_Codigo';
  Search.Title := 'Cajas de Efectivo';
  if Search.execute then
  begin
    edCaja.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select caj_nombre from cajas');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and caj_codigo = :cod');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edCaja.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('CAJA NO EXISTE',mterror,[mbok],0)
    else
      tcaja.text := dm.Query1.fieldbyname('caj_nombre').asstring;
    edCaja.setfocus;
  end;
end;

procedure TfrmCuadre.edCajaChange(Sender: TObject);
begin
  if trim(edCaja.text) = '' then tCaja.text := '';
end;

procedure TfrmCuadre.edCajaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edCaja.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select caj_nombre from cajas');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and caj_codigo = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edCaja.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('CAJA NO EXISTE',mterror,[mbok],0);
        edCaja.SetFocus;
      end
      else
        tCaja.text := dm.Query1.fieldbyname('caj_nombre').asstring;
    end;
  end;
end;

end.

