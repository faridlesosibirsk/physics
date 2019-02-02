unit MechanicsUnit;

interface

uses
  ReportLab1Unit,
  TestLab1Unit,
  MethodLab1Unit,
  TheoryLab1Unit,
  classes {TNotifyEvent} ,
  Vcl.Forms,
  Laboratory1Unit,
  LaboratoriesUnit;

type
  Mechanics = class(TInterfacedObject, Laboratories)
  private
    AOwner: TForm;
    toLab1Theory, toLab1Method: TNotifyEvent;
    /// <link>aggregation</link>
    Lab1_: Laboratory1;
  public
    procedure reset;
    procedure createTheoryLab1(Open, toLab1Test: TNotifyEvent);
    procedure createMethodLab1(toLab1Test, toLab1Report: TNotifyEvent);
    procedure createTestLab1(toLab1Theory, toLab1Method: TNotifyEvent);
    procedure createReportLab1(toLab1Method, Open: TNotifyEvent);
  published
    constructor create(AOwner: TForm);
  end;

implementation

{ Mechanics }

procedure Mechanics.reset;
begin
  Lab1_.reset;
end;

constructor Mechanics.create(AOwner: TForm);
begin
  self.AOwner:=AOwner;
end;

procedure Mechanics.createTestLab1(toLab1Theory, toLab1Method: TNotifyEvent);
begin
  Lab1_ := TestLab1.create(AOwner, toLab1Theory, toLab1Method);
end;

procedure Mechanics.createMethodLab1(toLab1Test, toLab1Report: TNotifyEvent);
begin
  Lab1_ := MethodLab1.create(AOwner, toLab1Test, toLab1Report);
end;

procedure Mechanics.createReportLab1(toLab1Method, Open: TNotifyEvent);
begin
  Lab1_ := ReportLab1.create(AOwner, toLab1Method, Open);
end;

procedure Mechanics.createTheoryLab1(Open, toLab1Test: TNotifyEvent);
begin
  Lab1_ := TheoryLab1.create(AOwner, Open, toLab1Test);
end;

end.
