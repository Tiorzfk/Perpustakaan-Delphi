object Menu_Pengunjung: TMenu_Pengunjung
  Left = 233
  Top = 276
  Width = 696
  Height = 389
  Caption = 'Lihat Buku'
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
  object GroupBox2: TGroupBox
    Left = 455
    Top = 8
    Width = 185
    Height = 57
    Caption = 'Masukan Judul Buku'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object SG: TStringGrid
    Left = 40
    Top = 72
    Width = 585
    Height = 201
    FixedCols = 0
    TabOrder = 0
    ColWidths = (
      64
      64
      64
      64
      64)
  end
  object EditSearch: TEdit
    Left = 480
    Top = 32
    Width = 89
    Height = 21
    TabOrder = 1
  end
  object search: TButton
    Left = 584
    Top = 32
    Width = 41
    Height = 21
    Caption = 'search'
    TabOrder = 2
    OnClick = searchClick
  end
  object btn_sort: TButton
    Left = 216
    Top = 32
    Width = 49
    Height = 21
    Caption = 'Sort'
    TabOrder = 5
    OnClick = btn_sortClick
  end
  object filter_id: TComboBox
    Left = 48
    Top = 32
    Width = 49
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Items.Strings = (
      'Id')
  end
  object sorting: TComboBox
    Left = 112
    Top = 32
    Width = 89
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    Items.Strings = (
      'ASCENDING'
      'DESCENDING')
  end
end
