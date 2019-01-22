unit Lab1BuilderUnit;

interface

uses
  System.Generics.Collections {TDictionary},
  Lab1Unit {Lab1} ,
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
    /// <link>aggregation</link>
    Lab11: Lab1;
  public
    procedure free;
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

procedure Lab1Builder.free;
begin
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
    Caption := Lab11.title+' '+Lab1.caption;
    Color := clWhite;
  end;
end;

procedure Lab1Builder.install(WinControl: TWinControl);
begin
  headerPanel.Parent := WinControl;
  footerPanel.Parent := WinControl;
  mainPanel.Parent := WinControl;
  footerButtonBack.Parent := footerPanel;
end;

procedure Lab1Builder.main(Lab1: TNotifyEvent);
begin
  with mainPanel do
  begin
    Align := alClient;
    BevelOuter := bvNone;
  end;

end;

procedure Lab1Builder.nav;
begin

end;

procedure Lab1Builder.section;
begin

end;

end.
