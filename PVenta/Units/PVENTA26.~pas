unit PVENTA26;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids, DB,
  IBCustomDataSet, IBQuery, IBUpdateSQL, ADODB, DIMime,
  QuerySearchDlgADO, QRCtrls, QuickRpt, Menus, Math, QRPDFFilt;

type
  TfrmCotizacion = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    edCliente: TEdit;
    SpeedButton2: TSpeedButton;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Panel3: TPanel;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    Panel5: TPanel;
    btBuscar: TSpeedButton;
    Label11: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    btGrabar: TSpeedButton;
    btLimpiar: TSpeedButton;
    btSalir: TSpeedButton;
    btBuscaProd: TSpeedButton;
    btElimina: TSpeedButton;
    btPrecio: TSpeedButton;
    QCotizacion: TADOQuery;
    QCotizacionCLI_CODIGO: TIntegerField;
    QCotizacionCLI_REFERENCIA: TIBStringField;
    QCotizacionCOT_DIRECCION: TIBStringField;
    QCotizacionCOT_FAX: TIBStringField;
    QCotizacionCOT_FECHA: TDateTimeField;
    QCotizacionCOT_ITBIS: TFloatField;
    QCotizacionCOT_LOCALIDAD: TIBStringField;
    QCotizacionCOT_NOMBRE: TIBStringField;
    QCotizacionCOT_NUMERO: TIntegerField;
    QCotizacionCOT_STATUS: TIBStringField;
    QCotizacionCOT_TELEFONO: TIBStringField;
    QCotizacionCOT_TOTAL: TFloatField;
    QCotizacionEMP_CODIGO: TIntegerField;
    QCotizacionUSU_CODIGO: TIntegerField;
    QCotizacionVEN_CODIGO: TIntegerField;
    dsCotizacion: TDataSource;
    QDetalle: TADOQuery;
    QDetalleCOT_NUMERO: TIntegerField;
    QDetalleDET_CANTIDAD: TFloatField;
    QDetalleDET_CONITBIS: TIBStringField;
    QDetalleDET_ITBIS: TFloatField;
    QDetalleDET_PRECIO: TFloatField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    QDetallePRO_BARRA: TIBStringField;
    QDetallePRO_CODIGO: TIntegerField;
    QDetallePRO_NOMBRE: TIBStringField;
    QDetallePRO_RFABRIC: TIBStringField;
    QDetallePRO_RORIGINAL: TIBStringField;
    QDetalleValor: TFloatField;
    dsDetalle: TDataSource;
    DBEdit7: TDBEdit;
    QCotizacionSubTotal: TFloatField;
    Grid: TDBGrid;
    Search: TQrySearchDlgADO;
    QDetalleCalcItbis: TFloatField;
    QDetalleCalcDesc: TFloatField;
    QDetallePrecioItbis: TFloatField;
    DBText1: TDBText;
    QDetalleDET_ESCALA: TIBStringField;
    QDetalleDET_MANEJAESCALA: TIBStringField;
    btEscalas: TSpeedButton;
    QDetalleDET_PRECIO1: TFloatField;
    QDetalleDET_PRECIO2: TFloatField;
    QDetalleDET_PRECIO3: TFloatField;
    QDetalleDET_PRECIO4: TFloatField;
    QDetalleDET_MEDIDA: TIBStringField;
    QDetalleDET_NOTA: TMemoField;
    Label12: TLabel;
    btVendedor: TSpeedButton;
    dbVendedor: TDBEdit;
    tVendedor: TEdit;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    QCotizacionSUC_CODIGO: TIntegerField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    QDetalleDET_DESCUENTO: TBCDField;
    QCotizacionCOT_DESCUENTO: TBCDField;
    Label1: TLabel;
    DBEdit9: TDBEdit;
    QDetalledet_margen: TBCDField;
    QDetalledet_costo: TBCDField;
    QCotizacionmon_codigo: TIntegerField;
    QCotizacioncot_Tasa: TBCDField;
    Label13: TLabel;
    btmoneda: TSpeedButton;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    tmoneda: TEdit;
    DBEdit15: TDBEdit;
    Label10: TLabel;
    btCondicion: TSpeedButton;
    tCondicion: TEdit;
    DBEdit12: TDBEdit;
    QCotizacioncpa_codigo: TIntegerField;
    QCotizacioncot_validez: TIntegerField;
    QCotizacioncot_tiempo_entrega: TStringField;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit11: TDBEdit;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    QCotizacioncot_nota: TMemoField;
    btnota: TSpeedButton;
    DBLookupComboBox2: TDBLookupComboBox;
    QDetallePrecioTasa: TFloatField;
    btnuevonumero: TSpeedButton;
    Query1: TADOQuery;
    QDetallepro_servicio: TStringField;
    QDetallepro_combo: TStringField;
    QDetallemar_codigo: TIntegerField;
    QCotizacioncot_contacto: TStringField;
    DBEdit16: TDBEdit;
    Label16: TLabel;
    QCotizacioncot_solicitud: TIntegerField;
    Label18: TLabel;
    DBEdit17: TDBEdit;
    PopupMenu1: TPopupMenu;
    Nota1: TMenuItem;
    ckingles: TCheckBox;
    QCotizacioncot_proyecto: TStringField;
    lblProyecto: TLabel;
    DBEdit18: TDBEdit;
    QDetallepro_unidad_medida: TStringField;
    QDetalleUnidadID: TStringField;
    QDetalleMedida_Precio1: TBCDField;
    QDetalleMedida_Precio2: TBCDField;
    QDetalleMedida_Precio3: TBCDField;
    QDetalleMedida_Precio4: TBCDField;
    QDetalledet_cant_unidad_medida: TBCDField;
    QUnidades: TADOQuery;
    QUnidadesPrecio: TBCDField;
    QUnidadesCantidad: TBCDField;
    QUnidadesNombre: TStringField;
    QUnidadesCredito: TBCDField;
    QUnidadesMinimo: TBCDField;
    QUnidadesUnidadID: TStringField;
    QCotizacioncot_rnc: TStringField;
    Label21: TLabel;
    Label22: TLabel;
    DBEdit19: TDBEdit;
    N1: TMenuItem;
    Pantalladeproductos1: TMenuItem;
    Pantalladeajustedeinventario1: TMenuItem;
    Consultarmovimientos1: TMenuItem;
    N2: TMenuItem;
    QTipo: TADOQuery;
    QTipoEMP_CODIGO: TIntegerField;
    QTipoTFA_CODIGO: TIntegerField;
    QTipoTFA_NOMBRE: TIBStringField;
    QTipoTFA_ESPCLIENTE: TIBStringField;
    QTipoTFA_SELCONDI: TIBStringField;
    QTipoTFA_ACTBALANCE: TIBStringField;
    QTipoTFA_FORMATOIMP: TIntegerField;
    QTipoTFA_PUERTOIMP: TIBStringField;
    QTipoTMO_CODIGO: TIntegerField;
    QTipoTFA_CLIENTE: TIBStringField;
    QTipoVEN_CODIGO: TIntegerField;
    QTipoTFA_MENSAJE2: TIBStringField;
    QTipoTFA_MENSAJE3: TIBStringField;
    QTipoTFA_MENSAJE1: TStringField;
    QTipoTFA_PRECIO: TIBStringField;
    QTipoCAT_CUENTA: TIBStringField;
    QTipoFPA_CODIGO: TIntegerField;
    QTipoTDO_CODIGO: TIBStringField;
    QTipoTFA_VERLIMITE: TIBStringField;
    QTipoTFA_TRAERFORMAPAGO: TStringField;
    QTipotfa_permite_abonar: TStringField;
    QTipotfa_itbis: TStringField;
    QTipotfa_imprimie_encabezado: TStringField;
    QTipotfa_rnc: TStringField;
    QTipoCashflow_Grupo: TIntegerField;
    QTipoCashflow_Subgrupo: TIntegerField;
    QTipoCashflow_Concepto: TIntegerField;
    QTipotfa_modifica_nombre: TStringField;
    QTipotip_codigo: TIntegerField;
    DS_1: TDataSource;
    QSelectIncrem1: TADOQuery;
    edt1: TEdit;
    Panel7: TPanel;
    dblExistencia: TDBText;
    dbtxtUBICACION: TDBText;
    dsMsnExistencia: TDataSource;
    QMsnExistencia: TADOQuery;
    QMsnExistenciaDISPONIBLE2: TStringField;
    QMsnExistenciaUBICACION: TStringField;
    QDetalleDET_DESCMAX: TFloatField;
    lstLista: TListBox;
    btnProyecto: TSpeedButton;
    QCotizaciondep_codigo: TIntegerField;
    DBGrid_1: TDBGrid;
    chkMail: TCheckBox;
    pnCorreo: TPanel;
    mmo1: TMemo;
    qEjec: TADOQuery;
    lblLbTotalUS: TLabel;
    EDT_COT_TOTALUS: TDBEdit;
    QCotizacionCOT_TOTALUS: TCurrencyField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QCotizacionNewRecord(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QDetallePRO_CODIGOChange(Sender: TField);
    procedure QDetallePRO_RFABRICChange(Sender: TField);
    procedure QDetallePRO_RORIGINALChange(Sender: TField);
    procedure btBuscaProdClick(Sender: TObject);
    procedure btEliminaClick(Sender: TObject);
    procedure btPrecioClick(Sender: TObject);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btVendedorClick(Sender: TObject);
    procedure QCotizacionVEN_CODIGOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure GridColEnter(Sender: TObject);
    procedure QCotizacionBeforePost(DataSet: TDataSet);
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure GridEnter(Sender: TObject);
    procedure QCotizacionCalcFields(DataSet: TDataSet);
    procedure QDetalleAfterPost(DataSet: TDataSet);
    procedure btGrabarClick(Sender: TObject);
    procedure btBuscarClick(Sender: TObject);
    procedure QDetalleBeforePost(DataSet: TDataSet);
    procedure btLimpiarClick(Sender: TObject);
    procedure btSalirClick(Sender: TObject);
    procedure btEscalasClick(Sender: TObject);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure QDetalleDET_MEDIDAChange(Sender: TField);
    procedure QDetalleNewRecord(DataSet: TDataSet);
    procedure DBEdit6Enter(Sender: TObject);
    procedure QDetalledet_margenChange(Sender: TField);
    procedure btmonedaClick(Sender: TObject);
    procedure QCotizacionmon_codigoChange(Sender: TField);
    procedure QCotizacionmon_codigoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure btCondicionClick(Sender: TObject);
    procedure QCotizacioncpa_codigoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure btnotaClick(Sender: TObject);
    procedure btnuevonumeroClick(Sender: TObject);
    procedure QDetalleAfterDelete(DataSet: TDataSet);
    procedure Nota1Click(Sender: TObject);
    procedure QDetallepro_unidad_medidaChange(Sender: TField);
    procedure QCotizacioncot_rncChange(Sender: TField);
    procedure Pantalladeproductos1Click(Sender: TObject);
    procedure Pantalladeajustedeinventario1Click(Sender: TObject);
    procedure Consultarmovimientos1Click(Sender: TObject);
    procedure DBGrid_1DblClick(Sender: TObject);
    procedure DBGrid_1KeyPress(Sender: TObject; var Key: Char);
    procedure dsDetalleDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure btnProyectoClick(Sender: TObject);
    procedure QCotizaciondep_codigoValidate(Sender: TField);
    procedure QCotizacionAfterOpen(DataSet: TDataSet);
  private
    vl_monto : Double;
    DesactivarCargaProductos, vModProducto :Boolean;
    vl_dest, vl_tipoclie, vl_clienteN, vl_asunto, vl_factnum, vl_adjunto1, vl_adjunto2, vl_cuerpo :String;
    procedure EnvioMail(Reporte: TQuickRep; Tipo: String);
    { Private declarations }
  public
    { Public declarations }
    Total, Itbis : Double;
    Totaliza : Boolean;
    FactDebajoCosto : string;
    procedure totalizar;
  end;

var
  frmCotizacion: TfrmCotizacion;

implementation

uses PVENTA33, PVENTA34, RVENTA36, SIGMA01, SIGMA00, PVENTA117, RVENTA65,
  PVENTA36, RVENTA85, PVENTA15, PVENTA138, PVENTA186, StrUtils, PVENTA209,
  DateUtils, RVENTA131, RVENTA135;

{$R *.DFM}

procedure TfrmCotizacion.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmCotizacion.FormPaint(Sender: TObject);
begin
  frmCotizacion.top := 5;
  frmCotizacion.Left := 0;
end;

procedure TfrmCotizacion.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
  if key = vk_f2  then btGrabarClick(self);
  if key = vk_f3  then btLimpiarClick(self);
  if key = vk_f9  then btnuevonumeroClick(Self);
end;

procedure TfrmCotizacion.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    if (ActiveControl.classtype <> tdbgrid) and (ActiveControl.classtype <> tstringgrid) then
    begin
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    end;
  end;
end;

procedure TfrmCotizacion.QCotizacionNewRecord(DataSet: TDataSet);
var
  a : integer;
begin
  FactDebajoCosto := 'False';

  //unidades de medida
  if dm.QParametrospar_inv_unidad_medida.Value = 'True' then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select Nombre from UnidadMedida');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Open;

    if dm.QParametrosPAR_FACMEDIDA.Value <> 'True' then
    begin
      Grid.Columns[4].PickList.Clear;
      dm.Query1.DisableControls;
      while not dm.Query1.Eof do
      begin
        Grid.Columns[4].PickList.Add(dm.Query1.fieldByName('Nombre').AsString);
        dm.Query1.Next;
      end;
    end
    else
    begin
      Grid.Columns[5].PickList.Clear;
      dm.Query1.DisableControls;
      while not dm.Query1.Eof do
      begin
        Grid.Columns[5].PickList.Add(dm.Query1.fieldByName('Nombre').AsString);
        dm.Query1.Next;
      end;
    end;

    dm.Query1.EnableControls;
  end;
{20170608
  Total := 0;
  Totaliza := True;
  tVendedor.text := '';

  edCliente.Text := '';
  QCotizacioncot_nota.Value   := dm.QParametrospar_nota_cotizacion.Value;
  QCotizacionmon_codigo.Value := dm.QParametrosMON_CODIGO.Value;
  QCotizacionCOT_DESCUENTO.Value := 0;
  QCotizacionSUC_CODIGO.Value := QSucursalsuc_codigo.Value;
  QCotizacionCOT_FECHA.value  := date;
  QCotizacionCOT_ITBIS.value  := 0;
  QCotizacionCOT_STATUS.value := 'EMI';
  QCotizacionCOT_TOTAL.value  := 0;
  QCotizacionEMP_CODIGO.value := dm.vp_cia;
  QCotizacionUSU_CODIGO.value := dm.Usuario;
  QCotizacionCOT_validez.value:= dm.QParametroscot_dias_valides.Value;
    }
  Total := 0;
  Totaliza := True;
  tVendedor.text := QTipoVEN_CODIGO.AsString;

  QCotizacionCOT_NOMBRE.Value := QTipoTFA_CLIENTE.AsString;
  QCotizacioncot_nota.Value   := dm.QParametrospar_nota_cotizacion.Value;
  QCotizacionmon_codigo.Value := dm.QParametrosMON_CODIGO.Value;
  QCotizacionCOT_DESCUENTO.Value := 0;
  QCotizacionSUC_CODIGO.Value := QSucursalsuc_codigo.Value;
  QCotizacionCOT_FECHA.value  := date;
  QCotizacionCOT_ITBIS.value  := 0; //QTipotfa_itbis.value;
  QCotizacionCOT_STATUS.value := 'EMI';
  QCotizacionCOT_TOTAL.value  := 0;
  QCotizacionEMP_CODIGO.value := dm.vp_cia;
  QCotizacionUSU_CODIGO.value := dm.Usuario;
  QCotizacionCOT_validez.value:= dm.QParametroscot_dias_valides.Value;
//  QCotizacionmon_codigo.value := QTipoTMO_CODIGO.Value;
  QCotizacioncpa_codigo.value := QTipofpa_CODIGO.Value;
  QCotizacionVEN_CODIGO.value := QTipoVEN_CODIGO.Value;

  QDetalle.close;
  QDetalle.Parameters.parambyname('emp').Value    := dm.vp_cia;
  QDetalle.Parameters.parambyname('numero').Value := -1;
  QDetalle.open;
end;

procedure TfrmCotizacion.FormActivate(Sender: TObject);
begin
DBGrid_1.Top := 0;
DBGrid_1.Left := 0;
  if not QCotizacion.active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    QCotizacion.Parameters.ParamByName('emp').Value    := dm.vp_cia;
    QCotizacion.Parameters.ParamByName('numero').Value := -1;
    QCotizacion.open;
    QCotizacion.insert;
    chkMail.Checked := DM.QParametrosPar_Envio_Cotiz_Correo.Value;
  end;

vModProducto := DM.QUsuariosusu_modifica_nombreprod.Value;
end;

procedure TfrmCotizacion.FormCreate(Sender: TObject);
var
  a : integer;
begin
  //StringGrid
  QTipo.Close;
  QTipo.Open;

  for a := 0 to (Sender as TForm).ComponentCount -1 DO
  begin
    if Components[a].ClassType = tdbedit then
    begin
      if (Components[a] as tdbedit).Tag  <> 1 then
      begin
        (Components[a] as tdbedit).OnEnter := frmMain.Entra;
        (Components[a] as tdbedit).OnExit := frmMain.sale;
      end;
    end;
  end;

  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
     Grid.Columns[0].FieldName := 'PRO_CODIGO'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
     Grid.Columns[0].FieldName := 'PRO_RFABRIC'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
     Grid.Columns[0].FieldName := 'PRO_RORIGINAL';
  Grid.Columns[0].Width := 113;

  if dm.QParametrospar_visualizadesc.Value <> 'True' then
  begin
    Grid.Columns[9].Destroy;
    Grid.Columns[2].Width := Grid.Columns[2].Width + 37;
  end;

  if dm.QParametrospar_inv_unidad_medida.Value = 'True' then
  begin
    Grid.Columns[7].Destroy;
  end;

  {if dm.QParametrosPAR_FACESCALA.Value <> 'True' then
  begin
    Grid.Columns[6].Destroy;
    Grid.Columns[2].Width := Grid.Columns[2].Width + 32;
  end;}

  if dm.QParametrospar_inv_unidad_medida.Value <> 'True' then
  begin
    Grid.Columns[5].Destroy;
    Grid.Columns[2].Width := Grid.Columns[2].Width + 57;
  end;

  if dm.QParametrosPAR_FACMEDIDA.Value <> 'True' then
  begin
    Grid.Columns[4].Destroy;
    Grid.Columns[2].Width := Grid.Columns[2].Width + 37;
  end;

  if dm.QParametrospar_formato_preimpreso.Value = 'QRMateirosa' then
    lblProyecto.Caption := 'Referencia';

  //if dm.QParametrospar_formato_preimpreso.Value = 'QRThorton' then begin
  Grid.Columns[0].Width := 70;
  Grid.Columns[1].Width := Grid.Columns[1].Width +20;
  Grid.Columns[2].Width := Grid.Columns[0].Width-5;
  Grid.Columns[3].Width := Grid.Columns[0].Width-5;
  Grid.Columns[5].Width := Grid.Columns[0].Width-5;
  Grid.Columns[8].Width := Grid.Columns[0].Width-5;

 // end;
end;

procedure TfrmCotizacion.QDetallePRO_CODIGOChange(Sender: TField);
begin
  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
  begin
    if not QDetallePRO_CODIGO.isnull then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select pro_codigo, pro_nombre, pro_costo, pro_precio1,');
      dm.Query1.sql.add('pro_precio2, pro_precio3, pro_precio4,pro_servicio,');
      dm.Query1.sql.add('pro_roriginal, pro_rfabric, pro_itbis, pro_escala,');
      dm.Query1.sql.add('pro_beneficio, pro_beneficio2, pro_beneficio3, ');
      dm.Query1.sql.add('pro_beneficio4, UnidadID, pro_montoitbis');
      dm.Query1.sql.add(',pro_descmax');
      dm.Query1.sql.add('from productos');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and pro_codigo = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.parambyname('cod').Value := QDetallePRO_CODIGO.value;
      dm.Query1.open;
      if dm.Query1.RecordCount = 0 then
      begin
        MessageDlg('ESTE PRODUCTO NO ESTA REGISTRADO EN EL MAESTRO',
        mtError,[mbok],0);
        //CAMBIO REALIZADO POR JHONATTAN GOMEZ 14/02/2018
        QDetalle.Delete;
        totalizar;
        QDetalle.Append;
        Grid.SetFocus;
        Exit;
        //FIN CAMBIO REALIZADO POR JHONATTAN GOMEZ 14/02/2018
      end
      else
      begin
      QDetallePRO_RORIGINAL.value     := dm.Query1.fieldbyname('pro_roriginal').asstring;
      QDetallePRO_RFABRIC.value       := dm.Query1.fieldbyname('pro_rfabric').asstring;
      QDetallePRO_NOMBRE.value        := dm.Query1.fieldbyname('pro_nombre').asstring;
      QDetalleDET_MANEJAESCALA.Value  := dm.Query1.fieldbyname('pro_escala').asstring;
      QDetalleDET_CONITBIS.value      := dm.Query1.fieldbyname('pro_itbis').asstring;
      QDetalleDET_ITBIS.Value         := dm.Query1.fieldbyname('pro_montoitbis').Value;
      QDetallepro_servicio.Value      := dm.Query1.fieldbyname('pro_servicio').Value;




      if QDetalleDET_ITBIS.Value > 0 then
        QDetalleDET_CONITBIS.Value := 'S'
      else
        QDetalleDET_CONITBIS.Value := 'N';

      QDetalleDET_PRECIO1.Value := dm.Query1.fieldbyname('pro_precio1').AsFloat;
      QDetalleDET_PRECIO2.Value := dm.Query1.fieldbyname('pro_precio2').AsFloat;
      QDetalleDET_PRECIO3.Value := dm.Query1.fieldbyname('pro_precio3').AsFloat;
      QDetalleDET_PRECIO4.Value := dm.Query1.fieldbyname('pro_precio4').AsFloat;
      QDetalledet_costo.Value   := dm.Query1.fieldbyname('pro_costo').AsFloat;
      QDetalleUnidadID.Value := dm.Query1.fieldbyname('UnidadID').AsString;


      //Buscando escalas
      if (QDetalleDET_MANEJAESCALA.Value = 'True') and (QDetalleDET_ESCALA.IsNull) then
      begin
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select esc_escala from escalas');
        dm.Query1.SQL.Add('where emp_codigo = :emp');
        dm.Query1.SQL.Add('and pro_codigo = :pro');
        dm.Query1.SQL.Add('order by esc_secuencia');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
        dm.Query1.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
        dm.Query1.Open;
        dm.Query1.DisableControls;
        QDetalleDET_ESCALA.Value := dm.Query1.FieldByName('esc_escala').AsString;
        Grid.Columns[4].PickList.Clear;
        while not dm.Query1.Eof do
        begin
          Grid.Columns[4].PickList.Add(dm.Query1.FieldByName('esc_escala').AsString);
          dm.Query1.Next;
        end;
        dm.Query1.EnableControls;
      end;

      //Unidad
      if QDetalleDET_MEDIDA.Value = 'Und' then
        QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOUND.Value).AsFloat;

      //Empaque
      if QDetalleDET_MEDIDA.Value = 'Emp' then
        QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOEMP.Value).AsFloat;

      //buscando unidad de medida del producto
      if dm.QParametrospar_inv_unidad_medida.Value = 'True' then
      begin
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select Nombre from UnidadMedida');
        dm.Query1.SQL.Add('where emp_codigo = :emp');
        dm.Query1.SQL.Add('and UnidadID = :und');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
        dm.Query1.Parameters.ParamByName('und').Value := QDetalleUnidadID.AsString;
        dm.Query1.Open;
        if dm.Query1.RecordCount > 0 then
        begin
          QDetallepro_unidad_medida.Value := dm.Query1.FieldByName('Nombre').AsString;

          //buscando precio por unidad de medida
          QUnidades.Close;
          QUnidades.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
          QUnidades.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
          QUnidades.Parameters.ParamByName('und').Value := QDetallepro_unidad_medida.Value;
          QUnidades.Open;
          QDetalleDET_PRECIO.Value := QUnidadesPrecio.Value;
          QDetalledet_cant_unidad_medida.Value := QUnidadesCantidad.AsFloat;
        end;
      end;
    end;
    if dm.Query1.fieldbyname('pro_descmax').asfloat = 0 then
        begin
          Query1.Close;
          Query1.SQL.Clear;
          Query1.SQL.Add('select top 1 descuento from Prod_Descuentos_TipoFac');
          Query1.SQL.Add('where emp_codigo = :emp');
          Query1.SQL.Add('and pro_codigo = :pro');
          Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
          Query1.Parameters.ParamByName('pro').Value := dm.Query1.fieldbyname('pro_codigo').AsInteger;
          Query1.Open;
          if Query1.RecordCount > 0 then
          begin
            if Query1.FieldByName('descuento').AsFloat > 0 then
              QDetalleDET_DESCMAX.Value := Query1.FieldByName('descuento').AsFloat;
          end;
        end
        else
          QDetalleDET_DESCMAX.Value   := dm.Query1.fieldbyname('pro_descmax').asfloat;
          end;
  end;
  end;




procedure TfrmCotizacion.QDetallePRO_RFABRICChange(Sender: TField);
begin
  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
  begin
    if not QDetallePRO_RFABRIC.isnull then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select pro_codigo, pro_nombre, pro_costo, pro_precio1,');
      dm.Query1.sql.add('pro_precio2, pro_precio3, pro_precio4,pro_servicio,');
      dm.Query1.sql.add('pro_roriginal, pro_rfabric, pro_itbis, pro_Escala,');
      dm.Query1.sql.add('pro_beneficio, pro_beneficio2, pro_beneficio3,');
      dm.Query1.sql.add('pro_beneficio4, UnidadID, pro_montoitbis');
      //if dm.QParametrospar_preciound_m.Value = 'False' then
      dm.Query1.sql.add(',pro_descmax');
      dm.Query1.sql.add('from productos ');
      dm.Query1.sql.add('where emp_codigo = :emp ');
      dm.Query1.sql.add('and pro_rfabric = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.parambyname('cod').Value := QDetallePRO_RFABRIC.value;
      dm.Query1.open;
      if dm.Query1.RecordCount = 0 then
      begin
        MessageDlg('ESTE PRODUCTO NO ESTA REGISTRADO EN EL MAESTRO',
        mtError,[mbok],0);
        //CAMBIO REALIZADO POR JHONATTAN GOMEZ 14/02/2018
        QDetalle.Delete;
        totalizar;
        QDetalle.Append;
        Grid.SetFocus;
        Exit;
        //FIN CAMBIO REALIZADO POR JHONATTAN GOMEZ 14/02/2018
      end
      else
      begin
      QDetallePRO_CODIGO.value        := dm.Query1.fieldbyname('pro_codigo').asinteger;
      QDetallePRO_RORIGINAL.value     := dm.Query1.fieldbyname('pro_roriginal').asstring;
      QDetallePRO_NOMBRE.value        := dm.Query1.fieldbyname('pro_nombre').asstring;
      QDetalleDET_CONITBIS.value      := dm.Query1.fieldbyname('pro_itbis').asstring;
      QDetalleDET_MANEJAESCALA.Value  := dm.Query1.fieldbyname('pro_escala').asstring;
      QDetalleDET_ITBIS.Value         := dm.Query1.fieldbyname('pro_montoitbis').Value;
      QDetallepro_servicio.Value      := dm.Query1.fieldbyname('pro_servicio').Value;
      QDetalleDET_DESCMAX.Value       := dm.Query1.fieldbyname('pro_descmax').Value;

      if QDetalleDET_ITBIS.Value > 0 then
        QDetalleDET_CONITBIS.Value := 'S'
      else
        QDetalleDET_CONITBIS.Value := 'N';


      QDetalleDET_PRECIO1.Value := dm.Query1.fieldbyname('pro_precio1').AsFloat;
      QDetalleDET_PRECIO2.Value := dm.Query1.fieldbyname('pro_precio2').AsFloat;
      QDetalleDET_PRECIO3.Value := dm.Query1.fieldbyname('pro_precio3').AsFloat;
      QDetalleDET_PRECIO4.Value := dm.Query1.fieldbyname('pro_precio4').AsFloat;
      QDetalledet_costo.Value   := dm.Query1.fieldbyname('pro_costo').AsFloat;
      QDetalleUnidadID.Value := dm.Query1.fieldbyname('UnidadID').AsString;

      //Buscando escalas
      if (QDetalleDET_MANEJAESCALA.Value = 'True') and (QDetalleDET_ESCALA.IsNull) then
      begin
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select esc_escala from escalas');
        dm.Query1.SQL.Add('where emp_codigo = :emp');
        dm.Query1.SQL.Add('and pro_codigo = :pro');
        dm.Query1.SQL.Add('order by esc_secuencia');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
        dm.Query1.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
        dm.Query1.Open;
        dm.Query1.DisableControls;
        QDetalleDET_ESCALA.Value := dm.Query1.FieldByName('esc_escala').AsString;
        Grid.Columns[4].PickList.Clear;
        while not dm.Query1.Eof do
        begin
          Grid.Columns[4].PickList.Add(dm.Query1.FieldByName('esc_escala').AsString);
          dm.Query1.Next;
        end;
        dm.Query1.EnableControls;
      end;

      //Unidad
      if QDetalleDET_MEDIDA.Value = 'Und' then
        QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOUND.Value).AsFloat;

      if dm.QParametrosPAR_PRECIOUND.Value = 'Precio1' then
        QDetalledet_margen.Value := dm.Query1.fieldbyname('pro_beneficio').AsFloat
      else if dm.QParametrosPAR_PRECIOUND.Value = 'Precio2' then
        QDetalledet_margen.Value := dm.Query1.fieldbyname('pro_beneficio2').AsFloat
      else if dm.QParametrosPAR_PRECIOUND.Value = 'Precio3' then
        QDetalledet_margen.Value := dm.Query1.fieldbyname('pro_beneficio3').AsFloat
      else if dm.QParametrosPAR_PRECIOUND.Value = 'Precio4' then
        QDetalledet_margen.Value := dm.Query1.fieldbyname('pro_beneficio4').AsFloat;

      //Empaque
      if QDetalleDET_MEDIDA.Value = 'Emp' then
        QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOEMP.Value).AsFloat;

      //buscando unidad de medida del producto
      if dm.QParametrospar_inv_unidad_medida.Value = 'True' then
      begin
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select Nombre from UnidadMedida');
        dm.Query1.SQL.Add('where emp_codigo = :emp');
        dm.Query1.SQL.Add('and UnidadID = :und');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
        dm.Query1.Parameters.ParamByName('und').Value := QDetalleUnidadID.AsString;
        dm.Query1.Open;
        if dm.Query1.RecordCount > 0 then
        begin
          QDetallepro_unidad_medida.Value := dm.Query1.FieldByName('Nombre').AsString;

          //buscando precio por unidad de medida
          QUnidades.Close;
          QUnidades.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
          QUnidades.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
          QUnidades.Parameters.ParamByName('und').Value := QDetallepro_unidad_medida.Value;
          QUnidades.Open;
          QDetalleDET_PRECIO.Value := QUnidadesPrecio.Value;
          QDetalledet_cant_unidad_medida.Value := QUnidadesCantidad.AsFloat;
        end;
      end;
    end;

    end;

  end;
end;

procedure TfrmCotizacion.QDetallePRO_RORIGINALChange(Sender: TField);
begin
  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
  begin
    if not QDetallePRO_RORIGINAL.isnull then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select pro_codigo, pro_nombre, pro_costo, pro_precio1,');
      dm.Query1.sql.add('pro_precio2, pro_precio3, pro_precio4,pro_servicio,');
      dm.Query1.sql.add('pro_roriginal, pro_rfabric, pro_itbis, pro_Escala,');
      dm.Query1.sql.add('pro_beneficio, pro_beneficio2, pro_beneficio3, ');
      dm.Query1.sql.add('pro_beneficio4, UnidadID, pro_montoitbis');
      dm.Query1.SQL.Add(',pro_descmax');
      dm.Query1.sql.add('from productos ');
      dm.Query1.sql.add('where emp_codigo = :emp ');
      dm.Query1.sql.add('and pro_roriginal = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.parambyname('cod').Value := QDetallePRO_RORIGINAL.value;
      dm.Query1.open;
      if dm.Query1.RecordCount = 0 then
      begin
        MessageDlg('ESTE PRODUCTO NO ESTA REGISTRADO EN EL MAESTRO',
        mtError,[mbok],0);
        //CAMBIO REALIZADO POR JHONATTAN GOMEZ 14/02/2018
        QDetalle.Delete;
        totalizar;
        QDetalle.Append;
        Grid.SetFocus;
        Exit;
        //FIN CAMBIO REALIZADO POR JHONATTAN GOMEZ 14/02/2018
      end
      else
      begin
      QDetallePRO_CODIGO.value        := dm.Query1.fieldbyname('pro_codigo').asinteger;
      QDetallePRO_RFABRIC.value       := dm.Query1.fieldbyname('pro_rfabric').asstring;
      QDetallePRO_NOMBRE.value        := dm.Query1.fieldbyname('pro_nombre').asstring;
      QDetalleDET_CONITBIS.value      := dm.Query1.fieldbyname('pro_itbis').asstring;
      QDetalleDET_MANEJAESCALA.Value  := dm.Query1.fieldbyname('pro_escala').asstring;
      QDetalleDET_ITBIS.Value         := dm.Query1.fieldbyname('pro_montoitbis').Value;
      QDetallepro_servicio.Value      := dm.Query1.fieldbyname('pro_servicio').Value;

      if QDetalleDET_ITBIS.Value > 0 then
        QDetalleDET_CONITBIS.Value := 'S'
      else
        QDetalleDET_CONITBIS.Value := 'N';

      QDetalleDET_PRECIO1.Value := dm.Query1.fieldbyname('pro_precio1').AsFloat;
      QDetalleDET_PRECIO2.Value := dm.Query1.fieldbyname('pro_precio2').AsFloat;
      QDetalleDET_PRECIO3.Value := dm.Query1.fieldbyname('pro_precio3').AsFloat;
      QDetalleDET_PRECIO4.Value := dm.Query1.fieldbyname('pro_precio4').AsFloat;
      QDetalledet_costo.Value   := dm.Query1.fieldbyname('pro_costo').AsFloat;
      QDetalleUnidadID.Value := dm.Query1.fieldbyname('UnidadID').AsString;

      //Buscando escalas
      if (QDetalleDET_MANEJAESCALA.Value = 'True') and (QDetalleDET_ESCALA.IsNull) then
      begin
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select esc_escala from escalas');
        dm.Query1.SQL.Add('where emp_codigo = :emp');
        dm.Query1.SQL.Add('and pro_codigo = :pro');
        dm.Query1.SQL.Add('order by esc_secuencia');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
        dm.Query1.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
        dm.Query1.Open;
        dm.Query1.DisableControls;
        QDetalleDET_ESCALA.Value := dm.Query1.FieldByName('esc_escala').AsString;
        Grid.Columns[4].PickList.Clear;
        while not dm.Query1.Eof do
        begin
          Grid.Columns[4].PickList.Add(dm.Query1.FieldByName('esc_escala').AsString);
          dm.Query1.Next;
        end;
        dm.Query1.EnableControls;
      end;

      //Unidad
      if QDetalleDET_MEDIDA.Value = 'Und' then
        QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOUND.Value).AsFloat;

      {if dm.QParametrosPAR_PRECIOUND.Value = 'Precio1' then
        QDetalledet_margen.Value := dm.Query1.fieldbyname('pro_beneficio').AsFloat
      else if dm.QParametrosPAR_PRECIOUND.Value = 'Precio2' then
        QDetalledet_margen.Value := dm.Query1.fieldbyname('pro_beneficio2').AsFloat
      else if dm.QParametrosPAR_PRECIOUND.Value = 'Precio3' then
        QDetalledet_margen.Value := dm.Query1.fieldbyname('pro_beneficio3').AsFloat
      else if dm.QParametrosPAR_PRECIOUND.Value = 'Precio4' then
        QDetalledet_margen.Value := dm.Query1.fieldbyname('pro_beneficio4').AsFloat;}

      //Empaque
      if QDetalleDET_MEDIDA.Value = 'Emp' then
        QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOEMP.Value).AsFloat;

      //buscando unidad de medida del producto
      if dm.QParametrospar_inv_unidad_medida.Value = 'True' then
      begin
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select Nombre from UnidadMedida');
        dm.Query1.SQL.Add('where emp_codigo = :emp');
        dm.Query1.SQL.Add('and UnidadID = :und');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
        dm.Query1.Parameters.ParamByName('und').Value := QDetalleUnidadID.AsString;
        dm.Query1.Open;
        if dm.Query1.RecordCount > 0 then
        begin
          QDetallepro_unidad_medida.Value := dm.Query1.FieldByName('Nombre').AsString;

          //buscando precio por unidad de medida
          QUnidades.Close;
          QUnidades.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
          QUnidades.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
          QUnidades.Parameters.ParamByName('und').Value := QDetallepro_unidad_medida.Value;
          QUnidades.Open;
          QDetalleDET_PRECIO.Value := QUnidadesPrecio.Value;
          QDetalledet_cant_unidad_medida.Value := QUnidadesCantidad.AsFloat;
        end;
      end;
    end;

    if dm.Query1.fieldbyname('pro_descmax').asfloat = 0 then
        begin
          Query1.Close;
          Query1.SQL.Clear;
          Query1.SQL.Add('select top 1 descuento from Prod_Descuentos_TipoFac');
          Query1.SQL.Add('where emp_codigo = :emp');
          Query1.SQL.Add('and pro_codigo = :pro');
          Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
          Query1.Parameters.ParamByName('pro').Value := dm.Query1.fieldbyname('pro_codigo').AsInteger;
          Query1.Open;
          if Query1.RecordCount > 0 then
          begin
            if Query1.FieldByName('descuento').AsFloat > 0 then
              QDetalleDET_DESCMAX.Value := Query1.FieldByName('descuento').AsFloat;
          end;
        end
        else
          QDetalleDET_DESCMAX.Value   := dm.Query1.fieldbyname('pro_descmax').asfloat;
          end;
  end;
  end;


procedure TfrmCotizacion.btBuscaProdClick(Sender: TObject);
begin
IF DM.QParametrospar_busqueda_dejar_ultimo.Value = 'True' then
  dm.UltProducto := QDetallePRO_CODIGO.Text;

  application.createform(tfrmBuscaProducto, frmBuscaProducto);
  frmBuscaProducto.showmodal;
  if frmBuscaProducto.seleccion = 1 then
  begin
    QDetalle.Edit;
    if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
       QDetallePRO_CODIGO.value := frmBuscaProducto.QProductosPRO_CODIGO.value
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
       QDetallePRO_RFABRIC.value := frmBuscaProducto.QProductosPRO_RFABRIC.value
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
       QDetallePRO_RORIGINAL.value := frmBuscaProducto.QProductosPRO_RORIGINAL.value;
  end;
  frmBuscaProducto.release;
  Grid.setfocus;
end;

procedure TfrmCotizacion.btEliminaClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR LA FILA?',mtconfirmation,[mbyes,mbno],0) = mryes then
    QDetalle.Delete;
  Grid.setfocus;
end;

procedure TfrmCotizacion.btPrecioClick(Sender: TObject);
begin
  if not QDetallePRO_CODIGO.isnull then
  begin
    application.createform(tfrmPrecios, frmPrecios);
    frmPrecios.edProducto.text := QDetallePRO_NOMBRE.value;
    if dm.QParametrospar_inv_unidad_medida.Value <> 'True' then
    begin
      dm.query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select pro_precio1, pro_precio2,');
      dm.Query1.sql.add('pro_precio3, pro_precio4 ');
      dm.Query1.sql.add('from productos ');
      dm.Query1.sql.add('where emp_codigo = :emp ');
      dm.Query1.sql.add('and pro_Codigo = :prod');
      dm.query1.Parameters.parambyname('emp').Value  := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.query1.Parameters.parambyname('prod').Value := QDetallePRO_CODIGO.value;
      dm.query1.open;
      frmPrecios.edPrecio1.text  := format('%n',[dm.Query1.fieldbyname('pro_precio1').asfloat]);
      frmPrecios.edPrecio2.text  := format('%n',[dm.Query1.fieldbyname('pro_precio2').asfloat]);
      frmPrecios.edPrecio3.text  := format('%n',[dm.Query1.fieldbyname('pro_precio3').asfloat]);
      frmPrecios.edPrecio4.text  := format('%n',[dm.Query1.fieldbyname('pro_precio4').asfloat]);
      frmPrecios.showmodal;
      if frmPrecios.Precio <> 'null' then
      begin
        QDetalle.edit;
        QDetalleDET_PRECIO.value := dm.Query1.fieldbyname(frmPrecios.Precio).asfloat;
        QDetalle.post;
      end;
    end
    else
    begin
      frmPrecios.TabSheet1.Destroy;
      frmPrecios.QProductos.Parameters.ParamByName('prod').Value := QDetallePRO_CODIGO.Value;
      frmPrecios.QProductos.Open;

      frmPrecios.QUnidades.Close;
      frmPrecios.QUnidades.Parameters.ParamByName('emp_codigo').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      frmPrecios.QUnidades.Parameters.ParamByName('pro_codigo').Value := QDetallePRO_CODIGO.Value;
      frmPrecios.QUnidades.Parameters.ParamByName('uni').Value        := QDetalleUnidadID.Value;
      frmPrecios.QUnidades.Open;

      frmPrecios.ActiveControl := frmPrecios.gunidades; 
      frmPrecios.ShowModal;
      if frmPrecios.acepto = 1 then
      begin
        QDetalle.edit;
        if QCotizacioncpa_codigo.IsNull then
          QDetalleDET_PRECIO.value := frmPrecios.QUnidadesPrecio.Value
        else
          QDetalleDET_PRECIO.value := frmPrecios.QUnidadesCredito.Value;
        QDetalle.post;
      end;
    end;
    frmPrecios.Release;
  end;
  Grid.setfocus;
end;

procedure TfrmCotizacion.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f4 then btBuscaProdClick(self);
  if key = vk_f6 then btEliminaClick(self);
  if key = vk_f7 then btPrecioClick(Self);
  if (key = vk_f8) and
  (QDetalleDET_MANEJAESCALA.Value = 'True') then btEscalasClick(Self);

  if dm.QParametrospar_busq_incrementada.Value = True then begin
if DBGrid_1.Visible = True then begin
  if key = vk_down then begin
  QDetalle.Delete;
  DBGrid_1.SetFocus;
  DS_1.DataSet.Next;
  end;
  if key = vk_up then begin
  QDetalle.Delete;
  DBGrid_1.SetFocus;
  DS_1.DataSet.Prior;
  end;
  if key = vk_return then begin
  DS_1.DataSet.First;
  DBGrid_1DblClick(Sender);
  end;

  end;
  end;
end;

procedure TfrmCotizacion.btVendedorClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.clear;
  Search.Query.add('select ven_nombre, ven_codigo');
  Search.Query.add('from vendedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'ven_Codigo';
  Search.Title := 'Listado de Vendedores';
  if Search.execute then
  begin
    QCotizacionVEN_CODIGO.value := strtoint(Search.ValueField);
    dbVendedor.setfocus;
  end;
end;

procedure TfrmCotizacion.QCotizacionVEN_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QCotizacionVEN_CODIGO.isnull then
  begin
    Text := inttostr(QCotizacionVEN_CODIGO.value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select ven_nombre from vendedores');
    dm.Query1.sql.add('where emp_Codigo = :emp');
    dm.Query1.sql.add('and ven_Codigo = :ven');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('ven').Value := QCotizacionVEN_CODIGO.value;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      tVendedor.text := ''
    else
      tVendedor.text := dm.Query1.fieldbyname('ven_nombre').asstring;
  end
  else
    tVendedor.text := '';
end;

procedure TfrmCotizacion.edClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edCliente.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select cli_codigo, cli_nombre, cli_referencia, cli_contacto,');
      dm.Query1.sql.add('cli_direccion, cli_localidad, cli_telefono, cli_fax, cli_rnc, cli_cedula, cli_factura_debajo_costo');
      dm.Query1.sql.add('from clientes');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and cli_Status = '+#39+'ACT'+#39);
      if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
      begin
        dm.Query1.sql.add('and cli_codigo = :cli');
        dm.Query1.Parameters.parambyname('cli').Value := strtoint(trim(edCliente.text));
      end
      else
      begin
        dm.Query1.sql.add('and cli_referencia = :cli');
        dm.Query1.Parameters.parambyname('cli').Value := trim(edCliente.text)
      end;
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.open;
      if dm.Query1.fieldbyname('cli_cedula').asstring <> '' then
        QCotizacioncot_rnc.Value      := dm.Query1.fieldbyname('cli_cedula').asstring
      else if dm.Query1.fieldbyname('cli_rnc').asstring <> '' then
        QCotizacioncot_rnc.Value      := dm.Query1.fieldbyname('cli_rnc').asstring;

      FactDebajoCosto  := dm.Query1.fieldbyname('cli_factura_debajo_costo').asstring;
      QCotizacionCOT_NOMBRE.value     := dm.Query1.fieldbyname('cli_nombre').asstring;
      QCotizacionCLI_CODIGO.value     := dm.Query1.fieldbyname('cli_Codigo').asinteger;
      QCotizacionCLI_REFERENCIA.value := dm.Query1.fieldbyname('cli_referencia').asstring;
      QCotizacionCOT_DIRECCION.value  := dm.Query1.fieldbyname('cli_direccion').asstring;
      QCotizacionCOT_FAX.value        := dm.Query1.fieldbyname('cli_fax').asstring;
      QCotizacionCOT_LOCALIDAD.value  := dm.Query1.fieldbyname('cli_localidad').asstring;
      QCotizacionCOT_TELEFONO.value   := dm.Query1.fieldbyname('cli_telefono').asstring;
      QCotizacioncot_contacto.Value   := dm.Query1.fieldbyname('cli_contacto').asstring;
    end;
  end;
end;

procedure TfrmCotizacion.SpeedButton2Click(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('RNC');
  Search.AliasFields.Add('Código');
  Search.Query.clear;
  if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
  begin
    Search.Query.add('select substring(cli_nombre,1,50) as cli_nombre, cli_rnc, cli_codigo');
    Search.ResultField := 'cli_codigo';
  end
  else
  begin
    Search.Query.add('select substring(cli_nombre,1,50) as cli_nombre, cli_rnc, cli_referencia');
    Search.ResultField := 'cli_referencia';
  end;
  Search.Query.add('from clientes');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.Query.add('and cli_Status = '+#39+'ACT'+#39);
  Search.Title := 'Listado de Clientes';
  if Search.execute then
  begin
    edCliente.text := search.valuefield;
    edCliente.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cli_codigo, cli_nombre, cli_referencia, cli_contacto,');
    dm.Query1.sql.add('cli_direccion, cli_localidad, cli_telefono, cli_fax, cli_rnc, cli_cedula, cli_factura_debajo_costo');
    dm.Query1.sql.add('from clientes');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and cli_Status = '+#39+'ACT'+#39);
    if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
    begin
      dm.Query1.sql.add('and cli_codigo = :cli');
      dm.Query1.Parameters.parambyname('cli').Value := strtoint(search.valuefield);
    end
    else
    begin
      dm.Query1.sql.add('and cli_referencia = :cli');
      dm.Query1.Parameters.parambyname('cli').Value := search.valuefield;
    end;
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.open;
    if dm.Query1.fieldbyname('cli_cedula').asstring <> '' then
      QCotizacioncot_rnc.Value      := dm.Query1.fieldbyname('cli_cedula').asstring
    else if dm.Query1.fieldbyname('cli_rnc').asstring <> '' then
      QCotizacioncot_rnc.Value      := dm.Query1.fieldbyname('cli_rnc').asstring;

    FactDebajoCosto  := dm.Query1.fieldbyname('cli_factura_debajo_costo').asstring;  
    QCotizacionCOT_NOMBRE.value     := dm.Query1.fieldbyname('cli_nombre').asstring;
    QCotizacionCLI_CODIGO.value     := dm.Query1.fieldbyname('cli_Codigo').asinteger;
    QCotizacionCLI_REFERENCIA.value := dm.Query1.fieldbyname('cli_referencia').asstring;
    QCotizacionCOT_DIRECCION.value  := dm.Query1.fieldbyname('cli_direccion').asstring;
    QCotizacionCOT_FAX.value        := dm.Query1.fieldbyname('cli_fax').asstring;
    QCotizacionCOT_LOCALIDAD.value  := dm.Query1.fieldbyname('cli_localidad').asstring;
    QCotizacionCOT_TELEFONO.value   := dm.Query1.fieldbyname('cli_telefono').asstring;
    QCotizacioncot_contacto.Value   := dm.Query1.fieldbyname('cli_contacto').asstring;
    edCliente.setfocus;
  end;
end;

procedure TfrmCotizacion.GridColEnter(Sender: TObject);
begin
  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'CALCITBIS' then
    Grid.SelectedIndex := Grid.SelectedIndex + 1;

  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_ESCALA' then
    Grid.SelectedIndex := Grid.SelectedIndex + 1;

  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'PRECIOITBIS' then
    Grid.SelectedIndex := Grid.SelectedIndex + 1;

  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'VALOR' then
  begin
    Grid.SelectedIndex := 0;
    QDetalle.Append;
  end;

if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'PRO_NOMBRE' then BEGIN
  if vModProducto = True then
Grid.Columns[Grid.selectedindex].ReadOnly := False else
Grid.Columns[Grid.selectedindex].ReadOnly := True;
end;

end;

procedure TfrmCotizacion.QCotizacionBeforePost(DataSet: TDataSet);
begin
  if QCotizacion.State = dsInsert then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select isnull(max(cot_numero),0) as maximo');
    dm.Query1.sql.add('from cotizacion');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.open;
    QCotizacionCOT_NUMERO.value := dm.Query1.fieldbyname('maximo').asinteger + 1;
  end;

end;

procedure TfrmCotizacion.QDetalleCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis, vPrec, vDesc, vCant : Double;
  a : integer;
begin
  if QDetalleDET_ITBIS.asfloat > 0 then
  begin
    NumItbis := RoundTo((QDetalleDET_ITBIS.asfloat/100)+1, -2);
    if dm.QParametrospar_itbisincluido.Value = 'True' then
    begin
      Venta := (QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value)/NumItbis;
      QDetallePrecioItbis.value := RoundTo((QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value)/NumItbis, -2);
      QDetalleCalcDesc.value    := RoundTo(((QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value)/NumItbis * QDetalleDET_DESCUENTO.value)/100, -2);
      QDetalleCalcItbis.value   := RoundTo(((((QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value)/NumItbis) - QDetalleCalcDesc.value) * QDetalleDET_ITBIS.value) / 100, -2);
      QDetalleValor.value     := (QDetallePrecioItbis.value - QDetalleCalcDesc.value + QDetalleCalcItbis.value);
      QDetalleCalcItbis.value := RoundTo(QDetalleCalcItbis.value, -2);
    end
    else
    begin
      Venta := QDetalleDET_PRECIO.value*QDetalleDET_CANTIDAD.Value;
      QDetallePrecioItbis.value := Venta;
      QDetalleCalcDesc.value    := RoundTo(((QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value) * QDetalleDET_DESCUENTO.value)/100, -4);
      QDetalleCalcItbis.value := RoundTo((((QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value) - QDetalleCalcDesc.value)* QDetalleDET_ITBIS.value) / 100, -2);
      QDetalleCalcItbis.value := RoundTo(QDetalleCalcItbis.value, -2);
      QDetalleValor.value     := (QDetallePrecioItbis.value - QDetalleCalcDesc.value + QDetalleCalcItbis.value);
    end;
  end
  else
  begin
    Venta := QDetalleDET_PRECIO.value * QDetalleDET_CANTIDAD.Value;
    QDetalleCalcDesc.value    := (Venta * QDetalleDET_DESCUENTO.value)/100;
    QDetallePrecioItbis.value := Venta;
    QDetalleCalcItbis.value   := 0;
    QDetalleValor.value       := (Venta-QDetalleCalcDesc.value);
  end;
  QDetallePrecioTasa.Value := QDetalleDET_PRECIO.Value * QCotizacioncot_Tasa.Value;
end;

procedure TfrmCotizacion.GridEnter(Sender: TObject);
begin
  Grid.SelectedIndex := 0;
end;

procedure TfrmCotizacion.totalizar;
var
  Puntero : TBookmark;
  TItbis, TDesc, grabado : Double;
begin
  if Totaliza = true then
  begin
    Puntero := QDetalle.GetBookmark;
    QDetalle.disablecontrols;
    QDetalle.first;
    Total  := 0;
    TItbis := 0;
    TDesc  := 0;
    grabado := 0;
    while not QDetalle.eof do
    begin
      Total  := Total  + QDetallePrecioItbis.value;
      TDesc  := TDesc  + QDetalleCalcDesc.value;
      TItbis := TItbis + QDetalleCalcItbis.value;
      if QDetalleDET_CONITBIS.Value = 'S' then
        grabado := grabado + (QDetallePrecioItbis.value-QDetalleCalcDesc.Value);
      QDetalle.next;
    end;
    QCotizacion.Edit;
    QCotizacionCOT_DESCUENTO.Value := TDesc;
    QCotizacionCOT_ITBIS.value     := RoundTo(titbis, -2);
    QCotizacionCOT_TOTAL.value     := (Total-TDesc)+QCotizacionCOT_ITBIS.value;

    QDetalle.GotoBookmark(Puntero);
    QDetalle.enablecontrols;
  end;
end;

procedure TfrmCotizacion.QCotizacionCalcFields(DataSet: TDataSet);
begin
  QCotizacionSubTotal.value := Total;

IF QCotizacioncot_Tasa.Value > 1 THEN BEGIN
QCotizacioncot_TOTALUS.Value := QCotizacioncot_TOTAL.Value / QCotizacioncot_TASA.Value;
lblLbTotalUS.Visible :=  True;
EDT_COT_TOTALUS.Visible :=  True;
end
else
begin
QCotizacioncot_TOTALUS.Value := 0;
lblLbTotalUS.Visible :=  False;
EDT_COT_TOTALUS.Visible :=  False;
end;
end;

procedure TfrmCotizacion.QDetalleAfterPost(DataSet: TDataSet);
begin
  Totalizar;
end;

procedure TfrmCotizacion.btGrabarClick(Sender: TObject);
var
  a : integer;
  aPDF : TQRPDFDocumentFilter;
begin
if QCotizacionCOT_TOTAL.Value > 0 then
  begin
    if trim(DBEdit7.text) = '' then
    begin
      showmessage('DEBE ESPECIFICAR EL NOMBRE DEL CLIENTE');
      DBEdit7.setfocus;
    end
    else if QCotizacionVEN_CODIGO.IsNull then
    begin
      showmessage('DEBE ESPECIFICAR EL VENDEDOR');
      dbVendedor.setfocus;
    end
    else
    if ((DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados' ) and
    (QCotizacionCOT_TOTAL.Value > vl_monto)) then BEGIN
      ShowMessage('El monto de esta cotizacion supera el monto asignado del Proyecto');
      Grid.SetFocus;
      Exit;
    end
    else
    BEGIN
        Totaliza := False;
      QCotizacion.post;
      QCotizacion.UpdateBatch;

      QDetalle.disablecontrols;
      QDetalle.first;
      a := 0;
      while not QDetalle.eof do
      begin
        a := a + 1;
        QDetalle.edit;
        QDetalleDET_SECUENCIA.value := a;
        QDetalleCOT_NUMERO.value    := QCotizacionCOT_NUMERO.value;
        QDetalleEMP_CODIGO.value    := dm.vp_cia;
        QDetalle.post;
        QDetalle.next;
      end;

      QDetalle.enablecontrols;
      QDetalle.UpdateBatch;

      if MessageDlg('SE HA GENERADO LA COTIZACION NO. '+IntToStr(QCotizacionCOT_NUMERO.Value)+
      ', DESEA IMPRIMIRLA?',mtConfirmation,[mbyes,mbno],0) = mryes then
      begin
        if dm.QParametrospar_fac_preimpresa.Value = 'True' then
        begin
          if dm.QParametrospar_formato_preimpreso.Value = 'QRMSConsulting' then
          begin
            application.CreateForm(tRCotizacionPreimpresa, RCotizacionPreimpresa);
            RCotizacionPreimpresa.QCotizacion.Parameters.ParamByName('numero').Value := QCotizacionCOT_NUMERO.Value;
            RCotizacionPreimpresa.QCotizacion.Open;
            RCotizacionPreimpresa.QDetalle.Open;
            RCotizacionPreimpresa.QRMSConsulting.PrinterSetup;
            RCotizacionPreimpresa.QRMSConsulting.Preview;
            RCotizacionPreimpresa.Release;
          end
          else if dm.QParametrospar_formato_preimpreso.Value = 'QRThorton' then
          begin
            application.CreateForm(tRCotizacionPreimpresa, RCotizacionPreimpresa);
            RCotizacionPreimpresa.QCotizacion.Parameters.ParamByName('numero').Value := QCotizacionCOT_NUMERO.Value;
            RCotizacionPreimpresa.QCotizacion.Open;
            RCotizacionPreimpresa.QDetalle.Open;
            if ckingles.Checked then
               RCotizacionPreimpresa.idioma := 'IN';

            RCotizacionPreimpresa.QRTHorton.PrinterSetup;
            RCotizacionPreimpresa.QRTHorton.Preview;
            RCotizacionPreimpresa.Release;
          end
          else if dm.QParametrospar_formato_preimpreso.Value = 'QRBelkis' then
          begin
            application.CreateForm(tRCotizacionPreimpresa, RCotizacionPreimpresa);
            RCotizacionPreimpresa.QCotizacion.Parameters.ParamByName('numero').Value := QCotizacionCOT_NUMERO.Value;
            RCotizacionPreimpresa.QCotizacion.Open;
            RCotizacionPreimpresa.QDetalle.Open;
            RCotizacionPreimpresa.QRBelkis.PrinterSetup;
            RCotizacionPreimpresa.QRBelkis.Preview;
            RCotizacionPreimpresa.Release;
          end
           else
          if dm.QParametrospar_formato_preimpreso.Value = 'QRMateirosa' then
          begin
            application.CreateForm(tRCotizacionPreimpresa, RCotizacionPreimpresa);
            RCotizacionPreimpresa.QCotizacion.Parameters.ParamByName('numero').Value := QCotizacionCOT_NUMERO.Value;
            RCotizacionPreimpresa.QCotizacion.Open;
            RCotizacionPreimpresa.QDetalle.Open;
            RCotizacionPreimpresa.QRMateirosa.PrinterSetup;
            RCotizacionPreimpresa.QRMateirosa.Preview;
            RCotizacionPreimpresa.Release;
          end
          else
          if dm.QParametrospar_formato_preimpreso.Value = 'FUNDGRUBEL' then
          begin
          Application.CreateForm(tRCotizacionFUNDGRUBEL, RCotizacionFUNDGRUBEL);
          RCotizacionFUNDGRUBEL.QCotizacion.Parameters.ParamByName('numero').Value := QCotizacionCOT_NUMERO.Value;
          RCotizacionFUNDGRUBEL.QCotizacion.Open;
          RCotizacionFUNDGRUBEL.QDetalle.Open;
          RCotizacionFUNDGRUBEL.lbEmp4.Enabled := False;
          RCotizacionFUNDGRUBEL.lbEmp5.Enabled := False;
          RCotizacionFUNDGRUBEL.lbEmp6.Enabled := False;
          RCotizacionFUNDGRUBEL.lbEmp7.Enabled := False;
          RCotizacionFUNDGRUBEL.lbEmp8.Enabled := False;
          RCotizacionFUNDGRUBEL.lbEmp9.Enabled := False;
          RCotizacionFUNDGRUBEL.PrinterSetup;
          RCotizacionFUNDGRUBEL.Preview;
          RCotizacionFUNDGRUBEL.Destroy;
          end
          ELSE
          if dm.QParametrospar_formato_preimpreso.Value = 'Caceres&Equipos' then
          begin
          application.createform(TRCotizacionCaceresEquipos, RCotizacionCaceresEquipos);
          RCotizacionCaceresEquipos.QCotizacion.Close;
          RCotizacionCaceresEquipos.QCotizacion.Parameters.ParamByName('emp').Value    := dm.vp_cia;
          RCotizacionCaceresEquipos.QCotizacion.Parameters.ParamByName('num').Value := QCotizacionCOT_NUMERO.value;
          RCotizacionCaceresEquipos.QCotizacion.Parameters.ParamByName('suc').Value    := QCotizacionSUC_CODIGO.Value;
          RCotizacionCaceresEquipos.QCotizacion.open;
          RCotizacionCaceresEquipos.QDetalle.Close;
          RCotizacionCaceresEquipos.QDetalle.open;
          RCotizacionCaceresEquipos.PrinterSetup;
          if dm.QParametrospar_domicilio.Value = 'True' then
          begin
          a := 1;
          while a <= dm.QParametrospar_copias_domicilio.Value do
          begin
          RCotizacionCaceresEquipos.print;
          RCotizacionCaceresEquipos.Destroy;
          a := a + 1;
          end;
          end
          else begin
          RCotizacionCaceresEquipos.print;
          RCotizacionCaceresEquipos.Destroy;
          end;
          end
          else
          begin
            if dm.QParametrosPAR_FORMATOCOT.Value = 2 then
            begin
              Application.CreateForm(tRCotizacion, RCotizacion);
              RCotizacion.QCotizacion.Parameters.ParamByName('numero').Value := QCotizacionCOT_NUMERO.Value;
              RCotizacion.QCotizacion.Open;
              RCotizacion.QDetalle.Open;
              RCotizacion.Imprime := true;
              if Trim(dm.QParametrospar_imprime_logo.Value) = 'True' then
                RCotizacion.Imprime := false
              else if MessageDLG('DESEA IMPRIMIR EL ENCABEZADO?', mtConfirmation, [mbyes,mbno],0) = mrno then
              begin
                RCotizacion.Imprime := false;
                RCotizacion.lbEmp1.Enabled := False;
                RCotizacion.lbEmp2.Enabled := False;
                RCotizacion.lbEmp3.Enabled := False;
                RCotizacion.lbEmp4.Enabled := False;
                RCotizacion.lbEmp5.Enabled := False;
                RCotizacion.lbEmp6.Enabled := False;
                RCotizacion.lbEmp7.Enabled := False;
                RCotizacion.lbEmp8.Enabled := False;
                RCotizacion.lbEmp9.Enabled := False;
              end;
              RCotizacion.PrinterSetup;
              RCotizacion.Preview;
              RCotizacion.Destroy;
            end
            else
            begin
              Application.CreateForm(tRCotizacionElegante, RCotizacionElegante);
              RCotizacionElegante.QCotizacion.Parameters.ParamByName('numero').Value := QCotizacionCOT_NUMERO.Value;
              RCotizacionElegante.QCotizacion.Open;
              RCotizacionElegante.QDetalle.Open;
              RCotizacionElegante.PrinterSetup;
              RCotizacionElegante.Preview;
              RCotizacionElegante.Destroy;
            end;
          end;
        end
        else
        if dm.QParametrosPAR_FORMATOCOT.Value = 2 then
        begin
          Application.CreateForm(tRCotizacion, RCotizacion);
          RCotizacion.QCotizacion.Close;
          RCotizacion.QCotizacion.Parameters.ParamByName('numero').Value := QCotizacionCOT_NUMERO.Value;
          RCotizacion.QCotizacion.Open;
          RCotizacion.QDetalle.Open;
          RCotizacion.Imprime := true;
          if Trim(dm.QParametrospar_imprime_logo.Value) = 'True' then
            RCotizacion.Imprime := false
          else if MessageDLG('DESEA IMPRIMIR EL ENCABEZADO?', mtConfirmation, [mbyes,mbno],0) = mrno then
          begin
            RCotizacion.Imprime := false;
            RCotizacion.lbEmp1.Enabled := False;
            RCotizacion.lbEmp2.Enabled := False;
            RCotizacion.lbEmp3.Enabled := False;
            RCotizacion.lbEmp4.Enabled := False;
            RCotizacion.lbEmp5.Enabled := False;
            RCotizacion.lbEmp6.Enabled := False;
            RCotizacion.lbEmp7.Enabled := False;
            RCotizacion.lbEmp8.Enabled := False;
            RCotizacion.lbEmp9.Enabled := False;
          end;
          RCotizacion.PrinterSetup;
          RCotizacion.Preview;
          RCotizacion.Destroy;
        end
        else
        begin
          Application.CreateForm(tRCotizacionElegante, RCotizacionElegante);
          RCotizacionElegante.QCotizacion.Parameters.ParamByName('numero').Value := QCotizacionCOT_NUMERO.Value;
          RCotizacionElegante.QCotizacion.Open;
          RCotizacionElegante.QDetalle.Open;
          RCotizacionElegante.PrinterSetup;
          RCotizacionElegante.Preview;
          RCotizacionElegante.Destroy;
        end;
      end;

           if chkMail.Checked then begin
            pnCorreo.Visible := True;
            vl_adjunto1 := '.\Cotizacion_No_'+vl_factnum+'.PDF';
            vl_factnum := QCotizacionCOT_NUMERO.Text;
            if dm.QParametrospar_fac_preimpresa.Value = 'True' then
            begin
            if dm.QParametrospar_formato_preimpreso.Value = 'QRMSConsulting' then
            begin
            application.CreateForm(tRCotizacionPreimpresa, RCotizacionPreimpresa);
            RCotizacionPreimpresa.QCotizacion.Parameters.ParamByName('numero').Value := QCotizacionCOT_NUMERO.Value;
            RCotizacionPreimpresa.QCotizacion.Open;
            RCotizacionPreimpresa.QDetalle.Open;
            aPDF := TQRPDFDocumentFilter.Create(vl_adjunto1);
            aPDF.FontHandling := fhAutoEmbed;
            RCotizacionPreimpresa.QRMSConsulting.ExportToFilter(aPDF);
            //RCotizacionPreimpresa.QRMSConsulting.ExportToFilter(TQRPDFDocumentFilter[.Create(vl_adjunto1));
            EnvioMail(RCotizacionPreimpresa.QRMSConsulting,'Cot');
          end
          else if dm.QParametrospar_formato_preimpreso.Value = 'QRThorton' then
          begin
            application.CreateForm(tRCotizacionPreimpresa, RCotizacionPreimpresa);
            RCotizacionPreimpresa.QCotizacion.Parameters.ParamByName('numero').Value := QCotizacionCOT_NUMERO.Value;
            RCotizacionPreimpresa.QCotizacion.Open;
            RCotizacionPreimpresa.QDetalle.Open;
            aPDF := TQRPDFDocumentFilter.Create(vl_adjunto1);
            aPDF.FontHandling := fhAutoEmbed;
            RCotizacionPreimpresa.QRTHorton.ExportToFilter(aPDF);
            //RCotizacionPreimpresa.QRTHorton.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
            EnvioMail(RCotizacionPreimpresa.QRTHorton,'Cot');
          end
          else if dm.QParametrospar_formato_preimpreso.Value = 'QRBelkis' then
          begin
            application.CreateForm(tRCotizacionPreimpresa, RCotizacionPreimpresa);
            RCotizacionPreimpresa.QCotizacion.Parameters.ParamByName('numero').Value := QCotizacionCOT_NUMERO.Value;
            RCotizacionPreimpresa.QCotizacion.Open;
            RCotizacionPreimpresa.QDetalle.Open;
            aPDF := TQRPDFDocumentFilter.Create(vl_adjunto1);
            aPDF.FontHandling := fhAutoEmbed;
            RCotizacionPreimpresa.QRBelkis.ExportToFilter(aPDF);
            //RCotizacionPreimpresa.QRBelkis.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
            EnvioMail(RCotizacionPreimpresa.QRBelkis,'Cot');
          end
           else
          if dm.QParametrospar_formato_preimpreso.Value = 'QRMateirosa' then
          begin
            application.CreateForm(tRCotizacionPreimpresa, RCotizacionPreimpresa);
            RCotizacionPreimpresa.QCotizacion.Parameters.ParamByName('numero').Value := QCotizacionCOT_NUMERO.Value;
            RCotizacionPreimpresa.QCotizacion.Open;
            RCotizacionPreimpresa.QDetalle.Open;
            aPDF := TQRPDFDocumentFilter.Create(vl_adjunto1);
            aPDF.FontHandling := fhAutoEmbed;
            RCotizacionPreimpresa.QRMateirosa.ExportToFilter(aPDF);
            //RCotizacionPreimpresa.QRMateirosa.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
            EnvioMail(RCotizacionPreimpresa.QRMateirosa,'Cot');
          end
          else
          begin
            if dm.QParametrosPAR_FORMATOCOT.Value = 2 then
            begin
              Application.CreateForm(tRCotizacion, RCotizacion);
              RCotizacion.Imprime := True;
              RCotizacion.lbEmp1.Enabled := True;
              RCotizacion.lbEmp2.Enabled := True;
              RCotizacion.lbEmp3.Enabled := True;
              RCotizacion.lbEmp4.Enabled := True;
              RCotizacion.lbEmp5.Enabled := True;
              RCotizacion.lbEmp6.Enabled := True;
              RCotizacion.lbEmp7.Enabled := True;
              RCotizacion.lbEmp8.Enabled := True;
              RCotizacion.lbEmp9.Enabled := True;
              RCotizacion.QCotizacion.Parameters.ParamByName('numero').Value := QCotizacionCOT_NUMERO.Value;
              RCotizacion.QCotizacion.Open;
              RCotizacion.QDetalle.Open;
              aPDF := TQRPDFDocumentFilter.Create(vl_adjunto1);
              aPDF.FontHandling := fhAutoEmbed;
              RCotizacion.ExportToFilter(aPDF);
            //RCotizacion.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
              EnvioMail(RCotizacion,'Cot');
            end
            else
            begin
              Application.CreateForm(tRCotizacionElegante, RCotizacionElegante);
              RCotizacionElegante.QCotizacion.Parameters.ParamByName('numero').Value := QCotizacionCOT_NUMERO.Value;
              RCotizacionElegante.QCotizacion.Open;
              RCotizacionElegante.QDetalle.Open;
              aPDF := TQRPDFDocumentFilter.Create(vl_adjunto1);
              aPDF.FontHandling := fhAutoEmbed;
              RCotizacionElegante.ExportToFilter(aPDF);
            //RCotizacionElegante.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
              EnvioMail(RCotizacionElegante,'Cot');
            end;
          end;
        end
        else
        if dm.QParametrosPAR_FORMATOCOT.Value = 2 then
        begin
          Application.CreateForm(tRCotizacion, RCotizacion);
          RCotizacion.Imprime := True;
          RCotizacion.lbEmp1.Enabled := True;
          RCotizacion.lbEmp2.Enabled := True;
          RCotizacion.lbEmp3.Enabled := True;
          RCotizacion.lbEmp4.Enabled := True;
          RCotizacion.lbEmp5.Enabled := True;
          RCotizacion.lbEmp6.Enabled := True;
          RCotizacion.lbEmp7.Enabled := True;
          RCotizacion.lbEmp8.Enabled := True;
          RCotizacion.lbEmp9.Enabled := True;
          RCotizacion.QCotizacion.Parameters.ParamByName('numero').Value := QCotizacionCOT_NUMERO.Value;
          RCotizacion.QCotizacion.Open;
          RCotizacion.QDetalle.Open;
          aPDF := TQRPDFDocumentFilter.Create(vl_adjunto1);
          aPDF.FontHandling := fhAutoEmbed;
          RCotizacion.ExportToFilter(aPDF);
        //RCotizacion.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
          EnvioMail(RCotizacion,'Cot');
        end
        else
        begin
          Application.CreateForm(tRCotizacionElegante, RCotizacionElegante);
          RCotizacionElegante.QCotizacion.Parameters.ParamByName('numero').Value := QCotizacionCOT_NUMERO.Value;
          RCotizacionElegante.QCotizacion.Open;
          RCotizacionElegante.QDetalle.Open;
          aPDF := TQRPDFDocumentFilter.Create(vl_adjunto1);
          aPDF.FontHandling := fhAutoEmbed;
          RCotizacionElegante.ExportToFilter(aPDF);
        //RCotizacionElegante.ExportToFilter(TQRPDFDocumentFilter.Create(vl_adjunto1));
          EnvioMail(RCotizacionElegante,'Cot');
        end;
        end;


      DBEdit5.SetFocus;
      QCotizacion.close;
      QCotizacion.Parameters.ParamByName('emp').Value    := dm.vp_cia;
      QCotizacion.Parameters.ParamByName('numero').Value := -1;
      QCotizacion.open;
      QCotizacion.insert;
  end;
  end
  else
  begin
    MessageDlg('Debe completar los datos de esta Cotizacion',mtError,[mbok],0);
    Grid.SetFocus;
  end;
end;


procedure TfrmCotizacion.btBuscarClick(Sender: TObject);
begin
  Search.Query.clear;
  Search.Query.add('select cot_numero, substring(cot_nombre,1,50) as cot_nombre, substring(cot_proyecto,1,40) as cot_proyecto');
  Search.Query.add('from cotizacion');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));

  if dm.QUsuariosusu_modifica_otras_cotizaciones.Value = 'False' then
     Search.Query.add('and usu_codigo = '+IntToStr(dm.QUsuariosUSU_CODIGO.Value));
     


  Search.AliasFields.clear;
  Search.AliasFields.add('Número');
  Search.AliasFields.add('A Nombre de');
  Search.AliasFields.add('Proyecto');
  Search.ResultField := 'cot_numero';
  Search.Title := 'Cotizaciones';
  if Search.execute then
  begin
    QCotizacion.close;
    QCotizacion.Parameters.parambyname('numero').Value := strtoint(Search.valuefield);
    QCotizacion.open;

    if not QCotizacionCLI_CODIGO.IsNull then
    begin
      if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
        edCliente.Text := QCotizacionCLI_CODIGO.AsString
      else
        edCliente.Text := QCotizacionCLI_REFERENCIA.AsString;
    end;

    QDetalle.close;
    QDetalle.Parameters.parambyname('numero').Value := strtoint(Search.valuefield);
    QDetalle.open;

    totalizar;

    QCotizacion.Edit;
    Grid.SetFocus;
  end;
end;

procedure TfrmCotizacion.QDetalleBeforePost(DataSet: TDataSet);
var
  PorcReal : Double;
begin
  if trim(QDetalleDET_MEDIDA.Value) = '' then
     QDetalleDET_MEDIDA.Value := 'Und';

  if QDetalleDET_DESCUENTO.isnull then
     QDetalleDET_DESCUENTO.Value := 0;

  QDetalleDET_CONITBIS.value := UpperCase(QDetalleDET_CONITBIS.value);

  if not QDetallePRO_CODIGO.IsNull then
  begin
    if (FactDebajoCosto <> 'True') and (dm.QUsuariosusu_debajo_costo.Value <> 'True') then
    begin
      if (StrToFloat(format('%10.2F',[QDetalledet_costo.AsFloat])) > 0) and (dm.QParametrosPAR_DEBAJOCOSTO.Value = 'False') then
      begin
        if (StrToFloat(format('%10.2F',[QDetalledet_costo.AsFloat])) > StrToFloat(format('%10.2F',[QDetalleDET_PRECIO.Value])))
        and (dm.QParametrosPAR_DEBAJOCOSTO.Value = 'False') then
        begin
          MessageDlg('NO PUEDE FACTURAR UN PRODUCTO POR DEBAJO DEL COSTO',mtError,[mbok],0);
          QDetalleDET_PRECIO.Clear;
          abort;
        end;
      end;
    end;


   if (QDetalleDET_DESCMAX.Value > 0) and (QDetalleDET_DESCUENTO.Value > 0) then
    begin
       if dm.QParametrospar_itbisincluido.Value = 'True' then
       begin
         if (dm.QParametrosPAR_PRECIOUND.Value = 'Precio1') and (QDetalleDET_MEDIDA.Value = 'Und') then
           PorcReal := 100.00 - (((StrToFloat(format('%10.2f',[QDetalleValor.Value]))/StrToFloat(format('%10.2f',[QDetalleDET_CANTIDAD.Value]))) / StrToFloat(format('%10.2f',[QDetalleDET_PRECIO1.Value]))) * 100)
         else if (dm.QParametrosPAR_PRECIOUND.Value = 'Precio2') and (QDetalleDET_MEDIDA.Value = 'Und') then
           PorcReal := 100.00 - (((StrToFloat(format('%10.2f',[QDetalleValor.Value]))/StrToFloat(format('%10.2f',[QDetalleDET_CANTIDAD.Value]))) / StrToFloat(format('%10.2f',[QDetalleDET_PRECIO2.Value]))) * 100)
         else if (dm.QParametrosPAR_PRECIOEMP.Value = 'Precio1') and (QDetalleDET_MEDIDA.Value = 'Emp') then
           PorcReal := 100.00 - (((StrToFloat(format('%10.2f',[QDetalleValor.Value]))/StrToFloat(format('%10.2f',[QDetalleDET_CANTIDAD.Value]))) / StrToFloat(format('%10.2f',[QDetalleDET_PRECIO1.Value]))) * 100)
         else if (dm.QParametrosPAR_PRECIOEMP.Value = 'Precio2') and (QDetalleDET_MEDIDA.Value = 'Emp') then
           PorcReal := 100.00 - (((StrToFloat(format('%10.2f',[QDetalleValor.Value]))/StrToFloat(format('%10.2f',[QDetalleDET_CANTIDAD.Value]))) / StrToFloat(format('%10.2f',[QDetalleDET_PRECIO2.Value]))) * 100);
       end
       else
       begin
         if (dm.QParametrosPAR_PRECIOUND.Value = 'Precio1') and (QDetalleDET_MEDIDA.Value = 'Und') then
           PorcReal := 100.00 - (((StrToFloat(format('%10.2f',[QDetalleValor.Value - QDetalleCalcItbis.Value]))/StrToFloat(format('%10.2f',[QDetalleDET_CANTIDAD.Value]))) / StrToFloat(format('%10.2f',[QDetalleDET_PRECIO1.Value]))) * 100)
         else if (dm.QParametrosPAR_PRECIOUND.Value = 'Precio2') and (QDetalleDET_MEDIDA.Value = 'Und') then
           PorcReal := 100.00 - (((StrToFloat(format('%10.2f',[QDetalleValor.Value - QDetalleCalcItbis.Value]))/StrToFloat(format('%10.2f',[QDetalleDET_CANTIDAD.Value]))) / StrToFloat(format('%10.2f',[QDetalleDET_PRECIO2.Value]))) * 100)
         else if (dm.QParametrosPAR_PRECIOEMP.Value = 'Precio1') and (QDetalleDET_MEDIDA.Value = 'Emp') then
           PorcReal := 100.00 - (((StrToFloat(format('%10.2f',[QDetalleValor.Value - QDetalleCalcItbis.Value]))/StrToFloat(format('%10.2f',[QDetalleDET_CANTIDAD.Value]))) / StrToFloat(format('%10.2f',[QDetalleDET_PRECIO1.Value]))) * 100)
         else if (dm.QParametrosPAR_PRECIOEMP.Value = 'Precio2') and (QDetalleDET_MEDIDA.Value = 'Emp') then
           PorcReal := 100.00 - (((StrToFloat(format('%10.2f',[QDetalleValor.Value - QDetalleCalcItbis.Value]))/StrToFloat(format('%10.2f',[QDetalleDET_CANTIDAD.Value]))) / StrToFloat(format('%10.2f',[QDetalleDET_PRECIO2.Value]))) * 100);
       end;

       if (QDetalleDET_DESCUENTO.Value = 0) or (QDetalleDET_DESCUENTO.IsNull) then
        PorcReal := StrToFloat(format('%10.2f',[PorcReal]))
       else
        PorcReal := QDetalleDET_DESCUENTO.Value;

       if (PorcReal > StrToFloat(Format('%10.2f',[QDetalleDET_DESCMAX.Value]))) and
       (dm.QUsuariosusu_excede_descuento.Value <> 'True') then
       begin
          Application.CreateForm(tfrmPideClave, frmPideClave);
          frmPideClave.ShowModal;
          if frmPideClave.acepto = 1 then
          begin
            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('select usu_excede_descuento from usuarios');
            dm.Query1.SQL.Add('where usu_clave = :cla');
            dm.Query1.Parameters.ParamByName('cla').Value := MimeEncodeString(frmPideClave.edclave.Text);
            dm.Query1.Open;
            if (dm.Query1.RecordCount = 0) or (dm.Query1.FieldByName('usu_excede_descuento').Value <> 'True') then
            begin
              MessageDlg('NO TIENE ACCESO PARA EXCEDER EL DESCUENTO MAXIMO DE '+Format('%n',[QDetalleDET_DESCMAX.Value])+'%',mtError,[mbok],0);
              QDetalleDET_DESCUENTO.Clear;
              QDetalleDET_PRECIO.Value := QDetalleDET_PRECIO1.Value;
              lstLista.Items.Delete(lstLista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));

              Grid.SetFocus;
              Grid.SelectedIndex := 5;
              QDetalle.EnableControls;
              abort;
            end;
          end
          else
          begin
            QDetalleDET_DESCUENTO.Clear;
            QDetalleDET_PRECIO.Value := QDetalleDET_PRECIO1.Value;
            lstLista.Items.Delete(lstLista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));

            Grid.SetFocus;
            Grid.SelectedIndex := 5;
            QDetalle.EnableControls;
            abort;
          end;
          frmPideClave.Release;
       end;
    end;
end;
end;

procedure TfrmCotizacion.btLimpiarClick(Sender: TObject);
begin
  if messagedlg('DESEA CANCELAR ESTA COTIZACION?',mtconfirmation,[mbyes,mbno],0)= mryes then
  begin
    edCliente.Clear;
    QCotizacion.close;
    QCotizacion.Parameters.ParamByName('emp').Value    := dm.vp_cia;
    QCotizacion.Parameters.ParamByName('numero').Value := -1;
    QCotizacion.open;
    QCotizacion.insert;
    DBEdit5.setfocus;
  end
  else
    Grid.SetFocus;
end;

procedure TfrmCotizacion.btSalirClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCotizacion.btEscalasClick(Sender: TObject);
begin
  if QDetalleDET_MANEJAESCALA.Value = 'True' then
  begin
    Application.CreateForm(tfrmSelEscala, frmSelEscala);
    frmSelEscala.QEscalas.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    frmSelEscala.QEscalas.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
    frmSelEscala.ShowModal;
    if frmSelEscala.Seleccion = True then
    begin
      QDetalle.Edit;
      QDetalleDET_ESCALA.Value := frmSelEscala.QEscalasESC_ESCALA.Value;
      QDetalle.Post;
    end;
    frmSelEscala.Release;
  end;
  Grid.SetFocus;
end;

procedure TfrmCotizacion.GridKeyPress(Sender: TObject; var Key: Char);
var
  a : integer;
begin
if dm.QParametrospar_busq_incrementada.Value = True then begin
if Grid.selectedindex = 0 then begin
edt1.Text := Trim(edt1.Text)+Key;

IF KEY = #46 THEN KEY := #0;
if Key = #8 then
edt1.Text := LeftStr(Trim(TEdit(TDBGrid(Sender).Controls[0]).Text + Key),Length(Trim(TEdit(TDBGrid(Sender).Controls[0]).Text + Key))-1);
if edt1.Text <> '' then begin
DesactivarCargaProductos := True;
with QSelectIncrem1 do begin
Close;
if dm.QParametrosPAR_CODIGOPRODUCTO.Text = 'I' then
Parameters.ParamByName('TIPO').Value   := 0;
if dm.QParametrosPAR_CODIGOPRODUCTO.Text = 'O' then
Parameters.ParamByName('TIPO').Value   := 1;
if dm.QParametrosPAR_CODIGOPRODUCTO.Text = 'F' then
Parameters.ParamByName('TIPO').Value   := 2;
Parameters.ParamByName('CODIGO').Value := edt1.Text;
Parameters.ParamByName('SUC').Value    := DBLookupComboBox2.KeyValue;
Open;
IF NOT IsEmpty THEN  DBGrid_1.Visible := True;
IF IsEmpty THEN  DBGrid_1.Visible := False;
end;
end;
end;
end;

  if NOT dm.QParametrospar_busq_incrementada.Value = True then begin
  if key = #13 then Grid.selectedindex := Grid.selectedindex + 1;
  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_MEDIDA' then
  begin
    QDetalle.Edit;
    if uppercase(key) = 'E' then
      QDetalleDET_MEDIDA.Value := 'Emp'
    else if uppercase(key) = 'U' then
      QDetalleDET_MEDIDA.Value := 'Und';
  end;
  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'PRO_UNIDAD_MEDIDA' then
  begin
    for a := 0 to Grid.Columns[Grid.selectedindex].PickList.Count-1 do
    begin
      if copy(Grid.Columns[Grid.selectedindex].PickList[a],1,1) = uppercase(key) then
      begin
        QDetalle.Edit;
        QDetallepro_unidad_medida.Clear;
        QDetallepro_unidad_medida.Value := Grid.Columns[Grid.selectedindex].PickList[a];
      end;
    end;
  end;
end;
end;

procedure TfrmCotizacion.QDetalleDET_MEDIDAChange(Sender: TField);
begin
  if not QDetalleDET_MEDIDA.IsNull then
  begin
    //Unidad
    if QDetalleDET_MEDIDA.Value = 'Und' then
      QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOUND.Value).AsFloat;

    //Empaque
    if QDetalleDET_MEDIDA.Value = 'Emp' then
      QDetalleDET_PRECIO.Value := QDetalle.FieldByName('det_'+dm.QParametrosPAR_PRECIOEMP.Value).AsFloat;
  end;
end;

procedure TfrmCotizacion.QDetalleNewRecord(DataSet: TDataSet);
begin
  Totaliza := true;
  QDetalleDET_MEDIDA.Value := 'Und';
  QDetalleDET_CONITBIS.Value := 'S';
end;

procedure TfrmCotizacion.DBEdit6Enter(Sender: TObject);
begin
  Grid.SetFocus;
end;

procedure TfrmCotizacion.QDetalledet_margenChange(Sender: TField);
var
  CostoItbis : Double;
begin
  CostoItbis := QDetalledet_costo.Value + ((QDetalledet_costo.Value*QDetalleDET_ITBIS.Value)/100);
  if QDetalledet_margen.Value > 0 then
    if dm.QParametrosPAR_PRECIOUND.Value = 'Precio1' then
       if dm.QParametrospar_itbisincluido.Value = 'True' then
         QDetalleDET_PRECIO.Value := (CostoItbis+((CostoItbis*QDetalledet_margen.Value)/100))
       else
         QDetalleDET_PRECIO.Value := (QDetalledet_costo.Value+((QDetalledet_costo.Value*QDetalledet_margen.Value)/100));
end;

procedure TfrmCotizacion.btmonedaClick(Sender: TObject);
begin
  Search.AliasFields.clear;
  Search.AliasFields.add('Nombre');
  Search.AliasFields.add('Código');
  Search.Query.clear;
  Search.Query.add('select mon_nombre, mon_codigo');
  Search.Query.add('from moneda');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.ResultField := 'mon_Codigo';
  Search.Title := 'Tipo de moneda';
  if Search.execute then
  begin
    QCotizacionMON_CODIGO.value := strtoint(Search.ValueField);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select mon_sigla, MON_RELACIONPESOCOMPRA from moneda');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and mon_codigo = :mon');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('mon').Value := QCotizacionMON_CODIGO.Value;
    dm.Query1.open;
    tmoneda.Text := dm.Query1.FieldByName('mon_sigla').AsString;
    QCotizacionCOT_TASA.Value := dm.Query1.FieldByName('MON_RELACIONPESOCOMPRA').AsFloat;
  end;
end;

procedure TfrmCotizacion.QCotizacionmon_codigoChange(Sender: TField);
begin
  if not QCotizacionmon_codigo.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select mon_sigla, MON_RELACIONPESOCOMPRA from moneda');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and mon_codigo = :mon');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('mon').Value := QCotizacionmon_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      tmoneda.Text := dm.Query1.FieldByName('mon_sigla').AsString;
      QCotizacionCOT_TASA.Value := dm.Query1.FieldByName('MON_RELACIONPESOCOMPRA').AsFloat;
    end
    else
    begin
      tmoneda.Text := '';
      QCotizacionCOT_TASA.Value := 1;
    end;
  end;
end;

procedure TfrmCotizacion.QCotizacionmon_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QCotizacionmon_codigo.IsNull then
  begin
    Text := IntToStr(QCotizacionmon_codigo.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select mon_sigla, MON_RELACIONPESOCOMPRA from moneda');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and mon_codigo = :mon');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('mon').Value := QCotizacionmon_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      tmoneda.Text := dm.Query1.FieldByName('mon_sigla').AsString;
      //QPedidosPED_TASA.Value := dm.Query1.FieldByName('MON_RELACIONPESOCOMPRA').AsFloat;
    end
    else
    begin
      tmoneda.Text := '';
      //QPedidosPED_TASA.Value := 1;
    end;
  end;
end;

procedure TfrmCotizacion.btCondicionClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Condicion');
  Search.AliasFields.Add('Codigo');
  Search.Query.clear;
  Search.Query.add('select cpa_nombre, cpa_codigo');
  Search.Query.add('from condiciones');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'cpa_Codigo';
  Search.Title := 'Condiciones de pago';
  if Search.execute then
  begin
    QCotizacioncpa_codigo.value := strtoint(Search.ValueField);
    dbEdit12.setfocus;
  end;
end;

procedure TfrmCotizacion.QCotizacioncpa_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QCotizacioncpa_codigo.isnull then
  begin
    Text := inttostr(QCotizacioncpa_codigo.value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cpa_nombre from condiciones');
    dm.Query1.sql.add('where emp_Codigo = :emp');
    dm.Query1.sql.add('and cpa_Codigo = :con');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('con').Value := QCotizacioncpa_codigo.value;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      tCondicion.text := ''
    else
      tCondicion.text := dm.Query1.fieldbyname('cpa_nombre').asstring;
  end
  else
    tCondicion.text := '';
end;

procedure TfrmCotizacion.btnotaClick(Sender: TObject);
begin
  application.createform(tfrmNota, frmNota);
  frmNota.DBMemo1.DataSource := frmCotizacion.dsCotizacion;
  frmNota.DBMemo1.DataField := 'COT_NOTA';
  frmNota.showmodal;
  frmNota.release;
end;

procedure TfrmCotizacion.btnuevonumeroClick(Sender: TObject);
var
  a : integer;
begin
  btLimpiarClick(Sender);
  Search.Query.clear;
  Search.Query.add('select cot_numero, substring(cot_nombre,1,50) as cot_nombre');
  Search.Query.add('from cotizacion');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));

  if dm.QUsuariosusu_modifica_otras_cotizaciones.Value = 'False' then
     Search.Query.add('and usu_codigo = '+IntToStr(dm.QUsuariosUSU_CODIGO.Value));

  Search.AliasFields.clear;
  Search.AliasFields.add('Número');
  Search.AliasFields.add('A Nombre de');
  Search.ResultField := 'cot_numero';
  Search.Title := 'Cotizaciones';
  if Search.execute then
  begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select emp_codigo, cot_numero, cot_fecha, cli_referencia, cot_nombre, cot_direccion, cot_localidad,');
    Query1.SQL.Add('cot_telefono, cot_fax, cot_itbis, cot_total, cot_status, cli_codigo, ven_codigo, usu_codigo, suc_codigo,');
    Query1.SQL.Add('cot_descuento, mon_codigo, cot_tasa, cpa_codigo, cot_validez, cot_tiempo_entrega, cot_nota, cot_proyecto, cot_contacto');
    Query1.SQL.Add('from cotizacion');
    Query1.SQL.Add('where emp_codigo = :emp');
    Query1.SQL.Add('and suc_codigo = :suc');
    Query1.SQL.Add('and cot_numero = :cot');
    Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    Query1.Parameters.ParamByName('cot').Value := strtoint(Search.valuefield);
    Query1.Open;

    if not Query1.FieldbyName('cli_codigo').IsNull then
    begin
      QCotizacionCLI_CODIGO.Value     := Query1.FieldbyName('cli_codigo').AsInteger;
      QCotizacionCLI_REFERENCIA.Value := Query1.FieldbyName('cli_referencia').AsString;
    end;
    QCotizacionCOT_DIRECCION.Value  := Query1.FieldbyName('cot_direccion').AsString;
    QCotizacionCOT_FAX.Value        := Query1.FieldbyName('cot_fax').AsString;
    QCotizacionCOT_ITBIS.Value      := Query1.FieldbyName('cot_itbis').Value;
    QCotizacionCOT_LOCALIDAD.Value  := Query1.FieldbyName('cot_localidad').AsString;
    QCotizacionCOT_NOMBRE.Value     := Query1.FieldbyName('cot_nombre').AsString;
    QCotizacionCOT_TELEFONO.Value   := Query1.FieldbyName('cot_telefono').AsString;

    if not Query1.FieldbyName('ven_codigo').IsNull then
      QCotizacionVEN_CODIGO.Value     := Query1.FieldbyName('ven_codigo').Value;

    if not Query1.FieldbyName('cpa_codigo').IsNull then
      QCotizacionCPA_CODIGO.Value     := Query1.FieldbyName('cpa_codigo').Value;

    QCotizacioncot_Tasa.Value       := Query1.FieldbyName('cot_tasa').Value;
    QCotizacioncot_validez.Value    := Query1.FieldbyName('cot_validez').AsInteger;
    QCotizacioncot_tiempo_entrega.Value := Query1.FieldbyName('cot_tiempo_entrega').AsString;
    QCotizacioncot_nota.Value       := Query1.FieldbyName('cot_nota').AsString;
    QCotizacioncot_proyecto.Value   := Query1.FieldbyName('cot_proyecto').AsString;
    QCotizacioncot_contacto.Value   := Query1.FieldbyName('cot_contacto').AsString;

    QDetalle.Close;
    QDetalle.Open;

    QEjec.Close;
    QEjec.SQL.Clear;
    QEjec.SQL.Add('select emp_codigo, cot_numero, det_secuencia, pro_roriginal, pro_rfabric, PRO_NOMBRE, pro_barra,');
    QEjec.SQL.Add('det_precio, det_cantidad, det_conitbis, det_itbis, pro_servicio, det_escala, det_manejaescala,');
    QEjec.SQL.Add('det_medida, det_precio1, det_precio2, det_precio3, det_precio4, pro_combo, mar_codigo, det_nota,');
    QEjec.SQL.Add('pro_codigo, det_descuento, det_margen, det_costo');
    QEjec.SQL.Add('from det_cotizacion');
    QEjec.SQL.Add('where emp_codigo = :emp');
    QEjec.SQL.Add('and cot_numero = :cot');
    QEjec.SQL.Add('order by det_secuencia');
    QEjec.Parameters.ParamByName('emp').Value := dm.vp_cia;
    QEjec.Parameters.ParamByName('cot').Value := strtoint(Search.valuefield);
    QEjec.Open;
    Totaliza := false;
    QEjec.First;
    while not QEjec.Eof do
    begin
      QDetalle.Append;
      if not QEjec.FieldByName('pro_codigo').IsNull then
        QDetallePRO_CODIGO.Value       := QEjec.FieldByName('pro_codigo').AsInteger;
      QDetallePRO_RFABRIC.Value      := QEjec.FieldByName('pro_rfabric').AsString;
      QDetallePRO_RORIGINAL.Value    := QEjec.FieldByName('pro_roriginal').AsString;
      QDetallePRO_NOMBRE.Value       := QEjec.FieldByName('pro_nombre').AsString;
      QDetalleDET_ESCALA.Value       := QEjec.FieldByName('det_escala').AsString;
      QDetalleDET_MANEJAESCALA.Value := QEjec.FieldByName('det_manejaescala').AsString;
      QDetalleDET_PRECIO1.Value      := QEjec.FieldByName('det_precio1').AsFloat;
      QDetalleDET_PRECIO2.Value      := QEjec.FieldByName('det_precio2').AsFloat;
      QDetalleDET_PRECIO3.Value      := QEjec.FieldByName('det_precio3').AsFloat;
      QDetalleDET_PRECIO4.Value      := QEjec.FieldByName('det_precio4').AsFloat;
      QDetalleDET_MEDIDA.Value       := QEjec.FieldByName('det_medida').AsString;
      QDetalleDET_NOTA.Value         := QEjec.FieldByName('det_nota').AsString;
      QDetalleDET_DESCUENTO.Value    := QEjec.FieldByName('det_descuento').Value;
      QDetalledet_margen.Value       := QEjec.FieldByName('det_margen').AsFloat;
      QDetalledet_costo.Value        := QEjec.FieldByName('det_costo').AsFloat;
      if not QEjec.FieldByName('det_conitbis').IsNull then
        QDetalleDET_CONITBIS.Value     := QEjec.FieldByName('det_conitbis').AsString;

      if not QEjec.FieldByName('det_itbis').IsNull then
        QDetalleDET_ITBIS.Value        := QEjec.FieldByName('det_itbis').AsFloat;

      if not QEjec.FieldByName('det_precio').IsNull then
        QDetalleDET_PRECIO.Value       := QEjec.FieldByName('det_precio').AsFloat;

      if not QEjec.FieldByName('det_cantidad').IsNull then
        QDetalleDET_CANTIDAD.Value     := QEjec.FieldByName('det_cantidad').AsFloat;

      QDetalleDET_SECUENCIA.Value    := QEjec.FieldByName('det_secuencia').Value;


      {for a := 0 to QEjec.FieldCount-1 do
        QDetalle.FieldByName(QEjec.Fields[a].FieldName).Value := QEjec.Fields[a].Value;}

      QDetalle.Post;
      QEjec.Next;
    end;

    totaliza := true;
    totalizar;

    Grid.SetFocus;
  end;
end;

procedure TfrmCotizacion.QDetalleAfterDelete(DataSet: TDataSet);
begin
  totalizar;
end;

procedure TfrmCotizacion.Nota1Click(Sender: TObject);
begin
  application.createform(tfrmNota, frmNota);
  frmNota.DBMemo1.DataSource := frmCotizacion.dsDetalle;
  frmNota.DBMemo1.DataField := 'DET_NOTA';
  frmNota.showmodal;
  frmNota.release;
end;

procedure TfrmCotizacion.QDetallepro_unidad_medidaChange(Sender: TField);
begin
  if (not QDetallepro_unidad_medida.IsNull) and (dm.QParametrospar_inv_unidad_medida.Value = 'True') then
  begin
    //buscando precio por unidad de medida
    QUnidades.Close;
    QUnidades.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    QUnidades.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
    QUnidades.Parameters.ParamByName('und').Value := QDetallepro_unidad_medida.Value;
    QUnidades.Open;
    if QUnidades.RecordCount = 0 then
    begin
      MessageDlg('Esta unidad de medida no existe en el producto',mtError,[mbok],0);
      QDetallepro_unidad_medida.Clear;
      Abort;
    end
    else
    begin
      QDetalleDET_PRECIO.Value := QUnidadesPrecio.Value;
      qdetalledet_cant_unidad_medida.Value := QUnidadesCantidad.AsFloat;
      QDetalleUnidadID.Value := QUnidadesUnidadID.Value;
    end;
  end;
end;

procedure TfrmCotizacion.QCotizacioncot_rncChange(Sender: TField);
begin
  if (not QCotizacioncot_rnc.IsNull) and (Trim(edCliente.Text) = '') then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select c.cli_codigo, rnc_cedula, razon_social, nombre_comercial,');
    dm.Query1.SQL.Add('actividad_economica, direccion, numero, urbanizacion,');
    dm.Query1.SQL.Add('telefono, estatus from rnc');
    dm.Query1.SQL.Add(' left join clientes c on rnc.rnc_cedula = c.cli_rnc'); {20170704}
    dm.Query1.SQL.Add('where rnc_cedula = :rnc');
    dm.Query1.Parameters.ParamByName('rnc').Value := QCotizacioncot_rnc.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      edCliente.Text                  := dm.Query1.FieldByName('cli_codigo').AsString; {20170704}
      QCotizacionCLI_CODIGO.Value     := dm.Query1.FieldByName('cli_codigo').AsInteger;{20170704}
      QCotizacionCOT_NOMBRE.Value     := dm.Query1.FieldByName('razon_social').AsString;
      QCotizacionCOT_DIRECCION.Value  := dm.Query1.FieldByName('direccion').AsString;
      QCotizacionCOT_LOCALIDAD.Value  := Trim(dm.Query1.FieldByName('urbanizacion').AsString)+
                                         Trim(dm.Query1.FieldByName('numero').AsString);
      QCotizacionCOT_TELEFONO.Value   := dm.Query1.FieldByName('telefono').AsString;
    end;
  end;
end;

procedure TfrmCotizacion.Pantalladeproductos1Click(Sender: TObject);
var
  vIns, vMod, vDel : boolean;
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('inv_productos');
  dm.Query1.open;
  if dm.Query1.RecordCount > 0 then
  begin
    vIns := dm.Query1.fieldbyname('Inserta').asboolean;
    vMod := dm.Query1.fieldbyname('Modifica').asboolean;
    vDel := dm.Query1.fieldbyname('Elimina').asboolean;
    frmMain.activaforma(tfrmProductos, tform(frmProductos));
    frmProductos.btEdit.visible   := vMod;
    frmProductos.btInsert.visible := vIns;
    frmProductos.btDelete.visible := vDel;
    frmProductos.QProductos.Close;
    frmProductos.QProductos.Parameters.ParamByName('prod').Value := QDetallePRO_CODIGO.Value;
    frmProductos.QProductos.Parameters.ParamByName('PAR_INVEMPRESA').Value:= dm.QParametrosPAR_INVEMPRESA.Value;
    frmProductos.QProductos.Open;

    frmProductos.QProvee.Close;
    frmProductos.QProvee.Parameters.ParamByName('emp_codigo').Value := dm.vp_cia;
    frmProductos.QProvee.Parameters.ParamByName('pro_codigo').Value := frmProductos.QProductosPRO_CODIGO.value;
    frmProductos.QProvee.Open;
    if frmProductos.QProvee.RecordCount > 0 then begin
    frmProductos.vl_sup       := frmProductos.QProveeSUP_CODIGO.Value;
    frmProductos.edtProv.Text := frmProductos.QProveeSUP_CODIGO.Text;
    frmProductos.tProv.Text   := frmProductos.QProveeSUP_NOMBRE.Text;
    end;
  end;
end;

procedure TfrmCotizacion.Pantalladeajustedeinventario1Click(
  Sender: TObject);
var
  vIns, vMod, vDel : boolean;
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('inv_ajuste');
  dm.Query1.open;
  if dm.Query1.RecordCount > 0 then
  begin
    frmMain.activaforma(tfrmAjusteInventario, tform(frmAjusteInventario));
    frmAjusteInventario.QProductos.Locate('pro_codigo',QDetallePRO_CODIGO.Value,[]);
  end;
end;

procedure TfrmCotizacion.Consultarmovimientos1Click(Sender: TObject);
begin
  application.createform(tfrmConsProdClienteFac, frmConsProdClienteFac);
  if not QCotizacionCLI_CODIGO.IsNull then
  begin
    frmConsProdClienteFac.cli := QCotizacionCLI_CODIGO.value;
    frmConsProdClienteFac.CheckBox1.Checked := false;
  end
  else
  begin
    frmConsProdClienteFac.cli := 0;
    frmConsProdClienteFac.CheckBox1.Checked := true;
  end;
  frmConsProdClienteFac.pro := QDetallePRO_CODIGO.Value;
  frmConsProdClienteFac.QFacturas.Parameters.ParamByName('emp').Value := dm.vp_cia;
  frmConsProdClienteFac.QFacturas.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
  frmConsProdClienteFac.pr_consultar;
  frmConsProdClienteFac.ShowModal;
  frmConsProdClienteFac.Release;
end;

procedure TfrmCotizacion.DBGrid_1DblClick(Sender: TObject);
begin
DesactivarCargaProductos := False;
if not QSelectIncrem1.IsEmpty then begin
if DM.QParametrosPAR_CODIGOPRODUCTO.Value = 'I' THEN
QDetallePRO_CODIGO.Value := QSelectIncrem1.fieldbyname('codigo').AsInteger;
if DM.QParametrosPAR_CODIGOPRODUCTO.Value = 'O' THEN
QDetallePRO_RORIGINAL.Value := QSelectIncrem1.fieldbyname('codigo').AsString;
if DM.QParametrosPAR_CODIGOPRODUCTO.Value = 'F' THEN
QDetallePRO_RFABRIC.Value := QSelectIncrem1.fieldbyname('codigo').AsString;
end;
Grid.SetFocus;
DBGrid_1.Visible := False;
if dm.QParametrosPAR_FACBAJARLINEA.Value = 'True' then
begin
QDetalle.Append;
end;
if Grid.SelectedIndex >= 3 then
QDetalle.Append;
edt1.Clear;
end;

procedure TfrmCotizacion.DBGrid_1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then DBGrid_1DblClick(Sender);
end;

procedure TfrmCotizacion.dsDetalleDataChange(Sender: TObject;
  Field: TField);
begin
     if QDetallePRO_CODIGO.Text <> '' then begin
      Panel7.Visible := True;
      QMsnExistencia.Close;
      QMsnExistencia.Parameters.ParamByName('emp').Value          := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      QMsnExistencia.Parameters.ParamByName('alm_codigo').Value   := 1;
      QMsnExistencia.Parameters.ParamByName('pro_codigo').Value   := QDetallePRO_CODIGO.Value;
      QMsnExistencia.Parameters.ParamByName('det_cantidad').Value := QDetalleDET_CANTIDAD.Value;
      QMsnExistencia.Parameters.ParamByName('det_medida').Value   := QDetalleDET_MEDIDA.Value;
      QMsnExistencia.Parameters.ParamByName('usu').Value          := dm.Usuario;
      QMsnExistencia.Parameters.ParamByName('SUC_CODIGO').Value   := QCotizacionSUC_CODIGO.Value;
      QMsnExistencia.Parameters.ParamByName('TFA_CODIGO').Value   := 1;
      QMsnExistencia.Parameters.ParamByName('FAC_NUMERO').Value   := 1;
      QMsnExistencia.Open;
end
else
Panel7.Visible := False;
end;
procedure TfrmCotizacion.FormShow(Sender: TObject);
begin
if DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados' then BEGIN
btnProyecto.Visible := True;
DBEdit18.Enabled    := False;
Exit;
END
else BEGIN
btnProyecto.Visible := False;
DBEdit18.Enabled    := True;
end;
END;

procedure TfrmCotizacion.btnProyectoClick(Sender: TObject);
begin
  Search.Query.clear;
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.add('select dep_nombre, dep_codigo');
  Search.Query.add('from departamentos');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.Query.Add('AND DEP_CODIGO NOT IN ');
  Search.Query.Add('(select DEP_CODIGO from Cotizacion where cot_status <> ''ANU'')');
  Search.Title := 'Proyectos';
  Search.ResultField := 'dep_codigo';
  if Search.execute then
  begin
    QCotizaciondep_codigo.Value := StrToInt(Search.ValueField);
    dbVendedor.SetFocus;
  end;
end;

procedure TfrmCotizacion.QCotizaciondep_codigoValidate(Sender: TField);
begin
with DM.Query1 do begin
    Close;
    SQL.Clear;
    SQL.Add('select dep_nombre, dep_monto');
    SQL.Add('from departamentos');
    SQL.Add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
    SQL.Add('and dep_codigo ='+inttostr(QCotizaciondep_codigo.Value));
    Open;
    If not IsEmpty then begin
    QCotizacioncot_proyecto.Text := fieldbyname('dep_nombre').AsString;
    vl_monto := FieldByName('dep_monto').Value;
    end;
    end;
end;

procedure TfrmCotizacion.QCotizacionAfterOpen(DataSet: TDataSet);
begin
if QCotizaciondep_codigo.Value > 0 then begin
with DM.Query1 do begin
    Close;
    SQL.Clear;
    SQL.Add('select dep_nombre, dep_monto');
    SQL.Add('from departamentos');
    SQL.Add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
    SQL.Add('and dep_codigo ='+inttostr(QCotizaciondep_codigo.Value));
    Open;
    If not IsEmpty then begin
    vl_monto := FieldByName('dep_monto').Value;
    end;
    end;
end;
end;

procedure TfrmCotizacion.EnvioMail(Reporte: TQuickRep; Tipo: String);
begin
pnCorreo.Visible := True;
with dm.Query1 do begin
Close;
SQL.Clear;
SQL.Add('select * from clientes where cli_codigo = '+QCotizacionCLI_CODIGO.Text);
SQL.Add('and emp_codigo = '+QCotizacionEMP_CODIGO.Text);
Open;
if DM.Query1.RecordCount = 0 then begin
ShowMessage('El cliente no tiene Email asignado, favor verificar!');
Reporte.Destroy;
Exit;
end;
vl_dest := DM.Query1.fieldbyname('cli_email').Text;
vl_clienteN := Trim(DM.Query1.fieldbyname('cli_nombre').Text);
end;

vl_factnum := QCotizacionCOT_NUMERO.Text;
vl_asunto := 'Envio Cotizacion No. '+vl_factnum;

//Cuerpo del mensaje
  mmo1.Clear;
  mmo1.Lines.Add('Buenas,');
  mmo1.Lines.Add('');
  mmo1.Lines.Add('Sres. '+vl_clienteN+',');
  mmo1.Lines.Add('Adjunto encontraras la cotizacion No. '+vl_factnum);
  mmo1.Lines.Add('');
  mmo1.Lines.Add('Saludos, ');
  mmo1.Lines.Add(DBLookupComboBox2.Text);
  frmMain.EnviarCorreo2(vl_dest,
                       vl_asunto,
                       vl_adjunto1,
                       vl_adjunto2,
                       mmo1.Lines.GetText);
  Reporte.Destroy;
pnCorreo.Visible := False;
end;

end.
