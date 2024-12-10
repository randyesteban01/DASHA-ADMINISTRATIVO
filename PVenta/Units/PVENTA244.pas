unit PVENTA244;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, DB, ADODB, DIMime,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTP, ShellAPI;

type
  TFrmConfCorreo = class(TForm)
    pnmail: TPanel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    DBEdit66: TDBEdit;
    DBEdit67: TDBEdit;
    DBEdit68: TDBEdit;
    DBEdit70: TDBEdit;
    btnPruebaEmail: TBitBtn;
    EdtPassMail: TEdit;
    btnGrabar: TBitBtn;
    dsUsuario: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnPruebaEmailClick(Sender: TObject);
    procedure btnGrabarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConfCorreo: TFrmConfCorreo;

implementation

uses SIGMA01, DateUtils, SIGMA00;

{$R *.dfm}

procedure TFrmConfCorreo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmConfCorreo.FormShow(Sender: TObject);
begin
EdtPassMail.Text := MimeDecodeString(DM.QUsuariospar_mailclave.Text);

end;

procedure TFrmConfCorreo.btnPruebaEmailClick(Sender: TObject);
 var
 Server, Email, Port, User, Password, EmpresaCodigo, SucursalCodigo, Params, ExePath, AppPath: string;

begin
//if DM.QUsuarios.State in [dsedit] then
btnGrabarClick(Sender);
frmMain.EnviarCorreo(dm.QUsuariospar_mailusuario.Text,'Prueba del Correo','','Prueba del Sistema!');

 { Server := trim(DM.QParametrospar_mailservidor.Text);
  Email := DM.QParametrospar_mailcorreo.Text;
  Port := dm.QParametrospar_mailpuerto.Text;
  User :=trim(dm.QParametrospar_mailusuario.Text);
  Password := MimeDecodeString(dm.QParametrospar_mailclave.Text);
  EmpresaCodigo := '1' ;
  SucursalCodigo := '1';

  Params := Format('%s %s %s %s %s %s %s', [Server, Email, Port, User, Password, EmpresaCodigo, SucursalCodigo]);
  
  // Obtener la ruta del ejecutable actual y combinarla con el nombre del ejecutable de C#
  AppPath := ExtractFilePath(ParamStr(0));
  ExePath := AppPath + 'CorreoDasha.exe';  // Aseg�rate de que el nombre del ejecutable de C# sea 'correo.exe'

  ShellExecute(0, 'open', PChar(ExePath), PChar(Params), nil, SW_SHOWNORMAL);}
end;

procedure TFrmConfCorreo.btnGrabarClick(Sender: TObject);
begin
//if dm.QUsuarios.State in [dsedit] then begin ;

DM.QUsuarios.Edit;
DM.QUsuariospar_mailclave.Value := MimeEncodeString(EdtPassMail.Text);
DM.QUsuariospar_mailOK.Value    := dm.vp_usermailok;
DM.QUsuarios.Post;
  {
if dm.QParametros.State in [dsedit] then begin ;
 Dm.QParametrospar_mailservidor.Value := DM.QUsuariospar_mailservidor.Value;
 DM.QParametrospar_mailcorreo.Value := DM.QUsuariospar_mailcorreo.Value;
 DM.QParametrospar_mailpuerto.Value := DM.QUsuariospar_mailpuerto.Value;



 Dm.QParametrospar_mailservidor.Value := DM.QUsuariospar_mailservidor.Value;

     }
//end;
end;
end.
