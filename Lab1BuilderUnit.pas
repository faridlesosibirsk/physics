unit Lab1BuilderUnit;

interface

uses
  LabsUnit {Labs} ,
  System.Generics.Collections {TDictionary},
  Lab1Unit {Lab1} ,
  Vcl.Forms {ScrollBox1} ,
  classes {TNotifyEvent} ,
  Graphics {TColor} ,
  Vcl.Controls {TWinControl} ,
  Vcl.ExtCtrls {TPanel} ,
  Vcl.StdCtrls {TButton} ,
  BuilderUnit {Builder};

type
  Lab1Builder = class(TInterfacedObject, Builder)
  private
    headerPanel, footerPanel, mainPanel: TPanel;
    footerButtonBack: TButton;
    ScrollBox1: TScrollBox;
    item: TList<TPanel>;
    /// <link>aggregation</link>
    Lab11: Lab1;
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

procedure Lab1Builder.address;
begin

end;

procedure Lab1Builder.aside;
begin

end;

constructor Lab1Builder.create;
var
  l: TList<String>;
  I: Integer;
begin
  l:= TList<String>.create;
  for I := 1 to 2 do
    l.Add(Lab1.item[I]);
  headerPanel := TPanel.create(nil);
  footerPanel := TPanel.create(nil);
  mainPanel := TPanel.create(nil);
  footerButtonBack := TButton.create(nil);
  ScrollBox1 := TScrollBox.create(nil);
  item := TList<TPanel>.create;
end;

procedure Lab1Builder.footer(Next: TNotifyEvent);
begin
  with footerPanel do
  begin
    Align := alBottom;
    BevelEdges := [beTop];
    BevelKind := bkTile;
    BevelOuter := bvNone;
  end;
  with footerButtonBack do
  begin
    Top := 8;
    Caption := '< Back';
    OnClick := Next;
  end;
end;

procedure Lab1Builder.free(model: Labs);
begin
  { TODO : add ... }
  if assigned(item) then
    item.free;
  if assigned(ScrollBox1) then
    ScrollBox1.free;
  if assigned(footerButtonBack) then
    footerButtonBack.free;
  if assigned(headerPanel) then
    headerPanel.free;
  if assigned(footerPanel) then
    footerPanel.free;
  if assigned(mainPanel) then
    mainPanel.free;
end;

procedure Lab1Builder.header;
begin
  with headerPanel do
  begin
    Align := alTop;
    Alignment := taLeftJustify;
    BorderWidth := 10;
    BevelEdges := [beBottom];
    BevelKind := bkSoft;
    BevelOuter := bvNone;
    Caption := Lab11.title+' '+Lab11.caption;
    Color := clWhite;
  end;
end;

procedure Lab1Builder.install(WinControl: TWinControl);
var
  p: TPanel;
begin
  headerPanel.Parent := WinControl;
  footerPanel.Parent := WinControl;
  mainPanel.Parent := WinControl;
  footerButtonBack.Parent := footerPanel;
  ScrollBox1.Parent := mainPanel;
  for p in item do
    p.Parent := ScrollBox1;
end;

procedure Lab1Builder.main(Lab1: TNotifyEvent);
var
  p: TPanel;
  i: integer;
begin
  with mainPanel do
  begin
    Align := alClient;
    BevelOuter := bvNone;
  end;
  with ScrollBox1 do
  begin
    Align := alClient;
    BorderStyle := bsNone;
    Width:=300;
    HorzScrollBar.Visible:=true;
    VertScrollBar.Visible:=true;
  end;
  for i := 1 to 44 do
    item.Add(TPanel.create(nil));
  i := 44+1;
  for p in item do
    with p do
    begin
      i:=i-1;
      Align := alTop;
      Caption := Lab11.item[i];
      Alignment := taLeftJustify;
      if i=2 then
        OnClick:=Lab1;
      BorderWidth := 10;
      BevelOuter := bvNone;
    end;
  { TODO : add ... }
end;

procedure Lab1Builder.nav;
begin

end;

procedure Lab1Builder.section;
begin

end;

end.
