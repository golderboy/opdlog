unit chk_patient_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData, DBAccess,
  MyAccess, MemDS, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, RzButton, cxLabel,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, ExtCtrls, JvExControls,
  JvNavigationPane,ShellAPI,cxExport,cxGridExportLink, StdCtrls,
  JvComponentBase, JvBDEQuery, cxMemo, cxDBEdit;

type
  Tchk_patient_form = class(TForm)
    header_opdlog: TJvNavPanelHeader;
    Panel2: TPanel;
    date_start_text: TcxDateEdit;
    date_end_text: TcxDateEdit;
    cxLabel2: TcxLabel;
    post_date_btn1: TRzBitBtn;
    excel_export_btn: TRzBitBtn;
    Panel1: TPanel;
    RzBitBtn1: TRzBitBtn;
    cxLabel1: TcxLabel;
    record_count: TcxLabel;
    show_visit1: TcxGrid;
    show_visit1DBTableView1: TcxGridDBTableView;
    show_visit1Level1: TcxGridLevel;
    QPatient1: TMyQuery;
    DPatient1: TMyDataSource;
    show_visit1DBTableView1vstdate: TcxGridDBColumn;
    show_visit1DBTableView1hn: TcxGridDBColumn;
    show_visit1DBTableView1cid: TcxGridDBColumn;
    show_visit1DBTableView1pname: TcxGridDBColumn;
    show_visit1DBTableView1fname: TcxGridDBColumn;
    show_visit1DBTableView1lname: TcxGridDBColumn;
    show_visit1DBTableView1sex: TcxGridDBColumn;
    show_visit1DBTableView1birthday: TcxGridDBColumn;
    show_visit1DBTableView1marrystatus: TcxGridDBColumn;
    show_visit1DBTableView1occupation: TcxGridDBColumn;
    show_visit1DBTableView1citizenship: TcxGridDBColumn;
    show_visit1DBTableView1nationality: TcxGridDBColumn;
    show_visit1DBTableView1pttype: TcxGridDBColumn;
    show_visit1DBTableView1type_area: TcxGridDBColumn;
    show_visit1DBTableView1road: TcxGridDBColumn;
    show_visit1DBTableView1addrpart: TcxGridDBColumn;
    show_visit1DBTableView1moopart: TcxGridDBColumn;
    show_visit1DBTableView1tmbpart: TcxGridDBColumn;
    show_visit1DBTableView1chwpart: TcxGridDBColumn;
    show_visit1DBTableView1po_code: TcxGridDBColumn;
    show_visit1DBTableView1status_: TcxGridDBColumn;
    post_date_btn2: TRzBitBtn;
    QPatient2: TMyQuery;
    DPatient2: TMyDataSource;
    show_visit2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    procedure post_date_btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure excel_export_btnClick(Sender: TObject);
    function  GetTempDir : string;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure post_date_btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  chk_patient_form: Tchk_patient_form;

implementation

uses db_connect_module;

{$R *.dfm}

procedure Tchk_patient_form.excel_export_btnClick(Sender: TObject);
begin
if show_visit1.Visible then
    begin
   ExportGridToExcel(gettempdir + 'show_visit1.xls', show_visit1, True, True);
   shellexecute(handle, 'Open', pchar(gettempdir + 'show_visit1.xls'), nil, nil,sw_normal);
    end;
if show_visit2.Visible then
    begin
   ExportGridToExcel(gettempdir + 'show_visit2.xls', show_visit2, True, True);
   shellexecute(handle, 'Open', pchar(gettempdir + 'show_visit2.xls'), nil, nil,sw_normal);
    end;

end;

procedure Tchk_patient_form.FormShow(Sender: TObject);
begin
  date_start_text.Date := now;
  date_end_text.Date   := now;
  show_visit1.Visible := false;
  show_visit2.Visible := false;
end;

function Tchk_patient_form.GetTempDir: string;
var
  TempDir: array[0..MAX_PATH] of Char;
begin
  TempDir[GetTempPath(260, TempDir)] := #0;
  Result := TempDir;
end;

procedure Tchk_patient_form.post_date_btn1Click(Sender: TObject);
begin
  QPatient1.Close;
  QPatient1.Params.ParamValues['date_start_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_start_text.Date));
  QPatient1.Params.ParamValues['date_end_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_end_text.Date));
  QPatient1.Open;
  show_visit2.Visible := false;
  show_visit1.Visible := True;
    //sleep(1000);
    showmessage('Done !!!');
  record_count.Caption :=  IntToStr(QPatient1.RecordCount);
end;

procedure Tchk_patient_form.post_date_btn2Click(Sender: TObject);
begin
  QPatient2.Close;
  QPatient2.Params.ParamValues['date_start_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_start_text.Date));
  QPatient2.Params.ParamValues['date_end_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_end_text.Date));
  QPatient2.Open;
  show_visit1.Visible := false;
  show_visit2.Visible := True;
    //sleep(1000);
    showmessage('Done !!!');
  record_count.Caption :=  IntToStr(QPatient2.RecordCount);
end;

procedure Tchk_patient_form.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

end.
