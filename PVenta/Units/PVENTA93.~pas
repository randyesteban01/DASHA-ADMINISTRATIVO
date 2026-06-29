unit PVENTA93;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, IBCustomDataSet,
  IBQuery, ADODB, DBCtrls;

type
  TfrmAnulaDev = class(TForm)
    Label3: TLabel;
    edNumero: TEdit;
    btClose: TBitBtn;
    btAnular: TBitBtn;
    Query1: TADOQuery;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    Label14: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    Label4: TLabel;
    QMotivo: TADOQuery;
    QMotivomanu_codigo: TIntegerField;
    QMotivomanu_nombre: TStringField;
    dsMotivo: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btAnularClick(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAnulaDev: TfrmAnulaDev;

implementation

uses SIGMA01;


{$R *.dfm}

procedure TfrmAnulaDev.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmAnulaDev.btAnularClick(Sender: TObject);
var
  Fecha : TDateTime;
  Forma : string;
  Tipo, Fact : Integer;
begin
  if QMotivo.RecordCount = 0 then
  begin
    MessageDlg('Debe especificar un Motivo de Anulación',mtError,[mbok],0);
  end
  else
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select dev_status, dev_fecha, fac_forma, tfa_codigo, fac_numero');
    dm.Query1.SQL.Add('from devolucion');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and dev_numero = :num');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('num').Value  := StrToInt(Trim(edNumero.Text));
    dm.Query1.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
    begin
      MessageDlg('ESTA DEVOLUCION NO EXISTE',mterror,[mbok],0);
      edNumero.SetFocus;
    end
    else if dm.Query1.FieldByName('dev_status').AsString = 'ANU' then
    begin
      MessageDlg('ESTA DEVOLUCION ESTA ANULADA',mterror,[mbok],0);
      edNumero.SetFocus;
    end
    else
    begin
      Fecha := dm.Query1.FieldByName('dev_fecha').AsDateTime;
      Forma := dm.Query1.FieldByName('fac_forma').asstring;
      Tipo  := dm.Query1.FieldByName('tfa_codigo').asinteger;
      Fact  := dm.Query1.FieldByName('fac_numero').asinteger;
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select n.ncr_montousado, n.mov_tipo');
      dm.Query1.SQL.Add('from notascredito n, det_notacredito d');
      dm.Query1.SQL.Add('where n.emp_codigo = d.emp_codigo');
      dm.Query1.SQL.Add('and n.ncr_numero = d.ncr_numero');
      dm.Query1.SQL.Add('and n.suc_codigo = d.suc_codigo');
      dm.Query1.SQL.Add('and n.emp_codigo = :emp');
      dm.Query1.SQL.Add('and n.ncr_devolucion = :num');
      dm.Query1.SQL.Add('and n.suc_codigo = :suc');
      dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
      dm.Query1.Parameters.ParamByName('num').Value  := StrToInt(Trim(edNumero.Text));
      dm.Query1.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
      dm.Query1.Open;
      if dm.Query1.RecordCount > 1 then
      begin
        MessageDlg('ESTA DEVOLUCION GENERO UNA NOTA DE CREDITO,'+#13+
                   'LA CUAL FUE UTILIZADA PAGAR O ABONAR OTRAS FACTURAS.'+#13+
                   'NO PUEDE SER ANULADA.',mtError,[mbok],0);
        edNumero.SetFocus;
      end
      else if (dm.Query1.FieldByName('ncr_montousado').asfloat > 0) and
      (dm.Query1.FieldByName('mov_tipo').isnull) then
      begin
        MessageDlg('ESTA DEVOLUCION GENERO UNA NOTA DE CREDITO,'+#13+
                   'LA CUAL FUE UTILIZADA COMO EFECTIVO DE UNA FACTURA.'+#13+
                   'NO PUEDE SER ANULADA.',mtError,[mbok],0);
        edNumero.SetFocus;
      end
      else
      begin
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select des_fecha from desembolsos');
        dm.Query1.SQL.Add('where emp_codigo = :emp');
        dm.Query1.SQL.Add('and dev_numero = :num');
        dm.Query1.SQL.Add('and suc_codigo = :suc');
        dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
        dm.Query1.Parameters.ParamByName('num').Value  := StrToInt(Trim(edNumero.Text));
        dm.Query1.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
        dm.Query1.Open;
        if (dm.Query1.FieldByName('des_fecha').asDateTime <> Fecha) and
        (not dm.Query1.FieldByName('des_fecha').isnull) then
        begin
          MessageDlg('ESTA DEVOLUCION GENERO UN DESEMBOLSO DE CAJA,'+#13+
                     'EL CUAL YA FUE CUADRADO. NO PUEDE SER ANULADA.',mtError,[mbok],0);
          edNumero.SetFocus;
        end
        else
        begin
          //verificando si el cierre se hizo para esta fecha
          Query1.Close;
          Query1.SQL.Clear;
          Query1.SQL.Add('select cie_fecha from cierre');
          Query1.SQL.Add('where emp_codigo = :emp');
          Query1.SQL.Add('and cie_fecha = :fec');
          Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
          Query1.Parameters.ParamByName('fec').Value    := Fecha;
          Query1.Open;
          if Query1.RecordCount > 0 then
          begin
            MessageDlg('NO PUEDE ANULARSE LA NOTA DE CREDITO, DEBIDO'+#13+
                       'A QUE ESTE DIA FUE CERRADO.',mtError,[mbok],0);
          end
          else
            if MessageDlg('ESTA SEGURO?',mtConfirmation,[mbyes,mbno],0) = mryes then
            begin
              dm.Query1.Close;
              dm.Query1.SQL.Clear;
              dm.Query1.SQL.Add('execute pr_anula_dev :emp, :suc, :num, :usu, :mot');
              dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
              dm.Query1.Parameters.ParamByName('num').Value  := StrToInt(Trim(edNumero.Text));
              dm.Query1.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
              dm.Query1.Parameters.ParamByName('usu').Value  := dm.NomUsu;
              dm.Query1.Parameters.ParamByName('mot').Value  := DBLookupComboBox1.KeyValue;
              dm.Query1.ExecSQL;
              MessageDlg('SE HA ANULADO LA DEVOLUCION',mtInformation,[mbok],0);
            end;
        end;
      end;
    end;
  end;
end;

procedure TfrmAnulaDev.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmAnulaDev.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmAnulaDev.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;

    QMotivo.Open;
    DBLookupComboBox1.KeyValue := QMotivomanu_codigo.Value;
  end;
end;

end.
