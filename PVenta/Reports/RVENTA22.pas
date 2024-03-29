unit RVENTA22;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRRepProveedores = class(TQuickRep)
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
    QRExpr1: TQRExpr;
    QRLabel7: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    lbUsuario: TQRLabel;
    lbStatus: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText6: TQRDBText;
    QProv: TADOQuery;
    QProvEMP_CODIGO: TIntegerField;
    QProvSUP_BALANCE: TFloatField;
    QProvSUP_CODIGO: TIntegerField;
    QProvSUP_CUENTA: TIBStringField;
    QProvSUP_DIRECCION: TIBStringField;
    QProvSUP_EMAIL: TIBStringField;
    QProvSUP_FAX: TIBStringField;
    QProvSUP_LOCALIDAD: TIBStringField;
    QProvSUP_NOMBRE: TIBStringField;
    QProvSUP_RNC: TIBStringField;
    QProvSUP_STATUS: TIBStringField;
    QProvSUP_TELEFONO: TIBStringField;
    QProvSUP_VENDEDOR: TIBStringField;
    QProvSUP_WEB: TIBStringField;
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
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    lbgerente: TQRLabel;
    PageFooterBand1: TQRBand;
    qrlUsuario: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  RRepProveedores: TRRepProveedores;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRRepProveedores.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 qrlUsuario.Caption :='Impreso por :'+ dm.getNombreUsuario(DM.Usuario) +
                       ' Fecha/Hora ' + FormatDateTime('dd/mm/yyyy hh:mm:ss AM/PM',now);
end;

end.
