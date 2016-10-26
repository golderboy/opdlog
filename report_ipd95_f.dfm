object report_ipt95_form: Treport_ipt95_form
  Left = 0
  Top = 0
  Caption = 'report_ipt95_form'
  ClientHeight = 538
  ClientWidth = 788
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
    788
    538)
  PixelsPerInch = 96
  TextHeight = 13
  object header_opdlog: TJvNavPanelHeader
    Left = 0
    Top = 0
    Width = 788
    Height = 49
    Align = alTop
    Caption = ' '#3619#3634#3618#3591#3634#3609#3612#3641#3657#3611#3656#3623#3618' Admit '#3626#3636#3607#3608#3636#3660' 95'
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
    Width = 788
    Height = 41
    Align = alTop
    TabOrder = 1
    DesignSize = (
      788
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
      Left = 567
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
      Left = 687
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
    Top = 511
    Width = 788
    Height = 27
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      788
      27)
    object RzBitBtn1: TRzBitBtn
      Left = 710
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
    Top = 93
    Width = 782
    Height = 415
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
      DataController.DataSource = DR_95IPD
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnFilteredItemsList = True
      OptionsData.Appending = True
      OptionsView.GroupByBox = False
      object show_visitDBTableView1hcode: TcxGridDBColumn
        DataBinding.FieldName = 'hcode'
        Width = 44
      end
      object show_visitDBTableView1an: TcxGridDBColumn
        DataBinding.FieldName = 'an'
        Width = 69
      end
      object show_visitDBTableView1hn: TcxGridDBColumn
        DataBinding.FieldName = 'hn'
        Width = 69
      end
      object show_visitDBTableView1regdate: TcxGridDBColumn
        DataBinding.FieldName = 'regdate'
      end
      object show_visitDBTableView1regtime: TcxGridDBColumn
        DataBinding.FieldName = 'regtime'
        Width = 63
      end
      object show_visitDBTableView1dchdate_1: TcxGridDBColumn
        DataBinding.FieldName = 'dchdate_1'
        Width = 74
      end
      object show_visitDBTableView1dchtime: TcxGridDBColumn
        DataBinding.FieldName = 'dchtime'
        Width = 54
      end
      object show_visitDBTableView1admdate: TcxGridDBColumn
        DataBinding.FieldName = 'admdate'
        Width = 72
      end
      object show_visitDBTableView1dchstts: TcxGridDBColumn
        DataBinding.FieldName = 'dchstts'
        Width = 48
      end
      object show_visitDBTableView1dchtype: TcxGridDBColumn
        DataBinding.FieldName = 'dchtype'
        Width = 66
      end
      object show_visitDBTableView1ptname: TcxGridDBColumn
        DataBinding.FieldName = 'ptname'
        Width = 131
      end
      object show_visitDBTableView1cid: TcxGridDBColumn
        DataBinding.FieldName = 'cid'
        Width = 97
      end
      object show_visitDBTableView1birthday: TcxGridDBColumn
        DataBinding.FieldName = 'birthday'
      end
      object show_visitDBTableView1age_y: TcxGridDBColumn
        DataBinding.FieldName = 'age_y'
        Width = 44
      end
      object show_visitDBTableView1age_d: TcxGridDBColumn
        DataBinding.FieldName = 'age_d'
        Width = 57
      end
      object show_visitDBTableView1sex_1: TcxGridDBColumn
        DataBinding.FieldName = 'sex_1'
        Width = 53
      end
      object show_visitDBTableView1chwpart: TcxGridDBColumn
        DataBinding.FieldName = 'chwpart'
        Width = 64
      end
      object show_visitDBTableView1amppart: TcxGridDBColumn
        DataBinding.FieldName = 'amppart'
        Width = 56
      end
      object show_visitDBTableView1marrystatus: TcxGridDBColumn
        DataBinding.FieldName = 'marrystatus'
        Width = 87
      end
      object show_visitDBTableView1occupation: TcxGridDBColumn
        DataBinding.FieldName = 'occupation'
        Width = 84
      end
      object show_visitDBTableView1citizenship: TcxGridDBColumn
        DataBinding.FieldName = 'citizenship'
        Width = 68
      end
      object show_visitDBTableView1ward: TcxGridDBColumn
        DataBinding.FieldName = 'ward'
        Width = 35
      end
      object show_visitDBTableView1spclty: TcxGridDBColumn
        DataBinding.FieldName = 'spclty'
        Width = 41
      end
      object show_visitDBTableView1dx_doctor: TcxGridDBColumn
        DataBinding.FieldName = 'dx_doctor'
      end
      object show_visitDBTableView1pdx: TcxGridDBColumn
        DataBinding.FieldName = 'pdx'
      end
      object show_visitDBTableView1dx0: TcxGridDBColumn
        DataBinding.FieldName = 'dx0'
      end
      object show_visitDBTableView1dx1: TcxGridDBColumn
        DataBinding.FieldName = 'dx1'
      end
      object show_visitDBTableView1dx2: TcxGridDBColumn
        DataBinding.FieldName = 'dx2'
      end
      object show_visitDBTableView1dx3: TcxGridDBColumn
        DataBinding.FieldName = 'dx3'
      end
      object show_visitDBTableView1dx4: TcxGridDBColumn
        DataBinding.FieldName = 'dx4'
      end
      object show_visitDBTableView1dx5: TcxGridDBColumn
        DataBinding.FieldName = 'dx5'
      end
      object show_visitDBTableView1sdx7: TcxGridDBColumn
        DataBinding.FieldName = 'sdx7'
      end
      object show_visitDBTableView1sdx8: TcxGridDBColumn
        DataBinding.FieldName = 'sdx8'
      end
      object show_visitDBTableView1sdx9: TcxGridDBColumn
        DataBinding.FieldName = 'sdx9'
      end
      object show_visitDBTableView1sdx10: TcxGridDBColumn
        DataBinding.FieldName = 'sdx10'
      end
      object show_visitDBTableView1sdx11: TcxGridDBColumn
        DataBinding.FieldName = 'sdx11'
      end
      object show_visitDBTableView1sdx12: TcxGridDBColumn
        DataBinding.FieldName = 'sdx12'
      end
      object show_visitDBTableView1sex: TcxGridDBColumn
        DataBinding.FieldName = 'sex'
      end
      object show_visitDBTableView1age_m: TcxGridDBColumn
        DataBinding.FieldName = 'age_m'
      end
      object show_visitDBTableView1aid: TcxGridDBColumn
        DataBinding.FieldName = 'aid'
      end
      object show_visitDBTableView1count_in_month: TcxGridDBColumn
        DataBinding.FieldName = 'count_in_month'
      end
      object show_visitDBTableView1count_in_year: TcxGridDBColumn
        DataBinding.FieldName = 'count_in_year'
      end
      object show_visitDBTableView1pttype: TcxGridDBColumn
        DataBinding.FieldName = 'pttype'
      end
      object show_visitDBTableView1income: TcxGridDBColumn
        DataBinding.FieldName = 'income'
      end
      object show_visitDBTableView1lastvisit: TcxGridDBColumn
        DataBinding.FieldName = 'lastvisit'
      end
      object show_visitDBTableView1dchdate: TcxGridDBColumn
        DataBinding.FieldName = 'dchdate'
      end
      object show_visitDBTableView1drg: TcxGridDBColumn
        DataBinding.FieldName = 'drg'
      end
      object show_visitDBTableView1rw: TcxGridDBColumn
        DataBinding.FieldName = 'rw'
      end
      object show_visitDBTableView1ot: TcxGridDBColumn
        DataBinding.FieldName = 'ot'
      end
      object show_visitDBTableView1los: TcxGridDBColumn
        DataBinding.FieldName = 'los'
      end
      object show_visitDBTableView1print_done: TcxGridDBColumn
        DataBinding.FieldName = 'print_done'
        Width = 69
      end
      object show_visitDBTableView1print_count: TcxGridDBColumn
        DataBinding.FieldName = 'print_count'
      end
      object show_visitDBTableView1paid_money: TcxGridDBColumn
        DataBinding.FieldName = 'paid_money'
      end
      object show_visitDBTableView1remain_money: TcxGridDBColumn
        DataBinding.FieldName = 'remain_money'
      end
      object show_visitDBTableView1uc_money: TcxGridDBColumn
        DataBinding.FieldName = 'uc_money'
      end
      object show_visitDBTableView1item_money: TcxGridDBColumn
        DataBinding.FieldName = 'item_money'
      end
      object show_visitDBTableView1pttype_in_region: TcxGridDBColumn
        DataBinding.FieldName = 'pttype_in_region'
      end
      object show_visitDBTableView1pcode: TcxGridDBColumn
        DataBinding.FieldName = 'pcode'
        Width = 45
      end
      object show_visitDBTableView1op0: TcxGridDBColumn
        DataBinding.FieldName = 'op0'
      end
      object show_visitDBTableView1op1: TcxGridDBColumn
        DataBinding.FieldName = 'op1'
      end
      object show_visitDBTableView1op2: TcxGridDBColumn
        DataBinding.FieldName = 'op2'
      end
      object show_visitDBTableView1op3: TcxGridDBColumn
        DataBinding.FieldName = 'op3'
      end
      object show_visitDBTableView1op4: TcxGridDBColumn
        DataBinding.FieldName = 'op4'
      end
      object show_visitDBTableView1op5: TcxGridDBColumn
        DataBinding.FieldName = 'op5'
      end
      object show_visitDBTableView1op6: TcxGridDBColumn
        DataBinding.FieldName = 'op6'
      end
      object show_visitDBTableView1proc7: TcxGridDBColumn
        DataBinding.FieldName = 'proc7'
      end
      object show_visitDBTableView1proc8: TcxGridDBColumn
        DataBinding.FieldName = 'proc8'
      end
      object show_visitDBTableView1proc9: TcxGridDBColumn
        DataBinding.FieldName = 'proc9'
      end
      object show_visitDBTableView1proc10: TcxGridDBColumn
        DataBinding.FieldName = 'proc10'
      end
      object show_visitDBTableView1proc11: TcxGridDBColumn
        DataBinding.FieldName = 'proc11'
      end
      object show_visitDBTableView1proc12: TcxGridDBColumn
        DataBinding.FieldName = 'proc12'
      end
      object show_visitDBTableView1dr_op: TcxGridDBColumn
        DataBinding.FieldName = 'dr_op'
      end
      object show_visitDBTableView1inc01: TcxGridDBColumn
        DataBinding.FieldName = 'inc01'
      end
      object show_visitDBTableView1inc02: TcxGridDBColumn
        DataBinding.FieldName = 'inc02'
      end
      object show_visitDBTableView1inc03: TcxGridDBColumn
        DataBinding.FieldName = 'inc03'
      end
      object show_visitDBTableView1inc04: TcxGridDBColumn
        DataBinding.FieldName = 'inc04'
      end
      object show_visitDBTableView1inc05: TcxGridDBColumn
        DataBinding.FieldName = 'inc05'
      end
      object show_visitDBTableView1inc06: TcxGridDBColumn
        DataBinding.FieldName = 'inc06'
      end
      object show_visitDBTableView1inc07: TcxGridDBColumn
        DataBinding.FieldName = 'inc07'
      end
      object show_visitDBTableView1inc08: TcxGridDBColumn
        DataBinding.FieldName = 'inc08'
      end
      object show_visitDBTableView1inc09: TcxGridDBColumn
        DataBinding.FieldName = 'inc09'
      end
      object show_visitDBTableView1inc10: TcxGridDBColumn
        DataBinding.FieldName = 'inc10'
      end
      object show_visitDBTableView1inc11: TcxGridDBColumn
        DataBinding.FieldName = 'inc11'
      end
      object show_visitDBTableView1inc12: TcxGridDBColumn
        DataBinding.FieldName = 'inc12'
      end
      object show_visitDBTableView1inc13: TcxGridDBColumn
        DataBinding.FieldName = 'inc13'
      end
      object show_visitDBTableView1inc14: TcxGridDBColumn
        DataBinding.FieldName = 'inc14'
      end
      object show_visitDBTableView1inc15: TcxGridDBColumn
        DataBinding.FieldName = 'inc15'
      end
      object show_visitDBTableView1inc16: TcxGridDBColumn
        DataBinding.FieldName = 'inc16'
      end
      object show_visitDBTableView1vn: TcxGridDBColumn
        DataBinding.FieldName = 'vn'
      end
      object show_visitDBTableView1inc17: TcxGridDBColumn
        DataBinding.FieldName = 'inc17'
      end
      object show_visitDBTableView1pttypeno: TcxGridDBColumn
        DataBinding.FieldName = 'pttypeno'
      end
      object show_visitDBTableView1moopart: TcxGridDBColumn
        DataBinding.FieldName = 'moopart'
      end
      object show_visitDBTableView1gr504: TcxGridDBColumn
        DataBinding.FieldName = 'gr504'
      end
      object show_visitDBTableView1accident_code: TcxGridDBColumn
        DataBinding.FieldName = 'accident_code'
      end
      object show_visitDBTableView1lastvisit_hour: TcxGridDBColumn
        DataBinding.FieldName = 'lastvisit_hour'
      end
      object show_visitDBTableView1rcpt_money: TcxGridDBColumn
        DataBinding.FieldName = 'rcpt_money'
      end
      object show_visitDBTableView1discount_money: TcxGridDBColumn
        DataBinding.FieldName = 'discount_money'
      end
      object show_visitDBTableView1old_diagnosis: TcxGridDBColumn
        DataBinding.FieldName = 'old_diagnosis'
      end
      object show_visitDBTableView1debt_id_list: TcxGridDBColumn
        DataBinding.FieldName = 'debt_id_list'
      end
      object show_visitDBTableView1admit_hour: TcxGridDBColumn
        DataBinding.FieldName = 'admit_hour'
      end
      object show_visitDBTableView1an_guid: TcxGridDBColumn
        DataBinding.FieldName = 'an_guid'
      end
      object show_visitDBTableView1admdate_cut24: TcxGridDBColumn
        DataBinding.FieldName = 'admdate_cut24'
        Width = 121
      end
      object show_visitDBTableView1hos_guid: TcxGridDBColumn
        DataBinding.FieldName = 'hos_guid'
      end
      object show_visitDBTableView1debt_money: TcxGridDBColumn
        DataBinding.FieldName = 'debt_money'
      end
      object show_visitDBTableView1opd_wait_money: TcxGridDBColumn
        DataBinding.FieldName = 'opd_wait_money'
      end
      object show_visitDBTableView1an_1: TcxGridDBColumn
        DataBinding.FieldName = 'an_1'
      end
      object show_visitDBTableView1admdoctor: TcxGridDBColumn
        DataBinding.FieldName = 'admdoctor'
        Width = 71
      end
      object show_visitDBTableView1dthdiagdct: TcxGridDBColumn
        DataBinding.FieldName = 'dthdiagdct'
      end
      object show_visitDBTableView1hn_1: TcxGridDBColumn
        DataBinding.FieldName = 'hn_1'
      end
      object show_visitDBTableView1ivstist: TcxGridDBColumn
        DataBinding.FieldName = 'ivstist'
      end
      object show_visitDBTableView1ivstost: TcxGridDBColumn
        DataBinding.FieldName = 'ivstost'
      end
      object show_visitDBTableView1lockdx: TcxGridDBColumn
        DataBinding.FieldName = 'lockdx'
      end
      object show_visitDBTableView1prediag: TcxGridDBColumn
        DataBinding.FieldName = 'prediag'
        Width = 229
      end
      object show_visitDBTableView1pttype_1: TcxGridDBColumn
        DataBinding.FieldName = 'pttype_1'
      end
      object show_visitDBTableView1regdate_1: TcxGridDBColumn
        DataBinding.FieldName = 'regdate_1'
      end
      object show_visitDBTableView1rfrics: TcxGridDBColumn
        DataBinding.FieldName = 'rfrics'
      end
      object show_visitDBTableView1rfrilct: TcxGridDBColumn
        DataBinding.FieldName = 'rfrilct'
      end
      object show_visitDBTableView1rfrocs: TcxGridDBColumn
        DataBinding.FieldName = 'rfrocs'
      end
      object show_visitDBTableView1rfrolct: TcxGridDBColumn
        DataBinding.FieldName = 'rfrolct'
      end
      object show_visitDBTableView1spclty_1: TcxGridDBColumn
        DataBinding.FieldName = 'spclty_1'
      end
      object show_visitDBTableView1vn_1: TcxGridDBColumn
        DataBinding.FieldName = 'vn_1'
      end
      object show_visitDBTableView1ward_1: TcxGridDBColumn
        DataBinding.FieldName = 'ward_1'
      end
      object show_visitDBTableView1rcpt_disease: TcxGridDBColumn
        DataBinding.FieldName = 'rcpt_disease'
      end
      object show_visitDBTableView1dch_doctor: TcxGridDBColumn
        DataBinding.FieldName = 'dch_doctor'
      end
      object show_visitDBTableView1ipt_type: TcxGridDBColumn
        DataBinding.FieldName = 'ipt_type'
      end
      object show_visitDBTableView1iref_type: TcxGridDBColumn
        DataBinding.FieldName = 'iref_type'
      end
      object show_visitDBTableView1ipacc: TcxGridDBColumn
        DataBinding.FieldName = 'ipacc'
      end
      object show_visitDBTableView1act_money_limit: TcxGridDBColumn
        DataBinding.FieldName = 'act_money_limit'
      end
      object show_visitDBTableView1drg_1: TcxGridDBColumn
        DataBinding.FieldName = 'drg_1'
      end
      object show_visitDBTableView1mdc: TcxGridDBColumn
        DataBinding.FieldName = 'mdc'
      end
      object show_visitDBTableView1rw_1: TcxGridDBColumn
        DataBinding.FieldName = 'rw_1'
      end
      object show_visitDBTableView1wtlos: TcxGridDBColumn
        DataBinding.FieldName = 'wtlos'
      end
      object show_visitDBTableView1ot_1: TcxGridDBColumn
        DataBinding.FieldName = 'ot_1'
      end
      object show_visitDBTableView1result: TcxGridDBColumn
        DataBinding.FieldName = 'result'
      end
      object show_visitDBTableView1gravidity: TcxGridDBColumn
        DataBinding.FieldName = 'gravidity'
      end
      object show_visitDBTableView1parity: TcxGridDBColumn
        DataBinding.FieldName = 'parity'
      end
      object show_visitDBTableView1living_children: TcxGridDBColumn
        DataBinding.FieldName = 'living_children'
      end
      object show_visitDBTableView1rxdoctor: TcxGridDBColumn
        DataBinding.FieldName = 'rxdoctor'
      end
      object show_visitDBTableView1staff: TcxGridDBColumn
        DataBinding.FieldName = 'staff'
      end
      object show_visitDBTableView1bw: TcxGridDBColumn
        DataBinding.FieldName = 'bw'
      end
      object show_visitDBTableView1first_ward: TcxGridDBColumn
        DataBinding.FieldName = 'first_ward'
      end
      object show_visitDBTableView1refer_out_number: TcxGridDBColumn
        DataBinding.FieldName = 'refer_out_number'
      end
      object show_visitDBTableView1incharge_doctor: TcxGridDBColumn
        DataBinding.FieldName = 'incharge_doctor'
      end
      object show_visitDBTableView1an_guid_1: TcxGridDBColumn
        DataBinding.FieldName = 'an_guid_1'
      end
      object show_visitDBTableView1an_lock: TcxGridDBColumn
        DataBinding.FieldName = 'an_lock'
      end
      object show_visitDBTableView1ergent: TcxGridDBColumn
        DataBinding.FieldName = 'ergent'
      end
      object show_visitDBTableView1chart_state: TcxGridDBColumn
        DataBinding.FieldName = 'chart_state'
      end
      object show_visitDBTableView1receive_chart_date_time: TcxGridDBColumn
        DataBinding.FieldName = 'receive_chart_date_time'
      end
      object show_visitDBTableView1receive_chart_staff: TcxGridDBColumn
        DataBinding.FieldName = 'receive_chart_staff'
      end
      object show_visitDBTableView1receive_chart_note: TcxGridDBColumn
        DataBinding.FieldName = 'receive_chart_note'
      end
      object show_visitDBTableView1adjrw: TcxGridDBColumn
        DataBinding.FieldName = 'adjrw'
      end
      object show_visitDBTableView1ipt_spclty: TcxGridDBColumn
        DataBinding.FieldName = 'ipt_spclty'
      end
      object show_visitDBTableView1finance_lock: TcxGridDBColumn
        DataBinding.FieldName = 'finance_lock'
      end
      object show_visitDBTableView1last_check_autoincome: TcxGridDBColumn
        DataBinding.FieldName = 'last_check_autoincome'
      end
      object show_visitDBTableView1admit_fee_guid: TcxGridDBColumn
        DataBinding.FieldName = 'admit_fee_guid'
      end
      object show_visitDBTableView1leave_home_day: TcxGridDBColumn
        DataBinding.FieldName = 'leave_home_day'
      end
      object show_visitDBTableView1operation_status: TcxGridDBColumn
        DataBinding.FieldName = 'operation_status'
      end
      object show_visitDBTableView1finance_summary_date: TcxGridDBColumn
        DataBinding.FieldName = 'finance_summary_date'
      end
      object show_visitDBTableView1estimate_discharge_date: TcxGridDBColumn
        DataBinding.FieldName = 'estimate_discharge_date'
      end
      object show_visitDBTableView1old_cause_revisit: TcxGridDBColumn
        DataBinding.FieldName = 'old_cause_revisit'
      end
      object show_visitDBTableView1finance_transfer: TcxGridDBColumn
        DataBinding.FieldName = 'finance_transfer'
      end
      object show_visitDBTableView1provision_dx: TcxGridDBColumn
        DataBinding.FieldName = 'provision_dx'
        Width = 82
      end
      object show_visitDBTableView1dw_hhc_list_id: TcxGridDBColumn
        DataBinding.FieldName = 'dw_hhc_list_id'
      end
      object show_visitDBTableView1hos_guid_1: TcxGridDBColumn
        DataBinding.FieldName = 'hos_guid_1'
      end
      object show_visitDBTableView1hos_guid_ext: TcxGridDBColumn
        DataBinding.FieldName = 'hos_guid_ext'
      end
      object show_visitDBTableView1body_height: TcxGridDBColumn
        DataBinding.FieldName = 'body_height'
      end
      object show_visitDBTableView1update_datetime: TcxGridDBColumn
        DataBinding.FieldName = 'update_datetime'
      end
      object show_visitDBTableView1cur_dep_code: TcxGridDBColumn
        DataBinding.FieldName = 'cur_dep_code'
      end
      object show_visitDBTableView1finance_status_flag: TcxGridDBColumn
        DataBinding.FieldName = 'finance_status_flag'
      end
      object show_visitDBTableView1ipt_admit_type_id: TcxGridDBColumn
        DataBinding.FieldName = 'ipt_admit_type_id'
      end
      object show_visitDBTableView1no_visit: TcxGridDBColumn
        DataBinding.FieldName = 'no_visit'
      end
      object show_visitDBTableView1no_food: TcxGridDBColumn
        DataBinding.FieldName = 'no_food'
      end
      object show_visitDBTableView1confirm_discharge: TcxGridDBColumn
        DataBinding.FieldName = 'confirm_discharge'
      end
      object show_visitDBTableView1lab_status: TcxGridDBColumn
        DataBinding.FieldName = 'lab_status'
      end
      object show_visitDBTableView1xray_status: TcxGridDBColumn
        DataBinding.FieldName = 'xray_status'
      end
      object show_visitDBTableView1provision_dx_icd: TcxGridDBColumn
        DataBinding.FieldName = 'provision_dx_icd'
      end
      object show_visitDBTableView1ipt_severe_type_id: TcxGridDBColumn
        DataBinding.FieldName = 'ipt_severe_type_id'
      end
      object show_visitDBTableView1ipt_cause_type_note: TcxGridDBColumn
        DataBinding.FieldName = 'ipt_cause_type_note'
      end
      object show_visitDBTableView1followup: TcxGridDBColumn
        DataBinding.FieldName = 'followup'
      end
      object show_visitDBTableView1dch_severe_type_id: TcxGridDBColumn
        DataBinding.FieldName = 'dch_severe_type_id'
      end
      object show_visitDBTableView1opd_finance_wait_tr: TcxGridDBColumn
        DataBinding.FieldName = 'opd_finance_wait_tr'
      end
      object show_visitDBTableView1rcpno_list: TcxGridDBColumn
        DataBinding.FieldName = 'rcpno_list'
      end
      object show_visitDBTableView1grouper_version: TcxGridDBColumn
        DataBinding.FieldName = 'grouper_version'
      end
      object show_visitDBTableView1grouper_err: TcxGridDBColumn
        DataBinding.FieldName = 'grouper_err'
      end
      object show_visitDBTableView1grouper_warn: TcxGridDBColumn
        DataBinding.FieldName = 'grouper_warn'
      end
      object show_visitDBTableView1grouper_actlos: TcxGridDBColumn
        DataBinding.FieldName = 'grouper_actlos'
      end
      object show_visitDBTableView1auto_charge_amount: TcxGridDBColumn
        DataBinding.FieldName = 'auto_charge_amount'
      end
      object show_visitDBTableView1ipt_cause_type_id: TcxGridDBColumn
        DataBinding.FieldName = 'ipt_cause_type_id'
      end
    end
    object show_visitLevel1: TcxGridLevel
      GridView = show_visitDBTableView1
    end
  end
  object process_Qrb1k: TcxProgressBar
    Left = 37
    Top = 288
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 4
    Visible = False
    Width = 751
  end
  object QR_95IPD: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO opdscreen'
      
        '  (vn, hn, vstdate, vsttime, bpd, bps, bw, cc, hr, pe, pulse, te' +
        'mperature, rr, height, bmi, hpi, pmh, waist)'
      'VALUES'
      
        '  (:vn, :hn, :vstdate, :vsttime, :bpd, :bps, :bw, :cc, :hr, :pe,' +
        ' :pulse, :temperature, :rr, :height, :bmi, :hpi, :pmh, :waist)')
    Connection = db_connect_m.connect_db
    SQL.Strings = (
      'select '#39'11207'#39' as hcode,a.*,ip.*,'
      
        'concat(p.pname,p.fname,'#39' '#39',p.lname) as ptname,p.marrystatus,p.oc' +
        'cupation,p.citizenship,p.chwpart,p.amppart,'
      'p.cid,p.birthday,p.sex,'
      
        #39#39' as sdx7,'#39#39' as sdx8,'#39#39' as sdx9,'#39#39' as sdx10,'#39#39' as sdx11,'#39#39' as s' +
        'dx12,'
      
        #39#39' as proc7,'#39#39' as proc8,'#39#39' as proc9,'#39#39' as proc10,'#39#39' as proc11,'#39#39 +
        ' as proc12,'
      #39#39' as dr_op,o.hospmain,o.hospsub '
      'from an_stat as a'
      'LEFT OUTER JOIN patient as p ON p.hn = a.hn'
      'LEFT OUTER JOIN ipt as ip ON ip.an = a.an'
      'LEFT OUTER JOIN ovst as o ON o.vn = a.vn '
      ''
      'where a.dchdate between 20151001 AND 20160930'
      '#where a.dchdate between :date_start_text AND :date_end_text'
      'AND a.pttype = 95'
      'group by a.an'
      ''
      'limit 10')
    ReadOnly = True
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.AutoRefresh = True
    Options.AutoRefreshInterval = 120
    Left = 320
    Top = 168
  end
  object DR_95IPD: TMyDataSource
    DataSet = QR_95IPD
    Left = 424
    Top = 168
  end
end
