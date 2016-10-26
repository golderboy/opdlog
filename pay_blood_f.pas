unit pay_blood_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvNavigationPane, RzButton, ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxLabel, cxDBLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, StdCtrls, dblookup, DB, DBAccess, MyAccess, MemDS, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Mask, RzEdit, RzDBEdit;

type
  Tpay_blood_from = class(TForm)
    Panel1: TPanel;
    RzBitBtn1: TRzBitBtn;
    JvNavPanelHeader1: TJvNavPanelHeader;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
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
    Qpay_blood: TMyQuery;
    data_payblood: TMyDataSource;
    Qblood_bank: TMyQuery;
    data_bloodbank: TMyDataSource;
    Qdoctor: TMyQuery;
    data_doctor: TMyDataSource;
    vn: TcxDBLabel;
    cxLabel8: TcxLabel;
    bld_id_bank: TcxDBLookupComboBox;
    doctor: TcxDBLookupComboBox;
    cxLabel9: TcxLabel;
    pay_unit: TRzDBNumericEdit;
    vsttime: TcxDBLabel;
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure Qpay_bloodNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    visit : string;
  end;

var
  pay_blood_from: Tpay_blood_from;

implementation

uses db_connect_module, pay_blood_list_f, blood_mian_f;

{$R *.dfm}

procedure Tpay_blood_from.FormShow(Sender: TObject);
begin
    Qpay_blood.Close;
    Qpay_blood.SQL.Text := 'select * from pay_blood where vn ='+QuotedStr(visit);
    Qpay_blood.Open;
          if not Qpay_blood.Eof then
            begin
              Qpay_blood.Edit;
            end
          else
            begin
              Qpay_blood.Insert;
            end;
end;

procedure Tpay_blood_from.Qpay_bloodNewRecord(DataSet: TDataSet);
begin
    Qpay_blood['hn'] := blood_mian_form.Qshow_opdscreen['hn'];
    Qpay_blood['an'] := blood_mian_form.Qshow_opdscreen['an'];
    Qpay_blood['vn'] := blood_mian_form.Qshow_opdscreen['vn'];
    Qpay_blood['vstdate'] := blood_mian_form.Qshow_opdscreen['vstdate'];
    Qpay_blood['vsttime'] := blood_mian_form.Qshow_opdscreen['vsttime'];
    Qpay_blood['name'] := blood_mian_form.Qshow_opdscreen['ptname'];
end;

procedure Tpay_blood_from.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure Tpay_blood_from.RzBitBtn2Click(Sender: TObject);
begin
if Qpay_blood.State in [dsInsert,dsEdit] then
        begin
          Qpay_blood.Post;
          close;
      end;
end;

end.
