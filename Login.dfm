object Form1: TForm1
  Left = 301
  Top = 169
  Width = 674
  Height = 371
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
    Width = 85
    Height = 19
    Caption = 'USERNAME'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Password: TLabel
    Left = 184
    Top = 136
    Width = 85
    Height = 19
    Caption = 'PASSWORD'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object LOGIN: TLabel
    Left = 256
    Top = 32
    Width = 147
    Height = 19
    Caption = 'MASUK PENGGUNA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object btnRegis: TButton
    Left = 216
    Top = 216
    Width = 97
    Height = 33
    Caption = 'DAFTAR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btnRegisClick
  end
  object btnLogin: TButton
    Left = 360
    Top = 216
    Width = 97
    Height = 33
    Caption = 'MASUK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnLoginClick
  end
  object edtUsername: TEdit
    Left = 320
    Top = 88
    Width = 193
    Height = 27
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object edtPassword: TEdit
    Left = 320
    Top = 136
    Width = 193
    Height = 27
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
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
