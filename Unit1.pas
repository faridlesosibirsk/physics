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
  Vcl.Forms {TForm} ,
  System.Classes,
  Vcl.Controls;

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

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  Director1: Director;
  Builder1: ButtonBuilder;
  Builder2, Builder3, Builder4: PanelBuilder;
  Button1: TButton;
  Panel2, Panel3, Panel4: TPanel;
begin
  Director1 := Director.create();

  Builder2 := PanelBuilder.create;
  Director1.makeHeaderPanel(Builder2);
  Panel2 := Builder2.getPanel;
  Panel2.Parent := self;

  Builder4 := PanelBuilder.create;
  Director1.makeContentPanel(Builder4);
  Panel4 := Builder4.getPanel;
  Panel4.Parent := self;

  Builder3 := PanelBuilder.create;
  Director1.makeFooterPanel(Builder3);
  Panel3 := Builder3.getPanel;
  Panel3.Parent := self;

  Builder1 := ButtonBuilder.create;
  Director1.makeNextButton(Builder1);
  Button1 := Builder1.getButton;
  Button1.Parent := Panel3;
end;

end.
