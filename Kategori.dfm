object Form4: TForm4
  Left = 370
  Top = 169
  Width = 663
  Height = 473
  Caption = 'Data Kategori'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 248
    Top = 8
    Width = 151
    Height = 31
    Caption = 'Data Kategori'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbl1: TLabel
    Left = 64
    Top = 64
    Width = 111
    Height = 21
    Caption = 'Nama Kategori'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 64
    Top = 112
    Width = 70
    Height = 21
    Caption = 'Deskripsi'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 200
    Top = 64
    Width = 361
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 200
    Top = 104
    Width = 361
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 168
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 168
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 272
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 4
  end
  object btn4: TButton
    Left = 272
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 5
  end
  object btn5: TButton
    Left = 376
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 6
  end
  object btn6: TButton
    Left = 376
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Laporan'
    TabOrder = 7
  end
  object DBGrid1: TDBGrid
    Left = 112
    Top = 264
    Width = 417
    Height = 120
    DataSource = dsKategori
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object ZQuery1: TZQuery
    Connection = Form2.ZConnection1
    SQL.Strings = (
      'SELECT * from kategori')
    Params = <>
    Left = 56
    Top = 144
  end
  object dsKategori: TDataSource
    DataSet = ZQuery1
    Left = 56
    Top = 200
  end
end
