object emslog_form: Temslog_form
  Left = 0
  Top = 0
  Caption = 'emslog_form'
  ClientHeight = 522
  ClientWidth = 790
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
    790
    522)
  PixelsPerInch = 96
  TextHeight = 13
  object show_visit: TcxGrid
    AlignWithMargins = True
    Left = 3
    Top = 93
    Width = 784
    Height = 399
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
      DataController.DataSource = data_emslog
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
        Width = 60
      end
      object show_visitDBTableView1vsttime: TcxGridDBColumn
        DataBinding.FieldName = 'vsttime'
        Width = 60
      end
      object show_visitDBTableView1hn: TcxGridDBColumn
        DataBinding.FieldName = 'hn'
        Width = 69
      end
      object show_visitDBTableView1ptname: TcxGridDBColumn
        DataBinding.FieldName = 'ptname'
        Width = 136
      end
      object show_visitDBTableView1cid: TcxGridDBColumn
        DataBinding.FieldName = 'cid'
        Width = 97
      end
      object show_visitDBTableView1visit_type_name: TcxGridDBColumn
        Caption = 'visit_type'
        DataBinding.FieldName = 'visit_type_name'
        Width = 74
      end
      object show_visitDBTableView1pt_walk_name: TcxGridDBColumn
        Caption = 'pt_walk'
        DataBinding.FieldName = 'pt_walk_name'
        Width = 63
      end
      object show_visitDBTableView1revisit48hr: TcxGridDBColumn
        DataBinding.FieldName = 'revisit48hr'
        Width = 66
      end
      object show_visitDBTableView1admit_2hr: TcxGridDBColumn
        DataBinding.FieldName = 'admit_2hr'
        Width = 64
      end
      object show_visitDBTableView1cc: TcxGridDBColumn
        DataBinding.FieldName = 'cc'
        Width = 183
      end
      object show_visitDBTableView1hpi: TcxGridDBColumn
        DataBinding.FieldName = 'hpi'
        Width = 203
      end
      object show_visitDBTableView1pmh: TcxGridDBColumn
        DataBinding.FieldName = 'pmh'
        Width = 207
      end
      object show_visitDBTableView1er_list: TcxGridDBColumn
        DataBinding.FieldName = 'er_list'
        Width = 251
      end
      object show_visitDBTableView1er_pt_type: TcxGridDBColumn
        DataBinding.FieldName = 'er_pt_type'
        Width = 81
      end
      object show_visitDBTableView1emergency: TcxGridDBColumn
        DataBinding.FieldName = 'emergency'
        Width = 86
      end
      object show_visitDBTableView1trauma: TcxGridDBColumn
        DataBinding.FieldName = 'trauma'
        Width = 47
      end
      object show_visitDBTableView1accident_type: TcxGridDBColumn
        DataBinding.FieldName = 'accident_type'
        Width = 213
      end
      object show_visitDBTableView1bpd: TcxGridDBColumn
        DataBinding.FieldName = 'bpd'
      end
      object show_visitDBTableView1bps: TcxGridDBColumn
        DataBinding.FieldName = 'bps'
      end
      object show_visitDBTableView1bw: TcxGridDBColumn
        DataBinding.FieldName = 'bw'
      end
      object show_visitDBTableView1hr: TcxGridDBColumn
        DataBinding.FieldName = 'hr'
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
      object show_visitDBTableView1gcs_e: TcxGridDBColumn
        DataBinding.FieldName = 'gcs_e'
      end
      object show_visitDBTableView1gcs_v: TcxGridDBColumn
        DataBinding.FieldName = 'gcs_v'
      end
      object show_visitDBTableView1gcs_m: TcxGridDBColumn
        DataBinding.FieldName = 'gcs_m'
      end
      object show_visitDBTableView1pupil_l: TcxGridDBColumn
        DataBinding.FieldName = 'pupil_l'
      end
      object show_visitDBTableView1pupil_r: TcxGridDBColumn
        DataBinding.FieldName = 'pupil_r'
      end
      object show_visitDBTableView1o2sat: TcxGridDBColumn
        DataBinding.FieldName = 'o2sat'
      end
      object show_visitDBTableView1person_type: TcxGridDBColumn
        DataBinding.FieldName = 'person_type'
        Width = 81
      end
      object show_visitDBTableView1alcohol: TcxGridDBColumn
        DataBinding.FieldName = 'alcohol'
        Width = 50
      end
      object show_visitDBTableView1drug: TcxGridDBColumn
        DataBinding.FieldName = 'drug'
        Width = 45
      end
      object show_visitDBTableView1airway: TcxGridDBColumn
        DataBinding.FieldName = 'airway'
        Width = 57
      end
      object show_visitDBTableView1bleed: TcxGridDBColumn
        DataBinding.FieldName = 'bleed'
        Width = 127
      end
      object show_visitDBTableView1belt: TcxGridDBColumn
        DataBinding.FieldName = 'belt'
        Width = 40
      end
      object show_visitDBTableView1helmet: TcxGridDBColumn
        DataBinding.FieldName = 'helmet'
        Width = 46
      end
      object show_visitDBTableView1splint: TcxGridDBColumn
        DataBinding.FieldName = 'splint'
        Width = 49
      end
      object show_visitDBTableView1fluid: TcxGridDBColumn
        DataBinding.FieldName = 'fluid'
        Width = 46
      end
      object show_visitDBTableView1refer_hosptype: TcxGridDBColumn
        DataBinding.FieldName = 'refer_hosptype'
        Width = 96
      end
      object show_visitDBTableView1refer_sender: TcxGridDBColumn
        DataBinding.FieldName = 'refer_sender'
        Width = 82
      end
      object show_visitDBTableView1transport_type: TcxGridDBColumn
        DataBinding.FieldName = 'transport_type'
        Width = 91
      end
      object show_visitDBTableView1accident_note_text: TcxGridDBColumn
        DataBinding.FieldName = 'accident_note_text'
        Width = 117
      end
      object show_visitDBTableView1pdx: TcxGridDBColumn
        DataBinding.FieldName = 'pdx'
      end
      object show_visitDBTableView1department: TcxGridDBColumn
        DataBinding.FieldName = 'department'
        Width = 108
      end
      object show_visitDBTableView1doctor_list: TcxGridDBColumn
        DataBinding.FieldName = 'doctor_list'
      end
    end
    object show_visitLevel1: TcxGridLevel
      GridView = show_visitDBTableView1
    end
  end
  object header_opdlog: TJvNavPanelHeader
    Left = 0
    Top = 0
    Width = 790
    Height = 49
    Align = alTop
    Caption = 'ACCDENT MONITOR'
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
    Width = 790
    Height = 41
    Align = alTop
    TabOrder = 0
    DesignSize = (
      790
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
      Left = 569
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
      Left = 689
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
    Top = 495
    Width = 790
    Height = 27
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      790
      27)
    object close_btn: TRzBitBtn
      Left = 712
      Top = 3
      Anchors = [akRight, akBottom]
      Caption = 'Exit'
      TabOrder = 0
      OnClick = close_btnClick
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
      Left = 633
      Top = 2
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
    Width = 724
  end
  object Qshow_emslog: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO opdscreen'
      
        '  (vn, hn, vstdate, vsttime, bpd, bps, bw, cc, hr, pe, pulse, te' +
        'mperature, rr, height, bmi, hpi, pmh, waist)'
      'VALUES'
      
        '  (:vn, :hn, :vstdate, :vsttime, :bpd, :bps, :bw, :cc, :hr, :pe,' +
        ' :pulse, :temperature, :rr, :height, :bmi, :hpi, :pmh, :waist)')
    Connection = db_connect_m.connect_db
    SQL.Strings = (
      
        'select distinct v.vn,oc.vstdate,oc.vsttime,p.hn,concat(p.pname,p' +
        '.fname," ",p.lname)as ptname,p.cid,'
      
        '  vt.visit_type_name,pw.`name` as pt_walk_name,ems.revisit48hr,e' +
        'ms.admit_2hr,'
      
        '  oc.cc,oc.hpi,oc.pmh,erl.er_list,ept.`name` as er_pt_type,eme.`' +
        'name` as emergency,ems.trauma,'
      
        '  act.er_accident_type_name as accident_type,oc.bpd,oc.bps,oc.bw' +
        ',oc.hr,oc.pe,oc.pulse,oc.rr,'
      
        '  ems.gcs_e,ems.gcs_v,ems.gcs_m,ems.pupil_l,ems.pupil_r,ems.o2sa' +
        't,apt.accident_person_type_name as person_type,'
      
        #9'alc.accident_alcohol_type_name as alcohol,drug.accident_drug_ty' +
        'pe_name as drug,airway.accident_airway_type_name as airway,'
      
        #9'bleed.accident_bleed_type_name as bleed,belt.accident_belt_type' +
        '_name as belt,helmet.accident_helmet_type_name as helmet,'
      
        #9'splint.accident_splint_type_name as splint,fluid.accident_fluid' +
        '_type_name as fluid,'
      
        #9'hos1.name as refer_hosptype,hos2.name as refer_sender,tran.acci' +
        'dent_transport_type_name as transport_type,'
      
        '  ems.accident_note_text,v.pdx,k.department,GROUP_CONCAT(oq.doct' +
        'or_list_text) as doctor_list'
      
        '                                                                ' +
        '               '
      '  from er_nursing_detail ems '
      #9'LEFT OUTER JOIN er_regist erl on erl.vn = ems.vn'
      #9'LEFT OUTER JOIN ovst_doctor_sign ods on ods.vn = erl.vn'
      
        '  LEFT OUTER JOIN er_emergency_type eme on '#9'eme.er_emergency_typ' +
        'e = erl.er_emergency_type'
      
        '  LEFT OUTER JOIN er_pt_type ept on '#9'ept.er_pt_type = erl.er_pt_' +
        'type'
      
        '  LEFT OUTER JOIN er_period peri on '#9'peri.er_period = erl.er_per' +
        'iod'#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9
      '  left OUTER join vn_stat v on v.vn=erl.vn '
      
        '  left outer join ovst as o on o.vn = erl.vn                    ' +
        '                                                        '
      
        '  left OUTER join patient p on p.hn=v.hn                        ' +
        '                                                       '
      
        '  left OUTER join kskdepartment k on k.depcode = ods.depcode    ' +
        '                                                         '
      
        '  left OUTER join icd101 i1 on i1.code=v.pdx                    ' +
        '                                                       '
      '  left outer join opdscreen oc on oc.vn=ods.vn   '
      '  left outer join pt_walk pw on pw.walk_id = oc.walk_id  '
      '  left outer join visit_type vt on vt.visit_type = o.visit_type'
      '  left outer join ovst_seq oq on oq.vn = erl.vn'
      
        'LEFT OUTER JOIN er_accident_type act on act.er_accident_type_id ' +
        '= ems.er_accident_type_id'
      
        'LEFT OUTER JOIN accident_person_type apt on apt.accident_person_' +
        'type_id = ems.accident_person_type_id'
      
        'LEFT OUTER JOIN accident_alcohol_type alc on alc.accident_alcoho' +
        'l_type_id = ems.accident_alcohol_type_id'
      
        'LEFT OUTER JOIN accident_drug_type drug on drug.accident_drug_ty' +
        'pe_id = ems.accident_drug_type_id'
      
        'LEFT OUTER JOIN accident_airway_type airway on airway.accident_a' +
        'irway_type_id = ems.accident_airway_type_id'
      
        'LEFT OUTER JOIN accident_bleed_type bleed on bleed.accident_blee' +
        'd_type_id = ems.accident_bleed_type_id'
      
        'LEFT OUTER JOIN accident_belt_type belt on belt.accident_belt_ty' +
        'pe_id = ems.accident_belt_type_id'
      
        'LEFT OUTER JOIN accident_helmet_type helmet on helmet.accident_h' +
        'elmet_type_id = ems.accident_helmet_type_id'
      
        'LEFT OUTER JOIN accident_splint_type splint on splint.accident_s' +
        'plint_type_id = ems.accident_splint_type_id'
      
        'LEFT OUTER JOIN accident_fluid_type fluid on fluid.accident_flui' +
        'd_type_id = ems.accident_fluid_type_id'
      
        'LEFT OUTER JOIN accident_transport_type tran on tran.accident_tr' +
        'ansport_type_id = ems.accident_transport_type_id'
      
        'LEFT OUTER JOIN er_refer_hosptype ret on ret.er_refer_hosptype_i' +
        'd = ems.er_refer_hosptype_id'
      
        'LEFT OUTER JOIN hospcode hos1 on hos1.hospcode = ems.er_refer_ho' +
        'sptype_id'
      
        'LEFT OUTER JOIN hospcode hos2 on hos2.hospcode = ems.er_refer_se' +
        'nder_id'
      ''
      '  where v.vstdate between :date_start_text AND :date_end_text'
      ' #where v.vstdate between 20160401 AND 20160401'
      '  AND v.pdx not between '#39'B20'#39' AND '#39'B24'#39
      '  AND erl.er_emergency_type != 4'
      ''
      '  group by v.vn'
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
  object data_emslog: TMyDataSource
    DataSet = Qshow_emslog
    Left = 424
    Top = 168
  end
end
