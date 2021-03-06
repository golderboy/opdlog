��             Nname I    WIDTH  � ORIGIN I� reporttemplate.name sqlparam K    SUBTYPE I  Text ORIGIN I� reporttemplate.sqlparam sqltext K    SUBTYPE I  Text ORIGIN I� reporttemplate.sqltext template K    SUBTYPE I  Binary ORIGIN I� reporttemplate.template db I    WIDTH  
 ORIGIN I� reporttemplate.db script K    SUBTYPE I  Text ORIGIN I� reporttemplate.script use_parameter I    SUBTYPE I 
 FixedChar WIDTH   ORIGIN I� reporttemplate.use_parameter module I    WIDTH  2 ORIGIN I� reporttemplate.module last_update     ORIGIN I� reporttemplate.last_update report_version     ORIGIN I� reporttemplate.report_version ignore_presetvalue I    SUBTYPE I 
 FixedChar WIDTH   ORIGIN I�" reporttemplate.ignore_presetvalue 
script_dfm K    SUBTYPE I  Text ORIGIN I� reporttemplate.script_dfm template_preview K    SUBTYPE I  Binary ORIGIN I�  reporttemplate.template_preview private_report I    SUBTYPE I 
 FixedChar WIDTH   ORIGIN I� reporttemplate.private_report encrypt_template K    SUBTYPE I  Binary ORIGIN I�  reporttemplate.encrypt_template no_override I    SUBTYPE I 
 FixedChar WIDTH   ORIGIN I� reporttemplate.no_override preview_pdf K    SUBTYPE I  Binary ORIGIN I� reporttemplate.preview_pdf preview_jpg K    SUBTYPE I  Binary ORIGIN I� reporttemplate.preview_jpg report_remark K    SUBTYPE I  Text ORIGIN I� reporttemplate.report_remark hos_guid I    WIDTH  & ORIGIN I� reporttemplate.hos_guid hos_guid_ext I    WIDTH  @ ORIGIN I� reporttemplate.hos_guid_ext report_description I    WIDTH  � ORIGIN I�" reporttemplate.report_description support_multi_language I    SUBTYPE I 
 FixedChar WIDTH   ORIGIN I�& reporttemplate.support_multi_language     @UUXE-FORM-Doctor-OPDCARD2   String^59-12^550331063337:String^93-11^WEERAWAT-PC�  SELECT o.vn,
  o.hn,
  o.an,
  o.vstdate,
  o.vsttime,
  o.doctor,
  o.hospmain,
  o.hospsub,
  o.oqueue,
  o.pttype,
  o.pttypeno,
  o.spclty,
  o.cur_dep,
  o.diag_text,
  o.sign_doctor,
  o.visit_type,
  o.pt_subtype,
  v.pdx,
  v.age_y,
  v.age_m,
  v.age_d,
  v.count_in_month,
  v.count_in_year,
  v.income,
  v.spclty,
  v.hospmain,
  v.hospsub,
  v.pttypeno,
  v.pttype_begin,
  v.pttype_expire,
  s.bpd,
  s.bps,
  s.bw,
  s.pulse,
  s.temperature,
  s.hr,
  s.rr,
  s.height,
  s.waist,
  s.bmi,
  s.found_allergy,
  s.smoking_type_id,
  s.drinking_type_id,
  s.o2sat,
  s.bsa,
  s.head_cricumference,
  s.hpi,
  s.pmh,
  s.fh,
  Concat(p.pname, p.fname, '  ', p.lname) AS PtName,
  p.cid,
  Concat('100', p.hn) AS HnBarcode,
  Concat('200', o.vn) AS VnBarcode,
  p.hometel AS pt_tel,
  p2.pttype,
  p2.name AS PttName,
  Concat(s.help3_icode, '  #  ', If(s.help3_qty IS NULL, '', s.help3_qty)) AS help3_drug_name,
  ft.found_allergy_type_name AS F_AllergyName,
  st.smoking_type_name,
  dt.drinking_type_name,
  sh.sh,
  sh.ros,
  o.pt_priority,
  pp.name AS PriorName,
  s.walk_id,
  pw.name AS PtWalk,
  s.fbs,
  s.pefr,
  s.pregnancy,
  s.breast_feeding,
  s.g6pd,
  os.send_doctor,
  d.name AS ObsDoctor,
  os.send_date,
  os.send_time,
  os.symptom AS ObsSymptom,
  os.nurse_activity AS ObsActivity,
  os.bedno AS ObsBedno,
  os.roomno,
  os.ward,
  os.leave_date,
  os.leave_time,
  os.note AS ObsNote,
  r.name AS ObsRoom,
  s.pe_ga,
  s.pe_heent,
  s.pe_heart,
  s.pe_ab,
  s.pe_ext,
  s.pe_neuro,
  s.pe_gen,
  s.pe_pv,
  s.pe_pr,
  s.pe_ga_text,
  s.pe_heent_text,
  s.pe_heart_text,
  s.pe_ab_text,
  s.pe_neuro_text,
  s.pe_ext_text,
  s.pe_pv_text,
  s.pe_pr_text,
  s.pe_gen_text,
  s.pe,
  s.pe_rtf,
  p.birthday,
  c.name AS AppCliName,
  ap.nextdate,
  ap.nexttime,
  ap.clinic,
  ap.depcode,
  ap.note AS AppNote,
  ap.doctor AS doctor1,
  ap.app_cause,
  ap.oapp_id,
  ap.nexttime_end,
  ap.lab_list_text,
  ap.xray_list_text,
  s.fev1_percent
FROM ovst o
  LEFT OUTER JOIN vn_stat v ON v.vn = o.vn
  LEFT OUTER JOIN opdscreen s ON s.vn = o.vn
  LEFT OUTER JOIN patient p ON p.hn = o.hn
  LEFT OUTER JOIN pttype p2 ON p2.pttype = o.pttype
  LEFT OUTER JOIN found_allergy_type ft ON ft.found_allergy = s.found_allergy
  LEFT OUTER JOIN smoking_type st ON st.smoking_type_id = s.smoking_type_id
  LEFT OUTER JOIN drinking_type dt ON dt.drinking_type_id = s.drinking_type_id
  LEFT OUTER JOIN patient_history sh ON sh.hn = o.hn
  LEFT OUTER JOIN pt_priority pp ON pp.id = o.pt_priority
  LEFT OUTER JOIN pt_walk pw ON pw.walk_id = s.walk_id
  LEFT OUTER JOIN opd_observe os ON os.vn = o.vn
  LEFT OUTER JOIN doctor d ON d.code = os.send_doctor
  LEFT OUTER JOIN roomno r ON r.roomno = os.roomno
  LEFT OUTER JOIN oapp ap ON ap.vn = o.vn
  LEFT OUTER JOIN clinic c ON c.clinic = ap.clinic
WHERE o.vn = :vn
ORDER BY ap.nextdate
LIMIT 1
�d TPF0	TppReportppReportAutoStopDataPipelineppDBPipelinePassSetting	psTwoPassPrinterSetup.BinNameDefaultPrinterSetup.DocumentNameReportPrinterSetup.PaperNameCustomPrinterSetup.PrinterNameDefaultPrinterSetup.SaveDeviceSettingsPrinterSetup.mmMarginBottom�	PrinterSetup.mmMarginLeft PrinterSetup.mmMarginRight PrinterSetup.mmMarginTop�	PrinterSetup.mmPaperHeight B PrinterSetup.mmPaperWidthP4 PrinterSetup.PaperSize Template.FileNameMC:\Users\BACKUP~1\AppData\Local\Temp\\RBuilderTemplate-XE-FORM-Doctor-OPDCARDUnitsutMillimetersAllowPrintToFile	ArchiveFileName ($MyDocuments)\ReportArchive.raf
DeviceTypeScreenDefaultFileDeviceTypeAdobe Acrobat DocumentEmailSettings.ReportFormatPDF
LanguageIDDefaultModalPreviewOutlineSettings.CreateNode	OutlineSettings.CreatePageNodes	OutlineSettings.EnabledOutlineSettings.VisiblePDFSettings.EmbedFontOptions %PDFSettings.EncryptSettings.AllowCopy	)PDFSettings.EncryptSettings.AllowInteract	'PDFSettings.EncryptSettings.AllowModify	&PDFSettings.EncryptSettings.AllowPrint	#PDFSettings.EncryptSettings.EnabledPDFSettings.FontEncodingfeAnsi!PDFSettings.ImageCompressionLevelRTFSettings.DefaultFont.CharsetDEFAULT_CHARSETRTFSettings.DefaultFont.ColorclWindowTextRTFSettings.DefaultFont.Height�RTFSettings.DefaultFont.NameArialRTFSettings.DefaultFont.Style TextFileName($MyDocuments)\Report.pdf TextSearchSettings.DefaultString
<FindText>TextSearchSettings.EnabledXLSSettings.AppNameReportBuilderXLSSettings.AuthorReportBuilderXLSSettings.SubjectReportXLSSettings.TitleReportLeft� TopVersion14.04mmColumnWidthP4 DataPipelineNameppDBPipeline TppTitleBandppTitleBand1Background.Brush.StylebsClearPrintHeight	phDynamicmmBottomOffset mmHeight�ymmPrintPosition  TppLabel	ppLabel92UserNameLabel92AutoSizeCaption   '15H  Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight)mmLeft�mmTop�mmWidth�BandType	LayerName
Foreground  TppLabel	ppLabel93UserNameLabel93Caption   -2"8Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight)mmLeft�mmTop�;mmWidth�BandType	LayerName
Foreground  TppLabel	ppLabel97UserNameLabel97AutoSizeCaption   @%#031'  :   Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftb mmTopz-mmWidth�QBandType	LayerName
Foreground  TppLabel	ppLabel98UserNameLabel101Caption   *442##1)2  : Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight-mmLeft�mmTop'ammWidthpGBandType	LayerName
Foreground  TppLabel
ppLabel102UserNameLabel42AutoSizeCaption   @'%2  Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight)mmLeft��  mmTop�mmWidth�BandType	LayerName
Foreground  	TppDBText
ppDBText52UserName	DBText201AutoSize		DataFieldvsttimeDataPipelineppDBPipelineDisplayFormat
   hh:nn น.Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	DataPipelineNameppDBPipelinemmHeight)mmLeft��  mmTop�mmWidtht0BandType	LayerName
Foreground  TppLabel	ppLabel36UserNameLabel16Caption
   5H-"9H  :   Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight-mmLeft�mmTop�OmmWidth�BandType	LayerName
Foreground  TppLabel	ppLabel40UserNameLabel34Caption   B##031'  :   Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft��  mmTop@mmWidthYHBandType	LayerName
Foreground  TppLabel	ppLabel42UserNameLabel37AutoSizeFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft mmTop mmWidth"BandType	LayerName
Foreground  TppVariableppVariable1UserName	Variable1AutoSizeBlankWhenZero	CalcOrder Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight)mmLeftV mmTopz-mmWidth:�  BandType	LayerName
Foreground  TppVariableppVariable4UserName	Variable4AutoSizeBlankWhenZero	CalcOrderCalcTypeveReportStartFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight-mmLeft� mmTop/bmmWidthb BandType	LayerName
Foreground  	TppDBText
ppDBText39UserNameDBText18	DataFieldPttNameDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	DataPipelineNameppDBPipelinemmHeight-mmLeftIemmTop'ammWidth�  BandType	LayerName
Foreground  TppVariableppVariable19UserName
Variable19AutoSizeBlankWhenZero	CalcOrderCalcTypeveReportStartFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�7mmTop�OmmWidth�� BandType	LayerName
Foreground  TppVariableppVariable12UserName
Variable12BlankWhenZero	CalcOrderCalcTypeveReportStartFont.CharsetDEFAULT_CHARSET
Font.ColorclRed	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignmenttaRightJustifiedTransparent	VisiblemmHeight-mmLeft�B mmTop mmWidth�7BandType	LayerName
Foreground  TppLineppLine1UserNameLine1	Pen.WidthPositionlpBottomWeight       ��?mmHeightM	mmLeft�mmTop�pmmWidth� BandType	LayerName
Foreground  TppVariableppVariable5UserName	Variable5AutoSizeBlankWhenZero	CalcOrderCalcTypeveReportStartFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft�7mmTop�mmWidth�rBandType	LayerName
Foreground  TppVariableppVariable14UserName
Variable14BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.Color  U 	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBoldfsUnderline Transparent	mmHeight#mmLeft�mmTopmmWidth�IBandType	LayerName
Foreground  	TppDBText
ppDBText42UserNameDBText42	DataFieldhnDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�F mmTopV
mmWidth�SBandType	LayerName
Foreground  TppLabel	ppLabel12UserNameLabel15CaptionHN :Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight#mmLeft�% mmTopV
mmWidth�BandType	LayerName
Foreground  	TppDBText
ppDBText73UserNameDBText73	DataFieldvnDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�x mmTop�MmmWidth�VBandType	LayerName
Foreground  TppLabel
ppLabel191UserNameLabel191CaptionvnFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignment
taCenteredTransparent	mmHeight�mmLeftk mmTop�MmmWidthgBandType	LayerName
Foreground  TppLabel	ppLabel16UserNameLabel25Caption   
7H-Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight#mmLeft�mmTop`*mmWidth�BandType	LayerName
Foreground  	TppDBText
ppDBText43UserNameDBText43	DataFieldPtNameDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�7mmTop`*mmWidthh�  BandType	LayerName
Foreground  
TppDBImageppDBImage22UserName	DBImage22AlignHorizontalahCenterAlignVerticalavCenterMaintainAspectRatioStretch		DataFieldimageDataPipelineDBPipeLineLink9GraphicType
AutoDetectParentDataPipelineDataPipelineNameDBPipeLineLink9mmHeight�SmmLeftp� mmTop$#mmWidthaIBandType	LayerName
Foreground  TppDBBarCodeppDBBarCode1UserName
DBBarCode1AlignBarCodeahLeftBarCodeTypebcCode39BarColorclBlack	DataField	HnBarcodeDataPipelineppDBPipelinePrintHumanReadable	AlignmenttaRightJustifyAutoSizeFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	DataPipelineNameppDBPipelinemmHeighti+mmLeft�� mmTop$#mmWidth��  BandType	LayerName
Foreground
mmBarWidth� mmWideBarRatio�)   TppLabel
ppLabel224UserNameLabel224AutoSizeCaption   2#AI"2Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight)mmLeftb mmTop�mmWidth�8BandType	LayerName
Foreground  TppVariableppVariable42UserName
Variable42BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight-mmLeft�7mmTop>mmWidth\<BandType	LayerName
Foreground  	TppDBText
ppDBText81UserNameDBText81	DataFieldF_AllergyNameDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeftT> mmTop�mmWidth��  BandType	LayerName
Foreground  	TppDBText
ppDBText82UserNameDBText82	DataFieldpttypenoDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	DataPipelineNameppDBPipelinemmHeight-mmLefto` mmTop/bmmWidthZgBandType	LayerName
Foreground  TppLabel	ppLabel91UserNameLabel91Caption   @%5H*44  :   Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight-mmLeft[  mmTop/bmmWidth�7BandType	LayerName
Foreground  TppVariableppVariable8UserName	Variable8AutoSizeBlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	VisiblemmHeight�mmLefty� mmTop mmWidth�8BandType	LayerName
Foreground  TppVariableppVariable16UserName
Variable16AutoSizeBlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlue	Font.NameTH SarabunPSK	Font.Size	
Font.StylefsBold Transparent	mmHeightxmmLeft�� mmTopV
mmWidth1�  BandType	LayerName
Foreground  TppMemoppMemo4UserNameMemo4CaptionMemo4CharWrapFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Lines.StringsNODATA Transparent	mmHeight�mmLeft�0 mmTop%BmmWidth��  BandType	LayerName
ForegroundmmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight 	mmLeading    TppHeaderBandppHeaderBand1Background.Brush.StylebsClearPrintHeight	phDynamicPrintOnFirstPagemmBottomOffset mmHeightjJmmPrintPosition  	TppDBText	ppDBText6UserNameDBText5	DataFieldhnDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	DataPipelineNameppDBPipelinemmHeight)mmLeftPGmmTop�mmWidth�lBandType 	LayerName
Foreground  TppLabel
ppLabel154UserNameLabel154CaptionHN :Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight)mmLeft�mmTop�mmWidth�BandType 	LayerName
Foreground  	TppDBText	ppDBText4UserNameDBText2	DataFieldPtNameDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	DataPipelineNameppDBPipelinemmHeight#mmLeft�5mmTopz-mmWidthN�  BandType 	LayerName
Foreground  TppLabel
ppLabel153UserNameLabel153Caption   
7H-  :   Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight)mmLeft�mmTopz-mmWidth!BandType 	LayerName
Foreground  TppSystemVariableppSystemVariable1UserNameSystemVariable1AutoSizeVarTypevtPageNoFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignmenttaRightJustifiedTransparent	mmHeight)mmLeft@
 mmTop<mmWidthxBandType 	LayerName
Foreground  TppLabel
ppLabel155UserNameLabel155Caption   CH-  +I25HFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeft�� mmTop<mmWidthABandType 	LayerName
Foreground  TppLineppLine7UserNameLine7Border.Weight       � @	Pen.WidthPositionlpBottomWeight       ��?mmHeight^mmLeft�mmTop?mmWidth�  BandType 	LayerName
Foreground  TppVariableppVariable15UserName
Variable15BlankWhenZero	CalcOrder Font.CharsetDEFAULT_CHARSET
Font.Color  U 	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBoldfsUnderline Transparent	mmHeight#mmLeft�mmTopmmWidth�IBandType 	LayerName
Foreground  TppLabel
ppLabel151UserNameLabel151AutoSizeCaption   '15H  Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight)mmLeft$�  mmTop�mmWidth�BandType 	LayerName
Foreground  TppVariableppVariable11UserName
Variable11AutoSizeBlankWhenZero	CalcOrderCalcTypeveReportStartFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight)mmLeft�  mmTop�mmWidth�nBandType 	LayerName
Foreground  TppLabel
ppLabel150UserNameLabel150AutoSizeCaption   @'%2  Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight)mmLeft�p mmTop�mmWidth�BandType 	LayerName
Foreground  	TppDBText	ppDBText2UserNameDBText1AutoSize		DataFieldvsttimeDataPipelineppDBPipelineDisplayFormathh:nnFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipelinemmHeight)mmLeftZ� mmTop�mmWidthi BandType 	LayerName
Foreground  TppLabel
ppLabel220UserNameLabel220Caption   -2"8Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight)mmLeftQ  mmTopz-mmWidth�BandType 	LayerName
Foreground  TppDBBarCodeppDBBarCode2UserName
DBBarCode2AlignBarCodeahLeftBarCodeTypebcCode39BarColorclBlack	DataField	HnBarcodeDataPipelineppDBPipelinePrintHumanReadable	AlignmenttaRightJustifyAutoSizeFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	DataPipelineNameppDBPipelinemmHeightO(mmLeft�� mmTop�mmWidth��  BandType 	LayerName
Foreground
mmBarWidth� mmWideBarRatio�)   TppVariableppVariable43UserName
Variable43BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight)mmLeft0 mmTopz-mmWidth�<BandType 	LayerName
Foreground  TppLabel	ppLabel39UserNameLabel39AutoSizeCaption   . Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight)mmLeft8� mmTop�mmWidth�BandType 	LayerName
Foreground   TppDetailBandppDetailBand11Background1.Brush.StylebsClearBackground2.Brush.StylebsClearPrintHeight	phDynamicmmBottomOffset mmHeight��  mmPrintPosition  TppSubReportppSubReport18UserNameSubReport18	ExpandAllKeepTogether	NewPrintJobOutlineSettings.CreateNode	ParentPrinterSetupParentWidthShiftRelativeToppSubReport2TraverseAllDataDataPipelineNameDBPipeLineLink10mmHeight�mmLeft�mmTop5%mmWidtho` BandType	LayerName
ForegroundmmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  TppChildReportppChildReport18AutoStopDataPipelineDBPipeLineLink10PrinterSetup.BinNameDefaultPrinterSetup.DocumentNameReportPrinterSetup.PaperNameCustomPrinterSetup.PrinterNameDefaultPrinterSetup.SaveDeviceSettingsPrinterSetup.mmMarginBottom�	PrinterSetup.mmMarginLeft PrinterSetup.mmMarginRight PrinterSetup.mmMarginTop�	PrinterSetup.mmPaperHeight B PrinterSetup.mmPaperWidthP4 PrinterSetup.PaperSize Version14.04mmColumnWidthP4 DataPipelineNameDBPipeLineLink10 TppTitleBandppTitleBand7Background.Brush.StylebsClearmmBottomOffset mmHeight mmPrintPosition   TppDetailBandppDetailBand19Background1.Brush.StylebsClearBackground2.Brush.StylebsClearPrintHeight	phDynamicmmBottomOffset mmHeight�mmPrintPosition  TppVariableppVariable27UserName
Variable27AutoSizeBlankWhenZero	CalcOrder Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size

Font.Style Transparent	mmHeight�mmLeftmmTop mmWidth�M BandType	LayerNameForeground19   TppSummaryBandppSummaryBand3Background.Brush.StylebsClearmmBottomOffset mmHeight mmPrintPosition   TppGroupppGroup2	BreakNamescreen_dateDataPipelineDBPipeLineLink10GroupFileSettings.NewFileGroupFileSettings.EmailFileKeepTogether	OutlineSettings.CreateNode	StartOnOddPageUserNameGroup2mmNewColumnThreshold mmNewPageThreshold DataPipelineNameDBPipeLineLink10NewFile TppGroupHeaderBandppGroupHeaderBand2Background.Brush.StylebsClearmmBottomOffset mmHeight�mmPrintPosition  TppLabel	ppLabel95UserNameLabel95Caption   2#'1'2!1B%+4I3Font.CharsetDEFAULT_CHARSET
Font.ColorclNavy	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBoldfsUnderline Transparent	mmHeight�mmLeftmmTop mmWidth}BandTypeGroupNo 	LayerNameForeground19  TppLine	ppLine124UserNameLine124Weight       ��?mmHeightmmLeft	mmTop mmWidth�N BandTypeGroupNo 	LayerNameForeground19   TppGroupFooterBandppGroupFooterBand2Background.Brush.StylebsClearHideWhenOneDetailmmBottomOffset mmHeight mmPrintPosition    TraCodeModuleraCodeModule20ProgramStream
�  TraEventHandlerProgramNameVariable27OnCalcProgramTypettProcedureSourcej  procedure Variable27OnCalc(var Value: Variant);
begin
  {
  Value := 'วันเวลา : '+DateToStr(DBPipeLineLink10['screen_date'])+' '+TimeToStr(DBPipeLineLink10['screen_time'])+'  ผล : '+DBPipeLineLink10['bpd']+' / '+DBPipeLineLink10['bps']+'  จุดวัด : '+DBPipeLineLink10['department']  ;
  }
  
  Value := 'วันเวลา:'+FormatThaiDate('dd mmm yy',DBPipeLineLink10['screen_date'] )+'  '+FormatThaiDate('HH:NN',DBPipeLineLink10['screen_time'] )+'  ผล: '+DBPipeLineLink10['bps']+'/'+DBPipeLineLink10['bpd']+'  จุด: '+DBPipeLineLink10['department']  ;
  
  

end;
ComponentName
Variable27	EventNameOnCalcEventID!    TppDesignLayersppDesignLayers20 TppDesignLayerppDesignLayer20UserNameForeground19	LayerTypeltBanded     TppSubReportppSubReport22UserName
SubReport3	ExpandAllKeepTogether	NewPrintJobOutlineSettings.CreateNode	ParentPrinterSetupParentWidthShiftRelativeToppSubReport3TraverseAllDataVisibleDataPipelineNameppDBPipelinemmHeight�mmLeft�mmTopjJmmWidtho` BandType	LayerName
ForegroundmmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  TppChildReportppChildReport22AutoStopDataPipelineppDBPipelinePrinterSetup.BinNameDefaultPrinterSetup.DocumentNameReportPrinterSetup.PaperNameCustomPrinterSetup.PrinterNameDefaultPrinterSetup.SaveDeviceSettingsPrinterSetup.mmMarginBottom�	PrinterSetup.mmMarginLeft PrinterSetup.mmMarginRight PrinterSetup.mmMarginTop�	PrinterSetup.mmPaperHeight B PrinterSetup.mmPaperWidthP4 PrinterSetup.PaperSize Version14.04mmColumnWidthP4 DataPipelineNameppDBPipeline TppTitleBandppTitleBand10Background.Brush.StylebsClearPrintHeight	phDynamicmmBottomOffset mmHeight mmPrintPosition   TppDetailBandppDetailBand23Background1.Brush.StylebsClearBackground2.Brush.StylebsClearPrintHeight	phDynamicmmBottomOffset mmHeightB�  mmPrintPosition  	TppRegion	ppRegion5UserNameRegion12Brush.StylebsClearCaptionRegion12	Pen.StylepsClearShiftRelativeTo	ppRegion6Stretch	Transparent	mmHeight!mmLeft mmTop7DmmWidth�O BandType	LayerName
PageLayer1mmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  TppLabel	ppLabel49UserNameLabel81Caption
   4##!  :   Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size	
Font.StylefsBold Transparent	mmHeightmmLeftmmTopHFmmWidth�#BandType	LayerName
PageLayer1  	TppDBMemo
ppDBMemo50UserNameDBMemo9CharWrap	DataFieldObsActivityDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size	
Font.Style Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeftz-mmTopPGmmWidth9 BandType	LayerName
PageLayer1mmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight 	mmLeading    	TppRegion
ppRegion52UserNameRegion29KeepTogether	Brush.StylebsClearCaptionRegion29	Pen.ColorclWhiteShiftRelativeTo	ppRegion5Stretch	Transparent	VisiblemmHeight"mmLeft mmTop'ammWidth�N BandType	LayerName
PageLayer1mmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  TppLabel	ppLabel51UserNameLabel209CaptionNOTE : Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size	
Font.StylefsBold Transparent	mmHeightmmLeftmmTopAdmmWidth�BandType	LayerName
PageLayer1  	TppDBMemo
ppDBMemo51UserNameDBMemo10CharWrap	DataFieldObsNoteDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size	
Font.Style Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeftq,mmTopAdmmWidth9 BandType	LayerName
PageLayer1mmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight 	mmLeading    	TppRegion	ppRegion6UserNameRegion10KeepTogether	Brush.StylebsClearCaptionRegion10	Pen.ColorclWhiteStretch	Transparent	mmHeightYHmmLeft mmTop mmWidth�O BandType	LayerName
PageLayer1mmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  TppLabel	ppLabel50UserNameLabel104Caption   A"L  :   Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size	
Font.StylefsBold Transparent	mmHeightmmLeftmmTop�mmWidthBandType	LayerName
PageLayer1  TppLabel	ppLabel47UserNameLabel1Caption   +I-*1@-22#  [ @5"]   :   Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size	
Font.StylefsBold Transparent	mmHeightmmLeftmmTop�mmWidthr[BandType	LayerName
PageLayer1  TppVariableppVariable7UserName	Variable7BlankWhenZero	CalcOrder ColorclWindowFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size	
Font.Style Transparent	mmHeightxmmLeftIemmTop�mmWidth"BandType	LayerName
PageLayer1  TppLabel	ppLabel11UserNameLabel11Caption   '15H--  :   Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size	
Font.StylefsBold Transparent	mmHeightmmLeftmmTopmmWidth3&BandType	LayerName
PageLayer1  TppLabel	ppLabel48UserNameLabel80Caption   -22#  :   Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size	
Font.StylefsBold Transparent	mmHeightmmLeftmmTop`*mmWidthBandType	LayerName
PageLayer1  	TppDBMemo
ppDBMemo47UserNameDBMemo49CharWrap	DataField
ObsSymptomDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size	
Font.Style Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeftz-mmTop`*mmWidth9 BandType	LayerName
PageLayer1mmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight 	mmLeading   	TppDBText
ppDBText28UserNameDBText22AutoSize		DataField	ObsDoctorDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size	
Font.Style Transparent	DataPipelineNameppDBPipelinemmHeightmmLeftz-mmTop�mmWidth{BandType	LayerName
PageLayer1  TppVariableppVariable38UserName
Variable38BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size	
Font.Style Transparent	mmHeightxmmLeftz-mmTopmmWidthF'BandType	LayerName
PageLayer1    TppGroup	ppGroup17	BreakNameopdscreen_vnDataPipelineppDBPipelineGroupFileSettings.NewFileGroupFileSettings.EmailFileOutlineSettings.CreateNode	StartOnOddPageUserNameGroup3mmNewColumnThreshold mmNewPageThreshold�DataPipelineNameppDBPipelineNewFile TppGroupHeaderBandppGroupHeaderBand17Background.Brush.StylebsClearPrintHeight	phDynamicmmBottomOffset mmHeight�mmPrintPosition  TppVariableppVariable46UserName
Variable44BlankWhenZero	CalcOrder Font.CharsetDEFAULT_CHARSET
Font.Color	clFuchsia	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft� mmTop	mmWidth�<BandTypeGroupNo 	LayerName
PageLayer1  TppLine	ppLine128UserNameLine12	Pen.Width Weight       ��?mmHeight"mmLeft mmTop mmWidth�O BandTypeGroupNo 	LayerName
PageLayer1  TppLabel	ppLabel54UserNameLabel47Caption   *1@-22#Font.CharsetDEFAULT_CHARSET
Font.Color  U 	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBoldfsUnderline Transparent	mmHeight)mmLeftmmTop mmWidth�CBandTypeGroupNo 	LayerName
PageLayer1  TppVariableppVariable45UserName
Variable45AutoSizeBlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight]mmLeft�PmmTop"mmWidth��  BandTypeGroupNo 	LayerName
PageLayer1   TppGroupFooterBandppGroupFooterBand17VisibleBackground.Brush.StylebsClearPrintHeight	phDynamicHideWhenOneDetailmmBottomOffset mmHeight mmPrintPosition    TraCodeModuleraCodeModule21ProgramStream
�  TraEventHandlerProgramNameVariable44OnCalcProgramTypettProcedureSource�  procedure Variable44OnCalc(var Value: Variant);
begin

if  Variable7.Value= '' then
  Region10.visible:=false
   else
  Region10.visible:=true; 
  
 
 
if  DBPipeline['ObsActivity']= '' then
  Region12.visible:=false
   else
  Region12.visible:=true; 
 
  if DBPipeline['ObsNote'] = '' then
  Region29.visible:=false
   else
  Region29.visible:=true;  
     

 
  

end;
ComponentName
Variable44	EventNameOnCalcEventID! TraEventHandlerProgramNameVariable7OnCalcProgramTypettProcedureSource�procedure Variable7OnCalc(var Value: Variant);
begin

  Value := DBPipeline['ObsRoom']+'  [ '+DBPipeline['ObsBedno']+' ]' ; 

end;
ComponentName	Variable7	EventNameOnCalcEventID! TraEventHandlerProgramNameVariable45OnCalcProgramTypettProcedureSource�   procedure Variable45OnCalc(var Value: Variant);
begin

  Value := 'วันที่Obs. : '+FormatThaiDate('d mmm yy',DBPipeline['send_date']) +' เวลา: '+FormatThaiDate('HH:SS',DBPipeline['send_time']) ;

end;
ComponentName
Variable45	EventNameOnCalcEventID! TraEventHandlerProgramNameVariable38OnCalcProgramTypettProcedureSource�   procedure Variable38OnCalc(var Value: Variant);
begin


  Value := FormatThaiDate('d mmm yy',DBPipeline['leave_date']) +' เวลา: '+FormatThaiDate('HH:SS',DBPipeline['leave_time']) ;

end;
ComponentName
Variable38	EventNameOnCalcEventID!    TppDesignLayersppDesignLayers23 TppDesignLayerppDesignLayer23UserName
PageLayer1	LayerTypeltBanded     TppSubReportppSubReport3UserName
SubReport4	ExpandAllKeepTogether	NewPrintJobOutlineSettings.CreateNode	ParentPrinterSetupParentWidthShiftRelativeToppSubReport5TraverseAllDataDataPipelineNameDBPipeLineLink7mmHeight�mmLeft�mmTop]mmWidtho` BandType	LayerName
ForegroundmmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  TppChildReportppChildReport3AutoStopColumnsColumnPositions.Strings044450 DataPipelineDBPipeLineLink7PrinterSetup.BinNameDefaultPrinterSetup.DocumentNameReportPrinterSetup.PaperNameCustomPrinterSetup.PrinterNameDefaultPrinterSetup.SaveDeviceSettingsPrinterSetup.mmMarginBottom�	PrinterSetup.mmMarginLeft PrinterSetup.mmMarginRight PrinterSetup.mmMarginTop�	PrinterSetup.mmPaperHeight B PrinterSetup.mmPaperWidthP4 PrinterSetup.PaperSize Version14.04mmColumnWidth��  DataPipelineNameDBPipeLineLink7 TppTitleBandppTitleBand4Background.Brush.StylebsClearmmBottomOffset mmHeight mmPrintPosition   TppColumnHeaderBandppColumnHeaderBand1Background.Brush.StylebsClearmmBottomOffset mmHeight mmPrintPosition   TppDetailBandppDetailBand3Background1.Brush.StylebsClearBackground2.Brush.StylebsClearColumnTraversalctLeftToRightmmBottomOffset mmHeight�zmmPrintPosition  
TppDBImageppDBImage23UserName	DBImage23AlignHorizontalahCenterAlignVerticalavCenterMaintainAspectRatioStretch	Transparent		DataFieldthumbnail_image_dataDataPipelineDBPipeLineLink7GraphicTypeJPEGDataPipelineNameDBPipeLineLink7mmHeight�qmmLeftM	mmTopmmWidth(�  BandType	LayerNameForeground7   TppColumnFooterBandppColumnFooterBand1Background.Brush.StylebsClearmmBottomOffset mmHeight mmPrintPosition   TppSummaryBandppSummaryBand4Background.Brush.StylebsClearmmBottomOffset mmHeight mmPrintPosition   TraCodeModuleraCodeModule2ProgramStream
      TppDesignLayersppDesignLayers8 TppDesignLayerppDesignLayer8UserNameForeground7	LayerTypeltBanded     TppSubReportppSubReport1UserName
SubReport1	ExpandAllKeepTogether	NewPrintJobOutlineSettings.CreateNode	ParentPrinterSetupParentWidthTraverseAllDataDataPipelineNameppDBPipelinemmHeight�mmLeft�mmTop mmWidtho` BandType	LayerName
ForegroundmmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  TppChildReportppChildReport1AutoStopDataPipelineppDBPipelinePrinterSetup.BinNameDefaultPrinterSetup.DocumentNameReportPrinterSetup.PaperNameCustomPrinterSetup.PrinterNameDefaultPrinterSetup.SaveDeviceSettingsPrinterSetup.mmMarginBottom�	PrinterSetup.mmMarginLeft PrinterSetup.mmMarginRight PrinterSetup.mmMarginTop�	PrinterSetup.mmPaperHeight B PrinterSetup.mmPaperWidthP4 PrinterSetup.PaperSize Version14.04mmColumnWidthP4 DataPipelineNameppDBPipeline TppTitleBandppTitleBand2Background.Brush.StylebsClearPrintHeight	phDynamicmmBottomOffset mmHeight mmPrintPosition   TppDetailBandppDetailBand1Background1.Brush.StylebsClearBackground2.Brush.StylebsClearmmBottomOffset mmHeight mmPrintPosition   TppGroupppGroup4	BreakNamevnDataPipelineppDBPipelineGroupFileSettings.NewFileGroupFileSettings.EmailFileKeepTogether	OutlineSettings.CreateNode	StartOnOddPageUserNameGroup4mmNewColumnThreshold mmNewPageThreshold DataPipelineNameppDBPipelineNewFile TppGroupHeaderBandppGroupHeaderBand4Background.Brush.StylebsClearPrintHeight	phDynamicmmBottomOffset mmHeightf�  mmPrintPosition  TppLabel
ppLabel114UserNameLabel114Caption   I-!9%1#0'141H'DFont.CharsetDEFAULT_CHARSET
Font.Color  U 	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBoldfsUnderline Transparent	mmHeight�mmLeft"mmTop mmWidth�pBandTypeGroupNo 	LayerNameForeground5  	TppRegion
ppRegion28UserNameRegion28KeepTogether	Brush.StylebsClearCaptionRegion28	Pen.StylepsClearStretch	Transparent	mmHeightÒ  mmLeftmmTop�mmWidth*X BandTypeGroupNo 	LayerNameForeground5mmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  TppLabel	ppLabel14UserNameLabel14CaptionT.:Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft9�  mmTopF'mmWidthV
BandTypeGroupNo 	LayerNameForeground5  	TppDBText	ppDBText9UserNameDBText6BlankWhenZero		DataFieldtemperatureDataPipelineppDBPipelineDisplayFormat#,0.0;-#,0.0Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeftu�  mmTopF'mmWidth!BandTypeGroupNo 	LayerNameForeground5  TppLabel	ppLabel20UserNameLabel20CaptionP.:Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftx�  mmTopF'mmWidthV
BandTypeGroupNo 	LayerNameForeground5  	TppDBText
ppDBText10UserNameDBText9BlankWhenZero		DataFieldpulseDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeft��  mmTopF'mmWidth�BandTypeGroupNo 	LayerNameForeground5  TppLabel	ppLabel23UserNameLabel201CaptionRR.:Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft� mmTopF'mmWidth�BandTypeGroupNo 	LayerNameForeground5  	TppDBText
ppDBText11UserNameDBText10BlankWhenZero		DataFieldrrDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeftR mmTopF'mmWidth�BandTypeGroupNo 	LayerNameForeground5  TppLabel	ppLabel27UserNameLabel27CaptionBP.:Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft+mmTop�7mmWidth�BandTypeGroupNo 	LayerNameForeground5  	TppDBText
ppDBText16UserName	DBText101BlankWhenZero		DataFieldbpsDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�mmTop�7mmWidth�BandTypeGroupNo 	LayerNameForeground5  TppLabel	ppLabel28UserNameLabel28Caption/Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�0mmTop�7mmWidth"BandTypeGroupNo 	LayerNameForeground5  	TppDBText
ppDBText18UserNameDBText16BlankWhenZero		DataFieldbpdDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�2mmTop�7mmWidth�BandTypeGroupNo 	LayerNameForeground5  TppLabel	ppLabel24UserNameLabel24Caption   . : Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�qmmTop�7mmWidth�BandTypeGroupNo 	LayerNameForeground5  	TppDBText
ppDBText19UserNameDBText19BlankWhenZero		DataFieldbwDataPipelineppDBPipelineDisplayFormat#,0.0;-#,0.0Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeftB�  mmTop�7mmWidth!BandTypeGroupNo 	LayerNameForeground5  TppLabel	ppLabel86UserNameLabel86CaptionC.Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft��  mmTopF'mmWidthEBandTypeGroupNo 	LayerNameForeground5  TppLabel	ppLabel87UserNameLabel87Caption/min.Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft��  mmTopF'mmWidth�BandTypeGroupNo 	LayerNameForeground5  TppLabel	ppLabel88UserNameLabel88Caption/min.Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft6 mmTopF'mmWidth�BandTypeGroupNo 	LayerNameForeground5  TppLabel	ppLabel89UserNameLabel89CaptionmmHgFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftHFmmTop�7mmWidth�BandTypeGroupNo 	LayerNameForeground5  TppLabel	ppLabel90UserNameLabel90Caption   . Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftL�  mmTop�7mmWidthxBandTypeGroupNo 	LayerNameForeground5  TppLabelppLabel8UserNameLabel8CaptionFBS :Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�YmmTopYHmmWidth�BandTypeGroupNo 	LayerNameForeground5  	TppDBText
ppDBText36UserNameDBText36BlankWhenZero		DataFieldfbsDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�pmmTopYHmmWidth�BandTypeGroupNo 	LayerNameForeground5  TppLabel	ppLabel18UserNameLabel18Caption   *9  : Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft+�  mmTop�7mmWidth�BandTypeGroupNo 	LayerNameForeground5  TppLabel	ppLabel19UserNameLabel19Caption   !. Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft��  mmTop�7mmWidthxBandTypeGroupNo 	LayerNameForeground5  	TppDBText
ppDBText32UserNameDBText32BlankWhenZero		DataFieldheightDataPipelineppDBPipelineDisplayFormat#,0.0;-#,0.0Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeft��  mmTop�7mmWidth,$BandTypeGroupNo 	LayerNameForeground5  TppLabel	ppLabel22UserNameLabel22CaptionBMI :Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft� mmTop�7mmWidth�BandTypeGroupNo 	LayerNameForeground5  	TppDBText
ppDBText33UserNameDBText33BlankWhenZero		DataFieldbmiDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�* mmTop�7mmWidth"BandTypeGroupNo 	LayerNameForeground5  TppLabel
ppLabel127UserNameLabel111AutoSizeCaptionmg/dLFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft[�  mmTopYHmmWidth�BandTypeGroupNo 	LayerNameForeground5  TppLabel	ppLabel10UserNameLabel102AutoSizeCaption   * 29IH'"  :   Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft��  mmTop�mmWidth�8BandTypeGroupNo 	LayerNameForeground5  	TppDBText	ppDBText5UserNameDBText5	DataFieldPtWalkDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeftb mmTop�mmWidthF'BandTypeGroupNo 	LayerNameForeground5  TppLabel
ppLabel173UserName	Label1010AutoSizeCaption   2#AI"2  :   Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft+mmTopF'mmWidth�1BandTypeGroupNo 	LayerNameForeground5  TppLabel
ppLabel152UserNameLabel152Caption   2#7H!*8#2Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft��  mmTopchmmWidthi+BandTypeGroupNo 	LayerNameForeground5  TppLabel
ppLabel149UserNameLabel149Caption   2#*88+#5HFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftmmTopchmmWidthz-BandTypeGroupNo 	LayerNameForeground5  TppLabel
ppLabel207UserNameLabel207Caption   #-@-'  : Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftmmTopYHmmWidth5%BandTypeGroupNo 	LayerNameForeground5  TppLabel
ppLabel208UserNameLabel208Caption   . !. Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftXHmmTopYHmmWidth�BandTypeGroupNo 	LayerNameForeground5  	TppDBText
ppDBText65UserNameDBText65	DataFieldwaistDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignmenttaRightJustifiedTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeftN(mmTopYHmmWidth�BandTypeGroupNo 	LayerNameForeground5  TppLabel
ppLabel211UserNameLabel211CaptionPEER:Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft��  mmTopYHmmWidth�BandTypeGroupNo 	LayerNameForeground5  TppLabel
ppLabel213UserNameLabel213AutoSizeCaptionL/minFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLefti�  mmTopYHmmWidth�BandTypeGroupNo 	LayerNameForeground5  	TppDBText
ppDBText76UserNameDBText76	DataFieldpefrDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeftx�  mmTopYHmmWidth�BandTypeGroupNo 	LayerNameForeground5  TppLabel
ppLabel218UserNameLabel218CaptionO2 sat:Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�	 mmTopYHmmWidth
 BandTypeGroupNo 	LayerNameForeground5  TppLabel
ppLabel219UserNameLabel219Caption%Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft�I mmTopPGmmWidthV
BandTypeGroupNo 	LayerNameForeground5  	TppDBText
ppDBText80UserNameDBText80	DataFieldo2satDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignment
taCenteredTransparent	DataPipelineNameppDBPipelinemmHeight�mmLeft�* mmTopYHmmWidth�BandTypeGroupNo 	LayerNameForeground5  	TppDBText	ppDBText3UserNameDBText3	DataFieldsmoking_type_nameDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsUnderline Transparent	DataPipelineNameppDBPipelinemmHeight]mmLeft�6mmTopchmmWidth�$BandTypeGroupNo 	LayerNameForeground5  	TppDBText
ppDBText44UserNameDBText44AutoSize		DataFielddrinking_type_nameDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsUnderline Transparent	DataPipelineNameppDBPipelinemmHeight]mmLeft>�  mmTopchmmWidth�BandTypeGroupNo 	LayerNameForeground5  	TppDBText
ppDBText51UserNameDBText51AutoSize		DataFieldF_AllergyNameDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	DataPipelineNameppDBPipelinemmHeight]mmLeft�4mmTopF'mmWidth79BandTypeGroupNo 	LayerNameForeground5  TppLabel
ppLabel101UserNameLabel101Caption   +!2"@+8Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBoldfsItalicfsUnderline Transparent	mmHeight�mmLeftmmTop�xmmWidthi+BandTypeGroupNo 	LayerNameForeground5  TppLabel
ppLabel108UserNameLabel109AutoSizeCaption   '2!@#HH'  :   Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeftmmTop�mmWidthABandTypeGroupNo 	LayerNameForeground5  TppVariableppVariable9UserName	Variable9BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�<mmTop�mmWidth�VBandTypeGroupNo 	LayerNameForeground5  TppMemoppMemo9UserNameMemo9CaptionMemo9CharWrapFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsItalic Transparent	mmHeightW)mmLeft�1mmTop�xmmWidth�( BandTypeGroupNo 	LayerNameForeground5mmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight 	mmLeading   TppLabel	ppLabel35UserNameLabel35CaptionFEV1 :Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight]mmLeft+mmTop�XmmWidth�BandTypeGroupNo 	LayerNameForeground5  TppLabel	ppLabel37UserNameLabel1Caption%Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeft�<mmTop�XmmWidthV
BandTypeGroupNo 	LayerNameForeground5  	TppDBText	ppDBText1UserNameDBText1	DataFieldfev1_percentDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	DataPipelineNameppDBPipelinemmHeight�mmLeft,$mmTop�XmmWidth�BandTypeGroupNo 	LayerNameForeground5   TppVariableppVariable13UserName
Variable13BlankWhenZero	CalcOrder Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsItalic Transparent	VisiblemmHeight�mmLeft��  mmTop"mmWidth�5BandTypeGroupNo 	LayerNameForeground5  TppVariableppVariable2UserName	Variable2AutoSizeBlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeft�, mmTop"mmWidth5%BandTypeGroupNo 	LayerNameForeground5   TppGroupFooterBandppGroupFooterBand4Background.Brush.StylebsClearHideWhenOneDetailmmBottomOffset mmHeight mmPrintPosition    TraCodeModuleraCodeModule1ProgramStream
�  TraVarProgram	ChildTypeProgramName	VariablesProgramTypettProcedureSourceDprocedure Variables;
var
       o1,o2 : string;

begin

end;
 TraEventHandlerProgramNameVariable13OnCalcProgramTypettProcedureSource�	  procedure Variable13OnCalc(var Value: Variant);
begin
                        

   if (DBPipeline['pregnancy'] = 'Y')   then
      aaa := 'ผู้ป่วยกำลังตั้งครรภ์'+ '/' + GetSQLStringData('select max(doctor_note_text) as cc from patient_history where hn = "'+DBPipeline['hn']+'"')  ;

   if (DBPipeline['breast_feeding'] = 'Y') then
      aaa := 'ผู้ป่วยกำลังให้นมบุตร'+ '/' + GetSQLStringData('select max(doctor_note_text) as cc from patient_history where hn = "'+DBPipeline['hn']+'"') ;
   
   if (DBPipeline['g6pd'] = 'Y')  then
         aaa := 'ผู้ป่วยเป็น G6PD'+ '/' + GetSQLStringData('select max(doctor_note_text) as cc from patient_history where hn = "'+DBPipeline['hn']+'"') ;
   
    if (DBPipeline['pregnancy'] = 'Y') and (DBPipeline['breast_feeding'] = 'Y')  then
      aaa := 'ผู้ป่วยกำลังตั้งครรภ์ / ให้นมบุตร'+ '/' + GetSQLStringData('select max(doctor_note_text) as cc from patient_history where hn = "'+DBPipeline['hn']+'"');  
       
    if (DBPipeline['pregnancy'] = 'Y') and (DBPipeline['g6pd'] = 'Y')  then
      aaa := 'ผู้ป่วยกำลังตั้งครรภ์ /  ผู้ป่วยเป็น G6PD'+ '/' + GetSQLStringData('select max(doctor_note_text) as cc from patient_history where hn = "'+DBPipeline['hn']+'"') ;      
       
    if (DBPipeline['breast_feeding'] = 'Y') and (DBPipeline['g6pd'] = 'Y')  then
      aaa := 'ผู้ป่วยกำลังให้นมบุตร /  เป็น G6PD'+ '/' + GetSQLStringData('select max(doctor_note_text) as cc from patient_history where hn = "'+DBPipeline['hn']+'"') ;  
      
   if (DBPipeline['pregnancy'] = 'Y') and (DBPipeline['breast_feeding'] = 'Y') and (DBPipeline['g6pd'] = 'Y')  then
         aaa := 'ผู้ป่วยกำลังตั้งครรภ์ / ให้นมบุตร / เป็น G6PD ' + '/' + GetSQLStringData('select max(doctor_note_text) as cc from patient_history where hn = "'+DBPipeline['hn']+'"') ;
    
    if (DBPipeline['pregnancy'] <> 'Y') and (DBPipeline['breast_feeding'] <> 'Y') and (DBPipeline['g6pd'] <> 'Y')  then
         aaa := GetSQLStringData('select max(doctor_note_text) as cc from patient_history where hn = "'+DBPipeline['hn']+'"') ;
    
         
    Memo9.text := aaa;           

end;
ComponentName
Variable13	EventNameOnCalcEventID! TraEventHandlerProgramNameVariable9OnCalcProgramTypettProcedureSourceI  procedure Variable9OnCalc(var Value: Variant);
begin

      o1 := GetSQLStringData('select vn from er_regist               '+                                       
      ' where vn = "'+DBPipeline['vn']+'"');
      
      if (o1=DBPipeline['vn']) then
      begin
      o2 := GetSQLStringData('select lv.er_emergency_level_name from er_regist er                             '+
      ' left join er_emergency_level lv on  lv.er_emergency_level_id = er.er_emergency_level_id        '+
      ' where er.vn = "'+o1+'" ')  ;
      end
      
      else if (o1='') then
      begin
      o2 := GetSQLStringData('select pt.name from ovst o                '+
      ' left join pt_priority pt on pt.id = o.pt_priority        '+
      ' where o.vn ="'+DBPipeline['vn']+'"')  ;      
      end;
       
      Value :=   o2;
end;
ComponentName	Variable9	EventNameOnCalcEventID!    TppDesignLayersppDesignLayers6 TppDesignLayerppDesignLayer6UserNameForeground5	LayerTypeltBanded     TppSubReportppSubReport2UserName
SubReport2	ExpandAllKeepTogether	NewPrintJobOutlineSettings.CreateNode	ParentPrinterSetupParentWidthShiftRelativeToppSubReport1TraverseAllDataDataPipelineNameppDBPipelinemmHeight�mmLeft�mmTop�7mmWidtho` BandType	LayerName
ForegroundmmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  TppChildReportppChildReport2AutoStopDataPipelineppDBPipelinePrinterSetup.BinNameDefaultPrinterSetup.DocumentNameReportPrinterSetup.PaperNameCustomPrinterSetup.PrinterNameDefaultPrinterSetup.SaveDeviceSettingsPrinterSetup.mmMarginBottom�	PrinterSetup.mmMarginLeft PrinterSetup.mmMarginRight PrinterSetup.mmMarginTop�	PrinterSetup.mmPaperHeight B PrinterSetup.mmPaperWidthP4 PrinterSetup.PaperSize Version14.04mmColumnWidthP4 DataPipelineNameppDBPipeline TppTitleBandppTitleBand3Background.Brush.StylebsClearPrintHeight	phDynamicmmBottomOffset mmHeight mmPrintPosition   TppDetailBandppDetailBand2Background1.Brush.StylebsClearBackground2.Brush.StylebsClearPrintHeight	phDynamicmmBottomOffset mmHeight��  mmPrintPosition  	TppRegion
ppRegion11UserNameRegion11KeepTogether	Brush.StylebsClearCaptionRegion11	Pen.ColorclWhiteShiftRelativeTo
ppRegion10Stretch	Transparent	mmHeight�SmmLeft mmTop�mmWidth�N BandType	LayerNameForeground6mmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  TppLabel	ppLabel80UserNameLabel80CaptionHPI : Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size	
Font.StylefsBold Transparent	mmHeightmmLeft+mmTopmmWidthWBandType	LayerNameForeground6  TppMemoppMemo5UserNameMemo5CaptionMemo5CharWrapFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size	
Font.Style Lines.Strings�       1 '1H-!2#    DI    +2'*1H    1**2'0A*1    D!HD-  D!H@G-    D#12##1)25H#. *  A!H*2!A%  DI"22#2!2#1#02-22#D!H56I6!2#    (     P r e g   1 1   w k s )  Stretch	Transparent	mmHeight{LmmLeft"mmTop
 mmWidth�' BandType	LayerNameForeground6mmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight 	mmLeading    	TppRegion
ppRegion12UserNameRegion12Brush.StylebsClearCaptionRegion12	Pen.StylepsClearShiftRelativeTo
ppRegion11Stretch	Transparent	mmHeight!mmLeft mmTop�nmmWidth�N BandType	LayerNameForeground6mmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  TppLabel	ppLabel81UserNameLabel81CaptionPMH : Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size	
Font.StylefsBold Transparent	mmHeightmmLeft+mmTop�qmmWidthwBandType	LayerNameForeground6  TppMemoppMemo7UserNameMemo7CaptionMemo7CharWrapFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size	
Font.Style Lines.Strings     4@* Transparent	mmHeight�mmLeft"mmTop�qmmWidth�' BandType	LayerNameForeground6mmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight 	mmLeading    	TppRegion
ppRegion10UserNameRegion10KeepTogether	Brush.StylebsClearCaptionRegion10	Pen.ColorclWhiteStretch	Transparent	mmHeight
 mmLeft mmTop mmWidth�N BandType	LayerNameForeground6mmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  TppLabel	ppLabel44UserNameLabel104CaptionCC : Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size	
Font.StylefsBold Transparent	mmHeightmmLeft+mmTop mmWidth[BandType	LayerNameForeground6  TppMemoppMemo1UserNameMemo1CaptionMemo1CharWrapFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size	
Font.Style Lines.StringsE   DI    +2'*1H  1**2'0A*1    @G!2A%I'1 '1  [ 2  (#8"2  20-19#]  Stretch	Transparent	mmHeight�mmLeft"mmTop mmWidth�' BandType	LayerNameForeground6mmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight 	mmLeading   TppVariableppVariable29UserName
Variable29BlankWhenZero	CalcOrder Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight^mmLeft+mmTop�mmWidth�BandType	LayerNameForeground6   	TppRegion
ppRegion29UserNameRegion29KeepTogether	Brush.StylebsClearCaptionRegion29	Pen.ColorclWhiteShiftRelativeTo
ppRegion12Stretch	Transparent	mmHeight�mmLeft	mmTop��  mmWidth�M BandType	LayerNameForeground6mmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  TppLabel
ppLabel209UserNameLabel209CaptionFH : Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size	
Font.StylefsBold Transparent	mmHeightxmmLeft+mmTop��  mmWidth�BandType	LayerNameForeground6  TppMemoppMemo8UserNameMemo8CaptionMemo8CharWrapFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size	
Font.Style Lines.Strings   4@* Transparent	mmHeightxmmLeft"mmTop��  mmWidth�' BandType	LayerNameForeground6mmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight 	mmLeading    	TppRegion
ppRegion53UserNameRegion53KeepTogether	Brush.StylebsClearCaptionRegion53	Pen.ColorclWhiteShiftRelativeTo
ppRegion29Stretch	Transparent	VisiblemmHeight�mmLeft	mmTopD�  mmWidth�M BandType	LayerNameForeground6mmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  TppLabel
ppLabel210UserNameLabel210CaptionSH : Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size	
Font.StylefsBold Transparent	mmHeight"mmLeft+mmTop]�  mmWidth�BandType	LayerNameForeground6  TppMemoppMemo6UserNameMemo6CaptionMemo6CharWrapFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size	
Font.Style Transparent	mmHeight�mmLeft"mmTopD�  mmWidth�' BandType	LayerNameForeground6mmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight 	mmLeading     TppGroupppGroup3	BreakNameopdscreen_vnDataPipelineppDBPipelineGroupFileSettings.NewFileGroupFileSettings.EmailFileOutlineSettings.CreateNode	StartOnOddPageUserNameGroup3mmNewColumnThreshold mmNewPageThreshold�DataPipelineNameppDBPipelineNewFile TppGroupHeaderBandppGroupHeaderBand3Background.Brush.StylebsClearmmBottomOffset mmHeight�mmPrintPosition  TppLabel	ppLabel45UserNameLabel1CaptionB   -22#*31  /   #0'142#@GH'"181  /   #0'142#@GH'"C-5Font.CharsetDEFAULT_CHARSET
Font.Color  U 	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBoldfsUnderline Transparent	mmHeight�mmLeftmmTop� mmWidth!B BandTypeGroupNo 	LayerNameForeground6  TppVariableppVariable44UserName
Variable44BlankWhenZero	CalcOrder Font.CharsetDEFAULT_CHARSET
Font.Color	clFuchsia	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeightmmLeft�- mmTopmmWidthCBandTypeGroupNo 	LayerNameForeground6  TppLineppLine12UserNameLine12	Pen.Width Weight       ��?mmHeight"mmLeft mmTop mmWidth�O BandTypeGroupNo 	LayerNameForeground6   TppGroupFooterBandppGroupFooterBand3VisibleBackground.Brush.StylebsClearPrintHeight	phDynamicHideWhenOneDetailmmBottomOffset mmHeight mmPrintPosition    TraCodeModuleraCodeModule9ProgramStream
�  TraEventHandlerProgramNameVariable29OnCalcProgramTypettProcedureSource  procedure Variable29OnCalc(var Value: Variant);
begin
 {
  memo1.text := ReplaceSTR(GetSQLSubQueryData('select concat(cl.cc," เป็นมาแล้ว ",if(cl.period_qty="","",cl.period_qty), if(cl.period_unit_name="","",cl.period_unit_name)," [",fc.officer_name,"]") AS CC  '+
'from opdscreen_cc_list cl  '+
'left outer join officer fc on fc.officer_login_name=cl.staff   '+
'WHERE cl.vn = "'+DBPipeline['vn']+'"'),'''','');
}
  
     memo1.text := GetListFromQuery('select concat(cl.cc,"  เป็นมาแล้ว",if(cl.period_qty<>"",cl.period_qty,""), if(cl.period_unit_name<>"",cl.period_unit_name,"")," [",fc.officer_name,"]") AS CC '+
'from opdscreen_cc_list cl  '+
'left outer join officer fc on fc.officer_login_name=cl.staff   '+
'WHERE cl.vn = "'+DBPipeline['vn']+'" group by cl.vn ');

     memo5.text := GetSQLStringData('select hpi '+
'from opdscreen  '+
'WHERE vn = "'+DBPipeline['vn']+'"');

     memo7.text := GetSQLStringData('select pmh '+
'from opdscreen  '+
'WHERE vn = "'+DBPipeline['vn']+'"');

     memo8.text := GetSQLStringData('select fh '+
'from opdscreen  '+
'WHERE vn = "'+DBPipeline['vn']+'"');

     memo6.text := GetSQLStringData('select sh '+
'from opdscreen  '+
'WHERE vn = "'+DBPipeline['vn']+'"');

end;
ComponentName
Variable29	EventNameOnCalcEventID! TraEventHandlerProgramNameVariable44OnCalcProgramTypettProcedureSource  procedure Variable44OnCalc(var Value: Variant);
begin

if   DBPipeline['pmh']= '' then
  Region12.visible:=false
   else
  Region12.visible:=true; 
  
 
if   DBPipeline['fh']= '' then
  Region29.visible:=false
   else
  Region29.visible:=true; 
 
 
 if   DBPipeline['sh']= '' then
  Region53.visible:=false
   else
  Region53.visible:=true;         

  

end;
ComponentName
Variable44	EventNameOnCalcEventID!    TppDesignLayersppDesignLayers7 TppDesignLayerppDesignLayer7UserNameForeground6	LayerTypeltBanded     TppVariableppVariable3UserName	Variable3BlankWhenZero	CalcOrder Font.CharsetDEFAULT_CHARSET
Font.Color  U 	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight^mmLeft mmTopjJmmWidth�BandType	LayerName
Foreground  TppSubReportppSubReport5UserName
SubReport5	ExpandAllKeepTogether	NewPrintJobOutlineSettings.CreateNode	ParentPrinterSetupParentWidthShiftRelativeToppSubReport18TraverseAllDataDataPipelineNameppDBPipelinemmHeight�mmLeft�mmTop�mmWidtho` BandType	LayerName
ForegroundmmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  TppChildReportppChildReport5AutoStopDataPipelineppDBPipelinePrinterSetup.BinNameDefaultPrinterSetup.DocumentNameReportPrinterSetup.PaperNameCustomPrinterSetup.PrinterNameDefaultPrinterSetup.SaveDeviceSettingsPrinterSetup.mmMarginBottom�	PrinterSetup.mmMarginLeft PrinterSetup.mmMarginRight PrinterSetup.mmMarginTop�	PrinterSetup.mmPaperHeight B PrinterSetup.mmPaperWidthP4 PrinterSetup.PaperSize Version14.04mmColumnWidthP4 DataPipelineNameppDBPipeline TppTitleBandppTitleBand6Background.Brush.StylebsClearPrintHeight	phDynamicmmBottomOffset mmHeight mmPrintPosition   TppDetailBandppDetailBand5Background1.Brush.StylebsClearBackground2.Brush.StylebsClearPrintHeight	phDynamicmmBottomOffset mmHeightV�  mmPrintPosition  	TppRegion
ppRegion14UserNameRegion14KeepTogether	Brush.StylebsClearCaptionRegion14	Pen.ColorclWhiteStretch	Transparent	mmHeight��  mmLeft mmTop mmWidth�N BandType	LayerNameForeground2mmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  TppLabel
ppLabel241UserNameLabel241AutoSizeCaption : Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size

Font.StylefsBold TextAlignment
taCenteredTransparent	mmHeight�mmLeft�mmTop mmWidthEBandType	LayerNameForeground2  TppVariableppVariable40UserName
Variable40AutoSizeBlankWhenZero	CalcOrder Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size	
Font.Style Transparent	mmHeightmmLeft�:mmTop"mmWidth�1BandType	LayerNameForeground2  TppVariableppVariable41UserName
Variable41AutoSizeBlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size	
Font.Style Transparent	mmHeightmmLeft�:mmTop�mmWidth�1BandType	LayerNameForeground2  TppVariableppVariable47UserName
Variable47AutoSizeBlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size	
Font.Style Transparent	mmHeightmmLeft�:mmTop!mmWidth�1BandType	LayerNameForeground2  TppVariableppVariable48UserName
Variable48AutoSizeBlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size	
Font.Style Transparent	mmHeightmmLeft�:mmTop�/mmWidth�1BandType	LayerNameForeground2  TppVariableppVariable49UserName
Variable49AutoSizeBlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size	
Font.Style Transparent	mmHeightmmLeft�:mmTop>mmWidth�1BandType	LayerNameForeground2  TppVariableppVariable51UserName
Variable51AutoSizeBlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size	
Font.Style Transparent	mmHeightmmLeft�:mmTop�ZmmWidth�1BandType	LayerNameForeground2  TppVariableppVariable53UserName
Variable53AutoSizeBlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size	
Font.Style Transparent	mmHeightmmLeft�:mmTop�wmmWidth�1BandType	LayerNameForeground2  TppVariableppVariable52UserName
Variable52AutoSizeBlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size	
Font.Style Transparent	mmHeightmmLeft�:mmToplimmWidth�1BandType	LayerNameForeground2  TppVariableppVariable50UserName
Variable50AutoSizeBlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size	
Font.Style Transparent	mmHeightmmLeft�:mmTop{LmmWidth�1BandType	LayerNameForeground2  	TppDBText
ppDBText13UserNameDBText13	DataField
pe_ga_textDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size	
Font.Style Transparent	DataPipelineNameppDBPipelinemmHeightmmLeft�vmmTop"mmWidth��  BandType	LayerNameForeground2  	TppDBText
ppDBText17UserNameDBText17	DataFieldpe_heent_textDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size	
Font.Style Transparent	DataPipelineNameppDBPipelinemmHeightmmLeft�vmmTop�mmWidth��  BandType	LayerNameForeground2  	TppDBText
ppDBText20UserNameDBText20	DataFieldpe_heart_textDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size	
Font.Style Transparent	DataPipelineNameppDBPipelinemmHeightmmLeft�vmmTop!mmWidth��  BandType	LayerNameForeground2  	TppDBText
ppDBText21UserNameDBText21	DataField
pe_ab_textDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size	
Font.Style Transparent	DataPipelineNameppDBPipelinemmHeightmmLeft�vmmTop�/mmWidth��  BandType	LayerNameForeground2  	TppDBText
ppDBText22UserNameDBText22	DataField
pe_pv_textDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size	
Font.Style Transparent	DataPipelineNameppDBPipelinemmHeightmmLeft�vmmTop>mmWidth��  BandType	LayerNameForeground2  	TppDBText
ppDBText23UserNameDBText23	DataField
pe_pr_textDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size	
Font.Style Transparent	DataPipelineNameppDBPipelinemmHeightmmLeft�vmmTop{LmmWidth��  BandType	LayerNameForeground2  	TppDBText
ppDBText26UserNameDBText26	DataFieldpe_gen_textDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size	
Font.Style Transparent	DataPipelineNameppDBPipelinemmHeightmmLeft�vmmTop�ZmmWidth��  BandType	LayerNameForeground2  	TppDBText
ppDBText29UserNameDBText29	DataFieldpe_ext_textDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size	
Font.Style Transparent	DataPipelineNameppDBPipelinemmHeightmmLeft�vmmTop�wmmWidth��  BandType	LayerNameForeground2  	TppDBText
ppDBText27UserNameDBText27	DataFieldpe_neuro_textDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size	
Font.Style Transparent	DataPipelineNameppDBPipelinemmHeightmmLeft�vmmToplimmWidth��  BandType	LayerNameForeground2  TppLabelppLabel2UserNameLabel2CaptionGA :Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size	
Font.StylefsBold Transparent	mmHeightmmLeft+mmTop"mmWidth5BandType	LayerNameForeground2  TppLabelppLabel3UserNameLabel3CaptionHEENT :Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size	
Font.StylefsBold Transparent	mmHeightmmLeft+mmTop�mmWidth�BandType	LayerNameForeground2  TppLabelppLabel4UserNameLabel10CaptionChest/Heart :Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size	
Font.StylefsBold Transparent	mmHeightmmLeft+mmTop!mmWidth�3BandType	LayerNameForeground2  TppLabelppLabel5UserNameLabel103Caption	Abdomen :Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size	
Font.StylefsBold Transparent	mmHeightmmLeft+mmTop�/mmWidth�,BandType	LayerNameForeground2  TppLabelppLabel6UserNameLabel11CaptionPV :Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size	
Font.StylefsBold Transparent	mmHeightmmLeft+mmTop>mmWidthBandType	LayerNameForeground2  TppLabelppLabel7UserNameLabel12CaptionPR :Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size	
Font.StylefsBold Transparent	mmHeightmmLeft+mmTop{LmmWidth�BandType	LayerNameForeground2  TppLabel	ppLabel13UserNameLabel13CaptionGen :Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size	
Font.StylefsBold Transparent	mmHeightmmLeft+mmTop�ZmmWidth�BandType	LayerNameForeground2  TppLabel	ppLabel15UserNameLabel14CaptionNeuro :Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size	
Font.StylefsBold Transparent	mmHeightmmLeft+mmToplimmWidth�BandType	LayerNameForeground2  TppLabel	ppLabel21UserNameLabel21CaptionExt :Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size	
Font.StylefsBold Transparent	mmHeightmmLeft+mmTop�wmmWidth�BandType	LayerNameForeground2  TppLabelppLabel1UserNameLabel1Caption:Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size	
Font.StylefsBold Transparent	mmHeightmmLeft�pmmTop"mmWidth&BandType	LayerNameForeground2  TppLabelppLabel9UserNameLabel9Caption:Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size

Font.StylefsBold Transparent	mmHeight�mmLeft�pmmTop�mmWidthBandType	LayerNameForeground2  TppLabel	ppLabel17UserNameLabel17Caption:Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size

Font.StylefsBold Transparent	mmHeight�mmLeft�pmmTop!mmWidthBandType	LayerNameForeground2  TppLabel	ppLabel25UserNameLabel4Caption:Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size

Font.StylefsBold Transparent	mmHeight�mmLeft�pmmTop�/mmWidthBandType	LayerNameForeground2  TppLabel	ppLabel26UserNameLabel26Caption:Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size

Font.StylefsBold Transparent	mmHeight�mmLeft�pmmTop>mmWidthBandType	LayerNameForeground2  TppLabel	ppLabel29UserNameLabel29Caption:Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size

Font.StylefsBold Transparent	mmHeight�mmLeft�pmmTop{LmmWidthBandType	LayerNameForeground2  TppLabel	ppLabel30UserNameLabel30Caption:Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size

Font.StylefsBold Transparent	mmHeight�mmLeft�pmmTop�ZmmWidthBandType	LayerNameForeground2  TppLabel	ppLabel31UserNameLabel301Caption:Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size

Font.StylefsBold Transparent	mmHeight�mmLeft�pmmToplimmWidthBandType	LayerNameForeground2  TppLabel	ppLabel32UserNameLabel32Caption:Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size

Font.StylefsBold Transparent	mmHeight�mmLeft�pmmTop�wmmWidthBandType	LayerNameForeground2   	TppRegion
ppRegion13UserNameRegion13KeepTogether	Brush.StylebsClearCaptionRegion13	Pen.ColorclWhiteShiftRelativeTo
ppRegion14Stretch	Transparent	VisiblemmHeight�8mmLeft mmTop~�  mmWidth�N BandType	LayerNameForeground2mmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  TppDBRichTextppDBRichText2UserNameDBRichText2Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size	
Font.Style 	DataFieldpe_rtfDataPipelineppDBPipelineStretch	Transparent	DataPipelineNameppDBPipelinemmHeight�/mmLefti+mmTop��  mmWidthJ BandType	LayerNameForeground2mmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight   TppLabel	ppLabel83UserNameLabel83Caption	PE text :Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size	
Font.StylefsBold Transparent	mmHeightxmmLeft+mmTop��  mmWidth
 BandType	LayerNameForeground2    TppGroupppGroup5	BreakNameopdscreen_vnDataPipelineppDBPipelineGroupFileSettings.NewFileGroupFileSettings.EmailFileOutlineSettings.CreateNode	StartOnOddPageUserNameGroup5mmNewColumnThreshold mmNewPageThreshold�DataPipelineNameppDBPipelineNewFile TppGroupHeaderBandppGroupHeaderBand5Background.Brush.StylebsClearPrintHeight	phDynamicmmBottomOffset mmHeight�mmPrintPosition  TppLabel	ppLabel84UserNameLabel84AutoSizeCaption   2##'#H22"Font.CharsetDEFAULT_CHARSET
Font.Color  U 	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBoldfsUnderline Transparent	mmHeight)mmLeftmmTop mmWidth��  BandTypeGroupNo 	LayerNameForeground2  TppLineppLine15UserNameLine15	Pen.Width Weight       ��?mmHeight"mmLeftmmTop mmWidth�O BandTypeGroupNo 	LayerNameForeground2  	TppDBMemo
ppDBMemo11UserNameDBMemo11CharWrap	DataFieldpeDataPipelineppDBPipelineFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Stretch	Transparent	DataPipelineNameppDBPipelinemmHeightgmmLeftz-mmTopEmmWidth9 BandTypeGroupNo 	LayerNameForeground2mmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight 	mmLeading   TppVariableppVariable54UserName
Variable54BlankWhenZero	CalcOrder Font.CharsetDEFAULT_CHARSET
Font.Color	clFuchsia	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeightmmLeft� mmTopmmWidthCBandTypeGroupNo 	LayerNameForeground2   TppGroupFooterBandppGroupFooterBand5VisibleBackground.Brush.StylebsClearPrintHeight	phDynamicHideWhenOneDetailmmBottomOffset mmHeight mmPrintPosition    TraCodeModuleraCodeModule4ProgramStream
�  TraEventHandlerProgramNameSubReport5OnPrintProgramTypettProcedureSource-procedure SubReport5OnPrint;
begin

end;
ComponentName
SubReport5	EventNameOnPrintEventID  TraEventHandlerProgramNameVariable40OnCalcProgramTypettProcedureSource�procedure Variable40OnCalc(var Value: Variant);
begin

  Value := GetSQLStringData('select pe_normal_type_name from pe_normal_type  where pe_normal_type_code="'+DBPipeline['pe_ga']+'"');

end;
ComponentName
Variable40	EventNameOnCalcEventID! TraEventHandlerProgramNameVariable47OnCalcProgramTypettProcedureSource�procedure Variable47OnCalc(var Value: Variant);
begin


  Value := GetSQLStringData('select pe_normal_type_name from pe_normal_type  where pe_normal_type_code="'+DBPipeline['pe_heart']+'"');

end;
ComponentName
Variable47	EventNameOnCalcEventID! TraEventHandlerProgramNameVariable48OnCalcProgramTypettProcedureSource�procedure Variable48OnCalc(var Value: Variant);
begin


  Value := GetSQLStringData('select pe_normal_type_name from pe_normal_type  where pe_normal_type_code="'+DBPipeline['pe_ab']+'"');

end;
ComponentName
Variable48	EventNameOnCalcEventID! TraEventHandlerProgramNameVariable49OnCalcProgramTypettProcedureSource�procedure Variable49OnCalc(var Value: Variant);
begin


  Value := GetSQLStringData('select pe_normal_type_name from pe_normal_type  where pe_normal_type_code="'+DBPipeline['pe_pv']+'"');

end;
ComponentName
Variable49	EventNameOnCalcEventID! TraEventHandlerProgramNameVariable51OnCalcProgramTypettProcedureSource�procedure Variable51OnCalc(var Value: Variant);
begin


  Value := GetSQLStringData('select pe_normal_type_name from pe_normal_type  where pe_normal_type_code="'+DBPipeline['pe_gen']+'"');

end;
ComponentName
Variable51	EventNameOnCalcEventID! TraEventHandlerProgramNameVariable52OnCalcProgramTypettProcedureSource�procedure Variable52OnCalc(var Value: Variant);
begin


  Value := GetSQLStringData('select pe_normal_type_name from pe_normal_type  where pe_normal_type_code="'+DBPipeline['pe_neuro']+'"');

end;
ComponentName
Variable52	EventNameOnCalcEventID! TraEventHandlerProgramNameVariable53OnCalcProgramTypettProcedureSource�procedure Variable53OnCalc(var Value: Variant);
begin


  Value := GetSQLStringData('select pe_normal_type_name from pe_normal_type  where pe_normal_type_code="'+DBPipeline['pe_ext']+'"');

end;
ComponentName
Variable53	EventNameOnCalcEventID! TraEventHandlerProgramNameVariable41OnCalcProgramTypettProcedureSource�procedure Variable41OnCalc(var Value: Variant);
begin

 Value := GetSQLStringData('select pe_normal_type_name from pe_normal_type  where pe_normal_type_code="'+DBPipeline['pe_heent']+'"');

end;
ComponentName
Variable41	EventNameOnCalcEventID! TraEventHandlerProgramNameVariable50OnCalcProgramTypettProcedureSource�procedure Variable50OnCalc(var Value: Variant);
begin



  Value := GetSQLStringData('select pe_normal_type_name from pe_normal_type  where pe_normal_type_code="'+DBPipeline['pe_pr']+'"');

end;
ComponentName
Variable50	EventNameOnCalcEventID! TraEventHandlerProgramNameVariable54OnCalcProgramTypettProcedureSource�  procedure Variable54OnCalc(var Value: Variant);
begin


if (DBPipeline['pe_ga']= '') and (DBPipeline['pe_ab']='') and (DBPipeline['pe_ext']='') and (DBPipeline['pe_gen']='') and (DBPipeline['pe_heart']='') and (DBPipeline['pe_heent']='') and (DBPipeline['pe_neuro']='') then
  Region14.visible:=false
   else
  Region14.visible:=true; 
  
 
if   DBPipeline['pe_rtf']= '' then
  Region13.visible:=false
   else
  Region13.visible:=true; 
 

end;
ComponentName
Variable54	EventNameOnCalcEventID!    TppDesignLayersppDesignLayers3 TppDesignLayerppDesignLayer3UserNameForeground2	LayerTypeltBanded     TppSubReportppSubReport11UserNameSubReport11	ExpandAllNewPrintJobOutlineSettings.CreateNode	ParentPrinterSetupParentWidthTraverseAllDataDataPipelineNameDBPipeLineLink1mmHeight�mmLeftFz mmTop mmWidthG� BandType	LayerName
ForegroundmmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  TppChildReportppChildReport11AutoStopDataPipelineDBPipeLineLink1PrinterSetup.BinNameDefaultPrinterSetup.DocumentNameReportPrinterSetup.PaperNameCustomPrinterSetup.PrinterNameDefaultPrinterSetup.SaveDeviceSettingsPrinterSetup.mmMarginBottom�	PrinterSetup.mmMarginLeft PrinterSetup.mmMarginRight PrinterSetup.mmMarginTop�	PrinterSetup.mmPaperHeight B PrinterSetup.mmPaperWidthP4 PrinterSetup.PaperSize Version14.04mmColumnWidthP4 DataPipelineNameDBPipeLineLink1 TppDetailBandppDetailBand12Background1.Brush.StylebsClearBackground2.Brush.StylebsClearPrintHeight	phDynamicmmBottomOffset mmHeight�mmPrintPosition  	TppRegion	ppRegion3UserNameRegion3Brush.StylebsClearCaptionRegion3	Pen.ColorclWindow	Pen.StylepsClearStretch	Transparent	mmHeight�mmLeftmmTop mmWidth�c BandType	LayerNameForeground3mmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  	TppDBMemo
ppDBMemo24UserNameDBMemo24CharWrap	DataFieldDxnameDataPipelineDBPipeLineLink1Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size	
Font.Style Stretch	Transparent	DataPipelineNameDBPipeLineLink1mmHeight�mmLeft"mmTopmmWidthK= BandType	LayerNameForeground3mmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight 	mmLeading   	TppDBText
ppDBText61UserNameDBText61AutoSize		DataFieldicd10DataPipelineDBPipeLineLink1Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size	
Font.StylefsBold ParentDataPipelineTransparent	DataPipelineNameDBPipeLineLink1mmHeightmmLeft<mmTopmmWidth�BandType	LayerNameForeground3    TppGroupppGroup7	BreakNamevnDataPipelineDBPipeLineLink1GroupFileSettings.NewFileGroupFileSettings.EmailFileOutlineSettings.CreateNode	StartOnOddPageUserNameGroup7mmNewColumnThreshold mmNewPageThreshold DataPipelineNameDBPipeLineLink1NewFile TppGroupHeaderBandppGroupHeaderBand7Background.Brush.StylebsClearmmBottomOffset mmHeight�mmPrintPosition  TppLabel
ppLabel174UserNameLabel174ReprintOnOverFlow	AutoSizeCaption   2#'44	1"Font.CharsetDEFAULT_CHARSET
Font.Color  U 	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBoldfsUnderline Transparent	mmHeight�mmLeft+mmTop mmWidth7 BandTypeGroupNo 	LayerNameForeground3   TppGroupFooterBandppGroupFooterBand7VisibleBackground.Brush.StylebsClearPrintHeight	phDynamicHideWhenOneDetailmmBottomOffset mmHeight mmPrintPosition    TraCodeModuleraCodeModule6ProgramStream
      TppDesignLayersppDesignLayers4 TppDesignLayerppDesignLayer4UserNameForeground3	LayerTypeltBanded     TppSubReportppSubReport12UserNameSubReport12	ExpandAllNewPrintJobOutlineSettings.CreateNode	ParentPrinterSetupParentWidthShiftRelativeToppSubReport11TraverseAllDataDataPipelineNameDBPipeLineLink2mmHeight�mmLeftFz mmTop�mmWidthG� BandType	LayerName
ForegroundmmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  TppChildReportppChildReport12AutoStopDataPipelineDBPipeLineLink2PrinterSetup.BinNameDefaultPrinterSetup.DocumentNameReportPrinterSetup.PaperNameCustomPrinterSetup.PrinterNameDefaultPrinterSetup.SaveDeviceSettingsPrinterSetup.mmMarginBottom�	PrinterSetup.mmMarginLeft PrinterSetup.mmMarginRight PrinterSetup.mmMarginTop�	PrinterSetup.mmPaperHeight B PrinterSetup.mmPaperWidthP4 PrinterSetup.PaperSize Version14.04mmColumnWidthP4 DataPipelineNameDBPipeLineLink2 TppDetailBandppDetailBand13Background1.Brush.StylebsClearBackground2.Brush.StylebsClearmmBottomOffset mmHeight�mmPrintPosition  	TppDBCalc	ppDBCalc2UserNameDBCalc2DataPipelineDBPipeLineLink2Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size

Font.StylefsBold Transparent	
DBCalcTypedcCountDataPipelineNameDBPipeLineLink2mmHeight�mmLeft+mmTop mmWidthpBandType	LayerNameForeground17  	TppDBText
ppDBText37UserNameDBText37	DataFieldOperNameDetailDataPipelineDBPipeLineLink2Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size

Font.Style Transparent	DataPipelineNameDBPipeLineLink2mmHeight�mmLeft�mmTop mmWidth�k BandType	LayerNameForeground17   TppGroupppGroup8	BreakNamevnDataPipelineDBPipeLineLink2GroupFileSettings.NewFileGroupFileSettings.EmailFileOutlineSettings.CreateNode	StartOnOddPageUserNameGroup8mmNewColumnThreshold mmNewPageThreshold�DataPipelineNameDBPipeLineLink2NewFile TppGroupHeaderBandppGroupHeaderBand8Background.Brush.StylebsClearmmBottomOffset mmHeight�mmPrintPosition  TppLabel
ppLabel177UserNameLabel177AutoSizeCaption   #2"2#+12#Font.CharsetDEFAULT_CHARSET
Font.Color  U 	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBoldfsUnderline Transparent	mmHeight�mmLeft4mmTop� mmWidth7 BandTypeGroupNo 	LayerNameForeground17  TppLineppLine4UserNameLine4	Pen.Width Weight       ��?mmHeight+mmLeft mmTopmmWidth�� BandTypeGroupNo 	LayerNameForeground17   TppGroupFooterBandppGroupFooterBand8VisibleBackground.Brush.StylebsClearPrintHeight	phDynamicHideWhenOneDetailmmBottomOffset mmHeight mmPrintPosition    TraCodeModuleraCodeModule10ProgramStream
      TppDesignLayersppDesignLayers18 TppDesignLayerppDesignLayer18UserNameForeground17	LayerTypeltBanded     TppSubReportppSubReport13UserNameSubReport13	ExpandAllNewPrintJobOutlineSettings.CreateNode	ParentPrinterSetupParentWidthShiftRelativeToppSubReport12TraverseAllDataDataPipelineNameDBPipeLineLink6mmHeight�mmLeftFz mmTop,$mmWidthG� BandType	LayerName
ForegroundmmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  TppChildReportppChildReport13AutoStopDataPipelineDBPipeLineLink6PrinterSetup.BinNameDefaultPrinterSetup.DocumentNameReportPrinterSetup.PaperNameCustomPrinterSetup.PrinterNameDefaultPrinterSetup.SaveDeviceSettingsPrinterSetup.mmMarginBottom�	PrinterSetup.mmMarginLeft PrinterSetup.mmMarginRight PrinterSetup.mmMarginTop�	PrinterSetup.mmPaperHeight B PrinterSetup.mmPaperWidthP4 PrinterSetup.PaperSize Version14.04mmColumnWidthP4 DataPipelineNameDBPipeLineLink6 TppDetailBandppDetailBand14Background1.Brush.StylebsClearBackground2.Brush.StylebsClearmmBottomOffset mmHeight�mmPrintPosition  	TppDBText
ppDBText63UserNameDBText63	DataFieldITEMsDataPipelineDBPipeLineLink6Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size

Font.Style Transparent	DataPipelineNameDBPipeLineLink6mmHeight�mmLeft�mmTop	mmWidth,w BandType	LayerNameForeground12  	TppDBCalc	ppDBCalc3UserNameDBCalc3DataPipelineDBPipeLineLink5Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size

Font.StylefsBold ParentDataPipelineTransparent	
DBCalcTypedcCountDataPipelineNameDBPipeLineLink5mmHeight�mmLeft+mmTop� mmWidthpBandType	LayerNameForeground12   TppGroupppGroup9	BreakNamevnDataPipelineDBPipeLineLink6GroupFileSettings.NewFileGroupFileSettings.EmailFileOutlineSettings.CreateNode	StartOnOddPageUserNameGroup9mmNewColumnThreshold mmNewPageThreshold�DataPipelineNameDBPipeLineLink6NewFile TppGroupHeaderBandppGroupHeaderBand9Background.Brush.StylebsClearmmBottomOffset mmHeight�mmPrintPosition  TppLabel
ppLabel179UserNameLabel179AutoSizeCaption   2" 231  /   A"LAD"Font.CharsetDEFAULT_CHARSET
Font.Color  U 	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBoldfsUnderline Transparent	mmHeight�mmLeft+mmTopmmWidth�  BandTypeGroupNo 	LayerNameForeground12  TppLineppLine9UserNameLine9	Pen.Width Weight       ��?mmHeight"mmLeft mmTop mmWidth�� BandTypeGroupNo 	LayerNameForeground12   TppGroupFooterBandppGroupFooterBand9VisibleBackground.Brush.StylebsClearPrintHeight	phDynamicHideWhenOneDetailmmBottomOffset mmHeight mmPrintPosition    TraCodeModuleraCodeModule18ProgramStream
      TppDesignLayersppDesignLayers13 TppDesignLayerppDesignLayer13UserNameForeground12	LayerTypeltBanded     TppSubReportppSubReport14UserNameSubReport14	ExpandAllNewPrintJobOutlineSettings.CreateNode	ParentPrinterSetupParentWidthShiftRelativeToppSubReport4TraverseAllDataDataPipelineNameDBPipeLineLink4mmHeight�mmLeftFz mmTopYHmmWidthG� BandType	LayerName
ForegroundmmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  TppChildReportppChildReport14AutoStopColumnsColumnPositions.Strings03810076200114300 DataPipelineDBPipeLineLink4PrinterSetup.BinNameDefaultPrinterSetup.DocumentNameReportPrinterSetup.PaperNameCustomPrinterSetup.PrinterNameDefaultPrinterSetup.SaveDeviceSettingsPrinterSetup.mmMarginBottom�	PrinterSetup.mmMarginLeft PrinterSetup.mmMarginRight PrinterSetup.mmMarginTop�	PrinterSetup.mmPaperHeight B PrinterSetup.mmPaperWidthP4 PrinterSetup.PaperSize Version14.04mmColumnWidthԔ  DataPipelineNameDBPipeLineLink4 TppColumnHeaderBandppColumnHeaderBand2Background.Brush.StylebsClearmmBottomOffset mmHeight mmPrintPosition   TppDetailBandppDetailBand15Background1.Brush.StylebsClearBackground2.Brush.StylebsClearColumnBalancing	
PrintCount
PrintHeight	phDynamicmmBottomOffset mmHeight�mmPrintPosition  	TppDBText
ppDBText38UserNameDBText38	DataField	LabReportDataPipelineDBPipeLineLink4Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size

Font.Style Transparent	DataPipelineNameDBPipeLineLink4mmHeight�mmLeft4mmTop mmWidthd�  BandType	LayerNameForeground13   TppColumnFooterBandppColumnFooterBand2Background.Brush.StylebsClearmmBottomOffset mmHeight mmPrintPosition   TppGroupppGroup6	BreakNamevnDataPipelineDBPipeLineLink4GroupFileSettings.NewFileGroupFileSettings.EmailFileOutlineSettings.CreateNode	ReprintOnSubsequentColumnStartOnOddPageUserNameGroup6mmNewColumnThreshold mmNewPageThreshold DataPipelineNameDBPipeLineLink4NewFile TppGroupHeaderBandppGroupHeaderBand6Background.Brush.StylebsClearmmBottomOffset mmHeight�mmPrintPosition  TppLabel
ppLabel182UserNameLabel45AutoSizeCaption   #2"2#*1H  L A B Font.CharsetDEFAULT_CHARSET
Font.Color  U 	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBoldfsUnderline Transparent	mmHeight�mmLeft4mmTop mmWidth�rBandTypeGroupNo 	LayerNameForeground13  TppLine	ppLine115UserNameLine115	Pen.Width Weight       ��?mmHeight4mmLeft mmTop mmWidth�� BandTypeGroupNo 	LayerNameForeground13   TppGroupFooterBandppGroupFooterBand6Background.Brush.StylebsClearHideWhenOneDetailmmBottomOffset mmHeight mmPrintPosition    TppGroup	ppGroup11	BreakNamelab_order_numberDataPipelineDBPipeLineLink4GroupFileSettings.NewFileGroupFileSettings.EmailFileOutlineSettings.CreateNode	ReprintOnSubsequentPageStartOnOddPageUserNameGroup11mmNewColumnThreshold mmNewPageThreshold DataPipelineNameDBPipeLineLink4NewFile TppGroupHeaderBandppGroupHeaderBand11Background.Brush.StylebsClearmmBottomOffset mmHeight�mmPrintPosition  	TppDBText	ppDBText8UserNameDBText8	DataField	form_nameDataPipelineDBPipeLineLink4Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	DataPipelineNameDBPipeLineLink4mmHeight�mmLeft4mmTop mmWidth~�  BandTypeGroupNo	LayerNameForeground13   TppGroupFooterBandppGroupFooterBand11Background.Brush.StylebsClearHideWhenOneDetailmmBottomOffset mmHeight mmPrintPosition    TraCodeModuleraCodeModule11ProgramStream
�   TraEventHandlerProgramNameSubReport14OnPrintProgramTypettProcedureSource.procedure SubReport14OnPrint;
begin

end;
ComponentNameSubReport14	EventNameOnPrintEventID     TppDesignLayersppDesignLayers14 TppDesignLayerppDesignLayer14UserNameForeground13	LayerTypeltBanded     TppSubReportppSubReport15UserNameSubReport15	ExpandAllNewPrintJobOutlineSettings.CreateNode	ParentPrinterSetupParentWidthShiftRelativeToppSubReport14TraverseAllDataDataPipelineNameDBPipeLineLink5mmHeight�mmLeftFz mmTop�ZmmWidthG� BandType	LayerName
ForegroundmmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  TppChildReportppChildReport15AutoStopDataPipelineDBPipeLineLink5PrinterSetup.BinNameDefaultPrinterSetup.DocumentNameReportPrinterSetup.PaperNameCustomPrinterSetup.PrinterNameDefaultPrinterSetup.SaveDeviceSettingsPrinterSetup.mmMarginBottom�	PrinterSetup.mmMarginLeft PrinterSetup.mmMarginRight PrinterSetup.mmMarginTop�	PrinterSetup.mmPaperHeight B PrinterSetup.mmPaperWidthP4 PrinterSetup.PaperSize Version14.04mmColumnWidthP4 DataPipelineNameDBPipeLineLink5 TppDetailBandppDetailBand16Background1.Brush.StylebsClearBackground2.Brush.StylebsClearPrintHeight	phDynamicmmBottomOffset mmHeightF'mmPrintPosition  	TppRegion
ppRegion15UserNameRegion15KeepTogether	Brush.StylebsClearCaptionRegion15	Pen.StylepsClearStretch	Transparent	mmHeightF'mmLeftmmTop mmWidth� BandType	LayerNameForeground15mmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  	TppDBText
ppDBText66UserNameDBText66	DataFieldxray_items_nameDataPipelineDBPipeLineLink5Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size

Font.StylefsBold Transparent	DataPipelineNameDBPipeLineLink5mmHeight�mmLeft�mmTop mmWidth
s BandType	LayerNameForeground15  	TppDBCalc	ppDBCalc1UserNameDBCalc1DataPipelineDBPipeLineLink5Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	
DBCalcTypedcCountDataPipelineNameDBPipeLineLink5mmHeight�mmLeft<mmTopmmWidth�BandType	LayerNameForeground15  TppLabel
ppLabel184UserNameLabel184Caption	   ผล : Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size

Font.StylefsBold Transparent	mmHeight�mmLeft�mmTop^mmWidth�BandType	LayerNameForeground15  	TppDBMemo	ppDBMemo3UserNameDBMemo3CharWrap	DataField
XrayResultDataPipelineDBPipeLineLink5Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size

Font.Style Transparent	DataPipelineNameDBPipeLineLink5mmHeight�mmLeft5%mmTop^mmWidthxa BandType	LayerNameForeground15mmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight 	mmLeading     TppGroup	ppGroup12	BreakNamevnDataPipelineDBPipeLineLink5GroupFileSettings.NewFileGroupFileSettings.EmailFileOutlineSettings.CreateNode	StartOnOddPageUserNameGroup12mmNewColumnThreshold mmNewPageThreshold�DataPipelineNameDBPipeLineLink5NewFile TppGroupHeaderBandppGroupHeaderBand12Background.Brush.StylebsClearPrintHeight	phDynamicmmBottomOffset mmHeight�mmPrintPosition  TppLineppLine16UserNameLine16	Pen.Width Weight       ��?mmHeight+mmLeft mmTop mmWidth�� BandTypeGroupNo 	LayerNameForeground15  TppLabel
ppLabel181UserNameLabel181AutoSizeCaption   #2"2#*1H  x - r a y Font.CharsetDEFAULT_CHARSET
Font.Color  U 	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBoldfsUnderline Transparent	mmHeight�mmLeft+mmTop mmWidth_�  BandTypeGroupNo 	LayerNameForeground15   TppGroupFooterBandppGroupFooterBand12VisibleBackground.Brush.StylebsClearPrintHeight	phDynamicHideWhenOneDetailmmBottomOffset mmHeight mmPrintPosition    TraCodeModuleraCodeModule13ProgramStream
      TppDesignLayersppDesignLayers16 TppDesignLayerppDesignLayer16UserNameForeground15	LayerTypeltBanded     TppSubReportppSubReport16UserNameSubReport16	ExpandAllNewPrintJobOutlineSettings.CreateNode	ParentPrinterSetupParentWidthShiftRelativeToppSubReport15TraverseAllDataDataPipelineNameDBPipeLineLink3mmHeight�mmLeftFz mmTop�lmmWidthȨ BandType	LayerName
ForegroundmmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  TppChildReportppChildReport16AutoStopDataPipelineDBPipeLineLink3PrinterSetup.BinNameDefaultPrinterSetup.DocumentNameReportPrinterSetup.PaperNameCustomPrinterSetup.PrinterNameDefaultPrinterSetup.SaveDeviceSettingsPrinterSetup.mmMarginBottom�	PrinterSetup.mmMarginLeft PrinterSetup.mmMarginRight PrinterSetup.mmMarginTop�	PrinterSetup.mmPaperHeight B PrinterSetup.mmPaperWidthP4 PrinterSetup.PaperSize Version14.04mmColumnWidthP4 DataPipelineNameDBPipeLineLink3 TppDetailBandppDetailBand17Background1.Brush.StylebsClearBackground2.Brush.StylebsClearColumnTraversalctLeftToRightmmBottomOffset mmHeight�mmPrintPosition  	TppDBText
ppDBText67UserNameDBText67	DataFieldDrugNameDataPipelineDBPipeLineLink3Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size

Font.Style Transparent	DataPipelineNameDBPipeLineLink3mmHeight�mmLeft�mmTop mmWidth�% BandType	LayerNameForeground16  	TppDBText
ppDBText68UserNameDBText13	DataFieldShortListNameDataPipelineDBPipeLineLink3Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size

Font.Style Transparent	DataPipelineNameDBPipeLineLink3mmHeight�mmLeft�mmTopUmmWidthT> BandType	LayerNameForeground16  	TppDBCalc	ppDBCalc4UserNameDBCalc2	DataField	drug_nameDataPipelineDBPipeLineLink3Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size

Font.StylefsBold Transparent	
DBCalcTypedcCountDataPipelineNameDBPipeLineLink3mmHeight�mmLeft4mmTop mmWidthpBandType	LayerNameForeground16  	TppDBText
ppDBText75UserNameDBText75	DataField
doctornameDataPipelineDBPipeLineLink3Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size

Font.Style TextAlignmenttaRightJustifiedTransparent	DataPipelineNameDBPipeLineLink3mmHeight�mmLeft�0 mmTop mmWidth�VBandType	LayerNameForeground16   TppGroup	ppGroup13	BreakNamevnDataPipelineDBPipeLineLink3GroupFileSettings.NewFileGroupFileSettings.EmailFileOutlineSettings.CreateNode	StartOnOddPageUserNameGroup13mmNewColumnThreshold mmNewPageThreshold DataPipelineNameDBPipeLineLink3NewFile TppGroupHeaderBandppGroupHeaderBand13Background.Brush.StylebsClearmmBottomOffset mmHeight�mmPrintPosition  TppLineppLine17UserNameLine20	Pen.Width Weight       ��?mmHeight4mmLeft mmTop mmWidth�� BandTypeGroupNo 	LayerNameForeground16  TppLabel
ppLabel189UserNameLabel189AutoSizeCaption   #2"2#*1H"2Font.CharsetDEFAULT_CHARSET
Font.Color  U 	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBoldfsUnderline Transparent	mmHeight�mmLeft4mmTopmmWidthw�  BandTypeGroupNo 	LayerNameForeground16  TppLabel
ppLabel120UserNameLabel120Caption   9I*1HFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold Transparent	mmHeight�mmLeftU] mmTopmmWidth�BandTypeGroupNo 	LayerNameForeground16   TppGroupFooterBandppGroupFooterBand13VisibleBackground.Brush.StylebsClearPrintHeight	phDynamicHideWhenOneDetailmmBottomOffset mmHeight mmPrintPosition    TraCodeModuleraCodeModule19ProgramStream
�   
TraProgram	ChildTypeProgramNameGlobalOnCreateProgramTypettProcedureSource*procedure GlobalOnCreate;
begin

end;
    TppDesignLayersppDesignLayers17 TppDesignLayerppDesignLayer17UserNameForeground16	LayerTypeltBanded     TppLineppLine8UserNameLine8	Pen.Width ParentHeight	PositionlpRightReprintOnOverFlow	StretchWithParent	Weight       ��?mmHeight��  mmLeft�p mmTop mmWidthM	BandType	LayerName
Foreground  TppSubReportppSubReport4UserName
SubReport6	ExpandAllNewPrintJobOutlineSettings.CreateNode	ParentPrinterSetupParentWidthShiftRelativeToppSubReport13TraverseAllDataDataPipelineNameDBPipeLineLink8mmHeight�mmLeftFz mmTop�6mmWidthG� BandType	LayerName
ForegroundmmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  TppChildReportppChildReport4AutoStopDataPipelineDBPipeLineLink8PrinterSetup.BinNameDefaultPrinterSetup.DocumentNameReportPrinterSetup.PaperNameCustomPrinterSetup.PrinterNameDefaultPrinterSetup.SaveDeviceSettingsPrinterSetup.mmMarginBottom�	PrinterSetup.mmMarginLeft PrinterSetup.mmMarginRight PrinterSetup.mmMarginTop�	PrinterSetup.mmPaperHeight B PrinterSetup.mmPaperWidthP4 PrinterSetup.PaperSize Version14.04mmColumnWidthP4 DataPipelineNameDBPipeLineLink8 TppDetailBandppDetailBand4Background1.Brush.StylebsClearBackground2.Brush.StylebsClearmmBottomOffset mmHeight�mmPrintPosition  	TppDBCalc	ppDBCalc5UserNameDBCalc5DataPipelineDBPipeLineLink2Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size

Font.Style Transparent	
DBCalcTypedcCountDataPipelineNameDBPipeLineLink2mmHeight�mmLeft<mmTop mmWidthpBandType	LayerNameForeground4  	TppDBText	ppDBText7UserNameDBText7	DataFielddt_nameDataPipelineDBPipeLineLink8Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size

Font.Style Transparent	DataPipelineNameDBPipeLineLink8mmHeight�mmLeft�mmTop mmWidth�j BandType	LayerNameForeground4   TppGroupppGroup1	BreakNamevnDataPipelineDBPipeLineLink8GroupFileSettings.NewFileGroupFileSettings.EmailFileKeepTogether	OutlineSettings.CreateNode	StartOnOddPageUserNameGroup1mmNewColumnThreshold mmNewPageThreshold DataPipelineNameDBPipeLineLink8NewFile TppGroupHeaderBandppGroupHeaderBand1Background.Brush.StylebsClearmmBottomOffset mmHeight�mmPrintPosition  TppLabel	ppLabel33UserNameLabel33AutoSizeCaption   1##!Font.CharsetDEFAULT_CHARSET
Font.Color  U 	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBoldfsUnderline Transparent	mmHeight�mmLeft<mmTop mmWidthi�  BandTypeGroupNo 	LayerNameForeground4  TppLineppLine2UserNameLine2	Pen.Width Weight       ��?mmHeight4mmLeft mmTop mmWidth�� BandTypeGroupNo 	LayerNameForeground4   TppGroupFooterBandppGroupFooterBand1Background.Brush.StylebsClearHideWhenOneDetailmmBottomOffset mmHeight mmPrintPosition    TraCodeModuleraCodeModule3ProgramStream
      TppDesignLayersppDesignLayers5 TppDesignLayerppDesignLayer5UserNameForeground4	LayerTypeltBanded     TppVariableppVariable6UserName	Variable6BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.Color  U 	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight^mmLeft mmTop�[mmWidth�BandType	LayerName
Foreground   TppFooterBandppFooterBand1Background.Brush.StylebsClearmmBottomOffset mmHeight{LmmPrintPosition  	TppRegion
ppRegion33UserNameRegion33KeepTogether	Brush.StylebsClearCaptionRegion33	Pen.StylepsClearStretch	Transparent	mmHeight
 mmLeftz9 mmTop mmWidthi�  BandType	LayerName
ForegroundmmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  TppVariableppVariable10UserName
Variable10BlankWhenZero	CalcOrder Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	VisibleWordWrap	mmHeight�mmLeftz9 mmTopxmmWidth�"BandType	LayerName
Foreground  TppLabel	ppLabel34UserNameLabel1Caption   9I#'Font.CharsetDEFAULT_CHARSET
Font.ColorclNavy	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBoldfsUnderline Transparent	mmHeight�mmLeft�= mmTop	mmWidth BandType	LayerName
Foreground  TppVariableppVariable18UserName
Variable18BlankWhenZero	CalcOrder	Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeightgmmLeftk mmTopxmmWidthw�  BandType	LayerName
Foreground   TppLineppLine3UserNameLine3	Pen.Width PositionlpLeftWeight       ��?mmHeight>mmLeftk mmTop mmWidth<BandType	LayerName
Foreground  TppSubReportppSubReport17UserNameSubReport17	ExpandAllNewPrintJobOutlineSettings.CreateNode	ParentPrinterSetupParentWidthPrintBehaviorpbFixedTraverseAllDataDataPipelineNameppDBPipelinemmHeight�mmLeft�: mmTop
 mmWidth>�  BandType	LayerName
ForegroundmmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  TppChildReportppChildReport17AutoStopDataPipelineppDBPipelinePrinterSetup.BinNameDefaultPrinterSetup.DocumentNameReportPrinterSetup.PaperNameCustomPrinterSetup.PrinterNameDefaultPrinterSetup.SaveDeviceSettingsPrinterSetup.mmMarginBottom PrinterSetup.mmMarginLeft PrinterSetup.mmMarginRight PrinterSetup.mmMarginTop PrinterSetup.mmPaperHeightp�  PrinterSetup.mmPaperWidth>�  PrinterSetup.PaperSize Version14.04mmColumnWidth DataPipelineNameppDBPipeline TppTitleBandppTitleBand17Background.Brush.StylebsClearPrintHeight	phDynamicmmBottomOffset mmHeight
 mmPrintPosition  TppLabel
ppLabel212UserNameLabel212Caption   !9%H21I*4IFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size	
Font.Style Transparent	mmHeightmmLeft"mmTopmmWidth_%BandType	LayerNameForeground1  TppLabel
ppLabel203UserNameLabel203Caption   H2"2Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size	
Font.Style Transparent	mmHeightmmLeft"mmTop�mmWidth]BandType	LayerNameForeground1  TppLabel
ppLabel202UserNameLabel202CaptionUCFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size	
Font.Style Transparent	mmHeightmmLeft\�  mmTopmmWidth�
BandType	LayerNameForeground1  TppLabel
ppLabel204UserNameLabel204Caption   
1*9#Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size	
Font.Style Transparent	mmHeightmmLeft�vmmTop�mmWidthQBandType	LayerNameForeground1  TppLabel	ppLabel58UserNameLabel58Caption   2  Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size	
Font.Style Transparent	mmHeightmmLeft��  mmTopmmWidth3BandType	LayerNameForeground1  TppLabel	ppLabel60UserNameLabel60Caption   2  Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size	
Font.Style Transparent	mmHeightmmLeft`mmTopmmWidth3BandType	LayerNameForeground1  TppLabel	ppLabel61UserNameLabel61Caption   2Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeightmmLeft�^mmTop�mmWidth�BandType	LayerNameForeground1  TppLine	ppLine116UserNameLine116ParentWidth	Weight       ��?mmHeightmmLeft mmTop mmWidth>�  BandType	LayerNameForeground1  TppLine	ppLine122UserNameLine122ParentWidth	PositionlpBottomVisibleWeight       ��?mmHeightmmLeft mmTop�mmWidth>�  BandType	LayerNameForeground1  TppVariableppVariable17UserName
Variable17AutoSizeBlankWhenZero	CalcOrder DataTypedtDoubleDisplayFormat#,0;-#,0Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeightmmLeft�5mmTopmmWidth5%BandType	LayerNameForeground1  TppVariableppVariable22UserName
Variable22AutoSizeBlankWhenZero	CalcOrderDataTypedtDoubleDisplayFormat#,0;-#,0Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size	
Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeightmmLeft�5mmTop�mmWidth5%BandType	LayerNameForeground1  TppVariableppVariable26UserName
Variable26AutoSizeBlankWhenZero	CalcOrderDataTypedtDoubleDisplayFormat#,0;-#,0Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size	
Font.Style TextAlignment
taCenteredTransparent	mmHeightmmLeftԔ  mmTopmmWidth�BandType	LayerNameForeground1  TppVariableppVariable28UserName
Variable28AutoSizeBlankWhenZero	CalcOrderDataTypedtDoubleDisplayFormat#,0;-#,0Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size	
Font.Style TextAlignment
taCenteredTransparent	mmHeightmmLeftԔ  mmTop�mmWidth�BandType	LayerNameForeground1  TppLabel	ppLabel64UserNameLabel64Caption   2  Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size	
Font.Style Transparent	mmHeightmmLeft��  mmTop�mmWidth3BandType	LayerNameForeground1   TppDetailBandppDetailBand18Background1.Brush.StylebsClearBackground2.Brush.StylebsClearmmBottomOffset mmHeight mmPrintPosition   TraCodeModuleraCodeModule17ProgramStream
�  TraEventHandlerProgramNameVariable17OnCalcProgramTypettProcedureSource�procedure Variable17OnCalc(var Value: Variant);
begin

  Value := GetSQLDoubleData('select sum(sum_price) from opitemrece  where vn ="'+DBPipeline['vn']+'" ');

end;
ComponentName
Variable17	EventNameOnCalcEventID! TraEventHandlerProgramNameVariable22OnCalcProgramTypettProcedureSource�procedure Variable22OnCalc(var Value: Variant);
begin

  Value := GetSQLintegerData('select inc_drug from vn_stat  where vn ="'+DBPipeline['vn']+'" '); 

end;
ComponentName
Variable22	EventNameOnCalcEventID! TraEventHandlerProgramNameVariable26OnCalcProgramTypettProcedureSource�procedure Variable26OnCalc(var Value: Variant);
begin

  Value := GetSQLintegerData('select uc_money from vn_stat  where vn ="'+DBPipeline['vn']+'"');

end;
ComponentName
Variable26	EventNameOnCalcEventID! TraEventHandlerProgramNameVariable28OnCalcProgramTypettProcedureSource�procedure Variable28OnCalc(var Value: Variant);
begin

   Value := GetSQLintegerData('select inc01+inc03 as lab from vn_stat  where vn ="'+DBPipeline['vn']+'" ');

end;
ComponentName
Variable28	EventNameOnCalcEventID!    TppDesignLayersppDesignLayers2 TppDesignLayerppDesignLayer2UserNameForeground1	LayerTypeltBanded     TppLineppLine5UserNameLine5	Pen.Width PositionlpRightWeight       ��?mmHeight>mmLeft>2 mmTop mmWidth<BandType	LayerName
Foreground  TppVariableppVariable37UserName
Variable37BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowText	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft��  mmTop>mmWidth�"BandType	LayerName
Foreground  TppLineppLine6UserNameLine6Weight       ��?mmHeight+mmLeft�mmTop mmWidth�� BandType	LayerName
Foreground  TppLabel	ppLabel94UserNameLabel94Caption=   ชื่อแบบฟอร์ม : XE-FORM-DOCTOR-OPDCARDFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�mmTop>mmWidth�  BandType	LayerName
Foreground  TppLineppLine13UserNameLine13PositionlpBottomWeight       ��?mmHeight+mmLeft�mmTop�:mmWidth�� BandType	LayerName
Foreground  	TppRegion	ppRegion7UserNameRegion7Brush.StylebsClearCaptionRegion7	Pen.ColorclWindow	Pen.StylepsClearStretch	Transparent	mmHeight@mmLeft�mmTop mmWidth��  BandType	LayerName
ForegroundmmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight  TppMemoppMemo3UserNameMemo3CaptionMemo3CharWrapFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size	
Font.Style Lines.Strings  Transparent	mmHeight�.mmLeft�mmTopxmmWidth��  BandType	LayerName
ForegroundmmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight 	mmLeading   TppVariableppVariable23UserName
Variable23BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclNavy	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBoldfsUnderline Transparent	mmHeightpmmLeft$�  mmTop mmWidth5%BandType	LayerName
Foreground  TppLabel	ppLabel59UserNameLabel59Caption   3A03Font.CharsetDEFAULT_CHARSET
Font.Color  U 	Font.NameTH SarabunPSK	Font.Size	
Font.StylefsBoldfsUnderline Transparent	mmHeightmmLeft�mmTop mmWidth�!BandType	LayerName
Foreground   TppLabel	ppLabel65UserNameLabel65Caption   I-!9%1  :   Font.CharsetDEFAULT_CHARSET
Font.ColorclNavy	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBoldfsUnderline Transparent	mmHeight�mmLefts mmTop	mmWidth"BandType	LayerName
Foreground  TppVariableppVariable30UserName
Variable30BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft| mmTopxmmWidth�"BandType	LayerName
Foreground  TppVariableppVariable32UserName
Variable32AutoSizeBlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.StylefsBold TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeft�p mmTop	mmWidthh�  BandType	LayerName
Foreground  TppVariableppVariable33UserName
Variable33BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft�� mmTopgmmWidth�"BandType	LayerName
Foreground  TppVariableppVariable34UserName
Variable34BlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclRed	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	VisiblemmHeight�mmLefte@ mmTopmmWidth�"BandType	LayerName
Foreground  TppVariableppVariable56UserName
Variable56AutoSizeBlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft| mmTop�1mmWidth�0 BandType	LayerName
Foreground  TppSystemVariableppSystemVariable2UserNameSystemVariable2VarType
vtDateTimeDisplayFormatH   ( วันที่สั่งพิมพ์ : dd/mm/eeee  hh:nn:ss )Font.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style TextAlignmenttaRightJustifiedTransparent	mmHeight�mmLeftw� mmTop?mmWidth8xBandType	LayerName
Foreground  TppMemoppMemo2UserNameMemo2CaptionMemo2CharWrapFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Lines.Strings   นัด Lab: - Transparent	mmHeight�mmLeft| mmTop�mmWidth�0 BandType	LayerName
ForegroundmmBottomOffset mmOverFlowOffset mmStopPosition mmMinHeight 	mmLeading   TppVariableppVariable55UserName
Variable55AutoSizeBlankWhenZero	CalcOrderFont.CharsetDEFAULT_CHARSET
Font.ColorclBlack	Font.NameTH SarabunPSK	Font.Size
Font.Style Transparent	mmHeight�mmLeft"W mmTopmmWidth�BandType	LayerName
Foreground  TppVariableppVariable31UserName
Variable31BlankWhenZero	CalcOrder
Font.CharsetDEFAULT_CHARSET
Font.ColorclRed	Font.NameTH SarabunPSK	Font.Size	
Font.Style Transparent	VisiblemmHeightxmmLeftz9 mmTop?mmWidthF'BandType	LayerName
Foreground   TppSummaryBandppSummaryBand2Background.Brush.StylebsClearPrintHeight	phDynamicmmBottomOffset mmHeightmmPrintPosition   TraCodeModuleraCodeModule8ProgramStream
��  TraVarProgram	ChildTypeProgramName	VariablesProgramTypettProcedureSourcef  procedure Variables;
var

   permit_user1,permit_user2,aaa : string;
   pe_img1,pe_img2,pe_img3,pe_img4,pe_img5 : string;
   pe_img6,pe_img7,pe_img8,pe_img9,pe_img10 : string;
   eye_img1,eye_scr1,eye_scr2 : string;
   av : string;
   av1, av2, av3, av4, av5, av6, av7 : integer;
   LabApp ,XrApp: string;
   z1,a1 : string;

 

begin

end;
 
TraProgram	ChildTypeProgramNameGlobalOnCreateProgramTypettProcedureSource�6  procedure GlobalOnCreate;
var cds:tclientdataset;
begin
    //permit_user1 := '"admin","test4"';
    //permit_user2 := GetSQLSubQueryData('select loginname from opduser '+
    //'where groupname in ("admin","แพทย์","พยาบาล","เวชระเบียน","นักวิชาการคอมพิวเตอร์","ประกันสุขภาพ") ');

 {----ดึงรูปจาก Image SERVER   
   cds:=tclientdataset.create(nil);
   cds.HOSxP_GetDataset_ImageServer('select image from patient_image  where hn="'+DBPipeline['hn']+'"  ');
   cds.AssignDataToPipeLineLink9;
   cds.free; 
}     
                  
     ChangeDBPipeLineLink1SQL('select o.icd10,o.vn , concat(": [ " ,if(o.diagtype=1,"PDX ] " , concat("   ",o.diagtype ,"   ] ")),i1.name) as Dxname '+
                              ' from ovstdiag o   '+
                              ' inner join icd101 i1 on i1.code = o.icd10   '+
                              ' where o.vn = "'+DBPipeline['vn']+'" '+
                              ' order by o.diagtype,o.icd10'); 
                              
     ChangeDBPipeLineLink2SQL('select op.vn, oc.name ,op.icd9 ,d.name  ,op.depcode  ,k.department  ,  '+
     'concat("[",k.department ,"]   ", oc.name, "   # ",d.name) as OperNameDetail   '+
     'from doctor_operation  op                                                '+
     'inner join er_oper_code oc on oc.er_oper_code =op.er_oper_code          '+
     'inner join doctor d on d.code= op.doctor                               '+
     'left  join kskdepartment k on k.depcode=op.depcode                     '+
     'where op.vn = "'+DBPipeline['vn']+'"   '+
     'order by  op.depcode');
     
    ChangeDBPipeLineLink3SQL('select o.vn,concat(if(s.name<>"",s.name ,"-"),"  ", if(d.strength is null,"",s.strength),"  #  " ,if(o.qty is null,"",o.qty),"  ",if(s.units is null,"  ",s.units)," # ",   '+
     'if(o.sum_price is null,"",substring(o.sum_price,1,length(o.sum_price)-4))," บาท" ) AS DrugName,    '+
     'if((du.shortlist is null or du.shortlist = "" or du.name1 = "ใช้ตามแพทย์สั่ง"),concat(">",du.shortlist),du.shortlist) as ShortListName,du.shortlist  ,  '+
     'o.doctor,dt.name as DoctorName,dt.licenseno ,o.drugusage   '+
     'from opitemrece o                                          '+
     'left outer join drugitems d on d.icode = o.icode           '+
     'left outer join s_drugitems s on s.icode= o.icode          '+
     'left outer join drugusage du on du.drugusage = o.drugusage '+
     'left outer join doctor dt on dt.code = o.doctor            '+
     'where o.vn = "'+DBPipeline['vn']+'"                        '+
     'order by o.doctor,o.item_no'); 

     
ChangeDBPipeLineLink4SQL('select h.order_date,h.order_department,h.report_date,h.lab_order_number,h.hn, '+
     'h.vn,o.lab_items_name_ref,h.form_name,o.lab_order_result,i.lab_items_unit,  '+
     'i.lab_items_normal_value,o.lab_items_sub_group_code,s.lab_items_sub_group_name ,  '+
     'concat(if(o.lab_items_name_ref is null,"",o.lab_items_name_ref)  ," = " , '+
     'if((o.lab_order_result = "" or o.lab_order_result is null),"รอผล",o.lab_order_result)," ",  '+
     'if(i.lab_items_unit is null,"",i.lab_items_unit)) as LabReport '+
     'from lab_head h  '+
     'left join lab_order o ON o.lab_order_number = h.lab_order_number  '+
     'left join lab_items i ON i.lab_items_code = o.lab_items_code '+
     'left join lab_items_sub_group s on s.lab_items_sub_group_code = o.lab_items_sub_group_code '+
     'where h.vn= "'+DBPipeline['vn']+'" ');     

     
 ChangeDBPipeLineLink5SQL('select it.xray_items_name , report_rtf ,if((xr.report_text="" or xr.report_text is  null),"รอผล",xr.report_text) AS XrayResult    '+
     'from xray_report xr         '+
     'inner join xray_items it on it.xray_items_code=xr.xray_items_code    '+
     'where xr.vn ="'+DBPipeline['vn']+'"  order by xr.request_date ,xr.request_time  ');    
       
     
     ChangeDBPipeLineLink6SQL('select concat("[แผนไทย ]",ot.health_med_operation_item_name, if(ho.health_med_organ_name<>"",concat("  [ ",ho.health_med_organ_name," ]"),"") ,"  #",hp.health_med_provider_full_name) AS ITEMs , hs.vn   '+
     'from health_med_service  hs   '+
     'left join health_med_service_operation so on so.health_med_service_id=hs.health_med_service_id   '+
     'left join health_med_operation_item  ot on ot.health_med_operation_item_id =so.health_med_operation_item_id     '+
     'left join health_med_organ ho on ho.health_med_organ_id=so.health_med_organ_id           '+
     'left join health_med_provider hp on hp.health_med_provider_id=so.health_med_provider_id  '+
     'where hs.vn ="'+DBPipeline['vn']+'"   '+
     'union  '+
     'select concat("[กายภาพ ]" ,pi.name ,"  # ",d.name)  AS ITEMs ,pd.vn  '+
     'from physic_plan_detail pd    '+
     'inner join physic_items pi on pi.physic_items_id =pd.physic_items_id   '+
     'left  join physic_plan_doctor pp  on pp.physic_plan_detail_id=pd.physic_plan_detail_id  '+
     'left  join doctor d on d.code= pp.physic_plan_doctor_code  '+
     'where pd.vn="'+DBPipeline['vn']+'"  and pp.physic_doctor_position_id=1 order by  ITEMs');
     
ChangeDBPipeLineLink7SQL('select vn, image_data, doctor,thumbnail_image_data from pe_xe_image  where vn="'+DBPipeline['vn']+'"');     

  ChangeDBPipeLineLink8SQL('select dt.vn,dt.tmcode,dt.doctor, '+
     ' concat(if(d1.name is null," - ",d1.name),"  ซี่ฟัน ",dt.ttcode,"  #",d.name) as dt_name '+
     ' from dtmain dt  '+
     ' left outer join dttm d1 on d1.code = dt.tmcode '+
     ' left outer join doctor d on d.code = dt.doctor '+
     ' where vn = "'+DBPipeline['vn']+'" ');
  
   ChangeDBPipeLineLink9SQL('select image_name,image from patient_image  where hn="'+DBPipeline['hn']+'"');      
     
     ChangeDBPipeLineLink10SQL('select o1.screen_date, o1.screen_time, o1.bps, o1.bpd ,fc.officer_name,k.department '+
'from opdscreen_bp o1 '+
'left outer join officer fc      on fc.officer_login_name  = o1.staff  '+
'left outer join kskdepartment k on k.depcode = o1.depcode  '+
'where o1.vn ="'+DBPipeline['vn']+'" order by o1.screen_time'); 

  {
     if (GetSQLStringData('select r01 from eye_screen where vn = "'+DBPipeline['vn']+'" ') = '') and
     (GetSQLStringData('select r02 from eye_screen where vn = "'+DBPipeline['vn']+'" ') = '') and
     (GetSQLStringData('select r03 from eye_screen where vn = "'+DBPipeline['vn']+'" ') = '') and
     (GetSQLStringData('select r04 from eye_screen where vn = "'+DBPipeline['vn']+'" ') = '') and
     (GetSQLStringData('select r05 from eye_screen where vn = "'+DBPipeline['vn']+'" ') = '') and
     (GetSQLStringData('select l01 from eye_screen where vn = "'+DBPipeline['vn']+'" ') = '') and
     (GetSQLStringData('select l02 from eye_screen where vn = "'+DBPipeline['vn']+'" ') = '') and
     (GetSQLStringData('select l03 from eye_screen where vn = "'+DBPipeline['vn']+'" ') = '') and
     (GetSQLStringData('select l04 from eye_screen where vn = "'+DBPipeline['vn']+'" ') = '') and
     (GetSQLStringData('select l05 from eye_screen where vn = "'+DBPipeline['vn']+'" ') = '') and
     (GetSQLStringData('select rph from eye_screen where vn = "'+DBPipeline['vn']+'" ') = '') and
     (GetSQLStringData('select ph_r1 from eye_screen where vn = "'+DBPipeline['vn']+'" ') = '') and
     (GetSQLStringData('select ph_r2 from eye_screen where vn = "'+DBPipeline['vn']+'" ') = '') and
     (GetSQLStringData('select ph_r3 from eye_screen where vn = "'+DBPipeline['vn']+'" ') = '') and
     (GetSQLStringData('select ph_r4 from eye_screen where vn = "'+DBPipeline['vn']+'" ') = '') and
     (GetSQLStringData('select lph from eye_screen where vn = "'+DBPipeline['vn']+'" ') = '') and
     (GetSQLStringData('select ph_l1 from eye_screen where vn = "'+DBPipeline['vn']+'" ') = '') and
     (GetSQLStringData('select ph_l2 from eye_screen where vn = "'+DBPipeline['vn']+'" ') = '') and
     (GetSQLStringData('select ph_l3 from eye_screen where vn = "'+DBPipeline['vn']+'" ') = '') and
     (GetSQLStringData('select ph_l4 from eye_screen where vn = "'+DBPipeline['vn']+'" ') = '') then
     eye_scr1 := 'N'
     else
     eye_scr1 := 'Y';
     
     if (GetSQLStringData('select rct from eye_screen where vn = "'+DBPipeline['vn']+'" ') = '') and
     (GetSQLStringData('select lct from eye_screen where vn = "'+DBPipeline['vn']+'" ') = '') and
     (GetSQLStringData('select sch_rct from eye_screen where vn = "'+DBPipeline['vn']+'" ') = '') and
     (GetSQLStringData('select sch_lct from eye_screen where vn = "'+DBPipeline['vn']+'" ') = '') then
     eye_scr2 := 'N'
     else
     eye_scr2 := 'Y';
     
     if GetSQLStringData('select image_data1 from eye_screen where vn = "'+DBPipeline['vn']+'" ') = '' then
     eye_img1 := 'N'
     else
     eye_img1 := 'Y';
     

     
   
     ChangeDBPipeLineLink1SQL('select o.vn,if(o.icd10 is null," - ",o.icd10) as icd10,o.diagtype, '+
     'trim(concat(if(i3.name is null,"",i3.name),"   ",if(i2.name is null,"",i2.name),"   ",if(i1.name is null,"",i1.name)," ( PDx )")) as dxname1, '+
     'trim(concat(if(i3.name is null,"",i3.name),"   ",if(i2.name is null,"",i2.name),"   ",if(i1.name is null,"",i1.name)," ( ", '+
     'if(o.diagtype is null,"",o.diagtype)," )")) as dxname2 '+
     'from ovstdiag o '+
     'left outer join icd101 i1 on i1.code = o.icd10 '+
     'left outer join icd101 i2 on i2.code = substring(i1.code,1,4) and Length(i1.code) > "4" '+
     'left outer join icd101 i3 on i3.code = substring(i1.code,1,3) and Length(i1.code) > "4" '+
     'and substring(i1.code,1,1) in ("V","W","X","Y") '+
     'where o.vn = "'+DBPipeline['vn']+'" '+
     'and (o.icd10 between "A" and "Z9999") '+
     'order by o.diagtype,o.icd10 ');
     }


    {
     ChangeDBPipeLineLink3SQL('select o.vn,concat(if((s.name is null or s.name = ""),"-",s.name),"  ", '+
     'if(d.strength is null,"",s.strength),"  #  ",if(o.qty is null,"",o.qty),"  ",if(s.units is null,"  ",s.units)," # ", '+
     'if(o.sum_price is null,"",substring(o.sum_price,1,length(o.sum_price)-4))," บาท" ) '+
     ' as drug_name, '+
     'concat(if((du.shortlist is null or du.shortlist = "" or du.shortlist = "*(  ใช้ตามแพทย์สั่ง***)") '+
     ',">",du.shortlist),if((su.name1 is null or su.name1 = ""),"",su.name1),if((su.name2 is null or '+
     'su.name2 = ""),"",su.name2),if((su.name3 is null or su.name3 = ""),"",su.name3)) as shortlist, '+
     'o.doctor,dt.name as doctorname, '+
     'dt.licenseno '+
     'from opitemrece o '+
     'left outer join drugitems d on d.icode = o.icode '+
     'left outer join s_drugitems s on s.icode= o.icode '+
     'left outer join drugusage du on du.drugusage = o.drugusage '+
     'left outer join sp_use su on su.sp_use = o.sp_use '+
     'left outer join doctor dt on dt.code = o.doctor '+
     'where o.vn = "'+DBPipeline['vn']+'" '+
     'order by o.item_no ');
     

     ChangeDBPipeLineLink4SQL('select vn,lab_order_number from lab_head '+
     'where vn = "'+DBPipeline['vn']+'" order by lab_order_number ');

     ChangeDBPipeLineLink5SQL('select  concat(if((x2.xray_items_name is null '+
     'or x2.xray_items_name = "")," -- ",x2.xray_items_name)," # ", '+
     'if((x3.name is null or x3.name = "")," -- ",x3.name)," # ", '+
     'if((x4.name is null or x4.name = "")," -- ",x4.name),"   ") as xrayname,x1.* '+
     'from xray_report x1 '+
     'left outer join xray_items x2 on x2.xray_items_code = x1.xray_items_code '+
     'left outer join xray_type x3 on x3.xray_type = x1.xray_type '+
     'left outer join xray_side x4 on x4.xray_side = x1.xray_side '+
     'where vn = "'+DBPipeline['vn']+'" ');

     
      ChangeDBPipeLineLink7SQL('select concat("(",lsg.lab_items_sub_group_name,")") as group_name, '+
     'lh.vn,lh.lab_order_number,lh.form_name,lo.lab_items_name_ref,lo.lab_order_result,li.lab_items_unit, '+
     'concat(if(lo.lab_items_name_ref is null,"",lo.lab_items_name_ref),"  =  ", '+
     'if((lo.lab_order_result = "" or lo.lab_order_result is null),"รอผล",lo.lab_order_result)," ", '+
     'if(li.lab_items_unit is null,"",li.lab_items_unit)) as lab_report '+
     'from lab_head lh '+
     'left outer join lab_order lo on lo.lab_order_number = lh.lab_order_number '+
     'left outer join lab_items li on li.lab_items_code = lo.lab_items_code '+
     'left outer join lab_items_sub_group lsg on lsg.lab_items_sub_group_code = lo.lab_items_sub_group_code '+
     'limit 0 ');
     
 {    
     ChangeDBPipeLineLink9SQL('select avt.opdscreen_advice_item_name ,av.opdscreen_advice_item_id ,av.staff ,av.vn ,av.advice_note  '+
' from opdscreen_advice  av   '+
' INNER JOIN opdscreen_advice_item avt  ON avt.opdscreen_advice_item_id=av.opdscreen_advice_item_id   '+
' where av.vn ="'+DBPipeline['vn']+'"');
}
     
     
     
   {  ChangeDBPipeLineLink8SQL('select * from oapp where vn = "'+DBPipeline['vn']+'" order by nextdate ');   }
   {  
     ChangeDBPipeLineLink9SQL('select concat(if(h.hosptype is null ,"",h.hosptype), '+
     'if(h.name is null,"",h.name)) as refer_hospname,r.* from referout r '+
     'left outer join hospcode h on h.hospcode = r.hospcode '+
     'where r.vn = "'+DBPipeline['vn']+'" ');
     }
    { 
     ChangeDBPipeLineLink10SQL('select o1.screen_date, o1.screen_time, o1.bps, o1.bpd ,k.department '+
                              'from opdscreen_bp o1 '+
                              'left outer join opduser o2 on o2.loginname = o1.staff '+
                              'left outer join kskdepartment k on k.depcode = o1.depcode '+
                              'where o1.vn = "'+DBPipeline['vn']+'" order by o1.screen_date,o1.screen_time');
                              
     }
                  
        
end;
 TraEventHandlerProgramNameVariable1OnCalcProgramTypettProcedureSource�  procedure Variable1OnCalc(var Value: Variant);
begin

 Value:=DBPipeline['cid'];
 {
if  DBPipeline['nationality'] = '99'    then
    Value := GetSQLStringData('select cardno from ptcardno  '+
             'where hn = "'+DBPipeline['hn']+'" and cardtype = "01" ');


if  DBPipeline['nationality'] <> '99'    then
    Value := GetSQLStringData('select cardno from ptcardno  '+
             'where hn = "'+DBPipeline['hn']+'" and cardtype = "02" ');
             }

end;
ComponentName	Variable1	EventNameOnCalcEventID! TraEventHandlerProgramNameVariable4OnCalcProgramTypettProcedureSource.  procedure Variable4OnCalc(var Value: Variant);
begin

  Value := 'สถานพยาบาลหลัก :  ' +GetSQLStringData('select concat(if(h.hosptype,"",h.hosptype), if(h.name,"",h.name)) as cc from hospcode h '+
           'where h.hospcode="'+DBPipeline['hospmain']+'"  ');


end;
ComponentName	Variable4	EventNameOnCalcEventID! TraEventHandlerProgramNameVariable10OnCalcProgramTypettProcedureSource@  procedure Variable10OnCalc(var Value: Variant);
begin

  
  Value := ReplaceStr(GetSQLSubQuerydata('select d.name '+
  ' from opitemrece o ,doctor d '+
  ' where o.doctor = d.code '+
  ' and o.vn = "'+ DBPipeline['vn']+'" '+
  ' group by o.doctor '+
  ' order by o.rxdate,o.rxtime limit 3'),'''',' ');

end;
ComponentName
Variable10	EventNameOnCalcEventID! TraEventHandlerProgramNameVariable19OnCalcProgramTypettProcedureSource
  procedure Variable19OnCalc(var Value: Variant);
begin

 Value:=  GetPatientAddress(DBPipeline['hn'])+
  GetSQLStringData('select concat("   โทร. ",if((hometel is null or hometel = ""), if(mobile_phone_number="", " - ",mobile_phone_number),hometel)) AS Phone '+
  ' from patient where hn = "'+DBPipeline['HN']+'" ');
  
 {
  if GetSQLStringData('select chwpart from patient where hn = "'+DBPipeline['HN']+'" ') = '10'

  then

  Value := GetSQLStringData('select addrpart from patient where hn = "'+DBPipeline['HN']+'" ')+
  GetSQLStringData('select concat("  ",if((road = ""),null,road)) from patient '+
  'where hn = "'+DBPipeline['HN']+'" ')+
  GetSQLStringData('select concat("  ม.",if((moopart = ""),null,moopart)) from patient '+
  'where hn = "'+DBPipeline['HN']+'" ')+
  GetSQLStringData('select concat("  แขวง",t3.name,"  ",t2.name,"  ",t1.name) from patient p '+
  'left outer join thaiaddress t1 on t1.chwpart = p.chwpart and t1.codetype = "1" '+
  'left outer join thaiaddress t2 on t2.chwpart = p.chwpart and t2.amppart = p.amppart '+
  'and t2.codetype = "2" '+
  'left outer join thaiaddress t3 on t3.chwpart = p.chwpart and t3.amppart = p.amppart '+
  'and t3.tmbpart = p.tmbpart and t3.codetype = "3" '+
  'where p.hn = "'+DBPipeline['HN']+'" ')+
  GetSQLStringData('select concat("    โทร. ",if((hometel is null or hometel = ""), '+
  ' " - ",hometel)) from patient where hn = "'+DBPipeline['HN']+'" ')
  
  else
  
    Value := GetSQLStringData('select addrpart from patient where hn = "'+DBPipeline['HN']+'" ')+
  GetSQLStringData('select concat("  ",if((road = ""),null,road)) from patient '+
  'where hn = "'+DBPipeline['HN']+'" ')+
  GetSQLStringData('select concat("  ม.",if((moopart = ""),null,moopart)) from patient '+
  'where hn = "'+DBPipeline['HN']+'" ')+
  GetSQLStringData('select concat("  ต.",t3.name,"  อ.",t2.name,"  จ.",t1.name) from patient p '+
  'left outer join thaiaddress t1 on t1.chwpart = p.chwpart and t1.codetype = "1" '+
  'left outer join thaiaddress t2 on t2.chwpart = p.chwpart and t2.amppart = p.amppart '+
  'and t2.codetype = "2" '+
  'left outer join thaiaddress t3 on t3.chwpart = p.chwpart and t3.amppart = p.amppart '+
  'and t3.tmbpart = p.tmbpart and t3.codetype = "3" '+
  'where p.hn = "'+DBPipeline['HN']+'" ')+
  GetSQLStringData('select concat("    โทร. ",if((hometel is null or hometel = ""), '+
  ' "ไม่ทราบหมายเลขโทรศัพท์",hometel)) from patient where hn = "'+DBPipeline['HN']+'" ');       }

end;
ComponentName
Variable19	EventNameOnCalcEventID! TraEventHandlerProgramNameVariable3OnCalcProgramTypettProcedureSource�procedure Variable3OnCalc(var Value: Variant);
begin

   if  DBPipeline['ObsSymptom'] <>'' then
   begin
     SubReport3.visible := true ;
   end else
   begin
     SubReport3.visible := false ;
   end;



end;
ComponentName	Variable3	EventNameOnCalcEventID! TraEventHandlerProgramNameVariable12OnCalcProgramTypettProcedureSource�  procedure Variable12OnCalc(var Value: Variant);
begin

 { Value := 'ประวัติการแพ้ยา : '+GetSQLStringData('select if(drugallergy is null or drugallergy = "","      -      "  '+
  ',drugallergy) as cc from patient where hn = "'+DBPipeline['hn']+'" ');     }
  
 {
if(GetSQLSubQueryData('select concat(agent,"=",symptom) as name from opd_allergy where hn="'+ DBPipeline['hn']+'" order by display_order ')='""') then
begin
    Value := ' การแพ้ยา : ปฏิเสธการแพ้ยา';
end
else
Value := GetSQLSubQueryData('select concat(agent,"=",symptom) as name from opd_allergy where hn="'+ DBPipeline['hn']+'" order by display_order ');
end ;
}



end;
ComponentName
Variable12	EventNameOnCalcEventID! TraEventHandlerProgramNameDetailBeforeGenerateProgramTypettProcedureSource�  procedure DetailBeforeGenerate;
begin
                  
                   
     ChangeDBPipeLineLink1SQL('select o.icd10,o.vn , concat(": [ " ,if(o.diagtype=1,"PDX ] " , concat("   ",o.diagtype ,"   ] ")),i1.name) as Dxname '+
                              ' from ovstdiag o   '+
                              ' inner join icd101 i1 on i1.code = o.icd10   '+
                              ' where o.vn = "'+DBPipeline['vn']+'" '+
                              ' order by o.diagtype,o.icd10'); 
                              
     ChangeDBPipeLineLink2SQL('select op.vn, oc.name ,op.icd9 ,d.name  ,op.depcode  ,k.department  ,  '+
     'concat("[",k.department ,"]   ", oc.name, "  # ",d.name) as OperNameDetail   '+
     'from doctor_operation  op                                                '+
     'inner join er_oper_code oc on oc.er_oper_code =op.er_oper_code          '+
     'inner join doctor d on d.code= op.doctor                               '+
     'left  join kskdepartment k on k.depcode=op.depcode                     '+
     'where op.vn = "'+DBPipeline['vn']+'"   '+
     'order by  op.depcode');
     
    ChangeDBPipeLineLink3SQL('select o.vn,concat(if(s.name<>"",s.name ,"-"),"  ", if(d.strength is null,"",s.strength),"  #  " ,if(o.qty is null,"",o.qty),"  ",if(s.units is null,"  ",s.units)," # ",   '+
     'if(o.sum_price is null,"",substring(o.sum_price,1,length(o.sum_price)-4))," บาท" ) AS DrugName,    '+
     'if((du.shortlist is null or du.shortlist = "" or du.name1 = "ใช้ตามแพทย์สั่ง"),concat(">",du.shortlist),du.shortlist) as ShortListName,du.shortlist  ,  '+
     'o.doctor,dt.name as DoctorName,dt.licenseno ,o.drugusage   '+
     'from opitemrece o                                          '+
     'left outer join drugitems d on d.icode = o.icode           '+
     'left outer join s_drugitems s on s.icode= o.icode          '+
     'left outer join drugusage du on du.drugusage = o.drugusage '+
     'left outer join doctor dt on dt.code = o.doctor            '+
     'where o.vn = "'+DBPipeline['vn']+'"                        '+
     'order by o.doctor,o.item_no'); 

     
ChangeDBPipeLineLink4SQL('select h.order_date,h.order_department,h.report_date,h.lab_order_number,h.hn, '+
     'h.vn,o.lab_items_name_ref,h.form_name,o.lab_order_result,i.lab_items_unit,  '+
     'i.lab_items_normal_value,o.lab_items_sub_group_code,s.lab_items_sub_group_name ,  '+
     'concat(if(o.lab_items_name_ref is null,"",o.lab_items_name_ref)  ," = " , '+
     'if((o.lab_order_result = "" or o.lab_order_result is null),"รอผล",o.lab_order_result)," ",  '+
     'if(i.lab_items_unit is null,"",i.lab_items_unit)) as LabReport '+
     'from lab_head h  '+
     'left join lab_order o ON o.lab_order_number = h.lab_order_number  '+
     'left join lab_items i ON i.lab_items_code = o.lab_items_code '+
     'left join lab_items_sub_group s on s.lab_items_sub_group_code = o.lab_items_sub_group_code '+
     'where h.vn= "'+DBPipeline['vn']+'"  '+
     'order by h.lab_order_number ,h.form_name  ,o.lab_items_sub_group_code,o.lab_items_name_ref');     

     
 ChangeDBPipeLineLink5SQL('select it.xray_items_name , report_rtf ,if((xr.report_text="" or xr.report_text is  null),"รอผล",xr.report_text) AS XrayResult    '+
     'from xray_report xr         '+
     'inner join xray_items it on it.xray_items_code=xr.xray_items_code    '+
     'where xr.vn ="'+DBPipeline['vn']+'"  order by xr.request_date ,xr.request_time  ');    
       
     
     ChangeDBPipeLineLink6SQL('select concat("[แผนไทย ]",ot.health_med_operation_item_name, if(ho.health_med_organ_name<>"",concat("  [ ",ho.health_med_organ_name," ]"),"") ,"  #",hp.health_med_provider_full_name) AS ITEMs , hs.vn   '+
     'from health_med_service  hs   '+
     'left join health_med_service_operation so on so.health_med_service_id=hs.health_med_service_id   '+
     'left join health_med_operation_item  ot on ot.health_med_operation_item_id =so.health_med_operation_item_id     '+
     'left join health_med_organ ho on ho.health_med_organ_id=so.health_med_organ_id           '+
     'left join health_med_provider hp on hp.health_med_provider_id=so.health_med_provider_id  '+
     'where hs.vn ="'+DBPipeline['vn']+'"   '+
     'union  '+
     'select concat("[กายภาพ ]" ,pi.name ,"  # ",d.name)  AS ITEMs ,pd.vn  '+
     'from physic_plan_detail pd    '+
     'inner join physic_items pi on pi.physic_items_id =pd.physic_items_id   '+
     'left  join physic_plan_doctor pp  on pp.physic_plan_detail_id=pd.physic_plan_detail_id  '+
     'left  join doctor d on d.code= pp.physic_plan_doctor_code  '+
     'where pd.vn="'+DBPipeline['vn']+'"  and pp.physic_doctor_position_id=1 order by  ITEMs');
     
ChangeDBPipeLineLink7SQL('select vn, image_data, doctor,thumbnail_image_data from pe_xe_image  where vn="'+DBPipeline['vn']+'"');     
     
   
     
     ChangeDBPipeLineLink10SQL('select o1.screen_date, o1.screen_time, o1.bps, o1.bpd ,fc.officer_name,k.department '+
'from opdscreen_bp o1 '+
'left outer join officer fc      on fc.officer_login_name  = o1.staff  '+
'left outer join kskdepartment k on k.depcode = o1.depcode  '+
'where o1.vn ="'+DBPipeline['vn']+'" order by o1.screen_time'); 

       {
        if GetSQLIntegerData('select count(*) from pe_xe_image   where vn ="'+DBPipeline['vn']+'"') > 0 then
    SubReport19.visible := true
   else
    SubReport19.visible := false; 
    } 

   {
   if GetSQLIntegerData('select (count(image1)+count(image2)+count(image3)+count(image4)+count(image5)+count(image6)+count(image7)+count(image8)+count(image9)+count(image10)) '+
      'from pe_image where vn = "'+DBPipeline['vn']+'" ') = 1 then
   begin
     SubReport5.visible := false;
     SubReport6.visible := true;
   end else
   begin
     SubReport5.visible := true;
     SubReport6.visible := false;
   end;
    }            
   {
   if  (DBPipeline['eye_vn'] = '') then
     SubReport7.visible := false
   else
     SubReport7.visible := true;
    } 
    {
    
   if  (DBPipeline['vn'] = 'khuad') then
     DBText74.visible := true
   else
     DBText74.visible := false;    
     }            
     
   //------  

    

    

end;
ComponentNameDetail	EventNameBeforeGenerateEventID TraEventHandlerProgramNameFooterBeforeGenerateProgramTypettProcedureSource,  procedure FooterBeforeGenerate;
begin

     ChangeDBPipeLineLink9SQL('select avt.opdscreen_advice_item_name ,av.opdscreen_advice_item_id ,av.staff ,av.vn ,av.advice_note  '+
' from opdscreen_advice  av   '+
' INNER JOIN opdscreen_advice_item avt  ON avt.opdscreen_advice_item_id=av.opdscreen_advice_item_id   '+
' where av.vn ="'+DBPipeline['vn']+'"');
  {
    if  Report.PageNo = Report.PageCount then
   begin
      Region4.visible := true;
      SubReport17.visible := true;
   end else
   begin
      Region4.visible := false;
      SubReport17.visible := false;
   end;
   }
   
 {
   if  Report.PageNo = Report.PageCount then
   begin
      Region3.visible := true;
      SubReport17.visible := true;
   end else
   begin
      Region3.visible := false;
      SubReport17.visible := false;
   end;
   }
{   
   av := ReplaceStr(GetSQLSubQueryData('Select opdscreen_advice_item_id from opdscreen_advice Where vn = "'+DBPipeline['vn']+'"'),'''','');
    //ShowMessage(av);
   if av <> -999 then
   begin
   if Length(av) > 0 then av1 := StrToInt(Copy(av,1,1)) else av1 := 0;
   if Length(av) > 2 then av2 := StrToInt(Copy(av,3,1)) else av2 := 0;
   if Length(av) > 4 then av3 := StrToInt(Copy(av,5,1)) else av3 := 0;
   if Length(av) > 6 then av4 := StrToInt(Copy(av,7,1)) else av4 := 0;
   if Length(av) > 8 then av5 := StrToInt(Copy(av,9,1)) else av5 := 0;
   if Length(av) > 10 then av6 := StrToInt(Copy(av,11,1)) else av6 := 0;
   if Length(av) > 13 then av7 := StrToInt(Copy(av,13,1)) else av7 := 0;  
   
     
    
}
end;
ComponentNameFooter	EventNameBeforeGenerateEventID TraEventHandlerProgramNameVariable5OnCalcProgramTypettProcedureSource�procedure Variable5OnCalc(var Value: Variant);
begin

  Value := FormatThaiDate('d mmm yyyy',DBPipeline['vstdate']);

end;
ComponentName	Variable5	EventNameOnCalcEventID! TraEventHandlerProgramNameVariable11OnCalcProgramTypettProcedureSource�procedure Variable11OnCalc(var Value: Variant);
begin


  Value := FormatThaiDate('d mmm yyyy',DBPipeline['vstdate']);

end;
ComponentName
Variable11	EventNameOnCalcEventID! TraEventHandlerProgramNameVariable14OnCalcProgramTypettProcedureSource�   procedure Variable14OnCalc(var Value: Variant);
begin

  Value := 'ใบตรวจรักษาผู้ป่วยนอก (OPD) ' + HospitalName;

end;
ComponentName
Variable14	EventNameOnCalcEventID! TraEventHandlerProgramNameVariable15OnCalcProgramTypettProcedureSource�   procedure Variable15OnCalc(var Value: Variant);
begin

  Value := 'ใบตรวจรักษาผู้ป่วยนอก (OPD) ' + HospitalName;

end;
ComponentName
Variable15	EventNameOnCalcEventID! TraEventHandlerProgramNameVariable31OnCalcProgramTypettProcedureSource  procedure Variable31OnCalc(var Value: Variant);
begin
{ ------------คำสั่งเก่า ไม่ใช้แล้ว เก็บไว้ก่อนก็ได้
  if  DBPipeline['command_doctor'] <>'' then
begin
 Value :=getsqlstringdata('select concat("รับคำสั่งแพทย์ ",d.name) as docname '+
 ' FROM doctor d ' +
 ' WHERE d.code=(' +
 ' SELECT o.command_doctor  FROM opitemrece o ' +
 ' WHERE o.vn = "'+ DBPipeline['vn']+ '" ) ');

end else
begin
 Value :=getsqlstringdata('SELECT  concat("แพทย์ผู้ควบคุม ",d.name) as docname '+
 ' FROM doctor d ' +
 ' WHERE d.code=(' +
 ' SELECT o.doctor  FROM ovst_control_doctor o ' +
 ' WHERE o.vn = "'+ DBPipeline['vn']+ '" ) ');

end;
}




end;


{"'+ DBPipeline['command_doctor']+'" ');

end;


{"'+ DBPipeline['command_doctor']+'" ');

end;
ComponentName
Variable31	EventNameOnCalcEventID! TraEventHandlerProgramNameVariable37OnCalcProgramTypettProcedureSourcer  procedure Variable37OnCalc(var Value: Variant);
begin

 
Value := 'ผู้พิมพ์ '+GetSQLStringData('select o2.name from onlineuser o1,opduser o2 '+
           'where o1.kskloginname = o2.loginname '+
           'and o1.onlineid = "'+GetOnlineID+'" ')+': แผนก '+GetSQLStringData('select o1.department from onlineuser o1,opduser o2 '+
           'where o1.kskloginname = o2.loginname '+
           'and o1.onlineid = "'+GetOnlineID+'" ')+': ชื่อเครื่อง  '+GetSQLStringData('select o1.servername from onlineuser o1,opduser o2 '+
           'where o1.kskloginname = o2.loginname '+
           'and o1.onlineid = "'+GetOnlineID+'" ')+' : IP '+ GetSQLStringData('select o1.computername from onlineuser o1,opduser o2 '+
           'where o1.kskloginname = o2.loginname '+
           'and o1.onlineid = "'+GetOnlineID+'" ');


end;
ComponentName
Variable37	EventNameOnCalcEventID! TraEventHandlerProgramNameVariable42OnCalcProgramTypettProcedureSource�   procedure Variable42OnCalc(var Value: Variant);
begin

      value :=  intToStr(DBPipeline['age_y'])+' ปี '+intToStr(DBPipeline['age_m'])+' เดือน '+intToStr(DBPipeline['age_d'])+ ' วัน';

end;
ComponentName
Variable42	EventNameOnCalcEventID! TraEventHandlerProgramNameVariable43OnCalcProgramTypettProcedureSource�   procedure Variable43OnCalc(var Value: Variant);
begin

      value :=  intToStr(DBPipeline['age_y'])+' ปี '+intToStr(DBPipeline['age_m'])+' เดือน '+intToStr(DBPipeline['age_d'])+ ' วัน';

end;
ComponentName
Variable43	EventNameOnCalcEventID! TraEventHandlerProgramNameVariable23OnCalcProgramTypettProcedureSource�  procedure Variable23OnCalc(var Value: Variant);
begin
    {
    memo3.text:= ReplaceSTR(GetListFromQuery('select concat(avt.opdscreen_advice_item_name ," [",if(av.advice_note<>"",av.advice_note,""),"]") AS AdvItems  '+
' from opdscreen_advice  av   '+
' INNER JOIN opdscreen_advice_item avt  ON avt.opdscreen_advice_item_id=av.opdscreen_advice_item_id   '+
' where av.vn ="'+DBPipeline['vn']+'" order by avt.opdscreen_advice_item_id'),'''','');
}
   z1 := ReplaceSTR(GetSQLSubQueryData('select concat(avt.opdscreen_advice_item_name ," ",av.advice_note) as cc  '+
' from opdscreen_advice  av   '+
' INNER JOIN opdscreen_advice_item avt  ON avt.opdscreen_advice_item_id=av.opdscreen_advice_item_id   '+
' where av.vn ="'+DBPipeline['vn']+'" order by avt.opdscreen_advice_item_id'),'''',' ');

   if copy(z1,2,6)='NODATA' then
      Memo3.Text := ' '
  else
      Memo3.Text := z1;



end;
ComponentName
Variable23	EventNameOnCalcEventID! TraEventHandlerProgramNameVariable30OnCalcProgramTypettProcedureSource>  procedure Variable30OnCalc(var Value: Variant);
begin

Value := 'วันที่ ' + FormatThaiDate('d mmm yy',DBPipeline['nextdate'])+ ' เวลา '+FormatThaiDate('HH:NN',DBPipeline['nexttime'])+'-'+ FormatThaiDate('HH:NN',DBPipeline['nexttime_end'])+' น.' ;                                     

end;
ComponentName
Variable30	EventNameOnCalcEventID! TraEventHandlerProgramNameVariable32OnCalcProgramTypettProcedureSource�   procedure Variable32OnCalc(var Value: Variant);
begin

Value := 'คลีนิค : '+DBPipeline['AppCliName']   ;

end;
ComponentName
Variable32	EventNameOnCalcEventID! TraEventHandlerProgramNameVariable33OnCalcProgramTypettProcedureSource�   procedure Variable33OnCalc(var Value: Variant);
begin

Value := 'เหตุที่นัด : '+ DBPipeline['app_cause'] ;

end;
ComponentName
Variable33	EventNameOnCalcEventID! TraEventHandlerProgramNameVariable34OnCalcProgramTypettProcedureSource�   procedure Variable34OnCalc(var Value: Variant);
begin

 { Value := 'อีก '+GetSQLStringData('select datediff(nextdate,vstdate) as dd from oapp where vn="'+GetUserParameter(0) +'"')+' วัน';  }

end;
ComponentName
Variable34	EventNameOnCalcEventID! TraEventHandlerProgramNameVariable55OnCalcProgramTypettProcedureSource�  procedure Variable55OnCalc(var Value: Variant);
begin
  {
LabApp := 'นัด LAB: '+ ReplaceSTR((GetSQLSubQueryData(' select concat(lo.lab_name,"  ") '+
     ' from lab_app_order_service lo '+
     'left outer join  lab_app_head lh on lh.lab_app_order_number=lo.lab_app_order_number '+
     ' where lh.oapp_id = "'+DBPipeline['oapp_id']+'" '),'''','');

       If LabApp='NODATA' then Value:='  '  else  Value :=LabApp ;  
 }      
       
       
       
  if   DBPipeline['lab_list_text']<>''  then 
  memo2.text:=  'นัด Lab: '+ DBPipeline['lab_list_text'] 
  else  
  memo2.text:= 'นัด Lab: -' ;      

end;
ComponentName
Variable55	EventNameOnCalcEventID! TraEventHandlerProgramNameVariable56OnCalcProgramTypettProcedureSourcei  procedure Variable56OnCalc(var Value: Variant);
begin
{
XrApp := 'นัด XRAY: '+ ReplaceStr(GetSQLSubQueryData(' select concat(xi.xray_items_name,"  ") '+
     'from oapp_xray ox '+
     'left outer join xray_items xi ON xi.xray_items_code = ox.xray_items_code '+
     ' where ox.oapp_id = "'+DBPipeline['oapp_id']+'" '),'''','');      
      If XrApp='NODATA' then Value:='  '
         else  Value :=XrApp ;   
         }
         
 if   DBPipeline['xray_list_text']<>''  then 
  Value:=  'นัด XRAY: '+ DBPipeline['xray_list_text'] 
  else  
  Value:= 'นัด XRAY: -' ;      
 

end;
ComponentName
Variable56	EventNameOnCalcEventID! TraEventHandlerProgramNameVariable8OnCalcProgramTypettProcedureSource:  procedure Variable8OnCalc(var Value: Variant);
begin

a1 := GetSQLSubQueryData('select c.name from clinicmember cm ,clinic c where cm.clinic=c.clinic and cm.hn ="'+DBPipeline['HN']+'" ');
   if copy(a1,2,6)='NODATA' then
      Memo4.Text := ' '
  else
      Memo4.Text := a1;    
      
      


end;
ComponentName	Variable8	EventNameOnCalcEventID! TraEventHandlerProgramNameVariable16OnCalcProgramTypettProcedureSource  procedure Variable16OnCalc(var Value: Variant);
begin


   if  Report.PageNo <> Report.PageCount then

      value := 'มีต่อในแผ่นต่อหน้าที่ '+ inttostr(Report.PageNo+1)
   else
      value := '' ;


end;
ComponentName
Variable16	EventNameOnCalcEventID! TraEventHandlerProgramNameTitleBeforeGenerateProgramTypettProcedureSource�procedure TitleBeforeGenerate;
begin
    ChangeDBPipeLineLink9SQL('select image_name,image from patient_image  where hn="'+DBPipeline['hn']+'"');  
end;
ComponentNameTitle	EventNameBeforeGenerateEventID TraEventHandlerProgramNameVariable6OnCalcProgramTypettProcedureSource�procedure Variable6OnCalc(var Value: Variant);
begin


   if DBPipeLineLink7['thumbnail_image_data'] <>'' then
   begin
     SubReport4.visible := true ;
   end else
   begin
     SubReport4.visible := false ;
   end;



end;
ComponentName	Variable6	EventNameOnCalcEventID! TraEventHandlerProgramNameVariable18OnCalcProgramTypettProcedureSourceL  procedure Variable18OnCalc(var Value: Variant);
begin

 { Value := GetSQLStringData('select dt.name as DoctorName '+
     'from opitemrece o                                          '+
     'left outer join drugitems d on d.icode = o.icode           '+
     'left outer join s_drugitems s on s.icode= o.icode          '+
     'left outer join drugusage du on du.drugusage = o.drugusage '+
     'left outer join doctor dt on dt.code = o.doctor            '+
     'where o.vn = "'+DBPipeline['vn']+'" and dt.name is not null                      '+
     'order by o.doctor,o.item_no');  }
     
     
  value:= GetSQLStringData(' select d.name     '+
' from ovst o                                  '+
' inner join doctor d on d.code=o.doctor       '+
' where o.vn="'+DBPipeline['vn']+'" ');  
     
     
     
     

end;
ComponentName
Variable18	EventNameOnCalcEventID!    TppDesignLayersppDesignLayers1 TppDesignLayerppDesignLayer1UserName
Foreground	LayerTypeltBanded   TppParameterListppParameterList1    MySQLʺ��� ��ͧᾷ�� x`F��B     �5@N