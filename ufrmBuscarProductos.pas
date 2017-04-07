unit ufrmBuscarProductos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmmensaje, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.StdCtrls, Data.DB, JvDataSource, IBCustomDataSet, IBTable;

type
  TfrmBuscarProductos = class(TfrmMensaje)
    grid1: TDBGridEh;
    tblProductos: TIBTable;
    tblProductosID: TLargeintField;
    tblProductosCODIGO: TIBStringField;
    tblProductosORIGEN: TIBStringField;
    tblProductosDESCRIPCION: TIBStringField;
    tblProductosACTIVO: TSmallintField;
    tblProductosIMPUESTO: TIBStringField;
    dsProductos: TJvDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBuscarProductos: TfrmBuscarProductos;

implementation

uses
  datos;

{$R *.dfm}

end.
