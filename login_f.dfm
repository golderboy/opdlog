object login_form: Tlogin_form
  Left = 0
  Top = 0
  Caption = 'login_form'
  ClientHeight = 421
  ClientWidth = 521
  Color = clBtnFace
  Font.Charset = THAI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 24
  object header_login: TJvNavPanelHeader
    Left = 0
    Top = 0
    Width = 521
    Height = 49
    Align = alTop
    Caption = '    LOGIN FORM'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ImageIndex = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 371
    Width = 521
    Height = 50
    Align = alBottom
    TabOrder = 5
    DesignSize = (
      521
      50)
    object RzBitBtn1: TRzBitBtn
      Left = 427
      Top = 10
      Width = 82
      Height = 31
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
    object version_text: TcxLabel
      Left = 8
      Top = 13
      Caption = 'v.20170120'
      ParentFont = False
      Style.Font.Charset = THAI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -21
      Style.Font.Name = 'TH SarabunPSK'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
  end
  object cxLabel1: TcxLabel
    Left = 56
    Top = 126
    Caption = 'Username'
  end
  object cxLabel2: TcxLabel
    Left = 56
    Top = 160
    Caption = 'Password'
  end
  object login_bit: TRzBitBtn
    Left = 169
    Top = 208
    Width = 137
    Height = 49
    AllowAllUp = True
    Default = True
    Caption = 'Login'
    TabOrder = 3
    OnClick = login_bitClick
    OnKeyDown = login_bitKeyDown
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
      E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
      E8E8E8E8E8787878E8E8E8E8E8E8E8E8E8E8E8E8E8818181E8E8E8E8E8E8E8E8
      E8E8E8E878A3A3CE78E8E8E8E8E8E8E8E8E8E8E881ACACE881E8E8E8E8E8E8E8
      E8E8E878A378CCCE78E8E8E8E8E8E8E8E8E8E881AC81E8E881E8E8E8E8E8E8E8
      E8E878A378CCA3CE78E8E8E8E8E8E8E8E8E881AC81E8ACE881E8E8E8E8E8E8E8
      7878A378CCA3CE78E8E8E8E8E8E8E8E88181AC81E8ACE881E8E8E8E878787878
      A3A378CCA3CE78E8E8E8E8E881818181ACAC81E8ACE881E8E8E8E878CCCCCCCC
      7878CCA3CE78E8E8E8E8E881E8E8E8E88181E8ACE881E8E8E8E878CCCCA3CCCC
      CCCCA3CE78E8E8E8E8E881E8E8ACE8E8E8E8ACE881E8E8E8E8E878CCA3CCA3CC
      CCCCCE78E8E8E8E8E8E881E8ACE8ACE8E8E8E881E8E8E8E8E8E878CCCCA3CCA3
      CCCCCE78E8E8E8E8E8E881E8E8ACE8ACE8E8E881E8E8E8E8E8E878CCCCCCA3CC
      A3CCCE78E8E8E8E8E8E881E8E8E8ACE8ACE8E881E8E8E8E8E8E878CC7878CCA3
      CCA3CE78E8E8E8E8E8E881E88181E8ACE8ACE881E8E8E8E8E8E878D5A378CCCC
      A3CCD578E8E8E8E8E8E881E8AC81E8E8ACE8E881E8E8E8E8E8E8E878D5CECECE
      CED578E8E8E8E8E8E8E8E881E8E8E8E8E8E881E8E8E8E8E8E8E8E8E878787878
      7878E8E8E8E8E8E8E8E8E8E8818181818181E8E8E8E8E8E8E8E8}
    NumGlyphs = 2
  end
  object connect_btn: TRzBitBtn
    Left = 312
    Top = 208
    Width = 121
    Height = 49
    Caption = 'Connect'
    TabOrder = 4
    OnClick = connect_btnClick
    Glyph.Data = {
      36060000424D3606000000000000360400002800000020000000100000000100
      08000000000000020000630E0000630E00000001000000000000000000003300
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
      00000000E8E8E8E8E8E8E8E8E8E8E8E856565656E8E8E8E8E8E8E8E8E8E80000
      050505050000E8E8E8E8E8E8E8E85656818181815656E8E8E8E8E8E8E8003600
      05350505050500E8E8E8E8E8E856815681AC8181818156E8E8E8E8E836363636
      0035353505050600E8E8E8E88181818156ACACAC81810656E8E8E8363644443D
      360035350C0C0C0C00E8E88181E3E3AC8156ACAC8181818156E8E8364444443D
      3600170C36360C0C00E8E881E3E3E3AC8156AC818181818156E836B2B2B23D0C
      0C170C3D36360C0C0C0081E3E3E3AC8181AC81AC8181818181563636D73D0C17
      41410CB23D360C0C0C008181D7AC81ACE3E381E3AC818181815635B336361741
      4141170CB23D360C0C00ACD78181ACE3E3E3AC81E3AC8181815635B347173035
      17411735350C3D360C00ACD7E3AC81ACACE3ACACAC81AC818156E83530303D30
      3541411735350C0C00E8E8AC8181AC81ACE3E3ACACAC818156E8E836D7B23D3D
      301717413535353500E8E881D7E3ACAC81ACACE3ACACACAC56E8E8E836D7B23D
      3D303017353535DBE8E8E8E881D7E3ACAC8181ACACACAC56E8E8E8E8E836D7B2
      B23D3630353535E8E8E8E8E8E881D7E3E3AC8181ACACACE8E8E8E8E8E8E83636
      D73D3D363535E8E8E8E8E8E8E8E88181D7ACAC81ACACE8E8E8E8E8E8E8E8E8E8
      36363636E8E8E8E8E8E8E8E8E8E8E8E881818181E8E8E8E8E8E8}
    NumGlyphs = 2
  end
  object username_t: TcxTextEdit
    Left = 160
    Top = 125
    TabOrder = 0
    Width = 273
  end
  object password_t: TcxTextEdit
    Left = 160
    Top = 159
    Properties.EchoMode = eemPassword
    TabOrder = 1
    Width = 273
  end
  object memo_t: TcxMemo
    Left = 8
    Top = 263
    Lines.Strings = (
      'memo_t')
    TabOrder = 8
    Height = 102
    Width = 497
  end
  object Qopd_user: TMyQuery
    Connection = db_connect_m.connect_db
    SQL.Strings = (
      'SELECT * from opduser'
      'WHERE account_disable = '#39'N'#39)
    AutoCalcFields = False
    Left = 80
    Top = 64
  end
  object Dopd_user: TMyDataSource
    DataSet = Qopd_user
    Left = 160
    Top = 64
  end
  object Qopd_admin: TMyQuery
    Connection = db_connect_m.connect_db
    SQL.Strings = (
      'SELECT * from opduser'
      'WHERE account_disable = '#39'N'#39
      'and groupname Like '#39'%'#3612#3641#3657#3604#3641#3649#3621#3619#3632#3610#3610'%'#39)
    AutoCalcFields = False
    Left = 240
    Top = 64
  end
end
