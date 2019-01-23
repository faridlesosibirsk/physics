unit ContentBuilderUnit;

interface

uses
  LabsUnit {Labs} ,
  System.Generics.Collections {TDictionary} ,
  Vcl.Forms {ScrollBox1} ,
  ContentUnit {Content} ,
  classes {TNotifyEvent} ,
  Graphics {TColor} ,
  Vcl.Controls {TWinControl} ,
  Vcl.ExtCtrls {TPanel} ,
  Vcl.StdCtrls {TButton} ,
  BuilderUnit {Builder};

type
  ContentBuilder = class(TInterfacedObject, Builder)
  private
    headerPanel, footerPanel, mainPanel: TPanel;
    ScrollBox1: TScrollBox;
    item: TList<TPanel>;
    { TODO : add ... }
    /// <link>aggregation</link>
    Content1: Content;
  public
    procedure free(model: Labs);
    procedure install(WinControl: TWinControl);
    procedure header;
    procedure main(Lab1: TNotifyEvent);
    procedure nav;
    procedure section;
    procedure aside;
    procedure address;
    procedure footer(Next: TNotifyEvent);
  published
    constructor create;
  end;

implementation

{ Panel }

procedure ContentBuilder.address;
begin

end;

procedure ContentBuilder.aside;
begin

end;

constructor ContentBuilder.create;
begin
  headerPanel := TPanel.create(nil);
  footerPanel := TPanel.create(nil);
  mainPanel := TPanel.create(nil);
  ScrollBox1 := TScrollBox.create(nil);
  item := TList<TPanel>.create;
  { TODO : add ... }
end;

procedure ContentBuilder.footer(Next: TNotifyEvent);
begin
  with footerPanel do
  begin
    Align := alBottom;
    BevelEdges := [beTop];
    BevelKind := bkTile;
    BevelOuter := bvNone;
  end;
end;

procedure ContentBuilder.free(model: Labs);
begin
  { TODO : add ... }
  if assigned(item) then
    item.free;
  if assigned(ScrollBox1) then
    ScrollBox1.free;
  if assigned(headerPanel) then
    headerPanel.free;
  if assigned(footerPanel) then
    footerPanel.free;
  if assigned(mainPanel) then
    mainPanel.free;
end;

procedure ContentBuilder.header;
begin
  with headerPanel do
  begin
    Align := alTop;
    Alignment := taLeftJustify;
    BorderWidth := 10;
    BevelEdges := [beBottom];
    BevelKind := bkSoft;
    BevelOuter := bvNone;
    Caption := Content.title;
    Color := clWhite;
  end;
end;

procedure ContentBuilder.install(WinControl: TWinControl);
var
  p: TPanel;
begin
  headerPanel.Parent := WinControl;
  footerPanel.Parent := WinControl;
  mainPanel.Parent := WinControl;
  ScrollBox1.Parent := mainPanel;
  for p in item do
    p.Parent := ScrollBox1;
  { TODO : add ... }
end;

procedure ContentBuilder.main(Lab1: TNotifyEvent);
var
  p: TPanel;
  i: integer;
begin
  with mainPanel do
  begin
    Align := alLeft;
    BevelOuter := bvNone;
    Caption := 'Content main';
  end;
  with ScrollBox1 do
  begin
    Align := alClient;
    BorderStyle := bsNone;
  end;
  for i := 1 to 14 do
    item.Add(TPanel.create(nil));
  i := 15;
  for p in item do
    with p do
    begin
      i:=i-1;
      Align := alTop;
      Caption := Content.item[i];
      Alignment := taLeftJustify;
      if i=2 then
        OnClick:=Lab1;
      BorderWidth := 10;
      BevelOuter := bvNone;
    end;
  { TODO : add ... }
end;

procedure ContentBuilder.nav;
begin

end;

procedure ContentBuilder.section;
begin

end;

end.
