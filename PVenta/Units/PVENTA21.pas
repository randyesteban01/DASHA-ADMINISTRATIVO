unit PVENTA21;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Grids, DBGrids, DB,
  IBCustomDataSet, IBQuery, IBUpdateSQL, ComCtrls, ADODB,
  QuerySearchDlgADO, DBGridObj, frxClass, frxDBSet;

type
  TfrmNotasCR = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel2: TPanel;
    Label2: TLabel;
    btCliente: TSpeedButton;
    edCliente: TEdit;
    tCliente: TEdit;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    QNota: TADOQuery;
    QNotaCLI_CODIGO: TIntegerField;
    QNotaCLI_REFERENCIA: TIBStringField;
    QNotaEMP_CODIGO: TIntegerField;
    QNotaNCR_CONCEPTO: TIBStringField;
    QNotaNCR_FECHA: TDateTimeField;
    QNotaNCR_MONTO: TFloatField;
    QNotaNCR_NUMERO: TIntegerField;
    QNotaNCR_STATUS: TIBStringField;
    QNotaUSU_CODIGO: TIntegerField;
    dsNota: TDataSource;
    Search: TQrySearchDlgADO;
    QNotaFAC_FORMA: TIBStringField;
    QNotaFAC_NUMERO: TIntegerField;
    QNotaTFA_CODIGO: TIntegerField;
    QNotaNCR_MONTOUSADO: TFloatField;
    QNotaNCR_DEVOLUCION: TIntegerField;
    QNotaVEN_CODIGO: TIntegerField;
    QNotaNCR_TIPO: TIBStringField;
    QNotaMOV_TIPO: TIBStringField;
    QTipoFac: TADOQuery;
    dsTipoFac: TDataSource;
    QTipoFacTFA_CODIGO: TIntegerField;
    QTipoFacTFA_NOMBRE: TIBStringField;
    rbTipoNota: TRadioGroup;
    QMov: TADOQuery;
    QMovFAC_FORMA: TIBStringField;
    QMovMOV_FECHA: TDateTimeField;
    QMovMOV_NUMERO: TIntegerField;
    QMovTFA_CODIGO: TIntegerField;
    dsMov: TDataSource;
    QMovMOV_SECUENCIA: TIntegerField;
    QMovMOV_MONTO: TFloatField;
    QMovMOV_ABONO: TFloatField;
    QMovSec: TIntegerField;
    QMovMOV_CUOTA: TIBStringField;
    QMovSaldo: TFloatField;
    QMovMOV_TIPO: TIBStringField;
    QNotaMOV_CUOTA: TIntegerField;
    QNotaDET_CUOTA: TIBStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GridMov: TDBGrid;
    Label15: TLabel;
    lbSaldo: TStaticText;
    btBuscaCta: TBitBtn;
    btElimina: TBitBtn;
    lbCR: TStaticText;
    Label8: TLabel;
    Label10: TLabel;
    lbBAL: TStaticText;
    Label11: TLabel;
    lbDB: TStaticText;
    QDetalle: TADOQuery;
    dsDetalle: TDataSource;
    QDetalleCAT_CUENTA: TIBStringField;
    QDetalleCAT_NOMBRE: TIBStringField;
    QDetalleNCR_NUMERO: TIntegerField;
    QDetalleDET_MONTO: TFloatField;
    QDetalleDET_ORIGEN: TIBStringField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    btLimpiar: TBitBtn;
    BitBtn2: TBitBtn;
    btPost: TBitBtn;
    QNotaSUC_CODIGO: TIntegerField;
    QDetalleSUC_CODIGO: TIntegerField;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    Label14: TLabel;
    QMovSUC_CODIGO: TIntegerField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    QNotancr_genera_ncf: TStringField;
    DBCheckBox1: TDBCheckBox;
    QNotaNCF: TStringField;
    GridCuentas: TDBGridObj;
    spcentros: TSpeedButton;
    QCentro: TADOQuery;
    QCentroemp_codigo: TIntegerField;
    QCentroncr_numero: TIntegerField;
    QCentrocen_codigo: TIntegerField;
    QCentrodet_secuencia: TIntegerField;
    QCentrocen_nombre: TStringField;
    QCentrodet_monto: TBCDField;
    QCentrosuc_codigo: TIntegerField;
    QCentrocen_referencia: TStringField;
    QCentrosub_referencia: TStringField;
    QCentrosub_secuencia: TIntegerField;
    QCentrocat_cuenta: TStringField;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    QNotancr_itbis: TBCDField;
    QNorma201806NC: TADOQuery;
    DB_Norma201806NC: TfrxDBDataset;
    Rpt_NC: TfrxReport;
    QNorma201806NCEmpresaN: TStringField;
    QNorma201806NCEmpresaD: TStringField;
    QNorma201806NCEmpresaL: TStringField;
    QNorma201806NCEmpresaRNC: TStringField;
    QNorma201806NCFECHA: TDateTimeField;
    QNorma201806NCfac_nombre: TStringField;
    QNorma201806NCfac_rnc: TStringField;
    QNorma201806NCfac_direccion: TStringField;
    QNorma201806NCfac_localidad: TStringField;
    QNorma201806NCfac_telefono: TStringField;
    QNorma201806NCNCFModificado: TStringField;
    QNorma201806NCNCF: TStringField;
    QNorma201806NCtip_nombre: TStringField;
    QNorma201806NCCANTIDAD: TStringField;
    QNorma201806NCDESCRIPCION: TStringField;
    QNorma201806NCITBIS: TBCDField;
    QNorma201806NCVALOR: TBCDField;
    QNorma201806NCDESCUENTO: TIntegerField;
    QNorma201806NCSubTotal: TFloatField;
    QNorma201806NCusu_nombre: TStringField;
    QNorma201806NCNumero: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QNotaNewRecord(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure QNotaBeforePost(DataSet: TDataSet);
    procedure btClienteClick(Sender: TObject);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure QNotaCLI_CODIGOChange(Sender: TField);
    procedure QMovCalcFields(DataSet: TDataSet);
    procedure FormPaint(Sender: TObject);
    procedure rbTipoNotaClick(Sender: TObject);
    procedure QDetalleCAT_CUENTAChange(Sender: TField);
    procedure btBuscaCtaClick(Sender: TObject);
    procedure btEliminaClick(Sender: TObject);
    procedure GridCuentasColEnter(Sender: TObject);
    procedure GridCuentasEnter(Sender: TObject);
    procedure GridCuentasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QDetalleNewRecord(DataSet: TDataSet);
    procedure btLimpiarClick(Sender: TObject);
    procedure QDetalleAfterDelete(DataSet: TDataSet);
    procedure QDetalleAfterPost(DataSet: TDataSet);
    procedure QDetalleBeforePost(DataSet: TDataSet);
    procedure QNotaNCR_MONTOChange(Sender: TField);
    procedure spcentrosClick(Sender: TObject);
    procedure GridCuentasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure QNotancr_itbisChange(Sender: TField);
    procedure QNotaNCR_MONTOValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    Pendiente, Balance, TSaldo, Debitos, Creditos : double;
    actbalance, CtaCliente : string;
    Totaliza : Boolean;
    TipoMov, Sec : integer;
    procedure Imp40Columnas;
    procedure TotalizaCuentas;
  end;

var
  frmNotasCR: TfrmNotasCR;

implementation

uses RVENTA33, SIGMA01, SIGMA00, SIGMA08;

{$R *.DFM}

procedure TfrmNotasCR.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmNotasCR.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmNotasCR.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
  if key = vk_f2  then btPostClick(Self);
  if key = vk_f3  then btLimpiarClick(Self);
end;

procedure TfrmNotasCR.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
     if (activecontrol.classtype <> tdbgrid) and (activecontrol.classtype <> TDBGridObj) then
    begin
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    end;
  end;
end;

procedure TfrmNotasCR.QNotaNewRecord(DataSet: TDataSet);
begin
  lbSaldo.Caption := '0.00';
  lbCR.Caption    := '0.00';
  lbDB.Caption    := '0.00';
  lbBAL.Caption   := '0.00';
  Debitos := 0;
  Creditos := 0;
  Totaliza := True;
  CtaCliente := '';
  PageControl1.ActivePageIndex := 0;

  QDetalle.close;
  QDetalle.Parameters.parambyname('emp').Value := dm.vp_cia;
  QDetalle.Parameters.parambyname('num').Value := -1;
  QDetalle.Parameters.parambyname('suc').Value := -1;
  QDetalle.open;

  QCentro.close;
  QCentro.Parameters.parambyname('emp').Value := dm.vp_cia;
  QCentro.Parameters.parambyname('num').Value := -1;
  QCentro.Parameters.parambyname('suc').Value := -1;
  QCentro.open;

  QMov.Close;
  QMov.Parameters.ParamByName('cli').Value := -1;
  QMov.Open;
  
  QNotancr_genera_ncf.Value := 'False';
  QNotaNCR_MONTOUSADO.value := 0;
  QNotaEMP_CODIGO.value     := dm.vp_cia;
  QNotaNCR_FECHA.value      := date;
  QNotaNCR_MONTO.value      := 0;
  QNotancr_itbis.value      := 0;
  QNotaNCR_STATUS.value     := 'EMI';
  QNotaSUC_CODIGO.Value     := QSucursalsuc_codigo.Value;
  edCliente.text            := '';
  tCliente.text             := '';
  QNotaUSU_CODIGO.value     := dm.Usuario;
  Pendiente                 := 0;
//  rbTipoNota.ItemIndex      := 0;

  if not dm.QContabPAR_CTADESC.IsNull then
  begin
    QDetalle.Append;
    QDetalleCAT_CUENTA.Value := dm.QContabPAR_CTADESC.Value;
    QDetalleDET_ORIGEN.Value := 'Debito';
    QDetalle.Post;
  end;
end;

procedure TfrmNotasCR.FormActivate(Sender: TObject);
begin
  if not QNota.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    
    QNota.Parameters.parambyname('emp').Value := dm.vp_cia;
    QNota.Parameters.parambyname('numero').Value := -1;
    QNota.Parameters.parambyname('suc').Value := -1;
    QNota.open;
    QTipoFac.Open;
    QNota.insert;
  end;
end;

procedure TfrmNotasCR.btPostClick(Sender: TObject);
var
  mov : string;
  a : integer;
begin
  //verificando si el cierre se hizo para esta fecha
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select cie_fecha from cierre');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and cie_fecha = :fec');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('fec').Value := QNotaNCR_FECHA.Value;
  dm.Query1.Open;
  if dm.Query1.RecordCount > 0 then
  begin
    MessageDlg('LA NOTA NO PUEDE REALIZARSE, DEBIDO A QUE ESTE'+#13+
               'DIA FUE CERRADO.',mtError,[mbok],0);
  end
  else if (rbTipoNota.ItemIndex = 0) and (Balance > 0) then
  begin
    MessageDlg('PARA REALIZAR ESTA NOTA DE CREDITO DEBE'+#13+
               'ESPECIFICAR UN MOVIMIENTO AL CUAL SE LE'+#13+
               'VA A APLICAR',mtError,[mbok],0);
    edCliente.SetFocus;
  end
  else if lbBaL.Caption <> '0.00' then
  begin
    MessageDlg('LAS CUENTAS CONTABLES DE ESTA FACTURA'+#13+
               'NO ESTAN CUADRADAS',mtError,[mbok],0);
    PageControl1.ActivePageIndex := 1;
    GridCuentas.SetFocus;
  end
  else
  begin

  IF (QNotaNCR_MONTO.Value > TSaldo) and (QMov.RecordCount > 0) THEN begin
  ShowMessage('El monto aplicar no puede ser mayor que el saldo....');
  DBEdit5.SetFocus;
  Exit;
  end
  else
    if messagedlg('TODOS LOS DATOS ESTAN CORECTOS?',mtconfirmation,[mbyes,mbno],0) = mryes then
    begin
      if rbTipoNota.ItemIndex = 1 then
      begin
        QNotaNCR_MONTOUSADO.value := QNotaNCR_MONTO.Value;
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select tmo_siglas');
        dm.Query1.SQL.Add('from tiposmov');
        dm.Query1.SQL.Add('where emp_codigo = :emp');
        dm.Query1.SQL.Add('  and tmo_codigo = :tmo');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
        dm.Query1.Parameters.ParamByName('tmo').Value := dm.QParametrosPAR_MOVNDE.Value;
        dm.Query1.Open;

        if QMovMOV_TIPO.Value <> dm.Query1.FieldByName('tmo_siglas').AsString then
        begin
          QNotaNCR_TIPO.Value := 'FAC';
          QNotaFAC_FORMA.Value  := QMovFAC_FORMA.Value;
          QNotaTFA_CODIGO.Value := QMovTFA_CODIGO.Value;
        end
        else
        begin
          QNotaNCR_TIPO.Value := 'NDE';
          QNotaFAC_FORMA.Value := 'X';
          QNotaTFA_CODIGO.value := 0;
          QNotaFAC_NUMERO.clear;
        end;
        QNotaFAC_NUMERO.Value  := QMovMOV_NUMERO.Value;
      end
      else
      begin
        QNotaNCR_MONTOUSADO.value := 0;
        QNotaFAC_FORMA.clear;
        QNotaTFA_CODIGO.clear;
        QNotaFAC_NUMERO.clear;
      end;

      if rbTipoNota.ItemIndex = 1 then
      begin
        dm.Query1.close;
        dm.Query1.sql.clear;
        dm.Query1.sql.add('select tmo_codigo from tiposmov');
        dm.Query1.sql.add('where emp_codigo = :emp');
        dm.Query1.sql.add('and tmo_siglas = :sig');
        dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
        dm.Query1.Parameters.parambyname('sig').Value  := QMovMOV_TIPO.Value;
        dm.Query1.Open;
        TipoMov := dm.Query1.FieldbyName('tmo_codigo').AsInteger;
        mov     := QMovMOV_TIPO.Value;

        QNotaMOV_TIPO.Value := mov;
      end;

      QNotaDET_CUOTA.Value := QMovMOV_CUOTA.Value;
      QNotaMOV_CUOTA.Value := QMovMOV_SECUENCIA.Value;
      //QNotaNCR_MONTO.Value := QNotaNCR_MONTO.Value  + QNotancr_itbis.Value;
      
      QNota.Post;
      QNota.UpdateBatch;

      if not QNotaFAC_NUMERO.isnull then
      begin
        dm.Query1.close;
        dm.Query1.sql.clear;
        dm.Query1.sql.add('execute pr_balance_mov :emp, :suc, :tipo,');
        dm.Query1.sql.add(':numero, '+#39+'resta'+#39+', :monto, :forma, :tipofac, :sec');
        dm.Query1.Parameters.parambyname('emp').Value      := dm.vp_cia;
        dm.Query1.Parameters.parambyname('tipo').Value     := Mov;
        dm.Query1.Parameters.parambyname('numero').Value   := QNotaFAC_NUMERO.Value;
        dm.Query1.Parameters.parambyname('monto').Value    := QNotaNCR_MONTO.value+QNotancr_itbis.Value;
        dm.Query1.Parameters.parambyname('forma').Value    := QNotaFAC_FORMA.Value;
        dm.Query1.Parameters.parambyname('tipofac').Value  := QNotaTFA_CODIGO.Value;
        dm.Query1.Parameters.parambyname('sec').Value      := QMovMOV_SECUENCIA.Value;
        dm.Query1.Parameters.parambyname('suc').Value      := QNotaSUC_CODIGO.Value;
        dm.Query1.ExecSQL;

        //insertanto el detalle de la nota de credito
        dm.Query1.close;
        dm.Query1.sql.clear;
        dm.Query1.sql.add('insert into det_notacredito (emp_codigo, suc_codigo, ncr_numero,');
        dm.Query1.sql.add('det_secuencia, mov_tipo, mov_numero, det_monto, fac_forma,');
        dm.Query1.sql.add('tfa_codigo, mov_cuota, det_cuota)');
        dm.Query1.sql.add('values (:emp, :suc, :ncr, :sec, :mov, :num, :mon, :for, :tfa,');
        dm.Query1.sql.add(':msec, :cuo)');
        dm.Query1.Parameters.parambyname('emp').Value  := dm.vp_cia;
        dm.Query1.Parameters.parambyname('ncr').Value  := QNotaNCR_NUMERO.Value;
        dm.Query1.Parameters.parambyname('mov').Value  := Mov;
        dm.Query1.Parameters.parambyname('num').Value  := QNotaFAC_NUMERO.Value;
        dm.Query1.Parameters.parambyname('mon').Value  := QNotaNCR_MONTO.value+QNotancr_itbis.Value;
        dm.Query1.Parameters.parambyname('for').Value  := QNotaFAC_FORMA.Value;
        dm.Query1.Parameters.parambyname('tfa').Value  := QNotaTFA_CODIGO.Value;
        dm.Query1.Parameters.parambyname('sec').Value  := QMovMOV_SECUENCIA.Value;
        dm.Query1.Parameters.parambyname('msec').Value := QMovMOV_SECUENCIA.Value;
        dm.Query1.Parameters.parambyname('cuo').Value  := QMovMOV_CUOTA.Value;
        dm.Query1.Parameters.parambyname('suc').Value  := QNotaSUC_CODIGO.Value;
        dm.Query1.ExecSQL;
      end
      else
      begin
        //Actualizando balance del cliente
        dm.Query1.close;
        dm.Query1.sql.clear;
        dm.Query1.sql.add('execute pr_balance_cte :emp, :cli, :ope, :monto');
        dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
        dm.Query1.Parameters.parambyname('cli').Value := QNotaCLI_CODIGO.value;
        dm.Query1.Parameters.parambyname('ope').Value  := 'resta';
        dm.Query1.Parameters.parambyname('monto').Value := QNotaNCR_MONTO.value+QNotancr_itbis.Value;
        dm.Query1.ExecSQL;
      end;

      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('execute pr_graba_nc :emp, :suc, :nc');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('nc').Value  := QNotaNCR_NUMERO.value;
      dm.Query1.Parameters.parambyname('suc').Value := QNotaSUC_CODIGO.Value;
      dm.Query1.ExecSQL;

      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('execute pr_graba_nc_monto :emp, :suc, :nc');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('nc').Value  := QNotaNCR_NUMERO.value;
      dm.Query1.Parameters.parambyname('suc').Value := QNotaSUC_CODIGO.Value;
      dm.Query1.ExecSQL;

      Totaliza := False;

      //Cuentas contables
      QDetalle.First;
      QDetalle.DisableControls;
      a := 0;
      while not QDetalle.Eof do
      begin
        a := a + 1;
        QDetalle.Edit;
        QDetalleDET_SECUENCIA.Value := a;
        QDetalleEMP_CODIGO.Value    := dm.vp_cia;
        QDetalleNCR_NUMERO.Value    := QNotaNCR_NUMERO.Value;
        QDetalleSUC_CODIGO.Value    := QNotaSUC_CODIGO.Value;
        QDetalle.Post;
        QDetalle.Next;
      end;
      QDetalle.EnableControls;
      QDetalle.UpdateBatch;

      //Centros de Costo
      QCentro.First;
      QCentro.DisableControls;
      a := 0;
      while not QCentro.Eof do
      begin
        a := a + 1;
        QCentro.Edit;
        QCentroDET_SECUENCIA.Value := a;
        QCentroEMP_CODIGO.Value    := dm.vp_cia;
        QCentroNCR_NUMERO.Value    := QNotaNCR_NUMERO.Value;
        QCentroSUC_CODIGO.Value    := QNotaSUC_CODIGO.Value;
        QCentro.Post;
        QCentro.Next;
      end;
      QCentro.EnableControls;
      QCentro.UpdateBatch;

      if MessageDlg('SE HA GENERADO LA NOTA DE CREDITO NUMERO '+inttostr(QNotaNCR_NUMERO.value)+#13+
                    'DESEA IMPRIMIRLA?',mtConfirmation,[mbyes,mbno],0) = mryes then
      begin
         if dm.QParametrosPAR_FORMATONC.Value = 2 then
          begin
         if ((DM.QParametrospar_fac_preimpresa.Value = 'true') and
            (Trim(dm.QParametrospar_formato_preimpreso.Value) = 'Norma 201806 Normal')) then
         begin
          //Norma 201806 Normal
          with QNorma201806NC do begin
          Close;
          Parameters.ParamByName('emp').Value    := dm.vp_cia;
          Parameters.ParamByName('numero').Value := QNotaNCR_NUMERO.Value;
          Parameters.ParamByName('suc').Value    := QNotaSUC_CODIGO.Value;
          Open;
          if not IsEmpty then
          Rpt_NC.ShowReport();
          end;
          end
          else
          begin
          Application.CreateForm(tRNotaCredito, RNotaCredito);
          RNotaCredito.QNota.Parameters.ParamByName('numero').Value := QNotaNCR_NUMERO.Value;
          RNotaCredito.QNota.Parameters.ParamByName('suc').Value := QNotaSUC_CODIGO.Value;
          RNotaCredito.QNota.Open;
          RNotaCredito.PrinterSetup;
          RNotaCredito.Print;
          RNotaCredito.Destroy;
        end;
        END
        else
          Imp40Columnas;
      end;
      QNota.close;
      QNota.Parameters.parambyname('emp').Value := dm.vp_cia;
      QNota.Parameters.parambyname('numero').Value := -1;
      QNota.Parameters.parambyname('suc').Value := -1;
      QNota.open;
      QNota.insert;
    end;
    edCliente.setfocus;
  end;
end;


procedure TfrmNotasCR.QNotaBeforePost(DataSet: TDataSet);
var
  cli, tipo, factura : integer;
  monto : double;
  forma : string;
begin
  if QNotancr_itbis.Value > (QNotaNCR_MONTO.Value * (18/100.0)) then
     begin
      ShowMessage('EL ITBIS NO PUEDE SER MAYOR AL 18%');
      DBEdit4.SetFocus;
      Abort;
     end; 

  if QNotaCLI_CODIGO.IsNull then
  begin
    showmessage('DEBE SELECCIONAR EL CLIENTE');
    edCliente.setfocus;
    abort;
  end;
  if QNotaNCR_CONCEPTO.isnull then
  begin
    showmessage('DEBE ESPECIFICAR EL CONCEPTO');
    DBEdit2.setfocus;
    abort;
  end;
  if QNotaNCR_MONTO.Value = 0 then
  begin
    showmessage('DEBE ESPECIFICAR EL MONTO');
    DBEdit5.setfocus;
    abort;
  end;

  if QNota.State = dsinsert then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select isnull(max(ncr_numero),0) as maximo');
    dm.Query1.sql.add('from notascredito');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and suc_codigo = :suc');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('suc').Value := QNotaSUC_CODIGO.Value;
    dm.Query1.open;
    QNotaNCR_NUMERO.value := dm.Query1.fieldbyname('maximo').asinteger + 1;
  end
  else
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cli_codigo, ncr_monto, fac_forma, tfa_codigo, fac_numero');
    dm.Query1.sql.add('from notascredito');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and ncr_numero = :num');
    dm.Query1.sql.add('and suc_codigo = :suc');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('num').Value := QNotaNCR_NUMERO.value;
    dm.Query1.Parameters.parambyname('suc').Value := QNotaSUC_CODIGO.Value;
    dm.Query1.open;
    cli   := dm.Query1.FieldByName('cli_codigo').AsInteger;
    Monto := dm.Query1.FieldByName('ncr_monto').asfloat+dm.Query1.FieldByName('ncr_itbis').asfloat;
    tipo  := dm.Query1.FieldByName('tfa_codigo').AsInteger;
    factura := dm.Query1.FieldByName('fac_numero').AsInteger;
    forma := dm.Query1.FieldByName('fac_forma').Asstring;

    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('update clientes set cli_balance = cli_balance + :monto');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and cli_codigo = :cli');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cli').Value := cli;
    dm.Query1.Parameters.ParamByName('monto').Value := monto;
    dm.Query1.ExecSQL;

    if factura > 0 then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('update facturas set fac_abono = fac_Abono - :monto,');
      dm.Query1.sql.add('fac_status = '+#39+'PEN'+#39);
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and fac_forma = :forma');
      dm.Query1.sql.add('and tfa_Codigo = :tipo');
      dm.Query1.sql.add('and fac_numero = :num');
      dm.Query1.sql.add('and suc_codigo = :suc');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.ParamByName('monto').Value := monto;
      dm.Query1.Parameters.ParamByName('forma').Value := forma;
      dm.Query1.Parameters.ParamByName('tipo').Value := tipo;
      dm.Query1.Parameters.ParamByName('num').Value := factura;
      dm.Query1.Parameters.parambyname('suc').Value := QNotaSUC_CODIGO.Value;
      dm.Query1.ExecSQL;
    end;
  end;
end;

procedure TfrmNotasCR.btClienteClick(Sender: TObject);
begin
  Search.Query.clear;
  Search.AliasFields.clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Referencia');
  Search.AliasFields.Add('Telefono');
  Search.AliasFields.Add('C�dula');
  Search.AliasFields.Add('C�digo');
  Search.Query.add('select cli_nombre, cli_referencia, cli_telefono, cli_cedula, cli_codigo');
  if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
    Search.ResultField := 'cli_codigo'
  else
    Search.ResultField := 'cli_referencia';
  Search.Query.add('from clientes');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  //Search.Query.add('and cli_Status = '+#39+'ACT'+#39);
  if rbTipoNota.ItemIndex = 1 then
    Search.Query.add('and cli_balance > 0');
  Search.Title := 'Listado de clientes';
  if Search.execute then
  begin
    QNotaNCR_MONTO.Value := 0;
    edCliente.text := search.valuefield;
    edCliente.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cli_codigo, cli_nombre, cli_balance, cli_referencia,');
    dm.Query1.sql.add('cli_limite, cli_precio, cli_descuento, cli_cuenta,');
    dm.Query1.sql.add('cli_direccion, cli_localidad, cli_telefono, cli_fax');
    dm.Query1.sql.add('from clientes');
    dm.Query1.sql.add('where emp_codigo = :emp');
    //dm.Query1.sql.add('and cli_Status = '+#39+'ACT'+#39);
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
    CtaCliente := dm.Query1.FieldByName('cli_cuenta').AsString;
    QNotaCLI_CODIGO.value := dm.Query1.fieldbyname('cli_Codigo').asinteger;
    QNotaCLI_REFERENCIA.value := dm.Query1.fieldbyname('cli_referencia').asstring;
    tCliente.text := dm.Query1.fieldbyname('cli_nombre').asstring;
    Balance := strtofloat(format('%10.2f',[dm.Query1.fieldbyname('cli_balance').asfloat]));
    dbedit2.setfocus;
    if Balance > 0 then
      rbTipoNota.ItemIndex := 1;

    if CtaCliente <> '' then
    begin
      if QDetalle.Locate('cat_cuenta', CtaCliente,[]) then
      begin
        QDetalle.Edit;
        QDetalleDET_MONTO.Value := QNotaNCR_MONTO.Value;
        QDetalle.Post;
      end
      else
      begin
        QDetalle.Append;
        QDetalleCAT_CUENTA.Value := CtaCliente;
        QDetalleDET_MONTO.Value  := QNotaNCR_MONTO.Value;
        QDetalleDET_ORIGEN.Value := 'Credito';
        QDetalle.Post;
      end;
    end;
  end;
end;

procedure TfrmNotasCR.edClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edCliente.text) <> '' then
    begin
      QNotaNCR_MONTO.Value := 0;
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select cli_referencia, cli_codigo, cli_nombre, cli_balance,');
      dm.Query1.sql.add('cli_limite, cli_precio, cli_descuento, cli_cuenta,');
      dm.Query1.sql.add('cli_direccion, cli_localidad, cli_telefono, cli_fax');
      dm.Query1.sql.add('from clientes');
      dm.Query1.sql.add('where emp_codigo = :emp');
      //dm.Query1.sql.add('and cli_Status = '+#39+'ACT'+#39);
      if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
      begin
        dm.Query1.sql.add('and cli_codigo = :cli');
        dm.Query1.Parameters.parambyname('cli').Value := strtoint(edCliente.text);
      end
      else
      begin
        dm.Query1.sql.add('and cli_referencia = :cli');
        dm.Query1.Parameters.parambyname('cli').Value := edCliente.text;
      end;
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.open;
      CtaCliente := dm.Query1.fieldbyname('cli_cuenta').asstring;
      QNotaCLI_CODIGO.value := dm.Query1.fieldbyname('cli_Codigo').asinteger;
      QNotaCLI_REFERENCIA.value := dm.Query1.fieldbyname('cli_referencia').asstring;
      tCliente.text := dm.Query1.fieldbyname('cli_nombre').asstring;
      Balance := strtofloat(format('%10.2f',[dm.Query1.fieldbyname('cli_balance').asfloat]));
      if Balance > 0 then
        rbTipoNota.ItemIndex := 1;

      if CtaCliente <> '' then
      begin
        if QDetalle.Locate('cat_cuenta', CtaCliente,[]) then
        begin
          QDetalle.Edit;
          QDetalleDET_MONTO.Value := QNotaNCR_MONTO.Value;
          QDetalle.Post;
        end
        else
        begin
          QDetalle.Append;
          QDetalleCAT_CUENTA.Value := CtaCliente;
          QDetalleDET_MONTO.Value  := QNotaNCR_MONTO.Value;
          QDetalleDET_ORIGEN.Value := 'Credito';
          QDetalle.Post;
        end;
      end;
    end
    else
      edCliente.SetFocus;
  end;
end;

procedure TfrmNotasCR.FormCreate(Sender: TObject);
var
  a : integer;
begin
  for a := 0 to (Sender as TForm).ComponentCount -1 DO
  begin
    if Components[a].ClassType = tdbedit then
    begin
      (Components[a] as tdbedit).OnEnter := frmMain.Entra;
      (Components[a] as tdbedit).OnExit := frmMain.sale;
    end;
  end;
  rbTipoNota.ItemIndex := 0;
end;

procedure TfrmNotasCR.QNotaCLI_CODIGOChange(Sender: TField);
begin
  QMov.Close;
  QMov.Parameters.ParamByName('cli').Value := QNotaCLI_CODIGO.Value;
  QMov.Parameters.ParamByName('SUC').Value := DBLookupComboBox2.KeyValue;
  QMov.Open;
  QMov.DisableControls;
  TSaldo := 0;
  while not QMov.eof do
  begin
    TSaldo := TSaldo + StrToFloat(Format('%10.2f',[QMovSaldo.Value]));
    QMov.Next;
  end;
  QMov.First;
  QMov.EnableControls;
  lbSaldo.Caption := format('%n',[TSaldo]);
end;

procedure TfrmNotasCR.Imp40Columnas;
var
  arch, puertopeq : textfile;
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

  closefile(puertopeq);

  AssignFile(arch, 'imp.bat');
  rewrite(arch);
  writeln(arch, 'type t.txt > '+puerto);
  closefile(arch);

  AssignFile(arch, 't.txt');
  rewrite(arch);
  writeln(arch, dm.Centro(trim(dm.QEmpresasEMP_NOMBRE.value)));
  writeln(arch, dm.Centro(trim(DM.QEmpresasEMP_DIRECCION.value)));
  writeln(arch, dm.Centro(trim(DM.QEmpresasEMP_LOCALIDAD.value)));
  writeln(arch, dm.Centro('Telefono : '+trim(dm.QEmpresasEMP_TELEFONO.value)));
  writeln(arch, dm.Centro('RNC: '+dm.QEmpresasEMP_RNC.value));
  writeln(arch, ' ');
  writeln(arch, dm.Centro('N O T A   D E   C R E D I T O'));
  writeln(arch, ' ');
  writeln(arch, 'Numero  : '+inttostr(QNotaNCR_NUMERO.value));
  writeln(arch, 'Cliente : '+tCliente.text);
  writeln(arch, 'Fecha   : '+DateToStr(QNotaNCR_FECHA.Value));
  writeln(arch, 'Concepto: '+QNotaNCR_CONCEPTO.value);
  writeln(arch, ' ');
  writeln(arch, 'MONTO   : '+chr(27)+chr(52)+Format('%n',[QNotaNCR_MONTO.value+QNotancr_itbis.Value])+chr(27)+chr(53));

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
  RNotaCredito.Destroy;
end;

procedure TfrmNotasCR.QMovCalcFields(DataSet: TDataSet);
begin
  if QMovMOV_CUOTA.Value = 'True' then
    QMovSec.Value := QMovMOV_SECUENCIA.Value;
  QMovSaldo.Value := QMovMOV_MONTO.Value - QMovMOV_ABONO.Value;
end;

procedure TfrmNotasCR.FormPaint(Sender: TObject);
begin
  frmNotasCR.Top := 1;
  frmNotasCR.Left := 1;
end;

procedure TfrmNotasCR.rbTipoNotaClick(Sender: TObject);
begin
  GridMov.Visible := rbTipoNota.ItemIndex = 1;
  if rbTipoNota.ItemIndex = 1 then
  begin
    QMov.Close;
    QMov.Parameters.ParamByName('cli').Value := QNotaCLI_CODIGO.Value;
    QMov.Open;
    QMov.DisableControls;
    TSaldo := 0;
    while not QMov.eof do
    begin
      TSaldo := TSaldo + StrToFloat(Format('%10.2f',[QMovSaldo.Value]));
      QMov.Next;
    end;
    QMov.First;
    QMov.EnableControls;
    lbSaldo.Caption := format('%n',[TSaldo]);
  end;
end;

procedure TfrmNotasCR.QDetalleCAT_CUENTAChange(Sender: TField);
begin
  if not QDetalleCAT_CUENTA.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre, cat_origen, cat_movimiento from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value  := QDetalleCAT_CUENTA.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
    begin
      MessageDlg('ESTA CUENTA NO EXISTE',mtError,[mbok],0);
      QDetalleCAT_CUENTA.Clear;
      Abort;
    end
    else if dm.Query1.FieldByName('cat_movimiento').AsString = 'N' then
    begin
      MessageDlg('ESTA CUENTA NO ACEPTA MOVIMIENTO',mtError,[mbok],0);
      QDetalleCAT_CUENTA.Clear;
      Abort;
    end
    else if dm.Query1.RecordCount > 0 then
    begin
      QDetalle.Edit;
      QDetalleCAT_NOMBRE.Value := dm.Query1.FieldByName('cat_nombre').AsString;
      GridCuentas.SelectedIndex := 2;
    end;
  end;
end;

procedure TfrmNotasCR.btBuscaCtaClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and cat_movimiento = '+#39+'S'+#39);
  Search.AliasFields.Add('Descripci�n');
  Search.AliasFields.Add('Cuenta');
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catalogo de Cuentas';
  if Search.execute then
  begin
    QDetalle.Edit;
    QDetalleCAT_CUENTA.Value := Search.ValueField;
  end;
end;

procedure TfrmNotasCR.btEliminaClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR LA CUENTA?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QDetalle.Delete
  end;
  GridCuentas.setfocus;
end;

procedure TfrmNotasCR.GridCuentasColEnter(Sender: TObject);
begin
  if GridCuentas.SelectedIndex = 2 then
    GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1;
end;

procedure TfrmNotasCR.GridCuentasEnter(Sender: TObject);
begin
  GridCuentas.SelectedIndex := 1;
end;

procedure TfrmNotasCR.GridCuentasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if GridCuentas.SelectedIndex = 3 then
  begin
    if key = 68 then
    begin
      QDetalle.Edit;
      QDetalleDET_ORIGEN.Value := 'Debito';
      GridCuentas.SelectedIndex := 4;
    end
    else if key = 67 then
    begin
      QDetalle.Edit;
      QDetalleDET_ORIGEN.Value := 'Credito';
      GridCuentas.SelectedIndex := 4;
    end;
  end;
  if key = vk_f4 then btBuscaCtaClick(Self);
  if key = vk_f6 then btEliminaClick(Self);
  if key = vk_insert then abort;
  if (ssCtrl in Shift) and (key = vk_delete) then abort;
  if key = vk_return then
     if GridCuentas.SelectedIndex <> 4 then
        GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1
     else
     begin
       GridCuentas.SelectedIndex := 1;
       QDetalle.Append;
     end;
end;

procedure TfrmNotasCR.QDetalleNewRecord(DataSet: TDataSet);
begin
  QDetalleEMP_CODIGO.Value := dm.vp_cia;
  QDetalleSUC_CODIGO.Value := QNotaSUC_CODIGO.Value;
end;

procedure TfrmNotasCR.btLimpiarClick(Sender: TObject);
begin
  if messagedlg('DESEA CANCELAR ESTA NOTA DE CREDITO?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QNota.close;
    QNota.Parameters.parambyname('emp').Value := dm.vp_cia;
    QNota.Parameters.parambyname('numero').Value := -1;
    QNota.Parameters.parambyname('suc').Value := -1;
    QNota.open;
    QNota.insert;
  end;
  edCliente.setfocus;
end;

procedure TfrmNotasCR.TotalizaCuentas;
var
  Punt : TBookMark;
begin
  if Totaliza = True then
  Begin
    Debitos  := 0;
    Creditos := 0;
    Punt := QDetalle.GetBookmark;
    QDetalle.DisableControls;
    QDetalle.First;
    while not QDetalle.Eof do
    begin
      if QDetalleDET_ORIGEN.Value = 'Debito' then
        Debitos  := Debitos  + StrToFloat(Format('%10.2f',[QDetalleDET_MONTO.Value]))
      else
        Creditos := Creditos + StrToFloat(Format('%10.2f',[QDetalleDET_MONTO.Value]));
      QDetalle.Next;
    end;
    QDetalle.GotoBookmark(Punt);
    QDetalle.EnableControls;
    lbCR.Caption  := Format('%n',[Creditos]);
    lbDB.Caption  := Format('%n',[Debitos]);
    lbBAL.Caption := Format('%n',[Debitos-Creditos]);
  end;
  if Trim(lbBAL.Caption) <> '0.00' then
    lbBAL.Font.Color := clRed
  else
    lbBAL.Font.Color := clBlack;
end;

procedure TfrmNotasCR.QDetalleAfterDelete(DataSet: TDataSet);
begin
  TotalizaCuentas;
end;

procedure TfrmNotasCR.QDetalleAfterPost(DataSet: TDataSet);
begin
  TotalizaCuentas;
end;

procedure TfrmNotasCR.QDetalleBeforePost(DataSet: TDataSet);
begin
  if QDetalleCAT_NOMBRE.IsNull then QDetalle.Cancel;
end;

procedure TfrmNotasCR.QNotaNCR_MONTOChange(Sender: TField);
begin
  if (not QNotaNCR_MONTO.IsNull) and (Totaliza = True) then
  begin
    QDetalle.DisableControls;
    if QDetalle.Locate('cat_cuenta', CtaCliente,[]) then
       begin
        QDetalle.Edit;
        QDetalleDET_MONTO.Value := QNotaNCR_MONTO.Value+QNotancr_itbis.Value;
        QDetalle.Post;
      end;

    if QDetalle.Locate('cat_cuenta', dm.QContabPAR_CTADESC.Value,[]) then
       begin
        QDetalle.Edit;
        QDetalleDET_MONTO.Value := QNotaNCR_MONTO.Value;
        QDetalle.Post;
       end;

{//    QDetalle.First;
    While not QDetalle.Eof do
    begin
      QDetalle.Edit;
      QDetalleDET_MONTO.Value := QNotaNCR_MONTO.Value;
      QDetalle.Post;
      QDetalle.Next;
    end;
//    QDetalle.First; }
    QDetalle.EnableControls;
    TotalizaCuentas;
  end;
end;

procedure TfrmNotasCR.spcentrosClick(Sender: TObject);
var
  a : integer;
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select cat_maneja_centro from contcatalogo');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and cat_cuenta = :cta');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('cta').Value := QDetalleCAT_CUENTA.AsString;
  dm.Query1.Open;
  if dm.Query1.FieldByName('cat_maneja_centro').AsString <> 'S' then
  begin
    MessageDlg('Esta cuenta no acepta Centros de Costo', mtError, [mbyes], 0);
    GridCuentas.SetFocus;
  end
  else
  begin
    Application.CreateForm(tfrmCentrosXCuenta, frmCentrosXCuenta);
    frmCentrosXCuenta.lbcuenta.Caption := QDetalleCAT_CUENTA.AsString+': '+QDetalleCAT_NOMBRE.AsString;
    frmCentrosXCuenta.cta := QDetalleCAT_CUENTA.AsString;
    frmCentrosXCuenta.vMontototal := QDetalleDET_MONTO.Value;

    //Grabando registro en la pantalla
    QCentro.DisableControls;
    QCentro.First;
    while not QCentro.Eof do
    begin
      if QCentrocat_cuenta.Value = QDetalleCAT_CUENTA.AsString then
      begin
        frmCentrosXCuenta.QCentro.Append;
        frmCentrosXCuenta.QCentrocen_nombre.Value := QCentrocen_nombre.Value;
        frmCentrosXCuenta.QCentrodet_monto.Value  := QCentrodet_monto.Value;
        frmCentrosXCuenta.QCentrocen_referencia.Value := QCentrocen_referencia.Value;
        frmCentrosXCuenta.QCentrosub_referencia.Value := QCentrosub_referencia.Value;
        frmCentrosXCuenta.QCentrocen_codigo.Value     := QCentrocen_codigo.Value;
        frmCentrosXCuenta.QCentrosub_secuencia.Value  := QCentrosub_secuencia.Value;
        frmCentrosXCuenta.QCentro.Post;
      end;

      QCentro.Next;
    end;
    QCentro.EnableControls;  

    frmCentrosXCuenta.ShowModal;

    //eliminando registros de la cuenta selccionada
    QCentro.DisableControls;
    QCentro.First;
    a := QCentro.RecordCount;
    while a > 0 do
    begin
      if QCentrocat_cuenta.Value = QDetalleCAT_CUENTA.AsString then
        QCentro.Delete
      else
        QCentro.Next;

      a := a - 1;
    end;
    QCentro.EnableControls;

    //insertando registros de la cuenta selccionada
    frmCentrosXCuenta.QCentro.DisableControls;
    frmCentrosXCuenta.QCentro.First;
    while not frmCentrosXCuenta.QCentro.Eof do
    begin
      QCentro.Append;
      QCentrocat_cuenta.Value := QDetalleCAT_CUENTA.AsString;
      QCentrocen_nombre.Value := frmCentrosXCuenta.QCentrocen_nombre.Value;
      QCentrodet_monto.Value  := frmCentrosXCuenta.QCentrodet_monto.Value;
      QCentrocen_referencia.Value := frmCentrosXCuenta.QCentrocen_referencia.Value;
      QCentrosub_referencia.Value := frmCentrosXCuenta.QCentrosub_referencia.Value;
      QCentrocen_codigo.Value     := frmCentrosXCuenta.QCentrocen_codigo.Value;
      QCentrosub_secuencia.Value  := frmCentrosXCuenta.QCentrosub_secuencia.Value;
      QCentro.Post;

      frmCentrosXCuenta.QCentro.Next;
    end;
    frmCentrosXCuenta.QCentro.EnableControls;
    frmCentrosXCuenta.Release;
  end;
end;

procedure TfrmNotasCR.GridCuentasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
Var
  DataRect : TRect ;
Begin
   // Place the button in the first column.
   If (Column.Index = 0) Then
   Begin
      With GridCuentas Do
      Begin
         DataRect := CellRect(Column.Index,Row);
      End;
   // Assign the button's parent to the grid.
   If spcentros.Parent <> GridCuentas Then
      spcentros.Parent := GridCuentas ;
   // Set the button's coordinates.
   // In this case, right justify the button.
   If spcentros.Left <> (DataRect.Right - spcentros.Width) Then
      spcentros.Left := (DataRect.Right - spcentros.Width) ;
   If (spcentros.Top <> DataRect.Top) Then
      spcentros.Top := DataRect.Top ;

   // Make sure the button's height fits in row.
   If (spcentros.Height <> (DataRect.Bottom-DataRect.Top)) Then
      spcentros.Height := (DataRect.Bottom-DataRect.Top);

   End;
end;

procedure TfrmNotasCR.QNotancr_itbisChange(Sender: TField);
begin
  if (QNotancr_itbis.Value > 0) and (Totaliza = True) then
  begin
    QDetalle.DisableControls;
    if QDetalle.Locate('cat_cuenta', CtaCliente,[]) then
       begin
        QDetalle.Edit;
        QDetalleDET_MONTO.Value := QNotancr_itbis.Value+QNotaNCR_MONTO.Value;
        QDetalle.Post;
      end;

    if QDetalle.Locate('cat_cuenta', dm.QContabPAR_CTAITBIS.Value,[]) then
       begin
        QDetalle.Edit;
        QDetalleDET_MONTO.Value := QNotancr_itbis.Value;
        QDetalle.Post;
      end
    else
    begin
      QDetalle.Append;
      QDetalleCAT_CUENTA.Value := dm.QContabPAR_CTAITBIS.Value;
      QDetalleDET_MONTO.Value  := QNotancr_itbis.Value;
      QDetalleDET_ORIGEN.Value := 'Debito';
      QDetalle.Post; 
    end;
    QDetalle.EnableControls;
  end;
end;

procedure TfrmNotasCR.QNotaNCR_MONTOValidate(Sender: TField);
begin
IF (QNotaNCR_MONTO.Value > TSaldo) and (QMov.RecordCount > 0) THEN begin
ShowMessage('El monto aplicar no puede ser mayor que el saldo....');
DBEdit5.SetFocus;
end;

end;

end.
