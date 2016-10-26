unit pay_blood_list_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  DB, cxDBData, cxContainer, ComCtrls, dxCore, cxDateUtils, DBAccess, MyAccess,
  MemDS, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, ExtCtrls,
  RzButton, cxGroupBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, JvExControls,
  JvNavigationPane;

type
  Tpay_blood_form = class(TForm)
    JvNavPanelHeader1: TJvNavPanelHeader;
    show_visit: TcxGrid;
    show_visitDBTableView1: TcxGridDBTableView;
    show_visitLevel1: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    RzBitBtn4: TRzBitBtn;
    Panel1: TPanel;
    date_start_text: TcxDateEdit;
    date_end_text: TcxDateEdit;
    cxLabel2: TcxLabel;
    post_date_btn: TRzBitBtn;
    excel_export_btn: TRzBitBtn;
    Qshow_payblood: TMyQuery;
    data_payblood: TMyDataSource;
    show_visitDBTableView1pay_id: TcxGridDBColumn;
    show_visitDBTableView1vn: TcxGridDBColumn;
    show_visitDBTableView1hn: TcxGridDBColumn;
    show_visitDBTableView1an: TcxGridDBColumn;
    show_visitDBTableView1vstdate: TcxGridDBColumn;
    show_visitDBTableView1name: TcxGridDBColumn;
    show_visitDBTableView1bld_id: TcxGridDBColumn;
    show_visitDBTableView1pay_unit: TcxGridDBColumn;
    show_visitDBTableView1pay_date: TcxGridDBColumn;
    show_visitDBTableView1doctor: TcxGridDBColumn;
    edit_blood_btn: TRzBitBtn;
    procedure post_date_btnClick(Sender: TObject);
    procedure RzBitBtn4Click(Sender: TObject);
    procedure edit_blood_btnClick(Sender: TObject);

  private
    { Private declarations }
  public
    visit : string;
  end;

var
  pay_blood_form: Tpay_blood_form;

implementation

uses db_connect_module, pay_blood_f, blood_mian_f, payblood_f;

{$R *.dfm}

procedure Tpay_blood_form.edit_blood_btnClick(Sender: TObject);
begin
    payblood_form := Tpayblood_form.Create(application);
    payblood_form.visit := Qshow_payblood.FieldByName('vn').AsString;

    payblood_form.ShowModal;
    payblood_form.Free;
end;

procedure Tpay_blood_form.post_date_btnClick(Sender: TObject);
begin
  Qshow_payblood.Close;
  Qshow_payblood.Params.ParamValues['date_start_text']:=StrToDate(FormatDateTime('dd/mm/yy',date_start_text.Date));
  Qshow_payblood.Params.ParamValues['date_end_text']:=StrToDate(FormatDateTime('dd/mm/yy',date_end_text.Date));
  Qshow_payblood.Open;
end;



procedure Tpay_blood_form.RzBitBtn4Click(Sender: TObject);
begin
close;
end;

end.
