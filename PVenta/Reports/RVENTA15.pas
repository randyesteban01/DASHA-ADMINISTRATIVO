unit RVENTA15;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB, frxClass, frxDBSet;

type
  TRMovCentroCostos = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel30: TQRLabel;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRLabel20: TQRLabel;
    QRLabel38: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel3: TQRLabel;
    QCentro: TADOQuery;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel4: TQRLabel;
    QRExpr2: TQRExpr;
    QRLabel5: TQRLabel;
    QMov: TADOQuery;
    dsCentro: TDataSource;
    QMovid: TAutoIncField;
    QMovTIPO: TStringField;
    QMovFECHA: TDateTimeField;
    QMovNUMERO: TStringField;
    QMovCONCEPTO: TStringField;
    QMovMONTO: TBCDField;
    QMovBENEFICIARIO: TStringField;
    QMovNOMBRE: TStringField;
    QMovCODIGO: TIntegerField;
    QCentroCODIGO: TIntegerField;
    QCentroNOMBRE: TStringField;
    QRSubDetail1: TQRSubDetail;
    QRDBText10: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText11: TQRDBText;
    lbBalance: TQRLabel;
    QRDBText12: TQRDBText;
    QRBand5: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QMovIngreso: TFloatField;
    QMovGasto: TFloatField;
    QRBand30: TQRBand;
    qrlUsuario: TQRLabel;
    QMovNOMBRE2: TStringField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QMovCalcFields(DataSet: TDataSet);
    procedure QCentroAfterScroll(DataSet: TDataSet);
  private

  public
     Balance : Double;
  end;

var
  RMovCentroCostos: TRMovCentroCostos;

implementation

uses SIGMA01, PVENTA135;


{$R *.DFM}

procedure TRMovCentroCostos.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  Balance := 0;
  qrlUsuario.Caption :='Impreso por :'+ dm.getNombreUsuario(DM.Usuario) +
                       ' Fecha/Hora ' + FormatDateTime('dd/mm/yyyy hh:mm:ss AM/PM',now);
end;

procedure TRMovCentroCostos.QMovCalcFields(DataSet: TDataSet);
begin
  if QMovTIPO.Value = 'REC' then
    QMovIngreso.Value := QMovMONTO.Value
  else
    QMovGasto.Value   := QMovMONTO.Value;
end;

procedure TRMovCentroCostos.QCentroAfterScroll(DataSet: TDataSet);
begin
  {QMov.Close;
  QMov.Parameters.ParamByName('CODIGO').Value := QCentroCODIGO.Value;
  QMov.Parameters.ParamByName('EMP').Value    := dm.vp_cia;
  QMov.Parameters.ParamByName('FEC1').Value   := QCentro.Parameters.ParamByName('FEC1').Value;
  QMov.Parameters.ParamByName('FEC2').Value   := QCentro.Parameters.ParamByName('FEC2').Value;
  QMov.Open;}
end;

end.
