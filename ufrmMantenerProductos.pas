unit ufrmMantenerProductos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmDatos, Data.DB, IBCustomDataSet,
  IBTable, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.ComCtrls, dr2gcomponentes, Vcl.ToolWin;

type
  TfrmMantenerProductos = class(TfrmDatos)
    tblProd: TIBTable;
    tblPrecios: TIBTable;
    dsProd: TDataSource;
    dsPrecios: TDataSource;
    tblProdID: TLargeintField;
    tblProdCODIGO: TIBStringField;
    tblProdORIGEN: TIBStringField;
    tblProdDESCRIPCION: TIBStringField;
    tblProdACTIVO: TSmallintField;
    tblProdIMPUESTO: TIBStringField;
    tblPreciosID: TLargeintField;
    tblPreciosPRODUCTOS_ID: TLargeintField;
    tblPreciosPRECIO_VENTA: TFloatField;
    tblPreciosMAYORISTA: TSmallintField;
    header1: TDxHeader;
    pgc1: TPageControl;
    TabSheet1: TTabSheet;
    gridProductos: TDBGridEh;
    pnl1: TPanel;
    tlb1: TToolBar;
    dbnvgrProd: TDBNavigator;
    pgc2: TPageControl;
    tsPrecios: TTabSheet;
    spl1: TSplitter;
    gridPrecios: TDBGridEh;
    dbnvgrPrecios: TDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tblPreciosNewRecord(DataSet: TDataSet);
    procedure dbnvgrProdClick(Sender: TObject; Button: TNavigateBtn);
    procedure dbnvgrPreciosClick(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMantenerProductos: TfrmMantenerProductos;

implementation

uses
  datos;

{$R *.dfm}

procedure TfrmMantenerProductos.dbnvgrPreciosClick(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
  case Button of
    nbFirst: ;
    nbPrior: ;
    nbNext: ;
    nbLast: ;
    nbInsert: tblPrecios.Append ;
    nbDelete: ;
    nbEdit: ;
    nbPost: ;
    nbCancel: ;
    nbRefresh: ;
    nbApplyUpdates: ;
    nbCancelUpdates: ;
  end;
  end;

procedure TfrmMantenerProductos.dbnvgrProdClick(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
  case Button of
    nbFirst: ;
    nbPrior: ;
    nbNext: ;
    nbLast: ;
    nbInsert:  tblProd.Append;
    nbDelete: ;
    nbEdit: ;
    nbPost: ;
    nbCancel: ;
    nbRefresh: ;
    nbApplyUpdates: ;
    nbCancelUpdates: ;
  end;
end;

procedure TfrmMantenerProductos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if tblProd.Transaction.InTransaction then
  tblprod.Transaction.CommitRetaining;
  if tblPrecios.Transaction.InTransaction then
  tblPrecios.Transaction.CommitRetaining;




  inherited;

end;

procedure TfrmMantenerProductos.FormCreate(Sender: TObject);
begin
  inherited;
  tblProd.Open;
  tblPrecios.Open;
end;

procedure TfrmMantenerProductos.tblPreciosNewRecord(DataSet: TDataSet);
begin
  inherited;
  tblPreciosPRODUCTOS_ID.Value := tblProdID.Value;
end;

end.
