unit blood_mian_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData, MemDS, DBAccess,
  MyAccess, cxDBEdit, cxGroupBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  RzButton, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  ExtCtrls, JvExControls, JvNavigationPane,ShellAPI,cxExport,cxGridExportLink;

type
  Tblood_mian_form = class(TForm)
    JvNavPanelHeader1: TJvNavPanelHeader;
    Panel1: TPanel;
    date_start_text: TcxDateEdit;
    date_end_text: TcxDateEdit;
    cxLabel2: TcxLabel;
    post_date_btn: TRzBitBtn;
    excel_export_btn: TRzBitBtn;
    show_visit: TcxGrid;
    show_visitDBTableView1: TcxGridDBTableView;
    show_visitLevel1: TcxGridLevel;
    group_data: TcxGroupBox;
    data_opdlog: TMyDataSource;
    Qshow_opdscreen: TMyQuery;
    add_blood_btn: TRzBitBtn;
    edit_blood_btn: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    show_visitDBTableView1vn: TcxGridDBColumn;
    show_visitDBTableView1hn: TcxGridDBColumn;
    show_visitDBTableView1an: TcxGridDBColumn;
    show_visitDBTableView1vstdate: TcxGridDBColumn;
    show_visitDBTableView1vsttime: TcxGridDBColumn;
    show_visitDBTableView1oqueue: TcxGridDBColumn;
    show_visitDBTableView1ptname: TcxGridDBColumn;
    show_visitDBTableView1department_name: TcxGridDBColumn;
    show_visitDBTableView1register_department_name: TcxGridDBColumn;
    show_visitDBTableView1age_y: TcxGridDBColumn;
    show_visitDBTableView1age_m: TcxGridDBColumn;
    show_visitDBTableView1age_d: TcxGridDBColumn;
    procedure post_date_btnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure add_blood_btnClick(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
    function  GetTempDir : string;
    procedure excel_export_btnClick(Sender: TObject);
    procedure edit_blood_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    visit : string;
  end;

var
  blood_mian_form: Tblood_mian_form;

implementation

uses db_connect_module, pay_blood_f, payblood_f;

{$R *.dfm}

procedure Tblood_mian_form.edit_blood_btnClick(Sender: TObject);
begin
    pay_blood_from := Tpay_blood_from.Create(application);
    pay_blood_from.visit := Qshow_opdscreen.FieldByName('vn').AsString;

    pay_blood_from.ShowModal;
    pay_blood_from.Free;
end;

procedure Tblood_mian_form.excel_export_btnClick(Sender: TObject);
begin
    ExportGridToExcel(gettempdir + 'data_export.xls', show_visit, True, True);
    shellexecute(handle, 'Open', pchar(gettempdir + 'data_export.xls'), nil, nil,sw_normal);
end;

procedure Tblood_mian_form.FormShow(Sender: TObject);
begin
  Qshow_opdscreen.Close;
  Qshow_opdscreen.Open;
end;

function Tblood_mian_form.GetTempDir: string;
var
  TempDir: array[0..MAX_PATH] of Char;
begin
  TempDir[GetTempPath(260, TempDir)] := #0;
  Result := TempDir;
end;

procedure Tblood_mian_form.post_date_btnClick(Sender: TObject);
begin
  Qshow_opdscreen.Close;
  Qshow_opdscreen.Params.ParamValues['date_start_text']:=StrToDate(FormatDateTime('dd/mm/yy',date_start_text.Date));
  Qshow_opdscreen.Params.ParamValues['date_end_text']:=StrToDate(FormatDateTime('dd/mm/yy',date_end_text.Date));
  Qshow_opdscreen.Open;
end;

procedure Tblood_mian_form.RzBitBtn3Click(Sender: TObject);
begin
close;
end;

procedure Tblood_mian_form.add_blood_btnClick(Sender: TObject);
begin
    payblood_form := Tpayblood_form.Create(application);
    payblood_form.ShowModal;
    payblood_form.Free;
end;

end.
