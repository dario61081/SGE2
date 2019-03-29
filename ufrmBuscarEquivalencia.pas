unit ufrmBuscarEquivalencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,  DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, Data.DB,
  IBCustomDataSet, IBQuery, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  ufrmTemplateModal, dr2gcomponentes, Vcl.ImgList;

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
    procedure btnBuscarClick(Sender: TObject);
    procedure edtDatoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
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
