unit ufrmFacturasClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,  Vcl.StdCtrls,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB,
  IBCustomDataSet, IBQuery, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, ppBands,
  ppCtrls, ppClass, ppVar, ppPrnabl, ppCache, ppDesignLayer, ppParameter, ppDB,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, ufrmTemplateDatos,
  dr2gcomponentes;

type
  TfrmResumenFacturasProveedores = class(TfrmDatos)
    edtCodigoRuc: TEdit;
    lbl1: TLabel;
    btnBuscar: TButton;
    grid1: TDBGridEh;
    qryFacturas: TIBQuery;
    dsFacturas: TDataSource;
    report1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    pdsgnlyr1: TppDesignLayer;
    phdrbnd1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    plbl1: TppLabel;
    psystmvrbl1: TppSystemVariable;
    psystmvrbl2: TppSystemVariable;
    ppDBText1: TppDBText;
    plbl2: TppLabel;
    ppDBText2: TppDBText;
    plbl3: TppLabel;
    ppDBText3: TppDBText;
    plbl4: TppLabel;
    ppDBText4: TppDBText;
    plbl5: TppLabel;
    ppDBText5: TppDBText;
    plbl6: TppLabel;
    ppDBText6: TppDBText;
    plbl7: TppLabel;
    ppDBText7: TppDBText;
    plbl8: TppLabel;
    ppDBText8: TppDBText;
    plbl9: TppLabel;
    ppDBText9: TppDBText;
    plbl10: TppLabel;
    pln1: TppLine;
    pln2: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppPageSummaryBand1: TppPageSummaryBand;
    btnImprimir: TButton;
    procedure btnBuscarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmResumenFacturasProveedores: TfrmResumenFacturasProveedores;

implementation

uses
  datos;

{$R *.dfm}

procedure TfrmResumenFacturasProveedores.btnBuscarClick(Sender: TObject);
begin
  inherited;

    with qryFacturas do begin

      close ;
      Params.ParamByName('ruc').Text := edtCodigoRuc.Text;
      Prepare;
      open;




    end;

end;

procedure TfrmResumenFacturasProveedores.btnImprimirClick(Sender: TObject);
begin
  inherited;
  report1.PrintReport;
end;

end.
