unit miniEMR_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, ExtCtrls, JvExControls, JvNavigationPane, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, DB,
  DBAccess, MyAccess, MemDS, StdCtrls, DBCtrls, cxLabel, Grids, DBGrids,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TminiEMR_form = class(TForm)
    header_login: TJvNavPanelHeader;
    Panel1: TPanel;
    RzBitBtn1: TRzBitBtn;
    person_text: TDBMemo;
    Qperson: TMyQuery;
    Qnure_note: TMyQuery;
    Qdoctor_note: TMyQuery;
    RzBitBtn2: TRzBitBtn;
    Qdaig_note: TMyQuery;
    Qdrug_note: TMyQuery;
    Ddrug_note: TDataSource;
    Qlab_note: TMyQuery;
    Dlab_note: TDataSource;
    Dxray_note: TDataSource;
    Qxray_note: TMyQuery;
    Qmed_note: TMyQuery;
    Dmed_note: TDataSource;
    Qdent_note: TMyQuery;
    Ddent_note: TDataSource;
    Ddaig_note: TDataSource;
    Panel2: TPanel;
    Panel5: TPanel;
    Gmed: TcxGrid;
    GmedDBTableView1: TcxGridDBTableView;
    GmedDBTableView1ITEMs: TcxGridDBColumn;
    GmedLevel1: TcxGridLevel;
    Gxray: TcxGrid;
    GxrayDBTableView1: TcxGridDBTableView;
    GxrayDBTableView1xray_items_name: TcxGridDBColumn;
    GxrayDBTableView1XrayResult: TcxGridDBColumn;
    GxrayLevel1: TcxGridLevel;
    emr_text: TMemo;
    Panel3: TPanel;
    Gdent: TcxGrid;
    GdentDBTableView1: TcxGridDBTableView;
    GdentDBTableView1tmcode: TcxGridDBColumn;
    GdentDBTableView1dt_name: TcxGridDBColumn;
    GdentLevel1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1order_date: TcxGridDBColumn;
    cxGrid1DBTableView1lab_items_name_ref: TcxGridDBColumn;
    cxGrid1DBTableView1lab_items_normal_value: TcxGridDBColumn;
    cxGrid1DBTableView1LabReport: TcxGridDBColumn;
    cxGrid1DBTableView1report_date: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Gdrug: TcxGrid;
    GdrugDBTableView1: TcxGridDBTableView;
    GdrugDBTableView1DrName: TcxGridDBColumn;
    GdrugDBTableView1Doctor: TcxGridDBColumn;
    GdrugLevel1: TcxGridLevel;
    Gdiag: TcxGrid;
    GdiagDBTableView1: TcxGridDBTableView;
    GdiagDBTableView1icd10: TcxGridDBColumn;
    GdiagDBTableView1diag_name: TcxGridDBColumn;
    GdiagLevel1: TcxGridLevel;
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    visit : string;
  end;

var
  miniEMR_form: TminiEMR_form;

implementation

uses db_connect_module;

{$R *.dfm}

procedure TminiEMR_form.FormShow(Sender: TObject);
begin
//vn_text := QuotedStr(visit) ;

Qperson.Close;
Qperson.Params.ParamValues['vn'] := visit;
Qperson.Open;

Qnure_note.Close;
Qnure_note.Params.ParamValues['vn'] := visit;
Qnure_note.open;

Qdoctor_note.Close;
Qdoctor_note.Params.ParamValues['vn'] := visit;
Qdoctor_note.Open;

Qdrug_note.Close;
Qdrug_note.Params.ParamValues['vn'] := visit;
Qdrug_note.Open;

Qlab_note.Close;
Qlab_note.Params.ParamValues['vn'] := visit;
Qlab_note.Open;

Qxray_note.Close;
Qxray_note.Params.ParamValues['vn'] := visit;
Qxray_note.Open;

Qmed_note.Close;
Qmed_note.Params.ParamValues['vn'] := visit;
Qmed_note.Open;

Qdent_note.Close;
Qdent_note.Params.ParamValues['vn'] := visit;
Qdent_note.Open;

Qdaig_note.Close;
Qdaig_note.Params.ParamValues['vn'] := visit;
Qdaig_note.Open;

emr_text.Text :=   Qperson.FieldByName('person_tag').AsString+
                   Qnure_note.FieldByName('health_tag').AsString+
                   Qdoctor_note.FieldByName('cc').AsString+
                   Qdoctor_note.FieldByName('hpi').AsString+
                   Qdoctor_note.FieldByName('phm').AsString;


end;

procedure TminiEMR_form.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

end.
