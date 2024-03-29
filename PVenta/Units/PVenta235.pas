unit PVenta235;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls;

type
  TFrmSelFecha = class(TForm)
    dtp1: TDateTimePicker;
    btn1: TBitBtn;
    procedure btn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
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
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('exec pr_factura_automatica :cia,:fecha');
          dm.Query1.Parameters.ParamByName('cia').Value    := DM.vp_cia;
          dm.Query1.Parameters.ParamByName('fecha').Value  := dtp1.Date;
          dm.Query1.ExecSQL;
          MessageDlg('PROCESO EJECUTADO SATISFACTORIAMENTE',mtInformation, [mbok], 0);
          FrmSelFecha.Close;
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

end.
