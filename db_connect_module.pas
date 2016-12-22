unit db_connect_module;

interface

uses
  SysUtils, Classes, DB, DBAccess, MyAccess, MemDS,IniFiles;

type
  Tdb_connect_m = class(TDataModule)
    connect_db: TMyConnection;
    connect_slave: TMyConnection;
    connect_opd: TMyConnection;
    Qlog: TMyQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    controlstore : TIniFile;
  end;

var
  db_connect_m: Tdb_connect_m;

implementation

uses connection_unit;

{$R *.dfm}

end.
