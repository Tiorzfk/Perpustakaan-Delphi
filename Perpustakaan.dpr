program Perpustakaan;

uses
  Forms,
  Koneksi in 'Koneksi.pas' {DataModule1: TDataModule},
  Register in 'Register.pas' {FormRegister},
  Menu in 'Menu.pas' {Menu_Pengunjung},
  //Menu_Utama in 'Menu_Utama.pas' {MenuUtama},
  FormPengunjung in 'FormPengunjung.pas' {Form_Pengunjung},
  FormPegawai in 'FormPegawai.pas' {Form_Pegawai},
  Menu_Pegawai in 'Menu_Pegawai.pas' {MenuPegawai},
  DataBuku in 'DataBuku.pas' {Data_Buku},
  DataAnggota in 'DataAnggota.pas' {Data_Anggota},
  Menu_Anggota in 'Menu_Anggota.pas' {MenuAnggota},
  FormPinjamBuku in 'FormPinjamBuku.pas' {Pinjam_Buku};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TMenuAnggota, MenuAnggota);
  Application.CreateForm(TMenu_Pengunjung, Menu_Pengunjung);
  Application.CreateForm(TPinjam_Buku, Pinjam_Buku);
  Application.Run;
end.
