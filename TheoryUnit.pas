unit TheoryUnit;

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
  Theory = class(TInterfacedObject, Builder)
  private
    panel: TPanel;
    headerPanel, footerPanel, mainPanel: TPanel;
    footerButtonBack: TButton;
    { TODO : }
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

constructor Theory.create(p: TPanel);
begin
  headerPanel := TPanel.create(nil);
  footerPanel := TPanel.create(nil);
  mainPanel := TPanel.create(nil);
  footerButtonBack := TButton.create(nil);
  { TODO : }
  render(p);
end;

procedure Theory.footer(Next: TNotifyEvent);
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

procedure Theory.free;
var
  p: TPanel;
  I: Integer;
begin
  { TODO : add ... }
  if assigned(footerButtonBack) then
    footerButtonBack.free;
  if assigned(headerPanel) then
    headerPanel.free;
  if assigned(footerPanel) then
    footerPanel.free;
  if assigned(mainPanel) then
    mainPanel.free;
end;

procedure Theory.header;
begin
  with headerPanel do
  begin
    Align := alTop;
    Alignment := taLeftJustify;
    BorderWidth := 10;
    BevelEdges := [beBottom];
    BevelKind := bkSoft;
    BevelOuter := bvNone;
    Caption := 'Theory header';
    Color := clWhite;
  end;
end;

procedure Theory.render(panel: TPanel);
begin
  headerPanel.Parent := panel;
  footerPanel.Parent := panel;
  mainPanel.Parent := panel;
  footerButtonBack.Parent := footerPanel;
  { TODO : }
end;

procedure Theory.main(Lab1: TNotifyEvent);
var
  p: TPanel;
  I: Integer;
begin
  with mainPanel do
  begin
    Align := alClient;
    BevelOuter := bvNone;
  end;
  { TODO : }
end;

end.
