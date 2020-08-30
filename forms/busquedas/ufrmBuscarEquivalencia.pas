unit ufrmBuscarEquivalencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,  DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, Data.DB,
  IBCustomDataSet, IBQuery, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  ufrmTemplateModal, dr2gcomponentes, Vcl.ImgList, System.Actions, Vcl.ActnList,
  Vcl.ExtCtrls;

type
  TfrmBuscarEquivalencias = class(TfrmMensaje)
    grid1: TDBGridEh;
    dseq: TDataSource;
    qryEq: TIBQuery;
    qryEqRUC: TIBStringField;
    qryEqRAZON_SOCIAL: TIBStringField;
    lbl1: TLabel;
    edtDato: TEdit;
    btnBuscar: TButton;
    lbl2: TLabel;
    procedure btnBuscarClick(Sender: TObject);
    procedure edtDatoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actAceptarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBuscarEquivalencias: TfrmBuscarEquivalencias;

implementation

uses
  datos;

{$R *.dfm}

procedure TfrmBuscarEquivalencias.actAceptarExecute(Sender: TObject);
begin
  inherited;
  self.onAccept;
end;

procedure TfrmBuscarEquivalencias.actCancelarExecute(Sender: TObject);
begin
  inherited;
  self.onCancel;
end;

procedure TfrmBuscarEquivalencias.btnBuscarClick(Sender: TObject);
begin
  inherited;

  with qryEq do
  begin
    Close;
    ParamByName('dato').Text := edtDato.Text;
    Prepare;
    open;
  end;

end;

procedure TfrmBuscarEquivalencias.edtDatoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = VK_RETURN) then
    btnBuscar.Click;
end;

end.
