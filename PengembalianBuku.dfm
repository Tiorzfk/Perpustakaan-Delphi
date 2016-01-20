object FormPengembalian: TFormPengembalian
  Left = 201
  Top = 153
  Width = 819
  Height = 480
  Caption = 'FormPengembalian'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 16
    Width = 84
    Height = 13
    Caption = 'Nama Anggota'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 56
    Width = 66
    Height = 13
    Caption = 'Nama Buku'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 96
    Width = 88
    Height = 13
    Caption = 'Tanggal Pinjam'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 528
    Top = 8
    Width = 185
    Height = 81
    Caption = 'Tombol Proses'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Button5: TButton
      Left = 96
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Hapus'
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 528
    Top = 104
    Width = 185
    Height = 49
    Caption = 'Pencarian'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Edit1: TEdit
      Left = 8
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Button7: TButton
      Left = 136
      Top = 16
      Width = 41
      Height = 25
      Caption = 'Cari'
      TabOrder = 1
    end
  end
  object dt: TDateTimePicker
    Left = 136
    Top = 96
    Width = 121
    Height = 21
    Date = 40276.000000000000000000
    Format = 'dd/MM/yyyy'
    Time = 40276.000000000000000000
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 176
    Width = 769
    Height = 193
    DataSource = DataSourcePeminjaman
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_kembali'
        Title.Caption = 'Id peminjam'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Title.Caption = 'Nama'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'judul'
        Title.Caption = 'Judul'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pengarang'
        Title.Caption = 'Pengarang'
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'penerbit'
        Title.Caption = 'Penerbit'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tgl_kembali'
        Title.Caption = 'Tgl. pinjam'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tgl_harus_kembali'
        Title.Caption = 'Tgl. Harus kembali'
        Visible = True
      end>
  end
  object id_anggota: TDBEdit
    Left = 136
    Top = 16
    Width = 121
    Height = 21
    DataField = 'id_anggota'
    DataSource = DataSource2
    TabOrder = 4
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 280
    Top = 16
    Width = 145
    Height = 21
    BiDiMode = bdLeftToRight
    DataField = 'nama'
    DataSource = DataSource3
    KeyField = 'nama'
    ListField = 'nama'
    ListSource = DataSource2
    ParentBiDiMode = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 5
  end
  object id_buku: TDBEdit
    Left = 136
    Top = 56
    Width = 121
    Height = 21
    DataField = 'id_buku'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 280
    Top = 56
    Width = 145
    Height = 21
    DataField = 'judul'
    DataSource = DataSource3
    KeyField = 'judul'
    ListField = 'judul'
    ListSource = DataSource1
    TabOrder = 7
  end
  object Button1: TButton
    Left = 544
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Kembalikan'
    TabOrder = 8
  end
  object DataSourcePeminjaman: TDataSource
    DataSet = qrypengembalian
    Left = 344
    Top = 248
  end
  object koneksi: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=Perpu' +
      'stakaan;Initial Catalog=db_perpustakaan;'
    Mode = cmWrite
    Left = 328
    Top = 208
  end
  object qrypengembalian: TADOQuery
    Active = True
    Connection = koneksi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT id_kembali,penerbit,pengarang,tb_anggota.nama,tb_buku.jud' +
        'ul,tgl_harus_kembali,tgl_kembali from tb_pengembalian left join ' +
        'tb_anggota on tb_pengembalian.id_anggota=tb_anggota.id_anggota l' +
        'eft join tb_buku on tb_pengembalian.id_buku=tb_buku.id_buku')
    Left = 312
    Top = 248
  end
  object DataSource1: TDataSource
    DataSet = qryjudul
    Left = 344
    Top = 280
  end
  object qryjudul: TADOQuery
    Active = True
    Connection = koneksi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tb_buku')
    Left = 312
    Top = 280
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery1
    Left = 344
    Top = 312
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = koneksi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tb_anggota')
    Left = 312
    Top = 312
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = koneksi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT id_peminjam,penerbit,pengarang,tb_anggota.nama,tb_buku.ju' +
        'dul,tgl_pinjam,tgl_kembali from tb_peminjaman left join tb_anggo' +
        'ta on tb_peminjaman.id_anggota=tb_anggota.id_anggota left join t' +
        'b_buku on tb_peminjaman.id_buku=tb_buku.id_buku'
      '')
    Left = 424
    Top = 248
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery2
    Left = 392
    Top = 248
  end
end
