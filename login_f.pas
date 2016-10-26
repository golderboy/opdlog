unit login_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzButton, ExtCtrls, JvExControls, JvNavigationPane, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxTextEdit, cxDBEdit, cxLabel, DB, DBAccess, MyAccess, MemDS
  ,IdHash,IdHashMessageDigest, cxMemo, cxDBLabel,IniFiles;

type
  Tlogin_form = class(TForm)
    header_login: TJvNavPanelHeader;
    Panel1: TPanel;
    RzBitBtn1: TRzBitBtn;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    login_bit: TRzBitBtn;
    connect_btn: TRzBitBtn;
    Qopd_user: TMyQuery;
    Dopd_user: TMyDataSource;
    username_t: TcxTextEdit;
    password_t: TcxTextEdit;
    memo_t: TcxMemo;
    Qopd_admin: TMyQuery;
    procedure login_bitClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure connect_btnClick(Sender: TObject);
    procedure login_bitKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    controlstore : TIniFile;
  end;

var
  login_form: Tlogin_form;

implementation

uses main_Unit, db_connect_module, connection_unit, main_admin;

{$R *.dfm}

{ Tlogin_form }

function MD5(const text: string) : string;
var
  md5 : TIdHashMessageDigest5;
begin
  md5    := TIdHashMessageDigest5.Create;
  Result := LowerCase(md5.HashStringAsHex(text, TEncoding.utf8));
  md5.Free;
end;

procedure Tlogin_form.RzBitBtn1Click(Sender: TObject);
begin
close;
end;

procedure Tlogin_form.connect_btnClick(Sender: TObject);
begin
    connection_form := Tconnection_form.Create(application);
    connection_form.ShowModal;
    connection_form.Free;
end;

procedure Tlogin_form.FormShow(Sender: TObject);
begin
      username_t.Text := '';
      password_t.Text := '';
      memo_t.Visible := false;
      db_connect_m.connect_db.Connected := false;

      if db_connect_m.connect_db.Connected then
      begin
         login_bit.Enabled := false
      end
      else
      begin
          login_bit.Enabled := True
      end;


//      if fileexists('D:\opd_log.ini') then
//         begin
         db_connect_m.connect_db.Server := connection_form.host.Text;
         db_connect_m.connect_db.Database := connection_form.database.Text;
         db_connect_m.connect_db.Username := connection_form.user.Text;
         db_connect_m.connect_db.Password := connection_form.pass.Text;
         db_connect_m.connect_db.Port := connection_form.Port.Value;
         db_connect_m.connect_db.Options.Charset := 'tis620';
         try
         db_connect_m.connect_db.Connected := true;
         if db_connect_m.connect_db.Connected then
            begin
            showmessage('Connect ok..');
            end;
         except
           on e : exception do
              begin
             showmessage('False Connect!!'+e.Message);
              end;
         end;
//   end;

end;

procedure Tlogin_form.login_bitClick(Sender: TObject);
var pwd : String;
begin
  Qopd_admin.Close;
  pwd := md5(password_t.Text);
  Qopd_admin.sql.text := 'select loginname,passweb,account_disable,groupname '+
    ' from opduser '+
    ' where loginname = "'+username_t.text+'" '+
    ' and passweb = "'+pwd+'" '+
    ' and account_disable = "N" '+
    ' and groupname Like "%¼Ùé´ÙáÅÃÐºº%" ';
  Qopd_admin.Open;
    if  Qopd_admin.RecordCount > 0 then
          begin
            showmessage (' Login ADMIN ...OK');
            username_t.Text := '';
            password_t.Text := '';
            main_admin_form := Tmain_admin_form.Create(application);
            main_admin_form.Show;
            Qopd_admin.Close;
          end
    else
      begin
        Qopd_user.sql.text := 'select loginname,passweb,account_disable '+
        ' from opduser '+
        ' where loginname = "'+username_t.text+'" '+
        ' and passweb = "'+pwd+'" '+
        ' and account_disable = "N" ';
      Qopd_user.Open;
           if  Qopd_user.RecordCount > 0 then
                  begin
                    showmessage (' Login USER ...OK');
                    username_t.Text := '';
                    password_t.Text := '';
                    main_u := Tmain_u.Create(application);
                    main_u.Show;
                    Qopd_user.Close;
                   end
           else
                   begin
                     showmessage ('USERNAME OR PASSWORD IS NOT VALUE 001');
                     //showmessage (Qopd_user.sql.text+IntToStr(Qopd_user.RecordCount));
                     //memo_t.Visible := true;        //
                     //memo_t.Text :=  Qopd_user.sql.text;  //
                     username_t.Text := '';
                     password_t.Text := '';
                   end
      end

end;


procedure Tlogin_form.login_bitKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var pwd : String;
begin
if key = vk_return then
end;

end.
