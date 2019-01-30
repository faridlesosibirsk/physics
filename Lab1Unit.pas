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
    BackButton: TButton;
    TheoryButton: TButton;
    AOwner: TForm;
  public
    /// <link>aggregation</link>
    Connection1: Connection;
  published
    constructor create(AOwner: TForm; Notify: TNotifyEvent); virtual; abstract;
    procedure destroy; virtual; abstract;
  end;

implementation

end.
