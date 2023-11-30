object Form8: TForm8
  Left = 357
  Top = 172
  Width = 870
  Height = 450
  Caption = 'Data Beli'
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
  object lbl1: TLabel
    Left = 288
    Top = 8
    Width = 102
    Height = 31
    Caption = 'Data Jual'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object NIK: TLabel
    Left = 72
    Top = 64
    Width = 67
    Height = 19
    Caption = 'Id Supplier'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 72
    Top = 96
    Width = 61
    Height = 19
    Caption = 'Bulan Beli'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 72
    Top = 128
    Width = 73
    Height = 19
    Caption = 'Tanggal Beli'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 72
    Top = 160
    Width = 30
    Height = 19
    Caption = 'Total'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 72
    Top = 192
    Width = 36
    Height = 19
    Caption = 'Bayar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 208
    Top = 160
    Width = 18
    Height = 19
    Caption = 'Rp'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 208
    Top = 192
    Width = 18
    Height = 19
    Caption = 'Rp'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 208
    Top = 224
    Width = 4
    Height = 19
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object btn1: TButton
    Left = 560
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 560
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 1
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 560
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 2
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 560
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 3
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 560
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 4
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 560
    Top = 362
    Width = 75
    Height = 25
    Caption = 'Laporan'
    TabOrder = 5
  end
  object edt1: TEdit
    Left = 200
    Top = 64
    Width = 297
    Height = 21
    TabOrder = 6
  end
  object edt2: TEdit
    Left = 200
    Top = 96
    Width = 297
    Height = 21
    TabOrder = 7
  end
  object edt3: TEdit
    Left = 200
    Top = 128
    Width = 297
    Height = 21
    TabOrder = 8
  end
  object edt4: TEdit
    Left = 240
    Top = 160
    Width = 257
    Height = 21
    TabOrder = 9
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 243
    Width = 497
    Height = 120
    DataSource = dsBeli
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object btn7: TButton
    Left = 32
    Top = 16
    Width = 75
    Height = 25
    Caption = '<< Kembali'
    TabOrder = 11
    OnClick = btn7Click
  end
  object edt5: TEdit
    Left = 240
    Top = 192
    Width = 257
    Height = 21
    TabOrder = 12
  end
  object ZQuery1: TZQuery
    Connection = Form2.ZConnection1
    SQL.Strings = (
      'SELECT * from beli')
    Params = <>
    Left = 560
    Top = 8
  end
  object dsBeli: TDataSource
    DataSet = ZQuery1
    Left = 560
    Top = 64
  end
end
