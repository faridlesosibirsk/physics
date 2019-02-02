unit TestLab2Unit;
interface
uses
  ConnectionUnit,
  Vcl.ExtCtrls {TPanel} ,
  AccessConnectionUnit,
  Vcl.StdCtrls {TButton} ,
  classes {TNotifyEvent} ,
  Vcl.Forms,
  Laboratory2Unit;

type
  TestLab2 = class(TInterfacedObject, Laboratory2)
  private
    Notify: TNotifyEvent;
    /// <link>aggregation</link>
    Connection1: Connection;
    AOwner: TForm;
    TheoryButton: TButton;
    MethodButton: TButton;
    Count: integer;
    i: integer;
    NextButton: TButton;
    BackButton: TButton;
    panel: TPanel;
    procedure NextPanel(Sender: TObject);
    procedure BackPanel(Sender: TObject);
  published
    constructor create(AOwner: TForm; toLab2Theory, toLab2Method: TNotifyEvent);
    procedure reset;
  end;

implementation

{ TestLab1 }

constructor TestLab2.create(AOwner: TForm;
  toLab2Theory, toLab2Method: TNotifyEvent);
begin
  Connection1 := AccessConnection.create;
  Count := Connection1.TestLab1.Count;
  self.AOwner := AOwner;
  AOwner.Caption := 'Вопросы и задания для самоконтроля.';
  TheoryButton:= TButton.Create(AOwner);
  with TheoryButton do begin
    Parent:=AOwner;
    Caption:='< Theory';
    OnClick:=toLab2Theory;
  end;
  MethodButton:= TButton.Create(AOwner);
  with MethodButton do begin
    Parent:=AOwner;
    Caption:='Method >';
    Left:=100;
    OnClick:=toLab2Method;
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

procedure TestLab2.BackPanel(Sender: TObject);
begin
  if not assigned(panel) then
    panel := TPanel.create(nil);
  with panel do
  begin
    Parent := AOwner;
    i := i - 1;
    Caption := Connection1.TestLab2.Items[i];
    Left := 300;
    Top := 300;
    Width:=500;
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

procedure TestLab2.NextPanel(Sender: TObject);
begin
  if not assigned(panel) then
    panel := TPanel.create(nil);
  with panel do
  begin
    Parent := AOwner;
    i := i + 1;
    Caption := Connection1.TestLab2.Items[i];
    Left := 300;
    Top := 300;
    Width:=500;
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

procedure TestLab2.reset;
begin
  TheoryButton.Parent:=nil;
  MethodButton.Parent:=nil;
  BackButton.Parent := nil;
  NextButton.Parent := nil;
  panel.Parent := nil;
end;

end.
