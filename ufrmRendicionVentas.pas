unit ufrmRendicionVentas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,  DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, Vcl.Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, Data.DB, ppComm, ppRelatv, ppProd,
  ppClass, ppReport, IBCustomDataSet, IBQuery, ppVar, ppCtrls, ppBands,
  ppPrnabl, ppStrtch, ppSubRpt, ppCache, ppDB, ppDesignLayer, ppParameter,
  ppDBPipe, Vcl.ExtCtrls, Vcl.ComCtrls, JvExComCtrls, JvStatusBar,
  ufrmTemplateDatos, dr2gcomponentes;

type
  TfrmRendicionVentas = class(TfrmDatos)
    qryVentas: TIBQuery;
    lbl1: TLabel;
    lbl2: TLabel;
    report1: TppReport;
    dsVentas: TDataSource;
    edtFecha: TJvDatePickerEdit;
    grid1: TDBGridEh;
    btnGenerar: TButton;
    qryDetalle: TIBQuery;
    qryDetalleFECHA: TDateField;
    qryDetalleCONDICION: TIBStringField;
    qryDetalleRUC: TIBStringField;
    qryDetalleRAZON_SOCIAL: TIBStringField;
    qryDetalleEXENTAS: TFloatField;
    qryDetalleGRABADAS05: TFloatField;
    qryDetalleGRABADAS10: TFloatField;
    DBGridEh1: TDBGridEh;
    dsDetalle: TDataSource;
    btnImprimir: TButton;
    ppVentas: TppDBPipeline;
    ppDetalles: TppDBPipeline;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    psbrprt1: TppSubReport;
    pchldrprt1: TppChildReport;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    plbl1: TppLabel;
    psbrprt2: TppSubReport;
    pchldrprt2: TppChildReport;
    plbl2: TppLabel;
    ppTitleBand2: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppLabel9: TppLabel;
    ppDBText9: TppDBText;
    ppLabel10: TppLabel;
    ppDBText10: TppDBText;
    ppLabel11: TppLabel;
    ppDBText11: TppDBText;
    ppLabel12: TppLabel;
    ppDBText12: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    plbl3: TppLabel;
    pln1: TppLine;
    ppLine2: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLabel13: TppLabel;
    ppLine3: TppLine;
    ppLabel14: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLabel15: TppLabel;
    ppLine1: TppLine;
    edtfechafin: TJvDatePickerEdit;
    GroupBox1: TGroupBox;
    lbl3: TLabel;
    JvStatusBar1: TJvStatusBar;
    Label1: TLabel;
    qryDetalleNUMERO: TIBStringField;
    qryDetalleTOTAL: TFloatField;
    ppDBText13: TppDBText;
    ppLabel16: TppLabel;
    procedure btnGenerarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRendicionVentas: TfrmRendicionVentas;

implementation

uses
  datos;

{$R *.dfm}

procedure TfrmRendicionVentas.btnGenerarClick(Sender: TObject);
begin
  inherited;

  with qryVentas do begin

    close;
    ParamByName('fecha_inicio').AsDate := edtFecha.Date;
    ParamByName('fecha_fin').AsDate := edtfechafin.Date;
    Prepare;
    open;




  end;

  with qryDetalle do begin

    close;
    ParamByName('fecha_inicio').AsDate := edtfecha.Date;
    ParamByName('fecha_fin').AsDate := edtfechafin.Date;
    Prepare;
    open;


  end;


end;

procedure TfrmRendicionVentas.btnImprimirClick(Sender: TObject);
begin
  inherited;
  report1.PrintReport;
end;

end.
