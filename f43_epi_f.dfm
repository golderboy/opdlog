object f43_epi_form: Tf43_epi_form
  Left = 0
  Top = 0
  Caption = 'f43_epi_form'
  ClientHeight = 549
  ClientWidth = 786
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
    786
    549)
  PixelsPerInch = 96
  TextHeight = 13
  object header_opdlog: TJvNavPanelHeader
    Left = 0
    Top = 0
    Width = 786
    Height = 33
    Align = alTop
    Caption = 'EPI'
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
      Left = 565
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
      Left = 685
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
  object show_visit: TcxGrid
    AlignWithMargins = True
    Left = 3
    Top = 77
    Width = 780
    Height = 442
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
      DataController.DataSource = Df43_epi
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
        OnCustomDrawCell = show_visitDBTableView1PIDCustomDrawCell
        Width = 41
      end
      object show_visitDBTableView1SEQ: TcxGridDBColumn
        DataBinding.FieldName = 'SEQ'
        Width = 90
      end
      object show_visitDBTableView1DATE_SERV: TcxGridDBColumn
        DataBinding.FieldName = 'DATE_SERV'
        OnCustomDrawCell = show_visitDBTableView1DATE_SERVCustomDrawCell
        Width = 87
      end
      object show_visitDBTableView1VACCINETYPE: TcxGridDBColumn
        DataBinding.FieldName = 'VACCINETYPE'
        OnCustomDrawCell = show_visitDBTableView1VACCINETYPECustomDrawCell
        Width = 112
      end
      object show_visitDBTableView1VACCINEPLACE: TcxGridDBColumn
        DataBinding.FieldName = 'VACCINEPLACE'
        OnCustomDrawCell = show_visitDBTableView1VACCINEPLACECustomDrawCell
        Width = 107
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
        Width = 149
      end
      object show_visitDBTableView1typearea: TcxGridDBColumn
        DataBinding.FieldName = 'typearea'
        Width = 60
      end
      object show_visitDBTableView1discharge: TcxGridDBColumn
        DataBinding.FieldName = 'discharge'
        Width = 66
      end
    end
    object show_visitLevel1: TcxGridLevel
      GridView = show_visitDBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 522
    Width = 786
    Height = 27
    Align = alBottom
    TabOrder = 3
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
  object process_Qrb1k: TcxProgressBar
    Left = 40
    Top = 288
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 4
    Visible = False
    Width = 691
  end
  object Qf43_epi: TMyQuery
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
      '(SELECT hospitalcode FROM opdconfig) AS HOSPCODE,'#9
      'e5.person_id AS PID,'
      'e3.vn AS SEQ,'
      
        'IF(e3.vaccine_date IS NULL OR TRIM(e3.vaccine_date)='#39#39' OR e3.vac' +
        'cine_date LIKE '#39'0000-00-00%'#39','#39#39',DATE_FORMAT(e3.vaccine_date,'#39'%Y%' +
        'm%d'#39') ) AS DATE_SERV,'
      'e1.export_vaccine_code AS VACCINETYPE,'
      '(SELECT hospitalcode FROM opdconfig)  AS VACCINEPLACE,'
      'dc.cid AS PROVIDER,'
      
        'IF(e4.last_update IS NULL OR TRIM(e4.last_update)='#39#39' OR e4.last_' +
        'update LIKE '#39'0000-00-00%'#39','#39#39',DATE_FORMAT(e4.last_update,'#39'%Y%m%d%' +
        'H%i%s'#39') ) AS D_UPDATE,'
      'e5.cid AS CID,'
      'e5.patient_hn as HN,'
      'concat(e5.pname,e5.fname," ",e5.lname) as ptname,'
      'e5.house_regist_type_id as typearea,'
      'e5.person_discharge_id as discharge'
      ''
      'FROM epi_vaccine e1 '
      
        'LEFT JOIN person_epi_vaccine_list e2 ON e1.epi_vaccine_id = e2.e' +
        'pi_vaccine_id '
      
        'LEFT OUTER JOIN person_epi_vaccine e3  ON e2.person_epi_vaccine_' +
        'id = e3.person_epi_vaccine_id '
      
        'LEFT OUTER JOIN person_epi e4 ON e3.person_epi_id = e4.person_ep' +
        'i_id  '
      'LEFT OUTER JOIN person e5 ON e4.person_id = e5.person_id'
      'LEFT OUTER JOIN doctor dc ON dc.`code` = e2.doctor_code'
      ''
      'WHERE e5.cid IS NOT NULL'
      'AND e3.vaccine_date BETWEEN :date_start_text AND :date_end_text'
      ''
      'UNION ALL'
      ''
      'SELECT DISTINCT'
      '(SELECT hospitalcode FROM opdconfig) AS HOSPCODE,'
      'v5.person_id AS PID,'
      'v3.vn AS SEQ,'
      
        'IF(v3.vaccine_date IS NULL OR TRIM(v3.vaccine_date)='#39#39' OR v3.vac' +
        'cine_date LIKE '#39'0000-00-00%'#39','#39#39',DATE_FORMAT(v3.vaccine_date,'#39'%Y%' +
        'm%d'#39') ) AS DATE_SERV,'
      'v2.export_vaccine_code AS VACCINETYPE,'
      '(SELECT hospitalcode FROM opdconfig)  AS VACCINEPLACE,'
      'dc.cid AS PROVIDER,'
      
        'IF(v4.last_update IS NULL OR TRIM(v4.last_update)='#39#39' OR v4.last_' +
        'update LIKE '#39'0000-00-00%'#39','#39#39',DATE_FORMAT(v4.last_update,'#39'%Y%m%d%' +
        'H%i%s'#39') ) AS D_UPDATE,'
      'v5.cid AS CID,'
      'v5.patient_hn as HN,'
      'concat(v5.pname,v5.fname," ",v5.lname) as ptname,'
      'v5.house_regist_type_id as typearea,'
      'v5.person_discharge_id as discharge'
      ''
      'FROM  village_student_vaccine_list v1'
      
        'LEFT JOIN student_vaccine v2 ON v1.student_vaccine_id = v2.stude' +
        'nt_vaccine_id   '
      
        'LEFT JOIN village_student_vaccine v3 ON v1.village_student_vacci' +
        'ne_id = v3.village_student_vaccine_id'
      
        'LEFT OUTER JOIN village_student v4 ON  v3.village_student_id = v' +
        '4.village_student_id '
      'LEFT OUTER JOIN person v5 ON v4.person_id = v5.person_id '
      'LEFT OUTER JOIN doctor dc ON dc.`code` = v1.doctor_code'
      ''
      'WHERE v5.cid IS NOT NULL'
      'AND v3.vaccine_date BETWEEN :date_start_text AND :date_end_text'
      ''
      'UNION ALL'
      ''
      'SELECT DISTINCT'
      '(SELECT hospitalcode FROM opdconfig) AS HOSPCODE,'
      'p4.person_id AS PID,'
      'p2.vn AS SEQ,'
      
        'IF(p2.anc_service_date IS NULL OR TRIM(p2.anc_service_date)='#39#39' O' +
        'R p2.anc_service_date LIKE '#39'0000-00-00%'#39','#39#39',DATE_FORMAT(p2.anc_s' +
        'ervice_date,'#39'%Y%m%d'#39') ) AS DATE_SERV,'
      'a1.export_vaccine_code AS VACCINETYPE,'
      '(SELECT hospitalcode FROM opdconfig) AS VACCINEPLACE,'
      'dc.cid AS PROVIDER,'
      
        'IF(p3.last_update  IS NULL OR TRIM(p3.last_update)='#39#39' OR p3.last' +
        '_update LIKE '#39'0000-00-00%'#39','#39#39',DATE_FORMAT(p3.last_update,'#39'%Y%m%d' +
        '%H%i%s'#39') ) AS D_UPDATE,'
      'p4.cid AS CID,'
      'p4.patient_hn as HN,'
      'concat(p4.pname,p4.fname," ",p4.lname) as ptname,'
      'p4.house_regist_type_id as typearea,'
      'p4.person_discharge_id as discharge'
      ''
      'FROM person_anc_service_detail p1'
      
        'LEFT JOIN anc_service a1 ON p1.anc_service_id = a1.anc_service_i' +
        'd '
      
        'LEFT JOIN person_anc_service p2 ON p1.person_anc_service_id = p2' +
        '.person_anc_service_id'
      
        'LEFT OUTER JOIN person_anc p3 ON p2.person_anc_id = p3.person_an' +
        'c_id '
      'LEFT OUTER JOIN person p4 ON p3.person_id = p4.person_id'
      'LEFT OUTER JOIN doctor dc ON dc.`code` = p2.provider_hospcode'
      ''
      'WHERE p4.cid IS NOT NULL'
      
        'AND p2.anc_service_date BETWEEN :date_start_text AND :date_end_t' +
        'ext'
      ''
      'UNION ALL'
      ''
      'SELECT DISTINCT'
      '(SELECT hospitalcode FROM opdconfig) AS HOSPCODE,'
      'w5.person_id AS PID,'
      'w3.vn AS SEQ,'
      
        'IF(w3.service_date IS NULL OR TRIM(w3.service_date)='#39#39' OR w3.ser' +
        'vice_date LIKE '#39'0000-00-00%'#39','#39#39',DATE_FORMAT(w3.service_date,'#39'%Y%' +
        'm%d'#39') ) AS DATE_SERV,'
      'w2.export_vaccine_code AS VACCINETYPE,'
      '(SELECT hospitalcode FROM opdconfig)  AS VACCINEPLACE,'
      'dc.cid AS PROVIDER,'
      
        'IF(w4.last_update  IS NULL OR TRIM(w4.last_update)='#39#39' OR w4.last' +
        '_update LIKE '#39'0000-00-00%'#39','#39#39',DATE_FORMAT(w4.last_update,'#39'%Y%m%d' +
        '%H%i%s'#39') ) AS D_UPDATE,'
      'w5.cid AS CID,'
      'w5.patient_hn as HN,'
      'concat(w5.pname,w5.fname," ",w5.lname) as ptname,'
      'w5.house_regist_type_id as typearea,'
      'w5.person_discharge_id as discharge'
      ''
      'FROM person_wbc_vaccine_detail w1'
      
        'LEFT JOIN wbc_vaccine w2 ON w1.wbc_vaccine_id = w2.wbc_vaccine_i' +
        'd'
      
        'LEFT JOIN person_wbc_service w3 ON w1.person_wbc_service_id = w3' +
        '.person_wbc_service_id'
      
        'LEFT OUTER JOIN person_wbc w4 ON w3.person_wbc_id = w4.person_wb' +
        'c_id'
      'LEFT OUTER JOIN person w5 ON w4.person_id = w5.person_id '
      'LEFT OUTER JOIN doctor dc ON dc.`code` = w1.doctor_code'
      ''
      'WHERE w5.cid IS NOT NULL '
      'AND w3.service_date BETWEEN :date_start_text AND :date_end_text'
      ''
      'UNION ALL'
      ''
      'SELECT DISTINCT'
      '(SELECT hospitalcode FROM opdconfig) AS HOSPCODE,'#9
      'pw.person_id AS PID,'
      'pv.vn AS SEQ,'
      
        'IF(pw.vaccine_date IS NULL OR TRIM(pw.vaccine_date)='#39#39' OR pw.vac' +
        'cine_date LIKE '#39'0000-00-00%'#39','#39#39',DATE_FORMAT(pw.vaccine_date,'#39'%Y%' +
        'm%d'#39') ) AS DATE_SERV,'
      
        '(SELECT pv.export_vaccine_code FROM person_vaccine pv WHERE pw.p' +
        'erson_vaccine_id=pv.person_vaccine_id ) AS VACCINETYPE,'
      'pw.hospcode AS VACCINEPLACE,'
      #39#39' AS PROVIDER,'
      
        'IF(pw.update_datetime IS NULL OR TRIM(pw.update_datetime)='#39#39' OR ' +
        'pw.update_datetime LIKE '#39'0000-00-00%'#39','#39#39',DATE_FORMAT(pw.update_d' +
        'atetime,'#39'%Y%m%d%H%i%s'#39') ) AS D_UPDATE,'
      'p.cid AS CID,'
      'p.patient_hn as HN,'
      'concat(p.pname,p.fname," ",p.lname) as ptname,'
      'p.house_regist_type_id as typearea,'
      'p.person_discharge_id as discharge'
      ''
      'FROM person_vaccine_elsewhere pw'
      
        'LEFT JOIN person_epi_vaccine pv ON pw.person_vaccine_id=pv.perso' +
        'n_epi_id'
      'LEFT JOIN person p ON pw.person_id = p.person_id'
      ''
      ''
      'WHERE p.cid IS NOT NULL'
      'AND pw.vaccine_date BETWEEN :date_start_text AND :date_end_text'
      ''
      'UNION ALL'
      ''
      'SELECT DISTINCT'
      '(SELECT hospitalcode FROM opdconfig) AS HOSPCODE,'
      
        'IF(p.person_id IS NULL OR p.person_id="0",o.hn,p.person_id) AS P' +
        'ID,'
      '#p.person_id as PID,'
      'ov.vn AS SEQ,'
      
        'IF(o.vstdate IS NULL OR TRIM(o.vstdate)='#39#39' OR o.vstdate LIKE '#39'00' +
        '00-00-00%'#39','#39#39',DATE_FORMAT(o.vstdate,'#39'%Y%m%d'#39') ) AS DATE_SERV,'
      'pv.export_vaccine_code AS VACCINETYPE,'
      '(SELECT hospitalcode FROM opdconfig) AS VACCINEPLACE,'
      'dc.cid AS PROVIDER,'
      
        'IF(o.vstdate IS NULL OR TRIM(o.vstdate)='#39#39' OR o.vstdate LIKE '#39'00' +
        '00-00-00%'#39','#39#39',DATE_FORMAT(o.vstdate,'#39'%Y%m%d'#39') ) AS D_UPDATE,'
      'IF(p.cid IS NULL,pt.cid,p.cid) AS CID,'
      'p.patient_hn as HN,'
      'concat(p.pname,p.fname," ",p.lname) as ptname,'
      'p.house_regist_type_id as typearea,'
      'p.person_discharge_id as discharge'
      ''
      'FROM ovst_vaccine ov'
      
        'LEFT OUTER JOIN person_vaccine pv on pv.person_vaccine_id = ov.p' +
        'erson_vaccine_id'
      'LEFT OUTER JOIN ovst o on o.vn = ov.vn'
      'LEFT OUTER JOIN patient pt on pt.hn = o.hn'
      'LEFT OUTER JOIN person p on p.cid = pt.cid'
      'LEFT OUTER JOIN opduser us on us.loginname = ov.staff'
      'LEFT OUTER JOIN doctor dc on us.`name` = dc.`name`'
      ''
      'WHERE o.vstdate BETWEEN :date_start_text AND :date_end_text'
      ''
      ''
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
  object Df43_epi: TMyDataSource
    DataSet = Qf43_epi
    Left = 424
    Top = 168
  end
end
