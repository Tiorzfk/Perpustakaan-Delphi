unit FormPengunjung;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg;

type
  TForm_Pengunjung = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    nim: TEdit;
    Button1: TButton;
    alamat: TEdit;
    instansi: TEdit;
    Button2: TButton;
    CheckBox1: TCheckBox;
    telepon: TEdit;
    nama_lengkap: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Pengunjung: TForm_Pengunjung;

implementation

uses Koneksi, Menu;

{$R *.dfm}

procedure TForm_Pengunjung.Button1Click(Sender: TObject);
begin
  with DataModule1.qrypengunjung do
    begin
        close;
        sql.Clear;
        sql.Add('insert into tb_pengunjung(NIM,nama_lengkap,alamat,instansi,telepon)values("'+nim.Text+'","'+nama_lengkap.Text+'","'+alamat.Text+'","'+instansi.Text+'","'+telepon.Text+'") ');
        ExecSQL;
        ShowMessage('Berhasil..');
        Form_Pengunjung.hide;
  
        Menu_Pengunjung.show;
    end;
end;

end.
