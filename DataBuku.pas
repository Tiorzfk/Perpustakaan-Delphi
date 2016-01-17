unit DataBuku;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ExtCtrls;

type
  TData_Buku = class(TForm)
    SG: TStringGrid;
    EditSearch: TEdit;
    search: TButton;
    btn_sort: TButton;
    filter_id: TComboBox;
    sorting: TComboBox;
    btn_input: TButton;
    jml_data: TEdit;
    MemoBuku: TMemo;
    btn_simpan: TButton;
    lb_databuku: TLabel;
    lb_inputbuku: TLabel;
    btn_edit: TButton;
    Edit_judul: TEdit;
    Edit_ISBN: TEdit;
    Edit_kategori: TEdit;
    Edit_pengarang: TEdit;
    Edit_penerbit: TEdit;
    btn_cancel: TButton;
    procedure ambildata;
    procedure data;
    procedure showdata;
    procedure FormCreate(Sender: TObject);
    procedure aturkolom;
    procedure searchClick(Sender: TObject);
    procedure sortingDESC;
    procedure sortingASC;
    procedure btn_sortClick(Sender: TObject);
    procedure btn_inputClick(Sender: TObject);
    procedure btn_simpanClick(Sender: TObject);
    procedure btn_editClick(Sender: TObject);
    procedure btn_cancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  dt_buku = record
    id_buku:integer;
    ISBN:string;
    judul: string;
    kategori: string;
    pengarang: string;
    penerbit: string;
  end;
  buku = array[1..20] of dt_buku;
  
var
  Data_Buku: TData_Buku;
  bku:buku;
  
implementation

uses Koneksi;

{$R *.dfm}
procedure TData_Buku.ambildata;
begin
  with DataModule1.qrybuku do
  begin
    Close;
    SQL.Clear;
    SQL.Text:='select * from tb_buku';
    Open;
    active:=true;
  end;
end;

procedure TData_Buku.data;
Var i : Integer;
begin
if DataModule1.qrybuku.RecordCount<>0 then
  begin
    SG.RowCount:= DataModule1.qrybuku.RecordCount+1;
    for i:= 0 to DataModule1.qrybuku.RecordCount-1 do
      begin
        bku[i+1].id_buku:=DataModule1.qrybuku.FieldByName('id_buku').AsInteger;
        bku[i+1].ISBN:=DataModule1.qrybuku.FieldByName('ISBN').AsString;
        bku[i+1].judul:=DataModule1.qrybuku.FieldByName('judul').AsString;
        bku[i+1].kategori:=DataModule1.qrybuku.FieldByName('kategori').AsString;
        bku[i+1].pengarang:=DataModule1.qrybuku.FieldByName('pengarang').AsString;
        bku[i+1].penerbit:=DataModule1.qrybuku.FieldByName('penerbit').AsString;
        DataModule1.qrybuku.Next;
      end;
  end;
end;

procedure TData_Buku.showdata;
Var i : Integer;
begin
    for i:= 0 to DataModule1.qrybuku.RecordCount do
      begin
        SG.Cells[0,i+1]:=IntToStr(i+1)+'.';
        SG.Cells[1,i+1]:=IntToStr(bku[i+1].id_buku);
        SG.Cells[2,i+1]:=bku[i+1].ISBN;
        SG.Cells[3,i+1]:=bku[i+1].judul;
        SG.Cells[4,i+1]:=bku[i+1].kategori;
        SG.Cells[5,i+1]:=bku[i+1].pengarang;
        SG.Cells[6,i+1]:=bku[i+1].penerbit;
      end;
end;

procedure TData_Buku.aturkolom;
begin
  with SG do
  begin
    ColCount:=7;
    RowCount:=2;
    FixedCols:=0;
    DefaultROwHeight:=18;
    Options := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect];
    Cells[0,0]:='No.';
    Cells[1,0]:='Id Buku';
    Cells[2,0]:='ISBN';
    Cells[3,0]:='Judul Buku';
    Cells[4,0]:='Kategori Buku';
    Cells[5,0]:='Pengarang';
    Cells[6,0]:='Penerbit';

    //lebar kolom
    ColWidths[0]:=25;
    ColWidths[1]:=70;
    ColWidths[2]:=100;
    ColWidths[3]:=150;
    ColWidths[4]:=120;
    ColWidths[5]:=80;
    ColWidths[6]:=80;
  end;
end;
procedure TData_Buku.FormCreate(Sender: TObject);
begin
  DataModule1.koneksilogin.Connected := True;
  AturKolom;
  ambildata;
  data;
  showdata;
  edit_ISBN.Hide;
  edit_judul.Hide;
  edit_kategori.Hide;
  edit_pengarang.Hide;
  edit_penerbit.Hide;
  btn_cancel.hide;
end;

procedure TData_Buku.searchClick(Sender: TObject);
var
  i,h,no:integer;
  ketemu:boolean;
begin
  i := 1;
  ketemu := false;
    while (Not ketemu) and (i <= DataModule1.qrybuku.RecordCount) do
      begin
        if(bku[i].judul = EditSearch.Text) then
          ketemu := true
        else if(bku[i].kategori = EditSearch.Text) then
          ketemu := true
        else
          i := i+1;
      end; //endwhile
  no:=1;
  if(ketemu) then
    begin
        AturKolom;
        ambildata;
        data;
        for h := 1 to SG.RowCount  do begin
          SG.Rows[h].Clear;
        end;
          SG.Cells[0,1]:=IntToStr(no);
          SG.Cells[1,1]:=IntToStr(bku[i].id_buku);
          SG.Cells[2,1]:=bku[i].ISBN;
          SG.Cells[3,1]:=bku[i].judul;
          SG.Cells[4,1]:=bku[i].kategori;
          SG.Cells[5,1]:=bku[i].pengarang;
          SG.Cells[6,1]:=bku[i].penerbit;
          no:=no+1;
    end
  else if(EditSearch.Text='') then begin
    AturKolom;
    ambildata;
    data;
    showdata;
  end
  else
    ShowMessage('Data '+EditSearch.Text+' tidak ditemukan !');
end;

procedure TData_Buku.sortingDESC;
var
  i,j,max:integer;
  temp:dt_buku;
begin
  for i := 1 to (DataModule1.qrybuku.RecordCount-1) do begin
    max := i;
    for j := (i+1) to DataModule1.qrybuku.RecordCount do begin
      if(bku[j].id_buku > bku[max].id_buku) then
        max := j
    end;//endfor
    //proses penukaran dua buah data
    temp     := bku[i];
    bku[i]   := bku[max];
    bku[max] := temp;
  end;//endfor
end;

procedure TData_Buku.sortingASC;
var
  i,j,max:integer;
  temp:dt_buku;
begin
  for i := 1 to (DataModule1.qrybuku.RecordCount-1) do begin
    max := i;
    for j := (i+1) to DataModule1.qrybuku.RecordCount do begin
      if(bku[j].id_buku < bku[max].id_buku) then
        max := j
    end;//endfor
    //proses penukaran dua buah data
    temp     := bku[i];
    bku[i]   := bku[max];
    bku[max] := temp;
  end;//endfor
end;

procedure TData_Buku.btn_sortClick(Sender: TObject);
begin
  AturKolom;
  ambildata;
  data;
  if((filter_id.Text='Id')AND(sorting.Text='DESCENDING'))then
    sortingDESC;
    showdata;
end;

procedure TData_Buku.btn_inputClick(Sender: TObject);
var
  i,n:integer;
begin
  n:=StrToInt(jml_data.Text);
  for i:= 1 to n do
    begin
      bku[i].judul:=InputBox('ISBN','Masukkan ISBN','');
      bku[i].judul:=InputBox('Judul Buku','Masukkan Judul Buku','');
      bku[i].kategori:=InputBox('Kategori Buku','Masukkan Kategori Buku','');
      bku[i].pengarang:=InputBox('Pengarang','Masukan Pengarang','');
      bku[i].penerbit:=InputBox('Penerbit','Masukan Penerbit','');
      MemoBuku.Lines.append (inttostr(i)+'. Judul : '+bku[i].judul+', Pengarang : '+bku[i].pengarang+', Penerbit : '+bku[i].penerbit);
    end;
end;
procedure TData_Buku.btn_simpanClick(Sender: TObject);
var
  i,n:integer;
begin
  n:=StrToInt(jml_data.Text);
  with DataModule1.qrybuku do
    begin
      for i:=1 to n do begin
        close;
        sql.Clear;
        sql.Add('insert into tb_buku(ISBN,judul,kategori,pengarang,penerbit)values("'+bku[i].ISBN+'","'+bku[i].judul+'","'+bku[i].kategori+'","'+bku[i].pengarang+'","'+bku[i].penerbit+'") ');
        ExecSQL;
      end;
      ShowMessage('Tambah data berhasil..');
    end;
  //untuk merefresh data di stringgrid sesudah insert data
  AturKolom;
  ambildata;
  data;
  showdata;
end;

procedure TData_Buku.btn_editClick(Sender: TObject);
var
  i:integer;
begin
  btn_edit.Caption := 'Simpan';
  if btn_edit.Caption = 'Simpan' then
    begin
      edit_ISBN.show;
      edit_judul.show;
      edit_kategori.show;
      edit_pengarang.show;
      edit_penerbit.show;
      btn_cancel.show;
    end;
end;

procedure TData_Buku.btn_cancelClick(Sender: TObject);
begin
  edit_ISBN.Hide;
  edit_judul.Hide;
  edit_kategori.Hide;
  edit_pengarang.Hide;
  edit_penerbit.Hide;
  btn_cancel.Hide;
  btn_edit.Caption := 'Edit Data';
end;


end.
