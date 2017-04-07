unit ufrmEquivalencias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmDatos, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh;

type
  TfrmEquivalencias = class(TfrmDatos)
    grid1: TDBGridEh;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEquivalencias: TfrmEquivalencias;

implementation

uses
  datos;

{$R *.dfm}

end.
