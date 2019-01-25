unit MainUnit;

interface

uses
  System.Generics.Collections {TDictionary} ,
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
  Main = class(TInterfacedObject, Builder)
  private
    panel: TPanel;
    headerPanel, footerPanel, mainPanel: TPanel;
    NextButton: TButton;
    leftPanel: TDictionary<string, TPanel>;
    Next: TNotifyEvent;
    /// <link>aggregation</link>
    Lab: Labs;
    procedure free;
  public
    function render: TPanel;
    procedure setContent;
    procedure setLab1;
  published
    constructor create(Next: TNotifyEvent);
  end;

implementation

{ Panel }

procedure Main.setContent;
begin
  Lab := Content.create;
end;

constructor Main.create(Next: TNotifyEvent);
begin
  self.Next := Next;
end;

procedure Main.free;
begin
  { TODO : }
  if assigned(leftPanel) then
    leftPanel.free;
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

procedure Main.setLab1;
begin
  Lab := Lab1.create;
end;

function Main.render: TPanel;
var
  value1, value3: TPanel;
  Keys1, Keys2: String;
begin
  if assigned(self) then
    self.free;

  panel := TPanel.create(nil);
  panel.caption := 'Panel1mm';
  panel.Align := alClient;
  panel.BevelOuter := bvNone;

  headerPanel := TPanel.create(nil);
  footerPanel := TPanel.create(nil);
  mainPanel := TPanel.create(nil);
  NextButton := TButton.create(nil);
  leftPanel := TDictionary<string, TPanel>.create;
  for Keys2 in Lab.getText.Keys do
  begin
    leftPanel.Add(Keys2, TPanel.create(nil));
  end;
  { TODO : }

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
    caption := 'Content main';
  end;
  for Keys1 in leftPanel.Keys do
  begin
    leftPanel[Keys1].Align := alTop;
    leftPanel[Keys1].Caption:=Lab.getText[Keys1];
  end;
  with footerPanel do
  begin
    Align := alBottom;
    BevelEdges := [beTop];
    BevelKind := bkTile;
    BevelOuter := bvNone;
  end;
  {
  with NextButton do
  begin
    Top := 8;
    caption := 'Next >';
    OnClick := self.Next;
  end;
  }
  headerPanel.Parent := panel;
  footerPanel.Parent := panel;
  mainPanel.Parent := panel;
  NextButton.Parent := footerPanel;
  for value1 in leftPanel.Values do
  begin
    value1.Parent := mainPanel;
  end;

  result := panel;
end;

end.
