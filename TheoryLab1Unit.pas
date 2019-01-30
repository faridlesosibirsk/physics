unit TheoryLab1Unit;

interface

uses
  Vcl.ExtCtrls {TPanel} ,
  AccessConnectionUnit,
  ConnectionUnit,
  Vcl.StdCtrls {TButton} ,
  classes {TNotifyEvent} ,
  Vcl.Forms,
  Lab1Unit;

type
  TheoryLab1 = class(Lab1)
  private
    BackButton: TButton;
    TheoryButton: TButton;
    panel: TPanel;
  published
    constructor create(AOwner: TForm; Open, toLab1Test: TNotifyEvent);
    procedure clear; override;
  end;

implementation

{ TheoryLab1 }

constructor TheoryLab1.create(AOwner: TForm; Open, toLab1Test: TNotifyEvent);
begin
  Connection1 := AccessConnection.create;
  AOwner.Caption := 'TheoryLab1';
  BackButton := TButton.create(AOwner);
  with BackButton do
  begin
    Parent := AOwner;
    Caption := '< Open';
    OnClick := Open;
  end;
  TheoryButton := TButton.create(AOwner);
  with TheoryButton do
  begin
    Parent := AOwner;
    Caption := 'Test >';
    Left := 200;
    OnClick := toLab1Test;
  end;
  panel := TPanel.create(nil);
  with panel do
  begin
    Parent := AOwner;
    // Caption := Connection1.theoryLab1.First;
    Caption := Connection1.TheoryLab1.Items[1];
    Left := 300;
    Top := 300;
  end;
end;

procedure TheoryLab1.clear;
begin
  inherited;
  panel.Parent := nil;
  BackButton.Parent := nil;
  TheoryButton.Parent := nil;
end;

end.
