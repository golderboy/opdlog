unit Qtarget_0_5y_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, DB, cxDBData, cxProgressBar, DBAccess, MyAccess, MemDS,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, StdCtrls, cxLabel, RzButton, ExtCtrls,
  JvExControls, JvNavigationPane,ShellAPI,cxExport,cxGridExportLink;

type
  Ttarget_0_5y_form = class(TForm)
    header_opdlog: TJvNavPanelHeader;
    Panel2: TPanel;
    post_date_btn: TRzBitBtn;
    excel_export_btn: TRzBitBtn;
    cxLabel2: TcxLabel;
    list_year: TComboBox;
    Panel1: TPanel;
    RzBitBtn1: TRzBitBtn;
    cxLabel1: TcxLabel;
    record_count: TcxLabel;
    show_visit: TcxGrid;
    show_visitDBTableView1: TcxGridDBTableView;
    show_visitLevel1: TcxGridLevel;
    Qtarget_0_5y: TMyQuery;
    Dtarget_0_5y: TMyDataSource;
    process_Qrb1k: TcxProgressBar;
    show_visitDBTableView1hn: TcxGridDBColumn;
    show_visitDBTableView1PID: TcxGridDBColumn;
    show_visitDBTableView1cid: TcxGridDBColumn;
    show_visitDBTableView1ptname: TcxGridDBColumn;
    show_visitDBTableView1birthday: TcxGridDBColumn;
    show_visitDBTableView1sex: TcxGridDBColumn;
    show_visitDBTableView1Y: TcxGridDBColumn;
    show_visitDBTableView1M: TcxGridDBColumn;
    show_visitDBTableView1D: TcxGridDBColumn;
    show_visitDBTableView1status_p: TcxGridDBColumn;
    show_visitDBTableView1typearea: TcxGridDBColumn;
    show_visitDBTableView1discharge: TcxGridDBColumn;
    show_visitDBTableView1informaddr: TcxGridDBColumn;
    procedure post_date_btnClick(Sender: TObject);
    procedure excel_export_btnClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    function  GetTempDir : string;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  target_0_5y_form: Ttarget_0_5y_form;

implementation

uses db_connect_module;

{$R *.dfm}

procedure Ttarget_0_5y_form.excel_export_btnClick(Sender: TObject);
begin
   ExportGridToExcel(gettempdir + 'data_export.xls', show_visit, True, True);
   shellexecute(handle, 'Open', pchar(gettempdir + 'data_export.xls'), nil, nil,sw_normal);
end;

function Ttarget_0_5y_form.GetTempDir: string;
var
  TempDir: array[0..MAX_PATH] of Char;
begin
  TempDir[GetTempPath(260, TempDir)] := #0;
  Result := TempDir;
end;

procedure Ttarget_0_5y_form.post_date_btnClick(Sender: TObject);
begin
  Qtarget_0_5y.Close;
  Qtarget_0_5y.Params.ParamValues['year'] := list_year.Text ;
  Qtarget_0_5y.Open;
  record_count.Caption :=  IntToStr(Qtarget_0_5y.RecordCount);
  Qtarget_0_5y.First;
        process_Qrb1k.Position := 0;
        process_Qrb1k.properties.Max := Qtarget_0_5y.RecordCount;
           while not Qtarget_0_5y.Eof do
              begin
                Qtarget_0_5y.Next;
                //sleep(1000);
                process_Qrb1k.Visible := True;
                process_Qrb1k.Position := process_Qrb1k.Position +1;
                application.ProcessMessages;
              end;
  process_Qrb1k.Visible := False;
end;

procedure Ttarget_0_5y_form.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

end.
