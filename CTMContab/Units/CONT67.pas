unit CONT67;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, OleServer, Excel2000, DB, ADODB, ComCtrls,
  ExtCtrls, ExcelXP, Spin;

type
  TfrmGeneraComprasDGII = class(TForm)
    Query1: TADOQuery;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    cbmes: TComboBox;
    BitBtn2: TBitBtn;
    btClose: TBitBtn;
    OpenDialog1: TOpenDialog;
    ProgressBar1: TProgressBar;
    Memo1: TMemo;
    Label3: TLabel;
    Label4: TLabel;
    cbfiltro: TComboBox;
    Query2: TADOQuery;
    rgOrden: TRadioGroup;
    QDatos: TADOQuery;
    ExcelApplication1: TExcelApplication;
    cbAno: TSpinEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cantidad, total : string;
    linea : integer;
    procedure TransferirExcel1;
    procedure TransferirExcel2;
  end;

var
  frmGeneraComprasDGII: TfrmGeneraComprasDGII;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmGeneraComprasDGII.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TfrmGeneraComprasDGII.FormCreate(Sender: TObject);
var
  ano, mes, dia : word;
begin
  decodedate(date, ano, mes, dia);
  cbano.Value := StrToInt(FormatDateTime('YYYY',Date));// cbano.Items.IndexOf(inttostr(ano));
  cbmes.ItemIndex := mes-1;
end;

procedure TfrmGeneraComprasDGII.BitBtn1Click(Sender: TObject);
var
  f_total, d_total, n_total, c_total, m_total, pf_total : double;
  f_cantidad, d_cantidad, n_cantidad, c_cantidad, m_cantidad, pf_cantidad : integer;
begin
 //Facturas de CxP
  Query1.close;
  Query1.SQL.Clear;
  Query1.SQL.Add('select sum(f.fac_total) total, count(*) cant');
  Query1.SQL.Add('from provfacturas f ');
  Query1.SQL.Add('left join Tipo_Bienes_Servicios t on (f.tip_codigo = t.tip_codigo) ');
  Query1.SQL.Add('inner join proveedores p on f.emp_codigo=p.emp_codigo and f.sup_codigo = p.sup_codigo and f.emp_codigo=p.emp_codigo ');
  Query1.SQL.Add('left join Retenciones R on f.Tipo_Ret_Codigo = R.ret_codigo ');
  Query1.SQL.Add('where f.fac_total > 0 and p.sup_rnc is not null');
  Query1.SQL.Add('and (f.ncf is not null or f.ncf_fijo is not null) and isnull(f.tip_codigo,0) > 0');
  Query1.SQL.Add('AND f.emp_codigo = :EMP and year(f.fac_fecha) = :ANO and month(f.fac_fecha) = :MES');
  Query1.SQL.Add('AND left(F.NCF,3)<>'+QuotedStr('B02'));
  CASE cbfiltro.ItemIndex OF
  1:Query1.SQL.Add('AND F.Pasadas_606 IS NULL');
  2:Query1.SQL.Add('AND F.Pasadas_606 IS NOT NULL');
  END;
  Query1.Parameters.ParamByName('EMP').Value     := dm.QEmpresasEMP_CODIGO.Value;
  Query1.Parameters.ParamByName('ANO').Value     := StrToInt(cbano.Text);
  Query1.Parameters.ParamByName('MES').Value     := cbmes.ItemIndex+1;
  Query1.Open;
  f_total    := Query1.Fields.fieldbyname('total').AsFloat;
  f_cantidad := Query1.Fields.fieldbyname('cant').AsInteger;


  //Desembolsos
  Query1.close;
  Query1.SQL.clear;
  Query1.SQL.Add('select sum(d.des_monto) total, count(*) cant');
  Query1.SQL.Add('from desembolsos d');
  Query1.SQL.Add('left outer join Tipo_Bienes_Servicios t on (d.tip_codigo = t.tip_codigo)');
  Query1.SQL.Add('left outer join contdet_desembolso c on (d.emp_codigo = c.emp_codigo');
  Query1.SQL.Add('and d.suc_codigo = c.suc_codigo and d.des_numero = c.des_numero');
  Query1.SQL.Add('and c.cat_cuenta = :cta)');
  Query1.SQL.Add('where d.emp_codigo = :emp and year(d.des_fecha) = :ano');
  Query1.SQL.Add('and month(d.des_fecha) = :mes');
  Query1.SQL.Add('and d.des_monto > 0');
  Query1.SQL.Add('and (d.des_ncf is not null or d.des_ncf <> '+QuotedStr('')+')');
  Query1.SQL.Add('and isnull(d.tip_codigo,0) > 0');
  Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  Query1.Parameters.ParamByName('ano').Value := StrToInt(cbano.Text);
  Query1.Parameters.ParamByName('mes').Value := cbmes.ItemIndex+1;
  Query1.Parameters.ParamByName('cta').Value := dm.QContabpar_cta_itbis_compra.AsString;
  Query1.Open;
  d_total    := Query1.Fields.fieldbyname('total').AsFloat;
  d_cantidad := Query1.Fields.fieldbyname('cant').AsInteger;

  //Pago Fuera de fecha
  Query1.close;
  Query1.SQL.clear;
  Query1.SQL.Add('select sum(c.che_retencion) total, count(*) cant');
  Query1.SQL.Add('from Cheques c');
  Query1.SQL.Add('inner join Det_ChequeFacturas cf on c.emp_codigo=cf.emp_codigo and c.suc_codigo=cf.suc_codigo and c.che_numero=cf.che_numero and c.ban_codigo=cf.ban_codigo');
  Query1.SQL.Add('inner join Proveedores P on c.emp_codigo=p.emp_codigo and c.sup_codigo=p.sup_codigo');
  Query1.SQL.Add('inner join chequeretencion cr on c.emp_codigo=cr.emp_codigo and c.suc_codigo=cr.suc_codigo and c.che_numero=cr.che_numero and c.ban_codigo=cr.ban_codigo');
  Query1.SQL.Add('inner join Retenciones r on cr.ret_codigo=r.ret_codigo and cr.emp_codigo=r.emp_codigo');
  Query1.SQL.Add('inner join ProvFacturas pf on cf.emp_codigo=pf.emp_codigo and cf.suc_codigo=pf.suc_codigo and cf.fac_numero=pf.fac_numero');
  Query1.SQL.Add('inner join Tipo_Bienes_Servicios t on (pf.tip_codigo = t.tip_codigo)');
  Query1.SQL.Add('where c.emp_codigo = :emp and year(c.che_fecha) = :ano');
  Query1.SQL.Add('and month(c.che_fecha) = :mes');
  Query1.SQL.Add('and c.che_retencion > 0');
  Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  Query1.Parameters.ParamByName('ano').Value := StrToInt(cbano.Text);
  Query1.Parameters.ParamByName('mes').Value := cbmes.ItemIndex+1;
  Query1.Open;
  pf_total    := Query1.Fields.fieldbyname('total').AsFloat;
  pf_cantidad := Query1.Fields.fieldbyname('cant').AsInteger;

  //Notas de credito
  Query1.close;
  Query1.SQL.clear;
  Query1.SQL.Add('select sum(n.ncr_monto) total, count(*) cant');
  Query1.SQL.Add('from notascreditocompra n, proveedores p');
  Query1.SQL.Add('where n.emp_codigo = :emp and year(n.ncr_fecha) = :ano');
  Query1.SQL.Add('and month(n.ncr_fecha) = :mes');
  Query1.SQL.Add('and n.ncr_monto > 0');
  Query1.SQL.Add('and (n.ncr_ncf is not null or n.ncr_ncf <> '+QuotedStr('')+')');
  Query1.SQL.Add('and n.sup_codigo = p.sup_codigo');
  Query1.SQL.Add('and p.emp_codigo = '+dm.QParametrosPAR_INVEMPRESA.AsString);
  Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  Query1.Parameters.ParamByName('ano').Value := StrToInt(cbano.Text);
  Query1.Parameters.ParamByName('mes').Value := cbmes.ItemIndex+1;
  Query1.Open;
  n_total    := Query1.Fields.fieldbyname('total').AsFloat;
  n_cantidad := Query1.Fields.fieldbyname('cant').AsInteger;


  //Cargos Bancarios
  Query1.close;
  Query1.SQL.clear;
  Query1.SQL.Add('select sum(d.det_monto) total, count(*) cant');
  Query1.SQL.Add('from cargosbanco c');
  Query1.SQL.Add('left outer join Tipo_Bienes_Servicios t');
  Query1.SQL.Add('on (c.tip_codigo = t.tip_codigo), det_cargosbanco d');
  Query1.SQL.Add('where c.emp_codigo = d.emp_codigo and c.suc_codigo = d.suc_codigo');
  Query1.SQL.Add('and c.ban_codigo = d.ban_codigo and c.car_ano = d.car_ano and c.car_mes = d.car_mes');
  Query1.SQL.Add('and c.car_numero = d.car_numero');
  Query1.SQL.Add('and c.emp_codigo = :emp and c.car_ano = :ano');
  Query1.SQL.Add('and c.car_mes = :mes');
  Query1.SQL.Add('and d.det_monto > 0');
  Query1.SQL.Add('and (c.car_ncf is not null or c.car_ncf <> '+QuotedStr('')+')');
  Query1.SQL.Add('and substring(d.cat_cuenta,1,1) = '+QuotedStr('6'));
  Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  Query1.Parameters.ParamByName('ano').Value := StrToInt(cbano.Text);
  Query1.Parameters.ParamByName('mes').Value := cbmes.ItemIndex+1;
  Query1.Open;
  c_total    := Query1.Fields.fieldbyname('total').AsFloat;
  c_cantidad := Query1.Fields.fieldbyname('cant').AsInteger;

  //Gastos Menores
  Query1.close;
  Query1.SQL.clear;
  Query1.SQL.Add('select sum(total) total, count(cant) cant from(');
  Query1.SQL.Add('select sum(d.des_monto) total, count(*) cant');
  Query1.SQL.Add('from desembolsos d');
  Query1.SQL.Add('left outer join Tipo_Bienes_Servicios t');
  Query1.SQL.Add('on (d.tip_codigo = t.tip_codigo), ncf_gastos_menores n, empresas e');
  Query1.SQL.Add('where d.emp_codigo = n.emp_codigo');
  Query1.SQL.Add('and d.suc_codigo = n.suc_codigo');
  Query1.SQL.Add('and d.des_caja = n.caj_codigo');
  Query1.SQL.Add('and d.emp_codigo = e.emp_codigo');
  Query1.SQL.Add('and d.des_fecha between convert(datetime, n.com_fecha_ini, 105)');
  Query1.SQL.Add('and convert(datetime, n.com_fecha_fin, 105)');
  Query1.SQL.Add('and n.emp_codigo = :emp');
  Query1.SQL.Add('and month(n.com_fecha) = :mes');
  Query1.SQL.Add('and year(n.com_fecha) = :ano');
  Query1.SQL.Add('and d.des_monto > 0');
  Query1.SQL.Add('and (d.des_ncf is null or d.des_ncf = '+QuotedStr('')+')');
  Query1.SQL.Add('and d.des_gasto_menor = '+QuotedStr('True'));
  Query1.SQL.Add('group by e.emp_rnc, t.tip_nombre, n.ncf_fijo, n.ncf_secuencia, n.com_fecha');
  Query1.SQL.Add(') as temp');
  Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  Query1.Parameters.ParamByName('ano').Value := StrToInt(cbano.Text);
  Query1.Parameters.ParamByName('mes').Value := cbmes.ItemIndex+1;
  Query1.Open;
  m_total    := Query1.Fields.fieldbyname('total').AsFloat;
  m_cantidad := Query1.Fields.fieldbyname('cant').AsInteger;

  cantidad := IntToStr(f_cantidad + d_cantidad + n_cantidad + c_cantidad + m_cantidad + pf_cantidad);
  total    := FloatToStr(f_total + d_total + n_total + c_total + m_total+ pf_total);

  TransferirExcel1;

end;

procedure TfrmGeneraComprasDGII.TransferirExcel1;
var
  WorkBook : _Workbook;
	WorkSheet : _Worksheet;
	i : integer;
begin
  if OpenDialog1.Execute then
  begin
    //Bring up excel
    ExcelApplication1.Visible[0] := true;
    ExcelApplication1.Workbooks.Open(OpenDialog1.FileName, False, False,
         EmptyParam,'',False,False,EmptyParam,EmptyParam,EmptyParam,
         True,false,false,false,false,0);

    //ExcelApplication1.Workbooks.Add(xlWBatWorksheet, 0);
    WorkBook  := ExcelApplication1.Workbooks.Item[1];
    WorkSheet := Workbook.Worksheets.Get_Item(1) as _Worksheet;
    WorkSheet.Cells.Item[4,3] := dm.QEmpresasEMP_RNC.Value;
    WorkSheet.Cells.Item[5,3] := cbano.Text+formatfloat('00',cbmes.ItemIndex+1);
    WorkSheet.Cells.Item[6,3] := cantidad;
  end;
  end;

procedure TfrmGeneraComprasDGII.TransferirExcel2;
var
  WorkBook  : _Workbook;
	WorkSheet : _Worksheet;
	i, ln : integer;
begin
  WorkBook  := ExcelApplication1.Workbooks.Item[1];
  WorkSheet := Workbook.Worksheets.Get_Item(1) as _Worksheet;
  Query1.First;
  while not Query1.Eof do
  begin
    Application.ProcessMessages;
    ProgressBar1.Position := ProgressBar1.Position + 1;
    IF (Query1.FieldByName('RNC_Cedula').AsString <> '') THEN
    WorkSheet.Cells.Item[linea,2] := Trim(Query1.FieldByName('RNC_Cedula').AsString);
    IF (NOT (Query1.FieldByName('RNC_Cedula').AsString <> '')) THEN
    WorkSheet.Cells.Item[linea,2] := DM.QEmpresasEMP_RNC.Text;
    WorkSheet.Cells.Item[linea,3] := Trim(Query1.FieldByName('tipo_id').AsString);
    if Query1.FieldByName('Tipo_Bienes_Servicios').IsNull then
      WorkSheet.Cells.Item[linea,4] := '09 -COMPRAS Y GASTOS QUE FORMARAN PARTE DEL COSTO DE VENTA'
    else
      WorkSheet.Cells.Item[linea,4] := Query1.FieldByName('Tipo_Bienes_Servicios').AsString;

    if not Query1.FieldByName('ncf').IsNull then
      WorkSheet.Cells.Item[linea,5] := Query1.FieldByName('NCF').AsString;

    if not Query1.FieldByName('NCF_MODIF').IsNull then
      WorkSheet.Cells.Item[linea,6] := Query1.FieldByName('NCF_MODIF').AsString;

    WorkSheet.Cells.Item[linea,07] := Query1.FieldByName('Fecha_Comprob').AsString;
    WorkSheet.Cells.Item[linea,08] := Query1.FieldByName('Dia_Comprob').AsString;
    WorkSheet.Cells.Item[linea,11] := FloatToStr(Query1.FieldByName('Monto_Servicios').AsFloat);
    WorkSheet.Cells.Item[linea,12] := FloatToStr(Query1.FieldByName('Monto_Bienes').AsFloat);
    
    if Query1.FieldByName('Monto_Servicios').AsFloat > 0 then
      WorkSheet.Cells.Item[linea,13] := FloatToStr(Query1.FieldByName('Monto_Servicios').AsFloat)
    else if Query1.FieldByName('Monto_Bienes').AsFloat > 0 then
      WorkSheet.Cells.Item[linea,13] := FloatToStr(Query1.FieldByName('Monto_Bienes').AsFloat)
    else
      WorkSheet.Cells.Item[linea,13] := '0.00';        

    //WorkSheet.Cells.Item[linea,13] := FloatToStr(Query1.FieldByName('Total_Facturado').AsFloat);
    WorkSheet.Cells.Item[linea,14] := FloatToStr(Query1.FieldByName('Itbis_Facturado').AsFloat);
    if Query1.FieldByName('Itbis_Retenido').AsFloat > 0 then
    begin
      WorkSheet.Cells.Item[linea,09] := cbano.Text+formatfloat('00',cbmes.ItemIndex+1);
      WorkSheet.Cells.Item[linea,10] := Query1.FieldByName('Dia_Comprob').AsString;
    end;
    WorkSheet.Cells.Item[linea,15] := FloatToStr(Query1.FieldByName('Itbis_Retenido').AsFloat);
    WorkSheet.Cells.Item[linea,16] := FloatToStr(Query1.FieldByName('itbis_proporc').AsFloat);
    WorkSheet.Cells.Item[linea,17] := FloatToStr(Query1.FieldByName('Itbis_Costo').AsFloat);
    WorkSheet.Cells.Item[linea,18] := FloatToStr(Query1.FieldByName('Itbis_Adelantar').AsFloat);
    if Query1.FieldByName('Itbis_Retenido').AsFloat > 0 then
    WorkSheet.Cells.Item[linea,20] := Query1.FieldByName('Tipo_Retencion').AsString;
    WorkSheet.Cells.Item[linea,21] := FloatToStr(Query1.FieldByName('monto_ret_renta').AsFloat);
    WorkSheet.Cells.Item[linea,22] := FloatToStr(Query1.FieldByName('ISR_Percib_Compras').AsFloat);
    WorkSheet.Cells.Item[linea,23] := FloatToStr(Query1.FieldByName('Imp_Sel_Consumo').AsFloat);
    WorkSheet.Cells.Item[linea,23] := FloatToStr(Query1.FieldByName('Imp_Sel_Consumo').AsFloat);
    WorkSheet.Cells.Item[linea,24] := FloatToStr(Query1.FieldByName('Otros_Impuesto_Tasa').AsFloat);
    WorkSheet.Cells.Item[linea,25] := FloatToStr(Query1.FieldByName('propina_legal').AsFloat);
    WorkSheet.Cells.Item[linea,26] := Query1.FieldByName('FormaPago').AsString;
    Query1.Next;
    inc(linea);
  end;
  //ExcelApplication1.Disconnect;
  //showmessage('Proceso terminado, favor verificar la Hoja de Excel');
end;

procedure TfrmGeneraComprasDGII.BitBtn2Click(Sender: TObject);
begin
  linea := 12;
  //Facturas de CxP
  Query1.close;
  Query1.SQL.Clear;
  Query1.SQL.Add('select p.sup_rnc RNC_Cedula,');
  Query1.SQL.Add('case when len(rtrim(p.sup_rnc)) = 9 then 1 else 2 end tipo_id, ');
  Query1.SQL.Add('t.tip_nombre Tipo_Bienes_Servicios, ');
  Query1.SQL.Add('case when f.ncf is null then RTRIM(F.NCF_FIJO)+REPLICATE('+QuotedStr('0')+',8-LEN(F.NCF_SECUENCIA))+RTRIM(F.NCF_SECUENCIA) ELSE F.NCF END NCF, NULL NCF_MODIF,');
//  Query1.SQL.Add('(SELECT top 1 ncr_ncf_modifica FROM NotasCreditoCompra WHERE emp_codigo = F.emp_codigo AND fac_numero = F.fac_numero) NCF_MODIF, ');
  Query1.SQL.Add('CASE WHEN MONTH(F.fac_fecha)<10 THEN RTRIM(YEAR(F.fac_fecha))+'+QuotedStr('0')+'+RTRIM(MONTH(F.FAC_FECHA)) ELSE');
  Query1.SQL.Add('RTRIM(YEAR(F.fac_fecha))+RTRIM(MONTH(F.FAC_FECHA)) END Fecha_Comprob,');
  Query1.SQL.Add('day(f.fac_fecha) as Dia_Comprob,');
  Query1.SQL.Add('case when f.Tipo_Ret_Codigo > 0 then');
  Query1.SQL.Add('CASE WHEN MONTH(F.fac_fecha)<10 THEN RTRIM(YEAR(F.fac_fecha))+'+QuotedStr('0')+'+RTRIM(MONTH(F.FAC_FECHA)) ELSE');
  Query1.SQL.Add('RTRIM(YEAR(F.fac_fecha))+RTRIM(MONTH(F.FAC_FECHA)) END end Fecha_Pag,');
  Query1.SQL.Add('case when f.Tipo_Ret_Codigo > 0 then');
  Query1.SQL.Add('day(f.fac_fecha) end as Dia_Pag,');
  Query1.SQL.Add('f.fac_servicios Monto_Servicios, (isnull(fac_exento,0)+isnull(fac_grabado,0)) Monto_Bienes, ');
  Query1.SQL.Add('isnull(fac_exento,0)+isnull(fac_grabado,0)+isnull(fac_servicios,0) Total_Facturado, f.fac_itbis Itbis_Facturado, isnull(f.fac_retencion,0) as Itbis_Retenido, ');
  Query1.SQL.Add('0 itbis_proporc, 0 Itbis_Costo, 0 Itbis_Adelantar, 0 Itbis_Percibido_Compras, ');
  Query1.SQL.Add('isnull(R.ret_nombre,'+QuotedStr('')+') Tipo_Retencion, isnull(f.fac_retencion_isr,0) as monto_ret_renta, ');
  Query1.SQL.Add('0 ISR_Percib_Compras, f.fac_selectivo Imp_Sel_Consumo, f.fac_otrosimpuestos Otros_Impuesto_Tasa, f.fac_proplegal propina_legal, ');
  Query1.SQL.Add('(select RTRIM(fpap_nombre) FROM FormasPagoProv WHERE fpap_codigo = f.fac_form_pago) FormaPago ');
  Query1.SQL.Add('from provfacturas f ');
  Query1.SQL.Add('left join Tipo_Bienes_Servicios t on (f.tip_codigo = t.tip_codigo) ');
  Query1.SQL.Add('inner join proveedores p on f.emp_codigo=p.emp_codigo and f.sup_codigo = p.sup_codigo and f.emp_codigo=p.emp_codigo ');
  Query1.SQL.Add('left join Retenciones R on f.Tipo_Ret_Codigo = R.ret_codigo ');
  Query1.SQL.Add('where f.fac_total > 0 and p.sup_rnc is not null');
  Query1.SQL.Add('and (f.ncf is not null or f.ncf_fijo is not null) and isnull(f.tip_codigo,0) > 0');
  Query1.SQL.Add('AND f.emp_codigo = :EMP and year(f.fac_fecha) = :ANO and month(f.fac_fecha) = :MES');
  Query1.SQL.Add('AND left(F.NCF,3)<>'+QuotedStr('B02'));
  CASE cbfiltro.ItemIndex OF
  1:Query1.SQL.Add('AND F.Pasadas_606 IS NULL');
  2:Query1.SQL.Add('AND F.Pasadas_606 IS NOT NULL');
  END;
  CASE rgOrden.ItemIndex OF
  0:Query1.SQL.Add('order by substring(f.ncf,1,3), cast(substring(f.ncf,4,8) as int), t.tip_nombre, f.fac_fecha, f.sup_codigo');
  1:Query1.SQL.Add('order by t.tip_nombre, f.fac_fecha, f.sup_codigo');
  2:Query1.SQL.Add('order by f.fac_fecha, t.tip_nombre, f.sup_codigo');
  end;
  Query1.Parameters.ParamByName('EMP').Value     := dm.QEmpresasEMP_CODIGO.Value;
  Query1.Parameters.ParamByName('ANO').Value     := StrToInt(cbano.Text);
  Query1.Parameters.ParamByName('MES').Value     := cbmes.ItemIndex+1;
  Query1.Open;
  ProgressBar1.Max := Query1.RecordCount;
  ProgressBar1.Position := 0;

  TransferirExcel2;


  //Actualizando el campo de pasadas en las facturas de compra
  Query2.close;
  Query2.SQL.clear;
  Query2.SQL.Add('update provfacturas set Pasadas_606 = '+QuotedStr('True'));
  Query2.SQL.Add('where emp_codigo = :emp and year(fac_fecha) = :ano');
  Query2.SQL.Add('and month(fac_fecha) = :mes');
  Query2.SQL.Add('and fac_total > 0');
  case cbfiltro.ItemIndex of
  1 : Query2.SQL.Add('and Pasadas_606 is null');
  2 : Query2.SQL.Add('and Pasadas_606 = '+QuotedStr('True'));
  end;
  Query2.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  Query2.Parameters.ParamByName('ano').Value := StrToInt(cbano.Text);
  Query2.Parameters.ParamByName('mes').Value := cbmes.ItemIndex+1;
  Query2.ExecSQL;

  //Desembolsos
  Query1.close;
  Query1.SQL.clear;
  Query1.SQL.Add('select d.rnc_empresa as RNC_Cedula, case when len(rtrim(D.rnc_empresa)) = 9 then 1 else 2 end tipo_id,');
  Query1.SQL.Add('t.tip_nombre Tipo_Bienes_Servicios, d.des_ncf as ncf, null ncf_modif,');
  Query1.SQL.Add('CASE WHEN MONTH(d.des_fecha)<10 THEN RTRIM(YEAR(d.des_fecha))+'+QuotedStr('0')+'+RTRIM(MONTH(d.des_fecha)) ELSE');
  Query1.SQL.Add('RTRIM(YEAR(d.des_fecha))+RTRIM(MONTH(d.des_fecha)) END Fecha_Comprob,');
  Query1.SQL.Add('day(d.des_fecha) as Dia_Comprob,');
  Query1.SQL.Add('CASE WHEN MONTH(d.des_fecha)<10 THEN RTRIM(YEAR(d.des_fecha))+'+QuotedStr('0')+'+RTRIM(MONTH(d.des_fecha)) ELSE');
  Query1.SQL.Add('RTRIM(YEAR(d.des_fecha))+RTRIM(MONTH(d.des_fecha)) END FechaPag,');
  Query1.SQL.Add('day(d.des_fecha) as Dia_Pago,');
  Query1.SQL.Add('0 Monto_Servicios, (ISNULL(d.des_monto,0)-ISNULL(d.des_itbis,0)) Monto_Bienes, des_monto Total_Facturado,');
  Query1.SQL.Add('ISNULL(d.des_itbis,0) Itbis_Facturado, 0 as Itbis_Retenido,');
  Query1.SQL.Add('0 itbis_proporc, 0 Itbis_Costo, 0 Itbis_Adelantar, 0 Itbis_Percibido_Compras,');
  Query1.SQL.Add(QuotedStr('')+' Tipo_Retencion, 0 as monto_ret_renta, 0 ISR_Percib_Compras, 0 Imp_Sel_Consumo,');
  Query1.SQL.Add('0 Otros_Impuesto_Tasa, 0 propina_legal, '+QuotedStr('01 - EFECTIVO')+' FormaPago');
  Query1.SQL.Add('from desembolsos d');
  Query1.SQL.Add('left outer join Tipo_Bienes_Servicios t on (d.tip_codigo = t.tip_codigo)');
  Query1.SQL.Add('left outer join contdet_desembolso c on (d.emp_codigo = c.emp_codigo');
  Query1.SQL.Add('and d.suc_codigo = c.suc_codigo and d.des_numero = c.des_numero');
  Query1.SQL.Add('and c.cat_cuenta = :cta)');
  Query1.SQL.Add('where d.emp_codigo = :emp and year(d.des_fecha) = :ano');
  Query1.SQL.Add('and month(d.des_fecha) = :mes');
  Query1.SQL.Add('and d.des_monto > 0');
  Query1.SQL.Add('and (d.des_ncf is not null or d.des_ncf <> '+QuotedStr('')+')');
  Query1.SQL.Add('and isnull(d.tip_codigo,0) > 0');
  Query1.SQL.Add('order by d.des_fecha');
  Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  Query1.Parameters.ParamByName('ano').Value := StrToInt(cbano.Text);
  Query1.Parameters.ParamByName('mes').Value := cbmes.ItemIndex+1;
  Query1.Parameters.ParamByName('cta').Value := dm.QContabpar_cta_itbis_compra.AsString;
  Query1.Open;
  ProgressBar1.Max := Query1.RecordCount;
  ProgressBar1.Position := 0;

  TransferirExcel2;


  //Pagos realizados fuera del mes
  //Desembolsos
  Query1.close;
  Query1.SQL.clear;
  Query1.SQL.Add('select p.sup_rnc RNC_Cedula,');
  Query1.SQL.Add('case when len(rtrim(p.sup_rnc)) = 9 then 1 else 2 end tipo_id,');
  Query1.SQL.Add('t.tip_nombre Tipo_Bienes_Servicios,');
  Query1.SQL.Add('case when pf.ncf is null then RTRIM(pF.NCF_FIJO)+REPLICATE('+QuotedStr('0')+',8-LEN(pF.NCF_SECUENCIA))+RTRIM(pF.NCF_SECUENCIA) ELSE pF.NCF END NCF,');
  Query1.SQL.Add('(SELECT top 1 ncr_ncf_modifica FROM NotasCreditoCompra WHERE emp_codigo = pF.emp_codigo AND fac_numero = pF.fac_numero) NCF_MODIF,');
  Query1.SQL.Add('CASE WHEN MONTH(pF.fac_fecha)<10 THEN RTRIM(YEAR(pF.fac_fecha))+'+QuotedStr('0')+'+RTRIM(MONTH(pF.FAC_FECHA)) ELSE');
  Query1.SQL.Add('RTRIM(YEAR(pF.fac_fecha))+RTRIM(MONTH(pF.FAC_FECHA)) END Fecha_Comprob,');
  Query1.SQL.Add('day(pf.fac_fecha) as Dia_Comprob,');
  Query1.SQL.Add('CASE WHEN MONTH(c.che_fecha)<10 THEN RTRIM(YEAR(c.che_fecha))+'+QuotedStr('0')+'+RTRIM(MONTH(c.che_fecha)) ELSE');
  Query1.SQL.Add('RTRIM(YEAR(c.che_fecha))+RTRIM(MONTH(c.che_fecha)) END Fecha_Pag,');
  Query1.SQL.Add('day(c.che_fecha) as Dia_Pag,');
  Query1.SQL.Add('pf.fac_servicios Monto_Servicios, (pf.fac_total-pf.fac_itbis)-pf.fac_servicios Monto_Bienes,');
  Query1.SQL.Add('0 Total_Facturado, pf.fac_itbis Itbis_Facturado, isnull(c.che_retencion,0) as Itbis_Retenido,');
  Query1.SQL.Add('0 itbis_proporc, 0 Itbis_Costo, 0 Itbis_Adelantar, 0 Itbis_Percibido_Compras,');
  Query1.SQL.Add('isnull(R.ret_nombre,'+QuotedStr('')+') Tipo_Retencion, isnull(pf.fac_retencion_isr,0) as monto_ret_renta,');
  Query1.SQL.Add('0 ISR_Percib_Compras, pf.fac_selectivo Imp_Sel_Consumo, pf.fac_otrosimpuestos Otros_Impuesto_Tasa, pf.fac_proplegal propina_legal,');
  Query1.SQL.Add(QuotedStr('02 - CHEQUES/TRANSFERENCIAS/DEPÓSITO')+' FormaPago');
  Query1.SQL.Add('from Cheques c');
  Query1.SQL.Add('inner join Det_ChequeFacturas cf on c.emp_codigo=cf.emp_codigo and c.suc_codigo=cf.suc_codigo and c.che_numero=cf.che_numero and c.ban_codigo=cf.ban_codigo');
  Query1.SQL.Add('inner join Proveedores P on c.emp_codigo=p.emp_codigo and c.sup_codigo=p.sup_codigo');
  Query1.SQL.Add('inner join chequeretencion cr on c.emp_codigo=cr.emp_codigo and c.suc_codigo=cr.suc_codigo and c.che_numero=cr.che_numero and c.ban_codigo=cr.ban_codigo');
  Query1.SQL.Add('inner join Retenciones r on cr.ret_codigo=r.ret_codigo and cr.emp_codigo=r.emp_codigo');
  Query1.SQL.Add('inner join ProvFacturas pf on cf.emp_codigo=pf.emp_codigo and cf.suc_codigo=pf.suc_codigo and cf.fac_numero=pf.fac_numero');
  Query1.SQL.Add('inner join Tipo_Bienes_Servicios t on (pf.tip_codigo = t.tip_codigo)');
  Query1.SQL.Add('where c.emp_codigo = :emp and year(c.che_fecha) = :ano');
  Query1.SQL.Add('and month(c.che_fecha) = :mes');
  Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  Query1.Parameters.ParamByName('ano').Value := StrToInt(cbano.Text);
  Query1.Parameters.ParamByName('mes').Value := cbmes.ItemIndex+1;
  Query1.Open;
  ProgressBar1.Max := Query1.RecordCount;
  ProgressBar1.Position := 0;

  TransferirExcel2;


  //Notas de credito
  Query1.close;
  Query1.SQL.clear;
  Query1.SQL.Add('select p.sup_rnc as RNC_Cedula, case when len(rtrim(p.sup_rnc)) = 9 then 1 else 2 end tipo_id,');
  Query1.SQL.Add(QuotedStr('09 -COMPRAS Y GASTOS QUE FORMARAN PARTE DEL COSTO DE VENTA')+' Tipo_Bienes_Servicios,');
  Query1.SQL.Add('n.ncr_ncf as ncf, n.ncr_ncf_modifica ncf_modif,');
  Query1.SQL.Add('CASE WHEN MONTH(n.ncr_fecha)<10 THEN RTRIM(YEAR(n.ncr_fecha))+'+QuotedStr('0')+'+RTRIM(MONTH(n.ncr_fecha)) ELSE');
  Query1.SQL.Add('RTRIM(YEAR(n.ncr_fecha))+RTRIM(MONTH(n.ncr_fecha)) END Fecha_Comprob,');
  Query1.SQL.Add('day(n.ncr_fecha) as Dia_Comprob,');
  Query1.SQL.Add('null FechaPag,');
  Query1.SQL.Add('null as Dia_Pago,');
  Query1.SQL.Add('0 Monto_Servicios, (n.ncr_monto-n.ncr_itbis) Monto_Bienes,');
  Query1.SQL.Add('0 Total_Facturado, n.ncr_itbis Itbis_Facturado, 0 as Itbis_Retenido,');
  Query1.SQL.Add('0 itbis_proporc, 0 Itbis_Costo, 0 Itbis_Adelantar, 0 Itbis_Percibido_Compras,');
  Query1.SQL.Add(QuotedStr('')+' Tipo_Retencion, 0 as monto_ret_renta, 0 ISR_Percib_Compras, 0 Imp_Sel_Consumo,');
  Query1.SQL.Add('0 Otros_Impuesto_Tasa, 0 propina_legal, '+QuotedStr('06 - NOTA DE CREDITO')+' FormaPago');
  Query1.SQL.Add('from notascreditocompra n, proveedores p');
  Query1.SQL.Add('where n.emp_codigo = :emp and year(n.ncr_fecha) = :ano');
  Query1.SQL.Add('and month(n.ncr_fecha) = :mes');
  Query1.SQL.Add('and n.ncr_monto > 0');
  Query1.SQL.Add('and (n.ncr_ncf is not null or n.ncr_ncf <> '+QuotedStr('')+')');
  Query1.SQL.Add('and n.sup_codigo = p.sup_codigo');
  Query1.SQL.Add('and p.emp_codigo = '+dm.QParametrosPAR_INVEMPRESA.AsString);
  Query1.SQL.Add('order by n.ncr_fecha');
  Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  Query1.Parameters.ParamByName('ano').Value := StrToInt(cbano.Text);
  Query1.Parameters.ParamByName('mes').Value := cbmes.ItemIndex+1;
  Query1.Open;
  ProgressBar1.Max := Query1.RecordCount;
  ProgressBar1.Position := 0;

  TransferirExcel2;

  //Cargos Bancarios
  Query1.close;
  Query1.SQL.clear;
  Query1.SQL.Add('select C.car_rnc as RNC_Cedula, case when len(rtrim(C.car_rnc)) = 9 then 1 else 2 end tipo_id,');
  Query1.SQL.Add('T.TIP_NOMBRE Tipo_Bienes_Servicios, c.car_ncf as ncf, null ncf_modif,');
  Query1.SQL.Add('CASE WHEN MONTH(c.car_fecha)<10 THEN RTRIM(YEAR(c.car_fecha))+'+QuotedStr('0')+'+RTRIM(MONTH(c.car_fecha)) ELSE');
  Query1.SQL.Add('RTRIM(YEAR(c.car_fecha))+RTRIM(MONTH(c.car_fecha)) END Fecha_Comprob,');
  Query1.SQL.Add('day(c.car_fecha) as Dia_Comprob,');
  Query1.SQL.Add('null FechaPag, null as Dia_Pago, 0 Monto_Servicios, sum(d.det_monto) Monto_Bienes,');
  Query1.SQL.Add('sum(d.det_monto) Total_Facturado, 0 Itbis_Facturado, 0 as Itbis_Retenido,');
  Query1.SQL.Add('0 itbis_proporc, 0 Itbis_Costo, 0 Itbis_Adelantar, 0 Itbis_Percibido_Compras,');
  Query1.SQL.Add(QuotedStr('')+' Tipo_Retencion, 0 as monto_ret_renta, 0 ISR_Percib_Compras, 0 Imp_Sel_Consumo,');
  Query1.SQL.Add('0 Otros_Impuesto_Tasa, 0 propina_legal, '+QuotedStr('02 - CHEQUES/TRANSFERENCIAS/DEPÓSITO')+' FormaPago');
  Query1.SQL.Add('from cargosbanco c');
  Query1.SQL.Add('left outer join Tipo_Bienes_Servicios t');
  Query1.SQL.Add('on (c.tip_codigo = t.tip_codigo), det_cargosbanco d');
  Query1.SQL.Add('where c.emp_codigo = d.emp_codigo and c.suc_codigo = d.suc_codigo');
  Query1.SQL.Add('and c.ban_codigo = d.ban_codigo and c.car_ano = d.car_ano and c.car_mes = d.car_mes');
  Query1.SQL.Add('and c.car_numero = d.car_numero');
  Query1.SQL.Add('and c.emp_codigo = :emp and c.car_ano = :ano');
  Query1.SQL.Add('and c.car_mes = :mes');
  Query1.SQL.Add('and d.det_monto > 0');
  Query1.SQL.Add('and (c.car_ncf is not null or c.car_ncf <> '+QuotedStr('')+')');
  Query1.SQL.Add('and substring(d.cat_cuenta,1,1) = '+QuotedStr('6'));
  Query1.SQL.Add('group by c.car_fecha, c.car_rnc, c.car_ncf, t.tip_nombre');
  Query1.SQL.Add('order by 1');
  Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  Query1.Parameters.ParamByName('ano').Value := StrToInt(cbano.Text);
  Query1.Parameters.ParamByName('mes').Value := cbmes.ItemIndex+1;
  Query1.Open;
  ProgressBar1.Max := Query1.RecordCount;
  ProgressBar1.Position := 0;

  TransferirExcel2;

  //Gastos Menores
  Query1.close;
  Query1.SQL.clear;
  Query1.SQL.Add('select e.emp_rnc as RNC_Cedula, case when len(rtrim(e.emp_rnc)) = 9 then 1 else 2 end tipo_id,');
  Query1.SQL.Add('t.tip_nombre Tipo_Bienes_Servicios,');
  Query1.SQL.Add('rtrim(ncf_fijo)+rtrim(replicate('+QuotedStr('0')+',8-len(ncf_secuencia))+rtrim(ncf_secuencia)) ncf, null ncf_modif,');
  Query1.SQL.Add('CASE WHEN MONTH(n.com_fecha)<10 THEN RTRIM(YEAR(n.com_fecha))+'+QuotedStr('0')+'+RTRIM(MONTH(n.com_fecha)) ELSE');
  Query1.SQL.Add('RTRIM(YEAR(n.com_fecha))+RTRIM(MONTH(n.com_fecha)) END Fecha_Comprob,');
  Query1.SQL.Add('day(n.com_fecha) as Dia_Comprob,');
  Query1.SQL.Add('CASE WHEN MONTH(n.com_fecha)<10 THEN RTRIM(YEAR(n.com_fecha))+'+QuotedStr('0')+'+RTRIM(MONTH(n.com_fecha)) ELSE');
  Query1.SQL.Add('RTRIM(YEAR(n.com_fecha))+RTRIM(MONTH(n.com_fecha)) END FechaPag,');
  Query1.SQL.Add('day(n.com_fecha) as Dia_Pago,');
  Query1.SQL.Add('0 Monto_Servicios, 0 Monto_Bienes,');
  Query1.SQL.Add('sum(d.des_monto) Total_Facturado, 0 Itbis_Facturado, 0 as Itbis_Retenido,');
  Query1.SQL.Add('0 itbis_proporc, 0 Itbis_Costo, 0 Itbis_Adelantar, 0 Itbis_Percibido_Compras,');
  Query1.SQL.Add(QuotedStr('')+' Tipo_Retencion, 0 as monto_ret_renta, 0 ISR_Percib_Compras, 0 Imp_Sel_Consumo,');
  Query1.SQL.Add('0 Otros_Impuesto_Tasa, 0 propina_legal, '+QuotedStr('01 - EFECTIVO')+' FormaPago');
  Query1.SQL.Add('from desembolsos d');
  Query1.SQL.Add('left outer join Tipo_Bienes_Servicios t');
  Query1.SQL.Add('on (d.tip_codigo = t.tip_codigo), ncf_gastos_menores n, empresas e');
  Query1.SQL.Add('where d.emp_codigo = n.emp_codigo');
  Query1.SQL.Add('and d.suc_codigo = n.suc_codigo');
  Query1.SQL.Add('and d.des_caja = n.caj_codigo');
  Query1.SQL.Add('and d.emp_codigo = e.emp_codigo');
  Query1.SQL.Add('and d.des_fecha between convert(datetime, n.com_fecha_ini, 105)');
  Query1.SQL.Add('and convert(datetime, n.com_fecha_fin, 105)');
  Query1.SQL.Add('and n.emp_codigo = :emp');
  Query1.SQL.Add('and month(n.com_fecha) = :mes');
  Query1.SQL.Add('and year(n.com_fecha) = :ano');
  Query1.SQL.Add('and d.des_monto > 0');
  Query1.SQL.Add('and (d.des_ncf is null or d.des_ncf = '+QuotedStr('')+')');
  Query1.SQL.Add('and d.des_gasto_menor = '+QuotedStr('True'));
  Query1.SQL.Add('group by e.emp_rnc, t.tip_nombre, n.ncf_fijo, n.ncf_secuencia, n.com_fecha');
  Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  Query1.Parameters.ParamByName('ano').Value := StrToInt(cbano.Text);
  Query1.Parameters.ParamByName('mes').Value := cbmes.ItemIndex+1;
  Query1.Open;
  ProgressBar1.Max := Query1.RecordCount;
  ProgressBar1.Position := 0;

  TransferirExcel2;

  MessageDlg('Proceso terminado',mtInformation,[mbok],0);
end;

procedure TfrmGeneraComprasDGII.btCloseClick(Sender: TObject);
begin
  Close;
end;

end.
