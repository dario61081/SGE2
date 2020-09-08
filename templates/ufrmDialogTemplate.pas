unit ufrmDialogTemplate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, iFormDialogInterface,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type


  TfrmDialogTemplate = class(TForm, IFormDialogInteface)
    btnSi: TButton;
    btnCancelar: TButton;
    img1: TImage;
  private
    { Private declarations }
  public
    procedure showdialog(title: string);
    procedure closedialog;

    { Public declarations }

  end;

var
  frmDialogTemplate: TfrmDialogTemplate;

implementation

{$R *.dfm}

procedure TfrmDialogTemplate.closedialog;
begin

end;

procedure TfrmDialogTemplate.showdialog(title: string);
begin

end;

end.
