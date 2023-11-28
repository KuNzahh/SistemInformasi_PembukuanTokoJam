program SIPembukuanTokoJam;

uses
  Forms,
  Login in 'Login.pas' {Form1},
  MenuUtama in 'MenuUtama.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
