unit kpi_fanc_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData, cxProgressBar,
  DBAccess, MyAccess, MemDS, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  RzButton, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  ExtCtrls, JvExControls, JvNavigationPane, StdCtrls,ShellAPI,cxExport,cxGridExportLink;

type
  Tkpi_fanc_form = class(TForm)
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
    Qkpi_fanc: TMyQuery;
    Dkpi_fanc: TMyDataSource;
    process_Qrb1k: TcxProgressBar;
    show_visitDBTableView1person_id: TcxGridDBColumn;
    show_visitDBTableView1patient_hn: TcxGridDBColumn;
    show_visitDBTableView1Fname: TcxGridDBColumn;
    show_visitDBTableView1anc_register_date: TcxGridDBColumn;
    show_visitDBTableView1pre_labor_service1_date: TcxGridDBColumn;
    show_visitDBTableView1preg_no: TcxGridDBColumn;
    show_visitDBTableView1current_preg_age: TcxGridDBColumn;
    show_visitDBTableView1edc: TcxGridDBColumn;
    show_visitDBTableView1lmp: TcxGridDBColumn;
    show_visitDBTableView1vaccine_tt1_date: TcxGridDBColumn;
    show_visitDBTableView1vaccine_tt2_date: TcxGridDBColumn;
    show_visitDBTableView1vaccine_tt3_date: TcxGridDBColumn;
    show_visitDBTableView1vaccine_tt4_date: TcxGridDBColumn;
    show_visitDBTableView1vaccine_dtanc1_date: TcxGridDBColumn;
    show_visitDBTableView1vaccine_dtanc2_date: TcxGridDBColumn;
    show_visitDBTableView1vaccine_dtanc3_date: TcxGridDBColumn;
    show_visitDBTableView1vaccine_dtanc4_date: TcxGridDBColumn;
    show_visitDBTableView1vaccine_dtanc5_date: TcxGridDBColumn;
    show_visitDBTableView1blood_vdrl1_result: TcxGridDBColumn;
    show_visitDBTableView1blood_vdrl2_result: TcxGridDBColumn;
    show_visitDBTableView1blood_hct_result: TcxGridDBColumn;
    show_visitDBTableView1blood_hiv1_result: TcxGridDBColumn;
    show_visitDBTableView1blood_hiv2_result: TcxGridDBColumn;
    cxLabel2: TcxLabel;
    list_year: TComboBox;
    show_visitDBTableView1vaccine_tt_complete: TcxGridDBColumn;
    show_visitDBTableView1blood_hct_grade: TcxGridDBColumn;
    show_visitDBTableView1discharge: TcxGridDBColumn;
    show_visitDBTableView1house_regist_type_id: TcxGridDBColumn;
    procedure post_date_btnClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure excel_export_btnClick(Sender: TObject);
    function  GetTempDir : string;
    procedure show_visitDBTableView1anc_register_dateCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1pre_labor_service1_dateCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1preg_noCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1current_preg_ageCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1edcCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1lmpCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1vaccine_tt_completeCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1vaccine_tt1_dateCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1vaccine_tt2_dateCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1vaccine_tt3_dateCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1vaccine_tt4_dateCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1vaccine_dtanc1_dateCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1vaccine_dtanc2_dateCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1vaccine_dtanc3_dateCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1vaccine_dtanc4_dateCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1vaccine_dtanc5_dateCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1blood_vdrl1_resultCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1blood_vdrl2_resultCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1blood_hct_gradeCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1blood_hct_resultCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1blood_hiv1_resultCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure show_visitDBTableView1blood_hiv2_resultCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  kpi_fanc_form: Tkpi_fanc_form;

implementation

uses db_connect_module;

{$R *.dfm}

procedure Tkpi_fanc_form.excel_export_btnClick(Sender: TObject);
begin
   ExportGridToExcel(gettempdir + 'data_export.xls', show_visit, True, True);
   shellexecute(handle, 'Open', pchar(gettempdir + 'data_export.xls'), nil, nil,sw_normal);
end;

function Tkpi_fanc_form.GetTempDir: string;
var
  TempDir: array[0..MAX_PATH] of Char;
begin
  TempDir[GetTempPath(260, TempDir)] := #0;
  Result := TempDir;
end;

procedure Tkpi_fanc_form.post_date_btnClick(Sender: TObject);
begin
  Qkpi_fanc.Close;
  Qkpi_fanc.Params.ParamValues['year'] := list_year.Text ;
  Qkpi_fanc.Open;
  record_count.Caption :=  IntToStr(Qkpi_fanc.RecordCount);
  Qkpi_fanc.First;
        process_Qrb1k.Position := 0;
        process_Qrb1k.properties.Max := Qkpi_fanc.RecordCount;
           while not Qkpi_fanc.Eof do
              begin
                Qkpi_fanc.Next;
                //sleep(1000);
                process_Qrb1k.Visible := True;
                process_Qrb1k.Position := process_Qrb1k.Position +1;
                application.ProcessMessages;
              end;
  process_Qrb1k.Visible := False;
end;

procedure Tkpi_fanc_form.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure Tkpi_fanc_form.show_visitDBTableView1anc_register_dateCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[5]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Tkpi_fanc_form.show_visitDBTableView1blood_hct_gradeCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[23]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Tkpi_fanc_form.show_visitDBTableView1blood_hct_resultCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[24]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Tkpi_fanc_form.show_visitDBTableView1blood_hiv1_resultCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[25]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Tkpi_fanc_form.show_visitDBTableView1blood_hiv2_resultCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[26]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Tkpi_fanc_form.show_visitDBTableView1blood_vdrl1_resultCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[21]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Tkpi_fanc_form.show_visitDBTableView1blood_vdrl2_resultCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[22]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Tkpi_fanc_form.show_visitDBTableView1current_preg_ageCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[8]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Tkpi_fanc_form.show_visitDBTableView1edcCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[9]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Tkpi_fanc_form.show_visitDBTableView1lmpCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[10]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Tkpi_fanc_form.show_visitDBTableView1preg_noCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[7]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Tkpi_fanc_form.show_visitDBTableView1pre_labor_service1_dateCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[6]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Tkpi_fanc_form.show_visitDBTableView1vaccine_dtanc1_dateCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[16]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Tkpi_fanc_form.show_visitDBTableView1vaccine_dtanc2_dateCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[17]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Tkpi_fanc_form.show_visitDBTableView1vaccine_dtanc3_dateCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[18]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Tkpi_fanc_form.show_visitDBTableView1vaccine_dtanc4_dateCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[19]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Tkpi_fanc_form.show_visitDBTableView1vaccine_dtanc5_dateCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[20]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Tkpi_fanc_form.show_visitDBTableView1vaccine_tt1_dateCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[12]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Tkpi_fanc_form.show_visitDBTableView1vaccine_tt2_dateCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[13]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Tkpi_fanc_form.show_visitDBTableView1vaccine_tt3_dateCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[14]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Tkpi_fanc_form.show_visitDBTableView1vaccine_tt4_dateCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[15]) = '' then
        Acanvas.brush.Color := clRed ;
end;

procedure Tkpi_fanc_form.show_visitDBTableView1vaccine_tt_completeCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[11]) = '' then
        Acanvas.brush.Color := clRed ;
end;

end.
