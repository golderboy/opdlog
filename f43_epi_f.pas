unit f43_epi_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, DBAccess, MyAccess,
  MemDS, cxProgressBar, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  RzButton, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  ExtCtrls, JvExControls, JvNavigationPane,ShellAPI,cxExport,cxGridExportLink;

type
  Tf43_epi_form = class(TForm)
    header_opdlog: TJvNavPanelHeader;
    Panel2: TPanel;
    date_start_text: TcxDateEdit;
    date_end_text: TcxDateEdit;
    cxLabel2: TcxLabel;
    post_date_btn: TRzBitBtn;
    excel_export_btn: TRzBitBtn;
    show_visit: TcxGrid;
    show_visitDBTableView1: TcxGridDBTableView;
    show_visitLevel1: TcxGridLevel;
    Panel1: TPanel;
    RzBitBtn1: TRzBitBtn;
    cxLabel1: TcxLabel;
    record_count: TcxLabel;
    process_Qrb1k: TcxProgressBar;
    Qf43_epi: TMyQuery;
    Df43_epi: TMyDataSource;
    show_visitDBTableView1HOSPCODE: TcxGridDBColumn;
    show_visitDBTableView1PID: TcxGridDBColumn;
    show_visitDBTableView1SEQ: TcxGridDBColumn;
    show_visitDBTableView1DATE_SERV: TcxGridDBColumn;
    show_visitDBTableView1VACCINETYPE: TcxGridDBColumn;
    show_visitDBTableView1VACCINEPLACE: TcxGridDBColumn;
    show_visitDBTableView1PROVIDER: TcxGridDBColumn;
    show_visitDBTableView1D_UPDATE: TcxGridDBColumn;
    show_visitDBTableView1CID: TcxGridDBColumn;
    show_visitDBTableView1HN: TcxGridDBColumn;
    show_visitDBTableView1ptname: TcxGridDBColumn;
    show_visitDBTableView1typearea: TcxGridDBColumn;
    show_visitDBTableView1discharge: TcxGridDBColumn;
    procedure post_date_btnClick(Sender: TObject);
    procedure excel_export_btnClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    function  GetTempDir : string;
    procedure FormShow(Sender: TObject);
    procedure show_visitDBTableView1DATE_SERVCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1VACCINETYPECustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1VACCINEPLACECustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1PIDCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f43_epi_form: Tf43_epi_form;

implementation

uses db_connect_module;

{$R *.dfm}

procedure Tf43_epi_form.excel_export_btnClick(Sender: TObject);
begin
 ExportGridToExcel(gettempdir + 'data_export.xls', show_visit, True, True);
 shellexecute(handle, 'Open', pchar(gettempdir + 'data_export.xls'), nil, nil,sw_normal);
end;

procedure Tf43_epi_form.FormShow(Sender: TObject);
begin
 process_Qrb1k.Visible := False;

  Qf43_epi.Close;
  date_start_text.Date := now;
  date_end_text.Date   := now;
  Qf43_epi.Params.ParamValues['date_start_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_start_text.Date));
  Qf43_epi.Params.ParamValues['date_end_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_end_text.Date));
  Qf43_epi.Open;
  record_count.Caption :=  IntToStr(Qf43_epi.RecordCount);
end;

function Tf43_epi_form.GetTempDir: string;
var
  TempDir: array[0..MAX_PATH] of Char;
begin
  TempDir[GetTempPath(260, TempDir)] := #0;
  Result := TempDir;
end;

procedure Tf43_epi_form.post_date_btnClick(Sender: TObject);
begin
Qf43_epi.Close;
  Qf43_epi.Params.ParamValues['date_start_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_start_text.Date));
  Qf43_epi.Params.ParamValues['date_end_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_end_text.Date));
  Qf43_epi.Open;
  Qf43_epi.First;
        process_Qrb1k.Position := 0;
        process_Qrb1k.properties.Max := Qf43_epi.RecordCount;
           while not Qf43_epi.Eof do
              begin
                Qf43_epi.Next;
                //sleep(1000);
                process_Qrb1k.Visible := True;
                process_Qrb1k.Position := process_Qrb1k.Position +1;
                application.ProcessMessages;
              end;
  process_Qrb1k.Visible := False;
  record_count.Caption :=  IntToStr(Qf43_epi.RecordCount);
end;

procedure Tf43_epi_form.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure Tf43_epi_form.show_visitDBTableView1DATE_SERVCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[3]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Tf43_epi_form.show_visitDBTableView1PIDCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[1]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Tf43_epi_form.show_visitDBTableView1VACCINEPLACECustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[5]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Tf43_epi_form.show_visitDBTableView1VACCINETYPECustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[4]) = '' then
        Acanvas.brush.Color := clRed ;
end;

end.
