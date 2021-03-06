unit f43_drugal_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvNavigationPane, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, ComCtrls, dxCore,
  cxDateUtils, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, DB, cxDBData, cxProgressBar, DBAccess, MyAccess, MemDS,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, RzButton, cxLabel, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, ExtCtrls,ShellAPI,cxExport,cxGridExportLink;

type
  Tf43_drugal_form = class(TForm)
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
    Qf43_drug: TMyQuery;
    Df43_drug: TMyDataSource;
    process_Qrb1k: TcxProgressBar;
    show_visitDBTableView1HOSPCODE: TcxGridDBColumn;
    show_visitDBTableView1PID: TcxGridDBColumn;
    show_visitDBTableView1DATERECORD: TcxGridDBColumn;
    show_visitDBTableView1DRUGALLERGY: TcxGridDBColumn;
    show_visitDBTableView1DNAME: TcxGridDBColumn;
    show_visitDBTableView1TYPEDX: TcxGridDBColumn;
    show_visitDBTableView1ALEVEL: TcxGridDBColumn;
    show_visitDBTableView1SYMPTOM: TcxGridDBColumn;
    show_visitDBTableView1INFORMANT: TcxGridDBColumn;
    show_visitDBTableView1INFORMHOSP: TcxGridDBColumn;
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
    procedure RzBitBtn1Click(Sender: TObject);
    procedure show_visitDBTableView1DATERECORDCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1DRUGALLERGYCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1INFORMANTCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f43_drugal_form: Tf43_drugal_form;

implementation

uses db_connect_module;

{$R *.dfm}

procedure Tf43_drugal_form.excel_export_btnClick(Sender: TObject);
begin
 ExportGridToExcel(gettempdir + 'data_export.xls', show_visit, True, True);
 shellexecute(handle, 'Open', pchar(gettempdir + 'data_export.xls'), nil, nil,sw_normal);
end;

procedure Tf43_drugal_form.FormShow(Sender: TObject);
begin
 process_Qrb1k.Visible := False;

  Qf43_drug.Close;
  date_start_text.Date := now;
  date_end_text.Date   := now;
  Qf43_drug.Params.ParamValues['date_start_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_start_text.Date));
  Qf43_drug.Params.ParamValues['date_end_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_end_text.Date));
  Qf43_drug.Open;
  record_count.Caption :=  IntToStr(Qf43_drug.RecordCount);
end;

function Tf43_drugal_form.GetTempDir: string;
var
  TempDir: array[0..MAX_PATH] of Char;
begin
  TempDir[GetTempPath(260, TempDir)] := #0;
  Result := TempDir;
end;

procedure Tf43_drugal_form.post_date_btnClick(Sender: TObject);
begin
Qf43_drug.Close;
  Qf43_drug.Params.ParamValues['date_start_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_start_text.Date));
  Qf43_drug.Params.ParamValues['date_end_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_end_text.Date));
  Qf43_drug.Open;
  Qf43_drug.First;
        process_Qrb1k.Position := 0;
        process_Qrb1k.properties.Max := Qf43_drug.RecordCount;
           while not Qf43_drug.Eof do
              begin
                Qf43_drug.Next;
                //sleep(1000);
                process_Qrb1k.Visible := True;
                process_Qrb1k.Position := process_Qrb1k.Position +1;
                application.ProcessMessages;
              end;
  process_Qrb1k.Visible := False;
  record_count.Caption :=  IntToStr(Qf43_drug.RecordCount);
end;

procedure Tf43_drugal_form.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure Tf43_drugal_form.show_visitDBTableView1DATERECORDCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[2]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Tf43_drugal_form.show_visitDBTableView1DRUGALLERGYCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[3]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Tf43_drugal_form.show_visitDBTableView1INFORMANTCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[8]) = '' then
        Acanvas.brush.Color := clRed ;
end;

end.
