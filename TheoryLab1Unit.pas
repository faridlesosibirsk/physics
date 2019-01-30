unit TheoryLab1Unit;

interface

uses
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
    AOwner: TForm;
  published
    constructor create(AOwner: TForm; Notify: TNotifyEvent); override;
    procedure destroy;
  end;

implementation

{ TheoryLab1 }

constructor TheoryLab1.create(AOwner: TForm; Notify: TNotifyEvent);
begin
  //inherited;
  self.AOwner := AOwner;
  AOwner.Caption := 'TheoryLab1';
  BackButton:= TButton.Create(AOwner);
  with BackButton do begin
    Parent:=AOwner;
    Caption:='< Back';
    OnClick:=Notify;
  end;
  TheoryButton:= TButton.Create(AOwner);
  with TheoryButton do begin
    Parent:=AOwner;
    Caption:='Theory Lab1 >';
    Left:=100;
    OnClick:=Notify;
  end;
end;

procedure TheoryLab1.destroy;
begin
    BackButton.Free;
    TheoryButton.Free;
end;

end.
