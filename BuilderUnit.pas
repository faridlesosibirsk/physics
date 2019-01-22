unit BuilderUnit;

interface

uses
  LabsUnit {Labs} ,
  classes {TNotifyEvent} ,
  Vcl.Controls {TWinControl};

type
  Builder = interface
    procedure free(model: Labs);
    procedure header;
    procedure main(Lab1: TNotifyEvent);
    procedure nav;
    procedure section;
    procedure aside;
    procedure address;
    procedure footer(Next: TNotifyEvent);
    procedure install(WinControl: TWinControl);
  end;

implementation

end.
