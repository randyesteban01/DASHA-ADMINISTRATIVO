unit PVENTA135;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, Grids, DBGrids, DB,
  IBCustomDataSet, IBQuery, DateUtils, IBUpdateSQL, ADODB,
  QuerySearchDlgADO, frxClass, frxDBSet, frxExportXLS, frxExportPDF,
  dxmdaset, frxExportRTF;

type
  TfrmConsCentroCosto = class(TForm)
    Panel1: TPanel;
    btClose: TBitBtn;
    BitBtn2: TBitBtn;
    btRefresh: TBitBtn;
    Panel2: TPanel;
    Label6: TLabel;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    lbCantidad: TLabel;
    DBGrid1: TDBGrid;
    QCentro: TADOQuery;
    dsCentro: TDataSource;
    Label3: TLabel;
    btCentro: TSpeedButton;
    edCEntro: TEdit;
    tcentro: TEdit;
    Label1: TLabel;
    edSubCEntro: TEdit;
    btSubCentro: TSpeedButton;
    tSubcentro: TEdit;
    frxDBDataset1: TfrxDBDataset;
    Rpt_MovCentroCosto: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    MD_DATOS: TdxMemData;
    MD_DATOSID: TIntegerField;
    MD_DATOSTIPO: TStringField;
    MD_DATOSFECHA: TDateField;
    MD_DATOSNUMERO: TStringField;
    MD_DATOSCONCEPTO: TStringField;
    MD_DATOSMONTO: TFloatField;
    MD_DATOSBALANCE: TFloatField;
    MD_DATOSBENEFICIARIO: TStringField;
    MD_DATOSNOMBRE: TStringField;
    MD_DATOSNOMBRE2: TStringField;
    MD_DATOSCODIGO: TIntegerField;
    MD_DATOSSUBCENTRO_NOMBRE: TStringField;
    frxRTFExport1: TfrxRTFExport;
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btCentroClick(Sender: TObject);
    procedure edCEntroChange(Sender: TObject);
    procedure edCEntroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btSubCentroClick(Sender: TObject);
    procedure edSubCEntroChange(Sender: TObject);
    procedure edSubCEntroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Rpt_MovCentroCostoBeforePrint(Sender: TfrxReportComponent);
  private
    { Private declarations }
  public
    { Public declarations }
    Cliente, Prov : Integer;
    Debitos, Creditos : Double;
    procedure ExtraerCentroCostos;
    procedure ExtraerSubCentroCostos;
  end;

var
  frmConsCentroCosto: TfrmConsCentroCosto;

implementation

uses RCONT16, CONT36, SIGMA00, SIGMA01, RVENTA15, UFrm_Consulta;

{$R *.dfm}

procedure TfrmConsCentroCosto.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsCentroCosto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConsCentroCosto.FormPaint(Sender: TObject);
begin
  with frmConsCentroCosto do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmConsCentroCosto.FormCreate(Sender: TObject);
begin
//CAMBIO JHONATTAN GOMEZ 14/02/2018
//  Memo1.Lines := QCentro.SQL;
//CAMBIO JHONATTAN GOMEZ 14/02/2018
  Fecha1.Date := StartOfTheMonth(Date);
  Fecha2.Date := EndOfTheMonth(Date);
end;

procedure TfrmConsCentroCosto.btRefreshClick(Sender: TObject);
var
  vl_balance:Double;
begin                {
  Screen.Cursor := crHourGlass;
  QCentro.Close;
  QCentro.SQL.Clear;
  QCentro.SQL := Memo1.Lines;     DD
  QCentro.SQL.Add('where 1 = 1');
  QCentro.SQL.Add('ORDER BY FECHA, TIPO');      

  if Trim(edCEntro.Text) <> '' then
    QCentro.Parameters.ParamByName('cen').Value  := StrToInt(Trim(edCEntro.text))
  else
    QCentro.Parameters.ParamByName('cen').Value  := 0;

  QCentro.Parameters.ParamByName('emp').Value  := dm.vp_cia;
  if trim(edSubCEntro.Text) <> '' then
  QCentro.Parameters.ParamByName('SUBCEN').Value  := strtoint(edSubCEntro.text);
  QCentro.Parameters.ParamByName('fec1').DataType := ftDate;
  QCentro.Parameters.ParamByName('fec2').DataType := ftDate;
  QCentro.Parameters.ParamByName('fec1').Value := Fecha1.Date;
  QCentro.Parameters.ParamByName('fec2').Value := Fecha2.Date;
  QCentro.Open;
  lbCantidad.Caption := IntToStr(QCentro.REcordCount)+' Movimientos';
  Screen.Cursor := crDefault;   }

//CAMBIO REALIZADO POR JHONATTAN GOMEZ 15/02/2018
with QCentro do begin
   Close;
   Parameters[0].Value := dm.vp_cia;
   IF Trim(edCEntro.Text) = '' THEN
   Parameters[1].Value := 0 ELSE
   Parameters[1].Value := Trim(edCEntro.Text);
   IF Trim(edSubCEntro.Text) = '' THEN
   Parameters[2].Value := 0 ELSE
   Parameters[2].Value := Trim(edSubCEntro.Text);
   Parameters[3].Value := Fecha1.Date;
   Parameters[4].Value := Fecha2.Date;
   Open;
   First;
   DisableControls;
   IF NOT IsEmpty THEN BEGIN
     vl_balance := 0;
     MD_DATOS.Close;
     MD_DATOS.Open;
     WHILE NOT Eof DO BEGIN
     vl_balance := vl_balance + FIELDBYNAME('MONTO').Value;
     MD_DATOS.Append;
     MD_DATOSID.Value               := FIELDBYNAME('ID').Value;
     MD_DATOSTIPO.Value             := FIELDBYNAME('TIPO').Value;
     MD_DATOSFECHA.Value            := FIELDBYNAME('FECHA').Value;
     MD_DATOSNUMERO.Value           := FIELDBYNAME('NUMERO').Value;
     MD_DATOSCONCEPTO.Value         := FIELDBYNAME('CONCEPTO').Value;
     MD_DATOSBALANCE.Value          := vl_balance;
     MD_DATOSMONTO.Value            := FIELDBYNAME('MONTO').Value;
     MD_DATOSBENEFICIARIO.Value     := FIELDBYNAME('BENEFICIARIO').Value;
     MD_DATOSNOMBRE.Value           := FIELDBYNAME('NOMBRE').Value;
     MD_DATOSNOMBRE2.Text           := FIELDBYNAME('NOMBRE2').Text;
     MD_DATOSCODIGO.Value           := FIELDBYNAME('CODIGO').Value;
     MD_DATOSSUBCENTRO_NOMBRE.Text  := FIELDBYNAME('SUBCENTRO_NOMBRE').Text;
     MD_DATOS.Post;
     Next;
     end;
     EnableControls;
   end;

end;
//FIN CAMBIO REALIZADO POR JHONATTAN GOMEZ 15/02/2018

end;

procedure TfrmConsCentroCosto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    if activecontrol.ClassType <> tdbGrid then
    begin
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    end;
  end;
end;

procedure TfrmConsCentroCosto.btCentroClick(Sender: TObject);
begin
//CAMBIO REALIZADO POR JHONATTAN GOMEZ 14/02/2018
DM.vl_tipocons := 1;
DM.vp_formactivo := 'frmConsCentroCosto';
if not DM.FormActivo('Frm_Consulta') then
Frm_Consulta:=TFrm_Consulta.Create(Self) else
Frm_Consulta.Show;
Frm_Consulta.Show;
IF TRIM(edSubCEntro.Text)<> '' THEN edSubCEntro.Clear;

//FIN CAMBIO REALIZADO POR JHONATTAN GOMEZ 14/02/2018
end;


procedure TfrmConsCentroCosto.edCEntroChange(Sender: TObject);
begin
  if Trim(edCEntro.Text) = '' then tcentro.Text := '';
end;

procedure TfrmConsCentroCosto.edCEntroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edCEntro.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select cen_nombre, cen_codigo from centrocostos');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and cen_codigo = :cod');
      dm.Query1.Parameters.ParamByName('cod').Value := StrToInt(edCEntro.Text);
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Open;
      tcentro.Text := dm.Query1.FieldByName('cen_nombre').AsString;
     btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsCentroCosto.BitBtn2Click(Sender: TObject);
begin
if not DM.FormActivo('RMovCentroCostos') then
RMovCentroCostos:=TRMovCentroCostos.Create(Self) else
RMovCentroCostos.Show;

{
  RMovCentroCostos.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+
                                     DateToStr(Fecha2.Date);
   }
   WITH RMovCentroCostos DO BEGIN
  QCentro.SQL.Add('where 1 = 1');
  QCentro.SQL.Add('ORDER BY CODIGO');

  QMov.SQL.Add('where 1 = 1');
  QMov.SQL.Add('ORDER BY NOMBRE, NOMBRE2, TIPO, FECHA');

  if Trim(edCEntro.Text) <> '' then
    QCentro.Parameters.ParamByName('cen').Value  := StrToInt(Trim(edCEntro.text))
  else
    QCentro.Parameters.ParamByName('cen').Value  := 0;

  if Trim(edSubCEntro.Text) <> '' then
    QCentro.Parameters.ParamByName('SUBcen').Value  := StrToInt(Trim(edSubCEntro.text))
  else
    QCentro.Parameters.ParamByName('SUBcen').Value  := 0;

  if Trim(edCEntro.Text) <> '' then
    QMov.Parameters.ParamByName('CODIGO').Value  := StrToInt(Trim(edCEntro.text))
  else
    QMov.Parameters.ParamByName('CODIGO').Value  := 0;


  if Trim(edSubCEntro.Text) <> '' then
    QMov.Parameters.ParamByName('CODIGO2').Value  := StrToInt(Trim(edSubCEntro.text))
  else
    QMov.Parameters.ParamByName('CODIGO2').Value  := 0;


  QCentro.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QCentro.Parameters.ParamByName('fec1').DataType := ftDate;
  QCentro.Parameters.ParamByName('fec2').DataType := ftDate;
  QCentro.Parameters.ParamByName('fec1').Value := Fecha1.Date;
  QCentro.Parameters.ParamByName('fec2').Value := Fecha2.Date;

  QMov.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QMov.Parameters.ParamByName('fec1').DataType := ftDate;
  QMov.Parameters.ParamByName('fec2').DataType := ftDate;
  QMov.Parameters.ParamByName('fec1').Value := Fecha1.Date;
  QMov.Parameters.ParamByName('fec2').Value := Fecha2.Date;

  QCentro.Open;
  QMov.Open;
  {
  RMovCentroCostos.PrinterSetup;
  RMovCentroCostos.Preview; }
  RMovCentroCostos.Destroy;

  Rpt_MovCentroCosto.ShowReport();
  END;
end;

procedure TfrmConsCentroCosto.FormActivate(Sender: TObject);
begin
  frmMain.ExportXLS.Sheets[0].DBGrid := DBGrid1;
  frmMain.ExportXLS.Sheets[1].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[0].Exported := True;
end;

procedure TfrmConsCentroCosto.btSubCentroClick(Sender: TObject);
begin
//CAMBIO REALIZADO POR JHONATTAN GOMEZ 14/02/2018
if trim(edCEntro.Text) = '' then begin
ShowMessage('Debes indicar el Centro de costos para realizar esta busqueda');
btCentroClick(Sender);
Abort;
end;

DM.vl_tipocons := 2;
DM.vp_formactivo := 'frmConsCentroCosto';
if not DM.FormActivo('Frm_Consulta') then
Frm_Consulta:=TFrm_Consulta.Create(Self) else
Frm_Consulta.Show;
Frm_Consulta.Show;
//FIN CAMBIO REALIZADO POR JHONATTAN GOMEZ 14/02/2018

{
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select sub_nombre, sub_secuencia');
  Search.Query.Add('from CentroCostos_Hijos');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and cen_codigo = '+Trim(edCEntro.Text));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Title := 'Sub-Centro de Costos';
  Search.ResultField := 'sub_secuencia';
  if Search.execute then
  begin
    edCEntro.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;                                           
    dm.Query1.SQL.Add('select sub_nombre, sub_secuencia from CentroCostos_Hijos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cen_codigo = :cod and sub_secuencia = :sub_secuencia');
    dm.Query1.Parameters.ParamByName('cod').Value := StrToInt(edCEntro.Text);
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('sub_secuencia').Value := strtoint(edSubCEntro.text);
    dm.Query1.Open;
    tSubcentro.Text := dm.Query1.FieldByName('sub_nombre').AsString;
 //   btRefreshClick(Self);
  end;    }
end;

procedure TfrmConsCentroCosto.edSubCEntroChange(Sender: TObject);
begin
  if Trim(edSubCEntro.Text) = '' then tSubcentro.Text := '';
end;

procedure TfrmConsCentroCosto.edSubCEntroKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edSubCEntro.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select sub_nombre, sub_secuencia from CentroCostos_Hijos');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and cen_codigo = :cod and cen_codigo = :cod and sub_secuencia = :cod2');
      dm.Query1.Parameters.ParamByName('cod').Value := StrToInt(edCEntro.Text);
      dm.Query1.Parameters.ParamByName('cod2').Value := StrToInt(edSubCEntro.Text);
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Open;
      tSubcentro.Text := dm.Query1.FieldByName('sub_nombre').AsString;
      btRefreshClick(Self);
    end;
  end;
end;                                 

procedure TfrmConsCentroCosto.ExtraerCentroCostos;
begin
with DM.qBuscar do begin
  edCEntro.Text := FieldByName('CODIGO').AsString;
  tcentro.Text  := FieldByName('NOMBRE').AsString;
end;

end;

procedure TfrmConsCentroCosto.ExtraerSubCentroCostos;
begin
with DM.qBuscar do begin
  edSubCEntro.Text := FieldByName('CODIGO').AsString;
  tSubcentro.Text  := FieldByName('NOMBRE').AsString;
end;

end;

procedure TfrmConsCentroCosto.Rpt_MovCentroCostoBeforePrint(
  Sender: TfrxReportComponent);
begin
TfrxMemoView(Rpt_MovCentroCosto.FindObject('MFechaReporte')).Text :=
'Movimientos desde '+FormatDateTime('dd/mm/yyyy',Fecha1.Date) +
' Hasta '+FormatDateTime('dd/mm/yyyy',Fecha2.Date);
end;

end.
