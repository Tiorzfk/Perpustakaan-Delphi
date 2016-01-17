object Pinjam_Buku: TPinjam_Buku
  Left = 211
  Top = 125
  Width = 754
  Height = 580
  Caption = 'Pinjam_Buku'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 76
    Height = 13
    Caption = 'No Transaksi'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 40
    Width = 68
    Height = 13
    Caption = 'No Anggota'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 72
    Width = 63
    Height = 13
    Caption = 'Kode Buku'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 104
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
    Top = 136
    Width = 81
    Height = 13
    Caption = 'Jumlah Pinjam'
    FocusControl = DBEdit5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 168
    Width = 132
    Height = 13
    Caption = 'Tanggal Harus Kembali'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 8
    Top = 200
    Width = 95
    Height = 13
    Caption = 'Tanggal Kembali'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 8
    Top = 232
    Width = 38
    Height = 13
    Caption = 'Denda'
    FocusControl = DBEdit8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 264
    Width = 713
    Height = 193
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'No_Transaksi'
        Title.Caption = 'No Transaksi'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'No_Anggota'
        Title.Caption = 'No Anggota'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nama_Anggota'
        Title.Caption = 'Nama Anggota'
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Kode_Buku'
        Title.Caption = 'Kode Buku'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Judul_Buku'
        Title.Alignment = taCenter
        Title.Caption = 'Judul Buku'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tanggal_Pinjam'
        Title.Caption = 'Tanggal Pinjam'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Jumlah_Pinjam'
        Title.Caption = 'Jumlah Pinjam'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Tanggal_Harus_Kembali'
        Title.Caption = 'Tanggal Harus Kembali'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Tanggal_Kembali'
        Title.Alignment = taCenter
        Title.Caption = 'Tanggal Kembali'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Denda'
        Title.Alignment = taCenter
        Width = 60
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 528
    Top = 8
    Width = 185
    Height = 113
    Caption = 'Tombol Proses'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Button1: TButton
      Left = 8
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Tambah'
      TabOrder = 0
    end
    object Button2: TButton
      Left = 96
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 1
    end
    object Button3: TButton
      Left = 96
      Top = 48
      Width = 75
      Height = 25
      Caption = 'Batal'
      TabOrder = 2
    end
    object Button4: TButton
      Left = 8
      Top = 48
      Width = 75
      Height = 25
      Caption = 'Simpan'
      TabOrder = 3
    end
    object Button5: TButton
      Left = 8
      Top = 80
      Width = 75
      Height = 25
      Caption = 'Hapus'
      TabOrder = 4
    end
    object Button6: TButton
      Left = 96
      Top = 80
      Width = 75
      Height = 25
      Caption = 'Keluar'
      TabOrder = 5
    end
  end
  object GroupBox2: TGroupBox
    Left = 528
    Top = 128
    Width = 185
    Height = 49
    Caption = 'Pencarian'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
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
  object DBEdit1: TDBEdit
    Left = 144
    Top = 8
    Width = 134
    Height = 21
    DataField = 'No_Transaksi'
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 144
    Top = 40
    Width = 95
    Height = 21
    DataField = 'No_Anggota'
    TabOrder = 4
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 248
    Top = 40
    Width = 145
    Height = 21
    DataField = 'Nama_Anggota'
    TabOrder = 5
  end
  object DBEdit3: TDBEdit
    Left = 144
    Top = 72
    Width = 69
    Height = 21
    DataField = 'Kode_Buku'
    TabOrder = 6
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 248
    Top = 72
    Width = 161
    Height = 21
    DataField = 'Judul_Buku'
    TabOrder = 7
  end
  object DBEdit5: TDBEdit
    Left = 144
    Top = 136
    Width = 134
    Height = 21
    DataField = 'Jumlah_Pinjam'
    TabOrder = 8
  end
  object DBEdit8: TDBEdit
    Left = 144
    Top = 232
    Width = 264
    Height = 21
    DataField = 'Denda'
    TabOrder = 9
  end
  object DateTimePicker1: TDateTimePicker
    Left = 144
    Top = 104
    Width = 97
    Height = 21
    Date = 40276.000000000000000000
    Format = 'dd/MM/yyyy'
    Time = 40276.000000000000000000
    TabOrder = 10
  end
  object DBEdit6: TDBEdit
    Left = 144
    Top = 168
    Width = 121
    Height = 21
    DataField = 'Tanggal_Harus_Kembali'
    TabOrder = 11
  end
  object DateTimePicker2: TDateTimePicker
    Left = 144
    Top = 200
    Width = 129
    Height = 21
    Date = 40276.000000000000000000
    Format = 'dd/MM/yyyy'
    Time = 40276.000000000000000000
    TabOrder = 12
  end
end
