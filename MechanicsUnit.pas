unit MechanicsUnit;

interface

uses
  ActiveRecordUnit,
  System.Generics.Collections {TDictionary} ,
  Vcl.ExtCtrls {TPanel} ,
  LaboratoryUnit;

type
  Mechanics = class(Laboratory)
  private
    /// <link>aggregation</link>
    ActiveRecord1: ActiveRecord;
  public
    model: TList<String>;
    procedure Print(panel: TPanel); override;
    function getModel: TList<String>;
  published
    constructor create;
    destructor destroy; override;
  end;

implementation

{ TDecoratorPage }

constructor Mechanics.create;
var
  s: string;
begin
  ActiveRecord1 := ActiveRecord.create;
  model := TList<String>.create;
  model.Add('Mechanics');
end;

destructor Mechanics.destroy;
begin
  model.Free;
end;

function Mechanics.getModel: TList<String>;
begin
  result := model;
end;

procedure Mechanics.Print(panel: TPanel);
begin
  TPanel.create(panel).Parent := panel;
end;

end.
