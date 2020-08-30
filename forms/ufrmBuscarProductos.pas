unit ufrmBuscarProductos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.StdCtrls, Data.DB, JvDataSource, IBCustomDataSet, IBTable,
  dr2gcomponentes, IBQuery, ufrmTemplateModal, Vcl.ImgList, System.Actions,
  Vcl.ActnList, Vcl.ExtCtrls;

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
    procedure btnAceptar1Click(Sender: TObject);
    procedure btnCancelar1Click(Sender: TObject);
  private
    Fcodigo_producto: integer;
    Fdescripcion_producto: string;
    procedure Setcodigo_producto(const Value: integer);
    procedure Setdescripcion_producto(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    property codigo_producto: integer read Fcodigo_producto
      write Setcodigo_producto;
    property descripcion_producto: string read Fdescripcion_producto
      write Setdescripcion_producto;
  end;

var
  frmBuscarProductos: TfrmBuscarProductos;

implementation

uses
  datos;

{$R *.dfm}

procedure TfrmBuscarProductos.btnAceptar1Click(Sender: TObject);
begin
  inherited;
  onAccept;
end;

procedure TfrmBuscarProductos.btnAceptarClick(Sender: TObject);
begin
  // seleccionar
  codigo_producto := qryProductosID.Value;
  descripcion_producto := qryProductosDESCRIPCION.Value;
  inherited;

end;

procedure TfrmBuscarProductos.btnCancelar1Click(Sender: TObject);
begin
  inherited;
  onCancel;
end;

procedure TfrmBuscarProductos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  // cerrar la consulta
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

procedure TfrmBuscarProductos.Setdescripcion_producto(const Value: string);
begin
  Fdescripcion_producto := Value;
end;

end.
