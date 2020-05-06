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
  JvExComCtrls, JvStatusBar, ppDB, ppDBPipe, ppParameter, ppCtrls, ppBands,
  ppDesignLayer, raCodMod, ppModule, ppReport, ppStrtch, ppSubRpt, ppPrnabl,
  ppClass, myChkBox, ppCache, ppComm, ppRelatv, ppProd;

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
    tblCabeceraCODIGO: TLargeintField;
    tblCabeceraFECHA: TDateTimeField;
    tblCabeceraRUC: TIBStringField;
    tblCabeceraRAZON_SOCIAL: TIBStringField;
    tblCabeceraESTADO: TIBStringField;
    tblCabeceraOBSERVACION: TIBStringField;
    bvl1: TBevel;
    grp3: TGroupBox;
    dbnvgr2: TDBNavigator;
    lbl5: TLabel;
    grp4: TGroupBox;
    dbnvgr1: TDBNavigator;
    report1: TppReport;
    ppVentas: TppDBPipeline;
    ppDetalles: TppDBPipeline;
    tblCabeceraPRECIO_MAYORISTA: TSmallintField;
    Label1: TLabel;
    dbcbbPRECIO_MAYORISTA: TDBComboBox;
    lbl6: TLabel;
    dbedtCODIGO: TDBEdit;
    qryProductosID: TLargeintField;
    qryProductosCODIGO: TIBStringField;
    qryProductosORIGEN: TIBStringField;
    qryProductosDESCRIPCION: TIBStringField;
    qryProductosACTIVO: TSmallintField;
    qryProductosIMPUESTO: TIBStringField;
    qryProductosFECHA_CREADO: TDateTimeField;
    qryProductosFECHA_MODIF: TDateTimeField;
    qryProductosUNIDAD: TIBStringField;
    tblCabeceraEMPRESAS_CODIGO: TLargeintField;
    tblCabeceraVENTAS_CODIGO: TLargeintField;
    tblCabeceraCONDICION: TIBStringField;
    tblCabeceraDIRECCION: TIBStringField;
    tblCabeceraTELEFONO: TIBStringField;
    tblCabeceraNOTA_REMISION: TIBStringField;
    tblCabeceraNUMERO: TIBStringField;
    tblCabeceraTIMBRADO_NUMERO: TIBStringField;
    tblCabeceraSOLICITUD_NOTA_CREDITO: TIBStringField;
    tblCabeceraFECHA_CREADO: TDateTimeField;
    tblCabeceraFECHA_MODIF: TDateTimeField;
    Label2: TLabel;
    dbedtSOLICITUD_NOTA_CREDITO: TDBEdit;
    qryProductosCODIGO_BARRA: TIBStringField;
    ppHeaderBand1: TppHeaderBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDireccion: TppDBText;
    ppTelefono: TppDBText;
    plbl1: TppLabel;
    lblSOLICITUD_NOTA_CREDITO: TppDBText;
    ppLabel1: TppLabel;
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
    raProgramInfo3: TraProgramInfo;
    raProgramInfo4: TraProgramInfo;
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
    raProgramInfo11: TraProgramInfo;
    raProgramInfo13: TraProgramInfo;
    raProgramInfo14: TraProgramInfo;
    raProgramInfo15: TraProgramInfo;
    raProgramInfo16: TraProgramInfo;
    raProgramInfo17: TraProgramInfo;
    raProgramInfo18: TraProgramInfo;
    raProgramInfo19: TraProgramInfo;
    raProgramInfo20: TraProgramInfo;
    rprgrmnf1: TraProgramInfo;
    raProgramInfo7: TraProgramInfo;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    prletra: TppParameter;

    procedure actNuevaNotaCreditoExecute(Sender: TObject);
    procedure actDescartarNotaExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actBuscarClienteExecute(Sender: TObject);
    procedure tblDetallesNewRecord(DataSet: TDataSet);
    procedure grid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tblCabeceraPRECIO_MAYORISTAGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure tblCabeceraPRECIO_MAYORISTASetText(Sender: TField;
      const Text: string);
    procedure actImprimirNotaExecute(Sender: TObject);
    procedure appevents1Idle(Sender: TObject; var Done: Boolean);
    procedure dbnvgr2Click(Sender: TObject; Button: TNavigateBtn);
    procedure grid1Columns1OpenDropDownForm(Grid: TCustomDBGridEh;
      Column: TColumnEh; Button: TEditButtonEh; var DropDownForm: TCustomForm;
      DynParams: TDynVarsEh);
    procedure grid1Columns1CloseDropDownForm(Grid: TCustomDBGridEh;
      Column: TColumnEh; Button: TEditButtonEh; Accept: Boolean;
      DropDownForm: TCustomForm; DynParams: TDynVarsEh);
    procedure tblDetallesAfterRefresh(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNotaCreditoManual: TfrmNotaCreditoManual;

implementation

uses
  datos, ufrmClientes, Num2Let;

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

procedure TfrmNotaCreditoManual.actImprimirNotaExecute(Sender: TObject);
var
  valor: int64;
  texto_valor: string;
begin
  inherited;

  // calcular el total
  grid1.SumList.RecalcAll;
  // capturar monto de factura
  valor := grid1.Columns[5].footer.SumValue + grid1.Columns[6].footer.SumValue +
    grid1.Columns[7].footer.SumValue;

  texto_valor := NumLetra(valor, 1, 1);

  if Application.MessageBox('Confirma imprimir esta nota de credito?',
    'Imprimir', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
  begin

    // actualizar estado de la nota de credito
    tblCabecera.Edit;
    tblCabeceraESTADO.Text := 'IMPR';
    tblCabecera.Post;
    if tblCabecera.Transaction.InTransaction then
      tblCabecera.Transaction.CommitRetaining;

    report1.parameters['prletras'].Value := texto_valor;
    // imprimir documento
    report1.PrintReport;
  end;
end;

procedure TfrmNotaCreditoManual.actNuevaNotaCreditoExecute(Sender: TObject);
begin
  inherited;
  tblCabecera.IndexName  := 'PK_NOTAS_CREDITOS';
  tblCabecera.DisableControls;
  tblCabecera.Append;
  tblCabeceraFECHA.Value := date;
  tblCabecera.Post;
  if tblCabecera.Transaction.InTransaction then
    tblCabecera.Transaction.CommitRetaining;
  tblCabecera.Refresh;
//  tblCabecera.Close; //bug del ultimo nuevo numero
//  tblCabecera.Open;  //bug del ultimo nuevo numero
  tblCabecera.Last;
  tblCabecera.EnableControls;
  tblcabecera.Edit;

  Application.MessageBox(pwidechar('Se generó la nueva nota, codigo: ' + tblCabeceraCODIGO.Value.ToString()), 'Generar', MB_OK
    + MB_ICONINFORMATION + MB_DEFBUTTON2);





end;

procedure TfrmNotaCreditoManual.appevents1Idle(Sender: TObject;
  var Done: Boolean);
begin
  inherited;
  if dbedtESTADO.Text = 'IMPR' then
    dbedtESTADO.Color := $00B8F9FE;
  if dbedtESTADO.Text = 'CANC' then
    dbedtESTADO.Color := $00FF80FF;
  if dbedtESTADO.Text = 'FACT' then
    dbedtESTADO.Color := $00FEB381;
  if dbedtESTADO.Text = 'GENE' then
    dbedtESTADO.Color := $0092FEB3;
  if dbedtESTADO.Text = 'ANUL' then
    dbedtESTADO.Color := $00C6C6FF;
  if dbedtESTADO.Text = 'EMIT' then
    dbedtESTADO.Color := $0091B5FF;

  // bloquear si ya esta impreso

  actImprimirNota.Enabled := (dbedtESTADO.Text = 'GENE');
  dbnvgr2.Enabled := (dbedtESTADO.Text = 'GENE');
end;

procedure TfrmNotaCreditoManual.dbnvgr2Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;

  case button of
    nbFirst: ;
    nbPrior: ;
    nbNext: ;
    nbLast: ;
    nbInsert: ;
    nbDelete: ;
    nbEdit: ;
    nbPost: ;
    nbCancel: ;
    nbRefresh: ;
    nbApplyUpdates: ;
    nbCancelUpdates: ;
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
  qryProductos.Open;
end;

procedure TfrmNotaCreditoManual.grid1Columns1CloseDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  Accept: Boolean; DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  inherited;
  qryProductos.Close;
end;

procedure TfrmNotaCreditoManual.grid1Columns1OpenDropDownForm(
  Grid: TCustomDBGridEh; Column: TColumnEh; Button: TEditButtonEh;
  var DropDownForm: TCustomForm; DynParams: TDynVarsEh);
begin
  inherited;
  qryProductos.Open;
end;

procedure TfrmNotaCreditoManual.grid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  // if (key = VK_RETURN) or (key = VK_LEFT) or (key = VK_RIGHT) or (key=VK_TAB) then
  // begin
  /// /    if tblDetalles.Transaction.InTransaction then tblDetalles.Transaction.CommitRetaining;
  // grid1.DataSource.DataSet.Refresh;
  // end;
end;

procedure TfrmNotaCreditoManual.tblCabeceraPRECIO_MAYORISTAGetText
  (Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1:
      Text := 'MAYORISTA';
    2:
      Text := 'DISTRIBUIDORA';
    3:
      Text := 'OTROS';
    0:
      Text := 'MINORISTA';
  end;
end;

procedure TfrmNotaCreditoManual.tblCabeceraPRECIO_MAYORISTASetText
  (Sender: TField; const Text: string);
begin
  inherited;
  IF (Text.Equals('MINORISTA')) then
    Sender.AsInteger := 0;
  IF (Text.Equals('MAYORISTA')) THEN
    Sender.AsInteger := 1;
  if (Text.Equals('DISTRIBUIDORA')) THEN
    Sender.AsInteger := 2;
  IF (Text.Equals('OTROS')) THEN
    Sender.AsInteger := 3;
end;

procedure TfrmNotaCreditoManual.tblDetallesAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  grid1.SumList.RecalcAll;
end;

procedure TfrmNotaCreditoManual.tblDetallesNewRecord(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName(tblDetallesNOTAS_CREDITOS_CODIGO.FieldName).Value :=
    tblCabeceraCODIGO.Value;

end;

end.
