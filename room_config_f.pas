unit room_config_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, JvExControls, JvNavigationPane, StdCtrls,
  cxButtons, ExtCtrls, cxMemo, cxTextEdit ,IniFiles, cxMaskEdit, cxSpinEdit;

type
  Troom_config_from = class(TForm)
    Label13: TLabel;
    memo_text: TcxMemo;
    Panel1: TPanel;
    cearte_btn: TcxButton;
    JvNavPanelHeader1: TJvNavPanelHeader;
    opd_chk: TcxTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure cearte_btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    controlstore : TIniFile;
  end;

var
  room_config_from: Troom_config_from;

implementation

{$R *.dfm}

procedure Troom_config_from.cearte_btnClick(Sender: TObject);
begin
  controlstore := Tinifile.Create('D:\opd_log.ini');
  controlstore.WriteString('ROOM','OPD',opd_chk.Text);
  controlstore.Free;
  close;
end;

procedure Troom_config_from.FormCreate(Sender: TObject);
begin
   if fileexists('D:\opd_log.ini') then
     begin
      controlstore := Tinifile.Create('D:\opd_log.ini');
      opd_chk.Text := controlstore.ReadString('ROOM','OPD','');
  end;
end;

end.
