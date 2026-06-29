unit RVENTA70;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRepOrdenPedido = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRLabel7: TQRLabel;
    QProv: TADOQuery;
    QProvSUP_NOMBRE: TIBStringField;
    QProvSUP_CODIGO: TIntegerField;
    QProvEMP_CODIGO: TIntegerField;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRBand4: TQRBand;
    QRLabel6: TQRLabel;
    QRShape1: TQRShape;
    QRLabel8: TQRLabel;
    edNota: TQRRichText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText10: TQRDBText;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  RepOrdenPedido: TRepOrdenPedido;

implementation

uses SIGMA01, PVENTA140;


{$R *.DFM}

procedure TRepOrdenPedido.QuickRepBeforePrint(Sender: TCustomQuickRep;
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
    dm.Query1.Parameters.ParamByName('mod').Value := 'RepOrdenPedido';
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
end;

end.
