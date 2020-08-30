unit ufrmdialogoimprimirt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmDialogTemplate, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmDlgImprimirReporte = class(TfrmDialogTemplate)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDlgImprimirReporte: TfrmDlgImprimirReporte;

implementation

{$R *.dfm}

end.
