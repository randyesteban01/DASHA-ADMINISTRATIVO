unit PVENTA172;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuerySearchDlgADO, StdCtrls, Buttons, Grids, DBGrids, DB, ADODB,
  ComCtrls;

type
  TfrmEliminarProducto = class(TForm)
    Label2: TLabel;
    btProveedor: TSpeedButton;
    edProveedor: TEdit;
    tProveedor: TEdit;
    btClose: TBitBtn;
    btPrint: TBitBtn;
    Search: TQrySearchDlgADO;
    QProductos: TADOQuery;
    QProductospro_codigo: TIntegerField;
    QProductospro_roriginal: TStringField;
    QProductospro_nombre: TStringField;
    QProductospro_existencia: TBCDField;
    QProductosemp_codigo: TIntegerField;
    QProductospro_escala: TStringField;
    QProductospro_vence: TStringField;
    dsProductos: TDataSource;
    gProductos: TStringGrid;
    ckimprime: TCheckBox;
    QProductospro_precio1: TBCDField;
    BitBtn1: TBitBtn;
    ckcero: TCheckBox;
    Memo1: TMemo;
    Label1: TLabel;
    edProducto: TEdit;
    mmoSinMov: TMemo;
    chkSinMovientos: TCheckBox;
    chkSinProveedor: TCheckBox;
    lblCantidad: TLabel;
    chk1: TCheckBox;
    procedure btProveedorClick(Sender: TObject);
    procedure edProveedorChange(Sender: TObject);
    procedure edProveedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormPaint(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QProductosAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure gProductosDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure gProductosSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure ckimprimeExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure UpdateOptions(const Grid : TStringGrid; const Check : TCheckBox; const ACol, ARow: Integer);
  end;

var
  frmEliminarProducto: TfrmEliminarProducto;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmEliminarProducto.btProveedorClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Query.clear;
  Search.Query.add('select sup_nombre, sup_codigo');
  Search.ResultField := 'sup_codigo';
  Search.Query.add('from proveedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.Query.add('and sup_Status = '+#39+'ACT'+#39);
  Search.Title := 'Listado de Proveedores';
  if Search.execute then
  begin
    edProveedor.text := search.valuefield;
    edProveedor.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select sup_codigo, sup_nombre, sup_balance,');
    dm.Query1.sql.add('sup_direccion, sup_localidad, sup_telefono, sup_fax');
    dm.Query1.sql.add('from proveedores');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and sup_Status = '+#39+'ACT'+#39);
    dm.Query1.sql.add('and sup_codigo = :sup');
    dm.Query1.Parameters.parambyname('sup').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tProveedor.text := dm.Query1.fieldbyname('sup_nombre').asstring;
    BitBtn1Click(Self);
  end;
end;

procedure TfrmEliminarProducto.edProveedorChange(Sender: TObject);
begin
  if trim(edProveedor.text) = '' then tProveedor.text := '';
end;

procedure TfrmEliminarProducto.edProveedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edProveedor.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select sup_codigo, sup_nombre, sup_balance,');
      dm.Query1.sql.add('sup_direccion, sup_localidad, sup_telefono, sup_fax');
      dm.Query1.sql.add('from proveedores');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and sup_Status = '+#39+'ACT'+#39);
      dm.Query1.sql.add('and sup_codigo = :sup');
      dm.Query1.Parameters.parambyname('sup').Value := strtoint(edProveedor.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tProveedor.text := dm.Query1.fieldbyname('sup_nombre').asstring;
      BitBtn1Click(Self);
    end
    else
      tProveedor.text := '';
  end;
end;

procedure TfrmEliminarProducto.FormPaint(Sender: TObject);
begin
  top := 5;
  Left := 0;
end;

procedure TfrmEliminarProducto.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEliminarProducto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmEliminarProducto.QProductosAfterOpen(DataSet: TDataSet);
var
  fil : integer;
begin
  gProductos.RowCount := 2;
  gProductos.Cells[0,1] := '';
  gProductos.Cells[1,1] := '';
  gProductos.Cells[2,1] := '';
  gProductos.Cells[3,1] := '';
  gProductos.Cells[4,1] := '';
  gProductos.Cells[5,1] := '';
  gProductos.Cells[6,1] := '';

  QProductos.DisableControls;
  fil := 1;
  while not QProductos.Eof do
  begin
    gProductos.Cells[0,fil] := QProductospro_codigo.AsString;
    gProductos.Cells[1,fil] := QProductospro_roriginal.Value;
    gProductos.Cells[2,fil] := QProductospro_nombre.Value;
    gProductos.Cells[3,fil] := QProductospro_existencia.AsString;
    gProductos.Cells[4,fil] := Format('%n',[QProductospro_precio1.AsFloat]);
    gProductos.RowCount := gProductos.RowCount + 1;
    fil := fil + 1;
    QProductos.Next;
  end;
  QProductos.EnableControls;
  if gProductos.RowCount > 2 then gProductos.RowCount := gProductos.RowCount - 1;
  lblCantidad.Caption := IntToStr(QProductos.RecordCount);
end;

procedure TfrmEliminarProducto.FormCreate(Sender: TObject);
begin
  Memo1.Lines := QProductos.SQL;

  gProductos.Cells[0,0] := 'Codigo';
  gProductos.Cells[1,0] := 'Ref. Original';
  gProductos.Cells[2,0] := 'Nombre del Producto';
  gProductos.Cells[3,0] := 'Exist.';
  gProductos.Cells[4,0] := 'Precio1';
end;

procedure TfrmEliminarProducto.gProductosDrawCell(Sender: TObject; ACol,
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
      Canvas.Font.Style := [fsbold];

    //Canvas.Font.Color := clBlack;
    // Draw the Band
    Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2, cells[acol, arow]);
    Canvas.FrameRect(Rect);
  end;

  // Right-justify columns 0-2
  // Spalten 0-2 rechts ausrichten.
  if ACol = 4 then
    Display(gProductos, gProductos.Cells[ACol, ARow], taRightJustify);
  if ACol = 5 then
    Display(gProductos, gProductos.Cells[ACol, ARow], taCenter);
end;

procedure TfrmEliminarProducto.gProductosSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  ckimprime.Checked := false;
  UpdateOptions(gProductos, ckimprime, ACol, ARow);
end;

procedure TfrmEliminarProducto.UpdateOptions(const Grid: TStringGrid;
  const Check: TCheckBox; const ACol, ARow: Integer);
var
  lR, lName : TRect;
begin
  if ACol < 6 then
    Check.Checked := Grid.Cells[5,ARow] = 'X'
  else
    if ACol = 6 then
      Check.Checked := Grid.Cells[ACol,ARow] = 'X';

  Check.Tag := ARow;
  if ACol < 6 then
  begin
    lR := Grid.CellRect(5, ARow);
  end
  else
  begin
    lR := Grid.CellRect(ACol, ARow);
  end;

  // lName := sgOptions.CellRect(ACol, ARow);
  {lName.Left := lName.Left + Grid.Left;
  lName.Right := lName.Right + Grid.Left;
  lName.Top := lName.Top + Grid.Top;
  lName.Bottom := lName.Bottom + Grid.Top;
  Panel.Left := lName.Left + 1;
  Panel.Top := lName.Top + 1;
  Panel.Width := (lName.Right + 1) - lName.Left;
  Panel.Height := (lName.Bottom + 1) - lName.Top;}

  // lR := sgOptions.CellRect(ACol, ARow);
  lR.Left := lR.Left + Grid.Left;
  lR.Right := lR.Right + Grid.Left;
  lR.Top := lR.Top + Grid.Top;
  lR.Bottom := lR.Bottom + Grid.Top;
  Check.Left := lR.Left + 5;
  Check.Top := lR.Top + 1;
  Check.Width := (lR.Right + 1) - lR.Left;
  Check.Height := (lR.Bottom + 1) - lR.Top;

//  Combo.SetFocus;
end;

procedure TfrmEliminarProducto.ckimprimeExit(Sender: TObject);
begin
  if ckimprime.Checked then
    gProductos.Cells[5,ckimprime.Tag] := 'X'
  else
    gProductos.Cells[5,ckimprime.Tag] := '';
end;

procedure TfrmEliminarProducto.BitBtn1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  QProductos.Close;
  QProductos.SQL := Memo1.Lines;

  if pos('%',Trim(edProducto.Text)) = 0 then edProducto.Text := edProducto.Text + '%';

  if Trim(edProducto.Text) <> '' then
    QProductos.SQL.Add('and p.pro_nombre like '+QuotedStr(edProducto.Text));

  if ckcero.Checked then
    QProductos.SQL.Add('and p.pro_existencia <= 0');

  if chkSinMovientos.Checked then begin
    QProductos.SQL.Add('and p.pro_codigo not in');
    QProductos.SQL.Add(mmoSinMov.Lines.GetText);
  end;

  if chkSinProveedor.Checked then
    QProductos.SQL.Add('and p.pro_codigo not in (select pro_codigo from ProdProveedores)');


  if Trim(edProveedor.Text) <> '' then
  begin
    QProductos.SQL.Add('and p.pro_codigo in (select pro_codigo from ProdProveedores where sup_codigo = :sup)');
    QProductos.Parameters.ParamByName('sup').Value  := strtoint(trim(edProveedor.Text));
  end;

  QProductos.SQL.Add('order by p.pro_nombre');
  QProductos.Open;
  gProductos.SetFocus;
  Screen.Cursor := crDefault;
end;

procedure TfrmEliminarProducto.btPrintClick(Sender: TObject);
var
  a : integer;
begin
  if MessageDlg('Desea Eliminar los productos marcados?',mtConfirmation, [mbyes, mbno],0) = mryes then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('SELECT * FROM PR_BUSCA_MOV_PROD (:EMP, :PRO)');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.ParamByName('pro').Value := QProductosPRO_CODIGO.Value;
    dm.Query1.Open;
    if dm.Query1.FieldByName('tiene').AsString = 'S' then
    begin
      MessageDlg('EXISTEN '+dm.Query1.FieldByName('movimiento').AsString+' QUE YA '+
      'TIENEN ESTE PRODUCTO.',mtError, [mbno], 0);
      Exit;
    end
    else
    begin
    if MessageDlg('Est� realmente seguro',mtConfirmation, [mbyes, mbno],0) = mryes then
    begin
      for a := 1 to gProductos.RowCount-1 do
      begin
        if gProductos.Cells[5, a] = 'X' then
        begin
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('delete from productos');
          dm.Query1.SQL.Add('where pro_codigo = :pro');
          dm.Query1.SQL.Add('and emp_codigo = :emp');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
          dm.Query1.Parameters.ParamByName('pro').Value := StrToInt(gProductos.Cells[0,a]);
          dm.Query1.ExecSQL;

          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('delete from existencias');
          dm.Query1.SQL.Add('where pro_codigo = :pro');
          dm.Query1.SQL.Add('and emp_codigo = :emp');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
          dm.Query1.Parameters.ParamByName('pro').Value := StrToInt(gProductos.Cells[0,a]);
          dm.Query1.ExecSQL;

          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('delete from ProdProveedores');
          dm.Query1.SQL.Add('where pro_codigo = :pro');
          dm.Query1.SQL.Add('and emp_codigo = :emp');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
          dm.Query1.Parameters.ParamByName('pro').Value := StrToInt(gProductos.Cells[0,a]);
          dm.Query1.ExecSQL;
        end;
      end;
      end;
      ckimprime.Checked := false;

      for a := 1 to gProductos.RowCount-1 do
      begin
        gProductos.Cells[5, a] := '';
      end;

      BitBtn1Click(Self);
    end;
  end;
end;

end.

