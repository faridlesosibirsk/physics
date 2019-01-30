unit TestLab1Unit;

interface

uses
  Vcl.StdCtrls {TButton} ,
  classes {TNotifyEvent} ,
  Vcl.Forms,
  Lab1Unit;

type
  TestLab1 = class(Lab1)
  private
    BackButton: TButton;
    TheoryButton: TButton;
  published
    constructor create(AOwner: TForm; toLab1Theory, toLab1Method: TNotifyEvent);
    procedure clear; override;
  end;

implementation

{ TestLab1 }

constructor TestLab1.create(AOwner: TForm;
  toLab1Theory, toLab1Method: TNotifyEvent);
begin
  AOwner.Caption := 'TestLab1';
  BackButton:= TButton.Create(AOwner);
  with BackButton do begin
    Parent:=AOwner;
    Caption:='< Theory';
    OnClick:=toLab1Theory;
  end;
  TheoryButton:= TButton.Create(AOwner);
  with TheoryButton do begin
    Parent:=AOwner;
    Caption:='Method >';
    Left:=100;
    OnClick:=toLab1Method;
  end;
end;

procedure TestLab1.clear;
begin
  inherited;
  BackButton.Parent:=nil;
  TheoryButton.Parent:=nil;
end;

end.
