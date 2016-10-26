object connection_form: Tconnection_form
  Left = 0
  Top = 0
  Caption = 'connection_form'
  ClientHeight = 525
  ClientWidth = 786
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    786
    525)
  PixelsPerInch = 96
  TextHeight = 20
  object Label1: TLabel
    Left = 40
    Top = 160
    Width = 34
    Height = 20
    Caption = 'Host'
  end
  object Label2: TLabel
    Left = 40
    Top = 190
    Width = 70
    Height = 20
    Caption = 'Database'
  end
  object Label3: TLabel
    Left = 40
    Top = 220
    Width = 31
    Height = 20
    Caption = 'user'
  end
  object Label4: TLabel
    Left = 40
    Top = 250
    Width = 35
    Height = 20
    Caption = 'Pass'
  end
  object Label5: TLabel
    Left = 40
    Top = 280
    Width = 29
    Height = 20
    Caption = 'Port'
  end
  object Label6: TLabel
    Left = 96
    Top = 119
    Width = 121
    Height = 20
    Caption = #3605#3636#3604#3605#3656#3629#3600#3634#3609#3586#3657#3629#3617#3641#3621#3627#3621#3633#3585
  end
  object Label7: TLabel
    Left = 488
    Top = 160
    Width = 34
    Height = 20
    Caption = 'Host'
  end
  object Label8: TLabel
    Left = 488
    Top = 190
    Width = 70
    Height = 20
    Caption = 'Database'
  end
  object Label9: TLabel
    Left = 488
    Top = 220
    Width = 31
    Height = 20
    Caption = 'user'
  end
  object Label10: TLabel
    Left = 488
    Top = 250
    Width = 35
    Height = 20
    Caption = 'Pass'
  end
  object Label11: TLabel
    Left = 488
    Top = 280
    Width = 29
    Height = 20
    Caption = 'Port'
  end
  object Label12: TLabel
    Left = 544
    Top = 119
    Width = 132
    Height = 20
    Caption = #3605#3636#3604#3605#3656#3629#3600#3634#3609#3586#3657#3629#3617#3641#3621#3626#3635#3619#3629#3591
  end
  object JvNavPanelHeader1: TJvNavPanelHeader
    Left = 0
    Top = 0
    Width = 786
    Height = 73
    Align = alTop
    Caption = 'mysql connection'
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
    Top = 467
    Width = 786
    Height = 58
    Align = alBottom
    TabOrder = 14
    DesignSize = (
      786
      58)
    object save_btn: TcxButton
      Left = 674
      Top = 16
      Width = 83
      Height = 33
      Anchors = [akRight, akBottom]
      Caption = 'save'
      TabOrder = 0
      OnClick = save_btnClick
    end
  end
  object host: TcxTextEdit
    Left = 120
    Top = 157
    TabOrder = 0
    Text = 'host'
    Width = 147
  end
  object database: TcxTextEdit
    Left = 120
    Top = 187
    TabOrder = 1
    Text = 'database'
    Width = 147
  end
  object user: TcxTextEdit
    Left = 120
    Top = 217
    TabOrder = 2
    Text = 'user'
    Width = 147
  end
  object pass: TcxTextEdit
    Left = 120
    Top = 247
    Properties.EchoMode = eemPassword
    TabOrder = 3
    Text = 'pass'
    Width = 147
  end
  object connect_btn: TcxButton
    Left = 40
    Top = 311
    Width = 227
    Height = 46
    Caption = 'connect'
    TabOrder = 5
    OnClick = connect_btnClick
  end
  object exit_btn: TcxButton
    Left = 24
    Top = 483
    Width = 73
    Height = 34
    Anchors = [akLeft, akBottom]
    Caption = 'EXIT'
    TabOrder = 13
    OnClick = exit_btnClick
  end
  object port: TcxSpinEdit
    Left = 120
    Top = 277
    TabOrder = 4
    Width = 147
  end
  object host_slave: TcxTextEdit
    Left = 568
    Top = 157
    TabOrder = 6
    Text = 'host_slave'
    Width = 147
  end
  object database_slave: TcxTextEdit
    Left = 568
    Top = 187
    TabOrder = 7
    Text = 'database_slave'
    Width = 147
  end
  object user_slave: TcxTextEdit
    Left = 568
    Top = 217
    TabOrder = 8
    Text = 'user_slave'
    Width = 147
  end
  object pass_slave: TcxTextEdit
    Left = 568
    Top = 247
    Properties.EchoMode = eemPassword
    TabOrder = 9
    Text = 'pass_slave'
    Width = 147
  end
  object port_slave: TcxSpinEdit
    Left = 568
    Top = 277
    TabOrder = 10
    Width = 147
  end
  object connect_btn_slave: TcxButton
    Left = 488
    Top = 311
    Width = 227
    Height = 46
    Caption = 'connect'
    TabOrder = 11
    OnClick = connect_btn_slaveClick
  end
end
