unit RVENTA90;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, ADODB, IBCustomDataSet;

type
  TRepCotizaciones = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel11: TQRLabel;
    lbCliente: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand2: TQRBand;
    QRLabel19: TQRLabel;
    QRBand3: TQRBand;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    lbvendedor: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    lbusuario: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel15: TQRLabel;
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
    QCotizacionSUC_CODIGO: TIntegerField;
    QCotizacionCOT_DESCUENTO: TBCDField;
    QCotizacionmon_codigo: TIntegerField;
    QCotizacioncot_Tasa: TBCDField;
    QCotizacioncpa_codigo: TIntegerField;
    QCotizacioncot_validez: TIntegerField;
    QCotizacioncot_tiempo_entrega: TStringField;
    QCotizacioncot_contacto: TStringField;
    QCotizacionusu_nombre: TStringField;
    QCotizacionven_nombre: TStringField;
    QCotizacionmon_nombre: TStringField;
    QCotizacionMargen: TBCDField;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QMoneda: TADOQuery;
    QMonedamon_sigla: TStringField;
    dsMoneda: TDataSource;
    QMonedamon_codigo: TIntegerField;
    QMonedaemp_codigo: TIntegerField;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabel10: TQRLabel;
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  RepCotizaciones: TRepCotizaciones;

implementation

uses SIGMA01;

{$R *.DFM}

procedure TRepCotizaciones.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRExpr2.Mask := QMonedamon_sigla.Value+'###,###,###.00';
end;

procedure TRepCotizaciones.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
  a : integer;
  cambiar : TQRLabel;
begin
  if dm.QParametrosIdioma.AsString = 'I' then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select objeto, ingles from Traduccion where modulo = :mod');
    dm.Query1.Parameters.ParamByName('mod').Value := 'RepCotizaciones';
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
