unit ufrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, JvExComCtrls, JvStatusBar,
  Vcl.Menus, JvBackgrounds, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.ImgList, JvCoolBar,
  Vcl.ToolWin, Vcl.ActnCtrls, Vcl.StdActns, JvComponentBase, JvPluginManager,
  JvExControls, JvOutlookBar, Vcl.ExtCtrls, EhLibADO, JvAppInst, JvBaseDlg,
  JvTipOfDay, JvAppStorage, Vcl.Imaging.pngimage, Vcl.Tabs, Vcl.ShellAnimations,
  Vcl.XPMan;

type
  TfrmMain = class(TForm)
    mm1: TMainMenu;
    Sistema1: TMenuItem;
    Herramientas1: TMenuItem;
    status1: TJvStatusBar;
    background1: TJvBackground;
    actmgr1: TActionManager;
    actFacturacionVentas: TAction;
    Modulos1: TMenuItem;
    Ventas1: TMenuItem;
    Facturacionventas1: TMenuItem;
    Depositos1: TMenuItem;
    actGestionDepositos: TAction;
    actProductos: TAction;
    Gestindedepositos1: TMenuItem;
    Productos1: TMenuItem;
    Gestindeproductos1: TMenuItem;
    actImprimirListadoProductos: TAction;
    Listados1: TMenuItem;
    Imprimirlistadodeproductos1: TMenuItem;
    Salir1: TMenuItem;
    actVentasLista: TAction;
    N1: TMenuItem;
    Listadodeventas1: TMenuItem;
    ilsmall: TImageList;
    acttbMain: TActionToolBar;
    JvCoolBar1: TJvCoolBar;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    EditUndo1: TEditUndo;
    EditDelete1: TEditDelete;
    actGestionVentas: TAction;
    Gestindedepositos2: TMenuItem;
    N2: TMenuItem;
    actRendiciondeVentas: TAction;
    RendiciondeVentas1: TMenuItem;
    actResumenVentas: TAction;
    N3: TMenuItem;
    Resumendeventas1: TMenuItem;
    plugin1: TJvPluginManager;
    outlook1: TJvOutlookBar;
    actGestionPrecios: TAction;
    spl1: TSplitter;
    actGestionPrecioProductos: TAction;
    JvAppInstances1: TJvAppInstances;
    actFacturasyTimbrados: TAction;
    actListaFacturasClientes: TAction;
    Listadodefacturasdeclientes1: TMenuItem;
    actLotesProductos: TAction;
    JvTipOfDay1: TJvTipOfDay;
    JvAppStorage1: TJvAppStorage;
    pnlTask: TPanel;
    imgLogo: TImage;
    XPManifest1: TXPManifest;
    ShellResources1: TShellResources;
    actGenerarNotaCredito: TAction;
    actListadoNotasCreditos: TAction;
    actGestionClientes: TAction;
    procedure FormCreate(Sender: TObject);
    procedure actFacturacionVentasExecute(Sender: TObject);
    procedure actImprimirListadoProductosExecute(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure actVentasListaExecute(Sender: TObject);
    procedure actGestionVentasExecute(Sender: TObject);
    procedure actRendiciondeVentasExecute(Sender: TObject);
    procedure actResumenVentasExecute(Sender: TObject);
    procedure actProductosExecute(Sender: TObject);
    procedure actGestionPrecioProductosExecute(Sender: TObject);
    procedure actFacturasyTimbradosExecute(Sender: TObject);
    procedure actListaFacturasClientesExecute(Sender: TObject);
    procedure actLotesProductosExecute(Sender: TObject);
    procedure JvAppInstances1Rejected(Sender: TObject);
    procedure actGenerarNotaCreditoExecute(Sender: TObject);
    procedure actListadoNotasCreditosExecute(Sender: TObject);
    procedure actGestionClientesExecute(Sender: TObject);
  private
    Fterminal: string;
    procedure SetTerminalName(const Value: string);

  protected
    procedure ClientWndProc(var Message: TMessage); override;
    procedure CMWindowhook(var Message: TMessage); message CM_WINDOWHOOK;
    procedure CMChanged(var Message: TCMChanged); message CM_CHANGED;
    procedure CMEnter(var Message: TCMEnter); message CM_ENTER;

    { Private declarations }
  public
    { Public declarations }
    property terminal: string read Fterminal write SetTerminalName;

  end;

var
  frmMain: TfrmMain;

implementation

uses
  ufrmVentas, ufrmImprimirListadoProductos, ufrmVentasLista, ufrmabmventas,
  ufrmRendicionVentas, ufrmVentasDia, ufrmMantenerProductos, JclSysInfo,
  ufrmFacturasTimbrados, ufrmFacturasClientes, ufrmlotes, uFrmLoteProductos,
  ufrmNotaCredito, ufrmNotaCreditoManual, ufrmListadoNotaCredito, ufrmClientes;

{$R *.dfm}

procedure TfrmMain.actFacturacionVentasExecute(Sender: TObject);
begin
  // gestion de facturacion
  TfrmVentas.Create(Application).show;
end;

procedure TfrmMain.actFacturasyTimbradosExecute(Sender: TObject);
begin
  // gestion de timbrados
  TfrmFacturasTimbrados.Create(Application).show;
end;

procedure TfrmMain.actGenerarNotaCreditoExecute(Sender: TObject);
begin
  // TfrmNotaCredito.Create(Application).Show;
  TfrmNotaCreditoManual.Create(Application).show;
end;

procedure TfrmMain.actGestionClientesExecute(Sender: TObject);
begin
    tfrmclientes.Create(application).show;
end;

procedure TfrmMain.actGestionPrecioProductosExecute(Sender: TObject);
begin
  // gestion de productos y precios
  TfrmMantenerProductos.Create(Application).show;

end;

procedure TfrmMain.actGestionVentasExecute(Sender: TObject);
begin
  // abrir gestion de ventas
  TfrmabmVentas.Create(Application).show;
end;

procedure TfrmMain.actImprimirListadoProductosExecute(Sender: TObject);
begin
  // imprimir lista de productos
  frmImprimirProductos := TfrmImprimirProductos.Create(self);
  frmImprimirProductos.ShowModal;
  FreeAndNil(frmImprimirProductos);
end;

procedure TfrmMain.actListadoNotasCreditosExecute(Sender: TObject);
begin
  // iniciar formulario de listado de notas de credito.
  TfrmListadoNotaCredito.Create(Application).show;
end;

procedure TfrmMain.actListaFacturasClientesExecute(Sender: TObject);
begin
  // facturas del proveedor
  TfrmResumenFacturasProveedores.Create(Application).show;
end;

procedure TfrmMain.actLotesProductosExecute(Sender: TObject);
begin
  // lotes de productos
  TfrmLoteProductos.Create(Application).show;
end;

procedure TfrmMain.actProductosExecute(Sender: TObject);
begin
  // mantenimiento de productos
  TfrmMantenerProductos.Create(Application).show;
end;

procedure TfrmMain.actRendiciondeVentasExecute(Sender: TObject);
begin

  frmRendicionVentas := TfrmRendicionVentas.Create(Application);
  frmRendicionVentas.show;

end;

procedure TfrmMain.actResumenVentasExecute(Sender: TObject);
begin
  tfrmVentasDia.Create(application).show;

end;

procedure TfrmMain.actVentasListaExecute(Sender: TObject);
begin
  if not Assigned(frmVentasLista) then
    frmVentasLista := TfrmVentasLista.Create(application);
  frmVentasLista.show;

end;

procedure TfrmMain.ClientWndProc(var Message: TMessage);
var
  ExStyle: DWORD;
begin
  case Message.Msg of
    $3F:
      begin
        ExStyle := GetWindowLongPtr(ClientHandle, GWL_EXSTYLE);
        ExStyle := ExStyle and not WS_EX_CLIENTEDGE;
        SetWindowLongPtr(ClientHandle, GWL_EXSTYLE, ExStyle);
        SetWindowPos(ClientHandle, 0, 0, 0, 0, 0, SWP_FRAMECHANGED or
          SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE or SWP_NOZORDER);
      end;
  else
    inherited;
  end;

end;

procedure TfrmMain.CMChanged(var Message: TCMChanged);
begin

end;

procedure TfrmMain.CMEnter(var Message: TCMEnter);
begin

end;

procedure TfrmMain.CMWindowhook(var Message: TMessage);
begin

end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin

  // with FormatSettings do begin
  // CurrencyString := 'Gs.';
  // ThousandSeparator := '.';
  // DecimalSeparator := ',';
  // end;
  // if application.UpdateFormatSettings then ShowMessage('Se ha aplicado el formato');

  acttbMain.ParentBackground := true;

  ForceDirectories('.\etc');
  ForceDirectories('.\sys');
  ForceDirectories('.\var');

  with plugin1 do
  begin
    PluginFolder := '.\etc';
    LoadPlugins;
  end;

  SetTerminalName(GetLocalComputerName.ToUpper);

end;

procedure TfrmMain.JvAppInstances1Rejected(Sender: TObject);
begin
  showmessage('Ya existe una instancia de esta aplicación.');
end;

procedure TfrmMain.Salir1Click(Sender: TObject);
begin
  close;
end;

// Establer el nombre de la pc en panel maestro
procedure TfrmMain.SetTerminalName(const Value: string);
begin
  Fterminal := Value;
  status1.Panels[1].Text := Value;
end;

end.
