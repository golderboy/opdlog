unit sql_monitor_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DASQLMonitor, MyDacMonitor, MySQLMonitor, JvExControls,
  JvNavigationPane, StdCtrls, ComCtrls;

type
    TFrmLogSql = class(TForm)
    header_login: TJvNavPanelHeader;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogSql: TFrmLogSql;

implementation

uses db_connect_module;

{$R *.dfm}

end.
