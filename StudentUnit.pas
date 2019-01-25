unit StudentUnit;

interface

uses
  LabsUnit {Labs} ,
  Lab1Unit {Lab1} ,
  ContentUnit {Content} ,
  System.Generics.Collections {TDictionary} ,
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
    Notify: TDictionary<String, TNotifyEvent>;
    /// <link>aggregation</link>
    Lab: Labs;
    procedure toLab1(Sender: TObject);
    procedure Laboratory(Lab: Labs);
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
  Notify:= TDictionary<String, TNotifyEvent>.create;
  Notify.Add('1',toLab1);
  Notify.Add('2',toLab1);
  Notify.Add('3',toLab1);
  Notify.Add('4',toLab1);
  Notify.Add('5',toLab1);
  Notify.Add('6',toLab1);
  Notify.Add('7',toLab1);
  Notify.Add('8',toLab1);
  Notify.Add('9',toLab1);
  Notify.Add('10',toLab1);
  Notify.Add('11',toLab1);
  Notify.Add('12',toLab1);
  Notify.Add('13',toLab1);
  //Builder1 := Main.create(toLab1);
  Builder1 := Main.create(Notify);
  with Builder1 do
  begin
    //setContent;
    Lab:= Content.Create;
    sett(Lab);
    render.Parent := Panel1;
  end;
  result := Panel1;
end;

procedure Student.Laboratory(Lab: Labs);
begin
  Builder1 := Theory.create(toContent);
  with Builder1 do
  begin
    //setLab1;
    //Lab:= Lab1.Create;
    sett(Lab);
    render.Parent := Panel1;
  end;
end;

procedure Student.toContent(Sender: TObject);
begin
  Open;
end;

procedure Student.toLab1(Sender: TObject);
begin
  Lab:= Lab1.Create;
  Laboratory(Lab);
end;

procedure Student.AssignedPanel1;
begin
  if not assigned(Panel1) then
  begin
    Panel1 := TPanel.create(nil);
    Panel1.caption := '';
    Panel1.Align := alClient;
    Panel1.BevelOuter := bvNone;
  end;
end;

constructor Student.create;
begin
  AssignedPanel1;
end;

end.
