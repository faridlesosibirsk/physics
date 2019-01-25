unit StudentUnit;

interface

uses
  classes {TNotifyEvent} ,
  PhisicsUnit {Phisica} ,
  Vcl.Controls {TWinControl} ,
  Vcl.ExtCtrls {TPanel} ,
  TheoryUnit {Theory} ,
  MainUnit {Main} ,
  BuilderUnit {Builder};

type

  Student = class(TInterfacedObject, Phisics)
  private
    Panel1: TPanel;
    /// <link>aggregation</link>
    Builder1: Builder;
    procedure toLab1(Sender: TObject);
    procedure Lab1;
    procedure toContent(Sender: TObject);
    // procedure Content;
    procedure AssignedPanel1;
    // function getTheory: TPanel;
  public
    function Open: TPanel;
  published
    constructor create;
  end;

implementation

{ Director }

function Student.Open: TPanel;
begin
  Builder1 := Main.create(toLab1);
  with Builder1 do
  begin
    setContent;
    render.Parent := Panel1;
  end;
  result := Panel1;
end;

procedure Student.Lab1;
begin
  Builder1 := Theory.create(toContent);
  with Builder1 do
  begin
    setLab1;
    render.Parent := Panel1;
  end;
end;

procedure Student.toContent(Sender: TObject);
begin
  Open;
end;

procedure Student.toLab1(Sender: TObject);
begin
  Lab1;
end;

procedure Student.AssignedPanel1;
begin
  if not assigned(Panel1) then
  begin
    Panel1 := TPanel.create(nil);
    Panel1.caption := 'Panel1';
    Panel1.Align := alClient;
    Panel1.BevelOuter := bvNone;
  end;
end;

constructor Student.create;
begin
  AssignedPanel1;
end;

end.
