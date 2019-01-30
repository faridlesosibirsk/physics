unit TheoryUnit;

interface

uses
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
    panel: TPanel;
    procedure toBack(Sender: TObject);
  published
    constructor create(AOwner: TForm; lab: Labs; Back: TNotifyEvent);
    procedure destroy;
  end;

implementation

{ Theory }

constructor Theory.create(AOwner: TForm; lab: Labs; Back: TNotifyEvent);
var
  count: integer;
begin
  panel := TPanel.create(nil);
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
  count:= lab.Theory.Count;
    with panel do
    begin
      Caption:=IntToStr(count);
    end;
end;

procedure Theory.destroy;
begin
  BackButton.Free;
  lab := nil;
end;

procedure Theory.toBack(Sender: TObject);
begin
  destroy;
  Back(nil);
end;

end.
