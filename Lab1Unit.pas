unit Lab1Unit;

interface

uses
  classes {TNotifyEvent} ,
  Vcl.StdCtrls {TButton} ,
  Vcl.Forms,
  ConnectionUnit,
  LabsUnit;

type
  Lab1 = class(TInterfacedObject, Labs)
  private
    AOwner: TForm;
    Notify: TNotifyEvent;
  public
    /// <link>aggregation</link>
    Connection1: Connection;
  published
    procedure clear; virtual;
  end;

implementation

{ Lab1 }

procedure Lab1.clear;
begin
end;

end.
