unit ufrmGenerarRecibo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmDatos, Vcl.Mask, JvExMask,
  JvToolEdit, JvDBControls, Vcl.StdCtrls;

type
  TfrmGenerarRecibo = class(tform)
    edtMonto: TEdit;
    btnOk: TButton;
    lbl1: TLabel;
    edtFecha: TJvDBDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtConcepto: TEdit;
    btnCancelar: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGenerarRecibo: TfrmGenerarRecibo;

implementation

{$R *.dfm}

end.
