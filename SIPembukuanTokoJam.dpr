program SIPembukuanTokoJam;

uses
  Forms,
  Login in 'Login.pas' {Form1},
  MenuUtama in 'MenuUtama.pas' {Form2},
  DaftarPengguna in 'DaftarPengguna.pas' {Form3},
  Kategori in 'Kategori.pas' {Form4},
  Barang in 'Barang.pas' {Form5},
  Supplier in 'Supplier.pas' {Form6},
  Jual in 'Jual.pas' {Form7},
  Beli in 'Beli.pas' {Form8},
  DetJual in 'DetJual.pas' {Form9},
  DetBeli in 'DetBeli.pas' {Form10},
  Costumer in 'Costumer.pas' {Form11},
  User in 'User.pas' {Form12};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm11, Form11);
  Application.CreateForm(TForm12, Form12);
  Application.Run;
end.
