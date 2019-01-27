unit LaboratoryUnit;

interface

uses
  Vcl.ExtCtrls {TPanel};

type
  Laboratory = class
    procedure Print(panel: TPanel); virtual; abstract;
    destructor destroy; virtual; abstract;
  end;

implementation

end.
