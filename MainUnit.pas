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
    Next: TNotifyEvent;
    /// <link>aggregation</link>
    Lab: Labs;
    procedure toLab1(Sender: TObject);
    procedure toContent(Sender: TObject);
    procedure Main;
    procedure footer;
    procedure header;
    procedure free;
  public
    function render: TPanel;
    procedure Content;
    procedure Lab1;
  published
    constructor create(Next: TNotifyEvent);
  end;

implementation

{ Panel }

procedure Main.Content;
begin

end;

constructor Main.create(Next: TNotifyEvent);
begin
  if assigned(self) then
    self.free;

  self.Next := Next;
  panel := TPanel.create(nil);
  panel.caption := 'Panel1';
  panel.Align := alClient;
  panel.BevelOuter := bvNone;

  headerPanel := TPanel.create(nil);
  footerPanel := TPanel.create(nil);
  mainPanel := TPanel.create(nil);
  NextButton := TButton.create(nil);
  { TODO : add ... }
  header;
  Main;
  footer;
end;

procedure Main.footer;
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
    caption := 'Next >';
    OnClick := self.Next;
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
  if assigned(panel) then
    panel.free;
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
    caption := 'Lab.title';
    Color := clWhite;
  end;
end;

procedure Main.Lab1;
begin

end;

function Main.render: TPanel;
begin
  headerPanel.Parent := panel;
  footerPanel.Parent := panel;
  mainPanel.Parent := panel;
  NextButton.Parent := footerPanel;
  { TODO : add ... }
  result := panel;
end;

procedure Main.toContent(Sender: TObject);
begin

end;

procedure Main.toLab1(Sender: TObject);
begin

end;

procedure Main.Main;
var
  p: TPanel;
  i: integer;
begin
  with mainPanel do
  begin
    Align := alLeft;
    BevelOuter := bvNone;
    caption := 'Content main';
  end;
  { TODO : add ... }
end;

end.
