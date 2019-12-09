unit ufrmListadoNotaCredito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmTemplateModal, Vcl.ImgList,
  Vcl.StdCtrls, dr2gcomponentes, Vcl.ComCtrls, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Data.DB, IBCustomDataSet, IBQuery, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, JvExComCtrls, JvStatusBar,
  ppDB, ppDBPipe, ppDesignLayer, ppBands, ppClass, ppVar, ppCtrls, ppPrnabl,
  ppCache, ppParameter, ppComm, ppRelatv, ppProd, ppReport, Vcl.AppEvnts;

type
  TfrmListadoNotaCredito = class(TfrmMensaje)
    lbl2: TLabel;
    edtRuc: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    dtpfecha_inicio: TDateTimePicker;
    dtpfecha_fin: TDateTimePicker;
    btnConsultar: TButton;
    qry1: TIBQuery;
    grid1: TDBGridEh;
    qry1CODIGO: TLargeintField;
    qry1FECHA: TDateTimeField;
    qry1CONDICION: TIBStringField;
    qry1OBSERVACION: TIBStringField;
    qry1RUC: TIBStringField;
    qry1RAZON_SOCIAL: TIBStringField;
    qry1LISTA_PRECIO: TIBStringField;
    qry1EXENTAS: TFloatField;
    qry1GRABADAS5: TFloatField;
    qry1GRABADAS10: TFloatField;
    ds1: TDataSource;
    status1: TJvStatusBar;
    actmgr1: TActionManager;
    actBuscarCliente: TAction;
    grp1: TGroupBox;
    btnImprimirReporte: TButton;
    actImprimirReporte: TAction;
    lbl3: TLabel;
    edtRazonSocial: TEdit;
    actConsultar: TAction;
    report1: TppReport;
    ppParameterList1: TppParameterList;
    ppTitleBand1: TppTitleBand;
    plbl1: TppLabel;
    phdrbnd1: TppHeaderBand;
    pln1: TppLine;
    plbl2: TppLabel;
    plbl4: TppLabel;
    plbl8: TppLabel;
    plbl9: TppLabel;
    plbl10: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppPageSummaryBand1: TppPageSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppFooterBand1: TppFooterBand;
    pln2: TppLine;
    psystmvrbl1: TppSystemVariable;
    psystmvrbl2: TppSystemVariable;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    plbl5: TppLabel;
    ppDBText5: TppDBText;
    ppDBText4: TppDBText;
    plbl6: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDesignLayers1: TppDesignLayers;
    pdsgnlyr1: TppDesignLayer;
    ppDBPipeline1: TppDBPipeline;
    appevents1: TApplicationEvents;
    procedure actBuscarClienteExecute(Sender: TObject);
    procedure actConsultarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure appevents1Idle(Sender: TObject; var Done: Boolean);
    procedure actImprimirReporteExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListadoNotaCredito: TfrmListadoNotaCredito;

implementation

uses
  datos, ufrmClientes;

{$R *.dfm}

procedure TfrmListadoNotaCredito.actBuscarClienteExecute(Sender: TObject);
begin
  inherited;

  frmClientes := TfrmClientes.Create(self);
  if (frmClientes.ShowModal = mrOk) then
  begin
    edtRuc.Text := frmClientes.ruc;
    edtRazonSocial.Text := frmClientes.razon_social;
  end;
  frmClientes.Close;
  frmClientes.Free;

end;

procedure TfrmListadoNotaCredito.actConsultarExecute(Sender: TObject);
begin
  inherited;

  with self.qry1 do
  begin

    Close;
    ParamByName('ruc').Text := edtRuc.Text;
    ParamByName('fecha_inicio').AsDateTime := dtpfecha_inicio.Date;
    ParamByName('fecha_fin').AsDateTime := dtpfecha_fin.Date;
    Prepare;
    open;

  end;

  Application.MessageBox('Se ha ejecutado la consulta correctamente.',
    'Consulta', MB_OK + MB_ICONQUESTION + MB_DEFBUTTON2);



end;

procedure TfrmListadoNotaCredito.actImprimirReporteExecute(Sender: TObject);
begin
  inherited;
  report1.PrintReport;
end;

procedure TfrmListadoNotaCredito.appevents1Idle(Sender: TObject;
  var Done: Boolean);
begin
  inherited;
  actImprimirReporte.Enabled := qry1.Active;
end;

procedure TfrmListadoNotaCredito.btnAceptarClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfrmListadoNotaCredito.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  try
    qry1.Close
  finally

  end;


end;

procedure TfrmListadoNotaCredito.FormCreate(Sender: TObject);
begin
  inherited;
  dtpfecha_inicio.Date := now;
  dtpfecha_fin.Date := now;

end;

end.
