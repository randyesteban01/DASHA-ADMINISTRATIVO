unit PVENTA58;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, ExtCtrls, Grids, DBGrids, StdCtrls,
  ComCtrls, Buttons, ADODB, QuerySearchDlgADO, DBCtrls, Menus;

type
  TfrmConsCxP = class(TForm)
    QProv: TADOQuery;
    dsProv: TDataSource;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    btClose: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    QFac: TADOQuery;
    QFacFAC_NUMERO: TIBStringField;
    QFacFAC_FECHA: TDateTimeField;
    QFacFAC_VENCE: TDateTimeField;
    QFacFAC_TOTAL: TFloatField;
    QFacFAC_ABONO: TFloatField;
    dsFac: TDataSource;
    QFacSaldo: TFloatField;
    QFacEMP_CODIGO: TIntegerField;
    QFacSUP_CODIGO: TIntegerField;
    QProvEMP_CODIGO: TIntegerField;
    QProvSUP_CODIGO: TIntegerField;
    QProvSUP_NOMBRE: TIBStringField;
    QProvBALANCE: TFloatField;
    btRefresh: TBitBtn;
    QProvid: TAutoIncField;
    btFind: TBitBtn;
    Search: TQrySearchDlgADO;
    DBGrid3: TDBGrid;
    QFacfac_concepto: TStringField;
    QProvsup_telefono: TStringField;
    QProvsup_limite: TBCDField;
    QProvsup_rnc: TStringField;
    PopupMenu1: TPopupMenu;
    QFacfac_itbis: TBCDField;
    QFacfac_exento: TBCDField;
    QFacfac_grabado: TBCDField;
    QProvVENCIDO: TBCDField;
    Memo1: TMemo;
    Panel4: TPanel;
    Label12: TLabel;
    btMoneda: TSpeedButton;
    tMoneda: TEdit;
    edMoneda: TEdit;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    dsSuc: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    cksucursal: TCheckBox;
    Label1: TLabel;
    bttipo: TSpeedButton;
    tTipo: TEdit;
    edTipo: TEdit;
    Panel3: TPanel;
    LabelDia1: TLabel;
    LabelDia2: TLabel;
    LabelDia3: TLabel;
    LabelDia4: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    lbCondi1: TStaticText;
    lbCondi2: TStaticText;
    lbCondi3: TStaticText;
    lbCondi4: TStaticText;
    lbVencido: TStaticText;
    lbtotal: TStaticText;
    QAntig: TADOQuery;
    QAntigid: TAutoIncField;
    QAntigSUP_CODIGO: TIntegerField;
    QAntigSUP_NOMBRE: TStringField;
    QAntigSUP_TELEFONO: TStringField;
    QAntigSUP_RNC: TStringField;
    QAntigBALANCE: TBCDField;
    QAntigDIA1: TBCDField;
    QAntigDIA2: TBCDField;
    QAntigDIA3: TBCDField;
    QAntigDIA4: TBCDField;
    dsAntig: TDataSource;
    Verpagos1: TMenuItem;
    qRepBalanceFact: TADOQuery;
    PopupMenu2: TPopupMenu;
    MenuItem2: TMenuItem;
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure QFacCalcFields(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure ckfiltroClick(Sender: TObject);
    procedure edMonedaChange(Sender: TObject);
    procedure btMonedaClick(Sender: TObject);
    procedure edMonedaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edTipoChange(Sender: TObject);
    procedure edTipoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bttipoClick(Sender: TObject);
    procedure dsAntigDataChange(Sender: TObject; Field: TField);
    procedure Verpagos1Click(Sender: TObject);
    procedure QProvAfterOpen(DataSet: TDataSet);
    procedure QFacBeforeOpen(DataSet: TDataSet);
    procedure QAntigBeforeOpen(DataSet: TDataSet);
    procedure MenuItem2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Orden : String;
  end;

var
  frmConsCxP: TfrmConsCxP;

implementation

uses RVENTA14, RVENTA48, SIGMA00, SIGMA01, PVENTA91, RVENTA116, PVENTA229;

{$R *.dfm}

procedure TfrmConsCxP.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmConsCxP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConsCxP.FormActivate(Sender: TObject);
var
  Total, Vencidos : double;
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select par_dia1label, par_dia2label,');
  dm.Query1.SQL.Add('par_dia3label, par_dia4label');
  dm.Query1.SQL.Add('from PARAMANTIGSALDO');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Open;
  LabelDia1.Caption := dm.Query1.FieldByName('par_dia1label').AsString;
  LabelDia2.Caption := dm.Query1.FieldByName('par_dia2label').AsString;
  LabelDia3.Caption := dm.Query1.FieldByName('par_dia3label').AsString;
  LabelDia4.Caption := dm.Query1.FieldByName('par_dia4label').AsString;


  if not QProv.active then
  begin
    QProv.Close;
    QProv.SQL.Clear;
    QProv.SQL.Add(Memo1.Lines.GetText);
    QProv.SQL.Add(Orden);
    QProv.Parameters.ParamByName('fec').DataType := ftDate;
    QProv.Parameters.ParamByName('mon').DataType := ftInteger;
    QProv.Parameters.ParamByName('suc').DataType := ftInteger;
    QProv.Parameters.ParamByName('emp').DataType := ftInteger;
    QProv.Parameters.ParamByName('fec').Value := Date;
    QProv.Parameters.ParamByName('mon').Value := 1;
    QProv.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    QProv.Parameters.ParamByName('emp').Value := dm.vp_cia;
    QProv.open;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(sum(balance),0) as total, isnull(sum(vencido),0) as vencido');
    dm.Query1.SQL.Add('from pr_cxp (:emp, :suc, :fec, 0)');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;
    dm.Query1.Parameters.parambyname('fec').Value := Date;
    dm.Query1.Open;
    Total := dm.Query1.FieldByName('total').Value;
    Vencidos := dm.Query1.FieldByName('vencido').Value;

    lbTotal.caption := format('%n',[Total]);
    lbVencido.caption := format('%n',[Vencidos]);

    {QAntig.Parameters.ParamByName('fecha').DataType := ftDate;
    QAntig.Parameters.ParamByName('fecha').Value := Date;
    QAntig.Open;}

    {Total := 0;
    Vencidos := 0;
    while not QProv.eof do
    begin
      Total := Total + QProvBalance.value;
      Vencidos := Vencidos + QProvVENCIDO.Value;
      QProv.next;
    end;
    QProv.First;
    QProv.enablecontrols;
    lbTotal.caption := format('%n',[Total]);
    lbVencido.caption := format('%n',[Vencidos]);}
    DBGrid1.SetFocus;
  end;
  frmMain.ExportXLS.Sheets[0].DBGrid := DBGrid1;
  frmMain.ExportXLS.Sheets[1].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[0].Exported := True;
end;

procedure TfrmConsCxP.QFacCalcFields(DataSet: TDataSet);
begin
  QFacSaldo.value := QFacFAC_TOTAL.value - QFacFAC_ABONO.value;
end;

procedure TfrmConsCxP.BitBtn2Click(Sender: TObject);
begin
  if MessageDlg('Imprimir detallado?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    Application.CreateForm(tRConsCxP, RConsCxP);
    RConsCxP.QProv.SQL := QProv.SQL;
    RConsCxP.QProv.Parameters.ParamByName('fec').Value := Date;
    RConsCxP.lbmoneda.Caption := tMoneda.Text;
    if Trim(edMoneda.Text) <> '' then
    begin
      RConsCxP.QProv.Parameters.ParamByName('mon').Value := StrToInt(edMoneda.Text);
      RConsCxP.QFac.SQL.Clear;
      RConsCxP.QFac.SQL.Add('select FAC_NUMERO, FAC_FECHA, FAC_VENCE, (FAC_TOTAL/fac_tasa) as fac_total,');
      RConsCxP.QFac.SQL.Add('(FAC_ABONO/fac_tasa) as fac_abono, EMP_CODIGO, sup_codigo,');
      RConsCxP.QFac.SQL.Add('DATEDIFF(day, fac_fecha, getdate()) AS DiasFac from PROVFACTURAS');
      RConsCxP.QFac.SQL.Add('where emp_codigo = :emp_codigo');
      RConsCxP.QFac.SQL.Add('and sup_codigo = :sup_codigo');
      RConsCxP.QFac.SQL.Add('and fac_status = '+QuotedStr('PEN'));
      RConsCxP.QFac.SQL.Add('and mon_codigo = '+Trim(edMoneda.Text));
      //if cksucursal.Checked then
     // begin
        RConsCxP.QFac.SQL.Add('and suc_codigo ='+IntToStr(DBLookupComboBox2.KeyValue));
     // end
     // else
     //   RConsCxP.QFac.SQL.Add('and suc_codigo between 1 and 999');

      RConsCxP.QFac.SQL.Add('order by fac_fecha');
    end
    else
    begin
      RConsCxP.QProv.Parameters.ParamByName('mon').Value := 0;
      if cksucursal.Checked then
      begin
        RConsCxP.QFac.Parameters.ParamByName('suc1').Value := DBLookupComboBox2.KeyValue;
        RConsCxP.QFac.Parameters.ParamByName('suc2').Value := DBLookupComboBox2.KeyValue;
      end
      else
      begin
        RConsCxP.QFac.Parameters.ParamByName('suc1').Value := QSucursalsuc_codigo.Value;
        RConsCxP.QFac.Parameters.ParamByName('suc2').Value := QSucursalsuc_codigo.Value;
      end;
    end;

    RConsCxP.QProv.Parameters.ParamByName('emp').Value := QProvEMP_CODIGO.Value;
    if cksucursal.Checked then
      RConsCxP.QProv.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue
    else
      RConsCxP.QProv.Parameters.ParamByName('suc').Value := QSucursalsuc_codigo.Value;

    RConsCxP.QProv.open;
    RConsCxP.QFac.Open;
    RConsCxP.lbFecha.Caption := 'Al '+DateToStr(Date);

    //RConsCxP.vl_fecha := Now;
    //RConsCxP.vl_bal   := 0;

    RConsCxP.PrinterSetup;
    RConsCxP.Preview;
    RConsCxP.Destroy;
  end
  else
  begin
    Application.CreateForm(tRCxPGeneral, RCxPGeneral);
    RCxPGeneral.lbFecha.Caption := 'Al '+DateToStr(date);
    if trim(edtipo.text) <> '' then
      RCxPGeneral.QProveedores.SQL.Add('and p.tip_codigo = '+trim(edtipo.text));

    RCxPGeneral.QProveedores.SQL.Add('group by p.sup_codigo, p.sup_nombre, p.sup_rnc, p.sup_telefono,');
    RCxPGeneral.QProveedores.SQL.Add('p.sup_limite');
    RCxPGeneral.QProveedores.SQL.Add('having sum(isnull((f.fac_total-f.fac_abono),0)) > 0');
    RCxPGeneral.QProveedores.SQL.Add('order by 2');

    RCxPGeneral.QProveedores.Parameters.ParamByName('emp').Value := dm.vp_cia;
    RCxPGeneral.QProveedores.Parameters.ParamByName('invemp').Value := dm.vp_cia;
    RCxPGeneral.QProveedores.Open;
    RCxPGeneral.PrinterSetup;
    RCxPGeneral.Preview;
    RCxPGeneral.Destroy;
  end;
end;

procedure TfrmConsCxP.FormPaint(Sender: TObject);
begin
  with frmConsCxP do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmConsCxP.BitBtn1Click(Sender: TObject);
begin
  Application.CreateForm(tREstadoCtaProv, REstadoCtaProv);
  REstadoCtaProv.lbtipo.Caption := tTipo.Text;
  REstadoCtaProv.QRBand3.ForceNewPage := False;
  REstadoCtaProv.detallado := True;

  REstadoCtaProv.QPagos.Close;
  REstadoCtaProv.QDepositos.Close;
  REstadoCtaProv.QNC.Close;
  REstadoCtaProv.QDesem.Close;
  REstadoCtaProv.QCargos.Close;

  if cksucursal.Checked then
  REstadoCtaProv.vl_suc := DBLookupComboBox2.KeyValue else
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
  REstadoCtaProv.QProv.SQL.Add('and S.sup_status = '+#39+'ACT'+#39);
  REstadoCtaProv.QProv.SQL.Add('and S.sup_codigo in (SELECT sup_codigo FROM @vcxp_fecha)');

  REstadoCtaProv.lbFecha.Caption := 'Al '+DateToStr(Date);
  REstadoCtaProv.QProv.Parameters.ParamByName('EMP').DataType := ftInteger;
  REstadoCtaProv.QProv.Parameters.ParamByName('SUC').DataType := ftInteger;
  REstadoCtaProv.QProv.Parameters.ParamByName('MON').DataType := ftInteger;
  REstadoCtaProv.QProv.Parameters.ParamByName('TIP').DataType := ftInteger;
  REstadoCtaProv.QProv.Parameters.ParamByName('SUP').DataType := ftInteger;
  REstadoCtaProv.QProv.Parameters.ParamByName('BAL').DataType := ftInteger;
  REstadoCtaProv.QProv.Parameters.ParamByName('FECHA').DataType := ftDateTime;
  REstadoCtaProv.QProv.Parameters.ParamByName('EMP').Value   := DM.vp_cia;
  IF cksucursal.Checked THEN
  REstadoCtaProv.QProv.Parameters.ParamByName('SUC').Value   := DBLookupComboBox2.KeyValue ELSE
  REstadoCtaProv.QProv.Parameters.ParamByName('SUC').Value   := DM.vp_cia;
  REstadoCtaProv.QProv.Parameters.ParamByName('FECHA').Value := Date;
  REstadoCtaProv.QProv.Parameters.ParamByName('SUP').Value   := QProvSUP_CODIGO.Value;
  REstadoCtaProv.QProv.Parameters.ParamByName('MON').Value := 0;
  REstadoCtaProv.QProv.Parameters.ParamByName('TIP').Value := 0;
  REstadoCtaProv.QProv.Parameters.ParamByName('BAL').Value := 0;
  REstadoCtaProv.QProv.Open;



    REstadoCtaProv.QDocs.Close;
    REstadoCtaProv.QDocs.SQL.Clear;
    REstadoCtaProv.QDocs.SQL.Add('DECLARE @EMP INT, @FECHA DATETIME, @SUP INT');
    REstadoCtaProv.QDocs.SQL.Add('SET @EMP = :EMP_CODIGO');
    REstadoCtaProv.QDocs.SQL.Add('SET @FECHA = :FECHA');
    REstadoCtaProv.QDocs.SQL.Add('SET @SUP = :SUP_CODIGO');
    REstadoCtaProv.QDocs.SQL.Add('SELECT * FROM(');
    REstadoCtaProv.QDocs.SQL.Add('select f.FAC_FECHA, FAC_STATUS, f.FAC_TOTAL, F.SUC_CODIGO,');
    REstadoCtaProv.QDocs.SQL.Add('f.FAC_NUMERO, f.EMP_CODIGO, f.SUP_CODIGO, @FECHA FECHA');
    REstadoCtaProv.QDocs.SQL.Add(',(select ISNULL(SUM(ISNULL(PAGO,0)),0) from contpr_detalle_pago_cxp (F.EMP_CODIGO, F.SUC_CODIGO, F.SUP_CODIGO, F.FAC_NUMERO,@FECHA))ABONO');
    REstadoCtaProv.QDocs.SQL.Add('FROM PROVFACTURAS F) AS TEMP');
    REstadoCtaProv.QDocs.SQL.Add('WHERE EMP_CODIGO = @EMP');
    REstadoCtaProv.QDocs.SQL.Add('AND sup_codigo = @SUP');
    REstadoCtaProv.QDocs.SQL.Add('AND FAC_TOTAL > 0');
    REstadoCtaProv.QDocs.SQL.Add('and FAC_FECHA <= @FECHA');
    REstadoCtaProv.QDocs.SQL.Add('AND FAC_STATUS ='+QuotedStr('PEN'));



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

  REstadoCtaProv.QDocs.Parameters.ParamByName('fecha').Value         := Date;
  REstadoCtaProv.QPagos.Parameters.ParamByName('fecha').Value        := Date;
  REstadoCtaProv.QDepositos.Parameters.ParamByName('fecha').Value    := Date;
  REstadoCtaProv.QNC.Parameters.ParamByName('fecha').Value           := Date;
  REstadoCtaProv.QDesem.Parameters.ParamByName('fecha').Value        := Date;
  REstadoCtaProv.QCargos.Parameters.ParamByName('fecha').Value       := Date;

  REstadoCtaProv.vl_fecha := Date;
  REstadoCtaProv.vl_bal   := 2;


  REstadoCtaProv.QDocs.Open;
  REstadoCtaProv.QPagos.Open;
  REstadoCtaProv.QDepositos.Open;
  REstadoCtaProv.QNC.Open;
  REstadoCtaProv.QDesem.Open;
  REstadoCtaProv.QCargos.Open;
  REstadoCtaProv.Fecha := Date;
  REstadoCtaProv.PrinterSetup;
  REstadoCtaProv.Preview;
  REstadoCtaProv.Destroy;

{  Application.CreateForm(tREstadoCtaProv, REstadoCtaProv);
  REstadoCtaProv.lbtipo.Caption := tTipo.Text;
  REstadoCtaProv.QRBand3.ForceNewPage := False;
  REstadoCtaProv.detallado := False;
  if cksucursal.Checked then
  REstadoCtaProv.vl_suc := DBLookupComboBox2.KeyValue else
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
  REstadoCtaProv.QProv.SQL.Add('select s.sup_codigo, s.sup_nombre, s.sup_telefono,s.emp_codigo, s.sup_rnc,');
  REstadoCtaProv.QProv.SQL.Add(' s.sup_status, s.tip_codigo, @FECHA FECHA from Proveedores S');
  REstadoCtaProv.QProv.SQL.Add('where s.emp_codigo = @emp');
  REstadoCtaProv.QProv.SQL.Add('and S.sup_status = '+#39+'ACT'+#39);
  REstadoCtaProv.QProv.SQL.Add('and S.sup_codigo = '+Trim(QProvSUP_CODIGO.Text));

  REstadoCtaProv.lbFecha.Caption := 'Al '+DateToStr(Date);
  REstadoCtaProv.QProv.Parameters.ParamByName('EMP').DataType := ftInteger;
  REstadoCtaProv.QProv.Parameters.ParamByName('SUC').DataType := ftInteger;
  REstadoCtaProv.QProv.Parameters.ParamByName('MON').DataType := ftInteger;
  REstadoCtaProv.QProv.Parameters.ParamByName('TIP').DataType := ftInteger;
  REstadoCtaProv.QProv.Parameters.ParamByName('SUP').DataType := ftInteger;
  REstadoCtaProv.QProv.Parameters.ParamByName('BAL').DataType := ftInteger;
  REstadoCtaProv.QProv.Parameters.ParamByName('FECHA').DataType := ftDateTime;
  REstadoCtaProv.QProv.Parameters.ParamByName('EMP').Value   := DM.vp_cia;
  IF cksucursal.Checked THEN
  REstadoCtaProv.QProv.Parameters.ParamByName('SUC').Value   := DBLookupComboBox2.KeyValue ELSE
  REstadoCtaProv.QProv.Parameters.ParamByName('SUC').Value   := DM.vp_cia;
  REstadoCtaProv.QProv.Parameters.ParamByName('FECHA').Value := Date;
  REstadoCtaProv.QProv.Parameters.ParamByName('SUP').Value := StrToInt(QProvSUP_CODIGO.Text);
  REstadoCtaProv.QProv.Parameters.ParamByName('MON').Value := 0;
  REstadoCtaProv.QProv.Parameters.ParamByName('TIP').Value := 0;
  REstadoCtaProv.QProv.Parameters.ParamByName('BAL').Value := 2;
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
    REstadoCtaProv.QDocs.SQL.Add('AND (FAC_TOTAL - ABONO) > 0');
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

  REstadoCtaProv.QDocs.Parameters.ParamByName('fecha').Value         := Date;
  REstadoCtaProv.QPagos.Parameters.ParamByName('fecha').Value        := Date;
  REstadoCtaProv.QDepositos.Parameters.ParamByName('fecha').Value    := Date;
  REstadoCtaProv.QNC.Parameters.ParamByName('fecha').Value           := Date;
  REstadoCtaProv.QDesem.Parameters.ParamByName('fecha').Value        := Date;
  REstadoCtaProv.QCargos.Parameters.ParamByName('fecha').Value       := Date;

  REstadoCtaProv.vl_fecha := Date;
  REstadoCtaProv.vl_bal   := 2;

  REstadoCtaProv.QDocs.Open;


  REstadoCtaProv.QPagos.Open;
  REstadoCtaProv.QDepositos.Open;
  REstadoCtaProv.QNC.Open;
  REstadoCtaProv.QDesem.Open;
  REstadoCtaProv.QCargos.Open;
  REstadoCtaProv.Fecha := Date;
  REstadoCtaProv.PrinterSetup;
  REstadoCtaProv.Preview;
  REstadoCtaProv.Destroy;
 }

end;

procedure TfrmConsCxP.btRefreshClick(Sender: TObject);
var
  Total, Vencidos : Double;
  punt  : TBookmark;
begin
   //ACTUALIZA BALANCES
  DM.ADOSigma.Execute('EXEC pr_actualiza_bce '+IntToStr(DM.vp_cia));

  QProv.Close;
  QProv.SQL.Clear;
  QProv.SQL := Memo1.Lines;

  if Trim(edMoneda.Text) <> '' then
  begin
     QProv.Parameters.ParamByName('mon').Value := StrToInt(edMoneda.Text);

     dm.Query1.Close;
     dm.Query1.SQL.Clear;
     dm.Query1.SQL.Add('select mon_relacionpesoventa from moneda');
     dm.Query1.SQL.Add('where emp_codigo = :emp and mon_codigo = :mon');
     dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
     dm.Query1.Parameters.ParamByName('mon').Value := StrToInt(edMoneda.Text);
     dm.Query1.Open;
     if dm.Query1.FieldByName('mon_relacionpesoventa').Value > 1 then
     begin
       QFac.Close;
       QFac.SQL.Clear;
       QFac.SQL.Add('select distinct f.FAC_NUMERO, f.FAC_FECHA, f.FAC_VENCE, (f.FAC_TOTAL/isnull(f.fac_tasa,1)) as fac_total,');
       QFac.SQL.Add('(f.FAC_ABONO/isnull(f.fac_tasa,1)) as fac_abono, f.EMP_CODIGO, f.sup_codigo, f.fac_concepto,');
       QFac.SQL.Add('(f.fac_itbis/isnull(f.fac_tasa,1)) as fac_itbis, (f.fac_exento/isnull(f.fac_tasa,1)) as fac_exento,');
       QFac.SQL.Add('(f.fac_grabado/isnull(f.fac_tasa,1)) as fac_grabado');
     end
     else
     begin
       QFac.Close;
       QFac.SQL.Clear;
       QFac.SQL.Add('select distinct f.FAC_NUMERO, f.FAC_FECHA, f.FAC_VENCE, f.FAC_TOTAL,');
       QFac.SQL.Add('f.FAC_ABONO, f.EMP_CODIGO, f.sup_codigo, f.fac_concepto,');
       QFac.SQL.Add('f.fac_itbis, f.fac_exento, f.fac_grabado');
     end;

     QFac.SQL.Add('from PROVFACTURAS f');
     QFac.SQL.Add('where f.emp_codigo = :emp_codigo');
     QFac.SQL.Add('and f.sup_codigo = :sup_codigo');
     QFac.SQL.Add('and f.fac_status = '+QuotedStr('PEN'));
     QFac.SQL.Add('and f.mon_codigo = '+edMoneda.Text);

     if cksucursal.Checked then
        QFac.SQL.Add('and f.suc_codigo = '+IntToStr(DBLookupComboBox2.KeyValue));

     QFac.SQL.Add('order by f.fac_fecha');
  end
  else
  begin
     QFac.Close;
     QFac.SQL.Clear;
     QFac.SQL.Add('select FAC_NUMERO, FAC_FECHA, FAC_VENCE, FAC_TOTAL,');
     QFac.SQL.Add('FAC_ABONO, EMP_CODIGO, sup_codigo, fac_concepto,');
     QFac.SQL.Add('fac_itbis, fac_exento, fac_grabado');
     QFac.SQL.Add('from PROVFACTURAS');
     QFac.SQL.Add('where emp_codigo = :emp_codigo');
     QFac.SQL.Add('and suc_codigo between :suc1 and :suc2');
     QFac.SQL.Add('and sup_codigo = :sup_codigo');
     QFac.SQL.Add('and fac_status = '+QuotedStr('PEN'));
     QFac.SQL.Add('order by fac_fecha');

     QProv.Parameters.ParamByName('mon').Value := 0;

     if cksucursal.Checked then
     begin
       QFac.Parameters.ParamByName('suc1').Value := DBLookupComboBox2.KeyValue;
       QFac.Parameters.ParamByName('suc2').Value := DBLookupComboBox2.KeyValue;
     end
     else
     begin
       QFac.Parameters.ParamByName('suc1').Value := 1;
       QFac.Parameters.ParamByName('suc2').Value := 999;
     end;
  end;

  if trim(edtipo.Text) <> '' then
  begin
    QProv.SQL.Add('and s.tip_codigo = '+trim(edtipo.Text));
  end;

  QProv.SQL.Add(Orden);
  QProv.Parameters.ParamByName('fec').Value := Date;
  QProv.Parameters.ParamByName('emp').Value := dm.vp_cia;
  if cksucursal.Checked then
     QProv.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue
  else
     QProv.Parameters.ParamByName('suc').Value := 0;
  QProv.open;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select isnull(sum(balance),0) as total, isnull(sum(vencido),0) as vencido');
  dm.Query1.SQL.Add('from pr_cxp (:emp, :suc, :fec, 0)');
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;
  dm.Query1.Parameters.parambyname('fec').Value := Date;
  dm.Query1.Open;
  Total := dm.Query1.FieldByName('total').Value;
  Vencidos := dm.Query1.FieldByName('vencido').Value;

  lbTotal.caption := format('%n',[Total]);
  lbVencido.caption := format('%n',[Vencidos]);

  {Total := 0;
  QProv.DisableControls;
  while not QProv.eof do
  begin
    Total := Total + QProvBalance.value;
    Vencidos := Vencidos + QProvVENCIDO.Value;
    QProv.next;
  end;
  QProv.First;
  QProv.enablecontrols;}

  QFac.Open;
  //lbTotal.caption := format('%n',[Total]);
  //lbVencido.caption := format('%n',[Vencidos]);
end;

procedure TfrmConsCxP.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select sup_nombre, sup_codigo');
  Search.Query.Add('from proveedores where sup_balance > 0');
  Search.Query.Add('and emp_codigo = '+IntToStr(DBLookupComboBox2.KeyValue));
  if Search.execute then
    QProv.Locate('sup_codigo', Search.ValueField, []);
end;

procedure TfrmConsCxP.DBGrid1TitleClick(Column: TColumn);
begin
  case Column.Index of
  0 : Orden := 'order by p.sup_codigo';
  1 : Orden := 'order by s.sup_rnc';
  2 : Orden := 'order by p.sup_nombre';
  3 : Orden := 'order by s.sup_telefono';
  4 : Orden := 'order by s.sup_limite desc';
  5 : Orden := 'order by p.balance desc';
  6 : Orden := 'order by p.vencido desc';
  end;
  QProv.DisableControls;
  QProv.Close;
  QProv.SQL := Memo1.Lines;
  QProv.SQL.Add(Orden);
  QProv.Parameters.ParamByName('fec').Value := Date;
  if edMoneda.Text <> '' then
  QProv.Parameters.ParamByName('mon').Value := StrToInt(edMoneda.Text) else
  QProv.Parameters.ParamByName('mon').Value := 0;
  QProv.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
  QProv.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QProv.Open;
  QProv.EnableControls;
end;

procedure TfrmConsCxP.FormCreate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Close;
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;

  Memo1.Lines := QProv.SQL;
  Orden := 'order by p.sup_nombre';
  btRefreshClick(Sender);
end;

procedure TfrmConsCxP.ckfiltroClick(Sender: TObject);
begin
  btRefreshClick(Self);
end;

procedure TfrmConsCxP.edMonedaChange(Sender: TObject);
begin
  if trim(edMoneda.text) = '' then tMoneda.text := '';
end;

procedure TfrmConsCxP.btMonedaClick(Sender: TObject);
begin
  Search.query.clear;
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Title := 'Moneda';
  Search.ResultField := 'mon_codigo';
  Search.query.add('select mon_nombre, mon_codigo');
  Search.query.add('from Moneda');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  if search.execute then
  begin
    edMoneda.text := search.valuefield;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select mon_nombre from Moneda');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and mon_codigo = '+edMoneda.Text);
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Open;
    tMoneda.Text := dm.Query1.FieldByname('mon_nombre').AsString;
    edMoneda.SetFocus;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsCxP.edMonedaKeyDown(Sender: TObject; var Key: Word;
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
        btRefreshClick(Self);
      end;
    end;
  end;
end;

procedure TfrmConsCxP.edTipoChange(Sender: TObject);
begin
  if trim(edTipo.text) = '' then tTipo.text := '';
end;

procedure TfrmConsCxP.edTipoKeyDown(Sender: TObject; var Key: Word;
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
        tTipo.text := dm.Query1.fieldbyname('tip_nombre').asstring;
        btRefreshClick(Self);
      end;
    end;
  end;
end;

procedure TfrmConsCxP.bttipoClick(Sender: TObject);
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
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsCxP.dsAntigDataChange(Sender: TObject; Field: TField);
begin
  lbCondi1.Caption := format('%n',[QAntigDIA1.value]);
  lbCondi2.Caption := format('%n',[QAntigDIA2.value]);
  lbCondi3.Caption := format('%n',[QAntigDIA3.value]);
  lbCondi4.Caption := format('%n',[QAntigDIA4.value]);
end;

procedure TfrmConsCxP.Verpagos1Click(Sender: TObject);
begin
  Application.CreateForm(tfrmVerPagos, frmVerPagos);
  frmVerPagos.QPagosCxP.Parameters.ParamByName('emp').Value := dm.vp_cia;
  frmVerPagos.QPagosCxP.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
  frmVerPagos.QPagosCxP.Parameters.ParamByName('sup').Value := QProvSUP_CODIGO.Value;
  frmVerPagos.QPagosCxP.Parameters.ParamByName('fac').Value := QFacFAC_NUMERO.Value;
  frmVerPagos.QPagosCxP.Open;
  frmVerPagos.ShowModal;
  frmVerPagos.Release;
end;

procedure TfrmConsCxP.QProvAfterOpen(DataSet: TDataSet);
begin
  QAntig.DisableControls;
  QAntig.Close;
  QAntig.Open;
  QAntig.EnableControls;

  QFac.DisableControls;
  QFac.Close;
  QFac.Open;
  QFac.EnableControls;
end;

procedure TfrmConsCxP.QFacBeforeOpen(DataSet: TDataSet);
begin
  QFac.Parameters.ParamByName('emp_codigo').Value := dm.vp_cia;
  QFac.Parameters.ParamByName('sup_codigo').Value := QProvSUP_CODIGO.Value;
  if cksucursal.Checked then begin
  QFac.Parameters.ParamByName('suc1').Value := 1;
  QFac.Parameters.ParamByName('suc2').Value := 999;
  end;
  if not cksucursal.Checked then begin
  QFac.Parameters.ParamByName('suc1').Value := DBLookupComboBox2.KeyValue;
  QFac.Parameters.ParamByName('suc2').Value := DBLookupComboBox2.KeyValue;
  end;
end;

procedure TfrmConsCxP.QAntigBeforeOpen(DataSet: TDataSet);
begin
QAntig.Parameters.ParamByName('emp_codigo').Value := dm.vp_cia;
QAntig.Parameters.ParamByName('fecha').DataType   := ftDate;
QAntig.Parameters.ParamByName('fecha').Value      := Date;
end;

procedure TfrmConsCxP.MenuItem2Click(Sender: TObject);
begin
  if MessageDlg('DESEA REPARAR LOS BALANCES DE LAS FACTURAS?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    Application.CreateForm(tfrmActBalance, frmActBalance);
    frmActBalance.Update;
    frmActBalance.Label1.Caption := 'Espere un momento reparando balances...';
    qRepBalanceFact.Close;
    qRepBalanceFact.Parameters.ParamByName('emp').Value := dm.vp_cia;
    qRepBalanceFact.Parameters.ParamByName('SUP').Value := QProvSUP_CODIGO.Value;
    qRepBalanceFact.ExecSQL;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('execute pr_actualiza_bce :emp');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.ExecSQL;
    frmActBalance.Close;
  end;
end;

end.
