unit PVENTA02;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB, IBCustomDataSet, IBQuery,
  DBCtrls, ADODB, ComCtrls, DIMime, IdMessage, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP,
  IdIOHandler, IdIOHandlerSocket, IdSSLOpenSSL, ScktComp,ComObj, IniFiles;

type
  TfrmAcceso = class(TForm)
    dsEmp: TDataSource;
    QEmpresas: TADOQuery;
    QEmpresasEMP_CODIGO: TIntegerField;
    QEmpresasEMP_NOMBRE: TStringField;
    StaticText1: TStaticText;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edUsr: TEdit;
    edPswd: TEdit;
    btexit: TBitBtn;
    btlogin: TBitBtn;
    StaticText2: TStaticText;
    Panel2: TPanel;
    Panel3: TPanel;
    StaticText3: TStaticText;
    Query1: TADOQuery;
    cbConexion: TComboBox;
    memolic: TMemo;
    dlgOpen1: TOpenDialog;
    QLICENCIA: TADOQuery;
    QLICVER: TADOQuery;
    IdSMTP1: TIdSMTP;
    IdMessage1: TIdMessage;
    cbemp: TDBLookupListBox;
    QVerLic: TADOQuery;
    MSep2020: TMemo;
    Memo1: TMemo;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure dsEmpDataChange(Sender: TObject; Field: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btexitClick(Sender: TObject);
    procedure btloginClick(Sender: TObject);
    procedure edUsrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cbConexionChange(Sender: TObject);
    procedure ClientSocketRead(Sender: TObject; Socket: TCustomWinSocket);
    procedure FormShow(Sender: TObject);
    procedure edPswdKeyPress(Sender: TObject; var Key: Char);
  private
    function ExisteLicencia:Boolean;
    function DiasLicencia:Integer;
    PROCEDURE CargarLicencia;
    PROCEDURE ActualizarLicencia;
    function VerLicCargadaCorrecta:Boolean;
    function ValidarEjecutable:String;

    { Private declarations }

  public
    { Public declarations }
    Usu : Integer;
    ServidorLic : string;
  end;

var
    VL_1, VL_2, VL_3, VL_4, VL_5, VL_6, VL_7, VL_8, VL_9, VL_10, VL_11, VL_12,
    VL_13, VL_14, VL_15 : string;
  frmAcceso: TfrmAcceso;
const ConnectionStringPlus =  ';User ID=randy;password=dayelcris';
implementation

uses SIGMA01, SIGMA00, Menus, PVENTA83, SIGMA04, SIGMA10;

{$R *.DFM}

procedure TfrmAcceso.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmAcceso.FormActivate(Sender: TObject);
begin
  {if not dm.QEmpresas.Active then dm.QEmpresas.Open;
  if not QEmpresas.Active then
  begin
    QEmpresas.Close;
    QEmpresas.Parameters.ParamByName('usu').Value := Usu;
    QEmpresas.Open;
    //listaemp;
  end;
  cbemp.Enabled := frmMain.MDIChildCount < 1;}
end;

procedure TfrmAcceso.dsEmpDataChange(Sender: TObject; Field: TField);
begin
  btlogin.Enabled := QEmpresas.RecordCount > 0;
end;

procedure TfrmAcceso.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssAlt in Shift) and (key = vk_f4) then abort;
  if key = vk_f2 then
  begin
    Application.CreateForm(tfrmSeleccionConexion, frmSeleccionConexion);
    frmSeleccionConexion.ShowModal;
    if frmSeleccionConexion.acepto = 1 then
    begin
      cbConexion.ItemIndex := frmSeleccionConexion.cbConexion.ItemIndex;
      cbConexionChange(Self);
    end;
    frmSeleccionConexion.Release;
  end;
end;

procedure TfrmAcceso.btexitClick(Sender: TObject);
begin
  application.terminate;
end;

procedure TfrmAcceso.btloginClick(Sender: TObject);
var
  a, b, c, d, e : integer;
  s, LICENCIA : string;
  vNode : TTreeNode;
  rows, instances, i, j, k: integer;
  OldCursor: TCursor ;
  errstr, query, sn, basura: string;
  LicServidor, LicUsuario, LicClave : string;
  memo3 : TStringList;
  IniFile : TIniFile;

begin

  if ExisteLicencia = false then
  begin
  if MessageDlg('Este computador no posee una Licencia Válida'+#13+'del Sistema DASHA®. Favor contactar al Lic. Víctor Esteban'+#13+
      'Tel.:809-240-5197 Cel.:809-869-2161 E.:randyesteban01@hotmail.com '+ Char(13)+
      'Desea general el serial para la licencia?',mtConfirmation,[mbYes,mbNo],0)=mrYes then begin
      memolic.Visible := True;
      memolic.Text := DM.GeneraLicencia;
      Abort;
      end
      else
 IF MessageDlg('Este computador no posee una Licencia Válida'+#13+'del Sistema DASHA®. Favor contactar al Lic. Víctor Esteban'+#13+
      'Tel.:809-240-5197 Cel.:809-869-2161 E.:randyesteban01@hotmail.com '+ Char(13)+
      'En caso de poseer archivo de licencia, desear cargarlo?',mtConfirmation,[mbYes,mbNo],0)=mrYes then begin
     CargarLicencia;
   end
   else
   begin
   abort;
   Application.Terminate;
   end;
   end;


  if DiasLicencia = 0 then begin
  if MessageDlg('Este computador no posee una Licencia Válida'+#13+'del Sistema DASHA®. Favor contactar al Lic. Víctor Esteban'+#13+
  'Tel.:809-240-5197 Cel.:809-869-2161 E.:randyesteban01@hotmail.com '+Char(13)+
  'En caso de poseer archivo de licencia, desear cargarlo?',mtConfirmation,[mbYes,mbNo],0)=mrNo then begin
  Application.Terminate;
  end else
  ActualizarLicencia;
  end;

  //
  if ((ExisteLicencia = True) and (DiasLicencia>=1) and (DiasLicencia <= 5)) then
  IF MessageDlg('LA FECHA DE EXPIRACION DE LA LICENCIA ES DE'+IntToStr(DiasLicencia)+ ' DIAS '+Char(13)+
  'En caso de poseer archivo de licencia, desear cargarlo?',mtConfirmation,[mbYes,mbNo],0)=mrYes then begin
   ActualizarLicencia;
  end;


  dm.qUptimeDB.Close;
  dm.qUptimeDB.ExecSQL;

  //Verificar Fecha para Script
  DM_Update.qVerScript.Close;
  DM_Update.qVerScript.Open;

  
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select usu_codigo, usu_clave from usuarios');
    dm.Query1.sql.add('where usu_nombre = :usu');
    dm.Query1.sql.add('and usu_status = '+QuotedStr('ACT'));
    dm.Query1.Parameters.parambyname('usu').Value := trim(edUsr.text);
    dm.Query1.open;
    dm.vp_usuario := trim(edUsr.text);
    if dm.Query1.recordcount = 0 then
    begin
      showmessage('ESTE USUARIO NO EXISTE');
      edUsr.setfocus;
    end
   else if dm.Query1.FieldByName('usu_clave').asstring <> MimeEncodeString(trim(edPswd.text)) then
    begin
      showmessage('ESTA CLAVE NO PERTENECE A ESTE USUARIO');
      edUsr.setfocus;
      Exit;
    end
    else
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('update usuarios set usu_empdefault = :emp where usu_codigo = :usu');
      Query1.Parameters.ParamByName('emp').Value := QEmpresasEMP_CODIGO.Value;
      Query1.Parameters.ParamByName('usu').Value := dm.Query1.FieldByName('usu_codigo').AsInteger;
      Query1.ExecSQL;

      if not dm.QEmpresas.Active then dm.QEmpresas.Open;
      dm.QEmpresas.Locate('emp_codigo',QEmpresasEMP_CODIGO.Value, []);
      if not dm.QContab.Active then dm.QContab.Open;
      if not dm.QParametros.Active then dm.QParametros.open;
      if not dm.QParamRH.Active then dm.QParamRH.Open;

      //Enviando Mail
      {Query1.close;
      Query1.SQL.clear;
      Query1.SQL.add('select fecha from email where fecha = convert(datetime, :fec, 105)');
      Query1.Parameters.ParamByName('fec').DataType := ftDate;
      Query1.Parameters.ParamByName('fec').Value    := Date;
      Query1.Open;
      if Query1.RecordCount = 0 then
      begin
        Screen.Cursor := crHourGlass;

        Memo1.Lines.Clear;
        Memo1.Lines.Add('Empresa: '+dm.QEmpresasEMP_NOMBRE.Value);
        Memo1.Lines.Add('RNC: '+dm.QEmpresasEMP_RNC.Value);
        Memo1.Lines.Add('Direccion: '+dm.QEmpresasEMP_DIRECCION.Value);
        Memo1.Lines.Add('Localidad: '+dm.QEmpresasEMP_LOCALIDAD.Value);
        Memo1.Lines.Add('Telefono: '+dm.QEmpresasEMP_TELEFONO.Value);
        Memo1.Lines.Add('Fax: '+dm.QEmpresasEMP_FAX.Value);

        IdMessage1.From.Address := 'edgard.cepeda@gmail.com';
        IdMessage1.Recipients.EMailAddresses := 'edgard.cepeda@gmail.com';

        IdMessage1.Subject := DateToStr(Date)+' : '+dm.QEmpresasEMP_NOMBRE.Value;
        IdMessage1.Body.Text := Memo1.Lines.Text;

        try
          IdSMTP1.Connect();
          IdSMTP1.Send(IdMessage1);

          Query1.close;
          Query1.SQL.clear;
          Query1.SQL.add('insert into email (Fecha, Empresa, Mensaje)');
          Query1.SQL.add('values (convert(datetime, :fec, 105), :emp, :msg)');
          Query1.Parameters.ParamByName('fec').DataType := ftDate;
          Query1.Parameters.ParamByName('fec').Value    := Date;
          Query1.Parameters.ParamByName('emp').Value    := dm.QEmpresasEMP_NOMBRE.Value;
          Query1.Parameters.ParamByName('msg').Value    := memo1.Lines.Text;
          Query1.ExecSQL;

          IdSMTP1.Disconnect;
        except
        end;

        Screen.Cursor := crDefault;

      end;}

      if dm.QParametrospar_controlar.Value = 'True' then
      begin
        Query1.close;
        Query1.SQL.clear;
        Query1.SQL.add('select count(*) as cant from control_pagos');
        Query1.Open;
        if Query1.FieldByName('cant').Value = 0 then
        begin
          MessageDlg('COMUNIQUESE URGENTEMENTE CON EL LIC. VICTOR ESTEBAN TEL.:809-240-5197 CEL.:809-869-2161 E.:randyesteban01@hotmail.com',mtError,[mbok],0);
          Application.Terminate;
        end
        else
        begin
          Query1.close;
          Query1.SQL.clear;
          Query1.SQL.add('SELECT CASE WHEN PAG_FECHA < GETDATE() THEN 0 ELSE 1 END ACTIVO FROM CONTROL_PAGOS WHERE pag_status = '+QuotedStr('PEN'));
          Query1.Open;
          if Query1.FieldByName('ACTIVO').Value = 0 then
          begin
            MessageDlg('COMUNIQUESE URGENTEMENTE CON EL LIC. VICTOR ESTEBAN TEL.:809-240-5197 CEL.:809-869-2161 E.:randyesteban01@hotmail.com',mtError,[mbok],0);
            Application.Terminate;
          end;
        end;
        end;
        



      if not dm.QParametros.Active then dm.QContab.Open;
      frmMain.acceso := 1;

      frmMain.Timer1.Enabled := True;

      dm.QUsuarios.Close;
      dm.QUsuarios.Parameters.ParamByName('usu').Value := dm.Query1.fieldbyname('usu_codigo').asinteger;
      dm.QUsuarios.Open;

      dm.Usuario   := dm.Query1.fieldbyname('usu_codigo').asinteger;
      dm.suc_default   := dm.QUsuarios.fieldbyname('usu_suc_default').asinteger;
      DM.usu_reenvia_dgii := dm.QUsuarios.fieldbyname('usu_reenvia_dgii').AsBoolean ;

      dm.vp_cia :=  cbemp.KeyValue;//QEmpresasEMP_CODIGO.Value;
      dm.NombreEmp := dm.QEmpresasEMP_NOMBRE.Value;
      dm.NomUsu  := edUsr.text;
      frmMain.stBar1.Panels[0].Text := 'USUARIO : '+edUsr.text;
      frmMain.stBar1.Panels[4].Text := 'EMPRESA : '+dm.QEmpresasEMP_NOMBRE.value;
      frmMain.stBar1.Panels[5].Text := 'Registrado a: '+MimeDecodeString(dm.lcnombre);

      dm.qAudit.ExecSQL;

      dm.Query1.close;
      dm.Query1.SQL.clear;
      dm.Query1.SQL.add('select pri_nombre, descripcion from privilegios');
      dm.Query1.SQL.add('where usu_codigo = :usu and pri_nombre not like '+QuotedStr('%banco_trans%'));
      dm.Query1.Parameters.parambyname('usu').Value := dm.usuario;
      dm.Query1.open;
      dm.Query1.disablecontrols;
      lockwindowupdate(frmMain.MainMenu1.Handle);
      for a := 0 to frmMain.MainMenu1.Items.Count -1 do
      begin
        if frmMain.MainMenu1.Items[a].Name <> 'Acercade1' then
        begin
          frmMain.MainMenu1.Items[a].visible:=false;
          for b := 0 to frmMain.MainMenu1.Items[a].Count -1 do
          begin
            frmMain.MainMenu1.Items[a].items[b].visible:=false;
            for c := 0 to frmMain.MainMenu1.Items[a].items[b].Count -1 do
            begin
              frmMain.MainMenu1.Items[a].items[b].items[c].visible:=false;
              for d := 0 to frmMain.MainMenu1.Items[a].items[b].items[c].Count -1 do
              begin
                frmMain.MainMenu1.Items[a].items[b].items[c].items[d].visible:=false;
                for e := 0 to frmMain.MainMenu1.Items[a].items[b].items[c].items[d].Count -1 do
                  frmMain.MainMenu1.Items[a].items[b].items[c].items[d].items[e].visible:=false;
              end;
            end;
          end;
        end;
      end;
      While not dm.Query1.Eof do
      begin
       s:=uppercase(dm.Query1.fieldbyname('pri_nombre').asstring);
       for a := 0 to frmMain.MainMenu1.Items.Count -1 do
       begin
         if s = uppercase(frmMain.MainMenu1.Items[a].name) then
            frmMain.MainMenu1.Items[a].visible:=true;
         for b := 0 to frmMain.MainMenu1.Items[a].Count -1 do
         begin
           if s=uppercase(frmMain.MainMenu1.Items[a].items[b].name) then
              frmMain.MainMenu1.Items[a].items[b].visible:=true;
           for c := 0 to frmMain.MainMenu1.Items[a].items[b].Count -1 do
           begin
             if s=uppercase(frmMain.MainMenu1.Items[a].items[b].items[c].name) then
                frmMain.MainMenu1.Items[a].items[b].items[c].visible:=true;
             for d := 0 to frmMain.MainMenu1.Items[a].items[b].items[c].Count -1 do
             begin
               if s=uppercase(frmMain.MainMenu1.Items[a].items[b].items[c].name) then
                  frmMain.MainMenu1.Items[a].items[b].items[c].items[d].visible:=true;
               for e := 0 to frmMain.MainMenu1.Items[a].items[b].items[c].items[d].Count -1 do
               begin
                 if s=uppercase(frmMain.MainMenu1.Items[a].items[b].items[c].items[d].name) then
                    frmMain.MainMenu1.Items[a].items[b].items[c].items[d].items[e].visible:=true;
               end;
             end;
           end;
         end;
       end;
       dm.Query1.Next;
      end;
      dm.Query1.enablecontrols;
      lockwindowupdate(0);

      //habilitando grupos
      if not dm.Query1.Locate('pri_nombre', 'Inventario4', []) then
        frmMain.navInventario.Visible := false
      else
        frmMain.navInventario.Visible := true;

      if not dm.Query1.Locate('pri_nombre', 'Ventas3', []) then
        frmMain.navVentas.Visible := false
      else
        frmMain.navVentas.Visible := true;

      if not dm.Query1.Locate('pri_nombre', 'CxC1', []) then
        frmMain.navCxC.Visible := false
      else
        frmMain.navCxC.Visible := true;

      if not dm.Query1.Locate('pri_nombre', 'CxP1', []) then
        frmMain.navCxP.Visible := false
      else
        frmMain.navCxP.Visible := true;

      if not dm.Query1.Locate('pri_nombre', 'Banco1', []) then
        frmMain.navBanco.Visible := false
      else
        frmMain.navBanco.Visible := true;

      if not dm.Query1.Locate('pri_nombre', 'Contabilidad1', []) then
        frmMain.navContab.Visible := false
      else
        frmMain.navContab.Visible := true;

      if not dm.Query1.Locate('pri_nombre', 'RecursosHumanos1', []) then
        frmMain.navRH.Visible := false
      else
        frmMain.navRH.Visible := true;

      if not dm.Query1.Locate('pri_nombre', 'Seguridad1', []) then
        frmMain.navSeguridad.Visible := false
      else
        frmMain.navSeguridad.Visible := true;

      if not dm.Query1.Locate('pri_nombre', 'Parametros1', []) then
        frmMain.navParam.Visible := false
      else
        frmMain.navParam.Visible := true;

      if frmMain.navInventario.Visible then
      begin
        //habilitando opciones del grupo inventario
        dm.Query1.close;
        dm.Query1.SQL.clear;
        dm.Query1.SQL.add('select pri_nombre, descripcion from privilegios');
        dm.Query1.SQL.add('where usu_codigo = :usu and substring(pri_nombre,1,4) = :mod');
        dm.Query1.Parameters.parambyname('usu').Value := dm.usuario;
        dm.Query1.Parameters.parambyname('mod').Value := 'inv_';
        dm.Query1.open;
        a := 0;
        while a <= frmMain.cxtvInventario.items.Count-1 do
        begin
          if not dm.Query1.Locate('descripcion', frmMain.cxtvInventario.Items[a].Text, []) then
            frmMain.cxtvInventario.Items[a].Delete
          else
            a := a + 1;
        end;
      end;

      if frmMain.navVentas.Visible then
      begin
        //habilitando opciones del grupo ventas
        dm.Query1.close;
        dm.Query1.SQL.clear;
        dm.Query1.SQL.add('select pri_nombre, descripcion from privilegios');
        dm.Query1.SQL.add('where usu_codigo = :usu and substring(pri_nombre,1,6) = :mod');
        dm.Query1.Parameters.parambyname('usu').Value := dm.usuario;
        dm.Query1.Parameters.parambyname('mod').Value := 'venta_';
        dm.Query1.open;
        a := 0;
        while a <= frmMain.cxtvVentas.items.Count-1 do
        begin
          if not dm.Query1.Locate('descripcion', frmMain.cxtvVentas.Items[a].Text, []) then
            frmMain.cxtvVentas.Items[a].Delete
          else
            a := a + 1;
        end;
      end;

      if frmMain.navCxC.Visible then
      begin
        //habilitando opciones del grupo CxC
        dm.Query1.close;
        dm.Query1.SQL.clear;
        dm.Query1.SQL.add('select pri_nombre, descripcion from privilegios');
        dm.Query1.SQL.add('where usu_codigo = :usu and substring(pri_nombre,1,4) = :mod');
        dm.Query1.Parameters.parambyname('usu').Value := dm.usuario;
        dm.Query1.Parameters.parambyname('mod').Value := 'cxc_';
        dm.Query1.open;
        a := 0;
        while a <= frmMain.cxtvCxC.items.Count-1 do
        begin
          if not dm.Query1.Locate('descripcion', frmMain.cxtvCxC.Items[a].Text, []) then
            frmMain.cxtvCxC.Items[a].Delete
          else
            a := a + 1;
        end;
      end;

      if frmMain.navCxP.Visible then
      begin
        //habilitando opciones del grupo CxP
        dm.Query1.close;
        dm.Query1.SQL.clear;
        dm.Query1.SQL.add('select pri_nombre, descripcion from privilegios');
        dm.Query1.SQL.add('where usu_codigo = :usu and substring(pri_nombre,1,4) = :mod');
        dm.Query1.Parameters.parambyname('usu').Value := dm.usuario;
        dm.Query1.Parameters.parambyname('mod').Value := 'cxp_';
        dm.Query1.open;
        a := 0;
        while a <= frmMain.cxtvCxP.items.Count-1 do
        begin
          if not dm.Query1.Locate('descripcion', frmMain.cxtvCxP.Items[a].Text, []) then
            frmMain.cxtvCxP.Items[a].Delete
          else
            a := a + 1;
        end;
      end;

      if frmMain.navBanco.Visible then
      begin
        //habilitando opciones del grupo Banco
        dm.Query1.close;
        dm.Query1.SQL.clear;
        dm.Query1.SQL.add('select pri_nombre, descripcion from privilegios');
        dm.Query1.SQL.add('where usu_codigo = :usu and substring(pri_nombre,1,6) = :mod');
        dm.Query1.Parameters.parambyname('usu').Value := dm.usuario;
        dm.Query1.Parameters.parambyname('mod').Value := 'banco_';
        dm.Query1.open;
        while not dm.Query1.Eof do
        begin
          for a := 0 to frmMain.cxtvBanco.Items.Count-1 do
          begin
            for b := 0 to frmMain.cxtvBanco.items[a].Count-1 do
            begin
              if dm.Query1.FieldByName('descripcion').AsString = frmMain.cxtvBanco.Items[a].Item[b].Text then
              begin
                frmMain.cxtvBanco.Items[a].Item[b].StateIndex := 1;
                break;
              end;
            end;
            if dm.Query1.FieldByName('descripcion').AsString = frmMain.cxtvBanco.Items[a].Text then
            begin
              frmMain.cxtvBanco.Items[a].StateIndex := 1;
              break;
            end;
          end;

          dm.Query1.Next;
        end;
        a := frmMain.cxtvBanco.Items.Count-1;
        while a >= 0 do
        begin
          if frmMain.cxtvBanco.Items.Item[a].StateIndex = 0 then
             frmMain.cxtvBanco.Items.Item[a].Delete;

          a := a - 1;
        end;
      end;

      if frmMain.navContab.Visible then
      begin
        //habilitando opciones del grupo Contabilidad
        dm.Query1.close;
        dm.Query1.SQL.clear;
        dm.Query1.SQL.add('select pri_nombre, descripcion from privilegios');
        dm.Query1.SQL.add('where usu_codigo = :usu and substring(pri_nombre,1,5) = :mod');
        dm.Query1.Parameters.parambyname('usu').Value := dm.usuario;
        dm.Query1.Parameters.parambyname('mod').Value := 'cont_';
        dm.Query1.open;
        while not dm.Query1.Eof do
        begin
          for a := 0 to frmMain.cxtvContabilidad.Items.Count-1 do
          begin
            if trim(dm.Query1.FieldByName('descripcion').AsString) = trim(frmMain.cxtvContabilidad.Items[a].Text) then
              frmMain.cxtvContabilidad.Items[a].StateIndex := 1;
            for b := 0 to frmMain.cxtvContabilidad.items[a].Count-1 do
            begin
              if trim(dm.Query1.FieldByName('descripcion').AsString) = trim(frmMain.cxtvContabilidad.Items[a].Item[b].Text) then
              begin
                frmMain.cxtvContabilidad.Items[a].Item[b].StateIndex := 1;
                break;
              end;
            end;
            if trim(dm.Query1.FieldByName('descripcion').AsString) = trim(frmMain.cxtvContabilidad.Items[a].Text) then
            begin
              frmMain.cxtvContabilidad.Items[a].StateIndex := 1;
              break;
            end;
          end;

          dm.Query1.Next;
        end;

        a := frmMain.cxtvContabilidad.Items.Count-1;
        while a >= 0 do
        begin
          if frmMain.cxtvContabilidad.Items.Item[a].StateIndex = 0 then
             frmMain.cxtvContabilidad.Items.Item[a].Delete;

          a := a - 1;
        end;
      end;

      if frmMain.navSeguridad.Visible then
      begin
        //habilitando opciones del grupo Seguridad
        dm.Query1.close;
        dm.Query1.SQL.clear;
        dm.Query1.SQL.add('select pri_nombre, descripcion from privilegios');
        dm.Query1.SQL.add('where usu_codigo = :usu and substring(pri_nombre,1,4) = :mod');
        dm.Query1.Parameters.parambyname('usu').Value := dm.usuario;
        dm.Query1.Parameters.parambyname('mod').Value := 'seg_';
        dm.Query1.open;
        a := 0;
        while a <= frmMain.cxtvSeguridad.items.Count-1 do
        begin
          if not dm.Query1.Locate('descripcion', frmMain.cxtvSeguridad.Items[a].Text, []) then
            frmMain.cxtvSeguridad.Items[a].Delete
          else
            a := a + 1;
        end;
      end;

      if frmMain.navParam.Visible then
      begin
        //habilitando opciones del grupo Parametros
        dm.Query1.close;
        dm.Query1.SQL.clear;
        dm.Query1.SQL.add('select pri_nombre, descripcion from privilegios');
        dm.Query1.SQL.add('where usu_codigo = :usu and substring(pri_nombre,1,6) = :mod');
        dm.Query1.Parameters.parambyname('usu').Value := dm.usuario;
        dm.Query1.Parameters.parambyname('mod').Value := 'param_';
        dm.Query1.open;
        a := 0;
        while a <= frmMain.cxtvParam.items.Count-1 do
        begin
          if not dm.Query1.Locate('descripcion', frmMain.cxtvParam.Items[a].Text, []) then
            frmMain.cxtvParam.Items[a].Delete
          else
            a := a + 1;
        end;
      end;

      //MiSigma
      {frmMain.dxNavMenu.ActiveGroupIndex := 0;

      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select Menu, Opcion, Secuencia from MiSigma where usu_codigo = :usu order by Menu, Secuencia');
      dm.Query1.Parameters.ParamByName('usu').Value := dm.Usuario;
      dm.Query1.Open;
      dm.Query1.DisableControls;
      while not dm.Query1.Eof do
      begin
        try
          vNode := frmMain.cxtvMiSigma.Items.AddChild(nil, dm.Query1.FieldByName('Opcion').AsString);
        except
        end;

        dm.Query1.Next;
      end;
      dm.Query1.EnableControls;}

      frmAcceso.close;
      frmAcceso.release;
    end;



procedure TfrmAcceso.edUsrKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if edPswd.Visible then edPswd.Visible := false;
    if Trim(edUsr.Text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select usu_codigo, isnull(usu_empdefault,1) as empresa from usuarios');
      dm.Query1.sql.add('where usu_nombre = :usu');
      dm.Query1.sql.add('and usu_status = '+QuotedStr('ACT'));
      dm.Query1.Parameters.parambyname('usu').Value := trim(edUsr.text);
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        showmessage('ESTE USUARIO NO EXISTE');
        edUsr.setfocus;
      end
      else
      begin
        //Verificando la Licencia en el Servicio de Sigma
        {memolic.Lines.Clear;
        if not ClientSocket.Active then
        begin
          ClientSocket.Host := ServidorLic;
          ClientSocket.Port := 4010;
          ClientSocket.Address := ServidorLic+':4010';
          ClientSocket.Active := True;
        end;
        ClientSocket.Socket.SendText(edUsr.Text);}

        QEmpresas.Close;
        QEmpresas.Parameters.ParamByName('usu').Value := dm.Query1.FieldByName('usu_codigo').AsInteger;
        QEmpresas.Open;
        QEmpresas.Locate('emp_codigo',dm.Query1.FieldByName('empresa').AsInteger,[]);
        edPswd.Visible := true;

        cbemp.KeyValue := QEmpresasEMP_CODIGO.Value;
      end;
    end;
  end;
end;

procedure TfrmAcceso.FormCreate(Sender: TObject);
var
  ar : textfile;
  db : string;
begin

  if not FileExists(ExtractFilePath(Application.ExeName)+'.\dashasql.ini') then
  begin
    Application.MessageBox('El no fue encontrado el archivo de configuracion dashasql.ini',
                           'Error',MB_OK+MB_ICONERROR);
    exit;
  end;

  frmMain.Timer1.Enabled := False;
  dm.ADOSigma.Connected := False;
  assignfile(ar, ExtractFilePath(Application.ExeName)+'dashasql.ini');
  reset(ar);
  while not EOF(ar) do
  begin
    readln(ar, db);
    cbConexion.Items.Add(db);
  end;
  closefile(ar);
  cbConexion.ItemIndex := 0;
  db := cbConexion.Text;
  db := db + ConnectionStringPlus ;
  dm.ADOSigma.ConnectionString := db;

  memolic.Clear;
  cbConexion.OnChange(Self);
end;

procedure TfrmAcceso.cbConexionChange(Sender: TObject);
var
  ar : textfile;
  db : string;
  strCon : TStrings;
begin
  try
    dm.ADOSigma.Connected := False;
    db := cbConexion.Text;
    db := db + ConnectionStringPlus ;
    dm.ADOSigma.ConnectionString := db;
    dm.ADOSigma.Connected := True;

      TerminaEjecucion := false;
  except
     on E: EOleException do
       begin
       ///  if pos('Connetion Open',e.message) > 0 then
         Application.MessageBox(pchar('No hay conexión con la base de datos'+
                                #10+#13+#10+#13+
                                'Mensaje Original : '+#10+#13+
                                e.message) ,
                           'Error',MB_OK+MB_ICONERROR);


       end;
  end;

  dm.QEmpresas.Close;
  if not dm.QEmpresas.Active then dm.QEmpresas.Open;
  if not QEmpresas.Active then
  begin
    QEmpresas.Close;
    QEmpresas.Parameters.ParamByName('usu').Value := Usu;
    QEmpresas.Open;
  end;
  cbemp.Enabled := frmMain.MDIChildCount < 1;
end;

procedure TfrmAcceso.ClientSocketRead(Sender: TObject;
  Socket: TCustomWinSocket);
var
  read : string;
begin
  read := socket.ReceiveText;
  memolic.Lines.Add(read);
end;

procedure TfrmAcceso.FormShow(Sender: TObject);
begin
IF FileExists('.\Progra.ini') then begin
edUsr.Text :='RANDY' ;

edPswd.Text:='';
btloginClick(Sender);
end;
end;

function TfrmAcceso.ExisteLicencia: Boolean;
begin
WITH DM.Query1 do begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT * from USBKEY WHERE SN = '+QuotedStr(dm.GeneraLicencia));
  Open;
  if not IsEmpty then begin
  Result := True;
  VL_1  := fieldbyname('ID').AsString;
  VL_2  := fieldbyname('SN').AsString;
  VL_3  := fieldbyname('Empresa').AsString;
  VL_4  := fieldbyname('RNC').AsString;
  VL_5  := fieldbyname('Direccion1').AsString;
  VL_6  := fieldbyname('Direccion2').AsString;
  VL_7  := fieldbyname('Direccion3').AsString;
  VL_8  := fieldbyname('Telefono').AsString;
  VL_9  := fieldbyname('URL').AsString;
  VL_10 := fieldbyname('Correo').AsString;
  VL_11 := fieldbyname('TIPO').AsString;
  VL_12 := fieldbyname('TIPODESDE').AsString;
  VL_13 := fieldbyname('TIPOHASTA').AsString;
  VL_14 := fieldbyname('TIPOVENC').AsString;
  VL_15 := fieldbyname('TIPOVENCHASTA').AsString;

  dm.lcnombre   := dm.Query1.FieldByName('Empresa').AsString;
  dm.lcrnc      := dm.Query1.FieldByName('Rnc').AsString;
  dm.lccorreo   := dm.Query1.FieldByName('Correo').AsString;
  dm.lctelefono := dm.Query1.FieldByName('Telefono').AsString;
  dm.lcurl      := dm.Query1.FieldByName('Url').AsString;
  end
  else
  Result := False;

end;
end;

function TfrmAcceso.DiasLicencia: Integer;
VAR
  FECHA : STRING;
  vl_dias : Integer;
begin
FECHA := MimeDecodeString(VL_12);
Result := 0;
vl_dias := 0;
IF ExisteLicencia = True THEN BEGIN
WITH QVerLic do begin
  Close;
  Parameters[0].Value := StrToInt(MimeDecodeString(VL_11));
  Parameters[1].Value := StrToInt(MimeDecodeString(VL_13));
  Parameters[2].Value := FECHA;
  Parameters[3].Value := StrToInt(MimeDecodeString(VL_14));
  Parameters[4].Value := StrToInt(MimeDecodeString(VL_15));
  Open;
  if not IsEmpty then
  vl_dias := FIELDBYNAME('CANT_DIAS_VENC').AsInteger;
  if IsEmpty then
  vl_dias := 0;
end;
end;
  Result := vl_dias;
end;



procedure TfrmAcceso.CargarLicencia;
var
  IniFile : TIniFile;
begin
if dlgOpen1.Execute THEN BEGIN
     IniFile := TIniFile.Create(dlgOpen1.FileName);
     VL_1  := IniFile.ReadString('LICENCIA','ID',VL_1);
     VL_2  := IniFile.ReadString('LICENCIA','SN',VL_2);
     VL_3  := IniFile.ReadString('LICENCIA','COMPANY',VL_3);
     VL_4  := IniFile.ReadString('LICENCIA','RNC',VL_4);
     VL_5  := IniFile.ReadString('LICENCIA','DIREC1',VL_5);
     VL_6  := IniFile.ReadString('LICENCIA','DIREC2',VL_6);
     VL_7  := IniFile.ReadString('LICENCIA','DIREC3',VL_7);
     VL_8  := IniFile.ReadString('LICENCIA','TEL',VL_8);
     VL_9  := IniFile.ReadString('LICENCIA','EMAIL',VL_9);
     VL_10 := IniFile.ReadString('LICENCIA','URL',VL_10);
     VL_11 := IniFile.ReadString('LICENCIA','TIPOLIC',VL_11);
     VL_12 := IniFile.ReadString('LICENCIA','TIPOLICDESDE',VL_12);
     VL_13 := IniFile.ReadString('LICENCIA','TIPOLICHASTA',VL_13);
     VL_14 := IniFile.ReadString('LICENCIA','TIPOVENC',VL_14);
     VL_15 := IniFile.ReadString('LICENCIA','TIPOVENCHASTA',VL_15);
     IniFile.Free;

if Trim(DM.QEmpresasEMP_NOMBRE.Value)<>Trim(MimeDecodeString(vl_3)) then begin
  ShowMessage('La licencia que estas tratando de cargar no pertenece a '+Char(13)+
              Trim(UpperCase(DM.QEmpresasEMP_NOMBRE.Value)));
Abort;
end;

  WITH QLICENCIA DO BEGIN
       Close;
       SQL.Clear;
       SQL.Add('INSERT INTO USBKEY');
       SQL.Add('(ID, SN, Empresa, Rnc, Direccion1, Direccion2,Direccion3, ');
       SQL.Add('Telefono, Url, Correo, TIPO, TIPODESDE, TIPOHASTA,TIPOVENC, TIPOVENCHASTA)');
       SQL.Add('VALUES ('+QuotedStr(VL_1)+', '+QuotedStr(VL_2)+', '+QuotedStr(VL_3)+', '+
       QuotedStr(VL_4)+', '+QuotedStr(VL_5)+', '+QuotedStr(VL_6)+', '+QuotedStr(VL_7)+', '+
       QuotedStr(VL_8)+', '+QuotedStr(VL_9)+', '+QuotedStr(VL_10)+', '+QuotedStr(VL_11)+', '+
       QuotedStr(VL_12)+', '+QuotedStr(VL_13)+', '+QuotedStr(VL_14)+', '+QuotedStr(VL_15)+')');
       ExecSQL;
     end;
end;
end;

procedure TfrmAcceso.ActualizarLicencia;
var
  IniFile : TIniFile;
begin
   if dlgOpen1.Execute THEN BEGIN
     IniFile := TIniFile.Create(dlgOpen1.FileName);
     VL_1  := IniFile.ReadString('LICENCIA','ID',VL_1);
     VL_2  := IniFile.ReadString('LICENCIA','SN',VL_2);
     VL_3  := IniFile.ReadString('LICENCIA','COMPANY',VL_3);
     VL_4  := IniFile.ReadString('LICENCIA','RNC',VL_4);
     VL_5  := IniFile.ReadString('LICENCIA','DIREC1',VL_5);
     VL_6  := IniFile.ReadString('LICENCIA','DIREC2',VL_6);
     VL_7  := IniFile.ReadString('LICENCIA','DIREC3',VL_7);
     VL_8  := IniFile.ReadString('LICENCIA','TEL',VL_8);
     VL_9  := IniFile.ReadString('LICENCIA','EMAIL',VL_9);
     VL_10 := IniFile.ReadString('LICENCIA','URL',VL_10);
     VL_11 := IniFile.ReadString('LICENCIA','TIPOLIC',VL_11);
     VL_12 := IniFile.ReadString('LICENCIA','TIPOLICDESDE',VL_12);
     VL_13 := IniFile.ReadString('LICENCIA','TIPOLICHASTA',VL_13);
     VL_14 := IniFile.ReadString('LICENCIA','TIPOVENC',VL_14);
     VL_15 := IniFile.ReadString('LICENCIA','TIPOVENCHASTA',VL_15);
     IniFile.Free;

if Trim(DM.QEmpresasEMP_NOMBRE.Value)<>Trim(MimeDecodeString(vl_3)) then begin
  ShowMessage('La licencia que estas tratando de cargar no pertenece a '+Char(13)+
              Trim(UpperCase(DM.QEmpresasEMP_NOMBRE.Value)));
Abort;
end;

   WITH QLICENCIA DO BEGIN
       Close;
       SQL.Clear;
       SQL.Add('UPDATE USBKEY');
       SQL.Add('SET TIPO          = '+QuotedStr(VL_11)+',');
       SQL.Add('    TIPODESDE     = '+QuotedStr(VL_12)+',');
       SQL.Add('    TIPOHASTA     = '+QuotedStr(VL_13)+',');
       SQL.Add('    TIPOVENC      = '+QuotedStr(VL_14)+',');
       SQL.Add('    TIPOVENCHASTA = '+QuotedStr(VL_15));
       SQL.Add('WHERE ID = '+QuotedStr(VL_1));
       ExecSQL;
     end;
end;

end;


function TfrmAcceso.VerLicCargadaCorrecta: Boolean;
begin
with dm.Query1 do begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT RTRIM(EMP_NOMBRE) EMPRESA FROM EMPRESAS WHERE EMP_CODIGO = 1');
  Open;
  if NOT IsEmpty THEN
  IF (Trim(MimeDecodeString(vl_3))=FieldByName('EMPRESA').Text) THEN
  Result := True ELSE
  Result := False;
end;
end;

function TfrmAcceso.ValidarEjecutable: String;
var
  Fecha  :TDateTime;
  Nombre : String;
begin
  Nombre  := 'Dasha.exe';
  Fecha   := FileDateToDateTime(FileAge(Application.ExeName));
  //_AnoExe := IntToStr(YearOf(Fecha));
  Result := 'OK';
  With DM.Query1 do
  begin
    Close;
    Sql.Clear;
    Sql.Add('select programa, fecha from act_fechas where programa = :programa');
    Parameters.ParamByName('programa').Value := Nombre;
    Open;
    if IsEmpty Or (int(FieldByName('fecha').AsDateTime) < int(Fecha)) then
      Result := 'UpData'
    else
    if FieldByName('fecha').AsDateTime > Fecha then
      Result := 'Incompatible';
  end;

end;

procedure TfrmAcceso.edPswdKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
btloginClick(Sender);
end;

end.
