unit Supplier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids,
  DBGrids, StdCtrls;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    DBGrid1: TDBGrid;
    ZQuery1: TZQuery;
    dsKategori: TDataSource;
    lbl1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    btn7: TButton;
    procedure FormShow(Sender: TObject);
    procedure posisiawal;
    procedure editbersih;
    procedure editenable;
    procedure editdisable;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  id:String;

implementation

{$R *.dfm}

procedure TForm6.editbersih;
begin
  edt1.Enabled:= False;
  edt2.Enabled:= False;
  edt3.Enabled:= False;
end;

procedure TForm6.editdisable;
begin
  edt1.Enabled:= False;
  edt2.Enabled:= False;
  edt3.Enabled:= False;
end;

procedure TForm6.editenable;
begin
  edt1.Enabled:= True;
  edt2.Enabled:= True;
  edt3.Enabled:= True;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
  posisiawal;
end;

procedure TForm6.posisiawal;
begin
  editdisable;
  btn1.Enabled := True;
  btn2.Enabled := False ;
  btn3.Enabled := False;
  btn4.Enabled := True;
  btn5.Enabled := False ;
end;

procedure TForm6.btn1Click(Sender: TObject);
begin
    editbersih;
  btn1.Enabled:= True;
  btn2.Enabled:= True;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= True;
editenable;
end;

procedure TForm6.btn2Click(Sender: TObject);
begin
 if(edt1.Text = '')or(edt2.Text = '')or(edt3.Text = '')then
begin
  ShowMessage('DATA TIDAK BOLEH KOSONG !');
end else
if(ZQuery1.Locate('nm_supplier',edt1.Text,[]))then
begin
  ShowMessage('Supllier sudah ada');
  posisiawal;
end else
begin
ZQuery1.sql.clear;
ZQuery1.sql.Add('insert into supplier values(null,"'+edt1.Text+'","'+edt2.text+'","'+edt3.text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from supplier');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!!');
posisiawal;
end;
end;

procedure TForm6.btn3Click(Sender: TObject);
begin
id:=DBGrid1.DataSource.DataSet.FieldByName('id').AsString;


ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('Update supplier set nm_supplier= "'+edt1.Text+'", alamat = "'+edt2.Text+'", telp = "'+edt3.Text+'" where id ="'+id+'"');
ZQuery1.ExecSQL;
ShowMessage('DATA BERHASIL DIUPDATE!'); 

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from kategori');
ZQuery1.Open;
posisiawal;
end;

procedure TForm6.DBGrid1CellClick(Column: TColumn);
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
end;

end.
