unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms,
  Vcl.StdCtrls;

type

  Factory = class
  private
  public
    function ButtonCreate(AOwner: TForm): TButton;
  published
    constructor create; virtual; abstract;
  end;

  TForm1 = class(TForm)
  private
    Button1: TComponent;
    Factory1: Factory;
  published
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  end;

implementation

{$R *.dfm}

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Button1.free;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Button1 := Factory1.ButtonCreate(self);
end;

{ Factory }

function Factory.ButtonCreate(AOwner: TForm): TButton;
begin
  result := TButton.create(AOwner);
  result.Parent := AOwner;
end;

end.
