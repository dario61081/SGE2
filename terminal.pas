unit terminal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, nrterminal, nrclasses,
  nrcomm, nrdataproc, nrsemaphore, nrlogfile, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    comm1: TnrComm;
    nrtrmnl1: TnrTerminal;
    mmo1: TMemo;
    nrdtprcsr1: TnrDataProcessor;
    nrSemaphore1: TnrSemaphore;
    nrSemaphore2: TnrSemaphore;
    btn1: TButton;
    nrSemaphore3: TnrSemaphore;
    nrSemaphore4: TnrSemaphore;
    nrLogFile1: TnrLogFile;
    Timer1: TTimer;
    edt1: TEdit;
    procedure btn1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure comm1AfterReceive(Com: TObject; Buffer: Pointer;
      Received: Cardinal);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btn1Click(Sender: TObject);
begin
comm1.Active := not comm1.Active;
Timer1.Enabled := comm1.Active;
end;

procedure TForm2.comm1AfterReceive(Com: TObject; Buffer: Pointer;
  Received: Cardinal);
begin
  edt1.Text := comm1.ReadString;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin

if comm1.Active  then
begin
  comm1.SendChar(#5);

end;
end;

end.
