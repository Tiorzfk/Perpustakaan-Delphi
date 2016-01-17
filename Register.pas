unit Register;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormRegister = class(TForm)
    Login: TButton;
    Register: TLabel;
    Label2: TLabel;
    username: TEdit;
    password: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    nama: TEdit;
    Email: TEdit;
    alamat: TEdit;
    procedure LoginClick(Sender: TObject);
    procedure inputClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRegister: TFormRegister;

implementation



{$R *.dfm}

procedure TFormRegister.LoginClick(Sender: TObject);
begin
FormRegister.Hide;
end;

procedure TFormRegister.inputClick(Sender: TObject);
begin
InputBox('Input','Masukkan NILAI','');
InputBox('Input','Masukkan NILAI','');
end;

end.
