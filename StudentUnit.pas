unit StudentUnit;

interface

uses
  classes {TNotifyEvent},
  LabsUnit {Labs} ,
  ContentUnit {Content} ,
  Lab1Unit {Lab1} ,
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
    /// <link>aggregation</link>
    Lab: Labs;
    procedure toLab1(Sender: TObject);
    procedure toContent(Sender: TObject);
    procedure AssignedPanel1;
    function getTheory: TPanel;
  public
    function Open: TPanel;
  published
    constructor create;
  end;

implementation

{ Director }

function Student.Open: TPanel;
begin
  if assigned(Builder1) then
    Builder1.free;
  Builder1 := Main.create(Panel1);
  with Builder1 do
  begin
    header;
    main(toLab1);
    footer(toLab1);
    //render;
  end;
  result:=Panel1;
end;

function Student.getTheory: TPanel;
begin
  Builder1.free;
  Builder1 := Theory.create(Panel1);
  with Builder1 do
  begin
    header;
    main(toContent);
    footer(toContent);
    //render;
  end;
  result:=Panel1;
end;

procedure Student.toContent(Sender: TObject);
begin
  Open;
end;

procedure Student.toLab1(Sender: TObject);
begin
  getTheory;  /////////////////////////////////
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
