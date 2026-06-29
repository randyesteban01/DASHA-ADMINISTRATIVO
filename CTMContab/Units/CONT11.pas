unit CONT11;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, IBCustomDataSet,
  IBUpdateSQL, IBQuery, Grids, ADODB, QuerySearchDlgADO, IdMessageClient,
  IdSMTP, idMessage, QRPDFFilt, QuickRpt, QRCtrls, ComCtrls, ToolWin,
  ActnList;

type
  TfrmCatalogo = class(TForm)
    Panel2: TPanel;
    QCatalogo: TADOQuery;
    Search: TQrySearchDlgADO;
    dsCatalogo: TDataSource;
    QCatalogoCAT_BALACTUAL: TFloatField;
    QCatalogoCAT_BALANT: TFloatField;
    QCatalogoCAT_CONTROL: TIBStringField;
    QCatalogoCAT_CUENTA: TIBStringField;
    QCatalogoCAT_MOVIMIENTO: TIBStringField;
    QCatalogoCAT_NOMBRE: TIBStringField;
    QCatalogoCAT_ORIGEN: TIBStringField;
    QCatalogoCAT_TIPO: TIBStringField;
    QCatalogoEMP_CODIGO: TIntegerField;
    QCatalogoUSU_CODIGO: TIntegerField;
    sgCatalogo: TStringGrid;
    QCatalogoCAT_SITUACION: TIBStringField;
    ActionList2: TActionList;
    btPrior: TAction;
    btNext: TAction;
    btInsert: TAction;
    btEdit: TAction;
    btDelete: TAction;
    btPost: TAction;
    btCancel: TAction;
    btFind: TAction;
    btPrint: TAction;
    btClose: TAction;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton15: TToolButton;
    btEmail: TAction;
    QCatalogocat_flujo_efectivo: TStringField;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btControl: TSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    rgMov: TDBRadioGroup;
    QCatalogocat_maneja_centro: TStringField;
    DBRadioGroup2: TDBRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure dsCatalogoStateChange(Sender: TObject);
    procedure QCatalogoAfterDelete(DataSet: TDataSet);
    procedure QCatalogoAfterPost(DataSet: TDataSet);
    procedure QCatalogoNewRecord(DataSet: TDataSet);
    procedure QCatalogoBeforePost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure btControlClick(Sender: TObject);
    procedure sgCatalogoDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure btPrintClick(Sender: TObject);
    procedure sgCatalogoSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure sgCatalogoEnter(Sender: TObject);
    procedure dsCatalogoDataChange(Sender: TObject; Field: TField);
    procedure BitBtn1Click(Sender: TObject);
    procedure QCatalogoAfterInsert(DataSet: TDataSet);
    procedure QCatalogoAfterEdit(DataSet: TDataSet);
    procedure QCatalogoAfterCancel(DataSet: TDataSet);
    procedure QCatalogoCAT_CONTROLChange(Sender: TField);
    procedure btEmailClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Cta, Con, Ori, Tip, Mov : String;
    accion : integer;
    procedure EnvioMail;
  end;

var
  frmCatalogo: TfrmCatalogo;

implementation

uses RCONT03, RCONT13, SIGMA01, SIGMA00;

{$R *.DFM}

procedure TfrmCatalogo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmCatalogo.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCatalogo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmCatalogo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    if ActiveControl.ClassType <> TStringGrid then
    begin
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    end;
  end;
end;

procedure TfrmCatalogo.btPostClick(Sender: TObject);
begin
  QCatalogo.post;
end;

procedure TfrmCatalogo.btCancelClick(Sender: TObject);
begin
  QCatalogo.cancel;
end;

procedure TfrmCatalogo.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
  begin
    //Verificando si la cuenta tiene movimientos
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select count(*) as cantidad from contdet_trans');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cta').Value := QCatalogoCAT_CUENTA.Value;
    dm.Query1.Open;
    if dm.Query1.FieldByName('cantidad').AsInteger > 0 then
      MessageDlg('Esta cuenta tiene movimiento y no puede eliminarse',mtError,[mbok],0)
    else
      QCatalogo.delete;
  end;
end;

procedure TfrmCatalogo.btEditClick(Sender: TObject);
begin
  //Verificando si la cuenta tiene movimientos
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select count(*) as cantidad from contdet_trans');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and cat_cuenta = :cta');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('cta').Value := QCatalogoCAT_CUENTA.Value;
  dm.Query1.Open;
  if dm.Query1.FieldByName('cantidad').AsInteger > 0 then
  begin
    DBEdit1.Enabled := false;
    DBEdit2.setfocus;
  end
  else
  begin
    DBEdit1.Enabled := true;
    DBEdit1.setfocus;
  end;

  QCatalogo.edit;
end;

procedure TfrmCatalogo.btInsertClick(Sender: TObject);
begin
  DBEdit1.Enabled := true;
  DBEdit1.setfocus;
  QCatalogo.insert;
end;

procedure TfrmCatalogo.btFindClick(Sender: TObject);
var
  a : integer;
begin
  Search.Title := 'Catalogo de Cuentas';
  Search.ResultField := 'CAT_CUENTA';
  Search.query.clear;
  Search.query.add('select cat_nombre, cat_cuenta');
  Search.query.add('from contcatalogo');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  if search.execute then
  begin
     QCatalogo.Close;
     QCatalogo.Parameters.ParamByName('CTA').Value := search.valuefield;
     QCatalogo.Parameters.ParamByName('emp_codigo').Value := inttostr(dm.QEmpresasEMP_CODIGO.value);
     QCatalogo.Open; 
       // Verificar que QCatalogo se haya abierto correctamente y tenga registros
  if QCatalogo.RecordCount>0 then
  begin
    // Iterar a través de las filas del StringGrid
    for a := 1 to sgCatalogo.RowCount - 1 do
    begin
      // Verificar que la celda no esté vacía antes de compararla
      if sgCatalogo.Cells[0, a] = QCatalogo.FieldByName('CAT_CUENTA').AsString then
      begin
        sgCatalogo.Row := a;  // Seleccionar la fila encontrada
        Break;  // Salir del bucle una vez encontrada la fila
      end;
    end;
  end
  else
  begin
    ShowMessage('No se encontraron resultados en el catálogo.');
  end;
end
else
begin
  ShowMessage('Búsqueda cancelada o sin resultados.');
end;
 end;
procedure TfrmCatalogo.dsCatalogoStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsCatalogo.State = dsbrowse;
  btPrint.Enabled   := btInsert.enabled;
  btControl.Enabled := not btInsert.enabled;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
  //sgCatalogo.enabled := btInsert.enabled;
end;

procedure TfrmCatalogo.QCatalogoAfterDelete(DataSet: TDataSet);
var
  a : integer;
begin
  QCatalogo.UpdateBatch;;
  accion := 0;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select cat_cuenta, cat_nombre, cat_control,');
  dm.Query1.SQL.Add('cat_origen, cat_balactual from contcatalogo');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('order by cat_cuenta');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Open;

  if dm.Query1.RecordCount = 0 then
  begin
    sgCatalogo.RowCount := dm.Query1.RecordCount + 2;
    sgCatalogo.Cells[0,1] := '';
    sgCatalogo.Cells[1,1] := '';
    sgCatalogo.Cells[2,1] := '';
    sgCatalogo.Cells[3,1] := '';
    sgCatalogo.Cells[4,1] := '';
  end
  else
    sgCatalogo.RowCount := dm.Query1.RecordCount + 1;
  sgCatalogo.Cells[0,0] := 'Cuenta';
  sgCatalogo.Cells[1,0] := 'Nombre de la Cuenta';
  sgCatalogo.Cells[2,0] := 'Control';
  sgCatalogo.Cells[3,0] := 'Origen';
  sgCatalogo.Cells[4,0] := 'Bce. Actual';

  dm.Query1.DisableControls;
  dm.Query1.First;
  a := 1;
  while not dm.Query1.Eof do
  begin
    sgCatalogo.Cells[0,a] := dm.Query1.FieldByName('cat_cuenta').AsString;
    sgCatalogo.Cells[1,a] := dm.Query1.FieldByName('cat_nombre').AsString;
    sgCatalogo.Cells[2,a] := dm.Query1.FieldByName('cat_control').AsString;
    if dm.Query1.FieldByName('cat_origen').AsString = 'D' then
      sgCatalogo.Cells[3,a] := 'Debito'
    else
      sgCatalogo.Cells[3,a] := 'Credito';
    sgCatalogo.Cells[4,a] := Format('%n',[dm.Query1.FieldByName('cat_balactual').AsFloat]);
    a := a + 1;
    dm.Query1.Next;
  end;
  dm.Query1.EnableControls;
  sgCatalogo.Row := 1;
  sgCatalogo.SetFocus;
end;

procedure TfrmCatalogo.QCatalogoAfterPost(DataSet: TDataSet);
var
  a : integer;
begin
  QCatalogo.UpdateBatch;
  accion := 0;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select cat_cuenta, cat_nombre, cat_control,');
  dm.Query1.SQL.Add('cat_origen, cat_balactual from contcatalogo');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('order by cat_cuenta');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Open;

  if dm.Query1.RecordCount = 0 then
    sgCatalogo.RowCount := dm.Query1.RecordCount + 2
  else
    sgCatalogo.RowCount := dm.Query1.RecordCount + 1;
  sgCatalogo.Cells[0,0] := 'Cuenta';
  sgCatalogo.Cells[1,0] := 'Nombre de la Cuenta';
  sgCatalogo.Cells[2,0] := 'Control';
  sgCatalogo.Cells[3,0] := 'Origen';
  sgCatalogo.Cells[4,0] := 'Bce. Actual';

  dm.Query1.DisableControls;
  dm.Query1.First;
  a := 1;
  while not dm.Query1.Eof do
  begin
    sgCatalogo.Cells[0,a] := dm.Query1.FieldByName('cat_cuenta').AsString;
    sgCatalogo.Cells[1,a] := dm.Query1.FieldByName('cat_nombre').AsString;
    sgCatalogo.Cells[2,a] := dm.Query1.FieldByName('cat_control').AsString;
    if dm.Query1.FieldByName('cat_origen').AsString = 'D' then
      sgCatalogo.Cells[3,a] := 'Debito'
    else
      sgCatalogo.Cells[3,a] := 'Credito';
    sgCatalogo.Cells[4,a] := Format('%n',[dm.Query1.FieldByName('cat_balactual').AsFloat]);
    a := a + 1;
    dm.Query1.Next;
  end;
  dm.Query1.EnableControls;
  for a := 1 to sgCatalogo.RowCount -1 do
    if sgCatalogo.Cells[0,a] = QCatalogoCAT_CUENTA.Value then
      break;
  if dm.Query1.RecordCount > 1 then
    sgCatalogo.Row := a
  else
    sgCatalogo.Row := 1;
end;

procedure TfrmCatalogo.QCatalogoNewRecord(DataSet: TDataSet);
begin
  QCatalogoEMP_CODIGO.value := dm.QEmpresasEMP_CODIGO.value;
  QCatalogoUSU_CODIGO.Value := DM.Usuario;
  QCatalogoCAT_CUENTA.Value      := Cta;
  QCatalogoCAT_CONTROL.Value     := Con;
  QCatalogoCAT_ORIGEN.Value      := Ori;
  QCatalogoCAT_MOVIMIENTO.Value  := Mov;
  QCatalogoCAT_TIPO.Value        := Tip;
  QCatalogoCAT_SITUACION.Value   := 'N';
  QCatalogocat_maneja_centro.Value := 'N';
end;

procedure TfrmCatalogo.QCatalogoBeforePost(DataSet: TDataSet);
begin
  if (not QCatalogoCAT_CUENTA.IsNull) and (QCatalogo.State = dsInsert) then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_cuenta from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :num');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('num').Value  := QCatalogoCAT_CUENTA.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      MessageDlg('ESTA CUENTA EXISTE',mtError,[mbok],0);
      QCatalogoCAT_CUENTA.Clear;
      Abort;
    end;
  end;
  if trim(QCatalogoCAT_CUENTA.value) = '' then
  begin
    showmessage('LA CUENTA NO PUEDE ESTAR EN BLANCO');
    DBEdit1.setfocus;
    abort;
  end;
  if trim(QCatalogoCAT_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if trim(QCatalogoCAT_ORIGEN.value) = '' then
  begin
    showmessage('EL ORIGEN NO PUEDE ESTAR EN BLANCO');
    DBEdit3.setfocus;
    abort;
  end;
  if (trim(QCatalogoCAT_MOVIMIENTO.value) = 'S')
  and (QCatalogoCAT_CONTROL.IsNull) then
  begin
    showmessage('DEBE ESPECIFICAR LA CUENTA CONTROL,'+#13+
                'YA QUE ES UNA CUENTA DE MOVIMIENTO');
    DBEdit4.setfocus;
    abort;
  end;
  if QCatalogo.State = dsInsert then
  begin
    if sgCatalogo.RowCount >= 2 then
      sgCatalogo.RowCount := sgCatalogo.RowCount + 1;
    sgCatalogo.Cells[0,sgCatalogo.RowCount-1] := QCatalogoCAT_CUENTA.Value;
    sgCatalogo.Cells[1,sgCatalogo.RowCount-1] := QCatalogoCAT_NOMBRE.Value;
    sgCatalogo.Cells[2,sgCatalogo.RowCount-1] := QCatalogoCAT_CONTROL.Value;
    if QCatalogoCAT_ORIGEN.Value = 'D' then
      sgCatalogo.Cells[3,sgCatalogo.RowCount-1] := 'Debito'
    else
      sgCatalogo.Cells[3,sgCatalogo.RowCount-1] := 'Credito';
    sgCatalogo.Cells[4,sgCatalogo.RowCount-1] := Format('%n',[QCatalogoCAT_BALACTUAL.Value]);
  end;
  Cta := QCatalogoCAT_CUENTA.Value;
  Con := QCatalogoCAT_CONTROL.Value;
  Ori := QCatalogoCAT_ORIGEN.Value;
  Mov := QCatalogoCAT_MOVIMIENTO.Value;
  Tip := QCatalogoCAT_TIPO.Value;
end;

procedure TfrmCatalogo.FormActivate(Sender: TObject);
var
  a : integer;
begin
  frmMain.ArchivoMAil := 'c:\cuadre.txt';

  if not QCatalogo.active then
  begin
    QCatalogo.Parameters.ParamByName('CTA').Value := '';
    QCatalogo.open;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_cuenta, cat_nombre, cat_control,');
    dm.Query1.SQL.Add('cat_origen, cat_balactual from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('order by cat_cuenta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Open;

    if dm.Query1.RecordCount = 0 then
      sgCatalogo.RowCount := dm.Query1.RecordCount + 2
    else
      sgCatalogo.RowCount := dm.Query1.RecordCount + 1;
    sgCatalogo.Cells[0,0] := 'Cuenta';
    sgCatalogo.Cells[1,0] := 'Nombre de la Cuenta';
    sgCatalogo.Cells[2,0] := 'Control';
    sgCatalogo.Cells[3,0] := 'Origen';
    sgCatalogo.Cells[4,0] := 'Bce. Actual';

    dm.Query1.DisableControls;
    dm.Query1.First;
    a := 1;
    while not dm.Query1.Eof do
    begin
      sgCatalogo.Cells[0,a] := dm.Query1.FieldByName('cat_cuenta').AsString;
      sgCatalogo.Cells[1,a] := dm.Query1.FieldByName('cat_nombre').AsString;
      sgCatalogo.Cells[2,a] := dm.Query1.FieldByName('cat_control').AsString;
      if dm.Query1.FieldByName('cat_origen').AsString = 'D' then
        sgCatalogo.Cells[3,a] := 'Debito'
      else
        sgCatalogo.Cells[3,a] := 'Credito';
      sgCatalogo.Cells[4,a] := Format('%n',[dm.Query1.FieldByName('cat_balactual').AsFloat]);
      a := a + 1;
      dm.Query1.Next;
    end;
    dm.Query1.EnableControls;
    sgCatalogo.Row := 1;
  end;
  frmMain.ExportXLS.Sheets[3].StringGrid := sgCatalogo;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[3].Exported := True;
end;

procedure TfrmCatalogo.btpriorClick(Sender: TObject);
begin
  if not QCatalogo.bof then
    QCatalogo.prior;
end;

procedure TfrmCatalogo.btnextClick(Sender: TObject);
begin
  if not QCatalogo.eof then
    QCatalogo.next;
end;

procedure TfrmCatalogo.FormCreate(Sender: TObject);
var
  a : integer;
begin
  for a := 0 to (Sender as TForm).ComponentCount -1 DO
  begin
    if Components[a].ClassType = tdbedit then
    begin
      (Components[a] as tdbedit).OnEnter := frmMain.Entra;
      (Components[a] as tdbedit).OnExit := frmMain.sale;
    end;
  end;
end;

procedure TfrmCatalogo.FormPaint(Sender: TObject);
begin
  with frmCatalogo do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmCatalogo.btControlClick(Sender: TObject);
begin
  Search.Title := 'Cuentas Controles';
  Search.ResultField := 'CAT_CUENTA';
  Search.query.clear;
  Search.query.add('select cat_nombre, cat_cuenta');
  Search.query.add('from contcatalogo');
  Search.query.add('where cat_movimiento = '+#39+'N'+#39);
  Search.query.add('and emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  if search.execute then
     QCatalogoCAT_CONTROL.Value := search.valuefield;
end;

procedure TfrmCatalogo.sgCatalogoDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  dx: Integer;
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
  with (Sender as TStringGrid) do
  begin
    // Don't change color for first Column, first row
    if ARow = 0 then
    Begin
       Canvas.Font.Name := 'Tahoma';
       Canvas.Font.Style := [fsBold];
//      Canvas.Brush.Color := clBtnFace
    End
    else
    begin
       Canvas.Font.Name := 'Tahoma';
       Canvas.Font.Size := 8;
    end;

    Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2, cells[acol, arow]);
    Canvas.FrameRect(Rect);
  end;

  // Right-justify columns 0-2
  // Spalten 0-2 rechts ausrichten.
  if ACol = 4 then
    Display(sgCatalogo, sgCatalogo.Cells[ACol, ARow], taRightJustify);
  if ACol = 3 then
    Display(sgCatalogo, sgCatalogo.Cells[ACol, ARow], taCenter);
  if (ACol in[0,2,3,4]) and (ARow = 0) then
    Display(sgCatalogo, sgCatalogo.Cells[ACol, ARow], taCenter);

end;

procedure TfrmCatalogo.btPrintClick(Sender: TObject);
begin
  Application.CreateForm(tRepCatalogo, RepCatalogo);
  RepCatalogo.lbFecha.Caption := 'Al '+DateToStr(Date);
  RepCatalogo.QCatalogo.Open;
  RepCatalogo.PrinterSetup;
  RepCatalogo.Preview;
  RepCatalogo.Destroy;
end;

procedure TfrmCatalogo.sgCatalogoSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
 // if accion = 0 then
  // Solo actualizar si no estás editando/inserción activa
  //if (QCatalogo.State in [dsBrowse]) then
  if accion = 0 then
  begin
    QCatalogo.DisableControls;
    QCatalogo.Close;
    QCatalogo.Parameters.ParamByName('CTA').Value := sgCatalogo.Cells[0, ARow];
    QCatalogo.Parameters.ParamByName('emp_codigo').Value := dm.QEmpresasEMP_CODIGO.Value;
    QCatalogo.Open;
    QCatalogo.EnableControls;
    
  end;
end;

procedure TfrmCatalogo.sgCatalogoEnter(Sender: TObject);
begin
  if btInsert.Enabled then
  //if (QCatalogo.State in [dsBrowse]) then
  begin
    QCatalogo.Close;
    QCatalogo.Parameters.ParamByName('CTA').Value := sgCatalogo.Cells[0, sgCatalogo.Row];
    QCatalogo.Parameters.ParamByName('emp_codigo').Value := dm.QEmpresasEMP_CODIGO.Value;
    QCatalogo.Open;
  end;
end;

procedure TfrmCatalogo.dsCatalogoDataChange(Sender: TObject;
  Field: TField);
begin
  {rgSituacion.Visible := (QCatalogoCAT_TIPO.Value = 'AC') or
                         (QCatalogoCAT_TIPO.Value = 'PA') or
                         (QCatalogoCAT_TIPO.Value = 'CA');}
end;

procedure TfrmCatalogo.BitBtn1Click(Sender: TObject);
begin
  Application.CreateForm(tRepVistaSituacion, RepVistaSituacion);
  RepVistaSituacion.QCuentas.Open;
  RepVistaSituacion.PrinterSetup;
  RepVistaSituacion.Preview;
  RepVistaSituacion.Destroy;
end;

procedure TfrmCatalogo.QCatalogoAfterInsert(DataSet: TDataSet);
begin
  accion := 1;
end;

procedure TfrmCatalogo.QCatalogoAfterEdit(DataSet: TDataSet);
begin
  accion := 2;
end;

procedure TfrmCatalogo.QCatalogoAfterCancel(DataSet: TDataSet);
begin
  accion := 0;
end;

procedure TfrmCatalogo.QCatalogoCAT_CONTROLChange(Sender: TField);
begin
  if (not QCatalogoCAT_CONTROL.IsNull) and (Trim(QCatalogoCAT_CONTROL.Value) <> '') then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_movimiento, cat_origen, cat_tipo from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cta').Value := QCatalogoCAT_CONTROL.Value;
    dm.Query1.Open;
    if dm.Query1.fieldbyname('cat_movimiento').AsString = 'S' then
    begin
      MessageDlg('ESTA CUENTA NO PUEDE SER CONTROL,'+#13+
                 'YA QUE ACEPTA MOVIMIENTO',mtError,[mbok],0);
      QCatalogoCAT_CONTROL.Clear;
    end
    else if dm.Query1.RecordCount = 0 then
    begin
      MessageDlg('ESTA CUENTA NO EXISTE',mtError,[mbok],0);
      QCatalogoCAT_CONTROL.Clear;
    end
    else
    begin
      QCatalogoCAT_ORIGEN.Value := dm.Query1.FieldByName('cat_origen').AsString;
      QCatalogoCAT_TIPO.Value := dm.Query1.FieldByName('cat_tipo').AsString;
    end;
  end;
end;

procedure TfrmCatalogo.EnvioMail;
var
   MailMsg : TIdMessage;
   //Archivo : TIdAttachment;
   nArchivo : string;
begin
   nArchivo := InputBox('Envio de Mail','Correo : ','');
   if trim(nArchivo) <> '' then
   begin
     Application.CreateForm(tRepCatalogo, RepCatalogo);
     RepCatalogo.lbFecha.Caption := 'Al '+DateToStr(Date);
     RepCatalogo.QCatalogo.Open;
     frmMain.filtroreporte := TQRPDFDocumentFilter.Create('c:\catalogo.pdf');
     RepCatalogo.ExportToFilter(frmMain.filtroreporte);
     RepCatalogo.destroy;
     if frmMain.IdSMTP1.Connected then frmMain.IdSMTP1.Disconnect;
     MailMsg := TidMessage.Create(frmMain.IdSMTP1);
     MailMsg.Subject      := 'Catalogo de Cuentas';
     MailMsg.From.Address := dm.QParametrospar_mailcorreo.Value;
     MailMsg.From.Name    := dm.QParametrospar_mailcorreo.Value;
     MailMsg.ReplyTo.EMailAddresses :=  dm.QParametrospar_mailcorreo.Value;
     MailMsg.Recipients.Add;
     MailMsg.Recipients.Items[0].Address := nArchivo;
     //TIdAttachmentFile.Create(MailMsg.MessageParts, 'c:\catalogo.pdf');
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

procedure TfrmCatalogo.btEmailClick(Sender: TObject);
begin
  EnvioMail;
end;

end.
