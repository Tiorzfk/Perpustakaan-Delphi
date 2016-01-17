unit FormAnggota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg;

type
  TForm_Anggota = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    nim: TEdit;
    Button1: TButton;
    alamat: TEdit;
    Button2: TButton;
    telepon: TEdit;
    nama_lengkap: TEdit;
    Label5: TLabel;
    username: TEdit;
    Label7: TLabel;
    password: TEdit;
    Label8: TLabel;
    procedure Label8Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Anggota: TForm_Anggota;

implementation

uses Koneksi, FormPengunjung, Menu, FormAnggotaLogin, Menu_Utama;

{$R *.dfm}

procedure TForm_Anggota.Label8Click(Sender: TObject);
begin
Form_Anggota_Login.show;
Form_Anggota.Hide;
end;

procedure TForm_Anggota.Button1Click(Sender: TObject);
begin
  with DataModule1.qryanggota do
    begin
        close;
        sql.Clear;
        sql.Add('insert into tb_anggota(NIM,nama,alamat,no_telp,username,password)values("'+nim.Text+'","'+nama_lengkap.Text+'","'+alamat.Text+'","'+telepon.Text+'","'+username.Text+'","'+password.Text+'") ');
        ExecSQL;
        ShowMessage('Terimakasih Sudah Mendaftar, Silahkan tunggu Persetujuan Admin!');
        Form_Pengunjung.hide;
        MenuUtama.Show;
    end;
end;

procedure TForm_Anggota.FormCreate(Sender: TObject);
begin
nim.Text:='';
nama_lengkap.Text:='';
alamat.Text:='';
telepon.Text:='';
username.Text:='';
password.Text:='';
end;

end.
