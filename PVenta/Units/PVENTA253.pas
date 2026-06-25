unit PVENTA253;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls, Mask, ToolEdit, CurrEdit,
  Buttons, DBCtrls;

type
  TfrmSelVendPorc = class(TForm)
    dbgrdVENDEDORES: TDBGrid;
    QVendedores: TADOQuery;
    dsVendedores: TDataSource;
    QVendedoresCODIGO: TIntegerField;
    QVendedoresNOMBRE: TStringField;
    QVendedoresESTATUS: TStringField;
    btClose: TBitBtn;
    QVendedoresCOM: TCurrencyField;
    procedure btCloseClick(Sender: TObject);
    procedure dbgrdVENDEDORESDblClick(Sender: TObject);
    procedure dbgrdVENDEDORESKeyPress(Sender: TObject; var Key: Char);
    procedure dsVendedoresDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    acepto : integer;
    vl_porciento : Currency;
    vl_vendedor  : Integer;
  end;

var
  frmSelVendPorc: TfrmSelVendPorc;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmSelVendPorc.btCloseClick(Sender: TObject);
begin
  vl_vendedor := 0;
  vl_porciento := 0;
  acepto := 0;
  Close;
end;

procedure TfrmSelVendPorc.dbgrdVENDEDORESDblClick(Sender: TObject);
begin
acepto := 1;
Close;
end;

procedure TfrmSelVendPorc.dbgrdVENDEDORESKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
dbgrdVENDEDORESDblClick(Sender);
end;

procedure TfrmSelVendPorc.dsVendedoresDataChange(Sender: TObject;
  Field: TField);
begin
vl_vendedor := QVendedoresCODIGO.Value;
vl_porciento := QVendedoresCOM.Value;
end;

end.
