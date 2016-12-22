program opd_log;

uses
  Forms,
  main_Unit in 'main_Unit.pas' {main_u},
  db_connect_module in 'db_connect_module.pas' {db_connect_m: TDataModule},
  blood_mian_f in 'blood_mian_f.pas' {blood_mian_form},
  blood_stock_f in 'blood_stock_f.pas' {blood_stock_form},
  pay_blood_list_f in 'pay_blood_list_f.pas' {pay_blood_form},
  payblood_f in 'payblood_f.pas' {payblood_form},
  connection_unit in 'connection_unit.pas' {connection_form},
  login_f in 'login_f.pas' {login_form},
  test_server_f in 'test_server_f.pas' {test_connect},
  report_rb1k_f in 'report_rb1k_f.pas' {report_rb1k},
  show_erlog_f in 'show_erlog_f.pas' {erlog_form},
  show_emslog_f in 'show_emslog_f.pas' {emslog_form},
  room_config_f in 'room_config_f.pas' {room_config_from},
  show_physic_f in 'show_physic_f.pas' {show_physic_form},
  main_admin in 'main_admin.pas' {main_admin_form},
  show_medlog_f in 'show_medlog_f.pas' {show_med_form},
  show_dentlog_f in 'show_dentlog_f.pas' {show_dent_form},
  show_opdlog in 'show_opdlog.pas' {opdlog_f},
  show_clinic_f in 'show_clinic_f.pas' {show_clinic_form},
  f43_anc_f in 'f43_anc_f.pas' {f43_anc_from},
  f43_women_f in 'f43_women_f.pas' {f43_women_form},
  f43_fp_f in 'f43_fp_f.pas' {f43_fp_form},
  f43_postnatal_f in 'f43_postnatal_f.pas' {f43_postnatal_form},
  f43_prenatal_f in 'f43_prenatal_f.pas' {f43_prenatal_form},
  f43_labor_f in 'f43_labor_f.pas' {f43_labor_form},
  f43_newborn_f in 'f43_newborn_f.pas' {f43_newborn_form},
  f43_newborncare_f in 'f43_newborncare_f.pas' {f43_newborncare_form},
  f43_epi_f in 'f43_epi_f.pas' {f43_epi_form},
  rukai_f in 'rukai_f.pas' {Rukai_from},
  sql_monitor_f in 'sql_monitor_f.pas' {FrmLogSql},
  active_log_f in 'active_log_f.pas' {active_log_form},
  miniEMR_f in 'miniEMR_f.pas' {miniEMR_form},
  report_ipd95_f in 'report_ipd95_f.pas' {report_ipt95_form},
  f43_chronic_f in 'f43_chronic_f.pas' {f43_chronic_form},
  f43_chronicfu_f in 'f43_chronicfu_f.pas' {f43_chronicfu_form},
  kpi_fanc_f in 'kpi_fanc_f.pas' {kpi_fanc_form},
  kpi_pre5_f in 'kpi_pre5_f.pas' {kpi_pre5_form},
  kpi_fpost3_f in 'kpi_fpost3_f.pas' {kpi_post3_form},
  Qtarget_women_f in 'Qtarget_women_f.pas' {target_women_form},
  Qtarget_0_5y_f in 'Qtarget_0_5y_f.pas' {target_0_5y_form},
  Qtarget_35_60y_f in 'Qtarget_35_60y_f.pas' {targer_35_60y_form},
  Qtarget_person_f in 'Qtarget_person_f.pas' {target_person_form},
  report_r506_f in 'report_r506_f.pas' {report_r506_form},
  Qtarget_60y_f in 'Qtarget_60y_f.pas' {targer_60y_form},
  Qtarget_ncd_f in 'Qtarget_ncd_f.pas' {target_ncd_form},
  f43_accident_f in 'f43_accident_f.pas' {f43_accident_form},
  f43_servillance_f in 'f43_servillance_f.pas' {f43_servillance_form},
  f43_death_f in 'f43_death_f.pas' {f43_death_form},
  f43_drugal_f in 'f43_drugal_f.pas' {f43_drugal_form},
  f43_dental_f in 'f43_dental_f.pas' {f43_dental_form},
  show_money_f in 'show_money_f.pas' {chk_money_form},
  chk_patient_f in 'chk_patient_f.pas' {chk_patient_form},
  chk_diag_f in 'chk_diag_f.pas' {chk_diag_form},
  f43_labfu_f in 'f43_labfu_f.pas' {f43_labfu_form},
  pt_pe_f in 'pt_pe_f.pas' {pt_pe_form},
  new_patient_f in 'new_patient_f.pas' {new_patient_form},
  account_lost_f in 'account_lost_f.pas' {account_lost_form},
  f43_disability_f in 'f43_disability_f.pas' {f43_disability_from},
  f43_icf_f in 'f43_icf_f.pas' {f43_icf_form},
  f43_ncdscreen_f in 'f43_ncdscreen_f.pas' {f43_ncdscreen_form};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdb_connect_m, db_connect_m);
  Application.CreateForm(Tlogin_form, login_form);
  Application.CreateForm(Tconnection_form, connection_form);
  Application.Run;
end.
