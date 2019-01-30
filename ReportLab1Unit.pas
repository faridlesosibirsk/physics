unit ReportLab1Unit;

interface

uses
  classes {TNotifyEvent} ,
  Vcl.Forms,
  Lab1Unit;

type
  ReportLab1 = class(Lab1)
  published
    constructor create(AOwner: TForm; Notify: TNotifyEvent); override;
  end;

implementation

{ ReportLab1 }

constructor ReportLab1.create(AOwner: TForm; Notify: TNotifyEvent);
begin
  inherited;

end;

end.
