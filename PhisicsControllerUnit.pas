unit PhisicsControllerUnit;

interface

uses
  TheoryLab1Unit,
  TestLab1Unit,
  MethodLab1Unit,
  ReportLab1Unit,
  Vcl.ExtCtrls {TPanel} ,
  Vcl.Controls,
  Vcl.StdCtrls {TGroupBox} ,
  Lab1Unit,
  LabsUnit,
  Vcl.Forms,
  ControllersUnit;

type
  PhisicsController = class(TInterfacedObject, Controllers)
  private
    /// <link>aggregation</link>
    Lab: Labs;
    AOwner: TForm;
    Mechanics: TGroupBox;
    Lab1Panel: TPanel;
    // procedure toLab1(Sender: TObject);
    procedure toLab1Theory(Sender: TObject);
    procedure toLab1Test(Sender: TObject);
    procedure toLab1Method(Sender: TObject);
    procedure toLab1Report(Sender: TObject);
  public
    procedure Open(Sender: TObject);
    procedure First;
    procedure clear;
  published
    constructor create(AOwner: TForm);
  end;

implementation

{ PhisicsController }

procedure PhisicsController.clear;
begin
  if assigned(Lab) then
    Lab.clear;
  if assigned(Mechanics) then
    Mechanics.Parent := nil;
  if assigned(Lab1Panel) then
    Lab1Panel.Parent := nil;
end;

constructor PhisicsController.create(AOwner: TForm);
begin
  self.AOwner := AOwner;
  First;
end;

procedure PhisicsController.First;
begin
  AOwner.Caption := 'Открытая Физика';
  if assigned(Mechanics) then
    Mechanics.Parent := AOwner
  else
  begin
    Mechanics := TGroupBox.create(nil);
    with Mechanics do
    begin
      Parent := AOwner;
      Align := alLeft;
      Caption := 'Механика';
    end;
  end;

  if assigned(Lab1Panel) then
    Lab1Panel.Parent := Mechanics
  else
  begin
    Lab1Panel := TPanel.create(nil);
    with Lab1Panel do
    begin
      Parent := Mechanics;
      Align := alTop;
      Caption := 'Lab1';
      OnClick := toLab1Theory;
    end;
  end;
end;

procedure PhisicsController.Open(Sender: TObject);
begin
  clear;
  First;
end;

procedure PhisicsController.toLab1Method(Sender: TObject);
begin
  clear;
  Lab := MethodLab1.create(AOwner, toLab1Test, toLab1Report);
end;

procedure PhisicsController.toLab1Report(Sender: TObject);
begin
  clear;
  Lab := ReportLab1.create(AOwner, toLab1Method, Open);
end;

procedure PhisicsController.toLab1Test(Sender: TObject);
begin
  clear;
  Lab := TestLab1.create(AOwner, toLab1Theory, toLab1Method);
end;

procedure PhisicsController.toLab1Theory(Sender: TObject);
begin
  clear;
  Lab := TheoryLab1.create(AOwner, Open, toLab1Test);
end;

end.
