unit account_lost_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, DBAccess, MyAccess,
  MemDS, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxTextEdit, RzButton,
  cxLabel, cxMaskEdit, cxDropDownEdit, cxCalendar, ExtCtrls, JvExControls,
  JvNavigationPane;

type
  Taccount_lost_form = class(TForm)
    header_opdlog: TJvNavPanelHeader;
    Panel2: TPanel;
    date_start_text: TcxDateEdit;
    date_end_text: TcxDateEdit;
    cxLabel2: TcxLabel;
    post_date_btn: TRzBitBtn;
    excel_export_btn: TRzBitBtn;
    Panel1: TPanel;
    RzBitBtn1: TRzBitBtn;
    cxLabel3: TcxLabel;
    record_count: TcxLabel;
    emr_btn: TRzBitBtn;
    show_visit: TcxGrid;
    show_visitDBTableView1: TcxGridDBTableView;
    show_visitLevel1: TcxGridLevel;
    QMoney: TMyQuery;
    DMoney: TMyDataSource;
    show_visitDBTableView1hn: TcxGridDBColumn;
    show_visitDBTableView1pname: TcxGridDBColumn;
    show_visitDBTableView1fname: TcxGridDBColumn;
    show_visitDBTableView1lname: TcxGridDBColumn;
    show_visitDBTableView1income: TcxGridDBColumn;
    show_visitDBTableView1uc: TcxGridDBColumn;
    show_visitDBTableView1paid: TcxGridDBColumn;
    show_visitDBTableView1money: TcxGridDBColumn;
    show_visitDBTableView1vn: TcxGridDBColumn;
    show_visitDBTableView1vstdate: TcxGridDBColumn;
    procedure post_date_btnClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure emr_btnClick(Sender: TObject);
    procedure show_visitDBTableView1moneyCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  account_lost_form: Taccount_lost_form;

implementation

uses db_connect_module, miniEMR_f;

{$R *.dfm}

procedure Taccount_lost_form.emr_btnClick(Sender: TObject);
begin
    miniEMR_form := TminiEMR_form.Create(application);
    miniEMR_form.visit := QMoney.FieldByName('vn').AsString;
    miniEMR_form.ShowModal;
    miniEMR_form.Free;
end;

procedure Taccount_lost_form.FormShow(Sender: TObject);
begin
    date_start_text.Date := now;
    date_end_text.Date   := now;
end;

procedure Taccount_lost_form.post_date_btnClick(Sender: TObject);
begin
  QMoney.Close;
      QMoney.Params.ParamValues['date_start_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_start_text.Date));
      QMoney.Params.ParamValues['date_end_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_end_text.Date));
  QMoney.Open;
    //sleep(1000);
    //showmessage('Done !!!');
  record_count.Caption :=  IntToStr(QMoney.RecordCount);
end;

procedure Taccount_lost_form.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure Taccount_lost_form.show_visitDBTableView1moneyCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if VarToStr(AViewInfo.GridRecord.Values[9]) <> '0' then
        Acanvas.brush.Color := clRed ;
end;

end.
