unit ContentUnit;

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
  Content = class(TInterfacedObject, Builder)
  private
    headerPanel, footerPanel, mainPanel: TPanel;
    NextButton: TButton;
    { TODO : add ... }
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

constructor Content.create;
begin
  headerPanel := TPanel.create(nil);
  footerPanel := TPanel.create(nil);
  mainPanel := TPanel.create(nil);
  NextButton := TButton.create(nil);
  { TODO : add ... }
end;

procedure Content.footer(Next: TNotifyEvent);
begin
  with footerPanel do
  begin
    Align := alBottom;
    BevelEdges := [beTop];
    BevelKind := bkTile;
    BevelOuter := bvNone;
  end;
end;

procedure Content.free;
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

procedure Content.header;
begin
  with headerPanel do
  begin
    Align := alTop;
    Alignment := taLeftJustify;
    BorderWidth := 10;
    BevelEdges := [beBottom];
    BevelKind := bkSoft;
    BevelOuter := bvNone;
    Caption := 'Content header';
    Color := clWhite;
  end;
end;

procedure Content.install(WinControl: TWinControl);
var
  p: TPanel;
begin
  headerPanel.Parent := WinControl;
  footerPanel.Parent := WinControl;
  mainPanel.Parent := WinControl;
  NextButton.Parent := footerPanel;
  { TODO : add ... }
end;

procedure Content.main(Lab1: TNotifyEvent);
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
  with NextButton do
  begin
    Caption := 'Next >';
    OnClick:=Lab1;
  end;
  { TODO : add ... }
end;

end.
