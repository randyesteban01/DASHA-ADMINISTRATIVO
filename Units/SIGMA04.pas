unit SIGMA04;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfrmSeleccionConexion = class(TForm)
    Label1: TLabel;
    cbConexion: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbConexionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    acepto : integer;
  end;

var
  frmSeleccionConexion: TfrmSeleccionConexion;

implementation

uses SIGMA00, SIGMA01;

{$R *.dfm}

procedure TfrmSeleccionConexion.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssAlt in Shift) and (key = vk_f4) then abort;
end;

procedure TfrmSeleccionConexion.BitBtn1Click(Sender: TObject);
begin
  acepto := 1;
  Close;
end;

procedure TfrmSeleccionConexion.BitBtn2Click(Sender: TObject);
begin
  acepto := 0;
  Close;
end;

procedure TfrmSeleccionConexion.FormCreate(Sender: TObject);
var
  ar : textfile;
  db : string;
begin
  assignfile(ar, ExtractFilePath(Application.ExeName)+'dashasql.ini');
  reset(ar);
  while not EOF(ar) do
  begin
    readln(ar, db);
    cbConexion.Items.Add(db);
  end;
  closefile(ar);
  cbConexion.ItemIndex := 0;
end;

procedure TfrmSeleccionConexion.cbConexionKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  IF Key = VK_RETURN THEN
  BitBtn1Click(Sender);
end;

end.
