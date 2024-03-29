unit SERV06;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ComCtrls, Buttons, ExtCtrls,
  QuerySearchDlgADO, DB, ADODB;

type
  TfrmDetalleTecnico = class(TForm)
    Panel1: TPanel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBRichEdit2: TDBRichEdit;
    tTecnico: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Search: TQrySearchDlgADO;
    TarStatus: TDBRadioGroup;
    QCrioTaller: TADOQuery;
    dsCrioTalle: TDataSource;
    Query1: TADOQuery;
    DBRichEdit1: TDBRichEdit;
    Panel2: TPanel;
    Label1: TLabel;
    QCrioTallersuc_codigo: TIntegerField;
    QCrioTallerord_numero: TIntegerField;
    QCrioTallerdet_secuencia: TIntegerField;
    QCrioTallertec_codigo: TIntegerField;
    QCrioTallerta_monto: TCurrencyField;
    QCrioTallerta_comentario: TMemoField;
    QCrioTallerta_status: TStringField;
    QCrioTallerta_fecha: TDateTimeField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure QCrioTallerNewRecord(DataSet: TDataSet);
    procedure QCrioTallerAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QCrioTallertec_codigoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    vQry : tadoQuery;

  public
    { Public declarations }
  end;

var
  frmDetalleTecnico: TfrmDetalleTecnico;

implementation

uses SERV02, SIGMA01;

{$R *.dfm}

procedure TfrmDetalleTecnico.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    if ActiveControl.classtype <> TDBRichEdit then
    begin
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    end;
  end;
end;

procedure TfrmDetalleTecnico.BitBtn1Click(Sender: TObject);
begin
  if QCrioTaller.State in [dsinsert,dsedit] then begin
     QCrioTaller.Post;
     QCrioTaller.UpdateBatch;
  end;
  Close;
end;

procedure TfrmDetalleTecnico.BitBtn2Click(Sender: TObject);
begin
  if QCrioTaller.State in [dsinsert,dsedit] then
     QCrioTaller.Cancel;
  Close;
end;

procedure TfrmDetalleTecnico.QCrioTallerNewRecord(DataSet: TDataSet);
begin
  QCrioTaller.FieldByName('ta_fecha').AsDateTime := date;
end;

procedure TfrmDetalleTecnico.QCrioTallerAfterPost(DataSet: TDataSet);
begin
  with vQry,SQL do begin
    Close;
    Clear;
    add('update Det_Orden_Servicio set det_status='+QuotedStr(TarStatus.Values[TarStatus.ItemIndex]));
    add(' where suc_codigo = :suc and ord_numero = :ord and det_secuencia = :sec');
    Parameters.ParamByName('suc').Value :=QCrioTaller.fieldbyname('suc_codigo').Value;
    Parameters.ParamByName('ord').Value :=QCrioTaller.fieldbyname('ord_numero').Value;
    Parameters.ParamByName('sec').Value :=QCrioTaller.fieldbyname('det_secuencia').Value;
    ExecSQL;
  end;
  case TarStatus.ItemIndex of
    0  : with vQry,SQL do begin
           Close;
           Clear;
           add('update orden_servicio set ord_status='+QuotedStr('TAL'));
           add(' where suc_codigo = :suc and ord_numero = :ord');
           Parameters.ParamByName('suc').Value :=QCrioTaller.fieldbyname('suc_codigo').Value;
           Parameters.ParamByName('ord').Value :=QCrioTaller.fieldbyname('ord_numero').Value;
           ExecSQL;
         end; {0}
    5  : if Query1.IsEmpty then
         with vQry,SQL do begin
           Close;
           Clear;
           add('update orden_servicio set ord_status='+QuotedStr('ETT'));
           add(' where suc_codigo = :suc and ord_numero = :ord');
           Parameters.ParamByName('suc').Value :=QCrioTaller.fieldbyname('suc_codigo').Value;
           Parameters.ParamByName('ord').Value :=QCrioTaller.fieldbyname('ord_numero').Value;
           ExecSQL;
         end; {5}
  end;
end;

procedure TfrmDetalleTecnico.FormCreate(Sender: TObject);
begin
  vQry := TADOQuery.Create(self);
  vQry.Connection := frmOrdenServicio.QOrden.Connection;
end;

procedure TfrmDetalleTecnico.FormActivate(Sender: TObject);
begin
  TarStatus.Enabled := frmOrdenServicio.cbStatus.ItemIndex in [0,1,2];
end;

procedure TfrmDetalleTecnico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
vQry.Close;
vQry.Free;
end;

procedure TfrmDetalleTecnico.QCrioTallertec_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QCrioTallertec_codigo.isnull then
  begin
    Text := QCrioTallertec_codigo.AsString;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select tec_nombre from tecnicos');
    dm.Query1.sql.add('where emp_Codigo = :emp');
    dm.Query1.sql.add('and tec_Codigo = :tec');
    dm.Query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.Query1.Parameters.parambyname('tec').Value := QCrioTallertec_codigo.value;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
       tTecnico.text := ''
    else
      tTecnico.text := dm.Query1.fieldbyname('tec_nombre').asstring;
  end
  else
  tTecnico.text := '';
end;

end.
