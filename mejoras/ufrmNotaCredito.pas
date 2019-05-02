unit ufrmNotaCredito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmTemplateDatos,
  dr2gcomponentes, Vcl.ComCtrls, JvExComCtrls, JvStatusBar, Vcl.StdCtrls,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB,
  JvTabBar,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, IBCustomDataSet, IBQuery,
  JvTabBarXPPainter, DbUtilsEh, ehlibibx, Vcl.ExtCtrls, Vcl.AppEvnts;

type
  TfrmNotaCredito = class(TfrmDatos)
    status1: TJvStatusBar;
    qryVentas: TIBQuery;
    gridMaster: TDBGridEh;
    tab1: TJvTabBar;
    dsVentas: TDataSource;
    jvtbrxpntr1: TJvTabBarXPPainter;
    grp1: TGroupBox;
    lblFechaInicio: TLabel;
    lblFechaFin: TLabel;
    dtpFechaInicio: TDateTimePicker;
    dtpFechaFIn: TDateTimePicker;
    btnConsultar: TButton;
    btnGenerarNotaCredito: TButton;
    lbl1: TLabel;
    edtMotivo: TEdit;
    bvl1: TBevel;
    appevents1: TApplicationEvents;
    lbl2: TLabel;
    lblFacturaSeleccionada: TLabel;
    procedure btnConsultarClick(Sender: TObject);
    procedure gridMasterColumns3AdvDrawDataCell(Sender: TCustomDBGridEh;
      Cell, AreaCell: TGridCoord; Column: TColumnEh; const ARect: TRect;
      var Params: TColCellParamsEh; var Processed: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure appevents1Idle(Sender: TObject; var Done: Boolean);
    procedure qryVentasAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure buscar(fecha_inicio: tdate; fecha_fin: tdate);
  end;

var
  frmNotaCredito: TfrmNotaCredito;

implementation

uses
  datos;

{$R *.dfm}
{ TfrmNotaCredito }

procedure TfrmNotaCredito.appevents1Idle(Sender: TObject; var Done: Boolean);
begin
  inherited;
  btnGenerarNotaCredito.Enabled := not String(edtMotivo.Text).IsEmpty;
end;

procedure TfrmNotaCredito.btnConsultarClick(Sender: TObject);
begin
  inherited;
  buscar(dtpFechaInicio.Date, dtpFechaFIn.Date);
end;

procedure TfrmNotaCredito.buscar(fecha_inicio, fecha_fin: tdate);
begin
  // ejecutar el script para filtrar los datos
  with qryVentas do
  begin
    close;
    ParamByName('fecha_inicio').AsDate := fecha_inicio;
    ParamByName('fecha_fin').AsDate := fecha_fin;
    Prepare;
    open;
  end;

end;

procedure TfrmNotaCredito.FormCreate(Sender: TObject);
begin
  inherited;
  DbUtilsEh.SQLFilterMarker := '1=1 AND';
  buscar(dtpFechaInicio.Date, dtpFechaFIn.Date);
end;

procedure TfrmNotaCredito.gridMasterColumns3AdvDrawDataCell
  (Sender: TCustomDBGridEh; Cell, AreaCell: TGridCoord; Column: TColumnEh;
  const ARect: TRect; var Params: TColCellParamsEh; var Processed: Boolean);
begin
  inherited;

  if Column.Field.Text.Equals('CONT') then
  begin
    Params.Background := $00B6F8BF;

  end
  else if Column.Field.Text.Equals('CRED') then
  begin
    Params.Background := $00D9FFFF;
  end;

end;

procedure TfrmNotaCredito.qryVentasAfterScroll(DataSet: TDataSet);
begin
  inherited;
  lblFacturaSeleccionada.Caption := dataset.FieldByName('numero').Text +
  ' - ' + dataset.FieldByName('razon_social').Text;
end;

end.
