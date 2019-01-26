unit MainUnit;

interface

uses
  classes {TNotifyEvent} ,
  Vcl.StdCtrls {TButton} ,
  MechanicsUnit,
  System.Generics.Collections {TDictionary},
  Vcl.Controls {TWinControl} ,
  Vcl.ExtCtrls {TPanel},
  BuilderUnit, LaboratoryUnit;

type
  Main = class(Builder)
  private
    LeftPanel: TPanel;
    Button: TButton;
    { TODO :  }
    notify: TNotifyEvent;
    procedure createLeftPanel;
    procedure createButton;
    procedure install;
  public
    function Print: TPanel; override;
  published
    constructor create(Mechanics1: Mechanics; notify: TNotifyEvent);
    destructor destroy;
  end;

implementation

{ TPage }

constructor Main.create(Mechanics1: Mechanics; notify: TNotifyEvent);
begin
  self.Mechanics1:= Mechanics1;
  self.notify:= notify;
  LeftPanel := TPanel.Create(nil);
  Button:= TButton.Create(nil);
  { TODO :  }
end;

procedure Main.createButton;
begin
  with Button do begin
    OnClick:=notify;//toLab1;
    Parent:=LeftPanel;
  end;
end;

procedure Main.createLeftPanel;
begin
  with LeftPanel do begin
    Align:=alLeft;
    Caption:='Main';
  end;
end;



destructor Main.destroy;
begin
  LeftPanel.Free;
end;

procedure Main.install;
begin
  createLeftPanel;
  createButton;
end;

function Main.Print: TPanel;
begin
  install;
  result:=LeftPanel;
end;

end.
