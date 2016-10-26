unit main_Unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxRibbonSkins, DB, DBAccess, MyAccess, dxBar, cxClasses, dxRibbon, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, MemDS, cxContainer, cxLabel, cxTextEdit, cxDBEdit,
  cxGroupBox, ComCtrls, dxCore, cxDateUtils, RzButton, cxMaskEdit,
  cxDropDownEdit, cxCalendar, ExtCtrls,ShellAPI,cxExport,cxGridExportLink,
  cxProgressBar, cxDBLabel;

type
  Tmain_u = class(TForm)
    main_tab: TdxRibbonTab;
    main_ribbon: TdxRibbon;
    BarManager: TdxBarManager;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    dxBarLargeButton2: TdxBarLargeButton;
    BarManagerBar2: TdxBar;
    opb_btn: TdxBarLargeButton;
    data_main: TMyDataSource;
    Qshow_main: TMyQuery;
    BarManagerBar1: TdxBar;
    dxBarLargeButton3: TdxBarLargeButton;
    group_data: TcxGroupBox;
    connect_btn: TdxBarLargeButton;
    dxBarButton1: TdxBarButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    Panel1: TPanel;
    date_start_text: TcxDateEdit;
    date_end_text: TcxDateEdit;
    cxLabel2: TcxLabel;
    post_date_btn: TRzBitBtn;
    excel_export_btn: TRzBitBtn;
    dxBarLargeButton7: TdxBarLargeButton;
    RzBitBtn4: TRzBitBtn;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    f43_tab: TdxRibbonTab;
    dxBarLargeButton11: TdxBarLargeButton;
    show_visitDBTableView1: TcxGridDBTableView;
    show_visitLevel1: TcxGridLevel;
    show_visit: TcxGrid;
    Report_tab: TdxRibbonTab;
    BarManagerBar5: TdxBar;
    dxBarLargeButton12: TdxBarLargeButton;
    process_Qrb1k: TcxProgressBar;
    ems_btn: TdxBarLargeButton;
    psyc_btn: TdxBarLargeButton;
    phy_btn: TdxBarLargeButton;
    dent_btn: TdxBarLargeButton;
    cxLabel1: TcxLabel;
    rom_btn: TdxBarLargeButton;
    dxBarLargeButton14: TdxBarLargeButton;
    BarManagerBar3: TdxBar;
    btn_anc: TdxBarButton;
    dxBarButton3: TdxBarButton;
    btn_prenatal: TdxBarButton;
    btn_posnatal: TdxBarButton;
    dxBarButton4: TdxBarButton;
    btn_newborn: TdxBarButton;
    btn_women: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarLargeButton13: TdxBarLargeButton;
    btn_fp: TdxBarButton;
    btn_labor: TdxBarButton;
    dxBarButton10: TdxBarButton;
    btn_newborncare: TdxBarButton;
    btn_epi: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    btn_chronic: TdxBarButton;
    btn_chronicfu: TdxBarButton;
    btn_lab_fu: TdxBarButton;
    btn_ncdscreen: TdxBarButton;
    show_visitDBTableView1vn: TcxGridDBColumn;
    show_visitDBTableView1vstdate: TcxGridDBColumn;
    show_visitDBTableView1vsttime: TcxGridDBColumn;
    show_visitDBTableView1hn: TcxGridDBColumn;
    show_visitDBTableView1ptname: TcxGridDBColumn;
    show_visitDBTableView1cid: TcxGridDBColumn;
    show_visitDBTableView1visit_type_name: TcxGridDBColumn;
    show_visitDBTableView1pt_walk_name: TcxGridDBColumn;
    show_visitDBTableView1age: TcxGridDBColumn;
    show_visitDBTableView1pttype: TcxGridDBColumn;
    show_visitDBTableView1name: TcxGridDBColumn;
    show_visitDBTableView1pdx: TcxGridDBColumn;
    show_visitDBTableView1height: TcxGridDBColumn;
    show_visitDBTableView1waist: TcxGridDBColumn;
    show_visitDBTableView1bmi: TcxGridDBColumn;
    show_visitDBTableView1bpd: TcxGridDBColumn;
    show_visitDBTableView1bps: TcxGridDBColumn;
    show_visitDBTableView1bw: TcxGridDBColumn;
    show_visitDBTableView1hr: TcxGridDBColumn;
    show_visitDBTableView1pe: TcxGridDBColumn;
    show_visitDBTableView1pulse: TcxGridDBColumn;
    show_visitDBTableView1rr: TcxGridDBColumn;
    show_visitDBTableView1temperature: TcxGridDBColumn;
    show_visitDBTableView1cc: TcxGridDBColumn;
    show_visitDBTableView1hpi: TcxGridDBColumn;
    show_visitDBTableView1pmh: TcxGridDBColumn;
    show_visitDBTableView1income: TcxGridDBColumn;
    show_visitDBTableView1paid_money: TcxGridDBColumn;
    show_visitDBTableView1uc_money: TcxGridDBColumn;
    show_visitDBTableView1item_money: TcxGridDBColumn;
    show_visitDBTableView1lastvisit_vn: TcxGridDBColumn;
    show_visitDBTableView1lastvisit: TcxGridDBColumn;
    record_count: TcxLabel;
    emr_btn: TRzBitBtn;
    btn_rehab: TdxBarButton;
    btn_icf: TdxBarButton;
    btn_specialpp: TdxBarButton;
    btn_accdent: TdxBarButton;
    btn_disability: TdxBarButton;
    btn_functional: TdxBarButton;
    btn_admission: TdxBarButton;
    btn_drugallergy: TdxBarButton;
    btn_dental: TdxBarButton;
    btn_death: TdxBarButton;
    btn_servillance: TdxBarButton;
    main_ribbonTab1: TdxRibbonTab;
    BarManagerBar4: TdxBar;
    dxBarLargeButton15: TdxBarLargeButton;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarButton32: TdxBarButton;
    dxBarButton33: TdxBarButton;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dxBarButton36: TdxBarButton;
    dxBarButton37: TdxBarButton;
    dxBarButton38: TdxBarButton;
    BarManagerBar8: TdxBar;
    dxBarButton39: TdxBarButton;
    dxBarButton40: TdxBarButton;
    dxBarButton41: TdxBarButton;
    dxBarLargeButton16: TdxBarLargeButton;
    dxBarButton42: TdxBarButton;
    dxBarButton43: TdxBarButton;
    dxBarButton44: TdxBarButton;
    show_visitDBTableView1dep: TcxGridDBColumn;
    show_visitDBTableView1main_dep: TcxGridDBColumn;
    btn_money: TdxBarLargeButton;
    dxBarButton45: TdxBarButton;
    dxBarButton46: TdxBarButton;
    dxBarButton47: TdxBarButton;
    btn_nutrition: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton5: TdxBarButton;
    main_ribbonTab2: TdxRibbonTab;
    BarManagerBar6: TdxBar;
    dxBarLargeButton17: TdxBarLargeButton;
    dxBarLargeButton18: TdxBarLargeButton;
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure connect_btnClick(Sender: TObject);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure post_date_btnClick(Sender: TObject);
    procedure dxBarLargeButton7Click(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure RzBitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton8Click(Sender: TObject);
    procedure excel_export_btnClick(Sender: TObject);
    function  GetTempDir : string;
    procedure dxBarLargeButton11Click(Sender: TObject);
    procedure dxBarLargeButton12Click(Sender: TObject);
    procedure dxBarLargeButton10Click(Sender: TObject);
    procedure ems_btnClick(Sender: TObject);
    procedure rom_btnClick(Sender: TObject);
    procedure phy_btnClick(Sender: TObject);
    procedure psyc_btnClick(Sender: TObject);
    procedure dent_btnClick(Sender: TObject);
    procedure opb_btnClick(Sender: TObject);
    procedure dxBarLargeButton14Click(Sender: TObject);
    procedure btn_ancClick(Sender: TObject);
    procedure btn_womenClick(Sender: TObject);
    procedure btn_fpClick(Sender: TObject);
    procedure btn_posnatalClick(Sender: TObject);
    procedure btn_prenatalClick(Sender: TObject);
    procedure btn_laborClick(Sender: TObject);
    procedure btn_newbornClick(Sender: TObject);
    procedure btn_newborncareClick(Sender: TObject);
    procedure btn_epiClick(Sender: TObject);
    procedure emr_btnClick(Sender: TObject);
    procedure btn_chronicClick(Sender: TObject);
    procedure btn_chronicfuClick(Sender: TObject);
    procedure dxBarButton30Click(Sender: TObject);
    procedure dxBarButton31Click(Sender: TObject);
    procedure dxBarButton32Click(Sender: TObject);
    procedure dxBarButton34Click(Sender: TObject);
    procedure dxBarButton33Click(Sender: TObject);
    procedure dxBarButton35Click(Sender: TObject);
    procedure dxBarButton39Click(Sender: TObject);
    procedure dxBarButton40Click(Sender: TObject);
    procedure dxBarButton41Click(Sender: TObject);
    procedure dxBarButton42Click(Sender: TObject);
    procedure show_visitDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure dxBarLargeButton16Click(Sender: TObject);
    procedure dxBarButton46Click(Sender: TObject);
    procedure dxBarButton47Click(Sender: TObject);
    procedure btn_accdentClick(Sender: TObject);
    procedure btn_servillanceClick(Sender: TObject);
    procedure btn_deathClick(Sender: TObject);
    procedure btn_drugallergyClick(Sender: TObject);
    procedure btn_dentalClick(Sender: TObject);
    procedure btn_moneyClick(Sender: TObject);
    procedure dxBarLargeButton17Click(Sender: TObject);
    procedure dxBarLargeButton18Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
    visit : string;
  end;

var
  main_u: Tmain_u;

implementation

uses  db_connect_module, connection_unit, blood_mian_f,
  pay_blood_list_f, pay_blood_f, blood_stock_f, test_server_f, report_rb1k_f,
  show_erlog_f, show_emslog_f, room_config_f, show_physic_f, show_medlog_f,
  show_dentlog_f, show_opdlog, show_clinic_f, f43_anc_f, f43_women_f, f43_fp_f,
  f43_postnatal_f, f43_prenatal_f, f43_labor_f, f43_newborn_f,
  f43_newborncare_f, f43_epi_f, miniEMR_f, f43_chronic_f, f43_chronicfu_f,
  kpi_fanc_f, kpi_pre5_f, kpi_fpost3_f, Qtarget_women_f, Qtarget_0_5y_f,
  Qtarget_person_f, report_r506_f, Qtarget_60y_f,
  Qtarget_35_60y_f, Qtarget_ncd_f, f43_accident_f, f43_servillance_f,
  f43_death_f, f43_drugal_f, f43_dental_f, show_money_f, chk_patient_f,
  chk_diag_f;

{$R *.dfm}

procedure Tmain_u.connect_btnClick(Sender: TObject);
begin
    connection_form := Tconnection_form.Create(application);
    connection_form.ShowModal;
    connection_form.Free;
end;

procedure Tmain_u.dent_btnClick(Sender: TObject);
begin
    show_dent_form := Tshow_dent_form.Create(application);
    show_dent_form.ShowModal;
    show_dent_form.Free;
end;

procedure Tmain_u.btn_ancClick(Sender: TObject);
begin
    f43_anc_from := Tf43_anc_from.Create(application);
    f43_anc_from.ShowModal;
    f43_anc_from.Free;
end;

procedure Tmain_u.btn_prenatalClick(Sender: TObject);
begin
    f43_prenatal_form   := Tf43_prenatal_form.Create(application);
    f43_prenatal_form.ShowModal;
    f43_prenatal_form.Free
end;

procedure Tmain_u.btn_newborncareClick(Sender: TObject);
begin
    f43_newborncare_form   := Tf43_newborncare_form.Create(application);
    f43_newborncare_form.ShowModal;
    f43_newborncare_form.Free
end;

procedure Tmain_u.btn_epiClick(Sender: TObject);
begin
    f43_epi_form   := Tf43_epi_form.Create(application);
    f43_epi_form.ShowModal;
    f43_epi_form.Free
end;

procedure Tmain_u.btn_chronicClick(Sender: TObject);
begin
    f43_chronic_form   := Tf43_chronic_form.Create(application);
    f43_chronic_form.ShowModal;
    f43_chronic_form.Free
end;

procedure Tmain_u.btn_chronicfuClick(Sender: TObject);
begin
    f43_chronicfu_form   := Tf43_chronicfu_form.Create(application);
    f43_chronicfu_form.ShowModal;
    f43_chronicfu_form.Free
end;

procedure Tmain_u.btn_accdentClick(Sender: TObject);
begin
    f43_accident_form   := Tf43_accident_form.Create(application);
    f43_accident_form.ShowModal;
    f43_accident_form.Free
end;

procedure Tmain_u.btn_deathClick(Sender: TObject);
begin
    f43_death_form   := Tf43_death_form.Create(application);
    f43_death_form.ShowModal;
    f43_death_form.Free
end;

procedure Tmain_u.btn_dentalClick(Sender: TObject);
begin
    f43_dental_form   := Tf43_dental_form.Create(application);
    f43_dental_form.ShowModal;
    f43_dental_form.Free
end;

procedure Tmain_u.btn_drugallergyClick(Sender: TObject);
begin
    f43_drugal_form   := Tf43_drugal_form.Create(application);
    f43_drugal_form.ShowModal;
    f43_drugal_form.Free
end;

procedure Tmain_u.btn_servillanceClick(Sender: TObject);
begin
    f43_servillance_form   := Tf43_servillance_form.Create(application);
    f43_servillance_form.ShowModal;
    f43_servillance_form.Free
end;

procedure Tmain_u.btn_posnatalClick(Sender: TObject);
begin
    f43_postnatal_form   := Tf43_postnatal_form.Create(application);
    f43_postnatal_form.ShowModal;
    f43_postnatal_form.Free
end;

procedure Tmain_u.dxBarButton30Click(Sender: TObject);
begin
    kpi_fanc_form := Tkpi_fanc_form.Create(application);
    kpi_fanc_form.ShowModal;
    kpi_fanc_form.Free;
end;

procedure Tmain_u.dxBarButton31Click(Sender: TObject);
begin
    kpi_pre5_form := Tkpi_pre5_form.Create(application);
    kpi_pre5_form.ShowModal;
    kpi_pre5_form.Free;
end;

procedure Tmain_u.dxBarButton32Click(Sender: TObject);
begin
    kpi_post3_form := Tkpi_post3_form.Create(application);
    kpi_post3_form.ShowModal;
    kpi_post3_form.Free;
end;

procedure Tmain_u.dxBarButton33Click(Sender: TObject);
begin
    target_0_5y_form := Ttarget_0_5y_form.Create(application);
    target_0_5y_form.ShowModal;
    target_0_5y_form.Free;
end;

procedure Tmain_u.dxBarButton34Click(Sender: TObject);
begin
    target_women_form := Ttarget_women_form.Create(application);
    target_women_form.ShowModal;
    target_women_form.Free;
end;

procedure Tmain_u.dxBarButton35Click(Sender: TObject);
begin
    targer_35_60y_form := Ttarger_35_60y_form.Create(application);
    targer_35_60y_form.ShowModal;
    targer_35_60y_form.Free;
end;

procedure Tmain_u.dxBarButton39Click(Sender: TObject);
begin
    target_0_5y_form := Ttarget_0_5y_form.Create(application);
    target_0_5y_form.ShowModal;
    target_0_5y_form.Free;
end;

procedure Tmain_u.dxBarButton40Click(Sender: TObject);
begin
    target_women_form := Ttarget_women_form.Create(application);
    target_women_form.ShowModal;
    target_women_form.Free;
end;

procedure Tmain_u.dxBarButton41Click(Sender: TObject);
begin
    targer_35_60y_form := Ttarger_35_60y_form.Create(application);
    targer_35_60y_form.ShowModal;
    targer_35_60y_form.Free;
end;

procedure Tmain_u.dxBarButton42Click(Sender: TObject);
begin
    target_person_form := Ttarget_person_form.Create(application);
    target_person_form.ShowModal;
    target_person_form.Free;
end;

procedure Tmain_u.dxBarButton46Click(Sender: TObject);
begin
    targer_60y_form := Ttarger_60y_form.Create(application);
    targer_60y_form.ShowModal;
    targer_60y_form.Free;
end;

procedure Tmain_u.dxBarButton47Click(Sender: TObject);
begin
    target_ncd_form := Ttarget_ncd_form.Create(application);
    target_ncd_form.ShowModal;
    target_ncd_form.Free;
end;

procedure Tmain_u.btn_newbornClick(Sender: TObject);
begin
    f43_newborn_form := Tf43_newborn_form.Create(application);
    f43_newborn_form.ShowModal;
    f43_newborn_form.Free;
end;

procedure Tmain_u.btn_womenClick(Sender: TObject);
begin
    f43_women_form := Tf43_women_form.Create(application);
    f43_women_form.ShowModal;
    f43_women_form.Free;
end;

procedure Tmain_u.btn_fpClick(Sender: TObject);
begin
    f43_fp_form := Tf43_fp_form.Create(application);
    f43_fp_form.ShowModal;
    f43_fp_form.Free;
end;

procedure Tmain_u.btn_laborClick(Sender: TObject);
begin
    f43_labor_form := Tf43_labor_form.Create(application);
    f43_labor_form.ShowModal;
    f43_labor_form.Free;
end;

procedure Tmain_u.btn_moneyClick(Sender: TObject);
begin
    chk_money_form := Tchk_money_form.Create(application);
    chk_money_form.ShowModal;
    chk_money_form.Free;
end;

procedure Tmain_u.dxBarLargeButton10Click(Sender: TObject);
begin
    erlog_form := Terlog_form.Create(application);
    erlog_form.ShowModal;
    erlog_form.Free;
end;

procedure Tmain_u.dxBarLargeButton11Click(Sender: TObject);
begin
    test_connect := Ttest_connect.Create(application);
    test_connect.ShowModal;
    test_connect.Free;

end;

procedure Tmain_u.dxBarLargeButton12Click(Sender: TObject);
begin
    report_rb1k := Treport_rb1k.Create(application);
    report_rb1k.ShowModal;
    report_rb1k.Free;
end;

procedure Tmain_u.dxBarLargeButton14Click(Sender: TObject);
begin
    show_clinic_form := Tshow_clinic_form.Create(application);
    show_clinic_form.ShowModal;
    show_clinic_form.Free;
end;

procedure Tmain_u.dxBarLargeButton16Click(Sender: TObject);
begin
    report_r506_form := Treport_r506_form.Create(application);
    report_r506_form.ShowModal;
    report_r506_form.Free;
end;

procedure Tmain_u.dxBarLargeButton17Click(Sender: TObject);
begin
    chk_patient_form := Tchk_patient_form.Create(application);
    chk_patient_form.ShowModal;
    chk_patient_form.Free;
end;

procedure Tmain_u.dxBarLargeButton18Click(Sender: TObject);
begin
    chk_diag_form := Tchk_diag_form.Create(application);
    chk_diag_form.ShowModal;
    chk_diag_form.Free;
end;

procedure Tmain_u.dxBarLargeButton3Click(Sender: TObject);
begin
close;
end;

procedure Tmain_u.dxBarLargeButton4Click(Sender: TObject);
begin

    blood_stock_form := Tblood_stock_form.Create(application);
    blood_stock_form.ShowModal;
    blood_stock_form.Free;
end;

procedure Tmain_u.dxBarLargeButton6Click(Sender: TObject);
begin
    blood_mian_form := Tblood_mian_form.Create(application);
    blood_mian_form.ShowModal;
    blood_mian_form.Free;
end;

procedure Tmain_u.dxBarLargeButton7Click(Sender: TObject);
begin
    pay_blood_form := Tpay_blood_form.Create(application);
    pay_blood_form.ShowModal;
    pay_blood_form.Free;
end;

procedure Tmain_u.dxBarLargeButton8Click(Sender: TObject);
begin
    main_u := Tmain_u.Create(application);
    main_u.ShowModal;
    main_u.Free;
end;

procedure Tmain_u.emr_btnClick(Sender: TObject);
begin
    miniEMR_form := TminiEMR_form.Create(application);
    miniEMR_form.visit := Qshow_main.FieldByName('vn').AsString;
    miniEMR_form.ShowModal;
    miniEMR_form.Free;
end;

procedure Tmain_u.ems_btnClick(Sender: TObject);
begin
    emslog_form := Temslog_form.Create(application);
    emslog_form.ShowModal;
    emslog_form.Free;
end;

procedure Tmain_u.excel_export_btnClick(Sender: TObject);
begin
   ExportGridToExcel(gettempdir + 'data_export.xls', show_visit, True, True);
   shellexecute(handle, 'Open', pchar(gettempdir + 'data_export.xls'), nil, nil,sw_normal);
end;

procedure Tmain_u.FormShow(Sender: TObject);
begin
   db_connect_m.connect_db.Connected := true;

   if db_connect_m.connect_db.Connected then
      begin
        Qshow_main.Close;
        date_start_text.Date := now;
        date_end_text.Date   := now;
        Qshow_main.Params.ParamValues['date_start_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_start_text.Date));
        Qshow_main.Params.ParamValues['date_end_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_end_text.Date));
        Qshow_main.Open;
        record_count.Caption :=  IntToStr(Qshow_main.RecordCount);
      end
  else
      begin
        showmessage('False Connect!!');
        connection_form := Tconnection_form(application);
        connection_form.ShowModal;
        connection_form.Free;
      end;
end;

function Tmain_u.GetTempDir: string;
var
  TempDir: array[0..MAX_PATH] of Char;
begin
  TempDir[GetTempPath(260, TempDir)] := #0;
  Result := TempDir;
end;

procedure Tmain_u.opb_btnClick(Sender: TObject);
begin
    opdlog_f := Topdlog_f.Create(application);
    opdlog_f.ShowModal;
    opdlog_f.Free;
end;

procedure Tmain_u.phy_btnClick(Sender: TObject);
begin
    show_physic_form := Tshow_physic_form.Create(application);
    show_physic_form.ShowModal;
    show_physic_form.Free;
end;

procedure Tmain_u.post_date_btnClick(Sender: TObject);
begin
  Qshow_main.Close;
  Qshow_main.Params.ParamValues['date_start_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_start_text.Date));
  Qshow_main.Params.ParamValues['date_end_text']:=StrToDate(FormatDateTime('dd/mm/yyyy',date_end_text.Date));
  Qshow_main.Open;
  record_count.Caption :=  IntToStr(Qshow_main.RecordCount);
  Qshow_main.First;
        process_Qrb1k.Position := 0;
        process_Qrb1k.properties.Max := Qshow_main.RecordCount;
           while not Qshow_main.Eof do
              begin
                Qshow_main.Next;
                //sleep(1000);
                process_Qrb1k.Visible := True;
                process_Qrb1k.Position := process_Qrb1k.Position +1;
                application.ProcessMessages;
              end;
  process_Qrb1k.Visible := False;
end;

procedure Tmain_u.psyc_btnClick(Sender: TObject);
begin
    show_med_form := Tshow_med_form.Create(application);
    show_med_form.ShowModal;
    show_med_form.Free;
end;

procedure Tmain_u.rom_btnClick(Sender: TObject);
begin
    room_config_from := Troom_config_from.Create(application);
    room_config_from.ShowModal;
    room_config_from.Free;
end;

procedure Tmain_u.RzBitBtn4Click(Sender: TObject);
begin
close;
end;

procedure Tmain_u.show_visitDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
    miniEMR_form := TminiEMR_form.Create(application);
    miniEMR_form.visit := Qshow_main.FieldByName('vn').AsString;
    miniEMR_form.ShowModal;
    miniEMR_form.Free;
end;

end.
