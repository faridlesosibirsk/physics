unit PhisicaUnit;

interface

uses
  StudentUnit {Student} ,
  RoomsUnit {Rooms} ,
  RoomUnit {Room} ,
  Vcl.Controls {TAlign} ,
  PhisicsUnit {Phisics} ,
  Vcl.ExtCtrls {TPanel};

type
  Phisica = class abstract(TInterfacedObject, Phisics)
  private
    Panel1: TPanel;
    /// <link>aggregation</link>
    Room1: Rooms;
    procedure AssignedPanel1;
  public
    function open: TPanel;
  published
    constructor create;
  end;

implementation

{ Phisica }

procedure Phisica.AssignedPanel1;
begin
  if not assigned(Panel1) then
  begin
    Panel1 := TPanel.create(nil);
    Panel1.caption := 'Panel1';
    Panel1.Align := alClient;
    Panel1.BevelOuter := bvNone;
  end;
end;

constructor Phisica.create;
begin
  Room1 := Room.create;
end;

function Phisica.open: TPanel;
begin
  AssignedPanel1;
  Room1.Content(Panel1);
  result := Panel1;
end;

end.
