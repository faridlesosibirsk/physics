unit BuilderUnit;

interface

uses
  classes {TNotifyEvent} ,
  Vcl.Controls {TWinControl};

type
  Builder = interface
    procedure free;
    procedure header;
    procedure main;
    procedure nav;
    procedure section;
    procedure aside;
    procedure address;
    procedure footer(Next: TNotifyEvent);
    procedure install(WinControl: TWinControl);
  end;

implementation

end.
