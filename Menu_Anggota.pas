unit Menu_Anggota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TMenuAnggota = class(TForm)
    Panel_login: TPanel;
    Label3: TLabel;
    Image3: TImage;
    Label1: TLabel;
    Button1: TButton;
    Panel3: TPanel;
    Panel1: TPanel;
    Image6: TImage;
    Image1: TImage;
    Button2: TButton;
    Image2: TImage;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MenuAnggota: TMenuAnggota;

implementation

uses Menu, Menu_Utama, PeminjamanBuku;

{$R *.dfm}

procedure TMenuAnggota.Button1Click(Sender: TObject);
begin
Menu_Pengunjung.show;
end;

procedure TMenuAnggota.FormCreate(Sender: TObject);
begin
MenuUtama.Hide;
end;

procedure TMenuAnggota.Button2Click(Sender: TObject);
begin
Peminjaman_Buku.Show;
end;

end.
