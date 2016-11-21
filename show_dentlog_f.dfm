object show_dent_form: Tshow_dent_form
  Left = 0
  Top = 0
  Caption = 'show_dent_form'
  ClientHeight = 525
  ClientWidth = 756
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  DesignSize = (
    756
    525)
  PixelsPerInch = 96
  TextHeight = 13
  object show_visit: TcxGrid
    AlignWithMargins = True
    Left = 3
    Top = 93
    Width = 750
    Height = 402
    Align = alClient
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object show_visitDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = data_dent
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnFilteredItemsList = True
      OptionsData.Appending = True
      OptionsView.GroupByBox = False
      object show_visitDBTableView1vn: TcxGridDBColumn
        DataBinding.FieldName = 'vn'
        Width = 90
      end
      object show_visitDBTableView1vstdate: TcxGridDBColumn
        DataBinding.FieldName = 'vstdate'
        Width = 67
      end
      object show_visitDBTableView1vsttime: TcxGridDBColumn
        DataBinding.FieldName = 'vsttime'
        Width = 54
      end
      object show_visitDBTableView1hn: TcxGridDBColumn
        DataBinding.FieldName = 'hn'
        Width = 69
      end
      object show_visitDBTableView1ptname: TcxGridDBColumn
        DataBinding.FieldName = 'ptname'
        Width = 147
      end
      object show_visitDBTableView1cid: TcxGridDBColumn
        DataBinding.FieldName = 'cid'
        Width = 97
      end
      object show_visitDBTableView1visit_type_name: TcxGridDBColumn
        Caption = 'visit_type'
        DataBinding.FieldName = 'visit_type_name'
        Width = 80
      end
      object show_visitDBTableView1pt_walk_name: TcxGridDBColumn
        Caption = 'pt_walk'
        DataBinding.FieldName = 'pt_walk_name'
        Width = 51
      end
      object show_visitDBTableView1pttype: TcxGridDBColumn
        DataBinding.FieldName = 'pttype'
        Width = 43
      end
      object show_visitDBTableView1name: TcxGridDBColumn
        Caption = 'pt_name'
        DataBinding.FieldName = 'name'
        Width = 183
      end
      object show_visitDBTableView1pdx: TcxGridDBColumn
        DataBinding.FieldName = 'pdx'
        OnCustomDrawCell = show_visitDBTableView1pdxCustomDrawCell
      end
      object show_visitDBTableView1height: TcxGridDBColumn
        DataBinding.FieldName = 'height'
        OnCustomDrawCell = show_visitDBTableView1heightCustomDrawCell
      end
      object show_visitDBTableView1bw: TcxGridDBColumn
        DataBinding.FieldName = 'bw'
        OnCustomDrawCell = show_visitDBTableView1bwCustomDrawCell
      end
      object show_visitDBTableView1waist: TcxGridDBColumn
        DataBinding.FieldName = 'waist'
      end
      object show_visitDBTableView1bmi: TcxGridDBColumn
        DataBinding.FieldName = 'bmi'
      end
      object show_visitDBTableView1bpd: TcxGridDBColumn
        DataBinding.FieldName = 'bpd'
        OnCustomDrawCell = show_visitDBTableView1bpdCustomDrawCell
      end
      object show_visitDBTableView1bps: TcxGridDBColumn
        DataBinding.FieldName = 'bps'
        OnCustomDrawCell = show_visitDBTableView1bpsCustomDrawCell
      end
      object show_visitDBTableView1hr: TcxGridDBColumn
        DataBinding.FieldName = 'hr'
        Width = 60
      end
      object show_visitDBTableView1pe: TcxGridDBColumn
        DataBinding.FieldName = 'pe'
      end
      object show_visitDBTableView1pulse: TcxGridDBColumn
        DataBinding.FieldName = 'pulse'
      end
      object show_visitDBTableView1rr: TcxGridDBColumn
        DataBinding.FieldName = 'rr'
      end
      object show_visitDBTableView1temperature: TcxGridDBColumn
        Caption = 'temp'
        DataBinding.FieldName = 'temperature'
      end
      object show_visitDBTableView1cc: TcxGridDBColumn
        DataBinding.FieldName = 'cc'
        OnCustomDrawCell = show_visitDBTableView1ccCustomDrawCell
        Width = 160
      end
      object show_visitDBTableView1hpi: TcxGridDBColumn
        DataBinding.FieldName = 'hpi'
        Width = 145
      end
      object show_visitDBTableView1pmh: TcxGridDBColumn
        DataBinding.FieldName = 'pmh'
        Width = 144
      end
      object show_visitDBTableView1GROUP_CONCATdentfee: TcxGridDBColumn
        Caption = 'fee'
        DataBinding.FieldName = 'GROUP_CONCAT(dent.fee)'
      end
      object show_visitDBTableView1GROUP_CONCATdenticd: TcxGridDBColumn
        Caption = 'icd'
        DataBinding.FieldName = 'GROUP_CONCAT(dent.icd)'
      end
      object show_visitDBTableView1GROUP_CONCATdenticd9: TcxGridDBColumn
        Caption = 'icd9'
        DataBinding.FieldName = 'GROUP_CONCAT(dent.icd9)'
        OnCustomDrawCell = show_visitDBTableView1GROUP_CONCATdenticd9CustomDrawCell
      end
      object show_visitDBTableView1GROUP_CONCATdentscount: TcxGridDBColumn
        Caption = 'scount'
        DataBinding.FieldName = 'GROUP_CONCAT(dent.scount)'
      end
      object show_visitDBTableView1GROUP_CONCATdenttcount: TcxGridDBColumn
        Caption = 'tcount'
        DataBinding.FieldName = 'GROUP_CONCAT(dent.tcount)'
      end
      object show_visitDBTableView1ttcode: TcxGridDBColumn
        DataBinding.FieldName = 'ttcode'
        OnCustomDrawCell = show_visitDBTableView1ttcodeCustomDrawCell
      end
      object show_visitDBTableView1GROUP_CONCATdentpregnancy: TcxGridDBColumn
        Caption = 'pregnancy'
        DataBinding.FieldName = 'GROUP_CONCAT(dent.pregnancy)'
      end
      object show_visitDBTableView1GROUP_CONCATdentpost_labour: TcxGridDBColumn
        Caption = 'post_labour'
        DataBinding.FieldName = 'GROUP_CONCAT(dent.post_labour)'
      end
      object show_visitDBTableView1GROUP_CONCATdentreport_update: TcxGridDBColumn
        Caption = 'report_update'
        DataBinding.FieldName = 'GROUP_CONCAT(dent.report_update)'
      end
      object show_visitDBTableView1GROUP_CONCATdentpregnancy_caries_count: TcxGridDBColumn
        Caption = 'pregnancy_caries_count'
        DataBinding.FieldName = 'GROUP_CONCAT(dent.pregnancy_caries_count)'
      end
      object show_visitDBTableView1GROUP_CONCATdentpregnancy_gingivitis: TcxGridDBColumn
        Caption = 'pregnancy_gingivitis'
        DataBinding.FieldName = 'GROUP_CONCAT(dent.pregnancy_gingivitis)'
      end
      object show_visitDBTableView1GROUP_CONCATdentpregnancy_calculus: TcxGridDBColumn
        Caption = 'pregnancy_calculus'
        DataBinding.FieldName = 'GROUP_CONCAT(dent.pregnancy_calculus)'
      end
      object show_visitDBTableView1GROUP_CONCATdentpregnancy_checkup: TcxGridDBColumn
        Caption = 'pregnancy_checkup'
        DataBinding.FieldName = 'GROUP_CONCAT(dent.pregnancy_checkup)'
      end
      object show_visitDBTableView1GROUP_CONCATdentrc_count: TcxGridDBColumn
        Caption = 'rc_count'
        DataBinding.FieldName = 'GROUP_CONCAT(dent.rc_count)'
      end
      object show_visitDBTableView1dental_care_type_name: TcxGridDBColumn
        Caption = 'care_type'
        DataBinding.FieldName = 'dental_care_type_name'
        Width = 75
      end
      object show_visitDBTableView1dental_care_service_place_type_name: TcxGridDBColumn
        Caption = 'service_place'
        DataBinding.FieldName = 'dental_care_service_place_type_name'
        Width = 103
      end
      object show_visitDBTableView1GROUP_CONCATcarepteeth: TcxGridDBColumn
        Caption = 'pteeth'
        DataBinding.FieldName = 'GROUP_CONCAT(care.pteeth)'
      end
      object show_visitDBTableView1GROUP_CONCATcarepcaries: TcxGridDBColumn
        Caption = 'pcaries'
        DataBinding.FieldName = 'GROUP_CONCAT(care.pcaries)'
      end
      object show_visitDBTableView1GROUP_CONCATcarepfilling: TcxGridDBColumn
        Caption = 'pfilling'
        DataBinding.FieldName = 'GROUP_CONCAT(care.pfilling)'
      end
      object show_visitDBTableView1GROUP_CONCATcarepextract: TcxGridDBColumn
        Caption = 'pextract'
        DataBinding.FieldName = 'GROUP_CONCAT(care.pextract)'
      end
      object show_visitDBTableView1GROUP_CONCATcaredteeth: TcxGridDBColumn
        Caption = 'dteeth'
        DataBinding.FieldName = 'GROUP_CONCAT(care.dteeth)'
      end
      object show_visitDBTableView1GROUP_CONCATcaredcaries: TcxGridDBColumn
        Caption = 'dcaries'
        DataBinding.FieldName = 'GROUP_CONCAT(care.dcaries)'
      end
      object show_visitDBTableView1GROUP_CONCATcaredfilling: TcxGridDBColumn
        Caption = 'dfilling'
        DataBinding.FieldName = 'GROUP_CONCAT(care.dfilling)'
      end
      object show_visitDBTableView1GROUP_CONCATcaredextract: TcxGridDBColumn
        Caption = 'dextract'
        DataBinding.FieldName = 'GROUP_CONCAT(care.dextract)'
      end
      object show_visitDBTableView1GROUP_CONCATcareneed_fluoride: TcxGridDBColumn
        Caption = 'need_fluoride'
        DataBinding.FieldName = 'GROUP_CONCAT(care.need_fluoride)'
      end
      object show_visitDBTableView1GROUP_CONCATneed_scaling: TcxGridDBColumn
        Caption = 'need_scaling'
        DataBinding.FieldName = 'GROUP_CONCAT(need_scaling)'
      end
      object show_visitDBTableView1GROUP_CONCATneed_sealant: TcxGridDBColumn
        Caption = 'need_sealant'
        DataBinding.FieldName = 'GROUP_CONCAT(need_sealant)'
      end
      object show_visitDBTableView1GROUP_CONCATcareneed_pfilling: TcxGridDBColumn
        Caption = 'need_pfilling'
        DataBinding.FieldName = 'GROUP_CONCAT(care.need_pfilling)'
      end
      object show_visitDBTableView1GROUP_CONCATneed_dextract: TcxGridDBColumn
        Caption = 'need_dextract'
        DataBinding.FieldName = 'GROUP_CONCAT(need_dextract)'
      end
      object show_visitDBTableView1dental_care_nprosthesis_name: TcxGridDBColumn
        Caption = 'nprosthesis'
        DataBinding.FieldName = 'dental_care_nprosthesis_name'
        Width = 125
      end
      object show_visitDBTableView1GROUP_CONCATcarepermanent_perma: TcxGridDBColumn
        Caption = 'permanent_perma'
        DataBinding.FieldName = 'GROUP_CONCAT(care.permanent_perma)'
      end
      object show_visitDBTableView1GROUP_CONCATcarepermanent_prost: TcxGridDBColumn
        Caption = 'permanent_prost'
        DataBinding.FieldName = 'GROUP_CONCAT(care.permanent_prost)'
      end
      object show_visitDBTableView1GROUP_CONCATcareprosthesis_prost: TcxGridDBColumn
        Caption = 'prosthesis_prost'
        DataBinding.FieldName = 'GROUP_CONCAT(care.prosthesis_prost)'
      end
      object show_visitDBTableView1dental_care_gum_type_name: TcxGridDBColumn
        Caption = 'gum_type'
        DataBinding.FieldName = 'dental_care_gum_type_name'
        Width = 65
      end
      object show_visitDBTableView1dental_care_school_type_name: TcxGridDBColumn
        Caption = 'school_type'
        DataBinding.FieldName = 'dental_care_school_type_name'
        Width = 93
      end
      object show_visitDBTableView1dental_care_school_class_type_name: TcxGridDBColumn
        Caption = 'class_type'
        DataBinding.FieldName = 'dental_care_school_class_type_name'
        Width = 109
      end
      object show_visitDBTableView1dental_care_gum_type_name_1: TcxGridDBColumn
        Caption = 'gum_id1'
        DataBinding.FieldName = 'dental_care_gum_type_name_1'
        Width = 270
      end
      object show_visitDBTableView1dental_care_gum_type_name_2: TcxGridDBColumn
        Caption = 'gum_id2'
        DataBinding.FieldName = 'dental_care_gum_type_name_2'
        Width = 270
      end
      object show_visitDBTableView1dental_care_gum_type_name_3: TcxGridDBColumn
        Caption = 'gum_id3'
        DataBinding.FieldName = 'dental_care_gum_type_name_3'
        Width = 339
      end
      object show_visitDBTableView1dental_care_gum_type_name_4: TcxGridDBColumn
        Caption = 'gum_id4'
        DataBinding.FieldName = 'dental_care_gum_type_name_4'
        Width = 312
      end
      object show_visitDBTableView1dental_care_gum_type_name_5: TcxGridDBColumn
        Caption = 'gum_id5'
        DataBinding.FieldName = 'dental_care_gum_type_name_5'
        Width = 312
      end
      object show_visitDBTableView1dental_care_gum_type_name_6: TcxGridDBColumn
        Caption = 'gum_id6'
        DataBinding.FieldName = 'dental_care_gum_type_name_6'
        Width = 312
      end
    end
    object show_visitLevel1: TcxGridLevel
      GridView = show_visitDBTableView1
    end
  end
  object header_opdlog: TJvNavPanelHeader
    Left = 0
    Top = 0
    Width = 756
    Height = 49
    Align = alTop
    Caption = 'Dent Monitor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ImageIndex = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 756
    Height = 41
    Align = alTop
    TabOrder = 0
    DesignSize = (
      756
      41)
    object date_start_text: TcxDateEdit
      Left = 70
      Top = 14
      TabOrder = 0
      Width = 121
    end
    object date_end_text: TcxDateEdit
      Left = 197
      Top = 14
      TabOrder = 1
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 40
      Top = 18
      Caption = #3623#3633#3609#3607#3637#3656
    end
    object post_date_btn: TRzBitBtn
      Left = 535
      Top = 10
      Width = 107
      Anchors = [akTop, akRight]
      Caption = 'Preview'
      TabOrder = 3
      OnClick = post_date_btnClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000830E0000830E00000001000000000000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
        000000808000800000008000800080800000C0C0C00080808000191919004C4C
        4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
        6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
        E8E8E8E8E8E8E8820982E8E8E8E8E8E8E8E8E8E8E8E8E8AC81ACE85E5E5E5E5E
        5E5E5E5E5E5E82090909E88181818181818181818181AC818181E85ED7D7D7D7
        D7D7D7D7D7DF09090982E881E8E8E8E8E8E8E8E8E8DF818181ACE85ED7E3E3E3
        E3E3DFDFDF09090982E8E881E8ACACACACACDFDFDF818181ACE8E85ED7D7D7D7
        E35DB3B3D7880982E8E8E881E8E8E8E8AC81E3E3D7E381ACE8E8E85ED7E3E3E3
        81E6B3B3B3D756E8E8E8E881E8ACACAC81E3E3E3E3D756E8E8E8E85ED7D7D7D7
        81E6D7E6B3B356E8E8E8E881E8E8E8E881E3D7E3E3E356E8E8E8E85ED7E3E3E3
        81E6D7D7E6B356E8E8E8E881E8ACACAC81E3D7D7E3E356E8E8E8E85ED7D7D7D7
        D781E6E6E65DDFE8E8E8E881E8E8E8E8E881E3E3E381DFE8E8E8E85ED7E3E3E3
        E3E3818181E35EE8E8E8E881E8ACACACACAC818181E381E8E8E8E85ED7D7D7D7
        D7D7D7D7D7D75EE8E8E8E881E8E8E8E8E8E8E8E8E8E881E8E8E8E85ED7E3E3E3
        E3E3D75E5E5E5EE8E8E8E881E8ACACACACACE881818181E8E8E8E85ED7D7D7D7
        D7D7D75EE35EE8E8E8E8E881E8E8E8E8E8E8E881E381E8E8E8E8E85ED7D7D7D7
        D7D7D75E5EE8E8E8E8E8E881E8E8E8E8E8E8E88181E8E8E8E8E8E85E5E5E5E5E
        5E5E5E5EE8E8E8E8E8E8E8818181818181818181E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
    object excel_export_btn: TRzBitBtn
      Left = 655
      Top = 10
      Anchors = [akTop, akRight]
      Caption = 'EXCEL'
      TabOrder = 4
      OnClick = excel_export_btnClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000730E0000730E00000001000000000000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
        000000808000800000008000800080800000C0C0C00080808000191919004C4C
        4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
        6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E809090909
        09090909090909E8E8E8E8E88181818181818181818181E8E8E8E85E89898989
        89898989895E5E09E8E8E8E2ACACACACACACACACACE2E281E8E85E5E5E5E5E5E
        5E5E5E5E5E5E095E09E8E2E2E2E2E2E2E2E2E2E2E2E281E281E85ED789898989
        8989898989895E0909E8E2E8ACACACACACACACACACACE28181E85ED789898989
        181289B490895E5E09E8E2E8ACACACACE281ACE281ACE2E281E85ED7D7D7D7D7
        D7D7D7D7D7D75E5E5E09E2E8E8E8E8E8E8E8E8E8E8E8E2E2E2815ED789898989
        8989898989895E5E5E09E2E8ACACACACACACACACACACE2E2E281E85E5E5E5E5E
        5E5E5E5E5E89895E5E09E8E2E2E2E2E2E2E2E2E2E2ACACE2E281E8E85ED7D7D7
        D7D7D7D7D75E89895E09E8E8E2E8E8E8E8E8E8E8E8E2ACACE281E8E8E85ED7E3
        E3E3E3E3D75E5E5E09E8E8E8E8E2E8ACACACACACE8E2E2E281E8E8E8E85ED7D7
        D7D7D7D7D7D75EE8E8E8E8E8E8E2E8E8E8E8E8E8E8E8E2E8E8E8E8E8E8E85ED7
        E3E3E3E3E3D75EE8E8E8E8E8E8E8E2E8ACACACACACE8E2E8E8E8E8E8E8E85ED7
        D7D7D7D7D7D7D75EE8E8E8E8E8E8E2E8E8E8E8E8E8E8E8E2E8E8E8E8E8E8E85E
        5E5E5E5E5E5E5E5EE8E8E8E8E8E8E8E2E2E2E2E2E2E2E2E2E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 498
    Width = 756
    Height = 27
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      756
      27)
    object RzBitBtn1: TRzBitBtn
      Left = 678
      Top = 3
      Anchors = [akRight, akBottom]
      Caption = 'Exit'
      TabOrder = 0
      OnClick = RzBitBtn1Click
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000730B0000730B00000001000000000000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
        000000808000800000008000800080800000C0C0C00080808000191919004C4C
        4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
        6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
        EEE8E8E8E8E8E8E8E8E8E8E8E8E8E8E8EEE8E8E8E8E8E8E8E8E8E8E8E8EEE3AC
        E3EEE8E8E8E8E8E8E8E8E8E8E8EEE8ACE3EEE8E8E8E8E8E8E8E8E8EEE3E28257
        57E2ACE3EEE8E8E8E8E8E8EEE8E2818181E2ACE8EEE8E8E8E8E8E382578282D7
        578181E2E3E8E8E8E8E8E881818181D7818181E2E8E8E8E8E8E857828989ADD7
        57797979EEE8E8E8E8E88181DEDEACD781818181EEE8E8E8E8E857898989ADD7
        57AAAAA2D7ADE8E8E8E881DEDEDEACD781DEDE81D7ACE8E8E8E857898989ADD7
        57AACEA3AD10E8E8E8E881DEDEDEACD781DEAC81AC81E8E8E8E85789825EADD7
        57ABCFE21110E8E8E8E881DE8181ACD781ACACE28181E8E8E8E8578957D7ADD7
        57ABDE101010101010E881DE56D7ACD781ACDE818181818181E857898257ADD7
        57E810101010101010E881DE8156ACD781E381818181818181E857898989ADD7
        57E882101010101010E881DEDEDEACD781E381818181818181E857898989ADD7
        57ACEE821110E8E8E8E881DEDEDEACD781ACEE818181E8E8E8E857898989ADD7
        57ABE8AB8910E8E8E8E881DEDEDEACD781ACE3ACDE81E8E8E8E857828989ADD7
        57ACE8A3E889E8E8E8E88181DEDEACD781ACE381E8DEE8E8E8E8E8DE5E8288D7
        57A2A2A2E8E8E8E8E8E8E8DE8181DED781818181E8E8E8E8E8E8E8E8E8AC8257
        57E8E8E8E8E8E8E8E8E8E8E8E8AC818181E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
    object cxLabel1: TcxLabel
      Left = 40
      Top = 3
      Caption = #3592#3635#3609#3623#3609
    end
    object record_count: TcxLabel
      Left = 95
      Top = 3
      Caption = '0'
    end
    object emr_btn: TRzBitBtn
      Left = 597
      Top = 3
      Anchors = [akRight, akBottom]
      Caption = 'EMR'
      TabOrder = 3
      OnClick = emr_btnClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000730E0000730E00000001000000000000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
        000000808000800000008000800080800000C0C0C00080808000191919004C4C
        4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
        6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E85E5E5E5E
        5E5E5E5E5E5E5E5EE8E8E8E8818181818181818181818181E8E8E8E85ED7D7D7
        D7D7D7D7D7D7D75EE8E8E8E881E8E8E8E8E8E8E8E8E8E881E8E8E8E85ED7E3E3
        E3E3E3E3E3E3D75EE8E8E8E881E8ACACACACACACACACE881E8E8E8E85ED7D7D7
        D7D7D7D7D7D7D75EE8E8E8E881E8E8E8E8E8E8E8E8E8E881E8E8E8E85ED7E3E3
        E3E3E3E3E3E3D75EE8E8E8E881E8ACACACACACACACACE881E8E8E8E85ED7D7D7
        D7D7D7D7D7D7D75EE8E8E8E881E8E8E8E8E8E8E8E8E8E881E8E8E8E85ED7E3E3
        E3E3E3E3E3E3D75EE8E8E8E881E8ACACACACACACACACE881E8E8E8E85ED7D7D7
        D7D7D7D7D7D7D75EE8E8E8E881E8E8E8E8E8E8E8E8E8E881E8E8E8E85ED7E3E3
        E3E3E3E3E3E3D75EE8E8E8E881E8ACACACACACACACACE881E8E8E8E85ED7D7D7
        D7D7D7D7D7D7D75EE8E8E8E881E8E8E8E8E8E8E8E8E8E881E8E8E8E85ED7E3E3
        E3E3E3D75E5E5E5EE8E8E8E881E8ACACACACACE881818181E8E8E8E85ED7D7D7
        D7D7D7D75EE35EE8E8E8E8E881E8E8E8E8E8E8E881E881E8E8E8E8E85ED7D7D7
        D7D7D7D75E5EE8E8E8E8E8E881E8E8E8E8E8E8E88181E8E8E8E8E8E85E5E5E5E
        5E5E5E5E5EE8E8E8E8E8E8E8818181818181818181E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
  end
  object process_Qrb1k: TcxProgressBar
    Left = 40
    Top = 288
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    Visible = False
    Width = 691
  end
  object Qshow_dent: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO opdscreen'
      
        '  (vn, hn, vstdate, vsttime, bpd, bps, bw, cc, hr, pe, pulse, te' +
        'mperature, rr, height, bmi, hpi, pmh, waist)'
      'VALUES'
      
        '  (:vn, :hn, :vstdate, :vsttime, :bpd, :bps, :bw, :cc, :hr, :pe,' +
        ' :pulse, :temperature, :rr, :height, :bmi, :hpi, :pmh, :waist)')
    Connection = db_connect_m.connect_db
    SQL.Strings = (
      'select '
      
        'v.vn,oc.vstdate,oc.vsttime,p.hn,concat(p.pname,p.fname," ",p.lna' +
        'me)as ptname,p.cid,'
      
        'vt.visit_type_name,pw.`name` as pt_walk_name,pt.pttype,pt.`name`' +
        ','
      
        'v.pdx,oc.height,oc.bw,oc.waist,oc.bmi,oc.bpd,oc.bps,oc.bw,oc.hr,' +
        'oc.pe,oc.pulse,oc.rr,oc.temperature,oc.cc,oc.hpi,oc.pmh,'
      
        'GROUP_CONCAT(dent.fee),GROUP_CONCAT(dent.icd),GROUP_CONCAT(dent.' +
        'icd9),GROUP_CONCAT(dent.scount),GROUP_CONCAT(dent.tcount),'
      'GROUP_CONCAT(concat(dent.tmcode,'#39' '#39',dent.ttcode))as ttcode,'
      
        'GROUP_CONCAT(dent.pregnancy),GROUP_CONCAT(dent.post_labour),GROU' +
        'P_CONCAT(dent.report_update),GROUP_CONCAT(dent.pregnancy_caries_' +
        'count),'
      
        'GROUP_CONCAT(dent.pregnancy_gingivitis),GROUP_CONCAT(dent.pregna' +
        'ncy_calculus),GROUP_CONCAT(dent.pregnancy_checkup),'
      'GROUP_CONCAT(dent.rc_count),'
      'dt.dental_care_type_name,sp.dental_care_service_place_type_name,'
      
        'GROUP_CONCAT(care.pteeth),GROUP_CONCAT(care.pcaries),GROUP_CONCA' +
        'T(care.pfilling),GROUP_CONCAT(care.pextract),'
      
        'GROUP_CONCAT(care.dteeth),GROUP_CONCAT(care.dcaries),GROUP_CONCA' +
        'T(care.dfilling),'
      
        'GROUP_CONCAT(care.dextract),GROUP_CONCAT(care.need_fluoride),GRO' +
        'UP_CONCAT(need_scaling),GROUP_CONCAT(need_sealant),'
      'GROUP_CONCAT(care.need_pfilling),GROUP_CONCAT(need_dextract),'
      
        'np.dental_care_nprosthesis_name,GROUP_CONCAT(care.permanent_perm' +
        'a),GROUP_CONCAT(care.permanent_prost),'
      'GROUP_CONCAT(care.prosthesis_prost),'
      
        'gt.dental_care_gum_type_name,st.dental_care_school_type_name,sc.' +
        'dental_care_school_class_type_name,'
      
        'id1.dental_care_gum_type_name,id2.dental_care_gum_type_name,id3.' +
        'dental_care_gum_type_name,'
      
        'id4.dental_care_gum_type_name,id5.dental_care_gum_type_name,id6.' +
        'dental_care_gum_type_name'
      'from dtmain as dent'
      'LEFT OUTER JOIN dental_care as care on care.vn = dent.vn'
      
        'LEFT OUTER JOIN ovst_doctor_sign ods on ods.vn = dent.vn        ' +
        '                                                                ' +
        '            '
      '  left outer join vn_stat v on v.vn = dent.vn '
      
        '  left outer join ovst as o on o.vn = dent.vn                   ' +
        '                                                         '
      
        '  left outer join patient p on p.hn = v.hn                      ' +
        '                                                         '
      
        '  left outer join kskdepartment k on k.depcode = ods.depcode    ' +
        '                                                         '
      
        '  left outer join icd101 i1 on i1.code = v.pdx                  ' +
        '                                                         '
      '  left outer join pttype pt on pt.pttype = v.pttype '
      '  left outer join opdscreen oc on oc.vn = dent.vn   '
      '  left outer join pt_walk pw on pw.walk_id = oc.walk_id  '
      '  left outer join visit_type vt on vt.visit_type = o.visit_type'
      
        'LEFT OUTER JOIN dental_care_type as dt on dt.dental_care_type_id' +
        ' = care.dental_care_type_id'
      
        'LEFT OUTER JOIN dental_care_service_place_type as sp on sp.denta' +
        'l_care_service_place_type_id = care.dental_care_service_place_ty' +
        'pe_id '
      
        'LEFT OUTER JOIN dental_care_nprosthesis as np on np.dental_care_' +
        'nprosthesis_id = care.dental_care_nprosthesis_id'
      
        'LEFT OUTER JOIN dental_care_gum_type as gt on gt.dental_care_gum' +
        '_type_id = care.dental_care_gum_type_id '
      
        'LEFT OUTER JOIN dental_care_school_type as st on st.dental_care_' +
        'school_type_id = care.dental_care_school_type_id'
      
        'LEFT OUTER JOIN dental_care_school_class_type as sc on sc.dental' +
        '_care_school_class_type_id = care.dental_care_school_class_type_' +
        'id '
      
        'LEFT OUTER JOIN dental_care_gum_type as id1 on id1.dental_care_g' +
        'um_type_id = care.dental_care_gum_type_id_1'
      
        'LEFT OUTER JOIN dental_care_gum_type as id2 on id2.dental_care_g' +
        'um_type_id = care.dental_care_gum_type_id_2 '
      
        'LEFT OUTER JOIN dental_care_gum_type as id3 on id3.dental_care_g' +
        'um_type_id = care.dental_care_gum_type_id_3 '
      
        'LEFT OUTER JOIN dental_care_gum_type as id4 on id4.dental_care_g' +
        'um_type_id = care.dental_care_gum_type_id_4 '
      
        'LEFT OUTER JOIN dental_care_gum_type as id5 on id5.dental_care_g' +
        'um_type_id = care.dental_care_gum_type_id_5 '
      
        'LEFT OUTER JOIN dental_care_gum_type as id6 on id6.dental_care_g' +
        'um_type_id = care.dental_care_gum_type_id_6 '
      ''
      'where v.vstdate between :date_start_text AND :date_end_text'
      '#where v.vstdate between 20160501 AND 20160531'
      '  AND v.pdx not between '#39'B20'#39' AND '#39'B24'#39
      ''
      'group by dent.vn'
      '  ORDER BY oc.vstdate,oc.vsttime desc;')
    ReadOnly = True
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.AutoRefresh = True
    Options.AutoRefreshInterval = 120
    Left = 320
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'date_start_text'
      end
      item
        DataType = ftUnknown
        Name = 'date_end_text'
      end>
  end
  object data_dent: TMyDataSource
    DataSet = Qshow_dent
    Left = 424
    Top = 168
  end
end
