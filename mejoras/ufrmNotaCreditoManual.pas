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
    ppHeaderBand1: TppHeaderBand;
    chkContado: TmyCheckBox;
    chkCredito: TmyCheckBox;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDireccion: TppDBText;
    ppTelefono: TppDBText;
    plbl1: TppLabel;
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
  if Application.MessageBox('Confirma imprimir esta nota de credito?',
    'Imprimir', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
  begin
    grid1.SumList.RecalcAll;
    // capturar monto de factura
    valor := grid1.Columns[6].Footers[0].SumValue +
             grid1.Columns[7].Footers[0].SumValue +
             grid1.Columns[8].Footers[0].SumValue;

    texto_valor := NumLetra(valor, 1, 1);
    // imprimir documento
    report1.PrintReport;
  end;
end;

procedure TfrmNotaCreditoManual.actNuevaNotaCreditoExecute(Sender: TObject);
begin
  inherited;
  tblCabecera.Append;
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

procedure TfrmNotaCreditoManual.tblDetallesNewRecord(DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName(tblDetallesNOTAS_CREDITOS_CODIGO.FieldName).Value :=
    tblCabeceraCODIGO.Value;

end;

end.
