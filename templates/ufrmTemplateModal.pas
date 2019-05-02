unit ufrmTemplateModal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, dr2gcomponentes,
  Vcl.ImgList;

type
  TfrmMensaje = class(TForm)
    btnAceptar: TButton;
    btnCancelar: TButton;
    headerCabecera: TDxHeader;
    ilButtons: TImageList;
    procedure btnAceptarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    Fusuario: string;
    procedure Setusuario(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    property usuario: string read Fusuario write Setusuario;
  end;

var
  frmMensaje: TfrmMensaje;

implementation

{$R *.dfm}

procedure TfrmMensaje.btnAceptarClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmMensaje.btnCancelarClick(Sender: TObject);
begin
  modalresult := mrCancel;
end;

procedure TfrmMensaje.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmMensaje.Setusuario(const Value: string);
begin
  Fusuario := Value;
end;

end.
