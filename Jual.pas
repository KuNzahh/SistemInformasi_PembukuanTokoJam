unit Jual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, frxClass, frxDBSet;

type
  TForm7 = class(TForm)
    lbl1: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    ZQuery1: TZQuery;
    dsJual: TDataSource;
    NIK: TLabel;
    lbl2: TLabel;
    Label1: TLabel;
    lbl3: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    DBGrid1: TDBGrid;
    btn7: TButton;
    Label2: TLabel;
    Label3: TLabel;
    edt5: TEdit;
    edt6: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    frxDBjual: TfrxDBDataset;
    frxRjual: TfrxReport;
    procedure posisiawal;
    procedure editenable;
    procedure editbersih;
    procedure editdisable;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  id: String;

implementation

uses MenuUtama;

{$R *.dfm}



procedure TForm7.editbersih;
begin
   edt1.Text := '';
   edt2.Text := '';
   edt3.Text := '';
   edt4.Text := '';
   edt5.Text := '';
   edt6.Text := '';
end;

procedure TForm7.editdisable;
begin
  edt1.Enabled:= False;
  edt2.Enabled:= False;
  edt3.Enabled:= False;
  edt4.Enabled:= False;
  edt5.Enabled:= False;
  edt6.Enabled:= False;
end;

procedure TForm7.editenable;
begin
  edt1.Enabled:= True;
  edt2.Enabled:= True;
  edt3.Enabled:= True;
  edt4.Enabled:= True;
  edt5.Enabled:= True;
  edt6.Enabled:= True;
end;

procedure TForm7.posisiawal;
begin
  editbersih;
  editdisable;
  btn1.Enabled := True;
  btn2.Enabled := False ;
  btn3.Enabled := False;
  btn4.Enabled := True;
  btn5.Enabled := False ;
end;

procedure TForm7.btn1Click(Sender: TObject);
begin
  editbersih;
  btn1.Enabled:= True;
  btn2.Enabled:= True;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= True;
  editenable;
end;

procedure TForm7.btn2Click(Sender: TObject);
begin
   if(edt1.Text = '')or(edt2.Text = '')or(edt3.Text = '')or(edt4.Text = '')or(edt5.Text = '')or(edt6.Text = '')then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG !');
  end else

begin
ZQuery1.sql.clear;
ZQuery1.sql.Add('insert into jual values(null,"'+edt1.Text+'","'+edt2.text+'","'+edt3.text+'","'+edt4.text+'","'+edt5.text+'","'+edt6.text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from jual');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!!');
posisiawal;
end;
end;

procedure TForm7.btn3Click(Sender: TObject);
begin
  id:=DBGrid1.DataSource.DataSet.FieldByName('id').AsString;


ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('Update jual set cost_id= "'+edt1.Text+'", tgl_jual = "'+edt2.Text+'", bulan_jual = "'+edt3.Text+'", total = "'+edt4.Text+'", bayar = "'+edt5.Text+'" , kembali = "'+edt6.Text+'" where id ="'+id+'"');
ZQuery1.ExecSQL;
ShowMessage('DATA BERHASIL DIUPDATE!');

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from jual');
ZQuery1.Open;
posisiawal;
end;

procedure TForm7.btn4Click(Sender: TObject);
begin
  if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
    begin
    id:=DBGrid1.DataSource.DataSet.FieldByName('id').AsString;

    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add(' delete from jual where id ="'+id+'"');
    ZQuery1.ExecSQL;

    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('select * from jual');
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

procedure TForm7.btn5Click(Sender: TObject);
begin
  posisiawal;
end;



procedure TForm7.DBGrid1CellClick(Column: TColumn);
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

procedure TForm7.FormShow(Sender: TObject);
begin
  posisiawal;
end;

procedure TForm7.btn7Click(Sender: TObject);
begin
  hide;
  Form2.Show;
end;

procedure TForm7.btn6Click(Sender: TObject);
begin
  frxRjual.ShowReport();
end;

end.
