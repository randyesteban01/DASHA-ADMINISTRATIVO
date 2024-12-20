unit PVENTAREPVENC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, DateUtils, Db, 
  QuerySearchDlgADO, DBCtrls, ADODB, frxClass, frxDBSet;

type
  TfrmRepVencimiento = class(TForm)
    btClose: TBitBtn;
    btPrint: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    fecha1: TDateTimePicker;
    fecha2: TDateTimePicker;
    RG_1: TRadioGroup;
    DB_REP: TfrxDBDataset;
    Rpt_Vencimiento: TfrxReport;
    QReportes: TADOQuery;
    QReportescli_nombre: TStringField;
    QReportesFECHA: TDateTimeField;
    QReportesTIPO: TStringField;
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btPrintClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Rpt_VencimientoBeforePrint(Sender: TfrxReportComponent);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRepVencimiento: TfrmRepVencimiento;

implementation

uses SIGMA00, SIGMA01;


{$R *.dfm}

procedure TfrmRepVencimiento.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepVencimiento.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmRepVencimiento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmRepVencimiento.btPrintClick(Sender: TObject);
begin
  with QReportes do begin
  Close;
  Parameters.ParamByName('Rango').Value  :=  RG_1.ItemIndex;
  Parameters.ParamByName('cia').Value    :=  dm.vp_cia;
  Parameters.ParamByName('Desde').Value  :=  fecha1.Date;
  Parameters.ParamByName('Hasta').Value  :=  fecha2.Date;
  Open;
  if IsEmpty then begin
    ShowMessage('No existen registro para el reporte.....');
    Abort;
  end;


  Rpt_Vencimiento.ShowReport(true);
end;
end;

procedure TfrmRepVencimiento.FormCreate(Sender: TObject);
begin
  fecha1.date := date;
  fecha2.date := date;
end;

procedure TfrmRepVencimiento.Rpt_VencimientoBeforePrint(
  Sender: TfrxReportComponent);
begin
case RG_1.ItemIndex of
  0:TfrxMemoView(Rpt_Vencimiento.FindObject('MTitulo')).Text:=
    'Reporte de Vencimiento de Seguros';
  1:TfrxMemoView(Rpt_Vencimiento.FindObject('MTitulo')).Text:=
    'Reporte de Vencimiento de Licencias';
  end;

TfrxMemoView(Rpt_Vencimiento.FindObject('MFecha')).text
                                   := 'Desde '+IntToStr(DayOf(fecha1.Date))+'/'+
                                   IntToStr(MonthOf(Fecha1.Date))+' al '+
                                   IntToStr(DayOf(fecha2.Date))+'/'+
                                   IntToStr(MonthOf(Fecha2.Date));


end;

end.
