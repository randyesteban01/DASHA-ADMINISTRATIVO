unit PVENTA237;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DBCtrls, StdCtrls, Buttons, ExtCtrls, ComCtrls,
  DB, ADODB, frxClass, frxDBSet;

type
  TfrmConsTicketTransp = class(TForm)
    Panel1: TPanel;
    Label6: TLabel;
    Label4: TLabel;
    SpeedButton2: TSpeedButton;
    Label7: TLabel;
    SpeedButton3: TSpeedButton;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    rgTipo: TRadioGroup;
    cborden: TComboBox;
    edProd: TEdit;
    tProd: TEdit;
    edCliente: TEdit;
    tCliente: TEdit;
    Panel2: TPanel;
    lbcant: TLabel;
    btRefresh: TBitBtn;
    btClose: TBitBtn;
    btnListado: TBitBtn;
    DBGrid1: TDBGrid;
    Label12: TLabel;
    btVendedor: TSpeedButton;
    tVendedor: TEdit;
    edtVendedor: TEdit;
    lblFicha: TLabel;
    edtFicha: TEdit;
    btnFicha: TSpeedButton;
    edtFichaN: TEdit;
    Rpt_Liq_Ticket: TfrxReport;
    DB_Liq_Ticket: TfrxDBDataset;
    qLiqTicket: TADOQuery;
    qLiqTicketVENDEDOR: TStringField;
    qLiqTicketTOTAL: TCurrencyField;
    qLiqTicketTOTAL_LET: TStringField;
    qLiqTicketCODIGO: TStringField;
    qLiqTicketPRODUCTO: TStringField;
    qLiqTicketCANTIDAD: TCurrencyField;
    qLiqTicketPRECIO: TCurrencyField;
    qLiqTicketIMPORTE: TCurrencyField;
    qLiqTicketFECHA: TDateField;
    qLiqTicketNUM: TIntegerField;
    qLiqTicketFICHA: TStringField;
    btnImprimir: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsTicketTransp: TfrmConsTicketTransp;

implementation

{$R *.dfm}

end.
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   