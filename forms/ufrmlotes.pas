unit ufrmlotes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh;

type
  TfrmLotes = class(TForm)
    lbl1: TLabel;
    grid1: TDBGridEh;
    btnGrabar: TButton;
    btnLimpiar: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLotes: TfrmLotes;

implementation

{$R *.dfm}

end.
