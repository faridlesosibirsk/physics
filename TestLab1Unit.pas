unit TestLab1Unit;

interface

uses
  classes {TNotifyEvent} ,
  Vcl.Forms,
  Lab1Unit;

type
  TestLab1 = class(Lab1)
  published
    constructor create(AOwner: TForm; Notify: TNotifyEvent); override;
  end;

implementation

{ TestLab1 }

constructor TestLab1.create(AOwner: TForm; Notify: TNotifyEvent);
begin
  inherited;

end;

end.
