unit ufrmVentas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, System.StrUtils,
  Vcl.Forms, Vcl.Dialogs, ufrmTemplateDatos, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB, JvDataSource,
  IBCustomDataSet, IBTable, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, JvDBControls, Vcl.ComCtrls,
  JvExComCtrls, JvStatusBar, JvExMask, JvToolEdit, System.Actions, Vcl.ActnList,
  IBQuery, myChkBox, ppPrnabl, ppClass, ppCtrls, ppBands, ppCache,
  ppDesignLayer, ppParameter, ppComm, ppRelatv, ppProd, ppReport, ppDB,
  ppDBPipe,
  ppStrtch, ppSubRpt, raCodMod, ppModule, Vcl.AppEvnts, IBStoredProc,
  Vcl.Buttons, nrsemaphore, nrclasses, nrdataproc, nrcomm, nrterminal,
  Vcl.Controls, ppVar, Vcl.ToolWin, JvToolBar, dr2gcomponentes, JvExControls,
  JvLED, JvLabel, JclSysInfo, Vcl.Imaging.pngimage, Vcl.Menus, uinterfaceVentas;

type

  TfrmVentas = class(TfrmDatos, IVentas)
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
    nav1: TJvDBNavigator;
    status1: TJvStatusBar;
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
    actVistaFacturaDia: TAction;
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
    edtFECHA: TJvDBDateEdit;
    ledCero: TJvLED;
    actCapturarBalanza: TAction;
    qryListadoPRECIO_DISTRIBUIDORA: TFloatField;
    qryListadoPRECIO_OTROS: TFloatField;
    dbcbbPRECIO_MAYORISTA: TDBComboBox;
    actBuscarClientes: TAction;
    tblVentasTIMBRADO_NUMERO: TIBStringField;
    grp2: TGroupBox;
    lbl9: TLabel;
    dbedtNUMERO: TDBEdit;
    lbl12: TLabel;
    dbedtTIMBRADO_NUMERO: TDBEdit;
    lbl13: TLabel;
    edtSiguienteFactura: TEdit;
    spFacturaNumero: TIBStoredProc;
    spFacturaNumeroFACTURA_NUMERO: TIBStringField;
    spFacturaNumeroFACTURA_TIMBRADO: TIBStringField;
    spFacturaSiguiente: TIBStoredProc;
    spFacturaSiguienteVALOR: TLargeintField;
    tblDetallesLOTE: TIBStringField;
    actBuscarLotes: TAction;
    grpNav2: TGroupBox;
    grpNav1: TGroupBox;
    ppHeaderBand1: TppHeaderBand;
    chkContado: TmyCheckBox;
    chkCredito: TmyCheckBox;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDireccion: TppDBText;
    ppTelefono: TppDBText;
    ppDBText10: TppDBText;
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
    raProgramInfo22: TraProgramInfo;
    raProgramInfo23: TraProgramInfo;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    prletra: TppParameter;
    bvl1: TBevel;
    procedure FormCreate(Sender: TObject);
    procedure nav1Click(Sender: TObject; Button: TNavigateBtn);
    procedure actBuscarRucExecute(Sender: TObject);
    procedure actBuscarProductoExecute(Sender: TObject);

    procedure tblDetallesAfterRefresh(DataSet: TDataSet);
    procedure btnImprimirClick(Sender: TObject);
    procedure tblDetallesNewRecord(DataSet: TDataSet);
    procedure tblVentasAfterPost(DataSet: TDataSet);
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
    procedure btnCapturarClick(Sender: TObject);
    procedure actCapturarBalanzaExecute(Sender: TObject);
    procedure tblVentasPRECIO_MAYORISTAGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tblVentasPRECIO_MAYORISTASetText(Sender: TField;
      const Text: string);
    procedure grid1Columns3UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure actBuscarClientesExecute(Sender: TObject);
    procedure edtSiguienteFacturaDblClick(Sender: TObject);
    procedure actBuscarLotesExecute(Sender: TObject);
    procedure Generarnotadecreditoparaestafactura1Click(Sender: TObject);
    procedure appevents2Idle(Sender: TObject; var Done: Boolean);
    procedure dsVentasDataChange(Sender: TObject; Field: TField);
    procedure tblDetallesAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    gbuffer: string;
    procedure Refresh(aTable: TIBTable);
    function getTerminal_nombre: string;
    procedure actualizarNumeroFacturaSiguiente;
    procedure actualizarTablaVentas;
    function CalcularSumaVenta(): int64;
  public
    constructor Create(AOwner: TComponent); override;
    function getProducto(codigo: string): string;
    { Public declarations }
    property terminal_nombre: string read getTerminal_nombre;


  end;

var
  frmVentas: TfrmVentas;

implementation

uses
  datos, ufrmBuscarEquivalencia, ufrmBuscarProductos, Num2Let, Controles,
  ufrmVistaRapidaFacturas, ufrmGenerarRecibo, ufrmClientes,
  ufrmLotesDisponibles;

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

procedure TfrmVentas.actBuscarClientesExecute(Sender: TObject);
begin
  inherited;
  // buscar clientes registrados de operaciones anteriores.
  frmClientes := TfrmClientes.Create(Application);
  if frmClientes.ShowModal = mrOk then
  begin
    if tblVentas.State = dsBrowse then
    begin
      tblVentas.Edit;
    end;
    // registrar la seleccion
    dbedtRUC.Text := frmClientes.ruc;
    dbedtRAZON_SOCIAL.Text := frmClientes.razon_social;
    dbedtDIRECCION.Text := frmClientes.direccion;
  end;
  frmClientes.Free;

end;

procedure TfrmVentas.actBuscarLotesExecute(Sender: TObject);
begin
  inherited;
  frmLotesDisponibles := TfrmLotesDisponibles.Create(Application);
  frmLotesDisponibles.producto_id := tblDetallesPRODUCTOS_ID.Value;
  frmLotesDisponibles.update;
  if frmLotesDisponibles.ShowModal = mrOk then
  begin

    if tblDetalles.State in [dsBrowse] then
    begin
      tblDetalles.Edit;
      tblDetallesLOTE.Value := frmLotesDisponibles.lote;
      tblDetalles.post;
    end;

  end;
  FreeAndNil(frmLotesDisponibles);
end;

procedure TfrmVentas.actBuscarProductoExecute(Sender: TObject);
begin
  inherited;

  frmBuscarProductos := TfrmBuscarProductos.Create(self);
  if frmBuscarProductos.ShowModal = mrOk then
  begin
    // si la tabla esta en browser
    if tblDetalles.State = dsBrowse then
    begin
      tblDetalles.Append;
      tblDetallesCANTIDAD.Value := 1;

    end;

    // registrar los datos
    tblDetallesPRODUCTOS_ID.Value := frmBuscarProductos.codigo_producto;
    tblDetallesPRODUCTOS_DESCRIPCION.Value :=
      frmBuscarProductos.tblProductosDESCRIPCION.Value;
    tblDetalles.post;
    Refresh(tblDetalles);

  end;
  FreeAndNil(frmBuscarProductos);
end;

procedure TfrmVentas.actBuscarRucExecute(Sender: TObject);
begin
  inherited;

  if tblVentas.State = dsBrowse then
    tblVentas.Edit;

  frmBuscarEquivalencias := TfrmBuscarEquivalencias.Create(self);
  if frmBuscarEquivalencias.ShowModal = mrOk then
  begin
    tblVentasRUC.Value := frmBuscarEquivalencias.qryEqRUC.Value;
    tblVentasRAZON_SOCIAL.Value :=
      frmBuscarEquivalencias.qryEqRAZON_SOCIAL.Value;

  end;
  FreeAndNil(frmBuscarEquivalencias);

end;

procedure TfrmVentas.actCapturarBalanzaExecute(Sender: TObject);
begin
  inherited;
  // capturar el peso de la balanza y tirar en cantidad
  if (tblDetalles.State in dsWriteModes) then
  begin
    tblDetallesCANTIDAD.Text := edtBALANZA.Text;

  end
  else
  begin
    showmessage('No hay registro activo para insertar el valor de la balanza');

  end;

end;

procedure TfrmVentas.actGenerarReciboDineroExecute(Sender: TObject);
begin
  inherited;

  frmGenerarRecibo := TfrmGenerarRecibo.Create(self);
  frmGenerarRecibo.edtMonto.Text := grid1.Columns[9].Footers[1].Value;
  if frmGenerarRecibo.ShowModal = mrOk then
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
    btnImprimir.Click
  else
    showmessage('No se puede reimprimir esta factura');

end;

procedure TfrmVentas.actVistaFacturaDiaExecute(Sender: TObject);
begin
  inherited;
  frmVistaFacturas := TfrmVistaFacturas.Create(self);
  if frmVistaFacturas.ShowModal = mrOk then
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
  if dbedtEstado.Text = 'EMIT' then
    dbedtEstado.Color := $0091B5FF;
  // mostrar que la factura tiene una nota de credito
  if dbedtEstado.Text = 'EMIT' then
  begin
    dbedtEstado.Hint := 'Esta venta tiene una nota de credito';
    dbedtEstado.ShowHint := true;
  end
  else
  begin
    dbedtEstado.Hint := '';
  end;

  // bloquear para cuando la factura ya fue impresa
  modo := (dbedtEstado.Text = 'GENE');

  btnImprimir.Enabled := modo;
  nav2.Enabled := modo;
  grid1.ReadOnly := not modo;

end;

procedure TfrmVentas.appevents2Idle(Sender: TObject; var Done: Boolean);
begin
  inherited;
//  self.statMain.Panels[0].Text := Num2Let.NumLetra(CalcularSumaVenta,1,1);
end;

/// <summary>
/// Imprimir factura
/// </summary>
procedure TfrmVentas.btnImprimirClick(Sender: TObject);
var
  valor: Int64;
  texto_valor: string;
begin
  inherited;
  // veerificar que las tablas esten cerradas.
  with tblVentas.Transaction do
  begin
    if InTransaction then
      CommitRetaining;
  end;
  with tblDetalles.Transaction do
  begin
    if InTransaction then
      CommitRetaining;

  end;
  valor := CalcularSumaVenta();

  texto_valor := NumLetra(valor, 1, 1);

  if Application.MessageBox(PWideChar('Confirma imprimir esta factura?' + #13#10
    + 'Total a facturar: ' + valor.ToString() + ' Gs.' + #13#10 + texto_valor),
    'Imprimir', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
  begin
    // if tblVentas.Transaction.InTransaction then
    // tblVentas.Transaction.CommitRetaining;
    // if tblDetalles.Transaction.InTransaction then
    // tblDetalles.Transaction.CommitRetaining;

    // marcar como impreso
    with tblVentas do
    begin

      // cambiar el estado si esta en edicion
      if (tblVentasESTADO.Text <> 'IMPR') then
      begin
        Edit;
        tblVentasESTADO.Text := 'IMPR';
        // REGISTRAR EL NUMERO DE FACTURA Y TIMBRADO
        tblVentasNUMERO.Text := spFacturaNumero.ParamByName
          ('FACTURA_NUMERO').Text;
        tblVentasTIMBRADO_NUMERO.Text := spFacturaNumero.ParamByName
          ('FACTURA_TIMBRADO').Text;
        // grabar cambios
        post;
        Transaction.CommitRetaining;
        // ACTUALIZAR SIGUIENTE FACTURA SOLO SI ESTA HA CAMBIADO DE ESTADO A 'IMPR'
        actualizarNumeroFacturaSiguiente;
      end;

    end;

    // REGISTRAR SIGUIENTE NUMERO DE FACTURA
    // WITH spFacturaSiguiente DO
    // BEGIN
    // ParamByName('TERMINAL_NOMBRE').Text := terminal_nombre;
    // ExecProc;
    // if Transaction.InTransaction then
    // Transaction.CommitRetaining;
    //
    // END;

    // generar modelo de factura
    report1.Parameters['prletras'].Value := texto_valor;
    report1.PrintReport;
    // actualizar listado
    actualizarTablaVentas;

  end;

end;

procedure TfrmVentas.comm1AfterReceive(Com: TObject; Buffer: Pointer;
  Received: Cardinal);
var
  s: string;
  i, l, p, p1: integer;
  ch: pansichar;
  datapacket: string;
const
  enq: Char = #5;
  ack: Char = #6;
  stx: Char = #2;
  etx: Char = #3;
  wack: Char = #11; // wakeup
  nack: Char = #15;

begin
  inherited;

  if pansichar(Buffer)[0] = #2 then
  begin
    gbuffer := '';
  end
  else if pansichar(Buffer)[0] = #3 then
  begin
    edtBALANZA.Text := FormatFloat(',.000', strtofloat(gbuffer) / 1000);
    gbuffer := '';
    // comm1.SendChar(#6);
  end
  else
  begin

    gbuffer := gbuffer + pansichar(Buffer);

  end;

end;

procedure TfrmVentas.btnCapturarClick(Sender: TObject);
begin
  inherited;
  // ACTIVAR EL PUERTO DE LA BALANZA
  if comm1.Active = false then
    comm1.Active := true;
  // ENVIAR EL COMANDO A LA BALANZA
  comm1.SendChar(#5);

end;

procedure TfrmVentas.btnCerrarClick(Sender: TObject);
begin
  inherited;
  pnl1.Visible := false;
end;

constructor TfrmVentas.Create(AOwner: TComponent);
begin
  inherited;
  gbuffer := '';
end;

procedure TfrmVentas.actualizarTablaVentas;
begin
  tblVentas.close;
  tblVentas.Filtered := false;
  tblVentas.open;
  tblVentas.Last;
end;

/// <summary>
/// traer la informacion de la siguiente factura a utilizar
/// </summary>
procedure TfrmVentas.actualizarNumeroFacturaSiguiente;
begin

  spFacturaNumero.ParamByName('TERMINAL_NOMBRE').Text := terminal_nombre;
  spFacturaNumero.ExecProc;
  edtSiguienteFactura.Text := spFacturaNumero.ParamByName
    ('FACTURA_NUMERO').Text;
  if spFacturaNumero.Transaction.InTransaction then
    spFacturaNumero.Transaction.CommitRetaining;

  with tblVentas.Transaction do
  begin
    if (InTransaction) then
    begin
      CommitRetaining;
    end;
  end;

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

procedure TfrmVentas.dsDetallesStateChange(Sender: TObject);
begin
  inherited;
  // actualizar despues de una edicion

  if tblDetalles.State = dsBrowse then
  BEGIN
    grid1.SumList.RecalcAll;

  END;
end;

procedure TfrmVentas.dsVentasDataChange(Sender: TObject; Field: TField);
begin
  inherited;
        self.statMain.Panels[0].Text := Num2Let.NumLetra(CalcularSumaVenta,1,1);
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

procedure TfrmVentas.edtSiguienteFacturaDblClick(Sender: TObject);
begin
  inherited;
  actualizarNumeroFacturaSiguiente;
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
  // abrir tablas
  tblVentas.open;
  tblDetalles.open;
  qryListado.open;

  // comm1.Active := true;
  // grid1.SumList.RecalcAll;

  tblVentas.Last;
  actualizarNumeroFacturaSiguiente;

  // apuntar al siguiente
end;

procedure TfrmVentas.Generarnotadecreditoparaestafactura1Click(Sender: TObject);
begin
  inherited;
  showmessage('generado nota de venta');
end;

function TfrmVentas.getProducto(codigo: string): string;
begin

  //traer la informacion del producto


end;

function TfrmVentas.CalcularSumaVenta(): Int64;
var
  suma : Int64;
begin
  suma := 0;
  // sumar los valores de las columnas.
  // sumatoria
  grid1.SumList.RecalcAll;
  // capturar monto de factura
  suma := suma + grid1.Columns[7].Footers[0].sumValue;
  suma := suma + grid1.Columns[8].Footers[0].SumValue;
  suma := suma + grid1.Columns[9].Footers[0].SumValue;
  // retornar valor
  result := suma;
end;

function TfrmVentas.getTerminal_nombre: string;
begin
  result := GetLocalComputerName.ToUpper;
end;

procedure TfrmVentas.grid1Columns3UpdateData(Sender: TObject; var Text: string;
  var Value: Variant; var UseText, Handled: Boolean);
begin
  inherited;
  // actualizar datos del producto
  tblDetallesPRODUCTOS_DESCRIPCION.Value := qryListadoDESCRIPCION.Text;
  tblDetallesPRODUCTOS_CODIGO.Value := qryListadoCODIGO.Value;

end;

procedure TfrmVentas.grid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = VK_DOWN) then begin
    //Application.MessageBox('reset', 'tab', MB_OK + MB_DEFBUTTON2);
    //cuando se presiona tab, actualizar el precio
//    if tblDetalles.State in dsEditModes then begin
//      tblDetalles.Post;
//      if tblDetalles.Transaction.InTransaction then
//        tblDetalles.Transaction.CommitRetaining;
//
//
//    end;


//     self.statMain.Panels[0].Text := Num2Let.NumLetra(CalcularSumaVenta,1,1);

  end;

  // if ((Key = VK_RETURN) or (Key = VK_TAB)) then
  //
  // Refresh(tblDetalles);
end;

procedure TfrmVentas.grid1SumListAfterRecalcAll(Sender: TObject);
var
  valor: Int64;
begin
  inherited;
  // sumar laos campos.
  valor := grid1.Columns[7].Footers[0].SumValue +
  grid1.Columns[8].Footers[0].SumValue +
  grid1.Columns[9].Footers[0].SumValue;
  grid1.Columns[9].Footers[1].Value := FormatFloat('0,.', valor);


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
        tblVentas.Refresh;

      end;
    nbPost:
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

    // nbDelete:
    // BEGIN
    // tblDetalles.Delete;
    // actualizarTabla(tblDetalles);
    //
    // END;
    // nbEdit: ;
    nbPost:
      BEGIN
        // ACTUALIZAR AL GRABAR
        IF tblDetalles.State IN dsWriteModes THEN
          tblDetalles.post;
        actualizarTabla(tblDetalles);
        self.statMain.Panels[0].Text := Num2Let.NumLetra(CalcularSumaVenta,1,1);
      END;
    nbCancel:
      begin
        IF tblDetalles.State IN dsWriteModes THEN
          tblDetalles.Cancel;
        actualizarTabla(tblDetalles);

      END;
    nbRefresh:
      begin
        if tblDetalles.Transaction.InTransaction then
          tblDetalles.Transaction.CommitRetaining;
        actualizarTabla(tblDetalles);
        self.statMain.Panels[0].Text := Num2Let.NumLetra(CalcularSumaVenta,1,1);
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
    DisableControls;
    i := GetBookmark;
    Refresh;
    if BookmarkValid(i) then
      Bookmark := i;

    FreeBookmark(i);
    EnableControls;
  end;

end;

procedure TfrmVentas.tblDetallesAfterPost(DataSet: TDataSet);
begin
  inherited;
  if tblDetalles.Transaction.InTransaction then
    tblDetalles.Transaction.CommitRetaining;
end;

procedure TfrmVentas.tblDetallesAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  
  grid1.SumList.RecalcAll;
end;

procedure TfrmVentas.tblDetallesNewRecord(DataSet: TDataSet);
begin
  inherited;

  if tblDetalles.RecordCount > 10 then
  begin
    //hasta 10 items por factura
    showmessage('Limite de filas para esta factura');
    //salir de la rutina
    exit;
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

procedure TfrmVentas.tblVentasPRECIO_MAYORISTAGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  // convertir texto en numero.
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
  // text = inttostr(sender.AsInteger);

end;

procedure TfrmVentas.tblVentasPRECIO_MAYORISTASetText(Sender: TField;
  const Text: string);
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
  // Sender.Value := StrToInt(Text);
end;

procedure TfrmVentas.tmr1Timer(Sender: TObject);
begin
  inherited;

  btnCapturar.Click;

end;

end.
