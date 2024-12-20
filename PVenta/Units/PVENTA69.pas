unit PVENTA69;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, StrUtils,
  IBCustomDataSet, IBQuery, ADODB, QuerySearchDlgADO, IdMessageClient,
  IdSMTP, idMessage, QRPDFFilt, QuickRpt, QRCtrls, DBCtrls, 
  frxClass, frxDBSet, frxExportPDF;

type
  TfrmReimpresion = class(TForm)
    cbDoc: TRadioGroup;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edTipo: TEdit;
    btTipo: TSpeedButton;
    tTipo: TEdit;
    edNumero: TEdit;
    edGrupo: TEdit;
    Search: TQrySearchDlgADO;
    btClose: TBitBtn;
    btPrint: TBitBtn;
    cbDestino: TRadioGroup;
    Query1: TADOQuery;
    DBLookupComboBox2: TDBLookupComboBox;
    Label8: TLabel;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    cbidioma: TComboBox;
    Label4: TLabel;
    edtHasta: TEdit;
    qLiqTicket: TADOQuery;
    qLiqTicketPED_FICHA: TStringField;
    qLiqTicketVENDEDOR: TStringField;
    qLiqTicketTOTAL: TCurrencyField;
    qLiqTicketTOTAL_LET: TStringField;
    qLiqTicketCODIGO: TStringField;
    qLiqTicketPRODUCTO: TStringField;
    qLiqTicketCANTIDAD: TCurrencyField;
    qLiqTicketDET_PRECIO: TCurrencyField;
    qLiqTicketIMPORTE: TCurrencyField;
    qLiqTicketPED_FECHA: TDateField;
    qLiqTicketPED_NUMERO: TIntegerField;
    DB_Liq_Ticket: TfrxDBDataset;
    Rpt_Liq_Ticket: TfrxReport;
    qFacturaOrdTaller: TADOQuery;
    qFacturaOrdTallerSUCURSAL: TStringField;
    qFacturaOrdTallerDIRECCION: TStringField;
    qFacturaOrdTallerTELEFONO: TStringField;
    qFacturaOrdTallerFAX: TStringField;
    qFacturaOrdTallerEMAIL: TStringField;
    qFacturaOrdTallerRNC: TStringField;
    qFacturaOrdTallerNCF: TStringField;
    qFacturaOrdTallerTIPO_NCF: TStringField;
    qFacturaOrdTallerNCF_VENCE: TDateTimeField;
    qFacturaOrdTallerFECHA: TDateTimeField;
    qFacturaOrdTallerVENCE: TDateTimeField;
    qFacturaOrdTallerNUM: TIntegerField;
    qFacturaOrdTallerORDEN: TIntegerField;
    qFacturaOrdTallerCONDICION: TStringField;
    qFacturaOrdTallerCLI_RNC: TStringField;
    qFacturaOrdTallerCLIENTE: TStringField;
    qFacturaOrdTallerPROPIETARIO: TStringField;
    qFacturaOrdTallerVEH_PLACA: TStringField;
    qFacturaOrdTallerVEH_TIPO: TStringField;
    qFacturaOrdTallerVEH_MARCA: TStringField;
    qFacturaOrdTallerVEH_MODELO: TStringField;
    qFacturaOrdTallerVEH_YEAR: TIntegerField;
    qFacturaOrdTallerVEH_CHASSIS: TStringField;
    qFacturaOrdTallerVEH_KILOM: TIntegerField;
    qFacturaOrdTallerVEH_NIV: TStringField;
    qFacturaOrdTallerTIPO: TStringField;
    qFacturaOrdTallerPRODUCTO: TStringField;
    qFacturaOrdTallerCANT: TBCDField;
    qFacturaOrdTallerPRECIO: TBCDField;
    qFacturaOrdTallerSUBTOTAL: TBCDField;
    qFacturaOrdTallerDESC_SERV: TBCDField;
    qFacturaOrdTallerDESC_PIEZAS: TBCDField;
    qFacturaOrdTallerITBIS: TBCDField;
    qFacturaOrdTallerTOTAL: TBCDField;
    qFacturaOrdTallerVEH_COLOR: TStringField;
    qFacturaOrdTallerLOGO: TBlobField;
    DB_qFacturaOrdTaller: TfrxDBDataset;
    Rpt_FacOrdTaller: TfrxReport;
    mmo1: TMemo;
    QDatos: TADOQuery;
    QSucursalsuc_direccion: TStringField;
    QSucursalsuc_localidad: TStringField;
    QSucursalsuc_rnc: TStringField;
    QSucursalsuc_telefono: TStringField;
    QFactura: TADOQuery;
    QFacturaCAJ_CODIGO: TIntegerField;
    QFacturaCLI_CODIGO: TIntegerField;
    QFacturaCOT_NUMERO: TIntegerField;
    QFacturaCPA_CODIGO: TIntegerField;
    QFacturaFAC_ABONO: TBCDField;
    QFacturaEMP_CODIGO: TIntegerField;
    QFacturaFAC_DIRECCION: TStringField;
    QFacturaFAC_FAX: TStringField;
    QFacturaFAC_FECHA: TDateTimeField;
    QFacturaFAC_FORMA: TStringField;
    QFacturaFAC_LOCALIDAD: TStringField;
    QFacturaFAC_NOMBRE: TStringField;
    QFacturaFAC_NUMERO: TIntegerField;
    QFacturaFAC_STATUS: TStringField;
    QFacturaFAC_TELEFONO: TStringField;
    QFacturaFAC_OTROS: TBCDField;
    QFacturaPED_NUMERO: TIntegerField;
    QFacturaTFA_CODIGO: TIntegerField;
    QFacturaUSU_CODIGO: TIntegerField;
    QFacturaVEN_CODIGO: TIntegerField;
    QFacturaCLI_REFERENCIA: TStringField;
    QFacturaALM_CODIGO: TIntegerField;
    QFacturaFAC_VENCE: TDateTimeField;
    QFacturaFAC_COMISION: TBCDField;
    QFacturaFAC_MENSAJE1: TStringField;
    QFacturaFAC_MENSAJE2: TStringField;
    QFacturaFAC_MENSAJE3: TStringField;
    QFacturaFAC_PORCCOMISION: TBCDField;
    QFacturaFAC_CUOTAS: TIntegerField;
    QFacturaFAC_HORA: TStringField;
    QFacturaCON_NUMERO: TIntegerField;
    QFacturaFAC_ANO: TIntegerField;
    QFacturaFAC_MES: TIntegerField;
    QFacturaFAC_CONITBIS: TStringField;
    QFacturaFAC_DEVUELTO: TBCDField;
    QFacturaMON_CODIGO: TIntegerField;
    QFacturaSUC_CODIGO: TIntegerField;
    QFacturaFAC_DOMICILIO: TStringField;
    QFacturafac_comisionpagada: TBCDField;
    QFacturafac_caja: TIntegerField;
    QFacturapro_codigo: TIntegerField;
    QFacturaNCF_Fijo: TStringField;
    QFacturaNCF_Secuencia: TBCDField;
    QFacturafac_selectivo_ad: TBCDField;
    QFacturafac_selectivo_con: TBCDField;
    QFacturafac_hold: TStringField;
    QFacturafac_rnc: TStringField;
    QFacturaOrdenID: TStringField;
    QFacturaPlaca: TStringField;
    QFacturaChofer: TStringField;
    QFacturaModelo: TStringField;
    QFacturaMarca: TStringField;
    QFacturaCompania: TStringField;
    QFacturaCamionID: TIntegerField;
    QFacturaMetraje: TBCDField;
    QFacturafac_interes: TBCDField;
    QFacturatip_codigo: TIntegerField;
    QFacturacot_proyecto: TStringField;
    QFacturaSubTotal: TFloatField;
    QFacturaFAC_NOTA: TMemoField;
    QFacturaRecargo: TCurrencyField;
    QFacturaPedidoNo: TStringField;
    QFacturaReferencia: TStringField;
    QFacturaFAC_DESCUENTO: TBCDField;
    QFacturaFAC_ITBIS: TBCDField;
    QFacturaFAC_TOTAL: TBCDField;
    QFacturaFAC_PROPINA: TCurrencyField;
    QFacturaNUMERO_RESERVA: TIntegerField;
    QFacturaFAC_SERVICIOS: TFloatField;
    QFacturaFAC_TASA: TFloatField;
    QFacturaNIF: TStringField;
    QFacturaTdesc_gral: TCurrencyField;
    QFacturaporc_desc_gral: TCurrencyField;
    QFacturaTdesc_gral_sin_Itbis: TCurrencyField;
    QSerie: TADOQuery;
    QSerieEMP_CODIGO: TIntegerField;
    QSerieFAC_FORMA: TStringField;
    QSerieFAC_NUMERO: TIntegerField;
    QSeriePRO_CODIGO: TIntegerField;
    QSerieSER_NUMERO: TStringField;
    QSerieSER_SECUENCIA: TIntegerField;
    QSerieTFA_CODIGO: TIntegerField;
    QSerieSUC_CODIGO: TIntegerField;
    dsFactura: TDataSource;
    procedure btTipoClick(Sender: TObject);
    procedure edTipoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edTipoChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure edGrupoChange(Sender: TObject);
    procedure btPrintClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbDocClick(Sender: TObject);
    procedure Rpt_FacOrdTallerBeforePrint(Sender: TfrxReportComponent);
  private
    procedure EnvioMail(Reporte: TQuickRep; Tipo: String);
    function GetDestino(Tabla,Campo:String):String;
    function GetCliente(Tabla, Campo: String): String;
    function GetSuplidor(Tabla, Campo: String): String;
    function GetDestinoSup(Tabla, Campo: String): String;
    function GetConcepto(Tabla, Campo, Campo2: String): String;
    procedure Imp40ColumnasFac;
    { Private declarations }

  public
    { Public declarations }
    FormatoImp : Integer;
    PuertoImp, RecTipo, ActBalance, puerto, ImprimeEncaqbezado,
    vl_cliente, vl_destino, vl_cuerpo, vl_atach, vl_concepto, vl_suplidor : String;
    puertopeq : textfile;
    procedure Imp40ColumnasFac2;
    procedure Imp40ColumnasRec;
    procedure Imp40ColumnasRecDet;
    procedure Imp40ColumnasNC;
    procedure Imp40ColumnasND;
    procedure Imp40ColumnasDEV;
    procedure Imp40ColumnasDES;
    procedure Imp40ColumnasCON;
    procedure Imp40ColumnasDevCompra;
  end;

var
  frmReimpresion: TfrmReimpresion;

implementation

uses RVENTA02, RVENTA00, RVENTA01, RVENTA03, RVENTA32, RVENTA33,
  RVENTA34, RVENTA35, RVENTA36, RVENTA37, RVENTA38, RVENTA39, PVENTA83,
  SIGMA01, RVENTA64, RVENTA65, RVENTA67, RVENTA68, SIGMA00, RVENTA71,
  RVENTA72, RSERV00, RVENTA79, RVENTA85, RVENTA88, RVENTA100, RVENTA115,
  RVENTA122, RVENTA126, RVENTA127, RVENTA128, RVENTA130, RVENTA134;

{$R *.dfm}

procedure TfrmReimpresion.btTipoClick(Sender: TObject);
begin
  search.Query.clear;
  search.Query.add('select tfa_nombre, tfa_codigo');
  search.Query.add('from tiposfactura');
  search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C�digo');
  search.ResultField := 'tfa_codigo';
  search.Title := 'Tipos de factura';
  if search.execute then
  begin
    edTipo.text := search.valuefield;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select tfa_nombre, tfa_selcondi, tfa_formatoimp, tfa_puertoimp');
    dm.Query1.sql.add('from tiposfactura');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and tfa_codigo = :cod');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edTipo.text));
    dm.Query1.open;
    tTipo.text := dm.Query1.fieldbyname('tfa_nombre').asstring;
    edTipo.SetFocus;
  end;
end;

procedure TfrmReimpresion.edTipoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edTipo.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select tfa_nombre, tfa_selcondi, tfa_formatoimp, tfa_puertoimp');
      dm.Query1.sql.add('from tiposfactura');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and tfa_codigo = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edTipo.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        tTipo.text := '';
        showmessage('ESTE TIPO DE FACTURA NO EXISTE');
        edTipo.setfocus;
      end
      else
        tTipo.text := dm.Query1.fieldbyname('tfa_nombre').asstring;
    end;
  end;
end;

procedure TfrmReimpresion.edTipoChange(Sender: TObject);
begin
  if trim(edTipo.text) = '' then tTipo.text := '';
end;

procedure TfrmReimpresion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmReimpresion.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmReimpresion.edGrupoChange(Sender: TObject);
begin
  if (trim(edGrupo.Text) <> 'A') and (trim(edGrupo.Text) <> 'B') then
     edGrupo.Text := '';
end;

procedure TfrmReimpresion.btPrintClick(Sender: TObject);
var
  desem, i, a, maxivo : integer;
  creada : Boolean;
begin
  btPrint.Visible := false;
  case cbDoc.ItemIndex of
  0 : begin // Facturas
  if edtHasta.Visible = False then begin
  i := StrToInt(edNumero.Text);
  maxivo := StrToInt(edNumero.Text);
  edtHasta.Text := edNumero.Text;
  end;
  if edtHasta.Visible = True then begin
  i := StrToInt(edNumero.Text);
  maxivo := StrToInt(edtHasta.Text);
  end;

    if Trim(edNumero.Text)='' then begin
  ShowMessage('Debes indicar el numero de Factura Inicial...');
  edNumero.SetFocus;
  Abort;
  end;
  if Trim(edtHasta.Text)='' then begin
  ShowMessage('Debes indicar el numero de Factura Final...');
  edtHasta.SetFocus;
  Abort;
  end;

  for i:= i to maxivo do begin
        dm.Query1.close;
        dm.Query1.sql.clear;
        dm.Query1.sql.add('select tfa_formatoimp, tfa_puertoimp, tfa_actbalance');
        dm.Query1.sql.add('from tiposfactura');
        dm.Query1.sql.add('where emp_codigo = :emp');
        dm.Query1.sql.add('and tfa_codigo = :cod');
        dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
        dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edTipo.text));
        dm.Query1.open;
        PuertoImp  := dm.Query1.fieldbyname('tfa_puertoimp').asstring;
        FormatoImp := dm.Query1.fieldbyname('tfa_formatoImp').asinteger;
        ActBalance := dm.Query1.fieldbyname('tfa_actbalance').AsString;

      if ((dm.QParametrospar_fac_preimpresa.Value = 'True') AND (dm.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados')) then
          begin
              application.createform(tRFacturaSarita, RFacturaSarita);
              RFacturaSarita.QFactura.Close;
              RFacturaSarita.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
              RFacturaSarita.QFactura.Parameters.ParamByName('tipo').Value   := edTipo.Text;
              RFacturaSarita.QFactura.Parameters.ParamByName('forma').Value  := 'A';
              RFacturaSarita.QFactura.Parameters.ParamByName('numero').Value := edNumero.Text;
              RFacturaSarita.QFactura.Parameters.ParamByName('suc').Value    := DBLookupComboBox2.KeyValue;
              RFacturaSarita.QFactura.open;
              RFacturaSarita.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
              RFacturaSarita.QDetalle.open;
              RFacturaSarita.lbReimpresion.Enabled := True;
            case cbDestino.ItemIndex of
            0:begin
            RFacturaSarita.PrinterSetup;
            RFacturaSarita.Preview;
            RFacturaSarita.Destroy;
            end;
            1:begin
            RFacturaSarita.PrinterSetup;
            RFacturaSarita.Print;
            RFacturaSarita.Destroy;
            end;
            2:begin
            vl_cliente := GetCliente('Facturas','fac_numero');
            vl_atach := 'Factura_No_'+edNumero.Text+'.PDF';
            RFacturaSarita.ExportToFilter(TQRPDFDocumentFilter.Create('.\'+vl_atach));
            EnvioMail(RFacturaSarita,'Factura');
            end;
            end;
      end;


      if ((dm.QParametrospar_fac_preimpresa.Value = 'True') AND (dm.QParametrospar_formato_preimpreso.Value = 'Cepinta')) then
          begin
          qFacturaOrdTaller.Parameters.ParamByName('emp').Value    := DM.vp_cia;
          qFacturaOrdTaller.Parameters.ParamByName('num').Value := edNumero.Text;
          qFacturaOrdTaller.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
          qFacturaOrdTaller.Parameters.ParamByName('tip').Value := edTipo.Text;
          qFacturaOrdTaller.open;
            case cbDestino.ItemIndex of
            0:begin
            if qFacturaOrdTaller.RecordCount = 0 then begin
            application.CreateForm(tRFacturaPreImpresa, RFacturaPreImpresa);
            RFacturaPreImpresa.QFactura.Close;
            RFacturaPreImpresa.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
            RFacturaPreImpresa.QFactura.Parameters.ParamByName('tipo').Value   := StrToInt(Trim(edTipo.Text));
            RFacturaPreImpresa.QFactura.Parameters.ParamByName('forma').Value  := Trim(edGrupo.Text);
            RFacturaPreImpresa.QFactura.Parameters.ParamByName('numero').Value := StrToInt(Trim(edNumero.Text));
            RFacturaPreImpresa.QFactura.Parameters.ParamByName('suc').Value    := DBLookupComboBox2.KeyValue;
            RFacturaPreImpresa.QFactura.open;
            RFacturaPreImpresa.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
            RFacturaPreImpresa.QDetalle.open;
            RFacturaPreImpresa.QRBelkis.PrinterSetup;
            RFacturaPreImpresa.QRBelkis.Preview;
            RFacturaPreImpresa.Release;
            end else
            Rpt_FacOrdTaller.ShowReport();
            end;
            1:begin
            if qFacturaOrdTaller.RecordCount = 0 then begin
            application.CreateForm(tRFacturaPreImpresa, RFacturaPreImpresa);
            RFacturaPreImpresa.QFactura.Close;
            RFacturaPreImpresa.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
            RFacturaPreImpresa.QFactura.Parameters.ParamByName('tipo').Value   := StrToInt(Trim(edTipo.Text));
            RFacturaPreImpresa.QFactura.Parameters.ParamByName('forma').Value  := Trim(edGrupo.Text);
            RFacturaPreImpresa.QFactura.Parameters.ParamByName('numero').Value := StrToInt(Trim(edNumero.Text));
            RFacturaPreImpresa.QFactura.Parameters.ParamByName('suc').Value    := DBLookupComboBox2.KeyValue;
            RFacturaPreImpresa.QFactura.open;
            RFacturaPreImpresa.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
            RFacturaPreImpresa.QDetalle.open;
            RFacturaPreImpresa.QRBelkis.PrinterSetup;
            RFacturaPreImpresa.QRBelkis.Preview;
            RFacturaPreImpresa.Release;
            end else begin
            Rpt_FacOrdTaller.PrepareReport();
            Rpt_FacOrdTaller.Print;
            end;
            end;
            2:begin
            application.CreateForm(tRFacturaPreImpresa, RFacturaPreImpresa);
            RFacturaPreImpresa.QFactura.Close;
            RFacturaPreImpresa.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
            RFacturaPreImpresa.QFactura.Parameters.ParamByName('tipo').Value   := StrToInt(Trim(edTipo.Text));
            RFacturaPreImpresa.QFactura.Parameters.ParamByName('forma').Value  := Trim(edGrupo.Text);
            RFacturaPreImpresa.QFactura.Parameters.ParamByName('numero').Value := StrToInt(Trim(edNumero.Text));
            RFacturaPreImpresa.QFactura.Parameters.ParamByName('suc').Value    := DBLookupComboBox2.KeyValue;
            RFacturaPreImpresa.QFactura.open;
            RFacturaPreImpresa.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
            RFacturaPreImpresa.QDetalle.open;
            vl_cliente := GetCliente('Facturas','fac_numero');
            vl_atach := 'Factura_No_'+edNumero.Text+'.PDF';
            RFacturaSteelTec.ExportToFilter(TQRPDFDocumentFilter.Create('.\'+vl_atach));
            EnvioMail(RFacturaSteelTec,'Factura');
            end;
            end;
      end;

      if ((dm.QParametrospar_fac_preimpresa.Value = 'True') AND (dm.QParametrospar_formato_preimpreso.Value = 'SteelTec')) then
          begin
              application.createform(tRFacturaSteelTec, RFacturaSteelTec);
              RFacturaSteelTec.QFactura.Close;
              RFacturaSteelTec.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
              RFacturaSteelTec.QFactura.Parameters.ParamByName('tipo').Value   := edTipo.Text;
              RFacturaSteelTec.QFactura.Parameters.ParamByName('forma').Value  := 'A';
              RFacturaSteelTec.QFactura.Parameters.ParamByName('numero').Value := edNumero.Text;
              RFacturaSteelTec.QFactura.Parameters.ParamByName('suc').Value    := DBLookupComboBox2.KeyValue;
              RFacturaSteelTec.QFactura.open;
              RFacturaSteelTec.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
              RFacturaSteelTec.QDetalle.open;
              RFacturaSteelTec.lbReimpresion.Enabled := True;
            case cbDestino.ItemIndex of
            0:begin
            RFacturaSteelTec.PrinterSetup;
            RFacturaSteelTec.Preview;
            RFacturaSteelTec.Destroy;
            end;
            1:begin
            RFacturaSteelTec.PrinterSetup;
            RFacturaSteelTec.Print;
            RFacturaSteelTec.Destroy;
            end;
            2:begin
            vl_cliente := GetCliente('Facturas','fac_numero');
            vl_atach := 'Factura_No_'+edNumero.Text+'.PDF';
            RFacturaSteelTec.ExportToFilter(TQRPDFDocumentFilter.Create('.\'+vl_atach));
            EnvioMail(RFacturaSteelTec,'Factura');
            end;
            end;
      end;
      

      if ((dm.QParametrospar_fac_preimpresa.Value = 'True') AND (dm.QParametrospar_formato_preimpreso.Value = 'Caceres&Equipos')) then
          begin
              application.createform(TRFacturaCaceresEquipos, RFacturaCaceresEquipos);
      RFacturaCaceresEquipos.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
      RFacturaCaceresEquipos.QFactura.Parameters.ParamByName('tipo').Value   := StrToInt(edTipo.Text);
      RFacturaCaceresEquipos.QFactura.Parameters.ParamByName('forma').Value  := 'A';
      RFacturaCaceresEquipos.QFactura.Parameters.ParamByName('numero').Value := edNumero.Text;
      RFacturaCaceresEquipos.QFactura.Parameters.ParamByName('suc').Value    := DBLookupComboBox2.KeyValue;
      RFacturaCaceresEquipos.QFactura.open;
      RFacturaCaceresEquipos.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      RFacturaCaceresEquipos.QDetalle.open;
      RFacturacaceresEquipos.lbReimpresion.Enabled := True;
      case cbDestino.ItemIndex of
      0:begin
      RFacturaCaceresEquipos.PrinterSetup;
      RFacturaCaceresEquipos.Preview;
      RFacturaCaceresEquipos.Destroy;
      end;
      1:begin
      RFacturaCaceresEquipos.PrinterSetup;
      RFacturaCaceresEquipos.Print;
      RFacturaCaceresEquipos.Destroy;
      end;
      2:begin
      vl_cliente := GetCliente('Facturas','fac_numero');
      vl_atach := 'Factura_No_'+edNumero.Text+'.PDF';
      RFacturaCaceresEquipos.ExportToFilter(TQRPDFDocumentFilter.Create('.\'+vl_atach));
      EnvioMail(RFacturaCaceresEquipos,'Factura');
      end;
      end;
      end;

      if ((dm.QParametrospar_fac_preimpresa.Value = 'True') AND (dm.QParametrospar_formato_preimpreso.Value = 'Caceres&Equipos')) then
          begin
      application.createform(tRFacturaFUNDGRUBEL, RFacturaFUNDGRUBEL);
      RFacturaFUNDGRUBEL.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
      RFacturaFUNDGRUBEL.QFactura.Parameters.ParamByName('tipo').Value   := StrToInt(edTipo.Text);
      RFacturaFUNDGRUBEL.QFactura.Parameters.ParamByName('forma').Value  := 'A';
      RFacturaFUNDGRUBEL.QFactura.Parameters.ParamByName('numero').Value := edNumero.Text;
      RFacturaFUNDGRUBEL.QFactura.Parameters.ParamByName('suc').Value    := DBLookupComboBox2.KeyValue;
      RFacturaFUNDGRUBEL.QFactura.open;
      RFacturaFUNDGRUBEL.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      RFacturaFUNDGRUBEL.QDetalle.open;
      RFacturaFUNDGRUBEL.PrinterSetup;
      RFacturaFUNDGRUBEL.lbReimpresion.Enabled := True;
      case cbDestino.ItemIndex of
      0:begin
      RFacturaFUNDGRUBEL.PrinterSetup;
      RFacturaFUNDGRUBEL.Preview;
      RFacturaFUNDGRUBEL.Destroy;
      end;
      1:begin
      RFacturaFUNDGRUBEL.PrinterSetup;
      RFacturaFUNDGRUBEL.Print;
      RFacturaFUNDGRUBEL.Destroy;
      end;
      2:begin
      vl_cliente := GetCliente('Facturas','fac_numero');
      vl_atach := 'Factura_No_'+edNumero.Text+'.PDF';
      RFacturaFUNDGRUBEL.ExportToFilter(TQRPDFDocumentFilter.Create('.\'+vl_atach));
      EnvioMail(RFacturaFUNDGRUBEL,'Factura');
      end;
      end;
      end;



        if (dm.QParametrospar_fac_preimpresa.Value = 'True') and (dm.QParametrospar_formato_preimpreso.Value <> 'QRAgregados')
        and (dm.QParametrospar_formato_preimpreso.Value <> 'Grabado_Exento') and
        ((DM.QParametrospar_formato_preimpreso.Value <> 'Sarita & Asociados') or
         (dm.QParametrospar_formato_preimpreso.Value = 'SteelTec')) then
        begin
          application.CreateForm(tRFacturaPreImpresa, RFacturaPreImpresa);
          RFacturaPreImpresa.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
          RFacturaPreImpresa.QFactura.Parameters.ParamByName('tipo').Value   := StrToInt(Trim(edTipo.Text));
          RFacturaPreImpresa.QFactura.Parameters.ParamByName('forma').Value  := Trim(edGrupo.Text);
          RFacturaPreImpresa.QFactura.Parameters.ParamByName('numero').Value := StrToInt(Trim(edNumero.Text));
          RFacturaPreImpresa.QFactura.Parameters.ParamByName('suc').Value    := DBLookupComboBox2.KeyValue;
          RFacturaPreImpresa.QFactura.open;
          RFacturaPreImpresa.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
          RFacturaPreImpresa.QDetalle.open;

          if dm.QParametrospar_formato_preimpreso.Value = 'QRBelkis' then
          begin
            case cbDestino.ItemIndex of
            0:begin
            RFacturaPreImpresa.QRBelkis.Preview;
            RFacturaPreImpresa.Release;
            end;
            1:begin
            if dm.QParametrosPAR_PREGUNTAPEQ.Value = 'True' then
             if MessageDLG('DESEA IMPRIMIR EN IMPRESORA PEQUE�A?',mtConfirmation,
             [mbyes,mbno],0) = mryes then
             Imp40ColumnasFac else begin
            RFacturaPreImpresa.QRBelkis.PrinterSetup;
            RFacturaPreImpresa.QRBelkis.Print;
            RFacturaPreImpresa.Release;
            end;
            end;
            2:begin
            vl_cliente := GetCliente('Facturas','fac_numero');
            vl_atach := 'Factura_No_'+edNumero.Text+'.PDF';
            RFacturaPreImpresa.QRBelkis.ExportToFilter(TQRPDFDocumentFilter.Create('.\'+vl_atach));
            EnvioMail(RFacturaPreImpresa.QRBelkis,'Factura');
            end;
            end;

          end
          else
                      //Norma 201806 Normal
                      if dm.QParametrospar_formato_preimpreso.Value = 'Norma 201806 Normal' then
                      begin
                        with RFacturaPreImpresa.QNorma201806 do begin
                        Close;
                        Parameters.ParamByName('emp').Value    := dm.vp_cia;
                        Parameters.ParamByName('tipo').Value   := StrToInt(Trim(edTipo.Text));
                        Parameters.ParamByName('numero').Value := StrToInt(Trim(edNumero.Text));
                        Parameters.ParamByName('suc').Value    := DBLookupComboBox2.KeyValue;
                        Open;
                        if RFacturaPreImpresa.QNorma201806.IsEmpty then begin
                          ShowMessage('No existen datos para la impresion....');
                          Abort;
                        end;
                        if not RFacturaPreImpresa.QNorma201806.IsEmpty then begin
                        IF cbDestino.ItemIndex = 0 THEN
                          RFacturaPreImpresa.Rpt_ReImpresionFact.ShowReport() ELSE
                          BEGIN
                            RFacturaPreImpresa.Rpt_ReImpresionFact.PrepareReport(True);
                            RFacturaPreImpresa.Rpt_ReImpresionFact.Print
                          end;
                        end;
                        end;
                        RFacturaPreImpresa.Release;
                      end
                      else
                      if dm.QParametrospar_formato_preimpreso.Value = 'QRSoloAutos' then
                      begin
            case cbDestino.ItemIndex of
            0:begin
            RFacturaPreImpresa.QRSoloAutos.Preview;
            RFacturaPreImpresa.Release;
            end;
            1:begin
            if dm.QParametrosPAR_PREGUNTAPEQ.Value = 'True' then
             if MessageDLG('DESEA IMPRIMIR EN IMPRESORA PEQUE�A?',mtConfirmation,
             [mbyes,mbno],0) = mryes then
             Imp40ColumnasFac else begin
            RFacturaPreImpresa.QRSoloAutos.print;
            RFacturaPreImpresa.QRSoloAutos.PrinterSetup;
            RFacturaPreImpresa.Release;
            end;
            end;
            2:begin
            vl_cliente := GetCliente('Facturas','fac_numero');
            vl_atach := 'Factura_No_'+edNumero.Text+'.PDF';
            RFacturaPreImpresa.QRSoloAutos.ExportToFilter(TQRPDFDocumentFilter.Create('.\'+vl_atach));
            EnvioMail(RFacturaPreImpresa.QRSoloAutos,'Factura');
            end;
            end;

          end
          else if dm.QParametrospar_formato_preimpreso.Value = 'QRBB' then
          begin
            case cbDestino.ItemIndex of
            0:begin
            RFacturaPreImpresa.lbReimpresion.Enabled := True;
            RFacturaPreImpresa.QRBB.Preview;
            RFacturaPreImpresa.Release;
            end;
            1:begin
            if dm.QParametrosPAR_PREGUNTAPEQ.Value = 'True' then
             if MessageDLG('DESEA IMPRIMIR EN IMPRESORA PEQUE�A?',mtConfirmation,
             [mbyes,mbno],0) = mryes then
             Imp40ColumnasFac else begin
            RFacturaPreImpresa.lbReimpresion.Enabled := True;
            RFacturaPreImpresa.QRBB.PrinterSetup;
            RFacturaPreImpresa.QRBB.Print;
            RFacturaPreImpresa.Release;
            end;
            end;
            2:begin
            vl_cliente := GetCliente('Facturas','fac_numero');
            vl_atach := 'Factura_No_'+edNumero.Text+'.PDF';
            RFacturaPreImpresa.QRBB.ExportToFilter(TQRPDFDocumentFilter.Create('.\'+vl_atach));
            EnvioMail(RFacturaPreImpresa.QRBB,'Factura');
            end;
            end;

          end
          else if dm.QParametrospar_formato_preimpreso.Value = 'QRThorton' then
          begin
            case cbDestino.ItemIndex of
            0:begin
            RFacturaPreImpresa.QFactura.Close;
            RFacturaPreImpresa.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
            RFacturaPreImpresa.QFactura.Parameters.ParamByName('tipo').Value   := edTipo.Text;
            RFacturaPreImpresa.QFactura.Parameters.ParamByName('forma').Value  := 'A';
            RFacturaPreImpresa.QFactura.Parameters.ParamByName('numero').Value := edNumero.Text;
            RFacturaPreImpresa.QFactura.Parameters.ParamByName('suc').Value    := DBLookupComboBox2.KeyValue;
            RFacturaPreImpresa.QFactura.open;
            IF RFacturaPreImpresa.QFactura.RecordCount > 0 THEN begin
            RFacturaPreImpresa.QDetalle.Close;
            RFacturaPreImpresa.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
            RFacturaPreImpresa.QDetalle.open;
            RFacturaPreImpresa.vl_reimpresa := 1;
            RFacturaPreImpresa.Rpt_Thorton.ShowReport();
            //RFacturaPreImpresa.QRTHorton.PrinterSetup;
            //RFacturaPreImpresa.QRTHorton.Preview;
            RFacturaPreImpresa.Release;
            end;
            end;
            1:begin
            if dm.QParametrosPAR_PREGUNTAPEQ.Value = 'True' then
             if MessageDLG('DESEA IMPRIMIR EN IMPRESORA PEQUE�A?',mtConfirmation,
             [mbyes,mbno],0) = mryes then
             Imp40ColumnasFac else begin
            RFacturaPreImpresa.QFactura.Close;
            RFacturaPreImpresa.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
            RFacturaPreImpresa.QFactura.Parameters.ParamByName('tipo').Value   := edTipo.Text;
            RFacturaPreImpresa.QFactura.Parameters.ParamByName('forma').Value  := 'A';
            RFacturaPreImpresa.QFactura.Parameters.ParamByName('numero').Value := edNumero.Text;
            RFacturaPreImpresa.QFactura.Parameters.ParamByName('suc').Value    := DBLookupComboBox2.KeyValue;
            RFacturaPreImpresa.QFactura.open;
            IF RFacturaPreImpresa.QFactura.RecordCount > 0 THEN begin
            RFacturaPreImpresa.QDetalle.Close;
            RFacturaPreImpresa.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
            RFacturaPreImpresa.QDetalle.open;
            RFacturaPreImpresa.Rpt_Thorton.PrepareReport();
            RFacturaPreImpresa.Rpt_Thorton.Print();
            //RFacturaPreImpresa.QRTHorton.PrinterSetup;
            //RFacturaPreImpresa.QRTHorton.Preview;
            RFacturaPreImpresa.Release;
            end;
            end;
            end;
            2:BEGIN
            RFacturaPreImpresa.QFactura.Close;
            RFacturaPreImpresa.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
            RFacturaPreImpresa.QFactura.Parameters.ParamByName('tipo').Value   := edTipo.Text;
            RFacturaPreImpresa.QFactura.Parameters.ParamByName('forma').Value  := 'A';
            RFacturaPreImpresa.QFactura.Parameters.ParamByName('numero').Value := edNumero.Text;
            RFacturaPreImpresa.QFactura.Parameters.ParamByName('suc').Value    := DBLookupComboBox2.KeyValue;
            RFacturaPreImpresa.QFactura.open;
            IF RFacturaPreImpresa.QFactura.RecordCount > 0 THEN begin
            RFacturaPreImpresa.QDetalle.Close;
            RFacturaPreImpresa.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
            RFacturaPreImpresa.QDetalle.open;
            vl_atach := '.\Factura_No_'+edNumero.Text+'.PDF';
            RFacturaPreImpresa.frxPDFExport1.FileName := vl_atach;
            RFacturaPreImpresa.Rpt_Thorton.PrepareReport();
            RFacturaPreImpresa.Rpt_Thorton.Export(RFacturaPreImpresa.frxPDFExport1);
            frmMain.EnviarCorreo(vl_destino,'Envio Factura_No_'+edNumero.Text+'_'+vl_cliente,vl_atach,mmo1.Lines.GetText);
            RFacturaPreImpresa.Release;
            end;
            end;
            end;

          end
          else if dm.QParametrospar_formato_preimpreso.Value = 'QRMadeco' then
          begin
            case cbDestino.ItemIndex of
            0:begin
            RFacturaPreImpresa.QRMadeco.Preview;
            RFacturaPreImpresa.Release;
            end;
            1:begin
            if dm.QParametrosPAR_PREGUNTAPEQ.Value = 'True' then
             if MessageDLG('DESEA IMPRIMIR EN IMPRESORA PEQUE�A?',mtConfirmation,
             [mbyes,mbno],0) = mryes then
             Imp40ColumnasFac else begin
            RFacturaPreImpresa.QRMadeco.PrinterSetup;
            RFacturaPreImpresa.QRMadeco.Print;
            RFacturaPreImpresa.Release;
            end;
            end;
            2:begin
            vl_cliente := GetCliente('Facturas','fac_numero');
            vl_atach := 'Factura_No_'+edNumero.Text+'.PDF';
            RFacturaPreImpresa.QRMadeco.ExportToFilter(TQRPDFDocumentFilter.Create('.\'+vl_atach));
            EnvioMail(RFacturaPreImpresa.QRMadeco,'Factura');
            end;
            end;

          end
          else if dm.QParametrospar_formato_preimpreso.Value = 'QRMSConsulting' then
          begin
            case cbDestino.ItemIndex of
            0:begin
            RFacturaPreImpresa.QRMSConsulting.Preview;
            RFacturaPreImpresa.Release;
            end;
            1:begin
            if dm.QParametrosPAR_PREGUNTAPEQ.Value = 'True' then
             if MessageDLG('DESEA IMPRIMIR EN IMPRESORA PEQUE�A?',mtConfirmation,
             [mbyes,mbno],0) = mryes then
             Imp40ColumnasFac else begin
            RFacturaPreImpresa.QRMSConsulting.PrinterSetup;
            RFacturaPreImpresa.QRMSConsulting.Print;
            RFacturaPreImpresa.Release;
            end;
            end;
            2:begin
            vl_cliente := GetCliente('Facturas','fac_numero');
            vl_atach := 'Factura_No_'+edNumero.Text+'.PDF';
            RFacturaPreImpresa.QRMSConsulting.ExportToFilter(TQRPDFDocumentFilter.Create('.\'+vl_atach));
            EnvioMail(RFacturaPreImpresa.QRMSConsulting,'Factura');
            end;
            end;
            END
          else if dm.QParametrospar_formato_preimpreso.Value = 'QRImpresosDuran' then
          begin
            case cbDestino.ItemIndex of
            0:begin
            RFacturaPreImpresa.QRImpresosDuran.Preview;
            RFacturaPreImpresa.Release;
            end;
            1:begin
            if dm.QParametrosPAR_PREGUNTAPEQ.Value = 'True' then
             if MessageDLG('DESEA IMPRIMIR EN IMPRESORA PEQUE�A?',mtConfirmation,
             [mbyes,mbno],0) = mryes then
             Imp40ColumnasFac else begin
            RFacturaPreImpresa.QRImpresosDuran.PrinterSetup;
            RFacturaPreImpresa.QRImpresosDuran.Print;
            RFacturaPreImpresa.Release;
            end;
            end;
            2:begin
            vl_cliente := GetCliente('Facturas','fac_numero');
            vl_atach := 'Factura_No_'+edNumero.Text+'.PDF';
            RFacturaPreImpresa.QRImpresosDuran.ExportToFilter(TQRPDFDocumentFilter.Create('.\'+vl_atach));
            EnvioMail(RFacturaPreImpresa.QRImpresosDuran,'Factura');
            end;
            end;

          end
          else if dm.QParametrospar_formato_preimpreso.Value = 'QClinico' then
          begin
            application.createform(tRFactura, RFactura);
            RFactura.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
            RFactura.QFactura.Parameters.ParamByName('tipo').Value   := StrToInt(Trim(edTipo.Text));
            RFactura.QFactura.Parameters.ParamByName('forma').Value   := Trim(edGrupo.Text);
            RFactura.QFactura.Parameters.ParamByName('numero').Value := StrToInt(Trim(edNumero.Text));
            RFactura.QFactura.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
            RFactura.QFactura.open;
            RFactura.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
            RFactura.QDetalle.open;
            case cbDestino.ItemIndex of
            0:begin
            RFactura.lbReimpresion.Enabled := True;
            RFactura.Preview;
            RFactura.Destroy;
            end;
            1:begin
            if dm.QParametrosPAR_PREGUNTAPEQ.Value = 'True' then
             if MessageDLG('DESEA IMPRIMIR EN IMPRESORA PEQUE�A?',mtConfirmation,
             [mbyes,mbno],0) = mryes then
             Imp40ColumnasFac else begin
            RFactura.lbReimpresion.Enabled := True;
            RFactura.PrinterSetup;
            RFactura.Print;
            RFactura.Destroy;
            end;
            end;
            2:begin
            vl_cliente := GetCliente('Facturas','fac_numero');
            vl_atach := 'Factura_No_'+edNumero.Text+'.PDF';
            RFactura.ExportToFilter(TQRPDFDocumentFilter.Create('.\'+vl_atach));
            EnvioMail(RFactura,'Factura');
            end;
            end;

            end;

            if ((dm.QParametrospar_fac_preimpresa.Value = 'True') AND (dm.QParametrospar_formato_preimpreso.Value = 'QClinico')) then begin
            if MessageDlg('Desea imprimir el detalle de facturas y records?',mtConfirmation, [mbyes,mbno], 0) = mryes then
            begin
              application.createform(tRFacturaClinico, RFacturaClinico);
              RFacturaClinico.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
              RFacturaClinico.QFactura.Parameters.ParamByName('tipo').Value   := StrToInt(Trim(edTipo.Text));
              RFacturaClinico.QFactura.Parameters.ParamByName('forma').Value  := Trim(edGrupo.Text);
              RFacturaClinico.QFactura.Parameters.ParamByName('numero').Value := StrToInt(Trim(edNumero.Text));
              RFacturaClinico.QFactura.Parameters.ParamByName('suc').Value    := DBLookupComboBox2.KeyValue;
              RFacturaClinico.QFactura.open;
            case cbDestino.ItemIndex of
            0:begin
            RFacturaClinico.Preview;
            end;
            1:begin
            if dm.QParametrosPAR_PREGUNTAPEQ.Value = 'True' then
             if MessageDLG('DESEA IMPRIMIR EN IMPRESORA PEQUE�A?',mtConfirmation,
             [mbyes,mbno],0) = mryes then
             Imp40ColumnasFac else begin
            RFacturaClinico.PrinterSetup;
            RFacturaClinico.Print;
            end;
            end;
            end;
            RFacturaClinico.Destroy;
            end;
            end;
        end
          else
        if (dm.QParametrospar_fac_preimpresa.Value = 'True') and (dm.QParametrospar_formato_preimpreso.Value = 'Grabado_Exento') then
        begin
          application.createform(tRFacturaGrabadoExento, RFacturaGrabadoExento);
          RFacturaGrabadoExento.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
          RFacturaGrabadoExento.QFactura.Parameters.ParamByName('tipo').Value   := StrToInt(Trim(edTipo.Text));
          RFacturaGrabadoExento.QFactura.Parameters.ParamByName('forma').Value  := Trim(edGrupo.Text);
          RFacturaGrabadoExento.QFactura.Parameters.ParamByName('numero').Value := StrToInt(Trim(edNumero.Text));
          RFacturaGrabadoExento.QFactura.Parameters.ParamByName('suc').Value    := DBLookupComboBox2.KeyValue;
          RFacturaGrabadoExento.QFactura.open;
          RFacturaGrabadoExento.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
          RFacturaGrabadoExento.QDetalle.open;
          case cbDestino.ItemIndex of
            0:begin
            RFacturaGrabadoExento.Preview;
            RFacturaGrabadoExento.destroy;
            end;
            1:begin
            if dm.QParametrosPAR_PREGUNTAPEQ.Value = 'True' then
             if MessageDLG('DESEA IMPRIMIR EN IMPRESORA PEQUE�A?',mtConfirmation,
             [mbyes,mbno],0) = mryes then
             Imp40ColumnasFac else begin
            RFacturaGrabadoExento.PrinterSetup;
            RFacturaGrabadoExento.Print;
            RFacturaGrabadoExento.destroy;
            end;
            end;
            2:begin
            vl_cliente := GetCliente('Facturas','fac_numero');
            vl_atach := 'Factura_No_'+edNumero.Text+'.PDF';
            RFacturaGrabadoExento.ExportToFilter(TQRPDFDocumentFilter.Create('.\'+vl_atach));
            EnvioMail(RFacturaGrabadoExento,'Factura');
            end;
          end;
          end
          else
          begin
            //Jhonattan Julio 2021
          if FormatoImp = 2 then
          begin
            if (DM.QParametrospar_fac_preimpresa.Value = 'False')  then begin
            application.createform(tRFactura, RFactura);
            RFactura.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
            RFactura.QFactura.Parameters.ParamByName('tipo').Value   := StrToInt(Trim(edTipo.Text));
            RFactura.QFactura.Parameters.ParamByName('forma').Value   := Trim(edGrupo.Text);
            RFactura.QFactura.Parameters.ParamByName('numero').Value := StrToInt(Trim(edNumero.Text));
            RFactura.QFactura.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
            RFactura.QFactura.open;
            RFactura.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
            RFactura.QDetalle.open;
            RFactura.lbReimpresion.Enabled := True;
            case cbDestino.ItemIndex of
            0:begin
            RFactura.Preview;
            RFactura.Destroy;
            end;
            1:begin
            if dm.QParametrosPAR_PREGUNTAPEQ.Value = 'True' then
             if MessageDLG('DESEA IMPRIMIR EN IMPRESORA PEQUE�A?',mtConfirmation,
             [mbyes,mbno],0) = mryes then
             Imp40ColumnasFac else begin
            RFactura.PrinterSetup;
            RFactura.Print;
            RFactura.Destroy;
            end;
            end;
            2:begin
            vl_cliente := GetCliente('Facturas','fac_numero');
            vl_atach := 'Factura_No_'+edNumero.Text+'.PDF';
            RFactura.ExportToFilter(TQRPDFDocumentFilter.Create('.\'+vl_atach));
            EnvioMail(RFactura,'Factura');
            end;
            end;
            end;


          end
          else if FormatoImp = 3 then
          begin
            application.createform(tRFactura, RFactura);
            RFactura.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
            RFactura.QFactura.Parameters.ParamByName('tipo').Value   := StrToInt(Trim(edTipo.Text));
            RFactura.QFactura.Parameters.ParamByName('forma').Value   := Trim(edGrupo.Text);
            RFactura.QFactura.Parameters.ParamByName('numero').Value := StrToInt(Trim(edNumero.Text));
            RFactura.QFactura.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
            RFactura.QFactura.open;
            RFactura.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
            RFactura.QDetalle.open;
            RFactura.QFormasPago.open;
          if MessageDlg('Desea imprimir en impresora grande?',mtConfirmation,[mbyes,mbno],0) = mryes then
              begin
          case cbDestino.ItemIndex of
            0:begin
            RFactura.Preview;
            RFactura.Destroy;
            end;
            1:begin
            if dm.QParametrosPAR_PREGUNTAPEQ.Value = 'True' then
             if MessageDLG('DESEA IMPRIMIR EN IMPRESORA PEQUE�A?',mtConfirmation,
             [mbyes,mbno],0) = mryes then
             Imp40ColumnasFac else begin
            RFactura.PrinterSetup;
            RFactura.Print;
            RFactura.Destroy;
            end;
            end;
            2:begin
            vl_cliente := GetCliente('Facturas','fac_numero');
            vl_atach := 'Factura_No_'+edNumero.Text+'.PDF';
            RFactura.ExportToFilter(TQRPDFDocumentFilter.Create('.\'+vl_atach));
            EnvioMail(RFactura,'Factura');
            end;
          end;

              end
              else
                Imp40ColumnasFac;
          end
          else if FormatoImp = 4 then
          begin
            application.createform(tRFacturaElegante, RFacturaElegante);
            RFacturaElegante.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
            RFacturaElegante.QFactura.Parameters.ParamByName('tipo').Value   := StrToInt(Trim(edTipo.Text));
            RFacturaElegante.QFactura.Parameters.ParamByName('forma').Value   := Trim(edGrupo.Text);
            RFacturaElegante.QFactura.Parameters.ParamByName('numero').Value := StrToInt(Trim(edNumero.Text));
            RFacturaElegante.QFactura.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
            RFacturaElegante.QFactura.open;
            RFacturaElegante.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
            RFacturaElegante.QDetalle.open;
            RFacturaElegante.lbReimpresion.Enabled := True;
            case cbDestino.ItemIndex of
            0:begin
            RFacturaElegante.Preview;
            RFacturaElegante.Destroy;
            end;
            1:begin
            if dm.QParametrosPAR_PREGUNTAPEQ.Value = 'True' then
             if MessageDLG('DESEA IMPRIMIR EN IMPRESORA PEQUE�A?',mtConfirmation,
             [mbyes,mbno],0) = mryes then
             Imp40ColumnasFac else begin
            RFacturaElegante.PrinterSetup;
            RFacturaElegante.Print;
            RFacturaElegante.Destroy;
            end;
            end;
            2:begin
            vl_cliente := GetCliente('Facturas','fac_numero');
            vl_atach := 'Factura_No_'+edNumero.Text+'.PDF';
            RFacturaElegante.ExportToFilter(TQRPDFDocumentFilter.Create('.\'+vl_atach));
            EnvioMail(RFacturaElegante,'Factura');
            end;
            end;

            end
            else if FormatoImp = 5 then
            begin
            application.createform(tRFactura2Columnas, RFactura2Columnas);
            RFactura2Columnas.QFactura.Parameters.ParamByName('emp').Value    := dm.vp_cia;
            RFactura2Columnas.QFactura.Parameters.ParamByName('tipo').Value   := StrToInt(Trim(edTipo.Text));
            RFactura2Columnas.QFactura.Parameters.ParamByName('forma').Value   := Trim(edGrupo.Text);
            RFactura2Columnas.QFactura.Parameters.ParamByName('numero').Value := StrToInt(Trim(edNumero.Text));
            RFactura2Columnas.QFactura.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
            RFactura2Columnas.QFactura.open;
            RFactura2Columnas.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
            RFactura2Columnas.QDetalle.open;
            RFactura2Columnas.lbReimpresion.Enabled := True;
            case cbDestino.ItemIndex of
            0:begin
            RFactura2Columnas.Preview;
            RFactura2Columnas.Destroy;
            end;
            1:begin
            if dm.QParametrosPAR_PREGUNTAPEQ.Value = 'True' then
             if MessageDLG('DESEA IMPRIMIR EN IMPRESORA PEQUE�A?',mtConfirmation,
             [mbyes,mbno],0) = mryes then
             Imp40ColumnasFac else begin
            RFactura2Columnas.PrinterSetup;
            RFactura2Columnas.Print;
            RFactura2Columnas.Destroy;
            end;
            end;
            end;

      end;
      end;
      end;
      end;



  1 : begin //Pedidos de Clientes
        application.createform(tRPedido, RPedido);
        RPedido.QPedido.close;
        RPedido.QPedido.Parameters.parambyname('numero').Value := StrToInt(Trim(edNumero.Text));
        RPedido.QPedido.Parameters.parambyname('suc').Value    := DBLookupComboBox2.KeyValue;
        RPedido.QPedido.open;
        RPedido.QDetalle.open;
        RPedido.lbReimpresion.Enabled := True;
        case cbDestino.ItemIndex of
        0:begin
        RPedido.Preview;
        end;
        1:begin
        RPedido.printersetup;
        RPedido.Preview;
        end;
        //2:EnvioMail(RPedido,'Pedido');
        end;
        RPedido.destroy;
        end;
        

  2 : begin //Pedidos a Proveedores
        if dm.QParametrospar_fac_preimpresa.Value = 'True' then
        begin
          if dm.QParametrospar_formato_preimpreso.Value = 'QRThorton' then
          begin
            application.createform(tRPedidoSup_Preimpreso, RPedidoSup_Preimpreso);
            RPedidoSup_Preimpreso.QPedido.close;
            RPedidoSup_Preimpreso.QPedido.Parameters.parambyname('numero').Value := StrToInt(Trim(edNumero.Text));
            RPedidoSup_Preimpreso.QPedido.Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;
            RPedidoSup_Preimpreso.QPedido.open;
            RPedidoSup_Preimpreso.QDetalle.open;
            RPedidoSup_Preimpreso.idioma := UpperCase(copy(cbidioma.Text,1,2));
            //case cbDestino.ItemIndex of
            //2:EnvioMail(RPedidoSup,'Pedido Proveedor');
            //end;
            RPedidoSup_Preimpreso.release;
            end
            else
            begin
              case cbDestino.ItemIndex of
              0:RPedidoSup_Preimpreso.QRTHorton.preview;
              1:begin
              RPedidoSup_Preimpreso.QRTHorton.printersetup;
              RPedidoSup_Preimpreso.QRTHorton.Print;
              end;
              end;
              RPedidoSup_Preimpreso.release;
            end;
          end
          else
          begin
            application.createform(tRPedidoSup, RPedidoSup);
            RPedidoSup.QPedido.close;
            RPedidoSup.QPedido.Parameters.parambyname('numero').Value := StrToInt(Trim(edNumero.Text));
            RPedidoSup.QPedido.Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;
            RPedidoSup.QPedido.open;
            RPedidoSup.QDetalle.open;
            case cbDestino.ItemIndex of
            0:begin
            RPedidoSup.preview;
            end;
            1:begin
            RPedidoSup.printersetup;
            RPedidoSup.preview;
            end;
            //2:EnvioMail(RPedidoSup,'Pedido Suplidor');
            end;
            RPedidoSup.Destroy;
            end;
            end;
  3 : begin //Nota de Credito
        Application.CreateForm(tRNotaCredito, RNotaCredito);
        RNotaCredito.QNota.Parameters.ParamByName('numero').Value := StrToInt(Trim(edNumero.Text));
        RNotaCredito.QNota.Parameters.ParamByName('suc').Value    := DBLookupComboBox2.KeyValue;
        RNotaCredito.QNota.Open;
        RNotaCredito.lbReimpresion.Enabled := True;
        if dm.QParametrosPAR_FORMATONC.Value = 2 then begin
        case cbDestino.ItemIndex of
        0:begin
        RNotaCredito.Preview;
        end;
        1:begin
        RNotaCredito.PrinterSetup;
        RNotaCredito.Print;
        end;
        2:Begin
        vl_cliente := GetCliente('notascredito','ncr_numero');
        vl_atach := 'NotadeCredito_No_'+edNumero.Text+'.PDF';
        RNotaCredito.ExportToFilter(TQRPDFDocumentFilter.Create('.\'+vl_atach));
        EnvioMail(RNotaCredito,'Nota Credito');
        end;
        end;
        RNotaCredito.destroy;
        end else
        begin
        case cbDestino.ItemIndex of
        0,1:Imp40ColumnasNC;
        2:begin
        vl_cliente := GetCliente('notascredito','ncr_numero');
        vl_atach := 'NotadeCredito_No_'+edNumero.Text+'.PDF';
        RNotaCredito.ExportToFilter(TQRPDFDocumentFilter.Create('.\'+vl_atach));
        EnvioMail(RNotaCredito,'Nota de Credito');
        end;
        end;
        RNotaCredito.destroy;
        end;
        end;
  4 : begin //Nota de Debito
        Application.CreateForm(tRNotaDebito, RNotaDebito);
        RNotaDebito.QNota.Parameters.ParamByName('numero').Value := StrToInt(Trim(edNumero.Text));
        RNotaDebito.QNota.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
        RNotaDebito.QNota.Open;
        RNotaDebito.lbReimpresion.Enabled := True;
        if dm.QParametrosPAR_FORMATOND.Value = 2 then
        begin
          case cbDestino.ItemIndex of
          0:begin
          RNotaDebito.Preview;
          end;
          1:begin
          RNotaDebito.PrinterSetup;
          RNotaDebito.Print;
          end;
          2:begin
          vl_cliente := GetCliente('notasdebito','nde_numero');
          vl_atach := 'NotadeDebito_No_'+edNumero.Text+'.PDF';
          RNotaDebito.ExportToFilter(TQRPDFDocumentFilter.Create('.\'+vl_atach));
          EnvioMail(RNotaDebito,'Nota de Debito');
          end;
          end;

        end
        else
        begin
          case cbDestino.ItemIndex of
          0,1:Imp40ColumnasND;
          2:begin
          vl_cliente := GetCliente('notasdebito','nde_numero');
          vl_atach := 'NotadeDebito_No_'+edNumero.Text+'.PDF';
          RNotaDebito.ExportToFilter(TQRPDFDocumentFilter.Create('.\'+vl_atach));
          EnvioMail(RNotaDebito,'Nota de Debito');
          end;
          end;
        end;
        RNotaDebito.destroy;
      end;
  5 : begin //Devolucion
        if dm.QParametrospar_fac_preimpresa.Value = 'False' then
        begin
          application.createform(tRDevolucion, RDevolucion);
          RDevolucion.QDevolucion.Close;
          RDevolucion.QDevolucion.Parameters.ParamByName('emp_codigo').Value := dm.vp_cia;
          RDevolucion.QDevolucion.Parameters.ParamByName('numero').Value     := StrToInt(Trim(edNumero.Text));
          RDevolucion.QDevolucion.Parameters.ParamByName('suc').Value        := DBLookupComboBox2.KeyValue;
          RDevolucion.QDevolucion.open;
          RDevolucion.QDetalle.Close;
          RDevolucion.QDetalle.Parameters.ParamByName('dev_numero').Value := RDevolucion.QDevolucionDEV_NUMERO.Value;
          RDevolucion.QDetalle.Parameters.ParamByName('suc_codigo').Value := RDevolucion.QDevolucionsuc_codigo.Value;
          RDevolucion.QDetalle.Parameters.ParamByName('emp_codigo').Value := RDevolucion.QDevolucionEMP_CODIGO.Value;
          RDevolucion.QDetalle.open;
          RDevolucion.lbReimpresion.Enabled := True;

          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('select dev_numero from desembolsos');
          dm.Query1.SQL.Add('where emp_Codigo = :emp');
          dm.Query1.SQL.Add('and dev_numero = :num');
          dm.Query1.SQL.Add('and suc_codigo = :suc');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
          dm.Query1.Parameters.ParamByName('num').Value := StrToInt(Trim(edNumero.Text));
          dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
          dm.Query1.Open;
          Desem := dm.Query1.FieldByName('dev_numero').asinteger;
          if dm.QParametrosPAR_FORMATODEV.Value = 2 then
          begin
            case cbDestino.ItemIndex of
            0:begin
            RDevolucion.Preview;
            end;
            1:begin
            RDevolucion.PrinterSetup;
            RDevolucion.Print;
            end;
            //2:EnvioMail(RDevolucion,'Devolucion');
            end;
          end
          else
          begin
            case cbDestino.ItemIndex of
            0,1:Imp40ColumnasDEV;
            //2:EnvioMail(RDevolucion,'Devolucion');
            end;
          end;
          RDevolucion.Destroy;
          end
        else
        begin
          application.createform(tRDevolucionPreImpresa, RDevolucionPreImpresa);
          RDevolucionPreImpresa.QDevolucion.Parameters.ParamByName('numero').Value := StrToInt(Trim(edNumero.Text));
          RDevolucionPreImpresa.QDevolucion.Parameters.ParamByName('suc').Value    := DBLookupComboBox2.KeyValue;
          RDevolucionPreImpresa.QDevolucion.open;
          RDevolucionPreImpresa.QDetalle.open;
          case cbDestino.ItemIndex of
            0:begin
            RDevolucionPreImpresa.QRBB.Preview;
            end;
            1:begin
            RDevolucionPreImpresa.QRBB.PrinterSetup;
            RDevolucionPreImpresa.QRBB.Print;
            end;
            //2:EnvioMail(RDevolucionPreImpresa.QRBB,'Devolucion');
            end;
           RDevolucionPreImpresa.Release;
        end;
      end;
  6 : if Trim(edNumero.Text) = '' then
         ShowMessage('DEBE INGRESAR UN NUMERO DE RECIBO')
      ELSE
        Begin //Recibo
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select rec_tipo from recibos');
        dm.Query1.SQL.Add('where emp_Codigo = :emp');
        dm.Query1.SQL.Add('and rec_numero = :num');
        dm.Query1.SQL.Add('and suc_codigo = :suc');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
        dm.Query1.Parameters.ParamByName('num').Value := StrToInt(Trim(edNumero.Text));
        dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
        dm.Query1.Open;

        if dm.Query1.IsEmpty then
         ShowMessage('NO HAY RECIBO CON ESTE NUMERO')
      ELSE begin
        RecTipo := dm.Query1.FieldByName('rec_tipo').asstring;
        if dm.Query1.FieldByName('rec_tipo').asstring = 'I' then
           FormatoImp := dm.QParametrosPAR_FORMATORI.Value
        else
           FormatoImp := dm.QParametrosPAR_FORMATORC.Value;

        application.createform(tRRecibo, RRecibo);
        RRecibo.QRecibos.Parameters.ParamByName('numero').Value := StrToInt(Trim(edNumero.Text));
        RRecibo.QRecibos.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
        RRecibo.QRecibos.open;
        RRecibo.QDoc.Open;
        RRecibo.QFormasPago.Open;
        RRecibo.lbReimpresion.Enabled := True;
        if FormatoImp = 2 then begin
        case cbDestino.ItemIndex of
        0:begin
        RRecibo.Preview;
        RRecibo.Destroy;
        end;
        1:begin
        RRecibo.PrinterSetup;
        RRecibo.Print;
        RRecibo.Destroy;
        end;
        2:begin
        vl_cliente := GetCliente('recibos','rec_numero');
        vl_atach := 'Recibo_No_'+edNumero.Text+'.PDF';
        RRecibo.ExportToFilter(TQRPDFDocumentFilter.Create('.\'+vl_atach));
        EnvioMail(RRecibo,'Recibo de Pago');
        end;
        end;
        end
        else
        if FormatoImp = 3 then
        begin
        case cbDestino.ItemIndex of
        0,1:BEGIN
        if dm.QParametrospar_imprimir_con_detalle_prod.Value = False then
        Imp40ColumnasRec else
        Imp40ColumnasRecDet;
        end;
        2:Begin
        vl_cliente := GetCliente('recibos','rec_numero');
        vl_atach := 'Recibo_No_'+edNumero.Text+'.PDF';
        RRecibo.ExportToFilter(TQRPDFDocumentFilter.Create('.\'+vl_atach));
        EnvioMail(RRecibo,'Recibo de Pago');
        end;
        end;
        end;

      end;
      END;
  7 : begin //Desembolso
        Application.CreateForm(tRDesembolso, RDesembolso);
        RDesembolso.QDesem.Close;
        RDesembolso.QDesem.Parameters.ParamByName('numero').Value := StrToInt(Trim(edNumero.Text));
        RDesembolso.QDesem.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
        RDesembolso.QDesem.Open;
        RDesembolso.lbReimpresion.Enabled := True;
        if dm.QParametrosPAR_FORMATODES.Value = 2 then
        begin
        case cbDestino.ItemIndex of
        0:begin
        RDesembolso.Preview;
        end;
        1:begin
        RDesembolso.PrinterSetup;
        RDesembolso.Print;
        end;
        //2:EnvioMail(RDesembolso,'Desembolso');
        end;
        end
        else
        begin
        case cbDestino.ItemIndex of
        0,1:Imp40ColumnasDES;
        //2:EnvioMail(RDesembolso,'Desembolso');
        end;
        end;
        RDesembolso.Destroy;
        end;
  8 : begin //Cotizacion
        if dm.QParametrospar_fac_preimpresa.Value = 'True' then
        begin
          if dm.QParametrospar_formato_preimpreso.Value = 'QRMSConsulting' then
          begin
            application.CreateForm(tRCotizacionPreimpresa, RCotizacionPreimpresa);
            RCotizacionPreimpresa.lbReimpresion.Enabled := True;
            RCotizacionPreimpresa.QCotizacion.Parameters.ParamByName('numero').Value := StrToInt(Trim(edNumero.Text));
            RCotizacionPreimpresa.QCotizacion.Open;
            RCotizacionPreimpresa.QDetalle.Open;
            case cbDestino.ItemIndex of
            0:RCotizacionPreimpresa.QRMSConsulting.Preview;
            1:begin
            RCotizacionPreimpresa.QRMSConsulting.PrinterSetup;
            RCotizacionPreimpresa.QRMSConsulting.Print;
            end;
            2:begin
            vl_cliente := GetCliente('cotizacion','cot_numero');
            vl_atach := 'Cotizacion_No_'+edNumero.Text+'.PDF';
            RCotizacionPreimpresa.QRMSConsulting.ExportToFilter(TQRPDFDocumentFilter.Create('.\'+vl_atach));
            EnvioMail(RCotizacionPreimpresa.QRMSConsulting,'Cotizacion');
            end;
            end;
            RCotizacionPreimpresa.Release;
          end
          else if dm.QParametrospar_formato_preimpreso.Value = 'QRThorton' then
          begin
            application.CreateForm(tRCotizacionPreimpresa, RCotizacionPreimpresa);
            RCotizacionPreimpresa.lbReimpresion.Enabled := True;
            RCotizacionPreimpresa.QCotizacion.Parameters.ParamByName('numero').Value := StrToInt(Trim(edNumero.Text));
            RCotizacionPreimpresa.QCotizacion.Open;
            RCotizacionPreimpresa.QDetalle.Open;
            if cbidioma.ItemIndex = 1 then RCotizacionPreimpresa.idioma := 'IN';
            case cbDestino.ItemIndex of
            0:RCotizacionPreimpresa.QRTHorton.Preview;
            1:begin
            RCotizacionPreimpresa.QRTHorton.Print;
            RCotizacionPreimpresa.QRTHorton.PrinterSetup;
            end;
            2:begin
            vl_cliente := GetCliente('cotizacion','cot_numero');
            vl_atach := 'Cotizacion_No_'+edNumero.Text+'.PDF';
            RCotizacionPreimpresa.QRTHorton.ExportToFilter(TQRPDFDocumentFilter.Create('.\'+vl_atach));
            EnvioMail(RCotizacionPreimpresa.QRTHorton,'Cotizacion');
            end;
            end;
            RCotizacionPreimpresa.Release;
          end
          else if dm.QParametrospar_formato_preimpreso.Value = 'QRBelkis' then
          begin
            application.CreateForm(tRCotizacionPreimpresa, RCotizacionPreimpresa);
            RCotizacionPreimpresa.lbReimpresion.Enabled := True;
            RCotizacionPreimpresa.QCotizacion.Parameters.ParamByName('numero').Value := StrToInt(Trim(edNumero.Text));
            RCotizacionPreimpresa.QCotizacion.Open;
            RCotizacionPreimpresa.QDetalle.Open;
            case cbDestino.ItemIndex of
            0:begin
            RCotizacionPreimpresa.QRBelkis.Preview;
            end;
            1:begin
            RCotizacionPreimpresa.QRBelkis.PrinterSetup;
            RCotizacionPreimpresa.QRBelkis.Print;
            end;
            2:begin
            vl_cliente := GetCliente('cotizacion','cot_numero');
            vl_atach := 'Cotizacion_No_'+edNumero.Text+'.PDF';
            RCotizacionPreimpresa.QRBelkis.ExportToFilter(TQRPDFDocumentFilter.Create('.\'+vl_atach));
            EnvioMail(RCotizacionPreimpresa.QRBelkis,'Cotizacion');
            end;
            end;
            RCotizacionPreimpresa.Release;
          end
          else
          begin
            if dm.QParametrosPAR_FORMATOCOT.Value = 2 then
            begin
              Application.CreateForm(tRCotizacion, RCotizacion);
              RCotizacion.QCotizacion.Parameters.ParamByName('numero').Value := StrToInt(Trim(edNumero.Text));
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

            case cbDestino.ItemIndex of
            0:begin
            RCotizacion.Preview;
            end;
            1:begin
            RCotizacion.PrinterSetup;
            RCotizacion.Preview;
            end;
            2:Begin
            vl_cliente := GetCliente('cotizacion','cot_numero');
            vl_atach := 'Cotizacion_No_'+edNumero.Text+'.PDF';
            RCotizacion.ExportToFilter(TQRPDFDocumentFilter.Create('.\'+vl_atach));
            EnvioMail(RCotizacion,'Cotizacion');
            end;
            end;
            RCotizacion.Destroy;
            end
            else
            begin
              Application.CreateForm(tRCotizacionElegante, RCotizacionElegante);
              RCotizacionElegante.QCotizacion.Parameters.ParamByName('numero').Value := StrToInt(Trim(edNumero.Text));
              RCotizacionElegante.QCotizacion.Open;
              RCotizacionElegante.QDetalle.Open;
              case cbDestino.ItemIndex of
              0:begin
              RCotizacionElegante.Preview;
              end;
              1:begin
              RCotizacionElegante.PrinterSetup;
              RCotizacionElegante.Print;
              end;
              2:begin
              vl_cliente := GetCliente('cotizacion','cot_numero');
              vl_atach := 'Cotizacion_No_'+edNumero.Text+'.PDF';
              RCotizacionElegante.ExportToFilter(TQRPDFDocumentFilter.Create('.\'+vl_atach));
              EnvioMail(RCotizacionElegante,'Cotizacion');
              end;
              end;
              RCotizacionElegante.Destroy;
            end;
          end;
        end
        else if dm.QParametrosPAR_FORMATOCOT.Value = 2 then
        begin
          Application.CreateForm(tRCotizacion, RCotizacion);
          RCotizacion.QCotizacion.Parameters.ParamByName('numero').Value := StrToInt(Trim(edNumero.Text));
          RCotizacion.QCotizacion.Open;
          RCotizacion.QDetalle.Open;
          RCotizacion.lbReimpresion.Enabled := True;
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

          case cbDestino.ItemIndex of
          0:begin
          RCotizacion.Preview;
          end;
          1:begin
          RCotizacion.PrinterSetup;
          RCotizacion.Print;
          end;
          2:begin
          vl_cliente := GetCliente('cotizacion','cot_numero');
          vl_atach := 'Cotizacion_No_'+edNumero.Text+'.PDF';
          RCotizacion.ExportToFilter(TQRPDFDocumentFilter.Create('.\'+vl_atach));
          EnvioMail(RCotizacion,'Cotizacion');
          end;
          end;
          RCotizacion.Destroy;
        end
        else
        begin
          Application.CreateForm(tRCotizacionElegante, RCotizacionElegante);
          RCotizacionElegante.QCotizacion.Parameters.ParamByName('numero').Value := StrToInt(Trim(edNumero.Text));
          RCotizacionElegante.QCotizacion.Open;
          RCotizacionElegante.QDetalle.Open;
          case cbDestino.ItemIndex of
          0:begin
          RCotizacionElegante.lbReimpresion.Enabled := True;
          RCotizacionElegante.Preview;
          end;
          1:begin
          RCotizacionElegante.PrinterSetup;
          RCotizacionElegante.lbReimpresion.Enabled := True;
          RCotizacionElegante.Print;
          end;
          2:begin
          vl_cliente := GetCliente('cotizacion','cot_numero');
          vl_atach := 'Cotizacion_No_'+edNumero.Text+'.PDF';
          RCotizacionElegante.ExportToFilter(TQRPDFDocumentFilter.Create('.\'+vl_atach));
          EnvioMail(RCotizacionElegante,'Cotizacion');
          end;
          end;
          RCotizacionElegante.Destroy;
          end;
          end;
  9 : begin //Entradas de almacen
        Application.CreateForm(tREntradaAlm, REntradaAlm);
        REntradaAlm.QEntrada.Parameters.ParamByName('numero').Value := StrToInt(Trim(edNumero.Text));
        REntradaAlm.QEntrada.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
        REntradaAlm.QEntrada.Open;
        REntradaAlm.QDetalle.Open;
        REntradaAlm.lbReimpresion.Enabled := True;
        case cbDestino.ItemIndex of
        0:begin
        REntradaAlm.Preview;
        end;
        1:begin
        REntradaAlm.PrinterSetup;
        REntradaAlm.Print;
        end;
        end;
        REntradaAlm.destroy;
      end;

  10 : begin //Conduces
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select con_status from conduce');
        dm.Query1.SQL.Add('where emp_codigo = :emp');
        dm.Query1.SQL.Add('and con_numero = :con');
        dm.Query1.SQL.Add('and suc_codigo = :suc');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
        dm.Query1.Parameters.ParamByName('con').Value := StrToInt(Trim(edNumero.Text));
        dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
        dm.Query1.Open;
        if dm.Query1.FieldByName('con_status').AsString = 'ANU' then
          MessageDlg('Este conduce est� anulado',mtError,[mbok],0)
        else
        begin
        if (DM.QParametrospar_fac_preimpresa.Value = 'False') then begin
          Application.CreateForm(tRConduce, RConduce);
          RConduce.QConduce.Parameters.ParamByName('emp_codigo').Value := dm.vp_cia;
          RConduce.QConduce.Parameters.ParamByName('numero').Value := StrToInt(Trim(edNumero.Text));
          RConduce.QConduce.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
          RConduce.QConduce.Open;
          RConduce.QDetalle.Open;
          RConduce.lbReimpresion.Enabled := True;
          if dm.QParametrosPAR_FORMATOCON.Value = 2 then
          begin
          case cbDestino.ItemIndex of
          0:begin
          RConduce.Preview;
          RConduce.Destroy;
          end;
          1:begin
          RConduce.PrinterSetup;
          RConduce.Print;
          RConduce.Destroy;
          end;
          //2:EnvioMail(RConduce,'Conduce');
          end;
          end
          else
          case cbDestino.ItemIndex of
          0,1:Imp40ColumnasCON;
          //2:EnvioMail(RConduce,'Conduce');
          end;

         end
         else
         if ((DM.QParametrospar_fac_preimpresa.Value = 'True') and
            (DM.QParametrospar_formato_preimpreso.Value = 'Sarita & Asociados')) then begin
          Application.CreateForm(tRConduceSarita, RConduceSarita);
          RConduceSarita.QConduce.Parameters.ParamByName('numero').Value := StrToInt(Trim(edNumero.Text));
          RConduceSarita.QConduce.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
          RConduceSarita.QConduce.Open;
          RConduceSarita.QDetalle.Close;
          RConduceSarita.QDetalle.Open;
          RConduceSarita.lbReimpresion.Enabled := True;
          case cbDestino.ItemIndex of
          0:begin
          RConduceSarita.PrinterSetup;
          RConduceSarita.Preview;
          RConduceSarita.Destroy;
          end;
          1:begin
          RConduceSarita.PrinterSetup;
          RConduceSarita.Print;
          RConduceSarita.Destroy;
          end;
          //2:EnvioMail(RConduceSarita,'Conduce');
          end;
          end
          else
          case cbDestino.ItemIndex of
          0,1:Imp40ColumnasCON;
          //2:EnvioMail(RConduceSarita,'Conduce');
          end;
         end;
         END;
  11 : begin //Transferencias
        Application.CreateForm(tRTransferencia, RTransferencia);
        RTransferencia.QTrans.Parameters.ParamByName('numero').Value := StrToInt(Trim(edNumero.Text));
        RTransferencia.QTrans.Open;
        RTransferencia.QDetalle.Open;
        RTransferencia.lbReimpresion.Enabled := True;

       case cbDestino.ItemIndex of
       0:begin
       RTransferencia.Preview;
       end;
       1:begin
       RTransferencia.PrinterSetup;
       RTransferencia.Print;
       end;
       end;
       RTransferencia.Destroy;
       end;

  12 : begin //Cotizacion multiple
        Application.CreateForm(tRCotMultiple, RCotMultiple);
        RCotMultiple.QCotizacion.Parameters.ParamByName('emp').Value := dm.vp_cia;
        RCotMultiple.QCotizacion.Parameters.ParamByName('num').Value := strtoint(trim(edNumero.Text));
        RCotMultiple.QCotizacion.Open;
        RCotMultiple.QDetalle.Open;

       case cbDestino.ItemIndex of
       0:begin
       RCotMultiple.Preview;
       end;
       1:begin
       RCotMultiple.PrinterSetup;
       RCotMultiple.Print;
       end;
       //2:EnvioMail(RCotMultiple,'Cotizacion Multiple');
       end;
       RCotMultiple.Destroy;
       end;
  13 : begin //Liquidacion de Mercancia
        Application.CreateForm(tRLiquidacion, RLiquidacion);
        RLiquidacion.QLiquidacion.Parameters.ParamByName('emp').Value := dm.vp_cia;
        RLiquidacion.QLiquidacion.Parameters.ParamByName('num').Value := strtoint(trim(edNumero.Text));
        RLiquidacion.QLiquidacion.Open;
        RLiquidacion.QDetalle.Open;
        RLiquidacion.QGastos.Open;
       case cbDestino.ItemIndex of
       0:begin
       RLiquidacion.Preview;
       end;
       1:begin
       RLiquidacion.PrinterSetup;
       RLiquidacion.Print;
       end;
       end;
       RLiquidacion.Destroy;
       end;
  14 : begin  //Orden de Servicio
        Application.CreateForm(tROrdenServicio, ROrdenServicio);
        ROrdenServicio.QOrden.Parameters.ParamByName('emp').Value := dm.vp_cia;
        ROrdenServicio.QOrden.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
        ROrdenServicio.QOrden.Parameters.ParamByName('ord').Value := StrToInt(edNumero.Text);
        ROrdenServicio.QOrden.Open;
        ROrdenServicio.QDetalle.Open;
       case cbDestino.ItemIndex of
       0:begin
       ROrdenServicio.Preview;
       end;
       1:begin
       ROrdenServicio.PrinterSetup;
       ROrdenServicio.Print;
       end;
       //2:EnvioMail(ROrdenServicio,'Orden de Servicio');
       end;
       ROrdenServicio.Destroy;
       end;
  15 : begin  //Devolucion en Compra
        FormatoImp := dm.QParametrosPAR_FORMATODEV.value;
        application.createform(tRDevolucionCompra, RDevolucionCompra);
        RDevolucionCompra.QDevolucion.Parameters.ParamByName('emp').Value := dm.vp_cia;
        RDevolucionCompra.QDevolucion.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
        RDevolucionCompra.QDevolucion.Parameters.ParamByName('num').Value := StrToInt(edNumero.Text);
        RDevolucionCompra.QDevolucion.open;
        RDevolucionCompra.QDetalle.open;
        if FormatoImp = 2 then
        begin
          case cbDestino.ItemIndex of
          0:begin
          RDevolucionCompra.Preview;
          end;
          1:begin
          RDevolucionCompra.PrinterSetup;
          RDevolucionCompra.Print;
          end;
          //2:EnvioMail(RDevolucionCompra,'Devolucion en Compras');
          end;
          end
          else
          case cbDestino.ItemIndex of
          0,1:Imp40ColumnasDevCompra;
          //2:EnvioMail(RDevolucionCompra,'Devolucion en Compra');
          end;
          RDevolucionCompra.Destroy;
         end;
         end;
  btPrint.Visible := true;
end;

procedure TfrmReimpresion.Imp40ColumnasFac2;
var
  arch, puertopeq : textfile;
  s, s1, s2, s3, s4, s5,s6 : array [0..20] of char;
  Tfac, Saldo : double;
  puerto, lbitbis, impcodigo, pro_codigo, Unidad, codigoabre, Recibido, Devuelta : string;
  a, Copias : integer;
begin
try
  codigoabre := Trim(DM.QParametrosPAR_CODIGO_ABRE_CAJA.Value);
      with dm.Query1 do begin
      close;
      sql.clear;
      sql.add('select tfa_copias from tiposfactura');
      sql.add('where emp_codigo = :emp');
      sql.add('and tfa_codigo = :cod');
      Parameters.parambyname('emp').Value := dm.vp_cia;
      Parameters.parambyname('cod').Value := edTipo.Text;
      open;
      IF NOT IsEmpty THEN
      copias := FIELDBYNAME('tfa_copias').Value;
      end;


  if FileExists('.\puerto.txt') then
  begin
    assignfile(puertopeq, '.\puerto.txt');
    reset(puertopeq);
    readln(puertopeq, puerto);
  end
  else
    puerto := 'PRN';

  closefile(puertopeq);

  AssignFile(arch, '.\imp.bat');
  rewrite(arch);
  writeln(arch, 'type .\t.txt > '+puerto);
  closefile(arch);

  tfac := 0;
//  application.CreateForm(tRFactura, RFactura);
  RFactura.QFactura.Close;
  RFactura.QFactura.Parameters.ParamByName('emp').Value     := DM.vp_cia;
  RFactura.QFactura.Parameters.ParamByName('tipo').Value    := edTipo.Text;
  RFactura.QFactura.Parameters.ParamByName('forma').Value   := edGrupo.Text;
  RFactura.QFactura.Parameters.ParamByName('numero').Value  := edNumero.Text;
  RFactura.QFactura.Parameters.ParamByName('suc').Value     := DBLookupComboBox2.KeyValue;
  RFactura.QFactura.open;
  RFactura.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
  RFactura.QDetalle.open;
  RFactura.QFormasPago.Open;
  AssignFile(arch, '.\t.txt');
  rewrite(arch);

   with dm.Query1 do begin
    close;
    sql.clear;
    sql.add('select tfa_nombre, tfa_selcondi, tfa_formatoimp, tfa_puertoimp,');
    sql.add('tfa_actbalance, tfa_cliente, ven_codigo, tfa_precio,');
    sql.add('tfa_mensaje1, tfa_mensaje2, tfa_mensaje3, fpa_codigo,');
    sql.add('tfa_verlimite, tfa_copias, tfa_permite_abonar, tfa_itbis, isnull(tip_codigo,0)tipo,');
    sql.add('tfa_imprimie_encabezado, tfa_rnc, cat_cuenta, tfa_modifica_nombre, tfa_espcliente espcliente');
    sql.add(',Envio_Correo, Envio_Estadocta');
    sql.add('from tiposfactura');
    sql.add('where emp_codigo = '+QuotedStr(DM.QEmpresasEMP_CODIGO.text));
    sql.add('and tfa_codigo = '+QuotedStr(edTipo.text));
    open;
    ImprimeEncaqbezado := fieldbyname('tfa_imprimie_encabezado').AsString;
  end;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  DM.Query1.SQL.Add('SELECT * FROM SUCURSALES WHERE EMP_CODIGO ='+IntToStr(DM.vp_cia)+
                    ' AND SUC_CODIGO ='+IntToStr(DBLookupComboBox2.KeyValue));
  DM.Query1.Open;



  IF NOT DM.Query1.IsEmpty THEN BEGIN
  if ImprimeEncaqbezado = 'True' then
  begin
    writeln(arch, dm.centro(DM.Query1.FieldByName('suc_nombre').Value));
    writeln(arch, dm.centro(DM.Query1.FieldByName('suc_direccion').Value));
    writeln(arch, dm.centro(DM.Query1.FieldByName('suc_localidad').Value));
    writeln(arch, dm.centro(DM.Query1.FieldByName('suc_telefono').Value));
    writeln(arch, dm.centro('RNC:'+DM.Query1.FieldByName('suc_rnc').Value));
  end;
  end;
    writeln(arch, ' ');

//20170608  writeln(arch, dm.centro('*** F A C T U R A ***'));
  writeln(arch, dm.Centro(trim(tTipo.text)));
  writeln(arch, ' ');

  writeln(arch, 'Fecha .: '+DateToStr(RFactura.QFacturaFAC_FECHA.Value)+' Factura: '+formatfloat('0000000000',RFactura.QFacturaFAC_NUMERO.value));
  writeln(arch, 'Caja ..: '+RFactura.QFacturaCAJ_CODIGO.Text);


  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add('select cli, dir, tel, ven, caj, fir, otros, CodigoProducto from parconfigimp');
  Query1.SQL.Add('where emp_codigo = :emp');
  Query1.SQL.Add('and tfa_codigo = :tfa');
  Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  Query1.Parameters.ParamByName('tfa').Value := edTipo.Text;
  Query1.Open;
  impcodigo := Query1.FieldByName('CodigoProducto').AsString;

  if Query1.FieldByName('caj').AsString = 'Si' then
  begin
    dm.Query1.Close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select caj_nombre from cajeros');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and caj_codigo = :ven');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('ven').Value := RFactura.QFacturaCAJ_CODIGO.Value;
    dm.Query1.Open;

    s := '';
    fillchar(s, 15-length(copy(dm.Query1.FieldByName('caj_nombre').asstring,1,13)),' ');
    writeln(arch, 'Cajero: '+copy(dm.Query1.FieldByName('caj_nombre').asstring,1,13)+s+'Hora: '+RFactura.QFacturaFAC_HORA.AsString);
  end;

  if Trim(RFactura.QFacturaNumeroCF.Value) <> '' then
  begin
    writeln(arch, ' ');
    writeln(arch, 'NCF: '+RFactura.QFacturaNumeroCF.Value);
  //buscar vencimiento
      with QDatos do begin
      Close;
      sql.Clear;
      SQL.Add('select FechaVenc ');
      sql.Add('from NCF ');
      sql.Add('where VerificaVenc = 1 and emp_codigo = :emp_codigo');
      sql.Add('and suc_codigo = :suc_codigo');
      sql.Add('and NCF_Fijo   = :NCF_Fijo');
      Parameters.ParamByName('emp_codigo').Value := RFactura.QFacturaEMP_CODIGO.Value;
      if DM.QContabpar_NCF_Sucursal.Value = True then
      Parameters.ParamByName('suc_codigo').Value := RFactura.QFacturaSUC_CODIGO.Value else
      Parameters.ParamByName('suc_codigo').Value :=  1;
      Parameters.ParamByName('NCF_Fijo').Value   := RFactura.QFacturaNCF_Fijo.Text;
      Open;
      if not IsEmpty then
      writeln(arch,'Fecha Venc.: '+FieldByName('FechaVenc').text);
      end;

      //buscar tipo documentos
      with QDatos do begin
      Close;
      sql.Clear;
      SQL.Add('select b.tdo_nombre Nombre');
      sql.Add('from NCF a');
      sql.Add('inner join TiposDoc b on a.emp_codigo=b.emp_codigo and a.tdo_codigo=b.tdo_codigo');
      sql.Add('where a.emp_codigo = :emp_codigo');
      sql.Add('and a.suc_codigo = :suc_codigo');
      sql.Add('and a.NCF_Fijo   = :NCF_Fijo');
      Parameters.ParamByName('emp_codigo').Value := RFactura.QFacturaEMP_CODIGO.Value;
      Parameters.ParamByName('suc_codigo').Value := RFactura.QFacturaSUC_CODIGO.Value;
      Parameters.ParamByName('NCF_Fijo').Value   := RFactura.QFacturaNCF_Fijo.Text;
      Open;
      writeln(arch,FieldByName('Nombre').AsString);
      end;
      end;

  if Trim(RFactura.QFacturaNumeroCF.Value) <> '' then
  begin
    if RFactura.QFacturaFAC_RNC.Value <> '' then
      writeln(arch, 'RNC: '+RFactura.QFacturaFAC_RNC.Value);
  end;

  writeln(arch, ' ');

  if (actbalance = 'True') then
    writeln(arch, 'Vence : '+DateToStr(RFactura.QFacturaFAC_VENCE.value));

  if Query1.FieldByName('cli').AsString = 'Si' then
  begin
    if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
      writeln(arch, 'Nombre: '+RFactura.QFacturaFAC_NOMBRE.value)
    else
      writeln(arch, 'Nombre: '+RFactura.QFacturaFAC_NOMBRE.value);
  end;

  if Query1.FieldByName('dir').AsString = 'Si' then
    if Trim(RFactura.QFacturaFAC_DIRECCION.value) <> '' then
      writeln(arch, 'Dir.  : '+RFactura.QFacturaFAC_DIRECCION.value);
  if Query1.FieldByName('tel').AsString = 'Si' then
    if Trim(RFactura.QFacturaFAC_TELEFONO.value) <> '' then
      writeln(arch, 'Tel.  : '+RFactura.QFacturaFAC_TELEFONO.value);
  if Query1.FieldByName('ven').AsString = 'Si' then
  begin
    dm.Query1.Close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select ven_nombre from vendedores');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and ven_codigo = :ven');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('ven').Value := RFactura.QFacturaVEN_CODIGO.Value;
    dm.Query1.Open;

    writeln(arch, 'Vend. : '+dm.Query1.FieldByName('ven_nombre').asstring);
  end;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select Ciudad_Origen, Ciudad_Destino, Nombre_envia,');
  dm.Query1.SQL.Add('Telefono_Envia, Nombre_Recibe, Telefono_Recibe, Descripcion');
  dm.Query1.SQL.Add('from envio where emp_codigo = :emp and suc_codigo = :suc');
  dm.Query1.SQL.Add('and fac_numero = :fac');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('suc').Value := RFactura.QFacturaSUC_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('fac').Value := RFactura.QFacturaFAC_NUMERO.Value;
  dm.Query1.Open;
  if dm.Query1.RecordCount > 0 then
  begin
    writeln(arch, ' ');
    writeln(arch, 'DATOS DEL ENVIO:');
    writeln(arch, ' ');
    writeln(arch, 'Envia : '+dm.Query1.FieldByNAme('Telefono_Envia').AsString);
    writeln(arch, '        '+dm.Query1.FieldByNAme('Nombre_envia').AsString);
    writeln(arch, '        '+dm.Query1.FieldByNAme('Ciudad_Origen').AsString);
    writeln(arch, '');
    writeln(arch, 'Recibe: '+dm.Query1.FieldByNAme('Telefono_Recibe').AsString);
    writeln(arch, '        '+dm.Query1.FieldByNAme('Nombre_Recibe').AsString);
    writeln(arch, '        '+dm.Query1.FieldByNAme('Ciudad_Destino').AsString);
    writeln(arch, '');
    writeln(arch, dm.Query1.FieldByNAme('Descripcion').AsString);
  end;

  if impcodigo = 'Si' then
  begin
    writeln(arch, '----------------------------------------');
    writeln(arch, 'CANT  UND  DESCRIPCION   ITBIS     TOTAL');
    writeln(arch, '----------------------------------------');
  end
  else
  begin
    writeln(arch, '----------------------------------------');
    writeln(arch, 'CANT. PREC DESCRIPCION   ITBIS     TOTAL');
    writeln(arch, '----------------------------------------');
  end;
  while not RFactura.QDetalle.eof do
  begin
    tfac := tfac + RFactura.QDetallePrecioItbis.value;

    {if RFactura.QDetalleDET_CONITBIS.value = 'N' then
       lbItbis := 'E'
    else
       lbItbis := ' ';}

    s := '';
    FillChar(s, 5-length(format('%n',[RFactura.QDetalleDET_CANTIDAD.value])),' ');
    s1 := '';
    FillChar(s1, 10-length(trim(FORMAT('%n',[RFactura.QDetalleValor.value]))), ' ');
    s2 := '';
    s6 := '';
    FillChar(s6, 10-length(trim(FORMAT('%n',[RFactura.QDetalleDET_PRECIO.value]))), ' ');

    if impcodigo = 'Si' then
      FillChar(s2, 33-length(copy(trim(RFactura.QDetallePRO_NOMBRE.value),1,33)),' ')
    else
      FillChar(s2, 33-length(copy(trim(RFactura.QDetallePRO_NOMBRE.value),1,33)),' ');
      //FillChar(s2, 16-length(copy(trim(RFactura.QDetallePRO_NOMBRE.value),1,16)),' ');

    if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'I' then
      pro_codigo := RFactura.QDetallePRO_CODIGO.AsString
    else if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'O' then
      pro_codigo := RFactura.QDetallePRO_RORIGINAL.AsString;

    s3 := '';
    FillChar(s3, 8-length(trim(FORMAT('%n',[RFactura.QDetallePrecioItbis.value]))),' ');
    s4 := '';
    FillChar(s4, 8-length(trim(FORMAT('%n',[RFactura.QDetalleCalcItbis.value]))),' ');

    lbitbis := 'E';
    if RFactura.QDetalleDET_CONITBIS.value = 'N' then
    begin
       lbitbis := ' ';
    end;
    if impcodigo = 'Si' then
    begin
      //Unidad := copy(RFactura.QDetallepro_unidad_medida.Value,1,4);
      Unidad := copy(RFactura.QDetalleMEDIDA.Value,1,4);
      if trim(Unidad) <> '' then
        writeln(arch, s+format('%n',[RFactura.QDetalledet_cantidad.value])+' '+Unidad+
                      ' '+copy(trim(RFactura.QDetallePRO_NOMBRE.value),1,33))
      else
        writeln(arch, s+format('%n',[RFactura.QDetalledet_cantidad.value])+' '+
                      s6+format('%n',[RFactura.QDetalledet_cantidad.value])+' '+
                      ' '+copy(trim(RFactura.QDetallePRO_NOMBRE.value),1,33));

      s1 := '';
      FillChar(s1, 10-length(trim(FORMAT('%n',[RFactura.QDetalleValor.value]))), ' ');
      s2 := '';
      FillChar(s2, 3,' ');
      s4 := '';
      FillChar(s4, 12-length(trim(FORMAT('%n',[RFactura.QDetalleCalcItbis.value]))),' ');
      s3 := '';
      FillChar(s3, 15-length(pro_codigo),' ');

      writeln(arch, pro_codigo+s3+s2+s4+FORMAT('%n',[RFactura.QDetalleCalcItbis.value])+s1+
                    format('%n',[RFactura.QDetalleValor.value]));

       writeln(arch, ' ');
    end
    else
      begin
      s1 := '';
      FillChar(s1, 10-length(trim(FORMAT('%n',[RFactura.QDetalleValor.value]))), ' ');
      s2 := '';
      FillChar(s2, 6-length(trim(FORMAT('%n',[RFactura.QDetalleDET_CANTIDAD.value]))), ' ');
      s6 := '';
      FillChar(s6, 12-length(trim(FORMAT('%n',[RFactura.QDetalleDET_PRECIO.value]))),' ');
      s4 := '';
      FillChar(s4, 12-length(trim(FORMAT('%n',[RFactura.QDetalleCalcItbis.value]))),' ');
      s3 := '';
      FillChar(s3, 40-length(RFactura.QDetallePRO_NOMBRE.Value),' ');

      writeln(arch, Copy(Trim(RFactura.QDetallePRO_NOMBRE.Value),1,40)+s3);

      writeln(arch, (FORMAT('%n',[RFactura.QDetalleDET_CANTIDAD.value])+s2)+
                    (FORMAT('%n',[RFactura.QDetalleDET_PRECIO.value])+s6)+
                    s4+(FORMAT('%n',[RFactura.QDetalleCalcItbis.value]))+
                    s1+(FORMAT('%n',[RFactura.QDetalleValor.value])));
      end;

    if Trim(RFactura.QDetalleDET_NOTA.Value) <> '' then
    begin
      writeln(arch, ' ');
      writeln(arch, RFactura.QDetalleDET_NOTA.Value);
      writeln(arch, ' ');
    end;

{        //datos del Envio
    if (not RFactura.QDetallepro_UtilizaEnvio.IsNull) and (RFactura.QDetallepro_UtilizaEnvio.AsString = 'True') then
    begin
      writeln(arch, ' ');
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('Select * From Envio Where emp_codigo = :emp_codigo');
  		dm.Query1.SQL.Add(' and suc_codigo = :suc_codigo and fac_numero = :fac_numero ');
			dm.Query1.SQL.Add('and pro_codigo = :pro_codigo');
      dm.Query1.Parameters.ParamByName('emp_codigo').Value := RFactura.QDetalleEMP_CODIGO.value;
      dm.Query1.Parameters.ParamByName('suc_codigo').Value := RFactura.QDetallesuc_codigo.value;
      dm.Query1.Parameters.ParamByName('fac_numero').Value := RFactura.QDetalleFAC_NUMERO.value;
      dm.Query1.Parameters.ParamByName('pro_codigo').Value := RFactura.QDetallePRO_CODIGO.value;
      dm.Query1.Open;

      if dm.Query1.RecordCount > 0 then begin
        writeln(arch, 'DATOS DEL ENVIO:');
        writeln(arch, 'Ciudad Origen : '+dm.Query1.FieldByName('Ciudad_Origen').AsString);
        writeln(arch, 'Envia : '+dm.Query1.FieldByName('Nombre_envia').AsString);
        writeln(arch, 'Telefon: '+dm.Query1.FieldByName('Telefono_Envia').AsString);

        writeln(arch, 'Ciudad Recibe: '+dm.Query1.FieldByName('Ciudad_Destino').AsString);
        writeln(arch, 'Recibe : '+dm.Query1.FieldByName('Nombre_Recibe').AsString);
        writeln(arch, 'Telefono: '+dm.Query1.FieldByName('Telefono_Recibe').AsString);
        writeln(arch, 'Descripcion : '+dm.Query1.FieldByName('Descripcion').AsString);
        writeln(arch, ' ');
      end;
    end;   //fernando 2017 05 24}


    //datos del medidor
    if (not RFactura.QDetalleMedidorID.IsNull) and (RFactura.QDetalleMedidorID.AsInteger > 0) then
    begin
      writeln(arch, ' ');
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select Nombre from medidores where MedidorID = :med');
      dm.Query1.Parameters.ParamByName('med').Value := RFactura.QDetalleMedidorID.Value;
      dm.Query1.Open;

      writeln(arch, 'DATOS DEL MEDIDOR:');
      writeln(arch, 'Medidor: '+dm.Query1.FieldByName('Nombre').AsString);
      writeln(arch, 'Conteo Anterior: '+RFactura.QDetalleMedidor_Secuencia.AsString);
      writeln(arch, 'Conteo Actual: '+RFactura.QDetalleMedidor_Cantidad.AsString);
      writeln(arch, 'Cantidad Galones: '+RFactura.QDetalleDET_CANTIDAD.AsString);
      writeln(arch, ' ');
    end;

    RFactura.QDetalle.next;
  end;
  s := '';
  fillchar(s, 14-length(format('%n',[RFactura.QFacturaFAC_TOTAL.value])),' ');
  s1:= '';
  fillchar(s1, 14-length(format('%n',[RFactura.QFacturaFAC_DESCUENTO.value])),' ');
  s2:= '';
  fillchar(s2, 14-length(format('%n',[TFac])),' ');
  s3:= '';
  fillchar(s3, 14-length(format('%n',[RFactura.QFacturaFAC_ITBIS.value])),' ');
  s4:= '';
  fillchar(s4, 40-length('-----------'),' ');
  s5:= '';
  fillchar(s5, 14-length(format('%n',[RFactura.QFacturaFAC_OTROS.value])),' ');

  writeln(arch, '                             -----------');
  writeln(arch, '              SubTotal   :'+s2+format('%n',[TFac]));
  writeln(arch, '              Descuento  :'+s1+format('%n',[RFactura.QFacturaFAC_DESCUENTO.value]));
  writeln(arch, '              Total Itbis:'+s3+format('%n',[RFactura.QFacturaFAC_ITBIS.value]));



  if Query1.FieldByName('otros').AsString = 'Si' then
     writeln(arch, '              Otros      :'+s5+format('%n',[RFactura.QFacturaFAC_OTROS.value]));
  writeln(arch, '              Total Neto :'+s+format('%n',[RFactura.QFacturaFAC_TOTAL.value]));


  if   RFactura.QFacturafac_tasa.Value > 1 then begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select mon_sigla from moneda');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and mon_codigo = :mon');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('mon').Value := RFactura.QFacturaMON_CODIGO.Value;
    dm.Query1.Open;
    if not dm.Query1.IsEmpty then
      begin
       writeln(arch, '              Moneda     : '+dm.Query1.FieldByName('mon_sigla').AsString);
       writeln(arch, '              Tasa       : '+RFactura.QFacturafac_tasa.AsString);
      end;
  end;




  if (actbalance = 'True') then
  begin
    s := '';
    fillchar(s, 14-length(format('%n',[RFactura.QFacturaFAC_ABONO.value])),' ');
    Saldo := RFactura.QFacturaFAC_TOTAL.value - RFactura.QFacturaFAC_ABONO.value;
    s1 := '';
    fillchar(s1, 14-length(format('%n',[Saldo])),' ');
    writeln(arch, '              Abonado    :'+s+format('%n',[RFactura.QFacturaFAC_ABONO.value]));
    writeln(arch, '              Balance    :'+s1+format('%n',[Saldo]));

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cli_balance from clientes');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cli_codigo = :cli');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cli').Value := RFactura.QFacturaCLI_CODIGO.Value;
    dm.Query1.Open;

//    writeln(arch, ' ');
//    writeln(arch, dm.Centro('SU CUENTA REFLEJA UN BALANCE'));
//    writeln(arch, dm.Centro('A LA FECHA DE '+Format('%n',[dm.Query1.FieldByName('cli_balance').AsFloat])));

//    dm.Query1.Close;
//    dm.Query1.SQL.Clear;
//    dm.Query1.SQL.Add('select * from pr_Estadistica_cli (:emp, :cli, :fec)');
//    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
//    dm.Query1.Parameters.ParamByName('cli').Value := RFactura.QFacturaCLI_CODIGO.Value;
//    dm.Query1.Parameters.ParamByName('fec').Value    := Date;
//    dm.Query1.Open;
//    writeln(arch, dm.Centro('Y UN MONTO VENCIDO DE '+Format('%n',[dm.Query1.FieldByName('mtovencido').AsFloat])));
  end
  else
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select f.fpa_nombre, sum(p.for_monto) as monto');
    dm.Query1.SQL.Add('from formaspago f, facformapago p');
    dm.Query1.SQL.Add('where f.emp_codigo = p.emp_codigo');
    dm.Query1.SQL.Add('and f.fpa_codigo = p.fpa_codigo');
    dm.Query1.SQL.Add('and p.emp_codigo = :emp');
    dm.Query1.SQL.Add('and p.tfa_Codigo = :tfa');
    dm.Query1.SQL.Add('and p.fac_forma  = :for');
    dm.Query1.SQL.Add('and p.fac_numero = :num');
    dm.Query1.SQL.Add('and p.suc_codigo = :suc');
    dm.Query1.SQL.Add('group by f.fpa_nombre');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('tfa').Value := RFactura.QFacturaTFA_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('for').Value  := RFactura.QFacturaFAC_FORMA.Value;
    dm.Query1.Parameters.ParamByName('num').Value := RFactura.QFacturaFAC_NUMERO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := RFactura.QFacturaSUC_CODIGO.Value;
    dm.Query1.Open;

    writeln(arch, ' ');
    dm.Query1.DisableControls;
    dm.Query1.First;
    while not dm.Query1.Eof do
    begin
      s:= '';
      fillchar(s, 14-length(dm.Query1.FieldByName('fpa_nombre').asstring),' ');
      s1 := '';
      fillchar(s1, 10-length(format('%n',[dm.Query1.FieldByName('monto').asfloat])),' ');
      writeln(arch,copy(dm.Query1.FieldByName('fpa_nombre').asstring,1,14)+' : '+s1+format('%n',[dm.Query1.FieldByName('monto').asfloat]));
      dm.Query1.Next;
    end;
    dm.Query1.EnableControls;

    if Recibido = '' then
    begin
       Recibido := Format('%n',[RFactura.QFacturaFAC_TOTAL.Value]);
       Devuelta := '0.00';
    end;



    s := '';
    fillchar(s,  10-length(Recibido),' ');
    s1 := '';
    fillchar(s1, 10-length(Devuelta),' ');

    writeln(arch, ' ');
    writeln(arch, 'Recibido : '+s+Recibido);
    writeln(arch, 'Devuelta : '+s1+Devuelta);
  end;
  writeln(arch, ' ');
  writeln(arch, dm.Centro('***REIMPRESION***'));
  writeln(arch, ' ');
  IF Length(Trim(copy(RFactura.QFacturaFAC_MENSAJE1.Value,1,39))) <=40  THEN
  writeln(arch, copy(RFactura.QFacturaFAC_MENSAJE1.Value,1,39));
  IF Length(Trim(copy(RFactura.QFacturaFAC_MENSAJE1.Value,40,80)))<=40 THEN
  writeln(arch, copy(RFactura.QFacturaFAC_MENSAJE1.Value,40,80));
  IF Length(Trim(copy(RFactura.QFacturaFAC_MENSAJE1.Value,81,120)))<=40  THEN
  writeln(arch, copy(RFactura.QFacturaFAC_MENSAJE1.Value,81,120));
  IF Length(Trim(copy(RFactura.QFacturaFAC_MENSAJE1.Value,121,160)))<=40  THEN
  writeln(arch, copy(RFactura.QFacturaFAC_MENSAJE1.Value,121,160));
  IF Length(Trim(copy(RFactura.QFacturaFAC_MENSAJE1.Value,161,200)))<=40  THEN
  writeln(arch, copy(RFactura.QFacturaFAC_MENSAJE1.Value,161,200));
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  if Query1.FieldByName('fir').AsString = 'Si' then
  begin
    writeln(arch, dm.Centro('_________________________'));
    writeln(arch, dm.Centro('Realizado por '));
    writeln(arch, ' ');
    writeln(arch, ' ');
    writeln(arch, ' ');
    writeln(arch, dm.Centro('_________________________'));
    writeln(arch, dm.Centro('Firma del Cliente '));
  end;
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');



//  dm.Query1.Close;
//  dm.Query1.SQL.Clear;
//  dm.Query1.SQL.Add('select Puerto, codigo_abre_caja from cajas_IP');
//  dm.Query1.SQL.Add('where caja = :caj');
//  dm.Query1.Parameters.ParamByName('caj').Value := caja;
//  dm.Query1.Open;
//  codigoabre := dm.Query1.FieldByName('codigo_abre_caja').AsString;

  if codigoabre = 'Termica' then
  writeln(arch,chr(27)+chr(109));


  CloseFile(arch);
  dm.AbreCaja;
//  if (actbalance = 'False') then
//  begin
//    if QFacturaFAC_DOMICILIO.Value = 'True' then
//    begin
IF copias > 1 THEN begin
      a := 1;
      while a <= copias do
      begin
        winexec('.\imp.bat',0);
        a := a + 1;
      end;
    end
    else
    begin
      winexec('.\imp.bat',0);
    end;
{  end
  else
  begin
    if QFacturaFAC_DOMICILIO.Value = 'True' then
    begin
      a := 1;
      while a <= dm.QParametrospar_copias_domicilio.Value do
      begin
        winexec('.\imp.bat',0);
        a := a + 1;
      end;
    end
    else
      winexec('.\imp.bat',0);
    if copias = 0 then copias := 1;
    a := 1;
    while a <= copias do
    begin
      winexec('.\imp.bat',0);
//      winexec('.\imp.bat',0);
      a := a + 1;
    end;}
    RFactura.Destroy;
except
  RFactura.Destroy;
  end;

end;

procedure TfrmReimpresion.Imp40ColumnasRec;
var
  arch : textfile;
  s, s1, s2, s3, s4, s5, s6 : array [0..20] of char;
begin
  AssignFile(arch, '.\imp.bat');
  rewrite(arch);
  writeln(arch, 'type .\t.txt > '+puerto);
  closefile(arch);

  AssignFile(arch, '.\t.txt');
  rewrite(arch);
  writeln(arch, dm.Centro(trim(dm.QEmpresasEMP_NOMBRE.value)));
  writeln(arch, dm.Centro(trim(DM.QEmpresasEMP_DIRECCION.value)));
  writeln(arch, dm.Centro(trim(DM.QEmpresasEMP_LOCALIDAD.value)));
  writeln(arch, dm.Centro('Telefono : '+trim(dm.QEmpresasEMP_TELEFONO.value)));
  writeln(arch, dm.Centro('RNC: '+dm.QEmpresasEMP_RNC.value));
  writeln(arch, ' ');
  if RRecibo.QRecibosREC_TIPO.Value = 'C' then
    writeln(arch, dm.Centro('R E C I B O   D E   C O B R O'))
  else
    writeln(arch, dm.Centro('R E C I B O   D E   I N G R E S O'));
  writeln(arch, ' ');
  writeln(arch, 'Numero   : '+inttostr(RRecibo.QRecibosREC_NUMERO.value));
  writeln(arch, 'Fecha    : '+DateToStr(RRecibo.QRecibosREC_FECHA.value));
  writeln(arch, 'Cliente  : '+RRecibo.QRecibosREC_NOMBRE.value);
  writeln(arch, 'Concepto : '+copy(trim(RRecibo.QRecibosREC_CONCEPTO.value),1,40));
  writeln(arch, 'Monto    : '+Format('%n',[RRecibo.QRecibosREC_MONTO.value]));
  writeln(arch, 'Descuento: '+Format('%n',[RRecibo.QRecibosREC_DESCUENTO.value]));

  writeln(arch, '----------------------------------------');
  writeln(arch, 'Doc Grp Tipo Numero  Fecha      Aplicado');
  writeln(arch, '----------------------------------------');
  while not RRecibo.QDoc.eof do
  begin
    s := '';
    fillchar(S, 5-length(RRecibo.QDocDET_TIPO.value),' ');
    s1 := '';
    fillchar(S1, 4-length(trim(RRecibo.QDocFAC_FORMA.value)),' ');
    s2 := '';
    fillchar(S2, 4-length(inttostr(RRecibo.QDocTFA_CODIGO.value)),' ');
    s3:= '';
    fillchar(s3, 5-length(inttostr(RRecibo.QDocDET_NUMERO.value)),'0');
    s4 := '';
    fillchar(s4, 12-length(datetostr(RRecibo.QDocDET_FECHA.value)),' ');
    s5 := '';
    fillchar(s5, 5-length(Inttostr(RRecibo.QDocCuota.value)),'0');
    s6 := '';
    fillchar(s6, 10-length(format('%n',[RRecibo.QDocDET_MONTO.value])),' ');
    writeln(arch, RRecibo.QDocDET_TIPO.value+s+
                  RRecibo.QDocFAC_FORMA.value+s1+
                  inttostr(RRecibo.QDocTFA_CODIGO.value)+'  '+
                  s3+inttostr(RRecibo.QDocDET_NUMERO.value)+s4+
//                  s5+Inttostr(RRecibo.QDocCuota.value)+s4+
                  datetostr(RRecibo.QDocDET_FECHA.value)+s6+
                  format('%n',[RRecibo.QDocDET_MONTO.value]));

    RRecibo.QDoc.next;
  end;
  writeln(arch, ' ');
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select cli_balance, cli_limite from clientes');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and cli_codigo = :cli');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('cli').Value := RRecibo.QRecibosCLI_CODIGO.Value;
  dm.Query1.Open;

  writeln(arch, ' ');
  writeln(arch, dm.Centro('SU CUENTA REFLEJA UN BALANCE'));
  writeln(arch, dm.Centro('A LA FECHA DE '+Format('%n',[dm.Query1.FieldByName('cli_balance').AsFloat])));
  writeln(arch, dm.Centro('UN DISPONIBLE DE '+Format('%n',[dm.Query1.FieldByName('cli_limite').AsFloat-
                                                             dm.Query1.FieldByName('cli_balance').AsFloat])));

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select * from pr_Estadistica_cli (:emp, :cli, :fec)');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('cli').Value := RRecibo.QRecibosCLI_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('fec').Value    := Date;
  dm.Query1.Open;
  writeln(arch, dm.Centro('Y UN MONTO VENCIDO DE '+Format('%n',[dm.Query1.FieldByName('mtovencido').AsFloat])));

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select f.fpa_nombre, sum(p.for_monto) as monto');
  dm.Query1.SQL.Add('from formaspago f, recformapago p');
  dm.Query1.SQL.Add('where f.emp_codigo = p.emp_codigo');
  dm.Query1.SQL.Add('and f.fpa_codigo = p.fpa_codigo');
  dm.Query1.SQL.Add('and p.emp_codigo = :emp');
  dm.Query1.SQL.Add('and p.rec_numero = :num');
  dm.Query1.SQL.Add('and p.for_monto > 0');
  dm.Query1.SQL.Add('group by f.fpa_nombre');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('num').Value := RRecibo.QRecibosREC_NUMERO.Value;
  dm.Query1.Open;

  writeln(arch, ' ');
  dm.Query1.DisableControls;
  dm.Query1.First;
  while not dm.Query1.Eof do
  begin
    s:= '';
    fillchar(s, 14-length(dm.Query1.FieldByName('fpa_nombre').asstring),' ');
    s1 := '';
    fillchar(s1, 10-length(format('%n',[dm.Query1.FieldByName('monto').asfloat])),' ');
    writeln(arch,copy(dm.Query1.FieldByName('fpa_nombre').asstring,1,14)+s+s1+format('%n',[dm.Query1.FieldByName('monto').asfloat]));
    dm.Query1.Next;
  end;
  dm.Query1.EnableControls;

  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, dm.Centro('_______________________'));
  writeln(arch, dm.Centro('Recibido por'));
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, dm.Centro('Gracias por su pago...'));
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  CloseFile(arch);
  if cbDestino.ItemIndex = 1 then
  begin
    winexec('imp.bat',0);
    RRecibo.Destroy;
  end
  else
  begin
    Application.CreateForm(tfrmImpPantalla, frmImpPantalla);
    frmImpPantalla.Memo1.Lines.LoadFromFile('t.txt');
    frmImpPantalla.ShowModal;
    frmImpPantalla.Release;
    RRecibo.Destroy;
  end;
end;

procedure TfrmReimpresion.Imp40ColumnasNC;
var
  arch : textfile;
begin
  AssignFile(arch, '.\imp.bat');
  rewrite(arch);
  writeln(arch, 'type .\t.txt > '+puerto);
  closefile(arch);

  AssignFile(arch, '.\t.txt');
  rewrite(arch);
  writeln(arch, dm.Centro(trim(dm.QEmpresasEMP_NOMBRE.value)));
  writeln(arch, dm.Centro(trim(DM.QEmpresasEMP_DIRECCION.value)));
  writeln(arch, dm.Centro(trim(DM.QEmpresasEMP_LOCALIDAD.value)));
  writeln(arch, dm.Centro('Telefono : '+trim(dm.QEmpresasEMP_TELEFONO.value)));
  writeln(arch, dm.Centro('RNC: '+dm.QEmpresasEMP_RNC.value));
  writeln(arch, ' ');
  writeln(arch, dm.Centro('N O T A   D E   C R E D I T O'));
  writeln(arch, ' ');
  writeln(arch, 'Numero  : '+inttostr(RNotaCredito.QNotaNCR_NUMERO.value));
  writeln(arch, 'Cliente : '+RNotaCredito.QNotaCLI_NOMBRE.Value);
  writeln(arch, 'Fecha   : '+DateToStr(RNotaCredito.QNotaNCR_FECHA.Value));
  writeln(arch, 'Concepto: '+RNotaCredito.QNotaNCR_CONCEPTO.value);
  writeln(arch, ' ');
  writeln(arch, 'MONTO   : '+chr(27)+chr(52)+Format('%n',[RNotaCredito.QNotaNCR_MONTO.value])+chr(27)+chr(53));

  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, dm.Centro('_____________________'));
  writeln(arch, dm.Centro('Realizado por'));
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  CloseFile(arch);
  if cbDestino.ItemIndex = 1 then
  begin
    winexec('imp.bat',0);
    RNotaCredito.Destroy;
  end
  else
  begin
    Application.CreateForm(tfrmImpPantalla, frmImpPantalla);
    frmImpPantalla.Memo1.Lines.LoadFromFile('t.txt');
    frmImpPantalla.ShowModal;
    frmImpPantalla.Release;
    RNotaCredito.Destroy;
  end;
end;

procedure TfrmReimpresion.Imp40ColumnasND;
var
  arch : textfile;
begin
  AssignFile(arch, '.\imp.bat');
  rewrite(arch);
  writeln(arch, 'type .\t.txt > '+puerto);
  closefile(arch);

  AssignFile(arch, '.\t.txt');
  rewrite(arch);
  writeln(arch, dm.Centro(trim(dm.QEmpresasEMP_NOMBRE.value)));
  writeln(arch, dm.Centro(trim(DM.QEmpresasEMP_DIRECCION.value)));
  writeln(arch, dm.Centro(trim(DM.QEmpresasEMP_LOCALIDAD.value)));
  writeln(arch, dm.Centro('Telefono : '+trim(dm.QEmpresasEMP_TELEFONO.value)));
  writeln(arch, dm.Centro('RNC: '+dm.QEmpresasEMP_RNC.value));
  writeln(arch, ' ');
  writeln(arch, dm.Centro('N O T A   D E   D E B I T O'));
  writeln(arch, ' ');
  writeln(arch, 'Numero  : '+inttostr(RNotaDebito.QNotaNDE_NUMERO.value));
  writeln(arch, 'Cliente : '+RNotaDebito.QNotaCLI_NOMBRE.Value);
  writeln(arch, 'Fecha   : '+DateToStr(RNotaDebito.QNotaNDE_FECHA.Value));
  writeln(arch, 'Concepto: '+RNotaDebito.QNotaNDE_CONCEPTO.value);
  writeln(arch, ' ');
  writeln(arch, 'MONTO   : '+chr(27)+chr(52)+Format('%n',[RNotaDebito.QNotaNDE_MONTO.value])+chr(27)+chr(53));

  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, dm.Centro('_____________________'));
  writeln(arch, dm.Centro('Recibido Por'));
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  CloseFile(arch);
  if cbDestino.ItemIndex = 1 then
  begin
    winexec('imp.bat',0);
    RNotaDebito.Destroy;
  end
  else
  begin
    Application.CreateForm(tfrmImpPantalla, frmImpPantalla);
    frmImpPantalla.Memo1.Lines.LoadFromFile('t.txt');
    frmImpPantalla.ShowModal;
    frmImpPantalla.Release;
    RNotaDebito.Destroy;
  end;
end;

procedure TfrmReimpresion.Imp40ColumnasDEV;
var
  arch : textfile;
  s : array [0..20] of char;
begin
  AssignFile(arch, '.\imp.bat');
  rewrite(arch);
  writeln(arch, 'type .\t.txt > '+puerto);
  closefile(arch);

  AssignFile(arch, '.\t.txt');
  rewrite(arch);
  writeln(arch, dm.Centro(trim(dm.QEmpresasEMP_NOMBRE.value)));
  writeln(arch, dm.Centro(trim(DM.QEmpresasEMP_DIRECCION.value)));
  writeln(arch, dm.Centro(trim(DM.QEmpresasEMP_LOCALIDAD.value)));
  writeln(arch, dm.Centro('Telefono : '+trim(dm.QEmpresasEMP_TELEFONO.value)));
  writeln(arch, dm.Centro('RNC: '+dm.QEmpresasEMP_RNC.value));
  writeln(arch, ' ');
  writeln(arch, dm.Centro('D E V O L U C I O N'));
  writeln(arch, ' ');
  writeln(arch, 'Numero  : '+inttostr(RDevolucion.QDevolucionDEV_NUMERO.value));
  writeln(arch, 'Cliente : '+RDevolucion.QDevolucionCLI_NOMBRE.value);
  writeln(arch, 'Fecha   : '+DateToStr(RDevolucion.QDevolucionDEV_FECHA.Value));
  writeln(arch, ' ');
  writeln(arch, 'MONTO   : '+chr(27)+chr(52)+Format('%n',[RDevolucion.QDevolucionDEV_TOTAL.value])+chr(27)+chr(53));
  //writeln(arch, RDevolucion.lbComentario.caption);
  writeln(arch, '----------------------------------------');
  writeln(arch, 'Cant. Descripcion del Producto');
  writeln(arch, '----------------------------------------');
  RDevolucion.QDetalle.DisableControls;
  RDevolucion.QDetalle.First;
  while not RDevolucion.QDetalle.Eof do
  begin
    if RDevolucion.QDetalleDEV_CANTIDAD.Value > 0 then
    begin
      s := '';
      fillchar(S, 5-length(floattostr(RDevolucion.QDetalleDEV_CANTIDAD.value)),' ');
      writeln(arch, floattostr(RDevolucion.QDetalleDEV_CANTIDAD.value)+s+
              copy(trim(RDevolucion.QDetallePRO_NOMBRE.value),1,32));
    end;
    RDevolucion.QDetalle.Next;
  end;
  RDevolucion.QDetalle.EnableControls;
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, dm.Centro('_____________________'));
  writeln(arch, dm.Centro('Realizado por'));
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  CloseFile(arch);
  if cbDestino.ItemIndex = 1 then
  begin
    winexec('imp.bat',0);
    RDevolucion.Destroy;
  end
  else
  begin
    Application.CreateForm(tfrmImpPantalla, frmImpPantalla);
    frmImpPantalla.Memo1.Lines.LoadFromFile('t.txt');
    frmImpPantalla.ShowModal;
    frmImpPantalla.Release;
    RDevolucion.Destroy;
  end;
end;

procedure TfrmReimpresion.Imp40ColumnasDES;
var
  arch : textfile;
begin
  AssignFile(arch, '.\imp.bat');
  rewrite(arch);
  writeln(arch, 'type .\t.txt > '+puerto);
  closefile(arch);

  AssignFile(arch, '.\t.txt');
  rewrite(arch);
  writeln(arch, dm.Centro(trim(dm.QEmpresasEMP_NOMBRE.value)));
  writeln(arch, dm.Centro(trim(DM.QEmpresasEMP_DIRECCION.value)));
  writeln(arch, dm.Centro(trim(DM.QEmpresasEMP_LOCALIDAD.value)));
  writeln(arch, dm.Centro('Telefono : '+trim(dm.QEmpresasEMP_TELEFONO.value)));
  writeln(arch, dm.Centro('RNC: '+dm.QEmpresasEMP_RNC.value));
  writeln(arch, ' ');
  writeln(arch, dm.Centro('D E S E M B O L S O   D E   C A J A'));
  writeln(arch, ' ');
  writeln(arch, 'Numero  : '+inttostr(RDesembolso.QDesemDES_NUMERO.value));
  writeln(arch, 'Benef.  : '+RDesembolso.QDesemDES_BENEFICIARIO.value);
  writeln(arch, 'Fecha   : '+DateToStr(RDesembolso.QDesemDES_FECHA.Value));
  writeln(arch, 'Concepto: '+RDesembolso.QdesemDES_CONCEPTO.value);
  writeln(arch, ' ');
  writeln(arch, 'MONTO   : '+chr(27)+chr(52)+Format('%n',[RDesembolso.QDesemDES_MONTO.value])+chr(27)+chr(53));

  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, dm.Centro('_____________________'));
  writeln(arch, dm.Centro('Recibido por'));
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  CloseFile(arch);
  if cbDestino.ItemIndex = 1 then
  begin
    winexec('imp.bat',0);
    RDesembolso.Destroy;
  end
  else
  begin
    Application.CreateForm(tfrmImpPantalla, frmImpPantalla);
    frmImpPantalla.Memo1.Lines.LoadFromFile('t.txt');
    frmImpPantalla.ShowModal;
    frmImpPantalla.Release;
    RDesembolso.Destroy;
  end;
end;

procedure TfrmReimpresion.Imp40ColumnasCON;
var
  arch : textfile;
  s, s1, s2 : array [0..20] of char;
begin
  AssignFile(arch, '.\imp.bat');
  rewrite(arch);
  writeln(arch, 'type .\t.txt > '+puerto);
  closefile(arch);

  AssignFile(arch, '.\t.txt');
  rewrite(arch);
  writeln(arch, dm.Centro(trim(dm.QEmpresasEMP_NOMBRE.value)));
  writeln(arch, dm.Centro(trim(DM.QEmpresasEMP_DIRECCION.value)));
  writeln(arch, dm.Centro(trim(DM.QEmpresasEMP_LOCALIDAD.value)));
  writeln(arch, dm.Centro('Telefono : '+trim(dm.QEmpresasEMP_TELEFONO.value)));
  writeln(arch, dm.Centro('RNC: '+dm.QEmpresasEMP_RNC.value));
  writeln(arch, ' ');
  writeln(arch, dm.Centro('SALIDA DE ALMACEN (CONDUCE)'));
  writeln(arch, ' ');
  writeln(arch, 'Almacen    : '+RConduce.QConduceALM_NOMBRE.value);
  writeln(arch, 'Numero     : '+inttostr(RConduce.QConduceCON_NUMERO.value));
  writeln(arch, 'Fecha      : '+DateToStr(RConduce.QConduceCON_FECHA.value));
  writeln(arch, 'Entregado a: '+RConduce.QConduceCON_NOMBRE.value);
  writeln(arch, 'Direccion  : '+RConduce.QConduceCON_DIRECCION.value);
  writeln(arch, 'Telefono   : '+RConduce.QConduceCON_TELEFONO.value);
  writeln(arch, '----------------------------------------');
  writeln(arch, 'Can. Descripcion                        ');
  writeln(arch, '----------------------------------------');
  while not RConduce.QDetalle.eof do
  begin
    s := '';
    fillchar(S, 5-length(floattostr(RConduce.QDetalleDET_CANTIDAD.value)),' ');
    s1 := '';
    fillchar(S1, 26-length(copy(trim(RConduce.QDetallePRO_NOMBRE.value),1,32)),' ');
    s2 := '';
    fillchar(S2, 9-length(format('%n',[RConduce.QDetalleVAlor.value])),' ');
    writeln(arch, floattostr(RConduce.QDetalleDET_CANTIDAD.value)+s+
            copy(trim(RConduce.QDetallePRO_NOMBRE.value),1,32));

    RConduce.QDetalle.next;
  end;
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, dm.Centro('_____________________'));
  writeln(arch, dm.Centro('Recibido por'));
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  CloseFile(arch);
  winexec('imp.bat',0);
  if cbDestino.ItemIndex = 1 then
  begin
    winexec('imp.bat',0);
    RConduce.Destroy;
  end
  else
  begin
    Application.CreateForm(tfrmImpPantalla, frmImpPantalla);
    frmImpPantalla.Memo1.Lines.LoadFromFile('t.txt');
    frmImpPantalla.ShowModal;
    frmImpPantalla.Release;
    RConduce.Destroy;
  end;
end;

procedure TfrmReimpresion.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmReimpresion.FormActivate(Sender: TObject);
begin
  cbDocClick(Sender);
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
  if FileExists('puerto.txt') then
  begin
    assignfile(puertopeq, 'puerto.txt');
    reset(puertopeq);
    readln(puertopeq, puerto);
    closefile(puertopeq);
  end
  else
    puerto := 'PRN';
end;


procedure TfrmReimpresion.FormCreate(Sender: TObject);
begin
  edGrupo.Text := 'A';
end;

procedure TfrmReimpresion.cbDocClick(Sender: TObject);
begin
  edGrupo.Enabled := cbDoc.ItemIndex = 0;
  edTipo.Enabled  := cbDoc.ItemIndex = 0;
  btTipo.Enabled  := cbDoc.ItemIndex = 0;
  cbidioma.Enabled := (cbDoc.ItemIndex = 2) or (cbDoc.ItemIndex = 8);
  if ((cbDoc.ItemIndex = 0) and (DM.QParametrospar_envio_maxivo_fact.Value = True)) then
  edtHasta.Visible := True;
end;

procedure TfrmReimpresion.Imp40ColumnasDevCompra;
var
  arch : textfile;
  s : array [0..20] of char;
  puertopeq : textfile;
  puerto : string;
begin
  if FileExists('puerto.txt') then
  begin
    assignfile(puertopeq, 'puerto.txt');
    reset(puertopeq);
    readln(puertopeq, puerto);
  end
  else
    puerto := 'PRN';

  Application.createform(tRDevolucion, RDevolucion);

  AssignFile(arch, '.\imp.bat');
  rewrite(arch);
  writeln(arch, 'type .\t.txt > '+puerto);
  closefile(arch);

  AssignFile(arch, '.\t.txt');
  rewrite(arch);
  writeln(arch, dm.Centro(trim(dm.QEmpresasEMP_NOMBRE.value)));
  writeln(arch, dm.Centro(trim(DM.QEmpresasEMP_DIRECCION.value)));
  writeln(arch, dm.Centro(trim(DM.QEmpresasEMP_LOCALIDAD.value)));
  writeln(arch, dm.Centro('Telefono : '+trim(dm.QEmpresasEMP_TELEFONO.value)));
  writeln(arch, dm.Centro('RNC: '+dm.QEmpresasEMP_RNC.value));
  writeln(arch, ' ');
  writeln(arch, dm.Centro('D E V O L U C I O N'));
  writeln(arch, ' ');
  writeln(arch, 'Numero  : '+inttostr(RDevolucionCompra.QDevolucionDEV_NUMERO.value));
  writeln(arch, 'Cliente : '+RDevolucionCompra.Qdevoluciondev_nombre.Asstring);
  writeln(arch, 'Fecha   : '+DateToStr(RDevolucionCompra.QDevolucionDEV_FECHA.Value));
  writeln(arch, ' ');
  writeln(arch, 'MONTO   : '+chr(27)+chr(52)+Format('%n',[RDevolucionCompra.QdevolucionDEV_TOTAL.value])+chr(27)+chr(53));
  writeln(arch, '----------------------------------------');
  writeln(arch, 'Cant. Descripcion del Producto');
  writeln(arch, '----------------------------------------');
  RDevolucionCompra.QDetalle.DisableControls;
  RDevolucionCompra.QDetalle.First;
  while not RDevolucionCompra.QDetalle.Eof do
  begin
    s := '';
    fillchar(S, 5-length(floattostr(RDevolucionCompra.QDetalleDEV_CANTIDAD.value)),' ');
    writeln(arch, floattostr(RDevolucionCompra.QDetalleDEV_CANTIDAD.value)+s+
            copy(trim(RDevolucionCompra.QDetallePRO_NOMBRE.value),1,32));
    RDevolucionCompra.QDetalle.Next;
  end;
  RDevolucionCompra.QDetalle.EnableControls;
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, dm.Centro('_____________________'));
  writeln(arch, dm.Centro('Realizado por'));
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  CloseFile(arch);
  winexec('imp.bat',0);
  RDevolucion.Destroy;
end;


procedure TfrmReimpresion.Rpt_FacOrdTallerBeforePrint(
  Sender: TfrxReportComponent);
begin
if qFacturaOrdTallerLOGO.IsNull then begin
TfrxMemoView(Rpt_FacOrdTaller.FindObject('Logo')).Visible := False;
TfrxMemoView(Rpt_FacOrdTaller.FindObject('MCia')).Visible := True;
end;
if not qFacturaOrdTallerLOGO.IsNull then begin
TfrxMemoView(Rpt_FacOrdTaller.FindObject('Logo')).Visible := True;
TfrxMemoView(Rpt_FacOrdTaller.FindObject('MCia')).Visible := False;
end;
IF qFacturaOrdTallerNCF_VENCE.IsNull THEN
TfrxMemoView(Rpt_FacOrdTaller.FindObject('MVenceNCF')).Visible := False ELSE
TfrxMemoView(Rpt_FacOrdTaller.FindObject('MVenceNCF')).Visible := True;
end;

procedure TfrmReimpresion.Imp40ColumnasRecDet;
var
  arch : textfile;
  s, s1, s2, s3, s4, s5, s6 : array [0..20] of char;
begin
  AssignFile(arch, '.\imp.bat');
  rewrite(arch);
  writeln(arch, 'type .\t.txt > '+puerto);
  closefile(arch);

  AssignFile(arch, '.\t.txt');
  rewrite(arch);
  writeln(arch, dm.Centro(trim(dm.QEmpresasEMP_NOMBRE.value)));
  writeln(arch, dm.Centro(trim(DM.QEmpresasEMP_DIRECCION.value)));
  writeln(arch, dm.Centro(trim(DM.QEmpresasEMP_LOCALIDAD.value)));
  writeln(arch, dm.Centro('Telefono : '+trim(dm.QEmpresasEMP_TELEFONO.value)));
  writeln(arch, dm.Centro('RNC: '+dm.QEmpresasEMP_RNC.value));
  writeln(arch, ' ');
  writeln(arch, '----------------------------------------');
  writeln(arch, dm.Centro('RECIBO DEL PAGO DEL CONTROL'));
  writeln(arch, '----------------------------------------');


  writeln(arch, ' ');
  writeln(arch, 'RECIBO #       : '+inttostr(RRecibo.QRecibosREC_NUMERO.value));
  writeln(arch, 'Fecha  Ingreso : '+DateToStr(RRecibo.QRecibosREC_FECHA.value)+' '+TimeToStr(Now));

  DM.Query1.Close;
  DM.Query1.SQL.Clear;
  DM.Query1.SQL.Add('select MIN(f.fac_fecha) DESDE, MAX(f.fac_fecha) HASTA');
  DM.Query1.SQL.Add('from Det_Recibo DR');
  DM.Query1.SQL.Add('inner join Facturas F on DR.emp_codigo = F.emp_codigo and');
  DM.Query1.SQL.Add('DR.suc_codigo = f.suc_codigo and DR.det_numero = F.fac_numero');
  DM.Query1.SQL.Add('and dr.fac_forma = f.fac_forma and dr.tfa_codigo = f.tfa_codigo');
  DM.Query1.SQL.Add('INNER JOIN Det_Factura DF ON F.emp_codigo = DF.emp_codigo AND');
  DM.Query1.SQL.Add('F.suc_codigo = DF.suc_codigo AND F.fac_numero = DF.fac_numero');
  DM.Query1.SQL.Add('AND F.fac_forma = DR.fac_forma AND F.tfa_codigo = DR.tfa_codigo');
  DM.Query1.SQL.Add('where Dr.emp_codigo = :EMP and Dr.suc_codigo = :SUC and Dr.rec_numero = :NUM');
  DM.Query1.Parameters.ParamByName('EMP').Value := RRecibo.QRecibosEMP_CODIGO.Value;
  DM.Query1.Parameters.ParamByName('SUC').Value := RRecibo.QRecibossuc_codigo.Value;
  DM.Query1.Parameters.ParamByName('NUM').Value := RRecibo.QRecibosREC_NUMERO.Value;
  DM.Query1.Open;
  writeln(arch, 'Fecha Desde    : '+FormatDateTime('dd/mm/yyyy',DM.Query1.FieldByName('DESDE').Value));
  writeln(arch, 'Fecha Hasta    : '+FormatDateTime('dd/mm/yyyy',DM.Query1.FieldByName('HASTA').Value));
  writeln(arch, '');
  writeln(arch, 'Ficha       : '+LeftStr(RRecibo.QRecibosREC_NOMBRE.value,40-14));
  writeln(arch, 'Recibo de   : '+DM.VP_USUARIO);
  writeln(arch, 'La Suma de  : '+Format('%n',[RRecibo.QRecibosREC_MONTO.value]));
  DM.Query1.Close;
  DM.Query1.SQL.Clear;
  DM.Query1.SQL.Add('SELECT [dbo].[CantidadConLetra] (:MONTO) LETRAS');
  DM.Query1.Parameters.ParamByName('MONTO').Value := RRecibo.QRecibosREC_MONTO.Value;
  DM.Query1.Open;
  writeln(arch,LeftStr(DM.Query1.FieldByName('LETRAS').VALUE,40));




  writeln(arch, '');

  with dm.Query1 do begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT LEFT(DF.pro_nombre,18) SERVICIO, DF.PRO_CODIGO CODIGO, ');
  SQL.Add('SUM(det_cantidad * det_precio) IMPORTE');
  SQL.Add('from Recibos R');
  SQL.Add('inner join Det_Recibo DR on R.emp_codigo = DR.emp_codigo and ');
  SQL.Add('R.suc_codigo = DR.suc_codigo and R.rec_numero = DR.rec_numero');
  SQL.Add('inner join Facturas F on DR.emp_codigo = F.emp_codigo and ');
  SQL.Add('DR.suc_codigo = f.suc_codigo and DR.det_numero = F.fac_numero');
  SQL.Add('and dr.fac_forma = f.fac_forma and dr.tfa_codigo = f.tfa_codigo');
  SQL.Add('INNER JOIN Det_Factura DF ON F.emp_codigo = DF.emp_codigo AND');
  SQL.Add('F.suc_codigo = DF.suc_codigo AND F.fac_numero = DF.fac_numero');
  SQL.Add('AND F.fac_forma = DR.fac_forma AND F.tfa_codigo = DR.tfa_codigo');
  SQL.Add('where r.emp_codigo = :EMP and r.suc_codigo = :SUC and r.rec_numero = :NUM');
  SQL.Add('GROUP BY DF.pro_nombre, DF.PRO_CODIGO');
  SQL.Add('ORDER BY DF.pro_nombre');
  Parameters.ParamByName('EMP').Value := RRecibo.QRecibosEMP_CODIGO.Value;
  Parameters.ParamByName('SUC').Value := RRecibo.QRecibossuc_codigo.Value;
  Parameters.ParamByName('NUM').Value := RRecibo.QRecibosREC_NUMERO.Value;
  Open;
  IF NOT IsEmpty THEN BEGIN
  writeln(arch, '----------------------------------------');
  writeln(arch,DM.Centro('DETALLE DE SERVICIOS PAGADOS'));
  writeln(arch, '----------------------------------------');
  writeln(arch, 'CODIGO CARGO                     IMPORTE');
  writeln(arch, '----------------------------------------');
  writeln(arch, ' ');
  while not DM.Query1.eof do
  begin
    s := '';
    fillchar(S, 6-LENGTH(DM.Query1.FieldByName('CODIGO').Text),' ');
    s1 := '';
    fillchar(S1, 24-LENGTH(DM.Query1.FieldByName('SERVICIO').Text),' ');
    s2 := '';
    fillchar(s3, 9-length(FormatCurr('#,0',DM.Query1.FieldByName('IMPORTE').Value)),' ');
    writeln(arch, (S+DM.Query1.FieldByName('CODIGO').Text+' '+
                  DM.Query1.FieldByName('SERVICIO').Text+' '+S1+S2+
                  FormatCurr('#,0.00',DM.Query1.FieldByName('IMPORTE').value)));
    DM.Query1.next;
  end;

  end;
  end;
  dm.Query1.Close;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select f.fpa_nombre, sum(p.for_monto) as monto');
  dm.Query1.SQL.Add('from formaspago f, recformapago p');
  dm.Query1.SQL.Add('where f.emp_codigo = p.emp_codigo');
  dm.Query1.SQL.Add('and f.fpa_codigo = p.fpa_codigo');
  dm.Query1.SQL.Add('and p.emp_codigo = :emp');
  dm.Query1.SQL.Add('and p.rec_numero = :num');
  dm.Query1.SQL.Add('and p.suc_codigo = :suc');
  dm.Query1.SQL.Add('and p.for_monto > 0');
  dm.Query1.SQL.Add('group by f.fpa_nombre');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('num').Value := RRecibo.QRecibosREC_NUMERO.Value;
  dm.Query1.Parameters.ParamByName('suc').Value := RRecibo.QRecibossuc_codigo.Value;
  dm.Query1.Open;

  writeln(arch, ' ');
  writeln(arch, 'FORMA DE PAGO     MONTO');
  writeln(arch, '-------------   ---------');
  dm.Query1.DisableControls;
  dm.Query1.First;
  while not dm.Query1.Eof do
  begin
    s:= '';
    fillchar(s, 14-length(dm.Query1.FieldByName('fpa_nombre').asstring),' ');
    s1 := '';
    fillchar(s1, 10-length(format('%n',[dm.Query1.FieldByName('monto').asfloat])),' ');
    writeln(arch,copy(dm.Query1.FieldByName('fpa_nombre').asstring,1,14)+s+s1+format('%n',[dm.Query1.FieldByName('monto').asfloat]));
    dm.Query1.Next;
  end;
  dm.Query1.EnableControls;
  s2 := '';
    fillchar(s2, 9-length(Format('%n',[RRecibo.QRecibosREC_MONTO.value])),' ');
  writeln(arch, 'Total Pagado '+s1+Format('%n',[RRecibo.QRecibosREC_MONTO.value]));

  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, dm.Centro(RRecibo.QRecibosREC_CONCEPTO.value));
  writeln(arch, dm.Centro('_______________________'));
  writeln(arch, dm.Centro('Recibido por'));
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, dm.Centro(UpperCase(dm.vp_usuario)));
  writeln(arch, dm.Centro('_______________________'));
  writeln(arch, dm.Centro('Entregado por'));
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');

  CloseFile(arch);
  if cbDestino.ItemIndex = 1 then
  begin
    winexec('.\imp.bat',0);
    RRecibo.Destroy;
  end
  else
  begin
    Application.CreateForm(tfrmImpPantalla, frmImpPantalla);
    frmImpPantalla.Memo1.Lines.LoadFromFile('t.txt');
    frmImpPantalla.ShowModal;
    frmImpPantalla.Release;
    RRecibo.Destroy;
  end;

end;

procedure TfrmReimpresion.EnvioMail(Reporte: TQuickRep; Tipo: String);
begin
  if Trim(edNumero.Text) = '' then begin
  ShowMessage('Debes indicar el Numero del Documento a Enviar!');
  Reporte.Destroy;
  Exit;
  end;

  if cbDestino.ItemIndex = 2 then begin
if edNumero.Text <> '' then begin
case cbDoc.ItemIndex of
//Factura
0:begin
vl_destino := GetDestino('Facturas','fac_numero');

if vl_destino = '' then begin
  ShowMessage('Debes indicar destinatario a Enviar!');
  Reporte.Destroy;
  Exit;
  end;

  mmo1.Clear;
  mmo1.Lines.Add('Buenas,');
  mmo1.Lines.Add('');
  mmo1.Lines.Add('Sres. '+vl_cliente+',');
  mmo1.Lines.Add('Adjunto encontrara la Factura No. '+edNumero.Text);
  mmo1.Lines.Add('');
  mmo1.Lines.Add('Saludos, ');
  mmo1.Lines.Add(DBLookupComboBox2.Text);
end;
//Pedido de clientes
1:begin
end;
//Orden de Compra
2:begin
end;
//Nota de cr�dito
3:begin
vl_cliente  := GetCliente('NotasCredito','ncr_numero');
vl_destino  := GetDestino('NotasCredito','ncr_numero');
vl_concepto := GetConcepto('NotasCredito','ncr_concepto','ncr_numero');
  mmo1.Clear;
  mmo1.Lines.Add('Buenas,');
  mmo1.Lines.Add('');
  mmo1.Lines.Add('Sres. '+vl_cliente+',');
  mmo1.Lines.Add('Adjunto encontrara la Nota de Credito No. '+edNumero.Text+
  ', por el concepto de '+vl_concepto);
  mmo1.Lines.Add('');
  mmo1.Lines.Add('Saludos, ');
  mmo1.Lines.Add(DBLookupComboBox2.Text);

end;
//Nota de d�bito
4:begin
vl_cliente  := GetCliente('NotasDebito','nde_numero');
vl_destino  := GetDestino('NotasDebito','nde_numero');
vl_concepto := GetConcepto('NotasDebito','nde_concepto','nde_numero');
  mmo1.Clear;
  mmo1.Lines.Add('Buenas,');
  mmo1.Lines.Add('');
  mmo1.Lines.Add('Sres. '+vl_cliente+',');
  mmo1.Lines.Add('Adjunto encontrara la Nota de Debito No. '+edNumero.Text+
  ', por el concepto de '+vl_concepto);
  mmo1.Lines.Add('');
  mmo1.Lines.Add('Saludos, ');
  mmo1.Lines.Add(DBLookupComboBox2.Text);

end;
//Devoluci�n
5:begin
end;
//Recibo
6:begin
vl_cliente  := GetCliente('Recibos','rec_numero');
vl_destino  := GetDestino('Recibos','rec_numero');
vl_concepto := GetConcepto('Recibos','rec_concepto','rec_numero');
  mmo1.Clear;
  mmo1.Lines.Add('Buenas,');
  mmo1.Lines.Add('');
  mmo1.Lines.Add('Sres. '+vl_cliente+',');
  mmo1.Lines.Add('Adjunto encontrara la Nota de Debito No. '+edNumero.Text+
  ', por el concepto de '+vl_concepto);
  mmo1.Lines.Add('');
  mmo1.Lines.Add('Saludos, ');
  mmo1.Lines.Add(DBLookupComboBox2.Text);

end;
//Desembolso
7:begin
end;
//Cotizaci�n
8:begin
vl_cliente  := GetCliente('Cotizacion','cot_numero');
vl_destino  := GetDestino('Cotizacion','cot_numero');
  mmo1.Clear;
  mmo1.Lines.Add('Buenas,');
  mmo1.Lines.Add('');
  mmo1.Lines.Add('Sres. '+vl_cliente+',');
  mmo1.Lines.Add('Adjunto encontrara la Cotizacion No. '+edNumero.Text);
  mmo1.Lines.Add('');
  mmo1.Lines.Add('Saludos, ');
  mmo1.Lines.Add(DBLookupComboBox2.Text);

end;
//Entrada de almac�n
9:begin
end;
//Conduce / Salida
10:begin
end;
//Transferencia
11:begin
end;
//Cotizaci�n m�ltiple
12:begin
end;
//Liquidacion de Mercancia
13:begin
end;
//Orden de Servicio
14:begin
end;
//Devoluci�n en Compra
15:begin
end;
end;
end;
end;


  case cbDoc.ItemIndex of
  0,3,4,6,8:begin
  frmMain.EnviarCorreo(vl_destino,
                       Tipo+' '+vl_cliente,
                       vl_atach,
                       mmo1.Lines.GetText);
  Reporte.Destroy;
  DeleteFile(vl_atach);
  end;
  end;
end;

function TfrmReimpresion.GetDestino(Tabla, Campo: String): String;
begin
with DM.Query1 do begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT C.CLI_EMAIL DESTINO ');
  SQL.Add('FROM '+TABLA+' F');
  SQL.Add('INNER JOIN Clientes C ON F.cli_codigo = C.cli_codigo AND F.emp_codigo = C.emp_codigo');
  SQL.Add('WHERE '+CAMPO+' = '+ednumero.text+' AND F.suc_codigo = '+IntToStr(DBLookupComboBox2.KeyValue));
  IF cbDoc.itemindex = 0 THEN
  SQL.Add(' AND F.tfa_codigo = '+edTipo.Text);
  Open;
  if not IsEmpty then
  Result := FieldByName('DESTINO').Text else
  begin
  ShowMessage('Debes asignar el correo para poder enviar el correo!');
  end;
end;

end;

function TfrmReimpresion.GetCliente(Tabla, Campo: String): String;
begin
with DM.Query1 do begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT C.CLI_NOMBRE CLIENTE ');
  SQL.Add('FROM '+TABLA+' F');
  SQL.Add('INNER JOIN Clientes C ON F.cli_codigo = C.cli_codigo AND F.emp_codigo = C.emp_codigo');
  SQL.Add('WHERE '+CAMPO+' = '+edNumero.Text+' AND F.suc_codigo = '+IntToStr(DBLookupComboBox2.KeyValue));
  IF cbDoc.ItemIndex = 0 THEN
  SQL.Add(' AND F.tfa_codigo = '+edTipo.Text);
  Open;
  if not IsEmpty then
  Result := FieldByName('CLIENTE').Text;
end;

end;

function TfrmReimpresion.GetSuplidor(Tabla, Campo: String): String;
begin
with DM.Query1 do begin
  Close;
  SQL.Clear;
  SQL.Add('Select TOP 1 RTRIM(SUP_NOMBRE) SUPLIDOR FROM PROVEEDORES');
  SQL.Add('WHERE SUP_CODIGO IN (SELECT SUP_CODIGO FROM '+Tabla+' WHERE '+CAMPO+' = '+edNumero.Text+')');
  Open;
  if not IsEmpty then
  Result := FieldByName('SUPLIDOR').Text;
end;

end;

function TfrmReimpresion.GetDestinoSup(Tabla, Campo: String): String;
begin
with DM.Query1 do begin
  Close;
  SQL.Clear;
  SQL.Add('Select TOP 1 RTRIM(sup_email) DESTINO FROM PROVEEDORES');
  SQL.Add('WHERE SUP_CODIGO IN (SELECT SUP_CODIGO FROM '+Tabla+' WHERE '+CAMPO+' = '+edNumero.Text+')');
  Open;
  if not IsEmpty then
  Result := FieldByName('DESTINO').Text;
end;

end;

function TfrmReimpresion.GetConcepto(Tabla, Campo, Campo2: String): String;
begin
with DM.Query1 do begin
  Close;
  SQL.Clear;
  SQL.Add('Select RTRIM('+Campo+') CONCEPTO FROM '+Tabla+
  ' WHERE '+Campo2+' = '+edNumero.Text);
  Open;
  if not IsEmpty then
  Result := FieldByName('CONCEPTO').Text;
end;
end;


procedure TfrmReimpresion.Imp40ColumnasFac;
var
  arch, puertopeq : textfile;
  s, s1, s2, s3, s4, s5,s6 : array [0..20] of char;
  Tfac, Saldo, TDesc : double;
  puerto, lbitbis, impcodigo, pro_codigo, Unidad, codigoabre, t, copias, Recibido, Devuelta : string;
  a : integer;
begin
  QFactura.Close;
  QFactura.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QFactura.Parameters.ParamByName('tipo').Value := StrToInt(edTipo.Text);
  QFactura.Parameters.ParamByName('numero').Value := StrToInt(edNumero.Text);
  QFactura.Parameters.ParamByName('forma').Value := edGrupo.Text;
  QFactura.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
  QFactura.Open;

  QSerie.Close;
  QSerie.Open;

  QSucursal.Close;
  QSucursal.Parameters.ParamByName('emp_codigo').Value := QFacturaEMP_CODIGO.Value;
  QSucursal.Parameters.ParamByName('usu').Value        := QFacturaUSU_CODIGO.Value;
  QSucursal.Open;

  if Trim(edTipo.Text) <> '' then
    begin
    with DM.adoMultiUso do begin
    close;
    sql.clear;
    sql.add('select tfa_nombre, tfa_selcondi, tfa_formatoimp, tfa_puertoimp,');
    sql.add('tfa_actbalance, tfa_cliente, ven_codigo, tfa_precio,');
    sql.add('tfa_mensaje1, tfa_mensaje2, tfa_mensaje3, fpa_codigo,');
    sql.add('tfa_verlimite, tfa_copias, tfa_permite_abonar, tfa_itbis, isnull(tip_codigo,0)tipo,');
    sql.add('tfa_imprimie_encabezado, tfa_rnc, cat_cuenta, tfa_modifica_nombre, tfa_espcliente espcliente');
    sql.add(',Envio_Correo, Envio_Estadocta');
    sql.add('from tiposfactura');
    sql.add('where emp_codigo = '+QuotedStr(DM.QEmpresasEMP_CODIGO.text));
    sql.add('and tfa_codigo = '+QuotedStr(edTipo.text));
    open;

    if dm.adoMultiUso.RecordCount > 0 then begin
    ImprimeEncaqbezado := fieldbyname('tfa_imprimie_encabezado').AsString;
    end;
    end;
    end;


  codigoabre := Trim(DM.QParametrosPAR_CODIGO_ABRE_CAJA.Value);
      with dm.Query1 do begin
      close;
      sql.clear;
      sql.add('select ISNULL(tfa_copias,0) tfa_copias from tiposfactura');
      sql.add('where emp_codigo = :emp');
      sql.add('and tfa_codigo = :cod');
      Parameters.parambyname('emp').Value := dm.vp_cia;
      Parameters.parambyname('cod').Value := edTipo.Text;
      open;
      IF NOT IsEmpty THEN
      copias := FIELDBYNAME('tfa_copias').Value;
      end;



      //Buscar Puerto
with dm.adoMultiUso do begin
Close;
sql.Clear;
sql.Add('select isnull(puerto,''PRN'') puerto');
sql.Add('from CAJAS_IP where ip = '+QuotedStr(DM.GetIPAddress)+
' and emp_codigo = '+QuotedStr(IntToStr(dm.vp_cia)));
Open;
if IsEmpty then
puerto := 'PRN' ELSE
puerto := fieldbyname('puerto').Text;
Close;
end;


  if FileExists('.\puerto.txt') then
  begin
    assignfile(puertopeq, '.\puerto.txt');
    reset(puertopeq);
    readln(puertopeq, puerto);
  end
  else
  begin
  assignfile(puertopeq, '.\puerto.txt');
  Rewrite(puertopeq);
  WriteLn(puertopeq, puerto);
  end;
    //puerto := 'PRN';

  closefile(puertopeq);

  AssignFile(arch, '.\imp.bat');
  rewrite(arch);
  writeln(arch, 'type .\t.txt > '+puerto);
  closefile(arch);



  {AssignFile(arch, '.\imp.bat');
  rewrite(arch);
  writeln(arch, 'type .\t.txt > '+puerto);
   }

  tfac := 0;
  TDesc := 0;
  //application.CreateForm(tRFactura, RFactura);
  RFactura.QFactura.Parameters.ParamByName('emp').Value     := DM.vp_cia;
  RFactura.QFactura.Parameters.ParamByName('tipo').Value    := StrToInt(edTipo.Text);
  RFactura.QFactura.Parameters.ParamByName('forma').Value   := edGrupo.Text;
  RFactura.QFactura.Parameters.ParamByName('numero').Value  := StrToInt(edNumero.Text);
  RFactura.QFactura.Parameters.ParamByName('suc').Value     := DBLookupComboBox2.KeyValue;
  RFactura.QFactura.open;
  RFactura.QDetalle.Parameters.ParamByName('par_invempresa').Value := dm.QParametrosPAR_INVEMPRESA.Value;
  RFactura.QDetalle.open;
  RFactura.QFormasPago.Open;
  AssignFile(arch, '.\t.txt');
  rewrite(arch);

  writeln(arch, dm.Centro('***RE-IMPRESION**'));

  if ImprimeEncaqbezado = 'True' then
  begin
    writeln(arch, dm.centro(QSucursalsuc_nombre.Value));
    writeln(arch, dm.centro(QSucursalsuc_direccion.Value));
    writeln(arch, dm.centro(QSucursalsuc_localidad.Value));
    writeln(arch, dm.centro(QSucursalsuc_telefono.Value));
    writeln(arch, dm.centro('RNC:'+QSucursalsuc_rnc.Value));
{    writeln(arch, dm.centro(dm.QEmpresasemp_nombre.Value));
    writeln(arch, dm.centro(dm.QEmpresasemp_direccion.Value));
    writeln(arch, dm.centro(dm.QEmpresasEMP_LOCALIDAD.Value));
    writeln(arch, dm.centro(dm.QEmpresasEMP_TELEFONO.Value));
    writeln(arch, dm.centro('RNC:'+dm.QEmpresasEMP_RNC.Value));  }
    writeln(arch, ' ');
  end;
//20170608  writeln(arch, dm.centro('*** F A C T U R A ***'));
  writeln(arch, dm.Centro(trim(tTipo.text)));
  if QFacturaFAC_DOMICILIO.Value = 'True' then
     writeln(arch, dm.Centro('DOMICILIO'));
  writeln(arch, ' ');

  writeln(arch, 'Fecha .: '+DateToStr(RFactura.QFacturaFAC_FECHA.Value)+' Factura: '+formatfloat('0000000000',RFactura.QFacturaFAC_NUMERO.value));
  writeln(arch, 'Caja ..: '+RFactura.QFacturaCAJ_CODIGO.Text);


  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add('select cli, dir, tel, ven, caj, fir, otros, CodigoProducto from parconfigimp');
  Query1.SQL.Add('where emp_codigo = :emp');
  Query1.SQL.Add('and tfa_codigo = :tfa');
  Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  Query1.Parameters.ParamByName('tfa').Value := RFactura.QFacturaTFA_CODIGO.Value;
  Query1.Open;
  impcodigo := Query1.FieldByName('CodigoProducto').AsString;

  if Query1.FieldByName('caj').AsString = 'Si' then
  begin
    dm.Query1.Close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select caj_nombre from cajeros');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and caj_codigo = :ven');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('ven').Value := RFactura.QFacturaCAJ_CODIGO.Value;
    dm.Query1.Open;

    s := '';
    fillchar(s, 15-length(copy(dm.Query1.FieldByName('caj_nombre').asstring,1,13)),' ');
    writeln(arch, 'Cajero: '+copy(dm.Query1.FieldByName('caj_nombre').asstring,1,13)+s+'Hora: '+RFactura.QFacturaFAC_HORA.AsString);
  end;

  if Trim(RFactura.QFacturaNumeroCF.Value) <> '' then
  begin
    writeln(arch, ' ');
    writeln(arch, 'NCF: '+RFactura.QFacturaNumeroCF.Value);
  //buscar vencimiento
      with QDatos do begin
      Close;
      sql.Clear;
      SQL.Add('select FechaVenc ');
      sql.Add('from NCF ');
      sql.Add('where VerificaVenc = 1 and emp_codigo = :emp_codigo');
      sql.Add('and suc_codigo = :suc_codigo');
      sql.Add('and NCF_Fijo   = :NCF_Fijo');
      Parameters.ParamByName('emp_codigo').Value := QFacturaEMP_CODIGO.Value;
      if DM.QContabpar_NCF_Sucursal.Value = True then
      Parameters.ParamByName('suc_codigo').Value := QFacturaSUC_CODIGO.Value else
      Parameters.ParamByName('suc_codigo').Value :=  1;
      Parameters.ParamByName('NCF_Fijo').Value   := RFactura.QFacturaNCF_Fijo.Text;
      Open;
      if not IsEmpty then
      writeln(arch,'Fecha Venc.: '+FieldByName('FechaVenc').text);
      end;

      //buscar tipo documentos
      with QDatos do begin
      Close;
      sql.Clear;
      SQL.Add('select b.tdo_nombre Nombre');
      sql.Add('from NCF a');
      sql.Add('inner join TiposDoc b on a.emp_codigo=b.emp_codigo and a.tdo_codigo=b.tdo_codigo');
      sql.Add('where a.emp_codigo = :emp_codigo');
      sql.Add('and a.suc_codigo = :suc_codigo');
      sql.Add('and a.NCF_Fijo   = :NCF_Fijo');
      Parameters.ParamByName('emp_codigo').Value := QFacturaEMP_CODIGO.Value;
      Parameters.ParamByName('suc_codigo').Value := QFacturaSUC_CODIGO.Value;
      Parameters.ParamByName('NCF_Fijo').Value   := RFactura.QFacturaNCF_Fijo.Text;
      Open;
      writeln(arch,FieldByName('Nombre').AsString);
      end;
      end;

  if Trim(RFactura.QFacturaNumeroCF.Value) <> '' then
  begin
    if RFactura.QFacturaFAC_RNC.Value <> '' then
      writeln(arch, 'RNC: '+RFactura.QFacturaFAC_RNC.Value);
  end;

  writeln(arch, ' ');

  if (actbalance = 'True') then
    writeln(arch, 'Vence : '+DateToStr(RFactura.QFacturaFAC_VENCE.value));

  if Query1.FieldByName('cli').AsString = 'Si' then
  begin
    if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
      writeln(arch, 'Nombre: '+RFactura.QFacturaFAC_NOMBRE.value)
    else
      writeln(arch, 'Nombre: '+RFactura.QFacturaFAC_NOMBRE.value);
  end;

  if Query1.FieldByName('dir').AsString = 'Si' then
    if Trim(RFactura.QFacturaFAC_DIRECCION.value) <> '' then
      writeln(arch, 'Dir.  : '+RFactura.QFacturaFAC_DIRECCION.value);
  if Query1.FieldByName('tel').AsString = 'Si' then
    if Trim(RFactura.QFacturaFAC_TELEFONO.value) <> '' then
      writeln(arch, 'Tel.  : '+RFactura.QFacturaFAC_TELEFONO.value);
  if Query1.FieldByName('ven').AsString = 'Si' then
  begin
    dm.Query1.Close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select ven_nombre from vendedores');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and ven_codigo = :ven');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('ven').Value := RFactura.QFacturaVEN_CODIGO.Value;
    dm.Query1.Open;

    writeln(arch, 'Vend. : '+dm.Query1.FieldByName('ven_nombre').asstring);
  end;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select Ciudad_Origen, Nombre_envia,');
  dm.Query1.SQL.Add('Telefono_Envia, Nombre_Recibe, Telefono_Recibe, Descripcion, Descripcion2');
  dm.Query1.SQL.Add(',(SELect suc_nombre from sucursales s');
  dm.Query1.SQL.Add('where emp_codigo = e.emp_codigo and suc_codigo =');
  dm.Query1.SQL.Add('(select env_suc_destino from envio where fac_numero = e.fac_numero and emp_codigo = s.emp_codigo)) Ciudad_Destino');
  dm.Query1.SQL.Add('from envio e where emp_codigo = :emp and suc_codigo = :suc');
  dm.Query1.SQL.Add('and fac_numero = :fac');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('suc').Value := RFactura.QFacturaSUC_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('fac').Value := RFactura.QFacturaFAC_NUMERO.Value;
  dm.Query1.Open;
  if dm.Query1.RecordCount > 0 then
  begin
    writeln(arch, ' ');
    writeln(arch, 'DATOS DEL ENVIO:');
    writeln(arch, ' ');
    writeln(arch, 'Envia : '+dm.Query1.FieldByNAme('Telefono_Envia').AsString);
    writeln(arch, '        '+dm.Query1.FieldByNAme('Nombre_envia').AsString);
    writeln(arch, '        '+dm.Query1.FieldByNAme('Ciudad_Origen').AsString);
    writeln(arch, '');
    writeln(arch, 'Recibe: '+dm.Query1.FieldByNAme('Telefono_Recibe').AsString);
    writeln(arch, '        '+dm.Query1.FieldByNAme('Nombre_Recibe').AsString);
    writeln(arch, '        '+dm.Query1.FieldByNAme('Ciudad_Destino').AsString);
    writeln(arch, '');
    writeln(arch, UpperCase(dm.Query1.FieldByNAme('Descripcion').AsString)+' / '+UpperCase(dm.Query1.FieldByNAme('Descripcion2').AsString));
  end;

  if impcodigo = 'Si' then
  begin
    writeln(arch, '----------------------------------------');
    //writeln(arch, 'CANT  UND  DESCRIPCION   ITBIS     TOTAL');
    writeln(arch, 'CANT/COD UND DESC/PRECIO  ITBIS    TOTAL');
    writeln(arch, '----------------------------------------');
  end
  else
  begin
    writeln(arch, '----------------------------------------');
    writeln(arch, 'CANT. PREC DESCRIPCION   ITBIS     TOTAL');
    writeln(arch, '----------------------------------------');
  end;
  while not RFactura.QDetalle.eof do
  begin
    tfac := tfac + RFactura.QDetallePrecioItbis.value;

    if RFactura.QDetalleTotalDescuento.Value >  0 then
    TDesc := TDesc + RFactura.QDetalleTotalDescuento.Value;

    {if RFactura.QDetalleDET_CONITBIS.value = 'N' then
       lbItbis := 'E'
    else
       lbItbis := ' ';}

    s := '';
    FillChar(s, 5-length(Trim(RFactura.QDetalleDET_CANTIDAD.Text)),' ');
    s1 := '';
    FillChar(s1, 10-length(trim(FORMAT('%n',[RFactura.QDetalleValor.value]))), ' ');
    s2 := '';
    s6 := '';
    FillChar(s6, 10-length(trim(FORMAT('%n',[RFactura.QDetalleDET_PRECIO.value]))), ' ');

    if impcodigo = 'Si' then
      FillChar(s2, 33-length(copy(trim(RFactura.QDetallePRO_NOMBRE.value),1,33)),' ')
    else
      FillChar(s2, 33-length(copy(trim(RFactura.QDetallePRO_NOMBRE.value),1,33)),' ');
      //FillChar(s2, 16-length(copy(trim(RFactura.QDetallePRO_NOMBRE.value),1,16)),' ');

    if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'I' then
      pro_codigo := RFactura.QDetallePRO_CODIGO.AsString
    else if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'O' then
      pro_codigo := RFactura.QDetallePRO_RORIGINAL.AsString;

    pro_codigo := '['+pro_codigo+']';

    s3 := '';
    FillChar(s3, 8-length(trim(FORMAT('%n',[RFactura.QDetallePrecioItbis.value]))),' ');
    s4 := '';
    FillChar(s4, 8-length(trim(FORMAT('%n',[RFactura.QDetalleCalcItbis.value]))),' ');

    lbitbis := 'E';
    if RFactura.QDetalleDET_CONITBIS.value = 'N' then
    begin
       lbitbis := ' ';
    end;
    if impcodigo = 'Si' then
    begin
     { Unidad := copy(RFactura.QDetallepro_unidad_medida.Value,1,4);
      //Unidad := copy(RFactura.QDetalleMEDIDA.Value,1,4);
      if trim(Unidad) <> '' then begin
      if Length(Trim(RFactura.QDetallePRO_NOMBRE.Value))>40 then begin
      writeln(arch, Trim(RFactura.QDetalleDET_CANTIDAD.Text)+' '+Unidad+
                      ' '+copy(trim(RFactura.QDetallePRO_NOMBRE.value),1,30));
      writeln(arch, Copy(Trim(RFactura.QDetallePRO_NOMBRE.Value),31,71));
      end
      else
      begin
      writeln(arch, Trim(RFactura.QDetalleDET_CANTIDAD.Text)+' '+' '+Unidad+
                      s6+' '+copy(trim(RFactura.QDetallePRO_NOMBRE.value),1,30));
      writeln(arch, Copy(Trim(RFactura.QDetallePRO_NOMBRE.Value),31,74));
      end;
      end
      else
       writeln(arch, Trim(RFactura.QDetalleDET_CANTIDAD.Text)+' '+
                     // s6+format('%n',[RFactura.QDetalledet_cantidad.value])+' '+
                      copy(trim(RFactura.QDetallePRO_NOMBRE.value),1,33));

      s1 := '';
      FillChar(s1, 8-length(pro_codigo),' ');
      s2 := '';
      FillChar(s2, 10-length(Trim(RFactura.QDetalleDET_CANTIDAD.Text)),' ');
      s3 := '';
      FillChar(s3, 10-length(trim(FORMAT('%n',[RFactura.QDetalleCalcItbis.value]))),' ');
      s4 := '';
      FillChar(s4, 12-length(trim(FORMAT('%n',[RFactura.QDetalleValor.value]))), ' ');


      writeln(arch, pro_codigo+s1+s2+FORMAT('%n',[RFactura.QDetalleDET_PRECIO.value])+s3
                    +FORMAT('%n',[RFactura.QDetalleCalcItbis.value])+s4+
                    format('%n',[RFactura.QDetalleValor.value]));    }

      Unidad := copy(RFactura.QDetallepro_unidad_medida.Value,1,4);
      s1 := '';
      FillChar(s1, 12-length(trim(FORMAT('%n',[RFactura.QDetalleValor.value]))), ' ');
      s2 := '';
      FillChar(s2, 20-length(trim(RFactura.QDetalleDET_CANTIDAD.Text)+' X '+
                            trim(FORMAT('%n',[RFactura.QDetalleDET_PRECIO.value]))), ' ');
      s4 := '';
      FillChar(s4, 8-length(trim(FORMAT('%n',[RFactura.QDetalleCalcItbis.value]))),' ');
      s3 := '';
      FillChar(s3, 40-length(RFactura.QDetallePRO_NOMBRE.Value),' ');

      writeln(arch, (Trim(RFactura.QDetalleDET_CANTIDAD.Text)+' X ')+
                    (FORMAT('%n',[RFactura.QDetalleDET_PRECIO.value])+s2)+
                    s4+(FORMAT('%n',[RFactura.QDetalleCalcItbis.value]))+' '+
                    s1+(FORMAT('%n',[RFactura.QDetalleValor.value])));

      IF Unidad <> '' THEN begin
      if Length(Trim(unidad+' '+pro_codigo+' ' +RFactura.QDetallePRO_NOMBRE.Value))>40 then begin
      writeln(arch, Copy(unidad+' '+pro_codigo+' '+RFactura.QDetallePRO_NOMBRE.Value,1,40-Length(unidad+' '+pro_codigo+' ')));
      writeln(arch, Copy(Trim(unidad+' '+pro_codigo+' '+RFactura.QDetallePRO_NOMBRE.Value),40-Length(unidad+' '+pro_codigo+' '),80));
      end
      else
      begin
      writeln(arch, Copy(unidad+' '+pro_codigo+' '+RFactura.QDetallePRO_NOMBRE.Value,1,40-Length(unidad+' '+pro_codigo+' ')));
      end;
      end
      else
      begin
      if Length(Trim(pro_codigo+' ' +RFactura.QDetallePRO_NOMBRE.Value))>40 then begin
      writeln(arch, pro_codigo+' '+Copy(RFactura.QDetallePRO_NOMBRE.Value,1,40-Length(pro_codigo+' ')));
      writeln(arch, Copy(Trim(RFactura.QDetallePRO_NOMBRE.Value),40-Length(pro_codigo+' '),(40-Length(pro_codigo+' '))+40));
      end
      else
      begin
      writeln(arch, Copy(pro_codigo+' '+RFactura.QDetallePRO_NOMBRE.Value,1,40));
      end;
      end;

    end
    else
      begin
      Unidad := copy(RFactura.QDetallepro_unidad_medida.Value,1,4);
      s1 := '';
      FillChar(s1, 12-length(trim(FORMAT('%n',[RFactura.QDetalleValor.value]))), ' ');
      s2 := '';
      FillChar(s2, 20-length(trim(RFactura.QDetalleDET_CANTIDAD.Text)+' X '+
                            trim(FORMAT('%n',[RFactura.QDetalleDET_PRECIO.value]))), ' ');
      s4 := '';
      FillChar(s4, 8-length(trim(FORMAT('%n',[RFactura.QDetalleCalcItbis.value]))),' ');
      s3 := '';
      FillChar(s3, 40-length(RFactura.QDetallePRO_NOMBRE.Value),' ');

      writeln(arch, (Trim(RFactura.QDetalleDET_CANTIDAD.Text)+' X ')+
                    (FORMAT('%n',[RFactura.QDetalleDET_PRECIO.value])+s2)+
                    s4+(FORMAT('%n',[RFactura.QDetalleCalcItbis.value]))+' '+
                    s1+(FORMAT('%n',[RFactura.QDetalleValor.value])));

      if Length(Trim(RFactura.QDetallePRO_NOMBRE.Value))>40 then begin
      IF Unidad <> '' THEN begin
      writeln(arch, unidad+' '+Copy(Trim(RFactura.QDetallePRO_NOMBRE.Value),1,36));
      writeln(arch, Copy(Trim(RFactura.QDetallePRO_NOMBRE.Value),37,80));
      end
      else
      begin
      writeln(arch, Copy(Trim(RFactura.QDetallePRO_NOMBRE.Value),1,40));
      writeln(arch, Copy(Trim(RFactura.QDetallePRO_NOMBRE.Value),41,80));
      end;
      end
      else
      begin
      writeln(arch, unidad+' '+Copy(Trim(RFactura.QDetallePRO_NOMBRE.Value),1,40)+s3);
      end;


      end;

    if Trim(RFactura.QDetalleDET_NOTA.Value) <> '' then
    begin
      writeln(arch, ' ');
      writeln(arch, RFactura.QDetalleDET_NOTA.Value);
      writeln(arch, ' ');
    end;

    //Datos Serie
    if QSerie.RecordCount > 0 then
    begin
    t := '';
    QSerie.First;
    while not QSerie.Eof do
    begin
      t := t + QSerieser_numero.Value+', ';
      QSerie.next;
    end;
    writeln(arch,'SN#:'+ copy(t,1,length(t)-2));
    end;
    

{        //datos del Envio
    if (not RFactura.QDetallepro_UtilizaEnvio.IsNull) and (RFactura.QDetallepro_UtilizaEnvio.AsString = 'True') then
    begin
      writeln(arch, ' ');
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('Select * From Envio Where emp_codigo = :emp_codigo');
  		dm.Query1.SQL.Add(' and suc_codigo = :suc_codigo and fac_numero = :fac_numero ');
			dm.Query1.SQL.Add('and pro_codigo = :pro_codigo');
      dm.Query1.Parameters.ParamByName('emp_codigo').Value := RFactura.QDetalleEMP_CODIGO.value;
      dm.Query1.Parameters.ParamByName('suc_codigo').Value := RFactura.QDetallesuc_codigo.value;
      dm.Query1.Parameters.ParamByName('fac_numero').Value := RFactura.QDetalleFAC_NUMERO.value;
      dm.Query1.Parameters.ParamByName('pro_codigo').Value := RFactura.QDetallePRO_CODIGO.value;
      dm.Query1.Open;

      if dm.Query1.RecordCount > 0 then begin
        writeln(arch, 'DATOS DEL ENVIO:');
        writeln(arch, 'Ciudad Origen : '+dm.Query1.FieldByName('Ciudad_Origen').AsString);
        writeln(arch, 'Envia : '+dm.Query1.FieldByName('Nombre_envia').AsString);
        writeln(arch, 'Telefon: '+dm.Query1.FieldByName('Telefono_Envia').AsString);

        writeln(arch, 'Ciudad Recibe: '+dm.Query1.FieldByName('Ciudad_Destino').AsString);
        writeln(arch, 'Recibe : '+dm.Query1.FieldByName('Nombre_Recibe').AsString);
        writeln(arch, 'Telefono: '+dm.Query1.FieldByName('Telefono_Recibe').AsString);
        writeln(arch, 'Descripcion : '+dm.Query1.FieldByName('Descripcion').AsString);
        writeln(arch, ' ');
      end;
    end;   //fernando 2017 05 24}


    //datos del medidor
    if (not RFactura.QDetalleMedidorID.IsNull) and (RFactura.QDetalleMedidorID.AsInteger > 0) then
    begin
      writeln(arch, ' ');
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select Nombre from medidores where MedidorID = :med');
      dm.Query1.Parameters.ParamByName('med').Value := RFactura.QDetalleMedidorID.Value;
      dm.Query1.Open;

      writeln(arch, 'DATOS DEL MEDIDOR:');
      writeln(arch, 'Medidor: '+dm.Query1.FieldByName('Nombre').AsString);
      writeln(arch, 'Conteo Anterior: '+RFactura.QDetalleMedidor_Secuencia.AsString);
      writeln(arch, 'Conteo Actual: '+RFactura.QDetalleMedidor_Cantidad.AsString);
      writeln(arch, 'Cantidad Galones: '+RFactura.QDetalleDET_CANTIDAD.AsString);
      writeln(arch, ' ');
    end;

    RFactura.QDetalle.next;
  end;
  s := '';
  fillchar(s, 14-length(format('%n',[RFactura.QFacturaFAC_TOTAL.value])),' ');
  s1:= '';
  fillchar(s1, 14-length(format('%n',[RFactura.QFacturaFAC_DESCUENTO.value])),' ');
  s2:= '';
  fillchar(s2, 14-length(format('%n',[TFac])),' ');
  s3:= '';
  fillchar(s3, 12-length(format('%n',[RFactura.QFacturaFAC_ITBIS.value])),' ');
  s4:= '';
  fillchar(s4, 40-length('-----------'),' ');
  s5:= '';
  fillchar(s5, 14-length(format('%n',[RFactura.QFacturaFAC_OTROS.value])),' ');

  writeln(arch, '                             -----------');
  writeln(arch, '              SubTotal   :'+s2+format('%n',[TFac]));
  writeln(arch, '              Descuento  :'+s1+format('%n',[RFactura.QFacturaTdesc_gral.Value+TDesc]));
  writeln(arch, '              Total Itbis:'+s3+format('%n',[RFactura.QFacturaFAC_ITBIS.value]));



  if Query1.FieldByName('otros').AsString = 'Si' then
     writeln(arch, '              Otros      :'+s5+format('%n',[RFactura.QFacturaFAC_OTROS.value]));
  writeln(arch, '              Total Neto :'+s2+format('%n',[RFactura.QFacturaFAC_TOTAL.value]));


  if   RFactura.QFacturafac_tasa.Value > 1 then begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select mon_sigla from moneda');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and mon_codigo = :mon');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('mon').Value := RFactura.QFacturaMON_CODIGO.Value;
    dm.Query1.Open;
    if not dm.Query1.IsEmpty then
      begin
       writeln(arch, '              Moneda     : '+dm.Query1.FieldByName('mon_sigla').AsString);
       writeln(arch, '              Tasa       : '+RFactura.QFacturafac_tasa.AsString);
      end;
  end;


 if (actbalance = 'True') then
  begin
    s := '';
    fillchar(s, 14-length(format('%n',[RFactura.QFacturaFAC_ABONO.value])),' ');
    Saldo := RFactura.QFacturaFAC_TOTAL.value - RFactura.QFacturaFAC_ABONO.value;
    s1 := '';
    fillchar(s1, 14-length(format('%n',[Saldo])),' ');
    writeln(arch, '              Abonado    :'+s+format('%n',[RFactura.QFacturaFAC_ABONO.value]));
    writeln(arch, '              Balance    :'+s1+format('%n',[Saldo]));

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cli_balance from clientes');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cli_codigo = :cli');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cli').Value := RFactura.QFacturaCLI_CODIGO.Value;
    dm.Query1.Open;

//    writeln(arch, ' ');
//    writeln(arch, dm.Centro('SU CUENTA REFLEJA UN BALANCE'));
//    writeln(arch, dm.Centro('A LA FECHA DE '+Format('%n',[dm.Query1.FieldByName('cli_balance').AsFloat])));

//    dm.Query1.Close;
//    dm.Query1.SQL.Clear;
//    dm.Query1.SQL.Add('select * from pr_Estadistica_cli (:emp, :cli, :fec)');
//    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
//    dm.Query1.Parameters.ParamByName('cli').Value := RFactura.QFacturaCLI_CODIGO.Value;
//    dm.Query1.Parameters.ParamByName('fec').Value    := Date;
//    dm.Query1.Open;
//    writeln(arch, dm.Centro('Y UN MONTO VENCIDO DE '+Format('%n',[dm.Query1.FieldByName('mtovencido').AsFloat])));
  end
  else
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select f.fpa_nombre, sum(p.for_monto) as monto');
    dm.Query1.SQL.Add('from formaspago f, facformapago p');
    dm.Query1.SQL.Add('where f.emp_codigo = p.emp_codigo');
    dm.Query1.SQL.Add('and f.fpa_codigo = p.fpa_codigo');
    dm.Query1.SQL.Add('and p.emp_codigo = :emp');
    dm.Query1.SQL.Add('and p.tfa_Codigo = :tfa');
    dm.Query1.SQL.Add('and p.fac_forma  = :for');
    dm.Query1.SQL.Add('and p.fac_numero = :num');
    dm.Query1.SQL.Add('and p.suc_codigo = :suc');
    dm.Query1.SQL.Add('group by f.fpa_nombre');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('tfa').Value := RFactura.QFacturaTFA_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('for').Value  := RFactura.QFacturaFAC_FORMA.Value;
    dm.Query1.Parameters.ParamByName('num').Value := RFactura.QFacturaFAC_NUMERO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := RFactura.QFacturaSUC_CODIGO.Value;
    dm.Query1.Open;

    writeln(arch, ' ');
    dm.Query1.DisableControls;
    dm.Query1.First;
    while not dm.Query1.Eof do
    begin
      s:= '';
      fillchar(s, 14-length(dm.Query1.FieldByName('fpa_nombre').asstring),' ');
      s1 := '';
      fillchar(s1, 10-length(format('%n',[dm.Query1.FieldByName('monto').asfloat])),' ');
      writeln(arch,copy(dm.Query1.FieldByName('fpa_nombre').asstring,1,14)+' : '+s1+format('%n',[dm.Query1.FieldByName('monto').asfloat]));
      dm.Query1.Next;
    end;
    dm.Query1.EnableControls;

    if Recibido = '' then
    begin
       Recibido := Format('%n',[QFacturaFAC_TOTAL.Value]);
       Devuelta := '0.00';
    end;



    s := '';
    fillchar(s,  10-length(Recibido),' ');
    s1 := '';
    fillchar(s1, 10-length(Devuelta),' ');

    writeln(arch, ' ');
    writeln(arch, 'Recibido : '+s+Recibido);
    writeln(arch, 'Devuelta : '+s1+Devuelta);
  end;
  writeln(arch, ' ');
  IF Length(Trim(copy(RFactura.QFacturaFAC_MENSAJE1.Value,1,39))) <=40  THEN
  writeln(arch, copy(RFactura.QFacturaFAC_MENSAJE1.Value,1,39));
  IF Length(Trim(copy(RFactura.QFacturaFAC_MENSAJE1.Value,40,80)))<=40 THEN
  writeln(arch, copy(RFactura.QFacturaFAC_MENSAJE1.Value,40,80));
  IF Length(Trim(copy(RFactura.QFacturaFAC_MENSAJE1.Value,81,120)))<=40  THEN
  writeln(arch, copy(RFactura.QFacturaFAC_MENSAJE1.Value,81,120));
  IF Length(Trim(copy(RFactura.QFacturaFAC_MENSAJE1.Value,121,160)))<=40  THEN
  writeln(arch, copy(RFactura.QFacturaFAC_MENSAJE1.Value,121,160));
  IF Length(Trim(copy(RFactura.QFacturaFAC_MENSAJE1.Value,161,200)))<=40  THEN
  writeln(arch, copy(RFactura.QFacturaFAC_MENSAJE1.Value,161,200));
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  if Query1.FieldByName('fir').AsString = 'Si' then
  begin
    writeln(arch, dm.Centro('_________________________'));
    writeln(arch, dm.Centro('Realizado por '));
    writeln(arch, ' ');
    writeln(arch, ' ');
    writeln(arch, ' ');
    writeln(arch, dm.Centro('_________________________'));
    writeln(arch, dm.Centro('Firma del Cliente '));
  end;
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');
  writeln(arch, ' ');

//  dm.Query1.Close;
//  dm.Query1.SQL.Clear;
//  dm.Query1.SQL.Add('select Puerto, codigo_abre_caja from cajas_IP');
//  dm.Query1.SQL.Add('where caja = :caj');
//  dm.Query1.Parameters.ParamByName('caj').Value := caja;
//  dm.Query1.Open;
//  codigoabre := dm.Query1.FieldByName('codigo_abre_caja').AsString;




 if codigoabre = 'Termica' then
  writeln(arch,chr(27)+chr(109));


  CloseFile(arch);
 winexec('.\imp.bat',0);
{  end
  else
  begin
    if QFacturaFAC_DOMICILIO.Value = 'True' then
    begin
      a := 1;
      while a <= dm.QParametrospar_copias_domicilio.Value do
      begin
        winexec('.\imp.bat',0);
        a := a + 1;
      end;
    end
    else
      winexec('.\imp.bat',0);
    if copias = 0 then copias := 1;
    a := 1;
    while a <= copias do
    begin
      winexec('.\imp.bat',0);
//      winexec('.\imp.bat',0);
      a := a + 1;
    end;}
    RFactura.Destroy;
end;

end.
