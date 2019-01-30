unit TestLab2Unit;

interface

uses Lab2Unit;

type
  TestLab2 = class(Lab2)
  published
    constructor create; override;
  end;

implementation

{ TestLab1 }

constructor TestLab2.create;
begin
  inherited;

end;

end.
