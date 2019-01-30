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
    constructor create(AOwner: TForm; Open: TNotifyEvent); virtual;
    procedure destroy; virtual;
  end;

implementation

{ Lab1 }

constructor Lab1.create(AOwner: TForm; Open: TNotifyEvent);
begin
  self.AOwner:=AOwner;
  self.Notify:=Notify;
end;

procedure Lab1.destroy;
begin
  self.AOwner:=nil;
  self.Notify:=nil;
end;

end.
