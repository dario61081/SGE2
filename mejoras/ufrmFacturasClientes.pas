unit ufrmFacturasClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,  Vcl.StdCtrls,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB,
  IBCustomDataSet, IBQuery, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, ppBands,
  ppCtrls, ppClass, ppVar, ppPrnabl, ppCache, ppDesignLayer, ppParameter, ppDB,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, ufrmTemplateDatos,
  dr2gcomponentes, Vcl.ExtCtrls, Vcl.ComCtrls, raCodMod, ppModule,
  Vcl.Imaging.pngimage;

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
    btnImprimir: TButton;
    pnl1: TPanel;
    ppTitleBand1: TppTitleBand;
    phdrbnd1: TppHeaderBand;
    plbl1: TppLabel;
    pmg1: TppImage;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText2: TppDBText;
    pvrblSubTotal: TppVariable;
    ppPageSummaryBand1: TppPageSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppFooterBand1: TppFooterBand;
    pln2: TppLine;
    psystmvrbl1: TppSystemVariable;
    psystmvrbl2: TppSystemVariable;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppShape1: TppShape;
    plbl5: TppLabel;
    ppDBText5: TppDBText;
    ppDBText4: TppDBText;
    plbl6: TppLabel;
    pln1: TppLine;
    plbl2: TppLabel;
    plbl3: TppLabel;
    plbl4: TppLabel;
    plbl7: TppLabel;
    plbl8: TppLabel;
    plbl9: TppLabel;
    plbl10: TppLabel;
    plbl11: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    raCodeModule1: TraCodeModule;
    rprgrmnf1: TraProgramInfo;
    ppDesignLayers1: TppDesignLayers;
    pdsgnlyr1: TppDesignLayer;
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
