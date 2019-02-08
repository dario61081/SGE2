unit uFrmLoteProductos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,  DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB, IBCustomDataSet, IBTable,
  Vcl.Mask, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, Vcl.StdCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  dr2gcomponentes, JclStrings, Vcl.ExtCtrls, Vcl.DBCtrls, ufrmTemplateDatos;

type
  TfrmLoteProductos = class(TfrmDatos)
    header2: TDxHeader;
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
    edtCantidad: TEdit;
    grpRegistrarItem: TGroupBox;
    lblCantidad: TLabel;
    btnAgregarItem: TButton;
    btnDescartar: TButton;
    procedure btnGenerarCodigoLoteClick(Sender: TObject);
    procedure grid1Columns6AdvDrawDataCell(Sender: TCustomDBGridEh; Cell,
      AreaCell: TGridCoord; Column: TColumnEh; const ARect: TRect;
      var Params: TColCellParamsEh; var Processed: Boolean);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLoteProductos: TfrmLoteProductos;

implementation

uses
  datos;

{$R *.dfm}

procedure TfrmLoteProductos.btnGenerarCodigoLoteClick(Sender: TObject);
begin
  inherited;
//generar nuevo tag para lote

  edtLote.Text := 'L'+ FormatDateTime('ddmmyyyy', date);
  edtFechaElaboracion.Date := Date;
  edtFechaVencimiento.Date := date + StrToInt(edtDias.Text);



end;

procedure TfrmLoteProductos.FormActivate(Sender: TObject);
begin
  inherited;
  tblLotes.Open;
end;

procedure TfrmLoteProductos.grid1Columns6AdvDrawDataCell(
  Sender: TCustomDBGridEh; Cell, AreaCell: TGridCoord; Column: TColumnEh;
  const ARect: TRect; var Params: TColCellParamsEh; var Processed: Boolean);
begin
  inherited;


   if column.Field.value = 'GENE' then  params.Background := clgreen;
   if column.Field.Value =  'PROC' then  params.Background := clyellow;



end;

end.
