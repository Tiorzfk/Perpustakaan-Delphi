unit PeminjamanBuku;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DBCtrls, Mask, StdCtrls, Grids, DBGrids, DB, ADODB;

type
  TPeminjaman_Buku = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    Button5: TButton;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    Button7: TButton;
    dt: TDateTimePicker;
    DBGrid1: TDBGrid;
    DataSourcePeminjaman: TDataSource;
    koneksi: TADOConnection;
    qrypeminjaman: TADOQuery;
    DataSource1: TDataSource;
    qryjudul: TADOQuery;
    DataSource2: TDataSource;
    id_anggota: TDBEdit;
    ADOQuery1: TADOQuery;
    DBLookupComboBox1: TDBLookupComboBox;
    ADOQuery2: TADOQuery;
    DataSource3: TDataSource;
    id_buku: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Peminjaman_Buku: TPeminjaman_Buku;

implementation

{$R *.dfm}

procedure TPeminjaman_Buku.Button1Click(Sender: TObject);
var
  tgl_harus_kembali,tgl_pinjam:TDate;
begin
  tgl_pinjam:=dt.date;
  tgl_harus_kembali:=tgl_pinjam+7;
 {
  with qryjudul do
    begin
        close;
        sql.Clear;
        sql.Add('update tb_buku set status=1 where id_buku="'+id_buku.text+'"');
        ExecSQL;
    end;
  }
  with qrypeminjaman do
    begin
        close;
        sql.Clear;
        sql.Add('insert into tb_peminjaman(id_anggota,id_buku,tgl_pinjam,tgl_kembali)values("'+id_anggota.text+'","'+id_buku.text+'","'+DateToStr(tgl_pinjam)+'","'+DateToStr(tgl_harus_kembali)+'") ');
        ExecSQL;
    end;

    ShowMessage('Berhasil');
end;

end.
