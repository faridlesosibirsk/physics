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
    Next: TNotifyEvent;
    /// <link>aggregation</link>
    Lab: Labs;
    procedure toLab1(Sender: TObject);
    procedure toContent(Sender: TObject);
    procedure header;
    procedure main;
    procedure footer;
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

procedure Theory.Content;
begin

end;

constructor Theory.create(Next: TNotifyEvent);
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
  footerButtonBack := TButton.create(nil);
  { TODO : }
  // render(p);
  header;
  main;
  footer;
end;

procedure Theory.footer;
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
    caption := '< Back';
    OnClick := self.Next;
  end;
end;

procedure Theory.free;
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
  if assigned(panel) then
    panel.free;
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
    caption := 'Theory header';
    Color := clWhite;
  end;
end;

procedure Theory.Lab1;
begin

end;

function Theory.render: TPanel;
begin
  headerPanel.Parent := panel;
  footerPanel.Parent := panel;
  mainPanel.Parent := panel;
  footerButtonBack.Parent := footerPanel;
  { TODO : }
  result := panel;
end;

procedure Theory.toContent(Sender: TObject);
begin

end;

procedure Theory.toLab1(Sender: TObject);
begin

end;

procedure Theory.main;
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
