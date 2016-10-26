object miniEMR_form: TminiEMR_form
  AlignWithMargins = True
  Left = 0
  Top = 0
  VertScrollBar.Smooth = True
  Caption = 'miniEMR_form'
  ClientHeight = 746
  ClientWidth = 1246
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object header_login: TJvNavPanelHeader
    Left = 0
    Top = 0
    Width = 1246
    Height = 49
    Align = alTop
    Caption = '    Mini EMR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ImageIndex = 0
    ExplicitWidth = 773
  end
  object Panel1: TPanel
    Left = 0
    Top = 696
    Width = 1246
    Height = 50
    Align = alBottom
    TabOrder = 1
    ExplicitWidth = 773
    DesignSize = (
      1246
      50)
    object RzBitBtn1: TRzBitBtn
      Left = 1152
      Top = 6
      Width = 82
      Height = 35
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
      ExplicitLeft = 679
    end
    object RzBitBtn2: TRzBitBtn
      Left = 1048
      Top = 6
      Width = 82
      Height = 35
      Anchors = [akRight, akBottom]
      Caption = 'Print'
      TabOrder = 1
      OnClick = RzBitBtn1Click
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
      ExplicitLeft = 575
    end
  end
  object person_text: TDBMemo
    AlignWithMargins = True
    Left = 3
    Top = 52
    Width = 1240
    Height = 0
    Align = alTop
    DataField = 'person_tag'
    TabOrder = 2
    ExplicitWidth = 767
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 244
    Width = 1240
    Height = 193
    Align = alClient
    TabOrder = 3
    ExplicitWidth = 767
    ExplicitHeight = 199
    object cxGrid1: TcxGrid
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 623
      Height = 185
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 636
      ExplicitTop = 5
      ExplicitWidth = 606
      ExplicitHeight = 127
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = Dlab_note
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1order_date: TcxGridDBColumn
          DataBinding.FieldName = 'order_date'
        end
        object cxGrid1DBTableView1lab_items_name_ref: TcxGridDBColumn
          DataBinding.FieldName = 'lab_items_name_ref'
          Width = 120
        end
        object cxGrid1DBTableView1lab_items_normal_value: TcxGridDBColumn
          DataBinding.FieldName = 'lab_items_normal_value'
          Width = 121
        end
        object cxGrid1DBTableView1LabReport: TcxGridDBColumn
          DataBinding.FieldName = 'LabReport'
          Width = 193
        end
        object cxGrid1DBTableView1report_date: TcxGridDBColumn
          DataBinding.FieldName = 'report_date'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object Gdrug: TcxGrid
      AlignWithMargins = True
      Left = 633
      Top = 4
      Width = 603
      Height = 185
      Align = alRight
      TabOrder = 1
      ExplicitLeft = 160
      ExplicitHeight = 191
      object GdrugDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = Ddrug_note
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object GdrugDBTableView1DrName: TcxGridDBColumn
          DataBinding.FieldName = 'DrName'
          Width = 367
        end
        object GdrugDBTableView1Doctor: TcxGridDBColumn
          DataBinding.FieldName = 'Doctor'
          Width = 130
        end
      end
      object GdrugLevel1: TcxGridLevel
        GridView = GdrugDBTableView1
      end
    end
  end
  object Panel5: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 584
    Width = 1240
    Height = 109
    Align = alBottom
    TabOrder = 4
    ExplicitWidth = 767
    object Gmed: TcxGrid
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 623
      Height = 101
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 150
      object GmedDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = Dmed_note
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object GmedDBTableView1ITEMs: TcxGridDBColumn
          DataBinding.FieldName = 'ITEMs'
          Width = 537
        end
      end
      object GmedLevel1: TcxGridLevel
        GridView = GmedDBTableView1
      end
    end
    object Gxray: TcxGrid
      AlignWithMargins = True
      Left = 633
      Top = 4
      Width = 603
      Height = 101
      Align = alRight
      TabOrder = 1
      ExplicitLeft = 160
      object GxrayDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = Dxray_note
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object GxrayDBTableView1xray_items_name: TcxGridDBColumn
          DataBinding.FieldName = 'xray_items_name'
          Width = 165
        end
        object GxrayDBTableView1XrayResult: TcxGridDBColumn
          DataBinding.FieldName = 'XrayResult'
        end
      end
      object GxrayLevel1: TcxGridLevel
        GridView = GxrayDBTableView1
      end
    end
  end
  object emr_text: TMemo
    Left = 0
    Top = 55
    Width = 1246
    Height = 186
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Angsana New'
    Font.Style = []
    Lines.Strings = (
      'emr_text')
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 5
    ExplicitWidth = 773
  end
  object Panel3: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 443
    Width = 1240
    Height = 135
    Align = alBottom
    TabOrder = 6
    ExplicitLeft = 0
    ExplicitTop = 447
    ExplicitWidth = 1246
    object Gdent: TcxGrid
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 620
      Height = 127
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 153
      object GdentDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = Ddent_note
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object GdentDBTableView1tmcode: TcxGridDBColumn
          DataBinding.FieldName = 'tmcode'
        end
        object GdentDBTableView1dt_name: TcxGridDBColumn
          DataBinding.FieldName = 'dt_name'
          Width = 478
        end
      end
      object GdentLevel1: TcxGridLevel
        GridView = GdentDBTableView1
      end
    end
    object Gdiag: TcxGrid
      AlignWithMargins = True
      Left = 630
      Top = 4
      Width = 606
      Height = 127
      Align = alRight
      TabOrder = 1
      ExplicitLeft = 636
      object GdiagDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = Ddaig_note
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object GdiagDBTableView1icd10: TcxGridDBColumn
          DataBinding.FieldName = 'icd10'
        end
        object GdiagDBTableView1diag_name: TcxGridDBColumn
          DataBinding.FieldName = 'diag_name'
          Width = 485
        end
      end
      object GdiagLevel1: TcxGridLevel
        GridView = GdiagDBTableView1
      end
    end
  end
  object Qperson: TMyQuery
    Connection = db_connect_m.connect_db
    SQL.Strings = (
      'SELECT concat("'#3586#3657#3629#3617#3641#3621#3612#3641#3657#3611#3656#3623#3618'\r\n",'
      
        '"VN :",v.vn," '#3623#3633#3609#3607#3637#3656#3617#3634#3619#3633#3610#3610#3619#3636#3585#3634#3619'  :  ",v.vstdate," HN : ",v.hn," ' +
        #3627#3657#3629#3591#3605#3619#3623#3592' :  ",k.department," '#3594#3639#3656#3629'-'#3626#3585#3640#3621' :  ",p.pname," ",p.fname,' +
        '" ",p.lname,'
      
        '"   '#3629#3634#3618#3640'  : ",v.age_y," '#3611#3637'  ",v.age_m," '#3648#3604#3639#3629#3609'  ",v.age_d," '#3623#3633#3609' )' +
        '","  '#3626#3636#3607#3608#3636#3585#3634#3619#3619#3633#3585#3625#3634'  :  ",v.pttype," ",t.name," '#3648#3621#3586#3607#3637#3656#3626#3636#3607#3608#3636#3660'  ",v' +
        '.pttypeno'
      ') as person_tag'
      ''
      'from vn_stat v'
      'LEFT OUTER JOIN patient p on p.hn = v.hn'
      'left outer join pttype t on t.pttype = v.pttype '
      'left outer join ovst_doctor_sign ods on ods.vn = v.vn'
      'left join kskdepartment k on k.depcode = ods.depcode'
      'where v.vn = :vn'
      'limit 1')
    ReadOnly = True
    AutoCalcFields = False
    Left = 120
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vn'
      end>
  end
  object Qnure_note: TMyQuery
    Connection = db_connect_m.connect_db
    SQL.Strings = (
      'SELECT '
      
        'concat("\r\n'#3585#3634#3619#3605#3619#3623#3592#3619#3656#3634#3618#3585#3634#3618'\r\n","'#3609#3657#3635#3627#3609#3633#3585' : ",bw,"   '#3626#3656#3623#3609#3626#3641#3591'  :  ' +
        '",height," BMI : ",bmi,"  SBP :  ",bpd," DBP : ",bps,'
      
        '"HR :",hr," PILSE : ",pulse," RR : ",rr," Temp : ",temperature) ' +
        'as health_tag'
      ''
      ''
      'from opdscreen '
      'where vn = :vn'
      'limit 1')
    ReadOnly = True
    AutoCalcFields = False
    Active = True
    Left = 176
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vn'
      end>
  end
  object Qdoctor_note: TMyQuery
    Connection = db_connect_m.connect_db
    SQL.Strings = (
      'SELECT'
      'CONCAT("\r\n '#3629#3634#3585#3634#3619#3586#3629#3591#3612#3641#3657#3611#3656#3623#3618' ","\r\n","CC : ",cc,"\r\n") as cc,'
      'CONCAT("HPI : ",hpi,"\r\n") as hpi,'
      'CONCAT("PHM : ",pmh,"\r\n")as phm'
      ''
      'from opdscreen '
      'where vn = :vn'
      'limit 1')
    ReadOnly = True
    AutoCalcFields = False
    Left = 248
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vn'
      end>
  end
  object Qdaig_note: TMyQuery
    Connection = db_connect_m.connect_db
    SQL.Strings = (
      'SELECT '
      
        'o.icd10,concat(" : [ ",IF(o.diagtype = 1,"PDX ] ",concat(" ",o.d' +
        'iagtype," ] ")),concat("DxName  : ",i1.`name`))as diag_name '
      ''
      'from ovstdiag o'
      'INNER JOIN icd101 i1 on i1.`code` = o.icd10'
      'WHERE vn = :vn'
      'ORDER BY o.diagtype,o.icd10')
    ReadOnly = True
    Left = 328
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vn'
      end>
  end
  object Qdrug_note: TMyQuery
    Connection = db_connect_m.connect_db
    SQL.Strings = (
      'select '
      
        'concat(if(s.name<>"",s.name ,"-"),"  ", if(d.strength is null,""' +
        ',s.strength),"  #  " ,if(o.qty is null,"",o.qty),"  ",if(s.units' +
        ' is null,"  ",s.units)," # ",    '
      
        'if(o.sum_price is null,"",substring(o.sum_price,1,length(o.sum_p' +
        'rice)-4))," '#3610#3634#3607'" )as DrName,dt.`name` as Doctor   '
      
        '      from opitemrece o                                         ' +
        '  '
      
        '      left outer join drugitems d on d.icode = o.icode          ' +
        '  '
      
        '      left outer join s_drugitems s on s.icode= o.icode         ' +
        '  '
      
        '      left outer join drugusage du on du.drugusage = o.drugusage' +
        '  '
      
        '      left outer join doctor dt on dt.code = o.doctor           ' +
        '  '
      '      where o.vn = :vn'
      '      order by o.doctor,o.item_no')
    ReadOnly = True
    Left = 456
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vn'
      end>
  end
  object Ddrug_note: TDataSource
    DataSet = Qdrug_note
    Left = 536
    Top = 16
  end
  object Qlab_note: TMyQuery
    Connection = db_connect_m.connect_db
    SQL.Strings = (
      
        'select h.order_date,h.order_department,h.report_date,h.lab_order' +
        '_number,h.hn,  '
      
        '      h.vn,o.lab_items_name_ref,h.form_name,o.lab_order_result,i' +
        '.lab_items_unit,   '
      
        '      i.lab_items_normal_value,o.lab_items_sub_group_code,s.lab_' +
        'items_sub_group_name ,   '
      
        '      concat(if(o.lab_items_name_ref is null,"",o.lab_items_name' +
        '_ref)  ," = " ,  '
      
        '      if((o.lab_order_result = "" or o.lab_order_result is null)' +
        ',"'#3619#3629#3612#3621'",o.lab_order_result)," ",   '
      
        '      if(i.lab_items_unit is null,"",i.lab_items_unit)) as LabRe' +
        'port  '
      '      from lab_head h   '
      
        '      left join lab_order o ON o.lab_order_number = h.lab_order_' +
        'number   '
      
        '      left join lab_items i ON i.lab_items_code = o.lab_items_co' +
        'de  '
      
        '      left join lab_items_sub_group s on s.lab_items_sub_group_c' +
        'ode = o.lab_items_sub_group_code  '
      '      where h.vn= :vn')
    ReadOnly = True
    Left = 600
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vn'
      end>
  end
  object Dlab_note: TDataSource
    DataSet = Qlab_note
    Left = 656
    Top = 16
  end
  object Dxray_note: TDataSource
    DataSet = Qxray_note
    Left = 592
    Top = 72
  end
  object Qxray_note: TMyQuery
    Connection = db_connect_m.connect_db
    SQL.Strings = (
      
        'select it.xray_items_name , report_rtf ,if((xr.report_text="" or' +
        ' xr.report_text is  null),"'#3619#3629#3612#3621'",xr.report_text) AS XrayResult  ' +
        '   '
      '      from xray_report xr          '
      
        '      inner join xray_items it on it.xray_items_code=xr.xray_ite' +
        'ms_code     '
      '      where xr.vn = :vn'
      'order by xr.request_date ,xr.request_time')
    ReadOnly = True
    Left = 536
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vn'
      end>
  end
  object Qmed_note: TMyQuery
    Connection = db_connect_m.connect_db
    SQL.Strings = (
      
        'select concat("['#3649#3612#3609#3652#3607#3618' ]",ot.health_med_operation_item_name, if(' +
        'ho.health_med_organ_name<>"",concat("  [ ",ho.health_med_organ_n' +
        'ame," ]"),"") ,"  #",hp.health_med_provider_full_name) AS ITEMs ' +
        ', hs.vn    '
      '      from health_med_service  hs    '
      
        '      left join health_med_service_operation so on so.health_med' +
        '_service_id=hs.health_med_service_id    '
      
        '      left join health_med_operation_item  ot on ot.health_med_o' +
        'peration_item_id =so.health_med_operation_item_id      '
      
        '      left join health_med_organ ho on ho.health_med_organ_id=so' +
        '.health_med_organ_id            '
      
        '      left join health_med_provider hp on hp.health_med_provider' +
        '_id=so.health_med_provider_id   '
      '      where hs.vn = :vn'
      '      union   '
      
        '      select concat("['#3585#3634#3618#3616#3634#3614' ]" ,pi.name ,"  # ",d.name)  AS ITE' +
        'Ms ,pd.vn   '
      '      from physic_plan_detail pd     '
      
        '      inner join physic_items pi on pi.physic_items_id =pd.physi' +
        'c_items_id    '
      
        '      left  join physic_plan_doctor pp  on pp.physic_plan_detail' +
        '_id=pd.physic_plan_detail_id   '
      
        '      left  join doctor d on d.code= pp.physic_plan_doctor_code ' +
        '  '
      '      where pd.vn = :vn'
      '      and pp.physic_doctor_position_id=1 '
      '      order by  ITEMs')
    ReadOnly = True
    Left = 392
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vn'
      end
      item
        DataType = ftUnknown
        Name = 'vn'
      end>
  end
  object Dmed_note: TDataSource
    DataSet = Qmed_note
    Left = 464
    Top = 72
  end
  object Qdent_note: TMyQuery
    Connection = db_connect_m.connect_db
    SQL.Strings = (
      
        'select dt.tmcode,concat(if(d1.name is null," - ",d1.name),"  '#3595#3637#3656 +
        #3615#3633#3609' ",dt.ttcode,"  #",d.name) as dt_name  '
      '       from dtmain dt   '
      '       left outer join dttm d1 on d1.code = dt.tmcode  '
      '       left outer join doctor d on d.code = dt.doctor  '
      '       where vn = :vn')
    ReadOnly = True
    Left = 248
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vn'
      end>
  end
  object Ddent_note: TDataSource
    DataSet = Qdent_note
    Left = 328
    Top = 72
  end
  object Ddaig_note: TDataSource
    DataSet = Qdaig_note
    Left = 392
    Top = 16
  end
end
