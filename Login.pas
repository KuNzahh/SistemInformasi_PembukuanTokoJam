unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TForm1 = class(TForm)
    btnRegis: TButton;
    btnLogin: TButton;
    USERNAME: TLabel;
    Password: TLabel;
    edtUsername: TEdit;
    edtPassword: TEdit;
    LOGIN: TLabel;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses MenuUtama;

{$R *.dfm}

procedure TForm1.btnLoginClick(Sender: TObject);
begin
with ZQuery1 do begin
 SQL.Clear;
 SQL.Add('Select*from user where username='+QuotedStr(edtUsername.Text)) ;
 open;
end;

 if ZQuery1.RecordCount=0
 then
 Application.MessageBox('Maaf username tidak ditemukan', 'informasi', MB_OK or MB_ICONINFORMATION)
 else
 begin
 if  ZQuery1.FieldByName('password').AsString<>edtPassword.Text
 then
 Application.MessageBox('Password salah coba lagi', 'error', MB_OK or MB_ICONERROR)
 else
 begin
   hide;
   Form2.Show;
 end;

end;


end;


end.
