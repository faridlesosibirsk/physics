unit DirectorUnit;

interface

uses
  LaboratoriesUnit {Laboratories} ,
  LaboratoryUnit,
  Graphics {TColor} ,
  PanelUnit {Panel} ,
  ButtonUnit {Button} ,
  ScrollBoxUnit {ScrollBox} ,
  SplitterUnit {Splitter} ,
  Vcl.Controls {TAlign} ,
  Vcl.ExtCtrls {TPanel} ,
  BuilderUnit {Builder} ,
  PhisicsUnit {Phisics} ,
  System.Generics.Collections {TDictionary};

type

  Director = class(TInterfacedObject, Phisics)
  private
    /// <link>aggregation</link>
    // Builder1: Builder;
    Builder1: TDictionary<String, Builder>;
    Panel1: TPanel;
    /// <link>aggregation</link>
    Laboratory1: Laboratories;
    procedure AssignedPanel1;
    procedure Lab1Click(Sender: TObject);
    procedure Lab2Click(Sender: TObject);
  public
    procedure makeLab2;
    procedure makeLab1;
    procedure makeContext;
    function getPanel: TPanel;
    procedure BuildHeader(caption1: String);
    procedure BuildBottom(caption1: String);
    procedure BuildContent(db: TDictionary<String, String>);
  published
    constructor create;
  end;

implementation

{ Director }

procedure Director.AssignedPanel1;
begin
  if not assigned(Panel1) then
  begin
    Panel1 := TPanel.create(nil);
    Panel1.caption := 'Panel1';
    Panel1.Align := alClient;
    Panel1.BevelOuter := bvNone;
  end;
end;

procedure Director.Lab1Click(Sender: TObject);
var
  Value: Builder;
begin
  for Value in Builder1.Values do
    if assigned(Value) then Value.parent(nil);
  Builder1.Clear;

  makeLab2;
end;

procedure Director.BuildBottom(caption1: String);
begin
  AssignedPanel1;
  Builder1.AddOrSetValue('Bottom', Panel.create);
  with Builder1['Bottom'] do
  begin
    reset;
    Align(alBottom);
    Height(60);
    caption(caption1);
    onClick(Lab1Click);
    BevelOuter(bvNone);
    BevelKind(bkTile);
    BevelEdges([beTop]);
    parent(Panel1);
  end;
end;

procedure Director.BuildContent(db: TDictionary<String, String>);
var
  p: Panel;
  Value: string;
begin
  AssignedPanel1;

  p:=Panel.create;
  Builder1.AddOrSetValue('Content', p);
  with Builder1['Content'] do
  begin
    reset;
    Align(alLeft);
    BevelOuter(bvNone);
    Width(300);
    parent(Panel1);
  end;

  Builder1.AddOrSetValue('Splitter', Splitter.create);
  with Builder1['Splitter'] do
  begin
    reset;
    Left(300);
    parent(Panel1);
  end;

  Builder1.AddOrSetValue('ScrollBox', ScrollBox.create);
  with Builder1['ScrollBox'] do
  begin
    reset;
    Align(alClient);
    parent(p.getResult);
  end;
end;

procedure Director.BuildHeader(caption1: String);
begin
  AssignedPanel1;
  Builder1.AddOrSetValue('Header', Panel.create);
  with Builder1['Header'] do
  begin
    reset;
    Align(alTop);
    Height(60);
    caption(caption1);
    onClick(Lab2Click);
    BevelOuter(bvNone);
    Color(clWhite);
    BevelKind(bkSoft);
    BevelEdges([beBottom]);
    parent(Panel1);
  end;
end;

constructor Director.create;
begin
  Laboratory1 := Laboratory.create;
  Builder1 := TDictionary<String, Builder>.create;
  //makeLab1;
  makeContext;
end;

function Director.getPanel: TPanel;
begin
  AssignedPanel1;
  result := Panel1;
end;

procedure Director.makeContext;
begin
  Laboratory1.setContent;
  BuildHeader(Laboratory1.db['title']);
  BuildContent(Laboratory1.db);
  BuildBottom(Laboratory1.db['title']);
end;

procedure Director.makeLab1;
begin
  Laboratory1.setLab1;
  BuildHeader(Laboratory1.db['title']);
  BuildBottom(Laboratory1.db['title']);
end;

procedure Director.makeLab2;
begin
  Laboratory1.setLab2;
  BuildHeader(Laboratory1.db['title']);
  BuildBottom(Laboratory1.db['title']);
end;

procedure Director.Lab2Click(Sender: TObject);
var
  Value: Builder;
begin
  for Value in Builder1.Values do
    if assigned(Value) then Value.parent(nil);
  Builder1.Clear;
  makeLab1;
end;

end.
