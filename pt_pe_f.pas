unit pt_pe_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData, cxProgressBar,
  DBAccess, MyAccess, MemDS, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  RzButton, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  ExtCtrls, JvExControls, JvNavigationPane;

type
  Tpt_pe_form = class(TForm)
    header_opdlog: TJvNavPanelHeader;
    Panel2: TPanel;
    date_start_text: TcxDateEdit;
    date_end_text: TcxDateEdit;
    cxLabel2: TcxLabel;
    excel_export_btn: TRzBitBtn;
    post_date_btn2: TRzBitBtn;
    Panel1: TPanel;
    RzBitBtn1: TRzBitBtn;
    cxLabel1: TcxLabel;
    record_count: TcxLabel;
    show_visit: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    QPt_pe: TMyQuery;
    DPt_pe: TMyDataSource;
    process_Qrb1k: TcxProgressBar;
    cxGridDBTableView1vstdate: TcxGridDBColumn;
    cxGridDBTableView1hn: TcxGridDBColumn;
    cxGridDBTableView1cid: TcxGridDBColumn;
    cxGridDBTableView1pname: TcxGridDBColumn;
    cxGridDBTableView1fname: TcxGridDBColumn;
    cxGridDBTableView1lname: TcxGridDBColumn;
    cxGridDBTableView1sex: TcxGridDBColumn;
    cxGridDBTableView1birthday: TcxGridDBColumn;
    cxGridDBTableView1marrystatus: TcxGridDBColumn;
    cxGridDBTableView1occupation: TcxGridDBColumn;
    cxGridDBTableView1citizenship: TcxGridDBColumn;
    cxGridDBTableView1nationality: TcxGridDBColumn;
    cxGridDBTableView1pttype: TcxGridDBColumn;
    cxGridDBTableView1type_area: TcxGridDBColumn;
    cxGridDBTableView1road: TcxGridDBColumn;
    cxGridDBTableView1addrpart: TcxGridDBColumn;
    cxGridDBTableView1moopart: TcxGridDBColumn;
    cxGridDBTableView1tmbpart: TcxGridDBColumn;
    cxGridDBTableView1chwpart: TcxGridDBColumn;
    cxGridDBTableView1po_code: TcxGridDBColumn;
    cxGridDBTableView1status_: TcxGridDBColumn;
    procedure cxGridDBTableView1pnameCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView1fnameCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView1lnameCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView1sexCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView1type_areaCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView1moopartCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBTableView1tmbpartCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure post_date_btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  pt_pe_form: Tpt_pe_form;

implementation

{$R *.dfm}

procedure Tpt_pe_form.cxGridDBTableView1fnameCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  var position : Integer;
begin
    position := ansipos('name',AViewInfo.GridRecord.Values[20]);
    if position > 0 then
      begin
       // if VarToStr(AViewInfo.GridRecord.Values[20]) = '%Pname not match,%' then
        Acanvas.brush.Color := clRed ;
      end;
end;

procedure Tpt_pe_form.cxGridDBTableView1lnameCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  var position : Integer;
begin
    position := ansipos('lname',AViewInfo.GridRecord.Values[20]);
    if position > 0 then
      begin
       // if VarToStr(AViewInfo.GridRecord.Values[20]) = '%Pname not match,%' then
        Acanvas.brush.Color := clRed ;
      end;
end;

procedure Tpt_pe_form.cxGridDBTableView1moopartCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  var position : Integer;
begin
    position := ansipos('moo',AViewInfo.GridRecord.Values[20]);
    if position > 0 then
      begin
       // if VarToStr(AViewInfo.GridRecord.Values[20]) = '%Pname not match,%' then
        Acanvas.brush.Color := clRed ;
      end;
end;

procedure Tpt_pe_form.cxGridDBTableView1pnameCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  var position : Integer;
begin
    position := ansipos('Pname',AViewInfo.GridRecord.Values[20]);
    if position > 0 then
      begin
       // if VarToStr(AViewInfo.GridRecord.Values[20]) = '%Pname not match,%' then
        Acanvas.brush.Color := clRed ;
      end;
end;

procedure Tpt_pe_form.cxGridDBTableView1sexCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  var position : Integer;
begin
    position := ansipos('sex',AViewInfo.GridRecord.Values[20]);
    if position > 0 then
      begin
       // if VarToStr(AViewInfo.GridRecord.Values[20]) = '%Pname not match,%' then
        Acanvas.brush.Color := clRed ;
      end;
end;

procedure Tpt_pe_form.cxGridDBTableView1tmbpartCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  var position : Integer;
begin
    position := ansipos('tumbon',AViewInfo.GridRecord.Values[20]);
    if position > 0 then
      begin
       // if VarToStr(AViewInfo.GridRecord.Values[20]) = '%Pname not match,%' then
        Acanvas.brush.Color := clRed ;
      end;
end;

procedure Tpt_pe_form.cxGridDBTableView1type_areaCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  var position : Integer;
begin
    position := ansipos('type_area',AViewInfo.GridRecord.Values[20]);
    if position > 0 then
      begin
       // if VarToStr(AViewInfo.GridRecord.Values[20]) = '%Pname not match,%' then
        Acanvas.brush.Color := clRed ;
      end;
end;

procedure Tpt_pe_form.post_date_btn2Click(Sender: TObject);
begin
QPt_pe.Close;
  QPt_pe.Params.ParamValues['date_start_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_start_text.Date));
  QPt_pe.Params.ParamValues['date_end_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_end_text.Date));
  QPt_pe.Open;
  QPt_pe.First;
        process_Qrb1k.Position := 0;
        process_Qrb1k.properties.Max := QPt_pe.RecordCount;
           while not QPt_pe.Eof do
              begin
                QPt_pe.Next;
                //sleep(1000);
                process_Qrb1k.Visible := True;
                process_Qrb1k.Position := process_Qrb1k.Position +1;
                application.ProcessMessages;
              end;
  process_Qrb1k.Visible := False;
  record_count.Caption :=  IntToStr(QPt_pe.RecordCount);
end;

procedure Tpt_pe_form.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

end.
