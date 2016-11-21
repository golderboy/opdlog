unit connection_unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, cxControls,
  cxContainer, cxEdit, cxTextEdit, StdCtrls, cxButtons, ExtCtrls, JvExControls,
  JvNavigationPane, DB, DBAccess, MyAccess,
  IniFiles, cxMaskEdit, cxSpinEdit, Buttons;

type
  Tconnection_form = class(TForm)
    JvNavPanelHeader1: TJvNavPanelHeader;
    Panel1: TPanel;
    save_btn: TcxButton;
    Label1: TLabel;
    host: TcxTextEdit;
    Label2: TLabel;
    database: TcxTextEdit;
    Label3: TLabel;
    user: TcxTextEdit;
    Label4: TLabel;
    pass: TcxTextEdit;
    connect_btn: TcxButton;
    exit_btn: TcxButton;
    Label5: TLabel;
    port: TcxSpinEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    host_slave: TcxTextEdit;
    database_slave: TcxTextEdit;
    user_slave: TcxTextEdit;
    pass_slave: TcxTextEdit;
    port_slave: TcxSpinEdit;
    Label12: TLabel;
    connect_btn_slave: TcxButton;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    host_opd: TcxTextEdit;
    database_opd: TcxTextEdit;
    user_opd: TcxTextEdit;
    pass_opd: TcxTextEdit;
    port_opd: TcxSpinEdit;
    connect_btn_opd: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure save_btnClick(Sender: TObject);
    procedure connect_btnClick(Sender: TObject);
    procedure exit_btnClick(Sender: TObject);
    procedure connect_btn_slaveClick(Sender: TObject);
    procedure connect_btn_opdClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    controlstore : TIniFile;
  end;

var
  connection_form: Tconnection_form;

implementation

uses  db_connect_module, main_Unit;

{$R *.dfm}

procedure Tconnection_form.save_btnClick(Sender: TObject);
begin
   controlstore := Tinifile.Create('D:\opd_log.ini');
   controlstore.WriteString('opdlog','host',host.Text);
   controlstore.WriteString('opdlog','database',database.Text);
   controlstore.WriteString('opdlog','user',user.Text);
   controlstore.WriteString('opdlog','pass',pass.Text);
   controlstore.WriteString('opdlog','port',port.Text);

   controlstore.WriteString('opdlog_2','host_slave',host_slave.Text);
   controlstore.WriteString('opdlog_2','database_slave',database_slave.Text);
   controlstore.WriteString('opdlog_2','user_slave',user_slave.Text);
   controlstore.WriteString('opdlog_2','pass_slave',pass_slave.Text);
   controlstore.WriteString('opdlog_2','port_slave',port_slave.Text);

   controlstore.WriteString('opdlog_3','host_opd',host_opd.Text);
   controlstore.WriteString('opdlog_3','database_opd',database_opd.Text);
   controlstore.WriteString('opdlog_3','user_opd',user_opd.Text);
   controlstore.WriteString('opdlog_3','pass_opd',pass_opd.Text);
   controlstore.WriteString('opdlog_3','port_opd',port_opd.Text);

   controlstore.Free;
   close;
end;

procedure Tconnection_form.connect_btnClick(Sender: TObject);
begin
   db_connect_m.connect_db.Server := host.Text;
   db_connect_m.connect_db.Database := database.Text;
   db_connect_m.connect_db.Username := user.Text;
   db_connect_m.connect_db.Password := pass.Text;
   db_connect_m.connect_db.Port := port.Value;
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

end;

procedure Tconnection_form.connect_btn_opdClick(Sender: TObject);
begin
   db_connect_m.connect_opd.Server := host_opd.Text;
   db_connect_m.connect_opd.Database := database_opd.Text;
   db_connect_m.connect_opd.Username := user_opd.Text;
   db_connect_m.connect_opd.Password := pass_opd.Text;
   db_connect_m.connect_opd.Port := port_opd.Value;
   db_connect_m.connect_opd.Options.Charset := 'utf8';
   try

   db_connect_m.connect_opd.Connected := true;

   if db_connect_m.connect_opd.Connected then
      begin
      showmessage('Connect ok..');
      end;
   except
     on e : exception do
        begin
        showmessage('False Connect!!'+e.Message);
        end;
   end;
end;

procedure Tconnection_form.connect_btn_slaveClick(Sender: TObject);
begin
   db_connect_m.connect_slave.Server := host_slave.Text;
   db_connect_m.connect_slave.Database := database_slave.Text;
   db_connect_m.connect_slave.Username := user_slave.Text;
   db_connect_m.connect_slave.Password := pass_slave.Text;
   db_connect_m.connect_slave.Port := port_slave.Value;
   db_connect_m.connect_slave.Options.Charset := 'tis620';
   try

   db_connect_m.connect_slave.Connected := true;

   if db_connect_m.connect_slave.Connected then
      begin
      showmessage('Connect ok..');
      end;
   except
     on e : exception do
        begin
        showmessage('False Connect!!'+e.Message);
        end;
   end;

end;


procedure Tconnection_form.exit_btnClick(Sender: TObject);
begin
close;
end;

procedure Tconnection_form.FormCreate(Sender: TObject);
begin
   if fileexists('D:\opd_log.ini') then
   begin
		controlstore := Tinifile.Create('D:\opd_log.ini');
		host.Text := controlstore.ReadString('opdlog','host','127.0.0.1');
		database.Text := controlstore.ReadString('opdlog','database','hos');
		user.Text := controlstore.ReadString('opdlog','user','sa');
		pass.Text := controlstore.ReadString('opdlog','pass','');
		port.Text := controlstore.ReadString('opdlog','port','3306');

		host_slave.Text := controlstore.ReadString('opdlog_2','host_slave','127.0.0.1');
		database_slave.Text := controlstore.ReadString('opdlog_2','database_slave','hos');
		user_slave.Text := controlstore.ReadString('opdlog_2','user_slave','sa');
		pass_slave.Text := controlstore.ReadString('opdlog_2','pass_slave','');
		port_slave.Text := controlstore.ReadString('opdlog_2','port_slave','3306');

    host_opd.Text := controlstore.ReadString('opdlog_3','host_opd','127.0.0.1');
		database_opd.Text := controlstore.ReadString('opdlog_3','database_opd','hos');
		user_opd.Text := controlstore.ReadString('opdlog_3','user_opd','sa');
		pass_opd.Text := controlstore.ReadString('opdlog_3','pass_opd','');
		port_opd.Text := controlstore.ReadString('opdlog_3','port_opd','3306');
   end;
end;

end.
