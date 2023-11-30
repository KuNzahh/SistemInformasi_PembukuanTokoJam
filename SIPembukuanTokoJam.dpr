program SIPembukuanTokoJam;

uses
  Forms,
  Login in 'Login.pas' {Form1},
  MenuUtama in 'MenuUtama.pas' {Form2},
  DaftarPengguna in 'DaftarPengguna.pas' {Form3},
  Kategori in 'Kategori.pas' {Form4},
  Barang in 'Barang.pas' {Form5},
  Supplier in 'Supplier.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
