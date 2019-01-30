unit MethodUnit;

interface

uses
  classes {TNotifyEvent} ,
  LabsUnit,
  Vcl.Forms,
  PhisicsUnit;

type
  Method = class(TInterfacedObject, Phisics)
  private
    /// <link>aggregation</link>
    lab: Labs;
  published
    constructor create(AOwner: TForm; lab: Labs; Back: TNotifyEvent);
    procedure destroy;
  public
  end;

implementation

{ Method }

constructor Method.create(AOwner: TForm; lab: Labs; Back: TNotifyEvent);
begin

end;

procedure Method.destroy;
begin

end;

end.
