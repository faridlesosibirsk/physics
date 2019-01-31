unit MethodLab1Unit;

interface

uses
  Vcl.ValEdit {TValueListEditor} ,
  Vcl.ComCtrls {TTrackBar} ,
  Graphics {TColor} ,
  Vcl.Controls {TWinControl} ,
  Vcl.ExtCtrls {TShape TImage} ,
  Vcl.StdCtrls {TButton} ,
  classes {TNotifyEvent} ,
  Vcl.Forms,
  Lab1Unit;

type
  MethodLab1 = class(Lab1)
  private
    BackButton: TButton;
    TheoryButton: TButton;
    StartButton: TButton;
    Shape1: TShape;
    Image1: TImage;
    SpeedBar: TTrackBar;
    AngleBar: TTrackBar;
    HeightBar: TTrackBar;
    InitialParameters: TValueListEditor;
  published
    constructor create(AOwner: TForm; toLab1Test, toLab1Report: TNotifyEvent);
    procedure clear; override;
  end;

implementation

{ MethodLab1 }

constructor MethodLab1.create(AOwner: TForm;
  toLab1Test, toLab1Report: TNotifyEvent);
begin
  AOwner.Caption := 'MethodLab1';
  BackButton := TButton.create(AOwner);
  with BackButton do
  begin
    Parent := AOwner;
    Caption := '< Test';
    OnClick := toLab1Test;
  end;
  TheoryButton := TButton.create(AOwner);
  with TheoryButton do
  begin
    Parent := AOwner;
    Caption := 'Report >';
    Left := 100;
    OnClick := toLab1Report;
  end;

  Shape1 := TShape.create(nil);
  with Shape1 do
  begin
    Parent := AOwner;
    Align := alClient;
    Brush.Color := clBtnFace;
    Pen.Style := psClear;
  end;

  Image1 := TImage.create(nil);
  with Image1 do
  begin
    Parent := AOwner;
    Align := alClient;
  end;

  SpeedBar := TTrackBar.create(nil);
  with SpeedBar do
  begin
    Parent := AOwner;
    Left := 100;
    Top := 100;
  end;

  AngleBar := TTrackBar.create(nil);
  with AngleBar do
  begin
    Parent := AOwner;
    Left := 200;
    Top := 200;
  end;

  HeightBar := TTrackBar.create(nil);
  with HeightBar do
  begin
    Parent := AOwner;
    Left := 300;
    Top := 300;
  end;

  StartButton:= TButton.create(nil);
  with StartButton do
  begin
    Parent := AOwner;
    Left := 400;
    Top := 400;
    Caption:='старт';
  end;

  InitialParameters:= TValueListEditor.create(nil);
  with InitialParameters do
  begin
    Parent := AOwner;
    Left := 400;
    Top := 50;
  end;
end;

procedure MethodLab1.clear;
begin
  inherited;
  InitialParameters.Parent := nil;
  StartButton.Parent := nil;
  HeightBar.Parent := nil;
  AngleBar.Parent := nil;
  SpeedBar.Parent := nil;
  Shape1.Parent := nil;
  Image1.Parent := nil;
  BackButton.Parent := nil;
  TheoryButton.Parent := nil;
end;

end.
