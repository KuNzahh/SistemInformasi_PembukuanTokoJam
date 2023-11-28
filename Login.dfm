object Form1: TForm1
  Left = 261
  Top = 177
  Width = 759
  Height = 423
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
    Left = 200
    Top = 120
    Width = 54
    Height = 13
    Caption = 'USERNAME'
  end
  object Password: TLabel
    Left = 200
    Top = 168
    Width = 57
    Height = 13
    Caption = 'PASSWORD'
  end
  object LOGIN: TLabel
    Left = 320
    Top = 64
    Width = 60
    Height = 13
    Caption = 'LOGIN USER'
  end
  object btnRegis: TButton
    Left = 232
    Top = 248
    Width = 97
    Height = 33
    Caption = 'Register'
    TabOrder = 0
  end
  object btnLogin: TButton
    Left = 376
    Top = 248
    Width = 97
    Height = 33
    Caption = 'Login'
    TabOrder = 1
    OnClick = btnLoginClick
  end
  object edtUsername: TEdit
    Left = 296
    Top = 120
    Width = 193
    Height = 21
    TabOrder = 2
  end
  object edtPassword: TEdit
    Left = 296
    Top = 168
    Width = 193
    Height = 21
    TabOrder = 3
  end
  object ZQuery1: TZQuery
    Connection = Form2.ZConnection1
    SQL.Strings = (
      'SELECT * from user')
    Params = <>
    Left = 56
    Top = 64
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 56
    Top = 128
  end
end
