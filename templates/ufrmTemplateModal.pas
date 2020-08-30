unit ufrmTemplateModal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, dr2gcomponentes,
  Vcl.ImgList , uinterfaces, System.Actions, Vcl.ActnList, Vcl.ExtCtrls;

type
  TfrmMensaje = class(TForm, imodal)
    headerCabecera: TDxHeader;
    ilButtons: TImageList;
    pnlBottom: TPanel;
    actlstModal: TActionList;
    actAceptar: TAction;
    actCancelar: TAction;
    btnAceptar1: TButton;
    btnCancelar1: TButton;
    bvl1: TBevel;
    procedure btnAceptarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAceptar1Click(Sender: TObject);
    procedure btnCancelar1Click(Sender: TObject);
  private
    Fusuario: string;
    procedure Setusuario(const Value: string);
    { Private declarations }
  public
    procedure update;
    procedure onAccept;
    procedure onCancel;
    { Public declarations }
    property usuario: string read Fusuario write Setusuario;

  end;


var
  frmMensaje: TfrmMensaje;

implementation



{$R *.dfm}

procedure TfrmMensaje.btnAceptar1Click(Sender: TObject);
begin
  self.onAccept;
end;

procedure TfrmMensaje.btnAceptarClick(Sender: TObject);
begin

  modalresult := mrok;
end;

procedure TfrmMensaje.btnCancelar1Click(Sender: TObject);
begin
  Self.onCancel;
end;

procedure TfrmMensaje.btnCancelarClick(Sender: TObject);
begin
  modalresult := mrCancel;
end;

procedure TfrmMensaje.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmMensaje.onAccept;
begin
  modalresult := mrOk;
end;

procedure TfrmMensaje.onCancel;
begin
    ModalResult := mrCancel;
end;

procedure TfrmMensaje.Setusuario(const Value: string);
begin
  Fusuario := Value;
end;

procedure TfrmMensaje.update;
begin

end;



end.
