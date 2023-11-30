object Form6: TForm6
  Left = 245
  Top = 167
  Width = 647
  Height = 461
  Caption = 'Data Supplier'
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
    Left = 208
    Top = 24
    Width = 145
    Height = 31
    Caption = 'Data Supllier'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbl1: TLabel
    Left = 40
    Top = 72
    Width = 110
    Height = 21
    Caption = 'Nama Supplier'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 128
    Width = 52
    Height = 21
    Caption = 'Alamat'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 40
    Top = 160
    Width = 33
    Height = 21
    Caption = 'Telp'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 40
    Top = 104
    Width = 132
    Height = 21
    Caption = 'Nama Perusahaan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object btn1: TButton
    Left = 488
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 488
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 1
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 488
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 2
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 488
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 3
    OnClick = btn4Click
  end
  object btn6: TButton
    Left = 488
    Top = 344
    Width = 75
    Height = 25
    Caption = 'Laporan'
    TabOrder = 4
  end
  object edt1: TEdit
    Left = 192
    Top = 72
    Width = 265
    Height = 21
    TabOrder = 5
  end
  object edt2: TEdit
    Left = 192
    Top = 104
    Width = 265
    Height = 21
    TabOrder = 6
  end
  object edt3: TEdit
    Left = 192
    Top = 136
    Width = 257
    Height = 21
    TabOrder = 7
  end
  object btn7: TButton
    Left = 32
    Top = 16
    Width = 75
    Height = 25
    Caption = '<< Kembali'
    TabOrder = 8
    OnClick = btn7Click
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 213
    Width = 457
    Height = 153
    DataSource = dsSupplier
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object edt4: TEdit
    Left = 192
    Top = 168
    Width = 265
    Height = 21
    TabOrder = 10
  end
  object btn5: TButton
    Left = 488
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 11
    OnClick = btn5Click
  end
  object ZQuery1: TZQuery
    Connection = Form2.ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * from supplier')
    Params = <>
    Left = 496
    Top = 16
  end
  object dsSupplier: TDataSource
    DataSet = ZQuery1
    Left = 496
    Top = 72
  end
end
