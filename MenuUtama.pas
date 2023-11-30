unit MenuUtama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZAbstractConnection, ZConnection, StdCtrls, Menus, ExtCtrls,
  jpeg;

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
    Label1: TLabel;
    img1: TImage;
    procedure DataKategori1Click(Sender: TObject);
    procedure DataBarang1Click(Sender: TObject);
    procedure DataSupplier1Click(Sender: TObject);
    procedure DataUser1Click(Sender: TObject);
    procedure DataCosutumer1Click(Sender: TObject);
    procedure DataJual1Click(Sender: TObject);
    procedure DataBeli1Click(Sender: TObject);
    procedure DataDetailJual1Click(Sender: TObject);
    procedure DataDetailBeli1Click(Sender: TObject);
    procedure Logout1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Kategori, Barang, Supplier, Costumer, User, Jual, Beli, DetJual,
  DetBeli;

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

procedure TForm2.DataUser1Click(Sender: TObject);
begin
  Form12.show;
end;

procedure TForm2.DataCosutumer1Click(Sender: TObject);
begin
 Form11.Show;
end;

procedure TForm2.DataJual1Click(Sender: TObject);
begin
  Form7.show;
end;

procedure TForm2.DataBeli1Click(Sender: TObject);
begin
   Form8.Show;
end;

procedure TForm2.DataDetailJual1Click(Sender: TObject);
begin
   Form9.Show;
end;



procedure TForm2.DataDetailBeli1Click(Sender: TObject);
begin
   Form10.Show;
end;

procedure TForm2.Logout1Click(Sender: TObject);
begin
  Close
end;

end.
