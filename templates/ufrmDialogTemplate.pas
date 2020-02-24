unit ufrmDialogTemplate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TfrmDialogInterface = Interface
    procedure    showdialog (title: string);
  End;




  TfrmDialogTemplate = class(TForm,tfrmdialoginterface)
    btnSi: TButton;
    btnCancelar: TButton;
    img1: TImage;
  private
    { Private declarations }
  public
    procedure showdialog(title: string);
    { Public declarations }



  end;

var
  frmDialogTemplate: TfrmDialogTemplate;

implementation

{$R *.dfm}

procedure TfrmDialogTemplate.showdialog(title: string);
begin

end;

end.
