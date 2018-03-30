unit ufrmabmventas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmDatos, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Data.DB, IBCustomDataSet, IBQuery,
  Vcl.PlatformDefaultStyleActnCtrls, System.Actions, Vcl.ActnList, Vcl.ActnMan,
  dr2gcomponentes;

type
  TfrmabmVentas = class(TfrmDatos)
    grid1: TDBGridEh;
    qryVentas: TIBQuery;
    dsVentas: TDataSource;
    qryVentasID: TLargeintField;
    qryVentasFECHA: TDateTimeField;
    qryVentasRUC: TIBStringField;
    qryVentasRAZON_SOCIAL: TIBStringField;
    qryVentasCONDICION: TIBStringField;
    qryVentasDIRECCION: TIBStringField;
    qryVentasTELEFONO: TIBStringField;
    qryVentasNOTA_REMISION: TIBStringField;
    qryVentasOBSERVACION: TIBStringField;
    qryVentasPRECIO_MAYORISTA: TSmallintField;
    qryVentasESTADO: TIBStringField;
    qryVentasNUMERO: TIBStringField;
    actmgr1: TActionManager;
    header1: TDxHeader;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmabmVentas: TfrmabmVentas;

implementation

uses
  datos;

{$R *.dfm}

procedure TfrmabmVentas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryVentas.Close;
  inherited;

end;

procedure TfrmabmVentas.FormCreate(Sender: TObject);
begin
  inherited;
  qryVentas.Open;
end;

end.
