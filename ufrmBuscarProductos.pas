unit ufrmBuscarProductos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,  DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.StdCtrls, Data.DB, JvDataSource, IBCustomDataSet, IBTable,
  dr2gcomponentes, IBQuery, ufrmTemplateModal;

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
    header1: TDxHeader;
    qryProductos: TIBQuery;
    qryProductosID: TLargeintField;
    qryProductosCODIGO: TIBStringField;
    qryProductosORIGEN: TIBStringField;
    qryProductosDESCRIPCION: TIBStringField;
    qryProductosACTIVO: TSmallintField;
    qryProductosIMPUESTO: TIBStringField;
    qryProductosPRECIO_MAYORISTA: TFloatField;
    qryProductosPRECIO_MINORISTA: TFloatField;
    procedure btnAceptarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    Fcodigo_producto: integer;
    procedure Setcodigo_producto(const Value: integer);
    { Private declarations }
  public
    { Public declarations }
    property codigo_producto: integer read Fcodigo_producto write Setcodigo_producto;

  end;

var
  frmBuscarProductos: TfrmBuscarProductos;

implementation

uses
  datos;

{$R *.dfm}

procedure TfrmBuscarProductos.btnAceptarClick(Sender: TObject);
begin
  //seleccionar
  codigo_producto := qryProductosid.Value;
  inherited;

end;

procedure TfrmBuscarProductos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //cerrar la consulta
  qryProductos.Close;
  inherited;

end;

procedure TfrmBuscarProductos.FormCreate(Sender: TObject);
begin
  inherited;
  qryProductos.Open;
end;

procedure TfrmBuscarProductos.Setcodigo_producto(const Value: integer);
begin
  Fcodigo_producto := Value;
end;

end.
