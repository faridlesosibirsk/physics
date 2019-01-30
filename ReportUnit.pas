unit ReportUnit;

interface

uses
  classes {TNotifyEvent} ,
  LabsUnit,
  Vcl.Forms,
  PhisicsUnit;

type
  Report = class(TInterfacedObject, Phisics)
  private
    /// <link>aggregation</link>
    lab: Labs;
  published
    constructor create(AOwner: TForm; lab: Labs; Back: TNotifyEvent);
    procedure destroy;
  public
  end;

implementation

{ Report }

constructor Report.create(AOwner: TForm; lab: Labs; Back: TNotifyEvent);
begin

end;

procedure Report.destroy;
begin

end;

end.
