unit RVENTA23;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, IBStoredProc, ADODB;

type
  TRRepMovDia = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel13: TQRLabel;
    lbUsuario: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel21: TQRLabel;
    QRBand3: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel27: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QMov: TADOQuery;
    QMovCXC1: TFloatField;
    QMovCXC2: TFloatField;
    QMovEFEC1: TFloatField;
    QMovEFEC2: TFloatField;
    QMovCOB1: TFloatField;
    QMovCOB2: TFloatField;
    QMovDESEM1: TFloatField;
    QMovDESEM2: TFloatField;
    QMovCXP1: TFloatField;
    QMovCXP2: TFloatField;
    QMovNCR1: TFloatField;
    QMovNCR2: TFloatField;
    QMovNDE1: TFloatField;
    QMovNDE2: TFloatField;
    QMovDEVOL1: TFloatField;
    QMovDEVOL2: TFloatField;
    QMovPAGOS1: TFloatField;
    QMovPAGOS2: TFloatField;
    QRShape1: TQRShape;
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
  RRepMovDia: TRRepMovDia;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRRepMovDia.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
         qrlUsuario.Caption :='Impreso por :'+ dm.getNombreUsuario(DM.Usuario) +
                       ' Fecha/Hora ' + FormatDateTime('dd/mm/yyyy hh:mm:ss AM/PM',now);
end;

end.
