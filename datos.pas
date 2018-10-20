unit datos;

interface

uses
  System.SysUtils, System.Classes, IBDatabase, Data.DB, IBCustomDataSet, IBTable,
  IBQuery;

type
  Tdm1 = class(TDataModule)
    db1: TIBDatabase;
    tra1: TIBTransaction;
    tblClientes: TIBTable;
    qryVentas: TIBQuery;
    qryVentasDetalles: TIBQuery;
    dsVentas: TDataSource;
    qryVentasID: TLargeintField;
    qryVentasFECHA: TDateTimeField;
    qryVentasRUC: TIBStringField;
    qryVentasRAZON_SOCIAL: TIBStringField;
    qryVentasCONDICION: TIBStringField;
    qryVentasDIRECCION: TIBStringField;
    qryVentasTELEFONO: TIBStringField;
    qryVentasNOTA_REMISION: TIBStringField;
    qryVentasOBSERVACION: TIBStringField;
    qryVentasPRECIO_MAYORISTA: TSmallintField;
    qryVentasESTADO: TIBStringField;
    qryVentasNUMERO: TIBStringField;
    qryVentasTIMBRADO_NUMERO: TIBStringField;
    qryVentasFECHA_CREADO: TDateTimeField;
    qryVentasFECHA_MODIF: TDateTimeField;
    dsVentasDetalles: TDataSource;
    qryVentasDetallesID: TLargeintField;
    qryVentasDetallesVENTAS_ID: TLargeintField;
    qryVentasDetallesCANTIDAD: TFloatField;
    qryVentasDetallesPRODUCTOS_ID: TLargeintField;
    qryVentasDetallesPRODUCTOS_CODIGO: TIBStringField;
    qryVentasDetallesPRODUCTOS_DESCRIPCION: TIBStringField;
    qryVentasDetallesPRECIO_UNITARIO: TFloatField;
    qryVentasDetallesEXENTAS: TFloatField;
    qryVentasDetallesGRABADAS5: TFloatField;
    qryVentasDetallesGRABADAS10: TFloatField;
    qryVentasDetallesOBSERVACION: TIBStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm1: Tdm1;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}

end.
