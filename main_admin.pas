unit main_admin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxRibbonSkins, cxContainer, cxEdit, cxLabel, cxClasses, dxRibbon, dxBar,
  DASQLMonitor, MyDacMonitor, MySQLMonitor;

type
  Tmain_admin_form = class(TForm)
    menu_admin: TdxRibbonTab;
    connect_btn: TdxRibbon;
    BarManager: TdxBarManager;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    dxBarLargeButton2: TdxBarLargeButton;
    opb_btn: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    connects_btn: TdxBarLargeButton;
    dxBarButton1: TdxBarButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    status_btn: TdxBarLargeButton;
    dxBarLargeButton13: TdxBarLargeButton;
    ems_btn: TdxBarLargeButton;
    psyc_btn: TdxBarLargeButton;
    phy_btn: TdxBarLargeButton;
    dent_btn: TdxBarLargeButton;
    rom_btn: TdxBarLargeButton;
    dxBarLargeButton14: TdxBarLargeButton;
    menubar_admin: TdxBar;
    room_btn: TdxBarLargeButton;
    exit_btn: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    DB_Monitor: TdxBarLargeButton;
    MySQLMonitor: TMySQLMonitor;
    dxBarLargeButton12: TdxBarLargeButton;
    BarManagerBar1: TdxBar;
    dxBarLargeButton15: TdxBarLargeButton;
    procedure connects_btnClick(Sender: TObject);
    procedure status_btnClick(Sender: TObject);
    procedure room_btnClick(Sender: TObject);
    procedure exit_btnClick(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure dxBarLargeButton12Click(Sender: TObject);
    procedure DB_MonitorClick(Sender: TObject);
    procedure dxBarLargeButton15Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  main_admin_form: Tmain_admin_form;

implementation

uses test_server_f, room_config_f, connection_unit, db_connect_module, rukai_f,
  sql_monitor_f, active_log_f, miniEMR_f, main_Unit;

{$R *.dfm}

procedure Tmain_admin_form.status_btnClick(Sender: TObject);
begin
    test_connect := Ttest_connect.Create(application);
    test_connect.ShowModal;
    test_connect.Free;
end;

procedure Tmain_admin_form.room_btnClick(Sender: TObject);
begin
    room_config_from := Troom_config_from.Create(application);
    room_config_from.ShowModal;
    room_config_from.Free;
end;

procedure Tmain_admin_form.DB_MonitorClick(Sender: TObject);
begin
    miniEMR_form := TminiEMR_form.Create(application);
    miniEMR_form.ShowModal;
    miniEMR_form.Free;
end;

procedure Tmain_admin_form.dxBarLargeButton12Click(Sender: TObject);
begin
    active_log_form := Tactive_log_form.Create(application);
    active_log_form.ShowModal;
    active_log_form.Free;
end;

procedure Tmain_admin_form.dxBarLargeButton15Click(Sender: TObject);
begin
    main_u  := Tmain_u.Create(application);
    main_u.ShowModal;
    main_u.Free;
end;

procedure Tmain_admin_form.dxBarLargeButton4Click(Sender: TObject);
begin
    Rukai_from := TRukai_from.Create(application);
    Rukai_from.ShowModal;
    Rukai_from.Free;
end;

procedure Tmain_admin_form.exit_btnClick(Sender: TObject);
begin
  close;
end;

procedure Tmain_admin_form.connects_btnClick(Sender: TObject);
begin
    connection_form := Tconnection_form.Create(application);
    connection_form.ShowModal;
    connection_form.Free;
end;

end.
