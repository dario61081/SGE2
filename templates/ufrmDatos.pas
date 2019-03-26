unit ufrmDatos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TfrmDatos = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDatos: TfrmDatos;

implementation

{$R *.dfm}

procedure TfrmDatos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmDatos.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin

  CanClose := false;
  // preguntar antes de salir
  if Application.MessageBox('Confirma cerrar esta ventana?', 'Cerrar',
    MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
  begin
    CanClose := true;
  end;

end;

end.
