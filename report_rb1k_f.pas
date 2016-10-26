unit report_rb1k_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData, MemDS, DBAccess,
  MyAccess, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxDBEdit, cxGroupBox,
  RzButton, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  ExtCtrls, cxProgressBar,ShellAPI,cxExport,cxGridExportLink;

type
  Treport_rb1k = class(TForm)
    Panel1: TPanel;
    date_start_text: TcxDateEdit;
    date_end_text: TcxDateEdit;
    cxLabel2: TcxLabel;
    post_date_btn: TRzBitBtn;
    excel_export_btn: TRzBitBtn;
    group_data: TcxGroupBox;
    RzBitBtn4: TRzBitBtn;
    show_visit: TcxGrid;
    show_visitDBTableView1: TcxGridDBTableView;
    show_visitDBTableView1vn: TcxGridDBColumn;
    show_visitDBTableView1hn: TcxGridDBColumn;
    show_visitDBTableView1an: TcxGridDBColumn;
    show_visitDBTableView1vstdate: TcxGridDBColumn;
    show_visitDBTableView1vsttime: TcxGridDBColumn;
    show_visitDBTableView1oqueue: TcxGridDBColumn;
    show_visitDBTableView1ptname: TcxGridDBColumn;
    show_visitDBTableView1spclty_name: TcxGridDBColumn;
    show_visitDBTableView1ovstist_name: TcxGridDBColumn;
    show_visitDBTableView1department_name: TcxGridDBColumn;
    show_visitDBTableView1register_department_name: TcxGridDBColumn;
    show_visitDBTableView1pt_walk_name: TcxGridDBColumn;
    show_visitDBTableView1height: TcxGridDBColumn;
    show_visitDBTableView1waist: TcxGridDBColumn;
    show_visitDBTableView1bmi: TcxGridDBColumn;
    show_visitDBTableView1bpd: TcxGridDBColumn;
    show_visitDBTableView1bps: TcxGridDBColumn;
    show_visitDBTableView1bw: TcxGridDBColumn;
    show_visitDBTableView1hr: TcxGridDBColumn;
    show_visitDBTableView1pe: TcxGridDBColumn;
    show_visitDBTableView1pulse: TcxGridDBColumn;
    show_visitDBTableView1rr: TcxGridDBColumn;
    show_visitDBTableView1temperature: TcxGridDBColumn;
    show_visitDBTableView1cc: TcxGridDBColumn;
    show_visitDBTableView1hpi: TcxGridDBColumn;
    show_visitDBTableView1pmh: TcxGridDBColumn;
    show_visitDBTableView1pttype_name: TcxGridDBColumn;
    show_visitDBTableView1pttypeno: TcxGridDBColumn;
    show_visitDBTableView1pdx_name: TcxGridDBColumn;
    show_visitDBTableView1ost_name: TcxGridDBColumn;
    show_visitDBTableView1hospital_department_name: TcxGridDBColumn;
    show_visitDBTableView1doctor_list_text: TcxGridDBColumn;
    show_visitDBTableView1sub_spclty_name: TcxGridDBColumn;
    show_visitDBTableView1visit_type_name: TcxGridDBColumn;
    show_visitDBTableView1age_y: TcxGridDBColumn;
    show_visitDBTableView1age_m: TcxGridDBColumn;
    show_visitDBTableView1age_d: TcxGridDBColumn;
    show_visitDBTableView1income: TcxGridDBColumn;
    show_visitLevel1: TcxGridLevel;
    Dshow_rb1k: TMyDataSource;
    report_view: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Qshow_rb1k: TMyQuery;
    process_Qrb1k: TcxProgressBar;
    cxLabel1: TcxLabel;
    record_count: TcxLabel;
    emr_btn: TRzBitBtn;
    cxGridDBTableView1vn: TcxGridDBColumn;
    cxGridDBTableView1vstdate: TcxGridDBColumn;
    cxGridDBTableView1vsttime: TcxGridDBColumn;
    cxGridDBTableView1oqueue: TcxGridDBColumn;
    cxGridDBTableView1hn: TcxGridDBColumn;
    cxGridDBTableView1ptname: TcxGridDBColumn;
    cxGridDBTableView1cid: TcxGridDBColumn;
    cxGridDBTableView1sex: TcxGridDBColumn;
    cxGridDBTableView1birthday: TcxGridDBColumn;
    cxGridDBTableView1age: TcxGridDBColumn;
    cxGridDBTableView1type_area: TcxGridDBColumn;
    cxGridDBTableView1pttype: TcxGridDBColumn;
    cxGridDBTableView1pttype_name: TcxGridDBColumn;
    cxGridDBTableView1pttypeno: TcxGridDBColumn;
    cxGridDBTableView1hospmain: TcxGridDBColumn;
    cxGridDBTableView1hospsub: TcxGridDBColumn;
    cxGridDBTableView1spclty_name: TcxGridDBColumn;
    cxGridDBTableView1ovstist_name: TcxGridDBColumn;
    cxGridDBTableView1department_name: TcxGridDBColumn;
    cxGridDBTableView1register_department_name: TcxGridDBColumn;
    cxGridDBTableView1doctor_list_text: TcxGridDBColumn;
    cxGridDBTableView1pt_walk_name: TcxGridDBColumn;
    cxGridDBTableView1visit_type_name: TcxGridDBColumn;
    cxGridDBTableView1addr: TcxGridDBColumn;
    cxGridDBTableView1tombon: TcxGridDBColumn;
    cxGridDBTableView1aumpur: TcxGridDBColumn;
    cxGridDBTableView1chanwat: TcxGridDBColumn;
    cxGridDBTableView1cc: TcxGridDBColumn;
    cxGridDBTableView1main_pdx: TcxGridDBColumn;
    cxGridDBTableView1pdx_name: TcxGridDBColumn;
    cxGridDBTableView1dx0: TcxGridDBColumn;
    cxGridDBTableView1dx1: TcxGridDBColumn;
    cxGridDBTableView1dx2: TcxGridDBColumn;
    cxGridDBTableView1dx3: TcxGridDBColumn;
    cxGridDBTableView1dx4: TcxGridDBColumn;
    cxGridDBTableView1dx5: TcxGridDBColumn;
    cxGridDBTableView1drname: TcxGridDBColumn;
    cxGridDBTableView1income: TcxGridDBColumn;
    cxGridDBTableView1paid: TcxGridDBColumn;
    cxGridDBTableView1remain: TcxGridDBColumn;
    cxGridDBTableView1uc: TcxGridDBColumn;
    cxGridDBTableView1item_money: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn4Click(Sender: TObject);
    procedure post_date_btnClick(Sender: TObject);
    function  GetTempDir : string;
    procedure excel_export_btnClick(Sender: TObject);
    procedure emr_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    visit : string;
  end;

var
  report_rb1k: Treport_rb1k;

implementation

uses db_connect_module, connection_unit, login_f, main_Unit, miniEMR_f;

{$R *.dfm}

procedure Treport_rb1k.emr_btnClick(Sender: TObject);
begin
    miniEMR_form := TminiEMR_form.Create(application);
    miniEMR_form.visit := Qshow_rb1k.FieldByName('vn').AsString;
    miniEMR_form.ShowModal;
    miniEMR_form.Free;
end;

procedure Treport_rb1k.excel_export_btnClick(Sender: TObject);
begin
    ExportGridToExcel(gettempdir + 'รายงาน รบ.1ก.xls', report_view, True, True);
    shellexecute(handle, 'Open', pchar(gettempdir + 'รายงาน รบ.1ก.xls'), nil, nil,sw_normal);
end;

procedure Treport_rb1k.FormShow(Sender: TObject);
begin
        Qshow_rb1k.Close;
        date_start_text.Date := now;
        date_end_text.Date   := now;
        Qshow_rb1k.Params.ParamValues['date_start_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_start_text.Date));
        Qshow_rb1k.Params.ParamValues['date_end_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_end_text.Date));
        Qshow_rb1k.Open;
          Qshow_rb1k.First;
          process_Qrb1k.Position := 0;
          process_Qrb1k.properties.Max := Qshow_rb1k.RecordCount;
           while not Qshow_rb1k.Eof do
              begin
                Qshow_rb1k.Next;
                //sleep(1000);
                process_Qrb1k.Visible := True;
                process_Qrb1k.Position := process_Qrb1k.Position +1;
                application.ProcessMessages;
              end;
        process_Qrb1k.Visible := False;
        record_count.Caption :=  IntToStr(Qshow_rb1k.RecordCount);
end;

function Treport_rb1k.GetTempDir: string;
var
  TempDir: array[0..MAX_PATH] of Char;
begin
  TempDir[GetTempPath(260, TempDir)] := #0;
  Result := TempDir;

end;

procedure Treport_rb1k.post_date_btnClick(Sender: TObject);
begin

  Qshow_rb1k.Close;
  Qshow_rb1k.Params.ParamValues['date_start_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_start_text.Date));
  Qshow_rb1k.Params.ParamValues['date_end_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_end_text.Date));
  Qshow_rb1k.Open;
  Qshow_rb1k.First;
        process_Qrb1k.Position := 0;
        process_Qrb1k.properties.Max := Qshow_rb1k.RecordCount;
           while not Qshow_rb1k.Eof do
              begin
                Qshow_rb1k.Next;
                //sleep(1000);
                process_Qrb1k.Visible := True;
                process_Qrb1k.Position := process_Qrb1k.Position +1;
                application.ProcessMessages;
              end;
  process_Qrb1k.Visible := False;
  record_count.Caption :=  IntToStr(Qshow_rb1k.RecordCount);
end;

procedure Treport_rb1k.RzBitBtn4Click(Sender: TObject);
begin
close;
end;

end.
