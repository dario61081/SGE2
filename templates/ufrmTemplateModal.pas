unit ufrmTemplateModal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, dr2gcomponentes,
  Vcl.ImgList, uinterfaces, System.Actions, Vcl.ActnList, Vcl.ExtCtrls,
  iformmodal;

type
  TFormModalMessage = class(TForm, IModalInterface)
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
    procedure doAccept;
    procedure doCancel;
    { Public declarations }
    property usuario: string read Fusuario write Setusuario;

  end;

var
  frmMensaje: TFormModalMessage;

implementation

{$R *.dfm}

procedure TFormModalMessage.btnAceptar1Click(Sender: TObject);
begin
  self.doAccept;
end;

procedure TFormModalMessage.btnAceptarClick(Sender: TObject);
begin

  modalresult := mrok;
end;

procedure TFormModalMessage.btnCancelar1Click(Sender: TObject);
begin
  self.doCancel;
end;

procedure TFormModalMessage.btnCancelarClick(Sender: TObject);
begin
  modalresult := mrCancel;
end;

procedure TFormModalMessage.doAccept;
begin
  modalresult := mrok;
end;

procedure TFormModalMessage.doCancel;
begin
  modalresult := mrCancel;
end;

procedure TFormModalMessage.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TFormModalMessage.Setusuario(const Value: string);
begin
  Fusuario := Value;
end;

procedure TFormModalMessage.update;
begin

end;

end.
