unit RVENTA62;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, DB, IBCustomDataSet, ADODB, QRCtrls, QuickRpt, QRPDFFilt, QRExport;

type
  TRRepProdVencidos = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel11: TQRLabel;
    lbProv: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRDBText10: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QProductos: TADOQuery;
    QRDBText8: TQRDBText;
    lbVencen: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel12: TQRLabel;
    QProductosPRO_CODIGO: TIntegerField;
    QProductosPRO_RORIGINAL: TIBStringField;
    QProductosPRO_RFABRIC: TIBStringField;
    QProductosPRO_NOMBRE: TIBStringField;
    QProductosVEN_CANTPENDIENTE: TFloatField;
    QProductosVEN_FECHA: TDateTimeField;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel9: TQRLabel;
    QProductossup_codigo: TIntegerField;
    QProductosfac_numero: TStringField;
    QProductospro_ubicacion: TStringField;
    QProductosdet_costo: TBCDField;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    PageFooterBand1: TQRBand;
    qrlUsuario: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  RRepProdVencidos: TRRepProdVencidos;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRRepProdVencidos.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 qrlUsuario.Caption :='Impreso por :'+ dm.getNombreUsuario(DM.Usuario) +
                       ' Fecha/Hora ' + FormatDateTime('dd/mm/yyyy hh:mm:ss AM/PM',now);
end;

end.
