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
    Button4: TButton;
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
    DBEdit1: TDBEdit;
    ADOQuery1: TADOQuery;
    DBLookupComboBox1: TDBLookupComboBox;
    ADOQuery2: TADOQuery;
    DataSource3: TDataSource;
    DBEdit2: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Peminjaman_Buku: TPeminjaman_Buku;

implementation

{$R *.dfm}

procedure TPeminjaman_Buku.Button4Click(Sender: TObject);
begin
{
  with qrypeminjaman do
    begin
        close;
        sql.Clear;
        sql.Add('insert into tb_peminjaman(id_anggota,id_buku,tgl_pinjam,tgl_kembali)values("'+cb_nama.select+'","'+cb_judulbuku.Text+'","'+dt.Text+'") ');
        ExecSQL;
        ShowMessage('Berhasil');
    end;
}
end;

end.
