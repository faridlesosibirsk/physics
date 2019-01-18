unit OpenUnit;

interface

uses
  PhysicsUnit,
  LabsUnit,
  StatesUnit {States},
  Vcl.ExtCtrls {TPanel} ,
  Vcl.StdCtrls {TButton} ,
  BuilderUnit {Builder} ,
  ButtonBuilderUnit {ButtonBuilder} ,
  PanelBuilderUnit {PanelBuilder} ,
  DirectorUnit {Director} ,
  System.Classes,
  Vcl.Controls,
  System.Generics.Collections {TDictionary};

type
  Open = class(TInterfacedObject, Physics)
  private
    /// <link>aggregation</link>
    State: States;
  public
    function makeContent: TPanel;
  end;

implementation

{ Open }

function Open.makeContent: TPanel;
var
  State1: States;
  Director1: Director;
  Builder1: ButtonBuilder;
  Builder2, Builder3, Builder4: PanelBuilder;
  Button1: TButton;
  Panel2, Panel3, Panel4: TPanel;
  doc: TDictionary<String, String>;
begin
  State:= Labs.Create;
  doc:=State.getDoc;

  Director1 := Director.create();

  Builder4 := PanelBuilder.create;
  Director1.makeContentPanel(Builder4);
  Panel4 := Builder4.getPanel;
  // Panel4.Parent := self;

  Builder2 := PanelBuilder.create;
  Director1.makeHeaderPanel(Builder2);
  Panel2 := Builder2.getPanel;
  Panel2.Parent := Panel4;

  Builder3 := PanelBuilder.create;
  Director1.makeFooterPanel(Builder3);
  Panel3 := Builder3.getPanel;
  Panel3.Parent := Panel4;

  Builder1 := ButtonBuilder.create;
  Director1.makeNextButton(Builder1);
  Button1 := Builder1.getButton;
  Button1.Parent := Panel3;

  result := Panel4;
end;

end.
