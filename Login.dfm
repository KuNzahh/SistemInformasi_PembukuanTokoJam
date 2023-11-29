object Form1: TForm1
  Left = 261
  Top = 214
  Width = 686
  Height = 377
  Caption = 'LOGIN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object USERNAME: TLabel
    Left = 184
    Top = 88
    Width = 54
    Height = 13
    Caption = 'USERNAME'
  end
  object Password: TLabel
    Left = 184
    Top = 136
    Width = 57
    Height = 13
    Caption = 'PASSWORD'
  end
  object LOGIN: TLabel
    Left = 304
    Top = 32
    Width = 91
    Height = 13
    Caption = 'MASUK PENGGUNA'
  end
  object btnRegis: TButton
    Left = 216
    Top = 216
    Width = 97
    Height = 33
    Caption = 'DAFTAR'
    TabOrder = 0
    OnClick = btnRegisClick
  end
  object btnLogin: TButton
    Left = 360
    Top = 216
    Width = 97
    Height = 33
    Caption = 'MASUK'
    TabOrder = 1
    OnClick = btnLoginClick
  end
  object edtUsername: TEdit
    Left = 280
    Top = 88
    Width = 193
    Height = 21
    TabOrder = 2
  end
  object edtPassword: TEdit
    Left = 280
    Top = 136
    Width = 193
    Height = 21
    TabOrder = 3
  end
  object ZQuery1: TZQuery
    Connection = Form2.ZConnection1
    SQL.Strings = (
      'SELECT * from user')
    Params = <>
    Left = 96
    Top = 72
  end
  object dsUser: TDataSource
    DataSet = ZQuery1
    Left = 96
    Top = 128
  end
end
