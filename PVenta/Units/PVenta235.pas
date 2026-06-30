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

uses SIGMA01;

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
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('exec pr_factura_condominio :cia, :suc, :fec, :usu');
          dm.Query1.Parameters.ParamByName('cia').Value  := DM.vp_cia;
          dm.Query1.Parameters.ParamByName('suc').Value  := QSucursalsuc_codigo.Value;
          dm.Query1.Parameters.ParamByName('fec').Value  := dtp1.Date;
          dm.Query1.Parameters.ParamByName('usu').Value  := DM.Usuario;
          dm.Query1.ExecSQL;
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
