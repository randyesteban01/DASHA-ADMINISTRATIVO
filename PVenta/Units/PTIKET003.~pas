unit PTIKET003;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids,
  QuerySearchDlgADO, DBCtrls, DB, ADODB, DateUtils, frxClass, frxDBSet;

type
  TfrmConsBoletos = class(TForm)
    Panel2: TPanel;
    lbCantidad: TLabel;
    BitBtn2: TBitBtn;
    btRefresh: TBitBtn;
    btClose: TBitBtn;
    BitBtn1: TBitBtn;
    ProgressBar1: TProgressBar;
    Memo1: TMemo;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    QSucursalsuc_direccion: TStringField;
    QSucursalsuc_localidad: TStringField;
    QSucursalsuc_telefono: TStringField;
    QSucursalsuc_rnc: TStringField;
    dsSuc: TDataSource;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Search: TQrySearchDlgADO;
    QBoletos: TADOQuery;
    dsBoletos: TDataSource;
    Label6: TLabel;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    ckrango: TCheckBox;
    Label5: TLabel;
    cbOrden: TComboBox;
    cbStatus: TRadioGroup;
    QBoletosemp_codigo: TIntegerField;
    QBoletosusu_codigo: TIntegerField;
    QBoletosfecha: TDateTimeField;
    QBoletosboleto: TAutoIncField;
    QBoletoscaja: TIntegerField;
    QBoletossuc_cod_origen: TIntegerField;
    QBoletossuc_cod_destino: TIntegerField;
    QBoletosproducto: TIntegerField;
    QBoletosdescripcion: TStringField;
    QBoletosprecio: TBCDField;
    QBoletoscobrado: TBCDField;
    QBoletosdevuelto: TBCDField;
    QBoletosficha_pagado: TStringField;
    QBoletosfecha_pagado: TDateTimeField;
    QBoletossuc_origen: TStringField;
    QBoletossuc_destino: TStringField;
    lbTotal: TLabel;
    QPago: TADOQuery;
    dsPago: TDataSource;
    QPagoemp_codigo: TIntegerField;
    QPagousu_codigo: TIntegerField;
    QPagofecha: TDateTimeField;
    QPagoboleto: TAutoIncField;
    QPagocaja: TIntegerField;
    QPagosuc_cod_origen: TIntegerField;
    QPagosuc_cod_destino: TIntegerField;
    QPagoproducto: TIntegerField;
    QPagodescripcion: TStringField;
    QPagoprecio: TBCDField;
    QPagocobrado: TBCDField;
    QPagodevuelto: TBCDField;
    QPagoficha_pagado: TStringField;
    QPagofecha_pagado: TDateTimeField;
    QBoletossecuencia_rando: TWideStringField;
    QPagosecuencia_rando: TWideStringField;
    LTotal: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    edtFicha: TEdit;
    btnImprimir: TBitBtn;
    DB_1: TfrxDBDataset;
    qReporte: TADOQuery;
    qReportesuc_nombre: TStringField;
    qReportesuc_telefono: TStringField;
    qReportesuc_direccion: TStringField;
    qReporteusu_nombre: TStringField;
    qReportefecha_pagado: TDateField;
    qReporteprecio: TCurrencyField;
    qReporteficha_pagado: TStringField;
    Rpt_Reimp_Pag_Ticket: TfrxReport;
    qReporteCANT: TIntegerField;
    qReporteDESCRIPCION: TStringField;
    qBalance: TADOQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    CurrencyField1: TCurrencyField;
    IntegerField1: TIntegerField;
    StringField6: TStringField;
    DB_Balance: TfrxDBDataset;
    btnBalance: TBitBtn;
    Rpt_Balance: TfrxReport;
    qBalancePAGADO: TCurrencyField;
    qBalanceTOTAL: TCurrencyField;
    qBalanceBALANCE: TCurrencyField;
    Label7: TLabel;
    edUsuario: TEdit;
    SpeedButton3: TSpeedButton;
    tUsuario: TEdit;
    btnReimpresionBoleto: TBitBtn;
    qry: TADOQuery;
    qryemp_nombre: TStringField;
    qrysuc_telefono: TStringField;
    qrysuc_direccion: TStringField;
    qryTerminal_origen: TStringField;
    qryTerminal_destino: TStringField;
    qryemp_codigo: TIntegerField;
    qryusu_codigo: TIntegerField;
    qryfecha: TDateTimeField;
    qryboleto: TAutoIncField;
    qrycaja: TIntegerField;
    qrysuc_cod_origen: TIntegerField;
    qrysuc_cod_destino: TIntegerField;
    qryproducto: TIntegerField;
    qrydescripcion: TStringField;
    qryprecio: TBCDField;
    qrycobrado: TBCDField;
    qrydevuelto: TBCDField;
    qryficha_pagado: TStringField;
    qryfecha_pagado: TDateTimeField;
    qrysecuencia_rando: TWideStringField;
    qryusu_nombre: TStringField;
    qrycodbarra: TStringField;
    qryCONTEO: TIntegerField;
    frxDBDataset1: TfrxDBDataset;
    Rpt_Ticket: TfrxReport;
    Hora1: TDateTimePicker;
    Hora2: TDateTimePicker;
    btnAnular: TBitBtn;
    QBoletosanulado: TBooleanField;
    QBoletoscomentario_anulado: TStringField;
    QBoletosEstado: TStringField;
    QBoletosusu_nombre: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btCloseClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnBalanceClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure edUsuarioChange(Sender: TObject);
    procedure edUsuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnReimpresionBoletoClick(Sender: TObject);
    procedure btnAnularClick(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsBoletos: TfrmConsBoletos;

implementation

uses SIGMA01, SIGMA00, PTIKET004, PTIKET005, PVENTA44, Math, PVENTA250;

{$R *.dfm}

function TotalBoletos(vQry:TADOQuery):string;
var vValor:Currency;
begin
  vValor:=0;
  vQry.DisableControls;
  vQry.First;
  while not vQry.Eof do begin
    vValor := vValor + vQry.FieldByName('precio').AsCurrency;
    vQry.Next;
  end;
  vQry.EnableControls;
  Result := FormatCurr(',0.00',vValor);
end;

procedure TfrmConsBoletos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConsBoletos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
end;

procedure TfrmConsBoletos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     if activecontrol.classtype <> tdbgrid then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmConsBoletos.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmConsBoletos.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;

    //Verificar si el usuario tiene sucursal por defecto
    if not VarIsNull(dm.suc_default) and (dm.suc_default > 0) then
    begin
      DBLookupComboBox2.KeyValue := dm.suc_default;
    end;

  end;
  frmMain.ExportXLS.Sheets[0].DBGrid   := DBGrid1;
  frmMain.ExportXLS.Sheets[1].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[0].Exported := True;
end;

procedure TfrmConsBoletos.FormCreate(Sender: TObject);
begin
  Memo1.lines := QBoletos.sql;
  Fecha1.date := date; //StartOfTheMonth(date);
  Fecha2.date := date;
  cbOrden.itemindex := 0;
end;

procedure TfrmConsBoletos.btRefreshClick(Sender: TObject);
begin
  QBoletos.close;
  QBoletos.sql.clear;
  QBoletos.sql := Memo1.Lines;
  case cbStatus.ItemIndex of
   0 : LTotal.Caption := '  TOTAL RD : ';
   1 : LTotal.Caption := '  TOTAL PAGADO RD : ';
   2 : LTotal.Caption := '  BALANCE RD : ';
  end;

  case cbStatus.ItemIndex of
   1 : QBoletos.sql.add('and ficha_pagado is not null');
   2 : QBoletos.sql.add('and ficha_pagado is null');
  end;

  if Trim(edtFicha.Text) <> '' then
  QBoletos.SQL.Add('and ficha_pagado = '+QuotedStr(edtFicha.Text));

  if ckrango.Checked then
  begin
    QBoletos.SQL.Add('and fecha between :fecha1 and :fecha2');
    QBoletos.Parameters.ParamByName('fecha1').DataType := ftDateTime;
    QBoletos.Parameters.ParamByName('fecha2').DataType := ftDateTime;

    // Concatenar fecha y hora con formato de 12 horas y AM/PM
    QBoletos.Parameters.ParamByName('fecha1').Value := fecha1.Date + TimeOf(hora1.Time);
    QBoletos.Parameters.ParamByName('fecha2').Value := fecha2.Date + TimeOf(hora2.Time);
  end;


 { if ckrango.Checked then
  begin
  QBoletos.SQL.Add('and fecha between convert(datetime,:fecha1,105) and convert(datetime,:fecha2,105)');
    QBoletos.Parameters.parambyname('fecha1').DataType := ftDateTime;
    QBoletos.Parameters.parambyname('fecha2').DataType := ftDateTime;
    QBoletos.Parameters.parambyname('fecha1').Value := fecha1.DateTime;
    QBoletos.Parameters.parambyname('fecha2').Value := fecha2.DateTime+fecha2.Time;   
  end;  }

  case cbOrden.ItemIndex of
   0 : QBoletos.sql.add('order by boleto desc, fecha desc, ficha_pagado');
   1 : QBoletos.sql.add('order by fecha desc, boleto, ficha_pagado');
   2 : QBoletos.sql.add('order by suc_cod_origen, fecha desc, boleto, ficha_pagado');
   3 : QBoletos.sql.add('order by suc_cod_destino, fecha desc, boleto, ficha_pagado');
   4 : QBoletos.sql.add('order by ficha_pagado, fecha desc, boleto');
   end;
  QBoletos.Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;
  QBoletos.Parameters.parambyname('emp').Value := dm.vp_cia;
  IF Trim(edUsuario.Text)<> '' THEN BEGIN
  QBoletos.Filter := 'USU_CODIGO ='+Trim(edUsuario.Text);
  QBoletos.Filtered :=  True;
  END;
  IF Trim(edUsuario.Text)= '' THEN BEGIN
  QBoletos.Filter := '';
  QBoletos.Filtered :=  False;
  END;
  QBoletos.open;

  lbCantidad.caption := '  '+inttostr(QBoletos.recordcount)+'  '; //+' Boleto(s)';
  lbTotal.caption    := '  '+TotalBoletos(QBoletos)+'  '; //+' Vendido';
  DBGrid1.setfocus;    
end;

procedure TfrmConsBoletos.BitBtn2Click(Sender: TObject);
begin
  Application.CreateForm(TRListadoBoletos, RListadoBoletos);
  RListadoBoletos.lbSuc.Caption       := DBLookupComboBox2.Text;
  RListadoBoletos.lbEmp.Caption       := dm.NombreEmp;
  RListadoBoletos.lbLocalidad.Caption := QSucursalsuc_localidad.AsString;
  RListadoBoletos.lbTelefono.Caption  := QSucursalsuc_telefono.AsString;
  RListadoBoletos.lbRnc.Caption       := QSucursalsuc_rnc.AsString;
  RListadoBoletos.PrinterSetup;
  RListadoBoletos.Preview;
  RListadoBoletos.Destroy;
end;

procedure TfrmConsBoletos.BitBtn1Click(Sender: TObject);
begin
  frmBoletoPago := tfrmBoletoPago.create(self);
  frmBoletoPago.fechapago.Date := dm.getFechaBDA;
  frmBoletoPago.ShowModal;
end;

procedure TfrmConsBoletos.FormPaint(Sender: TObject);
begin
  with frmConsBoletos do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;//}
end;

procedure TfrmConsBoletos.btnImprimirClick(Sender: TObject);
begin
WITH qReporte DO BEGIN
Close;
Parameters.ParamByName('ficha').Value := Trim(edtFicha.Text);
Parameters.ParamByName('fecha').Value := Fecha1.Date;
Open;

if not IsEmpty then begin
Rpt_Reimp_Pag_Ticket.PrintOptions.Printer := DM.QParametrospar_impresora_boleto.Value;
Rpt_Reimp_Pag_Ticket.PrintOptions.Copies := 1;
Rpt_Reimp_Pag_Ticket.PrepareReport(True);
Rpt_Reimp_Pag_Ticket.Print;
end;
end;
end;

procedure TfrmConsBoletos.btnBalanceClick(Sender: TObject);
begin
WITH qBalance DO BEGIN
Close;
Parameters.ParamByName('emp').Value := dm.vp_cia;
Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;

Parameters.ParamByName('FECHA_INICIO').DataType := ftDateTime;
Parameters.ParamByName('FECHA_FIN').DataType := ftDateTime;

Parameters.ParamByName('FECHA_INICIO').Value := fecha1.Date + TimeOf(hora1.Time);
Parameters.ParamByName('FECHA_FIN').Value := fecha2.Date + TimeOf(hora2.Time);
{
Parameters.ParamByName('fechaInicio ').Value := Fecha1.Date;
Parameters.ParamByName('fechaFin').Value := Fecha1.Date;
}
IF Trim(edUsuario.Text)<> '' THEN BEGIN
Filter := 'USU_CODIGO ='+Trim(edUsuario.Text);
Filtered :=  True;
END;
IF Trim(edUsuario.Text)= '' THEN BEGIN
Filter := '';
Filtered :=  False;
END;
Open;
if not IsEmpty then begin
Rpt_Balance.PrintOptions.Printer := DM.QParametrospar_impresora_boleto.Value;
Rpt_Balance.PrintOptions.Copies := 1;
Rpt_Balance.PrepareReport(True);
Rpt_Balance.Print;
end;
end;
end;

procedure TfrmConsBoletos.SpeedButton3Click(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Query.clear;
  Search.Query.add('select usu_nombre, usu_codigo');
  Search.Query.add('from usuarios');
  Search.ResultField := 'usu_Codigo';
  Search.Title := 'Usuarios';
  if Search.execute then
  begin
    edUsuario.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select usu_nombre from usuarios');
    dm.Query1.sql.add('where usu_codigo = :cod');
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edUsuario.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('USUARIO NO EXISTE',mterror,[mbok],0)
    else
      tUsuario.text := dm.Query1.fieldbyname('usu_nombre').asstring;
    edUsuario.setfocus;
    btRefreshClick(self);
  end;
end;

procedure TfrmConsBoletos.edUsuarioChange(Sender: TObject);
begin
  if trim(edUsuario.text) = '' then tUsuario.text := '';
end;

procedure TfrmConsBoletos.edUsuarioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edUsuario.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select usu_nombre from usuarios');
      dm.Query1.sql.add('where usu_codigo = :cod');
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edUsuario.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('USUARIO NO EXISTE',mterror,[mbok],0);
        edUsuario.setFocus;
      end
      else
        tUsuario.text := dm.Query1.fieldbyname('usu_nombre').asstring;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsBoletos.btnReimpresionBoletoClick(Sender: TObject);
begin
  qry.close;
  qry.Parameters.ParamByName('boleto').Value := QBoletosboleto.Value;
  qry.Open;

if not qry.IsEmpty then begin
Rpt_Ticket.PrintOptions.Printer := DM.QParametrospar_impresora_boleto.Value;
Rpt_Ticket.PrintOptions.Copies := 1;
Rpt_Ticket.PrepareReport(True);
Rpt_Ticket.Print;
end;
end;

procedure TfrmConsBoletos.btnAnularClick(Sender: TObject);
begin
  Application.createform(TFormAnularBoleto, FormAnularBoleto);
  FormAnularBoleto.numboleto := QBoletosboleto.Value;
  FormAnularBoleto.motivo_anular :=QBoletoscomentario_anulado.Value;
  FormAnularBoleto.Show;
 
end;

procedure TfrmConsBoletos.DBGrid1Enter(Sender: TObject);
begin
btRefreshClick(self);
end;

end.

