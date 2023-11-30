unit DetJual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids,
  DBGrids, StdCtrls;

type
  TForm9 = class(TForm)
    lbl1: TLabel;
    NIK: TLabel;
    lbl2: TLabel;
    Label1: TLabel;
    lbl3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    DBGrid1: TDBGrid;
    btn7: TButton;
    edt5: TEdit;
    ZQuery1: TZQuery;
    dsDetjual: TDataSource;
    procedure btn7Click(Sender: TObject);
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;
  id:String;

implementation

uses MenuUtama;

{$R *.dfm}

procedure TForm9.btn7Click(Sender: TObject);
begin
 hide;
 Form2.Show;
end;


procedure TForm9.editbersih;
begin
   edt1.Text := '';
   edt2.Text := '';
   edt3.Text := '';
   edt4.Text := '';
   edt5.Text := '';
end;

procedure TForm9.editdisable;
begin
  edt1.Enabled:= False;
  edt2.Enabled:= False;
  edt3.Enabled:= False;
  edt4.Enabled:= False;
  edt5.Enabled:= False;
end;

procedure TForm9.editenable;
begin
  edt1.Enabled:= True;
  edt2.Enabled:= True;
  edt3.Enabled:= True;
  edt4.Enabled:= True;
  edt5.Enabled:= True;
end;

procedure TForm9.posisiawal;
begin
  editbersih;
  editdisable;
  btn1.Enabled := True;
  btn2.Enabled := False ;
  btn3.Enabled := False;
  btn4.Enabled := True;
  btn5.Enabled := False ;
end;

procedure TForm9.btn1Click(Sender: TObject);
begin
  editbersih;
  btn1.Enabled:= True;
  btn2.Enabled:= True;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= True;
  editenable;
end;

procedure TForm9.btn2Click(Sender: TObject);
begin
  if(edt1.Text = '')or(edt2.Text = '')or(edt3.Text = '')or(edt4.Text = '')or(edt5.Text = '')then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG !');
  end else

begin
ZQuery1.sql.clear;
ZQuery1.sql.Add('insert into detail_jual values(null,"'+edt1.Text+'","'+edt2.text+'","'+edt3.text+'","'+edt4.text+'","'+edt5.text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from detail_jual');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!!');
posisiawal;
end;
end;

procedure TForm9.btn3Click(Sender: TObject);
begin
  id:=DBGrid1.DataSource.DataSet.FieldByName('id').AsString;


ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('Update detail_jual set jual_id= "'+edt1.Text+'", barang_id = "'+edt2.Text+'", jumlah = "'+edt3.Text+'", harga_jual = "'+edt4.Text+'", total_jual = "'+edt5.Text+'" where id ="'+id+'"');
ZQuery1.ExecSQL;
ShowMessage('DATA BERHASIL DIUPDATE!');

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from detail_jual');
ZQuery1.Open;
posisiawal;
end;

procedure TForm9.btn4Click(Sender: TObject);
begin
  if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
    begin
    id:=DBGrid1.DataSource.DataSet.FieldByName('id').AsString;

    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add(' delete from detail_jual where id ="'+id+'"');
    ZQuery1.ExecSQL;

    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('select * from detail_jual');
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

procedure TForm9.btn5Click(Sender: TObject);
begin
 posisiawal;
end;

procedure TForm9.DBGrid1CellClick(Column: TColumn);
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
end;

procedure TForm9.FormShow(Sender: TObject);
begin
 posisiawal;
end;

end.
