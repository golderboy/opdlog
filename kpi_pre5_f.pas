unit kpi_pre5_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData, cxProgressBar,
  DBAccess, MyAccess, MemDS, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, RzButton,
  ExtCtrls, JvExControls, JvNavigationPane, StdCtrls,ShellAPI,cxExport,cxGridExportLink;

type
  Tkpi_pre5_form = class(TForm)
    header_opdlog: TJvNavPanelHeader;
    Panel1: TPanel;
    RzBitBtn1: TRzBitBtn;
    cxLabel1: TcxLabel;
    record_count: TcxLabel;
    show_visit: TcxGrid;
    show_visitDBTableView1: TcxGridDBTableView;
    show_visitLevel1: TcxGridLevel;
    Qkpi_pre5: TMyQuery;
    Dkpi_pre5: TMyDataSource;
    process_Qrb1k: TcxProgressBar;
    Panel2: TPanel;
    post_date_btn: TRzBitBtn;
    excel_export_btn: TRzBitBtn;
    cxLabel2: TcxLabel;
    list_year: TComboBox;
    show_visitDBTableView1person_anc_id: TcxGridDBColumn;
    show_visitDBTableView1person_id: TcxGridDBColumn;
    show_visitDBTableView1patient_hn: TcxGridDBColumn;
    show_visitDBTableView1discharge: TcxGridDBColumn;
    show_visitDBTableView1discharge_date: TcxGridDBColumn;
    show_visitDBTableView1labor_date: TcxGridDBColumn;
    show_visitDBTableView1Fname: TcxGridDBColumn;
    show_visitDBTableView1house_regist_type_id: TcxGridDBColumn;
    show_visitDBTableView1preg_no: TcxGridDBColumn;
    show_visitDBTableView1pp1: TcxGridDBColumn;
    show_visitDBTableView1pp2: TcxGridDBColumn;
    show_visitDBTableView1pp3: TcxGridDBColumn;
    show_visitDBTableView1pp4: TcxGridDBColumn;
    show_visitDBTableView1pp5: TcxGridDBColumn;
    procedure post_date_btnClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure excel_export_btnClick(Sender: TObject);
    function  GetTempDir : string;
    procedure show_visitDBTableView1labor_dateCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1preg_noCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1pp1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1pp2CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1pp3CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1pp4CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1pp5CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1discharge_dateCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  kpi_pre5_form: Tkpi_pre5_form;

implementation

uses db_connect_module;

{$R *.dfm}

procedure Tkpi_pre5_form.excel_export_btnClick(Sender: TObject);
begin
   ExportGridToExcel(gettempdir + 'data_export.xls', show_visit, True, True);
   shellexecute(handle, 'Open', pchar(gettempdir + 'data_export.xls'), nil, nil,sw_normal);
end;

function Tkpi_pre5_form.GetTempDir: string;
var
  TempDir: array[0..MAX_PATH] of Char;
begin
  TempDir[GetTempPath(260, TempDir)] := #0;
  Result := TempDir;
end;

procedure Tkpi_pre5_form.post_date_btnClick(Sender: TObject);
begin
  //Qkpi_pre5.Close;

  Qkpi_pre5.Close;
  Qkpi_pre5.Params.ParamValues['year'] := list_year.Text ;
  Qkpi_pre5.Open;
  record_count.Caption :=  IntToStr(Qkpi_pre5.RecordCount);
  Qkpi_pre5.First;
        process_Qrb1k.Position := 0;
        process_Qrb1k.properties.Max := Qkpi_pre5.RecordCount;
           while not Qkpi_pre5.Eof do
              begin
                Qkpi_pre5.Next;
                //sleep(1000);
                process_Qrb1k.Visible := True;
                process_Qrb1k.Position := process_Qrb1k.Position +1;
                application.ProcessMessages;
              end;
  process_Qrb1k.Visible := False;
end;

procedure Tkpi_pre5_form.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure Tkpi_pre5_form.show_visitDBTableView1discharge_dateCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if (VarToStr(AViewInfo.GridRecord.Values[3]) = 'Y') AND (VarToStr(AViewInfo.GridRecord.Values[4]) = '') then
        Acanvas.brush.Color := clRed ;
end;

procedure Tkpi_pre5_form.show_visitDBTableView1labor_dateCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[5]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Tkpi_pre5_form.show_visitDBTableView1pp1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[9]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Tkpi_pre5_form.show_visitDBTableView1pp2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[10]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Tkpi_pre5_form.show_visitDBTableView1pp3CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[11]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Tkpi_pre5_form.show_visitDBTableView1pp4CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[12]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Tkpi_pre5_form.show_visitDBTableView1pp5CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[13]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Tkpi_pre5_form.show_visitDBTableView1preg_noCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[8]) = '' then
        Acanvas.brush.Color := clRed ;
end;

end.
