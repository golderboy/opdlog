object report_rb1k: Treport_rb1k
  Left = 0
  Top = 0
  Caption = 'report_rb1k'
  ClientHeight = 541
  ClientWidth = 757
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
    757
    541)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 757
    Height = 41
    Align = alTop
    TabOrder = 0
    DesignSize = (
      757
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
      Left = 536
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
      Left = 656
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
  object group_data: TcxGroupBox
    Left = 0
    Top = 509
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      757
      32)
    Height = 32
    Width = 757
    object RzBitBtn4: TRzBitBtn
      Left = 682
      Top = 6
      Anchors = [akRight, akBottom]
      Caption = 'EXIT'
      TabOrder = 0
      OnClick = RzBitBtn4Click
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000420B0000420B00000001000000000000000000003300
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
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8A5D8
        D8D8D8D8A5E8E8E8E8E8E8E8E8E8AC8181818181ACE8E8E8E8E8E8E8E8D890B4
        B4B4B4B490D8E8E8E8E8E8E8E881E2ACACACACACE281E8E8E8E8E8E8D8B4B4B4
        B4B4B4B4B4B4D8E8E8E8E8E881ACACACACACACACACAC81E8E8E8E8D8B4B4B4B4
        B4B4B4B4B4B4B4D8E8E8E881ACACACACACACACACACACAC81E8E8A590B4B4D7D7
        B4B4B4D7D7B4B490A5E8ACE2ACACD7D7ACACACD7D7ACACE2ACE8D8B4B4B4D7D7
        D7B4D7D7D7B4B4B4D8E881ACACACD7D7D7ACD7D7D7ACACAC81E8D8B4B4B4B4D7
        D7D7D7D7B4B4B4B4D8E881ACACACACD7D7D7D7D7ACACACAC81E8D8B4B4B4B4B4
        D7D7D7B4B4B4B4B4D8E881ACACACACACD7D7D7ACACACACAC81E8D8B4B4B4B4D7
        D7D7D7D7B4B4B4B4D8E881ACACACACD7D7D7D7D7ACACACAC81E8D8B4B4B4D7D7
        D7B4D7D7D7B4B4B4D8E881ACACACD7D7D7ACD7D7D7ACACAC81E8A590B4B4D7D7
        B4B4B4D7D7B4B490A5E8ACE2ACACD7D7ACACACD7D7ACACE2ACE8E8D8B4B4B4B4
        B4B4B4B4B4B4B4D8E8E8E881ACACACACACACACACACACAC81E8E8E8E8D8B4B4B4
        B4B4B4B4B4B4D8E8E8E8E8E881ACACACACACACACACAC81E8E8E8E8E8E8D890B4
        B4B4B4B490D8E8E8E8E8E8E8E881E2ACACACACACE281E8E8E8E8E8E8E8E8A5D8
        D8D8D8D8A5E8E8E8E8E8E8E8E8E8AC8181818181ACE8E8E8E8E8}
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
      Left = 590
      Top = 6
      Height = 26
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
    Top = 44
    Width = 751
    Height = 462
    Align = alClient
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object show_visitDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnFilteredItemsList = True
      OptionsData.Appending = True
      object show_visitDBTableView1vn: TcxGridDBColumn
        DataBinding.FieldName = 'vn'
        Width = 75
      end
      object show_visitDBTableView1hn: TcxGridDBColumn
        DataBinding.FieldName = 'hn'
        Width = 65
      end
      object show_visitDBTableView1an: TcxGridDBColumn
        DataBinding.FieldName = 'an'
        Width = 78
      end
      object show_visitDBTableView1vstdate: TcxGridDBColumn
        DataBinding.FieldName = 'vstdate'
        Width = 78
      end
      object show_visitDBTableView1vsttime: TcxGridDBColumn
        DataBinding.FieldName = 'vsttime'
        Width = 82
      end
      object show_visitDBTableView1oqueue: TcxGridDBColumn
        DataBinding.FieldName = 'oqueue'
        Width = 54
      end
      object show_visitDBTableView1ptname: TcxGridDBColumn
        DataBinding.FieldName = 'ptname'
        Width = 100
      end
      object show_visitDBTableView1spclty_name: TcxGridDBColumn
        DataBinding.FieldName = 'spclty_name'
      end
      object show_visitDBTableView1ovstist_name: TcxGridDBColumn
        DataBinding.FieldName = 'ovstist_name'
      end
      object show_visitDBTableView1department_name: TcxGridDBColumn
        DataBinding.FieldName = 'department_name'
      end
      object show_visitDBTableView1register_department_name: TcxGridDBColumn
        DataBinding.FieldName = 'register_department_name'
      end
      object show_visitDBTableView1pt_walk_name: TcxGridDBColumn
        DataBinding.FieldName = 'pt_walk_name'
      end
      object show_visitDBTableView1height: TcxGridDBColumn
        DataBinding.FieldName = 'height'
      end
      object show_visitDBTableView1waist: TcxGridDBColumn
        DataBinding.FieldName = 'waist'
      end
      object show_visitDBTableView1bmi: TcxGridDBColumn
        DataBinding.FieldName = 'bmi'
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
      object show_visitDBTableView1temperature: TcxGridDBColumn
        DataBinding.FieldName = 'temperature'
      end
      object show_visitDBTableView1cc: TcxGridDBColumn
        DataBinding.FieldName = 'cc'
      end
      object show_visitDBTableView1hpi: TcxGridDBColumn
        DataBinding.FieldName = 'hpi'
      end
      object show_visitDBTableView1pmh: TcxGridDBColumn
        DataBinding.FieldName = 'pmh'
      end
      object show_visitDBTableView1pttype_name: TcxGridDBColumn
        DataBinding.FieldName = 'pttype_name'
      end
      object show_visitDBTableView1pttypeno: TcxGridDBColumn
        DataBinding.FieldName = 'pttypeno'
      end
      object show_visitDBTableView1pdx_name: TcxGridDBColumn
        DataBinding.FieldName = 'pdx_name'
      end
      object show_visitDBTableView1ost_name: TcxGridDBColumn
        DataBinding.FieldName = 'ost_name'
      end
      object show_visitDBTableView1hospital_department_name: TcxGridDBColumn
        DataBinding.FieldName = 'hospital_department_name'
      end
      object show_visitDBTableView1doctor_list_text: TcxGridDBColumn
        DataBinding.FieldName = 'doctor_list_text'
      end
      object show_visitDBTableView1sub_spclty_name: TcxGridDBColumn
        DataBinding.FieldName = 'sub_spclty_name'
      end
      object show_visitDBTableView1visit_type_name: TcxGridDBColumn
        DataBinding.FieldName = 'visit_type_name'
      end
      object show_visitDBTableView1age_y: TcxGridDBColumn
        DataBinding.FieldName = 'age_y'
      end
      object show_visitDBTableView1age_m: TcxGridDBColumn
        DataBinding.FieldName = 'age_m'
      end
      object show_visitDBTableView1age_d: TcxGridDBColumn
        DataBinding.FieldName = 'age_d'
      end
      object show_visitDBTableView1income: TcxGridDBColumn
        DataBinding.FieldName = 'income'
      end
    end
    object show_visitLevel1: TcxGridLevel
      GridView = show_visitDBTableView1
    end
  end
  object report_view: TcxGrid
    AlignWithMargins = True
    Left = 3
    Top = 44
    Width = 751
    Height = 462
    Align = alClient
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    ExplicitLeft = -2
    object cxGridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = Dshow_rb1k
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnFilteredItemsList = True
      OptionsData.Appending = True
      OptionsView.GroupByBox = False
      object cxGridDBTableView1vn: TcxGridDBColumn
        DataBinding.FieldName = 'vn'
      end
      object cxGridDBTableView1vstdate: TcxGridDBColumn
        DataBinding.FieldName = 'vstdate'
      end
      object cxGridDBTableView1vsttime: TcxGridDBColumn
        DataBinding.FieldName = 'vsttime'
      end
      object cxGridDBTableView1oqueue: TcxGridDBColumn
        DataBinding.FieldName = 'oqueue'
        Width = 52
      end
      object cxGridDBTableView1hn: TcxGridDBColumn
        DataBinding.FieldName = 'hn'
        Width = 69
      end
      object cxGridDBTableView1ptname: TcxGridDBColumn
        DataBinding.FieldName = 'ptname'
        Width = 147
      end
      object cxGridDBTableView1cid: TcxGridDBColumn
        DataBinding.FieldName = 'cid'
      end
      object cxGridDBTableView1sex: TcxGridDBColumn
        DataBinding.FieldName = 'sex'
        Width = 29
      end
      object cxGridDBTableView1birthday: TcxGridDBColumn
        DataBinding.FieldName = 'birthday'
      end
      object cxGridDBTableView1age: TcxGridDBColumn
        DataBinding.FieldName = 'age'
        Width = 56
      end
      object cxGridDBTableView1type_area: TcxGridDBColumn
        Caption = 'type'
        DataBinding.FieldName = 'type_area'
        Width = 32
      end
      object cxGridDBTableView1pttype: TcxGridDBColumn
        DataBinding.FieldName = 'pttype'
        Width = 55
      end
      object cxGridDBTableView1pttype_name: TcxGridDBColumn
        DataBinding.FieldName = 'pttype_name'
        Width = 183
      end
      object cxGridDBTableView1pttypeno: TcxGridDBColumn
        DataBinding.FieldName = 'pttypeno'
        Width = 117
      end
      object cxGridDBTableView1hospmain: TcxGridDBColumn
        DataBinding.FieldName = 'hospmain'
      end
      object cxGridDBTableView1hospsub: TcxGridDBColumn
        DataBinding.FieldName = 'hospsub'
      end
      object cxGridDBTableView1spclty_name: TcxGridDBColumn
        DataBinding.FieldName = 'spclty_name'
        Width = 145
      end
      object cxGridDBTableView1ovstist_name: TcxGridDBColumn
        DataBinding.FieldName = 'ovstist_name'
        Width = 124
      end
      object cxGridDBTableView1department_name: TcxGridDBColumn
        DataBinding.FieldName = 'department_name'
        Width = 153
      end
      object cxGridDBTableView1register_department_name: TcxGridDBColumn
        DataBinding.FieldName = 'register_department_name'
        Width = 179
      end
      object cxGridDBTableView1doctor_list_text: TcxGridDBColumn
        DataBinding.FieldName = 'doctor_list_text'
      end
      object cxGridDBTableView1pt_walk_name: TcxGridDBColumn
        Caption = 'pt_walk'
        DataBinding.FieldName = 'pt_walk_name'
        Width = 51
      end
      object cxGridDBTableView1visit_type_name: TcxGridDBColumn
        DataBinding.FieldName = 'visit_type_name'
        Width = 103
      end
      object cxGridDBTableView1addr: TcxGridDBColumn
        DataBinding.FieldName = 'addr'
        Width = 324
      end
      object cxGridDBTableView1tombon: TcxGridDBColumn
        DataBinding.FieldName = 'tombon'
        Width = 69
      end
      object cxGridDBTableView1aumpur: TcxGridDBColumn
        DataBinding.FieldName = 'aumpur'
        Width = 79
      end
      object cxGridDBTableView1chanwat: TcxGridDBColumn
        DataBinding.FieldName = 'chanwat'
        Width = 83
      end
      object cxGridDBTableView1cc: TcxGridDBColumn
        DataBinding.FieldName = 'cc'
        Width = 219
      end
      object cxGridDBTableView1main_pdx: TcxGridDBColumn
        Caption = 'pdx'
        DataBinding.FieldName = 'main_pdx'
        Width = 64
      end
      object cxGridDBTableView1pdx_name: TcxGridDBColumn
        DataBinding.FieldName = 'pdx_name'
        Width = 593
      end
      object cxGridDBTableView1dx0: TcxGridDBColumn
        DataBinding.FieldName = 'dx0'
      end
      object cxGridDBTableView1dx1: TcxGridDBColumn
        DataBinding.FieldName = 'dx1'
      end
      object cxGridDBTableView1dx2: TcxGridDBColumn
        DataBinding.FieldName = 'dx2'
      end
      object cxGridDBTableView1dx3: TcxGridDBColumn
        DataBinding.FieldName = 'dx3'
      end
      object cxGridDBTableView1dx4: TcxGridDBColumn
        DataBinding.FieldName = 'dx4'
      end
      object cxGridDBTableView1dx5: TcxGridDBColumn
        DataBinding.FieldName = 'dx5'
      end
      object cxGridDBTableView1drname: TcxGridDBColumn
        DataBinding.FieldName = 'drname'
        Width = 141
      end
      object cxGridDBTableView1income: TcxGridDBColumn
        DataBinding.FieldName = 'income'
        Width = 62
      end
      object cxGridDBTableView1paid: TcxGridDBColumn
        DataBinding.FieldName = 'paid'
        Width = 68
      end
      object cxGridDBTableView1remain: TcxGridDBColumn
        DataBinding.FieldName = 'remain'
        Width = 59
      end
      object cxGridDBTableView1uc: TcxGridDBColumn
        DataBinding.FieldName = 'uc'
        Width = 58
      end
      object cxGridDBTableView1item_money: TcxGridDBColumn
        DataBinding.FieldName = 'item_money'
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
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
  object Dshow_rb1k: TMyDataSource
    DataSet = Qshow_rb1k
    Left = 352
    Top = 256
  end
  object Qshow_rb1k: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO opdscreen'
      
        '  (vn, hn, vstdate, vsttime, bpd, bps, bw, cc, hr, pe, pulse, te' +
        'mperature, rr, height, bmi, hpi, pmh, waist)'
      'VALUES'
      
        '  (:vn, :hn, :vstdate, :vsttime, :bpd, :bps, :bw, :cc, :hr, :pe,' +
        ' :pulse, :temperature, :rr, :height, :bmi, :hpi, :pmh, :waist)')
    Connection = db_connect_m.connect_db
    SQL.Strings = (
      
        'select o.vn,o.vstdate,o.vsttime,o.oqueue,o.hn,concat(p.pname,p.f' +
        'name," ",p.lname) as ptname,p.cid,sn.name as sex'
      
        '   ,p.birthday,concat(v.age_y,"-",v.age_m,"-",v.age_d)as age,p.t' +
        'ype_area'
      
        '   ,o.pttype,t.name as pttype_name ,o.pttypeno,o.hospmain,o.hosp' +
        'sub'
      
        '   ,s.name as spclty_name,sti.name as ovstist_name,k.department ' +
        'as department_name   '
      
        '   ,GROUP_CONCAT(k2.department) as register_department_name,GROU' +
        'P_CONCAT(oq.doctor_list_text) as doctor_list_text  '
      '   ,pw.name as pt_walk_name,vt.visit_type_name  '
      
        '   ,p.informaddr as addr,t3.name as tombon,t2.name as aumpur,t1.' +
        'name as chanwat    '
      
        '   ,oc.cc,v.main_pdx, i.name as pdx_name,v.dx0,v.dx1,v.dx2,v.dx3' +
        ',v.dx4,v.dx5,dr.name as drname'
      '   ,CEILING(v.income) as income'
      '   ,CEILING(v.paid_money) as paid'
      '   ,CEILING(v.remain_money) as remain'
      '   ,CEILING(v.uc_money) as uc'
      '   ,CEILING(v.item_money)as item_money'
      ''
      '   from ovst o    '
      '   left outer join vn_stat v on v.vn = o.vn    '
      '   left outer join opdscreen oc on oc.vn = o.vn'
      '   left outer join ovst_doctor_sign ods on ods.vn = o.vn       '
      '   left outer join patient p on p.hn = o.hn      '
      '   left outer join pttype t on t.pttype = o.pttype      '
      '   left outer join icd101 i on i.code = v.main_pdx     '
      '   left outer join spclty s on s.spclty = o.spclty      '
      '   left outer join ovstist sti on sti.ovstist = o.ovstist    '
      '   left outer join ovstost st on st.ovstost = o.ovstost    '
      '   left outer join ovst_seq oq on oq.vn = o.vn         '
      '   left outer join ovst_nhso_send oo1 on oo1.vn = o.vn      '
      '   left join kskdepartment k on k.depcode = ods.depcode'
      '   left outer join opd_dep_queue que on que.vn = o.vn '
      
        '   left outer join kskdepartment k2 on k2.depcode = que.depcode ' +
        '      '
      
        '   left outer join hospital_department hd on hd.id = oq.hospital' +
        '_department_id      '
      
        '   left outer join sub_spclty ssp on ssp.sub_spclty_id = oq.sub_' +
        'spclty_id     '
      
        '   left outer join pt_walk pw on pw.walk_id = oc.walk_id        ' +
        ' '
      
        '   left outer join visit_type vt on vt.visit_type = o.visit_type' +
        '    '
      
        '   left outer join ipt i3 on i3.vn = o.vn                       ' +
        '   '
      '   left outer join sex sn on sn.code = p.sex    '
      
        '   left outer join thaiaddress t1 on t1.chwpart=p.chwpart and t1' +
        '.amppart="00" and t1.tmbpart="00"                       '
      
        '   left outer join thaiaddress t2 on t2.chwpart=p.chwpart and t2' +
        '.amppart=p.amppart and t2.tmbpart="00"                  '
      
        '   left outer join thaiaddress t3 on t3.chwpart=p.chwpart and t3' +
        '.amppart=p.amppart and t3.tmbpart=p.tmbpart             '
      
        '   left outer join hospcode hos1 on hos1.hospcode = o.hospmain  ' +
        '                                                        '
      
        '   left outer join hospcode hos2 on hos2.hospcode = o.hospsub   ' +
        '                                                       '
      '   left outer join doctor dr on dr.code = o.doctor'
      
        '                                                                ' +
        '                                            '
      '  '
      '   where o.vstdate between :date_start_text AND :date_end_text'
      '   #where o.vstdate between 20160601 AND 20160610  '
      '   and  v.vn not in (select vn from an_stat)'
      ''
      '   group by v.vn   '
      '   order by v.vn')
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
      end>
  end
end
