unit BuilderUnit;

interface

uses
  LabsUnit {Labs} ,
  Vcl.ExtCtrls {TPanel};

type
  Builder = interface
    function render: TPanel;
    //procedure setContent;
    //procedure setLab1;
    procedure sett(lab: Labs);
  end;

implementation

end.
