unit BuilderUnit;

interface

uses
  LabsUnit,
  classes {TNotifyEvent};

type
  Builder = interface
    procedure free;
    procedure header;
    procedure main(Lab1: TNotifyEvent);
    //procedure nav;
    //procedure section;
    //procedure aside;
    //procedure address;
    procedure footer(Next: TNotifyEvent);
    //procedure render;
  end;

implementation

end.
