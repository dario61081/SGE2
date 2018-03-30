unit datos;

interface

uses
  System.SysUtils, System.Classes, IBDatabase, Data.DB, IBCustomDataSet, IBTable;

type
  Tdm1 = class(TDataModule)
    db1: TIBDatabase;
    tra1: TIBTransaction;
    tblClientes: TIBTable;
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
