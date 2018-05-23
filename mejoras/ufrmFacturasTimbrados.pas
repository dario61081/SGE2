unit ufrmFacturasTimbrados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, IBCustomDataSet, IBQuery, Vcl.ToolWin,
  Vcl.ComCtrls, JvExComCtrls, JvToolBar, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.ExtCtrls, Vcl.DBCtrls, IBTable;

type
  TfrmFacturasTimbrados = class(TForm)
    gridTimbrados: TDBGridEh;
    dsTimbrados: TDataSource;
    tblTimbrados: TIBTable;
    tblTimbradosID: TLargeintField;
    tblTimbradosPREFIJO: TIBStringField;
    tblTimbradosNUMERO: TIBStringField;
    tblTimbradosNUMERO_FACTURA: TIBStringField;
    tblTimbradosTIMBRADO: TIBStringField;
    tblTimbradosINICIO: TDateTimeField;
    tblTimbradosFIN: TDateTimeField;
    tblTimbradosACTIVO: TSmallintField;
    tblTimbradosNUMERACION_INICIAL: TLargeintField;
    tblTimbradosNUMERACION_FINAL: TLargeintField;
    tblTimbradosFECHA_CREADO: TDateTimeField;
    tblTimbradosFECHA_MODIF: TDateTimeField;
    dbnvgr1: TDBNavigator;
    procedure dbnvgr1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFacturasTimbrados: TfrmFacturasTimbrados;

implementation

uses
  datos;

{$R *.dfm}

procedure TfrmFacturasTimbrados.dbnvgr1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  case Button of

    nbInsert:
      tblTimbrados.Append;

  end;
end;

procedure TfrmFacturasTimbrados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  with tblTimbrados.Transaction do
  begin
    if (InTransaction) then
    begin
      CommitRetaining;

    end;

  end;

end;

procedure TfrmFacturasTimbrados.FormCreate(Sender: TObject);
begin
  tblTimbrados.Open;

end;

end.
