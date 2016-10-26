unit f43_labor_f;

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
  Tf43_labor_form = class(TForm)
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
    show_visit: TcxGrid;
    show_visitDBTableView1: TcxGridDBTableView;
    show_visitLevel1: TcxGridLevel;
    Qf43_labor: TMyQuery;
    Df43_labor: TMyDataSource;
    process_Qrb1k: TcxProgressBar;
    show_visitDBTableView1HOSPCODE: TcxGridDBColumn;
    show_visitDBTableView1PID: TcxGridDBColumn;
    show_visitDBTableView1GRAVIDA: TcxGridDBColumn;
    show_visitDBTableView1LMP: TcxGridDBColumn;
    show_visitDBTableView1EDC: TcxGridDBColumn;
    show_visitDBTableView1BDATE: TcxGridDBColumn;
    show_visitDBTableView1BRESULT: TcxGridDBColumn;
    show_visitDBTableView1BPLACE: TcxGridDBColumn;
    show_visitDBTableView1BHOSP: TcxGridDBColumn;
    show_visitDBTableView1BTYPE: TcxGridDBColumn;
    show_visitDBTableView1BDOCTOR: TcxGridDBColumn;
    show_visitDBTableView1LBORN: TcxGridDBColumn;
    show_visitDBTableView1SBORN: TcxGridDBColumn;
    show_visitDBTableView1D_UPDATE: TcxGridDBColumn;
    show_visitDBTableView1CID: TcxGridDBColumn;
    show_visitDBTableView1HN: TcxGridDBColumn;
    show_visitDBTableView1ptname: TcxGridDBColumn;
    show_visitDBTableView1typearea: TcxGridDBColumn;
    show_visitDBTableView1discharge: TcxGridDBColumn;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure post_date_btnClick(Sender: TObject);
    procedure excel_export_btnClick(Sender: TObject);
    function  GetTempDir : string;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f43_labor_form: Tf43_labor_form;

implementation

uses connection_unit;

{$R *.dfm}

procedure Tf43_labor_form.excel_export_btnClick(Sender: TObject);
begin
 ExportGridToExcel(gettempdir + 'data_export.xls', show_visit, True, True);
 shellexecute(handle, 'Open', pchar(gettempdir + 'data_export.xls'), nil, nil,sw_normal);
end;

procedure Tf43_labor_form.FormShow(Sender: TObject);
begin
process_Qrb1k.Visible := False;

  Qf43_labor.Close;
  date_start_text.Date := now;
  date_end_text.Date   := now;
  Qf43_labor.Params.ParamValues['date_start_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_start_text.Date));
  Qf43_labor.Params.ParamValues['date_end_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_end_text.Date));
  Qf43_labor.Open;
  record_count.Caption :=  IntToStr(Qf43_labor.RecordCount);
end;

function Tf43_labor_form.GetTempDir: string;
var
  TempDir: array[0..MAX_PATH] of Char;
begin
  TempDir[GetTempPath(260, TempDir)] := #0;
  Result := TempDir;
end;

procedure Tf43_labor_form.post_date_btnClick(Sender: TObject);
begin
Qf43_labor.Close;
  Qf43_labor.Params.ParamValues['date_start_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_start_text.Date));
  Qf43_labor.Params.ParamValues['date_end_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_end_text.Date));
  Qf43_labor.Open;
  Qf43_labor.First;
        process_Qrb1k.Position := 0;
        process_Qrb1k.properties.Max := Qf43_labor.RecordCount;
           while not Qf43_labor.Eof do
              begin
                Qf43_labor.Next;
                //sleep(1000);
                process_Qrb1k.Visible := True;
                process_Qrb1k.Position := process_Qrb1k.Position +1;
                application.ProcessMessages;
              end;
  process_Qrb1k.Visible := False;
  record_count.Caption :=  IntToStr(Qf43_labor.RecordCount);
end;

procedure Tf43_labor_form.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

end.
