unit MethodLab1Unit;

interface

uses
  classes {TNotifyEvent} ,
  Vcl.Forms,
  Lab1Unit;

type
  MethodLab1 = class(Lab1)
  published
    constructor create(AOwner: TForm; Notify: TNotifyEvent); override;
  end;

implementation

{ MethodLab1 }

constructor MethodLab1.create(AOwner: TForm; Notify: TNotifyEvent);
begin
  inherited;

end;

end.
