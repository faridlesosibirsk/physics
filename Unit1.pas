unit Unit1;

interface

uses
  // System.Generics.Collections {TList},
  Vcl.StdCtrls {TButton} ,
  // Vcl.ExtCtrls {TPanel},
  // Vcl.Controls,
  // System.Classes
  BuilderUnit {Builder} ,
  ButtonBuilderUnit {ButtonBuilder} ,
  PanelBuilderUnit {PanelBuilder} ,
  DirectorUnit {Director} ,
  Vcl.ExtCtrls {TPanel} ,
  Vcl.Forms {TForm};

type
  TForm1 = class(TForm)
  private
    // Director1: Director;
    // Builder1: ButtonBuilder;
    // Button: TButton;
  public
  published
    procedure FormCreate(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  Director1: Director;
  Builder1: ButtonBuilder;
  Builder2: PanelBuilder;
  Button: TButton;
  Panel: TPanel;
begin
  Director1 := Director.create;
  Builder1 := ButtonBuilder.create;
  Director1.makeNextButton(Builder1);
  Button := Builder1.getButton;
  Button.Parent := self;
  Builder2 := PanelBuilder.create;
  Director1.makeHeaderPanel(Builder2);
  Panel := Builder2.getPanel;
  Panel.Parent := self;
end;

end.
