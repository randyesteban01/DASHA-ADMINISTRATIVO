unit RVENTA87;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, ADODB;

type
  TRRepOfertasOtorgadas = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
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
    QRLabel7: TQRLabel;
    QRLabel5: TQRLabel;
    QRBand3: TQRBand;
    QRDBText12: TQRDBText;
    QRDBText8: TQRDBText;
    QClientes: TADOQuery;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel4: TQRLabel;
    QProductos: TADOQuery;
    QProductospro_codigo: TIntegerField;
    QProductospro_roriginal: TStringField;
    QProductospro_nombre: TStringField;
    QProductoscantidad: TBCDField;
    dsProductos: TDataSource;
    QRLabel6: TQRLabel;
    lbProd: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QClientesfac_nombre: TStringField;
    QClientescantidad: TBCDField;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    PageFooterBand1: TQRBand;
    qrlUsuario: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel8: TQRLabel;
    QRLSUCURSAL: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  RRepOfertasOtorgadas: TRRepOfertasOtorgadas;

implementation

uses SIGMA01;

{$R *.DFM}

procedure TRRepOfertasOtorgadas.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
     lbProd.DataField := 'PRO_CODIGO'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
     lbProd.DataField := 'PRO_RORIGINAL';

          qrlUsuario.Caption :='Impreso por :'+ dm.getNombreUsuario(DM.Usuario) +
                       ' Fecha/Hora ' + FormatDateTime('dd/mm/yyyy hh:mm:ss AM/PM',now);

end;

end.
