unit PVENTA223;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids;

type
  TfrmPedidosFactura = class(TForm)
    SpeedButton2: TSpeedButton;
    DBGrid1: TDBGrid;
    SpeedButton3: TSpeedButton;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPedidosFactura: TfrmPedidosFactura;

implementation

uses SIGMA01, PVENTA18, Math;

{$R *.dfm}

procedure TfrmPedidosFactura.SpeedButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmPedidosFactura.SpeedButton2Click(Sender: TObject);
begin
  frmFactura.QPedidos.Delete;
end;

procedure TfrmPedidosFactura.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if DBGrid1.SelectedIndex = 0 then
    begin
      DBGrid1.SelectedIndex := 0;
      frmFactura.QPedidos.Append;
    end;
  end;
end;

procedure TfrmPedidosFactura.DBGrid1ColEnter(Sender: TObject);
begin
  if DBGrid1.SelectedIndex > 0 then DBGrid1.SelectedIndex := 0;
end;

procedure TfrmPedidosFactura.DBGrid1Enter(Sender: TObject);
begin
  if DBGrid1.SelectedIndex > 0 then DBGrid1.SelectedIndex := 0;
end;

end.
