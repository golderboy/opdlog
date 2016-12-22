object db_connect_m: Tdb_connect_m
  OldCreateOrder = False
  Height = 435
  Width = 560
  object connect_db: TMyConnection
    Options.Charset = 'tis620'
    Options.DisconnectedMode = True
    Left = 192
    Top = 48
  end
  object connect_slave: TMyConnection
    Options.Charset = 'tis620'
    Options.DisconnectedMode = True
    Left = 296
    Top = 48
  end
  object connect_opd: TMyConnection
    Options.Charset = 'utf8'
    Options.DisconnectedMode = True
    Left = 392
    Top = 48
  end
  object Qlog: TMyQuery
    Connection = connect_opd
    SQL.Strings = (
      'select * from log_opd;')
    Left = 400
    Top = 120
  end
end
