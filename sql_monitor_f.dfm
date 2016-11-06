object FrmLogSql: TFrmLogSql
  Left = 0
  Top = 0
  Caption = 'FrmLogSql'
  ClientHeight = 449
  ClientWidth = 725
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
  object header_login: TJvNavPanelHeader
    Left = 0
    Top = 0
    Width = 725
    Height = 25
    Align = alTop
    Caption = '    SQL MONITOR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ImageIndex = 0
  end
  object show_visit: TcxGrid
    AlignWithMargins = True
    Left = 3
    Top = 69
    Width = 719
    Height = 377
    Align = alClient
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ExplicitLeft = 19
    ExplicitTop = 47
    ExplicitHeight = 394
    object show_visitDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = Dprosress
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnFilteredItemsList = True
      OptionsData.Appending = True
      OptionsView.GroupByBox = False
      object show_visitDBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Width = 55
      end
      object show_visitDBTableView1USER: TcxGridDBColumn
        DataBinding.FieldName = 'USER'
        Width = 105
      end
      object show_visitDBTableView1HOST: TcxGridDBColumn
        DataBinding.FieldName = 'HOST'
        Width = 123
      end
      object show_visitDBTableView1DB: TcxGridDBColumn
        DataBinding.FieldName = 'DB'
        Width = 56
      end
      object show_visitDBTableView1COMMAND: TcxGridDBColumn
        DataBinding.FieldName = 'COMMAND'
        Width = 83
      end
      object show_visitDBTableView1TIME: TcxGridDBColumn
        DataBinding.FieldName = 'TIME'
        Width = 55
      end
      object show_visitDBTableView1STATE: TcxGridDBColumn
        DataBinding.FieldName = 'STATE'
        Width = 363
      end
      object show_visitDBTableView1INFO: TcxGridDBColumn
        DataBinding.FieldName = 'INFO'
        Width = 334
      end
      object show_visitDBTableView1TIME_MS: TcxGridDBColumn
        DataBinding.FieldName = 'TIME_MS'
        Width = 100
      end
      object show_visitDBTableView1PROGRESS: TcxGridDBColumn
        DataBinding.FieldName = 'PROGRESS'
        Width = 82
      end
      object show_visitDBTableView1MEMORY_USED: TcxGridDBColumn
        DataBinding.FieldName = 'MEMORY_USED'
      end
    end
    object show_visitLevel1: TcxGridLevel
      GridView = show_visitDBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 25
    Width = 725
    Height = 41
    Align = alTop
    TabOrder = 2
    ExplicitLeft = 200
    ExplicitTop = 152
    ExplicitWidth = 185
    DesignSize = (
      725
      41)
    object RzBitBtn1: TRzBitBtn
      Left = 647
      Top = 6
      Anchors = [akTop, akRight]
      Caption = 'Execute'
      TabOrder = 0
      OnClick = RzBitBtn1Click
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000520B0000520B00000001000000000000000000003300
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
        0000000000000000000000000000000000000000000000000000E8E8E8E8E8AA
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E881E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8AA
        A2E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        AAA2E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        AAD5A2E8E8E8E8E8E8E8E8E8E8E8E8E881E381E8E8E8E8E8E8E8E8E8E8E8AAA2
        A2A2D4A2E8E8E8E8E8E8E8E8E8E881818181AC81E8E8E8E8E8E8E8E8E8E8AAD5
        D4D4D4D4A2E8E8E8E8E8E8E8E8E881E3ACACACAC81E8E8E8E8E8E8E8E8E8E8AA
        D5D4A2AAAAAAE8E8E8E8E8E8E8E8E881E3AC81818181E8E8E8E8E8E8E8E8E8AA
        D5D4D4A2E8E8E8E8E8E8E8E8E8E8E881E3ACAC81E8E8E8E8E8E8E8E8AAA2A2A2
        A2D5D4D4A2E8E8E8E8E8E8E88181818181E3ACAC81E8E8E8E8E8E8E8AAD5D5D4
        D4D4D4D4D4A2E8E8E8E8E8E881E3E3ACACACACACAC81E8E8E8E8E8E8E8AAD5D5
        D4D4A2AAAAAAE8E8E8E8E8E8E881E3E3ACAC81818181E8E8E8E8E8E8E8AAD5D5
        D5D4D4A2E8E8E8E8E8E8E8E8E881E3E3E3ACAC81E8E8E8E8E8E8E8E8E8E8AAD5
        D5D5D4D4A2E8E8E8E8E8E8E8E8E881E3E3E3ACAC81E8E8E8E8E8E8E8E8E8AAD5
        D5D5D4D4D4A2E8E8E8E8E8E8E8E881E3E3E3ACACAC81E8E8E8E8E8E8E8E8E8AA
        D5D5D5D4D4D4A2E8E8E8E8E8E8E8E881E3E3E3ACACAC81E8E8E8E8E8E8E8E8AA
        AAAAAAAAAAAAAAAAE8E8E8E8E8E8E8818181818181818181E8E8}
      NumGlyphs = 2
    end
  end
  object Qprosress: TMyQuery
    Connection = db_connect_m.connect_db
    SQL.Strings = (
      'select * from INFORMATION_SCHEMA.PROCESSLIST '
      ''
      'limit 10 ;')
    ReadOnly = True
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoRefresh = True
    Options.AutoRefreshInterval = 5
    Options.AutoPrepare = True
    Options.DetailDelay = 1
    Left = 160
    Top = 128
  end
  object Dprosress: TMyDataSource
    AutoEdit = False
    DataSet = Qprosress
    Left = 264
    Top = 128
  end
end
