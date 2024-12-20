unit CONT18;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, DateUtils, IdMessageClient,
  IdSMTP, idMessage, QRPDFFilt, QuickRpt, QRCtrls, DB, ADODB, DBCtrls,
  QuerySearchDlgADO;

type
  TfrmRepEntrada = class(TForm)
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    Label1: TLabel;
    Label3: TLabel;
    edNumero: TEdit;
    btClose: TBitBtn;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    ckmail: TCheckBox;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    dsSuc: TDataSource;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    btTipo: TSpeedButton;
    Search: TQrySearchDlgADO;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btTipoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure EnvioMail (Rep : TQuickRep);
  end;

var
  frmRepEntrada: TfrmRepEntrada;

implementation

uses RCONT07, SIGMA00, SIGMA01;

{$R *.dfm}

procedure TfrmRepEntrada.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmRepEntrada.FormCreate(Sender: TObject);
begin
  Fecha1.Date := StartOfTheMonth(Date);
  Fecha2.Date := EndOfTheMonth(Date);
end;

procedure TfrmRepEntrada.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepEntrada.BitBtn2Click(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  Application.CreateForm(tRepEntradaDiario, RepEntradaDiario);
  RepEntradaDiario.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+
                                      DateToStr(Fecha2.Date);
  RepEntradaDiario.lbTitulo.Caption := 'Entrada de Diario #'+edNumero.Text;
  RepEntradaDiario.lbConc1.Caption  := Edit1.Text;
  RepEntradaDiario.lbConc2.Caption  := Edit2.Text;
  RepEntradaDiario.lbConc3.Caption  := Edit3.Text;
  RepEntradaDiario.QTrans.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  RepEntradaDiario.QTrans.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
  RepEntradaDiario.QTrans.Parameters.ParamByName('ent').Value := StrToInt(Trim(edNumero.Text));
  RepEntradaDiario.QTrans.Parameters.ParamByName('fec1').Value   := Fecha1.Date;
  RepEntradaDiario.QTrans.Parameters.ParamByName('fec2').Value   := Fecha2.Date;
  RepEntradaDiario.QTrans.Open;
  Screen.Cursor := crDefault;
  if ckmail.Checked then
    try
      EnvioMail(RepEntradaDiario);
    finally
      RepEntradaDiario.destroy;
    end
  else
  begin
    RepEntradaDiario.PrinterSetup;
    RepEntradaDiario.Preview;
    RepEntradaDiario.Destroy;
  end;
end;

procedure TfrmRepEntrada.EnvioMail(Rep: TQuickRep);
var
   MailMsg : TIdMessage;
  // Archivo : TIdAttachment;
   nArchivo : string;
begin
   nArchivo := InputBox('Envio de Mail','Correo : ','');
   if trim(nArchivo) <> '' then
   begin
     frmMain.filtroreporte := TQRPDFDocumentFilter.Create('c:\EntradaDiario.pdf');
     Rep.ExportToFilter(frmMain.filtroreporte);
     if frmMain.IdSMTP1.Connected then frmMain.IdSMTP1.Disconnect;
     MailMsg := TidMessage.Create(frmMain.IdSMTP1);
     MailMsg.Subject      := 'Entrada de Diario';
     MailMsg.From.Address := dm.QParametrospar_mailcorreo.Value;
     MailMsg.From.Name    := dm.QParametrospar_mailcorreo.Value;
     MailMsg.ReplyTo.EMailAddresses :=  dm.QParametrospar_mailcorreo.Value;
     MailMsg.Recipients.Add;
     MailMsg.Recipients.Items[0].Address := nArchivo;

     //TIdAttachmentFile.Create(MailMsg.MessageParts, 'c:\EntradaDiario.pdf');

     //TIdAttachment.Create(MailMsg.MessageParts, 'c:\EntradaDiario.pdf');
     frmMain.IdSMTP1.Host := dm.QParametrospar_mailservidor.Value;
     frmMain.IdSMTP1.Port := dm.QParametrospar_mailpuerto.AsInteger;
     frmMain.IdSMTP1.Username := dm.QParametrospar_mailusuario.Value;
     frmMain.IdSMTP1.Password := dm.QParametrospar_mailclave.Value;
     frmMain.IdSMTP1.Connect();
     frmMain.IdSMTP1.Send(MailMsg);
     frmMain.IdSMTP1.Disconnect;
     MailMsg.Free;
     frmMain.filtroreporte.Free;
   end;
end;

procedure TfrmRepEntrada.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
end;

procedure TfrmRepEntrada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmRepEntrada.btTipoClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select tdo_nombre, ent_numero');
  Search.Query.Add('from tiposdoc');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.Query.Add('and isnull(ent_numero,0) > 0');
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('ED#');
  Search.Title := 'Tipos de Documentos';
  Search.ResultField := 'ent_numero';
  if Search.execute then
  begin
    edNumero.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tdo_nombre from tiposdoc');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ent_numero = :cod');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cod').Value  := edNumero.Text;
    dm.Query1.Open;
  end;
end;

end.
