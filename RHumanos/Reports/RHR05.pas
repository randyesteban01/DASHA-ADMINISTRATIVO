unit RHR05;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ADODB;

type
  TRepEmpleadosDirecciones = class(TQuickRep)
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRBand2: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRBand3: TQRBand;
    QGrupo: TADOQuery;
    QGrupogru_codigo: TIntegerField;
    QGrupogru_nombre: TStringField;
    dsGrupo: TDataSource;
    QEmpleados: TADOQuery;
    QGrupoemp_codigo: TIntegerField;
    QRLabel10: TQRLabel;
    QEmpleadosemp_numero: TIntegerField;
    QEmpleadosNombre: TStringField;
    QEmpleadosemp_cedula: TStringField;
    QEmpleadosemp_fecha_entrada: TDateTimeField;
    QEmpleadosemp_sexo: TStringField;
    QEmpleadosest_nombre: TStringField;
    QRDBText2: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText9: TQRDBText;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel11: TQRLabel;
    QRBand5: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel12: TQRLabel;
    lbtitulo: TQRLabel;
    QEmpleadosemp_fecha_nacimiento: TDateTimeField;
    QEmpleadosemp_direccion: TMemoField;
    QEmpleadosemp_telefono1: TStringField;
    QEmpleadosemp_telefono2: TStringField;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QEmpleadospos_nombre: TStringField;
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  RepEmpleadosDirecciones: TRepEmpleadosDirecciones;

implementation

uses SIGMA01;

{$R *.DFM}

procedure TRepEmpleadosDirecciones.QRBand3BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  PrintBand := QEmpleados.RecordCount > 0;
end;

procedure TRepEmpleadosDirecciones.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
var
  a : integer;
  cambiar : TQRLabel;
begin
  if dm.QParametrosIdioma.AsString = 'I' then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select objeto, ingles from Traduccion where modulo = :mod');
    dm.Query1.Parameters.ParamByName('mod').Value := 'RepEmpleadosDirecciones';
    dm.Query1.Open;
    dm.Query1.DisableControls;
    while not dm.Query1.Eof do
    begin
      cambiar := (FindComponent(dm.Query1.FieldByName('objeto').AsString) as TQRLabel);
      cambiar.Caption := dm.Query1.FieldByName('ingles').AsString;
      dm.Query1.Next;
    end;
    dm.Query1.EnableControls;
  end;
end;

end.
