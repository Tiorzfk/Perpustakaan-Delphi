object Data_Anggota: TData_Anggota
  Left = 348
  Top = 179
  Width = 723
  Height = 427
  Caption = 'DataAnggota'
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
  object lb_databuku: TLabel
    Left = 248
    Top = 8
    Width = 201
    Height = 29
    Caption = 'DATA ANGGOTA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SG: TStringGrid
    Left = 40
    Top = 88
    Width = 594
    Height = 201
    FixedCols = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goRowSelect]
    TabOrder = 0
    ColWidths = (
      64
      64
      64
      64
      64)
  end
  object EditSearch: TEdit
    Left = 497
    Top = 56
    Width = 89
    Height = 21
    TabOrder = 1
  end
  object search: TButton
    Left = 593
    Top = 56
    Width = 41
    Height = 21
    Caption = 'search'
    TabOrder = 2
    OnClick = searchClick
  end
  object btn_sort: TButton
    Left = 224
    Top = 56
    Width = 49
    Height = 21
    Caption = 'Sort'
    TabOrder = 3
    OnClick = btn_sortClick
  end
  object filter_id: TComboBox
    Left = 48
    Top = 56
    Width = 49
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    Items.Strings = (
      'Id')
  end
  object sorting: TComboBox
    Left = 112
    Top = 56
    Width = 89
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Items.Strings = (
      'ASCENDING'
      'DESCENDING')
  end
  object btn_edit: TButton
    Left = 552
    Top = 304
    Width = 73
    Height = 25
    Caption = 'Edit Data'
    TabOrder = 6
    OnClick = btn_editClick
  end
  object Edit_alamat: TEdit
    Left = 136
    Top = 304
    Width = 73
    Height = 21
    TabOrder = 7
  end
  object Edit_nama: TEdit
    Left = 40
    Top = 304
    Width = 73
    Height = 21
    TabOrder = 8
  end
  object Edit_no_telp: TEdit
    Left = 240
    Top = 304
    Width = 73
    Height = 21
    TabOrder = 9
  end
  object Edit_username: TEdit
    Left = 344
    Top = 304
    Width = 73
    Height = 21
    TabOrder = 10
  end
  object Edit_password: TEdit
    Left = 448
    Top = 304
    Width = 73
    Height = 21
    TabOrder = 11
  end
  object btn_cancel: TButton
    Left = 631
    Top = 304
    Width = 65
    Height = 25
    Caption = 'Cancel'
    TabOrder = 12
    OnClick = btn_cancelClick
  end
end
