unit Barang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, StdCtrls;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Barcode: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    ZQuery1: TZQuery;
    dsBarang: TDataSource;
    btn7: TButton;
    DBGrid1: TDBGrid;
    procedure posisiawal;
    procedure editbersih;
    procedure editenable;
    procedure editdisable;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btn3Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  id:String;

implementation

uses MenuUtama;

{$R *.dfm}

{ TForm5 }

procedure TForm5.editbersih;
begin
  edt1.Text := '';
  edt2.Text := '';
  edt3.Text := '';
  edt4.Text := '';
  edt5.Text := '';
  edt6.Text := '';
end;

procedure TForm5.editdisable;
begin
  edt1.Enabled:= False;
  edt2.Enabled:= False;
  edt3.Enabled:= False;
  edt4.Enabled:= False;
  edt5.Enabled:= False;
  edt6.Enabled:= False;
end;

procedure TForm5.editenable;
begin
  edt1.Enabled:= True;
  edt2.Enabled:= True;
  edt3.Enabled:= True;
  edt4.Enabled:= True;
  edt5.Enabled:= True;
  edt6.Enabled:= True;
end;

procedure TForm5.posisiawal;
begin
  editbersih;
  editdisable;
  btn1.Enabled := True;
  btn2.Enabled := False ;
  btn3.Enabled := False;
  btn4.Enabled := True;
  btn5.Enabled := False ;
end;

procedure TForm5.btn1Click(Sender: TObject);
begin
  editbersih;
  btn1.Enabled:= True;
  btn2.Enabled:= True;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= True;
editenable;
end;

procedure TForm5.btn2Click(Sender: TObject);
begin
  if(edt1.Text = '')or(edt2.Text = '')or(edt3.Text = '')or(edt4.Text = '')or(edt5.Text = '')or(edt6.Text = '')then
begin
  ShowMessage('DATA TIDAK BOLEH KOSONG !');
end else
if(ZQuery1.Locate('nm_barang',edt1.Text,[]))then
begin
  ShowMessage('barang sudah ada');
  posisiawal;
end else
begin
ZQuery1.sql.clear;
ZQuery1.sql.Add('insert into barang values(null,"'+edt1.Text+'","'+edt2.text+'","'+edt3.text+'","'+edt4.text+'","'+edt5.text+'","'+edt6.text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from barang');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!!');
posisiawal;
end;
end;

procedure TForm5.FormShow(Sender: TObject);
begin
 posisiawal;
end;

procedure TForm5.DBGrid1CellClick(Column: TColumn);
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
edt3.Text:= ZQuery1.FieldList[3].AsString;
edt4.Text:= ZQuery1.FieldList[4].AsString;
edt5.Text:= ZQuery1.FieldList[5].AsString;
edt6.Text:= ZQuery1.FieldList[6].AsString;
end;

procedure TForm5.btn3Click(Sender: TObject);
begin
 id:=DBGrid1.DataSource.DataSet.FieldByName('id').AsString;


ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('Update barang set kategori_id= "'+edt1.Text+'", barcode= "'+edt2.Text+'" , nm_barang= "'+edt3.Text+'" , stok = "'+edt4.Text+'" , harga_jual= "'+edt5.Text+'", harga_beli= "'+edt6.Text+'" where id ="'+id+'"');
ZQuery1.ExecSQL;
ShowMessage('DATA BERHASIL DIUPDATE!'); 

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from barang');
ZQuery1.Open;
posisiawal;
end;

procedure TForm5.btn5Click(Sender: TObject);
begin
 posisiawal;
end;

procedure TForm5.btn4Click(Sender: TObject);
begin
 if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=DBGrid1.DataSource.DataSet.FieldByName('id').AsString;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add(' delete from barang where id ="'+id+'"');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from barang');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

procedure TForm5.btn7Click(Sender: TObject);
begin
  hide;
 form2.show;
end;

end.
