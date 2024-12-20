unit CONT24;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils, StdCtrls, Spin, Buttons, ExtCtrls, Grids, DBGrids,
  DB, IBCustomDataSet, IBQuery, ADODB, IdMessageClient,
  IdSMTP, idMessage, QRPDFFilt, QuickRpt, QRCtrls, DBCtrls;

type
  TfrmRepAnexos = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    btClose: TBitBtn;
    BitBtn2: TBitBtn;
    spAno: TSpinEdit;
    cbMes: TComboBox;
    DBGrid1: TDBGrid;
    cbTipo: TRadioGroup;
    QAnexos: TADOQuery;
    QAnexosANE_CODIGO: TIntegerField;
    QAnexosANE_NOMBRE: TIBStringField;
    QAnexosCAT_CUENTA: TIBStringField;
    QAnexosEMP_CODIGO: TIntegerField;
    dsAnexos: TDataSource;
    QAnexosCAT_NOMBRE: TIBStringField;
    ckConsol: TCheckBox;
    ckmail: TCheckBox;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    Label15: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure EnvioMail (Rep : TQuickRep);
  end;

Const
  DMes : array[1..12] of String = ('Enero','Febrero','Marzo',
                                  'Abril','Mayo','Junio',
                                  'Julio','Agosto','Septiembre',
                                  'Octubre','Noviembre','Diciembre');

var
  frmRepAnexos: TfrmRepAnexos;

implementation

uses RCONT12, SIGMA01, SIGMA00;

{$R *.dfm}

procedure TfrmRepAnexos.FormCreate(Sender: TObject);
begin
  spAno.Value  := YearOf(Date);
  cbMes.ItemIndex := MonthOf(Date)-1;
end;

procedure TfrmRepAnexos.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepAnexos.BitBtn2Click(Sender: TObject);
var
  Mes : String;
begin
  Application.CreateForm(tRepAnexos, RepAnexos);
  Mes := UpperCase(DMes[cbMes.ItemIndex+1]);
  RepAnexos.lbFecha.Caption := 'Al '+IntToStr(DaysInAMonth(spAno.Value,
                                    cbMes.ItemIndex+1))+' De '+
                                    DMes[cbMes.ItemIndex+1]+' Del '+
                                    IntToStr(spAno.Value);

  if ckConsol.Checked then
  begin
    RepAnexos.QAnexos.SQL.Clear;
    RepAnexos.QAnexos.SQL.Add('SELECT');
    RepAnexos.QAnexos.SQL.Add('A.ANE_CODIGO, A.CAT_CUENTA, MAX(A.ANE_NOMBRE) AS ANE_NOMBRE');
    RepAnexos.QAnexos.SQL.Add('FROM');
    RepAnexos.QAnexos.SQL.Add('CONTANEXOS A, EMPRESAS E');
    RepAnexos.QAnexos.SQL.Add('WHERE');
    RepAnexos.QAnexos.SQL.Add('A.EMP_CODIGO = E.EMP_CODIGO');
    RepAnexos.QAnexos.SQL.Add('AND E.EMP_CONSOLIDAR = '+#39+'True'+#39);
    if cbTipo.ItemIndex = 1 then
      RepAnexos.QAnexos.SQL.Add('AND A.ANE_CODIGO = '+IntToStr(QAnexosANE_CODIGO.Value));
    RepAnexos.QAnexos.SQL.Add('GROUP BY A.ANE_CODIGO, A.CAT_CUENTA');
  end
  else
  begin
    RepAnexos.QAnexos.SQL.Clear;
    RepAnexos.QAnexos.SQL.Add('SELECT');
    RepAnexos.QAnexos.SQL.Add('A.ANE_CODIGO, A.ANE_NOMBRE, A.CAT_CUENTA');
    RepAnexos.QAnexos.SQL.Add('FROM');
    RepAnexos.QAnexos.SQL.Add('CONTANEXOS A');
    RepAnexos.QAnexos.SQL.Add('WHERE');
    RepAnexos.QAnexos.SQL.Add('A.EMP_CODIGO = :EMP_CODIGO');
    if cbTipo.ItemIndex = 1 then
      RepAnexos.QAnexos.SQL.Add('AND A.ANE_CODIGO = '+IntToStr(QAnexosANE_CODIGO.Value));
  end;
  RepAnexos.QAnexos.SQL.Add('ORDER BY A.ANE_CODIGO');

  RepAnexos.QCuentas.SQL.Clear;
  RepAnexos.QCuentas.SQL.Add('SELECT');
  RepAnexos.QCuentas.SQL.Add('C.CAT_CUENTA, c.CAT_NOMBRE,');
  RepAnexos.QCuentas.SQL.Add('SUM(B.BAL_'+Copy(Mes,1,3)+') AS CAT_BALACTUAL');
  RepAnexos.QCuentas.SQL.Add('FROM');
  RepAnexos.QCuentas.SQL.Add('CONTCATALOGO C, CONTBALANCES B, contanexos_detalle d');
  RepAnexos.QCuentas.SQL.Add('WHERE');
  RepAnexos.QCuentas.SQL.Add('C.EMP_CODIGO = B.EMP_CODIGO');
  RepAnexos.QCuentas.SQL.Add('AND C.CAT_CUENTA = B.CAT_CUENTA');
  RepAnexos.QCuentas.SQL.Add('and c.emp_codigo = d.emp_codigo');
  RepAnexos.QCuentas.SQL.Add('and c.cat_cuenta = d.cat_cuenta');
  if not ckConsol.Checked then
    RepAnexos.QCuentas.SQL.Add('AND d.EMP_CODIGO = :EMP_CODIGO');
  RepAnexos.QCuentas.SQL.Add('AND d.ane_codigo = :ane_codigo');
  RepAnexos.QCuentas.SQL.Add('AND B.BAL_ANO = :ANO');
  RepAnexos.QCuentas.SQL.Add('AND (B.BAL_'+Copy(Mes,1,3)+' IS NOT NULL OR');
  RepAnexos.QCuentas.SQL.Add('B.BAL_'+Copy(Mes,1,3)+' <> 0)');
  if not ckConsol.Checked then
  begin
    RepAnexos.QCuentas.SQL.Add('AND B.SUC_CODIGO = :SUC');
    RepAnexos.QCuentas.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
  end;
  RepAnexos.QCuentas.SQL.Add('GROUP BY C.CAT_CUENTA, C.CAT_NOMBRE');
  RepAnexos.QCuentas.SQL.Add('ORDER BY C.CAT_CUENTA');
  RepAnexos.QCuentas.Parameters.ParamByName('ano').Value := spAno.Value;
  if not ckConsol.Checked then
    RepAnexos.QCuentas.Parameters.ParamByName('emp_codigo').Value := dm.QEmpresasEMP_CODIGO.Value;

  RepAnexos.lbConsol.Enabled := ckConsol.Checked;
  RepAnexos.QAnexos.Open;
  RepAnexos.QCuentas.Open;
  if ckmail.Checked then
    try
      EnvioMail(RepAnexos);
    finally
      RepAnexos.destroy;
    end
  else
  begin
    RepAnexos.PrinterSetup;
    RepAnexos.Preview;
    RepAnexos.Destroy;
  end;
end;

procedure TfrmRepAnexos.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.PArameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
  if not QAnexos.Active then QAnexos.Open;
  ckConsol.Visible := dm.QEmpresasEMP_PUEDECONSOLIDAR.Value = 'True';
end;

procedure TfrmRepAnexos.EnvioMail(Rep: TQuickRep);
var
   MailMsg : TIdMessage;
 //  Archivo : TIdAttachment;
   nArchivo : string;
begin
   nArchivo := InputBox('Envio de Mail','Correo : ','');
   if trim(nArchivo) <> '' then
   begin
     frmMain.filtroreporte := TQRPDFDocumentFilter.Create('c:\Anexos.pdf');
     Rep.ExportToFilter(frmMain.filtroreporte);
     if frmMain.IdSMTP1.Connected then frmMain.IdSMTP1.Disconnect;
     MailMsg := TidMessage.Create(frmMain.IdSMTP1);
     MailMsg.Subject      := 'Anexos';
     MailMsg.From.Address := dm.QParametrospar_mailcorreo.Value;
     MailMsg.From.Name    := dm.QParametrospar_mailcorreo.Value;
     MailMsg.ReplyTo.EMailAddresses :=  dm.QParametrospar_mailcorreo.Value;
     MailMsg.Recipients.Add;
     MailMsg.Recipients.Items[0].Address := nArchivo;
    // TIdAttachmentFile.Create(MailMsg.MessageParts, 'c:\Anexos.pdf');
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

procedure TfrmRepAnexos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.
