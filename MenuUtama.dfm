object Form2: TForm2
  Left = 282
  Top = 191
  Width = 795
  Height = 423
  Caption = 'Menu Utama'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 96
    Top = 144
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
    Left = 120
    Top = 40
  end
  object MainMenu1: TMainMenu
    Left = 48
    Top = 40
    object Menu1: TMenuItem
      Caption = 'Menu'
      object DataUser1: TMenuItem
        Caption = 'Data User'
      end
      object DataBarang1: TMenuItem
        Caption = 'Data Barang'
      end
      object DataKategori1: TMenuItem
        Caption = 'Data Kategori'
        OnClick = DataKategori1Click
      end
      object DataCosutumer1: TMenuItem
        Caption = 'Data Costumer'
      end
      object DataSupplier1: TMenuItem
        Caption = 'Data Supplier'
      end
      object DataJual1: TMenuItem
        Caption = 'Data Jual'
      end
      object DataBeli1: TMenuItem
        Caption = 'Data Beli'
      end
      object DataDetailJual1: TMenuItem
        Caption = 'Data Detail Jual'
      end
      object DataDetailBeli1: TMenuItem
        Caption = 'Data Detail Beli'
      end
    end
    object Logout1: TMenuItem
      Caption = 'Logout'
    end
  end
end
