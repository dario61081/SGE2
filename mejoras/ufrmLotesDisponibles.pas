unit ufrmLotesDisponibles;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmTemplateModal, Vcl.ImgList,
  Vcl.StdCtrls, dr2gcomponentes, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, IBCustomDataSet, IBQuery, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh;

type
  TfrmLotesDisponibles = class(TFormModalMessage)
    grid1: TDBGridEh;
    qryLotesDisponibles: TIBQuery;
    dsLotesDisponibles: TDataSource;
    qryLotesDisponiblesLOTE: TIBStringField;
    qryLotesDisponiblesCANTIDAD: TFloatField;
    qryLotesDisponiblesSALDO: TFloatField;
    qryLotesDisponiblesESTADO: TIBStringField;
    qryLotesDisponiblesFECHA_FABRICACION: TDateTimeField;
    qryLotesDisponiblesFECHA_VENCIMIENTO: TDateTimeField;
    qryLotesDisponiblesOBSERVACION: TIBStringField;
    procedure grid1Columns2AdvDrawDataCell(Sender: TCustomDBGridEh; Cell,
      AreaCell: TGridCoord; Column: TColumnEh; const ARect: TRect;
      var Params: TColCellParamsEh; var Processed: Boolean);
    procedure btnAceptarClick(Sender: TObject);
  private
    Fproducto_id: integer;
    Flote: string;
    procedure Setproducto_id(const Value: integer);
    procedure Setlote(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    property producto_id: integer read Fproducto_id write Setproducto_id;
    procedure update;
    property lote: string read Flote write Setlote;
  end;

var
  frmLotesDisponibles: TfrmLotesDisponibles;

implementation

uses
  datos;

{$R *.dfm}

{ TfrmLotesDisponibles }

procedure TfrmLotesDisponibles.btnAceptarClick(Sender: TObject);
begin
  inherited;
  lote := qryLotesDisponiblesLOTE.Value;
end;

procedure TfrmLotesDisponibles.grid1Columns2AdvDrawDataCell(
  Sender: TCustomDBGridEh; Cell, AreaCell: TGridCoord; Column: TColumnEh;
  const ARect: TRect; var Params: TColCellParamsEh; var Processed: Boolean);
begin
  inherited;
  if Column.Field.AsInteger = 0 then
    params.Background := clYellow ;

  if column.Field.AsInteger > 0 then
    Params.Background := clWebLightGreen;



end;

procedure TfrmLotesDisponibles.Setlote(const Value: string);
begin
  Flote := Value;
end;

procedure TfrmLotesDisponibles.Setproducto_id(const Value: integer);
begin
  Fproducto_id := Value;
end;

procedure TfrmLotesDisponibles.update;
begin
  with qryLotesDisponibles do begin
    close;
    ParamByName('producto_id').Value := producto_id;
    open;



  end;

end;

end.
