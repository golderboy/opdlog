unit f43_dental_f;

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
  Tf43_dental_form = class(TForm)
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
    Qf43_dent: TMyQuery;
    Df43_dent: TMyDataSource;
    process_Qrb1k: TcxProgressBar;
    show_visitDBTableView1HOSPCODE: TcxGridDBColumn;
    show_visitDBTableView1PID: TcxGridDBColumn;
    show_visitDBTableView1SEQ: TcxGridDBColumn;
    show_visitDBTableView1DATE_SERV: TcxGridDBColumn;
    show_visitDBTableView1DENTTYPE: TcxGridDBColumn;
    show_visitDBTableView1SERVPLACE: TcxGridDBColumn;
    show_visitDBTableView1PTEETH: TcxGridDBColumn;
    show_visitDBTableView1PCARIES: TcxGridDBColumn;
    show_visitDBTableView1PFILLING: TcxGridDBColumn;
    show_visitDBTableView1PEXTRACT: TcxGridDBColumn;
    show_visitDBTableView1DTEETH: TcxGridDBColumn;
    show_visitDBTableView1DCARIES: TcxGridDBColumn;
    show_visitDBTableView1DFILLING: TcxGridDBColumn;
    show_visitDBTableView1DEXTRACT: TcxGridDBColumn;
    show_visitDBTableView1NEED_FLUORIDE: TcxGridDBColumn;
    show_visitDBTableView1NEED_SCALING: TcxGridDBColumn;
    show_visitDBTableView1NEED_SEALANT: TcxGridDBColumn;
    show_visitDBTableView1NEED_PFILLING: TcxGridDBColumn;
    show_visitDBTableView1NEED_DFILLING: TcxGridDBColumn;
    show_visitDBTableView1NEED_PEXTRACT: TcxGridDBColumn;
    show_visitDBTableView1NEED_DEXTRACT: TcxGridDBColumn;
    show_visitDBTableView1NPROSTHESIS: TcxGridDBColumn;
    show_visitDBTableView1PERMANENT_PERMANENT: TcxGridDBColumn;
    show_visitDBTableView1PERMANENT_PROSTHESIS: TcxGridDBColumn;
    show_visitDBTableView1PROSTHESIS_PROSTHESIS: TcxGridDBColumn;
    show_visitDBTableView1GUM: TcxGridDBColumn;
    show_visitDBTableView1SCHOOLTYPE: TcxGridDBColumn;
    show_visitDBTableView1CLASS: TcxGridDBColumn;
    show_visitDBTableView1PROVIDER: TcxGridDBColumn;
    show_visitDBTableView1D_UPDATE: TcxGridDBColumn;
    show_visitDBTableView1CID: TcxGridDBColumn;
    show_visitDBTableView1HN: TcxGridDBColumn;
    show_visitDBTableView1ptname: TcxGridDBColumn;
    show_visitDBTableView1typearea: TcxGridDBColumn;
    show_visitDBTableView1discharge: TcxGridDBColumn;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure post_date_btnClick(Sender: TObject);
    procedure excel_export_btnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    function  GetTempDir : string;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f43_dental_form: Tf43_dental_form;

implementation

uses db_connect_module;

{$R *.dfm}

procedure Tf43_dental_form.excel_export_btnClick(Sender: TObject);
begin
 ExportGridToExcel(gettempdir + 'data_export.xls', show_visit, True, True);
 shellexecute(handle, 'Open', pchar(gettempdir + 'data_export.xls'), nil, nil,sw_normal);
end;

procedure Tf43_dental_form.FormShow(Sender: TObject);
begin
process_Qrb1k.Visible := False;

  Qf43_dent.Close;
  date_start_text.Date := now;
  date_end_text.Date   := now;
  Qf43_dent.Params.ParamValues['date_start_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_start_text.Date));
  Qf43_dent.Params.ParamValues['date_end_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_end_text.Date));
  Qf43_dent.Open;
  record_count.Caption :=  IntToStr(Qf43_dent.RecordCount);
end;

function Tf43_dental_form.GetTempDir: string;
var
  TempDir: array[0..MAX_PATH] of Char;
begin
  TempDir[GetTempPath(260, TempDir)] := #0;
  Result := TempDir;
end;

procedure Tf43_dental_form.post_date_btnClick(Sender: TObject);
begin
Qf43_dent.Close;
  Qf43_dent.Params.ParamValues['date_start_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_start_text.Date));
  Qf43_dent.Params.ParamValues['date_end_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_end_text.Date));
  Qf43_dent.Open;
  Qf43_dent.First;
        process_Qrb1k.Position := 0;
        process_Qrb1k.properties.Max := Qf43_dent.RecordCount;
           while not Qf43_dent.Eof do
              begin
                Qf43_dent.Next;
                //sleep(1000);
                process_Qrb1k.Visible := True;
                process_Qrb1k.Position := process_Qrb1k.Position +1;
                application.ProcessMessages;
              end;
  process_Qrb1k.Visible := False;
  record_count.Caption :=  IntToStr(Qf43_dent.RecordCount);
end;

procedure Tf43_dental_form.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

end.
