unit Qtarget_person_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxProgressBar, DBAccess, MyAccess, MemDS, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxLabel, RzButton, ExtCtrls,
  JvExControls, JvNavigationPane,ShellAPI,cxExport,cxGridExportLink;

type
  Ttarget_person_form = class(TForm)
    header_opdlog: TJvNavPanelHeader;
    Panel1: TPanel;
    RzBitBtn1: TRzBitBtn;
    cxLabel1: TcxLabel;
    record_count: TcxLabel;
    show_visit: TcxGrid;
    show_visitDBTableView1: TcxGridDBTableView;
    show_visitLevel1: TcxGridLevel;
    Qtarget_person: TMyQuery;
    Dtarget_person: TMyDataSource;
    process_Qrb1k: TcxProgressBar;
    show_visitDBTableView1person_id: TcxGridDBColumn;
    show_visitDBTableView1patient_hn: TcxGridDBColumn;
    show_visitDBTableView1cid: TcxGridDBColumn;
    show_visitDBTableView1birthday: TcxGridDBColumn;
    show_visitDBTableView1Fname: TcxGridDBColumn;
    show_visitDBTableView1sex: TcxGridDBColumn;
    show_visitDBTableView1Y: TcxGridDBColumn;
    show_visitDBTableView1M: TcxGridDBColumn;
    show_visitDBTableView1D: TcxGridDBColumn;
    show_visitDBTableView1village_name: TcxGridDBColumn;
    show_visitDBTableView1informaddr: TcxGridDBColumn;
    show_visitDBTableView1chwpart: TcxGridDBColumn;
    show_visitDBTableView1amppart: TcxGridDBColumn;
    show_visitDBTableView1tmbpart: TcxGridDBColumn;
    show_visitDBTableView1moopart: TcxGridDBColumn;
    show_visitDBTableView1type: TcxGridDBColumn;
    excel_export_btn: TRzBitBtn;
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure excel_export_btnClick(Sender: TObject);
    function  GetTempDir : string;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  target_person_form: Ttarget_person_form;

implementation

uses db_connect_module;

{$R *.dfm}

procedure Ttarget_person_form.excel_export_btnClick(Sender: TObject);
begin
   ExportGridToExcel(gettempdir + 'data_export.xls', show_visit, True, True);
   shellexecute(handle, 'Open', pchar(gettempdir + 'data_export.xls'), nil, nil,sw_normal);
end;

procedure Ttarget_person_form.FormShow(Sender: TObject);
begin
  Qtarget_person.Close;
  Qtarget_person.Open;
  record_count.Caption :=  IntToStr(Qtarget_person.RecordCount);
  Qtarget_person.First;
        process_Qrb1k.Position := 0;
        process_Qrb1k.properties.Max := Qtarget_person.RecordCount;
           while not Qtarget_person.Eof do
              begin
                Qtarget_person.Next;
                //sleep(1000);
                process_Qrb1k.Visible := True;
                process_Qrb1k.Position := process_Qrb1k.Position +1;
                application.ProcessMessages;
              end;
  process_Qrb1k.Visible := False;

end;

function Ttarget_person_form.GetTempDir: string;
var
  TempDir: array[0..MAX_PATH] of Char;
begin
  TempDir[GetTempPath(260, TempDir)] := #0;
  Result := TempDir;
end;

procedure Ttarget_person_form.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

end.
