unit TestUnit;

interface

uses
  classes {TNotifyEvent} ,
  LabsUnit,
  Vcl.Forms,
  PhisicsUnit;

type
  Test = class(TInterfacedObject, Phisics)
  private
    /// <link>aggregation</link>
    lab: Labs;
  published
    constructor create(AOwner: TForm; lab: Labs; Back: TNotifyEvent);
    procedure destroy;
  public

  end;

implementation

{ Test }

constructor Test.create(AOwner: TForm; lab: Labs; Back: TNotifyEvent);
begin

end;

procedure Test.destroy;
begin

end;

end.
