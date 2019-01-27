unit MechanicsUnit;

interface

uses
  System.Generics.Collections {TDictionary} ,
  Vcl.ExtCtrls {TPanel},
  LaboratoryUnit;

type
  Mechanics = class(Laboratory)
  private

  public
    model: TDictionary<String, String>;
    procedure Print(panel: TPanel); override;
    function getModel: TDictionary<String, String>;
  published
    constructor create;
    destructor destroy; override;
  end;

implementation

{ TDecoratorPage }

constructor Mechanics.create;
begin
  model:= TDictionary<String, String>.create;
  model.AddOrSetValue('title','Mechanics');
end;

destructor Mechanics.destroy;
begin
  model.Free;
end;

function Mechanics.getModel: TDictionary<String, String>;
begin
  result:=model;
end;

procedure Mechanics.Print(panel: TPanel);
begin
  TPanel.Create(panel).Parent:=panel;
end;

end.
