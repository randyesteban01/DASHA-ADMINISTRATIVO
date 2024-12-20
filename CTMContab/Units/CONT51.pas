unit CONT51;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, DateUtils, DBCtrls, DB,
  ADODB;

type
  TfrmPasarDocumentos = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    ckCheque: TCheckBox;
    ckDepositos: TCheckBox;
    ckCargos: TCheckBox;
    btClose: TBitBtn;
    BitBtn1: TBitBtn;
    ckRecibos: TCheckBox;
    ckFacturas: TCheckBox;
    ckCompra: TCheckBox;
    ckDesem: TCheckBox;
    ckNC: TCheckBox;
    ckND: TCheckBox;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    cknccxp: TCheckBox;
    ckliq: TCheckBox;
    ckconduce: TCheckBox;
    ckdevventa: TCheckBox;
    ckdevcompra: TCheckBox;
    ckFactRes: TCheckBox;
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPasarDocumentos: TfrmPasarDocumentos;

implementation

uses SIGMA01;


{$R *.dfm}

procedure TfrmPasarDocumentos.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPasarDocumentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmPasarDocumentos.FormCreate(Sender: TObject);
begin
  Fecha1.Date := Date;
  Fecha2.Date := Date;
end;

procedure TfrmPasarDocumentos.BitBtn1Click(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select count(*) as cant from contmeses');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and ano = :ano');
  dm.Query1.SQL.Add('and mes = :mes');
  dm.Query1.SQL.Add('and status = '+#39+'C'+#39);
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('ano').Value := YearOf(Fecha1.Date);
  dm.Query1.Parameters.ParamByName('mes').Value := MonthOf(Fecha1.Date);
  dm.Query1.Open;
  if dm.Query1.FieldByName('cant').AsInteger > 0 then
  begin
    MessageDlg('HAY UN MES CERRADO ENTRE EL INTERVALO DE FECHAS'+#13+
               'DEBE DE ABRIR EL MES ANTES DE PASAR LOS DOCUMENTOS',mtError,[mbok],0);
  end
  else
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select count(*) as cant from contmeses');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ano = :ano');
    dm.Query1.SQL.Add('and mes = :mes');
    dm.Query1.SQL.Add('and status = '+#39+'C'+#39);
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('ano').Value := YearOf(Fecha2.Date);
    dm.Query1.Parameters.ParamByName('mes').Value := MonthOf(Fecha2.Date);
    dm.Query1.Open;
    if dm.Query1.FieldByName('cant').AsInteger > 0 then
    begin
      MessageDlg('HAY UN MES CERRADO ENTRE EL INTERVALO DE FECHAS'+#13+
                 'DEBE DE ABRIR EL MES ANTES DE PASAR LOS DOCUMENTOS',mtError,[mbok],0);
    end
    else
    begin
      if ckND.Checked then
      begin
        // Notas de Debito Clientes
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('execute contpr_pase_nd :emp, :suc, :fec1, :fec2');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        dm.Query1.Parameters.ParamByName('fec1').Value   := fecha1.Date;
        dm.Query1.Parameters.ParamByName('fec2').Value   := fecha2.Date;
        dm.Query1.Parameters.ParamByName('suc').Value    := DBLookupComboBox2.KeyValue;
        dm.Query1.ExecSQL;
      end;

      if ckNC.Checked then
      begin
        // Notas de Credito Clientes
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('execute contpr_pase_nc :emp, :suc, :fec1, :fec2');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        dm.Query1.Parameters.ParamByName('fec1').Value   := fecha1.Date;
        dm.Query1.Parameters.ParamByName('fec2').Value   := fecha2.Date;
        dm.Query1.Parameters.ParamByName('suc').Value    := DBLookupComboBox2.KeyValue;
        dm.Query1.ExecSQL;
      end;

      if ckdevventa.Checked then
      begin
        // Devoluciones en Ventas Clientes
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('execute contpr_pase_dev_ventas :emp, :suc, :fec1, :fec2');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        dm.Query1.Parameters.ParamByName('fec1').Value   := fecha1.Date;
        dm.Query1.Parameters.ParamByName('fec2').Value   := fecha2.Date;
        dm.Query1.Parameters.ParamByName('suc').Value    := DBLookupComboBox2.KeyValue;
        dm.Query1.ExecSQL;
      end;

      if cknccxp.Checked then
      begin
        // Notas de Credito Proveedores
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('execute contpr_pase_nc_cxp :emp, :suc, :fec1, :fec2');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        dm.Query1.Parameters.ParamByName('fec1').Value   := fecha1.Date;
        dm.Query1.Parameters.ParamByName('fec2').Value   := fecha2.Date;
        dm.Query1.Parameters.ParamByName('suc').Value    := DBLookupComboBox2.KeyValue;
        dm.Query1.ExecSQL;
      end;

      if ckDesem.Checked then
      begin
        // Desembolsos de Caja
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('execute contpr_pase_desem :emp, :suc, :fec1, :fec2');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        dm.Query1.Parameters.ParamByName('fec1').Value   := fecha1.Date;
        dm.Query1.Parameters.ParamByName('fec2').Value   := fecha2.Date;
        dm.Query1.Parameters.ParamByName('suc').Value    := DBLookupComboBox2.KeyValue;
        dm.Query1.ExecSQL;
      end;

      if ckCompra.Checked then
      begin
        // Pasando Compras
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('execute contpr_pase_compras :emp, :suc, :fec1, :fec2');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        dm.Query1.Parameters.ParamByName('fec1').Value   := fecha1.Date;
        dm.Query1.Parameters.ParamByName('fec2').Value   := fecha2.Date;
        dm.Query1.Parameters.ParamByName('suc').Value    := DBLookupComboBox2.KeyValue;
        dm.Query1.ExecSQL;
      end;

      if ckCheque.Checked then
      begin
        // Pasando Cheques
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('execute contpr_pase_cheques :emp, :suc, :fec1, :fec2');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        dm.Query1.Parameters.ParamByName('fec1').Value   := fecha1.Date;
        dm.Query1.Parameters.ParamByName('fec2').Value   := fecha2.Date;
        dm.Query1.Parameters.ParamByName('suc').Value    := DBLookupComboBox2.KeyValue;
        dm.Query1.ExecSQL;
      end;

      if ckDepositos.Checked then
      begin
        // Pasando Depositos
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('execute contpr_pase_depositos :emp, :suc, :fec1, :fec2');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        dm.Query1.Parameters.ParamByName('fec1').Value   := fecha1.Date;
        dm.Query1.Parameters.ParamByName('fec2').Value   := fecha2.Date;
        dm.Query1.Parameters.ParamByName('suc').Value    := DBLookupComboBox2.KeyValue;
        dm.Query1.ExecSQL;
      end;

      if ckCargos.Checked then
      begin
        // Pasando Cargos Bancarios
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('execute contpr_pase_cargos :emp, :suc, :fec1, :fec2');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        dm.Query1.Parameters.ParamByName('fec1').Value   := fecha1.Date;
        dm.Query1.Parameters.ParamByName('fec2').Value   := fecha2.Date;
        dm.Query1.Parameters.ParamByName('suc').Value    := DBLookupComboBox2.KeyValue;
        dm.Query1.ExecSQL;
      end;

      if ckRecibos.Checked then
      begin
        // Pasando Recibos
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('execute contpr_pase_recibos :emp, :suc, :fec1, :fec2');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        dm.Query1.Parameters.ParamByName('fec1').Value   := fecha1.Date;
        dm.Query1.Parameters.ParamByName('fec2').Value   := fecha2.Date;
        dm.Query1.Parameters.ParamByName('suc').Value    := DBLookupComboBox2.KeyValue;
        dm.Query1.ExecSQL;
      end;

      if ckFacturas.Checked then
      begin
        // Pasando Facturas
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('execute contpr_pase_facturas :emp, :suc, :fec1, :fec2');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        dm.Query1.Parameters.ParamByName('fec1').Value   := fecha1.Date;
        dm.Query1.Parameters.ParamByName('fec2').Value   := fecha2.Date;
        dm.Query1.Parameters.ParamByName('suc').Value    := DBLookupComboBox2.KeyValue;
        dm.Query1.ExecSQL;
      end;

       if ckFactRes.Checked then
      begin
        // Pasando Facturas del ResBar
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('execute contpr_pase_facturasResBar :emp, :suc, :fec1, :fec2');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        dm.Query1.Parameters.ParamByName('fec1').Value   := fecha1.Date;
        dm.Query1.Parameters.ParamByName('fec2').Value   := fecha2.Date;
        dm.Query1.Parameters.ParamByName('suc').Value    := DBLookupComboBox2.KeyValue;
        dm.Query1.ExecSQL;
      end;


      if ckliq.Checked then
      begin
        // Pasando Liquidaciones
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('execute contpr_pase_liq :emp, :fec1, :fec2');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        dm.Query1.Parameters.ParamByName('fec1').Value   := fecha1.Date;
        dm.Query1.Parameters.ParamByName('fec2').Value   := fecha2.Date;
        dm.Query1.ExecSQL;
      end;
      
      Messagedlg('PROCESO TERMINANDO',mtInformation, [mbok],0);
    end;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfrmPasarDocumentos.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
end;

end.
