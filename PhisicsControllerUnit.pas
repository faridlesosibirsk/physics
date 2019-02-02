unit PhisicsControllerUnit;

interface

uses
  MechanicsUnit,
  System.Generics.Collections {TDictionary} ,
  ConnectionUnit,
  AccessConnectionUnit,
  Graphics {TColor} ,
  TheoryLab1Unit,
  TestLab1Unit,
  MethodLab1Unit,
  ReportLab1Unit,
  Vcl.ExtCtrls {TPanel} ,
  Vcl.Controls,
  Vcl.StdCtrls {TGroupBox} ,
  Laboratory1Unit,
  LaboratoriesUnit,
  Vcl.Forms,
  ControllersUnit;

type
  PhisicsController = class(TInterfacedObject, Controllers)
  private
    MechanicsPanels: TList<TPanel>;
    captionMechanics: TList<String>;
    MainPanels: TList<TPanel>;
    captionMain: TList<String>;
    /// <link>aggregation</link>
    Connection1: Connection;
    /// <link>aggregation</link>
    Lab: Laboratories;
    AOwner: TForm;
    Panel: TPanel;
    // Mechanics: TGroupBox;
    // procedure toLab1(Sender: TObject);
    procedure toLab1Theory(Sender: TObject);
    procedure toLab1Test(Sender: TObject);
    procedure toLab1Method(Sender: TObject);
    procedure toLab1Report(Sender: TObject);
    procedure createChapter;
    procedure createMechanics;//(notify: TNotifyEvent);
  public
    procedure Open(Sender: TObject);
    procedure First;
    procedure reset;
  published
    constructor create(AOwner: TForm);
  end;

implementation

{ PhisicsController }

procedure PhisicsController.reset;
begin
  if assigned(Lab) then
    Lab.reset;
  if assigned(Panel) then
    Panel.Parent := nil;
end;

constructor PhisicsController.create(AOwner: TForm);
begin
  Connection1 := AccessConnection.create;
  self.AOwner := AOwner;
  First;
end;

procedure PhisicsController.createChapter;
var
  s: string;
  i: integer;
begin
  i := 0;
  MainPanels := TList<TPanel>.create;
  captionMain := TList<String>.create;
  captionMain := Connection1.getColTable('caption', 'Main');
  for s in captionMain do
  begin
    with MainPanels do
    begin
      Add(TPanel.create(nil));
      Last.Caption := s;
      Last.Parent := Panel;
      Last.Width := 250;
      Last.Left := i * 250;
      Last.font.style:=[fsBold];
    end;
    i := i + 1;
  end;
end;

procedure PhisicsController.createMechanics;
var
  s: string;
  i: integer;
begin
  i := 1;
  MechanicsPanels := TList<TPanel>.create;
  captionMechanics := TList<String>.create;
  captionMechanics := Connection1.getColTable('caption', 'Mechanics');
  for s in captionMechanics do
  begin
    with MechanicsPanels do
    begin
      Add(TPanel.create(nil));
      Last.Caption := s;
      Last.Parent := Panel;
      Last.Width := 250;
      Last.Top := i * 41;
    end;
    i := i + 1;
  end;
  MechanicsPanels.Items[0].OnClick:=toLab1Theory;
  MechanicsPanels.Items[0].cursor:=crHandPoint;
end;

procedure PhisicsController.First;
begin
  AOwner.Caption := 'Открытая Физика';

  if assigned(Panel) then
    Panel.Parent := AOwner
  else
  begin
  Panel := TPanel.create(nil);
  with Panel do
  begin
    Parent := AOwner;
    Align := alClient;
    Caption := '';
  end;
  end;
  createChapter;
  createMechanics;
end;

procedure PhisicsController.Open(Sender: TObject);
begin
  reset;
  First;
end;

procedure PhisicsController.toLab1Method(Sender: TObject);
begin
  reset;
  Lab := Mechanics.create(AOwner);
  Lab.createMethodLab1(toLab1Test, toLab1Report);
end;

procedure PhisicsController.toLab1Report(Sender: TObject);
begin
  reset;
  Lab := Mechanics.create(AOwner);
  Lab.createReportLab1(toLab1Method, Open);
end;

procedure PhisicsController.toLab1Test(Sender: TObject);
begin
  reset;
  Lab := Mechanics.create(AOwner);
  Lab.createTestLab1(toLab1Theory, toLab1Method);
end;

procedure PhisicsController.toLab1Theory(Sender: TObject);
begin
  reset;
  Lab := Mechanics.create(AOwner);
  Lab.createTheoryLab1(Open, toLab1Test);
end;

end.
