unit ufrmlotes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.Imaging.pngimage, dr2gcomponentes, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.ToolWin, Vcl.ComCtrls, JvExComCtrls, JvCoolBar,
  Vcl.PlatformDefaultStyleActnCtrls, System.Actions, Vcl.ActnList, Vcl.DBActns,
  Vcl.ImgList, Data.DB, IBCustomDataSet, IBTable;

type
  TfrmLotes = class(TForm)
    grid1: TDBGridEh;
    header1: TDxHeader;
    actmgr1: TActionManager;
    JvCoolBar1: TJvCoolBar;
    acttb1: TActionToolBar;
    il1: TImageList;
    DatasetFirst1: TDataSetFirst;
    DatasetPrior1: TDataSetPrior;
    DatasetNext1: TDataSetNext;
    DatasetLast1: TDataSetLast;
    DatasetInsert1: TDataSetInsert;
    DatasetDelete1: TDataSetDelete;
    DatasetEdit1: TDataSetEdit;
    DatasetPost1: TDataSetPost;
    DatasetCancel1: TDataSetCancel;
    DatasetRefresh1: TDataSetRefresh;
    tblLotes: TIBTable;
    tblLotesCODIGO: TLargeintField;
    tblLotesLOTE: TIBStringField;
    tblLotesPRODUCTO_ID: TLargeintField;
    tblLotesPRODUCTO_CODIGO: TLargeintField;
    tblLotesPRODUCTO_DESCRIPCION: TIBStringField;
    tblLotesFECHA_FABRICACION: TDateTimeField;
    tblLotesFECHA_VENCIMIENTO: TDateTimeField;
    tblLotesCANTIDAD: TFloatField;
    tblLotesSALDO: TFloatField;
    tblLotesESTADO: TIBStringField;
    tblLotesFECHA_CREADO: TDateTimeField;
    tblLotesFECHA_MODIF: TDateTimeField;
    dsLotes: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLotes: TfrmLotes;

implementation

uses
  datos;

{$R *.dfm}

end.
