unit report_r506_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, DB, cxDBData, cxProgressBar, DBAccess, MyAccess, MemDS,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, StdCtrls, cxLabel, RzButton, ExtCtrls,
  JvExControls, JvNavigationPane, ComCtrls, dxCore, cxDateUtils, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar,ShellAPI,cxExport,cxGridExportLink;

type
  Treport_r506_form = class(TForm)
    header_opdlog: TJvNavPanelHeader;
    Panel2: TPanel;
    post_date_btn: TRzBitBtn;
    excel_export_btn: TRzBitBtn;
    Panel1: TPanel;
    RzBitBtn1: TRzBitBtn;
    cxLabel1: TcxLabel;
    record_count: TcxLabel;
    show_visit: TcxGrid;
    show_visitDBTableView1: TcxGridDBTableView;
    show_visitLevel1: TcxGridLevel;
    Qshow_r506: TMyQuery;
    Dshow_r506: TMyDataSource;
    process_Qrb1k: TcxProgressBar;
    cxLabel2: TcxLabel;
    date_start_text: TcxDateEdit;
    date_end_text: TcxDateEdit;
    emr_btn: TRzBitBtn;
    show_visitDBTableView1sv_number: TcxGridDBColumn;
    show_visitDBTableView1send_epidem: TcxGridDBColumn;
    show_visitDBTableView1report_date: TcxGridDBColumn;
    show_visitDBTableView1E0: TcxGridDBColumn;
    show_visitDBTableView1E1: TcxGridDBColumn;
    show_visitDBTableView1case_refer_out: TcxGridDBColumn;
    show_visitDBTableView1hserv: TcxGridDBColumn;
    show_visitDBTableView1hospital: TcxGridDBColumn;
    show_visitDBTableView1department: TcxGridDBColumn;
    show_visitDBTableView1vstdate: TcxGridDBColumn;
    show_visitDBTableView1begin_date: TcxGridDBColumn;
    show_visitDBTableView1pdx_506: TcxGridDBColumn;
    show_visitDBTableView1icdname: TcxGridDBColumn;
    show_visitDBTableView1pdx_v: TcxGridDBColumn;
    show_visitDBTableView1sv_code506: TcxGridDBColumn;
    show_visitDBTableView1r506_name: TcxGridDBColumn;
    show_visitDBTableView1ptstat: TcxGridDBColumn;
    show_visitDBTableView1vn: TcxGridDBColumn;
    show_visitDBTableView1hn: TcxGridDBColumn;
    show_visitDBTableView1cid: TcxGridDBColumn;
    show_visitDBTableView1ptname: TcxGridDBColumn;
    show_visitDBTableView1sex: TcxGridDBColumn;
    show_visitDBTableView1age_y: TcxGridDBColumn;
    show_visitDBTableView1age_m: TcxGridDBColumn;
    show_visitDBTableView1age_d: TcxGridDBColumn;
    show_visitDBTableView1moopart: TcxGridDBColumn;
    show_visitDBTableView1tmbpart: TcxGridDBColumn;
    show_visitDBTableView1amppart: TcxGridDBColumn;
    show_visitDBTableView1chwpart: TcxGridDBColumn;
    procedure post_date_btnClick(Sender: TObject);
    procedure excel_export_btnClick(Sender: TObject);
    function  GetTempDir : string;
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure emr_btnClick(Sender: TObject);
    procedure show_visitDBTableView1sv_numberCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1send_epidemCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1report_dateCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1E0CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1E1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1begin_dateCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1pdx_506CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1pdx_vCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1sv_code506CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1ptstatCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1moopartCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1tmbpartCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1amppartCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1chwpartCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    visit : string;
  end;

var
  report_r506_form: Treport_r506_form;

implementation

uses miniEMR_f;

{$R *.dfm}

procedure Treport_r506_form.emr_btnClick(Sender: TObject);
begin
    miniEMR_form := TminiEMR_form.Create(application);
    miniEMR_form.visit := Qshow_r506.FieldByName('vn').AsString;
    miniEMR_form.ShowModal;
    miniEMR_form.Free;
end;

procedure Treport_r506_form.excel_export_btnClick(Sender: TObject);
begin
   ExportGridToExcel(gettempdir + 'data_export.xls', show_visit, True, True);
   shellexecute(handle, 'Open', pchar(gettempdir + 'data_export.xls'), nil, nil,sw_normal);
end;

procedure Treport_r506_form.FormShow(Sender: TObject);
begin
        Qshow_r506.Close;
        date_start_text.Date := now;
        date_end_text.Date   := now;
        Qshow_r506.Params.ParamValues['date_start_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_start_text.Date));
        Qshow_r506.Params.ParamValues['date_end_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_end_text.Date));
        Qshow_r506.Open;
          Qshow_r506.First;
          process_Qrb1k.Position := 0;
          process_Qrb1k.properties.Max := Qshow_r506.RecordCount;
           while not Qshow_r506.Eof do
              begin
                Qshow_r506.Next;
                //sleep(1000);
                process_Qrb1k.Visible := True;
                process_Qrb1k.Position := process_Qrb1k.Position +1;
                application.ProcessMessages;
              end;
        process_Qrb1k.Visible := False;
        record_count.Caption :=  IntToStr(Qshow_r506.RecordCount);
end;

function Treport_r506_form.GetTempDir: string;
var
  TempDir: array[0..MAX_PATH] of Char;
begin
  TempDir[GetTempPath(260, TempDir)] := #0;
  Result := TempDir;
end;

procedure Treport_r506_form.post_date_btnClick(Sender: TObject);
begin
  Qshow_r506.Close;
  Qshow_r506.Params.ParamValues['date_start_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_start_text.Date));
  Qshow_r506.Params.ParamValues['date_end_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_end_text.Date));
  Qshow_r506.Open;
  Qshow_r506.First;
        process_Qrb1k.Position := 0;
        process_Qrb1k.properties.Max := Qshow_r506.RecordCount;
           while not Qshow_r506.Eof do
              begin
                Qshow_r506.Next;
                //sleep(1000);
                process_Qrb1k.Visible := True;
                process_Qrb1k.Position := process_Qrb1k.Position +1;
                application.ProcessMessages;
              end;
  process_Qrb1k.Visible := False;
  record_count.Caption :=  IntToStr(Qshow_r506.RecordCount);
end;

procedure Treport_r506_form.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure Treport_r506_form.show_visitDBTableView1amppartCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[27]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Treport_r506_form.show_visitDBTableView1begin_dateCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[10]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Treport_r506_form.show_visitDBTableView1chwpartCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[28]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Treport_r506_form.show_visitDBTableView1E0CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[3]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Treport_r506_form.show_visitDBTableView1E1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[4]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Treport_r506_form.show_visitDBTableView1moopartCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[25]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Treport_r506_form.show_visitDBTableView1pdx_506CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[11]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Treport_r506_form.show_visitDBTableView1pdx_vCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[13]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Treport_r506_form.show_visitDBTableView1ptstatCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[16]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Treport_r506_form.show_visitDBTableView1report_dateCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[2]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Treport_r506_form.show_visitDBTableView1send_epidemCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[1]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Treport_r506_form.show_visitDBTableView1sv_code506CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[14]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Treport_r506_form.show_visitDBTableView1sv_numberCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[0]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Treport_r506_form.show_visitDBTableView1tmbpartCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[26]) = '' then
        Acanvas.brush.Color := clRed ;
end;

end.
