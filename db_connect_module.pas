unit db_connect_module;

interface

uses
  SysUtils, Classes, DB, DBAccess, MyAccess;

type
  Tdb_connect_m = class(TDataModule)
    connect_db: TMyConnection;
    connect_slave: TMyConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  db_connect_m: Tdb_connect_m;

implementation

uses connection_unit;

{$R *.dfm}

end.
