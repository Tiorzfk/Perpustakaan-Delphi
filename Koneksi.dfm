object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 277
  Top = 207
  Height = 387
  Width = 334
  object koneksilogin: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=Perpu' +
      'stakaan;Initial Catalog=db_perpustakaan;'
    Left = 48
  end
  object DataSourceBuku: TDataSource
    DataSet = qrybuku
    Top = 56
  end
  object qrybuku: TADOQuery
    Connection = koneksilogin
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tb_buku')
    Left = 80
    Top = 56
  end
  object qrypegawai: TADOQuery
    Connection = koneksilogin
    Parameters = <>
    Left = 80
    Top = 120
  end
  object DataSourcePegawai: TDataSource
    DataSet = qrypegawai
    Top = 120
  end
  object qrypengunjung: TADOQuery
    Connection = koneksilogin
    Parameters = <>
    Left = 80
    Top = 184
  end
  object DataSourcePengunjung: TDataSource
    DataSet = qrypengunjung
    Top = 184
  end
  object qryanggota: TADOQuery
    Connection = koneksilogin
    Parameters = <>
    Left = 80
    Top = 240
  end
  object DataSourceAnggota: TDataSource
    DataSet = qryanggota
    Top = 248
  end
end
