unit Qtarget_ncd_f;

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
  Ttarget_ncd_form = class(TForm)
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
    Qtarget_NCD: TMyQuery;
    Dtarget_NCD: TMyDataSource;
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
    show_visitDBTableView1CHRONIC: TcxGridDBColumn;
    show_visitDBTableView1Group_NCD: TcxGridDBColumn;
    show_visitDBTableView1typearea: TcxGridDBColumn;
    show_visitDBTableView1discharge: TcxGridDBColumn;
    show_visitDBTableView1informaddr: TcxGridDBColumn;
    procedure post_date_btnClick(Sender: TObject);
    procedure excel_export_btnClick(Sender: TObject);
    function  GetTempDir : string;
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  target_ncd_form: Ttarget_ncd_form;

implementation

uses db_connect_module;

{$R *.dfm}

procedure Ttarget_ncd_form.excel_export_btnClick(Sender: TObject);
begin
   ExportGridToExcel(gettempdir + 'data_export.xls', show_visit, True, True);
   shellexecute(handle, 'Open', pchar(gettempdir + 'data_export.xls'), nil, nil,sw_normal);
end;

function Ttarget_ncd_form.GetTempDir: string;
var
  TempDir: array[0..MAX_PATH] of Char;
begin
  TempDir[GetTempPath(260, TempDir)] := #0;
  Result := TempDir;
end;

procedure Ttarget_ncd_form.post_date_btnClick(Sender: TObject);
begin
  Qtarget_NCD.Close;
  Qtarget_NCD.Params.ParamValues['year'] := list_year.Text ;
  Qtarget_NCD.Open;
  record_count.Caption :=  IntToStr(Qtarget_NCD.RecordCount);
  Qtarget_NCD.First;
        process_Qrb1k.Position := 0;
        process_Qrb1k.properties.Max := Qtarget_NCD.RecordCount;
           while not Qtarget_NCD.Eof do
              begin
                Qtarget_NCD.Next;
                //sleep(1000);
                process_Qrb1k.Visible := True;
                process_Qrb1k.Position := process_Qrb1k.Position +1;
                application.ProcessMessages;
              end;
  process_Qrb1k.Visible := False;
end;

procedure Ttarget_ncd_form.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

end.
