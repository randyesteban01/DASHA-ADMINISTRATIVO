unit CONT34;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, IBCustomDataSet,
  IBQuery, Grids, ADODB, DBCtrls, ComCtrls, ExtCtrls, DBGrids,
  QuerySearchDlgADO;

type
  TfrmApruebaSol = class(TForm)
    edDesde: TEdit;
    btClose: TBitBtn;
    edHasta: TEdit;
    Label2: TLabel;
    btaprobar: TBitBtn;
    Query1: TADOQuery;
    sgSolicitud: TStringGrid;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    ckManual: TCheckBox;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    Label8: TLabel;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    cbfecha: TDateTimePicker;
    rgforma: TRadioGroup;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    QCheques: TADOQuery;
    QChequesban_nombre: TStringField;
    QChequesche_numero: TIntegerField;
    QChequesche_fecha: TDateTimeField;
    QChequesche_monto: TBCDField;
    dsCheques: TDataSource;
    BitBtn1: TBitBtn;
    QChequesban_codigo: TIntegerField;
    lbLocSuc: TLabel;
    edtSucLoc: TEdit;
    btLocalidad: TSpeedButton;
    TSucLoc: TEdit;
    Search: TQrySearchDlgADO;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btaprobarClick(Sender: TObject);
    procedure sgSolicitudSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure ckManualClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rgformaClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtSucLocChange(Sender: TObject);
    procedure edtSucLocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btLocalidadClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PresentaCK;
  end;

var
  frmApruebaSol: TfrmApruebaSol;

implementation

uses SIGMA01, RCONT17;


{$R *.dfm}

procedure TfrmApruebaSol.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    if activecontrol.ClassType <> tStringGrid then
    begin
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    end;
  end;
end;

procedure TfrmApruebaSol.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmApruebaSol.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmApruebaSol.btaprobarClick(Sender: TObject);
var
  fil : integer;
  montosolicitud, BalanceBanco, balanceminimo : Double;
  permitesobregiro : string;
  permite : Boolean;
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select sol_numero from solicitud');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and sol_status = '+#39+'APR'+#39);
  dm.Query1.SQL.Add('and sol_numero between :sol1 and :sol2');
  dm.Query1.SQL.Add('and suc_codigo = :suc');
  dm.Query1.SQL.Add('order by sol_numero');
  dm.Query1.Parameters.ParamByName('emp').Value  := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('sol1').Value := StrToInt(Trim(edDesde.Text));
  dm.Query1.Parameters.ParamByName('sol2').Value := StrToInt(Trim(edHasta.Text));
  dm.Query1.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
  dm.Query1.Open;
  if dm.Query1.RecordCount > 0 then
  begin
    MessageDlg('Existen solicitudes en este rango que ya estan aprobadas, verifique',mtError,[mbok],0);
    edDesde.SetFocus;
  end
  else
  begin
    if not ckManual.Checked then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select sol_numero, sol_fecha, ban_codigo');
      dm.Query1.SQL.Add('from solicitud');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and sol_status = '+#39+'EMI'+#39);
      dm.Query1.SQL.Add('and sol_numero between :sol1 and :sol2');
      dm.Query1.SQL.Add('and suc_codigo = :suc');
      dm.Query1.SQL.Add('order by sol_numero');
      dm.Query1.Parameters.ParamByName('emp').Value  := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('sol1').Value := StrToInt(Trim(edDesde.Text));
      dm.Query1.Parameters.ParamByName('sol2').Value := StrToInt(Trim(edHasta.Text));
      dm.Query1.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
      dm.Query1.Open;
      dm.Query1.DisableControls;
      while not dm.Query1.Eof do
      begin
        Query1.Close;
        Query1.SQL.Clear;
        Query1.SQL.Add('select ban_permite_sobregiro, ban_balance_minimo from bancos');
        Query1.SQL.Add('where emp_codigo = :emp and ban_codigo = :ban');
        Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        Query1.Parameters.ParamByName('ban').Value := dm.Query1.FieldByName('ban_codigo').AsInteger;
        Query1.Open;
        permitesobregiro := Query1.FieldbyName('ban_permite_sobregiro').AsString;
        balanceminimo    := Query1.FieldbyName('ban_balance_minimo').AsFloat;

        //buscando balance del banco
        Query1.Close;
        Query1.SQL.Clear;
        Query1.SQL.Add('SELECT * FROM CONTPR_LIBRO_BANCO (:EMP, :SUC, :BANCO, :FECHA1, :FECHA2, :sucloc)');
        Query1.Parameters.ParamByName('emp').Value       := dm.QEmpresasEMP_CODIGO.Value;
        Query1.Parameters.ParamByName('banco').Value     := dm.Query1.FieldByName('ban_codigo').AsInteger;
        Query1.Parameters.ParamByName('fecha1').DataType := ftDate;
        Query1.Parameters.ParamByName('fecha2').DataType := ftDate;
        Query1.Parameters.ParamByName('sucloc').DataType := ftInteger;
        Query1.Parameters.ParamByName('fecha1').Value    := Date;
        Query1.Parameters.ParamByName('fecha2').Value    := Date;
        Query1.Parameters.ParamByName('suc').Value       := DBLookupComboBox2.KeyValue;
        IF edtSucLoc.Text = '' THEN
        Query1.Parameters.ParamByName('sucloc').Value       := null ELSE
        Query1.Parameters.ParamByName('sucloc').Value       := edtSucLoc.Text;
        Query1.Open;
        Query1.Last;
        BalanceBanco := Query1.FieldByName('balance').AsFloat;

        //buscando monto total de solicitures del banco
        Query1.Close;
        Query1.SQL.Clear;
        Query1.SQL.Add('select sum(sol_monto_banco) as monto from solicitud');
        Query1.SQL.Add('where emp_codigo = :emp');
        Query1.SQL.Add('and suc_codigo = :suc');
        Query1.SQL.Add('and sol_numero between :sol1 and :sol2');
        Query1.SQL.Add('and ban_codigo = :ban');
        Query1.Parameters.ParamByName('emp').Value  := dm.QEmpresasEMP_CODIGO.Value;
        Query1.Parameters.ParamByName('sol1').Value := StrToInt(Trim(edDesde.Text));
        Query1.Parameters.ParamByName('sol2').Value := StrToInt(Trim(edHasta.Text));
        Query1.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
        Query1.Parameters.ParamByName('ban').Value  := dm.Query1.FieldByName('ban_codigo').AsInteger;
        Query1.Open;
        montosolicitud := Query1.FieldByName('monto').AsFloat;

        permite := true;
        if (permitesobregiro = 'False') then
        begin
          if (BalanceBanco < montosolicitud) then
          begin
            if balanceminimo = 0 then
              permite := false
            else
            begin
              if (balanceminimo > (BalanceBanco - montosolicitud)) then
                permite := false;
            end;
          end
        end
        else if (permitesobregiro = 'True') then
        begin
           if (montosolicitud > BalanceBanco) then
           begin
             if balanceminimo <> 0 then
             begin
               if (balanceminimo > (BalanceBanco - montosolicitud)) then
                 permite := false;
             end;
           end
           else
           begin
             if (BalanceBanco - montosolicitud < balanceminimo) then
               permite := false;
           end;
        end;

        if permite = false then
        begin
          MessageDlg('EXISTEN CUENTAS EN EL LISTADO QUE NO PERMITE SOBREGIRO',mtError,[mbok],0);
          break;
        end
        else
        begin
          Query1.Close;
          Query1.SQL.Clear;
          Query1.SQL.Add('execute contpr_aprueba_solicitud :emp, :suc, :sol, :fec');
          Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
          Query1.Parameters.ParamByName('sol').Value := dm.Query1.FieldByName('sol_numero').AsInteger;
          Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
          if rgforma.ItemIndex = 0 then
             Query1.Parameters.ParamByName('fec').Value := dm.Query1.FieldByName('sol_fecha').Value
          else
             Query1.Parameters.ParamByName('fec').Value := cbfecha.Date;

          Query1.ExecSQL;
        end;
        dm.Query1.Next;
      end;
      dm.Query1.EnableControls;
    end
    else
    begin
      for fil := 0 to sgSolicitud.RowCount - 1 do
      begin
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select sol_numero, sol_fecha, ban_codigo');
        dm.Query1.SQL.Add('from solicitud');
        dm.Query1.SQL.Add('where emp_codigo = :emp');
        dm.Query1.SQL.Add('and sol_numero = :sol');
        dm.Query1.SQL.Add('and suc_codigo = :suc');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        dm.Query1.Parameters.ParamByName('sol').Value := StrToInt(sgSolicitud.Cells[0,fil]);
        dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
        dm.Query1.Open;

        Query1.Close;
        Query1.SQL.Clear;
        Query1.SQL.Add('select ban_permite_sobregiro, ban_balance_minimo from bancos');
        Query1.SQL.Add('where emp_codigo = :emp and ban_codigo = :ban');
        Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        Query1.Parameters.ParamByName('ban').Value := dm.Query1.FieldByName('ban_codigo').AsInteger;
        Query1.Open;
        permitesobregiro := Query1.FieldbyName('ban_permite_sobregiro').AsString;
        balanceminimo    := Query1.FieldbyName('ban_balance_minimo').AsFloat;

        //buscando balance del banco
        Query1.Close;
        Query1.SQL.Clear;
        Query1.SQL.Add('SELECT * FROM CONTPR_LIBRO_BANCO (:EMP, :SUC, :BANCO, :FECHA1, :FECHA2, :sucloc)');
        Query1.Parameters.ParamByName('emp').Value       := dm.QEmpresasEMP_CODIGO.Value;
        Query1.Parameters.ParamByName('banco').Value     := dm.Query1.FieldByName('ban_codigo').AsInteger;
        Query1.Parameters.ParamByName('fecha1').DataType := ftDate;
        Query1.Parameters.ParamByName('sucloc').DataType := ftInteger;
        Query1.Parameters.ParamByName('fecha2').DataType := ftDate;
        Query1.Parameters.ParamByName('fecha1').Value    := Date;
        Query1.Parameters.ParamByName('fecha2').Value    := Date;
        Query1.Parameters.ParamByName('suc').Value       := DBLookupComboBox2.KeyValue;
        IF edtSucLoc.Text = '' THEN
        Query1.Parameters.ParamByName('sucloc').Value       := null ELSE
        Query1.Parameters.ParamByName('sucloc').Value       := edtSucLoc.Text;
        Query1.Open;
        Query1.Last;
        BalanceBanco := Query1.FieldByName('balance').AsFloat;

        //buscando monto total de solicitures del banco
        Query1.Close;
        Query1.SQL.Clear;
        Query1.SQL.Add('select sum(sol_monto_banco) as monto from solicitud');
        Query1.SQL.Add('where emp_codigo = :emp');
        Query1.SQL.Add('and suc_codigo = :suc');
        Query1.SQL.Add('and sol_numero = :sol');
        Query1.SQL.Add('and ban_codigo = :ban');
        Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        Query1.Parameters.ParamByName('sol').Value := StrToInt(sgSolicitud.Cells[0,fil]);
        Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
        Query1.Parameters.ParamByName('ban').Value := dm.Query1.FieldByName('ban_codigo').AsInteger;
        Query1.Open;
        montosolicitud := Query1.FieldByName('monto').AsFloat;

        permite := true;
        if (permitesobregiro = 'False') then
        begin
          if (BalanceBanco < montosolicitud) then
          begin
            if balanceminimo = 0 then
              permite := false
            else
            begin
              if (balanceminimo > (BalanceBanco - montosolicitud)) then
                permite := false;
            end;
          end
        end
        else if (permitesobregiro = 'True') then
        begin
           if (montosolicitud > BalanceBanco) then
           begin
             if balanceminimo <> 0 then
             begin
               if (balanceminimo > (BalanceBanco - montosolicitud)) then
                 permite := false;
             end;
           end
           else
           begin
             if (BalanceBanco - montosolicitud < balanceminimo) then
               permite := false;
           end;
        end;

        if permite = false then
        begin
          MessageDlg('EXISTEN CUENTAS EN EL LISTADO QUE NO PERMITE SOBREGIRO',mtError,[mbok],0);
          break;
        end
        else
        begin
          Query1.Close;
          Query1.SQL.Clear;
          Query1.SQL.Add('execute contpr_aprueba_solicitud_ck :emp, :suc, :sol, :ck, :fec');
          Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
          Query1.Parameters.ParamByName('sol').Value := StrToInt(sgSolicitud.Cells[0,fil]);
          Query1.Parameters.ParamByName('ck').Value  := StrToInt(sgSolicitud.Cells[1,fil]);
          Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
          if rgforma.ItemIndex = 0 then
          begin
            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('select sol_fecha');
            dm.Query1.SQL.Add('from solicitud');
            dm.Query1.SQL.Add('where emp_codigo = :emp');
            dm.Query1.SQL.Add('and sol_status = '+#39+'EMI'+#39);
            dm.Query1.SQL.Add('and sol_numero = :sol');
            dm.Query1.SQL.Add('and suc_codigo = :suc');
            dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
            dm.Query1.Parameters.ParamByName('sol').Value := StrToInt(sgSolicitud.Cells[0,fil]);
            dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
            dm.Query1.Open;
            Query1.Parameters.ParamByName('fec').Value    := dm.Query1.FieldByName('sol_fecha').Value
          end
          else
             Query1.Parameters.ParamByName('fec').Value := cbfecha.Date;

          Query1.ExecSQL;
        end;
      end;
    end;
    QCheques.Close;
    QCheques.Parameters.ParamByName('emp').Value  := dm.QEmpresasEMP_CODIGO.Value;
    QCheques.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
    QCheques.Parameters.ParamByName('sol1').Value := StrToInt(Trim(edDesde.Text));
    QCheques.Parameters.ParamByName('sol2').Value := StrToInt(Trim(edHasta.Text));
    QCheques.Open;
  end;

  MessageDlg('LOS CHEQUES FUERON GENERADOS',mtInformation,[mbok],0);
end;

procedure TfrmApruebaSol.PresentaCK;
var
  fil, a : Integer;
begin
  sgSolicitud.RowCount := 1;
  sgSolicitud.Cells[0,0] := '';
  sgSolicitud.Cells[1,0] := '';
  if ckManual.Checked then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select sol_numero');
    dm.Query1.SQL.Add('from solicitud');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and sol_status = '+#39+'EMI'+#39);
    dm.Query1.SQL.Add('and sol_numero between :sol1 and :sol2');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.SQL.Add('order by sol_numero');
    dm.Query1.Parameters.ParamByName('emp').Value  := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('sol1').Value := StrToInt(Trim(edDesde.Text));
    dm.Query1.Parameters.ParamByName('sol2').Value := StrToInt(Trim(edHasta.Text));
    dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    dm.Query1.Open;
    dm.Query1.DisableControls;

    sgSolicitud.RowCount := (StrToInt(edHasta.Text) - StrToInt(edDesde.Text)) + 1;
    a := 0;
    for fil := StrToInt(edDesde.Text) to StrToInt(edHasta.Text) do
    begin
      if dm.Query1.Locate('sol_numero', fil, []) then
      begin
        sgSolicitud.Cells[0,a] := dm.Query1.FieldByName('sol_numero').AsString;
        a := a + 1;
      end;
    end;
    dm.Query1.EnableControls;
  end;
end;

procedure TfrmApruebaSol.sgSolicitudSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  if ACol = 0 then CanSelect := False;
end;

procedure TfrmApruebaSol.ckManualClick(Sender: TObject);
begin
  sgSolicitud.Enabled := ckManual.Checked;
  PresentaCK;
end;

procedure TfrmApruebaSol.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
  btaprobar.Enabled := dm.QParametrosPAR_SOLGENERACHEQUE.Value = 'True';
end;

procedure TfrmApruebaSol.FormCreate(Sender: TObject);
begin
  cbfecha.Date := Date;
end;

procedure TfrmApruebaSol.rgformaClick(Sender: TObject);
begin
  cbfecha.Visible := rgforma.ItemIndex = 1;
end;

procedure TfrmApruebaSol.BitBtn1Click(Sender: TObject);
begin
  Application.CreateForm(tRepCheque, RepCheque);
  RepCheque.QCheques.Parameters.ParamByName('emp').Value   := dm.QEmpresasEMP_CODIGO.Value;
  RepCheque.QCheques.Parameters.ParamByName('banco').Value := QChequesban_codigo.Value;
  QCheques.First;
  RepCheque.QCheques.Parameters.ParamByName('num1').Value  := QChequesche_numero.Value;
  QCheques.Last;
  RepCheque.QCheques.Parameters.ParamByName('num2').Value  := QChequesche_numero.Value;
  RepCheque.QCheques.Parameters.ParamByName('suc').Value   := DBLookupComboBox2.KeyValue;
  RepCheque.QCheques.Open;
  RepCheque.QDetalle.Open;
  RepCheque.PrinterSetup;
  RepCheque.Print;
  RepCheque.Destroy;
end;

procedure TfrmApruebaSol.FormShow(Sender: TObject);
begin
if dm.QParametrospar_banca_apuestas.Value = True then begin
lbLocSuc.Visible := True;
edtSucLoc.Visible := True;
btLocalidad.Visible := True;
TSucLoc.Visible := True;
end;
if not dm.QParametrospar_banca_apuestas.Value = True then begin
LbLocSuc.Visible := False;
edtSucLoc.Visible := False;
btLocalidad.Visible := False;
TSucLoc.Visible := False;
end;

end;

procedure TfrmApruebaSol.edtSucLocChange(Sender: TObject);
begin
if Trim(edtSucLoc.Text) = '' then TSucLoc.Text := '';
end;

procedure TfrmApruebaSol.edtSucLocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edtSucLoc.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select suc_nombre, cont_numeroSucursal from sucursales');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and cont_numeroSucursal = '+QuotedStr(edtSucLoc.Text));
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Open;
      TSucLoc.Text := dm.Query1.FieldByName('suc_nombre').AsString;

    end;
  end;
end;

procedure TfrmApruebaSol.btLocalidadClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select suc_nombre, cont_numeroSucursal from sucursales');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Title := 'Localidades / Sucursales';
  Search.ResultField := 'cont_numeroSucursal';
  if Search.execute then
  begin
    edtSucLoc.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select suc_nombre, cont_numeroSucursal from sucursales');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cont_numeroSucursal = '+QuotedStr(edtSucLoc.Text));
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Open;
    TSucLoc.Text := dm.Query1.FieldByName('suc_nombre').AsString;
  end;
end;

end.
