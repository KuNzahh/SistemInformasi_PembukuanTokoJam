unit Costumer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls,
  Grids, DBGrids, frxClass, frxDBSet;

type
  TForm11 = class(TForm)
    lbl1: TLabel;
    NIK: TLabel;
    lbl2: TLabel;
    Label1: TLabel;
    lbl3: TLabel;
    edt1: TEdit;
    edt3: TEdit;
    cbb1: TComboBox;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    ZQuery1: TZQuery;
    dsCostumer: TDataSource;
    DBGrid1: TDBGrid;
    btn7: TButton;
    frxDBcostumer: TfrxDBDataset;
    frxRcostumer: TfrxReport;
    
    procedure btn7Click(Sender: TObject);
    procedure posisiawal;
    procedure editbersih;
    procedure editenable;
    procedure editdisable;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;
  id:String;

implementation

uses MenuUtama;

{$R *.dfm}

procedure TForm11.btn7Click(Sender: TObject);
begin
  Hide;
 form2.show;
end;

procedure TForm11.editbersih;
begin
 edt1.Text := '';
 cbb1.Text := '';
 edt2.Text := '';
 edt3.Text := '';
end;

procedure TForm11.editdisable;
begin
  edt1.Enabled:= False;
  cbb1.Enabled:= False;
  edt2.Enabled:= False;
  edt3.Enabled:= False;
end;

procedure TForm11.editenable;
begin
 edt1.Enabled:= True;
  edt2.Enabled:= True;
  edt3.Enabled:= True;
  cbb1.Enabled:= True;
end;

procedure TForm11.posisiawal;
begin
 editbersih;
  editdisable;
  btn1.Enabled := True;
  btn2.Enabled := False ;
  btn3.Enabled := False;
  btn4.Enabled := True;
  btn5.Enabled := False ;
end;
procedure TForm11.btn1Click(Sender: TObject);
begin
  editbersih;
  btn1.Enabled:= True;
  btn2.Enabled:= True;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= True;
  editenable;
end;


procedure TForm11.btn2Click(Sender: TObject);
begin
   if(edt1.Text = '')or(cbb1.Text = '')or(edt2.Text = '')or(edt3.Text = '')then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG !');
  end else
if(ZQuery1.Locate('nm_costumer',edt1.Text,[]))then
  begin
    ShowMessage('nama kostumer sudah ada');
    posisiawal;
  end else
    begin
    ZQuery1.sql.clear;
    ZQuery1.sql.Add('insert into costumer values(null,"'+edt1.Text+'","'+cbb1.text+'","'+edt2.text+'","'+edt3.text+'")');
    ZQuery1.ExecSQL;

    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('select * from costumer');
    ZQuery1.Open;
    ShowMessage('DATA BERHASIL DISIMPAN!!');
    posisiawal;
    end;
end;



procedure TForm11.btn3Click(Sender: TObject);
begin
  id:=DBGrid1.DataSource.DataSet.FieldByName('id').AsString;


ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('Update costumer set nm_costumer= "'+edt1.Text+'", jk = "'+cbb1.Text+'", alamat = "'+edt2.Text+'", telp = "'+edt3.Text+'" where id ="'+id+'"');
ZQuery1.ExecSQL;
ShowMessage('DATA BERHASIL DIUPDATE!');

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from costumer');
ZQuery1.Open;
posisiawal;
end;

procedure TForm11.btn4Click(Sender: TObject);
begin
  if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
    begin
    id:=DBGrid1.DataSource.DataSet.FieldByName('id').AsString;

    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add(' delete from costumer where id ="'+id+'"');
    ZQuery1.ExecSQL;

    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('select * from costumer');
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



procedure TForm11.btn5Click(Sender: TObject);
begin
 posisiawal;
end;

procedure TForm11.DBGrid1CellClick(Column: TColumn);
begin
  editenable;

btn1.Enabled:= true;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;

id:=ZQuery1.Fields[0].AsString;

edt1.Text:= ZQuery1.FieldList[1].AsString;
cbb1.Text:= ZQuery1.FieldList[2].AsString;
edt2.Text:= ZQuery1.FieldList[3].AsString;
edt3.Text:= ZQuery1.FieldList[4].AsString;
end;

procedure TForm11.FormShow(Sender: TObject);
begin
 posisiawal;
end;

procedure TForm11.btn6Click(Sender: TObject);
begin
  frxRcostumer.ShowReport();
end;

end.
