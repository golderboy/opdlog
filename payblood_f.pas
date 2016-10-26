unit payblood_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, RzButton, ExtCtrls, DB, DBAccess, MyAccess, MemDS,
  StdCtrls, Mask, RzEdit, RzDBEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxMaskEdit, cxCalendar,
  cxDBEdit, cxLabel, cxDBLabel, JvExControls, JvNavigationPane;

type
  Tpayblood_form = class(TForm)
    pay_id: TcxDBLabel;
    Q: TcxLabel;
    hn: TcxDBLabel;
    cxLabel1: TcxLabel;
    an: TcxDBLabel;
    cxLabel2: TcxLabel;
    vstdate: TcxDBLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    name: TcxDBLabel;
    cxLabel5: TcxLabel;
    pay_date: TcxDBDateEdit;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    vn: TcxDBLabel;
    cxLabel8: TcxLabel;
    bld_id_bank: TcxDBLookupComboBox;
    doctor: TcxDBLookupComboBox;
    cxLabel9: TcxLabel;
    pay_unit: TRzDBNumericEdit;
    vsttime: TcxDBLabel;
    Qpayblood: TMyQuery;
    Dpayblood: TMyDataSource;
    Panel2: TPanel;
    exit_btn: TRzBitBtn;
    inst_btn: TRzBitBtn;
    del_btn: TRzBitBtn;
    Qdoctor: TMyQuery;
    Ddoctor: TMyDataSource;
    Qbloodstock: TMyQuery;
    Dbloodstock: TMyDataSource;
    JvNavPanelHeader1: TJvNavPanelHeader;
    procedure QpaybloodNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure inst_btnClick(Sender: TObject);
    procedure exit_btnClick(Sender: TObject);
    procedure del_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    visit : string;
  end;

var
  payblood_form: Tpayblood_form;

implementation

uses db_connect_module, pay_blood_list_f, blood_mian_f;

{$R *.dfm}

procedure Tpayblood_form.FormShow(Sender: TObject);
begin
    Qpayblood.Close;
    Qpayblood.SQL.Text := 'select * from pay_blood where vn ='+QuotedStr(visit);
    Qpayblood.Open;
          if not Qpayblood.Eof then
            begin
              Qpayblood.Edit;
            end
          else
            begin
              Qpayblood.Insert;
            end
end;

procedure Tpayblood_form.QpaybloodNewRecord(DataSet: TDataSet);
begin
    Qpayblood['hn'] := blood_mian_form.Qshow_opdscreen['hn'];
    Qpayblood['an'] := blood_mian_form.Qshow_opdscreen['an'];
    Qpayblood['vn'] := blood_mian_form.Qshow_opdscreen['vn'];
    Qpayblood['vstdate'] := blood_mian_form.Qshow_opdscreen['vstdate'];
    Qpayblood['vsttime'] := blood_mian_form.Qshow_opdscreen['vsttime'];
    Qpayblood['name'] := blood_mian_form.Qshow_opdscreen['ptname'];
end;

procedure Tpayblood_form.exit_btnClick(Sender: TObject);
begin
close;
end;

procedure Tpayblood_form.inst_btnClick(Sender: TObject);
begin
if Qpayblood.State in [dsInsert,dsEdit] then
        begin
          Qpayblood.Post;
          close;
      end;
end;

procedure Tpayblood_form.del_btnClick(Sender: TObject);

    var confirm : integer;
begin
if Qpayblood.RecordCount > 0 then
begin
  confirm := MessageDlg('Are your confirm delete',mtwarning,mbOKCancel,0) ;
  if confirm = mrOK then
  begin
   Qpayblood.Delete;
   showmessage ('delete ...OK');
   close;
  end
    else
    begin
      showmessage (' cannot delete');
      close;
    end
end;
end;

end.
