unit PVENTA162;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls;

type
  TfrmDigitacionAbierta = class(TForm)
    QProductos: TADOQuery;
    QProductospro_codigo: TIntegerField;
    QProductospro_roriginal: TStringField;
    QProductospro_rfabric: TStringField;
    QProductospro_nombre: TStringField;
    QProductospro_precio1: TBCDField;
    QProductospro_precio2: TBCDField;
    QProductospro_precio3: TBCDField;
    QProductospro_precio4: TBCDField;
    QProductospro_ultcosto: TBCDField;
    QProductospro_costo: TBCDField;
    QProductospro_itbis: TStringField;
    Panel1: TPanel;
    btClose: TBitBtn;
    btgrabar: TBitBtn;
    Memo1: TMemo;
    dsProductos: TDataSource;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    SpeedButton1: TSpeedButton;
    edProd: TEdit;
    rgtipo: TRadioGroup;
    ckbarra: TCheckBox;
    Label9: TLabel;
    edCantidad: TEdit;
    btimprime: TBitBtn;
    GroupBox1: TGroupBox;
    QProductosPRO_PRECIOMENOR: TBCDField;
    QProductosPRO_PRECIOMENOREMP: TBCDField;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    QProductosemp_codigo: TIntegerField;
    QProductosFAM_CODIGO: TIntegerField;
    QProductosCOL_CODIGO: TIntegerField;
    QProductosPRO_BARRA: TStringField;
    QProductosPRO_DESCMAX: TBCDField;
    QProductosPRO_DISPLAY: TStringField;
    QProductosPRO_STATUS: TStringField;
    QProductosPRO_INVINICIAL: TBCDField;
    QProductosPRO_EXISTENCIA: TBCDField;
    QProductosPRO_UBICACION: TStringField;
    QProductosPRO_STKMINIMO: TBCDField;
    QProductosPRO_STKMAXIMO: TBCDField;
    QProductosPRO_INVFISICO: TBCDField;
    QProductosPRO_PEDIDOPRV: TBCDField;
    QProductosPRO_PEDIDOCLI: TBCDField;
    QProductosPRO_CTAINVENT: TStringField;
    QProductosPRO_CTACOSTO: TStringField;
    QProductosDEP_CODIGO: TIntegerField;
    QProductosPRO_BENEFICIO: TBCDField;
    QProductosPRO_ESCALA: TStringField;
    QProductosPRO_SERVICIO: TStringField;
    QProductosMAR_CODIGO: TIntegerField;
    QProductosPRO_COMISION: TBCDField;
    QProductosPRO_VENCE: TStringField;
    QProductosPRO_BENEFICIO2: TBCDField;
    QProductosPRO_BENEFICIO3: TBCDField;
    QProductosPRO_BENEFICIO4: TBCDField;
    QProductosPRO_USO: TStringField;
    QProductosSUP_CODIGO: TIntegerField;
    QProductosPRO_NUEVOUSADO: TStringField;
    QProductosPRO_COSTOUS: TBCDField;
    QProductosPRO_TASACOMPRA: TBCDField;
    QProductosPRO_TASAVENTA: TBCDField;
    QProductosPRO_EXISTEMPAQUE: TBCDField;
    QProductosPRO_CANTEMPAQUE: TBCDField;
    QProductosPRO_COSTOEMPAQUE: TBCDField;
    QProductosPRO_COMBO: TStringField;
    QProductosPRO_INVINICIALEMP: TBCDField;
    QProductosPRO_STKMINIMOEMP: TBCDField;
    QProductosPRO_STKMAXIMOEMP: TBCDField;
    QProductosPRO_ALMACENBAR: TIntegerField;
    QProductosMON_CODIGO: TIntegerField;
    QProductosPRO_COMISIONDESCUENTO: TBCDField;
    QProductosPRO_CONTROLADO: TStringField;
    QProductosPRO_DETALLADO: TStringField;
    QProductospro_realizar_pedido: TStringField;
    QProductosusu_codigo: TIntegerField;
    QProductospro_fecha_modifico: TDateTimeField;
    QProductospro_comentario: TMemoField;
    QProductospro_foto: TStringField;
    QProductospro_selectivo_ad: TBCDField;
    QProductospro_selectivo_con: TBCDField;
    QProductospro_unidad_medida: TStringField;
    QProductospro_minimo_venta: TBCDField;
    QProductospro_volumen: TBCDField;
    Panel2: TPanel;
    QAlmacen: TADOQuery;
    QAlmacenalm_codigo: TIntegerField;
    QAlmacenalm_nombre: TStringField;
    dsAlmacen: TDataSource;
    Label12: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label13: TLabel;
    edExistencia: TEdit;
    QProductosValor: TFloatField;
    DBEdit43: TDBEdit;
    QProductosCalcCosto: TFloatField;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    QProductosValorEmp: TFloatField;
    Query1: TADOQuery;
    btbuscar: TBitBtn;
    QProductospro_montoitbis: TBCDField;
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btgrabarClick(Sender: TObject);
    procedure btimprimeClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QProductosNewRecord(DataSet: TDataSet);
    procedure QProductosBeforeInsert(DataSet: TDataSet);
    procedure edProdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QProductosBeforeEdit(DataSet: TDataSet);
    procedure QProductosBeforePost(DataSet: TDataSet);
    procedure QProductosAfterPost(DataSet: TDataSet);
    procedure QProductosAfterInsert(DataSet: TDataSet);
    procedure QProductosAfterEdit(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure QProductosCalcFields(DataSet: TDataSet);
    procedure QProductosPRO_BENEFICIOChange(Sender: TField);
    procedure QProductosPRO_BENEFICIO2Change(Sender: TField);
    procedure QProductosPRO_BENEFICIO3Change(Sender: TField);
    procedure QProductosPRO_BENEFICIO4Change(Sender: TField);
    procedure QProductospro_costoChange(Sender: TField);
    procedure btbuscarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    prod, accion : integer;
    oref, fref : string;
    existe, vIns, vMod : boolean;
    Function ClavePrecio (Monto : Double) : String;
    procedure precios;
  end;

var
  frmDigitacionAbierta: TfrmDigitacionAbierta;

implementation

uses SIGMA01, PVENTA33;

{$R *.dfm}

procedure TfrmDigitacionAbierta.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmDigitacionAbierta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmDigitacionAbierta.FormCreate(Sender: TObject);
begin
  memo1.Lines := QProductos.SQL;
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('inv_abierta');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;

  DBEdit5.Visible := dm.QUsuariosusu_ver_costo.Value = 'True';

  application.createform(tfrmBuscaProducto, frmBuscaProducto);
end;

procedure TfrmDigitacionAbierta.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmDigitacionAbierta.SpeedButton1Click(Sender: TObject);
begin
  frmBuscaProducto.ckactiva.Checked := true;
  frmBuscaProducto.showmodal;
  if frmBuscaProducto.seleccion = 1 then
  begin
    QProductos.Close;
    QProductos.SQL.Clear;
    QProductos.SQL := memo1.Lines;

    if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
    begin
       edProd.text := inttostr(frmBuscaProducto.QProductosPRO_CODIGO.value);
       QProductos.SQL.Add('and pro_codigo = '+Trim(edProd.Text));
    end
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
    begin
       edProd.text := frmBuscaProducto.QProductosPRO_RFABRIC.value;
       QProductos.SQL.Add('and pro_rfabric = '+QuotedStr(Trim(edProd.Text)));
    end
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
    begin
       edProd.text := frmBuscaProducto.QProductosPRO_RORIGINAL.value;
       QProductos.SQL.Add('and pro_rfabric = '+QuotedStr(Trim(edProd.Text)));
    end;

    QProductos.Open;

    prod := frmBuscaProducto.QProductosPRO_CODIGO.value;
    oref := frmBuscaProducto.QProductosPRO_RORIGINAL.Value;
    fref := frmBuscaProducto.QProductosPRO_RFABRIC.Value;

    edProd.SetFocus;
  end;
end;

procedure TfrmDigitacionAbierta.btgrabarClick(Sender: TObject);
begin
  QProductos.Edit;

  if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'O' then QProductospro_roriginal.Value := edProd.Text;

  QProductos.Post;
  QProductos.UpdateBatch;

  if ckbarra.Checked then btimprimeClick(Self);

  QProductos.Close;
  edProd.Text := '';
  edExistencia.Text := '';
  edProd.SetFocus;
end;

procedure TfrmDigitacionAbierta.btimprimeClick(Sender: TObject);
var
  ar : textfile;
  Lote, a : Integer;
  s : array[0..20] of char;
  Relleno, IniBarra : String;
begin
  if rgtipo.ItemIndex = 1 then
  begin
    //Gondola
    //archivo de impresion de codigo de barra gondola
    if not FileExists('c:\barra.ini') then
    begin
      AssignFile(ar, 'c:\barra.ini');
      rewrite(ar);
      writeln(ar,'prn');
      IniBarra := 'prn';
      closefile(ar);
    end
    else
    begin
      AssignFile(ar, 'c:\barra.ini');
      reset(ar);
      read(ar,IniBarra);
      closefile(ar);
    end;

    assignfile(ar, 'c:\t.txt');
    rewrite(ar);

    writeln(ar,'N');
    writeln(ar,'q240');
    writeln(ar,'Q560,B24+0');
    writeln(ar,'S2');
    writeln(ar,'D8');
    writeln(ar,'ZT');
    writeln(ar,'TTh:m');
    writeln(ar,'TDy2.mn.dd');
    writeln(ar,'A35,500,3,4,2,2,N,"'+copy(dm.QEmpresasEMP_NOMBRE.Value,1,32)+'"');
    writeln(ar,'A95,500,3,4,2,1,N,"'+copy(QProductospro_nombre.Value,1,32)+'"');
    {if ckcodigo.Checked then
       writeln(ar,'A95,520,3,3,2,1,N,"Cod:'+copy(edProd.text,1,32)+'"');}
       //titin
    if (dm.QParametrosPAR_OPC1RALINEA.Value = 'Costo') or
       (dm.QParametrosPAR_OPC5TALINEA.Value = 'Costo') then
     writeln(ar,'A170,500,3,4,2,3,N,"$'+format('%n',[QProductospro_costo.Value])+'"')
    else
      writeln(ar,'A170,500,3,4,2,3,N,"$'+format('%n',[QProductospro_precio1.Value])+'"');
    writeln(ar,'P'+trim(edCantidad.text));
    closefile(ar);

    AssignFile(AR, 'c:\imp.bat');
    rewrite(ar);
    writeln(ar,'type c:\t.txt > '+IniBarra);
    closefile(ar);
    WinExec('c:\imp.bat',0);
  end
  else
  begin
    if Trim(edCantidad.Text) <> '' then
    begin
      if not FileExists('c:\barra.ini') then
      begin
        AssignFile(ar, 'c:\barra.ini');
        rewrite(ar);
        writeln(ar,'prn');
        IniBarra := 'prn';
        closefile(ar);
      end
      else
      begin
        AssignFile(ar, 'c:\barra.ini');
        reset(ar);
        read(ar,IniBarra);
        closefile(ar);
      end;

      AssignFile(ar, 'c:\imp.bat');
      rewrite(ar);
      writeln(ar, 'type c:\t.txt > '+IniBarra);
      closefile(ar);

      assignfile(ar, 'c:\t.txt');
      rewrite(ar);

      for a := 0 to Memo1.Lines.Count-1 do
        if Trim(Memo1.Lines[a]) <> '' then
           writeln(ar,Memo1.Lines[a]);

      {writeln(ar,'q288');
      writeln(ar,'Q152,40');
      writeln(ar,'N');
      writeln(ar,'ZT');}
      if (dm.QParametrosPAR_OPC1RALINEA.Value = 'Precio1') or
      (dm.QParametrosPAR_OPC1RALINEA.Value = 'Precio2') or
      (dm.QParametrosPAR_OPC1RALINEA.Value = 'Precio3') or
      (dm.QParametrosPAR_OPC1RALINEA.Value = 'Precio4') then
          writeln(ar,dm.QParametrosPAR_TEXTOBARRA1.value+#34+
                copy(dm.QEmpresasEMP_NOMBRE.value,1,24)+' '+
                'RD$'+format('%n',[QProductospro_precio1.Value])+#34)
       else
        if (dm.QParametrosPAR_OPC1RALINEA.Value = 'Costo') then  //titin
          writeln(ar,dm.QParametrosPAR_TEXTOBARRA1.value+#34+
                copy(dm.QEmpresasEMP_NOMBRE.value,1,24)+' '+
                'RD$'+format('%n',[QProductospro_costo.Value])+#34)

      else if dm.QParametrosPAR_OPC1RALINEA.Value = 'Ref. Original' then
        writeln(ar,dm.QParametrosPAR_TEXTOBARRA1.value+#34+
                copy(dm.QEmpresasEMP_NOMBRE.value,1,24)+' '+
                Relleno+oRef+#34)
      else if dm.QParametrosPAR_OPC1RALINEA.Value = 'Ref. Fabircante' then
        writeln(ar,dm.QParametrosPAR_TEXTOBARRA1.value+#34+
                copy(dm.QEmpresasEMP_NOMBRE.value,1,24)+' '+
                Relleno+fRef+#34)
      else if dm.QParametrosPAR_OPC1RALINEA.Value = 'Clave de Precio' then
        writeln(ar,dm.QParametrosPAR_TEXTOBARRA1.value+#34+
                copy(dm.QEmpresasEMP_NOMBRE.value,1,24)+' '+
                ClavePrecio(QProductospro_precio1.Value)+#34)
      else
        writeln(ar,dm.QParametrosPAR_TEXTOBARRA1.value+#34+copy(dm.QEmpresasEMP_NOMBRE.value,1,24)+#34);

      writeln(ar,dm.QParametrosPAR_TEXTOBARRA2.value+#34+trim(dm.QEmpresasEMP_TELEFONO.value)+#34);

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
      writeln(ar,dm.QParametrosPAR_TEXTOBARRA4.value+#34+copy(QProductospro_nombre.Value,1,27)+#34);

      if (dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio1') or
         (dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio2') or
         (dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio3') or
         (dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio4') then
        writeln(ar,dm.QParametrosPAR_TEXTOBARRA5.value+#34+
          'RD$'+format('%n',[QProductospro_precio1.Value])+#34)

      else if (dm.QParametrosPAR_OPC5TALINEA.Value = 'Costo') then  //titin
          writeln(ar,dm.QParametrosPAR_TEXTOBARRA5.value+#34+
            'RD$'+format('%n',[QProductospro_Costo.Value])+#34)
     else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Ref. Original' then
        writeln(ar,dm.QParametrosPAR_TEXTOBARRA5.value+#34+Relleno+oRef+#34)
      else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Ref. Fabircante' then
        writeln(ar,dm.QParametrosPAR_TEXTOBARRA5.value+#34+Relleno+fRef+#34)
      else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Clave de Precio' then
        writeln(ar,dm.QParametrosPAR_TEXTOBARRA5.value+#34+Relleno+ClavePrecio(QProductospro_precio1.Value)+#34);

      writeln(ar,'P'+trim(edCantidad.text));
      writeln(ar,'FK');
      closefile(ar);

      winexec('c:\imp.bat',0);
    end;
  end;
end;

function TfrmDigitacionAbierta.ClavePrecio(Monto: Double): String;
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

procedure TfrmDigitacionAbierta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f2 then btgrabarClick(Self);
  if key = vk_f4 then btbuscarClick(Self);
  if key = vk_f3 then btimprimeClick(Self);
end;

procedure TfrmDigitacionAbierta.QProductosNewRecord(DataSet: TDataSet);
begin
  QProductospro_beneficio. Value := dm.QParametrospar_beneficio.Value;
  QProductospro_realizar_pedido.Value := 'False';
  QProductosPRO_CONTROLADO.Value := 'False';
  QProductosPRO_DETALLADO.Value  := 'True';
  QPRoductosPRO_COMBO.Value := 'False';
  QProductosPRO_COSTO.Value := 0;
  QProductosPRO_COSTOEMPAQUE.Value := 0;
  QProductosPRO_EXISTEMPAQUE.Value := 0;
  QProductosPRO_CANTEMPAQUE.Value  := 0;
  QProductosEMP_CODIGO.value    := dm.QParametrosPAR_INVEMPRESA.Value;
  QProductosPRO_PEDIDOPRV.Value := 0;
  QProductosPRO_PEDIDOCLI.Value := 0;
  QProductosPRO_STATUS.value := 'ACT';
  QProductosPRO_EXISTENCIA.value := 0;
  QProductosPRO_INVINICIAL.value := 0;
  QProductosPRO_INVINICIALEMP.Value := 0;
  QProductospro_montoitbis.Value := dm.QParametrosPAR_ITBIS.Value;
  QPRoductosPRO_ITBIS.value      := dm.QParametrosPAR_ITBISDEFECTO.Value;
  QProductosPRO_ESCALA.Value     := 'False';
  QProductosPRO_SERVICIO.Value   := 'False';
  QProductosPRO_VENCE.value      := 'False';
  QProductosPRO_CTAINVENT.Value  := dm.QContabPAR_CTAINVENT.Value;
  QProductosPRO_CTACOSTO.Value   := dm.QContabPAR_CTACOSTO.Value;
end;

procedure TfrmDigitacionAbierta.QProductosBeforeInsert(DataSet: TDataSet);
begin
  if not vIns then
  begin
    MessageDlg('Usted No tiene acceso a modificar',mtInformation,[mbok],0);
    Abort;
  end;
end;

procedure TfrmDigitacionAbierta.edProdKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  pro : integer;
begin
  if key = vk_return then
  begin
    if trim(edProd.text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select pro_codigo from productos');
      if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
         dm.Query1.SQL.Add('where pro_codigo = '+Trim(edProd.Text))
      else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
         dm.Query1.SQL.Add('where pro_rfabric = '+QuotedStr(Trim(edProd.Text)))
      else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
         dm.Query1.SQL.Add('where pro_roriginal = '+QuotedStr(Trim(edProd.Text)));
      dm.Query1.Open;

      if dm.Query1.RecordCount = 0 then
        existe := false
      else
      begin
        existe := true;
        pro := dm.query1.fieldbyname('pro_codigo').AsInteger;
      end;

      if existe then
      begin
        QProductos.Close;
        QProductos.SQL.Clear;
        QProductos.SQL := memo1.Lines;
        QProductos.SQL.Add('and pro_codigo = '+inttostr(pro));
        QProductos.Open;
        //DBEdit1.SetFocus;
      end
      else
      begin
        QProductos.Close;
        QProductos.SQL.Clear;
        QProductos.SQL := memo1.Lines;
        QProductos.SQL.Add('and pro_codigo = -1');
        QProductos.Open;
        QProductos.Append;
        QProductospro_nombre.Value := '*** PRODUCTO NUEVO ***';
        //DBEdit7.SetFocus;
      end;
    end;
  end;
end;

procedure TfrmDigitacionAbierta.QProductosBeforeEdit(DataSet: TDataSet);
begin
  if not vMod then
  begin
    MessageDlg('Usted No tiene acceso a modificar',mtInformation,[mbok],0);
    Abort;
  end;
end;

procedure TfrmDigitacionAbierta.QProductosBeforePost(DataSet: TDataSet);
begin
  QProductosusu_codigo.Value := dm.Usuario;
  QProductospro_fecha_modifico.Value := Now;
  
  if trim(QProductosPRO_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit7.setfocus;
    abort;
  end;
  if QProductos.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(pro_codigo),0) as maximo');
    dm.query1.sql.add('from productos');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.query1.open;
    QProductosPRO_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;

    if dm.QParametrosPAR_VENVERIFICA.Value = '1' then
      QProductosPRO_RORIGINAL.Value := IntToStr(QProductosPRO_CODIGO.Value);

    QProductosPRO_EXISTENCIA.Value := StrToFloat(edExistencia.Text);
  end;
end;

procedure TfrmDigitacionAbierta.QProductosAfterPost(DataSet: TDataSet);
begin
  if accion = 1 then
  begin
    //Insertando Existencias por Almacen
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('execute pr_graba_prod :emp, :pro');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.parambyname('pro').Value := QProductosPRO_CODIGO.Value;
    dm.Query1.ExecSQL;
  end
  else
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('execute pr_modifica_prod :emp, :pro');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.parambyname('pro').Value := QProductosPRO_CODIGO.Value;
    dm.Query1.ExecSQL;

    if Trim(edExistencia.Text) <> '' then
    begin
      if StrToFloat(edExistencia.Text) > 0 then
      begin
        //Productos
        dm.query1.close;
        dm.query1.sql.clear;
        dm.query1.sql.add('update productos set pro_Existencia = pro_existencia + :cant');
        dm.query1.sql.add('where emp_codigo = :emp');
        dm.query1.sql.add('and pro_codigo = :pro');
        dm.query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
        dm.query1.Parameters.parambyname('pro').Value := QProductospro_codigo.Value;
        dm.query1.Parameters.parambyname('cant').Value := StrToFloat(edExistencia.Text);
        dm.query1.ExecSQL;

        //Almacen
        dm.query1.close;
        dm.query1.sql.clear;
        dm.query1.sql.add('update existencias set exi_cantidad = exi_cantidad + :cant');
        dm.query1.sql.add('where emp_codigo = :emp');
        dm.query1.sql.add('and pro_codigo = :pro');
        dm.query1.sql.add('and alm_codigo = :alm');
        dm.query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
        dm.query1.Parameters.parambyname('pro').Value := QProductospro_codigo.Value;
        dm.query1.Parameters.parambyname('alm').Value := DBLookupComboBox1.KeyValue;
        dm.query1.Parameters.parambyname('cant').Value := StrToFloat(edExistencia.Text);
        dm.query1.ExecSQL;
      end;
    end;
  end;
end;

procedure TfrmDigitacionAbierta.QProductosAfterInsert(DataSet: TDataSet);
begin
  accion := 1;
end;

procedure TfrmDigitacionAbierta.QProductosAfterEdit(DataSet: TDataSet);
begin
  accion := 2;
end;

procedure TfrmDigitacionAbierta.FormActivate(Sender: TObject);
begin
  if not QAlmacen.Active then
  begin
    QAlmacen.Open;
    DBLookupComboBox1.KeyValue := QAlmacenalm_codigo.Value;
  end;
end;

procedure TfrmDigitacionAbierta.precios;
var
  tcosto, rdesde, rhasta, rvalor : double;
  nValor, nEntero : String;
begin
  if QProductosPRO_CANTEMPAQUE.Value > 0 then
  begin
    //Precio al Detalle
    //Unidad
    //Precio1
    if QProductosPRO_BENEFICIO.Value <> 0 then
      if dm.QParametrosPAR_PRECIOUND.Value = 'Precio1' then
         if dm.QParametrospar_itbisincluido.Value = 'True' then
           QProductosPRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO.Value)/100))]))
         else
           QProductosPRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO.Value)/100))]));

    //Precio2
    if QProductosPRO_BENEFICIO2.Value <> 0 then
      if dm.QParametrosPAR_PRECIOUND.Value = 'Precio2' then
         if dm.QParametrospar_itbisincluido.Value = 'True' then
           QProductosPRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO2.Value)/100))]))
         else
           QProductosPRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO2.Value)/100))]));

    //Precio3
    if QProductosPRO_BENEFICIO3.Value <> 0 then
      if dm.QParametrosPAR_PRECIOUND.Value = 'Precio3' then
         if dm.QParametrospar_itbisincluido.Value = 'True' then
           QProductosPRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO3.Value)/100))]))
         else
           QProductosPRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO3.Value)/100))]));

    //Precio4
    if QProductosPRO_BENEFICIO4.Value <> 0 then
      if dm.QParametrosPAR_PRECIOUND.Value = 'Precio4' then
         if dm.QParametrospar_itbisincluido.Value = 'True' then
           QProductosPRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO4.Value)/100))]))
         else
           QProductosPRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO4.Value)/100))]));

    //Empaque
    //Precio1
    if QProductosPRO_BENEFICIO.Value <> 0 then
    begin
      if dm.QParametrosPAR_PRECIOEMP.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO.Value)/100))]))
        else
          QProductosPRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO.Value)/100))]));
      end
      else if dm.QParametrosPAR_PRECIOEMP.Value = 'Precio1' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QProductosValorEMp.Value+((QProductosValorEMp.Value*QProductosPRO_BENEFICIO.Value)/100))]))
        else
          QProductosPRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTOEMPAQUE.Value+((QProductosPRO_COSTOEMPAQUE.Value*QProductosPRO_BENEFICIO.Value)/100))]));
      end;
    end;

    //Precio2
    if QProductosPRO_BENEFICIO2.Value <> 0 then
    begin
      if dm.QParametrosPAR_PRECIOEMP.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO2.Value)/100))]))
        else
          QProductosPRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO2.Value)/100))]));
      end
      else if dm.QParametrosPAR_PRECIOEMP.Value = 'Precio2' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QProductosValorEMp.Value+((QProductosValorEMp.Value*QProductosPRO_BENEFICIO2.Value)/100))]))
        else
          QProductosPRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTOEMPAQUE.Value+((QProductosPRO_COSTOEMPAQUE.Value*QProductosPRO_BENEFICIO2.Value)/100))]));
      end;
    end;

    //Precio3
    if QProductosPRO_BENEFICIO3.Value <> 0 then
    begin
      if dm.QParametrosPAR_PRECIOEMP.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO3.Value)/100))]))
        else
          QProductosPRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO3.Value)/100))]));
      end
      else if dm.QParametrosPAR_PRECIOEMP.Value = 'Precio3' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QProductosValorEMp.Value+((QProductosValorEMp.Value*QProductosPRO_BENEFICIO3.Value)/100))]))
        else
          QProductosPRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTOEMPAQUE.Value+((QProductosPRO_COSTOEMPAQUE.Value*QProductosPRO_BENEFICIO3.Value)/100))]));
      end;
    end;

    //Precio4
    if QProductosPRO_BENEFICIO4.Value <> 0 then
    begin
      if dm.QParametrosPAR_PRECIOEMP.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO4.Value)/100))]))
        else
          QProductosPRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO4.Value)/100))]));
      end
      else if dm.QParametrosPAR_PRECIOEMP.Value = 'Precio4' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QProductosValorEMp.Value+((QProductosValorEMp.Value*QProductosPRO_BENEFICIO4.Value)/100))]))
        else
          QProductosPRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTOEMPAQUE.Value+((QProductosPRO_COSTOEMPAQUE.Value*QProductosPRO_BENEFICIO4.Value)/100))]));
      end;
    end;

    //Precio al x Mayor
    //Unidad
    //Precio1
    if QProductosPRO_BENEFICIO.Value <> 0 then
    begin
      if dm.QParametrospar_preciound_m.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO.Value)/100))]))
        else
          QProductosPRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO.Value)/100))]));
      end
      else if dm.QParametrospar_preciound_m.Value = 'Precio1' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO.Value)/100))]))
        else
          QProductosPRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO.Value)/100))]));
      end;
    end;

    //Precio2
    if QProductosPRO_BENEFICIO2.Value <> 0 then
    begin
      if dm.QParametrospar_preciound_m.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO2.Value)/100))]))
        else
          QProductosPRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO2.Value)/100))]));
      end
      else if dm.QParametrospar_preciound_m.Value = 'Precio2' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO2.Value)/100))]))
        else
          QProductosPRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO2.Value)/100))]));
      end;
    end;

    //Precio3
    if QProductosPRO_BENEFICIO3.Value > 0 then
    begin
      if dm.QParametrospar_preciound_m.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO3.Value)/100))]))
        else
          QProductosPRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO3.Value)/100))]));
      end
      else if dm.QParametrospar_preciound_m.Value = 'Precio3' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO3.Value)/100))]))
        else
          QProductosPRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO3.Value)/100))]));
      end;
    end;

    //Precio4
    if QProductosPRO_BENEFICIO4.Value > 0 then
    begin
      if dm.QParametrospar_preciound_m.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO4.Value)/100))]))
        else
          QProductosPRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO4.Value)/100))]));
      end
      else if dm.QParametrospar_preciound_m.Value = 'Precio4' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO4.Value)/100))]))
        else
          QProductosPRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO4.Value)/100))]));
      end;
    end;

    //Empaque
    //Precio1
    if QProductosPRO_BENEFICIO.Value <> 0 then
    begin
      if dm.QParametrospar_precioemp_m.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO.Value)/100))]))
        else
          QProductosPRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO.Value)/100))]));
      end
      else if dm.QParametrospar_precioemp_m.Value = 'Precio1' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QProductosValorEmp.Value+((QProductosValorEmp.Value*QProductosPRO_BENEFICIO.Value)/100))]))
        else
          QProductosPRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTOEMPAQUE.Value+((QProductosPRO_COSTOEMPAQUE.Value*QProductosPRO_BENEFICIO.Value)/100))]));
      end;
    end;

    //Precio2
    if QProductosPRO_BENEFICIO2.Value <> 0 then
    begin
      if dm.QParametrospar_precioemp_m.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO2.Value)/100))]))
        else
          QProductosPRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO2.Value)/100))]));
      end
      else if dm.QParametrospar_precioemp_m.Value = 'Precio2' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QProductosValorEmp.Value+((QProductosValorEmp.Value*QProductosPRO_BENEFICIO2.Value)/100))]))
        else
          QProductosPRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTOEMPAQUE.Value+((QProductosPRO_COSTOEMPAQUE.Value*QProductosPRO_BENEFICIO2.Value)/100))]));
      end;
    end;

    //Precio3
    if QProductosPRO_BENEFICIO3.Value <> 0 then
    begin
      if dm.QParametrospar_precioemp_m.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO3.Value)/100))]))
        else
          QProductosPRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO3.Value)/100))]));
      end
      else if dm.QParametrospar_precioemp_m.Value = 'Precio3' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QProductosValorEmp.Value+((QProductosValorEmp.Value*QProductosPRO_BENEFICIO3.Value)/100))]))
        else
          QProductosPRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTOEMPAQUE.Value+((QProductosPRO_COSTOEMPAQUE.Value*QProductosPRO_BENEFICIO3.Value)/100))]));
      end;
    end;

    //Precio4
    if QProductosPRO_BENEFICIO4.Value <> 0 then
    begin
      if dm.QParametrospar_precioemp_m.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO4.Value)/100))]))
        else
          QProductosPRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO4.Value)/100))]));
      end
      else if dm.QParametrospar_precioemp_m.Value = 'Precio4' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QProductosValorEmp.Value+((QProductosValorEmp.Value*QProductosPRO_BENEFICIO4.Value)/100))]))
        else
          QProductosPRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTOEMPAQUE.Value+((QProductosPRO_COSTOEMPAQUE.Value*QProductosPRO_BENEFICIO4.Value)/100))]));
      end;
    end;
  end
  else //Si no tiene cantidad por empaque
  begin
    if (QProductosPRO_COSTOEMPAQUE.Value = 0) or (QProductosPRO_COSTOEMPAQUE.IsNull) then
    begin
      if dm.QParametrospar_itbisincluido.Value = 'True' then
      begin
        if QProductosPRO_BENEFICIO.Value > 0 then
          QProductosPRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO.Value)/100))]));

        if QProductosPRO_BENEFICIO2.Value > 0 then
          QProductosPRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO2.Value)/100))]));

        if QProductosPRO_BENEFICIO3.Value > 0 then
          QProductosPRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO3.Value)/100))]));

        if QProductosPRO_BENEFICIO4.Value > 0 then
          QProductosPRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO4.Value)/100))]));
      end
      else
      begin
        if QProductosPRO_BENEFICIO.Value > 0 then
          QProductosPRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO.Value)/100))]));

        if QProductosPRO_BENEFICIO2.Value > 0 then
          QProductosPRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO2.Value)/100))]));

        if QProductosPRO_BENEFICIO3.Value > 0 then
          QProductosPRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO3.Value)/100))]));

        if QProductosPRO_BENEFICIO4.Value > 0 then
          QProductosPRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO4.Value)/100))]));
      end;
    end;
  end;

  //Redondeo
  if dm.QParametrospar_redondeo.Value = 'True' then
  begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select par_desde, par_hasta, par_valor, par_sumar from redondeo_precios where emp_codigo = :emp');
    Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    Query1.Open;
    Query1.First;
    while not Query1.Eof do
    begin
      //Precio1
      if (Frac(StrToFloat(Format('%10.2F',[QProductosPRO_PRECIO1.Value]))) >= StrToFloat(Format('%10.2F',[Query1.FieldByName('par_desde').AsFloat]))) and
      (Frac(StrToFloat(Format('%10.2F',[QProductosPRO_PRECIO1.Value]))) <= StrToFloat(Format('%10.2F',[Query1.FieldByName('par_hasta').AsFloat]))) then
      begin
        if UpperCase(Query1.FieldByName('par_sumar').Value) <> 'S' then
        begin
          nEntero := Copy(FloatToStr(QProductosPRO_PRECIO1.Value), 1,
                     Pos('.',FloatToStr(QProductosPRO_PRECIO1.Value))-1);
          nValor  := nEntero+Copy(Query1.FieldByName('par_valor').AsString,pos('.',Query1.FieldByName('par_valor').AsString),3);
        end
        else
        begin
          nEntero := Copy(FloatToStr(QProductosPRO_PRECIO1.Value), 1,
                     Pos('.',FloatToStr(QProductosPRO_PRECIO1.Value))-1);
          nValor  := (FloatToStr((strtofloat(nEntero)+Query1.FieldByName('par_valor').AsFloat)))+'.00';
        end;
        QProductosPRO_PRECIO1.Value := StrToFloat(nValor)
      end;

      //Precio2
      if (Frac(StrToFloat(Format('%10.2F',[QProductosPRO_PRECIO2.Value]))) >= StrToFloat(Format('%10.2F',[Query1.FieldByName('par_desde').AsFloat]))) and
      (Frac(StrToFloat(Format('%10.2F',[QProductosPRO_PRECIO2.Value]))) <= StrToFloat(Format('%10.2F',[Query1.FieldByName('par_hasta').AsFloat]))) then
      begin
        if UpperCase(Query1.FieldByName('par_sumar').Value) <> 'S' then
        begin
          nEntero := Copy(FloatToStr(QProductosPRO_PRECIO2.Value), 1,
                     Pos('.',FloatToStr(QProductosPRO_PRECIO2.Value))-1);
          nValor  := nEntero+Copy(Query1.FieldByName('par_valor').AsString,pos('.',Query1.FieldByName('par_valor').AsString),3);
        end
        else
        begin
          nEntero := Copy(FloatToStr(QProductosPRO_PRECIO2.Value), 1,
                     Pos('.',FloatToStr(QProductosPRO_PRECIO2.Value))-1);
          nValor  := (FloatToStr((strtofloat(nEntero)+Query1.FieldByName('par_valor').AsFloat)))+'.00';
        end;
        QProductosPRO_PRECIO2.Value := StrToFloat(nValor)
      end;

      //Precio3
      if (Frac(StrToFloat(Format('%10.2F',[QProductosPRO_PRECIO3.Value]))) >= StrToFloat(Format('%10.2F',[Query1.FieldByName('par_desde').AsFloat]))) and
      (Frac(StrToFloat(Format('%10.2F',[QProductosPRO_PRECIO3.Value]))) <= StrToFloat(Format('%10.2F',[Query1.FieldByName('par_hasta').AsFloat]))) then
      begin
        if UpperCase(Query1.FieldByName('par_sumar').Value) <> 'S' then
        begin
          nEntero := Copy(FloatToStr(QProductosPRO_PRECIO3.Value), 1,
                     Pos('.',FloatToStr(QProductosPRO_PRECIO3.Value))-1);
          nValor  := nEntero+Copy(Query1.FieldByName('par_valor').AsString,pos('.',Query1.FieldByName('par_valor').AsString),3);
        end
        else
        begin
          nEntero := Copy(FloatToStr(QProductosPRO_PRECIO3.Value), 1,
                     Pos('.',FloatToStr(QProductosPRO_PRECIO3.Value))-1);
          nValor  := (FloatToStr((strtofloat(nEntero)+Query1.FieldByName('par_valor').AsFloat)))+'.00';
        end;
        QProductosPRO_PRECIO3.Value := StrToFloat(nValor)
      end;

      //Precio4
      if (Frac(StrToFloat(Format('%10.2F',[QProductosPRO_PRECIO4.Value]))) >= StrToFloat(Format('%10.2F',[Query1.FieldByName('par_desde').AsFloat]))) and
      (Frac(StrToFloat(Format('%10.2F',[QProductosPRO_PRECIO4.Value]))) <= StrToFloat(Format('%10.2F',[Query1.FieldByName('par_hasta').AsFloat]))) then
      begin
        if UpperCase(Query1.FieldByName('par_sumar').Value) <> 'S' then
        begin
          nEntero := Copy(FloatToStr(QProductosPRO_PRECIO4.Value), 1,
                     Pos('.',FloatToStr(QProductosPRO_PRECIO4.Value))-1);
          nValor  := nEntero+Copy(Query1.FieldByName('par_valor').AsString,pos('.',Query1.FieldByName('par_valor').AsString),3);
        end
        else
        begin
          nEntero := Copy(FloatToStr(QProductosPRO_PRECIO4.Value), 1,
                     Pos('.',FloatToStr(QProductosPRO_PRECIO4.Value))-1);
          nValor  := (FloatToStr((strtofloat(nEntero)+Query1.FieldByName('par_valor').AsFloat)))+'.00';
        end;
        QProductosPRO_PRECIO4.Value := StrToFloat(nValor)
      end;

      Query1.Next;
    end;
  end;
end;

procedure TfrmDigitacionAbierta.QProductosCalcFields(DataSet: TDataSet);
begin
  if QProductosPRO_ITBIS.Value = 'S' then
  begin
    QProductosCalcCosto.Value    := (QProductosPRO_COSTO.Value * QProductospro_montoitbis.Value)/100;
  end
  else
  begin
    QProductosCalcCosto.Value    := 0;
  end;
  QProductosValor.value    := QProductosCalcCosto.Value + QProductosPRO_COSTO.Value;
end;

procedure TfrmDigitacionAbierta.QProductosPRO_BENEFICIOChange(
  Sender: TField);
begin
  precios;
end;

procedure TfrmDigitacionAbierta.QProductosPRO_BENEFICIO2Change(
  Sender: TField);
begin
  precios;
end;

procedure TfrmDigitacionAbierta.QProductosPRO_BENEFICIO3Change(
  Sender: TField);
begin
  precios;
end;

procedure TfrmDigitacionAbierta.QProductosPRO_BENEFICIO4Change(
  Sender: TField);
begin
  precios;
end;

procedure TfrmDigitacionAbierta.QProductospro_costoChange(Sender: TField);
begin
  precios;
end;

procedure TfrmDigitacionAbierta.btbuscarClick(Sender: TObject);
begin
  SpeedButton1Click(Self);
end;

end.
