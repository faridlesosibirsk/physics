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
    /// <link>aggregation</link>
    Director1: Director;
    /// <link>aggregation</link>
    Builder1: ButtonBuilder;
    Builder: TDictionary<String, PanelBuilder>;
  Button1: TButton;
  Panel: TDictionary<String, TPanel>;
  doc: TDictionary<String, String>;
  public
    function makeContent: TPanel;
    function makeLab11: TPanel;
  end;

implementation

{ Open }

function Open.makeContent: TPanel;
begin
  State:= Labs.Create;
  doc:=State.getDoc;

  Director1 := Director.create(doc);

  Panel:= TDictionary<String, TPanel>.create;
  Builder:= TDictionary<String, PanelBuilder>.create;

  Builder.Add('builder4', PanelBuilder.create);
  Director1.makeContentPanel(Builder['builder4']);
  Panel.Add('panel4', Builder['builder4'].getPanel);
  // Panel4.Parent := self;

  Builder.Add('builder2', PanelBuilder.create);
  Director1.makeHeaderPanel(Builder['builder2']);
  Panel.Add('panel2', Builder['builder2'].getPanel);
  Panel['panel2'].Parent := Panel['panel4'];

  Builder.Add('builder3', PanelBuilder.create);
  Director1.makeFooterPanel(Builder['builder3']);
  Panel.Add('panel3', Builder['builder3'].getPanel);
  Panel['panel3'].Parent := Panel['panel4'];

  Builder1 := ButtonBuilder.create;
  Director1.makeNextButton(Builder1);
  Button1 := Builder1.getButton;
  Button1.Parent := Panel['panel3'];

  result := Panel['panel4'];
end;

function Open.makeLab11: TPanel;
begin
  State:= Labs.Create;
  State.getLab1;
  doc:=State.getDoc;

  Director1 := Director.create(doc);

  Panel:= TDictionary<String, TPanel>.create;
  Builder:= TDictionary<String, PanelBuilder>.create;

  Builder.Add('builder4', PanelBuilder.create);
  Director1.makeContentPanel(Builder['builder4']);
  Panel.Add('panel4', Builder['builder4'].getPanel);
  // Panel4.Parent := self;

  Builder.Add('builder2', PanelBuilder.create);
  Director1.makeHeaderPanel(Builder['builder2']);
  Panel.Add('panel2', Builder['builder2'].getPanel);
  Panel['panel2'].Parent := Panel['panel4'];

  Builder.Add('builder3', PanelBuilder.create);
  Director1.makeFooterPanel(Builder['builder3']);
  Panel.Add('panel3', Builder['builder3'].getPanel);
  Panel['panel3'].Parent := Panel['panel4'];

  Builder1 := ButtonBuilder.create;
  Director1.makeNextButton(Builder1);
  Button1 := Builder1.getButton;
  Button1.Parent := Panel['panel3'];

  result := Panel['panel4'];
end;

end.
