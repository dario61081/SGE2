unit ufrmSplash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TfrmSplash = class(TForm)
    img1: TImage;
    pnl1: TPanel;
    lbl1: TLabel;
    pb1: TProgressBar;
    procedure FormPaint(Sender: TObject);
    procedure img1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSplash: TfrmSplash;

implementation

{$R *.dfm}

procedure TfrmSplash.FormPaint(Sender: TObject);
begin

  canvas.Pen.Color := clSilver;
  canvas.Rectangle(GetClientRect);

end;

procedure TfrmSplash.img1Click(Sender: TObject);
begin
  self.Hide;
  self.Free;
end;

end.
