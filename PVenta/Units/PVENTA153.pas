unit PVENTA153;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Buttons, DB, ADODB, QuerySearchDlgADO,
  ExtCtrls, Grids, DBGrids, ComCtrls, DateUtils, QuickRpt, QRCtrls,
  QRExport;

type
  TfrmRepConciliacion = class(TForm)
    Search: TQrySearchDlgADO;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    dsSuc: TDataSource;
    btClose: TBitBtn;
    Label3: TLabel;
    btBanco: TSpeedButton;
    Label14: TLabel;
    edBanco: TEdit;
    tBanco: TEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    rgOrigen: TRadioGroup;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    edBalance: TEdit;
    Label2: TLabel;
    FechaBalance: TDateTimePicker;
    Label4: TLabel;
    Label5: TLabel;
    FechaAnt: TDateTimePicker;
    edBalAnterior: TEdit;
    QConciliacion: TADOQuery;
    QConciliacionemp_codigo: TIntegerField;
    QConciliacionsuc_codigo: TIntegerField;
    QConciliacionban_codigo: TIntegerField;
    QConciliacioncon_fecha: TDateTimeField;
    QConciliacioncon_balance: TBCDField;
    QConciliacioncon_dptransito: TBCDField;
    QConciliacioncon_cktransito: TBCDField;
    QConciliacioncon_debitos: TBCDField;
    QConciliacioncon_creditos: TBCDField;
    QConciliacioncon_dpmes: TBCDField;
    QConciliacioncon_debitomes: TBCDField;
    QConciliacioncon_ckmes: TBCDField;
    QConciliacioncon_creditosmes: TBCDField;
    QConciliacionusu_codigo: TIntegerField;
    QConciliacioncon_status: TStringField;
    dsConciliacion: TDataSource;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRShape16: TQRShape;
    QRShape15: TQRShape;
    QRShape14: TQRShape;
    QRShape13: TQRShape;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    lbBanco: TQRLabel;
    lbFecha: TQRLabel;
    QRLabel7: TQRLabel;
    lbFecha2: TQRLabel;
    QRShape1: TQRShape;
    lbValorsegun: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape2: TQRShape;
    lbDepositos: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape3: TQRShape;
    lbCheques: TQRLabel;
    QRLabel11: TQRLabel;
    lbFecha3: TQRLabel;
    QRShape5: TQRShape;
    lbSegunLibro: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    lbFecha4: TQRLabel;
    QRShape6: TQRShape;
    lbAnterior: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape7: TQRShape;
    lbDepMes: TQRLabel;
    QRShape8: TQRShape;
    lbCreditosMes: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape9: TQRShape;
    lbChequesMes: TQRLabel;
    QRLabel22: TQRLabel;
    QRShape10: TQRShape;
    lbCargosMes: TQRLabel;
    QRLabel24: TQRLabel;
    lbFecha5: TQRLabel;
    QRShape11: TQRShape;
    lbTotal: TQRLabel;
    lbCuenta: TQRLabel;
    Query2: TADOQuery;
    fecha3: TDateTimePicker;
    BitBtn2: TBitBtn;
    QRShape4: TQRShape;
    QRLabel9: TQRLabel;
    QRShape12: TQRShape;
    QRLabel12: TQRLabel;
    BitBtn3: TBitBtn;
    QRptConciliacion: TADOQuery;
    dsRpt: TDataSource;
    QRptConciliacioncat_cuenta: TStringField;
    QRptConciliacionban_nombre: TStringField;
    QRptConciliacionemp_codigo: TIntegerField;
    QRptConciliacionsuc_codigo: TIntegerField;
    QRptConciliacionban_codigo: TIntegerField;
    QRptConciliacioncon_fecha: TDateTimeField;
    QRptConciliacioncon_balance: TBCDField;
    QRptConciliacioncon_dptransito: TBCDField;
    QRptConciliacioncon_cktransito: TBCDField;
    QRptConciliacioncon_debitos: TBCDField;
    QRptConciliacioncon_creditos: TBCDField;
    QRptConciliacioncon_dpmes: TBCDField;
    QRptConciliacioncon_debitomes: TBCDField;
    QRptConciliacioncon_ckmes: TBCDField;
    QRptConciliacioncon_creditosmes: TBCDField;
    QRptConciliacionusu_codigo: TIntegerField;
    QRptConciliacioncon_status: TStringField;
    QRExcelFilter1: TQRExcelFilter;
    QRptConciliacionbal_anterior: TBCDField;
    QRptConciliacionfec_anterior: TDateField;
    qChequesTrans: TADOQuery;
    qChequesTransValor: TCurrencyField;
    qChequesTransMONTO_DP: TCurrencyField;
    QRptConciliacionban_cuenta: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure btBancoClick(Sender: TObject);
    procedure edBancoChange(Sender: TObject);
    procedure edBancoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FechaBalanceChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure QConciliacionAfterPost(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure dsConciliacionDataChange(Sender: TObject; Field: TField);
    procedure FechaAntChange(Sender: TObject);
  private
    vl_banco : Integer;
    { Private declarations }
  public
    { Public declarations }
    cuenta : string;
  end;

var
  frmRepConciliacion: TfrmRepConciliacion;

const
  DMes : array[1..12] of string = ('Ene','Feb','Mar','Abr','May','Jun','Jul','Ago','Sep','Oct','Nov','Dic');

implementation

uses SIGMA00, SIGMA01, Math;

{$R *.dfm}

procedure TfrmRepConciliacion.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
end;

procedure TfrmRepConciliacion.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepConciliacion.btBancoClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select ban_nombre, ban_codigo');
  Search.Query.Add('from bancos');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and suc_codigo = '+IntToStr(DBLookupComboBox2.KeyValue));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Title := 'Bancos';
  Search.ResultField := 'ban_codigo';
  if Search.execute then
  begin
    edBanco.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select ban_nombre, ban_codigo, ban_cuenta from bancos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ban_codigo = :cod');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('cod').Value := StrToInt(edBanco.Text);
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    dm.Query1.Open;
    tBanco.Text := dm.Query1.FieldByName('ban_nombre').AsString;
    cuenta := dm.Query1.FieldByName('BAN_CUENTA').AsString;
    vl_banco := dm.Query1.fieldbyname('ban_codigo').AsInteger;

    QConciliacion.Close;
    QConciliacion.Parameters.ParamByName('emp').Value := dm.vp_cia;
    QConciliacion.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    QConciliacion.Parameters.ParamByName('ban').Value := strtoint(edBanco.Text);
    QConciliacion.Open;
  end;
end;

procedure TfrmRepConciliacion.edBancoChange(Sender: TObject);
begin
  if Trim(edBanco.Text) = '' then tBanco.Text := '';
end;

procedure TfrmRepConciliacion.edBancoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

  if key = vk_return then
  begin
    if Trim(edBanco.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select ban_nombre, ban_codigo, BAN_CUENTA from bancos');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and ban_codigo = :cod');
      dm.Query1.SQL.Add('and suc_codigo = :suc');
      dm.Query1.Parameters.ParamByName('cod').Value := StrToInt(edBanco.Text);
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
      dm.Query1.Open;
      tBanco.Text := dm.Query1.FieldByName('ban_nombre').AsString;
      cuenta := dm.Query1.FieldByName('BAN_CUENTA').AsString;

      QConciliacion.Close;
      QConciliacion.Parameters.ParamByName('emp').Value := dm.vp_cia;
      QConciliacion.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
      QConciliacion.Parameters.ParamByName('ban').Value := strtoint(edBanco.Text);
      QConciliacion.Open;

      edBalAnterior.Enabled := QConciliacion.RecordCount = 0;
      FechaAnt.Enabled := QConciliacion.RecordCount = 0;
    end;
  end;
end;

procedure TfrmRepConciliacion.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmRepConciliacion.FechaBalanceChange(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select con_fecha');
  dm.Query1.SQL.Add('from conciliacion');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and suc_codigo = :suc');
  dm.Query1.SQL.Add('and ban_codigo = :ban');
  dm.Query1.SQL.Add('order by con_fecha');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
  dm.Query1.Parameters.ParamByName('ban').Value := StrToInt(edBanco.Text);
  dm.Query1.Open;
  dm.Query1.Last;
  //dm.Query1.Prior;
  if not dm.Query1.FieldByName('con_fecha').IsNull then
  FechaAnt.Date := dm.Query1.FieldByName('con_fecha').Value;
  begin
    if Trim(edBanco.Text) <> '' then
    begin
    {  dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select bal_'+DMes[MonthOf(FechaAnt.Date)]);
      dm.Query1.SQL.Add('from contbalances');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and suc_codigo = :suc');
      dm.Query1.SQL.Add('and cat_cuenta = :cta');
      dm.Query1.SQL.Add('and bal_ano = :ano');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
      dm.Query1.Parameters.ParamByName('cta').Value := cuenta;
      dm.Query1.Parameters.ParamByName('ano').Value := YearOf(FechaAnt.Date);
      dm.Query1.Open;}
      with DM.Query1 do begin
      Close;
      sql.Clear;
      SQL.Add('select top 1 con_balance');
      sql.Add('from conciliacion c ');
      sql.Add('left join bancos b on c.emp_codigo = b.emp_codigo and c.ban_codigo = b.ban_codigo and c.suc_codigo = b.suc_codigo ');
      sql.Add('where c.emp_codigo = :emp ');
      SQL.Add('and c.suc_codigo   = :suc ');
      SQL.Add('and c.ban_codigo = :ban');
      sql.Add('and c.con_Fecha    <= :fecha');
      sql.Add('order by c.con_Fecha desc');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
      dm.Query1.Parameters.ParamByName('ban').Value := StrToInt(edBanco.Text);
      dm.Query1.Parameters.ParamByName('fecha').Value := FechaBalance.Date;
      Open;
      edBalAnterior.Text := FormatCurr('#,0.00',fieldbyname('con_balance').AsCurrency);
      //edBalAnterior.Text := format('%n',[dm.Query1.FieldByName('bal_'+DMes[MonthOf(FechaAnt.Date)]).AsFloat]);
    end;
    end;
  end;
end;

procedure TfrmRepConciliacion.BitBtn1Click(Sender: TObject);
var
  segunlibro1, cardeb,
  carcre, balanterior,
  segunlibro2, depositos,
  cheques, creditos, cargos : double;
  fechaanterior : tdatetime;

begin
  carcre     := 0;
  cardeb     := 0;
  depositos  := 0;
  cheques    := 0;
  creditos   := 0;
  cargos     := 0;
  balanterior:= 0;

  QRptConciliacion.Close;
  QRptConciliacion.Open;
  if not QRptConciliacion.IsEmpty then
     begin
      lbCuenta.caption      := QRptConciliacionban_cuenta.AsString;
      lbBanco.caption       := QRptConciliacionban_nombre.AsString;
      lbFecha.caption       := QRptConciliacioncon_fecha.AsString;
      lbFecha2.caption      := QRptConciliacioncon_fecha.AsString;
      lbFecha3.caption      := QRptConciliacioncon_fecha.AsString;
      lbFecha5.caption      := QRptConciliacioncon_fecha.AsString;
      lbFecha4.Caption      := QRptConciliacionfec_anterior.asstring;
      lbValorsegun.caption  := format('%n',[QRptConciliacioncon_balance.Value-QRptConciliacioncon_dptransito.Value+QRptConciliacioncon_cktransito.Value]);
      //lbValorsegun.caption  := FormatCurr('#,0.00',StrToCurr(edBalance.Text));//format('%n',[QRptConciliacioncon_balance.Value]);//+QRptConciliacioncon_dptransito.Value+QRptConciliacioncon_cktransito.Value]);
      lbDepositos.Caption   := format('%n',[QRptConciliacioncon_dptransito.Value]);
      lbcheques.Caption     := format('%n',[QRptConciliacioncon_cktransito.Value]);
      lbAnterior.Caption    := format('%n',[QRptConciliacionbal_anterior.Value]);
      lbSegunLibro.Caption  := format('%n',[QRptConciliacioncon_balance.Value]);
      lbDepMes.Caption      := format('%n',[QRptConciliacioncon_dpmes.Value]);
      lbCreditosMes.Caption := format('%n',[QRptConciliacioncon_creditos.Value]);
      lbChequesMes.Caption  := format('%n',[QRptConciliacioncon_ckmes.Value]);
      lbCargosMes.Caption   := format('%n',[QRptConciliacioncon_debitomes.Value]);
      lbTotal.Caption       := format('%n',[(QRptConciliacionbal_anterior.Value+
                                            QRptConciliacioncon_dpmes.Value+
                                            QRptConciliacioncon_creditos.Value)-
                                            (QRptConciliacioncon_ckmes.Value+
                                            QRptConciliacioncon_debitomes.Value)]);


     { //balanceban+deptran-chetran+cardeb-carcre;
        //QRptConciliacioncon_balance.Value+QRptConciliacioncon_dptransito.Value
        //-QRptConciliacioncon_cktransito.Value+cardeb-carcre;
      lbSegunLibro.caption:=format('%n',[segunlibro1]);
      lbDepMes.Caption:=format('%n',[QRptConciliacioncon_dpmes.Value]);
      lbCreditosMes.Caption:=format('%n',[QRptConciliacioncon_creditosmes.Value]);
      lbChequesMes.Caption:=format('%n',[QRptConciliacioncon_ckmes.Value]);
      lbCargosMes.caption := format('%n',[QRptConciliacioncon_debitomes.Value]);

      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select con_fecha');
      dm.Query1.SQL.Add('from conciliacion');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and suc_codigo = :suc');
      dm.Query1.SQL.Add('and ban_codigo = :ban');
      dm.Query1.SQL.Add('order by con_fecha');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.ParamByName('suc').Value := QRptConciliacionsuc_codigo.value;
      dm.Query1.Parameters.ParamByName('ban').Value := QRptConciliacionban_codigo.value;
      dm.Query1.Open;
      dm.Query1.Last;
      if not dm.Query1.FieldByName('con_fecha').IsNull then
        fechaanterior := dm.Query1.FieldByName('con_fecha').Value;

      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select bal_'+DMes[MonthOf(fechaanterior)]);
      dm.Query1.SQL.Add('from contbalances');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and suc_codigo = :suc');
      dm.Query1.SQL.Add('and cat_cuenta = :cta');
      dm.Query1.SQL.Add('and bal_ano = :ano');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.ParamByName('suc').Value := QRptConciliacionsuc_codigo.value;
      dm.Query1.Parameters.ParamByName('cta').Value := QRptConciliacioncat_cuenta.AsString;
      dm.Query1.Parameters.ParamByName('ano').Value := YearOf(fechaanterior);
      dm.Query1.Open;
      If dm.Query1.IsEmpty then
         balanterior := 0
      else
        balAnterior := dm.Query1.FieldByName('bal_'+DMes[MonthOf(FechaAnt.Date)]).AsFloat;

      segunlibro2:=depositos+creditos-cheques-cargos+balAnterior;
      lbtotal.Caption:=format('%n',[segunlibro2]);
      lbAnterior.Caption:=format('%n',[balanterior]);
      lbFecha4.Caption:=datetostr(fechaanterior);
                     }
      QuickRep1.PrinterSetup;
      QuickRep1.Preview;
    end;
end;

procedure TfrmRepConciliacion.QConciliacionAfterPost(DataSet: TDataSet);
begin
  QConciliacion.UpdateBatch;
end;

procedure TfrmRepConciliacion.BitBtn2Click(Sender: TObject);
begin
  if messagedlg('Desea eliminar esta conciliacion?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    if QConciliacioncon_status.value = 'CER' then
      showmessage('Conciliaci�n esta cerrada')
    else
      with dm.Query1 do begin
      Close;
      SQL.Clear;
      SQL.Add('select * from conciliacion where emp_codigo = :emp and ban_codigo = :ban and suc_codigo = :suc and con_fecha > :fec');
      Parameters.ParamByName('emp').DataType := ftInteger;
      Parameters.ParamByName('suc').DataType := ftInteger;
      Parameters.ParamByName('ban').DataType := ftInteger;
      Parameters.ParamByName('fec').DataType := ftDate;
      Parameters.ParamByName('emp').Value := QConciliacionemp_codigo.Value;
      Parameters.ParamByName('suc').Value := QConciliacionsuc_codigo.Value;
      Parameters.ParamByName('ban').Value := QConciliacionban_codigo.Value;
      Parameters.ParamByName('fec').Value := QConciliacioncon_fecha.Value;
      Open;
      end;
      if not dm.Query1.IsEmpty then
      ShowMessage('Esta conciliacion no puede ser borrada, existe una conciliacion posterior'+Char(13)+
                   'Favor eliminar esta primero.....')
      else
      begin
      QConciliacion.delete;
      QConciliacion.UpdateBatch;
      QConciliacion.close;
      QConciliacion.open;
      edBalAnterior.Enabled := QConciliacion.RecordCount = 0;
      FechaAnt.Enabled := QConciliacion.RecordCount = 0;
    end;
  end;
end;

procedure TfrmRepConciliacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmRepConciliacion.FormCreate(Sender: TObject);
begin
  if not QRptConciliacion.Active then
     QRptConciliacion.Open;

     FechaBalance.Date := Date;
     FechaAnt.Date     := Date;

end;

procedure TfrmRepConciliacion.BitBtn3Click(Sender: TObject);
var
  depTran, DepApli, chetran,
  carcre, cardeb, balanceBan,
  segunlibro1, depositos, cheques,
  creditos, cargos, segunlibro2,
  balanterior   : double;
  fechaanterior : tdatetime;
  dia, mes, ano : word;
  fecha          :string;
begin
  carcre     := 0;
  deptran    := 0;
  chetran    := 0;
  cardeb     := 0;
  depositos  := 0;
  cheques    := 0;
  creditos   := 0;
  cargos     := 0;
  balanterior:= 0;

  if edbalance.text <> '' then balanceban := strtofloat(edbalance.text);
  decodedate(FechaBalance.date,ano,mes,dia);
  fecha:=inttostr(mes)+'-'+inttostr(dia)+'-'+inttostr(ano);
  lbCuenta.caption      := cuenta;
  lbBanco.caption       := tBanco.Text;

  lbFecha.caption       := datetostr(FechaBalance.date);
  lbFecha2.caption      := datetostr(FechaBalance.date);
  lbFecha3.caption      := datetostr(FechaBalance.date);
  lbFecha5.caption      := datetostr(FechaBalance.date);
  lbValorsegun.caption  := FormatCurr('#,0.00',StrToCurr(edBalance.Text));//format('%n',[balanceban]);

  // Depositos En Transito Y Cheques en Transinto
  with qChequesTrans do begin
  Close;
  Parameters.ParamByName('EMP').Value := dm.vp_cia;
  Parameters.ParamByName('SUC').Value := DBLookupComboBox2.KeyValue;
  Parameters.ParamByName('BAN').Value := StrToInt(edBanco.Text);
  Parameters.ParamByName('FECHA1').Value := fecha3.Date;
  Parameters.ParamByName('FECHA2').Value := FechaBalance.Date;
  Open;
  if not IsEmpty then begin
  chetran:= fieldbyname('MONTO_CK').asfloat;
  depTran:= fieldbyname('MONTO_DP').asfloat;
  end;
  lbDepositos.Caption:=format('%n',[depTran]);
  lbcheques.Caption  :=format('%n',[chetran]);
  end;

  // balance segun libro
  segunlibro1:=balanceban+deptran-chetran+cardeb-carcre;
  lbSegunLibro.caption:=format('%n',[segunlibro1]);

  //Reconciliacion Bancaria

  // Depositos del Mes
  dm.Query1.sql.clear;
  dm.query1.sql.add('SELECT SUM(DEP_MONTO) as valor  FROM DEPOSITOS');
  dm.query1.sql.add('WHERE emp_codigo = :emp');
  dm.query1.sql.add('AND ban_codigo = :ban');
  dm.query1.sql.add('and suc_codigo = :suc');
  dm.query1.sql.add('and DEP_mes='+inttostr(mes));
  dm.query1.SQL.Add('and DEP_ano='+inttostr(ano));
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
  dm.Query1.Parameters.ParamByName('ban').Value := StrToInt(edBanco.Text);
  dm.QUERY1.OPEN;

  if not dm.query1.FieldByName('Valor').isnull then
     depositos:=dm.query1.fieldbyname('valor').asfloat;

  lbDepMes.Caption:=format('%n',[depositos]);

  // Otros Creditos del Mes
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select sum(car_monto_banco) as Valor from cargosbanco');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and ban_codigo = :ban');
  dm.Query1.sql.add('and suc_codigo = :suc');
  dm.query1.sql.add('and car_forma=:Tipo');
  dm.query1.sql.add('and car_mes='+inttostr(mes));
  dm.query1.SQL.Add('and car_ano='+inttostr(ano));
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
  dm.Query1.Parameters.ParamByName('ban').Value := StrToInt(edBanco.Text);
  dm.query1.Parameters.ParamByName('tipo').Value:='C';
  dm.query1.open;

  if not dm.query1.FieldByName('Valor').isnull then
     creditos:=dm.query1.fieldbyname('valor').asfloat;

  lbCreditosMes.Caption:=format('%n',[Creditos]);

  // Cheques del Mes
  fecha3.date := FechaAnt.Date + 1 ;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select sum(CHE_monto_banco) as Valor from cheques');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and ban_codigo = :ban');
  dm.Query1.sql.add('and suc_codigo = :suc');
  dm.query1.sql.add('AND CHE_FECHA BETWEEN convert(datetime,:fecha1,105) +1 AND convert(datetime,:fecha2,105)');
  dm.query1.sql.add('AND CHE_STATUS <> '+QuotedStr('ANU'));
  dm.query1.Parameters.ParamByName('fecha1').DataType := ftDate;
  dm.query1.Parameters.ParamByName('fecha2').DataType := ftDate;
  dm.query1.Parameters.ParamByName('fecha1').Value := FechaAnt.Date;
  dm.query1.Parameters.ParamByName('fecha2').Value := FechaBalance.Date;
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
  dm.Query1.Parameters.ParamByName('ban').Value := StrToInt(edBanco.Text);
  dm.query1.Open;

  if not dm.query1.FieldByName('Valor').isnull then cheques:=dm.query1.fieldbyname('valor').asfloat;
  lbChequesMes.Caption:=format('%n',[cheques]);

  // Cargos del mes
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select sum(car_monto_banco) as Valor from cargosbanco');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and ban_codigo = :ban');
  dm.Query1.sql.add('and suc_codigo = :suc');
  dm.query1.sql.add('and car_forma = :Tipo');
  dm.query1.sql.add('and car_mes='+inttostr(mes));
  dm.query1.SQL.Add('and car_ano='+inttostr(ano));
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
  dm.Query1.Parameters.ParamByName('ban').Value := StrToInt(edBanco.Text);
  dm.query1.Parameters.ParamByName('tipo').Value:='D';
  dm.query1.open;

  if not dm.query1.FieldByName('Valor').isnull then
     cargos:=dm.query1.fieldbyname('valor').asfloat;
  lbCargosMes.caption := format('%n',[cargos]);

  // Otros Cargos del mes
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select sum(car_monto_banco) as Valor from cargosbanco');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and ban_codigo = :ban');
  dm.Query1.sql.add('and suc_codigo = :suc');
  dm.query1.sql.add('and car_forma = :Tipo');
  dm.query1.sql.add('and car_mes='+inttostr(mes));
  dm.query1.SQL.Add('and car_ano='+inttostr(ano));
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
  dm.Query1.Parameters.ParamByName('ban').Value := StrToInt(edBanco.Text);
  dm.query1.Parameters.ParamByName('tipo').Value:='C';
  dm.query1.open;

  if not dm.query1.FieldByName('Valor').isnull then
  carcre:=dm.query1.fieldbyname('valor').asfloat;
  lbCreditosMes.caption := format('%n',[cargos]);

  if (QConciliacioncon_fecha.Value = FechaBalance.date) then
  begin
     if(QConciliacion.recordcount>1) then
     begin
       QConciliacion.prior;
       balanterior:=QConciliacioncon_balance.value;
       fechaanterior:=QConciliacioncon_fecha.value;
       QConciliacion.First;
       QConciliacion.Edit;
       QConciliacioncon_balance.value:=StrToCurr(edBalance.Text)+depTran-chetran;//depositos+creditos-cheques-cargos+balAnterior;
       QConciliacioncon_fecha.Value:=FechaBalance.date;
       QConciliacioncon_CKmes.value:=cheques;
       QConciliacioncon_cktransito.Value:=chetran;
       QConciliacioncon_creditos.value:=carcre;
       QConciliacioncon_creditosmes.value:=creditos;
       QConciliacioncon_debitos.value:=cardeb;
       QConciliacioncon_debitomes.value:=cargos;
       QConciliacioncon_dptransito.Value :=depTran;
       QConciliacioncon_dpmes.value := depositos;
       QConciliacion.post;
     end;
  end;

  if (QConciliacioncon_fecha.Value<>FechaBalance.date) then
  begin
     if edBalAnterior.enabled then
     begin
       if edBalAnterior.text <> '' then
       begin
       balanterior:=strtofloat(edBalAnterior.text);
       fechaanterior:=FechaAnt.date;
       end
     end
     else
     begin
       fechaanterior:=QConciliacioncon_fecha.value;
       balanterior:=QConciliacioncon_balance.value;
     end;
     QConciliacion.open;
     QConciliacion.Insert;
     QConciliacionusu_codigo.value:=dm.Usuario;
     QConciliacionban_codigo.value:=strtoint(edbanco.text);
     QConciliacionemp_codigo.Value := dm.vp_cia;
     QConciliacionsuc_codigo.Value := DBLookupComboBox2.KeyValue;
     //QConciliacioncon_balance.value:=depositos+creditos-cheques-cargos+balAnterior;
     QConciliacioncon_balance.value:=StrToCurr(edBalance.Text)+depTran-chetran; //depositos+creditos-cheques-cargos+balAnterior;
     QConciliacioncon_fecha.Value:=FechaBalance.date;
     QConciliacioncon_ckmes.value:=cheques;
     QConciliacioncon_cktransito.Value:=chetran;
     QConciliacioncon_creditos.value:=carcre;
     QConciliacioncon_creditosmes.value:=creditos;
     QConciliacioncon_debitos.value:=cardeb;
     QConciliacioncon_debitomes.value:=cargos;
     QConciliacioncon_dptransito.Value :=depTran;
     QConciliacioncon_dpmes.value := depositos;
     QConciliacion.post;
  end;
  QConciliacion.UpdateBatch;

  QConciliacion.Close;
  QConciliacion.Open;
end;

procedure TfrmRepConciliacion.dsConciliacionDataChange(Sender: TObject;
  Field: TField);
begin
  BitBtn1.Enabled := not QConciliacion.IsEmpty;
end;

procedure TfrmRepConciliacion.FechaAntChange(Sender: TObject);
begin
fecha3.Date := FechaBalance.Date + 1;
end;

end.
