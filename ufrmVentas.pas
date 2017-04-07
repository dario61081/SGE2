﻿unit ufrmVentas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, System.StrUtils,
  Vcl.Forms, Vcl.Dialogs, ufrmDatos, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB, JvDataSource,
  IBCustomDataSet, IBTable, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, JvDBControls, Vcl.ComCtrls,
  JvExComCtrls, JvStatusBar, JvExMask, JvToolEdit, System.Actions, Vcl.ActnList,
  IBQuery, myChkBox, ppPrnabl, ppClass, ppCtrls, ppBands, ppCache,
  ppDesignLayer, ppParameter, ppComm, ppRelatv, ppProd, ppReport, ppDB,
  ppDBPipe,
  ppStrtch, ppSubRpt, raCodMod, ppModule, Vcl.AppEvnts, IBStoredProc,
  Vcl.Buttons, nrsemaphore, nrclasses, nrdataproc, nrcomm, nrterminal,
  Vcl.Controls, ppVar;

type

  TfrmVentas = class(TfrmDatos)
    grid1: TDBGridEh;
    tblVentas: TIBTable;
    tblDetalles: TIBTable;
    dsVentas: TJvDataSource;
    dsDetalles: TJvDataSource;
    lbl1: TLabel;
    lbl2: TLabel;
    dbedtRUC: TDBEdit;
    lbl3: TLabel;
    dbedtRAZON_SOCIAL: TDBEdit;
    lbl4: TLabel;
    lbl5: TLabel;
    dbedtDIRECCION: TDBEdit;
    lbl6: TLabel;
    dbedtTELEFONO: TDBEdit;
    lbl7: TLabel;
    dbedtNOTA_REMISION: TDBEdit;
    lbl8: TLabel;
    dbedtOBSERVACION: TDBEdit;
    lbl9: TLabel;
    nav1: TJvDBNavigator;
    status1: TJvStatusBar;
    edtFecha: TJvDBDateEdit;
    actlst1: TActionList;
    actBuscarRuc: TAction;
    actBuscarProducto: TAction;
    report1: TppReport;
    dbchkMayorista: TDBCheckBox;
    lbl10: TLabel;
    dbcbbCondicion: TDBComboBox;
    grp1: TGroupBox;
    edtBALANZA: TEdit;
    btnCapturar: TButton;
    qryListado: TIBQuery;
    dsListado: TJvDataSource;
    nav2: TJvDBNavigator;
    btnImprimir: TButton;
    ppVentas: TppDBPipeline;
    ppDetalles: TppDBPipeline;
    Label1: TLabel;
    dbedtEstado: TDBEdit;
    appevents1: TApplicationEvents;
    lbl11: TLabel;
    dbedtID: TDBEdit;
    appevents2: TApplicationEvents;
    btnNuevaFactura: TBitBtn;
    actNuevaFactura: TAction;
    spNuevaFactura: TIBStoredProc;
    spNuevaFacturaVENTAS_ID: TLargeintField;
    tblVentasID: TLargeintField;
    tblVentasFECHA: TDateTimeField;
    tblVentasPRECIO_MAYORISTA: TSmallintField;
    tblDetallesID: TLargeintField;
    tblDetallesVENTAS_ID: TLargeintField;
    tblDetallesCANTIDAD: TFloatField;
    tblDetallesPRODUCTOS_ID: TLargeintField;
    tblDetallesPRECIO_UNITARIO: TFloatField;
    tblDetallesEXENTAS: TFloatField;
    tblDetallesGRABADAS5: TFloatField;
    tblDetallesGRABADAS10: TFloatField;
    qryListadoID: TLargeintField;
    qryListadoACTIVO: TSmallintField;
    qryListadoPRECIO_MAYORISTA: TFloatField;
    qryListadoPRECIO_MINORISTA: TFloatField;
    btnReimprimirFactura: TButton;
    actReimprimirFactura: TAction;
    actAnularFactura: TAction;
    btnAnularFactura: TButton;
    bvl1: TBevel;
    actVistaFacturaDia: TAction;
    Bevel1: TBevel;
    ppHeaderBand1: TppHeaderBand;
    chkContado: TmyCheckBox;
    chkCredito: TmyCheckBox;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
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
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    raCodeModule2: TraCodeModule;
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
    raProgramInfo7: TraProgramInfo;
    raProgramInfo8: TraProgramInfo;
    raProgramInfo13: TraProgramInfo;
    raProgramInfo14: TraProgramInfo;
    raProgramInfo15: TraProgramInfo;
    raProgramInfo16: TraProgramInfo;
    raProgramInfo17: TraProgramInfo;
    raProgramInfo18: TraProgramInfo;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    prletra: TppParameter;
    pnl1: TPanel;
    gridClientes: TDBGridEh;
    qryClientes: TIBQuery;
    dsClientes: TDataSource;
    btnCerrar: TButton;
    comm1: TnrComm;
    ledBalanza: TnrSemaphore;
    chkTimer: TCheckBox;
    tmr1: TTimer;
    actGenerarReciboDinero: TAction;
    btnGenerarReciboDinero: TButton;
    tblVentasRUC: TIBStringField;
    tblVentasRAZON_SOCIAL: TIBStringField;
    tblVentasCONDICION: TIBStringField;
    tblVentasDIRECCION: TIBStringField;
    tblVentasTELEFONO: TIBStringField;
    tblVentasNOTA_REMISION: TIBStringField;
    tblVentasOBSERVACION: TIBStringField;
    tblVentasESTADO: TIBStringField;
    tblVentasNUMERO: TIBStringField;
    tblDetallesPRODUCTOS_CODIGO: TIBStringField;
    tblDetallesPRODUCTOS_DESCRIPCION: TIBStringField;
    tblDetallesOBSERVACION: TIBStringField;
    qryClientesRUC: TIBStringField;
    qryClientesRAZON_SOCIAL: TIBStringField;
    qryListadoCODIGO: TIBStringField;
    qryListadoORIGEN: TIBStringField;
    qryListadoDESCRIPCION: TIBStringField;
    qryListadoIMPUESTO: TIBStringField;
    reportRecibo: TppReport;
    ppParameterList2: TppParameterList;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppSystemVariable1: TppSystemVariable;
    ppDBText10: TppDBText;
    plbl2: TppLabel;
    ppLabel1: TppLabel;
    plbl1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText11: TppDBText;
    pdbtxt1: TppDBText;
    ppLabel3: TppLabel;
    plbl3: TppLabel;
    pln1: TppLine;
    ppDBText12: TppDBText;
    pln2: TppLine;
    plbl4: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppDBText13: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLine1: TppLine;
    ppDBText16: TppDBText;
    ppLine2: TppLine;
    ppLabel10: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppDBText17: TppDBText;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLine3: TppLine;
    ppDBText20: TppDBText;
    ppLine4: TppLine;
    ppLabel17: TppLabel;
    plbl5: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppFooterBand2: TppFooterBand;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    procedure FormCreate(Sender: TObject);
    procedure nav1Click(Sender: TObject; Button: TNavigateBtn);
    procedure actBuscarRucExecute(Sender: TObject);
    procedure actBuscarProductoExecute(Sender: TObject);
    procedure btnCapturarClick(Sender: TObject);
    procedure tblDetallesAfterRefresh(DataSet: TDataSet);
    procedure btnImprimirClick(Sender: TObject);
    procedure tblDetallesNewRecord(DataSet: TDataSet);
    procedure tblVentasAfterPost(DataSet: TDataSet);
    procedure dsDetallesRecordChanged(Sender: TObject);
    procedure dsVentasRecordChanged(Sender: TObject);
    procedure tblVentasNewRecord(DataSet: TDataSet);
    procedure dsVentasEditingChanged(Sender: TObject);
    procedure appevents1Idle(Sender: TObject; var Done: Boolean);
    procedure grid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure nav2Click(Sender: TObject; Button: TNavigateBtn);
    procedure dsDetallesStateChange(Sender: TObject);
    procedure actNuevaFacturaExecute(Sender: TObject);
    procedure grid1SumListAfterRecalcAll(Sender: TObject);
    procedure actVistaFacturaDiaExecute(Sender: TObject);
    procedure actAnularFacturaExecute(Sender: TObject);
    procedure actReimprimirFacturaExecute(Sender: TObject);
    procedure dbedtRUCKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnCerrarClick(Sender: TObject);
    procedure comm1AfterReceive(Com: TObject; Buffer: Pointer;
      Received: Cardinal);
    procedure tmr1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actGenerarReciboDineroExecute(Sender: TObject);
  private
    { Private declarations }
    procedure Refresh(aTable: TIBTable);
  public
    constructor Create(AOwner: TComponent); override;
    { Public declarations }

  end;

var
  frmVentas: TfrmVentas;

implementation

uses
  datos, ufrmBuscarEquivalencia, ufrmBuscarProductos, Num2Let, Controles,
  ufrmVistaRapidaFacturas, ufrmGenerarRecibo;

{$R *.dfm}

procedure TfrmVentas.actAnularFacturaExecute(Sender: TObject);
begin
  inherited;

  if string(dbedtOBSERVACION.Text).IsEmpty then
  begin

    dbedtOBSERVACION.Color := clYellow;
    showmessage('Debe de ingresar el motivo de la anulacion');

  end
  else
  begin
    // marcar anulado
    with tblVentas do
    begin
      if State = dsBrowse then
        Edit;

      tblVentasESTADO.Value := 'ANUL';
      post;
      if Transaction.InTransaction then
        Transaction.CommitRetaining;

    end;

  end;

end;

procedure TfrmVentas.actBuscarProductoExecute(Sender: TObject);
begin
  inherited;

  frmBuscarProductos := TfrmBuscarProductos.Create(self);
  if frmBuscarProductos.ShowModal = mrok then
  begin

    tblDetallesPRODUCTOS_ID.Value := frmBuscarProductos.tblProductosID.Value;
    tblDetallesPRODUCTOS_DESCRIPCION.Value :=
      frmBuscarProductos.tblProductosDESCRIPCION.Value;
    tblDetalles.post;
    tblDetalles.Refresh;

  end;
  FreeAndNil(frmBuscarProductos);
end;

procedure TfrmVentas.actBuscarRucExecute(Sender: TObject);
begin
  inherited;

  if tblVentas.State = dsBrowse then
    tblVentas.Edit;

  frmBuscarEquivalencias := TfrmBuscarEquivalencias.Create(self);
  if frmBuscarEquivalencias.ShowModal = mrok then
  begin
    tblVentasRUC.Value := frmBuscarEquivalencias.qryEqRUC.Value;
    tblVentasRAZON_SOCIAL.Value :=
      frmBuscarEquivalencias.qryEqRAZON_SOCIAL.Value;

  end;
  FreeAndNil(frmBuscarEquivalencias);

end;

procedure TfrmVentas.actGenerarReciboDineroExecute(Sender: TObject);
begin
  inherited;

  frmGenerarRecibo := TfrmGenerarRecibo.Create(self);
  frmGenerarRecibo.edtMonto.Text := grid1.Columns[9].Footers[1].value;
  if frmGenerarRecibo.ShowModal = mrok then
  begin

  end;
  FreeAndNil(frmGenerarRecibo);
end;

procedure TfrmVentas.actNuevaFacturaExecute(Sender: TObject);
var
  numero: integer;
begin
  inherited;
  dbedtOBSERVACION.Color := clWindow;
  with spNuevaFactura do
  begin
    ExecProc;
    if Transaction.InTransaction then
      Transaction.CommitRetaining;
    numero := spNuevaFactura.ParamByName('ventas_id').AsInteger;
  end;
  with tblVentas do
  begin

    close;
    Filtered := false;
    filter := tblVentasID.FieldName + '=' + numero.ToString;
    Filtered := true;
    open;

  end;

end;

procedure TfrmVentas.actReimprimirFacturaExecute(Sender: TObject);
begin
  inherited;
  if tblVentasESTADO.Text.Equals('IMPR') then
    btnImprimir.Click;

end;

procedure TfrmVentas.actVistaFacturaDiaExecute(Sender: TObject);
begin
  inherited;
  frmVistaFacturas := TfrmVistaFacturas.Create(self);
  if frmVistaFacturas.ShowModal = mrok then
  begin
    tblVentas.Locate(tblVentasID.FieldName, frmVistaFacturas.qryVentaID.Value,
      [loCaseInsensitive]);
    grid1.SumList.RecalcAll;

  end;
  frmVistaFacturas.Free;

end;

procedure TfrmVentas.appevents1Idle(Sender: TObject; var Done: Boolean);
var
  modo: Boolean;
begin
  inherited;

  actReimprimirFactura.Enabled := dbedtEstado.Text = 'IMPR';
  actAnularFactura.Enabled := dbedtEstado.Text = 'IMPR';

  if dbedtEstado.Text = 'IMPR' then
    dbedtEstado.Color := $00B8F9FE;
  if dbedtEstado.Text = 'CANC' then
    dbedtEstado.Color := $00FF80FF;
  if dbedtEstado.Text = 'FACT' then
    dbedtEstado.Color := $00FEB381;
  if dbedtEstado.Text = 'GENE' then
    dbedtEstado.Color := $0092FEB3;
  if dbedtEstado.Text = 'ANUL' then
    dbedtEstado.Color := $00C6C6FF;
  // bloquear para cuando la factura ya fue impresa
  modo := (dbedtEstado.Text = 'GENE');

  btnImprimir.Enabled := modo;
  nav2.Enabled := modo;
  grid1.ReadOnly := not modo;

end;

procedure TfrmVentas.btnImprimirClick(Sender: TObject);
var
  valor: Int64;

begin
  inherited;

  if Application.MessageBox('Confirma imprimir esta factura?', 'Imprimir',
    MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
  begin
    if tblVentas.Transaction.InTransaction then
      tblVentas.Transaction.CommitRetaining;
    if tblDetalles.Transaction.InTransaction then
      tblDetalles.Transaction.CommitRetaining;

    // marcar como impreso
    with tblVentas do
    begin
      Edit;
      tblVentasESTADO.Text := 'IMPR';
      post;
      Transaction.CommitRetaining;

    end;
    // sumar los valores de las columnas.
    valor := grid1.Columns[7].Footers[0].SumValue + grid1.Columns[8].Footers[0]
      .SumValue + grid1.Columns[9].Footers[0].SumValue;

    report1.Parameters['prletras'].Value := NumLetra(valor, 1, 1);

    report1.PrintReport;

  end;

  grid1.SumList.RecalcAll;

end;

procedure TfrmVentas.comm1AfterReceive(Com: TObject; Buffer: Pointer;
  Received: Cardinal);
var
  s: string;
  i: integer;
  k: AnsiString;
  ch: pansichar;
  datapacket: string;
begin
  inherited;
  // for i := 0 to Received - 1 do begin
  // ch := PAnsiChar(Buffer)[I];
  // if ch = #3 then begin
  // edtBALANZA.Text := datapacket;
  //
  // end else if (ch = #2 begin
  //
  // DataPacket := DataPacket + ch;
  // end;
  // end;

  // for i := 0 to Received-1 do
  // begin
  // s := s + PAnsiChar(buffer)[i];
  //
  // end;

end;

procedure TfrmVentas.btnCapturarClick(Sender: TObject);
var
  puerto: integer;
  n: integer;
  num: byte;
  cad: string;
  Mode: DCB;

begin
  inherited;
  //
  // puerto := FileOpen('COM5', fmOpenRead); // Abre el puerto
  // Mode.BaudRate := 9600;
  // Mode.ByteSize := 8;
  // Mode.Parity := NOPARITY;
  // Mode.StopBits := ONESTOPBIT;
  // SetCommState(puerto, Mode);
  // // Ajusta los parámetros
  // // Los datos se repiten y terminan con #13(CR)
  // repeat
  // repeat
  // until FileRead(puerto, num, 1) = 1;
  // until num = 13;
  // // Final de cadena anterior
  // cad := '';
  // for n := 1 to 8 do
  // begin
  // repeat
  // until FileRead(puerto, num, 1) = 1; // lee un byte
  // cad := cad + chr(num);
  // end;
  // edtBALANZA.Text := cad; // Muestra la lectura
  // Sleep(1000); // Espera para poder ver el resultado

end;

procedure TfrmVentas.btnCerrarClick(Sender: TObject);
begin
  inherited;
  pnl1.Visible := false;
end;

constructor TfrmVentas.Create(AOwner: TComponent);
begin
  inherited;

end;

procedure TfrmVentas.dbedtRUCKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  //
  // with pnl1 do
  // begin
  //
  // if Visible = false then
  // Visible := true;
  // if tblVentas.State in dsWriteModes then
  //
  // with qryClientes do
  // begin
  //
  // close;
  // ParamByName('valor').Text := dbedtRUC.Text;
  // open;
  //
  // end;
  //
  // end;

end;

procedure TfrmVentas.dsDetallesRecordChanged(Sender: TObject);
begin
  inherited;
  // grid1.SumList.RecalcAll;
end;

procedure TfrmVentas.dsDetallesStateChange(Sender: TObject);
begin
  inherited;
  if tblDetalles.State = dsBrowse then
  BEGIN
    grid1.SumList.RecalcAll;

  END;
end;

procedure TfrmVentas.dsVentasEditingChanged(Sender: TObject);
begin
  inherited;
  if tblVentas.Transaction.InTransaction then
    tblVentas.Transaction.CommitRetaining;
end;

procedure TfrmVentas.dsVentasRecordChanged(Sender: TObject);
begin
  inherited;
  grid1.SumList.RecalcAll;
end;

procedure TfrmVentas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if comm1.Active then
    comm1.Active := false;
end;

procedure TfrmVentas.FormCreate(Sender: TObject);
begin
  inherited;
  tblVentas.open;
  tblDetalles.open;
  qryListado.open;
  comm1.Active := true;
  // grid1.SumList.RecalcAll;
end;

procedure TfrmVentas.grid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if ((Key = VK_RETURN) or (Key = VK_TAB)) then

    Refresh(tblDetalles);
end;

procedure TfrmVentas.grid1SumListAfterRecalcAll(Sender: TObject);
var
  valor: Int64;
begin
  inherited;
  // sumar laos campos.
  valor := grid1.Columns[7].Footers[0].SumValue + grid1.Columns[8].Footers[0]
    .SumValue + grid1.Columns[9].Footers[0].SumValue;
  grid1.Columns[9].Footers[1].Value := formatfloat('0,.', valor);
end;

procedure TfrmVentas.nav1Click(Sender: TObject; Button: TNavigateBtn);
begin
  inherited;
  case Button of

    nbInsert:
      begin
        tblVentas.Append;

      end;
    nbRefresh:
      begin
        if tblVentas.Transaction.InTransaction then
          tblVentas.Transaction.CommitRetaining;
        tblVentas.Refresh;

      end;

  end;
end;

procedure TfrmVentas.nav2Click(Sender: TObject; Button: TNavigateBtn);
begin
  inherited;

  case Button of
    // nbFirst: ;
    // nbPrior: ;
    // nbNext: ;
    // nbLast: ;
    nbInsert:
      tblDetalles.Append;
    // nbDelete: ;
    // nbEdit: ;
    // nbPost: ;
    // nbCancel: ;
    nbRefresh:
      begin
        if tblDetalles.Transaction.InTransaction then
          tblDetalles.Transaction.CommitRetaining;
        tblDetalles.Refresh;

      end;
    // nbApplyUpdates: ;
    // nbCancelUpdates: ;
  end;

end;

procedure TfrmVentas.Refresh(aTable: TIBTable);
var
  i: TBookmark;
begin
  // actualizar la tabla
  with aTable do
  begin
    i := GetBookmark;
    Refresh;
    if BookmarkValid(i) then
      Bookmark := i;

    FreeBookmark(i);
  end;

end;

procedure TfrmVentas.tblDetallesAfterRefresh(DataSet: TDataSet);
// var
// suma: integer;
begin

  inherited;
  grid1.SumList.RecalcAll;
  //
  // suma := grid1.Columns[7].Footers[0].SumValue + grid1.Columns[8].Footers[0]
  // .SumValue + grid1.Columns[9].Footers[0].SumValue;
  //
  // grid1.Columns[9].Footers[1].Value := IntToStr(suma)
end;

procedure TfrmVentas.tblDetallesNewRecord(DataSet: TDataSet);
begin
  inherited;

  if tblDetalles.RecordCount > 10 then
  begin
    showmessage('Limite de filas para esta factura');
    Exit;

  end;

  // asignar la venta a los detalles
  if tblVentas.Transaction.InTransaction then
    tblVentas.Transaction.CommitRetaining;
  // Refresh(tblventas);
  tblDetallesVENTAS_ID.Value := tblVentasID.Value;
end;

procedure TfrmVentas.tblVentasAfterPost(DataSet: TDataSet);
begin
  inherited;
  // if tblVentas.State in dsWriteModes then
  // begin
  // if tblVentas.Transaction.InTransaction then
  // tblVentas.Transaction.CommitRetaining;
  //
  // DataSet.Refresh;
  // end;

  // enviar la info a base
  if tblVentas.Transaction.InTransaction then
    tblVentas.Transaction.CommitRetaining;
  // actualizarTabla(tblventas);

end;

procedure TfrmVentas.tblVentasNewRecord(DataSet: TDataSet);
begin
  inherited;
  // registrar los valores predefinidos
  tblVentasCONDICION.Value := 'CONT';
  tblVentasESTADO.Value := 'GENE';
  tblVentasPRECIO_MAYORISTA.Value := 1; // mayorista por defecto
  // end;
end;

procedure TfrmVentas.tmr1Timer(Sender: TObject);
begin
  inherited;

  if self.chkTimer.Checked then
  begin

    if comm1.Active then
      comm1.SendChar(#5);

  end;

end;

end.
