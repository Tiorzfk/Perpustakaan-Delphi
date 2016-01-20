program Perpustakaan;

uses
  Forms,
  Koneksi in 'Koneksi.pas' {DataModule1: TDataModule},
  Register in 'Register.pas' {FormRegister},
  Menu in 'Menu.pas' {Menu_Pengunjung},
  FormPengunjung in 'FormPengunjung.pas' {Form_Pengunjung},
  DataBuku in 'DataBuku.pas' {Data_Buku},
  DataAnggota in 'DataAnggota.pas' {Data_Anggota},
  Menu_Anggota in 'Menu_Anggota.pas' {MenuAnggota},
  Menu_Utama in 'Menu_Utama.pas' {MenuUtama},
  FormAnggota in 'FormAnggota.pas' {Form_Anggota},
  FormAnggotaLogin in 'FormAnggotaLogin.pas' {Form_Anggota_Login},
  FormPegawai in 'FormPegawai.pas' {Form_Pegawai},
  Menu_Pegawai in 'Menu_Pegawai.pas' {MenuPegawai},
  PeminjamanBuku in 'PeminjamanBuku.pas' {Peminjaman_Buku};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TMenuUtama, MenuUtama);
  Application.CreateForm(TMenu_Pengunjung, Menu_Pengunjung);
  Application.CreateForm(TMenuPegawai, MenuPegawai);
  Application.CreateForm(TMenuAnggota, MenuAnggota);
  Application.CreateForm(TForm_Pengunjung, Form_Pengunjung);
  Application.CreateForm(TForm_Anggota, Form_Anggota);
  Application.CreateForm(TForm_Anggota_Login, Form_Anggota_Login);
  Application.CreateForm(TForm_Pegawai, Form_Pegawai);
  Application.CreateForm(TData_Anggota, Data_Anggota);
  Application.CreateForm(TData_Buku, Data_Buku);
  Application.CreateForm(TPeminjaman_Buku, Peminjaman_Buku);
  Application.Run;
end.
