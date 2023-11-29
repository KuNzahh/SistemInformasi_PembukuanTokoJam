object Form3: TForm3
  Left = 266
  Top = 166
  Width = 746
  Height = 396
  Caption = 'DAFTAR'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 280
    Top = 16
    Width = 180
    Height = 31
    Caption = 'Daftar Pengguna'
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
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object lbl2: TLabel
    Left = 72
    Top = 96
    Width = 70
    Height = 13
    Caption = 'Nama Lengkap'
  end
  object Label1: TLabel
    Left = 72
    Top = 128
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object lbl3: TLabel
    Left = 72
    Top = 160
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object lbl4: TLabel
    Left = 72
    Top = 192
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object lbl5: TLabel
    Left = 72
    Top = 224
    Width = 38
    Height = 13
    Caption = 'Telepon'
  end
  object lbl6: TLabel
    Left = 72
    Top = 256
    Width = 24
    Height = 13
    Caption = 'Email'
  end
  object lbl7: TLabel
    Left = 72
    Top = 288
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object edt1: TEdit
    Left = 240
    Top = 64
    Width = 257
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 240
    Top = 96
    Width = 257
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 240
    Top = 128
    Width = 257
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 240
    Top = 160
    Width = 257
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 240
    Top = 224
    Width = 257
    Height = 21
    TabOrder = 4
  end
  object edt6: TEdit
    Left = 240
    Top = 256
    Width = 257
    Height = 21
    TabOrder = 5
  end
  object edt7: TEdit
    Left = 240
    Top = 288
    Width = 257
    Height = 21
    TabOrder = 6
  end
  object cbb1: TComboBox
    Left = 240
    Top = 192
    Width = 257
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Items.Strings = (
      'Laki-laki'
      'Perempuan')
  end
  object btnDaftar: TButton
    Left = 552
    Top = 160
    Width = 113
    Height = 49
    Caption = 'DAFTAR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = btnDaftarClick
  end
  object ZQuery1: TZQuery
    Connection = Form2.ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * from user')
    Params = <>
    Left = 592
    Top = 40
  end
  object dsUser: TDataSource
    DataSet = ZQuery1
    Left = 592
    Top = 96
  end
end
