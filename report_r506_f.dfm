object report_r506_form: Treport_r506_form
  Left = 0
  Top = 0
  Caption = 'report_r506_form'
  ClientHeight = 535
  ClientWidth = 744
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
    744
    535)
  PixelsPerInch = 96
  TextHeight = 13
  object header_opdlog: TJvNavPanelHeader
    Left = 0
    Top = 0
    Width = 744
    Height = 33
    Align = alTop
    Caption = '  '#3619#3634#3618#3594#3639#3656#3629#3612#3641#3657#3611#3656#3623#3618' 506'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ImageIndex = 0
    ExplicitLeft = -42
    ExplicitWidth = 786
  end
  object Panel2: TPanel
    Left = 0
    Top = 33
    Width = 744
    Height = 41
    Align = alTop
    TabOrder = 1
    ExplicitLeft = -42
    ExplicitWidth = 786
    DesignSize = (
      744
      41)
    object post_date_btn: TRzBitBtn
      Left = 523
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
      ExplicitLeft = 565
    end
    object excel_export_btn: TRzBitBtn
      Left = 643
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
      ExplicitLeft = 685
    end
    object cxLabel2: TcxLabel
      Left = 40
      Top = 18
      Caption = #3623#3633#3609#3607#3637#3656
    end
    object date_start_text: TcxDateEdit
      Left = 70
      Top = 14
      TabOrder = 3
      Width = 121
    end
    object date_end_text: TcxDateEdit
      Left = 197
      Top = 14
      TabOrder = 4
      Width = 121
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 508
    Width = 744
    Height = 27
    Align = alBottom
    TabOrder = 2
    ExplicitLeft = -42
    ExplicitTop = 496
    ExplicitWidth = 786
    DesignSize = (
      744
      27)
    object RzBitBtn1: TRzBitBtn
      Left = 666
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
      ExplicitLeft = 708
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
      Left = 585
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
  object show_visit: TcxGrid
    AlignWithMargins = True
    Left = 3
    Top = 77
    Width = 738
    Height = 428
    Align = alClient
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    ExplicitLeft = -36
    ExplicitWidth = 780
    ExplicitHeight = 416
    object show_visitDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = Dshow_r506
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnFilteredItemsList = True
      OptionsData.Appending = True
      OptionsView.GroupByBox = False
      object show_visitDBTableView1sv_number: TcxGridDBColumn
        DataBinding.FieldName = 'sv_number'
        Width = 72
      end
      object show_visitDBTableView1send_epidem: TcxGridDBColumn
        DataBinding.FieldName = 'send_epidem'
        Width = 89
      end
      object show_visitDBTableView1report_date: TcxGridDBColumn
        DataBinding.FieldName = 'report_date'
      end
      object show_visitDBTableView1E0: TcxGridDBColumn
        DataBinding.FieldName = 'E0'
        Width = 34
      end
      object show_visitDBTableView1E1: TcxGridDBColumn
        DataBinding.FieldName = 'E1'
        Width = 34
      end
      object show_visitDBTableView1case_refer_out: TcxGridDBColumn
        Caption = 'case_refer'
        DataBinding.FieldName = 'case_refer_out'
        Width = 82
      end
      object show_visitDBTableView1hserv: TcxGridDBColumn
        DataBinding.FieldName = 'hserv'
        Width = 62
      end
      object show_visitDBTableView1hospital: TcxGridDBColumn
        DataBinding.FieldName = 'hospital'
        Width = 65
      end
      object show_visitDBTableView1department: TcxGridDBColumn
        DataBinding.FieldName = 'department'
        Width = 74
      end
      object show_visitDBTableView1vstdate: TcxGridDBColumn
        DataBinding.FieldName = 'vstdate'
        Width = 70
      end
      object show_visitDBTableView1begin_date: TcxGridDBColumn
        DataBinding.FieldName = 'begin_date'
        Width = 86
      end
      object show_visitDBTableView1pdx_506: TcxGridDBColumn
        DataBinding.FieldName = 'pdx_506'
        Width = 68
      end
      object show_visitDBTableView1icdname: TcxGridDBColumn
        DataBinding.FieldName = 'icdname'
        Width = 395
      end
      object show_visitDBTableView1pdx_v: TcxGridDBColumn
        DataBinding.FieldName = 'pdx_v'
        Width = 44
      end
      object show_visitDBTableView1sv_code506: TcxGridDBColumn
        Caption = 'code506'
        DataBinding.FieldName = 'sv_code506'
        Width = 58
      end
      object show_visitDBTableView1r506_name: TcxGridDBColumn
        DataBinding.FieldName = 'r506_name'
        Width = 268
      end
      object show_visitDBTableView1ptstat: TcxGridDBColumn
        DataBinding.FieldName = 'ptstat'
        Width = 38
      end
      object show_visitDBTableView1vn: TcxGridDBColumn
        DataBinding.FieldName = 'vn'
      end
      object show_visitDBTableView1hn: TcxGridDBColumn
        DataBinding.FieldName = 'hn'
        Width = 69
      end
      object show_visitDBTableView1cid: TcxGridDBColumn
        DataBinding.FieldName = 'cid'
        Width = 97
      end
      object show_visitDBTableView1ptname: TcxGridDBColumn
        DataBinding.FieldName = 'ptname'
        Width = 128
      end
      object show_visitDBTableView1sex: TcxGridDBColumn
        DataBinding.FieldName = 'sex'
        Width = 39
      end
      object show_visitDBTableView1age_y: TcxGridDBColumn
        DataBinding.FieldName = 'age_y'
        Width = 56
      end
      object show_visitDBTableView1age_m: TcxGridDBColumn
        DataBinding.FieldName = 'age_m'
        Width = 60
      end
      object show_visitDBTableView1age_d: TcxGridDBColumn
        DataBinding.FieldName = 'age_d'
        Width = 57
      end
      object show_visitDBTableView1moopart: TcxGridDBColumn
        DataBinding.FieldName = 'moopart'
        Width = 68
      end
      object show_visitDBTableView1tmbpart: TcxGridDBColumn
        DataBinding.FieldName = 'tmbpart'
        Width = 51
      end
      object show_visitDBTableView1amppart: TcxGridDBColumn
        DataBinding.FieldName = 'amppart'
        Width = 56
      end
      object show_visitDBTableView1chwpart: TcxGridDBColumn
        DataBinding.FieldName = 'chwpart'
        Width = 52
      end
    end
    object show_visitLevel1: TcxGridLevel
      GridView = show_visitDBTableView1
    end
  end
  object process_Qrb1k: TcxProgressBar
    Left = 40
    Top = 336
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 4
    Visible = False
    Width = 691
  end
  object Qshow_r506: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO opdscreen'
      
        '  (vn, hn, vstdate, vsttime, bpd, bps, bw, cc, hr, pe, pulse, te' +
        'mperature, rr, height, bmi, hpi, pmh, waist)'
      'VALUES'
      
        '  (:vn, :hn, :vstdate, :vsttime, :bpd, :bps, :bw, :cc, :hr, :pe,' +
        ' :pulse, :temperature, :rr, :height, :bmi, :hpi, :pmh, :waist)')
    Connection = db_connect_m.connect_db
    SQL.Strings = (
      
        'select '#39#39' as sv_number,'#39#39' as send_epidem,'#39#39' as report_date, '#39#39' a' +
        's E0,'#39#39' as E1,'#39#39' as case_refer_out, '#39#39' as hserv,'#39#39' as hospital,'
      '"IPD" as department,os.vstdate,od.vstdate as begin_date,'
      
        'a.pdx as pdx_506,i1.`name` as icdname,a.pdx as pdx_v,'#39#39' as sv_co' +
        'de506,'
      #39#39' as r506_name,'#39#39' as ptstat,'
      'os.vn,os.hn,pt.cid,concat(pt.fname,'#39' '#39',pt.lname) as ptname,'
      
        'pt.sex,a.age_y,a.age_m,a.age_d,pt.moopart,pt.tmbpart,pt.amppart,' +
        'pt.chwpart'
      ''
      ''
      'from ovst as os  '
      'left outer join patient as pt on pt.hn = os.hn  '
      'LEFT OUTER JOIN ovstdiag  as od on od.vn = os.vn    '
      'left outer join an_stat as a on a.an = os.vn '
      'left outer join icd101 i1 on i1.code = a.pdx '
      
        'left outer join occupation as oc on oc.occupation = pt.occupatio' +
        'n  '
      ''
      'WHERE a.pdx in (select icd10 from ccode506) '
      'AND a.pdx !=""'
      'AND  os.vn not in (select vn from surveil_member)'
      'AND a.regdate BETWEEN :date_start_text AND :date_end_text  '
      '  '
      'GROUP BY os.vn'
      ''
      'UNION ALL'
      
        'select '#39#39' as sv_number,'#39#39' as send_epidem,'#39#39' as report_date, '#39#39' a' +
        's E0,'#39#39' as E1,'#39#39' as case_refer_out, '#39#39' as hserv,'#39#39' as hospital,'
      '"OPD" as department,os.vstdate,od.vstdate as begin_date,'
      
        'v.pdx as pdx_506,i1.`name` as icdname,v.pdx as pdx_v,'#39#39' as sv_co' +
        'de506,'
      #39#39' as r506_name,'#39#39' as ptstat,'
      'os.vn,os.hn,pt.cid,concat(pt.fname,'#39' '#39',pt.lname) as ptname,'
      
        'pt.sex,v.age_y,v.age_m,v.age_d,pt.moopart,pt.tmbpart,pt.amppart,' +
        'pt.chwpart'
      ''
      ''
      'from ovst as os  '
      'left outer join patient as pt on pt.hn = os.hn  '
      'LEFT OUTER JOIN ovstdiag  as od on od.vn = os.vn   '
      'left outer join vn_stat as v on v.vn = os.vn   '
      'left outer join icd101 i1 on i1.code = v.pdx '
      
        'left outer join occupation as oc on oc.occupation = pt.occupatio' +
        'n  '
      ''
      'WHERE v.pdx in (select icd10 from ccode506 ) '
      'AND v.pdx != ""'
      'AND  os.vn not in (select vn from surveil_member)'
      'AND v.vstdate BETWEEN :date_start_text AND :date_end_text  '
      '    '
      'GROUP BY os.vn'
      ''
      'UNION ALL'
      ''
      
        'select s1.sv_number,s1.send_epidem,s1.report_date,s1.hospcode_e0' +
        ' as E0,s1.hospcode_e1 as E1,s1.case_refer_out,s1.hserv,s1.hospit' +
        'al,'
      's1.department,s1.vstdate,s1.begin_date,'
      
        's1.pdx as pdx_506,i1.`name` as icdname,if(v.pdx is not null,v.pd' +
        'x,a.pdx) as pdx_v,'
      's1.code506 as sv_code506,n.`name` as r506_name,s1.ptstat,'
      's1.vn,s1.hn,pt.cid,concat(pt.fname,'#39' '#39',pt.lname) as ptname,'
      
        'pt.sex,v.age_y,v.age_m,v.age_d,pt.moopart,pt.tmbpart,pt.amppart,' +
        'pt.chwpart'
      ''
      ''
      'from surveil_member as s1  '
      'left outer join patient as pt on pt.hn=s1.hn  '
      'left outer join icd101 as i1 on i1.code = s1.pdx  '
      'left outer join name506 as  n on n.code = s1.code506  '
      'left outer join vn_stat as  v on v.vn = s1.vn  '
      'left outer join an_stat as  a on a.an = s1.vn  '
      'left outer join ovst as  o on o.vn = s1.vn'
      ''
      '# WHERE  o.vstdate BETWEEN 20160601 AND 20160630'
      ' WHERE  o.vstdate BETWEEN :date_start_text AND :date_end_text  '
      'ORDER BY send_epidem asc')
    CachedUpdates = True
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    FilterOptions = [foCaseInsensitive]
    Options.FieldsAsString = True
    Options.AutoRefresh = True
    Options.AutoRefreshInterval = 120
    Options.RequiredFields = True
    Options.ReturnParams = True
    Left = 264
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'date_start_text'
      end
      item
        DataType = ftUnknown
        Name = 'date_end_text'
      end
      item
        DataType = ftUnknown
        Name = 'date_start_text'
      end
      item
        DataType = ftUnknown
        Name = 'date_end_text'
      end
      item
        DataType = ftUnknown
        Name = 'date_start_text'
      end
      item
        DataType = ftUnknown
        Name = 'date_end_text'
      end>
  end
  object Dshow_r506: TMyDataSource
    DataSet = Qshow_r506
    Left = 352
    Top = 256
  end
end
