unit about;

interface

uses Winapi.Windows, System.Classes, Vcl.Graphics, Vcl.Forms, Vcl.Controls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Imaging.jpeg;

type
  TAboutBox = class(TForm)
    Panel1: TPanel;
    OKButton: TButton;
    Copyright: TLabel;
    Version: TLabel;
    ProductName: TLabel;
    ProgramIcon: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;

implementation

{$R *.dfm}

end.
