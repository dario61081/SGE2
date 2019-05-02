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
  JvTabBarXPPainter, DbUtilsEh, ehlibibx, Vcl.ExtCtrls, Vcl.AppEvnts,
  IBStoredProc, ppParameter, ppCtrls, ppBands, ppDesignLayer, raCodMod,
  ppModule, ppReport, ppStrtch, ppSubRpt, ppPrnabl, ppClass, myChkBox, ppCache,
  ppProd, ppDB, ppComm, ppRelatv, ppDBPipe, JvDataSource, IBTable;

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
    spGenerarNotaCredito: TIBStoredProc;
    tblVentas: TIBTable;
    tblVentasID: TLargeintField;
    tblVentasFECHA: TDateTimeField;
    tblVentasPRECIO_MAYORISTA: TSmallintField;
    tblVentasRUC: TIBStringField;
    tblVentasRAZON_SOCIAL: TIBStringField;
    tblVentasCONDICION: TIBStringField;
    tblVentasDIRECCION: TIBStringField;
    tblVentasTELEFONO: TIBStringField;
    tblVentasNOTA_REMISION: TIBStringField;
    tblVentasOBSERVACION: TIBStringField;
    tblVentasESTADO: TIBStringField;
    tblVentasNUMERO: TIBStringField;
    tblVentasTIMBRADO_NUMERO: TIBStringField;
    JvDataSource1: TJvDataSource;
    dsDetalles: TJvDataSource;
    tblDetalles: TIBTable;
    tblDetallesID: TLargeintField;
    tblDetallesVENTAS_ID: TLargeintField;
    tblDetallesCANTIDAD: TFloatField;
    tblDetallesPRODUCTOS_ID: TLargeintField;
    tblDetallesPRECIO_UNITARIO: TFloatField;
    tblDetallesEXENTAS: TFloatField;
    tblDetallesGRABADAS5: TFloatField;
    tblDetallesGRABADAS10: TFloatField;
    tblDetallesPRODUCTOS_CODIGO: TIBStringField;
    tblDetallesPRODUCTOS_DESCRIPCION: TIBStringField;
    tblDetallesOBSERVACION: TIBStringField;
    tblDetallesLOTE: TIBStringField;
    ppVentas: TppDBPipeline;
    ppDetalles: TppDBPipeline;
    ppDetallesppField1: TppField;
    ppDetallesppField2: TppField;
    ppDetallesppField3: TppField;
    ppDetallesppField4: TppField;
    ppDetallesppField5: TppField;
    ppDetallesppField6: TppField;
    ppDetallesppField7: TppField;
    ppDetallesppField8: TppField;
    ppDetallesppField9: TppField;
    ppDetallesppField10: TppField;
    ppDetallesppField11: TppField;
    ppDetallesppField12: TppField;
    report1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    chkContado: TmyCheckBox;
    chkCredito: TmyCheckBox;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDireccion: TppDBText;
    ppTelefono: TppDBText;
    ppDetailBand1: TppDetailBand;
    psbrprt1: TppSubReport;
    pchldrprt1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    lblLote: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    raCodeModule2: TraCodeModule;
    raProgramInfo1: TraProgramInfo;
    raProgramInfo2: TraProgramInfo;
    raProgramInfo5: TraProgramInfo;
    raProgramInfo6: TraProgramInfo;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppFooterBand1: TppFooterBand;
    plblletras: TppLabel;
    plblIva5: TppLabel;
    plblIva10: TppLabel;
    plbltotaliva: TppLabel;
    plblTotal: TppLabel;
    plblSumaGrabadas10: TppLabel;
    plblSumaGrabadas05: TppLabel;
    plblSumaExentas: TppLabel;
    raCodeModule1: TraCodeModule;
    raProgramInfo9: TraProgramInfo;
    raProgramInfo10: TraProgramInfo;
    raProgramInfo11: TraProgramInfo;
    raProgramInfo12: TraProgramInfo;
    raProgramInfo13: TraProgramInfo;
    raProgramInfo14: TraProgramInfo;
    raProgramInfo15: TraProgramInfo;
    raProgramInfo16: TraProgramInfo;
    raProgramInfo17: TraProgramInfo;
    raProgramInfo18: TraProgramInfo;
    raProgramInfo19: TraProgramInfo;
    raProgramInfo20: TraProgramInfo;
    raProgramInfo21: TraProgramInfo;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    prletra: TppParameter;
    qryVentasID: TLargeintField;
    qryVentasFECHA: TDateTimeField;
    qryVentasRUC: TIBStringField;
    qryVentasRAZON_SOCIAL: TIBStringField;
    qryVentasCONDICION: TIBStringField;
    qryVentasDIRECCION: TIBStringField;
    qryVentasTELEFONO: TIBStringField;
    qryVentasNOTA_REMISION: TIBStringField;
    qryVentasOBSERVACION: TIBStringField;
    qryVentasPRECIO_MAYORISTA: TSmallintField;
    qryVentasESTADO: TIBStringField;
    qryVentasNUMERO: TIBStringField;
    qryVentasTIMBRADO_NUMERO: TIBStringField;
    qryVentasFECHA_CREADO: TDateTimeField;
    qryVentasFECHA_MODIF: TDateTimeField;
    procedure btnConsultarClick(Sender: TObject);
    procedure gridMasterColumns3AdvDrawDataCell(Sender: TCustomDBGridEh;
      Cell, AreaCell: TGridCoord; Column: TColumnEh; const ARect: TRect;
      var Params: TColCellParamsEh; var Processed: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure appevents1Idle(Sender: TObject; var Done: Boolean);
    procedure qryVentasAfterScroll(DataSet: TDataSet);
    procedure btnGenerarNotaCreditoClick(Sender: TObject);
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

procedure TfrmNotaCredito.btnGenerarNotaCreditoClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('Confirma imprimir esta nota de credito?',
    'Imprimir', MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) = IDYES then
  begin

    //generar la nota de credito
    //1. ejecutar el script
    WITH spGenerarNotaCredito DO BEGIN
      ParamByName('codigo').AsLargeInt := qryVentasID.Value;
      parambyname('observacion').Text := edtMotivo.Text;
      Prepare;
      ExecProc;
      if Transaction.InTransaction then Transaction.CommitRetaining;
     
    END;

    //. seleccionar venta a imprimir
    with tblVentas do begin

      close;
      Filter := 'id=' + qryVentas.FieldByName('id').Text;
      Filtered :=true;
      open;
    end;

    //imprimir reporte
    report1.PrintReport;
    //limpiar el motivo
    edtMotivo.Clear;
    tblVentas.Close;
    //volver a listar los datos para quitar el dato modificado
    buscar(dtpFechaInicio.Date, dtpFechaFIn.date);

  end;

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
