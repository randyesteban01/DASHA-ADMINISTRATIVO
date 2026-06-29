unit PRENTA02;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids, DB,
  IBCustomDataSet, IBQuery, IBUpdateSQL, ADODB,
  QuerySearchDlgADO, QRCtrls, QuickRpt, Menus, Math, QRPDFFilt, QRExport;

type
  TfrmAlquiler = class(TForm)
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
    QAlquiler: TADOQuery;
    QAlquilerCLI_CODIGO: TIntegerField;
    QAlquilerCLI_REFERENCIA: TIBStringField;
    QAlquilerEMP_CODIGO: TIntegerField;
    QAlquilerUSU_CODIGO: TIntegerField;
    QAlquilerVEN_CODIGO: TIntegerField;
    dsAlquiler: TDataSource;
    QDetalle: TADOQuery;
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
    QAlquilerSubTotal: TFloatField;
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
    QAlquilerSUC_CODIGO: TIntegerField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    QDetalleDET_DESCUENTO: TBCDField;
    Label1: TLabel;
    DBEdit9: TDBEdit;
    QDetalledet_margen: TBCDField;
    QDetalledet_costo: TBCDField;
    QAlquilermon_codigo: TIntegerField;
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
    QAlquilercpa_codigo: TIntegerField;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit11: TDBEdit;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    btnota: TSpeedButton;
    DBLookupComboBox2: TDBLookupComboBox;
    QDetallePrecioTasa: TFloatField;
    btnuevonumero: TSpeedButton;
    Query1: TADOQuery;
    QDetallepro_servicio: TStringField;
    QDetallepro_combo: TStringField;
    QDetallemar_codigo: TIntegerField;
    DBEdit16: TDBEdit;
    Label16: TLabel;
    Label18: TLabel;
    DBEdit17: TDBEdit;
    PopupMenu1: TPopupMenu;
    Nota1: TMenuItem;
    ckingles: TCheckBox;
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
    QDetalledet_entregar: TDateTimeField;
    QDetallealq_numero: TIntegerField;
    QAlquileralq_DIRECCION: TStringField;
    QAlquileralq_FAX: TStringField;
    QAlquileralq_FECHA: TDateTimeField;
    QAlquileralq_ITBIS: TBCDField;
    QAlquileralq_LOCALIDAD: TStringField;
    QAlquileralq_NOMBRE: TStringField;
    QAlquileralq_NUMERO: TIntegerField;
    QAlquileralq_STATUS: TStringField;
    QAlquileralq_TELEFONO: TStringField;
    QAlquileralq_TOTAL: TBCDField;
    QAlquileralq_DESCUENTO: TBCDField;
    QAlquileralq_Tasa: TBCDField;
    QAlquileralq_nota: TMemoField;
    QAlquileralq_contacto: TStringField;
    QAlquileralq_solicitud: TIntegerField;
    QAlquileralq_proyecto: TStringField;
    QAlquileralq_rnc: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QAlquilerNewRecord(DataSet: TDataSet);
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
    procedure QAlquilerVEN_CODIGOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure GridColEnter(Sender: TObject);
    procedure QAlquilerBeforePost(DataSet: TDataSet);
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure GridEnter(Sender: TObject);
    procedure QAlquilerCalcFields(DataSet: TDataSet);
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
    procedure QAlquilermon_codigoChange(Sender: TField);
    procedure QAlquilermon_codigoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure btCondicionClick(Sender: TObject);
    procedure QAlquilercpa_codigoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure btnotaClick(Sender: TObject);
    procedure btnuevonumeroClick(Sender: TObject);
    procedure QDetalleAfterDelete(DataSet: TDataSet);
    procedure Nota1Click(Sender: TObject);
    procedure QDetallepro_unidad_medidaChange(Sender: TField);
    procedure Pantalladeproductos1Click(Sender: TObject);
    procedure Pantalladeajustedeinventario1Click(Sender: TObject);
    procedure Consultarmovimientos1Click(Sender: TObject);
    procedure QAlquileralq_rncChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    Total, Itbis : Double;
    Totaliza : Boolean;
    FactDebajoCosto : string;
    procedure totalizar;
  end;

var
  frmAlquiler: TfrmAlquiler;

implementation

uses PVENTA33, PVENTA34, RVENTA36, SIGMA01, SIGMA00, PVENTA117, RVENTA65,
  PVENTA36, RVENTA85, PVENTA15, PVENTA138, PVENTA186, PVENTA26;

{$R *.DFM}

procedure TfrmAlquiler.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmAlquiler.FormPaint(Sender: TObject);
begin
  frmCotizacion.top := 5;
  frmCotizacion.Left := 0;
end;

procedure TfrmAlquiler.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
  if key = vk_f2  then btGrabarClick(self);
  if key = vk_f3  then btLimpiarClick(self);
  if key = vk_f9  then btnuevonumeroClick(Self);
end;

procedure TfrmAlquiler.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmAlquiler.QAlquilerNewRecord(DataSet: TDataSet);
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
  QAlquilerAlq_nota.Value   := dm.QParametrospar_nota_cotizacion.Value;
  QAlquilermon_codigo.Value := dm.QParametrosMON_CODIGO.Value;
  QAlquilerAlq_DESCUENTO.Value := 0;
  QAlquilerSUC_CODIGO.Value := QSucursalsuc_codigo.Value;
  QAlquilerAlq_FECHA.value  := date;
  QAlquilerAlq_ITBIS.value  := 0;
  QAlquilerAlq_STATUS.value := 'EMI';
  QAlquilerAlq_TOTAL.value  := 0;
  QAlquilerEMP_CODIGO.value := dm.vp_cia;
  QAlquilerUSU_CODIGO.value := dm.Usuario;
  QAlquilerAlq_validez.value:= dm.QParametrosalq_dias_valides.Value;
    }
  Total := 0;
  Totaliza := True;
  tVendedor.text := QTipoVEN_CODIGO.AsString;

  QAlquileralq_NOMBRE.Value := QTipoTFA_CLIENTE.AsString;
  QAlquileralq_nota.Value   := dm.QParametrospar_nota_cotizacion.Value;
  QAlquilermon_codigo.Value := dm.QParametrosMON_CODIGO.Value;
  QAlquileralq_DESCUENTO.Value := 0;
  QAlquilerSUC_CODIGO.Value := QSucursalsuc_codigo.Value;
  QAlquileralq_FECHA.value  := date;
  QAlquileralq_ITBIS.value  := 0; //QTipotfa_itbis.value;
  QAlquileralq_STATUS.value := 'EMI';
  QAlquileralq_TOTAL.value  := 0;
  QAlquilerEMP_CODIGO.value := dm.vp_cia;
  QAlquilerUSU_CODIGO.value := dm.Usuario;
//  QAlquilerpro_Uni_Alq_cantidad.value:= dm.QParametroscot_dias_valides.Value;   fer
//  QAlquilermon_codigo.value := QTipoTMO_CODIGO.Value;
  QAlquilercpa_codigo.value := QTipofpa_CODIGO.Value;
  QAlquilerVEN_CODIGO.value := QTipoVEN_CODIGO.Value;

  QDetalle.close;
  QDetalle.Parameters.parambyname('emp').Value    := dm.vp_cia;
  QDetalle.Parameters.parambyname('numero').Value := -1;
  QDetalle.open;
end;

procedure TfrmAlquiler.FormActivate(Sender: TObject);
begin
  if not QAlquiler.active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    QAlquiler.Parameters.ParamByName('emp').Value    := dm.vp_cia;
    QAlquiler.Parameters.ParamByName('numero').Value := -1;
    QAlquiler.open;
    QAlquiler.insert;
  end;
end;

procedure TfrmAlquiler.FormCreate(Sender: TObject);
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
  Grid.Columns[0].Width := 43;

  if dm.QParametrospar_visualizadesc.Value <> 'True' then
  begin
    Grid.Columns[9].Destroy;
    Grid.Columns[2].Width := Grid.Columns[2].Width + 37;
  end;

  if dm.QParametrospar_inv_unidad_medida.Value = 'True' then
  begin
    Grid.Columns[7].Destroy;
  end;

  if dm.QParametrosPAR_FACESCALA.Value <> 'True' then
  begin
    Grid.Columns[6].Destroy;
    Grid.Columns[2].Width := Grid.Columns[2].Width + 32;
  end;

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
end;

procedure TfrmAlquiler.QDetallePRO_CODIGOChange(Sender: TField);
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
      dm.Query1.sql.add('pro_beneficio, pro_beneficio2, pro_beneficio3, pro_beneficio4, UnidadID, pro_montoitbis');
      dm.Query1.sql.add('from productos');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and pro_codigo = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.parambyname('cod').Value := QDetallePRO_CODIGO.value;
      dm.Query1.open;
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
  end;
end;

procedure TfrmAlquiler.QDetallePRO_RFABRICChange(Sender: TField);
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
      dm.Query1.sql.add('pro_beneficio, pro_beneficio2, pro_beneficio3, pro_beneficio4, UnidadID, pro_montoitbis');
      dm.Query1.sql.add('from productos ');
      dm.Query1.sql.add('where emp_codigo = :emp ');
      dm.Query1.sql.add('and pro_rfabric = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.parambyname('cod').Value := QDetallePRO_RFABRIC.value;
      dm.Query1.open;
      QDetallePRO_CODIGO.value        := dm.Query1.fieldbyname('pro_codigo').asinteger;
      QDetallePRO_RORIGINAL.value     := dm.Query1.fieldbyname('pro_roriginal').asstring;
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
  end;
end;

procedure TfrmAlquiler.QDetallePRO_RORIGINALChange(Sender: TField);
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
      dm.Query1.sql.add('pro_beneficio, pro_beneficio2, pro_beneficio3, pro_beneficio4, UnidadID, pro_montoitbis');
      dm.Query1.sql.add('from productos ');
      dm.Query1.sql.add('where emp_codigo = :emp ');
      dm.Query1.sql.add('and pro_roriginal = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.parambyname('cod').Value := QDetallePRO_RORIGINAL.value;
      dm.Query1.open;
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
        dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
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
  end;
end;

procedure TfrmAlquiler.btBuscaProdClick(Sender: TObject);
begin
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

procedure TfrmAlquiler.btEliminaClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR LA FILA?',mtconfirmation,[mbyes,mbno],0) = mryes then
    QDetalle.Delete;
  Grid.setfocus;
end;

procedure TfrmAlquiler.btPrecioClick(Sender: TObject);
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
        if QAlquilercpa_codigo.IsNull then
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

procedure TfrmAlquiler.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f4 then btBuscaProdClick(self);
  if key = vk_f6 then btEliminaClick(self);
  if key = vk_f7 then btPrecioClick(Self);
  if (key = vk_f8) and
  (QDetalleDET_MANEJAESCALA.Value = 'True') then btEscalasClick(Self);
end;

procedure TfrmAlquiler.btVendedorClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Query.clear;
  Search.Query.add('select ven_nombre, ven_codigo');
  Search.Query.add('from vendedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'ven_Codigo';
  Search.Title := 'Listado de Vendedores';
  if Search.execute then
  begin
    QAlquilerVEN_CODIGO.value := strtoint(Search.ValueField);
    dbVendedor.setfocus;
  end;
end;

procedure TfrmAlquiler.QAlquilerVEN_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QAlquilerVEN_CODIGO.isnull then
  begin
    Text := inttostr(QAlquilerVEN_CODIGO.value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select ven_nombre from vendedores');
    dm.Query1.sql.add('where emp_Codigo = :emp');
    dm.Query1.sql.add('and ven_Codigo = :ven');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('ven').Value := QAlquilerVEN_CODIGO.value;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      tVendedor.text := ''
    else
      tVendedor.text := dm.Query1.fieldbyname('ven_nombre').asstring;
  end
  else
    tVendedor.text := '';
end;

procedure TfrmAlquiler.edClienteKeyDown(Sender: TObject; var Key: Word;
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
        QAlquilerAlq_rnc.Value      := dm.Query1.fieldbyname('cli_cedula').asstring
      else if dm.Query1.fieldbyname('cli_rnc').asstring <> '' then
        QAlquilerAlq_rnc.Value      := dm.Query1.fieldbyname('cli_rnc').asstring;

      FactDebajoCosto  := dm.Query1.fieldbyname('cli_factura_debajo_costo').asstring;
      QAlquilerAlq_NOMBRE.value     := dm.Query1.fieldbyname('cli_nombre').asstring;
      QAlquilerCLI_CODIGO.value     := dm.Query1.fieldbyname('cli_Codigo').asinteger;
      QAlquilerCLI_REFERENCIA.value := dm.Query1.fieldbyname('cli_referencia').asstring;
      QAlquilerAlq_DIRECCION.value  := dm.Query1.fieldbyname('cli_direccion').asstring;
      QAlquilerAlq_FAX.value        := dm.Query1.fieldbyname('cli_fax').asstring;
      QAlquilerAlq_LOCALIDAD.value  := dm.Query1.fieldbyname('cli_localidad').asstring;
      QAlquilerAlq_TELEFONO.value   := dm.Query1.fieldbyname('cli_telefono').asstring;
      QAlquilerAlq_contacto.Value   := dm.Query1.fieldbyname('cli_contacto').asstring;
    end;
  end;
end;

procedure TfrmAlquiler.SpeedButton2Click(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('RNC');
  Search.AliasFields.Add('C�digo');
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
      QAlquilerAlq_rnc.Value      := dm.Query1.fieldbyname('cli_cedula').asstring
    else if dm.Query1.fieldbyname('cli_rnc').asstring <> '' then
      QAlquilerAlq_rnc.Value      := dm.Query1.fieldbyname('cli_rnc').asstring;

    FactDebajoCosto  := dm.Query1.fieldbyname('cli_factura_debajo_costo').asstring;  
    QAlquilerAlq_NOMBRE.value     := dm.Query1.fieldbyname('cli_nombre').asstring;
    QAlquilerCLI_CODIGO.value     := dm.Query1.fieldbyname('cli_Codigo').asinteger;
    QAlquilerCLI_REFERENCIA.value := dm.Query1.fieldbyname('cli_referencia').asstring;
    QAlquilerAlq_DIRECCION.value  := dm.Query1.fieldbyname('cli_direccion').asstring;
    QAlquilerAlq_FAX.value        := dm.Query1.fieldbyname('cli_fax').asstring;
    QAlquilerAlq_LOCALIDAD.value  := dm.Query1.fieldbyname('cli_localidad').asstring;
    QAlquilerAlq_TELEFONO.value   := dm.Query1.fieldbyname('cli_telefono').asstring;
    QAlquilerAlq_contacto.Value   := dm.Query1.fieldbyname('cli_contacto').asstring;
    edCliente.setfocus;
  end;
end;

procedure TfrmAlquiler.GridColEnter(Sender: TObject);
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
end;

procedure TfrmAlquiler.QAlquilerBeforePost(DataSet: TDataSet);
begin
  if QAlquiler.State = dsInsert then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select isnull(max(alq_numero),0) as maximo');
    dm.Query1.sql.add('from alquiler');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.open;
    QAlquilerAlq_NUMERO.value := dm.Query1.fieldbyname('maximo').asinteger + 1;
  end;
end;

procedure TfrmAlquiler.QDetalleCalcFields(DataSet: TDataSet);
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
  QDetallePrecioTasa.Value := QDetalleDET_PRECIO.Value * QAlquilerAlq_Tasa.Value;
end;

procedure TfrmAlquiler.GridEnter(Sender: TObject);
begin
  Grid.SelectedIndex := 0;
end;

procedure TfrmAlquiler.totalizar;
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
    QAlquiler.Edit;
    QAlquilerAlq_DESCUENTO.Value := TDesc;
    QAlquilerAlq_ITBIS.value     := RoundTo(titbis, -2);
    QAlquilerAlq_TOTAL.value     := (Total-TDesc)+QAlquilerAlq_ITBIS.value;

    QDetalle.GotoBookmark(Puntero);
    QDetalle.enablecontrols;
  end;
end;

procedure TfrmAlquiler.QAlquilerCalcFields(DataSet: TDataSet);
begin
  QAlquilerSubTotal.value := Total;
end;

procedure TfrmAlquiler.QDetalleAfterPost(DataSet: TDataSet);
begin
  Totalizar;
end;

procedure TfrmAlquiler.btGrabarClick(Sender: TObject);
var
  a : integer;
begin
  if QAlquilerAlq_TOTAL.Value > 0 then
  begin
    if trim(DBEdit7.text) = '' then
    begin
      showmessage('DEBE ESPECIFICAR EL NOMBRE DEL CLIENTE');
      DBEdit7.setfocus;
    end
    else if QAlquilerVEN_CODIGO.IsNull then
    begin
      showmessage('DEBE ESPECIFICAR EL VENDEDOR');
      dbVendedor.setfocus;
    end
    else
    begin
        Totaliza := False;
      QAlquiler.post;
      QAlquiler.UpdateBatch;

      QDetalle.disablecontrols;
      QDetalle.first;
      a := 0;
      while not QDetalle.eof do
      begin
        a := a + 1;
        QDetalle.edit;
        QDetalleDET_SECUENCIA.value := a;
        QDetalleAlq_NUMERO.value    := QAlquilerAlq_NUMERO.value;
        QDetalleEMP_CODIGO.value    := dm.vp_cia;
        QDetalle.post;
        QDetalle.next;
      end;
      QDetalle.enablecontrols;
      QDetalle.UpdateBatch;

      if MessageDlg('SE HA GENERADO LA COTIZACION NO. '+IntToStr(QAlquilerAlq_NUMERO.Value)+
      ', DESEA IMPRIMIRLA?',mtConfirmation,[mbyes,mbno],0) = mryes then
      begin
        if dm.QParametrospar_fac_preimpresa.Value = 'True' then
        begin
          if dm.QParametrospar_formato_preimpreso.Value = 'QRMSConsulting' then
          begin
         {   application.CreateForm(tRCotizacionPreimpresa, RCotizacionPreimpresa);
            RCotizacionPreimpresa.QAlquiler.Parameters.ParamByName('numero').Value := QAlquilerAlq_NUMERO.Value;
            RCotizacionPreimpresa.QAlquiler.Open;
            RCotizacionPreimpresa.QDetalle.Open;
            RCotizacionPreimpresa.QRMSConsulting.PrinterSetup;
            RCotizacionPreimpresa.QRMSConsulting.Preview;
            RCotizacionPreimpresa.Release;  }
          end
          else if dm.QParametrospar_formato_preimpreso.Value = 'QRThorton' then
          begin
       {     application.CreateForm(tRCotizacionPreimpresa, RCotizacionPreimpresa);
            RCotizacionPreimpresa.QAlquiler.Parameters.ParamByName('numero').Value := QAlquilerAlq_NUMERO.Value;
            RCotizacionPreimpresa.QAlquiler.Open;
            RCotizacionPreimpresa.QDetalle.Open;
            if ckingles.Checked then
               RCotizacionPreimpresa.idioma := 'IN';
               
            RCotizacionPreimpresa.QRTHorton.PrinterSetup;
            RCotizacionPreimpresa.QRTHorton.Preview;
            RCotizacionPreimpresa.Release; }
          end
          else if dm.QParametrospar_formato_preimpreso.Value = 'QRBelkis' then
          begin
       {     application.CreateForm(tRCotizacionPreimpresa, RCotizacionPreimpresa);
            RCotizacionPreimpresa.QAlquiler.Parameters.ParamByName('numero').Value := QAlquilerAlq_NUMERO.Value;
            RCotizacionPreimpresa.QAlquiler.Open;
            RCotizacionPreimpresa.QDetalle.Open;
            RCotizacionPreimpresa.QRBelkis.PrinterSetup;
            RCotizacionPreimpresa.QRBelkis.Preview;
            RCotizacionPreimpresa.Release;   }
          end
           else
          if dm.QParametrospar_formato_preimpreso.Value = 'QRMateirosa' then
          begin
         {   application.CreateForm(tRCotizacionPreimpresa, RCotizacionPreimpresa);
            RCotizacionPreimpresa.QAlquiler.Parameters.ParamByName('numero').Value := QAlquilerAlq_NUMERO.Value;
            RCotizacionPreimpresa.QAlquiler.Open;
            RCotizacionPreimpresa.QDetalle.Open;
            RCotizacionPreimpresa.QRMateirosa.PrinterSetup;
            RCotizacionPreimpresa.QRMateirosa.Preview;
            RCotizacionPreimpresa.Release;   }
          end
          else
          begin
            if dm.QParametrosPAR_FORMATOCOT.Value = 2 then
            begin
             { Application.CreateForm(tRCotizacion, RCotizacion);
              RCotizacion.QAlquiler.Parameters.ParamByName('numero').Value := QAlquilerAlq_NUMERO.Value;
              RCotizacion.QAlquiler.Open;
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
              RCotizacion.Destroy; }
            end
            else
            begin
            {  Application.CreateForm(tRCotizacionElegante, RCotizacionElegante);
              RCotizacionElegante.QAlquiler.Parameters.ParamByName('numero').Value := QAlquilerAlq_NUMERO.Value;
              RCotizacionElegante.QAlquiler.Open;
              RCotizacionElegante.QDetalle.Open;
              RCotizacionElegante.PrinterSetup;
              RCotizacionElegante.Preview;
              RCotizacionElegante.Destroy; }
            end;
          end;
        end
        else
        if dm.QParametrosPAR_FORMATOCOT.Value = 2 then
        begin
        {  Application.CreateForm(tRCotizacion, RCotizacion);
          RCotizacion.QAlquiler.Parameters.ParamByName('numero').Value := QAlquilerAlq_NUMERO.Value;
          RCotizacion.QAlquiler.Open;
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
          RCotizacion.Destroy; }
        end
        else
        begin
        {  Application.CreateForm(tRCotizacionElegante, RCotizacionElegante);
          RCotizacionElegante.QAlquiler.Parameters.ParamByName('numero').Value := QAlquilerAlq_NUMERO.Value;
          RCotizacionElegante.QAlquiler.Open;
          RCotizacionElegante.QDetalle.Open;
          RCotizacionElegante.PrinterSetup;
          RCotizacionElegante.Preview;
          RCotizacionElegante.Destroy; }
        end;
      end;

      DBEdit5.SetFocus;
      QAlquiler.close;
      QAlquiler.Parameters.ParamByName('emp').Value    := dm.vp_cia;
      QAlquiler.Parameters.ParamByName('numero').Value := -1;
      QAlquiler.open;
      QAlquiler.insert;
    end;
  end
  else
  begin
    MessageDlg('Debe completar los datos de esta Cotizacion',mtError,[mbok],0);
    Grid.SetFocus;
  end;
end;

procedure TfrmAlquiler.btBuscarClick(Sender: TObject);
begin
  Search.Query.clear;
  Search.Query.add('select alq_numero, substring(cot_nombre,1,50) as cot_nombre, substring(cot_proyecto,1,40) as cot_proyecto');
  Search.Query.add('from alquiler');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));

  if dm.QUsuariosusu_modifica_otras_cotizaciones.Value = 'False' then
     Search.Query.add('and usu_codigo = '+IntToStr(dm.QUsuariosUSU_CODIGO.Value));

  Search.AliasFields.clear;
  Search.AliasFields.add('N�mero');
  Search.AliasFields.add('A Nombre de');
  Search.AliasFields.add('Proyecto');
  Search.ResultField := 'cot_numero';
  Search.Title := 'Alquileres';
  if Search.execute then
  begin
    QAlquiler.close;
    QAlquiler.Parameters.parambyname('numero').Value := strtoint(Search.valuefield);
    QAlquiler.open;

    if not QAlquilerCLI_CODIGO.IsNull then
    begin
      if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
        edCliente.Text := QAlquilerCLI_CODIGO.AsString
      else
        edCliente.Text := QAlquilerCLI_REFERENCIA.AsString;
    end;

    QDetalle.close;
    QDetalle.Parameters.parambyname('numero').Value := strtoint(Search.valuefield);
    QDetalle.open;

    totalizar;

    QAlquiler.Edit;
    Grid.SetFocus;
  end;
end;

procedure TfrmAlquiler.QDetalleBeforePost(DataSet: TDataSet);
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
  end;
end;

procedure TfrmAlquiler.btLimpiarClick(Sender: TObject);
begin
  if messagedlg('DESEA CANCELAR ESTA COTIZACION?',mtconfirmation,[mbyes,mbno],0)= mryes then
  begin
    QAlquiler.close;
    QAlquiler.Parameters.ParamByName('emp').Value    := dm.vp_cia;
    QAlquiler.Parameters.ParamByName('numero').Value := -1;
    QAlquiler.open;
    QAlquiler.insert;
    DBEdit5.setfocus;
  end
  else
    Grid.SetFocus;
end;

procedure TfrmAlquiler.btSalirClick(Sender: TObject);
begin
  close;
end;

procedure TfrmAlquiler.btEscalasClick(Sender: TObject);
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

procedure TfrmAlquiler.GridKeyPress(Sender: TObject; var Key: Char);
var
  a : integer;
begin
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

procedure TfrmAlquiler.QDetalleDET_MEDIDAChange(Sender: TField);
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

procedure TfrmAlquiler.QDetalleNewRecord(DataSet: TDataSet);
begin
  Totaliza := true;
  QDetalleDET_MEDIDA.Value := 'Und';
  QDetalleDET_CONITBIS.Value := 'S';
end;

procedure TfrmAlquiler.DBEdit6Enter(Sender: TObject);
begin
  Grid.SetFocus;
end;

procedure TfrmAlquiler.QDetalledet_margenChange(Sender: TField);
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

procedure TfrmAlquiler.btmonedaClick(Sender: TObject);
begin
  Search.AliasFields.clear;
  Search.AliasFields.add('Nombre');
  Search.AliasFields.add('C�digo');
  Search.Query.clear;
  Search.Query.add('select mon_nombre, mon_codigo');
  Search.Query.add('from moneda');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.ResultField := 'mon_Codigo';
  Search.Title := 'Tipo de moneda';
  if Search.execute then
  begin
    QAlquilerMON_CODIGO.value := strtoint(Search.ValueField);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select mon_sigla, MON_RELACIONPESOCOMPRA from moneda');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and mon_codigo = :mon');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('mon').Value := QAlquilerMON_CODIGO.Value;
    dm.Query1.open;
    tmoneda.Text := dm.Query1.FieldByName('mon_sigla').AsString;
    QAlquilerAlq_TASA.Value := dm.Query1.FieldByName('MON_RELACIONPESOCOMPRA').AsFloat;
  end;
end;

procedure TfrmAlquiler.QAlquilermon_codigoChange(Sender: TField);
begin
  if not QAlquilermon_codigo.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select mon_sigla, MON_RELACIONPESOCOMPRA from moneda');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and mon_codigo = :mon');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('mon').Value := QAlquilermon_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      tmoneda.Text := dm.Query1.FieldByName('mon_sigla').AsString;
      QAlquilerAlq_TASA.Value := dm.Query1.FieldByName('MON_RELACIONPESOCOMPRA').AsFloat;
    end
    else
    begin
      tmoneda.Text := '';
      QAlquilerAlq_TASA.Value := 1;
    end;
  end;
end;

procedure TfrmAlquiler.QAlquilermon_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QAlquilermon_codigo.IsNull then
  begin
    Text := IntToStr(QAlquilermon_codigo.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select mon_sigla, MON_RELACIONPESOCOMPRA from moneda');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and mon_codigo = :mon');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('mon').Value := QAlquilermon_codigo.Value;
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

procedure TfrmAlquiler.btCondicionClick(Sender: TObject);
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
    QAlquilercpa_codigo.value := strtoint(Search.ValueField);
    dbEdit12.setfocus;
  end;
end;

procedure TfrmAlquiler.QAlquilercpa_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QAlquilercpa_codigo.isnull then
  begin
    Text := inttostr(QAlquilercpa_codigo.value);
    dm.Query1.close;
    dm.Query1.sql.clear;      
    dm.Query1.sql.add('select cpa_nombre from alquileres');
    dm.Query1.sql.add('where emp_Codigo = :emp');
    dm.Query1.sql.add('and cpa_Codigo = :con');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('con').Value := QAlquilercpa_codigo.value;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      tCondicion.text := ''
    else
      tCondicion.text := dm.Query1.fieldbyname('cpa_nombre').asstring;
  end
  else
    tCondicion.text := '';
end;

procedure TfrmAlquiler.btnotaClick(Sender: TObject);
begin
  application.createform(tfrmNota, frmNota);
  frmNota.DBMemo1.DataSource := frmCotizacion.dsCotizacion;
  frmNota.DBMemo1.DataField := 'COT_NOTA';
  frmNota.showmodal;
  frmNota.release;
end;

procedure TfrmAlquiler.btnuevonumeroClick(Sender: TObject);
var
  a : integer;
begin
  Search.Query.clear;
  Search.Query.add('select alq_numero, substring(alq_nombre,1,50) as alq_nombre');
  Search.Query.add('from alquiler');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));

  if dm.QUsuariosusu_modifica_otras_cotizaciones.Value = 'False' then
     Search.Query.add('and usu_codigo = '+IntToStr(dm.QUsuariosUSU_CODIGO.Value));

  Search.AliasFields.clear;
  Search.AliasFields.add('N�mero');
  Search.AliasFields.add('A Nombre de');
  Search.ResultField := 'alq_numero';
  Search.Title := 'Alquileres';
  if Search.execute then
  begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select emp_codigo, alq_numero, alq_fecha, cli_referencia, alq_nombre, alq_direccion, alq_localidad,');
    Query1.SQL.Add('alq_telefono, alq_fax, alq_itbis, alq_total, alq_status, cli_codigo, ven_codigo, usu_codigo, suc_codigo,');
    Query1.SQL.Add('alq_descuento, mon_codigo, alq_tasa, cpa_codigo, alq_validez, alq_tiempo_entrega, alq_nota, alq_proyecto, alq_contacto');
    Query1.SQL.Add('from alquiler');
    Query1.SQL.Add('where emp_codigo = :emp');
    Query1.SQL.Add('and suc_codigo = :suc');
    Query1.SQL.Add('and alq_numero = :cot');
    Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    Query1.Parameters.ParamByName('cot').Value := strtoint(Search.valuefield);
    Query1.Open;

    if not Query1.FieldbyName('cli_codigo').IsNull then
    begin
      QAlquilerCLI_CODIGO.Value     := Query1.FieldbyName('cli_codigo').AsInteger;
      QAlquilerCLI_REFERENCIA.Value := Query1.FieldbyName('cli_referencia').AsString;
    end;
    QAlquilerAlq_DIRECCION.Value  := Query1.FieldbyName('alq_direccion').AsString;
    QAlquilerAlq_FAX.Value        := Query1.FieldbyName('alq_fax').AsString;
    QAlquilerAlq_ITBIS.Value      := Query1.FieldbyName('alq_itbis').Value;
    QAlquilerAlq_LOCALIDAD.Value  := Query1.FieldbyName('alq_localidad').AsString;
    QAlquilerAlq_NOMBRE.Value     := Query1.FieldbyName('alq_nombre').AsString;
    QAlquilerAlq_TELEFONO.Value   := Query1.FieldbyName('alq_telefono').AsString;

    if not Query1.FieldbyName('ven_codigo').IsNull then
      QAlquilerVEN_CODIGO.Value     := Query1.FieldbyName('ven_codigo').Value;

    if not Query1.FieldbyName('cpa_codigo').IsNull then
      QAlquilerCPA_CODIGO.Value     := Query1.FieldbyName('cpa_codigo').Value;

    QAlquilerAlq_Tasa.Value       := Query1.FieldbyName('alq_tasa').Value;
//    QAlquilerAlq_validez.Value    := Query1.FieldbyName('alq_validez').AsInteger;
//    QAlquilerAlq_tiempo_entrega.Value := Query1.FieldbyName('alq_tiempo_entrega').AsString;
    QAlquilerAlq_nota.Value       := Query1.FieldbyName('alq_nota').AsString;
    QAlquilerAlq_proyecto.Value   := Query1.FieldbyName('alq_proyecto').AsString;
    QAlquilerAlq_contacto.Value   := Query1.FieldbyName('alq_contacto').AsString;

    QDetalle.Close;
    QDetalle.Open;

    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select emp_codigo, alq_numero, det_secuencia, pro_roriginal, pro_rfabric, pro_nombre, pro_barra,');
    Query1.SQL.Add('det_precio, det_cantidad, det_conitbis, det_itbis, pro_servicio, det_escala, det_manejaescala,');
    Query1.SQL.Add('det_medida, det_precio1, det_precio2, det_precio3, det_precio4, pro_combo, mar_codigo, det_nota,');
    Query1.SQL.Add('pro_codigo, det_descuento, det_margen, det_costo');
    Query1.SQL.Add('from det_alquiler');
    Query1.SQL.Add('where emp_codigo = :emp');
    Query1.SQL.Add('and alq_numero = :cot');
    Query1.SQL.Add('order by det_secuencia');
    Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    Query1.Parameters.ParamByName('cot').Value := strtoint(Search.valuefield);
    Query1.Open;
    Totaliza := false;
    while not Query1.Eof do
    begin
      QDetalle.Append;
      if not Query1.FieldByName('pro_codigo').IsNull then
        QDetallePRO_CODIGO.Value       := Query1.FieldByName('pro_codigo').AsInteger;
      QDetallePRO_RFABRIC.Value      := Query1.FieldByName('pro_rfabric').AsString;
      QDetallePRO_RORIGINAL.Value    := Query1.FieldByName('pro_roriginal').AsString;
      QDetallePRO_NOMBRE.Value       := Query1.FieldByName('pro_nombre').AsString;
      QDetalleDET_ESCALA.Value       := Query1.FieldByName('det_escala').AsString;
      QDetalleDET_MANEJAESCALA.Value := Query1.FieldByName('det_manejaescala').AsString;
      QDetalleDET_PRECIO1.Value      := Query1.FieldByName('det_precio1').AsFloat;
      QDetalleDET_PRECIO2.Value      := Query1.FieldByName('det_precio2').AsFloat;
      QDetalleDET_PRECIO3.Value      := Query1.FieldByName('det_precio3').AsFloat;
      QDetalleDET_PRECIO4.Value      := Query1.FieldByName('det_precio4').AsFloat;
      QDetalleDET_MEDIDA.Value       := Query1.FieldByName('det_medida').AsString;
      QDetalleDET_NOTA.Value         := Query1.FieldByName('det_nota').AsString;
      QDetalleDET_DESCUENTO.Value    := Query1.FieldByName('det_descuento').Value;
      QDetalledet_margen.Value       := Query1.FieldByName('det_margen').AsFloat;
      QDetalledet_costo.Value        := Query1.FieldByName('det_costo').AsFloat;
      if not Query1.FieldByName('det_conitbis').IsNull then
        QDetalleDET_CONITBIS.Value     := Query1.FieldByName('det_conitbis').AsString;

      if not Query1.FieldByName('det_itbis').IsNull then
        QDetalleDET_ITBIS.Value        := Query1.FieldByName('det_itbis').AsFloat;

      if not Query1.FieldByName('det_precio').IsNull then
        QDetalleDET_PRECIO.Value       := Query1.FieldByName('det_precio').AsFloat;

      if not Query1.FieldByName('det_cantidad').IsNull then
        QDetalleDET_CANTIDAD.Value     := Query1.FieldByName('det_cantidad').AsFloat;

      QDetalleDET_SECUENCIA.Value    := Query1.FieldByName('det_secuencia').Value;


      {for a := 0 to Query1.FieldCount-1 do
        QDetalle.FieldByName(Query1.Fields[a].FieldName).Value := Query1.Fields[a].Value;}

      QDetalle.Post;
      Query1.Next;
    end;

    totaliza := true;
    totalizar;

    Grid.SetFocus;
  end;
end;

procedure TfrmAlquiler.QDetalleAfterDelete(DataSet: TDataSet);
begin
  totalizar;
end;

procedure TfrmAlquiler.Nota1Click(Sender: TObject);
begin
  application.createform(tfrmNota, frmNota);
  frmNota.DBMemo1.DataSource := frmCotizacion.dsDetalle;
  frmNota.DBMemo1.DataField := 'DET_NOTA';
  frmNota.showmodal;
  frmNota.release;
end;

procedure TfrmAlquiler.QDetallepro_unidad_medidaChange(Sender: TField);
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

procedure TfrmAlquiler.Pantalladeproductos1Click(Sender: TObject);
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
    frmProductos.QProductos.Open;
  end;
end;

procedure TfrmAlquiler.Pantalladeajustedeinventario1Click(
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

procedure TfrmAlquiler.Consultarmovimientos1Click(Sender: TObject);
begin
  application.createform(tfrmConsProdClienteFac, frmConsProdClienteFac);
  if not QAlquilerCLI_CODIGO.IsNull then
  begin
    frmConsProdClienteFac.cli := QAlquilerCLI_CODIGO.value;
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

procedure TfrmAlquiler.QAlquileralq_rncChange(Sender: TField);
var
  D: TDatoRncConsulta;
begin
  if (QAlquilerAlq_rnc.IsNull) or (Trim(edCliente.Text) <> '') then
    Exit;

  D := dm.ConsultarRncCompleto(QAlquilerAlq_rnc.Value);
  if D.Encontrado then
  begin
    if D.CliCodigo > 0 then
    begin
      edCliente.Text := IntToStr(D.CliCodigo);
      QAlquilerCLI_CODIGO.Value := D.CliCodigo;
    end;
    QAlquilerAlq_NOMBRE.Value := D.RazonSocial;
    QAlquilerAlq_DIRECCION.Value := D.Direccion;
    QAlquilerAlq_LOCALIDAD.Value := Trim(D.Urbanizacion) + Trim(D.Numero);
    QAlquilerAlq_TELEFONO.Value := D.Telefono;
  end;
end;

end.
