unit rukai_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxProgressBar, cxGroupBox, DB, MemDS, DBAccess, MyAccess,
  cxLabel, RzButton, cxTextEdit, cxMemo, JvExControls, JvNavigationPane,IniFiles,
  ExtCtrls, StdCtrls, RzEdit, ComCtrls, RzPanel, dxStatusBar;

type
  TRukai_from = class(TForm)
    header_login: TJvNavPanelHeader;
    cxLabel1: TcxLabel;
    Qrukai: TMyQuery;
    Panel1: TPanel;
    Panel2: TPanel;
    exit_btn: TRzBitBtn;
    save_btn: TRzBitBtn;
    run_btn: TRzBitBtn;
    memo_t: TRichEdit;
    Drukai: TDataSource;
    process_Qrb1k: TcxProgressBar;
    Qcount_error: TMyQuery;
    procedure RzBitBtn3Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure save_btnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    controlstore : TIniFile;
  end;

var
  Rukai_from: TRukai_from;

implementation

uses db_connect_module;

{$R *.dfm}

procedure TRukai_from.FormShow(Sender: TObject);
begin
   process_Qrb1k.Visible := False;
   Qrukai.SQL.TEXT  := memo_t.Text;
end;

procedure TRukai_from.RzBitBtn1Click(Sender: TObject);
var confirm : integer;
begin
  confirm := MessageDlg('Are your confirm Run This Code',mtwarning,mbOKCancel,0) ;
  if confirm = mrOK then
      begin
            Qrukai.Close;
            Qrukai.sql.Text := memo_t.Text ;
            Qrukai.ExecSQL;
            sleep(1000);
            showmessage('Done !!!');
           // Qcount_error.Open;
           // Qcount_error.First;
           // process_Qrb1k.Position := 0;
           // process_Qrb1k.properties.Max := Qcount_error.RecordCount;
             //  while not Qcount_error.Eof do
               //   begin
                 //   Qcount_error.Next;
                    //sleep(1000);
                   // process_Qrb1k.Visible := True;
                   // process_Qrb1k.Position := process_Qrb1k.Position +1;
                   // application.ProcessMessages;
                  // end;
              // process_Qrb1k.Visible := False;
              //   end
              end

end;

procedure TRukai_from.RzBitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TRukai_from.save_btnClick(Sender: TObject);
begin
    Qrukai.Active := false;
    Qrukai.SQL.Clear;
    Qrukai.sql.Text := memo_t.Text;
    //Qrukai.Active := True;
   close;
end;

end.
