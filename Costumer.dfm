object Form11: TForm11
  Left = 249
  Top = 150
  Width = 713
  Height = 511
  Caption = 'Data Costumer'
  Color = clGradientInactiveCaption
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
    Width = 163
    Height = 31
    Caption = 'Data Costumer'
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
    Width = 100
    Height = 19
    Caption = 'Nama Costumer'
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
  object Label1: TLabel
    Left = 72
    Top = 128
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
  object lbl3: TLabel
    Left = 72
    Top = 160
    Width = 41
    Height = 19
    Caption = 'Telpon'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 200
    Top = 64
    Width = 297
    Height = 21
    TabOrder = 0
  end
  object edt3: TEdit
    Left = 200
    Top = 160
    Width = 297
    Height = 21
    TabOrder = 1
  end
  object cbb1: TComboBox
    Left = 200
    Top = 96
    Width = 297
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Items.Strings = (
      'Laki-laki'
      'Perempuan')
  end
  object edt2: TEdit
    Left = 200
    Top = 128
    Width = 297
    Height = 21
    TabOrder = 3
  end
  object btn1: TButton
    Left = 560
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 4
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 560
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 5
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 560
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 6
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 560
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 7
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 560
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 8
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 560
    Top = 362
    Width = 75
    Height = 25
    Caption = 'Laporan'
    TabOrder = 9
    OnClick = btn6Click
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 211
    Width = 497
    Height = 206
    DataSource = dsCostumer
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
  object ZQuery1: TZQuery
    Connection = Form2.ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * from costumer')
    Params = <>
    Left = 560
    Top = 8
  end
  object dsCostumer: TDataSource
    DataSet = ZQuery1
    Left = 560
    Top = 64
  end
  object frxDBcostumer: TfrxDBDataset
    UserName = 'frxDBcostumer'
    CloseDataSource = False
    DataSet = ZQuery1
    Left = 624
    Top = 8
  end
  object frxRcostumer: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45260.914258368060000000
    ReportOptions.LastChange = 45260.932909606480000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 624
    Top = 64
    Datasets = <
      item
        DataSet = frxDBcostumer
        DataSetName = 'frxDBcostumer'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      object ReportTitle1: TfrxReportTitle
        Height = 64.252010000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 298.582870000000000000
          Top = 22.677180000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN KOSTUMER')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 105.826840000000000000
        Width = 793.701300000000000000
        object Memo4: TfrxMemoView
          Left = 192.756030000000000000
          Width = 132.283550000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama Kostumer')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 325.039580000000000000
          Width = 136.063080000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jenis Kelamin')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 461.102660000000000000
          Width = 136.063080000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Alamat')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 597.165740000000000000
          Width = 98.267780000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Telpon')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 158.740260000000000000
          Width = 34.015770000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 26.456710000000000000
        Top = 188.976500000000000000
        Width = 793.701300000000000000
        DataSet = frxDBcostumer
        DataSetName = 'frxDBcostumer'
        RowCount = 0
        object Memo11: TfrxMemoView
          Left = 192.756030000000000000
          Width = 132.283550000000000000
          Height = 26.456710000000000000
          DataField = 'nm_costumer'
          DataSet = frxDBcostumer
          DataSetName = 'frxDBcostumer'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBcostumer."nm_costumer"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 325.039580000000000000
          Width = 136.063080000000000000
          Height = 26.456710000000000000
          DataField = 'jk'
          DataSet = frxDBcostumer
          DataSetName = 'frxDBcostumer'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBcostumer."jk"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 461.102660000000000000
          Width = 136.063080000000000000
          Height = 26.456710000000000000
          DataField = 'alamat'
          DataSet = frxDBcostumer
          DataSetName = 'frxDBcostumer'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBcostumer."alamat"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 597.165740000000000000
          Width = 98.267780000000000000
          Height = 26.456710000000000000
          DataField = 'telp'
          DataSet = frxDBcostumer
          DataSetName = 'frxDBcostumer'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBcostumer."telp"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 158.740260000000000000
          Width = 34.015770000000000000
          Height = 26.456710000000000000
          DataField = 'id'
          DataSet = frxDBcostumer
          DataSetName = 'frxDBcostumer'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBcostumer."id"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
