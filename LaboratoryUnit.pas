unit LaboratoryUnit;

interface

uses
  Vcl.ExtCtrls {TPanel};

type
  Laboratory = class
    function Print: TPanel; virtual; abstract;
  end;

implementation

end.
