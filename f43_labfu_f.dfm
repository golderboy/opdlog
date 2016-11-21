object f43_labfu_form: Tf43_labfu_form
  Left = 0
  Top = 0
  Caption = 'f43_labfu_form'
  ClientHeight = 527
  ClientWidth = 750
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
    750
    527)
  PixelsPerInch = 96
  TextHeight = 13
  object header_opdlog: TJvNavPanelHeader
    Left = 0
    Top = 0
    Width = 750
    Height = 33
    Align = alTop
    Caption = 'LAB_FU'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ImageIndex = 0
    ExplicitLeft = -36
    ExplicitWidth = 786
  end
  object Panel2: TPanel
    Left = 0
    Top = 33
    Width = 750
    Height = 41
    Align = alTop
    TabOrder = 1
    ExplicitLeft = -36
    ExplicitWidth = 786
    DesignSize = (
      750
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
      Left = 529
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
      ExplicitLeft = 565
    end
    object excel_export_btn: TRzBitBtn
      Left = 649
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
      ExplicitLeft = 685
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 500
    Width = 750
    Height = 27
    Align = alBottom
    TabOrder = 2
    ExplicitLeft = -36
    ExplicitWidth = 786
    DesignSize = (
      750
      27)
    object RzBitBtn1: TRzBitBtn
      Left = 672
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
  end
  object show_visit: TcxGrid
    AlignWithMargins = True
    Left = 3
    Top = 77
    Width = 744
    Height = 420
    Align = alClient
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    ExplicitLeft = -30
    ExplicitWidth = 780
    ExplicitHeight = 442
    object show_visitDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = Df43_labfu
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
        Width = 69
      end
      object show_visitDBTableView1SEQ: TcxGridDBColumn
        DataBinding.FieldName = 'SEQ'
        Width = 90
      end
      object show_visitDBTableView1DATE_SERV: TcxGridDBColumn
        DataBinding.FieldName = 'DATE_SERV'
        Width = 99
      end
      object show_visitDBTableView1LABTEST: TcxGridDBColumn
        DataBinding.FieldName = 'LABTEST'
        OnCustomDrawCell = show_visitDBTableView1LABTESTCustomDrawCell
        Width = 67
      end
      object show_visitDBTableView1LABRESULT: TcxGridDBColumn
        DataBinding.FieldName = 'LABRESULT'
        OnCustomDrawCell = show_visitDBTableView1LABRESULTCustomDrawCell
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
  object Qf43_labfu: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO opdscreen'
      
        '  (vn, hn, vstdate, vsttime, bpd, bps, bw, cc, hr, pe, pulse, te' +
        'mperature, rr, height, bmi, hpi, pmh, waist)'
      'VALUES'
      
        '  (:vn, :hn, :vstdate, :vsttime, :bpd, :bps, :bw, :cc, :hr, :pe,' +
        ' :pulse, :temperature, :rr, :height, :bmi, :hpi, :pmh, :waist)')
    Connection = db_connect_m.connect_db
    SQL.Strings = (
      'SELECT DISTINCT'
      '(SELECT hospitalcode FROM opdconfig) AS HOSPCODE,'
      'IFNULL(p.person_id,lh.hn) AS PID,'
      '/*lh.hn,*/'
      'lh.vn AS SEQ,'
      
        'IF(lh.order_date IS NULL OR TRIM(lh.order_date)='#39#39' OR lh.order_d' +
        'ate LIKE '#39'0000-00-00%'#39','#39#39',DATE_FORMAT(lh.order_date,'#39'%Y%m%d'#39') ) ' +
        'AS DATE_SERV, '
      'CASE sys_var.sys_name'
      'WHEN "lab_link_fbs" THEN '#39'01'#39
      'WHEN "lab_link_2Hr" THEN '#39'02'#39
      'WHEN "lab_link_DTX" THEN '#39'03'#39
      'WHEN "lab_link_BloodSugar" THEN '#39'04'#39
      'WHEN "lab_link_hba1c" THEN '#39'05'#39
      'WHEN "lab_link_tg" THEN '#39'06'#39
      'WHEN "lab_link_tc" THEN '#39'07'#39
      'WHEN "lab_link_hdl" THEN '#39'08'#39
      'WHEN "lab_link_ldl" THEN '#39'09'#39
      'WHEN "lab_link_bun" THEN '#39'10'#39
      'WHEN "lab_link_cr" THEN '#39'11'#39
      'WHEN "lab_link_Micro_Albumine" THEN '#39'12'#39
      'WHEN "lab_link_urine_creatinine"  THEN '#39'13'#39
      'WHEN "lab_link_macro_albumin" THEN '#39'14'#39
      'WHEN "lab_link_hb" THEN '#39'16'#39
      'WHEN "lab_link_upcr" THEN '#39'17'#39
      'WHEN "lab_link_tco2" THEN '#39'18'#39
      'WHEN "lab_link_bicarb" THEN '#39'19'#39
      'WHEN "lab_link_phosphate" THEN '#39'20'#39
      'WHEN "lab_link_pth" THEN '#39'21'#39
      'END AS LABTEST,'
      
        'IF(lo.lab_order_result IS NOT NULL OR TRIM(lo.lab_order_result)<' +
        '>'#39#39', REPLACE(FORMAT(lo.lab_order_result,2),'#39','#39','#39#39'), FORMAT(0,2))' +
        ' AS LABRESULT,'
      
        'IF(concat(lh.report_date,'#39' '#39',lh.report_time) IS NULL OR TRIM(con' +
        'cat(lh.report_date,'#39' '#39',lh.report_time))='#39#39' OR concat(lh.report_d' +
        'ate,'#39' '#39',lh.report_time) LIKE '#39'0000-00-00%'#39',DATE_FORMAT(concat(lh' +
        '.report_date,'#39' '#39',lh.report_time),'#39'%Y%m%d%H%i%s'#39'),DATE_FORMAT(con' +
        'cat(lh.report_date,'#39' '#39',lh.report_time),'#39'%Y%m%d%H%i%s'#39') ) AS D_UP' +
        'DATE,  '
      'IF(v.cid IS NOT NULL OR v.cid <> '#39#39',v.cid,pt.cid) AS CID'
      'FROM lab_head lh'
      
        'LEFT JOIN lab_order lo ON lh.lab_order_number = lo.lab_order_num' +
        'ber'
      
        'LEFT OUTER JOIN lab_items ON lo.lab_items_code = lab_items.lab_i' +
        'tems_code'
      
        'LEFT OUTER JOIN sys_var ON sys_var.sys_value = lab_items.lab_ite' +
        'ms_name '
      'LEFT OUTER JOIN patient pt ON lh.hn=pt.hn'
      'LEFT OUTER JOIN doctor d ON d.code=lh.doctor_code  '
      'LEFT OUTER JOIN vn_stat v ON v.vn=lh.vn  '
      'LEFT OUTER JOIN spclty sp ON sp.spclty = lh.spclty  '
      'LEFT OUTER JOIN an_stat a ON a.an=lh.vn  '
      
        'LEFT OUTER JOIN kskdepartment k ON k.depcode = lh.order_departme' +
        'nt  '
      'LEFT OUTER JOIN ward w ON w.ward = a.ward  '
      'LEFT OUTER JOIN iptadm adm ON adm.an = a.an  '
      
        'LEFT OUTER JOIN lab_perform_status lp ON lp.lab_perform_status_i' +
        'd = lh.lab_perform_status_id '
      'LEFT OUTER JOIN person p ON lh.hn = p.patient_hn'
      'WHERE (sys_value IS NOT NULL AND sys_value <>'#39#39')'
      'AND sys_var.sys_name IN ('#39'lab_link_fbs'#39' '
      ','#39'lab_link_2Hr'#39' '
      ','#39'lab_link_DTX'#39' '
      ','#39'lab_link_BloodSugar'#39' '
      ','#39'lab_link_hba1c'#39' '
      ','#39'lab_link_tg'#39' '
      ','#39'lab_link_tc'#39' '
      ','#39'lab_link_hdl'#39' '
      ','#39'lab_link_ldl'#39' '
      ','#39'lab_link_bun'#39' '
      ','#39'lab_link_cr'#39' '
      ','#39'lab_link_Micro_Albumine'#39' '
      ','#39'lab_link_urine_creatinine'#39'  '
      ','#39'lab_link_macro_albumin'#39' '
      ','#39'lab_link_hb'#39' '
      ','#39'lab_link_upcr'#39' '
      ','#39'lab_link_tco2'#39
      ','#39'lab_link_bicarb'#39
      ','#39'lab_link_phosphate'#39
      ','#39'lab_link_pth'#39' )'
      'AND lh.order_date between :date_start_text AND :date_end_text'
      
        '/*AND lh.hn IN(SELECT hn FROM clinicmember WHERE clinic IN (SELE' +
        'CT clinic FROM clinic WHERE chronic= '#39'Y'#39')) AND lo.confirm = '#39'Y'#39'*' +
        '/'
      'AND lp.lab_perform_status_name = '#39#3619#3634#3618#3591#3634#3609#3612#3621#3649#3621#3657#3623#39
      '/*Design By TAKIS TEAM 02/02/2558 lab_link*/'
      ''
      'UNION ALL'
      ''
      'SELECT DISTINCT'
      '(SELECT hospitalcode FROM opdconfig) AS HOSPCODE,'
      'IFNULL(p.person_id,lh.hn) AS PID,'
      '/*lh.hn,*/'
      'lh.vn AS SEQ,'
      
        'IF(lh.order_date IS NULL OR TRIM(lh.order_date)='#39#39' OR lh.order_d' +
        'ate LIKE '#39'0000-00-00%'#39','#39#39',DATE_FORMAT(lh.order_date,'#39'%Y%m%d'#39') ) ' +
        'AS DATE_SERV, '
      'CASE sys_lab_code.sys_lab_name'
      'WHEN "FBS" THEN '#39'01'#39
      'WHEN "2HR" THEN '#39'02'#39
      'WHEN "DTX" THEN '#39'03'#39
      'WHEN "BloodSugar" THEN '#39'04'#39
      'WHEN "HbA1c" THEN '#39'05'#39
      'WHEN "Triglyceride" THEN '#39'06'#39
      'WHEN "Total Cholesterol" THEN '#39'07'#39
      'WHEN "HDL" THEN '#39'08'#39
      'WHEN "LDL" THEN '#39'09'#39
      'WHEN "BUN" THEN '#39'10'#39
      'WHEN "Creatinine" THEN '#39'11'#39
      'WHEN "Micro Albumin" THEN '#39'12'#39
      'WHEN "lab_link_Micro_Albumine" THEN '#39'12'#39
      'WHEN "Urine Creatinine" THEN '#39'13'#39
      'WHEN "Macro Albumin" THEN '#39'14'#39
      'WHEN "Hb" THEN '#39'16'#39
      'WHEN "UPCR" THEN '#39'17'#39
      'WHEN "TCO2"  THEN '#39'18'#39
      'WHEN "Bicarb"  THEN '#39'19'#39
      'WHEN "Phosphate" THEN '#39'20'#39
      'WHEN "PTH"  THEN '#39'21'#39
      'END AS LABTEST,'
      
        'IF(lo.lab_order_result IS NOT NULL OR TRIM(lo.lab_order_result)<' +
        '>'#39#39', REPLACE(FORMAT(lo.lab_order_result,2),'#39','#39','#39#39'), FORMAT(0,2))' +
        ' AS LABRESULT,'
      
        'IF(concat(lh.report_date,'#39' '#39',lh.report_time) IS NULL OR TRIM(con' +
        'cat(lh.report_date,'#39' '#39',lh.report_time))='#39#39' OR concat(lh.report_d' +
        'ate,'#39' '#39',lh.report_time) LIKE '#39'0000-00-00%'#39',DATE_FORMAT(concat(lh' +
        '.report_date,'#39' '#39',lh.report_time),'#39'%Y%m%d%H%i%s'#39'),DATE_FORMAT(con' +
        'cat(lh.report_date,'#39' '#39',lh.report_time),'#39'%Y%m%d%H%i%s'#39') ) AS D_UP' +
        'DATE,  '
      'IF(v.cid IS NOT NULL OR v.cid <> '#39#39',v.cid,pt.cid) AS CID'
      ''
      ''
      'FROM lab_head lh'
      
        'LEFT JOIN lab_order lo ON lh.lab_order_number = lo.lab_order_num' +
        'ber'
      
        'LEFT OUTER JOIN lab_items ON lo.lab_items_code = lab_items.lab_i' +
        'tems_code'
      
        'LEFT OUTER JOIN sys_lab_link ON sys_lab_link.lab_items_code = lo' +
        '.lab_items_code'
      
        'LEFT OUTER JOIN sys_lab_code ON sys_lab_code.sys_lab_code_id = s' +
        'ys_lab_link.sys_lab_code_id'
      'LEFT OUTER JOIN patient pt ON lh.hn=pt.hn'
      'LEFT OUTER JOIN doctor d ON d.code=lh.doctor_code  '
      'LEFT OUTER JOIN vn_stat v ON v.vn=lh.vn  '
      'LEFT OUTER JOIN spclty sp ON sp.spclty = lh.spclty  '
      'LEFT OUTER JOIN an_stat a ON a.an=lh.vn  '
      
        'LEFT OUTER JOIN kskdepartment k ON k.depcode = lh.order_departme' +
        'nt  '
      'LEFT OUTER JOIN ward w ON w.ward = a.ward  '
      'LEFT OUTER JOIN iptadm adm ON adm.an = a.an  '
      
        'LEFT OUTER JOIN lab_perform_status lp ON lp.lab_perform_status_i' +
        'd = lh.lab_perform_status_id '
      'LEFT OUTER JOIN person p ON lh.hn = p.patient_hn'
      
        'WHERE (sys_lab_code.lab_items_name_list IS NOT NULL AND sys_lab_' +
        'code.lab_items_name_list <>'#39#39')'
      'AND sys_lab_code.sys_lab_name IN ('#39'2HR'#39','
      '        '#39'DTX'#39','
      '        '#39'BloodSugar'#39','
      '        '#39'HbA1c'#39','
      '        '#39'Triglyceride'#39','
      '        '#39'Total Cholesterol'#39','
      '        '#39'HDL'#39','
      '        '#39'LDL'#39','
      '        '#39'BUN'#39','
      '        '#39'Creatinine'#39','
      '        '#39'Micro Albumin'#39','
      '        '#39'Urine Creatinine'#39','
      '        '#39'Macro Albumin'#39','
      '        '#39'Hb'#39','
      '        '#39'UPCR'#39','
      '        '#39'TCO2'#39','
      '        '#39'Bicarb'#39','
      '        '#39'Phosphate'#39','
      '        '#39'PTH'#39')'
      'And lh.order_date between :date_start_text AND :date_end_text'
      
        '/*AND lh.hn IN(SELECT hn FROM clinicmember WHERE clinic IN (SELE' +
        'CT clinic FROM clinic WHERE chronic= '#39'Y'#39')) AND lo.confirm = '#39'Y'#39'*' +
        '/'
      'AND lp.lab_perform_status_name = '#39#3619#3634#3618#3591#3634#3609#3612#3621#3649#3621#3657#3623#39
      '/*Design By TAKIS TEAM 02/02/2558 lab_multiple_link */'
      ''
      'UNION ALL'
      ''
      'SELECT'
      '(SELECT hospitalcode FROM opdconfig) AS HOSPCODE,'
      'IFNULL(p.person_id,ov.hn) AS PID,'
      'ov.vn AS SEQ,'
      
        'IF(ov.vstdate IS NULL OR TRIM(ov.vstdate )='#39#39' OR ov.vstdate  LIK' +
        'E '#39'0000-00-00%'#39','#39#39',DATE_FORMAT(ov.vstdate ,'#39'%Y%m%d'#39') ) AS DATE_S' +
        'ERV,'
      #39'15'#39' AS LABTEST,'
      
        'IF(ovqg.ckd_epi IS NOT NULL OR TRIM(ovqg.ckd_epi)<>'#39#39', REPLACE(F' +
        'ORMAT(ovqg.ckd_epi,2),'#39','#39','#39#39'), FORMAT(0,2)) AS LABRESULT,'
      'CASE '
      
        'WHEN ov.vstdate IS NOT NULL AND ov.cur_dep_time IS NOT NULL  THE' +
        'N DATE_FORMAT(CONCAT(ov.vstdate,'#39' '#39',ov.cur_dep_time),"%Y%m%d%H%i' +
        '%s")'
      
        'WHEN ov.vstdate IS NOT NULL AND ov.cur_dep_time IS NULL  THEN DA' +
        'TE_FORMAT(CONCAT(ov.vstdate,'#39' '#39',ov.vsttime),"%Y%m%d%H%i%s")'
      'ELSE NULL END'
      'AS D_UPDATE,'
      'IF(vt.cid IS NOT NULL OR vt.cid <> '#39#39',vt.cid,pt.cid) AS CID'
      ''
      'FROM ovst_gfr ovqg  '
      'LEFT OUTER JOIN ovst ov ON ovqg.vn = ov.vn  '
      'LEFT OUTER JOIN patient pt ON pt.hn=ov.hn '
      
        'LEFT OUTER JOIN ovstdiag odx ON odx.vn=ov.vn and odx.diagtype= '#39 +
        '1'#39' '
      'LEFT OUTER JOIN kskdepartment sp ON sp.depcode=ov.cur_dep '
      'LEFT OUTER JOIN ovstost oost ON oost.ovstost=ov.ovstost '
      'LEFT OUTER JOIN icd101 icd1 ON icd1.code=odx.icd10 '
      'LEFT OUTER JOIN icd101 ix ON ix.code=substring(odx.icd10,1,3)  '
      'LEFT OUTER JOIN pttype pty ON pty.pttype=ov.pttype  '
      'LEFT OUTER JOIN vn_lock vk ON vk.vn = ov.vn '
      'LEFT OUTER JOIN ovstist st ON st.ovstist = ov.ovstist  '
      'LEFT OUTER JOIN vn_stat vt ON vt.vn=ov.vn  '
      'LEFT OUTER JOIN vn_opd_complete c ON c.vn=ov.vn  '
      'LEFT OUTER JOIN ovst_seq ovq ON ovq.vn = ov.vn  '
      'LEFT OUTER JOIN person p ON p.patient_hn = odx.hn'
      '#WHERE ov.vstdate between 20161001 and 20161031'
      'WHERE ov.vstdate between :date_start_text AND :date_end_text'
      '/*Design By Glison 27/01/2558*/')
    ReadOnly = True
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.AutoRefresh = True
    Options.AutoRefreshInterval = 120
    Active = True
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
  object Df43_labfu: TMyDataSource
    DataSet = Qf43_labfu
    Left = 424
    Top = 168
  end
end
