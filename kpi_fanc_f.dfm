object kpi_fanc_form: Tkpi_fanc_form
  Left = 0
  Top = 0
  Caption = 'kpi_fanc_form'
  ClientHeight = 523
  ClientWidth = 786
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  DesignSize = (
    786
    523)
  PixelsPerInch = 96
  TextHeight = 13
  object header_opdlog: TJvNavPanelHeader
    Left = 0
    Top = 0
    Width = 786
    Height = 33
    Align = alTop
    Caption = '  '#3613#3634#3585#3588#3619#3619#3606#3660#3588#3619#3633#3657#3591#3649#3619#3585#3651#3609#3611#3637
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
    Top = 33
    Width = 786
    Height = 41
    Align = alTop
    TabOrder = 1
    DesignSize = (
      786
      41)
    object post_date_btn: TRzBitBtn
      Left = 565
      Top = 10
      Width = 107
      Anchors = [akTop, akRight]
      Caption = 'Preview'
      TabOrder = 0
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
      Left = 685
      Top = 10
      Anchors = [akTop, akRight]
      Caption = 'EXCEL'
      TabOrder = 1
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
    object cxLabel2: TcxLabel
      Left = 40
      Top = 18
      Caption = #3611#3637#3591#3610
    end
    object list_year: TComboBox
      Left = 73
      Top = 14
      Width = 62
      Height = 21
      ItemIndex = 1
      TabOrder = 3
      Text = '2559'
      Items.Strings = (
        '2558'
        '2559'
        '2560'
        '2561')
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 496
    Width = 786
    Height = 27
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      786
      27)
    object RzBitBtn1: TRzBitBtn
      Left = 708
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
  end
  object show_visit: TcxGrid
    AlignWithMargins = True
    Left = 3
    Top = 77
    Width = 780
    Height = 416
    Align = alClient
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object show_visitDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = Dkpi_fanc
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnFilteredItemsList = True
      OptionsData.Appending = True
      OptionsView.GroupByBox = False
      object show_visitDBTableView1person_id: TcxGridDBColumn
        Caption = 'PID'
        DataBinding.FieldName = 'person_id'
        Width = 66
      end
      object show_visitDBTableView1patient_hn: TcxGridDBColumn
        Caption = 'HN'
        DataBinding.FieldName = 'patient_hn'
        Width = 69
      end
      object show_visitDBTableView1Fname: TcxGridDBColumn
        DataBinding.FieldName = 'Fname'
        Width = 140
      end
      object show_visitDBTableView1house_regist_type_id: TcxGridDBColumn
        Caption = 'type'
        DataBinding.FieldName = 'house_regist_type_id'
        Width = 35
      end
      object show_visitDBTableView1discharge: TcxGridDBColumn
        DataBinding.FieldName = 'discharge'
        Width = 69
      end
      object show_visitDBTableView1anc_register_date: TcxGridDBColumn
        Caption = 'register'
        DataBinding.FieldName = 'anc_register_date'
        OnCustomDrawCell = show_visitDBTableView1anc_register_dateCustomDrawCell
      end
      object show_visitDBTableView1pre_labor_service1_date: TcxGridDBColumn
        Caption = 'service1'
        DataBinding.FieldName = 'pre_labor_service1_date'
        OnCustomDrawCell = show_visitDBTableView1pre_labor_service1_dateCustomDrawCell
      end
      object show_visitDBTableView1preg_no: TcxGridDBColumn
        DataBinding.FieldName = 'preg_no'
        OnCustomDrawCell = show_visitDBTableView1preg_noCustomDrawCell
        Width = 68
      end
      object show_visitDBTableView1current_preg_age: TcxGridDBColumn
        Caption = 'preg_age'
        DataBinding.FieldName = 'current_preg_age'
        OnCustomDrawCell = show_visitDBTableView1current_preg_ageCustomDrawCell
      end
      object show_visitDBTableView1edc: TcxGridDBColumn
        DataBinding.FieldName = 'edc'
        OnCustomDrawCell = show_visitDBTableView1edcCustomDrawCell
      end
      object show_visitDBTableView1lmp: TcxGridDBColumn
        DataBinding.FieldName = 'lmp'
        OnCustomDrawCell = show_visitDBTableView1lmpCustomDrawCell
      end
      object show_visitDBTableView1vaccine_tt_complete: TcxGridDBColumn
        Caption = 'tt_complete'
        DataBinding.FieldName = 'vaccine_tt_complete'
        OnCustomDrawCell = show_visitDBTableView1vaccine_tt_completeCustomDrawCell
        Width = 75
      end
      object show_visitDBTableView1vaccine_tt1_date: TcxGridDBColumn
        Caption = 'vcc_tt1'
        DataBinding.FieldName = 'vaccine_tt1_date'
        OnCustomDrawCell = show_visitDBTableView1vaccine_tt1_dateCustomDrawCell
      end
      object show_visitDBTableView1vaccine_tt2_date: TcxGridDBColumn
        Caption = 'vcc_tt2'
        DataBinding.FieldName = 'vaccine_tt2_date'
        OnCustomDrawCell = show_visitDBTableView1vaccine_tt2_dateCustomDrawCell
      end
      object show_visitDBTableView1vaccine_tt3_date: TcxGridDBColumn
        Caption = 'vcc_tt3'
        DataBinding.FieldName = 'vaccine_tt3_date'
        OnCustomDrawCell = show_visitDBTableView1vaccine_tt3_dateCustomDrawCell
      end
      object show_visitDBTableView1vaccine_tt4_date: TcxGridDBColumn
        Caption = 'vcc_tt4'
        DataBinding.FieldName = 'vaccine_tt4_date'
        OnCustomDrawCell = show_visitDBTableView1vaccine_tt4_dateCustomDrawCell
      end
      object show_visitDBTableView1vaccine_dtanc1_date: TcxGridDBColumn
        Caption = 'vcc_dtanc1'
        DataBinding.FieldName = 'vaccine_dtanc1_date'
        OnCustomDrawCell = show_visitDBTableView1vaccine_dtanc1_dateCustomDrawCell
        Width = 100
      end
      object show_visitDBTableView1vaccine_dtanc2_date: TcxGridDBColumn
        Caption = 'vcc_dtanc2'
        DataBinding.FieldName = 'vaccine_dtanc2_date'
        OnCustomDrawCell = show_visitDBTableView1vaccine_dtanc2_dateCustomDrawCell
        Width = 74
      end
      object show_visitDBTableView1vaccine_dtanc3_date: TcxGridDBColumn
        Caption = 'vcc_dtanc3'
        DataBinding.FieldName = 'vaccine_dtanc3_date'
        OnCustomDrawCell = show_visitDBTableView1vaccine_dtanc3_dateCustomDrawCell
      end
      object show_visitDBTableView1vaccine_dtanc4_date: TcxGridDBColumn
        Caption = 'vcc_dtanc4'
        DataBinding.FieldName = 'vaccine_dtanc4_date'
        OnCustomDrawCell = show_visitDBTableView1vaccine_dtanc4_dateCustomDrawCell
      end
      object show_visitDBTableView1vaccine_dtanc5_date: TcxGridDBColumn
        Caption = 'vcc_dtanc5'
        DataBinding.FieldName = 'vaccine_dtanc5_date'
        OnCustomDrawCell = show_visitDBTableView1vaccine_dtanc5_dateCustomDrawCell
      end
      object show_visitDBTableView1blood_vdrl1_result: TcxGridDBColumn
        Caption = 'blood_vdrl1'
        DataBinding.FieldName = 'blood_vdrl1_result'
        OnCustomDrawCell = show_visitDBTableView1blood_vdrl1_resultCustomDrawCell
        Width = 89
      end
      object show_visitDBTableView1blood_vdrl2_result: TcxGridDBColumn
        Caption = 'blood_vdrl2'
        DataBinding.FieldName = 'blood_vdrl2_result'
        OnCustomDrawCell = show_visitDBTableView1blood_vdrl2_resultCustomDrawCell
        Width = 89
      end
      object show_visitDBTableView1blood_hct_grade: TcxGridDBColumn
        Caption = 'hct_grade'
        DataBinding.FieldName = 'blood_hct_grade'
        OnCustomDrawCell = show_visitDBTableView1blood_hct_gradeCustomDrawCell
      end
      object show_visitDBTableView1blood_hct_result: TcxGridDBColumn
        Caption = 'hct_result'
        DataBinding.FieldName = 'blood_hct_result'
        OnCustomDrawCell = show_visitDBTableView1blood_hct_resultCustomDrawCell
        Width = 74
      end
      object show_visitDBTableView1blood_hiv1_result: TcxGridDBColumn
        Caption = 'blood_hiv1'
        DataBinding.FieldName = 'blood_hiv1_result'
        OnCustomDrawCell = show_visitDBTableView1blood_hiv1_resultCustomDrawCell
        Width = 88
      end
      object show_visitDBTableView1blood_hiv2_result: TcxGridDBColumn
        Caption = 'blood_hiv2'
        DataBinding.FieldName = 'blood_hiv2_result'
        OnCustomDrawCell = show_visitDBTableView1blood_hiv2_resultCustomDrawCell
        Width = 88
      end
    end
    object show_visitLevel1: TcxGridLevel
      GridView = show_visitDBTableView1
    end
  end
  object process_Qrb1k: TcxProgressBar
    Left = 40
    Top = 288
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 4
    Visible = False
    Width = 691
  end
  object Qkpi_fanc: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO opdscreen'
      
        '  (vn, hn, vstdate, vsttime, bpd, bps, bw, cc, hr, pe, pulse, te' +
        'mperature, rr, height, bmi, hpi, pmh, waist)'
      'VALUES'
      
        '  (:vn, :hn, :vstdate, :vsttime, :bpd, :bps, :bw, :cc, :hr, :pe,' +
        ' :pulse, :temperature, :rr, :height, :bmi, :hpi, :pmh, :waist)')
    Connection = db_connect_m.connect_db
    SQL.Strings = (
      'set @year = :year-543 ;'
      '#set @year = 2016 ;'
      ''
      
        'SELECT a.person_id,p.patient_hn,concat(p.pname," ",p.fname," ",p' +
        '.lname)as Fname,a.anc_register_date,'
      
        'if(a.pre_labor_service1_date is not null,a.pre_labor_service1_da' +
        'te,(select precare_date from person_anc_other_precare where pers' +
        'on_anc_id = a.person_anc_id AND precare_no = 1))as pre_labor_ser' +
        'vice1_date,'
      'a.anc_register_staff,a.preg_no,a.current_preg_age,a.edc,a.lmp,'
      
        'a.vaccine_tt1_date,a.vaccine_tt2_date,a.vaccine_tt3_date,a.vacci' +
        'ne_tt4_date,'
      
        'a.vaccine_dtanc1_date,a.vaccine_dtanc2_date,a.vaccine_dtanc3_dat' +
        'e,a.vaccine_dtanc4_date,a.vaccine_dtanc5_date,'
      
        'a.blood_vdrl1_result,a.blood_vdrl2_result,a.blood_hct_result,a.b' +
        'lood_hiv1_result,a.blood_hiv2_result,'
      
        'a.vaccine_tt_complete,a.blood_hct_grade,a.discharge,p.house_regi' +
        'st_type_id'
      'from person_anc as a'
      'LEFT OUTER JOIN person as p ON p.person_id = a.person_id'
      
        'where  a.anc_register_date BETWEEN concat(@year-1,'#39'1001'#39') AND co' +
        'ncat(@year,'#39'0930'#39')'
      ''
      'AND p.house_regist_type_id in (1,3)'
      'GROUP BY person_id')
    ReadOnly = True
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.AutoRefresh = True
    Options.AutoRefreshInterval = 120
    Left = 320
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'year'
      end>
  end
  object Dkpi_fanc: TMyDataSource
    DataSet = Qkpi_fanc
    Left = 424
    Top = 168
  end
end
