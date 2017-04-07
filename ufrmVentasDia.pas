unit ufrmVentasDia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmDatos, Vcl.ExtCtrls, Vcl.StdCtrls,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB,
  IBCustomDataSet, IBQuery, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.Mask, JvExMask, JvToolEdit;

type
  TfrmVentasDia = class(TfrmDatos)
    lbl1: TLabel;
    bvl1: TBevel;
    grid1: TDBGridEh;
    qryResumen: TIBQuery;
    dsResumen: TDataSource;
    qryResumenCONDICION: TIBStringField;
    qryResumenTOTAL: TFloatField;
    btn1: TButton;
    edtFecha: TJvDateEdit;
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
    ParamByName('fecha').AsDate := edtFecha.Date;
    close;
    open;
    grid1.SumList.RecalcAll;
  end;
end;

procedure TfrmVentasDia.FormCreate(Sender: TObject);
begin
  inherited;
  self.qryResumen.ParamByName('fecha').AsDate := edtFecha.Date;
  self.qryResumen.Prepare;

  self.qryResumen.Open ;
end;

end.
