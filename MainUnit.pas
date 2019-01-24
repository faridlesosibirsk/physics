unit MainUnit;

interface

uses
  LabsUnit {Labs} ,
  ContentUnit {Content} ,
  classes {TNotifyEvent} ,
  Graphics {TColor} ,
  Vcl.Controls {TWinControl} ,
  Vcl.ExtCtrls {TPanel} ,
  Vcl.StdCtrls {TButton} ,
  BuilderUnit {Builder};

type
  Main = class(TInterfacedObject, Builder)
  private
    panel: TPanel;
    headerPanel, footerPanel, mainPanel: TPanel;
    NextButton: TButton;
    { TODO : add ... }
    procedure render(panel: TPanel);
  public
    procedure free;
    procedure header;
    procedure main(Lab1: TNotifyEvent);
    procedure footer(Next: TNotifyEvent);
  published
    constructor create(p: TPanel);
  end;

implementation

{ Panel }

constructor Main.create(p: TPanel);
begin
  headerPanel := TPanel.create(nil);
  footerPanel := TPanel.create(nil);
  mainPanel := TPanel.create(nil);
  NextButton := TButton.create(nil);
  { TODO : add ... }
  render(p);
end;

procedure Main.footer(Next: TNotifyEvent);
begin
  with footerPanel do
  begin
    Align := alBottom;
    BevelEdges := [beTop];
    BevelKind := bkTile;
    BevelOuter := bvNone;
  end;
  with NextButton do
  begin
    Top := 8;
    Caption := 'Next >';
    OnClick:=Next;
  end;
end;

procedure Main.free;
begin
  { TODO : add ... }
  if assigned(NextButton) then
    NextButton.free;
  if assigned(headerPanel) then
    headerPanel.free;
  if assigned(footerPanel) then
    footerPanel.free;
  if assigned(mainPanel) then
    mainPanel.free;
end;

procedure Main.header;
begin
  with headerPanel do
  begin
    Align := alTop;
    Alignment := taLeftJustify;
    BorderWidth := 10;
    BevelEdges := [beBottom];
    BevelKind := bkSoft;
    BevelOuter := bvNone;
    Caption := 'Lab.title';
    Color := clWhite;
  end;
end;

procedure Main.render(panel: TPanel);
begin
  headerPanel.Parent := panel;
  footerPanel.Parent := panel;
  mainPanel.Parent := panel;
  NextButton.Parent := footerPanel;
  { TODO : add ... }
end;

procedure Main.main(Lab1: TNotifyEvent);
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
  { TODO : add ... }
end;

end.
