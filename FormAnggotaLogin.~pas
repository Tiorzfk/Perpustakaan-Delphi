unit FormAnggotaLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg;

type
  TForm_Anggota_Login = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Panel1: TPanel;
    Label1: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Button1: TButton;
    Button2: TButton;
    password: TEdit;
    username: TEdit;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Anggota_Login: TForm_Anggota_Login;

implementation

uses Koneksi, Menu_Anggota, FormAnggota;

{$R *.dfm}

procedure TForm_Anggota_Login.Button1Click(Sender: TObject);
begin
  if ((username.Text='') OR (password.Text='')) then
    begin
      ShowMessage('Maaf, Username atau Password tidak boleh kosong');
    end
  else begin
    DataModule1.koneksilogin.Connected:=true;
    with DataModule1.qryanggota do
      begin
        close;
        sql.clear;
        sql.add('SELECT * FROM tb_anggota where username="'+username.Text+'" AND password="'+password.Text+'" AND status=1');
        open;
        if IsEmpty then
          begin
            ShowMessage('Maaf, Username atau Password yang anda masukan salah.');
            username.Text:='';
            password.Text:='';
          end
          else
            begin
              ShowMessage('Selamat datang di Perpustakaan Online');
              MenuAnggota.Show;
              Form_Anggota_Login.Hide;
            end;
      end;
  end;
end;

procedure TForm_Anggota_Login.Label8Click(Sender: TObject);
begin
Form_Anggota_Login.Hide;
Form_Anggota.Show;
end;

end.
