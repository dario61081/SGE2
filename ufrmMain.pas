unit ufrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, JvExComCtrls, JvStatusBar,
  Vcl.Menus, JvBackgrounds, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.ImgList, JvCoolBar,
  Vcl.ToolWin, Vcl.ActnCtrls, Vcl.StdActns, JvComponentBase, JvPluginManager,
  JvExControls, JvOutlookBar, Vcl.ExtCtrls, EhLibADO;

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
  private
  protected
    procedure ClientWndProc(var Message: TMessage); override;
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frmMain: TfrmMain;

implementation

uses
  ufrmVentas, ufrmImprimirListadoProductos, ufrmVentasLista, ufrmabmventas,
  ufrmRendicionVentas, ufrmVentasDia, ufrmMantenerProductos;

{$R *.dfm}

procedure TfrmMain.actFacturacionVentasExecute(Sender: TObject);
begin

  frmVentas := TfrmVentas.Create(Application);
  frmVentas.Show;

end;

procedure TfrmMain.actGestionPrecioProductosExecute(Sender: TObject);
begin
  // gestion de productos y precios
  frmMantenerProductos := TfrmMantenerProductos.Create(Application);
  frmMantenerProductos.Show;
end;

procedure TfrmMain.actGestionVentasExecute(Sender: TObject);
begin

  // abrir gestion de ventas
  frmabmVentas := TfrmabmVentas.Create(Application);
  frmabmVentas.Show;

end;

procedure TfrmMain.actImprimirListadoProductosExecute(Sender: TObject);
begin
  frmImprimirProductos := TfrmImprimirProductos.Create(self);
  frmImprimirProductos.ShowModal;
  FreeAndNil(frmImprimirProductos);
end;

procedure TfrmMain.actProductosExecute(Sender: TObject);
begin

  frmMantenerProductos := TfrmMantenerProductos.Create(Application);
  frmMantenerProductos.Show;

end;

procedure TfrmMain.actRendiciondeVentasExecute(Sender: TObject);
begin

  frmRendicionVentas := TfrmRendicionVentas.Create(Application);
  frmRendicionVentas.Show;

end;

procedure TfrmMain.actResumenVentasExecute(Sender: TObject);
begin
  /// mostrar
  ///
  frmVentasDia := tfrmVentasDia.Create(self);
  frmVentasDia.Show;

end;

procedure TfrmMain.actVentasListaExecute(Sender: TObject);
begin
  if not Assigned(frmVentasLista) then
    frmVentasLista := TfrmVentasLista.Create(self);
  frmVentasLista.Show;

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

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  acttbMain.ParentBackground := true;

  ForceDirectories('.\etc');
  ForceDirectories('.\sys');
  ForceDirectories('.\var');

  with plugin1 do
  begin
    PluginFolder := '.\etc';
    LoadPlugins;

  end;

end;

procedure TfrmMain.Salir1Click(Sender: TObject);
begin
  close;
end;

end.
