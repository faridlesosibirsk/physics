unit TheoryLab1Unit;

interface

uses
  SysUtils {IntToStr} ,
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
    AOwner: TForm;
    OpenButton: TButton;
    TheoryButton: TButton;
    panel: TPanel;
    NextButton: TButton;
    BackButton: TButton;
    i: integer;
    Count: integer;
    procedure NextPanel(Sender: TObject);
    procedure BackPanel(Sender: TObject);
  published
    constructor create(AOwner: TForm; Open, toLab1Test: TNotifyEvent);
    procedure clear; override;
  end;

implementation

{ TheoryLab1 }

constructor TheoryLab1.create(AOwner: TForm; Open, toLab1Test: TNotifyEvent);
begin
  Connection1 := AccessConnection.create;
  Count := Connection1.TheoryLab1.Count;
  self.AOwner := AOwner;
  AOwner.Caption := 'TheoryLab1';
  OpenButton := TButton.create(AOwner);
  with OpenButton do
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

  NextButton := TButton.create(AOwner);
  with NextButton do
  begin
    Left := 300;
    Top := 400;
    Caption := 'Далее';
    OnClick := NextPanel;
  end;
  BackButton := TButton.create(AOwner);
  with BackButton do
  begin
    Left := 200;
    Top := 400;
    Caption := 'Назад';
    OnClick := BackPanel;
  end;
  i := -1;
  NextPanel(nil);
end;

procedure TheoryLab1.NextPanel(Sender: TObject);
begin
  panel := TPanel.create(nil);
  with panel do
  begin
    Parent := AOwner;
    i := i + 1;
    Caption := Connection1.TheoryLab1.Items[i];
    Left := 300;
    Top := 300;
    if i < Count - 1 then
      NextButton.Parent := AOwner
    else
      NextButton.Parent := nil;
    if i > 0 then
      BackButton.Parent := AOwner
    else
      BackButton.Parent := nil;
  end;
end;

procedure TheoryLab1.BackPanel(Sender: TObject);
begin
  panel := TPanel.create(nil);
  with panel do
  begin
    Parent := AOwner;
    i := i - 1;
    Caption := Connection1.TheoryLab1.Items[i];
    Left := 300;
    Top := 300;
    if i < 1 then
      BackButton.Parent := nil
    else
      BackButton.Parent := AOwner;
    if i > Count - 2 then
      NextButton.Parent := nil
    else
      NextButton.Parent := AOwner;
  end;
end;

procedure TheoryLab1.clear;
begin
  inherited;
  NextButton.Parent := nil;
  panel.Parent := nil;
  OpenButton.Parent := nil;
  TheoryButton.Parent := nil;
end;

end.
