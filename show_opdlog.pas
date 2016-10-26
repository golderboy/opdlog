unit show_opdlog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  DB, cxDBData, DBAccess, MyAccess, MemDS, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ExtCtrls, JvExControls, JvNavigationPane, cxContainer, RzButton,
  cxLabel, cxTextEdit, cxDBEdit, ComCtrls, dxCore, cxDateUtils, cxMaskEdit,
  cxDropDownEdit, cxCalendar,ShellAPI,cxExport,cxGridExportLink, cxProgressBar
  ,IniFiles;

type
  Topdlog_f = class(TForm)
    header_opdlog: TJvNavPanelHeader;
    Panel1: TPanel;
    Qshow_opdscreen: TMyQuery;
    data_opdlog: TMyDataSource;
    RzBitBtn1: TRzBitBtn;
    Panel2: TPanel;
    date_start_text: TcxDateEdit;
    date_end_text: TcxDateEdit;
    cxLabel2: TcxLabel;
    post_date_btn: TRzBitBtn;
    excel_export_btn: TRzBitBtn;
    process_Qrb1k: TcxProgressBar;
    cxLabel1: TcxLabel;
    record_count: TcxLabel;
    room_chk: TcxTextEdit;
    cxLabel3: TcxLabel;
    show_visit: TcxGrid;
    show_visitDBTableView1: TcxGridDBTableView;
    show_visitDBTableView1vn: TcxGridDBColumn;
    show_visitDBTableView1vstdate: TcxGridDBColumn;
    show_visitDBTableView1vsttime: TcxGridDBColumn;
    show_visitDBTableView1hn: TcxGridDBColumn;
    show_visitDBTableView1ptname: TcxGridDBColumn;
    show_visitDBTableView1cid: TcxGridDBColumn;
    show_visitDBTableView1visit_type_name: TcxGridDBColumn;
    show_visitDBTableView1pt_walk_name: TcxGridDBColumn;
    show_visitDBTableView1pttype: TcxGridDBColumn;
    show_visitDBTableView1name: TcxGridDBColumn;
    show_visitDBTableView1pdx: TcxGridDBColumn;
    show_visitDBTableView1height: TcxGridDBColumn;
    show_visitDBTableView1bw: TcxGridDBColumn;
    show_visitDBTableView1waist: TcxGridDBColumn;
    show_visitDBTableView1bmi: TcxGridDBColumn;
    show_visitDBTableView1bpd: TcxGridDBColumn;
    show_visitDBTableView1bps: TcxGridDBColumn;
    show_visitDBTableView1hr: TcxGridDBColumn;
    show_visitDBTableView1pe: TcxGridDBColumn;
    show_visitDBTableView1pulse: TcxGridDBColumn;
    show_visitDBTableView1rr: TcxGridDBColumn;
    show_visitDBTableView1temperature: TcxGridDBColumn;
    show_visitDBTableView1cc: TcxGridDBColumn;
    show_visitDBTableView1hpi: TcxGridDBColumn;
    show_visitDBTableView1pmh: TcxGridDBColumn;
    show_visitDBTableView1department: TcxGridDBColumn;
    show_visitLevel1: TcxGridLevel;
    emr_btn: TRzBitBtn;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure post_date_btnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure excel_export_btnClick(Sender: TObject);
    function  GetTempDir : string;
    procedure emr_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    controlstore : TIniFile;
    visit : string;
  end;

var
  opdlog_f: Topdlog_f;

implementation

uses main_Unit, db_connect_module, room_config_f, miniEMR_f;

{$R *.dfm}

procedure Topdlog_f.emr_btnClick(Sender: TObject);
begin
    miniEMR_form := TminiEMR_form.Create(application);
    miniEMR_form.visit := Qshow_opdscreen.FieldByName('vn').AsString;
    miniEMR_form.ShowModal;
    miniEMR_form.Free;
end;

procedure Topdlog_f.excel_export_btnClick(Sender: TObject);
begin
   ExportGridToExcel(gettempdir + 'data_export.xls', show_visit, True, True);
   shellexecute(handle, 'Open', pchar(gettempdir + 'data_export.xls'), nil, nil,sw_normal);
end;

procedure Topdlog_f.FormShow(Sender: TObject);
begin
  process_Qrb1k.Visible := False;
      if fileexists('D:\opd_log.ini') then
         begin
          controlstore := Tinifile.Create('D:\opd_log.ini');
          room_chk.Text := controlstore.ReadString('ROOM','OPD','');
      end;
  //room_chk.Text :=   room_config_from.opd_chk.TEXT;

  Qshow_opdscreen.Close;
  date_start_text.Date := now;
  date_end_text.Date   := now;
  Qshow_opdscreen.Params.ParamValues['date_start_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_start_text.Date));
  Qshow_opdscreen.Params.ParamValues['date_end_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_end_text.Date));
  Qshow_opdscreen.Params.ParamValues['room']:= room_chk.Text;
  Qshow_opdscreen.Open;
  record_count.Caption :=  IntToStr(Qshow_opdscreen.RecordCount);
end;

function Topdlog_f.GetTempDir: string;
var
  TempDir: array[0..MAX_PATH] of Char;
begin
  TempDir[GetTempPath(260, TempDir)] := #0;
  Result := TempDir;
end;

procedure Topdlog_f.post_date_btnClick(Sender: TObject);
begin
  Qshow_opdscreen.Close;
  Qshow_opdscreen.Params.ParamValues['date_start_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_start_text.Date));
  Qshow_opdscreen.Params.ParamValues['date_end_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_end_text.Date));
  Qshow_opdscreen.Params.ParamValues['room']:= room_chk.Text;
  Qshow_opdscreen.Open;
  Qshow_opdscreen.First;
        process_Qrb1k.Position := 0;
        process_Qrb1k.properties.Max := Qshow_opdscreen.RecordCount;
           while not Qshow_opdscreen.Eof do
              begin
                Qshow_opdscreen.Next;
                //sleep(1000);
                process_Qrb1k.Visible := True;
                process_Qrb1k.Position := process_Qrb1k.Position +1;
                application.ProcessMessages;
              end;
  process_Qrb1k.Visible := False;
  record_count.Caption :=  IntToStr(Qshow_opdscreen.RecordCount);

end;

procedure Topdlog_f.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

end.


uses room_config_f;
