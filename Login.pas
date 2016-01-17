unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormLogin = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    login: TButton;
    register: TButton;
    username: TEdit;
    password: TEdit;
    procedure registerClick(Sender: TObject);
    procedure loginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;

implementation

uses Register, Koneksi, Menu;

{$R *.dfm}

procedure TFormLogin.registerClick(Sender: TObject);
begin
FormRegister.Show;
FormLogin.hide;
end;

procedure TFormLogin.loginClick(Sender: TObject);
begin
  if ((username.Text='') OR (password.Text='')) then
    begin
      ShowMessage('Maaf, Username atau Password tidak boleh kosong');
    end
  else begin
    DataModule1.koneksilogin.Connected:=true;
    with DataModule1.qry do
      begin
        close;
        sql.clear;
        sql.add('SELECT * FROM tb_users where username="'+username.Text+'" AND password="'+password.Text+'"');
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
              Menu_Pengunjung.Show;
              FormLogin.Hide;
            end;
      end;
  end;
end;

end.
