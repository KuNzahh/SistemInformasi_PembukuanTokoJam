object Form2: TForm2
  Left = 326
  Top = 183
  Width = 795
  Height = 423
  Caption = 'MAIN MENU'
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
    Left = 104
    Top = 128
    Width = 606
    Height = 39
    Caption = 'SELAMAT DATANG DI SISTEM INFORMASI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'tokojamzijah'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'D:\FOLDER KULIAH\KULIAH SEMESTER 5\PEMROGRAMAN VISUAL 3\ProyekAk' +
      'hir\libmysql.dll'
    Left = 80
    Top = 192
  end
end
