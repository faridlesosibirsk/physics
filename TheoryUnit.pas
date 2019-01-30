unit TheoryUnit;

interface

uses
  System.Generics.Collections {TDictionary} ,
  SysUtils {IntToStr} ,
  Vcl.ExtCtrls {TPanel} ,
  classes {TNotifyEvent} ,
  Vcl.Controls {TWinControl} ,
  Vcl.StdCtrls {TButton} ,
  LabsUnit,
  Vcl.Forms,
  PhisicsUnit;

type
  Theory = class(TInterfacedObject, Phisics)
  private
    BackButton: TButton;
    /// <link>aggregation</link>
    lab: Labs;
    AOwner: TForm;
    Back: TNotifyEvent;
    panel: TList<TPanel>;
    procedure toBack(Sender: TObject);
  published
    constructor create(AOwner: TForm; lab: Labs; Back: TNotifyEvent);
    procedure destroy;
  end;

implementation

{ Theory }

constructor Theory.create(AOwner: TForm; lab: Labs; Back: TNotifyEvent);
var
  i: integer;
  s: string;
begin
  panel := TList<TPanel>.create;
  BackButton := TButton.create(nil);
  self.lab := lab;
  self.AOwner := AOwner;
  self.Back := Back;
  with AOwner do
  begin
    Caption := lab.Caption;
  end;
  with BackButton do
  begin
    Caption := '< Back';
    Anchors := [akRight, akTop];
    Left := 500;
    Top := 8;
    Parent := AOwner;
    OnClick := toBack;
  end;
  i:=0;
  for s in lab.Theory do
  begin
    panel.Add(TPanel.create(AOwner));
    panel.Last.Caption := s;
    panel.Last.Parent := AOwner;
    panel.Last.Top := 41 * i;
    i:=i+1;
  end;

end;

procedure Theory.destroy;
var
  p: TPanel;
begin
  BackButton.Free;
  // panel.Free;
  for p in panel do
  begin
    p.Parent := nil;
    p.Free;
  end;
  panel.Free;
  lab := nil;
end;

procedure Theory.toBack(Sender: TObject);
begin
  destroy;
  Back(nil);
end;

end.
