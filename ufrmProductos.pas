unit ufrmProductos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,  Vcl.StdCtrls,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB,
  IBCustomDataSet, IBTable, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.ComCtrls, JvExComCtrls, JvComCtrls, dr2gcomponentes, ufrmTemplateDatos;

type
  TfrmProductos = class(tform)
    grid1: TDBGridEh;
    tblProductos: TIBTable;
    dsProductos: TDataSource;
    tblProductosID: TLargeintField;
    tblProductosCODIGO: TIBStringField;
    tblProductosORIGEN: TIBStringField;
    tblProductosDESCRIPCION: TIBStringField;
    tblProductosACTIVO: TSmallintField;
    tblProductosIMPUESTO: TIBStringField;
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
