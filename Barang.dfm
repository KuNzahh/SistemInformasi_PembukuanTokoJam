object Form5: TForm5
  Left = 261
  Top = 121
  Width = 735
  Height = 541
  Caption = 'Data Barang'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 280
    Top = 16
    Width = 135
    Height = 31
    Caption = 'Data Barang'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 64
    Top = 64
    Width = 70
    Height = 19
    Caption = 'Id Kategori'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Barcode: TLabel
    Left = 64
    Top = 104
    Width = 52
    Height = 19
    Caption = 'Barcode'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 64
    Top = 144
    Width = 84
    Height = 19
    Caption = 'Nama Barang'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 64
    Top = 184
    Width = 29
    Height = 19
    Caption = 'Stok'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 64
    Top = 224
    Width = 64
    Height = 19
    Caption = 'Harga Jual'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 64
    Top = 264
    Width = 64
    Height = 19
    Caption = 'Harga Beli'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 192
    Top = 224
    Width = 22
    Height = 19
    Caption = 'Rp.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 192
    Top = 264
    Width = 22
    Height = 19
    Caption = 'Rp.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 192
    Top = 64
    Width = 313
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 192
    Top = 104
    Width = 313
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 192
    Top = 144
    Width = 313
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 192
    Top = 184
    Width = 313
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 216
    Top = 224
    Width = 289
    Height = 21
    TabOrder = 4
  end
  object edt6: TEdit
    Left = 216
    Top = 264
    Width = 289
    Height = 21
    TabOrder = 5
  end
  object btn1: TButton
    Left = 544
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 6
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 544
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 7
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 544
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 8
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 544
    Top = 296
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 9
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 544
    Top = 344
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 10
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 544
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Laporan'
    TabOrder = 11
  end
  object btn7: TButton
    Left = 32
    Top = 16
    Width = 75
    Height = 25
    Caption = '<< Kembali'
    TabOrder = 12
    OnClick = btn7Click
  end
  object DBGrid1: TDBGrid
    Left = 56
    Top = 304
    Width = 457
    Height = 153
    DataSource = dsBarang
    TabOrder = 13
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
      'SELECT * from barang')
    Params = <>
    Left = 544
    Top = 32
  end
  object dsBarang: TDataSource
    DataSet = ZQuery1
    Left = 544
    Top = 88
  end
end
