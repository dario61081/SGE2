unit ufrmGenerarRecibo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,  Vcl.Mask, JvExMask,
  JvToolEdit, JvDBControls, Vcl.StdCtrls, dr2gcomponentes, ppComm, ppRelatv,
  ppProd, ppClass, ppReport, ppDesignLayer, ppParameter, ppBands, ppCtrls,
  ppPrnabl, ppVar, ppCache, raCodMod, ppModule, num2let, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, Data.DB, IBCustomDataSet, IBTable,
  IBStoredProc;

type
  TfrmGenerarRecibo = class(tform)
    edtMonto: TEdit;
    btnOk: TButton;
    lblMonto: TLabel;
    lblFecha: TLabel;
    Label2: TLabel;
    edtConcepto: TEdit;
    btnCancelar: TButton;
    header1: TDxHeader;
    Label1: TLabel;
    Label3: TLabel;
    edtRuc: TEdit;
    edtCliente: TEdit;
    report2: TppReport;
    edtfecha: TJvDatePickerEdit;
    chk1: TCheckBox;
    phdrbnd2: TppHeaderBand;
    plbl32: TppLabel;
    plbl33: TppLabel;
    plbl34: TppLabel;
    plbl35: TppLabel;
    plbl36: TppLabel;
    plbl37: TppLabel;
    plbl38: TppLabel;
    plbl39: TppLabel;
    plbl40: TppLabel;
    pln7: TppLine;
    plbl41: TppLabel;
    plbl42: TppLabel;
    plbl43: TppLabel;
    plbl44: TppLabel;
    plbl_numero_recibo: TppLabel;
    ppDetailBand2: TppDetailBand;
    plbl45: TppLabel;
    plbl46: TppLabel;
    plbl47: TppLabel;
    plbl48: TppLabel;
    plbl49: TppLabel;
    plbl50: TppLabel;
    plblFecha: TppLabel;
    plblrazon_social: TppLabel;
    plbl_ruc: TppLabel;
    plblsumatexto: TppLabel;
    plbltotalnumero: TppLabel;
    plbl_concepto: TppLabel;
    ppFooterBand2: TppFooterBand;
    plbl51: TppLabel;
    pln8: TppLine;
    plbl_serie: TppLabel;
    raCodeModule2: TraCodeModule;
    raProgramInfo6: TraProgramInfo;
    raProgramInfo7: TraProgramInfo;
    raProgramInfo9: TraProgramInfo;
    raProgramInfo10: TraProgramInfo;
    raProgramInfo8: TraProgramInfo;
    raProgramInfo11: TraProgramInfo;
    raProgramInfo12: TraProgramInfo;
    raProgramInfo1: TraProgramInfo;
    ppDesignLayers2: TppDesignLayers;
    pdsgnlyr2: TppDesignLayer;
    ppParameterList2: TppParameterList;
    pr_fecha: TppParameter;
    pr_razonsocial: TppParameter;
    pr_ruc: TppParameter;
    pr_cantidadnumero: TppParameter;
    pr_cantidadletra: TppParameter;
    pr_Concepto: TppParameter;
    pr_numerorecibo: TppParameter;
    sp_recibo_numero: TIBStoredProc;
    sp_recibo_numeroVALOR: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGenerarRecibo: TfrmGenerarRecibo;

implementation

uses
  datos, ufrmTemplateModal;

{$R *.dfm}

procedure TfrmGenerarRecibo.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmGenerarRecibo.btnOkClick(Sender: TObject);
var
 numero : string;
begin

  sp_recibo_numero.ExecProc;

  numero := sp_recibo_numero.ParamByName('valor').Text;
   sp_recibo_numero.Transaction.CommitRetaining;
  report2.Parameters['pr_ruc'].value := edtRuc.Text;
  report2.Parameters['pr_fecha'].value :=  formatdatetime('dddd, dd mmmm yyyy' ,edtfecha.Date);
  report2.Parameters['pr_razonsocial'].value := UpperCase(edtCliente.Text);
  report2.Parameters['pr_concepto'].value := uppercase(edtConcepto.Text);
  report2.Parameters['pr_cantidadnumero'].value := FormatFloat('0,.',StrToInt64(edtMonto.Text));
  report2.Parameters['pr_cantidadletra'].value :=
    num2let.NumLetra(StrToFloat(edtMonto.Text), 1, 1);
    report2.Parameters['pr_numerorecibo'].Value := numero;

  report2.PrintReport;
end;

procedure TfrmGenerarRecibo.FormCreate(Sender: TObject);
begin
  edtfecha.Text := DateToStr(Date);
end;

end.
