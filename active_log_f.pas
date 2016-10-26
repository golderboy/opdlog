unit active_log_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, DB, cxDBData, DBAccess, MyAccess, MemDS, cxProgressBar,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxTextEdit, RzButton, cxLabel, ExtCtrls,
  JvExControls, JvNavigationPane,ShellAPI,cxExport,cxGridExportLink;

type
  Tactive_log_form = class(TForm)
    header_opdlog: TJvNavPanelHeader;
    Panel2: TPanel;
    cxLabel2: TcxLabel;
    post_date_btn: TRzBitBtn;
    excel_export_btn: TRzBitBtn;
    key_form: TcxTextEdit;
    Panel1: TPanel;
    RzBitBtn1: TRzBitBtn;
    cxLabel1: TcxLabel;
    record_count: TcxLabel;
    show_visit: TcxGrid;
    show_visitDBTableView1: TcxGridDBTableView;
    show_visitLevel1: TcxGridLevel;
    process_Qrb1k: TcxProgressBar;
    Qactive_log: TMyQuery;
    Dactive_log: TMyDataSource;
    show_visitDBTableView1officer_activity_log_datetime: TcxGridDBColumn;
    show_visitDBTableView1officer_activity_log_computer: TcxGridDBColumn;
    show_visitDBTableView1officer_activity_log_table: TcxGridDBColumn;
    show_visitDBTableView1officer_activity_log_operation: TcxGridDBColumn;
    show_visitDBTableView1name: TcxGridDBColumn;
    show_visitDBTableView1officer_activity_log_parent_kv: TcxGridDBColumn;
    show_visitDBTableView1active_screen_class: TcxGridDBColumn;
    show_visitDBTableView1log_field_change: TcxGridDBColumn;
    procedure post_date_btnClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure excel_export_btnClick(Sender: TObject);
    function  GetTempDir : string;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  active_log_form: Tactive_log_form;

implementation

uses db_connect_module;

{$R *.dfm}

procedure Tactive_log_form.excel_export_btnClick(Sender: TObject);
begin
   ExportGridToExcel(gettempdir + 'data_export.xls', show_visit, True, True);
   shellexecute(handle, 'Open', pchar(gettempdir + 'data_export.xls'), nil, nil,sw_normal);
end;

function Tactive_log_form.GetTempDir: string;
var
  TempDir: array[0..MAX_PATH] of Char;
begin
  TempDir[GetTempPath(260, TempDir)] := #0;
  Result := TempDir;
end;

procedure Tactive_log_form.post_date_btnClick(Sender: TObject);
begin
 Qactive_log.Close;
  Qactive_log.SQL.Text := ' SELECT SQL_BIG_RESULT  l.officer_activity_log_datetime,l.officer_activity_log_computer,'+
  'l.officer_activity_log_table,l.officer_activity_log_operation, '+
  'o.`name`,l.officer_activity_log_parent_kv,l.active_screen_class,l.log_field_change '+
  'from officer_activity_log  l                                                        '+
  'LEFT OUTER JOIN opduser  o on o.loginname = l.staff                                 '+
  'where officer_activity_log_parent_kv like "%'+key_form.text+'"                                  '+
  'ORDER BY officer_activity_log_datetime desc                                         '+
  'limit 100; ';
  Qactive_log.Open;
  Qactive_log.First;
        process_Qrb1k.Position := 0;
        process_Qrb1k.properties.Max := Qactive_log.RecordCount;
           while not Qactive_log.Eof do
              begin
                Qactive_log.Next;
                //sleep(1000);
                process_Qrb1k.Visible := True;
                process_Qrb1k.Position := process_Qrb1k.Position +1;
                application.ProcessMessages;
              end;
  process_Qrb1k.Visible := False;
  record_count.Caption :=  IntToStr(Qactive_log.RecordCount);
  showmessage('Done !!!');
end;

procedure Tactive_log_form.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

end.
