unit MechanicsUnit;

interface

uses
  ReportLab1Unit,
  TestLab1Unit,
  MethodLab1Unit,
  TheoryLab1Unit,
  ReportLab2Unit,
  TestLab2Unit,
  MethodLab2Unit,
  TheoryLab2Unit,
  classes {TNotifyEvent} ,
  Vcl.Forms,
  Laboratory1Unit,
  Laboratory2Unit,
  LaboratoriesUnit;

type
  Mechanics = class(TInterfacedObject, Laboratories)
  private
    AOwner: TForm;
    toLab1Theory, toLab1Method: TNotifyEvent;
    /// <link>aggregation</link>
    Lab1_: Laboratory1;
    /// <link>aggregation</link>
    Lab2_: Laboratory2;
  public
    procedure reset;
    procedure createTheoryLab1(Open, toLab1Test: TNotifyEvent);
    procedure createMethodLab1(toLab1Test, toLab1Report: TNotifyEvent);
    procedure createTestLab1(toLab1Theory, toLab1Method: TNotifyEvent);
    procedure createReportLab1(toLab1Method, Open: TNotifyEvent);
    procedure createTheoryLab2(Open, toLab2Test: TNotifyEvent);
    procedure createMethodLab2(toLab2Test, toLab2Report: TNotifyEvent);
    procedure createTestLab2(toLab2Theory, toLab2Method: TNotifyEvent);
    procedure createReportLab2(toLab2Method, Open: TNotifyEvent);
  published
    constructor create(AOwner: TForm);
  end;

implementation

{ Mechanics }

procedure Mechanics.reset;
begin
  if assigned(Lab1_) then
    Lab1_.reset;
  if assigned(Lab2_) then
    Lab2_.reset;
end;

constructor Mechanics.create(AOwner: TForm);
begin
  self.AOwner:=AOwner;
end;

procedure Mechanics.createTestLab1(toLab1Theory, toLab1Method: TNotifyEvent);
begin
  Lab1_ := TestLab1.create(AOwner, toLab1Theory, toLab1Method);
end;

procedure Mechanics.createTestLab2(toLab2Theory, toLab2Method: TNotifyEvent);
begin
  Lab2_ := TestLab2.create(AOwner, toLab2Theory, toLab2Method);
end;

procedure Mechanics.createMethodLab1(toLab1Test, toLab1Report: TNotifyEvent);
begin
  Lab1_ := MethodLab1.create(AOwner, toLab1Test, toLab1Report);
end;

procedure Mechanics.createMethodLab2(toLab2Test, toLab2Report: TNotifyEvent);
begin
  Lab2_ := MethodLab2.create(AOwner, toLab2Test, toLab2Report);
end;

procedure Mechanics.createReportLab1(toLab1Method, Open: TNotifyEvent);
begin
  Lab1_ := ReportLab1.create(AOwner, toLab1Method, Open);
end;

procedure Mechanics.createReportLab2(toLab2Method, Open: TNotifyEvent);
begin
  Lab2_ := ReportLab2.create(AOwner, toLab2Method, Open);
end;

procedure Mechanics.createTheoryLab1(Open, toLab1Test: TNotifyEvent);
begin
  Lab1_ := TheoryLab1.create(AOwner, Open, toLab1Test);
end;

procedure Mechanics.createTheoryLab2(Open, toLab2Test: TNotifyEvent);
begin
  Lab2_ := TheoryLab2.create(AOwner, Open, toLab2Test);
end;

end.
