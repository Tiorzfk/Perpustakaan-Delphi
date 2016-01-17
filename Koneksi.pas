unit Koneksi;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule1 = class(TDataModule)
    koneksilogin: TADOConnection;
    DataSourceBuku: TDataSource;
    qrybuku: TADOQuery;
    qrypegawai: TADOQuery;
    DataSourcePegawai: TDataSource;
    qrypengunjung: TADOQuery;
    DataSourcePengunjung: TDataSource;
    qryanggota: TADOQuery;
    DataSourceAnggota: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

end.
