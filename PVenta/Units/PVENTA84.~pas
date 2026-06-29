unit PVENTA84;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, Db, 
  QuerySearchDlgADO, ADODB, DBCtrls;

type
  TfrmEstadoCtaProv = class(TForm)
    cbStatus: TRadioGroup;
    cbBalance: TRadioGroup;
    btPrint: TBitBtn;
    btClose: TBitBtn;
    ckMov: TCheckBox;
    ckPagina: TCheckBox;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    edDesde: TEdit;
    tDesde: TEdit;
    edHasta: TEdit;
    tHasta: TEdit;
    cbOrden: TComboBox;
    Label5: TLabel;
    Fecha: TDateTimePicker;
    Search: TQrySearchDlgADO;
    Label1: TLabel;
    bttipo: TSpeedButton;
    tTipo: TEdit;
    edTipo: TEdit;
    Label14: TLabel;
    btmoneda: TSpeedButton;
    edmoneda: TEdit;
    tmoneda: TEdit;
    ckdetalle: TCheckBox;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    DS_Suc: TDataSource;
    ChkB_cksucursal: TCheckBox;
    dblkcbb1: TDBLookupComboBox;
    procedure btCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edDesdeChange(Sender: TObject);
    procedure edDesdeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edHastaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edHastaChange(Sender: TObject);
    procedure btPrintClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edTipoChange(Sender: TObject);
    procedure edTipoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bttipoClick(Sender: TObject);
    procedure btmonedaClick(Sender: TObject);
    procedure edmonedaChange(Sender: TObject);
    procedure edmonedaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure ChkB_cksucursalClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstadoCtaProv: TfrmEstadoCtaProv;

implementation

uses RVENTA48, SIGMA01;

{$R *.dfm}

procedure TfrmEstadoCtaProv.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEstadoCtaProv.FormCreate(Sender: TObject);
begin
  cbOrden.ItemIndex := 0;
  cbBalance.ItemIndex := 2;
  Fecha.Date := Date;
end;

procedure TfrmEstadoCtaProv.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmEstadoCtaProv.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
end;

procedure TfrmEstadoCtaProv.SpeedButton2Click(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Query.clear;
  Search.Query.add('select sup_nombre, sup_codigo');
  Search.Query.add('from proveedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'sup_Codigo';
  Search.Title := 'Listado de Proveedores';
  if Search.execute then
  begin
    edDesde.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select sup_nombre, sup_codigo from proveedores');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and sup_codigo = :cod');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edDesde.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('PROVEEDORE NO EXISTE',mterror,[mbok],0)
    else
      tDesde.text := dm.Query1.fieldbyname('sup_nombre').asstring;
    edDesde.setfocus;
  end;
end;

procedure TfrmEstadoCtaProv.SpeedButton1Click(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Query.clear;
  Search.Query.add('select sup_nombre, sup_codigo');
  Search.Query.add('from proveedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'sup_Codigo';
  Search.Title := 'Listado de Proveedores';
  if Search.execute then
  begin
    edHasta.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select sup_nombre, sup_codigo from proveedores');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and sup_codigo = :cod');
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edHasta.text));
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('PROVEEDORE NO EXISTE',mterror,[mbok],0)
    else
      tHasta.text := dm.Query1.fieldbyname('sup_nombre').asstring;
    edHasta.setfocus;
  end;
end;

procedure TfrmEstadoCtaProv.edDesdeChange(Sender: TObject);
begin
  if trim(edDesde.text) = '' then tDesde.text := '';
end;

procedure TfrmEstadoCtaProv.edDesdeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edDesde.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select sup_nombre from proveedores');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and sup_codigo = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edDesde.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('PROVEEDOR NO EXISTE',mterror,[mbok],0);
        edDesde.SetFocus;
      end
      else
        tDesde.text := dm.Query1.fieldbyname('sup_nombre').asstring;
    end;
  end;
end;

procedure TfrmEstadoCtaProv.edHastaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edHasta.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select sup_nombre from proveedores');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and sup_codigo = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edHasta.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('PROVEEDOR NO EXISTE',mterror,[mbok],0);
        edHasta.SetFocus;
      end
      else
        tHasta.text := dm.Query1.fieldbyname('sup_nombre').asstring;
    end;
  end;
end;

procedure TfrmEstadoCtaProv.edHastaChange(Sender: TObject);
begin
  if trim(edHasta.text) = '' then tHasta.text := '';
end;

procedure TfrmEstadoCtaProv.btPrintClick(Sender: TObject);
begin
  Application.CreateForm(tREstadoCtaProv, REstadoCtaProv);
  REstadoCtaProv.lbtipo.Caption := tTipo.Text;
  REstadoCtaProv.QRBand3.ForceNewPage := ckPagina.Checked;
  REstadoCtaProv.detallado := ckdetalle.Checked;
  if ChkB_cksucursal.Checked then
  REstadoCtaProv.vl_suc := dblkcbb1.KeyValue else
  REstadoCtaProv.vl_suc := 0;
  REstadoCtaProv.QProv.Close;
  REstadoCtaProv.QProv.SQL.Clear;
  REstadoCtaProv.QProv.SQL.Add('declare @emp int, @fecha datetime, @suc int, @mon int, @tip int, @sup int, @bal int');
  REstadoCtaProv.QProv.SQL.Add('set @emp = :EMP');
  REstadoCtaProv.QProv.SQL.Add('set @fecha = :FECHA');
  REstadoCtaProv.QProv.SQL.Add('set @suc = :SUC');
  REstadoCtaProv.QProv.SQL.Add('set @mon = :MON');
  REstadoCtaProv.QProv.SQL.Add('set @tip = :TIP');
  REstadoCtaProv.QProv.SQL.Add('set @sup = :SUP');
  REstadoCtaProv.QProv.SQL.Add('set @bal = :BAL');
  REstadoCtaProv.QProv.SQL.Add('declare @vcxp_fecha table(');
  REstadoCtaProv.QProv.SQL.Add('sup_codigo int,');
  REstadoCtaProv.QProv.SQL.Add('sup_nombre varchar(100),');
  REstadoCtaProv.QProv.SQL.Add('sup_rnc varchar(20),');
  REstadoCtaProv.QProv.SQL.Add('sup_telefono varchar(20),');
  REstadoCtaProv.QProv.SQL.Add('sup_limite numeric(18,2),');
  REstadoCtaProv.QProv.SQL.Add('Balance numeric(18,2) default 0)');
  REstadoCtaProv.QProv.SQL.Add('INSERT INTO @vcxp_fecha exec pr_cxp_fecha @emp, @fecha, @tip, @mon, @sup, @bal');
  REstadoCtaProv.QProv.SQL.Add('select distinct s.sup_codigo, s.sup_nombre, s.sup_telefono,s.emp_codigo, s.sup_rnc,');
  REstadoCtaProv.QProv.SQL.Add(' s.sup_status, s.tip_codigo, @FECHA FECHA from Proveedores S');
  REstadoCtaProv.QProv.SQL.Add('where s.emp_codigo = @emp');
  case cbStatus.ItemIndex of
  1 : REstadoCtaProv.QProv.SQL.Add('and S.sup_status = '+#39+'ACT'+#39);
  2 : REstadoCtaProv.QProv.SQL.Add('and S.sup_status = '+#39+'INA'+#39);
  end;

  CASE cbBalance.ItemIndex OF
  1:REstadoCtaProv.QProv.SQL.Add('and s.sup_codigo in (select sup_codigo from provfacturas where fac_total-fac_abono=0)');
  2:REstadoCtaProv.QProv.SQL.Add('and s.sup_codigo in (select sup_codigo from provfacturas where fac_total-fac_abono>=1)');
  3:REstadoCtaProv.QProv.SQL.Add('and s.sup_codigo in (select sup_codigo from provfacturas where fac_total-fac_abono<0)');
  end;

  if (trim(edDesde.Text) <> '') and (Trim(edHasta.Text) <> '') then
    REstadoCtaProv.QProv.SQL.Add('and S.sup_codigo between '+Trim(edDesde.Text)+
                                 ' and '+Trim(edHasta.Text));

  if (trim(edDesde.Text) <> '') and (Trim(edHasta.Text) = '') then
    REstadoCtaProv.QProv.SQL.Add('and S.sup_codigo = '+Trim(edDesde.Text));

  if (trim(edDesde.Text) = '') and (Trim(edHasta.Text) <> '') then
    REstadoCtaProv.QProv.SQL.Add('and S.sup_codigo = '+Trim(edHasta.Text));

  if trim(edtipo.text) <> '' then
    REstadoCtaProv.QProv.SQL.Add('and S.tip_codigo = '+trim(edtipo.text));

  REstadoCtaProv.QProv.SQL.Add('and S.sup_codigo in (SELECT sup_codigo FROM @vcxp_fecha)');

  case cbOrden.ItemIndex of
  0 : REstadoCtaProv.QProv.SQL.Add('order by S.sup_codigo');
  1 : REstadoCtaProv.QProv.SQL.Add('order by S.sup_nombre');
  2 : REstadoCtaProv.QProv.SQL.Add('order by S.sup_rnc');
  end;
  REstadoCtaProv.lbFecha.Caption := 'Al '+DateToStr(Fecha.Date);
  REstadoCtaProv.QProv.Parameters.ParamByName('EMP').DataType := ftInteger;
  REstadoCtaProv.QProv.Parameters.ParamByName('SUC').DataType := ftInteger;
  REstadoCtaProv.QProv.Parameters.ParamByName('MON').DataType := ftInteger;
  REstadoCtaProv.QProv.Parameters.ParamByName('TIP').DataType := ftInteger;
  REstadoCtaProv.QProv.Parameters.ParamByName('SUP').DataType := ftInteger;
  REstadoCtaProv.QProv.Parameters.ParamByName('BAL').DataType := ftInteger;
  REstadoCtaProv.QProv.Parameters.ParamByName('FECHA').DataType := ftDateTime;
  REstadoCtaProv.QProv.Parameters.ParamByName('EMP').Value   := DM.vp_cia;
  IF ChkB_cksucursal.Checked THEN
  REstadoCtaProv.QProv.Parameters.ParamByName('SUC').Value   := dblkcbb1.KeyValue ELSE
  REstadoCtaProv.QProv.Parameters.ParamByName('SUC').Value   := DM.vp_cia;
  REstadoCtaProv.QProv.Parameters.ParamByName('FECHA').Value := Fecha.Date;
  if (trim(edDesde.Text) <> '') and (Trim(edHasta.Text) <> '') then
  REstadoCtaProv.QProv.Parameters.ParamByName('SUP').Value := edDesde.Text;

  if (trim(edDesde.Text) <> '') and (Trim(edHasta.Text) = '') then
  REstadoCtaProv.QProv.Parameters.ParamByName('SUP').Value := StrToInt(edDesde.Text);

  if (trim(edDesde.Text) = '') and (Trim(edHasta.Text) = '') then
  REstadoCtaProv.QProv.Parameters.ParamByName('SUP').Value := 0;
  
  if (trim(edmoneda.Text) <> '') then
  REstadoCtaProv.QProv.Parameters.ParamByName('MON').Value := StrToInt(edmoneda.Text) ELSE
  REstadoCtaProv.QProv.Parameters.ParamByName('MON').Value := 0;

  if (trim(edTipo.Text) <> '') then
  REstadoCtaProv.QProv.Parameters.ParamByName('TIP').Value := StrToInt(edTipo.Text) ELSE
  REstadoCtaProv.QProv.Parameters.ParamByName('TIP').Value := 0;

  REstadoCtaProv.QProv.Parameters.ParamByName('BAL').Value := cbBalance.ItemIndex;
  REstadoCtaProv.QProv.Open;



    REstadoCtaProv.QDocs.Close;
    REstadoCtaProv.QDocs.SQL.Clear;
    REstadoCtaProv.QDocs.SQL.Add('DECLARE @EMP INT, @FECHA DATETIME, @SUP INT');
    REstadoCtaProv.QDocs.SQL.Add('SET @EMP = :EMP_CODIGO');
    REstadoCtaProv.QDocs.SQL.Add('SET @FECHA = :FECHA');
    REstadoCtaProv.QDocs.SQL.Add('SET @SUP = :SUP_CODIGO');
    REstadoCtaProv.QDocs.SQL.Add('SELECT * FROM(');
    REstadoCtaProv.QDocs.SQL.Add('select f.FAC_FECHA, f.FAC_TOTAL, F.SUC_CODIGO,');
    REstadoCtaProv.QDocs.SQL.Add('f.FAC_NUMERO, f.EMP_CODIGO, f.SUP_CODIGO, @FECHA FECHA');
    REstadoCtaProv.QDocs.SQL.Add(',(select ISNULL(SUM(ISNULL(PAGO,0)),0) from contpr_detalle_pago_cxp (F.EMP_CODIGO, F.SUC_CODIGO, F.SUP_CODIGO, F.FAC_NUMERO,@FECHA))ABONO');
    REstadoCtaProv.QDocs.SQL.Add('FROM PROVFACTURAS F) AS TEMP');
    REstadoCtaProv.QDocs.SQL.Add('WHERE EMP_CODIGO = @EMP');
    REstadoCtaProv.QDocs.SQL.Add('AND sup_codigo = @SUP');
    REstadoCtaProv.QDocs.SQL.Add('AND FAC_TOTAL > 0');
    REstadoCtaProv.QDocs.SQL.Add('and FAC_FECHA <= @FECHA');
    IF ckMov.Checked THEN
    cbBalance.ItemIndex := 2;
    
case cbBalance.ItemIndex of
    1:REstadoCtaProv.QDocs.SQL.Add('AND (FAC_TOTAL - ABONO) = 0');
    2:REstadoCtaProv.QDocs.SQL.Add('AND (FAC_TOTAL - ABONO) >= 1');
    3:REstadoCtaProv.QDocs.SQL.Add('AND (FAC_TOTAL - ABONO) < 0');
end;



  //REstadoCtaProv.QDocs.SQL.Add(mmoMayorZero.Lines.GetText);



    IF REstadoCtaProv.vl_suc > 0 THEN
    REstadoCtaProv.QDocs.SQL.Add('AND SUC_CODIGO = '+IntToStr(REstadoCtaProv.vl_suc));



    REstadoCtaProv.QDocs.SQL.Add('ORDER BY FAC_FECHA');




  //REstadoCtaProv.QDocs.Parameters.ParamByName('MOV').Value := ckMov.Checked;


  REstadoCtaProv.QDocs.Parameters.ParamByName('EMP_CODIGO').DataType := ftInteger;
  REstadoCtaProv.QDocs.Parameters.ParamByName('SUP_CODIGO').DataType := ftInteger;
  REstadoCtaProv.QDocs.Parameters.ParamByName('FECHA').DataType      := ftDate;
  REstadoCtaProv.QPagos.Parameters.ParamByName('fecha').DataType     := ftDate;
  REstadoCtaProv.QDepositos.Parameters.ParamByName('fecha').DataType := ftDate;
  REstadoCtaProv.QNC.Parameters.ParamByName('fecha').DataType        := ftDate;
  REstadoCtaProv.QDesem.Parameters.ParamByName('fecha').DataType     := ftDate;
  REstadoCtaProv.QCargos.Parameters.ParamByName('fecha').DataType    := ftDate;

  REstadoCtaProv.QDocs.Parameters.ParamByName('fecha').Value         := Fecha.Date;
  REstadoCtaProv.QPagos.Parameters.ParamByName('fecha').Value        := Fecha.Date;
  REstadoCtaProv.QDepositos.Parameters.ParamByName('fecha').Value    := Fecha.Date;
  REstadoCtaProv.QNC.Parameters.ParamByName('fecha').Value           := Fecha.Date;
  REstadoCtaProv.QDesem.Parameters.ParamByName('fecha').Value        := Fecha.Date;
  REstadoCtaProv.QCargos.Parameters.ParamByName('fecha').Value       := Fecha.Date;

  REstadoCtaProv.vl_fecha := Fecha.Date;
  REstadoCtaProv.vl_bal   := cbBalance.ItemIndex;


  REstadoCtaProv.QDocs.Open;

  
  REstadoCtaProv.QPagos.Open;
  REstadoCtaProv.QDepositos.Open;
  REstadoCtaProv.QNC.Open;
  REstadoCtaProv.QDesem.Open;
  REstadoCtaProv.QCargos.Open;
  REstadoCtaProv.Fecha := Fecha.Date;
  REstadoCtaProv.PrinterSetup;
  REstadoCtaProv.Preview;
  REstadoCtaProv.Destroy;

  {Application.CreateForm(tREstadoCtaProv, REstadoCtaProv);
  REstadoCtaProv.QProv.SQL.Clear;
  REstadoCtaProv.QProv.SQL.Add('select sup_codigo, sup_nombre, sup_telefono,');
  REstadoCtaProv.QProv.SQL.Add('sup_balance, emp_codigo, sup_rnc');
  REstadoCtaProv.QProv.SQL.Add('from proveedores');
  REstadoCtaProv.QProv.SQL.Add('where emp_codigo = :par_invempresa');
  if cbStatus.ItemIndex = 1 then
  REstadoCtaProv.QProv.SQL.Add('and sup_status = '+#39+'ACT'+#39);
  if cbStatus.ItemIndex = 3 then
  REstadoCtaProv.QProv.SQL.Add('and sup_status = '+#39+'INA'+#39);
  if ((Trim(edDesde.Text)<> '') and (Trim(edHasta.Text)= '')) then
  REstadoCtaProv.QProv.SQL.Add('and sup_codigo = '+edDesde.Text);
  if ((Trim(edDesde.Text)= '') and (Trim(edHasta.Text)<> '')) then
  REstadoCtaProv.QProv.SQL.Add('and sup_codigo = '+edHasta.Text);
  if ((Trim(edDesde.Text)<> '') and (Trim(edHasta.Text)<> '')) then
  REstadoCtaProv.QProv.SQL.Add('and sup_codigo between '+edHasta.Text + ' and '+edHasta.Text);
  REstadoCtaProv.QProv.SQL.Add('and sup_balance > 0');
  REstadoCtaProv.QProv.SQL.Add('order by sup_nombre');
  REstadoCtaProv.QProv.Open;

  if dblkcbb1.KeyValue > 0 then
  REstadoCtaProv.vl_suc := dblkcbb1.KeyValue else
  REstadoCtaProv.vl_suc := 0;
  REstadoCtaProv.QRBand3.ForceNewPage := False;
  REstadoCtaProv.QDocs.SQL.Clear;
  REstadoCtaProv.QDocs.SQL.Add('SELECT FAC_FECHA, FAC_ABONO, FAC_TOTAL,');
  REstadoCtaProv.QDocs.SQL.Add('FAC_NUMERO, EMP_CODIGO, SUP_CODIGO');
  REstadoCtaProv.QDocs.SQL.Add('FROM PROVFACTURAS');
  REstadoCtaProv.QDocs.SQL.Add('WHERE EMP_CODIGO = :EMP_CODIGO');
  REstadoCtaProv.QDocs.SQL.Add('AND SUP_CODIGO = :SUP_CODIGO');
  case cbBalance.ItemIndex of
  0:REstadoCtaProv.QDocs.SQL.Add('AND FAC_STATUS <> '+#39+'ANU'+#39);
  1:REstadoCtaProv.QDocs.SQL.Add('AND FAC_STATUS = '+#39+'PAG'+#39);
  2:REstadoCtaProv.QDocs.SQL.Add('AND FAC_STATUS = '+#39+'PEN'+#39);
  3:REstadoCtaProv.QDocs.SQL.Add('AND FAC_TOTAL-FAC_ABONO < 0');
  end;

  REstadoCtaProv.QDocs.SQL.Add('AND FAC_FECHA <= :FECHA');
  REstadoCtaProv.QDocs.SQL.Add('ORDER BY FAC_FECHA');



  REstadoCtaProv.lbFecha.Caption := 'Al '+DateToStr(Date);
  REstadoCtaProv.QDocs.Parameters.ParamByName('fecha').DataType := ftDate;
  REstadoCtaProv.QDocs.Parameters.ParamByName('fecha').Value := Fecha.Date;

  REstadoCtaProv.QNC.Open;
  REstadoCtaProv.QDocs.Open;
  REstadoCtaProv.QPagos.Open;
  REstadoCtaProv.QDepositos.Open;
  REstadoCtaProv.QDesem.Open;
  REstadoCtaProv.QCargos.Open;
  REstadoCtaProv.PrinterSetup;
  REstadoCtaProv.Preview;
  REstadoCtaProv.Destroy;}
end;

procedure TfrmEstadoCtaProv.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmEstadoCtaProv.edTipoChange(Sender: TObject);
begin
  if trim(edTipo.text) = '' then tTipo.text := '';
end;

procedure TfrmEstadoCtaProv.edTipoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edTipo.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select tip_nombre');
      dm.Query1.sql.add('from tipo_proveedor');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and tip_codigo = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edTipo.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        tTipo.text := '';
        showmessage('ESTE TIPO NO EXISTE');
        edTipo.setfocus;
      end
      else
      begin
        tTipo.text := dm.Query1.fieldbyname('tipo_nombre').asstring;
      end;
    end;
  end;
end;

procedure TfrmEstadoCtaProv.bttipoClick(Sender: TObject);
begin
  Search.query.clear;
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Title := 'Tipos de proveedor';
  Search.ResultField := 'tip_codigo';
  Search.query.add('select tip_nombre, tip_codigo');
  Search.query.add('from tipo_proveedor');
  Search.query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  if search.execute then
  begin
    edTipo.text := search.valuefield;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tip_nombre from tipo_proveedor');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tip_codigo = '+edTipo.Text);
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Open;
    ttipo.Text := dm.Query1.FieldByname('tip_nombre').AsString;
    edTipo.SetFocus;
  end;
end;

procedure TfrmEstadoCtaProv.btmonedaClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.clear;
  Search.Query.add('select mon_sigla, mon_codigo');
  Search.Query.add('from moneda');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'mon_codigo';
  Search.Title := 'Moneda';
  if Search.execute then
  begin
    edmoneda.text := search.valuefield;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select mon_codigo, mon_sigla');
    dm.Query1.sql.add('from moneda');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and mon_codigo = :mon');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('mon').Value := StrToInt(edmoneda.Text);
    dm.Query1.open;
    tmoneda.text := dm.Query1.fieldbyname('mon_sigla').asstring;
  end;
end;

procedure TfrmEstadoCtaProv.edmonedaChange(Sender: TObject);
begin
  if trim(edMoneda.text) = '' then tMoneda.text := '';
end;

procedure TfrmEstadoCtaProv.edmonedaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edMoneda.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select mon_nombre');
      dm.Query1.sql.add('from Moneda');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and mon_codigo = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edMoneda.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        tMoneda.text := '';
        showmessage('ESTA MONEDA NO EXISTE');
        edMoneda.setfocus;
      end
      else
      begin
        tMoneda.text := dm.Query1.fieldbyname('mon_nombre').asstring;
      end;
    end;
  end;
end;

procedure TfrmEstadoCtaProv.FormActivate(Sender: TObject);
begin
if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    QSucursal.First;
  end;

  IF DM.QParametrosPAR_SUC_NCF.Value > 0 THEN BEGIN
  ChkB_cksucursal.Checked := True;
  ChkB_cksucursalClick(Self);
end;
end;

procedure TfrmEstadoCtaProv.ChkB_cksucursalClick(Sender: TObject);
begin
IF ChkB_cksucursal.Checked THEN BEGIN
dblkcbb1.KeyValue := DM.QParametrosPAR_SUC_NCF.Value;
end;
end;

procedure TfrmEstadoCtaProv.FormShow(Sender: TObject);
begin
IF DM.QParametrosPAR_SUC_NCF.Value > 0 THEN BEGIN
  ChkB_cksucursal.Checked := True;
  dblkcbb1.KeyValue := DM.QParametrosPAR_SUC_NCF.Value;
end;
end;


end.
