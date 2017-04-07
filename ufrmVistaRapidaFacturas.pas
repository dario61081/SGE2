unit ufrmVistaRapidaFacturas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmmensaje, Vcl.StdCtrls,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB,
  IBCustomDataSet, IBQuery, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TfrmVistaFacturas = class(TfrmMensaje)
    grid1: TDBGridEh;
    qryVenta: TIBQuery;
    dsVenta: TDataSource;
    lbl9: TLabel;
    qryVentaID: TLargeintField;
    qryVentaFECHA: TDateTimeField;
    qryVentaRUC: TIBStringField;
    qryVentaRAZON_SOCIAL: TIBStringField;
    qryVentaCONDICION: TIBStringField;
    qryVentaDIRECCION: TIBStringField;
    qryVentaTELEFONO: TIBStringField;
    qryVentaNOTA_REMISION: TIBStringField;
    qryVentaOBSERVACION: TIBStringField;
    qryVentaPRECIO_MAYORISTA: TSmallintField;
    qryVentaESTADO: TIBStringField;
    qryVentaNUMERO: TIBStringField;
    lbl1: TLabel;
    procedure grid1Columns1AdvDrawDataCell(Sender: TCustomDBGridEh; Cell,
      AreaCell: TGridCoord; Column: TColumnEh; const ARect: TRect;
      var Params: TColCellParamsEh; var Processed: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVistaFacturas: TfrmVistaFacturas;

implementation

uses
  datos;

{$R *.dfm}

procedure TfrmVistaFacturas.grid1Columns1AdvDrawDataCell(
  Sender: TCustomDBGridEh; Cell, AreaCell: TGridCoord; Column: TColumnEh;
  const ARect: TRect; var Params: TColCellParamsEh; var Processed: Boolean);
begin
  inherited;


  if Column.Field.Value = 'GENE' then Params.Background := $00D5FFAA;
  if Column.Field.Value = 'IMPR' then Params.Background := $00E8FFFF;
  if Column.Field.Value = 'ANUL' then Params.Background := $00C6C6FF;
end;

end.
