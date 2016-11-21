object db_connect_m: Tdb_connect_m
  OldCreateOrder = False
  Height = 435
  Width = 560
  object connect_db: TMyConnection
    Database = 'hosxpv4'
    Options.Charset = 'tis620'
    Options.DisconnectedMode = True
    Username = 'sobmoeihosxp'
    Password = 'bmspnpt5811207'
    Server = '192.168.1.6'
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
    Database = 'db_opdlog'
    Options.Charset = 'utf8'
    Options.DisconnectedMode = True
    Username = 'pond-prox'
    Password = 'pnpt5811207'
    Server = '192.168.1.219'
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
  object connect_main: TMyConnection
    Database = 'db_opdlog'
    Options.Charset = 'utf8'
    Options.DisconnectedMode = True
    Username = 'pond-prox'
    Password = 'pnpt5811207'
    Server = '118.174.143.94'
    Left = 296
    Top = 120
  end
  object Qversion: TMyQuery
    Connection = connect_main
    SQL.Strings = (
      'select * from version;')
    ReadOnly = True
    Active = True
    Left = 296
    Top = 176
  end
end
