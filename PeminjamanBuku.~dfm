object Peminjaman_Buku: TPeminjaman_Buku
  Left = 281
  Top = 192
  Width = 781
  Height = 430
  Caption = 'Peminjaman_Buku'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 16
    Width = 63
    Height = 13
    Caption = 'Id Anggota'
    FocusControl = Edit_id
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 48
    Width = 45
    Height = 13
    Caption = 'Id Buku'
    FocusControl = Edit_IdBuku
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 80
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
  object Label5: TLabel
    Left = 8
    Top = 112
    Width = 81
    Height = 13
    Caption = 'Jumlah Pinjam'
    FocusControl = Edit_jmlpinjam
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
    object Button4: TButton
      Left = 8
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Pinjam'
      TabOrder = 0
    end
    object Button5: TButton
      Left = 96
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Hapus'
      TabOrder = 1
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
  object Edit_id: TDBEdit
    Left = 144
    Top = 16
    Width = 95
    Height = 21
    DataField = 'No_Anggota'
    TabOrder = 2
  end
  object Edit_IdBuku: TDBEdit
    Left = 144
    Top = 48
    Width = 97
    Height = 21
    DataField = 'Kode_Buku'
    TabOrder = 3
  end
  object Edit_jmlpinjam: TDBEdit
    Left = 144
    Top = 112
    Width = 97
    Height = 21
    DataField = 'Jumlah_Pinjam'
    TabOrder = 4
  end
  object DateTimePicker1: TDateTimePicker
    Left = 144
    Top = 80
    Width = 97
    Height = 21
    Date = 40276.000000000000000000
    Format = 'dd/MM/yyyy'
    Time = 40276.000000000000000000
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 168
    Width = 753
    Height = 193
    DataSource = DataSourcePeminjaman
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_peminjam'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'judul'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pengarang'
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'penerbit'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tgl_pinjam'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tgl_kembali'
        Visible = True
      end>
  end
  object cb_judulbuku: TComboBox
    Left = 248
    Top = 48
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 7
  end
  object cb_nama: TComboBox
    Left = 248
    Top = 16
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 8
  end
  object DataSourcePeminjaman: TDataSource
    DataSet = qrypeminjaman
    Left = 344
    Top = 248
  end
  object koneksi: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=Perpu' +
      'stakaan;Initial Catalog=db_perpustakaan;'
    Left = 328
    Top = 208
  end
  object qrypeminjaman: TADOQuery
    Active = True
    Connection = koneksi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT id_peminjam,penerbit,pengarang,tb_anggota.nama,tb_buku.ju' +
        'dul,tgl_pinjam,tgl_kembali from tb_peminjaman left join tb_anggo' +
        'ta on tb_peminjaman.id_anggota=tb_anggota.id_anggota left join t' +
        'b_buku on tb_peminjaman.id_buku=tb_buku.id_buku')
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
  object qrynama: TADOQuery
    Active = True
    Connection = koneksi
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tb_anggota')
    Left = 312
    Top = 312
  end
  object DataSource2: TDataSource
    DataSet = qrynama
    Left = 344
    Top = 312
  end
end
