unit ufrmProductos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmDatos, Vcl.StdCtrls,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB,
  IBCustomDataSet, IBTable, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.ComCtrls, JvExComCtrls, JvComCtrls;

type
  TfrmProductos = class(TfrmDatos)
    lbl9: TLabel;
    grid1: TDBGridEh;
    tblProductos: TIBTable;
    dsProductos: TDataSource;
    tblProductosID: TLargeintField;
    tblProductosCODIGO: TIBStringField;
    tblProductosORIGEN: TIBStringField;
    tblProductosDESCRIPCION: TIBStringField;
    tblProductosACTIVO: TSmallintField;
    tblProductosIMPUESTO: TIBStringField;
    lbl1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProductos: TfrmProductos;

implementation

uses
  datos;

{$R *.dfm}

end.
