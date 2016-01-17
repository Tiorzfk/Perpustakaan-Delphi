unit Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TMenu_Pengunjung = class(TForm)
    SG: TStringGrid;
    EditSearch: TEdit;
    search: TButton;
    btn_sort: TButton;
    filter_id: TComboBox;
    sorting: TComboBox;
    GroupBox2: TGroupBox;
    procedure ambildata;
    procedure data;
    procedure showdata;
    procedure FormCreate(Sender: TObject);
    procedure aturkolom;
    procedure searchClick(Sender: TObject);
    procedure sortingDESC;
    procedure sortingASC;
    procedure btn_sortClick(Sender: TObject);
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
  Menu_Pengunjung: TMenu_Pengunjung;
  bku:buku;

implementation

uses Koneksi;

{$R *.dfm}
procedure TMenu_Pengunjung.ambildata;
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
procedure TMenu_Pengunjung.data;
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
procedure TMenu_Pengunjung.showdata;
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
procedure TMenu_Pengunjung.aturkolom;
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

procedure TMenu_Pengunjung.FormCreate(Sender: TObject);
begin
  DataModule1.koneksilogin.Connected := True;
  AturKolom;
  ambildata;
  data;
  showdata;
end;

procedure TMenu_Pengunjung.searchClick(Sender: TObject);
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

procedure TMenu_Pengunjung.sortingDESC;
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

procedure TMenu_Pengunjung.sortingASC;
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

procedure TMenu_Pengunjung.btn_sortClick(Sender: TObject);
begin
  AturKolom;
  ambildata;
  data;
  if((filter_id.Text='Id')AND(sorting.Text='DESCENDING'))then
    sortingDESC;
  showdata;
end;

end.
