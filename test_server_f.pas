unit test_server_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, RzButton, cxLabel, DB, DBAccess, MyAccess, MemDS,
  cxDBLabel, cxTextEdit, cxProgressBar;

type
  Ttest_connect = class(TForm)
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    exit_btn: TRzBitBtn;
    sta_tmain: TcxLabel;
    sta_tslave: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    Qsum_vn_main: TMyQuery;
    Dsum_vn_main: TMyDataSource;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel4: TcxDBLabel;
    Qsum_vn_slave: TMyQuery;
    Dsum_vn_slave: TMyDataSource;
    cxDBLabel5: TcxDBLabel;
    cxDBLabel6: TcxDBLabel;
    cxDBLabel7: TcxDBLabel;
    cxDBLabel8: TcxDBLabel;
    cxLabel12: TcxLabel;
    cxDBLabel9: TcxDBLabel;
    cxLabel13: TcxLabel;
    cxDBLabel10: TcxDBLabel;
    RzBitBtn1: TRzBitBtn;
    date_chack_text: TcxTextEdit;
    process_Qrb1k: TcxProgressBar;
    process_Qrb2k: TcxProgressBar;
    procedure exit_btnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  test_connect: Ttest_connect;

implementation

uses db_connect_module, connection_unit;

{$R *.dfm}

procedure Ttest_connect.FormShow(Sender: TObject);
begin
 process_Qrb1k.Visible := False;
 process_Qrb2k.Visible := False;
db_connect_m.connect_db.Connected := true;
  if db_connect_m.connect_db.Connected then
      begin
      sta_tmain.Visible := true;
      sta_tmain.Caption :=  'OK';

   end;
         db_connect_m.connect_slave.Server := connection_form.host_slave.Text;
         db_connect_m.connect_slave.Database := connection_form.database_slave.Text;
         db_connect_m.connect_slave.Username := connection_form.user_slave.Text;
         db_connect_m.connect_slave.Password := connection_form.pass_slave.Text;
         db_connect_m.connect_slave.Port := connection_form.Port_slave.Value;
         db_connect_m.connect_slave.Options.Charset := 'tis620';
         db_connect_m.connect_slave.Connected := true;
           if db_connect_m.connect_slave.Connected then
              begin
              sta_tslave.Visible := true;
              sta_tslave.Caption :=  'OK';
           end;
end;

procedure Ttest_connect.RzBitBtn1Click(Sender: TObject);
begin
  Qsum_vn_main.Params.ParamValues['date_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',now));
  Qsum_vn_slave.Params.ParamValues['date_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',now));


  if db_connect_m.connect_db.Connected then
      begin
        Qsum_vn_main.Close;
        Qsum_vn_main.Open;
        Qsum_vn_main.First;
        process_Qrb1k.Position := 0;
        process_Qrb1k.properties.Max := Qsum_vn_main.RecordCount;
           while not Qsum_vn_main.Eof do
              begin
                Qsum_vn_main.Next;
                process_Qrb1k.Visible := True;
                process_Qrb1k.Position := process_Qrb1k.Position +1;
                application.ProcessMessages;
              end;
            process_Qrb1k.Visible := False;

    if db_connect_m.connect_slave.Connected then
      begin
        Qsum_vn_slave.Close;
        Qsum_vn_slave.Open;
        Qsum_vn_slave.First;
        process_Qrb2k.Position := 0;
        process_Qrb2k.properties.Max := Qsum_vn_slave.RecordCount;
           while not Qsum_vn_slave.Eof do
              begin
                Qsum_vn_slave.Next;
                process_Qrb2k.Visible := True;
                process_Qrb2k.Position := process_Qrb2k.Position +1;
                application.ProcessMessages;
              end;
            process_Qrb2k.Visible := False;
      end;
      showmessage('Done !!!');
    end;


    date_chack_text.Visible := true;
    date_chack_text.Text :=  'ข้อมูลวันที่ '+FormatDateTime('dd/mm/yyyy',now);

end;

procedure Ttest_connect.exit_btnClick(Sender: TObject);
begin
 close;
end;

end.

