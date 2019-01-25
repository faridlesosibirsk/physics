unit TestUnit;

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

  Test = class(TInterfacedObject, Builder)
  private
  public
    function get: TPanel;
  end;

implementation

{ Test }

function Test.get: TPanel;
var
  panel: TPanel;
  headerPanel, footerPanel, mainPanel: TPanel;
  NextButton: TButton;
begin
  panel := TPanel.Create(nil);
  panel.caption := 'Panel1';
  panel.Align := alClient;
  panel.BevelOuter := bvNone;

  headerPanel := TPanel.Create(nil);
  footerPanel := TPanel.Create(nil);
  mainPanel := TPanel.Create(nil);
  NextButton := TButton.Create(nil);

  headerPanel.Parent := panel;
  footerPanel.Parent := panel;
  mainPanel.Parent := panel;
  NextButton.Parent := footerPanel;

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

  with mainPanel do
  begin
    Align := alLeft;
    BevelOuter := bvNone;
    caption := 'Content main';
  end;

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
  end;

  result := panel;
end;

end.
