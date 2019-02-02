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
    procedure createTheoryLab2(Open, toLab2Test: TNotifyEvent);
    procedure createMethodLab2(toLab2Test, toLab2Report: TNotifyEvent);
    procedure createTestLab2(toLab2Theory, toLab2Method: TNotifyEvent);
    procedure createReportLab2(toLab2Method, Open: TNotifyEvent);
  end;

implementation

end.
