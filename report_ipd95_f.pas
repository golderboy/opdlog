unit report_ipd95_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxProgressBar,
  DBAccess, MyAccess, MemDS, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  RzButton, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  ExtCtrls, JvExControls, JvNavigationPane,ShellAPI,cxExport,cxGridExportLink;

type
  Treport_ipt95_form = class(TForm)
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
    QR_95IPD: TMyQuery;
    DR_95IPD: TMyDataSource;
    process_Qrb1k: TcxProgressBar;
    show_visitDBTableView1hcode: TcxGridDBColumn;
    show_visitDBTableView1an: TcxGridDBColumn;
    show_visitDBTableView1pdx: TcxGridDBColumn;
    show_visitDBTableView1hn: TcxGridDBColumn;
    show_visitDBTableView1dx0: TcxGridDBColumn;
    show_visitDBTableView1dx1: TcxGridDBColumn;
    show_visitDBTableView1dx2: TcxGridDBColumn;
    show_visitDBTableView1dx3: TcxGridDBColumn;
    show_visitDBTableView1dx4: TcxGridDBColumn;
    show_visitDBTableView1dx5: TcxGridDBColumn;
    show_visitDBTableView1sex: TcxGridDBColumn;
    show_visitDBTableView1age_y: TcxGridDBColumn;
    show_visitDBTableView1age_m: TcxGridDBColumn;
    show_visitDBTableView1age_d: TcxGridDBColumn;
    show_visitDBTableView1aid: TcxGridDBColumn;
    show_visitDBTableView1count_in_month: TcxGridDBColumn;
    show_visitDBTableView1count_in_year: TcxGridDBColumn;
    show_visitDBTableView1pttype: TcxGridDBColumn;
    show_visitDBTableView1income: TcxGridDBColumn;
    show_visitDBTableView1lastvisit: TcxGridDBColumn;
    show_visitDBTableView1regdate: TcxGridDBColumn;
    show_visitDBTableView1dchdate: TcxGridDBColumn;
    show_visitDBTableView1admdate: TcxGridDBColumn;
    show_visitDBTableView1drg: TcxGridDBColumn;
    show_visitDBTableView1rw: TcxGridDBColumn;
    show_visitDBTableView1los: TcxGridDBColumn;
    show_visitDBTableView1ot: TcxGridDBColumn;
    show_visitDBTableView1spclty: TcxGridDBColumn;
    show_visitDBTableView1ward: TcxGridDBColumn;
    show_visitDBTableView1print_done: TcxGridDBColumn;
    show_visitDBTableView1print_count: TcxGridDBColumn;
    show_visitDBTableView1paid_money: TcxGridDBColumn;
    show_visitDBTableView1remain_money: TcxGridDBColumn;
    show_visitDBTableView1uc_money: TcxGridDBColumn;
    show_visitDBTableView1item_money: TcxGridDBColumn;
    show_visitDBTableView1pttype_in_region: TcxGridDBColumn;
    show_visitDBTableView1pcode: TcxGridDBColumn;
    show_visitDBTableView1op0: TcxGridDBColumn;
    show_visitDBTableView1op1: TcxGridDBColumn;
    show_visitDBTableView1op2: TcxGridDBColumn;
    show_visitDBTableView1op3: TcxGridDBColumn;
    show_visitDBTableView1op4: TcxGridDBColumn;
    show_visitDBTableView1op5: TcxGridDBColumn;
    show_visitDBTableView1op6: TcxGridDBColumn;
    show_visitDBTableView1inc01: TcxGridDBColumn;
    show_visitDBTableView1inc02: TcxGridDBColumn;
    show_visitDBTableView1inc03: TcxGridDBColumn;
    show_visitDBTableView1inc04: TcxGridDBColumn;
    show_visitDBTableView1inc05: TcxGridDBColumn;
    show_visitDBTableView1inc06: TcxGridDBColumn;
    show_visitDBTableView1inc07: TcxGridDBColumn;
    show_visitDBTableView1inc08: TcxGridDBColumn;
    show_visitDBTableView1inc09: TcxGridDBColumn;
    show_visitDBTableView1inc10: TcxGridDBColumn;
    show_visitDBTableView1inc11: TcxGridDBColumn;
    show_visitDBTableView1inc12: TcxGridDBColumn;
    show_visitDBTableView1inc13: TcxGridDBColumn;
    show_visitDBTableView1inc14: TcxGridDBColumn;
    show_visitDBTableView1inc15: TcxGridDBColumn;
    show_visitDBTableView1inc16: TcxGridDBColumn;
    show_visitDBTableView1dx_doctor: TcxGridDBColumn;
    show_visitDBTableView1vn: TcxGridDBColumn;
    show_visitDBTableView1inc17: TcxGridDBColumn;
    show_visitDBTableView1pttypeno: TcxGridDBColumn;
    show_visitDBTableView1moopart: TcxGridDBColumn;
    show_visitDBTableView1gr504: TcxGridDBColumn;
    show_visitDBTableView1accident_code: TcxGridDBColumn;
    show_visitDBTableView1lastvisit_hour: TcxGridDBColumn;
    show_visitDBTableView1rcpt_money: TcxGridDBColumn;
    show_visitDBTableView1discount_money: TcxGridDBColumn;
    show_visitDBTableView1old_diagnosis: TcxGridDBColumn;
    show_visitDBTableView1debt_id_list: TcxGridDBColumn;
    show_visitDBTableView1admit_hour: TcxGridDBColumn;
    show_visitDBTableView1an_guid: TcxGridDBColumn;
    show_visitDBTableView1admdate_cut24: TcxGridDBColumn;
    show_visitDBTableView1hos_guid: TcxGridDBColumn;
    show_visitDBTableView1debt_money: TcxGridDBColumn;
    show_visitDBTableView1opd_wait_money: TcxGridDBColumn;
    show_visitDBTableView1an_1: TcxGridDBColumn;
    show_visitDBTableView1admdoctor: TcxGridDBColumn;
    show_visitDBTableView1dchdate_1: TcxGridDBColumn;
    show_visitDBTableView1dchstts: TcxGridDBColumn;
    show_visitDBTableView1dchtime: TcxGridDBColumn;
    show_visitDBTableView1dchtype: TcxGridDBColumn;
    show_visitDBTableView1dthdiagdct: TcxGridDBColumn;
    show_visitDBTableView1hn_1: TcxGridDBColumn;
    show_visitDBTableView1ivstist: TcxGridDBColumn;
    show_visitDBTableView1ivstost: TcxGridDBColumn;
    show_visitDBTableView1lockdx: TcxGridDBColumn;
    show_visitDBTableView1prediag: TcxGridDBColumn;
    show_visitDBTableView1pttype_1: TcxGridDBColumn;
    show_visitDBTableView1regdate_1: TcxGridDBColumn;
    show_visitDBTableView1regtime: TcxGridDBColumn;
    show_visitDBTableView1rfrics: TcxGridDBColumn;
    show_visitDBTableView1rfrilct: TcxGridDBColumn;
    show_visitDBTableView1rfrocs: TcxGridDBColumn;
    show_visitDBTableView1rfrolct: TcxGridDBColumn;
    show_visitDBTableView1spclty_1: TcxGridDBColumn;
    show_visitDBTableView1vn_1: TcxGridDBColumn;
    show_visitDBTableView1ward_1: TcxGridDBColumn;
    show_visitDBTableView1rcpt_disease: TcxGridDBColumn;
    show_visitDBTableView1dch_doctor: TcxGridDBColumn;
    show_visitDBTableView1ipt_type: TcxGridDBColumn;
    show_visitDBTableView1iref_type: TcxGridDBColumn;
    show_visitDBTableView1ipacc: TcxGridDBColumn;
    show_visitDBTableView1act_money_limit: TcxGridDBColumn;
    show_visitDBTableView1drg_1: TcxGridDBColumn;
    show_visitDBTableView1mdc: TcxGridDBColumn;
    show_visitDBTableView1rw_1: TcxGridDBColumn;
    show_visitDBTableView1wtlos: TcxGridDBColumn;
    show_visitDBTableView1ot_1: TcxGridDBColumn;
    show_visitDBTableView1result: TcxGridDBColumn;
    show_visitDBTableView1gravidity: TcxGridDBColumn;
    show_visitDBTableView1parity: TcxGridDBColumn;
    show_visitDBTableView1living_children: TcxGridDBColumn;
    show_visitDBTableView1rxdoctor: TcxGridDBColumn;
    show_visitDBTableView1staff: TcxGridDBColumn;
    show_visitDBTableView1bw: TcxGridDBColumn;
    show_visitDBTableView1first_ward: TcxGridDBColumn;
    show_visitDBTableView1refer_out_number: TcxGridDBColumn;
    show_visitDBTableView1incharge_doctor: TcxGridDBColumn;
    show_visitDBTableView1an_guid_1: TcxGridDBColumn;
    show_visitDBTableView1an_lock: TcxGridDBColumn;
    show_visitDBTableView1ergent: TcxGridDBColumn;
    show_visitDBTableView1chart_state: TcxGridDBColumn;
    show_visitDBTableView1receive_chart_date_time: TcxGridDBColumn;
    show_visitDBTableView1receive_chart_staff: TcxGridDBColumn;
    show_visitDBTableView1receive_chart_note: TcxGridDBColumn;
    show_visitDBTableView1adjrw: TcxGridDBColumn;
    show_visitDBTableView1ipt_spclty: TcxGridDBColumn;
    show_visitDBTableView1finance_lock: TcxGridDBColumn;
    show_visitDBTableView1last_check_autoincome: TcxGridDBColumn;
    show_visitDBTableView1admit_fee_guid: TcxGridDBColumn;
    show_visitDBTableView1leave_home_day: TcxGridDBColumn;
    show_visitDBTableView1operation_status: TcxGridDBColumn;
    show_visitDBTableView1finance_summary_date: TcxGridDBColumn;
    show_visitDBTableView1estimate_discharge_date: TcxGridDBColumn;
    show_visitDBTableView1old_cause_revisit: TcxGridDBColumn;
    show_visitDBTableView1finance_transfer: TcxGridDBColumn;
    show_visitDBTableView1provision_dx: TcxGridDBColumn;
    show_visitDBTableView1dw_hhc_list_id: TcxGridDBColumn;
    show_visitDBTableView1hos_guid_1: TcxGridDBColumn;
    show_visitDBTableView1hos_guid_ext: TcxGridDBColumn;
    show_visitDBTableView1body_height: TcxGridDBColumn;
    show_visitDBTableView1update_datetime: TcxGridDBColumn;
    show_visitDBTableView1cur_dep_code: TcxGridDBColumn;
    show_visitDBTableView1finance_status_flag: TcxGridDBColumn;
    show_visitDBTableView1ipt_admit_type_id: TcxGridDBColumn;
    show_visitDBTableView1no_visit: TcxGridDBColumn;
    show_visitDBTableView1no_food: TcxGridDBColumn;
    show_visitDBTableView1confirm_discharge: TcxGridDBColumn;
    show_visitDBTableView1lab_status: TcxGridDBColumn;
    show_visitDBTableView1xray_status: TcxGridDBColumn;
    show_visitDBTableView1provision_dx_icd: TcxGridDBColumn;
    show_visitDBTableView1ipt_severe_type_id: TcxGridDBColumn;
    show_visitDBTableView1ipt_cause_type_note: TcxGridDBColumn;
    show_visitDBTableView1followup: TcxGridDBColumn;
    show_visitDBTableView1dch_severe_type_id: TcxGridDBColumn;
    show_visitDBTableView1opd_finance_wait_tr: TcxGridDBColumn;
    show_visitDBTableView1ptname: TcxGridDBColumn;
    show_visitDBTableView1marrystatus: TcxGridDBColumn;
    show_visitDBTableView1occupation: TcxGridDBColumn;
    show_visitDBTableView1citizenship: TcxGridDBColumn;
    show_visitDBTableView1chwpart: TcxGridDBColumn;
    show_visitDBTableView1amppart: TcxGridDBColumn;
    show_visitDBTableView1cid: TcxGridDBColumn;
    show_visitDBTableView1rcpno_list: TcxGridDBColumn;
    show_visitDBTableView1birthday: TcxGridDBColumn;
    show_visitDBTableView1grouper_version: TcxGridDBColumn;
    show_visitDBTableView1grouper_err: TcxGridDBColumn;
    show_visitDBTableView1grouper_warn: TcxGridDBColumn;
    show_visitDBTableView1grouper_actlos: TcxGridDBColumn;
    show_visitDBTableView1auto_charge_amount: TcxGridDBColumn;
    show_visitDBTableView1ipt_cause_type_id: TcxGridDBColumn;
    show_visitDBTableView1sex_1: TcxGridDBColumn;
    show_visitDBTableView1sdx7: TcxGridDBColumn;
    show_visitDBTableView1sdx8: TcxGridDBColumn;
    show_visitDBTableView1sdx9: TcxGridDBColumn;
    show_visitDBTableView1sdx10: TcxGridDBColumn;
    show_visitDBTableView1sdx11: TcxGridDBColumn;
    show_visitDBTableView1sdx12: TcxGridDBColumn;
    show_visitDBTableView1proc7: TcxGridDBColumn;
    show_visitDBTableView1proc8: TcxGridDBColumn;
    show_visitDBTableView1proc9: TcxGridDBColumn;
    show_visitDBTableView1proc10: TcxGridDBColumn;
    show_visitDBTableView1proc11: TcxGridDBColumn;
    show_visitDBTableView1proc12: TcxGridDBColumn;
    show_visitDBTableView1dr_op: TcxGridDBColumn;
    procedure post_date_btnClick(Sender: TObject);
    procedure excel_export_btnClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    function  GetTempDir : string;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  report_ipt95_form: Treport_ipt95_form;

implementation

{$R *.dfm}

procedure Treport_ipt95_form.excel_export_btnClick(Sender: TObject);
begin
   ExportGridToExcel(gettempdir + 'data_export.xls', show_visit, True, True);
   shellexecute(handle, 'Open', pchar(gettempdir + 'data_export.xls'), nil, nil,sw_normal);
end;

procedure Treport_ipt95_form.FormShow(Sender: TObject);
begin
QR_95IPD.Close;
end;

function Treport_ipt95_form.GetTempDir: string;
var
  TempDir: array[0..MAX_PATH] of Char;
begin
  TempDir[GetTempPath(260, TempDir)] := #0;
  Result := TempDir;
end;

procedure Treport_ipt95_form.post_date_btnClick(Sender: TObject);
begin
  QR_95IPD.Close;
  QR_95IPD.Params.ParamValues['date_start_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_start_text.Date));
  QR_95IPD.Params.ParamValues['date_end_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_end_text.Date));
  QR_95IPD.Open;
  QR_95IPD.First;
        process_Qrb1k.Position := 0;
        process_Qrb1k.properties.Max := QR_95IPD.RecordCount;
           while not QR_95IPD.Eof do
              begin
                QR_95IPD.Next;
                //sleep(1000);
                process_Qrb1k.Visible := True;
                process_Qrb1k.Position := process_Qrb1k.Position +1;
                application.ProcessMessages;
              end;
  process_Qrb1k.Visible := False;
  record_count.Caption :=  IntToStr(QR_95IPD.RecordCount);
end;

procedure Treport_ipt95_form.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

end.
