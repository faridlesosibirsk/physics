unit Lab1Unit;

interface

uses
  System.Generics.Collections {TDictionary} ,
  Vcl.ExtCtrls {TPanel},
  MechanicsUnit,
  LaboratoryUnit;

type

  Lab1 = class(Mechanics)
  private
    //model: TDictionary<String, String>;
  public

    procedure Print(panel: TPanel); override;
    function getModel: TDictionary<String, String>;
  published
    constructor create;
    destructor destroy; override;
  end;

implementation

{ TNamberPage }

constructor Lab1.create;
begin
  model:= TDictionary<String, String>.create;
  model.AddOrSetValue('title','Lab1');
end;

destructor Lab1.destroy;
begin
  model.Free;
end;

function Lab1.getModel: TDictionary<String, String>;
begin
  result:=model;
end;

procedure Lab1.Print(panel: TPanel);
begin
  TPanel.Create(panel).Parent:=panel;
end;

end.
