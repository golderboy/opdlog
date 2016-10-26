unit show_dentlog_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData, cxProgressBar,
  DBAccess, MyAccess, MemDS, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  RzButton, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  ExtCtrls, JvExControls, JvNavigationPane,ShellAPI,cxExport,cxGridExportLink;

type
  Tshow_dent_form = class(TForm)
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
    Qshow_dent: TMyQuery;
    data_dent: TMyDataSource;
    process_Qrb1k: TcxProgressBar;
    show_visit: TcxGrid;
    show_visitDBTableView1: TcxGridDBTableView;
    show_visitLevel1: TcxGridLevel;
    show_visitDBTableView1vn: TcxGridDBColumn;
    show_visitDBTableView1vstdate: TcxGridDBColumn;
    show_visitDBTableView1vsttime: TcxGridDBColumn;
    show_visitDBTableView1hn: TcxGridDBColumn;
    show_visitDBTableView1ptname: TcxGridDBColumn;
    show_visitDBTableView1cid: TcxGridDBColumn;
    show_visitDBTableView1visit_type_name: TcxGridDBColumn;
    show_visitDBTableView1pt_walk_name: TcxGridDBColumn;
    show_visitDBTableView1pttype: TcxGridDBColumn;
    show_visitDBTableView1name: TcxGridDBColumn;
    show_visitDBTableView1pdx: TcxGridDBColumn;
    show_visitDBTableView1height: TcxGridDBColumn;
    show_visitDBTableView1bw: TcxGridDBColumn;
    show_visitDBTableView1waist: TcxGridDBColumn;
    show_visitDBTableView1bmi: TcxGridDBColumn;
    show_visitDBTableView1bpd: TcxGridDBColumn;
    show_visitDBTableView1bps: TcxGridDBColumn;
    show_visitDBTableView1hr: TcxGridDBColumn;
    show_visitDBTableView1pe: TcxGridDBColumn;
    show_visitDBTableView1pulse: TcxGridDBColumn;
    show_visitDBTableView1rr: TcxGridDBColumn;
    show_visitDBTableView1temperature: TcxGridDBColumn;
    show_visitDBTableView1cc: TcxGridDBColumn;
    show_visitDBTableView1hpi: TcxGridDBColumn;
    show_visitDBTableView1pmh: TcxGridDBColumn;
    show_visitDBTableView1GROUP_CONCATdentfee: TcxGridDBColumn;
    show_visitDBTableView1GROUP_CONCATdenticd: TcxGridDBColumn;
    show_visitDBTableView1GROUP_CONCATdenticd9: TcxGridDBColumn;
    show_visitDBTableView1GROUP_CONCATdentscount: TcxGridDBColumn;
    show_visitDBTableView1GROUP_CONCATdenttcount: TcxGridDBColumn;
    show_visitDBTableView1ttcode: TcxGridDBColumn;
    show_visitDBTableView1GROUP_CONCATdentpregnancy: TcxGridDBColumn;
    show_visitDBTableView1GROUP_CONCATdentpost_labour: TcxGridDBColumn;
    show_visitDBTableView1GROUP_CONCATdentreport_update: TcxGridDBColumn;
    show_visitDBTableView1GROUP_CONCATdentpregnancy_caries_count: TcxGridDBColumn;
    show_visitDBTableView1GROUP_CONCATdentpregnancy_gingivitis: TcxGridDBColumn;
    show_visitDBTableView1GROUP_CONCATdentpregnancy_calculus: TcxGridDBColumn;
    show_visitDBTableView1GROUP_CONCATdentpregnancy_checkup: TcxGridDBColumn;
    show_visitDBTableView1GROUP_CONCATdentrc_count: TcxGridDBColumn;
    show_visitDBTableView1dental_care_type_name: TcxGridDBColumn;
    show_visitDBTableView1dental_care_service_place_type_name: TcxGridDBColumn;
    show_visitDBTableView1GROUP_CONCATcarepteeth: TcxGridDBColumn;
    show_visitDBTableView1GROUP_CONCATcarepcaries: TcxGridDBColumn;
    show_visitDBTableView1GROUP_CONCATcarepfilling: TcxGridDBColumn;
    show_visitDBTableView1GROUP_CONCATcarepextract: TcxGridDBColumn;
    show_visitDBTableView1GROUP_CONCATcaredteeth: TcxGridDBColumn;
    show_visitDBTableView1GROUP_CONCATcaredcaries: TcxGridDBColumn;
    show_visitDBTableView1GROUP_CONCATcaredfilling: TcxGridDBColumn;
    show_visitDBTableView1GROUP_CONCATcaredextract: TcxGridDBColumn;
    show_visitDBTableView1GROUP_CONCATcareneed_fluoride: TcxGridDBColumn;
    show_visitDBTableView1GROUP_CONCATneed_scaling: TcxGridDBColumn;
    show_visitDBTableView1GROUP_CONCATneed_sealant: TcxGridDBColumn;
    show_visitDBTableView1GROUP_CONCATcareneed_pfilling: TcxGridDBColumn;
    show_visitDBTableView1GROUP_CONCATneed_dextract: TcxGridDBColumn;
    show_visitDBTableView1dental_care_nprosthesis_name: TcxGridDBColumn;
    show_visitDBTableView1GROUP_CONCATcarepermanent_perma: TcxGridDBColumn;
    show_visitDBTableView1GROUP_CONCATcarepermanent_prost: TcxGridDBColumn;
    show_visitDBTableView1GROUP_CONCATcareprosthesis_prost: TcxGridDBColumn;
    show_visitDBTableView1dental_care_gum_type_name: TcxGridDBColumn;
    show_visitDBTableView1dental_care_school_type_name: TcxGridDBColumn;
    show_visitDBTableView1dental_care_school_class_type_name: TcxGridDBColumn;
    show_visitDBTableView1dental_care_gum_type_name_1: TcxGridDBColumn;
    show_visitDBTableView1dental_care_gum_type_name_2: TcxGridDBColumn;
    show_visitDBTableView1dental_care_gum_type_name_3: TcxGridDBColumn;
    show_visitDBTableView1dental_care_gum_type_name_4: TcxGridDBColumn;
    show_visitDBTableView1dental_care_gum_type_name_5: TcxGridDBColumn;
    show_visitDBTableView1dental_care_gum_type_name_6: TcxGridDBColumn;
    emr_btn: TRzBitBtn;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure post_date_btnClick(Sender: TObject);
    procedure excel_export_btnClick(Sender: TObject);
    function  GetTempDir : string;
    procedure FormShow(Sender: TObject);
    procedure emr_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    visit : string;
  end;

var
  show_dent_form: Tshow_dent_form;

implementation

uses connection_unit, miniEMR_f;

{$R *.dfm}

procedure Tshow_dent_form.emr_btnClick(Sender: TObject);
begin
    miniEMR_form := TminiEMR_form.Create(application);
    miniEMR_form.visit := Qshow_dent.FieldByName('vn').AsString;
    miniEMR_form.ShowModal;
    miniEMR_form.Free;
end;

procedure Tshow_dent_form.excel_export_btnClick(Sender: TObject);
begin
   ExportGridToExcel(gettempdir + 'data_export.xls', show_visit, True, True);
   shellexecute(handle, 'Open', pchar(gettempdir + 'data_export.xls'), nil, nil,sw_normal);
end;

procedure Tshow_dent_form.FormShow(Sender: TObject);
begin
process_Qrb1k.Visible := True;

  Qshow_dent.Close;
  date_start_text.Date := now;
  date_end_text.Date   := now;
  Qshow_dent.Params.ParamValues['date_start_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_start_text.Date));
  Qshow_dent.Params.ParamValues['date_end_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_end_text.Date));
  Qshow_dent.Open;
  record_count.Caption :=  IntToStr(Qshow_dent.RecordCount);
process_Qrb1k.Visible := False;
end;

function Tshow_dent_form.GetTempDir: string;
var
  TempDir: array[0..MAX_PATH] of Char;
begin
  TempDir[GetTempPath(260, TempDir)] := #0;
  Result := TempDir;
end;

procedure Tshow_dent_form.post_date_btnClick(Sender: TObject);
begin
  Qshow_dent.Close;
  Qshow_dent.Params.ParamValues['date_start_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_start_text.Date));
  Qshow_dent.Params.ParamValues['date_end_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_end_text.Date));
  Qshow_dent.Open;
  Qshow_dent.First;
        process_Qrb1k.Position := 0;
        process_Qrb1k.properties.Max := Qshow_dent.RecordCount;
           while not Qshow_dent.Eof do
              begin
                Qshow_dent.Next;
                //sleep(1000);
                process_Qrb1k.Visible := True;
                process_Qrb1k.Position := process_Qrb1k.Position +1;
                application.ProcessMessages;
              end;
  process_Qrb1k.Visible := False;
  record_count.Caption :=  IntToStr(Qshow_dent.RecordCount);
end;

procedure Tshow_dent_form.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

end.
