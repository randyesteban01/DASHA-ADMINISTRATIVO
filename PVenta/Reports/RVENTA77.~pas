unit RVENTA77;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, ADODB;

type
  TRRepHistorialCli = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    lbCliente: TQRLabel;
    QRBand2: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRBand3: TQRBand;
    QHistorial: TADOQuery;
    QHistorialid: TAutoIncField;
    QHistorialtipo: TStringField;
    QHistorialnumero: TIntegerField;
    QHistorialfecha: TDateTimeField;
    QHistorialconcepto: TStringField;
    QHistorialmonto: TBCDField;
    QHistorialabono: TBCDField;
    QHistorialsaldo: TBCDField;
    QHistorialstatus: TStringField;
    QRDBText12: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    lbBalance: TQRLabel;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel9: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
    pendientes : boolean;
  end;

var
  RRepHistorialCli: TRRepHistorialCli;

implementation

uses SIGMA01;

{$R *.DFM}

procedure TRRepHistorialCli.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Printband := pendientes;
end;

end.
