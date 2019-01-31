unit ReportLab1Unit;

interface

uses
  Vcl.StdCtrls {TButton} ,
  classes {TNotifyEvent} ,
  Vcl.Forms,
  Lab1Unit;

type
  ReportLab1 = class(Lab1)
  private
    BackButton: TButton;
    TheoryButton: TButton;
  published
    constructor create(AOwner: TForm; toLab1Method, Open: TNotifyEvent);
    procedure clear; override;
  end;

implementation

{ ReportLab1 }

constructor ReportLab1.create(AOwner: TForm; toLab1Method, Open: TNotifyEvent);
begin
  AOwner.Caption := 'ReportLab1';
  BackButton:= TButton.Create(AOwner);
  with BackButton do begin
    Parent:=AOwner;
    Caption:='< Method';
    OnClick:=toLab1Method;
  end;
  TheoryButton:= TButton.Create(AOwner);
  with TheoryButton do begin
    Parent:=AOwner;
    Caption:='Exit >';
    Left:=100;
    OnClick:=Open;
  end;
end;

procedure ReportLab1.clear;
begin
  inherited;
  BackButton.Parent:=nil;
  TheoryButton.Parent:=nil;
end;

end.
