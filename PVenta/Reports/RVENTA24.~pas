unit RVENTA24;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRFacVencidas = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel32: TQRLabel;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRLabel20: TQRLabel;
    QRExpr1: TQRExpr;
    QFacturas: TADOQuery;
    QFacturasALM_CODIGO: TIntegerField;
    QFacturasCAJ_CODIGO: TIntegerField;
    QFacturasCLI_CODIGO: TIntegerField;
    QFacturasCLI_REFERENCIA: TIBStringField;
    QFacturasCOT_NUMERO: TIntegerField;
    QFacturasCPA_CODIGO: TIntegerField;
    QFacturasEMP_CODIGO: TIntegerField;
    QFacturasFAC_ABONO: TFloatField;
    QFacturasFAC_DESCUENTO: TFloatField;
    QFacturasFAC_DIRECCION: TIBStringField;
    QFacturasFAC_FAX: TIBStringField;
    QFacturasFAC_FECHA: TDateTimeField;
    QFacturasFAC_FORMA: TIBStringField;
    QFacturasFAC_ITBIS: TFloatField;
    QFacturasFAC_LOCALIDAD: TIBStringField;
    QFacturasFAC_NOMBRE: TIBStringField;
    QFacturasFAC_NUMERO: TIntegerField;
    QFacturasFAC_OTROS: TFloatField;
    QFacturasFAC_STATUS: TIBStringField;
    QFacturasFAC_TELEFONO: TIBStringField;
    QFacturasFAC_TOTAL: TFloatField;
    QFacturasPED_NUMERO: TIntegerField;
    QFacturasTFA_CODIGO: TIntegerField;
    QFacturasUSU_CODIGO: TIntegerField;
    QFacturasVEN_CODIGO: TIntegerField;
    QFacturasUSU_NOMBRE: TIBStringField;
    QFacturasCAJ_NOMBRE: TIBStringField;
    QFacturasFAC_VENCE: TDateTimeField;
    QFacturasVencido: TFloatField;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QFacturasCPA_NOMBRE: TIBStringField;
    QSucursal: TADOQuery;
    QSucursalemp_codigo: TIntegerField;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand30: TQRBand;
    qrlUsuario: TQRLabel;
    QFacturasFAC_NOTA: TMemoField;
    procedure QFacturasCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  RFacVencidas: TRFacVencidas;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRFacVencidas.QFacturasCalcFields(DataSet: TDataSet);
begin
  QFacturasVencido.value := QFacturasFAC_TOTAL.value - QFacturasFAC_ABONO.value;
end;

procedure TRFacVencidas.QuickRepBeforePrint(Sender: TCustomQuickRep;
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
    dm.Query1.Parameters.ParamByName('mod').Value := 'RFacVencidas';
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
  qrlUsuario.Caption :='Impreso por :'+ dm.getNombreUsuario(DM.Usuario) +
                       ' Fecha/Hora ' + FormatDateTime('dd/mm/yyyy hh:mm:ss AM/PM',now);
end;

end.
