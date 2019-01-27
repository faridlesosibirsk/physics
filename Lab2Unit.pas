unit Lab2Unit;

interface

uses
  System.Generics.Collections {TDictionary} ,
  Vcl.ExtCtrls {TPanel},
  MechanicsUnit,
  LaboratoryUnit;

type

  Lab2 = class(Mechanics)
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

{ Lab2 }

constructor Lab2.create;
begin
  model:= TDictionary<String, String>.create;
  model.AddOrSetValue('title','Lab2');
end;

destructor Lab2.destroy;
begin
  model.Free;
end;

function Lab2.getModel: TDictionary<String, String>;
begin
  result:=model;  //??
end;

procedure Lab2.Print(panel: TPanel);
begin
  TPanel.Create(panel).Parent:=panel;
end;

end.
