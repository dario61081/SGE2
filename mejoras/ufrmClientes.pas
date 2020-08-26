unit ufrmClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.StdCtrls, Vcl.ExtCtrls, System.Actions, Vcl.ActnList,
  Vcl.DBCtrls, Vcl.ComCtrls, JvExComCtrls, JvStatusBar, dr2gcomponentes,
  IBCustomDataSet, IBTable, JvComCtrls, JvExExtCtrls, JvSplitter;

type
  TfrmClientes = class(TForm)
    gridClientes: TDBGridEh;
    dsClientes: TDataSource;
    pnl1: TPanel;
    dbnvgr1: TDBNavigator;
    header1: TDxHeader;
    btnSeleccionar: TButton;
    tblClientes: TIBTable;
    page1: TJvPageControl;
    tsCliente: TTabSheet;
    page2: TJvPageControl;
    tsDirecciones: TTabSheet;
    jvspltr1: TJvSplitter;
    pnl2: TPanel;
    pnl3: TPanel;
    dbnvgr2: TDBNavigator;
    tblDirecciones: TIBTable;
    gridDirecciones: TDBGridEh;
    dsDirecciones: TDataSource;
    tblDireccionesCODIGO: TLargeintField;
    tblDireccionesCLIENTES_CODIGO: TLargeintField;
    tblDireccionesDIRECCION: TIBStringField;
    tblClientesRUC: TIBStringField;
    tblClientesRAZON_SOCIAL: TIBStringField;
    tblClientesDIRECCION: TIBStringField;
    tblClientesFECHA_CREADO: TDateTimeField;
    tblClientesFECHA_MODIF: TDateTimeField;
    tblClientesCONDICION_PREDEFINIDO: TIBStringField;
    tblClientesCODIGO: TLargeintField;
    tblDireccionesSUCURSAL: TIBStringField;
    tblDireccionesCIUDAD: TIBStringField;
    tblDireccionesBARRIO: TIBStringField;
    tblDireccionesTELEFONO: TIBStringField;
    procedure btnSeleccionarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tblDireccionesBeforeInsert(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    Frazon_social: string;
    Fruc: string;
    Fdireccion: string;
    procedure Setrazon_social(const Value: string);
    procedure Setruc(const Value: string);
    procedure Setdireccion(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    property ruc: string read Fruc write Setruc;
    property razon_social: string read Frazon_social write Setrazon_social;
    property direccion: string read Fdireccion write Setdireccion;
  end;

var
  frmClientes: TfrmClientes;

implementation

uses
  datos;

{$R *.dfm}

procedure TfrmClientes.btnSeleccionarClick(Sender: TObject);
begin
     ruc := dsClientes.DataSet.FieldByName('ruc').Text;
     razon_social := dsClientes.DataSet.FieldByName('razon_social').Text;
     direccion := dsClientes.DataSet.FieldByName('direccion').Text;
     ModalResult := mrOk;
end;

procedure TfrmClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  if tblDirecciones.Transaction.InTransaction then
  tbldirecciones.Transaction.CommitRetaining;
  if tblClientes.Transaction.InTransaction then
  tblClientes.Transaction.CommitRetaining;

  tbldirecciones.Close;
  tblClientes.Close;

end;

procedure TfrmClientes.FormCreate(Sender: TObject);
begin
  tblClientes.Open;
  tblDirecciones.Open;
end;

procedure TfrmClientes.Setdireccion(const Value: string);
begin
  Fdireccion := Value;
end;

procedure TfrmClientes.Setrazon_social(const Value: string);
begin
  Frazon_social := Value;
end;

procedure TfrmClientes.Setruc(const Value: string);
begin
  Fruc := Value;
end;

procedure TfrmClientes.tblDireccionesBeforeInsert(DataSet: TDataSet);
begin
  if DataSet.FieldByName('clientes_codigo').IsNull then
    dataset.FieldByName('clientes_codigo').Value := tblClientesCODIGO.Value;
end;

end.
