unit TheoryUnit;

interface

uses
  System.Generics.Collections {TDictionary} ,
  Vcl.Forms {ScrollBox1} ,
  classes {TNotifyEvent} ,
  Graphics {TColor} ,
  Vcl.Controls {TWinControl} ,
  Vcl.ExtCtrls {TPanel} ,
  Vcl.StdCtrls {TButton} ,
  BuilderUnit {Builder};

type
  Theory = class(TInterfacedObject, Builder)
  private
    headerPanel, footerPanel, mainPanel: TPanel;
    footerButtonBack: TButton;
    { TODO : }
  public
    procedure free;
    procedure install(WinControl: TWinControl);
    procedure header;
    procedure main(Lab1: TNotifyEvent);
    procedure footer(Next: TNotifyEvent);
  published
    constructor create;
  end;

implementation

{ Panel }

constructor Theory.create;
begin
  headerPanel := TPanel.create(nil);
  footerPanel := TPanel.create(nil);
  mainPanel := TPanel.create(nil);
  footerButtonBack := TButton.create(nil);
  { TODO : }
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

procedure Theory.install(WinControl: TWinControl);
begin
  headerPanel.Parent := WinControl;
  footerPanel.Parent := WinControl;
  mainPanel.Parent := WinControl;
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
