unit PVENTA43;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, IBCustomDataSet, IBQuery, IBUpdateSQL,
  StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, ADODB,
  QuerySearchDlgADO;

type
  TfrmFormaPagoFac = class(TForm)
    DBGrid1: TDBGrid;
    QFormaPago: TADOQuery;
    QFormaPagoEMP_CODIGO: TIntegerField;
    QFormaPagoFAC_FORMA: TIBStringField;
    QFormaPagoFAC_NUMERO: TIntegerField;
    QFormaPagoFOR_DESCRIPCION: TIBStringField;
    QFormaPagoFOR_MONTO: TFloatField;
    QFormaPagoFPA_CODIGO: TIntegerField;
    QFormaPagoTFA_CODIGO: TIntegerField;
    dsFormaPago: TDataSource;
    QForma: TADOQuery;
    QFormaFPA_CODIGO: TIntegerField;
    QFormaFPA_NOMBRE: TIBStringField;
    btlimpiar: TBitBtn;
    Search: TQrySearchDlgADO;
    bteliminar: TBitBtn;
    btSalir: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    lbTotal: TLabel;
    lbPendiente: TLabel;
    btcancelar: TBitBtn;
    QNota: TADOQuery;
    QNotaEMP_CODIGO: TIntegerField;
    QNotaFAC_FORMA: TIBStringField;
    QNotaTFA_CODIGO: TIntegerField;
    QNotaFAC_NUMERO: TIntegerField;
    QNotaNCR_NUMERO: TIntegerField;
    QNotaNCR_MONTO: TFloatField;
    dsNota: TDataSource;
    GridNC: TDBGrid;
    QNotaNCR_DISPONIBLE: TFloatField;
    Label6: TLabel;
    lbPagado: TLabel;
    Query1: TADOQuery;
    Panel1: TPanel;
    bt1: TSpeedButton;
    bt2: TSpeedButton;
    bt3: TSpeedButton;
    bt4: TSpeedButton;
    bt5: TSpeedButton;
    bt6: TSpeedButton;
    QFormaFPA_ESPDESCRIP: TIBStringField;
    QFormaPagoFOR_SECUENCIA: TIntegerField;
    QFormaFPA_PANTALLADEVOLVER: TIBStringField;
    QFormaPagoFPA_PANTALLADEVOLVER: TIBStringField;
    QFormaPagoCAT_CUENTA: TIBStringField;
    QFormaCAT_CUENTA: TIBStringField;
    QFormaPagoSUC_CODIGO: TIntegerField;
    QNotasuc_codigo: TIntegerField;
    ADOQuery1: TADOQuery;
    IntegerField1: TIntegerField;
    IBStringField1: TIBStringField;
    IntegerField2: TIntegerField;
    IBStringField2: TIBStringField;
    FloatField1: TFloatField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    StringField1: TStringField;
    IntegerField5: TIntegerField;
    IBStringField3: TIBStringField;
    IBStringField4: TIBStringField;
    IntegerField6: TIntegerField;
    QFormaPagoForma: TStringField;
    QFormaPagofor_veriphone_desc: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QFormaPagoNewRecord(DataSet: TDataSet);
    procedure btSalirClick(Sender: TObject);
    procedure btlimpiarClick(Sender: TObject);
    procedure btcancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QFormaPagoAfterPost(DataSet: TDataSet);
    procedure QFormaPagoBeforePost(DataSet: TDataSet);
    procedure QNotaAfterPost(DataSet: TDataSet);
    procedure QNotaNewRecord(DataSet: TDataSet);
    procedure QNotaNCR_NUMEROChange(Sender: TField);
    procedure GridNCEnter(Sender: TObject);
    procedure GridNCKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridNCColEnter(Sender: TObject);
    procedure QNotaBeforeInsert(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure bt1Click(Sender: TObject);
    procedure bt2Click(Sender: TObject);
    procedure bt3Click(Sender: TObject);
    procedure bt4Click(Sender: TObject);
    procedure bt5Click(Sender: TObject);
    procedure bt6Click(Sender: TObject);
    procedure QFormaPagoAfterDelete(DataSet: TDataSet);
    procedure QNotaBeforeDelete(DataSet: TDataSet);
    procedure bteliminarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QNotaBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Total, Pendiente, Pagado, TotalPantallEfec : double;
    facturar, Inserta, creacuenta : boolean;
    vl_formapago, vl_respverifone : String;
    procedure totalizar;
    procedure TraerMonto;
  end;

//function Ventas(Tipo,MontoNeto,MontoItbis,MtoOtroImpuestos:PansiChar)  : PansiChar stdcall;

var
  frmFormaPagoFac: TfrmFormaPagoFac;

implementation

uses PVENTA18, PVENTA81, SIGMA01, SIGMA00, PVENTA125, Math, cxCurrencyEdit;

//function Ventas; external 'PosCardNet.dll';
{$R *.dfm}

{function QuitarPuntosDecimal(Value:Double):String ; stdcall;
var
  ValorDoubleTxt:String;
  ParteEntera  ,ParteDecimal :String;
begin
  ValorDoubleTxt := Format('%.2f', [Value]);
  ParteEntera:= copy(ValorDoubleTxt,0,pos('.',ValorDoubleTxt)-1);
  ParteDecimal:= copy(ValorDoubleTxt,pos('.',ValorDoubleTxt)+1,length(ValorDoubleTxt));
  result :=  ParteEntera+ParteDecimal;
end;
 }

procedure TfrmFormaPagoFac.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f2 then bt1Click(Self);
  if key = vk_f3 then bt2Click(Self);
  if key = vk_f4 then bt3Click(Self);
  if key = vk_f5 then bt4Click(Self);
  if key = vk_f6 then bt5Click(Self);
  if key = vk_f7 then bt6Click(Self);
  if key = vk_f8 then btlimpiarClick(self);
  if key = vk_f9 then bteliminarClick(self);

  if ssAlt in Shift then
     Key := 0;
  if key = vk_f10 then
  begin
    key := 0;
    btSalirClick(self);
  end;
  if key = vk_escape then
  begin
    //key := 0;
    facturar := False;
    frmFormaPagoFac.Close;
    //btcancelarClick(self);
  end;
end;

procedure TfrmFormaPagoFac.QFormaPagoNewRecord(DataSet: TDataSet);
begin
  QFormaPagoFPA_CODIGO.Value := frmFactura.FPagoIni;
  QFormaPagoEMP_CODIGO.value := dm.vp_cia;
  QFormaPagoFAC_FORMA.value  := frmFactura.QFacturaFAC_FORMA.value;
  QFormaPagoFAC_NUMERO.value := frmFactura.QFacturaFAC_NUMERO.value;
  QFormaPagoTFA_CODIGO.value := frmFactura.QFacturaTFA_CODIGO.value;
  QFormaPagofor_veriphone_desc.Value := '';
  QFormaPagoFOR_MONTO.value  := Pendiente;
end;

procedure TfrmFormaPagoFac.btSalirClick(Sender: TObject);
var
  efec : double;
begin
   totalizar;
  if lbPendiente.caption <> '0.00' then
  begin
    showmessage('EL MONTO PAGADO DIFIERE DEL MONTO TOTAL');
    DBGrid1.SetFocus;
  end
  else
  begin
    QFormaPago.DisableControls;
    QFormaPago.First;
    efec := 0;
    TotalPantallEfec := 0;
    while not QFormaPago.Eof do
    begin
      efec := efec + QFormaPagoFOR_MONTO.Value;
      if QFormaPagoFPA_PANTALLADEVOLVER.Value = 'True' then
        TotalPantallEfec := TotalPantallEfec + QFormaPagoFOR_MONTO.Value;
      QFormaPago.Next;
    end;
    QFormaPago.First;
    QFormaPago.EnableControls;

    if TotalPantallEfec > 0 then
    begin
      Application.CreateForm(tfrmDevueltaEfectivo, frmDevueltaEfectivo);
      frmDevueltaEfectivo.total := TotalPantallEfec;
      frmDevueltaEfectivo.ShowModal;
      if frmDevueltaEfectivo.facturar = true then
      begin
        frmFactura.Devuelta := CurrToStr(frmDevueltaEfectivo.edDevuelta.Value);
        frmFactura.Recibido := CurrToStr(frmDevueltaEfectivo.edRecibido.Value);
        frmDevueltaEfectivo.Release;
        facturar := true;
        close;
      end
      else
        DBGrid1.SetFocus;
    end
    else
    begin
      facturar := true;
      close;
    end;
end;
end;


procedure TfrmFormaPagoFac.btlimpiarClick(Sender: TObject);
begin
  while 1 = 1 do
  begin
    if QFormaPago.RecordCount > 0 then
      QFormaPago.Delete
    else
    begin
      break;
    end;
  end;

  Totalizar;
  DBGrid1.SetFocus;
end;

procedure TfrmFormaPagoFac.totalizar;
var
  punt : TBookmark;
  CtaIngreso : String;
begin
  //if frmFactura.Totaliza = true then
  //begin
    //formas de pago

    punt := QFormaPago.GetBookmark;
    QFormaPago.disablecontrols;
    QFormaPago.first;
    Pagado := 0;
    while not QFormaPago.eof do
    begin
      Pagado := Pagado + QFormaPagoFOR_MONTO.value;

      if creacuenta then
      begin
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select cat_cuenta from formaspago');
        dm.Query1.SQL.Add('where emp_codigo = :emp');
        dm.Query1.SQL.Add('and fpa_codigo = :fpa');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
        dm.Query1.Parameters.ParamByName('fpa').Value := QFormaPagoFPA_CODIGO.Value;
        dm.Query1.Open;

        if Trim(dm.Query1.FieldByName('cat_cuenta').AsString) <> '' then
        begin
          if not frmFactura.QCuentas.Locate('cat_cuenta', dm.Query1.FieldByName('cat_cuenta').AsString, []) then
          begin
            frmFactura.QCuentas.Append;
            frmFactura.QCuentascat_cuenta.Value := dm.Query1.FieldByName('cat_cuenta').AsString;
            frmFactura.QCuentasdet_monto.Value  := QFormaPagoFOR_MONTO.Value;
            frmFactura.QCuentasdet_origen.Value := 'Debito';
            frmFactura.QCuentas.Post;
          end
          else
          begin
            frmFactura.QCuentas.Edit;
            frmFactura.QCuentascat_cuenta.Value := dm.Query1.FieldByName('cat_cuenta').AsString;
            frmFactura.QCuentasdet_monto.Value  := QFormaPagoFOR_MONTO.Value;
            frmFactura.QCuentas.Post;
          end;
        end;
      end;
      
      QFormaPago.next;
    end;
    QFormaPago.GotoBookmark(punt);
    QFormaPago.enablecontrols;

    //notas de credito
    punt := QNota.GetBookmark;
    QNota.disablecontrols;
    QNota.first;
    while not QNota.eof do
    begin
      Pagado := Pagado + QNotaNCR_MONTO.value;
      QNota.next;
    end;
    QNota.GotoBookmark(punt);
    QNota.enablecontrols;

    Pendiente := Total - Pagado;
    {if Pendiente <=0.02 then
    Pendiente := 0 else
    Pendiente := Pendiente;}
    Pagado := Pagado;
    lbPendiente.caption := FormatCurr('#,0.00',Pendiente);
    lbPagado.caption := FormatCurr('#,0.00',Pagado);
  //end;
end;

procedure TfrmFormaPagoFac.btcancelarClick(Sender: TObject);
begin
  QFormaPago.Cancel;
  facturar := False;
  frmFactura.Totaliza := true;
  frmFormaPagoFac.Close;
end;

procedure TfrmFormaPagoFac.FormCreate(Sender: TObject);
var
  a : integer;
begin
  QForma.Open;
  for a := 0 to (Sender as TForm).ComponentCount -1 DO
  begin
    if Components[a].ClassType = tdbedit then
    begin
      (Components[a] as tdbedit).OnEnter := frmMain.Entra;
      (Components[a] as tdbedit).OnExit := frmMain.sale;
    end;
  end;
  TotalPantallEfec := 0;
end;

procedure TfrmFormaPagoFac.QFormaPagoAfterPost(DataSet: TDataSet);
begin
  totalizar;
end;

procedure TfrmFormaPagoFac.QFormaPagoBeforePost(DataSet: TDataSet);
begin
  QFormaPagoCAT_CUENTA.Value := QFormaCAT_CUENTA.Value;
  Query1.close;
  Query1.sql.clear;
  Query1.sql.add('select FPA_ESPDESCRIP, FPA_PANTALLADEVOLVER from formaspago');
  Query1.sql.add('where emp_codigo = :emp');
  Query1.sql.add('and fpa_codigo = :forma');
  Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  Query1.Parameters.parambyname('forma').Value := QFormaPagoFPA_CODIGO.value;
  Query1.open;
  QFormaPagoFPA_PANTALLADEVOLVER.Value := Query1.fieldbyname('FPA_PANTALLADEVOLVER').AsString;
  if (QFormaPagoFOR_MONTO.value <= 0) and (not QFormaPagoFPA_CODIGO.isnull) and (Total > 0) then
  begin
    showmessage('DEBE ESPECIFICAR EL MONTO');
    abort;
  end
  else if (Query1.fieldbyname('fpa_espdescrip').AsString = 'True') and
  (QFormaPagoFOR_DESCRIPCION.isnull) then
  begin
    showmessage('DEBE ESPECIFICAR LA DESCRIPCION');
    abort;
  end;
end;

procedure TfrmFormaPagoFac.QNotaAfterPost(DataSet: TDataSet);
begin
  frmFactura.vl_ncr_numero := QNotaNCR_NUMERO.Value;
  totalizar;
end;

procedure TfrmFormaPagoFac.QNotaNewRecord(DataSet: TDataSet);
begin
  QNotaEMP_CODIGO.value := dm.vp_cia;
  QNotaFAC_FORMA.value  := frmFactura.QFacturaFAC_FORMA.value;
  QNotaFAC_NUMERO.value := frmFactura.QFacturaFAC_NUMERO.value;
  QNotaTFA_CODIGO.value := frmFactura.QFacturaTFA_CODIGO.value;
  QNotaSUC_CODIGO.Value := frmFactura.QFacturaSUC_CODIGO.Value;
end;

procedure TfrmFormaPagoFac.QNotaNCR_NUMEROChange(Sender: TField);
begin
  if not QNotaNCR_NUMERO.isnull then
  begin
    Query1.close;
    Query1.sql.clear;
    Query1.sql.add('select cli_codigo, ncr_monto, ncr_montousado, ncr_status');
    Query1.sql.add('from notascredito');
    Query1.sql.add('where emp_codigo = :emp');
    Query1.sql.add('and suc_codigo = :suc');
    Query1.sql.add('and ncr_numero = :num');
    Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    Query1.Parameters.parambyname('suc').Value := frmFactura.DBLookupComboBox2.KeyValue;
    Query1.Parameters.parambyname('num').Value := QNotaNCR_NUMERO.value;
    Query1.open;
    if Query1.recordcount = 0 then
    begin
      QNotaNCR_NUMERO.clear;
      showmessage('ESTA NOTA DE CREDITO NO EXISTE');
      QNota.Cancel;
    end
    else if Query1.fieldbyname('ncr_status').asstring = 'ANU' then
    begin
      QNotaNCR_NUMERO.clear;
      showmessage('ESTA NOTA DE CREDITO ESTA ANULADA');
      abort;
    end
    {else if format('%10.2f',[Query1.fieldbyname('ncr_montousado').asfloat]) >=
    format('%10.2f',[Query1.fieldbyname('ncr_monto').asfloat]) then
    begin
      QNotaNCR_NUMERO.clear;
      showmessage('ESTA NOTA DE CREDITO YA FUE USADA');
      abort;
    end}
    else if Query1.fieldbyname('cli_codigo').asinteger <> frmFactura.QFacturaCLI_CODIGO.value then
    begin
      QNotaNCR_NUMERO.clear;
      showmessage('ESTA NOTA DE CREDITO NO PERTENECE'+#13+
                  'AL CLIENTE DE LA FACTURA');
      QNota.cancel;
    end
    else
    begin
      QNotaNCR_DISPONIBLE.value :=
           Query1.fieldbyname('ncr_monto').asfloat-
           Query1.fieldbyname('ncr_montousado').asfloat;
      {if Pendiente > 0 then
      begin
        if QNotaNCR_DISPONIBLE.value <= Pendiente then
          QNotaNCR_MONTO.value := QNotaNCR_DISPONIBLE.value
        else
          QNotaNCR_MONTO.value := Pendiente;
      end;}
    end;
  end;
end;

procedure TfrmFormaPagoFac.GridNCEnter(Sender: TObject);
begin
  GridNC.SelectedIndex := 0;
end;

procedure TfrmFormaPagoFac.GridNCKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if GridNC.SelectedIndex = 2 then
    begin
      QNota.Edit;
      QNota.Post;
    end
    else
      GridNC.SelectedIndex := GridNC.SelectedIndex + 1;
  end;
end;

procedure TfrmFormaPagoFac.GridNCColEnter(Sender: TObject);
begin
  if GridNC.selectedindex = 1 then
     GridNC.selectedindex := 2;
end;

procedure TfrmFormaPagoFac.QNotaBeforeInsert(DataSet: TDataSet);
begin
  //if Inserta = False then Abort;
end;

procedure TfrmFormaPagoFac.FormActivate(Sender: TObject);
var
  a : integer;
begin
  if not QFormaPago.active then
  begin
    QFormaPago.open;
    QFormaPago.append;
    //frmFactura.Totaliza := True;
    //totalizar;
  end;

  QForma.Close;
  QForma.Open;
  QForma.DisableControls;
  QForma.First;
  a := 0;
  while not QForma.Eof do
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select fpa_codigo from clirestfpago');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cli_codigo = :cli');
    dm.Query1.SQL.Add('and fpa_codigo = :fpa');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cli').Value := frmFactura.QFacturaCLI_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('fpa').Value := QFormaFPA_CODIGO.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
    begin
      a := a + 1;

      if a = 1 then
        bt1.Caption := '[ F2 ] - '+QFormaFPA_NOMBRE.Value
      else if a = 2 then
        bt2.Caption := '[ F3 ] - '+QFormaFPA_NOMBRE.Value
      else if a = 3 then
        bt3.Caption := '[ F4 ] - '+QFormaFPA_NOMBRE.Value
      else if a = 4 then
        bt4.Caption := '[ F5 ] - '+QFormaFPA_NOMBRE.Value
      else if a = 5 then
        bt5.Caption := '[ F6 ] - '+QFormaFPA_NOMBRE.Value
      else if a = 6 then
        bt6.Caption := '[ F7 ] - '+QFormaFPA_NOMBRE.Value;
    end;
    QForma.Next;
  end;
  QForma.EnableControls;
  bt1.Visible := trim(bt1.Caption) <> '';
  bt2.Visible := trim(bt2.Caption) <> '';
  bt3.Visible := trim(bt3.Caption) <> '';
  bt4.Visible := trim(bt4.Caption) <> '';
  bt5.Visible := trim(bt5.Caption) <> '';
  bt6.Visible := trim(bt6.Caption) <> '';
end;

procedure TfrmFormaPagoFac.bt1Click(Sender: TObject);
begin
  if trim(bt1.Caption) <> '' then
  begin
    vl_formapago := trim(copy(bt1.Caption,10,30));
    if QForma.Locate('fpa_nombre',trim(copy(bt1.Caption,10,30)),[]) then
      TraerMonto;
  end;
end;

procedure TfrmFormaPagoFac.bt2Click(Sender: TObject);
begin
  if trim(bt2.Caption) <> '' then
  begin
    vl_formapago := trim(copy(bt2.Caption,10,30));
    if QForma.Locate('fpa_nombre',trim(copy(bt2.Caption,10,30)),[]) then
    TraerMonto;
  end;
end;

procedure TfrmFormaPagoFac.bt3Click(Sender: TObject);
begin
  if trim(bt3.Caption) <> '' then
  begin
    vl_formapago := trim(copy(bt3.Caption,10,30));
    if QForma.Locate('fpa_nombre',trim(copy(bt3.Caption,10,30)),[]) then
    TraerMonto;
  end;
end;

procedure TfrmFormaPagoFac.bt4Click(Sender: TObject);
begin
  if trim(bt4.Caption) <> '' then
  begin
    vl_formapago := trim(copy(bt4.Caption,10,30));
    if QForma.Locate('fpa_nombre',trim(copy(bt4.Caption,10,30)),[]) then
    TraerMonto;
  end;
end;

procedure TfrmFormaPagoFac.bt5Click(Sender: TObject);
begin
  if trim(bt5.Caption) <> '' then
  begin
    vl_formapago := trim(copy(bt5.Caption,10,30));
    if QForma.Locate('fpa_nombre',trim(copy(bt5.Caption,10,30)),[]) then
    TraerMonto;
  end;
end;

procedure TfrmFormaPagoFac.bt6Click(Sender: TObject);
Var
   Retorno:WideString ;
   vl_total,vl_itbis,vl_otroimp:sTRING;
begin
  if trim(bt6.Caption) <> '' then
  begin
    vl_formapago := trim(copy(bt6.Caption,10,30));
    if QForma.Locate('fpa_nombre',trim(copy(bt6.Caption,10,30)),[]) then
    TraerMonto;
  end;
end;

procedure TfrmFormaPagoFac.TraerMonto;
begin
  if StrToFloat(Format('%10.2f',[Pendiente])) <> 0 then
  begin
    Application.CreateForm(tfrmMontoFPago, frmMontoFPago);
    frmMontoFPago.Caption := 'Digite el Monto / Pago con '+vl_formapago;
    frmMontoFPago.edMonto.Text := FloatToStr(Pendiente);
    frmMontoFPago.Descrip := QFormaFPA_ESPDESCRIP.Value;
    frmMontoFPago.Pendiente := Pendiente;
    frmMontoFPago.ShowModal;
    frmMontoFPago.invoiceId := frmFactura.QFacturaFAC_NUMERO.Value;
    if frmMontoFPago.graba = 1 then
    begin
      QFormaPago.Append;
      QFormaPagoFPA_CODIGO.Value := QFormaFPA_CODIGO.Value;
      QFormaPagoFOR_MONTO.Value := ROUNDTO(StrToFloat(Trim(frmMontoFPago.edMonto.Text)),-2);
      QFormaPagoFOR_DESCRIPCION.Value := Trim(frmMontoFPago.edDescrip.Text);
      QFormaPagofor_veriphone_desc.Value := vl_respverifone;
      QFormaPago.Post;
      Pagado := QFormaPagoFOR_MONTO.Value;
    end
    else
      DBGrid1.SetFocus;
    frmMontoFPago.Release;
  end;
end;

procedure TfrmFormaPagoFac.QFormaPagoAfterDelete(DataSet: TDataSet);
begin
  Totalizar;
end;

procedure TfrmFormaPagoFac.QNotaBeforeDelete(DataSet: TDataSet);
begin
  Abort;
end;

procedure TfrmFormaPagoFac.bteliminarClick(Sender: TObject);
begin
  QFormaPago.Delete;
  DBGrid1.SetFocus;
end;

procedure TfrmFormaPagoFac.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     if activecontrol.classtype <> tdbgrid then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmFormaPagoFac.QNotaBeforePost(DataSet: TDataSet);
begin
  if frmFormaPagoFac.Active = True then begin
 if QNotaNCR_MONTO.value >
  QNotaNCR_DISPONIBLE.value then
  begin
    QNotaNCR_MONTO.Value := 0.00;
    showmessage('EL MONTO A PAGAR NO PUEDE SER MAYOR AL DISPONIBLE');
    GridNC.selectedindex := 1;
    Exit;
  end;
  if (Pagado - QNotaNCR_MONTO.value) >
  (frmFactura.QFacturaFAC_TOTAL.value) then
  begin
    QNotaNCR_MONTO.Value := 0.00;
    showmessage('EL MONTO A PAGAR NO PUEDE SER MAYOR AL PENDIENTE');
  end;
end;

end;

end.
