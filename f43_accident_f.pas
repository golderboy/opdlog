unit f43_accident_f;

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
  Tf43_accident_form = class(TForm)
    header_opdlog: TJvNavPanelHeader;
    Panel2: TPanel;
    date_start_text: TcxDateEdit;
    date_end_text: TcxDateEdit;
    cxLabel2: TcxLabel;
    post_date_btn: TRzBitBtn;
    excel_export_btn: TRzBitBtn;
    Panel1: TPanel;
    close_btn: TRzBitBtn;
    cxLabel1: TcxLabel;
    record_count: TcxLabel;
    show_visit: TcxGrid;
    show_visitDBTableView1: TcxGridDBTableView;
    show_visitLevel1: TcxGridLevel;
    Qf43_accident: TMyQuery;
    Df43_accident: TMyDataSource;
    process_Qrb1k: TcxProgressBar;
    show_visitDBTableView1HOSPCODE: TcxGridDBColumn;
    show_visitDBTableView1PID: TcxGridDBColumn;
    show_visitDBTableView1SEQ: TcxGridDBColumn;
    show_visitDBTableView1DATETIME_SERV: TcxGridDBColumn;
    show_visitDBTableView1DATETIME_AE: TcxGridDBColumn;
    show_visitDBTableView1AETYPE: TcxGridDBColumn;
    show_visitDBTableView1AEPLACE: TcxGridDBColumn;
    show_visitDBTableView1TYPEIN_AE: TcxGridDBColumn;
    show_visitDBTableView1TRAFFIC: TcxGridDBColumn;
    show_visitDBTableView1VEHICLE: TcxGridDBColumn;
    show_visitDBTableView1ALCOHOL: TcxGridDBColumn;
    show_visitDBTableView1NACROTIC_DRUG: TcxGridDBColumn;
    show_visitDBTableView1BELT: TcxGridDBColumn;
    show_visitDBTableView1HELMET: TcxGridDBColumn;
    show_visitDBTableView1AIRWAY: TcxGridDBColumn;
    show_visitDBTableView1STOPBLEED: TcxGridDBColumn;
    show_visitDBTableView1SPLINT: TcxGridDBColumn;
    show_visitDBTableView1FLUID: TcxGridDBColumn;
    show_visitDBTableView1URGENCY: TcxGridDBColumn;
    show_visitDBTableView1COMA_EYE: TcxGridDBColumn;
    show_visitDBTableView1COMA_SPEAK: TcxGridDBColumn;
    show_visitDBTableView1COMA_MOVEMENT: TcxGridDBColumn;
    show_visitDBTableView1D_UPDATE: TcxGridDBColumn;
    show_visitDBTableView1CID: TcxGridDBColumn;
    show_visitDBTableView1HN: TcxGridDBColumn;
    show_visitDBTableView1ptname: TcxGridDBColumn;
    show_visitDBTableView1typearea: TcxGridDBColumn;
    show_visitDBTableView1discharge: TcxGridDBColumn;
    procedure post_date_btnClick(Sender: TObject);
    procedure excel_export_btnClick(Sender: TObject);
    function  GetTempDir : string;
    procedure FormShow(Sender: TObject);
    procedure close_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f43_accident_form: Tf43_accident_form;

implementation

uses db_connect_module;

{$R *.dfm}

procedure Tf43_accident_form.close_btnClick(Sender: TObject);
begin
close;
end;

procedure Tf43_accident_form.excel_export_btnClick(Sender: TObject);
begin
   ExportGridToExcel(gettempdir + 'data_export.xls', show_visit, True, True);
   shellexecute(handle, 'Open', pchar(gettempdir + 'data_export.xls'), nil, nil,sw_normal);
end;

procedure Tf43_accident_form.FormShow(Sender: TObject);
begin
 process_Qrb1k.Visible := False;

  Qf43_accident.Close;
  date_start_text.Date := now;
  date_end_text.Date   := now;
  Qf43_accident.Params.ParamValues['date_start_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_start_text.Date));
  Qf43_accident.Params.ParamValues['date_end_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_end_text.Date));
  Qf43_accident.Open;
  record_count.Caption :=  IntToStr(Qf43_accident.RecordCount);
end;

function Tf43_accident_form.GetTempDir: string;
var
  TempDir: array[0..MAX_PATH] of Char;
begin
  TempDir[GetTempPath(260, TempDir)] := #0;
  Result := TempDir;
end;

procedure Tf43_accident_form.post_date_btnClick(Sender: TObject);
begin
Qf43_accident.Close;
  Qf43_accident.Params.ParamValues['date_start_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_start_text.Date));
  Qf43_accident.Params.ParamValues['date_end_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_end_text.Date));
  Qf43_accident.Open;
  Qf43_accident.First;
        process_Qrb1k.Position := 0;
        process_Qrb1k.properties.Max := Qf43_accident.RecordCount;
           while not Qf43_accident.Eof do
              begin
                Qf43_accident.Next;
                //sleep(1000);
                process_Qrb1k.Visible := True;
                process_Qrb1k.Position := process_Qrb1k.Position +1;
                application.ProcessMessages;
              end;
  process_Qrb1k.Visible := False;
  record_count.Caption :=  IntToStr(Qf43_accident.RecordCount);
end;

end.
