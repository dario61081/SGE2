unit uFrmLoteProductos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,  strutils,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB, IBCustomDataSet, IBTable,
  Vcl.Mask, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, Vcl.StdCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  dr2gcomponentes, JclStrings, Vcl.ExtCtrls, Vcl.DBCtrls, ufrmTemplateDatos,
  IBStoredProc, Vcl.ComCtrls, JvExComCtrls, JvStatusBar, System.Actions,
  Vcl.ActnList, DBCtrlsEh, Vcl.Grids, Vcl.DBGrids;

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
    spGeneraLote: TIBStoredProc;
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
    procedure btnGenerarCodigoLoteClick(Sender: TObject);
    procedure grid1Columns6AdvDrawDataCell(Sender: TCustomDBGridEh;
      Cell, AreaCell: TGridCoord; Column: TColumnEh; const ARect: TRect;
      var Params: TColCellParamsEh; var Processed: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure btnAgregarItemClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actBuscarProductoExecute(Sender: TObject);
  private
    { Private declarations }
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
begin
  inherited;
  // registrar el nuevo lote y actualizar la lista de lotes.
  with spGeneraLote do
  begin

    ParamByName('producto_id').Text := edtCodigoProducto.Text;
    ParamByName('lote').Text := edtLote.Text;
    ParamByName('fecha_fabricacion').AsDate := edtFechaElaboracion.Date;
    ParamByName('fecha_vencimiento').AsDate := edtFechaVencimiento.Date;
    ParamByName('cantidad').AsFloat := StrToFloat(edtcantidad2.Text) ;
    ParamByName('observacion').Text := '';

    Prepare;
    ExecProc;


    tblLotes.Close;
    tbllotes.Open;

  end;

end;

procedure TfrmLoteProductos.btnGenerarCodigoLoteClick(Sender: TObject);
begin
  inherited;
  // generar nuevo tag para lote

  edtLote.Text := 'L' + FormatDateTime('ddmmyyyy', Date);
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

procedure TfrmLoteProductos.grid1Columns6AdvDrawDataCell
  (Sender: TCustomDBGridEh; Cell, AreaCell: TGridCoord; Column: TColumnEh;
  const ARect: TRect; var Params: TColCellParamsEh; var Processed: Boolean);
begin
  inherited;

  if Column.Field.value = 'GENE' then
    Params.Background := clgreen;
  if Column.Field.value = 'PROC' then
    Params.Background := clyellow;

end;

end.
