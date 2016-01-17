unit FormPinjamBuku;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMan, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ComCtrls;

type
  TPinjam_Buku = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    Button7: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit3: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit5: TDBEdit;
    DBEdit8: TDBEdit;
    DateTimePicker1: TDateTimePicker;
    DBEdit6: TDBEdit;
    DateTimePicker2: TDateTimePicker;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pinjam_Buku: TPinjam_Buku;

implementation

{$R *.dfm}

end.
