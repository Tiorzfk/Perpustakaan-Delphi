unit DataAnggota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TData_Anggota = class(TForm)
    lb_databuku: TLabel;
    SG: TStringGrid;
    EditSearch: TEdit;
    search: TButton;
    btn_sort: TButton;
    filter_id: TComboBox;
    sorting: TComboBox;
    btn_edit: TButton;
    Edit_alamat: TEdit;
    Edit_nama: TEdit;
    Edit_no_telp: TEdit;
    Edit_username: TEdit;
    Edit_password: TEdit;
    btn_cancel: TButton;
    procedure ambildata;
    procedure data;
    procedure showdata;
    procedure aturkolom;
    procedure searchClick(Sender: TObject);
    procedure sortingDESC;
    procedure sortingASC;
    procedure btn_sortClick(Sender: TObject);
    procedure btn_editClick(Sender: TObject);
    procedure btn_cancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  dt_anggota = record
    id_anggota:integer;
    nama:string;
    alamat: string;
    no_telp: string;
    username: string;
    password: string;
  end;
  anggota = array[1..20] of dt_anggota;

var
  Data_Anggota: TData_Anggota;
  agt:anggota;

implementation

uses Koneksi;

{$R *.dfm}
procedure TData_Anggota.ambildata;
begin
  with DataModule1.qryanggota do
  begin
    Close;
    SQL.Clear;
    SQL.Text:='select * from tb_anggota';
    Open;
    active:=true;
  end;
end;

procedure TData_Anggota.data;
Var i : Integer;
begin
if DataModule1.qryanggota.RecordCount<>0 then
  begin
    SG.RowCount:= DataModule1.qryanggota.RecordCount+1;
    for i:= 0 to DataModule1.qryanggota.RecordCount-1 do
      begin
        agt[i+1].id_anggota:=DataModule1.qryanggota.FieldByName('id_anggota').AsInteger;
        agt[i+1].nama:=DataModule1.qryanggota.FieldByName('nama').AsString;
        agt[i+1].alamat:=DataModule1.qryanggota.FieldByName('alamat').AsString;
        agt[i+1].no_telp:=DataModule1.qryanggota.FieldByName('no_telp').AsString;
        agt[i+1].username:=DataModule1.qryanggota.FieldByName('username').AsString;
        agt[i+1].password:=DataModule1.qryanggota.FieldByName('password').AsString;
        DataModule1.qryanggota.Next;
      end;
  end;
end;

procedure TData_Anggota.showdata;
Var i : Integer;
begin
    for i:= 0 to DataModule1.qryanggota.RecordCount do
      begin
        SG.Cells[0,i+1]:=IntToStr(i+1)+'.';
        SG.Cells[1,i+1]:=IntToStr(agt[i+1].id_anggota);
        SG.Cells[2,i+1]:=agt[i+1].nama;
        SG.Cells[3,i+1]:=agt[i+1].alamat;
        SG.Cells[4,i+1]:=agt[i+1].no_telp;
        SG.Cells[5,i+1]:=agt[i+1].username;
        SG.Cells[6,i+1]:=agt[i+1].password;
      end;
end;

procedure TData_Anggota.aturkolom;
begin
  with SG do
  begin
    ColCount:=7;
    RowCount:=2;
    FixedCols:=0;
    DefaultROwHeight:=18;
    Options := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect];
    Cells[0,0]:='No.';
    Cells[1,0]:='Id Anggota';
    Cells[2,0]:='Nama';
    Cells[3,0]:='Alamat';
    Cells[4,0]:='No. Telepon';
    Cells[5,0]:='Username';
    Cells[6,0]:='Password';

    //lebar kolom
    ColWidths[0]:=25;
    ColWidths[1]:=70;
    ColWidths[2]:=100;
    ColWidths[3]:=200;
    ColWidths[4]:=70;
    ColWidths[5]:=80;
    ColWidths[6]:=80;
  end;
end;
procedure TData_Anggota.FormCreate(Sender: TObject);
begin
  DataModule1.koneksilogin.Connected := True;
  AturKolom;
  ambildata;
  data;
  showdata;
  edit_nama.hide;
  edit_alamat.hide;
  edit_no_telp.hide;
  edit_username.hide;
  edit_password.hide;
  btn_cancel.hide;
end;
procedure TData_Anggota.searchClick(Sender: TObject);
var
  i,h,no:integer;
  ketemu:boolean;
begin
  i := 1;
  ketemu := false;
    while (Not ketemu) and (i <= DataModule1.qryanggota.RecordCount) do
      begin
        if(agt[i].nama = EditSearch.Text) then
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
          SG.Cells[1,1]:=IntToStr(agt[i].id_anggota);
          SG.Cells[2,1]:=agt[i].nama;
          SG.Cells[3,1]:=agt[i].alamat;
          SG.Cells[4,1]:=agt[i].no_telp;
          SG.Cells[5,1]:=agt[i].username;
          SG.Cells[6,1]:=agt[i].password;
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

procedure TData_Anggota.sortingDESC;
var
  i,j,max:integer;
  temp:dt_anggota;
begin
  for i := 1 to (DataModule1.qryanggota.RecordCount-1) do begin
    max := i;
    for j := (i+1) to DataModule1.qryanggota.RecordCount do begin
      if(agt[j].id_anggota > agt[max].id_anggota) then
        max := j
    end;//endfor
    //proses penukaran dua buah data
    temp     := agt[i];
    agt[i]   := agt[max];
    agt[max] := temp;
  end;//endfor
end;

procedure TData_Anggota.sortingASC;
var
  i,j,max:integer;
  temp:dt_anggota;
begin
  for i := 1 to (DataModule1.qryanggota.RecordCount-1) do begin
    max := i;
    for j := (i+1) to DataModule1.qryanggota.RecordCount do begin
      if(agt[j].id_anggota < agt[max].id_anggota) then
        max := j
    end;//endfor
    //proses penukaran dua buah data
    temp     := agt[i];
    agt[i]   := agt[max];
    agt[max] := temp;
  end;//endfor
end;

procedure TData_Anggota.btn_sortClick(Sender: TObject);
begin
  AturKolom;
  ambildata;
  data;
  if((filter_id.Text='Id')AND(sorting.Text='DESCENDING'))then
    sortingDESC;
    showdata;
end;
procedure TData_Anggota.btn_editClick(Sender: TObject);
var
  i:integer;
begin
  btn_edit.Caption := 'Simpan';
  if btn_edit.Caption = 'Simpan' then
    begin
      edit_nama.show;
      edit_alamat.show;
      edit_no_telp.show;
      edit_username.show;
      edit_password.show;
      btn_cancel.show;
    end;
end;

procedure TData_Anggota.btn_cancelClick(Sender: TObject);
begin
  edit_nama.hide;
  edit_alamat.hide;
  edit_no_telp.hide;
  edit_username.hide;
  edit_password.hide;
  btn_cancel.Hide;
  btn_edit.Caption := 'Edit Data';
end;
end.
