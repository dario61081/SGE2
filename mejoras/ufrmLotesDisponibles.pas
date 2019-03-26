unit ufrmLotesDisponibles;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmTemplateModal, Vcl.ImgList,
  Vcl.StdCtrls, dr2gcomponentes, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, IBCustomDataSet, IBQuery, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh;

type
  TfrmLotesDisponibles = class(TfrmMensaje)
    grid1: TDBGridEh;
    qryLotesDisponibles: TIBQuery;
    dsLotesDisponibles: TDataSource;
  private
    Fproducto_id: integer;
    procedure Setproducto_id(const Value: integer);
    { Private declarations }
  public
    { Public declarations }
    property producto_id: integer read Fproducto_id write Setproducto_id;
    procedure update;
  end;

var
  frmLotesDisponibles: TfrmLotesDisponibles;

implementation

uses
  datos;

{$R *.dfm}

{ TfrmLotesDisponibles }

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
  Caption := IntToStr(producto_id);
end;

end.
