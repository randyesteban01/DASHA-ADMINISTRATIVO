unit PVENTA78;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, IBCustomDataSet, IBUpdateSQL, DB,
  IBQuery, Mask, DBCtrls, ADODB, QuerySearchDlgADO;

type
  TfrmLimite = class(TForm)
    Label2: TLabel;
    SpeedButton2: TSpeedButton;
    edCliente: TEdit;
    tCliente: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Fecha: TDateTimePicker;
    btClose: TBitBtn;
    btPost: TBitBtn;
    QLimite: TADOQuery;
    QLimiteCLI_CODIGO: TIntegerField;
    QLimiteEMP_CODIGO: TIntegerField;
    QLimiteLIM_CONCEPTO: TIBStringField;
    QLimiteLIM_FECHA: TDateTimeField;
    QLimiteLIM_MONTO: TFloatField;
    QLimiteLIM_SECUENCIA: TIntegerField;
    dsLimite: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Search: TQrySearchDlgADO;
    QLimiteusu_codigo: TIntegerField;
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure edClienteChange(Sender: TObject);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure QLimiteNewRecord(DataSet: TDataSet);
    procedure QLimiteBeforePost(DataSet: TDataSet);
    procedure btPostClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLimite: TfrmLimite;

implementation

uses SIGMA01;


{$R *.dfm}

procedure TfrmLimite.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmLimite.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmLimite.SpeedButton2Click(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C�digo');
  search.AliasFields.add('Referencia');
  Search.Query.clear;
  Search.Query.add('select cli_nombre, cli_codigo, cli_referencia');
  Search.Query.add('from clientes');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
     Search.ResultField := 'cli_Codigo'
  else
     Search.ResultField := 'cli_referencia';
  Search.Title := 'Listado de Clientes';
  if Search.execute then
  begin
    edCliente.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cli_nombre, cli_codigo, cli_referencia, cli_limite from clientes');
    dm.Query1.sql.add('where emp_codigo = :emp');
    if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
       dm.Query1.sql.add('and cli_codigo = :cod')
    else
       dm.Query1.sql.add('and cli_referencia = :cod');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
       dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edCliente.text))
    else
       dm.Query1.Parameters.parambyname('cod').Value := trim(edCliente.text);
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('CLIENTE NO EXISTE',mterror,[mbok],0)
    else
    begin
      tCliente.text := dm.Query1.fieldbyname('cli_nombre').asstring;
      QLimiteCLI_CODIGO.Value := dm.Query1.fieldbyname('cli_codigo').AsInteger;
      QLimiteLIM_MONTO.Value := dm.Query1.fieldbyname('cli_limite').AsFloat;
    end;
    edCliente.setfocus;
  end;
end;

procedure TfrmLimite.edClienteChange(Sender: TObject);
begin
  if trim(edCliente.text) = '' then tCliente.text := '';
end;

procedure TfrmLimite.edClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edCliente.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select cli_nombre, cli_codigo, cli_limite from clientes');
      dm.Query1.sql.add('where emp_codigo = :emp');
      if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
         dm.Query1.sql.add('and cli_codigo = :cod')
      else
         dm.Query1.sql.add('and cli_referencia = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
         dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edcliente.text))
      else
         dm.Query1.Parameters.parambyname('cod').Value := trim(edcliente.text);
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('CLIENTE NO EXISTE',mterror,[mbok],0);
        edCliente.SetFocus;
      end
      else
      begin
        tCliente.text := dm.Query1.fieldbyname('cli_nombre').asstring;
        QLimiteCLI_CODIGO.Value := dm.Query1.fieldbyname('cli_codigo').AsInteger;
        QLimiteLIM_MONTO.Value := dm.Query1.fieldbyname('cli_limite').AsFloat;
      end;
    end;
  end;
end;

procedure TfrmLimite.FormActivate(Sender: TObject);
begin
  if not QLimite.Active then
  begin
    QLimite.Open;
    QLimite.Insert;
  end;
end;

procedure TfrmLimite.QLimiteNewRecord(DataSet: TDataSet);
begin
  QLimiteLIM_FECHA.Value  := Date;
  QLimiteEMP_CODIGO.Value := dm.vp_cia;
  tCliente.Text := '';
  edCliente.Text := '';
  
  Fecha.Date := Date;
end;

procedure TfrmLimite.QLimiteBeforePost(DataSet: TDataSet);
begin
  QLimiteLIM_FECHA.Value := Fecha.Date;
  QLimiteusu_codigo.Value := dm.Usuario;
  
  if QLimite.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(lim_secuencia),0) as maximo');
    dm.Query1.SQL.Add('from clilimite');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cli_codigo = :cli');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cli').Value := QLimiteCLI_CODIGO.Value;
    dm.Query1.Open;
    QLimiteLIM_SECUENCIA.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  end;
end;

procedure TfrmLimite.btPostClick(Sender: TObject);
begin
  if MessageDlg('DESEA GRABAR EL NUEVO LIMITE DEL CLIENTE?',
  mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    QLimite.Post;
    QLimite.UpdateBatch;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('update clientes set cli_limite = :lim');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cli_codigo = :cli');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cli').Value := QLimiteCLI_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('lim').Value   := QLimiteLIM_MONTO.Value;
    dm.Query1.ExecSQL;

    QLimite.Insert;
  end;
  edCliente.SetFocus;
end;

procedure TfrmLimite.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

end.
