unit MethodLab1Unit;

interface

uses
  Vcl.StdCtrls {TButton} ,
  classes {TNotifyEvent} ,
  Vcl.Forms,
  Lab1Unit;

type
  MethodLab1 = class(Lab1)
  private
    BackButton: TButton;
    TheoryButton: TButton;
  published
    constructor create(AOwner: TForm; toLab1Test, toLab1Report: TNotifyEvent);
    procedure clear; override;
  end;

implementation

{ MethodLab1 }

constructor MethodLab1.create(AOwner: TForm; toLab1Test, toLab1Report: TNotifyEvent);
begin
  AOwner.Caption := 'MethodLab1';
  BackButton:= TButton.Create(AOwner);
  with BackButton do begin
    Parent:=AOwner;
    Caption:='< Test';
    OnClick:=toLab1Test;
  end;
  TheoryButton:= TButton.Create(AOwner);
  with TheoryButton do begin
    Parent:=AOwner;
    Caption:='Report >';
    Left:=100;
    OnClick:=toLab1Report;
  end;
end;

procedure MethodLab1.clear;
begin
  inherited;
  BackButton.Parent:=nil;
  TheoryButton.Parent:=nil;
end;

end.
