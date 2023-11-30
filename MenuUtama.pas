unit MenuUtama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZAbstractConnection, ZConnection, StdCtrls, Menus;

type
  TForm2 = class(TForm)
    lbl1: TLabel;
    ZConnection1: TZConnection;
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    DataUser1: TMenuItem;
    DataBarang1: TMenuItem;
    DataKategori1: TMenuItem;
    DataCosutumer1: TMenuItem;
    DataSupplier1: TMenuItem;
    DataJual1: TMenuItem;
    DataBeli1: TMenuItem;
    DataDetailJual1: TMenuItem;
    DataDetailBeli1: TMenuItem;
    Logout1: TMenuItem;
    procedure DataKategori1Click(Sender: TObject);
    procedure DataBarang1Click(Sender: TObject);
    procedure DataSupplier1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Kategori, Barang, Supplier;

{$R *.dfm}

procedure TForm2.DataKategori1Click(Sender: TObject);
begin
  Form4.show;
end;

procedure TForm2.DataBarang1Click(Sender: TObject);
begin
  Form5.show;
end;

procedure TForm2.DataSupplier1Click(Sender: TObject);
begin
  Form6.show;
end;

end.
