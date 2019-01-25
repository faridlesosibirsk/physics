unit BuilderUnit;

interface

uses
  Vcl.ExtCtrls {TPanel};

type
  Builder = interface
    function render: TPanel;
    procedure setContent;
    procedure setLab1;
  end;

implementation

end.
