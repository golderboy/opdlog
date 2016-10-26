unit kpi_fpost3_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, DB, cxDBData, cxProgressBar, DBAccess, MyAccess, MemDS,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, StdCtrls, cxLabel, RzButton, ExtCtrls,
  JvExControls, JvNavigationPane,ShellAPI,cxExport,cxGridExportLink;

type
  Tkpi_post3_form = class(TForm)
    header_opdlog: TJvNavPanelHeader;
    Panel2: TPanel;
    post_date_btn: TRzBitBtn;
    excel_export_btn: TRzBitBtn;
    cxLabel2: TcxLabel;
    list_year: TComboBox;
    Panel1: TPanel;
    RzBitBtn1: TRzBitBtn;
    cxLabel1: TcxLabel;
    record_count: TcxLabel;
    show_visit: TcxGrid;
    show_visitDBTableView1: TcxGridDBTableView;
    show_visitLevel1: TcxGridLevel;
    Qkpi_post3: TMyQuery;
    Dkpi_post3: TMyDataSource;
    process_Qrb1k: TcxProgressBar;
    show_visitDBTableView1person_id: TcxGridDBColumn;
    show_visitDBTableView1patient_hn: TcxGridDBColumn;
    show_visitDBTableView1discharge: TcxGridDBColumn;
    show_visitDBTableView1discharge_date: TcxGridDBColumn;
    show_visitDBTableView1labor_date: TcxGridDBColumn;
    show_visitDBTableView1Fname: TcxGridDBColumn;
    show_visitDBTableView1house_regist_type_id: TcxGridDBColumn;
    show_visitDBTableView1preg_no: TcxGridDBColumn;
    show_visitDBTableView1care1: TcxGridDBColumn;
    show_visitDBTableView1care2: TcxGridDBColumn;
    show_visitDBTableView1care3: TcxGridDBColumn;
    procedure post_date_btnClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure excel_export_btnClick(Sender: TObject);
    function  GetTempDir : string;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  kpi_post3_form: Tkpi_post3_form;

implementation

uses db_connect_module;

{$R *.dfm}

procedure Tkpi_post3_form.excel_export_btnClick(Sender: TObject);
begin
   ExportGridToExcel(gettempdir + 'data_export.xls', show_visit, True, True);
   shellexecute(handle, 'Open', pchar(gettempdir + 'data_export.xls'), nil, nil,sw_normal);
end;

function Tkpi_post3_form.GetTempDir: string;
var
  TempDir: array[0..MAX_PATH] of Char;
begin
  TempDir[GetTempPath(260, TempDir)] := #0;
  Result := TempDir;
end;

procedure Tkpi_post3_form.post_date_btnClick(Sender: TObject);
begin
  Qkpi_post3.Close;
  Qkpi_post3.Params.ParamValues['year'] := list_year.Text ;
  Qkpi_post3.Open;
  record_count.Caption :=  IntToStr(Qkpi_post3.RecordCount);
  Qkpi_post3.First;
        process_Qrb1k.Position := 0;
        process_Qrb1k.properties.Max := Qkpi_post3.RecordCount;
           while not Qkpi_post3.Eof do
              begin
                Qkpi_post3.Next;
                //sleep(1000);
                process_Qrb1k.Visible := True;
                process_Qrb1k.Position := process_Qrb1k.Position +1;
                application.ProcessMessages;
              end;
  process_Qrb1k.Visible := False;
end;

procedure Tkpi_post3_form.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

end.
