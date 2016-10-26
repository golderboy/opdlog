unit show_medlog_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData, cxProgressBar,
  DBAccess, MyAccess, MemDS, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  RzButton, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  ExtCtrls, JvExControls, JvNavigationPane,ShellAPI,cxExport,cxGridExportLink;

type
  Tshow_med_form = class(TForm)
    header_opdlog: TJvNavPanelHeader;
    Panel2: TPanel;
    date_start_text: TcxDateEdit;
    date_end_text: TcxDateEdit;
    cxLabel2: TcxLabel;
    post_date_btn: TRzBitBtn;
    excel_export_btn: TRzBitBtn;
    Panel1: TPanel;
    RzBitBtn1: TRzBitBtn;
    cxLabel1: TcxLabel;
    record_count: TcxLabel;
    Qshow_med: TMyQuery;
    data_med: TMyDataSource;
    process_Qrb1k: TcxProgressBar;
    show_visit: TcxGrid;
    show_visitDBTableView1: TcxGridDBTableView;
    show_visitLevel1: TcxGridLevel;
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
    show_visitDBTableView1doctor: TcxGridDBColumn;
    show_visitDBTableView1license_number: TcxGridDBColumn;
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
    show_visitDBTableView1treatment: TcxGridDBColumn;
    show_visitDBTableView1department: TcxGridDBColumn;
    emr_btn: TRzBitBtn;
    procedure post_date_btnClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    function  GetTempDir : string;
    procedure excel_export_btnClick(Sender: TObject);
    procedure emr_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    visit : string;
  end;

var
  show_med_form: Tshow_med_form;

implementation

uses connection_unit, miniEMR_f;

{$R *.dfm}

procedure Tshow_med_form.emr_btnClick(Sender: TObject);
begin
    miniEMR_form := TminiEMR_form.Create(application);
    miniEMR_form.visit := Qshow_med.FieldByName('vn').AsString;
    miniEMR_form.ShowModal;
    miniEMR_form.Free;
end;

procedure Tshow_med_form.excel_export_btnClick(Sender: TObject);
begin
   ExportGridToExcel(gettempdir + 'data_export.xls', show_visit, True, True);
   shellexecute(handle, 'Open', pchar(gettempdir + 'data_export.xls'), nil, nil,sw_normal);
end;

procedure Tshow_med_form.FormShow(Sender: TObject);
begin
process_Qrb1k.Visible := True;

  Qshow_med.Close;
  date_start_text.Date := now;
  date_end_text.Date   := now;
  Qshow_med.Params.ParamValues['date_start_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_start_text.Date));
  Qshow_med.Params.ParamValues['date_end_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_end_text.Date));
  Qshow_med.Open;
  record_count.Caption :=  IntToStr(Qshow_med.RecordCount);
process_Qrb1k.Visible := False;
end;

function Tshow_med_form.GetTempDir: string;
var
  TempDir: array[0..MAX_PATH] of Char;
begin
  TempDir[GetTempPath(260, TempDir)] := #0;
  Result := TempDir;
end;

procedure Tshow_med_form.post_date_btnClick(Sender: TObject);
begin
  Qshow_med.Close;
  Qshow_med.Params.ParamValues['date_start_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_start_text.Date));
  Qshow_med.Params.ParamValues['date_end_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_end_text.Date));
  Qshow_med.Open;
  Qshow_med.First;
        process_Qrb1k.Position := 0;
        process_Qrb1k.properties.Max := Qshow_med.RecordCount;
           while not Qshow_med.Eof do
              begin
                Qshow_med.Next;
                //sleep(1000);
                process_Qrb1k.Visible := True;
                process_Qrb1k.Position := process_Qrb1k.Position +1;
                application.ProcessMessages;
              end;
  process_Qrb1k.Visible := False;
  record_count.Caption :=  IntToStr(Qshow_med.RecordCount);
end;

procedure Tshow_med_form.RzBitBtn1Click(Sender: TObject);
begin
  close;
end;

end.
