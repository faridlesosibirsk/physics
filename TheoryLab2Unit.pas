unit TheoryLab2Unit;
interface
uses
  System.Generics.Collections {TDictionary} ,
  SysUtils {IntToStr} ,
  Vcl.ExtCtrls {TPanel} ,
  AccessConnectionUnit,
  ConnectionUnit,
  Vcl.StdCtrls {TButton} ,
  classes {TNotifyEvent} ,
  Vcl.Forms,
  Laboratory2Unit;

type
  TheoryLab2 = class(TInterfacedObject, Laboratory2)
  private
    Notify: TNotifyEvent;
    /// <link>aggregation</link>
    Connection1: Connection;
    AOwner: TForm;
    OpenButton: TButton;
    TestButton: TButton;
    panel: TPanel;
    NextButton: TButton;
    BackButton: TButton;
    i: integer;
    Count: integer;
    procedure NextPanel(Sender: TObject);
    procedure BackPanel(Sender: TObject);
  published
    constructor create(AOwner: TForm; Open, toLab2Test: TNotifyEvent);
    procedure reset;
  end;

implementation

{ TheoryLab1 }

constructor TheoryLab2.create(AOwner: TForm; Open, toLab2Test: TNotifyEvent);
begin
  Connection1 := AccessConnection.create;
  Count := Connection1.TheoryLab1.Count;
  self.AOwner := AOwner;
  //AOwner.Caption := Connection1.getLab('theory');
  AOwner.Caption := 'Краткая теория';
  OpenButton := TButton.create(AOwner);
  with OpenButton do
  begin
    Parent := AOwner;
    Caption := '< Exit';
    OnClick := Open;
  end;
  TestButton := TButton.create(AOwner);
  with TestButton do
  begin
    Parent := AOwner;
    Caption := 'Test >';
    Left := 200;
    OnClick := toLab2Test;
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

procedure TheoryLab2.NextPanel(Sender: TObject);
begin
  if not assigned(panel) then
    panel := TPanel.create(nil);
  with panel do
  begin
    Parent := AOwner;
    i := i + 1;
    Caption := Connection1.TheoryLab2.Items[i];
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

procedure TheoryLab2.BackPanel(Sender: TObject);
begin
  if not assigned(panel) then
    panel := TPanel.create(nil);
  with panel do
  begin
    Parent := AOwner;
    i := i - 1;
    Caption := Connection1.TheoryLab2.Items[i];
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

procedure TheoryLab2.reset;
begin
  BackButton.Parent := nil;
  NextButton.Parent := nil;
  panel.Parent := nil;
  OpenButton.Parent := nil;
  TestButton.Parent := nil;
end;

end.
