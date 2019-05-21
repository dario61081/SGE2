unit ufrmNotaCreditoManual;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmTemplateDatos, dr2gcomponentes,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, IBCustomDataSet,
  IBTable, Vcl.DBCtrls, Vcl.Mask, JvExMask, JvToolEdit, JvDBControls,
  Vcl.ExtCtrls, IBQuery, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.AppEvnts, Vcl.ComCtrls,
  JvExComCtrls, JvStatusBar;

type
  TfrmNotaCreditoManual = class(TfrmDatos)
    tblCabecera: TIBTable;
    tblCabeceraCODIGO: TLargeintField;
    tblCabeceraEMPRESAS_CODIGO: TLargeintField;
    tblCabeceraVENTAS_CODIGO: TLargeintField;
    tblCabeceraFECHA: TDateTimeField;
    tblCabeceraRUC: TIBStringField;
    tblCabeceraRAZON_SOCIAL: TIBStringField;
    tblCabeceraCONDICION: TIBStringField;
    tblCabeceraDIRECCION: TIBStringField;
    tblCabeceraTELEFONO: TIBStringField;
    tblCabeceraNOTA_REMISION: TIBStringField;
    tblCabeceraOBSERVACION: TIBStringField;
    tblCabeceraPRECIO_MAYORISTA: TSmallintField;
    tblCabeceraESTADO: TIBStringField;
    tblCabeceraNUMERO: TIBStringField;
    tblCabeceraTIMBRADO_NUMERO: TIBStringField;
    tblCabeceraFECHA_CREADO: TDateTimeField;
    tblCabeceraFECHA_MODIF: TDateTimeField;
    grp1: TGroupBox;
    grid1: TDBGridEh;
    dsDetalle: TDataSource;
    tblDetalles: TIBTable;
    tblDetallesCANTIDAD: TFloatField;
    tblDetallesPRODUCTOS_ID: TLargeintField;
    tblDetallesPRODUCTOS_CODIGO: TIBStringField;
    tblDetallesPRODUCTOS_DESCRIPCION: TIBStringField;
    tblDetallesPRECIO_UNITARIO: TFloatField;
    tblDetallesEXENTAS: TFloatField;
    tblDetallesGRABADAS5: TFloatField;
    tblDetallesGRABADAS10: TFloatField;
    tblDetallesOBSERVACION: TIBStringField;
    tblDetallesLOTE: TIBStringField;
    dsCabecera: TDataSource;
    tblDetallesCODIGO: TLargeintField;
    tblDetallesNOTAS_CREDITOS_CODIGO: TLargeintField;
    ds1: TDataSource;
    lbl1: TLabel;
    edtFECHA: TJvDBDateEdit;
    lbl2: TLabel;
    dbedtRUC: TDBEdit;
    dbedtRAZON_SOCIAL: TDBEdit;
    lbl3: TLabel;
    lbl8: TLabel;
    dbedtOBSERVACION: TDBEdit;
    dbnvgr1: TDBNavigator;
    btnImprimir: TButton;
    qryProductos: TIBQuery;
    lbl4: TLabel;
    dbedtESTADO: TDBEdit;
    btnNuevaNota: TButton;
    appevents1: TApplicationEvents;
    actmgr1: TActionManager;
    actNuevaNotaCredito: TAction;
    actImprimirNota: TAction;
    actDescartarNota: TAction;
    btnDescartarNota: TButton;
    actBuscarCliente: TAction;
    status1: TJvStatusBar;
    procedure btnImprimirClick(Sender: TObject);
    procedure actNuevaNotaCreditoExecute(Sender: TObject);
    procedure actDescartarNotaExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actBuscarClienteExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNotaCreditoManual: TfrmNotaCreditoManual;

implementation

uses
  datos, ufrmClientes;

{$R *.dfm}

procedure TfrmNotaCreditoManual.actBuscarClienteExecute(Sender: TObject);
begin
  inherited;
  frmClientes := TfrmClientes.Create(self);
  if frmClientes.ShowModal = mrok then
  begin
    dbedtRUC.Text := frmClientes.ruc;
    dbedtRAZON_SOCIAL.Text := frmclientes.razon_social;
  end;
  FreeAndNil(frmClientes);
end;

procedure TfrmNotaCreditoManual.actDescartarNotaExecute(Sender: TObject);
begin
  inherited;

  if Application.MessageBox('Confirma descartar esta nota de credito?',
    'Imprimir', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
  begin
    if tblDetalles.Transaction.InTransaction then
      tblDetalles.Transaction.RollbackRetaining;

    if tblCabecera.Transaction.InTransaction then
      tblCabecera.Transaction.RollbackRetaining;

  end;

end;

procedure TfrmNotaCreditoManual.actNuevaNotaCreditoExecute(Sender: TObject);
begin
  inherited;
  tblCabecera.Append;
end;

procedure TfrmNotaCreditoManual.btnImprimirClick(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('Confirma imprimir esta nota de credito?',
    'Imprimir', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
  begin

    // imprimir documento

  end;

end;

procedure TfrmNotaCreditoManual.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if tblDetalles.Transaction.InTransaction then
    tblDetalles.Transaction.CommitRetaining;

  if tblCabecera.Transaction.InTransaction then
    tblCabecera.Transaction.CommitRetaining;

  tblDetalles.Close;
  tblCabecera.Close;

end;

procedure TfrmNotaCreditoManual.FormCreate(Sender: TObject);
begin
  inherited;
  tblCabecera.Open;
  tblDetalles.Open;
end;

end.
