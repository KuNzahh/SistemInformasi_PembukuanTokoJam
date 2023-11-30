object Form12: TForm12
  Left = 256
  Top = 126
  Width = 704
  Height = 469
  Caption = 'Data User'
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
    Width = 108
    Height = 31
    Caption = 'Data User'
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
    Width = 29
    Height = 19
    Caption = 'NIK'
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
    Width = 94
    Height = 19
    Caption = 'Nama Lengkap'
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
    Width = 61
    Height = 19
    Caption = 'Username'
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
    Width = 60
    Height = 19
    Caption = 'Password'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 72
    Top = 192
    Width = 83
    Height = 19
    Caption = 'Jenis Kelamin'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 72
    Top = 224
    Width = 48
    Height = 19
    Caption = 'Telepon'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 72
    Top = 256
    Width = 33
    Height = 19
    Caption = 'Email'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 72
    Top = 288
    Width = 43
    Height = 19
    Caption = 'Alamat'
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
  object DBGrid1: TDBGrid
    Left = 24
    Top = 323
    Width = 497
    Height = 120
    DataSource = dsUser
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object edt1: TEdit
    Left = 200
    Top = 64
    Width = 297
    Height = 21
    TabOrder = 7
  end
  object edt2: TEdit
    Left = 200
    Top = 96
    Width = 297
    Height = 21
    TabOrder = 8
  end
  object edt3: TEdit
    Left = 200
    Top = 128
    Width = 297
    Height = 21
    TabOrder = 9
  end
  object edt4: TEdit
    Left = 200
    Top = 160
    Width = 257
    Height = 21
    TabOrder = 10
  end
  object edt5: TEdit
    Left = 200
    Top = 224
    Width = 257
    Height = 21
    TabOrder = 11
  end
  object edt6: TEdit
    Left = 200
    Top = 256
    Width = 257
    Height = 21
    TabOrder = 12
  end
  object edt7: TEdit
    Left = 200
    Top = 288
    Width = 257
    Height = 21
    TabOrder = 13
  end
  object cbb1: TComboBox
    Left = 200
    Top = 192
    Width = 257
    Height = 21
    ItemHeight = 13
    TabOrder = 14
    Items.Strings = (
      'Laki-laki'
      'Perempuan')
  end
  object btn7: TButton
    Left = 32
    Top = 16
    Width = 75
    Height = 25
    Caption = '<< Kembali'
    TabOrder = 15
    OnClick = btn7Click
  end
  object ZQuery1: TZQuery
    Connection = Form2.ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * from user')
    Params = <>
    Left = 560
    Top = 8
  end
  object dsUser: TDataSource
    DataSet = ZQuery1
    Left = 560
    Top = 64
  end
end
