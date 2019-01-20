unit DirectorUnit;

interface

uses
  LaboratoryUnit,
  Graphics {TColor} ,
  PanelUnit {Panel} ,
  ButtonUnit {Button} ,
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
    Laboratory1: Laboratory;
    procedure AssignedPanel1;
    procedure Lab1Click(Sender: TObject);
    procedure Lab2Click(Sender: TObject);
  public
    procedure makeLab2;
    procedure makeLab1;
    function getPanel: TPanel;
    procedure BuildHeader(caption1: String);
    procedure BuildBottom(caption1: String);
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
    Value.free;
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
  makeLab1;
end;

function Director.getPanel: TPanel;
begin
  AssignedPanel1;
  result := Panel1;
end;

procedure Director.makeLab1;
begin
  Laboratory1.setLab1;
  BuildHeader(Laboratory1.getCaption);
  BuildBottom(Laboratory1.getCaption);
end;

procedure Director.makeLab2;
begin
  Laboratory1.setLab2;
  BuildHeader(Laboratory1.getCaption);
  BuildBottom(Laboratory1.getCaption);
end;

procedure Director.Lab2Click(Sender: TObject);
var
  Value: Builder;
begin
  for Value in Builder1.Values do
    Value.free;
  Builder1.Clear;
  makeLab1;
end;

end.
