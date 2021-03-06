unit FormPegawai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm_Pegawai = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Button2: TButton;
    password: TEdit;
    username: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Pegawai: TForm_Pegawai;

implementation

uses Koneksi, Menu_Pegawai;

{$R *.dfm}

procedure TForm_Pegawai.Button1Click(Sender: TObject);
begin
  if ((username.Text='') OR (password.Text='')) then
    begin
      ShowMessage('Maaf, Username atau Password tidak boleh kosong');
    end
  else begin
    DataModule1.koneksilogin.Connected:=true;
    with DataModule1.qrypegawai do
      begin
        close;
        sql.clear;
        sql.add('SELECT * FROM tb_pegawai where username="'+username.Text+'" AND password="'+password.Text+'"');
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
              MenuPegawai.Show;
              Form_Pegawai.Hide;
            end;
      end;
  end;
end;

end.
