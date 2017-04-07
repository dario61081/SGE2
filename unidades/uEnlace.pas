unit uEnlace;

interface

uses Windows, Sysutils, Classes;

type
  EThreadEnlace = class(Exception);

  TThreadEnlaceEvent = procedure(Sender: TObject; Command: String;
    var Response: String) of object;

  TThreadEnlace = class(TThread)
  private
    FHandle: THandle;
    FCommand: String;
    FPort: String;
    FRaw: Boolean;
    FOnCommand: TThreadEnlaceEvent;
    procedure DoOnCommand;
    procedure Enviar(Str: String);
    procedure Procesar(Str: String);
  protected
    procedure Execute; override;
  public
    constructor Create(APort: String; Raw: Boolean);
    destructor Destroy; override;
    property OnCommand: TThreadEnlaceEvent read FOnCommand write FOnCommand;
  end;

implementation

{ TThreadEnlace }

constructor TThreadEnlace.Create(APort: String; Raw: Boolean);
var
  DCB: TDCB;
begin
  FCommand := EmptyStr;
  FPort := APort;
  FRaw := Raw;
  FHandle := CreateFile(PChar('\\.\' + APort), GENERIC_READ or GENERIC_WRITE, 0,
    nil, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, 0);
  if FHandle = INVALID_HANDLE_VALUE then
    raise EThreadEnlace.Create('Error en ' + APort);
  DCB.DCBlength := Sizeof(DCB);
  if not GetCommState(FHandle, DCB) then
    raise EThreadEnlace.Create('Error en ' + APort);
  // Aqui esta la configuracion del puerto. Se la podriamos pasar por parametros ...
  with DCB do
  begin
    BaudRate := CBR_9600;
    ByteSize := 8;
    Parity := NOPARITY;
    StopBits := ONESTOPBIT;
    Flags := $01;
  end;
  if not SetCommState(FHandle, DCB) then
    raise EThreadEnlace.Create('Error en ' + APort);
  inherited Create(FALSE);
end;

destructor TThreadEnlace.Destroy;
begin
  if FHandle <> INVALID_HANDLE_VALUE then
    CloseHandle(FHandle);
  inherited;
end;

procedure TThreadEnlace.DoOnCommand;
var
  Str: String;
begin
  if Assigned(FOnCommand) then
  begin
    Str := EmptyStr;
    FOnCommand(Self, FCommand, Str);
    if Str <> EmptyStr then
      Enviar(Str);
  end;
end;

const
  CR = #13;
  LF = #10;
  BUFFERSIZE = 1024;

procedure TThreadEnlace.Enviar(Str: String);
begin
  if FHandle <> INVALID_HANDLE_VALUE then
    FileWrite(FHandle, PChar(Str)^, Length(Str));
end;

procedure TThreadEnlace.Execute;
var
  Err: DWORD;
  COMSTAT: TCOMSTAT;
  Buffer: PChar;
  Str: String;
  i: Integer;
begin
  Getmem(Buffer, BUFFERSIZE);
  try
    Str := EmptyStr;
    while not Terminated do
      if ClearCommError(FHandle, Err, @COMSTAT) then
        if COMSTAT.cbInQue > 0 then
        begin
          if COMSTAT.cbInQue >= BUFFERSIZE then
            Err := BUFFERSIZE - 1
          else
            Err := COMSTAT.cbInQue;
          FillChar(Buffer^, BUFFERSIZE, #0);
          if ReadFile(FHandle, Buffer^, Err, Err, nil) then
          begin
            Str := Str + String(Buffer);
            if FRaw then
            begin
              Procesar(Str);
              Str := EmptyStr;
            end
            else
            begin
              i := Pos(CR, Str);
              while i > 0 do
              begin
                Procesar(Trim(Copy(Str, 1, i - 1)));
                Delete(Str, 1, i);
                i := Pos(CR, Str);
              end;
            end;
          end
          else
          begin
            // Aqui podemos guardar un error en el log
          end;
        end
        else
          Sleep(10);
  finally
    FreeMem(Buffer);
  end;
end;

procedure TThreadEnlace.Procesar(Str: String);
begin
  FCommand := Str;
  Synchronize(DoOnCommand);
end;

end.
