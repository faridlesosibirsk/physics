unit LaboratoriesUnit;

interface

uses
  classes {TNotifyEvent};

type
  Laboratories = interface
    procedure reset;
    procedure createTheoryLab1(Open, toLab1Test: TNotifyEvent);
    procedure createMethodLab1(toLab1Test, toLab1Report: TNotifyEvent);
    procedure createTestLab1(toLab1Theory, toLab1Method: TNotifyEvent);
    procedure createReportLab1(toLab1Method, Open: TNotifyEvent);
  end;

implementation

end.
