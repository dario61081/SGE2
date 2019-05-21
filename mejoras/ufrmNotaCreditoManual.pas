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
    grp2: TGroupBox;
    dbnvgr2: TDBNavigator;
    tblCabeceraCODIGO: TLargeintField;
    tblCabeceraFECHA: TDateTimeField;
    tblCabeceraRUC: TIBStringField;
    tblCabeceraRAZON_SOCIAL: TIBStringField;
    tblCabeceraESTADO: TIBStringField;
    tblCabeceraOBSERVACION: TIBStringField;
    bvl1: TBevel;
    procedure btnImprimirClick(Sender: TObject);
    procedure actNuevaNotaCreditoExecute(Sender: TObject);
    procedure actDescartarNotaExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actBuscarClienteExecute(Sender: TObject);
    procedure tblDetallesNewRecord(DataSet: TDataSet);
    procedure grid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
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
    dbedtRAZON_SOCIAL.Text := frmClientes.razon_social;
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

procedure TfrmNotaCreditoManual.grid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = VK_RETURN) or (key = VK_LEFT) or (key = VK_RIGHT) or (key=VK_TAB) then
  begin
//    if tblDetalles.Transaction.InTransaction then tblDetalles.Transaction.CommitRetaining;
    grid1.DataSource.DataSet.Refresh;
  end;
end;

procedure TfrmNotaCreditoManual.tblDetallesNewRecord(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName(tblDetallesNOTAS_CREDITOS_CODIGO.FieldName).Value :=
    tblCabeceraCODIGO.Value;

end;

end.
