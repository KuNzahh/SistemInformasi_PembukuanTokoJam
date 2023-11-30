unit Kategori;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    lbl1: TLabel;
    Label2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    DBGrid1: TDBGrid;
    ZQuery1: TZQuery;
    dsKategori: TDataSource;
    btn7: TButton;
    procedure posisiawal;
    procedure editbersih;
    procedure editenable;
    procedure editdisable;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  id:String;

implementation

uses MenuUtama;

{$R *.dfm}


{ TForm4 }

procedure TForm4.posisiawal;
begin
  editbersih;
  editdisable;
  btn1.Enabled := True;
  btn2.Enabled := False ;
  btn3.Enabled := False;
  btn4.Enabled := True;
  btn5.Enabled := False ;
end;

procedure TForm4.editbersih;
begin
   edt1.Text := '';
   edt2.Text := '';
end;

procedure TForm4.editdisable;
begin
  edt1.Enabled:= False;
  edt2.Enabled:= False;
end;

procedure TForm4.editenable;
begin
  edt1.Enabled:= True;
  edt2.Enabled:= True;
end;

procedure TForm4.btn1Click(Sender: TObject);
begin
 editbersih;

btn1.Enabled:= True;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
editenable;
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
 if(edt1.Text = '')or(edt2.Text = '')then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG !');
  end else
if(ZQuery1.Locate('nm_kategori',edt1.Text,[]))then
  begin
    ShowMessage('Kategori sudah ada');
    posisiawal;
  end else
begin
ZQuery1.sql.clear;
ZQuery1.sql.Add('insert into kategori values(null,"'+edt1.Text+'","'+edt2.text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from kategori');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!!');
posisiawal;
end;
end;

procedure TForm4.DBGrid1CellClick(Column: TColumn);
begin
 editenable;

btn1.Enabled:= true;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;

id:=ZQuery1.Fields[0].AsString;

edt1.Text:= ZQuery1.FieldList[1].AsString;
edt2.Text:= ZQuery1.FieldList[2].AsString;
end;

procedure TForm4.btn3Click(Sender: TObject);
begin
id:=DBGrid1.DataSource.DataSet.FieldByName('id').AsString;


ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('Update kategori set nm_kategori= "'+edt1.Text+'", dekripsi = "'+edt2.Text+'" where id ="'+id+'"');
ZQuery1.ExecSQL;
ShowMessage('DATA BERHASIL DIUPDATE!');

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from kategori');
ZQuery1.Open;
posisiawal;
end;


procedure TForm4.FormShow(Sender: TObject);
begin
  posisiawal;
end;

procedure TForm4.btn5Click(Sender: TObject);
begin
 posisiawal;
end;

procedure TForm4.btn7Click(Sender: TObject);
begin
 hide;
 form2.show;
end;

procedure TForm4.btn4Click(Sender: TObject);
begin
 if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=DBGrid1.DataSource.DataSet.FieldByName('id').AsString;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add(' delete from kategori where id ="'+id+'"');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from kategori');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

end.
