object chk_patient_form: Tchk_patient_form
  Left = 0
  Top = 0
  Caption = 'chk_patient_form'
  ClientHeight = 538
  ClientWidth = 781
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object header_opdlog: TJvNavPanelHeader
    Left = 0
    Top = 0
    Width = 781
    Height = 33
    Align = alTop
    Caption = ' CHACK PATIENT'
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
    Width = 781
    Height = 41
    Align = alTop
    TabOrder = 1
    DesignSize = (
      781
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
    object post_date_btn1: TRzBitBtn
      Left = 671
      Top = 8
      Width = 107
      Anchors = [akTop, akRight]
      Caption = #3605#3619#3623#3592#3621#3632#3648#3629#3637#3618#3604
      TabOrder = 3
      OnClick = post_date_btn1Click
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
      Left = 736
      Top = -25
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
    object post_date_btn2: TRzBitBtn
      Left = 542
      Top = 8
      Width = 123
      Anchors = [akTop, akRight]
      Caption = #3605#3619#3623#3592#3626#3629#3610#3648#3610#3639#3657#3629#3591#3605#3657#3609
      TabOrder = 5
      OnClick = post_date_btn2Click
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000330B0000330B00000001000000000000000000003300
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
        0000000000000000000000000000000000000000000000000000E8ACDEE3E8E8
        E8E8E8E8E8E8E8E8E8E8E8ACDEE3E8E8E8E8E8E8E8E8E8E8E8E8AC807A81E3E8
        E8E8E8E8E8E8E8E8E8E8ACE28181E3E8E8E8E8E8E8E8E8E8E8E8E8CEA37A81E3
        E8E8E8E8E8E8E8E8E8E8E8ACE28181E3E8E8E8E8E8E8E8E8E8E8E8D0CEA37A81
        E3E8E8E8E8E8E8E8E8E8E8E3ACE28181E3E8E8E8E8E8E8E8E8E8E8E8D0CEA37A
        81E3E8E8E8E8E8E8E8E8E8E8E3ACE28181E3E8E8E8E8E8E8E8E8E8E8E8D0CEA3
        7AACAD82828288E3E8E8E8E8E8E3ACE281ACE3818181E2E3E8E8E8E8E8E8D0CE
        E28288E6B3E6E682EBE8E8E8E8E8E3ACE281E2ACACACAC81E3E8E8E8E8E8E8E3
        8289B3B3B3D7D7D782E3E8E8E8E8E8E381E3ACACACE3E3E381E3E8E8E8E8E8AD
        88B3E6B3B3D7D7D7E688E8E8E8E8E8E3E2ACACACACE3E3E3ACE2E8E8E8E8E888
        89E6E6B3B3B3D7D7E682E8E8E8E8E8E2E3ACACACACACE3E3AC81E8E8E8E8E882
        E6E6E6E6B3B3B3B3B382E8E8E8E8E881ACACACACACACACACAC81E8E8E8E8E888
        E6B3E6E6E6B3B3B3E682E8E8E8E8E8E2ACACACACACACACACAC81E8E8E8E8E8AD
        88D7D7E6E6E6E6B38888E8E8E8E8E8E3E2E3E3ACACACACACE2E2E8E8E8E8E8E3
        82EBD7B3E6E6E68982E3E8E8E8E8E8E381E3E3ACACACACE381E3E8E8E8E8E8E8
        AD82ADE6E6E68882ADE8E8E8E8E8E8E8E381E3ACACACE281E3E8E8E8E8E8E8E8
        E8E38882828282E3E8E8E8E8E8E8E8E8E8E3E281818181E3E8E8}
      NumGlyphs = 2
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 511
    Width = 781
    Height = 27
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      781
      27)
    object RzBitBtn1: TRzBitBtn
      Left = 703
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
  object show_visit1: TcxGrid
    AlignWithMargins = True
    Left = 3
    Top = 77
    Width = 775
    Height = 431
    Align = alClient
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object show_visit1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DPatient1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnFilteredItemsList = True
      OptionsData.Appending = True
      OptionsView.GroupByBox = False
      object show_visit1DBTableView1vstdate: TcxGridDBColumn
        DataBinding.FieldName = 'vstdate'
        Width = 70
      end
      object show_visit1DBTableView1hn: TcxGridDBColumn
        DataBinding.FieldName = 'hn'
        Width = 69
      end
      object show_visit1DBTableView1cid: TcxGridDBColumn
        DataBinding.FieldName = 'cid'
        Width = 97
      end
      object show_visit1DBTableView1pname: TcxGridDBColumn
        DataBinding.FieldName = 'pname'
        Width = 60
      end
      object show_visit1DBTableView1fname: TcxGridDBColumn
        DataBinding.FieldName = 'fname'
        Width = 110
      end
      object show_visit1DBTableView1lname: TcxGridDBColumn
        DataBinding.FieldName = 'lname'
        Width = 120
      end
      object show_visit1DBTableView1sex: TcxGridDBColumn
        DataBinding.FieldName = 'sex'
        Width = 39
      end
      object show_visit1DBTableView1birthday: TcxGridDBColumn
        DataBinding.FieldName = 'birthday'
        Width = 70
      end
      object show_visit1DBTableView1marrystatus: TcxGridDBColumn
        DataBinding.FieldName = 'marrystatus'
        Width = 87
      end
      object show_visit1DBTableView1occupation: TcxGridDBColumn
        DataBinding.FieldName = 'occupation'
        Width = 72
      end
      object show_visit1DBTableView1citizenship: TcxGridDBColumn
        DataBinding.FieldName = 'citizenship'
        Width = 80
      end
      object show_visit1DBTableView1nationality: TcxGridDBColumn
        DataBinding.FieldName = 'nationality'
        Width = 78
      end
      object show_visit1DBTableView1pttype: TcxGridDBColumn
        DataBinding.FieldName = 'pttype'
        Width = 55
      end
      object show_visit1DBTableView1type_area: TcxGridDBColumn
        DataBinding.FieldName = 'type_area'
        Width = 67
      end
      object show_visit1DBTableView1road: TcxGridDBColumn
        DataBinding.FieldName = 'road'
        Width = 78
      end
      object show_visit1DBTableView1addrpart: TcxGridDBColumn
        DataBinding.FieldName = 'addrpart'
        Width = 57
      end
      object show_visit1DBTableView1moopart: TcxGridDBColumn
        DataBinding.FieldName = 'moopart'
        Width = 68
      end
      object show_visit1DBTableView1tmbpart: TcxGridDBColumn
        DataBinding.FieldName = 'tmbpart'
        Width = 63
      end
      object show_visit1DBTableView1chwpart: TcxGridDBColumn
        DataBinding.FieldName = 'chwpart'
        Width = 52
      end
      object show_visit1DBTableView1po_code: TcxGridDBColumn
        DataBinding.FieldName = 'po_code'
        Width = 60
      end
      object show_visit1DBTableView1status_: TcxGridDBColumn
        DataBinding.FieldName = 'status_'
        Width = 289
      end
    end
    object show_visit1Level1: TcxGridLevel
      GridView = show_visit1DBTableView1
    end
  end
  object show_visit2: TcxGrid
    AlignWithMargins = True
    Left = 3
    Top = 77
    Width = 775
    Height = 431
    Align = alClient
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object cxGridDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DPatient2
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnFilteredItemsList = True
      OptionsData.Appending = True
      OptionsView.GroupByBox = False
      object cxGridDBColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'vstdate'
        Width = 70
      end
      object cxGridDBColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'hn'
        Width = 69
      end
      object cxGridDBColumn3: TcxGridDBColumn
        DataBinding.FieldName = 'cid'
        OnCustomDrawCell = cxGridDBColumn3CustomDrawCell
        Width = 97
      end
      object cxGridDBColumn4: TcxGridDBColumn
        DataBinding.FieldName = 'pname'
        OnCustomDrawCell = cxGridDBColumn4CustomDrawCell
        Width = 60
      end
      object cxGridDBColumn5: TcxGridDBColumn
        DataBinding.FieldName = 'fname'
        OnCustomDrawCell = cxGridDBColumn5CustomDrawCell
        Width = 110
      end
      object cxGridDBColumn6: TcxGridDBColumn
        DataBinding.FieldName = 'lname'
        OnCustomDrawCell = cxGridDBColumn6CustomDrawCell
        Width = 120
      end
      object cxGridDBColumn7: TcxGridDBColumn
        DataBinding.FieldName = 'sex'
        OnCustomDrawCell = cxGridDBColumn7CustomDrawCell
        Width = 39
      end
      object cxGridDBColumn8: TcxGridDBColumn
        DataBinding.FieldName = 'birthday'
        Width = 70
      end
      object cxGridDBColumn9: TcxGridDBColumn
        DataBinding.FieldName = 'marrystatus'
        OnCustomDrawCell = cxGridDBColumn9CustomDrawCell
        Width = 87
      end
      object cxGridDBColumn10: TcxGridDBColumn
        DataBinding.FieldName = 'occupation'
        OnCustomDrawCell = cxGridDBColumn10CustomDrawCell
        Width = 72
      end
      object cxGridDBColumn11: TcxGridDBColumn
        DataBinding.FieldName = 'citizenship'
        OnCustomDrawCell = cxGridDBColumn11CustomDrawCell
        Width = 80
      end
      object cxGridDBColumn12: TcxGridDBColumn
        DataBinding.FieldName = 'nationality'
        OnCustomDrawCell = cxGridDBColumn12CustomDrawCell
        Width = 78
      end
      object cxGridDBColumn13: TcxGridDBColumn
        DataBinding.FieldName = 'pttype'
        OnCustomDrawCell = cxGridDBColumn13CustomDrawCell
        Width = 55
      end
      object cxGridDBColumn14: TcxGridDBColumn
        DataBinding.FieldName = 'type_area'
        OnCustomDrawCell = cxGridDBColumn14CustomDrawCell
        Width = 67
      end
      object cxGridDBColumn15: TcxGridDBColumn
        DataBinding.FieldName = 'road'
        Width = 78
      end
      object cxGridDBColumn16: TcxGridDBColumn
        DataBinding.FieldName = 'addrpart'
        Width = 57
      end
      object cxGridDBColumn17: TcxGridDBColumn
        DataBinding.FieldName = 'moopart'
        OnCustomDrawCell = cxGridDBColumn17CustomDrawCell
        Width = 68
      end
      object cxGridDBColumn18: TcxGridDBColumn
        DataBinding.FieldName = 'tmbpart'
        Width = 63
      end
      object cxGridDBColumn19: TcxGridDBColumn
        DataBinding.FieldName = 'chwpart'
        Width = 52
      end
      object cxGridDBColumn20: TcxGridDBColumn
        DataBinding.FieldName = 'po_code'
        Width = 60
      end
      object cxGridDBColumn21: TcxGridDBColumn
        DataBinding.FieldName = 'status_'
        Width = 289
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object QPatient1: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO opdscreen'
      
        '  (vn, hn, vstdate, vsttime, bpd, bps, bw, cc, hr, pe, pulse, te' +
        'mperature, rr, height, bmi, hpi, pmh, waist)'
      'VALUES'
      
        '  (:vn, :hn, :vstdate, :vsttime, :bpd, :bps, :bw, :cc, :hr, :pe,' +
        ' :pulse, :temperature, :rr, :height, :bmi, :hpi, :pmh, :waist)')
    Connection = db_connect_m.connect_db
    SQL.Strings = (
      'DROP TABLE IF EXISTS `temp_person`;'
      ''
      'CREATE TABLE  temp_person('
      #9#9#9'RowID INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,'
      #9#9#9' vstdate VARCHAR(50),'
      #9#9#9' hn  VARCHAR(50),'
      #9#9#9' cid  VARCHAR(50),'
      #9#9#9' pname  VARCHAR(50),'
      #9#9#9' fname  VARCHAR(50),'
      #9#9#9' lname  VARCHAR(50),'
      #9#9#9' sex  VARCHAR(50),'
      #9#9#9' birthday  VARCHAR(50),'
      #9#9#9' marrystatus  VARCHAR(50),'
      #9#9#9' occupation  VARCHAR(50),'
      #9#9#9' citizenship  VARCHAR(50),'
      #9#9#9' nationality  VARCHAR(50),'
      #9#9#9' pttype  VARCHAR(50),'
      #9#9#9' type_area  VARCHAR(50),'
      #9#9#9' road  VARCHAR(50),'
      #9#9#9' addrpart  VARCHAR(50),'
      #9#9#9' moopart  VARCHAR(50),'
      #9#9#9' tmbpart  VARCHAR(50),'
      #9#9#9' chwpart  VARCHAR(50),'
      #9#9#9' po_code '#9'VARCHAR(50),'
      #9#9#9' status_  VARCHAR(255) '
      #9#9#9') ENGINE = MEMORY;'
      ''
      #9#9#9'# Insert Table'
      #9#9#9'INSERT INTO temp_person '
      ''
      ''
      
        '(SELECT '#39#39',v.vstdate,p.hn,p.cid,p.pname,p.fname,p.lname,p.sex,p.' +
        'birthday,p.marrystatus,p.occupation,p.citizenship,p.nationality,'
      
        'v.pttype,p.type_area,p.road,p.addrpart,p.moopart,p.tmbpart,p.chw' +
        'part,p.po_code,'
      'CONCAT('
      
        'if(p.cid like concat('#39'0'#39',(SELECT hospitalcode FROM opdconfig),'#39'%' +
        #39'),'#39'CHACK GEN CID,'#39','#39#39'),'
      'if(p.cid like '#39'000%'#39','#39'CHACK ALIEN CID,'#39','#39#39'),'
      'if(p.cid like '#39'0000000000000'#39','#39'LOST CID,'#39','#39#39'),'
      
        'if(p.pname not in (SELECT `name` from pname),'#39'Pname not match,'#39',' +
        #39#39'),'
      'IF(p.pname is null ,'#39'Pname IS NULL,'#39','#39#39'),'
      'if(p.fname like '#39'%'#3610#3609'.%'#39','#39'name is false,'#39','#39#39'),'
      'if(p.lname like '#39'%-%'#39','#39'lname is false,'#39','#39#39'),'
      'if(p.sex not in(1,2),'#39'sex is false,'#39','#39#39'),'
      'if(p.birthday = '#39'0000-00-00'#39','#39'birthday is false,'#39','#39#39'),'
      'if(p.marrystatus not in (1,2,3,4,5,6,9),'#39'marry not maych,'#39','#39#39'),'
      'IF(p.occupation is null,'#39' occupation IS NULL,'#39','#39#39'),'
      
        'if(p.occupation not in (SELECT occupation from occupation),'#39'occu' +
        'pation not match,'#39','#39#39'),'
      'IF(p.citizenship is null,'#39'citizenship IS NULL,'#39','#39#39'),'
      'IF(p.nationality is null,'#39'nationality IS NULL,'#39','#39#39'),'
      
        'if(p.nationality not in (SELECT nationality from nationality),'#39'n' +
        'ationality not match,'#39','#39#39'),'
      'if(p.nationality in('#39'00'#39'),'#39'nationality ??,'#39','#39#39'),'
      'IF(v.pttype is null,'#39'pttype IS NULL,'#39','#39#39'),'
      'IF(v.pttype in('#39'00'#39','#39'10'#39','#39'70'#39'),'#39'CHACK pttype AGEN,'#39','#39#39'),'
      
        'if(v.pttype not in (SELECT pttype from pttype WHERE isuse ='#39'Y'#39'),' +
        #39'pttype not match,'#39','#39#39'),'
      'IF(p.type_area ="",'#39'type_area IS NULL,'#39','#39#39'),'
      'IF(p.type_area is null,'#39'type_area IS NULL,'#39','#39#39'),'
      
        'IF(p.type_area != pe.house_regist_type_id,'#39'type_area NOT MATCH,'#39 +
        ','#39#39'),'
      'IF(p.addrpart is null,'#39'home_number IS NULL,'#39','#39#39'),'
      'IF(p.moopart is null,'#39'moo IS NULL,'#39','#39#39'),'
      'IF(p.tmbpart is null,'#39'tumbon IS NULL,'#39','#39#39'),'
      'IF(p.chwpart is null,'#39'changwat IS NULL,'#39','#39#39'), '
      'IF(p.po_code is null ,'#39'postcode IS NULL'#39','#39#39')'
      ')'
      ''
      'from patient p'
      'LEFT OUTER JOIN vn_stat v ON v.hn = p.hn '
      'LEFT OUTER JOIN person pe ON pe.patient_hn = p.hn'
      ''
      'WHERE v.vstdate BETWEEN :date_start_text AND :date_end_text'
      '#WHERE v.vstdate BETWEEN 20160907 AND 20160907'
      ');'
      ''
      'SELECT * from temp_person where status_ != "" group by hn;')
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
  object DPatient1: TMyDataSource
    DataSet = QPatient1
    Left = 424
    Top = 168
  end
  object QPatient2: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO opdscreen'
      
        '  (vn, hn, vstdate, vsttime, bpd, bps, bw, cc, hr, pe, pulse, te' +
        'mperature, rr, height, bmi, hpi, pmh, waist)'
      'VALUES'
      
        '  (:vn, :hn, :vstdate, :vsttime, :bpd, :bps, :bw, :cc, :hr, :pe,' +
        ' :pulse, :temperature, :rr, :height, :bmi, :hpi, :pmh, :waist)')
    Connection = db_connect_m.connect_db
    SQL.Strings = (
      'DROP TABLE IF EXISTS `temp_person`;'
      ''
      'CREATE TABLE  temp_person('
      #9#9#9'RowID INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,'
      #9#9#9' vstdate VARCHAR(50),'
      #9#9#9' hn  VARCHAR(50),'
      #9#9#9' cid  VARCHAR(50),'
      #9#9#9' pname  VARCHAR(50),'
      #9#9#9' fname  VARCHAR(50),'
      #9#9#9' lname  VARCHAR(50),'
      #9#9#9' sex  VARCHAR(50),'
      #9#9#9' birthday  VARCHAR(50),'
      #9#9#9' marrystatus  VARCHAR(50),'
      #9#9#9' occupation  VARCHAR(50),'
      #9#9#9' citizenship  VARCHAR(50),'
      #9#9#9' nationality  VARCHAR(50),'
      #9#9#9' pttype  VARCHAR(50),'
      #9#9#9' type_area  VARCHAR(50),'
      #9#9#9' road  VARCHAR(50),'
      #9#9#9' addrpart  VARCHAR(50),'
      #9#9#9' moopart  VARCHAR(50),'
      #9#9#9' tmbpart  VARCHAR(50),'
      #9#9#9' chwpart  VARCHAR(50),'
      #9#9#9' po_code '#9'VARCHAR(50),'
      #9#9#9' status_  VARCHAR(255) '
      #9#9#9') ENGINE = MEMORY;'
      ''
      #9#9#9'# Insert Table'
      #9#9#9'INSERT INTO temp_person '
      ''
      ''
      
        '(SELECT '#39#39',v.vstdate,p.hn,p.cid,p.pname,p.fname,p.lname,p.sex,p.' +
        'birthday,p.marrystatus,p.occupation,p.citizenship,p.nationality,'
      
        'v.pttype,p.type_area,p.road,p.addrpart,p.moopart,p.tmbpart,p.chw' +
        'part,p.po_code,'
      'CONCAT('
      'if(p.cid like '#39'000%'#39','#39'CHACK ALIEN CID,'#39','#39#39'),'
      'if(p.cid like '#39'0000000000000'#39','#39'LOST CID,'#39','#39#39'),'
      
        'if(p.pname not in (SELECT `name` from pname),'#39'Pname not match,'#39',' +
        #39#39'),'
      'IF(p.pname is null ,'#39'Pname IS NULL,'#39','#39#39'),'
      'if(p.lname like '#39'%-%'#39','#39'lname is false,'#39','#39#39'),'
      'if(p.sex not in(1,2),'#39'sex is false,'#39','#39#39'),'
      'if(p.birthday = '#39'0000-00-00'#39','#39'birthday is false,'#39','#39#39'),'
      'if(p.marrystatus not in (1,2,3,4,5,6,9),'#39'marry not maych,'#39','#39#39'),'
      'IF(p.occupation is null,'#39' occupation IS NULL,'#39','#39#39'),'
      
        'if(p.occupation not in (SELECT occupation from occupation),'#39'occu' +
        'pation not match,'#39','#39#39'),'
      'IF(p.citizenship is null,'#39'citizenship IS NULL,'#39','#39#39'),'
      'IF(p.nationality is null,'#39'nationality IS NULL,'#39','#39#39'),'
      
        'if(p.nationality not in (SELECT nationality from nationality),'#39'n' +
        'ationality not match,'#39','#39#39'),'
      'if(p.nationality in('#39'00'#39'),'#39'nationality ??,'#39','#39#39'),'
      'IF(v.pttype is null,'#39'pttype IS NULL,'#39','#39#39'),'
      'IF(v.pttype in('#39'00'#39'),'#39'CHACK pttype AGEN,'#39','#39#39'),'
      
        'if(v.pttype not in (SELECT pttype from pttype WHERE isuse ='#39'Y'#39'),' +
        #39'pttype not match,'#39','#39#39'),'
      'IF(p.type_area ="",'#39'type_area IS NULL,'#39','#39#39'),'
      'IF(p.type_area is null,'#39'type_area IS NULL,'#39','#39#39'),'
      'IF(p.addrpart is null,'#39'home_number IS NULL,'#39','#39#39'),'
      'IF(p.moopart is null,'#39'moo IS NULL,'#39','#39#39'),'
      'IF(p.tmbpart is null,'#39'tumbon IS NULL,'#39','#39#39'),'
      'IF(p.chwpart is null,'#39'changwat IS NULL,'#39','#39#39'), '
      'IF(p.po_code is null ,'#39'postcode IS NULL'#39','#39#39')'
      ')'
      ''
      'from patient p'
      'LEFT OUTER JOIN vn_stat v ON v.hn = p.hn '
      'LEFT OUTER JOIN person pe ON pe.patient_hn = p.hn'
      ''
      'WHERE v.vstdate BETWEEN :date_start_text AND :date_end_text'
      '#WHERE v.vstdate BETWEEN 20160907 AND 20160907'
      ');'
      ''
      'SELECT * from temp_person where status_ != "" group by hn;')
    ReadOnly = True
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.AutoRefresh = True
    Options.AutoRefreshInterval = 120
    Left = 320
    Top = 312
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
  object DPatient2: TMyDataSource
    DataSet = QPatient2
    Left = 424
    Top = 312
  end
end
