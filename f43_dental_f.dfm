object f43_dental_form: Tf43_dental_form
  Left = 0
  Top = 0
  Caption = 'f43_dental_form'
  ClientHeight = 545
  ClientWidth = 780
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
    780
    545)
  PixelsPerInch = 96
  TextHeight = 13
  object header_opdlog: TJvNavPanelHeader
    Left = 0
    Top = 0
    Width = 780
    Height = 33
    Align = alTop
    Caption = ' DENTAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ImageIndex = 0
    ExplicitWidth = 769
  end
  object Panel2: TPanel
    Left = 0
    Top = 33
    Width = 780
    Height = 41
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 769
    DesignSize = (
      780
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
      Left = 559
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
      ExplicitLeft = 548
    end
    object excel_export_btn: TRzBitBtn
      Left = 679
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
      ExplicitLeft = 668
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 518
    Width = 780
    Height = 27
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 510
    ExplicitWidth = 769
    DesignSize = (
      780
      27)
    object RzBitBtn1: TRzBitBtn
      Left = 702
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
      ExplicitLeft = 691
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
    Width = 774
    Height = 438
    Align = alClient
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    ExplicitWidth = 763
    ExplicitHeight = 430
    object show_visitDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = Df43_dent
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnFilteredItemsList = True
      OptionsData.Appending = True
      OptionsView.GroupByBox = False
      object show_visitDBTableView1HOSPCODE: TcxGridDBColumn
        DataBinding.FieldName = 'HOSPCODE'
        Width = 82
      end
      object show_visitDBTableView1PID: TcxGridDBColumn
        DataBinding.FieldName = 'PID'
      end
      object show_visitDBTableView1SEQ: TcxGridDBColumn
        DataBinding.FieldName = 'SEQ'
      end
      object show_visitDBTableView1DATE_SERV: TcxGridDBColumn
        DataBinding.FieldName = 'DATE_SERV'
        Width = 99
      end
      object show_visitDBTableView1DENTTYPE: TcxGridDBColumn
        DataBinding.FieldName = 'DENTTYPE'
        Width = 80
      end
      object show_visitDBTableView1SERVPLACE: TcxGridDBColumn
        DataBinding.FieldName = 'SERVPLACE'
        Width = 98
      end
      object show_visitDBTableView1PTEETH: TcxGridDBColumn
        DataBinding.FieldName = 'PTEETH'
        Width = 73
      end
      object show_visitDBTableView1PCARIES: TcxGridDBColumn
        DataBinding.FieldName = 'PCARIES'
        Width = 64
      end
      object show_visitDBTableView1PFILLING: TcxGridDBColumn
        DataBinding.FieldName = 'PFILLING'
        Width = 63
      end
      object show_visitDBTableView1PEXTRACT: TcxGridDBColumn
        DataBinding.FieldName = 'PEXTRACT'
        Width = 90
      end
      object show_visitDBTableView1DTEETH: TcxGridDBColumn
        DataBinding.FieldName = 'DTEETH'
        Width = 62
      end
      object show_visitDBTableView1DCARIES: TcxGridDBColumn
        DataBinding.FieldName = 'DCARIES'
        Width = 65
      end
      object show_visitDBTableView1DFILLING: TcxGridDBColumn
        DataBinding.FieldName = 'DFILLING'
        Width = 76
      end
      object show_visitDBTableView1DEXTRACT: TcxGridDBColumn
        DataBinding.FieldName = 'DEXTRACT'
        Width = 79
      end
      object show_visitDBTableView1NEED_FLUORIDE: TcxGridDBColumn
        DataBinding.FieldName = 'NEED_FLUORIDE'
        Width = 118
      end
      object show_visitDBTableView1NEED_SCALING: TcxGridDBColumn
        DataBinding.FieldName = 'NEED_SCALING'
        Width = 108
      end
      object show_visitDBTableView1NEED_SEALANT: TcxGridDBColumn
        DataBinding.FieldName = 'NEED_SEALANT'
        Width = 113
      end
      object show_visitDBTableView1NEED_PFILLING: TcxGridDBColumn
        DataBinding.FieldName = 'NEED_PFILLING'
        Width = 108
      end
      object show_visitDBTableView1NEED_DFILLING: TcxGridDBColumn
        DataBinding.FieldName = 'NEED_DFILLING'
        Width = 109
      end
      object show_visitDBTableView1NEED_PEXTRACT: TcxGridDBColumn
        DataBinding.FieldName = 'NEED_PEXTRACT'
        Width = 123
      end
      object show_visitDBTableView1NEED_DEXTRACT: TcxGridDBColumn
        DataBinding.FieldName = 'NEED_DEXTRACT'
        Width = 136
      end
      object show_visitDBTableView1NPROSTHESIS: TcxGridDBColumn
        DataBinding.FieldName = 'NPROSTHESIS'
        Width = 115
      end
      object show_visitDBTableView1PERMANENT_PERMANENT: TcxGridDBColumn
        DataBinding.FieldName = 'PERMANENT_PERMANENT'
        Width = 185
      end
      object show_visitDBTableView1PERMANENT_PROSTHESIS: TcxGridDBColumn
        DataBinding.FieldName = 'PERMANENT_PROSTHESIS'
        Width = 198
      end
      object show_visitDBTableView1PROSTHESIS_PROSTHESIS: TcxGridDBColumn
        DataBinding.FieldName = 'PROSTHESIS_PROSTHESIS'
        Width = 187
      end
      object show_visitDBTableView1GUM: TcxGridDBColumn
        DataBinding.FieldName = 'GUM'
        Width = 48
      end
      object show_visitDBTableView1SCHOOLTYPE: TcxGridDBColumn
        DataBinding.FieldName = 'SCHOOLTYPE'
        Width = 109
      end
      object show_visitDBTableView1CLASS: TcxGridDBColumn
        DataBinding.FieldName = 'CLASS'
        Width = 49
      end
      object show_visitDBTableView1PROVIDER: TcxGridDBColumn
        DataBinding.FieldName = 'PROVIDER'
        Width = 97
      end
      object show_visitDBTableView1D_UPDATE: TcxGridDBColumn
        DataBinding.FieldName = 'D_UPDATE'
        Width = 104
      end
      object show_visitDBTableView1CID: TcxGridDBColumn
        DataBinding.FieldName = 'CID'
        Width = 97
      end
      object show_visitDBTableView1HN: TcxGridDBColumn
        DataBinding.FieldName = 'HN'
        Width = 69
      end
      object show_visitDBTableView1ptname: TcxGridDBColumn
        DataBinding.FieldName = 'ptname'
        Width = 143
      end
      object show_visitDBTableView1typearea: TcxGridDBColumn
        DataBinding.FieldName = 'typearea'
        Width = 72
      end
      object show_visitDBTableView1discharge: TcxGridDBColumn
        DataBinding.FieldName = 'discharge'
        Width = 78
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
  object Qf43_dent: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO opdscreen'
      
        '  (vn, hn, vstdate, vsttime, bpd, bps, bw, cc, hr, pe, pulse, te' +
        'mperature, rr, height, bmi, hpi, pmh, waist)'
      'VALUES'
      
        '  (:vn, :hn, :vstdate, :vsttime, :bpd, :bps, :bw, :cc, :hr, :pe,' +
        ' :pulse, :temperature, :rr, :height, :bmi, :hpi, :pmh, :waist)')
    Connection = db_connect_m.connect_db
    SQL.Strings = (
      'SELECT '
      '(SELECT hospitalcode FROM opdconfig) AS HOSPCODE,'#9
      'IFNULL(p.person_id,o.hn) AS PID,'
      'dc.vn AS SEQ,'
      
        'IF(o.vstdate='#39#39' OR o.vstdate = NULL,'#39#39',DATE_FORMAT(o.vstdate,'#39'%Y' +
        '%m%d'#39')) AS DATE_SERV,'
      
        'IF(dc.dental_care_type_id IS NULL OR dc.dental_care_type_id = '#39#39 +
        ','#39'5'#39',dc.dental_care_type_id) AS DENTTYPE,'
      
        'IF(dc.dental_care_service_place_type_id  IS NULL OR dc.dental_ca' +
        're_service_place_type_id  = '#39#39','#39'1'#39',dc.dental_care_service_place_' +
        'type_id ) AS SERVPLACE,'
      'IFNULL(dc.pteeth,'#39'0'#39') AS PTEETH,'
      'IFNULL(dc.pcaries,'#39'0'#39') AS PCARIES,'
      'IFNULL(dc.pfilling,'#39'0'#39') AS PFILLING,'
      'IFNULL(dc.pextract,'#39'0'#39') AS PEXTRACT,'
      'IFNULL(dc.dteeth,'#39'0'#39') AS DTEETH,'
      'IFNULL(dc.dcaries,'#39'0'#39') AS DCARIES,'
      'IFNULL(dc.dfilling,'#39'0'#39')AS DFILLING,'
      'IFNULL(dc.dextract,'#39'0'#39') AS DEXTRACT,'
      'IFNULL(dc.need_fluoride,'#39'2'#39') AS NEED_FLUORIDE,'
      'IFNULL(dc.need_scaling,'#39'2'#39') AS NEED_SCALING,'
      'IFNULL(dc.need_sealant,'#39'0'#39') AS NEED_SEALANT,'
      'IFNULL(dc.need_pfilling,'#39'0'#39') AS NEED_PFILLING,'
      'IFNULL(dc.need_dfilling,'#39'0'#39') AS NEED_DFILLING,'
      'IFNULL(dc.need_pextract,'#39'0'#39') AS NEED_PEXTRACT,'
      'IFNULL(dc.need_dextract,'#39'0'#39') AS NEED_DEXTRACT,'
      'IFNULL(dc.dental_care_nprosthesis_id,'#39'4'#39') AS NPROSTHESIS,'
      'IFNULL(dc.permanent_perma,'#39'0'#39') AS PERMANENT_PERMANENT,'
      'IFNULL(dc.permanent_prost,'#39'0'#39') AS PERMANENT_PROSTHESIS,'
      'IFNULL(dc.prosthesis_prost,'#39'0'#39') AS PROSTHESIS_PROSTHESIS,'
      
        'CONCAT(IFNULL(dental_care_gum_type_id_1,'#39'9'#39'),IFNULL(dental_care_' +
        'gum_type_id_2,'#39'9'#39'),IFNULL(dental_care_gum_type_id_3,'#39'9'#39'),'
      
        'IFNULL(dental_care_gum_type_id_4,'#39'9'#39'),IFNULL(dental_care_gum_typ' +
        'e_id_5,'#39'9'#39'),IFNULL(dental_care_gum_type_id_6,'#39'9'#39'))AS GUM,'
      'IFNULL(dc.dental_care_school_type_id,'#39#39') AS SCHOOLTYPE,'
      'IFNULL(dc.dental_care_school_class_type_id,'#39#39') AS CLASS,'
      
        'IFNULL((SELECT cid FROM doctor WHERE dc.doctor = `code`),'#39#39') AS ' +
        'PROVIDER,'
      
        'IF(dc.entry_datetime IS NULL OR TRIM(dc.entry_datetime)='#39#39' OR dc' +
        '.entry_datetime LIKE '#39'0000-00-00%'#39','#39#39',DATE_FORMAT(dc.entry_datet' +
        'ime,'#39'%Y%m%d%H%i%s'#39'))AS D_UPDATE,'
      'IFNULL(IFNULL(pt.cid,p.cid),'#39#39') AS CID,'
      'IFNULL(p.patient_hn,pt.hn) as HN,'
      
        'IFNULL(concat(p.pname,p.fname," ",p.lname),concat(pt.pname,pt.fn' +
        'ame," ",pt.lname)) as ptname,'
      'IFNULL(p.house_regist_type_id,pt.type_area) as typearea,'
      'p.person_discharge_id as discharge'
      ''
      'FROM dental_care dc'
      'LEFT JOIN ovst o ON dc.vn = o.vn'
      'LEFT JOIN person p ON o.hn = p.patient_hn'
      'LEFT JOIN patient pt ON o.hn = pt.hn'
      'WHERE pt.hn IS NOT NULL '
      '#AND o.vstdate BETWEEN 20160701 AND 20160731'
      'AND o.vstdate BETWEEN :date_start_text AND :date_end_text'
      '#BETWEEN :date_start_text AND :date_end_text')
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
  object Df43_dent: TMyDataSource
    DataSet = Qf43_dent
    Left = 424
    Top = 168
  end
end
