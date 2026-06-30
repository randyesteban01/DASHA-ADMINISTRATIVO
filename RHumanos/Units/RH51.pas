unit RH51;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, Mask, DBCtrls, ComObj , Grids, DB, ADODB,
  DateUtils, QuerySearchDlgADO, Menus, IdMessageClient,
  IdSMTP, idMessage, QRPDFFilt, IBCustomDataSet, QExport, QExportXLS;
  
type
  TfrmNomina = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox2: TGroupBox;
    btprocesar: TBitBtn;
    btreversar: TBitBtn;
    btClose: TBitBtn;
    DBEdit1: TDBEdit;
    btidioma: TSpeedButton;
    DBLookupComboBox1: TDBLookupComboBox;
    fdesde: TDateTimePicker;
    fhasta: TDateTimePicker;
    facreditar: TDateTimePicker;
    sgnomina: TStringGrid;
    sgdenominacion: TStringGrid;
    QTipoNomina: TADOQuery;
    QTipoNominatno_codigo: TIntegerField;
    QTipoNominatno_nombre: TStringField;
    dsTipoNomina: TDataSource;
    Query1: TADOQuery;
    Query2: TADOQuery;
    btexportar: TBitBtn;
    btvolantes: TBitBtn;
    btpostear: TBitBtn;
    QNomina: TADOQuery;
    QNominaemp_codigo: TIntegerField;
    QNominatno_codigo: TIntegerField;
    QNominanom_codigo: TIntegerField;
    QNominanom_status: TStringField;
    dsNomina: TDataSource;
    QDetalle: TADOQuery;
    QDetalleemp_codigo: TIntegerField;
    QDetalletno_codigo: TIntegerField;
    QDetallenom_codigo: TIntegerField;
    QDetalleemp_numero: TIntegerField;
    QDetallegru_codigo: TIntegerField;
    QDetalledet_total_ingresos: TBCDField;
    QDetalledet_total_descuentos: TBCDField;
    QDetalledet_total_neto: TBCDField;
    QNovedades: TADOQuery;
    QNovedadesemp_codigo: TIntegerField;
    QNovedadestno_codigo: TIntegerField;
    QNovedadesnom_codigo: TIntegerField;
    QNovedadesemp_numero: TIntegerField;
    QNovedadesdet_secuencia: TIntegerField;
    QNovedadestin_codigo: TIntegerField;
    QNovedadestde_codigo: TIntegerField;
    QDetalledet_secuencia: TIntegerField;
    Search: TQrySearchDlgADO;
    QNovedadesdet_monto: TBCDField;
    QNovedadesdes_codigo: TIntegerField;
    QNovedadesafp_aporte_empresa: TBCDField;
    QNovedadesafp_aporte_afiliado: TBCDField;
    btlimpiar: TBitBtn;
    QNovedadessfs_aporte_empresa: TBCDField;
    QNovedadessfs_aporte_afiliado: TBCDField;
    Query3: TADOQuery;
    btrepenviobanco: TBitBtn;
    PopupMenu1: TPopupMenu;
    Imprimirvolante1: TMenuItem;
    Enviarvolanteporemail1: TMenuItem;
    Buscarempleado1: TMenuItem;
    btemail: TBitBtn;
    btnasiento: TBitBtn;
    btrecibos: TBitBtn;
    Imprimirdescuento1: TMenuItem;
    QLibro: TADOQuery;
    QLibroDOCUMENTO: TIBStringField;
    QLibroNUMERO: TIntegerField;
    QLibroFECHA: TDateTimeField;
    QLibroCONCEPTO: TIBStringField;
    QLibroBENEF: TIBStringField;
    QLibroSTATUS: TIBStringField;
    QLibroBALANCE: TFloatField;
    QLibroORIGEN: TIBStringField;
    QLibroMONTO: TFloatField;
    QLibroCONCILIADO: TIBStringField;
    QLibroDebito: TFloatField;
    QLibroCredito: TFloatField;
    QLibroid: TAutoIncField;
    QLibroCONCEPTO2: TStringField;
    ArcBanco: TBitBtn;
    mniHorasExtras1: TMenuItem;
    mniHorasNocturas1: TMenuItem;
    mniDiasFeriados1: TMenuItem;
    GrabaXLS: TSaveDialog;
    ExportXLS: TQExportXLS;
    edtSucLoc: TEdit;
    btLocalidad: TSpeedButton;
    TSucLoc: TEdit;
    lbLocSuc: TLabel;
    QNominanom_fecha_desde: TDateField;
    QNominanom_fecha_hasta: TDateField;
    QNominanom_fecha_acreditar: TDateField;
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btprocesarClick(Sender: TObject);
    procedure sgnominaDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure btexportarClick(Sender: TObject);
    procedure btpostearClick(Sender: TObject);
    procedure btvolantesClick(Sender: TObject);
    procedure btidiomaClick(Sender: TObject);
    procedure ExportXLSGetDataParams(Sender: TObject; Sheet, Col,
      Row: Integer; Format: TxlsFormat; var FormatText: String);
    procedure ExportXLSGetCaptionParams(Sender: TObject; Sheet,
      Col: Integer; Format: TxlsFormat; var Caption: String);
    procedure FormCreate(Sender: TObject);
    procedure dsNominaDataChange(Sender: TObject; Field: TField);
    procedure btreversarClick(Sender: TObject);
    procedure ExportXLSGetHeaderParams(Sender: TObject; Sheet, Col,
      Row: Integer; Format: TxlsFormat; var S: String);
    procedure sgdenominacionDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure btlimpiarClick(Sender: TObject);
    procedure btrepenviobancoClick(Sender: TObject);
    procedure Imprimirvolante1Click(Sender: TObject);
    procedure Enviarvolanteporemail1Click(Sender: TObject);
    procedure Buscarempleado1Click(Sender: TObject);
    procedure btemailClick(Sender: TObject);
    procedure btnasientoClick(Sender: TObject);
    procedure btrecibosClick(Sender: TObject);
    procedure Imprimirdescuento1Click(Sender: TObject);
    procedure ArcBancoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtSucLocChange(Sender: TObject);
    procedure edtSucLocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btLocalidadClick(Sender: TObject);
  private
    { Private declarations }
    function MontoDescAfectaAFP:Currency;
    function MontoIngAfectaAFP:Currency;
    function MontoIngAfectaARS:Currency;
    function MontoDescAfectaARS:Currency;
  public
    { Public declarations }
    afp_aporte_empresa, afp_aporte_afiliado, sfs_aporte_empresa, sfs_aporte_afiliado,
    sfs_tope_sueldo, sfs_pago_padres, afp_salario_tope : Double;
    flag : Bool;
    procedure Volantes_Email (Cod : string);
     procedure ExportarStringGridAExcel(StringGrid: TStringGrid; Worksheet: Variant);
  end;

var
  frmNomina: TfrmNomina;
  Changing: Boolean = False;
  LastCalculatedGridRow: Integer = -1;

implementation

uses SIGMA01, SIGMA00, RHR01, RHR06, RHR08, RH65;

{$R *.dfm}

procedure TfrmNomina.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmNomina.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmNomina.FormPaint(Sender: TObject);
begin
  with frmNomina do
  begin
    Top    := 2;
    Left   := 2;
    width  := frmMain.Width  - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmNomina.FormActivate(Sender: TObject);
begin
  if not QTipoNomina.Active then
  begin
    QTipoNomina.Parameters.ParamByName('emp_codigo').Value := dm.QEmpresasEMP_CODIGO.Value;
    QTipoNomina.Open;

    QNomina.Parameters.ParamByName('nom').Value := -1;
    QNomina.Open;

    QDetalle.Parameters.ParamByName('nom').Value := -1;
    QDetalle.Open;

    QNovedades.Parameters.ParamByName('nom').Value := -1;
    QNovedades.Open;

    //Parametros AFP
    Query2.Close;
    Query2.SQL.Clear;
    Query2.SQL.Add('select isnull(afp_aporte_empresa,0) as afp_aporte_empresa,');
    Query2.SQL.Add('isnull(afp_aporte_afiliado,0) as afp_aporte_afiliado, afp_salario_tope from Parametro_AFP');
    Query2.SQL.Add('where emp_codigo = :emp');
    Query2.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    Query2.Open;
    afp_aporte_empresa  := Query2.FieldByName('afp_aporte_empresa').AsFloat;
    afp_aporte_afiliado := Query2.FieldByName('afp_aporte_afiliado').AsFloat;
    afp_salario_tope    := Query2.FieldByName('afp_salario_tope').AsFloat;

    //Parametros SFS
    Query2.Close;
    Query2.SQL.Clear;
    Query2.SQL.Add('select isnull(sfs_aporte_empresa,0) as sfs_aporte_empresa,');
    Query2.SQL.Add('isnull(sfs_aporte_afiliado,0) as sfs_aporte_afiliado, sfs_tope_sueldo, sfs_pago_padres');
    Query2.SQL.Add('from Parametros_SFS');
    Query2.SQL.Add('where emp_codigo = :emp');
    Query2.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    Query2.Open;
    sfs_aporte_empresa  := Query2.FieldByName('sfs_aporte_empresa').AsFloat;
    sfs_aporte_afiliado := Query2.FieldByName('sfs_aporte_afiliado').AsFloat;
    sfs_tope_sueldo     := Query2.FieldByName('sfs_tope_sueldo').AsFloat;
    sfs_pago_padres     := Query2.FieldByName('sfs_pago_padres').AsFloat;

    fdesde.Date := Date;
    fhasta.Date := Date;
    facreditar.Date := Date;
  end;
end;

procedure TfrmNomina.btprocesarClick(Sender: TObject);
var
  Texto, Nombre : string;
  TotalDesc, TotalIng, TotalDepto, Sueldo, MontoSFS, MontoAFP, SueldoImponible, MontoSeguro, MontoDep, TarifaDep : double;
  col, row, semanas, ColTotalIng, a, coldesc : integer;
  v2000, v1000, v500, v100, v50, v20, v25, v10, v5, v1, v050, v025, v01 : integer;
  empCedula: string;
  MontoAFPOtrosIngresos, MontoSFSOtrosIngresos: double;
begin
  // Verificando si existe una nomina generada para esta fecha
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select count(*) as cant from Nomina');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and tno_codigo = :tno');
  dm.Query1.SQL.Add('and nom_fecha_desde between convert(datetime, :fec1, 105) and convert(datetime, :fec2, 105)');
  dm.Query1.Parameters.ParamByName('emp').Value     := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('fec1').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec2').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec1').Value    := fdesde.Date;
  dm.Query1.Parameters.ParamByName('fec2').Value    := fhasta.Date;
  dm.Query1.Parameters.ParamByName('tno').Value     := DBLookupComboBox1.KeyValue;
  dm.Query1.Open;
  if dm.Query1.FieldByName('cant').Value > 0 then
  begin
    MessageDlg('Ya existe una NOMINA que incluye estas fechas',mtError,[mbok],0);
    DBLookupComboBox1.SetFocus;
  end
  else
  begin
    Screen.Cursor := crHourGlass;

    //***************************
    //Cantidad de Semanas para SS
    //***************************
    {dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select ss_semanas from ss_semanas');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ss_mes = :mes');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('mes').Value := MonthOf(Date);
    dm.Query1.Open;
    semanas := dm.Query1.FieldByName('ss_semanas').AsInteger;}

    //********************************
    //Buscando Ingresos
    //********************************
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select t.tin_nombre from tipo_ingresos t,');
    dm.Query1.SQL.Add('tipo_ingresos_nomina n');
    dm.Query1.SQL.Add('where t.emp_codigo = n.emp_codigo');
    dm.Query1.SQL.Add('and t.tin_codigo = n.tin_codigo');
    dm.Query1.SQL.Add('and n.emp_codigo = :emp');
    dm.Query1.SQL.Add('and n.tno_codigo = :tno');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('tno').Value := DBLookupComboBox1.KeyValue;
    dm.Query1.Open;

    for col := 0 to sgnomina.ColCount -1 do
    begin
      for row := 0 to sgnomina.RowCount -1 do
      begin
        sgnomina.Cells[col, row] := '';
        Application.ProcessMessages;
      end;
      //3 := col;
    end;
    //3 := 3 + 1;

    sgnomina.ColCount := 3;
    sgnomina.RowCount := 2;

    sgnomina.Cells[0, 0] := 'CODIGO';
    sgnomina.Cells[1, 0] := 'NOMBRE DEL EMPLEADO';
    sgnomina.Cells[2, 0] := 'CEDULA/PASAPORTE';

    //Denominaciones
    sgdenominacion.RowCount := 2;
    sgdenominacion.Cells[0, 0]  := 'Nombre del Empleado';
    sgdenominacion.Cells[1, 0]  := 'Ingreso Neto';
    sgdenominacion.Cells[2, 0]  := '2000';
    sgdenominacion.Cells[3, 0]  := '1000';
    sgdenominacion.Cells[4, 0]  := '500';
    sgdenominacion.Cells[5, 0]  := '100';
    sgdenominacion.Cells[6, 0]  := '50';
    sgdenominacion.Cells[7, 0]  := '25';
    sgdenominacion.Cells[8, 0]  := '20';
    sgdenominacion.Cells[9, 0]  := '10';
    sgdenominacion.Cells[10, 0] := '5';
    sgdenominacion.Cells[11, 0] := '1';
    for col := 0 to sgdenominacion.ColCount -1 do
      for row := 1 to sgdenominacion.RowCount -1 do
         sgdenominacion.Cells[col, row] := '';

    Nombre := '';
    while not dm.Query1.Eof do
    begin
      Nombre := dm.Query1.FieldByName('tin_nombre').AsString;
      sgnomina.ColCount := sgnomina.ColCount + 1;
      sgnomina.Cells[sgnomina.ColCount-1, 0] := Nombre;

      Application.ProcessMessages;

      dm.Query1.Next;
    end;
    sgnomina.ColCount := sgnomina.ColCount + 1;
    sgnomina.Cells[sgnomina.ColCount-1, 0] := 'Total Ingresos';
    ColTotalIng := sgnomina.ColCount - 1;

    //********************************
    //Buscando Descuentos
    //********************************
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select t.tde_nombre from tipo_descuentos t,');
    dm.Query1.SQL.Add('tipo_descuentos_nomina n');
    dm.Query1.SQL.Add('where t.emp_codigo = n.emp_codigo');
    dm.Query1.SQL.Add('and t.tde_codigo = n.tde_codigo');
    dm.Query1.SQL.Add('and n.emp_codigo = :emp');
    dm.Query1.SQL.Add('and n.tno_codigo = :tno');
    dm.Query1.SQL.Add('and tde_visualizar = '+QuotedStr('True'));
    dm.Query1.SQL.Add('order by tde_secuencia_nomina');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('tno').Value := DBLookupComboBox1.KeyValue;
    dm.Query1.Open;

    Nombre := '';

    while not dm.Query1.Eof do
    begin
      Nombre := dm.Query1.FieldByName('tde_nombre').AsString;
      sgnomina.ColCount := sgnomina.ColCount + 1;
      sgnomina.Cells[sgnomina.ColCount-1, 0] := Nombre;

      Application.ProcessMessages;

      dm.Query1.Next;
    end;
    sgnomina.ColCount := sgnomina.ColCount + 1;
    sgnomina.Cells[sgnomina.ColCount-1, 0] := 'Total Desc.';
    sgnomina.ColCount := sgnomina.ColCount + 1;
    sgnomina.Cells[sgnomina.ColCount-1, 0] := 'Neto Pagar';

    //*********************
    //Buscando Departamento
    //*********************
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select gru_codigo, gru_nombre');
    Query1.SQL.Add('from grupos_trabajo');
    Query1.SQL.Add('where emp_codigo = :emp');
    Query1.SQL.Add('order by gru_codigo');
    Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    Query1.Open;
    while not Query1.Eof do
    begin

      //TotalDepto := 0;
      Application.ProcessMessages;

      sgnomina.Cells[1, sgnomina.RowCount-1] := Query1.FieldByName('gru_nombre').AsString;
      sgnomina.RowCount := sgnomina.RowCount + 1;

      //************************************
      //Buscando Empleados por Departamento
      //************************************
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select e.emp_numero, (e.emp_salario/t.tno_cant_mensual) as emp_salario,');
      dm.Query1.SQL.Add('e.emp_salario as salario_total, t.tno_cant_mensual, case when len(RTRIM(LTRIM(e.emp_cedula))) =9  then e.emp_pasaporte else e.emp_cedula end as emp_cedula , emp_sfs_padres, ');
      dm.Query1.SQL.Add('(e.emp_nombres+'+QuotedStr(' ')+'+e.emp_apellido_paterno+'+QuotedStr(' ')+'+e.emp_apellido_materno) as Nombre');
      dm.Query1.SQL.Add('from empleados e, Empleados_Tipo_Nomina n, Tipo_Nomina t');
      dm.Query1.SQL.Add('where n.emp_codigo = t.emp_codigo');
      dm.Query1.SQL.Add('and n.tno_codigo = t.tno_codigo');
      dm.Query1.SQL.Add('and e.emp_codigo = n.emp_codigo');
      dm.Query1.SQL.Add('and e.emp_numero = n.emp_numero');
      dm.Query1.SQL.Add('and n.tno_codigo = :tno');
      dm.Query1.SQL.Add('and e.emp_codigo = :emp');
      dm.Query1.SQL.Add('and e.gru_codigo = :gru');
      dm.Query1.SQL.Add('and e.emp_status = '+QuotedStr('ACT'));
      dm.Query1.SQL.Add('order by e.emp_nombres');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('gru').Value := Query1.FieldByName('gru_codigo').AsInteger;
      dm.Query1.Parameters.ParamByName('tno').Value := DBLookupComboBox1.KeyValue;
      dm.Query1.Open;

      if not dm.Query1.IsEmpty then
      while not dm.Query1.Eof do
      begin

        TotalDesc := 0;
        TotalIng  := 0;
        MontoAFP  := 0;
        MontoAFPOtrosIngresos := 0;
        MontoSFS  := 0;
        MontoSFSOtrosIngresos  := 0;
        MontoSeguro := 0;
        SueldoImponible := 0;

        sgnomina.Cells[0, sgnomina.RowCount-1] := dm.Query1.FieldByName('emp_numero').AsString;
        sgnomina.Cells[1, sgnomina.RowCount-1] := dm.Query1.FieldByName('Nombre').AsString;
        sgnomina.Cells[2, sgnomina.RowCount-1] := dm.Query1.FieldByName('emp_cedula').AsString;

        sgdenominacion.Cells[0, sgdenominacion.RowCount-1] := dm.Query1.FieldByName('Nombre').AsString;

        //********************************
        //Buscando Ingreso por Salario
        //********************************
        Query2.Close;
        Query2.SQL.Clear;
        Query2.SQL.Add('select t.tin_nombre from tipo_ingresos t,  Param_RHumanos p');
        Query2.SQL.Add('where t.emp_codigo = p.emp_codigo');
        Query2.SQL.Add('and t.tin_codigo = p.par_tipo_ingrerso_salario');
        Query2.SQL.Add('and t.emp_codigo = :emp');
        Query2.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        Query2.Open;
        if Query2.RecordCount > 0 then
        begin
          for Col := 3 to sgnomina.ColCount -1 do
          begin
            if Trim(sgnomina.Cells[Col, 0]) = Query2.FieldByName('tin_nombre').AsString then
            begin
              sgnomina.Cells[Col, sgnomina.RowCount-1] := Format('%n',[dm.Query1.FieldByName('emp_salario').AsFloat]);
              SueldoImponible := dm.Query1.FieldByName('salario_total').AsFloat;
              //Sueldo := dm.Query1.FieldByName('salario_total').AsFloat;
              //SueldoImponible := Sueldo;
              TotalIng := TotalIng + dm.Query1.FieldByName('emp_salario').AsFloat;
              break;
            end;
          end;
        end;

        //********************************
        //Buscando Ingresos Fijos
        //********************************
        Query2.Close;
        Query2.SQL.Clear;
        Query2.SQL.Add('select t.tin_nombre, i.ing_periodo_pago, sum(i.ing_valor) as Valor');
        Query2.SQL.Add('from tipo_ingresos t,  Ingresos i');
        Query2.SQL.Add('where t.emp_codigo = i.emp_codigo');
        Query2.SQL.Add('and t.tin_codigo = i.tin_codigo');
        Query2.SQL.Add('and t.emp_codigo = :emp');
        Query2.SQL.Add('and i.emp_numero = :cod');
        Query2.SQL.Add('and i.ing_fijo_variable = '+QuotedStr('F'));
        Query2.SQL.Add('group by t.tin_nombre, i.ing_periodo_pago');
        Query2.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        Query2.Parameters.ParamByName('cod').Value := StrToInt(sgnomina.Cells[0, sgnomina.RowCount-1]);
        Query2.Open;
        while not Query2.eof do
        begin
          if Query2.FieldByName('ing_periodo_pago').AsString = '1' then
          begin
            if (Dayof(fdesde.Date) >= 1) and (Dayof(fhasta.Date) <= 15) then
            begin
              for Col := 3 to sgnomina.ColCount -1 do
              begin
                if Trim(sgnomina.Cells[Col, 0]) = Query2.FieldByName('tin_nombre').AsString then
                begin
                  sgnomina.Cells[Col, sgnomina.RowCount-1] := Format('%n',[Query2.FieldByName('Valor').AsFloat]);
                  TotalIng := TotalIng + Query2.FieldByName('Valor').AsFloat;
                  SueldoImponible := SueldoImponible + Query2.FieldByName('Valor').AsFloat;
                end;
              end;
            end;
          end
          else if Query2.FieldByName('ing_periodo_pago').AsString = '2' then
          begin
            if (Dayof(fdesde.Date) >= 16) and (Dayof(fhasta.Date) <= 31) then
            begin
              for Col := 3 to sgnomina.ColCount -1 do
              begin
                if Trim(sgnomina.Cells[Col, 0]) = Query2.FieldByName('tin_nombre').AsString then
                begin
                  sgnomina.Cells[Col, sgnomina.RowCount-1] := Format('%n',[Query2.FieldByName('Valor').AsFloat]);
                  TotalIng := TotalIng + Query2.FieldByName('Valor').AsFloat;
                  SueldoImponible := SueldoImponible + Query2.FieldByName('Valor').AsFloat;
                end;
              end;
            end;
          end
          else if Query2.FieldByName('ing_periodo_pago').AsString = '3' then
          begin
            if (Dayof(fdesde.Date) >= 1) and (Dayof(fhasta.Date) <= 31) then
            begin
              for Col := 3 to sgnomina.ColCount -1 do
              begin
                if Trim(sgnomina.Cells[Col, 0]) = Query2.FieldByName('tin_nombre').AsString then
                begin
                  sgnomina.Cells[Col, sgnomina.RowCount-1] := Format('%n',[Query2.FieldByName('Valor').AsFloat]);
                  TotalIng := TotalIng + Query2.FieldByName('Valor').AsFloat;
                  SueldoImponible := SueldoImponible + Query2.FieldByName('Valor').AsFloat;
                end;
              end;
            end;
          end;

          Query2.Next;
        end;

        //********************************
        //Buscando Ingresos Variables
        //********************************
        Query2.Close;
        Query2.SQL.Clear;
        Query2.SQL.Add('select t.tin_nombre, i.ing_periodo_pago, sum(i.ing_valor) as Valor');
        Query2.SQL.Add('from tipo_ingresos t,  Ingresos i');
        Query2.SQL.Add('where t.emp_codigo = i.emp_codigo');
        Query2.SQL.Add('and t.tin_codigo = i.tin_codigo');
        Query2.SQL.Add('and t.emp_codigo = :emp');
        Query2.SQL.Add('and i.emp_numero = :cod');
        Query2.SQL.Add('and i.ing_fijo_variable = '+QuotedStr('V'));
        Query2.SQL.Add('and i.ing_fecha between convert(datetime, :fec1, 105) and convert(datetime, :fec2, 105)');
        Query2.SQL.Add('group by t.tin_nombre, i.ing_periodo_pago');
        Query2.Parameters.ParamByName('emp').Value     := dm.QEmpresasEMP_CODIGO.Value;
        Query2.Parameters.ParamByName('cod').Value     := StrToInt(sgnomina.Cells[0, sgnomina.RowCount-1]);
        Query2.Parameters.ParamByName('fec1').DataType := ftDate;
        Query2.Parameters.ParamByName('fec2').DataType := ftDate;
        Query2.Parameters.ParamByName('fec1').Value    := fdesde.Date;
        Query2.Parameters.ParamByName('fec2').Value    := fhasta.Date;
        Query2.Open;
        while not Query2.eof do
        begin
          if Query2.FieldByName('ing_periodo_pago').AsString = '1' then
          begin
            if (Dayof(fdesde.Date) >= 1) and (Dayof(fhasta.Date) <= 15) then
            begin
              for Col := 3 to sgnomina.ColCount -1 do
              begin
                if Trim(sgnomina.Cells[Col, 0]) = Query2.FieldByName('tin_nombre').AsString then
                begin
                  sgnomina.Cells[Col, sgnomina.RowCount-1] := Format('%n',[Query2.FieldByName('Valor').AsFloat]);
                  TotalIng := TotalIng + Query2.FieldByName('Valor').AsFloat;
                  SueldoImponible := SueldoImponible + Query2.FieldByName('Valor').AsFloat;
                end;
              end;
            end;
          end
          else if Query2.FieldByName('ing_periodo_pago').AsString = '2' then
          begin
            if (Dayof(fdesde.Date) >= 16) and (Dayof(fhasta.Date) <= 31) then
            begin
              for Col := 3 to sgnomina.ColCount -1 do
              begin
                if Trim(sgnomina.Cells[Col, 0]) = Query2.FieldByName('tin_nombre').AsString then
                begin
                  sgnomina.Cells[Col, sgnomina.RowCount-1] := Format('%n',[Query2.FieldByName('Valor').AsFloat]);
                  TotalIng := TotalIng + Query2.FieldByName('Valor').AsFloat;
                  SueldoImponible := SueldoImponible + Query2.FieldByName('Valor').AsFloat;
                end;
              end;
            end;
          end
          else if Query2.FieldByName('ing_periodo_pago').AsString = '3' then
          begin
            if (Dayof(fdesde.Date) >= 1) and (Dayof(fhasta.Date) <= 31) then
            begin
              for Col := 3 to sgnomina.ColCount -1 do
              begin
                if Trim(sgnomina.Cells[Col, 0]) = Query2.FieldByName('tin_nombre').AsString then
                begin
                  sgnomina.Cells[Col, sgnomina.RowCount-1] := Format('%n',[Query2.FieldByName('Valor').AsFloat]);
                  TotalIng := TotalIng + Query2.FieldByName('Valor').AsFloat;
                  SueldoImponible := SueldoImponible + Query2.FieldByName('Valor').AsFloat;
                end;
              end;
            end;
          end;

          Query2.Next;
        end;
        sgnomina.Cells[ColTotalIng, sgnomina.RowCount-1] := Format('%n',[TotalIng]);


        //********************************
        //Buscando Descuentos AFP
        //********************************
        Query2.Close;
        Query2.SQL.Clear;
        Query2.SQL.Add('select t.tde_nombre, t.des_periodo_descuento from tipo_descuentos t, Param_RHumanos p');
        Query2.SQL.Add('where t.emp_codigo = p.emp_codigo');
        Query2.SQL.Add('and t.tde_codigo = p.par_tipo_descuento_afp');
        Query2.SQL.Add('and t.emp_codigo = :emp');
        Query2.SQL.Add('and t.tde_visualizar = '+QuotedStr('True'));
        Query2.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        Query2.Open;
        if Query2.RecordCount > 0 then
        begin
          Nombre := Query2.FieldByName('tde_nombre').AsString;

          if Query2.FieldByName('des_periodo_descuento').AsString = '1' then
          begin
            if (Dayof(fdesde.Date) >= 1) and (Dayof(fhasta.Date) <= 15) then
            begin
              for Col := 3 to sgnomina.ColCount -1 do
              begin
                if Trim(sgnomina.Cells[Col, 0]) = Nombre then
                begin
                  if dm.Query1.FieldByName('salario_total').AsFloat <= afp_salario_tope then
                      begin
                        MontoAFP := dm.Query1.FieldByName('salario_total').AsFloat*(afp_aporte_afiliado/100);
                        MontoAFPOtrosIngresos := (MontoIngAfectaAFP-MontoDescAfectaAFP)*(afp_aporte_afiliado/100)
                      end
                    //MontoAFP := ((((dm.Query1.FieldByName('emp_salario').AsFloat+MontoIngAfectaAFP-MontoDescAfectaAFP)*afp_aporte_afiliado)/100))
                  else
                    MontoAFP := (((afp_salario_tope*afp_aporte_afiliado)/100));
                    
                  MontoAFP := MontoAFP + MontoAFPOtrosIngresos;
                  sgnomina.Cells[Col, sgnomina.RowCount-1] := Format('%n',[MontoAFP]);
                 // SueldoImponible := SueldoImponible - MontoAFP;
                  TotalDesc := TotalDesc + MontoAFP;
                  break;
                end;
              end;
            end;
          end
          else if Query2.FieldByName('des_periodo_descuento').AsString = '2' then
          begin
            if (Dayof(fdesde.Date) >= 16) and (Dayof(fhasta.Date) <= 31) then
            begin
              for Col := 3 to sgnomina.ColCount -1 do
              begin
                if Trim(sgnomina.Cells[Col, 0]) = Nombre then
                begin

                  if dm.Query1.FieldByName('salario_total').AsFloat <= afp_salario_tope then
                    begin
                      MontoAFP := dm.Query1.FieldByName('salario_total').AsFloat*(afp_aporte_afiliado/100);
                      MontoAFPOtrosIngresos := (MontoIngAfectaAFP-MontoDescAfectaAFP)*(afp_aporte_afiliado/100)
                    end
                   // MontoAFP := ((((dm.Query1.FieldByName('emp_salario').AsFloat+MontoIngAfectaAFP-MontoDescAfectaAFP)*afp_aporte_afiliado)/100))
                  else
                    MontoAFP := (((afp_salario_tope*afp_aporte_afiliado)/100));

                  MontoAFP := MontoAFP + MontoAFPOtrosIngresos;
                  sgnomina.Cells[Col, sgnomina.RowCount-1] := Format('%n',[MontoAFP]);
                  //Jhonattan Gomez 2026-05-28 09:51
                  //SueldoImponible := SueldoImponible - MontoAFP;
                  TotalDesc := TotalDesc + MontoAFP;
                  break;
                end;
              end;
            end;
          end
          else if Query2.FieldByName('des_periodo_descuento').AsString = '3' then
          begin
            if (Dayof(fdesde.Date) >= 1) and (Dayof(fhasta.Date) <= 31) then
            begin
              for Col := 3 to sgnomina.ColCount -1 do
              begin
                if Trim(sgnomina.Cells[Col, 0]) = Nombre then
                begin
                  if dm.Query1.FieldByName('salario_total').AsFloat <= afp_salario_tope then
                  begin
                    MontoAFP := dm.Query1.FieldByName('salario_total').AsFloat*(afp_aporte_afiliado/100);
                    MontoAFPOtrosIngresos := (MontoIngAfectaAFP-MontoDescAfectaAFP)*(afp_aporte_afiliado/100)
                  end
                  else
                    MontoAFP := (((afp_salario_tope*afp_aporte_afiliado)/100));

                  //SueldoImponible := SueldoImponible - MontoAFP;
                  MontoAFP := (MontoAFP/ dm.Query1.FieldByName('tno_cant_mensual').AsInteger) + MontoAFPOtrosIngresos;
                  sgnomina.Cells[Col, sgnomina.RowCount-1] := Format('%n',[MontoAFP]);
                  TotalDesc := TotalDesc + MontoAFP;
                  break;
                end;
              end;
            end;
          end;
        end;

        //**************************************************
        //Buscando Descuentos SFS (Seguro Familiar de Salud)
        //**************************************************
        Query2.Close;
        Query2.SQL.Clear;
        Query2.SQL.Add('select t.tde_nombre, t.des_periodo_descuento from tipo_descuentos t, Param_RHumanos p');
        Query2.SQL.Add('where t.emp_codigo = p.emp_codigo');
        Query2.SQL.Add('and t.tde_codigo = p.par_tipo_descuento_sfs');
        Query2.SQL.Add('and t.emp_codigo = :emp');
        Query2.SQL.Add('and t.tde_visualizar = '+QuotedStr('True'));
        Query2.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        Query2.Open;
        if Query2.RecordCount > 0 then
        begin
          Nombre := Query2.FieldByName('tde_nombre').AsString;

          if Query2.FieldByName('des_periodo_descuento').AsString = '1' then
          begin
            if (Dayof(fdesde.Date) >= 1) and (Dayof(fhasta.Date) <= 15) then
            begin
              for Col := 3 to sgnomina.ColCount -1 do
              begin
                if Trim(sgnomina.Cells[Col, 0]) = Nombre then
                begin
                  if dm.Query1.FieldByName('salario_total').AsFloat <= sfs_tope_sueldo then
                  begin
                    sgnomina.Cells[Col, sgnomina.RowCount-1] := Format('%n',[(((dm.Query1.FieldByName('salario_total').AsFloat*sfs_aporte_afiliado)/100)) +
                    (dm.Query1.FieldByName('emp_sfs_padres').AsInteger*sfs_pago_padres)]);
                    MontoSFS := ((((dm.Query1.FieldByName('salario_total').AsFloat)*sfs_aporte_afiliado)/100)) + (dm.Query1.FieldByName('emp_sfs_padres').AsInteger*sfs_pago_padres);
                    MontoSFSOtrosIngresos := (MontoIngAfectaARS-MontoDescAfectaARS)* (sfs_aporte_afiliado/100) ;
                    //MontoSFS := ((((dm.Query1.FieldByName('salario_total').AsFloat+MontoIngAfectaARS-MontoDescAfectaARS)*sfs_aporte_afiliado)/100)) + (dm.Query1.FieldByName('emp_sfs_padres').AsInteger*sfs_pago_padres);
                  end
                  else
                  begin
                    sgnomina.Cells[Col, sgnomina.RowCount-1] := Format('%n',[(((sfs_tope_sueldo*sfs_aporte_afiliado)/100)) +
                    (dm.Query1.FieldByName('emp_sfs_padres').AsInteger*sfs_pago_padres)]);
                    MontoSFS := ((((sfs_tope_sueldo)*sfs_aporte_afiliado)/100)) + (dm.Query1.FieldByName('emp_sfs_padres').AsInteger*sfs_pago_padres);
                    MontoSFSOtrosIngresos := (MontoIngAfectaARS-MontoDescAfectaARS)*(sfs_aporte_afiliado/100)
                  end;

                  MontoSFS := MontoSFS +  MontoSFSOtrosIngresos;
                  //SueldoImponible := SueldoImponible - MontoSFS;
                  TotalDesc := TotalDesc + MontoSFS;
                  break;
                end;
              end;
            end;
          end
          else if Query2.FieldByName('des_periodo_descuento').AsString = '2' then
          begin
            if (Dayof(fdesde.Date) >= 16) and (Dayof(fhasta.Date) <= 31) then
            begin
              for Col := 3 to sgnomina.ColCount -1 do
              begin
                if Trim(sgnomina.Cells[Col, 0]) = Nombre then
                begin
                  if dm.Query1.FieldByName('salario_total').AsFloat <= sfs_tope_sueldo then
                  begin
                    sgnomina.Cells[Col, sgnomina.RowCount-1] := Format('%n',[(((dm.Query1.FieldByName('salario_total').AsFloat*sfs_aporte_afiliado)/100)) +
                    (dm.Query1.FieldByName('emp_sfs_padres').AsInteger*sfs_pago_padres)]);
                   // MontoSFS := ((((dm.Query1.FieldByName('salario_total').AsFloat+MontoIngAfectaARS-MontoDescAfectaARS)*sfs_aporte_afiliado)/100)) + (dm.Query1.FieldByName('emp_sfs_padres').AsInteger*sfs_pago_padres);
                    MontoSFS := ((((dm.Query1.FieldByName('salario_total').AsFloat)*sfs_aporte_afiliado)/100)) + (dm.Query1.FieldByName('emp_sfs_padres').AsInteger*sfs_pago_padres);
                    MontoSFSOtrosIngresos := (MontoIngAfectaARS-MontoDescAfectaARS)* (sfs_aporte_afiliado/100) ;

                  end
                  else
                  begin
                    sgnomina.Cells[Col, sgnomina.RowCount-1] := Format('%n',[(((sfs_tope_sueldo*sfs_aporte_afiliado)/100)) +
                    (dm.Query1.FieldByName('emp_sfs_padres').AsInteger*sfs_pago_padres)]);
                    MontoSFS := ((((sfs_tope_sueldo)*sfs_aporte_afiliado)/100)) + (dm.Query1.FieldByName('emp_sfs_padres').AsInteger*sfs_pago_padres);
                    MontoSFSOtrosIngresos := (MontoIngAfectaARS-MontoDescAfectaARS)*(sfs_aporte_afiliado/100)
                    //MontoSFS := ((((sfs_tope_sueldo+MontoIngAfectaARS-MontoDescAfectaARS)*sfs_aporte_afiliado)/100)) + (dm.Query1.FieldByName('emp_sfs_padres').AsInteger*sfs_pago_padres);
                  end;
                  
                  MontoSFS := MontoSFS +  MontoSFSOtrosIngresos;
                  //SueldoImponible := SueldoImponible - MontoSFS;
                  TotalDesc := TotalDesc + MontoSFS;
                  break;
                end;
              end;
            end;
          end
          else if Query2.FieldByName('des_periodo_descuento').AsString = '3' then
          begin
            if (Dayof(fdesde.Date) >= 1) and (Dayof(fhasta.Date) <= 31) then
            begin
              for Col := 3 to sgnomina.ColCount -1 do
              begin
                if Trim(sgnomina.Cells[Col, 0]) = Nombre then
                begin
                  if dm.Query1.FieldByName('salario_total').AsFloat <= sfs_tope_sueldo then
                  begin
                    MontoSFS := ((((dm.Query1.FieldByName('salario_total').AsFloat)*sfs_aporte_afiliado)/100)) + (dm.Query1.FieldByName('emp_sfs_padres').AsInteger*sfs_pago_padres);
                    MontoSFSOtrosIngresos := (MontoIngAfectaARS-MontoDescAfectaARS)* (sfs_aporte_afiliado/100) ;
                  end
                    //MontoSFS := ((((dm.Query1.FieldByName('salario_total').AsFloat+MontoIngAfectaARS-MontoDescAfectaARS)*sfs_aporte_afiliado)/100)) + (dm.Query1.FieldByName('emp_sfs_padres').AsInteger*sfs_pago_padres)
                  else
                  begin
                    MontoSFS := ((((sfs_tope_sueldo)*sfs_aporte_afiliado)/100)) + (dm.Query1.FieldByName('emp_sfs_padres').AsInteger*sfs_pago_padres);
                    MontoSFSOtrosIngresos := (MontoIngAfectaARS-MontoDescAfectaARS)*(sfs_aporte_afiliado/100) ;
                  end;
                    //MontoSFS := ((((sfs_tope_sueldo+MontoIngAfectaARS-MontoDescAfectaARS)*sfs_aporte_afiliado)/100)) + (dm.Query1.FieldByName('emp_sfs_padres').AsInteger*sfs_pago_padres);

                  //SueldoImponible := SueldoImponible - MontoSFS;
                  MontoSFS := (MontoSFS / dm.Query1.FieldByName('tno_cant_mensual').AsInteger) + (MontoSFSOtrosIngresos);
                  sgnomina.Cells[Col, sgnomina.RowCount-1] := Format('%n',[MontoSFS]);
                  TotalDesc := TotalDesc + MontoSFS;
                  break;
                end;
              end;
            end;
          end;
        end;

        //********************************
        //Buscando Descuentos ISR
        //********************************
        Query2.Close;
        Query2.SQL.Clear;
        Query2.SQL.Add('select t.tde_nombre, t.des_periodo_descuento from tipo_descuentos t,  Param_RHumanos p');
        Query2.SQL.Add('where t.emp_codigo = p.emp_codigo');
        Query2.SQL.Add('and t.tde_codigo = p.par_tipo_descuento_isr');
        Query2.SQL.Add('and t.emp_codigo = :emp');
        Query2.SQL.Add('and t.tde_visualizar = '+QuotedStr('True'));
        Query2.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        Query2.Open;
        if Query2.RecordCount > 0 then
        begin
          Nombre := Query2.FieldByName('tde_nombre').AsString;

         // if Query2.FieldByName('des_periodo_descuento').AsString = '1' then
         // begin
            if (Dayof(fdesde.Date) >= 1) and (Dayof(fhasta.Date) <= 15) then
            begin
              for Col := 3 to sgnomina.ColCount -1 do
              begin
                if Trim(sgnomina.Cells[Col, 0]) = Nombre then
                begin
                  Query2.Close;
                  Query2.SQL.Clear;
                  Query2.SQL.Add('declare @SueldoImponible numeric(18,2)');
                  Query2.SQL.Add('set @SueldoImponible = :SueldoImponible');
                  Query2.SQL.Add('select ((isnull(exceso_aumento,0) + (@SueldoImponible*12 - exceso_monto) * (exceso_porciento/100)) / 12)/2 isr_deduccion');
                  //Query2.SQL.Add('select (((((('+FloatToStr(TotalIng)+'*12)-exceso_monto)*exceso_porciento)/100)+exceso_aumento)/12) as isr_deduccion');
                  Query2.SQL.Add('from isr');
                  Query2.SQL.Add('where emp_codigo = :emp');
                  Query2.SQL.Add('and (@SueldoImponible*12) between Desde and Hasta');
                  //Query2.SQL.Add('and ('+FloatToStr(TotalIng)+'*12) between Desde and Hasta');
                  Query2.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
                  Query2.Parameters.ParamByName('SueldoImponible').Value := SueldoImponible-((MontoSFS+MontoAFP)*2);
                  Query2.Open;
                  if Query2.RecordCount > 0 then
                  begin
                    sgnomina.Cells[Col, sgnomina.RowCount-1] := Format('%n',[Query2.FieldByName('isr_deduccion').AsFloat]);
                    TotalDesc := TotalDesc + Query2.FieldByName('isr_deduccion').AsFloat;
                    break;
                  end;
                end;
              //end;
            end;
          end
          else //if Query2.FieldByName('des_periodo_descuento').AsString = '2' then
         // begin
            if (Dayof(fdesde.Date) >= 16) and (Dayof(fhasta.Date) <= 31) then
            begin
              for Col := 3 to sgnomina.ColCount -1 do
              begin
                if Trim(sgnomina.Cells[Col, 0]) = Nombre then
                begin
                  Query2.Close;
                  Query2.SQL.Clear;
                  Query2.SQL.Add('declare @SueldoImponible numeric(18,2)');
                  Query2.SQL.Add('set @SueldoImponible = :SueldoImponible');
                  Query2.SQL.Add('select ((isnull(exceso_aumento,0) + (@SueldoImponible*12 - exceso_monto) * (exceso_porciento/100)) / 12)/2 isr_deduccion');
                  //Query2.SQL.Add('select (((((('+FloatToStr(TotalIng)+'*12)-exceso_monto)*exceso_porciento)/100)+exceso_aumento)/12) as isr_deduccion');
                  Query2.SQL.Add('from isr');
                  Query2.SQL.Add('where emp_codigo = :emp');
                  Query2.SQL.Add('and (@SueldoImponible*12) between Desde and Hasta');
                  //Query2.SQL.Add('and ('+FloatToStr(TotalIng)+'*12) between Desde and Hasta');
                  Query2.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
                  Query2.Parameters.ParamByName('SueldoImponible').Value := SueldoImponible-((MontoSFS+MontoAFP)*2);
                  Query2.Open;
                  if Query2.RecordCount > 0 then
                  begin
                    sgnomina.Cells[Col, sgnomina.RowCount-1] := Format('%n',[Query2.FieldByName('isr_deduccion').AsFloat]);
                    TotalDesc := TotalDesc + Query2.FieldByName('isr_deduccion').AsFloat;
                    break;
                  end;
                end;
              end;
          //  end;
          end
          else //if Query2.FieldByName('des_periodo_descuento').AsString = '3' then
          //begin
            if (Dayof(fdesde.Date) >= 1) and (Dayof(fhasta.Date) <= 31) then
            begin
              for Col := 3 to sgnomina.ColCount -1 do
              begin
                if Trim(sgnomina.Cells[Col, 0]) = Nombre then
                begin
                  Query2.Close;
                  Query2.SQL.Clear;
                  Query2.SQL.Add('declare @SueldoImponible numeric(18,2)');
                  Query2.SQL.Add('set @SueldoImponible = :SueldoImponible');
                  Query2.SQL.Add('select ((isnull(exceso_aumento,0) + (@SueldoImponible*12 - exceso_monto) * (exceso_porciento/100)) / 12) isr_deduccion');
                  //Query2.SQL.Add('select (((((('+FloatToStr(TotalIng)+'*12)-exceso_monto)*exceso_porciento)/100)+exceso_aumento)/12) as isr_deduccion');
                  Query2.SQL.Add('from isr');
                  Query2.SQL.Add('where emp_codigo = :emp');
                  Query2.SQL.Add('and (@SueldoImponible*12) between Desde and Hasta');
                  //Query2.SQL.Add('and ('+FloatToStr(TotalIng)+'*12) between Desde and Hasta');
                  Query2.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
                  Query2.Parameters.ParamByName('SueldoImponible').Value := SueldoImponible-(MontoSFS+MontoAFP);
                  Query2.Open;
                  if Query2.RecordCount > 0 then
                  begin
                    sgnomina.Cells[Col, sgnomina.RowCount-1] := Format('%n',[Query2.FieldByName('isr_deduccion').AsFloat]);
                    TotalDesc := TotalDesc + Query2.FieldByName('isr_deduccion').AsFloat;
                    break;
                  end;
               // end;
              end;
            end;
          end;
        end;



        //*************
        //Seguro Medico
        //*************
        Query3.Close;
        Query3.SQL.Clear;
        Query3.SQL.Add('select s.tse_codigo, s.tse_nombre, s.tde_codigo');
        Query3.SQL.Add('from Tipo_Seguros s, empleado_planes_seguro p');
        Query3.SQL.Add('where s.emp_codigo = p.emp_codigo');
        Query3.SQL.Add('and s.tse_codigo = p.tse_codigo');
        Query3.SQL.Add('and s.emp_codigo = :emp');
        Query3.SQL.Add('and p.emp_numero = :cod');
        Query3.SQL.Add('and p.dep_numero is null');
        Query3.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        Query3.Parameters.ParamByName('cod').Value := StrToInt(sgnomina.Cells[0, sgnomina.RowCount-1]);
        Query3.Open;
        while not Query3.EOF do
        begin
          Query2.Close;
          Query2.SQL.Clear;
          Query2.SQL.Add('select tde_nombre, des_periodo_descuento from tipo_descuentos t');
          Query2.SQL.Add('where tde_codigo = :tde');
          Query2.SQL.Add('and emp_codigo = :emp');
          Query2.SQL.Add('and tde_visualizar = '+QuotedStr('True'));
          Query2.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
          Query2.Parameters.ParamByName('tde').Value := Query3.FieldByName('tde_codigo').Value;
          Query2.Open;
          if Query2.RecordCount > 0 then
          begin
            Nombre := Query2.FieldByName('tde_nombre').AsString;

            if Query2.FieldByName('des_periodo_descuento').AsString = '1' then
            begin
              if (Dayof(fdesde.Date) >= 1) and (Dayof(fhasta.Date) <= 15) then
              begin
                for Col := 3 to sgnomina.ColCount -1 do
                begin
                  if Trim(sgnomina.Cells[Col, 0]) = Nombre then
                  begin
                    //Afiliado Principal
                    Query2.Close;
                    Query2.SQL.Clear;
                    Query2.SQL.Add('select sum(pla_tarifa_basica - ((pla_tarifa_basica*pla_porciento_empresa)/100)) as Monto');
                    Query2.SQL.Add('from empleado_planes_seguro');
                    Query2.SQL.Add('where emp_codigo = :emp');
                    Query2.SQL.Add('and emp_numero = :cod');
                    Query2.SQL.Add('and dep_numero is null');
                    Query2.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
                    Query2.Parameters.ParamByName('cod').Value := StrToInt(sgnomina.Cells[0, sgnomina.RowCount-1]);
                    Query2.Open;
                    if Query2.RecordCount > 0 then
                    begin
                      MontoSeguro := Query2.FieldByName('Monto').AsFloat;

                      //Dependiente
                      Query2.Close;
                      Query2.SQL.Clear;
                      Query2.SQL.Add('select sum(pla_tarifa_basica) as Monto');
                      Query2.SQL.Add('from empleado_planes_seguro');
                      Query2.SQL.Add('where emp_codigo = :emp');
                      Query2.SQL.Add('and emp_numero = :cod');
                      Query2.SQL.Add('and dep_numero is not null');
                      Query2.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
                      Query2.Parameters.ParamByName('cod').Value := StrToInt(sgnomina.Cells[0, sgnomina.RowCount-1]);
                      Query2.Open;
                      if Query2.RecordCount > 0 then
                        MontoSeguro := MontoSeguro + Query2.FieldByName('Monto').AsFloat;

                      TotalDesc := TotalDesc + MontoSeguro;
                      sgnomina.Cells[Col, sgnomina.RowCount-1] := Format('%n',[MontoSeguro]);
                      break;
                    end;
                  end;
                end;
              end;
            end
            else if Query2.FieldByName('des_periodo_descuento').AsString = '2' then
            begin
              if (Dayof(fdesde.Date) >= 16) and (Dayof(fhasta.Date) <= 31) then
              begin
                for Col := 3 to sgnomina.ColCount -1 do
                begin
                  if Trim(sgnomina.Cells[Col, 0]) = Nombre then
                  begin
                    //Afiliado Principal
                    Query2.Close;
                    Query2.SQL.Clear;
                    Query2.SQL.Add('select sum(pla_tarifa_basica - ((pla_tarifa_basica*pla_porciento_empresa)/100)) as Monto');
                    Query2.SQL.Add('from empleado_planes_seguro');
                    Query2.SQL.Add('where emp_codigo = :emp');
                    Query2.SQL.Add('and emp_numero = :cod');
                    Query2.SQL.Add('and dep_numero is null');
                    Query2.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
                    Query2.Parameters.ParamByName('cod').Value := StrToInt(sgnomina.Cells[0, sgnomina.RowCount-1]);
                    Query2.Open;
                    if Query2.RecordCount > 0 then
                    begin
                      MontoSeguro := Query2.FieldByName('Monto').AsFloat;

                      //Dependiente
                      Query2.Close;
                      Query2.SQL.Clear;
                      Query2.SQL.Add('select sum(pla_tarifa_basica) as Monto');
                      Query2.SQL.Add('from empleado_planes_seguro');
                      Query2.SQL.Add('where emp_codigo = :emp');
                      Query2.SQL.Add('and emp_numero = :cod');
                      Query2.SQL.Add('and dep_numero is not null');
                      Query2.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
                      Query2.Parameters.ParamByName('cod').Value := StrToInt(sgnomina.Cells[0, sgnomina.RowCount-1]);
                      Query2.Open;
                      if Query2.RecordCount > 0 then
                        MontoSeguro := MontoSeguro + Query2.FieldByName('Monto').AsFloat;

                      TotalDesc := TotalDesc + MontoSeguro;
                      sgnomina.Cells[Col, sgnomina.RowCount-1] := Format('%n',[MontoSeguro]);
                      break;
                    end;
                  end;
                end;
              end;
            end
            else if Query2.FieldByName('des_periodo_descuento').AsString = '3' then
            begin
              if (Dayof(fdesde.Date) >= 1) and (Dayof(fhasta.Date) <= 31) then
              begin
                for Col := 3 to sgnomina.ColCount -1 do
                begin
                  if Trim(sgnomina.Cells[Col, 0]) = Nombre then
                  begin
                    //Afiliado Principal
                    Query2.Close;
                    Query2.SQL.Clear;
                    Query2.SQL.Add('select sum(pla_tarifa_basica - ((pla_tarifa_basica*pla_porciento_empresa)/100)) as Monto');
                    Query2.SQL.Add('from empleado_planes_seguro');
                    Query2.SQL.Add('where emp_codigo = :emp');
                    Query2.SQL.Add('and emp_numero = :cod');
                    Query2.SQL.Add('and dep_numero is null');
                    Query2.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
                    Query2.Parameters.ParamByName('cod').Value := StrToInt(sgnomina.Cells[0, sgnomina.RowCount-1]);
                    Query2.Open;
                    if Query2.RecordCount > 0 then
                    begin
                      MontoSeguro := Query2.FieldByName('Monto').AsFloat;

                      //Dependiente
                      Query2.Close;
                      Query2.SQL.Clear;
                      Query2.SQL.Add('select sum(pla_tarifa_basica) as Monto');
                      Query2.SQL.Add('from empleado_planes_seguro');
                      Query2.SQL.Add('where emp_codigo = :emp');
                      Query2.SQL.Add('and emp_numero = :cod');
                      Query2.SQL.Add('and dep_numero is not null');
                      Query2.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
                      Query2.Parameters.ParamByName('cod').Value := StrToInt(sgnomina.Cells[0, sgnomina.RowCount-1]);
                      Query2.Open;
                      if Query2.RecordCount > 0 then
                        MontoSeguro := MontoSeguro + Query2.FieldByName('Monto').AsFloat;

                      TotalDesc := TotalDesc + (MontoSeguro / dm.Query1.FieldByName('tno_cant_mensual').AsInteger);
                      sgnomina.Cells[Col, sgnomina.RowCount-1] := Format('%n',[MontoSeguro/dm.Query1.FieldByName('tno_cant_mensual').AsInteger]);
                      break;
                    end;
                  end;
                end;
              end;
            end;
          end;

          Query3.Next;
        end;

        //********************************
        //Buscando Descuentos Fijo
        //********************************
        Query2.Close;
        Query2.SQL.Clear;
        Query2.SQL.Add('select t.tde_nombre, d.des_periodo_descuento,');
        Query2.SQL.Add('sum(case isnull(d.des_cuotas,0) when 0 then d.des_valor else (d.des_valor/d.des_cuotas) end) as Valor');
        Query2.SQL.Add('from tipo_descuentos t,  Descuentos d');
        Query2.SQL.Add('where t.emp_codigo = d.emp_codigo');
        Query2.SQL.Add('and t.tde_codigo = d.tde_codigo');
        Query2.SQL.Add('and t.emp_codigo = :emp');
        Query2.SQL.Add('and d.emp_numero = :cod');
        Query2.SQL.Add('and d.des_fijo_variable = '+QuotedStr('F'));
        //Query2.SQL.Add('and t.tde_prestamo = '+QuotedStr('False'));
        Query2.SQL.Add('and t.tde_visualizar = '+QuotedStr('True'));
        Query2.SQL.Add('group by t.tde_nombre, d.des_periodo_descuento');
        Query2.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        Query2.Parameters.ParamByName('cod').Value := StrToInt(sgnomina.Cells[0, sgnomina.RowCount-1]);
        Query2.Open;
        while not Query2.eof do
        begin
          if Query2.FieldByName('des_periodo_descuento').AsString = '1' then
          begin
            if (Dayof(fdesde.Date) >= 1) and (Dayof(fhasta.Date) <= 15) then
            begin
              for Col := 3 to sgnomina.ColCount -1 do
              begin
                if Trim(sgnomina.Cells[Col, 0]) = Query2.FieldByName('tde_nombre').AsString then
                begin
                  sgnomina.Cells[Col, sgnomina.RowCount-1] := Format('%n',[Query2.FieldByName('Valor').AsFloat]);
                  TotalDesc := TotalDesc + Query2.FieldByName('Valor').AsFloat;
                end;
              end;
            end;
          end
          else if Query2.FieldByName('des_periodo_descuento').AsString = '2' then
          begin
            if (Dayof(fdesde.Date) >= 16) and (Dayof(fhasta.Date) <= 31) then
            begin
              for Col := 3 to sgnomina.ColCount -1 do
              begin
                if Trim(sgnomina.Cells[Col, 0]) = Query2.FieldByName('tde_nombre').AsString then
                begin
                  sgnomina.Cells[Col, sgnomina.RowCount-1] := Format('%n',[Query2.FieldByName('Valor').AsFloat]);
                  TotalDesc := TotalDesc + Query2.FieldByName('Valor').AsFloat;
                end;
              end;
            end;
          end
          else if Query2.FieldByName('des_periodo_descuento').AsString = '3' then
          begin
            if (Dayof(fdesde.Date) >= 1) and (Dayof(fhasta.Date) <= 31) then
            begin
              for Col := 3 to sgnomina.ColCount -1 do
              begin
                if Trim(sgnomina.Cells[Col, 0]) = Query2.FieldByName('tde_nombre').AsString then
                begin
                  sgnomina.Cells[Col, sgnomina.RowCount-1] := Format('%n',[Query2.FieldByName('Valor').AsFloat]);
                  TotalDesc := TotalDesc + Query2.FieldByName('Valor').AsFloat;
                end;
              end;
            end;
          end;

          Query2.Next;
        end;

        //********************************
        //Buscando Descuentos Variables
        //********************************
        Query2.Close;
        Query2.SQL.Clear;
        Query2.SQL.Add('select t.tde_nombre, d.des_periodo_descuento,');
        Query2.SQL.Add('sum(case isnull(d.des_cuotas,0) when 0 then d.des_valor else (d.des_valor/d.des_cuotas) end) as Valor');
        Query2.SQL.Add('from tipo_descuentos t,  Descuentos d');
        Query2.SQL.Add('where t.emp_codigo = d.emp_codigo');
        Query2.SQL.Add('and t.tde_codigo = d.tde_codigo');
        Query2.SQL.Add('and t.emp_codigo = :emp');
        Query2.SQL.Add('and d.emp_numero = :cod');
        Query2.SQL.Add('and d.des_fijo_variable = '+QuotedStr('V'));
        Query2.SQL.Add('and t.tde_prestamo = '+QuotedStr('False'));
        Query2.SQL.Add('and d.des_fecha between convert(Datetime, :fec1, 105) and convert(Datetime, :fec2, 105)');
        Query2.SQL.Add('and t.tde_visualizar = '+QuotedStr('True'));
        Query2.SQL.Add('group by t.tde_nombre, d.des_periodo_descuento');
        Query2.Parameters.ParamByName('emp').Value     := dm.QEmpresasEMP_CODIGO.Value;
        Query2.Parameters.ParamByName('cod').Value     := StrToInt(sgnomina.Cells[0, sgnomina.RowCount-1]);
        Query2.Parameters.ParamByName('fec1').DataType := ftDate;
        Query2.Parameters.ParamByName('fec2').DataType := ftDate;
        Query2.Parameters.ParamByName('fec1').Value    := fdesde.Date;
        Query2.Parameters.ParamByName('fec2').Value    := fhasta.Date;
        Query2.Open;
        while not Query2.eof do
        begin
          if Query2.FieldByName('des_periodo_descuento').AsString = '1' then
          begin
            if (Dayof(fdesde.Date) >= 1) and (Dayof(fhasta.Date) <= 15) then
            begin
              for Col := 3 to sgnomina.ColCount -1 do
              begin
                if Trim(sgnomina.Cells[Col, 0]) = Query2.FieldByName('tde_nombre').AsString then
                begin
                  sgnomina.Cells[Col, sgnomina.RowCount-1] := Format('%n',[Query2.FieldByName('Valor').AsFloat]);
                  TotalDesc := TotalDesc + Query2.FieldByName('Valor').AsFloat;
                end;
              end;
            end;
          end
          else if Query2.FieldByName('des_periodo_descuento').AsString = '2' then
          begin
            if (Dayof(fdesde.Date) >= 16) and (Dayof(fhasta.Date) <= 31) then
            begin
              for Col := 3 to sgnomina.ColCount -1 do
              begin
                if Trim(sgnomina.Cells[Col, 0]) = Query2.FieldByName('tde_nombre').AsString then
                begin
                  sgnomina.Cells[Col, sgnomina.RowCount-1] := Format('%n',[Query2.FieldByName('Valor').AsFloat]);
                  TotalDesc := TotalDesc + Query2.FieldByName('Valor').AsFloat;
                end;
              end;
            end;
          end
          else if Query2.FieldByName('des_periodo_descuento').AsString = '3' then
          begin
            if (Dayof(fdesde.Date) >= 1) and (Dayof(fhasta.Date) <= 31) then
            begin
              for Col := 3 to sgnomina.ColCount -1 do
              begin
                if Trim(sgnomina.Cells[Col, 0]) = Query2.FieldByName('tde_nombre').AsString then
                begin
                  sgnomina.Cells[Col, sgnomina.RowCount-1] := Format('%n',[Query2.FieldByName('Valor').AsFloat]);
                  TotalDesc := TotalDesc + Query2.FieldByName('Valor').AsFloat;
                end;
              end;
            end;
          end;

          Query2.Next;
        end;

        //********************************
        //Buscando Descuentos Prestamos
        //********************************
        Query2.Close;
        Query2.SQL.Clear;
        Query2.SQL.Add('select t.tde_nombre, d.des_periodo_descuento,');
        Query2.SQL.Add('sum((d.des_valor + ((d.des_valor*d.des_interes)/100))/des_cuotas) as Valor');
        Query2.SQL.Add('from tipo_descuentos t, Descuentos d');
        Query2.SQL.Add('where t.emp_codigo = d.emp_codigo');
        Query2.SQL.Add('and t.tde_codigo = d.tde_codigo');
        Query2.SQL.Add('and t.emp_codigo = :emp');
        Query2.SQL.Add('and d.emp_numero = :cod');
        Query2.SQL.Add('and d.des_fijo_variable = '+QuotedStr('V'));
        Query2.SQL.Add('and d.des_status = '+QuotedStr('PEN'));
        Query2.SQL.Add('and t.tde_prestamo = '+QuotedStr('True'));
        Query2.SQL.Add('and t.tde_visualizar = '+QuotedStr('True'));
        Query2.SQL.Add('group by t.tde_nombre, d.des_periodo_descuento');
        Query2.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        Query2.Parameters.ParamByName('cod').Value := StrToInt(sgnomina.Cells[0, sgnomina.RowCount-1]);
        Query2.Open;
        while not Query2.Eof do
        begin
          if Query2.FieldByName('des_periodo_descuento').AsString = '1' then
          begin
            if (Dayof(fdesde.Date) >= 1) and (Dayof(fhasta.Date) <= 15) then
            begin
              for Col := 3 to sgnomina.ColCount -1 do
              begin
                if Trim(sgnomina.Cells[Col, 0]) = Query2.FieldByName('tde_nombre').AsString then
                begin
                  sgnomina.Cells[Col, sgnomina.RowCount-1] := Format('%n',[Query2.FieldByName('Valor').AsFloat]);
                  TotalDesc := TotalDesc + Query2.FieldByName('Valor').AsFloat;
                end;
              end;
            end;
          end
          else if Query2.FieldByName('des_periodo_descuento').AsString = '2' then
          begin
            if (Dayof(fdesde.Date) >= 16) and (Dayof(fhasta.Date) <= 31) then
            begin
              for Col := 3 to sgnomina.ColCount -1 do
              begin
                if Trim(sgnomina.Cells[Col, 0]) = Query2.FieldByName('tde_nombre').AsString then
                begin
                  sgnomina.Cells[Col, sgnomina.RowCount-1] := Format('%n',[Query2.FieldByName('Valor').AsFloat]);
                  TotalDesc := TotalDesc + Query2.FieldByName('Valor').AsFloat;
                end;
              end;
            end;
          end
          else if Query2.FieldByName('des_periodo_descuento').AsString = '3' then
          begin
            if (Dayof(fdesde.Date) >= 1) and (Dayof(fhasta.Date) <= 31) then
            begin
              for Col := 3 to sgnomina.ColCount -1 do
              begin
                if Trim(sgnomina.Cells[Col, 0]) = Query2.FieldByName('tde_nombre').AsString then
                begin
                  sgnomina.Cells[Col, sgnomina.RowCount-1] := Format('%n',[Query2.FieldByName('Valor').AsFloat]);
                  TotalDesc := TotalDesc + Query2.FieldByName('Valor').AsFloat;
                end;
              end;
            end;
          end;

          Query2.Next;
        end;

        sgnomina.Cells[sgnomina.ColCount-2, sgnomina.RowCount-1] := Format('%n',[TotalDesc]);
        sgnomina.Cells[sgnomina.ColCount-1, sgnomina.RowCount-1] := Format('%n',[TotalIng-TotalDesc]);

        //Denominaciones
        Sueldo := TotalIng-TotalDesc;
        sgdenominacion.Cells[1, sgdenominacion.RowCount-1] := Format('%n',[Sueldo]);

        v2000 := trunc(Sueldo/2000);
        Sueldo := Sueldo - (v2000 * 2000);
        v1000 := trunc(Sueldo/1000);
        Sueldo := Sueldo - (v1000 * 1000);
        v500  := trunc(Sueldo/500);
        Sueldo := Sueldo - (v500 * 500);
        v100  := trunc(Sueldo/100);
        Sueldo := Sueldo - (v100 * 100);
        v50   := trunc(Sueldo/50);
        Sueldo := Sueldo - (v50 * 50);
        v25   := trunc(Sueldo/25);
        Sueldo := Sueldo - (v25 * 25);
        v20   := trunc(Sueldo/20);
        Sueldo := Sueldo - (v20 * 20);
        v10   := trunc(Sueldo/10);
        Sueldo := Sueldo - (v10 * 10);
        v5    := trunc(Sueldo/5);
        Sueldo := Sueldo - (v5 * 5);
        v1    := trunc(Sueldo/1);
        Sueldo := Sueldo - (v1 * 1);
        v050  := trunc(Sueldo/0.50);
        Sueldo := Sueldo - (v050 * 0.50);
        v025  := trunc(Sueldo/0.25);
        Sueldo := Sueldo - (v025*0.25);
        v01   := trunc(Sueldo/0.01);
        Sueldo := Sueldo - (v01*0.01);

        sgdenominacion.Cells[2, sgdenominacion.RowCount-1]  := inttostr(v2000);
        sgdenominacion.Cells[3, sgdenominacion.RowCount-1]  := inttostr(v1000);
        sgdenominacion.Cells[4, sgdenominacion.RowCount-1]  := inttostr(v500);
        sgdenominacion.Cells[5, sgdenominacion.RowCount-1]  := inttostr(v100);
        sgdenominacion.Cells[6, sgdenominacion.RowCount-1]  := inttostr(v50);
        sgdenominacion.Cells[7, sgdenominacion.RowCount-1]  := inttostr(v25);
        sgdenominacion.Cells[8, sgdenominacion.RowCount-1]  := inttostr(v20);
        sgdenominacion.Cells[9, sgdenominacion.RowCount-1]  := inttostr(v10);
        sgdenominacion.Cells[10, sgdenominacion.RowCount-1] := inttostr(v5);
        sgdenominacion.Cells[11, sgdenominacion.RowCount-1] := inttostr(v1);

        sgnomina.RowCount := sgnomina.RowCount + 1;
        sgdenominacion.RowCount := sgdenominacion.RowCount + 1;
        
        dm.Query1.Next;
      end;
      sgnomina.RowCount := sgnomina.RowCount + 1;

      Query1.Next;
    end;

    sgnomina.RowCount := sgnomina.RowCount - 1;

    //********************************
    //Totallizando por Departamento
    //********************************
    for col := 3 to sgnomina.ColCount -1 do
    begin
      TotalDepto := 0;
      for row := 2 to sgnomina.RowCount -1 do
      begin
        if Trim(sgnomina.Cells[0,row]) <> '' then
        begin
          Texto := '';
          for a := 1 to length(Trim(sgnomina.Cells[col,row])) do
          begin
            if Copy(Trim(sgnomina.Cells[col,row]),a,1) <> ',' then
              Texto := Texto + Copy(Trim(sgnomina.Cells[col,row]),a,1);
          end;
          if Trim(Texto) = '' then Texto := '0';
          TotalDepto := TotalDepto + StrToFloat(Texto);
        end
        else
        begin
          if (Trim(sgnomina.Cells[0,row]) = '') and (Trim(sgnomina.Cells[1,row]) = '')
          and (Trim(sgnomina.Cells[2,row]) = '') then
          begin
            sgnomina.Cells[col, row] := Format('%n',[TotalDepto]);
            TotalDepto := 0;
          end;
        end;
      end;
    end;

    //Totales Generales
    sgnomina.RowCount := sgnomina.RowCount +1;
    for col := 3 to sgnomina.ColCount -1 do
    begin
      TotalDepto := 0;
      for row := 2 to sgnomina.RowCount -2 do
      begin
        if Trim(sgnomina.Cells[0,row]) <> '' then
        begin
          Texto := '';
          for a := 1 to length(Trim(sgnomina.Cells[col,row])) do
          begin
            if Copy(Trim(sgnomina.Cells[col,row]),a,1) <> ',' then
              Texto := Texto + Copy(Trim(sgnomina.Cells[col,row]),a,1);
          end;
          if Trim(Texto) = '' then Texto := '0';
          TotalDepto := TotalDepto + StrToFloat(Texto);
        end;
      end;
      sgnomina.Cells[1, sgnomina.RowCount-1] := 'Total General';
      sgnomina.Cells[col, sgnomina.RowCount-1] := Format('%n',[TotalDepto]);
    end;

    //***************************
    //Totallizando Denominaciones
    //***************************
    for col := 2 to sgdenominacion.ColCount -1 do
    begin
      a := 0;
      for row := 1 to sgdenominacion.RowCount -2 do
        a := a + StrToInt(sgdenominacion.Cells[col, row]);

      sgdenominacion.Cells[col, sgdenominacion.RowCount -1] := IntToStr(a);
    end;

    btexportar.Enabled := True;
    btpostear.Enabled  := True;

    Screen.Cursor := crDefault;

  end;
end;

procedure TfrmNomina.sgnominaDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  dx: Integer;
  txt: string;
  i: integer;
  procedure WriteText(StringGrid: TStringGrid; ACanvas: TCanvas; const ARect: TRect;
      const Text: string; Format: Word);
  const
    DX = 2;
    DY = 2;
  var
    S: array[0..255] of Char;
    B, R: TRect;
  begin
    with Stringgrid, ACanvas, ARect do
    begin
      case Format of
      DT_LEFT: ExtTextOut(Handle, Left + DX, Top + DY,
               ETO_OPAQUE or ETO_CLIPPED, @ARect, StrPCopy(S, Text),
               Length(Text), nil);

      DT_RIGHT: ExtTextOut(Handle, Right - TextWidth(Text) - 3, Top + DY,
              ETO_OPAQUE or ETO_CLIPPED, @ARect, StrPCopy(S, Text),
              Length(Text), nil);

      DT_CENTER: ExtTextOut(Handle, Left + (Right - Left - TextWidth(Text)) div 2,
              Top + DY, ETO_OPAQUE or ETO_CLIPPED, @ARect,
              StrPCopy(S, Text), Length(Text), nil);
      end;
    end;
  end;

  procedure Display(StringGrid: TStringGrid; const S: string; Alignment: TAlignment);
  const
    Formats: array[TAlignment] of Word = (DT_LEFT, DT_RIGHT, DT_CENTER);
  begin
    WriteText(StringGrid, StringGrid.Canvas, Rect, S, Formats[Alignment]);
  end;
const
  SelectedColor = Clblue;
begin
  with sgnomina do
  begin
    i:=Arow;
    txt:=Trim(Cells[0,ARow]);
    if (Arow=i) and (txt='') then
    begin
      Canvas.Font.Style := [fsBold];
      //Canvas.Brush.Color:=Clred;
      Canvas.FillRect(rect);
      Canvas.TextOut(Rect.left +1, Rect.top +1, Cells[ACol,ARow]);
    end;

    if (Arow=i) and (Trim(Cells[1,ARow])='Total General') then
    begin
      Canvas.Font.Style := [fsBold];
      Canvas.Font.Color:=clBlue;
      Canvas.FillRect(rect);
      Canvas.TextOut(Rect.left +1, Rect.top +1, Cells[ACol,ARow]);
    end;

    if ARow = 0 then
    Begin
       Canvas.Font.Name := 'Tahoma';
       Canvas.Brush.Color := clBtnFace;
       //Canvas.Font.Style := [fsBold];
       Canvas.FillRect(rect);
       Canvas.TextOut(Rect.left +1, Rect.top +1, Cells[ACol,ARow]);
    End
    else
    begin
       Canvas.Font.Name := 'Tahoma';
       Canvas.Font.Size := 8;
       Canvas.FillRect(rect);
       Canvas.TextOut(Rect.left +1, Rect.top +1, Cells[ACol,ARow]);
    end;
    //Canvas.FillRect(rect);
    //Canvas.TextOut(Rect.left +1, Rect.top +1, Cells[ACol,ARow]);

    // Right-justify columns 0-2
    // Spalten 0-2 rechts ausrichten.
   if (ACol > 2) then
      Display(sgnomina, sgnomina.Cells[ACol, ARow], taRightJustify);

   if (ACol = 2) then
      Display(sgnomina, sgnomina.Cells[ACol, ARow], taCenter);

  {  if ACol = 3 then
      Display(sgCatalogo, sgCatalogo.Cells[ACol, ARow], taCenter);
    if (ACol in[0,2,3,4]) and (ARow = 0) then
      Display(sgCatalogo, sgCatalogo.Cells[ACol, ARow], taCenter);}
   if  (gdSelected in State) or (gdFocused in State) then
   begin
     Canvas.Brush.Color := SelectedColor;
     Canvas.Font.Color  := clWhite;
     Canvas.FillRect(Rect);
     Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2, Cells[aCol, aRow]);
   end;
  end;
end;

procedure TfrmNomina.ExportarStringGridAExcel(StringGrid: TStringGrid; Worksheet: Variant);
var
  Row, Col: Integer;
begin
  // Exportar encabezados
  for Col := 0 to StringGrid.ColCount - 1 do
    Worksheet.Cells[1, Col + 1].Value := StringGrid.Cells[Col, 0];

  // Exportar datos
  for Row := 1 to StringGrid.RowCount - 1 do
  begin
    for Col := 0 to StringGrid.ColCount - 1 do
    begin
      Worksheet.Cells[Row + 1, Col + 1].Value := StringGrid.Cells[Col, Row];
    end;
  end;
end;
procedure TfrmNomina.btexportarClick(Sender: TObject);
{var
  ExcelApp: Variant;
  Workbook: Variant;
  NominaSheet: Variant;
  DenominacionSheet: Variant;
begin
  try
    ExcelApp := CreateOleObject('Excel.Application');
    ExcelApp.Visible := False;
    Workbook := ExcelApp.Workbooks.Add;

    // Crear hojas para Nomina y Denominaciones
    NominaSheet := Workbook.Worksheets[1];
    DenominacionSheet := Workbook.Worksheets.Add(EmptyParam, EmptyParam, 1, EmptyParam);

    // Asignar nombres a las hojas
    NominaSheet.Name := 'Nomina';
    DenominacionSheet.Name := 'Denominaciones';

    // Exportar StringGrids a las hojas correspondientes
    ExportarStringGridAExcel(sgnomina, NominaSheet);
    ExportarStringGridAExcel(sgdenominacion, DenominacionSheet);

    // Guardar el archivo
    if frmMain.GrabaXLS.Execute then
    begin
      Workbook.SaveAs(frmMain.GrabaXLS.FileName);
    end;

    Workbook.Close(False, EmptyParam, EmptyParam);
  finally
    ExcelApp.Quit;
  end;
end;  }

begin


  ExportXLS.Sheets[0].StringGrid := sgnomina;
  ExportXLS.Sheets[0].Exported := True;
  ExportXLS.Sheets[1].StringGrid := sgdenominacion;
  ExportXLS.Sheets[1].Exported := True;

  if frmMain.GrabaXLS.Execute then
  begin
    ExportXLS.FileName := frmMain.GrabaXLS.FileName;

    ExportXLS.Sheets[0].Header.Clear;
    ExportXLS.Sheets[0].Header.Add(dm.QEmpresasEMP_NOMBRE.Value);
    ExportXLS.Sheets[0].Header.Add('Reporte de Nómina');
    ExportXLS.Sheets[0].Header.Add('Correspondiente al período '+DateToStr(fdesde.Date)+' Al '+DateToStr(fhasta.Date));

    ExportXLS.Sheets[1].Header.Clear;
    ExportXLS.Sheets[1].Header.Add(dm.QEmpresasEMP_NOMBRE.Value);
    ExportXLS.Sheets[1].Header.Add('Denominaciones');
    ExportXLS.Sheets[1].Header.Add('Correspondiente al período '+DateToStr(fdesde.Date)+' Al '+DateToStr(fhasta.Date));

   //  ExportXLS.Sheets[0].StringGrid := sgnomina;
    ExportXLS.Execute;
  end;
end;

procedure TfrmNomina.btpostearClick(Sender: TObject);
var
  col, row, a, b : integer;
  Texto : string;
  tIngresos, tDescuentos : double;
begin
  //verificando disponibilidad del banco
  QLibro.Close;
  QLibro.Parameters.ParamByName('emp').Value       := dm.QEmpresasEMP_CODIGO.Value;
  QLibro.Parameters.ParamByName('banco').Value     := dm.QParamRHpar_banco.AsInteger;
  QLibro.Parameters.ParamByName('fecha1').DataType := ftDate;
  QLibro.Parameters.ParamByName('fecha2').DataType := ftDate;
  QLibro.Parameters.ParamByName('fecha1').Value    := fdesde.Date;
  QLibro.Parameters.ParamByName('fecha2').Value    := fhasta.Date;
  QLibro.Parameters.ParamByName('suc').Value       := 1;
  if Trim(edtSucLoc.Text)= '' then
  QLibro.Parameters.ParamByName('sucloc').Value    := null else
  QLibro.Parameters.ParamByName('sucloc').Value    := edtSucLoc.Text;
  QLibro.Open;
  QLibro.Last;
  if QLibroBALANCE.AsFloat = 0 then
    MessageDlg('NO HAY DISPONIBILIDAD EN EL BANCO PARA REALIZAR LA NOMINA', mtError, [mbok], 0)
  else
  begin
    Screen.Cursor := crHourGlass;

    btreversar.Enabled := True;
    btpostear.Enabled  := False;
    btprocesar.Enabled := False;

    //*********************************
    //Eliminando Nominas
    //*********************************
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('delete from Nomina where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tno_codigo = :tno');
    dm.Query1.SQL.Add('and nom_codigo = :nom');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('tno').Value := DBLookupComboBox1.KeyValue;
    dm.Query1.Parameters.ParamByName('nom').Value := QNominanom_codigo.Value;
    dm.Query1.ExecSQL;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('delete from Nomina_Detalle where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tno_codigo = :tno');
    dm.Query1.SQL.Add('and nom_codigo = :nom');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('tno').Value := DBLookupComboBox1.KeyValue;
    dm.Query1.Parameters.ParamByName('nom').Value := QNominanom_codigo.Value;
    dm.Query1.ExecSQL;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('delete from Nomina_Detalle_Novedades where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tno_codigo = :tno');
    dm.Query1.SQL.Add('and nom_codigo = :nom');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('tno').Value := DBLookupComboBox1.KeyValue;
    dm.Query1.Parameters.ParamByName('nom').Value := QNominanom_codigo.Value;
    dm.Query1.ExecSQL;

    //*************************
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(nom_codigo),0) as maximo');
    dm.Query1.SQL.Add('from Nomina where emp_codigo = :emp');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Open;

    QNomina.Insert;
    QNominaemp_codigo.Value := dm.QEmpresasEMP_CODIGO.Value;
    QNominatno_codigo.Value := DBLookupComboBox1.KeyValue;
    QNominanom_codigo.Value := dm.Query1.FieldByName('maximo').AsInteger +1;
    QNominanom_fecha_desde.Value := fdesde.Date;
    QNominanom_fecha_hasta.Value := fhasta.Date;
    QNominanom_fecha_acreditar.Value := facreditar.Date;
    QNominanom_status.Value := 'ABI';
    QNomina.Post;
    QNomina.UpdateBatch;

    //***************************
    //Buscando Total de Novedades
    //***************************
    {dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select sum(det_monto) as monto');
    dm.Query1.SQL.Add('from nomina_detalle_novedades');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tno_codigo = :tno');
    dm.Query1.SQL.Add('and nom_codigo = :nom');
    dm.Query1.SQL.Add('and tin_codigo is not null');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('tno').Value := DBLookupComboBox1.KeyValue;
    dm.Query1.Parameters.ParamByName('nom').Value := QNominanom_codigo.Value;
    dm.Query1.Open;
    tIngresos := dm.Query1.FieldByName('monto').AsFloat;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select sum(det_monto) as monto');
    dm.Query1.SQL.Add('from nomina_detalle_novedades');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tno_codigo = :tno');
    dm.Query1.SQL.Add('and nom_codigo = :nom');
    dm.Query1.SQL.Add('and tde_codigo is not null');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('tno').Value := DBLookupComboBox1.KeyValue;
    dm.Query1.Parameters.ParamByName('nom').Value := QNominanom_codigo.Value;
    dm.Query1.Open;
    tDescuentos := dm.Query1.FieldByName('monto').AsFloat;}


    for row := 1 to sgnomina.RowCount-2 do
    begin
      for col := 0 to sgnomina.ColCount -2 do
      begin
        if (Trim(sgnomina.Cells[0, row]) = '') and (Trim(sgnomina.Cells[1, row]) <> '') then //Departamento
        begin
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('select gru_codigo from grupos_trabajo');
          dm.Query1.SQL.Add('where emp_codigo = :emp');
          dm.Query1.SQL.Add('and gru_nombre = :nom');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
          dm.Query1.Parameters.ParamByName('nom').Value := Trim(sgnomina.Cells[1, row]);
          dm.Query1.Open;
          break
        end;
        if ((trim(sgnomina.Cells[col, 0]) = 'Total Ingresos') or (trim(sgnomina.Cells[col, 0]) = 'Total Desc.'))
        and (Trim(sgnomina.Cells[0, row]) <> '') then //Empleado
        begin
          Query1.Close;
          Query1.SQL.Clear;
          Query1.SQL.Add('select isnull(max(det_secuencia),0) as maximo from Nomina_Detalle');
          Query1.SQL.Add('where emp_codigo = :emp');
          Query1.SQL.Add('and nom_codigo = :nom');
          Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
          Query1.Parameters.ParamByName('nom').Value := QNominanom_codigo.Value;
          Query1.Open;

          QDetalle.Insert;
          QDetalleemp_codigo.Value := dm.QEmpresasEMP_CODIGO.Value;
          QDetalletno_codigo.Value := DBLookupComboBox1.KeyValue;
          QDetallenom_codigo.Value := QNominanom_codigo.Value;
          QDetalleemp_numero.Value := StrToInt(Trim(sgnomina.Cells[0, row]));
          QDetallegru_codigo.Value := dm.Query1.FieldByName('gru_codigo').AsInteger;
          QDetalledet_secuencia.Value := Query1.FieldByName('maximo').AsInteger + 1;
          QDetalledet_total_ingresos.Value   := 0;
          QDetalledet_total_descuentos.Value := 0;

          if Trim(sgnomina.Cells[col, 0]) = 'Total Ingresos' then
          begin
            if Trim(sgnomina.Cells[col,row]) <> '' then
            begin
              Texto := '';
              for a := 1 to length(Trim(sgnomina.Cells[col,row])) do
              begin
                if Copy(Trim(sgnomina.Cells[col,row]),a,1) <> ',' then
                  Texto := Texto + Copy(Trim(sgnomina.Cells[col,row]),a,1);
              end;
              if Trim(Texto) = '' then Texto := '0';
              QDetalledet_total_ingresos.Value := StrToFloat(Texto);
            end
            else
              QDetalledet_total_ingresos.Value := 0;
          end;

          if Trim(sgnomina.Cells[col, 0]) = 'Total Desc.' then
          begin
            if Trim(sgnomina.Cells[col,row]) <> '' then
            begin
              Texto := '';
              for a := 1 to length(Trim(sgnomina.Cells[col,row])) do
              begin
                if Copy(Trim(sgnomina.Cells[col,row]),a,1) <> ',' then
                  Texto := Texto + Copy(Trim(sgnomina.Cells[col,row]),a,1);
              end;
              if Trim(Texto) = '' then Texto := '0';
              QDetalledet_total_descuentos.Value := StrToFloat(Texto);
            end
            else
              QDetalledet_total_descuentos.Value := 0;
          end;
          QDetalledet_total_neto.Value := QDetalledet_total_ingresos.Value - QDetalledet_total_descuentos.Value;
          QDetalle.Post;
          QDetalle.UpdateBatch;
        end;

        if (Trim(sgnomina.Cells[col, 0]) <> 'Total Ingresos') and (Trim(sgnomina.Cells[col, 0]) <> 'Total Desc.')
        and (Trim(sgnomina.Cells[col, 0]) <> 'Neto A Pagar') and (Trim(sgnomina.Cells[0, row]) <> '') and
        (col > 2) then
        begin
          Query1.Close;
          Query1.SQL.Clear;
          Query1.SQL.Add('select isnull(max(det_secuencia),0) as maximo from Nomina_Detalle_Novedades');
          Query1.SQL.Add('where emp_codigo = :emp');
          Query1.SQL.Add('and nom_codigo = :nom');
          Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
          Query1.Parameters.ParamByName('nom').Value := QNominanom_codigo.Value;
          Query1.Open;

          QNovedades.Insert;
          QNovedadesemp_codigo.Value := dm.QEmpresasEMP_CODIGO.Value;
          QNovedadestno_codigo.Value := DBLookupComboBox1.KeyValue;
          QNovedadesnom_codigo.Value := QNominanom_codigo.Value;
          QNovedadesemp_numero.Value := StrToInt(Trim(sgnomina.Cells[0, row]));
          QNovedadesdet_secuencia.Value := Query1.FieldByName('maximo').AsInteger + 1;
          QNovedadesdet_monto.Value := 0;
          QNovedadesafp_aporte_empresa.Value  := afp_aporte_empresa;
          QNovedadesafp_aporte_afiliado.Value := afp_aporte_afiliado;
          QNovedadessfs_aporte_empresa.Value  := sfs_aporte_empresa;
          QNovedadessfs_aporte_afiliado.Value := sfs_aporte_afiliado;

          if Trim(sgnomina.Cells[col,row]) <> '' then
          begin
            Texto := '';
            for a := 1 to length(Trim(sgnomina.Cells[col,row])) do
            begin
              if Copy(Trim(sgnomina.Cells[col,row]),a,1) <> ',' then
                Texto := Texto + Copy(Trim(sgnomina.Cells[col,row]),a,1);
            end;
            if Trim(Texto) = '' then Texto := '0';
            QNovedadesdet_monto.Value := StrToFloat(Texto);
          end
          else
            QNovedadesdet_monto.Value := 0;

          Query2.Close;
          Query2.SQL.Clear;
          Query2.SQL.Add('select tin_codigo from tipo_ingresos');
          Query2.SQL.Add('where emp_codigo = :emp');
          Query2.SQL.Add('and tin_nombre = :nom');
          Query2.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
          Query2.Parameters.ParamByName('nom').Value := Trim(sgnomina.Cells[col, 0]);
          Query2.Open;
          if Query2.RecordCount > 0 then
            QNovedadestin_codigo.Value := Query2.FieldByName('tin_codigo').AsInteger
          else
          begin
            Query2.Close;
            Query2.SQL.Clear;
            Query2.SQL.Add('select tde_codigo, tde_prestamo from tipo_descuentos');
            Query2.SQL.Add('where emp_codigo = :emp');
            Query2.SQL.Add('and tde_nombre = :nom');
            Query2.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
            Query2.Parameters.ParamByName('nom').Value := Trim(sgnomina.Cells[col, 0]);
            Query2.Open;
            if Query2.RecordCount > 0 then
            begin
              QNovedadestde_codigo.Value := Query2.FieldByName('tde_codigo').AsInteger;

              //Si es un Descuento para prestamos
              if (Query2.FieldByName('tde_prestamo').asString = 'True') and (QNovedadesdet_monto.Value > 0) then
              begin
                Query2.Close;
                Query2.SQL.Clear;
                Query2.SQL.Add('select des_codigo, des_periodo_descuento from descuentos');
                Query2.SQL.Add('where emp_codigo = :emp');
                Query2.SQL.Add('and emp_numero = :cod');
                Query2.SQL.Add('and des_status = '+QuotedStr('PEN'));
                Query2.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
                Query2.Parameters.ParamByName('cod').Value := StrToInt(Trim(sgnomina.Cells[0, row]));
                Query2.Open;
                if Query2.RecordCount > 0 then
                begin
                  QNovedadesdes_codigo.Value := Query2.FieldByName('des_codigo').AsInteger;
                  Query1.Close;
                  Query1.SQL.Clear;
                  Query1.SQL.Add('update descuentos set des_cuotas_pagadas = des_cuotas_pagadas + 1,');
                  Query1.SQL.Add('des_monto_pagado = des_monto_pagado + :mto');
                  Query1.SQL.Add('where emp_codigo = :emp');
                  Query1.SQL.Add('and emp_numero = :cod');
                  Query1.SQL.Add('and des_codigo = :des');
                  if Query2.FieldByName('des_periodo_descuento').AsString = '1' then
                    Query1.SQL.Add('and day(des_fecha) between 1 and 15')
                  else if Query2.FieldByName('des_periodo_descuento').AsString = '2' then
                    Query1.SQL.Add('and day(des_fecha) between 16 and 31')
                  else if Query2.FieldByName('des_periodo_descuento').AsString = '3' then
                    Query1.SQL.Add('and day(des_fecha) between 1 and 31');

                  Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
                  Query1.Parameters.ParamByName('cod').Value := StrToInt(Trim(sgnomina.Cells[0, row]));
                  Query1.Parameters.ParamByName('des').Value := Query2.FieldByName('des_codigo').AsInteger;
                  Query1.Parameters.ParamByName('mto').Value := QNovedadesdet_monto.Value;
                  Query1.ExecSQL;

                  Query1.Close;
                  Query1.SQL.Clear;
                  Query1.SQL.Add('update descuentos set des_status = '+QuotedStr('PAG'));
                  Query1.SQL.Add('where emp_codigo = :emp');
                  Query1.SQL.Add('and emp_numero = :cod');
                  Query1.SQL.Add('and des_codigo = :des');
                  Query1.SQL.Add('and des_status = '+QuotedStr('PEN'));
                  Query1.SQL.Add('and des_cuotas_pagadas = des_cuotas');
                  if Query2.FieldByName('des_periodo_descuento').AsString = '1' then
                    Query1.SQL.Add('and day(des_fecha) between 1 and 15')
                  else if Query2.FieldByName('des_periodo_descuento').AsString = '2' then
                    Query1.SQL.Add('and day(des_fecha) between 16 and 31')
                  else if Query2.FieldByName('des_periodo_descuento').AsString = '3' then
                    Query1.SQL.Add('and day(des_fecha) between 1 and 31');

                  Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
                  Query1.Parameters.ParamByName('cod').Value := StrToInt(Trim(sgnomina.Cells[0, row]));
                  Query1.Parameters.ParamByName('des').Value := Query2.FieldByName('des_codigo').AsInteger;
                  Query1.ExecSQL;
                end;
              end;
            end;
          end;
          QNovedades.Post;
          QNovedades.UpdateBatch;
        end;
      end;
    end;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmNomina.btvolantesClick(Sender: TObject);
begin
  Application.CreateForm(tRVolantePago, RVolantePago);
  RVolantePago.QDetalle.SQL.Add('order by g.gru_codigo, e.emp_nombres');
  RVolantePago.lbperiodo.Caption := 'Correspondiente al períido '+DateToStr(fdesde.Date)+' Al '+DateToStr(fhasta.Date);
  RVolantePago.lbTipoNomina.Caption := 'NOMINA '+DBLookupComboBox1.Text;
  RVolantePago.QNomina.Parameters.ParamByName('tno').Value := DBLookupComboBox1.KeyValue;
  RVolantePago.QNomina.Parameters.ParamByName('nom').Value := QNominanom_codigo.Value;
  RVolantePago.QNomina.Open;
  RVolantePago.QDetalle.Open;
  RVolantePago.QNovedades.Open;
  RVolantePago.PrinterSetup;
  RVolantePago.Preview;
  RVolantePago.Destroy;
end;

procedure TfrmNomina.btidiomaClick(Sender: TObject);
var
  Texto, Nombre : string;
  TotalDesc, TotalIng, TotalDepto, Sueldo : double;
  col, row, semanas, ColTotalIng, a : integer;
  v2000, v1000, v500, v100, v50, v20, v25, v10, v5, v1, v050, v025, v01 : integer;
begin
  Search.Query.Clear;
  Search.Query.Add('select substring(t.tno_nombre,1,20) as tno_nombre, n.nom_codigo, n.nom_fecha_acreditar');
  Search.Query.Add('from tipo_nomina t, Nomina n');
  Search.Query.Add('where t.emp_codigo = n.emp_codigo');
  Search.Query.Add('and t.tno_codigo = n.tno_codigo');
  Search.Query.Add('and n.emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Tipo Nomina');
  Search.AliasFields.Add('Codigo');
  Search.AliasFields.Add('Fecha');
  Search.ResultField := 'nom_codigo';
  Search.Title := 'Nominas';
  if Search.execute then
  begin
    Screen.Cursor := crHourGlass;

    btpostear.Enabled  := False;
    btprocesar.Enabled := False;
    btexportar.Enabled := True;
    btreversar.Enabled := True;

    QNomina.Close;
    QNomina.Parameters.ParamByName('nom').Value := StrToInt(Search.ValueField);
    QNomina.Parameters.ParamByName('emp_codigo').Value := dm.QEmpresasEMP_CODIGO.Value;

    QNomina.Open;

    QDetalle.Close;
    QDetalle.Parameters.ParamByName('nom').Value := StrToInt(Search.ValueField);
    QDetalle.Open;

  //  QDetalle.RecordCount;

    QNovedades.Close;
    QNovedades.Parameters.ParamByName('nom').Value := StrToInt(Search.ValueField);
    QNovedades.Open;

    DBLookupComboBox1.KeyValue := QNominatno_codigo.Value;
    fdesde.Date := QNominanom_fecha_desde.Value;
    fhasta.Date := QNominanom_fecha_hasta.Value;
    facreditar.Date := QNominanom_fecha_acreditar.Value;

    //***************************
    //Cantidad de Semanas para SS
    //***************************
    {dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select ss_semanas from ss_semanas');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ss_mes = :mes');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('mes').Value := MonthOf(Date);
    dm.Query1.Open;
    semanas := dm.Query1.FieldByName('ss_semanas').AsInteger;}

    //********************************
    //Buscando Ingresos
    //********************************
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select t.tin_nombre from tipo_ingresos t,');
    dm.Query1.SQL.Add('tipo_ingresos_nomina n');
    dm.Query1.SQL.Add('where t.emp_codigo = n.emp_codigo');
    dm.Query1.SQL.Add('and t.tin_codigo = n.tin_codigo');
    dm.Query1.SQL.Add('and n.emp_codigo = :emp');
    dm.Query1.SQL.Add('and n.tno_codigo = :tno');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('tno').Value := DBLookupComboBox1.KeyValue;
    dm.Query1.Open;

    for col := 0 to sgnomina.ColCount -1 do
      for row := 1 to sgnomina.RowCount -1 do
         sgnomina.Cells[col, row] := '';

    sgnomina.RowCount := 2;
    sgnomina.ColCount := 3;
    sgnomina.Cells[0, 0] := 'CODIGO';
    sgnomina.Cells[1, 0] := 'NOMBRE DEL EMPLEADO';
    sgnomina.Cells[2, 0] := 'CEDULA/PASAPORTE';

    //Denominaciones
    for col := 0 to sgdenominacion.ColCount -1 do
      for row := 1 to sgdenominacion.RowCount -1 do
         sgdenominacion.Cells[col, row] := '';

    sgdenominacion.RowCount := 2;
    sgdenominacion.Cells[0, 0]  := 'Nombre del Empleado';
    sgdenominacion.Cells[1, 0]  := 'Ingreso Neto';
    sgdenominacion.Cells[2, 0]  := '2000';
    sgdenominacion.Cells[3, 0]  := '1000';
    sgdenominacion.Cells[4, 0]  := '500';
    sgdenominacion.Cells[5, 0]  := '100';
    sgdenominacion.Cells[6, 0]  := '50';
    sgdenominacion.Cells[7, 0]  := '25';
    sgdenominacion.Cells[8, 0]  := '20';
    sgdenominacion.Cells[9, 0]  := '10';
    sgdenominacion.Cells[10, 0] := '5';
    sgdenominacion.Cells[11, 0] := '1';

    while not dm.Query1.Eof do
    begin
      Nombre := dm.Query1.FieldByName('tin_nombre').AsString;
      sgnomina.ColCount := sgnomina.ColCount + 1;
      sgnomina.Cells[sgnomina.ColCount-1, 0] := Nombre;
      dm.Query1.Next;
    end;
    sgnomina.ColCount := sgnomina.ColCount + 1;
    sgnomina.Cells[sgnomina.ColCount-1, 0] := 'Total Ingresos';
    ColTotalIng := sgnomina.ColCount - 1;

    //********************************
    //Buscando Descuentos
    //********************************
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select t.tde_nombre from tipo_descuentos t,');
    dm.Query1.SQL.Add('tipo_descuentos_nomina n');
    dm.Query1.SQL.Add('where t.emp_codigo = n.emp_codigo');
    dm.Query1.SQL.Add('and t.tde_codigo = n.tde_codigo');
    dm.Query1.SQL.Add('and n.emp_codigo = :emp');
    dm.Query1.SQL.Add('and n.tno_codigo = :tno');
    dm.Query1.SQL.Add('order by t.tde_secuencia_nomina');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('tno').Value := DBLookupComboBox1.KeyValue;
    dm.Query1.Open;

    while not dm.Query1.Eof do
    begin
      Nombre := dm.Query1.FieldByName('tde_nombre').AsString;
      sgnomina.ColCount := sgnomina.ColCount + 1;
      sgnomina.Cells[sgnomina.ColCount-1, 0] := Nombre;
      dm.Query1.Next;
    end;
    sgnomina.ColCount := sgnomina.ColCount + 1;
    sgnomina.Cells[sgnomina.ColCount-1, 0] := 'Total Desc.';
    sgnomina.ColCount := sgnomina.ColCount + 1;
    sgnomina.Cells[sgnomina.ColCount-1, 0] := 'Neto Pagar';

    //************************************
    //Buscando Empleados por Departamento
    //************************************
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select distinct d.gru_codigo, g.gru_nombre');
    Query1.SQL.Add('from Nomina_Detalle d, grupos_trabajo g');
    Query1.SQL.Add('where d.emp_codigo = g.emp_codigo');
    Query1.SQL.Add('and d.gru_codigo = g.gru_codigo');
    Query1.SQL.Add('and d.emp_codigo = :emp');
    Query1.SQL.Add('and d.tno_codigo = :tno');
    Query1.SQL.Add('and d.nom_codigo = :nom');
    Query1.SQL.Add('order by d.gru_codigo');
    Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    Query1.Parameters.ParamByName('tno').Value := DBLookupComboBox1.KeyValue;
    Query1.Parameters.ParamByName('nom').Value := QNominanom_codigo.Value;
    Query1.Open;
    while not Query1.Eof do
    begin
      //TotalDepto := 0;
      sgnomina.Cells[1, sgnomina.RowCount-1] := Query1.FieldByName('gru_nombre').AsString;

      sgnomina.RowCount := sgnomina.RowCount + 1;

      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select e.emp_numero, e.emp_cuenta_bancaria, n.det_monto as emp_salario,');
      dm.Query1.SQL.Add('n.det_monto as salario_total, t.tno_cant_mensual, case when len(RTRIM(LTRIM(e.emp_cedula))) =9  then e.emp_pasaporte else e.emp_cedula end as emp_cedula ,');
      dm.Query1.SQL.Add('(e.emp_nombres+'+QuotedStr(' ')+'+e.emp_apellido_paterno+'+QuotedStr(' ')+'+e.emp_apellido_materno) as Nombre');
      dm.Query1.SQL.Add('from empleados e, nomina_detalle_novedades n, Tipo_Nomina t');
      dm.Query1.SQL.Add('where n.emp_codigo = t.emp_codigo');
      dm.Query1.SQL.Add('and n.tno_codigo = t.tno_codigo');
      dm.Query1.SQL.Add('and n.emp_codigo = e.emp_codigo');
      dm.Query1.SQL.Add('and n.emp_numero = e.emp_numero');
      dm.Query1.SQL.Add('and n.tin_codigo = '+dm.QParamRHpar_tipo_ingrerso_salario.AsString);
      dm.Query1.SQL.Add('and n.nom_codigo = :nom');
      dm.Query1.SQL.Add('and n.tno_codigo = :tno');
      dm.Query1.SQL.Add('and e.emp_codigo = :emp');
      dm.Query1.SQL.Add('and e.gru_codigo = :gru');
      dm.Query1.SQL.Add('order by e.emp_nombres');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('gru').Value := Query1.FieldByName('gru_codigo').AsInteger;
      dm.Query1.Parameters.ParamByName('tno').Value := DBLookupComboBox1.KeyValue;
      dm.Query1.Parameters.ParamByName('nom').Value := QNominanom_codigo.Value;
      dm.Query1.Open;

      while not dm.Query1.Eof do
      begin
        TotalDesc := 0; TotalIng := 0;
        sgnomina.Cells[0, sgnomina.RowCount-1] := dm.Query1.FieldByName('emp_numero').AsString;
        sgnomina.Cells[1, sgnomina.RowCount-1] := dm.Query1.FieldByName('Nombre').AsString;
        sgnomina.Cells[2, sgnomina.RowCount-1] := dm.Query1.FieldByName('emp_cedula').AsString;

        sgdenominacion.Cells[0, sgdenominacion.RowCount-1] := dm.Query1.FieldByName('Nombre').AsString;

        //********************************
        //Buscando Ingreso por Salario
        //********************************
        Query2.Close;
        Query2.SQL.Clear;
        Query2.SQL.Add('select t.tin_nombre from tipo_ingresos t,  Param_RHumanos p');
        Query2.SQL.Add('where t.emp_codigo = p.emp_codigo');
        Query2.SQL.Add('and t.tin_codigo = p.par_tipo_ingrerso_salario');
        Query2.SQL.Add('and t.emp_codigo = :emp');
        Query2.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        Query2.Open;
        if Query2.RecordCount > 0 then
        begin
          for Col := 3 to sgnomina.ColCount -1 do
          begin
            if Trim(sgnomina.Cells[Col, 0]) = Query2.FieldByName('tin_nombre').AsString then
            begin
              sgnomina.Cells[Col, sgnomina.RowCount-1] := Format('%n',[dm.Query1.FieldByName('emp_salario').AsFloat]);
              TotalIng := TotalIng + dm.Query1.FieldByName('emp_salario').AsFloat;
              break;
            end;
          end;
        end;

        //********************************
        //Buscando Ingresos
        //********************************
        Query2.Close;
        Query2.SQL.Clear;
        Query2.SQL.Add('select t.tin_nombre, sum(i.det_monto) as Valor');
        Query2.SQL.Add('from tipo_ingresos t,  Nomina_Detalle_Novedades i');
        Query2.SQL.Add('where t.emp_codigo = i.emp_codigo');
        Query2.SQL.Add('and t.tin_codigo = i.tin_codigo');
        Query2.SQL.Add('and t.emp_codigo = :emp');
        Query2.SQL.Add('and i.emp_numero = :cod');
        Query2.SQL.Add('and i.nom_codigo = :nom');
        Query2.SQL.Add('and i.tno_codigo = :tno');
        Query2.SQL.Add('and i.tin_codigo <> '+dm.QParamRHpar_tipo_ingrerso_salario.AsString);
        Query2.SQL.Add('and i.det_monto > 0');
        Query2.SQL.Add('group by t.tin_nombre');
        Query2.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        Query2.Parameters.ParamByName('cod').Value := StrToInt(sgnomina.Cells[0, sgnomina.RowCount-1]);
        Query2.Parameters.ParamByName('tno').Value := DBLookupComboBox1.KeyValue;
        Query2.Parameters.ParamByName('nom').Value := QNominanom_codigo.Value;
        Query2.Open;
        while not Query2.Eof do
        begin
          for Col := 3 to sgnomina.ColCount -1 do
          begin
            if Trim(sgnomina.Cells[Col, 0]) = Query2.FieldByName('tin_nombre').AsString then
            begin
              sgnomina.Cells[Col, sgnomina.RowCount-1] := Format('%n',[Query2.FieldByName('Valor').AsFloat]);
              TotalIng := TotalIng + Query2.FieldByName('Valor').AsFloat;
            end;
          end;
          Query2.Next;
        end;
        sgnomina.Cells[ColTotalIng, sgnomina.RowCount-1] := Format('%n',[TotalIng]);

        //********************************
        //Buscando Descuentos
        //********************************
        Query2.Close;
        Query2.SQL.Clear;
        Query2.SQL.Add('select t.tde_nombre, sum(i.det_monto) as Valor');
        Query2.SQL.Add('from tipo_descuentos t,  Nomina_Detalle_Novedades i');
        Query2.SQL.Add('where t.emp_codigo = i.emp_codigo');
        Query2.SQL.Add('and t.tde_codigo = i.tde_codigo');
        Query2.SQL.Add('and t.emp_codigo = :emp');
        Query2.SQL.Add('and i.emp_numero = :cod');
        Query2.SQL.Add('and i.nom_codigo = :nom');
        Query2.SQL.Add('and i.tno_codigo = :tno');
        Query2.SQL.Add('and i.det_monto > 0');
        Query2.SQL.Add('group by t.tde_nombre');
        Query2.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        Query2.Parameters.ParamByName('cod').Value := StrToInt(sgnomina.Cells[0, sgnomina.RowCount-1]);
        Query2.Parameters.ParamByName('tno').Value := DBLookupComboBox1.KeyValue;
        Query2.Parameters.ParamByName('nom').Value := QNominanom_codigo.Value;
        Query2.Open;
        while not Query2.Eof do
        begin
          for Col := 3 to sgnomina.ColCount -1 do
          begin
            if Trim(sgnomina.Cells[Col, 0]) = Query2.FieldByName('tde_nombre').AsString then
            begin
              sgnomina.Cells[Col, sgnomina.RowCount-1] := Format('%n',[Query2.FieldByName('Valor').AsFloat]);
              TotalDesc := TotalDesc + Query2.FieldByName('Valor').AsFloat;
            end;
          end;
          Query2.Next;
        end;

        sgnomina.Cells[sgnomina.ColCount-2, sgnomina.RowCount-1] := Format('%n',[TotalDesc]);
        sgnomina.Cells[sgnomina.ColCount-1, sgnomina.RowCount-1] := Format('%n',[TotalIng-TotalDesc]);

        //Denominaciones
        Sueldo := TotalIng-TotalDesc;
        sgdenominacion.Cells[1, sgdenominacion.RowCount-1] := Format('%n',[Sueldo]);

        v2000 := trunc(Sueldo/2000);
        Sueldo := Sueldo - (v2000 * 2000);
        v1000 := trunc(Sueldo/1000);
        Sueldo := Sueldo - (v1000 * 1000);
        v500  := trunc(Sueldo/500);
        Sueldo := Sueldo - (v500 * 500);
        v100  := trunc(Sueldo/100);
        Sueldo := Sueldo - (v100 * 100);
        v50   := trunc(Sueldo/50);
        Sueldo := Sueldo - (v50 * 50);
        v25   := trunc(Sueldo/25);
        Sueldo := Sueldo - (v25 * 25);
        v20   := trunc(Sueldo/20);
        Sueldo := Sueldo - (v20 * 20);
        v10   := trunc(Sueldo/10);
        Sueldo := Sueldo - (v10 * 10);
        v5    := trunc(Sueldo/5);
        Sueldo := Sueldo - (v5 * 5);
        v1    := trunc(Sueldo/1);
        Sueldo := Sueldo - (v1 * 1);
        v050  := trunc(Sueldo/0.50);
        Sueldo := Sueldo - (v050 * 0.50);
        v025  := trunc(Sueldo/0.25);
        Sueldo := Sueldo - (v025*0.25);
        v01   := trunc(Sueldo/0.01);
        Sueldo := Sueldo - (v01*0.01);

        sgdenominacion.Cells[2, sgdenominacion.RowCount-1]  := inttostr(v2000);
        sgdenominacion.Cells[3, sgdenominacion.RowCount-1]  := inttostr(v1000);
        sgdenominacion.Cells[4, sgdenominacion.RowCount-1]  := inttostr(v500);
        sgdenominacion.Cells[5, sgdenominacion.RowCount-1]  := inttostr(v100);
        sgdenominacion.Cells[6, sgdenominacion.RowCount-1]  := inttostr(v50);
        sgdenominacion.Cells[7, sgdenominacion.RowCount-1]  := inttostr(v25);
        sgdenominacion.Cells[8, sgdenominacion.RowCount-1]  := inttostr(v20);
        sgdenominacion.Cells[9, sgdenominacion.RowCount-1]  := inttostr(v10);
        sgdenominacion.Cells[10, sgdenominacion.RowCount-1] := inttostr(v5);
        sgdenominacion.Cells[11, sgdenominacion.RowCount-1] := inttostr(v1);

        sgnomina.RowCount := sgnomina.RowCount + 1;
        sgdenominacion.RowCount := sgdenominacion.RowCount + 1;

        dm.Query1.Next;
      end;
      sgnomina.RowCount := sgnomina.RowCount + 1;

      Query1.Next;
    end;

    sgnomina.RowCount := sgnomina.RowCount - 1;

    //********************************
    //Totallizando por Departamento
    //********************************
    for col := 3 to sgnomina.ColCount -1 do
    begin
      TotalDepto := 0;
      for row := 2 to sgnomina.RowCount -1 do
      begin
        if Trim(sgnomina.Cells[0,row]) <> '' then
        begin
          Texto := '';
          for a := 1 to length(Trim(sgnomina.Cells[col,row])) do
          begin
            if Copy(Trim(sgnomina.Cells[col,row]),a,1) <> ',' then
              Texto := Texto + Copy(Trim(sgnomina.Cells[col,row]),a,1);
          end;
          if Trim(Texto) = '' then Texto := '0';
          TotalDepto := TotalDepto + StrToFloat(Texto);
        end
        else
        begin
          if (Trim(sgnomina.Cells[0,row]) = '') and (Trim(sgnomina.Cells[1,row]) = '') then
          begin
            sgnomina.Cells[col, row] := Format('%n',[TotalDepto]);
            TotalDepto := 0;
          end;
        end;
      end;
    end;

    //Totales Generales
    sgnomina.RowCount := sgnomina.RowCount +1;
    for col := 3 to sgnomina.ColCount -1 do
    begin
      TotalDepto := 0;
      for row := 2 to sgnomina.RowCount -1 do
      begin
        if Trim(sgnomina.Cells[0,row]) <> '' then
        begin
          Texto := '';
          for a := 1 to length(Trim(sgnomina.Cells[col,row])) do
          begin
            if Copy(Trim(sgnomina.Cells[col,row]),a,1) <> ',' then
              Texto := Texto + Copy(Trim(sgnomina.Cells[col,row]),a,1);
          end;
          if Trim(Texto) = '' then Texto := '0';
          TotalDepto := TotalDepto + StrToFloat(Texto);
        end;
      end;
      sgnomina.Cells[1, sgnomina.RowCount-1] := 'Total General';
      sgnomina.Cells[col, sgnomina.RowCount-1] := Format('%n',[TotalDepto]);
    end;

    //***************************
    //Totallizando Denominaciones
    //***************************
    for col := 2 to sgdenominacion.ColCount -1 do
    begin
      a := 0;
      for row := 1 to sgdenominacion.RowCount -2 do
        a := a + StrToInt(sgdenominacion.Cells[col, row]);

      sgdenominacion.Cells[col, sgdenominacion.RowCount -1] := IntToStr(a);
    end;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmNomina.ExportXLSGetDataParams(Sender: TObject; Sheet, Col,
  Row: Integer; Format: TxlsFormat; var FormatText: String);
begin
  Format.Font.Name := 'Trebuchet MS';
  Format.Font.Size := 8;

  if Sheet = 0 then
  begin
    if Col = 2 then
      Format.Alignment.Horizontal := halCenter;

    if Trim(sgnomina.Cells[0, Row]) = '' then
    begin
      //Format.Font.Style := Format.Font.Style + [xfsBold];
      if (Col > 2) and (Row > 0) then
        Format.Alignment.Horizontal := halRight;
    end;

    if (Trim(sgnomina.Cells[0, Row]) <> '') and (Trim(sgnomina.Cells[1, Row]) <> '')
    and (Row > 0) and (Col > 2) then
      Format.Alignment.Horizontal := halRight;
  end
  else
  begin
    if (Col > 0) then
      Format.Alignment.Horizontal := halRight;
  end;
end;

procedure TfrmNomina.ExportXLSGetCaptionParams(Sender: TObject; Sheet,
  Col: Integer; Format: TxlsFormat; var Caption: String);
begin
  if Col = 1 then
    Format.Alignment.Horizontal := halLeft;

  if Sheet = 1 then
  begin
    if Col > 1 then
      Format.Alignment.Horizontal := halRight;
  end;
end;

procedure TfrmNomina.FormCreate(Sender: TObject);
begin
  btreversar.Enabled := False;
  btpostear.Enabled  := False;
  btvolantes.Enabled := False;
  btexportar.Enabled := False;
end;

procedure TfrmNomina.dsNominaDataChange(Sender: TObject; Field: TField);
begin
  btvolantes.Enabled := (QNominanom_status.Value <> 'ANU') and
                        (QNomina.RecordCount > 0);
  btrepenviobanco.Enabled := btvolantes.Enabled;
  btnasiento.Enabled := btvolantes.Enabled;
  btrecibos.Enabled := btvolantes.Enabled;
  ArcBanco.Enabled := not TDataSource(Sender).DataSet.IsEmpty;
end;

procedure TfrmNomina.btreversarClick(Sender: TObject);
var
  col, row : integer;
begin
  Screen.Cursor := crHourGlass;

  //Actualizando prestamos
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select n.des_codigo, n.emp_numero, n.tde_codigo, n.det_monto');
  dm.Query1.SQL.Add('from Nomina_Detalle_Novedades n, descuentos d, tipo_descuentos t');
  dm.Query1.SQL.Add('where n.emp_codigo = :emp');
  dm.Query1.SQL.Add('and n.tno_codigo = :tno');
  dm.Query1.SQL.Add('and n.nom_codigo = :nom');
  dm.Query1.SQL.Add('and n.emp_codigo = d.emp_codigo');
  dm.Query1.SQL.Add('and n.tde_codigo = d.tde_codigo');
  dm.Query1.SQL.Add('and n.emp_numero = d.emp_numero');
  dm.Query1.SQL.Add('and d.emp_codigo = t.emp_codigo');
  dm.Query1.SQL.Add('and d.tde_codigo = t.tde_codigo');
  dm.Query1.SQL.Add('and t.tde_prestamo = '+QuotedStr('True'));
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('tno').Value := DBLookupComboBox1.KeyValue;
  dm.Query1.Parameters.ParamByName('nom').Value := QNominanom_codigo.Value;
  dm.Query1.Open;
  while not dm.Query1.Eof do
  begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('update descuentos set des_status = :st, des_monto_pagado = des_monto_pagado - :mto,');
    Query1.SQL.Add('des_cuotas_pagadas = des_cuotas_pagadas - 1');
    Query1.SQL.Add('where emp_codigo = :emp');
    Query1.SQL.Add('and des_codigo = :des');
    Query1.SQL.Add('and emp_numero = :cod');
    Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    Query1.Parameters.ParamByName('des').Value := dm.Query1.FieldByName('des_codigo').AsInteger;
    Query1.Parameters.ParamByName('cod').Value := dm.Query1.FieldByName('emp_numero').AsInteger;
    Query1.Parameters.ParamByName('st').Value  := 'PEN';
    Query1.Parameters.ParamByName('mto').Value := dm.Query1.FieldByName('det_monto').AsFloat;
    Query1.ExecSQL;

    dm.Query1.Next;
  end;

  //*********************************
  //Eliminando Nominas
  //*********************************
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('delete from Nomina where emp_codigo = :emp');
  dm.Query1.SQL.Add('and tno_codigo = :tno');
  dm.Query1.SQL.Add('and nom_codigo = :nom');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('tno').Value := DBLookupComboBox1.KeyValue;
  dm.Query1.Parameters.ParamByName('nom').Value := QNominanom_codigo.Value;
  dm.Query1.ExecSQL;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('delete from Nomina_Detalle where emp_codigo = :emp');
  dm.Query1.SQL.Add('and tno_codigo = :tno');
  dm.Query1.SQL.Add('and nom_codigo = :nom');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('tno').Value := DBLookupComboBox1.KeyValue;
  dm.Query1.Parameters.ParamByName('nom').Value := QNominanom_codigo.Value;
  dm.Query1.ExecSQL;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('delete from Nomina_Detalle_Novedades where emp_codigo = :emp');
  dm.Query1.SQL.Add('and tno_codigo = :tno');
  dm.Query1.SQL.Add('and nom_codigo = :nom');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('tno').Value := DBLookupComboBox1.KeyValue;
  dm.Query1.Parameters.ParamByName('nom').Value := QNominanom_codigo.Value;
  dm.Query1.ExecSQL;

  for col := 0 to sgnomina.ColCount -1 do
    for row := 1 to sgnomina.RowCount -1 do
       sgnomina.Cells[col, row] := '';

  sgnomina.RowCount := 2;
  sgnomina.ColCount := 3;

  Screen.Cursor := crDefault;

  btprocesar.Enabled := True;
  btpostear.Enabled  := False;
  btreversar.Enabled := False;
end;

procedure TfrmNomina.ExportXLSGetHeaderParams(Sender: TObject; Sheet, Col,
  Row: Integer; Format: TxlsFormat; var S: String);
begin
  Format.Alignment.Horizontal := halLeft;
  Format.Font.Color := clrBlack;
  Format.Font.Name := 'Tahoma';
  if Row > 0 then
  begin
    Format.Font.Size := 8;
    Format.Font.Style := Format.Font.Style - [xfsBold];
  end;
end;

procedure TfrmNomina.sgdenominacionDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  dx: Integer;
  txt: string;
  i: integer;
  procedure WriteText(StringGrid: TStringGrid; ACanvas: TCanvas; const ARect: TRect;
      const Text: string; Format: Word);
  const
    DX = 2;
    DY = 2;
  var
    S: array[0..255] of Char;
    B, R: TRect;
  begin
    with Stringgrid, ACanvas, ARect do
    begin
      case Format of
      DT_LEFT: ExtTextOut(Handle, Left + DX, Top + DY,
               ETO_OPAQUE or ETO_CLIPPED, @ARect, StrPCopy(S, Text),
               Length(Text), nil);

      DT_RIGHT: ExtTextOut(Handle, Right - TextWidth(Text) - 3, Top + DY,
              ETO_OPAQUE or ETO_CLIPPED, @ARect, StrPCopy(S, Text),
              Length(Text), nil);

      DT_CENTER: ExtTextOut(Handle, Left + (Right - Left - TextWidth(Text)) div 2,
              Top + DY, ETO_OPAQUE or ETO_CLIPPED, @ARect,
              StrPCopy(S, Text), Length(Text), nil);
      end;
    end;
  end;

  procedure Display(StringGrid: TStringGrid; const S: string; Alignment: TAlignment);
  const
    Formats: array[TAlignment] of Word = (DT_LEFT, DT_RIGHT, DT_CENTER);
  begin
    WriteText(StringGrid, StringGrid.Canvas, Rect, S, Formats[Alignment]);
  end;

begin
  // Right-justify columns 0-2
  // Spalten 0-2 rechts ausrichten.
 if (ACol > 0) then
    Display(sgdenominacion, sgdenominacion.Cells[ACol, ARow], taRightJustify);

{  if ACol = 3 then
    Display(sgCatalogo, sgCatalogo.Cells[ACol, ARow], taCenter);
  if (ACol in[0,2,3,4]) and (ARow = 0) then
    Display(sgCatalogo, sgCatalogo.Cells[ACol, ARow], taCenter);}
end;

procedure TfrmNomina.btlimpiarClick(Sender: TObject);
var
  col, row : integer;
begin
  fdesde.Date     := Date;
  fhasta.Date     := Date;
  facreditar.Date := Date;

  QNomina.Close;
  QNomina.Parameters.ParamByName('nom').Value := -1;
  QNomina.Open;

  QDetalle.Close;
  QDetalle.Parameters.ParamByName('nom').Value := -1;
  QDetalle.Open;

  QNovedades.Close;
  QNovedades.Parameters.ParamByName('nom').Value := -1;
  QNovedades.Open;

  for col := 0 to sgnomina.ColCount -1 do
    for row := 0 to sgnomina.RowCount -1 do
    begin
      sgnomina.Cells[col, row] := '';
      Application.ProcessMessages;
    end;

  sgnomina.ColCount := 3;
  sgnomina.RowCount := 2;

  sgnomina.Cells[0, 0] := 'CODIGO';
  sgnomina.Cells[1, 0] := 'NOMBRE DEL EMPLEADO';
  sgnomina.Cells[2, 0] := 'CEDULA/PASAPORTE';

  //Denominaciones
  sgdenominacion.Cells[0, 0]  := 'Nombre del Empleado';
  sgdenominacion.Cells[1, 0]  := 'Ingreso Neto';
  sgdenominacion.Cells[2, 0]  := '2000';
  sgdenominacion.Cells[3, 0]  := '1000';
  sgdenominacion.Cells[4, 0]  := '500';
  sgdenominacion.Cells[5, 0]  := '100';
  sgdenominacion.Cells[6, 0]  := '50';
  sgdenominacion.Cells[7, 0]  := '25';
  sgdenominacion.Cells[8, 0]  := '20';
  sgdenominacion.Cells[9, 0]  := '10';
  sgdenominacion.Cells[10, 0] := '5';
  sgdenominacion.Cells[11, 0] := '1';

  for col := 0 to sgdenominacion.ColCount -1 do
    for row := 1 to sgdenominacion.RowCount -1 do
       sgdenominacion.Cells[col, row] := '';

  sgdenominacion.RowCount := 2;

  btprocesar.Enabled := True;
  btexportar.Enabled := False;
  btpostear.Enabled  := False;
  btreversar.Enabled := False;
  btvolantes.Enabled := False;
end;

procedure TfrmNomina.btrepenviobancoClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select '+QuotedStr('Banco')+' as Nombre');
  Search.Query.Add('union all');
  Search.Query.Add('select '+QuotedStr('Cheque')+' as Nombre');
  Search.Query.Add('union all');
  Search.Query.Add('select '+QuotedStr('Efectivo')+' as Nombre');
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Forma');
  Search.ResultField := 'Nombre';
  Search.Title := 'Formas de Pago';
  if Search.execute then
  begin
    Application.CreateForm(tRepNominaFormaPago, RepNominaFormaPago);
    RepNominaFormaPago.lbtitulo.Caption := 'Relacion de Pagos para '+Search.ValueField;
    RepNominaFormaPago.QEmpleados.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    RepNominaFormaPago.QEmpleados.Parameters.ParamByName('tno').Value := DBLookupComboBox1.KeyValue;
    RepNominaFormaPago.QEmpleados.Parameters.ParamByName('nom').Value := QNominanom_codigo.Value;
    RepNominaFormaPago.QEmpleados.Parameters.ParamByName('forma').Value := Search.ValueField;
    RepNominaFormaPago.QEmpleados.Open;
    RepNominaFormaPago.PrinterSetup;
    RepNominaFormaPago.Preview;
    RepNominaFormaPago.Destroy;
  end;
end;

procedure TfrmNomina.Imprimirvolante1Click(Sender: TObject);
begin
  Application.CreateForm(tRVolantePago, RVolantePago);
  RVolantePago.QDetalle.SQL.Add('and e.emp_numero = '+sgnomina.Cells[0, sgnomina.Row]);
  RVolantePago.QDetalle.SQL.Add('order by g.gru_codigo, e.emp_nombres');
  RVolantePago.lbperiodo.Caption := 'Correspondiente al períido '+DateToStr(fdesde.Date)+' Al '+DateToStr(fhasta.Date);
  RVolantePago.lbTipoNomina.Caption := 'NOMINA '+DBLookupComboBox1.Text;
  RVolantePago.QNomina.Parameters.ParamByName('tno').Value := DBLookupComboBox1.KeyValue;
  RVolantePago.QNomina.Parameters.ParamByName('nom').Value := QNominanom_codigo.Value;
  RVolantePago.QNomina.Open;
  RVolantePago.QDetalle.Open;
  RVolantePago.QNovedades.Open;
  RVolantePago.PrinterSetup;
  RVolantePago.Preview;
  RVolantePago.Destroy;
end;

procedure TfrmNomina.Enviarvolanteporemail1Click(Sender: TObject);
begin
  Volantes_Email(sgnomina.Cells[0, sgnomina.Row]);
end;



procedure TfrmNomina.Buscarempleado1Click(Sender: TObject);
var
  a : integer;
begin
  Search.Query.Clear;
  Search.Query.Add('select emp_nombres, emp_apellido_paterno, emp_cedula, emp_numero');
  Search.Query.Add('from empleados');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombres');
  Search.AliasFields.Add('Apellidos');
  Search.AliasFields.Add('Cedula');
  Search.AliasFields.Add('Codigo');
  Search.ResultField := 'emp_numero';
  Search.Title := 'Empleados';
  if Search.execute then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select (emp_nombres+'+QuotedStr(' ')+'+emp_apellido_paterno+'+QuotedStr(' ')+'+emp_apellido_materno) as Nombre');
    dm.Query1.SQL.Add('from empleados');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and emp_numero = :num');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('num').Value := StrToInt(Search.ValueField);
    dm.Query1.Open;

    for a := 1 to sgnomina.RowCount-1 do
    begin
      if sgnomina.Cells[1,a] = dm.Query1.FieldByName('Nombre').AsString then
      begin
        sgnomina.Row := a;
        break;
      end;
    end;
  end;
  sgnomina.SetFocus;
end;

procedure TfrmNomina.Volantes_Email (Cod : string);
var
   MailMsg : TIdMessage;
   //Archivo : TIdAttachment;
   eMail : string;
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select emp_email from empleados where emp_codigo = :emp');
  dm.Query1.SQL.Add('and emp_numero = :cod');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('cod').Value := StrToInt(Cod);
  dm.Query1.Open;
  eMail := dm.Query1.FieldByName('emp_email').AsString;
  if trim(eMail) <> '' then
  begin
    Application.CreateForm(tRVolantePago, RVolantePago);
    RVolantePago.QDetalle.SQL.Add('and e.emp_numero = '+Cod);
    RVolantePago.QDetalle.SQL.Add('order by g.gru_codigo, e.emp_nombres');
    RVolantePago.lbperiodo.Caption := 'Correspondiente al períido '+DateToStr(fdesde.Date)+' Al '+DateToStr(fhasta.Date);
    RVolantePago.lbTipoNomina.Caption := 'NOMINA '+DBLookupComboBox1.Text;
    RVolantePago.QNomina.Parameters.ParamByName('tno').Value := DBLookupComboBox1.KeyValue;
    RVolantePago.QNomina.Parameters.ParamByName('nom').Value := QNominanom_codigo.Value;
    RVolantePago.QNomina.Open;
    RVolantePago.QDetalle.Open;
    RVolantePago.QNovedades.Open;
    frmMain.filtroreporte := TQRPDFDocumentFilter.Create('volante.pdf');
    RVolantePago.ExportToFilter(frmMain.filtroreporte);
    RVolantePago.destroy;

    if frmMain.IdSMTP1.Connected then frmMain.IdSMTP1.Disconnect;
    MailMsg := TidMessage.Create(frmMain.IdSMTP1);
    MailMsg.Subject      := 'Volante de Pago Correspondiente al Período '+DateToStr(fdesde.Date) + ' Al '+DateToStr(fhasta.Date);
    MailMsg.From.Address := dm.QParametrospar_mailcorreo.Value;
    MailMsg.From.Name    := dm.QParametrospar_mailcorreo.Value;
    MailMsg.ReplyTo.EMailAddresses := dm.QParametrospar_mailcorreo.Value;
    MailMsg.Recipients.Add;
    MailMsg.Recipients.Items[0].Address := eMail;
   // TIdAttachmentFile.Create(MailMsg.MessageParts, 'volante.pdf');
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

procedure TfrmNomina.btemailClick(Sender: TObject);
var
  a : integer;
begin
  screen.Cursor := crHourGlass;
  a := 1;
  while a <= sgnomina.RowCount-1 do
  begin
    Volantes_Email(sgnomina.Cells[0, a]);
    a := a + 1;
  end;
  screen.Cursor := crDefault;
end;

procedure TfrmNomina.btnasientoClick(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('execute contpr_pase_nomina :emp, :tip, :nom, :fec, :usu');
  dm.Query1.Parameters.ParamByName('emp').Value    := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('tip').Value    := DBLookupComboBox1.KeyValue;
  dm.Query1.Parameters.ParamByName('nom').Value    := QNominanom_codigo.Value;
  dm.Query1.Parameters.ParamByName('fec').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec').Value    := facreditar.Date;
  dm.Query1.Parameters.ParamByName('usu').Value    := dm.Usuario;
  dm.Query1.ExecSQL;
  MessageDlg('Proceso Ejecutado',mtInformation,[mbok],0);
end;

procedure TfrmNomina.btrecibosClick(Sender: TObject);
begin
  if MessageDlg('Esta seguro que desa generar los recibos de CxC?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('execute pr_recibos_nomina :emp, :fec, :tno, :nom');
    dm.Query1.Parameters.ParamByName('emp').Value    := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('tno').Value    := DBLookupComboBox1.KeyValue;
    dm.Query1.Parameters.ParamByName('nom').Value    := QNominanom_codigo.Value;
    dm.Query1.Parameters.ParamByName('fec').DataType := ftDate;
    dm.Query1.Parameters.ParamByName('fec').Value    := facreditar.Date;
    dm.Query1.ExecSQL;
    MessageDlg('Recibos Generados',mtInformation,[mbok],0);
  end;
end;

procedure TfrmNomina.Imprimirdescuento1Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select tde_nombre, tde_codigo from tipo_descuentos');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Title := 'Descuentos';
  Search.ResultField := 'tde_codigo';
  if Search.execute then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tde_nombre from tipo_descuentos where emp_codigo = :emp and tde_codigo = :tde');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('tde').Value := StrToInt(Search.ValueField);
    dm.Query1.Open;

    Application.createform(tRepNominaDescuento, RepNominaDescuento);
    RepNominaDescuento.lbtitulo.Caption := 'Relacion de '+dm.Query1.FieldByName('tde_nombre').AsString;
    //RepNominaDescuento.QEmpleados.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    RepNominaDescuento.QEmpleados.Parameters.ParamByName('tno').Value := DBLookupComboBox1.KeyValue;
    RepNominaDescuento.QEmpleados.Parameters.ParamByName('nom').Value := QNominanom_codigo.Value;
    RepNominaDescuento.QEmpleados.Parameters.ParamByName('des').Value := StrToInt(Search.ValueField);
    RepNominaDescuento.QEmpleados.Open;
    RepNominaDescuento.PrinterSetup;
    RepNominaDescuento.Preview;
    RepNominaDescuento.Destroy;
  end;

end;

procedure TfrmNomina.ArcBancoClick(Sender: TObject);
begin
  with dm.Query1,SQL do
  begin
    close;
    clear;
    add('select * from Param_RHumanos p, bancos b');
    Add('where p.emp_codigo = b.emp_codigo and p.par_rrhh_suc_codigo_banco_popular = b.suc_codigo');
    Add('  and p.par_rrhh_codigo_banco_popular = b.ban_codigo');
    Add('  and p.emp_codigo = '+dm.QEmpresasEMP_CODIGO.AsString);
    add('');
    add('  and (par_rrhh_numero_asignado  <> '+QuotedStr('')+')');
  //  add('  and (par_rrhh_numeroafiliacion <>'+QuotedStr('')+')');
    add('  and (par_rrhh_codigo_banco_popular <>'+QuotedStr('')+')');
    add('  and (par_rrhh_suc_codigo_banco_popular <>'+QuotedStr('')+')');
    open;
    if IsEmpty then
       messagedlg('ESTA NOMINA NO ESTA CONFIGURADA PARA ESTE PROCESO',
     mtInformation, [mbYes],0)
    else begin
      frmNominaBanco := tfrmNominaBanco.create(self);
      frmNominaBanco.ShowModal;
  end;
  end;
end;

procedure TfrmNomina.FormShow(Sender: TObject);
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

procedure TfrmNomina.edtSucLocChange(Sender: TObject);
begin
if Trim(edtSucLoc.Text) = '' then TSucLoc.Text := '';
end;

procedure TfrmNomina.edtSucLocKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmNomina.btLocalidadClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select suc_nombre, cont_numeroSucursal from sucursales');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
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

function TfrmNomina.MontoDescAfectaAFP: Currency;
begin
//********************************
        //Buscando Descuentos AFP Afectan AFP / Jhonattan Gomez 2021-12-11 10:23 a.m.
        //********************************
        DM.adoMultiUso.Close;
        DM.adoMultiUso.SQL.Clear;
        DM.adoMultiUso.SQL.Add('select isnull(sum(des_valor),0) monto');
        DM.adoMultiUso.SQL.Add('from descuentos d');
        DM.adoMultiUso.SQL.Add('inner join tipo_descuentos td on d.tde_codigo = td.tde_codigo');
        DM.adoMultiUso.SQL.Add('where td.emp_codigo = :emp AND des_fecha between :fec1 and :fec2');
        DM.adoMultiUso.SQL.Add('and emp_numero = :num and d.des_periodo_descuento = :per');
        DM.adoMultiUso.SQL.Add('and tde_afecta_AFP = '+QuotedStr('True'));

        DM.adoMultiUso.Parameters.ParamByName('emp').DataType  := ftInteger;
        DM.adoMultiUso.Parameters.ParamByName('fec1').DataType := ftDateTime;
        DM.adoMultiUso.Parameters.ParamByName('fec2').DataType := ftDateTime;
        DM.adoMultiUso.Parameters.ParamByName('num').DataType  := ftInteger;
        DM.adoMultiUso.Parameters.ParamByName('per').DataType  := ftInteger;

        DM.adoMultiUso.Parameters.ParamByName('emp').Value  := dm.vp_cia;
        DM.adoMultiUso.Parameters.ParamByName('fec1').Value := fdesde.Date;
        DM.adoMultiUso.Parameters.ParamByName('fec2').Value := fhasta.Date;
        DM.adoMultiUso.Parameters.ParamByName('num').Value  := dm.Query1.FieldByName('emp_numero').AsString;
        DM.adoMultiUso.Parameters.ParamByName('per').Value  := DBLookupComboBox1.KeyValue;
        DM.adoMultiUso.Open;

if DM.adoMultiUso.RecordCount > 0 then
Result := dm.adoMultiUso.FieldByName('monto').Value else
Result := 0;

end;

function TfrmNomina.MontoDescAfectaARS: Currency;
begin
//********************************
        //Buscando Descuentos ARS Afectan ARS / Jhonattan Gomez 2021-12-11 10:23 a.m.
        //********************************
        DM.adoMultiUso.Close;
        DM.adoMultiUso.SQL.Clear;
        DM.adoMultiUso.SQL.Add('select isnull(sum(des_valor),0) monto');
        DM.adoMultiUso.SQL.Add('from descuentos d');
        DM.adoMultiUso.SQL.Add('inner join tipo_descuentos td on d.tde_codigo = td.tde_codigo');
        DM.adoMultiUso.SQL.Add('where td.emp_codigo = :emp AND des_fecha between :fec1 and :fec2');
        DM.adoMultiUso.SQL.Add('and emp_numero = :num and d.des_periodo_descuento = :per');
        DM.adoMultiUso.SQL.Add('and tde_afecta_ARS = '+QuotedStr('True'));

        DM.adoMultiUso.Parameters.ParamByName('emp').DataType  := ftInteger;
        DM.adoMultiUso.Parameters.ParamByName('fec1').DataType := ftDateTime;
        DM.adoMultiUso.Parameters.ParamByName('fec2').DataType := ftDateTime;
        DM.adoMultiUso.Parameters.ParamByName('num').DataType  := ftInteger;
        DM.adoMultiUso.Parameters.ParamByName('per').DataType  := ftInteger;

        DM.adoMultiUso.Parameters.ParamByName('emp').Value  := dm.vp_cia;
        DM.adoMultiUso.Parameters.ParamByName('fec1').Value := fdesde.Date;
        DM.adoMultiUso.Parameters.ParamByName('fec2').Value := fhasta.Date;
        DM.adoMultiUso.Parameters.ParamByName('num').Value  := dm.Query1.FieldByName('emp_numero').AsString;
        DM.adoMultiUso.Parameters.ParamByName('per').Value  := DBLookupComboBox1.KeyValue;
        DM.adoMultiUso.Open;

if DM.adoMultiUso.RecordCount > 0 then
Result := dm.adoMultiUso.FieldByName('monto').Value else
Result := 0;

end;



function TfrmNomina.MontoIngAfectaAFP: Currency;
begin
//********************************
        //Buscando Ingresos AFP Afectan AFP / Jhonattan Gomez 2021-12-20 19:59
        //********************************
        DM.adoMultiUso.Close;
        DM.adoMultiUso.SQL.Clear;
        DM.adoMultiUso.SQL.Add('select isnull(sum(ing_valor),0) monto');
        DM.adoMultiUso.SQL.Add('from ingresos i');
        DM.adoMultiUso.SQL.Add('inner join tipo_ingresos ti on i.tin_codigo = ti.tin_codigo');
        DM.adoMultiUso.SQL.Add('where ti.emp_codigo = :emp AND i.ing_fecha between :fec1 and :fec2');
        DM.adoMultiUso.SQL.Add('and i.emp_numero = :num '); //and i.ing_periodo_pago = :per');
        DM.adoMultiUso.SQL.Add('and ti.tin_afecta_AFP = '+QuotedStr('True'));

        DM.adoMultiUso.Parameters.ParamByName('emp').DataType  := ftInteger;
        DM.adoMultiUso.Parameters.ParamByName('fec1').DataType := ftDateTime;
        DM.adoMultiUso.Parameters.ParamByName('fec2').DataType := ftDateTime;
        DM.adoMultiUso.Parameters.ParamByName('num').DataType  := ftInteger;
        //DM.adoMultiUso.Parameters.ParamByName('per').DataType  := ftInteger;

        DM.adoMultiUso.Parameters.ParamByName('emp').Value  := dm.vp_cia;
        DM.adoMultiUso.Parameters.ParamByName('fec1').Value := fdesde.Date;
        DM.adoMultiUso.Parameters.ParamByName('fec2').Value := fhasta.Date;
        DM.adoMultiUso.Parameters.ParamByName('num').Value  := dm.Query1.FieldByName('emp_numero').AsString;
        //DM.adoMultiUso.Parameters.ParamByName('per').Value  := DBLookupComboBox1.KeyValue;
        DM.adoMultiUso.Open;

if DM.adoMultiUso.RecordCount > 0 then
Result := dm.adoMultiUso.FieldByName('monto').Value else
Result := 0;

end;

function TfrmNomina.MontoIngAfectaARS: Currency;
begin
//********************************
        //Buscando Ingresos AFP Afectan AFP / Jhonattan Gomez 2021-12-20 19:59
        //********************************
        DM.adoMultiUso.Close;
        DM.adoMultiUso.SQL.Clear;
        DM.adoMultiUso.SQL.Add('select isnull(sum(ing_valor),0) monto');
        DM.adoMultiUso.SQL.Add('from ingresos i');
        DM.adoMultiUso.SQL.Add('inner join tipo_ingresos ti on i.tin_codigo = ti.tin_codigo');
        DM.adoMultiUso.SQL.Add('where ti.emp_codigo = :emp AND i.ing_fecha between :fec1 and :fec2');
        DM.adoMultiUso.SQL.Add('and i.emp_numero = :num');// and i.ing_periodo_pago = :per');
        DM.adoMultiUso.SQL.Add('and ti.tin_afecta_ARS = '+QuotedStr('True'));

        DM.adoMultiUso.Parameters.ParamByName('emp').DataType  := ftInteger;
        DM.adoMultiUso.Parameters.ParamByName('fec1').DataType := ftDateTime;
        DM.adoMultiUso.Parameters.ParamByName('fec2').DataType := ftDateTime;
        DM.adoMultiUso.Parameters.ParamByName('num').DataType  := ftInteger;
       // DM.adoMultiUso.Parameters.ParamByName('per').DataType  := ftInteger;

        DM.adoMultiUso.Parameters.ParamByName('emp').Value  := dm.vp_cia;
        DM.adoMultiUso.Parameters.ParamByName('fec1').Value := fdesde.Date;
        DM.adoMultiUso.Parameters.ParamByName('fec2').Value := fhasta.Date;
        DM.adoMultiUso.Parameters.ParamByName('num').Value  := dm.Query1.FieldByName('emp_numero').AsString;
        //DM.adoMultiUso.Parameters.ParamByName('per').Value  := DBLookupComboBox1.KeyValue;
        DM.adoMultiUso.Open;

if DM.adoMultiUso.RecordCount > 0 then
Result := dm.adoMultiUso.FieldByName('monto').Value else
Result := 0;

end;

end.
