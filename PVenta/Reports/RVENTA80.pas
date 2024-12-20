unit RVENTA80;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRRepProductos = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel11: TQRLabel;
    lbFamilia: TQRLabel;
    lbDepto: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel19: TQRLabel;
    QRBand3: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText6: TQRDBText;
    QProductos: TADOQuery;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel15: TQRLabel;
    lbmarca: TQRLabel;
    QProductosPRO_CODIGO: TIntegerField;
    QProductosPRO_RORIGINAL: TStringField;
    QProductosPRO_RFABRIC: TStringField;
    QProductosPRO_NOMBRE: TStringField;
    QProductosPRO_PRECIO1: TBCDField;
    QProductosPRO_PRECIO2: TBCDField;
    QProductosPRO_PRECIO3: TBCDField;
    QProductosPRO_PRECIO4: TBCDField;
    QProductosPRO_EXISTENCIA: TBCDField;
    QProductosPRO_UBICACION: TStringField;
    QProductosPRO_ULTCOSTO: TBCDField;
    QProductosPRO_COSTO: TBCDField;
    QProductosPRO_COSTOEMPAQUE: TBCDField;
    QProductosPRO_EXISTEMPAQUE: TBCDField;
    QProductosFAM_NOMBRE: TStringField;
    QProductosMAR_NOMBRE: TStringField;
    QProductosDEP_NOMBRE: TStringField;
    QProductosCOL_NOMBRE: TStringField;
    QProductosPRO_NUEVOUSADO: TStringField;
    QProductosPRO_ITBIS: TStringField;
    QProductosSUP_NOMBRE: TStringField;
    QProductosPRO_VOLUMEN: TBCDField;
    QProductosPRO_UNIDAD_MEDIDA: TStringField;
    QProductosPRO_MINIMO_VENTA: TBCDField;
    QProductosPRO_STATUS: TStringField;
    ChildBand1: TQRChildBand;
    QRRichText1: TQRRichText;
    QProductospro_comentario: TMemoField;
    QRSubDetail1: TQRSubDetail;
    QCombo: TADOQuery;
    dsProductos: TDataSource;
    QProductosemp_codigo: TIntegerField;
    QCombopro_nombre: TStringField;
    QCombocom_cantidad: TBCDField;
    QCombocom_precio: TBCDField;
    QCombocom_medida: TStringField;
    QCombocom_costo: TBCDField;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText18: TQRDBText;
    PageFooterBand1: TQRBand;
    qrlUsuario: TQRLabel;
    lbProveedor: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
     Existencia, Comision, Comentario : Boolean;
     precios : string;
  end;

var
  RRepProductos: TRRepProductos;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRRepProductos.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'I' then
    QRDBText6.DataField := 'PRO_CODIGO'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'O' then
    QRDBText6.DataField := 'PRO_RORIGINAL'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'F' then
    QRDBText6.DataField := 'PRO_RFABRIC';

 qrlUsuario.Caption :='Impreso por :'+ dm.getNombreUsuario(DM.Usuario) +
                       ' Fecha/Hora ' + FormatDateTime('dd/mm/yyyy hh:mm:ss AM/PM',now);
                       
end;

procedure TRRepProductos.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRRichText1.Lines.Text := QProductospro_comentario.Value;
  PrintBand := (trim(QProductospro_comentario.Value) <> '') and (Comentario = True);
end;

end.
