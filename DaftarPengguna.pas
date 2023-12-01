unit DaftarPengguna;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  jpeg, ExtCtrls;

type
  TForm3 = class(TForm)
    lbl1: TLabel;
    NIK: TLabel;
    lbl2: TLabel;
    Label1: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    cbb1: TComboBox;
    btnDaftar: TButton;
    ZQuery1: TZQuery;
    dsUser: TDataSource;
    btn7: TButton;
    img1: TImage;
    procedure btnDaftarClick(Sender: TObject);
    procedure editbersih;
    procedure btn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Login;

{$R *.dfm}

procedure TForm3.btnDaftarClick(Sender: TObject);
begin
 if edt3.Text ='' then
 begin
 ShowMessage('USERNAME TIDAK BOLEH KOSONG!');
  end else

  if edt4.Text ='' then
  begin
  ShowMessage('PASSWORD TIDAK BOLEH KOSONG!');
  end else

  if edt1.Text ='' then
  begin
  ShowMessage('NIK TIDAK BOLEH KOSONG!');
  end else

  if edt2.Text ='' then
  begin
  ShowMessage('NAMA LENGAP TIDAK BOLEH KOSONG!');
  end else

  if cbb1.Text ='' then
  begin
  ShowMessage('Jenis Kelamin TIDAK BOLEH KOSONG!');
  end else

  if edt5.Text ='' then
  begin
  ShowMessage('Telpon TIDAK BOLEH KOSONG!');
  end else

  if edt6.Text ='' then
  begin
  ShowMessage('Email TIDAK BOLEH KOSONG!');
  end else

  if edt7.Text ='' then
  begin
  ShowMessage('Alamat TIDAK BOLEH KOSONG!');
  end else

  if ZQuery1.Locate('username', edt3.Text, []) then
  begin
    ShowMessage('username sudah ada, buat username yang berbeda');
    editbersih;
  end else

  begin
    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('insert into user values (null,"' + edt1.Text + '","' + edt2.Text + '","' + edt3.Text + '","' + edt4.Text + '","' + cbb1.Text + '","' + edt5.Text + '","' + edt6.Text + '","' + edt7.Text + '")');
    ZQuery1.ExecSQL;

    // Periksa apakah ada data yang diubah atau tidak
    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('select * from user where username = "' + edt2.Text + '"');
    ZQuery1.Open;
    if ZQuery1.IsEmpty then
    begin
      ShowMessage('Data berhasil ditambahkan');
    end
    else
    begin
      ShowMessage('Data tidak mengalami perubahan');
    end;
  end;
end;


procedure TForm3.editbersih;
begin
edt1.Text := '';
 edt2.Text := '';
 edt3.Text := '';
 edt4.Text := '';
 edt5.Text := '';
 edt6.Text := '';
 edt7.Text := '';
 cbb1.Text := '';
end;

procedure TForm3.btn7Click(Sender: TObject);
begin
  hide;
  Form1.Show;
end;

end.
