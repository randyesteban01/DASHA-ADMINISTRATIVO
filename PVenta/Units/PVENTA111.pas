unit PVENTA111;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ExtCtrls,
  QuerySearchDlgADO, DB, ADODB, Grids, DBGrids;

type
  TfrmRepCodigoBarra = class(TForm)
    Search: TQrySearchDlgADO;
    btPrint: TBitBtn;
    btClose: TBitBtn;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    edProd: TEdit;
    tProd: TEdit;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    edUnd: TEdit;
    edEmp: TEdit;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    edCantidad: TEdit;
    DBGrid1: TDBGrid;
    QVencimiento: TADOQuery;
    dsVencimiento: TDataSource;
    QVencimientoven_fecha: TDateTimeField;
    QVencimientoven_lote: TIntegerField;
    QVencimientosup_nombre: TStringField;
    QVencimientosup_codigo: TIntegerField;
    btProveedor: TSpeedButton;
    Label5: TLabel;
    edProveedor: TEdit;
    tProveedor: TEdit;
    Memo1: TMemo;
    rgtipo: TRadioGroup;
    ckcodigo: TCheckBox;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edProdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btPrintClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btProveedorClick(Sender: TObject);
    procedure edProveedorChange(Sender: TObject);
    procedure edProveedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rgtipoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    prod, prov : integer;
    oref, fref, Vence, detallado, conitbis : string;
    precio, precio2, Itbis, Total : double;
    Function ClavePrecio (Monto : Double) : String;
  end;

var
  frmRepCodigoBarra: TfrmRepCodigoBarra;

implementation

uses PVENTA33, SIGMA01;

{$R *.dfm}

procedure TfrmRepCodigoBarra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmRepCodigoBarra.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepCodigoBarra.SpeedButton1Click(Sender: TObject);
begin
  application.createform(tfrmBuscaProducto, frmBuscaProducto);
  frmBuscaProducto.showmodal;
  if frmBuscaProducto.seleccion = 1 then
  begin
    if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
       edProd.text := inttostr(frmBuscaProducto.QProductosPRO_CODIGO.value)
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
       edProd.text := frmBuscaProducto.QProductosPRO_RFABRIC.value
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
       edProd.text := frmBuscaProducto.QProductosPRO_RORIGINAL.value;
    prod := frmBuscaProducto.QProductosPRO_CODIGO.value;
    oref := frmBuscaProducto.QProductosPRO_RORIGINAL.Value;
    fref := frmBuscaProducto.QProductosPRO_RFABRIC.Value;
    if dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio1' then
      Precio := frmBuscaProducto.QProductosPRO_PRECIO1.Value
    else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio2' then
      Precio := frmBuscaProducto.QProductosPRO_PRECIO2.Value
    else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio3' then
      Precio := frmBuscaProducto.QProductosPRO_PRECIO3.Value
    else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio4' then
      Precio := frmBuscaProducto.QProductosPRO_PRECIO4.Value
    else
      if dm.QParametrosPAR_OPC5TALINEA.Value = 'Clave de Costo' then   //titin
        begin

          Precio := frmBuscaProducto.QProductosPRO_COSTO.Value;
          if not frmBuscaProducto.QProductospro_montoitbis.IsNull then
            precio := precio + (precio * (frmBuscaProducto.QProductospro_montoitbis.value / 100));
        end;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select pro_nombre, pro_codigo, pro_rfabric, pro_display,pro_costo,');  //titin pro_costo
    dm.Query1.sql.add('pro_roriginal, pro_precio1, pro_vence, pro_precio2, pro_itbis,');
    dm.Query1.sql.add('pro_existencia, PRO_EXISTEMPAQUE, pro_detallado, sup_codigo, pro_montoitbis');
    dm.Query1.sql.add('from productos');
    dm.Query1.sql.add('where emp_codigo = :emp');

    if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
       dm.Query1.sql.add('and pro_codigo = '+edProd.text)
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
       dm.Query1.sql.add('and pro_rfabric = '+#39+edProd.text+#39)
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
       dm.Query1.sql.add('and pro_roriginal = '+#39+edProd.text+#39);
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;

    if dm.Query1.FieldByName('pro_display').AsString = '' then
      tProd.text := dm.Query1.FieldByName('pro_nombre').AsString
    else
      tProd.text := dm.Query1.FieldByName('pro_display').AsString;

    edUnd.Text := dm.Query1.FieldByName('pro_existencia').AsString;
    edEmp.Text := dm.Query1.FieldByName('pro_existempaque').AsString;
    detallado  := dm.Query1.FieldByName('pro_detallado').AsString;
    if not dm.Query1.FieldByName('sup_codigo').IsNull then
      Prov := dm.Query1.FieldByName('sup_codigo').asinteger
    else
      Prov := 0;
    prod := dm.Query1.FieldByName('pro_codigo').asinteger;
    Itbis := dm.Query1.FieldByName('pro_montoitbis').AsFloat;
    oref := dm.Query1.FieldByName('pro_roriginal').AsString;
    fref := dm.Query1.FieldByName('pro_rfabric').AsString;
    Precio2 := dm.Query1.FieldByName('pro_precio1').AsFloat;
    if dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio1' then
      Precio := dm.Query1.FieldByName('pro_precio1').AsFloat
    else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio2' then
      Precio := dm.Query1.FieldByName('pro_precio2').AsFloat
    else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio3' then
      Precio := dm.Query1.FieldByName('pro_precio3').AsFloat
    else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio4' then
      Precio := dm.Query1.FieldByName('pro_precio4').AsFloat
    else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Clave de Costo' then
      begin
        Precio := dm.Query1.FieldByName('pro_costo').AsFloat;
        if not dm.Query1.FieldByName('pro_montoitbis').IsNull then
          precio := precio + (precio * (dm.Query1.FieldByName('pro_montoitbis').AsFloat / 100));
      end

    else
      Precio := dm.Query1.FieldByName('pro_precio1').AsFloat;
      
    vence  := dm.Query1.FieldByName('pro_vence').AsString;

    QVencimiento.CLOSE;
    QVencimiento.Parameters.ParamByName('emp').Value := dm.vp_cia;
    QVencimiento.Parameters.ParamByName('pro').Value := dm.Query1.FieldByName('pro_codigo').asinteger;
    QVencimiento.Open;

    if trim(dm.QParametrosPAR_TEXTOBARRA6.AsString) <> '' then
    begin
      if dm.QParametrospar_itbisincluido.Value = 'True' then
      begin
        if dm.Query1.FieldByName('pro_itbis').AsString = 'S' then
        begin
          Precio := Precio / ((Itbis/100) + 1);
        end;
      end;
      if dm.Query1.FieldByName('pro_itbis').AsString = 'S' then
        Itbis := (Precio * Itbis)/100
      else
        Itbis := 0;
      Total  := Precio + Itbis;
    end;


    edProd.SetFocus;
  end;
  frmBuscaProducto.release;
end;

procedure TfrmRepCodigoBarra.edProdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = vk_return then
  begin
    if trim(edProd.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select pro_nombre, pro_codigo, pro_rfabric,pro_costo,');  //titin pro_costo
      dm.Query1.sql.add('pro_roriginal, pro_precio1, pro_vence, pro_precio2, pro_display, ');
      dm.Query1.sql.add('pro_existencia, PRO_EXISTEMPAQUE, pro_detallado, sup_codigo, pro_itbis, pro_montoitbis');
      dm.Query1.sql.add('from productos');
      dm.Query1.sql.add('where emp_codigo = :emp');
      if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
         dm.Query1.sql.add('and pro_codigo = '+edProd.text)
      else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
         dm.Query1.sql.add('and pro_rfabric = '+#39+edProd.text+#39)
      else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
         dm.Query1.sql.add('and pro_roriginal = '+#39+edProd.text+#39);
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('ESTE PRODUCTO NO EXISTE',mterror,[mbyes,mbno],0);
        edProd.setfocus;
      end
      else
      begin
        QVencimiento.CLOSE;
        QVencimiento.Parameters.ParamByName('emp').Value := dm.vp_cia;
        QVencimiento.Parameters.ParamByName('pro').Value := dm.Query1.FieldByName('pro_codigo').asinteger;
        QVencimiento.Open;

        if dm.Query1.FieldByName('pro_display').AsString = '' then
          tProd.text := dm.Query1.FieldByName('pro_nombre').AsString
        else
          tProd.text := dm.Query1.FieldByName('pro_display').AsString;

        edUnd.Text := dm.Query1.FieldByName('pro_existencia').AsString;
        edEmp.Text := dm.Query1.FieldByName('pro_existempaque').AsString;
        Itbis := dm.Query1.FieldByName('pro_montoitbis').AsFloat;
        detallado  := dm.Query1.FieldByName('pro_detallado').AsString;
        if not dm.Query1.FieldByName('sup_codigo').isnull then
          Prov := dm.Query1.FieldByName('sup_codigo').asinteger
        else
          Prov := 0;
        prod := dm.Query1.FieldByName('pro_codigo').asinteger;
        oref := dm.Query1.FieldByName('pro_roriginal').AsString;
        fref := dm.Query1.FieldByName('pro_rfabric').AsString;
        Precio2 := dm.Query1.FieldByName('pro_precio1').AsFloat;

        if dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio1' then
          Precio := dm.Query1.FieldByName('pro_precio1').AsFloat
        else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio2' then
          Precio := dm.Query1.FieldByName('pro_precio2').AsFloat
        else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio3' then
          Precio := dm.Query1.FieldByName('pro_precio3').AsFloat
        else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio4' then
          Precio := dm.Query1.FieldByName('pro_precio4').AsFloat
        else
          if dm.QParametrosPAR_OPC5TALINEA.Value = 'Clave de Costo' then   //titin
            begin
              Precio := dm.Query1.FieldByName('pro_costo').AsFloat;
              if (not dm.Query1.FieldByName('pro_montoitbis').IsNull) and
                 (dm.Query1.FieldByName('pro_itbis').AsString = 'S') then 
                precio := precio + (precio * (dm.Query1.FieldByName('pro_montoitbis').AsFloat / 100));
            end
        else
          Precio := dm.Query1.FieldByName('pro_precio1').AsFloat;

        if trim(dm.QParametrosPAR_TEXTOBARRA6.AsString) <> '' then
        begin
          if dm.QParametrospar_itbisincluido.Value = 'True' then
          begin
            if dm.Query1.FieldByName('pro_itbis').AsString = 'S' then
            begin
              Precio := Precio / ((Itbis/100) + 1);
            end;
          end;
          if dm.Query1.FieldByName('pro_itbis').AsString = 'S' then
            Itbis  := (Precio * Itbis)/100
          else
            Itbis  := 0;
          Total  := Precio + Itbis;
        end;

        vence  := dm.Query1.FieldByName('pro_vence').AsString;
      end;
    end;
  end;
end;

procedure TfrmRepCodigoBarra.btPrintClick(Sender: TObject);
var
  ar : textfile;
  Lote, a : Integer;
  s : array[0..20] of char;
  Relleno, IniBarra: String;
begin
  if rgtipo.ItemIndex = 1 then
  begin
    //Gondola
    //archivo de impresion de codigo de barra gondola
    if not FileExists('.\barra.ini') then
    begin
      AssignFile(ar, '.\barra.ini');
      rewrite(ar);
      writeln(ar,'prn');
      IniBarra := 'prn';
      closefile(ar);
    end
    else
    begin
      AssignFile(ar, '.\barra.ini');
      reset(ar);
      read(ar,IniBarra);
      closefile(ar);
    end;

    assignfile(ar, '.\t.txt');
    rewrite(ar);

    //Jhonattan Gomez 2020-12-18 08:25 pm
  IF DM.QParametrosPAR_IMPCODBARRAFAM.Value  = True THEN BEGIN
    //writeln(ar,'N');
    writeln(ar,'q240');
    writeln(ar,'Q560,40');
    writeln(ar,'S2');
    writeln(ar,'D8');
    writeln(ar,'ZT');
    writeln(ar,'TTh:m');
    writeln(ar,'TDy2.mn.dd');
    writeln(ar,'A42,520,3,4,2,1,N,"'+copy(tProd.text,1,32)+'"');
    writeln(ar,'B50,520,0,1,2,2,B,"'+edProd.text+'"');
    if ckcodigo.Checked then
    writeln(ar,'A95,520,3,3,2,1,N,"Cod:'+edProd.text+'"');
    writeln(ar,'A130,520,3,4,5,3,N,"$'+format('%n',[Precio2])+'"');
    writeln(ar,'P'+trim(edCantidad.text));
    writeln(ar,'FK');
  end;

  IF DM.QParametrosPAR_IMPCODBARRAFAM.Value = False THEN begin
    writeln(ar,'N');
    writeln(ar,'q240');
    writeln(ar,'Q560,B24+0');
    writeln(ar,'S2');
    writeln(ar,'D8');
    writeln(ar,'ZT');
    writeln(ar,'TTh:m');
    writeln(ar,'TDy2.mn.dd');
    writeln(ar,'A42,520,3,4,2,1,N,"'+copy(tProd.text,1,32)+'"');
    writeln(ar,'B50,520,0,1,2,2,B,"'+edProd.text+'"');
    if ckcodigo.Checked then
       writeln(ar,'A95,520,3,3,2,1,N,"Cod:'+edProd.text+'"');
    writeln(ar,'A130,520,3,4,5,3,N,"$'+format('%n',[Precio2])+'"');
    writeln(ar,'P'+trim(edCantidad.text));
   end;

    closefile(ar);

    AssignFile(AR, '.\imp.bat');
    rewrite(ar);
    writeln(ar,'type .\t.txt > '+IniBarra);
    closefile(ar);
    WinExec('imp.bat',0);

    edCantidad.text := '';
    tProd.text := '';
    edProd.text := '';
    edProd.setfocus;
  Exit;
  end
  else
  begin
    if Trim(edCantidad.Text) <> '' then
    begin
      if (dm.QParametrosPAR_VENVERIFICA.Value = '1') and
      (vence = 'True') then
      begin
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select ven_lote, sup_codigo from provence');
        dm.Query1.SQL.Add('where pro_codigo = :pro');
        dm.Query1.SQL.Add('and ven_fecha = :fec');
        dm.Query1.SQL.Add('and emp_codigo = :emp');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
        dm.Query1.Parameters.ParamByName('fec').Value := QVencimientoven_fecha.Value;
        dm.Query1.Parameters.ParamByName('pro').Value := Prod;
        dm.Query1.Open;
        if dm.Query1.RecordCount > 0 then
        begin
          s := '';
          Relleno := '';
          Lote := dm.Query1.FieldByName('ven_lote').AsInteger;
          FillChar(s, dm.QParametrosPAR_VENDIGITOSLOTE.Value-Length(IntToStr(Lote)),'0');
          Relleno := s+IntToStr(Lote);
          if not dm.Query1.FieldByName('sup_codigo').isnull then
             prov := dm.Query1.FieldByName('sup_codigo').Value
          else
             prov := 0;
        end
        else
          Relleno := '99';
      end
      else if (dm.QParametrosPAR_VENVERIFICA.Value = '1') and
      (vence = 'False') then
        Relleno := '99';

      if not FileExists('.\barra.ini') then
      begin
        AssignFile(ar, '.\barra.ini');
        rewrite(ar);
        writeln(ar,'prn');
        IniBarra := 'prn';
        closefile(ar);
      end
      else
      begin
        AssignFile(ar, '.\barra.ini');
        reset(ar);
        read(ar,IniBarra);
        closefile(ar);
      end;

      AssignFile(ar, '.\imp.bat');
      rewrite(ar);
      writeln(ar, 'type .\t.txt > '+IniBarra);
      closefile(ar);

      assignfile(ar, '.\t.txt');
      rewrite(ar);

      for a := 0 to Memo1.Lines.Count-1 do begin
        if Trim(Memo1.Lines[a]) <> '' then
           writeln(ar,Memo1.Lines[a]);
      end;

      {if (dm.QParametrosPAR_OPC1RALINEA.Value = 'Precio1') or (dm.QParametrosPAR_OPC1RALINEA.Value = 'Precio2') or
      (dm.QParametrosPAR_OPC1RALINEA.Value = 'Precio3') or (dm.QParametrosPAR_OPC1RALINEA.Value = 'Precio4') then
        writeln(ar,dm.QParametrosPAR_TEXTOBARRA1.value+#34+copy(dm.QEmpresasEMP_NOMBRE.value,1,24)+' '+'$'+format('%n',[Precio])+#34)
      else if dm.QParametrosPAR_OPC1RALINEA.Value = 'Ref. Original' then
        writeln(ar,dm.QParametrosPAR_TEXTOBARRA1.value+#34+copy(dm.QEmpresasEMP_NOMBRE.value,1,24)+' '+Relleno+oRef+#34)
      else if dm.QParametrosPAR_OPC1RALINEA.Value = 'Ref. Fabircante' then
        writeln(ar,dm.QParametrosPAR_TEXTOBARRA1.value+#34+copy(dm.QEmpresasEMP_NOMBRE.value,1,24)+' '+Relleno+fRef+#34)
      else if dm.QParametrosPAR_OPC1RALINEA.Value = 'Clave de Precio' then
        writeln(ar,dm.QParametrosPAR_TEXTOBARRA1.value+#34+copy(dm.QEmpresasEMP_NOMBRE.value,1,24)+' '+ClavePrecio(Precio)+#34)
      else
        writeln(ar,dm.QParametrosPAR_TEXTOBARRA1.value+#34+copy(dm.QEmpresasEMP_NOMBRE.value,1,24)+#34);}

      writeln(ar,dm.QParametrosPAR_TEXTOBARRA1.value+#34+copy(dm.QEmpresasEMP_NOMBRE.value,1,24)+#34);

      if Trim(edProveedor.text) <> '' then
      begin  //[0]
        if (dm.QParametrosPAR_OPC1RALINEA.Value = 'Precio1') or (dm.QParametrosPAR_OPC1RALINEA.Value = 'Precio2') or
        (dm.QParametrosPAR_OPC1RALINEA.Value = 'Precio3') or (dm.QParametrosPAR_OPC1RALINEA.Value = 'Precio4')
        or (dm.QParametrosPAR_OPC1RALINEA.Value = 'Costo') then

          writeln(ar,dm.QParametrosPAR_TEXTOBARRA2.value+#34+'$'+format('%n',[Precio])+' p:'+edProveedor.text+#34)
        else

        if dm.QParametrosPAR_OPC1RALINEA.Value = 'Ref. Original' then
          writeln(ar,dm.QParametrosPAR_TEXTOBARRA2.value+#34+Relleno+oRef+' p:'+edProveedor.text+#34)
        else if dm.QParametrosPAR_OPC1RALINEA.Value = 'Ref. Fabircante' then
          writeln(ar,dm.QParametrosPAR_TEXTOBARRA2.value+#34+Relleno+fRef+' p:'+edProveedor.text+#34)
        else if dm.QParametrosPAR_OPC1RALINEA.Value = 'Clave de Precio' then
          writeln(ar,dm.QParametrosPAR_TEXTOBARRA2.value+#34+ClavePrecio(Precio)+' p:'+edProveedor.text+#34)
        else
          if dm.QParametrosPAR_OPC1RALINEA.Value = 'Clave de Costo' then
            writeln(ar,dm.QParametrosPAR_TEXTOBARRA2.value+#34+
            Copy(ClavePrecio(Round(Precio)),1,length(ClavePrecio(Round(Precio)))-2)+' p:'+edProveedor.text+#34)
        else if dm.QParametrosPAR_OPC1RALINEA.Value = 'Telefono' then
          writeln(ar,dm.QParametrosPAR_TEXTOBARRA2.value+#34+trim(dm.QEmpresasEMP_TELEFONO.value)+' p:'+edProveedor.text+#34);
      end //[0]
      else
      begin
        if (dm.QParametrosPAR_OPC1RALINEA.Value = 'Precio1') or (dm.QParametrosPAR_OPC1RALINEA.Value = 'Precio2') or
        (dm.QParametrosPAR_OPC1RALINEA.Value = 'Precio3') or (dm.QParametrosPAR_OPC1RALINEA.Value = 'Precio4')
         then
          writeln(ar,dm.QParametrosPAR_TEXTOBARRA2.value+#34+'$'+format('%n',[Precio])+#34)

        else if dm.QParametrosPAR_OPC1RALINEA.Value = 'Ref. Original' then
          writeln(ar,dm.QParametrosPAR_TEXTOBARRA2.value+#34+Relleno+oRef+#34)
        else if dm.QParametrosPAR_OPC1RALINEA.Value = 'Ref. Fabircante' then
          writeln(ar,dm.QParametrosPAR_TEXTOBARRA2.value+#34+Relleno+fRef+#34)
        else if dm.QParametrosPAR_OPC1RALINEA.Value = 'Clave de Precio' then
          writeln(ar,dm.QParametrosPAR_TEXTOBARRA2.value+#34+ClavePrecio(Precio)+#34)
          else if dm.QParametrosPAR_OPC1RALINEA.Value = 'Clave de Costo' then
          writeln(ar,dm.QParametrosPAR_TEXTOBARRA2.value+#34+Copy(ClavePrecio(Round(Precio)),1,length(ClavePrecio(Round(Precio)))-2)+#34)
        else if dm.QParametrosPAR_OPC1RALINEA.Value = 'Telefono' then
          writeln(ar,dm.QParametrosPAR_TEXTOBARRA2.value+#34+trim(dm.QEmpresasEMP_TELEFONO.value)+#34);
      end;

      {if Trim(edProveedor.text) <> '' then
        writeln(ar,dm.QParametrosPAR_TEXTOBARRA2.value+#34+trim(dm.QEmpresasEMP_TELEFONO.value)+' p:'+edProveedor.text+#34)
      else
        writeln(ar,dm.QParametrosPAR_TEXTOBARRA2.value+#34+trim(dm.QEmpresasEMP_TELEFONO.value)+#34);}

      if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'I' then
      begin
        writeln(ar,dm.QParametrosPAR_TEXTOBARRA3.value+#34+Relleno+inttostr(Prod)+#34);
      end
      else if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'O' then
      begin
        writeln(ar,dm.QParametrosPAR_TEXTOBARRA3.value+#34+Relleno+oRef+#34);
      end
      else if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'F' then
      begin
        writeln(ar,dm.QParametrosPAR_TEXTOBARRA3.value+#34+Relleno+fRef+#34);
      end;
      writeln(ar,dm.QParametrosPAR_TEXTOBARRA4.value+#34+copy(tProd.text,1,27)+#34);
      if not QVencimientoven_fecha.isnull then
      begin
        if (dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio1') or (dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio2') or
        (dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio3') or (dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio4')
         then
        begin
          if trim(dm.QParametrosPAR_TEXTOBARRA6.AsString) <> '' then
            writeln(ar,dm.QParametrosPAR_TEXTOBARRA5.value+#34+'Precio: $'+format('%n',[Precio])+'  v:'+QVencimientoven_fecha.AsString+#34)
          else
            writeln(ar,dm.QParametrosPAR_TEXTOBARRA5.value+#34+'$'+format('%n',[Precio])+'  v:'+QVencimientoven_fecha.AsString+#34);
        end
        else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Ref. Original' then
          writeln(ar,dm.QParametrosPAR_TEXTOBARRA5.value+#34+Relleno+oRef+#34)
        else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Ref. Fabircante' then
          writeln(ar,dm.QParametrosPAR_TEXTOBARRA5.value+#34+Relleno+fRef+#34)
        else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Clave de Precio' then
          writeln(ar,dm.QParametrosPAR_TEXTOBARRA5.value+#34+Relleno+ClavePrecio(Precio)+'  v:'+QVencimientoven_fecha.AsString+#34)
        else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Clave de Costo' then
          writeln(ar,dm.QParametrosPAR_TEXTOBARRA5.value+#34+Copy(ClavePrecio(Round(Precio)),1,length(ClavePrecio(Round(Precio)))-2)+#34);

      end
      else
      begin
        if (dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio1') or (dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio2') or
        (dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio3') or (dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio4')
         then
        begin
          if trim(dm.QParametrosPAR_TEXTOBARRA6.AsString) <> '' then
            writeln(ar,dm.QParametrosPAR_TEXTOBARRA5.value+#34+'Precio: $'+format('%n',[Precio])+#34)
          else
            writeln(ar,dm.QParametrosPAR_TEXTOBARRA5.value+#34+'$'+format('%n',[Precio])+#34);
        end
        else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Ref. Original' then
          writeln(ar,dm.QParametrosPAR_TEXTOBARRA5.value+#34+Relleno+oRef+#34)
        else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Ref. Fabircante' then
          writeln(ar,dm.QParametrosPAR_TEXTOBARRA5.value+#34+Relleno+fRef+#34)
        else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Clave de Precio' then
          writeln(ar,dm.QParametrosPAR_TEXTOBARRA5.value+#34+Relleno+ClavePrecio(Precio)+#34)
        else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Clave de Costo' then
          writeln(ar,dm.QParametrosPAR_TEXTOBARRA5.value+#34+Relleno+Copy(ClavePrecio(Round(Precio)),1,length(ClavePrecio(Round(Precio)))-2)+#34);
      end;

      if trim(dm.QParametrosPAR_TEXTOBARRA6.Value) <> '' then
      begin
        writeln(ar,dm.QParametrosPAR_TEXTOBARRA6.Value+#34+'Itbis : $'+format('%n',[Itbis])+#34);
        writeln(ar,dm.QParametrosPAR_TEXTOBARRA7.Value+#34+'Total : $'+format('%n',[Total])+#34);
      end;

      writeln(ar,'P'+trim(edCantidad.text));
      writeln(ar,'FK');
      closefile(ar);

      winexec('.\imp.bat',0);
      edProd.SetFocus;
    end;
    end;

end;

procedure TfrmRepCodigoBarra.FormActivate(Sender: TObject);
begin
  //edFecha.Visible := dm.QParametrosPAR_VENVERIFICA.Value = '1';
  //lbFecha.Visible := dm.QParametrosPAR_VENVERIFICA.Value = '1';
  memo1.Lines.Clear;
  memo1.Lines.Text := dm.QParametrospar_barra_header.Value;
end;

function TfrmRepCodigoBarra.ClavePrecio(Monto: Double): String;
var
  Precio, lbClave : String;
  a : Integer;
begin
    lbClave := '';
    Precio := Format('%n',[Monto]);
    For a := 1 To Length(Precio) do
    begin
      if Copy(Precio, a, 1) = '0' then
        lbClave := lbClave + dm.QParametrosPAR_PRECIOLETRA_0.Value;
      if Copy(Precio, a, 1) = '1' then
        lbClave := lbClave + dm.QParametrosPAR_PRECIOLETRA_1.Value;
      if Copy(Precio, a, 1) = '2' then
        lbClave := lbClave + dm.QParametrosPAR_PRECIOLETRA_2.Value;
      if Copy(Precio, a, 1) = '3' then
        lbClave := lbClave + dm.QParametrosPAR_PRECIOLETRA_3.Value;
      if Copy(Precio, a, 1) = '4' then
        lbClave := lbClave + dm.QParametrosPAR_PRECIOLETRA_4.Value;
      if Copy(Precio, a, 1) = '5' then
        lbClave := lbClave + dm.QParametrosPAR_PRECIOLETRA_5.Value;
      if Copy(Precio, a, 1) = '6' then
        lbClave := lbClave + dm.QParametrosPAR_PRECIOLETRA_6.Value;
      if Copy(Precio, a, 1) = '7' then
        lbClave := lbClave + dm.QParametrosPAR_PRECIOLETRA_7.Value;
      if Copy(Precio, a, 1) = '8' then
        lbClave := lbClave + dm.QParametrosPAR_PRECIOLETRA_8.Value;
      if Copy(Precio, a, 1) = '9' then
        lbClave := lbClave + dm.QParametrosPAR_PRECIOLETRA_9.Value;
    end;
  Result := lbClave;
end;

procedure TfrmRepCodigoBarra.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmRepCodigoBarra.btProveedorClick(Sender: TObject);
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
    edProveedor.setfocus;
  end;
end;

procedure TfrmRepCodigoBarra.edProveedorChange(Sender: TObject);
begin
  if trim(edProveedor.text) = '' then tProveedor.text := '';
end;

procedure TfrmRepCodigoBarra.edProveedorKeyDown(Sender: TObject;
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
    end
    else
      tProveedor.text := '';
  end;
end;

procedure TfrmRepCodigoBarra.rgtipoClick(Sender: TObject);
begin
  ckcodigo.Visible := rgtipo.ItemIndex = 1;
end;

procedure TfrmRepCodigoBarra.BitBtn1Click(Sender: TObject);
begin
  SpeedButton1Click(Self);
end;

procedure TfrmRepCodigoBarra.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f3 then
  begin
    if rgtipo.ItemIndex = 0 then
      rgtipo.ItemIndex := 1
    else
      rgtipo.ItemIndex := 0;
  end;
  if key = vk_f5 then
  begin
    if ckcodigo.Checked then
      ckcodigo.Checked := false
    else
      ckcodigo.Checked := true;
  end;
  if key = vk_f4 then BitBtn1Click(Self);
  if key = vk_f2 then btPrintClick(Self);
end;

end.
