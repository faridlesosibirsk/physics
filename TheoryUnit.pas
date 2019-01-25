unit TheoryUnit;

interface

uses
  LabsUnit {Labs} ,
  Lab1Unit {Lab1} ,
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
    procedure free;
  public
    function render: TPanel;
    //procedure setContent;
    //procedure setLab1;
    procedure sett(lab: Labs);
  published
    constructor create(Next: TNotifyEvent);
  end;

implementation

{ Panel }
{
procedure Theory.setContent;
begin
  Lab := Content.create;
end;
}
constructor Theory.create(Next: TNotifyEvent);
begin
  self.Next := Next;
end;

procedure Theory.free;
begin

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
{
procedure Theory.setLab1;
begin
  Lab := Lab1.create;
end;
}
procedure Theory.sett(lab: Labs);
begin
  self.Lab := Lab;
end;

function Theory.render: TPanel;
begin
  if assigned(self) then
    self.free;

  panel := TPanel.create(nil);
  panel.caption := '';
  panel.Align := alClient;
  panel.BevelOuter := bvNone;

  headerPanel := TPanel.create(nil);
  footerPanel := TPanel.create(nil);
  mainPanel := TPanel.create(nil);
  footerButtonBack := TButton.create(nil);

  with headerPanel do
  begin
    Align := alTop;
    Alignment := taLeftJustify;
    BorderWidth := 10;
    BevelEdges := [beBottom];
    BevelKind := bkSoft;
    BevelOuter := bvNone;
    caption := Lab.getTitle;
    Color := clWhite;
  end;
  with mainPanel do
  begin
    Align := alLeft;
    BevelOuter := bvNone;
  end;
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

  headerPanel.Parent := panel;
  footerPanel.Parent := panel;
  mainPanel.Parent := panel;
  footerButtonBack.Parent := footerPanel;

  result := panel;
end;

end.
