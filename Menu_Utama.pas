unit Menu_Utama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TMenuUtama = class(TForm)
    Panel_login: TPanel;
    Label3: TLabel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Panel3: TPanel;
    Panel1: TPanel;
    Image6: TImage;
    Panel2: TPanel;
    Image4: TImage;
    Image5: TImage;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MenuUtama: TMenuUtama;

implementation

uses FormPengunjung, FormAnggota, FormPegawai;

{$R *.dfm}

procedure TMenuUtama.Button1Click(Sender: TObject);
begin
Form_Pengunjung.show;
end;

procedure TMenuUtama.Button2Click(Sender: TObject);
begin
Form_Anggota.show;
end;

procedure TMenuUtama.Button3Click(Sender: TObject);
begin
Form_Pegawai.show;
end;

end.
