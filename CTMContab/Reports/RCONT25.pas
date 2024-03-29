unit RCONT25;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, IBCustomDataSet, ADODB;

type
  TRNCF_Unico = class(TQuickRep)
    QRBand1: TQRBand;
    lbFactura: TQRLabel;
    QRDBText1: TQRDBText;
    QDetalle: TADOQuery;
    QDetallepro_codigo: TIntegerField;
    QDetallepro_nombre: TStringField;
    QDetalledet_medida: TStringField;
    QDetalledet_precio: TBCDField;
    QDetalledet_conitbis: TStringField;
    QDetalledet_descuento: TBCDField;
    QDetalledet_itbis: TBCDField;
    QDetalledet_cantidad: TBCDField;
    QRLabel3: TQRLabel;
    lbfecha: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText2: TQRDBText;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRBand3: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QDetalleCalcDescuento: TFloatField;
    QDetalleItbis: TStringField;
    QRDBText10: TQRDBText;
    QRBand4: TQRBand;
    QDetalleTotal: TFloatField;
    QRExpr1: TQRExpr;
    QRLabel13: TQRLabel;
    lbncf: TQRLabel;
    QRBand30: TQRBand;
    qrlUsuario: TQRLabel;
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  RNCF_Unico: TRNCF_Unico;

implementation

uses SIGMA01;

{$R *.DFM}

procedure TRNCF_Unico.QDetalleCalcFields(DataSet: TDataSet);
begin
  if QDetalledet_conitbis.Value <> 'S' then
     QDetalleItbis.Value := 'E'
  else
     QDetalleItbis.Value := ' ';

  QDetalleTotal.Value := (QDetalledet_precio.Value - QDetalledet_descuento.Value) * QDetalledet_cantidad.Value;
end;

procedure TRNCF_Unico.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  qrlUsuario.Caption :='Impreso por :'+ dm.getNombreUsuario(DM.Usuario) +
                       ' Fecha/Hora ' + FormatDateTime('dd/mm/yyyy hh:mm:ss AM/PM',now);
end;

end.
