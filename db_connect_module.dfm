object db_connect_m: Tdb_connect_m
  OldCreateOrder = False
  Height = 435
  Width = 560
  object connect_db: TMyConnection
    Database = 'hosxp'
    Options.Charset = 'tis620'
    Options.DisconnectedMode = True
    Username = 'root'
    Password = '123456'
    Server = '127.0.0.1'
    Left = 192
    Top = 48
  end
  object connect_slave: TMyConnection
    Options.Charset = 'tis620'
    Options.DisconnectedMode = True
    Left = 296
    Top = 48
  end
end
