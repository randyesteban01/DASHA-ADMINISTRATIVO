unit RVENTA39;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, Db, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRTransferencia = class(TQuickRep)
    QRBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLCodigo: TQRLabel;
    QRLDescripcion: TQRLabel;
    QRLabel10: TQRLabel;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRLabel22: TQRLabel;
    QRShape9: TQRShape;
    QRLabel23: TQRLabel;
    QRShape10: TQRShape;
    QRDBText11: TQRDBText;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel28: TQRLabel;
    lbCliente: TQRDBText;
    QTrans: TADOQuery;
    QTransEMP_CODIGO: TIntegerField;
    QTransTRA_ALMACEN1: TIntegerField;
    QTransTRA_ALMACEN2: TIntegerField;
    QTransTRA_CONCEPTO: TIBStringField;
    QTransTRA_FECHA: TDateTimeField;
    QTransTRA_NUMERO: TIntegerField;
    QTransTRA_STATUS: TIBStringField;
    QTransUSU_CODIGO: TIntegerField;
    dsTrans: TDataSource;
    QDetalle: TADOQuery;
    QDetalleDET_CANTIDAD: TFloatField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    QDetallePRO_CODIGO: TIntegerField;
    QDetallePRO_RFABRIC: TIBStringField;
    QDetallePRO_RORIGINAL: TIBStringField;
    QDetalleTRA_NUMERO: TIntegerField;
    QTransALMACEN1: TIBStringField;
    QTransALMACEN2: TIBStringField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    lbReimpresion: TQRLabel;
    QRDBText8: TQRDBText;
    QDetalledet_medida: TStringField;
    QDetalledet_medida2: TStringField;
    QDetalledet_cantidad2: TBCDField;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    lblHasta: TQRLabel;
    lblCantidad: TQRLabel;
    lblMedida: TQRLabel;
    QDetCantidad: TQRDBText;
    QDetMedida: TQRDBText;
    lbTitulo: TQRLabel;
    QDetalledet_costo: TBCDField;
    QDetalledet_costound: TBCDField;
    QDetalledet_costoemp: TBCDField;
    QDetalleValor: TFloatField;
    lblCosto: TQRLabel;
    lblValor: TQRLabel;
    QDetCosto: TQRDBText;
    QDetValor: TQRDBText;
    QTotalSum: TQRExpr;
    lblTotalSum: TQRLabel;
    QDetallePRO_NOMBRE: TStringField;
    QRDescripcion: TQRDBText;
    lbProd: TQRDBText;
    PageFooterBand1: TQRBand;
    qrlUsuario: TQRLabel;
    QTransUbicacion: TStringField;
    QLUbicacion: TQRLabel;
    qrdbtxtpro_ubicacion: TQRDBText;
    QDetallepro_ubicacion: TStringField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QDetalleCalcFields(DataSet: TDataSet);
  private

  public

  end;

var
  RTransferencia: TRTransferencia;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRTransferencia.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
     lbProd.DataField := 'PRO_CODIGO'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
     lbProd.DataField := 'PRO_RFABRIC'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
     lbProd.DataField := 'PRO_RORIGINAL';

 qrlUsuario.Caption :='Impresooo por :'+ dm.getNombreUsuario(DM.Usuario) +
                       ' Fecha/Hora ' + FormatDateTime('dd/mm/yyyy hh:mm:ss AM/PM',now);


 
 if (dm.QEmpresasEMP_RNC.Value = '130983704') then
  begin
    lblHasta.Caption:='';
    lblCantidad.Caption:='';
    lblMedida.Caption:='';
    lblCosto.Caption:='';
    lblValor.Caption:='';

    QdetCantidad.DataField:='';
    QdetCantidad.Caption:='';
    QDetMedida.DataField:='';
    QDetMedida.Caption:='';
    QDetCosto.DataField:='';
    QDetCosto.Caption:='';
    QDetValor.DataField:='';
    QDetValor.Caption:='';

    lblTotalSum.Caption:='';
    QTotalSum.Expression:='';

    QLUbicacion.Left:=620;
    qrdbtxtpro_ubicacion.Left:=620;
    
    QLUbicacion.Width:=100;
    qrdbtxtpro_ubicacion.Width:=100;

    QRLCodigo.Left:=125;
    lbProd.Left:=125;

    QRLCodigo.Width:=100;
    lbProd.Width:=100;

    QRLDescripcion.Left:=250;
    QRDescripcion.Left:=250;

    QRLDescripcion.Width:=300;
    QRDescripcion.Width:=300;

  end;

end;

procedure TRTransferencia.QDetalleCalcFields(DataSet: TDataSet);
begin
  QDetalleValor.Value := QDetalledet_costo.Value * QDetalleDET_CANTIDAD.Value;

end;

end.
