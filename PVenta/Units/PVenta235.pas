unit PVenta235;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, DB, ADODB;

type
  TFrmSelFecha = class(TForm)
    dtp1: TDateTimePicker;
    btn1: TBitBtn;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    QSucursalsuc_direccion: TStringField;
    QSucursalsuc_localidad: TStringField;
    QSucursalsuc_telefono: TStringField;
    QSucursalsuc_rnc: TStringField;
    qConsFacClien: TADOQuery;
    qInsertFact: TADOQuery;
    procedure btn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    
    { Public declarations }
  end;

var
  FrmSelFecha: TFrmSelFecha;

implementation

uses SIGMA01, DateUtils;

{$R *.dfm}

procedure TFrmSelFecha.btn1Click(Sender: TObject);
begin
         if dm.facturacion_auto = true then begin
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('exec pr_factura_automatica :cia,:fecha');
          dm.Query1.Parameters.ParamByName('cia').Value    := DM.vp_cia;
          dm.Query1.Parameters.ParamByName('fecha').Value  := dtp1.Date;
          dm.Query1.ExecSQL;
          MessageDlg('PROCESO EJECUTADO SATISFACTORIAMENTE',mtInformation, [mbok], 0);
          FrmSelFecha.Close;
          end
          else
          begin
          with dm.Query1 do begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT c.cli_codigo, cond_tfa_codigo, cond_ven_codigo, cond_caj_codigo, cond_fac_caja,');
          SQL.Add('cond_cpa_codigo, cond_mon_codigo, cond_fac_nota,cond_monto fac_total, p.pro_itbis fac_itbis,');
          SQL.Add('c.cond_tip_codigo,p.pro_codigo, p.pro_montoitbis ');
          SQL.Add('FROM Clientes C'
          SQL.Add('INNER JOIN productos p ON c.emp_codigo = p.emp_codigo AND c.cond_pro_codigo = p.pro_codigo');
          SQL.Add('WHERE c.emp_codigo = :CIA  and c.cond_monto is not null');
          SQL.Add('ORDER BY c.cli_codigo');
          Parameters.ParamByName('cia').Value  := DM.vp_cia;
          Open;
          if DM.Query1.RecordCount = 0 then begin
            ShowMessage('NO EXISTEN REGISTRO PARA INSERTAR.......');
            Exit;
          end
          else
          BEGIN
            with qConsFacClien do begin
            Close;
            SQL.Clear;
            SQL.Add('select fac_numero,fac_nombre, fac_total, fac_fecha, tfa_codigo, fac_forma,');
            SQL.Add('ven_codigo, caj_codigo, fac_caja, cpa_codigo, mon_codigo ');
            SQL.Add('from facturas');
            SQL.Add('where emp_codigo = :emp and cli_codigo = :cli and suc_codigo = :suc and fac_fecha = :fec');
            Parameters.ParamByName('emp').Value  := DM.vp_cia;
            Parameters.ParamByName('cli').Value  := DM.Query1.FieldByName('cli_codigo').Value;
            Parameters.ParamByName('suc').Value  := QSucursalsuc_codigo.Value;
            Parameters.ParamByName('fec').Value  := dtp1.Date;
            Open;
            if qConsFacClien.RecordCount > 0 then begin
              if MessageDlg('El cliente '+Trim(FieldByName('fac_nombre').Text)+ ','+Char(13)+'YA TIENE UNA FACTURA GENERADA,'+
              Char(13)+'DE FECHA '+FormatDateTime('ddmmyyyy',fieldbyname('fac_fecha').AsDateTime)+char(13)+
              'DESEA GENERAR LA FACTURA NUEVAMENTE A ESTE CLIENTE?'),mtconfirmation, [mbyes,mbno],1) = mrno then
            DM.Query1.Next else
            begin

            end;
            end;

            end;
            end;
          end;

          MessageDlg('PROCESO EJECUTADO SATISFACTORIAMENTE',mtInformation, [mbok], 0);
          FrmSelFecha.Close;
          end;
end;


procedure TFrmSelFecha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    action := cafree;

end;

procedure TFrmSelFecha.FormCreate(Sender: TObject);
begin
Width := 152;
Height := 114;
dtp1.Date := Date;
end;

procedure TFrmSelFecha.FormActivate(Sender: TObject);
begin
QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
QSucursal.Parameters.ParamByName('emp_codigo').Value := dm.vp_cia;
QSucursal.Open;
end;

end.
