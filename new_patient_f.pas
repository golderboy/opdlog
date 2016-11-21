unit new_patient_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData, DBAccess,
  MyAccess, MemDS, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, RzButton, cxLabel,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, ExtCtrls, JvExControls,
  JvNavigationPane,ShellAPI,cxExport,cxGridExportLink;

type
  Tnew_patient_form = class(TForm)
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
    QPatient: TMyQuery;
    DPatient: TMyDataSource;
    cxGridDBTableView1firstday: TcxGridDBColumn;
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
    cxGridDBTableView1type_area: TcxGridDBColumn;
    cxGridDBTableView1informaddr: TcxGridDBColumn;
    cxGridDBTableView1road: TcxGridDBColumn;
    cxGridDBTableView1addrpart: TcxGridDBColumn;
    cxGridDBTableView1moopart: TcxGridDBColumn;
    cxGridDBTableView1tmbpart: TcxGridDBColumn;
    cxGridDBTableView1chwpart: TcxGridDBColumn;
    cxGridDBTableView1po_code: TcxGridDBColumn;
    RzBitBtn2: TRzBitBtn;
    procedure post_date_btn2Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    function  GetTempDir : string;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  new_patient_form: Tnew_patient_form;

implementation

uses connection_unit;

{$R *.dfm}

procedure Tnew_patient_form.FormShow(Sender: TObject);
begin
  date_start_text.Date := now;
  date_end_text.Date   := now;
end;

function Tnew_patient_form.GetTempDir: string;
var
  TempDir: array[0..MAX_PATH] of Char;
begin
  TempDir[GetTempPath(260, TempDir)] := #0;
  Result := TempDir;
end;

procedure Tnew_patient_form.post_date_btn2Click(Sender: TObject);
begin
  QPatient.Close;
  QPatient.Params.ParamValues['date_start_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_start_text.Date));
  QPatient.Params.ParamValues['date_end_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_end_text.Date));
  QPatient.Open;
    //sleep(1000);
    showmessage('Done !!!');
  record_count.Caption :=  IntToStr(QPatient.RecordCount);
end;

procedure Tnew_patient_form.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure Tnew_patient_form.RzBitBtn2Click(Sender: TObject);
begin
   ExportGridToExcel(gettempdir + 'data_export.xls', show_visit, True, True);
   shellexecute(handle, 'Open', pchar(gettempdir + 'data_export.xls'), nil, nil,sw_normal);
end;

end.
