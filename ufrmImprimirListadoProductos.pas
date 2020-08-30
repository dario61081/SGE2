unit ufrmImprimirListadoProductos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,  Vcl.StdCtrls, ppDB,
  ppDBPipe, Data.DB, JvDataSource, IBCustomDataSet, IBTable, ppComm, ppRelatv,
  ppProd, ppClass, ppReport, ppBands, ppStrtch, ppSubRpt, ppCtrls, ppVar,
  ppPrnabl, ppCache, ppDesignLayer, ppParameter, IBQuery, ufrmTemplateModal,
  dr2gcomponentes, System.Actions, Vcl.ActnList, Vcl.ImgList, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TfrmImprimirProductos = class(TfrmMensaje)
    report1: TppReport;
    lbl1: TLabel;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    plbl1: TppLabel;
    psystmvrbl1: TppSystemVariable;
    ppSystemVariable1: TppSystemVariable;
    qryListado: TIBQuery;
    qryListadoID: TLargeintField;
    qryListadoCODIGO: TIBStringField;
    qryListadoORIGEN: TIBStringField;
    qryListadoDESCRIPCION: TIBStringField;
    qryListadoACTIVO: TSmallintField;
    qryListadoIMPUESTO: TIBStringField;
    qryListadoPRECIO_MAYORISTA: TFloatField;
    qryListadoPRECIO_MINORISTA: TFloatField;
    dsListado: TJvDataSource;
    ppListado: TppDBPipeline;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    plbl2: TppLabel;
    ppImage1: TppImage;
    procedure btnAceptarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImprimirProductos: TfrmImprimirProductos;

implementation

uses
  datos;

{$R *.dfm}

procedure TfrmImprimirProductos.btnAceptarClick(Sender: TObject);
begin
  report1.PrintReport;
  inherited;

end;

end.
