unit uEnvios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, DB, ADODB;

type
  TfrmEnvio = class(TForm)
    Label4: TLabel;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label5: TLabel;
    edoNombre: TEdit;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    eddNombre: TEdit;
    GroupBox3: TGroupBox;
    edDescripcion: TEdit;
    btClose: TBitBtn;
    edoTelefono: TMaskEdit;
    eddTelefono: TMaskEdit;
    Label8: TLabel;
    DBLookupComb_env_suc_destino: TDBLookupComboBox;
    SucursalDestino: TDBLookupComboBox;
    Label9: TLabel;
    cbbConceptos: TComboBox;
    chkPagoDestino: TCheckBox;
    dsSucOrigen: TDataSource;
    QSucOrigen: TADOQuery;
    QSucOrigensuc_codigo: TIntegerField;
    QSucOrigensuc_nombre: TStringField;
    QSucOrigenalm_codigo: TIntegerField;
    QSucOrigenemp_codigo: TIntegerField;
    QSucOrigensuc_direccion: TStringField;
    QSucOrigensuc_localidad: TStringField;
    QSucOrigensuc_telefono: TStringField;
    QSucOrigensuc_rnc: TStringField;
    dsSucDestino: TDataSource;
    qSucDestino: TADOQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    Label24: TLabel;
    Label1: TLabel;
    edCantidad: TEdit;
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edoTelefonoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eddTelefonoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eddNombreExit(Sender: TObject);
    procedure cbbConceptosExit(Sender: TObject);
    procedure edDescripcionExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QSucOrigenBeforeOpen(DataSet: TDataSet);
    procedure qSucDestinoBeforeOpen(DataSet: TDataSet);
    procedure edCantidadKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public

    { Public d1eclarations }
      procedure fillDatos(var dCantidad:String;var oCiudad:String;var oNombre:String; var oTelefono:String;
      										    var dCiudad:String;var dNombre:String; var dTelefono:String;
                              var dDescripcion:String;var dDescripcion2:String;
                              var dPagarDestino:Boolean;accion:boolean =false );
  end;


var
  frmEnvio: TfrmEnvio;

implementation

uses SIGMA01,PVENTA18;

{$R *.dfm}

procedure TfrmEnvio.btCloseClick(Sender: TObject);
begin
  CLOSE();
end;

procedure TfrmEnvio.fillDatos(var dCantidad:String;var oCiudad:String;var oNombre:String; var oTelefono:String;
      										    var dCiudad:String;var dNombre:String; var dTelefono:String;
                              var dDescripcion:String;var dDescripcion2:String;
                              var dPagarDestino:Boolean;accion:boolean =false);
begin

  if (accion  = true)  then
    begin
      //edoCiudad.Text := oCiudad;
  		edoNombre.Text := oNombre ;
  		edoTelefono.Text := oTelefono;
  		//eddCiudad.Text:=dCiudad ;
  		eddNombre.Text:=dNombre;
  		eddTelefono.Text := dTelefono;
  		cbbConceptos.Text := dDescripcion;
      edDescripcion.Text := dDescripcion2;
      chkPagoDestino.Checked := dPagarDestino;
      edCantidad.Text :=  dCantidad;
    end
  else
    begin
  	 //	oCiudad:= edoCiudad.Text;
  		oNombre:= edoNombre.Text;
  		oTelefono:= edoTelefono.Text;
  		//dCiudad:= eddCiudad.Text;
  		dNombre:=eddNombre.Text;
  		dTelefono:=eddTelefono.Text;
  		cbbConceptos.Text := dDescripcion;
      edDescripcion.Text := dDescripcion2;
      chkPagoDestino.Checked := dPagarDestino;
      edCantidad.Text :=  dCantidad;
  end;
end;

procedure TfrmEnvio.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmEnvio.edoTelefonoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if length(trim(edoTelefono.Text)) > 0 then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select Nombre_envia, Ciudad_Origen from envio');
      dm.Query1.SQL.Add('where Telefono_Envia = :tel');
      dm.Query1.Parameters.ParamByName('tel').Value := trim(edoTelefono.Text);
      dm.Query1.Open;
      edoNombre.Text := dm.Query1.FieldByName('Nombre_envia').AsString;
      //edoCiudad.Text := dm.Query1.FieldByName('Ciudad_Origen').AsString;
    end;
  end;
end;

procedure TfrmEnvio.eddTelefonoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if length(trim(eddTelefono.Text)) > 0 then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select Nombre_Recibe, Ciudad_Destino from envio');
      dm.Query1.SQL.Add('where Telefono_Recibe = :tel');
      dm.Query1.Parameters.ParamByName('tel').Value := trim(eddTelefono.Text);
      dm.Query1.Open;
      eddNombre.Text := dm.Query1.FieldByName('Nombre_Recibe').AsString;
      //eddCiudad.Text := dm.Query1.FieldByName('Ciudad_Destino').AsString;
    end;
  end;
end;

procedure TfrmEnvio.eddNombreExit(Sender: TObject);
begin
cbbConceptos.SetFocus;
end;

procedure TfrmEnvio.cbbConceptosExit(Sender: TObject);
begin
edDescripcion.SetFocus;
end;

procedure TfrmEnvio.edDescripcionExit(Sender: TObject);
begin
btCloseClick(Sender);
end;

procedure TfrmEnvio.FormShow(Sender: TObject);
begin

QSucOrigen.Close;
QSucOrigen.Parameters[0].Value := frmFactura.QFacturaEMP_CODIGO.Value;
QSucOrigen.Parameters[1].Value := frmFactura.QFacturaUSU_CODIGO.Value;
QSucOrigen.Parameters[2].Value := frmFactura.QFacturaSUC_CODIGO.Value;
QSucOrigen.Open;
if (not QSucOrigen.IsEmpty) then
begin
  QSucOrigen.First;
  SucursalDestino.KeyValue:=QSucOrigen.Fields[0].Value;
end;


QSucOrigen.Close;
QSucOrigen.Parameters[0].Value := frmFactura.QFacturaEMP_CODIGO.Value;
QSucOrigen.Parameters[1].Value := frmFactura.QFacturaUSU_CODIGO.Value;
QSucOrigen.Parameters[2].Value := frmFactura.QFacturaSUC_CODIGO.Value;
QSucOrigen.Open;


qSucDestino.Close;
qSucDestino.Open;
end;

procedure TfrmEnvio.QSucOrigenBeforeOpen(DataSet: TDataSet);
begin
{QSucOrigen.Parameters[0].Value := frmFactura.QFacturaEMP_CODIGO.Value;
QSucOrigen.Parameters[1].Value := frmFactura.QFacturaUSU_CODIGO.Value;
QSucOrigen.Parameters[2].Value := frmFactura.QFacturaSUC_CODIGO.Value;  }
end;

procedure TfrmEnvio.qSucDestinoBeforeOpen(DataSet: TDataSet);
begin
qSucDestino.Parameters[0].Value := frmFactura.QFacturaEMP_CODIGO.Value;
//qSucDestino.Parameters[1].Value := frmFactura.QFacturaUSU_CODIGO.Value;

end;

procedure TfrmEnvio.edCantidadKeyPress(Sender: TObject; var Key: Char);
begin
 if not (Key in ['0'..'9', #8]) then  // Acepta solo números y la tecla de retroceso (Backspace)
    Key := #0;  // Anula cualquier otro carácter
end;

end.
