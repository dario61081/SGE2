unit uFrmLoteProductos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, strutils, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB, IBCustomDataSet, IBTable,
  Vcl.Mask, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, Vcl.StdCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  dr2gcomponentes, JclStrings, Vcl.ExtCtrls, Vcl.DBCtrls, ufrmTemplateDatos,
  IBStoredProc, Vcl.ComCtrls, JvExComCtrls, JvStatusBar, System.Actions, Vcl.ActnList,
  DBCtrlsEh, Vcl.Grids, Vcl.DBGrids,ib,  IBQuery;

type
  TfrmLoteProductos = class(TfrmDatos)
    grid1: TDBGridEh;
    lbl1: TLabel;
    edtLote: TEdit;
    btnGenerarCodigoLote: TButton;
    edtFechaElaboracion: TJvDatePickerEdit;
    edtFechaVencimiento: TJvDatePickerEdit;
    lblFechaElaboracion: TLabel;
    Label1: TLabel;
    btnGrabar: TButton;
    tblLotes: TIBTable;
    dsLoteProductos: TDataSource;
    tblLotesCODIGO: TLargeintField;
    tblLotesLOTE: TIBStringField;
    tblLotesPRODUCTO_ID: TLargeintField;
    tblLotesPRODUCTO_CODIGO: TLargeintField;
    tblLotesPRODUCTO_DESCRIPCION: TIBStringField;
    tblLotesFECHA_FABRICACION: TDateTimeField;
    tblLotesFECHA_VENCIMIENTO: TDateTimeField;
    tblLotesCANTIDAD: TFloatField;
    tblLotesSALDO: TFloatField;
    tblLotesESTADO: TIBStringField;
    tblLotesFECHA_CREADO: TDateTimeField;
    tblLotesFECHA_MODIF: TDateTimeField;
    tblProductos: TIBTable;
    dbnvgr1: TDBNavigator;
    edtDias: TEdit;
    btnDescartarLote: TButton;
    lblHint: TLabel;
    lblProducto: TLabel;
    edtCodigoProducto: TEdit;
    edtProducto: TEdit;
    grpRegistrarItem: TGroupBox;
    lblCantidad: TLabel;
    btnAgregarItem: TButton;
    btnDescartar: TButton;
    Label2: TLabel;
    edtObservacion: TEdit;
    status1: TJvStatusBar;
    dsProductos: TDataSource;
    tblProductosID: TLargeintField;
    tblProductosCODIGO: TIBStringField;
    tblProductosORIGEN: TIBStringField;
    tblProductosDESCRIPCION: TIBStringField;
    tblProductosACTIVO: TSmallintField;
    tblProductosIMPUESTO: TIBStringField;
    tblProductosFECHA_CREADO: TDateTimeField;
    tblProductosFECHA_MODIF: TDateTimeField;
    tblProductosUNIDAD: TIBStringField;
    lbl2: TLabel;
    tblLotesOBSERVACION: TIBStringField;
    actlst1: TActionList;
    actBuscarProducto: TAction;
    edtCantidad2: TDBNumberEditEh;
    DBGrid1: TDBGrid;
    qryRegistrarLote: TIBQuery;
    procedure btnGenerarCodigoLoteClick(Sender: TObject);
    procedure grid1Columns6AdvDrawDataCell(Sender: TCustomDBGridEh; Cell, AreaCell: TGridCoord; Column: TColumnEh; const ARect: TRect; var Params: TColCellParamsEh; var Processed: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure btnAgregarItemClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actBuscarProductoExecute(Sender: TObject);
    procedure btnDescartarClick(Sender: TObject);
  private
    { Private declarations }
    procedure limpiarcampos;
  public
    { Public declarations }
  end;

var
  frmLoteProductos: TfrmLoteProductos;

implementation

uses
  datos, ufrmBuscarProductos, Utilidades;

{$R *.dfm}

procedure TfrmLoteProductos.actBuscarProductoExecute(Sender: TObject);
begin
  inherited;

  frmBuscarProductos := TfrmBuscarProductos.Create(self);
  if frmBuscarProductos.ShowModal = mrOk then
  begin
    // registrar los datos
    edtCodigoProducto.Text := frmBuscarProductos.codigo_producto.ToString;
    edtProducto.Text := frmBuscarProductos.descripcion_producto;
  end;
  FreeAndNil(frmBuscarProductos);

end;

procedure TfrmLoteProductos.btnAgregarItemClick(Sender: TObject);
var
  cantidad: extended;
begin
  inherited;
  if string(edtCodigoProducto.Text).IsEmpty then
  begin
    showmessage('Debe de ingresar un codigo de producto');
    exit;
  end;

  if edtCantidad2.Text.IsEmpty then
  begin
    showmessage('Debe ingresar cantidad');
    exit;
  end;

  if string(edtFechaElaboracion.Text).IsEmpty then
  begin
    showmessage('Debe de ingresar una fecha de elaboracion');
    exit;
  end;

  if string(edtFechaVencimiento.Text).IsEmpty then
  begin
    showmessage('Debe de ingresar una fecha de vencimiento');
    exit;

  end;




  // registrar el nuevo lote y actualizar la lista de lotes.
  try
    with tblLotes do
    begin

      append;
      cantidad := strtofloat(edtCantidad2.Value);

      FieldByName('producto_id').Text := edtCodigoProducto.Text;
      FieldByName('lote').Text := edtLote.Text;
      FieldByName('fecha_fabricacion').Value := edtFechaElaboracion.Date;
      FieldByName('fecha_vencimiento').Value := edtFechaVencimiento.Date;
      FieldByName('cantidad').Value := cantidad;
      FieldByName('observacion').Text := '';
      FieldByName('saldo').Value := cantidad;

      post;


      tblLotes.Close;
      tbllotes.Open;

    end;
  except on e: EIBInterBaseError do begin
    showmessage('Ha ocurrido un error, posible lote con mismo producto');
    tblLotes.delete;
    if tblLotes.Transaction.InTransaction then
      tbllotes.Transaction.RollbackRetaining;
  end;


  end;

  limpiarcampos;

end;

procedure TfrmLoteProductos.btnDescartarClick(Sender: TObject);
begin
  inherited;
  limpiarcampos;
  showmessage('Se ha descartado esta informacion');
end;

procedure TfrmLoteProductos.btnGenerarCodigoLoteClick(Sender: TObject);
begin
  inherited;
  // generar nuevo tag para lote

  edtLote.Text := 'L' + FormatDateTime('yyyymmdd', Date);
  edtFechaElaboracion.Date := Date;
  edtFechaVencimiento.Date := Date + StrToInt(edtDias.Text);

end;

procedure TfrmLoteProductos.FormActivate(Sender: TObject);
begin
  inherited;
  tblLotes.Open;
end;

procedure TfrmLoteProductos.FormResize(Sender: TObject);
begin
  inherited;
  invalidate;
end;

procedure TfrmLoteProductos.grid1Columns6AdvDrawDataCell(Sender: TCustomDBGridEh; Cell, AreaCell: TGridCoord; Column: TColumnEh; const ARect: TRect; var Params: TColCellParamsEh; var Processed: Boolean);
begin
  inherited;

  if Column.Field.value = 'GENE' then
    Params.Background := clgreen;
  if Column.Field.value = 'PROC' then
    Params.Background := clyellow;

end;

procedure TfrmLoteProductos.limpiarcampos;
begin

  edtFechaElaboracion.Clear;
  edtFechaVencimiento.Clear;
  edtObservacion.Clear;
  edtCantidad2.Clear;
  edtCodigoProducto.Clear;
  edtProducto.Clear;
  edtlote.clear;
  edtLote.SetFocus;

end;

end.

