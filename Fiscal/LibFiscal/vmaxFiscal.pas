unit vmaxFiscal;
(*--------------------------------------------------------------------------------
 * Funcion : Esa libreria tiene como meta, Conecta impresora Fiscal Citizen      *
 * Desarrollada por : Manuel Titin												 *
 * A�o : 2017																	 *
 *-------------------------------------------------------------------------------*	
 *)
interface
    uses SysUtils,Math;
    //------------------[ VMAX ]--------------------------------------------------
   type
    TReturns = array[0..100] of Char;

  const
    IDLE = 2;
    SUCCESS = 0;  //Operaci�n efectuada exitosamente.
    PORT_ALREADY_OPEN = 1;  //Puerto serial abierto.
    PORT_IN_USE = 2; //Puerto Serial en uso por otra aplicaci�n. o no existe
    PORT_NOT_OPEN =3;
    INVALID_COM   = 4; //(0x0004) Puerto Serial utilizado en la apertura inv�lido o inexistente.
    INVALID_BAUD_RATE = 5; // (0x0005) Velocidad del Puerto Serial inv�lido o no soportada.
    PRINTER_OFF_OR_DISCONNECTED = 8;  ///Impresora desconectada o fuera de l�nea.
var
  sBuffer: TReturns;
  lFieldLen: LongWord;
  sCommand: String;
  sCommandEx: String;
  stringValue : string;
  floatValue  : Extended;
  
  function OpenSerialPort (iSerialPort: Integer; lBaudRate: LongWord ): LongWord; StdCall ; External 'vmaxfpi.dll';
  function CloseSerialPort (): LongWord; StdCall ; External 'vmaxfpi.dll';
  function GetApiVersion (szVersion: String): LongWord; StdCall ; External 'vmaxfpi.dll';
  function AddMessageField (szField: String; lFieldLength: LongWord	): LongWord; StdCall ; External 'vmaxfpi.dll';
  Procedure PurgeMessage (); External 'vmaxfpi.dll';
  function GetCommunicationState (): LongWord; StdCall ; External 'vmaxfpi.dll';
  function GetLastCommError (): LongWord; StdCall ; External 'vmaxfpi.dll';
  function GetFieldCounter(): LongWord; StdCall ; External 'vmaxfpi.dll';
  function SendSerialMessage (): LongWord; StdCall ; External 'vmaxfpi.dll';
  function GetMessageField (var szField: TReturns; var lFieldLength: LongWord; lAnswerField: LongWord	): LongWord; StdCall ; External 'vmaxfpi.dll';
 // function ObtenerEstado():LongWord; StdCall ; External 'vmaxfpi.dll';


 
  type

    TDocumento_no_fiscal = class
      private
        function AbrirDocnoFiscal():LongWord ;
      public

    end;

    TvmaxFiscal = class
      private
    { Private declarations }
        FlRet: LongWord;
        sPagoPendiente:Double;
        sDevolucion:Double;
        sSubTotal:Double;
    FAbrirDocnoFiscal: TDocumento_no_fiscal;

      public

    function getDevolucion: Double;
    function getPagoPendiente: Double;
    procedure SetAbrirDocnoFiscal(const Value: TDocumento_no_fiscal);
    //procedure SetAbrirDocnoFiscal(const Value: TDocumento_no_fiscal);

        //property AbrirDocnoFiscal : TDocumento_no_fiscal read FAbrirDocnoFiscal write SetAbrirDocnoFiscal;
        function OpenPort(iPort: Integer = 1; iBaudRate: LongWord = 9600): LongWord ;
        function ClosePort():LongWord ;

        function AbrirCF(iCopia:Byte; iTipo: LongWord; iLogo: Integer ;
                         sSucursal,sCaja, sNcf, sRazonSocial, sRnc,
                         sNcfRef: String): LongWord;
        function AbrirNoFiscal(iCopia:Byte; iTipo: LongWord; iLogo: Integer ;
                         sSucursal,sCaja, sRazonSocial, sRnc: String): LongWord;

        function ItemCF(iTipo: LongWord;
                        sDescripcion1: String; sDescripcion2: String;
                        sDescripcion3: String;sDescripcion4: String;
                        sDescripcion5: String;sDescripcion6: String;
                        sDescripcion7: String;sDescripcion8: String;
                        sDescripcion9: String;
                        sDescripcion: String;
                        lCantidad: Double;
                        lPrecio: Double; iTasa: Double) : LongWord;
        function DescRecGlobal(iTipo :Integer; sDescripcion :String;
                               lMonto :Double) : LongWord;
        function getSubtotalCF(): LongWord;
        function PagoCF(iTipo :Integer;iForma :Byte; lMonto :Double;
                        sDescripcion1 : String ='';sDescripcion2 : String = '';
                        sDescripcion3 : String = ''): LongWord;
        function CerrarCF(): LongWord;
        function CerrarNoFiscal(): LongWord;
        function CancelarCF():LongWord;
        function AbrirCajonDinero (icaja:Byte = 0): LongWord;
        Function LineaComentario(lineaComen : String): LongWord;
        function AvanzarPapel(cnt:Integer):LongWord;
        function CortaPapel():LongWord;
        function ObtenerEstado():String;
        function Resert():String;
        function ReporteX():LongWord;
        function ReporteZ():LongWord;
        function ObtenerInformacionPago():LongWord;
        property PagoPendiente:Double read getPagoPendiente;
        property Devolucion:Double read getDevolucion;
        property SubTotal :Double read sSubTotal;

        constructor Create;
      end;

   
implementation


//--------------------[Funciones Extena ]--------------------------------------
function FillValue(Value:String; myLen:SmallInt = 10):String ;
const
    sCero = '000000000000000000000000000000';
begin
    Result :=Copy(sCero,1,(myLen - Length(Trim(Value))))+Value;
end;


function StringToHex(S: String): String;
var I: Integer;
begin
  Result:= '';
  for I := 1 to length (S) do
    Result:= Result+IntToHex(ord(S[i]),2);
end;

function HexToString(H: String): String;
var I: Integer;
begin
  Result:= '';
  for I := 1 to length (H) div 2 do
    Result:= Result+Char(StrToInt('$'+Copy(H,(I-1)*2+1,2)));
end;

function BaseNADec(num : string; n : byte) : integer;
var
i : integer;
aux : string;
begin
        // Solo hasta la 'o' = como m�ximo base 20
        aux:='0123456789ABCDEFGHIO';
        result:=0;
        for i:=1 to length(num) do
          result:=result*n+pos(upcase(num[i]),aux)-1;
end;

// De base 16 (hexadecimal) a base 10 (decimal)
function HexToDec(num : string) : integer;
begin
        result:=BaseNADec(num,16);
end;

// De base 2 (binario) a base 10 (decimal)
function BinToDec(num : string) : integer;
begin
        result:=BaseNADec(num,2);
end;

// De base 8 (octal) a base 10 (decimal)
function OctToDec(num : string) : integer;
begin
        result:=BaseNADec(num,8);
end;
var
 lRet: LongWord;
   gString0,gString1,gString2,gString3:WideString;
  //sBuffer: TReturns;
//  lFieldLen: LongWord;

function extraerDecimal(Value:Double):String ;
var
  temp:String;
begin
   temp:=FormatFloat('0.00',Value);
   delete (temp, length(temp)-2, 1);
   result := temp;
end;



//--------------------[Funciones Extena ]--------------------------------------
{ TvmaxFiscal }


function TvmaxFiscal.ClosePort: LongWord;
begin
  FlRet:= CloseSerialPort();
  if FlRet = 0 Then
    result := SUCCESS
  else
    result := FlRet;
end;

function TvmaxFiscal.AbrirCajonDinero(icaja: Byte): LongWord;
var
  lRet: LongWord;
  sBuffer: String;
  sCommand: String;
  sCommandEx: String;
  Temp: Integer;
begin
  PurgeMessage();
  sCommand := Chr(07) + Chr(07);
  sCommandEx := Chr(0) + Chr(0);

  AddMessageField(sCommand, 2);                             //Comando
  AddMessageField(sCommandEx, 2);                           //Extensi�n de comando

  SendSerialMessage();

  Repeat
    lRet := GetCommunicationState();
  Until lRet <> IDLE;

  lRet:= GetLastCommError();

  Result:= lRet;
end;

function TvmaxFiscal.AbrirCF(iCopia:Byte; iTipo: LongWord; iLogo: Integer ;
                             sSucursal,sCaja, sNcf, sRazonSocial, sRnc,
                             sNcfRef: String): LongWord;
var
    lRet: LongWord;
    sBuffer: String;
    sCommand: String;
    sCommandEx: String;
    lTipo:LongWord;
begin


    iTipo := iTipo + (iCopia *  64);

    sCommand := Chr(10) + Chr(1);
    sCommandEx := Chr(0)+ Chr(iTipo);
    PurgeMessage();
    AddMessageField(sCommand, 2);                         //Comando
    AddMessageField(sCommandEx, 2);                       //Extensi�n de comando

    AddMessageField(FillValue(IntToStr(iLogo),2), 2);     //Campo 1: Numero de Logo
    AddMessageField(sBuffer, 0);                             //Campo 2: Reservado

    sSucursal := FillValue(sSucursal,4);
    AddMessageField(sSucursal, 4) ;          //Campo 3: Sucursal

    sCaja := FillValue(sCaja,4);
    AddMessageField(sCaja, Length(sCaja)) ;                   //Campo 4: Caja
    AddMessageField(sNcf, Length(sNcf)) ;                    //Campo 5: Ncf
    AddMessageField(sRazonSocial, Length(sRazonSocial)) ;    //Campo 6: Razon Social
   // if trim(sRnc) = '' then
   ///   sRnc := '         ';
    AddMessageField(sRnc, Length(sRnc));                     //Campo 7: Rnc
    AddMessageField(sNcfRef, Length(sNcfRef)) ;              //Campo 8: Ncf Referencia

    SendSerialMessage();
     //si el puerto esta cerrado devuelve un 3 mt
     //Espera que procese los comandos..
    Repeat
      lRet := GetCommunicationState();
    Until lRet <> IDLE;

    lRet:= GetLastCommError();

    Result:= lRet;

end;

function TvmaxFiscal.CerrarCF: LongWord;
var
    lRet: LongWord;
    sCommand: String;
    sCommandEx: String;
begin

    PurgeMessage();

    sCommand := Chr(10) + Chr(6);
    sCommandEx := Chr(0) + Chr(1);

    AddMessageField(sCommand, 2);                         //Comando
    AddMessageField(sCommandEx, 2) ;                      //Extensi�n de comando

    AddMessageField('1', 1);                              //Campo 1: Numero de linea de reemplazo 1
    AddMessageField('', 0);                               //Campo 2: Descripcion de reemplazo 1
    AddMessageField('2', 1);                              //Campo 3: Numero de linea de reemplazo 2
    AddMessageField('', 0);                               //Campo 4: Descripciom de reemplazo 2
    AddMessageField('3', 1) ;                             //Campo 5: Numero de linea de reemplazo 3
    AddMessageField('', 0);                               //Campo 6: Descripcion de reemplazo 3

    SendSerialMessage();

    Repeat
      lRet := GetCommunicationState();
    Until lRet <> IDLE;

    lRet := GetLastCommError();

    Result:= lRet;
End;

function TvmaxFiscal.DescRecGlobal(iTipo: Integer; sDescripcion: String;
  lMonto: Double): LongWord;

var
   montoSubtotal:String;
   sMonto:String;
begin

 // FlRet := getSubtotalCF();
  //if FlRet = SUCCESS then begin
    sMonto :=  extraerDecimal(lMonto);

    PurgeMessage();
    sCommand := Chr(10) + Chr(4);
    sCommandEx := Chr(0) + Chr(iTipo);

    AddMessageField(sCommand, 2);                         //Comando
    AddMessageField(sCommandEx, 2) ;                      //Extensi�n de comando
    AddMessageField(sDescripcion, Length(sDescripcion)) ;
    AddMessageField(sMonto, Length(sMonto)) ;

    SendSerialMessage();


    repeat
      FlRet := GetCommunicationState();
    Until FlRet <> IDLE;

    FlRet := GetLastCommError();

    if FlRet = 0 then
    begin
      lFieldLen := Length(sBuffer);
      FlRet := GetMessageField(sBuffer, lFieldLen, 5);
      SetString(montoSubtotal, PChar(@sBuffer[0]), lFieldLen);
//    end;
  end;
  Result:= FlRet;

End;

function TvmaxFiscal.getSubtotalCF: LongWord;
var
    lRet: LongWord;
    sCommand: String;
    sCommandEx: String;
    lFieldLen: LongWord;
    sBuffer: TReturns;
    montoSubtotal:String;

Begin
    PurgeMessage();

    sCommand := Chr(10) + Chr(3);
    sCommandEx := Chr(0) + Chr(0);

    AddMessageField(sCommand, 2);                         //Comando
    AddMessageField(sCommandEx, 2) ;                      //Extensi�n de comando

    SendSerialMessage();

    repeat
      lRet := GetCommunicationState();
    Until lRet <> IDLE;
                        
    lRet := GetLastCommError();
    sSubTotal:=0;
    if lRet = 0 then
    begin
      lRet := GetMessageField(sBuffer, lFieldLen, 5);
      if lRet = 0 then
      begin
        SetString(montoSubtotal, PChar(@sBuffer[0]), lFieldLen);
        sSubTotal:=StrToFloat(montoSubtotal);
        if sSubTotal > 0 then
          sSubTotal:=sSubTotal/100;
      end;
    end;

    Result:= lRet;

End;


function TvmaxFiscal.ItemCF(iTipo: LongWord; sDescripcion1,sDescripcion2,
               sDescripcion3, sDescripcion4, sDescripcion5,sDescripcion6,
               sDescripcion7, sDescripcion8, sDescripcion9,sDescripcion: String;
               lCantidad, lPrecio: Double; iTasa: Double): LongWord;
var

    sCommand: String;
    sCommandEx: String;
    sCantidad, sPrecio: String; sTasa: String;
begin
   
   sCantidad:= extraerDecimal(lCantidad);
   sPrecio:= extraerDecimal(lPrecio);
   sTasa :=  extraerDecimal(iTasa);

    PurgeMessage();

    sCommand := Chr(10) + Chr(2);
    sCommandEx := Chr(0) + Chr(iTipo);

    AddMessageField(sCommand, 2);                             //Comando
    AddMessageField(sCommandEx, 2);                           //Extensi�n de comando

    AddMessageField(sDescripcion1, Length(sDescripcion1));                                   //Campo 1: Descripcion adicional 1
    AddMessageField(sDescripcion2, Length(sDescripcion2));                                   //Campo 2: Descripcion adicional 2
    AddMessageField(sDescripcion3, Length(sDescripcion3));                                  //Campo 3: Descripcion adicional 3
    AddMessageField(sDescripcion4, Length(sDescripcion4));                                   //Campo 4: Descripcion adicional 4
    AddMessageField(sDescripcion5, Length(sDescripcion5));                                   //Campo 5: Descripcion adicional 5
    AddMessageField(sDescripcion6, Length(sDescripcion6));                                   //Campo 6: Descripcion adicional 6
    AddMessageField(sDescripcion7, Length(sDescripcion7));                                   //Campo 7: Descripcion adicional 7
    AddMessageField(sDescripcion8, Length(sDescripcion8));                                   //Campo 8: Descripcion adicional 8
    AddMessageField(sDescripcion9, Length(sDescripcion9));                                   //Campo 9: Descripcion adicional 9
    AddMessageField(sDescripcion, Length(sDescripcion));         //Campo 10: Descripcion del item
    AddMessageField(sCantidad, Length(sCantidad));   //Campo 11: Cantidad
    AddMessageField(sPrecio, Length(sPrecio));       //Campo 12: Precio unitario
    AddMessageField(sTasa, Length(sTasa));           //Campo 13: Tasa de ITBIS

    SendSerialMessage();

    Repeat
        FlRet := GetCommunicationState();
    Until FlRet <> IDLE;

    FlRet:= GetLastCommError();

    Result:= FlRet;
End;

function TvmaxFiscal.ObtenerEstado: string;
var
  Status : String;
begin
   result := '';
  try
   lFieldLen :=0;
   sBuffer :='';
    Status :='';
    PurgeMessage();
    sCommand := Chr(00) + Chr(01);
    sCommandEx := Chr(0) + Chr(0);
    lret := AddMessageField(sCommand, 2);                             //Comando
    lret := AddMessageField(sCommandEx, 2);                           //Extensi�n de comando

    SendSerialMessage();

    Repeat
        lRet := GetCommunicationState();
    Until lRet <> IDLE;

    lRet:= GetLastCommError();

    if (lRet = SUCCESS) then
    begin

       //Retornos del Mecanismo de Impresi�n
       lret := GetMessageField(sBuffer, lFieldLen, 1);
       if lFieldLen > 0 Then  begin
         SetString(gString0, PChar(@sBuffer[0]), lFieldLen);
         lRet := HexToDec(StringToHex(gstring0));
         Status :=Inttostr(lRet)+'|'
       end;

       //Estado Fiscal
       lret := GetMessageField(sBuffer, lFieldLen, 2);
       if lFieldLen > 0 Then  begin
         SetString(gString0, PChar(@sBuffer[0]), lFieldLen);
         lRet := HexToDec(StringToHex(gstring0));
         Status :=Status+Inttostr(lRet)+'|'
       end;

       // Respuesta : Indica si el comando fue ejecutado exitosamente.
       lret := GetMessageField(sBuffer, lFieldLen, 3);
       if lFieldLen > 0 Then  begin
         SetString(gString0, PChar(@sBuffer[0]), lFieldLen);
         lRet := HexToDec(StringToHex(gstring0));
         Status :=Status+Inttostr(lRet)+'|'
       end;

       //CodigoRespuesta : Indica el resultado del comando.
       lret := GetMessageField(sBuffer, lFieldLen, 4);
       if lFieldLen > 0 Then  begin
         SetString(gString0, PChar(@sBuffer[0]), lFieldLen);
         lRet := HexToDec(StringToHex(gstring0));
         Status :=Status+Inttostr(lRet)+'|'
       end;
    end
    else
      Status:=InttoStr(lRet);
    result := Status;
  except
  end;
end;


function TvmaxFiscal.OpenPort(iPort: Integer = 1; iBaudRate: LongWord = 9600): LongWord;
begin
  FlRet:= OpenSerialPort(iPort, iBaudRate);

  if FlRet = 0 Then
    result := SUCCESS
  else
    result := FlRet;
end;

function TvmaxFiscal.PagoCF(iTipo :Integer;iForma :Byte; lMonto :Double;
                        sDescripcion1 : String ='';sDescripcion2 : String = '';
                        sDescripcion3 : String = ''): LongWord;
var
    lRet: LongWord;
    sCommand: String;
    sCommandEx: String;
    sMonto:String;
Begin

  sMonto :=  extraerDecimal(lMonto);
  PurgeMessage();

  sCommand := Chr(10) + Chr(5);
  sCommandEx := Chr(0) + Chr(iTipo);

  AddMessageField(sCommand, 2);                         //Comando
  AddMessageField(sCommandEx, 2);                       //Extensi�n de comando
  AddMessageField(FillValue(IntToStr(iForma),3),3);            //Campo 1: Tipo de Pago
  AddMessageField(sMonto, Length(sMonto));     //Campo 2: Monto de Pago
  AddMessageField(sDescripcion1, Length(sDescripcion1));           //Campo 3: Descripcion adicional 1
  AddMessageField(sDescripcion2, Length(sDescripcion2));           //Campo 4: Descripcion adicional 2
  AddMessageField(sDescripcion3, Length(sDescripcion3)) ;          //Campo 5: Descripcion adicional 3

  SendSerialMessage();

  Repeat
    lRet := GetCommunicationState();
  Until lRet <> IDLE;

  lRet := GetLastCommError();


  if lRet = 0 then
    begin
      lRet := GetMessageField(sBuffer, lFieldLen, 5);
      if lFieldLen > 0 Then
        begin
          SetString(stringValue, PChar(@sBuffer[0]), lFieldLen);
          if length(stringValue) > 1 then
            begin
              stringValue :=Copy('00',1,(2 - Length(Trim(stringValue))))+stringValue;
              insert('.', stringValue, length(stringValue) -1);
            end;
          sPagoPendiente:=  strToFloat(stringValue);
        end;


      lRet := GetMessageField(sBuffer, lFieldLen, 6);
      if lFieldLen > 0 Then
        begin
          SetString(stringValue, PChar(@sBuffer[0]), lFieldLen);
          if length(stringValue) > 1 then
            begin
              stringValue :=Copy('00',1,(2 - Length(Trim(stringValue))))+stringValue;
              insert('.', stringValue, length(stringValue) -1);
            end;
          sDevolucion := StrToFloat(stringValue);
        end;

    end;

  Result:= lRet;
End;

function TvmaxFiscal.Resert: String;
var
  Status : String;
begin
   result := '';
   lFieldLen :=0;
   sBuffer :='';
    Status :='';
    PurgeMessage();
    sCommand := Chr(00) + Chr(01);
    sCommandEx := Chr(0) + Chr(255);

    lret := AddMessageField(sCommand, 2);                             //Comando
    lret := AddMessageField(sCommandEx, length(sCommandEx));                           //Extensi�n de comando

    SendSerialMessage();

    Repeat
        lRet := GetCommunicationState();
    Until lRet <> IDLE;

    lRet:= GetLastCommError();

    if (lRet = SUCCESS) then
    begin
       lret := GetMessageField(sBuffer, lFieldLen, 1);
       if lFieldLen > 0 Then  begin
         SetString(gString0, PChar(@sBuffer[0]), lFieldLen);
         lRet := HexToDec(StringToHex(gstring0));
         Status :=Inttostr(lRet)+'|'
       end;
       lret := GetMessageField(sBuffer, lFieldLen, 2);
       if lFieldLen > 0 Then  begin
         SetString(gString0, PChar(@sBuffer[0]), lFieldLen);
         lRet := HexToDec(StringToHex(gstring0));
         Status :=Status+Inttostr(lRet)+'|'
       end;
       lret := GetMessageField(sBuffer, lFieldLen, 3);
       if lFieldLen > 0 Then  begin
         SetString(gString0, PChar(@sBuffer[0]), lFieldLen);
         lRet := HexToDec(StringToHex(gstring0));
         Status :=Status+Inttostr(lRet)+'|'
       end;
       lret := GetMessageField(sBuffer, lFieldLen, 4);
       if lFieldLen > 0 Then  begin
         SetString(gString0, PChar(@sBuffer[0]), lFieldLen);
         lRet := HexToDec(StringToHex(gstring0));
         Status :=Status+Inttostr(lRet)+'|'
       end;
    end
    else  Status:=InttoStr(lRet);
    result := Status;
end;

function TvmaxFiscal.CancelarCF: LongWord;
var
  Status : String;
begin
  result := 0;
  lFieldLen :=0;
  sBuffer :='';
  Status :='';
  PurgeMessage();
  sCommand := Chr(10) + Chr(07);
  sCommandEx := Chr(0) + Chr(0);

  lret := AddMessageField(sCommand, Length(sCommand));                             //Comando
  lret := AddMessageField(sCommandEx, length(sCommandEx));                           //Extensi�n de comando

  SendSerialMessage();

  Repeat
        lRet := GetCommunicationState();
  Until lRet <> IDLE;

  lRet:= GetLastCommError();

  result := lRet;

end;

function TvmaxFiscal.LineaComentario(lineaComen: String): LongWord;
var
    lRet: LongWord;
    sCommand: String;
    sCommandEx: String;

 Begin
    PurgeMessage();
    sCommand := Chr(10) + Chr(18);
    sCommandEx := Chr(0) + Chr(0);

    AddMessageField(sCommand, 2);                         //Comando
    AddMessageField(sCommandEx, 2);                       //Extensi�n de comando

    AddMessageField(lineaComen, Length(lineaComen)) ;          //Campo 5: Descripcion adicional 3

    SendSerialMessage();

    Repeat
      lRet := GetCommunicationState();
    Until lRet <> IDLE;

    lRet := GetLastCommError();

    Result:= lRet;
End;

function TvmaxFiscal.AvanzarPapel(cnt: Integer): LongWord;
var
  lRet: LongWord;
  sBuffer: String;
  sCommand: String;
  sCommandEx: String;
  Temp: Integer;
begin
  PurgeMessage();
  sCommand := Chr(07) + Chr(01);
  sCommandEx := Chr(00) + Chr(00);

  AddMessageField(sCommand, 2);                             //Comando
  AddMessageField(sCommandEx, 2);                           //Extensi�n de comando
  AddMessageField(IntToStr(cnt), length(IntToStr(cnt)));
  SendSerialMessage();

  Repeat
    lRet := GetCommunicationState();
  Until lRet <> IDLE;

  lRet:= GetLastCommError();

  Result:= lRet;
end;

function TvmaxFiscal.CortaPapel: LongWord;
var
  lRet: LongWord;
  sBuffer: String;
  sCommand: String;
  sCommandEx: String;
  Temp: Integer;
begin
  PurgeMessage();
  sCommand := Chr(07) + Chr(02);
  sCommandEx := Chr(00) + Chr(01);

  AddMessageField(sCommand, 2);                             //Comando
  AddMessageField(sCommandEx, 2);                           //Extensi�n de comando
  SendSerialMessage();

  Repeat
    lRet := GetCommunicationState();
  Until lRet <> IDLE;

  lRet:= GetLastCommError();

  Result:= lRet;
end ;


///---------------------------[Reportes]----------------------------------------
function TvmaxFiscal.ReporteX: LongWord;
var
    lRet: LongWord;
    sCommand: String;
    sCommandEx: String;
begin
    PurgeMessage();

    sCommand := Chr(8) + Chr(5);
    sCommandEx := Chr(0) + Chr(0);

    AddMessageField(sCommand, 2);                        //Comando
    AddMessageField(sCommandEx, 2);                      //Extensi�n de comando

    SendSerialMessage();

    Repeat
      lRet := GetCommunicationState();
    Until lRet <> IDLE ;

    lRet:= GetLastCommError();

    Result := lRet;

end;


function TvmaxFiscal.ReporteZ: LongWord;
var
    lRet: LongWord;
    sCommand: String;
    sCommandEx: String;
begin

  PurgeMessage();

  sCommand := Chr(8) + Chr(1);
  sCommandEx := Chr(0) + Chr(1); //el 1 es para imprimir el papel, 0 no lo imprime

  AddMessageField(sCommand, 2);                        //Comando
  AddMessageField(sCommandEx, 2);                      //Extensi�n de comando

  SendSerialMessage();

  Repeat
    lRet := GetCommunicationState();
  Until lRet <> IDLE ;

  lRet:= GetLastCommError();

  Result := lRet;

end;

constructor TvmaxFiscal.Create;
begin
  sPagoPendiente:=0;
  sDevolucion:=0;
end;

function TvmaxFiscal.getDevolucion: Double;
begin
  result :=sDevolucion; 
end;

function TvmaxFiscal.getPagoPendiente: Double;
begin
  result := sPagoPendiente;
end;

function TvmaxFiscal.ObtenerInformacionPago: LongWord;
var
  Status : String;
begin
   result :=0;
  try
   lFieldLen :=0;
   sBuffer :='';
    Status :='';
    PurgeMessage();    
    sCommand := Chr(10) + Chr(12);
    sCommandEx := Chr(0) + Chr(0);
    lret := AddMessageField(sCommand, 2);                             //Comando
    lret := AddMessageField(sCommandEx, 2);                           //Extensi�n de comando

    SendSerialMessage();

    Repeat
        lRet := GetCommunicationState();
    Until lRet <> IDLE;

    lRet:= GetLastCommError();

    if (lRet = SUCCESS) then
    begin

       lret := GetMessageField(sBuffer, lFieldLen, 5);
       if lFieldLen > 0 Then  begin
         SetString(gString0, PChar(@sBuffer[0]), lFieldLen);
         lRet := HexToDec(StringToHex(gstring0));
         Status :=Inttostr(lRet)+'|'
       end;


       lret := GetMessageField(sBuffer, lFieldLen, 2);
       if lFieldLen > 0 Then  begin
         SetString(gString0, PChar(@sBuffer[0]), lFieldLen);
         lRet := HexToDec(StringToHex(gstring0));
         Status :=Status+Inttostr(lRet)+'|'
       end;

       lret := GetMessageField(sBuffer, lFieldLen, 3);
       if lFieldLen > 0 Then  begin
         SetString(gString0, PChar(@sBuffer[0]), lFieldLen);
         lRet := HexToDec(StringToHex(gstring0));
         Status :=Status+Inttostr(lRet)+'|'
       end;

       lret := GetMessageField(sBuffer, lFieldLen, 4);
       if lFieldLen > 0 Then  begin
         SetString(gString0, PChar(@sBuffer[0]), lFieldLen);
         lRet := HexToDec(StringToHex(gstring0));
         Status :=Status+Inttostr(lRet)+'|'
       end;
    end
    else
      Status:=InttoStr(lRet);
    result :=0;
  except
  end;
end;

procedure TvmaxFiscal.SetAbrirDocnoFiscal(
  const Value: TDocumento_no_fiscal);
begin
  FAbrirDocnoFiscal := Value;
end;

function TvmaxFiscal.AbrirNoFiscal(iCopia: Byte; iTipo: LongWord;
  iLogo: Integer; sSucursal, sCaja, sRazonSocial, sRnc: String): LongWord;
var
    lRet: LongWord;
    sBuffer: String;
    sCommand: String;
    sCommandEx: String;
    lTipo:LongWord;
begin


    iTipo := iTipo + (iCopia *  64);

    sCommand := Chr(10) + Chr(1);
    sCommandEx := Chr(0)+ Chr(iTipo);
    PurgeMessage();
    AddMessageField(sCommand, 2);                         //Comando
    AddMessageField(sCommandEx, 2);                       //Extensi�n de comando

    AddMessageField(FillValue(IntToStr(iLogo),2), 2);     //Campo 1: Numero de Logo
    AddMessageField(sBuffer, 0);                             //Campo 2: Reservado

    sSucursal := FillValue(sSucursal,4);
    AddMessageField(sSucursal, 4) ;          //Campo 3: Sucursal

    sCaja := FillValue(sCaja,4);
    AddMessageField(sCaja, Length(sCaja)) ;                   //Campo 4: Caja
    AddMessageField(sRazonSocial, Length(sRazonSocial)) ;    //Campo 6: Razon Social
   // if trim(sRnc) = '' then
   ///   sRnc := '         ';
    AddMessageField(sRnc, Length(sRnc));                     //Campo 7: Rnc

    SendSerialMessage();
     //si el puerto esta cerrado devuelve un 3 mt
     //Espera que procese los comandos..
    Repeat
      lRet := GetCommunicationState();
    Until lRet <> IDLE;

    lRet:= GetLastCommError();

    Result:= lRet;

end;

function TvmaxFiscal.CerrarNoFiscal: LongWord;
var
    lRet: LongWord;
    sCommand: String;
    sCommandEx: String;
begin

    PurgeMessage();

    sCommand := Chr(10) + Chr(6);
    sCommandEx := Chr(0) + Chr(1);

    AddMessageField(sCommand, 2);                         //Comando
    AddMessageField(sCommandEx, 2) ;                      //Extensi�n de comando

    AddMessageField('1', 1);                              //Campo 1: Numero de linea de reemplazo 1
    AddMessageField('', 0);                               //Campo 2: Descripcion de reemplazo 1
    AddMessageField('2', 1);                              //Campo 3: Numero de linea de reemplazo 2
    AddMessageField('', 0);                               //Campo 4: Descripciom de reemplazo 2
    AddMessageField('3', 1) ;                             //Campo 5: Numero de linea de reemplazo 3
    AddMessageField('', 0);                               //Campo 6: Descripcion de reemplazo 3

    SendSerialMessage();

    Repeat
      lRet := GetCommunicationState();
    Until lRet <> IDLE;

    lRet := GetLastCommError();

    Result:= lRet;

end;

{ TDocumento_no_fiscal }

function TDocumento_no_fiscal.AbrirDocnoFiscal: LongWord;
begin
///dd
end;

end.
