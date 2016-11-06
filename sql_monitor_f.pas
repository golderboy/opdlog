unit sql_monitor_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DASQLMonitor, MyDacMonitor, MySQLMonitor, JvExControls,
  JvNavigationPane, StdCtrls, ComCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, DBAccess, MyAccess, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, MemDS, RzButton, ExtCtrls;

type
    TFrmLogSql = class(TForm)
    header_login: TJvNavPanelHeader;
    Qprosress: TMyQuery;
    show_visit: TcxGrid;
    show_visitDBTableView1: TcxGridDBTableView;
    show_visitLevel1: TcxGridLevel;
    Dprosress: TMyDataSource;
    show_visitDBTableView1ID: TcxGridDBColumn;
    show_visitDBTableView1USER: TcxGridDBColumn;
    show_visitDBTableView1HOST: TcxGridDBColumn;
    show_visitDBTableView1DB: TcxGridDBColumn;
    show_visitDBTableView1COMMAND: TcxGridDBColumn;
    show_visitDBTableView1TIME: TcxGridDBColumn;
    show_visitDBTableView1STATE: TcxGridDBColumn;
    show_visitDBTableView1INFO: TcxGridDBColumn;
    show_visitDBTableView1TIME_MS: TcxGridDBColumn;
    show_visitDBTableView1PROGRESS: TcxGridDBColumn;
    show_visitDBTableView1MEMORY_USED: TcxGridDBColumn;
    Panel1: TPanel;
    RzBitBtn1: TRzBitBtn;
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
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

procedure TFrmLogSql.FormShow(Sender: TObject);
begin
  Qprosress.Open;
end;

procedure TFrmLogSql.RzBitBtn1Click(Sender: TObject);
begin
    Qprosress.Close;
    Qprosress.Open;
end;

end.
