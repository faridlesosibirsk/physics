unit ControllsUnit;

interface

uses
  classes {TNotifyEvent} ,
  TestUnit,
  ReportUnit,
  MethodUnit,
  TheoryUnit,
  ContentUnit,
  Vcl.Forms,
  LabsUnit,
  Lab1Unit,
  Lab2Unit,
  Lab3Unit,
  PhisicsUnit;

type
  Controlls = interface
    //procedure Open(Sender: TObject);
  end;

  Controll = class(TInterfacedObject, Controlls)
  private
    /// <link>aggregation</link>
    Phisic: Phisics;
    /// <link>aggregation</link>
    Lab: Labs;
    AOwner: TForm;
  public
    procedure Open(Sender: TObject);
    procedure Lab1Theory(Sender: TObject);
    procedure Lab1Test(Sender: TObject);
    procedure Lab1Method(Sender: TObject);
    procedure Lab1Report(Sender: TObject);
    procedure Lab2Theory(Sender: TObject);
    procedure Lab2Test(Sender: TObject);
    procedure Lab2Method(Sender: TObject);
    procedure Lab2Report(Sender: TObject);
    procedure Lab3Theory(Sender: TObject);
    procedure Lab3Test(Sender: TObject);
    procedure Lab3Method(Sender: TObject);
    procedure Lab3Report(Sender: TObject);
  published
    constructor create(AOwner: TForm);
  end;

implementation

{ Controll }

constructor Controll.create(AOwner: TForm);
begin
  self.AOwner:= AOwner;
  Open(nil);
end;

procedure Controll.Lab1Method(Sender: TObject);
begin
  Phisic.destroy;
  Phisic:=Method.create(AOwner, Lab1.create, Open);
end;

procedure Controll.Lab1Report(Sender: TObject);
begin
  Phisic.destroy;
  Phisic:=Report.create(AOwner, Lab1.create, Open);
end;

procedure Controll.Lab1Test(Sender: TObject);
begin
  Phisic.destroy;
  Phisic:=Test.create(AOwner, Lab1.create, Open);
end;

procedure Controll.Lab1Theory(Sender: TObject);
begin
  Phisic.destroy;
  Phisic:=Theory.create(AOwner, Lab1.create, Open);
end;

procedure Controll.Lab2Method(Sender: TObject);
begin
  Phisic.destroy;
  Phisic:=Method.create(AOwner, Lab2.create, Open);
end;

procedure Controll.Lab2Report(Sender: TObject);
begin
  Phisic.destroy;
  Phisic:=Report.create(AOwner, Lab2.create, Open);
end;

procedure Controll.Lab2Test(Sender: TObject);
begin
  Phisic.destroy;
  Phisic:=Test.create(AOwner, Lab2.create, Open);
end;

procedure Controll.Lab2Theory(Sender: TObject);
begin
  Phisic.destroy;
  Phisic:=Theory.create(AOwner, Lab2.create, Open);
end;

procedure Controll.Lab3Method(Sender: TObject);
begin
  Phisic.destroy;
  Phisic:=Method.create(AOwner, Lab3.create, Open);
end;

procedure Controll.Lab3Report(Sender: TObject);
begin
  Phisic.destroy;
  Phisic:=Report.create(AOwner, Lab3.create, Open);
end;

procedure Controll.Lab3Test(Sender: TObject);
begin
  Phisic.destroy;
  Phisic:=Test.create(AOwner, Lab3.create, Open);
end;

procedure Controll.Lab3Theory(Sender: TObject);
begin
  Phisic.destroy;
  Phisic:=Theory.create(AOwner, Lab3.create, Open);
end;

procedure Controll.Open(Sender: TObject);
begin
  Phisic:= Content.create(AOwner, Lab1Theory, Lab2Theory, Lab3Theory);
end;

end.
