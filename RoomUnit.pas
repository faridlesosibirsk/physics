unit RoomUnit;

interface

uses
  StudentUnit {Student} ,
  StudentsUnit {Students} ,
  RoomsUnit {Rooms} ,
  Vcl.Controls {TWinControl} ,
  BuilderUnit {Builder};

type
  Room = class(TInterfacedObject, Rooms)
  private
    /// <link>aggregation</link>
    Students1: Students;
  public
    procedure Content(WinControl: TWinControl);
    procedure Lab1(WinControl: TWinControl);
  published
    constructor create;
  end;

implementation

{ Room }

procedure Room.Content(WinControl: TWinControl);
begin
  Students1.getContent(WinControl);
end;

constructor Room.create;
begin
  Students1:= Student.create;
end;

procedure Room.Lab1(WinControl: TWinControl);
begin
  Students1.getTheory(WinControl);
end;

end.
