unit Menu_Pegawai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel_login: TPanel;
    Label3: TLabel;
    Image2: TImage;
    Image3: TImage;
    Button1: TButton;
    Button2: TButton;
    Panel3: TPanel;
    Image1: TImage;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
Data_Buku.show;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Data_Anggota.show;
end;

end.
