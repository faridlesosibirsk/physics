unit BuilderUnit;

interface

uses
  Vcl.ExtCtrls {TPanel};

type
  Builder = interface
    function render: TPanel;
    procedure Content;
    procedure Lab1;
  end;

implementation

end.
