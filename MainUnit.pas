unit MainUnit;

interface

uses
  MechanicsUnit,
  System.Generics.Collections {TDictionary},
  Vcl.Controls {TWinControl} ,
  Vcl.ExtCtrls {TPanel},
  BuilderUnit, LaboratoryUnit;

type
  Main = class(Builder)
  private
    LeftPanel: TPanel;
    ListPanel: TDictionary<String, TPanel>;
    { TODO :  }
    procedure createLeftPanel;
    procedure createListPanel;
    procedure install;
  public
    function Print: TPanel; override;
  published
    constructor create(Mechanics1: Mechanics);
    destructor destroy;
  end;

implementation

{ TPage }

constructor Main.create(Mechanics1: Mechanics);
begin
  self.Mechanics1:= Mechanics1;
  LeftPanel := TPanel.Create(nil);
  ListPanel:= TDictionary<String, TPanel>.create;
  { TODO :  }
end;

procedure Main.createLeftPanel;
begin
  with LeftPanel do begin
    Align:=alLeft;
    Caption:='Main';
  end;
end;

procedure Main.createListPanel;
begin
  with ListPanel do begin
    Add('1',TPanel.Create(nil));
  end;
end;

destructor Main.destroy;
begin
  LeftPanel.Free;
end;

procedure Main.install;
begin
  createLeftPanel;
end;

function Main.Print: TPanel;
begin
  install;
  result:=LeftPanel;
end;

end.
