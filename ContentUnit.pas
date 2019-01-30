unit ContentUnit;

interface

uses
  Vcl.StdCtrls {TButton} ,
  classes {TNotifyEvent} ,
  LabsUnit,
  Lab1Unit,
  Lab2Unit,
  Lab3Unit,
  Vcl.Forms,
  PhisicsUnit;

type
  Content = class(TInterfacedObject, Phisics)
  private
    Lab1Button, Lab2Button, Lab3Button: TButton;
    Lab1Event, Lab2Event, Lab3Event: TNotifyEvent;
    AOwner: TForm;
    /// <link>aggregation</link>
    lab: Labs;
  published
    constructor create(AOwner: TForm; Lab1Event, Lab2Event, Lab3Event: TNotifyEvent);
    procedure destroy;
  public

  end;

implementation

{ Open }

constructor Content.create(AOwner: TForm; Lab1Event, Lab2Event, Lab3Event: TNotifyEvent);
begin
  Lab1Button := TButton.create(nil);
  Lab2Button := TButton.create(nil);
  Lab3Button := TButton.create(nil);
  self.Lab1Event := Lab1Event;
  self.Lab2Event := Lab2Event;
  self.Lab3Event := Lab3Event;
  self.AOwner := AOwner;
  with AOwner do
  begin
    Caption := 'Открытая физика';
  end;
  with Lab1Button do
  begin
    lab:= Lab1.create;
    Caption := lab.caption;
    Left := 8;
    Top := 8;
    Width:=200;
    Parent := AOwner;
    OnClick := Lab1Event;
    lab:=nil;
  end;
  with Lab2Button do
  begin
    lab:= Lab2.create;
    Caption := lab.caption;
    Left := 8;
    Top := 58;
    Width:=200;
    Parent := AOwner;
    OnClick := Lab2Event;
    lab:=nil;
  end;
  with Lab3Button do
  begin
    lab:= Lab3.create;
    Caption := lab.caption;
    Left := 8;
    Top := 108;
    Width:=200;
    Parent := AOwner;
    OnClick := Lab3Event;
    lab:=nil;
  end;
end;

procedure Content.destroy;
begin
  Lab1Button.Free;
  Lab2Button.Free;
  Lab3Button.Free;
end;

end.
