object room_config_from: Troom_config_from
  Left = 0
  Top = 0
  Caption = 'room_config_from'
  ClientHeight = 448
  ClientWidth = 756
  Color = clBtnFace
  Font.Charset = THAI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 24
  object Label13: TLabel
    Left = 40
    Top = 66
    Width = 138
    Height = 24
    Caption = #3619#3627#3633#3626#3627#3657#3629#3591#3605#3619#3623#3592' OPD'
  end
  object memo_text: TcxMemo
    Left = 40
    Top = 148
    Lines.Strings = (
      
        #3585#3619#3640#3603#3634#3605#3633#3657#3591#3588#3656#3634#3627#3657#3629#3591#3605#3619#3623#3592' OPD '#3586#3629#3607#3656#3634#3609' (version '#3611#3633#3592#3592#3640#3610#3633#3609#3652#3604#3657#3648#3614#3637#3618#3591' 1 '#3627#3657#3629#3591 +
        ') '
      #3648#3626#3619#3655#3592#3649#3621#3657#3623#3585#3604' Save '#3611#3636#3604#3650#3611#3619#3649#3585#3619#3617' '#3649#3621#3657#3623#3648#3586#3657#3634#3650#3611#3619#3649#3585#3619#3617#3629#3637#3585#3588#3619#3633#3657#3591#3588#3619#3633#3610)
    Properties.ReadOnly = True
    TabOrder = 0
    Height = 117
    Width = 513
  end
  object Panel1: TPanel
    Left = 0
    Top = 390
    Width = 756
    Height = 58
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      756
      58)
    object cearte_btn: TcxButton
      Left = 636
      Top = 8
      Width = 83
      Height = 33
      Anchors = [akRight, akBottom]
      Caption = 'save'
      TabOrder = 0
      OnClick = cearte_btnClick
    end
  end
  object JvNavPanelHeader1: TJvNavPanelHeader
    Left = 0
    Top = 0
    Width = 756
    Height = 41
    Align = alTop
    Caption = 'CONFIG ROOM OPD'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ImageIndex = 0
  end
  object opd_chk: TcxTextEdit
    Left = 40
    Top = 96
    Properties.MaxLength = 3
    TabOrder = 3
    Text = '000'
    Width = 121
  end
end
