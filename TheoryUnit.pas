unit TheoryUnit;

interface

uses
  classes {TNotifyEvent} ,
  Vcl.StdCtrls {TButton} ,
  MechanicsUnit,
  Vcl.ExtCtrls {TPanel},
  BuilderUnit, LaboratoryUnit;

type
  Theory = class(Builder)
  private
    LeftPanel: TPanel;
    Button: TButton;
    { TODO :  }
    notify: TNotifyEvent;
    procedure createLeftPanel;
    procedure createButton;
    procedure install;
  public
    procedure Print(panel: TPanel); override;
  published
    constructor create(Mechanics1: Mechanics; notify: TNotifyEvent);
    destructor destroy;
  end;

implementation

{ Theory }

constructor Theory.create(Mechanics1: Mechanics; notify: TNotifyEvent);
begin

end;

procedure Theory.createButton;
begin

end;

procedure Theory.createLeftPanel;
begin

end;

destructor Theory.destroy;
begin

end;

procedure Theory.install;
begin

end;

procedure Theory.Print(panel: TPanel);
begin
  TPanel.Create(panel).Parent:=panel;
end;

end.
