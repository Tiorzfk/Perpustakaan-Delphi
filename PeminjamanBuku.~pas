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
    Label5: TLabel;
    GroupBox1: TGroupBox;
    Button4: TButton;
    Button5: TButton;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    Button7: TButton;
    Edit_id: TDBEdit;
    Edit_IdBuku: TDBEdit;
    Edit_jmlpinjam: TDBEdit;
    DateTimePicker1: TDateTimePicker;
    DBGrid1: TDBGrid;
    DataSourcePeminjaman: TDataSource;
    koneksi: TADOConnection;
    qrypeminjaman: TADOQuery;
    DataSource1: TDataSource;
    qryjudul: TADOQuery;
    cb_judulbuku: TComboBox;
    qrynama: TADOQuery;
    DataSource2: TDataSource;
    cb_nama: TComboBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Peminjaman_Buku: TPeminjaman_Buku;

implementation

{$R *.dfm}

procedure TPeminjaman_Buku.FormCreate(Sender: TObject);
begin
cb_judulbuku.Items.Clear;
while not qryjudul.Eof do
  begin
    cb_judulbuku.Items.Add(qryjudul.fieldbyname('judul').AsString);
    qryjudul.Next;
  end;
cb_nama.Items.Clear;
while not qrynama.Eof do
  begin
    cb_nama.Items.Add(qrynama.fieldbyname('nama').AsString);
    qrynama.Next;
  end;
end;
end.
