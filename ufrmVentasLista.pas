unit ufrmVentasLista;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmDatos, Vcl.ComCtrls,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Data.DB, IBCustomDataSet, IBQuery;

type
  TfrmVentasLista = class(TfrmDatos)
    pgc1: TPageControl;
    tsDiario: TTabSheet;
    grid1: TDBGridEh;
    qryVentas: TIBQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVentasLista: TfrmVentasLista;

implementation

uses
  datos;

{$R *.dfm}

end.
