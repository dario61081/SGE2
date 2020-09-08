unit ufrmVentasDia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmTemplateDatos, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB, IBCustomDataSet, IBQuery,
  Vcl.ComCtrls, Vcl.StdCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  dr2gcomponentes;

type
  TfrmVentasDia = class(TfrmDatos)
    grid1: TDBGridEh;
    qryResumen: TIBQuery;
    dsResumen: TDataSource;
    qryResumenCONDICION: TIBStringField;
    qryResumenTOTAL: TFloatField;
    btn1: TButton;
    header1: TDxHeader;
    dtp1: TDateTimePicker;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVentasDia: TfrmVentasDia;

implementation

uses
  datos;

{$R *.dfm}

procedure TfrmVentasDia.btn1Click(Sender: TObject);
begin
  inherited;
  with Self.qryResumen do begin
    ParamByName('fecha').AsDate := self.dtp1.Date;
    close;
    open;
    grid1.SumList.RecalcAll;
  end;
end;

procedure TfrmVentasDia.FormCreate(Sender: TObject);
begin
  inherited;
  self.qryResumen.ParamByName('fecha').AsDate := dtp1.Date;
  self.qryResumen.Prepare;

  self.qryResumen.Open ;
end;

end.
