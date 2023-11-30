unit User;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, frxClass, frxDBSet;

type
  TForm12 = class(TForm)
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    ZQuery1: TZQuery;
    dsUser: TDataSource;
    lbl1: TLabel;
    DBGrid1: TDBGrid;
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
    btn7: TButton;
    frxDBuser: TfrxDBDataset;
    frxRuser: TfrxReport;
    procedure posisiawal;
    procedure editenable;
    procedure editbersih;
    procedure editdisable;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn6Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;
  id:String;

implementation

uses MenuUtama;

{$R *.dfm}

procedure TForm12.editbersih;
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

procedure TForm12.editdisable;
begin
  edt1.Enabled:= False;
  edt2.Enabled:= False;
  edt3.Enabled:= False;
  edt4.Enabled:= False;
  edt5.Enabled:= False;
  edt6.Enabled:= False;
  edt7.Enabled:= False;
  cbb1.Enabled:= False;
end;

procedure TForm12.editenable;
begin
  edt1.Enabled:= True;
  edt2.Enabled:= True;
  edt3.Enabled:= True;
  edt4.Enabled:= True;
  edt5.Enabled:= True;
  edt6.Enabled:= True;
  edt7.Enabled:= True;
  cbb1.Enabled:= True;
end;

procedure TForm12.posisiawal;
begin
  editbersih;
  editdisable;
  btn1.Enabled := True;
  btn2.Enabled := False ;
  btn3.Enabled := False;
  btn4.Enabled := True;
  btn5.Enabled := False ;
end;



procedure TForm12.btn1Click(Sender: TObject);
begin
  editbersih;
  btn1.Enabled:= True;
  btn2.Enabled:= True;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= True;
  editenable;
end;

procedure TForm12.btn2Click(Sender: TObject);
begin
  if(edt1.Text = '')or(edt2.Text = '')or(edt3.Text = '')or(edt4.Text = '')or(edt5.Text = '')or(cbb1.Text = '')or(edt6.Text = '')or(edt7.Text = '')then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG !');
  end else
if(ZQuery1.Locate('nik',edt1.Text,[]))then
  begin
    ShowMessage('nik sudah ada');
    posisiawal;
  end else
begin
ZQuery1.sql.clear;
ZQuery1.sql.Add('insert into user values(null,"'+edt1.Text+'","'+edt2.text+'","'+edt3.text+'","'+edt4.text+'","'+edt5.text+'","'+cbb1.text+'","'+edt6.text+'","'+edt7.text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from user');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!!');
posisiawal;
end;
end;

procedure TForm12.DBGrid1CellClick(Column: TColumn);
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
cbb1.Text:= ZQuery1.FieldList[6].AsString;
edt6.Text:= ZQuery1.FieldList[7].AsString;
edt7.Text:= ZQuery1.FieldList[8].AsString;
end;

procedure TForm12.btn3Click(Sender: TObject);
begin
  id:=DBGrid1.DataSource.DataSet.FieldByName('id').AsString;


ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('Update user set nik= "'+edt1.Text+'", nm_lengkap = "'+edt2.Text+'", username = "'+edt3.Text+'", password = "'+edt4.Text+'", jk = "'+cbb1.Text+'" , telp = "'+edt5.Text+'" , email = "'+edt6.Text+'" , alamat = "'+edt7.Text+'" where id ="'+id+'"');
ZQuery1.ExecSQL;
ShowMessage('DATA BERHASIL DIUPDATE!');

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from user');
ZQuery1.Open;
posisiawal;
end;

procedure TForm12.btn4Click(Sender: TObject);
begin
  if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
    begin
    id:=DBGrid1.DataSource.DataSet.FieldByName('id').AsString;

    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add(' delete from user where id ="'+id+'"');
    ZQuery1.ExecSQL;

    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('select * from user');
    ZQuery1.Open;
    ShowMessage('DATA BERHASIL DIHAPUS');
    posisiawal;
    end
    else
    begin
    ShowMessage('DATA BATAL DIHAPUS');
    posisiawal;
    end;
end;

procedure TForm12.btn5Click(Sender: TObject);
begin
 posisiawal;
end;

procedure TForm12.btn7Click(Sender: TObject);
begin
 hide;
 form2.Show;
end;

procedure TForm12.FormShow(Sender: TObject);
begin
 posisiawal;
end;

procedure TForm12.btn6Click(Sender: TObject);
begin
  frxRuser.ShowReport();
end;

end.
