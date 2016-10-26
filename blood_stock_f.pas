unit blood_stock_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, ComCtrls, dxCore, cxDateUtils, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData, MemDS, DBAccess,
  MyAccess, cxGroupBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, RzButton, cxLabel,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, ExtCtrls, JvExControls,
  JvNavigationPane;

type
  Tblood_stock_form = class(TForm)
    JvNavPanelHeader1: TJvNavPanelHeader;
    show_visit: TcxGrid;
    show_visitDBTableView1: TcxGridDBTableView;
    show_visitLevel1: TcxGridLevel;
    group_data: TcxGroupBox;
    add_blood_btn: TRzBitBtn;
    edit_blood_btn: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    cxGrid1: TcxGrid;
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
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    data_bloodstock: TMyDataSource;
    Qshow_bloodstock: TMyQuery;
    show_visitDBTableView1bld_id: TcxGridDBColumn;
    show_visitDBTableView1bld_group: TcxGridDBColumn;
    show_visitDBTableView1bld_rh: TcxGridDBColumn;
    show_visitDBTableView1bld_type: TcxGridDBColumn;
    show_visitDBTableView1bld_unit: TcxGridDBColumn;
    show_visitDBTableView1bld_price: TcxGridDBColumn;
    show_visitDBTableView1bld_stock: TcxGridDBColumn;
    cxGroupBox1: TcxGroupBox;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn4: TRzBitBtn;
    procedure RzBitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  blood_stock_form: Tblood_stock_form;

implementation

{$R *.dfm}

procedure Tblood_stock_form.RzBitBtn4Click(Sender: TObject);
begin
close;
end;

end.
